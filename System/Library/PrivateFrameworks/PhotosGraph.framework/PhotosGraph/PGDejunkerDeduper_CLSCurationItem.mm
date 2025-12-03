@interface PGDejunkerDeduper_CLSCurationItem
- (BOOL)item:(id)item isStrongRequiredWithOptions:(id)options;
- (id)bestItemInItems:(id)items options:(id)options;
- (id)bestItemsInItems:(id)items options:(id)options;
- (id)debugPersonStringForItem:(id)item;
- (id)dejunkedDedupedItemIdentifiersWithItems:(id)items options:(id)options debugInfo:(id *)info;
- (id)dejunkedDedupedItemsInItems:(id)items options:(id)options debugInfo:(id)info progressBlock:(id)block;
- (id)faceprintByPersonLocalIdentifierByItemIdentifierWithItems:(id)items;
- (id)featureWithItem:(id)item;
- (id)itemsSortedByScoreWithItems:(id)items options:(id)options;
- (id)personLocalIdentifiersFromFaceInfos:(id)infos faceQualityScore:(double *)score;
- (id)requiredItemsInItems:(id)items options:(id)options containStronglyRequiredItems:(BOOL *)requiredItems;
- (void)_buildCachesWithItems:(id)items options:(id)options;
@end

@implementation PGDejunkerDeduper_CLSCurationItem

- (id)personLocalIdentifiersFromFaceInfos:(id)infos faceQualityScore:(double *)score
{
  v33 = *MEMORY[0x277D85DE8];
  infosCopy = infos;
  v27 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = infosCopy;
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (!v6)
  {
    v8 = 0;
    v10 = 0.0;
    goto LABEL_17;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v29;
  v10 = 0.0;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v29 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v12 = *(*(&v28 + 1) + 8 * i);
      v13 = [v12 objectForKeyedSubscript:@"personLocalIdentifier"];
      if (v13)
      {
        v14 = [v12 objectForKeyedSubscript:@"size"];
        [v14 doubleValue];
        if (v15 >= 0.05)
        {
        }

        else
        {
          v16 = [(NSSet *)self->_verifiedPersonLocalIdentifiers containsObject:v13];

          if (!v16)
          {
            goto LABEL_13;
          }
        }

        [v27 addObject:v13];
        v17 = [v12 objectForKeyedSubscript:@"quality"];
        [v17 doubleValue];
        v19 = v18;

        if (v19 >= 0.0)
        {
          ++v8;
          v10 = v10 + v19;
        }
      }

LABEL_13:
    }

    v7 = [v5 countByEnumeratingWithState:&v28 objects:v32 count:16];
  }

  while (v7);
LABEL_17:

  if (score)
  {
    v20 = [v27 count];
    v21 = 0.0;
    if (v20)
    {
      v22 = v8 == 0;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      v21 = v10 / v8;
    }

    *score = v21;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v27;
}

- (id)requiredItemsInItems:(id)items options:(id)options containStronglyRequiredItems:(BOOL *)requiredItems
{
  v28 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  optionsCopy = options;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  identifiersOfRequiredItems = [optionsCopy identifiersOfRequiredItems];
  identifiersOfEligibleItems = [optionsCopy identifiersOfEligibleItems];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = itemsCopy;
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v12)
  {
    v22 = 0;
    goto LABEL_17;
  }

  v13 = v12;
  v22 = 0;
  v14 = *v24;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v24 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v23 + 1) + 8 * i);
      clsIdentifier = [v16 clsIdentifier];
      if (!identifiersOfEligibleItems || ([identifiersOfEligibleItems containsObject:clsIdentifier] & 1) != 0 || objc_msgSend(identifiersOfRequiredItems, "containsObject:", clsIdentifier))
      {
        if ([(PGDejunkerDeduper_CLSCurationItem *)self item:v16 isStrongRequiredWithOptions:optionsCopy])
        {
          v22 = 1;
        }

        else if (![(PGDejunkerDeduper_CLSCurationItem *)self item:v16 isWeaklyRequiredWithOptions:optionsCopy])
        {
          goto LABEL_13;
        }

        [v9 addObject:v16];
      }

LABEL_13:
    }

    v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  }

  while (v13);
LABEL_17:

  if (requiredItems)
  {
    *requiredItems = v22 & 1;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)item:(id)item isStrongRequiredWithOptions:(id)options
{
  itemCopy = item;
  optionsCopy = options;
  if ([itemCopy isFavorite])
  {
    v7 = 1;
  }

  else
  {
    identifiersOfRequiredItems = [optionsCopy identifiersOfRequiredItems];
    clsIdentifier = [itemCopy clsIdentifier];
    v7 = [identifiersOfRequiredItems containsObject:clsIdentifier];
  }

  return v7;
}

