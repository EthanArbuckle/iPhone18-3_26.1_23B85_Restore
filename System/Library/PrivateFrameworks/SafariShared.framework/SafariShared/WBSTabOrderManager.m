@interface WBSTabOrderManager
- (BOOL)_newTabPositionPreferenceAppliesToSwawnedTabs;
- (BOOL)_tab:(id)a3 isRelatedOrEqualToTab:(id)a4;
- (BOOL)newBlankTabPositionAppliesToAllBlankTabs;
- (BOOL)newTabPositionAppliesToSpawnedTabs;
- (BOOL)suppressRelatingNewBlankTabs;
- (BOOL)tab:(id)a3 isInSameSetAsTab:(id)a4;
- (WBSTabOrderManager)init;
- (WBSTabOrderPreferenceProviding)preferenceProvider;
- (WBSTabOrderProvider)tabOrderProvider;
- (double)minimumDelayForRelatingNewBlankTab;
- (id)_insertionHintWithIndexOfTabToInsertAfter:(unint64_t)a3 relation:(unint64_t)a4;
- (id)_insertionHintWithTabToInsertAfter:(id)a3 relation:(unint64_t)a4;
- (id)_nextNonClosedTabAdjacentToIndex:(unint64_t)a3 inAscendingOrder:(BOOL)a4;
- (id)_tabInsertionHintForNewBlankTabWithRecommendedPosition:(unint64_t)a3;
- (id)_tabInsertionHintForNewTabAfterTab:(id)a3 relation:(unint64_t)a4;
- (id)_tabInsertionHintForPosition:(unint64_t)a3 isBlankTab:(BOOL)a4;
- (id)simplifiedIdentifierForDisplayInTabTitle:(id)a3;
- (id)tabInsertionHintForNewBlankTab;
- (id)tabInsertionHintForNewBlankTabInCurrentContext;
- (id)tabInsertionHintForNewTabOfType:(int64_t)a3;
- (id)tabInsertionHintForSpawnedTab;
- (id)tabToInsertNewBlankTabAfter;
- (id)tabToInsertNewTabAfterForPosition:(unint64_t)a3;
- (id)tabToInsertSpawnedTabAfter;
- (id)tabToSelectBeforeClosingTabs:(id)a3;
- (unint64_t)_indexOfLastRelatedTab;
- (unint64_t)_indexOfTabToInsertNewTabAfter;
- (unint64_t)_relationConsideringUserPreferenceForRelation:(unint64_t)a3 isBlankTab:(BOOL)a4;
- (unint64_t)_userPreferredNewBlankTabPositionInCurrentContext:(BOOL)a3;
- (unint64_t)_userPreferredNewSpawnedTabPosition;
- (unint64_t)newTabPosition;
@end

@implementation WBSTabOrderManager

