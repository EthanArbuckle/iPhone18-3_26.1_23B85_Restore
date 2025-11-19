@interface UIPrintInteractionController
+ (BOOL)canPrintData:(NSData *)data;
+ (BOOL)canPrintURL:(NSURL *)url;
+ (BOOL)hasValidPDFHeader:(id)a3;
+ (BOOL)isPrintablePDFData:(id)a3 requireUnlocked:(BOOL)a4 password:(id)a5;
+ (BOOL)isPrintablePDFURL:(id)a3 requireUnlocked:(BOOL)a4 password:(id)a5;
+ (BOOL)isPrintingAvailable;
+ (CGPDFDocument)createCGPDFDocumentRefWithNSData:(id)a3;
+ (CGPDFDocument)createCGPDFDocumentRefWithNSURL:(id)a3;
+ (NSSet)printableUTIs;
+ (UIPrintInteractionController)sharedPrintController;
+ (id)utiForNSData:(id)a3;
+ (id)utiForNSURL:(id)a3;
- (BOOL)_canPreviewContent;
- (BOOL)_canPrintPDFData:(id)a3;
- (BOOL)_canPrintURL:(id)a3;
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
- (BOOL)_isPageCancelled:(id)a3;
- (BOOL)_pageRendererAvailable;
- (BOOL)_presentAnimated:(BOOL)a3 hostingScene:(id)a4 completionHandler:(id)a5;
- (BOOL)_printingItemIsReallyTallPDF:(id)a3;
- (BOOL)_setupPrintPanel:(id)a3 forPDFGenerationOnly:(BOOL)a4;
- (BOOL)isPhone;
- (BOOL)needRedrawWithNUp;
- (BOOL)presentFromBarButtonItem:(UIBarButtonItem *)item animated:(BOOL)animated completionHandler:(UIPrintInteractionCompletionHandler)completion;
- (BOOL)presentFromRect:(CGRect)rect inView:(UIView *)view animated:(BOOL)animated completionHandler:(UIPrintInteractionCompletionHandler)completion;
- (BOOL)printToPrinter:(UIPrinter *)printer completionHandler:(UIPrintInteractionCompletionHandler)completion;
- (BOOL)savePDFToURL:(id)a3 showProgress:(BOOL)a4 hostingScene:(id)a5 completionHandler:(id)a6;
- (BOOL)updatePrintingItems:(id)a3;
- (CGContext)_newSaveContext:(id)a3 withMediaRect:(CGRect)a4;
- (CGRect)_mediaRect;
- (CGSize)_printItemContentSize;
- (CGSize)_printItemContentSize:(id)a3;
- (CGSize)_printablePDFDataSize:(id)a3;
- (CGSize)_printablePDFURLSize:(id)a3;
- (CGSize)paperSizeForPageNum:(int64_t)a3;
- (NSArray)pageRanges;
- (NSURL)tempPreviewFileURL;
- (PKPrinter)printer;
- (UIPrintInteractionController)init;
- (UIPrintInteractionControllerActivityDelegate)printActivityDelegate;
- (UIPrintPaper)paper;
- (_NSRange)_fullPagesRange;
- (_NSRange)currentRange;
- (double)_getCutLengthFromDelegateForPaper:(id)a3;
- (double)printInteractionController:(id)a3 cutLengthForPaper:(id)a4;
- (id)_convertItemToPrintableItem:(id)a3;
- (id)_createDocInfoDict;
- (id)_currentPrintInfo;
- (id)_getChosenPaperFromDelegateForPaperList:(id)a3;
- (id)_newPDFURLWithPath:(id)a3 isContentManaged:(BOOL)a4;
- (id)_paperForContentType:(int64_t)a3;
- (id)_paperForPDFItem:(id)a3 withDuplexMode:(int64_t)a4;
- (id)_printPageWithRenderer:(id)a3;
- (id)_printingItemPrintablePDFURL;
- (id)_tempFilePath;
- (id)_updatePrintPaper;
- (id)appOptionsViewController;
- (id)convertedPrintableItem:(id)a3;
- (id)createWebKitPDFForAllPages;
- (id)delegate;
- (id)drawPagesWithPreviewState:(id)a3;
- (id)getPrintingItemForPageNum:(int64_t)a3 pdfItemPageNum:(int64_t *)a4;
- (id)printInteractionController:(id)a3 choosePaper:(id)a4;
- (id)redrawPDFwithPageRange:(id)a3;
- (id)rendererToUse;
- (int64_t)numberOfPages;
- (void)_addPDFWithCGPDFDocumentRef:(CGPDFDocument *)a3 toContext:(CGContext *)a4 addAllPages:(BOOL)a5;
- (void)_cancelAllPreviewGeneration;
- (void)_cancelPreviewQueue:(BOOL)a3 completionHandler:(id)a4;
- (void)_cleanPrintState;
- (void)_completePrintPageWithError:(id)a3;
- (void)_drawPrintItem:(id)a3 toContext:(CGContext *)a4 printAllPages:(BOOL)a5;
- (void)_endPrintJobWithAction:(int64_t)a3 error:(id)a4;
- (void)_ensurePDFIsUnlockedFirstAttempt:(BOOL)a3 completionHandler:(id)a4;
- (void)_generatePDFWithCompletionHandler:(id)a3;
- (void)_generatePDFWithNupForPrintingCompletion:(id)a3;
- (void)_generatePrintPreview:(id)a3;
- (void)_preparePrintInfo;
- (void)_printItemAsync:(id)a3 completionHandler:(id)a4;
- (void)_printPage;
- (void)_printPageWithDelay:(double)a3;
- (void)_printPanelDidDismissWithAction:(int64_t)a3;
- (void)_printPanelDidPresent;
- (void)_printPanelWillDismissWithAction:(int64_t)a3;
- (void)_setPrinterInfoState:(int)a3;
- (void)_startPrinting;
- (void)_updateCutterBehavior;
- (void)_updatePageCount;
- (void)_updatePrintInfoWithAnnotations;
- (void)_updateRendererWithQuality:(int64_t)a3;
- (void)dealloc;
- (void)dismissAnimated:(BOOL)a3 completionHandler:(id)a4;
- (void)drawImage:(id)a3 toContext:(CGContext *)a4 sheetSize:(CGSize)a5;
- (void)drawImageForPageNum:(int64_t)a3 toContext:(CGContext *)a4 sheetSize:(CGSize)a5;
- (void)recalculateWebKitPageCount;
- (void)removeFileAtURL:(id)a3;
- (void)setPageRanges:(id)a3;
- (void)setPaper:(id)a3;
- (void)setPrinter:(id)a3;
- (void)setPrintingItem:(id)printingItem;
- (void)setTempPreviewFileURL:(id)a3;
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
    v4 = [MEMORY[0x277D75128] sharedApplication];
    [v4 _endBackgroundTask:self->_backgroundTaskIdentifier];

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
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 isAirPrintAllowed];

  return v3;
}

