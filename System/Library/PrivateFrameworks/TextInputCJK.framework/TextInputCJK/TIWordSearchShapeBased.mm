@interface TIWordSearchShapeBased
- (BOOL)addTopCandidateForCode:(id)code option:(unint64_t)option autoconvertedCandidates:(id)candidates candidateRefsDictionary:(id)dictionary;
- (BOOL)validateCode:(id)code withOption:(unint64_t)option;
- (id)autoconvertLongestValidPrefixes:(id)prefixes option:(unint64_t)option candidateResultSet:(id)set autoconvertedCandidateArray:(id *)array;
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

- (BOOL)validateCode:(id)code withOption:(unint64_t)option
{
  codeCopy = code;
  mecabraEnvironment = [(TIWordSearch *)self mecabraEnvironment];
  LODWORD(option) = [mecabraEnvironment analyzeString:codeCopy options:option];

  if (!option)
  {
    return 0;
  }

  [(TIWordSearch *)self mecabra];
  return MecabraGetNextCandidate() != 0;
}

- (BOOL)addTopCandidateForCode:(id)code option:(unint64_t)option autoconvertedCandidates:(id)candidates candidateRefsDictionary:(id)dictionary
{
  candidatesCopy = candidates;
  dictionaryCopy = dictionary;
  codeCopy = code;
  mecabraEnvironment = [(TIWordSearch *)self mecabraEnvironment];
  LODWORD(option) = [mecabraEnvironment analyzeString:codeCopy options:option];

  if (!option)
  {
    goto LABEL_4;
  }

  [(TIWordSearch *)self mecabra];
  NextCandidate = MecabraGetNextCandidate();
  if (NextCandidate)
  {
    v15 = [objc_alloc(MEMORY[0x277D6F448]) initWithMecabraCandidate:NextCandidate];
    [candidatesCopy addObject:v15];
    mecabraCandidatePointerValue = [v15 mecabraCandidatePointerValue];
    [dictionaryCopy setObject:NextCandidate forKeyedSubscript:mecabraCandidatePointerValue];

LABEL_4:
    LOBYTE(NextCandidate) = 1;
  }

  return NextCandidate;
}

- (id)autoconvertLongestValidPrefixes:(id)prefixes option:(unint64_t)option candidateResultSet:(id)set autoconvertedCandidateArray:(id *)array
{
  prefixesCopy = prefixes;
  setCopy = set;
  v11 = [prefixesCopy length];
  if (v11)
  {
    v12 = v11;
    arrayCopy = array;
    v31 = setCopy;
    array = 0;
    v14 = 0;
    v15 = 0;
    v16 = 1;
    do
    {
      v17 = [prefixesCopy substringWithRange:{v15, v16}];
      if ([(TIWordSearchShapeBased *)self validateCode:v17 withOption:option])
      {
        ++v16;
      }

      else
      {
        v18 = v16 - 1;
        if (!v18)
        {
          v20 = prefixesCopy;
          v22 = array;
          v24 = v14;
LABEL_17:
          v28 = v20;

          setCopy = v31;
          goto LABEL_21;
        }

        if (!array)
        {
          array = [MEMORY[0x277CBEB18] array];
          dictionary = [MEMORY[0x277CBEB38] dictionary];

          v14 = dictionary;
        }

        v20 = prefixesCopy;
        v21 = [prefixesCopy substringWithRange:{v15, v18}];
        v22 = array;
        v23 = array;
        v24 = v14;
        v25 = [(TIWordSearchShapeBased *)self addTopCandidateForCode:v21 option:option autoconvertedCandidates:v23 candidateRefsDictionary:v14];

        if (!v25)
        {
          goto LABEL_17;
        }

        v15 += v18;
        v16 = 1;
        v14 = v24;
        array = v22;
        prefixesCopy = v20;
      }
    }

    while (v16 + v15 <= v12);
    v20 = prefixesCopy;
    v22 = array;
    v24 = v14;
    if (v15)
    {
      setCopy = v31;
      if (arrayCopy)
      {
        v26 = v22;
        *arrayCopy = v22;
      }

      [v31 setAutoconvertedMecabraCandidates:v22 candidateRefsDictionary:v24];
      v27 = [v20 substringFromIndex:v15];
      goto LABEL_20;
    }

    setCopy = v31;
  }

  else
  {
    v20 = prefixesCopy;
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