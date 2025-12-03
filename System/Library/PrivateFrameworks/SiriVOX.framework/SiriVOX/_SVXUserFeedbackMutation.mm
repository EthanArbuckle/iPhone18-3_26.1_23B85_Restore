@interface _SVXUserFeedbackMutation
- (_SVXUserFeedbackMutation)initWithBaseModel:(id)model;
- (id)generate;
@end

@implementation _SVXUserFeedbackMutation

- (id)generate
{
  baseModel = self->_baseModel;
  if (!baseModel)
  {
    v4 = [[SVXUserFeedback alloc] initWithIdentifier:self->_identifier contentType:self->_contentType audioContent:self->_audioContent voiceContent:self->_voiceContent];
    goto LABEL_5;
  }

  if (*&self->_mutationFlags)
  {
    if ((*&self->_mutationFlags & 2) != 0)
    {
      identifier = self->_identifier;
    }

    else
    {
      identifier = [(SVXUserFeedback *)baseModel identifier];
    }

    v7 = identifier;
    if ((*&self->_mutationFlags & 4) != 0)
    {
      contentType = self->_contentType;
      if ((*&self->_mutationFlags & 8) != 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      contentType = [(SVXUserFeedback *)self->_baseModel contentType];
      if ((*&self->_mutationFlags & 8) != 0)
      {
LABEL_11:
        audioContent = self->_audioContent;
LABEL_14:
        v10 = audioContent;
        if ((*&self->_mutationFlags & 0x10) != 0)
        {
          voiceContent = self->_voiceContent;
        }

        else
        {
          voiceContent = [(SVXUserFeedback *)self->_baseModel voiceContent];
        }

        v12 = voiceContent;
        v5 = [[SVXUserFeedback alloc] initWithIdentifier:v7 contentType:contentType audioContent:v10 voiceContent:voiceContent];

        goto LABEL_18;
      }
    }

    audioContent = [(SVXUserFeedback *)self->_baseModel audioContent];
    goto LABEL_14;
  }

  v4 = [(SVXUserFeedback *)baseModel copy];
LABEL_5:
  v5 = v4;
LABEL_18:

  return v5;
}

- (_SVXUserFeedbackMutation)initWithBaseModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = _SVXUserFeedbackMutation;
  v6 = [(_SVXUserFeedbackMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseModel, model);
  }

  return v7;
}

@end