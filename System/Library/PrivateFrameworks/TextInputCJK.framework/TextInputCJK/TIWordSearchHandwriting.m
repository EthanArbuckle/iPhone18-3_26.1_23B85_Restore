@interface TIWordSearchHandwriting
- (__MecabraContext)createMecabraContextFromCandidateContext:(id)a3 stringContext:(id)a4;
- (id)generatePredictionsWithCandidateContext:(id)a3 stringContext:(id)a4 option:(unint64_t)a5;
- (id)mecabraCreationOptionsDictionary;
- (void)acceptCandidate:(void *)a3;
- (void)updateMecabraState;
@end

@implementation TIWordSearchHandwriting

- (__MecabraContext)createMecabraContextFromCandidateContext:(id)a3 stringContext:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [(TIWordSearch *)self mecabra];
  [(TIWordSearch *)self mecabraLanguage];
  Mutable = MecabraContextCreateMutable();
  if ([v7 length])
  {
    CandidateFromContextString = MecabraCreateCandidateFromContextString();
    MecabraContextAddCandidate();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * v14);
        MecabraContextAddCandidate();
        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x277D85DE8];
  return Mutable;
}

- (id)generatePredictionsWithCandidateContext:(id)a3 stringContext:(id)a4 option:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy_;
  v29 = __Block_byref_object_dispose_;
  v30 = [MEMORY[0x277CBEB18] array];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __88__TIWordSearchHandwriting_generatePredictionsWithCandidateContext_stringContext_option___block_invoke;
  v20[3] = &unk_279D9D418;
  v20[4] = self;
  v10 = v8;
  v21 = v10;
  v11 = v9;
  v23 = &v25;
  v24 = a5;
  v22 = v11;
  v12 = MEMORY[0x26D6BFFC0](v20);
  v13 = [MEMORY[0x277CCABD8] currentQueue];
  v14 = [MEMORY[0x277D6FEF8] sharedOperationQueue];
  v15 = [v13 isEqual:v14];

  if (v15)
  {
    v12[2](v12);
  }

  else
  {
    v16 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v12];
    [(TIWordSearch *)self performOperationAsync:v16];

    v17 = [MEMORY[0x277D6FEF8] sharedOperationQueue];
    [v17 waitUntilAllOperationsAreFinished];
  }

  v18 = v26[5];

  _Block_object_dispose(&v25, 8);

  return v18;
}

uint64_t __88__TIWordSearchHandwriting_generatePredictionsWithCandidateContext_stringContext_option___block_invoke(uint64_t a1)
{
  [*(a1 + 32) mecabra];
  v2 = [*(a1 + 32) createMecabraContextFromCandidateContext:*(a1 + 40) stringContext:*(a1 + 48)];
  v3 = *(a1 + 64);
  result = MecabraPredictionAnalyzeWithContext();
  if (result)
  {
    while (1)
    {
      result = MecabraPredictionGetNextCandidate();
      if (!result)
      {
        break;
      }

      [*(*(*(a1 + 56) + 8) + 40) addObject:result];
    }
  }

  if (v2)
  {

    return MEMORY[0x2821F8E28](v2);
  }

  return result;
}

- (void)acceptCandidate:(void *)a3
{
  if (a3)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __43__TIWordSearchHandwriting_acceptCandidate___block_invoke;
    v10[3] = &unk_279D9D3F0;
    v10[4] = self;
    v10[5] = a3;
    v4 = MEMORY[0x26D6BFFC0](v10, a2);
    v5 = [MEMORY[0x277CCABD8] currentQueue];
    v6 = [MEMORY[0x277D6FEF8] sharedOperationQueue];
    v7 = [v5 isEqual:v6];

    if (v7)
    {
      v4[2](v4);
    }

    else
    {
      v8 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v4];
      [(TIWordSearch *)self performOperationAsync:v8];

      v9 = [MEMORY[0x277D6FEF8] sharedOperationQueue];
      [v9 waitUntilAllOperationsAreFinished];
    }
  }
}

uint64_t __43__TIWordSearchHandwriting_acceptCandidate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mecabra];
  v3 = *(a1 + 40);
  IsPredictionCandidate = MecabraCandidateIsPredictionCandidate();
  v5 = *(a1 + 40);
  if (IsPredictionCandidate)
  {
    MecabraPredictionAcceptCandidate();
  }

  else
  {
    MecabraAcceptCandidate();
  }

  v6 = *(a1 + 40);
  result = MecabraCandidateGetSurface();
  if (result)
  {

    return MEMORY[0x2821F9020](v2, result);
  }

  return result;
}

- (void)updateMecabraState
{
  v3.receiver = self;
  v3.super_class = TIWordSearchHandwriting;
  [(TIWordSearch *)&v3 updateMecabraState];
  [(TIWordSearch *)self updateUserWordEntries];
  [(TIWordSearch *)self updateDictionaryPaths];
}

- (id)mecabraCreationOptionsDictionary
{
  v5.receiver = self;
  v5.super_class = TIWordSearchHandwriting;
  v2 = [(TIWordSearch *)&v5 mecabraCreationOptionsDictionary];
  v3 = [v2 mutableCopy];

  [v3 removeObjectForKey:*MEMORY[0x277D82A58]];

  return v3;
}

void __93__TIWordSearchHandwriting_ja_generateConversionsForCandidate_candidateContext_stringContext___block_invoke(uint64_t a1)
{
  [*(a1 + 32) mecabra];
  v2 = [*(a1 + 32) createMecabraContextFromCandidateContext:*(a1 + 40) stringContext:*(a1 + 48)];
  v3 = [*(a1 + 56) candidate];
  v4 = MecabraAnalyzeStringWithContext();

  if (v4)
  {
    while (1)
    {
      NextCandidate = MecabraGetNextCandidate();
      if (!NextCandidate)
      {
        break;
      }

      [*(*(*(a1 + 64) + 8) + 40) addObject:NextCandidate];
    }
  }

  if (v2)
  {

    MEMORY[0x2821F8E28](v2);
  }
}

@end