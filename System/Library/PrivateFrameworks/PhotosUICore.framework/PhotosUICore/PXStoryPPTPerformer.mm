@interface PXStoryPPTPerformer
- (NSString)currentTestName;
- (PXAsyncIterator)configurationIterator;
- (PXPPTDelegate)delegate;
- (PXStoryPPTPerformer)init;
- (PXStoryPPTPerformer)initWithDelegate:(id)a3 testOptions:(id)a4;
- (PXStoryPPTResultsAggregate)resultsAggregate;
- (double)currentTestTimeout;
- (id)_configurationSpecificSubtestName:(id)a3;
- (id)_tungstenViewFromStoryPlayerTestElement:(id)a3;
- (id)_viewModelForPlayerTestElement:(id)a3;
- (int64_t)currentTestIterations;
- (void)_callPlaybackEndHandlerIfNeeded;
- (void)_callPlaybackReadyToPlayHandlerIfNeeded;
- (void)_exportWithTestElement:(id)a3 atResolution:(CGSize)a4 completion:(id)a5;
- (void)_finalize;
- (void)_installPlaybackEndHandler:(id)a3;
- (void)_installPlaybackReadyToPlayHandler:(id)a3;
- (void)_pausePlaybackWithTestElement:(id)a3;
- (void)_preparePlaybackTestWithElement:(id)a3;
- (void)_produceTimelineForViewConfiguration:(id)a3 recipeManagerWithProducedRecipe:(id)a4 initialCompletionHandler:(id)a5 finalCompletionHandler:(id)a6;
- (void)_requestRecipeForViewConfiguration:(id)a3 resultHandler:(id)a4;
- (void)_runScrollSubtestOnScrollView:(id)a3 containedInTungstenView:(id)a4 completion:(id)a5;
- (void)_runScrubbingSubtestWithTestElement:(id)a3 direction:(int64_t)a4 subtestName:(id)a5 completion:(id)a6;
- (void)_runScrubbingSubtestsWithTestElement:(id)a3 completion:(id)a4;
- (void)_skipToSegmentWithTestElement:(id)a3 direction:(int64_t)a4 completion:(id)a5;
- (void)enumerateFeedConfigurationsUsingBlock:(id)a3 completion:(id)a4;
- (void)enumerateStoryConfigurationsUsingBlock:(id)a3 completion:(id)a4;
- (void)finishSubtestWithName:(id)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)runExportTestWithElement:(id)a3 completion:(id)a4;
- (void)runFeedScrollingTestWithElement:(id)a3 completion:(id)a4;
- (void)runPlaybackStartTestWithElement:(id)a3 completion:(id)a4;
- (void)runPlaybackTestWithElement:(id)a3 completion:(id)a4;
- (void)runRecipeProductionTestWithViewConfiguration:(id)a3 completion:(id)a4;
- (void)runScrollingWithTestElement:(id)a3 completion:(id)a4;
- (void)runScrubbingTestWithElement:(id)a3 completion:(id)a4;
- (void)runTimelineProductionTestWithViewConfiguration:(id)a3 completion:(id)a4;
- (void)setObservedModel:(id)a3;
- (void)startSubtestWithName:(id)a3 metrics:(id)a4;
@end

@implementation PXStoryPPTPerformer

- (PXAsyncIterator)configurationIterator
{
  WeakRetained = objc_loadWeakRetained(&self->_configurationIterator);

  return WeakRetained;
}

- (PXPPTDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_runScrollSubtestOnScrollView:(id)a3 containedInTungstenView:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [(PXStoryPPTPerformer *)self currentTestName];
  v12 = [(PXStoryPPTPerformer *)self configurationName];
  v13 = [(PXStoryPPTPerformer *)self delegate];
  v14 = [(PXStoryPPTPerformer *)self testOptions];
  v15 = [(PXStoryPPTPerformer *)self _configurationSpecificSubtestName:@"Scrolling"];
  [(PXStoryPPTPerformer *)self startSubtestWithName:@"Scrolling" metrics:&unk_1F1911788];
  [v8 ppt_prepareForTest:v11 withOptions:v14 isScrollTest:1];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __88__PXStoryPPTPerformer__runScrollSubtestOnScrollView_containedInTungstenView_completion___block_invoke;
  v21[3] = &unk_1E77428C0;
  v22 = v8;
  v23 = v11;
  v24 = self;
  v25 = @"Scrolling";
  v26 = v12;
  v27 = v13;
  v28 = v9;
  v16 = v9;
  v17 = v13;
  v18 = v12;
  v19 = v11;
  v20 = v8;
  [v17 runScrollTestOnScrollView:v10 withOptions:v14 subTestName:v15 completion:v21];
}

void __88__PXStoryPPTPerformer__runScrollSubtestOnScrollView_containedInTungstenView_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 ppt_extraResults];
  v8 = [v6 mutableCopy];

  [v8 addEntriesFromDictionary:v7];
  [*(a1 + 32) ppt_cleanUpAfterTest:*(a1 + 40) isScrollTest:1];
  if (a2)
  {
    [*(a1 + 48) finishSubtestWithName:*(a1 + 56)];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __88__PXStoryPPTPerformer__runScrollSubtestOnScrollView_containedInTungstenView_completion___block_invoke_2;
    v12[3] = &unk_1E7742898;
    v9 = *(a1 + 64);
    v10 = *(a1 + 48);
    v13 = v9;
    v14 = v10;
    [v8 enumerateKeysAndObjectsUsingBlock:v12];
  }

  else
  {
    [*(a1 + 72) failedTest:*(a1 + 40) withFailureFormat:@"Scrolling failure, results %@", v8];
  }

  v11 = *(a1 + 80);
  if (v11)
  {
    (*(v11 + 16))(v11, a2);
  }
}

void __88__PXStoryPPTPerformer__runScrollSubtestOnScrollView_containedInTungstenView_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = *(a1 + 32);
  v7 = a3;
  v9 = [v5 stringWithFormat:@"sub:%@:%@", v6, a2];
  v8 = [*(a1 + 40) extraResults];
  [v8 setObject:v7 forKeyedSubscript:v9];
}

- (id)_viewModelForPlayerTestElement:(id)a3
{
  v3 = [a3 storyView];
  v4 = [v3 viewModel];

  return v4;
}

