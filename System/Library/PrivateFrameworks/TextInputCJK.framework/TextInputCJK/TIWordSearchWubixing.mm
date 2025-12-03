@interface TIWordSearchWubixing
- (id)autoconvertWubiXingPrefixes:(id)prefixes option:(unint64_t)option candidateResultSet:(id)set autoconvertedCandidateArray:(id *)array;
- (id)mecabraCreationOptionsDictionary;
- (id)uncachedCandidatesForOperation:(id)operation;
- (int)wubiStandardPreference;
- (void)checkWubiStandard;
- (void)dealloc;
- (void)shouldAutoCommitCode:(id)code withOption:(unint64_t)option;
- (void)updateMecabraState;
@end

@implementation TIWordSearchWubixing

- (void)shouldAutoCommitCode:(id)code withOption:(unint64_t)option
{
  codeCopy = code;
  mecabraEnvironment = [(TIWordSearch *)self mecabraEnvironment];
  LODWORD(option) = [mecabraEnvironment analyzeString:codeCopy options:option];

  if (!option)
  {
    return 0;
  }

  [(TIWordSearch *)self mecabra];
  NextCandidate = MecabraGetNextCandidate();
  WubixingType = MecabraCandidateGetWubixingType();
  if (!NextCandidate || (WubixingType & 2) != 0 || MecabraCandidateIsBilingualCandidate())
  {
    return 0;
  }

  return NextCandidate;
}

- (id)autoconvertWubiXingPrefixes:(id)prefixes option:(unint64_t)option candidateResultSet:(id)set autoconvertedCandidateArray:(id *)array
{
  prefixesCopy = prefixes;
  setCopy = set;
  array = [MEMORY[0x277CBEB18] array];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([prefixesCopy length] < 5)
  {
    goto LABEL_11;
  }

  arrayCopy = array;
  v28 = setCopy;
  v14 = 0;
  while (1)
  {
    v15 = [prefixesCopy substringWithRange:{v14, 4, arrayCopy}];
    v16 = [(TIWordSearchWubixing *)self shouldAutoCommitCode:v15 withOption:option];
    if (!v16)
    {
      break;
    }

    v17 = v16;
    v18 = [objc_alloc(MEMORY[0x277D6F448]) initWithMecabraCandidate:v16];
    [array addObject:v18];
    mecabraCandidatePointerValue = [v18 mecabraCandidatePointerValue];
    [dictionary setObject:v17 forKeyedSubscript:mecabraCandidatePointerValue];

    v20 = [prefixesCopy length];
    v21 = v14 + 4;
    v22 = v14 + 8;
    v14 += 4;
    if (v22 >= v20)
    {
      goto LABEL_7;
    }
  }

  v21 = v14;
LABEL_7:
  setCopy = v28;
  if (v21)
  {
    if (arrayCopy)
    {
      v23 = array;
      *arrayCopy = array;
    }

    [v28 setAutoconvertedMecabraCandidates:array candidateRefsDictionary:dictionary];
    v24 = [prefixesCopy substringFromIndex:v21];
  }

  else
  {
LABEL_11:
    v24 = prefixesCopy;
  }

  v25 = v24;

  return v25;
}

