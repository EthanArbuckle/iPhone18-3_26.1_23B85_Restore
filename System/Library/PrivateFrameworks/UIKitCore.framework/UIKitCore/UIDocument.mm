@interface UIDocument
+ (BOOL)_url:(id)_url matchesURL:(id)l;
+ (id)_customizationOfError:(id)error withDescription:(id)description recoverySuggestion:(id)suggestion recoveryAttempter:(id)attempter;
+ (id)_documentWithContentsOfFileURL:(id)l error:(id *)error;
+ (id)_fileModificationDateForURL:(id)l;
+ (id)_typeForContentsOfURL:(id)l error:(id *)error;
+ (void)_autosavingTimerDidFireSoContinue:(id)continue;
+ (void)_finishWritingToURL:(id)l withTemporaryDirectoryURL:(id)rL newContentsURL:(id)uRL afterSuccess:(BOOL)success;
- (BOOL)_coordinateWritingItemAtURL:(id)l error:(id *)error byAccessor:(id)accessor;
- (BOOL)_hasSavingError;
- (BOOL)_hasUnsavedChanges;
- (BOOL)_isEditingDisabledDueToPermissions;
- (BOOL)_isEditingTemporarilyDisabled;
- (BOOL)_isInConflict;
- (BOOL)_isInOpen;
- (BOOL)_isOpen;
- (BOOL)_isUbiquitous;
- (BOOL)_shouldAllowWritingInResponseToPresenterMessage;
- (BOOL)loadFromContents:(id)contents ofType:(NSString *)typeName error:(NSError *)outError;
- (BOOL)readFromURL:(NSURL *)url error:(NSError *)outError;
- (BOOL)writeContents:(id)contents andAttributes:(NSDictionary *)additionalFileAttributes safelyToURL:(NSURL *)url forSaveOperation:(UIDocumentSaveOperation)saveOperation error:(NSError *)outError;
- (BOOL)writeContents:(id)contents toURL:(NSURL *)url forSaveOperation:(UIDocumentSaveOperation)saveOperation originalContentsURL:(NSURL *)originalContentsURL error:(NSError *)outError;
- (NSDate)fileModificationDate;
- (NSDictionary)fileAttributesToWriteToURL:(NSURL *)url forSaveOperation:(UIDocumentSaveOperation)saveOperation error:(NSError *)outError;
- (NSProgress)progress;
- (NSString)description;
- (NSString)fileNameExtensionForType:(NSString *)typeName saveOperation:(UIDocumentSaveOperation)saveOperation;
- (NSString)fileType;
- (NSString)localizedName;
- (NSURL)fileURL;
- (NSUndoManager)undoManager;
- (NSUserActivity)userActivity;
- (UIDocument)init;
- (UIDocument)initWithFileURL:(NSURL *)url;
- (UIDocumentState)documentState;
- (id)_defaultUserActivityForActivityType:(id)type;
- (id)_defaultUserActivityType;
- (id)_presentableFileNameForSaveOperation:(int64_t)operation url:(id)url;
- (id)_readingProgressForURL:(id)l;
- (id)_userActivity;
- (id)_writingProgressForURL:(id)l indeterminate:(BOOL)indeterminate;
- (id)changeCountTokenForSaveOperation:(UIDocumentSaveOperation)saveOperation;
- (id)contentsForType:(NSString *)typeName error:(NSError *)outError;
- (void)_applicationDidBecomeActive:(id)active;
- (void)_applicationWillResignActive:(id)active;
- (void)_autosaveWithCompletionHandler:(id)handler;
- (void)_autosavingCompletedSuccessfully:(BOOL)successfully;
- (void)_changeWasDone:(id)done;
- (void)_changeWasRedone:(id)redone;
- (void)_changeWasUndone:(id)undone;
- (void)_finishSavingToURL:(id)l forSaveOperation:(int64_t)operation changeCount:(id)count;
- (void)_generatePDFInWindowScene:(void *)scene completionHandler:;
- (void)_lockFileAccessQueueAndPerformBlock:(id)block;
- (void)_performBlock:(id)block synchronouslyOnQueue:(id)queue;
- (void)_performBlockOnMainThread:(id)thread;
- (void)_performBlockSynchronouslyOnMainThread:(id)thread;
- (void)_progressPublished:(id)published;
- (void)_progressUnpublished:(id)unpublished;
- (void)_registerAsFilePresenterIfNecessary;
- (void)_releaseUndoManager;
- (void)_rescheduleAutosaving;
- (void)_saveUnsavedChangesWithCompletionHandler:(id)handler;
- (void)_scheduleAutosaving;
- (void)_scheduleAutosavingAfterDelay:(double)delay reset:(BOOL)reset;
- (void)_sendStateChangedNotification;
- (void)_setFileURL:(id)l;
- (void)_setHasSavingError:(BOOL)error;
- (void)_setInConflict:(BOOL)conflict;
- (void)_setInOpen:(BOOL)open;
- (void)_setOpen:(BOOL)open;
- (void)_setUserActivity:(id)activity;
- (void)_unregisterAsFilePresenterIfNecessary;
- (void)_updateConflictState;
- (void)_updateDefaultUserActivityBecomingCurrent:(BOOL)current;
- (void)_updateLastUsedDate;
- (void)_updateLocalizedName;
- (void)_updatePermissionsState:(BOOL)state;
- (void)_updateUserActivityState:(id)state;
- (void)accommodatePresentedItemDeletionWithCompletionHandler:(id)handler;
- (void)accommodatePresentedSubitemDeletionAtURL:(id)l completionHandler:(id)handler;
- (void)closeWithCompletionHandler:(void *)completionHandler;
- (void)dealloc;
- (void)finishedHandlingError:(NSError *)error recovered:(BOOL)recovered;
- (void)handleError:(NSError *)error userInteractionPermitted:(BOOL)userInteractionPermitted;
- (void)openWithCompletionHandler:(void *)completionHandler;
- (void)performAsynchronousFileAccessUsingBlock:(void *)block;
- (void)presentedItemDidChange;
- (void)presentedItemDidGainVersion:(id)version;
- (void)presentedItemDidLoseVersion:(id)version;
- (void)presentedItemDidMoveToURL:(id)l;
- (void)presentedItemDidMoveToWritableLocation;
- (void)presentedItemDidResolveConflictVersion:(id)version;
- (void)presentedItemHasUnsavedChangesWithCompletionHandler:(id)handler;
- (void)presentedSubitemAtURL:(id)l didGainVersion:(id)version;
- (void)presentedSubitemAtURL:(id)l didLoseVersion:(id)version;
- (void)presentedSubitemAtURL:(id)l didMoveToURL:(id)rL;
- (void)presentedSubitemAtURL:(id)l didResolveConflictVersion:(id)version;
- (void)presentedSubitemDidAppearAtURL:(id)l;
- (void)presentedSubitemDidChangeAtURL:(id)l;
- (void)relinquishPresentedItemToReader:(id)reader;
- (void)relinquishPresentedItemToWriter:(id)writer;
- (void)revertToContentsOfURL:(NSURL *)url completionHandler:(void *)completionHandler;
- (void)savePresentedItemChangesWithCompletionHandler:(id)handler;
- (void)saveToURL:(NSURL *)url forSaveOperation:(UIDocumentSaveOperation)saveOperation completionHandler:(void *)completionHandler;
- (void)setFileModificationDate:(NSDate *)fileModificationDate;
- (void)setFileType:(id)type;
- (void)setUndoManager:(NSUndoManager *)undoManager;
- (void)setUserActivity:(NSUserActivity *)userActivity;
- (void)updateChangeCount:(UIDocumentChangeKind)change;
- (void)updateChangeCountWithToken:(id)changeCountToken forSaveOperation:(UIDocumentSaveOperation)saveOperation;
@end

@implementation UIDocument

void __74__UIDocument_UIPDFGeneration___getPrintPageRendererWithCompletionHandler___block_invoke(uint64_t a1)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2050000000;
  v2 = qword_1ED49D7E0;
  v21 = qword_1ED49D7E0;
  if (!qword_1ED49D7E0)
  {
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __getQLItemClass_block_invoke;
    v16 = &unk_1E70F2F20;
    v17 = &v18;
    __getQLItemClass_block_invoke(&v13);
    v2 = v19[3];
  }

  v3 = v2;
  _Block_object_dispose(&v18, 8);
  v4 = [[v2 alloc] initWithURL:*(a1 + 32)];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2050000000;
  v5 = qword_1ED49D7E8;
  v21 = qword_1ED49D7E8;
  if (!qword_1ED49D7E8)
  {
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __getQLPreviewControllerClass_block_invoke;
    v16 = &unk_1E70F2F20;
    v17 = &v18;
    __getQLPreviewControllerClass_block_invoke(&v13);
    v5 = v19[3];
  }

  v6 = v5;
  _Block_object_dispose(&v18, 8);
  v7 = [v5 printPageRendererForItem:v4];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__UIDocument_UIPDFGeneration___getPrintPageRendererWithCompletionHandler___block_invoke_2;
  block[3] = &unk_1E70F4A50;
  v8 = *(a1 + 40);
  v11 = v7;
  v12 = v8;
  v9 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_generatePDFInWindowScene:(void *)scene completionHandler:
{
  v5 = a2;
  sceneCopy = scene;
  if (!self)
  {
    goto LABEL_8;
  }

  if (pthread_main_np() != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel__generatePDFInWindowScene_completionHandler_ object:self file:@"UIDocument_PDFGeneration.m" lineNumber:45 description:@"Call must be made on main thread"];

    if (sceneCopy)
    {
      goto LABEL_4;
    }

LABEL_10:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:sel__generatePDFInWindowScene_completionHandler_ object:self file:@"UIDocument_PDFGeneration.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"completionHandler != NULL"}];

    goto LABEL_4;
  }

  if (!sceneCopy)
  {
    goto LABEL_10;
  }

LABEL_4:
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v13 = __75__UIDocument_UIPDFGeneration___generatePDFInWindowScene_completionHandler___block_invoke;
  v14 = &unk_1E7102278;
  v16 = sceneCopy;
  v15 = v5;
  v7 = v12;
  fileURL = [self fileURL];
  if (fileURL)
  {
    v9 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__UIDocument_UIPDFGeneration___getPrintPageRendererWithCompletionHandler___block_invoke;
    block[3] = &unk_1E70F37C0;
    v18 = fileURL;
    v19 = v7;
    dispatch_async(v9, block);
  }

  else
  {
    v13(v7, 0);
  }

LABEL_8:
}

void __75__UIDocument_UIPDFGeneration___generatePDFInWindowScene_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x2050000000;
    v4 = qword_1ED49D7F0;
    v32 = qword_1ED49D7F0;
    if (!qword_1ED49D7F0)
    {
      *buf = MEMORY[0x1E69E9820];
      v25 = 3221225472;
      v26 = __getUIPrintInteractionControllerClass_block_invoke;
      v27 = &unk_1E70F2F20;
      v28 = &v29;
      __getUIPrintInteractionControllerClass_block_invoke(buf);
      v4 = v30[3];
    }

    v5 = v4;
    _Block_object_dispose(&v29, 8);
    v6 = objc_alloc_init(v4);
    v7 = v6;
    if (v6)
    {
      [v6 setPrintPageRenderer:v3];
      v8 = MEMORY[0x1E696AEC0];
      v9 = [MEMORY[0x1E696AFB0] UUID];
      v10 = [v9 UUIDString];
      v11 = [v8 stringWithFormat:@"Document-%@.pdf", v10];

      v12 = MEMORY[0x1E695DFF8];
      v13 = NSTemporaryDirectory();
      v14 = [v12 fileURLWithPath:v13];
      v15 = [v14 URLByAppendingPathComponent:v11 isDirectory:0];

      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __75__UIDocument_UIPDFGeneration___generatePDFInWindowScene_completionHandler___block_invoke_19;
      v21[3] = &unk_1E7102250;
      v16 = *(a1 + 32);
      v17 = *(a1 + 40);
      v22 = v15;
      v23 = v17;
      v18 = v15;
      [v7 savePDFToURL:v18 showProgress:0 hostingScene:v16 completionHandler:v21];
    }

    else
    {
      if (os_variant_has_internal_diagnostics())
      {
        v20 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v20, OS_LOG_TYPE_FAULT, "Unable to obtain UIPrintInteractionController", buf, 2u);
        }
      }

      else
      {
        v19 = *(__UILogGetCategoryCachedImpl("Assert", &_MergedGlobals_1053) + 8);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_ERROR, "Unable to obtain UIPrintInteractionController", buf, 2u);
        }
      }

      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __75__UIDocument_UIPDFGeneration___generatePDFInWindowScene_completionHandler___block_invoke_19(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = *(a1 + 40);
  if (a4 || !a3)
  {
    return (*(v5 + 16))(v5, 0, a4);
  }

  else
  {
    return (*(v5 + 16))(v5, *(a1 + 32), 0);
  }
}

+ (id)_typeForContentsOfURL:(id)l error:(id *)error
{
  lCopy = l;
  v25 = 0;
  v6 = *MEMORY[0x1E695DC68];
  v24 = 0;
  v7 = [lCopy getResourceValue:&v25 forKey:v6 error:&v24];
  v8 = v25;
  v9 = v24;
  v10 = v9;
  if (v7)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 0;
  }

  v12 = !v11 || v8 == 0;
  if (v12 || ![v8 length])
  {
    absoluteString = [lCopy absoluteString];
    pathExtension = [absoluteString pathExtension];

    if ([pathExtension length])
    {
      v15 = [MEMORY[0x1E6982C40] typeWithFilenameExtension:pathExtension];
      identifier = [v15 identifier];

      if (identifier)
      {

        v10 = 0;
      }

      if (error && v10)
      {
        v17 = v10;
        *error = v10;
      }

      v8 = identifier;
    }

    else
    {
      hasDirectoryPath = [lCopy hasDirectoryPath];
      v19 = MEMORY[0x1E6982DC8];
      if (!hasDirectoryPath)
      {
        v19 = MEMORY[0x1E6982D60];
      }

      identifier2 = [*v19 identifier];

      v10 = 0;
      v8 = identifier2;
    }
  }

  else
  {
    v10 = 0;
  }

  if ([v8 length])
  {
    v21 = v8;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  return v21;
}

- (UIDocument)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIDocument.m" lineNumber:364 description:@"do not call -[UIDocument init] - the designated initializer is -[UIDocument initWithFileURL:]"];

  return 0;
}

- (UIDocument)initWithFileURL:(NSURL *)url
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = url;
  absoluteString = [(NSURL *)v4 absoluteString];
  if (![absoluteString length])
  {

    goto LABEL_9;
  }

  isFileURL = [(NSURL *)v4 isFileURL];

  if (!isFileURL)
  {
LABEL_9:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"must pass a valid file URL to -[UIDocument initWithFileURL:]"];
    selfCopy = 0;
    goto LABEL_10;
  }

  v29.receiver = self;
  v29.super_class = UIDocument;
  v7 = [(UIDocument *)&v29 init];
  v8 = v7;
  if (v7)
  {
    [(UIDocument *)v7 _setFileURL:v4];
    v8->_lastPreservationTime = CFAbsoluteTimeGetCurrent();
    v9 = dispatch_queue_create("UIDocument File Access", 0);
    fileAccessQueue = v8->_fileAccessQueue;
    v8->_fileAccessQueue = v9;

    v11 = dispatch_semaphore_create(0);
    fileAccessSemaphore = v8->_fileAccessSemaphore;
    v8->_fileAccessSemaphore = v11;

    v13 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    filePresenterQueue = v8->_filePresenterQueue;
    v8->_filePresenterQueue = v13;

    [(NSOperationQueue *)v8->_filePresenterQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v8->_filePresenterQueue setName:@"UIDocument File Presenting"];
    v15 = objc_alloc_init(MEMORY[0x1E696AD10]);
    activityContinuationLock = v8->_activityContinuationLock;
    v8->_activityContinuationLock = v15;

    v17 = objc_alloc_init(NSDocumentDifferenceSize);
    differenceDueToRecentChanges = v8->_differenceDueToRecentChanges;
    v8->_differenceDueToRecentChanges = v17;

    v19 = objc_alloc_init(NSDocumentDifferenceSize);
    differenceSincePreservingPreviousVersion = v8->_differenceSincePreservingPreviousVersion;
    v8->_differenceSincePreservingPreviousVersion = v19;

    v21 = objc_alloc_init(NSDocumentDifferenceSize);
    differenceSinceSaving = v8->_differenceSinceSaving;
    v8->_differenceSinceSaving = v21;

    v23 = [MEMORY[0x1E695DFA8] set];
    progresses = v8->_progresses;
    v8->_progresses = v23;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel__applicationWillResignActive_ name:@"UIApplicationWillResignActiveNotification" object:0];
    [defaultCenter addObserver:v8 selector:sel__applicationDidBecomeActive_ name:@"UIApplicationDidBecomeActiveNotification" object:0];
    v26 = _UIDocumentLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v8;
      _os_log_impl(&dword_188A29000, v26, OS_LOG_TYPE_DEFAULT, "initialized document instance: %@", buf, 0xCu);
    }
  }

  self = v8;
  selfCopy = self;