- (int64_t)currentTestIterations
{
  v2 = [(PXStoryPPTPerformer *)self testOptions];
  v3 = [v2 objectForKeyedSubscript:@"iterations"];

  if (v3)
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (double)currentTestTimeout
{
  v2 = [(PXStoryPPTPerformer *)self testOptions];
  v3 = [v2 objectForKeyedSubscript:@"timeoutInSeconds"];

  if (!v3)
  {
    PXAssertGetLog();
  }

  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (NSString)currentTestName
{
  v2 = [(PXStoryPPTPerformer *)self testOptions];
  v3 = [v2 objectForKeyedSubscript:@"testName"];

  return v3;
}

- (void)_pausePlaybackWithTestElement:(id)a3
{
  v3 = [(PXStoryPPTPerformer *)self _viewModelForPlayerTestElement:a3];
  [v3 performChanges:&__block_literal_global_195009];
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v9 = a3;
  if (ObservedModelObservationContext != a5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXStoryPPTPerformer.m" lineNumber:657 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v11 = v9;
  if ((a4 & 0x200000) != 0)
  {
    [(PXStoryPPTPerformer *)self _callPlaybackReadyToPlayHandlerIfNeeded];
    v9 = v11;
  }

  if ((a4 & 0x40000000000) != 0)
  {
    [(PXStoryPPTPerformer *)self _callPlaybackEndHandlerIfNeeded];
    v9 = v11;
  }
}

- (void)runFeedScrollingTestWithElement:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8 = [a3 ppt_scrollView];
  v7 = [v8 px_ancestorViewOfClass:objc_opt_class()];
  [(PXStoryPPTPerformer *)self _runScrollSubtestOnScrollView:v8 containedInTungstenView:v7 completion:v6];
}

- (void)enumerateFeedConfigurationsUsingBlock:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  +[PXStorySettings sharedInstance];
  v9 = [objc_claimAutoreleasedReturnValue() currentFeedPPTPreset];
  v10 = [(PXStoryPPTPerformer *)self testOptions];
  v11 = [PXFeedPPTConfiguration configurationsForPreset:v9 testOptions:v10];

  v12 = [(PXStoryPPTPerformer *)self currentTestName];
  v13 = [(PXStoryPPTPerformer *)self delegate];
  [v13 startedTest:v12];
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v17 = 1;
  v14 = [(PXStoryPPTPerformer *)self configurationIterator];

  if (v14)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PXStoryPPTPerformer.m" lineNumber:612 description:@"nested configuration enumeration isn't supported yet"];
  }

  [v11 count];
  v11;
  v7;
  v13;
  v12;
  v8;
  PXIterateAsynchronously();
}

void __72__PXStoryPPTPerformer_enumerateFeedConfigurationsUsingBlock_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setConfigurationIterator:v3];
  v4 = [*(a1 + 40) objectAtIndexedSubscript:{objc_msgSend(v3, "index")}];
  v5 = [v4 name];
  [*(a1 + 32) setConfigurationName:v5];

  v6 = [v4 feedConfiguration];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__PXStoryPPTPerformer_enumerateFeedConfigurationsUsingBlock_completion___block_invoke_2;
  v11[3] = &unk_1E7742528;
  v8 = *(a1 + 48);
  v7 = *(a1 + 56);
  v12 = v3;
  v13 = v7;
  v9 = *(v8 + 16);
  v10 = v3;
  v9(v8, v6, v11);
}

uint64_t __72__PXStoryPPTPerformer_enumerateFeedConfigurationsUsingBlock_completion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setConfigurationIterator:0];
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    [*(a1 + 32) _finalize];
    v3 = *(a1 + 40);
    v2 = *(a1 + 48);
    v4 = [*(a1 + 32) extraResults];
    [v3 finishedTest:v2 extraResults:v4];
  }

  result = *(a1 + 56);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

uint64_t __72__PXStoryPPTPerformer_enumerateFeedConfigurationsUsingBlock_completion___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    return [*(a1 + 32) next];
  }

  *(*(*(a1 + 40) + 8) + 24) = 0;
  return [*(a1 + 32) stop];
}

- (void)_produceTimelineForViewConfiguration:(id)a3 recipeManagerWithProducedRecipe:(id)a4 initialCompletionHandler:(id)a5 finalCompletionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v31 = a5;
  v32 = a6;
  v12 = [v10 configuration];
  v13 = [v12 timelineProducer];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = PXStoryTimelineProducerCreateDefault();
  }

  v16 = v15;

  v17 = [[PXStoryResourcesDataSourceManager alloc] initWithRecipeManager:v11];
  v18 = [PXStoryStyleManager alloc];
  v19 = [v12 errorReporter];
  v20 = [(PXStoryStyleManager *)v18 initWithRecipeManager:v11 errorReporter:v19];

  v21 = [PXStoryTimelineSpecManager alloc];
  v22 = [v10 extendedTraitCollection];
  v23 = [(PXStoryTimelineSpecManager *)v21 initWithExtendedTraitCollection:v22 configuration:v12];

  v24 = [PXStoryTimelineManager alloc];
  v25 = [v12 errorReporter];
  v26 = [(PXStoryTimelineManager *)v24 initWithTimelineProducer:v16 resourcesDataSourceManager:v17 styleManager:v20 specManager:v23 loadingCoordinator:0 errorReporter:v25 options:0 paperTrailOptions:0];

  [(PXStoryPPTPerformer *)self currentTestTimeout];
  v28 = v27;
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x2020000000;
  v43 = 0;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2020000000;
  v41 = 0;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __140__PXStoryPPTPerformer__produceTimelineForViewConfiguration_recipeManagerWithProducedRecipe_initialCompletionHandler_finalCompletionHandler___block_invoke;
  v35[3] = &unk_1E7742848;
  v38 = v42;
  v29 = v31;
  v36 = v29;
  v39 = v40;
  v37 = v32;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __140__PXStoryPPTPerformer__produceTimelineForViewConfiguration_recipeManagerWithProducedRecipe_initialCompletionHandler_finalCompletionHandler___block_invoke_2;
  v33[3] = &unk_1E774C250;
  v30 = v37;
  v34 = v30;
  [(PXObservable *)v26 pxStory_enumerateStatesWithTimeout:3 watchingChanges:v35 usingBlock:v33 timeoutHandler:v28];

  _Block_object_dispose(v40, 8);
  _Block_object_dispose(v42, 8);
}

