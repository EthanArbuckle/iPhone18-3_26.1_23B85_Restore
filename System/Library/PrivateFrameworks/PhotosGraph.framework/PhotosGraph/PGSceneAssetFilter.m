@interface PGSceneAssetFilter
- (BOOL)_allSceneNamesAreValid:(id)a3;
- (BOOL)_validateSceneNames:(id)a3 withSceneTaxonomy:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)label:(id)a3 isSemDevClassificationWithIdentifier:(unsigned int *)a4;
- (BOOL)passesWithAsset:(id)a3;
- (NSSet)positiveSemDevSceneIdentifiers;
- (NSString)description;
- (PGSceneAssetFilter)initWithCoder:(id)a3;
- (PGSceneAssetFilter)initWithPositiveScenes:(id)a3 positiveSceneCustomSignalModelBlock:(id)a4 secondaryPositiveScenes:(id)a5 positiveDominantScenes:(id)a6 positiveDominantSceneCustomSignalModelBlock:(id)a7 positiveSemDevScenes:(id)a8 negativeScenes:(id)a9 sceneTaxonomy:(id)a10;
- (id)_consolidatedConfidenceThresholdBySceneIdentifiers:(id)a3 customSignalModel:(id)a4;
- (id)confidenceThresholdByNegativeSceneIdentifierWithCurationModel:(id)a3;
- (id)confidenceThresholdByPositiveDominantSceneIdentifierWithCurationModel:(id)a3;
- (id)confidenceThresholdByPositiveSceneIdentifierWithCurationModel:(id)a3;
- (id)confidenceThresholdBySecondaryPositiveSceneIdentifierWithCurationModel:(id)a3;
- (id)filteredAssetsFromAssets:(id)a3;
- (id)initForEntityNetWithSceneNames:(id)a3 positiveSceneCustomSignalModelBlock:(id)a4 secondaryPositiveScenes:(id)a5 positiveDominantScenes:(id)a6 positiveDominantSceneCustomSignalModelBlock:(id)a7 positiveSemDevScenes:(id)a8 negativeScenes:(id)a9 sceneTaxonomy:(id)a10;
- (void)_buildIndexWithConfidenceThresholds:(id)a3 sceneClassificationType:(char)a4 curationModel:(id)a5;
- (void)_commonInitWithPositiveScenes:(id)a3 positiveSceneCustomSignalModelBlock:(id)a4 secondaryPositiveScenes:(id)a5 positiveDominantScenes:(id)a6 positiveDominantSceneCustomSignalModelBlock:(id)a7 positiveSemDevScenes:(id)a8 negativeScenes:(id)a9 sceneTaxonomy:(id)a10 useEntityNet:(BOOL)a11;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PGSceneAssetFilter

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PGSceneAssetFilter *)self positiveScenes];
      v7 = [(PGSceneAssetFilter *)v5 positiveScenes];
      if ([v6 isEqualToSet:v7])
      {
        v8 = [(PGSceneAssetFilter *)self secondaryPositiveScenes];
        v9 = [(PGSceneAssetFilter *)v5 secondaryPositiveScenes];
        if ([v8 isEqualToSet:v9])
        {
          v10 = [(PGSceneAssetFilter *)self positiveDominantScenes];
          v11 = [(PGSceneAssetFilter *)v5 positiveDominantScenes];
          if ([v10 isEqualToSet:v11])
          {
            v12 = [(PGSceneAssetFilter *)self positiveSemDevScenes];
            v13 = [(PGSceneAssetFilter *)v5 positiveSemDevScenes];
            v20 = v12;
            v14 = v12;
            v15 = v13;
            if ([v14 isEqualToSet:v13])
            {
              v19 = [(PGSceneAssetFilter *)self negativeScenes];
              v18 = [(PGSceneAssetFilter *)v5 negativeScenes];
              v16 = [v19 isEqualToSet:v18];
            }

            else
            {
              v16 = 0;
            }
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCAB68];
  v7.receiver = self;
  v7.super_class = PGSceneAssetFilter;
  v4 = [(PGSceneAssetFilter *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@", v4];

  [v5 appendFormat:@" %@: %@", @"positiveScenes", self->_positiveScenes];
  [v5 appendFormat:@" %@: %@", @"secondaryPositiveScenes", self->_secondaryPositiveScenes];
  [v5 appendFormat:@" %@: %@", @"positiveDominantScenes", self->_positiveDominantScenes];
  [v5 appendFormat:@" %@: %@", @"positiveSemDevScenes", self->_positiveSemDevScenes];
  [v5 appendFormat:@" %@: %@", @"negativeScenes", self->_negativeScenes];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  positiveScenes = self->_positiveScenes;
  v5 = a3;
  [v5 encodeObject:positiveScenes forKey:@"positiveScenes"];
  [v5 encodeObject:self->_secondaryPositiveScenes forKey:@"secondaryPositiveScenes"];
  [v5 encodeObject:self->_positiveDominantScenes forKey:@"positiveDominantScenes"];
  [v5 encodeObject:self->_positiveSemDevScenes forKey:@"positiveSemDevScenes"];
  [v5 encodeObject:self->_negativeScenes forKey:@"negativeScenes"];
}

- (PGSceneAssetFilter)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"positiveScenes"];
  v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"secondaryPositiveScenes"];
  v7 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"positiveDominantScenes"];
  v8 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"positiveSemDevScenes"];
  v9 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"negativeScenes"];

  v10 = [(PGSceneAssetFilter *)self initWithPositiveScenes:v5 positiveSceneCustomSignalModelBlock:0 secondaryPositiveScenes:v6 positiveDominantScenes:v7 positiveDominantSceneCustomSignalModelBlock:0 positiveSemDevScenes:v8 negativeScenes:v9 sceneTaxonomy:0];
  return v10;
}