+ (NSSet)printableUTIs
{
  v2 = printableUTIs___printableUTIs;
  if (!printableUTIs___printableUTIs)
  {
    v3 = MEMORY[0x277CBEB98];
    v4 = [*MEMORY[0x277CE1DC0] identifier];
    v5 = [*MEMORY[0x277CE1E08] identifier];
    v6 = [v3 setWithObjects:{v4, v5, 0}];
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

+ (BOOL)isPrintablePDFURL:(id)a3 requireUnlocked:(BOOL)a4 password:(id)a5
{
  v5 = a4;
  v7 = a5;
  v8 = [UIPrintInteractionController createCGPDFDocumentRefWithNSURL:a3];
  if (v8)
  {
    v9 = v8;
    if (v5)
    {
      IsEncrypted = CGPDFDocumentIsEncrypted(v8);
      if (v7 && IsEncrypted)
      {
        CGPDFDocumentUnlockWithPassword(v9, [v7 cStringUsingEncoding:4]);
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

+ (BOOL)isPrintablePDFData:(id)a3 requireUnlocked:(BOOL)a4 password:(id)a5
{
  v5 = a4;
  v7 = a5;
  v8 = [UIPrintInteractionController createCGPDFDocumentRefWithNSData:a3];
  if (v8)
  {
    v9 = v8;
    if (v5)
    {
      IsEncrypted = CGPDFDocumentIsEncrypted(v8);
      if (v7 && IsEncrypted)
      {
        CGPDFDocumentUnlockWithPassword(v9, [v7 cStringUsingEncoding:4]);
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

+ (id)utiForNSURL:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_9;
  }

  if (IsAssetURL(v3))
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

    v11 = v10;
    _Block_object_dispose(&v19, 8);

    goto LABEL_12;
  }

  if ([UIPrintInteractionController isPrintablePDFURL:v4 requireUnlocked:0 password:0])
  {
    v11 = [*MEMORY[0x277CE1E08] identifier];
    goto LABEL_12;
  }

  v12 = CGImageSourceCreateWithURL(v4, 0);
  if (v12)
  {
    v13 = v12;
    v11 = CGImageSourceGetType(v12);
    CFRelease(v13);
  }

  else
  {
LABEL_9:
    v11 = 0;
  }

LABEL_12:

  return v11;
}

+ (id)utiForNSData:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    goto LABEL_6;
  }

  if ([UIPrintInteractionController isPrintablePDFData:v3 requireUnlocked:0 password:0])
  {
    v4 = [*MEMORY[0x277CE1E08] identifier];
    goto LABEL_7;
  }

  v5 = CGImageSourceCreateWithData(v3, 0);
  if (v5)
  {
    v6 = v5;
    v4 = CGImageSourceGetType(v5);
    CFRelease(v6);
  }

  else
  {
LABEL_6:
    v4 = 0;
  }

LABEL_7:

  return v4;
}

+ (BOOL)hasValidPDFHeader:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 length] >= 0xB)
  {
    v5 = [v4 bytes];
    v6 = [v4 length];
    v7 = 4085;
    if ((v6 - 11) < 0xFF5)
    {
      v7 = v6 - 11;
    }

    if (v6 != 11)
    {
      v8 = &v5[v7];
      do
      {
        v9 = memchr(v5, 37, v8 - v5);
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

        v5 = (v10 + 1);
      }

      while (v5 < v8);
    }
  }

  v11 = 0;
LABEL_12:

  return v11;
}

+ (CGPDFDocument)createCGPDFDocumentRefWithNSData:(id)a3
{
  v3 = a3;
  if ([UIPrintInteractionController hasValidPDFHeader:v3]&& (v4 = CGDataProviderCreateWithCFData(v3)) != 0)
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

+ (CGPDFDocument)createCGPDFDocumentRefWithNSURL:(id)a3
{
  v3 = a3;
  v13 = 0;
  v4 = [v3 getResourceValue:&v13 forKey:*MEMORY[0x277CBE7B8] error:0];
  v5 = v13;
  v6 = 0;
  if ([v3 isFileURL] && v4)
  {
    if ([v5 isEqual:*MEMORY[0x277CE1E08]])
    {
      v7 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:v3 error:0];
      v8 = v7;
      if (v7)
      {
        v9 = [v7 readDataUpToLength:4096 error:0];
      }

      else
      {
        v9 = 0;
      }

      if ([UIPrintInteractionController hasValidPDFHeader:v9]&& (v10 = CGDataProviderCreateWithURL(v3)) != 0)
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

- (void)_cancelPreviewQueue:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  previewQueue = self->_previewQueue;
  if (previewQueue)
  {
    if (v4)
    {
      [(NSOperationQueue *)previewQueue cancelAllOperations];
    }

    if (v6)
    {
      v8 = self->_previewQueue;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __70__UIPrintInteractionController__cancelPreviewQueue_completionHandler___block_invoke;
      v9[3] = &unk_279A9BFC8;
      v10 = v6;
      [(NSOperationQueue *)v8 addBarrierBlock:v9];
    }
  }

  else if (v6)
  {
    v6[2](v6);
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

- (BOOL)updatePrintingItems:(id)a3
{
  v110 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(UIPrintInteractionController *)self rendererToUse];

  if (!v5)
  {
    v78 = v4;
    v6 = [MEMORY[0x277CBEB18] array];
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v7 = [(UIPrintInteractionController *)self printingItems];
    v8 = [v7 countByEnumeratingWithState:&v100 objects:v109 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v100 + 1) + 8 * i);
          v13 = [(UIPrintInteractionController *)self _convertItemToPrintableItem:v12];

          if (!v13)
          {
            [v6 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v100 objects:v109 count:16];
      }

      while (v9);
    }

    if ([v6 count])
    {
      v14 = MEMORY[0x277CBEB18];
      v15 = [(UIPrintInteractionController *)self printingItems];
      v16 = [v14 arrayWithArray:v15];

      [v16 removeObjectsInArray:v6];
      [(UIPrintInteractionController *)self setPrintingItems:v16];
    }

    v17 = [(UIPrintInteractionController *)self printingItems];
    v18 = [v17 count];

    if (v18 >= 2)
    {
      v19 = [MEMORY[0x277CBEB18] array];
      v96 = 0u;
      v97 = 0u;
      v98 = 0u;
      v99 = 0u;
      v20 = [(UIPrintInteractionController *)self printingItems];
      v21 = [v20 countByEnumeratingWithState:&v96 objects:v108 count:16];
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
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v96 + 1) + 8 * j);
            v26 = [(UIPrintInteractionController *)self convertedPrintableItem:v25];
            v27 = v26;
            if (v26)
            {
              v28 = CFGetTypeID(v26);
              if (v28 == CGPDFDocumentGetTypeID() && CGPDFDocumentIsEncrypted(v27))
              {
                [v19 addObject:v25];
              }
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v96 objects:v108 count:16];
        }

        while (v22);
      }

      if ([v19 count])
      {
        v29 = MEMORY[0x277CBEB18];
        v30 = [(UIPrintInteractionController *)self printingItems];
        v31 = [v29 arrayWithArray:v30];

        [v31 removeObjectsInArray:v19];
        [(UIPrintInteractionController *)self setPrintingItems:v31];
      }
    }

    [(UIPrintInteractionController *)self resetConvertedPrintableItems];

    v4 = v78;
  }

  v32 = [(UIPrintInteractionController *)self printingItems];
  v33 = [v32 count];

  if (v33)
  {
    v34 = [MEMORY[0x277CCAA00] defaultManager];
    v35 = [MEMORY[0x277CBEB18] array];
    memset(out, 0, sizeof(out));
    uuid_generate_random(out);
    uuid_unparse(out, v106);
    v36 = 0x277CCA000uLL;
    v37 = MEMORY[0x277CCACA8];
    v38 = NSTemporaryDirectory();
    v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:v106];
    v40 = [v37 stringWithFormat:@"%@%@", v38, v39];
    [(UIPrintInteractionController *)self setPrintingItemsTempFolderPath:v40];

    v41 = [(UIPrintInteractionController *)self printingItemsTempFolderPath];
    v92 = 0;
    [v34 createDirectoryAtPath:v41 withIntermediateDirectories:1 attributes:0 error:&v92];
    v42 = v92;

    if (!v42)
    {
      v77 = v33;
      v79 = v4;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v43 = [(UIPrintInteractionController *)self printingItems];
      v44 = [v43 countByEnumeratingWithState:&v88 objects:v105 count:16];
      v82 = v34;
      if (v44)
      {
        v45 = v44;
        v46 = *v89;
        v47 = 0x277CBE000uLL;
        v80 = *v89;
        v81 = v43;
        do
        {
          for (k = 0; k != v45; ++k)
          {
            if (*v89 != v46)
            {
              objc_enumerationMutation(v43);
            }

            v49 = *(*(&v88 + 1) + 8 * k);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v50 = v49;
              if ([v50 isFileURL])
              {
                v51 = v35;
                v52 = *(v36 + 3240);
                [(UIPrintInteractionController *)self printingItemsTempFolderPath];
                v54 = v53 = v47;
                v55 = [v50 lastPathComponent];
                v56 = [v52 stringWithFormat:@"%@/%@", v54, v55];

                v47 = v53;
                v57 = [*(v53 + 3008) fileURLWithPath:v56];
                v87 = 0;
                [v82 copyItemAtURL:v50 toURL:v57 error:&v87];
                v58 = v87;
                if (v58)
                {

                  v35 = v51;
                }

                else
                {
                  v35 = v51;
                  [(UIWindow *)v51 addObject:v57];
                }

                v36 = 0x277CCA000;
                v46 = v80;
                v43 = v81;
              }

              else
              {
                [(UIWindow *)v35 addObject:v50];
              }
            }

            else
            {
              [(UIWindow *)v35 addObject:v49];
            }
          }

          v45 = [v43 countByEnumeratingWithState:&v88 objects:v105 count:16];
        }

        while (v45);
      }

      [(UIPrintInteractionController *)self setPrintingItems:v35];
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v59 = [(UIPrintInteractionController *)self printingItems];
      v60 = [v59 countByEnumeratingWithState:&v83 objects:v104 count:16];
      v33 = v77;
      v4 = v79;
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
              objc_enumerationMutation(v59);
            }

            v64 = [(UIPrintInteractionController *)self _convertItemToPrintableItem:*(*(&v83 + 1) + 8 * m)];
          }

          v61 = [v59 countByEnumeratingWithState:&v83 objects:v104 count:16];
        }

        while (v61);
      }

      v42 = 0;
      v34 = v82;
    }
  }

  else
  {
    v65 = [objc_alloc(MEMORY[0x277D75DA0]) initWithWindowScene:v4];
    alertWindow = self->_alertWindow;
    self->_alertWindow = v65;
    v35 = v65;

    [(UIWindow *)v35 setOpaque:0];
    v67 = [MEMORY[0x277D75348] clearColor];
    [(UIWindow *)v35 setBackgroundColor:v67];

    [(UIWindow *)v35 setWindowLevel:*MEMORY[0x277D772B8]];
    v34 = objc_alloc_init(MEMORY[0x277D75D28]);
    [(UIWindow *)v35 setRootViewController:v34];
    [(UIWindow *)v35 makeKeyAndVisible];
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
    v95 = self;
    v42 = v71;
    v75 = [v72 actionWithTitle:v74 style:0 handler:v93];
    [v42 addAction:v75];

    v33 = 0;
    [v34 presentViewController:v42 animated:0 completion:0];
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

- (BOOL)_presentAnimated:(BOOL)a3 hostingScene:(id)a4 completionHandler:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  if (v7 || ([MEMORY[0x277D75128] sharedApplication], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "_findUISceneForLegacyInterfaceOrientation"), v7 = objc_claimAutoreleasedReturnValue(), v9, v7) || (objc_msgSend(MEMORY[0x277D759A0], "mainScreen"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "_preferredFocusedWindowScene"), v7 = objc_claimAutoreleasedReturnValue(), v10, v7))
  {
    [(UIPrintInteractionController *)self setHostingWindowScene:v7];
    v11 = [(UIPrintInteractionController *)self printingItems];
    v12 = [v11 count] == 0;

    if (!v12 && ![(UIPrintInteractionController *)self updatePrintingItems:v7])
    {
      v20 = 0;
      goto LABEL_19;
    }

    [(UIPrintInteractionController *)self setUsingWebKitFormatter:0];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v13 = [(UIPrintInteractionController *)self printPageRenderer];
    v14 = [v13 printFormatters];

    v15 = [v14 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v15)
    {
      v16 = *v31;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v31 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = [objc_opt_class() description];
          v19 = [v18 isEqualToString:@"_WKWebViewPrintFormatter"];

          if (v19)
          {
            [(UIPrintInteractionController *)self setUsingWebKitFormatter:1];
            goto LABEL_16;
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v30 objects:v38 count:16];
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
    v25 = v8;
    v28 = a3;
    v7 = v7;
    v24 = v7;
    [(UIPrintInteractionController *)self _ensurePDFIsUnlockedFirstAttempt:1 completionHandler:v23];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  else
  {
    NSLog(&cfstr_ErrorAttemptin.isa);
    v7 = 0;
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
  v15 = [(UIPrintInteractionController *)self hostingWindowScene];

  if (!v15)
  {
    v16 = [(UIView *)v13 window];
    v17 = [v16 windowScene];
    [(UIPrintInteractionController *)self setHostingWindowScene:v17];

    v18 = [(UIPrintInteractionController *)self hostingWindowScene];

    if (!v18)
    {
      v19 = [MEMORY[0x277D75128] sharedApplication];
      v20 = [v19 _findUISceneForLegacyInterfaceOrientation];
      [(UIPrintInteractionController *)self setHostingWindowScene:v20];
    }
  }

  v21 = [(UIPrintInteractionController *)self hostingWindowScene];

  if (!v21)
  {
    NSLog(&cfstr_ErrorAttemptin.isa);
LABEL_10:
    v29 = 0;
    goto LABEL_11;
  }

  v22 = [(UIPrintInteractionController *)self printingItems];
  v23 = [v22 count];

  if (v23)
  {
    v24 = [(UIPrintInteractionController *)self hostingWindowScene];
    v25 = [(UIPrintInteractionController *)self updatePrintingItems:v24];

    if (!v25)
    {
      goto LABEL_10;
    }
  }

  v26 = [MEMORY[0x277D75418] currentDevice];
  v27 = [v26 userInterfaceIdiom];

  if (!v27)
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
  v28 = [(UIPrintInteractionController *)self hostingWindowScene];
  v29 = [(UIPrintInteractionController *)self _presentAnimated:v7 hostingScene:v28 completionHandler:v14];

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
  v10 = [(UIPrintInteractionController *)self hostingWindowScene];

  if (!v10)
  {
    v11 = [(UIBarButtonItem *)v8 _viewForPresenting];
    v12 = [v11 window];
    v13 = [v12 windowScene];
    [(UIPrintInteractionController *)self setHostingWindowScene:v13];

    v14 = [(UIPrintInteractionController *)self hostingWindowScene];

    if (!v14)
    {
      v15 = [MEMORY[0x277D75128] sharedApplication];
      v16 = [v15 _findUISceneForLegacyInterfaceOrientation];
      [(UIPrintInteractionController *)self setHostingWindowScene:v16];
    }
  }

  v17 = [(UIPrintInteractionController *)self hostingWindowScene];

  if (!v17)
  {
    NSLog(&cfstr_ErrorAttemptin_0.isa);
LABEL_11:
    v24 = 0;
    goto LABEL_12;
  }

  v18 = [(UIPrintInteractionController *)self printingItems];
  v19 = [v18 count];

  if (v19)
  {
    v20 = [(UIPrintInteractionController *)self hostingWindowScene];
    v21 = [(UIPrintInteractionController *)self updatePrintingItems:v20];

    if (!v21)
    {
      goto LABEL_11;
    }
  }

  v22 = [MEMORY[0x277D75418] currentDevice];
  v23 = [v22 userInterfaceIdiom];

  if (!v23)
  {
    NSLog(&cfstr_WarningUiprint_0.isa);
    v26 = [(UIPrintInteractionController *)self hostingWindowScene];
    v24 = [(UIPrintInteractionController *)self _presentAnimated:v6 hostingScene:v26 completionHandler:v9];

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

  v8 = [(UIPrintInteractionController *)self printingItems];
  if ([v8 count])
  {
LABEL_5:

    goto LABEL_6;
  }

  v9 = [(UIPrintInteractionController *)self printFormatter];
  if (v9)
  {

    goto LABEL_5;
  }

  v40 = [(UIPrintInteractionController *)self printPageRenderer];

  if (!v40)
  {
    NSLog(&cfstr_ErrorAttemptin_1.isa);
LABEL_9:
    v12 = 0;
    goto LABEL_28;
  }

LABEL_6:
  if ([(UIPrintInteractionController *)self printStateActive])
  {
    v10 = [(UIPrintInteractionController *)self printPanelViewController];

    if (v10)
    {
      v11 = [(UIPrintInteractionController *)self printPanelViewController];
      [v11 dismissAnimated:1 completionHandler:0];

      [(UIPrintInteractionController *)self setPrintPanelViewController:0];
    }

    goto LABEL_9;
  }

  [(UIPrintInteractionController *)self setPrintStateActive:1];
  [(UIPrintInteractionController *)self setCompletionHandler:v7];
  v13 = [(UIPrintInteractionController *)self printInfo];
  if (v13)
  {
    v14 = [(UIPrintInteractionController *)self printInfo];
    v15 = [v14 copy];
    [(UIPrintInteractionController *)self setActivePrintInfo:v15];
  }

  else
  {
    v14 = +[UIPrintInfo printInfo];
    [(UIPrintInteractionController *)self setActivePrintInfo:v14];
  }

  v16 = [(UIPrintInteractionController *)self activePrintInfo];
  [v16 setDuplex:0];

  v17 = [(UIPrintInteractionController *)self printingItems];
  v18 = [v17 count];

  if (v18 == 1)
  {
    v19 = [(UIPrintInteractionController *)self printingItems];
    v20 = [v19 objectAtIndexedSubscript:0];

    [(UIPrintInteractionController *)self _updatePrintInfoWithAnnotations];
    if (!v20 || ![(UIPrintInteractionController *)self _printingItemIsReallyTallPDF:v20])
    {
      goto LABEL_19;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [UITallPDFPrintFormatter alloc];
      v22 = [(UIPrintInteractionController *)self activePrintInfo];
      v23 = [v22 pdfPassword];
      v24 = [(UITallPDFPrintFormatter *)v21 initWithPDFURL:v20 pdfPassword:v23];
LABEL_33:
      v42 = v24;
      [(UIPrintInteractionController *)self setPrintFormatter:v24];

      v43 = [(UIPrintInteractionController *)self printFormatter];
      [v43 setPerPageContentInsets:{36.0, 36.0, 36.0, 36.0}];

      goto LABEL_19;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = [UITallPDFPrintFormatter alloc];
      v22 = [(UIPrintInteractionController *)self activePrintInfo];
      v23 = [v22 pdfPassword];
      v24 = [(UITallPDFPrintFormatter *)v41 initWithPDFData:v20 pdfPassword:v23];
      goto LABEL_33;
    }
  }

  else
  {
    [(UIPrintInteractionController *)self _updatePrintInfoWithAnnotations];
    v20 = 0;
  }

LABEL_19:
  v25 = [(UIPrinter *)v6 pkPrinter];
  [(UIPrintInteractionController *)self setPrinter:v25];

  v26 = [(UIPrintInteractionController *)self printer];
  v27 = [v26 printInfoSupported];

  v28 = [(UIPrintInteractionController *)self printer];

  if (v28)
  {
    v29 = [(UIPrintInteractionController *)self printer];
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __65__UIPrintInteractionController_printToPrinter_completionHandler___block_invoke;
    v48[3] = &unk_279A9C090;
    v48[4] = self;
    [(UIPrintInteractionController *)self _setPrinterInfoState:_UIPrinterInfoGetState(v29, v48)];
  }

  else
  {
    v30 = [(UIPrintInteractionController *)self printingProgress];

    if (!v30)
    {
      v31 = [(UIPrintInteractionController *)self printer];
      v32 = [v31 displayName];

      if (!v32 || ![v32 length])
      {
        v33 = [(UIPrinter *)v6 URL];
        v34 = [v33 host];

        v32 = v34;
      }

      v35 = [UIPrintingProgress alloc];
      v36 = [(UIPrintInteractionController *)self hostingWindowScene];
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __65__UIPrintInteractionController_printToPrinter_completionHandler___block_invoke_2;
      v47[3] = &unk_279A9BEE0;
      v47[4] = self;
      v37 = [(UIPrintingProgress *)v35 initWithPrinterName:v32 forceDisplayAsAlert:1 hostingWindowScene:v36 cancelHandler:v47];
      [(UIPrintInteractionController *)self setPrintingProgress:v37];
    }

    v38 = [(UIPrintInteractionController *)self printingProgress];
    [v38 setPrinterInfoState:0];

    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __65__UIPrintInteractionController_printToPrinter_completionHandler___block_invoke_3;
    v44[3] = &unk_279A9C0B8;
    v45 = v6;
    v46 = self;
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
    v3 = [(UIPrintInteractionController *)self activePrintInfo];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CGSize)_printItemContentSize:(id)a3
{
  v4 = a3;
  v5 = [(UIPrintInteractionController *)self activePrintInfo];
  if (v5)
  {
    v6 = [(UIPrintInteractionController *)self activePrintInfo];
    v7 = ([v6 outputType] & 0xFFFFFFFFFFFFFFFDLL) == 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(UIPrintInteractionController *)self printer];
  v9 = [v8 availableRollPapersPreferBorderless:v7];
  v10 = [v9 count];

  width = *MEMORY[0x277CBF3A8];
  height = *(MEMORY[0x277CBF3A8] + 8);
  if (v10 && v4)
  {
    v13 = [(UIPrintInteractionController *)self convertedPrintableItem:v4];
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
  v5 = [(UIPrintInteractionController *)self printingItems];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(UIPrintInteractionController *)self printingItems];
    v8 = [v7 objectAtIndexedSubscript:0];

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
  v3 = [(UIPrintInteractionController *)self printingItems];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v3);
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

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v3 = [(UIPrintInteractionController *)self activePrintInfo];
  v10 = ([v3 outputType] & 0xFFFFFFFFFFFFFFFDLL) != 1;
LABEL_11:

  return v10;
}

- (BOOL)_canShowPageRange
{
  if ([(UIPrintInteractionController *)self showsPageRange]|| (v3 = [(UIPrintInteractionController *)self _canPreviewContent]))
  {
    v3 = [(UIPrintInteractionController *)self printStateActive];
    if (v3)
    {
      v4 = [(UIPrintInteractionController *)self printPageRenderer];
      if (v4 || ([(UIPrintInteractionController *)self formatterRenderer], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
      {
      }

      else
      {
        v5 = [(UIPrintInteractionController *)self printingItems];
        v6 = [v5 count];

        if (v6 != 1)
        {
          LOBYTE(v3) = 0;
          return v3;
        }
      }

      if ([(UIPrintInteractionController *)self pageCount]<= 1)
      {

        LOBYTE(v3) = [(UIPrintInteractionController *)self _canShowScaling];
      }

      else
      {
        LOBYTE(v3) = 1;
      }
    }
  }

  return v3;
}

- (BOOL)_canShowPaperList
{
  if (![(UIPrintInteractionController *)self printStateActive])
  {
    return 0;
  }

  v3 = [(UIPrintInteractionController *)self activePrintInfo];
  v4 = ([v3 outputType] & 0xFFFFFFFFFFFFFFFDLL) == 1 || -[UIPrintInteractionController showsPaperSelectionForLoadedPapers](self, "showsPaperSelectionForLoadedPapers");

  return v4;
}

- (BOOL)_canShowColor
{
  if (![(UIPrintInteractionController *)self printStateActive])
  {
    return 0;
  }

  v3 = [(UIPrintInteractionController *)self activePrintInfo];
  if ([v3 outputType] == 2)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(UIPrintInteractionController *)self activePrintInfo];
    v4 = [v5 outputType] != 3;
  }

  return v4;
}

- (BOOL)_canShowStaple
{
  if (![(UIPrintInteractionController *)self printStateActive])
  {
    return 0;
  }

  v3 = [(UIPrintInteractionController *)self activePrintInfo];
  v4 = ([v3 outputType] & 0xFFFFFFFFFFFFFFFDLL) == 0;

  return v4;
}

- (BOOL)_canShowPunch
{
  if (![(UIPrintInteractionController *)self printStateActive])
  {
    return 0;
  }

  v3 = [(UIPrintInteractionController *)self activePrintInfo];
  v4 = ([v3 outputType] & 0xFFFFFFFFFFFFFFFDLL) == 0;

  return v4;
}

- (BOOL)_canShowAnnotations
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = [(UIPrintInteractionController *)self printingItems];
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v3);
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

      v5 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
  v3 = [(UIPrintInteractionController *)self printingItems];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = [(UIPrintInteractionController *)self convertedPrintableItem:*(*(&v13 + 1) + 8 * i)];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [(UIPrintInteractionController *)self printInfo];
          v10 = [v9 outputType] & 0xFFFFFFFFFFFFFFFDLL;

          if (v10 == 1)
          {

            v11 = 0;
            goto LABEL_12;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  v3 = [(UIPrintInteractionController *)self printingItems];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = [(UIPrintInteractionController *)self convertedPrintableItem:*(*(&v12 + 1) + 8 * i)];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 || v8 && (v9 = CFGetTypeID(v8), v9 == CGPDFDocumentGetTypeID()))
        {

          v10 = 0;
          goto LABEL_16;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  v3 = [(UIPrintInteractionController *)self printingItems];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = [(UIPrintInteractionController *)self convertedPrintableItem:*(*(&v12 + 1) + 8 * i)];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 || v8 && (v9 = CFGetTypeID(v8), v9 == CGPDFDocumentGetTypeID()))
        {

          v10 = 0;
          goto LABEL_16;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (void)setPageRanges:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([(UIPrintInteractionController *)self printStateActive])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v5;
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
    objc_storeStrong(&self->_pageRanges, a3);
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

- (void)setPrinter:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (![(UIPrintInteractionController *)self printStateActive])
  {
    goto LABEL_31;
  }

  printer = self->_printer;
  if (printer == v5)
  {
    goto LABEL_31;
  }

  v7 = printer;
  objc_sync_enter(v7);
  objc_storeStrong(&self->_printer, a3);
  objc_sync_exit(v7);

  [(UIPrintInteractionController *)self setPaper:0];
  v30 = self;
  v8 = [(UIPrintInteractionController *)self activePrintInfo];
  [v8 _updateWithPrinter:v5];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v9 = [MEMORY[0x277D41090] lastUsedPrinters];
  v10 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
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
        objc_enumerationMutation(v9);
      }

      if (v5)
      {
        v15 = *(*(&v32 + 1) + 8 * i);
        v16 = [v15 objectForKey:v31];
        v17 = [(PKPrinter *)v5 name];
        v18 = [v16 isEqualToString:v17];

        if (v18)
        {
          v19 = [v15 objectForKey:v29];

          if ((([v19 isEqualToString:v28] & 1) != 0 || objc_msgSend(v19, "isEqualToString:", v26)) && (-[UIPrintInteractionController activePrintInfo](v30, "activePrintInfo", v26), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "duplex"), v20, !v21))
          {
            v22 = 1;
LABEL_16:
            v23 = [(UIPrintInteractionController *)v30 activePrintInfo];
            [v23 setDuplex:v22];
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

    v11 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
  }

  while (v11);

  if (!v12)
  {
LABEL_23:
    v24 = [(UIPrintInteractionController *)v30 activePrintInfo];
    if ([v24 duplex])
    {
      goto LABEL_28;
    }

    if ([(PKPrinter *)v5 type]== 3)
    {

      goto LABEL_27;
    }

    v25 = [(PKPrinter *)v5 type];

    if (v25 == 2)
    {
LABEL_27:
      v24 = [(UIPrintInteractionController *)v30 activePrintInfo];
      [v24 setDuplex:1];
LABEL_28:
    }

    v12 = 0;
  }

LABEL_31:
}

- (UIPrintPaper)paper
{
  v2 = self;
  v96 = *MEMORY[0x277D85DE8];
  p_paper = &self->_paper;
  v4 = self->_paper;
  objc_sync_enter(v4);
  v5 = *p_paper;
  objc_sync_exit(v4);

  if ([(UIPrintInteractionController *)v2 printStateActive]&& !v5)
  {
    v73 = p_paper;
    v6 = [(UIPrintInteractionController *)v2 printer];

    if (v6)
    {
      v7 = [(UIPrintInteractionController *)v2 printer];
      v8 = [(UIPrintInteractionController *)v2 activePrintInfo];
      v9 = [v8 duplex];
      v10 = [(UIPrintInteractionController *)v2 activePrintInfo];
      v11 = [v10 outputType];
      [(UIPrintInteractionController *)v2 _printItemContentSize];
      v12 = [UIPrintPaper _readyPaperListForPrinter:v7 withDuplexMode:v9 forContentType:v11 contentSize:?];
    }

    else
    {
      v7 = [(UIPrintInteractionController *)v2 activePrintInfo];
      v12 = +[UIPrintPaper _genericPaperListForOutputType:](UIPrintPaper, "_genericPaperListForOutputType:", [v7 outputType]);
    }

    v13 = [(UIPrintInteractionController *)v2 activePrintInfo];
    v14 = [v13 outputType];

    v15 = [(UIPrintInteractionController *)v2 printPageRenderer];

    if (v15)
    {
      v16 = [(UIPrintInteractionController *)v2 printPageRenderer];
      [v16 paperRect];
      v18 = v17;
      v20 = v19;
    }

    else
    {
      v18 = *MEMORY[0x277CBF3A8];
      v20 = *(MEMORY[0x277CBF3A8] + 8);
    }

    p_paper = v73;
    v21 = v14 & 0xFFFFFFFFFFFFFFFDLL;
    if (v18 == 0.0)
    {
      v22 = [(UIPrintInteractionController *)v2 printer];

      if (v22)
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
              v30 = v2;
              v31 = [(UIPrintInteractionController *)v2 printer];
              v32 = [v31 name];
              v33 = [v29 isEqualToString:v32];

              if (v33)
              {
                v34 = [v28 objectForKey:v74];
                if (v34)
                {
                  v35 = v34;
                  [v34 CGSizeValue];
                  v18 = v36;
                  v20 = v37;

                  v2 = v30;
                  goto LABEL_22;
                }
              }

              v2 = v30;
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
      v38 = [(UIPrintInteractionController *)v2 activePrintInfo];
      v39 = +[UIPrintPaper _defaultPaperForOutputType:](UIPrintPaper, "_defaultPaperForOutputType:", [v38 outputType]);
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

    v65 = [(UIPrintInteractionController *)v2 _updatePrintPaper];
    v66 = [(UIPrintInteractionController *)v2 printPaper];
    if (!v66)
    {
      if (![v12 count])
      {
        v5 = 0;
        goto LABEL_78;
      }

      v66 = [v12 objectAtIndex:0];
    }

    v5 = v66;
LABEL_78:
  }

  v67 = *p_paper;
  objc_sync_enter(v67);
  if (*p_paper != v5)
  {
    objc_storeStrong(p_paper, v5);
  }

  objc_sync_exit(v67);

  if ([(UIPrintInteractionController *)v2 printStateActive])
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

- (void)setPaper:(id)a3
{
  v6 = a3;
  v5 = self->_paper;
  objc_sync_enter(v5);
  if ([(UIPrintInteractionController *)self printStateActive]&& self->_paper != v6)
  {
    objc_storeStrong(&self->_paper, a3);
  }

  objc_sync_exit(v5);
}

- (NSURL)tempPreviewFileURL
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_tempPreviewFileURL;
  objc_sync_exit(v2);

  return v3;
}

- (void)setTempPreviewFileURL:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  if (obj->_tempPreviewFileURL && ([(NSURL *)v4 isEqual:?]& 1) == 0)
  {
    [(UIPrintInteractionController *)obj removeFileAtURL:obj->_tempPreviewFileURL];
  }

  tempPreviewFileURL = obj->_tempPreviewFileURL;
  obj->_tempPreviewFileURL = v4;

  objc_sync_exit(obj);
}

- (void)removeFileAtURL:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  if (v3)
  {
    v5 = [v3 path];
    v6 = [v4 fileExistsAtPath:v5];

    if (v6)
    {
      v10 = 0;
      v7 = [v4 removeItemAtURL:v3 error:&v10];
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
    v3 = [(UIPrintInteractionController *)self activePrintInfo];
    [v3 setImagePDFAnnotations:1];
  }
}

- (id)rendererToUse
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(UIPrintInteractionController *)v2 printPageRenderer];
  if (v3)
  {
  }

  else
  {
    v4 = [(UIPrintInteractionController *)v2 printFormatter];

    if (!v4)
    {
      goto LABEL_22;
    }
  }

  v5 = [(UIPrintInteractionController *)v2 printPageRenderer];
  if (!v5)
  {
    v15 = [(UIPrintInteractionController *)v2 printFormatter];
    if (!v15)
    {
      goto LABEL_6;
    }

    v16 = [(UIPrintInteractionController *)v2 formatterRenderer];

    if (v16)
    {
      goto LABEL_6;
    }

    v17 = objc_alloc_init(UIPrintPageRenderer);
    [(UIPrintInteractionController *)v2 setFormatterRenderer:v17];

    v5 = [(UIPrintInteractionController *)v2 formatterRenderer];
    v18 = [(UIPrintInteractionController *)v2 printFormatter];
    [v5 addPrintFormatter:v18 startingAtPageAtIndex:0];
  }

LABEL_6:
  v6 = [(UIPrintInteractionController *)v2 formatterRenderer];

  if (v6)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = [(UIPrintInteractionController *)v2 formatterRenderer];
    v8 = [v7 printFormatters];

    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          v13 = [(UIPrintInteractionController *)v2 activePrintInfo];
          [v12 setImagePDFAnnotations:{objc_msgSend(v13, "imagePDFAnnotations")}];
        }

        v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v9);
    }
  }

  v14 = [(UIPrintInteractionController *)v2 printPageRenderer];
  if (v14)
  {
    [(UIPrintInteractionController *)v2 printPageRenderer];
  }

  else
  {
    [(UIPrintInteractionController *)v2 formatterRenderer];
  }
  v4 = ;

