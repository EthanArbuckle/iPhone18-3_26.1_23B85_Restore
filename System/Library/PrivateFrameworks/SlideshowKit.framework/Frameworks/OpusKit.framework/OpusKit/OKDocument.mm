@interface OKDocument
+ (CGImage)retainedPosterImageForFileURL:(id)a3 withResolution:(unint64_t)a4 coordinateReading:(BOOL)a5;
+ (id)_fileWrapperPosterImageFilenameKeyWithResolution:(unint64_t)a3;
+ (id)_hashForImportedResourceURL:(id)a3;
+ (id)_importedMediaURLForImportedResourceURL:(id)a3 withDocumentURL:(id)a4 extension:(id)a5;
+ (id)_importedMetadataURLForImportedResourceURL:(id)a3 withDocumentURL:(id)a4;
+ (id)_importedResourceDirectoryURLForImportedResourceURL:(id)a3 withDocumentURL:(id)a4;
+ (id)_importedResourceURLWithHash:(id)a3;
+ (id)_importedThumbnailURLForImportedResourceURL:(id)a3 withDocumentURL:(id)a4 withExtension:(id)a5;
+ (id)_posterImageURLForFileURL:(id)a3 withResolution:(unint64_t)a4;
+ (id)infoForFileURL:(id)a3 coordinateReading:(BOOL)a4;
- (BOOL)_hasThumbnailForImportedResourceURL:(id)a3;
- (BOOL)_hasThumbnailForImportedResourceURL:(id)a3 size:(CGSize)a4;
- (BOOL)_hasThumbnailFromMediaForImportedResourceURL:(id)a3;
- (BOOL)_readImportedResourceURL:(id)a3 error:(id *)a4 byMediaAccessor:(id)a5;
- (BOOL)_readImportedResourceURL:(id)a3 error:(id *)a4 byMetadataAccessor:(id)a5;
- (BOOL)_readImportedResourceURL:(id)a3 error:(id *)a4 byThumbnailAccessor:(id)a5;
- (BOOL)_readImportedResourceURL:(id)a3 size:(CGSize)a4 error:(id *)a5 byThumbnailAccessor:(id)a6;
- (BOOL)_updateImportedResourceURL:(id)a3 error:(id *)a4 byMetadataAccessor:(id)a5;
- (BOOL)_updateImportedResourceURL:(id)a3 size:(CGSize)a4 error:(id *)a5 byThumbnailAccessor:(id)a6;
- (BOOL)deleteImportedResourceURLs:(id)a3 progressBlock:(id)a4 error:(id *)a5;
- (BOOL)isImportedResourceURLEmbedded:(id)a3;
- (BOOL)loadFromContents:(id)a3 ofType:(id)a4 error:(id *)a5;
- (BOOL)readFromURL:(id)a3 error:(id *)a4;
- (BOOL)writeContents:(id)a3 andAttributes:(id)a4 safelyToURL:(id)a5 forSaveOperation:(int64_t)a6 error:(id *)a7;
- (CGImage)_thumbnailForImportedResourceURL:(id)a3;
- (CGImage)_thumbnailForImportedResourceURL:(id)a3 size:(CGSize)a4;
- (CGImage)_thumbnailFromMediaForImportedResourceURL:(id)a3;
- (CGImage)_thumbnailFromMediaForImportedResourceURL:(id)a3 size:(CGSize)a4;
- (CGImage)posterImage;
- (OKDocument)initWithFileURL:(id)a3;
- (id)URLForResource:(id)a3 withExtension:(id)a4;
- (id)_extensionForImportedResourceURL:(id)a3;
- (id)_extensionForThumbnailImportedResourceURL:(id)a3;
- (id)_importedMediaURLForImportedResourceURL:(id)a3;
- (id)_importedMediaURLForImportedResourceURL:(id)a3 withImportedResourceDirectoryURL:(id)a4 withExtension:(id)a5;
- (id)_importedMetadataURLForImportedResourceURL:(id)a3;
- (id)_importedResourceDirectoryURLForImportedResourceURL:(id)a3;
- (id)_importedResourceDirectoryURLForImportedResourceURL:(id)a3 withImportedResourcesDirectoryURL:(id)a4;
- (id)_importedResourceURLForRessourceURL:(id)a3;
- (id)_importedResourcesDirectoryURL;
- (id)_importedThumbnailURLForImportedResourceURL:(id)a3;
- (id)_importedThumbnailURLForImportedResourceURL:(id)a3 resolution:(unint64_t)a4;
- (id)_importedThumbnailURLForImportedResourceURL:(id)a3 withImportedResourceDirectoryURL:(id)a4 withExtension:(id)a5;
- (id)_importedThumbnailsDirectoryURLForImportedResourceURL:(id)a3;
- (id)_metadataForImportedResourceURL:(id)a3;
- (id)_metadataObjectForKey:(id)a3 forImportedResourceURL:(id)a4;
- (id)_scriptURL;
- (id)contentsForType:(id)a3 error:(id *)a4;
- (id)documentURL;
- (id)importResourceURL:(id)a3 opaque:(BOOL)a4 force:(BOOL)a5 progressBlock:(id)a6 error:(id *)a7;
- (id)importResourceURLs:(id)a3 opaque:(BOOL)a4 force:(BOOL)a5 progressBlock:(id)a6 error:(id *)a7;
- (id)importedResourceURLs;
- (id)localizedName;
- (id)prepareMediaURL:(id)a3 force:(BOOL)a4 colorSpace:(id)a5 progressBlock:(id)a6 error:(id *)a7;
- (id)prepareMediaURLs:(id)a3 force:(BOOL)a4 colorSpace:(id)a5 progressBlock:(id)a6 error:(id *)a7;
- (void)_commonInit;
- (void)_didEnterBackgroundNotification:(id)a3;
- (void)_saveThumbnailToDisk:(CGImage *)a3 forImportedResourceURL:(id)a4 size:(CGSize)a5;
- (void)_updateChangeCount:(unint64_t)a3;
- (void)_willTerminateNotification:(id)a3;
- (void)closeWithCompletionHandler:(id)a3;
- (void)dealloc;
- (void)disableEditing;
- (void)enableEditing;
- (void)openWithCompletionHandler:(id)a3;
- (void)revertToContentsOfURL:(id)a3 completionHandler:(id)a4;
- (void)saveToURL:(id)a3 forSaveOperation:(int64_t)a4 completionHandler:(id)a5;
- (void)setPosterImage:(CGImage *)a3;
@end

@implementation OKDocument

- (void)_commonInit
{
  v3 = objc_alloc_init(OKPresentation);
  self->_presentation = v3;
  [(OKPresentation *)v3 setDocument:self];
  self->_posterImageLock = objc_alloc_init(MEMORY[0x277CCAC60]);
  self->_posterImage = 0;
  self->_hasPosterImageChanged = 0;
  self->_isClosing = 0;
  objc_storeWeak(&self->_delegate, 0);
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:self selector:sel__didReceiveMemoryWarningNotification_ name:*MEMORY[0x277D76670] object:0];
  [v4 addObserver:self selector:sel__didEnterBackgroundNotification_ name:*MEMORY[0x277D76660] object:0];
  [v4 addObserver:self selector:sel__willEnterForegroundNotification_ name:*MEMORY[0x277D76758] object:0];
  [v4 addObserver:self selector:sel__willTerminateNotification_ name:*MEMORY[0x277D76770] object:0];
  v5 = [(UIDocument *)self undoManager];

  [(NSUndoManager *)v5 setLevelsOfUndo:20];
}

- (OKDocument)initWithFileURL:(id)a3
{
  v6.receiver = self;
  v6.super_class = OKDocument;
  v3 = [(UIDocument *)&v6 initWithFileURL:a3];
  v4 = v3;
  if (v3)
  {
    [(NSUndoManager *)[(UIDocument *)v3 undoManager] disableUndoRegistration];
    [(OKDocument *)v4 _commonInit];
    [(NSUndoManager *)[(UIDocument *)v4 undoManager] enableUndoRegistration];
  }

  return v4;
}

- (void)dealloc
{
  if (*MEMORY[0x277D62808] >= 5)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:5 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Document/OKDocument.m" line:174 andFormat:@"Deallocing %@", self];
  }

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D76670] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D76660] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D76758] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D76770] object:0];
  presentation = self->_presentation;
  if (presentation)
  {

    self->_presentation = 0;
  }

  posterImageLock = self->_posterImageLock;
  if (posterImageLock)
  {
    v6 = posterImageLock;
    [(NSRecursiveLock *)v6 lock];

    self->_posterImageLock = 0;
    [(NSRecursiveLock *)v6 unlock];
  }

  posterImage = self->_posterImage;
  if (posterImage)
  {
    CGImageRelease(posterImage);
    self->_posterImage = 0;
  }

  objc_storeWeak(&self->_delegate, 0);
  v8.receiver = self;
  v8.super_class = OKDocument;
  [(UIDocument *)&v8 dealloc];
}

- (id)documentURL
{
  result = [(UIDocument *)self fileURL];
  if (result)
  {

    return [(UIDocument *)self fileURL];
  }

  return result;
}

- (id)localizedName
{
  v3.receiver = self;
  v3.super_class = OKDocument;
  return [(UIDocument *)&v3 localizedName];
}

- (void)_updateChangeCount:(unint64_t)a3
{
  if (a3 <= 3)
  {
    [(UIDocument *)self updateChangeCount:?];
  }
}

- (void)setPosterImage:(CGImage *)a3
{
  [(NSRecursiveLock *)self->_posterImageLock lock];
  posterImage = self->_posterImage;
  if (posterImage)
  {
    CGImageRelease(posterImage);
    self->_posterImage = 0;
  }

  self->_posterImage = CGImageRetain(a3);
  [(OKDocument *)self setHasPosterImageChanged:1];
  posterImageLock = self->_posterImageLock;

  [(NSRecursiveLock *)posterImageLock unlock];
}

- (CGImage)posterImage
{
  [(NSRecursiveLock *)self->_posterImageLock lock];
  v3 = CGImageRetain(self->_posterImage);
  [(NSRecursiveLock *)self->_posterImageLock unlock];

  return v3;
}

+ (id)_fileWrapperPosterImageFilenameKeyWithResolution:(unint64_t)a3
{
  if (a3 == 1024)
  {
    return @"Thumbnail.jpeg";
  }

  else
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"Thumbnail-%d.jpeg", a3];
  }
}

+ (id)_posterImageURLForFileURL:(id)a3 withResolution:(unint64_t)a4
{
  v5 = [a3 URLByAppendingPathComponent:@"QuickLook" isDirectory:1];
  v6 = [objc_opt_class() _fileWrapperPosterImageFilenameKeyWithResolution:a4];

  return [v5 URLByAppendingPathComponent:v6 isDirectory:0];
}

