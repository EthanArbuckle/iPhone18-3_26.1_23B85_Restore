@interface SBHFeatureIntroductionManager
- (SBHFeatureIntroductionManager)init;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)featureIntroductionItemAtLocation:(unint64_t)location;
- (id)featureIntroductionItemAtLocation:(unint64_t)location withIdentifier:(id)identifier;
- (id)featureIntroductionItemsSetAtLocation:(unint64_t)location;
- (id)featureLocationKeyFromLocation:(unint64_t)location;
- (id)succinctDescription;
- (unint64_t)featureLocationFromMask:(unint64_t)mask;
- (void)addFeatureIntroductionItem:(id)item atLocations:(unint64_t)locations;
- (void)removeAllFeatureIntroductionsAtLocations:(unint64_t)locations;
- (void)removeFeatureIntroductionAtAllLocationsWithItem:(id)item;
- (void)removeFeatureIntroductionItem:(id)item atLocations:(unint64_t)locations;
@end

@implementation SBHFeatureIntroductionManager

- (SBHFeatureIntroductionManager)init
{
  v6.receiver = self;
  v6.super_class = SBHFeatureIntroductionManager;
  v2 = [(SBHFeatureIntroductionManager *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    allFeatureIntroductionItems = v2->_allFeatureIntroductionItems;
    v2->_allFeatureIntroductionItems = dictionary;
  }

  return v2;
}

- (id)featureLocationKeyFromLocation:(unint64_t)location
{
  if (location - 1 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E808B750[location - 1];
  }
}

- (unint64_t)featureLocationFromMask:(unint64_t)mask
{
  v3 = __ROR8__(mask - 2, 1);
  if (v3 > 7)
  {
    return 0;
  }

  else
  {
    return qword_1BEE85AC0[v3];
  }
}

- (id)featureIntroductionItemsSetAtLocation:(unint64_t)location
{
  allFeatureIntroductionItems = self->_allFeatureIntroductionItems;
  v6 = [(SBHFeatureIntroductionManager *)self featureLocationKeyFromLocation:?];
  v7 = [(NSMutableDictionary *)allFeatureIntroductionItems objectForKey:v6];

  if (!v7)
  {
    v7 = [MEMORY[0x1E695DFA8] set];
    v8 = self->_allFeatureIntroductionItems;
    v9 = [(SBHFeatureIntroductionManager *)self featureLocationKeyFromLocation:location];
    [(NSMutableDictionary *)v8 setValue:v7 forKey:v9];
  }

  return v7;
}

- (void)addFeatureIntroductionItem:(id)item atLocations:(unint64_t)locations
{
  itemCopy = item;
  if (!itemCopy || !locations)
  {
    goto LABEL_8;
  }

  if ((locations & 2) == 0)
  {
    if ((locations & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_12:
    v8 = [(SBHFeatureIntroductionManager *)self featureIntroductionItemsSetAtLocation:[(SBHFeatureIntroductionManager *)self featureLocationFromMask:4]];
    [v8 addObject:itemCopy];

    if ((locations & 8) == 0)
    {
LABEL_6:
      if ((locations & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    goto LABEL_13;
  }

  v7 = [(SBHFeatureIntroductionManager *)self featureIntroductionItemsSetAtLocation:[(SBHFeatureIntroductionManager *)self featureLocationFromMask:2]];
  [v7 addObject:itemCopy];

  if ((locations & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((locations & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_13:
  v9 = [(SBHFeatureIntroductionManager *)self featureIntroductionItemsSetAtLocation:[(SBHFeatureIntroductionManager *)self featureLocationFromMask:8]];
  [v9 addObject:itemCopy];

  if ((locations & 0x10) != 0)
  {
LABEL_7:
    v6 = [(SBHFeatureIntroductionManager *)self featureIntroductionItemsSetAtLocation:[(SBHFeatureIntroductionManager *)self featureLocationFromMask:16]];
    [v6 addObject:itemCopy];
  }

LABEL_8:
}

- (void)removeFeatureIntroductionItem:(id)item atLocations:(unint64_t)locations
{
  locationsCopy = locations;
  itemCopy = item;
  if ((locationsCopy & 2) != 0)
  {
    v7 = [(SBHFeatureIntroductionManager *)self featureIntroductionItemsSetAtLocation:[(SBHFeatureIntroductionManager *)self featureLocationFromMask:2]];
    [v7 removeObject:itemCopy];

    if ((locationsCopy & 4) == 0)
    {
LABEL_3:
      if ((locationsCopy & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((locationsCopy & 4) == 0)
  {
    goto LABEL_3;
  }

  v8 = [(SBHFeatureIntroductionManager *)self featureIntroductionItemsSetAtLocation:[(SBHFeatureIntroductionManager *)self featureLocationFromMask:4]];
  [v8 removeObject:itemCopy];

  if ((locationsCopy & 8) == 0)
  {
LABEL_4:
    if ((locationsCopy & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v9 = [(SBHFeatureIntroductionManager *)self featureIntroductionItemsSetAtLocation:[(SBHFeatureIntroductionManager *)self featureLocationFromMask:8]];
  [v9 removeObject:itemCopy];

  if ((locationsCopy & 0x10) != 0)
  {
LABEL_5:
    v6 = [(SBHFeatureIntroductionManager *)self featureIntroductionItemsSetAtLocation:[(SBHFeatureIntroductionManager *)self featureLocationFromMask:16]];
    [v6 removeObject:itemCopy];
  }

LABEL_6:
}

- (void)removeFeatureIntroductionAtAllLocationsWithItem:(id)item
{
  itemCopy = item;
  v5 = [(SBHFeatureIntroductionManager *)self featureIntroductionItemsSetAtLocation:[(SBHFeatureIntroductionManager *)self featureLocationFromMask:2]];
  [v5 removeObject:itemCopy];

  v6 = [(SBHFeatureIntroductionManager *)self featureIntroductionItemsSetAtLocation:[(SBHFeatureIntroductionManager *)self featureLocationFromMask:4]];
  [v6 removeObject:itemCopy];

  v7 = [(SBHFeatureIntroductionManager *)self featureIntroductionItemsSetAtLocation:[(SBHFeatureIntroductionManager *)self featureLocationFromMask:8]];
  [v7 removeObject:itemCopy];

  v8 = [(SBHFeatureIntroductionManager *)self featureIntroductionItemsSetAtLocation:[(SBHFeatureIntroductionManager *)self featureLocationFromMask:16]];
  [v8 removeObject:itemCopy];
}

- (void)removeAllFeatureIntroductionsAtLocations:(unint64_t)locations
{
  locationsCopy = locations;
  if ((locations & 2) != 0)
  {
    v5 = [(SBHFeatureIntroductionManager *)self featureIntroductionItemsSetAtLocation:[(SBHFeatureIntroductionManager *)self featureLocationFromMask:2]];
    [v5 removeAllObjects];

    if ((locationsCopy & 4) == 0)
    {
LABEL_3:
      if ((locationsCopy & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v7 = [(SBHFeatureIntroductionManager *)self featureIntroductionItemsSetAtLocation:[(SBHFeatureIntroductionManager *)self featureLocationFromMask:8]];
      [v7 removeAllObjects];

      if ((locationsCopy & 0x10) == 0)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if ((locations & 4) == 0)
  {
    goto LABEL_3;
  }

  v6 = [(SBHFeatureIntroductionManager *)self featureIntroductionItemsSetAtLocation:[(SBHFeatureIntroductionManager *)self featureLocationFromMask:4]];
  [v6 removeAllObjects];

  if ((locationsCopy & 8) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((locationsCopy & 0x10) == 0)
  {
    return;
  }

LABEL_9:
  v8 = [(SBHFeatureIntroductionManager *)self featureIntroductionItemsSetAtLocation:[(SBHFeatureIntroductionManager *)self featureLocationFromMask:16]];
  [v8 removeAllObjects];
}

- (id)featureIntroductionItemAtLocation:(unint64_t)location
{
  v3 = 4;
  v4 = location & 0x10;
  if ((location & 8) != 0)
  {
    v4 = 8;
  }

  if ((location & 4) == 0)
  {
    v3 = v4;
  }

  if ((location & 2) != 0)
  {
    v5 = 2;
  }

  else
  {
    v5 = v3;
  }

  v6 = MEMORY[0x1E695DFD8];
  v7 = [(SBHFeatureIntroductionManager *)self featureIntroductionItemsSetAtLocation:[(SBHFeatureIntroductionManager *)self featureLocationFromMask:v5]];
  v8 = [v6 setWithSet:v7];

  return v8;
}

- (id)featureIntroductionItemAtLocation:(unint64_t)location withIdentifier:(id)identifier
{
  v22 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v7 = [(SBHFeatureIntroductionManager *)self featureIntroductionItemAtLocation:location];
  allObjects = [v7 allObjects];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = allObjects;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        featureIntroductionIdentifier = [v13 featureIntroductionIdentifier];
        v15 = [featureIntroductionIdentifier isEqual:identifierCopy];

        if (v15)
        {
          v10 = v13;
          goto LABEL_11;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v10;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBHFeatureIntroductionManager *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = [MEMORY[0x1E698E680] builderWithObject:self];
  v5 = [v4 appendObject:self->_allFeatureIntroductionItems withName:@"_allFeatureIntroductionItems"];

  return v4;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBHFeatureIntroductionManager *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

@end