@interface _UIEdgeFeedbackGeneratorConfiguration
+ (id)_zoomConfiguration;
+ (id)sliderConfiguration;
+ (id)swipePresentationConfiguration;
- (_UIFeedbackContinuousPlayable)userInteractingBeyondEdgeFeedback;
- (_UIFeedbackDiscretePlayable)animatingMaximumExtentFeedback;
- (_UIFeedbackDiscretePlayable)animatingThresholdFeedback;
- (_UIFeedbackDiscretePlayable)userInteractingReleaseFeedback;
- (_UIFeedbackDiscretePlayable)userInteractingThresholdFeedback;
- (id)_alternateFeedback:(id)feedback forDevice:(int64_t)device senderID:(unint64_t)d;
- (id)animatingMaximumExtentFeedbackUpdateBlock;
- (id)animatingThresholdFeedbackUpdateBlock;
- (id)copyWithZone:(_NSZone *)zone;
- (id)feedbackKeyPaths;
- (id)hidFeedbackPatternNameKeyPaths;
- (id)userInteractingBeyondEdgeFeedbackUpdateBlock;
- (id)userInteractingReleaseFeedbackUpdateBlock;
- (id)userInteractingThresholdFeedbackUpdateBlock;
- (void)setAnimatingMaximumExtentFeedback:(id)feedback;
- (void)setAnimatingMaximumExtentFeedbackUpdateBlock:(id)block;
- (void)setAnimatingThresholdFeedback:(id)feedback;
- (void)setAnimatingThresholdFeedbackUpdateBlock:(id)block;
- (void)setUserInteractingBeyondEdgeFeedback:(id)feedback;
- (void)setUserInteractingBeyondEdgeFeedbackUpdateBlock:(id)block;
- (void)setUserInteractingReleaseFeedback:(id)feedback;
- (void)setUserInteractingReleaseFeedbackUpdateBlock:(id)block;
- (void)setUserInteractingThresholdFeedback:(id)feedback;
- (void)setUserInteractingThresholdFeedbackUpdateBlock:(id)block;
@end

@implementation _UIEdgeFeedbackGeneratorConfiguration

+ (id)_zoomConfiguration
{
  v2 = [self _configurationWithKey:@"zoom" preparationBlock:&__block_literal_global_174_0];
  [v2 setRequiredPeripheralSupportLevel:1];

  return v2;
}

+ (id)sliderConfiguration
{
  v2 = [self _configurationWithKey:@"slider" preparationBlock:&__block_literal_global_206];
  [v2 _setDefaultAxis:1];
  [v2 setMinDistanceFromEdge:20.0];
  [v2 setRequiredPeripheralSupportLevel:1];

  return v2;
}

+ (id)swipePresentationConfiguration
{
  v2 = [self _configurationWithKey:@"swipePresentation" preparationBlock:&__block_literal_global_165];
  [v2 _setDefaultAxis:2];
  [v2 setMinDistanceFromEdge:100.0];

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v16.receiver = self;
  v16.super_class = _UIEdgeFeedbackGeneratorConfiguration;
  v4 = [(_UIFeedbackGeneratorConfiguration *)&v16 copyWithZone:zone];
  v5 = [self->_userInteractingThresholdFeedbackUpdateBlock copy];
  v6 = v4[15];
  v4[15] = v5;

  v7 = [self->_userInteractingBeyondEdgeFeedbackUpdateBlock copy];
  v8 = v4[17];
  v4[17] = v7;

  v9 = [self->_userInteractingReleaseFeedbackUpdateBlock copy];
  v10 = v4[19];
  v4[19] = v9;

  v11 = [self->_animatingThresholdFeedbackUpdateBlock copy];
  v12 = v4[21];
  v4[21] = v11;

  v13 = [self->_animatingMaximumExtentFeedbackUpdateBlock copy];
  v14 = v4[23];
  v4[23] = v13;

  return v4;
}

- (id)feedbackKeyPaths
{
  v12[5] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = _UIEdgeFeedbackGeneratorConfiguration;
  feedbackKeyPaths = [(_UIFeedbackGeneratorUserInteractionDrivenConfiguration *)&v11 feedbackKeyPaths];
  v3 = NSStringFromSelector(sel_userInteractingThresholdFeedback);
  v12[0] = v3;
  v4 = NSStringFromSelector(sel_userInteractingBeyondEdgeFeedback);
  v12[1] = v4;
  v5 = NSStringFromSelector(sel_userInteractingReleaseFeedback);
  v12[2] = v5;
  v6 = NSStringFromSelector(sel_animatingThresholdFeedback);
  v12[3] = v6;
  v7 = NSStringFromSelector(sel_animatingMaximumExtentFeedback);
  v12[4] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:5];
  v9 = [feedbackKeyPaths arrayByAddingObjectsFromArray:v8];

  return v9;
}

- (id)hidFeedbackPatternNameKeyPaths
{
  v6.receiver = self;
  v6.super_class = _UIEdgeFeedbackGeneratorConfiguration;
  hidFeedbackPatternNameKeyPaths = [(_UIFeedbackGeneratorConfiguration *)&v6 hidFeedbackPatternNameKeyPaths];
  v3 = NSStringFromSelector(sel_hidFeedbackPatternName);
  v4 = [hidFeedbackPatternNameKeyPaths arrayByAddingObject:v3];

  return v4;
}

