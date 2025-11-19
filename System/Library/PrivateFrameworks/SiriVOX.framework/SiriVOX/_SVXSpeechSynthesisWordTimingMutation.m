@interface _SVXSpeechSynthesisWordTimingMutation
- (_SVXSpeechSynthesisWordTimingMutation)initWithBaseModel:(id)a3;
- (id)generate;
@end

@implementation _SVXSpeechSynthesisWordTimingMutation

- (id)generate
{
  baseModel = self->_baseModel;
  if (baseModel)
  {
    if ((*&self->_mutationFlags & 1) == 0)
    {
      v4 = [(SVXSpeechSynthesisWordTiming *)baseModel copy];
      goto LABEL_12;
    }

    if ((*&self->_mutationFlags & 2) != 0)
    {
      location = self->_range.location;
      length = self->_range.length;
      if ((*&self->_mutationFlags & 4) != 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      location = [(SVXSpeechSynthesisWordTiming *)baseModel range];
      length = v10;
      if ((*&self->_mutationFlags & 4) != 0)
      {
LABEL_7:
        timeInterval = self->_timeInterval;
LABEL_10:
        v5 = [SVXSpeechSynthesisWordTiming alloc];
        v7 = location;
        v8 = length;
        v6 = timeInterval;
        goto LABEL_11;
      }
    }

    [(SVXSpeechSynthesisWordTiming *)self->_baseModel timeInterval];
    timeInterval = v13;
    goto LABEL_10;
  }

  v5 = [SVXSpeechSynthesisWordTiming alloc];
  v6 = self->_timeInterval;
  v7 = self->_range.location;
  v8 = self->_range.length;
LABEL_11:
  v4 = [(SVXSpeechSynthesisWordTiming *)v5 initWithRange:v7 timeInterval:v8, v6];
LABEL_12:

  return v4;
}

- (_SVXSpeechSynthesisWordTimingMutation)initWithBaseModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _SVXSpeechSynthesisWordTimingMutation;
  v6 = [(_SVXSpeechSynthesisWordTimingMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseModel, a3);
  }

  return v7;
}

@end