LABEL_10:

  return selfCopy;
}

- (void)dealloc
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = _UIDocumentLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy3 = self;
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "deallocing document instance: %@", buf, 0xCu);
  }

  if (os_variant_has_internal_diagnostics())
  {
    if ((*&self->_docFlags & 0x200) != 0)
    {
      v11 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        selfCopy3 = self;
        _os_log_fault_impl(&dword_188A29000, v11, OS_LOG_TYPE_FAULT, "Document %@ is deallocating even though it is currently registered as a file presenter.", buf, 0xCu);
      }
    }
  }

  else if ((*&self->_docFlags & 0x200) != 0)
  {
    v12 = *(__UILogGetCategoryCachedImpl("Assert", &dealloc___s_category_6) + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy3 = self;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "Document %@ is deallocating even though it is currently registered as a file presenter.", buf, 0xCu);
    }
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v14[0] = @"UIApplicationWillResignActiveNotification";
  v14[1] = @"UIApplicationDidBecomeActiveNotification";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  [(NSNotificationCenter *)defaultCenter _uiRemoveObserver:v5 names:?];

  [(UIDocument *)self _releaseUndoManager];
  autosavingTimer = self->_autosavingTimer;
  if (autosavingTimer)
  {
    [(NSTimer *)autosavingTimer invalidate];
  }

  if (self->_progressSubscriber)
  {
    [MEMORY[0x1E696AE38] _removeSubscriber:?];
  }

  if ((*&self->_docFlags & 0x2000) != 0)
  {
    [(NSURL *)self->_fileURL stopAccessingSecurityScopedResource];
  }

  currentUserActivity = self->_currentUserActivity;
  if (currentUserActivity)
  {
    v8 = UIApp;
    v9 = currentUserActivity;
    [v8 _removeDocument:self forUserActivity:v9];
    v10 = self->_currentUserActivity;
    self->_currentUserActivity = 0;
  }

  v13.receiver = self;
  v13.super_class = UIDocument;
  [(UIDocument *)&v13 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AD60];
  v18.receiver = self;
  v18.super_class = UIDocument;
  v4 = [(UIDocument *)&v18 description];
  v5 = [v3 stringWithString:v4];

  [v5 appendFormat:@" fileURL: %@ documentState: [", self->_fileURL];
  documentState = [(UIDocument *)self documentState];
  if (!documentState)
  {
    v9 = @"Normal]";
    goto LABEL_34;
  }

  v7 = documentState;
  v8 = documentState & 1;
  if (documentState)
  {
    [v5 appendString:@"Closed"];
    if ((v7 & 8) == 0)
    {
LABEL_4:
      if ((v7 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_18;
    }
  }

  else if ((documentState & 8) == 0)
  {
    goto LABEL_4;
  }

  if (v7)
  {
    v10 = @" | EditingDisabled";
  }

  else
  {
    v10 = @"EditingDisabled";
  }

  [v5 appendString:v10];
  docFlags = self->_docFlags;
  if ((docFlags & 0x100) != 0)
  {
    [v5 appendString:@"(Permissions)"];
    docFlags = self->_docFlags;
  }

  if ((docFlags & 0x80) != 0)
  {
    [v5 appendString:@"(Activity)"];
  }

  v8 = 1;
  if ((v7 & 2) == 0)
  {
LABEL_5:
    if ((v7 & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_22:
    if (v8)
    {
      v13 = @" | SavingError";
    }

    else
    {
      v13 = @"SavingError";
    }

    [v5 appendString:v13];
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_26;
  }

LABEL_18:
  if (v8)
  {
    v12 = @" | InConflict";
  }

  else
  {
    v12 = @"InConflict";
  }

  [v5 appendString:v12];
  v8 = 1;
  if ((v7 & 4) != 0)
  {
    goto LABEL_22;
  }

LABEL_6:
  if ((v7 & 0x10) != 0)
  {
LABEL_26:
    if (v8)
    {
      v14 = @" | Progress";
    }

    else
    {
      v14 = @"Progress";
    }

    [v5 appendString:v14];
    progress = [(UIDocument *)self progress];
    if ([progress isIndeterminate])
    {
      [v5 appendString:@" (indet)"];
    }

    else
    {
      [progress fractionCompleted];
      [v5 appendFormat:@" (%.0g)", v16];
    }
  }

LABEL_33:
  v9 = @"]";
LABEL_34:
  [v5 appendString:v9];

  return v5;
}

- (void)_registerAsFilePresenterIfNecessary
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = _UIDocumentLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "document will register as file presenter if necessary on main thread: %@", buf, 0xCu);
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__UIDocument__registerAsFilePresenterIfNecessary__block_invoke;
  v4[3] = &unk_1E70F3590;
  v4[4] = self;
  [(UIDocument *)self _performBlockSynchronouslyOnMainThread:v4];
}

void __49__UIDocument__registerAsFilePresenterIfNecessary__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = _UIDocumentLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "document running file presenter registration block on main thread: %@", &v6, 0xCu);
  }

  if ((*(*(a1 + 32) + 192) & 0x200) == 0)
  {
    v4 = _UIDocumentLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "registering document as file presenter: %@", &v6, 0xCu);
    }

    [MEMORY[0x1E696ABF8] addFilePresenter:*(a1 + 32)];
    *(*(a1 + 32) + 192) |= 0x200u;
  }
}

- (void)_unregisterAsFilePresenterIfNecessary
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = _UIDocumentLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "document will unregister as file presenter if necessary on main thread: %@", buf, 0xCu);
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__UIDocument__unregisterAsFilePresenterIfNecessary__block_invoke;
  v4[3] = &unk_1E70F3590;
  v4[4] = self;
  [(UIDocument *)self _performBlockSynchronouslyOnMainThread:v4];
}

void __51__UIDocument__unregisterAsFilePresenterIfNecessary__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = _UIDocumentLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "document running file presenter de-registration block on main thread: %@", &v6, 0xCu);
  }

  if ((*(*(a1 + 32) + 192) & 0x200) != 0)
  {
    v4 = _UIDocumentLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "unregistering document as file presenter: %@", &v6, 0xCu);
    }

    [MEMORY[0x1E696ABF8] removeFilePresenter:*(a1 + 32)];
    *(*(a1 + 32) + 192) &= ~0x200u;
  }
}

- (BOOL)_isUbiquitous
{
  fileURL = [(UIDocument *)self fileURL];

  if (!fileURL)
  {
    return 0;
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  ubiquityIdentityToken = [defaultManager ubiquityIdentityToken];

  if (ubiquityIdentityToken)
  {
    fileURL2 = [(UIDocument *)self fileURL];
    v7 = [defaultManager isUbiquitousItemAtURL:fileURL2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_defaultUserActivityType
{
  v45 = *MEMORY[0x1E69E9840];
  if ([(UIDocument *)self _isUbiquitous])
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    infoDictionary = [mainBundle infoDictionary];

    v4 = [infoDictionary objectForKeyedSubscript:@"CFBundleDocumentTypes"];
    if (_UIStateRestorationDebugLogEnabled())
    {
      fileType = [(UIDocument *)self fileType];
      NSLog(&cfstr_SCheckingForDo.isa, "[UIDocument _defaultUserActivityType]", fileType, v4);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = "[UIDocument _defaultUserActivityType]";
      if (_UIStateRestorationDebugLogEnabled())
      {
        NSLog(&cfstr_SCfbundledocum.isa, "[UIDocument _defaultUserActivityType]");
      }

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v7 = v4;
      v8 = [v7 countByEnumeratingWithState:&v39 objects:v44 count:16];
      if (v8)
      {
        v9 = v8;
        v26 = v4;
        v27 = infoDictionary;
        v10 = 0;
        v32 = *v40;
        v30 = v7;
        do
        {
          v11 = 0;
          v28 = v9;
          do
          {
            if (*v40 != v32)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v39 + 1) + 8 * v11);
            if (_UIStateRestorationDebugLogEnabled())
            {
              NSLog(&cfstr_SCheckingDocum.isa, v6, v12);
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if (_UIStateRestorationDebugLogEnabled())
              {
                NSLog(&cfstr_SDocumentTypeD.isa, v6);
              }

              v13 = [v12 objectForKeyedSubscript:@"NSUbiquitousDocumentUserActivityType"];

              if (_UIStateRestorationDebugLogEnabled())
              {
                NSLog(&cfstr_SActivityTypeI.isa, v6, v13);
              }

              if (v13)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v14 = [v12 objectForKeyedSubscript:@"LSItemContentTypes"];
                  if (_UIStateRestorationDebugLogEnabled())
                  {
                    NSLog(&cfstr_SCheckingConte.isa, v6, v14);
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v31 = v13;
                    if (_UIStateRestorationDebugLogEnabled())
                    {
                      NSLog(&cfstr_SContenttypesI.isa, v6);
                    }

                    v37 = 0u;
                    v38 = 0u;
                    v35 = 0u;
                    v36 = 0u;
                    v29 = v14;
                    obj = v14;
                    v15 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
                    if (v15)
                    {
                      v16 = v15;
                      v17 = *v36;
                      while (2)
                      {
                        for (i = 0; i != v16; ++i)
                        {
                          if (*v36 != v17)
                          {
                            objc_enumerationMutation(obj);
                          }

                          v19 = *(*(&v35 + 1) + 8 * i);
                          if (_UIStateRestorationDebugLogEnabled())
                          {
                            NSLog(&cfstr_SCheckingConte_0.isa, v6, v19);
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            if (_UIStateRestorationDebugLogEnabled())
                            {
                              NSLog(&cfstr_SContenttypeIs.isa, v6);
                            }

                            fileType2 = [(UIDocument *)self fileType];
                            if (fileType2)
                            {
                              v21 = v6;
                              v22 = [MEMORY[0x1E6982C40] _typeWithIdentifier:fileType2 allowUndeclared:1];
                              v23 = [MEMORY[0x1E6982C40] _typeWithIdentifier:v19 allowUndeclared:1];
                              if ([v22 conformsToType:v23])
                              {
                                if (_UIStateRestorationDebugLogEnabled())
                                {
                                  NSLog(&cfstr_SDocumentFilet.isa, v21, fileType2, v19, v31);
                                }

                                v10 = v31;

                                v24 = v10;
                                v4 = v26;
                                infoDictionary = v27;
                                v7 = v30;
                                goto LABEL_56;
                              }

                              v6 = v21;
                            }
                          }
                        }

                        v16 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
                        if (v16)
                        {
                          continue;
                        }

                        break;
                      }
                    }

                    v7 = v30;
                    v13 = v31;
                    v9 = v28;
                    v14 = v29;
                  }
                }

                v10 = v13;
              }

              else
              {
                v10 = 0;
              }
            }

            ++v11;
          }

          while (v11 != v9);
          v9 = [v7 countByEnumeratingWithState:&v39 objects:v44 count:16];
        }

        while (v9);
        v4 = v26;
        infoDictionary = v27;
      }

      else
      {
        v10 = 0;
      }

      v24 = @"com.apple.uikit.document";
LABEL_56:
    }

    else
    {
      v10 = 0;
      v24 = @"com.apple.uikit.document";
    }
  }

  else
  {
    v24 = @"com.apple.uikit.document";
  }

  return v24;
}

- (id)_defaultUserActivityForActivityType:(id)type
{
  typeCopy = type;
  v5 = typeCopy;
  if ((*&self->_docFlags & 0x4000) != 0 || ![(__CFString *)typeCopy length])
  {
    v6 = 0;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E696B090]) initWithActivityType:v5];
    [(UIDocument *)self _updateUserActivityState:v6];
    if (v5 == @"com.apple.uikit.document")
    {
      [v6 setSupportsContinuationStreams:0];
      [v6 setEligibleForHandoff:0];
      [v6 setEligibleForSearch:0];
      [v6 setEligibleForPublicIndexing:0];
      [v6 setEligibleForPrediction:0];
    }
  }

  return v6;
}

- (void)_updateDefaultUserActivityBecomingCurrent:(BOOL)current
{
  if ((*&self->_docFlags & 0x4000) == 0)
  {
    currentCopy = current;
    _userActivity = [(UIDocument *)self _userActivity];
    _defaultUserActivityType = [(UIDocument *)self _defaultUserActivityType];
    if (_userActivity && ([_userActivity activityType], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", _defaultUserActivityType), v6, (v7 & 1) != 0))
    {
      [_userActivity setNeedsSave:1];
      v8 = _userActivity;
    }

    else
    {
      v9 = [(UIDocument *)self _defaultUserActivityForActivityType:_defaultUserActivityType];

      [(UIDocument *)self _setUserActivity:v9];
      v8 = v9;
    }

    v11 = v8;
    if (currentCopy)
    {
      [v8 becomeCurrent];
    }
  }
}

- (void)_setUserActivity:(id)activity
{
  activityCopy = activity;
  [(NSLock *)self->_activityContinuationLock lock];
  v5 = self->_currentUserActivity;
  if (self->_currentUserActivity != activityCopy)
  {
    objc_storeStrong(&self->_currentUserActivity, activity);
  }

  [(NSLock *)self->_activityContinuationLock unlock];
  v6 = activityCopy;
  if (v5 != activityCopy)
  {
    if (v5)
    {
      [UIApp _removeDocument:self forUserActivity:v5];
      v6 = activityCopy;
    }

    if (v6 && [(UIDocument *)self _isOpen])
    {
      [UIApp _addDocument:self forUserActivity:activityCopy];
    }
  }
}

- (void)setUserActivity:(NSUserActivity *)userActivity
{
  v4 = userActivity;
  *&self->_docFlags |= 0x4000u;
  if (pthread_main_np() == 1)
  {
    [(UIDocument *)self _setUserActivity:v4];
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __30__UIDocument_setUserActivity___block_invoke;
    v5[3] = &unk_1E70F35B8;
    v5[4] = self;
    v6 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

- (NSUserActivity)userActivity
{
  _userActivity = [(UIDocument *)self _userActivity];
  if (!_userActivity)
  {
    _defaultUserActivityType = [(UIDocument *)self _defaultUserActivityType];
    v5 = [(UIDocument *)self _defaultUserActivityForActivityType:_defaultUserActivityType];
    _userActivity = v5;
    if (v5)
    {
      [(UIDocument *)self _setUserActivity:v5];
    }
  }

  return _userActivity;
}

- (id)_userActivity
{
  [(NSLock *)self->_activityContinuationLock lock];
  v3 = self->_currentUserActivity;
  [(NSLock *)self->_activityContinuationLock unlock];

  return v3;
}

- (void)_updateUserActivityState:(id)state
{
  v12[1] = *MEMORY[0x1E69E9840];
  stateCopy = state;
  localizedName = [(UIDocument *)self localizedName];
  if ([localizedName length])
  {
    v6 = localizedName;
  }

  else
  {
    v6 = _UILocalizedString(@"com.apple.documents.userActivityTitle", @"The default title of a document user activity.", @"Document");
  }

  v7 = v6;
  [stateCopy setTitle:v6];
  fileURL = [(UIDocument *)self fileURL];
  v9 = fileURL;
  if (fileURL)
  {
    v11 = @"NSUserActivityDocumentURL";
    v12[0] = fileURL;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    [stateCopy addUserInfoEntriesFromDictionary:v10];
  }
}

- (void)openWithCompletionHandler:(void *)completionHandler
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = completionHandler;
  if ([(UIDocument *)self _isInOpen])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    fileURL = [(UIDocument *)self fileURL];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIDocument.m" lineNumber:701 description:{@"attempt to open or a revert document that already has an open or revert operation in flight: %@", fileURL}];
  }

  v6 = _UIDocumentLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "opening document: %@", buf, 0xCu);
  }

  [(UIDocument *)self _setInOpen:1];
  fileURL2 = [(UIDocument *)self fileURL];
  v8 = dispatch_get_current_queue();
  if (v8 == self->_fileAccessQueue)
  {
    v9 = MEMORY[0x1E69E96A0];
    v10 = MEMORY[0x1E69E96A0];

    v8 = v9;
  }

  [(UIDocument *)self _registerAsFilePresenterIfNecessary];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __40__UIDocument_openWithCompletionHandler___block_invoke;
  v16[3] = &unk_1E70F5F08;
  v16[4] = self;
  v17 = v8;
  v18 = fileURL2;
  v19 = v5;
  v11 = v5;
  v12 = fileURL2;
  v13 = v8;
  [(UIDocument *)self performAsynchronousFileAccessUsingBlock:v16];
}

