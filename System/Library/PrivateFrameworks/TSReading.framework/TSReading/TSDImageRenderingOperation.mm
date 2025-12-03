@interface TSDImageRenderingOperation
- (TSDImageRenderingOperation)initWithPreset:(id)preset imageSize:(CGSize)size imageScale:(double)scale swatchFrame:(CGRect)frame imageInfo:(id)info documentRoot:(id)root shouldClipVertically:(BOOL)vertically;
- (void)dealloc;
- (void)doWorkWithReadLock;
@end

@implementation TSDImageRenderingOperation

- (TSDImageRenderingOperation)initWithPreset:(id)preset imageSize:(CGSize)size imageScale:(double)scale swatchFrame:(CGRect)frame imageInfo:(id)info documentRoot:(id)root shouldClipVertically:(BOOL)vertically
{
  v13.receiver = self;
  v13.super_class = TSDImageRenderingOperation;
  v11 = [(TSDSwatchRenderingOperation *)&v13 initWithPreset:preset imageSize:root imageScale:size.width swatchFrame:size.height documentRoot:scale, frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v11)
  {
    v11->mImageInfo = info;
    v11->mShouldClipVertically = vertically;
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

  cGImage = [v8 CGImage];

  [(TSDSwatchRenderingOperation *)self deliverCGImage:cGImage];
}

@end