@interface PETAggregateStateStorageOnDisk
- (BOOL)resetLocked;
- (PETAggregateStateStorageOnDisk)initWithPath:(id)path;
- (unint64_t)_reserveCapacity:(unsigned int)capacity;
- (void)_die;
- (void)_remapWithFlock:(BOOL)flock;
- (void)dealloc;
- (void)expand:(unint64_t)expand andRunWithLock:(id)lock;
- (void)reset;
- (void)saveCorruptState;
@end

@implementation PETAggregateStateStorageOnDisk

- (void)saveCorruptState
{
  v3 = [(NSString *)self->_path stringByAppendingPathExtension:@"corrupt"];
  if (v3)
  {
    v5 = v3;
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager copyItemAtPath:self->_path toPath:v5 error:0];

    v3 = v5;
  }
}

- (void)reset
{
  v3 = atomic_load(&self->_dead);
  if ((v3 & 1) == 0)
  {
    pthread_mutex_lock(&self->_localLock);
    if (flock(self->_fd, 2))
    {
      [(PETAggregateStateStorageOnDisk *)self _die];
    }

    else
    {
      [(PETAggregateStateStorageOnDisk *)self resetLocked];
    }

    fd = self->_fd;
    if ((fd & 0x80000000) == 0)
    {
      flock(fd, 8);
    }

    pthread_mutex_unlock(&self->_localLock);
  }
}

- (BOOL)resetLocked
{
  if (!self->_mappedLen)
  {
    return 1;
  }

  memset(self->_bytes + 12, 255, 0x400uLL);
  bytes = self->_bytes;
  *bytes = 0x40CCC4DA157;
  bytes[2] = 4096;
  if (!ftruncate(self->_fd, 4096))
  {
    if (self->_mappedLen == *(self->_bytes + 2))
    {
      return 1;
    }

    [(PETAggregateStateStorageOnDisk *)self _remapWithFlock:0];
    v5 = atomic_load(&self->_dead);
    if ((v5 & 1) == 0)
    {
      return 1;
    }
  }

  [(PETAggregateStateStorageOnDisk *)self _die];
  return 0;
}

- (unint64_t)_reserveCapacity:(unsigned int)capacity
{
  v15 = *MEMORY[0x1E69E9840];
  bytes = self->_bytes;
  v4 = bytes[1];
  v5 = v4 + capacity;
  if (v4 + capacity > bytes[2])
  {
    if (ftruncate(self->_fd, (v5 + 4095) & 0xFFFFF000))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v9 = *__error();
        v10 = __error();
        v11 = strerror(*v10);
        v12[0] = 67109378;
        v12[1] = v9;
        v13 = 2080;
        v14 = v11;
        _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Could not resize aggregate storage: [%i] %s", v12, 0x12u);
      }

      atomic_store(1u, &self->_dead);
    }

    bytes = self->_bytes;
    bytes[2] = (v5 + 4095) & 0xFFFFF000;
  }

  bytes[1] = v5;
  v7 = *MEMORY[0x1E69E9840];
  return v4 - 12;
}

- (void)expand:(unint64_t)expand andRunWithLock:(id)lock
{
  lockCopy = lock;
  if (!lockCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PETAggregateStateStorage.m" lineNumber:301 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }

  v8 = atomic_load(&self->_dead);
  if ((v8 & 1) == 0)
  {
    pthread_mutex_lock(&self->_localLock);
    if (!flock(self->_fd, 2))
    {
      if (expand)
      {
        v10 = [(PETAggregateStateStorageOnDisk *)self _reserveCapacity:expand];
        v11 = atomic_load(&self->_dead);
        if (v11)
        {
          goto LABEL_5;
        }

        v12 = v10;
      }

      else
      {
        v12 = 0x7FFFFFFFFFFFFFFFLL;
      }

      bytes = self->_bytes;
      v14 = bytes[2];
      if (self->_mappedLen == v14)
      {
        goto LABEL_15;
      }

      [(PETAggregateStateStorageOnDisk *)self _remapWithFlock:0];
      if (self->_mappedLen != v14)
      {
        goto LABEL_6;
      }

      v16 = atomic_load(&self->_dead);
      if ((v16 & 1) == 0)
      {
        bytes = self->_bytes;
        if (bytes)
        {
LABEL_15:
          v18 = 0;
          v15 = lockCopy[2](lockCopy, (bytes + 3), bytes[1] - 12, v12, &v18);
          if (expand && (v15 & 1) == 0)
          {
            *(self->_bytes + 1) -= expand;
          }

          if (v18 != 1 || [(PETAggregateStateStorageOnDisk *)self resetLocked])
          {
            goto LABEL_6;
          }
        }
      }
    }

LABEL_5:
    [(PETAggregateStateStorageOnDisk *)self _die];
LABEL_6:
    fd = self->_fd;
    if ((fd & 0x80000000) == 0)
    {
      flock(fd, 8);
    }

    pthread_mutex_unlock(&self->_localLock);
  }
}

- (void)_die
{
  atomic_store(1u, &self->_dead);
  self->_bytes = 0;
  self->_mappedLen = 0;
  fd = self->_fd;
  if ((fd & 0x80000000) == 0)
  {
    close(fd);
    self->_fd = -1;
  }
}

- (void)_remapWithFlock:(BOOL)flock
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = atomic_load(&self->_dead);
  if (v3)
  {
    goto LABEL_13;
  }

  flockCopy = flock;
  if (flock && flock(self->_fd, 2))
  {
    goto LABEL_7;
  }

  bytes = self->_bytes;
  if (bytes)
  {
    if (munmap(bytes, self->_mappedLen))
    {
      goto LABEL_7;
    }
  }

  memset(&v22, 0, sizeof(v22));
  if (fstat(self->_fd, &v22))
  {
    goto LABEL_7;
  }

  st_size = v22.st_size;
  self->_mappedLen = v22.st_size;
  v10 = st_size;
  if (!st_size)
  {
    *__buf = 0x40CCC4DA157;
    *&__buf[8] = 4096;
    if (pwrite(self->_fd, __buf, 0xCuLL, 0) == -1 || ftruncate(self->_fd, 4096))
    {
      goto LABEL_7;
    }

    v10 = 4096;
    self->_mappedLen = 4096;
  }

  v11 = mmap(0, v10, 3, 513, self->_fd, 0);
  self->_bytes = v11;
  if (v11 != -1)
  {
    v12 = v11;
    v13 = *v11;
    if (*v11 != -867327657)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        path = self->_path;
        *__buf = 138412802;
        *&__buf[4] = path;
        *&__buf[12] = 1024;
        *&__buf[14] = v13;
        v24 = 1024;
        v25 = -867327657;
        _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Aggregate storage file %@ has wrong magic number: got %x, expected %x", __buf, 0x18u);
      }

      [(PETAggregateStateStorageOnDisk *)self saveCorruptState];
      if (![(PETAggregateStateStorageOnDisk *)self resetLocked])
      {
        goto LABEL_7;
      }

      v12 = self->_bytes;
    }

    v14 = v12[2];
    mappedLen = self->_mappedLen;
    if (mappedLen >= v14 && v12[1] <= v14)
    {
      goto LABEL_26;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = self->_path;
      v20 = v12[1];
      *__buf = 138413058;
      *&__buf[4] = v19;
      *&__buf[12] = 1024;
      *&__buf[14] = v20;
      v24 = 1024;
      v25 = v14;
      v26 = 2048;
      v27 = mappedLen;
      _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Aggregate storage file %@ claims size %u, capacity %u, but is only %lu bytes", __buf, 0x22u);
    }

    [(PETAggregateStateStorageOnDisk *)self saveCorruptState];
    if ([(PETAggregateStateStorageOnDisk *)self resetLocked])
    {
LABEL_26:
      if (!st_size)
      {
        memset(self->_bytes + 12, 255, 0x400uLL);
      }

      goto LABEL_10;
    }
  }