void __40__UIDocument_openWithCompletionHandler___block_invoke(id *a1)
{
  v45 = *MEMORY[0x1E69E9840];
  objc_storeStrong(a1[4] + 10, a1[5]);
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__66;
  v39 = __Block_byref_object_dispose__66;
  v40 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v2 = _UIDocumentLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    *buf = 138412290;
    v42 = v3;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "attempting coordinated reading for document: %@", buf, 0xCu);
  }

  v4 = [objc_alloc(MEMORY[0x1E696ABF8]) initWithFilePresenter:a1[4]];
  v5 = a1[6];
  v30 = 0;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __40__UIDocument_openWithCompletionHandler___block_invoke_274;
  v29[3] = &unk_1E71059F8;
  v29[4] = a1[4];
  v29[5] = &v31;
  v29[6] = &v35;
  [v4 coordinateReadingItemAtURL:v5 options:0 error:&v30 byAccessor:v29];
  v6 = v30;
  v7 = v30;
  if (v7)
  {
    objc_storeStrong(v36 + 5, v6);
  }

  if (*(v32 + 24) == 1)
  {
    v8 = _UIDocumentLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a1[4];
      *buf = 138412290;
      v42 = v9;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "document will update file modification date on main thread: %@", buf, 0xCu);
    }

    v10 = a1[4];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __40__UIDocument_openWithCompletionHandler___block_invoke_276;
    v27[3] = &unk_1E70F35B8;
    v27[4] = v10;
    v28 = a1[6];
    [v10 _performBlockSynchronouslyOnMainThread:v27];
  }

  else if (!v36[5])
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:256 userInfo:0];
    v12 = v36[5];
    v36[5] = v11;
  }

  [a1[4] _setInOpen:0];
  [a1[4] _setOpen:*(v32 + 24)];
  if (v32[3])
  {
    v13 = a1[4];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __40__UIDocument_openWithCompletionHandler___block_invoke_278;
    v26[3] = &unk_1E70F3590;
    v26[4] = v13;
    [v13 _performBlockOnMainThread:v26];
    v14 = a1[4];
    if ((v14[96] & 8) == 0)
    {
      [v14 _updateLastUsedDate];
    }
  }

  else
  {
    v15 = _UIDocumentLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = a1[4];
      v17 = v36[5];
      *buf = 138412546;
      v42 = v16;
      v43 = 2112;
      v44 = v17;
      _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_DEFAULT, "document: %@ failed with error: %@", buf, 0x16u);
    }

    [a1[4] handleError:v36[5] userInteractionPermitted:1];
    [a1[4] _unregisterAsFilePresenterIfNecessary];
  }

  if (a1[7])
  {
    v18 = _UIDocumentLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = a1[4];
      *buf = 138412290;
      v42 = v19;
      _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_DEFAULT, "document will perform opening completion handler on calling queue: %@", buf, 0xCu);
    }

    v20 = a1[4];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __40__UIDocument_openWithCompletionHandler___block_invoke_279;
    v23[3] = &unk_1E7105A20;
    v23[4] = v20;
    v24 = a1[7];
    v25 = &v31;
    [v20 _performBlock:v23 synchronouslyOnQueue:a1[5]];
  }

  v21 = a1[4];
  v22 = v21[10];
  v21[10] = 0;

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);
}

void __40__UIDocument_openWithCompletionHandler___block_invoke_274(void *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _UIDocumentLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    *buf = 138412290;
    v11 = v5;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "file coordination lock received, now reading document: %@", buf, 0xCu);
  }

  v6 = a1[4];
  v7 = *(a1[6] + 8);
  obj = *(v7 + 40);
  v8 = [v6 readFromURL:v3 error:&obj];

  objc_storeStrong((v7 + 40), obj);
  *(*(a1[5] + 8) + 24) = v8;
}

uint64_t __40__UIDocument_openWithCompletionHandler___block_invoke_276(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = _UIDocumentLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "document is updating file modification date on main thread: %@", &v7, 0xCu);
  }

  *(*(a1 + 32) + 136) = CFAbsoluteTimeGetCurrent();
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() _fileModificationDateForURL:*(a1 + 40)];
  [v4 setFileModificationDate:v5];

  return [*(a1 + 32) _updateLocalizedName];
}

void __40__UIDocument_openWithCompletionHandler___block_invoke_278(uint64_t a1)
{
  v2 = [*(a1 + 32) _userActivity];
  if (v2)
  {
    [UIApp _addDocument:*(a1 + 32) forUserActivity:v2];
  }

  [*(a1 + 32) _updateDefaultUserActivityBecomingCurrent:1];
}

uint64_t __40__UIDocument_openWithCompletionHandler___block_invoke_279(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = _UIDocumentLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "document is performing completion handler on calling queue: %@", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)_setFileURL:(id)l
{
  lCopy = l;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  ui_URLByResolvingSymlinksAndCopyingSecurityScope = [lCopy ui_URLByResolvingSymlinksAndCopyingSecurityScope];
  p_fileURL = &selfCopy->_fileURL;
  if (ui_URLByResolvingSymlinksAndCopyingSecurityScope != selfCopy->_fileURL)
  {
    if (selfCopy->_progressSubscriber)
    {
      [MEMORY[0x1E696AE38] _removeSubscriber:?];
    }

    if ((*&selfCopy->_docFlags & 0x2000) != 0)
    {
      [*p_fileURL stopAccessingSecurityScopedResource];
    }

    objc_storeStrong(&selfCopy->_fileURL, ui_URLByResolvingSymlinksAndCopyingSecurityScope);
    if (dyld_program_sdk_at_least())
    {
      if ([*p_fileURL startAccessingSecurityScopedResource])
      {
        v8 = 0x2000;
      }

      else
      {
        v8 = 0;
      }

      *&selfCopy->_docFlags = *&selfCopy->_docFlags & 0xDFFF | v8;
    }

    objc_initWeak(&location, selfCopy);
    v9 = MEMORY[0x1E696AE38];
    fileURL = selfCopy->_fileURL;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __26__UIDocument__setFileURL___block_invoke;
    v13[3] = &unk_1E7105A48;
    objc_copyWeak(&v14, &location);
    v11 = [v9 _addSubscriberForFileURL:fileURL withPublishingHandler:v13];
    progressSubscriber = selfCopy->_progressSubscriber;
    selfCopy->_progressSubscriber = v11;

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  objc_sync_exit(selfCopy);
  [(UIDocument *)selfCopy _updateConflictState];
}

id __26__UIDocument__setFileURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _progressPublished:v3];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __26__UIDocument__setFileURL___block_invoke_2;
  v8[3] = &unk_1E70F2F80;
  objc_copyWeak(&v10, (a1 + 32));
  v5 = v3;
  v9 = v5;
  v6 = [v8 copy];

  objc_destroyWeak(&v10);

  return v6;
}

void __26__UIDocument__setFileURL___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _progressUnpublished:*(a1 + 32)];
}

- (NSURL)fileURL
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_fileURL;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setFileType:(id)type
{
  typeCopy = type;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_fileType != typeCopy)
  {
    v5 = [(NSString *)typeCopy copy];
    fileType = selfCopy->_fileType;
    selfCopy->_fileType = v5;
  }

  objc_sync_exit(selfCopy);
}

- (NSString)fileType
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  fileType = selfCopy->_fileType;
  if (fileType)
  {
    v4 = fileType;
  }

  else
  {
    v5 = objc_opt_class();
    fileURL = [(UIDocument *)selfCopy fileURL];
    v8 = 0;
    v4 = [v5 _typeForContentsOfURL:fileURL error:&v8];
  }

  objc_sync_exit(selfCopy);

  return v4;
}

- (void)setFileModificationDate:(NSDate *)fileModificationDate
{
  v7 = fileModificationDate;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_fileModificationDate != v7)
  {
    v5 = [(NSDate *)v7 copy];
    v6 = selfCopy->_fileModificationDate;
    selfCopy->_fileModificationDate = v5;
  }

  objc_sync_exit(selfCopy);
}

- (NSDate)fileModificationDate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_fileModificationDate;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_updateLastUsedDate
{
  if (FileProviderLibraryCore())
  {
    fileURL = [(UIDocument *)self fileURL];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __33__UIDocument__updateLastUsedDate__block_invoke;
    v10[3] = &unk_1E7105A70;
    v10[4] = self;
    v4 = v10;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v5 = getFPUpdateLastUsedDateSymbolLoc_ptr;
    v15 = getFPUpdateLastUsedDateSymbolLoc_ptr;
    if (!getFPUpdateLastUsedDateSymbolLoc_ptr)
    {
      v10[5] = MEMORY[0x1E69E9820];
      v10[6] = 3221225472;
      v10[7] = __getFPUpdateLastUsedDateSymbolLoc_block_invoke;
      v10[8] = &unk_1E70F2F20;
      v11 = &v12;
      v6 = FileProviderLibrary_0();
      v7 = dlsym(v6, "FPUpdateLastUsedDate");
      *(v11[1] + 24) = v7;
      getFPUpdateLastUsedDateSymbolLoc_ptr = *(v11[1] + 24);
      v5 = v13[3];
    }

    _Block_object_dispose(&v12, 8);
    if (v5)
    {
      v5(fileURL, v4);
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _FPUpdateLastUsedDate(CFURLRef, void (^__strong)(CFErrorRef))"}];
      [currentHandler handleFailureInFunction:v9 file:@"UIDocument.m" lineNumber:64 description:{@"%s", dlerror()}];

      __break(1u);
    }
  }
}

void __33__UIDocument__updateLastUsedDate__block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = _UIDocumentLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = 138412546;
      v7 = a2;
      v8 = 2112;
      v9 = v5;
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "error %@ while updating the last used date on document %@", &v6, 0x16u);
    }
  }
}

- (BOOL)_isEditingTemporarilyDisabled
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = (*&selfCopy->_docFlags >> 7) & 1;
  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)_isEditingDisabledDueToPermissions
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = HIBYTE(*&selfCopy->_docFlags) & 1;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_setOpen:(BOOL)open
{
  openCopy = open;
  fileURL = [(UIDocument *)self fileURL];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  docFlags = selfCopy->_docFlags;
  v7 = ((docFlags & 2) == 0) ^ openCopy;
  if ((v7 & 1) == 0)
  {
    if (openCopy)
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }

    docFlags = docFlags & 0xFFFD | v8;
    *&selfCopy->_docFlags = docFlags;
  }

  v9 = v7 ^ 1;
  if (openCopy)
  {
    v10 = [MEMORY[0x1E696AC30] unresolvedConflictVersionsOfItemAtURL:fileURL];
    *&selfCopy->_docFlags = *&selfCopy->_docFlags & 0xEFFF | (([v10 count] != 0) << 12);

    v9 |= ((*&selfCopy->_docFlags ^ docFlags) & 0x1000) >> 12;
  }

  objc_sync_exit(selfCopy);

  [(UIDocument *)selfCopy _updatePermissionsState:openCopy];
  if (v9)
  {
    [(UIDocument *)selfCopy _sendStateChangedNotification];
  }
}

- (BOOL)_isOpen
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = (*&selfCopy->_docFlags >> 1) & 1;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_setInOpen:(BOOL)open
{
  openCopy = open;
  obj = self;
  objc_sync_enter(obj);
  if (openCopy)
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  *&obj->_docFlags = *&obj->_docFlags & 0xFFFB | v4;
  objc_sync_exit(obj);
}

- (BOOL)_isInOpen
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = (*&selfCopy->_docFlags >> 2) & 1;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_setHasSavingError:(BOOL)error
{
  errorCopy = error;
  obj = self;
  objc_sync_enter(obj);
  docFlags = obj->_docFlags;
  if ((((docFlags & 0x800) == 0) ^ errorCopy))
  {
    objc_sync_exit(obj);
  }

  else
  {
    if (errorCopy)
    {
      v5 = 2048;
    }

    else
    {
      v5 = 0;
    }

    *&obj->_docFlags = docFlags & 0xF7FF | v5;
    objc_sync_exit(obj);

    [(UIDocument *)obj _sendStateChangedNotification];
  }
}

- (BOOL)_hasSavingError
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = (*&selfCopy->_docFlags >> 11) & 1;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_setInConflict:(BOOL)conflict
{
  conflictCopy = conflict;
  obj = self;
  objc_sync_enter(obj);
  docFlags = obj->_docFlags;
  if ((((docFlags & 0x1000) == 0) ^ conflictCopy))
  {
    objc_sync_exit(obj);
  }

  else
  {
    if (conflictCopy)
    {
      v5 = 4096;
    }

    else
    {
      v5 = 0;
    }

    *&obj->_docFlags = docFlags & 0xEFFF | v5;
    objc_sync_exit(obj);

    [(UIDocument *)obj _sendStateChangedNotification];
  }
}

- (BOOL)_isInConflict
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = (*&selfCopy->_docFlags >> 12) & 1;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_sendStateChangedNotification
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = _UIDocumentLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "document will send state changed notification on main thread: %@", buf, 0xCu);
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__UIDocument__sendStateChangedNotification__block_invoke;
  v4[3] = &unk_1E70F3590;
  v4[4] = self;
  [(UIDocument *)self _performBlockSynchronouslyOnMainThread:v4];
}

void __43__UIDocument__sendStateChangedNotification__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = _UIDocumentLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "document is sending state changed notification on main thread: %@", &v5, 0xCu);
  }

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"UIDocumentStateChangedNotification" object:*(a1 + 32)];
}

- (UIDocumentState)documentState
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  docFlags = selfCopy->_docFlags;
  v4 = [(NSMutableSet *)selfCopy->_progresses count];
  v5 = (*&docFlags & 2) == 0;
  v6 = 8;
  if ((*&docFlags & 2) == 0)
  {
    v6 = 9;
  }

  if ((*&docFlags & 0x180) != 0)
  {
    v5 = v6;
  }

  v7 = v5 | (*&docFlags >> 11) & 2 | (*&docFlags >> 9) & 4;
  if (v4)
  {
    v8 = v7 | 0x10;
  }

  else
  {
    v8 = v7;
  }

  objc_sync_exit(selfCopy);

  return v8;
}

- (void)performAsynchronousFileAccessUsingBlock:(void *)block
{
  if (block)
  {
    fileAccessQueue = self->_fileAccessQueue;

    dispatch_async(fileAccessQueue, block);
  }

  else
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D940];
    v7 = NSStringFromSelector(a2);
    [v5 raise:v6 format:{@"must pass a non-nil block to %@", v7}];
  }
}

- (void)_lockFileAccessQueueAndPerformBlock:(id)block
{
  v16 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v7 = dispatch_get_current_queue();
  fileAccessQueue = self->_fileAccessQueue;

  if (has_internal_diagnostics)
  {
    if (v7 == fileAccessQueue)
    {
      goto LABEL_4;
    }

    v9 = __UIFaultDebugAssertLog();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_13;
    }

    v10 = NSStringFromSelector(a2);
    v14 = 138412290;
    v15 = v10;
    _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "%@ must be called on the fileAccessQueue", &v14, 0xCu);
LABEL_12:

LABEL_13:
    goto LABEL_4;
  }

  if (v7 != fileAccessQueue)
  {
    v12 = *(__UILogGetCategoryCachedImpl("Assert", &_lockFileAccessQueueAndPerformBlock____s_category) + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v9 = v12;
      v10 = NSStringFromSelector(a2);
      v14 = 138412290;
      v15 = v10;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "%@ must be called on the fileAccessQueue", &v14, 0xCu);
      goto LABEL_12;
    }
  }

LABEL_4:
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIDocument.m" lineNumber:1067 description:@"UIDocument bug: file access queue is being locked without an unlock handler"];
  }

  blockCopy[2](blockCopy);
  dispatch_semaphore_wait(self->_fileAccessSemaphore, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)_progressPublished:(id)published
{
  publishedCopy = published;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __33__UIDocument__progressPublished___block_invoke;
  v6[3] = &unk_1E70F35B8;
  v6[4] = self;
  v7 = publishedCopy;
  v5 = publishedCopy;
  [(UIDocument *)self _performBlockSynchronouslyOnMainThread:v6];
}

void __33__UIDocument__progressPublished___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v3 = [*(a1 + 32) progress];
  [*(*(a1 + 32) + 184) addObject:*(a1 + 40)];
  v4 = [*(a1 + 32) progress];

  objc_sync_exit(v2);
  if (v3 != v4)
  {
    v5 = *(a1 + 32);

    [v5 _sendStateChangedNotification];
  }
}

- (void)_progressUnpublished:(id)unpublished
{
  unpublishedCopy = unpublished;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__UIDocument__progressUnpublished___block_invoke;
  v6[3] = &unk_1E70F35B8;
  v6[4] = self;
  v7 = unpublishedCopy;
  v5 = unpublishedCopy;
  [(UIDocument *)self _performBlockSynchronouslyOnMainThread:v6];
}

void __35__UIDocument__progressUnpublished___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v3 = [*(*(a1 + 32) + 184) count];
  [*(*(a1 + 32) + 184) removeObject:*(a1 + 40)];
  LOBYTE(v3) = (v3 != 0) ^ ([*(*(a1 + 32) + 184) count] == 0);
  objc_sync_exit(v2);

  if ((v3 & 1) == 0)
  {
    v4 = *(a1 + 32);

    [v4 _sendStateChangedNotification];
  }
}