- (BOOL)passesWithAsset:(id)a3
{
  v103 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 clsSceneClassifications];
  if (![v5 count])
  {
    v16 = 0;
    goto LABEL_89;
  }

  v80 = v4;
  v81 = v5;
  v6 = [v4 curationModel];
  v88 = [(PGSceneAssetFilter *)self confidenceThresholdByNegativeSceneIdentifierWithCurationModel:v6];
  v7 = [v88 count];
  v85 = [(PGSceneAssetFilter *)self confidenceThresholdByPositiveSceneIdentifierWithCurationModel:v6];
  v8 = [v85 count];
  LODWORD(v9) = v8 == 0;
  v84 = [(PGSceneAssetFilter *)self confidenceThresholdBySecondaryPositiveSceneIdentifierWithCurationModel:v6];
  v10 = [v84 count];
  v11 = v10 == 0;
  v89 = v6;
  v83 = [(PGSceneAssetFilter *)self confidenceThresholdByPositiveDominantSceneIdentifierWithCurationModel:v6];
  v12 = [v83 count];
  v13 = v12 == 0;
  v14 = [(NSSet *)self->_positiveSemDevScenes count];
  v15 = v14 == 0;
  if (!v7 && !v12 && !v8 && !v14 && !v10)
  {
    v16 = 1;
    v4 = v80;
    v5 = v81;
    v17 = v89;
    goto LABEL_88;
  }

  v17 = v89;
  if (self->_useEntityNet)
  {
    [v89 entityNetModel];
  }

  else
  {
    [v89 sceneModel];
  }
  v18 = ;
  v79 = [v89 sceneModel];
  v86 = [v89 entityNetModel];
  v19 = [v18 identifier];
  v20 = v19;
  if (!v19)
  {
    v16 = 0;
    goto LABEL_87;
  }

  v74 = v19;
  v75 = v18;
  v21 = [(NSMutableDictionary *)self->_indexedConfidenceThresholdOfScenesBySceneModelIdentifier objectForKeyedSubscript:v19];
  v87 = [v21 pointerValue];

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  obj = v81;
  v92 = [obj countByEnumeratingWithState:&v93 objects:v101 count:16];
  if (!v92)
  {
LABEL_85:
    v16 = 0;
    goto LABEL_86;
  }

  v91 = *v94;
  v82 = v7;
  v76 = self;
  do
  {
    for (i = 0; i != v92; ++i)
    {
      if (*v94 != v91)
      {
        objc_enumerationMutation(obj);
      }

      v23 = *(*(&v93 + 1) + 8 * i);
      v24 = [v23 extendedSceneIdentifier];
      [v23 confidence];
      v26 = v25;
      if (v24 > 0x7CF)
      {
        if (self->_useEntityNet)
        {
LABEL_27:
          if ([v86 isResponsibleForSignalIdentifier:v24])
          {
            goto LABEL_36;
          }

          goto LABEL_50;
        }

        if (([v79 isResponsibleForSignalIdentifier:v24] & 1) == 0)
        {
          if (self->_useEntityNet)
          {
            goto LABEL_27;
          }

LABEL_50:
          if (v15)
          {
            v15 = 1;
          }

          else
          {
            v77 = v9;
            v51 = v23;
            v52 = v89;
            v97 = 0u;
            v98 = 0u;
            v99 = 0u;
            v100 = 0u;
            v9 = [(PGSceneAssetFilter *)self positiveSemDevSceneIdentifiers];
            v53 = [v9 countByEnumeratingWithState:&v97 objects:v102 count:16];
            if (v53)
            {
              v54 = v53;
              v55 = *v98;
              while (2)
              {
                for (j = 0; j != v54; ++j)
                {
                  if (*v98 != v55)
                  {
                    objc_enumerationMutation(v9);
                  }

                  if ([v52 isSemDevSceneDetectedForIdentifier:objc_msgSend(*(*(&v97 + 1) + 8 * j) withSceneClassification:{"unsignedIntegerValue"), v51}])
                  {
                    v15 = 1;
                    goto LABEL_62;
                  }
                }

                v54 = [v9 countByEnumeratingWithState:&v97 objects:v102 count:16];
                if (v54)
                {
                  continue;
                }

                break;
              }
            }

            v15 = 0;
LABEL_62:

            v7 = v82;
            LODWORD(v9) = v77;
          }

          goto LABEL_79;
        }

LABEL_36:
        if (v7)
        {
          v31 = v13;
          v32 = v15;
          v33 = v11;
          v34 = v9;
          v35 = MEMORY[0x277CCABB0];
          v36 = v88;
          v37 = [v35 numberWithUnsignedLongLong:v24];
          v9 = [v36 objectForKeyedSubscript:v37];

          if (v9)
          {
            [v9 doubleValue];
            v39 = v38;

            v7 = v82;
            LOBYTE(v9) = v34;
            v11 = v33;
            v15 = v32;
            v13 = v31;
            self = v76;
            if (v39 <= v26)
            {
              goto LABEL_85;
            }

            goto LABEL_39;
          }

          v7 = v82;
          v57 = v34;
          v11 = v33;
          v15 = v32;
          v13 = v31;
          self = v76;
          if ((v57 & 1) == 0)
          {
LABEL_64:
            v58 = MEMORY[0x277CCABB0];
            v59 = v85;
            v60 = [v58 numberWithUnsignedLongLong:v24];
            v9 = [v59 objectForKeyedSubscript:v60];

            if (v9)
            {
              [v9 doubleValue];
              v62 = v61 <= v26;
            }

            else
            {
              v62 = 0;
            }

            v7 = v82;
            LODWORD(v9) = v62;
            if (v11)
            {
              goto LABEL_74;
            }

LABEL_41:
            v40 = v13;
            v41 = v15;
            v42 = v9;
            v43 = MEMORY[0x277CCABB0];
            v44 = v84;
            v45 = [v43 numberWithUnsignedLongLong:v24];
            v46 = [v44 objectForKeyedSubscript:v45];

            if (v46)
            {
              [v46 doubleValue];
              v48 = v47 <= v26;
            }

            else
            {
              v48 = 0;
            }

            LODWORD(v9) = v42;
            v11 = v48;
            v15 = v41;
            v63 = v40;
            self = v76;
            if (v63)
            {
LABEL_75:
              v13 = 1;
              goto LABEL_79;
            }

            goto LABEL_68;
          }
        }

        else
        {
LABEL_39:
          if ((v9 & 1) == 0)
          {
            goto LABEL_64;
          }
        }

        LODWORD(v9) = 1;
        if (!v11)
        {
          goto LABEL_41;
        }

LABEL_74:
        v11 = 1;
        if (v13)
        {
          goto LABEL_75;
        }

LABEL_68:
        v64 = v83;
        v65 = v23;
        [v65 boundingBox];
        v13 = 0;
        if (v67 > 0.0 && v66 > 0.0)
        {
          v78 = v9;
          v68 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v65, "extendedSceneIdentifier")}];
          v9 = [v64 objectForKeyedSubscript:v68];

          if (v9)
          {
            [v65 confidence];
            v70 = v69;
            [v9 doubleValue];
            v13 = v70 >= v71;
          }

          else
          {
            v13 = 0;
          }

          LODWORD(v9) = v78;
        }

        goto LABEL_79;
      }

      v27 = self->_typeOfSceneClassification[v24];
      v28 = *(v87 + 8 * v24);
      if (v27 > 2)
      {
        if (v27 == 4)
        {
          if (!v13 && v26 >= v28)
          {
            [v23 boundingBox];
            v13 = v50 > 0.0 && v49 > 0.0;
          }
        }

        else if (v27 == 3 && v26 >= v28)
        {
          goto LABEL_85;
        }
      }

      else if (v27 == 1)
      {
        if (v26 >= v28)
        {
          LODWORD(v9) = 1;
        }
      }

      else if (v27 == 2 && v26 >= v28)
      {
        v11 = 1;
      }

