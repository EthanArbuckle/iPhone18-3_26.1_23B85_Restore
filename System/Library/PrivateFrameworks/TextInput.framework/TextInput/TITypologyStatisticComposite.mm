@interface TITypologyStatisticComposite
+ (id)statisticCompositeWithStatistics:(id)statistics;
- (TITypologyStatisticComposite)initWithArray:(id)array;
- (id)aggregateReport;
- (id)structuredReport;
- (void)finalizeComputation;
- (void)prepareForComputation;
- (void)visitRecordAcceptedCandidate:(id)candidate;
- (void)visitRecordAutocorrections:(id)autocorrections;
- (void)visitRecordCandidateRejected:(id)rejected;
- (void)visitRecordCandidateResultSet:(id)set;
- (void)visitRecordHitTest:(id)test;
- (void)visitRecordKeyboardInput:(id)input;
- (void)visitRecordLastAcceptedCandidateCorrected:(id)corrected;
- (void)visitRecordPhraseBoundaryAdjustment:(id)adjustment;
- (void)visitRecordRefinements:(id)refinements;
- (void)visitRecordReplacements:(id)replacements;
- (void)visitRecordSetOriginalInput:(id)input;
- (void)visitRecordSkipHitTest:(id)test;
- (void)visitRecordSync:(id)sync;
- (void)visitRecordTextAccepted:(id)accepted;
- (void)visitTypologyLog:(id)log;
@end

@implementation TITypologyStatisticComposite

- (void)prepareForComputation
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  statistics = [(TITypologyStatisticComposite *)self statistics];
  v3 = [statistics countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(statistics);
        }

        [*(*(&v7 + 1) + 8 * v6++) prepareForComputation];
      }

      while (v4 != v6);
      v4 = [statistics countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)finalizeComputation
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  statistics = [(TITypologyStatisticComposite *)self statistics];
  v3 = [statistics countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(statistics);
        }

        [*(*(&v7 + 1) + 8 * v6++) finalizeComputation];
      }

      while (v4 != v6);
      v4 = [statistics countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)aggregateReport
{
  v16 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  statistics = [(TITypologyStatisticComposite *)self statistics];
  v5 = [statistics countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(statistics);
        }

        aggregateReport = [*(*(&v11 + 1) + 8 * i) aggregateReport];
        [dictionary addEntriesFromDictionary:aggregateReport];
      }

      v6 = [statistics countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return dictionary;
}

- (id)structuredReport
{
  v16 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  statistics = [(TITypologyStatisticComposite *)self statistics];
  v5 = [statistics countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(statistics);
        }

        structuredReport = [*(*(&v11 + 1) + 8 * i) structuredReport];
        [dictionary addEntriesFromDictionary:structuredReport];
      }

      v6 = [statistics countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return dictionary;
}

