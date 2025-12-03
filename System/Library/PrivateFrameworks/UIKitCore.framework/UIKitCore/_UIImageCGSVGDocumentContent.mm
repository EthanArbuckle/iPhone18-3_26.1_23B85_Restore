@interface _UIImageCGSVGDocumentContent
- (BOOL)isEqual:(id)equal;
- (CGSize)sizeInPixels;
- (_UIImageCGSVGDocumentContent)initWithCGSVGDocument:(CGSVGDocument *)document scale:(double)scale;
- (_UIImageCGSVGDocumentContent)initWithScale:(double)scale;
- (void)_prepareForDrawingWithSize:(CGSize)size scale:(double)scale inContext:(CGContext *)context;
- (void)dealloc;
@end

@implementation _UIImageCGSVGDocumentContent

- (_UIImageCGSVGDocumentContent)initWithCGSVGDocument:(CGSVGDocument *)document scale:(double)scale
{
  if (!document)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIImageContent.m" lineNumber:1740 description:@"Need a svgDocumentRef"];
  }

  v8 = CFGetTypeID(document);
  if (v8 != CGSVGDocumentGetTypeID())
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIImageContent.m" lineNumber:1741 description:@"svgDocumentRef passed is not a CGSVGDocumentRef"];
  }

  v13.receiver = self;
  v13.super_class = _UIImageCGSVGDocumentContent;
  v9 = [(_UIImageContent *)&v13 initWithScale:scale];
  if (v9)
  {
    v9->_svgDocumentRef = CGSVGDocumentRetain();
  }

  return v9;
}

- (_UIImageCGSVGDocumentContent)initWithScale:(double)scale
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIImageContent.m" lineNumber:1752 description:@"You need to use -initWithCGSVGDocument:scale:"];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = _UIImageCGSVGDocumentContent;
  if ([(_UIImageContent *)&v7 isEqual:equalCopy])
  {
    v5 = self->_svgDocumentRef == equalCopy[5];
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