LABEL_79:
      v16 = v9 & v11 & v13 & v15;
      if (!v7 && v9 & v11 & v13 & v15)
      {
        goto LABEL_86;
      }
    }

    v92 = [obj countByEnumeratingWithState:&v93 objects:v101 count:{16, v28}];
  }

  while (v92);
LABEL_86:

  v17 = v89;
  v20 = v74;
  v18 = v75;
LABEL_87:

  v4 = v80;
  v5 = v81;
LABEL_88:

LABEL_89:
  v72 = *MEMORY[0x277D85DE8];
  return v16 & 1;
}

- (id)filteredAssetsFromAssets:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([(PGSceneAssetFilter *)self passesWithAsset:v11, v14])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)_validateSceneNames:(id)a3 withSceneTaxonomy:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [v13 lowercaseString];
        if (self->_useEntityNet)
        {
          v15 = v13;
        }

        else
        {
          v15 = v14;
        }

        if (([v7 nodeExistsForName:v15] & 1) == 0)
        {
          v17 = +[PGLogging sharedLogging];
          v18 = [v17 loggingConnection];

          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v26 = v13;
            _os_log_error_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_ERROR, "[PGSceneAssetFilter] Invalid scene name %@", buf, 0xCu);
          }

          v16 = 0;
          goto LABEL_16;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v27 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v16 = 1;
