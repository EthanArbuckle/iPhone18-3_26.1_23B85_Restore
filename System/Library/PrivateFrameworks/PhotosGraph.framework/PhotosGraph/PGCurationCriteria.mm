@interface PGCurationCriteria
- (BOOL)_passesForItem:(id)item score:(double *)score graph:(id)graph reasonString:(id *)string;
- (BOOL)isPassingForAsset:(id)asset score:(double *)score;
- (PGCurationCriteria)initWithMinimumAssetsRatio:(double)ratio client:(unint64_t)client;
- (double)_scoreForSceneClassifications:(id)classifications withSDFoodTrait:(id)trait curationModel:(id)model traitFailed:(BOOL *)failed;
- (double)_scoreForSceneClassifications:(id)classifications withScenesTrait:(id)trait curationModel:(id)model traitFailed:(BOOL *)failed;
- (id)niceDescriptionWithGraph:(id)graph;
- (id)passingAssetsInAssets:(id)assets;
- (id)peopleTraitStringWithGraph:(id)graph;
@end

@implementation PGCurationCriteria

- (id)peopleTraitStringWithGraph:(id)graph
{
  v68 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v5 = objc_alloc(MEMORY[0x277CBEB18]);
  items = [(PGCurationSetTrait *)self->_peopleTrait items];
  allObjects = [items allObjects];
  v8 = [v5 initWithArray:allObjects];

  negativeItems = [(PGCurationSetTrait *)self->_peopleTrait negativeItems];
  allObjects2 = [negativeItems allObjects];
  [v8 addObjectsFromArray:allObjects2];

  v49 = v8;
  v50 = graphCopy;
  v11 = [graphCopy personNodesForPersonLocalIdentifiers:v8];
  v12 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v11, "count")}];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v60 objects:v67 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v61;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v61 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v60 + 1) + 8 * i);
        localIdentifier = [v18 localIdentifier];
        [v12 setObject:v18 forKeyedSubscript:localIdentifier];
      }

      v15 = [v13 countByEnumeratingWithState:&v60 objects:v67 count:16];
    }

    while (v15);
  }

  v48 = v13;

  v20 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:1];
  v66 = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v66 count:1];

  v22 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  selfCopy = self;
  items2 = [(PGCurationSetTrait *)self->_peopleTrait items];
  v51 = v21;
  v24 = [items2 sortedArrayUsingDescriptors:v21];

  v25 = [v24 countByEnumeratingWithState:&v56 objects:v65 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v57;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v57 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v56 + 1) + 8 * j);
        v30 = [v12 objectForKeyedSubscript:v29];
        name = [v30 name];
        v32 = name;
        if (name)
        {
          v33 = name;
        }

        else
        {
          v33 = v29;
        }

        [v22 appendFormat:@"+ %@", v33];
      }

      v26 = [v24 countByEnumeratingWithState:&v56 objects:v65 count:16];
    }

    while (v26);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  negativeItems2 = [(PGCurationSetTrait *)selfCopy->_peopleTrait negativeItems];
  v35 = [negativeItems2 sortedArrayUsingDescriptors:v51];

  v36 = [v35 countByEnumeratingWithState:&v52 objects:v64 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v53;
    do
    {
      for (k = 0; k != v37; ++k)
      {
        if (*v53 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v52 + 1) + 8 * k);
        v41 = [v12 objectForKeyedSubscript:v40];
        name2 = [v41 name];
        v43 = name2;
        if (name2)
        {
          v44 = name2;
        }

        else
        {
          v44 = v40;
        }

        [v22 appendFormat:@"- %@", v44];
      }

      v37 = [v35 countByEnumeratingWithState:&v52 objects:v64 count:16];
    }

    while (v37);
  }

  v45 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)niceDescriptionWithGraph:(id)graph
{
  graphCopy = graph;
  string = [MEMORY[0x277CCAB68] string];
  v6 = string;
  if (self->_minimumAssetsRatio > 0.0)
  {
    [string appendFormat:@"minimumAssetsRatio = %f\n", *&self->_minimumAssetsRatio];
  }

  if ([(PGCurationSceneTrait *)self->_compulsoryScenesTrait isActive])
  {
    niceDescription = [(PGCurationTrait *)self->_compulsoryScenesTrait niceDescription];
    [v6 appendFormat:@"compulsoryScenes = %@\n", niceDescription];
  }

  if ([(PGCurationSceneTrait *)self->_scenesTrait isActive])
  {
    niceDescription2 = [(PGCurationTrait *)self->_scenesTrait niceDescription];
    [v6 appendFormat:@"scenes = %@\n", niceDescription2];
  }

  if ([(PGCurationPartOfDayTrait *)self->_partOfDayTrait isActive])
  {
    niceDescription3 = [(PGCurationPartOfDayTrait *)self->_partOfDayTrait niceDescription];
    [v6 appendFormat:@"partOfDay = %@\n", niceDescription3];
  }

  faceFilter = self->_faceFilter;
  if (faceFilter)
  {
    if (faceFilter == 1)
    {
      v11 = @"Faces";
    }

    else
    {
      v11 = @"No Faces";
    }

    [v6 appendFormat:@"faceRequirement = %@\n", v11];
  }

  if ([(PGCurationSetTrait *)self->_peopleTrait isActive])
  {
    v12 = [(PGCurationCriteria *)self peopleTraitStringWithGraph:graphCopy];
    [v6 appendFormat:@"people = %@\n", v12];
  }

  if ([(PGCurationSetTrait *)self->_socialGroupTrait isActive])
  {
    niceDescription4 = [(PGCurationTrait *)self->_socialGroupTrait niceDescription];
    [v6 appendFormat:@"socialGroup = %@\n", niceDescription4];
  }

  if ([(PGCurationContentOrAestheticScoreTrait *)self->_contentOrAestheticScoreTrait isActive])
  {
    [(PGCurationTrait *)self->_contentOrAestheticScoreTrait minimumScore];
    v15 = v14;
    [(PGCurationContentOrAestheticScoreTrait *)self->_contentOrAestheticScoreTrait minimumAestheticScore];
    [v6 appendFormat:@"content score >= %.3f or aesthetic score >= %.3f\n", v15, v16];
  }

  if (self->_filterUtilityAssets)
  {
    [v6 appendFormat:@"filterUtilityAssets = YES\n"];
  }

  return v6;
}

