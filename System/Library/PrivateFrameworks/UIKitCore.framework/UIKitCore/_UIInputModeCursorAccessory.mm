@interface _UIInputModeCursorAccessory
- (_UIInputModeCursorAccessory)initWithCoder:(id)coder;
- (id)descriptionBuilder;
- (id)identifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIInputModeCursorAccessory

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = _UIInputModeCursorAccessory;
  [(_UICursorAccessory *)&v6 encodeWithCoder:coderCopy];
  inputModeIdentifier = self->_inputModeIdentifier;
  if (inputModeIdentifier)
  {
    [coderCopy encodeObject:inputModeIdentifier forKey:@"inputModeIdentifier"];
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

- (_UIInputModeCursorAccessory)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = _UIInputModeCursorAccessory;
  v5 = [(_UICursorAccessory *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inputModeIdentifier"];
    inputModeIdentifier = v5->_inputModeIdentifier;
    v5->_inputModeIdentifier = v6;
  }

  return v5;
}

- (id)descriptionBuilder
{
  v5.receiver = self;
  v5.super_class = _UIInputModeCursorAccessory;
  descriptionBuilder = [(_UICursorAccessory *)&v5 descriptionBuilder];
  [descriptionBuilder appendString:self->_inputModeIdentifier withName:@"inputModeIdentifier"];
  [descriptionBuilder appendString:self->_dictationLanguage withName:@"dictationLanguage"];

  return descriptionBuilder;
}

- (id)identifier
{
  v10.receiver = self;
  v10.super_class = _UIInputModeCursorAccessory;
  identifier = [(_UICursorAccessory *)&v10 identifier];
  v4 = identifier;
  if (identifier)
  {
    v5 = identifier;
  }

  else
  {
    dictationLanguage = [(_UIInputModeCursorAccessory *)self dictationLanguage];
    v7 = dictationLanguage;
    if (dictationLanguage)
    {
      inputModeIdentifier = dictationLanguage;
    }

    else
    {
      inputModeIdentifier = [(_UIInputModeCursorAccessory *)self inputModeIdentifier];
    }

    v5 = inputModeIdentifier;
  }

  return v5;
}

@end