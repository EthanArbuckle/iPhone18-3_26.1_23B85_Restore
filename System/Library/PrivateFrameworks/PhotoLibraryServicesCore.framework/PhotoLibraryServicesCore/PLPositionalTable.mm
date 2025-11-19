@interface PLPositionalTable
- (BOOL)_increaseEntryCapacityIfNeededToStoreIndex:(int64_t)a3;
- (BOOL)_setEntryCapacity:(int64_t)a3;
- (BOOL)deleteEntryAtIndex:(unint64_t)a3;
- (BOOL)isEmptyAtIndex:(unint64_t)a3;
- (BOOL)readDataAtIndex:(unint64_t)a3 intoBuffer:(void *)a4 bytesRead:(unint64_t *)a5;
- (BOOL)writeEntryData:(id)a3 toIndex:(unint64_t)a4;
- (PLPositionalTable)initWithPath:(id)a3 readOnly:(BOOL)a4 entryLength:(unint64_t)a5;
- (id)fileStatistics;
- (id)readEntriesAtIndexes:(id)a3;
- (int64_t)fileLength;
- (void)dealloc;
- (void)flush;
- (void)touchEntriesInRange:(_NSRange)a3;
@end

@implementation PLPositionalTable

- (void)flush
{
  descriptor = self->_descriptor;
  if (descriptor)
  {
    if (!self->_readOnly)
    {
      fsync(descriptor);
    }
  }
}

- (BOOL)deleteEntryAtIndex:(unint64_t)a3
{
  v22 = *MEMORY[0x1E69E9840];
  if (self->_readOnly)
  {
    goto LABEL_18;
  }

  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = PLThumbnailsGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      v5 = "Unable to write thumbnail data to index NSNotFound.";
      v6 = v4;
      v7 = OS_LOG_TYPE_DEFAULT;
      v8 = 2;
LABEL_16:
      _os_log_impl(&dword_1AA9BD000, v6, v7, v5, &v18, v8);
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  if (self->_entryCapacity <= a3)
  {
    v4 = PLThumbnailsGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      entryCapacity = self->_entryCapacity;
      v18 = 134218240;
      v19 = a3;
      v20 = 2048;
      v21 = entryCapacity;
      v5 = "Unable to delete thumbnail index: %lu that is out of range of the file (capacity: %lu)";
      v6 = v4;
      v7 = OS_LOG_TYPE_DEFAULT;
      v8 = 22;
      goto LABEL_16;
    }

LABEL_17:

LABEL_18:
    LOBYTE(v10) = 0;
    return v10;
  }

  v10 = malloc_type_calloc(1uLL, self->_entryLength, 0x9BCC50AEuLL);
  if (v10)
  {
    v11 = v10;
    descriptor = self->_descriptor;
    entryLength = self->_entryLength;
    flushAfterWrite = self->_flushAfterWrite;
    v15 = pwrite(descriptor, v10, entryLength, entryLength * a3);
    if (v15 == entryLength && flushAfterWrite)
    {
      fsync(descriptor);
    }

    free(v11);
    if (v15 != entryLength)
    {
      v4 = PLThumbnailsGetLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v18 = 134217984;
        v19 = a3;
        v5 = "Unable to write empty data to index: %lu";
        v6 = v4;
        v7 = OS_LOG_TYPE_DEBUG;
        v8 = 12;
        goto LABEL_16;
      }

      goto LABEL_17;
    }

    LOBYTE(v10) = 1;
  }

  return v10;
}

- (BOOL)writeEntryData:(id)a3 toIndex:(unint64_t)a4
{
  v7 = a3;
  if (!v7)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PLPositionalTable.m" lineNumber:389 description:{@"Invalid parameter not satisfying: %@", @"data"}];
  }

  if ([v7 length] != self->_entryLength)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"PLPositionalTable.m" lineNumber:390 description:@"Data length must equal entry length."];
  }

  if (a4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = PLThumbnailsGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AA9BD000, v8, OS_LOG_TYPE_DEFAULT, "Unable to write thumbnail data to index NSNotFound.", buf, 2u);
    }

    goto LABEL_13;
  }

  if (![(PLPositionalTable *)self _increaseEntryCapacityIfNeededToStoreIndex:a4])
  {
LABEL_13:
    v15 = 0;
    goto LABEL_14;
  }

  descriptor = self->_descriptor;
  entryLength = self->_entryLength;
  v11 = [v7 bytes];
  v12 = entryLength * a4;
  flushAfterWrite = self->_flushAfterWrite;
  v14 = pwrite(descriptor, v11, entryLength, v12);
  v15 = v14 == entryLength;
  if (v14 == entryLength && flushAfterWrite)
  {
    fsync(descriptor);
    v15 = 1;
  }

