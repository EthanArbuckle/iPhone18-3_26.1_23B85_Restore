@interface WBSHistoryActivityThrottler
- (BOOL)shouldRecordHistoryVisitAtTime:(double)time;
- (WBSHistoryActivityThrottler)initWithLimitPerSecond:(unint64_t)second;
@end

@implementation WBSHistoryActivityThrottler

- (WBSHistoryActivityThrottler)initWithLimitPerSecond:(unint64_t)second
{
  v10.receiver = self;
  v10.super_class = WBSHistoryActivityThrottler;
  v4 = [(WBSHistoryActivityThrottler *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_activityLimitPerSecond = second;
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:second];
    activityTimes = v5->_activityTimes;
    v5->_activityTimes = v6;

    v8 = v5;
  }

  return v5;
}

- (BOOL)shouldRecordHistoryVisitAtTime:(double)time
{
  v5 = [(NSMutableArray *)self->_activityTimes count];
  activityTimes = self->_activityTimes;
  if (v5 < self->_activityLimitPerSecond)
  {
    goto LABEL_4;
  }

  firstObject = [(NSMutableArray *)self->_activityTimes firstObject];
  [firstObject doubleValue];
  v9 = v8;

  if (time - v9 >= 1.0)
  {
    [(NSMutableArray *)self->_activityTimes removeObjectAtIndex:0, time - v9];
    activityTimes = self->_activityTimes;
LABEL_4:
    v10 = [MEMORY[0x1E696AD98] numberWithDouble:time];
    [(NSMutableArray *)activityTimes addObject:v10];

    return 1;
  }

  return 0;
}

@end