- (NSProgress)progress
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allObjects = [(NSMutableSet *)selfCopy->_progresses allObjects];
  objc_sync_exit(selfCopy);

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __22__UIDocument_progress__block_invoke_2;
  v7[3] = &unk_1E7105AB8;
  v8 = &__block_literal_global_291;
  v4 = [allObjects sortedArrayUsingComparator:v7];
  firstObject = [v4 firstObject];

  return firstObject;
}

uint64_t __22__UIDocument_progress__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 kind];
  v4 = [v3 isEqualToString:*MEMORY[0x1E696A888]];

  if (v4)
  {
    v5 = [v2 userInfo];
    v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E696A858]];

    if ([v6 isEqualToString:*MEMORY[0x1E696A840]])
    {
      if ([v2 isIndeterminate])
      {
        v4 = 1;
      }

      else
      {
        v4 = 2;
      }
    }

    else if ([v6 isEqualToString:*MEMORY[0x1E696A848]])
    {
      v4 = 3;
    }

    else if ([v6 isEqualToString:*MEMORY[0x1E696A870]])
    {
      v4 = 4;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

uint64_t __22__UIDocument_progress__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  v7 = a3;
  v8 = v6(v5, a2);
  v9 = (*(*(a1 + 32) + 16))();

  if (v8 < v9)
  {
    return -1;
  }

  else
  {
    return v9 < v8;
  }
}

+ (id)_customizationOfError:(id)error withDescription:(id)description recoverySuggestion:(id)suggestion recoveryAttempter:(id)attempter
{
  errorCopy = error;
  descriptionCopy = description;
  suggestionCopy = suggestion;
  attempterCopy = attempter;
  userInfo = [errorCopy userInfo];
  v14 = [userInfo mutableCopy];

  if (!v14)
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  [v14 setObject:errorCopy forKey:*MEMORY[0x1E696AA08]];
  if (descriptionCopy)
  {
    localizedDescription = descriptionCopy;
  }

  else
  {
    localizedDescription = [errorCopy localizedDescription];
    if (!localizedDescription)
    {
      goto LABEL_7;
    }
  }

  [v14 setObject:localizedDescription forKey:*MEMORY[0x1E696A578]];

LABEL_7:
  localizedFailureReason = [errorCopy localizedFailureReason];
  if (localizedFailureReason)
  {
    [v14 setObject:localizedFailureReason forKey:*MEMORY[0x1E696A588]];
  }

  if (suggestionCopy)
  {
    localizedRecoverySuggestion = suggestionCopy;
  }

  else
  {
    localizedRecoverySuggestion = [errorCopy localizedRecoverySuggestion];
    if (!localizedRecoverySuggestion)
    {
      goto LABEL_13;
    }
  }

  [v14 setObject:localizedRecoverySuggestion forKey:*MEMORY[0x1E696A598]];

LABEL_13:
  localizedRecoveryOptions = [errorCopy localizedRecoveryOptions];
  if (localizedRecoveryOptions)
  {
    [v14 setObject:localizedRecoveryOptions forKey:*MEMORY[0x1E696A590]];
  }

  if (attempterCopy)
  {
    recoveryAttempter = attempterCopy;
  }

  else
  {
    recoveryAttempter = [errorCopy recoveryAttempter];
    if (!recoveryAttempter)
    {
      goto LABEL_19;
    }
  }

  [v14 setObject:recoveryAttempter forKey:*MEMORY[0x1E696A8A8]];

LABEL_19:
  v20 = MEMORY[0x1E696ABC0];
  domain = [errorCopy domain];
  v22 = [v20 errorWithDomain:domain code:objc_msgSend(errorCopy userInfo:{"code"), v14}];

  return v22;
}

- (void)revertToContentsOfURL:(NSURL *)url completionHandler:(void *)completionHandler
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = url;
  v8 = completionHandler;
  if (![(UIDocument *)self _isOpen])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    fileURL = [(UIDocument *)self fileURL];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIDocument.m" lineNumber:1192 description:{@"attempt to revert document at URL (%@) to URL (%@) that is not yet open", fileURL, v7}];
  }

  v9 = _UIDocumentLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "document: %@ reverting to contents of URL: %@", buf, 0x16u);
  }

  [(UIDocument *)self _setFileURL:v7];
  [(UIDocument *)self _setEditingTemporarilyDisabled:1];
  *&self->_docFlags |= 8u;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__UIDocument_revertToContentsOfURL_completionHandler___block_invoke;
  v13[3] = &unk_1E70FE248;
  v13[4] = self;
  v14 = v8;
  v10 = v8;
  [(UIDocument *)self openWithCompletionHandler:v13];
}

uint64_t __54__UIDocument_revertToContentsOfURL_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = _UIDocumentLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    v6 = *(a1 + 32);
    if (a2)
    {
      v5 = @"YES";
    }

    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "document: %@ reverted successfully: %@", &v12, 0x16u);
  }

  *(*(a1 + 32) + 192) &= ~8u;
  if (a2)
  {
    [*(a1 + 32) setFileType:0];
    [*(a1 + 32) updateChangeCount:3];
    v7 = [*(a1 + 32) undoManager];
    v8 = [v7 isUndoRegistrationEnabled];

    v9 = [*(a1 + 32) undoManager];
    [v9 removeAllActions];

    if ((v8 & 1) == 0)
    {
      v10 = [*(a1 + 32) undoManager];
      [v10 disableUndoRegistration];
    }

    [*(a1 + 32) _setEditingTemporarilyDisabled:0];
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

- (BOOL)readFromURL:(NSURL *)url error:(NSError *)outError
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = url;
  v7 = _UIDocumentLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = self;
    _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "document performing readFromURL: %@", &buf, 0xCu);
  }

  if (outError)
  {
    *outError = 0;
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  if (![(NSURL *)v6 isFileURL])
  {
    v14 = MEMORY[0x1E695DF30];
    v8 = NSStringFromSelector(sel_readFromURL_error_);
    v9 = NSStringFromSelector(sel_loadFromContents_ofType_error_);
    [v14 raise:*MEMORY[0x1E695D930] format:{@"you must override %@ or %@ to support reading files", v8, v9}];
LABEL_20:

    goto LABEL_21;
  }

  v8 = [objc_alloc(MEMORY[0x1E696AC38]) initWithURL:v6 options:1 error:outError];
  if (v8)
  {
    v9 = [objc_opt_class() _typeForContentsOfURL:v6 error:outError];
    if (v9)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v27 = 0x3032000000;
      v28 = __Block_byref_object_copy__66;
      v29 = __Block_byref_object_dispose__66;
      v30 = 0;
      v10 = [(UIDocument *)self _readingProgressForURL:v6];
      if (dyld_program_sdk_at_least())
      {
        [v10 becomeCurrentWithPendingUnitCount:{objc_msgSend(v10, "totalUnitCount")}];
        [(UIDocument *)self _progressPublished:v10];
      }

      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __32__UIDocument_readFromURL_error___block_invoke;
      v17[3] = &unk_1E7105AE0;
      v20 = &v22;
      v17[4] = self;
      v8 = v8;
      v18 = v8;
      v9 = v9;
      v19 = v9;
      p_buf = &buf;
      openingQueue = self->_openingQueue;
      v12 = openingQueue;
      if (!openingQueue)
      {
        v12 = MEMORY[0x1E69E96A0];
        v13 = MEMORY[0x1E69E96A0];
      }

      [(UIDocument *)self _performBlock:v17 synchronouslyOnQueue:v12];
      if (!openingQueue)
      {
      }

      if (dyld_program_sdk_at_least())
      {
        [(UIDocument *)self _progressUnpublished:v10];
        [v10 resignCurrent];
      }

      if (outError)
      {
        *outError = *(*(&buf + 1) + 40);
      }

      _Block_object_dispose(&buf, 8);
    }

    goto LABEL_20;
  }

LABEL_21:

  v15 = *(v23 + 24);
  _Block_object_dispose(&v22, 8);

  return v15 & 1;
}

void __32__UIDocument_readFromURL_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) isRegularFile];
  v4 = *(a1 + 40);
  if (v3)
  {
    v4 = [*(a1 + 40) regularFileContents];
  }

  v5 = *(a1 + 48);
  v6 = *(*(a1 + 64) + 8);
  obj = *(v6 + 40);
  v7 = [v2 loadFromContents:v4 ofType:v5 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  *(*(*(a1 + 56) + 8) + 24) = v7;
  if (v3)
  {
  }
}

- (BOOL)loadFromContents:(id)contents ofType:(NSString *)typeName error:(NSError *)outError
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"%@ is a subclass responsibility but has not been overridden.", v7}];

  return 0;
}

+ (void)_finishWritingToURL:(id)l withTemporaryDirectoryURL:(id)rL newContentsURL:(id)uRL afterSuccess:(BOOL)success
{
  v19 = *MEMORY[0x1E69E9840];
  rLCopy = rL;
  uRLCopy = uRL;
  if (uRLCopy && !success)
  {
    v10 = objc_alloc_init(MEMORY[0x1E696AC08]);
    v14 = 0;
    v11 = [v10 removeItemAtURL:uRLCopy error:&v14];
    v12 = v14;
    if ((v11 & 1) == 0)
    {
      v13 = _UIDocumentLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v16 = uRLCopy;
        v17 = 2112;
        v18 = v12;
        _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_DEFAULT, "UIDocument could not delete the temporary item at %@. Here's the error:\n%@", buf, 0x16u);
      }
    }
  }

  [MEMORY[0x1E696AC38] _removeTemporaryDirectoryAtURL:rLCopy];
}

- (id)_presentableFileNameForSaveOperation:(int64_t)operation url:(id)url
{
  urlCopy = url;
  v6 = urlCopy;
  if (operation != 1 || (v11 = 0, [urlCopy getResourceValue:&v11 forKey:*MEMORY[0x1E695DC10] error:0], (stringByDeletingPathExtension = v11) == 0))
  {
    lastPathComponent = [v6 lastPathComponent];
    v9 = [lastPathComponent stringByReplacingOccurrencesOfString:@":" withString:@"/"];
    stringByDeletingPathExtension = [v9 stringByDeletingPathExtension];
  }

  return stringByDeletingPathExtension;
}

- (id)_readingProgressForURL:(id)l
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AE38];
  lCopy = l;
  v5 = [v3 alloc];
  currentProgress = [MEMORY[0x1E696AE38] currentProgress];
  v7 = *MEMORY[0x1E696A858];
  v12[0] = *MEMORY[0x1E696A880];
  v12[1] = v7;
  v8 = *MEMORY[0x1E696A860];
  v13[0] = lCopy;
  v13[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = [v5 initWithParent:currentProgress userInfo:v9];
  [v10 setKind:*MEMORY[0x1E696A888]];
  [v10 setTotalUnitCount:1];

  return v10;
}

- (id)_writingProgressForURL:(id)l indeterminate:(BOOL)indeterminate
{
  indeterminateCopy = indeterminate;
  v16[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AE38];
  lCopy = l;
  v7 = [v5 alloc];
  currentProgress = [MEMORY[0x1E696AE38] currentProgress];
  v9 = *MEMORY[0x1E696A858];
  v15[0] = *MEMORY[0x1E696A880];
  v15[1] = v9;
  v10 = *MEMORY[0x1E696A840];
  v16[0] = lCopy;
  v16[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v12 = [v7 initWithParent:currentProgress userInfo:v11];
  [v12 setKind:*MEMORY[0x1E696A888]];
  if (indeterminateCopy)
  {
    v13 = -1;
  }

  else
  {
    v13 = 1;
  }

  [v12 setTotalUnitCount:v13];

  return v12;
}

- (BOOL)writeContents:(id)contents andAttributes:(NSDictionary *)additionalFileAttributes safelyToURL:(NSURL *)url forSaveOperation:(UIDocumentSaveOperation)saveOperation error:(NSError *)outError
{
  v36 = *MEMORY[0x1E69E9840];
  v12 = contents;
  v13 = additionalFileAttributes;
  v14 = url;
  v15 = _UIDocumentLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_DEFAULT, "document performing writeContents:andAttributes:safelyToURL: %@", buf, 0xCu);
  }

  v16 = objc_opt_class();
  v17 = [MEMORY[0x1E696AC38] _temporaryDirectoryURLForWritingToURL:v14 error:outError];
  v18 = v17;
  if (v17)
  {
    v32 = v16;
    v33 = v13;
    v19 = MEMORY[0x1E695DFF8];
    path = [v17 path];
    lastPathComponent = [(NSURL *)v14 lastPathComponent];
    [path stringByAppendingPathComponent:lastPathComponent];
    v22 = saveOperation;
    v24 = v23 = v12;
    v25 = [v19 fileURLWithPath:v24 isDirectory:0];

    v12 = v23;
    v26 = v22;

    fileURL = [(UIDocument *)self fileURL];
    if ([(UIDocument *)self writeContents:v12 toURL:v25 forSaveOperation:v22 originalContentsURL:fileURL error:outError])
    {
      v28 = v32;
      v13 = v33;
      if (v33)
      {
        if (v26 == UIDocumentSaveForOverwriting)
        {
          v29 = [MEMORY[0x1E696AC38] _finishWritingToURL:v14 byTakingContentsFromItemAtURL:v25 addingAttributes:v33 usingTemporaryDirectoryAtURL:v18 backupFileName:0 error:outError];
        }

        else
        {
          v29 = [MEMORY[0x1E696AC38] _finishWritingToURL:v14 byMovingItemAtURL:v25 addingAttributes:v33 error:outError];
        }

        v30 = v29;
      }

      else
      {
        v30 = 0;
      }
    }

    else
    {

      v25 = 0;
      v30 = 0;
      v28 = v32;
      v13 = v33;
    }

    [v28 _finishWritingToURL:v14 withTemporaryDirectoryURL:v18 newContentsURL:v25 afterSuccess:v30];
  }

  else
  {
    LOBYTE(v30) = 0;
  }

  return v30;
}

- (BOOL)writeContents:(id)contents toURL:(NSURL *)url forSaveOperation:(UIDocumentSaveOperation)saveOperation originalContentsURL:(NSURL *)originalContentsURL error:(NSError *)outError
{
  v27 = *MEMORY[0x1E69E9840];
  v13 = contents;
  v14 = url;
  v15 = originalContentsURL;
  v16 = _UIDocumentLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_DEFAULT, "document performing writeContents:toURL: %@", buf, 0xCu);
  }

  if (![(NSURL *)v14 isFileURL])
  {
    v21 = MEMORY[0x1E695DF30];
    v22 = *MEMORY[0x1E695D930];
    v18 = NSStringFromSelector(a2);
    [v21 raise:v22 format:{@"%@ must be overridden for your application to support non-'file:' URLs.", v18}];
    v23 = 0;
    goto LABEL_18;
  }

  fileURL = [(UIDocument *)self fileURL];
  v18 = [(UIDocument *)self _writingProgressForURL:fileURL indeterminate:1];

  if (dyld_program_sdk_at_least())
  {
    [v18 becomeCurrentWithPendingUnitCount:-1];
    [(UIDocument *)self _progressPublished:v18];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (saveOperation == UIDocumentSaveForOverwriting)
    {
      v19 = v15;
    }

    else
    {
      v19 = 0;
    }

    v20 = [v13 writeToURL:v14 options:2 * (saveOperation == UIDocumentSaveForOverwriting) originalContentsURL:v19 error:outError];
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = [v13 writeToURL:v14 atomically:0];
LABEL_14:
    v23 = v20;
    goto LABEL_16;
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The default implementation of -[UIDocument writeContents:toURL:forSaveOperation:originalContentsURL:error: only understands contents of type NSFileWrapper or NSData, not %@. You must override one of the write methods to support custom content types", objc_opt_class()}];
  v23 = 0;
LABEL_16:
  if (dyld_program_sdk_at_least())
  {
    [(UIDocument *)self _progressUnpublished:v18];
    [v18 resignCurrent];
  }

LABEL_18:

  if (outError && !v23)
  {
    *outError = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:512 userInfo:0];
  }

  return v23;
}

- (NSDictionary)fileAttributesToWriteToURL:(NSURL *)url forSaveOperation:(UIDocumentSaveOperation)saveOperation error:(NSError *)outError
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (saveOperation != UIDocumentSaveForOverwriting)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [dictionary setObject:v7 forKey:*MEMORY[0x1E696A318]];
  }

  return dictionary;
}

+ (BOOL)_url:(id)_url matchesURL:(id)l
{
  _urlCopy = _url;
  lCopy = l;
  v7 = [lCopy isEqual:_urlCopy];
  v8 = v7;
  if (lCopy && _urlCopy && !v7)
  {
    v14 = 0;
    v9 = *MEMORY[0x1E695DB00];
    v10 = [_urlCopy getResourceValue:&v14 forKey:*MEMORY[0x1E695DB00] error:0];
    v11 = v14;
    if (v10)
    {
      v13 = 0;
      if ([lCopy getResourceValue:&v13 forKey:v9 error:0])
      {
        v8 = [v11 isEqual:v13];
      }
    }
  }

  return v8;
}