LABEL_22:
  objc_sync_exit(v2);

  return v4;
}

- (void)_updatePageCount
{
  v74 = *MEMORY[0x277D85DE8];
  v3 = [(UIPrintInteractionController *)self pageCount];
  v4 = [(UIPrintInteractionController *)self _updatePrintPaper];
  v5 = [(UIPrintInteractionController *)self rendererToUse];
  if (v5)
  {
    v6 = [(UIPrintInteractionController *)self printPaper];
    [v6 paperSize];
    v8 = v7;
    v9 = [(UIPrintInteractionController *)self printPaper];
    [v9 paperSize];
    [v5 setPaperRect:{0.0, 0.0, v8, v10}];

    v11 = [(UIPrintInteractionController *)self printPaper];
    v12 = [(UIPrintInteractionController *)self activePrintInfo];
    [v11 _printableRectForDuplex:{objc_msgSend(v12, "duplex") != 0}];
    [v5 setPrintableRect:?];

    [v5 paperRect];
    if (CGRectIsEmpty(v75))
    {
      goto LABEL_15;
    }

    v13 = [v5 _numberOfPages];
    v14 = self;
    goto LABEL_14;
  }

  v15 = [(UIPrintInteractionController *)self printingItems];
  v16 = [v15 count];

  v17 = [(UIPrintInteractionController *)self printingItems];
  v18 = v17;
  if (v16 == 1)
  {
    v19 = [v17 objectAtIndexedSubscript:0];
    v20 = [(UIPrintInteractionController *)self convertedPrintableItem:v19];

    if (!v20 || (v21 = CFGetTypeID(v20), v21 != CGPDFDocumentGetTypeID()))
    {
      v24 = 1;
      goto LABEL_12;
    }

    NumberOfPages = CGPDFDocumentGetNumberOfPages(v20);
LABEL_10:
    v24 = NumberOfPages;
LABEL_12:
    [(UIPrintInteractionController *)self setPageCount:v24];

    goto LABEL_15;
  }

  v23 = [v17 count];

  v14 = self;
  if (v23 >= 2)
  {
    v20 = [(UIPrintInteractionController *)self printingItems];
    NumberOfPages = [v20 count];
    goto LABEL_10;
  }

  v13 = 0;
LABEL_14:
  [(UIPrintInteractionController *)v14 setPageCount:v13];
LABEL_15:
  if ([(UIPrintInteractionController *)self pageCount]== 0x7FFFFFFFFFFFFFFFLL)
  {
    [(UIPrintInteractionController *)self setPageCount:1];
  }

  v25 = [(UIPrintInteractionController *)self pageCount];
  v26 = [(UIPrintInteractionController *)self printingItems];
  v27 = [v26 count];

  if (v27 >= 2)
  {
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v28 = [(UIPrintInteractionController *)self printingItems];
    v29 = [v28 countByEnumeratingWithState:&v66 objects:v73 count:16];
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
            objc_enumerationMutation(v28);
          }

          v33 = [(UIPrintInteractionController *)self convertedPrintableItem:*(*(&v66 + 1) + 8 * i)];
          v34 = v33;
          if (v33)
          {
            v35 = CFGetTypeID(v33);
            if (v35 == CGPDFDocumentGetTypeID())
            {
              v25 = v25 + CGPDFDocumentGetNumberOfPages(v34) - 1;
            }
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v66 objects:v73 count:16];
      }

      while (v30);
    }
  }

  v36 = [MEMORY[0x277CCACC8] currentThread];
  v37 = [v36 isCancelled];

  if ((v37 & 1) == 0)
  {
    v38 = [(UIPrintInteractionController *)self activePrintInfo];
    v39 = [v38 pageCount];

    if (v39 != v25)
    {
      v40 = [(UIPrintInteractionController *)self activePrintInfo];
      [v40 setPageCount:v25];
    }

    v41 = [(UIPrintInteractionController *)self pageRanges];
    if (v41)
    {
      v42 = v41;
      v43 = [(UIPrintInteractionController *)self pageRanges];
      if ([v43 count])
      {
        v44 = [(UIPrintInteractionController *)self pageCount];

        if (v44 == v3)
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

    v47 = [(UIPrintInteractionController *)self pageRanges];
    v48 = [v47 copy];
    v49 = [(UIPrintInteractionController *)self activePrintInfo];
    [v49 setPageRanges:v48];

LABEL_38:
    [(UIPrintInteractionController *)self setPageCountWithRanges:0];
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v50 = [(UIPrintInteractionController *)self pageRanges];
    v51 = [v50 countByEnumeratingWithState:&v62 objects:v71 count:16];
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
            objc_enumerationMutation(v50);
          }

          [*(*(&v62 + 1) + 8 * j) rangeValue];
          [(UIPrintInteractionController *)self setPageCountWithRanges:[(UIPrintInteractionController *)self pageCountWithRanges]+ v55];
        }

        v52 = [v50 countByEnumeratingWithState:&v62 objects:v71 count:16];
      }

      while (v52);
    }

    v56 = [(UIPrintInteractionController *)self pageCountWithRanges];
    if (v56 > [(UIPrintInteractionController *)self pageCount])
    {
      v57 = [MEMORY[0x277CCAE60] valueWithRange:{0, -[UIPrintInteractionController pageCount](self, "pageCount")}];
      v70 = v57;
      v58 = [MEMORY[0x277CBEA60] arrayWithObjects:&v70 count:1];
      [(UIPrintInteractionController *)self setPageRanges:v58];

      v59 = [(UIPrintInteractionController *)self pageRanges];
      v60 = [v59 copy];
      v61 = [(UIPrintInteractionController *)self activePrintInfo];
      [v61 setPageRanges:v60];

      [(UIPrintInteractionController *)self setPageCountWithRanges:[(UIPrintInteractionController *)self pageCount]];
    }
  }
}

- (BOOL)isPhone
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 model];
  v4 = [v3 rangeOfString:@"iPhone"];

  return v4 != 0x7FFFFFFFFFFFFFFFLL;
}

- (BOOL)_setupPrintPanel:(id)a3 forPDFGenerationOnly:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (!+[UIPrintInteractionController isPrintingAvailable]&& !v4)
  {
    goto LABEL_10;
  }

  v7 = [(UIPrintInteractionController *)self printingItems];
  if ([v7 count])
  {
LABEL_6:

    goto LABEL_7;
  }

  v8 = [(UIPrintInteractionController *)self printFormatter];
  if (v8)
  {

    goto LABEL_6;
  }

  v48 = [(UIPrintInteractionController *)self printPageRenderer];

  if (!v48)
  {
    NSLog(&cfstr_ErrorAttemptin_1.isa);
LABEL_10:
    v11 = 0;
    goto LABEL_47;
  }

LABEL_7:
  if ([(UIPrintInteractionController *)self printStateActive])
  {
    v9 = [(UIPrintInteractionController *)self printPanelViewController];

    if (v9)
    {
      v10 = [(UIPrintInteractionController *)self printPanelViewController];
      [v10 dismissAnimated:1 completionHandler:0];
    }

    goto LABEL_10;
  }

  [(UIPrintInteractionController *)self setPrintStateActive:1];
  [(UIPrintInteractionController *)self setCompletionHandler:v6];
  v12 = [(UIPrintInteractionController *)self printInfo];
  if (v12)
  {
    v13 = [(UIPrintInteractionController *)self printInfo];
    v14 = [v13 copy];
    [(UIPrintInteractionController *)self setActivePrintInfo:v14];
  }

  else
  {
    v13 = +[UIPrintInfo printInfo];
    [(UIPrintInteractionController *)self setActivePrintInfo:v13];
  }

  v15 = [(UIPrintInteractionController *)self pdfPassword];
  v16 = [(UIPrintInteractionController *)self activePrintInfo];
  [v16 setPdfPassword:v15];

  v17 = [(UIPrintInteractionController *)self printInfo];
  if (v17)
  {
    goto LABEL_15;
  }

  v31 = [(UIPrintInteractionController *)self printingItems];
  v32 = [v31 count];

  if (v32 == 1)
  {
    v33 = [(UIPrintInteractionController *)self printingItems];
    v17 = [v33 objectAtIndexedSubscript:0];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = [v17 path];
      v35 = [v34 lastPathComponent];
      v36 = [v35 stringByDeletingPathExtension];
      v37 = [(UIPrintInteractionController *)self activePrintInfo];
      [v37 setJobName:v36];
    }

