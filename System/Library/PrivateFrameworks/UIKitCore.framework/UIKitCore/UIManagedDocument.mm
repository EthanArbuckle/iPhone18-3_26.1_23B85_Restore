@interface UIManagedDocument
+ (void)initialize;
- (BOOL)_writeMetadataToDocumentURL:(id)a3;
- (BOOL)configurePersistentStoreCoordinatorForURL:(NSURL *)storeURL ofType:(NSString *)fileType modelConfiguration:(NSString *)configuration storeOptions:(NSDictionary *)storeOptions error:(NSError *)error;
- (BOOL)readFromURL:(id)a3 error:(id *)a4;
- (BOOL)writeContents:(id)a3 andAttributes:(id)a4 safelyToURL:(id)a5 forSaveOperation:(int64_t)a6 error:(id *)a7;
- (BOOL)writeContents:(id)a3 toURL:(id)a4 forSaveOperation:(int64_t)a5 originalContentsURL:(id)a6 error:(id *)a7;
- (NSManagedObjectModel)managedObjectModel;
- (UIManagedDocument)initWithFileURL:(id)a3;
- (id)_readMetadataFromDocumentURL:(id)a3;
- (id)contentsForType:(id)a3 error:(id *)a4;
- (void)_handleRelocatingStoreContentDirectoryFromNonSyncedURL:(id)a3 toSyncedURL:(id)a4;
- (void)_handleRelocatingStoreContentDirectoryFromSyncedURL:(id)a3 toNonSyncedURL:(id)a4;
- (void)dealloc;
- (void)revertToContentsOfURL:(id)a3 completionHandler:(id)a4;
@end