- (WBSTabOrderManager)init
{
  v7.receiver = self;
  v7.super_class = WBSTabOrderManager;
  v2 = [(WBSTabOrderManager *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    simplifiedIdentifierMap = v2->_simplifiedIdentifierMap;
    v2->_simplifiedIdentifierMap = v3;

    objc_storeWeak(&v2->_preferenceProvider, v2);
    v5 = v2;
  }

  return v2;
}

- (id)tabToInsertNewTabAfterForPosition:(unint64_t)a3
{
  v3 = [(WBSTabOrderManager *)self tabInsertionHintForPosition:a3];
  v4 = [v3 tabToInsertAfter];

  return v4;
}

- (id)_tabInsertionHintForPosition:(unint64_t)a3 isBlankTab:(BOOL)a4
{
  v4 = a4;
  v7 = [(WBSTabOrderManager *)self tabOrderProvider];
  v8 = [v7 selectedTabForTabOrderProvider];
  if (!v8)
  {
    goto LABEL_12;
  }

  if (![v7 numberOfTabs])
  {
    v11 = [[WBSTabOrderInsertionHint alloc] initWithTabToInsertAfter:0 insertionIndex:0 relation:0];
    goto LABEL_20;
  }

  if (a3 <= 1)
  {
    if (!a3)
    {
      v11 = [(WBSTabOrderManager *)self _tabInsertionHintForNewTabAfterTab:v8 relation:0];
      goto LABEL_20;
    }

    if (a3 == 1)
    {
      v9 = [(WBSTabOrderManager *)self _indexOfTabToInsertNewTabAfter];
      v10 = !v4 || v9 != [v7 numberOfTabs] - 1;
LABEL_18:
      v14 = [(WBSTabOrderManager *)self _relationConsideringUserPreferenceForRelation:v10 isBlankTab:v4];
      v13 = self;
      v12 = v9;
      goto LABEL_19;
    }

    goto LABEL_12;
  }

  if (a3 == 2)
  {
    v9 = [(WBSTabOrderManager *)self _indexOfLastRelatedTab];
    if (v4)
    {
      v10 = 2 * (v9 != [v7 numberOfTabs] - 1);
    }

    else
    {
      v10 = 2;
    }

    goto LABEL_18;
  }

  if (a3 != 3)
  {
LABEL_12:
    v11 = [(WBSTabOrderManager *)self _insertionHintWithTabToInsertAfter:0 relation:0];
    goto LABEL_20;
  }

  v12 = [v7 numberOfTabs] - 1;
  v13 = self;
  v14 = 0;
LABEL_19:
  v11 = [(WBSTabOrderManager *)v13 _insertionHintWithIndexOfTabToInsertAfter:v12 relation:v14];
LABEL_20:
  v15 = v11;

  return v15;
}

- (id)_tabInsertionHintForNewTabAfterTab:(id)a3 relation:(unint64_t)a4
{
  v6 = a3;
  if ([v6 isPinnedTab])
  {
    v7 = [(WBSTabOrderManager *)self tabOrderProvider];
    v8 = [v7 indexForTab:v6];
    v9 = [v7 numberOfTabs];
    if (v8 >= v9)
    {
      v11 = v8;
    }

    else
    {
      v10 = v9;
      v11 = v8;
      do
      {
        v12 = [v7 tabAtIndex:v8];
        v13 = [v12 isPinnedTab];

        if (v13)
        {
          v11 = v8;
        }

        ++v8;
      }

      while (v10 != v8);
    }

    v14 = [(WBSTabOrderManager *)self _insertionHintWithIndexOfTabToInsertAfter:v11 relation:a4];
  }

  else
  {
    v14 = [(WBSTabOrderManager *)self _insertionHintWithTabToInsertAfter:v6 relation:a4];
  }

  return v14;
}

- (unint64_t)_indexOfTabToInsertNewTabAfter
{
  v2 = [(WBSTabOrderManager *)self tabOrderProvider];
  v3 = [v2 selectedTabForTabOrderProvider];
  v4 = [v2 numberOfTabs];
  v5 = [v3 identifier];
  v6 = [v2 indexOfSelectedTab];
  if (v6 >= v4)
  {
    goto LABEL_18;
  }

  v7 = v6;
  v8 = 0;
  v16 = v3;
  v17 = 0x7FFFFFFFFFFFFFFFLL;
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v10 = [v2 tabAtIndex:{v7, v16}];
    if ([v10 isPinnedTab])
    {
      goto LABEL_13;
    }

    v11 = [v10 identifier];
    if ([v11 isEqualToString:v5])
    {
    }

    else
    {
      v12 = [v10 ancestorTabIdentifiers];
      v13 = [v12 containsObject:v5];

      if ((v13 & 1) == 0)
      {
        v14 = v17;
        if (v17 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v14 = v7;
        }

        v17 = v14;
        goto LABEL_13;
      }
    }

    v8 = 1;
    if (v9 != 0x7FFFFFFFFFFFFFFFLL && v7 - 1 != v9)
    {

      v3 = v16;
      goto LABEL_17;
    }

    v9 = v7;
LABEL_13:

    ++v7;
  }

  while (v4 != v7);
  v3 = v16;
  if (v8)
  {
    goto LABEL_19;
  }

LABEL_17:
  if (v17 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_18:
    v9 = v4 - 1;
  }

  else
  {
    v9 = v17 - 1;
  }

LABEL_19:

  return v9;
}