LABEL_15:
  }

  v18 = [(UIPrintInteractionController *)self activePrintInfo];
  v19 = [v18 outputType] & 0xFFFFFFFFFFFFFFFDLL;

  if (v19 == 1)
  {
    v20 = [(UIPrintInteractionController *)self activePrintInfo];
    [v20 setDuplex:0];
  }

  [(UIPrintInteractionController *)self _updatePrintInfoWithAnnotations];
  v21 = [(UIPrintInteractionController *)self printingItems];
  if ([v21 count] == 1)
  {
    v22 = [(UIPrintInteractionController *)self printingItems];
    v23 = [v22 objectAtIndexedSubscript:0];

    if (!v23 || ![(UIPrintInteractionController *)self _printingItemIsReallyTallPDF:v23])
    {
      goto LABEL_25;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [UITallPDFPrintFormatter alloc];
      v25 = [(UIPrintInteractionController *)self activePrintInfo];
      v26 = [v25 pdfPassword];
      v27 = [(UITallPDFPrintFormatter *)v24 initWithPDFURL:v23 pdfPassword:v26];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_25;
      }

      v49 = [UITallPDFPrintFormatter alloc];
      v25 = [(UIPrintInteractionController *)self activePrintInfo];
      v26 = [v25 pdfPassword];
      v27 = [(UITallPDFPrintFormatter *)v49 initWithPDFData:v23 pdfPassword:v26];
    }

    v50 = v27;
    [(UIPrintInteractionController *)self setPrintFormatter:v27];

    v21 = [(UIPrintInteractionController *)self printFormatter];
    [v21 setPerPageContentInsets:{36.0, 36.0, 36.0, 36.0}];
  }

  else
  {
    v23 = 0;
  }

LABEL_25:
  if (!v4)
  {
    v28 = [(UIPrintInteractionController *)self delegate];
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([v28 printInteractionControllerParentViewController:self], (v29 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v30 = v29;
    }

    else
    {
      v38 = [(UIPrintInteractionController *)self printActivityDelegate];
      v39 = objc_opt_respondsToSelector();

      if ((v39 & 1) == 0 || (-[UIPrintInteractionController printActivityDelegate](self, "printActivityDelegate"), v40 = objc_claimAutoreleasedReturnValue(), [v40 printInteractionControllerParentViewController:self], v30 = objc_claimAutoreleasedReturnValue(), v40, !v30))
      {
        v41 = [(UIPrintInteractionController *)self printActivityDelegate];
        v42 = objc_opt_respondsToSelector();

        if (v42)
        {
          v43 = [(UIPrintInteractionController *)self printActivityDelegate];
          v44 = [v43 printInteractionControllerWindowForPresentation:self];
          v45 = [v44 rootViewController];

          v46 = [v45 presentedViewController];

          if (v46)
          {
            do
            {
              v30 = [v45 presentedViewController];

              v47 = [v30 presentedViewController];

              v45 = v30;
            }

            while (v47);
          }

          else
          {
            v30 = v45;
          }
        }

        else
        {
          v30 = 0;
        }
      }
    }

    v51 = [[UIPrintPanelViewController alloc] initWithPrintInterationController:self inParentController:v30 usingSplitView:[(UIPrintInteractionController *)self isPhone]^ 1];
    [(UIPrintInteractionController *)self setPrintPanelViewController:v51];
  }

  v11 = 1;
LABEL_47:

  return v11;
}

- (void)_generatePDFWithNupForPrintingCompletion:(id)a3
{
  v63 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(UIPrintInteractionController *)self rendererToUse];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 numberOfPages];
  }

  else
  {
    v8 = [(UIPrintInteractionController *)self printingItems];
    v7 = [v8 count];
  }

  v9 = [(UIPrintInteractionController *)self _tempFilePath];
  v10 = [(UIPrintInteractionController *)self _newPDFURLWithPath:v9 isContentManaged:[(UIPrintInteractionController *)self isContentManaged]];

  [(UIPrintInteractionController *)self _mediaRect];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [(UIPrintInteractionController *)self activePrintInfo];
  [v19 scalingFactor];
  v21 = v16 * v20;

  v22 = [(UIPrintInteractionController *)self activePrintInfo];
  [v22 scalingFactor];
  v24 = v18 * v23;

  v25 = [(UIPrintInteractionController *)self _newSaveContext:v10 withMediaRect:v12, v14, v21, v24];
  if (v6)
  {
    v56 = v10;
    v57 = v4;
    v26 = [(UIPrintInteractionController *)self _fullPagesRange];
    [v6 prepareForDrawingPages:{v26, v27}];
    [v6 _startSaveContext:v25];
    v28 = [(UIPrintInteractionController *)self activePrintInfo];
    v29 = [v28 pageRanges];

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v30 = v29;
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
            v37 = [v35 rangeValue];
            [v35 rangeValue];
            if (j >= v38 + v37)
            {
              break;
            }

            v39 = [(UIPrintInteractionController *)self activePrintInfo];
            [v39 scalingFactor];
            [v6 _drawPage:j withScale:1 drawingToPDF:?];
          }
        }

        v32 = [v30 countByEnumeratingWithState:&v58 objects:v62 count:16];
      }

      while (v32);
    }

    [v6 _endSaveContext];
    v10 = v56;
    v4 = v57;
    goto LABEL_25;
  }

  v40 = [(UIPrintInteractionController *)self printingItems];
  v41 = [v40 count];

  v42 = [(UIPrintInteractionController *)self printingItems];
  v43 = v42;
  if (v41 == 1)
  {
    v44 = [v42 objectAtIndex:0];

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

    v46 = [(UIPrintInteractionController *)self _tempFilePath];
    v45 = [(UIPrintInteractionController *)self _newPDFURLWithPath:v46 isContentManaged:[(UIPrintInteractionController *)self isContentManaged]];

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

  v52 = [v42 count];

  if (v52 >= 2 && v7)
  {
    for (k = 0; k != v7; ++k)
    {
      if (![(UIPrintInteractionController *)self printStateActive])
      {
        break;
      }

      v54 = [(UIPrintInteractionController *)self printingItems];
      v55 = [v54 objectAtIndex:k];

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
    v49 = [(UIPrintInteractionController *)self activePrintInfo];
    v50 = [(UIPrintInteractionController *)self printPaper];
    v51 = redrawPDFWithNUp(v10, v49, v50);

    v10 = v51;
  }

  v4[2](v4, v10);
}

- (id)redrawPDFwithPageRange:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = CGPDFDocumentCreateWithURL(a3);
  v39 = self;
  v5 = [(UIPrintInteractionController *)self activePrintInfo];
  v6 = [v5 pageRanges];
  v7 = [v6 copy];

  v8 = 0;
  if (!v7 || !v4)
  {
    goto LABEL_24;
  }

  v9 = [(UIPrintInteractionController *)v39 activePrintInfo];
  v10 = [v9 pdfPassword];
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = v10;
  IsEncrypted = CGPDFDocumentIsEncrypted(v4);

  if (IsEncrypted)
  {
    v9 = [(UIPrintInteractionController *)v39 activePrintInfo];
    v13 = [v9 pdfPassword];
    CGPDFDocumentUnlockWithPassword(v4, [v13 cStringUsingEncoding:4]);

LABEL_6:
  }

  if (!CGPDFDocumentAllowsPrinting(v4))
  {
    v8 = 0;
    goto LABEL_27;
  }

  v14 = [(UIPrintInteractionController *)v39 _tempFilePath];
  v8 = [(UIPrintInteractionController *)v39 _newPDFURLWithPath:v14 isContentManaged:[(UIPrintInteractionController *)v39 isContentManaged]];

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
          v23 = [v22 rangeValue];
          v24 = [v22 rangeValue];
          [v22 rangeValue];
          if (v23 < v25 + v24)
          {
            do
            {
              ++v23;
              v26 = v4;
              v27 = CGPDFDocumentGetPage(v4, v23);
              v28 = [MEMORY[0x277CBEB38] dictionary];
              getPDFPageProperties(v28, v27);
              CGPDFContextBeginPage(v20, v28);
              v29 = [(UIPrintInteractionController *)v39 activePrintInfo];
              v30 = [v29 imagePDFAnnotations];

              if (v30)
              {
                CGContextDrawPDFPageWithAnnotations();
              }

              else
              {
                CGContextDrawPDFPage(v20, v27);
              }

              CGContextEndPage(v20);

              v31 = [v22 rangeValue];
              [v22 rangeValue];
              v4 = v26;
            }

            while (v23 < v32 + v31);
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

- (id)_newPDFURLWithPath:(id)a3 isContentManaged:(BOOL)a4
{
  v4 = a4;
  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:a3 isDirectory:0];
  [v5 ui_setIsContentManaged:v4];
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

- (void)_updateRendererWithQuality:(int64_t)a3
{
  obj = [(UIPrintInteractionController *)self rendererToUse];
  objc_sync_enter(obj);
  self->_currentRenderingQuality = [obj currentRenderingQualityForRequestedRenderingQuality:a3];
  [obj setRequestedRenderingQuality:a3];
  objc_sync_exit(obj);
}

- (_NSRange)_fullPagesRange
{
  if ([(UIPrintInteractionController *)self _pageRendererAvailable])
  {
    v3 = [(UIPrintInteractionController *)self pageCount];
  }

  else
  {
    v4 = [(UIPrintInteractionController *)self printingItems];
    v5 = [v4 count];

    if (!v5)
    {
      v3 = 0;
      v7 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_6;
    }

    v6 = [(UIPrintInteractionController *)self printingItems];
    v3 = [v6 count];
  }

  v7 = 0;
LABEL_6:
  v8 = v3;
  result.length = v8;
  result.location = v7;
  return result;
}

- (BOOL)_isPageCancelled:(id)a3
{
  v4 = a3;
  v5 = [(UIPrintInteractionController *)self previewStates];
  objc_sync_enter(v5);
  v6 = [(UIPrintInteractionController *)self previewStates];
  if ([v6 containsObject:v4])
  {
    v7 = [v4 cancelled];
  }

  else
  {
    v7 = 1;
  }

  objc_sync_exit(v5);
  return v7;
}

- (BOOL)_pageRendererAvailable
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(UIPrintInteractionController *)v2 printPageRenderer];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(UIPrintInteractionController *)v2 printFormatter];
    v4 = v5 != 0;
  }

  objc_sync_exit(v2);
  return v4;
}

- (CGRect)_mediaRect
{
  v3 = [(UIPrintInteractionController *)self rendererToUse];
  v4 = v3;
  if (v3)
  {
    [v3 paperRect];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v13 = [(UIPrintInteractionController *)self printInfo];
    if (v13)
    {
      v14 = [(UIPrintInteractionController *)self printInfo];
      v15 = [v14 outputType];
    }

    else
    {
      v15 = 1;
    }

    v16 = [(UIPrintInteractionController *)self printPaper];
    if (v16)
    {
      [(UIPrintInteractionController *)self printPaper];
    }

    else
    {
      [UIPrintPaper _defaultPaperForOutputType:v15];
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

  v4 = [(UIPrintInteractionController *)self printingItems];
  if (![v4 count])
  {
    v6 = 0;
    v3 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v5 = [(UIPrintInteractionController *)self printingItems];
  v6 = [v5 objectAtIndexedSubscript:0];

  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v6;
      [v4 ui_setIsContentManaged:{-[UIPrintInteractionController isContentManaged](self, "isContentManaged")}];
      if (!IsAssetURL(v4) && IsPDFURL(v4) && [(UIPrintInteractionController *)self _canPrintURL:v4])
      {
        v3 = v4;
      }

      else
      {
        v3 = 0;
      }

      v6 = v4;
      goto LABEL_14;
    }
  }

  v3 = 0;
LABEL_15:

LABEL_16:

  return v3;
}

- (void)_generatePDFWithCompletionHandler:(id)a3
{
  v5 = a3;
  v6 = [v5 copy];
  v7 = [(UIPrintInteractionController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 printInteractionControllerWillStartJob:self];
  }

  v8 = [(UIPrintInteractionController *)self _printingItemPrintablePDFURL];
  v9 = v8;
  if (!v5 || !v8)
  {
    goto LABEL_15;
  }

  [(UIPrintInteractionController *)self _printablePDFURLSize:v8];
  v11 = v10;
  v13 = v12;
  v14 = [(UIPrintInteractionController *)self paper];
  [v14 paperSize];
  if (v11 != v16 || v13 != v15)
  {
    goto LABEL_14;
  }

  v17 = [(UIPrintInteractionController *)self _canShowAnnotations];
  if (v17)
  {
    v3 = [(UIPrintInteractionController *)self activePrintInfo];
    if (([v3 imagePDFAnnotations] & 1) == 0)
    {

LABEL_14:
      goto LABEL_15;
    }
  }

  v18 = [(UIPrintInteractionController *)self pageCount];
  v19 = [(UIPrintInteractionController *)self pageCountWithRanges];
  if (v17)
  {
  }

  if (v18 == v19)
  {
    [(UIPrintInteractionController *)self _updatePageCount];
    (*(v5 + 2))(v5, v9, 0);
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
  v20 = [(UIPrintInteractionController *)self previewStates];

  if (!v20)
  {
    v21 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:2];
    [(UIPrintInteractionController *)self setPreviewStates:v21];
  }

  v22 = [(UIPrintInteractionController *)self previewStates];
  objc_sync_enter(v22);
  v23 = [(UIPrintInteractionController *)self previewStates];
  [v23 addObject:v30[5]];

  objc_sync_exit(v22);
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
  v2 = [(UIPrintInteractionController *)self activePrintInfo];
  v3 = [v2 pageCount];

  return v3;
}

- (id)getPrintingItemForPageNum:(int64_t)a3 pdfItemPageNum:(int64_t *)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [(UIPrintInteractionController *)self printingItems];
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v20 = a4;
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
          objc_enumerationMutation(v7);
        }

        v10 = *(*(&v21 + 1) + 8 * v13);

        v16 = [(UIPrintInteractionController *)self convertedPrintableItem:v10];
        v17 = v16;
        if (v16 && (v18 = CFGetTypeID(v16), v18 == CGPDFDocumentGetTypeID()))
        {
          v11 = CGPDFDocumentGetNumberOfPages(v17) + v15;
          if (v11 >= a3)
          {
            *v20 = a3 - v15;
            goto LABEL_15;
          }
        }

        else
        {
          v11 = v15 + 1;
          if (v15 + 1 == a3)
          {
            goto LABEL_15;
          }
        }

        ++v13;
        v14 = v10;
        v15 = v11;
      }

      while (v9 != v13);
      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
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

