@interface OKDocumentsManager
+ (id)defaultManager;
- (BOOL)deleteFileURL:(id)l error:(id *)error;
- (OKDocumentsManager)init;
- (id)documentURLs:(id *)ls;
- (id)documentURLsAtDirectoryURL:(id)l error:(id *)error;
- (id)duplicateFileURL:(id)l error:(id *)error;
- (id)importFileURL:(id)l error:(id *)error;
- (id)importFileURL:(id)l toDirectoryURL:(id)rL copy:(BOOL)copy error:(id *)error;
- (id)localDocumentsDirectoryURL;
- (id)renameFileURL:(id)l toFileName:(id)name error:(id *)error;
- (id)uniqueFileURLForFileName:(id)name error:(id *)error;
- (id)uniqueFileURLForFileName:(id)name inDirectoryURL:(id)l error:(id *)error;
- (void)_performAsynchronousFileAccessUsingBlock:(id)block;
- (void)dealloc;
@end

@implementation OKDocumentsManager

+ (id)defaultManager
{
  if (defaultManager_onceToken != -1)
  {
    +[OKDocumentsManager defaultManager];
  }

  return defaultManager_defaultManager;
}

OKDocumentsManager *__36__OKDocumentsManager_defaultManager__block_invoke()
{
  result = objc_alloc_init(OKDocumentsManager);
  defaultManager_defaultManager = result;
  return result;
}

- (OKDocumentsManager)init
{
  v6.receiver = self;
  v6.super_class = OKDocumentsManager;
  v2 = [(OKDocumentsManager *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("OKDocumentsManager Files Access Queue", 0);
    v2->_documentsAccessQueue = v3;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_set_target_queue(v3, global_queue);
  }

  return v2;
}

- (void)dealloc
{
  documentsAccessQueue = self->_documentsAccessQueue;
  if (documentsAccessQueue)
  {
    dispatch_release(documentsAccessQueue);
    self->_documentsAccessQueue = 0;
  }

  v4.receiver = self;
  v4.super_class = OKDocumentsManager;
  [(OKDocumentsManager *)&v4 dealloc];
}

- (void)_performAsynchronousFileAccessUsingBlock:(id)block
{
  if (block)
  {
    documentsAccessQueue = self->_documentsAccessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__OKDocumentsManager__performAsynchronousFileAccessUsingBlock___block_invoke;
    block[3] = &unk_279C8E670;
    block[4] = self;
    block[5] = block;
    dispatch_async(documentsAccessQueue, block);
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Must pass a non-nil block to %@", NSStringFromSelector(a2)}];
  }
}

- (id)localDocumentsDirectoryURL
{
  if (localDocumentsDirectoryURL_onceToken != -1)
  {
    [OKDocumentsManager localDocumentsDirectoryURL];
  }

  return localDocumentsDirectoryURL_localDocumentsDirectoryURL;
}

id __48__OKDocumentsManager_localDocumentsDirectoryURL__block_invoke()
{
  result = [MEMORY[0x277CBEBC0] fileURLWithPath:{-[NSArray lastObject](NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1), "lastObject")}];
  localDocumentsDirectoryURL_localDocumentsDirectoryURL = result;
  return result;
}

- (id)documentURLs:(id *)ls
{
  documentsDirectoryURL = [(OKDocumentsManager *)self documentsDirectoryURL];

  return [(OKDocumentsManager *)self documentURLsAtDirectoryURL:documentsDirectoryURL error:ls];
}

