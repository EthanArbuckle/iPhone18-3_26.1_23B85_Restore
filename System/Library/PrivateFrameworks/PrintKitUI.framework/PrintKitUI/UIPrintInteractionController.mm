@interface UIPrintInteractionController
+ (BOOL)canPrintData:(NSData *)data;
+ (BOOL)canPrintURL:(NSURL *)url;
+ (BOOL)hasValidPDFHeader:(id)header;
+ (BOOL)isPrintablePDFData:(id)data requireUnlocked:(BOOL)unlocked password:(id)password;
+ (BOOL)isPrintablePDFURL:(id)l requireUnlocked:(BOOL)unlocked password:(id)password;
+ (BOOL)isPrintingAvailable;
+ (CGPDFDocument)createCGPDFDocumentRefWithNSData:(id)data;
+ (CGPDFDocument)createCGPDFDocumentRefWithNSURL:(id)l;
+ (NSSet)printableUTIs;
+ (UIPrintInteractionController)sharedPrintController;
+ (id)utiForNSData:(id)data;
+ (id)utiForNSURL:(id)l;
- (BOOL)_canPreviewContent;
- (BOOL)_canPrintPDFData:(id)data;
- (BOOL)_canPrintURL:(id)l;
- (BOOL)_canShowAnnotations;
- (BOOL)_canShowColor;
- (BOOL)_canShowDuplex;
- (BOOL)_canShowLayout;
- (BOOL)_canShowOrientation;
- (BOOL)_canShowPageRange;
- (BOOL)_canShowPaperList;
- (BOOL)_canShowPreview;
- (BOOL)_canShowPunch;
- (BOOL)_canShowScaling;
- (BOOL)_canShowStaple;
- (BOOL)_isPageCancelled:(id)cancelled;
- (BOOL)_pageRendererAvailable;
- (BOOL)_presentAnimated:(BOOL)animated hostingScene:(id)scene completionHandler:(id)handler;
- (BOOL)_printingItemIsReallyTallPDF:(id)f;
- (BOOL)_setupPrintPanel:(id)panel forPDFGenerationOnly:(BOOL)only;
- (BOOL)isPhone;
- (BOOL)needRedrawWithNUp;
- (BOOL)presentFromBarButtonItem:(UIBarButtonItem *)item animated:(BOOL)animated completionHandler:(UIPrintInteractionCompletionHandler)completion;
- (BOOL)presentFromRect:(CGRect)rect inView:(UIView *)view animated:(BOOL)animated completionHandler:(UIPrintInteractionCompletionHandler)completion;
- (BOOL)printToPrinter:(UIPrinter *)printer completionHandler:(UIPrintInteractionCompletionHandler)completion;
- (BOOL)savePDFToURL:(id)l showProgress:(BOOL)progress hostingScene:(id)scene completionHandler:(id)handler;
- (BOOL)updatePrintingItems:(id)items;
- (CGContext)_newSaveContext:(id)context withMediaRect:(CGRect)rect;
- (CGRect)_mediaRect;
- (CGSize)_printItemContentSize;
- (CGSize)_printItemContentSize:(id)size;
- (CGSize)_printablePDFDataSize:(id)size;
- (CGSize)_printablePDFURLSize:(id)size;
- (CGSize)paperSizeForPageNum:(int64_t)num;
- (NSArray)pageRanges;
- (NSURL)tempPreviewFileURL;
- (PKPrinter)printer;
- (UIPrintInteractionController)init;
- (UIPrintInteractionControllerActivityDelegate)printActivityDelegate;
- (UIPrintPaper)paper;
- (_NSRange)_fullPagesRange;
- (_NSRange)currentRange;
- (double)_getCutLengthFromDelegateForPaper:(id)paper;
- (double)printInteractionController:(id)controller cutLengthForPaper:(id)paper;
- (id)_convertItemToPrintableItem:(id)item;
- (id)_createDocInfoDict;
- (id)_currentPrintInfo;
- (id)_getChosenPaperFromDelegateForPaperList:(id)list;
- (id)_newPDFURLWithPath:(id)path isContentManaged:(BOOL)managed;
- (id)_paperForContentType:(int64_t)type;
- (id)_paperForPDFItem:(id)item withDuplexMode:(int64_t)mode;
- (id)_printPageWithRenderer:(id)renderer;
- (id)_printingItemPrintablePDFURL;
- (id)_tempFilePath;
- (id)_updatePrintPaper;
- (id)appOptionsViewController;
- (id)convertedPrintableItem:(id)item;
- (id)createWebKitPDFForAllPages;
- (id)delegate;
- (id)drawPagesWithPreviewState:(id)state;
- (id)getPrintingItemForPageNum:(int64_t)num pdfItemPageNum:(int64_t *)pageNum;
- (id)printInteractionController:(id)controller choosePaper:(id)paper;
- (id)redrawPDFwithPageRange:(id)range;
- (id)rendererToUse;
- (int64_t)numberOfPages;
- (void)_addPDFWithCGPDFDocumentRef:(CGPDFDocument *)ref toContext:(CGContext *)context addAllPages:(BOOL)pages;
- (void)_cancelAllPreviewGeneration;
- (void)_cancelPreviewQueue:(BOOL)queue completionHandler:(id)handler;
- (void)_cleanPrintState;
- (void)_completePrintPageWithError:(id)error;
- (void)_drawPrintItem:(id)item toContext:(CGContext *)context printAllPages:(BOOL)pages;
- (void)_endPrintJobWithAction:(int64_t)action error:(id)error;
- (void)_ensurePDFIsUnlockedFirstAttempt:(BOOL)attempt completionHandler:(id)handler;
- (void)_generatePDFWithCompletionHandler:(id)handler;
- (void)_generatePDFWithNupForPrintingCompletion:(id)completion;
- (void)_generatePrintPreview:(id)preview;
- (void)_preparePrintInfo;
- (void)_printItemAsync:(id)async completionHandler:(id)handler;
- (void)_printPage;
- (void)_printPageWithDelay:(double)delay;
- (void)_printPanelDidDismissWithAction:(int64_t)action;
- (void)_printPanelDidPresent;
- (void)_printPanelWillDismissWithAction:(int64_t)action;
- (void)_setPrinterInfoState:(int)state;
- (void)_startPrinting;
- (void)_updateCutterBehavior;
- (void)_updatePageCount;
- (void)_updatePrintInfoWithAnnotations;
- (void)_updateRendererWithQuality:(int64_t)quality;
- (void)dealloc;
- (void)dismissAnimated:(BOOL)animated completionHandler:(id)handler;
- (void)drawImage:(id)image toContext:(CGContext *)context sheetSize:(CGSize)size;
- (void)drawImageForPageNum:(int64_t)num toContext:(CGContext *)context sheetSize:(CGSize)size;
- (void)recalculateWebKitPageCount;
- (void)removeFileAtURL:(id)l;
- (void)setPageRanges:(id)ranges;
- (void)setPaper:(id)paper;
- (void)setPrinter:(id)printer;
- (void)setPrintingItem:(id)printingItem;
- (void)setTempPreviewFileURL:(id)l;
@end

@implementation UIPrintInteractionController

- (UIPrintInteractionController)init
{
  v11.receiver = self;
  v11.super_class = UIPrintInteractionController;
  v2 = [(UIPrintInteractionController *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_backgroundTaskIdentifier = *MEMORY[0x277D767B0];
    v4 = objc_alloc_init(MEMORY[0x277CCABD8]);
    previewQueue = v3->_previewQueue;
    v3->_previewQueue = v4;

    [(NSOperationQueue *)v3->_previewQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v3->_previewQueue setName:@"com.apple.UIKit.UIPrintInteractionController.printPreviewGeneration"];
    v6 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:2];
    previewStates = v3->_previewStates;
    v3->_previewStates = v6;

    v3->_showsNumberOfCopies = 1;
    v3->_showsPaperOrientation = 1;
    v3->_showsScalingFactor = 1;
    v8 = objc_alloc_init(MEMORY[0x277D82BB8]);
    webKitFormatterMutex = v3->_webKitFormatterMutex;
    v3->_webKitFormatterMutex = v8;
  }

  return v3;
}

- (void)dealloc
{
  v3 = *MEMORY[0x277D767B0];
  if (self->_backgroundTaskIdentifier != *MEMORY[0x277D767B0])
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    [mEMORY[0x277D75128] _endBackgroundTask:self->_backgroundTaskIdentifier];

    self->_backgroundTaskIdentifier = v3;
  }

  [(UIPrintInteractionController *)self _cancelPreviewQueue:1 completionHandler:0];
  [(UIPrintInteractionController *)self _cleanPrintState];
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  previewQueue = self->_previewQueue;
  self->_previewQueue = 0;

  v7.receiver = self;
  v7.super_class = UIPrintInteractionController;
  [(UIPrintInteractionController *)&v7 dealloc];
}

- (void)_cleanPrintState
{
  obj = self;
  objc_sync_enter(obj);
  printPageRenderer = obj->_printPageRenderer;
  obj->_printPageRenderer = 0;

  printFormatter = obj->_printFormatter;
  obj->_printFormatter = 0;

  printingItem = obj->_printingItem;
  obj->_printingItem = 0;

  printingItems = obj->_printingItems;
  obj->_printingItems = 0;

  printPaper = obj->_printPaper;
  obj->_printPaper = 0;

  objc_storeWeak(&obj->_delegate, 0);
  objc_storeWeak(&obj->_printActivityDelegate, 0);
  *&obj->_showsPageRange = 16777472;
  obj->_isContentManaged = 0;
  obj->_printStateActive = 0;
  previewStates = obj->_previewStates;
  obj->_pageCountWithRanges = 0;
  obj->_previewStates = 0;

  tempPreviewFileURL = obj->_tempPreviewFileURL;
  obj->_tempPreviewFileURL = 0;

  paper = obj->_paper;
  obj->_paper = 0;

  obj->_currentPage = 0;
  obj->_pagesDrawn = 0;
  obj->_currentRange.location = 0;
  obj->_currentRange.length = 0;
  printPanelViewController = obj->_printPanelViewController;
  obj->_printPanelViewController = 0;

  printingProgress = obj->_printingProgress;
  obj->_printingProgress = 0;

  printSettings = obj->_printSettings;
  obj->_printSettings = 0;

  activePrintInfo = obj->_activePrintInfo;
  obj->_activePrintInfo = 0;

  obj->_printerInfoState = 0;
  obj->_supressNotifyDismissed = 0;
  formatterRenderer = obj->_formatterRenderer;
  obj->_formatterRenderer = 0;

  obj->_manualPrintPageEnabled = 0;
  saveFileURL = obj->_saveFileURL;
  obj->_saveFileURL = 0;

  obj->_showPrintingProgress = 0;
  obj->_pageCount = 0;
  pageRanges = obj->_pageRanges;
  obj->_pageRanges = 0;

  printer = obj->_printer;
  obj->_printer = 0;

  hostingWindowScene = obj->_hostingWindowScene;
  obj->_hostingWindowScene = 0;

  objc_sync_exit(obj);
}

+ (BOOL)isPrintingAvailable
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isAirPrintAllowed = [mEMORY[0x277D262A0] isAirPrintAllowed];

  return isAirPrintAllowed;
}

+ (NSSet)printableUTIs
{
  v2 = printableUTIs___printableUTIs;
  if (!printableUTIs___printableUTIs)
  {
    v3 = MEMORY[0x277CBEB98];
    identifier = [*MEMORY[0x277CE1DC0] identifier];
    identifier2 = [*MEMORY[0x277CE1E08] identifier];
    v6 = [v3 setWithObjects:{identifier, identifier2, 0}];
    v7 = printableUTIs___printableUTIs;
    printableUTIs___printableUTIs = v6;

    v8 = CGImageSourceCopyTypeIdentifiers();
    v2 = printableUTIs___printableUTIs;
    if (v8)
    {
      v9 = [printableUTIs___printableUTIs setByAddingObjectsFromArray:v8];
      v10 = printableUTIs___printableUTIs;
      printableUTIs___printableUTIs = v9;

      v2 = printableUTIs___printableUTIs;
    }
  }

  return v2;
}

+ (BOOL)isPrintablePDFURL:(id)l requireUnlocked:(BOOL)unlocked password:(id)password
{
  unlockedCopy = unlocked;
  passwordCopy = password;
  v8 = [UIPrintInteractionController createCGPDFDocumentRefWithNSURL:l];
  if (v8)
  {
    v9 = v8;
    if (unlockedCopy)
    {
      IsEncrypted = CGPDFDocumentIsEncrypted(v8);
      if (passwordCopy && IsEncrypted)
      {
        CGPDFDocumentUnlockWithPassword(v9, [passwordCopy cStringUsingEncoding:4]);
      }

      v11 = CGPDFDocumentAllowsPrinting(v9);
    }

    else
    {
      v11 = 1;
    }

    CGPDFDocumentRelease(v9);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)isPrintablePDFData:(id)data requireUnlocked:(BOOL)unlocked password:(id)password
{
  unlockedCopy = unlocked;
  passwordCopy = password;
  v8 = [UIPrintInteractionController createCGPDFDocumentRefWithNSData:data];
  if (v8)
  {
    v9 = v8;
    if (unlockedCopy)
    {
      IsEncrypted = CGPDFDocumentIsEncrypted(v8);
      if (passwordCopy && IsEncrypted)
      {
        CGPDFDocumentUnlockWithPassword(v9, [passwordCopy cStringUsingEncoding:4]);
      }

      v11 = CGPDFDocumentAllowsPrinting(v9);
    }

    else
    {
      v11 = 1;
    }

    CGPDFDocumentRelease(v9);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)canPrintURL:(NSURL *)url
{
  v3 = [UIPrintInteractionController utiForNSURL:url];
  v4 = v3 != 0;

  return v4;
}

+ (BOOL)canPrintData:(NSData *)data
{
  v3 = [UIPrintInteractionController utiForNSData:data];
  v4 = v3 != 0;

  return v4;
}

+ (id)utiForNSURL:(id)l
{
  lCopy = l;
  v4 = lCopy;
  if (!lCopy)
  {
    goto LABEL_9;
  }

  if (IsAssetURL(lCopy))
  {
    v5 = GetPHAssetForAssetURLSync(v4);
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy_;
    v23 = __Block_byref_object_dispose_;
    v24 = 0;
    if (v5)
    {
      v6 = dispatch_semaphore_create(0);
      v7 = dispatch_get_global_queue(2, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __GetImageUTIForPHAssetSync_block_invoke;
      block[3] = &unk_279A9C388;
      v17 = v6;
      v18 = &v19;
      v16 = v5;
      v8 = v6;
      dispatch_async(v7, block);

      v9 = dispatch_time(0, 30000000000);
      dispatch_semaphore_wait(v8, v9);

      v10 = v20[5];
    }

    else
    {
      v10 = 0;
    }

    identifier = v10;
    _Block_object_dispose(&v19, 8);

    goto LABEL_12;
  }

  if ([UIPrintInteractionController isPrintablePDFURL:v4 requireUnlocked:0 password:0])
  {
    identifier = [*MEMORY[0x277CE1E08] identifier];
    goto LABEL_12;
  }

  v12 = CGImageSourceCreateWithURL(v4, 0);
  if (v12)
  {
    v13 = v12;
    identifier = CGImageSourceGetType(v12);
    CFRelease(v13);
  }

  else
  {
LABEL_9:
    identifier = 0;
  }

LABEL_12:

  return identifier;
}

+ (id)utiForNSData:(id)data
{
  dataCopy = data;
  if (!dataCopy)
  {
    goto LABEL_6;
  }

  if ([UIPrintInteractionController isPrintablePDFData:dataCopy requireUnlocked:0 password:0])
  {
    identifier = [*MEMORY[0x277CE1E08] identifier];
    goto LABEL_7;
  }

  v5 = CGImageSourceCreateWithData(dataCopy, 0);
  if (v5)
  {
    v6 = v5;
    identifier = CGImageSourceGetType(v5);
    CFRelease(v6);
  }

  else
  {
LABEL_6:
    identifier = 0;
  }

LABEL_7:

  return identifier;
}

+ (BOOL)hasValidPDFHeader:(id)header
{
  headerCopy = header;
  v4 = headerCopy;
  if (headerCopy && [headerCopy length] >= 0xB)
  {
    bytes = [v4 bytes];
    v6 = [v4 length];
    v7 = 4085;
    if ((v6 - 11) < 0xFF5)
    {
      v7 = v6 - 11;
    }

    if (v6 != 11)
    {
      v8 = &bytes[v7];
      do
      {
        v9 = memchr(bytes, 37, v8 - bytes);
        if (!v9)
        {
          break;
        }

        v10 = v9;
        if (!strncmp("%PDF-", v9, 5uLL) || !strncmp("%!PS-Adobe-", v10, 0xBuLL))
        {
          v11 = 1;
          goto LABEL_12;
        }

        bytes = (v10 + 1);
      }

      while (bytes < v8);
    }
  }

  v11 = 0;
LABEL_12:

  return v11;
}

+ (CGPDFDocument)createCGPDFDocumentRefWithNSData:(id)data
{
  dataCopy = data;
  if ([UIPrintInteractionController hasValidPDFHeader:dataCopy]&& (v4 = CGDataProviderCreateWithCFData(dataCopy)) != 0)
  {
    v5 = v4;
    v6 = CGPDFDocumentCreateWithProvider(v4);
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (CGPDFDocument)createCGPDFDocumentRefWithNSURL:(id)l
{
  lCopy = l;
  v13 = 0;
  v4 = [lCopy getResourceValue:&v13 forKey:*MEMORY[0x277CBE7B8] error:0];
  v5 = v13;
  v6 = 0;
  if ([lCopy isFileURL] && v4)
  {
    if ([v5 isEqual:*MEMORY[0x277CE1E08]])
    {
      v7 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:lCopy error:0];
      v8 = v7;
      if (v7)
      {
        v9 = [v7 readDataUpToLength:4096 error:0];
      }

      else
      {
        v9 = 0;
      }

      if ([UIPrintInteractionController hasValidPDFHeader:v9]&& (v10 = CGDataProviderCreateWithURL(lCopy)) != 0)
      {
        v11 = v10;
        v6 = CGPDFDocumentCreateWithProvider(v10);
        CGDataProviderRelease(v11);
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

+ (UIPrintInteractionController)sharedPrintController
{
  v2 = __sharedPrintController;
  if (!__sharedPrintController)
  {
    v3 = objc_alloc_init(UIPrintInteractionController);
    v4 = __sharedPrintController;
    __sharedPrintController = v3;

    v2 = __sharedPrintController;
  }

  return v2;
}

- (void)_cancelPreviewQueue:(BOOL)queue completionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  previewQueue = self->_previewQueue;
  if (previewQueue)
  {
    if (queueCopy)
    {
      [(NSOperationQueue *)previewQueue cancelAllOperations];
    }

    if (handlerCopy)
    {
      v8 = self->_previewQueue;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __70__UIPrintInteractionController__cancelPreviewQueue_completionHandler___block_invoke;
      v9[3] = &unk_279A9BFC8;
      v10 = handlerCopy;
      [(NSOperationQueue *)v8 addBarrierBlock:v9];
    }
  }

  else if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }
}

- (void)setPrintingItem:(id)printingItem
{
  v7[1] = *MEMORY[0x277D85DE8];
  v4 = printingItem;
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 copy];

    v4 = v5;
  }

  if (v4)
  {
    v7[0] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
    [(UIPrintInteractionController *)self setPrintingItems:v6];
  }

  else
  {
    [(UIPrintInteractionController *)self setPrintingItems:0];
  }
}

- (BOOL)updatePrintingItems:(id)items
{
  v110 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  rendererToUse = [(UIPrintInteractionController *)self rendererToUse];

  if (!rendererToUse)
  {
    v78 = itemsCopy;
    array = [MEMORY[0x277CBEB18] array];
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    printingItems = [(UIPrintInteractionController *)self printingItems];
    v8 = [printingItems countByEnumeratingWithState:&v100 objects:v109 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v101;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v101 != v10)
          {
            objc_enumerationMutation(printingItems);
          }

          v12 = *(*(&v100 + 1) + 8 * i);
          v13 = [(UIPrintInteractionController *)self _convertItemToPrintableItem:v12];

          if (!v13)
          {
            [array addObject:v12];
          }
        }

        v9 = [printingItems countByEnumeratingWithState:&v100 objects:v109 count:16];
      }

      while (v9);
    }

    if ([array count])
    {
      v14 = MEMORY[0x277CBEB18];
      printingItems2 = [(UIPrintInteractionController *)self printingItems];
      v16 = [v14 arrayWithArray:printingItems2];

      [v16 removeObjectsInArray:array];
      [(UIPrintInteractionController *)self setPrintingItems:v16];
    }

    printingItems3 = [(UIPrintInteractionController *)self printingItems];
    v18 = [printingItems3 count];

    if (v18 >= 2)
    {
      array2 = [MEMORY[0x277CBEB18] array];
      v96 = 0u;
      v97 = 0u;
      v98 = 0u;
      v99 = 0u;
      printingItems4 = [(UIPrintInteractionController *)self printingItems];
      v21 = [printingItems4 countByEnumeratingWithState:&v96 objects:v108 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v97;
        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v97 != v23)
            {
              objc_enumerationMutation(printingItems4);
            }

            v25 = *(*(&v96 + 1) + 8 * j);
            v26 = [(UIPrintInteractionController *)self convertedPrintableItem:v25];
            v27 = v26;
            if (v26)
            {
              v28 = CFGetTypeID(v26);
              if (v28 == CGPDFDocumentGetTypeID() && CGPDFDocumentIsEncrypted(v27))
              {
                [array2 addObject:v25];
              }
            }
          }

          v22 = [printingItems4 countByEnumeratingWithState:&v96 objects:v108 count:16];
        }

        while (v22);
      }

      if ([array2 count])
      {
        v29 = MEMORY[0x277CBEB18];
        printingItems5 = [(UIPrintInteractionController *)self printingItems];
        v31 = [v29 arrayWithArray:printingItems5];

        [v31 removeObjectsInArray:array2];
        [(UIPrintInteractionController *)self setPrintingItems:v31];
      }
    }

    [(UIPrintInteractionController *)self resetConvertedPrintableItems];

    itemsCopy = v78;
  }

  printingItems6 = [(UIPrintInteractionController *)self printingItems];
  v33 = [printingItems6 count];

  if (v33)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    array3 = [MEMORY[0x277CBEB18] array];
    memset(out, 0, sizeof(out));
    uuid_generate_random(out);
    uuid_unparse(out, v106);
    v36 = 0x277CCA000uLL;
    v37 = MEMORY[0x277CCACA8];
    v38 = NSTemporaryDirectory();
    v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:v106];
    v40 = [v37 stringWithFormat:@"%@%@", v38, v39];
    [(UIPrintInteractionController *)self setPrintingItemsTempFolderPath:v40];

    printingItemsTempFolderPath = [(UIPrintInteractionController *)self printingItemsTempFolderPath];
    v92 = 0;
    [defaultManager createDirectoryAtPath:printingItemsTempFolderPath withIntermediateDirectories:1 attributes:0 error:&v92];
    v42 = v92;

    if (!v42)
    {
      v77 = v33;
      v79 = itemsCopy;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      printingItems7 = [(UIPrintInteractionController *)self printingItems];
      v44 = [printingItems7 countByEnumeratingWithState:&v88 objects:v105 count:16];
      v82 = defaultManager;
      if (v44)
      {
        v45 = v44;
        v46 = *v89;
        v47 = 0x277CBE000uLL;
        v80 = *v89;
        v81 = printingItems7;
        do
        {
          for (k = 0; k != v45; ++k)
          {
            if (*v89 != v46)
            {
              objc_enumerationMutation(printingItems7);
            }

            v49 = *(*(&v88 + 1) + 8 * k);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v50 = v49;
              if ([v50 isFileURL])
              {
                v51 = array3;
                v52 = *(v36 + 3240);
                [(UIPrintInteractionController *)self printingItemsTempFolderPath];
                v54 = v53 = v47;
                lastPathComponent = [v50 lastPathComponent];
                v56 = [v52 stringWithFormat:@"%@/%@", v54, lastPathComponent];

                v47 = v53;
                v57 = [*(v53 + 3008) fileURLWithPath:v56];
                v87 = 0;
                [v82 copyItemAtURL:v50 toURL:v57 error:&v87];
                v58 = v87;
                if (v58)
                {

                  array3 = v51;
                }

                else
                {
                  array3 = v51;
                  [(UIWindow *)v51 addObject:v57];
                }

                v36 = 0x277CCA000;
                v46 = v80;
                printingItems7 = v81;
              }

              else
              {
                [(UIWindow *)array3 addObject:v50];
              }
            }

            else
            {
              [(UIWindow *)array3 addObject:v49];
            }
          }

          v45 = [printingItems7 countByEnumeratingWithState:&v88 objects:v105 count:16];
        }

        while (v45);
      }

      [(UIPrintInteractionController *)self setPrintingItems:array3];
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      printingItems8 = [(UIPrintInteractionController *)self printingItems];
      v60 = [printingItems8 countByEnumeratingWithState:&v83 objects:v104 count:16];
      v33 = v77;
      itemsCopy = v79;
      if (v60)
      {
        v61 = v60;
        v62 = *v84;
        do
        {
          for (m = 0; m != v61; ++m)
          {
            if (*v84 != v62)
            {
              objc_enumerationMutation(printingItems8);
            }

            v64 = [(UIPrintInteractionController *)self _convertItemToPrintableItem:*(*(&v83 + 1) + 8 * m)];
          }

          v61 = [printingItems8 countByEnumeratingWithState:&v83 objects:v104 count:16];
        }

        while (v61);
      }

      v42 = 0;
      defaultManager = v82;
    }
  }

  else
  {
    v65 = [objc_alloc(MEMORY[0x277D75DA0]) initWithWindowScene:itemsCopy];
    alertWindow = self->_alertWindow;
    self->_alertWindow = v65;
    array3 = v65;

    [(UIWindow *)array3 setOpaque:0];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UIWindow *)array3 setBackgroundColor:clearColor];

    [(UIWindow *)array3 setWindowLevel:*MEMORY[0x277D772B8]];
    defaultManager = objc_alloc_init(MEMORY[0x277D75D28]);
    [(UIWindow *)array3 setRootViewController:defaultManager];
    [(UIWindow *)array3 makeKeyAndVisible];
    v68 = MEMORY[0x277D75110];
    v69 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v70 = [v69 localizedStringForKey:@"Protected PDF files can only be printed separately." value:@"Protected PDF files can only be printed separately." table:@"Localizable"];
    v71 = [v68 alertControllerWithTitle:v70 message:0 preferredStyle:1];

    v72 = MEMORY[0x277D750F8];
    v73 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v74 = [v73 localizedStringForKey:@"PRINT_INTERACTION_OK_BUTTON" value:@"OK" table:@"Localizable"];
    v93[0] = MEMORY[0x277D85DD0];
    v93[1] = 3221225472;
    v93[2] = __52__UIPrintInteractionController_updatePrintingItems___block_invoke;
    v93[3] = &unk_279A9BFF0;
    v94 = v71;
    selfCopy = self;
    v42 = v71;
    v75 = [v72 actionWithTitle:v74 style:0 handler:v93];
    [v42 addAction:v75];

    v33 = 0;
    [defaultManager presentViewController:v42 animated:0 completion:0];
  }

  return v33 != 0;
}

