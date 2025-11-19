@interface SBFFileCache
- (SBFFileCache)init;
- (SBFFileCache)initWithStore:(id)a3 faultHandler:(id)a4;
- (SBFFileCacheDelegate)delegate;
- (id)description;
- (id)fileNameForIdentifier:(id)a3;
- (void)_queue_createManifestEntryForGeneratedFileWrapper:(id)a3 filename:(id)a4 usingStore:(id)a5;
- (void)_queue_evictFileWithInfo:(id)a3 usingStore:(id)a4;
- (void)_queue_evictFilesAtManifestIndexes:(id)a3 usingStore:(id)a4;
- (void)_queue_evictIfNeededUsingStore:(id)a3;
- (void)_queue_loadManifestUsingStore:(id)a3;
- (void)_queue_removeManifestEntryForFilename:(id)a3 usingStore:(id)a4;
- (void)_queue_resetManifestUsingStore:(id)a3;
- (void)_queue_saveManifestUsingStore:(id)a3;
- (void)_queue_updateManifestForLoadedFileWrapper:(id)a3 filename:(id)a4 usingStore:(id)a5;
- (void)loadFileWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)performOnWorkQueueUsingBlock:(id)a3;
- (void)removeAllFiles;
- (void)removeFileWithIdentifier:(id)a3;
- (void)setAccessDateTimeAdjustment:(double)a3;
@end

@implementation SBFFileCache

- (SBFFileCache)initWithStore:(id)a3 faultHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = SBFFileCache;
  v9 = [(SBFFileCache *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_store, a3);
    objc_storeStrong(&v10->_faultHandler, a4);
    Serial = BSDispatchQueueCreateSerial();
    queue = v10->_queue;
    v10->_queue = Serial;
  }

  return v10;
}

- (SBFFileCache)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Can't directly init this class" userInfo:0];
  objc_exception_throw(v2);
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [(SBFFileCache *)self store];
  v5 = [v3 appendObject:v4 withName:@"store"];

  v6 = [(SBFFileCache *)self faultHandler];
  v7 = [v3 appendObject:v6 withName:@"faultHandler"];

  v8 = [(SBFFileCache *)self delegate];
  v9 = [v3 appendObject:v8 withName:@"delegate"];

  v10 = [v3 appendUnsignedInteger:-[SBFFileCache maxTotalFileCount](self withName:{"maxTotalFileCount"), @"maxTotalFileCount"}];
  v11 = [v3 appendUnsignedInteger:-[SBFFileCache maxTotalFileSize](self withName:{"maxTotalFileSize"), @"maxTotalFileSize"}];
  queue = self->_queue;
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __27__SBFFileCache_description__block_invoke;
  v19 = &unk_1E807F290;
  v20 = v3;
  v21 = self;
  v13 = v3;
  dispatch_sync(queue, &v16);
  v14 = [v13 build];

  return v14;
}

- (void)loadFileWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__SBFFileCache_loadFileWithIdentifier_completionHandler___block_invoke;
  v10[3] = &unk_1E807FA50;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(SBFFileCache *)self performOnWorkQueueUsingBlock:v10];
}

void __57__SBFFileCache_loadFileWithIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) fileNameForIdentifier:*(a1 + 40)];
  v8 = [v5 fileCache:*(a1 + 32) loadFileWrapperNamed:v7];
  v9 = *(a1 + 32);
  if (v8)
  {
    v10 = [*(a1 + 32) callbackQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__SBFFileCache_loadFileWithIdentifier_completionHandler___block_invoke_2;
    block[3] = &unk_1E807F9B0;
    v19 = *(a1 + 48);
    v11 = v8;
    v18 = v11;
    dispatch_async(v10, block);

    [*(a1 + 32) _queue_updateManifestForLoadedFileWrapper:v11 filename:v7 usingStore:v5];
    v12 = v19;
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __57__SBFFileCache_loadFileWithIdentifier_completionHandler___block_invoke_3;
    v14[3] = &unk_1E807FA28;
    v14[4] = v9;
    v13 = *(a1 + 40);
    v16 = *(a1 + 48);
    v15 = v7;
    [v6 fileCache:v9 loadFileForIdentifier:v13 completionHandler:v14];

    v12 = v16;
  }
}

void __57__SBFFileCache_loadFileWithIdentifier_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__SBFFileCache_loadFileWithIdentifier_completionHandler___block_invoke_4;
  v10[3] = &unk_1E807FA00;
  v10[4] = v7;
  v14 = *(a1 + 48);
  v11 = v5;
  v12 = v6;
  v13 = *(a1 + 40);
  v8 = v6;
  v9 = v5;
  [v7 performOnWorkQueueUsingBlock:v10];
}