LABEL_16:

  v19 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)dealloc
{
  v18 = *MEMORY[0x277D85DE8];
  typeOfSceneClassification = self->_typeOfSceneClassification;
  if (typeOfSceneClassification)
  {
    free(typeOfSceneClassification);
    self->_typeOfSceneClassification = 0;
  }

  indexedConfidenceThresholdOfScenesBySceneModelIdentifier = self->_indexedConfidenceThresholdOfScenesBySceneModelIdentifier;
  if (indexedConfidenceThresholdOfScenesBySceneModelIdentifier)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [(NSMutableDictionary *)indexedConfidenceThresholdOfScenesBySceneModelIdentifier allValues];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          free([*(*(&v13 + 1) + 8 * v9++) pointerValue]);
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    v10 = self->_indexedConfidenceThresholdOfScenesBySceneModelIdentifier;
    self->_indexedConfidenceThresholdOfScenesBySceneModelIdentifier = 0;
  }

  v12.receiver = self;
  v12.super_class = PGSceneAssetFilter;
  [(PGSceneAssetFilter *)&v12 dealloc];
  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)_allSceneNamesAreValid:(id)a3
{
  v4 = a3;
  v5 = [(PGSceneAssetFilter *)self _validateSceneNames:self->_positiveScenes withSceneTaxonomy:v4]&& [(PGSceneAssetFilter *)self _validateSceneNames:self->_secondaryPositiveScenes withSceneTaxonomy:v4]&& [(PGSceneAssetFilter *)self _validateSceneNames:self->_positiveDominantScenes withSceneTaxonomy:v4]&& [(PGSceneAssetFilter *)self _validateSceneNames:self->_negativeScenes withSceneTaxonomy:v4];

  return v5;
}