- (BOOL)_coordinateWritingItemAtURL:(id)l error:(id *)error byAccessor:(id)accessor
{
  v36 = *MEMORY[0x1E69E9840];
  lCopy = l;
  accessorCopy = accessor;
  v10 = objc_opt_class();
  fileURL = [(UIDocument *)self fileURL];
  LOBYTE(v10) = [v10 _url:fileURL matchesURL:lCopy];

  if ((v10 & 1) == 0)
  {
    *&self->_docFlags |= 0x400u;
  }

  v12 = [objc_alloc(MEMORY[0x1E696ABF8]) initWithFilePresenter:self];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  docFlags = self->_docFlags;
  v14 = _UIDocumentLog();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if ((docFlags & 0x400) != 0)
  {
    if (v15)
    {
      *buf = 138412546;
      selfCopy3 = self;
      v34 = 2112;
      v35 = lCopy;
      _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_DEFAULT, "document: %@ attempting coordinated writing for moving to new URL: %@", buf, 0x16u);
    }

    fileURL2 = [(UIDocument *)self fileURL];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __59__UIDocument__coordinateWritingItemAtURL_error_byAccessor___block_invoke;
    v25[3] = &unk_1E7105B08;
    v25[4] = self;
    v27[1] = &v28;
    v27[0] = accessorCopy;
    v26 = v12;
    [v26 coordinateWritingItemAtURL:fileURL2 options:2 writingItemAtURL:lCopy options:8 error:error byAccessor:v25];

    v16 = v27;
    v17 = &v26;
  }

  else
  {
    if (v15)
    {
      *buf = 138412290;
      selfCopy3 = self;
      _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_DEFAULT, "document attempting coordinated writing: %@", buf, 0xCu);
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __59__UIDocument__coordinateWritingItemAtURL_error_byAccessor___block_invoke_331;
    v22[3] = &unk_1E7105B30;
    v22[4] = self;
    v24[1] = &v28;
    v24[0] = accessorCopy;
    v23 = v12;
    [v23 coordinateWritingItemAtURL:lCopy options:0 error:error byAccessor:v22];
    v16 = v24;
    v17 = &v23;
  }

  if (v29[3])
  {
    v19 = 1;
  }

  else
  {
    v20 = _UIDocumentLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy3 = self;
      _os_log_impl(&dword_188A29000, v20, OS_LOG_TYPE_DEFAULT, "document failed to start coordinated writing: %@", buf, 0xCu);
    }

    (*(accessorCopy + 2))(accessorCopy, 0, 0);
    v19 = *(v29 + 24);
  }

  _Block_object_dispose(&v28, 8);

  return v19 & 1;
}

void __59__UIDocument__coordinateWritingItemAtURL_error_byAccessor___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _UIDocumentLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[4];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "document got coordinated writing lock, now writing: %@", &v7, 0xCu);
  }

  *(*(a1[7] + 8) + 24) = 1;
  (*(a1[6] + 16))();
}

void __59__UIDocument__coordinateWritingItemAtURL_error_byAccessor___block_invoke_331(void *a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _UIDocumentLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "document got coordinated writing lock, now writing: %@", &v6, 0xCu);
  }

  *(*(a1[7] + 8) + 24) = 1;
  (*(a1[6] + 16))();
}

- (id)contentsForType:(NSString *)typeName error:(NSError *)outError
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = _UIDocumentLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "document invoked default implementation of contentsForType:error: which only returns nil: %@", &v7, 0xCu);
  }

  return 0;
}

- (void)saveToURL:(NSURL *)url forSaveOperation:(UIDocumentSaveOperation)saveOperation completionHandler:(void *)completionHandler
{
  v49 = *MEMORY[0x1E69E9840];
  v8 = url;
  v9 = completionHandler;
  savingFileType = [(UIDocument *)self savingFileType];
  fileType = [(UIDocument *)self fileType];
  v12 = savingFileType;
  v13 = fileType;
  v14 = v13;
  if (v12 == v13)
  {

    goto LABEL_7;
  }

  if (v12 && v13)
  {
    v15 = [v12 isEqual:v13];

    if (!v15)
    {
      goto LABEL_9;
    }

LABEL_7:
    v16 = v8;
    goto LABEL_10;
  }

LABEL_9:
  v17 = [(UIDocument *)self fileNameExtensionForType:v12 saveOperation:saveOperation];
  uRLByDeletingPathExtension = [(NSURL *)v8 URLByDeletingPathExtension];
  v16 = [uRLByDeletingPathExtension URLByAppendingPathExtension:v17];

LABEL_10:
  v19 = _UIDocumentLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    selfCopy3 = self;
    v43 = 2112;
    v44 = v8;
    v45 = 2112;
    v46 = v12;
    v47 = 2112;
    v48 = v16;
    _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_DEFAULT, "document: %@ saving to URL: %@ with file type: %@, using final URL: %@", buf, 0x2Au);
  }

  v30 = v8;

  v40 = 0;
  v20 = [(UIDocument *)self contentsForType:v12 error:&v40];
  v21 = v40;
  v22 = dispatch_get_current_queue();
  if (v22 == self->_fileAccessQueue)
  {
    v25 = MEMORY[0x1E69E96A0];
    v26 = MEMORY[0x1E69E96A0];

    v22 = v25;
    if (v21)
    {
      goto LABEL_14;
    }

LABEL_21:
    [(UIDocument *)self _registerAsFilePresenterIfNecessary];
    undoManager = [(UIDocument *)self undoManager];
    [undoManager _processEndOfEventNotification:0];

    v28 = [(UIDocument *)self changeCountTokenForSaveOperation:saveOperation];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __59__UIDocument_saveToURL_forSaveOperation_completionHandler___block_invoke_332;
    v31[3] = &unk_1E7105BD0;
    v31[4] = self;
    v32 = v16;
    v37 = saveOperation;
    v33 = v20;
    v34 = v28;
    v36 = v9;
    v35 = v22;
    v29 = v28;
    [(UIDocument *)self performAsynchronousFileAccessUsingBlock:v31];

    goto LABEL_22;
  }

  if (!v21)
  {
    goto LABEL_21;
  }

LABEL_14:
  v23 = _UIDocumentLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy3 = self;
    v43 = 2112;
    v44 = v21;
    _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_DEFAULT, "document: %@ got error from contentsForType:error: %@", buf, 0x16u);
  }

  [(UIDocument *)self handleError:v21 userInteractionPermitted:1];
  if (v9)
  {
    v24 = _UIDocumentLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy3 = self;
      _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_DEFAULT, "document will perform saving completion handler on completion handler queue: %@", buf, 0xCu);
    }

    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __59__UIDocument_saveToURL_forSaveOperation_completionHandler___block_invoke;
    v38[3] = &unk_1E70F37C0;
    v38[4] = self;
    v39 = v9;
    [(UIDocument *)self _performBlock:v38 synchronouslyOnQueue:v22];
  }

LABEL_22:
}

uint64_t __59__UIDocument_saveToURL_forSaveOperation_completionHandler___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = _UIDocumentLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "document is performing saving completion handler on completion handler queue: %@", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

void __59__UIDocument_saveToURL_forSaveOperation_completionHandler___block_invoke_332(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) fileURL];
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__66;
  v31 = __Block_byref_object_dispose__66;
  v32 = 0;
  v4 = *v2;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __59__UIDocument_saveToURL_forSaveOperation_completionHandler___block_invoke_2;
  v18[3] = &unk_1E7105BA8;
  v5 = *(a1 + 80);
  v18[4] = v4;
  v25 = v5;
  v26 = 0;
  v6 = *(a1 + 40);
  v19 = *(a1 + 48);
  v20 = *(a1 + 56);
  v7 = v3;
  v21 = v7;
  v22 = *(a1 + 40);
  v23 = &v33;
  v24 = &v27;
  [v4 _coordinateWritingItemAtURL:v6 error:&v26 byAccessor:v18];
  v8 = v26;
  if (v8)
  {
    [*(a1 + 32) handleError:v8 userInteractionPermitted:1];
  }

  else if (*(v34 + 24) == 1)
  {
    [*(a1 + 32) _setOpen:1];
    [*(a1 + 32) _updateLastUsedDate];
  }

  else
  {
    v9 = _UIDocumentLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = v28[5];
      *buf = 138412546;
      v38 = v10;
      v39 = 2112;
      v40 = v11;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "document: %@ hit writing error: %@", buf, 0x16u);
    }

    [*(a1 + 32) handleError:v28[5] userInteractionPermitted:1];
  }

  if (*(a1 + 72))
  {
    v12 = _UIDocumentLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      *buf = 138412290;
      v38 = v13;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEFAULT, "document will perform saving completion handler on completion handler queue: %@", buf, 0xCu);
    }

    v14 = *(a1 + 32);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __59__UIDocument_saveToURL_forSaveOperation_completionHandler___block_invoke_337;
    v15[3] = &unk_1E7105A20;
    v15[4] = v14;
    v16 = *(a1 + 72);
    v17 = &v33;
    [v14 _performBlock:v15 synchronouslyOnQueue:*(a1 + 64)];
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);
}

void __59__UIDocument_saveToURL_forSaveOperation_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __59__UIDocument_saveToURL_forSaveOperation_completionHandler___block_invoke_3;
    aBlock[3] = &unk_1E7105B58;
    aBlock[4] = *(a1 + 32);
    v8 = v6;
    v9 = *(a1 + 88);
    v25 = v8;
    v27 = v9;
    v26 = *(a1 + 40);
    v10 = _Block_copy(aBlock);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __59__UIDocument_saveToURL_forSaveOperation_completionHandler___block_invoke_4;
    v17[3] = &unk_1E7105B80;
    v17[4] = *(a1 + 32);
    v11 = v8;
    v12 = *(a1 + 88);
    v18 = v11;
    v23 = v12;
    v19 = *(a1 + 48);
    v20 = *(a1 + 56);
    v21 = *(a1 + 64);
    v22 = v5;
    v13 = _Block_copy(v17);
    v14 = *(*(a1 + 80) + 8);
    obj = *(v14 + 40);
    v15 = v10[2](v10, &obj);
    objc_storeStrong((v14 + 40), obj);
    *(*(*(a1 + 72) + 8) + 24) = v15;
    (*(v13 + 2))(v13, *(*(*(a1 + 72) + 8) + 24), *(*(*(a1 + 80) + 8) + 40));
  }
}

uint64_t __59__UIDocument_saveToURL_forSaveOperation_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [v4 fileURL];
  v6 = [v4 _writingProgressForURL:v5 indeterminate:0];

  if (dyld_program_sdk_at_least())
  {
    [v6 becomeCurrentWithPendingUnitCount:1];
    [*(a1 + 32) _progressPublished:v6];
  }

  v7 = [*(a1 + 32) fileAttributesToWriteToURL:*(a1 + 40) forSaveOperation:*(a1 + 56) error:a2];
  v8 = [*(a1 + 32) writeContents:*(a1 + 48) andAttributes:v7 safelyToURL:*(a1 + 40) forSaveOperation:*(a1 + 56) error:a2];
  if (dyld_program_sdk_at_least())
  {
    [*(a1 + 32) _progressUnpublished:v6];
    [v6 resignCurrent];
  }

  return v8;
}

void __59__UIDocument_saveToURL_forSaveOperation_completionHandler___block_invoke_4(uint64_t a1, int a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 192);
  *(v2 + 192) = v3 & 0xFBFF;
  if (a2)
  {
    v5 = v3 & 0x400;
    v6 = (v3 >> 10) & 1;
    v7 = _UIDocumentLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138412290;
      v22 = v8;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "document will finish saving on main thread: %@", buf, 0xCu);
    }

    v9 = *(a1 + 32);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __59__UIDocument_saveToURL_forSaveOperation_completionHandler___block_invoke_334;
    v16[3] = &unk_1E7101EF0;
    v16[4] = v9;
    v10 = *(a1 + 40);
    v11 = *(a1 + 80);
    v17 = v10;
    v19 = v11;
    v18 = *(a1 + 48);
    v20 = v6;
    [v9 _performBlockSynchronouslyOnMainThread:v16];
    if (v5)
    {
      v12 = objc_alloc_init(MEMORY[0x1E696AC08]);
      [v12 removeItemAtURL:*(a1 + 56) error:0];
      v13 = _UIDocumentLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 32);
        v15 = *(a1 + 64);
        *buf = 138412546;
        v22 = v14;
        v23 = 2112;
        v24 = v15;
        _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_DEFAULT, "document: %@ did move to URL: %@", buf, 0x16u);
      }

      [*(a1 + 72) itemAtURL:*(a1 + 56) didMoveToURL:*(a1 + 64)];
    }
  }
}

void __59__UIDocument_saveToURL_forSaveOperation_completionHandler___block_invoke_334(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = _UIDocumentLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "document is finishing saving on main thread: %@", &v4, 0xCu);
  }

  [*(a1 + 32) _finishSavingToURL:*(a1 + 40) forSaveOperation:*(a1 + 56) changeCount:*(a1 + 48)];
  *(*(a1 + 32) + 136) = CFAbsoluteTimeGetCurrent();
  if (*(a1 + 64) == 1)
  {
    [*(a1 + 32) _updateDefaultUserActivityBecomingCurrent:1];
  }
}

uint64_t __59__UIDocument_saveToURL_forSaveOperation_completionHandler___block_invoke_337(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = _UIDocumentLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "document is performing saving completion handler on completion handler queue: %@", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)_finishSavingToURL:(id)l forSaveOperation:(int64_t)operation changeCount:(id)count
{
  lCopy = l;
  countCopy = count;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E695DA98], *MEMORY[0x1E695DC10], 0}];
  v10 = [lCopy resourceValuesForKeys:v9 error:0];

  v11 = objc_opt_class();
  if (operation <= 1)
  {
    v12 = v11;
    [(UIDocument *)self _setFileURL:lCopy];
    [(UIDocument *)self setFileType:0];
    v13 = [v12 _fileModificationDateForURL:lCopy];
    [(UIDocument *)self setFileModificationDate:v13];

    [(UIDocument *)self _updateLocalizedName];
    [(UIDocument *)self updateChangeCountWithToken:countCopy forSaveOperation:operation];
  }
}

+ (void)_autosavingTimerDidFireSoContinue:(id)continue
{
  userInfo = [continue userInfo];
  userInfo[2]();
}

- (void)_autosavingCompletedSuccessfully:(BOOL)successfully
{
  *&self->_docFlags &= ~0x10u;
  if (successfully)
  {
    if ([(UIDocument *)self hasUnsavedChanges])
    {
      [(UIDocument *)self _scheduleAutosaving];
    }

    [(UIDocument *)self _updateLastUsedDate];
  }
}

- (void)_rescheduleAutosaving
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = _UIDocumentLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "document is rescheduling autosaving: %@", &v9, 0xCu);
  }

  if ((*&self->_docFlags & 0x10) == 0 && [(UIDocument *)self hasUnsavedChanges])
  {
    v4 = self->_lastSaveTime - CFAbsoluteTimeGetCurrent() + 300.0;
    if (v4 <= 0.0)
    {
      *&self->_docFlags |= 0x10u;
      [(UIDocument *)self _autosaveWithCompletionHandler:0];
    }

    else
    {
      v5 = v4 / 300.0;
      if (v4 / 300.0 >= 0.5)
      {
        [(UIDocument *)self _autosavingDelay];
      }

      else if (v5 >= 0.25)
      {
        [(UIDocument *)self _autosavingDelay];
        v7 = v8 * 0.5;
      }

      else
      {
        [(UIDocument *)self _autosavingDelay];
        v7 = v6 * 0.125;
        if (v5 < 0.125 && v7 >= v4)
        {
          v7 = v4;
        }
      }

      [(UIDocument *)self _scheduleAutosavingAfterDelay:1 reset:v7];
    }
  }
}

- (void)_scheduleAutosavingAfterDelay:(double)delay reset:(BOOL)reset
{
  v24 = *MEMORY[0x1E69E9840];
  if ((*&self->_docFlags & 0x10) != 0 || ((v5 = reset, v7 = [(UIDocument *)self hasUnsavedChanges], delay < 1.79769313e308) ? (v8 = !v7) : (v8 = 1), v8))
  {
    if (self->_autosavingTimer)
    {
      v9 = _UIDocumentLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy2 = self;
        _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "document is unscheduling autosaving: %@", buf, 0xCu);
      }

      [(NSTimer *)self->_autosavingTimer invalidate];
      autosavingTimer = self->_autosavingTimer;
      self->_autosavingTimer = 0;
    }
  }

  else
  {
    v11 = self->_autosavingTimer;
    if (!v11)
    {
      goto LABEL_16;
    }

    if (v5)
    {
      [(NSTimer *)v11 invalidate];
      v12 = self->_autosavingTimer;
      self->_autosavingTimer = 0;
    }

    else
    {
      [(UIDocument *)self _rescheduleAutosaving];
    }

    if (!self->_autosavingTimer)
    {
LABEL_16:
      v13 = _UIDocumentLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        selfCopy2 = self;
        v22 = 2048;
        delayCopy = delay;
        _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_DEFAULT, "document: %@ scheduling autosaving with delay: %f", buf, 0x16u);
      }

      v14 = MEMORY[0x1E695DFF0];
      v15 = objc_opt_class();
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __50__UIDocument__scheduleAutosavingAfterDelay_reset___block_invoke;
      v19[3] = &unk_1E70F3590;
      v19[4] = self;
      v16 = [v19 copy];
      v17 = [v14 scheduledTimerWithTimeInterval:v15 target:sel__autosavingTimerDidFireSoContinue_ selector:v16 userInfo:0 repeats:delay];
      v18 = self->_autosavingTimer;
      self->_autosavingTimer = v17;
    }
  }
}

