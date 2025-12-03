@interface PXVisualDiagnosticsContext
- (BOOL)isPrivateDataAllowed;
- (CGRect)currentPageBounds;
- (CGSize)defaultPageSize;
- (PXVisualDiagnosticsContext)init;
- (PXVisualDiagnosticsContext)initWithConfiguration:(id)configuration dataConsumer:(CGDataConsumer *)consumer;
- (void)addPagesForTableWithConfiguration:(id)configuration columnsConfiguration:(id)columnsConfiguration rowsConfiguration:(id)rowsConfiguration;
- (void)addTitlePageWithTitle:(id)title subtitle:(id)subtitle;
- (void)beginPageWithConfiguration:(id)configuration;
- (void)dealloc;
- (void)drawImageInRect:(CGRect)rect configuration:(id)configuration;
- (void)drawTextInRect:(CGRect)rect configuration:(id)configuration;
- (void)endPage;
- (void)fillRect:(CGRect)rect configuration:(id)configuration;
- (void)strokeRect:(CGRect)rect configuration:(id)configuration;
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
  configuration = [(PXVisualDiagnosticsContext *)self configuration];
  isPrivateDataAllowed = [configuration isPrivateDataAllowed];

  return isPrivateDataAllowed;
}

- (void)addPagesForTableWithConfiguration:(id)configuration columnsConfiguration:(id)columnsConfiguration rowsConfiguration:(id)rowsConfiguration
{
  rowsConfigurationCopy = rowsConfiguration;
  columnsConfigurationCopy = columnsConfiguration;
  configurationCopy = configuration;
  v11 = objc_alloc_init(PXVisualDiagnosticsTable);
  [(PXVisualDiagnosticsTable *)v11 setMargins:10.0, 10.0, 10.0, 10.0];
  configurationCopy[2](configurationCopy, v11);

  [(PXVisualDiagnosticsTable *)v11 configureColumnsWithConfiguration:columnsConfigurationCopy];
  [(PXVisualDiagnosticsTable *)v11 renderInContext:self withRowsConfiguration:rowsConfigurationCopy];
}

- (void)addTitlePageWithTitle:(id)title subtitle:(id)subtitle
{
  v36[2] = *MEMORY[0x1E69E9840];
  subtitleCopy = subtitle;
  v7 = MEMORY[0x1E696AD40];
  titleCopy = title;
  v9 = [v7 alloc];
  v10 = *MEMORY[0x1E69DB648];
  v35[0] = *MEMORY[0x1E69DB648];
  v11 = *MEMORY[0x1E69DB958];
  v12 = [MEMORY[0x1E69DB878] systemFontOfSize:24.0 weight:*MEMORY[0x1E69DB958]];
  v36[0] = v12;
  v13 = *MEMORY[0x1E69DB650];
  v35[1] = *MEMORY[0x1E69DB650];
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  v36[1] = blackColor;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];
  v16 = [v9 initWithString:titleCopy attributes:v15];

  v17 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
  [v16 appendAttributedString:v17];

  if ([subtitleCopy length])
  {
    v18 = objc_alloc(MEMORY[0x1E696AAB0]);
    v33[0] = v10;
    v19 = [MEMORY[0x1E69DB878] systemFontOfSize:18.0 weight:v11];
    v33[1] = v13;
    v34[0] = v19;
    lightGrayColor = [MEMORY[0x1E69DC888] lightGrayColor];
    v34[1] = lightGrayColor;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];
    v22 = [v18 initWithString:subtitleCopy attributes:v21];
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

- (void)drawImageInRect:(CGRect)rect configuration:(id)configuration
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  configurationCopy = configuration;
  v17 = objc_alloc_init(_PXVisualDiagnosticsDrawImageConfiguration);
  configurationCopy[2](configurationCopy, v17);

  image = [(_PXVisualDiagnosticsDrawImageConfiguration *)v17 image];
  symbolName = [(_PXVisualDiagnosticsDrawImageConfiguration *)v17 symbolName];
  v11 = symbolName;
  if (image)
  {
    v12 = 1;
  }

  else
  {
    v12 = symbolName == 0;
  }

  if (!v12)
  {
    image = [MEMORY[0x1E69DCAB8] systemImageNamed:symbolName];
  }

  if (image)
  {
    [image size];
    PXSizeGetAspectRatio(v13, v14);
    PFSizeWithAspectRatioFittingSize();
    [image drawInRect:{x + width * 0.5 + v15 * -0.5, y + height * 0.5 + v16 * -0.5, v15}];
  }
}

