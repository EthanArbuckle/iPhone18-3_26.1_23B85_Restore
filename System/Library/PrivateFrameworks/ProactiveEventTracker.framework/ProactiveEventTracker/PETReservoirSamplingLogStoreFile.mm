@interface PETReservoirSamplingLogStoreFile
- ($BC5B52E09B2B7D90AC3928E0EFF6AC05)headerMap:(unint64_t *)a3;
- ($BC5B52E09B2B7D90AC3928E0EFF6AC05)remap:(unint64_t *)a3;
- (BOOL)appendData:(id)a3 andReturnMapPointer:(id *)a4;
- (BOOL)attemptToRecreate;
- (BOOL)changeLength:(unint64_t)a3;
- (BOOL)lock;
- (PETReservoirSamplingLogStoreFile)initWithPath:(id)a3;
- (unint64_t)currentLength;
- (void)_unmap;
- (void)dealloc;
- (void)unlock;
@end

@implementation PETReservoirSamplingLogStoreFile

- (void)unlock
{
  fd = self->_fd;
  if ((fd & 0x80000000) == 0)
  {
    flock(fd, 8);
  }
}

- (unint64_t)currentLength
{
  memset(&v3, 0, sizeof(v3));
  if (fstat(self->_fd, &v3))
  {
    return 0;
  }

  else
  {
    return v3.st_size;
  }
}

- (BOOL)lock
{
  v12 = *MEMORY[0x1E69E9840];
  fd = self->_fd;
  if (fd < 0 || !flock(fd, 2))
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v3)
    {
      v4 = *__error();
      v5 = __error();
      v6 = strerror(*v5);
      v9[0] = 67109378;
      v9[1] = v4;
      v10 = 2080;
      v11 = v6;
      _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Could not lock file: [%i] %s", v9, 0x12u);
      LOBYTE(v3) = 0;
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)attemptToRecreate
{
  *&v25[13] = *MEMORY[0x1E69E9840];
  path = self->_path;
  v21 = 0;
  v4 = [MEMORY[0x1E69C5D28] mkstempWithPrefix:path error:&v21];
  v5 = v21;
  if (!v4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = self->_path;
      *buf = 138412546;
      v23 = v20;
      v24 = 2112;
      *v25 = v5;
      _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Could not create tempfile with prefix %@: %@", buf, 0x16u);
    }

    goto LABEL_8;
  }

  v6 = [v4 path];
  v7 = [v6 fileSystemRepresentation];
  v8 = [(NSString *)self->_path fileSystemRepresentation];
  rename(v7, v8, v9);
  LODWORD(v7) = v10;

  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = [(NSString *)self->_path fileSystemRepresentation];
      v17 = *__error();
      v18 = __error();
      v19 = strerror(*v18);
      *buf = 136315650;
      v23 = v16;
      v24 = 1024;
      *v25 = v17;
      v25[2] = 2080;
      *&v25[3] = v19;
      _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Could not overwrite %s: [%i] %s", buf, 0x1Cu);
    }

    v11 = [v4 path];
    unlink([v11 fileSystemRepresentation]);

    close([v4 fd]);
LABEL_8:
    v12 = 0;
    goto LABEL_12;
  }

  [(PETReservoirSamplingLogStoreFile *)self _unmap];
  fd = self->_fd;
  if ((fd & 0x80000000) == 0)
  {
    flock(fd, 8);
    close(self->_fd);
  }

  self->_fd = [v4 fd];
  v12 = 1;
LABEL_12:

  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)appendData:(id)a3 andReturnMapPointer:(id *)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (lseek(self->_fd, 0, 2) == -1)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v9 = *__error();
    v10 = __error();
    v11 = strerror(*v10);
    v19 = 67109378;
    v20 = v9;
    v21 = 2080;
    v22 = v11;
    v12 = MEMORY[0x1E69E9C10];
    v13 = "Could not seek to eof: [%i] %s";
