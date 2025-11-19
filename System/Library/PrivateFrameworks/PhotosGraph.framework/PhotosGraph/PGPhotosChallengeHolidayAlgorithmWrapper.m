@interface PGPhotosChallengeHolidayAlgorithmWrapper
- (PGPhotosChallengeHolidayAlgorithmWrapper)initWithEvaluationContext:(id)a3;
- (id)debugInformationForHolidayName:(id)a3 assetUUID:(id)a4;
- (unsigned)predictedQuestionStateForAssetUUID:(id)a3 holidayName:(id)a4;
@end

@implementation PGPhotosChallengeHolidayAlgorithmWrapper

- (id)debugInformationForHolidayName:(id)a3 assetUUID:(id)a4
{
  v96 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PGGraph *)self->_graph infoNode];
  v9 = [v8 locale];
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x277D276D8]) initWithLocale:v9];
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v11 = [v10 eventRules];
    v12 = [v11 countByEnumeratingWithState:&v88 objects:v95 count:16];
    if (v12)
    {
      v13 = v12;
      v84 = v10;
      v85 = v9;
      v86 = v8;
      v83 = v7;
      v14 = *v89;
      v15 = MEMORY[0x277CBEC10];
LABEL_4:
      v16 = 0;
      while (1)
      {
        if (*v89 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v88 + 1) + 8 * v16);
        v18 = [v17 name];
        v19 = [v18 isEqualToString:v6];

        if (v19)
        {
          break;
        }

        if (v13 == ++v16)
        {
          v13 = [v11 countByEnumeratingWithState:&v88 objects:v95 count:16];
          if (v13)
          {
            goto LABEL_4;
          }

          v20 = v11;
          v7 = v83;
          v10 = v84;
          v9 = v85;
          v8 = v86;
          goto LABEL_31;
        }
      }

      v20 = v17;

      if (!v20)
      {
        v15 = MEMORY[0x277CBEC10];
        v7 = v83;
        v10 = v84;
        v9 = v85;
        v8 = v86;
        goto LABEL_32;
      }

      v21 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
      v22 = MEMORY[0x277CD97A8];
      v7 = v83;
      v94 = v83;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v94 count:1];
      v24 = [v22 fetchAssetsWithUUIDs:v23 options:v21];
      v25 = [v24 firstObject];

      v26 = v25;
      v10 = v84;
      if (v25)
      {
        v27 = [MEMORY[0x277CD97B8] fetchAssetCollectionsContainingAsset:v25 withType:3 options:v21];
        v28 = [v27 firstObject];

        v81 = v28;
        if (v28)
        {
          v82 = [(PGGraph *)self->_graph momentNodeForMoment:v28];
          if (v82)
          {
            v29 = [v82 collection];
            [v29 sceneNodes];
            v30 = v73 = v26;
            [v30 sceneNames];
            v31 = v74 = v21;
            v72 = [v31 allObjects];

            v80 = [v72 componentsJoinedByString:{@", "}];
            v32 = [v82 collection];
            v33 = [v32 addressNodes];
            v34 = [v33 countryNodes];
            v35 = [v34 names];

            v79 = [v35 componentsJoinedByString:{@", "}];
            v75 = [v85 countryCode];
            v36 = [v20 requiredTraits];
            v71 = [v36 defaultScenesWithImportanceString];

            v87 = 0;
            v69 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v71 options:0 error:&v87];
            v70 = v87;
            v78 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v69 encoding:4];
            v68 = [v20 explicitlySupportedCountryCodes];
            v77 = [v68 componentsJoinedByString:{@", "}];
            v37 = [PGGraphIngestHolidayProcessorHelper keyboardLanguageCodesForInfoNode:v86 holidayService:v84];
            v66 = [v37 componentsJoinedByString:{@", "}];
            v38 = objc_alloc_init(PGGraphIngestHolidayProcessorHelper);
            v76 = [(PGGraphIngestHolidayProcessorHelper *)v38 holidayCalendarEventRuleTraitsForMomentNode:v82];
            v59 = [(PGGraphIngestHolidayProcessorHelper *)v38 momentTraitsMatchesHolidayTraits:v20 momentNode:v82 loggingConnection:MEMORY[0x277D86220]];
            v39 = [v82 collection];
            v40 = [v39 dateNodes];
            v41 = [v40 anyNode];
            v65 = [v41 localDate];

            v62 = objc_alloc_init(PGHolidayClassifier);
            v63 = v38;
            v67 = v35;
            v64 = v37;
            [(PGGraphIngestHolidayProcessorHelper *)v38 dateScoreForEventRule:v20 localeCountryCode:v75 momentCountryCodes:v35 keyboardLanguageCodes:v37 momentDate:v65];
            v43 = v42;
            [(PGGraphIngestHolidayProcessorHelper *)v38 sceneScoreForEventRule:v20 localeCountryCode:v75 momentCountryCodes:v35 keyboardLanguageCodes:v37 momentNode:v82];
            v45 = v44;
            [(PGGraphIngestHolidayProcessorHelper *)v38 locationScoreForEventRule:v20 localeCountryCode:v75 momentCountryCodes:v35 keyboardLanguageCodes:v37];
            v47 = v46;
            v48 = [(PGHolidayClassifier *)v62 isCelebratingForDateScore:v43 sceneScore:v45 locationScore:v46];
            v92[0] = @"momentSceneNames";
            v92[1] = @"momentCountryCodes";
            v93[0] = v80;
            v93[1] = v79;
            v93[2] = v75;
            v92[2] = @"localeCountryCode";
            v92[3] = @"momentTraits";
            v49 = [v76 description];
            v61 = v49;
            if (v59)
            {
              v50 = @"YES";
            }

            else
            {
              v50 = @"NO";
            }

            v93[3] = v49;
            v93[4] = v50;
            v92[4] = @"allRequiredRulesApplyForMomentNode";
            v92[5] = @"holidaySceneCriteria";
            v93[5] = v78;
            v93[6] = v77;
            v92[6] = @"holidayCriteriaSupportedCountryCodes";
            v92[7] = @"isCelebrating";
            if (v48)
            {
              v51 = @"YES";
            }

            else
            {
              v51 = @"NO";
            }

            v93[7] = v51;
            v92[8] = @"dateScore";
            v60 = [MEMORY[0x277CCABB0] numberWithDouble:v43];
            v52 = [v60 stringValue];
            v93[8] = v52;
            v92[9] = @"sceneScore";
            v53 = [MEMORY[0x277CCABB0] numberWithDouble:v45];
            v54 = [v53 stringValue];
            v93[9] = v54;
            v92[10] = @"locationScore";
            v55 = [MEMORY[0x277CCABB0] numberWithDouble:v47];
            v56 = [v55 stringValue];
            v92[11] = @"keyboardLanguageCodes";
            v93[10] = v56;
            v93[11] = v66;
            v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v93 forKeys:v92 count:12];

            v21 = v74;
            v26 = v73;

            v10 = v84;
          }

          else
          {
            v15 = MEMORY[0x277CBEC10];
          }
        }

        else
        {
          v15 = MEMORY[0x277CBEC10];
        }

        v9 = v85;
        v8 = v86;
      }

      else
      {
        v15 = MEMORY[0x277CBEC10];
        v9 = v85;
        v8 = v86;
      }
    }

    else
    {
      v15 = MEMORY[0x277CBEC10];
      v20 = v11;
    }

