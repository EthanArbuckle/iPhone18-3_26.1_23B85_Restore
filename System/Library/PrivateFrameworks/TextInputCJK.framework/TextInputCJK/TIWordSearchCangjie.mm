@interface TIWordSearchCangjie
- (BOOL)validateCode:(id)code withOption:(unint64_t)option;
- (id)initTIWordSearchWithInputMode:(id)mode;
- (id)uncachedCandidatesForOperation:(id)operation;
@end

@implementation TIWordSearchCangjie

- (BOOL)validateCode:(id)code withOption:(unint64_t)option
{
  ASCIIFromInputKeyString = MecabraInputKeyPropertiesCreateASCIIFromInputKeyString();
  if ([(TIWordSearchCangjie *)self suchengEnabled])
  {
    v7 = [ASCIIFromInputKeyString length] <= 2 && (objc_msgSend(ASCIIFromInputKeyString, "length") != 2 || objc_msgSend(ASCIIFromInputKeyString, "characterAtIndex:", 1) != 122 && (objc_msgSend(ASCIIFromInputKeyString, "isEqualToString:", @"ux") & 1) == 0);
  }

  else if ([ASCIIFromInputKeyString containsCangjieWildcard])
  {
    v9.receiver = self;
    v9.super_class = TIWordSearchCangjie;
    v7 = [(TIWordSearchShapeBased *)&v9 validateCode:ASCIIFromInputKeyString withOption:option];
  }

  else
  {
    [ASCIIFromInputKeyString UTF8String];
    [ASCIIFromInputKeyString length];
    v7 = MecabraCangjieCodeIsValid() != 0;
  }

  return v7;
}

- (id)uncachedCandidatesForOperation:(id)operation
{
  operationCopy = operation;
  v5 = objc_alloc_init(MEMORY[0x277D6FF00]);
  inputString = [operationCopy inputString];
  context = objc_autoreleasePoolPush();
  supportsEnglish = [(TIWordSearchCangjie *)self supportsEnglish];
  suchengEnabled = [(TIWordSearchCangjie *)self suchengEnabled];
  v35 = inputString;
  if ([inputString length])
  {
    if ([(TIWordSearch *)self addFacemarkCandidatesToResultSet:v5 forInput:inputString])
    {
      v9 = 0;
      v33 = 0;
      v10 = 0;
      if (!supportsEnglish)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v20 = 2048;
      if (!suchengEnabled)
      {
        v20 = 0;
      }

      v21 = operationCopy;
      if (supportsEnglish)
      {
        v22 = v20;
      }

      else
      {
        v22 = v20 | 0x200000;
      }

      v23 = v22 | 0x200000;
      v36 = 0;
      v24 = [(TIWordSearchShapeBased *)self autoconvertLongestValidPrefixes:inputString option:v22 | 0x200000 candidateResultSet:v5 autoconvertedCandidateArray:&v36];
      v9 = v36;
      v33 = v9 != 0;
      if (!v9)
      {
        v23 = v22;
      }

      operationCopy = v21;
      mecabraEnvironment = [(TIWordSearch *)self mecabraEnvironment];
      v10 = [mecabraEnvironment analyzeString:v24 options:v23];

      if (!supportsEnglish)
      {
LABEL_31:
        ASCIIFromInputKeyString = 0;
        if (v10)
        {
          goto LABEL_32;
        }

LABEL_7:
        if (!supportsEnglish)
        {
          goto LABEL_39;
        }

        goto LABEL_8;
      }
    }
  }

  else
  {
    v9 = 0;
    v33 = 0;
    v10 = 1;
    if (!supportsEnglish)
    {
      goto LABEL_31;
    }
  }

  ASCIIFromInputKeyString = MecabraInputKeyPropertiesCreateASCIIFromInputKeyString();
  if (!v10)
  {
    goto LABEL_7;
  }

LABEL_32:
  LOBYTE(v10) = 0;
  while (1)
  {
    [(TIWordSearch *)self mecabra];
    NextCandidate = MecabraGetNextCandidate();
    if (!NextCandidate)
    {
      break;
    }

    v27 = NextCandidate;
    v28 = [MEMORY[0x277D6F448] mecabraCandidateWithCandidateRef:NextCandidate autoconvertedCandidates:v9];
    [v5 addMecabraCandidate:v28 mecabraCandidateRef:v27];
    if (v10)
    {
      LOBYTE(v10) = 1;
    }

    else
    {
      candidate = [v28 candidate];
      LOBYTE(v10) = [ASCIIFromInputKeyString isEqualToString:candidate];
    }
  }

  if (!supportsEnglish)
  {
LABEL_39:
    candidates = [v5 candidates];
    if ([candidates count])
    {
    }

    else
    {
      v31 = [v35 length];

      if (v31)
      {
        [v5 addSyntheticMecabraCandidateWithSurface:v35 input:v35];
      }
    }

    goto LABEL_47;
  }

LABEL_8:
  if (v33 && (!suchengEnabled ? (v12 = 0) : (v12 = 2048), -[TIWordSearch mecabraEnvironment](self, "mecabraEnvironment"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 analyzeString:v35 options:v12], v13, v14))
  {
    for (i = 0; ; ++i)
    {
      [(TIWordSearch *)self mecabra];
      v16 = MecabraGetNextCandidate();
      if (!v16)
      {
        break;
      }

      v17 = v16;
      if (!i)
      {
        i = [v5 nthIndexIgnoringExtensionCandidates:1];
      }

      v18 = [objc_alloc(MEMORY[0x277D6F448]) initWithMecabraCandidate:v17];
      [v5 insertMecabraCandidate:v18 mecabraCandidateRef:v17 atIndex:i];
      if (v10)
      {
        LOBYTE(v10) = 1;
      }

      else
      {
        candidate2 = [v18 candidate];
        LOBYTE(v10) = [ASCIIFromInputKeyString isEqualToString:candidate2];
      }
    }

    if (v10)
    {
      goto LABEL_47;
    }
  }

  else
  {
    i = 0;
    if (v10)
    {
      goto LABEL_47;
    }
  }

  if (!i)
  {
    i = [v5 nthIndexIgnoringExtensionCandidates:4];
  }

  [v5 insertSyntheticMecabraCandidateWithSurface:ASCIIFromInputKeyString input:v35 atIndex:i];
LABEL_47:

  objc_autoreleasePoolPop(context);

  return v5;
}

- (id)initTIWordSearchWithInputMode:(id)mode
{
  v6.receiver = self;
  v6.super_class = TIWordSearchCangjie;
  v3 = [(TIWordSearch *)&v6 initTIWordSearchWithInputMode:mode];
  v4 = v3;
  if (v3)
  {
    [v3 setAutoCorrects:0];
  }

  return v4;
}

@end