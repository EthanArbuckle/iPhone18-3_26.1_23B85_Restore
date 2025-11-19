@interface TIImageCacheClient
- (BOOL)imageExistsForKey:(id)a3 inGroup:(id)a4;
- (CGImage)copyImageForKey:(id)a3 inGroup:(id)a4;
- (OS_dispatch_queue)storeImageQueue;
- (TIImageCacheClient)initWithLocalAccess:(BOOL)a3;
- (_img)_imgForItem:(SEL)a3;
- (id)_versionPath;
- (int)_cacheVersion;
- (unint64_t)imageCount;
- (void)_createConnectionIfNecessary;
- (void)_idleIfNecessary:(BOOL)a3;
- (void)_localStoreImageForKey:(id)a3 inGroup:(id)a4 withItem:(id)a5;
- (void)_remoteStoreImageForKey:(id)a3 inGroup:(id)a4 withItem:(id)a5;
- (void)_setCacheVersion:(int)a3;
- (void)dealloc;
- (void)idleAfter:(double)a3;
- (void)openAndMmap:(id)a3 withInfo:(_img *)a4;
- (void)purge;
- (void)removeImagesInGroups:(id)a3 completion:(id)a4;
- (void)setIdleWhenDone;
- (void)storeImageDataForKey:(id)a3 inGroup:(id)a4 item:(id)a5;
@end

@implementation TIImageCacheClient

- (int)_cacheVersion
{
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [(TIImageCacheClient *)self _versionPath];
  v5 = [v3 fileExistsAtPath:v4];

  if (!v5)
  {
    return -1;
  }

  v6 = MEMORY[0x1E696AEC0];
  v7 = [(TIImageCacheClient *)self _versionPath];
  v12 = 0;
  v8 = [v6 stringWithContentsOfFile:v7 encoding:4 error:&v12];
  v9 = v12;

  if (v9)
  {
    v10 = -1;
  }

  else
  {
    v10 = [v8 intValue];
  }

  return v10;
}

- (id)_versionPath
{
  versionPath = self->_versionPath;
  if (!versionPath)
  {
    v4 = [(NSString *)self->_path stringByAppendingPathComponent:@"version"];
    v5 = self->_versionPath;
    self->_versionPath = v4;

    versionPath = self->_versionPath;
  }

  return versionPath;
}

- (void)_setCacheVersion:(int)a3
{
  v6 = [MEMORY[0x1E696AD98] numberWithInt:*&a3];
  v4 = [v6 stringValue];
  v5 = [(TIImageCacheClient *)self _versionPath];
  [v4 writeToFile:v5 atomically:1 encoding:4 error:0];
}

- (void)purge
{
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  [v3 removeItemAtPath:self->_path error:0];
}

- (unint64_t)imageCount
{
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [(TIImageCacheClient *)self imagePath];
  v5 = [v3 subpathsAtPath:v4];
  v6 = [v5 count];

  return v6;
}

- (void)removeImagesInGroups:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    if (!self->_serialQueueRemoveImagesDefault)
    {
      v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
      v9 = dispatch_queue_create("SerialQueueRemoveImagesDefault", v8);
      serialQueueRemoveImagesDefault = self->_serialQueueRemoveImagesDefault;
      self->_serialQueueRemoveImagesDefault = v9;
    }

    if (!self->_serialQueueRemoveImagesBackground)
    {
      v11 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
      v12 = dispatch_queue_create("SerialQueueRemoveImagesBackground", v11);
      serialQueueRemoveImagesBackground = self->_serialQueueRemoveImagesBackground;
      self->_serialQueueRemoveImagesBackground = v12;
    }

    v14 = [(TIImageCacheClient *)self imagePath];
    v15 = [MEMORY[0x1E696AC08] defaultManager];
    v16 = [v15 contentsOfDirectoryAtPath:v14 error:0];

    v17 = [v7 copy];
    v18 = self->_serialQueueRemoveImagesBackground;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __54__TIImageCacheClient_removeImagesInGroups_completion___block_invoke;
    v22[3] = &unk_1E6F4D900;
    v23 = v6;
    v24 = v16;
    v25 = v14;
    v26 = self;
    v27 = v17;
    v19 = v17;
    v20 = v14;
    v21 = v16;
    TIDispatchAsync(v18, v22);
  }
}

