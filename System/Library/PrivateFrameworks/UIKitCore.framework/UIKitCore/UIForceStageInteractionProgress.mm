@interface UIForceStageInteractionProgress
- (UIForceStageInteractionProgress)init;
- (void)dealloc;
- (void)receiveObservedValue:(id)value;
@end

@implementation UIForceStageInteractionProgress

- (UIForceStageInteractionProgress)init
{
  v7.receiver = self;
  v7.super_class = UIForceStageInteractionProgress;
  v2 = [(UIInteractionProgress *)&v7 init];
  if (v2)
  {
    _forceStageObservable = [UIApp _forceStageObservable];
    v4 = [_forceStageObservable addObserver:v2];
    observation = v2->_observation;
    v2->_observation = v4;
  }

  return v2;
}

- (void)dealloc
{
  _forceStageObservable = [UIApp _forceStageObservable];
  [_forceStageObservable removeObservation:self->_observation];

  v4.receiver = self;
  v4.super_class = UIForceStageInteractionProgress;
  [(UIForceStageInteractionProgress *)&v4 dealloc];
}

- (void)receiveObservedValue:(id)value
{
  valueCopy = value;
  stage = [valueCopy stage];
  [valueCopy touchForce];
  v7 = v6;
  isReset = [valueCopy isReset];

  if ((isReset & 1) != 0 || (v9 = fabs(v7), v9 < 2.22044605e-16) && self->_started && !stage)
  {
    if (!self->_completed)
    {
      [(UIInteractionProgress *)self endInteraction:0];
    }

    [(UIForceStageInteractionProgress *)self _reset];
  }

  else if (v9 >= 2.22044605e-16)
  {
    self->_started = 1;
    if (!self->_completed)
    {
      if (!self->_completesAtTargetState || stage == 0)
      {

        [(UIInteractionProgress *)self setPercentComplete:v7 + stage];
      }

      else
      {
        [(UIInteractionProgress *)self percentComplete];
        if (v11 < 1.0)
        {
          [(UIInteractionProgress *)self setPercentComplete:1.0];
        }

        self->_completed = 1;

        [(UIInteractionProgress *)self endInteraction:1];
      }
    }
  }
}

@end