@implementation UIManagedDocument

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    _MergedGlobals_1_8 = dlopen([@"/System/Library/Frameworks/CoreData.framework/CoreData" UTF8String], 1);
    if (_MergedGlobals_1_8 || (v4 = dlerror(), NSLog(&cfstr_Uimanageddocum.isa, @"/System/Library/Frameworks/CoreData.framework/CoreData", v4), _MergedGlobals_1_8) || ([objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")], _MergedGlobals_1_8))
    {
      qword_1ED499268 = objc_getClass("NSIncrementalStore");
      qword_1ED499270 = objc_getClass("NSManagedObjectContext");
      qword_1ED499278 = objc_getClass("NSManagedObjectModel");
      qword_1ED499280 = objc_getClass("NSPersistentStoreCoordinator");
      if (!qword_1ED499268)
      {
        [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
      }

      if (!qword_1ED499270)
      {
        [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
      }

      if (!qword_1ED499278)
      {
        [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
      }

      if (!qword_1ED499280)
      {
        v5 = [MEMORY[0x1E696AAA8] currentHandler];

        [v5 handleFailureInMethod:a2 object:a1 file:@"UIManagedDocument.m" lineNumber:97 description:@"Failed to load class NSPersistentStoreCoordinator"];
      }
    }
  }
}

- (UIManagedDocument)initWithFileURL:(id)a3
{
  v12.receiver = self;
  v12.super_class = UIManagedDocument;
  v3 = [(UIDocument *)&v12 initWithFileURL:a3];
  if (v3)
  {
    v3->_persistentStoreCoordinator = [[qword_1ED499280 alloc] initWithManagedObjectModel:{-[UIManagedDocument managedObjectModel](v3, "managedObjectModel")}];
    v4 = [[qword_1ED499270 alloc] initWithConcurrencyType:1];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __37__UIManagedDocument_initWithFileURL___block_invoke;
    v11[3] = &unk_1E7101E78;
    v11[4] = v4;
    v11[5] = v3;
    [v4 performBlockAndWait:v11];
    v5 = [[qword_1ED499270 alloc] initWithConcurrencyType:2];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __37__UIManagedDocument_initWithFileURL___block_invoke_2;
    v10[3] = &unk_1E7105CC8;
    v10[4] = v5;
    v10[5] = v4;
    v10[6] = v3;
    [(NSManagedObjectContext *)v5 performBlockAndWait:v10];
    v3->_managedObjectContext = v5;
    v6 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v6, sel_writeAdditionalContent_toURL_originalContentsURL_error_);
    v8 = objc_opt_class();
    if (MethodImplementation != class_getMethodImplementation(v8, sel_writeAdditionalContent_toURL_originalContentsURL_error_))
    {
      *&v3->_mdocFlags |= 1u;
    }
  }

  return v3;
}

void __37__UIManagedDocument_initWithFileURL___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setParentContext:*(a1 + 40)];
  [*(a1 + 32) setUndoManager:{objc_msgSend(*(a1 + 48), "undoManager")}];
  v2 = *(a1 + 40);
}

- (void)dealloc
{
  managedObjectContext = self->_managedObjectContext;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __28__UIManagedDocument_dealloc__block_invoke;
  v5[3] = &unk_1E70F5CA0;
  v5[4] = managedObjectContext;
  [(NSManagedObjectContext *)managedObjectContext performBlock:v5];
  self->_managedObjectContext = 0;

  self->_managedObjectModel = 0;
  self->_persistentStoreCoordinator = 0;

  self->_documentMetadata = 0;
  self->persistentStoreOptions = 0;

  self->modelConfiguration = 0;
  v4.receiver = self;
  v4.super_class = UIManagedDocument;
  [(UIDocument *)&v4 dealloc];
}

- (NSManagedObjectModel)managedObjectModel
{
  result = self->_managedObjectModel;
  if (!result)
  {
    result = [qword_1ED499278 mergedModelFromBundles:0];
    self->_managedObjectModel = result;
  }

  return result;
}

- (BOOL)configurePersistentStoreCoordinatorForURL:(NSURL *)storeURL ofType:(NSString *)fileType modelConfiguration:(NSString *)configuration storeOptions:(NSDictionary *)storeOptions error:(NSError *)error
{
  v12 = [(UIManagedDocument *)self persistentStoreTypeForFileType:fileType];
  if (storeOptions)
  {
    v13 = [(NSDictionary *)storeOptions mutableCopy];
    [v13 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", 1), @"NSPersistentStoreRemoveStoreOnCleanupKey"}];
  }

  else
  {
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", 1), @"NSPersistentStoreRemoveStoreOnCleanupKey", 0}];
  }

  [(NSPersistentStoreCoordinator *)self->_persistentStoreCoordinator lock];
  v14 = [(NSPersistentStoreCoordinator *)self->_persistentStoreCoordinator addPersistentStoreWithType:v12 configuration:configuration URL:storeURL options:v13 error:error]!= 0;
  [(NSPersistentStoreCoordinator *)self->_persistentStoreCoordinator unlock];
  return v14;
}

- (void)_handleRelocatingStoreContentDirectoryFromNonSyncedURL:(id)a3 toSyncedURL:(id)a4
{
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v15 = 1;
  if ([v7 fileExistsAtPath:objc_msgSend(a3 isDirectory:{"path"), &v15}])
  {
    if ((v15 & 1) == 0)
    {
      [objc_msgSend(MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Invalid store content path is file" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", a3, @"path", "raise"}];
    }

    v14 = 0;
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v8 = [objc_alloc(MEMORY[0x1E696ABF8]) initWithFilePresenter:self];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __88__UIManagedDocument__handleRelocatingStoreContentDirectoryFromNonSyncedURL_toSyncedURL___block_invoke;
    v9[3] = &unk_1E7105CF0;
    v9[4] = v7;
    v9[5] = &v10;
    [v8 coordinateWritingItemAtURL:a3 options:2 writingItemAtURL:a4 options:8 error:&v14 byAccessor:v9];
    if ((v11[3] & 1) == 0)
    {
      NSLog(&cfstr_FailedToCoordi.isa, v14);
    }

    _Block_object_dispose(&v10, 8);
  }
}

void __88__UIManagedDocument__handleRelocatingStoreContentDirectoryFromNonSyncedURL_toSyncedURL___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v6 = 0;
  if ([*(a1 + 32) fileExistsAtPath:objc_msgSend(a3 isDirectory:{"path"), 0}])
  {
    NSLog(&cfstr_FailedToMoveSt_0.isa, a2, a3);
  }

  else if (([*(a1 + 32) moveItemAtURL:a2 toURL:a3 error:&v6] & 1) == 0)
  {
    NSLog(&cfstr_FailedToMoveSt.isa, a2, a3, v6);
  }
}

- (void)_handleRelocatingStoreContentDirectoryFromSyncedURL:(id)a3 toNonSyncedURL:(id)a4
{
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v20 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = [objc_alloc(MEMORY[0x1E696ABF8]) initWithFilePresenter:self];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __88__UIManagedDocument__handleRelocatingStoreContentDirectoryFromSyncedURL_toNonSyncedURL___block_invoke;
  v11[3] = &unk_1E7105D18;
  v11[7] = &v16;
  v11[8] = &v12;
  v11[4] = v7;
  v11[5] = v8;
  v11[6] = a4;
  [v8 coordinateReadingItemAtURL:a3 options:0 error:&v20 byAccessor:v11];
  if (v17[3])
  {
    if (v13[3])
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __88__UIManagedDocument__handleRelocatingStoreContentDirectoryFromSyncedURL_toNonSyncedURL___block_invoke_2;
      v9[3] = &unk_1E7105CF0;
      v9[5] = &v16;
      v10 = 0;
      v9[4] = v7;
      [v8 coordinateWritingItemAtURL:a3 options:2 writingItemAtURL:a4 options:8 error:&v10 byAccessor:v9];
      if ((v17[3] & 1) == 0)
      {
        NSLog(&cfstr_FailedToCoordi.isa, v10);
      }
    }

    else
    {
    }
  }

  else
  {
    NSLog(&cfstr_FailedToCoordi.isa, v20);
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
}

uint64_t __88__UIManagedDocument__handleRelocatingStoreContentDirectoryFromSyncedURL_toNonSyncedURL___block_invoke(uint64_t a1, void *a2)
{
  *(*(*(a1 + 56) + 8) + 24) = 1;
  v6 = 1;
  result = [*(a1 + 32) fileExistsAtPath:objc_msgSend(a2 isDirectory:{"path"), &v6}];
  if (result)
  {
    v4 = v6;
    *(*(*(a1 + 64) + 8) + 24) = v6;
    if ((v4 & 1) == 0)
    {
      v5 = *(a1 + 40);
      return [objc_msgSend(MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Invalid store content path is file" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", *(a1 + 48), @"path", "raise"}];
    }
  }

  return result;
}

void __88__UIManagedDocument__handleRelocatingStoreContentDirectoryFromSyncedURL_toNonSyncedURL___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v6 = 0;
  if ([*(a1 + 32) fileExistsAtPath:objc_msgSend(a3 isDirectory:{"path"), 0}])
  {
    NSLog(&cfstr_FailedToMoveSt_0.isa, a2, a3);
  }

  else if (([*(a1 + 32) moveItemAtURL:a2 toURL:a3 error:&v6] & 1) == 0)
  {
    NSLog(&cfstr_FailedToMoveSt.isa, a2, a3, v6);
  }
}