- (unint64_t)_indexOfLastRelatedTab
{
  v2 = self;
  v3 = [(WBSTabOrderManager *)self tabOrderProvider];
  v4 = [v3 selectedTabForTabOrderProvider];
  v5 = [v3 numberOfTabs];
  v6 = [v3 indexOfSelectedTab];
  if (v6 >= v5)
  {
    v8 = 0;
    goto LABEL_18;
  }

  v7 = v6;
  v8 = 1;
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  while (1)
  {
    v10 = [v3 tabAtIndex:v7];
    if (([v10 isPinnedTab] & 1) == 0)
    {
      break;
    }

LABEL_10:

    v8 = ++v7 < v5;
    if (v5 == v7)
    {
      v8 = 0;
      goto LABEL_17;
    }
  }

  if ([(WBSTabOrderManager *)v2 _tab:v10 isRelatedOrEqualToTab:v4])
  {
    if (v7 - 1 == v9 || v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = v7;
    }

    goto LABEL_10;
  }

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = (v5 - 1);
  }

  else
  {
    v2 = v9;
  }

LABEL_17:
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_18:
    v9 = v5 - 1;
  }

  if (v8)
  {
    v12 = v2;
  }

  else
  {
    v12 = v9;
  }

  return v12;
}

- (id)tabToInsertNewBlankTabAfter
{
  v2 = [(WBSTabOrderManager *)self tabInsertionHintForNewBlankTab];
  v3 = [v2 tabToInsertAfter];

  return v3;
}

- (id)tabInsertionHintForNewBlankTab
{
  v3 = [(WBSTabOrderManager *)self _userPreferredNewBlankTabPositionInCurrentContext:0];

  return [(WBSTabOrderManager *)self _tabInsertionHintForNewBlankTabWithRecommendedPosition:v3];
}

- (id)_tabInsertionHintForNewBlankTabWithRecommendedPosition:(unint64_t)a3
{
  v5 = [(WBSTabOrderManager *)self tabOrderProvider];
  v6 = [v5 selectedTabForTabOrderProvider];
  if ([v6 isPinnedTab])
  {
    v7 = [(WBSTabOrderManager *)self _tabInsertionHintForPosition:3 isBlankTab:1];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_preferenceProvider);
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v10 = v9;
    [v6 lastActivationTime];
    v12 = v11;
    [WeakRetained minimumDelayForRelatingNewBlankTab];
    if (v10 - v12 >= v13 || v12 == 0.0)
    {
      v15 = a3;
    }

    else
    {
      v15 = 3;
    }

    v7 = [(WBSTabOrderManager *)self _tabInsertionHintForPosition:v15 isBlankTab:1];
  }

  return v7;
}

- (id)tabInsertionHintForNewBlankTabInCurrentContext
{
  v3 = [(WBSTabOrderManager *)self _userPreferredNewBlankTabPositionInCurrentContext:1];

  return [(WBSTabOrderManager *)self _tabInsertionHintForNewBlankTabWithRecommendedPosition:v3];
}

- (id)tabToInsertSpawnedTabAfter
{
  v2 = [(WBSTabOrderManager *)self tabInsertionHintForSpawnedTab];
  v3 = [v2 tabToInsertAfter];

  return v3;
}

- (id)tabInsertionHintForSpawnedTab
{
  v3 = [(WBSTabOrderManager *)self _userPreferredNewSpawnedTabPosition];

  return [(WBSTabOrderManager *)self _tabInsertionHintForPosition:v3 isBlankTab:0];
}

