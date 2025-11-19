@interface QLPreviewExtensionRenderer
- (QLPreviewExtensionRenderer)initWithPreview:(id)a3;
- (id)_failedToDrawError;
- (void)drawInContextOfSize:(CGSize)a3 drawingBlock:(id)a4 completionHandler:(id)a5;
- (void)drawInPDFContextOfSize:(CGSize)a3 drawingBlock:(id)a4 completionHandler:(id)a5;
@end

@implementation QLPreviewExtensionRenderer

- (QLPreviewExtensionRenderer)initWithPreview:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = QLPreviewExtensionRenderer;
  v6 = [(QLPreviewExtensionRenderer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_preview, a3);
  }

  return v7;
}

- (void)drawInContextOfSize:(CGSize)a3 drawingBlock:(id)a4 completionHandler:(id)a5
{
  height = a3.height;
  width = a3.width;
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
    v14 = extensionLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [QLPreviewExtensionRenderer drawInContextOfSize:? drawingBlock:? completionHandler:?];
    }

    goto LABEL_13;
  }

  if (width <= 0.0 || height <= 0.0)
  {
    v14 = extensionLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [QLPreviewExtensionRenderer drawInContextOfSize:? drawingBlock:? completionHandler:?];
    }

    goto LABEL_13;
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v12 = QLTCreateCGContextWithSize();
  CFRelease(DeviceRGB);
  if (!v12)
  {
    v14 = extensionLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [QLPreviewExtensionRenderer drawInContextOfSize:? drawingBlock:? completionHandler:?];
    }

LABEL_13:

    v13 = [(QLPreviewExtensionRenderer *)self _failedToDrawError];
    goto LABEL_14;
  }

  v13 = v9[2](v9, v12);
  if (!v13)
  {
    Data = CGBitmapContextGetData(v12);
    BytesPerRow = CGBitmapContextGetBytesPerRow(v12);
    v17 = CGBitmapContextGetHeight(v12) * BytesPerRow;
    v18 = dispatch_get_global_queue(0, 0);
    v19 = dispatch_data_create(Data, v17, v18, *MEMORY[0x277D85CB8]);

    v20 = [objc_alloc(MEMORY[0x277CDAAB0]) initWithBitmapContext:v12];
    v10[2](v10, v19, v20, 0);
    CGContextRelease(v12);

    goto LABEL_15;
  }

  CGContextRelease(v12);
LABEL_14:
  (v10)[2](v10, 0, 0, v13);
LABEL_15:
}

- (void)drawInPDFContextOfSize:(CGSize)a3 drawingBlock:(id)a4 completionHandler:(id)a5
{
  height = a3.height;
  width = a3.width;
  v9 = a4;
  v10 = a5;
  v11 = extensionLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [QLPreviewExtensionRenderer drawInPDFContextOfSize:v11 drawingBlock:? completionHandler:?];
  }

  if (!v9)
  {
    v21 = extensionLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [QLPreviewExtensionRenderer drawInContextOfSize:? drawingBlock:? completionHandler:?];
    }

    goto LABEL_15;
  }

  if (width <= 0.0 || height <= 0.0)
  {
    v21 = extensionLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [QLPreviewExtensionRenderer drawInPDFContextOfSize:? drawingBlock:? completionHandler:?];
    }

LABEL_15:

    v13 = [(QLPreviewExtensionRenderer *)self _failedToDrawError];
    v10[2](v10, 0, v13);
    goto LABEL_27;
  }

  v12 = objc_opt_new();
  v13 = v12;
  if (!v12)
  {
    v22 = extensionLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [QLPreviewExtensionRenderer drawInPDFContextOfSize:? drawingBlock:? completionHandler:?];
    }

    goto LABEL_20;
  }

  v14 = CGDataConsumerCreateWithCFData(v12);
  if (!v14)
  {
    v22 = extensionLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [QLPreviewExtensionRenderer drawInPDFContextOfSize:? drawingBlock:? completionHandler:?];
    }

