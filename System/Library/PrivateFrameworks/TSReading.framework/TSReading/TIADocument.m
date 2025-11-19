@interface TIADocument
- (BOOL)hasUnsavedChanges;
- (BOOL)validatePassphrase:(id)a3;
- (NSString)documentCachePath;
- (NSString)documentPasswordHint;
- (NSString)name;
- (TIADocument)initWithTemporaryFileURL:(id)a3;
- (TSADocumentRoot)documentRoot;
- (id)additionalDocumentPropertiesForWrite;
- (id)newExporterForType:(id)a3 options:(id)a4 preferredType:(id *)a5;
- (id)packageDataForWrite;
- (id)persistenceWarningsForData:(id)a3 isReadable:(BOOL)a4 isExternal:(BOOL)a5;
- (void)closeWithCompletionHandler:(id)a3;
- (void)context:(id)a3 didDownloadDocumentResources:(id)a4 failedOrCancelledDocumentResources:(id)a5 error:(id)a6;
- (void)coordinatedReadUsingAccessor:(id)a3;
- (void)dealloc;
- (void)documentDidLoad;
- (void)p_performSynchronousBlockOnMainThread:(id)a3;
- (void)setDocumentFileProtectionTo:(id)a3;
- (void)setDocumentPasswordHint:(id)a3;
- (void)setEncryptionKeyWithPassphrase:(id)a3;
- (void)setFileProtectionTo:(id)a3 atPath:(id)a4;
@end

@implementation TIADocument

- (TIADocument)initWithTemporaryFileURL:(id)a3
{
  v3 = [(UIDocument *)self initWithFileURL:a3];
  if (v3)
  {
    [(TIADocument *)v3 setContext:[[TSPObjectContext alloc] initWithDelegate:v3]];
    v4 = [objc_alloc(objc_msgSend(+[TSAApplicationDelegate sharedDelegate](TSAApplicationDelegate "sharedDelegate")];
    if (!v4)
    {
      v5 = [MEMORY[0x277D6C290] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TIADocument initWithTemporaryFileURL:]"];
      [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/application/ios/TIADocument.m"), 209, @"invalid nil value for '%s'", "documentRoot"}];
    }

    [v4 setDelegate:v3];
  }

  return v3;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];

  [(TSADocumentRoot *)[(TIADocument *)self documentRoot] setDelegate:0];
  ioQueue = self->_ioQueue;
  if (ioQueue)
  {
    dispatch_release(ioQueue);
  }

  ioOperationQueue = self->_ioOperationQueue;
  if (ioOperationQueue)
  {
    dispatch_release(ioOperationQueue);
  }

  v5.receiver = self;
  v5.super_class = TIADocument;
  [(UIDocument *)&v5 dealloc];
}

- (TSADocumentRoot)documentRoot
{
  objc_opt_class();
  [(TSPObjectContext *)[(TIADocument *)self context] documentObject];

  return TSUDynamicCast();
}

- (BOOL)hasUnsavedChanges
{
  if ([(TIADocument *)self isReadOnly]|| [(TIADocument *)self isClosingWithoutSaving]|| [(TIADocument *)self isClosed]|| self->_documentRootForDocumentDidLoad)
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = TIADocument;
  return [(UIDocument *)&v4 hasUnsavedChanges];
}

- (NSString)documentCachePath
{
  v2 = [(TIADocument *)self documentInfo];

  return [(TIADocumentInfo *)v2 documentCachePath];
}

- (void)closeWithCompletionHandler:(id)a3
{
  v5 = [(TIADocument *)self isClosed];
  documentInfo = self->_documentInfo;
  if (v5)
  {
    if ([(TIADocumentInfo *)documentInfo isSaving])
    {
      v7 = self->_documentInfo;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __42__TIADocument_closeWithCompletionHandler___block_invoke;
      v10[3] = &unk_279D48DA8;
      v10[4] = self;
      v10[5] = a3;
      [(TIADocumentInfo *)v7 notifySaveIsFinishedUsingQueue:MEMORY[0x277D85CD0] completion:v10];
    }

    else if (a3)
    {
      v8 = *(a3 + 2);

      v8(a3, 1);
    }
  }

  else
  {
    [(TIADocumentInfo *)documentInfo beginSave];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __42__TIADocument_closeWithCompletionHandler___block_invoke_2;
    v9[3] = &unk_279D47988;
    v9[4] = self;
    v9[5] = a3;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __42__TIADocument_closeWithCompletionHandler___block_invoke_5;
    v12[3] = &unk_279D4AD90;
    v12[4] = v9;
    v13 = 1;
    v11.receiver = self;
    v11.super_class = TIADocument;
    [(UIDocument *)&v11 closeWithCompletionHandler:v12, MEMORY[0x277D85DD0], 3221225472, __42__TIADocument_closeWithCompletionHandler___block_invoke_4, &unk_279D4ADB8, self, v9];
  }
}

uint64_t __42__TIADocument_closeWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) documentRoot];
  v5 = [v4 accessController];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__TIADocument_closeWithCompletionHandler___block_invoke_3;
  v7[3] = &unk_279D46770;
  v7[4] = v4;
  [v5 performRead:v7];

  [objc_msgSend(*(a1 + 32) "context")];
  [*(*(a1 + 32) + 264) endSave];
  if ([*(*(a1 + 32) + 264) isSynced])
  {
    [*(*(a1 + 32) + 264) setWillDownload:1];
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

id __42__TIADocument_closeWithCompletionHandler___block_invoke_4(uint64_t a1, char a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__TIADocument_closeWithCompletionHandler___block_invoke_5;
  v5[3] = &unk_279D4AD90;
  v2 = *(a1 + 32);
  v5[4] = *(a1 + 40);
  v6 = a2;
  v4.receiver = v2;
  v4.super_class = TIADocument;
  return objc_msgSendSuper2(&v4, sel_closeWithCompletionHandler_, v5);
}

uint64_t __42__TIADocument_closeWithCompletionHandler___block_invoke_5(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = *(a1 + 40);
  }

  else
  {
    v4 = 0;
  }

  return (*(v3 + 16))(v3, v4 & 1);
}