- (void)_commonInitWithPositiveScenes:(id)a3 positiveSceneCustomSignalModelBlock:(id)a4 secondaryPositiveScenes:(id)a5 positiveDominantScenes:(id)a6 positiveDominantSceneCustomSignalModelBlock:(id)a7 positiveSemDevScenes:(id)a8 negativeScenes:(id)a9 sceneTaxonomy:(id)a10 useEntityNet:(BOOL)a11
{
  v18 = MEMORY[0x277CBEB98];
  v73 = a9;
  v19 = a8;
  v20 = a7;
  v21 = a6;
  v22 = a5;
  v23 = a4;
  v24 = [v18 setWithArray:a3];
  positiveScenes = self->_positiveScenes;
  self->_positiveScenes = v24;

  v26 = [MEMORY[0x277CBEB98] setWithArray:v22];

  secondaryPositiveScenes = self->_secondaryPositiveScenes;
  self->_secondaryPositiveScenes = v26;

  v28 = [MEMORY[0x277CBEB98] setWithArray:v21];

  positiveDominantScenes = self->_positiveDominantScenes;
  self->_positiveDominantScenes = v28;

  v30 = [MEMORY[0x277CBEB98] setWithArray:v19];

  positiveSemDevScenes = self->_positiveSemDevScenes;
  self->_positiveSemDevScenes = v30;

  v32 = [MEMORY[0x277CBEB98] setWithArray:v73];

  negativeScenes = self->_negativeScenes;
  self->_negativeScenes = v32;

  v34 = _Block_copy(v23);
  positiveSceneCustomSignalModelBlock = self->_positiveSceneCustomSignalModelBlock;
  self->_positiveSceneCustomSignalModelBlock = v34;

  v36 = _Block_copy(v20);
  positiveDominantSceneCustomSignalModelBlock = self->_positiveDominantSceneCustomSignalModelBlock;
  self->_positiveDominantSceneCustomSignalModelBlock = v36;

  v38 = objc_alloc(MEMORY[0x277D3C7B0]);
  v39 = [(NSSet *)self->_positiveScenes allObjects];
  if (a11)
  {
    v40 = [v38 initForEntityNetWithSceneNames:v39 thresholdType:1];
    positiveScenesHelper = self->_positiveScenesHelper;
    self->_positiveScenesHelper = v40;

    v42 = objc_alloc(MEMORY[0x277D3C7B0]);
    v43 = [(NSSet *)self->_secondaryPositiveScenes allObjects];
    v44 = [v42 initForEntityNetWithSceneNames:v43 thresholdType:1];
    secondaryPositiveScenesHelper = self->_secondaryPositiveScenesHelper;
    self->_secondaryPositiveScenesHelper = v44;

    v46 = objc_alloc(MEMORY[0x277D3C7B0]);
    v47 = [(NSSet *)self->_negativeScenes allObjects];
    v48 = [v46 initForEntityNetWithSceneNames:v47 thresholdType:5];
    negativeScenesHelper = self->_negativeScenesHelper;
    self->_negativeScenesHelper = v48;

    v50 = objc_alloc(MEMORY[0x277D3C7B0]);
    v51 = [(NSSet *)self->_positiveDominantScenes allObjects];
    v52 = [v50 initForEntityNetWithSceneNames:v51 thresholdType:1];
  }

  else
  {
    v53 = [v38 initWithSceneNames:v39 thresholdType:1];
    v54 = self->_positiveScenesHelper;
    self->_positiveScenesHelper = v53;

    v55 = objc_alloc(MEMORY[0x277D3C7B0]);
    v56 = [(NSSet *)self->_secondaryPositiveScenes allObjects];
    v57 = [v55 initWithSceneNames:v56 thresholdType:1];
    v58 = self->_secondaryPositiveScenesHelper;
    self->_secondaryPositiveScenesHelper = v57;

    v59 = objc_alloc(MEMORY[0x277D3C7B0]);
    v60 = [(NSSet *)self->_negativeScenes allObjects];
    v61 = [v59 initWithSceneNames:v60 thresholdType:5];
    v62 = self->_negativeScenesHelper;
    self->_negativeScenesHelper = v61;

    v63 = objc_alloc(MEMORY[0x277D3C7B0]);
    v51 = [(NSSet *)self->_positiveDominantScenes allObjects];
    v52 = [v63 initWithSceneNames:v51 thresholdType:1];
  }

  positiveDominantScenesHelper = self->_positiveDominantScenesHelper;
  self->_positiveDominantScenesHelper = v52;

  v65 = objc_alloc_init(MEMORY[0x277CBEB38]);
  confidenceThresholdByPositiveSceneIdentifierBySceneModelIdentifier = self->_confidenceThresholdByPositiveSceneIdentifierBySceneModelIdentifier;
  self->_confidenceThresholdByPositiveSceneIdentifierBySceneModelIdentifier = v65;

  v67 = objc_alloc_init(MEMORY[0x277CBEB38]);
  confidenceThresholdBySecondaryPositiveSceneIdentifierBySceneModelIdentifier = self->_confidenceThresholdBySecondaryPositiveSceneIdentifierBySceneModelIdentifier;
  self->_confidenceThresholdBySecondaryPositiveSceneIdentifierBySceneModelIdentifier = v67;

  v69 = objc_alloc_init(MEMORY[0x277CBEB38]);
  confidenceThresholdByNegativeSceneIdentifierBySceneModelIdentifier = self->_confidenceThresholdByNegativeSceneIdentifierBySceneModelIdentifier;
  self->_confidenceThresholdByNegativeSceneIdentifierBySceneModelIdentifier = v69;

  v71 = objc_alloc_init(MEMORY[0x277CBEB38]);
  confidenceThresholdByPositiveDominantSceneIdentifierBySceneModelIdentifier = self->_confidenceThresholdByPositiveDominantSceneIdentifierBySceneModelIdentifier;
  self->_confidenceThresholdByPositiveDominantSceneIdentifierBySceneModelIdentifier = v71;
}

