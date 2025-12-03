@interface _UIImpactFeedbackGeneratorConfiguration
+ (id)refreshConfiguration;
- (BOOL)isEqual:(id)equal;
- (_UIFeedbackDiscretePlayable)feedback;
- (id)_alternateFeedback:(id)feedback forDevice:(int64_t)device senderID:(unint64_t)d;
- (id)copyWithZone:(_NSZone *)zone;
- (id)feedbackKeyPaths;
- (id)feedbackUpdateBlock;
- (id)hidFeedbackPatternNameKeyPaths;
- (void)setFeedback:(id)feedback;
- (void)setFeedbackUpdateBlock:(id)block;
@end

@implementation _UIImpactFeedbackGeneratorConfiguration

+ (id)refreshConfiguration
{
  v2 = [self _configurationWithKey:@"refresh" requiredSupportLevel:2 preparationBlock:&__block_literal_global_76_1];
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
  feedbackKeyPaths = [(_UIFeedbackGeneratorConfiguration *)&v6 feedbackKeyPaths];
  v3 = NSStringFromSelector(sel_feedback);
  v4 = [feedbackKeyPaths arrayByAddingObject:v3];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = _UIImpactFeedbackGeneratorConfiguration;
  v4 = [(_UIFeedbackGeneratorConfiguration *)&v8 copyWithZone:zone];
  v5 = [self->_feedbackUpdateBlock copy];
  v6 = v4[12];
  v4[12] = v5;

  v4[13] = *&self->_minimumInterval;
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = _UIImpactFeedbackGeneratorConfiguration;
  if ([(_UIFeedbackGeneratorConfiguration *)&v7 isEqual:equalCopy])
  {
    v5 = self->_minimumInterval == equalCopy[13];
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
  hidFeedbackPatternNameKeyPaths = [(_UIFeedbackGeneratorConfiguration *)&v6 hidFeedbackPatternNameKeyPaths];
  v3 = NSStringFromSelector(sel_hidFeedbackPatternName);
  v4 = [hidFeedbackPatternNameKeyPaths arrayByAddingObject:v3];

  return v4;
}

- (id)_alternateFeedback:(id)feedback forDevice:(int64_t)device senderID:(unint64_t)d
{
  feedbackCopy = feedback;
  hidFeedbackPatternName = [(_UIImpactFeedbackGeneratorConfiguration *)self hidFeedbackPatternName];
  if (hidFeedbackPatternName)
  {
    v10 = [_UIFeedbackBackBoardHIDPattern feedbackPatternWithName:hidFeedbackPatternName deviceType:device senderID:d];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = _UIImpactFeedbackGeneratorConfiguration;
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