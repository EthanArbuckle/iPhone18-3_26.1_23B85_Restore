@interface PSLivenessMissedExecutionNotification
- (id)initFrequencyNotificationWithExpectedExecutionCount:(int64_t)count withActualExecutionCount:(int64_t)executionCount withLastFrameId:(unint64_t)id withStartMCT:(unint64_t)t withEndMCT:(unint64_t)cT;
@end

@implementation PSLivenessMissedExecutionNotification

- (id)initFrequencyNotificationWithExpectedExecutionCount:(int64_t)count withActualExecutionCount:(int64_t)executionCount withLastFrameId:(unint64_t)id withStartMCT:(unint64_t)t withEndMCT:(unint64_t)cT
{
  if (cT >= t)
  {
    v19.receiver = self;
    v19.super_class = PSLivenessMissedExecutionNotification;
    self = [(PSLivenessMissedExecutionNotification *)&v19 init];
    selfCopy2 = self;
    if (self)
    {
      self->_expectedExecutionCount = count;
      self->_actualExecutionCount = executionCount;
      self->_lastExecutedFrameId = id;
      self->_startMCT = t;
      self->_endMCT = cT;
      v13 = objc_alloc(MEMORY[0x277CCA970]);
      v14 = ps_util_mct_to_nsdate(t);
      v15 = ps_util_mct_to_nsdate(cT);
      v16 = [v13 initWithStartDate:v14 endDate:v15];
      dateInterval = selfCopy2->_dateInterval;
      selfCopy2->_dateInterval = v16;

      self = selfCopy2;
      selfCopy2 = self;
    }
  }

  else
  {
    selfCopy2 = 0;
  }

  return selfCopy2;
}

@end