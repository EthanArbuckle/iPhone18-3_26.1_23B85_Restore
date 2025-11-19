@interface TSDShapeRenderingOperation
- (BOOL)needsPressedStateBackground;
- (TSDShapeRenderingOperation)initWithPreset:(id)a3 imageSize:(CGSize)a4 imageScale:(double)a5 swatchFrame:(CGRect)a6 shapeType:(int)a7 angle:(double)a8 documentRoot:(id)a9;
- (UIEdgeInsets)swatchEdgeInsets;
- (void)doWorkWithReadLock;
@end

@implementation TSDShapeRenderingOperation

- (TSDShapeRenderingOperation)initWithPreset:(id)a3 imageSize:(CGSize)a4 imageScale:(double)a5 swatchFrame:(CGRect)a6 shapeType:(int)a7 angle:(double)a8 documentRoot:(id)a9
{
  v12.receiver = self;
  v12.super_class = TSDShapeRenderingOperation;
  result = [(TSDSwatchRenderingOperation *)&v12 initWithPreset:a3 imageSize:a9 imageScale:a4.width swatchFrame:a4.height documentRoot:a5, a6.origin.x, a6.origin.y, a6.size.width, a6.size.height];
  if (result)
  {
    result->mShapeType = a7;
    result->mAngle = a8;
  }

  return result;
}

- (UIEdgeInsets)swatchEdgeInsets
{
  [+[TSDSwatchCache swatchCache](TSDSwatchCache "swatchCache")];
  v3 = v2;
  v5 = v4;
  v6 = v3;
  v7 = v5;
  v8 = v5;
  result.right = v8;
  result.bottom = v7;
  result.left = v6;
  result.top = v5;
  return result;
}

- (BOOL)needsPressedStateBackground
{
  if (self->mShapeType == 3)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (void)doWorkWithReadLock
{
  v3 = TSUPhoneUI();
  v4 = +[TSDSwatchCache swatchCache];
  mPreset = self->super.mPreset;
  p_mImageSize = &self->super.mImageSize;
  mImageScale = self->super.mImageScale;
  if (v3)
  {
    v8 = [v4 imageForShapePreset:mPreset imageSize:self->mShapeType imageScale:self->super.mDocumentRoot swatchFrame:p_mImageSize->width shapeType:self->super.mImageSize.height angle:mImageScale documentRoot:{self->super.mSwatchFrame.origin.x, self->super.mSwatchFrame.origin.y, self->super.mSwatchFrame.size.width, self->super.mSwatchFrame.size.height, self->mAngle}];
  }

  else
  {
    v8 = [v4 imageForShapePreset:mPreset imageSize:self->mShapeType imageScale:self->super.mDocumentRoot shapeType:p_mImageSize->width angle:self->super.mImageSize.height documentRoot:{mImageScale, self->mAngle}];
  }

  v9 = [v8 CGImage];

  [(TSDSwatchRenderingOperation *)self deliverCGImage:v9];
}

@end