@interface PGPhotosChallengeHolidayAlgorithmWrapper
- (PGPhotosChallengeHolidayAlgorithmWrapper)initWithEvaluationContext:(id)context;
- (id)debugInformationForHolidayName:(id)name assetUUID:(id)d;
- (unsigned)predictedQuestionStateForAssetUUID:(id)d holidayName:(id)name;
@end

@implementation PGPhotosChallengeHolidayAlgorithmWrapper

- (id)debugInformationForHolidayName:(id)name assetUUID:(id)d
{
  v96 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  dCopy = d;
  infoNode = [(PGGraph *)self->_graph infoNode];
  locale = [infoNode locale];
  if (locale)
  {
    v10 = [objc_alloc(MEMORY[0x277D276D8]) initWithLocale:locale];
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    eventRules = [v10 eventRules];
    v12 = [eventRules countByEnumeratingWithState:&v88 objects:v95 count:16];
    if (v12)
    {
      v13 = v12;
      v84 = v10;
      v85 = locale;
      v86 = infoNode;
      v83 = dCopy;
      v14 = *v89;
      v15 = MEMORY[0x277CBEC10];
LABEL_4:
      v16 = 0;
      while (1)
      {
        if (*v89 != v14)
        {
          objc_enumerationMutation(eventRules);
        }

        v17 = *(*(&v88 + 1) + 8 * v16);
        name = [v17 name];
        v19 = [name isEqualToString:nameCopy];

        if (v19)
        {
          break;
        }

        if (v13 == ++v16)
        {
          v13 = [eventRules countByEnumeratingWithState:&v88 objects:v95 count:16];
          if (v13)
          {
            goto LABEL_4;
          }

          v20 = eventRules;
          dCopy = v83;
          v10 = v84;
          locale = v85;
          infoNode = v86;
          goto LABEL_31;
        }
      }

      v20 = v17;

      if (!v20)
      {
        v15 = MEMORY[0x277CBEC10];
        dCopy = v83;
        v10 = v84;
        locale = v85;
        infoNode = v86;
        goto LABEL_32;
      }

      librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
      v22 = MEMORY[0x277CD97A8];
      dCopy = v83;
      v94 = v83;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v94 count:1];
      v24 = [v22 fetchAssetsWithUUIDs:v23 options:librarySpecificFetchOptions];
      firstObject = [v24 firstObject];

      v26 = firstObject;
      v10 = v84;
      if (firstObject)
      {
        v27 = [MEMORY[0x277CD97B8] fetchAssetCollectionsContainingAsset:firstObject withType:3 options:librarySpecificFetchOptions];
        firstObject2 = [v27 firstObject];

        v81 = firstObject2;
        if (firstObject2)
        {
          v82 = [(PGGraph *)self->_graph momentNodeForMoment:firstObject2];
          if (v82)
          {
            collection = [v82 collection];
            [collection sceneNodes];
            v30 = v73 = v26;
            [v30 sceneNames];
            v31 = v74 = librarySpecificFetchOptions;
            allObjects = [v31 allObjects];

            v80 = [allObjects componentsJoinedByString:{@", "}];
            collection2 = [v82 collection];
            addressNodes = [collection2 addressNodes];
            countryNodes = [addressNodes countryNodes];
            names = [countryNodes names];

            v79 = [names componentsJoinedByString:{@", "}];
            countryCode = [v85 countryCode];
            requiredTraits = [v20 requiredTraits];
            defaultScenesWithImportanceString = [requiredTraits defaultScenesWithImportanceString];

            v87 = 0;
            v69 = [MEMORY[0x277CCAAA0] dataWithJSONObject:defaultScenesWithImportanceString options:0 error:&v87];
            v70 = v87;
            v78 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v69 encoding:4];
            explicitlySupportedCountryCodes = [v20 explicitlySupportedCountryCodes];
            v77 = [explicitlySupportedCountryCodes componentsJoinedByString:{@", "}];
            v37 = [PGGraphIngestHolidayProcessorHelper keyboardLanguageCodesForInfoNode:v86 holidayService:v84];
            v66 = [v37 componentsJoinedByString:{@", "}];
            v38 = objc_alloc_init(PGGraphIngestHolidayProcessorHelper);
            v76 = [(PGGraphIngestHolidayProcessorHelper *)v38 holidayCalendarEventRuleTraitsForMomentNode:v82];
            v59 = [(PGGraphIngestHolidayProcessorHelper *)v38 momentTraitsMatchesHolidayTraits:v20 momentNode:v82 loggingConnection:MEMORY[0x277D86220]];
            collection3 = [v82 collection];
            dateNodes = [collection3 dateNodes];
            anyNode = [dateNodes anyNode];
            localDate = [anyNode localDate];

            v62 = objc_alloc_init(PGHolidayClassifier);
            v63 = v38;
            v67 = names;
            v64 = v37;
            [(PGGraphIngestHolidayProcessorHelper *)v38 dateScoreForEventRule:v20 localeCountryCode:countryCode momentCountryCodes:names keyboardLanguageCodes:v37 momentDate:localDate];
            v43 = v42;
            [(PGGraphIngestHolidayProcessorHelper *)v38 sceneScoreForEventRule:v20 localeCountryCode:countryCode momentCountryCodes:names keyboardLanguageCodes:v37 momentNode:v82];
            v45 = v44;
            [(PGGraphIngestHolidayProcessorHelper *)v38 locationScoreForEventRule:v20 localeCountryCode:countryCode momentCountryCodes:names keyboardLanguageCodes:v37];
            v47 = v46;
            v48 = [(PGHolidayClassifier *)v62 isCelebratingForDateScore:v43 sceneScore:v45 locationScore:v46];
            v92[0] = @"momentSceneNames";
            v92[1] = @"momentCountryCodes";
            v93[0] = v80;
            v93[1] = v79;
            v93[2] = countryCode;
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
            stringValue = [v60 stringValue];
            v93[8] = stringValue;
            v92[9] = @"sceneScore";
            v53 = [MEMORY[0x277CCABB0] numberWithDouble:v45];
            stringValue2 = [v53 stringValue];
            v93[9] = stringValue2;
            v92[10] = @"locationScore";
            v55 = [MEMORY[0x277CCABB0] numberWithDouble:v47];
            stringValue3 = [v55 stringValue];
            v92[11] = @"keyboardLanguageCodes";
            v93[10] = stringValue3;
            v93[11] = v66;
            v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v93 forKeys:v92 count:12];

            librarySpecificFetchOptions = v74;
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

        locale = v85;
        infoNode = v86;
      }

      else
      {
        v15 = MEMORY[0x277CBEC10];
        locale = v85;
        infoNode = v86;
      }
    }

    else
    {
      v15 = MEMORY[0x277CBEC10];
      v20 = eventRules;
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

- (unsigned)predictedQuestionStateForAssetUUID:(id)d holidayName:(id)name
{
  v43[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  nameCopy = name;
  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v9 = MEMORY[0x277CD97A8];
  v43[0] = dCopy;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:1];
  v11 = [v9 fetchAssetsWithUUIDs:v10 options:librarySpecificFetchOptions];
  firstObject = [v11 firstObject];

  if (firstObject)
  {
    v13 = [MEMORY[0x277CD97B8] fetchAssetCollectionsContainingAsset:firstObject withType:3 options:librarySpecificFetchOptions];
    firstObject2 = [v13 firstObject];

    if (firstObject2)
    {
      v15 = [(PGGraph *)self->_graph momentNodeForMoment:firstObject2];
      v16 = v15;
      if (v15)
      {
        localStartDate = [v15 localStartDate];
        localEndDate = [v16 localEndDate];
        v19 = localEndDate;
        v20 = 1;
        if (localStartDate && localEndDate)
        {
          infoNode = [(PGGraph *)self->_graph infoNode];
          locale = [infoNode locale];
          if (locale)
          {
            v27 = objc_alloc_init(PGGraphIngestHolidayProcessorHelper);
            v29 = [objc_alloc(MEMORY[0x277D276D8]) initWithLocale:locale];
            v26 = [PGGraphIngestHolidayProcessorHelper keyboardLanguageCodesForInfoNode:infoNode holidayService:v29];
            v39 = 0;
            v40 = &v39;
            v41 = 0x2020000000;
            v42 = 3;
            v21 = [MEMORY[0x277CBEB98] setWithObject:nameCopy];
            v32[0] = MEMORY[0x277D85DD0];
            v32[1] = 3221225472;
            v32[2] = __91__PGPhotosChallengeHolidayAlgorithmWrapper_predictedQuestionStateForAssetUUID_holidayName___block_invoke;
            v32[3] = &unk_278880528;
            v25 = v27;
            v33 = v25;
            v34 = locale;
            v28 = v26;
            v35 = v28;
            selfCopy = self;
            v37 = v16;
            v38 = &v39;
            [v29 enumerateEventRulesWithNames:v21 betweenLocalDate:localStartDate andLocalDate:v19 usingBlock:v32];
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

- (PGPhotosChallengeHolidayAlgorithmWrapper)initWithEvaluationContext:(id)context
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = PGPhotosChallengeHolidayAlgorithmWrapper;
  v5 = [(PGPhotosChallengeHolidayAlgorithmWrapper *)&v11 init];
  if (v5)
  {
    graph = [contextCopy graph];
    graph = v5->_graph;
    v5->_graph = graph;

    photoLibrary = [contextCopy photoLibrary];
    photoLibrary = v5->_photoLibrary;
    v5->_photoLibrary = photoLibrary;
  }

  return v5;
}

@end