@interface WBSCyclerOperationContext
- (BOOL)_isItemPrefixed:(id)prefixed;
- (BOOL)_isItemValid:(id)valid;
- (id)_buildDictionaryOfDescendantIdentifiersToParentIdentifiersFromList:(id)list;
- (id)_copyItem:(id)item filteringWithIdentifierWhitelist:(id)whitelist;
- (id)filterOutItemsWithoutTitlePrefixInList:(id)list;
- (id)randomDescendantOfList:(id)list enforcingTitlePrefixValidity:(BOOL)validity passingTest:(id)test;
- (id)randomItemTitle;
- (id)randomSymbolImageName;
- (id)randomValidStrictDescendantOfList:(id)list;
- (id)randomValidStrictDescendantOfTopLevelItem;
- (id)randomValidStrictListDescendantOfList:(id)list;
- (id)randomValidStrictListDescendantOfTopLevelItem;
- (void)setTitlePrefix:(id)prefix;
@end

@implementation WBSCyclerOperationContext

- (void)setTitlePrefix:(id)prefix
{
  prefixCopy = prefix;
  v4 = [prefixCopy length];
  if (v4)
  {
    v4 = [prefixCopy copy];
  }

  titlePrefix = self->_titlePrefix;
  self->_titlePrefix = v4;
}

- (id)filterOutItemsWithoutTitlePrefixInList:(id)list
{
  v26 = *MEMORY[0x1E69E9840];
  listCopy = list;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __68__WBSCyclerOperationContext_filterOutItemsWithoutTitlePrefixInList___block_invoke;
  v24[3] = &unk_1E7FC5198;
  v24[4] = self;
  v5 = [listCopy allDescendantsPassingTest:v24];
  v6 = [(WBSCyclerOperationContext *)self _buildDictionaryOfDescendantIdentifiersToParentIdentifiersFromList:listCopy];
  v7 = MEMORY[0x1E695DFA8];
  uniqueIdentifier = [listCopy uniqueIdentifier];
  v9 = [v7 setWithObject:uniqueIdentifier];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v5;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        uniqueIdentifier2 = [*(*(&v20 + 1) + 8 * i) uniqueIdentifier];
        if (uniqueIdentifier2)
        {
          v16 = uniqueIdentifier2;
          do
          {
            [v9 addObject:v16];
            v17 = [v6 objectForKeyedSubscript:v16];

            v16 = v17;
          }

          while (v17);
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v12);
  }

  v18 = [(WBSCyclerOperationContext *)self _copyItem:listCopy filteringWithIdentifierWhitelist:v9];

  return v18;
}

- (id)randomItemTitle
{
  v3 = [WBSCyclerRandomnessUtilities randomStringWithMaximumLength:*MEMORY[0x1E69C8CF0]];
  titlePrefix = self->_titlePrefix;
  if (titlePrefix)
  {
    v5 = [(NSString *)titlePrefix stringByAppendingString:v3];

    v3 = v5;
  }

  return v3;
}

- (id)randomSymbolImageName
{
  _availableSymbolImageNames = [(WBSCyclerOperationContext *)self _availableSymbolImageNames];
  _availableSymbolImageNames2 = [(WBSCyclerOperationContext *)self _availableSymbolImageNames];
  v5 = [_availableSymbolImageNames objectAtIndexedSubscript:{+[WBSCyclerRandomnessUtilities randomIntegerWithUpperBound:](WBSCyclerRandomnessUtilities, "randomIntegerWithUpperBound:", objc_msgSend(_availableSymbolImageNames2, "count") - 1)}];

  return v5;
}

- (id)randomDescendantOfList:(id)list enforcingTitlePrefixValidity:(BOOL)validity passingTest:(id)test
{
  testCopy = test;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __93__WBSCyclerOperationContext_randomDescendantOfList_enforcingTitlePrefixValidity_passingTest___block_invoke;
  v12[3] = &unk_1E7FC5260;
  validityCopy = validity;
  v12[4] = self;
  v13 = testCopy;
  v9 = testCopy;
  v10 = [list randomDescendantPassingTest:v12];

  return v10;
}

BOOL __93__WBSCyclerOperationContext_randomDescendantOfList_enforcingTitlePrefixValidity_passingTest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = 0;
  if (*(a1 + 48) != 1 || [*(a1 + 32) _isItemValid:v3])
  {
    v4 = *(a1 + 40);
    if (!v4 || (*(v4 + 16))(v4, v3))
    {
      v5 = 1;
    }
  }

  return v5;
}

