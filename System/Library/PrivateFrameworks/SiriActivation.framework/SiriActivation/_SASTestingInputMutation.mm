@interface _SASTestingInputMutation
- (_SASTestingInputMutation)initWithBaseModel:(id)model;
- (id)generate;
@end

@implementation _SASTestingInputMutation

- (_SASTestingInputMutation)initWithBaseModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = _SASTestingInputMutation;
  v6 = [(_SASTestingInputMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseModel, model);
  }

  return v7;
}

- (id)generate
{
  baseModel = self->_baseModel;
  if (!baseModel)
  {
    v4 = [[SASTestingInput alloc] initWithType:self->_type text:self->_text recordedSpeechURL:self->_recordedSpeechURL];
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
      type = [(SASTestingInput *)baseModel type];
      if ((*&self->_mutationFlags & 4) != 0)
      {
LABEL_8:
        text = self->_text;
LABEL_11:
        v8 = text;
        if ((*&self->_mutationFlags & 8) != 0)
        {
          recordedSpeechURL = self->_recordedSpeechURL;
        }

        else
        {
          recordedSpeechURL = [(SASTestingInput *)self->_baseModel recordedSpeechURL];
        }

        v10 = recordedSpeechURL;
        v5 = [[SASTestingInput alloc] initWithType:type text:v8 recordedSpeechURL:recordedSpeechURL];

        goto LABEL_15;
      }
    }

    text = [(SASTestingInput *)self->_baseModel text];
    goto LABEL_11;
  }

  v4 = [(SASTestingInput *)baseModel copy];
LABEL_5:
  v5 = v4;
LABEL_15:

  return v5;
}

@end