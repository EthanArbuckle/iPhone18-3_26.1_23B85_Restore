@interface MRAnimationTrigger
- (MRAnimationTrigger)initWithAction:(id)a3;
- (double)rearmIfNeededWithDefaultValue:(double)a3;
- (void)dealloc;
- (void)setAction:(id)a3;
@end

@implementation MRAnimationTrigger

- (MRAnimationTrigger)initWithAction:(id)a3
{
  v6.receiver = self;
  v6.super_class = MRAnimationTrigger;
  v4 = [(MRAnimationTrigger *)&v6 init];
  if (v4)
  {
    v4->_action = a3;
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

- (void)setAction:(id)a3
{
  action = self->_action;
  if (action)
  {

    animationAttributes = self->_animationAttributes;
    if (animationAttributes)
    {
    }
  }

  self->_action = a3;
  v7 = [objc_msgSend(a3 "mcAction")];
  self->_animationAttributes = v7;
  if (v7)
  {

    v8 = v7;
  }
}

- (double)rearmIfNeededWithDefaultValue:(double)a3
{
  startValue = self->_startValue;
  if (startValue == -1.23400002e36)
  {
    startValue = self->_lastValue;
    if (startValue == -1.23400002e36)
    {
      startValue = a3;
    }

    self->_startValue = startValue;
  }

  return startValue;
}

@end