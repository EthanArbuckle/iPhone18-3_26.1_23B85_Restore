@interface SVXUserFeedbackVoiceContent
+ (id)newWithBuilder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SVXUserFeedbackVoiceContent)initWithCoder:(id)a3;
- (SVXUserFeedbackVoiceContent)initWithText:(id)a3 isPhonetic:(BOOL)a4;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SVXUserFeedbackVoiceContent

- (void)encodeWithCoder:(id)a3
{
  text = self->_text;
  v5 = a3;
  [v5 encodeObject:text forKey:@"SVXUserFeedbackVoiceContent::text"];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_isPhonetic];
  [v5 encodeObject:v6 forKey:@"SVXUserFeedbackVoiceContent::isPhonetic"];
}

- (SVXUserFeedbackVoiceContent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXUserFeedbackVoiceContent::text"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXUserFeedbackVoiceContent::isPhonetic"];

  v7 = [v6 BOOLValue];
  v8 = [(SVXUserFeedbackVoiceContent *)self initWithText:v5 isPhonetic:v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      isPhonetic = self->_isPhonetic;
      if (isPhonetic == [(SVXUserFeedbackVoiceContent *)v5 isPhonetic])
      {
        v7 = [(SVXUserFeedbackVoiceContent *)v5 text];
        text = self->_text;
        v9 = text == v7 || [(NSString *)text isEqual:v7];
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

- (id)_descriptionWithIndent:(unint64_t)a3
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

- (SVXUserFeedbackVoiceContent)initWithText:(id)a3 isPhonetic:(BOOL)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = SVXUserFeedbackVoiceContent;
  v7 = [(SVXUserFeedbackVoiceContent *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    text = v7->_text;
    v7->_text = v8;

    v7->_isPhonetic = a4;
  }

  return v7;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_SVXUserFeedbackVoiceContentMutation alloc] initWithBaseModel:self];
    v4[2](v4, v5);
    v6 = [(_SVXUserFeedbackVoiceContentMutation *)v5 generate];
  }

  else
  {
    v6 = [(SVXUserFeedbackVoiceContent *)self copy];
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_SVXUserFeedbackVoiceContentMutation);
  if (v3)
  {
    v3[2](v3, v4);
  }

  v5 = [(_SVXUserFeedbackVoiceContentMutation *)v4 generate];

  return v5;
}

@end