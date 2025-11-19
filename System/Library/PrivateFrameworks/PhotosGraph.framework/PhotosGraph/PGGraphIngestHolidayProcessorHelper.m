@interface PGGraphIngestHolidayProcessorHelper
+ (id)keyboardLanguageCodesForInfoNode:(id)a3 holidayService:(id)a4;
- (BOOL)isCelebratingForEventRule:(id)a3 momentNode:(id)a4 momentLocalDate:(id)a5 withGraph:(id)a6 loggingConnection:(id)a7 localeCountryCode:(id)a8 keyboardLanguageCodes:(id)a9;
- (BOOL)momentTraitsMatchesHolidayTraits:(id)a3 momentNode:(id)a4 loggingConnection:(id)a5;
- (PGGraphIngestHolidayProcessorHelper)init;
- (double)_calculateSceneScores:(id)a3;
- (double)_dateScoreForEventRule:(id)a3 localeCode:(id)a4 holidayDate:(id)a5 momentDate:(id)a6;
- (double)dateScoreForEventRule:(id)a3 localeCountryCode:(id)a4 momentCountryCodes:(id)a5 keyboardLanguageCodes:(id)a6 momentDate:(id)a7;
- (double)locationScoreForEventRule:(id)a3 localeCountryCode:(id)a4 momentCountryCodes:(id)a5 keyboardLanguageCodes:(id)a6;
- (double)sceneScoreForEventRule:(id)a3 localeCountryCode:(id)a4 momentCountryCodes:(id)a5 keyboardLanguageCodes:(id)a6 momentNode:(id)a7;
- (id)holidayCalendarEventRuleTraitsForMomentNode:(id)a3;
- (id)momentsCelebratingRule:(id)a3 localDates:(id)a4 userCountryCode:(id)a5 keyboardLanguageCodes:(id)a6 graph:(id)a7 loggingConnection:(id)a8;
- (unint64_t)_eventRuleLocationTraitForMomentNode:(id)a3 graph:(id)a4;
- (unint64_t)_eventRulePeopleTraitForPersonNodes:(id)a3 graph:(id)a4;
- (void)prepareIfNeededWithGraph:(id)a3;
@end

@implementation PGGraphIngestHolidayProcessorHelper

- (unint64_t)_eventRuleLocationTraitForMomentNode:(id)a3 graph:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 hasAddressNodes])
  {
    v7 = [v6 supersetCityNodes];
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 0;
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    v8 = [v5 bestAddressNode];
    v9 = [v8 location];
    v10 = [v5 collection];
    v11 = [v10 cityNodes];
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __82__PGGraphIngestHolidayProcessorHelper__eventRuleLocationTraitForMomentNode_graph___block_invoke;
    v23 = &unk_278882268;
    v26 = &v32;
    v12 = v7;
    v24 = v12;
    v13 = v9;
    v25 = v13;
    v27 = &v28;
    [v11 enumerateNodesUsingBlock:&v20];

    if (v33[3])
    {
      v14 = 7;
    }

    else if (v29[3])
    {
      v14 = 14;
    }

    else
    {
      v15 = [v6 supersetCountryNodes];
      v16 = [v5 collection];
      v17 = [v16 addressNodes];
      v18 = [v17 countryNodes];

      if ([v18 intersectsCollection:v15])
      {
        v14 = 20;
      }

      else
      {
        v14 = 48;
      }
    }

    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(&v32, 8);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __82__PGGraphIngestHolidayProcessorHelper__eventRuleLocationTraitForMomentNode_graph___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) containsNode:a2];
  *a3 = *(*(*(a1 + 48) + 8) + 24);
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = *(a1 + 32);
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __82__PGGraphIngestHolidayProcessorHelper__eventRuleLocationTraitForMomentNode_graph___block_invoke_2;
      v9[3] = &unk_278882240;
      v7 = v5;
      v8 = *(a1 + 56);
      v10 = v7;
      v11 = v8;
      v12 = a3;
      [v6 enumerateNodesUsingBlock:v9];
    }
  }
}

void __82__PGGraphIngestHolidayProcessorHelper__eventRuleLocationTraitForMomentNode_graph___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 collection];
  v4 = [v3 addressNodes];
  v7 = [v4 anyNode];

  v5 = [v7 location];
  if (v5)
  {
    [*(a1 + 32) distanceFromLocation:v5];
    *(*(*(a1 + 40) + 8) + 24) = v6 <= *MEMORY[0x277D277E8];
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      **(a1 + 48) = 1;
    }
  }
}

