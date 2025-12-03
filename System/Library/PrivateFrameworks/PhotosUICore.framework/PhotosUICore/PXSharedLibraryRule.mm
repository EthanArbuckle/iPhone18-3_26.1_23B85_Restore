@interface PXSharedLibraryRule
+ (id)customizedRuleWithStartDate:(id)date personUUIDs:(id)ds;
+ (id)everythingRule;
+ (id)manualRule;
+ (id)manualRuleWithAssetLocalIdentifiers:(id)identifiers;
- (PXSharedLibraryRule)init;
- (id)_initWithAutoSharePolicy:(int64_t)policy startDate:(id)date personUUIDs:(id)ds assetLocalIdentifiers:(id)identifiers;
- (id)description;
@end

@implementation PXSharedLibraryRule

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = PXSharedLibraryAutoSharePolicyDescription(self->_autoSharePolicy);
  startDate = self->_startDate;
  v7 = [(NSArray *)self->_personUUIDs componentsJoinedByString:@", "];
  v8 = [v3 stringWithFormat:@"<%@:%p, policy:%@, startDate:%@, personUUIDs:(%@)>", v4, self, v5, startDate, v7];

  return v8;
}

- (id)_initWithAutoSharePolicy:(int64_t)policy startDate:(id)date personUUIDs:(id)ds assetLocalIdentifiers:(id)identifiers
{
  dateCopy = date;
  dsCopy = ds;
  identifiersCopy = identifiers;
  if (!dsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryRule.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"personUUIDs"}];
  }

  v24.receiver = self;
  v24.super_class = PXSharedLibraryRule;
  v14 = [(PXSharedLibraryRule *)&v24 init];
  v15 = v14;
  if (v14)
  {
    v14->_autoSharePolicy = policy;
    v16 = [dateCopy copy];
    startDate = v15->_startDate;
    v15->_startDate = v16;

    v18 = [dsCopy copy];
    personUUIDs = v15->_personUUIDs;
    v15->_personUUIDs = v18;

    v20 = [identifiersCopy copy];
    assetLocalIdentifiers = v15->_assetLocalIdentifiers;
    v15->_assetLocalIdentifiers = v20;
  }

  return v15;
}

- (PXSharedLibraryRule)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryRule.m" lineNumber:18 description:{@"%s is not available as initializer", "-[PXSharedLibraryRule init]"}];

  abort();
}

+ (id)customizedRuleWithStartDate:(id)date personUUIDs:(id)ds
{
  dsCopy = ds;
  dateCopy = date;
  v8 = [[self alloc] _initWithAutoSharePolicy:2 startDate:dateCopy personUUIDs:dsCopy assetLocalIdentifiers:0];

  return v8;
}

+ (id)everythingRule
{
  v2 = [self alloc];
  v3 = [v2 _initWithAutoSharePolicy:1 startDate:0 personUUIDs:MEMORY[0x1E695E0F0] assetLocalIdentifiers:0];

  return v3;
}

+ (id)manualRuleWithAssetLocalIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = [self alloc];
  v6 = [v5 _initWithAutoSharePolicy:0 startDate:0 personUUIDs:MEMORY[0x1E695E0F0] assetLocalIdentifiers:identifiersCopy];

  return v6;
}

+ (id)manualRule
{
  v2 = [self alloc];
  v3 = [v2 _initWithAutoSharePolicy:0 startDate:0 personUUIDs:MEMORY[0x1E695E0F0] assetLocalIdentifiers:0];

  return v3;
}

@end