@interface PSLivenessMissedExecutionNotification
- (id)initFrequencyNotificationWithExpectedExecutionCount:(int64_t)a3 withActualExecutionCount:(int64_t)a4 withLastFrameId:(unint64_t)a5 withStartMCT:(unint64_t)a6 withEndMCT:(unint64_t)a7;
@end

@implementation PSLivenessMissedExecutionNotification

- (id)initFrequencyNotificationWithExpectedExecutionCount:(int64_t)a3 withActualExecutionCount:(int64_t)a4 withLastFrameId:(unint64_t)a5 withStartMCT:(unint64_t)a6 withEndMCT:(unint64_t)a7
{
  if (a7 >= a6)
  {
    v19.receiver = self;
    v19.super_class = PSLivenessMissedExecutionNotification;
    self = [(PSLivenessMissedExecutionNotification *)&v19 init];
    v7 = self;
    if (self)
    {
      self->_expectedExecutionCount = a3;
      self->_actualExecutionCount = a4;
      self->_lastExecutedFrameId = a5;
      self->_startMCT = a6;
      self->_endMCT = a7;
      v13 = objc_alloc(MEMORY[0x277CCA970]);
      v14 = ps_util_mct_to_nsdate(a6);
      v15 = ps_util_mct_to_nsdate(a7);
      v16 = [v13 initWithStartDate:v14 endDate:v15];
      dateInterval = v7->_dateInterval;
      v7->_dateInterval = v16;

      self = v7;
      v7 = self;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end