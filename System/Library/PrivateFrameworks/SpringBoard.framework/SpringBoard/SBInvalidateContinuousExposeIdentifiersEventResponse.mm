@interface SBInvalidateContinuousExposeIdentifiersEventResponse
- (SBInvalidateContinuousExposeIdentifiersEventResponse)initWithTransitioningFromAppLayout:(id)layout transitioningToAppLayout:(id)appLayout animated:(BOOL)animated;
@end

@implementation SBInvalidateContinuousExposeIdentifiersEventResponse

- (SBInvalidateContinuousExposeIdentifiersEventResponse)initWithTransitioningFromAppLayout:(id)layout transitioningToAppLayout:(id)appLayout animated:(BOOL)animated
{
  layoutCopy = layout;
  appLayoutCopy = appLayout;
  v14.receiver = self;
  v14.super_class = SBInvalidateContinuousExposeIdentifiersEventResponse;
  v11 = [(SBChainableModifierEventResponse *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_transitioningFromAppLayout, layout);
    objc_storeStrong(&v12->_transitioningToAppLayout, appLayout);
    v12->_animated = animated;
  }

  return v12;
}

@end