void __140__PXStoryPPTPerformer__produceTimelineForViewConfiguration_recipeManagerWithProducedRecipe_initialCompletionHandler_finalCompletionHandler___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v10 = a2;
  v5 = [v10 timeline];
  v6 = v5;
  v7 = *(a1[6] + 8);
  if ((*(v7 + 24) & 1) == 0)
  {
    *(v7 + 24) = 1;
    if ([v5 numberOfSegments])
    {
      (*(a1[4] + 16))();
    }

    else
    {
      v8 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"initially delivered timeline is unexpectedly empty"];
      (*(a1[4] + 16))();
      *a3 = 1;
    }
  }

  if ([v10 isTimelineFinal])
  {
    v9 = *(a1[7] + 8);
    if ((*(v9 + 24) & 1) == 0)
    {
      *(v9 + 24) = 1;
      (*(a1[5] + 16))();
      *a3 = 1;
    }
  }
}

void __140__PXStoryPPTPerformer__produceTimelineForViewConfiguration_recipeManagerWithProducedRecipe_initialCompletionHandler_finalCompletionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"timed out"];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)runTimelineProductionTestWithViewConfiguration:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(PXStoryPPTPerformer *)self currentTestName];
  objc_claimAutoreleasedReturnValue();
  [(PXStoryPPTPerformer *)self currentTestIterations];
  [(PXStoryPPTPerformer *)self delegate];
  objc_claimAutoreleasedReturnValue();
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = 0;
  v6;
  v7;
  PXIterateAsynchronously();
}

void __81__PXStoryPPTPerformer_runTimelineProductionTestWithViewConfiguration_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __81__PXStoryPPTPerformer_runTimelineProductionTestWithViewConfiguration_completion___block_invoke_2;
  v8[3] = &unk_1E77427F8;
  v8[4] = v5;
  v9 = v4;
  v10 = *(a1 + 48);
  v6 = *(a1 + 64);
  v11 = v3;
  v12 = v6;
  v7 = v3;
  [v5 _requestRecipeForViewConfiguration:v9 resultHandler:v8];
}

uint64_t __81__PXStoryPPTPerformer_runTimelineProductionTestWithViewConfiguration_completion___block_invoke_5(uint64_t a1)
{
  if (*(*(*(a1 + 56) + 8) + 24) != *(a1 + 64))
  {
    [*(a1 + 32) failedTest:*(a1 + 40)];
  }

  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __81__PXStoryPPTPerformer_runTimelineProductionTestWithViewConfiguration_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [v6 recipe];
  if (v8)
  {
    [*(a1 + 32) startSubtestWithName:@"totalTimeBetweenRecipeAndDeliveredTimeline" metrics:&unk_1F1911740];
    [*(a1 + 32) startSubtestWithName:@"timeBetweenRecipeAndDeliveredInitialTimeline" metrics:&unk_1F1911758];
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __81__PXStoryPPTPerformer_runTimelineProductionTestWithViewConfiguration_completion___block_invoke_3;
    v20[3] = &unk_1E77427A8;
    v20[4] = v9;
    v21 = *(a1 + 48);
    v22 = *(a1 + 64);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __81__PXStoryPPTPerformer_runTimelineProductionTestWithViewConfiguration_completion___block_invoke_4;
    v16[3] = &unk_1E77427D0;
    v12 = *(a1 + 64);
    v11 = *(a1 + 72);
    v16[4] = *(a1 + 32);
    v19 = v11;
    v17 = v12;
    v18 = *(a1 + 48);
    [v9 _produceTimelineForViewConfiguration:v10 recipeManagerWithProducedRecipe:v6 initialCompletionHandler:v20 finalCompletionHandler:v16];
  }

  else
  {
    v14 = *(a1 + 48);
    v13 = *(a1 + 56);
    v15 = [v7 localizedDescription];
    [v14 failedTest:v13 withFailureFormat:@"recipe production failed: %@", v15];
  }
}

uint64_t __81__PXStoryPPTPerformer_runTimelineProductionTestWithViewConfiguration_completion___block_invoke_3(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    [*(a1 + 32) finishSubtestWithName:@"timeBetweenRecipeAndDeliveredInitialTimeline"];
    v4 = *(a1 + 32);

    return [v4 startSubtestWithName:@"timeBetweenRecipeAndDeliveredFinalTimeline" metrics:&unk_1F1911770];
  }

  else
  {
    [*(a1 + 40) failedTest:*(a1 + 48) withFailureFormat:@"failed to produce initial timeline: %@", a3];
    v6 = *(a1 + 56);

    return [v6 stop];
  }
}

uint64_t __81__PXStoryPPTPerformer_runTimelineProductionTestWithViewConfiguration_completion___block_invoke_4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    [*(a1 + 32) finishSubtestWithName:@"timeBetweenRecipeAndDeliveredFinalTimeline"];
    [*(a1 + 32) finishSubtestWithName:@"totalTimeBetweenRecipeAndDeliveredTimeline"];
    ++*(*(*(a1 + 64) + 8) + 24);
    v4 = *(a1 + 40);

    return [v4 next];
  }

  else
  {
    [*(a1 + 48) failedTest:*(a1 + 56) withFailureFormat:@"failed to produce final timeline: %@", a3];
    v6 = *(a1 + 40);

    return [v6 stop];
  }
}

