@interface PISlomoAdjustmentController
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)endTime;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)startTime;
- (BOOL)isEqual:(id)a3 visualChangesOnly:(BOOL)a4;
- (double)rate;
- (void)setEndTime:(id *)a3;
- (void)setRate:(double)a3;
- (void)setStartTime:(id *)a3;
@end

@implementation PISlomoAdjustmentController

- (BOOL)isEqual:(id)a3 visualChangesOnly:(BOOL)a4
{
  v5 = a3;
  v6 = +[PISlomoAdjustmentController rateKey];
  v7 = [(PIAdjustmentController *)self isSettingEqual:v5 forKey:v6];

  if (v7)
  {
    v8 = [(PIAdjustmentController *)[PISlomoAdjustmentController alloc] initWithAdjustment:v5];
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

- (void)setRate:(double)a3
{
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v4 = [(PIAdjustmentController *)self adjustment];
  v5 = +[PISlomoAdjustmentController rateKey];
  [v4 setObject:v6 forKeyedSubscript:v5];
}

- (double)rate
{
  v2 = [(PIAdjustmentController *)self adjustment];
  v3 = +[PISlomoAdjustmentController rateKey];
  v4 = [v2 objectForKeyedSubscript:v3];

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

- (void)setEndTime:(id *)a3
{
  if (a3->var2)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:a3->var0];
    v9 = [(PIAdjustmentController *)self adjustment];
    v10 = +[PISlomoAdjustmentController endKey];
    [v9 setObject:v8 forKeyedSubscript:v10];

    v12 = [MEMORY[0x1E696AD98] numberWithInt:a3->var1];
    v6 = [(PIAdjustmentController *)self adjustment];
    v11 = +[PISlomoAdjustmentController endScaleKey];
    [v6 setObject:v12 forKeyedSubscript:v11];
  }

  else
  {
    v4 = [(PIAdjustmentController *)self adjustment];
    v5 = +[PISlomoAdjustmentController endKey];
    [v4 setObject:0 forKeyedSubscript:v5];

    v12 = [(PIAdjustmentController *)self adjustment];
    v6 = +[PISlomoAdjustmentController endScaleKey];
    [v12 setObject:0 forKeyedSubscript:v6];
  }
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)endTime
{
  v5 = [(PIAdjustmentController *)self adjustment];
  v6 = +[PISlomoAdjustmentController endKey];
  v13 = [v5 objectForKeyedSubscript:v6];

  v7 = [(PIAdjustmentController *)self adjustment];
  v8 = +[PISlomoAdjustmentController endScaleKey];
  v9 = [v7 objectForKeyedSubscript:v8];

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

- (void)setStartTime:(id *)a3
{
  if (a3->var2)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:a3->var0];
    v9 = [(PIAdjustmentController *)self adjustment];
    v10 = +[PISlomoAdjustmentController startKey];
    [v9 setObject:v8 forKeyedSubscript:v10];

    v12 = [MEMORY[0x1E696AD98] numberWithInt:a3->var1];
    v6 = [(PIAdjustmentController *)self adjustment];
    v11 = +[PISlomoAdjustmentController startScaleKey];
    [v6 setObject:v12 forKeyedSubscript:v11];
  }

  else
  {
    v4 = [(PIAdjustmentController *)self adjustment];
    v5 = +[PISlomoAdjustmentController startKey];
    [v4 setObject:0 forKeyedSubscript:v5];

    v12 = [(PIAdjustmentController *)self adjustment];
    v6 = +[PISlomoAdjustmentController startScaleKey];
    [v12 setObject:0 forKeyedSubscript:v6];
  }
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)startTime
{
  v5 = [(PIAdjustmentController *)self adjustment];
  v6 = +[PISlomoAdjustmentController startKey];
  v13 = [v5 objectForKeyedSubscript:v6];

  v7 = [(PIAdjustmentController *)self adjustment];
  v8 = +[PISlomoAdjustmentController startScaleKey];
  v9 = [v7 objectForKeyedSubscript:v8];

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