- (id)documentURLsAtDirectoryURL:(id)l error:(id *)error
{
  v7 = pthread_main_np();
  v8 = MEMORY[0x277D62808];
  if (v7 && *MEMORY[0x277D62808] >= 5)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:5 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Document/OKDocumentsManager.m" line:132 andFormat:@"%@ MUST not be called from the main thread", NSStringFromSelector(a2)];
  }

  array = [MEMORY[0x277CBEB18] array];
  v10 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:0];
  v12[4] = array;
  v13 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__OKDocumentsManager_documentURLsAtDirectoryURL_error___block_invoke;
  v12[3] = &unk_279C8E698;
  [v10 coordinateReadingItemAtURL:l options:1 error:&v13 byAccessor:v12];

  if (v13)
  {
    if (*v8 >= 4)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Document/OKDocumentsManager.m" line:170 andFormat:@"An error occured listing documents in %@: %@", l, objc_msgSend(v13, "localizedDescription")];
    }

    array = 0;
    if (error)
    {
      *error = v13;
    }
  }

  return array;
}

void __55__OKDocumentsManager_documentURLsAtDirectoryURL_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v5 = *MEMORY[0x277CBE8E8];
  v6 = *MEMORY[0x277CBE868];
  v13 = v4;
  v7 = [v4 enumeratorAtURL:a2 includingPropertiesForKeys:objc_msgSend(MEMORY[0x277CBEA60] options:"arrayWithObjects:" errorHandler:{*MEMORY[0x277CBE8E8], *MEMORY[0x277CBE868], 0), 5, 0}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        v15 = 0;
        [v12 getResourceValue:&v15 forKey:v6 error:0];
        if ([v15 BOOLValue])
        {
          v14 = 0;
          [v12 getResourceValue:&v14 forKey:v5 error:0];
          if ([objc_msgSend(v14 "pathExtension")])
          {
            [*(a1 + 32) addObject:{objc_msgSend(v12, "standardizedURL")}];
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }
}

- (id)uniqueFileURLForFileName:(id)name inDirectoryURL:(id)l error:(id *)error
{
  v9 = pthread_main_np();
  v10 = MEMORY[0x277D62808];
  if (v9 && *MEMORY[0x277D62808] >= 5)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:5 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Document/OKDocumentsManager.m" line:193 andFormat:@"%@ MUST not be called from the main thread", NSStringFromSelector(a2)];
  }

  v11 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:0];
  v23 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3052000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __68__OKDocumentsManager_uniqueFileURLForFileName_inDirectoryURL_error___block_invoke;
  v16[3] = &unk_279C8E6C0;
  v16[4] = name;
  v16[5] = &v17;
  [v11 coordinateReadingItemAtURL:l options:1 error:&v23 byAccessor:v16];

  v12 = v18[5];
  if (v23)
  {
    if (v12)
    {

      v18[5] = 0;
    }

    if (*v10 >= 4)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Document/OKDocumentsManager.m" line:215 andFormat:@"An error occured finding unique document URL for %@: %@", name, objc_msgSend(v23, "localizedDescription")];
    }

    v13 = 0;
    if (error)
    {
      *error = v23;
    }
  }

  else
  {
    v13 = [l URLByAppendingPathComponent:v12 isDirectory:0];
    v14 = v18[5];
    if (v14)
    {

      v18[5] = 0;
    }
  }

  _Block_object_dispose(&v17, 8);
  return v13;
}

void __68__OKDocumentsManager_uniqueFileURLForFileName_inDirectoryURL_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(MEMORY[0x277CCAA00]);
  *(*(*(a1 + 40) + 8) + 40) = [objc_msgSend(v4 incrementalURLInDirectory:a2 withFilename:objc_msgSend(*(a1 + 32) andExtension:{"stringByDeletingPathExtension"), objc_msgSend(*(a1 + 32), "pathExtension")), "lastPathComponent"}];
}

- (id)uniqueFileURLForFileName:(id)name error:(id *)error
{
  documentsDirectoryURL = [(OKDocumentsManager *)self documentsDirectoryURL];

  return [(OKDocumentsManager *)self uniqueFileURLForFileName:name inDirectoryURL:documentsDirectoryURL error:error];
}

- (id)importFileURL:(id)l error:(id *)error
{
  documentsDirectoryURL = [(OKDocumentsManager *)self documentsDirectoryURL];

  return [(OKDocumentsManager *)self importFileURL:l toDirectoryURL:documentsDirectoryURL copy:1 error:error];
}