- (void)_requestRecipeForViewConfiguration:(id)a3 resultHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [PXStoryRecipeManager alloc];
  v9 = [v6 configuration];
  v10 = [(PXStoryRecipeManager *)v8 initWithConfiguration:v9];

  [(PXStoryPPTPerformer *)self currentTestTimeout];
  v12 = v11;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__195061;
  v26[4] = __Block_byref_object_dispose__195062;
  v27 = 0;
  v13 = dispatch_group_create();
  dispatch_group_enter(v13);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __72__PXStoryPPTPerformer__requestRecipeForViewConfiguration_resultHandler___block_invoke;
  v23[3] = &unk_1E7742780;
  v25 = v26;
  v24 = v13;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __72__PXStoryPPTPerformer__requestRecipeForViewConfiguration_resultHandler___block_invoke_2;
  v21[3] = &unk_1E774C648;
  v14 = v24;
  v22 = v14;
  [(PXObservable *)v10 pxStory_enumerateStatesWithTimeout:3 watchingChanges:v23 usingBlock:v21 timeoutHandler:v12];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __72__PXStoryPPTPerformer__requestRecipeForViewConfiguration_resultHandler___block_invoke_3;
  v17[3] = &unk_1E7744A38;
  v18 = v10;
  v19 = v7;
  v20 = v26;
  v15 = v7;
  v16 = v10;
  dispatch_group_notify(v14, MEMORY[0x1E69E96A0], v17);

  _Block_object_dispose(v26, 8);
}

void __72__PXStoryPPTPerformer__requestRecipeForViewConfiguration_resultHandler___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  if ([v8 isRecipeFinal])
  {
    v5 = [v8 resultsByComponent];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    *a3 = 1;
    dispatch_group_leave(*(a1 + 32));
  }
}

void __72__PXStoryPPTPerformer__requestRecipeForViewConfiguration_resultHandler___block_invoke_3(uint64_t a1)
{
  if ([*(a1 + 32) isRecipeFinal] && (objc_msgSend(*(a1 + 32), "recipe"), v2 = objc_claimAutoreleasedReturnValue(), v2, !v2))
  {
    v3 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"failed to produce final recipe"];
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(*(a1 + 40) + 16))();
}

- (void)runRecipeProductionTestWithViewConfiguration:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PXStoryPPTPerformer *)self resultsAggregate];
  v9 = [(PXStoryPPTPerformer *)self configurationName];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__PXStoryPPTPerformer_runRecipeProductionTestWithViewConfiguration_completion___block_invoke;
  v14[3] = &unk_1E7742758;
  v19 = v10;
  v15 = v8;
  v16 = v9;
  v17 = self;
  v18 = v6;
  v11 = v6;
  v12 = v9;
  v13 = v8;
  [(PXStoryPPTPerformer *)self _requestRecipeForViewConfiguration:v7 resultHandler:v14];
}

void __79__PXStoryPPTPerformer_runRecipeProductionTestWithViewConfiguration_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x1E695DF00];
  v10 = a2;
  [v9 timeIntervalSinceReferenceDate];
  v12 = v11;
  v13 = *(a1 + 64);
  v14 = [v10 recipe];

  if (v14)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __79__PXStoryPPTPerformer_runRecipeProductionTestWithViewConfiguration_completion___block_invoke_2;
    v18[3] = &unk_1E7742730;
    v19 = *(a1 + 32);
    v20 = *(a1 + 40);
    [v7 enumerateKeysAndObjectsUsingBlock:v18];
    [*(a1 + 32) addValue:1 metric:@"Recipe:Total" forMeasure:*(a1 + 40) configuration:v12 - v13];
  }

  else
  {
    v15 = [*(a1 + 48) delegate];
    v16 = [*(a1 + 48) currentTestName];
    v17 = [v8 localizedDescription];
    [v15 failedTest:v16 withFailureFormat:@"recipe production failed: %@", v17];
  }

  (*(*(a1 + 56) + 16))();
}

void __79__PXStoryPPTPerformer_runRecipeProductionTestWithViewConfiguration_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a3;
  v7 = a2;
  v11 = [[v5 alloc] initWithFormat:@"Recipe:%@", v7];

  v8 = *(a1 + 32);
  [v6 productionDuration];
  v10 = v9;

  [v8 addValue:1 metric:v11 forMeasure:*(a1 + 40) configuration:v10];
}

- (void)_exportWithTestElement:(id)a3 atResolution:(CGSize)a4 completion:(id)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a5;
  v10 = a3;
  v11 = objc_alloc_init(PXStoryExportVideoOptions);
  [(PXStoryExportVideoOptions *)v11 setFrameRate:30];
  [(PXStoryExportVideoOptions *)v11 setResolution:width, height];
  v12 = objc_alloc_init(PXStoryExportManager);
  [(PXStoryExportManager *)v12 setQualityOfService:25];
  v13 = [v10 storyView];

  v14 = [v13 viewModel];
  v15 = [v14 mainConfiguration];
  v16 = [v15 copy];

  [v16 setSongsProducerKind:1];
  v17 = [[PXStoryExportConfiguration alloc] initWithConfiguration:v16 videoOptions:v11];
  v18 = MEMORY[0x1E696AEC0];
  v19 = [(PXStoryPPTPerformer *)self currentTestName];
  v20 = [(PXStoryPPTPerformer *)self configurationName];
  v21 = [v18 stringWithFormat:@"%@-%@.mov", v19, v20];

  v22 = MEMORY[0x1E695DFF8];
  v23 = NSTemporaryDirectory();
  v24 = [v22 fileURLWithPath:v23];
  v25 = [v24 URLByAppendingPathComponent:v21];

  [(PXStoryPPTPerformer *)self setExportManager:v12];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __70__PXStoryPPTPerformer__exportWithTestElement_atResolution_completion___block_invoke;
  v29[3] = &unk_1E774ACE8;
  v29[4] = self;
  v30 = v25;
  v31 = v9;
  v26 = v9;
  v27 = v25;
  v28 = [(PXStoryExportManager *)v12 requestExportWithDestinationURL:v27 configuration:v17 initialSongResource:0 progressHandler:0 completionHandler:v29];
}

void __70__PXStoryPPTPerformer__exportWithTestElement_atResolution_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) setExportManager:0];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__PXStoryPPTPerformer__exportWithTestElement_atResolution_completion___block_invoke_2;
  block[3] = &unk_1E7742708;
  v13 = a2;
  v6 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v10 = v6;
  v7 = *(a1 + 48);
  v11 = v5;
  v12 = v7;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __70__PXStoryPPTPerformer__exportWithTestElement_atResolution_completion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 64) != 1)
  {
    v9 = *(*(a1 + 56) + 16);
    goto LABEL_5;
  }

  v2 = [*(a1 + 32) testOptions];
  v3 = [v2 objectForKeyedSubscript:@"keepFiles"];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [*(a1 + 40) path];
    v7 = [v5 stringWithFormat:@"exportPath:%@", v6];

    v8 = [*(a1 + 32) extraResults];
    [v8 setObject:&unk_1F190D588 forKeyedSubscript:v7];

    v9 = *(*(a1 + 56) + 16);
