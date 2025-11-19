@interface UINotificationFeedbackGenerator
- (double)_preparationTimeoutForStyle:(int64_t)a3;
- (id)_categoryForType:(int64_t)a3;
- (void)_playEventType:(int64_t)a3 atLocation:(CGPoint)a4;
- (void)_playEventType:(void *)a3 senderID:(void *)a4 powerSourceID:(double)a5 atLocation:(double)a6;
- (void)_stopEventType:(int64_t)a3;
@end

@implementation UINotificationFeedbackGenerator

- (id)_categoryForType:(int64_t)a3
{
  if ((a3 | 2) == 0x3EA)
  {
    v4 = @"lock";
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)_preparationTimeoutForStyle:(int64_t)a3
{
  result = 0.0;
  if (a3 != 2)
  {
    v7 = v3;
    v8 = v4;
    v6.receiver = self;
    v6.super_class = UINotificationFeedbackGenerator;
    [(UIFeedbackGenerator *)&v6 _preparationTimeoutForStyle:0.0];
  }

  return result;
}

- (void)_playEventType:(void *)a3 senderID:(void *)a4 powerSourceID:(double)a5 atLocation:(double)a6
{
  v18 = a4;
  if (a1)
  {
    [a1 _clientDidUpdateGeneratorWithSelector:sel__playEventType_senderID_powerSourceID_atLocation_];
    v11 = [a1 _eventConfiguration];
    v12 = [v11 feedbacks];
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
    v14 = [v12 objectForKeyedSubscript:v13];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v18)
      {
        v15 = v18;
      }

      else
      {
        v15 = a3;
      }

      v16 = [v14 completeFeedbackPatternWithSenderID:v15];

      v17 = [a1 _categoryForType:a2];
      [v16 _setCategory:v17];

      [a1 _playFeedback:v16 atLocation:{a5, a6}];
      v14 = v16;
    }
  }
}

- (void)_playEventType:(int64_t)a3 atLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  [(UIFeedbackGenerator *)self _clientDidUpdateGeneratorWithSelector:a2];
  v8 = [(UINotificationFeedbackGenerator *)self _eventConfiguration];
  v9 = [v8 feedbacks];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v12 = [v9 objectForKeyedSubscript:v10];

  v11 = [(UINotificationFeedbackGenerator *)self _categoryForType:a3];
  [v12 _setCategory:v11];

  [(UIFeedbackGenerator *)self _playFeedback:v12 atLocation:x, y];
}

- (void)_stopEventType:(int64_t)a3
{
  v5 = [(UINotificationFeedbackGenerator *)self _eventConfiguration];
  v6 = [v5 feedbacks];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v8 = [v6 objectForKeyedSubscript:v7];

  [(UIFeedbackGenerator *)self _stopFeedback:v8];
}

@end