- (BOOL)loadFromContents:(id)a3 ofType:(id)a4 error:(id *)a5
{
  v8 = MEMORY[0x277D62808];
  if (*MEMORY[0x277D62808] >= 5)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:5 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Document/OKDocument.m" line:356 andFormat:@"Document %@ is about to be read...", -[OKDocument documentURL](self, "documentURL", a3, a4)];
  }

  if (!a3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ![a3 isDirectory])
  {
    v14 = [MEMORY[0x277CCA9B8] errorWithDescription:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"Unsupported file format", @"Unsupported file format", @"Localizable"}];
LABEL_15:
    [(OKPresentation *)self->_presentation setCanBeEdited:1];
    if (a5)
    {
      if (v14)
      {
        v15 = v14;
      }

      else
      {
        v15 = [OKError errorForCode:-1];
      }

      *a5 = v15;
    }

    else if (v14)
    {

      v14 = 0;
    }

    if (*v8 >= 4)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Document/OKDocument.m" line:672 andFormat:@"Failed to load document %@: %@", -[OKDocument documentURL](self, "documentURL"), objc_msgSend(v14, "localizedDescription")];
    }

    return 0;
  }

  v9 = objc_autoreleasePoolPush();
  info = 0;
  mach_timebase_info(&info);
  v10 = mach_absolute_time();
  [(OKPresentation *)[(OKDocument *)self presentation] setCanBeEdited:0];
  if ([(OKDocument *)self delegate])
  {
    [(OKDocument *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [(OKDocumentDelegate *)[(OKDocument *)self delegate] documentContentsWillUpdate:self];
    }
  }

  v11 = objc_autoreleasePoolPush();
  v12 = [objc_msgSend(a3 "fileWrappers")];
  if (v12)
  {
    v50 = 0;
    v13 = [MEMORY[0x277CCAC58] propertyListWithData:objc_msgSend(v12 options:"regularFileContents") format:0 error:{0, &v50}];
    if (v13 || !v50)
    {
      [(OKPresentationInfo *)[(OKPresentation *)self->_presentation info] importFromDictionary:v13];
    }

    else if (*v8 >= 4)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Document/OKDocument.m" line:400 andFormat:@"Failed to load info: %@", objc_msgSend(v50, "localizedDescription")];
    }
  }

  else
  {
    [(OKPresentationInfo *)[(OKPresentation *)self->_presentation info] reset];
  }

  [(OKPresentationInfo *)[(OKPresentation *)self->_presentation info] apiVersion];
  if (v17 > 1212.1)
  {
    v18 = MEMORY[0x277CCA9B8];
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = @"Unsupported API Version (Document version is more recent that the SDK)";
LABEL_41:
    v24 = [v19 localizedStringForKey:v20 value:v20 table:@"Localizable"];
LABEL_42:
    v14 = [v18 errorWithDescription:v24];
    objc_autoreleasePoolPop(v11);
    objc_autoreleasePoolPop(v9);
    goto LABEL_15;
  }

  if ([(OKPresentationInfo *)[(OKPresentation *)self->_presentation info] formatVersion]> 2)
  {
    v18 = MEMORY[0x277CCA9B8];
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = @"Unsupported Format Version (Document format is more recent that the SDK)";
    goto LABEL_41;
  }

  if ([(OKPresentationInfo *)[(OKPresentation *)self->_presentation info] formatVersion]< 2)
  {
    v18 = MEMORY[0x277CCA9B8];
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = @"Unsupported Format Version (Document cannot be migrated automatically)";
    goto LABEL_41;
  }

  if (![(NSArray *)[(OKPresentationInfo *)[(OKPresentation *)self->_presentation info] resolutions] count])
  {
    v18 = MEMORY[0x277CCA9B8];
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = @"No resolutions found!";
    goto LABEL_41;
  }

  if (-[OKPresentationInfo requiresProducer](-[OKPresentation info](self->_presentation, "info"), "requiresProducer") && ([+[OKProducerManager defaultManager](OKProducerManager "defaultManager")] & 1) == 0)
  {
    v18 = MEMORY[0x277CCA9B8];
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"Plugin %@ is required and cannot be found", @"Plugin %@ is required and cannot be found", @"Localizable", -[OKPresentationInfo producerIdentifier](-[OKPresentation info](self->_presentation, "info"), "producerIdentifier")];
    goto LABEL_42;
  }

  objc_autoreleasePoolPop(v11);
  v21 = objc_autoreleasePoolPush();
  v22 = [objc_msgSend(a3 "fileWrappers")];
  v50 = 0;
  if (v22 && (v23 = [MEMORY[0x277CCAC58] propertyListWithData:objc_msgSend(v22 options:"regularFileContents") format:1 error:{0, &v50}], v22 = v50, v23) && !v50)
  {
    [(OKPresentation *)self->_presentation reloadTemplatesFromDictionary:?];
  }

  else if (*v8 >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Document/OKDocument.m" line:466 andFormat:@"Failed to load page and widget and material templates: %@", objc_msgSend(v22, "localizedDescription")];
  }

  objc_autoreleasePoolPop(v21);
  v25 = objc_autoreleasePoolPush();
  v26 = [objc_msgSend(a3 "fileWrappers")];
  v50 = 0;
  if (v26 && (v27 = [MEMORY[0x277CCAC58] propertyListWithData:objc_msgSend(v26 options:"regularFileContents") format:1 error:{0, &v50}], v26 = v50, v27) && !v50)
  {
    [(OKPresentation *)self->_presentation reloadPagesFromDictionary:?];
  }

  else if (*v8 >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Document/OKDocument.m" line:489 andFormat:@"Failed to load pages: %@", objc_msgSend(v26, "localizedDescription")];
  }

  objc_autoreleasePoolPop(v25);
  v28 = objc_autoreleasePoolPush();
  v29 = [objc_msgSend(a3 "fileWrappers")];
  v50 = 0;
  if (v29 && (v30 = [MEMORY[0x277CCAC58] propertyListWithData:objc_msgSend(v29 options:"regularFileContents") format:1 error:{0, &v50}], v29 = v50, v30) && !v50)
  {
    [(OKPresentation *)self->_presentation reloadNavigatorsFromDictionary:?];
  }

  else if (*v8 >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Document/OKDocument.m" line:512 andFormat:@"Failed to load navigators: %@", objc_msgSend(v29, "localizedDescription")];
  }

  objc_autoreleasePoolPop(v28);
  v31 = objc_autoreleasePoolPush();
  v32 = [objc_msgSend(a3 "fileWrappers")];
  v50 = 0;
  if (v32 && (v33 = [MEMORY[0x277CCAC58] propertyListWithData:objc_msgSend(v32 options:"regularFileContents") format:1 error:{0, &v50}], v32 = v50, v33) && !v50)
  {
    [(OKPresentation *)self->_presentation reloadCouchesFromDictionary:?];
  }

  else if (*v8 >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Document/OKDocument.m" line:535 andFormat:@"Failed to load couches: %@", objc_msgSend(v32, "localizedDescription")];
  }

  objc_autoreleasePoolPop(v31);
  v34 = objc_autoreleasePoolPush();
  v35 = [objc_msgSend(a3 "fileWrappers")];
  v50 = 0;
  if (v35 && (v36 = [MEMORY[0x277CCAC58] propertyListWithData:objc_msgSend(v35 options:"regularFileContents") format:1 error:{0, &v50}], v35 = v50, v36) && !v50)
  {
    [(OKPresentation *)self->_presentation reloadGuidelinesFromArray:?];
  }

  else if (*v8 >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Document/OKDocument.m" line:558 andFormat:@"Failed to load guidelines: %@", objc_msgSend(v35, "localizedDescription")];
  }

  objc_autoreleasePoolPop(v34);
  v37 = objc_autoreleasePoolPush();
  v38 = [objc_msgSend(a3 "fileWrappers")];
  v50 = 0;
  if (v38 && (v39 = [MEMORY[0x277CCAC58] propertyListWithData:objc_msgSend(v38 options:"regularFileContents") format:1 error:{0, &v50}], v38 = v50, v39) && !v50)
  {
    [(OKPresentation *)self->_presentation reloadFeedersFromDictionary:?];
  }

  else if (*v8 >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Document/OKDocument.m" line:581 andFormat:@"Failed to load feeders: %@", objc_msgSend(v38, "localizedDescription")];
  }

  objc_autoreleasePoolPop(v37);
  v40 = objc_autoreleasePoolPush();
  v41 = [objc_msgSend(a3 "fileWrappers")];
  if (v41)
  {
    v42 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:objc_msgSend(v41 encoding:{"regularFileContents"), 4}];
    [(OKPresentation *)self->_presentation addMainScript:v42 extend:0];
  }

  objc_autoreleasePoolPop(v40);
  [(OKPresentation *)self->_presentation resolveIfNeeded];
  v43 = objc_autoreleasePoolPush();
  v44 = [objc_msgSend(a3 "fileWrappers")];
  [(NSRecursiveLock *)self->_posterImageLock lock];
  posterImage = self->_posterImage;
  if (posterImage)
  {
    CGImageRelease(posterImage);
    self->_posterImage = 0;
  }

  if (v44)
  {
    v46 = [objc_msgSend(v44 "fileWrappers")];
    if (v46)
    {
      [v46 regularFileContents];
      v47 = OFCGImageCreateWithData();
      if (v47)
      {
        v48 = v47;
        self->_posterImage = CGImageRetain(v47);
        CGImageRelease(v48);
      }
    }
  }

  [(OKDocument *)self setHasPosterImageChanged:0];
  [(NSRecursiveLock *)self->_posterImageLock unlock];
  objc_autoreleasePoolPop(v43);
  [(OKPresentation *)self->_presentation setCanBeEdited:1];
  if ([(OKDocument *)self delegate])
  {
    [(OKDocument *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [(OKDocumentDelegate *)[(OKDocument *)self delegate] documentContentsDidUpdate:self];
    }
  }

  [(OKDocument *)self setHasPosterImageChanged:0];
  v49 = mach_absolute_time();
  if (*v8 >= 5)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:5 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Document/OKDocument.m" line:647 andFormat:@"%f seconds was spent loading document %@", ((((v49 - v10) * info.numer) / info.denom) / 1000000000.0), -[OKDocument documentURL](self, "documentURL")];
  }

  objc_autoreleasePoolPop(v9);
  return 1;
}