- (id)initForEntityNetWithSceneNames:(id)a3 positiveSceneCustomSignalModelBlock:(id)a4 secondaryPositiveScenes:(id)a5 positiveDominantScenes:(id)a6 positiveDominantSceneCustomSignalModelBlock:(id)a7 positiveSemDevScenes:(id)a8 negativeScenes:(id)a9 sceneTaxonomy:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v28.receiver = self;
  v28.super_class = PGSceneAssetFilter;
  v24 = [(PGSceneAssetFilter *)&v28 init];
  v25 = v24;
  if (v24)
  {
    v24->_useEntityNet = 1;
    LOBYTE(v27) = 1;
    [(PGSceneAssetFilter *)v24 _commonInitWithPositiveScenes:v16 positiveSceneCustomSignalModelBlock:v17 secondaryPositiveScenes:v18 positiveDominantScenes:v19 positiveDominantSceneCustomSignalModelBlock:v20 positiveSemDevScenes:v21 negativeScenes:v22 sceneTaxonomy:v23 useEntityNet:v27];
    if (![(PGSceneAssetFilter *)v25 _allSceneNamesAreValid:v23])
    {

      v25 = 0;
    }
  }

  return v25;
}

- (PGSceneAssetFilter)initWithPositiveScenes:(id)a3 positiveSceneCustomSignalModelBlock:(id)a4 secondaryPositiveScenes:(id)a5 positiveDominantScenes:(id)a6 positiveDominantSceneCustomSignalModelBlock:(id)a7 positiveSemDevScenes:(id)a8 negativeScenes:(id)a9 sceneTaxonomy:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v28.receiver = self;
  v28.super_class = PGSceneAssetFilter;
  v24 = [(PGSceneAssetFilter *)&v28 init];
  v25 = v24;
  if (v24)
  {
    v24->_useEntityNet = 0;
    LOBYTE(v27) = 0;
    [(PGSceneAssetFilter *)v24 _commonInitWithPositiveScenes:v16 positiveSceneCustomSignalModelBlock:v17 secondaryPositiveScenes:v18 positiveDominantScenes:v19 positiveDominantSceneCustomSignalModelBlock:v20 positiveSemDevScenes:v21 negativeScenes:v22 sceneTaxonomy:v23 useEntityNet:v27];
    if (![(PGSceneAssetFilter *)v25 _allSceneNamesAreValid:v23])
    {

      v25 = 0;
    }
  }

  return v25;
}

- (BOOL)label:(id)a3 isSemDevClassificationWithIdentifier:(unsigned int *)a4
{
  v5 = 2147482622;
  v6 = a3;
  if (([v6 isEqualToString:@"FoodDrink"] & 1) == 0)
  {
    if (![v6 isEqualToString:@"LandscapeCityscape"])
    {
      v7 = 0;
      goto LABEL_6;
    }

    v5 = 2147482623;
  }

  *a4 = v5;
  v7 = 1;
LABEL_6:

  return v7;
}

- (NSSet)positiveSemDevSceneIdentifiers
{
  v26 = *MEMORY[0x277D85DE8];
  positiveSemDevSceneIdentifiers = self->_positiveSemDevSceneIdentifiers;
  if (!positiveSemDevSceneIdentifiers)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = self->_positiveSemDevScenes;
    v6 = [(NSSet *)v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = *v20;
      *&v7 = 138412290;
      v17 = v7;
      do
      {
        v10 = 0;
        do
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v19 + 1) + 8 * v10);
          v18 = 0;
          if ([(PGSceneAssetFilter *)self label:v11 isSemDevClassificationWithIdentifier:&v18, v17])
          {
            v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v18];
            [(NSSet *)v4 addObject:v12];
          }

          else
          {
            v13 = +[PGLogging sharedLogging];
            v12 = [v13 loggingConnection];

            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              *buf = v17;
              v24 = v11;
              _os_log_error_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_ERROR, "[PGSceneAssetFilter] Invalid sem dev name %@", buf, 0xCu);
            }
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [(NSSet *)v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v8);
    }

    v14 = self->_positiveSemDevSceneIdentifiers;
    self->_positiveSemDevSceneIdentifiers = v4;

    positiveSemDevSceneIdentifiers = self->_positiveSemDevSceneIdentifiers;
  }

  v15 = *MEMORY[0x277D85DE8];

  return positiveSemDevSceneIdentifiers;
}