- (id)tabInsertionHintForNewTabOfType:(int64_t)a3
{
  if (a3 == 2)
  {
    v3 = [(WBSTabOrderManager *)self tabInsertionHintForSpawnedTab];
  }

  else if (a3 == 1)
  {
    v3 = [(WBSTabOrderManager *)self tabInsertionHintForNewBlankTabInCurrentContext];
  }

  else
  {
    if (a3)
    {
      goto LABEL_8;
    }

    v3 = [(WBSTabOrderManager *)self tabInsertionHintForNewBlankTab];
  }

  a2 = v3;
LABEL_8:

  return a2;
}

- (unint64_t)_userPreferredNewBlankTabPositionInCurrentContext:(BOOL)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_preferenceProvider);
  v5 = [WeakRetained newBlankTabPositionAppliesToAllBlankTabs];
  if (a3 || v5)
  {
    v6 = [WeakRetained newTabPosition];
  }

  else
  {
    v6 = 3;
  }

  return v6;
}

- (unint64_t)_userPreferredNewSpawnedTabPosition
{
  if (![(WBSTabOrderManager *)self _newTabPositionPreferenceAppliesToSwawnedTabs])
  {
    return 1;
  }

  return [(WBSTabOrderManager *)self _userPreferredNewBlankTabPositionInCurrentContext:1];
}

- (BOOL)_newTabPositionPreferenceAppliesToSwawnedTabs
{
  WeakRetained = objc_loadWeakRetained(&self->_preferenceProvider);
  v3 = [WeakRetained newTabPositionAppliesToSpawnedTabs];

  return v3;
}

- (id)tabToSelectBeforeClosingTabs:(id)a3
{
  v4 = a3;
  v5 = [(WBSTabOrderManager *)self tabOrderProvider];
  if ([v5 numberOfTabs] < 2)
  {
    v6 = 0;
    goto LABEL_18;
  }

  v7 = [MEMORY[0x1E695DFD8] setWithArray:v4];
  closingTabs = self->_closingTabs;
  self->_closingTabs = v7;

  v9 = objc_alloc_init(MEMORY[0x1E69C8A40]);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __51__WBSTabOrderManager_tabToSelectBeforeClosingTabs___block_invoke;
  v29[3] = &unk_1E7FB6D90;
  v29[4] = self;
  [v9 setHandler:v29];
  v10 = [v5 selectedTabForTabOrderProvider];
  if (v10)
  {
    if ([(NSSet *)self->_closingTabs containsObject:v10])
    {
      if ([v10 shouldSelectOriginatingTabWhenClosed])
      {
        v11 = [v5 originatingTabForTab:v10];
        v6 = v11;
        if (v11)
        {
          v12 = [v11 windowIdentifier];
          v13 = [v10 windowIdentifier];
          v14 = [v12 isEqualToString:v13];

          if (v14)
          {
            goto LABEL_17;
          }
        }
      }

      v15 = [v5 indexOfSelectedTab];
      v16 = [v5 numberOfTabs];
      if (v15)
      {
        if (v15 != v16 - 1)
        {
          v22 = [(WBSTabOrderManager *)self _nextNonClosedTabAdjacentToIndex:v15 inAscendingOrder:1];
          v23 = [(WBSTabOrderManager *)self _nextNonClosedTabAdjacentToIndex:v15 inAscendingOrder:0];
          v24 = v23;
          if (v22 && v23)
          {
            v25 = [(WBSTabOrderManager *)self tab:v10 isInSameSetAsTab:v23];
            v26 = [(WBSTabOrderManager *)self tab:v10 isInSameSetAsTab:v22];
            if (!v25 || v26)
            {
              v27 = v22;
            }

            else
            {
              v27 = v24;
            }

            if ((!v25 || v26) && !v26)
            {
              v28 = [(WBSTabOrderManager *)self _tab:v10 isRelatedOrEqualToTab:v24];
              if (((v28 | [(WBSTabOrderManager *)self _tab:v10 isRelatedOrEqualToTab:v22]) & v28) != 0)
              {
                v27 = v24;
              }

              else
              {
                v27 = v22;
              }
            }
          }

          else if (v22)
          {
            v27 = v22;
          }

          else
          {
            v27 = v23;
          }

          v6 = v27;

          goto LABEL_17;
        }

        v17 = self;
        v18 = v15;
        v19 = 0;
      }

      else
      {
        v17 = self;
        v18 = 0;
        v19 = 1;
      }

      v20 = [(WBSTabOrderManager *)v17 _nextNonClosedTabAdjacentToIndex:v18 inAscendingOrder:v19];
    }

    else
    {
      v20 = v10;
    }

    v6 = v20;
  }

  else
  {
    v6 = 0;
  }

LABEL_17:

LABEL_18:

  return v6;
}

