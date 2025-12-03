@interface TSDMutableImageFill
- (void)setImageData:(id)data;
- (void)setInterpretsUntaggedImageDataAsGeneric:(BOOL)generic;
- (void)setScale:(double)scale;
- (void)setTintColor:(id)color;
@end

@implementation TSDMutableImageFill

- (void)setTintColor:(id)color
{
  mTintColor = self->super.mTintColor;
  if (([(TSUColor *)mTintColor isEqual:?]& 1) == 0)
  {

    self->super.mStandardSizeTintedImage = 0;
    self->super.mHalfSizeTintedImage = 0;

    self->super.mQuarterSizeTintedImage = 0;
    self->super.mReferenceColor = 0;
    self->super.mTintColor = [color copy];
  }
}

- (void)setImageData:(id)data
{
  if (self->super.mImageData != data)
  {
    dataCopy = data;

    self->super.mStandardSizeTintedImage = 0;
    self->super.mHalfSizeTintedImage = 0;

    self->super.mQuarterSizeTintedImage = 0;
    v5 = TSDResampleImageData(dataCopy, 0, 0, 4096.0, 4096.0);
    if (v5 == dataCopy || v5 == 0)
    {
      v7 = 0;
    }

    else
    {
      v7 = dataCopy;
    }

    if (v5)
    {
      dataCopy = v5;
    }

    self->super.mImageData = dataCopy;
    self->super.mReferenceColor = 0;
    self->super.mFillSize = *MEMORY[0x277CBF3A8];

    self->super.mOriginalImageData = 0;
    self->super.mOriginalImageData = v7;

    [(TSDMutableImageFill *)self setInterpretsUntaggedImageDataAsGeneric:0];
  }
}

- (void)setScale:(double)scale
{
  [-[TSDImageFill p_validatedImageProvider](self "p_validatedImageProvider")];
  v7 = TSDMultiplySizeScalar(v5, v6, scale);
  v8 = TSDCeilSize(v7);

  [(TSDMutableImageFill *)self setFillSize:v8];
}

- (void)setInterpretsUntaggedImageDataAsGeneric:(BOOL)generic
{
  if (self->super.mInterpretsUntaggedImageDataAsGeneric != generic)
  {
    self->super.mInterpretsUntaggedImageDataAsGeneric = generic;
  }
}

@end