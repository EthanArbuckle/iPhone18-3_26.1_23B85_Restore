@interface PXVisualDiagnosticsContext
- (BOOL)isPrivateDataAllowed;
- (CGRect)currentPageBounds;
- (CGSize)defaultPageSize;
- (PXVisualDiagnosticsContext)init;
- (PXVisualDiagnosticsContext)initWithConfiguration:(id)a3 dataConsumer:(CGDataConsumer *)a4;
- (void)addPagesForTableWithConfiguration:(id)a3 columnsConfiguration:(id)a4 rowsConfiguration:(id)a5;
- (void)addTitlePageWithTitle:(id)a3 subtitle:(id)a4;
- (void)beginPageWithConfiguration:(id)a3;
- (void)dealloc;
- (void)drawImageInRect:(CGRect)a3 configuration:(id)a4;
- (void)drawTextInRect:(CGRect)a3 configuration:(id)a4;
- (void)endPage;
- (void)fillRect:(CGRect)a3 configuration:(id)a4;
- (void)strokeRect:(CGRect)a3 configuration:(id)a4;
@end

@implementation PXVisualDiagnosticsContext

- (CGRect)currentPageBounds
{
  x = self->_currentPageBounds.origin.x;
  y = self->_currentPageBounds.origin.y;
  width = self->_currentPageBounds.size.width;
  height = self->_currentPageBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (BOOL)isPrivateDataAllowed
{
  v2 = [(PXVisualDiagnosticsContext *)self configuration];
  v3 = [v2 isPrivateDataAllowed];

  return v3;
}

- (void)addPagesForTableWithConfiguration:(id)a3 columnsConfiguration:(id)a4 rowsConfiguration:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(PXVisualDiagnosticsTable);
  [(PXVisualDiagnosticsTable *)v11 setMargins:10.0, 10.0, 10.0, 10.0];
  v10[2](v10, v11);

  [(PXVisualDiagnosticsTable *)v11 configureColumnsWithConfiguration:v9];
  [(PXVisualDiagnosticsTable *)v11 renderInContext:self withRowsConfiguration:v8];
}

- (void)addTitlePageWithTitle:(id)a3 subtitle:(id)a4
{
  v36[2] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = MEMORY[0x1E696AD40];
  v8 = a3;
  v9 = [v7 alloc];
  v10 = *MEMORY[0x1E69DB648];
  v35[0] = *MEMORY[0x1E69DB648];
  v11 = *MEMORY[0x1E69DB958];
  v12 = [MEMORY[0x1E69DB878] systemFontOfSize:24.0 weight:*MEMORY[0x1E69DB958]];
  v36[0] = v12;
  v13 = *MEMORY[0x1E69DB650];
  v35[1] = *MEMORY[0x1E69DB650];
  v14 = [MEMORY[0x1E69DC888] blackColor];
  v36[1] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];
  v16 = [v9 initWithString:v8 attributes:v15];

  v17 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
  [v16 appendAttributedString:v17];

  if ([v6 length])
  {
    v18 = objc_alloc(MEMORY[0x1E696AAB0]);
    v33[0] = v10;
    v19 = [MEMORY[0x1E69DB878] systemFontOfSize:18.0 weight:v11];
    v33[1] = v13;
    v34[0] = v19;
    v20 = [MEMORY[0x1E69DC888] lightGrayColor];
    v34[1] = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];
    v22 = [v18 initWithString:v6 attributes:v21];
    [v16 appendAttributedString:v22];
  }

  [(PXVisualDiagnosticsContext *)self beginPage];
  [(PXVisualDiagnosticsContext *)self currentPageBounds];
  v38 = CGRectInset(v37, 80.0, 100.0);
  x = v38.origin.x;
  y = v38.origin.y;
  width = v38.size.width;
  height = v38.size.height;
  v28 = MEMORY[0x1E69E9820];
  v29 = 3221225472;
  v30 = __61__PXVisualDiagnosticsContext_addTitlePageWithTitle_subtitle___block_invoke;
  v31 = &unk_1E7BB6418;
  v32 = v16;
  v27 = v16;
  [(PXVisualDiagnosticsContext *)self drawTextInRect:&v28 configuration:x, y, width, height];
  [(PXVisualDiagnosticsContext *)self endPage:v28];
}

- (void)drawImageInRect:(CGRect)a3 configuration:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = a4;
  v17 = objc_alloc_init(_PXVisualDiagnosticsDrawImageConfiguration);
  v8[2](v8, v17);

  v9 = [(_PXVisualDiagnosticsDrawImageConfiguration *)v17 image];
  v10 = [(_PXVisualDiagnosticsDrawImageConfiguration *)v17 symbolName];
  v11 = v10;
  if (v9)
  {
    v12 = 1;
  }

  else
  {
    v12 = v10 == 0;
  }

  if (!v12)
  {
    v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:v10];
  }

  if (v9)
  {
    [v9 size];
    PXSizeGetAspectRatio(v13, v14);
    PFSizeWithAspectRatioFittingSize();
    [v9 drawInRect:{x + width * 0.5 + v15 * -0.5, y + height * 0.5 + v16 * -0.5, v15}];
  }
}

