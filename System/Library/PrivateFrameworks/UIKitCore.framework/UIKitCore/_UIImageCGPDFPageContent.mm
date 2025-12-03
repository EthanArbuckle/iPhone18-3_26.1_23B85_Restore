@interface _UIImageCGPDFPageContent
- (BOOL)isEqual:(id)equal;
- (CGSize)sizeInPixels;
- (_UIImageCGPDFPageContent)initWithCGPDFPage:(CGPDFPage *)page scale:(double)scale;
- (_UIImageCGPDFPageContent)initWithScale:(double)scale;
- (void)_prepareForDrawingWithSize:(CGSize)size scale:(double)scale inContext:(CGContext *)context;
- (void)dealloc;
@end

@implementation _UIImageCGPDFPageContent

- (_UIImageCGPDFPageContent)initWithCGPDFPage:(CGPDFPage *)page scale:(double)scale
{
  if (!page)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIImageContent.m" lineNumber:1656 description:@"Need a pdfPageRef"];
  }

  v8 = CFGetTypeID(page);
  if (v8 != CGPDFPageGetTypeID())
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIImageContent.m" lineNumber:1657 description:@"pdfPageRef passed is not a CGPDFPageRef"];
  }

  v13.receiver = self;
  v13.super_class = _UIImageCGPDFPageContent;
  v9 = [(_UIImageContent *)&v13 initWithScale:scale];
  if (v9)
  {
    v9->_pdfPageRef = CGPDFPageRetain(page);
  }

  return v9;
}

- (_UIImageCGPDFPageContent)initWithScale:(double)scale
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIImageContent.m" lineNumber:1668 description:@"You need to use -initWithCGPDFPage:scale:"];

  return 0;
}

- (void)dealloc
{
  CGPDFPageRelease(self->_pdfPageRef);
  v3.receiver = self;
  v3.super_class = _UIImageCGPDFPageContent;
  [(_UIImageCGPDFPageContent *)&v3 dealloc];
}

- (CGSize)sizeInPixels
{
  BoxRect = CGPDFPageGetBoxRect(self->_pdfPageRef, kCGPDFMediaBox);
  width = BoxRect.size.width;
  height = BoxRect.size.height;
  [(_UIImageContent *)self scale:BoxRect.origin.x];
  v6 = v5 * width;
  [(_UIImageContent *)self scale];
  v8 = height * v7;
  v9 = v6;
  result.height = v8;
  result.width = v9;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = _UIImageCGPDFPageContent;
  if ([(_UIImageContent *)&v7 isEqual:equalCopy])
  {
    v5 = self->_pdfPageRef == equalCopy[5];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_prepareForDrawingWithSize:(CGSize)size scale:(double)scale inContext:(CGContext *)context
{
  height = size.height;
  width = size.width;
  CGContextTranslateCTM(context, 0.0, size.height);
  CGContextScaleCTM(context, 1.0, -1.0);
  [(_UIImageContent *)self size];
  v10 = width / v9;
  v12 = height / v11;

  CGContextScaleCTM(context, v10, v12);
}

@end