- (id)confidenceThresholdByPositiveDominantSceneIdentifierWithCurationModel:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_useEntityNet)
  {
    [v4 entityNetModel];
  }

  else
  {
    [v4 sceneModel];
  }
  v6 = ;
  v7 = [v6 identifier];

  if (v7)
  {
    v8 = [(NSMutableDictionary *)self->_confidenceThresholdByPositiveDominantSceneIdentifierBySceneModelIdentifier objectForKeyedSubscript:v7];
    if (!v8)
    {
      v8 = [(CLSSceneConfidenceThresholdHelper *)self->_positiveDominantScenesHelper confidenceThresholdBySceneIdentifierWithCurationModel:v5];
      positiveDominantSceneCustomSignalModelBlock = self->_positiveDominantSceneCustomSignalModelBlock;
      if (positiveDominantSceneCustomSignalModelBlock)
      {
        v10 = positiveDominantSceneCustomSignalModelBlock[2](positiveDominantSceneCustomSignalModelBlock, v5);
        if (v10)
        {
          v11 = v10;
          v12 = [(PGSceneAssetFilter *)self _consolidatedConfidenceThresholdBySceneIdentifiers:v8 customSignalModel:v10];

          v8 = v12;
        }
      }

      [(NSMutableDictionary *)self->_confidenceThresholdByPositiveDominantSceneIdentifierBySceneModelIdentifier setObject:v8 forKeyedSubscript:v7];
      [(PGSceneAssetFilter *)self _buildIndexWithConfidenceThresholds:v8 sceneClassificationType:4 curationModel:v5];
    }
  }

  else
  {
    v8 = MEMORY[0x277CBEC10];
  }

  return v8;
}

- (id)confidenceThresholdByNegativeSceneIdentifierWithCurationModel:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_useEntityNet)
  {
    [v4 entityNetModel];
  }

  else
  {
    [v4 sceneModel];
  }
  v6 = ;
  v7 = [v6 identifier];

  if (v7)
  {
    v8 = [(NSMutableDictionary *)self->_confidenceThresholdByNegativeSceneIdentifierBySceneModelIdentifier objectForKeyedSubscript:v7];
    if (!v8)
    {
      v8 = [(CLSSceneConfidenceThresholdHelper *)self->_negativeScenesHelper confidenceThresholdBySceneIdentifierWithCurationModel:v5];
      [(NSMutableDictionary *)self->_confidenceThresholdByNegativeSceneIdentifierBySceneModelIdentifier setObject:v8 forKeyedSubscript:v7];
      [(PGSceneAssetFilter *)self _buildIndexWithConfidenceThresholds:v8 sceneClassificationType:3 curationModel:v5];
    }
  }

  else
  {
    v8 = MEMORY[0x277CBEC10];
  }

  return v8;
}

- (id)confidenceThresholdBySecondaryPositiveSceneIdentifierWithCurationModel:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_useEntityNet)
  {
    [v4 entityNetModel];
  }

  else
  {
    [v4 sceneModel];
  }
  v6 = ;
  v7 = [v6 identifier];

  if (v7)
  {
    v8 = [(NSMutableDictionary *)self->_confidenceThresholdBySecondaryPositiveSceneIdentifierBySceneModelIdentifier objectForKeyedSubscript:v7];
    if (!v8)
    {
      v8 = [(CLSSceneConfidenceThresholdHelper *)self->_secondaryPositiveScenesHelper confidenceThresholdBySceneIdentifierWithCurationModel:v5];
      [(NSMutableDictionary *)self->_confidenceThresholdBySecondaryPositiveSceneIdentifierBySceneModelIdentifier setObject:v8 forKeyedSubscript:v7];
      [(PGSceneAssetFilter *)self _buildIndexWithConfidenceThresholds:v8 sceneClassificationType:2 curationModel:v5];
    }
  }

  else
  {
    v8 = MEMORY[0x277CBEC10];
  }

  return v8;
}