LABEL_14:

  return v15;
}

- (void)touchEntriesInRange:(_NSRange)a3
{
  v18 = *MEMORY[0x1E69E9840];
  descriptor = self->_descriptor;
  if (descriptor)
  {
    entryLength = self->_entryLength;
    v11[0] = entryLength * a3.location;
    v11[1] = (entryLength * LODWORD(a3.length));
    if (fcntl(descriptor, 44, v11) == -1)
    {
      v6 = PLThumbnailsGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v7 = self->_descriptor;
        path = self->_path;
        v9 = __error();
        v10 = strerror(*v9);
        *buf = 67109634;
        v13 = v7;
        v14 = 2112;
        v15 = path;
        v16 = 2080;
        v17 = v10;
        _os_log_impl(&dword_1AA9BD000, v6, OS_LOG_TYPE_DEBUG, "Failed to issue advisory read for file: %d at path: %@ with error=%s", buf, 0x1Cu);
      }
    }
  }
}

- (id)readEntriesAtIndexes:(id)a3
{
  v4 = a3;
  v5 = [v4 rangeCount];
  v6 = objc_alloc_init(MEMORY[0x1E696AD50]);
  if (v5)
  {
    v5 = malloc_type_calloc(1uLL, 8 * v5, 0x80040B8603338uLL);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__PLPositionalTable_readEntriesAtIndexes___block_invoke;
  v10[3] = &unk_1E7932428;
  v11 = v6;
  v12 = v5;
  v10[4] = self;
  v7 = v6;
  [v4 enumerateRangesWithOptions:0 usingBlock:v10];
  v8 = [objc_alloc(-[PLPositionalTable entriesClass](self "entriesClass"))];

  return v8;
}

void __42__PLPositionalTable_readEntriesAtIndexes___block_invoke(uint64_t a1, NSUInteger a2, size_t count)
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = malloc_type_calloc(count, *(*(a1 + 32) + 40), 0xBD4CF642uLL);
  if (pread(*(*(a1 + 32) + 16), v6, *(*(a1 + 32) + 40) * count, *(*(a1 + 32) + 40) * a2) == v7 * count)
  {
    v8 = *(a1 + 48);
    *(v8 + 8 * [*(a1 + 40) rangeCount]) = v6;
    v9 = *(a1 + 40);

    [v9 addIndexesInRange:{a2, count}];
  }

  else
  {
    v10 = PLThumbnailsGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v27.location = a2;
      v27.length = count;
      v11 = NSStringFromRange(v27);
      v12 = *(a1 + 32);
      v13 = *(v12 + 16);
      v14 = *(v12 + 24);
      v15 = __error();
      v16 = strerror(*v15);
      v17 = 138544130;
      v18 = v11;
      v19 = 1024;
      v20 = v13;
      v21 = 2112;
      v22 = v14;
      v23 = 2080;
      v24 = v16;
      _os_log_impl(&dword_1AA9BD000, v10, OS_LOG_TYPE_DEFAULT, "Unable to read indexes in range: %{public}@ for file: %d at path: %@ with error=%s", &v17, 0x26u);
    }

    free(v6);
  }
}

- (BOOL)readDataAtIndex:(unint64_t)a3 intoBuffer:(void *)a4 bytesRead:(unint64_t *)a5
{
  entryLength = self->_entryLength;
  v7 = pread(self->_descriptor, a4, entryLength, entryLength * a3);
  if (a5 && v7 == entryLength)
  {
    *a5 = entryLength;
  }

  return v7 == entryLength;
}

