@interface TypistKeyboardTamil
- (TypistKeyboardTamil)initWithCoder:(id)coder;
- (id)getPostfixKey:(id)key;
- (id)init:(id)init options:(id)options;
- (id)setupKeyboardInfo:(id)info options:(id)options;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TypistKeyboardTamil

- (id)init:(id)init options:(id)options
{
  v5.receiver = self;
  v5.super_class = TypistKeyboardTamil;
  return [(TypistKeyboard *)&v5 init:init options:options locale:@"ta"];
}

- (id)setupKeyboardInfo:(id)info options:(id)options
{
  v7.receiver = self;
  v7.super_class = TypistKeyboardTamil;
  v5 = [(TypistKeyboard *)&v7 setupKeyboardInfo:info options:options];
  if (!v5)
  {
    [(TypistKeyboardTamil *)self setJoinedVowelForms:&unk_28802A7F8];
  }

  return v5;
}

- (id)getPostfixKey:(id)key
{
  keyCopy = key;
  joinedVowelForms = [(TypistKeyboardTamil *)self joinedVowelForms];
  v6 = [joinedVowelForms objectForKeyedSubscript:keyCopy];

  if (v6)
  {
    joinedVowelForms2 = [(TypistKeyboardTamil *)self joinedVowelForms];
    v8 = [joinedVowelForms2 objectForKeyedSubscript:keyCopy];
  }

  else
  {
    v8 = keyCopy;
  }

  return v8;
}

- (TypistKeyboardTamil)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TypistKeyboardTamil;
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
  v6.super_class = TypistKeyboardTamil;
  [(TypistKeyboard *)&v6 encodeWithCoder:coderCopy];
  joinedVowelForms = self->_joinedVowelForms;
  if (joinedVowelForms)
  {
    [coderCopy encodeObject:joinedVowelForms forKey:@"joinedVowelForms"];
  }
}

@end