- (id)itemsSortedByScoreWithItems:(id)items options:(id)options
{
  optionsCopy = options;
  itemsCopy = items;
  v8 = [objc_opt_class() useFaceprintsForIdenticalDedupingWithOptions:optionsCopy];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__PGDejunkerDeduper_CLSCurationItem_itemsSortedByScoreWithItems_options___block_invoke;
  v11[3] = &unk_278881170;
  v12 = v8;
  v11[4] = self;
  v9 = [itemsCopy sortedArrayUsingComparator:v11];

  return v9;
}

- (id)featureWithItem:(id)item
{
  itemCopy = item;
  clsIdentifier = [itemCopy clsIdentifier];
  v6 = [(NSDictionary *)self->_personLocalIdentifiersByItemIdentifier objectForKeyedSubscript:clsIdentifier];
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(NSDictionary *)self->_peopleScenesByItemIdentifier objectForKeyedSubscript:clsIdentifier];
  }

  v8 = [PGDejunkerDeduperFeature alloc];
  isVideo = [itemCopy isVideo];

  v10 = [(PGDejunkerDeduperFeature *)v8 initWithPersonLocalIdentifiers:v6 peopleScenes:v7 isVideo:isVideo];

  return v10;
}

- (id)faceprintByPersonLocalIdentifierByItemIdentifierWithItems:(id)items
{
  v40 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = itemsCopy;
  v26 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v26)
  {
    v24 = *v35;
    do
    {
      v4 = 0;
      do
      {
        if (*v35 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v28 = v4;
        v5 = *(*(&v34 + 1) + 8 * v4);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        faceInfos = MEMORY[0x277CBEBF8];
        if (isKindOfClass)
        {
          faceInfos = [v5 faceInfos];
        }

        v27 = v5;
        v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v9 = faceInfos;
        v10 = [v9 countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v31;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v31 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v30 + 1) + 8 * i);
              v15 = [v14 objectForKeyedSubscript:@"faceprint"];
              if (v15)
              {
                v16 = objc_alloc(MEMORY[0x277CE2CD8]);
                v29 = 0;
                v17 = [v16 initWithState:v15 error:&v29];
                v18 = v29;
                if (v17)
                {
                  v19 = [v14 objectForKeyedSubscript:@"personLocalIdentifier"];
                  [v8 setObject:v17 forKeyedSubscript:v19];
                }
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v30 objects:v38 count:16];
          }

          while (v11);
        }

        clsIdentifier = [v27 clsIdentifier];
        [v25 setObject:v8 forKeyedSubscript:clsIdentifier];

        v4 = v28 + 1;
      }

      while (v28 + 1 != v26);
      v26 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v26);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)debugPersonStringForItem:(id)item
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(PGDejunkerDeduper_CLSCurationItem *)self featureWithItem:item];
  personLocalIdentifiers = [v3 personLocalIdentifiers];
  peopleScenes = [v3 peopleScenes];
  if ([personLocalIdentifiers count])
  {
    allObjects = objc_alloc_init(MEMORY[0x277CBEB18]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = personLocalIdentifiers;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v17 + 1) + 8 * i) substringToIndex:{8, v17}];
          [allObjects addObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    [allObjects sortUsingSelector:sel_compare_];
    v13 = [allObjects componentsJoinedByString:{@", "}];
    goto LABEL_12;
  }

  if ([peopleScenes count])
  {
    allObjects = [peopleScenes allObjects];
    v14 = [allObjects sortedArrayUsingSelector:sel_compare_];
    v13 = [v14 componentsJoinedByString:{@", "}];

LABEL_12:
    goto LABEL_13;
  }

  v13 = @"nobody";
