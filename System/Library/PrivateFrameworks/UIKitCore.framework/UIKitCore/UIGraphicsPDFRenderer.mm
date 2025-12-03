@interface UIGraphicsPDFRenderer
+ (CGContext)contextWithFormat:(id)format;
+ (void)prepareCGContext:(CGContext *)context withRendererContext:(id)rendererContext;
- (BOOL)writePDFToURL:(NSURL *)url withActions:(UIGraphicsPDFDrawingActions)actions error:(NSError *)error;
- (NSData)PDFDataWithActions:(UIGraphicsPDFDrawingActions)actions;
- (UIGraphicsPDFRenderer)init;
- (UIGraphicsPDFRenderer)initWithBounds:(CGRect)bounds;
- (UIGraphicsPDFRenderer)initWithBounds:(CGRect)bounds format:(UIGraphicsPDFRendererFormat *)format;
- (void)popContext:(id)context;
- (void)pushContext:(id)context;
@end

@implementation UIGraphicsPDFRenderer

- (void)pushContext:(id)context
{
  contextCopy = context;
  v4 = malloc_type_malloc(0x48uLL, 0x1000040773C5DECuLL);
  [contextCopy documentBounds];
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  v4[3] = v8;
  [contextCopy pageBounds];
  v4[4] = v9;
  v4[5] = v10;
  v4[6] = v11;
  v4[7] = v12;
  *(v4 + 64) = [contextCopy inPage];
  cGContext = [contextCopy CGContext];

  ContextStack = GetContextStack(1);
  v15 = CGContextRetain(cGContext);
  v16 = *ContextStack;
  v17 = &ContextStack[6 * *ContextStack];
  *(v17 + 1) = v15;
  v17[4] = 2;
  *(v17 + 3) = v4;
  *ContextStack = v16 + 1;
}

- (void)popContext:(id)context
{
  contextCopy = context;
  if ([contextCopy inPage])
  {
    CGPDFContextEndPage([contextCopy CGContext]);
  }

  v5.receiver = self;
  v5.super_class = UIGraphicsPDFRenderer;
  [(UIGraphicsRenderer *)&v5 popContext:contextCopy];
  CGPDFContextClose([contextCopy CGContext]);
}

+ (CGContext)contextWithFormat:(id)format
{
  formatCopy = format;
  [formatCopy bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  documentInfo = [formatCopy documentInfo];
  outputURL = [formatCopy outputURL];

  if (outputURL)
  {
    outputURL2 = [formatCopy outputURL];
    v23.origin.x = v5;
    v23.origin.y = v7;
    v23.size.width = v9;
    v23.size.height = v11;
    if (CGRectIsEmpty(v23))
    {
      v15 = 0;
    }

    else
    {
      v15 = &v22;
    }

    v16 = CGPDFContextCreateWithURL(outputURL2, v15, documentInfo);
  }

  else
  {
    pdfData = [formatCopy pdfData];

    if (pdfData && ([formatCopy pdfData], v18 = objc_claimAutoreleasedReturnValue(), v19 = CGDataConsumerCreateWithCFData(v18), v18, v19))
    {
      v24.origin.x = v5;
      v24.origin.y = v7;
      v24.size.width = v9;
      v24.size.height = v11;
      if (CGRectIsEmpty(v24))
      {
        v20 = 0;
      }

      else
      {
        v20 = &v22;
      }

      v16 = CGPDFContextCreate(v19, v20, documentInfo);
      CGDataConsumerRelease(v19);
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

+ (void)prepareCGContext:(CGContext *)context withRendererContext:(id)rendererContext
{
  rendererContextCopy = rendererContext;
  format = [rendererContextCopy format];
  [format bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v21 = v6;
  v22 = v8;
  *&v23 = v10;
  *(&v23 + 1) = v12;
  documentInfo = [format documentInfo];
  v15 = [documentInfo objectForKey:*MEMORY[0x1E695F390]];
  v16 = v15;
  if (v15)
  {
    [v15 getBytes:&v21 length:32];
    v7 = v21;
    v9 = v22;
    v13 = *(&v23 + 1);
    v11 = *&v23;
  }

  v24.origin.x = v7;
  v24.origin.y = v9;
  v24.size.width = v11;
  v24.size.height = v13;
  if (CGRectIsEmpty(v24))
  {
    v21 = 0.0;
    v22 = 0.0;
    v23 = xmmword_18A67C9E0;
    v17 = 0.0;
    v18 = 612.0;
    v19 = 792.0;
    v20 = 0.0;
  }

  else
  {
    v20 = v21;
    v17 = v22;
    v19 = *(&v23 + 1);
    v18 = *&v23;
  }

  [rendererContextCopy setDocumentBounds:{v20, v17, v18, v19, *&v21, *&v22, v23}];
  [rendererContextCopy setPageBounds:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [rendererContextCopy setInPage:0];
}

- (UIGraphicsPDFRenderer)init
{
  v3 = +[(UIGraphicsRendererFormat *)UIGraphicsPDFRendererFormat];
  v4 = [(UIGraphicsPDFRenderer *)self initWithBounds:v3 format:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  return v4;
}

- (UIGraphicsPDFRenderer)initWithBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v8 = +[(UIGraphicsRendererFormat *)UIGraphicsPDFRendererFormat];
  height = [(UIGraphicsPDFRenderer *)self initWithBounds:v8 format:x, y, width, height];

  return height;
}

- (UIGraphicsPDFRenderer)initWithBounds:(CGRect)bounds format:(UIGraphicsPDFRendererFormat *)format
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v9 = format;
  [(UIGraphicsPDFRendererFormat *)v9 setPdfData:0];
  [(UIGraphicsPDFRendererFormat *)v9 setOutputURL:0];
  v12.receiver = self;
  v12.super_class = UIGraphicsPDFRenderer;
  height = [(UIGraphicsRenderer *)&v12 initWithBounds:v9 format:x, y, width, height];

  return height;
}

- (BOOL)writePDFToURL:(NSURL *)url withActions:(UIGraphicsPDFDrawingActions)actions error:(NSError *)error
{
  v8 = actions;
  v9 = url;
  format = [(UIGraphicsRenderer *)self format];
  [format setOutputURL:v9];

  LOBYTE(error) = [(UIGraphicsRenderer *)self runDrawingActions:v8 completionActions:0 format:format error:error];
  return error;
}

- (NSData)PDFDataWithActions:(UIGraphicsPDFDrawingActions)actions
{
  v4 = MEMORY[0x1E695DF88];
  v5 = actions;
  v6 = objc_alloc_init(v4);
  format = [(UIGraphicsRenderer *)self format];
  [format setPdfData:v6];
  LODWORD(self) = [(UIGraphicsRenderer *)self runDrawingActions:v5 completionActions:0 format:format error:0];

  if (self)
  {
    v8 = [v6 copy];
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DEF0]);
  }

  v9 = v8;

  return v9;
}

@end