- (double)_scoreForSceneClassifications:(id)classifications withSDFoodTrait:(id)trait curationModel:(id)model traitFailed:(BOOL *)failed
{
  v27 = *MEMORY[0x277D85DE8];
  classificationsCopy = classifications;
  modelCopy = model;
  *failed = 1;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = classificationsCopy;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  v12 = 0.0;
  if (v11)
  {
    v13 = v11;
    v14 = *v23;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        if ([v16 extendedSceneIdentifier] == 2147482622)
        {
          sdModel = [modelCopy sdModel];
          foodDrinkNode = [sdModel foodDrinkNode];
          [v16 confidence];
          v19 = [foodDrinkNode passesWithConfidence:?];

          if (v19)
          {
            *failed = 0;
            v12 = 1.0;
          }

          goto LABEL_12;
        }
      }

      v13 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v20 = *MEMORY[0x277D85DE8];
  return v12;
}

- (double)_scoreForSceneClassifications:(id)classifications withScenesTrait:(id)trait curationModel:(id)model traitFailed:(BOOL *)failed
{
  v52 = *MEMORY[0x277D85DE8];
  classificationsCopy = classifications;
  traitCopy = trait;
  modelCopy = model;
  sceneNames = [traitCopy sceneNames];
  v13 = [sceneNames count];
  if (v13)
  {
    v14 = v13;
    v42 = sceneNames;
    v43 = modelCopy;
    failedCopy = failed;
    v45 = traitCopy;
    v15 = [traitCopy confidenceThresholdBySceneIdentifierWithCurationModel:modelCopy];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v46 = classificationsCopy;
    v16 = classificationsCopy;
    v17 = [v16 countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = 0;
      v20 = *v48;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v48 != v20)
          {
            objc_enumerationMutation(v16);
          }

          v22 = *(*(&v47 + 1) + 8 * i);
          extendedSceneIdentifier = [v22 extendedSceneIdentifier];
          v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:extendedSceneIdentifier];
          v25 = [v15 objectForKeyedSubscript:v24];

          if (v25)
          {
            [v22 confidence];
            v27 = v26;
            [v25 doubleValue];
            if (v27 >= v28)
            {
              ++v19;
            }
          }

          if (v19 == v14)
          {
            v19 = v14;
            goto LABEL_17;
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v47 objects:v51 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v19 = 0;
    }

LABEL_17:

    traitCopy = v45;
    targetNumberOfMatches = [v45 targetNumberOfMatches];
    if (targetNumberOfMatches)
    {
      v31 = targetNumberOfMatches;
    }

    else
    {
      v31 = v14;
    }

    v32 = v31;
    [v45 minimumScore];
    v34 = v33;
    isMatchingRequired = [v45 isMatchingRequired];
    v36 = v19 / v32;
    if (isMatchingRequired)
    {
      v37 = v34;
    }

    else
    {
      v37 = 1.0;
    }

    v38 = fmin(v36 / v37, 1.0);
    v39 = isMatchingRequired & (v36 < v34);
    if (v39)
    {
      v29 = 0.0;
    }

    else
    {
      v29 = v38;
    }

    if (failedCopy)
    {
      *failedCopy &= v39;
    }

    classificationsCopy = v46;
    sceneNames = v42;
    modelCopy = v43;
  }

  else
  {
    v29 = 0.0;
  }

  v40 = *MEMORY[0x277D85DE8];
  return v29;
}