LABEL_13:

  v15 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)bestItemsInItems:(id)items options:(id)options
{
  v48 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  optionsCopy = options;
  v46 = 0;
  v8 = [(PGDejunkerDeduper_CLSCurationItem *)self requiredItemsInItems:itemsCopy options:optionsCopy containStronglyRequiredItems:&v46];
  v9 = v8;
  if (v46 == 1)
  {
    v10 = v8;
    goto LABEL_30;
  }

  v11 = [objc_opt_class() useFaceprintsForIdenticalDedupingWithOptions:optionsCopy];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v12 = itemsCopy;
  v13 = [v12 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (!v13)
  {

    v16 = 0;
    goto LABEL_28;
  }

  v14 = v13;
  v39 = itemsCopy;
  selfCopy = self;
  v37 = v9;
  v38 = optionsCopy;
  v15 = 0;
  v16 = 0;
  v17 = *v43;
  v18 = -1.79769313e308;
  v19 = -1.79769313e308;
  obj = v12;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v43 != v17)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v42 + 1) + 8 * i);
      isFavorite = [v21 isFavorite];
      [v21 clsContentScore];
      v24 = v23;
      if (v11 && (faceQualityScoreByItemIdentifier = selfCopy->_faceQualityScoreByItemIdentifier, [v21 clsIdentifier], v26 = objc_claimAutoreleasedReturnValue(), -[NSDictionary objectForKeyedSubscript:](faceQualityScoreByItemIdentifier, "objectForKeyedSubscript:", v26), v27 = objc_claimAutoreleasedReturnValue(), v26, v27))
      {
        [v27 doubleValue];
        v29 = v28;
        if (!v16)
        {
          goto LABEL_20;
        }
      }

      else
      {
        [v21 clsAestheticScore];
        v29 = v30;
        v27 = 0;
        if (!v16)
        {
          goto LABEL_20;
        }
      }

      v31 = isFavorite & (v15 ^ 1);
      if (v31 & 1) != 0 || ((v15 ^ isFavorite))
      {
        if (!v31)
        {
          goto LABEL_21;
        }

LABEL_20:
        v33 = v21;

        v18 = v29;
        v19 = v24;
        v15 = isFavorite;
        v16 = v33;
        goto LABEL_21;
      }

      v32 = v29 > v18;
      if (v24 != v19)
      {
        v32 = v24 > v19;
      }

      if (v32)
      {
        goto LABEL_20;
      }

LABEL_21:
    }

    v14 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
  }

  while (v14);

  if (v16)
  {
    v9 = v37;
    optionsCopy = v38;
    itemsCopy = v39;
    if (![v37 containsObject:v16])
    {
      v34 = [v37 arrayByAddingObject:v16];
      goto LABEL_29;
    }
  }

  else
  {
    optionsCopy = v38;
    itemsCopy = v39;
    v9 = v37;
  }

LABEL_28:
  v34 = v9;
LABEL_29:
  v10 = v34;

