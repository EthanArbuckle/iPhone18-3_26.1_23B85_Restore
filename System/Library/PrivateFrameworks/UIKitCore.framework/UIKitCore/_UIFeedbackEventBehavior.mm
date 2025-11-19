@interface _UIFeedbackEventBehavior
+ (void)_privateEventOccurred:(int64_t)a3;
+ (void)eventOccurred:(int64_t)a3;
- (void)_activateAndPlayEvent:(int64_t)a3;
@end

@implementation _UIFeedbackEventBehavior

+ (void)eventOccurred:(int64_t)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42___UIFeedbackEventBehavior_eventOccurred___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_1ED49A060 != -1)
  {
    dispatch_once(&qword_1ED49A060, block);
  }

  [qword_1ED49A058 _activateAndPlayEvent:a3];
}

+ (void)_privateEventOccurred:(int64_t)a3
{
  v4 = [a1 alloc];
  v5 = MEMORY[0x1E695DFD8];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v7 = [v5 setWithObject:v6];
  v8 = [_UINotificationFeedbackGeneratorConfiguration privateConfigurationForTypes:v7];
  v9 = [v4 initWithConfiguration:v8];

  [v9 _activateAndPlayEvent:a3];
}

- (void)_activateAndPlayEvent:(int64_t)a3
{
  if (pthread_main_np() == 1)
  {

    [(UINotificationFeedbackGenerator *)self _playEventType:a3 atLocation:1.79769313e308, 1.79769313e308];
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __50___UIFeedbackEventBehavior__activateAndPlayEvent___block_invoke;
    v5[3] = &unk_1E70F32F0;
    v5[4] = self;
    v5[5] = a3;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

@end