- (id)_readMetadataFromDocumentURL:(id)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3052000000;
  v17 = __Block_byref_object_copy__67;
  v18 = __Block_byref_object_dispose__67;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v4 = [objc_alloc(MEMORY[0x1E696ABF8]) initWithFilePresenter:self];
  v9 = 0;
  v5 = [a3 URLByAppendingPathComponent:@"DocumentMetadata.plist"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__UIManagedDocument__readMetadataFromDocumentURL___block_invoke;
  v8[3] = &unk_1E7105D40;
  v8[4] = &v10;
  v8[5] = &v14;
  [v4 coordinateReadingItemAtURL:v5 options:0 error:&v9 byAccessor:v8];
  if ((v11[3] & 1) == 0)
  {
    NSLog(&cfstr_FailedToCoordi_0.isa, v5, v9);
  }

  v6 = v15[5];
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
  return v6;
}

uint64_t __50__UIManagedDocument__readMetadataFromDocumentURL___block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 24) = 1;
  result = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfURL:a2];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (BOOL)_writeMetadataToDocumentURL:(id)a3
{
  v5 = [(NSDictionary *)[(UIManagedDocument *)self persistentStoreOptions] objectForKey:@"NSPersistentStoreUbiquitousContentNameKey"];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  if (v5)
  {
    v6 = v5;
    documentMetadata = self->_documentMetadata;
    if (documentMetadata)
    {
      v8 = [(NSDictionary *)self->_documentMetadata mutableCopy];
      [v8 setObject:v6 forKey:@"NSPersistentStoreUbiquitousContentNameKey"];
      self->_documentMetadata = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v8];
    }

    else
    {
      self->_documentMetadata = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v5, @"NSPersistentStoreUbiquitousContentNameKey", 0}];
    }

    v18 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v10 = [objc_alloc(MEMORY[0x1E696ABF8]) initWithFilePresenter:self];
    v11 = [a3 URLByAppendingPathComponent:@"DocumentMetadata.plist"];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __49__UIManagedDocument__writeMetadataToDocumentURL___block_invoke;
    v13[3] = &unk_1E7105D68;
    v13[5] = &v14;
    v13[6] = &v19;
    v13[4] = self;
    [v10 coordinateWritingItemAtURL:v11 options:8 error:&v18 byAccessor:v13];
    if ((v15[3] & 1) == 0)
    {
      NSLog(&cfstr_FailedToCoordi_1.isa, v11, v18);
    }

    _Block_object_dispose(&v14, 8);
    v9 = *(v20 + 24);
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v19, 8);
  return v9 & 1;
}