LABEL_5:

    v9();
    return;
  }

  (*(*(a1 + 56) + 16))();
  v11 = [MEMORY[0x1E696AC08] defaultManager];
  v10 = [*(a1 + 40) path];
  [v11 removeItemAtPath:v10 error:0];
}

- (void)runExportTestWithElement:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PXStoryPPTPerformer *)self delegate];
  v9 = [(PXStoryPPTPerformer *)self currentTestName];
  v10 = [(PXStoryPPTPerformer *)self testOptions];
  v11 = [v10 objectForKeyedSubscript:@"exportOrientation"];

  v12 = [v11 isEqualToString:@"landscape"];
  if (v12)
  {
    v13 = 1080.0;
  }

  else
  {
    v13 = 1920.0;
  }

  if (v12)
  {
    v14 = 1920.0;
  }

  else
  {
    v14 = 1080.0;
  }

  [(PXStoryPPTPerformer *)self _preparePlaybackTestWithElement:v6];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __59__PXStoryPPTPerformer_runExportTestWithElement_completion___block_invoke;
  v19[3] = &unk_1E77426E0;
  v19[4] = self;
  v20 = v6;
  v24 = v14;
  v25 = v13;
  v21 = v8;
  v22 = v9;
  v23 = v7;
  v15 = v7;
  v16 = v9;
  v17 = v8;
  v18 = v6;
  [(PXStoryPPTPerformer *)self _installPlaybackReadyToPlayHandler:v19];
}

void __59__PXStoryPPTPerformer_runExportTestWithElement_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _pausePlaybackWithTestElement:*(a1 + 40)];
  [*(a1 + 32) startSubtestWithName:@"Export" metrics:&unk_1F1911728];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__PXStoryPPTPerformer_runExportTestWithElement_completion___block_invoke_2;
  v4[3] = &unk_1E774AD10;
  v4[4] = v2;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  [v2 _exportWithTestElement:v3 atResolution:v4 completion:{*(a1 + 72), *(a1 + 80)}];
}

void __59__PXStoryPPTPerformer_runExportTestWithElement_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  if (a2)
  {
    [*(a1 + 32) finishSubtestWithName:@"Export"];
  }

  else
  {
    v6 = *(a1 + 40);
    v5 = *(a1 + 48);
    v7 = [*(a1 + 32) configurationName];
    [v6 failedTest:v5 withFailureFormat:@"failure for configuration %@ error %@", v7, v9];
  }

  v8 = *(a1 + 56);
  if (v8)
  {
    (*(v8 + 16))(v8, a2);
  }
}

- (id)_tungstenViewFromStoryPlayerTestElement:(id)a3
{
  v3 = [a3 storyView];
  v4 = [v3 tungstenView];

  return v4;
}

- (void)runScrollingWithTestElement:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PXStoryPPTPerformer *)self _pausePlaybackWithTestElement:v7];
  v9 = [(PXStoryPPTPerformer *)self _tungstenViewFromStoryPlayerTestElement:v7];

  v8 = [(PXStoryPPTPerformer *)self _mainScrollViewInTungstenView:v9];
  [(PXStoryPPTPerformer *)self _runScrollSubtestOnScrollView:v8 containedInTungstenView:v9 completion:v6];
}

- (void)_skipToSegmentWithTestElement:(id)a3 direction:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v17 = 0;
  v10 = [(PXStoryPPTPerformer *)self _viewModelForPlayerTestElement:v8];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __74__PXStoryPPTPerformer__skipToSegmentWithTestElement_direction_completion___block_invoke;
  v15[3] = &unk_1E77426B8;
  v15[4] = v16;
  v15[5] = a4;
  [v10 performChanges:v15];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __74__PXStoryPPTPerformer__skipToSegmentWithTestElement_direction_completion___block_invoke_2;
  v12[3] = &unk_1E77463F8;
  v13 = v9;
  v14 = v16;
  v11 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], v12);

  _Block_object_dispose(v16, 8);
}

uint64_t __74__PXStoryPPTPerformer__skipToSegmentWithTestElement_direction_completion___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 skipToSegmentWithOffset:*(a1 + 40)];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (void)_runScrubbingSubtestWithTestElement:(id)a3 direction:(int64_t)a4 subtestName:(id)a5 completion:(id)a6
{
  v8 = a3;
  v9 = a5;
  v10 = a6;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v11[3] = 0;
  v9;
  v8;
  v10;
  PXIterateAsynchronously();
}

void __92__PXStoryPPTPerformer__runScrubbingSubtestWithTestElement_direction_subtestName_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) startSubtestWithName:*(a1 + 40) metrics:&unk_1F1911710];
  v4 = *(a1 + 32);
  v5 = *(a1 + 64);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __92__PXStoryPPTPerformer__runScrubbingSubtestWithTestElement_direction_subtestName_completion___block_invoke_2;
  v10[3] = &unk_1E7742668;
  v10[4] = v4;
  v6 = *(a1 + 48);
  v7 = *(a1 + 40);
  v8 = *(a1 + 56);
  v12 = v3;
  v13 = v8;
  v11 = v7;
  v9 = v3;
  [v4 _skipToSegmentWithTestElement:v6 direction:v5 completion:v10];
}

uint64_t __92__PXStoryPPTPerformer__runScrubbingSubtestWithTestElement_direction_subtestName_completion___block_invoke_3(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(*(*(a1 + 40) + 8) + 24) <= 4)
  {
    v2 = PLStoryGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(*(*(a1 + 40) + 8) + 24);
      v5 = 134218240;
      v6 = v3;
      v7 = 2048;
      v8 = 5;
      _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_ERROR, "scrubbing test failed because number of skips (%ti) is too low (minimum: %ti)", &v5, 0x16u);
    }
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t __92__PXStoryPPTPerformer__runScrubbingSubtestWithTestElement_direction_subtestName_completion___block_invoke_2(uint64_t a1, int a2)
{
  [*(a1 + 32) finishSubtestWithName:*(a1 + 40)];
  if (a2)
  {
    ++*(*(*(a1 + 56) + 8) + 24);
    v4 = *(a1 + 48);

    return [v4 next];
  }

  else
  {
    v6 = *(a1 + 48);

    return [v6 stop];
  }
}