- (unint64_t)_eventRulePeopleTraitForPersonNodes:(id)a3 graph:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(PGGraphIngestHolidayProcessorHelper *)self prepareIfNeededWithGraph:v7];
  v8 = [v6 intersectsCollection:self->_partnerPersonNodes];
  if ([v6 intersectsCollection:self->_familyPersonNodes])
  {
    v8 |= 2uLL;
  }

  if ([v6 intersectsCollection:self->_friendPersonNodes])
  {
    v8 |= 4uLL;
  }

  if (![(MAElementCollection *)self->_nonAcquaintancePersonNodes containsCollection:v6])
  {
    v8 |= 0x10uLL;
  }

  if ([v6 intersectsCollection:self->_coworkerPersonNodes])
  {
    v8 |= 8uLL;
  }

  if ([v6 intersectsCollection:self->_motherPersonNodes])
  {
    v8 |= 0x20uLL;
  }

  if ([v6 intersectsCollection:self->_fatherPersonNodes])
  {
    v8 |= 0x40uLL;
  }

  if ([v6 intersectsCollection:self->_childPersonNodes])
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v9 = [v6 elementIdentifiers];
    v10 = [(MAElementCollection *)self->_partnerPersonNodes elementIdentifiers];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __81__PGGraphIngestHolidayProcessorHelper__eventRulePeopleTraitForPersonNodes_graph___block_invoke;
    v14[3] = &unk_2788898C8;
    v11 = v9;
    v15 = v11;
    v16 = self;
    v17 = &v23;
    v18 = &v19;
    [v10 enumerateIdentifiersWithBlock:v14];

    meBiologicalSex = self->_meBiologicalSex;
    if (meBiologicalSex == 1 || *(v24 + 24) == 1)
    {
      v8 |= 0x20uLL;
    }

    if (meBiologicalSex == 2 || *(v20 + 24) == 1)
    {
      v8 |= 0x40uLL;
    }

    _Block_object_dispose(&v19, 8);
    _Block_object_dispose(&v23, 8);
  }

  return v8;
}

void __81__PGGraphIngestHolidayProcessorHelper__eventRulePeopleTraitForPersonNodes_graph___block_invoke(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) containsIdentifier:a2])
  {
    v4 = *(*(a1 + 40) + 96);
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
    v6 = [v4 objectForKeyedSubscript:v5];
    v7 = [v6 unsignedIntegerValue];

    *(*(*(a1 + 48) + 8) + 24) |= v7 == 1;
    *(*(*(a1 + 56) + 8) + 24) |= v7 == 2;
  }
}

- (id)holidayCalendarEventRuleTraitsForMomentNode:(id)a3
{
  v4 = MEMORY[0x277D276D0];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [v5 collection];
  v8 = [v7 personNodes];

  v9 = [v5 graph];
  [v6 setPeopleTrait:{-[PGGraphIngestHolidayProcessorHelper _eventRulePeopleTraitForPersonNodes:graph:](self, "_eventRulePeopleTraitForPersonNodes:graph:", v8, v9)}];

  [v6 setContainsMePerson:{objc_msgSend(v8, "containsMeNode")}];
  v10 = [v5 collection];

  v11 = [v10 personNodes];
  [v6 setNumberOfPeople:{objc_msgSend(v11, "count")}];

  return v6;
}

- (BOOL)momentTraitsMatchesHolidayTraits:(id)a3 momentNode:(id)a4 loggingConnection:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PGGraphIngestHolidayProcessorHelper *)self holidayCalendarEventRuleTraitsForMomentNode:v9];
  v12 = [v8 evaluateOnlyTraits:v11 evaluateLocationTraits:0];
  v13 = v10;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v16 = [v9 uuid];
    if (v12)
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    v18 = [v8 name];
    v19 = [v8 requiredTraits];
    v20 = 138413314;
    v21 = v16;
    v22 = 2112;
    v23 = v17;
    v24 = 2112;
    v25 = v18;
    v26 = 2112;
    v27 = v11;
    v28 = 2112;
    v29 = v19;
    _os_log_debug_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_DEBUG, "[HolidayProcessor] Moment (UUID: %@) traits match? (%@) event rule traits for holiday %@\n %@\n %@", &v20, 0x34u);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

