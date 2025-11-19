@interface PIVideoCrossfadeLoopAdjustmentController
- ($2FE3C3292E52C4A5B67D27538456EAD9)loopTimeRange;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)crossfadeDuration;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)startTime;
- (void)setCrossfadeDuration:(id *)a3;
- (void)setLoopTimeRange:(id *)a3;
- (void)setStartTime:(id *)a3;
@end

@implementation PIVideoCrossfadeLoopAdjustmentController

- (void)setStartTime:(id *)a3
{
  if (a3->var2)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:a3->var0];
    v9 = [(PIAdjustmentController *)self adjustment];
    v10 = +[PIVideoCrossfadeLoopAdjustmentController startTimeValueKey];
    [v9 setObject:v8 forKeyedSubscript:v10];

    v12 = [MEMORY[0x1E696AD98] numberWithInt:a3->var1];
    v6 = [(PIAdjustmentController *)self adjustment];
    v11 = +[PIVideoCrossfadeLoopAdjustmentController startTimeTimescaleKey];
    [v6 setObject:v12 forKeyedSubscript:v11];
  }

  else
  {
    v4 = [(PIAdjustmentController *)self adjustment];
    v5 = +[PIVideoCrossfadeLoopAdjustmentController startTimeValueKey];
    [v4 setObject:0 forKeyedSubscript:v5];

    v12 = [(PIAdjustmentController *)self adjustment];
    v6 = +[PIVideoCrossfadeLoopAdjustmentController startTimeTimescaleKey];
    [v12 setObject:0 forKeyedSubscript:v6];
  }
}

- (void)setCrossfadeDuration:(id *)a3
{
  if (a3->var2)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:a3->var0];
    v9 = [(PIAdjustmentController *)self adjustment];
    v10 = +[PIVideoCrossfadeLoopAdjustmentController crossfadeDurationValueKey];
    [v9 setObject:v8 forKeyedSubscript:v10];

    v12 = [MEMORY[0x1E696AD98] numberWithInt:a3->var1];
    v6 = [(PIAdjustmentController *)self adjustment];
    v11 = +[PIVideoCrossfadeLoopAdjustmentController crossfadeDurationTimescaleKey];
    [v6 setObject:v12 forKeyedSubscript:v11];
  }

  else
  {
    v4 = [(PIAdjustmentController *)self adjustment];
    v5 = +[PIVideoCrossfadeLoopAdjustmentController crossfadeDurationValueKey];
    [v4 setObject:0 forKeyedSubscript:v5];

    v12 = [(PIAdjustmentController *)self adjustment];
    v6 = +[PIVideoCrossfadeLoopAdjustmentController crossfadeDurationTimescaleKey];
    [v12 setObject:0 forKeyedSubscript:v6];
  }
}

- (void)setLoopTimeRange:(id *)a3
{
  if ((a3->var0.var2 & 1) == 0 || (a3->var1.var2 & 1) == 0 || a3->var1.var3 || a3->var1.var0 < 0)
  {
    v5 = [(PIAdjustmentController *)self adjustment];
    v6 = +[PIVideoCrossfadeLoopAdjustmentController loopTimeRangeStartValueKey];
    [v5 setObject:0 forKeyedSubscript:v6];

    v7 = [(PIAdjustmentController *)self adjustment];
    v8 = +[PIVideoCrossfadeLoopAdjustmentController loopTimeRangeStartTimescaleKey];
    [v7 setObject:0 forKeyedSubscript:v8];

    v9 = [(PIAdjustmentController *)self adjustment];
    v10 = +[PIVideoCrossfadeLoopAdjustmentController loopTimeRangeDurationValueKey];
    [v9 setObject:0 forKeyedSubscript:v10];

    v22 = [(PIAdjustmentController *)self adjustment];
    v11 = +[PIVideoCrossfadeLoopAdjustmentController loopTimeRangeDurationTimescaleKey];
    [v22 setObject:0 forKeyedSubscript:v11];
  }

  else
  {
    v12 = [MEMORY[0x1E696AD98] numberWithLongLong:a3->var0.var0];
    v13 = [(PIAdjustmentController *)self adjustment];
    v14 = +[PIVideoCrossfadeLoopAdjustmentController loopTimeRangeStartValueKey];
    [v13 setObject:v12 forKeyedSubscript:v14];

    v15 = [MEMORY[0x1E696AD98] numberWithInt:a3->var0.var1];
    v16 = [(PIAdjustmentController *)self adjustment];
    v17 = +[PIVideoCrossfadeLoopAdjustmentController loopTimeRangeStartTimescaleKey];
    [v16 setObject:v15 forKeyedSubscript:v17];

    v18 = [MEMORY[0x1E696AD98] numberWithLongLong:a3->var1.var0];
    v19 = [(PIAdjustmentController *)self adjustment];
    v20 = +[PIVideoCrossfadeLoopAdjustmentController loopTimeRangeDurationValueKey];
    [v19 setObject:v18 forKeyedSubscript:v20];

    v22 = [MEMORY[0x1E696AD98] numberWithInt:a3->var1.var1];
    v11 = [(PIAdjustmentController *)self adjustment];
    v21 = +[PIVideoCrossfadeLoopAdjustmentController loopTimeRangeDurationTimescaleKey];
    [v11 setObject:v22 forKeyedSubscript:v21];
  }
}

- ($2FE3C3292E52C4A5B67D27538456EAD9)loopTimeRange
{
  v5 = [(PIAdjustmentController *)self adjustment];
  v6 = +[PIVideoCrossfadeLoopAdjustmentController loopTimeRangeStartValueKey];
  v7 = [v5 objectForKeyedSubscript:v6];

  v8 = [(PIAdjustmentController *)self adjustment];
  v9 = +[PIVideoCrossfadeLoopAdjustmentController loopTimeRangeStartTimescaleKey];
  v10 = [v8 objectForKeyedSubscript:v9];

  v11 = [(PIAdjustmentController *)self adjustment];
  v12 = +[PIVideoCrossfadeLoopAdjustmentController loopTimeRangeDurationValueKey];
  v13 = [v11 objectForKeyedSubscript:v12];

  v14 = [(PIAdjustmentController *)self adjustment];
  v15 = +[PIVideoCrossfadeLoopAdjustmentController loopTimeRangeDurationTimescaleKey];
  v16 = [v14 objectForKeyedSubscript:v15];

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
  v5 = [(PIAdjustmentController *)self adjustment];
  v6 = +[PIVideoCrossfadeLoopAdjustmentController startTimeValueKey];
  v13 = [v5 objectForKeyedSubscript:v6];

  v7 = [(PIAdjustmentController *)self adjustment];
  v8 = +[PIVideoCrossfadeLoopAdjustmentController startTimeTimescaleKey];
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

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)crossfadeDuration
{
  v5 = [(PIAdjustmentController *)self adjustment];
  v6 = +[PIVideoCrossfadeLoopAdjustmentController crossfadeDurationValueKey];
  v13 = [v5 objectForKeyedSubscript:v6];

  v7 = [(PIAdjustmentController *)self adjustment];
  v8 = +[PIVideoCrossfadeLoopAdjustmentController crossfadeDurationTimescaleKey];
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