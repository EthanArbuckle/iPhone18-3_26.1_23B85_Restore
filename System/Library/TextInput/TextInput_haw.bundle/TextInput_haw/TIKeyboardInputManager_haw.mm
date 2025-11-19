@interface TIKeyboardInputManager_haw
- (id)externalStringToInternal:(id)a3;
- (id)internalStringToExternal:(id)a3;
- (id)sentencePrefixingCharacters;
- (void)initImplementation;
@end

@implementation TIKeyboardInputManager_haw

- (void)initImplementation
{
  if (!*(&self->super.super.super.isa + *MEMORY[0x29EDC7290]))
  {
    operator new();
  }

  return *(&self->super.super.super.isa + *MEMORY[0x29EDC7290]);
}

- (id)externalStringToInternal:(id)a3
{
  v13 = *MEMORY[0x29EDCA608];
  v12[0] = 175;
  v4 = a3;
  std::vector<unsigned int>::vector[abi:nn200100](__p, v12, 1uLL);
  KB::utf8_string(v11, v4, v5);

  [(TIKeyboardInputManager_haw *)self precomposedCharacterSet];
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
  [(TIKeyboardInputManager_haw *)self precomposedCharacterSet];
  KB::compose_diacritics();
  v5 = KB::ns_string(v9, v4);
  KB::String::~String(v9);
  KB::String::~String(v8);
  v6 = *MEMORY[0x29EDCA608];

  return v5;
}

- (id)sentencePrefixingCharacters
{
  v5.receiver = self;
  v5.super_class = TIKeyboardInputManager_haw;
  v2 = [(TIKeyboardInputManager_haw *)&v5 sentencePrefixingCharacters];
  v3 = [v2 stringByAppendingString:@"ʻ"];

  return v3;
}

@end