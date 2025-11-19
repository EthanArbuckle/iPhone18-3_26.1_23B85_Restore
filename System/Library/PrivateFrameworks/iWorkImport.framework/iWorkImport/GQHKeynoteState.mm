@interface GQHKeynoteState
- (BOOL)shouldStreamContent;
- (CGSize)slideSize;
@end

@implementation GQHKeynoteState

- (CGSize)slideSize
{
  width = self->mSlideSize.width;
  height = self->mSlideSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (BOOL)shouldStreamContent
{
  mCurrentSlide = self->mCurrentSlide;
  v3 = mCurrentSlide % self->mProgressiveIndex;
  if (!v3)
  {
    self->mProgressiveIndex = 2 * mCurrentSlide + 2;
  }

  return v3 == 0;
}

@end