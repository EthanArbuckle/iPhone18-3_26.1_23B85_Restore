@interface UIPrintPagesController
- (CGSize)sizeForPageNum:(int64_t)num;
- (UIPrintPagesController)initWithPrintInfo:(id)info delegate:(id)delegate usingWebKitFormatter:(BOOL)formatter;
- (UIPrintPagesControllerDelegate)delegate;
- (id)baseImageForPageNum:(int64_t)num;
- (id)imageForPageNum:(int64_t)num showingPageView:(BOOL)view;
- (void)clearCacheForPageNum:(int64_t)num;
- (void)clearPagesCache;
- (void)createPDFForAllPages;
- (void)dealloc;
- (void)drawBorderAtRect:(CGRect)rect context:(CGContext *)context;
- (void)generateWebKitThumbnailsWithCompletionBlock:(id)block;
- (void)recalculateWebKitPageCount;
- (void)removeWebKitThumbnailPDF;
@end

@implementation UIPrintPagesController

- (UIPrintPagesController)initWithPrintInfo:(id)info delegate:(id)delegate usingWebKitFormatter:(BOOL)formatter
{
  formatterCopy = formatter;
  infoCopy = info;
  delegateCopy = delegate;
  v18.receiver = self;
  v18.super_class = UIPrintPagesController;
  v10 = [(UIPrintPagesController *)&v18 init];
  v11 = v10;
  if (v10)
  {
    [(UIPrintPagesController *)v10 setPrintInfo:infoCopy];
    [(UIPrintPagesController *)v11 setDelegate:delegateCopy];
    [(UIPrintPagesController *)v11 setUsingWebKitFormatter:formatterCopy];
    v12 = objc_alloc_init(MEMORY[0x277CBEA78]);
    [(UIPrintPagesController *)v11 setCachedPageSizes:v12];

    v13 = objc_alloc_init(MEMORY[0x277CBEA78]);
    [(UIPrintPagesController *)v11 setCachedBasePageImages:v13];

    v14 = objc_alloc_init(MEMORY[0x277CCABD8]);
    [(UIPrintPagesController *)v11 setWebKitPrintingOperationsQueue:v14];

    webKitPrintingOperationsQueue = [(UIPrintPagesController *)v11 webKitPrintingOperationsQueue];
    [webKitPrintingOperationsQueue setMaxConcurrentOperationCount:1];

    webKitPrintingOperationsQueue2 = [(UIPrintPagesController *)v11 webKitPrintingOperationsQueue];
    [webKitPrintingOperationsQueue2 setName:@"com.apple.UIKit.UIPrintPreviewViewController.webKitThumbnailGenerationQueue"];
  }

  return v11;
}

- (void)dealloc
{
  webKitPrintingOperationsQueue = [(UIPrintPagesController *)self webKitPrintingOperationsQueue];
  [webKitPrintingOperationsQueue cancelAllOperations];

  webKitThumbnailGenerationThread = [(UIPrintPagesController *)self webKitThumbnailGenerationThread];
  [webKitThumbnailGenerationThread cancel];

  [(UIPrintPagesController *)self clearPagesCache];
  [(UIPrintPagesController *)self removeWebKitThumbnailPDF];
  v5.receiver = self;
  v5.super_class = UIPrintPagesController;
  [(UIPrintPagesController *)&v5 dealloc];
}