- (BOOL)_passesForItem:(id)item score:(double *)score graph:(id)graph reasonString:(id *)string
{
  itemCopy = item;
  graphCopy = graph;
  v79 = 0;
  if (string)
  {
    v12 = objc_alloc_init(MEMORY[0x277CCAB68]);
  }

  else
  {
    v12 = 0;
  }

  if (self->_filterUtilityAssets)
  {
    [itemCopy clsContentScore];
    v14 = v13 < *MEMORY[0x277D3C768];
    v79 = v14;
    if (v14)
    {
      [v12 appendString:@"FAILED: item is utility\n"];
      clsSceneClassifications = 0;
      v16 = 0.0;
      goto LABEL_64;
    }
  }

  if ([(PGCurationSceneTrait *)self->_compulsoryScenesTrait isActive])
  {
    clsSceneClassifications = [itemCopy clsSceneClassifications];
    compulsoryScenesTrait = self->_compulsoryScenesTrait;
    curationModel = [itemCopy curationModel];
    [(PGCurationCriteria *)self _scoreForSceneClassifications:clsSceneClassifications withScenesTrait:compulsoryScenesTrait curationModel:curationModel traitFailed:&v79];

    v19 = v79;
    if (v79)
    {
      niceDescription = [(PGCurationTrait *)self->_compulsoryScenesTrait niceDescription];
      [v12 appendFormat:@"FAILED: missing compulsory scenes %@", niceDescription];

      v19 = v79;
    }

    v16 = 0.0;
    if (!v19 && [(PGCurationSceneTrait *)self->_scenesTrait isActive])
    {
      if (clsSceneClassifications)
      {
LABEL_17:
        scenesTrait = self->_scenesTrait;
        curationModel2 = [itemCopy curationModel];
        [(PGCurationCriteria *)self _scoreForSceneClassifications:clsSceneClassifications withScenesTrait:scenesTrait curationModel:curationModel2 traitFailed:&v79];
        v24 = v23;

        v25 = v79;
        niceDescription2 = [(PGCurationTrait *)self->_scenesTrait niceDescription];
        v27 = niceDescription2;
        if (v25)
        {
          [v12 appendFormat:@"FAILED: missing scenes %@", niceDescription2, v71];
        }

        else
        {
          [v12 appendFormat:@" - scored %f on scenes %@\n", *&v24, niceDescription2];
        }

        v16 = v24 + 0.0;

        v28 = 1;
        goto LABEL_23;
      }

LABEL_16:
      clsSceneClassifications = [itemCopy clsSceneClassifications];
      goto LABEL_17;
    }

    v28 = 0;
  }

  else
  {
    if ([(PGCurationSceneTrait *)self->_scenesTrait isActive])
    {
      goto LABEL_16;
    }

    clsSceneClassifications = 0;
    v28 = 0;
    v16 = 0.0;
  }

LABEL_23:
  if (v79)
  {
    goto LABEL_59;
  }

  if ([(PGCurationPartOfDayTrait *)self->_partOfDayTrait isActive])
  {
    v29 = [MEMORY[0x277D27758] partOfDayForItem:itemCopy];
    if (v29)
    {
      v76 = graphCopy;
      value = [(PGCurationPartOfDayTrait *)self->_partOfDayTrait value];
      v31 = [PGGraphPartOfDayNode partOfDayForPartOfDayName:v29];
      if (v31 != 1)
      {
        v32 = v31;
        v74 = v31 & value;
        isMatchingRequired = [(PGCurationTrait *)self->_partOfDayTrait isMatchingRequired];
        if (v32 == v74)
        {
          v34 = 1.0;
        }

        else
        {
          v34 = 0.0;
        }

        v35 = v32 != v74 && isMatchingRequired;
        v79 = v35;
        ++v28;
        v36 = [PGGraphPartOfDayNode stringValueForPartOfDay:value];
        v37 = v36;
        if (v35)
        {
          [v12 appendFormat:@"FAILED: not matching part of day (%@ != %@)", v29, v36, v72];
        }

        else
        {
          [v12 appendFormat:@" - scored %f on part of day (%@, expected %@)\n", *&v34, v29, v36];
        }

        graphCopy = v76;
        v16 = v16 + v34;
      }
    }
  }

  if (v79)
  {
    goto LABEL_59;
  }

  if ([(PGCurationSetTrait *)self->_peopleTrait isActive])
  {
    v77 = graphCopy;
    clsPersonAndPetLocalIdentifiers = [itemCopy clsPersonAndPetLocalIdentifiers];
    items = [(PGCurationSetTrait *)self->_peopleTrait items];
    v75 = clsPersonAndPetLocalIdentifiers;
    v40 = [MEMORY[0x277CBEB58] setWithArray:clsPersonAndPetLocalIdentifiers];
    [v40 intersectSet:items];
    if (v12)
    {
      v73 = [(PGCurationCriteria *)self peopleTraitStringWithGraph:v77];
    }

    else
    {
      v73 = 0;
    }

    if ([v40 isEqualToSet:items])
    {
      v41 = [MEMORY[0x277CBEB58] setWithArray:v75];
      [v41 minusSet:v40];
      v42 = [v41 count];
      if (v42 > 10.0)
      {
        v42 = 10.0;
      }

      v43 = v42 / 10.0;
      v44 = 1.0 - v43;
      ++v28;
      if (v79)
      {
        [v12 appendFormat:@"FAILED: too many people around %@", v73, v71];
      }

      else
      {
        [v12 appendFormat:@" - scored %f on people %@\n", 1.0 - v43, v73];
      }

      v16 = v16 + v44;

      v45 = v73;
    }

    else
    {
      v79 = 1;
      v45 = v73;
      [v12 appendFormat:@"FAILED: not matching people %@", v73];
    }

    graphCopy = v77;
  }

  if (v79)
  {
    goto LABEL_59;
  }

  if ([(PGCurationSetTrait *)self->_socialGroupTrait isActive])
  {
    v46 = MEMORY[0x277CBEB58];
    clsPersonAndPetLocalIdentifiers2 = [itemCopy clsPersonAndPetLocalIdentifiers];
    v48 = [v46 setWithArray:clsPersonAndPetLocalIdentifiers2];

    items2 = [(PGCurationSetTrait *)self->_socialGroupTrait items];
    [v48 intersectSet:items2];
    v50 = [v48 count];
    if (v50)
    {
      ++v28;
      v16 = v16 + v50 / [items2 count];
    }

    else
    {
      v79 = 1;
      [(PGCurationTrait *)self->_socialGroupTrait niceDescription];
      v51 = v78 = graphCopy;
      [v12 appendFormat:@"FAILED: not matching any people from social group %@", v51];

      graphCopy = v78;
    }
  }

  if (v79)
  {
    goto LABEL_59;
  }

  if (![(PGCurationContentOrAestheticScoreTrait *)self->_contentOrAestheticScoreTrait isActive])
  {
LABEL_73:
    if (v79)
    {
      goto LABEL_59;
    }

    goto LABEL_74;
  }

  [itemCopy clsContentScore];
  v56 = v55;
  [(PGCurationTrait *)self->_contentOrAestheticScoreTrait minimumScore];
  v79 = v56 < v57;
  if (v56 < v57)
  {
    v58 = v57;
    [itemCopy clsAestheticScore];
    v60 = v59;
    [(PGCurationContentOrAestheticScoreTrait *)self->_contentOrAestheticScoreTrait minimumAestheticScore];
    v79 = v60 < v61;
    if (v60 < v61)
    {
      [v12 appendFormat:@"FAILED: content score %.3f is lower than %.3f and aesthetic score %.3f is lower than %.3f", *&v56, *&v58, *&v60, *&v61];
      goto LABEL_73;
    }
  }

LABEL_74:
  if ([(PGCurationCropScoreTrait *)self->_cropScoreTrait isActive])
  {
    [itemCopy clsSquareCropScore];
    v63 = v62;
    [(PGCurationCropScoreTrait *)self->_cropScoreTrait minimumSquareCropScore];
    v79 = v63 < v64;
    if (v63 >= v64)
    {
      goto LABEL_78;
    }

    [v12 appendFormat:@"FAILED: crop score %.3f is lower than %.3f", *&v63, *&v64];
  }

  if (!v79)
  {
LABEL_78:
    if ([(PGCurationSDFoodTrait *)self->_sdFoodTrait isActive])
    {
      if (!clsSceneClassifications)
      {
        clsSceneClassifications = [itemCopy clsSceneClassifications];
      }

      sdFoodTrait = self->_sdFoodTrait;
      curationModel3 = [itemCopy curationModel];
      [(PGCurationCriteria *)self _scoreForSceneClassifications:clsSceneClassifications withSDFoodTrait:sdFoodTrait curationModel:curationModel3 traitFailed:&v79];
      v68 = v67;

      ++v28;
      LODWORD(sdFoodTrait) = v79;
      niceDescription3 = [(PGCurationTrait *)self->_sdFoodTrait niceDescription];
      v70 = niceDescription3;
      if (sdFoodTrait == 1)
      {
        [v12 appendFormat:@"FAILED: missing SD food classification %@", niceDescription3, v71];
      }

      else
      {
        [v12 appendFormat:@" - scored %f on SD food %@\n", *&v68, niceDescription3];
      }

      v16 = v16 + v68;
    }
  }

LABEL_59:
  if (!v79 && v28)
  {
    v16 = v16 / v28;
    v79 = v16 <= 0.0;
    if (v16 > 0.0)
    {
      [v12 appendFormat:@"Scored %f for the whole criteria\n", *&v16];
    }

    else
    {
      [v12 appendFormat:@"FAILED: total score %f too low", *&v16];
    }
  }

LABEL_64:
  if (score)
  {
    *score = v16;
  }

  if (string)
  {
    v52 = v12;
    *string = v12;
  }

  v53 = !v79;

  return v53;
}

