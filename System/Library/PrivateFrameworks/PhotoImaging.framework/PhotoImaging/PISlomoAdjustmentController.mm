@interface PISlomoAdjustmentController
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)endTime;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)startTime;
- (BOOL)isEqual:(id)equal visualChangesOnly:(BOOL)only;
- (double)rate;
- (void)setEndTime:(id *)time;
- (void)setRate:(double)rate;
- (void)setStartTime:(id *)time;
@end

@implementation PISlomoAdjustmentController

- (BOOL)isEqual:(id)equal visualChangesOnly:(BOOL)only
{
  equalCopy = equal;
  v6 = +[PISlomoAdjustmentController rateKey];
  v7 = [(PIAdjustmentController *)self isSettingEqual:equalCopy forKey:v6];

  if (v7)
  {
    v8 = [(PIAdjustmentController *)[PISlomoAdjustmentController alloc] initWithAdjustment:equalCopy];
    memset(&v16, 0, sizeof(v16));
    [(PISlomoAdjustmentController *)self startTime];
    [(PISlomoAdjustmentController *)self endTime];
    CMTimeRangeFromTimeToTime(&v16, &start.start, &end);
    memset(&start, 0, sizeof(start));
    if (v8)
    {
      [(PISlomoAdjustmentController *)v8 startTime];
      [(PISlomoAdjustmentController *)v8 endTime];
    }

    else
    {
      memset(&end, 0, sizeof(end));
      memset(&lhs, 0, sizeof(lhs));
    }

    CMTimeRangeFromTimeToTime(&start, &end, &lhs);
    memset(&end, 0, sizeof(end));
    lhs = v16.start;
    rhs = start.start;
    CMTimeSubtract(&end, &lhs, &rhs);
    lhs = end;
    if (fabs(CMTimeGetSeconds(&lhs)) >= 0.002)
    {
      v9 = 0;
    }

    else
    {
      memset(&lhs, 0, sizeof(lhs));
      rhs = v16.duration;
      duration = start.duration;
      CMTimeSubtract(&lhs, &rhs, &duration);
      rhs = lhs;
      v9 = fabs(CMTimeGetSeconds(&rhs)) < 0.002;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setRate:(double)rate
{
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:rate];
  adjustment = [(PIAdjustmentController *)self adjustment];
  v5 = +[PISlomoAdjustmentController rateKey];
  [adjustment setObject:v6 forKeyedSubscript:v5];
}

- (double)rate
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v3 = +[PISlomoAdjustmentController rateKey];
  v4 = [adjustment objectForKeyedSubscript:v3];

  if (v4)
  {
    [v4 doubleValue];
    v6 = v5;
  }

  else
  {
    v6 = 0.25;
  }

  return v6;
}

- (void)setEndTime:(id *)time
{
  if (time->var2)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:time->var0];
    adjustment = [(PIAdjustmentController *)self adjustment];
    v10 = +[PISlomoAdjustmentController endKey];
    [adjustment setObject:v8 forKeyedSubscript:v10];

    adjustment4 = [MEMORY[0x1E696AD98] numberWithInt:time->var1];
    adjustment2 = [(PIAdjustmentController *)self adjustment];
    v11 = +[PISlomoAdjustmentController endScaleKey];
    [adjustment2 setObject:adjustment4 forKeyedSubscript:v11];
  }

  else
  {
    adjustment3 = [(PIAdjustmentController *)self adjustment];
    v5 = +[PISlomoAdjustmentController endKey];
    [adjustment3 setObject:0 forKeyedSubscript:v5];

    adjustment4 = [(PIAdjustmentController *)self adjustment];
    adjustment2 = +[PISlomoAdjustmentController endScaleKey];
    [adjustment4 setObject:0 forKeyedSubscript:adjustment2];
  }
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)endTime
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v6 = +[PISlomoAdjustmentController endKey];
  v13 = [adjustment objectForKeyedSubscript:v6];

  adjustment2 = [(PIAdjustmentController *)self adjustment];
  v8 = +[PISlomoAdjustmentController endScaleKey];
  v9 = [adjustment2 objectForKeyedSubscript:v8];

  if (v13)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = MEMORY[0x1E6960C70];
    *&retstr->var0 = *MEMORY[0x1E6960C70];
    retstr->var3 = *(v11 + 16);
  }

  else
  {
    CMTimeMake(retstr, [v13 longLongValue], objc_msgSend(v9, "intValue"));
  }

  return result;
}

- (void)setStartTime:(id *)time
{
  if (time->var2)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:time->var0];
    adjustment = [(PIAdjustmentController *)self adjustment];
    v10 = +[PISlomoAdjustmentController startKey];
    [adjustment setObject:v8 forKeyedSubscript:v10];

    adjustment4 = [MEMORY[0x1E696AD98] numberWithInt:time->var1];
    adjustment2 = [(PIAdjustmentController *)self adjustment];
    v11 = +[PISlomoAdjustmentController startScaleKey];
    [adjustment2 setObject:adjustment4 forKeyedSubscript:v11];
  }

  else
  {
    adjustment3 = [(PIAdjustmentController *)self adjustment];
    v5 = +[PISlomoAdjustmentController startKey];
    [adjustment3 setObject:0 forKeyedSubscript:v5];

    adjustment4 = [(PIAdjustmentController *)self adjustment];
    adjustment2 = +[PISlomoAdjustmentController startScaleKey];
    [adjustment4 setObject:0 forKeyedSubscript:adjustment2];
  }
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)startTime
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v6 = +[PISlomoAdjustmentController startKey];
  v13 = [adjustment objectForKeyedSubscript:v6];

  adjustment2 = [(PIAdjustmentController *)self adjustment];
  v8 = +[PISlomoAdjustmentController startScaleKey];
  v9 = [adjustment2 objectForKeyedSubscript:v8];

  if (v13)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = MEMORY[0x1E6960C70];
    *&retstr->var0 = *MEMORY[0x1E6960C70];
    retstr->var3 = *(v11 + 16);
  }

  else
  {
    CMTimeMake(retstr, [v13 longLongValue], objc_msgSend(v9, "intValue"));
  }

  return result;
}

@end