@interface _TUIGeneratorResultAccumulator
- (BOOL)areAllGeneratorsComplete;
- (BOOL)kbdCorrectionsAreComplete;
- (BOOL)updateWithContainer:(id)a3;
- (_TUIGeneratorResultAccumulator)initWithRequestContext:(id)a3 enabledCandidateSources:(id)a4 policy:(id)a5 onComplete:(id)a6;
- (id)containerForCandidateSource:(int64_t)a3;
- (id)debugDescription;
- (void)completionBlockJustOnce:(BOOL)a3;
@end

@implementation _TUIGeneratorResultAccumulator

- (id)debugDescription
{
  v3 = [(_TUIGeneratorResultAccumulator *)self areAllGeneratorsComplete];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(_TUIGeneratorResultAccumulator *)self token];
  v6 = [v5 shortIdentifier];
  expectedGeneratorSourceTypes = self->_expectedGeneratorSourceTypes;
  v8 = [(NSMutableDictionary *)self->_generatorResults count];
  [(_TUIGeneratorResultAccumulatorPolicy *)self->_policy accumulatorTimeout];
  v10 = "NO";
  if (v3)
  {
    v11 = "YES";
  }

  else
  {
    v11 = "NO";
  }

  if (self->_completionCalled)
  {
    v10 = "YES";
  }

  v12 = [v4 stringWithFormat:@"{requestToken.shortId: %@, enabledSources: %@, generatedResults.count: %lu, accumulatorTimeout: %f, isCompleted: %s, completionCalled: %s}", v6, expectedGeneratorSourceTypes, v8, v9, v11, v10];

  return v12;
}

- (void)completionBlockJustOnce:(BOOL)a3
{
  v25 = *MEMORY[0x1E69E9840];
  if (self->_accumulatorCompletedBlock && !self->_completionCalled)
  {
    v7 = a3;
    self->_completionCalled = 1;
    v8 = TUICandidateGenerationLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [(_TUIGeneratorResultAccumulator *)self token];
      v10 = [v9 shortIdentifier];
      if (v7)
      {
        v11 = "YES";
      }

      else
      {
        v11 = "NO";
      }

      v12 = [(NSMutableDictionary *)self->_generatorResults count];
      v13 = [(NSArray *)self->_expectedGeneratorSourceTypes count];
      expectedGeneratorSourceTypes = self->_expectedGeneratorSourceTypes;
      v15 = 138413314;
      v16 = v10;
      v17 = 2080;
      v18 = v11;
      v19 = 2048;
      v20 = v12;
      v21 = 2048;
      v22 = v13;
      v23 = 2112;
      v24 = expectedGeneratorSourceTypes;
      _os_log_debug_impl(&dword_18FFDC000, v8, OS_LOG_TYPE_DEBUG, "Result accumulator completion block called for token:[%@], and didTimeout: %s, %lu of %lu returned results, generator sources: %@", &v15, 0x34u);
    }

    (*(self->_accumulatorCompletedBlock + 2))();
  }

  else
  {
    v4 = TUICandidateGenerationLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(_TUIGeneratorResultAccumulator *)self token];
      v6 = [v5 shortIdentifier];
      v15 = 138412290;
      v16 = v6;
    }
  }
}

- (BOOL)areAllGeneratorsComplete
{
  if ([(NSArray *)self->_expectedGeneratorSourceTypes count])
  {
    if (![(NSArray *)self->_expectedGeneratorSourceTypes containsObject:&unk_1F03D8E28]|| (v3 = [(_TUIGeneratorResultAccumulator *)self kbdCorrectionsAreComplete]))
    {
      v4 = [(NSMutableDictionary *)self->_generatorResults count];
      LOBYTE(v3) = v4 == [(NSArray *)self->_expectedGeneratorSourceTypes count];
    }
  }

  else
  {
    LOBYTE(v3) = 1;
  }

  return v3;
}

- (BOOL)updateWithContainer:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (self->_completionCalled)
  {
    v6 = TUICandidateGenerationLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [v5 candidateSourceType];
      v8 = [(_TUIGeneratorResultAccumulator *)self token];
      v9 = [v8 shortIdentifier];
      *buf = 67109378;
      *v24 = v7;
      *&v24[4] = 2112;
      *&v24[6] = v9;
      _os_log_error_impl(&dword_18FFDC000, v6, OS_LOG_TYPE_ERROR, "Attempted to update accumulator from source type: %d, after completion has already been called for token:[%@]. This is an error and will be ignored.", buf, 0x12u);
    }

