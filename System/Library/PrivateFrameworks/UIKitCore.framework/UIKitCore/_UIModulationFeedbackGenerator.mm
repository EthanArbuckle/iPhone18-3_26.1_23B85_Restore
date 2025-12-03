@interface _UIModulationFeedbackGenerator
- (void)activateWithCompletionBlock:(id)block;
- (void)deactivate;
- (void)valueUpdated:(double)updated;
@end

@implementation _UIModulationFeedbackGenerator

- (void)valueUpdated:(double)updated
{
  [(UIFeedbackGenerator *)self _clientDidUpdateGeneratorWithSelector:a2];
  playingContinuousFeedback = [(_UIModulationFeedbackGenerator *)self playingContinuousFeedback];

  if (playingContinuousFeedback)
  {
    _modulationConfiguration = [(_UIModulationFeedbackGenerator *)self _modulationConfiguration];
    feedbackUpdateBlock = [_modulationConfiguration feedbackUpdateBlock];
    playingContinuousFeedback2 = [(_UIModulationFeedbackGenerator *)self playingContinuousFeedback];
    (feedbackUpdateBlock)[2](feedbackUpdateBlock, playingContinuousFeedback2, updated);
  }

  else
  {
    self->_currentValue = updated;
  }
}

- (void)activateWithCompletionBlock:(id)block
{
  blockCopy = block;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62___UIModulationFeedbackGenerator_activateWithCompletionBlock___block_invoke;
  v7[3] = &unk_1E70FE248;
  v7[4] = self;
  v8 = blockCopy;
  v6.receiver = self;
  v6.super_class = _UIModulationFeedbackGenerator;
  v5 = blockCopy;
  [(UIFeedbackGenerator *)&v6 activateWithCompletionBlock:v7];
}

- (void)deactivate
{
  v5.receiver = self;
  v5.super_class = _UIModulationFeedbackGenerator;
  [(UIFeedbackGenerator *)&v5 deactivate];
  if (![(UIFeedbackGenerator *)self isActive])
  {
    playingContinuousFeedback = [(_UIModulationFeedbackGenerator *)self playingContinuousFeedback];

    if (playingContinuousFeedback)
    {
      playingContinuousFeedback2 = [(_UIModulationFeedbackGenerator *)self playingContinuousFeedback];
      [playingContinuousFeedback2 stop];

      [(_UIModulationFeedbackGenerator *)self setPlayingContinuousFeedback:0];
    }
  }
}

@end