void __54__TIImageCacheClient_removeImagesInGroups_completion___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DFA8] set];
  v3 = *(a1 + 32);
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __54__TIImageCacheClient_removeImagesInGroups_completion___block_invoke_2;
  v39[3] = &unk_1E6F4D8B0;
  v25 = v2;
  v40 = v25;
  [v3 enumerateObjectsUsingBlock:v39];
  group = dispatch_group_create();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = *(a1 + 40);
  v26 = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
  if (v26)
  {
    v24 = *v36;
    do
    {
      v4 = 0;
      do
      {
        if (*v36 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v27 = v4;
        v5 = *(*(&v35 + 1) + 8 * v4);
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v6 = v25;
        v7 = [v6 countByEnumeratingWithState:&v31 objects:v41 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v32;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v32 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v31 + 1) + 8 * i);
              v12 = [v5 lastPathComponent];
              v13 = [v12 hasPrefix:v11];

              if (v13)
              {
                if ([v5 isAbsolutePath])
                {
                  v14 = v5;
                }

                else
                {
                  v14 = [*(a1 + 48) stringByAppendingPathComponent:v5];
                }

                v15 = v14;
                unlink([v14 fileSystemRepresentation]);
                v16 = [v5 lastPathComponent];
                v17 = [v16 substringFromIndex:{objc_msgSend(v11, "length")}];

                v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{strtoull(objc_msgSend(v17, "UTF8String"), 0, 10)}];
                v19 = *(a1 + 56);
                v20 = *(v19 + 64);
                block[0] = MEMORY[0x1E69E9820];
                block[1] = 3221225472;
                block[2] = __54__TIImageCacheClient_removeImagesInGroups_completion___block_invoke_3;
                block[3] = &unk_1E6F4D8D8;
                block[4] = v19;
                v30 = v18;
                v21 = v18;
                dispatch_group_async(group, v20, block);
              }
            }

            v8 = [v6 countByEnumeratingWithState:&v31 objects:v41 count:16];
          }

          while (v8);
        }

        v4 = v27 + 1;
      }

      while (v27 + 1 != v26);
      v26 = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
    }

    while (v26);
  }

  v22 = *(a1 + 64);
  if (v22)
  {
    dispatch_group_notify(group, *(*(a1 + 56) + 56), v22);
  }
}

void __54__TIImageCacheClient_removeImagesInGroups_completion___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = a2;
  v5 = malloc_type_malloc(0x32uLL, 0x100004077774924uLL);
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v5 length:snprintf(v5 encoding:0x32uLL freeWhenDone:{"%lu", objc_msgSend(v7, "hash")), 1, 1}];
    [*(a1 + 32) addObject:v6];
    *a3 = 0;
  }
}

- (void)_idleIfNecessary:(BOOL)a3
{
  if (self->_shouldIdleWhenDone)
  {
    if (self->_remoteQueryCount)
    {
      v4 = !a3;
    }

    else
    {
      v4 = 0;
    }

    if (!v4)
    {
      [(NSXPCConnection *)self->_connection setInvalidationHandler:0];
      [(NSXPCConnection *)self->_connection invalidate];
      connection = self->_connection;
      self->_connection = 0;

      self->_shouldIdleWhenDone = 0;
      self->_remoteQueryCount = 0;
    }
  }
}

- (void)idleAfter:(double)a3
{
  requestQueue = self->_requestQueue;
  if (requestQueue)
  {
    self->_shouldIdleWhenDone = 1;
    if (a3 <= 0.0)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __32__TIImageCacheClient_idleAfter___block_invoke_2;
      v7[3] = &unk_1E6F4D860;
      v7[4] = self;
      TIDispatchSync(requestQueue, v7);
    }

    else
    {
      v5 = dispatch_time(0, (a3 * 1000000000.0));
      v6 = self->_requestQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __32__TIImageCacheClient_idleAfter___block_invoke;
      block[3] = &unk_1E6F4D860;
      block[4] = self;
      dispatch_after(v5, v6, block);
    }
  }
}