- (id)contentsForType:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277D62808];
  if (*MEMORY[0x277D62808] >= 5)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:5 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Document/OKDocument.m" line:697 andFormat:@"Document %@ is about to be written...", -[OKDocument documentURL](self, "documentURL", a3)];
  }

  v7 = objc_alloc(MEMORY[0x277CCAA20]);
  v8 = [v7 initDirectoryWithFileWrappers:MEMORY[0x277CBEC10]];
  v9 = objc_autoreleasePoolPush();
  info = 0;
  mach_timebase_info(&info);
  v75 = mach_absolute_time();
  context = v9;
  if (![(OKDocument *)self documentURL])
  {
    goto LABEL_7;
  }

  v78 = 0;
  v10 = [objc_alloc(MEMORY[0x277CCAA20]) initWithURL:-[OKDocument documentURL](self options:"documentURL") error:{0, &v78}];
  v11 = v10;
  if (v78 && v10)
  {

LABEL_7:
    v11 = 0;
  }

  if ([(OKPresentation *)self->_presentation haveTemplatesChanged]|| !v11)
  {
    v78 = 0;
    v13 = MEMORY[0x277CCAC58];
    v14 = [(OKPresentation *)self->_presentation templatesDictionary];
    if ([(OKPresentationInfo *)[(OKPresentation *)self->_presentation info] format])
    {
      v15 = 200;
    }

    else
    {
      v15 = 100;
    }

    v16 = [v13 dataWithPropertyList:v14 format:v15 options:0 error:&v78];
    if (!v16)
    {
      goto LABEL_66;
    }

    v17 = [objc_alloc(MEMORY[0x277CCAA20]) initRegularFileWithContents:v16];
    [v17 setPreferredFilename:@"Templates.plist"];
    [v8 addFileWrapper:v17];
  }

  else
  {
    v12 = [objc_msgSend(v11 "fileWrappers")];
    if (v12)
    {
      [v8 addFileWrapper:v12];
    }
  }

  if ([(OKPresentation *)self->_presentation havePagesChanged]|| !v11)
  {
    v78 = 0;
    v19 = MEMORY[0x277CCAC58];
    v20 = [(OKPresentation *)self->_presentation pagesDictionary];
    if ([(OKPresentationInfo *)[(OKPresentation *)self->_presentation info] format])
    {
      v21 = 200;
    }

    else
    {
      v21 = 100;
    }

    v22 = [v19 dataWithPropertyList:v20 format:v21 options:0 error:&v78];
    if (!v22)
    {
      goto LABEL_66;
    }

    v23 = [objc_alloc(MEMORY[0x277CCAA20]) initRegularFileWithContents:v22];
    [v23 setPreferredFilename:@"Pages.plist"];
    [v8 addFileWrapper:v23];
  }

  else
  {
    v18 = [objc_msgSend(v11 "fileWrappers")];
    if (v18)
    {
      [v8 addFileWrapper:v18];
    }
  }

  if ([(OKPresentation *)self->_presentation haveNavigatorsChanged]|| !v11)
  {
    v78 = 0;
    v25 = MEMORY[0x277CCAC58];
    v26 = [(OKPresentation *)self->_presentation navigatorsDictionary];
    if ([(OKPresentationInfo *)[(OKPresentation *)self->_presentation info] format])
    {
      v27 = 200;
    }

    else
    {
      v27 = 100;
    }

    v28 = [v25 dataWithPropertyList:v26 format:v27 options:0 error:&v78];
    if (!v28)
    {
      goto LABEL_66;
    }

    v29 = [objc_alloc(MEMORY[0x277CCAA20]) initRegularFileWithContents:v28];
    [v29 setPreferredFilename:@"Navigators.plist"];
    [v8 addFileWrapper:v29];
  }

  else
  {
    v24 = [objc_msgSend(v11 "fileWrappers")];
    if (v24)
    {
      [v8 addFileWrapper:v24];
    }
  }

  if ([(OKPresentation *)self->_presentation haveCouchesChanged]|| !v11)
  {
    v78 = 0;
    v31 = MEMORY[0x277CCAC58];
    v32 = [(OKPresentation *)self->_presentation couchesDictionary];
    if ([(OKPresentationInfo *)[(OKPresentation *)self->_presentation info] format])
    {
      v33 = 200;
    }

    else
    {
      v33 = 100;
    }

    v34 = [v31 dataWithPropertyList:v32 format:v33 options:0 error:&v78];
    if (!v34)
    {
      goto LABEL_66;
    }

    v35 = [objc_alloc(MEMORY[0x277CCAA20]) initRegularFileWithContents:v34];
    [v35 setPreferredFilename:@"Couches.plist"];
    [v8 addFileWrapper:v35];
  }

  else
  {
    v30 = [objc_msgSend(v11 "fileWrappers")];
    if (v30)
    {
      [v8 addFileWrapper:v30];
    }
  }

  if ([(OKPresentation *)self->_presentation haveGuidelinesChanged]|| !v11)
  {
    v78 = 0;
    v37 = MEMORY[0x277CCAC58];
    v38 = [(OKPresentation *)self->_presentation guidelinesDictionary];
    if ([(OKPresentationInfo *)[(OKPresentation *)self->_presentation info] format])
    {
      v39 = 200;
    }

    else
    {
      v39 = 100;
    }

    v40 = [v37 dataWithPropertyList:v38 format:v39 options:0 error:&v78];
    if (!v40)
    {
      goto LABEL_66;
    }

    v41 = [objc_alloc(MEMORY[0x277CCAA20]) initRegularFileWithContents:v40];
    [v41 setPreferredFilename:@"Guidelines.plist"];
    [v8 addFileWrapper:v41];
  }

  else
  {
    v36 = [objc_msgSend(v11 "fileWrappers")];
    if (v36)
    {
      [v8 addFileWrapper:v36];
    }
  }

  if (![(OKPresentation *)self->_presentation haveFeedersChanged]&& v11)
  {
    v42 = [objc_msgSend(v11 "fileWrappers")];
    if (v42)
    {
      [v8 addFileWrapper:v42];
    }

LABEL_62:
    if ([(OKPresentation *)self->_presentation haveScriptsChanged]|| !v11)
    {
      v50 = [-[OKPresentation mainScript](self->_presentation "mainScript")];
      if (!v50)
      {
        if (v11)
        {
        }

        if (v8)
        {
        }

        objc_autoreleasePoolPop(v9);
        if (a4)
        {
          goto LABEL_125;
        }

        goto LABEL_124;
      }

      v51 = [objc_alloc(MEMORY[0x277CCAA20]) initRegularFileWithContents:v50];
      [v51 setPreferredFilename:@"Script.js"];
      [v8 addFileWrapper:v51];
    }

    else
    {
      v48 = [objc_msgSend(v11 "fileWrappers")];
      if (v48)
      {
        [v8 addFileWrapper:v48];
      }
    }

    [(OKPresentation *)[(OKDocument *)self presentation] setPresentationChanged:0];
    if ([(OKDocument *)self hasPosterImageChanged])
    {
      [(NSRecursiveLock *)self->_posterImageLock lock];
      if (self->_posterImage)
      {
        v52 = OFCGImageJPEGRepresentation();
        if (!v52)
        {
          v49 = [MEMORY[0x277CCA9B8] errorWithDescription:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"Poster image cannot be archived", @"Poster image cannot be archived", @"Localizable"}];
          if (v11)
          {
          }

          if (v8)
          {
          }

          posterImageLock = self->_posterImageLock;
LABEL_118:
          [(OKPresentationInfo *)posterImageLock unlock];
          goto LABEL_119;
        }

        v53 = v52;
        v54 = objc_alloc(MEMORY[0x277CCAA20]);
        v55 = [v54 initDirectoryWithFileWrappers:MEMORY[0x277CBEC10]];
        [v55 setPreferredFilename:@"QuickLook"];
        [v8 addFileWrapper:v55];
        v56 = [objc_alloc(MEMORY[0x277CCAA20]) initRegularFileWithContents:v53];
        [v56 setPreferredFilename:{objc_msgSend(objc_opt_class(), "_fileWrapperPosterImageFilenameKeyWithResolution:", 1024)}];
        [v55 addFileWrapper:v56];

        ThumbnailWithData = OFCGImageCreateThumbnailWithData();
        if (ThumbnailWithData)
        {
          v58 = ThumbnailWithData;
          v59 = OFCGImageJPEGRepresentation();
          if (v59)
          {
            v60 = [objc_alloc(MEMORY[0x277CCAA20]) initRegularFileWithContents:v59];
            [v60 setPreferredFilename:{objc_msgSend(objc_opt_class(), "_fileWrapperPosterImageFilenameKeyWithResolution:", 256)}];
            [v55 addFileWrapper:v60];
          }

          CFRelease(v58);
        }
      }

      [(NSRecursiveLock *)self->_posterImageLock unlock];
    }

    else
    {
      v61 = [objc_msgSend(v11 "fileWrappers")];
      if (v61)
      {
        [v8 addFileWrapper:v61];
      }
    }

    [(OKPresentationInfo *)[(OKPresentation *)self->_presentation info] lock];
    v62 = [(OKPresentationInfo *)[(OKPresentation *)self->_presentation info] lastModifiedDate];
    v63 = [(OKPresentationInfo *)[(OKPresentation *)self->_presentation info] versionID];
    -[OKPresentationInfo setLastModifiedDate:](-[OKPresentation info](self->_presentation, "info"), "setLastModifiedDate:", [MEMORY[0x277CBEAA8] date]);
    -[OKPresentationInfo setVersionID:](-[OKPresentation info](self->_presentation, "info"), "setVersionID:", [MEMORY[0x277CCACA8] generateUUID]);
    v77 = 0;
    v64 = [MEMORY[0x277CCAC58] dataWithPropertyList:-[OKPresentationInfo dictionary](-[OKPresentation info](self->_presentation format:"info") options:"dictionary") error:{100, 0, &v77}];
    v65 = v77;
    v66 = [(OKPresentation *)self->_presentation info];
    if (v64 && !v65)
    {
      [(OKPresentationInfo *)v66 unlock];
      if (v62)
      {
      }

      if (v63)
      {
      }

      v67 = [objc_alloc(MEMORY[0x277CCAA20]) initRegularFileWithContents:v64];
      [v67 setPreferredFilename:@"Info.plist"];
      [v8 addFileWrapper:v67];

      v68 = [objc_msgSend(v11 "fileWrappers")];
      if (!v68)
      {
        v69 = objc_alloc(MEMORY[0x277CCAA20]);
        v68 = [v69 initDirectoryWithFileWrappers:MEMORY[0x277CBEC10]];
        [v68 setPreferredFilename:@"Resources"];
      }

      [v8 addFileWrapper:v68];
      v70 = MEMORY[0x277D62808];
      if (v11)
      {
      }

      if ([(OKDocument *)self isClosing])
      {
        [(OKDocument *)self _cleanupUnusedResources];
      }

      v71 = mach_absolute_time();
      if (*v70 >= 5)
      {
        [MEMORY[0x277D627B8] logMessageWithLevel:5 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Document/OKDocument.m" line:1100 andFormat:@"%f seconds was spent saving document %@", ((((v71 - v75) * info.numer) / info.denom) / 1000000000.0), -[OKDocument documentURL](self, "documentURL")];
      }

      objc_autoreleasePoolPop(context);
      return v8;
    }

    [(OKPresentationInfo *)v66 setLastModifiedDate:v62];
    [(OKPresentationInfo *)[(OKPresentation *)self->_presentation info] setVersionID:v63];
    v6 = MEMORY[0x277D62808];
    if (v62)
    {
    }

    v9 = context;
    if (v63)
    {
    }

    v49 = v77;
    if (v11)
    {
    }

    if (v8)
    {
    }

    posterImageLock = [(OKPresentation *)self->_presentation info];
    goto LABEL_118;
  }

  v78 = 0;
  v43 = MEMORY[0x277CCAC58];
  v44 = [(OKPresentation *)self->_presentation feedersDictionary];
  if ([(OKPresentationInfo *)[(OKPresentation *)self->_presentation info] format])
  {
    v45 = 200;
  }

  else
  {
    v45 = 100;
  }

  v46 = [v43 dataWithPropertyList:v44 format:v45 options:0 error:&v78];
  if (v46)
  {
    v47 = [objc_alloc(MEMORY[0x277CCAA20]) initRegularFileWithContents:v46];
    [v47 setPreferredFilename:@"Feeders.plist"];
    [v8 addFileWrapper:v47];

    goto LABEL_62;
  }