- (CGSize)paperSizeForPageNum:(int64_t)a3
{
  v5 = [(UIPrintInteractionController *)self rendererToUse];
  v6 = v5;
  if (!v5)
  {
    width = *MEMORY[0x277CBF3A8];
    v10 = *(MEMORY[0x277CBF3A8] + 8);
    pageNumber = a3;
    v11 = [(UIPrintInteractionController *)self getPrintingItemForPageNum:a3 pdfItemPageNum:&pageNumber];
    v12 = [(UIPrintInteractionController *)self convertedPrintableItem:v11];

    if (!v12)
    {
LABEL_38:

      goto LABEL_39;
    }

    v13 = [(UIPrintInteractionController *)self printInfo];
    if (v13)
    {
      v14 = [(UIPrintInteractionController *)self printInfo];
      v15 = [v14 outputType];
    }

    else
    {
      v15 = 1;
    }

    v16 = [(UIPrintInteractionController *)self printPaper];
    if (v16)
    {
      [(UIPrintInteractionController *)self printPaper];
    }

    else
    {
      [UIPrintPaper _defaultPaperForOutputType:v15];
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

    v21 = [v17 pkPaper];
    if ([v21 isRoll])
    {
      v22 = [(UIPrintInteractionController *)self printingItems];
      v23 = [v22 count];

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

      v24 = [(UIPrintInteractionController *)self printer];
      v25 = [(UIPrintInteractionController *)self printInfo];
      v21 = +[UIPrintPaper _readyPaperListForPrinter:withDuplexMode:forContentType:contentSize:](UIPrintPaper, "_readyPaperListForPrinter:withDuplexMode:forContentType:contentSize:", v24, [v25 duplex], v15, width, v10);

      if (v21)
      {
        v26 = [UIPrintPaper bestPaperForPageSize:v21 withPapersFromArray:width, v10];

        v17 = v26;
      }
    }

    goto LABEL_18;
  }

  [v5 paperRect];
  width = v7;
  v10 = v9;
LABEL_39:

  v42 = width;
  v43 = v10;
  result.height = v43;
  result.width = v42;
  return result;
}

- (void)drawImageForPageNum:(int64_t)a3 toContext:(CGContext *)a4 sheetSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v10 = [(UIPrintInteractionController *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(UIPrintInteractionController *)self delegate];
    [v12 printInteractionControllerWillStartJob:self];
  }

  v13 = [(UIPrintInteractionController *)self rendererToUse];
  if (v13)
  {
    v14 = [(UIPrintInteractionController *)self renderThumbnailMutex];

    if (!v14)
    {
      v15 = objc_alloc_init(MEMORY[0x277D82BB8]);
      [(UIPrintInteractionController *)self setRenderThumbnailMutex:v15];
    }

    v16 = [(UIPrintInteractionController *)self renderThumbnailMutex];
    objc_sync_enter(v16);
    CGContextSaveGState(a4);
    [(UIPrintInteractionController *)self paperSizeForPageNum:a3];
    memset(&v26, 0, sizeof(v26));
    CGAffineTransformMakeScale(&v26, height / v17, height / v17);
    transform = v26;
    CGContextConcatCTM(a4, &transform);
    [(UIPrintInteractionController *)self _updateRendererWithQuality:1];
    [v13 prepareForDrawingPages:{a3 - 1, 1}];
    [v13 _startSaveContext:a4];
    [v13 _drawPage:a3 - 1 withScale:0 drawingToPDF:1.0];
    [v13 _endSaveContext];
    CGContextRestoreGState(a4);
    objc_sync_exit(v16);
  }

  else
  {
    pageNumber = a3;
    v16 = [(UIPrintInteractionController *)self getPrintingItemForPageNum:a3 pdfItemPageNum:&pageNumber];
    v18 = [(UIPrintInteractionController *)self convertedPrintableItem:v16];
    if (v18)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(UIPrintInteractionController *)self drawImage:v18 toContext:a4 sheetSize:width, height];
      }

      else
      {
        v19 = CFGetTypeID(v18);
        if (v19 == CGPDFDocumentGetTypeID())
        {
          CGContextSaveGState(a4);
          memset(&v26, 0, sizeof(v26));
          CGContextGetBaseCTM();
          CGContextGetCTM(&transform, a4);
          CGContextSetBaseCTM();
          Page = CGPDFDocumentGetPage(v18, pageNumber);
          if (Page)
          {
            v21 = Page;
            v22 = [(UIPrintInteractionController *)self printPaper];
            v23 = [(UIPrintInteractionController *)self activePrintInfo];
            drawPDFPageToCGContext(v21, a4, v22, [v23 imagePDFAnnotations], width, height);
          }

          transform = v26;
          CGContextSetBaseCTM();
          CGContextRestoreGState(a4);
        }
      }
    }
  }
}

- (id)createWebKitPDFForAllPages
{
  v3 = [(UIPrintInteractionController *)self webKitFormatterMutex];
  objc_sync_enter(v3);
  [(UIPrintInteractionController *)self _updateRendererWithQuality:0];
  v4 = [(UIPrintInteractionController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(UIPrintInteractionController *)self delegate];
    [v6 printInteractionControllerWillStartJob:self];
  }

  [(UIPrintInteractionController *)self _updatePageCount];
  if ([(UIPrintInteractionController *)self pageCount]< 1)
  {
    v13 = 0;
  }

  else
  {
    v7 = [(UIPrintInteractionController *)self rendererToUse];
    [v7 paperRect];
    v9 = v8;
    v11 = v10;
    v12 = [(UIPrintInteractionController *)self _tempFilePath];
    v13 = [(UIPrintInteractionController *)self _newPDFURLWithPath:v12 isContentManaged:[(UIPrintInteractionController *)self isContentManaged]];

    if (v13)
    {
      v14 = [(UIPrintInteractionController *)self _newSaveContext:v13 withMediaRect:0.0, 0.0, v9, v11];
      [v7 _startSaveContext:v14];
      v15 = [(UIPrintInteractionController *)self _fullPagesRange];
      v17 = v16;
      if (v15 < v15 + v16)
      {
        do
        {
          v18 = [MEMORY[0x277CCACC8] currentThread];
          v19 = [v18 isCancelled];

          if (v19)
          {
            break;
          }

          [v7 _drawPage:v15++ withScale:1 drawingToPDF:1.0];
          --v17;
        }

        while (v17);
      }

      [v7 _endSaveContext];
      CGPDFContextClose(v14);
      CGContextRelease(v14);
    }
  }

  objc_sync_exit(v3);

  return v13;
}

- (void)recalculateWebKitPageCount
{
  obj = [(UIPrintInteractionController *)self webKitFormatterMutex];
  objc_sync_enter(obj);
  [(UIPrintInteractionController *)self _updatePageCount];
  objc_sync_exit(obj);
}

- (id)drawPagesWithPreviewState:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(UIPrintInteractionController *)self rendererToUse];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 numberOfPages];
  }

  else
  {
    v8 = [(UIPrintInteractionController *)self printingItems];
    v7 = [v8 count];
  }

  v9 = [(UIPrintInteractionController *)self _tempFilePath];
  v10 = [(UIPrintInteractionController *)self _newPDFURLWithPath:v9 isContentManaged:[(UIPrintInteractionController *)self isContentManaged]];

  v44 = v10;
  if (v6)
  {
    v11 = [(UIPrintInteractionController *)self printPaper];
    [v11 scalingFactor];
    v13 = v12;

    v14 = [(UIPrintInteractionController *)self printPaper];
    [v14 paperSize];
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
    v23 = [(UIPrintInteractionController *)self activePrintInfo];
    v24 = [v23 pageRanges];

    v41 = v24;
    if ([v24 count])
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v25 = v24;
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
          v30 = [v29 rangeValue];
          do
          {
            v31 = [v29 rangeValue];
            [v29 rangeValue];
            if (v30 >= v32 + v31)
            {
              break;
            }

            [v6 _drawPage:v30 withScale:1 drawingToPDF:v13];
            if (![(UIPrintInteractionController *)self printStateActive])
            {
              break;
            }

            ++v30;
          }

          while (![(UIPrintInteractionController *)self _isPageCancelled:v4]);
          if (![(UIPrintInteractionController *)self printStateActive]|| [(UIPrintInteractionController *)self _isPageCancelled:v4])
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

    else if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        if (![(UIPrintInteractionController *)self printStateActive])
        {
          break;
        }

        if ([(UIPrintInteractionController *)self _isPageCancelled:v4])
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
    if (v7)
    {
      v34 = 0;
      while ([(UIPrintInteractionController *)self printStateActive]&& ![(UIPrintInteractionController *)self _isPageCancelled:v4])
      {
        v35 = [(UIPrintInteractionController *)self printingItems];
        v36 = [v35 count];

        if (v34 < v36)
        {
          v37 = [(UIPrintInteractionController *)self printingItems];
          v38 = [v37 objectAtIndex:v34];

          v39 = [(UIPrintInteractionController *)self printingItems];
          -[UIPrintInteractionController _drawPrintItem:toContext:printAllPages:](self, "_drawPrintItem:toContext:printAllPages:", v38, context, [v39 count] > 1);

          if (![(UIPrintInteractionController *)self printStateActive]|| [(UIPrintInteractionController *)self _isPageCancelled:v4])
          {

            break;
          }
        }

        if (v7 == ++v34)
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

- (void)drawImage:(id)a3 toContext:(CGContext *)a4 sheetSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v46 = a3;
  v8 = [v46 CIImage];

  if (v8)
  {
    v9 = ConvertCIBasedImage(v46);

    v10 = v9;
  }

  else
  {
    v10 = v46;
  }

  v47 = v10;
  v11 = v10;
  v12 = [v47 CGImage];
  v13 = v47;
  if (v12)
  {
    v14 = [v47 imageOrientation];
    if (v14 > 7)
    {
      v15 = 1;
    }

    else
    {
      v15 = drawImage_toContext_sheetSize___UIImageOrientationToEXIFOrientationMapping[v14];
    }

    v16 = [(UIPrintInteractionController *)self printPaper];
    [v16 paperSize];
    v18 = v17;
    v20 = v19;

    v21 = [(UIPrintInteractionController *)self printPaper];
    [v21 printableRect];
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

    drawCGImageToCGContext(v12, a4, v15, v42 && v41, 0, width, v45, v25 * v43, v32 * v43, width - v31 * v43 - v25 * v43, v45 - v32 * v43 - v33 * v43);
    v13 = v47;
  }
}

- (void)_generatePrintPreview:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__UIPrintInteractionController__generatePrintPreview___block_invoke;
  v6[3] = &unk_279A9C108;
  v7 = v4;
  v5 = v4;
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

- (id)convertedPrintableItem:(id)a3
{
  v4 = a3;
  v5 = [(UIPrintInteractionController *)self convertedPrintableItems];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (id)_convertItemToPrintableItem:(id)a3
{
  v4 = a3;
  if (!v4)
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

  v6 = [(UIPrintInteractionController *)self convertedPrintableItems];

  if (!v6)
  {
    v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
    [(UIPrintInteractionController *)self setConvertedPrintableItems:v10];

LABEL_13:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v4;
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
        v13 = v4;
        v12 = 0;
LABEL_31:
        v19 = [v13 CIImage];

        if (v19)
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
        v21 = [(UIPrintInteractionController *)self convertedPrintableItems];
        v22 = v21;
        if (v8)
        {
          [v21 setObject:v8 forKey:v4];
        }

        else
        {
          v23 = [MEMORY[0x277CBEB68] null];
          [v22 setObject:v23 forKey:v4];
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

        v12 = v4;
LABEL_27:
        v13 = GetImageForPHAssetSync(v12);
        if (!v13)
        {
          goto LABEL_35;
        }

        goto LABEL_31;
      }

      v14 = v4;
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

  v7 = [(UIPrintInteractionController *)self convertedPrintableItems];
  v8 = [v7 objectForKey:v4];

  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = [MEMORY[0x277CBEB68] null];

  if (v8 != v9)
  {
    goto LABEL_45;
  }

LABEL_11:
  v8 = 0;
LABEL_45:

  return v8;
}

- (void)_drawPrintItem:(id)a3 toContext:(CGContext *)a4 printAllPages:(BOOL)a5
{
  v5 = a5;
  v8 = [(UIPrintInteractionController *)self convertedPrintableItem:a3];
  v9 = v8;
  if (v8)
  {
    v10 = CFGetTypeID(v8);
    if (v10 == CGPDFDocumentGetTypeID())
    {
      [(UIPrintInteractionController *)self _addPDFWithCGPDFDocumentRef:v9 toContext:a4 addAllPages:v5];
      goto LABEL_27;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_27;
    }

    v11 = v9;
    v12 = [v11 CIImage];

    if (v12)
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
    v18 = [(UIPrintInteractionController *)self printInfo];
    if (v18)
    {
      v19 = [(UIPrintInteractionController *)self printInfo];
      v20 = [v19 outputType];
    }

    else
    {
      v20 = 1;
    }

    v21 = [(UIPrintInteractionController *)self printPaper];
    if (v21)
    {
      [(UIPrintInteractionController *)self printPaper];
    }

    else
    {
      [UIPrintPaper _defaultPaperForOutputType:v20];
    }
    v22 = ;

    v23 = [v22 pkPaper];
    if ([v23 isRoll])
    {
      v24 = [(UIPrintInteractionController *)self printingItems];
      v25 = [v24 count];

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

        CGPDFContextBeginPage(a4, v35);
        CGContextSaveGState(a4);
        [v11 imageOrientation];
        [v22 printableRect];
        PKDrawImageToSheet();
        CGContextRestoreGState(a4);
        CGPDFContextEndPage(a4);

        goto LABEL_26;
      }

      v26 = [(UIPrintInteractionController *)self printer];
      v27 = [(UIPrintInteractionController *)self printInfo];
      v23 = +[UIPrintPaper _readyPaperListForPrinter:withDuplexMode:forContentType:contentSize:](UIPrintPaper, "_readyPaperListForPrinter:withDuplexMode:forContentType:contentSize:", v26, [v27 duplex], v20, v15, v17);

      if (v23)
      {
        v28 = [UIPrintPaper bestPaperForPageSize:v23 withPapersFromArray:v15, v17];

        v22 = v28;
      }
    }

    goto LABEL_19;
  }

LABEL_27:
}

- (void)_addPDFWithCGPDFDocumentRef:(CGPDFDocument *)a3 toContext:(CGContext *)a4 addAllPages:(BOOL)a5
{
  v56[1] = *MEMORY[0x277D85DE8];
  if (!a3 || !a4)
  {
    return;
  }

  NumberOfPages = CGPDFDocumentGetNumberOfPages(a3);
  if (!a5)
  {
    v5 = [(UIPrintInteractionController *)self activePrintInfo];
    v11 = [v5 pageRanges];
    if (v11)
    {
      v12 = v11;
      v13 = [(UIPrintInteractionController *)self activePrintInfo];
      v14 = [v13 pageRanges];

LABEL_7:
      goto LABEL_8;
    }
  }

  v15 = [MEMORY[0x277CCAE60] valueWithRange:{0, NumberOfPages}];
  v56[0] = v15;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:1];

  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_8:
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v14;
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
        v21 = [v20 rangeValue];
        while (1)
        {
          v22 = [v20 rangeValue];
          [v20 rangeValue];
          if (v21 >= v23 + v22)
          {
            break;
          }

          Page = CGPDFDocumentGetPage(a3, ++v21);
          if (Page)
          {
            v25 = Page;
            BoxRect = CGPDFPageGetBoxRect(Page, kCGPDFCropBox);
            v26 = BoxRect.size.width / BoxRect.size.height;
            v27 = [(UIPrintInteractionController *)self activePrintInfo:BoxRect.origin.x];
            v28 = [v27 printPaper];

            [v28 paperSize];
            v30 = v29;
            [v28 paperSize];
            v32 = v30 / v31;
            *bytes = 0u;
            v50 = 0u;
            v33 = v26 >= 1.0 || v32 <= 1.0;
            if (!v33 || (v26 > 1.0 ? (v34 = v32 < 1.0) : (v34 = 0), v34))
            {
              [v28 paperSize];
              v36 = v39;
              [v28 paperSize];
            }

            else
            {
              [v28 paperSize];
              v36 = v35;
              [v28 paperSize];
              v38 = v37;
            }

            memset(bytes, 0, sizeof(bytes));
            *&v50 = v36;
            *(&v50 + 1) = v38;
            Mutable = CFDictionaryCreateMutable(v16, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            v41 = CFDataCreate(v16, bytes, 32);
            CFDictionaryAddValue(Mutable, key, v41);
            CFRelease(v41);
            CGPDFContextBeginPage(a4, Mutable);
            CFRelease(Mutable);
            CGContextSaveGState(a4);
            CGContextSetAllowsAntialiasing(a4, 1);
            CGContextSetShouldAntialias(a4, 1);
            CGContextSetAllowsFontSmoothing(a4, 0);
            CGContextSetShouldSmoothFonts(a4, 0);
            v42 = [MEMORY[0x277D75348] whiteColor];
            [v42 CGColor];
            CGContextSetFontSmoothingBackgroundColor();

            CGContextSetAllowsFontSubpixelPositioning(a4, 0);
            CGContextSetShouldSubpixelPositionFonts(a4, 0);
            CGContextSetAllowsFontSubpixelQuantization(a4, 0);
            CGContextSetShouldSubpixelQuantizeFonts(a4, 0);
            CGContextSetTextGreekingThreshold();
            CGContextSetLineWidthThreshold();
            CGContextSetInterpolationQuality(a4, kCGInterpolationHigh);
            v43 = [(UIPrintInteractionController *)self activePrintInfo];
            drawPDFPageToCGContext(v25, a4, v28, [v43 imagePDFAnnotations], v17, v18);

            CGContextRestoreGState(a4);
            CGPDFContextEndPage(a4);
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
  v2 = [(UIPrintInteractionController *)self previewStates];
  v3 = [v2 copy];

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
  v3 = [(UIPrintInteractionController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 printInteractionControllerDidPresentPrinterOptions:self];
  }
}

- (void)_printPanelWillDismissWithAction:(int64_t)a3
{
  if ([(UIPrintInteractionController *)self printStateActive])
  {
    [(UIPrintInteractionController *)self _cancelAllPreviewGeneration];
    v5 = [(UIPrintInteractionController *)self delegate];
    if ((a3 & 0xFFFFFFFFFFFFFFFDLL) == 0)
    {
      [(UIPrintInteractionController *)self setPrinter:0];
      if ([(UIPrintInteractionController *)self _canPreviewContent]&& (objc_opt_respondsToSelector() & 1) != 0)
      {
        [v5 printInteractionControllerDidFinishJob:self];
      }

      [(UIPrintInteractionController *)self resetConvertedPrintableItems];
    }

    if (![(UIPrintInteractionController *)self supressNotifyDismissed]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v5 printInteractionControllerWillDismissPrinterOptions:self];
    }

    MEMORY[0x2821F9730]();
  }
}

- (void)_setPrinterInfoState:(int)a3
{
  v3 = *&a3;
  v5 = [(UIPrintInteractionController *)self printingProgress];

  if (v5)
  {
    goto LABEL_7;
  }

  v6 = [(UIPrintInteractionController *)self saveFileURL];

  if (v6)
  {
    if (![(UIPrintInteractionController *)self showPrintingProgress])
    {
      goto LABEL_7;
    }

    v7 = [UIPrintingProgress alloc];
    v8 = [(UIPrintInteractionController *)self hostingWindowScene];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __53__UIPrintInteractionController__setPrinterInfoState___block_invoke_2;
    v15[3] = &unk_279A9BEE0;
    v15[4] = self;
    v9 = [(UIPrintingProgress *)v7 initPDFCreationWithHostingWindowScene:v8 cancelHandler:v15];
    [(UIPrintInteractionController *)self setPrintingProgress:v9];
  }

  else
  {
    v10 = [UIPrintingProgress alloc];
    v8 = [(UIPrintInteractionController *)self printer];
    v9 = [v8 displayName];
    v11 = [(UIPrintInteractionController *)self printPanelViewController];
    v12 = [(UIPrintInteractionController *)self hostingWindowScene];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __53__UIPrintInteractionController__setPrinterInfoState___block_invoke;
    v16[3] = &unk_279A9BEE0;
    v16[4] = self;
    v13 = [(UIPrintingProgress *)v10 initWithPrinterName:v9 forceDisplayAsAlert:v11 == 0 hostingWindowScene:v12 cancelHandler:v16];
    [(UIPrintInteractionController *)self setPrintingProgress:v13];
  }

LABEL_7:
  if (v3 == 1)
  {
    [(UIPrintInteractionController *)self _startPrinting];
  }

  else
  {
    v14 = [(UIPrintInteractionController *)self printingProgress];
    [v14 setPrinterInfoState:v3];
  }
}

- (void)_printPanelDidDismissWithAction:(int64_t)a3
{
  if ([(UIPrintInteractionController *)self printStateActive])
  {
    [(UIPrintInteractionController *)self setPrintPanelViewController:0];
    [(UIPrintInteractionController *)self setTempPreviewFileURL:0];
    v5 = [(UIPrintInteractionController *)self delegate];
    if (![(UIPrintInteractionController *)self supressNotifyDismissed]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v5 printInteractionControllerDidDismissPrinterOptions:self];
    }

    v6 = [(UIPrintInteractionController *)self printer];

    if (a3 == 1 && v6)
    {
      v7 = [(UIPrintInteractionController *)self printer];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __64__UIPrintInteractionController__printPanelDidDismissWithAction___block_invoke;
      v8[3] = &unk_279A9C090;
      v8[4] = self;
      [(UIPrintInteractionController *)self _setPrinterInfoState:_UIPrinterInfoGetState(v7, v8)];
    }

    else
    {
      [(UIPrintInteractionController *)self _endPrintJobWithAction:a3 error:0];
    }
  }
}

- (double)printInteractionController:(id)a3 cutLengthForPaper:(id)a4
{
  v5 = a4;
  NSLog(&cfstr_S.isa, "[UIPrintInteractionController printInteractionController:cutLengthForPaper:]");
  v6 = [v5 description];
  [v5 paperSize];
  v8 = v7;
  [v5 printableRect];
  NSLog(&cfstr_PageheightFPri.isa, v6, v8, v9);

  v10 = [(UIPrintInteractionController *)self paper];
  [v10 paperSize];
  v38 = v11;
  v39 = v12;
  v14 = *MEMORY[0x277CBF348];
  v13 = *(MEMORY[0x277CBF348] + 8);

  [v5 printableRect];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [v5 paperSize];
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
  [v5 paperSize];
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

- (id)printInteractionController:(id)a3 choosePaper:(id)a4
{
  v5 = a4;
  v6 = [(UIPrintInteractionController *)self paper];
  v7 = [v6 pkPaper];

  if (v7)
  {
    [v7 paperSize];
  }

  else
  {
    v9 = 792.0;
    v8 = 612.0;
  }

  v10 = [UIPrintPaper bestPaperForPageSize:v5 withPapersFromArray:v8, v9];

  return v10;
}

- (void)_updateCutterBehavior
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = [(UIPrintInteractionController *)self delegate];
  if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [&unk_2871BC1E8 count];
    if (v4 != [&unk_2871BC200 count])
    {
      [UIPrintInteractionController _updateCutterBehavior];
    }

    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&unk_2871BC200 forKeys:&unk_2871BC1E8];
    v6 = [(UIPrintInteractionController *)self printer];
    if ([v6 hasPrintInfoSupported])
    {
      v7 = [(UIPrintInteractionController *)self printer];
      v8 = [v7 printInfoSupported];
      v9 = *MEMORY[0x277D41128];
      v10 = [v8 objectForKey:*MEMORY[0x277D41128]];

      if (v10 && [v10 count])
      {
        v11 = [MEMORY[0x277CBEB18] array];
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
                [v11 addObject:v16];
              }

              ++v15;
            }

            while (v13 != v15);
            v13 = [v10 countByEnumeratingWithState:&v31 objects:v35 count:16];
          }

          while (v13);
        }

        v17 = [(UIPrintInteractionController *)self printSettings];
        v18 = [v17 objectForKey:v9];

        if ([v18 count])
        {
          [v11 removeObject:&unk_2871BC188];
        }

        v19 = [MEMORY[0x277CBEA60] arrayWithArray:v11];
        if ([v19 count])
        {
          v30 = [v3 printInteractionController:self chooseCutterBehavior:v19];
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
            v29 = [(UIPrintInteractionController *)self printSettings];
            [v29 setObject:v28 forKey:v24];
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
  v3 = [(UIPrintInteractionController *)self activePrintInfo];
  v4 = [(UIPrintInteractionController *)self printer];
  [v3 _updateWithPrinter:v4];

  v5 = [(UIPrintInteractionController *)self activePrintInfo];
  if ([v5 staple])
  {
  }

  else
  {
    v6 = [(UIPrintInteractionController *)self activePrintInfo];
    v7 = [v6 punch];

    if (!v7)
    {
      goto LABEL_14;
    }
  }

  v8 = [(UIPrintInteractionController *)self printingItems];
  if ([v8 count] == 1)
  {
    v9 = [(UIPrintInteractionController *)self printingItems];
    v10 = [v9 objectAtIndexedSubscript:0];

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
    v17 = [(UIPrintInteractionController *)self activePrintInfo];
    [v17 setOrientation:1];
  }

LABEL_14:
  v18 = [(UIPrintInteractionController *)self activePrintInfo];
  v19 = [v18 printerID];
  v20 = [(UIPrintInteractionController *)self printInfo];
  [v20 setPrinterID:v19];

  v21 = [(UIPrintInteractionController *)self activePrintInfo];
  v22 = [v21 duplex];
  v23 = [(UIPrintInteractionController *)self printInfo];
  [v23 setDuplex:v22];

  v24 = [(UIPrintInteractionController *)self activePrintInfo];
  v25 = [(UIPrintInteractionController *)self printer];
  v26 = [v24 _createPrintSettingsForPrinter:v25];
  [(UIPrintInteractionController *)self setPrintSettings:v26];

  v27 = [(UIPrintInteractionController *)self _updatePrintPaper];
  v28 = [(UIPrintInteractionController *)self paper];
  v29 = [v28 pkPaper];
  LODWORD(v26) = [v29 isRoll];

  if (v26)
  {
    [(UIPrintInteractionController *)self _updateCutterBehavior];
  }

  v30 = [(UIPrintInteractionController *)self printPaper];
  v31 = [v30 pkPaper];
  v32 = [(UIPrintInteractionController *)self printSettings];
  [v32 setPaper:v31];

  v33 = [(UIPrintInteractionController *)self activePrintInfo];
  v34 = [v33 duplex];

  v35 = MEMORY[0x277D410E8];
  v36 = MEMORY[0x277D410D8];
  if (v34 != 2)
  {
    v36 = MEMORY[0x277D410E0];
  }

  if (v34 != 1)
  {
    v35 = v36;
  }

  v52 = *v35;
  v37 = MEMORY[0x277D41090];
  v38 = [(UIPrintInteractionController *)self printer];
  v39 = [(UIPrintInteractionController *)self printSettings];
  v40 = [v39 paper];
  [v40 paperSize];
  v42 = v41;
  v44 = v43;
  v45 = [(UIPrintInteractionController *)self activePrintInfo];
  [v37 addLastUsedPrinter:v38 duplexMode:v52 lastUsedSize:(objc_msgSend(v45 forPhoto:{"outputType") & 0xFFFFFFFFFFFFFFFDLL) == 1, v42, v44}];

  v46 = MEMORY[0x277D41090];
  v47 = [(UIPrintInteractionController *)self printer];
  v48 = [(UIPrintInteractionController *)self printer];
  v49 = [v48 displayName];
  v50 = [(UIPrintInteractionController *)self printer];
  v51 = [v50 location];
  [v46 addPrinterToiCloud:v47 displayName:v49 location:v51];
}

- (id)_paperForPDFItem:(id)a3 withDuplexMode:(int64_t)a4
{
  v6 = a3;
  v7 = [(UIPrintInteractionController *)self printer];

  if (!v7)
  {
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UIPrintInteractionController *)self _printablePDFURLSize:v6];
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

    [(UIPrintInteractionController *)self _printablePDFDataSize:v6];
  }

  v10 = v8;
  v11 = v9;
