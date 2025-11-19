@interface SBSAAbstractDictionaryBackedContextMutator
- (SBSAAbstractDictionaryBackedContextMutator)initWithMutatableInstance:(id)a3;
@end

@implementation SBSAAbstractDictionaryBackedContextMutator

- (SBSAAbstractDictionaryBackedContextMutator)initWithMutatableInstance:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBSAAbstractDictionaryBackedContextMutator;
  v6 = [(SBSAAbstractDictionaryBackedContextMutator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mutatable, a3);
  }

  return v7;
}

@end