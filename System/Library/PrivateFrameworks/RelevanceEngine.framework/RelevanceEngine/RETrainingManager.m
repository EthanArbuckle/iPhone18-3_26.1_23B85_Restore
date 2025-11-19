@interface RETrainingManager
- (RETrainingManager)initWithRelevanceEngine:(id)a3;
- (void)_performTraining:(BOOL)a3 completion:(id)a4;
- (void)addTrainingContext:(id)a3;
- (void)dealloc;
- (void)flushTraining;
- (void)makeContextCurrent:(id)a3;
- (void)manuallyPerformTrainingWithCompletion:(id)a3;
- (void)performTrainingForElement:(id)a3 isPositiveEvent:(BOOL)a4 interaction:(id)a5 context:(id)a6;
- (void)performTrainingForElementWithIdentifier:(id)a3 isPositiveEvent:(BOOL)a4 interaction:(id)a5 context:(id)a6;
- (void)removeTrainingContext:(id)a3;
@end

@implementation RETrainingManager

- (RETrainingManager)initWithRelevanceEngine:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = RETrainingManager;
  v5 = [(RERelevanceEngineSubsystem *)&v30 initWithRelevanceEngine:v4];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB58] set];
    trainingContexts = v5->_trainingContexts;
    v5->_trainingContexts = v6;

    v8 = [v4 configuration];
    v9 = +[RETrainingScheduler schedulerWithBehavior:](RETrainingScheduler, "schedulerWithBehavior:", [v8 trainingBehavior]);
    trainingScheduler = v5->_trainingScheduler;
    v5->_trainingScheduler = v9;

    v11 = [v4 coordinator];
    coordinator = v5->_coordinator;
    v5->_coordinator = v11;

    v13 = [v4 modelManager];
    modelManager = v5->_modelManager;
    v5->_modelManager = v13;

    v15 = [(RERelevanceEngineSubsystem *)v5 queue];
    queue = v5->_queue;
    v5->_queue = v15;

    v17 = [MEMORY[0x277CBEB18] arrayWithCapacity:100];
    trainingFeatureMaps = v5->_trainingFeatureMaps;
    v5->_trainingFeatureMaps = v17;

    v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:100];
    trainingContents = v5->_trainingContents;
    v5->_trainingContents = v19;

    v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:100];
    trainingEvents = v5->_trainingEvents;
    v5->_trainingEvents = v21;

    v23 = [MEMORY[0x277CBEB18] arrayWithCapacity:100];
    interactionTypes = v5->_interactionTypes;
    v5->_interactionTypes = v23;

    v25 = [v4 configuration];
    LODWORD(v8) = [v25 allowsRemoteTraining];

    if (v8)
    {
      v26 = +[RERemoteTrainingClientListener sharedTrainingClientListener];
      remoteTrainingListener = v5->_remoteTrainingListener;
      v5->_remoteTrainingListener = v26;

      [(RERemoteTrainingClientListener *)v5->_remoteTrainingListener setDelegate:v5];
    }

    v28 = [v4 logger];
    [v28 addLoggable:v5];
  }

  return v5;
}

- (void)dealloc
{
  [(RETrainingManager *)self makeContextCurrent:0];
  v3 = [(RERelevanceEngineSubsystem *)self relevanceEngine];
  v4 = [v3 logger];
  [v4 removeLoggable:self];

  v5.receiver = self;
  v5.super_class = RETrainingManager;
  [(RERelevanceEngineSubsystem *)&v5 dealloc];
}

- (void)addTrainingContext:(id)a3
{
  v4 = a3;
  v15 = v4;
  if (!v4)
  {
    v11 = *MEMORY[0x277CBE660];
    v12 = @"Training context must be non-nill";
    goto LABEL_5;
  }

  if ([(NSMutableSet *)self->_trainingContexts containsObject:v4])
  {
    v11 = *MEMORY[0x277CBE660];
    v12 = @"Training context already added to relevance engine";
LABEL_5:
    RERaiseInternalException(v11, v12, v5, v6, v7, v8, v9, v10, v14);
    goto LABEL_7;
  }

  [(NSMutableSet *)self->_trainingContexts addObject:v15];
  v13 = [(RERelevanceEngineSubsystem *)self relevanceEngine];
  [v15 _configureForRelevanceEngine:v13];

LABEL_7:
}

- (void)removeTrainingContext:(id)a3
{
  v4 = a3;
  v14 = v4;
  if (v4)
  {
    if ([(NSMutableSet *)self->_trainingContexts containsObject:v4])
    {
      v11 = [(RETrainingManager *)self currentTrainingContext];

      v12 = v14;
      if (v11 == v14)
      {
        [(RETrainingManager *)self makeContextCurrent:0];
        v12 = v14;
      }

      [v12 _configureForRelevanceEngine:0];
      [(NSMutableSet *)self->_trainingContexts removeObject:v14];
    }
  }

  else
  {
    RERaiseInternalException(*MEMORY[0x277CBE660], @"Training context must be non-nill", v5, v6, v7, v8, v9, v10, v13);
  }
}

