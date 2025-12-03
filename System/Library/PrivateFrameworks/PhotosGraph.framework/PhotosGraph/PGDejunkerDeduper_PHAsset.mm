@interface PGDejunkerDeduper_PHAsset
- (id)bestItemInItems:(id)items options:(id)options;
- (id)debugPersonStringForItem:(id)item;
- (id)dejunkedDedupedAssetsInAssets:(id)assets options:(id)options debugInfo:(id)info progressBlock:(id)block;
- (id)faceprintByPersonLocalIdentifierByItemIdentifierWithItems:(id)items;
- (id)featureWithItem:(id)item;
- (id)itemsSortedByScoreWithItems:(id)items options:(id)options;
- (id)personLocalIdentifiersFromFaceInformation:(id)information faceQualityScore:(double *)score;
- (void)_buildCachesWithAssets:(id)assets options:(id)options;
@end

@implementation PGDejunkerDeduper_PHAsset

- (id)personLocalIdentifiersFromFaceInformation:(id)information faceQualityScore:(double *)score
{
  informationCopy = information;
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  faceInformationByPersonLocalIdentifier = [informationCopy faceInformationByPersonLocalIdentifier];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __88__PGDejunkerDeduper_PHAsset_personLocalIdentifiersFromFaceInformation_faceQualityScore___block_invoke;
  v18[3] = &unk_278884B28;
  v8 = v6;
  v19 = v8;
  v20 = &v31;
  v21 = &v27;
  v22 = &v23;
  [faceInformationByPersonLocalIdentifier enumerateKeysAndObjectsUsingBlock:v18];

  if ([v8 count] <= 2)
  {
    v9 = v24[3];
    faceInformationByPersonLocalIdentifier2 = [informationCopy faceInformationByPersonLocalIdentifier];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __88__PGDejunkerDeduper_PHAsset_personLocalIdentifiersFromFaceInformation_faceQualityScore___block_invoke_2;
    v13[3] = &unk_278884B50;
    v17 = fmax(v9 * 0.5, 0.05);
    v14 = v8;
    v15 = &v31;
    v16 = &v27;
    [faceInformationByPersonLocalIdentifier2 enumerateKeysAndObjectsUsingBlock:v13];
  }

  if (score)
  {
    if ([v8 count])
    {
      v11 = v32[3] / v28[3];
    }

    else
    {
      v11 = 0.0;
    }

    *score = v11;
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);

  return v8;
}

- (id)itemsSortedByScoreWithItems:(id)items options:(id)options
{
  optionsCopy = options;
  itemsCopy = items;
  v8 = [objc_opt_class() useFaceprintsForIdenticalDedupingWithOptions:optionsCopy];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__PGDejunkerDeduper_PHAsset_itemsSortedByScoreWithItems_options___block_invoke;
  v11[3] = &unk_278884B00;
  v12 = v8;
  v11[4] = self;
  v9 = [itemsCopy sortedArrayUsingComparator:v11];

  return v9;
}

- (id)featureWithItem:(id)item
{
  itemCopy = item;
  uuid = [itemCopy uuid];
  v6 = [(NSDictionary *)self->_personLocalIdentifiersByAssetUUID objectForKeyedSubscript:uuid];
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(NSDictionary *)self->_peopleScenesByAssetUUID objectForKeyedSubscript:uuid];
  }

  v8 = [PGDejunkerDeduperFeature alloc];
  isVideo = [itemCopy isVideo];

  v10 = [(PGDejunkerDeduperFeature *)v8 initWithPersonLocalIdentifiers:v6 peopleScenes:v7 isVideo:isVideo];

  return v10;
}

- (id)faceprintByPersonLocalIdentifierByItemIdentifierWithItems:(id)items
{
  v15[1] = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  if ([itemsCopy count])
  {
    firstObject = [itemsCopy firstObject];
    photoLibrary = [firstObject photoLibrary];

    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
    v15[0] = *MEMORY[0x277CD9BC0];
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    [librarySpecificFetchOptions setFetchPropertySets:v7];

    v8 = [MEMORY[0x277CD9868] fetchFacesGroupedByAssetLocalIdentifierForAssets:itemsCopy options:librarySpecificFetchOptions];
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __87__PGDejunkerDeduper_PHAsset_faceprintByPersonLocalIdentifierByItemIdentifierWithItems___block_invoke;
    v13[3] = &unk_278884AD8;
    v10 = v9;
    v14 = v10;
    [v8 enumerateKeysAndObjectsUsingBlock:v13];
  }

  else
  {
    v10 = MEMORY[0x277CBEC10];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)debugPersonStringForItem:(id)item
{
  v51 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v5 = [(PGDejunkerDeduper_PHAsset *)self featureWithItem:itemCopy];
  personLocalIdentifiers = [v5 personLocalIdentifiers];
  peopleScenes = [v5 peopleScenes];
  if ([personLocalIdentifiers count])
  {
    v37 = peopleScenes;
    v39 = v5;
    v40 = itemCopy;
    photoLibrary = [itemCopy photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    v10 = MEMORY[0x277CD9938];
    allObjects = [personLocalIdentifiers allObjects];
    v36 = librarySpecificFetchOptions;
    v12 = [v10 fetchPersonsWithLocalIdentifiers:allObjects options:librarySpecificFetchOptions];

    v13 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v12, "count")}];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v46;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v46 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v45 + 1) + 8 * i);
          localIdentifier = [v19 localIdentifier];
          [v13 setObject:v19 forKeyedSubscript:localIdentifier];
        }

        v16 = [v14 countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v16);
    }

    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v38 = personLocalIdentifiers;
    v22 = personLocalIdentifiers;
    v23 = [v22 countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v42;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v42 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v41 + 1) + 8 * j);
          v28 = [v13 objectForKeyedSubscript:v27];
          displayName = [v28 displayName];
          if (![displayName length])
          {
            v30 = [v27 substringToIndex:8];

            displayName = v30;
          }

          [v21 addObject:displayName];
        }

        v24 = [v22 countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v24);
    }

    [v21 sortUsingSelector:sel_compare_];
    v31 = [v21 componentsJoinedByString:{@", "}];

    v5 = v39;
    itemCopy = v40;
    peopleScenes = v37;
    personLocalIdentifiers = v38;
  }

  else if ([peopleScenes count])
  {
    allObjects2 = [peopleScenes allObjects];
    v33 = [allObjects2 sortedArrayUsingSelector:sel_compare_];
    v31 = [v33 componentsJoinedByString:{@", "}];
  }

  else
  {
    v31 = @"nobody";
  }

  v34 = *MEMORY[0x277D85DE8];

  return v31;
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
      if (v7 && (faceQualityScoreByAssetUUID = self->_faceQualityScoreByAssetUUID, [v17 uuid], v21 = objc_claimAutoreleasedReturnValue(), -[NSDictionary objectForKeyedSubscript:](faceQualityScoreByAssetUUID, "objectForKeyedSubscript:", v21), v22 = objc_claimAutoreleasedReturnValue(), v21, v22))
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
        [v17 overallAestheticScore];
        v22 = 0;
        v13 = v24;
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

