@interface _UISelectionFeedbackGeneratorConfiguration
- (BOOL)isEqual:(id)equal;
- (_UIFeedbackDiscretePlayable)feedback;
- (id)_alternateFeedback:(id)feedback forDevice:(int64_t)device senderID:(unint64_t)d;
- (id)copyWithZone:(_NSZone *)zone;
- (id)feedbackKeyPaths;
- (id)hidFeedbackPatternNameKeyPaths;
- (void)setFeedback:(id)feedback;
@end

@implementation _UISelectionFeedbackGeneratorConfiguration

- (_UIFeedbackDiscretePlayable)feedback
{
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  feedback = self->_feedback;

  return feedback;
}

- (id)feedbackKeyPaths
{
  v6.receiver = self;
  v6.super_class = _UISelectionFeedbackGeneratorConfiguration;
  feedbackKeyPaths = [(_UIFeedbackGeneratorUserInteractionDrivenConfiguration *)&v6 feedbackKeyPaths];
  v3 = NSStringFromSelector(sel_feedback);
  v4 = [feedbackKeyPaths arrayByAddingObject:v3];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = _UISelectionFeedbackGeneratorConfiguration;
  result = [(_UIFeedbackGeneratorConfiguration *)&v5 copyWithZone:zone];
  *(result + 15) = *&self->_minimumInterval;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = _UISelectionFeedbackGeneratorConfiguration;
  if ([(_UIFeedbackGeneratorConfiguration *)&v7 isEqual:equalCopy])
  {
    v5 = self->_minimumInterval == equalCopy[15];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)hidFeedbackPatternNameKeyPaths
{
  v6.receiver = self;
  v6.super_class = _UISelectionFeedbackGeneratorConfiguration;
  hidFeedbackPatternNameKeyPaths = [(_UIFeedbackGeneratorConfiguration *)&v6 hidFeedbackPatternNameKeyPaths];
  v3 = NSStringFromSelector(sel_hidFeedbackPatternName);
  v4 = [hidFeedbackPatternNameKeyPaths arrayByAddingObject:v3];

  return v4;
}

- (id)_alternateFeedback:(id)feedback forDevice:(int64_t)device senderID:(unint64_t)d
{
  feedbackCopy = feedback;
  hidFeedbackPatternName = [(_UISelectionFeedbackGeneratorConfiguration *)self hidFeedbackPatternName];
  if (hidFeedbackPatternName)
  {
    v10 = [_UIFeedbackBackBoardHIDPattern feedbackPatternWithName:hidFeedbackPatternName deviceType:device senderID:d];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = _UISelectionFeedbackGeneratorConfiguration;
    v10 = [(_UIFeedbackGeneratorConfiguration *)&v13 _alternateFeedback:feedbackCopy forDevice:device senderID:d];
  }

  v11 = v10;

  return v11;
}

- (void)setFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  feedback = self->_feedback;
  self->_feedback = feedbackCopy;
}

@end