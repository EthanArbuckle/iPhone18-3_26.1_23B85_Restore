@interface PIVideoCrossfadeLoopAdjustmentController
- ($2FE3C3292E52C4A5B67D27538456EAD9)loopTimeRange;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)crossfadeDuration;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)startTime;
- (void)setCrossfadeDuration:(id *)duration;
- (void)setLoopTimeRange:(id *)range;
- (void)setStartTime:(id *)time;
@end

@implementation PIVideoCrossfadeLoopAdjustmentController

- (void)setStartTime:(id *)time
{
  if (time->var2)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:time->var0];
    adjustment = [(PIAdjustmentController *)self adjustment];
    v10 = +[PIVideoCrossfadeLoopAdjustmentController startTimeValueKey];
    [adjustment setObject:v8 forKeyedSubscript:v10];

    adjustment4 = [MEMORY[0x1E696AD98] numberWithInt:time->var1];
    adjustment2 = [(PIAdjustmentController *)self adjustment];
    v11 = +[PIVideoCrossfadeLoopAdjustmentController startTimeTimescaleKey];
    [adjustment2 setObject:adjustment4 forKeyedSubscript:v11];
  }

  else
  {
    adjustment3 = [(PIAdjustmentController *)self adjustment];
    v5 = +[PIVideoCrossfadeLoopAdjustmentController startTimeValueKey];
    [adjustment3 setObject:0 forKeyedSubscript:v5];

    adjustment4 = [(PIAdjustmentController *)self adjustment];
    adjustment2 = +[PIVideoCrossfadeLoopAdjustmentController startTimeTimescaleKey];
    [adjustment4 setObject:0 forKeyedSubscript:adjustment2];
  }
}

- (void)setCrossfadeDuration:(id *)duration
{
  if (duration->var2)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:duration->var0];
    adjustment = [(PIAdjustmentController *)self adjustment];
    v10 = +[PIVideoCrossfadeLoopAdjustmentController crossfadeDurationValueKey];
    [adjustment setObject:v8 forKeyedSubscript:v10];

    adjustment4 = [MEMORY[0x1E696AD98] numberWithInt:duration->var1];
    adjustment2 = [(PIAdjustmentController *)self adjustment];
    v11 = +[PIVideoCrossfadeLoopAdjustmentController crossfadeDurationTimescaleKey];
    [adjustment2 setObject:adjustment4 forKeyedSubscript:v11];
  }

  else
  {
    adjustment3 = [(PIAdjustmentController *)self adjustment];
    v5 = +[PIVideoCrossfadeLoopAdjustmentController crossfadeDurationValueKey];
    [adjustment3 setObject:0 forKeyedSubscript:v5];

    adjustment4 = [(PIAdjustmentController *)self adjustment];
    adjustment2 = +[PIVideoCrossfadeLoopAdjustmentController crossfadeDurationTimescaleKey];
    [adjustment4 setObject:0 forKeyedSubscript:adjustment2];
  }
}