- (void)drawTextInRect:(CGRect)a3 configuration:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = a4;
  v35 = objc_alloc_init(_PXVisualDiagnosticsDrawTextConfiguration);
  v8[2](v8, v35);

  [(_PXVisualDiagnosticsDrawTextConfiguration *)v35 relativePosition];
  v10 = v9;
  v12 = v11;
  v13 = [(_PXVisualDiagnosticsDrawTextConfiguration *)v35 attributedText];
  if (!v13)
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v15 = [(_PXVisualDiagnosticsDrawTextConfiguration *)v35 font];
    if (v15)
    {
      [v14 setObject:v15 forKeyedSubscript:*MEMORY[0x1E69DB648]];
    }

    else
    {
      v16 = MEMORY[0x1E69DB878];
      [(_PXVisualDiagnosticsDrawTextConfiguration *)v35 fontSize];
      v17 = [v16 monospacedSystemFontOfSize:? weight:?];
      [v14 setObject:v17 forKeyedSubscript:*MEMORY[0x1E69DB648]];
    }

    v18 = [(_PXVisualDiagnosticsDrawTextConfiguration *)v35 textColor];
    [v14 setObject:v18 forKeyedSubscript:*MEMORY[0x1E69DB650]];

    v19 = [(_PXVisualDiagnosticsDrawTextConfiguration *)v35 backgroundColor];
    [v14 setObject:v19 forKeyedSubscript:*MEMORY[0x1E69DB600]];

    v20 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
    v21 = v20;
    if (v10 <= 0.666666667)
    {
      if (v10 <= 0.333333333)
      {
LABEL_10:
        [v14 setObject:v21 forKeyedSubscript:*MEMORY[0x1E69DB688]];
        v23 = objc_alloc(MEMORY[0x1E696AAB0]);
        v24 = [(_PXVisualDiagnosticsDrawTextConfiguration *)v35 text];
        v25 = v24;
        if (v24)
        {
          v26 = v24;
        }

        else
        {
          v26 = &stru_1F2B87EE0;
        }

        v13 = [v23 initWithString:v26 attributes:v14];

        goto LABEL_14;
      }

      v22 = 1;
    }

    else
    {
      v22 = 2;
    }

    [v20 setAlignment:v22];
    goto LABEL_10;
  }

LABEL_14:
  [v13 boundingRectWithSize:1 options:0 context:{width, height, v12}];
  v28 = v27;
  v30 = v29;
  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  MinX = CGRectGetMinX(v37);
  v38.origin.x = x;
  v38.origin.y = y;
  v38.size.width = width;
  v38.size.height = height;
  v32 = MinX + v10 * (CGRectGetMaxX(v38) - v28 - MinX);
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  MinY = CGRectGetMinY(v39);
  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  [v13 drawInRect:{v32, MinY + v34 * (CGRectGetMaxY(v40) - v30 - MinY), v28, v30}];
}

- (void)fillRect:(CGRect)a3 configuration:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v12 = objc_alloc_init(_PXVisualDiagnosticsFillRectConfiguration);
  v9[2](v9, v12);

  v10 = [(PXVisualDiagnosticsContext *)self CGContext];
  v11 = [(_PXVisualDiagnosticsFillRectConfiguration *)v12 fillColor];
  CGContextSetFillColorWithColor(v10, [v11 CGColor]);

  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  CGContextFillRect(v10, v14);
}

- (void)strokeRect:(CGRect)a3 configuration:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v13 = objc_alloc_init(_PXVisualDiagnosticsStrokeRectConfiguration);
  v9[2](v9, v13);

  v10 = [(PXVisualDiagnosticsContext *)self CGContext];
  v11 = [(_PXVisualDiagnosticsStrokeRectConfiguration *)v13 strokeColor];
  CGContextSetStrokeColorWithColor(v10, [v11 CGColor]);

  [(_PXVisualDiagnosticsStrokeRectConfiguration *)v13 lineWidth];
  CGContextSetLineWidth(v10, v12);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  CGContextStrokeRect(v10, v15);
}