void __52__UIPrintInteractionController_updatePrintingItems___block_invoke(uint64_t a1)
{
  [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
  [*(*(a1 + 40) + 40) setHidden:1];
  v2 = *(a1 + 40);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (BOOL)_presentAnimated:(BOOL)animated hostingScene:(id)scene completionHandler:(id)handler
{
  v39 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  handlerCopy = handler;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  if (sceneCopy || ([MEMORY[0x277D75128] sharedApplication], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "_findUISceneForLegacyInterfaceOrientation"), sceneCopy = objc_claimAutoreleasedReturnValue(), v9, sceneCopy) || (objc_msgSend(MEMORY[0x277D759A0], "mainScreen"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "_preferredFocusedWindowScene"), sceneCopy = objc_claimAutoreleasedReturnValue(), v10, sceneCopy))
  {
    [(UIPrintInteractionController *)self setHostingWindowScene:sceneCopy];
    printingItems = [(UIPrintInteractionController *)self printingItems];
    v12 = [printingItems count] == 0;

    if (!v12 && ![(UIPrintInteractionController *)self updatePrintingItems:sceneCopy])
    {
      v20 = 0;
      goto LABEL_19;
    }

    [(UIPrintInteractionController *)self setUsingWebKitFormatter:0];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    printPageRenderer = [(UIPrintInteractionController *)self printPageRenderer];
    printFormatters = [printPageRenderer printFormatters];

    v15 = [printFormatters countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v15)
    {
      v16 = *v31;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v31 != v16)
          {
            objc_enumerationMutation(printFormatters);
          }

          v18 = [objc_opt_class() description];
          v19 = [v18 isEqualToString:@"_WKWebViewPrintFormatter"];

          if (v19)
          {
            [(UIPrintInteractionController *)self setUsingWebKitFormatter:1];
            goto LABEL_16;
          }
        }

        v15 = [printFormatters countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:

    objc_initWeak(&location, self);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __80__UIPrintInteractionController__presentAnimated_hostingScene_completionHandler___block_invoke;
    v23[3] = &unk_279A9C018;
    objc_copyWeak(&v27, &location);
    v26 = &v34;
    v25 = handlerCopy;
    animatedCopy = animated;
    sceneCopy = sceneCopy;
    v24 = sceneCopy;
    [(UIPrintInteractionController *)self _ensurePDFIsUnlockedFirstAttempt:1 completionHandler:v23];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  else
  {
    NSLog(&cfstr_ErrorAttemptin.isa);
    sceneCopy = 0;
  }

  v20 = *(v35 + 24);
LABEL_19:
  _Block_object_dispose(&v34, 8);

  return v20 & 1;
}

void __80__UIPrintInteractionController__presentAnimated_hostingScene_completionHandler___block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    if (a2)
    {
      [WeakRetained resetConvertedPrintableItems];
    }

    else
    {
      *(*(*(a1 + 48) + 8) + 24) = [WeakRetained _setupPrintPanel:*(a1 + 40) forPDFGenerationOnly:0];
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        v5 = [v9 activePrintInfo];
        v6 = [v5 pdfPassword];

        if (v6)
        {
          [v9 _updatePrintInfoWithAnnotations];
        }

        v7 = [v9 delegate];
        if (objc_opt_respondsToSelector())
        {
          [v7 printInteractionControllerWillPresentPrinterOptions:v9];
        }

        v8 = [v9 printPanelViewController];
        [v8 presentPrintPanelAnimated:*(a1 + 64) hostingScene:*(a1 + 32)];
      }

      else
      {
        [v9 _endPrintJobWithAction:0 error:0];
      }
    }

    WeakRetained = v9;
  }
}

- (BOOL)presentFromRect:(CGRect)rect inView:(UIView *)view animated:(BOOL)animated completionHandler:(UIPrintInteractionCompletionHandler)completion
{
  v7 = animated;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v13 = view;
  v14 = completion;
  hostingWindowScene = [(UIPrintInteractionController *)self hostingWindowScene];

  if (!hostingWindowScene)
  {
    window = [(UIView *)v13 window];
    windowScene = [window windowScene];
    [(UIPrintInteractionController *)self setHostingWindowScene:windowScene];

    hostingWindowScene2 = [(UIPrintInteractionController *)self hostingWindowScene];

    if (!hostingWindowScene2)
    {
      mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
      _findUISceneForLegacyInterfaceOrientation = [mEMORY[0x277D75128] _findUISceneForLegacyInterfaceOrientation];
      [(UIPrintInteractionController *)self setHostingWindowScene:_findUISceneForLegacyInterfaceOrientation];
    }
  }

  hostingWindowScene3 = [(UIPrintInteractionController *)self hostingWindowScene];

  if (!hostingWindowScene3)
  {
    NSLog(&cfstr_ErrorAttemptin.isa);
LABEL_10:
    v29 = 0;
    goto LABEL_11;
  }

  printingItems = [(UIPrintInteractionController *)self printingItems];
  v23 = [printingItems count];

  if (v23)
  {
    hostingWindowScene4 = [(UIPrintInteractionController *)self hostingWindowScene];
    v25 = [(UIPrintInteractionController *)self updatePrintingItems:hostingWindowScene4];

    if (!v25)
    {
      goto LABEL_10;
    }
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    if ([(UIPrintInteractionController *)self _setupPrintPanel:v14 forPDFGenerationOnly:0])
    {
      objc_initWeak(&location, self);
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __82__UIPrintInteractionController_presentFromRect_inView_animated_completionHandler___block_invoke;
      v31[3] = &unk_279A9C040;
      objc_copyWeak(v33, &location);
      v31[4] = self;
      v33[1] = *&x;
      v33[2] = *&y;
      v33[3] = *&width;
      v33[4] = *&height;
      v32 = v13;
      v34 = v7;
      [(UIPrintInteractionController *)self _ensurePDFIsUnlockedFirstAttempt:1 completionHandler:v31];

      objc_destroyWeak(v33);
      objc_destroyWeak(&location);
      v29 = 1;
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  NSLog(&cfstr_WarningUiprint.isa);
  hostingWindowScene5 = [(UIPrintInteractionController *)self hostingWindowScene];
  v29 = [(UIPrintInteractionController *)self _presentAnimated:v7 hostingScene:hostingWindowScene5 completionHandler:v14];

LABEL_11:
  return v29;
}

void __82__UIPrintInteractionController_presentFromRect_inView_animated_completionHandler___block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    if (a2)
    {
      [WeakRetained _endPrintJobWithAction:0 error:0];
    }

    else
    {
      v5 = [WeakRetained activePrintInfo];
      v6 = [v5 pdfPassword];

      if (v6)
      {
        [v9 _updatePrintInfoWithAnnotations];
      }

      v7 = [v9 delegate];
      if (objc_opt_respondsToSelector())
      {
        [v7 printInteractionControllerWillPresentPrinterOptions:*(a1 + 32)];
      }

      v8 = [v9 printPanelViewController];
      [v8 presentPrintPanelFromRect:*(a1 + 40) inView:*(a1 + 88) animated:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
    }

    WeakRetained = v9;
  }
}

- (BOOL)presentFromBarButtonItem:(UIBarButtonItem *)item animated:(BOOL)animated completionHandler:(UIPrintInteractionCompletionHandler)completion
{
  v6 = animated;
  v8 = item;
  v9 = completion;
  hostingWindowScene = [(UIPrintInteractionController *)self hostingWindowScene];

  if (!hostingWindowScene)
  {
    _viewForPresenting = [(UIBarButtonItem *)v8 _viewForPresenting];
    window = [_viewForPresenting window];
    windowScene = [window windowScene];
    [(UIPrintInteractionController *)self setHostingWindowScene:windowScene];

    hostingWindowScene2 = [(UIPrintInteractionController *)self hostingWindowScene];

    if (!hostingWindowScene2)
    {
      mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
      _findUISceneForLegacyInterfaceOrientation = [mEMORY[0x277D75128] _findUISceneForLegacyInterfaceOrientation];
      [(UIPrintInteractionController *)self setHostingWindowScene:_findUISceneForLegacyInterfaceOrientation];
    }
  }

  hostingWindowScene3 = [(UIPrintInteractionController *)self hostingWindowScene];

  if (!hostingWindowScene3)
  {
    NSLog(&cfstr_ErrorAttemptin_0.isa);
LABEL_11:
    v24 = 0;
    goto LABEL_12;
  }

  printingItems = [(UIPrintInteractionController *)self printingItems];
  v19 = [printingItems count];

  if (v19)
  {
    hostingWindowScene4 = [(UIPrintInteractionController *)self hostingWindowScene];
    v21 = [(UIPrintInteractionController *)self updatePrintingItems:hostingWindowScene4];

    if (!v21)
    {
      goto LABEL_11;
    }
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    NSLog(&cfstr_WarningUiprint_0.isa);
    hostingWindowScene5 = [(UIPrintInteractionController *)self hostingWindowScene];
    v24 = [(UIPrintInteractionController *)self _presentAnimated:v6 hostingScene:hostingWindowScene5 completionHandler:v9];

    goto LABEL_12;
  }

  if (![(UIPrintInteractionController *)self _setupPrintPanel:v9 forPDFGenerationOnly:0])
  {
    goto LABEL_11;
  }

  objc_initWeak(&location, self);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __84__UIPrintInteractionController_presentFromBarButtonItem_animated_completionHandler___block_invoke;
  v27[3] = &unk_279A9C068;
  objc_copyWeak(&v29, &location);
  v27[4] = self;
  v28 = v8;
  v30 = v6;
  [(UIPrintInteractionController *)self _ensurePDFIsUnlockedFirstAttempt:1 completionHandler:v27];

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
  v24 = 1;
LABEL_12:

  return v24;
}

void __84__UIPrintInteractionController_presentFromBarButtonItem_animated_completionHandler___block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    if (a2)
    {
      [WeakRetained _endPrintJobWithAction:0 error:0];
    }

    else
    {
      v5 = [WeakRetained activePrintInfo];
      v6 = [v5 pdfPassword];

      if (v6)
      {
        [v9 _updatePrintInfoWithAnnotations];
      }

      v7 = [v9 delegate];
      if (objc_opt_respondsToSelector())
      {
        [v7 printInteractionControllerWillPresentPrinterOptions:*(a1 + 32)];
      }

      v8 = [v9 printPanelViewController];
      [v8 presentPrintPanelFromBarButtonItem:*(a1 + 40) animated:*(a1 + 56)];
    }

    WeakRetained = v9;
  }
}

- (BOOL)printToPrinter:(UIPrinter *)printer completionHandler:(UIPrintInteractionCompletionHandler)completion
{
  v6 = printer;
  v7 = completion;
  if (!+[UIPrintInteractionController isPrintingAvailable])
  {
    goto LABEL_9;
  }

  printingItems = [(UIPrintInteractionController *)self printingItems];
  if ([printingItems count])
  {
LABEL_5:

    goto LABEL_6;
  }

  printFormatter = [(UIPrintInteractionController *)self printFormatter];
  if (printFormatter)
  {

    goto LABEL_5;
  }

  printPageRenderer = [(UIPrintInteractionController *)self printPageRenderer];

  if (!printPageRenderer)
  {
    NSLog(&cfstr_ErrorAttemptin_1.isa);
LABEL_9:
    v12 = 0;
    goto LABEL_28;
  }

LABEL_6:
  if ([(UIPrintInteractionController *)self printStateActive])
  {
    printPanelViewController = [(UIPrintInteractionController *)self printPanelViewController];

    if (printPanelViewController)
    {
      printPanelViewController2 = [(UIPrintInteractionController *)self printPanelViewController];
      [printPanelViewController2 dismissAnimated:1 completionHandler:0];

      [(UIPrintInteractionController *)self setPrintPanelViewController:0];
    }

    goto LABEL_9;
  }

  [(UIPrintInteractionController *)self setPrintStateActive:1];
  [(UIPrintInteractionController *)self setCompletionHandler:v7];
  printInfo = [(UIPrintInteractionController *)self printInfo];
  if (printInfo)
  {
    printInfo2 = [(UIPrintInteractionController *)self printInfo];
    v15 = [printInfo2 copy];
    [(UIPrintInteractionController *)self setActivePrintInfo:v15];
  }

  else
  {
    printInfo2 = +[UIPrintInfo printInfo];
    [(UIPrintInteractionController *)self setActivePrintInfo:printInfo2];
  }

  activePrintInfo = [(UIPrintInteractionController *)self activePrintInfo];
  [activePrintInfo setDuplex:0];

  printingItems2 = [(UIPrintInteractionController *)self printingItems];
  v18 = [printingItems2 count];

  if (v18 == 1)
  {
    printingItems3 = [(UIPrintInteractionController *)self printingItems];
    v20 = [printingItems3 objectAtIndexedSubscript:0];

    [(UIPrintInteractionController *)self _updatePrintInfoWithAnnotations];
    if (!v20 || ![(UIPrintInteractionController *)self _printingItemIsReallyTallPDF:v20])
    {
      goto LABEL_19;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [UITallPDFPrintFormatter alloc];
      activePrintInfo2 = [(UIPrintInteractionController *)self activePrintInfo];
      pdfPassword = [activePrintInfo2 pdfPassword];
      v24 = [(UITallPDFPrintFormatter *)v21 initWithPDFURL:v20 pdfPassword:pdfPassword];
LABEL_33:
      v42 = v24;
      [(UIPrintInteractionController *)self setPrintFormatter:v24];

      printFormatter2 = [(UIPrintInteractionController *)self printFormatter];
      [printFormatter2 setPerPageContentInsets:{36.0, 36.0, 36.0, 36.0}];

      goto LABEL_19;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = [UITallPDFPrintFormatter alloc];
      activePrintInfo2 = [(UIPrintInteractionController *)self activePrintInfo];
      pdfPassword = [activePrintInfo2 pdfPassword];
      v24 = [(UITallPDFPrintFormatter *)v41 initWithPDFData:v20 pdfPassword:pdfPassword];
      goto LABEL_33;
    }
  }

  else
  {
    [(UIPrintInteractionController *)self _updatePrintInfoWithAnnotations];
    v20 = 0;
  }

LABEL_19:
  pkPrinter = [(UIPrinter *)v6 pkPrinter];
  [(UIPrintInteractionController *)self setPrinter:pkPrinter];

  printer = [(UIPrintInteractionController *)self printer];
  printInfoSupported = [printer printInfoSupported];

  printer2 = [(UIPrintInteractionController *)self printer];

  if (printer2)
  {
    printer3 = [(UIPrintInteractionController *)self printer];
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __65__UIPrintInteractionController_printToPrinter_completionHandler___block_invoke;
    v48[3] = &unk_279A9C090;
    v48[4] = self;
    [(UIPrintInteractionController *)self _setPrinterInfoState:_UIPrinterInfoGetState(printer3, v48)];
  }

  else
  {
    printingProgress = [(UIPrintInteractionController *)self printingProgress];

    if (!printingProgress)
    {
      printer4 = [(UIPrintInteractionController *)self printer];
      displayName = [printer4 displayName];

      if (!displayName || ![displayName length])
      {
        v33 = [(UIPrinter *)v6 URL];
        host = [v33 host];

        displayName = host;
      }

      v35 = [UIPrintingProgress alloc];
      hostingWindowScene = [(UIPrintInteractionController *)self hostingWindowScene];
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __65__UIPrintInteractionController_printToPrinter_completionHandler___block_invoke_2;
      v47[3] = &unk_279A9BEE0;
      v47[4] = self;
      v37 = [(UIPrintingProgress *)v35 initWithPrinterName:displayName forceDisplayAsAlert:1 hostingWindowScene:hostingWindowScene cancelHandler:v47];
      [(UIPrintInteractionController *)self setPrintingProgress:v37];
    }

    printingProgress2 = [(UIPrintInteractionController *)self printingProgress];
    [printingProgress2 setPrinterInfoState:0];

    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __65__UIPrintInteractionController_printToPrinter_completionHandler___block_invoke_3;
    v44[3] = &unk_279A9C0B8;
    v45 = v6;
    selfCopy = self;
    [(UIPrinter *)v45 contactPrinter:v44];
  }

  v12 = 1;
LABEL_28:

  return v12;
}

void __65__UIPrintInteractionController_printToPrinter_completionHandler___block_invoke_3(uint64_t a1, int a2)
{
  if (a2 && ([*(a1 + 32) pkPrinter], (v3 = objc_claimAutoreleasedReturnValue()) != 0) && (v4 = v3, v5 = objc_msgSend(*(a1 + 40), "printStateActive"), v4, v5))
  {
    v6 = [*(a1 + 32) pkPrinter];
    [*(a1 + 40) setPrinter:v6];

    v7 = *(a1 + 40);
    v8 = [v7 printer];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __65__UIPrintInteractionController_printToPrinter_completionHandler___block_invoke_4;
    v11[3] = &unk_279A9C090;
    v11[4] = *(a1 + 40);
    [v7 _setPrinterInfoState:{_UIPrinterInfoGetState(v8, v11)}];
  }

  else if ([*(a1 + 40) printStateActive])
  {
    [*(a1 + 40) _setPrinterInfoState:2];
    v9 = *(a1 + 40);
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"UIPrintErrorDomain" code:4 userInfo:0];
    [v9 _endPrintJobWithAction:0 error:v10];
  }
}

- (id)_currentPrintInfo
{
  if ([(UIPrintInteractionController *)self printStateActive])
  {
    activePrintInfo = [(UIPrintInteractionController *)self activePrintInfo];
  }

  else
  {
    activePrintInfo = 0;
  }

  return activePrintInfo;
}

- (CGSize)_printItemContentSize:(id)size
{
  sizeCopy = size;
  activePrintInfo = [(UIPrintInteractionController *)self activePrintInfo];
  if (activePrintInfo)
  {
    activePrintInfo2 = [(UIPrintInteractionController *)self activePrintInfo];
    v7 = ([activePrintInfo2 outputType] & 0xFFFFFFFFFFFFFFFDLL) == 1;
  }

  else
  {
    v7 = 0;
  }

  printer = [(UIPrintInteractionController *)self printer];
  v9 = [printer availableRollPapersPreferBorderless:v7];
  v10 = [v9 count];

  width = *MEMORY[0x277CBF3A8];
  height = *(MEMORY[0x277CBF3A8] + 8);
  if (v10 && sizeCopy)
  {
    v13 = [(UIPrintInteractionController *)self convertedPrintableItem:sizeCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v13 size];
      width = v14;
      height = v15;
    }

    else if (v13)
    {
      v16 = CFGetTypeID(v13);
      if (v16 == CGPDFDocumentGetTypeID())
      {
        Page = CGPDFDocumentGetPage(v13, 1uLL);
        if (Page)
        {
          BoxRect = CGPDFPageGetBoxRect(Page, kCGPDFCropBox);
          width = BoxRect.size.width;
          height = BoxRect.size.height;
        }
      }
    }
  }

  v18 = width;
  v19 = height;
  result.height = v19;
  result.width = v18;
  return result;
}

- (CGSize)_printItemContentSize
{
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  printingItems = [(UIPrintInteractionController *)self printingItems];
  v6 = [printingItems count];

  if (v6)
  {
    printingItems2 = [(UIPrintInteractionController *)self printingItems];
    v8 = [printingItems2 objectAtIndexedSubscript:0];

    if (v8)
    {
      [(UIPrintInteractionController *)self _printItemContentSize:v8];
      v3 = v9;
      v4 = v10;
    }
  }

  v11 = v3;
  v12 = v4;
  result.height = v12;
  result.width = v11;
  return result;
}

- (BOOL)_canShowDuplex
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  printingItems = [(UIPrintInteractionController *)self printingItems];
  v4 = [printingItems countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(printingItems);
        }

        v8 = [(UIPrintInteractionController *)self convertedPrintableItem:*(*(&v12 + 1) + 8 * i)];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v10 = 0;
          goto LABEL_11;
        }
      }

      v5 = [printingItems countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  printingItems = [(UIPrintInteractionController *)self activePrintInfo];
  v10 = ([printingItems outputType] & 0xFFFFFFFFFFFFFFFDLL) != 1;
LABEL_11:

  return v10;
}

- (BOOL)_canShowPageRange
{
  if ([(UIPrintInteractionController *)self showsPageRange]|| (printStateActive = [(UIPrintInteractionController *)self _canPreviewContent]))
  {
    printStateActive = [(UIPrintInteractionController *)self printStateActive];
    if (printStateActive)
    {
      printPageRenderer = [(UIPrintInteractionController *)self printPageRenderer];
      if (printPageRenderer || ([(UIPrintInteractionController *)self formatterRenderer], (printPageRenderer = objc_claimAutoreleasedReturnValue()) != 0))
      {
      }

      else
      {
        printingItems = [(UIPrintInteractionController *)self printingItems];
        v6 = [printingItems count];

        if (v6 != 1)
        {
          LOBYTE(printStateActive) = 0;
          return printStateActive;
        }
      }

      if ([(UIPrintInteractionController *)self pageCount]<= 1)
      {

        LOBYTE(printStateActive) = [(UIPrintInteractionController *)self _canShowScaling];
      }

      else
      {
        LOBYTE(printStateActive) = 1;
      }
    }
  }

  return printStateActive;
}

- (BOOL)_canShowPaperList
{
  if (![(UIPrintInteractionController *)self printStateActive])
  {
    return 0;
  }

  activePrintInfo = [(UIPrintInteractionController *)self activePrintInfo];
  v4 = ([activePrintInfo outputType] & 0xFFFFFFFFFFFFFFFDLL) == 1 || -[UIPrintInteractionController showsPaperSelectionForLoadedPapers](self, "showsPaperSelectionForLoadedPapers");

  return v4;
}

- (BOOL)_canShowColor
{
  if (![(UIPrintInteractionController *)self printStateActive])
  {
    return 0;
  }

  activePrintInfo = [(UIPrintInteractionController *)self activePrintInfo];
  if ([activePrintInfo outputType] == 2)
  {
    v4 = 0;
  }

  else
  {
    activePrintInfo2 = [(UIPrintInteractionController *)self activePrintInfo];
    v4 = [activePrintInfo2 outputType] != 3;
  }

  return v4;
}

- (BOOL)_canShowStaple
{
  if (![(UIPrintInteractionController *)self printStateActive])
  {
    return 0;
  }

  activePrintInfo = [(UIPrintInteractionController *)self activePrintInfo];
  v4 = ([activePrintInfo outputType] & 0xFFFFFFFFFFFFFFFDLL) == 0;

  return v4;
}

- (BOOL)_canShowPunch
{
  if (![(UIPrintInteractionController *)self printStateActive])
  {
    return 0;
  }

  activePrintInfo = [(UIPrintInteractionController *)self activePrintInfo];
  v4 = ([activePrintInfo outputType] & 0xFFFFFFFFFFFFFFFDLL) == 0;

  return v4;
}

- (BOOL)_canShowAnnotations
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  printingItems = [(UIPrintInteractionController *)self printingItems];
  v4 = [printingItems countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(printingItems);
        }

        v8 = [(UIPrintInteractionController *)self convertedPrintableItem:*(*(&v19 + 1) + 8 * i)];
        v9 = v8;
        if (v8)
        {
          v10 = CFGetTypeID(v8);
          if (v10 == CGPDFDocumentGetTypeID())
          {
            NumberOfPages = CGPDFDocumentGetNumberOfPages(v9);
            if (NumberOfPages)
            {
              v12 = NumberOfPages;
              v13 = 1;
              v14 = NumberOfPages;
              v15 = 1;
              do
              {
                if (CGPDFDocumentGetPage(v9, v13) && CGPDFPageGetAnnotationCount())
                {
                  break;
                }

                v16 = v12 > v13++;
                v15 = v16;
                --v14;
              }

              while (v14);
              if (v15)
              {

                v17 = 1;
                goto LABEL_21;
              }
            }
          }
        }
      }

      v5 = [printingItems countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v17 = 0;
LABEL_21:

  return v17;
}

- (BOOL)_canShowLayout
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  printingItems = [(UIPrintInteractionController *)self printingItems];
  v4 = [printingItems countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(printingItems);
        }

        v8 = [(UIPrintInteractionController *)self convertedPrintableItem:*(*(&v13 + 1) + 8 * i)];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          printInfo = [(UIPrintInteractionController *)self printInfo];
          v10 = [printInfo outputType] & 0xFFFFFFFFFFFFFFFDLL;

          if (v10 == 1)
          {

            v11 = 0;
            goto LABEL_12;
          }
        }
      }

      v5 = [printingItems countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_12:

  return v11;
}

- (BOOL)_canShowOrientation
{
  v17 = *MEMORY[0x277D85DE8];
  if (![(UIPrintInteractionController *)self showsPaperOrientation])
  {
    return 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  printingItems = [(UIPrintInteractionController *)self printingItems];
  v4 = [printingItems countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(printingItems);
        }

        v8 = [(UIPrintInteractionController *)self convertedPrintableItem:*(*(&v12 + 1) + 8 * i)];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 || v8 && (v9 = CFGetTypeID(v8), v9 == CGPDFDocumentGetTypeID()))
        {

          v10 = 0;
          goto LABEL_16;
        }
      }

      v5 = [printingItems countByEnumeratingWithState:&v12 objects:v16 count:16];
      v10 = 1;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v10 = 1;
  }

LABEL_16:

  return v10;
}

- (BOOL)_canShowScaling
{
  v17 = *MEMORY[0x277D85DE8];
  if (![(UIPrintInteractionController *)self showsPaperOrientation])
  {
    return 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  printingItems = [(UIPrintInteractionController *)self printingItems];
  v4 = [printingItems countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(printingItems);
        }

        v8 = [(UIPrintInteractionController *)self convertedPrintableItem:*(*(&v12 + 1) + 8 * i)];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 || v8 && (v9 = CFGetTypeID(v8), v9 == CGPDFDocumentGetTypeID()))
        {

          v10 = 0;
          goto LABEL_16;
        }
      }

      v5 = [printingItems countByEnumeratingWithState:&v12 objects:v16 count:16];
      v10 = 1;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v10 = 1;
  }

LABEL_16:

  return v10;
}

- (NSArray)pageRanges
{
  v3 = self->_pageRanges;
  objc_sync_enter(v3);
  v4 = self->_pageRanges;
  objc_sync_exit(v3);

  return v4;
}

