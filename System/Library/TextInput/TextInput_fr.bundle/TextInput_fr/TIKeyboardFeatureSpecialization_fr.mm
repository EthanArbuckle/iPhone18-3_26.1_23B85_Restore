@interface TIKeyboardFeatureSpecialization_fr
- (id)accentKeyStringForInputPrefix:(id)prefix;
- (id)accentKeyStringForKeyboardState:(id)state;
- (id)externalStringToInternal:(id)internal;
- (id)internalStringToExternal:(id)external;
- (id)nonstopPunctuationCharacters;
- (id)terminatorsDeletingAutospace;
- (void)createInputManager:(id)manager;
@end

@implementation TIKeyboardFeatureSpecialization_fr

- (id)accentKeyStringForInputPrefix:(id)prefix
{
  prefixCopy = prefix;
  if (![prefixCopy length])
  {
    v5 = @"´";
    lowercaseString = prefixCopy;
    goto LABEL_8;
  }

  lowercaseString = [prefixCopy lowercaseString];

  if ([TIKeyboardFeatureSpecialization_fr accentKeyStringForInputPrefix:]::once != -1)
  {
    [TIKeyboardFeatureSpecialization_fr accentKeyStringForInputPrefix:];
  }

  if ([lowercaseString hasSuffix:@"qu"] & 1) != 0 || (objc_msgSend(-[TIKeyboardFeatureSpecialization_fr accentKeyStringForInputPrefix:]::apostrophePrefixes, "containsObject:", lowercaseString))
  {
    goto LABEL_6;
  }

  v7 = [lowercaseString characterAtIndex:{objc_msgSend(lowercaseString, "length") - 1}];
  v8 = (((v7 - 97) >> 1) | ((v7 - 97) << 15));
  if (v8 <= 3)
  {
    if (!(((v7 - 97) >> 1) | ((v7 - 97) << 15)))
    {
      v5 = @"ˋ";
      goto LABEL_8;
    }

    if (v8 == 2)
    {
      v5 = @"´";
      goto LABEL_8;
    }

LABEL_6:
    v5 = @"'’";
    goto LABEL_8;
  }

  if (v8 == 4 || v8 == 7)
  {
    v5 = @"ˆ";
    goto LABEL_8;
  }

  if (v8 != 10)
  {
    goto LABEL_6;
  }

  v9 = @"ˋ";
  if (([lowercaseString isEqualToString:@"ou"] & 1) == 0 && !objc_msgSend(lowercaseString, "isEqualToString:", @"dou"))
  {
    v9 = @"ˆ";
  }

  v5 = v9;
LABEL_8:

  return v5;
}

- (id)accentKeyStringForKeyboardState:(id)state
{
  stateCopy = state;
  layoutState = [stateCopy layoutState];
  hasAccentKey = [layoutState hasAccentKey];

  if (hasAccentKey)
  {
    if ([TIKeyboardFeatureSpecialization_fr accentKeyStringForKeyboardState:]::onceToken != -1)
    {
      [TIKeyboardFeatureSpecialization_fr accentKeyStringForKeyboardState:];
    }

    documentState = [stateCopy documentState];
    contextBeforeInput = [documentState contextBeforeInput];

    v9 = [contextBeforeInput rangeOfCharacterFromSet:-[TIKeyboardFeatureSpecialization_fr accentKeyStringForKeyboardState:]::nonLetterSet options:4];
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [contextBeforeInput substringFromIndex:v9 + v10];

      contextBeforeInput = v11;
    }

    v12 = [(TIKeyboardFeatureSpecialization_fr *)self accentKeyStringForInputPrefix:contextBeforeInput];
    v13 = v12;
    v14 = @"UI-Nothing";
    if (v12)
    {
      v14 = v12;
    }

    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)createInputManager:(id)manager
{
  v5 = *MEMORY[0x29EDCA608];
  managerCopy = manager;
  operator new();
}

- (id)externalStringToInternal:(id)internal
{
  v13 = *MEMORY[0x29EDCA608];
  v12[0] = xmmword_29EA1E060;
  internalCopy = internal;
  std::vector<unsigned int>::vector[abi:nn200100](__p, v12, 4uLL);
  KB::utf8_string(v11, internalCopy, v5);

  [(TIKeyboardFeatureSpecialization *)self precomposedCharacterSet];
  KB::decompose_diacritics();
  v7 = KB::ns_string(v12, v6);
  KB::String::~String(v12);
  KB::String::~String(v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v8 = *MEMORY[0x29EDCA608];

  return v7;
}

- (id)internalStringToExternal:(id)external
{
  v10 = *MEMORY[0x29EDCA608];
  KB::utf8_string(v8, external, a2);
  [(TIKeyboardFeatureSpecialization *)self precomposedCharacterSet];
  KB::compose_diacritics();
  v5 = KB::ns_string(v9, v4);
  KB::String::~String(v9);
  KB::String::~String(v8);
  v6 = *MEMORY[0x29EDCA608];

  return v5;
}

- (id)nonstopPunctuationCharacters
{
  v5.receiver = self;
  v5.super_class = TIKeyboardFeatureSpecialization_fr;
  nonstopPunctuationCharacters = [(TIKeyboardFeatureSpecialization *)&v5 nonstopPunctuationCharacters];
  v3 = [nonstopPunctuationCharacters stringByAppendingString:@"-"];

  return v3;
}

- (id)terminatorsDeletingAutospace
{
  inputMode = [(TIKeyboardFeatureSpecialization *)self inputMode];
  languageWithRegion = [inputMode languageWithRegion];

  if (([languageWithRegion isEqualToString:@"fr_CA"] & 1) != 0 || objc_msgSend(languageWithRegion, "isEqualToString:", @"fr_CH"))
  {
    v8.receiver = self;
    v8.super_class = TIKeyboardFeatureSpecialization_fr;
    terminatorsDeletingAutospace = [(TIKeyboardFeatureSpecialization *)&v8 terminatorsDeletingAutospace];
  }

  else
  {
    if ([TIKeyboardFeatureSpecialization_fr terminatorsDeletingAutospace]::onceToken != -1)
    {
      [TIKeyboardFeatureSpecialization_fr terminatorsDeletingAutospace];
    }

    terminatorsDeletingAutospace = [TIKeyboardFeatureSpecialization_fr terminatorsDeletingAutospace]::result;
  }

  v6 = terminatorsDeletingAutospace;

  return v6;
}

@end