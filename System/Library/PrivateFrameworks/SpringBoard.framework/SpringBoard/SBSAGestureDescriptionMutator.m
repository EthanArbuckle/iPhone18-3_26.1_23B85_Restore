@interface SBSAGestureDescriptionMutator
- (SBSAGestureDescriptionMutator)initWithGestureDescription:(id)a3;
@end

@implementation SBSAGestureDescriptionMutator

- (SBSAGestureDescriptionMutator)initWithGestureDescription:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBSAGestureDescriptionMutator;
  v6 = [(SBSAGestureDescriptionMutator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_gestureDescription, a3);
  }

  return v7;
}

@end