- (id)importFileURL:(id)l toDirectoryURL:(id)rL copy:(BOOL)copy error:(id *)error
{
  v11 = pthread_main_np();
  v12 = MEMORY[0x277D62808];
  if (v11 && *MEMORY[0x277D62808] >= 5)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:5 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Document/OKDocumentsManager.m" line:251 andFormat:@"%@ MUST not be called from the main thread", NSStringFromSelector(a2)];
  }

  v13 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:0];
  v35 = 0;
  v36 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3052000000;
  v33 = __Block_byref_object_copy_;
  v34 = __Block_byref_object_dispose_;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 1;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3052000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __62__OKDocumentsManager_importFileURL_toDirectoryURL_copy_error___block_invoke;
  v18[3] = &unk_279C8E6E8;
  v18[4] = l;
  v18[5] = &v20;
  copyCopy = copy;
  v18[6] = &v26;
  v18[7] = &v30;
  [v13 coordinateReadingItemAtURL:l options:0 writingItemAtURL:rL options:8 error:&v36 byAccessor:v18];

  v14 = v36;
  if (!*(v27 + 24) || v36 || v31[5])
  {
    v15 = v21[5];
    if (v15)
    {

      v21[5] = 0;
      v14 = v36;
    }

    if (!v14)
    {
      v14 = v31[5];
      if (!v14)
      {
        v14 = [OKError errorForCode:-1];
      }
    }

    if (*v12 >= 4)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Document/OKDocumentsManager.m" line:287 andFormat:@"Couldn't import file %@ to %@: %@", l, v21[5], objc_msgSend(v14, "localizedDescription")];
    }

    v16 = 0;
    if (error)
    {
      *error = v14;
    }
  }

  else
  {
    if (*v12 >= 5)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:5 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Document/OKDocumentsManager.m" line:301 andFormat:@"Imported document %@ to %@", l, v21[5]];
    }

    v16 = v21[5];
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);
  return v16;
}

void __62__OKDocumentsManager_importFileURL_toDirectoryURL_copy_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v6 = [*(a1 + 32) lastPathComponent];
  *(*(*(a1 + 40) + 8) + 40) = [v10 incrementalURLInDirectory:a3 withFilename:objc_msgSend(v6 andExtension:{"stringByDeletingPathExtension"), objc_msgSend(v6, "pathExtension")}];
  v7 = *(*(*(a1 + 40) + 8) + 40);
  v8 = *(*(a1 + 56) + 8) + 40;
  if (*(a1 + 64) == 1)
  {
    v9 = [v10 copyItemAtURL:a2 toURL:v7 error:v8];
  }

  else
  {
    v9 = [v10 moveItemAtURL:a2 toURL:v7 error:v8];
  }

  *(*(*(a1 + 48) + 8) + 24) = v9;
}

- (id)duplicateFileURL:(id)l error:(id *)error
{
  uRLByDeletingLastPathComponent = [l URLByDeletingLastPathComponent];

  return [(OKDocumentsManager *)self importFileURL:l toDirectoryURL:uRLByDeletingLastPathComponent copy:1 error:error];
}

