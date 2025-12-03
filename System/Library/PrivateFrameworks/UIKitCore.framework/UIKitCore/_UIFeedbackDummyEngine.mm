@interface _UIFeedbackDummyEngine
+ (id)sharedEngine;
- (BOOL)_internal_playFeedbackData:(id)data forFeedback:(id)feedback atTime:(double)time;
- (void)_internal_activateUnderlyingPlayerWithCompletion:(id)completion;
- (void)_internal_stopFeedbackData:(id)data forFeedback:(id)feedback;
- (void)_playFeedback:(id)feedback atTime:(double)time;
- (void)_stopFeedback:(id)feedback;
@end

@implementation _UIFeedbackDummyEngine

+ (id)sharedEngine
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38___UIFeedbackDummyEngine_sharedEngine__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED499EC0 != -1)
  {
    dispatch_once(&qword_1ED499EC0, block);
  }

  v2 = qword_1ED499EC8;

  return v2;
}

- (void)_internal_activateUnderlyingPlayerWithCompletion:(id)completion
{
  completionCopy = completion;
  [objc_opt_class() _internalQueue];

  _internalQueue = [objc_opt_class() _internalQueue];
  v5 = _internalQueue;
  if (_internalQueue)
  {
    v6 = _internalQueue;
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
  v11 = completionCopy;
  v9 = completionCopy;
  dispatch_after(v8, v6, block);
}

- (void)_playFeedback:(id)feedback atTime:(double)time
{
  feedbackCopy = feedback;
  _effectiveFeedbackData = [feedbackCopy _effectiveFeedbackData];
  _internalQueue = [objc_opt_class() _internalQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __47___UIFeedbackDummyEngine__playFeedback_atTime___block_invoke;
  v14[3] = &unk_1E7107CE8;
  v14[4] = self;
  v15 = _effectiveFeedbackData;
  v16 = feedbackCopy;
  timeCopy = time;
  v9 = _internalQueue;
  if (!_internalQueue)
  {
    v9 = MEMORY[0x1E69E96A0];
    v10 = MEMORY[0x1E69E96A0];
  }

  v11 = _internalQueue;
  v12 = feedbackCopy;
  v13 = _effectiveFeedbackData;
  dispatch_async(v9, v14);
}

- (BOOL)_internal_playFeedbackData:(id)data forFeedback:(id)feedback atTime:(double)time
{
  feedbackCopy = feedback;
  [objc_opt_class() _internalQueue];

  [(_UIFeedbackEngine *)self _internal_willPlayFeedback:feedbackCopy atTime:time];
  return 1;
}

- (void)_stopFeedback:(id)feedback
{
  feedbackCopy = feedback;
  _effectiveFeedbackData = [feedbackCopy _effectiveFeedbackData];
  _internalQueue = [objc_opt_class() _internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40___UIFeedbackDummyEngine__stopFeedback___block_invoke;
  block[3] = &unk_1E70F6228;
  block[4] = self;
  v13 = _effectiveFeedbackData;
  v14 = feedbackCopy;
  v7 = _internalQueue;
  if (!_internalQueue)
  {
    v7 = MEMORY[0x1E69E96A0];
    v8 = MEMORY[0x1E69E96A0];
  }

  v9 = _internalQueue;
  v10 = feedbackCopy;
  v11 = _effectiveFeedbackData;
  dispatch_async(v7, block);
}

- (void)_internal_stopFeedbackData:(id)data forFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [objc_opt_class() _internalQueue];

  [(_UIFeedbackEngine *)self _internal_willCancelFeedback:feedbackCopy];
}

@end