void __57__SBFFileCache_loadFileWithIdentifier_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) callbackQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__SBFFileCache_loadFileWithIdentifier_completionHandler___block_invoke_5;
  block[3] = &unk_1E807F9D8;
  v9 = *(a1 + 64);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  dispatch_async(v4, block);

  v5 = *(a1 + 40);
  if (v5)
  {
    [v5 setFilename:*(a1 + 56)];
    [v3 fileCache:*(a1 + 32) storeFileWrapper:*(a1 + 40)];
    [*(a1 + 32) _queue_createManifestEntryForGeneratedFileWrapper:*(a1 + 40) filename:*(a1 + 56) usingStore:v3];
  }
}

- (void)removeFileWithIdentifier:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__SBFFileCache_removeFileWithIdentifier___block_invoke;
  v6[3] = &unk_1E807FA78;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(SBFFileCache *)self performOnWorkQueueUsingBlock:v6];
}

void __41__SBFFileCache_removeFileWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v3 fileNameForIdentifier:v4];
  [v5 fileCache:*(a1 + 32) removeFileWrapperNamed:v6];
  [*(a1 + 32) _queue_removeManifestEntryForFilename:v6 usingStore:v5];
}

- (void)removeAllFiles
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __30__SBFFileCache_removeAllFiles__block_invoke;
  v2[3] = &unk_1E807FAA0;
  v2[4] = self;
  [(SBFFileCache *)self performOnWorkQueueUsingBlock:v2];
}

void __30__SBFFileCache_removeAllFiles__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 removeAllFileWrappersForFileCache:v3];
  [*(a1 + 32) _queue_resetManifestUsingStore:v4];
}

- (id)fileNameForIdentifier:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [a3 fileCacheStableDataRepresentation];
  CC_SHA1([v3 bytes], objc_msgSend(v3, "length"), md);
  v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:md length:20 freeWhenDone:0];
  v5 = [v4 sbf_hexadecimalEncodedString];

  return v5;
}

- (void)performOnWorkQueueUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(SBFFileCache *)self store];
  v6 = [(SBFFileCache *)self faultHandler];
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __45__SBFFileCache_performOnWorkQueueUsingBlock___block_invoke;
  v11[3] = &unk_1E807F218;
  v11[4] = self;
  v12 = v5;
  v13 = v6;
  v14 = v4;
  v8 = v6;
  v9 = v4;
  v10 = v5;
  dispatch_async(queue, v11);
}

uint64_t __45__SBFFileCache_performOnWorkQueueUsingBlock___block_invoke(void *a1)
{
  v2 = a1[4];
  if (!v2[2])
  {
    [v2 _queue_loadManifestUsingStore:a1[5]];
  }

  v3 = *(a1[7] + 16);

  return v3();
}

- (void)setAccessDateTimeAdjustment:(double)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__SBFFileCache_setAccessDateTimeAdjustment___block_invoke;
  v4[3] = &unk_1E807FAC8;
  v4[4] = self;
  *&v4[5] = a3;
  dispatch_async(queue, v4);
}

double __44__SBFFileCache_setAccessDateTimeAdjustment___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 24) = result;
  return result;
}

- (void)_queue_loadManifestUsingStore:(id)a3
{
  v19 = a3;
  v4 = [v19 fileCache:self loadFileWrapperNamed:@"Manifest.plist"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 regularFileContents];
    v7 = [MEMORY[0x1E696AE40] propertyListWithData:v6 options:0 format:0 error:0];
    v8 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v10 = v7;
      v11 = [v10 objectForKey:@"version"];
      if ((objc_opt_respondsToSelector() & 1) != 0 && [v11 integerValue] == 1)
      {
        v12 = [v10 objectForKey:@"files"];
        v13 = objc_opt_self();
        v14 = objc_opt_isKindOfClass();

        if (v14)
        {
          v15 = [v12 mutableCopy];
          manifest = self->_manifest;
          self->_manifest = v15;
        }
      }
    }
  }

  if (!self->_manifest)
  {
    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v18 = self->_manifest;
    self->_manifest = v17;

    [v19 removeAllFileWrappersForFileCache:self];
  }
}

- (void)_queue_saveManifestUsingStore:(id)a3
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AE40];
  manifest = self->_manifest;
  v11[0] = @"files";
  v11[1] = @"version";
  v12[0] = manifest;
  v12[1] = &unk_1F3D3E838;
  v6 = MEMORY[0x1E695DF20];
  v7 = a3;
  v8 = [v6 dictionaryWithObjects:v12 forKeys:v11 count:2];
  v9 = [v4 dataWithPropertyList:v8 format:200 options:0 error:0];

  v10 = [objc_alloc(MEMORY[0x1E696AC38]) initRegularFileWithContents:v9];
  [v10 setFilename:@"Manifest.plist"];
  [v7 fileCache:self storeFileWrapper:v10];
}