- (double)_dateScoreForEventRule:(id)a3 localeCode:(id)a4 holidayDate:(id)a5 momentDate:(id)a6
{
  v8 = a6;
  v9 = a5;
  v10 = [a3 requiredTraits];
  v11 = [v10 allowApproximateDateCalculation];

  if (v11)
  {
    v12 = [MEMORY[0x277D27690] numberOfDaysBetweenDate:v9 andDate:v8];

    return v12 / -3.0 + 1.0;
  }

  else
  {
    v14 = [v9 compare:v8];

    result = 0.0;
    if (!v14)
    {
      return 1.0;
    }
  }

  return result;
}

- (double)dateScoreForEventRule:(id)a3 localeCountryCode:(id)a4 momentCountryCodes:(id)a5 keyboardLanguageCodes:(id)a6 momentDate:(id)a7
{
  v62 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = [MEMORY[0x277CBEB58] setWithArray:a5];
  v17 = v16;
  if (v13)
  {
    [v16 addObject:v13];
  }

  if ([v17 count])
  {
    v43 = v13;
    v44 = v14;
    v41 = [v17 count];
    v42 = v17;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    obj = v17;
    v18 = [obj countByEnumeratingWithState:&v50 objects:v61 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v51;
      v21 = 0.0;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v51 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v50 + 1) + 8 * i);
          v24 = [v12 localDateByEvaluatingRuleForDate:v15 countryCode:{v23, v41}];
          if (v24)
          {
            [(PGGraphIngestHolidayProcessorHelper *)self _dateScoreForEventRule:v12 localeCode:v23 holidayDate:v24 momentDate:v15];
            v21 = v21 + v25;
          }

          else
          {
            v26 = +[PGLogging sharedLogging];
            v27 = [v26 loggingConnection];

            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              v28 = [v12 name];
              *buf = 138412802;
              v56 = v28;
              v57 = 2112;
              v58 = v23;
              v59 = 2112;
              v60 = v15;
              _os_log_error_impl(&dword_22F0FC000, v27, OS_LOG_TYPE_ERROR, "Holiday %@ has no default data rule or dateRuleOverride for countryCode %@, date %@", buf, 0x20u);
            }
          }
        }

        v19 = [obj countByEnumeratingWithState:&v50 objects:v61 count:16];
      }

      while (v19);
    }

    else
    {
      v21 = 0.0;
    }

    v30 = v41;

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v31 = v44;
    v32 = [v31 countByEnumeratingWithState:&v46 objects:v54 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v47;
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v47 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = *(*(&v46 + 1) + 8 * j);
          v37 = [v12 localDateByEvaluatingRuleForDate:v15 languageCode:{v36, v41}];
          if (v37)
          {
            [(PGGraphIngestHolidayProcessorHelper *)self _dateScoreForEventRule:v12 localeCode:v36 holidayDate:v37 momentDate:v15];
            if (v38 != 0.0)
            {
              v30 = v30 + 1.0;
              v21 = v21 + v38;
            }
          }
        }

        v33 = [v31 countByEnumeratingWithState:&v46 objects:v54 count:16];
      }

      while (v33);
    }

    v29 = v21 / v30;
    v13 = v43;
    v14 = v44;
    v17 = v42;
  }

  else
  {
    v29 = 0.0;
  }

  v39 = *MEMORY[0x277D85DE8];
  return v29;
}

