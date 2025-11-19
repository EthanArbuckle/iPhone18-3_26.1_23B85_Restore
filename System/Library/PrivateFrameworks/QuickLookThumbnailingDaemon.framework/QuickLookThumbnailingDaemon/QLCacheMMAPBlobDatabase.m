@interface QLCacheMMAPBlobDatabase
- (BOOL)deleteBlobWithInfo:(id)a3;
- (BOOL)deleteBlobsWithArray:(id)a3;
- (BOOL)doesExist;
- (BOOL)isValid;
- (QLCacheMMAPBlobDatabase)initWithPath:(id)a3 cacheSize:(int64_t)a4 cacheThread:(id)a5;
- (_QLCacheThread)cacheThread;
- (id)checkConsistency:(id)a3;
- (id)copyBlobWithInfo:(id)a3;
- (id)reserveBufferWithLength:(unint64_t)a3;
- (void)close;
- (void)compactFragmentation;
- (void)discardReservedBufferWithBlobInfo:(id)a3;
- (void)doesExist;
- (void)isValid;
- (void)markPurgeable;
- (void)open;
- (void)reset;
- (void)save;
- (void)validateReservedBufferWithBlobInfo:(id)a3;
@end

@implementation QLCacheMMAPBlobDatabase

- (void)save
{
  v3 = _log_7();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [QLCacheMMAPBlobDatabase save];
  }

  if (msync(self->_vmFile, self->_maxSize, 16) == -1)
  {
    v4 = _log_7();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [QLCacheMMAPBlobDatabase save];
    }
  }

  if (![(QLCacheFragHandler *)self->_fragHandler save])
  {
    v5 = _log_7();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [QLCacheMMAPBlobDatabase save];
    }
  }

  [(QLCacheMMAPBlobDatabase *)self markPurgeable];
}

- (void)markPurgeable
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(&dword_2615D3000, v0, OS_LOG_TYPE_DEBUG, "Marked %s  purgeable", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (QLCacheMMAPBlobDatabase)initWithPath:(id)a3 cacheSize:(int64_t)a4 cacheThread:(id)a5
{
  v8 = a3;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = QLCacheMMAPBlobDatabase;
  v10 = [(QLCacheMMAPBlobDatabase *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_file = -1;
    v12 = [v8 copy];
    path = v11->_path;
    v11->_path = v12;

    v11->_maxSize = a4;
    v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:40];
    reservedBuffers = v11->_reservedBuffers;
    v11->_reservedBuffers = v14;

    objc_storeWeak(&v11->_cacheThread, v9);
  }

  return v11;
}

- (id)copyBlobWithInfo:(id)a3
{
  v4 = a3;
  if (![v4 length])
  {
    goto LABEL_10;
  }

  if ([v4 location] <= 7)
  {
    v5 = _log_7();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [QLCacheMMAPBlobDatabase copyBlobWithInfo:];
    }

LABEL_9:

    goto LABEL_10;
  }

  if ([v4 length] < 0x10 || (v6 = objc_msgSend(v4, "location"), v7 = v6 + objc_msgSend(v4, "length") + 8, v7 > -[QLCacheFragHandler totalLen](self->_fragHandler, "totalLen")))
  {
    v5 = _log_7();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [QLCacheMMAPBlobDatabase copyBlobWithInfo:];
    }

    goto LABEL_9;
  }

  v8 = mmap(0, [v4 length], 3, 4097, 1627389952, 0);
  if (!v8)
  {
    goto LABEL_11;
  }

  v10 = [v4 location];
  v11 = v10 - 8;
  v12 = [v4 length] + 16;
  vmFile = self->_vmFile;
  v14 = -8;
  do
  {
    if (vmFile[v10 + v14] != v12)
    {
      v17 = 0;
      for (i = -1; i != -9; --i)
      {
        v17 = vmFile[v10 + i] | (v17 << 8);
      }

      v19 = MEMORY[0x277CDAB78];
      v20 = *(MEMORY[0x277CDAB78] + 56);
      if (!v20)
      {
        QLTInitLogging();
        v20 = *(v19 + 56);
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [QLCacheMMAPBlobDatabase copyBlobWithInfo:];
      }

      v16 = _log_7();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [QLCacheMMAPBlobDatabase copyBlobWithInfo:];
      }

      goto LABEL_28;
    }

    v12 >>= 8;
  }

  while (!__CFADD__(v14++, 1));
  if (vm_copy(*MEMORY[0x277D85F48], &vmFile[[v4 location]], objc_msgSend(v4, "length"), v8))
  {
    v16 = _log_7();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [QLCacheMMAPBlobDatabase copyBlobWithInfo:v4];
    }
  }

  else
  {
    v21 = self->_vmFile;
    v22 = [v4 location];
    v23 = [v4 length];
    v24 = 0;
    v25 = &v21[v22 + v23];
    while (v25[v24] == v11)
    {
      v11 >>= 8;
      if (++v24 == 8)
      {
        v26 = [v4 length];
        v8 = dispatch_data_create(v8, v26, 0, *MEMORY[0x277D85CB8]);
        goto LABEL_11;
      }
    }

    v27 = 0;
    for (j = 7; j != -1; --j)
    {
      v27 = v25[j] | (v27 << 8);
    }

    v29 = MEMORY[0x277CDAB78];
    v30 = *(MEMORY[0x277CDAB78] + 56);
    if (!v30)
    {
      QLTInitLogging();
      v30 = *(v29 + 56);
    }

    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [QLCacheMMAPBlobDatabase copyBlobWithInfo:];
    }

    v16 = _log_7();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [QLCacheMMAPBlobDatabase copyBlobWithInfo:];
    }
  }

