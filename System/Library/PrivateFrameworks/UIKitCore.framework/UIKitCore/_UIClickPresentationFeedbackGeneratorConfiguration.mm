@interface _UIClickPresentationFeedbackGeneratorConfiguration
- (_UIFeedbackDiscretePlayable)draggedPattern;
- (_UIFeedbackDiscretePlayable)previewedPattern;
- (id)_alternateFeedback:(id)feedback forDevice:(int64_t)device senderID:(unint64_t)d;
- (id)feedbackKeyPaths;
- (id)hidFeedbackPatternNameKeyPaths;
@end

@implementation _UIClickPresentationFeedbackGeneratorConfiguration

- (_UIFeedbackDiscretePlayable)previewedPattern
{
  if (qword_1ED4A22B8 != -1)
  {
    dispatch_once(&qword_1ED4A22B8, &__block_literal_global_614);
  }

  v3 = _MergedGlobals_1328;

  return v3;
}

- (_UIFeedbackDiscretePlayable)draggedPattern
{
  if (qword_1ED4A22C8 != -1)
  {
    dispatch_once(&qword_1ED4A22C8, &__block_literal_global_3_14);
  }

  v3 = qword_1ED4A22C0;

  return v3;
}

- (id)_alternateFeedback:(id)feedback forDevice:(int64_t)device senderID:(unint64_t)d
{
  feedbackCopy = feedback;
  previewedPattern = [(_UIClickPresentationFeedbackGeneratorConfiguration *)self previewedPattern];
  v10 = [feedbackCopy isEqual:previewedPattern];

  if (v10)
  {
    [(_UIClickPresentationFeedbackGeneratorConfiguration *)self hidPreviewedPatternName];
  }

  else
  {
    [(_UIClickPresentationFeedbackGeneratorConfiguration *)self hidDraggedPatternName];
  }
  v11 = ;
  v12 = [_UIFeedbackBackBoardHIDPattern feedbackPatternWithName:v11 deviceType:device senderID:d];

  return v12;
}

- (id)feedbackKeyPaths
{
  v10[3] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = _UIClickPresentationFeedbackGeneratorConfiguration;
  feedbackKeyPaths = [(_UIFeedbackGeneratorUserInteractionDrivenConfiguration *)&v9 feedbackKeyPaths];
  v3 = NSStringFromSelector(sel_previewedPattern);
  v10[0] = v3;
  v4 = NSStringFromSelector(sel_poppedPattern);
  v10[1] = v4;
  v5 = NSStringFromSelector(sel_draggedPattern);
  v10[2] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:3];
  v7 = [feedbackKeyPaths arrayByAddingObjectsFromArray:v6];

  return v7;
}

- (id)hidFeedbackPatternNameKeyPaths
{
  v10[3] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = _UIClickPresentationFeedbackGeneratorConfiguration;
  hidFeedbackPatternNameKeyPaths = [(_UIFeedbackGeneratorConfiguration *)&v9 hidFeedbackPatternNameKeyPaths];
  v3 = NSStringFromSelector(sel_hidPreviewedPatternName);
  v10[0] = v3;
  v4 = NSStringFromSelector(sel_hidPoppedPatternName);
  v10[1] = v4;
  v5 = NSStringFromSelector(sel_hidDraggedPatternName);
  v10[2] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:3];
  v7 = [hidFeedbackPatternNameKeyPaths arrayByAddingObjectsFromArray:v6];

  return v7;
}

@end