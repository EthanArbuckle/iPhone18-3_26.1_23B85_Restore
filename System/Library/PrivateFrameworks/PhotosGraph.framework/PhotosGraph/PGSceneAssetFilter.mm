@interface PGSceneAssetFilter
- (BOOL)_allSceneNamesAreValid:(id)valid;
- (BOOL)_validateSceneNames:(id)names withSceneTaxonomy:(id)taxonomy;
- (BOOL)isEqual:(id)equal;
- (BOOL)label:(id)label isSemDevClassificationWithIdentifier:(unsigned int *)identifier;
- (BOOL)passesWithAsset:(id)asset;
- (NSSet)positiveSemDevSceneIdentifiers;
- (NSString)description;
- (PGSceneAssetFilter)initWithCoder:(id)coder;
- (PGSceneAssetFilter)initWithPositiveScenes:(id)scenes positiveSceneCustomSignalModelBlock:(id)block secondaryPositiveScenes:(id)positiveScenes positiveDominantScenes:(id)dominantScenes positiveDominantSceneCustomSignalModelBlock:(id)modelBlock positiveSemDevScenes:(id)devScenes negativeScenes:(id)negativeScenes sceneTaxonomy:(id)self0;
- (id)_consolidatedConfidenceThresholdBySceneIdentifiers:(id)identifiers customSignalModel:(id)model;
- (id)confidenceThresholdByNegativeSceneIdentifierWithCurationModel:(id)model;
- (id)confidenceThresholdByPositiveDominantSceneIdentifierWithCurationModel:(id)model;
- (id)confidenceThresholdByPositiveSceneIdentifierWithCurationModel:(id)model;
- (id)confidenceThresholdBySecondaryPositiveSceneIdentifierWithCurationModel:(id)model;
- (id)filteredAssetsFromAssets:(id)assets;
- (id)initForEntityNetWithSceneNames:(id)names positiveSceneCustomSignalModelBlock:(id)block secondaryPositiveScenes:(id)scenes positiveDominantScenes:(id)dominantScenes positiveDominantSceneCustomSignalModelBlock:(id)modelBlock positiveSemDevScenes:(id)devScenes negativeScenes:(id)negativeScenes sceneTaxonomy:(id)self0;
- (void)_buildIndexWithConfidenceThresholds:(id)thresholds sceneClassificationType:(char)type curationModel:(id)model;
- (void)_commonInitWithPositiveScenes:(id)scenes positiveSceneCustomSignalModelBlock:(id)block secondaryPositiveScenes:(id)positiveScenes positiveDominantScenes:(id)dominantScenes positiveDominantSceneCustomSignalModelBlock:(id)modelBlock positiveSemDevScenes:(id)devScenes negativeScenes:(id)negativeScenes sceneTaxonomy:(id)self0 useEntityNet:(BOOL)self1;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PGSceneAssetFilter

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      positiveScenes = [(PGSceneAssetFilter *)self positiveScenes];
      positiveScenes2 = [(PGSceneAssetFilter *)v5 positiveScenes];
      if ([positiveScenes isEqualToSet:positiveScenes2])
      {
        secondaryPositiveScenes = [(PGSceneAssetFilter *)self secondaryPositiveScenes];
        secondaryPositiveScenes2 = [(PGSceneAssetFilter *)v5 secondaryPositiveScenes];
        if ([secondaryPositiveScenes isEqualToSet:secondaryPositiveScenes2])
        {
          positiveDominantScenes = [(PGSceneAssetFilter *)self positiveDominantScenes];
          positiveDominantScenes2 = [(PGSceneAssetFilter *)v5 positiveDominantScenes];
          if ([positiveDominantScenes isEqualToSet:positiveDominantScenes2])
          {
            positiveSemDevScenes = [(PGSceneAssetFilter *)self positiveSemDevScenes];
            positiveSemDevScenes2 = [(PGSceneAssetFilter *)v5 positiveSemDevScenes];
            v20 = positiveSemDevScenes;
            v14 = positiveSemDevScenes;
            v15 = positiveSemDevScenes2;
            if ([v14 isEqualToSet:positiveSemDevScenes2])
            {
              negativeScenes = [(PGSceneAssetFilter *)self negativeScenes];
              negativeScenes2 = [(PGSceneAssetFilter *)v5 negativeScenes];
              v16 = [negativeScenes isEqualToSet:negativeScenes2];
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

- (void)encodeWithCoder:(id)coder
{
  positiveScenes = self->_positiveScenes;
  coderCopy = coder;
  [coderCopy encodeObject:positiveScenes forKey:@"positiveScenes"];
  [coderCopy encodeObject:self->_secondaryPositiveScenes forKey:@"secondaryPositiveScenes"];
  [coderCopy encodeObject:self->_positiveDominantScenes forKey:@"positiveDominantScenes"];
  [coderCopy encodeObject:self->_positiveSemDevScenes forKey:@"positiveSemDevScenes"];
  [coderCopy encodeObject:self->_negativeScenes forKey:@"negativeScenes"];
}

- (PGSceneAssetFilter)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"positiveScenes"];
  v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"secondaryPositiveScenes"];
  v7 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"positiveDominantScenes"];
  v8 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"positiveSemDevScenes"];
  v9 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"negativeScenes"];

  v10 = [(PGSceneAssetFilter *)self initWithPositiveScenes:v5 positiveSceneCustomSignalModelBlock:0 secondaryPositiveScenes:v6 positiveDominantScenes:v7 positiveDominantSceneCustomSignalModelBlock:0 positiveSemDevScenes:v8 negativeScenes:v9 sceneTaxonomy:0];
  return v10;
}

