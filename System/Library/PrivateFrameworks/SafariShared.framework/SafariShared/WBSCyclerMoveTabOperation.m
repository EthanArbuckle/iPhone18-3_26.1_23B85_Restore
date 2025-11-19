@interface WBSCyclerMoveTabOperation
- (id)_randomTabGroupInContext:(id)a3 requireTabs:(BOOL)a4 notIntersecting:(id)a5;
- (void)executeWithContext:(id)a3 completionHandler:(id)a4;
@end

@implementation WBSCyclerMoveTabOperation

- (void)executeWithContext:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DFD8] set];
  v9 = [(WBSCyclerMoveTabOperation *)self _randomTabGroupInContext:v6 requireTabs:1 notIntersecting:v8];

  v10 = [MEMORY[0x1E695DFD8] setWithObject:v9];
  v11 = [(WBSCyclerMoveTabOperation *)self _randomTabGroupInContext:v6 requireTabs:0 notIntersecting:v10];

  if (v9)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v13 = [v6 topLevelItem];
    v7[2](v7, v13);
  }

  else
  {
    v14 = [v9 randomTabDescendant];
    v15 = +[WBSCyclerRandomnessUtilities randomIntegerWithUpperBound:](WBSCyclerRandomnessUtilities, "randomIntegerWithUpperBound:", [v11 numberOfTabs] + 1);
    v16 = [v6 testTarget];
    v17 = [v14 uniqueIdentifier];
    v18 = [v11 uniqueIdentifier];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __66__WBSCyclerMoveTabOperation_executeWithContext_completionHandler___block_invoke;
    v20[3] = &unk_1E7FC5120;
    v25 = v7;
    v21 = v6;
    v22 = v9;
    v23 = v11;
    v24 = v14;
    v26 = v15;
    v19 = v14;
    [v16 moveBookmarkWithIdentifier:v17 intoListWithIdentifier:v18 atIndex:v15 reply:v20];
  }
}

void __66__WBSCyclerMoveTabOperation_executeWithContext_completionHandler___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) topLevelItem];
    v15 = [v3 copy];

    v4 = [*(a1 + 40) uniqueIdentifier];
    v5 = [v15 descendantWithUniqueIdentifier:v4];

    v6 = [*(a1 + 48) uniqueIdentifier];
    v7 = [v15 descendantWithUniqueIdentifier:v6];

    v8 = [*(a1 + 56) uniqueIdentifier];
    v9 = [v15 descendantWithUniqueIdentifier:v8];

    [v5 deleteChild:v9];
    if ([v5 numberOfChildren] == 1)
    {
      v10 = [WBSCyclerBookmarkLeafRepresentation alloc];
      v11 = [MEMORY[0x1E696AFB0] UUID];
      v12 = [v11 UUIDString];
      v13 = [(WBSCyclerBookmarkLeafRepresentation *)v10 initWithURL:0 title:@"Start Page" uniqueIdentifier:v12];

      [v5 insertChild:v13 atIndex:1];
    }

    [v7 insertChild:v9 atIndex:*(a1 + 72) + 1];
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v14 = *(a1 + 64);
    v15 = [*(a1 + 32) topLevelItem];
    (*(v14 + 16))(v14);
  }
}

- (id)_randomTabGroupInContext:(id)a3 requireTabs:(BOOL)a4 notIntersecting:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [v7 topLevelItem];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __82__WBSCyclerMoveTabOperation__randomTabGroupInContext_requireTabs_notIntersecting___block_invoke;
  v14[3] = &unk_1E7FC51E8;
  v17 = a4;
  v15 = v7;
  v16 = v8;
  v10 = v8;
  v11 = v7;
  v12 = [v11 randomDescendantOfList:v9 enforcingTitlePrefixValidity:1 passingTest:v14];

  return v12;
}

uint64_t __82__WBSCyclerMoveTabOperation__randomTabGroupInContext_requireTabs_notIntersecting___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = v4;
    if (*(a1 + 48) == 1 && ![v4 numberOfTabs])
    {
      v7 = 0;
    }

    else
    {
      v6 = [*(a1 + 32) topLevelItem];
      if (v6 == v5)
      {
        v7 = 0;
      }

      else
      {
        v7 = [*(a1 + 40) containsObject:v5] ^ 1;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end