LABEL_31:

LABEL_32:
  }

  else
  {
    v15 = MEMORY[0x277CBEC10];
  }

  v57 = *MEMORY[0x277D85DE8];

  return v15;
}

- (unsigned)predictedQuestionStateForAssetUUID:(id)a3 holidayName:(id)a4
{
  v43[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v9 = MEMORY[0x277CD97A8];
  v43[0] = v6;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:1];
  v11 = [v9 fetchAssetsWithUUIDs:v10 options:v8];
  v12 = [v11 firstObject];

  if (v12)
  {
    v13 = [MEMORY[0x277CD97B8] fetchAssetCollectionsContainingAsset:v12 withType:3 options:v8];
    v14 = [v13 firstObject];

    if (v14)
    {
      v15 = [(PGGraph *)self->_graph momentNodeForMoment:v14];
      v16 = v15;
      if (v15)
      {
        v17 = [v15 localStartDate];
        v18 = [v16 localEndDate];
        v19 = v18;
        v20 = 1;
        if (v17 && v18)
        {
          v30 = [(PGGraph *)self->_graph infoNode];
          v31 = [v30 locale];
          if (v31)
          {
            v27 = objc_alloc_init(PGGraphIngestHolidayProcessorHelper);
            v29 = [objc_alloc(MEMORY[0x277D276D8]) initWithLocale:v31];
            v26 = [PGGraphIngestHolidayProcessorHelper keyboardLanguageCodesForInfoNode:v30 holidayService:v29];
            v39 = 0;
            v40 = &v39;
            v41 = 0x2020000000;
            v42 = 3;
            v21 = [MEMORY[0x277CBEB98] setWithObject:v7];
            v32[0] = MEMORY[0x277D85DD0];
            v32[1] = 3221225472;
            v32[2] = __91__PGPhotosChallengeHolidayAlgorithmWrapper_predictedQuestionStateForAssetUUID_holidayName___block_invoke;
            v32[3] = &unk_278880528;
            v25 = v27;
            v33 = v25;
            v34 = v31;
            v28 = v26;
            v35 = v28;
            v36 = self;
            v37 = v16;
            v38 = &v39;
            [v29 enumerateEventRulesWithNames:v21 betweenLocalDate:v17 andLocalDate:v19 usingBlock:v32];
            v22 = v21;
            v20 = *(v40 + 12);

            _Block_object_dispose(&v39, 8);
          }
        }
      }

      else
      {
        v20 = 1;
      }
    }

    else
    {
      v20 = 1;
    }
  }

  else
  {
    v20 = 1;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v20;
}

void __91__PGPhotosChallengeHolidayAlgorithmWrapper_predictedQuestionStateForAssetUUID_holidayName___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = [v6 countryCode];
  v9 = [v5 momentsCelebratingRule:v14 localDates:v7 userCountryCode:v8 keyboardLanguageCodes:*(a1 + 48) graph:*(*(a1 + 56) + 8) loggingConnection:MEMORY[0x277D86220]];

  v10 = [v9 positivelyClassifiedMomentNodes];
  LODWORD(v8) = [v10 containsObject:*(a1 + 64)];

  if (v8)
  {
    goto LABEL_2;
  }

  v11 = [v9 negativelyClassifiedMomentNodes];
  if (([v11 containsObject:*(a1 + 64)] & 1) == 0)
  {
    goto LABEL_8;
  }

  v12 = [*(a1 + 40) countryCode];
  if (([v14 backfillForCountryCode:v12] & 1) == 0)
  {

LABEL_8:
    goto LABEL_9;
  }

  v13 = [*(a1 + 64) isInterestingForMemories];

  if (v13)
  {
LABEL_2:
    *(*(*(a1 + 72) + 8) + 24) = 2;
  }

LABEL_9:
}

- (PGPhotosChallengeHolidayAlgorithmWrapper)initWithEvaluationContext:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PGPhotosChallengeHolidayAlgorithmWrapper;
  v5 = [(PGPhotosChallengeHolidayAlgorithmWrapper *)&v11 init];
  if (v5)
  {
    v6 = [v4 graph];
    graph = v5->_graph;
    v5->_graph = v6;

    v8 = [v4 photoLibrary];
    photoLibrary = v5->_photoLibrary;
    v5->_photoLibrary = v8;
  }

  return v5;
}

@end