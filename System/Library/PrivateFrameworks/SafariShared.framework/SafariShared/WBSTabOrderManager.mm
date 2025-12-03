@interface WBSTabOrderManager
- (BOOL)_newTabPositionPreferenceAppliesToSwawnedTabs;
- (BOOL)_tab:(id)_tab isRelatedOrEqualToTab:(id)tab;
- (BOOL)newBlankTabPositionAppliesToAllBlankTabs;
- (BOOL)newTabPositionAppliesToSpawnedTabs;
- (BOOL)suppressRelatingNewBlankTabs;
- (BOOL)tab:(id)tab isInSameSetAsTab:(id)asTab;
- (WBSTabOrderManager)init;
- (WBSTabOrderPreferenceProviding)preferenceProvider;
- (WBSTabOrderProvider)tabOrderProvider;
- (double)minimumDelayForRelatingNewBlankTab;
- (id)_insertionHintWithIndexOfTabToInsertAfter:(unint64_t)after relation:(unint64_t)relation;
- (id)_insertionHintWithTabToInsertAfter:(id)after relation:(unint64_t)relation;
- (id)_nextNonClosedTabAdjacentToIndex:(unint64_t)index inAscendingOrder:(BOOL)order;
- (id)_tabInsertionHintForNewBlankTabWithRecommendedPosition:(unint64_t)position;
- (id)_tabInsertionHintForNewTabAfterTab:(id)tab relation:(unint64_t)relation;
- (id)_tabInsertionHintForPosition:(unint64_t)position isBlankTab:(BOOL)tab;
- (id)simplifiedIdentifierForDisplayInTabTitle:(id)title;
- (id)tabInsertionHintForNewBlankTab;
- (id)tabInsertionHintForNewBlankTabInCurrentContext;
- (id)tabInsertionHintForNewTabOfType:(int64_t)type;
- (id)tabInsertionHintForSpawnedTab;
- (id)tabToInsertNewBlankTabAfter;
- (id)tabToInsertNewTabAfterForPosition:(unint64_t)position;
- (id)tabToInsertSpawnedTabAfter;
- (id)tabToSelectBeforeClosingTabs:(id)tabs;
- (unint64_t)_indexOfLastRelatedTab;
- (unint64_t)_indexOfTabToInsertNewTabAfter;
- (unint64_t)_relationConsideringUserPreferenceForRelation:(unint64_t)relation isBlankTab:(BOOL)tab;
- (unint64_t)_userPreferredNewBlankTabPositionInCurrentContext:(BOOL)context;
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
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    simplifiedIdentifierMap = v2->_simplifiedIdentifierMap;
    v2->_simplifiedIdentifierMap = dictionary;

    objc_storeWeak(&v2->_preferenceProvider, v2);
    v5 = v2;
  }

  return v2;
}

- (id)tabToInsertNewTabAfterForPosition:(unint64_t)position
{
  v3 = [(WBSTabOrderManager *)self tabInsertionHintForPosition:position];
  tabToInsertAfter = [v3 tabToInsertAfter];

  return tabToInsertAfter;
}

