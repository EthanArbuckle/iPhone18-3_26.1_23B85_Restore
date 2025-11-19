@interface PIVideoPosterFrameAdjustmentController
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)posterFrameTime;
- (PIVideoPosterFrameAdjustmentController)initWithAdjustment:(id)a3;
- (void)setPosterFrameTime:(id *)a3;
@end

@implementation PIVideoPosterFrameAdjustmentController

- (void)setPosterFrameTime:(id *)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:a3->var0];
  v6 = [(PIAdjustmentController *)self adjustment];
  v7 = +[PIVideoPosterFrameAdjustmentController timeKey];
  [v6 setObject:v5 forKeyedSubscript:v7];

  v10 = [MEMORY[0x1E696AD98] numberWithInt:a3->var1];
  v8 = [(PIAdjustmentController *)self adjustment];
  v9 = +[PIVideoPosterFrameAdjustmentController scaleKey];
  [v8 setObject:v10 forKeyedSubscript:v9];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)posterFrameTime
{
  v12 = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIVideoPosterFrameAdjustmentController timeKey];
  v6 = [v12 objectForKeyedSubscript:v5];
  v7 = [v6 longLongValue];
  v8 = [(PIAdjustmentController *)self adjustment];
  v9 = +[PIVideoPosterFrameAdjustmentController scaleKey];
  v10 = [v8 objectForKeyedSubscript:v9];
  CMTimeMake(retstr, v7, [v10 intValue]);

  return result;
}

- (PIVideoPosterFrameAdjustmentController)initWithAdjustment:(id)a3
{
  v4.receiver = self;
  v4.super_class = PIVideoPosterFrameAdjustmentController;
  return [(PIAdjustmentController *)&v4 initWithAdjustment:a3];
}

@end