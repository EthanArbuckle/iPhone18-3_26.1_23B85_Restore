@interface TIMecabraEnvironmentContextWrapper
- (BOOL)analyzeInput:(id)input options:(unint64_t)options;
- (BOOL)analyzeString:(id)string options:(unint64_t)options;
- (BOOL)predictionCandidatesWithOptions:(unint64_t)options maxNumberOfCandidates:(unint64_t)candidates;
- (NSArray)contextCandidateStrings;
- (NSArray)contextCandidates;
- (NSArray)environmentCandidateStrings;
- (NSArray)inlineCandidates;
- (NSMutableArray)environmentCandidates;
- (NSMutableArray)temporaryCandidates;
- (TIMecabraEnvironmentContextWrapper)initWithMecabraEngine:(__Mecabra *)engine language:(int)language;
- (id)contextString:(id)string forRightContext:(BOOL)context;
- (id)findSupplementalLexiconCandidatesSurroundingCursor;
- (unint64_t)contextCandidateCount;
- (void)acceptInlineCandidates;
- (void)addContextCandidate:(void *)candidate accept:(BOOL)accept;
- (void)addContextStringCandidate:(void *)candidate;
- (void)addEnvironmentCandidate:(void *)candidate atIndex:(unint64_t)index;
- (void)clearAll;
- (void)clearContext;
- (void)clearInline;
- (void)commitPredictionCandidate:(void *)candidate;
- (void)completelyCommitInlineCandidate:(void *)candidate;
- (void)createMecabraCandidateFromString:(id)string;
- (void)dealloc;
- (void)declareEndOfSentence;
- (void)partiallyCommitInlineCandidate:(void *)candidate;
- (void)removeCandidatesInRange:(_NSRange)range;
- (void)revertInlineCandidate;
- (void)revertLearningForCandidate:(void *)candidate;
- (void)setAppContext:(id)context;
- (void)setGeometryModel:(void *)model modelData:(__CFArray *)data;
- (void)setKeyboardLayout:(id)layout;
- (void)syncEnvironmentAndContextCandidates;
@end

@implementation TIMecabraEnvironmentContextWrapper

- (void)createMecabraCandidateFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
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

- (void)setKeyboardLayout:(id)layout
{
  layoutCopy = layout;
  [(TIMecabraEnvironmentContextWrapper *)self mecabraEngine];
  MecabraSetKeyboardLayout();
}

- (void)setGeometryModel:(void *)model modelData:(__CFArray *)data
{
  mecabraContext = [(TIMecabraEnvironmentContextWrapper *)self mecabraContext];

  MEMORY[0x2821F8E48](mecabraContext, model, data);
}

- (void)setAppContext:(id)context
{
  contextCopy = context;
  if (([contextCopy isEqualToString:self->_appContext] & 1) == 0)
  {
    v4 = [contextCopy copy];
    appContext = self->_appContext;
    self->_appContext = v4;

    [(TIMecabraEnvironmentContextWrapper *)self mecabraContext];
    v6 = self->_appContext;
    MecabraContextSetAppContext();
  }
}

