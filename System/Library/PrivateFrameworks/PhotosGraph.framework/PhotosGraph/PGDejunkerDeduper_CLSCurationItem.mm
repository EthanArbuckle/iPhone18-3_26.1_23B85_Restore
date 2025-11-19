@interface PGDejunkerDeduper_CLSCurationItem
- (BOOL)item:(id)a3 isStrongRequiredWithOptions:(id)a4;
- (id)bestItemInItems:(id)a3 options:(id)a4;
- (id)bestItemsInItems:(id)a3 options:(id)a4;
- (id)debugPersonStringForItem:(id)a3;
- (id)dejunkedDedupedItemIdentifiersWithItems:(id)a3 options:(id)a4 debugInfo:(id *)a5;
- (id)dejunkedDedupedItemsInItems:(id)a3 options:(id)a4 debugInfo:(id)a5 progressBlock:(id)a6;
- (id)faceprintByPersonLocalIdentifierByItemIdentifierWithItems:(id)a3;
- (id)featureWithItem:(id)a3;
- (id)itemsSortedByScoreWithItems:(id)a3 options:(id)a4;
- (id)personLocalIdentifiersFromFaceInfos:(id)a3 faceQualityScore:(double *)a4;
- (id)requiredItemsInItems:(id)a3 options:(id)a4 containStronglyRequiredItems:(BOOL *)a5;
- (void)_buildCachesWithItems:(id)a3 options:(id)a4;
@end

@implementation PGDejunkerDeduper_CLSCurationItem

- (id)personLocalIdentifiersFromFaceInfos:(id)a3 faceQualityScore:(double *)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v27 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = v4;
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

  if (a4)
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

    *a4 = v21;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v27;
}

- (id)requiredItemsInItems:(id)a3 options:(id)a4 containStronglyRequiredItems:(BOOL *)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v21 = [v8 identifiersOfRequiredItems];
  v10 = [v8 identifiersOfEligibleItems];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = v7;
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
      v17 = [v16 clsIdentifier];
      if (!v10 || ([v10 containsObject:v17] & 1) != 0 || objc_msgSend(v21, "containsObject:", v17))
      {
        if ([(PGDejunkerDeduper_CLSCurationItem *)self item:v16 isStrongRequiredWithOptions:v8])
        {
          v22 = 1;
        }

        else if (![(PGDejunkerDeduper_CLSCurationItem *)self item:v16 isWeaklyRequiredWithOptions:v8])
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

  if (a5)
  {
    *a5 = v22 & 1;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)item:(id)a3 isStrongRequiredWithOptions:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isFavorite])
  {
    v7 = 1;
  }

  else
  {
    v8 = [v6 identifiersOfRequiredItems];
    v9 = [v5 clsIdentifier];
    v7 = [v8 containsObject:v9];
  }

  return v7;
}

- (id)itemsSortedByScoreWithItems:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() useFaceprintsForIdenticalDedupingWithOptions:v6];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__PGDejunkerDeduper_CLSCurationItem_itemsSortedByScoreWithItems_options___block_invoke;
  v11[3] = &unk_278881170;
  v12 = v8;
  v11[4] = self;
  v9 = [v7 sortedArrayUsingComparator:v11];

  return v9;
}

- (id)featureWithItem:(id)a3
{
  v4 = a3;
  v5 = [v4 clsIdentifier];
  v6 = [(NSDictionary *)self->_personLocalIdentifiersByItemIdentifier objectForKeyedSubscript:v5];
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(NSDictionary *)self->_peopleScenesByItemIdentifier objectForKeyedSubscript:v5];
  }

  v8 = [PGDejunkerDeduperFeature alloc];
  v9 = [v4 isVideo];

  v10 = [(PGDejunkerDeduperFeature *)v8 initWithPersonLocalIdentifiers:v6 peopleScenes:v7 isVideo:v9];

  return v10;
}

- (id)faceprintByPersonLocalIdentifierByItemIdentifierWithItems:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v3;
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
        v7 = MEMORY[0x277CBEBF8];
        if (isKindOfClass)
        {
          v7 = [v5 faceInfos];
        }

        v27 = v5;
        v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v9 = v7;
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

        v20 = [v27 clsIdentifier];
        [v25 setObject:v8 forKeyedSubscript:v20];

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

- (id)debugPersonStringForItem:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(PGDejunkerDeduper_CLSCurationItem *)self featureWithItem:a3];
  v4 = [v3 personLocalIdentifiers];
  v5 = [v3 peopleScenes];
  if ([v4 count])
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = v4;
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
          [v6 addObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    [v6 sortUsingSelector:sel_compare_];
    v13 = [v6 componentsJoinedByString:{@", "}];
    goto LABEL_12;
  }

  if ([v5 count])
  {
    v6 = [v5 allObjects];
    v14 = [v6 sortedArrayUsingSelector:sel_compare_];
    v13 = [v14 componentsJoinedByString:{@", "}];

LABEL_12:
    goto LABEL_13;
  }

  v13 = @"nobody";
