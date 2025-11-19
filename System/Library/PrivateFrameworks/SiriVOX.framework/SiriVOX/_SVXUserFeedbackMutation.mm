@interface _SVXUserFeedbackMutation
- (_SVXUserFeedbackMutation)initWithBaseModel:(id)a3;
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
      v6 = self->_identifier;
    }

    else
    {
      v6 = [(SVXUserFeedback *)baseModel identifier];
    }

    v7 = v6;
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
        v9 = self->_audioContent;
LABEL_14:
        v10 = v9;
        if ((*&self->_mutationFlags & 0x10) != 0)
        {
          v11 = self->_voiceContent;
        }

        else
        {
          v11 = [(SVXUserFeedback *)self->_baseModel voiceContent];
        }

        v12 = v11;
        v5 = [[SVXUserFeedback alloc] initWithIdentifier:v7 contentType:contentType audioContent:v10 voiceContent:v11];

        goto LABEL_18;
      }
    }

    v9 = [(SVXUserFeedback *)self->_baseModel audioContent];
    goto LABEL_14;
  }

  v4 = [(SVXUserFeedback *)baseModel copy];
LABEL_5:
  v5 = v4;
LABEL_18:

  return v5;
}

- (_SVXUserFeedbackMutation)initWithBaseModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _SVXUserFeedbackMutation;
  v6 = [(_SVXUserFeedbackMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseModel, a3);
  }

  return v7;
}

@end