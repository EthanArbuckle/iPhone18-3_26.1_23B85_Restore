@interface _UISelectionFeedbackGeneratorConfiguration
- (BOOL)isEqual:(id)a3;
- (_UIFeedbackDiscretePlayable)feedback;
- (id)_alternateFeedback:(id)a3 forDevice:(int64_t)a4 senderID:(unint64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)feedbackKeyPaths;
- (id)hidFeedbackPatternNameKeyPaths;
- (void)setFeedback:(id)a3;
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
  v2 = [(_UIFeedbackGeneratorUserInteractionDrivenConfiguration *)&v6 feedbackKeyPaths];
  v3 = NSStringFromSelector(sel_feedback);
  v4 = [v2 arrayByAddingObject:v3];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = _UISelectionFeedbackGeneratorConfiguration;
  result = [(_UIFeedbackGeneratorConfiguration *)&v5 copyWithZone:a3];
  *(result + 15) = *&self->_minimumInterval;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _UISelectionFeedbackGeneratorConfiguration;
  if ([(_UIFeedbackGeneratorConfiguration *)&v7 isEqual:v4])
  {
    v5 = self->_minimumInterval == v4[15];
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
  v2 = [(_UIFeedbackGeneratorConfiguration *)&v6 hidFeedbackPatternNameKeyPaths];
  v3 = NSStringFromSelector(sel_hidFeedbackPatternName);
  v4 = [v2 arrayByAddingObject:v3];

  return v4;
}

- (id)_alternateFeedback:(id)a3 forDevice:(int64_t)a4 senderID:(unint64_t)a5
{
  v8 = a3;
  v9 = [(_UISelectionFeedbackGeneratorConfiguration *)self hidFeedbackPatternName];
  if (v9)
  {
    v10 = [_UIFeedbackBackBoardHIDPattern feedbackPatternWithName:v9 deviceType:a4 senderID:a5];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = _UISelectionFeedbackGeneratorConfiguration;
    v10 = [(_UIFeedbackGeneratorConfiguration *)&v13 _alternateFeedback:v8 forDevice:a4 senderID:a5];
  }

  v11 = v10;

  return v11;
}

- (void)setFeedback:(id)a3
{
  v4 = a3;
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  feedback = self->_feedback;
  self->_feedback = v4;
}

@end