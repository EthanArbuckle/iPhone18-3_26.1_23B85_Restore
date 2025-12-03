@interface SBSAGestureDescriptionMutator
- (SBSAGestureDescriptionMutator)initWithGestureDescription:(id)description;
@end

@implementation SBSAGestureDescriptionMutator

- (SBSAGestureDescriptionMutator)initWithGestureDescription:(id)description
{
  descriptionCopy = description;
  v9.receiver = self;
  v9.super_class = SBSAGestureDescriptionMutator;
  v6 = [(SBSAGestureDescriptionMutator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_gestureDescription, description);
  }

  return v7;
}

@end