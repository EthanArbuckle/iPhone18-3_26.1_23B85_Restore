@interface SBInvalidateContinuousExposeIdentifiersEventResponse
- (SBInvalidateContinuousExposeIdentifiersEventResponse)initWithTransitioningFromAppLayout:(id)a3 transitioningToAppLayout:(id)a4 animated:(BOOL)a5;
@end

@implementation SBInvalidateContinuousExposeIdentifiersEventResponse

- (SBInvalidateContinuousExposeIdentifiersEventResponse)initWithTransitioningFromAppLayout:(id)a3 transitioningToAppLayout:(id)a4 animated:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = SBInvalidateContinuousExposeIdentifiersEventResponse;
  v11 = [(SBChainableModifierEventResponse *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_transitioningFromAppLayout, a3);
    objc_storeStrong(&v12->_transitioningToAppLayout, a4);
    v12->_animated = a5;
  }

  return v12;
}

@end