- (CGSize)sizeForPageNum:(int64_t)num
{
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  cachedPageSizes = [(UIPrintPagesController *)self cachedPageSizes];
  cachedPageSizes2 = [cachedPageSizes objectForKey:v5];

  if (cachedPageSizes2)
  {
    [cachedPageSizes2 CGSizeValue];
    v9 = v8;
    v11 = v10;
  }

  else
  {
    delegate = [(UIPrintPagesController *)self delegate];
    [delegate paperSizeForPageNum:num];
    v14 = v13;
    v16 = v15;

    if (v16 <= 0.0 || v14 <= 0.0)
    {
      v9 = *MEMORY[0x277CBF3A8];
      v11 = *(MEMORY[0x277CBF3A8] + 8);
      cachedPageSizes2 = [(UIPrintPagesController *)self cachedPageSizes];
      [cachedPageSizes2 removeObjectForKey:v5];
    }

    else
    {
      v17 = v14 / v16;
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen bounds];
      v11 = v19;

      mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen2 bounds];
      v22 = v21;

      if (v11 >= v22)
      {
        v11 = v22;
      }

      if (v17 <= 1.0)
      {
        v9 = ceil(v17 * v11);
      }

      else
      {
        v9 = v11;
        v11 = ceil(v11 / v17);
      }

      cachedPageSizes2 = [MEMORY[0x277CCAE60] valueWithCGSize:{v9, v11}];
      cachedPageSizes3 = [(UIPrintPagesController *)self cachedPageSizes];
      [cachedPageSizes3 setObject:cachedPageSizes2 forKey:v5];
    }
  }

  v24 = v9;
  v25 = v11;
  result.height = v25;
  result.width = v24;
  return result;
}

- (id)baseImageForPageNum:(int64_t)num
{
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  cachedBasePageImages = [(UIPrintPagesController *)self cachedBasePageImages];
  v7 = [cachedBasePageImages objectForKey:v5];

  if (!v7)
  {
    [(UIPrintPagesController *)self sizeForPageNum:num];
    if (v8 > 0.0)
    {
      v10 = v9;
      if (v9 > 0.0)
      {
        v11 = v8;
        mainScreen = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen scale];
        v14 = v11 * v13;
        mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen2 scale];
        v17 = v10 * v16;

        DeviceRGB = CGColorSpaceCreateDeviceRGB();
        v19 = CGBitmapContextCreate(0, vcvtpd_u64_f64(v14), vcvtpd_u64_f64(v17), 8uLL, vcvtd_n_u64_f64(ceil(v14), 2uLL), DeviceRGB, 1u);
        CGColorSpaceRelease(DeviceRGB);
        eraseCGBitmapContext(v19);
        if ([(UIPrintPagesController *)self usingWebKitFormatter])
        {
          webKitThumbnailPDFURL = [(UIPrintPagesController *)self webKitThumbnailPDFURL];
          objc_sync_enter(webKitThumbnailPDFURL);
          if ([(UIPrintPagesController *)self webKitThumbnailPDFDocumentRef])
          {
            Page = CGPDFDocumentGetPage([(UIPrintPagesController *)self webKitThumbnailPDFDocumentRef], num);
            if (Page)
            {
              delegate = [(UIPrintPagesController *)self delegate];
              [delegate paperSizeForPageNum:num];
              v24 = v23;
              v25 = ceil(v17);

              memset(&v32, 0, sizeof(v32));
              CGAffineTransformMakeScale(&v32, v25 / v24, v25 / v24);
              v31 = v32;
              CGContextConcatCTM(v19, &v31);
              printInfo = [(UIPrintPagesController *)self printInfo];
              LODWORD(delegate) = [printInfo imagePDFAnnotations];

              if (delegate)
              {
                CGContextDrawPDFPageWithAnnotations();
              }

              else
              {
                CGContextDrawPDFPage(v19, Page);
              }
            }
          }

          objc_sync_exit(webKitThumbnailPDFURL);
        }

        else
        {
          webKitThumbnailPDFURL = [(UIPrintPagesController *)self delegate];
          [webKitThumbnailPDFURL drawImageForPageNum:num toContext:v19 sheetSize:{v14, v17}];
        }

        Image = CGBitmapContextCreateImage(v19);
        v7 = [MEMORY[0x277D755B8] imageWithCGImage:Image];
        CGImageRelease(Image);
        CGContextRelease(v19);
        cachedBasePageImages2 = [(UIPrintPagesController *)self cachedBasePageImages];
        v29 = cachedBasePageImages2;
        if (v7)
        {
          [cachedBasePageImages2 setObject:v7 forKey:v5];
        }

        else
        {
          [cachedBasePageImages2 removeObjectForKey:v5];
        }
      }
    }
  }

  return v7;
}

