@interface TSDMutableImageFill
- (void)setImageData:(id)a3;
- (void)setInterpretsUntaggedImageDataAsGeneric:(BOOL)a3;
- (void)setScale:(double)a3;
- (void)setTintColor:(id)a3;
@end

@implementation TSDMutableImageFill

- (void)setTintColor:(id)a3
{
  mTintColor = self->super.mTintColor;
  if (([(TSUColor *)mTintColor isEqual:?]& 1) == 0)
  {

    self->super.mStandardSizeTintedImage = 0;
    self->super.mHalfSizeTintedImage = 0;

    self->super.mQuarterSizeTintedImage = 0;
    self->super.mReferenceColor = 0;
    self->super.mTintColor = [a3 copy];
  }
}

- (void)setImageData:(id)a3
{
  if (self->super.mImageData != a3)
  {
    v3 = a3;

    self->super.mStandardSizeTintedImage = 0;
    self->super.mHalfSizeTintedImage = 0;

    self->super.mQuarterSizeTintedImage = 0;
    v5 = TSDResampleImageData(v3, 0, 0, 4096.0, 4096.0);
    if (v5 == v3 || v5 == 0)
    {
      v7 = 0;
    }

    else
    {
      v7 = v3;
    }

    if (v5)
    {
      v3 = v5;
    }

    self->super.mImageData = v3;
    self->super.mReferenceColor = 0;
    self->super.mFillSize = *MEMORY[0x277CBF3A8];

    self->super.mOriginalImageData = 0;
    self->super.mOriginalImageData = v7;

    [(TSDMutableImageFill *)self setInterpretsUntaggedImageDataAsGeneric:0];
  }
}

- (void)setScale:(double)a3
{
  [-[TSDImageFill p_validatedImageProvider](self "p_validatedImageProvider")];
  v7 = TSDMultiplySizeScalar(v5, v6, a3);
  v8 = TSDCeilSize(v7);

  [(TSDMutableImageFill *)self setFillSize:v8];
}

- (void)setInterpretsUntaggedImageDataAsGeneric:(BOOL)a3
{
  if (self->super.mInterpretsUntaggedImageDataAsGeneric != a3)
  {
    self->super.mInterpretsUntaggedImageDataAsGeneric = a3;
  }
}

@end