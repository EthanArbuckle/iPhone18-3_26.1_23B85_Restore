@interface _UIFeedbackDummyEngine
+ (id)sharedEngine;
- (BOOL)_internal_playFeedbackData:(id)a3 forFeedback:(id)a4 atTime:(double)a5;
- (void)_internal_activateUnderlyingPlayerWithCompletion:(id)a3;
- (void)_internal_stopFeedbackData:(id)a3 forFeedback:(id)a4;
- (void)_playFeedback:(id)a3 atTime:(double)a4;
- (void)_stopFeedback:(id)a3;
@end

@implementation _UIFeedbackDummyEngine

+ (id)sharedEngine
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38___UIFeedbackDummyEngine_sharedEngine__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_1ED499EC0 != -1)
  {
    dispatch_once(&qword_1ED499EC0, block);
  }

  v2 = qword_1ED499EC8;

  return v2;
}

- (void)_internal_activateUnderlyingPlayerWithCompletion:(id)a3
{
  v3 = a3;
  [objc_opt_class() _internalQueue];

  v4 = [objc_opt_class() _internalQueue];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x1E69E96A0];
    v7 = MEMORY[0x1E69E96A0];
  }

  v8 = dispatch_time(0, 100000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75___UIFeedbackDummyEngine__internal_activateUnderlyingPlayerWithCompletion___block_invoke;
  block[3] = &unk_1E70F0F78;
  v11 = v3;
  v9 = v3;
  dispatch_after(v8, v6, block);
}

- (void)_playFeedback:(id)a3 atTime:(double)a4
{
  v6 = a3;
  v7 = [v6 _effectiveFeedbackData];
  v8 = [objc_opt_class() _internalQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __47___UIFeedbackDummyEngine__playFeedback_atTime___block_invoke;
  v14[3] = &unk_1E7107CE8;
  v14[4] = self;
  v15 = v7;
  v16 = v6;
  v17 = a4;
  v9 = v8;
  if (!v8)
  {
    v9 = MEMORY[0x1E69E96A0];
    v10 = MEMORY[0x1E69E96A0];
  }

  v11 = v8;
  v12 = v6;
  v13 = v7;
  dispatch_async(v9, v14);
}

- (BOOL)_internal_playFeedbackData:(id)a3 forFeedback:(id)a4 atTime:(double)a5
{
  v7 = a4;
  [objc_opt_class() _internalQueue];

  [(_UIFeedbackEngine *)self _internal_willPlayFeedback:v7 atTime:a5];
  return 1;
}

- (void)_stopFeedback:(id)a3
{
  v4 = a3;
  v5 = [v4 _effectiveFeedbackData];
  v6 = [objc_opt_class() _internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40___UIFeedbackDummyEngine__stopFeedback___block_invoke;
  block[3] = &unk_1E70F6228;
  block[4] = self;
  v13 = v5;
  v14 = v4;
  v7 = v6;
  if (!v6)
  {
    v7 = MEMORY[0x1E69E96A0];
    v8 = MEMORY[0x1E69E96A0];
  }

  v9 = v6;
  v10 = v4;
  v11 = v5;
  dispatch_async(v7, block);
}

- (void)_internal_stopFeedbackData:(id)a3 forFeedback:(id)a4
{
  v5 = a4;
  [objc_opt_class() _internalQueue];

  [(_UIFeedbackEngine *)self _internal_willCancelFeedback:v5];
}

@end