LABEL_28:

  MEMORY[0x266708390](*MEMORY[0x277D85F48], v8, [v4 length]);
LABEL_10:
  v8 = 0;
LABEL_11:

  return v8;
}

- (BOOL)deleteBlobWithInfo:(id)a3
{
  v4 = a3;
  if (![v4 length])
  {
LABEL_6:
    v12 = 0;
    goto LABEL_10;
  }

  v5 = [v4 location];
  v6 = v5 + [v4 length] + 8;
  fragHandler = self->_fragHandler;
  p_fragHandler = &self->_fragHandler;
  v9 = [(QLCacheFragHandler *)fragHandler totalLen];
  v10 = _log_7();
  v11 = v10;
  if (v6 > v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(QLCacheMMAPBlobDatabase *)v4 deleteBlobWithInfo:?];
    }

    goto LABEL_6;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [QLCacheMMAPBlobDatabase deleteBlobWithInfo:];
  }

  -[QLCacheFragHandler releaseSpaceAtPos:withLen:](*p_fragHandler, "releaseSpaceAtPos:withLen:", [v4 location] - 8, objc_msgSend(v4, "length") + 16);
  v12 = 1;
LABEL_10:

  return v12;
}

- (BOOL)deleteBlobsWithArray:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    v8 = 1;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v8 &= [(QLCacheMMAPBlobDatabase *)self deleteBlobWithInfo:*(*(&v12 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  else
  {
    LOBYTE(v8) = 1;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)compactFragmentation
{
  [(QLCacheFragHandler *)self->_fragHandler compact];
  fragHandler = self->_fragHandler;

  [(QLCacheFragHandler *)fragHandler truncateUselessSpaceAtEndOfFile];
}

- (BOOL)doesExist
{
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [(NSString *)self->_path stringByAppendingPathExtension:@"data"];
  v5 = [v3 fileExistsAtPath:v4];

  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [(NSString *)self->_path stringByAppendingPathExtension:@"fraghandler"];
  v8 = [v6 fileExistsAtPath:v7];

  v9 = _log_7();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
  if ((v5 & v8) == 1)
  {
    if (v10)
    {
      [(QLCacheMMAPBlobDatabase *)v9 doesExist];
    }
  }

  else if (v10)
  {
    [QLCacheMMAPBlobDatabase doesExist];
  }

  return v5 & v8;
}

- (void)open
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(&dword_2615D3000, v0, OS_LOG_TYPE_ERROR, "can not create %s", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (BOOL)isValid
{
  file = self->_file;
  v4 = file != -1;
  if (file == -1)
  {
    v5 = _log_7();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [QLCacheMMAPBlobDatabase isValid];
    }
  }

  if (self->_vmFile == -1)
  {
    v6 = _log_7();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [QLCacheMMAPBlobDatabase isValid];
    }

    v4 = 0;
  }

  p_fragHandler = &self->_fragHandler;
  if (![(QLCacheFragHandler *)self->_fragHandler checkConsistency])
  {
    v8 = _log_7();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [QLCacheMMAPBlobDatabase isValid];
    }

    v4 = 0;
  }

  memset(&v18, 0, sizeof(v18));
  path = self->_path;
  p_path = &self->_path;
  v11 = [(NSString *)path stringByAppendingPathExtension:@"data", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
  v12 = lstat([v11 fileSystemRepresentation], &v18);

  if (v12)
  {
    v13 = _log_7();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(QLCacheMMAPBlobDatabase *)p_path isValid];
    }

LABEL_23:

    goto LABEL_24;
  }

  st_size = v18.st_size;
  if (st_size != [(QLCacheFragHandler *)*p_fragHandler totalLen])
  {
    v13 = _log_7();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(QLCacheMMAPBlobDatabase *)&v18.st_size isValid];
    }

    goto LABEL_23;
  }

  if (!v4)
  {
LABEL_24:
    v15 = _log_7();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [QLCacheMMAPBlobDatabase isValid];
    }

    v16 = 0;
    goto LABEL_27;
  }

  v15 = _log_7();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [QLCacheMMAPBlobDatabase isValid];
  }

  v16 = 1;