- (void)_buildCachesWithAssets:(id)assets options:(id)options
{
  v44 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  optionsCopy = options;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v33 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = [MEMORY[0x277CBEB98] setWithObject:@"#people#"];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v10 = assetsCopy;
  v37 = [v10 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v37)
  {
    v35 = 0;
    v36 = *v40;
    v32 = v7;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v40 != v36)
        {
          objc_enumerationMutation(v10);
        }

        v12 = *(*(&v39 + 1) + 8 * i);
        uuid = [v12 uuid];
        personDedupingType = [optionsCopy personDedupingType];
        if (personDedupingType != 2)
        {
          if (personDedupingType != 3)
          {
            v17 = 0;
            goto LABEL_20;
          }

          clsFaceInformationSummary = [v12 clsFaceInformationSummary];
          if (!((clsFaceInformationSummary != 0) | v35 & 1))
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Face information expected but not prefetched.", buf, 2u);
            }

            clsPersonLocalIdentifiers = 0;
            v17 = 0;
            v35 = 1;
            goto LABEL_19;
          }

          clsPersonLocalIdentifiers = clsFaceInformationSummary;
          if ([clsFaceInformationSummary numberOfFaces])
          {
            *buf = 0;
            v17 = [(PGDejunkerDeduper_PHAsset *)self personLocalIdentifiersFromFaceInformation:clsPersonLocalIdentifiers faceQualityScore:buf];
            if ([v17 count])
            {
              [MEMORY[0x277CCABB0] numberWithDouble:*buf];
              v18 = v8;
              v19 = v10;
              v21 = v20 = v9;
              [(NSDictionary *)v33 setObject:v21 forKeyedSubscript:uuid];

              v9 = v20;
              v10 = v19;
              v8 = v18;
              v7 = v32;
            }

            goto LABEL_19;
          }

LABEL_15:
          v17 = 0;
          goto LABEL_19;
        }

        clsPersonLocalIdentifiers = [v12 clsPersonLocalIdentifiers];
        if (![clsPersonLocalIdentifiers count])
        {
          goto LABEL_15;
        }

        v17 = [MEMORY[0x277CBEB98] setWithArray:clsPersonLocalIdentifiers];
LABEL_19:

LABEL_20:
        if ([v17 count])
        {
          [(NSDictionary *)v7 setObject:v17 forKeyedSubscript:uuid];
        }

        if ([optionsCopy personDedupingType] && objc_msgSend(v12, "clsIsInhabited"))
        {
          [(NSDictionary *)v8 setObject:v9 forKeyedSubscript:uuid];
        }
      }

      v37 = [v10 countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v37);
  }

  v22 = v7;
  v23 = v8;
  v24 = v9;
  personLocalIdentifiersByAssetUUID = self->_personLocalIdentifiersByAssetUUID;
  self->_personLocalIdentifiersByAssetUUID = v22;
  v26 = v22;

  v27 = v10;
  peopleScenesByAssetUUID = self->_peopleScenesByAssetUUID;
  self->_peopleScenesByAssetUUID = v23;
  v29 = v23;

  faceQualityScoreByAssetUUID = self->_faceQualityScoreByAssetUUID;
  self->_faceQualityScoreByAssetUUID = v33;

  v31 = *MEMORY[0x277D85DE8];
}

- (id)dejunkedDedupedAssetsInAssets:(id)assets options:(id)options debugInfo:(id)info progressBlock:(id)block
{
  blockCopy = block;
  infoCopy = info;
  optionsCopy = options;
  assetsCopy = assets;
  [(PGDejunkerDeduper_PHAsset *)self _buildCachesWithAssets:assetsCopy options:optionsCopy];
  v16.receiver = self;
  v16.super_class = PGDejunkerDeduper_PHAsset;
  v14 = [(PGDejunkerDeduper_CLSCurationItem *)&v16 dejunkedDedupedItemsInItems:assetsCopy options:optionsCopy debugInfo:infoCopy progressBlock:blockCopy];

  return v14;
}

@end