- (id)imageForPageNum:(int64_t)num showingPageView:(BOOL)view
{
  viewCopy = view;
  v6 = [(UIPrintPagesController *)self baseImageForPageNum:num];
  v7 = v6;
  if (!v6)
  {
    v12 = 0;
    goto LABEL_16;
  }

  cGImage = [v6 CGImage];
  [v7 size];
  v10 = v9;
  [v7 size];
  v12 = 0;
  if (v10 > 0.0)
  {
    v13 = v11;
    if (v11 > 0.0)
    {
      printInfo = [(UIPrintPagesController *)self printInfo];
      if ([printInfo outputType] != 2)
      {
        printInfo2 = [(UIPrintPagesController *)self printInfo];
        if ([printInfo2 outputType] != 3)
        {
          printInfo3 = [(UIPrintPagesController *)self printInfo];
          currentPrinter = [printInfo3 currentPrinter];
          if (currentPrinter)
          {
            v29 = currentPrinter;
            printInfo4 = [(UIPrintPagesController *)self printInfo];
            currentPrinter2 = [printInfo4 currentPrinter];
            supportsColor = [currentPrinter2 supportsColor];

            if ((supportsColor & 1) == 0)
            {
              goto LABEL_8;
            }
          }

          else
          {
          }

          DeviceRGB = CGColorSpaceCreateDeviceRGB();
          goto LABEL_9;
        }
      }

LABEL_8:
      DeviceRGB = CGColorSpaceCreateDeviceGray();
LABEL_9:
      v17 = DeviceRGB;
      BitsPerComponent = CGImageGetBitsPerComponent(cGImage);
      BytesPerRow = CGImageGetBytesPerRow(cGImage);
      BitmapInfo = CGImageGetBitmapInfo(cGImage);
      v21 = CGBitmapContextCreate(0, v10, v13, BitsPerComponent, BytesPerRow, v17, BitmapInfo);
      CGColorSpaceRelease(v17);
      eraseCGBitmapContext(v21);
      CGContextSaveGState(v21);
      printInfo5 = [(UIPrintPagesController *)self printInfo];
      if ([printInfo5 flipHorizontal])
      {
        printInfo6 = [(UIPrintPagesController *)self printInfo];
        nUpActive = [printInfo6 nUpActive];

        if (!nUpActive || viewCopy)
        {
          CGContextTranslateCTM(v21, v10, 0.0);
          CGContextScaleCTM(v21, -1.0, 1.0);
        }
      }

      else
      {
      }

      v34.origin.x = 0.0;
      v34.origin.y = 0.0;
      v34.size.width = v10;
      v34.size.height = v13;
      CGContextDrawImage(v21, v34, cGImage);
      CGContextRestoreGState(v21);
      [(UIPrintPagesController *)self drawBorderAtRect:v21 context:0.0, 0.0, v10, v13];
      Image = CGBitmapContextCreateImage(v21);
      v12 = [MEMORY[0x277D755B8] imageWithCGImage:Image];
      CGImageRelease(Image);
      CGContextRelease(v21);
    }
  }

LABEL_16:

  return v12;
}

- (void)drawBorderAtRect:(CGRect)rect context:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  v8 = [(UIPrintPagesController *)self printInfo:rect.origin.x];
  borderType = [v8 borderType];

  if (borderType)
  {
    printInfo = [(UIPrintPagesController *)self printInfo];
    printPaper = [printInfo printPaper];
    [printPaper paperSize];
    v13 = v12;
    v15 = v14;

    printInfo2 = [(UIPrintPagesController *)self printInfo];
    printPaper2 = [printInfo2 printPaper];
    [printPaper2 printableRect];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v26 = v15 - (v21 + v25);
    if ((v13 <= v15 || width >= height) && (v13 >= v15 || width <= height))
    {
      v27 = v21;
      v28 = v15 - (v21 + v25);
      v26 = v13 - (v19 + v23);
      v21 = v19;
      v29 = v15;
      v15 = v13;
    }

    else
    {
      v27 = v19;
      v28 = v13 - (v19 + v23);
      v29 = v13;
    }

    v30 = height / v29;
    if (width / v15 < v30)
    {
      v30 = width / v15;
    }

    v31 = ceil(v21 * v30);
    v32 = ceil(v27 * v30);
    v33 = width - ceil(v26 * v30) - v31;
    v34 = height - v32 - ceil(v28 * v30);
    if ((borderType & 0xFFFFFFFFFFFFFFFDLL) == 1)
    {
      v35 = 0.24;
    }

    else
    {
      v35 = 0.5;
    }

    CGContextSaveGState(context);
    CGContextSetLineWidth(context, v35);
    blackColor = [MEMORY[0x277D75348] blackColor];
    CGContextSetStrokeColorWithColor(context, [blackColor CGColor]);

    v38.origin.x = v31;
    v38.origin.y = v32;
    v38.size.width = v33;
    v38.size.height = v34;
    v39 = CGRectInset(v38, 2.0, 2.0);
    CGContextStrokeRect(context, v39);
    if ((borderType - 3) <= 1)
    {
      v40.origin.x = v31;
      v40.origin.y = v32;
      v40.size.width = v33;
      v40.size.height = v34;
      v41 = CGRectInset(v40, 6.0, 6.0);
      CGContextStrokeRect(context, v41);
    }

    CGContextRestoreGState(context);
  }
}