LABEL_14:
    _os_log_error_impl(&dword_1DF726000, v12, OS_LOG_TYPE_ERROR, v13, &v19, 0x12u);
    goto LABEL_7;
  }

  v7 = write(self->_fd, [v6 bytes], objc_msgSend(v6, "length"));
  if (v7 == [v6 length])
  {
    v8 = 1;
    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v16 = *__error();
    v17 = __error();
    v18 = strerror(*v17);
    v19 = 67109378;
    v20 = v16;
    v21 = 2080;
    v22 = v18;
    v12 = MEMORY[0x1E69E9C10];
    v13 = "Could not write: [%i] %s";
    goto LABEL_14;
  }

LABEL_7:
  v8 = 0;
LABEL_8:
  if (!self->_ptr)
  {
    [(PETReservoirSamplingLogStoreFile *)self remap:0];
  }

  if (a4)
  {
    *a4 = self->_ptr;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)changeLength:(unint64_t)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = ftruncate(self->_fd, a3);
  if (v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = *__error();
    v7 = __error();
    v8 = strerror(*v7);
    v9[0] = 67109378;
    v9[1] = v6;
    v10 = 2080;
    v11 = v8;
    _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Could not change file size: [%i] %s", v9, 0x12u);
  }

  result = v3 == 0;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- ($BC5B52E09B2B7D90AC3928E0EFF6AC05)headerMap:(unint64_t *)a3
{
  result = self->_ptr;
  if (!result)
  {
    return [(PETReservoirSamplingLogStoreFile *)self remap:a3];
  }

  if (a3)
  {
    *a3 = self->_mapLen;
  }

  return result;
}

- ($BC5B52E09B2B7D90AC3928E0EFF6AC05)remap:(unint64_t *)a3
{
  v14 = *MEMORY[0x1E69E9840];
  [(PETReservoirSamplingLogStoreFile *)self _unmap];
  v5 = [(PETReservoirSamplingLogStoreFile *)self currentLength];
  self->_mapLen = v5;
  result = mmap(0, v5, 3, 1, self->_fd, 0);
  if (result == -1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = *__error();
      v9 = __error();
      v10 = strerror(*v9);
      v11[0] = 67109378;
      v11[1] = v8;
      v12 = 2080;
      v13 = v10;
      _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Could not map header: [%i] %s", v11, 0x12u);
    }

    result = 0;
  }

  self->_ptr = result;
  if (a3)
  {
    *a3 = self->_mapLen;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_unmap
{
  p_ptr = &self->_ptr;
  ptr = self->_ptr;
  if (ptr)
  {
    munmap(ptr, self->_mapLen);
    *p_ptr = 0;
    p_ptr[1] = 0;
  }
}

- (void)dealloc
{
  [(PETReservoirSamplingLogStoreFile *)self _unmap];
  fd = self->_fd;
  if ((fd & 0x80000000) == 0)
  {
    flock(fd, 8);
    close(self->_fd);
  }

  v4.receiver = self;
  v4.super_class = PETReservoirSamplingLogStoreFile;
  [(PETReservoirSamplingLogStoreFile *)&v4 dealloc];
}

- (PETReservoirSamplingLogStoreFile)initWithPath:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PETReservoirSamplingLogStoreFile;
  v5 = [(PETReservoirSamplingLogStoreFile *)&v15 init];
  if (v5 && (v6 = [v4 copy], path = v5->_path, v5->_path = v6, path, v8 = open(objc_msgSend(v4, "fileSystemRepresentation"), 514, 384), v5->_fd = v8, v8 < 0))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = *__error();
      v13 = __error();
      v14 = strerror(*v13);
      *buf = 138412802;
      v17 = v4;
      v18 = 1024;
      v19 = v12;
      v20 = 2080;
      v21 = v14;
      _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Could not open sampled log at %@: [%i] %s", buf, 0x1Cu);
    }

    v9 = 0;
  }

  else
  {
    v9 = v5;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

@end