uint64_t __49__UIManagedDocument__writeMetadataToDocumentURL___block_invoke(void *a1, uint64_t a2)
{
  *(*(a1[5] + 8) + 24) = 1;
  result = [*(a1[4] + 224) writeToURL:a2 atomically:0];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (BOOL)readFromURL:(id)a3 error:(id *)a4
{
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v77 = 0;
  if (![a3 isFileURL])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"you must override %@ to support reading of non-file URLs", NSStringFromSelector(sel_readFromURL_error_)}];
    goto LABEL_12;
  }

  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v73 = 1;
  if ([v7 fileExistsAtPath:objc_msgSend(a3 isDirectory:{"path"), &v73}])
  {
    if (v73)
    {
      v8 = [a3 URLByAppendingPathComponent:@"StoreContent"];
      v35 = [a3 URLByAppendingPathComponent:@"StoreContent.nosync"];
      v9 = [objc_opt_class() isPersistentStoreSynchronizedViaUbiquitousContentWithOptions:{-[UIManagedDocument persistentStoreOptions](self, "persistentStoreOptions")}];
      v10 = v9;
      if (v9)
      {
        v11 = v35;
      }

      else
      {
        v11 = v8;
      }

      v36 = [v11 URLByAppendingPathComponent:{objc_msgSend(objc_opt_class(), "persistentStoreName")}];
      [(NSPersistentStoreCoordinator *)self->_persistentStoreCoordinator lock];
      v33 = [(NSPersistentStoreCoordinator *)self->_persistentStoreCoordinator persistentStoreForURL:v36];
      [(NSPersistentStoreCoordinator *)self->_persistentStoreCoordinator unlock];
      if (v33)
      {
        *(v75 + 24) = 1;
      }

      v34 = [objc_alloc(MEMORY[0x1E696ABF8]) initWithFilePresenter:self];
      if (v75[3])
      {
        v12 = 1;
LABEL_43:
        v67 = 0;
        v68 = &v67;
        v69 = 0x3052000000;
        v70 = __Block_byref_object_copy__67;
        v71 = __Block_byref_object_dispose__67;
        v72 = 0;
        v26 = [(UIManagedDocument *)self managedObjectContext];
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __39__UIManagedDocument_readFromURL_error___block_invoke_5;
        v40[3] = &unk_1E7105E30;
        v40[4] = v26;
        v40[5] = &v67;
        [(NSManagedObjectContext *)v26 performBlockAndWait:v40];
        [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v68[5], @"parentContext", 0}];
        v39.receiver = self;
        v39.super_class = UIManagedDocument;
        v27 = [(UIDocument *)&v39 _fileOpeningQueue];
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __39__UIManagedDocument_readFromURL_error___block_invoke_6;
        v38[3] = &unk_1E7105E80;
        if (v27)
        {
          v28 = v27;
        }

        else
        {
          v28 = MEMORY[0x1E69E96A0];
        }

        v38[4] = a3;
        v38[5] = self;
        v38[6] = v34;
        v38[7] = &v74;
        v38[8] = a4;
        [(UIDocument *)self _performBlock:v38 synchronouslyOnQueue:v28];

        if (((*(v75 + 24) | v12) & 1) == 0)
        {
          v29 = [(UIManagedDocument *)self managedObjectContext];
          v37[0] = MEMORY[0x1E69E9820];
          v37[1] = 3221225472;
          v37[2] = __39__UIManagedDocument_readFromURL_error___block_invoke_8;
          v37[3] = &unk_1E70F5CA0;
          v37[4] = v29;
          [(NSManagedObjectContext *)v29 performBlockAndWait:v37];
          [(NSPersistentStoreCoordinator *)self->_persistentStoreCoordinator lock];
          v55 = 0;
          if ([(NSPersistentStoreCoordinator *)self->_persistentStoreCoordinator persistentStoreForURL:v36]&& ![(NSPersistentStoreCoordinator *)self->_persistentStoreCoordinator removePersistentStore:v33 error:&v55])
          {
            NSLog(&cfstr_ErrorDuringSto.isa, v55);
          }

          [(NSPersistentStoreCoordinator *)self->_persistentStoreCoordinator unlock];
        }

        _Block_object_dispose(&v67, 8);
        goto LABEL_12;
      }

      v32 = [(UIDocument *)self fileType];
      v31 = [(UIManagedDocument *)self persistentStoreOptions];
      v30 = [(UIManagedDocument *)self modelConfiguration];
      v67 = 0;
      v68 = &v67;
      v69 = 0x3052000000;
      v70 = __Block_byref_object_copy__67;
      v71 = __Block_byref_object_dispose__67;
      v72 = 0;
      v63 = 0;
      v64 = &v63;
      v65 = 0x2020000000;
      v66 = 0;
      v15 = [(UIManagedDocument *)self _readMetadataFromDocumentURL:a3];
      v16 = v15;
      if (v15)
      {
        documentMetadata = self->_documentMetadata;
        if (documentMetadata)
        {
          v18 = [(NSDictionary *)self->_documentMetadata mutableCopy];
          [v18 addEntriesFromDictionary:v16];
          self->_documentMetadata = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v18];
        }

        else
        {
          self->_documentMetadata = v15;
        }

        v19 = [(NSDictionary *)[(UIManagedDocument *)self persistentStoreOptions] objectForKey:@"NSPersistentStoreUbiquitousContentNameKey"];
        v20 = [(NSDictionary *)self->_documentMetadata objectForKey:@"NSPersistentStoreUbiquitousContentNameKey"];
        if (!v19 || (v21 = v20, ([v19 isEqualToString:v20] & 1) != 0))
        {
LABEL_27:
          if ((v10 & 1) == 0)
          {
            [(UIManagedDocument *)self _handleRelocatingStoreContentDirectoryFromNonSyncedURL:v35 toSyncedURL:v8];
            v62[0] = MEMORY[0x1E69E9820];
            v62[1] = 3221225472;
            v62[2] = __39__UIManagedDocument_readFromURL_error___block_invoke;
            v62[3] = &unk_1E7105D90;
            v62[4] = v7;
            v62[5] = self;
            v62[6] = v32;
            v62[7] = v30;
            v62[9] = &v63;
            v62[8] = v31;
            v62[10] = &v74;
            v62[11] = a4;
            [v34 coordinateReadingItemAtURL:v36 options:0 error:a4 byAccessor:v62];
LABEL_41:
            v25 = *(v75 + 24);
            _Block_object_dispose(&v63, 8);
            _Block_object_dispose(&v67, 8);
            if (v75[3])
            {
              v12 = v25 ^ 1;
              goto LABEL_43;
            }

LABEL_12:
            v13 = *(v75 + 24);
            goto LABEL_18;
          }

          [(UIManagedDocument *)self _handleRelocatingStoreContentDirectoryFromSyncedURL:v8 toNonSyncedURL:v35];
          v61 = 0;
          v55 = 0;
          v56 = &v55;
          v57 = 0x3052000000;
          v58 = __Block_byref_object_copy__67;
          v59 = __Block_byref_object_dispose__67;
          v60 = 0;
          v51 = 0;
          v52 = &v51;
          v53 = 0x2020000000;
          v54 = 0;
          v49[0] = 0;
          v49[1] = v49;
          v49[2] = 0x2020000000;
          v50 = 0;
          v45 = 0;
          v46 = &v45;
          v47 = 0x2020000000;
          v48 = 0;
          v41 = 0;
          v42 = &v41;
          v43 = 0x2020000000;
          v44 = 0;
          v40[21] = MEMORY[0x1E69E9820];
          v40[22] = 3221225472;
          v40[23] = __39__UIManagedDocument_readFromURL_error___block_invoke_2;
          v40[24] = &unk_1E7105DE0;
          v40[33] = &v63;
          v40[34] = v49;
          v40[25] = v7;
          v40[26] = v35;
          v40[27] = v34;
          v40[28] = v36;
          v40[35] = &v67;
          v40[36] = &v74;
          v40[29] = self;
          v40[30] = v32;
          v40[31] = v30;
          v40[32] = v31;
          v40[37] = &v55;
          v40[38] = &v45;
          [v34 coordinateReadingItemAtURL:? options:? error:? byAccessor:?];
          if (v75[3] & 1) != 0 || ((v46[3] & 1) == 0 ? (v40[6] = MEMORY[0x1E69E9820], v40[7] = 3221225472, v40[8] = __39__UIManagedDocument_readFromURL_error___block_invoke_4, v40[9] = &unk_1E7105E08, v40[16] = &v51, v40[17] = &v74, v40[10] = v7, v40[11] = self, v40[12] = v32, v40[13] = v30, v40[18] = &v55, v40[19] = &v41, v40[20] = a4, v40[14] = v31, v40[15] = v35, [v34 coordinateWritingItemAtURL:? options:? writingItemAtURL:? options:? error:? byAccessor:?], v22 = *(v75 + 24)) : (v22 = 0), !a4 || (v22))
          {
LABEL_40:
            _Block_object_dispose(&v41, 8);
            _Block_object_dispose(&v45, 8);
            _Block_object_dispose(v49, 8);
            _Block_object_dispose(&v51, 8);
            _Block_object_dispose(&v55, 8);
            goto LABEL_41;
          }

          if ((v46[3] & 1) != 0 || *(v42 + 24) == 1)
          {
            v23 = v56;
          }

          else
          {
            if (v64[3])
            {
              goto LABEL_40;
            }

            if (*(v52 + 24) != 1)
            {
              v24 = &v61;
              goto LABEL_39;
            }

            v23 = v68;
          }

          v24 = (v23 + 5);
LABEL_39:
          *a4 = *v24;
          goto LABEL_40;
        }

        NSLog(&cfstr_UpdatingDocume.isa, v21, v19);
      }

      [(UIManagedDocument *)self _writeMetadataToDocumentURL:a3];
      goto LABEL_27;
    }

    goto LABEL_14;
  }

  if ((v73 & 1) == 0)
  {
LABEL_14:
    [objc_msgSend(MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"UIManagedDocument can only read documents that are file packages" userInfo:{0), "raise"}];
  }

  if (a4)
  {
    *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:260 userInfo:0];
  }

  v13 = 0;
