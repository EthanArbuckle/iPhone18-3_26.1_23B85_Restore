@interface SBSAElementViewInteractionResultMutator
- (SBSAElementViewInteractionResultMutator)initWithElementViewInteractionResult:(id)a3;
@end

@implementation SBSAElementViewInteractionResultMutator

- (SBSAElementViewInteractionResultMutator)initWithElementViewInteractionResult:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBSAElementViewInteractionResultMutator;
  v6 = [(SBSAElementViewInteractionResultMutator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_interactionResult, a3);
  }

  return v7;
}

@end