- (BOOL)passesWithAsset:(id)asset
{
  v103 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  clsSceneClassifications = [assetCopy clsSceneClassifications];
  if (![clsSceneClassifications count])
  {
    v16 = 0;
    goto LABEL_89;
  }

  v80 = assetCopy;
  v81 = clsSceneClassifications;
  curationModel = [assetCopy curationModel];
  v88 = [(PGSceneAssetFilter *)self confidenceThresholdByNegativeSceneIdentifierWithCurationModel:curationModel];
  v7 = [v88 count];
  v85 = [(PGSceneAssetFilter *)self confidenceThresholdByPositiveSceneIdentifierWithCurationModel:curationModel];
  v8 = [v85 count];
  LODWORD(positiveSemDevSceneIdentifiers) = v8 == 0;
  v84 = [(PGSceneAssetFilter *)self confidenceThresholdBySecondaryPositiveSceneIdentifierWithCurationModel:curationModel];
  v10 = [v84 count];
  v11 = v10 == 0;
  v89 = curationModel;
  v83 = [(PGSceneAssetFilter *)self confidenceThresholdByPositiveDominantSceneIdentifierWithCurationModel:curationModel];
  v12 = [v83 count];
  v13 = v12 == 0;
  v14 = [(NSSet *)self->_positiveSemDevScenes count];
  v15 = v14 == 0;
  if (!v7 && !v12 && !v8 && !v14 && !v10)
  {
    v16 = 1;
    assetCopy = v80;
    clsSceneClassifications = v81;
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
  sceneModel = [v89 sceneModel];
  entityNetModel = [v89 entityNetModel];
  identifier = [v18 identifier];
  v20 = identifier;
  if (!identifier)
  {
    v16 = 0;
    goto LABEL_87;
  }

  v74 = identifier;
  v75 = v18;
  v21 = [(NSMutableDictionary *)self->_indexedConfidenceThresholdOfScenesBySceneModelIdentifier objectForKeyedSubscript:identifier];
  pointerValue = [v21 pointerValue];

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
  selfCopy = self;
  do
  {
    for (i = 0; i != v92; ++i)
    {
      if (*v94 != v91)
      {
        objc_enumerationMutation(obj);
      }

      v23 = *(*(&v93 + 1) + 8 * i);
      extendedSceneIdentifier = [v23 extendedSceneIdentifier];
      [v23 confidence];
      v26 = v25;
      if (extendedSceneIdentifier > 0x7CF)
      {
        if (self->_useEntityNet)
        {
LABEL_27:
          if ([entityNetModel isResponsibleForSignalIdentifier:extendedSceneIdentifier])
          {
            goto LABEL_36;
          }

          goto LABEL_50;
        }

        if (([sceneModel isResponsibleForSignalIdentifier:extendedSceneIdentifier] & 1) == 0)
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
            v77 = positiveSemDevSceneIdentifiers;
            v51 = v23;
            v52 = v89;
            v97 = 0u;
            v98 = 0u;
            v99 = 0u;
            v100 = 0u;
            positiveSemDevSceneIdentifiers = [(PGSceneAssetFilter *)self positiveSemDevSceneIdentifiers];
            v53 = [positiveSemDevSceneIdentifiers countByEnumeratingWithState:&v97 objects:v102 count:16];
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
                    objc_enumerationMutation(positiveSemDevSceneIdentifiers);
                  }

                  if ([v52 isSemDevSceneDetectedForIdentifier:objc_msgSend(*(*(&v97 + 1) + 8 * j) withSceneClassification:{"unsignedIntegerValue"), v51}])
                  {
                    v15 = 1;
                    goto LABEL_62;
                  }
                }

                v54 = [positiveSemDevSceneIdentifiers countByEnumeratingWithState:&v97 objects:v102 count:16];
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
            LODWORD(positiveSemDevSceneIdentifiers) = v77;
          }

          goto LABEL_79;
        }

LABEL_36:
        if (v7)
        {
          v31 = v13;
          v32 = v15;
          v33 = v11;
          v34 = positiveSemDevSceneIdentifiers;
          v35 = MEMORY[0x277CCABB0];
          v36 = v88;
          v37 = [v35 numberWithUnsignedLongLong:extendedSceneIdentifier];
          positiveSemDevSceneIdentifiers = [v36 objectForKeyedSubscript:v37];

          if (positiveSemDevSceneIdentifiers)
          {
            [positiveSemDevSceneIdentifiers doubleValue];
            v39 = v38;

            v7 = v82;
            LOBYTE(positiveSemDevSceneIdentifiers) = v34;
            v11 = v33;
            v15 = v32;
            v13 = v31;
            self = selfCopy;
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
          self = selfCopy;
          if ((v57 & 1) == 0)
          {
LABEL_64:
            v58 = MEMORY[0x277CCABB0];
            v59 = v85;
            v60 = [v58 numberWithUnsignedLongLong:extendedSceneIdentifier];
            positiveSemDevSceneIdentifiers = [v59 objectForKeyedSubscript:v60];

            if (positiveSemDevSceneIdentifiers)
            {
              [positiveSemDevSceneIdentifiers doubleValue];
              v62 = v61 <= v26;
            }

            else
            {
              v62 = 0;
            }

            v7 = v82;
            LODWORD(positiveSemDevSceneIdentifiers) = v62;
            if (v11)
            {
              goto LABEL_74;
            }

LABEL_41:
            v40 = v13;
            v41 = v15;
            v42 = positiveSemDevSceneIdentifiers;
            v43 = MEMORY[0x277CCABB0];
            v44 = v84;
            v45 = [v43 numberWithUnsignedLongLong:extendedSceneIdentifier];
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

            LODWORD(positiveSemDevSceneIdentifiers) = v42;
            v11 = v48;
            v15 = v41;
            v63 = v40;
            self = selfCopy;
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
          if ((positiveSemDevSceneIdentifiers & 1) == 0)
          {
            goto LABEL_64;
          }
        }

        LODWORD(positiveSemDevSceneIdentifiers) = 1;
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
          v78 = positiveSemDevSceneIdentifiers;
          v68 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v65, "extendedSceneIdentifier")}];
          positiveSemDevSceneIdentifiers = [v64 objectForKeyedSubscript:v68];

          if (positiveSemDevSceneIdentifiers)
          {
            [v65 confidence];
            v70 = v69;
            [positiveSemDevSceneIdentifiers doubleValue];
            v13 = v70 >= v71;
          }

          else
          {
            v13 = 0;
          }

          LODWORD(positiveSemDevSceneIdentifiers) = v78;
        }

        goto LABEL_79;
      }

      v27 = self->_typeOfSceneClassification[extendedSceneIdentifier];
      v28 = *(pointerValue + 8 * extendedSceneIdentifier);
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
          LODWORD(positiveSemDevSceneIdentifiers) = 1;
        }
      }

      else if (v27 == 2 && v26 >= v28)
      {
        v11 = 1;
      }

