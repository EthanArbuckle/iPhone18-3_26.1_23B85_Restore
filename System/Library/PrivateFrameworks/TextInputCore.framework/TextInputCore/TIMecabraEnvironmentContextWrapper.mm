@interface TIMecabraEnvironmentContextWrapper
- (BOOL)analyzeInput:(id)a3 options:(unint64_t)a4;
- (BOOL)analyzeString:(id)a3 options:(unint64_t)a4;
- (BOOL)predictionCandidatesWithOptions:(unint64_t)a3 maxNumberOfCandidates:(unint64_t)a4;
- (NSArray)contextCandidateStrings;
- (NSArray)contextCandidates;
- (NSArray)environmentCandidateStrings;
- (NSArray)inlineCandidates;
- (NSMutableArray)environmentCandidates;
- (NSMutableArray)temporaryCandidates;
- (TIMecabraEnvironmentContextWrapper)initWithMecabraEngine:(__Mecabra *)a3 language:(int)a4;
- (id)contextString:(id)a3 forRightContext:(BOOL)a4;
- (id)findSupplementalLexiconCandidatesSurroundingCursor;
- (unint64_t)contextCandidateCount;
- (void)acceptInlineCandidates;
- (void)addContextCandidate:(void *)a3 accept:(BOOL)a4;
- (void)addContextStringCandidate:(void *)a3;
- (void)addEnvironmentCandidate:(void *)a3 atIndex:(unint64_t)a4;
- (void)clearAll;
- (void)clearContext;
- (void)clearInline;
- (void)commitPredictionCandidate:(void *)a3;
- (void)completelyCommitInlineCandidate:(void *)a3;
- (void)createMecabraCandidateFromString:(id)a3;
- (void)dealloc;
- (void)declareEndOfSentence;
- (void)partiallyCommitInlineCandidate:(void *)a3;
- (void)removeCandidatesInRange:(_NSRange)a3;
- (void)revertInlineCandidate;
- (void)revertLearningForCandidate:(void *)a3;
- (void)setAppContext:(id)a3;
- (void)setGeometryModel:(void *)a3 modelData:(__CFArray *)a4;
- (void)setKeyboardLayout:(id)a3;
- (void)syncEnvironmentAndContextCandidates;
@end

@implementation TIMecabraEnvironmentContextWrapper

- (void)createMecabraCandidateFromString:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    [(TIMecabraEnvironmentContextWrapper *)self mecabraEngine];
    CandidateFromContextString = MecabraCreateCandidateFromContextString();
  }

  else
  {
    CandidateFromContextString = 0;
  }

  return CandidateFromContextString;
}

- (void)setKeyboardLayout:(id)a3
{
  v4 = a3;
  [(TIMecabraEnvironmentContextWrapper *)self mecabraEngine];
  MecabraSetKeyboardLayout();
}

- (void)setGeometryModel:(void *)a3 modelData:(__CFArray *)a4
{
  v6 = [(TIMecabraEnvironmentContextWrapper *)self mecabraContext];

  MEMORY[0x2821F8E48](v6, a3, a4);
}

- (void)setAppContext:(id)a3
{
  v7 = a3;
  if (([v7 isEqualToString:self->_appContext] & 1) == 0)
  {
    v4 = [v7 copy];
    appContext = self->_appContext;
    self->_appContext = v4;

    [(TIMecabraEnvironmentContextWrapper *)self mecabraContext];
    v6 = self->_appContext;
    MecabraContextSetAppContext();
  }
}

- (void)completelyCommitInlineCandidate:(void *)a3
{
  v16 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    [(TIMecabraEnvironmentContextWrapper *)self mecabraContext];
    MecabraContextAddInlineCandidate();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(TIMecabraEnvironmentContextWrapper *)self inlineCandidates];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        [(TIMecabraEnvironmentContextWrapper *)self setCandidateIndex:[(TIMecabraEnvironmentContextWrapper *)self candidateIndex]+ 1];
        [(TIMecabraEnvironmentContextWrapper *)self addEnvironmentCandidate:v9 atIndex:[(TIMecabraEnvironmentContextWrapper *)self candidateIndex]];
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [(TIMecabraEnvironmentContextWrapper *)self mecabraEngine];
  [(TIMecabraEnvironmentContextWrapper *)self mecabraContext];
  MecabraAcceptInlineCandidates();
  v10 = *MEMORY[0x277D85DE8];
}

- (void)partiallyCommitInlineCandidate:(void *)a3
{
  [(TIMecabraEnvironmentContextWrapper *)self mecabraContext];

  MecabraContextAddInlineCandidate();
}

