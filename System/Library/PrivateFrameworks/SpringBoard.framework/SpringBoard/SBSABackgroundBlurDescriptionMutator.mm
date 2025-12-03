@interface SBSABackgroundBlurDescriptionMutator
- (CGRect)blurFrame;
- (SBSABackgroundBlurDescriptionMutator)initWithBackgroundBlurDescription:(id)description;
@end

@implementation SBSABackgroundBlurDescriptionMutator

- (SBSABackgroundBlurDescriptionMutator)initWithBackgroundBlurDescription:(id)description
{
  descriptionCopy = description;
  v9.receiver = self;
  v9.super_class = SBSABackgroundBlurDescriptionMutator;
  v6 = [(SBSABackgroundBlurDescriptionMutator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_backgroundBlurDescription, description);
  }

  return v7;
}

- (CGRect)blurFrame
{
  [(SBSABackgroundBlurDescription *)self->_backgroundBlurDescription blurFrame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end