- (id)_tabInsertionHintForPosition:(unint64_t)position isBlankTab:(BOOL)tab
{
  tabCopy = tab;
  tabOrderProvider = [(WBSTabOrderManager *)self tabOrderProvider];
  selectedTabForTabOrderProvider = [tabOrderProvider selectedTabForTabOrderProvider];
  if (!selectedTabForTabOrderProvider)
  {
    goto LABEL_12;
  }

  if (![tabOrderProvider numberOfTabs])
  {
    v11 = [[WBSTabOrderInsertionHint alloc] initWithTabToInsertAfter:0 insertionIndex:0 relation:0];
    goto LABEL_20;
  }

  if (position <= 1)
  {
    if (!position)
    {
      v11 = [(WBSTabOrderManager *)self _tabInsertionHintForNewTabAfterTab:selectedTabForTabOrderProvider relation:0];
      goto LABEL_20;
    }

    if (position == 1)
    {
      _indexOfTabToInsertNewTabAfter = [(WBSTabOrderManager *)self _indexOfTabToInsertNewTabAfter];
      v10 = !tabCopy || _indexOfTabToInsertNewTabAfter != [tabOrderProvider numberOfTabs] - 1;
LABEL_18:
      v14 = [(WBSTabOrderManager *)self _relationConsideringUserPreferenceForRelation:v10 isBlankTab:tabCopy];
      selfCopy2 = self;
      v12 = _indexOfTabToInsertNewTabAfter;
      goto LABEL_19;
    }

    goto LABEL_12;
  }

  if (position == 2)
  {
    _indexOfTabToInsertNewTabAfter = [(WBSTabOrderManager *)self _indexOfLastRelatedTab];
    if (tabCopy)
    {
      v10 = 2 * (_indexOfTabToInsertNewTabAfter != [tabOrderProvider numberOfTabs] - 1);
    }

    else
    {
      v10 = 2;
    }

    goto LABEL_18;
  }

  if (position != 3)
  {
LABEL_12:
    v11 = [(WBSTabOrderManager *)self _insertionHintWithTabToInsertAfter:0 relation:0];
    goto LABEL_20;
  }

  v12 = [tabOrderProvider numberOfTabs] - 1;
  selfCopy2 = self;
  v14 = 0;
LABEL_19:
  v11 = [(WBSTabOrderManager *)selfCopy2 _insertionHintWithIndexOfTabToInsertAfter:v12 relation:v14];
LABEL_20:
  v15 = v11;

  return v15;
}

- (id)_tabInsertionHintForNewTabAfterTab:(id)tab relation:(unint64_t)relation
{
  tabCopy = tab;
  if ([tabCopy isPinnedTab])
  {
    tabOrderProvider = [(WBSTabOrderManager *)self tabOrderProvider];
    v8 = [tabOrderProvider indexForTab:tabCopy];
    numberOfTabs = [tabOrderProvider numberOfTabs];
    if (v8 >= numberOfTabs)
    {
      v11 = v8;
    }

    else
    {
      v10 = numberOfTabs;
      v11 = v8;
      do
      {
        v12 = [tabOrderProvider tabAtIndex:v8];
        isPinnedTab = [v12 isPinnedTab];

        if (isPinnedTab)
        {
          v11 = v8;
        }

        ++v8;
      }

      while (v10 != v8);
    }

    v14 = [(WBSTabOrderManager *)self _insertionHintWithIndexOfTabToInsertAfter:v11 relation:relation];
  }

  else
  {
    v14 = [(WBSTabOrderManager *)self _insertionHintWithTabToInsertAfter:tabCopy relation:relation];
  }

  return v14;
}

- (unint64_t)_indexOfTabToInsertNewTabAfter
{
  tabOrderProvider = [(WBSTabOrderManager *)self tabOrderProvider];
  selectedTabForTabOrderProvider = [tabOrderProvider selectedTabForTabOrderProvider];
  numberOfTabs = [tabOrderProvider numberOfTabs];
  identifier = [selectedTabForTabOrderProvider identifier];
  indexOfSelectedTab = [tabOrderProvider indexOfSelectedTab];
  if (indexOfSelectedTab >= numberOfTabs)
  {
    goto LABEL_18;
  }

  v7 = indexOfSelectedTab;
  v8 = 0;
  v16 = selectedTabForTabOrderProvider;
  v17 = 0x7FFFFFFFFFFFFFFFLL;
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v10 = [tabOrderProvider tabAtIndex:{v7, v16}];
    if ([v10 isPinnedTab])
    {
      goto LABEL_13;
    }

    identifier2 = [v10 identifier];
    if ([identifier2 isEqualToString:identifier])
    {
    }

    else
    {
      ancestorTabIdentifiers = [v10 ancestorTabIdentifiers];
      v13 = [ancestorTabIdentifiers containsObject:identifier];

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

      selectedTabForTabOrderProvider = v16;
      goto LABEL_17;
    }

    v9 = v7;
LABEL_13:

    ++v7;
  }

  while (numberOfTabs != v7);
  selectedTabForTabOrderProvider = v16;
  if (v8)
  {
    goto LABEL_19;
  }