LABEL_8:
  v7 = 0;
  if (v10 > 0.0 && v11 > 0.0)
  {
    v12 = [(UIPrintInteractionController *)self printer];
    v13 = [(UIPrintInteractionController *)self activePrintInfo];
    v14 = +[UIPrintPaper _readyPaperListForPrinter:withDuplexMode:forContentType:contentSize:](UIPrintPaper, "_readyPaperListForPrinter:withDuplexMode:forContentType:contentSize:", v12, a4, [v13 outputType], v10, v11);

    if (v14)
    {
      v7 = [UIPrintPaper bestPaperForPageSize:v14 withPapersFromArray:v10, v11];
    }

    else
    {
      v7 = 0;
    }
  }

LABEL_14:

  return v7;
}

- (id)_paperForContentType:(int64_t)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = [UIPrintPaper _defaultPaperListForOutputType:a3];
  v5 = [(UIPrintInteractionController *)self printer];
  v6 = [v5 knowsReadyPaperList];

  if (v6)
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
        v13 = [(UIPrintInteractionController *)self printer];
        v14 = [v12 pkPaper];
        v15 = [v13 isPaperReady:v14];

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

- (double)_getCutLengthFromDelegateForPaper:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  if (pthread_main_np() == 1)
  {
    v5 = [(UIPrintInteractionController *)self delegate];
    [v5 printInteractionController:self cutLengthForPaper:v4];
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
    v10 = v4;
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

- (id)_getChosenPaperFromDelegateForPaperList:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  if (pthread_main_np() == 1)
  {
    v5 = [(UIPrintInteractionController *)self delegate];
    v6 = [v5 printInteractionController:self choosePaper:v4];
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
    v11 = v4;
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

  v8 = [(UIPrintInteractionController *)self delegate];
  v9 = [(UIPrintInteractionController *)self printer];
  v109 = v7;
  v110 = v8;
  if (v9)
  {
    v10 = v9;
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v107 = p_printPaper;
      v12 = [(UIPrintInteractionController *)self printer];
      v13 = [(UIPrintInteractionController *)self activePrintInfo];
      v14 = [v13 duplex];
      v15 = [(UIPrintInteractionController *)self activePrintInfo];
      v16 = [v15 outputType];
      [(UIPrintInteractionController *)self _printItemContentSize];
      v17 = [UIPrintPaper _readyPaperListForPrinter:v12 withDuplexMode:v14 forContentType:v16 contentSize:?];

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
                v27 = [v26 pkPaper];
                [(UIPrintInteractionController *)self _getCutLengthFromDelegateForPaper:v26];
                v28 = [v27 cutToLength:?];
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
                v49 = [v48 pkPaper];
                [v48 paperSize];
                v50 = [v49 cutToLength:?];
                [v48 _updatePKPaper:v50];
              }

              v45 = [v43 countByEnumeratingWithState:&v112 objects:v120 count:16];
            }

            while (v45);
          }
        }

        v18 = v106;
      }

      v29 = [(UIPrintInteractionController *)self _getChosenPaperFromDelegateForPaperList:v17];

      p_printPaper = v107;
      v7 = v109;
      v8 = v110;
      if (v29)
      {
        goto LABEL_38;
      }

      goto LABEL_36;
    }
  }

  v29 = [(UIPrintInteractionController *)self printer];
  if (!v29)
  {
LABEL_25:
    if (v29)
    {
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  v30 = objc_opt_respondsToSelector();

  if (v30)
  {
    v31 = v8;
    if (v7)
    {
      v32 = [MEMORY[0x277CBEA60] arrayWithObject:v7];
    }

    else
    {
      v33 = [(UIPrintInteractionController *)self printer];
      v34 = [(UIPrintInteractionController *)self activePrintInfo];
      v35 = [v34 duplex];
      v36 = [(UIPrintInteractionController *)self activePrintInfo];
      v37 = [v36 outputType];
      [(UIPrintInteractionController *)self _printItemContentSize];
      v32 = [UIPrintPaper _readyPaperListForPrinter:v33 withDuplexMode:v35 forContentType:v37 contentSize:?];
    }

    v38 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_160];
    v39 = [v32 filteredArrayUsingPredicate:v38];
    v40 = v39;
    if (v39 && [v39 count])
    {
      v29 = [v40 objectAtIndex:0];
      v41 = [(UIPrintPaper *)v29 pkPaper];
      [(UIPrintInteractionController *)self _getCutLengthFromDelegateForPaper:v29];
      v42 = [v41 cutToLength:?];
      [(UIPrintPaper *)v29 _updatePKPaper:v42];
    }

    else
    {
      v29 = 0;
    }

    v8 = v31;
    goto LABEL_25;
  }

  v29 = 0;
LABEL_36:
  if (v7)
  {
    v29 = v7;
    goto LABEL_42;
  }

LABEL_38:
  if (!v29)
  {
    v51 = [(UIPrintInteractionController *)self printingItems];
    v52 = [v51 count];

    if (v52 != 1 || (-[UIPrintInteractionController printingItems](self, "printingItems"), v53 = objc_claimAutoreleasedReturnValue(), [v53 objectAtIndexedSubscript:0], v54 = objc_claimAutoreleasedReturnValue(), -[UIPrintInteractionController activePrintInfo](self, "activePrintInfo"), v55 = objc_claimAutoreleasedReturnValue(), -[UIPrintInteractionController _paperForPDFItem:withDuplexMode:](self, "_paperForPDFItem:withDuplexMode:", v54, objc_msgSend(v55, "duplex")), v29 = objc_claimAutoreleasedReturnValue(), v55, v54, v53, !v29))
    {
      v56 = [(UIPrintInteractionController *)self activePrintInfo];
      v29 = -[UIPrintInteractionController _paperForContentType:](self, "_paperForContentType:", [v56 outputType]);
    }
  }

LABEL_42:
  v57 = [(UIPrintInteractionController *)self printer];

  if (!v57)
  {
    goto LABEL_68;
  }

  v111 = 0;
  v58 = [(UIPrintPaper *)v29 pkPaper];
  [v58 imageableAreaRect];
  if (v62 == 0.0 && v59 == 0.0 && (v63 = v60, v64 = v61, [v58 paperSize], v65 == v63) && (objc_msgSend(v58, "paperSize"), v66 == v64))
  {
    v67 = 1;
  }

  else
  {
    v68 = [(UIPrintInteractionController *)self activePrintInfo];
    v67 = ([v68 outputType] & 0xFFFFFFFFFFFFFFFDLL) == 1;
  }

  v69 = [(UIPrintInteractionController *)self printer];
  v70 = [(UIPrintInteractionController *)self activePrintInfo];
  v71 = [v70 duplex];
  if (v71 == 1)
  {
    v72 = MEMORY[0x277D410E8];
  }

  else
  {
    v72 = MEMORY[0x277D410D8];
    if (v71 != 2)
    {
      v72 = MEMORY[0x277D410E0];
    }
  }

  v73 = [v69 matchedPaper:v58 preferBorderless:v67 withDuplexMode:*v72 didMatch:&v111];

  if (v111 != 1)
  {
LABEL_56:
    v108 = p_printPaper;
    v77 = [(UIPrintInteractionController *)self printer];
    v78 = [(UIPrintInteractionController *)self activePrintInfo];
    v79 = [v78 duplex];
    v80 = [(UIPrintInteractionController *)self activePrintInfo];
    v81 = [v80 outputType];
    [(UIPrintInteractionController *)self _printItemContentSize];
    v74 = [UIPrintPaper _readyPaperListForPrinter:v77 withDuplexMode:v79 forContentType:v81 contentSize:?];

    [v58 paperSize];
    v83 = v82;
    [v58 paperSize];
    v85 = v84;
    v86 = [(UIPrintInteractionController *)self activePrintInfo];
    v87 = +[UIPrintPaper bestPaperForPageSize:andContentType:withPapersFromArray:](UIPrintPaper, "bestPaperForPageSize:andContentType:withPapersFromArray:", [v86 outputType], v74, v83, v85);

    if (v87)
    {
      v88 = [v87 pkPaper];

      v73 = v88;
    }

    p_printPaper = v108;
    goto LABEL_59;
  }

  v74 = [(UIPrintInteractionController *)self printer];
  if ([v74 knowsReadyPaperList])
  {
    v75 = [(UIPrintInteractionController *)self printer];
    v76 = [v75 isPaperReady:v73];

    if (v76)
    {
      goto LABEL_60;
    }

    goto LABEL_56;
  }

LABEL_59:

LABEL_60:
  v7 = v109;
  v8 = v110;
  if ([v73 isRoll] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(UIPrintInteractionController *)self _getCutLengthFromDelegateForPaper:v29];
    v90 = v89;
    v91 = [v73 minCutLength];
    if (v90 < v91)
    {
      v90 = v91;
    }

    v92 = [v73 maxCutLength];
    if (v90 < v92)
    {
      v92 = v90;
    }

    v93 = [v73 cutToLength:v92];

    v73 = v93;
  }

  [(UIPrintPaper *)v29 _updatePKPaper:v73];