- (void)setIdleWhenDone
{
  requestQueue = self->_requestQueue;
  if (requestQueue)
  {
    self->_shouldIdleWhenDone = 1;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __37__TIImageCacheClient_setIdleWhenDone__block_invoke;
    v4[3] = &unk_1E6F4D860;
    v4[4] = self;
    TIDispatchAsync(requestQueue, v4);
  }
}

- (void)_createConnectionIfNecessary
{
  if (!self->_requestQueue)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.TextInput.image-cache-request", v3);
    requestQueue = self->_requestQueue;
    self->_requestQueue = v4;
  }

  if (!self->_connection)
  {
    v6 = self->_requestQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __50__TIImageCacheClient__createConnectionIfNecessary__block_invoke;
    v7[3] = &unk_1E6F4D860;
    v7[4] = self;
    TIDispatchSync(v6, v7);
  }
}

void __50__TIImageCacheClient__createConnectionIfNecessary__block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.TextInput.image-cache-server" options:4096];
  v3 = *(a1 + 32);
  v4 = *(v3 + 88);
  *(v3 + 88) = v2;

  v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EF7F8198];
  [*(*(a1 + 32) + 88) setRemoteObjectInterface:v5];

  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __50__TIImageCacheClient__createConnectionIfNecessary__block_invoke_2;
  v9 = &unk_1E6F4D888;
  objc_copyWeak(&v10, &location);
  [*(*(a1 + 32) + 88) setInvalidationHandler:&v6];
  [*(*(a1 + 32) + 88) _setQueue:{*(*(a1 + 32) + 80), v6, v7, v8, v9}];
  [*(*(a1 + 32) + 88) resume];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __50__TIImageCacheClient__createConnectionIfNecessary__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[10];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __50__TIImageCacheClient__createConnectionIfNecessary__block_invoke_3;
    v4[3] = &unk_1E6F4D860;
    v5 = WeakRetained;
    TIDispatchAsync(v3, v4);
  }
}

- (void)storeImageDataForKey:(id)a3 inGroup:(id)a4 item:(id)a5
{
  v10 = a3;
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    if (self->_hasLocalAccess)
    {
      [(TIImageCacheClient *)self _localStoreImageForKey:v10 inGroup:v8 withItem:v9];
    }

    else
    {
      [(TIImageCacheClient *)self _remoteStoreImageForKey:v10 inGroup:v8 withItem:v9];
    }
  }
}

- (_img)_imgForItem:(SEL)a3
{
  v20 = a4;
  *&retstr->var4 = 0;
  [v20 size];
  v6 = v5;
  [v20 scale];
  retstr->var1 = vcvtpd_u64_f64(v6 * v7);
  [v20 size];
  v9 = v8;
  [v20 scale];
  v11 = vcvtpd_u64_f64(v9 * v10);
  retstr->var2 = v11;
  v12 = [v20 format];
  retstr->var4 = v12;
  retstr->var3 = CGBitmapGetAlignedBytesPerRow();
  [v20 format];
  retstr->var0 = (*MEMORY[0x1E69E9AC8] + CGBitmapGetAlignedBytesPerRow() * v11 + 47) & -*MEMORY[0x1E69E9AC8];
  var5 = retstr->var5;
  v14 = [v20 formatColor];
  if (v12 == 5)
  {
    v15 = v14;
    if (v14)
    {
      NumberOfComponents = CGColorGetNumberOfComponents(v14);
      for (i = CGColorGetComponents(v15); NumberOfComponents; --NumberOfComponents)
      {
        v18 = *i++;
        *var5++ = (v18 * 255.0);
      }
    }
  }

  return result;
}