void __51__WBSTabOrderManager_tabToSelectBeforeClosingTabs___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  *(v1 + 8) = 0;
}

- (BOOL)tab:(id)a3 isInSameSetAsTab:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 ancestorTabIdentifiers];
  v9 = [v7 ancestorTabIdentifiers];
  if ([v8 count] || objc_msgSend(v9, "count"))
  {
    v10 = [v8 count];
    if (v10 == [v9 count])
    {
      v10 = [v8 lastObject];
      v4 = [v9 lastObject];
      v11 = [v10 isEqualToString:v4];
LABEL_15:

      goto LABEL_16;
    }

    v12 = [v8 count];
    if (v12)
    {
      v10 = [v8 lastObject];
      v4 = [v7 identifier];
      if ([v10 isEqualToString:v4])
      {
        v11 = 1;
        goto LABEL_15;
      }

      if (![v9 count])
      {
        v11 = 0;
        goto LABEL_15;
      }

LABEL_12:
      v13 = [v9 lastObject];
      v14 = [v6 identifier];
      v11 = [v13 isEqualToString:v14];

      if (!v12)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    if ([v9 count])
    {
      goto LABEL_12;
    }

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

LABEL_16:

  return v11;
}

- (BOOL)_tab:(id)a3 isRelatedOrEqualToTab:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 ancestorTabIdentifiers];
  v9 = [v7 ancestorTabIdentifiers];
  v10 = [v6 identifier];
  v11 = [v7 identifier];
  if (([v10 isEqualToString:v11] & 1) == 0)
  {
    if (![v8 count] && !objc_msgSend(v9, "count"))
    {
      v12 = 0;
      goto LABEL_19;
    }

    v13 = [v8 count];
    if (v13)
    {
      v4 = [v7 identifier];
      if ([v8 containsObject:v4])
      {
        v12 = 1;
LABEL_18:

        goto LABEL_19;
      }

      if ([v9 count])
      {
        goto LABEL_11;
      }
    }

    else if ([v9 count])
    {
LABEL_11:
      v14 = [v6 identifier];
      v15 = [v9 containsObject:v14];

      if (v13)
      {
      }

      if (v15)
      {
        goto LABEL_2;
      }
    }

    [v8 count];
    [v9 count];
    v4 = [v8 firstObject];
    v16 = [v9 firstObject];
    v12 = [v4 isEqualToString:v16];

    goto LABEL_18;
  }

LABEL_2:
  v12 = 1;
LABEL_19:

  return v12;
}

- (id)simplifiedIdentifierForDisplayInTabTitle:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_simplifiedIdentifierMap objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%li", self->_nextSimplifiedIdentifier];
    [(NSMutableDictionary *)self->_simplifiedIdentifierMap setObject:v7 forKeyedSubscript:v4];
    ++self->_nextSimplifiedIdentifier;
  }

  return v7;
}

- (unint64_t)newTabPosition
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 safari_numberForKey:@"WBSNewTabPositionPreferenceKey"];

  if (v3)
  {
    v4 = [v3 unsignedIntegerValue];
    if (v4 >= 4)
    {
      v5 = 1;
    }

    else
    {
      v5 = v4;
    }
  }

  else
  {
    v5 = 2;
  }

  return v5;
}