- (void)commitPredictionCandidate:(void *)a3
{
  v5 = [(TIMecabraEnvironmentContextWrapper *)self mecabraEngine];
  v6 = [(TIMecabraEnvironmentContextWrapper *)self mecabraContext];

  MEMORY[0x2821F8F50](v5, a3, v6);
}

- (BOOL)predictionCandidatesWithOptions:(unint64_t)a3 maxNumberOfCandidates:(unint64_t)a4
{
  [(TIMecabraEnvironmentContextWrapper *)self mecabraEngine];
  [(TIMecabraEnvironmentContextWrapper *)self mecabraContext];
  return MecabraPredictionAnalyzeWithContext() != 0;
}

- (BOOL)analyzeInput:(id)a3 options:(unint64_t)a4
{
  v5 = a3;
  v25 = 0;
  v6 = [v5 asMecabraGestures:&v25];
  if (v25 == 1)
  {
    v7 = [v5 composingInput];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v9 = [v5 composingInput];
      v10 = [v9 remainingMecabraInputs];
      if (!v10)
      {
        [(TIMecabraEnvironmentContextWrapper *)self mecabraEngine];
        [(TIMecabraEnvironmentContextWrapper *)self mecabraContext];
        RemainingGestures = MecabraCreateRemainingGestures();
        v10 = RemainingGestures;
        v12 = RemainingGestures ? RemainingGestures : MEMORY[0x277CBEBF8];
        [v9 setRemainingMecabraInputs:v12];
        if (![v10 count])
        {
          [(TIMecabraEnvironmentContextWrapper *)self completelyCommitInlineCandidate:0];
        }
      }

      v6 = v10;
    }
  }

  v13 = [(TIMecabraEnvironmentContextWrapper *)self lastAnalyzeInputDate];
  if (v13)
  {
    v14 = v13;
    v15 = [v5 composingInput];
    objc_opt_class();
    v16 = objc_opt_isKindOfClass();

    if (v16)
    {
      v17 = [v5 composingInput];
      v18 = [MEMORY[0x277CBEAA8] date];
      v19 = [(TIMecabraEnvironmentContextWrapper *)self lastAnalyzeInputDate];
      [v18 timeIntervalSinceDate:v19];
      v21 = v20;

      if ([v17 isDrawing] && v21 * 1000.0 < 40.0)
      {
        [MEMORY[0x277CCACC8] sleepForTimeInterval:(40.0 - v21 * 1000.0) / 1000.0];
      }
    }
  }

  v22 = [MEMORY[0x277CBEAA8] date];
  [(TIMecabraEnvironmentContextWrapper *)self setLastAnalyzeInputDate:v22];

  [(TIMecabraEnvironmentContextWrapper *)self mecabraEngine];
  [(TIMecabraEnvironmentContextWrapper *)self mecabraContext];
  v23 = MecabraAnalyzeGesturesWithContext() != 0;

  return v23;
}

- (BOOL)analyzeString:(id)a3 options:(unint64_t)a4
{
  v5 = a3;
  [(TIMecabraEnvironmentContextWrapper *)self mecabraEngine];
  [(TIMecabraEnvironmentContextWrapper *)self mecabraContext];
  v6 = MecabraAnalyzeStringWithContext();

  return v6 != 0;
}

- (id)findSupplementalLexiconCandidatesSurroundingCursor
{
  v3 = [(TIMecabraEnvironmentContextWrapper *)self mecabraEngine];
  v4 = [(TIMecabraEnvironmentContextWrapper *)self mecabraContext];

  return MEMORY[0x2821F8EE8](v3, v4);
}

- (id)contextString:(id)a3 forRightContext:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(TIMecabraEnvironmentContextWrapper *)self mecabraEngine];
  LengthForContextString = MecabraGetLengthForContextString();
  if (v4)
  {
    [v6 substringToIndex:LengthForContextString];
  }

  else
  {
    [v6 substringFromIndex:{objc_msgSend(v6, "length") - LengthForContextString}];
  }
  v8 = ;

  return v8;
}

- (NSMutableArray)temporaryCandidates
{
  temporaryCandidates = self->_temporaryCandidates;
  if (!temporaryCandidates)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = self->_temporaryCandidates;
    self->_temporaryCandidates = v4;

    temporaryCandidates = self->_temporaryCandidates;
  }

  return temporaryCandidates;
}