LABEL_7:
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v16 = *__error();
    v17 = __error();
    v18 = strerror(*v17);
    *__buf = 67109378;
    *&__buf[4] = v16;
    *&__buf[8] = 2080;
    *&__buf[10] = v18;
    _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Aggregate storage remap failed: [%i] %s", __buf, 0x12u);
  }

  [(PETAggregateStateStorageOnDisk *)self _die];
LABEL_10:
  if (flockCopy)
  {
    fd = self->_fd;
    if ((fd & 0x80000000) == 0)
    {
      flock(fd, 8);
    }
  }

LABEL_13:
  v8 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_localLock);
  bytes = self->_bytes;
  if (bytes)
  {
    munmap(bytes, self->_mappedLen);
  }

  fd = self->_fd;
  if ((fd & 0x80000000) == 0)
  {
    flock(fd, 8);
    close(self->_fd);
  }

  v5.receiver = self;
  v5.super_class = PETAggregateStateStorageOnDisk;
  [(PETAggregateStateStorageOnDisk *)&v5 dealloc];
}

- (PETAggregateStateStorageOnDisk)initWithPath:(id)path
{
  v30 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (!pathCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PETAggregateStateStorage.m" lineNumber:172 description:{@"Invalid parameter not satisfying: %@", @"path"}];
  }

  v23.receiver = self;
  v23.super_class = PETAggregateStateStorageOnDisk;
  v7 = [(PETAggregateStateStorageOnDisk *)&v23 init];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_7;
  }

  objc_storeStrong(&v7->_path, path);
  v9 = open([pathCopy fileSystemRepresentation], 514, 384);
  v8->_fd = v9;
  if (v9 < 0)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
LABEL_11:
      v10 = 0;
      goto LABEL_12;
    }

    v11 = *__error();
    v12 = __error();
    v13 = strerror(*v12);
    *buf = 138412802;
    v25 = pathCopy;
    v26 = 1024;
    v27 = v11;
    v28 = 2080;
    v29 = v13;
    v14 = MEMORY[0x1E69E9C10];
    v15 = "Could not open aggregate storage at %@: [%i] %s";
LABEL_14:
    _os_log_error_impl(&dword_1DF726000, v14, OS_LOG_TYPE_ERROR, v15, buf, 0x1Cu);
    goto LABEL_11;
  }

  value = -1;
  if (fsetxattr(v9, "com.apple.runningboard.can-suspend-locked", &value, 1uLL, 0, 0) < 0)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v18 = *__error();
    v19 = __error();
    v20 = strerror(*v19);
    *buf = 138412802;
    v25 = pathCopy;
    v26 = 1024;
    v27 = v18;
    v28 = 2080;
    v29 = v20;
    v14 = MEMORY[0x1E69E9C10];
    v15 = "Could not set RunningBoard file lock exception attribute at %@: [%i] %s";
    goto LABEL_14;
  }

  pthread_mutex_init(&v8->_localLock, 0);
  [(PETAggregateStateStorageOnDisk *)v8 _remapWithFlock:1];
LABEL_7:
  v10 = v8;
LABEL_12:

  v16 = *MEMORY[0x1E69E9840];
  return v10;
}

@end