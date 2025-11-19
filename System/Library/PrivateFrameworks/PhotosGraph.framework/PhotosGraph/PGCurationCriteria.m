@interface PGCurationCriteria
- (BOOL)_passesForItem:(id)a3 score:(double *)a4 graph:(id)a5 reasonString:(id *)a6;
- (BOOL)isPassingForAsset:(id)a3 score:(double *)a4;
- (PGCurationCriteria)initWithMinimumAssetsRatio:(double)a3 client:(unint64_t)a4;
- (double)_scoreForSceneClassifications:(id)a3 withSDFoodTrait:(id)a4 curationModel:(id)a5 traitFailed:(BOOL *)a6;
- (double)_scoreForSceneClassifications:(id)a3 withScenesTrait:(id)a4 curationModel:(id)a5 traitFailed:(BOOL *)a6;
- (id)niceDescriptionWithGraph:(id)a3;
- (id)passingAssetsInAssets:(id)a3;
- (id)peopleTraitStringWithGraph:(id)a3;
@end

@implementation PGCurationCriteria

- (id)peopleTraitStringWithGraph:(id)a3
{
  v68 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277CBEB18]);
  v6 = [(PGCurationSetTrait *)self->_peopleTrait items];
  v7 = [v6 allObjects];
  v8 = [v5 initWithArray:v7];

  v9 = [(PGCurationSetTrait *)self->_peopleTrait negativeItems];
  v10 = [v9 allObjects];
  [v8 addObjectsFromArray:v10];

  v49 = v8;
  v50 = v4;
  v11 = [v4 personNodesForPersonLocalIdentifiers:v8];
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
        v19 = [v18 localIdentifier];
        [v12 setObject:v18 forKeyedSubscript:v19];
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
  v47 = self;
  v23 = [(PGCurationSetTrait *)self->_peopleTrait items];
  v51 = v21;
  v24 = [v23 sortedArrayUsingDescriptors:v21];

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
        v31 = [v30 name];
        v32 = v31;
        if (v31)
        {
          v33 = v31;
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
  v34 = [(PGCurationSetTrait *)v47->_peopleTrait negativeItems];
  v35 = [v34 sortedArrayUsingDescriptors:v51];

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
        v42 = [v41 name];
        v43 = v42;
        if (v42)
        {
          v44 = v42;
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

- (id)niceDescriptionWithGraph:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCAB68] string];
  v6 = v5;
  if (self->_minimumAssetsRatio > 0.0)
  {
    [v5 appendFormat:@"minimumAssetsRatio = %f\n", *&self->_minimumAssetsRatio];
  }

  if ([(PGCurationSceneTrait *)self->_compulsoryScenesTrait isActive])
  {
    v7 = [(PGCurationTrait *)self->_compulsoryScenesTrait niceDescription];
    [v6 appendFormat:@"compulsoryScenes = %@\n", v7];
  }

  if ([(PGCurationSceneTrait *)self->_scenesTrait isActive])
  {
    v8 = [(PGCurationTrait *)self->_scenesTrait niceDescription];
    [v6 appendFormat:@"scenes = %@\n", v8];
  }

  if ([(PGCurationPartOfDayTrait *)self->_partOfDayTrait isActive])
  {
    v9 = [(PGCurationPartOfDayTrait *)self->_partOfDayTrait niceDescription];
    [v6 appendFormat:@"partOfDay = %@\n", v9];
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
    v12 = [(PGCurationCriteria *)self peopleTraitStringWithGraph:v4];
    [v6 appendFormat:@"people = %@\n", v12];
  }

  if ([(PGCurationSetTrait *)self->_socialGroupTrait isActive])
  {
    v13 = [(PGCurationTrait *)self->_socialGroupTrait niceDescription];
    [v6 appendFormat:@"socialGroup = %@\n", v13];
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

- (double)_scoreForSceneClassifications:(id)a3 withSDFoodTrait:(id)a4 curationModel:(id)a5 traitFailed:(BOOL *)a6
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  *a6 = 1;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = v8;
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
          v17 = [v9 sdModel];
          v18 = [v17 foodDrinkNode];
          [v16 confidence];
          v19 = [v18 passesWithConfidence:?];

          if (v19)
          {
            *a6 = 0;
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

- (double)_scoreForSceneClassifications:(id)a3 withScenesTrait:(id)a4 curationModel:(id)a5 traitFailed:(BOOL *)a6
{
  v52 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v10 sceneNames];
  v13 = [v12 count];
  if (v13)
  {
    v14 = v13;
    v42 = v12;
    v43 = v11;
    v44 = a6;
    v45 = v10;
    v15 = [v10 confidenceThresholdBySceneIdentifierWithCurationModel:v11];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v46 = v9;
    v16 = v9;
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
          v23 = [v22 extendedSceneIdentifier];
          v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v23];
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

    v10 = v45;
    v30 = [v45 targetNumberOfMatches];
    if (v30)
    {
      v31 = v30;
    }

    else
    {
      v31 = v14;
    }

    v32 = v31;
    [v45 minimumScore];
    v34 = v33;
    v35 = [v45 isMatchingRequired];
    v36 = v19 / v32;
    if (v35)
    {
      v37 = v34;
    }

    else
    {
      v37 = 1.0;
    }

    v38 = fmin(v36 / v37, 1.0);
    v39 = v35 & (v36 < v34);
    if (v39)
    {
      v29 = 0.0;
    }

    else
    {
      v29 = v38;
    }

    if (v44)
    {
      *v44 &= v39;
    }

    v9 = v46;
    v12 = v42;
    v11 = v43;
  }

  else
  {
    v29 = 0.0;
  }

  v40 = *MEMORY[0x277D85DE8];
  return v29;
}

