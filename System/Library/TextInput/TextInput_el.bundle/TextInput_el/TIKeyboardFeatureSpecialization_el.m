@interface TIKeyboardFeatureSpecialization_el
- (id)externalStringToInternal:(id)a3;
- (id)internalStringToExternal:(id)a3;
- (id)nonstopPunctuationCharacters;
- (id)sentenceDelimitingCharacters;
- (id)sentencePrefixingCharacters;
- (id)sentenceTrailingCharacters;
- (void)createInputManager:(id)a3;
@end

@implementation TIKeyboardFeatureSpecialization_el

- (void)createInputManager:(id)a3
{
  v6.receiver = self;
  v6.super_class = TIKeyboardFeatureSpecialization_el;
  [(TIKeyboardQuickTypeSpecialization *)&v6 createInputManager:a3];
  v4 = [(TIKeyboardFeatureSpecialization *)self inputMode];
  [v4 locale];
  objc_claimAutoreleasedReturnValue();

  operator new();
}

- (id)sentencePrefixingCharacters
{
  v5.receiver = self;
  v5.super_class = TIKeyboardFeatureSpecialization_el;
  v2 = [(TIKeyboardFeatureSpecialization *)&v5 sentencePrefixingCharacters];
  v3 = [v2 stringByAppendingString:@"«"];

  return v3;
}

- (id)sentenceDelimitingCharacters
{
  v5.receiver = self;
  v5.super_class = TIKeyboardFeatureSpecialization_el;
  v2 = [(TIKeyboardFeatureSpecialization *)&v5 sentenceDelimitingCharacters];
  v3 = [v2 stringByAppendingString:@""];;

  return v3;
}

- (id)sentenceTrailingCharacters
{
  v5.receiver = self;
  v5.super_class = TIKeyboardFeatureSpecialization_el;
  v2 = [(TIKeyboardFeatureSpecialization *)&v5 sentenceTrailingCharacters];
  v3 = [v2 stringByAppendingString:@"»"];

  return v3;
}

- (id)externalStringToInternal:(id)a3
{
  v14 = *MEMORY[0x29EDCA608];
  v12 = 0xB400000385;
  v13 = 168;
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
  v29[2] = *MEMORY[0x29EDCA608];
  KB::utf8_string(v26, a3, a2);
  [(TIKeyboardFeatureSpecialization *)self precomposedCharacterSet];
  KB::compose_diacritics();
  KB::String::~String(v26);
  KB::String::String(v26);
  v4 = v28;
  if (!v28)
  {
    v4 = v29;
  }

  v22 = v4;
  v23 = 0;
  v24 = v27;
  v25 = 0;
  KB::String::iterator::initialize(&v22);
  v5 = v28;
  if (!v28)
  {
    v5 = v29;
  }

  v18 = v5;
  v19 = v27;
  v20 = v27;
  v21 = 0;
  KB::String::iterator::initialize(&v18);
  while (v23 != v19)
  {
    if (v25 == 963)
    {
      v7 = v28;
      if (!v28)
      {
        v7 = v29;
      }

      v18 = v7;
      v19 = 0;
      v20 = v27;
      v21 = 0;
      KB::String::iterator::initialize(&v18);
      if (v23 != v19)
      {
        KB::String::iterator::operator-();
        if (((0x40001FEu >> u_charType(c)) & 1) == 0)
        {
          KB::String::iterator::operator-();
        }
      }

      KB::String::iterator::operator+();
      v8 = v28;
      if (!v28)
      {
        v8 = v29;
      }

      v14 = v8;
      v15 = v27;
      v16 = v27;
      c = 0;
      KB::String::iterator::initialize(&v14);
      if (v19 != v15)
      {
        KB::String::iterator::operator+();
        if (((0x40001FEu >> u_charType(v13)) & 1) == 0)
        {
          KB::String::iterator::operator+();
        }
      }
    }

    KB::String::append(v26);
    KB::String::iterator::operator++();
    v9 = v28;
    if (!v28)
    {
      v9 = v29;
    }

    v18 = v9;
    v19 = v27;
    v20 = v27;
    v21 = 0;
    KB::String::iterator::initialize(&v18);
  }

  v10 = KB::ns_string(v26, v6);
  KB::String::~String(v26);
  KB::String::~String(&v27);
  v11 = *MEMORY[0x29EDCA608];

  return v10;
}

- (id)nonstopPunctuationCharacters
{
  v5.receiver = self;
  v5.super_class = TIKeyboardFeatureSpecialization_el;
  v2 = [(TIKeyboardFeatureSpecialization *)&v5 nonstopPunctuationCharacters];
  v3 = [v2 stringByAppendingString:@"´¨΅"];

  return v3;
}

@end