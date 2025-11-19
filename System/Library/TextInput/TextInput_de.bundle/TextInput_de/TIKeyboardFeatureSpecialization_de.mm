@interface TIKeyboardFeatureSpecialization_de
- (id)externalStringToInternal:(id)a3;
- (id)internalStringToExternal:(id)a3;
- (void)createInputManager:(id)a3;
@end

@implementation TIKeyboardFeatureSpecialization_de

- (void)createInputManager:(id)a3
{
  v6.receiver = self;
  v6.super_class = TIKeyboardFeatureSpecialization_de;
  [(TIKeyboardQuickTypeSpecialization *)&v6 createInputManager:a3];
  v4 = [(TIKeyboardFeatureSpecialization *)self inputMode];
  [v4 locale];
  objc_claimAutoreleasedReturnValue();

  operator new();
}

- (id)externalStringToInternal:(id)a3
{
  v12[4] = *MEMORY[0x29EDCA608];
  v12[0] = 0x2CB000000B4;
  v4 = a3;
  std::vector<unsigned int>::vector[abi:nn200100](__p, v12, 2uLL);
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

@end