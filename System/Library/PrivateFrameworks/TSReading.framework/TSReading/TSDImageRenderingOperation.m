@interface TSDImageRenderingOperation
- (TSDImageRenderingOperation)initWithPreset:(id)a3 imageSize:(CGSize)a4 imageScale:(double)a5 swatchFrame:(CGRect)a6 imageInfo:(id)a7 documentRoot:(id)a8 shouldClipVertically:(BOOL)a9;
- (void)dealloc;
- (void)doWorkWithReadLock;
@end

@implementation TSDImageRenderingOperation

- (TSDImageRenderingOperation)initWithPreset:(id)a3 imageSize:(CGSize)a4 imageScale:(double)a5 swatchFrame:(CGRect)a6 imageInfo:(id)a7 documentRoot:(id)a8 shouldClipVertically:(BOOL)a9
{
  v13.receiver = self;
  v13.super_class = TSDImageRenderingOperation;
  v11 = [(TSDSwatchRenderingOperation *)&v13 initWithPreset:a3 imageSize:a8 imageScale:a4.width swatchFrame:a4.height documentRoot:a5, a6.origin.x, a6.origin.y, a6.size.width, a6.size.height];
  if (v11)
  {
    v11->mImageInfo = a7;
    v11->mShouldClipVertically = a9;
  }

  return v11;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDImageRenderingOperation;
  [(TSDSwatchRenderingOperation *)&v3 dealloc];
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
    v8 = [v4 imageForImagePreset:mPreset imageSize:self->mImageInfo imageScale:self->mShouldClipVertically swatchFrame:self->super.mDocumentRoot imageInfo:p_mImageSize->width shouldClipVertically:self->super.mImageSize.height documentRoot:{mImageScale, self->super.mSwatchFrame.origin.x, self->super.mSwatchFrame.origin.y, self->super.mSwatchFrame.size.width, self->super.mSwatchFrame.size.height}];
  }

  else
  {
    v8 = [v4 imageForImagePreset:mPreset imageSize:self->mImageInfo imageScale:self->mShouldClipVertically imageInfo:self->super.mDocumentRoot shouldClipVertically:p_mImageSize->width documentRoot:{self->super.mImageSize.height, mImageScale}];
  }

  v9 = [v8 CGImage];

  [(TSDSwatchRenderingOperation *)self deliverCGImage:v9];
}

@end