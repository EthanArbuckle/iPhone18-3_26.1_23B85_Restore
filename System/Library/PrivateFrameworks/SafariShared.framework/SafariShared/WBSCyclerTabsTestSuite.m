@interface WBSCyclerTabsTestSuite
- (id)_relativeProbabilitiesForOperationsWithNoTabGroups;
- (id)operations;
- (id)relativeProbabilitiesForOperationsWithTopLevelItem:(id)a3;
@end

@implementation WBSCyclerTabsTestSuite

- (id)operations
{
  if (operations_onceToken_0 != -1)
  {
    [WBSCyclerTabsTestSuite operations];
  }

  v3 = operations_operations_0;

  return v3;
}

void __36__WBSCyclerTabsTestSuite_operations__block_invoke()
{
  v11[9] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(WBSCyclerCreateTabGroupRelatedItemOperation);
  v11[0] = v0;
  v1 = objc_alloc_init(WBSCyclerDeleteTabOperation);
  v11[1] = v1;
  v2 = objc_alloc_init(WBSCyclerMoveTabOperation);
  v11[2] = v2;
  v3 = objc_alloc_init(WBSCyclerModifyTabOperation);
  v11[3] = v3;
  v4 = objc_alloc_init(WBSCyclerCreateProfileOperation);
  v11[4] = v4;
  v5 = objc_alloc_init(WBSCyclerMoveTabGroupOperation);
  v11[5] = v5;
  v6 = objc_alloc_init(WBSCyclerDeleteProfileOperation);
  v11[6] = v6;
  v7 = objc_alloc_init(WBSCyclerModifyProfileOperation);
  v11[7] = v7;
  v8 = objc_alloc_init(WBSCyclerSyncReloadOperation);
  v11[8] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:9];
  v10 = operations_operations_0;
  operations_operations_0 = v9;
}

- (id)relativeProbabilitiesForOperationsWithTopLevelItem:(id)a3
{
  v13[9] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 numberOfChildren])
  {
    v5 = &unk_1F3A9AC88;
    if ([v4 containsChildPassingTest:&__block_literal_global_12])
    {
      if ([v4 numberOfChildren] < 2)
      {
        v6 = &unk_1F3A9ACB8;
      }

      else
      {
        v5 = &unk_1F3A9ACA0;
        v6 = &unk_1F3A9ACA0;
      }
    }

    else
    {
      v6 = &unk_1F3A9ACB8;
    }

    v8 = [v4 uniqueIdentifier];
    v9 = [v8 isEqualToString:*MEMORY[0x1E69C8B58]];

    if (v9)
    {
      v10 = &unk_1F3A9ACB8;
    }

    else
    {
      v10 = &unk_1F3A9ACD0;
    }

    v13[0] = v5;
    v13[1] = &unk_1F3A9ACE8;
    v13[2] = v6;
    v13[3] = &unk_1F3A9ACA0;
    v13[4] = &unk_1F3A9ACE8;
    v13[5] = &unk_1F3A9AD00;
    v13[6] = v10;
    v13[7] = &unk_1F3A9ACE8;
    v13[8] = &unk_1F3A9ACD0;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:9];
  }

  else
  {
    v7 = [(WBSCyclerTabsTestSuite *)self _relativeProbabilitiesForOperationsWithNoTabGroups];
  }

  v11 = v7;

  return v11;
}

- (id)_relativeProbabilitiesForOperationsWithNoTabGroups
{
  if (_relativeProbabilitiesForOperationsWithNoTabGroups_onceToken != -1)
  {
    [WBSCyclerTabsTestSuite _relativeProbabilitiesForOperationsWithNoTabGroups];
  }

  v3 = _relativeProbabilitiesForOperationsWithNoTabGroups_relativeProbabilitiesForOperations;

  return v3;
}

void __76__WBSCyclerTabsTestSuite__relativeProbabilitiesForOperationsWithNoTabGroups__block_invoke()
{
  v0 = _relativeProbabilitiesForOperationsWithNoTabGroups_relativeProbabilitiesForOperations;
  _relativeProbabilitiesForOperationsWithNoTabGroups_relativeProbabilitiesForOperations = &unk_1F3A9B1B0;
}

@end