LABEL_66:
  v49 = v78;
  if (v11)
  {
  }

  if (v8)
  {
  }

LABEL_119:
  objc_autoreleasePoolPop(v9);
  if (a4)
  {
    if (v49)
    {
      v74 = v49;
LABEL_126:
      *a4 = v74;
      goto LABEL_127;
    }

LABEL_125:
    v74 = [OKError errorForCode:-1];
    v49 = 0;
    goto LABEL_126;
  }

  if (v49)
  {

LABEL_124:
    v49 = 0;
  }

LABEL_127:
  if (*v6 >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Document/OKDocument.m" line:1116 andFormat:@"Failed to save document %@: %@", -[OKDocument documentURL](self, "documentURL"), objc_msgSend(v49, "localizedDescription")];
  }

  return 0;
}

- (void)saveToURL:(id)a3 forSaveOperation:(int64_t)a4 completionHandler:(id)a5
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__OKDocument_saveToURL_forSaveOperation_completionHandler___block_invoke;
  v6[3] = &unk_279C8E770;
  v6[4] = a5;
  v5.receiver = self;
  v5.super_class = OKDocument;
  [(UIDocument *)&v5 saveToURL:a3 forSaveOperation:a4 completionHandler:v6];
}

- (void)revertToContentsOfURL:(id)a3 completionHandler:(id)a4
{
  v4.receiver = self;
  v4.super_class = OKDocument;
  [(UIDocument *)&v4 revertToContentsOfURL:a3 completionHandler:a4];
}

- (BOOL)writeContents:(id)a3 andAttributes:(id)a4 safelyToURL:(id)a5 forSaveOperation:(int64_t)a6 error:(id *)a7
{
  v10.receiver = self;
  v10.super_class = OKDocument;
  v8 = [(UIDocument *)&v10 writeContents:a3 andAttributes:a4 safelyToURL:a5 forSaveOperation:a6 error:a7];
  if (v8)
  {
    [(OKDocument *)self setHasPosterImageChanged:0];
    [(OKPresentation *)[(OKDocument *)self presentation] setPresentationChanged:0];
  }

  return v8;
}

- (void)openWithCompletionHandler:(id)a3
{
  [(OKDocument *)self setIsClosing:0];
  [(OKPresentation *)self->_presentation setCanBeEdited:0];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__OKDocument_openWithCompletionHandler___block_invoke;
  v6[3] = &unk_279C8E798;
  v6[4] = self;
  v6[5] = a3;
  v5.receiver = self;
  v5.super_class = OKDocument;
  [(UIDocument *)&v5 openWithCompletionHandler:v6];
}

uint64_t __40__OKDocument_openWithCompletionHandler___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(*(a1 + 32) + 200) setCanBeEdited:1];
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (BOOL)readFromURL:(id)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = 0;
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  if ([a3 isFileURL])
  {
    v7 = [objc_alloc(MEMORY[0x277CCAA20]) initWithURL:a3 options:0 error:a4];
    if (v7)
    {
      v8 = [objc_msgSend(a3 "absoluteString")];
      v9 = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x277CC1F58], v8, 0);
      if ([(__CFString *)v9 length]&& v9)
      {
        v15 = 0;
        v16 = &v15;
        v17 = 0x3052000000;
        v18 = __Block_byref_object_copy__0;
        v19 = __Block_byref_object_dispose__0;
        v20 = 0;
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __32__OKDocument_readFromURL_error___block_invoke;
        v14[3] = &unk_279C8E7C0;
        v14[4] = self;
        v14[5] = v7;
        v14[6] = v9;
        v14[7] = &v21;
        v14[8] = &v15;
        [(OKDocument *)self performBlockAndWait:v14 usingQueue:dispatch_get_global_queue(0, 0)];
        v10 = v16[5];
        if (a4)
        {
          *a4 = v10;
        }

        v11 = v10;
        _Block_object_dispose(&v15, 8);
      }
    }
  }

  v12 = *(v22 + 24);
  _Block_object_dispose(&v21, 8);
  return v12;
}

id __32__OKDocument_readFromURL_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) isRegularFile];
  v4 = *(a1 + 40);
  if (v3)
  {
    v4 = [*(a1 + 40) regularFileContents];
  }

  *(*(*(a1 + 56) + 8) + 24) = [v2 loadFromContents:v4 ofType:*(a1 + 48) error:*(*(a1 + 64) + 8) + 40];
  v5 = *(*(*(a1 + 64) + 8) + 40);

  return v5;
}

- (void)closeWithCompletionHandler:(id)a3
{
  [(OKPresentation *)[(OKDocument *)self presentation] setCanBeEdited:0];
  [(OKDocument *)self setIsClosing:1];
  if ([(OKDocument *)self _hasUnusedResources])
  {
    [(OKDocument *)self _updateChangeCount:0];
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__OKDocument_closeWithCompletionHandler___block_invoke;
  v6[3] = &unk_279C8E770;
  v6[4] = a3;
  v5.receiver = self;
  v5.super_class = OKDocument;
  [(UIDocument *)&v5 closeWithCompletionHandler:v6];
}

- (void)disableEditing
{
  v3.receiver = self;
  v3.super_class = OKDocument;
  [(UIDocument *)&v3 disableEditing];
  [(OKPresentation *)[(OKDocument *)self presentation] setCanBeEdited:0];
}

- (void)enableEditing
{
  v3.receiver = self;
  v3.super_class = OKDocument;
  [(UIDocument *)&v3 enableEditing];
  [(OKPresentation *)[(OKDocument *)self presentation] setCanBeEdited:1];
}

+ (CGImage)retainedPosterImageForFileURL:(id)a3 withResolution:(unint64_t)a4 coordinateReading:(BOOL)a5
{
  v5 = a5;
  v9 = pthread_main_np();
  v10 = MEMORY[0x277D62808];
  if (v9 && *MEMORY[0x277D62808] >= 5)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:5 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Document/OKDocument.m" line:1389 andFormat:@"%@ MUST not be called from the main thread", NSStringFromSelector(a2)];
  }

  v11 = [objc_opt_class() _posterImageURLForFileURL:a3 withResolution:a4];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  if (v5)
  {
    v12 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:0];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __77__OKDocument_retainedPosterImageForFileURL_withResolution_coordinateReading___block_invoke;
    v15[3] = &unk_279C8E7E8;
    v15[4] = &v17;
    v16 = 0;
    [v12 coordinateReadingItemAtURL:v11 options:1 error:&v16 byAccessor:v15];

    if (v16 && *v10 >= 4)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Document/OKDocument.m" line:1408 andFormat:@"En error occured retrieving poster image for document %@: %@", a3, objc_msgSend(v16, "localizedDescription")];
    }

    v13 = v18[3];
  }

  else
  {
    v13 = OFCGImageCreateWithURL();
    v18[3] = v13;
  }

  _Block_object_dispose(&v17, 8);
  return v13;
}

uint64_t __77__OKDocument_retainedPosterImageForFileURL_withResolution_coordinateReading___block_invoke(uint64_t a1)
{
  result = OFCGImageCreateWithURL();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

+ (id)infoForFileURL:(id)a3 coordinateReading:(BOOL)a4
{
  v4 = a4;
  v7 = pthread_main_np();
  v8 = MEMORY[0x277D62808];
  if (v7 && *MEMORY[0x277D62808] >= 5)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:5 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Document/OKDocument.m" line:1423 andFormat:@"%@ MUST not be called from the main thread", NSStringFromSelector(a2)];
  }

  v9 = [a3 URLByAppendingPathComponent:@"Info.plist" isDirectory:0];
  v10 = objc_alloc_init(OKPresentationInfo);
  if (v4)
  {
    v11 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:0];
    v13[4] = v10;
    v14 = 0;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __47__OKDocument_infoForFileURL_coordinateReading___block_invoke;
    v13[3] = &unk_279C8E698;
    [v11 coordinateReadingItemAtURL:v9 options:1 error:&v14 byAccessor:v13];

    if (v14)
    {
      if (*v8 >= 4)
      {
        [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Document/OKDocument.m" line:1442 andFormat:@"En error occured retrieving info metadata for document %@: %@", a3, objc_msgSend(v14, "localizedDescription")];
      }

      if (v10)
      {

        v10 = 0;
      }
    }
  }

  else
  {
    -[OKPresentationInfo importFromDictionary:](v10, "importFromDictionary:", [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v9]);
  }

  return v10;
}

uint64_t __47__OKDocument_infoForFileURL_coordinateReading___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:a2];

  return [v2 importFromDictionary:v3];
}

+ (id)_importedResourceURLWithHash:(id)a3
{
  v3 = MEMORY[0x277CBEBC0];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@://%@", @"imported", a3];

  return [v3 URLWithString:v4];
}

- (id)_importedResourceURLForRessourceURL:(id)a3
{
  if ([objc_msgSend(a3 "scheme")])
  {
    return a3;
  }

  v5 = objc_opt_class();
  v6 = [objc_msgSend(a3 "absoluteString")];

  return [v5 _importedResourceURLWithHash:v6];
}

+ (id)_hashForImportedResourceURL:(id)a3
{
  v3 = [a3 host];

  return [v3 stringByDeletingPathExtension];
}

- (id)_extensionForImportedResourceURL:(id)a3
{
  if ([(OKDocument *)self _metadataObjectForKey:@"UTI" forImportedResourceURL:a3])
  {

    return OFUTTypeExtensionForUTI();
  }

  else
  {
    if (*MEMORY[0x277D62808] >= 4)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Document/OKDocument.m" line:1503 andFormat:@"Media UTI for imported resource %@ is unknown", a3];
    }

    return 0;
  }
}

- (id)_extensionForThumbnailImportedResourceURL:(id)a3
{
  v3 = [(OKDocument *)self _metadataObjectForKey:@"Opaque" forImportedResourceURL:a3];
  if (v3)
  {
    [v3 BOOLValue];
  }

  return OFUTTypeExtensionForUTI();
}