LABEL_16:
    v15 = 0;
    goto LABEL_17;
  }

  if (!v4)
  {
    v6 = TUICandidateGenerationLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18FFDC000, v6, OS_LOG_TYPE_ERROR, "Attemped to update accumulator with a nil result object. This is an error and will be ignored.", buf, 2u);
    }

    goto LABEL_16;
  }

  v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:{objc_msgSend(v4, "candidateSourceType")}];
  if (![(NSArray *)self->_expectedGeneratorSourceTypes containsObject:v6])
  {
    v14 = TUICandidateGenerationLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      expectedGeneratorSourceTypes = self->_expectedGeneratorSourceTypes;
      *buf = 138412546;
      *v24 = v6;
      *&v24[8] = 2112;
      *&v24[10] = expectedGeneratorSourceTypes;
      _os_log_error_impl(&dword_18FFDC000, v14, OS_LOG_TYPE_ERROR, "Attempt to update accumulator with result of candidate source type: %@, but this source type is not in the expected source types for this accumulator so it will be ignored. %@", buf, 0x16u);
    }

    goto LABEL_16;
  }

  [(NSMutableDictionary *)self->_generatorResults setObject:v5 forKeyedSubscript:v6];
  v10 = TUICandidateGenerationLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v17 = [(_TUIGeneratorResultAccumulator *)self token];
    v18 = [v17 shortIdentifier];
    v19 = [v5 hasCandidates];
    v20 = "NO";
    *buf = 138412802;
    *v24 = v18;
    if (v19)
    {
      v20 = "YES";
    }

    *&v24[8] = 2112;
    *&v24[10] = v6;
    v25 = 2080;
    v26 = v20;
    _os_log_debug_impl(&dword_18FFDC000, v10, OS_LOG_TYPE_DEBUG, "Added prediction generator result:[%@] for source type: %@, hasCandidates: %s ##", buf, 0x20u);
  }

  v11 = [(_TUIGeneratorResultAccumulator *)self areAllGeneratorsComplete];
  v12 = TUICandidateGenerationLog();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      *buf = 0;
    }

    v12 = [(_TUIGeneratorResultAccumulator *)self completionBlockQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54___TUIGeneratorResultAccumulator_updateWithContainer___block_invoke;
    block[3] = &unk_1E72D83A0;
    block[4] = self;
    dispatch_async(v12, block);
  }

  else if (v13)
  {
    *buf = 0;
    _os_log_impl(&dword_18FFDC000, v12, OS_LOG_TYPE_DEFAULT, "All generators are not complete.", buf, 2u);
  }

  v15 = 1;
LABEL_17:

  return v15;
}

- (BOOL)kbdCorrectionsAreComplete
{
  v2 = [(_TUIGeneratorResultAccumulator *)self containerForCandidateSource:0];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 candidateResultSet];

    if (v4)
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      v6 = [v3 autocorrectionList];
      v7 = [v6 predictions];
      v5 = v7 != 0;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)containerForCandidateSource:(int64_t)a3
{
  generatorResults = self->_generatorResults;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)generatorResults objectForKeyedSubscript:v4];

  return v5;
}

- (_TUIGeneratorResultAccumulator)initWithRequestContext:(id)a3 enabledCandidateSources:(id)a4 policy:(id)a5 onComplete:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v31.receiver = self;
  v31.super_class = _TUIGeneratorResultAccumulator;
  v15 = [(_TUIGeneratorResultAccumulator *)&v31 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_context, a3);
    objc_storeStrong(&v16->_expectedGeneratorSourceTypes, a4);
    v17 = [MEMORY[0x1E695DF90] dictionary];
    generatorResults = v16->_generatorResults;
    v16->_generatorResults = v17;

    v19 = _Block_copy(v14);
    accumulatorCompletedBlock = v16->_accumulatorCompletedBlock;
    v16->_accumulatorCompletedBlock = v19;

    v21 = dispatch_queue_create("com.apple.TextInputUI.TUIGeneratorResultAccumulator.Completion", 0);
    completionBlockQueue = v16->_completionBlockQueue;
    v16->_completionBlockQueue = v21;

    v16->_completionCalled = 0;
    if (v13)
    {
      v23 = v13;
    }

    else
    {
      v23 = +[_TUIGeneratorResultAccumulatorPolicy defaultPolicy];
    }

    policy = v16->_policy;
    v16->_policy = v23;

    [(_TUIGeneratorResultAccumulatorPolicy *)v16->_policy accumulatorTimeout];
    v26 = dispatch_time(0, (v25 * 1000000000.0));
    v27 = v16->_completionBlockQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __99___TUIGeneratorResultAccumulator_initWithRequestContext_enabledCandidateSources_policy_onComplete___block_invoke;
    block[3] = &unk_1E72D83A0;
    v30 = v16;
    dispatch_after(v26, v27, block);
  }

  return v16;
}

@end