@interface _UITapticEngine
- (_UITapticEngine)init;
- (id)_stateForFeedback:(int64_t)feedback;
- (void)actuateFeedback:(int64_t)feedback;
- (void)endUsingFeedback:(int64_t)feedback;
- (void)prepareUsingFeedback:(int64_t)feedback;
@end

@implementation _UITapticEngine

- (_UITapticEngine)init
{
  v5.receiver = self;
  v5.super_class = _UITapticEngine;
  v2 = [(_UITapticEngine *)&v5 init];
  v3 = [[_UIStatesFeedbackGenerator alloc] initWithStyle:0];
  [(_UITapticEngine *)v2 setFeedbackGenerator:v3];

  return v2;
}

- (void)prepareUsingFeedback:(int64_t)feedback
{
  if (pthread_main_np() == 1)
  {
    if (!self->_feedbackActivated)
    {
      [(UIFeedbackGenerator *)self->_feedbackGenerator activateWithCompletionBlock:0];
      self->_feedbackActivated = 1;
    }
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __40___UITapticEngine_prepareUsingFeedback___block_invoke;
    v5[3] = &unk_1E70F32F0;
    v5[4] = self;
    v5[5] = feedback;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

- (void)endUsingFeedback:(int64_t)feedback
{
  if (pthread_main_np() == 1)
  {
    if (self->_feedbackActivated)
    {
      [(UIFeedbackGenerator *)self->_feedbackGenerator deactivate];
      self->_feedbackActivated = 0;
    }
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __36___UITapticEngine_endUsingFeedback___block_invoke;
    v5[3] = &unk_1E70F32F0;
    v5[4] = self;
    v5[5] = feedback;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

- (void)actuateFeedback:(int64_t)feedback
{
  if (pthread_main_np() == 1)
  {
    v5 = [(_UITapticEngine *)self _stateForFeedback:feedback];
    feedbackGenerator = self->_feedbackGenerator;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __35___UITapticEngine_actuateFeedback___block_invoke_2;
    v8[3] = &unk_1E70F3C60;
    v8[4] = self;
    v9 = v5;
    v7 = v5;
    [(UIFeedbackGenerator *)feedbackGenerator activateWithCompletionBlock:v8];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __35___UITapticEngine_actuateFeedback___block_invoke;
    block[3] = &unk_1E70F32F0;
    block[4] = self;
    block[5] = feedback;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (id)_stateForFeedback:(int64_t)feedback
{
  v4 = 0;
  v5 = _UIStatesFeedbackGeneratorForcePresentationStatePreview;
  if (feedback <= 1)
  {
    if (!feedback)
    {
      goto LABEL_12;
    }

    if (feedback != 1)
    {
LABEL_5:

      return v4;
    }

    goto LABEL_10;
  }

  if (feedback != 2)
  {
    if (feedback == 1001)
    {
      goto LABEL_12;
    }

    if (feedback != 1002)
    {
      goto LABEL_5;
    }

LABEL_10:
    v5 = _UIStatesFeedbackGeneratorForcePresentationStateCommit;
    goto LABEL_12;
  }

  v5 = _UIStatesFeedbackGeneratorForcePresentationStateCancel;
LABEL_12:
  v4 = *v5;

  return v4;
}

@end