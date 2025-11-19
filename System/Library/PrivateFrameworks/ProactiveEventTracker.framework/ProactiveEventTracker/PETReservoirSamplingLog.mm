@interface PETReservoirSamplingLog
- (BOOL)_lock;
- (BOOL)_readHeader;
- (PETReservoirSamplingLog)initWithPath:(id)a3 limit:(unint64_t)a4;
- (PETReservoirSamplingLog)initWithStore:(id)a3 limit:(unint64_t)a4;
- (id)initInMemoryWithLimit:(unint64_t)a3;
- (void)_clearLocked;
- (void)_enumerateItemsWithBlockLocked:(id)a3;
- (void)_gc;
- (void)_unlock;
- (void)clear;
- (void)dealloc;
- (void)enumerateAndClearItemsWithBlock:(id)a3;
- (void)enumerateItemsWithBlock:(id)a3;
- (void)log:(id)a3;
@end

@implementation PETReservoirSamplingLog

- (void)_unlock
{
  [(PETReservoirSamplingLogStore *)self->_store unlock];

  pthread_mutex_unlock(&self->_lock);
}

- (BOOL)_lock
{
  pthread_mutex_lock(&self->_lock);
  store = self->_store;

  return [(PETReservoirSamplingLogStore *)store lock];
}

- (void)enumerateAndClearItemsWithBlock:(id)a3
{
  v4 = a3;
  if ([(PETReservoirSamplingLog *)self _lock])
  {
    [(PETReservoirSamplingLog *)self _enumerateItemsWithBlockLocked:v4];
    [(PETReservoirSamplingLog *)self _clearLocked];
    [(PETReservoirSamplingLog *)self _unlock];
  }
}

- (void)_clearLocked
{
  v6 = 0;
  v3 = [(PETReservoirSamplingLogStore *)self->_store remap:&v6];
  if (v3 && v6 >= 8 * self->_limit + 16)
  {
    *(v3 + 8) = 0;
    limit = self->_limit;
    if (limit)
    {
      memset((v3 + 16), 255, 8 * limit);
      v5 = 8 * self->_limit + 16;
    }

    else
    {
      v5 = 16;
    }

    [(PETReservoirSamplingLogStore *)self->_store changeLength:v5];
  }
}

- (void)clear
{
  if ([(PETReservoirSamplingLog *)self _lock])
  {
    [(PETReservoirSamplingLog *)self _clearLocked];

    [(PETReservoirSamplingLog *)self _unlock];
  }
}

- (void)_enumerateItemsWithBlockLocked:(id)a3
{
  v4 = a3;
  v17 = 0;
  v5 = [(PETReservoirSamplingLogStore *)self->_store remap:&v17];
  if (v5)
  {
    limit = self->_limit;
    if (v17 >= 8 * limit + 16)
    {
      v7 = limit == 0;
      self->_limit;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      v8 = v5;
      v9 = 0;
      v10 = (v5 + 16);
      v11 = MEMORY[0x1E69E9C10];
      do
      {
        if (*v10 != -1)
        {
          v12 = objc_autoreleasePoolPush();
          v16 = 0;
          if (v17 >= v10[1] + *v10)
          {
            v13 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v8 + *v10 length:v10[1] freeWhenDone:0];
            v4[2](v4, v13, &v16);
            v14 = v16;

            if (v14)
            {
              objc_autoreleasePoolPop(v12);
              break;
            }
          }

          else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *v15 = 0;
            _os_log_error_impl(&dword_1DF726000, v11, OS_LOG_TYPE_ERROR, "Out of bounds chunk", v15, 2u);
          }

          objc_autoreleasePoolPop(v12);
          limit = self->_limit;
        }

        ++v9;
        v10 += 2;
      }

      while (v9 < limit);
    }
  }
}

- (void)enumerateItemsWithBlock:(id)a3
{
  v4 = a3;
  if ([(PETReservoirSamplingLog *)self _lock])
  {
    [(PETReservoirSamplingLog *)self _enumerateItemsWithBlockLocked:v4];
    [(PETReservoirSamplingLog *)self _unlock];
  }
}

- (void)_gc
{
  v14 = 0;
  v3 = [(PETReservoirSamplingLogStore *)self->_store remap:&v14];
  if (v3 && v14 >= 8 * self->_limit + 16)
  {
    v4 = v3;
    qsort((v3 + 16), *(v3 + 4), 8uLL, chunkCompareByOffset);
    v5 = 8 * v4[1] + 16;
    LODWORD(limit) = self->_limit;
    if (limit)
    {
      v7 = v4[4];
      if (v7 != -1)
      {
        v8 = 0;
        v9 = v4 + 6;
        v10 = MEMORY[0x1E69E9C10];
        do
        {
          v11 = *(v9 - 1);
          if (v14 >= v11 + v7)
          {
            memmove(v4 + v5, v4 + v7, v11);
            *(v9 - 2) = v5;
            v5 += *(v9 - 1);
          }

          else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *v13 = 0;
            _os_log_error_impl(&dword_1DF726000, v10, OS_LOG_TYPE_ERROR, "Out of bounds chunk", v13, 2u);
          }

          ++v8;
          limit = self->_limit;
          if (v8 >= limit)
          {
            break;
          }

          v12 = *v9;
          v9 += 2;
          v7 = v12;
        }

        while (v12 != -1);
      }
    }

    v4[2] = limit;
    [(PETReservoirSamplingLogStore *)self->_store changeLength:v5];
  }
}

