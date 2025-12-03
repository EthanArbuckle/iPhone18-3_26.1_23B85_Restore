@interface _SVXUserFeedbackVoiceContentMutation
- (_SVXUserFeedbackVoiceContentMutation)initWithBaseModel:(id)model;
- (id)generate;
@end

@implementation _SVXUserFeedbackVoiceContentMutation

- (id)generate
{
  baseModel = self->_baseModel;
  if (baseModel)
  {
    if (*&self->_mutationFlags)
    {
      if ((*&self->_mutationFlags & 2) != 0)
      {
        text = self->_text;
      }

      else
      {
        text = [(SVXUserFeedbackVoiceContent *)baseModel text];
      }

      v7 = text;
      if ((*&self->_mutationFlags & 4) != 0)
      {
        isPhonetic = self->_isPhonetic;
      }

      else
      {
        isPhonetic = [(SVXUserFeedbackVoiceContent *)self->_baseModel isPhonetic];
      }

      v5 = [[SVXUserFeedbackVoiceContent alloc] initWithText:v7 isPhonetic:isPhonetic];

      goto LABEL_13;
    }

    v4 = [(SVXUserFeedbackVoiceContent *)baseModel copy];
  }

  else
  {
    v4 = [[SVXUserFeedbackVoiceContent alloc] initWithText:self->_text isPhonetic:self->_isPhonetic];
  }

  v5 = v4;
LABEL_13:

  return v5;
}

- (_SVXUserFeedbackVoiceContentMutation)initWithBaseModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = _SVXUserFeedbackVoiceContentMutation;
  v6 = [(_SVXUserFeedbackVoiceContentMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseModel, model);
  }

  return v7;
}

@end