- (void)_queue_createManifestEntryForGeneratedFileWrapper:(id)a3 filename:(id)a4 usingStore:(id)a5
{
  v18[4] = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [(SBFFileCache *)self _queue_accessDateTimeAdjustment];
  v12 = v11;
  v13 = [v10 sb_fileSize];

  v14 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:v12];
  v18[0] = v9;
  v17[0] = @"filename";
  v17[1] = @"size";
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v13];
  v18[1] = v15;
  v18[2] = v14;
  v17[2] = @"generated";
  v17[3] = @"accessed";
  v18[3] = v14;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];

  [(NSMutableArray *)self->_manifest insertObject:v16 atIndex:0];
  [(SBFFileCache *)self _queue_evictIfNeededUsingStore:v8];
  [(SBFFileCache *)self _queue_saveManifestUsingStore:v8];
}

- (void)_queue_updateManifestForLoadedFileWrapper:(id)a3 filename:(id)a4 usingStore:(id)a5
{
  v8 = a4;
  v9 = a5;
  [(SBFFileCache *)self _queue_accessDateTimeAdjustment];
  v10 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:?];
  manifest = self->_manifest;
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __78__SBFFileCache__queue_updateManifestForLoadedFileWrapper_filename_usingStore___block_invoke;
  v20 = &unk_1E807FAF0;
  v21 = v8;
  v12 = v8;
  v13 = [(NSMutableArray *)manifest indexOfObjectPassingTest:&v17];
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [SBFFileCache _queue_updateManifestForLoadedFileWrapper:a2 filename:self usingStore:&v22];
    v16 = v22;
  }

  else
  {
    v14 = v13;
    v15 = [(NSMutableArray *)self->_manifest objectAtIndex:v13, v17, v18, v19, v20, v21];
    v16 = [v15 mutableCopy];

    [v16 setObject:v10 forKey:@"accessed"];
    [(NSMutableArray *)self->_manifest removeObjectAtIndex:v14];
    [(NSMutableArray *)self->_manifest insertObject:v16 atIndex:0];
    [(SBFFileCache *)self _queue_evictIfNeededUsingStore:v9];
    [(SBFFileCache *)self _queue_saveManifestUsingStore:v9];
  }
}

uint64_t __78__SBFFileCache__queue_updateManifestForLoadedFileWrapper_filename_usingStore___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:@"filename"];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)_queue_removeManifestEntryForFilename:(id)a3 usingStore:(id)a4
{
  v6 = a3;
  v7 = a4;
  manifest = self->_manifest;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__SBFFileCache__queue_removeManifestEntryForFilename_usingStore___block_invoke;
  v11[3] = &unk_1E807FAF0;
  v9 = v6;
  v12 = v9;
  v10 = [(NSMutableArray *)manifest indexOfObjectPassingTest:v11];
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_manifest removeObjectAtIndex:v10];
    [(SBFFileCache *)self _queue_evictIfNeededUsingStore:v7];
    [(SBFFileCache *)self _queue_saveManifestUsingStore:v7];
  }
}

uint64_t __65__SBFFileCache__queue_removeManifestEntryForFilename_usingStore___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:@"filename"];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)_queue_evictIfNeededUsingStore:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v29 = a3;
  v4 = [(SBFFileCache *)self maxTotalFileCount];
  if (v4)
  {
    v5 = v4;
    v6 = [(NSMutableArray *)self->_manifest count];
    if (v6 > v5)
    {
      v7 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v5, v6 - v5}];
      [(SBFFileCache *)self _queue_evictFilesAtManifestIndexes:v7 usingStore:v29];
    }
  }

  v8 = [(SBFFileCache *)self maxTotalFileSize];
  if (v8)
  {
    v9 = v8;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v10 = self->_manifest;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (!v11)
    {
LABEL_14:

      goto LABEL_15;
    }

    v12 = 0;
    v13 = *v43;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v43 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v42 + 1) + 8 * i) objectForKey:@"size"];
        v16 = [v15 unsignedIntegerValue];

        v12 += v16;
      }

      v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v11);

    if (v12 > v9)
    {
      v17 = objc_alloc_init(MEMORY[0x1E696AD50]);
      v41[0] = 0;
      v41[1] = v41;
      v41[2] = 0x2020000000;
      v41[3] = 0;
      manifest = self->_manifest;
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __47__SBFFileCache__queue_evictIfNeededUsingStore___block_invoke;
      v36[3] = &unk_1E807FB18;
      v10 = v17;
      v37 = v10;
      v38 = v41;
      v39 = v12;
      v40 = v9;
      [(NSMutableArray *)manifest enumerateObjectsWithOptions:2 usingBlock:v36];
      [(SBFFileCache *)self _queue_evictFilesAtManifestIndexes:v10 usingStore:v29];

      _Block_object_dispose(v41, 8);
      goto LABEL_14;
    }
  }