LABEL_27:

  return v16;
}

- (id)checkConsistency:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = [a3 sortedArrayWithOptions:1 usingComparator:&__block_literal_global_5];
  v5 = [QLCacheFragHandler alloc];
  v6 = [(QLCacheMMAPBlobDatabase *)self cacheThread];
  v7 = [(QLCacheFragHandler *)v5 initWithCacheThread:v6];

  [(QLCacheFragHandler *)self->_fragHandler compact];
  [(QLCacheFragHandler *)self->_fragHandler truncateUselessSpaceAtEndOfFile];
  [(QLCacheMMAPBlobDatabase *)self save];
  v8 = [(QLCacheFragHandler *)self->_fragHandler checkConsistency];
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = [MEMORY[0x277CCAB68] string];
    [v9 appendFormat:@"inconsistent frag handler"];
  }

  memset(&v44, 0, sizeof(v44));
  v10 = [(QLCacheFragHandler *)self->_fragHandler totalLen];
  v11 = [(NSString *)self->_path stringByAppendingPathExtension:@"data"];
  v12 = lstat([v11 fileSystemRepresentation], &v44);

  if (v12)
  {
    if (v9)
    {
      if (v8)
      {
LABEL_8:
        v13 = @"blob file unreadable";
LABEL_15:
        [v9 appendFormat:v13, st_size, v35];
        v14 = 1;
        goto LABEL_16;
      }
    }

    else
    {
      v9 = [MEMORY[0x277CCAB68] string];
      if (v8)
      {
        goto LABEL_8;
      }
    }

    [v9 appendString:@" - "];
    goto LABEL_8;
  }

  if (v44.st_size < v10)
  {
    if (!v9)
    {
      v9 = [MEMORY[0x277CCAB68] string];
    }

    if (!v8)
    {
      [v9 appendString:@" - "];
    }

    st_size = v44.st_size;
    v35 = v10;
    v13 = @"inconsistent blob length (%llu vs. %llu)";
    goto LABEL_15;
  }

  v14 = !v8;
  v37 = v10;
  v38 = v7;
  [(QLCacheFragHandler *)v7 allocateSpaceForLength:v10 added:0];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v4;
  v15 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (!v15)
  {
    v17 = 0;
    goto LABEL_52;
  }

  v16 = v15;
  v36 = v4;
  v17 = 0;
  v18 = *v41;
  while (2)
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v41 != v18)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(*(&v40 + 1) + 8 * i);
      v21 = [v20 length];
      v22 = [v20 location];
      v23 = v22;
      if (!v21)
      {
        if (!v22)
        {
          continue;
        }

        if (!v9)
        {
          v9 = [MEMORY[0x277CCAB68] string];
        }

        v4 = v36;
        v7 = v38;
        if (!v8)
        {
          [v9 appendString:@" - "];
        }

        v27 = @"zero length block with non zero location";
LABEL_51:
        [v9 appendFormat:v27];
        v14 = 1;
        goto LABEL_52;
      }

      if (v22 <= 7)
      {
        if (!v9)
        {
          v9 = [MEMORY[0x277CCAB68] string];
        }

        v4 = v36;
        v7 = v38;
        if (!v8)
        {
          [v9 appendString:@" - "];
        }

        v27 = @"negative blob location";
        goto LABEL_51;
      }

      v24 = [v20 length];
      v25 = v23 - 8 - v17;
      if (v23 - 8 < v17)
      {
        if (!v9)
        {
          v9 = [MEMORY[0x277CCAB68] string];
        }

        v4 = v36;
        v7 = v38;
        if (!v8)
        {
          [v9 appendString:{@" - ", v25}];
        }

        v27 = @"overlapping blobs";
        goto LABEL_51;
      }

      v26 = v24;
      if (v23 - 8 > v17)
      {
        [(QLCacheFragHandler *)v38 releaseSpaceAtPos:v17 withLen:v25];
      }

      v17 = v23 + v26 + 8;
    }

    v16 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v16)
    {
      continue;
    }

    break;
  }

  v4 = v36;
  v7 = v38;
  v14 = !v8;
