@interface _UIImageCGPDFPageContent
- (BOOL)isEqual:(id)a3;
- (CGSize)sizeInPixels;
- (_UIImageCGPDFPageContent)initWithCGPDFPage:(CGPDFPage *)a3 scale:(double)a4;
- (_UIImageCGPDFPageContent)initWithScale:(double)a3;
- (void)_prepareForDrawingWithSize:(CGSize)a3 scale:(double)a4 inContext:(CGContext *)a5;
- (void)dealloc;
@end

@implementation _UIImageCGPDFPageContent

- (_UIImageCGPDFPageContent)initWithCGPDFPage:(CGPDFPage *)a3 scale:(double)a4
{
  if (!a3)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"_UIImageContent.m" lineNumber:1656 description:@"Need a pdfPageRef"];
  }

  v8 = CFGetTypeID(a3);
  if (v8 != CGPDFPageGetTypeID())
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"_UIImageContent.m" lineNumber:1657 description:@"pdfPageRef passed is not a CGPDFPageRef"];
  }

  v13.receiver = self;
  v13.super_class = _UIImageCGPDFPageContent;
  v9 = [(_UIImageContent *)&v13 initWithScale:a4];
  if (v9)
  {
    v9->_pdfPageRef = CGPDFPageRetain(a3);
  }

  return v9;
}

- (_UIImageCGPDFPageContent)initWithScale:(double)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"_UIImageContent.m" lineNumber:1668 description:@"You need to use -initWithCGPDFPage:scale:"];

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _UIImageCGPDFPageContent;
  if ([(_UIImageContent *)&v7 isEqual:v4])
  {
    v5 = self->_pdfPageRef == v4[5];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_prepareForDrawingWithSize:(CGSize)a3 scale:(double)a4 inContext:(CGContext *)a5
{
  height = a3.height;
  width = a3.width;
  CGContextTranslateCTM(a5, 0.0, a3.height);
  CGContextScaleCTM(a5, 1.0, -1.0);
  [(_UIImageContent *)self size];
  v10 = width / v9;
  v12 = height / v11;

  CGContextScaleCTM(a5, v10, v12);
}

@end