- (BOOL)_passesForItem:(id)a3 score:(double *)a4 graph:(id)a5 reasonString:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v79 = 0;
  if (a6)
  {
    v12 = objc_alloc_init(MEMORY[0x277CCAB68]);
  }

  else
  {
    v12 = 0;
  }

  if (self->_filterUtilityAssets)
  {
    [v10 clsContentScore];
    v14 = v13 < *MEMORY[0x277D3C768];
    v79 = v14;
    if (v14)
    {
      [v12 appendString:@"FAILED: item is utility\n"];
      v15 = 0;
      v16 = 0.0;
      goto LABEL_64;
    }
  }

  if ([(PGCurationSceneTrait *)self->_compulsoryScenesTrait isActive])
  {
    v15 = [v10 clsSceneClassifications];
    compulsoryScenesTrait = self->_compulsoryScenesTrait;
    v18 = [v10 curationModel];
    [(PGCurationCriteria *)self _scoreForSceneClassifications:v15 withScenesTrait:compulsoryScenesTrait curationModel:v18 traitFailed:&v79];

    v19 = v79;
    if (v79)
    {
      v20 = [(PGCurationTrait *)self->_compulsoryScenesTrait niceDescription];
      [v12 appendFormat:@"FAILED: missing compulsory scenes %@", v20];

      v19 = v79;
    }

    v16 = 0.0;
    if (!v19 && [(PGCurationSceneTrait *)self->_scenesTrait isActive])
    {
      if (v15)
      {
LABEL_17:
        scenesTrait = self->_scenesTrait;
        v22 = [v10 curationModel];
        [(PGCurationCriteria *)self _scoreForSceneClassifications:v15 withScenesTrait:scenesTrait curationModel:v22 traitFailed:&v79];
        v24 = v23;

        v25 = v79;
        v26 = [(PGCurationTrait *)self->_scenesTrait niceDescription];
        v27 = v26;
        if (v25)
        {
          [v12 appendFormat:@"FAILED: missing scenes %@", v26, v71];
        }

        else
        {
          [v12 appendFormat:@" - scored %f on scenes %@\n", *&v24, v26];
        }

        v16 = v24 + 0.0;

        v28 = 1;
        goto LABEL_23;
      }

LABEL_16:
      v15 = [v10 clsSceneClassifications];
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

    v15 = 0;
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
    v29 = [MEMORY[0x277D27758] partOfDayForItem:v10];
    if (v29)
    {
      v76 = v11;
      v30 = [(PGCurationPartOfDayTrait *)self->_partOfDayTrait value];
      v31 = [PGGraphPartOfDayNode partOfDayForPartOfDayName:v29];
      if (v31 != 1)
      {
        v32 = v31;
        v74 = v31 & v30;
        v33 = [(PGCurationTrait *)self->_partOfDayTrait isMatchingRequired];
        if (v32 == v74)
        {
          v34 = 1.0;
        }

        else
        {
          v34 = 0.0;
        }

        v35 = v32 != v74 && v33;
        v79 = v35;
        ++v28;
        v36 = [PGGraphPartOfDayNode stringValueForPartOfDay:v30];
        v37 = v36;
        if (v35)
        {
          [v12 appendFormat:@"FAILED: not matching part of day (%@ != %@)", v29, v36, v72];
        }

        else
        {
          [v12 appendFormat:@" - scored %f on part of day (%@, expected %@)\n", *&v34, v29, v36];
        }

        v11 = v76;
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
    v77 = v11;
    v38 = [v10 clsPersonAndPetLocalIdentifiers];
    v39 = [(PGCurationSetTrait *)self->_peopleTrait items];
    v75 = v38;
    v40 = [MEMORY[0x277CBEB58] setWithArray:v38];
    [v40 intersectSet:v39];
    if (v12)
    {
      v73 = [(PGCurationCriteria *)self peopleTraitStringWithGraph:v77];
    }

    else
    {
      v73 = 0;
    }

    if ([v40 isEqualToSet:v39])
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

    v11 = v77;
  }

  if (v79)
  {
    goto LABEL_59;
  }

  if ([(PGCurationSetTrait *)self->_socialGroupTrait isActive])
  {
    v46 = MEMORY[0x277CBEB58];
    v47 = [v10 clsPersonAndPetLocalIdentifiers];
    v48 = [v46 setWithArray:v47];

    v49 = [(PGCurationSetTrait *)self->_socialGroupTrait items];
    [v48 intersectSet:v49];
    v50 = [v48 count];
    if (v50)
    {
      ++v28;
      v16 = v16 + v50 / [v49 count];
    }

    else
    {
      v79 = 1;
      [(PGCurationTrait *)self->_socialGroupTrait niceDescription];
      v51 = v78 = v11;
      [v12 appendFormat:@"FAILED: not matching any people from social group %@", v51];

      v11 = v78;
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

  [v10 clsContentScore];
  v56 = v55;
  [(PGCurationTrait *)self->_contentOrAestheticScoreTrait minimumScore];
  v79 = v56 < v57;
  if (v56 < v57)
  {
    v58 = v57;
    [v10 clsAestheticScore];
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
    [v10 clsSquareCropScore];
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
      if (!v15)
      {
        v15 = [v10 clsSceneClassifications];
      }

      sdFoodTrait = self->_sdFoodTrait;
      v66 = [v10 curationModel];
      [(PGCurationCriteria *)self _scoreForSceneClassifications:v15 withSDFoodTrait:sdFoodTrait curationModel:v66 traitFailed:&v79];
      v68 = v67;

      ++v28;
      LODWORD(sdFoodTrait) = v79;
      v69 = [(PGCurationTrait *)self->_sdFoodTrait niceDescription];
      v70 = v69;
      if (sdFoodTrait == 1)
      {
        [v12 appendFormat:@"FAILED: missing SD food classification %@", v69, v71];
      }

      else
      {
        [v12 appendFormat:@" - scored %f on SD food %@\n", *&v68, v69];
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
  if (a4)
  {
    *a4 = v16;
  }

  if (a6)
  {
    v52 = v12;
    *a6 = v12;
  }

  v53 = !v79;

  return v53;
}

- (id)passingAssetsInAssets:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
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

- (BOOL)isPassingForAsset:(id)a3 score:(double *)a4
{
  v6 = a3;
  v7 = v6;
  v8 = 0;
  v31 = 0;
  if (self->_filterUtilityAssets)
  {
    [v6 clsContentScore];
    v8 = v9 < *MEMORY[0x277D3C768];
    v31 = v9 < *MEMORY[0x277D3C768];
  }

  if ([(PGCurationSceneTrait *)self->_compulsoryScenesTrait isActive])
  {
    v10 = [v7 clsSceneClassifications];
    compulsoryScenesTrait = self->_compulsoryScenesTrait;
    v12 = [v7 curationModel];
    [(PGCurationCriteria *)self _scoreForSceneClassifications:v10 withScenesTrait:compulsoryScenesTrait curationModel:v12 traitFailed:&v31];

    v8 = v31;
  }

  else
  {
    v10 = 0;
  }

  v13 = 0.0;
  if (!v8)
  {
    if ([(PGCurationSceneTrait *)self->_scenesTrait isActive])
    {
      if (!v10)
      {
        v10 = [v7 clsSceneClassifications];
      }

      scenesTrait = self->_scenesTrait;
      v15 = [v7 curationModel];
      [(PGCurationCriteria *)self _scoreForSceneClassifications:v10 withScenesTrait:scenesTrait curationModel:v15 traitFailed:&v31];
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
        v20 = [(PGCurationPartOfDayTrait *)self->_partOfDayTrait value];
        v21 = [PGGraphPartOfDayNode partOfDayForPartOfDayName:v19];
        if (v21 != 1)
        {
          if ((v21 & ~v20) != 0)
          {
            v22 = 0.0;
          }

          else
          {
            v22 = 1.0;
          }

          v13 = v13 + v22;
          v23 = [(PGCurationTrait *)self->_partOfDayTrait isMatchingRequired];
          v24 = v22 == 0.0 && v23;
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
      if (!v10)
      {
        v10 = [v7 clsSceneClassifications];
      }

      sdFoodTrait = self->_sdFoodTrait;
      v26 = [v7 curationModel];
      [(PGCurationCriteria *)self _scoreForSceneClassifications:v10 withSDFoodTrait:sdFoodTrait curationModel:v26 traitFailed:&v31];
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
  if (a4)
  {
    *a4 = v13;
  }

  return v29 ^ 1;
}

- (PGCurationCriteria)initWithMinimumAssetsRatio:(double)a3 client:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = PGCurationCriteria;
  result = [(PGCurationCriteria *)&v7 init];
  if (result)
  {
    result->_minimumAssetsRatio = a3;
    result->_faceFilter = 1;
    result->_filterUtilityAssets = 1;
    result->_client = a4;
  }

  return result;
}

@end