LABEL_52:

  if (!v9 && v37 > v17)
  {
    [(QLCacheFragHandler *)v7 releaseSpaceAtPos:v17 withLen:v37 - v17];
    goto LABEL_55;
  }

LABEL_16:
  if (!v9)
  {
LABEL_55:
    [(QLCacheFragHandler *)v7 compact];
    v28 = [(QLCacheFragHandler *)v7 orderedByStart];
    v29 = [(QLCacheFragHandler *)self->_fragHandler orderedByStart];
    if ([v28 isEqual:v29])
    {
      v9 = 0;
    }

    else
    {
      v30 = [MEMORY[0x277CCAB68] string];
      v9 = v30;
      if (v14)
      {
        [v30 appendString:@" - "];
      }

      [v9 appendFormat:@"desynchronized fragmentation"];
      v31 = _log_7();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        [QLCacheMMAPBlobDatabase checkConsistency:v28];
      }
    }
  }

  v32 = *MEMORY[0x277D85DE8];

  return v9;
}

uint64_t __44__QLCacheMMAPBlobDatabase_checkConsistency___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 location];
  v6 = [v4 location];

  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return v5 > v6;
  }
}

- (void)close
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = *__error();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)reset
{
  v3 = [(NSString *)self->_path stringByAppendingPathExtension:@"data"];
  unlink([v3 fileSystemRepresentation]);

  v4 = [(NSString *)self->_path stringByAppendingPathExtension:@"fraghandler"];
  unlink([v4 fileSystemRepresentation]);

  v5 = _log_7();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_2615D3000, v5, OS_LOG_TYPE_INFO, "reset blob database", v6, 2u);
  }
}

- (id)reserveBufferWithLength:(unint64_t)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = [(QLCacheFragHandler *)self->_fragHandler totalLen];
  if (!a3)
  {
LABEL_6:
    v11 = 0;
    goto LABEL_21;
  }

  v6 = v5;
  v23 = 0;
  v7 = a3 + 16;
  v8 = [(QLCacheFragHandler *)self->_fragHandler allocateSpaceForLength:a3 + 16 added:&v23];
  if ([(QLCacheFragHandler *)self->_fragHandler totalLen]> self->_maxSize)
  {
    [(QLCacheFragHandler *)self->_fragHandler releaseSpaceAtPos:v8 withLen:a3 + 16];
    v9 = _log_7();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      maxSize = self->_maxSize;
      *buf = 134218496;
      v25 = v8;
      v26 = 2048;
      v27 = a3;
      v28 = 2048;
      v29 = maxSize;
      _os_log_impl(&dword_2615D3000, v9, OS_LOG_TYPE_INFO, "we can't write the blob, it's out of the limit location %llu length %llu limit %llu", buf, 0x20u);
    }

    goto LABEL_6;
  }

  if (v23 == 1)
  {
    v12 = _log_7();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v25 = v7 + v8;
      _os_log_debug_impl(&dword_2615D3000, v12, OS_LOG_TYPE_DEBUG, "new file size %lld", buf, 0xCu);
    }

    if (ftruncate(self->_file, [(QLCacheFragHandler *)self->_fragHandler totalLen]) == -1)
    {
      v22 = _log_7();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [QLCacheMMAPBlobDatabase reserveBufferWithLength:];
      }

      [(QLCacheFragHandler *)self->_fragHandler releaseSpaceAtPos:v8 withLen:v7];
      goto LABEL_6;
    }
  }

  v13 = 0;
  v14 = self->_vmFile + v8;
  do
  {
    v14[v13] = v7;
    v7 >>= 8;
    ++v13;
  }

  while (v13 != 8);
  v15 = 0;
  v16 = self->_vmFile + v8 + a3 + 8;
  v17 = v8;
  do
  {
    v16[v15] = v17;
    v17 >>= 8;
    ++v15;
  }

  while (v15 != 8);
  v18 = v8 + 8;
  if (v6 > v8 + 8)
  {
    if (v18 + a3 >= v6)
    {
      v19 = v6 - (v8 + 8);
    }

    else
    {
      v19 = a3;
    }

    bzero(self->_vmFile + v8 + 8, v19);
  }

  v11 = objc_alloc_init(QLCacheBlobInfo);
  [(QLCacheBlobInfo *)v11 setLocation:v18];
  [(QLCacheBlobInfo *)v11 setLength:a3];
  [(NSMutableArray *)self->_reservedBuffers addObject:v11];
