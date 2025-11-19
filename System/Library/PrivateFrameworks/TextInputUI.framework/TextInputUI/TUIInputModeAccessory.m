@interface TUIInputModeAccessory
- (BOOL)isEqual:(id)a3;
- (TUIInputModeAccessory)initWithCoder:(id)a3;
- (TUIInputModeAccessory)initWithInputMode:(id)a3;
- (id)additionalComponents;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUIInputModeAccessory

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = TUIInputModeAccessory;
  v3 = 257 * [(TUICursorAccessory *)&v7 hash];
  v4 = [(TUIInputModeAccessory *)self inputMode];
  v5 = [v4 hash];

  return v5 + v3;
}

- (id)additionalComponents
{
  v6.receiver = self;
  v6.super_class = TUIInputModeAccessory;
  v3 = [(TUICursorAccessory *)&v6 additionalComponents];
  if (self->_inputMode)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"inputMode = %@", self->_inputMode];
    [v3 addObject:v4];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (self == v4)
  {
    v6 = 1;
    goto LABEL_7;
  }

  v8.receiver = self;
  v8.super_class = TUIInputModeAccessory;
  if ([(TUICursorAccessory *)&v8 isEqual:v4])
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

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TUIInputModeAccessory;
  v4 = a3;
  [(TUICursorAccessory *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_inputMode forKey:{@"TUInputModeCodingKey", v5.receiver, v5.super_class}];
}

- (TUIInputModeAccessory)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TUIInputModeAccessory;
  v5 = [(TUICursorAccessory *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TUInputModeCodingKey"];
    inputMode = v5->_inputMode;
    v5->_inputMode = v6;
  }

  return v5;
}

- (TUIInputModeAccessory)initWithInputMode:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TUIInputModeAccessory;
  v5 = [(TUICursorAccessory *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(TUIInputModeAccessory *)v5 setInputMode:v4];
  }

  return v6;
}

@end