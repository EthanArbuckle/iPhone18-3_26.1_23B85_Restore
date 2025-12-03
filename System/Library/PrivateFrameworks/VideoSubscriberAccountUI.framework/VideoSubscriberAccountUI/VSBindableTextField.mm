@interface VSBindableTextField
- (BOOL)isSecureTextEntry;
- (id)placeholder;
- (id)text;
- (int64_t)autocapitalizationType;
- (int64_t)autocorrectionType;
- (int64_t)keyboardType;
- (int64_t)returnKeyType;
- (void)setAutocapitalizationType:(int64_t)type;
- (void)setAutocorrectionType:(int64_t)type;
- (void)setKeyboardType:(int64_t)type;
- (void)setPlaceholder:(id)placeholder;
- (void)setReturnKeyType:(int64_t)type;
- (void)setText:(id)text;
@end

@implementation VSBindableTextField

- (id)text
{
  v4.receiver = self;
  v4.super_class = VSBindableTextField;
  text = [(VSBindableTextField *)&v4 text];

  return text;
}

- (void)setText:(id)text
{
  v3.receiver = self;
  v3.super_class = VSBindableTextField;
  [(VSBindableTextField *)&v3 setText:text];
}

- (id)placeholder
{
  v4.receiver = self;
  v4.super_class = VSBindableTextField;
  placeholder = [(VSBindableTextField *)&v4 placeholder];

  return placeholder;
}

- (void)setPlaceholder:(id)placeholder
{
  v3.receiver = self;
  v3.super_class = VSBindableTextField;
  [(VSBindableTextField *)&v3 setPlaceholder:placeholder];
}

- (int64_t)autocapitalizationType
{
  v3.receiver = self;
  v3.super_class = VSBindableTextField;
  return [(VSBindableTextField *)&v3 autocapitalizationType];
}

- (void)setAutocapitalizationType:(int64_t)type
{
  v3.receiver = self;
  v3.super_class = VSBindableTextField;
  [(VSBindableTextField *)&v3 setAutocapitalizationType:type];
}

- (int64_t)autocorrectionType
{
  v3.receiver = self;
  v3.super_class = VSBindableTextField;
  return [(VSBindableTextField *)&v3 autocorrectionType];
}

- (void)setAutocorrectionType:(int64_t)type
{
  v3.receiver = self;
  v3.super_class = VSBindableTextField;
  [(VSBindableTextField *)&v3 setAutocorrectionType:type];
}

- (BOOL)isSecureTextEntry
{
  v3.receiver = self;
  v3.super_class = VSBindableTextField;
  return [(VSBindableTextField *)&v3 isSecureTextEntry];
}

- (int64_t)keyboardType
{
  v3.receiver = self;
  v3.super_class = VSBindableTextField;
  return [(VSBindableTextField *)&v3 keyboardType];
}

- (void)setKeyboardType:(int64_t)type
{
  v3.receiver = self;
  v3.super_class = VSBindableTextField;
  [(VSBindableTextField *)&v3 setKeyboardType:type];
}

- (int64_t)returnKeyType
{
  v3.receiver = self;
  v3.super_class = VSBindableTextField;
  return [(VSBindableTextField *)&v3 returnKeyType];
}

- (void)setReturnKeyType:(int64_t)type
{
  v3.receiver = self;
  v3.super_class = VSBindableTextField;
  [(VSBindableTextField *)&v3 setReturnKeyType:type];
}

@end