- (void)setPageRanges:(id)ranges
{
  v19 = *MEMORY[0x277D85DE8];
  rangesCopy = ranges;
  if ([(UIPrintInteractionController *)self printStateActive])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = rangesCopy;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v14 + 1) + 8 * i) rangeValue];
          v9 += v12;
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    [(UIPrintInteractionController *)self setPageCountWithRanges:v9];
    v13 = self->_pageRanges;
    objc_sync_enter(v13);
    objc_storeStrong(&self->_pageRanges, ranges);
    objc_sync_exit(v13);
  }
}

- (PKPrinter)printer
{
  v3 = self->_printer;
  objc_sync_enter(v3);
  if ([(UIPrintInteractionController *)self printStateActive])
  {
    printer = self->_printer;
  }

  else
  {
    printer = 0;
  }

  v5 = printer;
  objc_sync_exit(v3);

  return v5;
}

- (void)setPrinter:(id)printer
{
  v37 = *MEMORY[0x277D85DE8];
  printerCopy = printer;
  if (![(UIPrintInteractionController *)self printStateActive])
  {
    goto LABEL_31;
  }

  printer = self->_printer;
  if (printer == printerCopy)
  {
    goto LABEL_31;
  }

  printerCopy2 = printer;
  objc_sync_enter(printerCopy2);
  objc_storeStrong(&self->_printer, printer);
  objc_sync_exit(printerCopy2);

  [(UIPrintInteractionController *)self setPaper:0];
  selfCopy = self;
  activePrintInfo = [(UIPrintInteractionController *)self activePrintInfo];
  [activePrintInfo _updateWithPrinter:printerCopy];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  lastUsedPrinters = [MEMORY[0x277D41090] lastUsedPrinters];
  v10 = [lastUsedPrinters countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (!v10)
  {

    goto LABEL_23;
  }

  v11 = v10;
  v12 = 0;
  v13 = *v33;
  v31 = *MEMORY[0x277D41210];
  v29 = *MEMORY[0x277D410D0];
  v28 = *MEMORY[0x277D410D8];
  v26 = *MEMORY[0x277D410E8];
  v27 = *MEMORY[0x277D410E0];
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v33 != v13)
      {
        objc_enumerationMutation(lastUsedPrinters);
      }

      if (printerCopy)
      {
        v15 = *(*(&v32 + 1) + 8 * i);
        v16 = [v15 objectForKey:v31];
        name = [(PKPrinter *)printerCopy name];
        v18 = [v16 isEqualToString:name];

        if (v18)
        {
          v19 = [v15 objectForKey:v29];

          if ((([v19 isEqualToString:v28] & 1) != 0 || objc_msgSend(v19, "isEqualToString:", v26)) && (-[UIPrintInteractionController activePrintInfo](selfCopy, "activePrintInfo", v26), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "duplex"), v20, !v21))
          {
            v22 = 1;
LABEL_16:
            activePrintInfo2 = [(UIPrintInteractionController *)selfCopy activePrintInfo];
            [activePrintInfo2 setDuplex:v22];
          }

          else if ([v19 isEqualToString:{v27, v26}])
          {
            v22 = 0;
            goto LABEL_16;
          }

          v12 = v19;
          continue;
        }
      }
    }

    v11 = [lastUsedPrinters countByEnumeratingWithState:&v32 objects:v36 count:16];
  }

  while (v11);

  if (!v12)
  {
LABEL_23:
    activePrintInfo3 = [(UIPrintInteractionController *)selfCopy activePrintInfo];
    if ([activePrintInfo3 duplex])
    {
      goto LABEL_28;
    }

    if ([(PKPrinter *)printerCopy type]== 3)
    {

      goto LABEL_27;
    }

    type = [(PKPrinter *)printerCopy type];

    if (type == 2)
    {
LABEL_27:
      activePrintInfo3 = [(UIPrintInteractionController *)selfCopy activePrintInfo];
      [activePrintInfo3 setDuplex:1];
LABEL_28:
    }

    v12 = 0;
  }

LABEL_31:
}

- (UIPrintPaper)paper
{
  selfCopy = self;
  v96 = *MEMORY[0x277D85DE8];
  p_paper = &self->_paper;
  v4 = self->_paper;
  objc_sync_enter(v4);
  v5 = *p_paper;
  objc_sync_exit(v4);

  if ([(UIPrintInteractionController *)selfCopy printStateActive]&& !v5)
  {
    v73 = p_paper;
    printer = [(UIPrintInteractionController *)selfCopy printer];

    if (printer)
    {
      printer2 = [(UIPrintInteractionController *)selfCopy printer];
      activePrintInfo = [(UIPrintInteractionController *)selfCopy activePrintInfo];
      duplex = [activePrintInfo duplex];
      activePrintInfo2 = [(UIPrintInteractionController *)selfCopy activePrintInfo];
      outputType = [activePrintInfo2 outputType];
      [(UIPrintInteractionController *)selfCopy _printItemContentSize];
      v12 = [UIPrintPaper _readyPaperListForPrinter:printer2 withDuplexMode:duplex forContentType:outputType contentSize:?];
    }

    else
    {
      printer2 = [(UIPrintInteractionController *)selfCopy activePrintInfo];
      v12 = +[UIPrintPaper _genericPaperListForOutputType:](UIPrintPaper, "_genericPaperListForOutputType:", [printer2 outputType]);
    }

    activePrintInfo3 = [(UIPrintInteractionController *)selfCopy activePrintInfo];
    outputType2 = [activePrintInfo3 outputType];

    printPageRenderer = [(UIPrintInteractionController *)selfCopy printPageRenderer];

    if (printPageRenderer)
    {
      printPageRenderer2 = [(UIPrintInteractionController *)selfCopy printPageRenderer];
      [printPageRenderer2 paperRect];
      v18 = v17;
      v20 = v19;
    }

    else
    {
      v18 = *MEMORY[0x277CBF3A8];
      v20 = *(MEMORY[0x277CBF3A8] + 8);
    }

    p_paper = v73;
    v21 = outputType2 & 0xFFFFFFFFFFFFFFFDLL;
    if (v18 == 0.0)
    {
      printer3 = [(UIPrintInteractionController *)selfCopy printer];

      if (printer3)
      {
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        obj = [MEMORY[0x277D41090] lastUsedPrintersForPhoto:v21 == 1];
        v23 = [obj countByEnumeratingWithState:&v88 objects:v95 count:16];
        if (v23)
        {
          v24 = v23;
          v71 = v21;
          v72 = v12;
          v25 = *v89;
          v26 = *MEMORY[0x277D41210];
          v74 = *MEMORY[0x277D41208];
          while (2)
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v89 != v25)
              {
                objc_enumerationMutation(obj);
              }

              v28 = *(*(&v88 + 1) + 8 * i);
              v29 = [v28 objectForKey:v26];
              v30 = selfCopy;
              printer4 = [(UIPrintInteractionController *)selfCopy printer];
              name = [printer4 name];
              v33 = [v29 isEqualToString:name];

              if (v33)
              {
                v34 = [v28 objectForKey:v74];
                if (v34)
                {
                  v35 = v34;
                  [v34 CGSizeValue];
                  v18 = v36;
                  v20 = v37;

                  selfCopy = v30;
                  goto LABEL_22;
                }
              }

              selfCopy = v30;
            }

            v24 = [obj countByEnumeratingWithState:&v88 objects:v95 count:16];
            if (v24)
            {
              continue;
            }

            break;
          }

LABEL_22:
          v12 = v72;
          p_paper = v73;
          v21 = v71;
        }
      }
    }

    if (v18 == 0.0)
    {
      activePrintInfo4 = [(UIPrintInteractionController *)selfCopy activePrintInfo];
      v39 = +[UIPrintPaper _defaultPaperForOutputType:](UIPrintPaper, "_defaultPaperForOutputType:", [activePrintInfo4 outputType]);
      [v39 paperSize];
      v18 = v40;
      v20 = v41;
    }

    if (v18 <= 0.0)
    {
      v5 = 0;
    }

    else
    {
      v42 = v21;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v43 = v12;
      v44 = [v43 countByEnumeratingWithState:&v84 objects:v94 count:16];
      if (v44)
      {
        v45 = v44;
        v46 = *v85;
LABEL_29:
        v47 = 0;
        while (1)
        {
          if (*v85 != v46)
          {
            objc_enumerationMutation(v43);
          }

          v48 = *(*(&v84 + 1) + 8 * v47);
          [v48 paperSize];
          if (v49 == v18 && v50 == v20)
          {
            break;
          }

          if (v49 == v20 && v50 == v18)
          {
            break;
          }

          if (v45 == ++v47)
          {
            v45 = [v43 countByEnumeratingWithState:&v84 objects:v94 count:16];
            if (v45)
            {
              goto LABEL_29;
            }

            goto LABEL_42;
          }
        }

        v5 = v48;

        if (v5)
        {
          goto LABEL_78;
        }
      }

      else
      {
LABEL_42:
      }

      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v53 = v43;
      v5 = [v53 countByEnumeratingWithState:&v80 objects:v93 count:16];
      if (v5)
      {
        v54 = *v81;
        while (2)
        {
          for (j = 0; j != v5; j = (j + 1))
          {
            if (*v81 != v54)
            {
              objc_enumerationMutation(v53);
            }

            v56 = *(*(&v80 + 1) + 8 * j);
            [v56 paperSize];
            if (vabdd_f64(v57, v18) < 0.029 && vabdd_f64(v58, v20) < 0.029 || vabdd_f64(v57, v20) < 0.029 && vabdd_f64(v58, v18) < 0.029)
            {
              v5 = v56;
              goto LABEL_58;
            }
          }

          v5 = [v53 countByEnumeratingWithState:&v80 objects:v93 count:16];
          if (v5)
          {
            continue;
          }

          break;
        }
      }

LABEL_58:

      v21 = v42;
    }

    if (v21 == 1 && !v5)
    {
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v59 = v12;
      v5 = [v59 countByEnumeratingWithState:&v76 objects:v92 count:16];
      if (v5)
      {
        v60 = *v77;
        while (2)
        {
          for (k = 0; k != v5; k = (k + 1))
          {
            if (*v77 != v60)
            {
              objc_enumerationMutation(v59);
            }

            v62 = *(*(&v76 + 1) + 8 * k);
            [v62 paperSize];
            if (v64 <= 720.0 && v63 <= 720.0)
            {
              v5 = v62;
              goto LABEL_72;
            }
          }

          v5 = [v59 countByEnumeratingWithState:&v76 objects:v92 count:16];
          if (v5)
          {
            continue;
          }

          break;
        }
      }

LABEL_72:
    }

    if (v5)
    {
      goto LABEL_78;
    }

    _updatePrintPaper = [(UIPrintInteractionController *)selfCopy _updatePrintPaper];
    printPaper = [(UIPrintInteractionController *)selfCopy printPaper];
    if (!printPaper)
    {
      if (![v12 count])
      {
        v5 = 0;
        goto LABEL_78;
      }

      printPaper = [v12 objectAtIndex:0];
    }

    v5 = printPaper;
LABEL_78:
  }

  v67 = *p_paper;
  objc_sync_enter(v67);
  if (*p_paper != v5)
  {
    objc_storeStrong(p_paper, v5);
  }

  objc_sync_exit(v67);

  if ([(UIPrintInteractionController *)selfCopy printStateActive])
  {
    v68 = v5;
  }

  else
  {
    v68 = 0;
  }

  v69 = v68;

  return v68;
}

- (void)setPaper:(id)paper
{
  paperCopy = paper;
  v5 = self->_paper;
  objc_sync_enter(v5);
  if ([(UIPrintInteractionController *)self printStateActive]&& self->_paper != paperCopy)
  {
    objc_storeStrong(&self->_paper, paper);
  }

  objc_sync_exit(v5);
}

- (NSURL)tempPreviewFileURL
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_tempPreviewFileURL;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setTempPreviewFileURL:(id)l
{
  lCopy = l;
  obj = self;
  objc_sync_enter(obj);
  if (obj->_tempPreviewFileURL && ([(NSURL *)lCopy isEqual:?]& 1) == 0)
  {
    [(UIPrintInteractionController *)obj removeFileAtURL:obj->_tempPreviewFileURL];
  }

  tempPreviewFileURL = obj->_tempPreviewFileURL;
  obj->_tempPreviewFileURL = lCopy;

  objc_sync_exit(obj);
}

- (void)removeFileAtURL:(id)l
{
  lCopy = l;
  v4 = objc_opt_new();
  if (lCopy)
  {
    path = [lCopy path];
    v6 = [v4 fileExistsAtPath:path];

    if (v6)
    {
      v10 = 0;
      v7 = [v4 removeItemAtURL:lCopy error:&v10];
      v8 = v10;
      v9 = v8;
      if ((v7 & 1) == 0)
      {
        NSLog(&cfstr_RemovingTempor.isa, v8);
      }
    }
  }
}

- (void)_updatePrintInfoWithAnnotations
{
  if ([(UIPrintInteractionController *)self _canShowAnnotations])
  {
    activePrintInfo = [(UIPrintInteractionController *)self activePrintInfo];
    [activePrintInfo setImagePDFAnnotations:1];
  }
}

- (id)rendererToUse
{
  v25 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  printPageRenderer = [(UIPrintInteractionController *)selfCopy printPageRenderer];
  if (printPageRenderer)
  {
  }

  else
  {
    printFormatter = [(UIPrintInteractionController *)selfCopy printFormatter];

    if (!printFormatter)
    {
      goto LABEL_22;
    }
  }

  printPageRenderer2 = [(UIPrintInteractionController *)selfCopy printPageRenderer];
  if (!printPageRenderer2)
  {
    printFormatter2 = [(UIPrintInteractionController *)selfCopy printFormatter];
    if (!printFormatter2)
    {
      goto LABEL_6;
    }

    formatterRenderer = [(UIPrintInteractionController *)selfCopy formatterRenderer];

    if (formatterRenderer)
    {
      goto LABEL_6;
    }

    v17 = objc_alloc_init(UIPrintPageRenderer);
    [(UIPrintInteractionController *)selfCopy setFormatterRenderer:v17];

    printPageRenderer2 = [(UIPrintInteractionController *)selfCopy formatterRenderer];
    printFormatter3 = [(UIPrintInteractionController *)selfCopy printFormatter];
    [printPageRenderer2 addPrintFormatter:printFormatter3 startingAtPageAtIndex:0];
  }

LABEL_6:
  formatterRenderer2 = [(UIPrintInteractionController *)selfCopy formatterRenderer];

  if (formatterRenderer2)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    formatterRenderer3 = [(UIPrintInteractionController *)selfCopy formatterRenderer];
    printFormatters = [formatterRenderer3 printFormatters];

    v9 = [printFormatters countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(printFormatters);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          activePrintInfo = [(UIPrintInteractionController *)selfCopy activePrintInfo];
          [v12 setImagePDFAnnotations:{objc_msgSend(activePrintInfo, "imagePDFAnnotations")}];
        }

        v9 = [printFormatters countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v9);
    }
  }

  printPageRenderer3 = [(UIPrintInteractionController *)selfCopy printPageRenderer];
  if (printPageRenderer3)
  {
    [(UIPrintInteractionController *)selfCopy printPageRenderer];
  }

  else
  {
    [(UIPrintInteractionController *)selfCopy formatterRenderer];
  }
  printFormatter = ;

LABEL_22:
  objc_sync_exit(selfCopy);

  return printFormatter;
}

- (void)_updatePageCount
{
  v74 = *MEMORY[0x277D85DE8];
  pageCount = [(UIPrintInteractionController *)self pageCount];
  _updatePrintPaper = [(UIPrintInteractionController *)self _updatePrintPaper];
  rendererToUse = [(UIPrintInteractionController *)self rendererToUse];
  if (rendererToUse)
  {
    printPaper = [(UIPrintInteractionController *)self printPaper];
    [printPaper paperSize];
    v8 = v7;
    printPaper2 = [(UIPrintInteractionController *)self printPaper];
    [printPaper2 paperSize];
    [rendererToUse setPaperRect:{0.0, 0.0, v8, v10}];

    printPaper3 = [(UIPrintInteractionController *)self printPaper];
    activePrintInfo = [(UIPrintInteractionController *)self activePrintInfo];
    [printPaper3 _printableRectForDuplex:{objc_msgSend(activePrintInfo, "duplex") != 0}];
    [rendererToUse setPrintableRect:?];

    [rendererToUse paperRect];
    if (CGRectIsEmpty(v75))
    {
      goto LABEL_15;
    }

    _numberOfPages = [rendererToUse _numberOfPages];
    selfCopy2 = self;
    goto LABEL_14;
  }

  printingItems = [(UIPrintInteractionController *)self printingItems];
  v16 = [printingItems count];

  printingItems2 = [(UIPrintInteractionController *)self printingItems];
  v18 = printingItems2;
  if (v16 == 1)
  {
    v19 = [printingItems2 objectAtIndexedSubscript:0];
    printingItems3 = [(UIPrintInteractionController *)self convertedPrintableItem:v19];

    if (!printingItems3 || (v21 = CFGetTypeID(printingItems3), v21 != CGPDFDocumentGetTypeID()))
    {
      v24 = 1;
      goto LABEL_12;
    }

    NumberOfPages = CGPDFDocumentGetNumberOfPages(printingItems3);
LABEL_10:
    v24 = NumberOfPages;
LABEL_12:
    [(UIPrintInteractionController *)self setPageCount:v24];

    goto LABEL_15;
  }

  v23 = [printingItems2 count];

  selfCopy2 = self;
  if (v23 >= 2)
  {
    printingItems3 = [(UIPrintInteractionController *)self printingItems];
    NumberOfPages = [printingItems3 count];
    goto LABEL_10;
  }

  _numberOfPages = 0;
LABEL_14:
  [(UIPrintInteractionController *)selfCopy2 setPageCount:_numberOfPages];
LABEL_15:
  if ([(UIPrintInteractionController *)self pageCount]== 0x7FFFFFFFFFFFFFFFLL)
  {
    [(UIPrintInteractionController *)self setPageCount:1];
  }

  pageCount2 = [(UIPrintInteractionController *)self pageCount];
  printingItems4 = [(UIPrintInteractionController *)self printingItems];
  v27 = [printingItems4 count];

  if (v27 >= 2)
  {
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    printingItems5 = [(UIPrintInteractionController *)self printingItems];
    v29 = [printingItems5 countByEnumeratingWithState:&v66 objects:v73 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v67;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v67 != v31)
          {
            objc_enumerationMutation(printingItems5);
          }

          v33 = [(UIPrintInteractionController *)self convertedPrintableItem:*(*(&v66 + 1) + 8 * i)];
          v34 = v33;
          if (v33)
          {
            v35 = CFGetTypeID(v33);
            if (v35 == CGPDFDocumentGetTypeID())
            {
              pageCount2 = pageCount2 + CGPDFDocumentGetNumberOfPages(v34) - 1;
            }
          }
        }

        v30 = [printingItems5 countByEnumeratingWithState:&v66 objects:v73 count:16];
      }

      while (v30);
    }
  }

  currentThread = [MEMORY[0x277CCACC8] currentThread];
  isCancelled = [currentThread isCancelled];

  if ((isCancelled & 1) == 0)
  {
    activePrintInfo2 = [(UIPrintInteractionController *)self activePrintInfo];
    pageCount3 = [activePrintInfo2 pageCount];

    if (pageCount3 != pageCount2)
    {
      activePrintInfo3 = [(UIPrintInteractionController *)self activePrintInfo];
      [activePrintInfo3 setPageCount:pageCount2];
    }

    pageRanges = [(UIPrintInteractionController *)self pageRanges];
    if (pageRanges)
    {
      v42 = pageRanges;
      pageRanges2 = [(UIPrintInteractionController *)self pageRanges];
      if ([pageRanges2 count])
      {
        pageCount4 = [(UIPrintInteractionController *)self pageCount];

        if (pageCount4 == pageCount)
        {
          goto LABEL_38;
        }
      }

      else
      {
      }
    }

    v45 = [MEMORY[0x277CCAE60] valueWithRange:{0, -[UIPrintInteractionController pageCount](self, "pageCount")}];
    v72 = v45;
    v46 = [MEMORY[0x277CBEA60] arrayWithObjects:&v72 count:1];
    [(UIPrintInteractionController *)self setPageRanges:v46];

    pageRanges3 = [(UIPrintInteractionController *)self pageRanges];
    v48 = [pageRanges3 copy];
    activePrintInfo4 = [(UIPrintInteractionController *)self activePrintInfo];
    [activePrintInfo4 setPageRanges:v48];

LABEL_38:
    [(UIPrintInteractionController *)self setPageCountWithRanges:0];
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    pageRanges4 = [(UIPrintInteractionController *)self pageRanges];
    v51 = [pageRanges4 countByEnumeratingWithState:&v62 objects:v71 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v63;
      do
      {
        for (j = 0; j != v52; ++j)
        {
          if (*v63 != v53)
          {
            objc_enumerationMutation(pageRanges4);
          }

          [*(*(&v62 + 1) + 8 * j) rangeValue];
          [(UIPrintInteractionController *)self setPageCountWithRanges:[(UIPrintInteractionController *)self pageCountWithRanges]+ v55];
        }

        v52 = [pageRanges4 countByEnumeratingWithState:&v62 objects:v71 count:16];
      }

      while (v52);
    }

    pageCountWithRanges = [(UIPrintInteractionController *)self pageCountWithRanges];
    if (pageCountWithRanges > [(UIPrintInteractionController *)self pageCount])
    {
      v57 = [MEMORY[0x277CCAE60] valueWithRange:{0, -[UIPrintInteractionController pageCount](self, "pageCount")}];
      v70 = v57;
      v58 = [MEMORY[0x277CBEA60] arrayWithObjects:&v70 count:1];
      [(UIPrintInteractionController *)self setPageRanges:v58];

      pageRanges5 = [(UIPrintInteractionController *)self pageRanges];
      v60 = [pageRanges5 copy];
      activePrintInfo5 = [(UIPrintInteractionController *)self activePrintInfo];
      [activePrintInfo5 setPageRanges:v60];

      [(UIPrintInteractionController *)self setPageCountWithRanges:[(UIPrintInteractionController *)self pageCount]];
    }
  }
}

- (BOOL)isPhone
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  model = [currentDevice model];
  v4 = [model rangeOfString:@"iPhone"];

  return v4 != 0x7FFFFFFFFFFFFFFFLL;
}

- (BOOL)_setupPrintPanel:(id)panel forPDFGenerationOnly:(BOOL)only
{
  onlyCopy = only;
  panelCopy = panel;
  if (!+[UIPrintInteractionController isPrintingAvailable]&& !onlyCopy)
  {
    goto LABEL_10;
  }

  printingItems = [(UIPrintInteractionController *)self printingItems];
  if ([printingItems count])
  {
LABEL_6:

    goto LABEL_7;
  }

  printFormatter = [(UIPrintInteractionController *)self printFormatter];
  if (printFormatter)
  {

    goto LABEL_6;
  }

  printPageRenderer = [(UIPrintInteractionController *)self printPageRenderer];

  if (!printPageRenderer)
  {
    NSLog(&cfstr_ErrorAttemptin_1.isa);
LABEL_10:
    v11 = 0;
    goto LABEL_47;
  }

LABEL_7:
  if ([(UIPrintInteractionController *)self printStateActive])
  {
    printPanelViewController = [(UIPrintInteractionController *)self printPanelViewController];

    if (printPanelViewController)
    {
      printPanelViewController2 = [(UIPrintInteractionController *)self printPanelViewController];
      [printPanelViewController2 dismissAnimated:1 completionHandler:0];
    }

    goto LABEL_10;
  }

  [(UIPrintInteractionController *)self setPrintStateActive:1];
  [(UIPrintInteractionController *)self setCompletionHandler:panelCopy];
  printInfo = [(UIPrintInteractionController *)self printInfo];
  if (printInfo)
  {
    printInfo2 = [(UIPrintInteractionController *)self printInfo];
    v14 = [printInfo2 copy];
    [(UIPrintInteractionController *)self setActivePrintInfo:v14];
  }

  else
  {
    printInfo2 = +[UIPrintInfo printInfo];
    [(UIPrintInteractionController *)self setActivePrintInfo:printInfo2];
  }

  pdfPassword = [(UIPrintInteractionController *)self pdfPassword];
  activePrintInfo = [(UIPrintInteractionController *)self activePrintInfo];
  [activePrintInfo setPdfPassword:pdfPassword];

  printInfo3 = [(UIPrintInteractionController *)self printInfo];
  if (printInfo3)
  {
    goto LABEL_15;
  }

  printingItems2 = [(UIPrintInteractionController *)self printingItems];
  v32 = [printingItems2 count];

  if (v32 == 1)
  {
    printingItems3 = [(UIPrintInteractionController *)self printingItems];
    printInfo3 = [printingItems3 objectAtIndexedSubscript:0];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      path = [printInfo3 path];
      lastPathComponent = [path lastPathComponent];
      stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
      activePrintInfo2 = [(UIPrintInteractionController *)self activePrintInfo];
      [activePrintInfo2 setJobName:stringByDeletingPathExtension];
    }

LABEL_15:
  }

  activePrintInfo3 = [(UIPrintInteractionController *)self activePrintInfo];
  v19 = [activePrintInfo3 outputType] & 0xFFFFFFFFFFFFFFFDLL;

  if (v19 == 1)
  {
    activePrintInfo4 = [(UIPrintInteractionController *)self activePrintInfo];
    [activePrintInfo4 setDuplex:0];
  }

  [(UIPrintInteractionController *)self _updatePrintInfoWithAnnotations];
  printingItems4 = [(UIPrintInteractionController *)self printingItems];
  if ([printingItems4 count] == 1)
  {
    printingItems5 = [(UIPrintInteractionController *)self printingItems];
    v23 = [printingItems5 objectAtIndexedSubscript:0];

    if (!v23 || ![(UIPrintInteractionController *)self _printingItemIsReallyTallPDF:v23])
    {
      goto LABEL_25;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [UITallPDFPrintFormatter alloc];
      activePrintInfo5 = [(UIPrintInteractionController *)self activePrintInfo];
      pdfPassword2 = [activePrintInfo5 pdfPassword];
      v27 = [(UITallPDFPrintFormatter *)v24 initWithPDFURL:v23 pdfPassword:pdfPassword2];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_25;
      }

      v49 = [UITallPDFPrintFormatter alloc];
      activePrintInfo5 = [(UIPrintInteractionController *)self activePrintInfo];
      pdfPassword2 = [activePrintInfo5 pdfPassword];
      v27 = [(UITallPDFPrintFormatter *)v49 initWithPDFData:v23 pdfPassword:pdfPassword2];
    }

    v50 = v27;
    [(UIPrintInteractionController *)self setPrintFormatter:v27];

    printingItems4 = [(UIPrintInteractionController *)self printFormatter];
    [printingItems4 setPerPageContentInsets:{36.0, 36.0, 36.0, 36.0}];
  }

  else
  {
    v23 = 0;
  }

