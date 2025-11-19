@interface TITypologyRecordKeyboardLayout
- (TITypologyRecordKeyboardLayout)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TITypologyRecordKeyboardLayout

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TITypologyRecordKeyboardLayout;
  v4 = a3;
  [(TITypologyRecord *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_keyboardLayout forKey:{@"keyboardLayout", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_name forKey:@"name"];
}

- (TITypologyRecordKeyboardLayout)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TITypologyRecordKeyboardLayout;
  v5 = [(TITypologyRecord *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keyboardLayout"];
    keyboardLayout = v5->_keyboardLayout;
    v5->_keyboardLayout = v6;

    v8 = [v4 decodeObjectForKey:@"name"];
    name = v5->_name;
    v5->_name = v8;
  }

  return v5;
}

@end