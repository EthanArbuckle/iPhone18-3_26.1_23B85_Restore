@interface RETrainingSimulationCoordinator
- (id)_engineWithName:(id)a3;
- (id)_init;
- (id)_unavailableEngineWithNameError:(id)a3;
- (void)_accesssEngineWithName:(id)a3 completion:(id)a4;
- (void)availableRelevanceEngines:(id)a3;
- (void)dealloc;
- (void)elementAction:(id)a3 didFinishTask:(BOOL)a4;
- (void)elementAction:(id)a3 wantsViewControllerDisplayed:(id)a4;
- (void)fetchAllElementIdentifiersInRelevanceEngine:(id)a3 completion:(id)a4;
- (void)fetchAllElementsInRelevanceEngine:(id)a3 completion:(id)a4;
- (void)gatherDiagnosticLogsForRelevanceEngine:(id)a3 completion:(id)a4;
- (void)relevanceEngine:(id)a3 createElementFromDescription:(id)a4 completion:(id)a5;
- (void)relevanceEngine:(id)a3 encodedObjectAtPath:(id)a4 completion:(id)a5;
- (void)relevanceEngine:(id)a3 performCommand:(id)a4 withOptions:(id)a5 completion:(id)a6;
- (void)relevanceEngine:(id)a3 runActionOfElementWithDescription1:(id)a4 completion:(id)a5;
@end

@implementation RETrainingSimulationCoordinator

- (id)_init
{
  v11.receiver = self;
  v11.super_class = RETrainingSimulationCoordinator;
  v2 = [(RESingleton *)&v11 _init];
  if (v2)
  {
    if (_fetchedInternalBuildOnceToken_1 != -1)
    {
      [RETrainingSimulationCoordinator _init];
    }

    if (_isInternalDevice_1 == 1)
    {
      v3 = [MEMORY[0x277CBEB38] dictionary];
      v4 = *(v2 + 2);
      *(v2 + 2) = v3;

      v5 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
      v6 = *(v2 + 3);
      *(v2 + 3) = v5;

      v7 = +[RETrainingSimulationServer sharedServer];
      v8 = *(v2 + 1);
      *(v2 + 1) = v7;

      [*(v2 + 1) addObserver:v2];
      v9 = [MEMORY[0x277CCAB98] defaultCenter];
      [v9 addObserver:v2 selector:sel__relevanceEnginesDidChange name:@"RERelevanceEngineDebuggerAvailableEnginesDidChange" object:0];
    }
  }

  return v2;
}

uint64_t __40__RETrainingSimulationCoordinator__init__block_invoke()
{
  result = _REGetIsInternalBuild();
  _isInternalDevice_1 = result;
  return result;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:@"RERelevanceEngineDebuggerAvailableEnginesDidChange" object:0];

  v4.receiver = self;
  v4.super_class = RETrainingSimulationCoordinator;
  [(RETrainingSimulationCoordinator *)&v4 dealloc];
}

- (id)_engineWithName:(id)a3
{
  v3 = a3;
  v4 = +[(RESingleton *)RERelevanceEngineDebugger];
  v5 = [v4 engineWithName:v3];

  return v5;
}

- (void)_accesssEngineWithName:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__RETrainingSimulationCoordinator__accesssEngineWithName_completion___block_invoke;
    block[3] = &unk_2785F99C8;
    block[4] = self;
    v9 = v6;
    v10 = v7;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __69__RETrainingSimulationCoordinator__accesssEngineWithName_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _engineWithName:*(a1 + 40)];
  v3 = [v2 configuration];
  v4 = [v3 observerQueue];

  if (v4)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __69__RETrainingSimulationCoordinator__accesssEngineWithName_completion___block_invoke_2;
    v5[3] = &unk_2785FA150;
    v7 = *(a1 + 48);
    v6 = v2;
    dispatch_async(v4, v5);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (id)_unavailableEngineWithNameError:(id)a3
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"No Relevance engine with name %@ found", a3];
  v4 = RECreateErrorWithCodeAndMessage(1, v3);

  return v4;
}

