@interface _UIDragFeedbackGeneratorConfiguration
- (BOOL)isEqual:(id)equal;
- (_UIFeedbackContinuousPlayable)interactionProgressingFeedback;
- (_UIFeedbackDiscretePlayable)interactionUpdatedFeedback;
- (_UIFeedbackDiscretePlayable)targetUpdatedFeedback;
- (id)_alternateFeedback:(id)feedback forDevice:(int64_t)device senderID:(unint64_t)d;
- (id)copyWithZone:(_NSZone *)zone;
- (id)feedbackKeyPaths;
- (id)hidFeedbackPatternNameKeyPaths;
- (void)setInteractionProgressingFeedback:(id)feedback;
- (void)setInteractionUpdatedFeedback:(id)feedback;
- (void)setTargetUpdatedFeedback:(id)feedback;
@end

@implementation _UIDragFeedbackGeneratorConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = _UIDragFeedbackGeneratorConfiguration;
  result = [(_UIFeedbackGeneratorConfiguration *)&v5 copyWithZone:zone];
  *(result + 17) = *&self->_progressingFeedbackDelay;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = _UIDragFeedbackGeneratorConfiguration;
  if ([(_UIFeedbackGeneratorConfiguration *)&v7 isEqual:equalCopy])
  {
    v5 = self->_progressingFeedbackDelay == equalCopy[17];
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
  feedbackKeyPaths = [(_UIFeedbackGeneratorUserInteractionDrivenConfiguration *)&v9 feedbackKeyPaths];
  v3 = NSStringFromSelector(sel_interactionProgressingFeedback);
  v10[0] = v3;
  v4 = NSStringFromSelector(sel_interactionUpdatedFeedback);
  v10[1] = v4;
  v5 = NSStringFromSelector(sel_targetUpdatedFeedback);
  v10[2] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:3];
  v7 = [feedbackKeyPaths arrayByAddingObjectsFromArray:v6];

  return v7;
}

- (id)hidFeedbackPatternNameKeyPaths
{
  v6.receiver = self;
  v6.super_class = _UIDragFeedbackGeneratorConfiguration;
  hidFeedbackPatternNameKeyPaths = [(_UIFeedbackGeneratorConfiguration *)&v6 hidFeedbackPatternNameKeyPaths];
  v3 = NSStringFromSelector(sel_hidTargetUpdatedFeedbackPatternName);
  v4 = [hidFeedbackPatternNameKeyPaths arrayByAddingObject:v3];

  return v4;
}

- (id)_alternateFeedback:(id)feedback forDevice:(int64_t)device senderID:(unint64_t)d
{
  feedbackCopy = feedback;
  targetUpdatedFeedback = [(_UIDragFeedbackGeneratorConfiguration *)self targetUpdatedFeedback];
  v10 = [feedbackCopy isEqual:targetUpdatedFeedback];

  if (v10)
  {
    hidTargetUpdatedFeedbackPatternName = [(_UIDragFeedbackGeneratorConfiguration *)self hidTargetUpdatedFeedbackPatternName];
    v12 = [_UIFeedbackBackBoardHIDPattern feedbackPatternWithName:hidTargetUpdatedFeedbackPatternName deviceType:device senderID:d];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = _UIDragFeedbackGeneratorConfiguration;
    v12 = [(_UIFeedbackGeneratorConfiguration *)&v14 _alternateFeedback:feedbackCopy forDevice:device senderID:d];
  }

  return v12;
}

- (void)setInteractionProgressingFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  interactionProgressingFeedback = self->_interactionProgressingFeedback;
  self->_interactionProgressingFeedback = feedbackCopy;
}

- (_UIFeedbackContinuousPlayable)interactionProgressingFeedback
{
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  interactionProgressingFeedback = self->_interactionProgressingFeedback;

  return interactionProgressingFeedback;
}

- (void)setInteractionUpdatedFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  interactionUpdatedFeedback = self->_interactionUpdatedFeedback;
  self->_interactionUpdatedFeedback = feedbackCopy;
}

- (_UIFeedbackDiscretePlayable)interactionUpdatedFeedback
{
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  interactionUpdatedFeedback = self->_interactionUpdatedFeedback;

  return interactionUpdatedFeedback;
}

- (void)setTargetUpdatedFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  targetUpdatedFeedback = self->_targetUpdatedFeedback;
  self->_targetUpdatedFeedback = feedbackCopy;
}

- (_UIFeedbackDiscretePlayable)targetUpdatedFeedback
{
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  targetUpdatedFeedback = self->_targetUpdatedFeedback;

  return targetUpdatedFeedback;
}

@end