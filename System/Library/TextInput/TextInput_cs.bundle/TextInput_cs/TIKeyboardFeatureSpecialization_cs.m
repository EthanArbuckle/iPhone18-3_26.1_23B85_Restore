@interface TIKeyboardFeatureSpecialization_cs
- (id)accentKeyStringForKeyboardState:(id)a3;
- (id)externalStringToInternal:(id)a3;
- (id)internalStringToExternal:(id)a3;
- (id)nonstopPunctuationCharacters;
@end

@implementation TIKeyboardFeatureSpecialization_cs

- (id)accentKeyStringForKeyboardState:(id)a3
{
  v3 = a3;
  v4 = [v3 layoutState];
  v5 = [v4 hasAccentKey];

  if (v5)
  {
    v6 = [v3 documentState];
    v7 = [v6 contextBeforeInput];

    v8 = [v7 length];
    v9 = @"ˇ";
    if (v8 && ([v7 characterAtIndex:v8 - 1] & 0xFFFFFFDF) == 0x55)
    {
      v9 = @"˚";
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)externalStringToInternal:(id)a3
{
  v14 = *MEMORY[0x29EDCA608];
  v12 = 0x2C7000000B4;
  v13 = 730;
  v4 = a3;
  std::vector<unsigned int>::vector[abi:nn200100](__p, &v12, 3uLL);
  KB::utf8_string(v11, v4, v5);

  [(TIKeyboardFeatureSpecialization *)self precomposedCharacterSet];
  KB::decompose_diacritics();
  v7 = KB::ns_string(&v12, v6);
  KB::String::~String(&v12);
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
  v5.super_class = TIKeyboardFeatureSpecialization_cs;
  v2 = [(TIKeyboardFeatureSpecialization *)&v5 nonstopPunctuationCharacters];
  v3 = [v2 stringByAppendingString:@"ˇ´˚"];

  return v3;
}

@end