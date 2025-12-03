@interface _UIImageCUIVectorImageContent
- (BOOL)isEqual:(id)equal;
- (CGImage)_provideCGImageWithSize:(CGSize)size scale:(double)scale;
- (CGPDFPage)CGPDFPage;
- (CGSVGDocument)CGSVGDocument;
- (_UIImageCUIVectorImageContent)contentWithCGImage:(CGImage *)image;
- (_UIImageCUIVectorImageContent)initWithCGImage:(CGImage *)image CUIVectorImage:(id)vectorImage scale:(double)scale;
- (_UIImageCUIVectorImageContent)initWithScale:(double)scale;
- (id)description;
- (void)_drawVectorCommandsWithSize:(CGSize)size scale:(double)scale inContext:(CGContext *)context renditionContext:(id)renditionContext;
- (void)_drawWithSize:(CGSize)size scale:(double)scale inContext:(CGContext *)context renditionContext:(id)renditionContext;
- (void)_prepareForDrawingWithSize:(CGSize)size scale:(double)scale inContext:(CGContext *)context;
@end

@implementation _UIImageCUIVectorImageContent

- (_UIImageCUIVectorImageContent)initWithCGImage:(CGImage *)image CUIVectorImage:(id)vectorImage scale:(double)scale
{
  vectorImageCopy = vectorImage;
  v14.receiver = self;
  v14.super_class = _UIImageCUIVectorImageContent;
  v11 = [(_UIImageCGImageContent *)&v14 initWithCGImage:image scale:scale];
  if (v11)
  {
    if (!vectorImageCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v11 file:@"_UIImageContent.m" lineNumber:1825 description:@"Need a valid vector image!"];
    }

    objc_storeStrong(&v11->_vectorImage, vectorImage);
  }

  return v11;
}

- (_UIImageCUIVectorImageContent)initWithScale:(double)scale
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIImageContent.m" lineNumber:1834 description:@"You need to use -initWithCUIVectorImage:scale:"];

  return 0;
}

- (_UIImageCUIVectorImageContent)contentWithCGImage:(CGImage *)image
{
  v5 = [_UIImageCUIVectorImageContent alloc];
  vectorImage = self->_vectorImage;
  [(_UIImageContent *)self scale];
  v7 = [(_UIImageCUIVectorImageContent *)v5 initWithCGImage:image CUIVectorImage:vectorImage scale:?];

  return v7;
}

- (void)_prepareForDrawingWithSize:(CGSize)size scale:(double)scale inContext:(CGContext *)context
{
  height = size.height;
  width = size.width;
  [(_UIImageContent *)self size];
  v11 = v10;
  v13 = v12;
  if ([(_UIImageCUIVectorImageContent *)self isCGPDFPage])
  {
    v14 = [(_UIImageCUIVectorImageContent *)self CGPDFPage]!= 0;
  }

  else
  {
    v14 = 0;
  }

  if ([(_UIImageCUIVectorImageContent *)self isCGSVGDocument])
  {
    v15 = [(_UIImageCUIVectorImageContent *)self CGSVGDocument]!= 0;
  }

  else
  {
    v15 = 0;
  }

  if (v14)
  {
    if (v11 == 0.0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v11 == 0.0)
    {
      v15 = 0;
    }

    if (!v15)
    {
      goto LABEL_16;
    }
  }

  if (v13 == 0.0)
  {
LABEL_16:
    v17.receiver = self;
    v17.super_class = _UIImageCUIVectorImageContent;
    [(_UIImageContent *)&v17 _prepareForDrawingWithSize:context scale:width inContext:height, scale];
    return;
  }

  CGContextTranslateCTM(context, 0.0, height);
  CGContextScaleCTM(context, 1.0, -1.0);
  CGContextScaleCTM(context, width / v11, height / v13);
  if (v14)
  {
    cGPDFPage = [(_UIImageCUIVectorImageContent *)self CGPDFPage];
    v19.origin.x = 0.0;
    v19.origin.y = 0.0;
    v19.size.width = v11;
    v19.size.height = v13;
    CGPDFPageGetDrawingTransform(&transform, cGPDFPage, kCGPDFCropBox, v19, 0, 1);
    CGContextConcatCTM(context, &transform);
  }
}

- (void)_drawWithSize:(CGSize)size scale:(double)scale inContext:(CGContext *)context renditionContext:(id)renditionContext
{
  if (size.width > 0.0)
  {
    height = size.height;
    if (size.height > 0.0)
    {
      width = size.width;
      vectorImage = self->_vectorImage;
      [(_UIImageContent *)self scale:context];
      v10 = [CUINamedVectorImage rasterizeImageUsingScaleFactor:"rasterizeImageUsingScaleFactor:forTargetSize:" forTargetSize:?];
      v12.origin.x = *MEMORY[0x1E695EFF8];
      v12.origin.y = *(MEMORY[0x1E695EFF8] + 8);
      v12.size.width = width;
      v12.size.height = height;
      CGContextDrawImage(context, v12, v10);

      CGImageRelease(v10);
    }
  }
}