- (void)syncEnvironmentAndContextCandidates
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = [(TIMecabraEnvironmentContextWrapper *)self temporaryCandidates];
  [v3 removeAllObjects];

  v4 = [(TIMecabraEnvironmentContextWrapper *)self contextCandidates];
  v5 = [(TIMecabraEnvironmentContextWrapper *)self environmentCandidates];
  v6 = [v4 deletionRangesWithElementsToKeep:v5];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v33;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v32 + 1) + 8 * i);
        [(TIMecabraEnvironmentContextWrapper *)self mecabraContext];
        [v12 rangeValue];
        MecabraContextRemoveCandidatesInRange();
      }

      v9 = [v7 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v9);
  }

  [(TIMecabraEnvironmentContextWrapper *)self clearContext];
  v13 = [(TIMecabraEnvironmentContextWrapper *)self candidateIndex];
  v14 = [(TIMecabraEnvironmentContextWrapper *)self candidateInternalIndex];
  if (v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = [(TIMecabraEnvironmentContextWrapper *)self environmentCandidates];
    v16 = [v15 count];

    if (v16)
    {
      v17 = [(TIMecabraEnvironmentContextWrapper *)self candidateIndex];
      v18 = v14 == 0x7FFFFFFFFFFFFFFFLL ? v17 + 1 : v17;
      if (v18)
      {
        for (j = 0; j != v18; ++j)
        {
          [(TIMecabraEnvironmentContextWrapper *)self mecabraContext];
          v20 = [(TIMecabraEnvironmentContextWrapper *)self environmentCandidates];
          v21 = [v20 objectAtIndexedSubscript:j];
          MecabraContextAddCandidate();
        }
      }
    }
  }

  v22 = [(TIMecabraEnvironmentContextWrapper *)self environmentCandidates];
  v23 = [v22 count];

  if (v14 != 0x7FFFFFFFFFFFFFFFLL && v23 && [(TIMecabraEnvironmentContextWrapper *)self candidateIndex]< v23)
  {
    v24 = [(TIMecabraEnvironmentContextWrapper *)self environmentCandidates];
    v25 = [v24 objectAtIndexedSubscript:{-[TIMecabraEnvironmentContextWrapper candidateIndex](self, "candidateIndex")}];
    v26 = MecabraCandidateGetSurface();

    v27 = [v26 substringToIndex:v14];
    v28 = [(TIMecabraEnvironmentContextWrapper *)self createMecabraCandidateFromString:v27];
    if (v28)
    {
      v29 = v28;
      [(TIMecabraEnvironmentContextWrapper *)self mecabraContext];
      MecabraContextAddCandidate();

      v30 = [(TIMecabraEnvironmentContextWrapper *)self temporaryCandidates];
      [v30 addObject:v29];
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)revertLearningForCandidate:(void *)a3
{
  v5 = [(TIMecabraEnvironmentContextWrapper *)self mecabraEngine];
  v6 = [(TIMecabraEnvironmentContextWrapper *)self mecabraContext];

  MEMORY[0x2821F8F88](v5, v6, a3);
}

- (void)revertInlineCandidate
{
  v3 = [(TIMecabraEnvironmentContextWrapper *)self inlineCandidates];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(TIMecabraEnvironmentContextWrapper *)self mecabraContext];

    MEMORY[0x2821F8E38](v5, v4 - 1, 1);
  }
}

- (void)removeCandidatesInRange:(_NSRange)a3
{
  [(TIMecabraEnvironmentContextWrapper *)self mecabraContext];

  MecabraContextRemoveCandidatesInRange();
}

- (void)acceptInlineCandidates
{
  [(TIMecabraEnvironmentContextWrapper *)self mecabraEngine];
  [(TIMecabraEnvironmentContextWrapper *)self mecabraContext];

  MecabraAcceptInlineCandidates();
}

- (NSArray)inlineCandidates
{
  v3 = [MEMORY[0x277CBEB18] array];
  [(TIMecabraEnvironmentContextWrapper *)self mecabraContext];
  InlineCandidateCount = MecabraContextGetInlineCandidateCount();
  if (InlineCandidateCount)
  {
    v5 = InlineCandidateCount;
    for (i = 0; i != v5; ++i)
    {
      [(TIMecabraEnvironmentContextWrapper *)self mecabraContext];
      InlineCandidateAtIndex = MecabraContextGetInlineCandidateAtIndex();
      if (InlineCandidateAtIndex)
      {
        [v3 addObject:InlineCandidateAtIndex];
      }
    }
  }

  return v3;
}

- (NSArray)environmentCandidateStrings
{
  v2 = [(TIMecabraEnvironmentContextWrapper *)self environmentCandidates];
  v3 = [v2 mecabraCandidateSurfaces];

  return v3;
}

- (NSMutableArray)environmentCandidates
{
  environmentCandidates = self->_environmentCandidates;
  if (!environmentCandidates)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = self->_environmentCandidates;
    self->_environmentCandidates = v4;

    environmentCandidates = self->_environmentCandidates;
  }

  return environmentCandidates;
}