LABEL_68:
  v94 = [(UIPrintInteractionController *)self activePrintInfo];
  v95 = [v94 orientation];

  if (v95 == 1)
  {
    v96 = [(UIPrintInteractionController *)self printer];
    v97 = [v96 hasPrintInfoSupported];

    v98 = 1;
    if (v97)
    {
      v99 = [(UIPrintInteractionController *)self printer];
      v100 = [v99 printInfoSupported];
      v101 = [v100 objectForKey:*MEMORY[0x277D411A0]];

      LODWORD(v99) = [v101 containsObject:*MEMORY[0x277D411B8]];
      if (v99)
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

  [(UIPrintPaper *)v29 setPaperOrientation:v98];
  v102 = [(UIPrintInteractionController *)self activePrintInfo];
  [v102 scalingFactor];
  [(UIPrintPaper *)v29 setScalingFactor:?];

  v103 = self->_printPaper;
  objc_sync_enter(v103);
  if (v29 != self->_printPaper)
  {
    objc_storeStrong(p_printPaper, v29);
  }

  objc_sync_exit(v103);

  v104 = v29;
  return v29;
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
    v3 = [MEMORY[0x277D75128] sharedApplication];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __46__UIPrintInteractionController__startPrinting__block_invoke;
    v5[3] = &unk_279A9BEE0;
    v5[4] = self;
    self->_backgroundTaskIdentifier = [v3 _beginBackgroundTaskWithExpirationHandler:v5];
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

- (BOOL)_canPrintPDFData:(id)a3
{
  v4 = a3;
  v5 = [(UIPrintInteractionController *)self activePrintInfo];
  v6 = [v5 pdfPassword];
  v7 = [UIPrintInteractionController isPrintablePDFData:v4 requireUnlocked:1 password:v6];

  return v7;
}

- (CGSize)_printablePDFDataSize:(id)a3
{
  v4 = [UIPrintInteractionController createCGPDFDocumentRefWithNSData:a3];
  if (!v4)
  {
    MaxCropSize = *MEMORY[0x277CBF3A8];
    v13 = *(MEMORY[0x277CBF3A8] + 8);
    goto LABEL_8;
  }

  v5 = v4;
  v6 = [(UIPrintInteractionController *)self activePrintInfo];
  v7 = [v6 pdfPassword];
  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = v7;
  IsEncrypted = CGPDFDocumentIsEncrypted(v5);

  if (IsEncrypted)
  {
    v6 = [(UIPrintInteractionController *)self activePrintInfo];
    v10 = [v6 pdfPassword];
    CGPDFDocumentUnlockWithPassword(v5, [v10 cStringUsingEncoding:4]);

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

- (BOOL)_canPrintURL:(id)a3
{
  v4 = a3;
  v5 = [(UIPrintInteractionController *)self printPageRenderer];
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = [(UIPrintInteractionController *)self convertedPrintableItem:v4];
    v6 = v7 != 0;
  }

  return v6;
}

- (BOOL)_canShowPreview
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [(UIPrintInteractionController *)self printingItems];
  v4 = [v3 count];

  if (v4)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = [(UIPrintInteractionController *)self printingItems];
    v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v5);
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
          v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
    v5 = [(UIPrintInteractionController *)self printPageRenderer];
    if (v5)
    {
LABEL_27:
      v12 = 1;
      goto LABEL_28;
    }

    v13 = [(UIPrintInteractionController *)self printFormatter];
    v12 = v13 != 0;
  }

  else
  {
    v5 = [(UIPrintInteractionController *)self printFormatter];
    if (!v5)
    {
LABEL_23:
      v12 = 0;
      goto LABEL_28;
    }

    v14 = [(UIPrintInteractionController *)self printFormatter];
    if ([v14 isMemberOfClass:objc_opt_class()])
    {
      v12 = 1;
    }

    else
    {
      v15 = [(UIPrintInteractionController *)self printFormatter];
      if ([v15 isMemberOfClass:objc_opt_class()])
      {
        v12 = 1;
      }

      else
      {
        v17 = [(UIPrintInteractionController *)self printFormatter];
        if ([v17 isMemberOfClass:objc_opt_class()])
        {
          v12 = 1;
        }

        else
        {
          v18 = [(UIPrintInteractionController *)self printFormatter];
          if ([v18 isMemberOfClass:objc_opt_class()])
          {
            v12 = 1;
          }

          else
          {
            v19 = [(UIPrintInteractionController *)self printFormatter];
            v12 = [v19 isMemberOfClass:objc_opt_class()];
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
    v3 = [(UIPrintInteractionController *)self printPageRenderer];
    if (v3)
    {
      v4 = 1;
      goto LABEL_20;
    }

    v5 = [(UIPrintInteractionController *)self printFormatter];
    v4 = v5 != 0;
  }

  else
  {
    v3 = [(UIPrintInteractionController *)self printFormatter];
    if (!v3)
    {
      v4 = 0;
      goto LABEL_20;
    }

    v5 = [(UIPrintInteractionController *)self printFormatter];
    if ([v5 isMemberOfClass:objc_opt_class()])
    {
      v4 = 1;
    }

    else
    {
      v6 = [(UIPrintInteractionController *)self printFormatter];
      if ([v6 isMemberOfClass:objc_opt_class()])
      {
        v4 = 1;
      }

      else
      {
        v7 = [(UIPrintInteractionController *)self printFormatter];
        if ([v7 isMemberOfClass:objc_opt_class()])
        {
          v4 = 1;
        }

        else
        {
          v8 = [(UIPrintInteractionController *)self printFormatter];
          if ([v8 isMemberOfClass:objc_opt_class()])
          {
            v4 = 1;
          }

          else
          {
            v9 = [(UIPrintInteractionController *)self printFormatter];
            v4 = [v9 isMemberOfClass:objc_opt_class()];
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
  v10 = [(UIPrintInteractionController *)self printingItems];
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v10);
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

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
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

- (CGSize)_printablePDFURLSize:(id)a3
{
  v4 = [UIPrintInteractionController createCGPDFDocumentRefWithNSURL:a3];
  if (v4)
  {
    v5 = v4;
    v6 = [(UIPrintInteractionController *)self activePrintInfo];
    v7 = [v6 pdfPassword];
    if (v7)
    {
      v8 = v7;
      IsEncrypted = CGPDFDocumentIsEncrypted(v5);

      if (IsEncrypted)
      {
        v10 = [(UIPrintInteractionController *)self activePrintInfo];
        v11 = [v10 pdfPassword];
        CGPDFDocumentUnlockWithPassword(v5, [v11 cStringUsingEncoding:4]);

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

- (void)_ensurePDFIsUnlockedFirstAttempt:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(UIPrintInteractionController *)self printingItems];
  if ([v7 count] != 1)
  {

    v9 = 0;
    goto LABEL_9;
  }

  v8 = [(UIPrintInteractionController *)self printingItems];
  v9 = [v8 objectAtIndexedSubscript:0];

  if (!v9)
  {
LABEL_9:
    v6[2](v6, 0);
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

  v13 = [(UIPrintInteractionController *)self hostingWindowScene];
  if (!v13)
  {
    v14 = [MEMORY[0x277D75128] sharedApplication];
    v13 = [v14 _findUISceneForLegacyInterfaceOrientation];
  }

  v15 = [objc_alloc(MEMORY[0x277D75DA0]) initWithWindowScene:v13];
  objc_storeStrong(&self->_alertWindow, v15);
  [v15 setOpaque:0];
  v16 = [MEMORY[0x277D75348] clearColor];
  [v15 setBackgroundColor:v16];

  [v15 setWindowLevel:*MEMORY[0x277D772B8]];
  v17 = objc_alloc_init(MEMORY[0x277D75D28]);
  [(UIWindow *)self->_alertWindow setRootViewController:v17];
  [(UIWindow *)self->_alertWindow makeKeyAndVisible];
  v40 = v17;
  v18 = MEMORY[0x277D75110];
  v19 = [MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class(), v15, v13}];
  if (v4)
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
  v30 = v6;
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
  v43 = self;
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

- (BOOL)_printingItemIsReallyTallPDF:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UIPrintInteractionController *)self _printablePDFURLSize:v4];
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
    v10 = [UIPrintInteractionController createCGPDFDocumentRefWithNSURL:v4];
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

    [(UIPrintInteractionController *)self _printablePDFDataSize:v4];
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
    v10 = [UIPrintInteractionController createCGPDFDocumentRefWithNSData:v4];
  }

  v13 = v10;
  if (!v10)
  {
    goto LABEL_18;
  }

  v14 = [(UIPrintInteractionController *)self activePrintInfo];
  v15 = [v14 pdfPassword];
  if (v15)
  {
    v16 = v15;
    IsEncrypted = CGPDFDocumentIsEncrypted(v13);

    if (!IsEncrypted)
    {
      goto LABEL_14;
    }

    v14 = [(UIPrintInteractionController *)self activePrintInfo];
    v18 = [v14 pdfPassword];
    CGPDFDocumentUnlockWithPassword(v13, [v18 cStringUsingEncoding:4]);
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

- (void)_printPageWithDelay:(double)a3
{
  if ([(UIPrintInteractionController *)self printStateActive])
  {
    objc_initWeak(&location, self);
    v5 = dispatch_time(0, a3);
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
    v3 = [(UIPrintInteractionController *)self rendererToUse];
    if (v3 && ([(UIPrintInteractionController *)self nupFileURL], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
    {
      v6 = [(UIPrintInteractionController *)self _printPageWithRenderer:v3];
      [(UIPrintInteractionController *)self _completePrintPageWithError:v6];
    }

    else
    {
      v5 = [(UIPrintInteractionController *)self nupFileURL];

      if (v5)
      {
        v6 = [(UIPrintInteractionController *)self nupFileURL];
      }

      else
      {
        v7 = [(UIPrintInteractionController *)self printingItems];
        v8 = [v7 count];

        v9 = [(UIPrintInteractionController *)self printingItems];
        v10 = v9;
        if (v8 == 1)
        {
          v11 = 0;
        }

        else
        {
          v11 = [(UIPrintInteractionController *)self currentPage];
          v9 = v10;
        }

        v6 = [v9 objectAtIndex:v11];
      }

      objc_initWeak(&location, self);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __42__UIPrintInteractionController__printPage__block_invoke;
      v12[3] = &unk_279A9C260;
      objc_copyWeak(&v13, &location);
      [(UIPrintInteractionController *)self _printItemAsync:v6 completionHandler:v12];
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

- (void)_completePrintPageWithError:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(UIPrintInteractionController *)self printStateActive])
  {
    goto LABEL_35;
  }

  v5 = [(UIPrintInteractionController *)self printingItems];
  if ([v5 count])
  {

LABEL_5:
    v7 = -1;
    goto LABEL_6;
  }

  v6 = [(UIPrintInteractionController *)self nupFileURL];

  if (v6)
  {
    goto LABEL_5;
  }

  v7 = [(UIPrintInteractionController *)self pagesDrawn];
LABEL_6:
  if ([(UIPrintInteractionController *)self currentPage]!= -1)
  {
    v8 = [(UIPrintInteractionController *)self currentPage];
    v9 = [(UIPrintInteractionController *)self currentRange];
    [(UIPrintInteractionController *)self currentRange];
    if (v8 == v9 + v10 - 1)
    {
      v43 = v7;
      v44 = v4;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v11 = [(UIPrintInteractionController *)self pageRanges];
      v12 = [v11 countByEnumeratingWithState:&v45 objects:v49 count:16];
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
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v45 + 1) + 8 * i);
            v17 = [v16 rangeValue];
            v19 = v18;
            if (v17 == [(UIPrintInteractionController *)self currentRange]&& v19 == v20)
            {
              v22 = [(UIPrintInteractionController *)self pageRanges];
              v23 = [v22 count];
              v24 = [(UIPrintInteractionController *)self pageRanges];
              v25 = [v24 indexOfObject:v16] + 1;

              if (v23 > v25)
              {
                v26 = [(UIPrintInteractionController *)self pageRanges];
                v27 = [(UIPrintInteractionController *)self pageRanges];
                v28 = [v26 objectAtIndexedSubscript:{objc_msgSend(v27, "indexOfObject:", v16) + 1}];
                v29 = [v28 rangeValue];
                [(UIPrintInteractionController *)self setCurrentRange:v29, v30];

                [(UIPrintInteractionController *)self setCurrentPage:([(UIPrintInteractionController *)self currentRange]- 1)];
                v31 = [(UIPrintInteractionController *)self printPageRenderer];

                if (v31)
                {
                  v32 = [(UIPrintInteractionController *)self printPageRenderer];
                  v33 = [(UIPrintInteractionController *)self currentRange];
                  [v32 prepareForDrawingPages:{v33, v34}];
                }

                goto LABEL_24;
              }
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v45 objects:v49 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

LABEL_24:

      v7 = v43;
      v4 = v44;
    }

    [(UIPrintInteractionController *)self setCurrentPage:[(UIPrintInteractionController *)self currentPage]+ 1];
  }

  v35 = [(UIPrintInteractionController *)self nupFileURL];
  if (v4 | v35 || ([(UIPrintInteractionController *)self pageCount]& 0x8000000000000000) == 0 && ((v36 = [(UIPrintInteractionController *)self currentPage], v37 = [(UIPrintInteractionController *)self currentRange], v36 < v37) || v36 - v37 >= v38))
  {

    goto LABEL_34;
  }

  if ([(UIPrintInteractionController *)self currentPage]== -1)
  {
LABEL_34:
    v41 = [(UIPrintInteractionController *)self printingProgress];
    [v41 setPage:-1 ofPage:0];

    [(UIPrintInteractionController *)self _endPrintJobWithAction:1 error:v4];
    goto LABEL_35;
  }

  v39 = [(UIPrintInteractionController *)self printingProgress];
  if ([(UIPrintInteractionController *)self pageCountWithRanges]< 1)
  {
    v40 = [(UIPrintInteractionController *)self pageCount];
  }

  else
  {
    v40 = [(UIPrintInteractionController *)self pageCountWithRanges];
  }

  [v39 setPage:v7 ofPage:v40];

  if (![(UIPrintInteractionController *)self manualPrintPageEnabled])
  {
    v42 = [(UIPrintInteractionController *)self printingProgress];
    [v42 nextPrintDelay];
    [(UIPrintInteractionController *)self _printPageWithDelay:?];
  }

LABEL_35:
}

- (void)_printItemAsync:(id)a3 completionHandler:(id)a4
{
  keys[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
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
      v8 = v6;
      v9 = 0;
      v97 = 0;
      data = 0;
      v10 = 0;
      if (!v8)
      {
        goto LABEL_18;
      }

LABEL_45:
      v33 = [(UIPrintInteractionController *)self printer];
      v34 = [(UIPrintInteractionController *)self printSettings];
      v35 = [v33 startJob:v34 ofType:v10] == 0;

      if (v35)
      {
        v36 = [(UIPrintInteractionController *)self printPaper];
        v37 = [v36 pkPaper];
        if ([v37 isRoll])
        {
          v38 = [(UIPrintInteractionController *)self printingItems];
          v39 = [v38 count] > 1;

          if (!v39)
          {
LABEL_51:
            v43 = [(UIPrintInteractionController *)self printer];
            v8 = v8;
            v96 = v43;
            v44 = v36;
            v45 = [v8 CIImage];
            v46 = v45 == 0;

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
                v92 = [(UIPrintInteractionController *)self printer];
                v105[0] = MEMORY[0x277D85DD0];
                v105[1] = 3221225472;
                v105[2] = __66__UIPrintInteractionController__printItemAsync_completionHandler___block_invoke;
                v105[3] = &unk_279A9C288;
                v105[4] = self;
                v107 = &v109;
                v106 = v7;
                [v92 finishJobCompletionHandler:v105];
              }
            }

            else
            {
            }

            goto LABEL_84;
          }

          v94 = [(UIPrintInteractionController *)self printer];
          v95 = [(UIPrintInteractionController *)self printInfo];
          v93 = [v95 duplex];
          v40 = [(UIPrintInteractionController *)self printInfo];
          v41 = [v40 outputType];
          [v8 size];
          v37 = [UIPrintPaper _readyPaperListForPrinter:v94 withDuplexMode:v93 forContentType:v41 contentSize:?];

          if (v37)
          {
            [v8 size];
            v42 = [UIPrintPaper bestPaperForPageSize:v37 withPapersFromArray:?];

            v36 = v42;
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
      v12 = v6;
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
        v16 = v6;
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
                v79 = [(UIPrintInteractionController *)self printer];
                v80 = [(UIPrintInteractionController *)self printSettings];
                v81 = [v79 startJob:v80 ofType:v10] == 0;

                if (v81)
                {
                  v82 = [(UIPrintInteractionController *)self printer];
                  v83 = data;
                  v84 = [v82 sendData:-[__CFData bytes](data ofLength:{"bytes"), -[__CFData length](data, "length")}] == 0;

                  if (v84)
                  {
                    v85 = [(UIPrintInteractionController *)self printer];
                    v99[0] = MEMORY[0x277D85DD0];
                    v99[1] = 3221225472;
                    v99[2] = __66__UIPrintInteractionController__printItemAsync_completionHandler___block_invoke_3;
                    v99[3] = &unk_279A9C288;
                    v99[4] = self;
                    v101 = &v109;
                    v100 = v7;
                    [v85 finishJobCompletionHandler:v99];
                  }
                }

                v8 = 0;
                v9 = 0;
                goto LABEL_84;
              }

              goto LABEL_18;
            }

            v63 = [(UIPrintInteractionController *)self printPaper];
            v64 = [v63 pkPaper];
            if ([v64 isRoll])
            {
              v65 = [(UIPrintInteractionController *)self printingItems];
              v66 = [v65 count] > 1;

              if (!v66)
              {
LABEL_68:
                v77 = [(UIPrintInteractionController *)self printer];
                v78 = [(UIPrintInteractionController *)self printSettings];
                v102[0] = MEMORY[0x277D85DD0];
                v102[1] = 3221225472;
                v102[2] = __66__UIPrintInteractionController__printItemAsync_completionHandler___block_invoke_2;
                v102[3] = &unk_279A9C2B0;
                v104 = &v109;
                v103 = v7;
                [v77 printURL:v9 ofType:v10 printSettings:v78 completionHandler:v102];

                v8 = 0;
                goto LABEL_84;
              }

              [(UIPrintInteractionController *)self _printItemContentSize:v6];
              v68 = v67;
              v70 = v69;
              v71 = [(UIPrintInteractionController *)self printer];
              v72 = [(UIPrintInteractionController *)self printInfo];
              v73 = [v72 duplex];
              v74 = [(UIPrintInteractionController *)self printInfo];
              v63 = +[UIPrintPaper _readyPaperListForPrinter:withDuplexMode:forContentType:contentSize:](UIPrintPaper, "_readyPaperListForPrinter:withDuplexMode:forContentType:contentSize:", v71, v73, [v74 outputType], v68, v70);

              if (!v63)
              {
LABEL_67:

                goto LABEL_68;
              }

              v64 = [UIPrintPaper bestPaperForPageSize:v63 withPapersFromArray:v68, v70];
              if (v64)
              {
                v75 = [(UIPrintInteractionController *)self printSettings];
                v76 = [v64 pkPaper];
                [v75 setPaper:v76];
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
        v97 = v6;
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

    if (v7)
    {
      (*(v7 + 2))(v7, v110[5]);
    }

    v8 = 0;
    v9 = 0;
    data = 0;
    goto LABEL_84;
  }

  if (v7)
  {
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"UIPrintErrorDomain" code:1 userInfo:0];
    (*(v7 + 2))(v7, v11);
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

  v3 = [(UIPrintInteractionController *)self activePrintInfo];
  if ([v3 nUpActive])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(UIPrintInteractionController *)self activePrintInfo];
    if ([v5 borderType])
    {
      v4 = 1;
    }

    else
    {
      v6 = [(UIPrintInteractionController *)self activePrintInfo];
      if ([v6 bookletStyle] <= 0)
      {
        v7 = [(UIPrintInteractionController *)self activePrintInfo];
        v4 = [v7 flipHorizontal];
      }

      else
      {
        v4 = 1;
      }
    }
  }

  return v4;
}

- (id)_createDocInfoDict
{
  v3 = GetAppName();
  v4 = [(UIPrintInteractionController *)self activePrintInfo];
  v5 = [v4 jobName];

  if (!v5)
  {
    v5 = GetDefaultJobName();
  }

  v6 = *MEMORY[0x277CBF5E0];
  v7 = *MEMORY[0x277CBF578];
  v8 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{v5, *MEMORY[0x277CBF5E0], v3, *MEMORY[0x277CBF578], 0}];
  v9 = [(UIPrintInteractionController *)self paper];
  if (v9)
  {
    v10 = v9;
    v11 = [(UIPrintInteractionController *)self paper];
    v12 = [v11 _keywordForPDFMetadata];

    if (v12)
    {
      v13 = [(UIPrintInteractionController *)self paper];
      v14 = [v13 _keywordForPDFMetadata];
      [v8 setObject:v14 forKey:*MEMORY[0x277CBF5A0]];
    }
  }

  v15 = [(UIPrintInteractionController *)self printingItems];
  if ([v15 count] != 1)
  {

    goto LABEL_36;
  }

  v16 = [(UIPrintInteractionController *)self printingItems];
  v17 = [v16 objectAtIndexedSubscript:0];

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

      v23 = [(UIPrintInteractionController *)self pdfPassword];
      if (v23)
      {
        v24 = v23;
        [(UIPrintInteractionController *)self pdfPassword];
        v25 = v45 = v19;
        v26 = [v25 length];

        v19 = v45;
        if (v26)
        {
          v27 = [(UIPrintInteractionController *)self pdfPassword];
          [v8 setObject:v27 forKey:*MEMORY[0x277CBF5B8]];

          v28 = [(UIPrintInteractionController *)self pdfPassword];
          [v8 setObject:v28 forKey:*MEMORY[0x277CBF5F0]];
        }
      }

      v29 = [MEMORY[0x277CCABB0] numberWithBool:{-[UIPrintInteractionController pdfAllowsPrinting](self, "pdfAllowsPrinting")}];
      [v8 setObject:v29 forKey:*MEMORY[0x277CBF558]];

      v30 = [MEMORY[0x277CCABB0] numberWithBool:{-[UIPrintInteractionController pdfAllowsCopying](self, "pdfAllowsCopying")}];
      [v8 setObject:v30 forKey:*MEMORY[0x277CBF550]];

      [v8 setObject:@"pdftopdf filter" forKey:v7];
      v31 = [(UIPrintInteractionController *)self pdfPassword];
      if (v31)
      {
        v32 = v31;
        IsEncrypted = CGPDFDocumentIsEncrypted(v19);

        if (IsEncrypted)
        {
          v34 = [(UIPrintInteractionController *)self pdfPassword];
          CGPDFDocumentUnlockWithPassword(v19, [v34 cStringUsingEncoding:4]);
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

- (CGContext)_newSaveContext:(id)a3 withMediaRect:(CGRect)a4
{
  v9 = a4;
  if (!a3)
  {
    return 0;
  }

  v5 = a3;
  v6 = [(UIPrintInteractionController *)self _createDocInfoDict:*&v9.origin.x];
  v7 = CGPDFContextCreateWithURL(v5, &v9, v6);

  return v7;
}

- (id)_printPageWithRenderer:(id)a3
{
  v4 = a3;
  if (![(UIPrintInteractionController *)self printStateActive])
  {
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"UIPrintErrorDomain" code:4 userInfo:0];
    goto LABEL_18;
  }

  v5 = [(UIPrintInteractionController *)self currentPage];
  if (v5 != [(UIPrintInteractionController *)self currentRange])
  {
    goto LABEL_10;
  }

  v6 = [(UIPrintInteractionController *)self currentRange];
  v8 = v7;
  v9 = [(UIPrintInteractionController *)self pageRanges];
  v10 = [v9 firstObject];
  v11 = [v10 rangeValue];
  v13 = v12;

  v14 = 0;
  if (v6 != v11 || v8 != v13)
  {
    goto LABEL_11;
  }

  v15 = [(UIPrintInteractionController *)self saveFileURL];

  if (v15)
  {
    v16 = [(UIPrintInteractionController *)self saveFileURL];
    [v4 paperRect];
    v17 = [(UIPrintInteractionController *)self _newSaveContext:v16 withMediaRect:?];

    if (v17)
    {
      [v4 _startPrintJobContext:v17];
      CGContextRelease(v17);
LABEL_10:
      v14 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v18 = [(UIPrintInteractionController *)self printer];
    v19 = [(UIPrintInteractionController *)self activePrintInfo];
    v20 = [(UIPrintInteractionController *)self printSettings];
    v21 = [v4 _startPrintJobContext:v18 printInfo:v19 printSettings:v20];

    if (v21)
    {
      goto LABEL_10;
    }
  }

  v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"UIPrintErrorDomain" code:4 userInfo:0];
LABEL_11:
  if ([(UIPrintInteractionController *)self printStateActive]&& !v14)
  {
    v22 = [(UIPrintInteractionController *)self currentPage];
    v23 = [(UIPrintInteractionController *)self activePrintInfo];
    [v23 scalingFactor];
    [v4 _drawPage:v22 withScale:1 drawingToPDF:?];
  }

  if ([(UIPrintInteractionController *)self printStateActive])
  {
    if (!v14)
    {
      [(UIPrintInteractionController *)self setPagesDrawn:[(UIPrintInteractionController *)self pagesDrawn]+ 1];
      if ([(UIPrintInteractionController *)self pageCount]< 0)
      {
        -[UIPrintInteractionController setPageCount:](self, "setPageCount:", [v4 numberOfPages]);
      }
    }
  }

LABEL_18:

  return v14;
}

- (void)_endPrintJobWithAction:(int64_t)a3 error:(id)a4
{
  v6 = a4;
  v7 = self;
  temporaryRetainCycle = self->_temporaryRetainCycle;
  self->_temporaryRetainCycle = 0;

  if ([(UIPrintInteractionController *)self printStateActive])
  {
    v9 = a3 == 0;
    v10 = a3 == 0;
    v11 = !v9;
    [(UIPrintInteractionController *)self _cancelAllPreviewGeneration];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __61__UIPrintInteractionController__endPrintJobWithAction_error___block_invoke;
    v12[3] = &unk_279A9BF50;
    v12[4] = self;
    v14 = v11;
    v13 = v6;
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
  v3 = [(UIPrintInteractionController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(UIPrintInteractionController *)self delegate];
    v6 = [v5 performSelector:sel_appOptionsViewController];
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

- (void)dismissAnimated:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v7 = a4;
  if ([(UIPrintInteractionController *)self printStateActive])
  {
    [(UIPrintInteractionController *)self setSupressNotifyDismissed:1];
    v6 = [(UIPrintInteractionController *)self printPanelViewController];
    [v6 dismissAnimated:v4 completionHandler:v7];
  }

  else if (v7)
  {
    v7[2]();
  }
}

- (BOOL)savePDFToURL:(id)a3 showProgress:(BOOL)a4 hostingScene:(id)a5 completionHandler:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(UIPrintInteractionController *)self printFormatter];
  if (v13)
  {
  }

  else
  {
    v14 = [(UIPrintInteractionController *)self printPageRenderer];

    if (!v14)
    {
      NSLog(&cfstr_ErrorAttemptin_2.isa);
      if (v12)
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
    [(UIPrintInteractionController *)self setCompletionHandler:v12];
    v17 = [(UIPrintInteractionController *)self printInfo];
    if (v17)
    {
      v18 = [(UIPrintInteractionController *)self printInfo];
      v19 = [v18 copy];
      [(UIPrintInteractionController *)self setActivePrintInfo:v19];
    }

    else
    {
      v18 = +[UIPrintInfo printInfo];
      [(UIPrintInteractionController *)self setActivePrintInfo:v18];
    }

    [(UIPrintInteractionController *)self setPrinter:0];
    v20 = [(UIPrintInteractionController *)self activePrintInfo];
    [v20 setPrinterID:0];

    v21 = [(UIPrintInteractionController *)self activePrintInfo];
    [v21 setDuplex:0];

    [(UIPrintInteractionController *)self setSaveFileURL:v10];
    [(UIPrintInteractionController *)self setShowPrintingProgress:v8];
    [(UIPrintInteractionController *)self setHostingWindowScene:v11];
    v15 = [(UIPrintInteractionController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v15 printInteractionControllerWillPresentPrinterOptions:self];
    }

    if (objc_opt_respondsToSelector())
    {
      [v15 printInteractionControllerDidPresentPrinterOptions:self];
    }

    if (![(UIPrintInteractionController *)self supressNotifyDismissed]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v15 printInteractionControllerWillDismissPrinterOptions:self];
    }

    if (![(UIPrintInteractionController *)self supressNotifyDismissed]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v15 printInteractionControllerDidDismissPrinterOptions:self];
    }

    v16 = 1;
    [(UIPrintInteractionController *)self _setPrinterInfoState:1];
    goto LABEL_21;
  }

  if (!v12)
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"UIPrintErrorDomain" code:4 userInfo:0];
  v12[2](v12, self, 0, v15);
  v16 = 0;
LABEL_21:

LABEL_24:
  return v16;
}

@end