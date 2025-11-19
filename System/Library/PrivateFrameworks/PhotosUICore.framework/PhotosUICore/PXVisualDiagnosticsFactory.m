@interface PXVisualDiagnosticsFactory
+ (id)debugQuickLookObjectWithRootProvider:(id)a3;
+ (void)_dismissProgressIndicator:(id)a3 completionHandler:(id)a4;
+ (void)_presentProgressIndicatorFromViewController:(id)a3 completionHandler:(id)a4;
+ (void)requestVisualDiagnosticsPDFDocumentURLWithConfiguration:(id)a3 resultHandler:(id)a4;
+ (void)requestVisualDiagnosticsPDFDocumentWithConfiguration:(id)a3 resultHandler:(id)a4;
+ (void)showVisualDiagnosticsWithConfiguration:(id)a3 fromViewController:(id)a4 completionHandler:(id)a5;
@end

@implementation PXVisualDiagnosticsFactory

+ (id)debugQuickLookObjectWithRootProvider:(id)a3
{
  v3 = a3;
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  consumer = CGDataConsumerCreateWithCFData(Mutable);
  v32 = [[off_1E7721970 alloc] initWithRootProvider:v3];
  v5 = [[off_1E7721978 alloc] initWithConfiguration:v32 dataConsumer:consumer];
  v6 = dispatch_semaphore_create(0);
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __67__PXVisualDiagnosticsFactory_debugQuickLookObjectWithRootProvider___block_invoke;
  v33[3] = &unk_1E774C5C0;
  v7 = v6;
  v34 = v7;
  [v3 addVisualDiagnosticsToContext:v5 completionHandler:v33];
  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  CGPDFContextClose([v5 CGContext]);
  v8 = CGDataProviderCreateWithCFData(Mutable);
  v9 = CGPDFDocumentCreateWithProvider(v8);
  NumberOfPages = CGPDFDocumentGetNumberOfPages(v9);
  if (NumberOfPages)
  {
    v11 = 0;
    v12 = 0.0;
    v13 = 64.0;
    v14 = 64.0;
    v15 = 0.0;
    do
    {
      v16 = v11 + 1;
      Page = CGPDFDocumentGetPage(v9, v11 + 1);
      BoxRect = CGPDFPageGetBoxRect(Page, kCGPDFMediaBox);
      x = BoxRect.origin.x;
      y = BoxRect.origin.y;
      width = BoxRect.size.width;
      height = BoxRect.size.height;
      if (v11)
      {
        v37 = CGRectOffset(BoxRect, 0.0, v13);
        x = v37.origin.x;
        y = v37.origin.y;
        width = v37.size.width;
        height = v37.size.height;
      }

      v38.origin.x = v15;
      v38.origin.y = v12;
      v38.size.width = v14;
      v38.size.height = v13;
      v22 = x;
      v39 = CGRectUnion(v38, *(&y - 1));
      v15 = v39.origin.x;
      v12 = v39.origin.y;
      v14 = v39.size.width;
      v13 = v39.size.height;
      ++v11;
    }

    while (NumberOfPages != v16);
  }

  else
  {
    v15 = 0.0;
    v14 = 64.0;
    v12 = 0.0;
    v13 = 64.0;
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v24 = CGBitmapContextCreate(0, v14, v13, 8uLL, 0, DeviceRGB, 1u);
  CGColorSpaceRelease(DeviceRGB);
  CGContextSetRGBFillColor(v24, 1.0, 1.0, 1.0, 1.0);
  v40.origin.x = v15;
  v40.origin.y = v12;
  v40.size.width = v14;
  v40.size.height = v13;
  CGContextFillRect(v24, v40);
  if (NumberOfPages)
  {
    v25 = 1;
    do
    {
      v26 = CGPDFDocumentGetPage(v9, v25);
      v41 = CGPDFPageGetBoxRect(v26, kCGPDFMediaBox);
      v27 = v41.size.height;
      CGContextDrawPDFPage(v24, v26);
      CGContextTranslateCTM(v24, 0.0, v27);
      ++v25;
      --NumberOfPages;
    }

    while (NumberOfPages);
  }

  CGContextFlush(v24);
  Image = CGBitmapContextCreateImage(v24);
  v29 = [MEMORY[0x1E69DCAB8] imageWithCGImage:Image];
  CGImageRelease(Image);
  CGContextRelease(v24);
  CGPDFDocumentRelease(v9);
  CGDataProviderRelease(v8);
  CGDataConsumerRelease(consumer);
  CFRelease(Mutable);

  return v29;
}

void __67__PXVisualDiagnosticsFactory_debugQuickLookObjectWithRootProvider___block_invoke(uint64_t a1, char a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = PLUIGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_ERROR, "visual diagnostics failed: %@", &v7, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

+ (void)requestVisualDiagnosticsPDFDocumentURLWithConfiguration:(id)a3 resultHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 rootProvider];
  if (v7)
  {
    v8 = [[off_1E7721978 alloc] initWithConfiguration:v5];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __100__PXVisualDiagnosticsFactory_requestVisualDiagnosticsPDFDocumentURLWithConfiguration_resultHandler___block_invoke;
    v10[3] = &unk_1E774BD88;
    v11 = v8;
    v12 = v6;
    v9 = v8;
    [v7 addVisualDiagnosticsToContext:v9 completionHandler:v10];
  }

  else
  {
    v9 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"root provider not specified"];
    (*(v6 + 2))(v6, 0, v9);
  }
}

