@interface TIWordSearchShapeBased
- (BOOL)addTopCandidateForCode:(id)a3 option:(unint64_t)a4 autoconvertedCandidates:(id)a5 candidateRefsDictionary:(id)a6;
- (BOOL)validateCode:(id)a3 withOption:(unint64_t)a4;
- (id)autoconvertLongestValidPrefixes:(id)a3 option:(unint64_t)a4 candidateResultSet:(id)a5 autoconvertedCandidateArray:(id *)a6;
- (void)updateMecabraState;
@end

@implementation TIWordSearchShapeBased

- (void)updateMecabraState
{
  v3.receiver = self;
  v3.super_class = TIWordSearchShapeBased;
  [(TIWordSearch *)&v3 updateMecabraState];
  [(TIWordSearch *)self updateDictionaryPaths];
}

- (BOOL)validateCode:(id)a3 withOption:(unint64_t)a4
{
  v6 = a3;
  v7 = [(TIWordSearch *)self mecabraEnvironment];
  LODWORD(a4) = [v7 analyzeString:v6 options:a4];

  if (!a4)
  {
    return 0;
  }

  [(TIWordSearch *)self mecabra];
  return MecabraGetNextCandidate() != 0;
}

- (BOOL)addTopCandidateForCode:(id)a3 option:(unint64_t)a4 autoconvertedCandidates:(id)a5 candidateRefsDictionary:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = a3;
  v13 = [(TIWordSearch *)self mecabraEnvironment];
  LODWORD(a4) = [v13 analyzeString:v12 options:a4];

  if (!a4)
  {
    goto LABEL_4;
  }

  [(TIWordSearch *)self mecabra];
  NextCandidate = MecabraGetNextCandidate();
  if (NextCandidate)
  {
    v15 = [objc_alloc(MEMORY[0x277D6F448]) initWithMecabraCandidate:NextCandidate];
    [v10 addObject:v15];
    v16 = [v15 mecabraCandidatePointerValue];
    [v11 setObject:NextCandidate forKeyedSubscript:v16];

LABEL_4:
    LOBYTE(NextCandidate) = 1;
  }

  return NextCandidate;
}

- (id)autoconvertLongestValidPrefixes:(id)a3 option:(unint64_t)a4 candidateResultSet:(id)a5 autoconvertedCandidateArray:(id *)a6
{
  v9 = a3;
  v10 = a5;
  v11 = [v9 length];
  if (v11)
  {
    v12 = v11;
    v30 = a6;
    v31 = v10;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 1;
    do
    {
      v17 = [v9 substringWithRange:{v15, v16}];
      if ([(TIWordSearchShapeBased *)self validateCode:v17 withOption:a4])
      {
        ++v16;
      }

      else
      {
        v18 = v16 - 1;
        if (!v18)
        {
          v20 = v9;
          v22 = v13;
          v24 = v14;
LABEL_17:
          v28 = v20;

          v10 = v31;
          goto LABEL_21;
        }

        if (!v13)
        {
          v13 = [MEMORY[0x277CBEB18] array];
          v19 = [MEMORY[0x277CBEB38] dictionary];

          v14 = v19;
        }

        v20 = v9;
        v21 = [v9 substringWithRange:{v15, v18}];
        v22 = v13;
        v23 = v13;
        v24 = v14;
        v25 = [(TIWordSearchShapeBased *)self addTopCandidateForCode:v21 option:a4 autoconvertedCandidates:v23 candidateRefsDictionary:v14];

        if (!v25)
        {
          goto LABEL_17;
        }

        v15 += v18;
        v16 = 1;
        v14 = v24;
        v13 = v22;
        v9 = v20;
      }
    }

    while (v16 + v15 <= v12);
    v20 = v9;
    v22 = v13;
    v24 = v14;
    if (v15)
    {
      v10 = v31;
      if (v30)
      {
        v26 = v22;
        *v30 = v22;
      }

      [v31 setAutoconvertedMecabraCandidates:v22 candidateRefsDictionary:v24];
      v27 = [v20 substringFromIndex:v15];
      goto LABEL_20;
    }

    v10 = v31;
  }

  else
  {
    v20 = v9;
    v22 = 0;
    v24 = 0;
  }

  v27 = v20;
LABEL_20:
  v28 = v27;
LABEL_21:

  return v28;
}

@end