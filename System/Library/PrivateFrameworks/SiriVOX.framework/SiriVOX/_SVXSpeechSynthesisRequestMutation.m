@interface _SVXSpeechSynthesisRequestMutation
- (_SVXSpeechSynthesisRequestMutation)initWithBaseModel:(id)a3;
- (id)generate;
@end

@implementation _SVXSpeechSynthesisRequestMutation

- (id)generate
{
  baseModel = self->_baseModel;
  if (!baseModel)
  {
    v5 = [[SVXSpeechSynthesisRequest alloc] initWithPriority:self->_priority options:self->_options speakableText:self->_speakableText speakableContext:self->_speakableContext localizationKey:self->_localizationKey presynthesizedAudio:self->_presynthesizedAudio streamID:self->_streamID];
    goto LABEL_5;
  }

  mutationFlags = self->_mutationFlags;
  if (mutationFlags)
  {
    if ((*&self->_mutationFlags & 2) != 0)
    {
      priority = self->_priority;
      if ((*&self->_mutationFlags & 4) != 0)
      {
LABEL_8:
        options = self->_options;
        if ((mutationFlags & 8) != 0)
        {
LABEL_9:
          v9 = self->_speakableText;
LABEL_13:
          v10 = v9;
          if ((*&self->_mutationFlags & 0x10) != 0)
          {
            v11 = self->_speakableContext;
          }

          else
          {
            v11 = [(SVXSpeechSynthesisRequest *)self->_baseModel speakableContext];
          }

          v12 = v11;
          if ((*&self->_mutationFlags & 0x20) != 0)
          {
            v13 = self->_localizationKey;
          }

          else
          {
            v13 = [(SVXSpeechSynthesisRequest *)self->_baseModel localizationKey];
          }

          v14 = v13;
          if ((*&self->_mutationFlags & 0x40) != 0)
          {
            v15 = self->_presynthesizedAudio;
          }

          else
          {
            v15 = [(SVXSpeechSynthesisRequest *)self->_baseModel presynthesizedAudio];
          }

          v16 = v15;
          if ((*&self->_mutationFlags & 0x80000000) != 0)
          {
            v17 = self->_streamID;
          }

          else
          {
            v17 = [(SVXSpeechSynthesisRequest *)self->_baseModel streamID];
          }

          v18 = v17;
          v6 = [[SVXSpeechSynthesisRequest alloc] initWithPriority:priority options:options speakableText:v10 speakableContext:v12 localizationKey:v14 presynthesizedAudio:v16 streamID:v17];

          goto LABEL_26;
        }

LABEL_12:
        v9 = [(SVXSpeechSynthesisRequest *)self->_baseModel speakableText];
        goto LABEL_13;
      }
    }

    else
    {
      priority = [(SVXSpeechSynthesisRequest *)baseModel priority];
      mutationFlags = self->_mutationFlags;
      if ((mutationFlags & 4) != 0)
      {
        goto LABEL_8;
      }
    }

    options = [(SVXSpeechSynthesisRequest *)self->_baseModel options];
    if ((*&self->_mutationFlags & 8) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v5 = [(SVXSpeechSynthesisRequest *)baseModel copy];
LABEL_5:
  v6 = v5;
LABEL_26:

  return v6;
}

- (_SVXSpeechSynthesisRequestMutation)initWithBaseModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _SVXSpeechSynthesisRequestMutation;
  v6 = [(_SVXSpeechSynthesisRequestMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseModel, a3);
  }

  return v7;
}

@end