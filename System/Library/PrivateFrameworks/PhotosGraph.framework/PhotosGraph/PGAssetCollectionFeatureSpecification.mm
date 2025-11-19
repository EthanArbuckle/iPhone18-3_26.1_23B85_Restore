@interface PGAssetCollectionFeatureSpecification
- (BOOL)isEqual:(id)a3;
- (CLSFeederPrefetchOptions)assetFeederPrefetchOptions;
- (PGAssetCollectionFeatureSpecification)initWithCoder:(id)a3;
- (PGAssetCollectionFeatureSpecification)initWithFeatureType:(unint64_t)a3 featureLabel:(id)a4 featureDefinitions:(id)a5 shouldRunAtMomentIngest:(BOOL)a6 shouldCreateFeatureNodeIfNeeded:(BOOL)a7;
- (id)_assetUUIDsFromAssets:(id)a3;
- (id)addFeatureNodeIfNeededWithGraphBuilder:(id)a3;
- (id)description;
- (id)featureNodesForMomentNodeCollection:(id)a3;
- (id)instanceWithMomentNode:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateFeatureNodesWithInstance:(id)a3 assets:(id)a4 curationContext:(id)a5 usingBlock:(id)a6;
@end

@implementation PGAssetCollectionFeatureSpecification

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      shouldRunAtMomentIngest = self->_shouldRunAtMomentIngest;
      if (shouldRunAtMomentIngest != [(PGAssetCollectionFeatureSpecification *)v6 shouldRunAtMomentIngest]|| (shouldCreateFeatureNodeIfNeeded = self->_shouldCreateFeatureNodeIfNeeded, shouldCreateFeatureNodeIfNeeded != [(PGAssetCollectionFeatureSpecification *)v6 shouldCreateFeatureNodeIfNeeded]) || (featureType = self->_featureType, featureType != [(PGAssetCollectionFeatureSpecification *)v6 featureType]))
      {
        v13 = 0;
LABEL_12:

        goto LABEL_13;
      }

      featureLabel = self->_featureLabel;
      v11 = [(PGAssetCollectionFeatureSpecification *)v6 featureLabel];
      if (featureLabel == v11 || (v12 = self->_featureLabel, [(PGAssetCollectionFeatureSpecification *)v6 featureLabel], v3 = objc_claimAutoreleasedReturnValue(), [(NSString *)v12 isEqualToString:v3]))
      {
        featureDefinitions = self->_featureDefinitions;
        v16 = [(PGAssetCollectionFeatureSpecification *)v6 featureDefinitions];
        v13 = [(NSArray *)featureDefinitions isEqualToArray:v16];

        if (featureLabel == v11)
        {
LABEL_16:

          goto LABEL_12;
        }
      }

      else
      {
        v13 = 0;
      }

      goto LABEL_16;
    }

    v13 = 0;
  }

LABEL_13:

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v12.receiver = self;
  v12.super_class = PGAssetCollectionFeatureSpecification;
  v4 = [(PGAssetCollectionFeatureSpecification *)&v12 description];
  v5 = [v3 stringWithFormat:@"%@", v4];

  featureType = self->_featureType;
  if (featureType > 0xD)
  {
    v7 = &stru_2843F5C58;
  }

  else
  {
    v7 = off_278881680[featureType];
  }

  [v5 appendFormat:@" %@: %@", @"featureType", v7];
  [v5 appendFormat:@" %@: %@", @"featureLabel", self->_featureLabel];
  v8 = [(NSArray *)self->_featureDefinitions description];
  [v5 appendFormat:@" %@: %@", @"featureDefinitions", v8];

  if (self->_shouldRunAtMomentIngest)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  [v5 appendFormat:@" %@: %@", @"shouldRunAtMomentIngest", v9];
  if (self->_shouldCreateFeatureNodeIfNeeded)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  [v5 appendFormat:@" %@: %@", @"shouldCreateFeatureNodeIfNeeded", v10];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeInteger:self->_featureType forKey:@"featureType"];
  featureLabel = self->_featureLabel;
  if (featureLabel)
  {
    [v5 encodeObject:featureLabel forKey:@"featureLabel"];
  }

  [v5 encodeObject:self->_featureDefinitions forKey:@"featureDefinitions"];
  [v5 encodeBool:self->_shouldRunAtMomentIngest forKey:@"shouldRunAtMomentIngest"];
  [v5 encodeBool:self->_shouldCreateFeatureNodeIfNeeded forKey:@"shouldCreateFeatureNodeIfNeeded"];
}

