@interface TSDMutableFrame
- (void)setAssetScale:(double)a3;
@end

@implementation TSDMutableFrame

- (void)setAssetScale:(double)a3
{
  [(TSDFrameSpec *)[(TSDFrame *)self frameSpec] i_minimumAssetScale];
  TSUClamp();
  if (self->super.mAssetScale != v4)
  {
    self->super.mAssetScale = v4;
    mSpec = self->super.mSpec;

    p_calculateDerivedValuesFromFrameSpecAndAssetScale(mSpec, &self->super.mLeftWidth, &self->super.mRightWidth, &self->super.mTopHeight, &self->super.mBottomHeight, &self->super.mAdornmentSize, v4);
  }
}

@end