- (void)_remoteStoreImageForKey:(id)a3 inGroup:(id)a4 withItem:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [v10 scale];
  if (v11 == 0.0)
  {
    [v10 _callDataReleaseHandler];
  }

  else
  {
    [(TIImageCacheClient *)self _createConnectionIfNecessary];
    requestQueue = self->_requestQueue;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __63__TIImageCacheClient__remoteStoreImageForKey_inGroup_withItem___block_invoke;
    v13[3] = &unk_1E6F4D838;
    v13[4] = self;
    v14 = v10;
    v15 = v8;
    v16 = v9;
    TIDispatchSync(requestQueue, v13);
  }
}

uint64_t __63__TIImageCacheClient__remoteStoreImageForKey_inGroup_withItem___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 88) remoteObjectProxy];
  [v2 cacheItem:a1[5] key:a1[6] group:a1[7]];

  v3 = a1[5];

  return [v3 _callDataReleaseHandler];
}

- (void)_localStoreImageForKey:(id)a3 inGroup:(id)a4 withItem:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [v10 scale];
  if (v11 == 0.0 || (-[TIImageCacheClient imagePath](self, "imagePath"), v12 = objc_claimAutoreleasedReturnValue(), v12, !v12) || (v25 = 0, v23 = 0u, v24 = 0u, -[TIImageCacheClient _imgForItem:](self, "_imgForItem:", v10), [v10 data], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "length") + 48, v13, v14))
  {
    [v10 _callDataReleaseHandler];
  }

  else
  {
    v15 = [(TIImageCacheClient *)self storeImageQueue];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __62__TIImageCacheClient__localStoreImageForKey_inGroup_withItem___block_invoke;
    v16[3] = &unk_1E6F4D810;
    v16[4] = self;
    v17 = v10;
    v20 = v23;
    v21 = v24;
    v22 = v25;
    v18 = v8;
    v19 = v9;
    TIDispatchAsync(v15, v16);
  }
}

void __62__TIImageCacheClient__localStoreImageForKey_inGroup_withItem___block_invoke(uint64_t a1)
{
  v54 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) imagePath];
  v3 = [v2 stringByAppendingPathComponent:@"tmp.XXXXXXXX"];
  v4 = [v3 fileSystemRepresentation];

  if (!v4)
  {
    goto LABEL_21;
  }

  v5 = strdup(v4);
  if (!v5)
  {
    goto LABEL_21;
  }

  v6 = v5;
  v7 = *(a1 + 64);
  v8 = mkstemp(v5);
  if (v8 < 0)
  {
    v15 = TIImageCacheOSLogFacility();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v40 = MEMORY[0x1E696AEC0];
      v41 = __error();
      v42 = strerror(*v41);
      v43 = [v40 stringWithFormat:@"%s Making temp file at '%s' failed: '%s' (%d)", "mkstemp_and_mmap", v6, v42, *__error()];
      *buf = 138412290;
      v53 = v43;
      _os_log_debug_impl(&dword_1863F7000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    goto LABEL_20;
  }

  v9 = v8;
  if (fchmod(v8, 0x180u) < 0)
  {
    v16 = TIImageCacheOSLogFacility();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_19;
    }

    v17 = MEMORY[0x1E696AEC0];
    v18 = __error();
    v19 = strerror(*v18);
    v20 = [v17 stringWithFormat:@"%s Setting '%s' mode failed: '%s' (%d)", "mkstemp_and_mmap", v6, v19, *__error()];
    *buf = 138412290;
    v53 = v20;
LABEL_18:
    _os_log_debug_impl(&dword_1863F7000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);

    goto LABEL_19;
  }

  if (ftruncate(v9, v7) < 0)
  {
    v16 = TIImageCacheOSLogFacility();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_19;
    }

    v21 = MEMORY[0x1E696AEC0];
    v22 = __error();
    v23 = strerror(*v22);
    v20 = [v21 stringWithFormat:@"%s Truncating '%s' to %lu failed: '%s' (%d)", "mkstemp_and_mmap", v6, v7, v23, *__error()];
    *buf = 138412290;
    v53 = v20;
    goto LABEL_18;
  }

  v10 = mmap(0, v7, 3, 1, v9, 0);
  if (v10 == -1)
  {
    v16 = TIImageCacheOSLogFacility();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v24 = MEMORY[0x1E696AEC0];
      v25 = __error();
      v26 = strerror(*v25);
      v20 = [v24 stringWithFormat:@"%s Mapping '%s' failed: '%s' (%d)", "mkstemp_and_mmap", v6, v26, *__error()];
      *buf = 138412290;
      v53 = v20;
      goto LABEL_18;
    }