- (void)completelyCommitInlineCandidate:(void *)candidate
{
  v16 = *MEMORY[0x277D85DE8];
  if (candidate)
  {
    [(TIMecabraEnvironmentContextWrapper *)self mecabraContext];
    MecabraContextAddInlineCandidate();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  inlineCandidates = [(TIMecabraEnvironmentContextWrapper *)self inlineCandidates];
  v5 = [inlineCandidates countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(inlineCandidates);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        [(TIMecabraEnvironmentContextWrapper *)self setCandidateIndex:[(TIMecabraEnvironmentContextWrapper *)self candidateIndex]+ 1];
        [(TIMecabraEnvironmentContextWrapper *)self addEnvironmentCandidate:v9 atIndex:[(TIMecabraEnvironmentContextWrapper *)self candidateIndex]];
        ++v8;
      }

      while (v6 != v8);
      v6 = [inlineCandidates countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [(TIMecabraEnvironmentContextWrapper *)self mecabraEngine];
  [(TIMecabraEnvironmentContextWrapper *)self mecabraContext];
  MecabraAcceptInlineCandidates();
  v10 = *MEMORY[0x277D85DE8];
}

- (void)partiallyCommitInlineCandidate:(void *)candidate
{
  [(TIMecabraEnvironmentContextWrapper *)self mecabraContext];

  MecabraContextAddInlineCandidate();
}

- (void)commitPredictionCandidate:(void *)candidate
{
  mecabraEngine = [(TIMecabraEnvironmentContextWrapper *)self mecabraEngine];
  mecabraContext = [(TIMecabraEnvironmentContextWrapper *)self mecabraContext];

  MEMORY[0x2821F8F50](mecabraEngine, candidate, mecabraContext);
}

- (BOOL)predictionCandidatesWithOptions:(unint64_t)options maxNumberOfCandidates:(unint64_t)candidates
{
  [(TIMecabraEnvironmentContextWrapper *)self mecabraEngine];
  [(TIMecabraEnvironmentContextWrapper *)self mecabraContext];
  return MecabraPredictionAnalyzeWithContext() != 0;
}

- (BOOL)analyzeInput:(id)input options:(unint64_t)options
{
  inputCopy = input;
  v25 = 0;
  v6 = [inputCopy asMecabraGestures:&v25];
  if (v25 == 1)
  {
    composingInput = [inputCopy composingInput];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      composingInput2 = [inputCopy composingInput];
      remainingMecabraInputs = [composingInput2 remainingMecabraInputs];
      if (!remainingMecabraInputs)
      {
        [(TIMecabraEnvironmentContextWrapper *)self mecabraEngine];
        [(TIMecabraEnvironmentContextWrapper *)self mecabraContext];
        RemainingGestures = MecabraCreateRemainingGestures();
        remainingMecabraInputs = RemainingGestures;
        v12 = RemainingGestures ? RemainingGestures : MEMORY[0x277CBEBF8];
        [composingInput2 setRemainingMecabraInputs:v12];
        if (![remainingMecabraInputs count])
        {
          [(TIMecabraEnvironmentContextWrapper *)self completelyCommitInlineCandidate:0];
        }
      }

      v6 = remainingMecabraInputs;
    }
  }

  lastAnalyzeInputDate = [(TIMecabraEnvironmentContextWrapper *)self lastAnalyzeInputDate];
  if (lastAnalyzeInputDate)
  {
    v14 = lastAnalyzeInputDate;
    composingInput3 = [inputCopy composingInput];
    objc_opt_class();
    v16 = objc_opt_isKindOfClass();

    if (v16)
    {
      composingInput4 = [inputCopy composingInput];
      date = [MEMORY[0x277CBEAA8] date];
      lastAnalyzeInputDate2 = [(TIMecabraEnvironmentContextWrapper *)self lastAnalyzeInputDate];
      [date timeIntervalSinceDate:lastAnalyzeInputDate2];
      v21 = v20;

      if ([composingInput4 isDrawing] && v21 * 1000.0 < 40.0)
      {
        [MEMORY[0x277CCACC8] sleepForTimeInterval:(40.0 - v21 * 1000.0) / 1000.0];
      }
    }
  }

  date2 = [MEMORY[0x277CBEAA8] date];
  [(TIMecabraEnvironmentContextWrapper *)self setLastAnalyzeInputDate:date2];

  [(TIMecabraEnvironmentContextWrapper *)self mecabraEngine];
  [(TIMecabraEnvironmentContextWrapper *)self mecabraContext];
  v23 = MecabraAnalyzeGesturesWithContext() != 0;

  return v23;
}

- (BOOL)analyzeString:(id)string options:(unint64_t)options
{
  stringCopy = string;
  [(TIMecabraEnvironmentContextWrapper *)self mecabraEngine];
  [(TIMecabraEnvironmentContextWrapper *)self mecabraContext];
  v6 = MecabraAnalyzeStringWithContext();

  return v6 != 0;
}

- (id)findSupplementalLexiconCandidatesSurroundingCursor
{
  mecabraEngine = [(TIMecabraEnvironmentContextWrapper *)self mecabraEngine];
  mecabraContext = [(TIMecabraEnvironmentContextWrapper *)self mecabraContext];

  return MEMORY[0x2821F8EE8](mecabraEngine, mecabraContext);
}

- (id)contextString:(id)string forRightContext:(BOOL)context
{
  contextCopy = context;
  stringCopy = string;
  [(TIMecabraEnvironmentContextWrapper *)self mecabraEngine];
  LengthForContextString = MecabraGetLengthForContextString();
  if (contextCopy)
  {
    [stringCopy substringToIndex:LengthForContextString];
  }

  else
  {
    [stringCopy substringFromIndex:{objc_msgSend(stringCopy, "length") - LengthForContextString}];
  }
  v8 = ;

  return v8;
}

- (NSMutableArray)temporaryCandidates
{
  temporaryCandidates = self->_temporaryCandidates;
  if (!temporaryCandidates)
  {
    array = [MEMORY[0x277CBEB18] array];
    v5 = self->_temporaryCandidates;
    self->_temporaryCandidates = array;

    temporaryCandidates = self->_temporaryCandidates;
  }

  return temporaryCandidates;
}

- (void)syncEnvironmentAndContextCandidates
{
  v37 = *MEMORY[0x277D85DE8];
  temporaryCandidates = [(TIMecabraEnvironmentContextWrapper *)self temporaryCandidates];
  [temporaryCandidates removeAllObjects];

  contextCandidates = [(TIMecabraEnvironmentContextWrapper *)self contextCandidates];
  environmentCandidates = [(TIMecabraEnvironmentContextWrapper *)self environmentCandidates];
  v6 = [contextCandidates deletionRangesWithElementsToKeep:environmentCandidates];

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
  candidateIndex = [(TIMecabraEnvironmentContextWrapper *)self candidateIndex];
  candidateInternalIndex = [(TIMecabraEnvironmentContextWrapper *)self candidateInternalIndex];
  if (candidateIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    environmentCandidates2 = [(TIMecabraEnvironmentContextWrapper *)self environmentCandidates];
    v16 = [environmentCandidates2 count];

    if (v16)
    {
      candidateIndex2 = [(TIMecabraEnvironmentContextWrapper *)self candidateIndex];
      v18 = candidateInternalIndex == 0x7FFFFFFFFFFFFFFFLL ? candidateIndex2 + 1 : candidateIndex2;
      if (v18)
      {
        for (j = 0; j != v18; ++j)
        {
          [(TIMecabraEnvironmentContextWrapper *)self mecabraContext];
          environmentCandidates3 = [(TIMecabraEnvironmentContextWrapper *)self environmentCandidates];
          v21 = [environmentCandidates3 objectAtIndexedSubscript:j];
          MecabraContextAddCandidate();
        }
      }
    }
  }

  environmentCandidates4 = [(TIMecabraEnvironmentContextWrapper *)self environmentCandidates];
  v23 = [environmentCandidates4 count];

  if (candidateInternalIndex != 0x7FFFFFFFFFFFFFFFLL && v23 && [(TIMecabraEnvironmentContextWrapper *)self candidateIndex]< v23)
  {
    environmentCandidates5 = [(TIMecabraEnvironmentContextWrapper *)self environmentCandidates];
    v25 = [environmentCandidates5 objectAtIndexedSubscript:{-[TIMecabraEnvironmentContextWrapper candidateIndex](self, "candidateIndex")}];
    v26 = MecabraCandidateGetSurface();

    v27 = [v26 substringToIndex:candidateInternalIndex];
    v28 = [(TIMecabraEnvironmentContextWrapper *)self createMecabraCandidateFromString:v27];
    if (v28)
    {
      v29 = v28;
      [(TIMecabraEnvironmentContextWrapper *)self mecabraContext];
      MecabraContextAddCandidate();

      temporaryCandidates2 = [(TIMecabraEnvironmentContextWrapper *)self temporaryCandidates];
      [temporaryCandidates2 addObject:v29];
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)revertLearningForCandidate:(void *)candidate
{
  mecabraEngine = [(TIMecabraEnvironmentContextWrapper *)self mecabraEngine];
  mecabraContext = [(TIMecabraEnvironmentContextWrapper *)self mecabraContext];

  MEMORY[0x2821F8F88](mecabraEngine, mecabraContext, candidate);
}

- (void)revertInlineCandidate
{
  inlineCandidates = [(TIMecabraEnvironmentContextWrapper *)self inlineCandidates];
  v4 = [inlineCandidates count];

  if (v4)
  {
    mecabraContext = [(TIMecabraEnvironmentContextWrapper *)self mecabraContext];

    MEMORY[0x2821F8E38](mecabraContext, v4 - 1, 1);
  }
}

- (void)removeCandidatesInRange:(_NSRange)range
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
  array = [MEMORY[0x277CBEB18] array];
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
        [array addObject:InlineCandidateAtIndex];
      }
    }
  }

  return array;
}