- (id)randomValidStrictDescendantOfList:(id)list
{
  listCopy = list;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__WBSCyclerOperationContext_randomValidStrictDescendantOfList___block_invoke;
  v8[3] = &unk_1E7FC5198;
  v9 = listCopy;
  v5 = listCopy;
  v6 = [(WBSCyclerOperationContext *)self randomDescendantOfList:v5 enforcingTitlePrefixValidity:1 passingTest:v8];

  return v6;
}

- (id)randomValidStrictDescendantOfTopLevelItem
{
  if (self->_topLevelItem)
  {
    v3 = [(WBSCyclerOperationContext *)self randomValidStrictDescendantOfList:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)randomValidStrictListDescendantOfList:(id)list
{
  listCopy = list;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__WBSCyclerOperationContext_randomValidStrictListDescendantOfList___block_invoke;
  v8[3] = &unk_1E7FC5198;
  v9 = listCopy;
  v5 = listCopy;
  v6 = [(WBSCyclerOperationContext *)self randomDescendantOfList:v5 enforcingTitlePrefixValidity:1 passingTest:v8];

  return v6;
}

uint64_t __67__WBSCyclerOperationContext_randomValidStrictListDescendantOfList___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == a2)
  {
    isKindOfClass = 0;
  }

  else
  {
    v2 = a2;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (id)randomValidStrictListDescendantOfTopLevelItem
{
  if (self->_topLevelItem)
  {
    v3 = [(WBSCyclerOperationContext *)self randomValidStrictListDescendantOfList:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_isItemPrefixed:(id)prefixed
{
  if (!self->_titlePrefix)
  {
    return 1;
  }

  selfCopy = self;
  title = [prefixed title];
  LOBYTE(selfCopy) = [title hasPrefix:selfCopy->_titlePrefix];

  return selfCopy;
}

- (BOOL)_isItemValid:(id)valid
{
  v17 = *MEMORY[0x1E69E9840];
  validCopy = valid;
  if (self->_topLevelItem == validCopy)
  {
    goto LABEL_13;
  }

  if (![(WBSCyclerOperationContext *)self _isItemPrefixed:validCopy])
  {
    v10 = 0;
    goto LABEL_17;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_13:
    v10 = 1;
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = validCopy;
    v6 = [(WBSCyclerItemListRepresentation *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          if (![(WBSCyclerOperationContext *)self _isItemValid:*(*(&v12 + 1) + 8 * i), v12])
          {
            v10 = 0;
            goto LABEL_16;
          }
        }

        v7 = [(WBSCyclerItemListRepresentation *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v10 = 1;
LABEL_16:
  }

LABEL_17:

  return v10;
}

- (id)_buildDictionaryOfDescendantIdentifiersToParentIdentifiersFromList:(id)list
{
  v21 = *MEMORY[0x1E69E9840];
  listCopy = list;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = listCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        uniqueIdentifier = [v6 uniqueIdentifier];
        uniqueIdentifier2 = [v11 uniqueIdentifier];
        [dictionary setObject:uniqueIdentifier forKeyedSubscript:uniqueIdentifier2];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [(WBSCyclerOperationContext *)self _buildDictionaryOfDescendantIdentifiersToParentIdentifiersFromList:v11];
          [dictionary addEntriesFromDictionary:v14];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return dictionary;
}

- (id)_copyItem:(id)item filteringWithIdentifierWhitelist:(id)whitelist
{
  v26 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  whitelistCopy = whitelist;
  uniqueIdentifier = [itemCopy uniqueIdentifier];
  v9 = [whitelistCopy containsObject:uniqueIdentifier];

  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [WBSCyclerItemListRepresentation alloc];
      title = [itemCopy title];
      uniqueIdentifier2 = [itemCopy uniqueIdentifier];
      v13 = [(WBSCyclerItemListRepresentation *)v10 initWithTitle:title uniqueIdentifier:uniqueIdentifier2];

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v14 = itemCopy;
      v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v22;
        do
        {
          v18 = 0;
          do
          {
            if (*v22 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = [(WBSCyclerOperationContext *)self _copyItem:*(*(&v21 + 1) + 8 * v18) filteringWithIdentifierWhitelist:whitelistCopy, v21];
            if (v19)
            {
              [(WBSCyclerItemListRepresentation *)v13 addChild:v19];
            }

            ++v18;
          }

          while (v16 != v18);
          v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v16);
      }
    }

    else
    {
      v13 = itemCopy;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end