LABEL_25:
  if (!onlyCopy)
  {
    delegate = [(UIPrintInteractionController *)self delegate];
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([delegate printInteractionControllerParentViewController:self], (v29 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      presentedViewController2 = v29;
    }

    else
    {
      printActivityDelegate = [(UIPrintInteractionController *)self printActivityDelegate];
      v39 = objc_opt_respondsToSelector();

      if ((v39 & 1) == 0 || (-[UIPrintInteractionController printActivityDelegate](self, "printActivityDelegate"), v40 = objc_claimAutoreleasedReturnValue(), [v40 printInteractionControllerParentViewController:self], presentedViewController2 = objc_claimAutoreleasedReturnValue(), v40, !presentedViewController2))
      {
        printActivityDelegate2 = [(UIPrintInteractionController *)self printActivityDelegate];
        v42 = objc_opt_respondsToSelector();

        if (v42)
        {
          printActivityDelegate3 = [(UIPrintInteractionController *)self printActivityDelegate];
          v44 = [printActivityDelegate3 printInteractionControllerWindowForPresentation:self];
          rootViewController = [v44 rootViewController];

          presentedViewController = [rootViewController presentedViewController];

          if (presentedViewController)
          {
            do
            {
              presentedViewController2 = [rootViewController presentedViewController];

              v30PresentedViewController = [presentedViewController2 presentedViewController];

              rootViewController = presentedViewController2;
            }

            while (v30PresentedViewController);
          }

          else
          {
            presentedViewController2 = rootViewController;
          }
        }

        else
        {
          presentedViewController2 = 0;
        }
      }
    }

    v51 = [[UIPrintPanelViewController alloc] initWithPrintInterationController:self inParentController:presentedViewController2 usingSplitView:[(UIPrintInteractionController *)self isPhone]^ 1];
    [(UIPrintInteractionController *)self setPrintPanelViewController:v51];
  }

  v11 = 1;
LABEL_47:

  return v11;
}

- (void)_generatePDFWithNupForPrintingCompletion:(id)completion
{
  v63 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  rendererToUse = [(UIPrintInteractionController *)self rendererToUse];
  v6 = rendererToUse;
  if (rendererToUse)
  {
    numberOfPages = [rendererToUse numberOfPages];
  }

  else
  {
    printingItems = [(UIPrintInteractionController *)self printingItems];
    numberOfPages = [printingItems count];
  }

  _tempFilePath = [(UIPrintInteractionController *)self _tempFilePath];
  v10 = [(UIPrintInteractionController *)self _newPDFURLWithPath:_tempFilePath isContentManaged:[(UIPrintInteractionController *)self isContentManaged]];

  [(UIPrintInteractionController *)self _mediaRect];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  activePrintInfo = [(UIPrintInteractionController *)self activePrintInfo];
  [activePrintInfo scalingFactor];
  v21 = v16 * v20;

  activePrintInfo2 = [(UIPrintInteractionController *)self activePrintInfo];
  [activePrintInfo2 scalingFactor];
  v24 = v18 * v23;

  v25 = [(UIPrintInteractionController *)self _newSaveContext:v10 withMediaRect:v12, v14, v21, v24];
  if (v6)
  {
    v56 = v10;
    v57 = completionCopy;
    _fullPagesRange = [(UIPrintInteractionController *)self _fullPagesRange];
    [v6 prepareForDrawingPages:{_fullPagesRange, v27}];
    [v6 _startSaveContext:v25];
    activePrintInfo3 = [(UIPrintInteractionController *)self activePrintInfo];
    pageRanges = [activePrintInfo3 pageRanges];

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v30 = pageRanges;
    v31 = [v30 countByEnumeratingWithState:&v58 objects:v62 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v59;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v59 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v58 + 1) + 8 * i);
          for (j = [v35 rangeValue]; ; ++j)
          {
            rangeValue = [v35 rangeValue];
            [v35 rangeValue];
            if (j >= v38 + rangeValue)
            {
              break;
            }

            activePrintInfo4 = [(UIPrintInteractionController *)self activePrintInfo];
            [activePrintInfo4 scalingFactor];
            [v6 _drawPage:j withScale:1 drawingToPDF:?];
          }
        }

        v32 = [v30 countByEnumeratingWithState:&v58 objects:v62 count:16];
      }

      while (v32);
    }

    [v6 _endSaveContext];
    v10 = v56;
    completionCopy = v57;
    goto LABEL_25;
  }

  printingItems2 = [(UIPrintInteractionController *)self printingItems];
  v41 = [printingItems2 count];

  printingItems3 = [(UIPrintInteractionController *)self printingItems];
  v43 = printingItems3;
  if (v41 == 1)
  {
    v44 = [printingItems3 objectAtIndex:0];

    if (v44)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v45 = v44;
        [v45 ui_setIsContentManaged:{-[UIPrintInteractionController isContentManaged](self, "isContentManaged")}];
        if (!IsAssetURL(v45) && IsPDFURL(v45) && [(UIPrintInteractionController *)self _canPrintURL:v45])
        {
          goto LABEL_24;
        }
      }
    }

    _tempFilePath2 = [(UIPrintInteractionController *)self _tempFilePath];
    v45 = [(UIPrintInteractionController *)self _newPDFURLWithPath:_tempFilePath2 isContentManaged:[(UIPrintInteractionController *)self isContentManaged]];

    v47 = [(UIPrintInteractionController *)self _newSaveContext:v45 withMediaRect:v12, v14, v21, v24];
    [(UIPrintInteractionController *)self _drawPrintItem:v44 toContext:v47 printAllPages:0];
    CGPDFContextClose(v47);
    CGContextRelease(v47);
LABEL_24:
    v48 = [(UIPrintInteractionController *)self redrawPDFwithPageRange:v45];

    [(UIPrintInteractionController *)self removeFileAtURL:v10];
    v10 = v48;
    goto LABEL_25;
  }

  v52 = [printingItems3 count];

  if (v52 >= 2 && numberOfPages)
  {
    for (k = 0; k != numberOfPages; ++k)
    {
      if (![(UIPrintInteractionController *)self printStateActive])
      {
        break;
      }

      printingItems4 = [(UIPrintInteractionController *)self printingItems];
      v55 = [printingItems4 objectAtIndex:k];

      [(UIPrintInteractionController *)self _drawPrintItem:v55 toContext:v25 printAllPages:1];
    }
  }

LABEL_25:
  if (v25)
  {
    CGPDFContextClose(v25);
    CGContextRelease(v25);
  }

  if ([(UIPrintInteractionController *)self needRedrawWithNUp])
  {
    activePrintInfo5 = [(UIPrintInteractionController *)self activePrintInfo];
    printPaper = [(UIPrintInteractionController *)self printPaper];
    v51 = redrawPDFWithNUp(v10, activePrintInfo5, printPaper);

    v10 = v51;
  }

  completionCopy[2](completionCopy, v10);
}

- (id)redrawPDFwithPageRange:(id)range
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = CGPDFDocumentCreateWithURL(range);
  selfCopy = self;
  activePrintInfo = [(UIPrintInteractionController *)self activePrintInfo];
  pageRanges = [activePrintInfo pageRanges];
  v7 = [pageRanges copy];

  v8 = 0;
  if (!v7 || !v4)
  {
    goto LABEL_24;
  }

  activePrintInfo2 = [(UIPrintInteractionController *)selfCopy activePrintInfo];
  pdfPassword = [activePrintInfo2 pdfPassword];
  if (!pdfPassword)
  {
    goto LABEL_6;
  }

  v11 = pdfPassword;
  IsEncrypted = CGPDFDocumentIsEncrypted(v4);

  if (IsEncrypted)
  {
    activePrintInfo2 = [(UIPrintInteractionController *)selfCopy activePrintInfo];
    pdfPassword2 = [activePrintInfo2 pdfPassword];
    CGPDFDocumentUnlockWithPassword(v4, [pdfPassword2 cStringUsingEncoding:4]);

LABEL_6:
  }

  if (!CGPDFDocumentAllowsPrinting(v4))
  {
    v8 = 0;
    goto LABEL_27;
  }

  _tempFilePath = [(UIPrintInteractionController *)selfCopy _tempFilePath];
  v8 = [(UIPrintInteractionController *)selfCopy _newPDFURLWithPath:_tempFilePath isContentManaged:[(UIPrintInteractionController *)selfCopy isContentManaged]];

  Page = CGPDFDocumentGetPage(v4, 1uLL);
  memset(&mediaBox, 0, sizeof(mediaBox));
  if (Page)
  {
    mediaBox.origin.x = getPDFPageBoxRect(Page);
    mediaBox.origin.y = v16;
    mediaBox.size.width = v17;
    mediaBox.size.height = v18;
  }

  v19 = CGPDFContextCreateWithURL(v8, &mediaBox, 0);
  if (v19)
  {
    v20 = v19;
    v34 = v8;
    v35 = v7;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = v7;
    v38 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v38)
    {
      v37 = *v41;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v41 != v37)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v40 + 1) + 8 * i);
          rangeValue = [v22 rangeValue];
          rangeValue2 = [v22 rangeValue];
          [v22 rangeValue];
          if (rangeValue < v25 + rangeValue2)
          {
            do
            {
              ++rangeValue;
              v26 = v4;
              v27 = CGPDFDocumentGetPage(v4, rangeValue);
              dictionary = [MEMORY[0x277CBEB38] dictionary];
              getPDFPageProperties(dictionary, v27);
              CGPDFContextBeginPage(v20, dictionary);
              activePrintInfo3 = [(UIPrintInteractionController *)selfCopy activePrintInfo];
              imagePDFAnnotations = [activePrintInfo3 imagePDFAnnotations];

              if (imagePDFAnnotations)
              {
                CGContextDrawPDFPageWithAnnotations();
              }

              else
              {
                CGContextDrawPDFPage(v20, v27);
              }

              CGContextEndPage(v20);

              rangeValue3 = [v22 rangeValue];
              [v22 rangeValue];
              v4 = v26;
            }

            while (rangeValue < v32 + rangeValue3);
          }
        }

        v38 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v38);
    }

    CGPDFContextClose(v20);
    CGContextRelease(v20);
    v8 = v34;
    v7 = v35;
  }

LABEL_24:
  if (v4)
  {
LABEL_27:
    CGPDFDocumentRelease(v4);
  }

  return v8;
}

- (id)_newPDFURLWithPath:(id)path isContentManaged:(BOOL)managed
{
  managedCopy = managed;
  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:path isDirectory:0];
  [v5 ui_setIsContentManaged:managedCopy];
  return v5;
}

- (id)_tempFilePath
{
  v9 = *MEMORY[0x277D85DE8];
  memset(out, 0, sizeof(out));
  uuid_generate_random(out);
  uuid_unparse(out, v7);
  v2 = MEMORY[0x277CCACA8];
  v3 = NSTemporaryDirectory();
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
  v5 = [v2 stringWithFormat:@"%@/%@.pdf", v3, v4];

  return v5;
}

- (void)_updateRendererWithQuality:(int64_t)quality
{
  obj = [(UIPrintInteractionController *)self rendererToUse];
  objc_sync_enter(obj);
  self->_currentRenderingQuality = [obj currentRenderingQualityForRequestedRenderingQuality:quality];
  [obj setRequestedRenderingQuality:quality];
  objc_sync_exit(obj);
}

- (_NSRange)_fullPagesRange
{
  if ([(UIPrintInteractionController *)self _pageRendererAvailable])
  {
    pageCount = [(UIPrintInteractionController *)self pageCount];
  }

  else
  {
    printingItems = [(UIPrintInteractionController *)self printingItems];
    v5 = [printingItems count];

    if (!v5)
    {
      pageCount = 0;
      v7 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_6;
    }

    printingItems2 = [(UIPrintInteractionController *)self printingItems];
    pageCount = [printingItems2 count];
  }

  v7 = 0;
LABEL_6:
  v8 = pageCount;
  result.length = v8;
  result.location = v7;
  return result;
}

- (BOOL)_isPageCancelled:(id)cancelled
{
  cancelledCopy = cancelled;
  previewStates = [(UIPrintInteractionController *)self previewStates];
  objc_sync_enter(previewStates);
  previewStates2 = [(UIPrintInteractionController *)self previewStates];
  if ([previewStates2 containsObject:cancelledCopy])
  {
    cancelled = [cancelledCopy cancelled];
  }

  else
  {
    cancelled = 1;
  }

  objc_sync_exit(previewStates);
  return cancelled;
}

- (BOOL)_pageRendererAvailable
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  printPageRenderer = [(UIPrintInteractionController *)selfCopy printPageRenderer];
  if (printPageRenderer)
  {
    v4 = 1;
  }

  else
  {
    printFormatter = [(UIPrintInteractionController *)selfCopy printFormatter];
    v4 = printFormatter != 0;
  }

  objc_sync_exit(selfCopy);
  return v4;
}

- (CGRect)_mediaRect
{
  rendererToUse = [(UIPrintInteractionController *)self rendererToUse];
  v4 = rendererToUse;
  if (rendererToUse)
  {
    [rendererToUse paperRect];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    printInfo = [(UIPrintInteractionController *)self printInfo];
    if (printInfo)
    {
      printInfo2 = [(UIPrintInteractionController *)self printInfo];
      outputType = [printInfo2 outputType];
    }

    else
    {
      outputType = 1;
    }

    printPaper = [(UIPrintInteractionController *)self printPaper];
    if (printPaper)
    {
      [(UIPrintInteractionController *)self printPaper];
    }

    else
    {
      [UIPrintPaper _defaultPaperForOutputType:outputType];
    }
    v17 = ;

    [v17 paperSize];
    v10 = v18;
    [v17 paperSize];
    v12 = v19;
    v6 = 0.0;

    v8 = 0.0;
  }

  v20 = v6;
  v21 = v8;
  v22 = v10;
  v23 = v12;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (id)_printingItemPrintablePDFURL
{
  if ([(UIPrintInteractionController *)self _pageRendererAvailable])
  {
    v3 = 0;
    goto LABEL_16;
  }

  printingItems = [(UIPrintInteractionController *)self printingItems];
  if (![printingItems count])
  {
    v6 = 0;
    v3 = 0;
LABEL_14:

    goto LABEL_15;
  }

  printingItems2 = [(UIPrintInteractionController *)self printingItems];
  v6 = [printingItems2 objectAtIndexedSubscript:0];

  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      printingItems = v6;
      [printingItems ui_setIsContentManaged:{-[UIPrintInteractionController isContentManaged](self, "isContentManaged")}];
      if (!IsAssetURL(printingItems) && IsPDFURL(printingItems) && [(UIPrintInteractionController *)self _canPrintURL:printingItems])
      {
        v3 = printingItems;
      }

      else
      {
        v3 = 0;
      }

      v6 = printingItems;
      goto LABEL_14;
    }
  }

  v3 = 0;
LABEL_15:

LABEL_16:

  return v3;
}

- (void)_generatePDFWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = [handlerCopy copy];
  delegate = [(UIPrintInteractionController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate printInteractionControllerWillStartJob:self];
  }

  _printingItemPrintablePDFURL = [(UIPrintInteractionController *)self _printingItemPrintablePDFURL];
  v9 = _printingItemPrintablePDFURL;
  if (!handlerCopy || !_printingItemPrintablePDFURL)
  {
    goto LABEL_15;
  }

  [(UIPrintInteractionController *)self _printablePDFURLSize:_printingItemPrintablePDFURL];
  v11 = v10;
  v13 = v12;
  paper = [(UIPrintInteractionController *)self paper];
  [paper paperSize];
  if (v11 != v16 || v13 != v15)
  {
    goto LABEL_14;
  }

  _canShowAnnotations = [(UIPrintInteractionController *)self _canShowAnnotations];
  if (_canShowAnnotations)
  {
    activePrintInfo = [(UIPrintInteractionController *)self activePrintInfo];
    if (([activePrintInfo imagePDFAnnotations] & 1) == 0)
    {

LABEL_14:
      goto LABEL_15;
    }
  }

  pageCount = [(UIPrintInteractionController *)self pageCount];
  pageCountWithRanges = [(UIPrintInteractionController *)self pageCountWithRanges];
  if (_canShowAnnotations)
  {
  }

  if (pageCount == pageCountWithRanges)
  {
    [(UIPrintInteractionController *)self _updatePageCount];
    (*(handlerCopy + 2))(handlerCopy, v9, 0);
    goto LABEL_18;
  }

LABEL_15:
  [(UIPrintInteractionController *)self _cancelAllPreviewGeneration];
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy_;
  v33 = __Block_byref_object_dispose_;
  v34 = objc_alloc_init(UIPrintPreviewState);
  previewStates = [(UIPrintInteractionController *)self previewStates];

  if (!previewStates)
  {
    v21 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:2];
    [(UIPrintInteractionController *)self setPreviewStates:v21];
  }

  previewStates2 = [(UIPrintInteractionController *)self previewStates];
  objc_sync_enter(previewStates2);
  previewStates3 = [(UIPrintInteractionController *)self previewStates];
  [previewStates3 addObject:v30[5]];

  objc_sync_exit(previewStates2);
  objc_initWeak(&location, self);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __66__UIPrintInteractionController__generatePDFWithCompletionHandler___block_invoke;
  v24[3] = &unk_279A9C0E0;
  objc_copyWeak(&v27, &location);
  v26 = &v29;
  v25 = v6;
  [(UIPrintInteractionController *)self _cancelPreviewQueue:1 completionHandler:v24];

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v29, 8);

LABEL_18:
}

void __66__UIPrintInteractionController__generatePDFWithCompletionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if ([*(*(*(a1 + 40) + 8) + 40) cancelled])
    {
      v2 = *(a1 + 32);
      if (v2)
      {
        (*(v2 + 16))(v2, 0, 1);
      }
    }

    else
    {
      if ([WeakRetained _pageRendererAvailable])
      {
        [WeakRetained _updateRendererWithQuality:0];
      }

      [WeakRetained _updatePageCount];
      v3 = [WeakRetained _fullPagesRange];
      v5 = v4;
      if ([WeakRetained _pageRendererAvailable])
      {
        v6 = [WeakRetained rendererToUse];
        [v6 prepareForDrawingPages:{v3, v5}];
      }

      v7 = [WeakRetained drawPagesWithPreviewState:*(*(*(a1 + 40) + 8) + 40)];
      if ([*(*(*(a1 + 40) + 8) + 40) cancelled])
      {
        v8 = 0;
      }

      else
      {
        v8 = v7;
      }

      v9 = v8;
      v10 = *(a1 + 32);
      if (v10)
      {
        (*(v10 + 16))(v10, v9, [*(*(*(a1 + 40) + 8) + 40) cancelled]);
      }

      [WeakRetained setTempPreviewFileURL:v7];
    }

    v11 = [WeakRetained previewStates];
    if (v11)
    {
      v12 = *(*(*(a1 + 40) + 8) + 40);

      if (v12)
      {
        v13 = [WeakRetained previewStates];
        objc_sync_enter(v13);
        v14 = [WeakRetained previewStates];
        v15 = [v14 containsObject:*(*(*(a1 + 40) + 8) + 40)];

        if (v15)
        {
          v16 = [WeakRetained previewStates];
          [v16 removeObject:*(*(*(a1 + 40) + 8) + 40)];
        }

        objc_sync_exit(v13);
      }
    }
  }
}

- (int64_t)numberOfPages
{
  activePrintInfo = [(UIPrintInteractionController *)self activePrintInfo];
  pageCount = [activePrintInfo pageCount];

  return pageCount;
}

- (id)getPrintingItemForPageNum:(int64_t)num pdfItemPageNum:(int64_t *)pageNum
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  printingItems = [(UIPrintInteractionController *)self printingItems];
  v8 = [printingItems countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    pageNumCopy = pageNum;
    v10 = 0;
    v11 = 0;
    v12 = *v22;
    do
    {
      v13 = 0;
      v14 = v10;
      v15 = v11;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(printingItems);
        }

        v10 = *(*(&v21 + 1) + 8 * v13);

        v16 = [(UIPrintInteractionController *)self convertedPrintableItem:v10];
        v17 = v16;
        if (v16 && (v18 = CFGetTypeID(v16), v18 == CGPDFDocumentGetTypeID()))
        {
          v11 = CGPDFDocumentGetNumberOfPages(v17) + v15;
          if (v11 >= num)
          {
            *pageNumCopy = num - v15;
            goto LABEL_15;
          }
        }

        else
        {
          v11 = v15 + 1;
          if (v15 + 1 == num)
          {
            goto LABEL_15;
          }
        }

        ++v13;
        v14 = v10;
        v15 = v11;
      }

      while (v9 != v13);
      v9 = [printingItems countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
    v17 = v10;
    v10 = 0;
LABEL_15:
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (CGSize)paperSizeForPageNum:(int64_t)num
{
  rendererToUse = [(UIPrintInteractionController *)self rendererToUse];
  v6 = rendererToUse;
  if (!rendererToUse)
  {
    width = *MEMORY[0x277CBF3A8];
    v10 = *(MEMORY[0x277CBF3A8] + 8);
    pageNumber = num;
    v11 = [(UIPrintInteractionController *)self getPrintingItemForPageNum:num pdfItemPageNum:&pageNumber];
    v12 = [(UIPrintInteractionController *)self convertedPrintableItem:v11];

    if (!v12)
    {
LABEL_38:

      goto LABEL_39;
    }

    printInfo = [(UIPrintInteractionController *)self printInfo];
    if (printInfo)
    {
      printInfo2 = [(UIPrintInteractionController *)self printInfo];
      outputType = [printInfo2 outputType];
    }

    else
    {
      outputType = 1;
    }

    printPaper = [(UIPrintInteractionController *)self printPaper];
    if (printPaper)
    {
      [(UIPrintInteractionController *)self printPaper];
    }

    else
    {
      [UIPrintPaper _defaultPaperForOutputType:outputType];
    }
    v17 = ;

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v27 = CFGetTypeID(v12);
      if (v27 == CGPDFDocumentGetTypeID())
      {
        Page = CGPDFDocumentGetPage(v12, pageNumber);
        BoxRect = CGPDFPageGetBoxRect(Page, kCGPDFCropBox);
        width = BoxRect.size.width;
        height = BoxRect.size.height;
        LODWORD(v30) = CGPDFPageGetRotationAngle(Page) % 360;
        v30 = v30 >= 0 ? v30 : v30 + 360;
        v31 = v30 == 90 || v30 == 270;
        v10 = v31 ? width : height;
        if (v31)
        {
          width = height;
        }
      }

      goto LABEL_31;
    }

    v18 = v12;
    if ([v18 CGImage])
    {
      [v18 size];
      width = v19;
      v10 = v20;
    }

    pkPaper = [v17 pkPaper];
    if ([pkPaper isRoll])
    {
      printingItems = [(UIPrintInteractionController *)self printingItems];
      v23 = [printingItems count];

      if (v23 < 2)
      {
LABEL_18:

LABEL_31:
        [v17 paperSize];
        v33 = v32;
        [v17 paperSize];
        if ((v33 <= v34 || width >= v10) && (([v17 paperSize], v36 = v35, objc_msgSend(v17, "paperSize"), v36 >= v37) || width <= v10))
        {
          [v17 paperSize];
          width = v40;
          [v17 paperSize];
          v10 = v41;
        }

        else
        {
          [v17 paperSize];
          width = v38;
          [v17 paperSize];
          v10 = v39;
        }

        goto LABEL_38;
      }

      printer = [(UIPrintInteractionController *)self printer];
      printInfo3 = [(UIPrintInteractionController *)self printInfo];
      pkPaper = +[UIPrintPaper _readyPaperListForPrinter:withDuplexMode:forContentType:contentSize:](UIPrintPaper, "_readyPaperListForPrinter:withDuplexMode:forContentType:contentSize:", printer, [printInfo3 duplex], outputType, width, v10);

      if (pkPaper)
      {
        v26 = [UIPrintPaper bestPaperForPageSize:pkPaper withPapersFromArray:width, v10];

        v17 = v26;
      }
    }

    goto LABEL_18;
  }

  [rendererToUse paperRect];
  width = v7;
  v10 = v9;
LABEL_39:

  v42 = width;
  v43 = v10;
  result.height = v43;
  result.width = v42;
  return result;
}

- (void)drawImageForPageNum:(int64_t)num toContext:(CGContext *)context sheetSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  delegate = [(UIPrintInteractionController *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    delegate2 = [(UIPrintInteractionController *)self delegate];
    [delegate2 printInteractionControllerWillStartJob:self];
  }

  rendererToUse = [(UIPrintInteractionController *)self rendererToUse];
  if (rendererToUse)
  {
    renderThumbnailMutex = [(UIPrintInteractionController *)self renderThumbnailMutex];

    if (!renderThumbnailMutex)
    {
      v15 = objc_alloc_init(MEMORY[0x277D82BB8]);
      [(UIPrintInteractionController *)self setRenderThumbnailMutex:v15];
    }

    renderThumbnailMutex2 = [(UIPrintInteractionController *)self renderThumbnailMutex];
    objc_sync_enter(renderThumbnailMutex2);
    CGContextSaveGState(context);
    [(UIPrintInteractionController *)self paperSizeForPageNum:num];
    memset(&v26, 0, sizeof(v26));
    CGAffineTransformMakeScale(&v26, height / v17, height / v17);
    transform = v26;
    CGContextConcatCTM(context, &transform);
    [(UIPrintInteractionController *)self _updateRendererWithQuality:1];
    [rendererToUse prepareForDrawingPages:{num - 1, 1}];
    [rendererToUse _startSaveContext:context];
    [rendererToUse _drawPage:num - 1 withScale:0 drawingToPDF:1.0];
    [rendererToUse _endSaveContext];
    CGContextRestoreGState(context);
    objc_sync_exit(renderThumbnailMutex2);
  }

  else
  {
    pageNumber = num;
    renderThumbnailMutex2 = [(UIPrintInteractionController *)self getPrintingItemForPageNum:num pdfItemPageNum:&pageNumber];
    v18 = [(UIPrintInteractionController *)self convertedPrintableItem:renderThumbnailMutex2];
    if (v18)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(UIPrintInteractionController *)self drawImage:v18 toContext:context sheetSize:width, height];
      }

      else
      {
        v19 = CFGetTypeID(v18);
        if (v19 == CGPDFDocumentGetTypeID())
        {
          CGContextSaveGState(context);
          memset(&v26, 0, sizeof(v26));
          CGContextGetBaseCTM();
          CGContextGetCTM(&transform, context);
          CGContextSetBaseCTM();
          Page = CGPDFDocumentGetPage(v18, pageNumber);
          if (Page)
          {
            v21 = Page;
            printPaper = [(UIPrintInteractionController *)self printPaper];
            activePrintInfo = [(UIPrintInteractionController *)self activePrintInfo];
            drawPDFPageToCGContext(v21, context, printPaper, [activePrintInfo imagePDFAnnotations], width, height);
          }

          transform = v26;
          CGContextSetBaseCTM();
          CGContextRestoreGState(context);
        }
      }
    }
  }
}

