@interface SBSADefaultsContextMutator
- (SBSADefaultsContextMutator)initWithDefaultsContext:(id)context;
@end

@implementation SBSADefaultsContextMutator

- (SBSADefaultsContextMutator)initWithDefaultsContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = SBSADefaultsContextMutator;
  v6 = [(SBSADefaultsContextMutator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mutatable, context);
  }

  return v7;
}

@end