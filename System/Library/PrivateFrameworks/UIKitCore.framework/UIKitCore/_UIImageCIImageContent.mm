@interface _UIImageCIImageContent
- (BOOL)isEqual:(id)a3;
- (CGSize)sizeInPixels;
- (_UIImageCIImageContent)initWithCIImage:(id)a3 scale:(double)a4;
- (_UIImageCIImageContent)initWithScale:(double)a3;
- (id)imageRendererFormat;
- (id)makeSDRVersion;
- (void)_drawWithSize:(CGSize)a3 scale:(double)a4 inContext:(CGContext *)a5 renditionContext:(id)a6;
- (void)_prepareForDrawingWithSize:(CGSize)a3 scale:(double)a4 inContext:(CGContext *)a5;
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

- (_UIImageCIImageContent)initWithCIImage:(id)a3 scale:(double)a4
{
  v8 = a3;
  if (!v8)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"_UIImageContent.m" lineNumber:1242 description:@"Need a ciImage"];
  }

  v13.receiver = self;
  v13.super_class = _UIImageCIImageContent;
  v9 = [(_UIImageContent *)&v13 initWithScale:a4];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_ciImage, a3);
    v10->_allowHDR = 0;
  }

  return v10;
}

- (_UIImageCIImageContent)initWithScale:(double)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"_UIImageContent.m" lineNumber:1257 description:@"You need to use -initWithCIImage:scale:"];

  return 0;
}

- (id)makeSDRVersion
{
  v2 = self;
  if (v2->_allowHDR)
  {
    v3 = [_UIImageCIImageContent alloc];
    ciImage = v2->_ciImage;
    [(_UIImageContent *)v2 scale];
    v5 = [(_UIImageCIImageContent *)v3 initWithCIImage:ciImage scale:?];

    *(v5 + 48) = 0;
    v2 = v5;
  }

  return v2;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _UIImageCIImageContent;
  if ([(_UIImageContent *)&v7 isEqual:v4])
  {
    v5 = self->_ciImage == v4[5];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_prepareForDrawingWithSize:(CGSize)a3 scale:(double)a4 inContext:(CGContext *)a5
{
  CGContextTranslateCTM(a5, 0.0, a3.height);

  CGContextScaleCTM(a5, 1.0, -1.0);
}

- (void)_drawWithSize:(CGSize)a3 scale:(double)a4 inContext:(CGContext *)a5 renditionContext:(id)a6
{
  height = a3.height;
  width = a3.width;
  [(CIImage *)self->_ciImage extent:a5];
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
    CGContextDrawImage(a5, v23, v19);
    CGImageRelease(v19);
  }
}

@end