LABEL_17:
  if (v17 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_18:
    v9 = numberOfTabs - 1;
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
  selfCopy = self;
  tabOrderProvider = [(WBSTabOrderManager *)self tabOrderProvider];
  selectedTabForTabOrderProvider = [tabOrderProvider selectedTabForTabOrderProvider];
  numberOfTabs = [tabOrderProvider numberOfTabs];
  indexOfSelectedTab = [tabOrderProvider indexOfSelectedTab];
  if (indexOfSelectedTab >= numberOfTabs)
  {
    v8 = 0;
    goto LABEL_18;
  }

  v7 = indexOfSelectedTab;
  v8 = 1;
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  while (1)
  {
    v10 = [tabOrderProvider tabAtIndex:v7];
    if (([v10 isPinnedTab] & 1) == 0)
    {
      break;
    }

LABEL_10:

    v8 = ++v7 < numberOfTabs;
    if (numberOfTabs == v7)
    {
      v8 = 0;
      goto LABEL_17;
    }
  }

  if ([(WBSTabOrderManager *)selfCopy _tab:v10 isRelatedOrEqualToTab:selectedTabForTabOrderProvider])
  {
    if (v7 - 1 == v9 || v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = v7;
    }

    goto LABEL_10;
  }

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    selfCopy = (numberOfTabs - 1);
  }

  else
  {
    selfCopy = v9;
  }

LABEL_17:
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_18:
    v9 = numberOfTabs - 1;
  }

  if (v8)
  {
    v12 = selfCopy;
  }

  else
  {
    v12 = v9;
  }

  return v12;
}

- (id)tabToInsertNewBlankTabAfter
{
  tabInsertionHintForNewBlankTab = [(WBSTabOrderManager *)self tabInsertionHintForNewBlankTab];
  tabToInsertAfter = [tabInsertionHintForNewBlankTab tabToInsertAfter];

  return tabToInsertAfter;
}

- (id)tabInsertionHintForNewBlankTab
{
  v3 = [(WBSTabOrderManager *)self _userPreferredNewBlankTabPositionInCurrentContext:0];

  return [(WBSTabOrderManager *)self _tabInsertionHintForNewBlankTabWithRecommendedPosition:v3];
}

- (id)_tabInsertionHintForNewBlankTabWithRecommendedPosition:(unint64_t)position
{
  tabOrderProvider = [(WBSTabOrderManager *)self tabOrderProvider];
  selectedTabForTabOrderProvider = [tabOrderProvider selectedTabForTabOrderProvider];
  if ([selectedTabForTabOrderProvider isPinnedTab])
  {
    v7 = [(WBSTabOrderManager *)self _tabInsertionHintForPosition:3 isBlankTab:1];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_preferenceProvider);
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v10 = v9;
    [selectedTabForTabOrderProvider lastActivationTime];
    v12 = v11;
    [WeakRetained minimumDelayForRelatingNewBlankTab];
    if (v10 - v12 >= v13 || v12 == 0.0)
    {
      positionCopy = position;
    }

    else
    {
      positionCopy = 3;
    }

    v7 = [(WBSTabOrderManager *)self _tabInsertionHintForPosition:positionCopy isBlankTab:1];
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
  tabInsertionHintForSpawnedTab = [(WBSTabOrderManager *)self tabInsertionHintForSpawnedTab];
  tabToInsertAfter = [tabInsertionHintForSpawnedTab tabToInsertAfter];

  return tabToInsertAfter;
}

- (id)tabInsertionHintForSpawnedTab
{
  _userPreferredNewSpawnedTabPosition = [(WBSTabOrderManager *)self _userPreferredNewSpawnedTabPosition];

  return [(WBSTabOrderManager *)self _tabInsertionHintForPosition:_userPreferredNewSpawnedTabPosition isBlankTab:0];
}