- (BOOL)isEmptyAtIndex:(unint64_t)a3
{
  [(PLPositionalTable *)self entryLength];
  [(PLPositionalTable *)self entryLength];
  if (self->_entryCapacity <= a3)
  {
    return 0;
  }

  v5 = malloc_type_malloc([(PLPositionalTable *)self entryLength], 0xF56772D6uLL);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v9 = 0;
  v7 = [(PLPositionalTable *)self readDataAtIndex:a3 intoBuffer:v5 bytesRead:&v9]&& !*v6 && memcmp(v6, v6 + 1, v9 - 1) == 0;
  free(v6);
  return v7;
}

- (id)fileStatistics
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(PLPositionalTable *)self entryCapacity];
  v6 = 0;
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v6 += [(PLPositionalTable *)self isEmptyAtIndex:i];
    }
  }

  *&v5 = (v4 - v6) / v4;
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  [v3 setObject:v8 forKeyedSubscript:@"spaceUtilization"];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
  [v3 setObject:v9 forKeyedSubscript:@"capacity"];

  v10 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
  [v3 setObject:v10 forKeyedSubscript:@"countEmpty"];

  v11 = [MEMORY[0x1E696AD98] numberWithInteger:v4 - v6];
  [v3 setObject:v11 forKeyedSubscript:@"countFilled"];

  return v3;
}

- (int64_t)fileLength
{
  descriptor = self->_descriptor;
  memset(&v4, 0, sizeof(v4));
  if (fstat(descriptor, &v4) == -1)
  {
    return 0;
  }

  else
  {
    return v4.st_size;
  }
}

- (void)dealloc
{
  descriptor = self->_descriptor;
  if (descriptor)
  {
    close(descriptor);
  }

  v4.receiver = self;
  v4.super_class = PLPositionalTable;
  [(PLPositionalTable *)&v4 dealloc];
}

- (PLPositionalTable)initWithPath:(id)a3 readOnly:(BOOL)a4 entryLength:(unint64_t)a5
{
  v6 = a4;
  v39 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v37.receiver = self;
  v37.super_class = PLPositionalTable;
  v10 = [(PLPositionalTable *)&v37 init];
  if (v10)
  {
    if (v9)
    {
      if (a5)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v35 = [MEMORY[0x1E696AAA8] currentHandler];
      [v35 handleFailureInMethod:a2 object:v10 file:@"PLPositionalTable.m" lineNumber:222 description:{@"Invalid parameter not satisfying: %@", @"path"}];

      if (a5)
      {
        goto LABEL_4;
      }
    }

    v36 = [MEMORY[0x1E696AAA8] currentHandler];
    [v36 handleFailureInMethod:a2 object:v10 file:@"PLPositionalTable.m" lineNumber:223 description:{@"Invalid parameter not satisfying: %@", @"entryLength > 0"}];

LABEL_4:
    v10->_flushAfterWrite = 1;
    v10->_readOnly = v6;
    v11 = [v9 fileSystemRepresentation];
    if (v6)
    {
      v12 = open(v11, 0, 438);
    }

    else
    {
      v12 = open(v11, 514, 438);
    }

    if (v12 != -1)
    {
      v13 = v12;
      v14 = [v9 copy];
      path = v10->_path;
      v10->_path = v14;

      v10->_descriptor = v13;
      v10->_expansionLock._os_unfair_lock_opaque = 0;
      if (fcntl(v13, 45, 1) == -1)
      {
        v16 = PLThumbnailsGetLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          descriptor = v10->_descriptor;
          v18 = v10->_path;
          v19 = __error();
          v20 = strerror(*v19);
          buf.st_dev = 67109634;
          *&buf.st_mode = descriptor;
          LOWORD(buf.st_ino) = 2112;
          *(&buf.st_ino + 2) = v18;
          HIWORD(buf.st_uid) = 2080;
          *&buf.st_gid = v20;
          _os_log_impl(&dword_1AA9BD000, v16, OS_LOG_TYPE_DEBUG, "Failed to issue set read ahead for file: %d at path: %@ with error=%s", &buf, 0x1Cu);
        }
      }

      v10->_entryLength = a5;
      v21 = v10->_descriptor;
      memset(&buf, 0, sizeof(buf));
      v22 = fstat(v21, &buf);
      st_size = buf.st_size;
      if (v22 == -1)
      {
        st_size = 0;
      }

      v10->_entryCapacity = (st_size / v10->_entryLength);
      goto LABEL_15;
    }

    v25 = *__error();
    if (v6)
    {
      v26 = PLThumbnailsGetLog();
      v27 = v26;
      if (v25 == 2)
      {
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          buf.st_dev = 138412290;
          *&buf.st_mode = v9;
          v28 = "No PLPositionalImageTable file found at path %@";
          v29 = v27;
          v30 = OS_LOG_TYPE_DEFAULT;
          v31 = 12;
LABEL_25:
          _os_log_impl(&dword_1AA9BD000, v29, v30, v28, &buf, v31);
        }

LABEL_26:

        v24 = 0;
        goto LABEL_27;
      }

      if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      v33 = strerror(v25);
      buf.st_dev = 138412802;
      *&buf.st_mode = v9;
      WORD2(buf.st_ino) = 2080;
      *(&buf.st_ino + 6) = v33;
      HIWORD(buf.st_gid) = 1024;
      buf.st_rdev = v25;
      v28 = "Could not open PLPositionalImageTable at path %@: %s (%d)";
    }

    else
    {
      v27 = PLThumbnailsGetLog();
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      v32 = strerror(v25);
      buf.st_dev = 138412802;
      *&buf.st_mode = v9;
      WORD2(buf.st_ino) = 2080;
      *(&buf.st_ino + 6) = v32;
      HIWORD(buf.st_gid) = 1024;
      buf.st_rdev = v25;
      v28 = "Could not create PLPositionalImageTable at path %@: %s (%d)";
    }

    v29 = v27;
    v30 = OS_LOG_TYPE_ERROR;
    v31 = 28;
    goto LABEL_25;
  }