LABEL_79:
      v16 = positiveSemDevSceneIdentifiers & v11 & v13 & v15;
      if (!v7 && positiveSemDevSceneIdentifiers & v11 & v13 & v15)
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

  assetCopy = v80;
  clsSceneClassifications = v81;
LABEL_88:

LABEL_89:
  v72 = *MEMORY[0x277D85DE8];
  return v16 & 1;
}

- (id)filteredAssetsFromAssets:(id)assets
{
  v19 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  array = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = assetsCopy;
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
          [array addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return array;
}

- (BOOL)_validateSceneNames:(id)names withSceneTaxonomy:(id)taxonomy
{
  v28 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  taxonomyCopy = taxonomy;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = namesCopy;
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
        lowercaseString = [v13 lowercaseString];
        if (self->_useEntityNet)
        {
          v15 = v13;
        }

        else
        {
          v15 = lowercaseString;
        }

        if (([taxonomyCopy nodeExistsForName:v15] & 1) == 0)
        {
          v17 = +[PGLogging sharedLogging];
          loggingConnection = [v17 loggingConnection];

          if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v26 = v13;
            _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGSceneAssetFilter] Invalid scene name %@", buf, 0xCu);
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
    allValues = [(NSMutableDictionary *)indexedConfidenceThresholdOfScenesBySceneModelIdentifier allValues];
    v6 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(allValues);
          }

          free([*(*(&v13 + 1) + 8 * v9++) pointerValue]);
        }

        while (v7 != v9);
        v7 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (BOOL)_allSceneNamesAreValid:(id)valid
{
  validCopy = valid;
  v5 = [(PGSceneAssetFilter *)self _validateSceneNames:self->_positiveScenes withSceneTaxonomy:validCopy]&& [(PGSceneAssetFilter *)self _validateSceneNames:self->_secondaryPositiveScenes withSceneTaxonomy:validCopy]&& [(PGSceneAssetFilter *)self _validateSceneNames:self->_positiveDominantScenes withSceneTaxonomy:validCopy]&& [(PGSceneAssetFilter *)self _validateSceneNames:self->_negativeScenes withSceneTaxonomy:validCopy];

  return v5;
}