- (void)visitRecordLastAcceptedCandidateCorrected:(id)corrected
{
  v15 = *MEMORY[0x1E69E9840];
  correctedCopy = corrected;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  statistics = [(TITypologyStatisticComposite *)self statistics];
  v6 = [statistics countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(statistics);
        }

        [*(*(&v10 + 1) + 8 * v9++) visitRecordLastAcceptedCandidateCorrected:correctedCopy];
      }

      while (v7 != v9);
      v7 = [statistics countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)visitRecordCandidateRejected:(id)rejected
{
  v15 = *MEMORY[0x1E69E9840];
  rejectedCopy = rejected;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  statistics = [(TITypologyStatisticComposite *)self statistics];
  v6 = [statistics countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(statistics);
        }

        [*(*(&v10 + 1) + 8 * v9++) visitRecordCandidateRejected:rejectedCopy];
      }

      while (v7 != v9);
      v7 = [statistics countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)visitRecordTextAccepted:(id)accepted
{
  v15 = *MEMORY[0x1E69E9840];
  acceptedCopy = accepted;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  statistics = [(TITypologyStatisticComposite *)self statistics];
  v6 = [statistics countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(statistics);
        }

        [*(*(&v10 + 1) + 8 * v9++) visitRecordTextAccepted:acceptedCopy];
      }

      while (v7 != v9);
      v7 = [statistics countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)visitRecordSetOriginalInput:(id)input
{
  v15 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  statistics = [(TITypologyStatisticComposite *)self statistics];
  v6 = [statistics countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(statistics);
        }

        [*(*(&v10 + 1) + 8 * v9++) visitRecordSetOriginalInput:inputCopy];
      }

      while (v7 != v9);
      v7 = [statistics countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)visitRecordPhraseBoundaryAdjustment:(id)adjustment
{
  v15 = *MEMORY[0x1E69E9840];
  adjustmentCopy = adjustment;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  statistics = [(TITypologyStatisticComposite *)self statistics];
  v6 = [statistics countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(statistics);
        }

        [*(*(&v10 + 1) + 8 * v9++) visitRecordPhraseBoundaryAdjustment:adjustmentCopy];
      }

      while (v7 != v9);
      v7 = [statistics countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)visitRecordSkipHitTest:(id)test
{
  v15 = *MEMORY[0x1E69E9840];
  testCopy = test;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  statistics = [(TITypologyStatisticComposite *)self statistics];
  v6 = [statistics countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(statistics);
        }

        [*(*(&v10 + 1) + 8 * v9++) visitRecordSkipHitTest:testCopy];
      }

      while (v7 != v9);
      v7 = [statistics countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)visitRecordHitTest:(id)test
{
  v15 = *MEMORY[0x1E69E9840];
  testCopy = test;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  statistics = [(TITypologyStatisticComposite *)self statistics];
  v6 = [statistics countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(statistics);
        }

        [*(*(&v10 + 1) + 8 * v9++) visitRecordHitTest:testCopy];
      }

      while (v7 != v9);
      v7 = [statistics countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)visitRecordRefinements:(id)refinements
{
  v15 = *MEMORY[0x1E69E9840];
  refinementsCopy = refinements;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  statistics = [(TITypologyStatisticComposite *)self statistics];
  v6 = [statistics countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(statistics);
        }

        [*(*(&v10 + 1) + 8 * v9++) visitRecordRefinements:refinementsCopy];
      }

      while (v7 != v9);
      v7 = [statistics countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)visitRecordReplacements:(id)replacements
{
  v15 = *MEMORY[0x1E69E9840];
  replacementsCopy = replacements;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  statistics = [(TITypologyStatisticComposite *)self statistics];
  v6 = [statistics countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(statistics);
        }

        [*(*(&v10 + 1) + 8 * v9++) visitRecordReplacements:replacementsCopy];
      }

      while (v7 != v9);
      v7 = [statistics countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)visitRecordAcceptedCandidate:(id)candidate
{
  v15 = *MEMORY[0x1E69E9840];
  candidateCopy = candidate;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  statistics = [(TITypologyStatisticComposite *)self statistics];
  v6 = [statistics countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(statistics);
        }

        [*(*(&v10 + 1) + 8 * v9++) visitRecordAcceptedCandidate:candidateCopy];
      }

      while (v7 != v9);
      v7 = [statistics countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)visitRecordCandidateResultSet:(id)set
{
  v15 = *MEMORY[0x1E69E9840];
  setCopy = set;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  statistics = [(TITypologyStatisticComposite *)self statistics];
  v6 = [statistics countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(statistics);
        }

        [*(*(&v10 + 1) + 8 * v9++) visitRecordCandidateResultSet:setCopy];
      }

      while (v7 != v9);
      v7 = [statistics countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)visitRecordAutocorrections:(id)autocorrections
{
  v15 = *MEMORY[0x1E69E9840];
  autocorrectionsCopy = autocorrections;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  statistics = [(TITypologyStatisticComposite *)self statistics];
  v6 = [statistics countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(statistics);
        }

        [*(*(&v10 + 1) + 8 * v9++) visitRecordAutocorrections:autocorrectionsCopy];
      }

      while (v7 != v9);
      v7 = [statistics countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)visitRecordKeyboardInput:(id)input
{
  v15 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  statistics = [(TITypologyStatisticComposite *)self statistics];
  v6 = [statistics countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(statistics);
        }

        [*(*(&v10 + 1) + 8 * v9++) visitRecordKeyboardInput:inputCopy];
      }

      while (v7 != v9);
      v7 = [statistics countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)visitRecordSync:(id)sync
{
  v15 = *MEMORY[0x1E69E9840];
  syncCopy = sync;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  statistics = [(TITypologyStatisticComposite *)self statistics];
  v6 = [statistics countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(statistics);
        }

        [*(*(&v10 + 1) + 8 * v9++) visitRecordSync:syncCopy];
      }

      while (v7 != v9);
      v7 = [statistics countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)visitTypologyLog:(id)log
{
  logCopy = log;
  [(TITypologyStatisticComposite *)self prepareForComputation];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__TITypologyStatisticComposite_visitTypologyLog___block_invoke;
  v5[3] = &unk_1E6F4C3B8;
  v5[4] = self;
  [logCopy enumerateRecordsWithBlock:v5];

  [(TITypologyStatisticComposite *)self finalizeComputation];
}

- (TITypologyStatisticComposite)initWithArray:(id)array
{
  arrayCopy = array;
  v9.receiver = self;
  v9.super_class = TITypologyStatisticComposite;
  v6 = [(TITypologyStatisticComposite *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_statistics, array);
  }

  return v7;
}

+ (id)statisticCompositeWithStatistics:(id)statistics
{
  statisticsCopy = statistics;
  v4 = [[TITypologyStatisticComposite alloc] initWithArray:statisticsCopy];

  return v4;
}

@end