LABEL_19:

    close(v9);
    unlink(v6);
    goto LABEL_20;
  }

  v11 = v10;
  close(v9);
  if (!v11)
  {
LABEL_20:
    free(v6);
LABEL_21:
    [*(a1 + 40) _callDataReleaseHandler];
    goto LABEL_22;
  }

  *v11 = 0x154494943;
  *(v11 + 2) = vuzp1q_s32(*(a1 + 64), *(a1 + 80));
  *(v11 + 28) = *(a1 + 96);
  *(v11 + 29) = *(a1 + 97);
  *(v11 + 30) = *(a1 + 98);
  *(v11 + 31) = *(a1 + 99);
  *(v11 + 32) = *(a1 + 100);
  v12 = [*(a1 + 40) data];
  v13 = [*(a1 + 40) data];
  [v12 getBytes:v11 + 12 length:{objc_msgSend(v13, "length")}];

  v14 = *(a1 + 80);
  v27 = CGBitmapGetAlignedBytesPerRow() * v14;
  v28 = [*(a1 + 40) data];
  v29 = [v28 length];

  if (v29 < v27)
  {
    v30 = TIImageCacheOSLogFacility();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      v44 = MEMORY[0x1E696AEC0];
      v45 = *(a1 + 48);
      v46 = [*(a1 + 40) data];
      v47 = [v44 stringWithFormat:@"%s Item data length is shorter than declared: %@ (%lu, %lu)", "-[TIImageCacheClient _localStoreImageForKey:inGroup:withItem:]_block_invoke", v45, objc_msgSend(v46, "length"), v27];
      *buf = 138412290;
      v53 = v47;
      _os_log_debug_impl(&dword_1863F7000, v30, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    free(v6);
    munmap(v11, *(a1 + 64));
    goto LABEL_21;
  }

  v31 = crc32(0, 0, 0);
  v32 = [*(a1 + 40) data];
  v33 = crc32(v31, [v32 bytes], v27);

  v11[6] = v33;
  munmap(v11, *(a1 + 64));
  v34 = TIImageNameForItem(*(a1 + 48), *(a1 + 56));
  v35 = [v2 stringByAppendingPathComponent:v34];
  v36 = [v35 fileSystemRepresentation];
  rename(v6, v36, v37);
  if (v38 < 0)
  {
    v39 = TIImageCacheOSLogFacility();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      v48 = MEMORY[0x1E696AEC0];
      v49 = __error();
      v50 = strerror(*v49);
      v51 = [v48 stringWithFormat:@"%s Rename '%s' to '%@' failed: '%s' (%d)", "-[TIImageCacheClient _localStoreImageForKey:inGroup:withItem:]_block_invoke", v6, v35, v50, *__error()];
      *buf = 138412290;
      v53 = v51;
      _os_log_debug_impl(&dword_1863F7000, v39, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  free(v6);
  [*(a1 + 40) _callDataReleaseHandler];

LABEL_22:
}

- (OS_dispatch_queue)storeImageQueue
{
  storeImageQueue = self->_storeImageQueue;
  if (!storeImageQueue)
  {
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v5 = dispatch_queue_create("com.apple.TextInput.local-image-cache-request", v4);
    v6 = self->_storeImageQueue;
    self->_storeImageQueue = v5;

    storeImageQueue = self->_storeImageQueue;
  }

  return storeImageQueue;
}

- (CGImage)copyImageForKey:(id)a3 inGroup:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(TIImageCacheClient *)self imagePath];

  if (v8)
  {
    v9 = TIImageNameForItem(v6, v7);
    v10 = [(NSCache *)self->_cache objectForKey:v9];
    if (v10)
    {
      v11 = CGImageRetain(v10);
LABEL_34:

      goto LABEL_35;
    }

    v36 = 0;
    *size = 0u;
    *bytesPerRow = 0u;
    v12 = [(TIImageCacheClient *)self imagePath];
    v13 = [v12 stringByAppendingPathComponent:v9];

    v14 = [(TIImageCacheClient *)self openAndMmap:v13 withInfo:size];
    if (!v14)
    {
      v11 = 0;
      goto LABEL_33;
    }

    v15 = v14;
    if ([(TIImageCacheClient *)self lockOnRead])
    {
      mlock(v15 - 48, size[0]);
    }

    size[0] -= 48;
    v16 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
    *v16 = 48;
    v17 = CGDataProviderCreateWithData(v16, v15, size[0], release_munmap);
    v18 = v36;
    if (v36 < 3u)
    {
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
    }

    else
    {
      if (v36 - 3 >= 2)
      {
        if (v36 == 5)
        {
          v11 = CGImageMaskCreate(size[1], bytesPerRow[0], 8uLL, 8uLL, bytesPerRow[1], v17, create_image_with_memory_decode, 0);
          if (!v11)
          {
            CGDataProviderRelease(v17);
            goto LABEL_33;
          }

          if (v36 == 5)
          {
            v23.i32[0] = *(&v36 + 1);
            v24 = vmovl_u16(*&vmovl_u8(v23));
            v25 = vand_s8(*v24.i8, 0xFF000000FFLL);
            v26.i64[0] = v25.u32[0];
            v26.i64[1] = v25.u32[1];
            v27 = vcvtq_f64_u64(v26);
            *v24.i8 = vand_s8(*&vextq_s8(v24, v24, 8uLL), 0xFF000000FFLL);
            v26.i64[0] = v24.u32[0];
            v26.i64[1] = v24.u32[1];
            v28 = vdupq_n_s64(0x406FE00000000000uLL);
            *components = vdivq_f64(v27, v28);
            v38 = vdivq_f64(vcvtq_f64_u64(v26), v28);
            v29 = CGColorSpaceCreateDeviceRGB();
            v30 = CGColorCreate(v29, components);
            CGImageSetProperty();
            CGColorSpaceRelease(v29);
            CGColorRelease(v30);
          }

          CGDataProviderRelease(v17);
          goto LABEL_32;
        }

        v20 = 0;
LABEL_14:
        if (v18 > 5)
        {
          v21 = 0;
        }

        else
        {
          if (v18 == 2)
          {
            v21 = 5;
            goto LABEL_29;
          }

          v21 = 8;
        }

        if (v18 > 5)
        {
          v22 = 0;
          v32 = 0;
          v31 = bytesPerRow[1];
LABEL_31:
          v11 = CGImageCreate(size[1], bytesPerRow[0], v21, v22, v31, v20, v32, v17, 0, 0, kCGRenderingIntentDefault);
          CGColorSpaceRelease(v20);
          CGDataProviderRelease(v17);
          if (v11)
          {
LABEL_32:
            [(NSCache *)self->_cache setObject:v11 forKey:v9];
          }

LABEL_33:

          goto LABEL_34;
        }

        if (((1 << v18) & 3) != 0)
        {
          v22 = 32;
          goto LABEL_30;
        }

        if (((1 << v18) & 0xC) == 0)
        {
          v22 = 8;
LABEL_30:
          v31 = bytesPerRow[1];
          v32 = dword_1864841C0[v18];
          goto LABEL_31;
        }

LABEL_29:
        v22 = 16;
        goto LABEL_30;
      }

      DeviceRGB = CGColorSpaceCreateDeviceGray();
    }

    v20 = DeviceRGB;
    v18 = v36;
    goto LABEL_14;
  }

  v11 = 0;
LABEL_35:

  return v11;
}