- (double)_calculateSceneScores:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(PGHolidayClassifier *)self->_holidayClassifier scoreForHolidayDetectedScenes:*(*(&v13 + 1) + 8 * i)];
        if (v8 < v10)
        {
          v8 = v10;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 0.0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

- (double)sceneScoreForEventRule:(id)a3 localeCountryCode:(id)a4 momentCountryCodes:(id)a5 keyboardLanguageCodes:(id)a6 momentNode:(id)a7
{
  v78 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v57 = a6;
  v14 = a7;
  if (![v11 skipSceneCriteriaIfInteresting] || (v15 = 1.0, (objc_msgSend(v14, "isInterestingForMemories") & 1) == 0))
  {
    v59 = v14;
    v16 = [v14 collection];
    v17 = [v16 sceneNodes];

    v54 = v17;
    v18 = [v17 sceneNames];
    v55 = v13;
    v19 = [MEMORY[0x277CBEB58] setWithArray:v13];
    v20 = v19;
    if (v12)
    {
      [v19 addObject:v12];
    }

    v56 = v12;
    v21 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    obj = v20;
    v22 = [obj countByEnumeratingWithState:&v66 objects:v77 count:16];
    v23 = self;
    if (v22)
    {
      v24 = v22;
      v25 = *v67;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v67 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v27 = [v11 scoreForCountryCode:*(*(&v66 + 1) + 8 * i) sceneNames:v18];
          [(PGHolidayClassifier *)v23->_holidayClassifier scoreForHolidayDetectedScenes:v27];
          if (v28 > 0.0)
          {
            v29 = v28;
            v30 = +[PGLogging sharedLogging];
            v31 = [v30 loggingConnection];

            if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              v32 = [v59 uuid];
              v33 = [v11 name];
              *buf = 138412802;
              v72 = v32;
              v73 = 2112;
              v74 = v33;
              v75 = 2048;
              v76 = v29;
              _os_log_impl(&dword_22F0FC000, v31, OS_LOG_TYPE_INFO, "[HolidayProcessor] MomentUUID: %@, Holiday: %@, calculatedSceneScoreForCountryCode: %f", buf, 0x20u);

              v23 = self;
            }
          }

          [v21 addObject:v27];
        }

        v24 = [obj countByEnumeratingWithState:&v66 objects:v77 count:16];
      }

      while (v24);
    }

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v34 = v57;
    v35 = [v34 countByEnumeratingWithState:&v62 objects:v70 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v63;
      do
      {
        v38 = 0;
        v58 = v36;
        do
        {
          if (*v63 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = [v11 scoreForLanguageCode:*(*(&v62 + 1) + 8 * v38) sceneNames:v18];
          [(PGHolidayClassifier *)v23->_holidayClassifier scoreForHolidayDetectedScenes:v39];
          if (v40 > 0.0)
          {
            v41 = v40;
            v42 = +[PGLogging sharedLogging];
            v43 = [v42 loggingConnection];

            if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
            {
              v44 = [v59 uuid];
              [v11 name];
              v45 = v37;
              v46 = v21;
              v47 = v11;
              v48 = v18;
              v50 = v49 = v34;
              *buf = 138412802;
              v72 = v44;
              v73 = 2112;
              v74 = v50;
              v75 = 2048;
              v76 = v41;
              _os_log_impl(&dword_22F0FC000, v43, OS_LOG_TYPE_INFO, "[HolidayProcessor] MomentUUID: %@, Holiday: %@, calculatedSceneScoreForLanguageCode: %f", buf, 0x20u);

              v34 = v49;
              v18 = v48;
              v11 = v47;
              v21 = v46;
              v37 = v45;
              v36 = v58;
            }

            v23 = self;
          }

          [v21 addObject:v39];

          ++v38;
        }

        while (v36 != v38);
        v36 = [v34 countByEnumeratingWithState:&v62 objects:v70 count:16];
      }

      while (v36);
    }

    [(PGGraphIngestHolidayProcessorHelper *)v23 _calculateSceneScores:v21];
    v15 = v51;

    v13 = v55;
    v12 = v56;
    v14 = v59;
  }

  v52 = *MEMORY[0x277D85DE8];
  return v15;
}

