@interface SBSAAbstractDictionaryBackedPreferencesMutator
- (SBSAAbstractDictionaryBackedPreferencesMutator)initWithMutatableInstance:(id)a3;
@end

@implementation SBSAAbstractDictionaryBackedPreferencesMutator

- (SBSAAbstractDictionaryBackedPreferencesMutator)initWithMutatableInstance:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBSAAbstractDictionaryBackedPreferencesMutator;
  v6 = [(SBSAAbstractDictionaryBackedPreferencesMutator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mutatable, a3);
  }

  return v7;
}

@end