- (void)endPage
{
  [(PXVisualDiagnosticsContext *)self currentPageBounds];
  if (CGRectIsNull(v6))
  {
    v3 = PXAssertGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_1B3F73000, v3, OS_LOG_TYPE_ERROR, "unbalanced page end", v5, 2u);
    }
  }

  v4 = *(MEMORY[0x1E695F050] + 16);
  self->_currentPageBounds.origin = *MEMORY[0x1E695F050];
  self->_currentPageBounds.size = v4;
  UIGraphicsPopContext();
  CGPDFContextEndPage([(PXVisualDiagnosticsContext *)self CGContext]);
}

- (void)beginPageWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [_PXVisualDiagnosticsPageConfiguration alloc];
  v6 = [(PXVisualDiagnosticsContext *)self configuration];
  v7 = [(_PXVisualDiagnosticsPageConfiguration *)v5 initWithConfiguration:v6];

  v4[2](v4, v7);
  v8 = [(PXVisualDiagnosticsContext *)self CGContext];
  [(PXVisualDiagnosticsContext *)self currentPageBounds];
  if (!CGRectIsNull(v16))
  {
    v9 = PXAssertGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v15[0] = 0;
      _os_log_error_impl(&dword_1B3F73000, v9, OS_LOG_TYPE_ERROR, "unbalanced page begin", v15, 2u);
    }
  }

  [(_PXVisualDiagnosticsPageConfiguration *)v7 pageSize];
  self->_currentPageBounds.origin = *MEMORY[0x1E695EFF8];
  self->_currentPageBounds.size.width = v10;
  self->_currentPageBounds.size.height = v11;
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = [MEMORY[0x1E696B098] valueWithCGRect:{self->_currentPageBounds.origin.x, self->_currentPageBounds.origin.y, self->_currentPageBounds.size.width, self->_currentPageBounds.size.height}];
  [v12 setObject:v13 forKeyedSubscript:*MEMORY[0x1E695F390]];

  CGPDFContextBeginPage(v8, v12);
  UIGraphicsPushContext(v8);
  MaxY = CGRectGetMaxY(self->_currentPageBounds);
  CGContextTranslateCTM(v8, 0.0, MaxY);
  CGContextScaleCTM(v8, 1.0, -1.0);
}

- (CGSize)defaultPageSize
{
  v2 = [(PXVisualDiagnosticsContext *)self configuration];
  [v2 defaultPageSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)dealloc
{
  CGContextRelease(self->_CGContext);
  v3.receiver = self;
  v3.super_class = PXVisualDiagnosticsContext;
  [(PXVisualDiagnosticsContext *)&v3 dealloc];
}

- (PXVisualDiagnosticsContext)initWithConfiguration:(id)a3 dataConsumer:(CGDataConsumer *)a4
{
  v7 = a3;
  v27.receiver = self;
  v27.super_class = PXVisualDiagnosticsContext;
  v8 = [(PXVisualDiagnosticsContext *)&v27 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_configuration, a3);
    v10 = *(MEMORY[0x1E695F050] + 16);
    v9->_currentPageBounds.origin = *MEMORY[0x1E695F050];
    v9->_currentPageBounds.size = v10;
    [(PXVisualDiagnosticsConfiguration *)v9->_configuration defaultPageSize];
    mediaBox.origin = *MEMORY[0x1E695EFF8];
    mediaBox.size.width = v11;
    mediaBox.size.height = v12;
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v13 setObject:@"Photos Visual Diagnostics" forKeyedSubscript:*MEMORY[0x1E695F318]];
    if (a4)
    {
      v9->_CGContext = CGPDFContextCreate(a4, &mediaBox, v13);
    }

    else
    {
      v14 = [(PXVisualDiagnosticsConfiguration *)v9->_configuration name];
      if (![(__CFString *)v14 length])
      {

        v14 = @"VisualDiagnostics";
      }

      v15 = objc_alloc_init(MEMORY[0x1E696AB78]);
      [v15 setDateFormat:@"yyyy-MM-dd-HHmmss"];
      v16 = [MEMORY[0x1E695DF00] date];
      v17 = [v15 stringFromDate:v16];
      v18 = [(__CFString *)v14 stringByAppendingFormat:@"-%@", v17];

      v19 = MEMORY[0x1E695DFF8];
      v20 = NSTemporaryDirectory();
      v21 = [v19 fileURLWithPath:v20 isDirectory:1];
      v22 = [v21 URLByAppendingPathComponent:v18 isDirectory:0];
      v23 = [v22 URLByAppendingPathExtension:@"pdf"];
      fileURL = v9->_fileURL;
      v9->_fileURL = v23;

      v9->_CGContext = CGPDFContextCreateWithURL(v9->_fileURL, &mediaBox, v13);
    }
  }

  return v9;
}

- (PXVisualDiagnosticsContext)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXVisualDiagnosticsContext.m" lineNumber:41 description:{@"%s is not available as initializer", "-[PXVisualDiagnosticsContext init]"}];

  abort();
}

@end