- (void)setLoopTimeRange:(id *)range
{
  if ((range->var0.var2 & 1) == 0 || (range->var1.var2 & 1) == 0 || range->var1.var3 || range->var1.var0 < 0)
  {
    adjustment = [(PIAdjustmentController *)self adjustment];
    v6 = +[PIVideoCrossfadeLoopAdjustmentController loopTimeRangeStartValueKey];
    [adjustment setObject:0 forKeyedSubscript:v6];

    adjustment2 = [(PIAdjustmentController *)self adjustment];
    v8 = +[PIVideoCrossfadeLoopAdjustmentController loopTimeRangeStartTimescaleKey];
    [adjustment2 setObject:0 forKeyedSubscript:v8];

    adjustment3 = [(PIAdjustmentController *)self adjustment];
    v10 = +[PIVideoCrossfadeLoopAdjustmentController loopTimeRangeDurationValueKey];
    [adjustment3 setObject:0 forKeyedSubscript:v10];

    adjustment4 = [(PIAdjustmentController *)self adjustment];
    adjustment8 = +[PIVideoCrossfadeLoopAdjustmentController loopTimeRangeDurationTimescaleKey];
    [adjustment4 setObject:0 forKeyedSubscript:adjustment8];
  }

  else
  {
    v12 = [MEMORY[0x1E696AD98] numberWithLongLong:range->var0.var0];
    adjustment5 = [(PIAdjustmentController *)self adjustment];
    v14 = +[PIVideoCrossfadeLoopAdjustmentController loopTimeRangeStartValueKey];
    [adjustment5 setObject:v12 forKeyedSubscript:v14];

    v15 = [MEMORY[0x1E696AD98] numberWithInt:range->var0.var1];
    adjustment6 = [(PIAdjustmentController *)self adjustment];
    v17 = +[PIVideoCrossfadeLoopAdjustmentController loopTimeRangeStartTimescaleKey];
    [adjustment6 setObject:v15 forKeyedSubscript:v17];

    v18 = [MEMORY[0x1E696AD98] numberWithLongLong:range->var1.var0];
    adjustment7 = [(PIAdjustmentController *)self adjustment];
    v20 = +[PIVideoCrossfadeLoopAdjustmentController loopTimeRangeDurationValueKey];
    [adjustment7 setObject:v18 forKeyedSubscript:v20];

    adjustment4 = [MEMORY[0x1E696AD98] numberWithInt:range->var1.var1];
    adjustment8 = [(PIAdjustmentController *)self adjustment];
    v21 = +[PIVideoCrossfadeLoopAdjustmentController loopTimeRangeDurationTimescaleKey];
    [adjustment8 setObject:adjustment4 forKeyedSubscript:v21];
  }
}

- ($2FE3C3292E52C4A5B67D27538456EAD9)loopTimeRange
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v6 = +[PIVideoCrossfadeLoopAdjustmentController loopTimeRangeStartValueKey];
  v7 = [adjustment objectForKeyedSubscript:v6];

  adjustment2 = [(PIAdjustmentController *)self adjustment];
  v9 = +[PIVideoCrossfadeLoopAdjustmentController loopTimeRangeStartTimescaleKey];
  v10 = [adjustment2 objectForKeyedSubscript:v9];

  adjustment3 = [(PIAdjustmentController *)self adjustment];
  v12 = +[PIVideoCrossfadeLoopAdjustmentController loopTimeRangeDurationValueKey];
  v13 = [adjustment3 objectForKeyedSubscript:v12];

  adjustment4 = [(PIAdjustmentController *)self adjustment];
  v15 = +[PIVideoCrossfadeLoopAdjustmentController loopTimeRangeDurationTimescaleKey];
  v16 = [adjustment4 objectForKeyedSubscript:v15];

  if (v7 && v10 && v13 && v16)
  {
    CMTimeMake(&start, [v7 longLongValue], objc_msgSend(v10, "intValue"));
    CMTimeMake(&v20, [v13 longLongValue], objc_msgSend(v16, "intValue"));
    CMTimeRangeMake(retstr, &start, &v20);
  }

  else
  {
    v17 = MEMORY[0x1E6960C98];
    v18 = *(MEMORY[0x1E6960C98] + 16);
    *&retstr->var0.var0 = *MEMORY[0x1E6960C98];
    *&retstr->var0.var3 = v18;
    *&retstr->var1.var1 = *(v17 + 32);
  }

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)startTime
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v6 = +[PIVideoCrossfadeLoopAdjustmentController startTimeValueKey];
  v13 = [adjustment objectForKeyedSubscript:v6];

  adjustment2 = [(PIAdjustmentController *)self adjustment];
  v8 = +[PIVideoCrossfadeLoopAdjustmentController startTimeTimescaleKey];
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

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)crossfadeDuration
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v6 = +[PIVideoCrossfadeLoopAdjustmentController crossfadeDurationValueKey];
  v13 = [adjustment objectForKeyedSubscript:v6];

  adjustment2 = [(PIAdjustmentController *)self adjustment];
  v8 = +[PIVideoCrossfadeLoopAdjustmentController crossfadeDurationTimescaleKey];
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