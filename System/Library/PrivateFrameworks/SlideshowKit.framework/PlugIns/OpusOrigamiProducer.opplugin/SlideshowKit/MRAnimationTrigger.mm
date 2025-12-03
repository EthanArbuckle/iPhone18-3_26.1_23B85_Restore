@interface MRAnimationTrigger
- (MRAnimationTrigger)initWithAction:(id)action;
- (double)rearmIfNeededWithDefaultValue:(double)value;
- (void)dealloc;
- (void)setAction:(id)action;
@end

@implementation MRAnimationTrigger

- (MRAnimationTrigger)initWithAction:(id)action
{
  v6.receiver = self;
  v6.super_class = MRAnimationTrigger;
  v4 = [(MRAnimationTrigger *)&v6 init];
  if (v4)
  {
    v4->_action = action;
    *&v4->_startValue = vdupq_n_s64(0xC76DB51CC0000000);
  }

  return v4;
}

- (void)dealloc
{
  self->_action = 0;

  self->_animationAttributes = 0;
  v3.receiver = self;
  v3.super_class = MRAnimationTrigger;
  [(MRAnimationTrigger *)&v3 dealloc];
}

- (void)setAction:(id)action
{
  action = self->_action;
  if (action)
  {

    animationAttributes = self->_animationAttributes;
    if (animationAttributes)
    {
    }
  }

  self->_action = action;
  v7 = [objc_msgSend(action "mcAction")];
  self->_animationAttributes = v7;
  if (v7)
  {

    v8 = v7;
  }
}

- (double)rearmIfNeededWithDefaultValue:(double)value
{
  startValue = self->_startValue;
  if (startValue == -1.23400002e36)
  {
    startValue = self->_lastValue;
    if (startValue == -1.23400002e36)
    {
      startValue = value;
    }

    self->_startValue = startValue;
  }

  return startValue;
}

@end