- (id)createWebKitPDFForAllPages
{
  webKitFormatterMutex = [(UIPrintInteractionController *)self webKitFormatterMutex];
  objc_sync_enter(webKitFormatterMutex);
  [(UIPrintInteractionController *)self _updateRendererWithQuality:0];
  delegate = [(UIPrintInteractionController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(UIPrintInteractionController *)self delegate];
    [delegate2 printInteractionControllerWillStartJob:self];
  }

  [(UIPrintInteractionController *)self _updatePageCount];
  if ([(UIPrintInteractionController *)self pageCount]< 1)
  {
    v13 = 0;
  }

  else
  {
    rendererToUse = [(UIPrintInteractionController *)self rendererToUse];
    [rendererToUse paperRect];
    v9 = v8;
    v11 = v10;
    _tempFilePath = [(UIPrintInteractionController *)self _tempFilePath];
    v13 = [(UIPrintInteractionController *)self _newPDFURLWithPath:_tempFilePath isContentManaged:[(UIPrintInteractionController *)self isContentManaged]];

    if (v13)
    {
      v14 = [(UIPrintInteractionController *)self _newSaveContext:v13 withMediaRect:0.0, 0.0, v9, v11];
      [rendererToUse _startSaveContext:v14];
      _fullPagesRange = [(UIPrintInteractionController *)self _fullPagesRange];
      v17 = v16;
      if (_fullPagesRange < _fullPagesRange + v16)
      {
        do
        {
          currentThread = [MEMORY[0x277CCACC8] currentThread];
          isCancelled = [currentThread isCancelled];

          if (isCancelled)
          {
            break;
          }

          [rendererToUse _drawPage:_fullPagesRange++ withScale:1 drawingToPDF:1.0];
          --v17;
        }

        while (v17);
      }

      [rendererToUse _endSaveContext];
      CGPDFContextClose(v14);
      CGContextRelease(v14);
    }
  }

  objc_sync_exit(webKitFormatterMutex);

  return v13;
}

- (void)recalculateWebKitPageCount
{
  obj = [(UIPrintInteractionController *)self webKitFormatterMutex];
  objc_sync_enter(obj);
  [(UIPrintInteractionController *)self _updatePageCount];
  objc_sync_exit(obj);
}

- (id)drawPagesWithPreviewState:(id)state
{
  v51 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  rendererToUse = [(UIPrintInteractionController *)self rendererToUse];
  v6 = rendererToUse;
  if (rendererToUse)
  {
    numberOfPages = [rendererToUse numberOfPages];
  }

  else
  {
    printingItems = [(UIPrintInteractionController *)self printingItems];
    numberOfPages = [printingItems count];
  }

  _tempFilePath = [(UIPrintInteractionController *)self _tempFilePath];
  v10 = [(UIPrintInteractionController *)self _newPDFURLWithPath:_tempFilePath isContentManaged:[(UIPrintInteractionController *)self isContentManaged]];

  v44 = v10;
  if (v6)
  {
    printPaper = [(UIPrintInteractionController *)self printPaper];
    [printPaper scalingFactor];
    v13 = v12;

    printPaper2 = [(UIPrintInteractionController *)self printPaper];
    [printPaper2 paperSize];
    v16 = v15;
    v18 = v17;

    [(UIPrintInteractionController *)self _mediaRect];
    if (v16 == v21 && v18 == v22)
    {
      v22 = v13 * v18;
      v21 = v13 * v16;
      v19 = 0.0;
      v20 = 0.0;
    }

    context = [(UIPrintInteractionController *)self _newSaveContext:v10 withMediaRect:v19, v20, v21, v22];
    obj = [(UIPrintInteractionController *)self webKitFormatterMutex];
    objc_sync_enter(obj);
    [v6 _startSaveContext:context];
    activePrintInfo = [(UIPrintInteractionController *)self activePrintInfo];
    pageRanges = [activePrintInfo pageRanges];

    v41 = pageRanges;
    if ([pageRanges count])
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v25 = pageRanges;
      v26 = [v25 countByEnumeratingWithState:&v46 objects:v50 count:16];
      if (v26)
      {
        v27 = *v47;
LABEL_10:
        v28 = 0;
        while (1)
        {
          if (*v47 != v27)
          {
            objc_enumerationMutation(v25);
          }

          v29 = *(*(&v46 + 1) + 8 * v28);
          rangeValue = [v29 rangeValue];
          do
          {
            rangeValue2 = [v29 rangeValue];
            [v29 rangeValue];
            if (rangeValue >= v32 + rangeValue2)
            {
              break;
            }

            [v6 _drawPage:rangeValue withScale:1 drawingToPDF:v13];
            if (![(UIPrintInteractionController *)self printStateActive])
            {
              break;
            }

            ++rangeValue;
          }

          while (![(UIPrintInteractionController *)self _isPageCancelled:stateCopy]);
          if (![(UIPrintInteractionController *)self printStateActive]|| [(UIPrintInteractionController *)self _isPageCancelled:stateCopy])
          {
            break;
          }

          if (++v28 == v26)
          {
            v26 = [v25 countByEnumeratingWithState:&v46 objects:v50 count:16];
            if (v26)
            {
              goto LABEL_10;
            }

            break;
          }
        }
      }
    }

    else if (numberOfPages)
    {
      for (i = 0; i != numberOfPages; ++i)
      {
        if (![(UIPrintInteractionController *)self printStateActive])
        {
          break;
        }

        if ([(UIPrintInteractionController *)self _isPageCancelled:stateCopy])
        {
          break;
        }

        [v6 _drawPage:i withScale:1 drawingToPDF:v13];
      }
    }

    [v6 _endSaveContext];

    objc_sync_exit(obj);
  }

  else
  {
    [(UIPrintInteractionController *)self _mediaRect];
    context = [(UIPrintInteractionController *)self _newSaveContext:v10 withMediaRect:?];
    if (numberOfPages)
    {
      v34 = 0;
      while ([(UIPrintInteractionController *)self printStateActive]&& ![(UIPrintInteractionController *)self _isPageCancelled:stateCopy])
      {
        printingItems2 = [(UIPrintInteractionController *)self printingItems];
        v36 = [printingItems2 count];

        if (v34 < v36)
        {
          printingItems3 = [(UIPrintInteractionController *)self printingItems];
          v38 = [printingItems3 objectAtIndex:v34];

          printingItems4 = [(UIPrintInteractionController *)self printingItems];
          -[UIPrintInteractionController _drawPrintItem:toContext:printAllPages:](self, "_drawPrintItem:toContext:printAllPages:", v38, context, [printingItems4 count] > 1);

          if (![(UIPrintInteractionController *)self printStateActive]|| [(UIPrintInteractionController *)self _isPageCancelled:stateCopy])
          {

            break;
          }
        }

        if (numberOfPages == ++v34)
        {
          break;
        }
      }
    }
  }

  if (context)
  {
    CGPDFContextClose(context);
    CGContextRelease(context);
  }

  return v44;
}

- (void)drawImage:(id)image toContext:(CGContext *)context sheetSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  imageCopy = image;
  cIImage = [imageCopy CIImage];

  if (cIImage)
  {
    v9 = ConvertCIBasedImage(imageCopy);

    v10 = v9;
  }

  else
  {
    v10 = imageCopy;
  }

  v47 = v10;
  v11 = v10;
  cGImage = [v47 CGImage];
  v13 = v47;
  if (cGImage)
  {
    imageOrientation = [v47 imageOrientation];
    if (imageOrientation > 7)
    {
      v15 = 1;
    }

    else
    {
      v15 = drawImage_toContext_sheetSize___UIImageOrientationToEXIFOrientationMapping[imageOrientation];
    }

    printPaper = [(UIPrintInteractionController *)self printPaper];
    [printPaper paperSize];
    v18 = v17;
    v20 = v19;

    printPaper2 = [(UIPrintInteractionController *)self printPaper];
    [printPaper2 printableRect];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v30 = v18 - (v23 + v27);
    v31 = v20 - (v25 + v29);
    if ((v18 <= v20 || width >= v45) && (v18 >= v20 || width <= v45))
    {
      v32 = v25;
      v33 = v31;
      v31 = v30;
      v25 = v23;
      v34 = v20;
      v20 = v18;
    }

    else
    {
      v32 = v23;
      v33 = v18 - (v23 + v27);
      v34 = v18;
    }

    [v47 size];
    v36 = v35;
    [v47 size];
    if (v36 >= v37 + v37)
    {
      v41 = 0;
    }

    else
    {
      [v47 size];
      v39 = v38;
      [v47 size];
      v41 = v39 < v40 + v40;
    }

    v42 = v25 == 0.0;
    if (v31 != 0.0)
    {
      v42 = 0;
    }

    if (v33 != 0.0)
    {
      v42 = 0;
    }

    if (v32 != 0.0)
    {
      v42 = 0;
    }

    v43 = width / v20;
    if (width / v20 >= v45 / v34)
    {
      v43 = v45 / v34;
    }

    drawCGImageToCGContext(cGImage, context, v15, v42 && v41, 0, width, v45, v25 * v43, v32 * v43, width - v31 * v43 - v25 * v43, v45 - v32 * v43 - v33 * v43);
    v13 = v47;
  }
}

- (void)_generatePrintPreview:(id)preview
{
  previewCopy = preview;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__UIPrintInteractionController__generatePrintPreview___block_invoke;
  v6[3] = &unk_279A9C108;
  v7 = previewCopy;
  v5 = previewCopy;
  [(UIPrintInteractionController *)self _generatePDFWithCompletionHandler:v6];
}

uint64_t __54__UIPrintInteractionController__generatePrintPreview___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    result = *(result + 32);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

- (id)convertedPrintableItem:(id)item
{
  itemCopy = item;
  convertedPrintableItems = [(UIPrintInteractionController *)self convertedPrintableItems];
  v6 = [convertedPrintableItems objectForKey:itemCopy];

  return v6;
}

- (id)_convertItemToPrintableItem:(id)item
{
  itemCopy = item;
  if (!itemCopy)
  {
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = objc_opt_isKindOfClass() & 1;
  }

  getPHAssetClass();
  if (!(v5 | objc_opt_isKindOfClass() & 1))
  {
    goto LABEL_11;
  }

  convertedPrintableItems = [(UIPrintInteractionController *)self convertedPrintableItems];

  if (!convertedPrintableItems)
  {
    v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
    [(UIPrintInteractionController *)self setConvertedPrintableItems:v10];

LABEL_13:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = itemCopy;
      if (IsAssetURL(v11))
      {
        v12 = GetPHAssetForAssetURLSync(v11);

        if (!v12)
        {
          goto LABEL_38;
        }

        goto LABEL_27;
      }

      v25 = 0;
      v14 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v11 options:1 error:&v25];
      v15 = v25;
      v16 = v15;
      if (!v14)
      {
        NSLog(&cfstr_SFailedToLoadD.isa, "[UIPrintInteractionController _convertItemToPrintableItem:]", v11, v15);

        v12 = 0;
        goto LABEL_39;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = itemCopy;
        v12 = 0;
LABEL_31:
        cIImage = [v13 CIImage];

        if (cIImage)
        {
          v20 = ConvertCIBasedImage(v13);

          v13 = v20;
        }

        if (![v13 CGImage])
        {
          goto LABEL_35;
        }

        v13 = v13;
        v14 = 0;
        v8 = v13;
LABEL_41:
        convertedPrintableItems2 = [(UIPrintInteractionController *)self convertedPrintableItems];
        v22 = convertedPrintableItems2;
        if (v8)
        {
          [convertedPrintableItems2 setObject:v8 forKey:itemCopy];
        }

        else
        {
          null = [MEMORY[0x277CBEB68] null];
          [v22 setObject:null forKey:itemCopy];
        }

        goto LABEL_45;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        getPHAssetClass();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v12 = 0;
LABEL_38:
          v14 = 0;
          goto LABEL_39;
        }

        v12 = itemCopy;
LABEL_27:
        v13 = GetImageForPHAssetSync(v12);
        if (!v13)
        {
          goto LABEL_35;
        }

        goto LABEL_31;
      }

      v14 = itemCopy;
    }

    v17 = [UIPrintInteractionController createCGPDFDocumentRefWithNSData:v14];
    if (v17)
    {
      v8 = v17;
      v12 = 0;
      v13 = 0;
      goto LABEL_41;
    }

    v18 = CGImageSourceCreateWithData(v14, 0);
    v12 = v18;
    if (v18)
    {
      v13 = ImageFromImageSource(v18);

      CFRelease(v12);
      v12 = 0;
      if (!v13)
      {
LABEL_35:
        v14 = 0;
LABEL_40:
        v8 = 0;
        goto LABEL_41;
      }

      goto LABEL_31;
    }

LABEL_39:
    v13 = 0;
    goto LABEL_40;
  }

  convertedPrintableItems3 = [(UIPrintInteractionController *)self convertedPrintableItems];
  v8 = [convertedPrintableItems3 objectForKey:itemCopy];

  if (!v8)
  {
    goto LABEL_13;
  }

  null2 = [MEMORY[0x277CBEB68] null];

  if (v8 != null2)
  {
    goto LABEL_45;
  }

LABEL_11:
  v8 = 0;
LABEL_45:

  return v8;
}

- (void)_drawPrintItem:(id)item toContext:(CGContext *)context printAllPages:(BOOL)pages
{
  pagesCopy = pages;
  v8 = [(UIPrintInteractionController *)self convertedPrintableItem:item];
  v9 = v8;
  if (v8)
  {
    v10 = CFGetTypeID(v8);
    if (v10 == CGPDFDocumentGetTypeID())
    {
      [(UIPrintInteractionController *)self _addPDFWithCGPDFDocumentRef:v9 toContext:context addAllPages:pagesCopy];
      goto LABEL_27;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_27;
    }

    v11 = v9;
    cIImage = [v11 CIImage];

    if (cIImage)
    {
      v13 = ConvertCIBasedImage(v11);

      v11 = v13;
    }

    if (![v11 CGImage])
    {
LABEL_26:

      goto LABEL_27;
    }

    [v11 size];
    v15 = v14;
    v17 = v16;
    printInfo = [(UIPrintInteractionController *)self printInfo];
    if (printInfo)
    {
      printInfo2 = [(UIPrintInteractionController *)self printInfo];
      outputType = [printInfo2 outputType];
    }

    else
    {
      outputType = 1;
    }

    printPaper = [(UIPrintInteractionController *)self printPaper];
    if (printPaper)
    {
      [(UIPrintInteractionController *)self printPaper];
    }

    else
    {
      [UIPrintPaper _defaultPaperForOutputType:outputType];
    }
    v22 = ;

    pkPaper = [v22 pkPaper];
    if ([pkPaper isRoll])
    {
      printingItems = [(UIPrintInteractionController *)self printingItems];
      v25 = [printingItems count];

      if (v25 < 2)
      {
LABEL_19:
        [v22 paperSize];
        v30 = v29;
        [v22 paperSize];
        if ((v30 <= v31 || v15 >= v17) && (([v22 paperSize], v33 = v32, objc_msgSend(v22, "paperSize"), v33 >= v34) || v15 <= v17))
        {
          [v22 paperSize];
          v37 = v36;
          [v22 paperSize];
          v41[0] = 0;
          v41[1] = 0;
          v41[2] = v37;
          v41[3] = v38;
          v39 = MEMORY[0x277CBEAC0];
          v40 = [MEMORY[0x277CBEA90] dataWithBytes:v41 length:32];
          v35 = [v39 dictionaryWithObject:v40 forKey:*MEMORY[0x277CBF5A8]];
        }

        else
        {
          [v22 paperSize];
          v35 = 0;
        }

        CGPDFContextBeginPage(context, v35);
        CGContextSaveGState(context);
        [v11 imageOrientation];
        [v22 printableRect];
        PKDrawImageToSheet();
        CGContextRestoreGState(context);
        CGPDFContextEndPage(context);

        goto LABEL_26;
      }

      printer = [(UIPrintInteractionController *)self printer];
      printInfo3 = [(UIPrintInteractionController *)self printInfo];
      pkPaper = +[UIPrintPaper _readyPaperListForPrinter:withDuplexMode:forContentType:contentSize:](UIPrintPaper, "_readyPaperListForPrinter:withDuplexMode:forContentType:contentSize:", printer, [printInfo3 duplex], outputType, v15, v17);

      if (pkPaper)
      {
        v28 = [UIPrintPaper bestPaperForPageSize:pkPaper withPapersFromArray:v15, v17];

        v22 = v28;
      }
    }

    goto LABEL_19;
  }

LABEL_27:
}

- (void)_addPDFWithCGPDFDocumentRef:(CGPDFDocument *)ref toContext:(CGContext *)context addAllPages:(BOOL)pages
{
  v56[1] = *MEMORY[0x277D85DE8];
  if (!ref || !context)
  {
    return;
  }

  NumberOfPages = CGPDFDocumentGetNumberOfPages(ref);
  if (!pages)
  {
    activePrintInfo = [(UIPrintInteractionController *)self activePrintInfo];
    pageRanges = [activePrintInfo pageRanges];
    if (pageRanges)
    {
      v12 = pageRanges;
      activePrintInfo2 = [(UIPrintInteractionController *)self activePrintInfo];
      pageRanges2 = [activePrintInfo2 pageRanges];

LABEL_7:
      goto LABEL_8;
    }
  }

  v15 = [MEMORY[0x277CCAE60] valueWithRange:{0, NumberOfPages}];
  v56[0] = v15;
  pageRanges2 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:1];

  if (!pages)
  {
    goto LABEL_7;
  }

LABEL_8:
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = pageRanges2;
  v46 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
  if (v46)
  {
    v45 = *v52;
    v16 = *MEMORY[0x277CBECE8];
    key = *MEMORY[0x277CBF5A8];
    v17 = *MEMORY[0x277CBF3A8];
    v18 = *(MEMORY[0x277CBF3A8] + 8);
    do
    {
      v19 = 0;
      do
      {
        if (*v52 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v47 = v19;
        v20 = *(*(&v51 + 1) + 8 * v19);
        rangeValue = [v20 rangeValue];
        while (1)
        {
          rangeValue2 = [v20 rangeValue];
          [v20 rangeValue];
          if (rangeValue >= v23 + rangeValue2)
          {
            break;
          }

          Page = CGPDFDocumentGetPage(ref, ++rangeValue);
          if (Page)
          {
            v25 = Page;
            BoxRect = CGPDFPageGetBoxRect(Page, kCGPDFCropBox);
            v26 = BoxRect.size.width / BoxRect.size.height;
            v27 = [(UIPrintInteractionController *)self activePrintInfo:BoxRect.origin.x];
            printPaper = [v27 printPaper];

            [printPaper paperSize];
            v30 = v29;
            [printPaper paperSize];
            v32 = v30 / v31;
            *bytes = 0u;
            v50 = 0u;
            v33 = v26 >= 1.0 || v32 <= 1.0;
            if (!v33 || (v26 > 1.0 ? (v34 = v32 < 1.0) : (v34 = 0), v34))
            {
              [printPaper paperSize];
              v36 = v39;
              [printPaper paperSize];
            }

            else
            {
              [printPaper paperSize];
              v36 = v35;
              [printPaper paperSize];
              v38 = v37;
            }

            memset(bytes, 0, sizeof(bytes));
            *&v50 = v36;
            *(&v50 + 1) = v38;
            Mutable = CFDictionaryCreateMutable(v16, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            v41 = CFDataCreate(v16, bytes, 32);
            CFDictionaryAddValue(Mutable, key, v41);
            CFRelease(v41);
            CGPDFContextBeginPage(context, Mutable);
            CFRelease(Mutable);
            CGContextSaveGState(context);
            CGContextSetAllowsAntialiasing(context, 1);
            CGContextSetShouldAntialias(context, 1);
            CGContextSetAllowsFontSmoothing(context, 0);
            CGContextSetShouldSmoothFonts(context, 0);
            whiteColor = [MEMORY[0x277D75348] whiteColor];
            [whiteColor CGColor];
            CGContextSetFontSmoothingBackgroundColor();

            CGContextSetAllowsFontSubpixelPositioning(context, 0);
            CGContextSetShouldSubpixelPositionFonts(context, 0);
            CGContextSetAllowsFontSubpixelQuantization(context, 0);
            CGContextSetShouldSubpixelQuantizeFonts(context, 0);
            CGContextSetTextGreekingThreshold();
            CGContextSetLineWidthThreshold();
            CGContextSetInterpolationQuality(context, kCGInterpolationHigh);
            activePrintInfo3 = [(UIPrintInteractionController *)self activePrintInfo];
            drawPDFPageToCGContext(v25, context, printPaper, [activePrintInfo3 imagePDFAnnotations], v17, v18);

            CGContextRestoreGState(context);
            CGPDFContextEndPage(context);
          }
        }

        v19 = v47 + 1;
      }

      while (v47 + 1 != v46);
      v46 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
    }

    while (v46);
  }
}

- (void)_cancelAllPreviewGeneration
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  previewStates = [(UIPrintInteractionController *)self previewStates];
  v3 = [previewStates copy];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) setCancelled:1];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_printPanelDidPresent
{
  delegate = [(UIPrintInteractionController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate printInteractionControllerDidPresentPrinterOptions:self];
  }
}

- (void)_printPanelWillDismissWithAction:(int64_t)action
{
  if ([(UIPrintInteractionController *)self printStateActive])
  {
    [(UIPrintInteractionController *)self _cancelAllPreviewGeneration];
    delegate = [(UIPrintInteractionController *)self delegate];
    if ((action & 0xFFFFFFFFFFFFFFFDLL) == 0)
    {
      [(UIPrintInteractionController *)self setPrinter:0];
      if ([(UIPrintInteractionController *)self _canPreviewContent]&& (objc_opt_respondsToSelector() & 1) != 0)
      {
        [delegate printInteractionControllerDidFinishJob:self];
      }

      [(UIPrintInteractionController *)self resetConvertedPrintableItems];
    }

    if (![(UIPrintInteractionController *)self supressNotifyDismissed]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      [delegate printInteractionControllerWillDismissPrinterOptions:self];
    }

    MEMORY[0x2821F9730]();
  }
}

- (void)_setPrinterInfoState:(int)state
{
  v3 = *&state;
  printingProgress = [(UIPrintInteractionController *)self printingProgress];

  if (printingProgress)
  {
    goto LABEL_7;
  }

  saveFileURL = [(UIPrintInteractionController *)self saveFileURL];

  if (saveFileURL)
  {
    if (![(UIPrintInteractionController *)self showPrintingProgress])
    {
      goto LABEL_7;
    }

    v7 = [UIPrintingProgress alloc];
    hostingWindowScene = [(UIPrintInteractionController *)self hostingWindowScene];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __53__UIPrintInteractionController__setPrinterInfoState___block_invoke_2;
    v15[3] = &unk_279A9BEE0;
    v15[4] = self;
    displayName = [(UIPrintingProgress *)v7 initPDFCreationWithHostingWindowScene:hostingWindowScene cancelHandler:v15];
    [(UIPrintInteractionController *)self setPrintingProgress:displayName];
  }

  else
  {
    v10 = [UIPrintingProgress alloc];
    hostingWindowScene = [(UIPrintInteractionController *)self printer];
    displayName = [hostingWindowScene displayName];
    printPanelViewController = [(UIPrintInteractionController *)self printPanelViewController];
    hostingWindowScene2 = [(UIPrintInteractionController *)self hostingWindowScene];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __53__UIPrintInteractionController__setPrinterInfoState___block_invoke;
    v16[3] = &unk_279A9BEE0;
    v16[4] = self;
    v13 = [(UIPrintingProgress *)v10 initWithPrinterName:displayName forceDisplayAsAlert:printPanelViewController == 0 hostingWindowScene:hostingWindowScene2 cancelHandler:v16];
    [(UIPrintInteractionController *)self setPrintingProgress:v13];
  }

LABEL_7:
  if (v3 == 1)
  {
    [(UIPrintInteractionController *)self _startPrinting];
  }

  else
  {
    printingProgress2 = [(UIPrintInteractionController *)self printingProgress];
    [printingProgress2 setPrinterInfoState:v3];
  }
}

- (void)_printPanelDidDismissWithAction:(int64_t)action
{
  if ([(UIPrintInteractionController *)self printStateActive])
  {
    [(UIPrintInteractionController *)self setPrintPanelViewController:0];
    [(UIPrintInteractionController *)self setTempPreviewFileURL:0];
    delegate = [(UIPrintInteractionController *)self delegate];
    if (![(UIPrintInteractionController *)self supressNotifyDismissed]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      [delegate printInteractionControllerDidDismissPrinterOptions:self];
    }

    printer = [(UIPrintInteractionController *)self printer];

    if (action == 1 && printer)
    {
      printer2 = [(UIPrintInteractionController *)self printer];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __64__UIPrintInteractionController__printPanelDidDismissWithAction___block_invoke;
      v8[3] = &unk_279A9C090;
      v8[4] = self;
      [(UIPrintInteractionController *)self _setPrinterInfoState:_UIPrinterInfoGetState(printer2, v8)];
    }

    else
    {
      [(UIPrintInteractionController *)self _endPrintJobWithAction:action error:0];
    }
  }
}

- (double)printInteractionController:(id)controller cutLengthForPaper:(id)paper
{
  paperCopy = paper;
  NSLog(&cfstr_S.isa, "[UIPrintInteractionController printInteractionController:cutLengthForPaper:]");
  v6 = [paperCopy description];
  [paperCopy paperSize];
  v8 = v7;
  [paperCopy printableRect];
  NSLog(&cfstr_PageheightFPri.isa, v6, v8, v9);

  paper = [(UIPrintInteractionController *)self paper];
  [paper paperSize];
  v38 = v11;
  v39 = v12;
  v14 = *MEMORY[0x277CBF348];
  v13 = *(MEMORY[0x277CBF348] + 8);

  [paperCopy printableRect];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [paperCopy paperSize];
  v24 = v23;
  v26 = v25;
  v40.origin.x = v16;
  v40.origin.y = v18;
  v40.size.width = v20;
  v40.size.height = v22;
  v27 = v26 - CGRectGetMaxY(v40);
  v41.origin.x = v16;
  v41.origin.y = v18;
  v41.size.width = v20;
  v41.size.height = v22;
  v28 = v14 + v16;
  v29 = v13 + v18;
  v30 = v38 - (v16 + v24 - CGRectGetMaxX(v41));
  v31 = v39 - (v18 + v27);
  v42.origin.x = v28;
  v42.origin.y = v29;
  v42.size.width = v30;
  v42.size.height = v31;
  MinY = CGRectGetMinY(v42);
  [paperCopy paperSize];
  v34 = v33;

  v43.origin.x = v28;
  v43.origin.y = v29;
  v43.size.width = v30;
  v43.size.height = v31;
  v35 = v34 - CGRectGetMaxY(v43);
  v44.origin.x = v28;
  v44.origin.y = v29;
  v44.size.width = v30;
  v44.size.height = v31;
  v36 = v35 + MinY + CGRectGetHeight(v44);
  NSLog(&cfstr_ReturnPaperlen.isa, *&v36, v36 / 72.0);
  return v36;
}