LABEL_18:
  _Block_object_dispose(&v74, 8);
  return v13 & 1;
}

uint64_t __39__UIManagedDocument_readFromURL_error___block_invoke(uint64_t a1, void *a2)
{
  *(*(*(a1 + 72) + 8) + 24) = 1;
  result = [*(a1 + 32) fileExistsAtPath:{objc_msgSend(a2, "path")}];
  if (result)
  {
    result = [*(a1 + 40) configurePersistentStoreCoordinatorForURL:a2 ofType:*(a1 + 48) modelConfiguration:*(a1 + 56) storeOptions:*(a1 + 64) error:*(a1 + 88)];
    *(*(*(a1 + 80) + 8) + 24) = result;
  }

  else if (*(a1 + 88))
  {
    result = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:260 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjectsAndKeys:", @"Missing store file", @"reason", 0)}];
    **(a1 + 88) = result;
  }

  return result;
}

uint64_t __39__UIManagedDocument_readFromURL_error___block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 96) + 8) + 24) = 1;
  result = [*(a1 + 32) fileExistsAtPath:{objc_msgSend(*(a1 + 40), "path")}];
  *(*(*(a1 + 104) + 8) + 24) = result;
  if (*(*(*(a1 + 104) + 8) + 24) == 1)
  {
    *(*(*(a1 + 96) + 8) + 24) = 0;
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(*(a1 + 112) + 8);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __39__UIManagedDocument_readFromURL_error___block_invoke_3;
    v8[3] = &unk_1E7105DB8;
    v6 = *(a1 + 96);
    v7 = *(a1 + 80);
    v9 = *(a1 + 64);
    v10 = v7;
    v13 = *(a1 + 120);
    v14 = *(a1 + 136);
    v11 = *(a1 + 32);
    v12 = v6;
    return [v3 coordinateReadingItemAtURL:v4 options:0 error:v5 + 40 byAccessor:v8];
  }

  return result;
}