- (id)_scriptURL
{
  v2 = [(OKDocument *)self documentURL];

  return [v2 URLByAppendingPathComponent:@"Script.js" isDirectory:1];
}

- (id)_importedResourcesDirectoryURL
{
  v2 = [(OKDocument *)self documentURL];

  return [v2 URLByAppendingPathComponent:@"Resources" isDirectory:1];
}

+ (id)_importedResourceDirectoryURLForImportedResourceURL:(id)a3 withDocumentURL:(id)a4
{
  v5 = [objc_opt_class() _importedResourcesDirectoryURLForDocumentURL:a4];
  v6 = [objc_opt_class() _hashForImportedResourceURL:a3];

  return [v5 URLByAppendingPathComponent:v6 isDirectory:1];
}

- (id)_importedResourceDirectoryURLForImportedResourceURL:(id)a3
{
  v4 = [(OKDocument *)self _importedResourcesDirectoryURL];
  v5 = [objc_opt_class() _hashForImportedResourceURL:a3];

  return [v4 URLByAppendingPathComponent:v5 isDirectory:1];
}

- (id)_importedResourceDirectoryURLForImportedResourceURL:(id)a3 withImportedResourcesDirectoryURL:(id)a4
{
  v5 = [objc_opt_class() _hashForImportedResourceURL:a3];

  return [a4 URLByAppendingPathComponent:v5 isDirectory:1];
}

+ (id)_importedMediaURLForImportedResourceURL:(id)a3 withDocumentURL:(id)a4 extension:(id)a5
{
  v6 = [objc_msgSend(a1 _importedResourceDirectoryURLForImportedResourceURL:a3 withDocumentURL:{a4), "URLByAppendingPathComponent:isDirectory:", @"media", 0}];

  return [v6 URLByAppendingPathExtension:a5];
}

- (id)_importedMediaURLForImportedResourceURL:(id)a3
{
  v5 = [-[OKDocument _importedResourceDirectoryURLForImportedResourceURL:](self "_importedResourceDirectoryURLForImportedResourceURL:{"URLByAppendingPathComponent:isDirectory:", @"media", 0}")];
  v6 = [(OKDocument *)self _extensionForImportedResourceURL:a3];

  return [v5 URLByAppendingPathExtension:v6];
}

- (id)_importedMediaURLForImportedResourceURL:(id)a3 withImportedResourceDirectoryURL:(id)a4 withExtension:(id)a5
{
  v6 = [a4 URLByAppendingPathComponent:@"media" isDirectory:0];

  return [v6 URLByAppendingPathExtension:a5];
}

+ (id)_importedThumbnailURLForImportedResourceURL:(id)a3 withDocumentURL:(id)a4 withExtension:(id)a5
{
  v6 = [objc_msgSend(objc_opt_class() _importedResourceDirectoryURLForImportedResourceURL:a3 withDocumentURL:{a4), "URLByAppendingPathComponent:isDirectory:", @"thumbnail", 0}];

  return [v6 URLByAppendingPathExtension:a5];
}

- (id)_importedThumbnailURLForImportedResourceURL:(id)a3
{
  v5 = [-[OKDocument _importedResourceDirectoryURLForImportedResourceURL:](self "_importedResourceDirectoryURLForImportedResourceURL:{"URLByAppendingPathComponent:isDirectory:", @"thumbnail", 0}")];
  v6 = [(OKDocument *)self _extensionForThumbnailImportedResourceURL:a3];

  return [v5 URLByAppendingPathExtension:v6];
}

- (id)_importedThumbnailURLForImportedResourceURL:(id)a3 withImportedResourceDirectoryURL:(id)a4 withExtension:(id)a5
{
  v6 = [a4 URLByAppendingPathComponent:@"thumbnail" isDirectory:0];

  return [v6 URLByAppendingPathExtension:a5];
}

+ (id)_importedMetadataURLForImportedResourceURL:(id)a3 withDocumentURL:(id)a4
{
  v4 = [objc_opt_class() _importedResourceDirectoryURLForImportedResourceURL:a3 withDocumentURL:a4];

  return [v4 URLByAppendingPathComponent:@"metadata.plist" isDirectory:0];
}

- (id)_importedMetadataURLForImportedResourceURL:(id)a3
{
  v3 = [(OKDocument *)self _importedResourceDirectoryURLForImportedResourceURL:a3];

  return [v3 URLByAppendingPathComponent:@"metadata.plist" isDirectory:0];
}

- (id)_importedThumbnailsDirectoryURLForImportedResourceURL:(id)a3
{
  v3 = [(OKDocument *)self _importedResourceDirectoryURLForImportedResourceURL:a3];

  return [v3 URLByAppendingPathComponent:@"Thumbnails.nosync" isDirectory:1];
}

- (id)_importedThumbnailURLForImportedResourceURL:(id)a3 resolution:(unint64_t)a4
{
  v7 = [(OKDocument *)self _importedThumbnailsDirectoryURLForImportedResourceURL:?];
  v8 = [v7 URLByAppendingPathComponent:objc_msgSend(MEMORY[0x277CCACA8] isDirectory:{"stringWithFormat:", @"%lu", a4), 0}];
  v9 = [(OKDocument *)self _extensionForThumbnailImportedResourceURL:a3];

  return [v8 URLByAppendingPathExtension:v9];
}

- (id)URLForResource:(id)a3 withExtension:(id)a4
{
  v5 = [-[OKDocument _importedResourcesDirectoryURL](self "_importedResourcesDirectoryURL")];

  return [v5 URLByAppendingPathExtension:a4];
}

- (BOOL)isImportedResourceURLEmbedded:(id)a3
{
  v3 = [(OKDocument *)self _importedResourceDirectoryURLForImportedResourceURL:a3];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCAA00]);
    v7 = 0;
    v5 = [v4 fileExistsAtPath:objc_msgSend(v3 isDirectory:{"path"), &v7}];
    LOBYTE(v3) = v5 & v7;
  }

  return v3;
}

- (id)importResourceURL:(id)a3 opaque:(BOOL)a4 force:(BOOL)a5 progressBlock:(id)a6 error:(id *)a7
{
  v10 = a4;
  v14 = pthread_main_np();
  v15 = MEMORY[0x277D62808];
  if (v14 && *MEMORY[0x277D62808] >= 5)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:5 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Document/OKDocument.m" line:1675 andFormat:@"%@ MUST not be called from the main thread", NSStringFromSelector(a2)];
  }

  v30 = 0;
  v16 = [(OKDocument *)self _importedResourceURLForRessourceURL:a3];
  if (![(OKDocument *)self isImportedResourceURLEmbedded:v16])
  {
LABEL_7:
    v24 = 0;
    v25 = &v24;
    v26 = 0x3052000000;
    v27 = __Block_byref_object_copy__0;
    v28 = __Block_byref_object_dispose__0;
    v29 = 0;
    v19 = [[OKDocumentImportOperation alloc] initWithDocument:self resourceURL:a3 importedResourceURL:v16 opaque:v10];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __65__OKDocument_importResourceURL_opaque_force_progressBlock_error___block_invoke;
    v23[3] = &unk_279C8E840;
    v23[7] = a3;
    v23[8] = &v24;
    v23[4] = self;
    v23[5] = v16;
    v23[6] = v19;
    [(OFNSOperation *)v19 setFinishBlock:v23];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __65__OKDocument_importResourceURL_opaque_force_progressBlock_error___block_invoke_3;
    v22[3] = &unk_279C8E868;
    v22[4] = a6;
    [(OFNSOperation *)v19 performSynchronously:v22];
    if (a7)
    {
      *a7 = [(OFNSOperation *)v19 error];
    }

    v20 = v25[5];
    _Block_object_dispose(&v24, 8);
    return v20;
  }

  if (a5)
  {
    v17 = [(OKDocument *)self _importedResourceDirectoryURLForImportedResourceURL:v16];
    v18 = objc_alloc_init(MEMORY[0x277CCAA00]);
    LODWORD(v17) = [v18 removeItemAtURL:v17 error:a7];

    if (!v17)
    {
      return 0;
    }

    goto LABEL_7;
  }

  if (*v15 >= 5)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:5 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Document/OKDocument.m" line:1685 andFormat:@"Resource is already imported: %@ <=> %@", v16, a3];
  }

  (*(a6 + 2))(a6, &v30, 1.0);
  return [(OKPresentation *)self->_presentation mediaItemForURL:v16];
}

uint64_t __65__OKDocument_importResourceURL_opaque_force_progressBlock_error___block_invoke(uint64_t a1, void *a2)
{
  if (([a2 isCancelled] & 1) != 0 || objc_msgSend(a2, "error"))
  {
    result = [*(a1 + 48) isCancelled];
    if (result)
    {
      if (*MEMORY[0x277D62808] >= 4)
      {
        return [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Document/OKDocument.m" line:1728 andFormat:@"Resource import has been cancelled: %@ <=> %@", *(a1 + 40), *(a1 + 56), v6];
      }
    }

    else
    {
      result = [*(a1 + 48) error];
      if (result && *MEMORY[0x277D62808] >= 4)
      {
        return [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Document/OKDocument.m" line:1732 andFormat:@"Resource import failed: %@ <=> %@ with error: %@", *(a1 + 40), *(a1 + 56), objc_msgSend(objc_msgSend(*(a1 + 48), "error"), "localizedDescription")];
      }
    }
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 40) = [*(*(a1 + 32) + 200) mediaItemForURL:*(a1 + 40)];
    [*(*(*(a1 + 64) + 8) + 40) invalidate];
    v5 = *(a1 + 32);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __65__OKDocument_importResourceURL_opaque_force_progressBlock_error___block_invoke_2;
    v7[3] = &unk_279C8E818;
    v7[4] = v5;
    return [v5 performBlockOnMainThread:v7];
  }

  return result;
}

uint64_t __65__OKDocument_importResourceURL_opaque_force_progressBlock_error___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

- (id)importResourceURLs:(id)a3 opaque:(BOOL)a4 force:(BOOL)a5 progressBlock:(id)a6 error:(id *)a7
{
  v52 = *MEMORY[0x277D85DE8];
  if (pthread_main_np() && *MEMORY[0x277D62808] >= 5)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:5 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Document/OKDocument.m" line:1761 andFormat:@"%@ MUST not be called from the main thread", NSStringFromSelector(a2)];
  }

  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 1;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v10 = objc_alloc_init(MEMORY[0x277CCA930]);
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x2020000000;
  v45[3] = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = [a3 count];
  v28 = objc_alloc_init(MEMORY[0x277CCABD8]);
  [v28 setMaxConcurrentOperationCount:{objc_msgSend(objc_msgSend(MEMORY[0x277CCAC38], "processInfo"), "processorCount")}];
  [v10 lock];
  [v10 unlockWithCondition:v42[3]];
  v23 = v8;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v11 = [a3 countByEnumeratingWithState:&v37 objects:v51 count:16];
  if (v11)
  {
    v12 = 0;
    v13 = *v38;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v38 != v13)
        {
          objc_enumerationMutation(a3);
        }

        if (*(v47 + 24) == 1)
        {
          v15 = *(*(&v37 + 1) + 8 * i);
          v34[0] = MEMORY[0x277D85DD0];
          v34[1] = 3221225472;
          v34[2] = __66__OKDocument_importResourceURLs_opaque_force_progressBlock_error___block_invoke;
          v34[3] = &unk_279C8E8B8;
          v34[4] = self;
          v34[5] = v15;
          v35 = a4;
          v36 = a5;
          v34[8] = a6;
          v34[9] = &v46;
          v34[10] = v45;
          v34[11] = &v41;
          v34[12] = v12;
          v34[6] = v9;
          v34[7] = v10;
          [v28 addOperationWithBlock:v34];
        }

        else
        {
          [v10 lock];
          [v10 unlockWithCondition:{objc_msgSend(v10, "condition") - 1}];
        }

        ++v12;
      }

      v11 = [a3 countByEnumeratingWithState:&v37 objects:v51 count:16];
    }

    while (v11);
  }

  [v10 lockWhenCondition:0];
  [v10 unlock];

  if (v47[3])
  {
    v16 = [objc_msgSend(v9 "allKeys")];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v17 = [v16 countByEnumeratingWithState:&v30 objects:v50 count:16];
    if (v17)
    {
      v18 = *v31;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v31 != v18)
          {
            objc_enumerationMutation(v16);
          }

          [v23 addObject:{objc_msgSend(v9, "objectForKey:", *(*(&v30 + 1) + 8 * j))}];
        }

        v17 = [v16 countByEnumeratingWithState:&v30 objects:v50 count:16];
      }

      while (v17);
    }
  }

  else if (a7)
  {
    *a7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"OKErrorDomain" code:-1 userInfo:0];
  }

  v20 = v23;
  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(v45, 8);
  _Block_object_dispose(&v46, 8);
  return v20;
}