- (void)declareEndOfSentence
{
  [(TIMecabraEnvironmentContextWrapper *)self mecabraEngine];
  [(TIMecabraEnvironmentContextWrapper *)self mecabraContext];
  MecabraDeclareEndOfSentence();

  [(TIMecabraEnvironmentContextWrapper *)self clearAll];
}

- (void)clearAll
{
  [(TIMecabraEnvironmentContextWrapper *)self clearContext];
  [(TIMecabraEnvironmentContextWrapper *)self clearInline];
  v3 = [(TIMecabraEnvironmentContextWrapper *)self environmentCandidates];
  [v3 removeAllObjects];

  [(TIMecabraEnvironmentContextWrapper *)self setCandidateIndex:0x7FFFFFFFFFFFFFFFLL];
}

- (void)clearInline
{
  [(TIMecabraEnvironmentContextWrapper *)self mecabraContext];
  InlineCandidateCount = MecabraContextGetInlineCandidateCount();
  v4 = [(TIMecabraEnvironmentContextWrapper *)self mecabraContext];

  MEMORY[0x2821F8E38](v4, 0, InlineCandidateCount);
}

- (void)clearContext
{
  [(TIMecabraEnvironmentContextWrapper *)self mecabraContext];
  [(TIMecabraEnvironmentContextWrapper *)self contextCandidateCount];

  MecabraContextRemoveCandidatesInRange();
}

- (NSArray)contextCandidateStrings
{
  v2 = [(TIMecabraEnvironmentContextWrapper *)self contextCandidates];
  v3 = [v2 mecabraCandidateSurfaces];

  return v3;
}

- (NSArray)contextCandidates
{
  v3 = [MEMORY[0x277CBEB18] array];
  [(TIMecabraEnvironmentContextWrapper *)self mecabraContext];
  CandidateCount = MecabraContextGetCandidateCount();
  if (CandidateCount)
  {
    v5 = CandidateCount;
    for (i = 0; i != v5; ++i)
    {
      [(TIMecabraEnvironmentContextWrapper *)self mecabraContext];
      CandidateAtIndex = MecabraContextGetCandidateAtIndex();
      if (CandidateAtIndex)
      {
        [v3 addObject:CandidateAtIndex];
      }
    }
  }

  return v3;
}

- (unint64_t)contextCandidateCount
{
  [(TIMecabraEnvironmentContextWrapper *)self mecabraContext];

  return MecabraContextGetCandidateCount();
}

- (void)addEnvironmentCandidate:(void *)a3 atIndex:(unint64_t)a4
{
  v7 = [(TIMecabraEnvironmentContextWrapper *)self environmentCandidates];
  v8 = [v7 count];

  if (a4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    a4 = v8;
  }

  v9 = [(TIMecabraEnvironmentContextWrapper *)self environmentCandidates];
  v10 = v9;
  if (a4 >= v8)
  {
    [v9 addObject:a3];
  }

  else
  {
    [v9 insertObject:a3 atIndex:a4];
  }
}

- (void)addContextStringCandidate:(void *)a3
{
  [(TIMecabraEnvironmentContextWrapper *)self mecabraContext];

  MecabraContextAddCandidate();
}

- (void)addContextCandidate:(void *)a3 accept:(BOOL)a4
{
  v4 = a4;
  [(TIMecabraEnvironmentContextWrapper *)self mecabraContext];
  MecabraContextAddInlineCandidate();
  if (v4)
  {
    [(TIMecabraEnvironmentContextWrapper *)self mecabraEngine];
    [(TIMecabraEnvironmentContextWrapper *)self mecabraContext];

    MecabraAcceptInlineCandidates();
  }
}

- (void)dealloc
{
  mecabraContext = self->_mecabraContext;
  MecabraContextRelease();
  v4.receiver = self;
  v4.super_class = TIMecabraEnvironmentContextWrapper;
  [(TIMecabraEnvironmentContextWrapper *)&v4 dealloc];
}

- (TIMecabraEnvironmentContextWrapper)initWithMecabraEngine:(__Mecabra *)a3 language:(int)a4
{
  v9.receiver = self;
  v9.super_class = TIMecabraEnvironmentContextWrapper;
  v5 = [(TIMecabraEnvironmentContextWrapper *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v5->_mecabraEngine = a3;
    v5->_mecabraContext = MecabraContextCreateMutable();
    v7.f64[0] = NAN;
    v7.f64[1] = NAN;
    *&v6->_candidateIndex = vnegq_f64(v7);
    *&v6->_textContentType = 0;
  }

  return v6;
}

@end