- (BOOL)imageExistsForKey:(id)a3 inGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TIImageCacheClient *)self imagePath];

  if (v8)
  {
    v9 = TIImageNameForItem(v6, v7);
    v10 = [(TIImageCacheClient *)self imagePath];
    v11 = [v10 stringByAppendingPathComponent:v9];

    v12 = access([v11 fileSystemRepresentation], 4) == 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)openAndMmap:(id)a3 withInfo:(_img *)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [a3 fileSystemRepresentation];
  hasLocalAccess = self->_hasLocalAccess;
  v10 = open(v8, 256);
  if (v10 < 0)
  {
    return 0;
  }

  v11 = v10;
  memset(&v38, 0, sizeof(v38));
  if (fstat(v10, &v38) < 0)
  {
    goto LABEL_13;
  }

  if (v38.st_nlink >= 2u)
  {
    v12 = TIImageCacheOSLogFacility();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s Cannot open '%s', its been hard-linked", "open_and_mmap", v8];
      *buf = 138412290;
      v37 = v13;
LABEL_32:
      _os_log_debug_impl(&dword_1863F7000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);

      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v14 = mmap(0, v38.st_size, 1, 1, v11, 0);
  if (v14 == -1)
  {
    v12 = TIImageCacheOSLogFacility();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v31 = MEMORY[0x1E696AEC0];
      v32 = __error();
      v33 = strerror(*v32);
      v13 = [v31 stringWithFormat:@"%s Mapping '%s' failed: '%s' (%d)", "open_and_mmap", v8, v33, *__error()];
      *buf = 138412290;
      v37 = v13;
      goto LABEL_32;
    }

LABEL_12:

LABEL_13:
    close(v11);
    return 0;
  }

  v15 = v14;
  close(v11);
  if (v15)
  {
    st_size = v38.st_size;
    if (v38.st_size > 0x2FuLL)
    {
      if (*v15 == 1414089027)
      {
        if (v15[1] == 1)
        {
          a4->var0 = v15[2];
          v21 = *(v15 + 3);
          *&v22 = v21;
          *(&v22 + 1) = HIDWORD(v21);
          *&a4->var1 = v22;
          a4->var3 = v15[5];
          a4->var4 = *(v15 + 28);
          a4->var5[0] = *(v15 + 29);
          a4->var5[1] = *(v15 + 30);
          a4->var5[2] = *(v15 + 31);
          a4->var5[3] = *(v15 + 32);
          AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
          v24 = AlignedBytesPerRow;
          if (a4->var3 == AlignedBytesPerRow)
          {
            v25 = (*MEMORY[0x1E69E9AC8] + a4->var2 * AlignedBytesPerRow + 47) & -*MEMORY[0x1E69E9AC8];
            if (a4->var0 == v25)
            {
              if (v25 != st_size)
              {
                goto LABEL_37;
              }

              v26 = crc32(0, 0, 0);
              var2 = a4->var2;
              v28 = CGBitmapGetAlignedBytesPerRow();
              v29 = v28 * var2;
              v30 = v28 * var2 + 48;
              if (v30 <= st_size)
              {
                v34 = v26;
                v19 = v15 + 12;
                v35 = crc32(v34, v15 + 48, v29);
                if (v15[6] == v35)
                {
                  return v19;
                }

                v17 = TIImageCacheOSLogFacility();
                if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
                {
                  goto LABEL_36;
                }

                v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s CRC did not match for cached image at path: %s (%u, %u)", "open_and_mmap_img", v8, v35, v15[6]];
                v38.st_dev = 138412290;
                *&v38.st_mode = v18;
                goto LABEL_35;
              }

              v17 = TIImageCacheOSLogFacility();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
              {
                v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s Actual file size is shorter than declared for cached image at path: %s (%lu, %lu)", "open_and_mmap_img", v8, st_size, v30];
                v38.st_dev = 138412290;
                *&v38.st_mode = v18;
                goto LABEL_35;
              }
            }

            else
            {
              v17 = TIImageCacheOSLogFacility();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
              {
                v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s Mapping '%s' failed: wrong size %zu (expected %zu)", "read_img_header", v8, a4->var0, v25];
                v38.st_dev = 138412290;
                *&v38.st_mode = v18;
                goto LABEL_35;
              }
            }
          }

          else
          {
            v17 = TIImageCacheOSLogFacility();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s Mapping '%s' failed: wrong bpr %zu (expected %zu)", "read_img_header", v8, a4->var3, v24];
              v38.st_dev = 138412290;
              *&v38.st_mode = v18;
              goto LABEL_35;
            }
          }
        }

        else
        {
          v17 = TIImageCacheOSLogFacility();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s Mapping '%s' failed: wrong version %d (expected %d)", "read_img_header", v8, v15[1], 1];
            v38.st_dev = 138412290;
            *&v38.st_mode = v18;
            goto LABEL_35;
          }
        }
      }

      else
      {
        v17 = TIImageCacheOSLogFacility();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s Mapping '%s' failed: wrong magic number %#08x (expected %#08x)", "read_img_header", v8, *v15, 1414089027];
          v38.st_dev = 138412290;
          *&v38.st_mode = v18;
          goto LABEL_35;
        }
      }
    }

    else
    {
      v17 = TIImageCacheOSLogFacility();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s Mapping '%s' failed: file too short", "open_and_mmap_img", v8];
        v38.st_dev = 138412290;
        *&v38.st_mode = v18;
LABEL_35:
        _os_log_debug_impl(&dword_1863F7000, v17, OS_LOG_TYPE_DEBUG, "%@", &v38, 0xCu);
      }
    }