- (id)tabInsertionHintForNewTabOfType:(int64_t)type
{
  if (type == 2)
  {
    tabInsertionHintForSpawnedTab = [(WBSTabOrderManager *)self tabInsertionHintForSpawnedTab];
  }

  else if (type == 1)
  {
    tabInsertionHintForSpawnedTab = [(WBSTabOrderManager *)self tabInsertionHintForNewBlankTabInCurrentContext];
  }

  else
  {
    if (type)
    {
      goto LABEL_8;
    }

    tabInsertionHintForSpawnedTab = [(WBSTabOrderManager *)self tabInsertionHintForNewBlankTab];
  }

  a2 = tabInsertionHintForSpawnedTab;
LABEL_8:

  return a2;
}

- (unint64_t)_userPreferredNewBlankTabPositionInCurrentContext:(BOOL)context
{
  WeakRetained = objc_loadWeakRetained(&self->_preferenceProvider);
  newBlankTabPositionAppliesToAllBlankTabs = [WeakRetained newBlankTabPositionAppliesToAllBlankTabs];
  if (context || newBlankTabPositionAppliesToAllBlankTabs)
  {
    newTabPosition = [WeakRetained newTabPosition];
  }

  else
  {
    newTabPosition = 3;
  }

  return newTabPosition;
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
  newTabPositionAppliesToSpawnedTabs = [WeakRetained newTabPositionAppliesToSpawnedTabs];

  return newTabPositionAppliesToSpawnedTabs;
}