uint64_t __66__OKDocument_importResourceURLs_opaque_force_progressBlock_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (*(*(v2 + 8) + 24) == 1)
  {
    v15 = 0;
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 104);
    v6 = *(a1 + 105);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __66__OKDocument_importResourceURLs_opaque_force_progressBlock_error___block_invoke_2;
    v12[3] = &unk_279C8E890;
    v7 = *(a1 + 64);
    v12[4] = *(a1 + 48);
    v12[5] = v7;
    v13 = *(a1 + 80);
    v14 = v2;
    v8 = [v3 importResourceURL:v4 opaque:v5 force:v6 progressBlock:v12 error:&v15];
    if (!v8 || v15)
    {
      *(*(*(a1 + 72) + 8) + 24) = 0;
    }

    else
    {
      v9 = v8;
      v10 = *(a1 + 48);
      objc_sync_enter(v10);
      ++*(*(*(a1 + 80) + 8) + 24);
      [*(a1 + 48) setObject:v9 forKey:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", *(a1 + 96))}];
      objc_sync_exit(v10);
    }
  }

  [*(a1 + 56) lock];
  return [*(a1 + 56) unlockWithCondition:{objc_msgSend(*(a1 + 56), "condition") - 1}];
}

uint64_t __66__OKDocument_importResourceURLs_opaque_force_progressBlock_error___block_invoke_2(void *a1, _BYTE *a2)
{
  v7 = 0;
  v4 = a1[4];
  objc_sync_enter(v4);
  v5 = a1[5];
  if (v5)
  {
    (*(v5 + 16))(v5, &v7, *(*(a1[6] + 8) + 24) / *(*(a1[7] + 8) + 24));
  }

  result = objc_sync_exit(v4);
  if (v7 == 1)
  {
    *(*(a1[8] + 8) + 24) = 0;
  }

  *a2 = *(*(a1[8] + 8) + 24) ^ 1;
  return result;
}

- (BOOL)deleteImportedResourceURLs:(id)a3 progressBlock:(id)a4 error:(id *)a5
{
  if (pthread_main_np() && *MEMORY[0x277D62808] >= 5)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:5 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Document/OKDocument.m" line:1861 andFormat:@"%@ MUST not be called from the main thread", NSStringFromSelector(a2)];
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 1;
  v10 = dispatch_semaphore_create(0);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__OKDocument_deleteImportedResourceURLs_progressBlock_error___block_invoke;
  v14[3] = &unk_279C8E908;
  v14[4] = self;
  v14[5] = a3;
  v14[7] = &v15;
  v14[8] = a5;
  v14[6] = a4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__OKDocument_deleteImportedResourceURLs_progressBlock_error___block_invoke_4;
  v13[3] = &unk_279C8E670;
  v13[4] = v10;
  v13[5] = v14;
  [(UIDocument *)self performAsynchronousFileAccessUsingBlock:v13];
  dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  if (v10)
  {
    dispatch_release(v10);
  }

  v11 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);
  return v11;
}

void __61__OKDocument_deleteImportedResourceURLs_progressBlock_error___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3052000000;
  v22[3] = __Block_byref_object_copy__0;
  v22[4] = __Block_byref_object_dispose__0;
  v22[5] = 0;
  v3 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:*(a1 + 32)];
  v21 = 0;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v20[3] = 0;
  v4 = [*(a1 + 40) count];
  v5 = [*(a1 + 32) _importedResourcesDirectoryURL];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__OKDocument_deleteImportedResourceURLs_progressBlock_error___block_invoke_2;
  v11[3] = &unk_279C8E8E0;
  v12 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
  v7 = *(a1 + 56);
  v6 = *(a1 + 64);
  v8 = *(a1 + 48);
  v15 = v22;
  v16 = v7;
  v17 = v20;
  v18 = v6;
  v13 = v2;
  v14 = v8;
  v19 = v4;
  [v3 coordinateWritingItemAtURL:v5 options:1 error:&v21 byAccessor:v11];

  if (v21)
  {
    **(a1 + 64) = v21;
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  v9 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__OKDocument_deleteImportedResourceURLs_progressBlock_error___block_invoke_3;
  v10[3] = &unk_279C8E818;
  v10[4] = v9;
  [v9 performBlockOnMainThread:v10];
  _Block_object_dispose(v20, 8);
  _Block_object_dispose(v22, 8);
}

void __61__OKDocument_deleteImportedResourceURLs_progressBlock_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [*(*(a1 + 40) + 200) mediaItemForURL:v9];
        if (![*(a1 + 48) removeItemAtURL:objc_msgSend(*(a1 + 40) error:{"_importedResourceDirectoryURLForImportedResourceURL:withImportedResourcesDirectoryURL:", v9, a2), *(*(a1 + 64) + 8) + 40}] || *(*(*(a1 + 64) + 8) + 40))
        {

          v12 = *(*(*(a1 + 64) + 8) + 40);
          if (!v12)
          {
            v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"OKErrorDomain" code:-1 userInfo:0];
          }

          **(a1 + 88) = v12;
          *(*(*(a1 + 72) + 8) + 24) = 0;
          return;
        }

        ++*(*(*(a1 + 80) + 8) + 24);
        v11 = *(a1 + 56);
        if (v11)
        {
          (*(v11 + 16))(v11, &v17, *(*(*(a1 + 80) + 8) + 24) / *(a1 + 96));
        }

        if (v17 == 1)
        {
          **(a1 + 88) = [MEMORY[0x277CCA9B8] errorWithDomain:@"OKErrorDomain" code:-4 userInfo:0];
          *(*(*(a1 + 72) + 8) + 24) = 0;

          return;
        }

        [v10 invalidate];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }
}

intptr_t __61__OKDocument_deleteImportedResourceURLs_progressBlock_error___block_invoke_4(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return dispatch_semaphore_signal(v2);
}

- (id)prepareMediaURL:(id)a3 force:(BOOL)a4 colorSpace:(id)a5 progressBlock:(id)a6 error:(id *)a7
{
  v10 = a4;
  if (pthread_main_np() && *MEMORY[0x277D62808] >= 5)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:5 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Document/OKDocument.m" line:1959 andFormat:@"%@ MUST not be called from the main thread", NSStringFromSelector(a2)];
  }

  v14 = [(OKPresentation *)self->_presentation mediaItemForURL:a3];
  v15 = v14;
  if (v14)
  {
    [v14 invalidate];
    v16 = [v15 prepareCaches:v10 colorSpace:a5 withCompletionHandler:&__block_literal_global_3];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __67__OKDocument_prepareMediaURL_force_colorSpace_progressBlock_error___block_invoke_2;
    v21[3] = &unk_279C8E868;
    v21[4] = a6;
    [v16 performSynchronously:v21];
    if (a7)
    {
      v17 = [v16 error];
LABEL_9:
      *a7 = v17;
      return v15;
    }

    v19 = dispatch_semaphore_create(0);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __67__OKDocument_prepareMediaURL_force_colorSpace_progressBlock_error___block_invoke_3;
    v20[3] = &unk_279C8E818;
    v20[4] = v19;
    [(UIDocument *)self performAsynchronousFileAccessUsingBlock:v20];
    dispatch_semaphore_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
    if (v19)
    {
      dispatch_release(v19);
    }
  }

  else if (a7)
  {
    v17 = [OKError errorForCode:-3];
    goto LABEL_9;
  }

  return v15;
}