void __100__PXVisualDiagnosticsFactory_requestVisualDiagnosticsPDFDocumentURLWithConfiguration_resultHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  *(a1 + 32);
  *(a1 + 40);
  v5 = v4;
  px_dispatch_on_main_queue();
}

void __100__PXVisualDiagnosticsFactory_requestVisualDiagnosticsPDFDocumentURLWithConfiguration_resultHandler___block_invoke_2(uint64_t a1)
{
  CGPDFContextClose([*(a1 + 32) CGContext]);
  if ((*(a1 + 56) & 1) == 0)
  {
    v4 = *(a1 + 48);
    v7 = [MEMORY[0x1E696ABC0] px_genericErrorWithUnderlyingError:*(a1 + 40) debugDescription:@"visual diagnostics failed to be added"];
    (*(v4 + 16))(v4, 0, v7);
    goto LABEL_5;
  }

  v2 = [*(a1 + 32) fileURL];
  v3 = *(a1 + 48);
  if (v2)
  {
    v7 = v2;
    (*(v3 + 16))(v3);
LABEL_5:
    v5 = v7;
    goto LABEL_6;
  }

  v6 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"missing fileURL"];
  (*(v3 + 16))(v3, 0, v6);

  v5 = 0;
LABEL_6:
}

+ (void)requestVisualDiagnosticsPDFDocumentWithConfiguration:(id)a3 resultHandler:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __97__PXVisualDiagnosticsFactory_requestVisualDiagnosticsPDFDocumentWithConfiguration_resultHandler___block_invoke;
  v8[3] = &unk_1E77473C0;
  v9 = v6;
  v7 = v6;
  [a1 requestVisualDiagnosticsPDFDocumentURLWithConfiguration:a3 resultHandler:v8];
}

void __97__PXVisualDiagnosticsFactory_requestVisualDiagnosticsPDFDocumentWithConfiguration_resultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2050000000;
    v7 = getPDFDocumentClass_softClass;
    v14 = getPDFDocumentClass_softClass;
    if (!getPDFDocumentClass_softClass)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __getPDFDocumentClass_block_invoke;
      v10[3] = &unk_1E774BD00;
      v10[4] = &v11;
      __getPDFDocumentClass_block_invoke(v10);
      v7 = v12[3];
    }

    v8 = v7;
    _Block_object_dispose(&v11, 8);
    v9 = [[v7 alloc] initWithURL:v5];
  }

  else
  {
    v9 = 0;
  }

  if (!(v6 | v9))
  {
    v6 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"failed to create a document"];
  }

  (*(*(a1 + 32) + 16))();
}

+ (void)_dismissProgressIndicator:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v5 = a4;
  [v6 stopShowing:v5];
}

