@interface _UIKeyboardTypingSpeedLogger
- (_UIKeyboardTypingSpeedLogger)init;
- (void)logToAggregate;
- (void)recordTypingDelay:(double)a3;
@end

@implementation _UIKeyboardTypingSpeedLogger

- (_UIKeyboardTypingSpeedLogger)init
{
  v3.receiver = self;
  v3.super_class = _UIKeyboardTypingSpeedLogger;
  result = [(_UIKeyboardTypingSpeedLogger *)&v3 init];
  if (result)
  {
    *&result->_typingDelaySamples[6] = 0u;
    *&result->_typingDelaySamples[4] = 0u;
    *&result->_typingDelaySamples[2] = 0u;
    *result->_typingDelaySamples = 0u;
  }

  return result;
}

- (void)recordTypingDelay:(double)a3
{
  if (_UIGetUIKeyboardTypingSpeedLogger())
  {
    ++self->_typingDelaySampleCount;
    if (a3 <= 0.1)
    {
      v5 = 0;
    }

    else if (a3 <= 0.15)
    {
      v5 = 1;
    }

    else if (a3 <= 0.2)
    {
      v5 = 2;
    }

    else if (a3 <= 0.25)
    {
      v5 = 3;
    }

    else if (a3 <= 0.3)
    {
      v5 = 4;
    }

    else
    {
      v5 = 5;
      if (a3 > 0.4)
      {
        v5 = 6;
      }
    }

    ++self->_typingDelaySamples[v5];
    if (self->_typingDelaySampleCount >= 300)
    {

      [(_UIKeyboardTypingSpeedLogger *)self logToAggregate];
    }
  }
}

- (void)logToAggregate
{
  if (_UIGetUIKeyboardTypingSpeedLogger())
  {
    for (i = 0; i != 7; ++i)
    {
      ADClientAddValueForScalarKey();
      self->_typingDelaySamples[i] = 0;
    }

    self->_typingDelaySampleCount = 0;
  }
}

@end