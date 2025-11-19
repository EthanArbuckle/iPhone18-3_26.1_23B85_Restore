@interface UIForceStageInteractionProgress
- (UIForceStageInteractionProgress)init;
- (void)dealloc;
- (void)receiveObservedValue:(id)a3;
@end

@implementation UIForceStageInteractionProgress

- (UIForceStageInteractionProgress)init
{
  v7.receiver = self;
  v7.super_class = UIForceStageInteractionProgress;
  v2 = [(UIInteractionProgress *)&v7 init];
  if (v2)
  {
    v3 = [UIApp _forceStageObservable];
    v4 = [v3 addObserver:v2];
    observation = v2->_observation;
    v2->_observation = v4;
  }

  return v2;
}

- (void)dealloc
{
  v3 = [UIApp _forceStageObservable];
  [v3 removeObservation:self->_observation];

  v4.receiver = self;
  v4.super_class = UIForceStageInteractionProgress;
  [(UIForceStageInteractionProgress *)&v4 dealloc];
}

- (void)receiveObservedValue:(id)a3
{
  v4 = a3;
  v5 = [v4 stage];
  [v4 touchForce];
  v7 = v6;
  v8 = [v4 isReset];

  if ((v8 & 1) != 0 || (v9 = fabs(v7), v9 < 2.22044605e-16) && self->_started && !v5)
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
      if (!self->_completesAtTargetState || v5 == 0)
      {

        [(UIInteractionProgress *)self setPercentComplete:v7 + v5];
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