uint64_t __39__UIManagedDocument_readFromURL_error___block_invoke_3(uint64_t a1, void *a2)
{
  *(*(*(a1 + 72) + 8) + 24) = 1;
  result = [*(a1 + 32) configurePersistentStoreCoordinatorForURL:a2 ofType:*(a1 + 40) modelConfiguration:*(a1 + 48) storeOptions:*(a1 + 56) error:*(*(a1 + 88) + 8) + 40];
  *(*(*(a1 + 80) + 8) + 24) = result;
  if ((*(*(*(a1 + 80) + 8) + 24) & 1) == 0)
  {
    result = [*(a1 + 64) fileExistsAtPath:objc_msgSend(a2 isDirectory:{"path"), 0}];
    *(*(*(a1 + 96) + 8) + 24) = result;
  }

  return result;
}

uint64_t __39__UIManagedDocument_readFromURL_error___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v5 = [*(a1 + 32) createDirectoryAtURL:a2 withIntermediateDirectories:0 attributes:0 error:&v8];
  *(*(*(a1 + 80) + 8) + 24) = 1;
  if ((v5 & 1) != 0 || (result = [v8 code], result == 516))
  {
    result = [*(a1 + 40) configurePersistentStoreCoordinatorForURL:a3 ofType:*(a1 + 48) modelConfiguration:*(a1 + 56) storeOptions:*(a1 + 64) error:*(*(a1 + 96) + 8) + 40];
    *(*(*(a1 + 88) + 8) + 24) = result;
    *(*(*(a1 + 104) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24) ^ 1;
  }

  else
  {
    v7 = *(a1 + 112);
    *(*(*(a1 + 104) + 8) + 24) = 1;
    if (v7)
    {
      result = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:260 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjectsAndKeys:", @"Unable to restore path to store content", @"reason", v8, *MEMORY[0x1E696AA08], *(a1 + 72), @"path", 0)}];
      *(*(*(a1 + 96) + 8) + 40) = result;
    }
  }

  return result;
}

uint64_t __39__UIManagedDocument_readFromURL_error___block_invoke_5(uint64_t a1)
{
  result = [*(a1 + 32) parentContext];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void __39__UIManagedDocument_readFromURL_error___block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) URLByAppendingPathComponent:objc_msgSend(objc_opt_class() isDirectory:{"additionalContentPathComponent"), 1}];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 0;
  [*(a1 + 48) coordinateReadingItemAtURL:v2 options:0 error:MEMORY[0x1E69E9820] byAccessor:{3221225472, __39__UIManagedDocument_readFromURL_error___block_invoke_7, &unk_1E7105E58, *(a1 + 40), &v3, *(a1 + 56), *(a1 + 64)}];
  if ((v4[3] & 1) == 0)
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  _Block_object_dispose(&v3, 8);
}

uint64_t __39__UIManagedDocument_readFromURL_error___block_invoke_7(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 40) + 8) + 24) = 1;
  result = [*(a1 + 32) readAdditionalContentFromURL:a2 error:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (id)contentsForType:(id)a3 error:(id *)a4
{
  v7 = [(UIManagedDocument *)self additionalContentForURL:[(UIDocument *)self fileURL] error:a4];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__67;
  v17 = __Block_byref_object_dispose__67;
  v18 = 0;
  v9 = [(UIManagedDocument *)self managedObjectContext];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __43__UIManagedDocument_contentsForType_error___block_invoke;
  v12[3] = &unk_1E7105ED0;
  v12[5] = &v13;
  v12[6] = a4;
  v12[4] = v9;
  [(NSManagedObjectContext *)v9 performBlockAndWait:v12];
  if (v14[5])
  {
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"parentContext", v8, @"additionalContent", a3, @"fileType", 0}];
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v13, 8);
  return v10;
}

uint64_t __43__UIManagedDocument_contentsForType_error___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) save:*(a1 + 48)];
  if (result)
  {
    result = [*(a1 + 32) parentContext];
    *(*(*(a1 + 40) + 8) + 40) = result;
  }

  return result;
}

