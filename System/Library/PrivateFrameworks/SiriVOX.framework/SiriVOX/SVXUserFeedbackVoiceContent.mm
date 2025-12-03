@interface SVXUserFeedbackVoiceContent
+ (id)newWithBuilder:(id)builder;
- (BOOL)isEqual:(id)equal;
- (SVXUserFeedbackVoiceContent)initWithCoder:(id)coder;
- (SVXUserFeedbackVoiceContent)initWithText:(id)text isPhonetic:(BOOL)phonetic;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SVXUserFeedbackVoiceContent

- (void)encodeWithCoder:(id)coder
{
  text = self->_text;
  coderCopy = coder;
  [coderCopy encodeObject:text forKey:@"SVXUserFeedbackVoiceContent::text"];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_isPhonetic];
  [coderCopy encodeObject:v6 forKey:@"SVXUserFeedbackVoiceContent::isPhonetic"];
}

- (SVXUserFeedbackVoiceContent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXUserFeedbackVoiceContent::text"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXUserFeedbackVoiceContent::isPhonetic"];

  bOOLValue = [v6 BOOLValue];
  v8 = [(SVXUserFeedbackVoiceContent *)self initWithText:v5 isPhonetic:bOOLValue];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      isPhonetic = self->_isPhonetic;
      if (isPhonetic == [(SVXUserFeedbackVoiceContent *)v5 isPhonetic])
      {
        text = [(SVXUserFeedbackVoiceContent *)v5 text];
        text = self->_text;
        v9 = text == text || [(NSString *)text isEqual:text];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_text hash];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_isPhonetic];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v11.receiver = self;
  v11.super_class = SVXUserFeedbackVoiceContent;
  v5 = [(SVXUserFeedbackVoiceContent *)&v11 description];
  v6 = v5;
  text = self->_text;
  if (self->_isPhonetic)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = [v4 initWithFormat:@"%@ {text = %@, isPhonetic = %@}", v5, self->_text, v8];

  return v9;
}

- (SVXUserFeedbackVoiceContent)initWithText:(id)text isPhonetic:(BOOL)phonetic
{
  textCopy = text;
  v11.receiver = self;
  v11.super_class = SVXUserFeedbackVoiceContent;
  v7 = [(SVXUserFeedbackVoiceContent *)&v11 init];
  if (v7)
  {
    v8 = [textCopy copy];
    text = v7->_text;
    v7->_text = v8;

    v7->_isPhonetic = phonetic;
  }

  return v7;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_SVXUserFeedbackVoiceContentMutation alloc] initWithBaseModel:self];
    mutatorCopy[2](mutatorCopy, v5);
    generate = [(_SVXUserFeedbackVoiceContentMutation *)v5 generate];
  }

  else
  {
    generate = [(SVXUserFeedbackVoiceContent *)self copy];
  }

  return generate;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = objc_alloc_init(_SVXUserFeedbackVoiceContentMutation);
  if (builderCopy)
  {
    builderCopy[2](builderCopy, v4);
  }

  generate = [(_SVXUserFeedbackVoiceContentMutation *)v4 generate];

  return generate;
}

@end