- (double)locationScoreForEventRule:(id)a3 localeCountryCode:(id)a4 momentCountryCodes:(id)a5 keyboardLanguageCodes:(id)a6
{
  v45 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  [v10 locationScoreForCountryCode:a4];
  v14 = v13;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v15 = v11;
  v16 = [v15 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v40;
    v19 = 0.0;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v40 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [v10 locationScoreForCountryCode:*(*(&v39 + 1) + 8 * i)];
        v19 = v19 + v21;
      }

      v17 = [v15 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v17);
  }

  else
  {
    v19 = 0.0;
  }

  if ([v15 count])
  {
    v22 = v19 / [v15 count];
    [(PGHolidayClassifier *)self->_holidayClassifier localeLocationWeight];
    v24 = v23;
    [(PGHolidayClassifier *)self->_holidayClassifier momentLocationWeight];
    v35 = 0u;
    v36 = 0u;
    v14 = v22 * v25 + v24 * v14;
    v37 = 0u;
    v38 = 0u;
    v26 = v12;
    v27 = [v26 countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v36;
      v30 = 0.0;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v36 != v29)
          {
            objc_enumerationMutation(v26);
          }

          [v10 languageScoreForLanguageCode:{*(*(&v35 + 1) + 8 * j), v35}];
          v30 = v30 + v32;
        }

        v28 = [v26 countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v28);

      if (v30 > 0.0)
      {
        v14 = (v14 + v30 / [v26 count]) * 0.5;
      }
    }

    else
    {
    }
  }

  v33 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)isCelebratingForEventRule:(id)a3 momentNode:(id)a4 momentLocalDate:(id)a5 withGraph:(id)a6 loggingConnection:(id)a7 localeCountryCode:(id)a8 keyboardLanguageCodes:(id)a9
{
  v57 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  if ([v14 isCelebration])
  {
    v40 = v17;
    v20 = [v15 collection];
    v21 = [v20 addressNodes];
    v22 = [v21 countryNodes];
    v23 = [v22 names];

    v24 = v23;
    [(PGGraphIngestHolidayProcessorHelper *)self dateScoreForEventRule:v14 localeCountryCode:v18 momentCountryCodes:v23 keyboardLanguageCodes:v19 momentDate:v16];
    if (v25 == 0.0)
    {
      LOBYTE(v26) = 0;
      v17 = v40;
    }

    else
    {
      v27 = v25;
      v17 = v40;
      if ([(PGGraphIngestHolidayProcessorHelper *)self momentTraitsMatchesHolidayTraits:v14 momentNode:v15 loggingConnection:v40])
      {
        [(PGGraphIngestHolidayProcessorHelper *)self sceneScoreForEventRule:v14 localeCountryCode:v18 momentCountryCodes:v24 keyboardLanguageCodes:v19 momentNode:v15];
        v29 = v28;
        [(PGGraphIngestHolidayProcessorHelper *)self locationScoreForEventRule:v14 localeCountryCode:v18 momentCountryCodes:v24 keyboardLanguageCodes:v19];
        v31 = v30;
        v26 = [(PGHolidayClassifier *)self->_holidayClassifier isCelebratingForDateScore:v27 sceneScore:v29 locationScore:v30];
        v32 = v40;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          v35 = [v15 uuid];
          v36 = [v14 name];
          v37 = v24;
          v38 = v36;
          *buf = 138414082;
          v39 = "NO";
          v42 = v35;
          if (v26)
          {
            v39 = "YES";
          }

          v43 = 2112;
          v44 = v36;
          v45 = 2112;
          v46 = v18;
          v47 = 2112;
          v48 = v37;
          v49 = 2048;
          v50 = v27;
          v51 = 2048;
          v52 = v29;
          v53 = 2048;
          v54 = v31;
          v55 = 2080;
          v56 = v39;
          _os_log_debug_impl(&dword_22F0FC000, v32, OS_LOG_TYPE_DEBUG, "[HolidayProcessor] MomentUUID: %@, holiday name: %@\nuserCountryCode: %@, momentCountryCode: %@\ndateScore: %f, sceneScore: %f, locationScore: %f, isCelebrating: %s", buf, 0x52u);

          v24 = v37;
          v17 = v40;
        }
      }

      else
      {
        LOBYTE(v26) = 0;
      }
    }
  }

  else
  {
    LOBYTE(v26) = 0;
  }

  v33 = *MEMORY[0x277D85DE8];
  return v26;
}