- (id)printInteractionController:(id)controller choosePaper:(id)paper
{
  paperCopy = paper;
  paper = [(UIPrintInteractionController *)self paper];
  pkPaper = [paper pkPaper];

  if (pkPaper)
  {
    [pkPaper paperSize];
  }

  else
  {
    v9 = 792.0;
    v8 = 612.0;
  }

  v10 = [UIPrintPaper bestPaperForPageSize:paperCopy withPapersFromArray:v8, v9];

  return v10;
}

- (void)_updateCutterBehavior
{
  v36 = *MEMORY[0x277D85DE8];
  delegate = [(UIPrintInteractionController *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [&unk_2871BC1E8 count];
    if (v4 != [&unk_2871BC200 count])
    {
      [UIPrintInteractionController _updateCutterBehavior];
    }

    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&unk_2871BC200 forKeys:&unk_2871BC1E8];
    printer = [(UIPrintInteractionController *)self printer];
    if ([printer hasPrintInfoSupported])
    {
      printer2 = [(UIPrintInteractionController *)self printer];
      printInfoSupported = [printer2 printInfoSupported];
      v9 = *MEMORY[0x277D41128];
      v10 = [printInfoSupported objectForKey:*MEMORY[0x277D41128]];

      if (v10 && [v10 count])
      {
        array = [MEMORY[0x277CBEB18] array];
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v10 = v10;
        v12 = [v10 countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v32;
          do
          {
            v15 = 0;
            do
            {
              if (*v32 != v14)
              {
                objc_enumerationMutation(v10);
              }

              v16 = [v5 objectForKeyedSubscript:*(*(&v31 + 1) + 8 * v15)];
              if ([v16 BOOLValue])
              {
                [array addObject:v16];
              }

              ++v15;
            }

            while (v13 != v15);
            v13 = [v10 countByEnumeratingWithState:&v31 objects:v35 count:16];
          }

          while (v13);
        }

        printSettings = [(UIPrintInteractionController *)self printSettings];
        v18 = [printSettings objectForKey:v9];

        if ([v18 count])
        {
          [array removeObject:&unk_2871BC188];
        }

        v19 = [MEMORY[0x277CBEA60] arrayWithArray:array];
        if ([v19 count])
        {
          v30 = [delegate printInteractionController:self chooseCutterBehavior:v19];
          [MEMORY[0x277CCABB0] numberWithInteger:?];
          v20 = v9;
          v22 = v21 = v18;
          v23 = [v19 containsObject:v22];

          v18 = v21;
          if (v23)
          {
            v24 = v20;
            v25 = [MEMORY[0x277CCABB0] numberWithInteger:v30];
            v26 = [&unk_2871BC200 indexOfObject:v25];

            v27 = [&unk_2871BC1E8 objectAtIndexedSubscript:v26];
            v28 = [v18 arrayByAddingObject:v27];
            printSettings2 = [(UIPrintInteractionController *)self printSettings];
            [printSettings2 setObject:v28 forKey:v24];
          }
        }
      }
    }

    else
    {

      v10 = 0;
    }
  }
}

- (void)_preparePrintInfo
{
  activePrintInfo = [(UIPrintInteractionController *)self activePrintInfo];
  printer = [(UIPrintInteractionController *)self printer];
  [activePrintInfo _updateWithPrinter:printer];

  activePrintInfo2 = [(UIPrintInteractionController *)self activePrintInfo];
  if ([activePrintInfo2 staple])
  {
  }

  else
  {
    activePrintInfo3 = [(UIPrintInteractionController *)self activePrintInfo];
    punch = [activePrintInfo3 punch];

    if (!punch)
    {
      goto LABEL_14;
    }
  }

  printingItems = [(UIPrintInteractionController *)self printingItems];
  if ([printingItems count] == 1)
  {
    printingItems2 = [(UIPrintInteractionController *)self printingItems];
    v10 = [printingItems2 objectAtIndexedSubscript:0];

    width = *MEMORY[0x277CBF3A8];
    height = *(MEMORY[0x277CBF3A8] + 8);
    if (v10)
    {
      v13 = [(UIPrintInteractionController *)self convertedPrintableItem:v10];
      v14 = v13;
      if (v13)
      {
        v15 = CFGetTypeID(v13);
        if (v15 == CGPDFDocumentGetTypeID())
        {
          Page = CGPDFDocumentGetPage(v14, 1uLL);
          if (Page)
          {
            BoxRect = CGPDFPageGetBoxRect(Page, kCGPDFCropBox);
            width = BoxRect.size.width;
            height = BoxRect.size.height;
          }
        }
      }
    }
  }

  else
  {

    width = *MEMORY[0x277CBF3A8];
    height = *(MEMORY[0x277CBF3A8] + 8);
  }

  if (height < width)
  {
    activePrintInfo4 = [(UIPrintInteractionController *)self activePrintInfo];
    [activePrintInfo4 setOrientation:1];
  }

LABEL_14:
  activePrintInfo5 = [(UIPrintInteractionController *)self activePrintInfo];
  printerID = [activePrintInfo5 printerID];
  printInfo = [(UIPrintInteractionController *)self printInfo];
  [printInfo setPrinterID:printerID];

  activePrintInfo6 = [(UIPrintInteractionController *)self activePrintInfo];
  duplex = [activePrintInfo6 duplex];
  printInfo2 = [(UIPrintInteractionController *)self printInfo];
  [printInfo2 setDuplex:duplex];

  activePrintInfo7 = [(UIPrintInteractionController *)self activePrintInfo];
  printer2 = [(UIPrintInteractionController *)self printer];
  v26 = [activePrintInfo7 _createPrintSettingsForPrinter:printer2];
  [(UIPrintInteractionController *)self setPrintSettings:v26];

  _updatePrintPaper = [(UIPrintInteractionController *)self _updatePrintPaper];
  paper = [(UIPrintInteractionController *)self paper];
  pkPaper = [paper pkPaper];
  LODWORD(v26) = [pkPaper isRoll];

  if (v26)
  {
    [(UIPrintInteractionController *)self _updateCutterBehavior];
  }

  printPaper = [(UIPrintInteractionController *)self printPaper];
  pkPaper2 = [printPaper pkPaper];
  printSettings = [(UIPrintInteractionController *)self printSettings];
  [printSettings setPaper:pkPaper2];

  activePrintInfo8 = [(UIPrintInteractionController *)self activePrintInfo];
  duplex2 = [activePrintInfo8 duplex];

  v35 = MEMORY[0x277D410E8];
  v36 = MEMORY[0x277D410D8];
  if (duplex2 != 2)
  {
    v36 = MEMORY[0x277D410E0];
  }

  if (duplex2 != 1)
  {
    v35 = v36;
  }

  v52 = *v35;
  v37 = MEMORY[0x277D41090];
  printer3 = [(UIPrintInteractionController *)self printer];
  printSettings2 = [(UIPrintInteractionController *)self printSettings];
  paper2 = [printSettings2 paper];
  [paper2 paperSize];
  v42 = v41;
  v44 = v43;
  activePrintInfo9 = [(UIPrintInteractionController *)self activePrintInfo];
  [v37 addLastUsedPrinter:printer3 duplexMode:v52 lastUsedSize:(objc_msgSend(activePrintInfo9 forPhoto:{"outputType") & 0xFFFFFFFFFFFFFFFDLL) == 1, v42, v44}];

  v46 = MEMORY[0x277D41090];
  printer4 = [(UIPrintInteractionController *)self printer];
  printer5 = [(UIPrintInteractionController *)self printer];
  displayName = [printer5 displayName];
  printer6 = [(UIPrintInteractionController *)self printer];
  location = [printer6 location];
  [v46 addPrinterToiCloud:printer4 displayName:displayName location:location];
}

- (id)_paperForPDFItem:(id)item withDuplexMode:(int64_t)mode
{
  itemCopy = item;
  printer = [(UIPrintInteractionController *)self printer];

  if (!printer)
  {
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UIPrintInteractionController *)self _printablePDFURLSize:itemCopy];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = *MEMORY[0x277CBF3A8];
      v11 = *(MEMORY[0x277CBF3A8] + 8);
      goto LABEL_8;
    }

    [(UIPrintInteractionController *)self _printablePDFDataSize:itemCopy];
  }

  v10 = v8;
  v11 = v9;
LABEL_8:
  printer = 0;
  if (v10 > 0.0 && v11 > 0.0)
  {
    printer2 = [(UIPrintInteractionController *)self printer];
    activePrintInfo = [(UIPrintInteractionController *)self activePrintInfo];
    v14 = +[UIPrintPaper _readyPaperListForPrinter:withDuplexMode:forContentType:contentSize:](UIPrintPaper, "_readyPaperListForPrinter:withDuplexMode:forContentType:contentSize:", printer2, mode, [activePrintInfo outputType], v10, v11);

    if (v14)
    {
      printer = [UIPrintPaper bestPaperForPageSize:v14 withPapersFromArray:v10, v11];
    }

    else
    {
      printer = 0;
    }
  }

LABEL_14:

  return printer;
}

- (id)_paperForContentType:(int64_t)type
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = [UIPrintPaper _defaultPaperListForOutputType:type];
  printer = [(UIPrintInteractionController *)self printer];
  knowsReadyPaperList = [printer knowsReadyPaperList];

  if (knowsReadyPaperList)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * v11);
        printer2 = [(UIPrintInteractionController *)self printer];
        pkPaper = [v12 pkPaper];
        v15 = [printer2 isPaperReady:pkPaper];

        if (v15)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v9)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v16 = v12;

      if (v16)
      {
        goto LABEL_13;
      }
    }

    else
    {
LABEL_10:
    }
  }

  v16 = [v4 objectAtIndex:{0, v18}];
LABEL_13:

  return v16;
}

- (double)_getCutLengthFromDelegateForPaper:(id)paper
{
  paperCopy = paper;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  if (pthread_main_np() == 1)
  {
    delegate = [(UIPrintInteractionController *)self delegate];
    [delegate printInteractionController:self cutLengthForPaper:paperCopy];
    *(v13 + 3) = v6;
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__UIPrintInteractionController__getCutLengthFromDelegateForPaper___block_invoke;
    block[3] = &unk_279A9C130;
    v11 = &v12;
    block[4] = self;
    v10 = paperCopy;
    dispatch_sync(MEMORY[0x277D85CD0], block);
  }

  v7 = v13[3];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __66__UIPrintInteractionController__getCutLengthFromDelegateForPaper___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  [v3 printInteractionController:*(a1 + 32) cutLengthForPaper:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = v2;
}

- (id)_getChosenPaperFromDelegateForPaperList:(id)list
{
  listCopy = list;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  if (pthread_main_np() == 1)
  {
    delegate = [(UIPrintInteractionController *)self delegate];
    v6 = [delegate printInteractionController:self choosePaper:listCopy];
    v7 = v14[5];
    v14[5] = v6;
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__UIPrintInteractionController__getChosenPaperFromDelegateForPaperList___block_invoke;
    block[3] = &unk_279A9C130;
    v12 = &v13;
    block[4] = self;
    v11 = listCopy;
    dispatch_sync(MEMORY[0x277D85CD0], block);
  }

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __72__UIPrintInteractionController__getChosenPaperFromDelegateForPaperList___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) delegate];
  v2 = [v5 printInteractionController:*(a1 + 32) choosePaper:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_updatePrintPaper
{
  v122 = *MEMORY[0x277D85DE8];
  p_printPaper = &self->_printPaper;
  v4 = self->_printPaper;
  objc_sync_enter(v4);
  v5 = *p_printPaper;
  objc_sync_exit(v4);

  v6 = self->_paper;
  objc_sync_enter(v6);
  v7 = self->_paper;
  objc_sync_exit(v6);

  delegate = [(UIPrintInteractionController *)self delegate];
  printer = [(UIPrintInteractionController *)self printer];
  v109 = v7;
  v110 = delegate;
  if (printer)
  {
    v10 = printer;
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v107 = p_printPaper;
      printer2 = [(UIPrintInteractionController *)self printer];
      activePrintInfo = [(UIPrintInteractionController *)self activePrintInfo];
      duplex = [activePrintInfo duplex];
      activePrintInfo2 = [(UIPrintInteractionController *)self activePrintInfo];
      outputType = [activePrintInfo2 outputType];
      [(UIPrintInteractionController *)self _printItemContentSize];
      v17 = [UIPrintPaper _readyPaperListForPrinter:printer2 withDuplexMode:duplex forContentType:outputType contentSize:?];

      v18 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_0];
      v19 = [v17 filteredArrayUsingPredicate:v18];
      v20 = v19;
      if (v19 && [v19 count])
      {
        v106 = v18;
        if (objc_opt_respondsToSelector())
        {
          v118 = 0uLL;
          v119 = 0uLL;
          v116 = 0uLL;
          v117 = 0uLL;
          v21 = v20;
          v22 = [v21 countByEnumeratingWithState:&v116 objects:v121 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v117;
            do
            {
              for (i = 0; i != v23; ++i)
              {
                if (*v117 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                v26 = *(*(&v116 + 1) + 8 * i);
                pkPaper = [v26 pkPaper];
                [(UIPrintInteractionController *)self _getCutLengthFromDelegateForPaper:v26];
                v28 = [pkPaper cutToLength:?];
                [v26 _updatePKPaper:v28];
              }

              v23 = [v21 countByEnumeratingWithState:&v116 objects:v121 count:16];
            }

            while (v23);
          }
        }

        else
        {
          v114 = 0uLL;
          v115 = 0uLL;
          v112 = 0uLL;
          v113 = 0uLL;
          v43 = v20;
          v44 = [v43 countByEnumeratingWithState:&v112 objects:v120 count:16];
          if (v44)
          {
            v45 = v44;
            v46 = *v113;
            do
            {
              for (j = 0; j != v45; ++j)
              {
                if (*v113 != v46)
                {
                  objc_enumerationMutation(v43);
                }

                v48 = *(*(&v112 + 1) + 8 * j);
                pkPaper2 = [v48 pkPaper];
                [v48 paperSize];
                v50 = [pkPaper2 cutToLength:?];
                [v48 _updatePKPaper:v50];
              }

              v45 = [v43 countByEnumeratingWithState:&v112 objects:v120 count:16];
            }

            while (v45);
          }
        }

        v18 = v106;
      }

      printer3 = [(UIPrintInteractionController *)self _getChosenPaperFromDelegateForPaperList:v17];

      p_printPaper = v107;
      v7 = v109;
      delegate = v110;
      if (printer3)
      {
        goto LABEL_38;
      }

      goto LABEL_36;
    }
  }

  printer3 = [(UIPrintInteractionController *)self printer];
  if (!printer3)
  {
LABEL_25:
    if (printer3)
    {
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  v30 = objc_opt_respondsToSelector();

  if (v30)
  {
    v31 = delegate;
    if (v7)
    {
      v32 = [MEMORY[0x277CBEA60] arrayWithObject:v7];
    }

    else
    {
      printer4 = [(UIPrintInteractionController *)self printer];
      activePrintInfo3 = [(UIPrintInteractionController *)self activePrintInfo];
      duplex2 = [activePrintInfo3 duplex];
      activePrintInfo4 = [(UIPrintInteractionController *)self activePrintInfo];
      outputType2 = [activePrintInfo4 outputType];
      [(UIPrintInteractionController *)self _printItemContentSize];
      v32 = [UIPrintPaper _readyPaperListForPrinter:printer4 withDuplexMode:duplex2 forContentType:outputType2 contentSize:?];
    }

    v38 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_160];
    v39 = [v32 filteredArrayUsingPredicate:v38];
    v40 = v39;
    if (v39 && [v39 count])
    {
      printer3 = [v40 objectAtIndex:0];
      pkPaper3 = [(UIPrintPaper *)printer3 pkPaper];
      [(UIPrintInteractionController *)self _getCutLengthFromDelegateForPaper:printer3];
      v42 = [pkPaper3 cutToLength:?];
      [(UIPrintPaper *)printer3 _updatePKPaper:v42];
    }

    else
    {
      printer3 = 0;
    }

    delegate = v31;
    goto LABEL_25;
  }

  printer3 = 0;
LABEL_36:
  if (v7)
  {
    printer3 = v7;
    goto LABEL_42;
  }

LABEL_38:
  if (!printer3)
  {
    printingItems = [(UIPrintInteractionController *)self printingItems];
    v52 = [printingItems count];

    if (v52 != 1 || (-[UIPrintInteractionController printingItems](self, "printingItems"), v53 = objc_claimAutoreleasedReturnValue(), [v53 objectAtIndexedSubscript:0], v54 = objc_claimAutoreleasedReturnValue(), -[UIPrintInteractionController activePrintInfo](self, "activePrintInfo"), v55 = objc_claimAutoreleasedReturnValue(), -[UIPrintInteractionController _paperForPDFItem:withDuplexMode:](self, "_paperForPDFItem:withDuplexMode:", v54, objc_msgSend(v55, "duplex")), printer3 = objc_claimAutoreleasedReturnValue(), v55, v54, v53, !printer3))
    {
      activePrintInfo5 = [(UIPrintInteractionController *)self activePrintInfo];
      printer3 = -[UIPrintInteractionController _paperForContentType:](self, "_paperForContentType:", [activePrintInfo5 outputType]);
    }
  }

LABEL_42:
  printer5 = [(UIPrintInteractionController *)self printer];

  if (!printer5)
  {
    goto LABEL_68;
  }

  v111 = 0;
  pkPaper4 = [(UIPrintPaper *)printer3 pkPaper];
  [pkPaper4 imageableAreaRect];
  if (v62 == 0.0 && v59 == 0.0 && (v63 = v60, v64 = v61, [pkPaper4 paperSize], v65 == v63) && (objc_msgSend(pkPaper4, "paperSize"), v66 == v64))
  {
    v67 = 1;
  }

  else
  {
    activePrintInfo6 = [(UIPrintInteractionController *)self activePrintInfo];
    v67 = ([activePrintInfo6 outputType] & 0xFFFFFFFFFFFFFFFDLL) == 1;
  }

  printer6 = [(UIPrintInteractionController *)self printer];
  activePrintInfo7 = [(UIPrintInteractionController *)self activePrintInfo];
  duplex3 = [activePrintInfo7 duplex];
  if (duplex3 == 1)
  {
    v72 = MEMORY[0x277D410E8];
  }

  else
  {
    v72 = MEMORY[0x277D410D8];
    if (duplex3 != 2)
    {
      v72 = MEMORY[0x277D410E0];
    }
  }

  v73 = [printer6 matchedPaper:pkPaper4 preferBorderless:v67 withDuplexMode:*v72 didMatch:&v111];

  if (v111 != 1)
  {
LABEL_56:
    v108 = p_printPaper;
    printer7 = [(UIPrintInteractionController *)self printer];
    activePrintInfo8 = [(UIPrintInteractionController *)self activePrintInfo];
    duplex4 = [activePrintInfo8 duplex];
    activePrintInfo9 = [(UIPrintInteractionController *)self activePrintInfo];
    outputType3 = [activePrintInfo9 outputType];
    [(UIPrintInteractionController *)self _printItemContentSize];
    printer8 = [UIPrintPaper _readyPaperListForPrinter:printer7 withDuplexMode:duplex4 forContentType:outputType3 contentSize:?];

    [pkPaper4 paperSize];
    v83 = v82;
    [pkPaper4 paperSize];
    v85 = v84;
    activePrintInfo10 = [(UIPrintInteractionController *)self activePrintInfo];
    v87 = +[UIPrintPaper bestPaperForPageSize:andContentType:withPapersFromArray:](UIPrintPaper, "bestPaperForPageSize:andContentType:withPapersFromArray:", [activePrintInfo10 outputType], printer8, v83, v85);

    if (v87)
    {
      pkPaper5 = [v87 pkPaper];

      v73 = pkPaper5;
    }

    p_printPaper = v108;
    goto LABEL_59;
  }

  printer8 = [(UIPrintInteractionController *)self printer];
  if ([printer8 knowsReadyPaperList])
  {
    printer9 = [(UIPrintInteractionController *)self printer];
    v76 = [printer9 isPaperReady:v73];

    if (v76)
    {
      goto LABEL_60;
    }

    goto LABEL_56;
  }

LABEL_59:

LABEL_60:
  v7 = v109;
  delegate = v110;
  if ([v73 isRoll] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(UIPrintInteractionController *)self _getCutLengthFromDelegateForPaper:printer3];
    v90 = v89;
    minCutLength = [v73 minCutLength];
    if (v90 < minCutLength)
    {
      v90 = minCutLength;
    }

    maxCutLength = [v73 maxCutLength];
    if (v90 < maxCutLength)
    {
      maxCutLength = v90;
    }

    v93 = [v73 cutToLength:maxCutLength];

    v73 = v93;
  }

  [(UIPrintPaper *)printer3 _updatePKPaper:v73];

LABEL_68:
  activePrintInfo11 = [(UIPrintInteractionController *)self activePrintInfo];
  orientation = [activePrintInfo11 orientation];

  if (orientation == 1)
  {
    printer10 = [(UIPrintInteractionController *)self printer];
    hasPrintInfoSupported = [printer10 hasPrintInfoSupported];

    v98 = 1;
    if (hasPrintInfoSupported)
    {
      printer11 = [(UIPrintInteractionController *)self printer];
      printInfoSupported = [printer11 printInfoSupported];
      v101 = [printInfoSupported objectForKey:*MEMORY[0x277D411A0]];

      LODWORD(printer11) = [v101 containsObject:*MEMORY[0x277D411B8]];
      if (printer11)
      {
        v98 = 2;
      }

      else
      {
        v98 = 1;
      }
    }
  }

  else
  {
    v98 = 0;
  }

  [(UIPrintPaper *)printer3 setPaperOrientation:v98];
  activePrintInfo12 = [(UIPrintInteractionController *)self activePrintInfo];
  [activePrintInfo12 scalingFactor];
  [(UIPrintPaper *)printer3 setScalingFactor:?];

  v103 = self->_printPaper;
  objc_sync_enter(v103);
  if (printer3 != self->_printPaper)
  {
    objc_storeStrong(p_printPaper, printer3);
  }

  objc_sync_exit(v103);

  v104 = printer3;
  return printer3;
}

uint64_t __49__UIPrintInteractionController__updatePrintPaper__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 pkPaper];
  v3 = [v2 isRoll];

  return v3;
}

uint64_t __49__UIPrintInteractionController__updatePrintPaper__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 pkPaper];
  v3 = [v2 isRoll];

  return v3;
}

- (void)_startPrinting
{
  if (self->_backgroundTaskIdentifier == *MEMORY[0x277D767B0])
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __46__UIPrintInteractionController__startPrinting__block_invoke;
    v5[3] = &unk_279A9BEE0;
    v5[4] = self;
    self->_backgroundTaskIdentifier = [mEMORY[0x277D75128] _beginBackgroundTaskWithExpirationHandler:v5];
  }

  [(UIPrintInteractionController *)self _cancelAllPreviewGeneration];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__UIPrintInteractionController__startPrinting__block_invoke_2;
  v4[3] = &unk_279A9BEE0;
  v4[4] = self;
  [(UIPrintInteractionController *)self _cancelPreviewQueue:1 completionHandler:v4];
}

void __46__UIPrintInteractionController__startPrinting__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _preparePrintInfo];
  objc_storeStrong((*(a1 + 32) + 24), *(a1 + 32));
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 printInteractionControllerWillStartJob:*(a1 + 32)];
  }

  [*(a1 + 32) _updateRendererWithQuality:0];
  [*(a1 + 32) setNupFileURL:0];
  v3 = [*(a1 + 32) needRedrawWithNUp];
  v4 = *(a1 + 32);
  if (v3)
  {
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __46__UIPrintInteractionController__startPrinting__block_invoke_3;
    v50[3] = &unk_279A9C178;
    v50[4] = v4;
    [v4 _generatePDFWithNupForPrintingCompletion:v50];
    goto LABEL_21;
  }

  v5 = [v4 printingProgress];
  [v5 setPage:-2 ofPage:0];

  v6 = [*(a1 + 32) activePrintInfo];
  v7 = [v6 outputType] & 0xFFFFFFFFFFFFFFFDLL;

  if (v7 == 1)
  {
    v8 = [*(a1 + 32) printSettings];
    [v8 setObject:*MEMORY[0x277D41230] forKey:*MEMORY[0x277D41238]];
  }

  v9 = [*(a1 + 32) pageRanges];
  if (!v9 || (v10 = v9, [*(a1 + 32) pageRanges], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "count"), v11, v10, !v12))
  {
    [*(a1 + 32) _updatePageCount];
  }

  v13 = [*(a1 + 32) pageRanges];
  v14 = [v13 objectAtIndex:0];
  v15 = [v14 rangeValue];
  [*(a1 + 32) setCurrentRange:{v15, v16}];

  [*(a1 + 32) setCurrentPage:{objc_msgSend(*(a1 + 32), "currentRange")}];
  [*(a1 + 32) setPagesDrawn:0];
  v17 = [*(a1 + 32) printPageRenderer];

  v18 = *(a1 + 32);
  if (!v17)
  {
    v23 = [v18 printFormatter];

    if (!v23)
    {
      v30 = [*(a1 + 32) printingItems];
      v31 = [v30 count];

      v32 = *(a1 + 32);
      if (v31 == 1)
      {
        [v32 setCurrentPage:-1];
        v33 = [*(a1 + 32) printSettings];
        v34 = [*(a1 + 32) activePrintInfo];
        v35 = [v34 scaleUp];
        v36 = MEMORY[0x277D411F8];
        if (!v35)
        {
          v36 = MEMORY[0x277D411E8];
        }

        [v33 setObject:*v36 forKey:*MEMORY[0x277D411F0]];

        v37 = [*(a1 + 32) printSettings];
        [v37 removeObjectForKey:*MEMORY[0x277D411A0]];

        v19 = [*(a1 + 32) pageRanges];
        if (![v19 count])
        {
          goto LABEL_12;
        }

        v38 = [*(a1 + 32) pageRanges];
        v39 = [v38 firstObject];
        [v39 rangeValue];
        v41 = v40;
        v42 = [*(a1 + 32) pageCount];

        if (v41 != v42)
        {
          v19 = [*(a1 + 32) printSettings];
          v43 = [*(a1 + 32) pageRanges];
          [v19 setObject:v43 forKey:*MEMORY[0x277D411E0]];

          goto LABEL_12;
        }
      }

      else
      {
        v44 = [v32 printingItems];
        v45 = [v44 count];

        if (v45 >= 2)
        {
          v46 = [*(a1 + 32) printSettings];
          v47 = [*(a1 + 32) activePrintInfo];
          v48 = [v47 scaleUp];
          v49 = MEMORY[0x277D411F8];
          if (!v48)
          {
            v49 = MEMORY[0x277D411E8];
          }

          [v46 setObject:*v49 forKey:*MEMORY[0x277D411F0]];

          v19 = [*(a1 + 32) printSettings];
          [v19 removeObjectForKey:*MEMORY[0x277D411A0]];
          v22 = -1;
          goto LABEL_13;
        }
      }
    }

    v22 = 1;
    goto LABEL_16;
  }

  v19 = [v18 printPageRenderer];
  v20 = [*(a1 + 32) currentRange];
  [v19 prepareForDrawingPages:{v20, v21}];