LABEL_36:

LABEL_37:
    munmap(v15, st_size);
    if (hasLocalAccess)
    {
      unlink(v8);
    }
  }

  return 0;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection setInvalidationHandler:0];
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = TIImageCacheClient;
  [(TIImageCacheClient *)&v3 dealloc];
}

- (TIImageCacheClient)initWithLocalAccess:(BOOL)a3
{
  v3 = a3;
  v16.receiver = self;
  v16.super_class = TIImageCacheClient;
  v4 = [(TIImageCacheClient *)&v16 init];
  if (v4)
  {
    v5 = TIImageCachePath();
    path = v4->_path;
    v4->_path = v5;

    v7 = TIImageCacheImagesPath();
    imagePath = v4->_imagePath;
    v4->_imagePath = v7;

    v4->_hasLocalAccess = v3;
    v4->_remoteQueryCount = 0;
    v4->_shouldIdleWhenDone = 0;
    v9 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    cache = v4->_cache;
    v4->_cache = v9;

    [(NSCache *)v4->_cache setName:@"com.apple.TIImageCache"];
    [(NSCache *)v4->_cache setCountLimit:40];
    if (v4->_hasLocalAccess)
    {
      v11 = [(NSString *)v4->_path stringByDeletingLastPathComponent];
      v12 = CheckSandboxAccess(v11);

      if (v12)
      {
        if (TIImageCacheVersion_onceToken != -1)
        {
          dispatch_once(&TIImageCacheVersion_onceToken, &__block_literal_global_22_12850);
        }

        v13 = TIImageCacheVersion_buildVersion;
        if ([(TIImageCacheClient *)v4 _cacheVersion]!= v13)
        {
          [(TIImageCacheClient *)v4 purge];
        }

        if (access([(NSString *)v4->_path fileSystemRepresentation], 4))
        {
          v14 = [(TIImageCacheClient *)v4 imagePath];
          mkpath_np([v14 fileSystemRepresentation], 0x1EDu);

          [(TIImageCacheClient *)v4 _setCacheVersion:v13];
        }
      }
    }

    if (v3)
    {
      v4->_hasLocalAccess = CheckSandboxAccess(v4->_imagePath);
    }
  }

  return v4;
}

@end