- (id)uncachedCandidatesForOperation:(id)operation
{
  operationCopy = operation;
  v5 = objc_alloc_init(MEMORY[0x277D6FF00]);
  inputString = [operationCopy inputString];
  v7 = objc_autoreleasePoolPush();
  if (![inputString length])
  {
    v37 = 0;
    v8 = 0;
LABEL_6:
    v34 = v7;
    v35 = operationCopy;
    v36 = v8;
    v11 = [v8 containsString:@"z"];
    v12 = 0;
    while (1)
    {
      [(TIWordSearch *)self mecabra];
      NextCandidate = MecabraGetNextCandidate();
      if (!NextCandidate)
      {
        break;
      }

      v14 = NextCandidate;
      v15 = [MEMORY[0x277D6F448] mecabraCandidateWithCandidateRef:NextCandidate autoconvertedCandidates:v37];
      if (([v15 isWubixingConvertedByPinyin] | v11))
      {
        mecabraEnvironment = [(TIWordSearch *)self mecabraEnvironment];
        label = [v15 label];
        v18 = [mecabraEnvironment wubiAnnotationForCandidate:label];
        [v15 setAlternativeText:v18];
      }

      [v5 addMecabraCandidate:v15 mecabraCandidateRef:v14];
      candidate = [v15 candidate];
      v20 = [candidate isEqualToString:inputString];

      v12 |= v20;
    }

    v8 = v36;
    if (([inputString isEqualToString:v36] & 1) == 0)
    {
      candidates = [v5 candidates];
      v22 = [candidates indexOfObjectPassingTest:&__block_literal_global_937];

      mecabraEnvironment2 = [(TIWordSearch *)self mecabraEnvironment];
      [mecabraEnvironment2 analyzeString:inputString options:0];
      while (1)
      {

        [(TIWordSearch *)self mecabra];
        v24 = MecabraGetNextCandidate();
        if (!v24)
        {
          break;
        }

        v25 = v24;
        mecabraEnvironment2 = [MEMORY[0x277D6F448] mecabraCandidateWithCandidateRef:v24 autoconvertedCandidates:0];
        if ([mecabraEnvironment2 isWubixingConvertedByPinyin])
        {
          mecabraEnvironment3 = [(TIWordSearch *)self mecabraEnvironment];
          candidate2 = [mecabraEnvironment2 candidate];
          v28 = [mecabraEnvironment3 wubiAnnotationForCandidate:candidate2];
          [mecabraEnvironment2 setAlternativeText:v28];
        }

        if (v22 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v5 addMecabraCandidate:mecabraEnvironment2 mecabraCandidateRef:v25];
          v22 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          [v5 insertMecabraCandidate:mecabraEnvironment2 mecabraCandidateRef:v25 atIndex:v22++];
        }

        candidate3 = [mecabraEnvironment2 candidate];
        v30 = [candidate3 isEqualToString:inputString];

        v12 |= v30;
      }

      v8 = v36;
    }

    uppercaseLetterCharacterSet = [MEMORY[0x277CCA900] uppercaseLetterCharacterSet];
    v32 = [inputString rangeOfCharacterFromSet:uppercaseLetterCharacterSet];

    if (v32 != 0x7FFFFFFFFFFFFFFFLL && (v12 & 1) == 0)
    {
      [v5 addSyntheticMecabraCandidateWithSurface:inputString input:inputString isExtension:1];
    }

    v7 = v34;
    operationCopy = v35;
    goto LABEL_25;
  }

  if ([(TIWordSearch *)self addFacemarkCandidatesToResultSet:v5 forInput:inputString])
  {
    v37 = 0;
    v8 = 0;
    goto LABEL_25;
  }

  [(TIWordSearchWubixing *)self checkWubiStandard];
  v38 = 0;
  v8 = [(TIWordSearchWubixing *)self autoconvertWubiXingPrefixes:inputString option:0 candidateResultSet:v5 autoconvertedCandidateArray:&v38];
  v37 = v38;
  mecabraEnvironment4 = [(TIWordSearch *)self mecabraEnvironment];
  v10 = [mecabraEnvironment4 analyzeString:v8 options:0];

  if (v10)
  {
    goto LABEL_6;
  }

LABEL_25:

  objc_autoreleasePoolPop(v7);

  return v5;
}

uint64_t __55__TIWordSearchWubixing_uncachedCandidatesForOperation___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isWubixingConvertedByPinyin])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isPrefixMatched];
  }

  return v3;
}

- (void)checkWubiStandard
{
  wubiStandardPreference = [(TIWordSearchWubixing *)self wubiStandardPreference];
  if (wubiStandardPreference != [(TIWordSearchWubixing *)self wubiStandard])
  {
    [(TIWordSearchWubixing *)self setWubiStandard:[(TIWordSearchWubixing *)self wubiStandardPreference]];
    [(TIWordSearch *)self mecabra];
    [(TIWordSearchWubixing *)self wubiStandard];
    MecabraSetWubixingStandard();

    [(TIWordSearch *)self updateAddressBook];
  }
}

- (int)wubiStandardPreference
{
  mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
  v3 = [mEMORY[0x277D6F470] valueForPreferenceKey:*MEMORY[0x277D6FD18]];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (void)updateMecabraState
{
  v3.receiver = self;
  v3.super_class = TIWordSearchWubixing;
  [(TIWordSearchShapeBased *)&v3 updateMecabraState];
  [(TIWordSearch *)self updateUserWordEntries];
}

- (void)dealloc
{
  [(TIWordSearch *)self completeOperationsInQueue];
  v3.receiver = self;
  v3.super_class = TIWordSearchWubixing;
  [(TIWordSearch *)&v3 dealloc];
}

- (id)mecabraCreationOptionsDictionary
{
  v7.receiver = self;
  v7.super_class = TIWordSearchWubixing;
  mecabraCreationOptionsDictionary = [(TIWordSearch *)&v7 mecabraCreationOptionsDictionary];
  v4 = [mecabraCreationOptionsDictionary mutableCopy];

  [(TIWordSearchWubixing *)self setWubiStandard:[(TIWordSearchWubixing *)self wubiStandardPreference]];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[TIWordSearchWubixing wubiStandard](self, "wubiStandard")}];
  [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x277D82A68]];

  return v4;
}

@end