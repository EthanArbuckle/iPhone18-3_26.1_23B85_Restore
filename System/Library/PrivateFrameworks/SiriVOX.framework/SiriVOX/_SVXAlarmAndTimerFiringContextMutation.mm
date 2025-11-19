@interface _SVXAlarmAndTimerFiringContextMutation
- (_SVXAlarmAndTimerFiringContextMutation)initWithBaseModel:(id)a3;
- (id)generate;
@end

@implementation _SVXAlarmAndTimerFiringContextMutation

- (id)generate
{
  baseModel = self->_baseModel;
  if (baseModel)
  {
    if (*&self->_mutationFlags)
    {
      if ((*&self->_mutationFlags & 2) != 0)
      {
        v6 = self->_orderedFiringAlarms;
      }

      else
      {
        v6 = [(SVXAlarmAndTimerFiringContext *)baseModel orderedFiringAlarms];
      }

      v7 = v6;
      if ((*&self->_mutationFlags & 4) != 0)
      {
        v8 = self->_orderedFiringTimers;
      }

      else
      {
        v8 = [(SVXAlarmAndTimerFiringContext *)self->_baseModel orderedFiringTimers];
      }

      v9 = v8;
      if ((*&self->_mutationFlags & 8) != 0)
      {
        hasOtherRunningTimers = self->_hasOtherRunningTimers;
      }

      else
      {
        hasOtherRunningTimers = [(SVXAlarmAndTimerFiringContext *)self->_baseModel hasOtherRunningTimers];
      }

      v5 = [[SVXAlarmAndTimerFiringContext alloc] initWithOrderedFiringAlarms:v7 orderedFiringTimers:v9 hasOtherRunningTimers:hasOtherRunningTimers];

      goto LABEL_16;
    }

    v4 = [(SVXAlarmAndTimerFiringContext *)baseModel copy];
  }

  else
  {
    v4 = [[SVXAlarmAndTimerFiringContext alloc] initWithOrderedFiringAlarms:self->_orderedFiringAlarms orderedFiringTimers:self->_orderedFiringTimers hasOtherRunningTimers:self->_hasOtherRunningTimers];
  }

  v5 = v4;
LABEL_16:

  return v5;
}

- (_SVXAlarmAndTimerFiringContextMutation)initWithBaseModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _SVXAlarmAndTimerFiringContextMutation;
  v6 = [(_SVXAlarmAndTimerFiringContextMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseModel, a3);
  }

  return v7;
}

@end