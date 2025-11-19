@interface TypistKeyboardThai
- (BOOL)is24KeyThaiKeyboard;
- (id)getPostfixKey:(id)a3;
- (id)init:(id)a3 options:(id)a4;
- (id)setupKeyboardInfo:(id)a3 options:(id)a4;
@end

@implementation TypistKeyboardThai

- (id)init:(id)a3 options:(id)a4
{
  v5.receiver = self;
  v5.super_class = TypistKeyboardThai;
  return [(TypistKeyboard *)&v5 init:a3 options:a4 locale:@"th_TH"];
}

- (id)setupKeyboardInfo:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 lowercaseString];
  v9 = [v8 containsString:@"24key"];

  if (v9)
  {
    [(TypistKeyboardThai *)self setBaseCharacters:&unk_28802A528];
  }

  v13.receiver = self;
  v13.super_class = TypistKeyboardThai;
  v10 = [(TypistKeyboard *)&v13 setupKeyboardInfo:v6 options:v7];
  if (!v10)
  {
    v11 = [TypistCandidateBar initWithTypistKeyboard:self];
    [(TypistKeyboard *)self setCandidatebar:v11];
  }

  return v10;
}

- (BOOL)is24KeyThaiKeyboard
{
  v2 = [(TypistKeyboard *)self keyboardID];
  v3 = [v2 lowercaseString];
  v4 = [v3 containsString:@"24key"];

  return v4;
}

- (id)getPostfixKey:(id)a3
{
  v4 = a3;
  if ([(TypistKeyboardThai *)self is24KeyThaiKeyboard])
  {
    v5 = [(TypistKeyboardThai *)self baseCharacters];
    v6 = [v5 objectForKeyedSubscript:v4];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v4;
    }

    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  return v9;
}

@end