- (NSArray)environmentCandidateStrings
{
  environmentCandidates = [(TIMecabraEnvironmentContextWrapper *)self environmentCandidates];
  mecabraCandidateSurfaces = [environmentCandidates mecabraCandidateSurfaces];

  return mecabraCandidateSurfaces;
}

- (NSMutableArray)environmentCandidates
{
  environmentCandidates = self->_environmentCandidates;
  if (!environmentCandidates)
  {
    array = [MEMORY[0x277CBEB18] array];
    v5 = self->_environmentCandidates;
    self->_environmentCandidates = array;

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
  environmentCandidates = [(TIMecabraEnvironmentContextWrapper *)self environmentCandidates];
  [environmentCandidates removeAllObjects];

  [(TIMecabraEnvironmentContextWrapper *)self setCandidateIndex:0x7FFFFFFFFFFFFFFFLL];
}

- (void)clearInline
{
  [(TIMecabraEnvironmentContextWrapper *)self mecabraContext];
  InlineCandidateCount = MecabraContextGetInlineCandidateCount();
  mecabraContext = [(TIMecabraEnvironmentContextWrapper *)self mecabraContext];

  MEMORY[0x2821F8E38](mecabraContext, 0, InlineCandidateCount);
}

- (void)clearContext
{
  [(TIMecabraEnvironmentContextWrapper *)self mecabraContext];
  [(TIMecabraEnvironmentContextWrapper *)self contextCandidateCount];

  MecabraContextRemoveCandidatesInRange();
}

- (NSArray)contextCandidateStrings
{
  contextCandidates = [(TIMecabraEnvironmentContextWrapper *)self contextCandidates];
  mecabraCandidateSurfaces = [contextCandidates mecabraCandidateSurfaces];

  return mecabraCandidateSurfaces;
}

- (NSArray)contextCandidates
{
  array = [MEMORY[0x277CBEB18] array];
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
        [array addObject:CandidateAtIndex];
      }
    }
  }

  return array;
}