- (id)momentsCelebratingRule:(id)a3 localDates:(id)a4 userCountryCode:(id)a5 keyboardLanguageCodes:(id)a6 graph:(id)a7 loggingConnection:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if ([v14 isCelebration])
  {
    v20 = [v14 explicitlySupportedCountryCodes];
    v21 = [v20 containsObject:v16];

    v22 = [PGGraphDateNodeCollection dateNodesForLocalDates:v15 inGraph:v18];
    if ([v22 count])
    {
      v41 = objc_alloc_init(PGHolidayDetectionCache);
      v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v43 = v17;
      v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v58[0] = MEMORY[0x277D85DD0];
      v58[1] = 3221225472;
      v58[2] = __135__PGGraphIngestHolidayProcessorHelper_momentsCelebratingRule_localDates_userCountryCode_keyboardLanguageCodes_graph_loggingConnection___block_invoke;
      v58[3] = &unk_2788875A8;
      v37 = v21;
      v24 = v23;
      v59 = v24;
      [v22 enumerateNodesUsingBlock:v58];
      v35 = self;
      v25 = MEMORY[0x277D22BF8];
      v26 = +[PGGraphDateNode momentOfDate];
      v36 = [v25 adjacencyWithSources:v22 relation:v26 targetsClass:objc_opt_class()];

      v27 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v28 = [v36 targets];
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __135__PGGraphIngestHolidayProcessorHelper_momentsCelebratingRule_localDates_userCountryCode_keyboardLanguageCodes_graph_loggingConnection___block_invoke_2;
      v56[3] = &unk_278889290;
      v29 = v27;
      v57 = v29;
      [v28 enumerateNodesUsingBlock:v56];

      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __135__PGGraphIngestHolidayProcessorHelper_momentsCelebratingRule_localDates_userCountryCode_keyboardLanguageCodes_graph_loggingConnection___block_invoke_3;
      v44[3] = &unk_278882218;
      v45 = v24;
      v46 = v29;
      v47 = v35;
      v48 = v14;
      v49 = v18;
      v50 = v19;
      v51 = v16;
      v52 = v17;
      v55 = v37;
      v30 = v41;
      v53 = v30;
      v54 = v39;
      v42 = v39;
      v38 = v29;
      v40 = v24;
      [v36 enumerateTargetsBySourceWithBlock:v44];
      v31 = v54;
      v32 = v30;
      v17 = v43;
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

void __135__PGGraphIngestHolidayProcessorHelper_momentsCelebratingRule_localDates_userCountryCode_keyboardLanguageCodes_graph_loggingConnection___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CCABB0];
  v4 = a2;
  v5 = [v3 numberWithUnsignedInteger:{objc_msgSend(v4, "identifier")}];
  [v2 setObject:v4 forKeyedSubscript:v5];
}

void __135__PGGraphIngestHolidayProcessorHelper_momentsCelebratingRule_localDates_userCountryCode_keyboardLanguageCodes_graph_loggingConnection___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CCABB0];
  v4 = a2;
  v5 = [v3 numberWithUnsignedInteger:{objc_msgSend(v4, "identifier")}];
  [v2 setObject:v4 forKeyedSubscript:v5];
}

void __135__PGGraphIngestHolidayProcessorHelper_momentsCelebratingRule_localDates_userCountryCode_keyboardLanguageCodes_graph_loggingConnection___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  context = objc_autoreleasePoolPush();
  v7 = [v5 elementIdentifiers];
  v8 = [v7 firstElement];

  v9 = *(a1 + 32);
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  v11 = [v9 objectForKeyedSubscript:v10];

  v12 = [v11 localDate];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = [v6 elementIdentifiers];
  v14 = [v13 indexArray];

  v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      v18 = 0;
      do
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(a1 + 40) objectForKeyedSubscript:*(*(&v22 + 1) + 8 * v18)];
        if ([*(a1 + 48) isCelebratingForEventRule:*(a1 + 56) momentNode:v19 momentLocalDate:v12 withGraph:*(a1 + 64) loggingConnection:*(a1 + 72) localeCountryCode:*(a1 + 80) keyboardLanguageCodes:*(a1 + 88)])
        {
          [*(a1 + 96) addHolidayWithDateNode:v11];
          [*(a1 + 104) addObject:v19];
          [*(a1 + 96) addPositivelyClassifiedMomentNode:v19];
        }

        else if (*(a1 + 112))
        {
          [*(a1 + 96) addHolidayWithDateNode:v11];
          if (([*(a1 + 56) backfillForCountryCode:*(a1 + 80)] & 1) != 0 || objc_msgSend(*(a1 + 56), "backfillForLanguageCodes:", *(a1 + 88)))
          {
            if ([v19 isInterestingForMemories])
            {
              [*(a1 + 96) addNegativelyClassifiedMomentNode:v19];
            }
          }
        }

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v16);
  }

  objc_autoreleasePoolPop(context);
  v20 = *MEMORY[0x277D85DE8];
}