- (void)_drawVectorCommandsWithSize:(CGSize)size scale:(double)scale inContext:(CGContext *)context renditionContext:(id)renditionContext
{
  height = size.height;
  width = size.width;
  renditionContextCopy = renditionContext;
  if ([(_UIImageCUIVectorImageContent *)self isCGPDFPage]&& [(_UIImageCUIVectorImageContent *)self CGPDFPage]&& (([(_UIImageContent *)self CGPDFPageSize], v12 == *MEMORY[0x1E695F060]) ? (v13 = v11 == *(MEMORY[0x1E695F060] + 8)) : (v13 = 0), !v13))
  {
    CGContextDrawPDFPage(context, [(_UIImageCUIVectorImageContent *)self CGPDFPage]);
  }

  else if ([(_UIImageCUIVectorImageContent *)self isCGSVGDocument]&& [(_UIImageCUIVectorImageContent *)self CGSVGDocument]&& (([(_UIImageContent *)self CGSVGDocumentSize], v15 == *MEMORY[0x1E695F060]) ? (v16 = v14 == *(MEMORY[0x1E695F060] + 8)) : (v16 = 0), !v16))
  {
    [(_UIImageCUIVectorImageContent *)self CGSVGDocument];
    CGContextDrawSVGDocument();
  }

  else
  {
    [(_UIImageCUIVectorImageContent *)self _drawWithSize:context scale:renditionContextCopy inContext:width renditionContext:height, scale];
  }
}

- (CGImage)_provideCGImageWithSize:(CGSize)size scale:(double)scale
{
  if (size.width <= 0.0)
  {
    return 0;
  }

  if (size.height <= 0.0)
  {
    return 0;
  }

  v6 = [(CUINamedVectorImage *)self->_vectorImage rasterizeImageUsingScaleFactor:scale forTargetSize:size.width, size.height, v4, v5];
  if (!v6)
  {
    return 0;
  }

  return CFAutorelease(v6);
}

- (CGPDFPage)CGPDFPage
{
  if (![(_UIImageCUIVectorImageContent *)self isCGPDFPage])
  {
    return 0;
  }

  v3 = self->_vectorImage;
  if ([(CUINamedVectorImage *)v3 pdfDocument]&& CGPDFDocumentGetNumberOfPages([(CUINamedVectorImage *)v3 pdfDocument]))
  {
    Page = CGPDFDocumentGetPage([(CUINamedVectorImage *)v3 pdfDocument], 1uLL);
  }

  else
  {
    Page = 0;
  }

  return Page;
}

- (CGSVGDocument)CGSVGDocument
{
  if (![(_UIImageCUIVectorImageContent *)self isCGSVGDocument])
  {
    return 0;
  }

  vectorImage = self->_vectorImage;

  return [(CUINamedVectorImage *)vectorImage svgDocument];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([_UIImageContent content:equalCopy isEqualToContent:?])
  {
    v5 = equalCopy[6];
    v6 = self->_vectorImage;
    v7 = v5;
    v8 = v7;
    if (v6 == v7)
    {
      v10 = 1;
    }

    else
    {
      if (v6)
      {
        v9 = v7 == 0;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = [(CUINamedVectorImage *)v6 isEqual:v7];
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)description
{
  if ([(_UIImageCUIVectorImageContent *)self isCGPDFPage])
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p vector:%p (CGImageRef:%p + CGPDFPage:%p)", objc_opt_class(), self, self->_vectorImage, atomic_load_explicit(&self->super._imageRef, memory_order_acquire), -[_UIImageCUIVectorImageContent CGPDFPage](self, "CGPDFPage")];
    v3 = LABEL_5:;
    goto LABEL_7;
  }

  if ([(_UIImageCUIVectorImageContent *)self isCGSVGDocument])
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p vector:%p (CGImageRef:%p + CGSVGDocument:%p)", objc_opt_class(), self, self->_vectorImage, atomic_load_explicit(&self->super._imageRef, memory_order_acquire), -[_UIImageCUIVectorImageContent CGSVGDocument](self, "CGSVGDocument")];
    goto LABEL_5;
  }

  v5.receiver = self;
  v5.super_class = _UIImageCUIVectorImageContent;
  v3 = [(_UIImageCGImageContent *)&v5 description];
LABEL_7:

  return v3;
}

@end