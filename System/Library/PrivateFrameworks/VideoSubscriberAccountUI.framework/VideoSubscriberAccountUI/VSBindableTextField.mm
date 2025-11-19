@interface VSBindableTextField
- (BOOL)isSecureTextEntry;
- (id)placeholder;
- (id)text;
- (int64_t)autocapitalizationType;
- (int64_t)autocorrectionType;
- (int64_t)keyboardType;
- (int64_t)returnKeyType;
- (void)setAutocapitalizationType:(int64_t)a3;
- (void)setAutocorrectionType:(int64_t)a3;
- (void)setKeyboardType:(int64_t)a3;
- (void)setPlaceholder:(id)a3;
- (void)setReturnKeyType:(int64_t)a3;
- (void)setText:(id)a3;
@end

@implementation VSBindableTextField

- (id)text
{
  v4.receiver = self;
  v4.super_class = VSBindableTextField;
  v2 = [(VSBindableTextField *)&v4 text];

  return v2;
}

- (void)setText:(id)a3
{
  v3.receiver = self;
  v3.super_class = VSBindableTextField;
  [(VSBindableTextField *)&v3 setText:a3];
}

- (id)placeholder
{
  v4.receiver = self;
  v4.super_class = VSBindableTextField;
  v2 = [(VSBindableTextField *)&v4 placeholder];

  return v2;
}

- (void)setPlaceholder:(id)a3
{
  v3.receiver = self;
  v3.super_class = VSBindableTextField;
  [(VSBindableTextField *)&v3 setPlaceholder:a3];
}

- (int64_t)autocapitalizationType
{
  v3.receiver = self;
  v3.super_class = VSBindableTextField;
  return [(VSBindableTextField *)&v3 autocapitalizationType];
}

- (void)setAutocapitalizationType:(int64_t)a3
{
  v3.receiver = self;
  v3.super_class = VSBindableTextField;
  [(VSBindableTextField *)&v3 setAutocapitalizationType:a3];
}

- (int64_t)autocorrectionType
{
  v3.receiver = self;
  v3.super_class = VSBindableTextField;
  return [(VSBindableTextField *)&v3 autocorrectionType];
}

- (void)setAutocorrectionType:(int64_t)a3
{
  v3.receiver = self;
  v3.super_class = VSBindableTextField;
  [(VSBindableTextField *)&v3 setAutocorrectionType:a3];
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

- (void)setKeyboardType:(int64_t)a3
{
  v3.receiver = self;
  v3.super_class = VSBindableTextField;
  [(VSBindableTextField *)&v3 setKeyboardType:a3];
}

- (int64_t)returnKeyType
{
  v3.receiver = self;
  v3.super_class = VSBindableTextField;
  return [(VSBindableTextField *)&v3 returnKeyType];
}

- (void)setReturnKeyType:(int64_t)a3
{
  v3.receiver = self;
  v3.super_class = VSBindableTextField;
  [(VSBindableTextField *)&v3 setReturnKeyType:a3];
}

@end