- (PGAssetCollectionFeatureSpecification)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"featureType"];
  v6 = [v4 decodeObjectForKey:@"featureLabel"];
  v7 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"featureDefinitions"];
  v8 = [v4 decodeBoolForKey:@"shouldRunAtMomentIngest"];
  v9 = [v4 decodeBoolForKey:@"shouldCreateFeatureNodeIfNeeded"];

  v10 = [(PGAssetCollectionFeatureSpecification *)self initWithFeatureType:v5 featureLabel:v6 featureDefinitions:v7 shouldRunAtMomentIngest:v8 shouldCreateFeatureNodeIfNeeded:v9];
  return v10;
}

- (id)_assetUUIDsFromAssets:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB58] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) uuid];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)instanceWithMomentNode:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_shouldCreateFeatureNodeIfNeeded)
  {
    v6 = [[PGAssetCollectionFeatureInstance alloc] initWithSpecification:self momentNode:v4];
  }

  else
  {
    v7 = [v4 collection];
    v8 = [(PGAssetCollectionFeatureSpecification *)self featureNodesForMomentNodeCollection:v7];

    if ([v8 count])
    {
      v6 = [[PGAssetCollectionFeatureInstance alloc] initWithSpecification:self momentNode:v5 featureNodes:v8];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)addFeatureNodeIfNeededWithGraphBuilder:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->_shouldCreateFeatureNodeIfNeeded)
  {
    v7 = 0;
    goto LABEL_32;
  }

  v6 = [v4 graph];
  v7 = 0;
  featureType = self->_featureType;
  if (featureType > 7)
  {
    if ((featureType - 8) >= 3)
    {
      if (featureType == 12)
      {
        if (!self->_featureLabel)
        {
          goto LABEL_30;
        }

        v27 = [PGGraphAudioFeatureNode filterForAudioFeatureLabel:?];
        v28 = [v6 numberOfNodesMatchingFilter:v27];

        if (v28)
        {
          goto LABEL_30;
        }

        featureLabel = self->_featureLabel;
        v16 = v6;
        v17 = 1201;
        goto LABEL_15;
      }

      if (featureType != 13)
      {
        goto LABEL_31;
      }
    }

    if (!self->_featureLabel)
    {
      goto LABEL_30;
    }

    v13 = [PGGraphSceneFeatureNode filterForSceneName:?];
    v14 = [v6 numberOfNodesMatchingFilter:v13];

    if (v14)
    {
      goto LABEL_30;
    }

    featureLabel = self->_featureLabel;
    v16 = v6;
    v17 = 601;
LABEL_15:
    v18 = [v16 addUniqueNodeWithLabel:featureLabel domain:v17 properties:0 didCreate:0];
LABEL_27:
    v7 = v18;
    goto LABEL_31;
  }

  if (featureType > 4)
  {
    if (featureType == 5)
    {
      v23 = +[PGGraphROINode natureFilter];
      v24 = [v6 numberOfNodesMatchingFilter:v23];

      if (!v24)
      {
        v11 = v5;
        v12 = 4;
        goto LABEL_26;
      }
    }

    else if (featureType == 6)
    {
      v25 = +[PGGraphROINode urbanFilter];
      v26 = [v6 numberOfNodesMatchingFilter:v25];

      if (!v26)
      {
        v11 = v5;
        v12 = 1;
        goto LABEL_26;
      }
    }

    else
    {
      v9 = +[PGGraphROINode waterFilter];
      v10 = [v6 numberOfNodesMatchingFilter:v9];

      if (!v10)
      {
        v11 = v5;
        v12 = 5;
LABEL_26:
        v18 = [v11 insertROINodeWithType:v12];
        goto LABEL_27;
      }
    }

    goto LABEL_30;
  }

  if (featureType == 3)
  {
    v21 = +[PGGraphROINode beachFilter];
    v22 = [v6 numberOfNodesMatchingFilter:v21];

    if (!v22)
    {
      v11 = v5;
      v12 = 2;
      goto LABEL_26;
    }

    goto LABEL_30;
  }

  if (featureType == 4)
  {
    v19 = +[PGGraphROINode mountainFilter];
    v20 = [v6 numberOfNodesMatchingFilter:v19];

    if (!v20)
    {
      v11 = v5;
      v12 = 3;
      goto LABEL_26;
    }

LABEL_30:
    v7 = 0;
  }

LABEL_31:

LABEL_32:

  return v7;
}

