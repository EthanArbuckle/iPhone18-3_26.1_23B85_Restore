@interface TIMecabraCandidate(ZhuyinAddition)
- (BOOL)containPunctuationOnly;
- (uint64_t)hasUnsupportedReading;
- (void)hasUnsupportedReading;
@end

@implementation TIMecabraCandidate(ZhuyinAddition)

- (uint64_t)hasUnsupportedReading
{
  mecabraCandidatePointerValue = [self mecabraCandidatePointerValue];
  [mecabraCandidatePointerValue unsignedLongLongValue];

  v3 = MecabraCandidateCopySyllableLengthArrayInAnalysisString();
  if ([v3 count])
  {
    v4 = MecabraCandidateGetDictionaryReading();
    if (v4)
    {
      input = [self input];
      v6 = [input isEqualToString:v4];

      if (!v6)
      {
LABEL_9:
        v13 = 1;
LABEL_14:

        goto LABEL_15;
      }
    }

    candidate = [self candidate];
    zhuyinCharacterSet = [MEMORY[0x29EDB9F50] zhuyinCharacterSet];
    v9 = [candidate rangeOfCharacterFromSet:zhuyinCharacterSet];
    v11 = v10;

    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (TICanLogMessageAtLevel())
      {
        v12 = TIOSLogFacility();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          [(TIMecabraCandidate(ZhuyinAddition) *)self hasUnsupportedReading:v9];
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
  punctuationCharacterSet = [MEMORY[0x29EDB9F50] punctuationCharacterSet];
  invertedSet = [punctuationCharacterSet invertedSet];

  input = [self input];
  if (TIStringContainsCharacterFromSet(input, invertedSet))
  {
    v5 = 0;
  }

  else
  {
    candidate = [self candidate];
    v5 = !TIStringContainsCharacterFromSet(candidate, invertedSet);
  }

  return v5;
}

- (void)hasUnsupportedReading
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%s Mecabra returned NULL or empty syllable length array. Bailing...", "-[TIMecabraCandidate(ZhuyinAddition) hasUnsupportedReading]"];
  *buf = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_29EA88000, self, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);

  v3 = *MEMORY[0x29EDCA608];
}

@end