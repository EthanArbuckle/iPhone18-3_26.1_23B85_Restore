@interface _UIFluidSliderFeedbackConfiguration
+ (id)defaultConfiguration;
- (_UIFeedbackDiscretePlayable)detentFeedback;
- (_UIFeedbackDiscretePlayable)maxEdgeFeedback;
- (_UIFeedbackDiscretePlayable)minEdgeFeedback;
- (_UIFeedbackDiscretePlayable)selectionFeedback;
- (id)_alternateFeedback:(id)feedback forDevice:(int64_t)device senderID:(unint64_t)d;
- (id)hidFeedbackPatternNameKeyPaths;
- (void)setdetentFeedback:(id)feedback;
- (void)setmaxEdgeFeedback:(id)feedback;
- (void)setminEdgeFeedback:(id)feedback;
- (void)setselectionFeedback:(id)feedback;
@end

@implementation _UIFluidSliderFeedbackConfiguration

+ (id)defaultConfiguration
{
  v2 = [self _configurationWithKey:@"default" preparationBlock:&__block_literal_global_551];
  [v2 setRequiredPeripheralSupportLevel:1];

  return v2;
}

- (id)hidFeedbackPatternNameKeyPaths
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = _UIFluidSliderFeedbackConfiguration;
  hidFeedbackPatternNameKeyPaths = [(_UIFeedbackGeneratorConfiguration *)&v8 hidFeedbackPatternNameKeyPaths];
  v3 = NSStringFromSelector(sel_hidEdgeFeedbackPatternName);
  v9[0] = v3;
  v4 = NSStringFromSelector(sel_hidDetentFeedbackPatternName);
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [hidFeedbackPatternNameKeyPaths arrayByAddingObjectsFromArray:v5];

  return v6;
}

- (id)_alternateFeedback:(id)feedback forDevice:(int64_t)device senderID:(unint64_t)d
{
  feedbackCopy = feedback;
  detentFeedback = [(_UIFluidSliderFeedbackConfiguration *)self detentFeedback];
  if ([feedbackCopy isEqual:detentFeedback])
  {

LABEL_4:
    hidDetentFeedbackPatternName = [(_UIFluidSliderFeedbackConfiguration *)self hidDetentFeedbackPatternName];
    goto LABEL_6;
  }

  selectionFeedback = [(_UIFluidSliderFeedbackConfiguration *)self selectionFeedback];
  v11 = [feedbackCopy isEqual:selectionFeedback];

  if (v11)
  {
    goto LABEL_4;
  }

  hidDetentFeedbackPatternName = [(_UIFluidSliderFeedbackConfiguration *)self hidEdgeFeedbackPatternName];
LABEL_6:
  v13 = hidDetentFeedbackPatternName;
  v14 = [_UIFeedbackBackBoardHIDPattern feedbackPatternWithName:hidDetentFeedbackPatternName deviceType:device senderID:d];

  return v14;
}

- (void)setmaxEdgeFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  maxEdgeFeedback = self->_maxEdgeFeedback;
  self->_maxEdgeFeedback = feedbackCopy;
}

- (_UIFeedbackDiscretePlayable)maxEdgeFeedback
{
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  maxEdgeFeedback = self->_maxEdgeFeedback;

  return maxEdgeFeedback;
}

- (void)setdetentFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  detentFeedback = self->_detentFeedback;
  self->_detentFeedback = feedbackCopy;
}

- (_UIFeedbackDiscretePlayable)detentFeedback
{
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  detentFeedback = self->_detentFeedback;

  return detentFeedback;
}

- (void)setselectionFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  selectionFeedback = self->_selectionFeedback;
  self->_selectionFeedback = feedbackCopy;
}

- (_UIFeedbackDiscretePlayable)selectionFeedback
{
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  selectionFeedback = self->_selectionFeedback;

  return selectionFeedback;
}

- (void)setminEdgeFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  minEdgeFeedback = self->_minEdgeFeedback;
  self->_minEdgeFeedback = feedbackCopy;
}

- (_UIFeedbackDiscretePlayable)minEdgeFeedback
{
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  minEdgeFeedback = self->_minEdgeFeedback;

  return minEdgeFeedback;
}

@end