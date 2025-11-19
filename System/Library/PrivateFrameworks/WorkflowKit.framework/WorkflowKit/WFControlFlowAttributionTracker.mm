@interface WFControlFlowAttributionTracker
- (WFControlFlowAttributionTracker)init;
- (WFControlFlowAttributionTracker)initWithAttributionSetsInScope:(id)a3;
- (WFControlFlowAttributionTracker)initWithCoder:(id)a3;
- (id)attributionSetForCurrentScope;
- (id)contentCollectionByTaintingContentCollection:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)enteredScopeOfControlFlowAction:(id)a3 withInput:(id)a4;
- (void)leftScopeOfControlFlowAction:(id)a3;
@end

@implementation WFControlFlowAttributionTracker

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFControlFlowAttributionTracker *)self attributionSetsInScope];
  [v4 encodeObject:v5 forKey:@"attributionSetsInScope"];
}

- (WFControlFlowAttributionTracker)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [v5 decodeObjectOfClasses:v8 forKey:@"attributionSetsInScope"];

  v10 = [(WFControlFlowAttributionTracker *)self initWithAttributionSetsInScope:v9];
  return v10;
}

- (id)attributionSetForCurrentScope
{
  v2 = MEMORY[0x1E6996D38];
  v3 = [(WFControlFlowAttributionTracker *)self attributionSetsInScope];
  v4 = [v3 allValues];
  v5 = [v2 attributionSetByMergingAttributionSets:v4];

  return v5;
}

- (id)contentCollectionByTaintingContentCollection:(id)a3
{
  v4 = a3;
  v5 = [(WFControlFlowAttributionTracker *)self attributionSetsInScope];
  v6 = [v5 allValues];

  if ([v6 count])
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v6];
    v8 = [v4 attributionSet];
    [v7 addObject:v8];

    v9 = [MEMORY[0x1E6996D38] attributionSetByMergingAttributionSets:v7];
    v10 = [v4 collectionByMergingAttributionSet:v9];
  }

  else
  {
    v10 = v4;
  }

  return v10;
}

- (void)leftScopeOfControlFlowAction:(id)a3
{
  v4 = a3;
  v6 = [(WFControlFlowAttributionTracker *)self attributionSetsInScope];
  v5 = [v4 groupingIdentifier];

  [v6 removeObjectForKey:v5];
}

- (void)enteredScopeOfControlFlowAction:(id)a3 withInput:(id)a4
{
  v9 = a3;
  v6 = [a4 attributionSet];
  if ([v6 derivedDisclosureLevel] == 1)
  {
    v7 = [(WFControlFlowAttributionTracker *)self attributionSetsInScope];
    v8 = [v9 groupingIdentifier];
    [v7 setObject:v6 forKey:v8];
  }
}

- (WFControlFlowAttributionTracker)initWithAttributionSetsInScope:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WFControlFlowAttributionTracker;
  v6 = [(WFControlFlowAttributionTracker *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_attributionSetsInScope, a3);
    v8 = v7;
  }

  return v7;
}

- (WFControlFlowAttributionTracker)init
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(WFControlFlowAttributionTracker *)self initWithAttributionSetsInScope:v3];

  return v4;
}

@end