- (void)performTrainingForElementWithIdentifier:(id)a3 isPositiveEvent:(BOOL)a4 interaction:(id)a5 context:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__RETrainingManager_performTrainingForElementWithIdentifier_isPositiveEvent_interaction_context___block_invoke;
  block[3] = &unk_2785FB410;
  block[4] = self;
  v18 = v10;
  v21 = a4;
  v19 = v12;
  v20 = v11;
  v14 = v11;
  v15 = v12;
  v16 = v10;
  dispatch_async(queue, block);
}

void __97__RETrainingManager_performTrainingForElementWithIdentifier_isPositiveEvent_interaction_context___block_invoke(uint64_t a1)
{
  v6 = [*(*(a1 + 32) + 40) featureMapForElementId:*(a1 + 40) trainingContext:*(a1 + 48)];
  v2 = [*(*(a1 + 32) + 40) elementForElementId:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = [v2 relevanceProviders];
  [v3 _queue_trainElementWithIdentifier:v4 relevanceProviders:v5 featureMap:v6 isPositiveEvent:*(a1 + 64) interaction:*(a1 + 56) context:*(a1 + 48)];
}

- (void)performTrainingForElement:(id)a3 isPositiveEvent:(BOOL)a4 interaction:(id)a5 context:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__RETrainingManager_performTrainingForElement_isPositiveEvent_interaction_context___block_invoke;
  block[3] = &unk_2785FB410;
  v18 = v10;
  v19 = self;
  v22 = a4;
  v20 = v12;
  v21 = v11;
  v14 = v11;
  v15 = v12;
  v16 = v10;
  dispatch_async(queue, block);
}

void __83__RETrainingManager_performTrainingForElement_isPositiveEvent_interaction_context___block_invoke(uint64_t a1)
{
  v6 = [REPredictionElement predictionElementFromElement:*(a1 + 32)];
  v2 = [*(*(a1 + 40) + 40) featureMapForElement:v6 trainingContext:*(a1 + 48)];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) identifier];
  v5 = [*(a1 + 32) relevanceProviders];
  [v3 _queue_trainElementWithIdentifier:v4 relevanceProviders:v5 featureMap:v2 isPositiveEvent:*(a1 + 64) interaction:*(a1 + 56) context:*(a1 + 48)];
}

- (void)flushTraining
{
  dispatch_assert_queue_not_V2(self->_queue);
  dispatch_sync(self->_queue, &__block_literal_global_20);
  dispatch_sync(self->_queue, &__block_literal_global_12);
  modelManager = self->_modelManager;

  [(REMLModelManager *)modelManager flushTraining];
}

void __121__RETrainingManager__queue_trainElementWithIdentifier_relevanceProviders_featureMap_isPositiveEvent_interaction_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performTraining:0 completion:0];
}

- (void)manuallyPerformTrainingWithCompletion:(id)a3
{
  trainingScheduler = self->_trainingScheduler;
  v5 = a3;
  [(RETrainingScheduler *)trainingScheduler cancelPendindTasks];
  [(RETrainingManager *)self _performTraining:1 completion:v5];
}

- (void)_performTraining:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  if (a3 || !RETrainingSimulationIsCurrentlyActive())
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__RETrainingManager__performTraining_completion___block_invoke;
    block[3] = &unk_2785FA498;
    block[4] = self;
    v10 = a3;
    v9 = v6;
    dispatch_async(queue, block);
  }

  else if (v6)
  {
    dispatch_async(self->_queue, v6);
  }
}

void __49__RETrainingManager__performTraining_completion___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([*(*(a1 + 32) + 88) count])
  {
    v3 = *(a1 + 32);
    [*(v3 + 48) performTrainingWithFeatureMaps:*(v3 + 88) content:*(v3 + 96) events:*(v3 + 104) interactions:*(v3 + 112) purgeCaches:*(a1 + 48) completion:*(a1 + 40)];
    v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:100];
    v5 = *(a1 + 32);
    v6 = *(v5 + 88);
    *(v5 + 88) = v4;

    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:100];
    v8 = *(a1 + 32);
    v9 = *(v8 + 96);
    *(v8 + 96) = v7;

    v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:100];
    v11 = *(a1 + 32);
    v12 = *(v11 + 104);
    *(v11 + 104) = v10;

    v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:100];
    v14 = *(a1 + 32);
    v15 = *(v14 + 112);
    *(v14 + 112) = v13;
  }

  objc_autoreleasePoolPop(v2);
}

- (void)makeContextCurrent:(id)a3
{
  v5 = a3;
  v4 = [(RETrainingManager *)self currentTrainingContext];
  if (v4 != v5)
  {
    [v4 _willResignCurrent];
    [v5 _willBecomeCurrent];
    [(RETrainingManager *)self setCurrentTrainingContext:v5];
    [v4 _didResignCurrent];
    [v5 _didBecomeCurrent];
  }
}

@end