- (id)_alternateFeedback:(id)feedback forDevice:(int64_t)device senderID:(unint64_t)d
{
  feedbackCopy = feedback;
  if (feedbackCopy && ([(_UIEdgeFeedbackGeneratorConfiguration *)self hidFeedbackPatternName], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    v11 = [_UIFeedbackBackBoardHIDPattern feedbackPatternWithName:v9 deviceType:device senderID:d];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = _UIEdgeFeedbackGeneratorConfiguration;
    v11 = [(_UIFeedbackGeneratorConfiguration *)&v13 _alternateFeedback:feedbackCopy forDevice:device senderID:d];
  }

  return v11;
}

- (void)setUserInteractingThresholdFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  userInteractingThresholdFeedback = self->_userInteractingThresholdFeedback;
  self->_userInteractingThresholdFeedback = feedbackCopy;
}

- (_UIFeedbackDiscretePlayable)userInteractingThresholdFeedback
{
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  userInteractingThresholdFeedback = self->_userInteractingThresholdFeedback;

  return userInteractingThresholdFeedback;
}

- (void)setUserInteractingThresholdFeedbackUpdateBlock:(id)block
{
  blockCopy = block;
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  v5 = _Block_copy(blockCopy);

  userInteractingThresholdFeedbackUpdateBlock = self->_userInteractingThresholdFeedbackUpdateBlock;
  self->_userInteractingThresholdFeedbackUpdateBlock = v5;
}

- (id)userInteractingThresholdFeedbackUpdateBlock
{
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  v3 = _Block_copy(self->_userInteractingThresholdFeedbackUpdateBlock);

  return v3;
}

- (void)setUserInteractingBeyondEdgeFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  userInteractingBeyondEdgeFeedback = self->_userInteractingBeyondEdgeFeedback;
  self->_userInteractingBeyondEdgeFeedback = feedbackCopy;
}

- (_UIFeedbackContinuousPlayable)userInteractingBeyondEdgeFeedback
{
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  userInteractingBeyondEdgeFeedback = self->_userInteractingBeyondEdgeFeedback;

  return userInteractingBeyondEdgeFeedback;
}

- (void)setUserInteractingBeyondEdgeFeedbackUpdateBlock:(id)block
{
  blockCopy = block;
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  v5 = _Block_copy(blockCopy);

  userInteractingBeyondEdgeFeedbackUpdateBlock = self->_userInteractingBeyondEdgeFeedbackUpdateBlock;
  self->_userInteractingBeyondEdgeFeedbackUpdateBlock = v5;
}

- (id)userInteractingBeyondEdgeFeedbackUpdateBlock
{
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  v3 = _Block_copy(self->_userInteractingBeyondEdgeFeedbackUpdateBlock);

  return v3;
}

- (void)setUserInteractingReleaseFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  userInteractingReleaseFeedback = self->_userInteractingReleaseFeedback;
  self->_userInteractingReleaseFeedback = feedbackCopy;
}

- (_UIFeedbackDiscretePlayable)userInteractingReleaseFeedback
{
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  userInteractingReleaseFeedback = self->_userInteractingReleaseFeedback;

  return userInteractingReleaseFeedback;
}

- (void)setUserInteractingReleaseFeedbackUpdateBlock:(id)block
{
  blockCopy = block;
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  v5 = _Block_copy(blockCopy);

  userInteractingReleaseFeedbackUpdateBlock = self->_userInteractingReleaseFeedbackUpdateBlock;
  self->_userInteractingReleaseFeedbackUpdateBlock = v5;
}

- (id)userInteractingReleaseFeedbackUpdateBlock
{
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  v3 = _Block_copy(self->_userInteractingReleaseFeedbackUpdateBlock);

  return v3;
}

- (void)setAnimatingThresholdFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  animatingThresholdFeedback = self->_animatingThresholdFeedback;
  self->_animatingThresholdFeedback = feedbackCopy;
}

- (_UIFeedbackDiscretePlayable)animatingThresholdFeedback
{
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  animatingThresholdFeedback = self->_animatingThresholdFeedback;

  return animatingThresholdFeedback;
}

- (void)setAnimatingThresholdFeedbackUpdateBlock:(id)block
{
  blockCopy = block;
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  v5 = _Block_copy(blockCopy);

  animatingThresholdFeedbackUpdateBlock = self->_animatingThresholdFeedbackUpdateBlock;
  self->_animatingThresholdFeedbackUpdateBlock = v5;
}

- (id)animatingThresholdFeedbackUpdateBlock
{
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  v3 = _Block_copy(self->_animatingThresholdFeedbackUpdateBlock);

  return v3;
}

- (void)setAnimatingMaximumExtentFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  animatingMaximumExtentFeedback = self->_animatingMaximumExtentFeedback;
  self->_animatingMaximumExtentFeedback = feedbackCopy;
}

- (_UIFeedbackDiscretePlayable)animatingMaximumExtentFeedback
{
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  animatingMaximumExtentFeedback = self->_animatingMaximumExtentFeedback;

  return animatingMaximumExtentFeedback;
}

- (void)setAnimatingMaximumExtentFeedbackUpdateBlock:(id)block
{
  blockCopy = block;
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  v5 = _Block_copy(blockCopy);

  animatingMaximumExtentFeedbackUpdateBlock = self->_animatingMaximumExtentFeedbackUpdateBlock;
  self->_animatingMaximumExtentFeedbackUpdateBlock = v5;
}

- (id)animatingMaximumExtentFeedbackUpdateBlock
{
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  v3 = _Block_copy(self->_animatingMaximumExtentFeedbackUpdateBlock);

  return v3;
}

@end