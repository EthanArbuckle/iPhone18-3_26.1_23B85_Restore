@interface TIKeyboardFeatureSpecialization_fr
- (id)accentKeyStringForInputPrefix:(id)a3;
- (id)accentKeyStringForKeyboardState:(id)a3;
- (id)externalStringToInternal:(id)a3;
- (id)internalStringToExternal:(id)a3;
- (id)nonstopPunctuationCharacters;
- (id)terminatorsDeletingAutospace;
- (void)createInputManager:(id)a3;
@end

@implementation TIKeyboardFeatureSpecialization_fr

- (id)accentKeyStringForInputPrefix:(id)a3
{
  v3 = a3;
  if (![v3 length])
  {
    v5 = @"´";
    v4 = v3;
    goto LABEL_8;
  }

  v4 = [v3 lowercaseString];

  if ([TIKeyboardFeatureSpecialization_fr accentKeyStringForInputPrefix:]::once != -1)
  {
    [TIKeyboardFeatureSpecialization_fr accentKeyStringForInputPrefix:];
  }

  if ([v4 hasSuffix:@"qu"] & 1) != 0 || (objc_msgSend(-[TIKeyboardFeatureSpecialization_fr accentKeyStringForInputPrefix:]::apostrophePrefixes, "containsObject:", v4))
  {
    goto LABEL_6;
  }

  v7 = [v4 characterAtIndex:{objc_msgSend(v4, "length") - 1}];
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
  if (([v4 isEqualToString:@"ou"] & 1) == 0 && !objc_msgSend(v4, "isEqualToString:", @"dou"))
  {
    v9 = @"ˆ";
  }

  v5 = v9;
LABEL_8:

  return v5;
}

- (id)accentKeyStringForKeyboardState:(id)a3
{
  v4 = a3;
  v5 = [v4 layoutState];
  v6 = [v5 hasAccentKey];

  if (v6)
  {
    if ([TIKeyboardFeatureSpecialization_fr accentKeyStringForKeyboardState:]::onceToken != -1)
    {
      [TIKeyboardFeatureSpecialization_fr accentKeyStringForKeyboardState:];
    }

    v7 = [v4 documentState];
    v8 = [v7 contextBeforeInput];

    v9 = [v8 rangeOfCharacterFromSet:-[TIKeyboardFeatureSpecialization_fr accentKeyStringForKeyboardState:]::nonLetterSet options:4];
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [v8 substringFromIndex:v9 + v10];

      v8 = v11;
    }

    v12 = [(TIKeyboardFeatureSpecialization_fr *)self accentKeyStringForInputPrefix:v8];
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

- (void)createInputManager:(id)a3
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = a3;
  operator new();
}

- (id)externalStringToInternal:(id)a3
{
  v13 = *MEMORY[0x29EDCA608];
  v12[0] = xmmword_29EA1E060;
  v4 = a3;
  std::vector<unsigned int>::vector[abi:nn200100](__p, v12, 4uLL);
  KB::utf8_string(v11, v4, v5);

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

- (id)internalStringToExternal:(id)a3
{
  v10 = *MEMORY[0x29EDCA608];
  KB::utf8_string(v8, a3, a2);
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
  v2 = [(TIKeyboardFeatureSpecialization *)&v5 nonstopPunctuationCharacters];
  v3 = [v2 stringByAppendingString:@"-"];

  return v3;
}

- (id)terminatorsDeletingAutospace
{
  v3 = [(TIKeyboardFeatureSpecialization *)self inputMode];
  v4 = [v3 languageWithRegion];

  if (([v4 isEqualToString:@"fr_CA"] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"fr_CH"))
  {
    v8.receiver = self;
    v8.super_class = TIKeyboardFeatureSpecialization_fr;
    v5 = [(TIKeyboardFeatureSpecialization *)&v8 terminatorsDeletingAutospace];
  }

  else
  {
    if ([TIKeyboardFeatureSpecialization_fr terminatorsDeletingAutospace]::onceToken != -1)
    {
      [TIKeyboardFeatureSpecialization_fr terminatorsDeletingAutospace];
    }

    v5 = [TIKeyboardFeatureSpecialization_fr terminatorsDeletingAutospace]::result;
  }

  v6 = v5;

  return v6;
}

@end