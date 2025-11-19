@interface _UIDragFeedbackGeneratorConfiguration
- (BOOL)isEqual:(id)a3;
- (_UIFeedbackContinuousPlayable)interactionProgressingFeedback;
- (_UIFeedbackDiscretePlayable)interactionUpdatedFeedback;
- (_UIFeedbackDiscretePlayable)targetUpdatedFeedback;
- (id)_alternateFeedback:(id)a3 forDevice:(int64_t)a4 senderID:(unint64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)feedbackKeyPaths;
- (id)hidFeedbackPatternNameKeyPaths;
- (void)setInteractionProgressingFeedback:(id)a3;
- (void)setInteractionUpdatedFeedback:(id)a3;
- (void)setTargetUpdatedFeedback:(id)a3;
@end

@implementation _UIDragFeedbackGeneratorConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = _UIDragFeedbackGeneratorConfiguration;
  result = [(_UIFeedbackGeneratorConfiguration *)&v5 copyWithZone:a3];
  *(result + 17) = *&self->_progressingFeedbackDelay;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _UIDragFeedbackGeneratorConfiguration;
  if ([(_UIFeedbackGeneratorConfiguration *)&v7 isEqual:v4])
  {
    v5 = self->_progressingFeedbackDelay == v4[17];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)feedbackKeyPaths
{
  v10[3] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = _UIDragFeedbackGeneratorConfiguration;
  v2 = [(_UIFeedbackGeneratorUserInteractionDrivenConfiguration *)&v9 feedbackKeyPaths];
  v3 = NSStringFromSelector(sel_interactionProgressingFeedback);
  v10[0] = v3;
  v4 = NSStringFromSelector(sel_interactionUpdatedFeedback);
  v10[1] = v4;
  v5 = NSStringFromSelector(sel_targetUpdatedFeedback);
  v10[2] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:3];
  v7 = [v2 arrayByAddingObjectsFromArray:v6];

  return v7;
}

- (id)hidFeedbackPatternNameKeyPaths
{
  v6.receiver = self;
  v6.super_class = _UIDragFeedbackGeneratorConfiguration;
  v2 = [(_UIFeedbackGeneratorConfiguration *)&v6 hidFeedbackPatternNameKeyPaths];
  v3 = NSStringFromSelector(sel_hidTargetUpdatedFeedbackPatternName);
  v4 = [v2 arrayByAddingObject:v3];

  return v4;
}

- (id)_alternateFeedback:(id)a3 forDevice:(int64_t)a4 senderID:(unint64_t)a5
{
  v8 = a3;
  v9 = [(_UIDragFeedbackGeneratorConfiguration *)self targetUpdatedFeedback];
  v10 = [v8 isEqual:v9];

  if (v10)
  {
    v11 = [(_UIDragFeedbackGeneratorConfiguration *)self hidTargetUpdatedFeedbackPatternName];
    v12 = [_UIFeedbackBackBoardHIDPattern feedbackPatternWithName:v11 deviceType:a4 senderID:a5];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = _UIDragFeedbackGeneratorConfiguration;
    v12 = [(_UIFeedbackGeneratorConfiguration *)&v14 _alternateFeedback:v8 forDevice:a4 senderID:a5];
  }

  return v12;
}

- (void)setInteractionProgressingFeedback:(id)a3
{
  v4 = a3;
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  interactionProgressingFeedback = self->_interactionProgressingFeedback;
  self->_interactionProgressingFeedback = v4;
}

- (_UIFeedbackContinuousPlayable)interactionProgressingFeedback
{
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  interactionProgressingFeedback = self->_interactionProgressingFeedback;

  return interactionProgressingFeedback;
}

- (void)setInteractionUpdatedFeedback:(id)a3
{
  v4 = a3;
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  interactionUpdatedFeedback = self->_interactionUpdatedFeedback;
  self->_interactionUpdatedFeedback = v4;
}

- (_UIFeedbackDiscretePlayable)interactionUpdatedFeedback
{
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  interactionUpdatedFeedback = self->_interactionUpdatedFeedback;

  return interactionUpdatedFeedback;
}

- (void)setTargetUpdatedFeedback:(id)a3
{
  v4 = a3;
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  targetUpdatedFeedback = self->_targetUpdatedFeedback;
  self->_targetUpdatedFeedback = v4;
}

- (_UIFeedbackDiscretePlayable)targetUpdatedFeedback
{
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  targetUpdatedFeedback = self->_targetUpdatedFeedback;

  return targetUpdatedFeedback;
}

@end