- (void)_commonInitWithPositiveScenes:(id)scenes positiveSceneCustomSignalModelBlock:(id)block secondaryPositiveScenes:(id)positiveScenes positiveDominantScenes:(id)dominantScenes positiveDominantSceneCustomSignalModelBlock:(id)modelBlock positiveSemDevScenes:(id)devScenes negativeScenes:(id)negativeScenes sceneTaxonomy:(id)self0 useEntityNet:(BOOL)self1
{
  v18 = MEMORY[0x277CBEB98];
  negativeScenesCopy = negativeScenes;
  devScenesCopy = devScenes;
  modelBlockCopy = modelBlock;
  dominantScenesCopy = dominantScenes;
  positiveScenesCopy = positiveScenes;
  blockCopy = block;
  v24 = [v18 setWithArray:scenes];
  positiveScenes = self->_positiveScenes;
  self->_positiveScenes = v24;

  v26 = [MEMORY[0x277CBEB98] setWithArray:positiveScenesCopy];

  secondaryPositiveScenes = self->_secondaryPositiveScenes;
  self->_secondaryPositiveScenes = v26;

  v28 = [MEMORY[0x277CBEB98] setWithArray:dominantScenesCopy];

  positiveDominantScenes = self->_positiveDominantScenes;
  self->_positiveDominantScenes = v28;

  v30 = [MEMORY[0x277CBEB98] setWithArray:devScenesCopy];

  positiveSemDevScenes = self->_positiveSemDevScenes;
  self->_positiveSemDevScenes = v30;

  v32 = [MEMORY[0x277CBEB98] setWithArray:negativeScenesCopy];

  negativeScenes = self->_negativeScenes;
  self->_negativeScenes = v32;

  v34 = _Block_copy(blockCopy);
  positiveSceneCustomSignalModelBlock = self->_positiveSceneCustomSignalModelBlock;
  self->_positiveSceneCustomSignalModelBlock = v34;

  v36 = _Block_copy(modelBlockCopy);
  positiveDominantSceneCustomSignalModelBlock = self->_positiveDominantSceneCustomSignalModelBlock;
  self->_positiveDominantSceneCustomSignalModelBlock = v36;

  v38 = objc_alloc(MEMORY[0x277D3C7B0]);
  allObjects = [(NSSet *)self->_positiveScenes allObjects];
  if (net)
  {
    v40 = [v38 initForEntityNetWithSceneNames:allObjects thresholdType:1];
    positiveScenesHelper = self->_positiveScenesHelper;
    self->_positiveScenesHelper = v40;

    v42 = objc_alloc(MEMORY[0x277D3C7B0]);
    allObjects2 = [(NSSet *)self->_secondaryPositiveScenes allObjects];
    v44 = [v42 initForEntityNetWithSceneNames:allObjects2 thresholdType:1];
    secondaryPositiveScenesHelper = self->_secondaryPositiveScenesHelper;
    self->_secondaryPositiveScenesHelper = v44;

    v46 = objc_alloc(MEMORY[0x277D3C7B0]);
    allObjects3 = [(NSSet *)self->_negativeScenes allObjects];
    v48 = [v46 initForEntityNetWithSceneNames:allObjects3 thresholdType:5];
    negativeScenesHelper = self->_negativeScenesHelper;
    self->_negativeScenesHelper = v48;

    v50 = objc_alloc(MEMORY[0x277D3C7B0]);
    allObjects4 = [(NSSet *)self->_positiveDominantScenes allObjects];
    v52 = [v50 initForEntityNetWithSceneNames:allObjects4 thresholdType:1];
  }

  else
  {
    v53 = [v38 initWithSceneNames:allObjects thresholdType:1];
    v54 = self->_positiveScenesHelper;
    self->_positiveScenesHelper = v53;

    v55 = objc_alloc(MEMORY[0x277D3C7B0]);
    allObjects5 = [(NSSet *)self->_secondaryPositiveScenes allObjects];
    v57 = [v55 initWithSceneNames:allObjects5 thresholdType:1];
    v58 = self->_secondaryPositiveScenesHelper;
    self->_secondaryPositiveScenesHelper = v57;

    v59 = objc_alloc(MEMORY[0x277D3C7B0]);
    allObjects6 = [(NSSet *)self->_negativeScenes allObjects];
    v61 = [v59 initWithSceneNames:allObjects6 thresholdType:5];
    v62 = self->_negativeScenesHelper;
    self->_negativeScenesHelper = v61;

    v63 = objc_alloc(MEMORY[0x277D3C7B0]);
    allObjects4 = [(NSSet *)self->_positiveDominantScenes allObjects];
    v52 = [v63 initWithSceneNames:allObjects4 thresholdType:1];
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

- (id)initForEntityNetWithSceneNames:(id)names positiveSceneCustomSignalModelBlock:(id)block secondaryPositiveScenes:(id)scenes positiveDominantScenes:(id)dominantScenes positiveDominantSceneCustomSignalModelBlock:(id)modelBlock positiveSemDevScenes:(id)devScenes negativeScenes:(id)negativeScenes sceneTaxonomy:(id)self0
{
  namesCopy = names;
  blockCopy = block;
  scenesCopy = scenes;
  dominantScenesCopy = dominantScenes;
  modelBlockCopy = modelBlock;
  devScenesCopy = devScenes;
  negativeScenesCopy = negativeScenes;
  taxonomyCopy = taxonomy;
  v28.receiver = self;
  v28.super_class = PGSceneAssetFilter;
  v24 = [(PGSceneAssetFilter *)&v28 init];
  v25 = v24;
  if (v24)
  {
    v24->_useEntityNet = 1;
    LOBYTE(v27) = 1;
    [(PGSceneAssetFilter *)v24 _commonInitWithPositiveScenes:namesCopy positiveSceneCustomSignalModelBlock:blockCopy secondaryPositiveScenes:scenesCopy positiveDominantScenes:dominantScenesCopy positiveDominantSceneCustomSignalModelBlock:modelBlockCopy positiveSemDevScenes:devScenesCopy negativeScenes:negativeScenesCopy sceneTaxonomy:taxonomyCopy useEntityNet:v27];
    if (![(PGSceneAssetFilter *)v25 _allSceneNamesAreValid:taxonomyCopy])
    {

      v25 = 0;
    }
  }

  return v25;
}

- (PGSceneAssetFilter)initWithPositiveScenes:(id)scenes positiveSceneCustomSignalModelBlock:(id)block secondaryPositiveScenes:(id)positiveScenes positiveDominantScenes:(id)dominantScenes positiveDominantSceneCustomSignalModelBlock:(id)modelBlock positiveSemDevScenes:(id)devScenes negativeScenes:(id)negativeScenes sceneTaxonomy:(id)self0
{
  scenesCopy = scenes;
  blockCopy = block;
  positiveScenesCopy = positiveScenes;
  dominantScenesCopy = dominantScenes;
  modelBlockCopy = modelBlock;
  devScenesCopy = devScenes;
  negativeScenesCopy = negativeScenes;
  taxonomyCopy = taxonomy;
  v28.receiver = self;
  v28.super_class = PGSceneAssetFilter;
  v24 = [(PGSceneAssetFilter *)&v28 init];
  v25 = v24;
  if (v24)
  {
    v24->_useEntityNet = 0;
    LOBYTE(v27) = 0;
    [(PGSceneAssetFilter *)v24 _commonInitWithPositiveScenes:scenesCopy positiveSceneCustomSignalModelBlock:blockCopy secondaryPositiveScenes:positiveScenesCopy positiveDominantScenes:dominantScenesCopy positiveDominantSceneCustomSignalModelBlock:modelBlockCopy positiveSemDevScenes:devScenesCopy negativeScenes:negativeScenesCopy sceneTaxonomy:taxonomyCopy useEntityNet:v27];
    if (![(PGSceneAssetFilter *)v25 _allSceneNamesAreValid:taxonomyCopy])
    {

      v25 = 0;
    }
  }

  return v25;
}

- (BOOL)label:(id)label isSemDevClassificationWithIdentifier:(unsigned int *)identifier
{
  v5 = 2147482622;
  labelCopy = label;
  if (([labelCopy isEqualToString:@"FoodDrink"] & 1) == 0)
  {
    if (![labelCopy isEqualToString:@"LandscapeCityscape"])
    {
      v7 = 0;
      goto LABEL_6;
    }

    v5 = 2147482623;
  }

  *identifier = v5;
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
            loggingConnection = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v18];
            [(NSSet *)v4 addObject:loggingConnection];
          }

          else
          {
            v13 = +[PGLogging sharedLogging];
            loggingConnection = [v13 loggingConnection];

            if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
            {
              *buf = v17;
              v24 = v11;
              _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGSceneAssetFilter] Invalid sem dev name %@", buf, 0xCu);
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

- (id)confidenceThresholdByPositiveDominantSceneIdentifierWithCurationModel:(id)model
{
  modelCopy = model;
  v5 = modelCopy;
  if (self->_useEntityNet)
  {
    [modelCopy entityNetModel];
  }

  else
  {
    [modelCopy sceneModel];
  }
  v6 = ;
  identifier = [v6 identifier];

  if (identifier)
  {
    v8 = [(NSMutableDictionary *)self->_confidenceThresholdByPositiveDominantSceneIdentifierBySceneModelIdentifier objectForKeyedSubscript:identifier];
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

      [(NSMutableDictionary *)self->_confidenceThresholdByPositiveDominantSceneIdentifierBySceneModelIdentifier setObject:v8 forKeyedSubscript:identifier];
      [(PGSceneAssetFilter *)self _buildIndexWithConfidenceThresholds:v8 sceneClassificationType:4 curationModel:v5];
    }
  }

  else
  {
    v8 = MEMORY[0x277CBEC10];
  }

  return v8;
}

- (id)confidenceThresholdByNegativeSceneIdentifierWithCurationModel:(id)model
{
  modelCopy = model;
  v5 = modelCopy;
  if (self->_useEntityNet)
  {
    [modelCopy entityNetModel];
  }

  else
  {
    [modelCopy sceneModel];
  }
  v6 = ;
  identifier = [v6 identifier];

  if (identifier)
  {
    v8 = [(NSMutableDictionary *)self->_confidenceThresholdByNegativeSceneIdentifierBySceneModelIdentifier objectForKeyedSubscript:identifier];
    if (!v8)
    {
      v8 = [(CLSSceneConfidenceThresholdHelper *)self->_negativeScenesHelper confidenceThresholdBySceneIdentifierWithCurationModel:v5];
      [(NSMutableDictionary *)self->_confidenceThresholdByNegativeSceneIdentifierBySceneModelIdentifier setObject:v8 forKeyedSubscript:identifier];
      [(PGSceneAssetFilter *)self _buildIndexWithConfidenceThresholds:v8 sceneClassificationType:3 curationModel:v5];
    }
  }

  else
  {
    v8 = MEMORY[0x277CBEC10];
  }

  return v8;
}

- (id)confidenceThresholdBySecondaryPositiveSceneIdentifierWithCurationModel:(id)model
{
  modelCopy = model;
  v5 = modelCopy;
  if (self->_useEntityNet)
  {
    [modelCopy entityNetModel];
  }

  else
  {
    [modelCopy sceneModel];
  }
  v6 = ;
  identifier = [v6 identifier];

  if (identifier)
  {
    v8 = [(NSMutableDictionary *)self->_confidenceThresholdBySecondaryPositiveSceneIdentifierBySceneModelIdentifier objectForKeyedSubscript:identifier];
    if (!v8)
    {
      v8 = [(CLSSceneConfidenceThresholdHelper *)self->_secondaryPositiveScenesHelper confidenceThresholdBySceneIdentifierWithCurationModel:v5];
      [(NSMutableDictionary *)self->_confidenceThresholdBySecondaryPositiveSceneIdentifierBySceneModelIdentifier setObject:v8 forKeyedSubscript:identifier];
      [(PGSceneAssetFilter *)self _buildIndexWithConfidenceThresholds:v8 sceneClassificationType:2 curationModel:v5];
    }
  }

  else
  {
    v8 = MEMORY[0x277CBEC10];
  }

  return v8;
}

- (id)confidenceThresholdByPositiveSceneIdentifierWithCurationModel:(id)model
{
  modelCopy = model;
  v5 = modelCopy;
  if (self->_useEntityNet)
  {
    [modelCopy entityNetModel];
  }

  else
  {
    [modelCopy sceneModel];
  }
  v6 = ;
  identifier = [v6 identifier];

  if (identifier)
  {
    v8 = [(NSMutableDictionary *)self->_confidenceThresholdByPositiveSceneIdentifierBySceneModelIdentifier objectForKeyedSubscript:identifier];
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

      [(NSMutableDictionary *)self->_confidenceThresholdByPositiveSceneIdentifierBySceneModelIdentifier setObject:v8 forKeyedSubscript:identifier];
      [(PGSceneAssetFilter *)self _buildIndexWithConfidenceThresholds:v8 sceneClassificationType:1 curationModel:v5];
    }
  }

  else
  {
    v8 = MEMORY[0x277CBEC10];
  }

  return v8;
}