- (id)prepareMediaURLs:(id)a3 force:(BOOL)a4 colorSpace:(id)a5 progressBlock:(id)a6 error:(id *)a7
{
  v22 = a4;
  v43 = *MEMORY[0x277D85DE8];
  if (pthread_main_np() && *MEMORY[0x277D62808] >= 5)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:5 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Document/OKDocument.m" line:2014 andFormat:@"%@ MUST not be called from the main thread", NSStringFromSelector(a2)];
  }

  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 1;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = objc_alloc_init(MEMORY[0x277CCA930]);
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2020000000;
  v37[3] = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = [a3 count];
  v10 = objc_alloc_init(MEMORY[0x277CCABD8]);
  [v10 setMaxConcurrentOperationCount:{objc_msgSend(objc_msgSend(MEMORY[0x277CCAC38], "processInfo"), "processorCount")}];
  [v9 lock];
  [v9 unlockWithCondition:v34[3]];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v11 = [a3 countByEnumeratingWithState:&v29 objects:v42 count:16];
  if (v11)
  {
    v12 = *v30;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(a3);
        }

        if (*(v39 + 24) == 1)
        {
          v14 = [(OKPresentation *)self->_presentation mediaItemForURL:*(*(&v29 + 1) + 8 * i)];
          v15 = v14;
          if (v14)
          {
            [v14 invalidate];
            v28[0] = MEMORY[0x277D85DD0];
            v28[1] = 3221225472;
            v28[2] = __68__OKDocument_prepareMediaURLs_force_colorSpace_progressBlock_error___block_invoke;
            v28[3] = &unk_279C8E950;
            v28[4] = v10;
            v28[5] = v8;
            v28[8] = &v38;
            v28[9] = v37;
            v28[6] = v15;
            v28[7] = v9;
            v16 = [v15 prepareCaches:v22 colorSpace:a5 withCompletionHandler:v28];
            v27[0] = MEMORY[0x277D85DD0];
            v27[1] = 3221225472;
            v27[2] = __68__OKDocument_prepareMediaURLs_force_colorSpace_progressBlock_error___block_invoke_2;
            v27[3] = &unk_279C8E978;
            v27[4] = v8;
            v27[5] = a6;
            v27[6] = v37;
            v27[7] = &v33;
            v27[8] = &v38;
            [v16 setProgressBlock:v27];
            [v10 addOperation:v16];
          }

          else
          {
            *(v39 + 24) = 0;
            [v10 cancelAllOperations];
            [v9 lock];
            [v9 unlockWithCondition:{objc_msgSend(v9, "condition") - 1}];
          }
        }

        else
        {
          [v9 lock];
          [v9 unlockWithCondition:{objc_msgSend(v9, "condition") - 1}];
        }
      }

      v11 = [a3 countByEnumeratingWithState:&v29 objects:v42 count:16];
    }

    while (v11);
  }

  [v9 lockWhenCondition:0];
  [v9 unlock];

  if (v39[3])
  {
    v17 = dispatch_semaphore_create(0);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __68__OKDocument_prepareMediaURLs_force_colorSpace_progressBlock_error___block_invoke_3;
    v26[3] = &unk_279C8E818;
    v26[4] = v17;
    [(UIDocument *)self performAsynchronousFileAccessUsingBlock:v26];
    dispatch_semaphore_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
    if (v17)
    {
      dispatch_release(v17);
    }
  }

  else
  {
    [v8 removeAllObjects];

    v8 = 0;
    if (a7)
    {
      *a7 = [OKError errorForCode:-1];
    }
  }

  v18 = v8;
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(v37, 8);
  _Block_object_dispose(&v38, 8);
  return v18;
}

uint64_t __68__OKDocument_prepareMediaURLs_force_colorSpace_progressBlock_error___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 hasSucceeded])
  {
    v3 = *(a1 + 40);
    objc_sync_enter(v3);
    ++*(*(*(a1 + 72) + 8) + 24);
    [*(a1 + 40) addObject:*(a1 + 48)];
    objc_sync_exit(v3);
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    [*(a1 + 32) cancelAllOperations];
  }

  [*(a1 + 56) lock];
  v4 = *(a1 + 56);
  v5 = [v4 condition] - 1;

  return [v4 unlockWithCondition:v5];
}

uint64_t __68__OKDocument_prepareMediaURLs_force_colorSpace_progressBlock_error___block_invoke_2(void *a1, uint64_t a2, _BYTE *a3)
{
  v8 = 0;
  v5 = a1[4];
  objc_sync_enter(v5);
  v6 = a1[5];
  if (v6)
  {
    (*(v6 + 16))(v6, &v8, *(*(a1[6] + 8) + 24) / *(*(a1[7] + 8) + 24));
  }

  result = objc_sync_exit(v5);
  if (v8 == 1)
  {
    *(*(a1[8] + 8) + 24) = 0;
  }

  *a3 = *(*(a1[8] + 8) + 24) ^ 1;
  return result;
}

- (BOOL)_readImportedResourceURL:(id)a3 error:(id *)a4 byMediaAccessor:(id)a5
{
  v8 = [(OKDocument *)self _importedMediaURLForImportedResourceURL:a3];
  v9 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:self];
  [v9 coordinateReadingItemAtURL:v8 options:1 error:a4 byAccessor:a5];

  return *a4 == 0;
}

- (BOOL)_readImportedResourceURL:(id)a3 error:(id *)a4 byThumbnailAccessor:(id)a5
{
  v8 = [(OKDocument *)self _importedThumbnailURLForImportedResourceURL:a3];
  v9 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:self];
  [v9 coordinateReadingItemAtURL:v8 options:1 error:a4 byAccessor:a5];

  return *a4 == 0;
}

- (BOOL)_readImportedResourceURL:(id)a3 error:(id *)a4 byMetadataAccessor:(id)a5
{
  v8 = [(OKDocument *)self _importedMetadataURLForImportedResourceURL:a3];
  v9 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:self];
  [v9 coordinateReadingItemAtURL:v8 options:1 error:a4 byAccessor:a5];

  return *a4 == 0;
}

- (BOOL)_updateImportedResourceURL:(id)a3 error:(id *)a4 byMetadataAccessor:(id)a5
{
  v8 = [(OKDocument *)self _importedMetadataURLForImportedResourceURL:a3];
  v9 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:self];
  [v9 coordinateWritingItemAtURL:v8 options:8 error:a4 byAccessor:a5];

  return *a4 == 0;
}

- (BOOL)_readImportedResourceURL:(id)a3 size:(CGSize)a4 error:(id *)a5 byThumbnailAccessor:(id)a6
{
  if (a4.width <= a4.height)
  {
    a4.width = a4.height;
  }

  v9 = [(OKDocument *)self _importedThumbnailURLForImportedResourceURL:a3 resolution:a4.width];
  v10 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:self];
  [v10 coordinateReadingItemAtURL:v9 options:1 error:a5 byAccessor:a6];

  return *a5 == 0;
}

- (BOOL)_updateImportedResourceURL:(id)a3 size:(CGSize)a4 error:(id *)a5 byThumbnailAccessor:(id)a6
{
  if (a4.width <= a4.height)
  {
    a4.width = a4.height;
  }

  v9 = [(OKDocument *)self _importedThumbnailURLForImportedResourceURL:a3 resolution:a4.width];
  v10 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:self];
  [v10 coordinateWritingItemAtURL:v9 options:8 error:a5 byAccessor:a6];

  return *a5 == 0;
}

- (id)importedResourceURLs
{
  v8 = 0;
  v3 = [(OKDocument *)self _importedResourcesDirectoryURL];
  v4 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:self];
  v5 = [MEMORY[0x277CBEB18] array];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__OKDocument_importedResourceURLs__block_invoke;
  v7[3] = &unk_279C8E9A0;
  v7[4] = v3;
  v7[5] = v5;
  v7[6] = self;
  [v4 coordinateReadingItemAtURL:v3 options:1 error:&v8 byAccessor:v7];
  if (v8 && *MEMORY[0x277D62808] >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Document/OKDocument.m" line:2372 andFormat:@"An error occured listing imported resources: %@", objc_msgSend(v8, "localizedDescription")];
  }

  return v5;
}

void __34__OKDocument_importedResourceURLs__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v3 = *MEMORY[0x277CBE8E8];
  v4 = *MEMORY[0x277CBE868];
  v5 = [v2 enumeratorAtURL:*(a1 + 32) includingPropertiesForKeys:objc_msgSend(MEMORY[0x277CBEA60] options:"arrayWithObjects:" errorHandler:{*MEMORY[0x277CBE8E8], *MEMORY[0x277CBE868], 0), 5, 0}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v12 = 0;
        [v10 getResourceValue:&v12 forKey:v4 error:0];
        if ([v12 BOOLValue])
        {
          v11 = 0;
          [v10 getResourceValue:&v11 forKey:v3 error:0];
          [*(a1 + 40) addObject:{objc_msgSend(objc_opt_class(), "_importedResourceURLWithHash:", objc_msgSend(v11, "lastPathComponent"))}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (BOOL)_hasThumbnailForImportedResourceURL:(id)a3 size:(CGSize)a4
{
  if (a4.width <= a4.height)
  {
    a4.width = a4.height;
  }

  v4 = [(OKDocument *)self _importedThumbnailURLForImportedResourceURL:a3 resolution:a4.width];
  v5 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v7 = 0;
  LOBYTE(v4) = [v5 fileExistsAtPath:objc_msgSend(v4 isDirectory:{"relativePath"), &v7}];

  return (v7 == 0) & v4;
}

- (CGImage)_thumbnailForImportedResourceURL:(id)a3 size:(CGSize)a4
{
  v12 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__OKDocument__thumbnailForImportedResourceURL_size___block_invoke;
  v7[3] = &unk_279C8E7E8;
  v7[4] = &v8;
  [(OKDocument *)self _readImportedResourceURL:a3 size:&v12 error:v7 byThumbnailAccessor:a4.width, a4.height];
  if (v12 && *MEMORY[0x277D62808] >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Document/OKDocument.m" line:2511 andFormat:@"An error occured reading thumbnail for %@: %@", a3, objc_msgSend(v12, "localizedDescription")];
  }

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __52__OKDocument__thumbnailForImportedResourceURL_size___block_invoke(uint64_t a1)
{
  result = OFCGImageCreateWithURL();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (BOOL)_hasThumbnailFromMediaForImportedResourceURL:(id)a3
{
  v3 = [(OKDocument *)self _importedMediaURLForImportedResourceURL:a3];
  v4 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v6 = 0;
  LOBYTE(v3) = [v4 fileExistsAtPath:objc_msgSend(v3 isDirectory:{"relativePath"), &v6}];

  return (v6 == 0) & v3;
}

- (CGImage)_thumbnailFromMediaForImportedResourceURL:(id)a3
{
  v12 = 0;
  v13 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v5 = [(OKDocument *)self _metadataObjectForKey:@"Media Type" forImportedResourceURL:a3];
  if (v5)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __56__OKDocument__thumbnailFromMediaForImportedResourceURL___block_invoke;
    v8[3] = &unk_279C8E9C8;
    v8[5] = a3;
    v8[6] = &v9;
    v8[4] = v5;
    [(OKDocument *)self _readImportedResourceURL:a3 error:&v13 byMediaAccessor:v8];
  }

  else if (*MEMORY[0x277D62808] >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Document/OKDocument.m" line:2555 andFormat:@"Media type for imported resource %@ is unknown", a3];
  }

  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v6;
}

uint64_t __56__OKDocument__thumbnailFromMediaForImportedResourceURL___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) intValue] == 2)
  {
    result = OFCGImageCreateWithURL();
LABEL_5:
    *(*(*(a1 + 48) + 8) + 24) = result;
    return result;
  }

  result = [*(a1 + 32) intValue];
  if (result == 3)
  {
    result = OFAVAssetCreateThumbnailWithURL();
    goto LABEL_5;
  }

  if (*MEMORY[0x277D62808] >= 4)
  {
    return [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Document/OKDocument.m" line:2549 andFormat:@"Media type for imported resource %@ is not supported", *(a1 + 40)];
  }

  return result;
}

- (CGImage)_thumbnailFromMediaForImportedResourceURL:(id)a3 size:(CGSize)a4
{
  v15 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (a4.width <= a4.height)
  {
    height = a4.height;
  }

  else
  {
    height = a4.width;
  }

  v7 = [(OKDocument *)self _metadataObjectForKey:@"Media Type" forImportedResourceURL:a3];
  if (v7)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __61__OKDocument__thumbnailFromMediaForImportedResourceURL_size___block_invoke;
    v10[3] = &unk_279C8E9F0;
    v10[6] = &v11;
    v10[7] = height;
    v10[4] = v7;
    v10[5] = a3;
    [(OKDocument *)self _readImportedResourceURL:a3 error:&v15 byMediaAccessor:v10];
  }

  else if (*MEMORY[0x277D62808] >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Document/OKDocument.m" line:2587 andFormat:@"Media type for imported resource %@ is unknown", a3];
  }

  v8 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t __61__OKDocument__thumbnailFromMediaForImportedResourceURL_size___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) intValue] == 2)
  {
    result = OFCGImageCreateThumbnailWithURL();
LABEL_5:
    *(*(*(a1 + 48) + 8) + 24) = result;
    return result;
  }

  result = [*(a1 + 32) intValue];
  if (result == 3)
  {
    result = OFAVAssetCreateThumbnailWithURL();
    goto LABEL_5;
  }

  if (*MEMORY[0x277D62808] >= 4)
  {
    return [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Document/OKDocument.m" line:2581 andFormat:@"Media type for imported resource %@ is not supported", *(a1 + 40)];
  }

  return result;
}