- (BOOL)newTabPositionAppliesToSpawnedTabs
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"WBSNewTabPositionAppliesToSpawnedTabsPreferenceKey"];

  return v3;
}

- (BOOL)newBlankTabPositionAppliesToAllBlankTabs
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"WBSNewBlankTabPositionAppliesToAllBlankTabsPreferenceKey"];

  return v3;
}

- (BOOL)suppressRelatingNewBlankTabs
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"WBSTabOrderManagerSuppressRelatingNewBlankTabsPreferenceKey"];

  return v3;
}

- (double)minimumDelayForRelatingNewBlankTab
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v2 doubleForKey:@"WBSNewBlankTabPositionDelayPreferenceKey"];
  v4 = v3;

  return v4;
}

- (id)_insertionHintWithIndexOfTabToInsertAfter:(unint64_t)a3 relation:(unint64_t)a4
{
  v7 = [WBSTabOrderInsertionHint alloc];
  v8 = [(WBSTabOrderManager *)self tabOrderProvider];
  v9 = [v8 tabAtIndex:a3];
  v10 = [(WBSTabOrderInsertionHint *)v7 initWithTabToInsertAfter:v9 insertionIndex:a3 + 1 relation:a4];

  return v10;
}

- (id)_insertionHintWithTabToInsertAfter:(id)a3 relation:(unint64_t)a4
{
  v6 = a3;
  v7 = [WBSTabOrderInsertionHint alloc];
  v8 = v7;
  if (v6)
  {
    v9 = [(WBSTabOrderManager *)self tabOrderProvider];
    v10 = -[WBSTabOrderInsertionHint initWithTabToInsertAfter:insertionIndex:relation:](v8, "initWithTabToInsertAfter:insertionIndex:relation:", v6, [v9 indexForTab:v6] + 1, a4);
  }

  else
  {
    v10 = [(WBSTabOrderInsertionHint *)v7 initWithTabToInsertAfter:0 relation:a4];
  }

  return v10;
}

- (unint64_t)_relationConsideringUserPreferenceForRelation:(unint64_t)a3 isBlankTab:(BOOL)a4
{
  v4 = a3;
  if (a4 && a3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_preferenceProvider);
    if ([WeakRetained suppressRelatingNewBlankTabs])
    {
      v4 = 0;
    }
  }

  return v4;
}

- (id)_nextNonClosedTabAdjacentToIndex:(unint64_t)a3 inAscendingOrder:(BOOL)a4
{
  v4 = a4;
  v7 = [(WBSTabOrderManager *)self tabOrderProvider];
  v8 = objc_opt_respondsToSelector();
  if (v4)
  {
    v9 = 1;
  }

  else
  {
    v9 = -1;
  }

  v10 = [v7 numberOfTabs];
  v11 = 0;
  v12 = v9 + a3;
  if ((v9 + a3) < v10 && (v12 & 0x8000000000000000) == 0)
  {
    v13 = v10;
    v14 = a3 + 2 * v9;
    do
    {
      v15 = v14;
      if (v8)
      {
        [v7 tabAtIndex:v12 inAllTabs:0];
      }

      else
      {
        [v7 tabAtIndex:v12];
      }
      v11 = ;
      if (v11 && ![(NSSet *)self->_closingTabs containsObject:v11])
      {
        break;
      }

      v11 = 0;
      if (v15 >= v13)
      {
        break;
      }

      v12 += v9;
      v14 = v15 + v9;
    }

    while ((v15 & 0x8000000000000000) == 0);
  }

  return v11;
}

- (WBSTabOrderProvider)tabOrderProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_tabOrderProvider);

  return WeakRetained;
}

- (WBSTabOrderPreferenceProviding)preferenceProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_preferenceProvider);

  return WeakRetained;
}

@end