- (id)featureNodesForMomentNodeCollection:(id)a3
{
  v4 = a3;
  v5 = [v4 graph];
  v6 = [(MAElementCollection *)[PGGraphFeatureNodeCollection alloc] initWithGraph:v5];
  featureType = self->_featureType;
  if (featureType <= 6)
  {
    if (featureType > 3)
    {
      if (featureType == 4)
      {
        v8 = [v4 mountainRoiNodes];
      }

      else
      {
        if (featureType == 5)
        {
          [v4 natureRoiNodes];
        }

        else
        {
          [v4 urbanRoiNodes];
        }
        v8 = ;
      }
    }

    else
    {
      switch(featureType)
      {
        case 1:
          v8 = [v4 consolidatedPersonNodes];
          break;
        case 2:
          v8 = [v4 socialGroupNodes];
          break;
        case 3:
          v8 = [v4 beachRoiNodes];
          break;
        default:
          goto LABEL_28;
      }
    }

    goto LABEL_27;
  }

  if (featureType <= 10)
  {
    if ((featureType - 8) >= 3)
    {
      if (featureType != 7)
      {
        goto LABEL_28;
      }

      v8 = [v4 waterRoiNodes];
      goto LABEL_27;
    }

LABEL_14:
    featureLabel = self->_featureLabel;
    if (!featureLabel)
    {
      goto LABEL_28;
    }

    v8 = [PGGraphSceneFeatureNodeCollection sceneFeatureNodesForSceneName:featureLabel inGraph:v5];
    goto LABEL_27;
  }

  switch(featureType)
  {
    case 11:
      v8 = [v4 petNodes];
      break;
    case 12:
      v10 = self->_featureLabel;
      if (!v10)
      {
        goto LABEL_28;
      }

      v8 = [PGGraphAudioFeatureNodeCollection audioFeatureNodesForLabel:v10 inGraph:v5];
      break;
    case 13:
      goto LABEL_14;
    default:
      goto LABEL_28;
  }

LABEL_27:
  v11 = v8;
  v12 = [v8 featureNodeCollection];

  v6 = v12;
LABEL_28:

  return v6;
}

- (void)enumerateFeatureNodesWithInstance:(id)a3 assets:(id)a4 curationContext:(id)a5 usingBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 featureNodes];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v17 = [v10 momentNode];
    v18 = [v17 collection];
    v16 = [(PGAssetCollectionFeatureSpecification *)self featureNodesForMomentNodeCollection:v18];
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __109__PGAssetCollectionFeatureSpecification_enumerateFeatureNodesWithInstance_assets_curationContext_usingBlock___block_invoke;
  v22[3] = &unk_278881660;
  v22[4] = self;
  v23 = v11;
  v24 = v12;
  v25 = v13;
  v19 = v13;
  v20 = v12;
  v21 = v11;
  [v16 enumerateIdentifiersAsCollectionsWithBlock:v22];
}

