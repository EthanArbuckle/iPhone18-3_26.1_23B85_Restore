@interface _UIVoiceCommandButtonTapGestureRecognizer
- (id)voiceCommandButtonTapDuration;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)reset;
@end

@implementation _UIVoiceCommandButtonTapGestureRecognizer

- (void)reset
{
  v3.receiver = self;
  v3.super_class = _UIVoiceCommandButtonTapGestureRecognizer;
  [(UIGestureRecognizer *)&v3 reset];
  self->_pressEventBeginTimestamp = 0.0;
  self->_pressEventEndTimestamp = 0.0;
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = _UIVoiceCommandButtonTapGestureRecognizer;
  eventCopy = event;
  [(UITapGestureRecognizer *)&v9 pressesBegan:began withEvent:eventCopy];
  [eventCopy timestamp];
  v8 = v7;

  self->_pressEventBeginTimestamp = v8;
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = _UIVoiceCommandButtonTapGestureRecognizer;
  eventCopy = event;
  [(UITapGestureRecognizer *)&v9 pressesEnded:ended withEvent:eventCopy];
  [eventCopy timestamp];
  v8 = v7;

  self->_pressEventEndTimestamp = v8;
}

- (id)voiceCommandButtonTapDuration
{
  pressEventEndTimestamp = self->_pressEventEndTimestamp;
  if (pressEventEndTimestamp <= 0.0 || (pressEventBeginTimestamp = self->_pressEventBeginTimestamp, pressEventBeginTimestamp <= 0.0))
  {
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:{pressEventEndTimestamp - pressEventBeginTimestamp, v2}];
  }

  return v6;
}

@end