- (void)clearPagesCache
{
  cachedPageSizes = [(UIPrintPagesController *)self cachedPageSizes];
  [cachedPageSizes removeAllObjects];

  cachedBasePageImages = [(UIPrintPagesController *)self cachedBasePageImages];
  [cachedBasePageImages removeAllObjects];
}

- (void)clearCacheForPageNum:(int64_t)num
{
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:num];
  cachedPageSizes = [(UIPrintPagesController *)self cachedPageSizes];
  v5 = [cachedPageSizes objectForKey:v7];

  cachedBasePageImages = [(UIPrintPagesController *)self cachedBasePageImages];
  [cachedBasePageImages removeObjectForKey:v7];
}

- (void)removeWebKitThumbnailPDF
{
  webKitThumbnailPDFURL = [(UIPrintPagesController *)self webKitThumbnailPDFURL];
  objc_sync_enter(webKitThumbnailPDFURL);
  webKitThumbnailPDFDocumentRef = self->_webKitThumbnailPDFDocumentRef;
  if (webKitThumbnailPDFDocumentRef)
  {
    CGPDFDocumentRelease(webKitThumbnailPDFDocumentRef);
    self->_webKitThumbnailPDFDocumentRef = 0;
  }

  webKitThumbnailPDFURL2 = [(UIPrintPagesController *)self webKitThumbnailPDFURL];

  if (webKitThumbnailPDFURL2)
  {
    v6 = objc_opt_new();
    webKitThumbnailPDFURL3 = [(UIPrintPagesController *)self webKitThumbnailPDFURL];
    path = [webKitThumbnailPDFURL3 path];
    v9 = [v6 fileExistsAtPath:path];

    if (v9)
    {
      webKitThumbnailPDFURL4 = [(UIPrintPagesController *)self webKitThumbnailPDFURL];
      v13 = 0;
      v11 = [v6 removeItemAtURL:webKitThumbnailPDFURL4 error:&v13];
      v12 = v13;

      if ((v11 & 1) == 0)
      {
        NSLog(&cfstr_Uiprintpagesco.isa, v12);
      }
    }

    [(UIPrintPagesController *)self setWebKitThumbnailPDFURL:0];
  }

  objc_sync_exit(webKitThumbnailPDFURL);
}

- (void)createPDFForAllPages
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  isCancelled = [currentThread isCancelled];

  if ((isCancelled & 1) == 0)
  {
    delegate = [(UIPrintPagesController *)self delegate];
    url = [delegate createWebKitPDFForAllPages];

    if (url)
    {
      currentThread2 = [MEMORY[0x277CCACC8] currentThread];
      isCancelled2 = [currentThread2 isCancelled];

      if ((isCancelled2 & 1) == 0)
      {
        webKitThumbnailPDFURL = [(UIPrintPagesController *)self webKitThumbnailPDFURL];
        objc_sync_enter(webKitThumbnailPDFURL);
        [(UIPrintPagesController *)self setWebKitThumbnailPDFURL:url];
        webKitThumbnailPDFDocumentRef = self->_webKitThumbnailPDFDocumentRef;
        if (webKitThumbnailPDFDocumentRef)
        {
          CGPDFDocumentRelease(webKitThumbnailPDFDocumentRef);
          self->_webKitThumbnailPDFDocumentRef = 0;
        }

        self->_webKitThumbnailPDFDocumentRef = CGPDFDocumentCreateWithURL(url);
        currentThread3 = [MEMORY[0x277CCACC8] currentThread];
        if ([currentThread3 isCancelled])
        {
          v11 = self->_webKitThumbnailPDFDocumentRef;

          if (v11)
          {
            CGPDFDocumentRelease(self->_webKitThumbnailPDFDocumentRef);
            self->_webKitThumbnailPDFDocumentRef = 0;
          }
        }

        else
        {
        }

        objc_sync_exit(webKitThumbnailPDFURL);

        [(UIPrintPagesController *)self clearPagesCache];
      }
    }
  }
}