uint64_t __50__UIDocument__scheduleAutosavingAfterDelay_reset___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 128);
  *(v2 + 128) = 0;

  *(*(a1 + 32) + 192) |= 0x10u;
  v4 = *(a1 + 32);

  return [v4 _autosaveWithCompletionHandler:0];
}

- (void)_scheduleAutosaving
{
  [(UIDocument *)self _autosavingDelay];

  [(UIDocument *)self _scheduleAutosavingAfterDelay:0 reset:?];
}

- (void)_saveUnsavedChangesWithCompletionHandler:(id)handler
{
  v16 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = _UIDocumentLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "document will save if necessary: %@", buf, 0xCu);
  }

  v6 = dispatch_get_current_queue();
  if (v6 == self->_fileAccessQueue)
  {
    v7 = MEMORY[0x1E69E96A0];
    v8 = MEMORY[0x1E69E96A0];

    v6 = v7;
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__UIDocument__saveUnsavedChangesWithCompletionHandler___block_invoke;
  v11[3] = &unk_1E70F6150;
  v12 = v6;
  v13 = handlerCopy;
  v11[4] = self;
  v9 = v6;
  v10 = handlerCopy;
  [(UIDocument *)self performAsynchronousFileAccessUsingBlock:v11];
}

void __55__UIDocument__saveUnsavedChangesWithCompletionHandler___block_invoke(uint64_t a1)
{
  v52 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) hasUnsavedChanges];
  v3 = _UIDocumentLog();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = *(a1 + 32);
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v5;
      _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "document has unsaved changes and will now save: %@", &buf, 0xCu);
    }

    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v42 = 0;
    v6 = [MEMORY[0x1E6963608] defaultWorkspace];
    v7 = [v6 isCurrentProcessEligibleForReadOnlyDocumentOpenBehavior];

    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x1E696ABF8]) initWithFilePresenter:*(a1 + 32)];
      v9 = [*(a1 + 32) fileURL];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __55__UIDocument__saveUnsavedChangesWithCompletionHandler___block_invoke_342;
      v38[3] = &unk_1E7105BF8;
      v38[4] = *(a1 + 32);
      v38[5] = &v39;
      [v8 coordinateReadingItemAtURL:v9 options:1 error:0 byAccessor:v38];
    }

    if (*(v40 + 24) == 1)
    {
      v10 = _UIDocumentLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v11;
        _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEFAULT, "document is readonly and will be imported now: %@", &buf, 0xCu);
      }

      v43 = 0;
      v44 = &v43;
      v45 = 0x2050000000;
      v12 = qword_1ED49DA68;
      v46 = qword_1ED49DA68;
      if (!qword_1ED49DA68)
      {
        *&buf = MEMORY[0x1E69E9820];
        *(&buf + 1) = 3221225472;
        v49 = __getDOCImportToDefaultLocationSupportClass_block_invoke;
        v50 = &unk_1E70F2F20;
        v51 = &v43;
        __getDOCImportToDefaultLocationSupportClass_block_invoke(&buf);
        v12 = v44[3];
      }

      v13 = v12;
      _Block_object_dispose(&v43, 8);
      v14 = [*(a1 + 32) fileURL];
      v37 = 0;
      v15 = [v12 _spi_importDocumentAtURL:v14 error:&v37];
      v16 = v37;

      if (!v15)
      {
        v26 = _UIDocumentLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v16;
          _os_log_impl(&dword_188A29000, v26, OS_LOG_TYPE_DEFAULT, "failed to import document: %@", &buf, 0xCu);
        }

        v27 = *(a1 + 48);
        if (v27)
        {
          v28 = *(a1 + 32);
          v33[0] = MEMORY[0x1E69E9820];
          v33[1] = 3221225472;
          v33[2] = __55__UIDocument__saveUnsavedChangesWithCompletionHandler___block_invoke_345;
          v33[3] = &unk_1E70F0F78;
          v34 = v27;
          [v28 _performBlock:v33 synchronouslyOnQueue:*(a1 + 40)];
        }

        goto LABEL_14;
      }

      v17 = [*(a1 + 32) presentedItemOperationQueue];
      v18 = MEMORY[0x1E696AAE0];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __55__UIDocument__saveUnsavedChangesWithCompletionHandler___block_invoke_344;
      v35[3] = &unk_1E70F35B8;
      v35[4] = *(a1 + 32);
      v19 = v15;
      v36 = v19;
      v20 = [v18 blockOperationWithBlock:v35];
      v47 = v20;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
      [v17 addOperations:v21 waitUntilFinished:1];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__UIDocument__saveUnsavedChangesWithCompletionHandler___block_invoke_2;
    block[3] = &unk_1E70F37C0;
    v22 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v32 = *(a1 + 48);
    dispatch_async(v22, block);

LABEL_14:
    _Block_object_dispose(&v39, 8);
    return;
  }

  if (v4)
  {
    v23 = *(a1 + 32);
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v23;
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "document is skipping saving because there are no unsaved changes: %@", &buf, 0xCu);
  }

  v24 = *(a1 + 48);
  if (v24)
  {
    v25 = *(a1 + 32);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __55__UIDocument__saveUnsavedChangesWithCompletionHandler___block_invoke_346;
    v29[3] = &unk_1E70F0F78;
    v30 = v24;
    [v25 _performBlock:v29 synchronouslyOnQueue:*(a1 + 40)];
  }
}

void __55__UIDocument__saveUnsavedChangesWithCompletionHandler___block_invoke_342(uint64_t a1)
{
  v4 = objc_opt_new();
  v2 = [*(a1 + 32) fileURL];
  v3 = [v2 path];
  *(*(*(a1 + 40) + 8) + 24) = [v4 isWritableFileAtPath:v3] ^ 1;
}

uint64_t __55__UIDocument__saveUnsavedChangesWithCompletionHandler___block_invoke_344(uint64_t a1)
{
  [*(a1 + 32) presentedItemDidMoveToURL:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 presentedItemDidMoveToWritableLocation];
}

void __55__UIDocument__saveUnsavedChangesWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 fileURL];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__UIDocument__saveUnsavedChangesWithCompletionHandler___block_invoke_3;
  v5[3] = &unk_1E70FE248;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v2 saveToURL:v3 forSaveOperation:1 completionHandler:v5];
}

uint64_t __55__UIDocument__saveUnsavedChangesWithCompletionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__UIDocument__saveUnsavedChangesWithCompletionHandler___block_invoke_4;
  v6[3] = &unk_1E70F35E0;
  v6[4] = v4;
  v7 = a2;
  [v4 _performBlockSynchronouslyOnMainThread:v6];
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

- (void)_autosaveWithCompletionHandler:(id)handler
{
  v11 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = _UIDocumentLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "document is invoking autosaving and waiting for completion handler: %@", buf, 0xCu);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__UIDocument__autosaveWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E70FE248;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(UIDocument *)self autosaveWithCompletionHandler:v7];
}

uint64_t __45__UIDocument__autosaveWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = _UIDocumentLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "document autosaving has completed and completion handler is now invoked: %@", &v7, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

- (void)closeWithCompletionHandler:(void *)completionHandler
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = completionHandler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  docFlags = selfCopy->_docFlags;
  if ((docFlags & 3) == 2)
  {
    *&selfCopy->_docFlags = docFlags | 1;
    v7 = _UIDocumentLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = selfCopy;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "document now closing: %@", buf, 0xCu);
    }

    _userActivity = [(UIDocument *)selfCopy _userActivity];
    if (_userActivity)
    {
      [UIApp _removeDocument:selfCopy forUserActivity:_userActivity];
    }

    autosavingTimer = selfCopy->_autosavingTimer;
    if (autosavingTimer)
    {
      [(NSTimer *)autosavingTimer invalidate];
      v10 = selfCopy->_autosavingTimer;
      selfCopy->_autosavingTimer = 0;
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __41__UIDocument_closeWithCompletionHandler___block_invoke;
    v11[3] = &unk_1E70FE248;
    v11[4] = selfCopy;
    v12 = v4;
    [(UIDocument *)selfCopy _saveUnsavedChangesWithCompletionHandler:v11];
  }

  objc_sync_exit(selfCopy);
}

uint64_t __41__UIDocument_closeWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _unregisterAsFilePresenterIfNecessary];
  [*(a1 + 32) _setOpen:0];
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  *(*(a1 + 32) + 192) &= ~1u;
  objc_sync_exit(v2);

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (BOOL)_hasUnsavedChanges
{
  differenceSinceSaving = [(UIDocument *)self differenceSinceSaving];
  if ([differenceSinceSaving generationCount])
  {
    v4 = 1;
  }

  else
  {
    differenceSinceSaving2 = [(UIDocument *)self differenceSinceSaving];
    v4 = [differenceSinceSaving2 changeCount] != 0;
  }

  return v4;
}

- (void)updateChangeCount:(UIDocumentChangeKind)change
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = _UIDocumentLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 138412546;
    selfCopy = self;
    v30 = 2048;
    v31 = change;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "document: %@ updating change count with change type: %ld", &v28, 0x16u);
  }

  if (change > UIDocumentChangeUndone)
  {
    if (change != UIDocumentChangeRedone)
    {
      if (change == UIDocumentChangeCleared)
      {
        differenceSinceSaving = [(UIDocument *)self differenceSinceSaving];
        [differenceSinceSaving setGenerationCount:0];

        differenceSinceSaving2 = [(UIDocument *)self differenceSinceSaving];
        [differenceSinceSaving2 setChangeCount:0];

        differenceDueToRecentChanges = [(UIDocument *)self differenceDueToRecentChanges];
        [differenceDueToRecentChanges setGenerationCount:0];

        differenceDueToRecentChanges2 = [(UIDocument *)self differenceDueToRecentChanges];
        differenceSinceSaving7 = differenceDueToRecentChanges2;
        v9 = 0;
LABEL_22:
        [differenceDueToRecentChanges2 setChangeCount:v9];

        goto LABEL_23;
      }

      goto LABEL_23;
    }

    differenceDueToRecentChanges3 = [(UIDocument *)self differenceDueToRecentChanges];
    [differenceDueToRecentChanges3 setChangeCount:{objc_msgSend(differenceDueToRecentChanges3, "changeCount") + 1}];

    differenceSincePreservingPreviousVersion = [(UIDocument *)self differenceSincePreservingPreviousVersion];
    [differenceSincePreservingPreviousVersion setChangeCount:{objc_msgSend(differenceSincePreservingPreviousVersion, "changeCount") + 1}];

    differenceSinceSaving3 = [(UIDocument *)self differenceSinceSaving];
LABEL_20:
    differenceSinceSaving7 = differenceSinceSaving3;
    v9 = [differenceSinceSaving3 changeCount] + 1;
    goto LABEL_21;
  }

  if (change == UIDocumentChangeDone)
  {
    if (![(UIDocument *)self _hasUnsavedChanges])
    {
      self->_lastSaveTime = CFAbsoluteTimeGetCurrent();
    }

    differenceSinceSaving4 = [(UIDocument *)self differenceSinceSaving];
    changeCount = [differenceSinceSaving4 changeCount];

    if (changeCount < 0)
    {
      differenceSinceSaving5 = [(UIDocument *)self differenceSinceSaving];
      [differenceSinceSaving5 setGenerationCount:{objc_msgSend(differenceSinceSaving5, "generationCount") + 1}];
    }

    differenceSinceSaving6 = [(UIDocument *)self differenceSinceSaving];
    [differenceSinceSaving6 setChangeCount:{objc_msgSend(differenceSinceSaving6, "changeCount") + 1}];

    differenceDueToRecentChanges4 = [(UIDocument *)self differenceDueToRecentChanges];
    changeCount2 = [differenceDueToRecentChanges4 changeCount];

    if (changeCount2 < 0)
    {
      differenceDueToRecentChanges5 = [(UIDocument *)self differenceDueToRecentChanges];
      [differenceDueToRecentChanges5 setGenerationCount:{objc_msgSend(differenceDueToRecentChanges5, "generationCount") + 1}];
    }

    differenceDueToRecentChanges6 = [(UIDocument *)self differenceDueToRecentChanges];
    [differenceDueToRecentChanges6 setChangeCount:{objc_msgSend(differenceDueToRecentChanges6, "changeCount") + 1}];

    differenceSincePreservingPreviousVersion2 = [(UIDocument *)self differenceSincePreservingPreviousVersion];
    changeCount3 = [differenceSincePreservingPreviousVersion2 changeCount];

    if (changeCount3 < 0)
    {
      differenceSincePreservingPreviousVersion3 = [(UIDocument *)self differenceSincePreservingPreviousVersion];
      [differenceSincePreservingPreviousVersion3 setGenerationCount:{objc_msgSend(differenceSincePreservingPreviousVersion3, "generationCount") + 1}];
    }

    differenceSinceSaving3 = [(UIDocument *)self differenceSincePreservingPreviousVersion];
    goto LABEL_20;
  }

  if (change == UIDocumentChangeUndone)
  {
    differenceDueToRecentChanges7 = [(UIDocument *)self differenceDueToRecentChanges];
    [differenceDueToRecentChanges7 setChangeCount:{objc_msgSend(differenceDueToRecentChanges7, "changeCount") - 1}];

    differenceSincePreservingPreviousVersion4 = [(UIDocument *)self differenceSincePreservingPreviousVersion];
    [differenceSincePreservingPreviousVersion4 setChangeCount:{objc_msgSend(differenceSincePreservingPreviousVersion4, "changeCount") - 1}];

    differenceSinceSaving7 = [(UIDocument *)self differenceSinceSaving];
    v9 = [differenceSinceSaving7 changeCount] - 1;
LABEL_21:
    differenceDueToRecentChanges2 = differenceSinceSaving7;
    goto LABEL_22;
  }

LABEL_23:
  [(UIDocument *)self _scheduleAutosaving];
}

- (id)changeCountTokenForSaveOperation:(UIDocumentSaveOperation)saveOperation
{
  v5 = objc_alloc_init(NSDocumentDifferenceSizeTriple);
  differenceDueToRecentChanges = [(UIDocument *)self differenceDueToRecentChanges];
  generationCount = [differenceDueToRecentChanges generationCount];
  dueToRecentChangesBeforeSaving = [(NSDocumentDifferenceSizeTriple *)v5 dueToRecentChangesBeforeSaving];
  [dueToRecentChangesBeforeSaving setGenerationCount:generationCount];

  differenceDueToRecentChanges2 = [(UIDocument *)self differenceDueToRecentChanges];
  changeCount = [differenceDueToRecentChanges2 changeCount];
  dueToRecentChangesBeforeSaving2 = [(NSDocumentDifferenceSizeTriple *)v5 dueToRecentChangesBeforeSaving];
  [dueToRecentChangesBeforeSaving2 setChangeCount:changeCount];

  differenceSincePreservingPreviousVersion = [(UIDocument *)self differenceSincePreservingPreviousVersion];
  generationCount2 = [differenceSincePreservingPreviousVersion generationCount];
  betweenPreservingPreviousVersionAndSaving = [(NSDocumentDifferenceSizeTriple *)v5 betweenPreservingPreviousVersionAndSaving];
  [betweenPreservingPreviousVersionAndSaving setGenerationCount:generationCount2];

  differenceSincePreservingPreviousVersion2 = [(UIDocument *)self differenceSincePreservingPreviousVersion];
  changeCount2 = [differenceSincePreservingPreviousVersion2 changeCount];
  betweenPreservingPreviousVersionAndSaving2 = [(NSDocumentDifferenceSizeTriple *)v5 betweenPreservingPreviousVersionAndSaving];
  [betweenPreservingPreviousVersionAndSaving2 setChangeCount:changeCount2];

  if (saveOperation > UIDocumentSaveForOverwriting)
  {
    betweenPreviousSavingAndSaving = [(NSDocumentDifferenceSizeTriple *)v5 betweenPreviousSavingAndSaving];
    [betweenPreviousSavingAndSaving setGenerationCount:0];

    betweenPreviousSavingAndSaving2 = [(NSDocumentDifferenceSizeTriple *)v5 betweenPreviousSavingAndSaving];
    [betweenPreviousSavingAndSaving2 setChangeCount:0];
  }

  else
  {
    differenceSinceSaving = [(UIDocument *)self differenceSinceSaving];
    generationCount3 = [differenceSinceSaving generationCount];
    betweenPreviousSavingAndSaving3 = [(NSDocumentDifferenceSizeTriple *)v5 betweenPreviousSavingAndSaving];
    [betweenPreviousSavingAndSaving3 setGenerationCount:generationCount3];

    betweenPreviousSavingAndSaving2 = [(UIDocument *)self differenceSinceSaving];
    changeCount3 = [betweenPreviousSavingAndSaving2 changeCount];
    betweenPreviousSavingAndSaving4 = [(NSDocumentDifferenceSizeTriple *)v5 betweenPreviousSavingAndSaving];
    [betweenPreviousSavingAndSaving4 setChangeCount:changeCount3];
  }

  return v5;
}

