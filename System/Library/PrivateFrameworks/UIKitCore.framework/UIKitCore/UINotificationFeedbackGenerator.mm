@interface UINotificationFeedbackGenerator
- (double)_preparationTimeoutForStyle:(int64_t)style;
- (id)_categoryForType:(int64_t)type;
- (void)_playEventType:(int64_t)type atLocation:(CGPoint)location;
- (void)_playEventType:(void *)type senderID:(void *)d powerSourceID:(double)iD atLocation:(double)location;
- (void)_stopEventType:(int64_t)type;
@end

@implementation UINotificationFeedbackGenerator

- (id)_categoryForType:(int64_t)type
{
  if ((type | 2) == 0x3EA)
  {
    v4 = @"lock";
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)_preparationTimeoutForStyle:(int64_t)style
{
  result = 0.0;
  if (style != 2)
  {
    v7 = v3;
    v8 = v4;
    v6.receiver = self;
    v6.super_class = UINotificationFeedbackGenerator;
    [(UIFeedbackGenerator *)&v6 _preparationTimeoutForStyle:0.0];
  }

  return result;
}

- (void)_playEventType:(void *)type senderID:(void *)d powerSourceID:(double)iD atLocation:(double)location
{
  dCopy = d;
  if (self)
  {
    [self _clientDidUpdateGeneratorWithSelector:sel__playEventType_senderID_powerSourceID_atLocation_];
    _eventConfiguration = [self _eventConfiguration];
    feedbacks = [_eventConfiguration feedbacks];
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
    v14 = [feedbacks objectForKeyedSubscript:v13];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (dCopy)
      {
        typeCopy = dCopy;
      }

      else
      {
        typeCopy = type;
      }

      v16 = [v14 completeFeedbackPatternWithSenderID:typeCopy];

      v17 = [self _categoryForType:a2];
      [v16 _setCategory:v17];

      [self _playFeedback:v16 atLocation:{iD, location}];
      v14 = v16;
    }
  }
}

- (void)_playEventType:(int64_t)type atLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  [(UIFeedbackGenerator *)self _clientDidUpdateGeneratorWithSelector:a2];
  _eventConfiguration = [(UINotificationFeedbackGenerator *)self _eventConfiguration];
  feedbacks = [_eventConfiguration feedbacks];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v12 = [feedbacks objectForKeyedSubscript:v10];

  v11 = [(UINotificationFeedbackGenerator *)self _categoryForType:type];
  [v12 _setCategory:v11];

  [(UIFeedbackGenerator *)self _playFeedback:v12 atLocation:x, y];
}

- (void)_stopEventType:(int64_t)type
{
  _eventConfiguration = [(UINotificationFeedbackGenerator *)self _eventConfiguration];
  feedbacks = [_eventConfiguration feedbacks];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v8 = [feedbacks objectForKeyedSubscript:v7];

  [(UIFeedbackGenerator *)self _stopFeedback:v8];
}

@end