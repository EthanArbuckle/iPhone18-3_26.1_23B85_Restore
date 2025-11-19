@interface PXSharedLibraryRule
+ (id)customizedRuleWithStartDate:(id)a3 personUUIDs:(id)a4;
+ (id)everythingRule;
+ (id)manualRule;
+ (id)manualRuleWithAssetLocalIdentifiers:(id)a3;
- (PXSharedLibraryRule)init;
- (id)_initWithAutoSharePolicy:(int64_t)a3 startDate:(id)a4 personUUIDs:(id)a5 assetLocalIdentifiers:(id)a6;
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

- (id)_initWithAutoSharePolicy:(int64_t)a3 startDate:(id)a4 personUUIDs:(id)a5 assetLocalIdentifiers:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v12)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryRule.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"personUUIDs"}];
  }

  v24.receiver = self;
  v24.super_class = PXSharedLibraryRule;
  v14 = [(PXSharedLibraryRule *)&v24 init];
  v15 = v14;
  if (v14)
  {
    v14->_autoSharePolicy = a3;
    v16 = [v11 copy];
    startDate = v15->_startDate;
    v15->_startDate = v16;

    v18 = [v12 copy];
    personUUIDs = v15->_personUUIDs;
    v15->_personUUIDs = v18;

    v20 = [v13 copy];
    assetLocalIdentifiers = v15->_assetLocalIdentifiers;
    v15->_assetLocalIdentifiers = v20;
  }

  return v15;
}

- (PXSharedLibraryRule)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryRule.m" lineNumber:18 description:{@"%s is not available as initializer", "-[PXSharedLibraryRule init]"}];

  abort();
}

+ (id)customizedRuleWithStartDate:(id)a3 personUUIDs:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] _initWithAutoSharePolicy:2 startDate:v7 personUUIDs:v6 assetLocalIdentifiers:0];

  return v8;
}

+ (id)everythingRule
{
  v2 = [a1 alloc];
  v3 = [v2 _initWithAutoSharePolicy:1 startDate:0 personUUIDs:MEMORY[0x1E695E0F0] assetLocalIdentifiers:0];

  return v3;
}

+ (id)manualRuleWithAssetLocalIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [v5 _initWithAutoSharePolicy:0 startDate:0 personUUIDs:MEMORY[0x1E695E0F0] assetLocalIdentifiers:v4];

  return v6;
}

+ (id)manualRule
{
  v2 = [a1 alloc];
  v3 = [v2 _initWithAutoSharePolicy:0 startDate:0 personUUIDs:MEMORY[0x1E695E0F0] assetLocalIdentifiers:0];

  return v3;
}

@end