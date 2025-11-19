@interface TIWordSearchWubihua
- (id)uncachedCandidatesForOperation:(id)a3;
- (void)dealloc;
@end

@implementation TIWordSearchWubihua

- (id)uncachedCandidatesForOperation:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277D6FF00]);
  v6 = [v4 inputString];
  v7 = objc_autoreleasePoolPush();
  if (![v6 length])
  {
    v8 = 0;
LABEL_6:
    while (1)
    {
      [(TIWordSearch *)self mecabra];
      NextCandidate = MecabraGetNextCandidate();
      if (!NextCandidate)
      {
        break;
      }

      v13 = NextCandidate;
      v14 = [MEMORY[0x277D6F448] mecabraCandidateWithCandidateRef:NextCandidate autoconvertedCandidates:v8];
      [v5 addMecabraCandidate:v14 mecabraCandidateRef:v13];
    }

    goto LABEL_8;
  }

  if ([(TIWordSearch *)self addFacemarkCandidatesToResultSet:v5 forInput:v6])
  {
    v8 = 0;
    goto LABEL_8;
  }

  v16 = 0;
  v9 = [(TIWordSearchShapeBased *)self autoconvertLongestValidPrefixes:v6 option:512 candidateResultSet:v5 autoconvertedCandidateArray:&v16];
  v8 = v16;
  v10 = [(TIWordSearch *)self mecabraEnvironment];
  v11 = [v10 analyzeString:v9 options:512];

  if (v11)
  {
    goto LABEL_6;
  }

LABEL_8:

  objc_autoreleasePoolPop(v7);

  return v5;
}

- (void)dealloc
{
  [(TIWordSearch *)self completeOperationsInQueue];
  v3.receiver = self;
  v3.super_class = TIWordSearchWubihua;
  [(TIWordSearch *)&v3 dealloc];
}

@end