- (BOOL)writeContents:(id)a3 andAttributes:(id)a4 safelyToURL:(id)a5 forSaveOperation:(int64_t)a6 error:(id *)a7
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Contents must be a dictionary" userInfo:{0), "raise"}];
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v13 = [MEMORY[0x1E696AC08] defaultManager];
  v14 = v13;
  if (!a6 && ([v13 createDirectoryAtURL:a5 withIntermediateDirectories:0 attributes:a4 error:a7] & 1) == 0)
  {
    v17 = 0;
    goto LABEL_18;
  }

  if (*&self->_mdocFlags)
  {
    v15 = [a5 URLByAppendingPathComponent:objc_msgSend(objc_opt_class() isDirectory:{"additionalContentPathComponent"), 1}];
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v16 = [objc_alloc(MEMORY[0x1E696ABF8]) initWithFilePresenter:self];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __84__UIManagedDocument_writeContents_andAttributes_safelyToURL_forSaveOperation_error___block_invoke;
    v19[3] = &unk_1E7105EA8;
    v19[8] = &v20;
    v19[9] = &v24;
    v19[4] = v15;
    v19[5] = v14;
    v19[10] = a7;
    v19[6] = self;
    v19[7] = a3;
    [v16 coordinateWritingItemAtURL:v15 options:8 error:a7 byAccessor:v19];
    if ((v21[3] & 1) == 0)
    {
      *(v25 + 24) = 0;
    }

    _Block_object_dispose(&v20, 8);
    if ((v25[3] & 1) == 0)
    {
      v17 = 0;
      if (a6)
      {
        goto LABEL_18;
      }

      goto LABEL_13;
    }
  }

  else
  {
    *(v25 + 24) = 1;
  }

  v17 = [(UIManagedDocument *)self writeContents:a3 toURL:a5 forSaveOperation:a6 originalContentsURL:a5 error:a7];
  *(v25 + 24) = v17;
  if (a6)
  {
    goto LABEL_18;
  }

LABEL_13:
  if ((v17 & 1) == 0)
  {
    v20 = 0;
    if (([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")] & 1) == 0)
    {
      NSLog(&cfstr_Uimanageddocum_2.isa, a5, v20);
    }

    v17 = *(v25 + 24);
  }

LABEL_18:
  _Block_object_dispose(&v24, 8);
  return v17 & 1;
}

uint64_t __84__UIManagedDocument_writeContents_andAttributes_safelyToURL_forSaveOperation_error___block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 64) + 8) + 24) = 1;
  *(*(*(a1 + 72) + 8) + 24) = 1;
  v4 = [*(a1 + 32) URLByAppendingPathExtension:@"nosync_tmp"];
  if ([*(a1 + 40) fileExistsAtPath:{objc_msgSend(v4, "path")}])
  {
    *(*(*(a1 + 72) + 8) + 24) = [*(a1 + 40) removeItemAtURL:v4 error:*(a1 + 80)];
  }

  result = [*(a1 + 40) createDirectoryAtURL:v4 withIntermediateDirectories:0 attributes:0 error:*(a1 + 80)];
  *(*(*(a1 + 72) + 8) + 24) = result;
  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    if ([*(a1 + 48) writeAdditionalContent:objc_msgSend(*(a1 + 56) toURL:"objectForKey:" originalContentsURL:@"additionalContent" error:{v4, a2, *(a1 + 80)}])
    {
      v7 = 0;
      if (([*(a1 + 40) removeItemAtURL:a2 error:&v7] & 1) != 0 || (result = objc_msgSend(v7, "code"), result == 4))
      {
        result = [*(a1 + 40) moveItemAtURL:v4 toURL:a2 error:*(a1 + 80)];
        *(*(*(a1 + 72) + 8) + 24) = result;
      }

      else
      {
        v6 = *(a1 + 80);
        *(*(*(a1 + 72) + 8) + 24) = 0;
        if (v6)
        {
          *v6 = v7;
        }
      }
    }

    else
    {
      result = [*(a1 + 40) removeItemAtURL:v4 error:0];
      *(*(*(a1 + 72) + 8) + 24) = 0;
    }
  }

  return result;
}

