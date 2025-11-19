@interface TIWordSearchWubixing
- (id)autoconvertWubiXingPrefixes:(id)a3 option:(unint64_t)a4 candidateResultSet:(id)a5 autoconvertedCandidateArray:(id *)a6;
- (id)mecabraCreationOptionsDictionary;
- (id)uncachedCandidatesForOperation:(id)a3;
- (int)wubiStandardPreference;
- (void)checkWubiStandard;
- (void)dealloc;
- (void)shouldAutoCommitCode:(id)a3 withOption:(unint64_t)a4;
- (void)updateMecabraState;
@end

@implementation TIWordSearchWubixing

- (void)shouldAutoCommitCode:(id)a3 withOption:(unint64_t)a4
{
  v6 = a3;
  v7 = [(TIWordSearch *)self mecabraEnvironment];
  LODWORD(a4) = [v7 analyzeString:v6 options:a4];

  if (!a4)
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

- (id)autoconvertWubiXingPrefixes:(id)a3 option:(unint64_t)a4 candidateResultSet:(id)a5 autoconvertedCandidateArray:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v12 = [MEMORY[0x277CBEB18] array];
  v13 = [MEMORY[0x277CBEB38] dictionary];
  if ([v10 length] < 5)
  {
    goto LABEL_11;
  }

  v27 = a6;
  v28 = v11;
  v14 = 0;
  while (1)
  {
    v15 = [v10 substringWithRange:{v14, 4, v27}];
    v16 = [(TIWordSearchWubixing *)self shouldAutoCommitCode:v15 withOption:a4];
    if (!v16)
    {
      break;
    }

    v17 = v16;
    v18 = [objc_alloc(MEMORY[0x277D6F448]) initWithMecabraCandidate:v16];
    [v12 addObject:v18];
    v19 = [v18 mecabraCandidatePointerValue];
    [v13 setObject:v17 forKeyedSubscript:v19];

    v20 = [v10 length];
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
  v11 = v28;
  if (v21)
  {
    if (v27)
    {
      v23 = v12;
      *v27 = v12;
    }

    [v28 setAutoconvertedMecabraCandidates:v12 candidateRefsDictionary:v13];
    v24 = [v10 substringFromIndex:v21];
  }

  else
  {
LABEL_11:
    v24 = v10;
  }

  v25 = v24;

  return v25;
}

- (id)uncachedCandidatesForOperation:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277D6FF00]);
  v6 = [v4 inputString];
  v7 = objc_autoreleasePoolPush();
  if (![v6 length])
  {
    v37 = 0;
    v8 = 0;
LABEL_6:
    v34 = v7;
    v35 = v4;
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
        v16 = [(TIWordSearch *)self mecabraEnvironment];
        v17 = [v15 label];
        v18 = [v16 wubiAnnotationForCandidate:v17];
        [v15 setAlternativeText:v18];
      }

      [v5 addMecabraCandidate:v15 mecabraCandidateRef:v14];
      v19 = [v15 candidate];
      v20 = [v19 isEqualToString:v6];

      v12 |= v20;
    }

    v8 = v36;
    if (([v6 isEqualToString:v36] & 1) == 0)
    {
      v21 = [v5 candidates];
      v22 = [v21 indexOfObjectPassingTest:&__block_literal_global_937];

      v23 = [(TIWordSearch *)self mecabraEnvironment];
      [v23 analyzeString:v6 options:0];
      while (1)
      {

        [(TIWordSearch *)self mecabra];
        v24 = MecabraGetNextCandidate();
        if (!v24)
        {
          break;
        }

        v25 = v24;
        v23 = [MEMORY[0x277D6F448] mecabraCandidateWithCandidateRef:v24 autoconvertedCandidates:0];
        if ([v23 isWubixingConvertedByPinyin])
        {
          v26 = [(TIWordSearch *)self mecabraEnvironment];
          v27 = [v23 candidate];
          v28 = [v26 wubiAnnotationForCandidate:v27];
          [v23 setAlternativeText:v28];
        }

        if (v22 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v5 addMecabraCandidate:v23 mecabraCandidateRef:v25];
          v22 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          [v5 insertMecabraCandidate:v23 mecabraCandidateRef:v25 atIndex:v22++];
        }

        v29 = [v23 candidate];
        v30 = [v29 isEqualToString:v6];

        v12 |= v30;
      }

      v8 = v36;
    }

    v31 = [MEMORY[0x277CCA900] uppercaseLetterCharacterSet];
    v32 = [v6 rangeOfCharacterFromSet:v31];

    if (v32 != 0x7FFFFFFFFFFFFFFFLL && (v12 & 1) == 0)
    {
      [v5 addSyntheticMecabraCandidateWithSurface:v6 input:v6 isExtension:1];
    }

    v7 = v34;
    v4 = v35;
    goto LABEL_25;
  }

  if ([(TIWordSearch *)self addFacemarkCandidatesToResultSet:v5 forInput:v6])
  {
    v37 = 0;
    v8 = 0;
    goto LABEL_25;
  }

  [(TIWordSearchWubixing *)self checkWubiStandard];
  v38 = 0;
  v8 = [(TIWordSearchWubixing *)self autoconvertWubiXingPrefixes:v6 option:0 candidateResultSet:v5 autoconvertedCandidateArray:&v38];
  v37 = v38;
  v9 = [(TIWordSearch *)self mecabraEnvironment];
  v10 = [v9 analyzeString:v8 options:0];

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
  v3 = [(TIWordSearchWubixing *)self wubiStandardPreference];
  if (v3 != [(TIWordSearchWubixing *)self wubiStandard])
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
  v2 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v3 = [v2 valueForPreferenceKey:*MEMORY[0x277D6FD18]];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
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
  v3 = [(TIWordSearch *)&v7 mecabraCreationOptionsDictionary];
  v4 = [v3 mutableCopy];

  [(TIWordSearchWubixing *)self setWubiStandard:[(TIWordSearchWubixing *)self wubiStandardPreference]];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[TIWordSearchWubixing wubiStandard](self, "wubiStandard")}];
  [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x277D82A68]];

  return v4;
}

@end