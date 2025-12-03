@interface PILivePhotoKeyFrameAdjustmentController
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)keyFrameTime;
- (PILivePhotoKeyFrameAdjustmentController)initWithAdjustment:(id)adjustment;
- (void)setKeyFrameTime:(id *)time;
@end

@implementation PILivePhotoKeyFrameAdjustmentController

- (void)setKeyFrameTime:(id *)time
{
  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:time->var0];
  adjustment = [(PIAdjustmentController *)self adjustment];
  v7 = +[PILivePhotoKeyFrameAdjustmentController timeKey];
  [adjustment setObject:v5 forKeyedSubscript:v7];

  v10 = [MEMORY[0x1E696AD98] numberWithInt:time->var1];
  adjustment2 = [(PIAdjustmentController *)self adjustment];
  v9 = +[PILivePhotoKeyFrameAdjustmentController scaleKey];
  [adjustment2 setObject:v10 forKeyedSubscript:v9];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)keyFrameTime
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v5 = +[PILivePhotoKeyFrameAdjustmentController timeKey];
  v6 = [adjustment objectForKeyedSubscript:v5];
  longLongValue = [v6 longLongValue];
  adjustment2 = [(PIAdjustmentController *)self adjustment];
  v9 = +[PILivePhotoKeyFrameAdjustmentController scaleKey];
  v10 = [adjustment2 objectForKeyedSubscript:v9];
  CMTimeMake(retstr, longLongValue, [v10 intValue]);

  return result;
}

- (PILivePhotoKeyFrameAdjustmentController)initWithAdjustment:(id)adjustment
{
  v4.receiver = self;
  v4.super_class = PILivePhotoKeyFrameAdjustmentController;
  return [(PIAdjustmentController *)&v4 initWithAdjustment:adjustment];
}

@end