@interface UIPrintPagesController
- (CGSize)sizeForPageNum:(int64_t)a3;
- (UIPrintPagesController)initWithPrintInfo:(id)a3 delegate:(id)a4 usingWebKitFormatter:(BOOL)a5;
- (UIPrintPagesControllerDelegate)delegate;
- (id)baseImageForPageNum:(int64_t)a3;
- (id)imageForPageNum:(int64_t)a3 showingPageView:(BOOL)a4;
- (void)clearCacheForPageNum:(int64_t)a3;
- (void)clearPagesCache;
- (void)createPDFForAllPages;
- (void)dealloc;
- (void)drawBorderAtRect:(CGRect)a3 context:(CGContext *)a4;
- (void)generateWebKitThumbnailsWithCompletionBlock:(id)a3;
- (void)recalculateWebKitPageCount;
- (void)removeWebKitThumbnailPDF;
@end

@implementation UIPrintPagesController

- (UIPrintPagesController)initWithPrintInfo:(id)a3 delegate:(id)a4 usingWebKitFormatter:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v18.receiver = self;
  v18.super_class = UIPrintPagesController;
  v10 = [(UIPrintPagesController *)&v18 init];
  v11 = v10;
  if (v10)
  {
    [(UIPrintPagesController *)v10 setPrintInfo:v8];
    [(UIPrintPagesController *)v11 setDelegate:v9];
    [(UIPrintPagesController *)v11 setUsingWebKitFormatter:v5];
    v12 = objc_alloc_init(MEMORY[0x277CBEA78]);
    [(UIPrintPagesController *)v11 setCachedPageSizes:v12];

    v13 = objc_alloc_init(MEMORY[0x277CBEA78]);
    [(UIPrintPagesController *)v11 setCachedBasePageImages:v13];

    v14 = objc_alloc_init(MEMORY[0x277CCABD8]);
    [(UIPrintPagesController *)v11 setWebKitPrintingOperationsQueue:v14];

    v15 = [(UIPrintPagesController *)v11 webKitPrintingOperationsQueue];
    [v15 setMaxConcurrentOperationCount:1];

    v16 = [(UIPrintPagesController *)v11 webKitPrintingOperationsQueue];
    [v16 setName:@"com.apple.UIKit.UIPrintPreviewViewController.webKitThumbnailGenerationQueue"];
  }

  return v11;
}

- (void)dealloc
{
  v3 = [(UIPrintPagesController *)self webKitPrintingOperationsQueue];
  [v3 cancelAllOperations];

  v4 = [(UIPrintPagesController *)self webKitThumbnailGenerationThread];
  [v4 cancel];

  [(UIPrintPagesController *)self clearPagesCache];
  [(UIPrintPagesController *)self removeWebKitThumbnailPDF];
  v5.receiver = self;
  v5.super_class = UIPrintPagesController;
  [(UIPrintPagesController *)&v5 dealloc];
}

- (CGSize)sizeForPageNum:(int64_t)a3
{
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v6 = [(UIPrintPagesController *)self cachedPageSizes];
  v7 = [v6 objectForKey:v5];

  if (v7)
  {
    [v7 CGSizeValue];
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v12 = [(UIPrintPagesController *)self delegate];
    [v12 paperSizeForPageNum:a3];
    v14 = v13;
    v16 = v15;

    if (v16 <= 0.0 || v14 <= 0.0)
    {
      v9 = *MEMORY[0x277CBF3A8];
      v11 = *(MEMORY[0x277CBF3A8] + 8);
      v7 = [(UIPrintPagesController *)self cachedPageSizes];
      [v7 removeObjectForKey:v5];
    }

    else
    {
      v17 = v14 / v16;
      v18 = [MEMORY[0x277D759A0] mainScreen];
      [v18 bounds];
      v11 = v19;

      v20 = [MEMORY[0x277D759A0] mainScreen];
      [v20 bounds];
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

      v7 = [MEMORY[0x277CCAE60] valueWithCGSize:{v9, v11}];
      v23 = [(UIPrintPagesController *)self cachedPageSizes];
      [v23 setObject:v7 forKey:v5];
    }
  }

  v24 = v9;
  v25 = v11;
  result.height = v25;
  result.width = v24;
  return result;
}

