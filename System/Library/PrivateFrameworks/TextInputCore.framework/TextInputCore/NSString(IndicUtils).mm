@interface NSString(IndicUtils)
- (__CFString)_lastConjunctInLanguage:()IndicUtils;
- (__CFString)_stringByRemovingOffensiveOrVulgarWords;
@end

@implementation NSString(IndicUtils)

- (__CFString)_stringByRemovingOffensiveOrVulgarWords
{
  if ([self isEqualToString:@"মাং"])
  {
    selfCopy = @" ং";
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (__CFString)_lastConjunctInLanguage:()IndicUtils
{
  ScriptCodeForLanguage = GetScriptCodeForLanguage(a3);
  _lastGrapheme = [self _lastGrapheme];
  if (![_lastGrapheme _contentsExclusivelyInScript:ScriptCodeForLanguage])
  {
    v6 = &stru_283FDFAF8;
    goto LABEL_21;
  }

  v6 = _lastGrapheme;
  v7 = [(__CFString *)v6 length]- 1;
  if (v7 < 0)
  {
    goto LABEL_17;
  }

  v8 = 0;
  v9 = TI::IndicUtils::initialVowelLetterForScript(ScriptCodeForLanguage) + 72;
  while (1)
  {
    if ([(__CFString *)v6 characterAtIndex:v7]== v9)
    {
      if (v7 && v7 < ([(__CFString *)v6 length]- 1))
      {
        v10 = [(__CFString *)v6 substringWithRange:v7 - 1, 3];
        if (GetAkhandConjuncts(void)::onceToken != -1)
        {
          dispatch_once(&GetAkhandConjuncts(void)::onceToken, &__block_literal_global_239);
        }

        v11 = [GetAkhandConjuncts(void)::__akhandConjuncts containsObject:v10];

        if (v11)
        {
          goto LABEL_12;
        }
      }

      ++v8;
    }

    if (v8 == 2)
    {
      break;
    }

LABEL_12:
    if (v7-- <= 0)
    {
      goto LABEL_17;
    }
  }

  v13 = [(__CFString *)v6 substringFromIndex:v7 + 1];

  v6 = v13;
LABEL_17:
  if (GetTallConjuncts(void)::onceToken != -1)
  {
    dispatch_once(&GetTallConjuncts(void)::onceToken, &__block_literal_global_271);
  }

  if ([GetTallConjuncts(void)::__tallConjuncts containsObject:v6])
  {
    v14 = [MEMORY[0x277CCACA8] _stringWithUnichar:{-[__CFString _lastLongCharacter](v6, "_lastLongCharacter")}];

    v6 = v14;
  }

LABEL_21:

  return v6;
}

@end