- (void)relevanceEngine:(id)a3 createElementFromDescription:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [a4 mutableCopy];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __91__RETrainingSimulationCoordinator_relevanceEngine_createElementFromDescription_completion___block_invoke;
  v14[3] = &unk_2785FC098;
  v15 = v10;
  v16 = self;
  v17 = v8;
  v18 = v9;
  v11 = v9;
  v12 = v8;
  v13 = v10;
  [(RETrainingSimulationCoordinator *)self _accesssEngineWithName:v12 completion:v14];
}

void __91__RETrainingSimulationCoordinator_relevanceEngine_createElementFromDescription_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v6 = [*(a1 + 40) _unavailableEngineWithNameError:*(a1 + 48)];
LABEL_8:
    (*(*(a1 + 56) + 16))();
    goto LABEL_9;
  }

  v4 = [*(a1 + 32) objectForKeyedSubscript:@"section"];
  [*(a1 + 32) removeObjectForKey:@"section"];
  v5 = [v3 elementFromDictionary:*(a1 + 32)];
  if (!v5)
  {
    v6 = RECreateErrorWithCode(2);

    goto LABEL_8;
  }

  v6 = v5;
  v7 = [*(*(a1 + 40) + 16) objectForKeyedSubscript:*(a1 + 48)];

  if (!v7)
  {
    v8 = [MEMORY[0x277CBEB58] set];
    [*(*(a1 + 40) + 16) setObject:v8 forKeyedSubscript:*(a1 + 48)];
  }

  v9 = [*(*(a1 + 40) + 16) objectForKeyedSubscript:*(a1 + 48)];
  [v9 addObject:v6];

  [v3 addElement:v6 section:v4];
  v10 = [v3 subsystemQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__RETrainingSimulationCoordinator_relevanceEngine_createElementFromDescription_completion___block_invoke_2;
  block[3] = &unk_2785FC070;
  v13 = v3;
  v11 = *(a1 + 56);
  v14 = 0;
  v15 = v11;
  dispatch_async(v10, block);

LABEL_9:
}

void __91__RETrainingSimulationCoordinator_relevanceEngine_createElementFromDescription_completion___block_invoke_2(id *a1)
{
  v2 = [a1[4] subsystemQueue];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __91__RETrainingSimulationCoordinator_relevanceEngine_createElementFromDescription_completion___block_invoke_3;
  v3[3] = &unk_2785FA150;
  v5 = a1[6];
  v4 = a1[5];
  dispatch_async(v2, v3);
}