- (void)prepareIfNeededWithGraph:(id)a3
{
  if (!self->_meNodeAsCollection)
  {
    v35[5] = v6;
    v35[6] = v5;
    v35[13] = v3;
    v35[14] = v4;
    v8 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:a3];
    meNodeAsCollection = self->_meNodeAsCollection;
    self->_meNodeAsCollection = v8;

    v10 = [(PGGraphPersonNodeCollection *)self->_meNodeAsCollection partnerPersonNodes];
    partnerPersonNodes = self->_partnerPersonNodes;
    self->_partnerPersonNodes = v10;

    v12 = [(PGGraphPersonNodeCollection *)self->_meNodeAsCollection familyPersonNodes];
    familyPersonNodes = self->_familyPersonNodes;
    self->_familyPersonNodes = v12;

    v14 = [(PGGraphPersonNodeCollection *)self->_meNodeAsCollection childPersonNodes];
    childPersonNodes = self->_childPersonNodes;
    self->_childPersonNodes = v14;

    v16 = [(PGGraphPersonNodeCollection *)self->_meNodeAsCollection fatherPersonNodes];
    fatherPersonNodes = self->_fatherPersonNodes;
    self->_fatherPersonNodes = v16;

    v18 = [(PGGraphPersonNodeCollection *)self->_meNodeAsCollection motherPersonNodes];
    motherPersonNodes = self->_motherPersonNodes;
    self->_motherPersonNodes = v18;

    v20 = [(PGGraphPersonNodeCollection *)self->_meNodeAsCollection friendPersonNodes];
    friendPersonNodes = self->_friendPersonNodes;
    self->_friendPersonNodes = v20;

    v22 = [(PGGraphPersonNodeCollection *)self->_meNodeAsCollection coworkerPersonNodes];
    coworkerPersonNodes = self->_coworkerPersonNodes;
    self->_coworkerPersonNodes = v22;

    v24 = [(MAElementCollection *)self->_meNodeAsCollection collectionByFormingUnionWith:self->_familyPersonNodes];
    v25 = [v24 collectionByFormingUnionWith:self->_partnerPersonNodes];
    v26 = [v25 collectionByFormingUnionWith:self->_childPersonNodes];
    v27 = [v26 collectionByFormingUnionWith:self->_coworkerPersonNodes];
    v28 = [v27 collectionByFormingUnionWith:self->_friendPersonNodes];
    nonAcquaintancePersonNodes = self->_nonAcquaintancePersonNodes;
    self->_nonAcquaintancePersonNodes = v28;

    v30 = self->_meNodeAsCollection;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __64__PGGraphIngestHolidayProcessorHelper_prepareIfNeededWithGraph___block_invoke;
    v35[3] = &unk_2788849E0;
    v35[4] = self;
    [(PGGraphPersonNodeCollection *)v30 enumerateBiologicalSexUsingBlock:v35];
    if ([(MAElementCollection *)self->_partnerPersonNodes count])
    {
      v31 = objc_alloc_init(MEMORY[0x277CBEB38]);
      biologicalSexByPartnerPersonNodeIdentifier = self->_biologicalSexByPartnerPersonNodeIdentifier;
      self->_biologicalSexByPartnerPersonNodeIdentifier = v31;

      v33 = self->_partnerPersonNodes;
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __64__PGGraphIngestHolidayProcessorHelper_prepareIfNeededWithGraph___block_invoke_2;
      v34[3] = &unk_2788849E0;
      v34[4] = self;
      [(PGGraphPersonNodeCollection *)v33 enumerateBiologicalSexUsingBlock:v34];
    }
  }
}

void __64__PGGraphIngestHolidayProcessorHelper_prepareIfNeededWithGraph___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    v5 = *(*(a1 + 32) + 96);
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
    [v5 setObject:v7 forKeyedSubscript:v6];
  }
}

- (PGGraphIngestHolidayProcessorHelper)init
{
  v6.receiver = self;
  v6.super_class = PGGraphIngestHolidayProcessorHelper;
  v2 = [(PGGraphIngestHolidayProcessorHelper *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(PGHolidayClassifier);
    holidayClassifier = v2->_holidayClassifier;
    v2->_holidayClassifier = v3;
  }

  return v2;
}

+ (id)keyboardLanguageCodesForInfoNode:(id)a3 holidayService:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = MEMORY[0x277CBEB98];
  v7 = [a4 supportedLanguageCodes];
  v8 = [v6 setWithArray:v7];

  v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v10 = [v5 languageIdentifiers];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        if ([v15 length] >= 2)
        {
          v16 = [v15 substringToIndex:2];
          if ([v16 length] == 2)
          {
            [v9 addObject:v16];
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  [v9 intersectSet:v8];
  v17 = [v9 allObjects];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

@end