- (id)renameFileURL:(id)l toFileName:(id)name error:(id *)error
{
  v9 = pthread_main_np();
  v10 = MEMORY[0x277D62808];
  if (v9 && *MEMORY[0x277D62808] >= 5)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:5 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Document/OKDocumentsManager.m" line:320 andFormat:@"%@ MUST not be called from the main thread", NSStringFromSelector(a2)];
  }

  v11 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:0];
  v35 = 0;
  v36 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3052000000;
  v33 = __Block_byref_object_copy_;
  v34 = __Block_byref_object_dispose_;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 1;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3052000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  uRLByDeletingLastPathComponent = [l URLByDeletingLastPathComponent];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __53__OKDocumentsManager_renameFileURL_toFileName_error___block_invoke;
  v19[3] = &unk_279C8E710;
  v19[4] = name;
  v19[5] = &v20;
  v19[6] = &v26;
  v19[7] = &v30;
  [v11 coordinateWritingItemAtURL:l options:2 writingItemAtURL:uRLByDeletingLastPathComponent options:0 error:&v36 byAccessor:v19];

  v13 = v36;
  if (!*(v27 + 24) || v36 || v31[5])
  {
    v14 = v21[5];
    if (v14)
    {

      v21[5] = 0;
      v13 = v36;
    }

    if (!v13)
    {
      v13 = v31[5];
      if (!v13)
      {
        v13 = [OKError errorForCode:-1];
      }
    }

    if (*v10 >= 4)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Document/OKDocumentsManager.m" line:347 andFormat:@"Couldn't rename file %@ to %@: %@", l, name, objc_msgSend(v13, "localizedDescription")];
    }

    v15 = 0;
    if (error)
    {
      *error = v13;
    }
  }

  else
  {
    if (*v10 >= 5)
    {
      v16 = MEMORY[0x277D627B8];
      lastPathComponent = [l lastPathComponent];
      [v16 logMessageWithLevel:5 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Document/OKDocumentsManager.m" line:361 andFormat:@"Renamed document %@ to %@", lastPathComponent, objc_msgSend(v21[5], "lastPathComponent")];
    }

    v15 = v21[5];
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);
  return v15;
}

void __53__OKDocumentsManager_renameFileURL_toFileName_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_alloc_init(MEMORY[0x277CCAA00]);
  *(*(*(a1 + 40) + 8) + 40) = [v6 incrementalURLInDirectory:a3 withFilename:objc_msgSend(*(a1 + 32) andExtension:{"stringByDeletingPathExtension"), objc_msgSend(*(a1 + 32), "pathExtension")}];
  *(*(*(a1 + 48) + 8) + 24) = [v6 moveItemAtURL:a2 toURL:*(*(*(a1 + 40) + 8) + 40) error:*(*(a1 + 56) + 8) + 40];
}

- (BOOL)deleteFileURL:(id)l error:(id *)error
{
  v7 = pthread_main_np();
  v8 = MEMORY[0x277D62808];
  if (v7 && *MEMORY[0x277D62808] >= 5)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:5 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Document/OKDocumentsManager.m" line:370 andFormat:@"%@ MUST not be called from the main thread", NSStringFromSelector(a2)];
  }

  v9 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:0];
  v24 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3052000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __42__OKDocumentsManager_deleteFileURL_error___block_invoke;
  v13[3] = &unk_279C8E738;
  v13[4] = &v14;
  v13[5] = &v18;
  [v9 coordinateWritingItemAtURL:l options:1 error:&v24 byAccessor:v13];

  v10 = v24;
  if (!*(v15 + 24) || v24)
  {
    if (!v24)
    {
      v10 = v19[5];
      if (!v10)
      {
        v10 = [OKError errorForCode:-1];
      }
    }
  }

  else
  {
    v10 = v19[5];
    if (!v10)
    {
      if (*v8 >= 5)
      {
        [MEMORY[0x277D627B8] logMessageWithLevel:5 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Document/OKDocumentsManager.m" line:406 andFormat:@"Deleted document %@", l];
      }

      v11 = 1;
      goto LABEL_17;
    }
  }

  if (*v8 >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Document/OKDocumentsManager.m" line:392 andFormat:@"Couldn't delete file %@: %@", l, objc_msgSend(v10, "localizedDescription")];
  }

  v11 = 0;
  if (error)
  {
    *error = v10;
  }

LABEL_17:
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
  return v11;
}

void __42__OKDocumentsManager_deleteFileURL_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(MEMORY[0x277CCAA00]);
  *(*(*(a1 + 32) + 8) + 24) = [v4 removeItemAtURL:a2 error:*(*(a1 + 40) + 8) + 40];
}

@end