- (void)_buildIndexWithConfidenceThresholds:(id)thresholds sceneClassificationType:(char)type curationModel:(id)model
{
  thresholdsCopy = thresholds;
  modelCopy = model;
  if (!self->_typeOfSceneClassification)
  {
    self->_typeOfSceneClassification = malloc_type_calloc(0x7D0uLL, 1uLL, 0x100004077774924uLL);
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    indexedConfidenceThresholdOfScenesBySceneModelIdentifier = self->_indexedConfidenceThresholdOfScenesBySceneModelIdentifier;
    self->_indexedConfidenceThresholdOfScenesBySceneModelIdentifier = v10;
  }

  if (self->_useEntityNet)
  {
    [modelCopy entityNetModel];
  }

  else
  {
    [modelCopy sceneModel];
  }
  v12 = ;
  identifier = [v12 identifier];

  if (identifier)
  {
    v14 = [(NSMutableDictionary *)self->_indexedConfidenceThresholdOfScenesBySceneModelIdentifier objectForKeyedSubscript:identifier];
    pointerValue = [v14 pointerValue];

    if (!pointerValue)
    {
      pointerValue = malloc_type_calloc(0x7D0uLL, 8uLL, 0x100004000313F17uLL);
      v16 = [MEMORY[0x277CCAE60] valueWithPointer:pointerValue];
      [(NSMutableDictionary *)self->_indexedConfidenceThresholdOfScenesBySceneModelIdentifier setObject:v16 forKeyedSubscript:identifier];
    }

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __96__PGSceneAssetFilter__buildIndexWithConfidenceThresholds_sceneClassificationType_curationModel___block_invoke;
    v17[3] = &unk_278887E10;
    typeCopy = type;
    v17[4] = self;
    v17[5] = pointerValue;
    [thresholdsCopy enumerateKeysAndObjectsUsingBlock:v17];
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

- (id)_consolidatedConfidenceThresholdBySceneIdentifiers:(id)identifiers customSignalModel:(id)model
{
  v26 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  modelCopy = model;
  v7 = [identifiersCopy mutableCopy];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v20 = identifiersCopy;
  allKeys = [identifiersCopy allKeys];
  v9 = [allKeys countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [modelCopy nodeForSignalIdentifier:{objc_msgSend(v13, "unsignedIntegerValue")}];
        v15 = v14;
        if (v14)
        {
          v16 = MEMORY[0x277CCABB0];
          [v14 operatingPoint];
          v17 = [v16 numberWithDouble:?];
          [v7 setObject:v17 forKeyedSubscript:v13];
        }
      }

      v10 = [allKeys countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v7;
}

@end