void __91__RETrainingSimulationCoordinator_relevanceEngine_createElementFromDescription_completion___block_invoke_3(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __91__RETrainingSimulationCoordinator_relevanceEngine_createElementFromDescription_completion___block_invoke_4;
  v2[3] = &unk_2785FA150;
  v4 = *(a1 + 40);
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

void __91__RETrainingSimulationCoordinator_relevanceEngine_createElementFromDescription_completion___block_invoke_4(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __91__RETrainingSimulationCoordinator_relevanceEngine_createElementFromDescription_completion___block_invoke_5;
  v2[3] = &unk_2785FA150;
  v4 = *(a1 + 40);
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

- (void)relevanceEngine:(id)a3 performCommand:(id)a4 withOptions:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __89__RETrainingSimulationCoordinator_relevanceEngine_performCommand_withOptions_completion___block_invoke;
  v18[3] = &unk_2785FC0C0;
  v19 = v11;
  v20 = self;
  v21 = v10;
  v22 = v12;
  v23 = v13;
  v14 = v13;
  v15 = v12;
  v16 = v10;
  v17 = v11;
  [(RETrainingSimulationCoordinator *)self _accesssEngineWithName:v16 completion:v18];
}

void __89__RETrainingSimulationCoordinator_relevanceEngine_performCommand_withOptions_completion___block_invoke(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if ([*(a1 + 32) isEqualToString:@"sysdiagnose"])
    {
      if (_fetchedInternalBuildOnceToken_1 != -1)
      {
        __89__RETrainingSimulationCoordinator_relevanceEngine_performCommand_withOptions_completion___block_invoke_cold_1();
      }

      if (_isInternalDevice_1 == 1 && (REProcessIsRelevanced() & 1) != 0)
      {
        goto LABEL_31;
      }
    }

    if ([*(a1 + 32) isEqualToString:@"begin"])
    {
      if (([*(a1 + 40) isActivelyTraining] & 1) == 0)
      {
        [*(a1 + 40) setIsActivelyTraining:1];
        v4 = [MEMORY[0x277CCAB98] defaultCenter];
        [v4 postNotificationName:@"RETrainingSimulationCoordinatorDidBeginTraining" object:*(a1 + 40)];
      }

      [v3 pauseForSimulation];
      goto LABEL_31;
    }

    if ([*(a1 + 32) isEqualToString:@"end"])
    {
      v6 = +[(RESingleton *)RELocationPredictor];
      [v6 _setOverrideLocation:-1 forEngine:*(a1 + 48)];

      v7 = +[(RESingleton *)REDailyRoutinePredictor];
      [v7 _setOverrideRoutineType:0];

      if ([*(a1 + 40) isActivelyTraining])
      {
        [*(a1 + 40) setIsActivelyTraining:0];
        v8 = [MEMORY[0x277CCAB98] defaultCenter];
        [v8 postNotificationName:@"RETrainingSimulationCoordinatorDidEndTraining" object:*(a1 + 40)];
      }

      [v3 resumeFromSimulation];
      goto LABEL_31;
    }

    if ([*(a1 + 32) isEqualToString:@"reset"])
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v9 = [*(*(a1 + 40) + 16) objectForKeyedSubscript:*(a1 + 48)];
      v10 = v9;
      v11 = MEMORY[0x277CBEBF8];
      if (v9)
      {
        v11 = v9;
      }

      v12 = v11;

      v13 = [v12 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v34;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v34 != v15)
            {
              objc_enumerationMutation(v12);
            }

            [v3 removeElement:*(*(&v33 + 1) + 8 * i)];
          }

          v14 = [v12 countByEnumeratingWithState:&v33 objects:v37 count:16];
        }

        while (v14);
      }

      [*(*(a1 + 40) + 16) setObject:0 forKeyedSubscript:*(a1 + 48)];
      goto LABEL_31;
    }

    if ([*(a1 + 32) isEqualToString:@"clear"])
    {
      [v3 trainPendingEventsWithCompletion:0];
      v17 = [v3 modelManager];
      [v17 performModelClearWithCompletion:&__block_literal_global_48];

LABEL_31:
      v5 = 0;
      goto LABEL_32;
    }

    if ([*(a1 + 32) isEqualToString:@"train"])
    {
      [v3 trainPendingEventsWithCompletion:0];
      goto LABEL_31;
    }

    if ([*(a1 + 32) isEqualToString:@"set_core_routine"])
    {
      v5 = [*(a1 + 56) objectForKeyedSubscript:@"core_routine"];
      v19 = RELocationPredictorUserLocationFromString(v5);
      v20 = +[(RESingleton *)RELocationPredictor];
      [v20 _setOverrideLocation:v19 forEngine:*(a1 + 48)];

      v21 = dispatch_time(0, 1000000000);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __89__RETrainingSimulationCoordinator_relevanceEngine_performCommand_withOptions_completion___block_invoke_4;
      block[3] = &unk_2785FA040;
      v32 = *(a1 + 64);
      dispatch_after(v21, MEMORY[0x277D85CD0], block);
      v22 = v32;
LABEL_38:

      goto LABEL_33;
    }

    if ([*(a1 + 32) isEqualToString:@"set_routine_type"])
    {
      v5 = [*(a1 + 56) objectForKeyedSubscript:@"routine_type"];
      v23 = REDailyRoutineTypeFromString(v5);
      v24 = +[(RESingleton *)REDailyRoutinePredictor];
      [v24 _setOverrideRoutineType:v23];

      v25 = dispatch_time(0, 1000000000);
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __89__RETrainingSimulationCoordinator_relevanceEngine_performCommand_withOptions_completion___block_invoke_5;
      v29[3] = &unk_2785FA040;
      v30 = *(a1 + 64);
      dispatch_after(v25, MEMORY[0x277D85CD0], v29);
      v22 = v30;
      goto LABEL_38;
    }

    v26 = [v3 trainingManager];
    v27 = [v26 currentTrainingContext];

    if (v27)
    {
      if ([v27 performSimulationCommand:*(a1 + 32) withOptions:*(a1 + 56)])
      {
        v5 = 0;
LABEL_45:

        goto LABEL_32;
      }

      v28 = 100;
    }

    else
    {
      v28 = 3;
    }

    v5 = RECreateErrorWithCode(v28);
    goto LABEL_45;
  }

  v5 = [*(a1 + 40) _unavailableEngineWithNameError:*(a1 + 48)];
