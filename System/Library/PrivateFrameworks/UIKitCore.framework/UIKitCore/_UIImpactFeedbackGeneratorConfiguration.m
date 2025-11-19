@interface _UIImpactFeedbackGeneratorConfiguration
+ (id)refreshConfiguration;
- (BOOL)isEqual:(id)a3;
- (_UIFeedbackDiscretePlayable)feedback;
- (id)_alternateFeedback:(id)a3 forDevice:(int64_t)a4 senderID:(unint64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)feedbackKeyPaths;
- (id)feedbackUpdateBlock;
- (id)hidFeedbackPatternNameKeyPaths;
- (void)setFeedback:(id)a3;
- (void)setFeedbackUpdateBlock:(id)a3;
@end

@implementation _UIImpactFeedbackGeneratorConfiguration

+ (id)refreshConfiguration
{
  v2 = [a1 _configurationWithKey:@"refresh" requiredSupportLevel:2 preparationBlock:&__block_literal_global_76_1];
  [v2 setRequiredPeripheralSupportLevel:1];

  return v2;
}

- (_UIFeedbackDiscretePlayable)feedback
{
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  feedback = self->_feedback;

  return feedback;
}

- (id)feedbackKeyPaths
{
  v6.receiver = self;
  v6.super_class = _UIImpactFeedbackGeneratorConfiguration;
  v2 = [(_UIFeedbackGeneratorConfiguration *)&v6 feedbackKeyPaths];
  v3 = NSStringFromSelector(sel_feedback);
  v4 = [v2 arrayByAddingObject:v3];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = _UIImpactFeedbackGeneratorConfiguration;
  v4 = [(_UIFeedbackGeneratorConfiguration *)&v8 copyWithZone:a3];
  v5 = [self->_feedbackUpdateBlock copy];
  v6 = v4[12];
  v4[12] = v5;

  v4[13] = *&self->_minimumInterval;
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _UIImpactFeedbackGeneratorConfiguration;
  if ([(_UIFeedbackGeneratorConfiguration *)&v7 isEqual:v4])
  {
    v5 = self->_minimumInterval == v4[13];
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
  v6.super_class = _UIImpactFeedbackGeneratorConfiguration;
  v2 = [(_UIFeedbackGeneratorConfiguration *)&v6 hidFeedbackPatternNameKeyPaths];
  v3 = NSStringFromSelector(sel_hidFeedbackPatternName);
  v4 = [v2 arrayByAddingObject:v3];

  return v4;
}

- (id)_alternateFeedback:(id)a3 forDevice:(int64_t)a4 senderID:(unint64_t)a5
{
  v8 = a3;
  v9 = [(_UIImpactFeedbackGeneratorConfiguration *)self hidFeedbackPatternName];
  if (v9)
  {
    v10 = [_UIFeedbackBackBoardHIDPattern feedbackPatternWithName:v9 deviceType:a4 senderID:a5];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = _UIImpactFeedbackGeneratorConfiguration;
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

- (void)setFeedbackUpdateBlock:(id)a3
{
  v4 = a3;
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  v5 = _Block_copy(v4);

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