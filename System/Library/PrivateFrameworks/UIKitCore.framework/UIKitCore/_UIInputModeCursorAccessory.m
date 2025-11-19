@interface _UIInputModeCursorAccessory
- (_UIInputModeCursorAccessory)initWithCoder:(id)a3;
- (id)descriptionBuilder;
- (id)identifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIInputModeCursorAccessory

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = _UIInputModeCursorAccessory;
  [(_UICursorAccessory *)&v6 encodeWithCoder:v4];
  inputModeIdentifier = self->_inputModeIdentifier;
  if (inputModeIdentifier)
  {
    [v4 encodeObject:inputModeIdentifier forKey:@"inputModeIdentifier"];
  }
}

- (unint64_t)hash
{
  v6.receiver = self;
  v6.super_class = _UIInputModeCursorAccessory;
  v3 = [(_UICursorAccessory *)&v6 hash];
  v4 = [(NSString *)self->_inputModeIdentifier hash]^ v3;
  return v4 ^ [(NSString *)self->_dictationLanguage hash];
}

- (_UIInputModeCursorAccessory)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _UIInputModeCursorAccessory;
  v5 = [(_UICursorAccessory *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inputModeIdentifier"];
    inputModeIdentifier = v5->_inputModeIdentifier;
    v5->_inputModeIdentifier = v6;
  }

  return v5;
}

- (id)descriptionBuilder
{
  v5.receiver = self;
  v5.super_class = _UIInputModeCursorAccessory;
  v3 = [(_UICursorAccessory *)&v5 descriptionBuilder];
  [v3 appendString:self->_inputModeIdentifier withName:@"inputModeIdentifier"];
  [v3 appendString:self->_dictationLanguage withName:@"dictationLanguage"];

  return v3;
}

- (id)identifier
{
  v10.receiver = self;
  v10.super_class = _UIInputModeCursorAccessory;
  v3 = [(_UICursorAccessory *)&v10 identifier];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(_UIInputModeCursorAccessory *)self dictationLanguage];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [(_UIInputModeCursorAccessory *)self inputModeIdentifier];
    }

    v5 = v8;
  }

  return v5;
}

@end