LABEL_32:
  (*(*(a1 + 64) + 16))();
LABEL_33:

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __89__RETrainingSimulationCoordinator_relevanceEngine_performCommand_withOptions_completion___block_invoke_2()
{
  result = _REGetIsInternalBuild();
  _isInternalDevice_1 = result;
  return result;
}

- (void)availableRelevanceEngines:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = +[(RESingleton *)RERelevanceEngineDebugger];
  v6 = [v5 availableEngines];

  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v13 + 1) + 8 * v10) name];
        [v4 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v3[2](v3, v4, 0);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)fetchAllElementIdentifiersInRelevanceEngine:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __90__RETrainingSimulationCoordinator_fetchAllElementIdentifiersInRelevanceEngine_completion___block_invoke;
  v10[3] = &unk_2785FC0E8;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(RETrainingSimulationCoordinator *)self _accesssEngineWithName:v9 completion:v10];
}

void __90__RETrainingSimulationCoordinator_fetchAllElementIdentifiersInRelevanceEngine_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [MEMORY[0x277CBEB18] array];
  if (v9)
  {
    if ([v9 numberOfElementsInSection:@"defaultSectionIdentifier"])
    {
      v4 = 0;
      do
      {
        v5 = [[RESectionPath alloc] initWithSectionName:@"defaultSectionIdentifier" element:v4];
        v6 = [v9 elementAtPath:v5];

        if (v6)
        {
          v7 = [v6 identifier];
          [v3 addObject:v7];
        }

        ++v4;
      }

      while (v4 < [v9 numberOfElementsInSection:@"defaultSectionIdentifier"]);
    }

    v8 = 0;
  }

  else
  {
    v8 = [*(a1 + 32) _unavailableEngineWithNameError:*(a1 + 40)];
  }

  (*(*(a1 + 48) + 16))();
}

- (void)fetchAllElementsInRelevanceEngine:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __80__RETrainingSimulationCoordinator_fetchAllElementsInRelevanceEngine_completion___block_invoke;
  v10[3] = &unk_2785FC0E8;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(RETrainingSimulationCoordinator *)self _accesssEngineWithName:v9 completion:v10];
}

void __80__RETrainingSimulationCoordinator_fetchAllElementsInRelevanceEngine_completion___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [MEMORY[0x277CBEB18] array];
  if (v13)
  {
    if ([v13 numberOfElementsInSection:@"defaultSectionIdentifier"])
    {
      v4 = 0;
      do
      {
        v5 = [[RESectionPath alloc] initWithSectionName:@"defaultSectionIdentifier" element:v4];
        v6 = [v13 elementAtPath:v5];
        if (v6)
        {
          v7 = [v13 dictionaryFromElement:v6];
          v8 = [v7 mutableCopy];

          v9 = [v13 predictionForElementAtPath:v5];
          v10 = MEMORY[0x277CCABB0];
          [v9 probability];
          v11 = [v10 numberWithFloat:?];
          [v8 setObject:v11 forKeyedSubscript:@"probability"];

          [v3 addObject:v8];
        }

        ++v4;
      }

      while (v4 < [v13 numberOfElementsInSection:@"defaultSectionIdentifier"]);
      v12 = 0;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = [*(a1 + 32) _unavailableEngineWithNameError:*(a1 + 40)];
  }

  (*(*(a1 + 48) + 16))();
}

