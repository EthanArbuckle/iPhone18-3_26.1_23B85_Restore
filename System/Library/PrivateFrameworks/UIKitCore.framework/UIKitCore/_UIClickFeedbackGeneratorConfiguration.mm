@interface _UIClickFeedbackGeneratorConfiguration
- (_UIFeedbackDiscretePlayable)clickDownAudioFeedback;
- (_UIFeedbackDiscretePlayable)clickDownFeedback;
- (_UIFeedbackDiscretePlayable)clickDownPattern;
- (_UIFeedbackDiscretePlayable)clickUpAudioFeedback;
- (_UIFeedbackDiscretePlayable)clickUpFeedback;
- (_UIFeedbackDiscretePlayable)clickUpPattern;
- (id)feedbackKeyPaths;
- (void)setClickDownAudioFeedback:(id)feedback;
- (void)setClickUpAudioFeedback:(id)feedback;
- (void)setClickUpFeedback:(id)feedback;
- (void)setclickDownFeedback:(id)feedback;
@end

@implementation _UIClickFeedbackGeneratorConfiguration

- (_UIFeedbackDiscretePlayable)clickDownPattern
{
  v3 = +[_UIFeedbackPattern feedbackPattern];
  [v3 _setCategory:0x1EFB4AA30];
  clickDownFeedback = [(_UIClickFeedbackGeneratorConfiguration *)self clickDownFeedback];

  if (clickDownFeedback)
  {
    clickDownFeedback2 = [(_UIClickFeedbackGeneratorConfiguration *)self clickDownFeedback];
    [v3 addFeedback:clickDownFeedback2 atTime:0.0];
  }

  clickDownAudioFeedback = [(_UIClickFeedbackGeneratorConfiguration *)self clickDownAudioFeedback];

  if (clickDownAudioFeedback)
  {
    clickDownAudioFeedback2 = [(_UIClickFeedbackGeneratorConfiguration *)self clickDownAudioFeedback];
    [v3 addFeedback:clickDownAudioFeedback2 atTime:0.0];
  }

  return v3;
}

- (_UIFeedbackDiscretePlayable)clickUpPattern
{
  v3 = +[_UIFeedbackPattern feedbackPattern];
  [v3 _setCategory:0x1EFB4AA30];
  clickUpFeedback = [(_UIClickFeedbackGeneratorConfiguration *)self clickUpFeedback];

  if (clickUpFeedback)
  {
    clickUpFeedback2 = [(_UIClickFeedbackGeneratorConfiguration *)self clickUpFeedback];
    [v3 addFeedback:clickUpFeedback2 atTime:0.0];
  }

  clickUpAudioFeedback = [(_UIClickFeedbackGeneratorConfiguration *)self clickUpAudioFeedback];

  if (clickUpAudioFeedback)
  {
    clickUpAudioFeedback2 = [(_UIClickFeedbackGeneratorConfiguration *)self clickUpAudioFeedback];
    [v3 addFeedback:clickUpAudioFeedback2 atTime:0.0];
  }

  return v3;
}

- (id)feedbackKeyPaths
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = _UIClickFeedbackGeneratorConfiguration;
  feedbackKeyPaths = [(_UIFeedbackGeneratorUserInteractionDrivenConfiguration *)&v8 feedbackKeyPaths];
  v3 = NSStringFromSelector(sel_clickDownPattern);
  v9[0] = v3;
  v4 = NSStringFromSelector(sel_clickUpPattern);
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [feedbackKeyPaths arrayByAddingObjectsFromArray:v5];

  return v6;
}

- (void)setclickDownFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  clickDownFeedback = self->_clickDownFeedback;
  self->_clickDownFeedback = feedbackCopy;
}

- (_UIFeedbackDiscretePlayable)clickDownFeedback
{
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  clickDownFeedback = self->_clickDownFeedback;

  return clickDownFeedback;
}

- (void)setClickDownAudioFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  clickDownAudioFeedback = self->_clickDownAudioFeedback;
  self->_clickDownAudioFeedback = feedbackCopy;
}

- (_UIFeedbackDiscretePlayable)clickDownAudioFeedback
{
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  clickDownAudioFeedback = self->_clickDownAudioFeedback;

  return clickDownAudioFeedback;
}

- (void)setClickUpFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  clickUpFeedback = self->_clickUpFeedback;
  self->_clickUpFeedback = feedbackCopy;
}

- (_UIFeedbackDiscretePlayable)clickUpFeedback
{
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  clickUpFeedback = self->_clickUpFeedback;

  return clickUpFeedback;
}

- (void)setClickUpAudioFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  clickUpAudioFeedback = self->_clickUpAudioFeedback;
  self->_clickUpAudioFeedback = feedbackCopy;
}

- (_UIFeedbackDiscretePlayable)clickUpAudioFeedback
{
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  clickUpAudioFeedback = self->_clickUpAudioFeedback;

  return clickUpAudioFeedback;
}

@end