- (void)updateChangeCountWithToken:(id)changeCountToken forSaveOperation:(UIDocumentSaveOperation)saveOperation
{
  if (saveOperation <= UIDocumentSaveForOverwriting)
  {
    v5 = changeCountToken;
    differenceSinceSaving = [(UIDocument *)self differenceSinceSaving];
    betweenPreviousSavingAndSaving = [v5 betweenPreviousSavingAndSaving];
    [differenceSinceSaving setGenerationCount:{objc_msgSend(differenceSinceSaving, "generationCount") - objc_msgSend(betweenPreviousSavingAndSaving, "generationCount")}];

    differenceSinceSaving2 = [(UIDocument *)self differenceSinceSaving];
    betweenPreviousSavingAndSaving2 = [v5 betweenPreviousSavingAndSaving];
    [differenceSinceSaving2 setChangeCount:{objc_msgSend(differenceSinceSaving2, "changeCount") - objc_msgSend(betweenPreviousSavingAndSaving2, "changeCount")}];

    differenceDueToRecentChanges = [(UIDocument *)self differenceDueToRecentChanges];
    dueToRecentChangesBeforeSaving = [v5 dueToRecentChangesBeforeSaving];
    [differenceDueToRecentChanges setGenerationCount:{objc_msgSend(differenceDueToRecentChanges, "generationCount") - objc_msgSend(dueToRecentChangesBeforeSaving, "generationCount")}];

    differenceDueToRecentChanges2 = [(UIDocument *)self differenceDueToRecentChanges];
    dueToRecentChangesBeforeSaving2 = [v5 dueToRecentChangesBeforeSaving];
    [differenceDueToRecentChanges2 setChangeCount:{objc_msgSend(differenceDueToRecentChanges2, "changeCount") - objc_msgSend(dueToRecentChangesBeforeSaving2, "changeCount")}];

    differenceSincePreservingPreviousVersion = [(UIDocument *)self differenceSincePreservingPreviousVersion];
    betweenPreservingPreviousVersionAndSaving = [v5 betweenPreservingPreviousVersionAndSaving];
    [differenceSincePreservingPreviousVersion setGenerationCount:{objc_msgSend(differenceSincePreservingPreviousVersion, "generationCount") - objc_msgSend(betweenPreservingPreviousVersionAndSaving, "generationCount")}];

    differenceSincePreservingPreviousVersion2 = [(UIDocument *)self differenceSincePreservingPreviousVersion];
    dueToRecentChangesBeforeSaving3 = [v5 dueToRecentChangesBeforeSaving];

    [differenceSincePreservingPreviousVersion2 setChangeCount:{objc_msgSend(differenceSincePreservingPreviousVersion2, "changeCount") - objc_msgSend(dueToRecentChangesBeforeSaving3, "changeCount")}];
  }

  [(UIDocument *)self _scheduleAutosaving];
}

- (void)_changeWasDone:(id)done
{
  v13 = *MEMORY[0x1E69E9840];
  doneCopy = done;
  v5 = _UIDocumentLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "document undoManager change was done: %@", &v11, 0xCu);
  }

  object = [doneCopy object];
  groupingLevel = [object groupingLevel];

  if (groupingLevel <= 1)
  {
    userInfo = [doneCopy userInfo];
    v9 = [userInfo objectForKey:@"NSUndoManagerGroupIsEmpty"];
    bOOLValue = [v9 BOOLValue];

    if ((bOOLValue & 1) == 0)
    {
      [(UIDocument *)self updateChangeCount:0];
    }
  }
}

- (void)_changeWasUndone:(id)undone
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = _UIDocumentLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "document undoManager change was undone: %@", &v5, 0xCu);
  }

  if ((*&self->_docFlags & 0x40) == 0)
  {
    [(UIDocument *)self updateChangeCount:1];
  }
}

- (void)_changeWasRedone:(id)redone
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = _UIDocumentLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "document undoManager change was redone: %@", &v5, 0xCu);
  }

  if ((*&self->_docFlags & 0x40) == 0)
  {
    [(UIDocument *)self updateChangeCount:2];
  }
}

- (void)_releaseUndoManager
{
  if (self->_undoManager)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E696AA30] object:self->_undoManager];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E696AA28] object:self->_undoManager];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E696AA38] object:self->_undoManager];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E696AA20] object:self->_undoManager];
    undoManager = self->_undoManager;
    self->_undoManager = 0;
  }
}

- (void)setUndoManager:(NSUndoManager *)undoManager
{
  v5 = undoManager;
  v6 = self->_undoManager;
  v8 = v5;
  if (v6 != v5)
  {
    if (v6)
    {
      [(UIDocument *)self _releaseUndoManager];
    }

    objc_storeStrong(&self->_undoManager, undoManager);
    if (self->_undoManager)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:self selector:sel__changeWasUndone_ name:*MEMORY[0x1E696AA30] object:self->_undoManager];
      [defaultCenter addObserver:self selector:sel__changeWasRedone_ name:*MEMORY[0x1E696AA28] object:self->_undoManager];
      [defaultCenter addObserver:self selector:sel__changeWasDone_ name:*MEMORY[0x1E696AA38] object:self->_undoManager];
    }
  }
}

- (NSUndoManager)undoManager
{
  undoManager = self->_undoManager;
  if (undoManager)
  {
    v3 = undoManager;
  }

  else
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AFC8]);
    [(UIDocument *)self setUndoManager:v3];
  }

  return v3;
}

- (void)handleError:(NSError *)error userInteractionPermitted:(BOOL)userInteractionPermitted
{
  v4 = userInteractionPermitted;
  v24 = *MEMORY[0x1E69E9840];
  v6 = error;
  v7 = _UIDocumentLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "document: %@ handling error: %@", buf, 0x16u);
  }

  recoveryAttempter = [(NSError *)v6 recoveryAttempter];
  v9 = recoveryAttempter;
  if (v4 && recoveryAttempter)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v9 attemptSilentRecoveryFromError:v6 error:0])
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __51__UIDocument_handleError_userInteractionPermitted___block_invoke;
      v18[3] = &unk_1E70F3C60;
      v18[4] = self;
      v19 = v6;
      v16 = [UIDocumentAlertPresenter _presentAlertWithError:v19 completionHandler:v18];
      alertPresenter = self->_alertPresenter;
      self->_alertPresenter = v16;

      goto LABEL_13;
    }

    selfCopy3 = self;
    v11 = v6;
    v12 = 1;
  }

  else
  {
    v13 = _UIDocumentLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      localizedDescription = [(NSError *)v6 localizedDescription];
      localizedFailureReason = [(NSError *)v6 localizedFailureReason];
      *buf = 138412546;
      selfCopy = localizedDescription;
      v22 = 2112;
      v23 = localizedFailureReason;
      _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_DEFAULT, "UIDocument unrecoverable error with description: %@ reason: %@", buf, 0x16u);
    }

    selfCopy3 = self;
    v11 = v6;
    v12 = 0;
  }

  [(UIDocument *)selfCopy3 finishedHandlingError:v11 recovered:v12];
LABEL_13:
}

uint64_t __51__UIDocument_handleError_userInteractionPermitted___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 168);
  *(v4 + 168) = 0;

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);

  return [v6 finishedHandlingError:v7 recovered:a2];
}

- (void)finishedHandlingError:(NSError *)error recovered:(BOOL)recovered
{
  v4 = recovered;
  v14 = *MEMORY[0x1E69E9840];
  v6 = error;
  if (!v4)
  {
    v7 = _UIDocumentLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      localizedDescription = [(NSError *)v6 localizedDescription];
      localizedFailureReason = [(NSError *)v6 localizedFailureReason];
      v10 = 138412546;
      v11 = localizedDescription;
      v12 = 2112;
      v13 = localizedFailureReason;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "Failed to recover from error with description: %@ reason: %@", &v10, 0x16u);
    }
  }

  [(UIDocument *)self _setHasSavingError:!v4];
}

- (void)_updateLocalizedName
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [(NSURL *)selfCopy->_fileURL path];
  v5 = [defaultManager displayNameAtPath:path];
  stringByDeletingPathExtension = [v5 stringByDeletingPathExtension];
  localizedName = selfCopy->_localizedName;
  selfCopy->_localizedName = stringByDeletingPathExtension;

  objc_sync_exit(selfCopy);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__UIDocument__updateLocalizedName__block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = selfCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __34__UIDocument__updateLocalizedName__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"UIDocumentLocalizedNameChangedNotification" object:*(a1 + 32)];
}

- (NSString)localizedName
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_localizedName;
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSString)fileNameExtensionForType:(NSString *)typeName saveOperation:(UIDocumentSaveOperation)saveOperation
{
  v4 = [MEMORY[0x1E6982C40] typeWithIdentifier:{typeName, saveOperation}];
  preferredFilenameExtension = [v4 preferredFilenameExtension];

  return preferredFilenameExtension;
}

- (void)relinquishPresentedItemToReader:(id)reader
{
  v8 = *MEMORY[0x1E69E9840];
  readerCopy = reader;
  v5 = _UIDocumentLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "document relinquishing to reader: %@", &v6, 0xCu);
  }

  if (readerCopy)
  {
    readerCopy[2](readerCopy, 0);
  }
}

- (BOOL)_shouldAllowWritingInResponseToPresenterMessage
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = (*&selfCopy->_docFlags & 6) == 2;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_updatePermissionsState:(BOOL)state
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if (state && dyld_program_sdk_at_least())
  {
    v4 = [objc_alloc(MEMORY[0x1E696ABF8]) initWithFilePresenter:self];
    fileURL = [(UIDocument *)self fileURL];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __38__UIDocument__updatePermissionsState___block_invoke;
    v6[3] = &unk_1E7105BF8;
    v6[4] = self;
    v6[5] = &v7;
    [v4 coordinateReadingItemAtURL:fileURL options:4 error:0 byAccessor:v6];
  }

  [(UIDocument *)self _setEditingDisabledDueToPermissions:*(v8 + 24)];
  _Block_object_dispose(&v7, 8);
}

void __38__UIDocument__updatePermissionsState___block_invoke(uint64_t a1)
{
  v4 = objc_opt_new();
  v2 = [*(a1 + 32) fileURL];
  v3 = [v2 path];
  *(*(*(a1 + 40) + 8) + 24) |= [v4 isWritableFileAtPath:v3] ^ 1;
}

- (void)relinquishPresentedItemToWriter:(id)writer
{
  v19 = *MEMORY[0x1E69E9840];
  writerCopy = writer;
  v5 = _UIDocumentLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy2 = self;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "document relinquishing to writer: %@", buf, 0xCu);
  }

  if ([(UIDocument *)self _shouldAllowWritingInResponseToPresenterMessage])
  {
    if (writerCopy)
    {
      _isEditingTemporarilyDisabled = [(UIDocument *)self _isEditingTemporarilyDisabled];
      [(UIDocument *)self _setEditingTemporarilyDisabled:1];
      v7 = objc_opt_class();
      fileURL = [(UIDocument *)self fileURL];
      if (fileURL)
      {
        v9 = [v7 _fileModificationDateForURL:fileURL];
      }

      else
      {
        v9 = 0;
      }

      v10 = _UIDocumentLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy2 = self;
        _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEFAULT, "document waiting for writer to finish and invoke reacquirer: %@", buf, 0xCu);
      }

      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __46__UIDocument_relinquishPresentedItemToWriter___block_invoke;
      v13[3] = &unk_1E7105C20;
      v16 = _isEditingTemporarilyDisabled;
      v13[4] = self;
      v14 = v9;
      v15 = v7;
      v11 = writerCopy[2];
      v12 = v9;
      v11(writerCopy, v13);
    }
  }

  else if (writerCopy)
  {
    (writerCopy[2])(writerCopy, 0);
  }
}

void __46__UIDocument_relinquishPresentedItemToWriter___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = _UIDocumentLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v14 = v3;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "document finished waiting for writer and the reacquirer is now invoked: %@", buf, 0xCu);
  }

  v4 = _UIDocumentLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412290;
    v14 = v5;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "document will respond to writer on main thread: %@", buf, 0xCu);
  }

  [*(a1 + 32) _updatePermissionsState:1];
  v6 = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__UIDocument_relinquishPresentedItemToWriter___block_invoke_359;
  v9[3] = &unk_1E7105C20;
  v9[4] = v6;
  v12 = *(a1 + 56);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = v7;
  v11 = v8;
  [v6 _performBlockSynchronouslyOnMainThread:v9];
}

void __46__UIDocument_relinquishPresentedItemToWriter___block_invoke_359(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = _UIDocumentLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v19 = 138412290;
    v20 = v3;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "document is responding to writer on main thread: %@", &v19, 0xCu);
  }

  if ([*(a1 + 32) _shouldAllowWritingInResponseToPresenterMessage])
  {
    v4 = [*(a1 + 32) fileURL];
    v5 = [MEMORY[0x1E696AC08] defaultManager];
    v6 = [v4 path];
    v7 = [v5 fileExistsAtPath:v6];

    if (v7)
    {
      if (v4 && *(a1 + 40))
      {
        v8 = [*(a1 + 48) _fileModificationDateForURL:v4];
        v9 = v8;
        if (v8 && ([v8 isEqual:*(a1 + 40)]& 1) == 0)
        {
          [*(a1 + 32) revertToContentsOfURL:v4 completionHandler:0];

          goto LABEL_22;
        }

        v10 = _UIDocumentLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(a1 + 32);
          v12 = *(a1 + 40);
          v19 = 138412802;
          v20 = v11;
          v21 = 2112;
          v22 = v9;
          v23 = 2112;
          v24 = v12;
          _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEFAULT, "document: %@ skipping revert with newModifcationDate: %@ and oldModificationDate: %@", &v19, 0x20u);
        }
      }

      else
      {
        v9 = _UIDocumentLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *(a1 + 32);
          v18 = *(a1 + 40);
          v19 = 138412802;
          v20 = v17;
          v21 = 2112;
          v22 = v4;
          v23 = 2112;
          v24 = v18;
          _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "document: %@ skipping revert because fileURL: %@ or oldModificationDate: %@ is nil", &v19, 0x20u);
        }
      }
    }

    else
    {
      v15 = _UIDocumentLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 32);
        v19 = 138412290;
        v20 = v16;
        _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_DEFAULT, "document deleted by writer, so initiating save: %@", &v19, 0xCu);
      }

      [*(a1 + 32) saveToURL:v4 forSaveOperation:0 completionHandler:0];
    }

    [*(a1 + 32) _setEditingTemporarilyDisabled:*(a1 + 56)];
LABEL_22:

    return;
  }

  v13 = _UIDocumentLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 32);
    v19 = 138412290;
    v20 = v14;
    _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_DEFAULT, "document was moved from open to closed while handling writer, stopping processing: %@", &v19, 0xCu);
  }

  [*(a1 + 32) _setEditingTemporarilyDisabled:*(a1 + 56)];
}

- (void)savePresentedItemChangesWithCompletionHandler:(id)handler
{
  v11 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = _UIDocumentLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy2 = self;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "document saving presented item changes: %@", buf, 0xCu);
  }

  if ([(UIDocument *)self _shouldAllowWritingInResponseToPresenterMessage])
  {
    v6 = _UIDocumentLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "document will save changes on main thread: %@", buf, 0xCu);
    }

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __60__UIDocument_savePresentedItemChangesWithCompletionHandler___block_invoke;
    v7[3] = &unk_1E70F37C0;
    v7[4] = self;
    v8 = handlerCopy;
    [(UIDocument *)self _performBlockSynchronouslyOnMainThread:v7];
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __60__UIDocument_savePresentedItemChangesWithCompletionHandler___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = _UIDocumentLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v8 = v3;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "document is saving changes on main thread: %@", buf, 0xCu);
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__UIDocument_savePresentedItemChangesWithCompletionHandler___block_invoke_361;
  v5[3] = &unk_1E70F3608;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v4 _saveUnsavedChangesWithCompletionHandler:v5];
}

