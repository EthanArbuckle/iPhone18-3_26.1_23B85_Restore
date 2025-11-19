@interface TIKeyboardInputManagerFavonius_ko
- (BOOL)canHandleKeyHitTest;
- (Hangul2SetAutomata)batchConverter;
- (TIKeyboardInputManagerFavonius_ko)initWithConfig:(id)a3 keyboardState:(id)a4;
- (id)composeJamo:(id)a3;
- (id)deleteFromInput:(unint64_t *)a3;
- (void)acceptInput;
- (void)addInput:(id)a3 withContext:(id)a4;
- (void)clearInput;
- (void)dealloc;
- (void)initImplementation;
- (void)setInput:(id)a3;
- (void)syncToLayoutState:(id)a3;
@end

@implementation TIKeyboardInputManagerFavonius_ko

- (TIKeyboardInputManagerFavonius_ko)initWithConfig:(id)a3 keyboardState:(id)a4
{
  v5.receiver = self;
  v5.super_class = TIKeyboardInputManagerFavonius_ko;
  result = [(TIKeyboardInputManagerFavonius_ko *)&v5 initWithConfig:a3 keyboardState:a4];
  if (result)
  {
    result->_deleteSyllable = 1;
  }

  return result;
}

- (void)initImplementation
{
  if (!*(&self->super.super.super.isa + *MEMORY[0x29EDC7290]))
  {
    operator new();
  }

  return *(&self->super.super.super.isa + *MEMORY[0x29EDC7290]);
}

- (Hangul2SetAutomata)batchConverter
{
  result = self->_batchConverter;
  if (!result)
  {
    operator new();
  }

  return result;
}

- (void)syncToLayoutState:(id)a3
{
  v6.receiver = self;
  v6.super_class = TIKeyboardInputManagerFavonius_ko;
  v4 = a3;
  [(TIKeyboardInputManagerFavonius_ko *)&v6 syncToLayoutState:v4];
  v5 = [v4 softwareLayout];

  LODWORD(v4) = [v5 isEqualToString:@"Korean10Key"];
  *([(TIKeyboardInputManagerFavonius_ko *)self batchConverter]+ 36) = v4;
  TIInputManager_ko::set_is_10key(*(&self->super.super.super.isa + *MEMORY[0x29EDC7290]), v4);
}

- (void)dealloc
{
  batchConverter = self->_batchConverter;
  if (batchConverter)
  {
    Hangul2SetAutomata::~Hangul2SetAutomata(batchConverter);
    MEMORY[0x29EDA3FF0]();
    self->_batchConverter = 0;
  }

  v4.receiver = self;
  v4.super_class = TIKeyboardInputManagerFavonius_ko;
  [(TIKeyboardInputManagerFavonius_ko *)&v4 dealloc];
}

- (id)composeJamo:(id)a3
{
  v4 = a3;
  v5 = _composeJamo(v4, [(TIKeyboardInputManagerFavonius_ko *)self batchConverter]);

  return v5;
}

- (BOOL)canHandleKeyHitTest
{
  v5.receiver = self;
  v5.super_class = TIKeyboardInputManagerFavonius_ko;
  v3 = [(TIKeyboardInputManagerFavonius_ko *)&v5 canHandleKeyHitTest];
  if (v3)
  {
    LOBYTE(v3) = TIInputManager_ko::is_10key(*(&self->super.super.super.isa + *MEMORY[0x29EDC7290])) ^ 1;
  }

  return v3;
}

- (void)clearInput
{
  self->_deleteSyllable = 1;
  v2.receiver = self;
  v2.super_class = TIKeyboardInputManagerFavonius_ko;
  [(TIKeyboardInputManagerFavonius_ko *)&v2 clearInput];
}

- (void)acceptInput
{
  self->_deleteSyllable = 1;
  v2.receiver = self;
  v2.super_class = TIKeyboardInputManagerFavonius_ko;
  [(TIKeyboardInputManagerFavonius_ko *)&v2 acceptInput];
}

