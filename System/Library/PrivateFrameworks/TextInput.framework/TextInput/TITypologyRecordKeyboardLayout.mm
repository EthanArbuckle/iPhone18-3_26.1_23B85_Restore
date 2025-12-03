@interface TITypologyRecordKeyboardLayout
- (TITypologyRecordKeyboardLayout)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TITypologyRecordKeyboardLayout

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TITypologyRecordKeyboardLayout;
  coderCopy = coder;
  [(TITypologyRecord *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_keyboardLayout forKey:{@"keyboardLayout", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_name forKey:@"name"];
}

- (TITypologyRecordKeyboardLayout)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = TITypologyRecordKeyboardLayout;
  v5 = [(TITypologyRecord *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyboardLayout"];
    keyboardLayout = v5->_keyboardLayout;
    v5->_keyboardLayout = v6;

    v8 = [coderCopy decodeObjectForKey:@"name"];
    name = v5->_name;
    v5->_name = v8;
  }

  return v5;
}

@end