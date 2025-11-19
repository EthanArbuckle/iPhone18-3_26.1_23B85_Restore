@interface TIWordSearchHandwriting_ja
- (id)generateConversionsForCandidate:(id)a3 candidateContext:(id)a4 stringContext:(id)a5;
- (id)generatePredictionsWithCandidateContext:(id)a3 stringContext:(id)a4 option:(unint64_t)a5;
@end

@implementation TIWordSearchHandwriting_ja

- (id)generateConversionsForCandidate:(id)a3 candidateContext:(id)a4 stringContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy_;
  v31 = __Block_byref_object_dispose_;
  v32 = [MEMORY[0x277CBEB18] array];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __93__TIWordSearchHandwriting_ja_generateConversionsForCandidate_candidateContext_stringContext___block_invoke;
  v22[3] = &unk_279D9D440;
  v22[4] = self;
  v11 = v9;
  v23 = v11;
  v12 = v10;
  v24 = v12;
  v13 = v8;
  v25 = v13;
  v26 = &v27;
  v14 = MEMORY[0x26D6BFFC0](v22);
  v15 = [MEMORY[0x277CCABD8] currentQueue];
  v16 = [MEMORY[0x277D6FEF8] sharedOperationQueue];
  v17 = [v15 isEqual:v16];

  if (v17)
  {
    v14[2](v14);
  }

  else
  {
    v18 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v14];
    [(TIWordSearch *)self performOperationAsync:v18];

    v19 = [MEMORY[0x277D6FEF8] sharedOperationQueue];
    [v19 waitUntilAllOperationsAreFinished];
  }

  v20 = v28[5];

  _Block_object_dispose(&v27, 8);

  return v20;
}

- (id)generatePredictionsWithCandidateContext:(id)a3 stringContext:(id)a4 option:(unint64_t)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v8, "count")}];
  if ([v8 count] == 1 && (objc_msgSend(v8, "objectAtIndexedSubscript:", 0), objc_claimAutoreleasedReturnValue(), objc_msgSend(MecabraCandidateGetSurface(), "_containsSymbolsAndPunctuationOnly")))
  {
    v11 = [MEMORY[0x277CBEA60] array];
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v25;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v12);
          }

          CandidateFromContextString = *(*(&v24 + 1) + 8 * i);
          Type = MecabraCandidateGetType();
          if (Type != 1 && Type != 7)
          {
            MecabraCandidateGetSurface();
            [(TIWordSearch *)self mecabra];
            CandidateFromContextString = MecabraCreateCandidateFromContextString();
          }

          [v10 addObject:CandidateFromContextString];
        }

        v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v14);
    }

    v23.receiver = self;
    v23.super_class = TIWordSearchHandwriting_ja;
    v11 = [(TIWordSearchHandwriting *)&v23 generatePredictionsWithCandidateContext:v10 stringContext:v9 option:a5];
  }

  v20 = v11;

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

@end