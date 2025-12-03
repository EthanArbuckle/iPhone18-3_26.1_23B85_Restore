@interface TIWordSearchHandwriting_ja
- (id)generateConversionsForCandidate:(id)candidate candidateContext:(id)context stringContext:(id)stringContext;
- (id)generatePredictionsWithCandidateContext:(id)context stringContext:(id)stringContext option:(unint64_t)option;
@end

@implementation TIWordSearchHandwriting_ja

- (id)generateConversionsForCandidate:(id)candidate candidateContext:(id)context stringContext:(id)stringContext
{
  candidateCopy = candidate;
  contextCopy = context;
  stringContextCopy = stringContext;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy_;
  v31 = __Block_byref_object_dispose_;
  array = [MEMORY[0x277CBEB18] array];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __93__TIWordSearchHandwriting_ja_generateConversionsForCandidate_candidateContext_stringContext___block_invoke;
  v22[3] = &unk_279D9D440;
  v22[4] = self;
  v11 = contextCopy;
  v23 = v11;
  v12 = stringContextCopy;
  v24 = v12;
  v13 = candidateCopy;
  v25 = v13;
  v26 = &v27;
  v14 = MEMORY[0x26D6BFFC0](v22);
  currentQueue = [MEMORY[0x277CCABD8] currentQueue];
  mEMORY[0x277D6FEF8] = [MEMORY[0x277D6FEF8] sharedOperationQueue];
  v17 = [currentQueue isEqual:mEMORY[0x277D6FEF8]];

  if (v17)
  {
    v14[2](v14);
  }

  else
  {
    v18 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v14];
    [(TIWordSearch *)self performOperationAsync:v18];

    mEMORY[0x277D6FEF8]2 = [MEMORY[0x277D6FEF8] sharedOperationQueue];
    [mEMORY[0x277D6FEF8]2 waitUntilAllOperationsAreFinished];
  }

  v20 = v28[5];

  _Block_object_dispose(&v27, 8);

  return v20;
}

- (id)generatePredictionsWithCandidateContext:(id)context stringContext:(id)stringContext option:(unint64_t)option
{
  v29 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  stringContextCopy = stringContext;
  v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(contextCopy, "count")}];
  if ([contextCopy count] == 1 && (objc_msgSend(contextCopy, "objectAtIndexedSubscript:", 0), objc_claimAutoreleasedReturnValue(), objc_msgSend(MecabraCandidateGetSurface(), "_containsSymbolsAndPunctuationOnly")))
  {
    array = [MEMORY[0x277CBEA60] array];
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v12 = contextCopy;
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
    array = [(TIWordSearchHandwriting *)&v23 generatePredictionsWithCandidateContext:v10 stringContext:stringContextCopy option:option];
  }

  v20 = array;

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

@end