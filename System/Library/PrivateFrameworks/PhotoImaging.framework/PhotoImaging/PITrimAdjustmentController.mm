@interface PITrimAdjustmentController
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)endTime;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)startTime;
- (void)setEndTime:(id *)time;
- (void)setStartTime:(id *)time;
@end

@implementation PITrimAdjustmentController

- (void)setEndTime:(id *)time
{
  if (time->var2)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:time->var0];
    adjustment = [(PIAdjustmentController *)self adjustment];
    v10 = +[PITrimAdjustmentController endKey];
    [adjustment setObject:v8 forKeyedSubscript:v10];

    adjustment4 = [MEMORY[0x1E696AD98] numberWithInt:time->var1];
    adjustment2 = [(PIAdjustmentController *)self adjustment];
    v11 = +[PITrimAdjustmentController endScaleKey];
    [adjustment2 setObject:adjustment4 forKeyedSubscript:v11];
  }

  else
  {
    adjustment3 = [(PIAdjustmentController *)self adjustment];
    v5 = +[PITrimAdjustmentController endKey];
    [adjustment3 setObject:0 forKeyedSubscript:v5];

    adjustment4 = [(PIAdjustmentController *)self adjustment];
    adjustment2 = +[PITrimAdjustmentController endScaleKey];
    [adjustment4 setObject:0 forKeyedSubscript:adjustment2];
  }
}

- (void)setStartTime:(id *)time
{
  if (time->var2)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:time->var0];
    adjustment = [(PIAdjustmentController *)self adjustment];
    v10 = +[PITrimAdjustmentController startKey];
    [adjustment setObject:v8 forKeyedSubscript:v10];

    adjustment4 = [MEMORY[0x1E696AD98] numberWithInt:time->var1];
    adjustment2 = [(PIAdjustmentController *)self adjustment];
    v11 = +[PITrimAdjustmentController startScaleKey];
    [adjustment2 setObject:adjustment4 forKeyedSubscript:v11];
  }

  else
  {
    adjustment3 = [(PIAdjustmentController *)self adjustment];
    v5 = +[PITrimAdjustmentController startKey];
    [adjustment3 setObject:0 forKeyedSubscript:v5];

    adjustment4 = [(PIAdjustmentController *)self adjustment];
    adjustment2 = +[PITrimAdjustmentController startScaleKey];
    [adjustment4 setObject:0 forKeyedSubscript:adjustment2];
  }
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)endTime
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v6 = +[PITrimAdjustmentController endKey];
  v13 = [adjustment objectForKeyedSubscript:v6];

  adjustment2 = [(PIAdjustmentController *)self adjustment];
  v8 = +[PITrimAdjustmentController endScaleKey];
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

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)startTime
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v6 = +[PITrimAdjustmentController startKey];
  v13 = [adjustment objectForKeyedSubscript:v6];

  adjustment2 = [(PIAdjustmentController *)self adjustment];
  v8 = +[PITrimAdjustmentController startScaleKey];
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