uint64_t __60__UIDocument_savePresentedItemChangesWithCompletionHandler___block_invoke_361(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)_applicationWillResignActive:(id)active
{
  v36 = *MEMORY[0x1E69E9840];
  activeCopy = active;
  v5 = _UIDocumentLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = self;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "document is handling application resigning active: %@", &buf, 0xCu);
  }

  if ([(UIDocument *)self _isOpen])
  {
    currentProcess = [MEMORY[0x1E69C7640] currentProcess];
    v7 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.uikit" name:@"SaveDocument"];
    v8 = objc_alloc(MEMORY[0x1E69C7548]);
    v31 = v7;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
    v10 = [v8 initWithExplanation:@"UIDocument resigning as file presenter" target:currentProcess attributes:v9];

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __43__UIDocument__applicationWillResignActive___block_invoke;
    v26[3] = &unk_1E7105C48;
    v26[4] = self;
    [v10 acquireWithInvalidationHandler:v26];
    v11 = dispatch_group_create();
    dispatch_group_enter(v11);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __43__UIDocument__applicationWillResignActive___block_invoke_375;
    v24[3] = &unk_1E70F3C60;
    v24[4] = self;
    v12 = v11;
    v25 = v12;
    [(UIDocument *)self _saveUnsavedChangesWithCompletionHandler:v24];
    if (FileProviderLibraryCore())
    {
      fileURL = [(UIDocument *)self fileURL];
      v27 = 0;
      v28 = &v27;
      v29 = 0x2020000000;
      v14 = getFPCreateBookmarkableStringFromDocumentURLSymbolLoc_ptr;
      v30 = getFPCreateBookmarkableStringFromDocumentURLSymbolLoc_ptr;
      if (!getFPCreateBookmarkableStringFromDocumentURLSymbolLoc_ptr)
      {
        *&buf = MEMORY[0x1E69E9820];
        *(&buf + 1) = 3221225472;
        v33 = __getFPCreateBookmarkableStringFromDocumentURLSymbolLoc_block_invoke;
        v34 = &unk_1E70F2F20;
        v35 = &v27;
        v15 = FileProviderLibrary_0();
        v16 = dlsym(v15, "FPCreateBookmarkableStringFromDocumentURL");
        *(v35[1] + 24) = v16;
        getFPCreateBookmarkableStringFromDocumentURLSymbolLoc_ptr = *(v35[1] + 24);
        v14 = v28[3];
      }

      _Block_object_dispose(&v27, 8);
      if (!v14)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CFStringRef _FPCreateBookmarkableStringFromDocumentURL(CFURLRef, CFErrorRef *)"}];
        [currentHandler handleFailureInFunction:v21 file:@"UIDocument.m" lineNumber:65 description:{@"%s", dlerror()}];

        __break(1u);
      }

      v17 = v14(fileURL, 0);
      fileBookmark = self->_fileBookmark;
      self->_fileBookmark = v17;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__UIDocument__applicationWillResignActive___block_invoke_376;
    block[3] = &unk_1E70F3590;
    v23 = v10;
    v19 = v10;
    dispatch_group_notify(v12, MEMORY[0x1E69E96A0], block);
  }
}

void __43__UIDocument__applicationWillResignActive___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _UIDocumentLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    v6 = *(a1 + 32);
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v6;
    _os_log_fault_impl(&dword_188A29000, v5, OS_LOG_TYPE_FAULT, "document saving on resign active expired with error %@: %@", &v7, 0x16u);
  }
}

void __43__UIDocument__applicationWillResignActive___block_invoke_375(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _unregisterAsFilePresenterIfNecessary];
  v2 = _UIDocumentLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_INFO, "document saving on resign active finished: %@", &v4, 0xCu);
  }

  dispatch_group_leave(*(a1 + 40));
}

- (void)_applicationDidBecomeActive:(id)active
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = _UIDocumentLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "document is handling application becoming active: %@", buf, 0xCu);
  }

  if ([(UIDocument *)self _isOpen])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __42__UIDocument__applicationDidBecomeActive___block_invoke;
    v5[3] = &unk_1E70F3590;
    v5[4] = self;
    [(UIDocument *)self performAsynchronousFileAccessUsingBlock:v5];
  }
}

void __42__UIDocument__applicationDidBecomeActive___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _registerAsFilePresenterIfNecessary];
  v2 = *(a1 + 32);
  if (!v2[4])
  {
    goto LABEL_17;
  }

  v3 = FileProviderLibraryCore();
  v2 = *(a1 + 32);
  if (!v3)
  {
    goto LABEL_17;
  }

  v4 = [v2 fileURL];
  v33 = 0;
  v34 = 0;
  v5 = *(*(a1 + 32) + 32);
  v35 = &v34;
  v36 = 0x2020000000;
  v6 = getFPCreateDocumentURLFromBookmarkableStringSymbolLoc_ptr;
  v37 = getFPCreateDocumentURLFromBookmarkableStringSymbolLoc_ptr;
  if (!getFPCreateDocumentURLFromBookmarkableStringSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getFPCreateDocumentURLFromBookmarkableStringSymbolLoc_block_invoke;
    v40 = &unk_1E70F2F20;
    v41 = &v34;
    v7 = FileProviderLibrary_0();
    v8 = dlsym(v7, "FPCreateDocumentURLFromBookmarkableString");
    *(v41[1] + 24) = v8;
    getFPCreateDocumentURLFromBookmarkableStringSymbolLoc_ptr = *(v41[1] + 24);
    v6 = v35[3];
  }

  _Block_object_dispose(&v34, 8);
  if (!v6)
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CFURLRef _FPCreateDocumentURLFromBookmarkableString(CFStringRef, CFErrorRef *)"}];
    [v29 handleFailureInFunction:v30 file:@"UIDocument.m" lineNumber:66 description:{@"%s", dlerror()}];

    __break(1u);
  }

  v9 = v6(v5, &v33);
  v10 = v9;
  if (v9)
  {
    if (([v9 isEqual:v4] & 1) == 0)
    {
      v11 = _UIDocumentLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 32);
        *buf = 138412802;
        *&buf[4] = v4;
        *&buf[12] = 2112;
        *&buf[14] = v10;
        *&buf[22] = 2112;
        v40 = v12;
        _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_DEFAULT, "document moved from %@ to %@: %@", buf, 0x20u);
      }

      v13 = MEMORY[0x1E696AAE0];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __42__UIDocument__applicationDidBecomeActive___block_invoke_377;
      v31[3] = &unk_1E70F35B8;
      v31[4] = *(a1 + 32);
      v32 = v10;
      v14 = [v13 blockOperationWithBlock:v31];
      v15 = [*(a1 + 32) presentedItemOperationQueue];
      v38 = v14;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
      [v15 addOperations:v16 waitUntilFinished:1];
    }

LABEL_16:
    v2 = *(a1 + 32);
LABEL_17:
    v21 = [v2 fileURL];
    v22 = [UIDocument _fileModificationDateForURL:v21];
    v23 = [*(a1 + 32) fileModificationDate];
    v24 = [v22 isEqualToDate:v23];

    v25 = *(a1 + 32);
    if (v24)
    {
      [v25 _updateConflictState];
    }

    else
    {
      v26 = [v25 fileURL];
      [v25 revertToContentsOfURL:v26 completionHandler:0];
    }

    return;
  }

  v17 = v33;
  v18 = [v4 checkPromisedItemIsReachableAndReturnError:0];
  v19 = _UIDocumentLog();
  v20 = v19;
  if (v18)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v28 = *(a1 + 32);
      *buf = 138412290;
      *&buf[4] = v28;
      _os_log_error_impl(&dword_188A29000, v20, OS_LOG_TYPE_ERROR, "document is unable to resolve document bookmark, but file still exists: %@", buf, 0xCu);
    }

    goto LABEL_16;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v27 = *(a1 + 32);
    *buf = 138412290;
    *&buf[4] = v27;
    _os_log_impl(&dword_188A29000, v20, OS_LOG_TYPE_DEFAULT, "document is unable to resolve document bookmark and original is gone, forcing re-save: %@", buf, 0xCu);
  }

  [*(a1 + 32) saveToURL:v4 forSaveOperation:0 completionHandler:0];
}

- (void)accommodatePresentedItemDeletionWithCompletionHandler:(id)handler
{
  v8 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = _UIDocumentLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "document presented item will be deleted: %@", &v6, 0xCu);
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)presentedItemDidMoveToURL:(id)l
{
  v11 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v5 = _UIDocumentLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = lCopy;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "document: %@ did move to new URL: %@", buf, 0x16u);
  }

  [(UIDocument *)self _setFileURL:lCopy];
  [(UIDocument *)self _updateLocalizedName];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__UIDocument_presentedItemDidMoveToURL___block_invoke;
  v6[3] = &unk_1E70F3590;
  v6[4] = self;
  [(UIDocument *)self _performBlockOnMainThread:v6];
}

- (void)presentedItemDidMoveToWritableLocation
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __52__UIDocument_presentedItemDidMoveToWritableLocation__block_invoke;
  v2[3] = &unk_1E70F3590;
  v2[4] = self;
  [(UIDocument *)self _performBlockSynchronouslyOnMainThread:v2];
}

void __52__UIDocument_presentedItemDidMoveToWritableLocation__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"UIDocumentDidMoveToWritableLocationNotification" object:*(a1 + 32)];
}

- (void)presentedItemDidChange
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = _UIDocumentLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "document presented item did change: %@", &v4, 0xCu);
  }
}

- (void)_updateConflictState
{
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__UIDocument__updateConflictState__block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  dispatch_async(v3, block);
}

void __34__UIDocument__updateConflictState__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E696AC30];
  v4 = [*(a1 + 32) fileURL];
  v3 = [v2 unresolvedConflictVersionsOfItemAtURL:v4];
  [*(a1 + 32) _setInConflict:{objc_msgSend(v3, "count") != 0}];
}

- (void)presentedItemDidGainVersion:(id)version
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = _UIDocumentLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "document did gain version: %@", &v5, 0xCu);
  }

  [(UIDocument *)self _updateConflictState];
}

- (void)presentedItemDidLoseVersion:(id)version
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = _UIDocumentLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "document did lose version: %@", &v5, 0xCu);
  }

  [(UIDocument *)self _updateConflictState];
}

- (void)accommodatePresentedSubitemDeletionAtURL:(id)l completionHandler:(id)handler
{
  v13 = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  v8 = _UIDocumentLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    selfCopy = self;
    v11 = 2112;
    v12 = lCopy;
    _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "document: %@ subitem will be deleted at URL: %@", &v9, 0x16u);
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)presentedSubitemDidAppearAtURL:(id)l
{
  v10 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v5 = _UIDocumentLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    selfCopy = self;
    v8 = 2112;
    v9 = lCopy;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "document: %@ subitem did appear at URL: %@", &v6, 0x16u);
  }
}

- (void)presentedSubitemDidChangeAtURL:(id)l
{
  v10 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v5 = _UIDocumentLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    selfCopy = self;
    v8 = 2112;
    v9 = lCopy;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "document: %@ subitem did change at URL: %@", &v6, 0x16u);
  }
}

- (void)presentedSubitemAtURL:(id)l didMoveToURL:(id)rL
{
  v15 = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  v8 = _UIDocumentLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412802;
    selfCopy = self;
    v11 = 2112;
    v12 = lCopy;
    v13 = 2112;
    v14 = rLCopy;
    _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "document: %@ subitem at URL: %@ did move to URL: %@", &v9, 0x20u);
  }

  [(UIDocument *)self _updateConflictState];
}

- (void)presentedSubitemAtURL:(id)l didGainVersion:(id)version
{
  v11 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v6 = _UIDocumentLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = lCopy;
    _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "document: %@ subitem did gain version at URL: %@", &v7, 0x16u);
  }

  [(UIDocument *)self _updateConflictState];
}

- (void)presentedSubitemAtURL:(id)l didLoseVersion:(id)version
{
  v11 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v6 = _UIDocumentLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = lCopy;
    _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "document: %@ subitem did lose version at URL: %@", &v7, 0x16u);
  }

  [(UIDocument *)self _updateConflictState];
}

- (void)presentedItemDidResolveConflictVersion:(id)version
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = _UIDocumentLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "document: %@ did resolve conflict version", &v5, 0xCu);
  }

  [(UIDocument *)self _updateConflictState];
}

- (void)presentedSubitemAtURL:(id)l didResolveConflictVersion:(id)version
{
  v11 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v6 = _UIDocumentLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = lCopy;
    _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "document: %@ did resolve conflict at URL: %@", &v7, 0x16u);
  }

  [(UIDocument *)self _updateConflictState];
}

- (void)presentedItemHasUnsavedChangesWithCompletionHandler:(id)handler
{
  v12 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  hasUnsavedChanges = [(UIDocument *)self hasUnsavedChanges];
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, hasUnsavedChanges);
  }

  v6 = _UIDocumentLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (hasUnsavedChanges)
    {
      v7 = @"YES";
    }

    v8 = 138412546;
    selfCopy = self;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "document: %@ did report %@ for unsaved changes", &v8, 0x16u);
  }
}

+ (id)_documentWithContentsOfFileURL:(id)l error:(id *)error
{
  v44 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v6 = +[_UIApplicationInfoParser mainBundleInfoParser];
  utTypeToDocumentClassMap = [v6 utTypeToDocumentClassMap];

  startAccessingSecurityScopedResource = [lCopy startAccessingSecurityScopedResource];
  v38 = 0;
  v9 = *MEMORY[0x1E695DAA0];
  v37 = 0;
  LODWORD(v6) = [lCopy getResourceValue:&v38 forKey:v9 error:&v37];
  v10 = v38;
  v11 = v37;
  v12 = v11;
  if (!v6)
  {
    v25 = *(__UILogGetCategoryCachedImpl("UIDocument", &qword_1ED49DA60) + 8);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v40 = lCopy;
      v41 = 2112;
      v42 = v12;
      _os_log_impl(&dword_188A29000, v25, OS_LOG_TYPE_ERROR, "Unable to create document from file at URL <%@>: %@", buf, 0x16u);
    }

    v24 = 0;
    if (startAccessingSecurityScopedResource)
    {
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  v31 = v11;
  v32 = startAccessingSecurityScopedResource;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  allKeys = [utTypeToDocumentClassMap allKeys];
  v14 = [allKeys countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v14)
  {
    v15 = v14;
    errorCopy = error;
    v30 = lCopy;
    v16 = 0;
    v17 = 0;
    v18 = *v34;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v34 != v18)
        {
          objc_enumerationMutation(allKeys);
        }

        v20 = *(*(&v33 + 1) + 8 * i);
        if ([v10 conformsToType:{v20, errorCopy}] && (!v17 || objc_msgSend(v17, "isSupertypeOfType:", v20)))
        {
          v21 = [utTypeToDocumentClassMap objectForKey:v20];
          if (v21)
          {
            v22 = v21;
            v23 = v20;

            v16 = v22;
            v17 = v23;
          }
        }
      }

      v15 = [allKeys countByEnumeratingWithState:&v33 objects:v43 count:16];
    }

    while (v15);

    if (v16)
    {
      lCopy = v30;
      v24 = [[v16 alloc] initWithFileURL:v30];
      error = errorCopy;
      v12 = v31;
      goto LABEL_25;
    }

    error = errorCopy;
    lCopy = v30;
  }

  else
  {

    v17 = 0;
  }

  v12 = v31;
  v26 = *(__UILogGetCategoryCachedImpl("UIDocument", &qword_1ED49DA58) + 8);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v40 = lCopy;
    _os_log_impl(&dword_188A29000, v26, OS_LOG_TYPE_ERROR, "Unable to create document from file at URL <%@>: no document class found. Define the correct UIDocument subclass with the key UIDocumentClass in the info.plist's CFBundleDocumentTypes dictionary.", buf, 0xCu);
  }

  v24 = 0;
LABEL_25:

  if (v32)
  {
LABEL_26:
    [lCopy stopAccessingSecurityScopedResource];
  }

LABEL_27:
  if (error && v12)
  {
    v27 = v12;
    *error = v12;
  }

  return v24;
}

+ (id)_fileModificationDateForURL:(id)l
{
  v17 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v12 = 0;
  v4 = *MEMORY[0x1E695DA98];
  v11 = 0;
  v5 = [lCopy getResourceValue:&v12 forKey:v4 error:&v11];
  v6 = v12;
  v7 = v11;
  if ((v5 & 1) == 0)
  {
    v8 = _UIDocumentLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      localizedDescription = [v7 localizedDescription];
      *buf = 138412546;
      v14 = lCopy;
      v15 = 2112;
      v16 = localizedDescription;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "failed to get modification date for URL: %@ with error: %@", buf, 0x16u);
    }
  }

  return v6;
}

- (void)_performBlock:(id)block synchronouslyOnQueue:(id)queue
{
  queue = queue;
  v5 = dispatch_get_current_queue();
  blockCopy = block;

  if (v5 == queue)
  {
    blockCopy[2](blockCopy);
  }

  else
  {
    dispatch_sync(queue, blockCopy);
  }
}

- (void)_performBlockOnMainThread:(id)thread
{
  block = thread;
  if (pthread_main_np() == 1)
  {
    block[2]();
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_performBlockSynchronouslyOnMainThread:(id)thread
{
  threadCopy = thread;
  if (pthread_main_np() == 1)
  {
    threadCopy[2]();
  }

  else
  {
    [(UIDocument *)self _performBlock:threadCopy synchronouslyOnQueue:MEMORY[0x1E69E96A0]];
  }
}

@end