@interface _SVXSpeechSynthesisUtteranceInfoMutation
- (_SVXSpeechSynthesisUtteranceInfoMutation)initWithBaseModel:(id)model;
- (id)generate;
@end

@implementation _SVXSpeechSynthesisUtteranceInfoMutation

- (id)generate
{
  baseModel = self->_baseModel;
  if (baseModel)
  {
    if (*&self->_mutationFlags)
    {
      if ((*&self->_mutationFlags & 2) != 0)
      {
        utterance = self->_utterance;
      }

      else
      {
        utterance = [(SVXSpeechSynthesisUtteranceInfo *)baseModel utterance];
      }

      v7 = utterance;
      if ((*&self->_mutationFlags & 4) != 0)
      {
        wordTimings = self->_wordTimings;
      }

      else
      {
        wordTimings = [(SVXSpeechSynthesisUtteranceInfo *)self->_baseModel wordTimings];
      }

      v9 = wordTimings;
      v5 = [[SVXSpeechSynthesisUtteranceInfo alloc] initWithUtterance:v7 wordTimings:wordTimings];

      goto LABEL_13;
    }

    v4 = [(SVXSpeechSynthesisUtteranceInfo *)baseModel copy];
  }

  else
  {
    v4 = [[SVXSpeechSynthesisUtteranceInfo alloc] initWithUtterance:self->_utterance wordTimings:self->_wordTimings];
  }

  v5 = v4;
LABEL_13:

  return v5;
}

- (_SVXSpeechSynthesisUtteranceInfoMutation)initWithBaseModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = _SVXSpeechSynthesisUtteranceInfoMutation;
  v6 = [(_SVXSpeechSynthesisUtteranceInfoMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseModel, model);
  }

  return v7;
}

@end