- (void)_runScrubbingSubtestsWithTestElement:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__PXStoryPPTPerformer__runScrubbingSubtestsWithTestElement_completion___block_invoke;
  v10[3] = &unk_1E7742640;
  v11 = v6;
  v12 = v7;
  v10[4] = self;
  v8 = v6;
  v9 = v7;
  [(PXStoryPPTPerformer *)self _runScrubbingSubtestWithTestElement:v8 direction:1 subtestName:@"SkipNext-Latency" completion:v10];
}

uint64_t __71__PXStoryPPTPerformer__runScrubbingSubtestsWithTestElement_completion___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    return [*(a1 + 32) _runScrubbingSubtestWithTestElement:*(a1 + 40) direction:-1 subtestName:@"SkipPrevious-Latency" completion:*(a1 + 48)];
  }

  else
  {
    return (*(*(a1 + 48) + 16))();
  }
}

- (void)runScrubbingTestWithElement:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PXStoryPPTPerformer *)self delegate];
  v9 = [(PXStoryPPTPerformer *)self currentTestName];
  if (v6)
  {
    v10 = [(PXStoryPPTPerformer *)self currentTestIterations];
    [(PXStoryPPTPerformer *)self _preparePlaybackTestWithElement:v6];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __62__PXStoryPPTPerformer_runScrubbingTestWithElement_completion___block_invoke;
    v11[3] = &unk_1E7743080;
    v11[4] = self;
    v12 = v6;
    v13 = v8;
    v14 = v9;
    v16 = v10;
    v15 = v7;
    [(PXStoryPPTPerformer *)self _installPlaybackReadyToPlayHandler:v11];
  }

  else
  {
    [v8 failedTest:v9 withFailureFormat:@"Missing PXStoryPlayerTestElement."];
  }
}

void __62__PXStoryPPTPerformer_runScrubbingTestWithElement_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _pausePlaybackWithTestElement:*(a1 + 40)];
  v2 = dispatch_time(0, 500000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__PXStoryPPTPerformer_runScrubbingTestWithElement_completion___block_invoke_2;
  block[3] = &unk_1E7743080;
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v12 = *(a1 + 72);
  v7 = *(a1 + 32);
  v5 = *(&v7 + 1);
  *&v6 = v3;
  *(&v6 + 1) = v4;
  v9 = v6;
  v10 = v7;
  v11 = *(a1 + 64);
  dispatch_after(v2, MEMORY[0x1E69E96A0], block);
}

void __62__PXStoryPPTPerformer_runScrubbingTestWithElement_completion___block_invoke_2(id *a1)
{
  [a1[4] startedTest:a1[5]];
  v2[0] = 0;
  v2[1] = v2;
  v2[2] = 0x2020000000;
  v3 = 1;
  a1[7];
  a1[4];
  a1[5];
  a1[8];
  PXIterateAsynchronously();
}

void __62__PXStoryPPTPerformer_runScrubbingTestWithElement_completion___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__PXStoryPPTPerformer_runScrubbingTestWithElement_completion___block_invoke_4;
  v8[3] = &unk_1E7742528;
  v6 = a1[6];
  v9 = v3;
  v10 = v6;
  v7 = v3;
  [v4 _runScrubbingSubtestsWithTestElement:v5 completion:v8];
}

uint64_t __62__PXStoryPPTPerformer_runScrubbingTestWithElement_completion___block_invoke_5(void *a1)
{
  v2 = *(*(a1[7] + 8) + 24);
  v3 = a1[4];
  v4 = a1[5];
  if (v2 == 1)
  {
    [v3 finishedTest:v4];
  }

  else
  {
    [v3 failedTest:v4];
  }

  result = a1[6];
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

uint64_t __62__PXStoryPPTPerformer_runScrubbingTestWithElement_completion___block_invoke_4(uint64_t a1, int a2)
{
  if (a2)
  {
    return [*(a1 + 32) next];
  }

  *(*(*(a1 + 40) + 8) + 24) = 0;
  return [*(a1 + 32) stop];
}

- (void)setObservedModel:(id)a3
{
  v5 = a3;
  observedModel = self->_observedModel;
  if (observedModel != v5)
  {
    v7 = v5;
    [(PXStoryModel *)observedModel unregisterChangeObserver:self context:ObservedModelObservationContext];
    objc_storeStrong(&self->_observedModel, a3);
    [(PXStoryModel *)self->_observedModel registerChangeObserver:self context:ObservedModelObservationContext];
    v5 = v7;
  }
}

- (void)_callPlaybackEndHandlerIfNeeded
{
  v3 = [(PXStoryPPTPerformer *)self observedModel];
  v4 = [v3 isAtPlaybackEnd];

  if (v4)
  {
    v5 = [(PXStoryPPTPerformer *)self playbackEndHandler];
    if (v5)
    {
      v6 = v5;
      [(PXStoryPPTPerformer *)self setPlaybackEndHandler:0];
      v6[2](v6);
      v5 = v6;
    }
  }
}

- (void)_installPlaybackEndHandler:(id)a3
{
  v4 = a3;
  v5 = [(PXStoryPPTPerformer *)self playbackEndHandler];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __50__PXStoryPPTPerformer__installPlaybackEndHandler___block_invoke;
  v11 = &unk_1E77425C8;
  v12 = v5;
  v13 = v4;
  v6 = v4;
  v7 = v5;
  [(PXStoryPPTPerformer *)self setPlaybackEndHandler:&v8];
  [(PXStoryPPTPerformer *)self _callPlaybackEndHandlerIfNeeded:v8];
}

uint64_t __50__PXStoryPPTPerformer__installPlaybackEndHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)_callPlaybackReadyToPlayHandlerIfNeeded
{
  v3 = [(PXStoryPPTPerformer *)self observedModel];
  v4 = [v3 readinessStatus];

  if (v4 == 3)
  {
    v5 = [(PXStoryPPTPerformer *)self playbackReadyToPlayHandler];
    if (v5)
    {
      v6 = v5;
      [(PXStoryPPTPerformer *)self setPlaybackReadyToPlayHandler:0];
      v6[2](v6);
      v5 = v6;
    }
  }
}

