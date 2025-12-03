@interface SBSAAbstractDictionaryBackedPreferencesMutator
- (SBSAAbstractDictionaryBackedPreferencesMutator)initWithMutatableInstance:(id)instance;
@end

@implementation SBSAAbstractDictionaryBackedPreferencesMutator

- (SBSAAbstractDictionaryBackedPreferencesMutator)initWithMutatableInstance:(id)instance
{
  instanceCopy = instance;
  v9.receiver = self;
  v9.super_class = SBSAAbstractDictionaryBackedPreferencesMutator;
  v6 = [(SBSAAbstractDictionaryBackedPreferencesMutator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mutatable, instance);
  }

  return v7;
}

@end