LABEL_12:
  v22 = 1;
LABEL_13:

LABEL_16:
  v24 = [*(a1 + 32) printingProgress];
  v25 = [*(a1 + 32) pageCountWithRanges];
  v26 = *(a1 + 32);
  if (v25 < 1)
  {
    v27 = [v26 pageCount];
  }

  else
  {
    v27 = [v26 pageCountWithRanges];
  }

  [v24 setPage:v22 ofPage:v27];

  if (([*(a1 + 32) manualPrintPageEnabled] & 1) == 0)
  {
    v28 = *(a1 + 32);
    v29 = [v28 printingProgress];
    [v29 nextPrintDelay];
    [v28 _printPageWithDelay:?];
  }

LABEL_21:
}

uint64_t __46__UIPrintInteractionController__startPrinting__block_invoke_3(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    [*(result + 32) setNupFileURL:a2];
    v3 = *(v2 + 32);

    return [v3 _printPageWithDelay:0.0];
  }

  return result;
}

- (BOOL)_canPrintPDFData:(id)data
{
  dataCopy = data;
  activePrintInfo = [(UIPrintInteractionController *)self activePrintInfo];
  pdfPassword = [activePrintInfo pdfPassword];
  v7 = [UIPrintInteractionController isPrintablePDFData:dataCopy requireUnlocked:1 password:pdfPassword];

  return v7;
}

- (CGSize)_printablePDFDataSize:(id)size
{
  v4 = [UIPrintInteractionController createCGPDFDocumentRefWithNSData:size];
  if (!v4)
  {
    MaxCropSize = *MEMORY[0x277CBF3A8];
    v13 = *(MEMORY[0x277CBF3A8] + 8);
    goto LABEL_8;
  }

  v5 = v4;
  activePrintInfo = [(UIPrintInteractionController *)self activePrintInfo];
  pdfPassword = [activePrintInfo pdfPassword];
  if (!pdfPassword)
  {
    goto LABEL_5;
  }

  v8 = pdfPassword;
  IsEncrypted = CGPDFDocumentIsEncrypted(v5);

  if (IsEncrypted)
  {
    activePrintInfo = [(UIPrintInteractionController *)self activePrintInfo];
    pdfPassword2 = [activePrintInfo pdfPassword];
    CGPDFDocumentUnlockWithPassword(v5, [pdfPassword2 cStringUsingEncoding:4]);

LABEL_5:
  }

  MaxCropSize = GetMaxCropSize(v5);
  v13 = v12;
  CGPDFDocumentRelease(v5);
LABEL_8:
  v14 = MaxCropSize;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (BOOL)_canPrintURL:(id)l
{
  lCopy = l;
  printPageRenderer = [(UIPrintInteractionController *)self printPageRenderer];
  if (printPageRenderer)
  {
    v6 = 1;
  }

  else
  {
    v7 = [(UIPrintInteractionController *)self convertedPrintableItem:lCopy];
    v6 = v7 != 0;
  }

  return v6;
}

- (BOOL)_canShowPreview
{
  v25 = *MEMORY[0x277D85DE8];
  printingItems = [(UIPrintInteractionController *)self printingItems];
  v4 = [printingItems count];

  if (v4)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    printingItems2 = [(UIPrintInteractionController *)self printingItems];
    v6 = [printingItems2 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v21;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(printingItems2);
        }

        v10 = *(*(&v20 + 1) + 8 * v9);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && IsAssetURL(v10))
        {
          goto LABEL_27;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_27;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v10 isFileURL])
        {
          if ([UIPrintInteractionController isPrintablePDFURL:v10 requireUnlocked:0 password:0])
          {
            goto LABEL_27;
          }

          v11 = CGImageSourceCreateWithURL(v10, 0);
          if (v11)
          {
            CFRelease(v11);
            goto LABEL_27;
          }
        }

        if (v7 == ++v9)
        {
          v7 = [printingItems2 countByEnumeratingWithState:&v20 objects:v24 count:16];
          v12 = 0;
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_28;
        }
      }
    }

    goto LABEL_23;
  }

  if (dyld_program_sdk_at_least())
  {
    printingItems2 = [(UIPrintInteractionController *)self printPageRenderer];
    if (printingItems2)
    {
LABEL_27:
      v12 = 1;
      goto LABEL_28;
    }

    printFormatter = [(UIPrintInteractionController *)self printFormatter];
    v12 = printFormatter != 0;
  }

  else
  {
    printingItems2 = [(UIPrintInteractionController *)self printFormatter];
    if (!printingItems2)
    {
LABEL_23:
      v12 = 0;
      goto LABEL_28;
    }

    printFormatter2 = [(UIPrintInteractionController *)self printFormatter];
    if ([printFormatter2 isMemberOfClass:objc_opt_class()])
    {
      v12 = 1;
    }

    else
    {
      printFormatter3 = [(UIPrintInteractionController *)self printFormatter];
      if ([printFormatter3 isMemberOfClass:objc_opt_class()])
      {
        v12 = 1;
      }

      else
      {
        printFormatter4 = [(UIPrintInteractionController *)self printFormatter];
        if ([printFormatter4 isMemberOfClass:objc_opt_class()])
        {
          v12 = 1;
        }

        else
        {
          printFormatter5 = [(UIPrintInteractionController *)self printFormatter];
          if ([printFormatter5 isMemberOfClass:objc_opt_class()])
          {
            v12 = 1;
          }

          else
          {
            printFormatter6 = [(UIPrintInteractionController *)self printFormatter];
            v12 = [printFormatter6 isMemberOfClass:objc_opt_class()];
          }
        }
      }
    }
  }

LABEL_28:

  return v12;
}

- (BOOL)_canPreviewContent
{
  v24 = *MEMORY[0x277D85DE8];
  if (dyld_program_sdk_at_least())
  {
    printPageRenderer = [(UIPrintInteractionController *)self printPageRenderer];
    if (printPageRenderer)
    {
      v4 = 1;
      goto LABEL_20;
    }

    printFormatter = [(UIPrintInteractionController *)self printFormatter];
    v4 = printFormatter != 0;
  }

  else
  {
    printPageRenderer = [(UIPrintInteractionController *)self printFormatter];
    if (!printPageRenderer)
    {
      v4 = 0;
      goto LABEL_20;
    }

    printFormatter = [(UIPrintInteractionController *)self printFormatter];
    if ([printFormatter isMemberOfClass:objc_opt_class()])
    {
      v4 = 1;
    }

    else
    {
      printFormatter2 = [(UIPrintInteractionController *)self printFormatter];
      if ([printFormatter2 isMemberOfClass:objc_opt_class()])
      {
        v4 = 1;
      }

      else
      {
        printFormatter3 = [(UIPrintInteractionController *)self printFormatter];
        if ([printFormatter3 isMemberOfClass:objc_opt_class()])
        {
          v4 = 1;
        }

        else
        {
          printFormatter4 = [(UIPrintInteractionController *)self printFormatter];
          if ([printFormatter4 isMemberOfClass:objc_opt_class()])
          {
            v4 = 1;
          }

          else
          {
            printFormatter5 = [(UIPrintInteractionController *)self printFormatter];
            v4 = [printFormatter5 isMemberOfClass:objc_opt_class()];
          }
        }
      }
    }
  }

LABEL_20:
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  printingItems = [(UIPrintInteractionController *)self printingItems];
  v11 = [printingItems countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(printingItems);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && IsAssetURL(v15))
        {
          goto LABEL_34;
        }

        v16 = [(UIPrintInteractionController *)self convertedPrintableItem:v15];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 || v16 && (v17 = CFGetTypeID(v16), v17 == CGPDFDocumentGetTypeID()))
        {

LABEL_34:
          v4 = 1;
          goto LABEL_35;
        }
      }

      v12 = [printingItems countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_35:

  return v4;
}

- (CGSize)_printablePDFURLSize:(id)size
{
  v4 = [UIPrintInteractionController createCGPDFDocumentRefWithNSURL:size];
  if (v4)
  {
    v5 = v4;
    activePrintInfo = [(UIPrintInteractionController *)self activePrintInfo];
    pdfPassword = [activePrintInfo pdfPassword];
    if (pdfPassword)
    {
      v8 = pdfPassword;
      IsEncrypted = CGPDFDocumentIsEncrypted(v5);

      if (IsEncrypted)
      {
        activePrintInfo2 = [(UIPrintInteractionController *)self activePrintInfo];
        pdfPassword2 = [activePrintInfo2 pdfPassword];
        CGPDFDocumentUnlockWithPassword(v5, [pdfPassword2 cStringUsingEncoding:4]);

        [(UIPrintInteractionController *)self setPdfAllowsPrinting:CGPDFDocumentAllowsPrinting(v5)];
        [(UIPrintInteractionController *)self setPdfAllowsCopying:CGPDFDocumentAllowsCopying(v5)];
      }
    }

    else
    {
    }

    MaxCropSize = GetMaxCropSize(v5);
    v13 = v14;
    CGPDFDocumentRelease(v5);
  }

  else
  {
    MaxCropSize = *MEMORY[0x277CBF3A8];
    v13 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v15 = MaxCropSize;
  v16 = v13;
  result.height = v16;
  result.width = v15;
  return result;
}

- (void)_ensurePDFIsUnlockedFirstAttempt:(BOOL)attempt completionHandler:(id)handler
{
  attemptCopy = attempt;
  handlerCopy = handler;
  printingItems = [(UIPrintInteractionController *)self printingItems];
  if ([printingItems count] != 1)
  {

    v9 = 0;
    goto LABEL_9;
  }

  printingItems2 = [(UIPrintInteractionController *)self printingItems];
  v9 = [printingItems2 objectAtIndexedSubscript:0];

  if (!v9)
  {
LABEL_9:
    handlerCopy[2](handlerCopy, 0);
    goto LABEL_10;
  }

  v10 = [(UIPrintInteractionController *)self convertedPrintableItem:v9];
  v11 = v10;
  if (!v10 || (v12 = CFGetTypeID(v10), v12 != CGPDFDocumentGetTypeID()))
  {
LABEL_7:

    goto LABEL_9;
  }

  v53[0] = 0;
  v53[1] = v53;
  v53[2] = 0x2020000000;
  v53[3] = v11;
  if (CGPDFDocumentAllowsPrinting(v11))
  {
    _Block_object_dispose(v53, 8);
    goto LABEL_7;
  }

  hostingWindowScene = [(UIPrintInteractionController *)self hostingWindowScene];
  if (!hostingWindowScene)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    hostingWindowScene = [mEMORY[0x277D75128] _findUISceneForLegacyInterfaceOrientation];
  }

  v15 = [objc_alloc(MEMORY[0x277D75DA0]) initWithWindowScene:hostingWindowScene];
  objc_storeStrong(&self->_alertWindow, v15);
  [v15 setOpaque:0];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v15 setBackgroundColor:clearColor];

  [v15 setWindowLevel:*MEMORY[0x277D772B8]];
  v17 = objc_alloc_init(MEMORY[0x277D75D28]);
  [(UIWindow *)self->_alertWindow setRootViewController:v17];
  [(UIWindow *)self->_alertWindow makeKeyAndVisible];
  v40 = v17;
  v18 = MEMORY[0x277D75110];
  v19 = [MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class(), v15, hostingWindowScene}];
  if (attemptCopy)
  {
    [v19 localizedStringForKey:@"Without the proper password value:you do not have permission to print this document." table:{@"Without the proper password, you do not have permission to print this document.", @"Localizable"}];
  }

  else
  {
    [v19 localizedStringForKey:@"Incorrect password for document." value:@"Incorrect password for document." table:@"Localizable"];
  }
  v20 = ;
  v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v22 = [v21 localizedStringForKey:@"Enter the password to unlock printing." value:@"Enter the password to unlock printing." table:@"Localizable"];
  v23 = [v18 alertControllerWithTitle:v20 message:v22 preferredStyle:1];

  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __83__UIPrintInteractionController__ensurePDFIsUnlockedFirstAttempt_completionHandler___block_invoke;
  v52[3] = &unk_279A9BEE0;
  v52[4] = self;
  v24 = MEMORY[0x25F8E54A0](v52);
  v25 = MEMORY[0x277D750F8];
  v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v27 = [v26 localizedStringForKey:@"PRINT_INTERACTION_CANCEL_BUTTON" value:@"Cancel" table:@"Localizable"];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __83__UIPrintInteractionController__ensurePDFIsUnlockedFirstAttempt_completionHandler___block_invoke_2;
  v47[3] = &unk_279A9C1A0;
  v51 = v53;
  v28 = v23;
  v48 = v28;
  v29 = v24;
  v49 = v29;
  v30 = handlerCopy;
  v50 = v30;
  v31 = [v25 actionWithTitle:v27 style:1 handler:v47];
  [v28 addAction:v31];

  v32 = MEMORY[0x277D750F8];
  v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v34 = [v33 localizedStringForKey:@"PRINT_INTERACTION_OK_BUTTON" value:@"OK" table:@"Localizable"];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __83__UIPrintInteractionController__ensurePDFIsUnlockedFirstAttempt_completionHandler___block_invoke_3;
  v41[3] = &unk_279A9C1C8;
  v35 = v28;
  v42 = v35;
  v36 = v29;
  selfCopy = self;
  v44 = v36;
  v46 = v53;
  v45 = v30;
  v37 = [v32 actionWithTitle:v34 style:0 handler:v41];
  [v35 addAction:v37];

  [v35 addTextFieldWithConfigurationHandler:&__block_literal_global_184];
  [v40 presentViewController:v35 animated:0 completion:0];

  _Block_object_dispose(v53, 8);
LABEL_10:
}

void __83__UIPrintInteractionController__ensurePDFIsUnlockedFirstAttempt_completionHandler___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 40) setHidden:1];
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

uint64_t __83__UIPrintInteractionController__ensurePDFIsUnlockedFirstAttempt_completionHandler___block_invoke_2(uint64_t a1)
{
  CGPDFDocumentRelease(*(*(*(a1 + 56) + 8) + 24));
  [*(a1 + 32) dismissViewControllerAnimated:1 completion:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void __83__UIPrintInteractionController__ensurePDFIsUnlockedFirstAttempt_completionHandler___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) dismissViewControllerAnimated:1 completion:*(a1 + 48)];
  v2 = [*(a1 + 32) textFields];
  v8 = [v2 firstObject];

  v3 = [v8 text];
  [*(a1 + 40) setPdfPassword:v3];

  v4 = [v8 text];
  v5 = [*(a1 + 40) activePrintInfo];
  [v5 setPdfPassword:v4];

  v6 = *(*(*(a1 + 64) + 8) + 24);
  v7 = [v8 text];
  CGPDFDocumentUnlockWithPassword(v6, [v7 cStringUsingEncoding:4]);

  if (CGPDFDocumentAllowsPrinting(*(*(*(a1 + 64) + 8) + 24)))
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    [*(a1 + 40) _ensurePDFIsUnlockedFirstAttempt:0 completionHandler:*(a1 + 56)];
  }
}

void __83__UIPrintInteractionController__ensurePDFIsUnlockedFirstAttempt_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCA8D8];
  v5 = a2;
  v3 = [v2 bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"Password" value:@"Password" table:@"Localizable"];
  [v5 setPlaceholder:v4];

  [v5 setSecureTextEntry:1];
}

- (BOOL)_printingItemIsReallyTallPDF:(id)f
{
  fCopy = f;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UIPrintInteractionController *)self _printablePDFURLSize:fCopy];
    v7 = 0;
    if (v6 <= 0.0)
    {
      goto LABEL_21;
    }

    v8 = v5;
    if (v5 <= 0.0)
    {
      goto LABEL_21;
    }

    v9 = v6;
    v10 = [UIPrintInteractionController createCGPDFDocumentRefWithNSURL:fCopy];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_18:
      v7 = 0;
      goto LABEL_21;
    }

    [(UIPrintInteractionController *)self _printablePDFDataSize:fCopy];
    v7 = 0;
    if (v12 <= 0.0)
    {
      goto LABEL_21;
    }

    v8 = v11;
    if (v11 <= 0.0)
    {
      goto LABEL_21;
    }

    v9 = v12;
    v10 = [UIPrintInteractionController createCGPDFDocumentRefWithNSData:fCopy];
  }

  v13 = v10;
  if (!v10)
  {
    goto LABEL_18;
  }

  activePrintInfo = [(UIPrintInteractionController *)self activePrintInfo];
  pdfPassword = [activePrintInfo pdfPassword];
  if (pdfPassword)
  {
    v16 = pdfPassword;
    IsEncrypted = CGPDFDocumentIsEncrypted(v13);

    if (!IsEncrypted)
    {
      goto LABEL_14;
    }

    activePrintInfo = [(UIPrintInteractionController *)self activePrintInfo];
    pdfPassword2 = [activePrintInfo pdfPassword];
    CGPDFDocumentUnlockWithPassword(v13, [pdfPassword2 cStringUsingEncoding:4]);
  }

LABEL_14:
  v7 = 0;
  if (CGPDFDocumentGetNumberOfPages(v13) == 1 && v9 / v8 > 3.0)
  {
    Info = CGPDFDocumentGetInfo(v13);
    if (Info)
    {
      value = 0;
      CGPDFDictionaryGetString(Info, "Keywords", &value);
      v20 = CGPDFStringCopyTextString(value);
      v7 = [(__CFString *)v20 containsString:@"com.apple.MarkupPDF"];
    }

    else
    {
      v7 = 0;
    }
  }

  CGPDFDocumentRelease(v13);
LABEL_21:

  return v7;
}

- (void)_printPageWithDelay:(double)delay
{
  if ([(UIPrintInteractionController *)self printStateActive])
  {
    objc_initWeak(&location, self);
    v5 = dispatch_time(0, delay);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__UIPrintInteractionController__printPageWithDelay___block_invoke;
    block[3] = &unk_279A9C238;
    objc_copyWeak(&v7, &location);
    block[4] = self;
    dispatch_after(v5, MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __52__UIPrintInteractionController__printPageWithDelay___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([WeakRetained printStateActive])
  {
    v3 = *(*(a1 + 32) + 16);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __52__UIPrintInteractionController__printPageWithDelay___block_invoke_2;
    v4[3] = &unk_279A9C210;
    objc_copyWeak(&v5, (a1 + 40));
    [v3 addOperationWithBlock:v4];
    objc_destroyWeak(&v5);
  }
}

void __52__UIPrintInteractionController__printPageWithDelay___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained printStateActive])
  {
    [WeakRetained _printPage];
  }
}

- (void)_printPage
{
  if ([(UIPrintInteractionController *)self printStateActive])
  {
    rendererToUse = [(UIPrintInteractionController *)self rendererToUse];
    if (rendererToUse && ([(UIPrintInteractionController *)self nupFileURL], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
    {
      nupFileURL2 = [(UIPrintInteractionController *)self _printPageWithRenderer:rendererToUse];
      [(UIPrintInteractionController *)self _completePrintPageWithError:nupFileURL2];
    }

    else
    {
      nupFileURL = [(UIPrintInteractionController *)self nupFileURL];

      if (nupFileURL)
      {
        nupFileURL2 = [(UIPrintInteractionController *)self nupFileURL];
      }

      else
      {
        printingItems = [(UIPrintInteractionController *)self printingItems];
        v8 = [printingItems count];

        printingItems2 = [(UIPrintInteractionController *)self printingItems];
        v10 = printingItems2;
        if (v8 == 1)
        {
          currentPage = 0;
        }

        else
        {
          currentPage = [(UIPrintInteractionController *)self currentPage];
          printingItems2 = v10;
        }

        nupFileURL2 = [printingItems2 objectAtIndex:currentPage];
      }

      objc_initWeak(&location, self);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __42__UIPrintInteractionController__printPage__block_invoke;
      v12[3] = &unk_279A9C260;
      objc_copyWeak(&v13, &location);
      [(UIPrintInteractionController *)self _printItemAsync:nupFileURL2 completionHandler:v12];
      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }
  }
}

void __42__UIPrintInteractionController__printPage__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _completePrintPageWithError:v3];
}

- (void)_completePrintPageWithError:(id)error
{
  v50 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (![(UIPrintInteractionController *)self printStateActive])
  {
    goto LABEL_35;
  }

  printingItems = [(UIPrintInteractionController *)self printingItems];
  if ([printingItems count])
  {

LABEL_5:
    pagesDrawn = -1;
    goto LABEL_6;
  }

  nupFileURL = [(UIPrintInteractionController *)self nupFileURL];

  if (nupFileURL)
  {
    goto LABEL_5;
  }

  pagesDrawn = [(UIPrintInteractionController *)self pagesDrawn];
LABEL_6:
  if ([(UIPrintInteractionController *)self currentPage]!= -1)
  {
    currentPage = [(UIPrintInteractionController *)self currentPage];
    currentRange = [(UIPrintInteractionController *)self currentRange];
    [(UIPrintInteractionController *)self currentRange];
    if (currentPage == currentRange + v10 - 1)
    {
      v43 = pagesDrawn;
      v44 = errorCopy;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      pageRanges = [(UIPrintInteractionController *)self pageRanges];
      v12 = [pageRanges countByEnumeratingWithState:&v45 objects:v49 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v46;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v46 != v14)
            {
              objc_enumerationMutation(pageRanges);
            }

            v16 = *(*(&v45 + 1) + 8 * i);
            rangeValue = [v16 rangeValue];
            v19 = v18;
            if (rangeValue == [(UIPrintInteractionController *)self currentRange]&& v19 == v20)
            {
              pageRanges2 = [(UIPrintInteractionController *)self pageRanges];
              v23 = [pageRanges2 count];
              pageRanges3 = [(UIPrintInteractionController *)self pageRanges];
              v25 = [pageRanges3 indexOfObject:v16] + 1;

              if (v23 > v25)
              {
                pageRanges4 = [(UIPrintInteractionController *)self pageRanges];
                pageRanges5 = [(UIPrintInteractionController *)self pageRanges];
                v28 = [pageRanges4 objectAtIndexedSubscript:{objc_msgSend(pageRanges5, "indexOfObject:", v16) + 1}];
                rangeValue2 = [v28 rangeValue];
                [(UIPrintInteractionController *)self setCurrentRange:rangeValue2, v30];

                [(UIPrintInteractionController *)self setCurrentPage:([(UIPrintInteractionController *)self currentRange]- 1)];
                printPageRenderer = [(UIPrintInteractionController *)self printPageRenderer];

                if (printPageRenderer)
                {
                  printPageRenderer2 = [(UIPrintInteractionController *)self printPageRenderer];
                  currentRange2 = [(UIPrintInteractionController *)self currentRange];
                  [printPageRenderer2 prepareForDrawingPages:{currentRange2, v34}];
                }

                goto LABEL_24;
              }
            }
          }

          v13 = [pageRanges countByEnumeratingWithState:&v45 objects:v49 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

LABEL_24:

      pagesDrawn = v43;
      errorCopy = v44;
    }

    [(UIPrintInteractionController *)self setCurrentPage:[(UIPrintInteractionController *)self currentPage]+ 1];
  }

  nupFileURL2 = [(UIPrintInteractionController *)self nupFileURL];
  if (errorCopy | nupFileURL2 || ([(UIPrintInteractionController *)self pageCount]& 0x8000000000000000) == 0 && ((v36 = [(UIPrintInteractionController *)self currentPage], v37 = [(UIPrintInteractionController *)self currentRange], v36 < v37) || v36 - v37 >= v38))
  {

    goto LABEL_34;
  }

  if ([(UIPrintInteractionController *)self currentPage]== -1)
  {
LABEL_34:
    printingProgress = [(UIPrintInteractionController *)self printingProgress];
    [printingProgress setPage:-1 ofPage:0];

    [(UIPrintInteractionController *)self _endPrintJobWithAction:1 error:errorCopy];
    goto LABEL_35;
  }

  printingProgress2 = [(UIPrintInteractionController *)self printingProgress];
  if ([(UIPrintInteractionController *)self pageCountWithRanges]< 1)
  {
    pageCount = [(UIPrintInteractionController *)self pageCount];
  }

  else
  {
    pageCount = [(UIPrintInteractionController *)self pageCountWithRanges];
  }

  [printingProgress2 setPage:pagesDrawn ofPage:pageCount];

  if (![(UIPrintInteractionController *)self manualPrintPageEnabled])
  {
    printingProgress3 = [(UIPrintInteractionController *)self printingProgress];
    [printingProgress3 nextPrintDelay];
    [(UIPrintInteractionController *)self _printPageWithDelay:?];
  }

LABEL_35:
}