void __109__PGAssetCollectionFeatureSpecification_enumerateFeatureNodesWithInstance_assets_curationContext_usingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v53 = a4;
  v65 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v56 = [MEMORY[0x277CBEB58] set];
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = *(*(a1 + 32) + 32);
  v58 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
  if (v58)
  {
    v55 = *v61;
    v57 = v5;
    do
    {
      v6 = 0;
      do
      {
        if (*v61 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v60 + 1) + 8 * v6);
        v8 = [*(a1 + 32) _assetUUIDsFromAssets:{*(a1 + 40), v53}];
        v9 = [v8 mutableCopy];

        v10 = *(a1 + 40);
        v11 = [v7 sceneAssetFilter];

        if (v11)
        {
          v12 = [v7 sceneAssetFilter];
          v13 = [v12 filteredAssetsFromAssets:v10];

          v14 = [*(a1 + 32) _assetUUIDsFromAssets:v13];
          [v9 intersectSet:v14];

          v10 = v13;
        }

        v15 = [v7 allowlistAssetFilter];

        if (v15)
        {
          v16 = [v7 allowlistAssetFilter];
          v17 = [v16 filteredAssetsFromAssets:v10];

          v18 = [*(a1 + 32) _assetUUIDsFromAssets:v17];
          [v9 intersectSet:v18];

          v10 = v17;
        }

        v19 = [v7 CLIPQueryAssetFilter];

        if (v19)
        {
          v20 = [v7 CLIPQueryAssetFilter];
          v21 = [v20 filteredAssetsFromAssets:v10];

          v22 = [*(a1 + 32) _assetUUIDsFromAssets:v21];
          [v9 intersectSet:v22];

          v10 = v21;
        }

        v23 = [v7 audioAssetFilter];

        if (v23)
        {
          v24 = [v7 audioAssetFilter];
          v25 = [v24 filteredAssetsFromAssets:v10];

          v26 = [*(a1 + 32) _assetUUIDsFromAssets:v25];
          [v9 intersectSet:v26];

          v10 = v25;
        }

        v27 = [v7 peopleAssetFilter];

        if (v27)
        {
          v28 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:v5];
          if ([v28 count])
          {
            v29 = [v28 localIdentifiers];
            v30 = [v29 anyObject];
          }

          else
          {
            v29 = [(PGGraphNodeCollection *)PGGraphPetNodeCollection subsetInCollection:v5];
            v31 = [v29 localIdentifiers];
            v30 = [v31 anyObject];
          }

          if (v30)
          {
            v32 = [v7 peopleAssetFilter];
            v33 = [v32 filteredAssetsFromAssets:v10 withPersonOrPetLocalIdentifier:v30];

            v34 = [*(a1 + 32) _assetUUIDsFromAssets:v33];
            v10 = v33;
            v5 = v57;
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[PGAssetCollectionFeatureSpecification] expected a nonnull person or pet person local identifier for peopleAssetFilter", buf, 2u);
            }

            v34 = [MEMORY[0x277CBEB98] set];
          }

          [v9 intersectSet:v34];
        }

        v35 = [v7 socialGroupAssetFilter];

        if (v35)
        {
          v36 = [(PGGraphNodeCollection *)PGGraphSocialGroupNodeCollection subsetInCollection:v5];
          v37 = [v36 personNodes];
          if ([v37 count] == 1)
          {
            v38 = [v37 graph];
            v39 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:v38];

            v40 = [v37 collectionByFormingUnionWith:v39];

            v37 = v40;
          }

          v41 = [v7 socialGroupAssetFilter];
          v42 = [v37 localIdentifiers];
          v43 = [v41 filteredAssetsFromAssets:v10 withPersonLocalIdentifiersInSocialGroup:v42];

          v44 = [*(a1 + 32) _assetUUIDsFromAssets:v43];
          [v9 intersectSet:v44];

          v10 = v43;
          v5 = v57;
        }

        v45 = [v7 customAssetFilter];

        if (v45)
        {
          v46 = [v7 customAssetFilter];
          v47 = [v46 filteredAssetsFromAssets:v10 curationContext:*(a1 + 48)];

          v48 = [*(a1 + 32) _assetUUIDsFromAssets:v47];
          [v9 intersectSet:v48];

          v10 = v47;
        }

        [v56 unionSet:v9];

        ++v6;
      }

      while (v58 != v6);
      v58 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
    }

    while (v58);
  }

  if ([v56 count])
  {
    v49 = *(a1 + 56);
    v50 = [v5 anyNode];
    v51 = [v56 allObjects];
    (*(v49 + 16))(v49, v50, v51, v53);
  }

  v52 = *MEMORY[0x277D85DE8];
}

- (CLSFeederPrefetchOptions)assetFeederPrefetchOptions
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D276B8]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = self->_featureDefinitions;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v9 sceneAssetFilter];

        if (v10)
        {
          [v3 setScenesPrefetchMode:2];
        }

        v11 = [v9 CLIPQueryAssetFilter];

        if (v11)
        {
          [v3 setScenesPrefetchMode:2];
        }

        v12 = [v9 peopleAssetFilter];
        if (v12)
        {
        }

        else
        {
          v13 = [v9 socialGroupAssetFilter];

          if (!v13)
          {
            continue;
          }
        }

        [v3 setPersonsPrefetchMode:2];
        [v3 setFaceInformationPrefetchMode:2];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v3;
}

- (PGAssetCollectionFeatureSpecification)initWithFeatureType:(unint64_t)a3 featureLabel:(id)a4 featureDefinitions:(id)a5 shouldRunAtMomentIngest:(BOOL)a6 shouldCreateFeatureNodeIfNeeded:(BOOL)a7
{
  v13 = a4;
  v14 = a5;
  v18.receiver = self;
  v18.super_class = PGAssetCollectionFeatureSpecification;
  v15 = [(PGAssetCollectionFeatureSpecification *)&v18 init];
  v16 = v15;
  if (v15)
  {
    v15->_featureType = a3;
    objc_storeStrong(&v15->_featureLabel, a4);
    objc_storeStrong(&v16->_featureDefinitions, a5);
    v16->_shouldRunAtMomentIngest = a6;
    v16->_shouldCreateFeatureNodeIfNeeded = a7;
  }

  return v16;
}

@end