LABEL_20:

    v18 = [(QLPreviewExtensionRenderer *)self _failedToDrawError];
    v10[2](v10, 0, v18);
LABEL_26:

    goto LABEL_27;
  }

  v15 = v14;
  v25.origin = *MEMORY[0x277CBF3A0];
  v25.size.width = width;
  v25.size.height = height;
  v16 = CGPDFContextCreate(v14, &v25, 0);
  if (v16)
  {
    v17 = v16;
    CGPDFContextBeginPage(v16, 0);
    v18 = v9[2](v9, v17);
    CGPDFContextEndPage(v17);
    CGPDFContextClose(v17);
    if (v18)
    {
      v19 = 0;
      v20 = v18;
    }

    else
    {
      v19 = v13;
      v20 = 0;
    }

    (v10)[2](v10, v19, v20);
    CGContextRelease(v17);
    CGDataConsumerRelease(v15);
    goto LABEL_26;
  }

  v23 = extensionLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    [QLPreviewExtensionRenderer drawInPDFContextOfSize:? drawingBlock:? completionHandler:?];
  }

  v24 = [(QLPreviewExtensionRenderer *)self _failedToDrawError];
  v10[2](v10, 0, v24);

  CGDataConsumerRelease(v15);
LABEL_27:
}

- (id)_failedToDrawError
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCA9B8];
  v6 = *MEMORY[0x277CCA450];
  v7[0] = @"Unable to render preview";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [v2 errorWithDomain:@"QuickLookPreviewErrors" code:3 userInfo:v3];

  return v4;
}

- (void)drawInContextOfSize:(void *)a1 drawingBlock:completionHandler:.cold.1(void *a1)
{
  v1 = [a1 preview];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_2615AE000, v2, v3, "(%@): Could not create CGContext for preview extension. Cancelling preview generation.", v4, v5, v6, v7, v8);
}

- (void)drawInContextOfSize:(void *)a1 drawingBlock:completionHandler:.cold.2(void *a1)
{
  v1 = [a1 preview];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_2615AE000, v2, v3, "(%@): Context size invalid in preview generation", v4, v5, v6, v7, v8);
}

- (void)drawInContextOfSize:(void *)a1 drawingBlock:completionHandler:.cold.3(void *a1)
{
  v1 = [a1 preview];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_2615AE000, v2, v3, "(%@): Missing drawing block", v4, v5, v6, v7, v8);
}

- (void)drawInPDFContextOfSize:(void *)a1 drawingBlock:(NSObject *)a2 completionHandler:.cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [a1 preview];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(&dword_2615AE000, a2, OS_LOG_TYPE_DEBUG, "(%@): Creating vectorized context for preview", v4, 0xCu);
}

- (void)drawInPDFContextOfSize:(void *)a1 drawingBlock:completionHandler:.cold.2(void *a1)
{
  v1 = [a1 preview];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_2615AE000, v2, v3, "(%@): Unable to create pdf context for preview", v4, v5, v6, v7, v8);
}

- (void)drawInPDFContextOfSize:(void *)a1 drawingBlock:completionHandler:.cold.3(void *a1)
{
  v1 = [a1 preview];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_2615AE000, v2, v3, "(%@): Unable to create pdf context for preview (can't create consumer)", v4, v5, v6, v7, v8);
}

- (void)drawInPDFContextOfSize:(void *)a1 drawingBlock:completionHandler:.cold.4(void *a1)
{
  v1 = [a1 preview];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_2615AE000, v2, v3, "(%@): Unable to create data for pdf context for preview", v4, v5, v6, v7, v8);
}

- (void)drawInPDFContextOfSize:(void *)a1 drawingBlock:completionHandler:.cold.5(void *a1)
{
  v1 = [a1 preview];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_2615AE000, v2, v3, "(%@): Invalid context size creating PDF context", v4, v5, v6, v7, v8);
}

@end