- (void)_printItemAsync:(id)async completionHandler:(id)handler
{
  keys[1] = *MEMORY[0x277D85DE8];
  asyncCopy = async;
  handlerCopy = handler;
  if ([(UIPrintInteractionController *)self printStateActive])
  {
    v109 = 0;
    v110 = &v109;
    v111 = 0x3032000000;
    v112 = __Block_byref_object_copy_;
    v113 = __Block_byref_object_dispose_;
    v114 = 0;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = asyncCopy;
      v9 = 0;
      v97 = 0;
      data = 0;
      v10 = 0;
      if (!v8)
      {
        goto LABEL_18;
      }

LABEL_45:
      printer = [(UIPrintInteractionController *)self printer];
      printSettings = [(UIPrintInteractionController *)self printSettings];
      v35 = [printer startJob:printSettings ofType:v10] == 0;

      if (v35)
      {
        printPaper = [(UIPrintInteractionController *)self printPaper];
        pkPaper = [printPaper pkPaper];
        if ([pkPaper isRoll])
        {
          printingItems = [(UIPrintInteractionController *)self printingItems];
          v39 = [printingItems count] > 1;

          if (!v39)
          {
LABEL_51:
            printer2 = [(UIPrintInteractionController *)self printer];
            v8 = v8;
            v96 = printer2;
            v44 = printPaper;
            cIImage = [v8 CIImage];
            v46 = cIImage == 0;

            v47 = v8;
            if (!v46)
            {
              v47 = ConvertCIBasedImage(v8);
            }

            v48 = v47;
            if ([v47 CGImage])
            {
              info = v96;
              v118 = 0;
              cbks = xmmword_2871AE590;
              v49 = CGDataConsumerCreate(&info, &cbks);
              if (v49)
              {
                memset(&mediaBox, 0, sizeof(mediaBox));
                [v47 size];
                v51 = v50;
                v53 = v52;
                [v44 paperSize];
                v55 = v54;
                [v44 paperSize];
                if ((v55 <= v56 || v51 >= v53) && (([v44 paperSize], v58 = v57, objc_msgSend(v44, "paperSize"), v58 >= v59) || v51 <= v53))
                {
                  [v44 paperSize];
                  v61 = v86;
                  [v44 paperSize];
                  v62 = v87;
                }

                else
                {
                  [v44 paperSize];
                  v61 = v60;
                  [v44 paperSize];
                }

                mediaBox.origin.x = 0.0;
                mediaBox.origin.y = 0.0;
                mediaBox.size.width = v61;
                mediaBox.size.height = v62;
                v88 = GetDefaultPDFContextAuxilliaryInfo___auxilliaryInfo;
                if (!GetDefaultPDFContextAuxilliaryInfo___auxilliaryInfo)
                {
                  keys[0] = *MEMORY[0x277CBF5C8];
                  values = *MEMORY[0x277CBED10];
                  v88 = CFDictionaryCreate(0, keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                  GetDefaultPDFContextAuxilliaryInfo___auxilliaryInfo = v88;
                }

                v89 = CGPDFContextCreate(v49, &mediaBox, v88);
                v90 = v89;
                if (v89)
                {
                  CGPDFContextBeginPage(v89, 0);
                  [v47 imageOrientation];
                  [v44 paperSize];
                  [v44 printableRect];
                  PKDrawImageToSheet();
                  CGPDFContextEndPage(v90);
                  CGPDFContextClose(v90);
                  CGContextRelease(v90);
                }

                CGDataConsumerRelease(v49);
              }

              v91 = v118;

              if (v91)
              {
                printer3 = [(UIPrintInteractionController *)self printer];
                v105[0] = MEMORY[0x277D85DD0];
                v105[1] = 3221225472;
                v105[2] = __66__UIPrintInteractionController__printItemAsync_completionHandler___block_invoke;
                v105[3] = &unk_279A9C288;
                v105[4] = self;
                v107 = &v109;
                v106 = handlerCopy;
                [printer3 finishJobCompletionHandler:v105];
              }
            }

            else
            {
            }

            goto LABEL_84;
          }

          printer4 = [(UIPrintInteractionController *)self printer];
          printInfo = [(UIPrintInteractionController *)self printInfo];
          duplex = [printInfo duplex];
          printInfo2 = [(UIPrintInteractionController *)self printInfo];
          outputType = [printInfo2 outputType];
          [v8 size];
          pkPaper = [UIPrintPaper _readyPaperListForPrinter:printer4 withDuplexMode:duplex forContentType:outputType contentSize:?];

          if (pkPaper)
          {
            [v8 size];
            v42 = [UIPrintPaper bestPaperForPageSize:pkPaper withPapersFromArray:?];

            printPaper = v42;
          }
        }

        goto LABEL_51;
      }

LABEL_84:

      _Block_object_dispose(&v109, 8);
      goto LABEL_85;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = asyncCopy;
      if (v12)
      {
        v9 = v12;
        v13 = [UIPrintInteractionController utiForNSURL:v12];
        v14 = v13;
        if (v13)
        {
          v10 = PrintableMIMETypeForUTI(v13);
          if (v10)
          {
            v97 = 0;
            v15 = 0;
            goto LABEL_29;
          }

          if (IsAssetURL(v9))
          {
            v20 = GetPHAssetForAssetURLSync(v9);
            if (v20)
            {
              v97 = v20;
              v15 = 0;
              goto LABEL_28;
            }

            v24 = [MEMORY[0x277CCA9B8] errorWithDomain:@"UIPrintErrorDomain" code:3 userInfo:0];
            v9 = 0;
            v15 = 0;
            v23 = v110[5];
            v110[5] = v24;
          }

          else
          {
            v21 = v110;
            v108 = v110[5];
            v15 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v9 options:1 error:&v108];
            v22 = v108;
            v23 = v21[5];
            v21[5] = v22;
          }

          v97 = 0;
          goto LABEL_28;
        }

        v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"UIPrintErrorDomain" code:3 userInfo:0];
        v97 = 0;
        v15 = 0;
        v9 = v110[5];
        v110[5] = v19;
LABEL_28:

        v9 = 0;
        v10 = 0;
LABEL_29:

        v16 = v15;
        if (v15)
        {
          goto LABEL_30;
        }

        goto LABEL_14;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = asyncCopy;
        v97 = 0;
        v9 = 0;
        v10 = 0;
        if (v16)
        {
LABEL_30:
          data = v16;
          if ([(UIPrintInteractionController *)self _canPrintPDFData:?])
          {
            v25 = *MEMORY[0x277D41100];

            v8 = 0;
            v10 = v25;
          }

          else
          {
            v26 = CGImageSourceCreateWithData(data, 0);
            v27 = v26;
            if (v26)
            {
              Type = CGImageSourceGetType(v26);
              v29 = PrintableMIMETypeForUTI(Type);

              if (v29)
              {
                v8 = 0;
              }

              else
              {
                v8 = ImageFromImageSource(v27);
                v29 = *MEMORY[0x277D41100];

                data = 0;
              }

              CFRelease(v27);
              v10 = v29;
            }

            else
            {
              v8 = 0;
            }
          }

          if (!data || v10)
          {
LABEL_42:
            if (v97)
            {
              v32 = GetImageForPHAssetSync(v97);

              v8 = v32;
            }

            if (v8)
            {
              goto LABEL_45;
            }

            if (!v9)
            {
              if (data)
              {
                printer5 = [(UIPrintInteractionController *)self printer];
                printSettings2 = [(UIPrintInteractionController *)self printSettings];
                v81 = [printer5 startJob:printSettings2 ofType:v10] == 0;

                if (v81)
                {
                  printer6 = [(UIPrintInteractionController *)self printer];
                  v83 = data;
                  v84 = [printer6 sendData:-[__CFData bytes](data ofLength:{"bytes"), -[__CFData length](data, "length")}] == 0;

                  if (v84)
                  {
                    printer7 = [(UIPrintInteractionController *)self printer];
                    v99[0] = MEMORY[0x277D85DD0];
                    v99[1] = 3221225472;
                    v99[2] = __66__UIPrintInteractionController__printItemAsync_completionHandler___block_invoke_3;
                    v99[3] = &unk_279A9C288;
                    v99[4] = self;
                    v101 = &v109;
                    v100 = handlerCopy;
                    [printer7 finishJobCompletionHandler:v99];
                  }
                }

                v8 = 0;
                v9 = 0;
                goto LABEL_84;
              }

              goto LABEL_18;
            }

            printPaper2 = [(UIPrintInteractionController *)self printPaper];
            pkPaper2 = [printPaper2 pkPaper];
            if ([pkPaper2 isRoll])
            {
              printingItems2 = [(UIPrintInteractionController *)self printingItems];
              v66 = [printingItems2 count] > 1;

              if (!v66)
              {
LABEL_68:
                printer8 = [(UIPrintInteractionController *)self printer];
                printSettings3 = [(UIPrintInteractionController *)self printSettings];
                v102[0] = MEMORY[0x277D85DD0];
                v102[1] = 3221225472;
                v102[2] = __66__UIPrintInteractionController__printItemAsync_completionHandler___block_invoke_2;
                v102[3] = &unk_279A9C2B0;
                v104 = &v109;
                v103 = handlerCopy;
                [printer8 printURL:v9 ofType:v10 printSettings:printSettings3 completionHandler:v102];

                v8 = 0;
                goto LABEL_84;
              }

              [(UIPrintInteractionController *)self _printItemContentSize:asyncCopy];
              v68 = v67;
              v70 = v69;
              printer9 = [(UIPrintInteractionController *)self printer];
              printInfo3 = [(UIPrintInteractionController *)self printInfo];
              duplex2 = [printInfo3 duplex];
              printInfo4 = [(UIPrintInteractionController *)self printInfo];
              printPaper2 = +[UIPrintPaper _readyPaperListForPrinter:withDuplexMode:forContentType:contentSize:](UIPrintPaper, "_readyPaperListForPrinter:withDuplexMode:forContentType:contentSize:", printer9, duplex2, [printInfo4 outputType], v68, v70);

              if (!printPaper2)
              {
LABEL_67:

                goto LABEL_68;
              }

              pkPaper2 = [UIPrintPaper bestPaperForPageSize:printPaper2 withPapersFromArray:v68, v70];
              if (pkPaper2)
              {
                printSettings4 = [(UIPrintInteractionController *)self printSettings];
                v64PkPaper = [pkPaper2 pkPaper];
                [printSettings4 setPaper:v64PkPaper];
              }
            }

            goto LABEL_67;
          }

          v30 = [MEMORY[0x277CCA9B8] errorWithDomain:@"UIPrintErrorDomain" code:3 userInfo:0];
          v31 = v110[5];
          v110[5] = v30;

LABEL_41:
          data = 0;
          v10 = 0;
          goto LABEL_42;
        }

LABEL_14:
        v8 = 0;
        data = 0;
        goto LABEL_42;
      }

      getPHAssetClass();
      if (objc_opt_isKindOfClass())
      {
        v97 = asyncCopy;
        v9 = 0;
        v8 = 0;
        goto LABEL_41;
      }
    }

    v97 = 0;
    v10 = 0;
LABEL_18:
    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"UIPrintErrorDomain" code:3 userInfo:0];
    v18 = v110[5];
    v110[5] = v17;

    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, v110[5]);
    }

    v8 = 0;
    v9 = 0;
    data = 0;
    goto LABEL_84;
  }

  if (handlerCopy)
  {
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"UIPrintErrorDomain" code:1 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, v11);
  }

LABEL_85:
}

uint64_t __66__UIPrintInteractionController__printItemAsync_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) printer];
    [v3 abortJobCompletionHandler:0];

    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"UIPrintErrorDomain" code:4 userInfo:0];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  result = *(a1 + 40);
  if (result)
  {
    v8 = *(result + 16);

    return v8();
  }

  return result;
}

uint64_t __66__UIPrintInteractionController__printItemAsync_completionHandler___block_invoke_2(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"UIPrintErrorDomain" code:4 userInfo:0];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  result = *(a1 + 32);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

uint64_t __66__UIPrintInteractionController__printItemAsync_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) printer];
    [v3 abortJobCompletionHandler:0];

    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"UIPrintErrorDomain" code:4 userInfo:0];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  result = *(a1 + 40);
  if (result)
  {
    v8 = *(result + 16);

    return v8();
  }

  return result;
}

- (BOOL)needRedrawWithNUp
{
  if (![(UIPrintInteractionController *)self _canShowLayout])
  {
    return 0;
  }

  activePrintInfo = [(UIPrintInteractionController *)self activePrintInfo];
  if ([activePrintInfo nUpActive])
  {
    flipHorizontal = 1;
  }

  else
  {
    activePrintInfo2 = [(UIPrintInteractionController *)self activePrintInfo];
    if ([activePrintInfo2 borderType])
    {
      flipHorizontal = 1;
    }

    else
    {
      activePrintInfo3 = [(UIPrintInteractionController *)self activePrintInfo];
      if ([activePrintInfo3 bookletStyle] <= 0)
      {
        activePrintInfo4 = [(UIPrintInteractionController *)self activePrintInfo];
        flipHorizontal = [activePrintInfo4 flipHorizontal];
      }

      else
      {
        flipHorizontal = 1;
      }
    }
  }

  return flipHorizontal;
}

- (id)_createDocInfoDict
{
  v3 = GetAppName();
  activePrintInfo = [(UIPrintInteractionController *)self activePrintInfo];
  jobName = [activePrintInfo jobName];

  if (!jobName)
  {
    jobName = GetDefaultJobName();
  }

  v6 = *MEMORY[0x277CBF5E0];
  v7 = *MEMORY[0x277CBF578];
  v8 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{jobName, *MEMORY[0x277CBF5E0], v3, *MEMORY[0x277CBF578], 0}];
  paper = [(UIPrintInteractionController *)self paper];
  if (paper)
  {
    v10 = paper;
    paper2 = [(UIPrintInteractionController *)self paper];
    _keywordForPDFMetadata = [paper2 _keywordForPDFMetadata];

    if (_keywordForPDFMetadata)
    {
      paper3 = [(UIPrintInteractionController *)self paper];
      _keywordForPDFMetadata2 = [paper3 _keywordForPDFMetadata];
      [v8 setObject:_keywordForPDFMetadata2 forKey:*MEMORY[0x277CBF5A0]];
    }
  }

  printingItems = [(UIPrintInteractionController *)self printingItems];
  if ([printingItems count] != 1)
  {

    goto LABEL_36;
  }

  printingItems2 = [(UIPrintInteractionController *)self printingItems];
  v17 = [printingItems2 objectAtIndexedSubscript:0];

  if (!v17)
  {
    goto LABEL_36;
  }

  v18 = [(UIPrintInteractionController *)self convertedPrintableItem:v17];
  v19 = v18;
  if (v18)
  {
    v20 = CFGetTypeID(v18);
    if (v20 == CGPDFDocumentGetTypeID())
    {
      v21 = CGPDFDocumentCopyOutputIntents();
      if (v21)
      {
        v22 = v21;
        [v8 setObject:v21 forKey:*MEMORY[0x277CBF5B0]];
      }

      pdfPassword = [(UIPrintInteractionController *)self pdfPassword];
      if (pdfPassword)
      {
        v24 = pdfPassword;
        [(UIPrintInteractionController *)self pdfPassword];
        v25 = v45 = v19;
        v26 = [v25 length];

        v19 = v45;
        if (v26)
        {
          pdfPassword2 = [(UIPrintInteractionController *)self pdfPassword];
          [v8 setObject:pdfPassword2 forKey:*MEMORY[0x277CBF5B8]];

          pdfPassword3 = [(UIPrintInteractionController *)self pdfPassword];
          [v8 setObject:pdfPassword3 forKey:*MEMORY[0x277CBF5F0]];
        }
      }

      v29 = [MEMORY[0x277CCABB0] numberWithBool:{-[UIPrintInteractionController pdfAllowsPrinting](self, "pdfAllowsPrinting")}];
      [v8 setObject:v29 forKey:*MEMORY[0x277CBF558]];

      v30 = [MEMORY[0x277CCABB0] numberWithBool:{-[UIPrintInteractionController pdfAllowsCopying](self, "pdfAllowsCopying")}];
      [v8 setObject:v30 forKey:*MEMORY[0x277CBF550]];

      [v8 setObject:@"pdftopdf filter" forKey:v7];
      pdfPassword4 = [(UIPrintInteractionController *)self pdfPassword];
      if (pdfPassword4)
      {
        v32 = pdfPassword4;
        IsEncrypted = CGPDFDocumentIsEncrypted(v19);

        if (IsEncrypted)
        {
          pdfPassword5 = [(UIPrintInteractionController *)self pdfPassword];
          CGPDFDocumentUnlockWithPassword(v19, [pdfPassword5 cStringUsingEncoding:4]);
        }
      }

      Info = CGPDFDocumentGetInfo(v19);
      if (Info)
      {
        v36 = Info;
        v46 = 0;
        value = 0;
        if (CGPDFDictionaryGetString(Info, "Title", &value))
        {
          v37 = CGPDFStringCopyTextString(value);
          if (v37)
          {
            v38 = v37;
            [v8 setObject:v37 forKey:v6];
          }
        }

        if (CGPDFDictionaryGetString(v36, "Author", &value))
        {
          v39 = CGPDFStringCopyTextString(value);
          if (v39)
          {
            v40 = v39;
            [v8 setObject:v39 forKey:*MEMORY[0x277CBF568]];
          }
        }

        if (CGPDFDictionaryGetString(v36, "Subject", &value))
        {
          v41 = CGPDFStringCopyTextString(value);
          if (v41)
          {
            v42 = v41;
            [v8 setObject:v41 forKey:*MEMORY[0x277CBF5D8]];
          }
        }

        if (CGPDFDictionaryGetString(v36, "Keywords", &value))
        {
          v43 = CGPDFStringCopyTextString(value);
          if (!v43)
          {
            goto LABEL_35;
          }
        }

        else
        {
          if (!CGPDFDictionaryGetArray(v36, "AAPL:Keywords", &v46))
          {
            goto LABEL_35;
          }

          v43 = v46;
          if (!v46)
          {
            goto LABEL_35;
          }
        }

        [v8 setObject:v43 forKey:*MEMORY[0x277CBF5A0]];
      }
    }
  }

LABEL_35:

LABEL_36:

  return v8;
}

- (CGContext)_newSaveContext:(id)context withMediaRect:(CGRect)rect
{
  rectCopy = rect;
  if (!context)
  {
    return 0;
  }

  contextCopy = context;
  v6 = [(UIPrintInteractionController *)self _createDocInfoDict:*&rectCopy.origin.x];
  v7 = CGPDFContextCreateWithURL(contextCopy, &rectCopy, v6);

  return v7;
}

- (id)_printPageWithRenderer:(id)renderer
{
  rendererCopy = renderer;
  if (![(UIPrintInteractionController *)self printStateActive])
  {
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"UIPrintErrorDomain" code:4 userInfo:0];
    goto LABEL_18;
  }

  currentPage = [(UIPrintInteractionController *)self currentPage];
  if (currentPage != [(UIPrintInteractionController *)self currentRange])
  {
    goto LABEL_10;
  }

  currentRange = [(UIPrintInteractionController *)self currentRange];
  v8 = v7;
  pageRanges = [(UIPrintInteractionController *)self pageRanges];
  firstObject = [pageRanges firstObject];
  rangeValue = [firstObject rangeValue];
  v13 = v12;

  v14 = 0;
  if (currentRange != rangeValue || v8 != v13)
  {
    goto LABEL_11;
  }

  saveFileURL = [(UIPrintInteractionController *)self saveFileURL];

  if (saveFileURL)
  {
    saveFileURL2 = [(UIPrintInteractionController *)self saveFileURL];
    [rendererCopy paperRect];
    v17 = [(UIPrintInteractionController *)self _newSaveContext:saveFileURL2 withMediaRect:?];

    if (v17)
    {
      [rendererCopy _startPrintJobContext:v17];
      CGContextRelease(v17);
LABEL_10:
      v14 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    printer = [(UIPrintInteractionController *)self printer];
    activePrintInfo = [(UIPrintInteractionController *)self activePrintInfo];
    printSettings = [(UIPrintInteractionController *)self printSettings];
    v21 = [rendererCopy _startPrintJobContext:printer printInfo:activePrintInfo printSettings:printSettings];

    if (v21)
    {
      goto LABEL_10;
    }
  }

  v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"UIPrintErrorDomain" code:4 userInfo:0];
LABEL_11:
  if ([(UIPrintInteractionController *)self printStateActive]&& !v14)
  {
    currentPage2 = [(UIPrintInteractionController *)self currentPage];
    activePrintInfo2 = [(UIPrintInteractionController *)self activePrintInfo];
    [activePrintInfo2 scalingFactor];
    [rendererCopy _drawPage:currentPage2 withScale:1 drawingToPDF:?];
  }

  if ([(UIPrintInteractionController *)self printStateActive])
  {
    if (!v14)
    {
      [(UIPrintInteractionController *)self setPagesDrawn:[(UIPrintInteractionController *)self pagesDrawn]+ 1];
      if ([(UIPrintInteractionController *)self pageCount]< 0)
      {
        -[UIPrintInteractionController setPageCount:](self, "setPageCount:", [rendererCopy numberOfPages]);
      }
    }
  }

LABEL_18:

  return v14;
}

- (void)_endPrintJobWithAction:(int64_t)action error:(id)error
{
  errorCopy = error;
  selfCopy = self;
  temporaryRetainCycle = self->_temporaryRetainCycle;
  self->_temporaryRetainCycle = 0;

  if ([(UIPrintInteractionController *)self printStateActive])
  {
    v9 = action == 0;
    v10 = action == 0;
    v11 = !v9;
    [(UIPrintInteractionController *)self _cancelAllPreviewGeneration];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __61__UIPrintInteractionController__endPrintJobWithAction_error___block_invoke;
    v12[3] = &unk_279A9BF50;
    v12[4] = self;
    v14 = v11;
    v13 = errorCopy;
    [(UIPrintInteractionController *)self _cancelPreviewQueue:v10 completionHandler:v12];
  }
}

void __61__UIPrintInteractionController__endPrintJobWithAction_error___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) rendererToUse];
  v3 = v2;
  if (v2)
  {
    [v2 _endPrintJobContext];
  }

  if (*(a1 + 48) == 1 && !*(a1 + 40))
  {
    v4 = [*(a1 + 32) printer];
    [v4 finishJobCompletionHandler:0];
  }

  else
  {
    v4 = [*(a1 + 32) printer];
    [v4 abortJobCompletionHandler:0];
  }

  v5 = [*(a1 + 32) saveFileURL];
  if (v5)
  {
    if (*(a1 + 48) == 1)
    {
      v6 = *(a1 + 40);

      if (!v6)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    v7 = [*(a1 + 32) saveFileURL];
    v8 = [v7 path];
    [v8 getCString:v25 maxLength:1024 encoding:4];

    unlink(v25);
  }

LABEL_12:
  v9 = [*(a1 + 32) printingItemsTempFolderPath];

  if (v9)
  {
    v10 = [MEMORY[0x277CCAA00] defaultManager];
    v11 = [*(a1 + 32) printingItemsTempFolderPath];
    [v10 removeItemAtPath:v11 error:0];
  }

  [*(a1 + 32) resetConvertedPrintableItems];
  v12 = [*(a1 + 32) delegate];
  v13 = *MEMORY[0x277D767B0];
  if (*(*(a1 + 32) + 8) != *MEMORY[0x277D767B0] || [*MEMORY[0x277D76620] _taskSuspendingUnsupported]) && (objc_opt_respondsToSelector())
  {
    [v12 printInteractionControllerDidFinishJob:*(a1 + 32)];
  }

  v14 = [*(a1 + 32) printingProgress];
  [v14 endProgress];

  v15 = [*(a1 + 32) completionHandler];
  if (v15)
  {
    if (pthread_main_np() == 1 || ([*(a1 + 32) saveFileURL], v16 = objc_claimAutoreleasedReturnValue(), v16, v16))
    {
      v15[2](v15, *(a1 + 32), *(a1 + 48), *(a1 + 40));
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __61__UIPrintInteractionController__endPrintJobWithAction_error___block_invoke_2;
      block[3] = &unk_279A9C2D8;
      v18 = v15;
      v19 = *(a1 + 32);
      v20 = *(a1 + 40);
      v23 = v18;
      block[4] = v19;
      v24 = *(a1 + 48);
      v22 = v20;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

  [*(a1 + 32) _cleanPrintState];
  if (*(*(a1 + 32) + 8) != v13)
  {
    v17 = [MEMORY[0x277D75128] sharedApplication];
    [v17 _endBackgroundTask:*(*(a1 + 32) + 8)];

    *(*(a1 + 32) + 8) = v13;
  }
}

- (id)appOptionsViewController
{
  delegate = [(UIPrintInteractionController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(UIPrintInteractionController *)self delegate];
    v6 = [delegate2 performSelector:sel_appOptionsViewController];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_NSRange)currentRange
{
  objc_copyStruct(v4, &self->_currentRange, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.length = v3;
  result.location = v2;
  return result;
}

- (UIPrintInteractionControllerActivityDelegate)printActivityDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_printActivityDelegate);

  return WeakRetained;
}

- (void)dismissAnimated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  handlerCopy = handler;
  if ([(UIPrintInteractionController *)self printStateActive])
  {
    [(UIPrintInteractionController *)self setSupressNotifyDismissed:1];
    printPanelViewController = [(UIPrintInteractionController *)self printPanelViewController];
    [printPanelViewController dismissAnimated:animatedCopy completionHandler:handlerCopy];
  }

  else if (handlerCopy)
  {
    handlerCopy[2]();
  }
}

- (BOOL)savePDFToURL:(id)l showProgress:(BOOL)progress hostingScene:(id)scene completionHandler:(id)handler
{
  progressCopy = progress;
  lCopy = l;
  sceneCopy = scene;
  handlerCopy = handler;
  printFormatter = [(UIPrintInteractionController *)self printFormatter];
  if (printFormatter)
  {
  }

  else
  {
    printPageRenderer = [(UIPrintInteractionController *)self printPageRenderer];

    if (!printPageRenderer)
    {
      NSLog(&cfstr_ErrorAttemptin_2.isa);
      if (handlerCopy)
      {
        goto LABEL_6;
      }

LABEL_23:
      v16 = 0;
      goto LABEL_24;
    }
  }

  if (![(UIPrintInteractionController *)self printStateActive])
  {
    [(UIPrintInteractionController *)self setPrintStateActive:1];
    [(UIPrintInteractionController *)self setCompletionHandler:handlerCopy];
    printInfo = [(UIPrintInteractionController *)self printInfo];
    if (printInfo)
    {
      printInfo2 = [(UIPrintInteractionController *)self printInfo];
      v19 = [printInfo2 copy];
      [(UIPrintInteractionController *)self setActivePrintInfo:v19];
    }

    else
    {
      printInfo2 = +[UIPrintInfo printInfo];
      [(UIPrintInteractionController *)self setActivePrintInfo:printInfo2];
    }

    [(UIPrintInteractionController *)self setPrinter:0];
    activePrintInfo = [(UIPrintInteractionController *)self activePrintInfo];
    [activePrintInfo setPrinterID:0];

    activePrintInfo2 = [(UIPrintInteractionController *)self activePrintInfo];
    [activePrintInfo2 setDuplex:0];

    [(UIPrintInteractionController *)self setSaveFileURL:lCopy];
    [(UIPrintInteractionController *)self setShowPrintingProgress:progressCopy];
    [(UIPrintInteractionController *)self setHostingWindowScene:sceneCopy];
    delegate = [(UIPrintInteractionController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate printInteractionControllerWillPresentPrinterOptions:self];
    }

    if (objc_opt_respondsToSelector())
    {
      [delegate printInteractionControllerDidPresentPrinterOptions:self];
    }

    if (![(UIPrintInteractionController *)self supressNotifyDismissed]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      [delegate printInteractionControllerWillDismissPrinterOptions:self];
    }

    if (![(UIPrintInteractionController *)self supressNotifyDismissed]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      [delegate printInteractionControllerDidDismissPrinterOptions:self];
    }

    v16 = 1;
    [(UIPrintInteractionController *)self _setPrinterInfoState:1];
    goto LABEL_21;
  }

  if (!handlerCopy)
  {
    goto LABEL_23;
  }

LABEL_6:
  delegate = [MEMORY[0x277CCA9B8] errorWithDomain:@"UIPrintErrorDomain" code:4 userInfo:0];
  handlerCopy[2](handlerCopy, self, 0, delegate);
  v16 = 0;
LABEL_21:

LABEL_24:
  return v16;
}

@end