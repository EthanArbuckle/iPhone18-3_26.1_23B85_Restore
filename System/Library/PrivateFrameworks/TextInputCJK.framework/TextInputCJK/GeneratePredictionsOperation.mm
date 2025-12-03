@interface GeneratePredictionsOperation
- (GeneratePredictionsOperation)initWithInputManager:(id)manager predictionOptions:(unint64_t)options prefixContext:(id)context;
- (void)main;
@end

@implementation GeneratePredictionsOperation

- (void)main
{
  v44 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v32 = array;
  objc_storeStrong(&self->_candidates, array);
  objc_storeStrong(&self->_proactiveTriggers, array2);
  objc_storeStrong(&self->_candidateRefsDictionary, dictionary);
  wordSearch = [(GeneratePredictionsOperation *)self wordSearch];
  committedCandidates = [(GeneratePredictionsOperation *)self committedCandidates];
  prefixContext = [(GeneratePredictionsOperation *)self prefixContext];
  selfCopy = self;
  v9 = [wordSearch generatePredictionsWithCandidateContext:committedCandidates stringContext:prefixContext option:{-[GeneratePredictionsOperation predictionOptions](self, "predictionOptions")}];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v39;
    v13 = *MEMORY[0x277D6FD88];
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v39 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v38 + 1) + 8 * i);
        if (MecabraCandidateGetType() == 6)
        {
          v16 = MecabraCandidateGetAttributes();
          if (!v16)
          {
            goto LABEL_11;
          }

          mecabraCandidatePointerValue = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v15];
          [dictionary setObject:v15 forKeyedSubscript:mecabraCandidatePointerValue];
          v18 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v16];
          [v18 setObject:mecabraCandidatePointerValue forKeyedSubscript:v13];
          v19 = [objc_alloc(MEMORY[0x277D6FEC8]) initWithSourceType:0 attributes:v18];
          [array2 addObject:v19];
        }

        else
        {
          v16 = [objc_alloc(MEMORY[0x277D6F448]) initWithMecabraCandidate:v15];
          [v16 setTypingEngine:6];
          [v32 addObject:v16];
          mecabraCandidatePointerValue = [v16 mecabraCandidatePointerValue];
          [dictionary setObject:v15 forKeyedSubscript:mecabraCandidatePointerValue];
        }

LABEL_11:
      }

      v11 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v11);
  }

  if ([array2 count] && TICanLogMessageAtLevel())
  {
    v20 = TIOSLogFacility();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s ProactiveQuickType:TI: Mecabra found prediction proactive triggers: %@", "-[GeneratePredictionsOperation main]", array2];
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v30;
      _os_log_debug_impl(&dword_26D460000, v20, OS_LOG_TYPE_DEBUG, "%@", location, 0xCu);
    }
  }

  candidates = [(GeneratePredictionsOperation *)selfCopy candidates];
  firstObject = [candidates firstObject];

  if (firstObject)
  {
    inputManager = [(GeneratePredictionsOperation *)selfCopy inputManager];
    stickerCandidateGenerator = [inputManager stickerCandidateGenerator];

    candidate = [firstObject candidate];
    v26 = [stickerCandidateGenerator generateStickerQueriesForText:candidate tokenize:0];

    if ([v26 count])
    {
      v27 = dispatch_group_create();
      dispatch_group_enter(v27);
      objc_initWeak(location, selfCopy);
      v34 = stickerCandidateGenerator;
      v35 = v26;
      objc_copyWeak(&v37, location);
      v36 = v27;
      v28 = v27;
      TIDispatchAsync();
      dispatch_group_wait(v28, 0xFFFFFFFFFFFFFFFFLL);

      objc_destroyWeak(&v37);
      objc_destroyWeak(location);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __36__GeneratePredictionsOperation_main__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) inputManager];
  v5 = [v4 keyboardState];
  v6 = [v5 secureCandidateRenderTraits];
  v7 = [*(a1 + 48) inputManager];
  v8 = [v7 inputMode];
  v9 = [v8 languageWithRegion];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __36__GeneratePredictionsOperation_main__block_invoke_2;
  v10[3] = &unk_279D9D648;
  objc_copyWeak(&v12, (a1 + 64));
  v11 = *(a1 + 56);
  [v2 generateStickerCandidatesForSearchableQueries:v3 withRenderTraits:v6 shouldAppend:1 language:v9 completionHandler:v10];

  objc_destroyWeak(&v12);
}

void __36__GeneratePredictionsOperation_main__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained[37];
  WeakRetained[37] = v3;
  v5 = v3;

  dispatch_group_leave(*(a1 + 32));
}

- (GeneratePredictionsOperation)initWithInputManager:(id)manager predictionOptions:(unint64_t)options prefixContext:(id)context
{
  managerCopy = manager;
  contextCopy = context;
  v19.receiver = self;
  v19.super_class = GeneratePredictionsOperation;
  v11 = [(GeneratePredictionsOperation *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_inputManager, manager);
    wordSearch = [managerCopy wordSearch];
    wordSearch = v12->_wordSearch;
    v12->_wordSearch = wordSearch;

    committedCandidates = [managerCopy committedCandidates];
    v16 = [committedCandidates copy];
    committedCandidates = v12->_committedCandidates;
    v12->_committedCandidates = v16;

    v12->_predictionOptions = options;
    objc_storeStrong(&v12->_prefixContext, context);
  }

  return v12;
}

@end