- (void)_installPlaybackReadyToPlayHandler:(id)a3
{
  v5 = a3;
  v6 = [(PXStoryPPTPerformer *)self testElement];

  if (!v6)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = NSStringFromSelector(a2);
    v11 = NSStringFromSelector(sel__preparePlaybackTestWithElement_);
    [v9 handleFailureInMethod:a2 object:self file:@"PXStoryPPTPerformer.m" lineNumber:228 description:{@"%@ called without previous call to %@", v10, v11}];
  }

  v7 = [(PXStoryPPTPerformer *)self testElement];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__PXStoryPPTPerformer__installPlaybackReadyToPlayHandler___block_invoke;
  v12[3] = &unk_1E774C2F0;
  v12[4] = self;
  v13 = v5;
  v8 = v5;
  [v7 installViewDidLoadHandler:v12];
}

void __58__PXStoryPPTPerformer__installPlaybackReadyToPlayHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) playbackReadyToPlayHandler];
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __58__PXStoryPPTPerformer__installPlaybackReadyToPlayHandler___block_invoke_2;
  v8 = &unk_1E77425C8;
  v9 = v2;
  v10 = *(a1 + 40);
  v3 = *(a1 + 32);
  v4 = v2;
  [v3 setPlaybackReadyToPlayHandler:&v5];
  [*(a1 + 32) _callPlaybackReadyToPlayHandlerIfNeeded];
}

uint64_t __58__PXStoryPPTPerformer__installPlaybackReadyToPlayHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)_preparePlaybackTestWithElement:(id)a3
{
  v4 = a3;
  [(PXStoryPPTPerformer *)self setTestElement:v4];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__PXStoryPPTPerformer__preparePlaybackTestWithElement___block_invoke;
  v6[3] = &unk_1E774C620;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [v5 installViewDidLoadHandler:v6];
}

void __55__PXStoryPPTPerformer__preparePlaybackTestWithElement___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _viewModelForPlayerTestElement:*(a1 + 40)];
  v2 = [v3 mainModel];
  [*(a1 + 32) setObservedModel:v2];
}

- (void)runPlaybackTestWithElement:(id)a3 completion:(id)a4
{
  v6 = a4;
  [(PXStoryPPTPerformer *)self _preparePlaybackTestWithElement:a3];
  v7 = [(PXStoryPPTPerformer *)self currentTestName];
  v8 = [(PXStoryPPTPerformer *)self _configurationSpecificSubtestName:@"Playback"];
  v9 = [(PXStoryPPTPerformer *)self delegate];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__PXStoryPPTPerformer_runPlaybackTestWithElement_completion___block_invoke;
  v14[3] = &unk_1E77425A0;
  v15 = v9;
  v16 = v7;
  v17 = self;
  v18 = v8;
  v19 = v6;
  v10 = v6;
  v11 = v8;
  v12 = v7;
  v13 = v9;
  [(PXStoryPPTPerformer *)self _installPlaybackReadyToPlayHandler:v14];
}

void __61__PXStoryPPTPerformer_runPlaybackTestWithElement_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) startedTest:*(a1 + 40)];
  [*(a1 + 48) startSubtestWithName:*(a1 + 56) metrics:&unk_1F19116F8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__PXStoryPPTPerformer_runPlaybackTestWithElement_completion___block_invoke_2;
  v7[3] = &unk_1E77425A0;
  v6 = *(a1 + 48);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  v10 = *(a1 + 64);
  [v6 _installPlaybackEndHandler:v7];
}

uint64_t __61__PXStoryPPTPerformer_runPlaybackTestWithElement_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) finishSubtestWithName:*(a1 + 40)];
  [*(a1 + 48) finishedTest:*(a1 + 56)];
  [*(a1 + 32) _cleanUpPlaybackTest];
  v2 = *(*(a1 + 64) + 16);

  return v2();
}

- (void)runPlaybackStartTestWithElement:(id)a3 completion:(id)a4
{
  v6 = a4;
  [(PXStoryPPTPerformer *)self _preparePlaybackTestWithElement:a3];
  v7 = [(PXStoryPPTPerformer *)self currentTestName];
  v8 = [(PXStoryPPTPerformer *)self delegate];
  [v8 startedTest:v7];
  [(PXStoryPPTPerformer *)self startSubtestWithName:@"PlaybackStart" metrics:&unk_1F19116E0];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__PXStoryPPTPerformer_runPlaybackStartTestWithElement_completion___block_invoke;
  v12[3] = &unk_1E77425A0;
  v12[4] = self;
  v13 = @"PlaybackStart";
  v14 = v8;
  v15 = v7;
  v16 = v6;
  v9 = v6;
  v10 = v7;
  v11 = v8;
  [(PXStoryPPTPerformer *)self _installPlaybackReadyToPlayHandler:v12];
}

void __66__PXStoryPPTPerformer_runPlaybackStartTestWithElement_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) finishSubtestWithName:*(a1 + 40)];
  [*(a1 + 48) finishedTest:*(a1 + 56)];
  [*(a1 + 32) _cleanUpPlaybackTest];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__PXStoryPPTPerformer_runPlaybackStartTestWithElement_completion___block_invoke_2;
  block[3] = &unk_1E774C250;
  v3 = *(a1 + 64);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (id)_configurationSpecificSubtestName:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [(PXStoryPPTPerformer *)self configurationName];
  v8 = [v6 initWithFormat:@"%@-%@", v5, v7];

  return v8;
}