- (BOOL)writeContents:(id)a3 toURL:(id)a4 forSaveOperation:(int64_t)a5 originalContentsURL:(id)a6 error:(id *)a7
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [a3 objectForKey:@"parentContext"];
    v12 = [a3 objectForKey:@"fileType"];
    v13 = v12;
    if (v11 && v12)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  [objc_msgSend(MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Contents must be a dictionary that contains a reference to the parentContext and fileType" userInfo:{0), "raise"}];
LABEL_7:
  v14 = [(UIManagedDocument *)self persistentStoreOptions];
  v15 = [(NSDictionary *)v14 objectForKey:@"NSPersistentStoreUbiquitousContentNameKey"];
  if (v15)
  {
    v16 = [v15 isEqual:{-[NSDictionary objectForKey:](self->_documentMetadata, "objectForKey:", @"NSPersistentStoreUbiquitousContentNameKey"}];
  }

  else
  {
    v16 = 1;
  }

  v28 = [MEMORY[0x1E696AC08] defaultManager];
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 1;
  if (a5)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v29 = 0;
  }

  else
  {
    if ([objc_opt_class() isPersistentStoreSynchronizedViaUbiquitousContentWithOptions:v14])
    {
      v23 = @"StoreContent.nosync";
    }

    else
    {
      v23 = @"StoreContent";
    }

    v19 = [a4 URLByAppendingPathComponent:v23];
    v29 = [v19 URLByAppendingPathComponent:{objc_msgSend(objc_opt_class(), "persistentStoreName")}];
    v24 = [objc_msgSend(v19 "fileReferenceURL")];
    if (v24)
    {
      if ((v34[3] & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v25 = [v28 createDirectoryAtURL:v19 withIntermediateDirectories:0 attributes:0 error:a7];
      *(v34 + 24) = v25;
      if (!v25)
      {
        goto LABEL_40;
      }
    }

    v18 = [(UIManagedDocument *)self configurePersistentStoreCoordinatorForURL:v29 ofType:v13 modelConfiguration:[(UIManagedDocument *)self modelConfiguration] storeOptions:[(UIManagedDocument *)self persistentStoreOptions] error:a7];
    v17 = v24 ^ 1;
    if ((v34[3] & 1) == 0)
    {
      v20 = 0;
LABEL_15:
      if (v20)
      {
        goto LABEL_40;
      }

      if (!v18)
      {
        goto LABEL_37;
      }

      [(NSPersistentStoreCoordinator *)self->_persistentStoreCoordinator lock];
      v31 = 0;
      v21 = [(NSPersistentStoreCoordinator *)self->_persistentStoreCoordinator persistentStoreForURL:v29];
      if (!v21)
      {
        goto LABEL_30;
      }

      if ([(NSPersistentStoreCoordinator *)self->_persistentStoreCoordinator removePersistentStore:v21 error:&v31])
      {
        goto LABEL_32;
      }

      if (v31)
      {
        v22 = [v31 description];
      }

      else
      {
LABEL_30:
        v22 = @"No store registered at URL";
      }

      NSLog(&cfstr_Uimanageddocum_3.isa, v29, v22);
LABEL_32:
      [(NSPersistentStoreCoordinator *)self->_persistentStoreCoordinator unlock];
      if (v29)
      {
        v31 = 0;
        if (([v28 removeItemAtURL:v29 error:&v31] & 1) == 0)
        {
          NSLog(&cfstr_Uimanageddocum_4.isa, v29, v31);
        }

        if ((v17 & 1) == 0)
        {
          goto LABEL_40;
        }

LABEL_38:
        v31 = 0;
        if (([v28 removeItemAtURL:v19 error:&v31] & 1) == 0)
        {
          NSLog(&cfstr_Uimanageddocum_5.isa, v19, v31);
        }

        goto LABEL_40;
      }

LABEL_37:
      if (!v17)
      {
        goto LABEL_40;
      }

      goto LABEL_38;
    }
  }

  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __84__UIManagedDocument_writeContents_toURL_forSaveOperation_originalContentsURL_error___block_invoke;
  v32[3] = &unk_1E7105ED0;
  v32[4] = v11;
  v32[5] = &v33;
  v32[6] = a7;
  [v11 performBlockAndWait:v32];
  v20 = *(v34 + 24);
  if (!(v16 & 1 | ((v20 & 1) == 0)))
  {
    [(UIManagedDocument *)self _writeMetadataToDocumentURL:a4];
    v20 = *(v34 + 24);
  }

  if (!a5)
  {
    goto LABEL_15;
  }

LABEL_40:
  v26 = *(v34 + 24);
  _Block_object_dispose(&v33, 8);
  return v26;
}

uint64_t __84__UIManagedDocument_writeContents_toURL_forSaveOperation_originalContentsURL_error___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) save:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)revertToContentsOfURL:(id)a3 completionHandler:(id)a4
{
  v7 = [(UIManagedDocument *)self managedObjectContext];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__UIManagedDocument_revertToContentsOfURL_completionHandler___block_invoke;
  v13[3] = &unk_1E70F5CA0;
  v13[4] = v7;
  [(NSManagedObjectContext *)v7 performBlockAndWait:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__UIManagedDocument_revertToContentsOfURL_completionHandler___block_invoke_2;
  v12[3] = &unk_1E70F5CA0;
  v12[4] = v7;
  [(NSManagedObjectContext *)v7 performBlockAndWait:v12];
  [(NSPersistentStoreCoordinator *)self->_persistentStoreCoordinator lock];
  v8 = [(NSPersistentStoreCoordinator *)self->_persistentStoreCoordinator persistentStoreForURL:a3];
  if (v8)
  {
    v11 = 0;
  }

  else
  {
    v8 = [(NSPersistentStoreCoordinator *)self->_persistentStoreCoordinator persistentStoreForURL:[(UIDocument *)self fileURL]];
    v11 = 0;
    if (!v8)
    {
      goto LABEL_5;
    }
  }

  if (![(NSPersistentStoreCoordinator *)self->_persistentStoreCoordinator removePersistentStore:v8 error:&v11])
  {
    [(NSPersistentStoreCoordinator *)self->_persistentStoreCoordinator unlock];
    goto LABEL_7;
  }

LABEL_5:
  v10.receiver = self;
  v10.super_class = UIManagedDocument;
  [(UIDocument *)&v10 revertToContentsOfURL:a3 completionHandler:a4];
  [(NSPersistentStoreCoordinator *)self->_persistentStoreCoordinator unlock];
LABEL_7:
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__UIManagedDocument_revertToContentsOfURL_completionHandler___block_invoke_3;
  v9[3] = &unk_1E70F5CA0;
  v9[4] = v7;
  [(NSManagedObjectContext *)v7 performBlockAndWait:v9];
}

@end