@interface PIVideoPosterFrameAdjustmentController
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)posterFrameTime;
- (PIVideoPosterFrameAdjustmentController)initWithAdjustment:(id)adjustment;
- (void)setPosterFrameTime:(id *)time;
@end

@implementation PIVideoPosterFrameAdjustmentController

- (void)setPosterFrameTime:(id *)time
{
  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:time->var0];
  adjustment = [(PIAdjustmentController *)self adjustment];
  v7 = +[PIVideoPosterFrameAdjustmentController timeKey];
  [adjustment setObject:v5 forKeyedSubscript:v7];

  v10 = [MEMORY[0x1E696AD98] numberWithInt:time->var1];
  adjustment2 = [(PIAdjustmentController *)self adjustment];
  v9 = +[PIVideoPosterFrameAdjustmentController scaleKey];
  [adjustment2 setObject:v10 forKeyedSubscript:v9];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)posterFrameTime
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIVideoPosterFrameAdjustmentController timeKey];
  v6 = [adjustment objectForKeyedSubscript:v5];
  longLongValue = [v6 longLongValue];
  adjustment2 = [(PIAdjustmentController *)self adjustment];
  v9 = +[PIVideoPosterFrameAdjustmentController scaleKey];
  v10 = [adjustment2 objectForKeyedSubscript:v9];
  CMTimeMake(retstr, longLongValue, [v10 intValue]);

  return result;
}

- (PIVideoPosterFrameAdjustmentController)initWithAdjustment:(id)adjustment
{
  v4.receiver = self;
  v4.super_class = PIVideoPosterFrameAdjustmentController;
  return [(PIAdjustmentController *)&v4 initWithAdjustment:adjustment];
}

@end