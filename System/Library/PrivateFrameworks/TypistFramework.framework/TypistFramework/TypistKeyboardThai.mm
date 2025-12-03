@interface TypistKeyboardThai
- (BOOL)is24KeyThaiKeyboard;
- (id)getPostfixKey:(id)key;
- (id)init:(id)init options:(id)options;
- (id)setupKeyboardInfo:(id)info options:(id)options;
@end

@implementation TypistKeyboardThai

- (id)init:(id)init options:(id)options
{
  v5.receiver = self;
  v5.super_class = TypistKeyboardThai;
  return [(TypistKeyboard *)&v5 init:init options:options locale:@"th_TH"];
}

- (id)setupKeyboardInfo:(id)info options:(id)options
{
  infoCopy = info;
  optionsCopy = options;
  lowercaseString = [infoCopy lowercaseString];
  v9 = [lowercaseString containsString:@"24key"];

  if (v9)
  {
    [(TypistKeyboardThai *)self setBaseCharacters:&unk_28802A528];
  }

  v13.receiver = self;
  v13.super_class = TypistKeyboardThai;
  v10 = [(TypistKeyboard *)&v13 setupKeyboardInfo:infoCopy options:optionsCopy];
  if (!v10)
  {
    v11 = [TypistCandidateBar initWithTypistKeyboard:self];
    [(TypistKeyboard *)self setCandidatebar:v11];
  }

  return v10;
}

- (BOOL)is24KeyThaiKeyboard
{
  keyboardID = [(TypistKeyboard *)self keyboardID];
  lowercaseString = [keyboardID lowercaseString];
  v4 = [lowercaseString containsString:@"24key"];

  return v4;
}

- (id)getPostfixKey:(id)key
{
  keyCopy = key;
  if ([(TypistKeyboardThai *)self is24KeyThaiKeyboard])
  {
    baseCharacters = [(TypistKeyboardThai *)self baseCharacters];
    v6 = [baseCharacters objectForKeyedSubscript:keyCopy];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = keyCopy;
    }

    v9 = v8;
  }

  else
  {
    v9 = keyCopy;
  }

  return v9;
}

@end