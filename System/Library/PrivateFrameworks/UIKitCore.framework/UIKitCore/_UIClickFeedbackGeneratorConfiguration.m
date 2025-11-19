@interface _UIClickFeedbackGeneratorConfiguration
- (_UIFeedbackDiscretePlayable)clickDownAudioFeedback;
- (_UIFeedbackDiscretePlayable)clickDownFeedback;
- (_UIFeedbackDiscretePlayable)clickDownPattern;
- (_UIFeedbackDiscretePlayable)clickUpAudioFeedback;
- (_UIFeedbackDiscretePlayable)clickUpFeedback;
- (_UIFeedbackDiscretePlayable)clickUpPattern;
- (id)feedbackKeyPaths;
- (void)setClickDownAudioFeedback:(id)a3;
- (void)setClickUpAudioFeedback:(id)a3;
- (void)setClickUpFeedback:(id)a3;
- (void)setclickDownFeedback:(id)a3;
@end

@implementation _UIClickFeedbackGeneratorConfiguration

- (_UIFeedbackDiscretePlayable)clickDownPattern
{
  v3 = +[_UIFeedbackPattern feedbackPattern];
  [v3 _setCategory:0x1EFB4AA30];
  v4 = [(_UIClickFeedbackGeneratorConfiguration *)self clickDownFeedback];

  if (v4)
  {
    v5 = [(_UIClickFeedbackGeneratorConfiguration *)self clickDownFeedback];
    [v3 addFeedback:v5 atTime:0.0];
  }

  v6 = [(_UIClickFeedbackGeneratorConfiguration *)self clickDownAudioFeedback];

  if (v6)
  {
    v7 = [(_UIClickFeedbackGeneratorConfiguration *)self clickDownAudioFeedback];
    [v3 addFeedback:v7 atTime:0.0];
  }

  return v3;
}

- (_UIFeedbackDiscretePlayable)clickUpPattern
{
  v3 = +[_UIFeedbackPattern feedbackPattern];
  [v3 _setCategory:0x1EFB4AA30];
  v4 = [(_UIClickFeedbackGeneratorConfiguration *)self clickUpFeedback];

  if (v4)
  {
    v5 = [(_UIClickFeedbackGeneratorConfiguration *)self clickUpFeedback];
    [v3 addFeedback:v5 atTime:0.0];
  }

  v6 = [(_UIClickFeedbackGeneratorConfiguration *)self clickUpAudioFeedback];

  if (v6)
  {
    v7 = [(_UIClickFeedbackGeneratorConfiguration *)self clickUpAudioFeedback];
    [v3 addFeedback:v7 atTime:0.0];
  }

  return v3;
}

- (id)feedbackKeyPaths
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = _UIClickFeedbackGeneratorConfiguration;
  v2 = [(_UIFeedbackGeneratorUserInteractionDrivenConfiguration *)&v8 feedbackKeyPaths];
  v3 = NSStringFromSelector(sel_clickDownPattern);
  v9[0] = v3;
  v4 = NSStringFromSelector(sel_clickUpPattern);
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v2 arrayByAddingObjectsFromArray:v5];

  return v6;
}

- (void)setclickDownFeedback:(id)a3
{
  v4 = a3;
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  clickDownFeedback = self->_clickDownFeedback;
  self->_clickDownFeedback = v4;
}

- (_UIFeedbackDiscretePlayable)clickDownFeedback
{
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  clickDownFeedback = self->_clickDownFeedback;

  return clickDownFeedback;
}

- (void)setClickDownAudioFeedback:(id)a3
{
  v4 = a3;
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  clickDownAudioFeedback = self->_clickDownAudioFeedback;
  self->_clickDownAudioFeedback = v4;
}

- (_UIFeedbackDiscretePlayable)clickDownAudioFeedback
{
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  clickDownAudioFeedback = self->_clickDownAudioFeedback;

  return clickDownAudioFeedback;
}

- (void)setClickUpFeedback:(id)a3
{
  v4 = a3;
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  clickUpFeedback = self->_clickUpFeedback;
  self->_clickUpFeedback = v4;
}

- (_UIFeedbackDiscretePlayable)clickUpFeedback
{
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  clickUpFeedback = self->_clickUpFeedback;

  return clickUpFeedback;
}

- (void)setClickUpAudioFeedback:(id)a3
{
  v4 = a3;
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  clickUpAudioFeedback = self->_clickUpAudioFeedback;
  self->_clickUpAudioFeedback = v4;
}

- (_UIFeedbackDiscretePlayable)clickUpAudioFeedback
{
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  clickUpAudioFeedback = self->_clickUpAudioFeedback;

  return clickUpAudioFeedback;
}

@end