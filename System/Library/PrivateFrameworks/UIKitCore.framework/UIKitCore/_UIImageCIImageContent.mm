@interface _UIImageCIImageContent
- (BOOL)isEqual:(id)equal;
- (CGSize)sizeInPixels;
- (_UIImageCIImageContent)initWithCIImage:(id)image scale:(double)scale;
- (_UIImageCIImageContent)initWithScale:(double)scale;
- (id)imageRendererFormat;
- (id)makeSDRVersion;
- (void)_drawWithSize:(CGSize)size scale:(double)scale inContext:(CGContext *)context renditionContext:(id)renditionContext;
- (void)_prepareForDrawingWithSize:(CGSize)size scale:(double)scale inContext:(CGContext *)context;
@end

@implementation _UIImageCIImageContent

- (CGSize)sizeInPixels
{
  [(CIImage *)self->_ciImage extent];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

- (_UIImageCIImageContent)initWithCIImage:(id)image scale:(double)scale
{
  imageCopy = image;
  if (!imageCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIImageContent.m" lineNumber:1242 description:@"Need a ciImage"];
  }

  v13.receiver = self;
  v13.super_class = _UIImageCIImageContent;
  v9 = [(_UIImageContent *)&v13 initWithScale:scale];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_ciImage, image);
    v10->_allowHDR = 0;
  }

  return v10;
}

- (_UIImageCIImageContent)initWithScale:(double)scale
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIImageContent.m" lineNumber:1257 description:@"You need to use -initWithCIImage:scale:"];

  return 0;
}

- (id)makeSDRVersion
{
  selfCopy = self;
  if (selfCopy->_allowHDR)
  {
    v3 = [_UIImageCIImageContent alloc];
    ciImage = selfCopy->_ciImage;
    [(_UIImageContent *)selfCopy scale];
    v5 = [(_UIImageCIImageContent *)v3 initWithCIImage:ciImage scale:?];

    *(v5 + 48) = 0;
    selfCopy = v5;
  }

  return selfCopy;
}

- (id)imageRendererFormat
{
  v3 = +[UIGraphicsImageRendererFormat preferredFormat];
  if ([(_UIImageCIImageContent *)self isHDR])
  {
    [v3 setPreferredRange:100];
  }

  [(_UIImageContent *)self scale];
  [v3 setScale:?];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = _UIImageCIImageContent;
  if ([(_UIImageContent *)&v7 isEqual:equalCopy])
  {
    v5 = self->_ciImage == equalCopy[5];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_prepareForDrawingWithSize:(CGSize)size scale:(double)scale inContext:(CGContext *)context
{
  CGContextTranslateCTM(context, 0.0, size.height);

  CGContextScaleCTM(context, 1.0, -1.0);
}

- (void)_drawWithSize:(CGSize)size scale:(double)scale inContext:(CGContext *)context renditionContext:(id)renditionContext
{
  height = size.height;
  width = size.width;
  [(CIImage *)self->_ciImage extent:context];
  x = v22.origin.x;
  y = v22.origin.y;
  v12 = v22.size.width;
  v13 = v22.size.height;
  if (!CGRectIsInfinite(v22))
  {
    memset(&v21, 0, sizeof(v21));
    CGAffineTransformMakeScale(&v21, width / v12, height / v13);
    ciImage = self->_ciImage;
    v20 = v21;
    v15 = [(CIImage *)ciImage imageByApplyingTransform:&v20];
    v16 = *MEMORY[0x1E695EFF8];
    v17 = *(MEMORY[0x1E695EFF8] + 8);
    if (qword_1ED4996D8 != -1)
    {
      dispatch_once(&qword_1ED4996D8, &__block_literal_global_303);
    }

    v18 = [MEMORY[0x1E695F620] contextWithOptions:qword_1ED4996D0];
    v19 = [v18 createCGImage:v15 fromRect:{x, y, width, height}];

    v23.origin.x = v16;
    v23.origin.y = v17;
    v23.size.width = width;
    v23.size.height = height;
    CGContextDrawImage(context, v23, v19);
    CGImageRelease(v19);
  }
}

@end