+ (void)_presentProgressIndicatorFromViewController:(id)a3 completionHandler:(id)a4
{
  v4 = a4;
  v5 = [PXProgressIndicatorAlertController beginShowingModalProgressWithConfiguration:&__block_literal_global_88723];
  v4[2](v4, v5);
}

void __92__PXVisualDiagnosticsFactory__presentProgressIndicatorFromViewController_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setDelay:0.0];
  [v2 setIsInternalUIAllowed:1];
  [v2 setLabel:@"Generating visual diagnostics…"];
}

+ (void)showVisualDiagnosticsWithConfiguration:(id)a3 fromViewController:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!a5)
  {
    v11 = v25;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __106__PXVisualDiagnosticsFactory_showVisualDiagnosticsWithConfiguration_fromViewController_completionHandler___block_invoke;
    v25[3] = &unk_1E774C5C0;
    v5 = &v26;
    v26 = v9;
  }

  v12 = _Block_copy(v11);
  v13 = v10;
  v14 = v13;
  if (!v13)
  {
    v15 = [MEMORY[0x1E69DC668] sharedApplication];
    v16 = [v15 px_firstKeyWindow];
    v14 = [v16 rootViewController];
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __106__PXVisualDiagnosticsFactory_showVisualDiagnosticsWithConfiguration_fromViewController_completionHandler___block_invoke_1;
  v20[3] = &unk_1E7736BF0;
  v24 = a1;
  v17 = v9;
  v21 = v17;
  v18 = v12;
  v22 = v14;
  v23 = v18;
  v19 = v14;
  [a1 _presentProgressIndicatorFromViewController:v19 completionHandler:v20];

  if (!a5)
  {
  }
}

void __106__PXVisualDiagnosticsFactory_showVisualDiagnosticsWithConfiguration_fromViewController_completionHandler___block_invoke(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = PLUIGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138412546;
      v9 = v7;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_ERROR, "failed to show visual diagnostics for %@: %@", &v8, 0x16u);
    }
  }
}

void __106__PXVisualDiagnosticsFactory_showVisualDiagnosticsWithConfiguration_fromViewController_completionHandler___block_invoke_1(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __106__PXVisualDiagnosticsFactory_showVisualDiagnosticsWithConfiguration_fromViewController_completionHandler___block_invoke_2;
  v7[3] = &unk_1E7736BC8;
  v11 = v4;
  v8 = v3;
  v10 = *(a1 + 48);
  v9 = *(a1 + 40);
  v6 = v3;
  [v4 requestVisualDiagnosticsPDFDocumentWithConfiguration:v5 resultHandler:v7];
}

void __106__PXVisualDiagnosticsFactory_showVisualDiagnosticsWithConfiguration_fromViewController_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __106__PXVisualDiagnosticsFactory_showVisualDiagnosticsWithConfiguration_fromViewController_completionHandler___block_invoke_3;
  v11[3] = &unk_1E774BDB0;
  v12 = v5;
  v13 = v6;
  v8 = *(a1 + 56);
  v15 = *(a1 + 48);
  v14 = *(a1 + 40);
  v9 = v6;
  v10 = v5;
  [v8 _dismissProgressIndicator:v7 completionHandler:v11];
}

void __106__PXVisualDiagnosticsFactory_showVisualDiagnosticsWithConfiguration_fromViewController_completionHandler___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = objc_alloc_init(PXVisualDiagnosticsViewController);
    [(PXVisualDiagnosticsViewController *)v2 setDocument:*(a1 + 32)];
    v3 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v2];
    [v3 setModalInPresentation:1];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __106__PXVisualDiagnosticsFactory_showVisualDiagnosticsWithConfiguration_fromViewController_completionHandler___block_invoke_4;
    v7[3] = &unk_1E774C250;
    v4 = *(a1 + 48);
    v8 = *(a1 + 56);
    [v4 px_presentOverTopmostPresentedViewController:v3 animated:1 completion:v7];
  }

  else
  {
    v5 = [off_1E7721438 showForError:*(a1 + 40)];
    v6 = *(*(a1 + 56) + 16);

    v6();
  }
}

@end