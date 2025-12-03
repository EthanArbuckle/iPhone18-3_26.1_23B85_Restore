@interface _UIModulationFeedbackGeneratorConfiguration
- (_UIFeedbackContinuousPlayable)feedback;
- (id)copyWithZone:(_NSZone *)zone;
- (id)feedbackKeyPaths;
- (id)feedbackUpdateBlock;
- (void)setFeedback:(id)feedback;
- (void)setFeedbackUpdateBlock:(id)block;
@end

@implementation _UIModulationFeedbackGeneratorConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = _UIModulationFeedbackGeneratorConfiguration;
  v4 = [(_UIFeedbackGeneratorConfiguration *)&v8 copyWithZone:zone];
  v5 = [self->_feedbackUpdateBlock copy];
  v6 = v4[12];
  v4[12] = v5;

  return v4;
}

- (id)feedbackKeyPaths
{
  v6.receiver = self;
  v6.super_class = _UIModulationFeedbackGeneratorConfiguration;
  feedbackKeyPaths = [(_UIFeedbackGeneratorConfiguration *)&v6 feedbackKeyPaths];
  v3 = NSStringFromSelector(sel_feedback);
  v4 = [feedbackKeyPaths arrayByAddingObject:v3];

  return v4;
}

- (void)setFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  feedback = self->_feedback;
  self->_feedback = feedbackCopy;
}

- (_UIFeedbackContinuousPlayable)feedback
{
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  feedback = self->_feedback;

  return feedback;
}

- (void)setFeedbackUpdateBlock:(id)block
{
  blockCopy = block;
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  v5 = _Block_copy(blockCopy);

  feedbackUpdateBlock = self->_feedbackUpdateBlock;
  self->_feedbackUpdateBlock = v5;
}

- (id)feedbackUpdateBlock
{
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  v3 = _Block_copy(self->_feedbackUpdateBlock);

  return v3;
}

@end