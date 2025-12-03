@interface _SVXAlarmAndTimerFiringContextMutation
- (_SVXAlarmAndTimerFiringContextMutation)initWithBaseModel:(id)model;
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
        orderedFiringAlarms = self->_orderedFiringAlarms;
      }

      else
      {
        orderedFiringAlarms = [(SVXAlarmAndTimerFiringContext *)baseModel orderedFiringAlarms];
      }

      v7 = orderedFiringAlarms;
      if ((*&self->_mutationFlags & 4) != 0)
      {
        orderedFiringTimers = self->_orderedFiringTimers;
      }

      else
      {
        orderedFiringTimers = [(SVXAlarmAndTimerFiringContext *)self->_baseModel orderedFiringTimers];
      }

      v9 = orderedFiringTimers;
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

- (_SVXAlarmAndTimerFiringContextMutation)initWithBaseModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = _SVXAlarmAndTimerFiringContextMutation;
  v6 = [(_SVXAlarmAndTimerFiringContextMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseModel, model);
  }

  return v7;
}

@end