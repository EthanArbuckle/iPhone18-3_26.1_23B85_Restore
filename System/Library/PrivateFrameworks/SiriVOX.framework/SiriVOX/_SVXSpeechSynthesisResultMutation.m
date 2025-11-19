@interface _SVXSpeechSynthesisResultMutation
- (_SVXSpeechSynthesisResultMutation)initWithBaseModel:(id)a3;
- (id)generate;
@end

@implementation _SVXSpeechSynthesisResultMutation

- (id)generate
{
  baseModel = self->_baseModel;
  if (!baseModel)
  {
    v4 = [[SVXSpeechSynthesisResult alloc] initWithType:self->_type utteranceInfo:self->_utteranceInfo error:self->_error];
    goto LABEL_5;
  }

  if (*&self->_mutationFlags)
  {
    if ((*&self->_mutationFlags & 2) != 0)
    {
      type = self->_type;
      if ((*&self->_mutationFlags & 4) != 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      type = [(SVXSpeechSynthesisResult *)baseModel type];
      if ((*&self->_mutationFlags & 4) != 0)
      {
LABEL_8:
        v7 = self->_utteranceInfo;
LABEL_11:
        v8 = v7;
        if ((*&self->_mutationFlags & 8) != 0)
        {
          v9 = self->_error;
        }

        else
        {
          v9 = [(SVXSpeechSynthesisResult *)self->_baseModel error];
        }

        v10 = v9;
        v5 = [[SVXSpeechSynthesisResult alloc] initWithType:type utteranceInfo:v8 error:v9];

        goto LABEL_15;
      }
    }

    v7 = [(SVXSpeechSynthesisResult *)self->_baseModel utteranceInfo];
    goto LABEL_11;
  }

  v4 = [(SVXSpeechSynthesisResult *)baseModel copy];
LABEL_5:
  v5 = v4;
LABEL_15:

  return v5;
}

- (_SVXSpeechSynthesisResultMutation)initWithBaseModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _SVXSpeechSynthesisResultMutation;
  v6 = [(_SVXSpeechSynthesisResultMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseModel, a3);
  }

  return v7;
}

@end