- (void)setInput:(id)a3
{
  v4 = a3;
  [(TIKeyboardInputManagerFavonius_ko *)self clearInput];
  v5.receiver = self;
  v5.super_class = TIKeyboardInputManagerFavonius_ko;
  [(TIKeyboardInputManagerFavonius_ko *)&v5 setInput:v4];
}

- (void)addInput:(id)a3 withContext:(id)a4
{
  v17[4] = *MEMORY[0x29EDCA608];
  v6 = a3;
  v7 = a4;
  v8 = [v6 string];
  self->_deleteSyllable = 0;
  [v6 setAutoshifted:0];
  [v6 setUppercase:0];
  v9 = [v6 isMultitap];
  if (![v8 isEqualToString:@"ㆍ"])
  {
    if (!v9)
    {
      goto LABEL_10;
    }

    v14 = 1;
    goto LABEL_9;
  }

  TIInputManager::input_string(v17, *(&self->super.super.super.isa + *MEMORY[0x29EDC7290]));
  v11 = KB::ns_string(v17, v10);
  KB::String::~String(v17);
  v12 = [v11 hasSuffix:@"ㆍㆍ"];

  v13 = v12 | v9;
  if (v12)
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  if (v13)
  {
    do
    {
LABEL_9:
      [(TIKeyboardInputManagerFavonius_ko *)self deleteFromInputWithContext:v7];
      --v14;
    }

    while (v14);
  }

LABEL_10:
  v16.receiver = self;
  v16.super_class = TIKeyboardInputManagerFavonius_ko;
  [(TIKeyboardInputManagerFavonius_ko *)&v16 addInput:v6 withContext:v7];

  v15 = *MEMORY[0x29EDCA608];
}

- (id)deleteFromInput:(unint64_t *)a3
{
  v17[4] = *MEMORY[0x29EDCA608];
  if (!a3)
  {
    if (!self->_deleteSyllable)
    {
      goto LABEL_6;
    }

LABEL_5:
    v16.receiver = self;
    v16.super_class = TIKeyboardInputManagerFavonius_ko;
    v5 = [(TIKeyboardInputManagerFavonius_ko *)&v16 deleteFromInput:a3];
    goto LABEL_12;
  }

  *a3 = 0;
  if (self->_deleteSyllable)
  {
    goto LABEL_5;
  }

  *a3 = 1;
LABEL_6:
  v6 = *MEMORY[0x29EDC7290];
  if (*(&self->super.super.super.isa + v6) && (v7 = [(TIKeyboardInputManagerFavonius_ko *)self inputIndex], TIInputManager::delete_from_input(*(&self->super.super.super.isa + v6)), v8 = *MEMORY[0x29EDC7288], *(&self->super.super.super.isa + v8)))
  {
    TIInputManager::input_string(v17, *(&self->super.super.super.isa + v6));
    v10 = KB::ns_string(v17, v9);
    KB::String::~String(v17);
    v11 = [(TIKeyboardInputManagerFavonius_ko *)self internalStringToExternal:v10];
    v12 = [v10 substringToIndex:{objc_msgSend(v10, "_indexFromStartingIndex:byIncrementingComposedCharacterSequenceCount:", 0, (*(&self->super.super.super.isa + v6))[24])}];
    v13 = [(TIKeyboardInputManagerFavonius_ko *)self internalStringToExternal:v12];

    v5 = [(TIKeyboardInputManagerFavonius_ko *)self suffixOfDesiredString:v13 toAppendToInputString:*(&self->super.super.super.isa + v8) withInputIndex:v7 afterDeletionCount:a3];
    [*(&self->super.super.super.isa + v8) setString:v11];
    if (![v5 length])
    {

      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_12:
  v14 = *MEMORY[0x29EDCA608];

  return v5;
}

@end