- (id)baseImageForPageNum:(int64_t)a3
{
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v6 = [(UIPrintPagesController *)self cachedBasePageImages];
  v7 = [v6 objectForKey:v5];

  if (!v7)
  {
    [(UIPrintPagesController *)self sizeForPageNum:a3];
    if (v8 > 0.0)
    {
      v10 = v9;
      if (v9 > 0.0)
      {
        v11 = v8;
        v12 = [MEMORY[0x277D759A0] mainScreen];
        [v12 scale];
        v14 = v11 * v13;
        v15 = [MEMORY[0x277D759A0] mainScreen];
        [v15 scale];
        v17 = v10 * v16;

        DeviceRGB = CGColorSpaceCreateDeviceRGB();
        v19 = CGBitmapContextCreate(0, vcvtpd_u64_f64(v14), vcvtpd_u64_f64(v17), 8uLL, vcvtd_n_u64_f64(ceil(v14), 2uLL), DeviceRGB, 1u);
        CGColorSpaceRelease(DeviceRGB);
        eraseCGBitmapContext(v19);
        if ([(UIPrintPagesController *)self usingWebKitFormatter])
        {
          v20 = [(UIPrintPagesController *)self webKitThumbnailPDFURL];
          objc_sync_enter(v20);
          if ([(UIPrintPagesController *)self webKitThumbnailPDFDocumentRef])
          {
            Page = CGPDFDocumentGetPage([(UIPrintPagesController *)self webKitThumbnailPDFDocumentRef], a3);
            if (Page)
            {
              v22 = [(UIPrintPagesController *)self delegate];
              [v22 paperSizeForPageNum:a3];
              v24 = v23;
              v25 = ceil(v17);

              memset(&v32, 0, sizeof(v32));
              CGAffineTransformMakeScale(&v32, v25 / v24, v25 / v24);
              v31 = v32;
              CGContextConcatCTM(v19, &v31);
              v26 = [(UIPrintPagesController *)self printInfo];
              LODWORD(v22) = [v26 imagePDFAnnotations];

              if (v22)
              {
                CGContextDrawPDFPageWithAnnotations();
              }

              else
              {
                CGContextDrawPDFPage(v19, Page);
              }
            }
          }

          objc_sync_exit(v20);
        }

        else
        {
          v20 = [(UIPrintPagesController *)self delegate];
          [v20 drawImageForPageNum:a3 toContext:v19 sheetSize:{v14, v17}];
        }

        Image = CGBitmapContextCreateImage(v19);
        v7 = [MEMORY[0x277D755B8] imageWithCGImage:Image];
        CGImageRelease(Image);
        CGContextRelease(v19);
        v28 = [(UIPrintPagesController *)self cachedBasePageImages];
        v29 = v28;
        if (v7)
        {
          [v28 setObject:v7 forKey:v5];
        }

        else
        {
          [v28 removeObjectForKey:v5];
        }
      }
    }
  }

  return v7;
}

