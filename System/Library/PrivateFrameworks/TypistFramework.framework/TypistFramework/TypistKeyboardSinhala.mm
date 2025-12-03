@interface TypistKeyboardSinhala
- (TypistKeyboardSinhala)initWithCoder:(id)coder;
- (id)init:(id)init options:(id)options;
- (id)setupKeyboardInfo:(id)info options:(id)options;
- (id)tryAlternateVariationsOfKey:(id)key;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TypistKeyboardSinhala

- (id)init:(id)init options:(id)options
{
  v5.receiver = self;
  v5.super_class = TypistKeyboardSinhala;
  return [(TypistKeyboard *)&v5 init:init options:options locale:@"si"];
}

- (id)setupKeyboardInfo:(id)info options:(id)options
{
  v7.receiver = self;
  v7.super_class = TypistKeyboardSinhala;
  v5 = [(TypistKeyboard *)&v7 setupKeyboardInfo:info options:options];
  if (!v5)
  {
    [(TypistKeyboardSinhala *)self setJoinedVowelForms:&unk_28802A820];
  }

  return v5;
}

- (id)tryAlternateVariationsOfKey:(id)key
{
  keyCopy = key;
  joinedVowelForms = [(TypistKeyboardSinhala *)self joinedVowelForms];
  v6 = [joinedVowelForms objectForKeyedSubscript:keyCopy];

  if (v6)
  {
    joinedVowelForms2 = [(TypistKeyboardSinhala *)self joinedVowelForms];
    v8 = [joinedVowelForms2 objectForKeyedSubscript:keyCopy];
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

- (TypistKeyboardSinhala)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TypistKeyboardSinhala;
  v5 = [(TypistKeyboard *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"joinedVowelForms"];
    joinedVowelForms = v5->_joinedVowelForms;
    v5->_joinedVowelForms = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = TypistKeyboardSinhala;
  [(TypistKeyboard *)&v6 encodeWithCoder:coderCopy];
  joinedVowelForms = self->_joinedVowelForms;
  if (joinedVowelForms)
  {
    [coderCopy encodeObject:joinedVowelForms forKey:@"joinedVowelForms"];
  }
}

@end