@interface TIMecabraCandidate(ZhuyinAddition)
- (BOOL)containPunctuationOnly;
- (uint64_t)hasUnsupportedReading;
- (void)hasUnsupportedReading;
@end

@implementation TIMecabraCandidate(ZhuyinAddition)

- (uint64_t)hasUnsupportedReading
{
  v2 = [a1 mecabraCandidatePointerValue];
  [v2 unsignedLongLongValue];

  v3 = MecabraCandidateCopySyllableLengthArrayInAnalysisString();
  if ([v3 count])
  {
    v4 = MecabraCandidateGetDictionaryReading();
    if (v4)
    {
      v5 = [a1 input];
      v6 = [v5 isEqualToString:v4];

      if (!v6)
      {
LABEL_9:
        v13 = 1;
LABEL_14:

        goto LABEL_15;
      }
    }

    v7 = [a1 candidate];
    v8 = [MEMORY[0x29EDB9F50] zhuyinCharacterSet];
    v9 = [v7 rangeOfCharacterFromSet:v8];
    v11 = v10;

    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (TICanLogMessageAtLevel())
      {
        v12 = TIOSLogFacility();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          [(TIMecabraCandidate(ZhuyinAddition) *)a1 hasUnsupportedReading:v9];
        }
      }

      goto LABEL_9;
    }

LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  v13 = 0;
  if (TICanLogMessageAtLevel())
  {
    v4 = TIOSLogFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [(TIMecabraCandidate(ZhuyinAddition) *)v4 hasUnsupportedReading];
    }

    goto LABEL_13;
  }

LABEL_15:

  return v13;
}

- (BOOL)containPunctuationOnly
{
  v2 = [MEMORY[0x29EDB9F50] punctuationCharacterSet];
  v3 = [v2 invertedSet];

  v4 = [a1 input];
  if (TIStringContainsCharacterFromSet(v4, v3))
  {
    v5 = 0;
  }

  else
  {
    v6 = [a1 candidate];
    v5 = !TIStringContainsCharacterFromSet(v6, v3);
  }

  return v5;
}

- (void)hasUnsupportedReading
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%s Mecabra returned NULL or empty syllable length array. Bailing...", "-[TIMecabraCandidate(ZhuyinAddition) hasUnsupportedReading]"];
  *buf = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_29EA88000, a1, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);

  v3 = *MEMORY[0x29EDCA608];
}

@end