- (id)passingAssetsInAssets:(id)assets
{
  v19 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
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
        if ([(PGCurationCriteria *)self passesForItem:v11 score:0, v14])
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

- (BOOL)isPassingForAsset:(id)asset score:(double *)score
{
  assetCopy = asset;
  v7 = assetCopy;
  v8 = 0;
  v31 = 0;
  if (self->_filterUtilityAssets)
  {
    [assetCopy clsContentScore];
    v8 = v9 < *MEMORY[0x277D3C768];
    v31 = v9 < *MEMORY[0x277D3C768];
  }

  if ([(PGCurationSceneTrait *)self->_compulsoryScenesTrait isActive])
  {
    clsSceneClassifications = [v7 clsSceneClassifications];
    compulsoryScenesTrait = self->_compulsoryScenesTrait;
    curationModel = [v7 curationModel];
    [(PGCurationCriteria *)self _scoreForSceneClassifications:clsSceneClassifications withScenesTrait:compulsoryScenesTrait curationModel:curationModel traitFailed:&v31];

    v8 = v31;
  }

  else
  {
    clsSceneClassifications = 0;
  }

  v13 = 0.0;
  if (!v8)
  {
    if ([(PGCurationSceneTrait *)self->_scenesTrait isActive])
    {
      if (!clsSceneClassifications)
      {
        clsSceneClassifications = [v7 clsSceneClassifications];
      }

      scenesTrait = self->_scenesTrait;
      curationModel2 = [v7 curationModel];
      [(PGCurationCriteria *)self _scoreForSceneClassifications:clsSceneClassifications withScenesTrait:scenesTrait curationModel:curationModel2 traitFailed:&v31];
      v17 = v16;

      v13 = v17 + 0.0;
      v18 = 1;
    }

    else
    {
      v18 = 0;
    }

    if (v31)
    {
      goto LABEL_29;
    }

    if ([(PGCurationPartOfDayTrait *)self->_partOfDayTrait isActive])
    {
      v19 = [MEMORY[0x277D27758] partOfDayForItem:v7];
      if (v19)
      {
        value = [(PGCurationPartOfDayTrait *)self->_partOfDayTrait value];
        v21 = [PGGraphPartOfDayNode partOfDayForPartOfDayName:v19];
        if (v21 != 1)
        {
          if ((v21 & ~value) != 0)
          {
            v22 = 0.0;
          }

          else
          {
            v22 = 1.0;
          }

          v13 = v13 + v22;
          isMatchingRequired = [(PGCurationTrait *)self->_partOfDayTrait isMatchingRequired];
          v24 = v22 == 0.0 && isMatchingRequired;
          v31 |= v24;
          ++v18;
        }
      }
    }

    if (v31 || ![(PGCurationSDFoodTrait *)self->_sdFoodTrait isActive])
    {
LABEL_29:
      if (!v18)
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (!clsSceneClassifications)
      {
        clsSceneClassifications = [v7 clsSceneClassifications];
      }

      sdFoodTrait = self->_sdFoodTrait;
      curationModel3 = [v7 curationModel];
      [(PGCurationCriteria *)self _scoreForSceneClassifications:clsSceneClassifications withSDFoodTrait:sdFoodTrait curationModel:curationModel3 traitFailed:&v31];
      v28 = v27;

      v13 = v13 + v28;
      ++v18;
    }

    v13 = v13 / v18;
  }

LABEL_31:
  if (v13 + -2.22044605e-16 <= 0.0)
  {
    v29 = v31;
  }

  else
  {
    v29 = 0;
  }

  v31 = v29;
  if (score)
  {
    *score = v13;
  }

  return v29 ^ 1;
}

- (PGCurationCriteria)initWithMinimumAssetsRatio:(double)ratio client:(unint64_t)client
{
  v7.receiver = self;
  v7.super_class = PGCurationCriteria;
  result = [(PGCurationCriteria *)&v7 init];
  if (result)
  {
    result->_minimumAssetsRatio = ratio;
    result->_faceFilter = 1;
    result->_filterUtilityAssets = 1;
    result->_client = client;
  }

  return result;
}

@end