- (id)imageForPageNum:(int64_t)a3 showingPageView:(BOOL)a4
{
  v4 = a4;
  v6 = [(UIPrintPagesController *)self baseImageForPageNum:a3];
  v7 = v6;
  if (!v6)
  {
    v12 = 0;
    goto LABEL_16;
  }

  v8 = [v6 CGImage];
  [v7 size];
  v10 = v9;
  [v7 size];
  v12 = 0;
  if (v10 > 0.0)
  {
    v13 = v11;
    if (v11 > 0.0)
    {
      v14 = [(UIPrintPagesController *)self printInfo];
      if ([v14 outputType] != 2)
      {
        v15 = [(UIPrintPagesController *)self printInfo];
        if ([v15 outputType] != 3)
        {
          v27 = [(UIPrintPagesController *)self printInfo];
          v28 = [v27 currentPrinter];
          if (v28)
          {
            v29 = v28;
            v30 = [(UIPrintPagesController *)self printInfo];
            v31 = [v30 currentPrinter];
            v32 = [v31 supportsColor];

            if ((v32 & 1) == 0)
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
      BitsPerComponent = CGImageGetBitsPerComponent(v8);
      BytesPerRow = CGImageGetBytesPerRow(v8);
      BitmapInfo = CGImageGetBitmapInfo(v8);
      v21 = CGBitmapContextCreate(0, v10, v13, BitsPerComponent, BytesPerRow, v17, BitmapInfo);
      CGColorSpaceRelease(v17);
      eraseCGBitmapContext(v21);
      CGContextSaveGState(v21);
      v22 = [(UIPrintPagesController *)self printInfo];
      if ([v22 flipHorizontal])
      {
        v23 = [(UIPrintPagesController *)self printInfo];
        v24 = [v23 nUpActive];

        if (!v24 || v4)
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
      CGContextDrawImage(v21, v34, v8);
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

- (void)drawBorderAtRect:(CGRect)a3 context:(CGContext *)a4
{
  height = a3.size.height;
  width = a3.size.width;
  v8 = [(UIPrintPagesController *)self printInfo:a3.origin.x];
  v9 = [v8 borderType];

  if (v9)
  {
    v10 = [(UIPrintPagesController *)self printInfo];
    v11 = [v10 printPaper];
    [v11 paperSize];
    v13 = v12;
    v15 = v14;

    v16 = [(UIPrintPagesController *)self printInfo];
    v17 = [v16 printPaper];
    [v17 printableRect];
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
    if ((v9 & 0xFFFFFFFFFFFFFFFDLL) == 1)
    {
      v35 = 0.24;
    }

    else
    {
      v35 = 0.5;
    }

    CGContextSaveGState(a4);
    CGContextSetLineWidth(a4, v35);
    v36 = [MEMORY[0x277D75348] blackColor];
    CGContextSetStrokeColorWithColor(a4, [v36 CGColor]);

    v38.origin.x = v31;
    v38.origin.y = v32;
    v38.size.width = v33;
    v38.size.height = v34;
    v39 = CGRectInset(v38, 2.0, 2.0);
    CGContextStrokeRect(a4, v39);
    if ((v9 - 3) <= 1)
    {
      v40.origin.x = v31;
      v40.origin.y = v32;
      v40.size.width = v33;
      v40.size.height = v34;
      v41 = CGRectInset(v40, 6.0, 6.0);
      CGContextStrokeRect(a4, v41);
    }

    CGContextRestoreGState(a4);
  }
}

- (void)clearPagesCache
{
  v3 = [(UIPrintPagesController *)self cachedPageSizes];
  [v3 removeAllObjects];

  v4 = [(UIPrintPagesController *)self cachedBasePageImages];
  [v4 removeAllObjects];
}

- (void)clearCacheForPageNum:(int64_t)a3
{
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v4 = [(UIPrintPagesController *)self cachedPageSizes];
  v5 = [v4 objectForKey:v7];

  v6 = [(UIPrintPagesController *)self cachedBasePageImages];
  [v6 removeObjectForKey:v7];
}

- (void)removeWebKitThumbnailPDF
{
  v3 = [(UIPrintPagesController *)self webKitThumbnailPDFURL];
  objc_sync_enter(v3);
  webKitThumbnailPDFDocumentRef = self->_webKitThumbnailPDFDocumentRef;
  if (webKitThumbnailPDFDocumentRef)
  {
    CGPDFDocumentRelease(webKitThumbnailPDFDocumentRef);
    self->_webKitThumbnailPDFDocumentRef = 0;
  }

  v5 = [(UIPrintPagesController *)self webKitThumbnailPDFURL];

  if (v5)
  {
    v6 = objc_opt_new();
    v7 = [(UIPrintPagesController *)self webKitThumbnailPDFURL];
    v8 = [v7 path];
    v9 = [v6 fileExistsAtPath:v8];

    if (v9)
    {
      v10 = [(UIPrintPagesController *)self webKitThumbnailPDFURL];
      v13 = 0;
      v11 = [v6 removeItemAtURL:v10 error:&v13];
      v12 = v13;

      if ((v11 & 1) == 0)
      {
        NSLog(&cfstr_Uiprintpagesco.isa, v12);
      }
    }

    [(UIPrintPagesController *)self setWebKitThumbnailPDFURL:0];
  }

  objc_sync_exit(v3);
}

- (void)createPDFForAllPages
{
  v3 = [MEMORY[0x277CCACC8] currentThread];
  v4 = [v3 isCancelled];

  if ((v4 & 1) == 0)
  {
    v5 = [(UIPrintPagesController *)self delegate];
    url = [v5 createWebKitPDFForAllPages];

    if (url)
    {
      v6 = [MEMORY[0x277CCACC8] currentThread];
      v7 = [v6 isCancelled];

      if ((v7 & 1) == 0)
      {
        v8 = [(UIPrintPagesController *)self webKitThumbnailPDFURL];
        objc_sync_enter(v8);
        [(UIPrintPagesController *)self setWebKitThumbnailPDFURL:url];
        webKitThumbnailPDFDocumentRef = self->_webKitThumbnailPDFDocumentRef;
        if (webKitThumbnailPDFDocumentRef)
        {
          CGPDFDocumentRelease(webKitThumbnailPDFDocumentRef);
          self->_webKitThumbnailPDFDocumentRef = 0;
        }

        self->_webKitThumbnailPDFDocumentRef = CGPDFDocumentCreateWithURL(url);
        v10 = [MEMORY[0x277CCACC8] currentThread];
        if ([v10 isCancelled])
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

        objc_sync_exit(v8);

        [(UIPrintPagesController *)self clearPagesCache];
      }
    }
  }
}

- (void)generateWebKitThumbnailsWithCompletionBlock:(id)a3
{
  v4 = a3;
  [(UIPrintPagesController *)self setUsingWebKitFormatter:1];
  v5 = [(UIPrintPagesController *)self webKitPrintingOperationsQueue];
  [v5 cancelAllOperations];

  v6 = [(UIPrintPagesController *)self webKitThumbnailGenerationThread];
  [v6 cancel];

  [(UIPrintPagesController *)self removeWebKitThumbnailPDF];
  [(UIPrintPagesController *)self clearPagesCache];
  objc_initWeak(&location, self);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __70__UIPrintPagesController_generateWebKitThumbnailsWithCompletionBlock___block_invoke;
  v16[3] = &unk_279A9C428;
  objc_copyWeak(&v18, &location);
  v7 = v4;
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
  v12 = [(UIPrintPagesController *)self webKitPrintingOperationsQueue];
  [v12 addOperation:v11];

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
  v6 = [(UIPrintPagesController *)self webKitPrintingOperationsQueue];
  [v6 addOperation:v5];

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