- (void)p_performSynchronousBlockOnMainThread:(id)a3
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v4 = *(a3 + 2);

    v4(a3);
  }

  else
  {
    v5 = MEMORY[0x277D85CD0];

    dispatch_sync(v5, a3);
  }
}

- (void)documentDidLoad
{
  v3 = [(TIADocument *)self documentRoot];
  v4 = v3;
  atomic_compare_exchange_strong(&self->_documentRootForDocumentDidLoad, &v4, 0);
  if (v4 == v3)
  {

    [(TSADocumentRoot *)v3 documentDidLoad];
  }
}

- (NSString)name
{
  v2 = [(TIADocument *)self documentInfo];

  return [(TIADocumentInfo *)v2 displayName];
}

- (void)coordinatedReadUsingAccessor:(id)a3
{
  templateURL = self->_templateURL;
  if (!templateURL)
  {
    templateURL = [(UIDocument *)self fileURL];
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8 = 0;
  v6 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:self];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__TIADocument_coordinatedReadUsingAccessor___block_invoke;
  v7[3] = &unk_279D4ADE0;
  v7[4] = a3;
  v7[5] = &v9;
  [v6 coordinateReadingItemAtURL:templateURL options:1 error:&v8 byAccessor:v7];

  if ((v10[3] & 1) == 0)
  {
    TSULogErrorInFunction();
    (*(a3 + 2))(a3, 0);
  }

  _Block_object_dispose(&v9, 8);
}

- (id)packageDataForWrite
{
  v2 = [(TIADocument *)self documentRoot];

  return [(TSADocumentRoot *)v2 packageDataForWrite];
}

- (id)additionalDocumentPropertiesForWrite
{
  v2 = [(TIADocument *)self documentRoot];

  return [(TSADocumentRoot *)v2 additionalDocumentPropertiesForWrite];
}

- (id)persistenceWarningsForData:(id)a3 isReadable:(BOOL)a4 isExternal:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = [+[TSABaseApplicationDelegate sharedDelegate](TSABaseApplicationDelegate "sharedDelegate")];

  return [v8 persistenceWarningsForData:a3 isReadable:v6 isExternal:v5];
}

- (void)context:(id)a3 didDownloadDocumentResources:(id)a4 failedOrCancelledDocumentResources:(id)a5 error:(id)a6
{
  objc_opt_class();
  [a3 documentObject];
  v10 = TSUDynamicCast();

  [v10 didDownloadDocumentResources:a4 failedOrCancelledDocumentResources:a5 error:a6];
}

- (void)setFileProtectionTo:(id)a3 atPath:(id)a4
{
  if (a4)
  {
    if ([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")])
    {
      v7 = 0;
      v6 = [MEMORY[0x277CCAA00] defaultManager];
      [v6 changeFileProtectionAtURL:objc_msgSend(MEMORY[0x277CBEBC0] toProtection:"fileURLWithPath:" recursively:a4) error:{a3, 1, &v7}];
    }
  }
}

- (void)setDocumentFileProtectionTo:(id)a3
{
  v5 = [(NSURL *)[(UIDocument *)self fileURL] path];

  [(TIADocument *)self setFileProtectionTo:a3 atPath:v5];
}

- (void)setDocumentPasswordHint:(id)a3
{
  [(TSPObjectContext *)self->_context setDocumentPasswordHint:a3];

  [(UIDocument *)self updateChangeCount:0];
}

- (void)setEncryptionKeyWithPassphrase:(id)a3
{
  [(TIADocument *)self willChangeValueForKey:@"isPasswordProtected"];
  if (a3)
  {
    v5 = objc_alloc(MEMORY[0x277D6C270]);
    v6 = [v5 initAes128KeyFromPassphrase:a3 iterationCount:*MEMORY[0x277D6C398]];
  }

  else
  {
    v6 = 0;
  }

  [(TIADocument *)self setEncryptionKey:v6];
  [(TIADocument *)self didChangeValueForKey:@"isPasswordProtected"];

  [(UIDocument *)self updateChangeCount:0];
}

- (BOOL)validatePassphrase:(id)a3
{
  if (![(TIADocument *)self isPasswordProtected]|| !self->_encryptionKey)
  {
    return 1;
  }

  v5 = [objc_alloc(MEMORY[0x277D6C270]) initAes128KeyFromPassphrase:a3 withIterationCountAndSaltDataFromCryptoKey:self->_encryptionKey];

  return SFUEqualCryptoKeys();
}

- (NSString)documentPasswordHint
{
  v2 = [(TIADocument *)self context];

  return [(TSPObjectContext *)v2 documentPasswordHint];
}

- (id)newExporterForType:(id)a3 options:(id)a4 preferredType:(id *)a5
{
  v8 = [(TIADocument *)self documentRoot];

  return [(TSADocumentRoot *)v8 newExporterForType:a3 options:a4 preferredType:a5];
}

@end