- (void)gatherDiagnosticLogsForRelevanceEngine:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(RETrainingSimulationCoordinator *)self _engineWithName:a3];
  if (v7)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __85__RETrainingSimulationCoordinator_gatherDiagnosticLogsForRelevanceEngine_completion___block_invoke;
    v9[3] = &unk_2785FC110;
    v10 = v6;
    [v7 storeDiagnosticLogsToFile:v9];
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RETrainingSimulationCoordinatorErrorDomain" code:1 userInfo:0];
    (*(v6 + 2))(v6, 0, v8);
  }
}

void __85__RETrainingSimulationCoordinator_gatherDiagnosticLogsForRelevanceEngine_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CBEBC0] fileURLWithPath:a2];
  v6 = 0;
  v4 = [v3 bookmarkDataWithOptions:0 includingResourceValuesForKeys:0 relativeToURL:0 error:&v6];
  v5 = v6;
  (*(*(a1 + 32) + 16))();
}

- (void)relevanceEngine:(id)a3 runActionOfElementWithDescription1:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __97__RETrainingSimulationCoordinator_relevanceEngine_runActionOfElementWithDescription1_completion___block_invoke;
  v14[3] = &unk_2785FC188;
  v15 = v9;
  v16 = self;
  v17 = v8;
  v18 = v10;
  v11 = v8;
  v12 = v10;
  v13 = v9;
  [(RETrainingSimulationCoordinator *)self _accesssEngineWithName:v11 completion:v14];
}

void __97__RETrainingSimulationCoordinator_relevanceEngine_runActionOfElementWithDescription1_completion___block_invoke(uint64_t a1, void *a2)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v7 = [*(a1 + 40) _unavailableEngineWithNameError:*(a1 + 48)];
    goto LABEL_8;
  }

  if (![v3 numberOfElementsInSection:@"defaultSectionIdentifier"])
  {
LABEL_6:
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to find element with description %@", *(a1 + 32)];
    v7 = RECreateErrorWithCodeAndMessage(4, v9);

LABEL_8:
    (*(*(a1 + 56) + 16))();
    goto LABEL_9;
  }

  v5 = 0;
  while (1)
  {
    v6 = [[RESectionPath alloc] initWithSectionName:@"defaultSectionIdentifier" element:v5];
    v7 = [v4 elementAtPath:v6];

    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v23[0] = @"REContentDescription1TextKey";
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __97__RETrainingSimulationCoordinator_relevanceEngine_runActionOfElementWithDescription1_completion___block_invoke_2;
    v16[3] = &unk_2785FC138;
    v17 = *(a1 + 32);
    v18 = &v19;
    REEnumerateContentAttributesOfElement(v8, v7, v16);
    if (*(v20 + 24) == 1)
    {
      break;
    }

    _Block_object_dispose(&v19, 8);
    if (++v5 >= [v4 numberOfElementsInSection:@"defaultSectionIdentifier"])
    {
      goto LABEL_6;
    }
  }

  v11 = [v7 action];
  v12 = *(*(a1 + 40) + 24);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __97__RETrainingSimulationCoordinator_relevanceEngine_runActionOfElementWithDescription1_completion___block_invoke_3;
  v14[3] = &unk_2785FC160;
  v15 = *(a1 + 56);
  v13 = MEMORY[0x22AABC5E0](v14);
  [v12 setObject:v13 forKey:v11];

  [v11 setForceExecution:1];
  [v11 setDelegate:*(a1 + 40)];
  [v11 _performWithContext:MEMORY[0x277CBEC10]];

  _Block_object_dispose(&v19, 8);
