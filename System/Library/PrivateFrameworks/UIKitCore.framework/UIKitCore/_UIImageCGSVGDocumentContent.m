@interface _UIImageCGSVGDocumentContent
- (BOOL)isEqual:(id)a3;
- (CGSize)sizeInPixels;
- (_UIImageCGSVGDocumentContent)initWithCGSVGDocument:(CGSVGDocument *)a3 scale:(double)a4;
- (_UIImageCGSVGDocumentContent)initWithScale:(double)a3;
- (void)_prepareForDrawingWithSize:(CGSize)a3 scale:(double)a4 inContext:(CGContext *)a5;
- (void)dealloc;
@end

@implementation _UIImageCGSVGDocumentContent

- (_UIImageCGSVGDocumentContent)initWithCGSVGDocument:(CGSVGDocument *)a3 scale:(double)a4
{
  if (!a3)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"_UIImageContent.m" lineNumber:1740 description:@"Need a svgDocumentRef"];
  }

  v8 = CFGetTypeID(a3);
  if (v8 != CGSVGDocumentGetTypeID())
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"_UIImageContent.m" lineNumber:1741 description:@"svgDocumentRef passed is not a CGSVGDocumentRef"];
  }

  v13.receiver = self;
  v13.super_class = _UIImageCGSVGDocumentContent;
  v9 = [(_UIImageContent *)&v13 initWithScale:a4];
  if (v9)
  {
    v9->_svgDocumentRef = CGSVGDocumentRetain();
  }

  return v9;
}

- (_UIImageCGSVGDocumentContent)initWithScale:(double)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"_UIImageContent.m" lineNumber:1752 description:@"You need to use -initWithCGSVGDocument:scale:"];

  return 0;
}

- (void)dealloc
{
  CGSVGDocumentRelease();
  v3.receiver = self;
  v3.super_class = _UIImageCGSVGDocumentContent;
  [(_UIImageCGSVGDocumentContent *)&v3 dealloc];
}

- (CGSize)sizeInPixels
{
  CGSVGDocumentGetCanvasSize();
  v4 = v3;
  v6 = v5;
  [(_UIImageContent *)self scale];
  v8 = v4 * v7;
  [(_UIImageContent *)self scale];
  v10 = v6 * v9;
  v11 = v8;
  result.height = v10;
  result.width = v11;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _UIImageCGSVGDocumentContent;
  if ([(_UIImageContent *)&v7 isEqual:v4])
  {
    v5 = self->_svgDocumentRef == v4[5];
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