LABEL_15:
  v24 = v10;
LABEL_27:

  return v24;
}

- (BOOL)_setEntryCapacity:(int64_t)a3
{
  v29 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_expansionLock);
  entryCapacity = self->_entryCapacity;
  if (entryCapacity == a3 || entryCapacity >= a3)
  {
    v13 = 1;
  }

  else
  {
    v6 = self->_entryLength * a3;
    v20[0] = 12;
    v20[1] = 0;
    v20[2] = v6;
    v20[3] = 0;
    if (fcntl(self->_descriptor, 42, v20) == -1)
    {
      v7 = PLThumbnailsGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        descriptor = self->_descriptor;
        path = self->_path;
        v10 = __error();
        v11 = strerror(*v10);
        *buf = 67109890;
        v22 = descriptor;
        v23 = 2112;
        v24 = path;
        v25 = 2048;
        v26 = v6;
        v27 = 2080;
        v28 = v11;
        _os_log_impl(&dword_1AA9BD000, v7, OS_LOG_TYPE_DEBUG, "*** ImageTable expand: F_PREALLOCATE of %d %@ to %lld returned -1: error=%s", buf, 0x26u);
      }
    }

    v12 = ftruncate(self->_descriptor, v6);
    v13 = v12 != -1;
    if (v12 == -1)
    {
      v15 = PLThumbnailsGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = self->_descriptor;
        v17 = self->_path;
        v18 = __error();
        v19 = strerror(*v18);
        *buf = 67109890;
        v22 = v16;
        v23 = 2112;
        v24 = v17;
        v25 = 2048;
        v26 = v6;
        v27 = 2080;
        v28 = v19;
        _os_log_impl(&dword_1AA9BD000, v15, OS_LOG_TYPE_DEBUG, "*** ImageTable: ftruncate of %d %@ to %lld returned -1: error=%s", buf, 0x26u);
      }
    }

    else
    {
      self->_entryCapacity = a3;
    }
  }

  os_unfair_lock_unlock(&self->_expansionLock);
  return v13;
}

- (BOOL)_increaseEntryCapacityIfNeededToStoreIndex:(int64_t)a3
{
  if (a3 < 0)
  {
    return 1;
  }

  entryCapacity = self->_entryCapacity;
  v4 = a3 - entryCapacity;
  if (a3 < entryCapacity)
  {
    return 1;
  }

  if (v4 <= 63)
  {
    v4 = 63;
  }

  return [(PLPositionalTable *)self _setEntryCapacity:entryCapacity + v4 + 1];
}

@end