LABEL_9:

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __97__RETrainingSimulationCoordinator_relevanceEngine_runActionOfElementWithDescription1_completion___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 isEqualToString:*(a1 + 32)];
  if (result)
  {
    *a3 = 1;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

void __97__RETrainingSimulationCoordinator_relevanceEngine_runActionOfElementWithDescription1_completion___block_invoke_3(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = RECreateErrorWithCode(101);
  }

  v4 = v3;
  (*(*(a1 + 32) + 16))();
}

- (void)relevanceEngine:(id)a3 encodedObjectAtPath:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __82__RETrainingSimulationCoordinator_relevanceEngine_encodedObjectAtPath_completion___block_invoke;
  v12[3] = &unk_2785FC1B0;
  v13 = v8;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  [(RETrainingSimulationCoordinator *)self _accesssEngineWithName:a3 completion:v12];
}

void __82__RETrainingSimulationCoordinator_relevanceEngine_encodedObjectAtPath_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) mutableCopy];
  if (v3)
  {
    v12 = [(REExportedValueEncoder *)[REJSONExportedValueEncoder alloc] initWithOptions:0];
    v5 = [REExportedValue exportedValueForObject:v3];
    while ([v4 count])
    {
      if ([v5 type] == 2 && objc_msgSend(v5, "propertyCount") == 1)
      {
        v14 = 0;
        v15 = &v14;
        v16 = 0x3032000000;
        v17 = __Block_byref_object_copy__13;
        v18 = __Block_byref_object_dispose__13;
        v19 = 0;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __82__RETrainingSimulationCoordinator_relevanceEngine_encodedObjectAtPath_completion___block_invoke_81;
        v13[3] = &unk_2785F9DF0;
        v13[4] = &v14;
        [v5 enumerateValuesUsingBlock:v13];
        v6 = v15[5];
        if (v6)
        {
          v7 = v6;

          v5 = v7;
        }

        _Block_object_dispose(&v14, 8);

        if (v6)
        {
          continue;
        }
      }

      v8 = [v4 firstObject];
      [v4 removeObjectAtIndex:0];
      v9 = [v5 exportedValueForKey:v8];

      v5 = v9;
    }

    v10 = [(REExportedValueEncoder *)v12 dataFromExportedValue:v5];
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v10 encoding:4];
  }

  else
  {
    v11 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t __82__RETrainingSimulationCoordinator_relevanceEngine_encodedObjectAtPath_completion___block_invoke_81(uint64_t a1)
{
  v2 = [REExportedValue exportedValueForObject:?];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)elementAction:(id)a3 didFinishTask:(BOOL)a4
{
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__RETrainingSimulationCoordinator_elementAction_didFinishTask___block_invoke;
  block[3] = &unk_2785FB3A8;
  block[4] = self;
  v9 = v6;
  v10 = a4;
  v7 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __63__RETrainingSimulationCoordinator_elementAction_didFinishTask___block_invoke(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 24) objectForKey:*(a1 + 40)];
  [*(*(a1 + 32) + 24) removeObjectForKey:*(a1 + 40)];
  v2 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 48));
    v2 = v3;
  }
}

- (void)elementAction:(id)a3 wantsViewControllerDisplayed:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (UIKitLibraryCore())
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2050000000;
    v7 = getUIWindowClass_softClass;
    v15 = getUIWindowClass_softClass;
    if (!getUIWindowClass_softClass)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __getUIWindowClass_block_invoke;
      v11[3] = &unk_2785F9BC0;
      v11[4] = &v12;
      __getUIWindowClass_block_invoke(v11);
      v7 = v13[3];
    }

    v8 = v7;
    _Block_object_dispose(&v12, 8);
    v9 = [v7 keyWindow];
    v10 = [v9 rootViewController];
    [v10 presentViewController:v6 animated:0 completion:0];
  }
}

@end