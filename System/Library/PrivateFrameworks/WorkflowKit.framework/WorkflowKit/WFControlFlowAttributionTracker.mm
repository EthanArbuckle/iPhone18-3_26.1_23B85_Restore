@interface WFControlFlowAttributionTracker
- (WFControlFlowAttributionTracker)init;
- (WFControlFlowAttributionTracker)initWithAttributionSetsInScope:(id)scope;
- (WFControlFlowAttributionTracker)initWithCoder:(id)coder;
- (id)attributionSetForCurrentScope;
- (id)contentCollectionByTaintingContentCollection:(id)collection;
- (void)encodeWithCoder:(id)coder;
- (void)enteredScopeOfControlFlowAction:(id)action withInput:(id)input;
- (void)leftScopeOfControlFlowAction:(id)action;
@end

@implementation WFControlFlowAttributionTracker

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  attributionSetsInScope = [(WFControlFlowAttributionTracker *)self attributionSetsInScope];
  [coderCopy encodeObject:attributionSetsInScope forKey:@"attributionSetsInScope"];
}

- (WFControlFlowAttributionTracker)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"attributionSetsInScope"];

  v10 = [(WFControlFlowAttributionTracker *)self initWithAttributionSetsInScope:v9];
  return v10;
}

- (id)attributionSetForCurrentScope
{
  v2 = MEMORY[0x1E6996D38];
  attributionSetsInScope = [(WFControlFlowAttributionTracker *)self attributionSetsInScope];
  allValues = [attributionSetsInScope allValues];
  v5 = [v2 attributionSetByMergingAttributionSets:allValues];

  return v5;
}

- (id)contentCollectionByTaintingContentCollection:(id)collection
{
  collectionCopy = collection;
  attributionSetsInScope = [(WFControlFlowAttributionTracker *)self attributionSetsInScope];
  allValues = [attributionSetsInScope allValues];

  if ([allValues count])
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:allValues];
    attributionSet = [collectionCopy attributionSet];
    [v7 addObject:attributionSet];

    v9 = [MEMORY[0x1E6996D38] attributionSetByMergingAttributionSets:v7];
    v10 = [collectionCopy collectionByMergingAttributionSet:v9];
  }

  else
  {
    v10 = collectionCopy;
  }

  return v10;
}

- (void)leftScopeOfControlFlowAction:(id)action
{
  actionCopy = action;
  attributionSetsInScope = [(WFControlFlowAttributionTracker *)self attributionSetsInScope];
  groupingIdentifier = [actionCopy groupingIdentifier];

  [attributionSetsInScope removeObjectForKey:groupingIdentifier];
}

- (void)enteredScopeOfControlFlowAction:(id)action withInput:(id)input
{
  actionCopy = action;
  attributionSet = [input attributionSet];
  if ([attributionSet derivedDisclosureLevel] == 1)
  {
    attributionSetsInScope = [(WFControlFlowAttributionTracker *)self attributionSetsInScope];
    groupingIdentifier = [actionCopy groupingIdentifier];
    [attributionSetsInScope setObject:attributionSet forKey:groupingIdentifier];
  }
}

- (WFControlFlowAttributionTracker)initWithAttributionSetsInScope:(id)scope
{
  scopeCopy = scope;
  v10.receiver = self;
  v10.super_class = WFControlFlowAttributionTracker;
  v6 = [(WFControlFlowAttributionTracker *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_attributionSetsInScope, scope);
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