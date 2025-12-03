@interface SBSAElementViewInteractionResultMutator
- (SBSAElementViewInteractionResultMutator)initWithElementViewInteractionResult:(id)result;
@end

@implementation SBSAElementViewInteractionResultMutator

- (SBSAElementViewInteractionResultMutator)initWithElementViewInteractionResult:(id)result
{
  resultCopy = result;
  v9.receiver = self;
  v9.super_class = SBSAElementViewInteractionResultMutator;
  v6 = [(SBSAElementViewInteractionResultMutator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_interactionResult, result);
  }

  return v7;
}

@end