LABEL_30:
  v35 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)bestItemInItems:(id)items options:(id)options
{
  v35 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  optionsCopy = options;
  v7 = [objc_opt_class() useFaceprintsForIdenticalDedupingWithOptions:optionsCopy];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = itemsCopy;
  v9 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (!v9)
  {
    v11 = 0;
    goto LABEL_23;
  }

  v10 = v9;
  v11 = 0;
  v12 = *v31;
  v13 = -1.79769313e308;
  v14 = -1.79769313e308;
  do
  {
    v15 = 0;
    v16 = v13;
    do
    {
      if (*v31 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v17 = *(*(&v30 + 1) + 8 * v15);
      [v17 clsContentScore];
      v19 = v18;
      if (v7 && (faceQualityScoreByItemIdentifier = self->_faceQualityScoreByItemIdentifier, [v17 clsIdentifier], v21 = objc_claimAutoreleasedReturnValue(), -[NSDictionary objectForKeyedSubscript:](faceQualityScoreByItemIdentifier, "objectForKeyedSubscript:", v21), v22 = objc_claimAutoreleasedReturnValue(), v21, v22))
      {
        [v22 doubleValue];
        v13 = v23;
        if (!v11)
        {
          goto LABEL_18;
        }
      }

      else
      {
        [v17 clsAestheticScore];
        v13 = v24;
        v22 = 0;
        if (!v11)
        {
          goto LABEL_18;
        }
      }

      if (v19 <= v14 && (v19 != v14 || v13 <= v16))
      {
        v13 = v16;
        goto LABEL_19;
      }

LABEL_18:
      v26 = v17;

      v14 = v19;
      v11 = v26;
      v16 = v13;
LABEL_19:

      ++v15;
    }

    while (v10 != v15);
    v10 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
  }

  while (v10);
LABEL_23:

  v27 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)_buildCachesWithItems:(id)items options:(id)options
{
  v43 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  optionsCopy = options;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v35 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = v7;
  v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = [MEMORY[0x277CBEB98] setWithObject:@"#people#"];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v10 = itemsCopy;
  v11 = [v10 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v39;
    v36 = *v39;
    v31 = v10;
    v34 = v8;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v39 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v38 + 1) + 8 * i);
        clsIdentifier = [v15 clsIdentifier];
        personDedupingType = [optionsCopy personDedupingType];
        if (personDedupingType == 2)
        {
          clsPersonLocalIdentifiers = [v15 clsPersonLocalIdentifiers];
          if ([clsPersonLocalIdentifiers count])
          {
            v20 = [MEMORY[0x277CBEB98] setWithArray:clsPersonLocalIdentifiers];
          }

          else
          {
            v20 = 0;
          }
        }

        else
        {
          if (personDedupingType != 3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            v20 = 0;
            goto LABEL_19;
          }

          clsPersonLocalIdentifiers = v15;
          faceInfos = [clsPersonLocalIdentifiers faceInfos];
          if ([faceInfos count])
          {
            v37 = 0.0;
            v20 = [(PGDejunkerDeduper_CLSCurationItem *)self personLocalIdentifiersFromFaceInfos:faceInfos faceQualityScore:&v37];
            if ([v20 count])
            {
              [MEMORY[0x277CCABB0] numberWithDouble:v37];
              v22 = v21 = v9;
              [(NSDictionary *)v32 setObject:v22 forKeyedSubscript:clsIdentifier];

              v9 = v21;
              v10 = v31;
            }
          }

          else
          {
            v20 = 0;
          }

          v8 = v34;
        }

        v13 = v36;
LABEL_19:
        if ([v20 count])
        {
          [(NSDictionary *)v8 setObject:v20 forKeyedSubscript:clsIdentifier];
        }

        if ([optionsCopy personDedupingType] && objc_msgSend(v15, "clsIsInhabited"))
        {
          [(NSDictionary *)v35 setObject:v9 forKeyedSubscript:clsIdentifier];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v12);
  }

  v23 = v8;
  personLocalIdentifiersByItemIdentifier = self->_personLocalIdentifiersByItemIdentifier;
  self->_personLocalIdentifiersByItemIdentifier = v23;
  v25 = v23;

  v26 = v10;
  peopleScenesByItemIdentifier = self->_peopleScenesByItemIdentifier;
  self->_peopleScenesByItemIdentifier = v35;
  v28 = v35;

  faceQualityScoreByItemIdentifier = self->_faceQualityScoreByItemIdentifier;
  self->_faceQualityScoreByItemIdentifier = v32;

  v30 = *MEMORY[0x277D85DE8];
}

- (id)dejunkedDedupedItemIdentifiersWithItems:(id)items options:(id)options debugInfo:(id *)info
{
  v37 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  optionsCopy = options;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = objc_alloc_init(MEMORY[0x277D3C7A0]);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __95__PGDejunkerDeduper_CLSCurationItem_dejunkedDedupedItemIdentifiersWithItems_options_debugInfo___block_invoke;
  v32[3] = &unk_278886108;
  v25 = v10;
  v33 = v25;
  v11 = optionsCopy;
  v34 = v11;
  v12 = v9;
  v35 = v12;
  v27 = itemsCopy;
  [itemsCopy enumerateKeysAndObjectsUsingBlock:v32];
  v13 = [[PGDejunkerDeduperOptions alloc] initWithDictionaryRepresentation:v11];
  v14 = [objc_alloc(MEMORY[0x277D276A0]) initWithItems:v12];
  v15 = [(PGDejunkerDeduper_CLSCurationItem *)self dejunkedDedupedItemsInItems:v12 options:v13 debugInfo:v14 progressBlock:0];
  v16 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v15, "count")}];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v17 = v15;
  v18 = [v17 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v29;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(v17);
        }

        clsIdentifier = [*(*(&v28 + 1) + 8 * i) clsIdentifier];
        [v16 addObject:clsIdentifier];
      }

      v19 = [v17 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v19);
  }

  if (info)
  {
    *info = [v14 dictionaryRepresentationWithAppendExtraItemInfoBlock:0];
  }

  v23 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)dejunkedDedupedItemsInItems:(id)items options:(id)options debugInfo:(id)info progressBlock:(id)block
{
  blockCopy = block;
  infoCopy = info;
  optionsCopy = options;
  itemsCopy = items;
  [(PGDejunkerDeduper_CLSCurationItem *)self _buildCachesWithItems:itemsCopy options:optionsCopy];
  v16.receiver = self;
  v16.super_class = PGDejunkerDeduper_CLSCurationItem;
  v14 = [(PGDejunkerDeduper *)&v16 dejunkedDedupedItemsInItems:itemsCopy options:optionsCopy debugInfo:infoCopy progressBlock:blockCopy];

  return v14;
}

@end