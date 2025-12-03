@interface TUIInputModeAccessory
- (BOOL)isEqual:(id)equal;
- (TUIInputModeAccessory)initWithCoder:(id)coder;
- (TUIInputModeAccessory)initWithInputMode:(id)mode;
- (id)additionalComponents;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUIInputModeAccessory

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = TUIInputModeAccessory;
  v3 = 257 * [(TUICursorAccessory *)&v7 hash];
  inputMode = [(TUIInputModeAccessory *)self inputMode];
  v5 = [inputMode hash];

  return v5 + v3;
}

- (id)additionalComponents
{
  v6.receiver = self;
  v6.super_class = TUIInputModeAccessory;
  additionalComponents = [(TUICursorAccessory *)&v6 additionalComponents];
  if (self->_inputMode)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"inputMode = %@", self->_inputMode];
    [additionalComponents addObject:v4];
  }

  return additionalComponents;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_5;
  }

  if (self == equalCopy)
  {
    v6 = 1;
    goto LABEL_7;
  }

  v8.receiver = self;
  v8.super_class = TUIInputModeAccessory;
  if ([(TUICursorAccessory *)&v8 isEqual:equalCopy])
  {
    v6 = [(NSString *)self->_inputMode isEqualToString:v5->_inputMode];
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

LABEL_7:

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TUIInputModeAccessory;
  coderCopy = coder;
  [(TUICursorAccessory *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_inputMode forKey:{@"TUInputModeCodingKey", v5.receiver, v5.super_class}];
}

- (TUIInputModeAccessory)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TUIInputModeAccessory;
  v5 = [(TUICursorAccessory *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TUInputModeCodingKey"];
    inputMode = v5->_inputMode;
    v5->_inputMode = v6;
  }

  return v5;
}

- (TUIInputModeAccessory)initWithInputMode:(id)mode
{
  modeCopy = mode;
  v8.receiver = self;
  v8.super_class = TUIInputModeAccessory;
  v5 = [(TUICursorAccessory *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(TUIInputModeAccessory *)v5 setInputMode:modeCopy];
  }

  return v6;
}

@end