LABEL_13:

  v15 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)bestItemsInItems:(id)a3 options:(id)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v46 = 0;
  v8 = [(PGDejunkerDeduper_CLSCurationItem *)self requiredItemsInItems:v6 options:v7 containStronglyRequiredItems:&v46];
  v9 = v8;
  if (v46 == 1)
  {
    v10 = v8;
    goto LABEL_30;
  }

  v11 = [objc_opt_class() useFaceprintsForIdenticalDedupingWithOptions:v7];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v12 = v6;
  v13 = [v12 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (!v13)
  {

    v16 = 0;
    goto LABEL_28;
  }

  v14 = v13;
  v39 = v6;
  v40 = self;
  v37 = v9;
  v38 = v7;
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
      v22 = [v21 isFavorite];
      [v21 clsContentScore];
      v24 = v23;
      if (v11 && (faceQualityScoreByItemIdentifier = v40->_faceQualityScoreByItemIdentifier, [v21 clsIdentifier], v26 = objc_claimAutoreleasedReturnValue(), -[NSDictionary objectForKeyedSubscript:](faceQualityScoreByItemIdentifier, "objectForKeyedSubscript:", v26), v27 = objc_claimAutoreleasedReturnValue(), v26, v27))
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

      v31 = v22 & (v15 ^ 1);
      if (v31 & 1) != 0 || ((v15 ^ v22))
      {
        if (!v31)
        {
          goto LABEL_21;
        }

LABEL_20:
        v33 = v21;

        v18 = v29;
        v19 = v24;
        v15 = v22;
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
    v7 = v38;
    v6 = v39;
    if (![v37 containsObject:v16])
    {
      v34 = [v37 arrayByAddingObject:v16];
      goto LABEL_29;
    }
  }

  else
  {
    v7 = v38;
    v6 = v39;
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

- (id)bestItemInItems:(id)a3 options:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v29 = a4;
  v7 = [objc_opt_class() useFaceprintsForIdenticalDedupingWithOptions:v29];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = v6;
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

- (void)_buildCachesWithItems:(id)a3 options:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v35 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = v7;
  v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = [MEMORY[0x277CBEB98] setWithObject:@"#people#"];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v10 = v5;
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
        v16 = [v15 clsIdentifier];
        v17 = [v6 personDedupingType];
        if (v17 == 2)
        {
          v18 = [v15 clsPersonLocalIdentifiers];
          if ([v18 count])
          {
            v20 = [MEMORY[0x277CBEB98] setWithArray:v18];
          }

          else
          {
            v20 = 0;
          }
        }

        else
        {
          if (v17 != 3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            v20 = 0;
            goto LABEL_19;
          }

          v18 = v15;
          v19 = [v18 faceInfos];
          if ([v19 count])
          {
            v37 = 0.0;
            v20 = [(PGDejunkerDeduper_CLSCurationItem *)self personLocalIdentifiersFromFaceInfos:v19 faceQualityScore:&v37];
            if ([v20 count])
            {
              [MEMORY[0x277CCABB0] numberWithDouble:v37];
              v22 = v21 = v9;
              [(NSDictionary *)v32 setObject:v22 forKeyedSubscript:v16];

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
          [(NSDictionary *)v8 setObject:v20 forKeyedSubscript:v16];
        }

        if ([v6 personDedupingType] && objc_msgSend(v15, "clsIsInhabited"))
        {
          [(NSDictionary *)v35 setObject:v9 forKeyedSubscript:v16];
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

- (id)dejunkedDedupedItemIdentifiersWithItems:(id)a3 options:(id)a4 debugInfo:(id *)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = objc_alloc_init(MEMORY[0x277D3C7A0]);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __95__PGDejunkerDeduper_CLSCurationItem_dejunkedDedupedItemIdentifiersWithItems_options_debugInfo___block_invoke;
  v32[3] = &unk_278886108;
  v25 = v10;
  v33 = v25;
  v11 = v8;
  v34 = v11;
  v12 = v9;
  v35 = v12;
  v27 = v7;
  [v7 enumerateKeysAndObjectsUsingBlock:v32];
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

        v22 = [*(*(&v28 + 1) + 8 * i) clsIdentifier];
        [v16 addObject:v22];
      }

      v19 = [v17 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v19);
  }

  if (a5)
  {
    *a5 = [v14 dictionaryRepresentationWithAppendExtraItemInfoBlock:0];
  }

  v23 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)dejunkedDedupedItemsInItems:(id)a3 options:(id)a4 debugInfo:(id)a5 progressBlock:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  [(PGDejunkerDeduper_CLSCurationItem *)self _buildCachesWithItems:v13 options:v12];
  v16.receiver = self;
  v16.super_class = PGDejunkerDeduper_CLSCurationItem;
  v14 = [(PGDejunkerDeduper *)&v16 dejunkedDedupedItemsInItems:v13 options:v12 debugInfo:v11 progressBlock:v10];

  return v14;
}

@end