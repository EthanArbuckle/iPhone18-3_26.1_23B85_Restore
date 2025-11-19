@interface TypistKeyboardSinhala
- (TypistKeyboardSinhala)initWithCoder:(id)a3;
- (id)init:(id)a3 options:(id)a4;
- (id)setupKeyboardInfo:(id)a3 options:(id)a4;
- (id)tryAlternateVariationsOfKey:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TypistKeyboardSinhala

- (id)init:(id)a3 options:(id)a4
{
  v5.receiver = self;
  v5.super_class = TypistKeyboardSinhala;
  return [(TypistKeyboard *)&v5 init:a3 options:a4 locale:@"si"];
}

- (id)setupKeyboardInfo:(id)a3 options:(id)a4
{
  v7.receiver = self;
  v7.super_class = TypistKeyboardSinhala;
  v5 = [(TypistKeyboard *)&v7 setupKeyboardInfo:a3 options:a4];
  if (!v5)
  {
    [(TypistKeyboardSinhala *)self setJoinedVowelForms:&unk_28802A820];
  }

  return v5;
}

- (id)tryAlternateVariationsOfKey:(id)a3
{
  v4 = a3;
  v5 = [(TypistKeyboardSinhala *)self joinedVowelForms];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = [(TypistKeyboardSinhala *)self joinedVowelForms];
    v8 = [v7 objectForKeyedSubscript:v4];
    v11.receiver = self;
    v11.super_class = TypistKeyboardSinhala;
    v9 = [(TypistKeyboard *)&v11 generateKeystrokeStream:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (TypistKeyboardSinhala)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TypistKeyboardSinhala;
  v5 = [(TypistKeyboard *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"joinedVowelForms"];
    joinedVowelForms = v5->_joinedVowelForms;
    v5->_joinedVowelForms = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = TypistKeyboardSinhala;
  [(TypistKeyboard *)&v6 encodeWithCoder:v4];
  joinedVowelForms = self->_joinedVowelForms;
  if (joinedVowelForms)
  {
    [v4 encodeObject:joinedVowelForms forKey:@"joinedVowelForms"];
  }
}

@end