LABEL_15:
  [(SBFFileCache *)self maxAllowedTimeSinceLastAccess];
  v20 = v19;
  if (v19 > 0.0)
  {
    v21 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v22 = self->_manifest;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __47__SBFFileCache__queue_evictIfNeededUsingStore___block_invoke_2;
    v33[3] = &unk_1E807FB40;
    v35 = v20;
    v34 = v21;
    v23 = v21;
    [(NSMutableArray *)v22 enumerateObjectsWithOptions:2 usingBlock:v33];
    [(SBFFileCache *)self _queue_evictFilesAtManifestIndexes:v23 usingStore:v29];
  }

  [(SBFFileCache *)self maxAllowedTimeSinceGeneration];
  v25 = v24;
  if (v24 > 0.0)
  {
    v26 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v27 = self->_manifest;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __47__SBFFileCache__queue_evictIfNeededUsingStore___block_invoke_3;
    v30[3] = &unk_1E807FB40;
    v32 = v25;
    v31 = v26;
    v28 = v26;
    [(NSMutableArray *)v27 enumerateObjectsWithOptions:2 usingBlock:v30];
    [(SBFFileCache *)self _queue_evictFilesAtManifestIndexes:v28 usingStore:v29];
  }
}

void __47__SBFFileCache__queue_evictIfNeededUsingStore___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a1[4];
  v8 = a2;
  [v7 addIndex:a3];
  v9 = [v8 objectForKey:@"size"];

  *(*(a1[5] + 8) + 24) += [v9 unsignedIntegerValue];
  if (*(*(a1[5] + 8) + 24) >= a1[6] - a1[7])
  {
    *a4 = 1;
  }
}

void __47__SBFFileCache__queue_evictIfNeededUsingStore___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = [a2 objectForKey:@"accessed"];
  if (v9 && ([v9 timeIntervalSinceNow], v7 = v9, v8 >= -*(a1 + 40)))
  {
    *a4 = 1;
  }

  else
  {
    [*(a1 + 32) addIndex:a3];
    v7 = v9;
  }
}

void __47__SBFFileCache__queue_evictIfNeededUsingStore___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = [a2 objectForKey:@"generated"];
  if (v9 && ([v9 timeIntervalSinceNow], v7 = v9, v8 >= -*(a1 + 40)))
  {
    *a4 = 1;
  }

  else
  {
    [*(a1 + 32) addIndex:a3];
    v7 = v9;
  }
}

- (void)_queue_evictFilesAtManifestIndexes:(id)a3 usingStore:(id)a4
{
  v6 = a4;
  manifest = self->_manifest;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __62__SBFFileCache__queue_evictFilesAtManifestIndexes_usingStore___block_invoke;
  v13 = &unk_1E807FB68;
  v14 = self;
  v15 = v6;
  v8 = v6;
  v9 = a3;
  [(NSMutableArray *)manifest enumerateObjectsAtIndexes:v9 options:0 usingBlock:&v10];
  [(NSMutableArray *)self->_manifest removeObjectsAtIndexes:v9, v10, v11, v12, v13, v14];
}

- (void)_queue_evictFileWithInfo:(id)a3 usingStore:(id)a4
{
  v6 = a4;
  v8 = [a3 objectForKey:@"filename"];
  [v6 fileCache:self removeFileWrapperNamed:v8];

  v7 = [(SBFFileCache *)self delegate];
  [v7 fileCacheDidEvictFile:self];
}

- (void)_queue_resetManifestUsingStore:(id)a3
{
  manifest = self->_manifest;
  v5 = a3;
  [(NSMutableArray *)manifest removeAllObjects];
  [(SBFFileCache *)self _queue_saveManifestUsingStore:v5];
}

- (SBFFileCacheDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (uint64_t)_queue_updateManifestForLoadedFileWrapper:(uint64_t)a1 filename:(uint64_t)a2 usingStore:(void *)a3 .cold.1(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  *a3 = v6;
  return [v6 handleFailureInMethod:a1 object:a2 file:@"SBFFileCache.m" lineNumber:222 description:@"Should not call this method for a newly-created file!"];
}

@end