- (void)drawTextInRect:(CGRect)rect configuration:(id)configuration
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  configurationCopy = configuration;
  v35 = objc_alloc_init(_PXVisualDiagnosticsDrawTextConfiguration);
  configurationCopy[2](configurationCopy, v35);

  [(_PXVisualDiagnosticsDrawTextConfiguration *)v35 relativePosition];
  v10 = v9;
  v12 = v11;
  attributedText = [(_PXVisualDiagnosticsDrawTextConfiguration *)v35 attributedText];
  if (!attributedText)
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    font = [(_PXVisualDiagnosticsDrawTextConfiguration *)v35 font];
    if (font)
    {
      [v14 setObject:font forKeyedSubscript:*MEMORY[0x1E69DB648]];
    }

    else
    {
      v16 = MEMORY[0x1E69DB878];
      [(_PXVisualDiagnosticsDrawTextConfiguration *)v35 fontSize];
      v17 = [v16 monospacedSystemFontOfSize:? weight:?];
      [v14 setObject:v17 forKeyedSubscript:*MEMORY[0x1E69DB648]];
    }

    textColor = [(_PXVisualDiagnosticsDrawTextConfiguration *)v35 textColor];
    [v14 setObject:textColor forKeyedSubscript:*MEMORY[0x1E69DB650]];

    backgroundColor = [(_PXVisualDiagnosticsDrawTextConfiguration *)v35 backgroundColor];
    [v14 setObject:backgroundColor forKeyedSubscript:*MEMORY[0x1E69DB600]];

    v20 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
    v21 = v20;
    if (v10 <= 0.666666667)
    {
      if (v10 <= 0.333333333)
      {
LABEL_10:
        [v14 setObject:v21 forKeyedSubscript:*MEMORY[0x1E69DB688]];
        v23 = objc_alloc(MEMORY[0x1E696AAB0]);
        text = [(_PXVisualDiagnosticsDrawTextConfiguration *)v35 text];
        v25 = text;
        if (text)
        {
          v26 = text;
        }

        else
        {
          v26 = &stru_1F2B87EE0;
        }

        attributedText = [v23 initWithString:v26 attributes:v14];

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
  [attributedText boundingRectWithSize:1 options:0 context:{width, height, v12}];
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
  [attributedText drawInRect:{v32, MinY + v34 * (CGRectGetMaxY(v40) - v30 - MinY), v28, v30}];
}

- (void)fillRect:(CGRect)rect configuration:(id)configuration
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  configurationCopy = configuration;
  v12 = objc_alloc_init(_PXVisualDiagnosticsFillRectConfiguration);
  configurationCopy[2](configurationCopy, v12);

  cGContext = [(PXVisualDiagnosticsContext *)self CGContext];
  fillColor = [(_PXVisualDiagnosticsFillRectConfiguration *)v12 fillColor];
  CGContextSetFillColorWithColor(cGContext, [fillColor CGColor]);

  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  CGContextFillRect(cGContext, v14);
}

- (void)strokeRect:(CGRect)rect configuration:(id)configuration
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  configurationCopy = configuration;
  v13 = objc_alloc_init(_PXVisualDiagnosticsStrokeRectConfiguration);
  configurationCopy[2](configurationCopy, v13);

  cGContext = [(PXVisualDiagnosticsContext *)self CGContext];
  strokeColor = [(_PXVisualDiagnosticsStrokeRectConfiguration *)v13 strokeColor];
  CGContextSetStrokeColorWithColor(cGContext, [strokeColor CGColor]);

  [(_PXVisualDiagnosticsStrokeRectConfiguration *)v13 lineWidth];
  CGContextSetLineWidth(cGContext, v12);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  CGContextStrokeRect(cGContext, v15);
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

- (void)beginPageWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [_PXVisualDiagnosticsPageConfiguration alloc];
  configuration = [(PXVisualDiagnosticsContext *)self configuration];
  v7 = [(_PXVisualDiagnosticsPageConfiguration *)v5 initWithConfiguration:configuration];

  configurationCopy[2](configurationCopy, v7);
  cGContext = [(PXVisualDiagnosticsContext *)self CGContext];
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

  CGPDFContextBeginPage(cGContext, v12);
  UIGraphicsPushContext(cGContext);
  MaxY = CGRectGetMaxY(self->_currentPageBounds);
  CGContextTranslateCTM(cGContext, 0.0, MaxY);
  CGContextScaleCTM(cGContext, 1.0, -1.0);
}

- (CGSize)defaultPageSize
{
  configuration = [(PXVisualDiagnosticsContext *)self configuration];
  [configuration defaultPageSize];
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

- (PXVisualDiagnosticsContext)initWithConfiguration:(id)configuration dataConsumer:(CGDataConsumer *)consumer
{
  configurationCopy = configuration;
  v27.receiver = self;
  v27.super_class = PXVisualDiagnosticsContext;
  v8 = [(PXVisualDiagnosticsContext *)&v27 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_configuration, configuration);
    v10 = *(MEMORY[0x1E695F050] + 16);
    v9->_currentPageBounds.origin = *MEMORY[0x1E695F050];
    v9->_currentPageBounds.size = v10;
    [(PXVisualDiagnosticsConfiguration *)v9->_configuration defaultPageSize];
    mediaBox.origin = *MEMORY[0x1E695EFF8];
    mediaBox.size.width = v11;
    mediaBox.size.height = v12;
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v13 setObject:@"Photos Visual Diagnostics" forKeyedSubscript:*MEMORY[0x1E695F318]];
    if (consumer)
    {
      v9->_CGContext = CGPDFContextCreate(consumer, &mediaBox, v13);
    }

    else
    {
      name = [(PXVisualDiagnosticsConfiguration *)v9->_configuration name];
      if (![(__CFString *)name length])
      {

        name = @"VisualDiagnostics";
      }

      v15 = objc_alloc_init(MEMORY[0x1E696AB78]);
      [v15 setDateFormat:@"yyyy-MM-dd-HHmmss"];
      date = [MEMORY[0x1E695DF00] date];
      v17 = [v15 stringFromDate:date];
      v18 = [(__CFString *)name stringByAppendingFormat:@"-%@", v17];

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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXVisualDiagnosticsContext.m" lineNumber:41 description:{@"%s is not available as initializer", "-[PXVisualDiagnosticsContext init]"}];

  abort();
}

@end