- (void)generateWebKitThumbnailsWithCompletionBlock:(id)block
{
  blockCopy = block;
  [(UIPrintPagesController *)self setUsingWebKitFormatter:1];
  webKitPrintingOperationsQueue = [(UIPrintPagesController *)self webKitPrintingOperationsQueue];
  [webKitPrintingOperationsQueue cancelAllOperations];

  webKitThumbnailGenerationThread = [(UIPrintPagesController *)self webKitThumbnailGenerationThread];
  [webKitThumbnailGenerationThread cancel];

  [(UIPrintPagesController *)self removeWebKitThumbnailPDF];
  [(UIPrintPagesController *)self clearPagesCache];
  objc_initWeak(&location, self);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __70__UIPrintPagesController_generateWebKitThumbnailsWithCompletionBlock___block_invoke;
  v16[3] = &unk_279A9C428;
  objc_copyWeak(&v18, &location);
  v7 = blockCopy;
  v17 = v7;
  v8 = MEMORY[0x25F8E54A0](v16);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__UIPrintPagesController_generateWebKitThumbnailsWithCompletionBlock___block_invoke_2;
  v13[3] = &unk_279A9C428;
  objc_copyWeak(&v15, &location);
  v9 = v8;
  v14 = v9;
  v10 = MEMORY[0x25F8E54A0](v13);
  v11 = [[UIPrintWebKitThumbnailGenerationOperation alloc] initWithPagesController:self];
  [(NSBlockOperation *)v11 addExecutionBlock:v10];
  webKitPrintingOperationsQueue2 = [(UIPrintPagesController *)self webKitPrintingOperationsQueue];
  [webKitPrintingOperationsQueue2 addOperation:v11];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __70__UIPrintPagesController_generateWebKitThumbnailsWithCompletionBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained createPDFForAllPages];
  (*(*(a1 + 32) + 16))();
}

void __70__UIPrintPagesController_generateWebKitThumbnailsWithCompletionBlock___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [objc_alloc(MEMORY[0x277CCACC8]) initWithBlock:*(a1 + 32)];
  [WeakRetained setWebKitThumbnailGenerationThread:v2];

  v3 = [WeakRetained webKitThumbnailGenerationThread];
  [v3 setName:@"com.apple.UIKit.UIPrintPreviewViewController.webKitThumbnailGenerationThread"];

  v4 = [WeakRetained webKitThumbnailGenerationThread];
  [v4 start];
}

- (void)recalculateWebKitPageCount
{
  objc_initWeak(&location, self);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __52__UIPrintPagesController_recalculateWebKitPageCount__block_invoke;
  v10 = &unk_279A9C210;
  objc_copyWeak(&v11, &location);
  v3 = MEMORY[0x25F8E54A0](&v7);
  v4 = [UIPrintWebKitThumbnailGenerationOperation alloc];
  v5 = [(UIPrintWebKitThumbnailGenerationOperation *)v4 initWithPagesController:self, v7, v8, v9, v10];
  [(NSBlockOperation *)v5 addExecutionBlock:v3];
  webKitPrintingOperationsQueue = [(UIPrintPagesController *)self webKitPrintingOperationsQueue];
  [webKitPrintingOperationsQueue addOperation:v5];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __52__UIPrintPagesController_recalculateWebKitPageCount__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 recalculateWebKitPageCount];
}

- (UIPrintPagesControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end