- (void)log:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(PETReservoirSamplingLog *)self _lock])
  {
    v27 = 0;
    v5 = [(PETReservoirSamplingLogStore *)self->_store headerMap:&v27];
    v26 = v5;
    if (v5 && v27 >= 8 * self->_limit + 16)
    {
      v6 = *(v5 + 12);
      v7 = v6 + 1;
      *(v5 + 12) = v7;
      limit = self->_limit;
      if (v6 < limit)
      {
        v9 = [(PETReservoirSamplingLogStore *)self->_store currentLength];
        if ([(PETReservoirSamplingLogStore *)self->_store appendData:v4 andReturnMapPointer:&v26])
        {
          if (v26)
          {
            *(v26 + 8 * *(v26 + 8) + 16) = v9;
            v10 = [v4 length];
            v11 = v26;
            v12 = *(v26 + 8);
            *(v26 + 8 * v12 + 20) = v10;
            *(v11 + 8) = v12 + 1;
          }

          goto LABEL_15;
        }

LABEL_13:
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v23 = *__error();
          v24 = __error();
          v25 = strerror(*v24);
          *buf = 67109378;
          v29 = v23;
          v30 = 2080;
          v31 = v25;
          _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Could not append: [%i] %s", buf, 0x12u);
        }

        goto LABEL_15;
      }

      v13 = self->_rng.s[0];
      v14 = self->_rng.s[1];
      v15 = v14 + v13;
      v16 = v14 ^ v13;
      self->_rng.s[0] = __ROR8__(v13, 9) ^ (v16 << 14) ^ v16;
      self->_rng.s[1] = __ROR8__(v16, 28);
      v17 = v15 % v7;
      if (limit > (v15 % v7))
      {
        v18 = [(PETReservoirSamplingLogStore *)self->_store currentLength];
        if ([(PETReservoirSamplingLogStore *)self->_store appendData:v4 andReturnMapPointer:&v26])
        {
          if (v26)
          {
            *(v26 + 8 * v17 + 16) = v18;
            v19 = [v4 length];
            v20 = v26;
            *(v26 + 8 * v17 + 20) = v19;
            v21 = *(v20 + 8) + 1;
            *(v20 + 8) = v21;
            if (v21 > 2 * self->_limit)
            {
              [(PETReservoirSamplingLog *)self _gc];
            }
          }

          goto LABEL_15;
        }

        goto LABEL_13;
      }
    }

LABEL_15:
    [(PETReservoirSamplingLog *)self _unlock];
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (BOOL)_readHeader
{
  if ([(PETReservoirSamplingLog *)self _lock])
  {
    v3 = [(PETReservoirSamplingLogStore *)self->_store currentLength];
    v12 = 0;
    store = self->_store;
    if (v3)
    {
      v5 = [(PETReservoirSamplingLogStore *)store remap:&v12];
      if (v5)
      {
        limit = self->_limit;
        if (v12 >= 8 * limit + 16 && *v5 == __PAIR64__(limit, -1014632835))
        {
LABEL_13:
          v7 = 1;
LABEL_15:
          [(PETReservoirSamplingLog *)self _unlock];
          return v7;
        }
      }
    }

    else if ([(PETReservoirSamplingLogStore *)store changeLength:8 * self->_limit + 16])
    {
      v8 = [(PETReservoirSamplingLogStore *)self->_store remap:&v12];
      if (v8)
      {
        if (v12 == 8 * self->_limit + 16)
        {
          *v8 = -1014632835;
          v9 = self->_limit;
          *(v8 + 8) = 0;
          *(v8 + 4) = v9;
          v10 = self->_limit;
          if (v10)
          {
            memset((v8 + 16), 255, 8 * v10);
          }

          goto LABEL_13;
        }
      }
    }

    v7 = 0;
    goto LABEL_15;
  }

  return 0;
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_lock);
  v3.receiver = self;
  v3.super_class = PETReservoirSamplingLog;
  [(PETReservoirSamplingLog *)&v3 dealloc];
}

- (id)initInMemoryWithLimit:(unint64_t)a3
{
  v5 = objc_opt_new();
  v6 = [(PETReservoirSamplingLog *)self initWithStore:v5 limit:a3];

  return v6;
}

- (PETReservoirSamplingLog)initWithPath:(id)a3 limit:(unint64_t)a4
{
  v6 = a3;
  v7 = [[PETReservoirSamplingLogStoreFile alloc] initWithPath:v6];

  v8 = [(PETReservoirSamplingLog *)self initWithStore:v7 limit:a4];
  return v8;
}

- (PETReservoirSamplingLog)initWithStore:(id)a3 limit:(unint64_t)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = v8;
  if (a4 - 0xFFFFFFFF > 0xFFFFFFFF00000001)
  {
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_12:
    v11 = 0;
    goto LABEL_13;
  }

  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"PETReservoirSamplingLog.m" lineNumber:236 description:{@"Invalid parameter not satisfying: %@", @"limit > 0 && limit < UINT32_MAX"}];

  if (!v9)
  {
    goto LABEL_12;
  }

LABEL_3:
  v17.receiver = self;
  v17.super_class = PETReservoirSamplingLog;
  v10 = [(PETReservoirSamplingLog *)&v17 init];
  self = v10;
  if (v10)
  {
    pthread_mutex_init(&v10->_lock, 0);
    objc_storeStrong(&self->_store, a3);
    self->_limit = a4;
    self->_rng = xmmword_1DF7521D0;
    if (![(PETReservoirSamplingLog *)self _readHeader])
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        *buf = 138412290;
        v19 = v15;
        _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error reading %@ header, emptying log", buf, 0xCu);
      }

      if (![(PETReservoirSamplingLogStore *)self->_store attemptToRecreate]|| ![(PETReservoirSamplingLog *)self _readHeader])
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Could not empty log", buf, 2u);
        }

        goto LABEL_12;
      }
    }
  }

  self = self;
  v11 = self;
LABEL_13:

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

@end