LABEL_21:
  v20 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)discardReservedBufferWithBlobInfo:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    [(NSMutableArray *)self->_reservedBuffers removeObject:v4];
    v5 = _log_7();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [QLCacheMMAPBlobDatabase discardReservedBufferWithBlobInfo:];
    }

    -[QLCacheFragHandler releaseSpaceAtPos:withLen:](self->_fragHandler, "releaseSpaceAtPos:withLen:", [v4 location] - 8, objc_msgSend(v4, "length") + 16);
  }
}

- (void)validateReservedBufferWithBlobInfo:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(NSMutableArray *)self->_reservedBuffers indexOfObject:v4];
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = v5;
      v7 = _log_7();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [QLCacheMMAPBlobDatabase validateReservedBufferWithBlobInfo:];
      }

      [(NSMutableArray *)self->_reservedBuffers removeObjectAtIndex:v6];
    }
  }
}

- (_QLCacheThread)cacheThread
{
  WeakRetained = objc_loadWeakRetained(&self->_cacheThread);

  return WeakRetained;
}

- (void)copyBlobWithInfo:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x34u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)copyBlobWithInfo:.cold.2()
{
  OUTLINED_FUNCTION_7_0();
  v7 = *MEMORY[0x277D85DE8];
  [v0 location];
  [OUTLINED_FUNCTION_6_1() length];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)copyBlobWithInfo:(void *)a1 .cold.3(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 length];
  v7 = *__error();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)copyBlobWithInfo:.cold.4()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x34u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)copyBlobWithInfo:.cold.5()
{
  OUTLINED_FUNCTION_7_0();
  v7 = *MEMORY[0x277D85DE8];
  [v0 location];
  [OUTLINED_FUNCTION_6_1() length];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)copyBlobWithInfo:.cold.6()
{
  OUTLINED_FUNCTION_7_0();
  v7 = *MEMORY[0x277D85DE8];
  [v0 location];
  [OUTLINED_FUNCTION_6_1() length];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)copyBlobWithInfo:.cold.7()
{
  OUTLINED_FUNCTION_7_0();
  v7 = *MEMORY[0x277D85DE8];
  [v0 location];
  [OUTLINED_FUNCTION_6_1() length];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)deleteBlobWithInfo:.cold.1()
{
  OUTLINED_FUNCTION_7_0();
  v7 = *MEMORY[0x277D85DE8];
  [v0 location];
  [OUTLINED_FUNCTION_6_1() length];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_9(v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)deleteBlobWithInfo:(void *)a1 .cold.2(void *a1, id *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  [a1 location];
  [a1 length];
  [a1 location];
  [a1 length];
  [*a2 totalLen];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Au);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)doesExist
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = @"YES";
  v6 = 2112;
  v7 = @"YES";
  OUTLINED_FUNCTION_9(&dword_2615D3000, a1, a3, "data file exists %@, frag handler file exists %@", &v4);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)isValid
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  [*a2 totalLen];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)checkConsistency:(void *)a1 .cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 description];
  objc_claimAutoreleasedReturnValue();
  v8 = [OUTLINED_FUNCTION_6_1() description];
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_9(v2, v3, v4, v5, v6);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)discardReservedBufferWithBlobInfo:.cold.1()
{
  OUTLINED_FUNCTION_7_0();
  v7 = *MEMORY[0x277D85DE8];
  [v0 location];
  [OUTLINED_FUNCTION_6_1() length];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_9(v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)validateReservedBufferWithBlobInfo:.cold.1()
{
  OUTLINED_FUNCTION_7_0();
  v7 = *MEMORY[0x277D85DE8];
  [v0 location];
  [OUTLINED_FUNCTION_6_1() length];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_9(v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

@end