@interface SBSAAbstractDictionaryBackedContextMutator
- (SBSAAbstractDictionaryBackedContextMutator)initWithMutatableInstance:(id)instance;
@end

@implementation SBSAAbstractDictionaryBackedContextMutator

- (SBSAAbstractDictionaryBackedContextMutator)initWithMutatableInstance:(id)instance
{
  instanceCopy = instance;
  v9.receiver = self;
  v9.super_class = SBSAAbstractDictionaryBackedContextMutator;
  v6 = [(SBSAAbstractDictionaryBackedContextMutator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mutatable, instance);
  }

  return v7;
}

@end