- (void)_saveThumbnailToDisk:(CGImage *)a3 forImportedResourceURL:(id)a4 size:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  CGImageRetain(a3);
  v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:{-[NSString stringByAppendingPathComponent:](NSTemporaryDirectory(), "stringByAppendingPathComponent:", objc_msgSend(objc_msgSend(MEMORY[0x277CCACA8], "generateUUID"), "stringByAppendingPathExtension:", @"tmp"}];
  v11 = [(OKDocument *)self _metadataObjectForKey:@"Opaque" forImportedResourceURL:a4];
  if (v11 && ([v11 BOOLValue] & 1) == 0)
  {
    OFCGImageSavePNGToURL();
  }

  else
  {
    OFCGImageSaveJPEGToURL();
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__OKDocument__saveThumbnailToDisk_forImportedResourceURL_size___block_invoke;
  v12[3] = &unk_279C8EA40;
  v12[4] = self;
  v12[5] = a4;
  *&v12[7] = width;
  *&v12[8] = height;
  v12[6] = v10;
  v12[9] = a3;
  [(UIDocument *)self performAsynchronousFileAccessUsingBlock:v12];
}

id __63__OKDocument__saveThumbnailToDisk_forImportedResourceURL_size___block_invoke(uint64_t a1)
{
  v7 = 0;
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__OKDocument__saveThumbnailToDisk_forImportedResourceURL_size___block_invoke_2;
  v4[3] = &unk_279C8EA18;
  v5 = *(a1 + 40);
  v6 = *(a1 + 72);
  [v2 _updateImportedResourceURL:v5 size:&v7 error:v4 byThumbnailAccessor:{*(a1 + 56), *(a1 + 64)}];
  result = v7;
  if (v7)
  {
    if (*MEMORY[0x277D62808] >= 4)
    {
      return [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Document/OKDocument.m" line:2654 andFormat:@"An error occured saving imported thumbnail for %@: %@", *(a1 + 40), objc_msgSend(v7, "localizedDescription")];
    }
  }

  return result;
}

void __63__OKDocument__saveThumbnailToDisk_forImportedResourceURL_size___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v10 = 0;
  v5 = [a2 URLByDeletingLastPathComponent];
  if ([v4 fileExistsAtPath:{objc_msgSend(v5, "path")}] & 1) != 0 || (objc_msgSend(v4, "createDirectoryAtURL:withIntermediateDirectories:attributes:error:", v5, 1, 0, &v10))
  {
    if ([v4 fileExistsAtPath:{objc_msgSend(a2, "relativePath")}])
    {
      if (([v4 removeItemAtURL:a2 error:&v10] & 1) == 0)
      {
        v6 = MEMORY[0x277D62808];
        if (*MEMORY[0x277D62808] >= 4)
        {
          [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Document/OKDocument.m" line:2635 andFormat:@"Failed to save on disk imported thumbnail for %@: %@", *(a1 + 32), objc_msgSend(v10, "localizedDescription")];
          if (*v6 >= 4)
          {
            [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Document/OKDocument.m" line:2636 andFormat:@"Failed to remove file at '%@'", a2];
          }
        }
      }
    }

    if (([v4 moveItemAtURL:*(a1 + 40) toURL:a2 error:&v10] & 1) == 0)
    {
      v7 = MEMORY[0x277D62808];
      if (*MEMORY[0x277D62808] >= 4)
      {
        [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Document/OKDocument.m" line:2642 andFormat:@"Failed to save on disk imported thumbnail for %@: %@", *(a1 + 32), objc_msgSend(v10, "localizedDescription")];
        if (*v7 >= 4)
        {
          [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Document/OKDocument.m" line:2643 andFormat:@"Failed to move file from '%@' to '%@'", *(a1 + 40), a2];
        }
      }
    }
  }

  else
  {
    v8 = MEMORY[0x277D62808];
    if (*MEMORY[0x277D62808] >= 4)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Document/OKDocument.m" line:2626 andFormat:@"Failed to save on disk imported thumbnail for %@: %@", *(a1 + 32), objc_msgSend(v10, "localizedDescription")];
      if (*v8 >= 4)
      {
        [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Document/OKDocument.m" line:2627 andFormat:@"Failed to create directory at '%@'", v5, v9];
      }
    }
  }

  CGImageRelease(*(a1 + 48));
}

- (BOOL)_hasThumbnailForImportedResourceURL:(id)a3
{
  v3 = [(OKDocument *)self _importedThumbnailURLForImportedResourceURL:a3];
  v4 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v6 = 0;
  LOBYTE(v3) = [v4 fileExistsAtPath:objc_msgSend(v3 isDirectory:{"relativePath"), &v6}];

  return (v6 == 0) & v3;
}

- (CGImage)_thumbnailForImportedResourceURL:(id)a3
{
  v11 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__OKDocument__thumbnailForImportedResourceURL___block_invoke;
  v6[3] = &unk_279C8E7E8;
  v6[4] = &v7;
  [(OKDocument *)self _readImportedResourceURL:a3 error:&v11 byThumbnailAccessor:v6];
  if (v11 && *MEMORY[0x277D62808] >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Document/OKDocument.m" line:2688 andFormat:@"An error occured reading thumbnail for %@: %@", a3, objc_msgSend(v11, "localizedDescription")];
  }

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __47__OKDocument__thumbnailForImportedResourceURL___block_invoke(uint64_t a1)
{
  result = OFCGImageCreateWithURL();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (id)_metadataForImportedResourceURL:(id)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__0;
  v12 = __Block_byref_object_dispose__0;
  v13 = 0;
  v6[4] = &v8;
  v7 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__OKDocument__metadataForImportedResourceURL___block_invoke;
  v6[3] = &unk_279C8E7E8;
  [(OKDocument *)self _readImportedResourceURL:a3 error:&v7 byMetadataAccessor:v6];
  if (v7 && *MEMORY[0x277D62808] >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Document/OKDocument.m" line:2710 andFormat:@"An error occured importing metadata for %@: %@", a3, objc_msgSend(v7, "localizedDescription")];
  }

  v4 = v9[5];
  _Block_object_dispose(&v8, 8);
  return v4;
}

id __46__OKDocument__metadataForImportedResourceURL___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:a2];
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

- (id)_metadataObjectForKey:(id)a3 forImportedResourceURL:(id)a4
{
  v4 = [-[OKDocument _metadataForImportedResourceURL:](self _metadataForImportedResourceURL:{a4), "objectForKey:", a3}];

  return v4;
}

- (void)_didEnterBackgroundNotification:(id)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v4 = [MEMORY[0x277D75128] sharedApplication];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__OKDocument__didEnterBackgroundNotification___block_invoke;
  v8[3] = &unk_279C8EA68;
  v8[4] = &v9;
  v5 = [v4 beginBackgroundTaskWithExpirationHandler:v8];
  v10[3] = v5;
  if (v5 != *MEMORY[0x277D767B0])
  {
    global_queue = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__OKDocument__didEnterBackgroundNotification___block_invoke_2;
    block[3] = &unk_279C8EAB8;
    block[4] = self;
    block[5] = &v9;
    dispatch_async(global_queue, block);
  }

  _Block_object_dispose(&v9, 8);
}

uint64_t __46__OKDocument__didEnterBackgroundNotification___block_invoke(uint64_t a1)
{
  result = [objc_msgSend(MEMORY[0x277D75128] "sharedApplication")];
  if (!result)
  {
    v3 = [MEMORY[0x277D75128] sharedApplication];
    v4 = *(*(*(a1 + 32) + 8) + 24);

    return [v3 endBackgroundTask:v4];
  }

  return result;
}

uint64_t __46__OKDocument__didEnterBackgroundNotification___block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __46__OKDocument__didEnterBackgroundNotification___block_invoke_3;
  v3[3] = &unk_279C8EA90;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 autosaveWithCompletionHandler:v3];
}

uint64_t __46__OKDocument__didEnterBackgroundNotification___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  v3 = *(*(*(a1 + 32) + 8) + 24);

  return [v2 endBackgroundTask:v3];
}

- (void)_willTerminateNotification:(id)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v4 = [MEMORY[0x277D75128] sharedApplication];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__OKDocument__willTerminateNotification___block_invoke;
  v8[3] = &unk_279C8EA68;
  v8[4] = &v9;
  v5 = [v4 beginBackgroundTaskWithExpirationHandler:v8];
  v10[3] = v5;
  if (v5 != *MEMORY[0x277D767B0])
  {
    global_queue = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__OKDocument__willTerminateNotification___block_invoke_2;
    block[3] = &unk_279C8EAB8;
    block[4] = self;
    block[5] = &v9;
    dispatch_async(global_queue, block);
  }

  _Block_object_dispose(&v9, 8);
}

uint64_t __41__OKDocument__willTerminateNotification___block_invoke(uint64_t a1)
{
  result = [objc_msgSend(MEMORY[0x277D75128] "sharedApplication")];
  if (!result)
  {
    v3 = [MEMORY[0x277D75128] sharedApplication];
    v4 = *(*(*(a1 + 32) + 8) + 24);

    return [v3 endBackgroundTask:v4];
  }

  return result;
}

uint64_t __41__OKDocument__willTerminateNotification___block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __41__OKDocument__willTerminateNotification___block_invoke_3;
  v3[3] = &unk_279C8EA90;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 autosaveWithCompletionHandler:v3];
}

uint64_t __41__OKDocument__willTerminateNotification___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  v3 = *(*(*(a1 + 32) + 8) + 24);

  return [v2 endBackgroundTask:v3];
}

@end