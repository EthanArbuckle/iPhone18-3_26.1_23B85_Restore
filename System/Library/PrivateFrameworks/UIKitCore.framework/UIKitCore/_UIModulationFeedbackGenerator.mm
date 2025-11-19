@interface _UIModulationFeedbackGenerator
- (void)activateWithCompletionBlock:(id)a3;
- (void)deactivate;
- (void)valueUpdated:(double)a3;
@end

@implementation _UIModulationFeedbackGenerator

- (void)valueUpdated:(double)a3
{
  [(UIFeedbackGenerator *)self _clientDidUpdateGeneratorWithSelector:a2];
  v5 = [(_UIModulationFeedbackGenerator *)self playingContinuousFeedback];

  if (v5)
  {
    v8 = [(_UIModulationFeedbackGenerator *)self _modulationConfiguration];
    v6 = [v8 feedbackUpdateBlock];
    v7 = [(_UIModulationFeedbackGenerator *)self playingContinuousFeedback];
    (v6)[2](v6, v7, a3);
  }

  else
  {
    self->_currentValue = a3;
  }
}

- (void)activateWithCompletionBlock:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62___UIModulationFeedbackGenerator_activateWithCompletionBlock___block_invoke;
  v7[3] = &unk_1E70FE248;
  v7[4] = self;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = _UIModulationFeedbackGenerator;
  v5 = v4;
  [(UIFeedbackGenerator *)&v6 activateWithCompletionBlock:v7];
}

- (void)deactivate
{
  v5.receiver = self;
  v5.super_class = _UIModulationFeedbackGenerator;
  [(UIFeedbackGenerator *)&v5 deactivate];
  if (![(UIFeedbackGenerator *)self isActive])
  {
    v3 = [(_UIModulationFeedbackGenerator *)self playingContinuousFeedback];

    if (v3)
    {
      v4 = [(_UIModulationFeedbackGenerator *)self playingContinuousFeedback];
      [v4 stop];

      [(_UIModulationFeedbackGenerator *)self setPlayingContinuousFeedback:0];
    }
  }
}

@end