- (id)confidenceThresholdByPositiveSceneIdentifierWithCurationModel:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_useEntityNet)
  {
    [v4 entityNetModel];
  }

  else
  {
    [v4 sceneModel];
  }
  v6 = ;
  v7 = [v6 identifier];

  if (v7)
  {
    v8 = [(NSMutableDictionary *)self->_confidenceThresholdByPositiveSceneIdentifierBySceneModelIdentifier objectForKeyedSubscript:v7];
    if (!v8)
    {
      v8 = [(CLSSceneConfidenceThresholdHelper *)self->_positiveScenesHelper confidenceThresholdBySceneIdentifierWithCurationModel:v5];
      positiveSceneCustomSignalModelBlock = self->_positiveSceneCustomSignalModelBlock;
      if (positiveSceneCustomSignalModelBlock)
      {
        v10 = positiveSceneCustomSignalModelBlock[2](positiveSceneCustomSignalModelBlock, v5);
        if (v10)
        {
          v11 = v10;
          v12 = [(PGSceneAssetFilter *)self _consolidatedConfidenceThresholdBySceneIdentifiers:v8 customSignalModel:v10];

          v8 = v12;
        }
      }

      [(NSMutableDictionary *)self->_confidenceThresholdByPositiveSceneIdentifierBySceneModelIdentifier setObject:v8 forKeyedSubscript:v7];
      [(PGSceneAssetFilter *)self _buildIndexWithConfidenceThresholds:v8 sceneClassificationType:1 curationModel:v5];
    }
  }

  else
  {
    v8 = MEMORY[0x277CBEC10];
  }

  return v8;
}

- (void)_buildIndexWithConfidenceThresholds:(id)a3 sceneClassificationType:(char)a4 curationModel:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (!self->_typeOfSceneClassification)
  {
    self->_typeOfSceneClassification = malloc_type_calloc(0x7D0uLL, 1uLL, 0x100004077774924uLL);
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    indexedConfidenceThresholdOfScenesBySceneModelIdentifier = self->_indexedConfidenceThresholdOfScenesBySceneModelIdentifier;
    self->_indexedConfidenceThresholdOfScenesBySceneModelIdentifier = v10;
  }

  if (self->_useEntityNet)
  {
    [v9 entityNetModel];
  }

  else
  {
    [v9 sceneModel];
  }
  v12 = ;
  v13 = [v12 identifier];

  if (v13)
  {
    v14 = [(NSMutableDictionary *)self->_indexedConfidenceThresholdOfScenesBySceneModelIdentifier objectForKeyedSubscript:v13];
    v15 = [v14 pointerValue];

    if (!v15)
    {
      v15 = malloc_type_calloc(0x7D0uLL, 8uLL, 0x100004000313F17uLL);
      v16 = [MEMORY[0x277CCAE60] valueWithPointer:v15];
      [(NSMutableDictionary *)self->_indexedConfidenceThresholdOfScenesBySceneModelIdentifier setObject:v16 forKeyedSubscript:v13];
    }

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __96__PGSceneAssetFilter__buildIndexWithConfidenceThresholds_sceneClassificationType_curationModel___block_invoke;
    v17[3] = &unk_278887E10;
    v18 = a4;
    v17[4] = self;
    v17[5] = v15;
    [v8 enumerateKeysAndObjectsUsingBlock:v17];
  }
}

void __96__PGSceneAssetFilter__buildIndexWithConfidenceThresholds_sceneClassificationType_curationModel___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = [a2 integerValue];
  v6 = v5;
  if (v5 <= 0x7CFuLL)
  {
    *(*(*(a1 + 32) + 72) + v5) = *(a1 + 48);
    [v8 doubleValue];
    *(*(a1 + 40) + 8 * v6) = v7;
  }
}

- (id)_consolidatedConfidenceThresholdBySceneIdentifiers:(id)a3 customSignalModel:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 mutableCopy];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v20 = v5;
  v8 = [v5 allKeys];
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [v6 nodeForSignalIdentifier:{objc_msgSend(v13, "unsignedIntegerValue")}];
        v15 = v14;
        if (v14)
        {
          v16 = MEMORY[0x277CCABB0];
          [v14 operatingPoint];
          v17 = [v16 numberWithDouble:?];
          [v7 setObject:v17 forKeyedSubscript:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v7;
}

@end