- (void)finishSubtestWithName:(id)a3
{
  v11 = a3;
  v4 = [(PXStoryPPTPerformer *)self delegate];
  v5 = [(PXStoryPPTPerformer *)self currentTestName];
  [v4 finishedSubTest:v11 forTest:v5];

  v6 = [(PXStoryPPTPerformer *)self configurationIterator];
  v7 = [v6 count];

  if (v7 < 2)
  {
    v8 = [(PXStoryPPTPerformer *)self delegate];
    v9 = [(PXStoryPPTPerformer *)self currentTestName];
    [v8 finishedSubTest:v11 forTest:v9];
  }

  else
  {
    v8 = [(PXStoryPPTPerformer *)self _configurationSpecificSubtestName:v11];
    v9 = [(PXStoryPPTPerformer *)self delegate];
    v10 = [(PXStoryPPTPerformer *)self currentTestName];
    [v9 finishedSubTest:v8 forTest:v10];
  }
}

- (void)startSubtestWithName:(id)a3 metrics:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [(PXStoryPPTPerformer *)self delegate];
  v8 = [(PXStoryPPTPerformer *)self currentTestName];
  [v7 startedSubTest:v14 forTest:v8 withMetrics:v6];

  v9 = [(PXStoryPPTPerformer *)self configurationIterator];
  v10 = [v9 count];

  if (v10 < 2)
  {
    v11 = [(PXStoryPPTPerformer *)self delegate];
    v12 = [(PXStoryPPTPerformer *)self currentTestName];
    [v11 startedSubTest:v14 forTest:v12 withMetrics:v6];
  }

  else
  {
    v11 = [(PXStoryPPTPerformer *)self _configurationSpecificSubtestName:v14];
    v12 = [(PXStoryPPTPerformer *)self delegate];
    v13 = [(PXStoryPPTPerformer *)self currentTestName];
    [v12 startedSubTest:v11 forTest:v13 withMetrics:v6];
  }
}

- (void)enumerateStoryConfigurationsUsingBlock:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = +[PXStorySettings sharedInstance];
  v10 = [v9 currentPPTPreset];
  v11 = [v9 currentPPTSubpreset];
  v12 = [(PXStoryPPTPerformer *)self testOptions];
  v13 = [PXStoryPPTConfiguration configurationsForPreset:v10 subpreset:v11 testOptions:v12];

  v14 = [(PXStoryPPTPerformer *)self currentTestName];
  v15 = [(PXStoryPPTPerformer *)self delegate];
  [v15 startedTest:v14];

  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 1;
  v16 = [(PXStoryPPTPerformer *)self configurationIterator];

  if (v16)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PXStoryPPTPerformer.m" lineNumber:115 description:@"nested configuration enumeration isn't supported yet"];
  }

  [v13 count];
  v13;
  v18 = v14;
  v7;
  v18;
  v8;
  PXIterateAsynchronously();
}

void __73__PXStoryPPTPerformer_enumerateStoryConfigurationsUsingBlock_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setConfigurationIterator:v3];
  v4 = [*(a1 + 40) objectAtIndexedSubscript:{objc_msgSend(v3, "index")}];
  v5 = [v4 name];
  [*(a1 + 32) setConfigurationName:v5];

  v6 = [*(a1 + 32) testOptions];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__PXStoryPPTPerformer_enumerateStoryConfigurationsUsingBlock_completion___block_invoke_2;
  v11[3] = &unk_1E7742550;
  v11[4] = *(a1 + 32);
  v12 = *(a1 + 48);
  v13 = v4;
  v14 = v3;
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v15 = v7;
  v16 = v8;
  v9 = v3;
  v10 = v4;
  [v10 requestStoryConfigurationWithOptions:v6 resultHandler:v11];
}

uint64_t __73__PXStoryPPTPerformer_enumerateStoryConfigurationsUsingBlock_completion___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setConfigurationIterator:0];
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    [*(a1 + 32) _finalize];
    v2 = [*(a1 + 32) delegate];
    v3 = *(a1 + 40);
    v4 = [*(a1 + 32) extraResults];
    [v2 finishedTest:v3 extraResults:v4];
  }

  result = *(a1 + 48);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

void __73__PXStoryPPTPerformer_enumerateStoryConfigurationsUsingBlock_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __73__PXStoryPPTPerformer_enumerateStoryConfigurationsUsingBlock_completion___block_invoke_3;
    v11[3] = &unk_1E7742528;
    v4 = *(a1 + 64);
    v5 = *(a1 + 56);
    v6 = *(a1 + 72);
    v12 = v5;
    v13 = v6;
    (*(v4 + 16))(v4, a2, v11);
  }

  else
  {
    v7 = [*(a1 + 32) delegate];
    v8 = *(a1 + 40);
    v9 = [*(a1 + 48) name];
    [v7 failedTest:v8 withFailureFormat:@"Unable to create story configuration for %@", v9];

    v10 = *(a1 + 56);

    [v10 stop];
  }
}

uint64_t __73__PXStoryPPTPerformer_enumerateStoryConfigurationsUsingBlock_completion___block_invoke_3(uint64_t a1, int a2)
{
  if (a2)
  {
    return [*(a1 + 32) next];
  }

  *(*(*(a1 + 40) + 8) + 24) = 0;
  return [*(a1 + 32) stop];
}

- (void)_finalize
{
  resultsAggregate = self->_resultsAggregate;
  if (resultsAggregate)
  {
    v4 = resultsAggregate;
    v6 = [(PXStoryPPTPerformer *)self extraResults];
    v5 = [(PXStoryPPTResultsAggregate *)v4 extraResultsDictionaryRepresentation];

    [v6 addEntriesFromDictionary:v5];
  }
}

- (PXStoryPPTResultsAggregate)resultsAggregate
{
  resultsAggregate = self->_resultsAggregate;
  if (!resultsAggregate)
  {
    v4 = objc_alloc_init(PXStoryPPTResultsAggregate);
    v5 = self->_resultsAggregate;
    self->_resultsAggregate = v4;

    resultsAggregate = self->_resultsAggregate;
  }

  return resultsAggregate;
}

- (PXStoryPPTPerformer)initWithDelegate:(id)a3 testOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = PXStoryPPTPerformer;
  v8 = [(PXStoryPPTPerformer *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v6);
    objc_storeStrong(&v9->_testOptions, a4);
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    extraResults = v9->_extraResults;
    v9->_extraResults = v10;
  }

  return v9;
}

- (PXStoryPPTPerformer)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryPPTPerformer.m" lineNumber:76 description:{@"%s is not available as initializer", "-[PXStoryPPTPerformer init]"}];

  abort();
}

@end