- (unint64_t)contextCandidateCount
{
  [(TIMecabraEnvironmentContextWrapper *)self mecabraContext];

  return MecabraContextGetCandidateCount();
}

- (void)addEnvironmentCandidate:(void *)candidate atIndex:(unint64_t)index
{
  environmentCandidates = [(TIMecabraEnvironmentContextWrapper *)self environmentCandidates];
  v8 = [environmentCandidates count];

  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    index = v8;
  }

  environmentCandidates2 = [(TIMecabraEnvironmentContextWrapper *)self environmentCandidates];
  v10 = environmentCandidates2;
  if (index >= v8)
  {
    [environmentCandidates2 addObject:candidate];
  }

  else
  {
    [environmentCandidates2 insertObject:candidate atIndex:index];
  }
}

- (void)addContextStringCandidate:(void *)candidate
{
  [(TIMecabraEnvironmentContextWrapper *)self mecabraContext];

  MecabraContextAddCandidate();
}

- (void)addContextCandidate:(void *)candidate accept:(BOOL)accept
{
  acceptCopy = accept;
  [(TIMecabraEnvironmentContextWrapper *)self mecabraContext];
  MecabraContextAddInlineCandidate();
  if (acceptCopy)
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

- (TIMecabraEnvironmentContextWrapper)initWithMecabraEngine:(__Mecabra *)engine language:(int)language
{
  v9.receiver = self;
  v9.super_class = TIMecabraEnvironmentContextWrapper;
  v5 = [(TIMecabraEnvironmentContextWrapper *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v5->_mecabraEngine = engine;
    v5->_mecabraContext = MecabraContextCreateMutable();
    v7.f64[0] = NAN;
    v7.f64[1] = NAN;
    *&v6->_candidateIndex = vnegq_f64(v7);
    *&v6->_textContentType = 0;
  }

  return v6;
}

@end