- (id)tabToSelectBeforeClosingTabs:(id)tabs
{
  tabsCopy = tabs;
  tabOrderProvider = [(WBSTabOrderManager *)self tabOrderProvider];
  if ([tabOrderProvider numberOfTabs] < 2)
  {
    v6 = 0;
    goto LABEL_18;
  }

  v7 = [MEMORY[0x1E695DFD8] setWithArray:tabsCopy];
  closingTabs = self->_closingTabs;
  self->_closingTabs = v7;

  v9 = objc_alloc_init(MEMORY[0x1E69C8A40]);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __51__WBSTabOrderManager_tabToSelectBeforeClosingTabs___block_invoke;
  v29[3] = &unk_1E7FB6D90;
  v29[4] = self;
  [v9 setHandler:v29];
  selectedTabForTabOrderProvider = [tabOrderProvider selectedTabForTabOrderProvider];
  if (selectedTabForTabOrderProvider)
  {
    if ([(NSSet *)self->_closingTabs containsObject:selectedTabForTabOrderProvider])
    {
      if ([selectedTabForTabOrderProvider shouldSelectOriginatingTabWhenClosed])
      {
        v11 = [tabOrderProvider originatingTabForTab:selectedTabForTabOrderProvider];
        v6 = v11;
        if (v11)
        {
          windowIdentifier = [v11 windowIdentifier];
          windowIdentifier2 = [selectedTabForTabOrderProvider windowIdentifier];
          v14 = [windowIdentifier isEqualToString:windowIdentifier2];

          if (v14)
          {
            goto LABEL_17;
          }
        }
      }

      indexOfSelectedTab = [tabOrderProvider indexOfSelectedTab];
      numberOfTabs = [tabOrderProvider numberOfTabs];
      if (indexOfSelectedTab)
      {
        if (indexOfSelectedTab != numberOfTabs - 1)
        {
          v22 = [(WBSTabOrderManager *)self _nextNonClosedTabAdjacentToIndex:indexOfSelectedTab inAscendingOrder:1];
          v23 = [(WBSTabOrderManager *)self _nextNonClosedTabAdjacentToIndex:indexOfSelectedTab inAscendingOrder:0];
          v24 = v23;
          if (v22 && v23)
          {
            v25 = [(WBSTabOrderManager *)self tab:selectedTabForTabOrderProvider isInSameSetAsTab:v23];
            v26 = [(WBSTabOrderManager *)self tab:selectedTabForTabOrderProvider isInSameSetAsTab:v22];
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
              v28 = [(WBSTabOrderManager *)self _tab:selectedTabForTabOrderProvider isRelatedOrEqualToTab:v24];
              if (((v28 | [(WBSTabOrderManager *)self _tab:selectedTabForTabOrderProvider isRelatedOrEqualToTab:v22]) & v28) != 0)
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

        selfCopy2 = self;
        v18 = indexOfSelectedTab;
        v19 = 0;
      }

      else
      {
        selfCopy2 = self;
        v18 = 0;
        v19 = 1;
      }

      v20 = [(WBSTabOrderManager *)selfCopy2 _nextNonClosedTabAdjacentToIndex:v18 inAscendingOrder:v19];
    }

    else
    {
      v20 = selectedTabForTabOrderProvider;
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

- (BOOL)tab:(id)tab isInSameSetAsTab:(id)asTab
{
  tabCopy = tab;
  asTabCopy = asTab;
  ancestorTabIdentifiers = [tabCopy ancestorTabIdentifiers];
  ancestorTabIdentifiers2 = [asTabCopy ancestorTabIdentifiers];
  if ([ancestorTabIdentifiers count] || objc_msgSend(ancestorTabIdentifiers2, "count"))
  {
    lastObject = [ancestorTabIdentifiers count];
    if (lastObject == [ancestorTabIdentifiers2 count])
    {
      lastObject = [ancestorTabIdentifiers lastObject];
      lastObject2 = [ancestorTabIdentifiers2 lastObject];
      v11 = [lastObject isEqualToString:lastObject2];
LABEL_15:

      goto LABEL_16;
    }

    v12 = [ancestorTabIdentifiers count];
    if (v12)
    {
      lastObject = [ancestorTabIdentifiers lastObject];
      lastObject2 = [asTabCopy identifier];
      if ([lastObject isEqualToString:lastObject2])
      {
        v11 = 1;
        goto LABEL_15;
      }

      if (![ancestorTabIdentifiers2 count])
      {
        v11 = 0;
        goto LABEL_15;
      }

LABEL_12:
      lastObject3 = [ancestorTabIdentifiers2 lastObject];
      identifier = [tabCopy identifier];
      v11 = [lastObject3 isEqualToString:identifier];

      if (!v12)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    if ([ancestorTabIdentifiers2 count])
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

- (BOOL)_tab:(id)_tab isRelatedOrEqualToTab:(id)tab
{
  _tabCopy = _tab;
  tabCopy = tab;
  ancestorTabIdentifiers = [_tabCopy ancestorTabIdentifiers];
  ancestorTabIdentifiers2 = [tabCopy ancestorTabIdentifiers];
  identifier = [_tabCopy identifier];
  identifier2 = [tabCopy identifier];
  if (([identifier isEqualToString:identifier2] & 1) == 0)
  {
    if (![ancestorTabIdentifiers count] && !objc_msgSend(ancestorTabIdentifiers2, "count"))
    {
      v12 = 0;
      goto LABEL_19;
    }

    v13 = [ancestorTabIdentifiers count];
    if (v13)
    {
      identifier3 = [tabCopy identifier];
      if ([ancestorTabIdentifiers containsObject:identifier3])
      {
        v12 = 1;
LABEL_18:

        goto LABEL_19;
      }

      if ([ancestorTabIdentifiers2 count])
      {
        goto LABEL_11;
      }
    }

    else if ([ancestorTabIdentifiers2 count])
    {
LABEL_11:
      identifier4 = [_tabCopy identifier];
      v15 = [ancestorTabIdentifiers2 containsObject:identifier4];

      if (v13)
      {
      }

      if (v15)
      {
        goto LABEL_2;
      }
    }

    [ancestorTabIdentifiers count];
    [ancestorTabIdentifiers2 count];
    identifier3 = [ancestorTabIdentifiers firstObject];
    firstObject = [ancestorTabIdentifiers2 firstObject];
    v12 = [identifier3 isEqualToString:firstObject];

    goto LABEL_18;
  }

LABEL_2:
  v12 = 1;
LABEL_19:

  return v12;
}

- (id)simplifiedIdentifierForDisplayInTabTitle:(id)title
{
  titleCopy = title;
  v5 = [(NSMutableDictionary *)self->_simplifiedIdentifierMap objectForKeyedSubscript:titleCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%li", self->_nextSimplifiedIdentifier];
    [(NSMutableDictionary *)self->_simplifiedIdentifierMap setObject:v7 forKeyedSubscript:titleCopy];
    ++self->_nextSimplifiedIdentifier;
  }

  return v7;
}

- (unint64_t)newTabPosition
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults safari_numberForKey:@"WBSNewTabPositionPreferenceKey"];

  if (v3)
  {
    unsignedIntegerValue = [v3 unsignedIntegerValue];
    if (unsignedIntegerValue >= 4)
    {
      v5 = 1;
    }

    else
    {
      v5 = unsignedIntegerValue;
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
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"WBSNewTabPositionAppliesToSpawnedTabsPreferenceKey"];

  return v3;
}

- (BOOL)newBlankTabPositionAppliesToAllBlankTabs
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"WBSNewBlankTabPositionAppliesToAllBlankTabsPreferenceKey"];

  return v3;
}

- (BOOL)suppressRelatingNewBlankTabs
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"WBSTabOrderManagerSuppressRelatingNewBlankTabsPreferenceKey"];

  return v3;
}

- (double)minimumDelayForRelatingNewBlankTab
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"WBSNewBlankTabPositionDelayPreferenceKey"];
  v4 = v3;

  return v4;
}

- (id)_insertionHintWithIndexOfTabToInsertAfter:(unint64_t)after relation:(unint64_t)relation
{
  v7 = [WBSTabOrderInsertionHint alloc];
  tabOrderProvider = [(WBSTabOrderManager *)self tabOrderProvider];
  v9 = [tabOrderProvider tabAtIndex:after];
  v10 = [(WBSTabOrderInsertionHint *)v7 initWithTabToInsertAfter:v9 insertionIndex:after + 1 relation:relation];

  return v10;
}

- (id)_insertionHintWithTabToInsertAfter:(id)after relation:(unint64_t)relation
{
  afterCopy = after;
  v7 = [WBSTabOrderInsertionHint alloc];
  v8 = v7;
  if (afterCopy)
  {
    tabOrderProvider = [(WBSTabOrderManager *)self tabOrderProvider];
    v10 = -[WBSTabOrderInsertionHint initWithTabToInsertAfter:insertionIndex:relation:](v8, "initWithTabToInsertAfter:insertionIndex:relation:", afterCopy, [tabOrderProvider indexForTab:afterCopy] + 1, relation);
  }

  else
  {
    v10 = [(WBSTabOrderInsertionHint *)v7 initWithTabToInsertAfter:0 relation:relation];
  }

  return v10;
}

- (unint64_t)_relationConsideringUserPreferenceForRelation:(unint64_t)relation isBlankTab:(BOOL)tab
{
  relationCopy = relation;
  if (tab && relation)
  {
    WeakRetained = objc_loadWeakRetained(&self->_preferenceProvider);
    if ([WeakRetained suppressRelatingNewBlankTabs])
    {
      relationCopy = 0;
    }
  }

  return relationCopy;
}

- (id)_nextNonClosedTabAdjacentToIndex:(unint64_t)index inAscendingOrder:(BOOL)order
{
  orderCopy = order;
  tabOrderProvider = [(WBSTabOrderManager *)self tabOrderProvider];
  v8 = objc_opt_respondsToSelector();
  if (orderCopy)
  {
    v9 = 1;
  }

  else
  {
    v9 = -1;
  }

  numberOfTabs = [tabOrderProvider numberOfTabs];
  v11 = 0;
  v12 = v9 + index;
  if ((v9 + index) < numberOfTabs && (v12 & 0x8000000000000000) == 0)
  {
    v13 = numberOfTabs;
    v14 = index + 2 * v9;
    do
    {
      v15 = v14;
      if (v8)
      {
        [tabOrderProvider tabAtIndex:v12 inAllTabs:0];
      }

      else
      {
        [tabOrderProvider tabAtIndex:v12];
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