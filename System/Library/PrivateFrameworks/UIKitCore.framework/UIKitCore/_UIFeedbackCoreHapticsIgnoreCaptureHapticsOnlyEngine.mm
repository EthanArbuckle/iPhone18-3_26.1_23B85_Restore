@interface _UIFeedbackCoreHapticsIgnoreCaptureHapticsOnlyEngine
+ (BOOL)_supportsPlayingIndividualFeedback:(id)feedback;
+ (id)sharedEngine;
- (id)_internal_createCoreHapticsEngine;
@end

@implementation _UIFeedbackCoreHapticsIgnoreCaptureHapticsOnlyEngine

+ (id)sharedEngine
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68___UIFeedbackCoreHapticsIgnoreCaptureHapticsOnlyEngine_sharedEngine__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED49A140 != -1)
  {
    dispatch_once(&qword_1ED49A140, block);
  }

  v2 = qword_1ED49A148;

  return v2;
}

+ (BOOL)_supportsPlayingIndividualFeedback:(id)feedback
{
  feedbackCopy = feedback;
  if ([self _supportsPlayingIndividualFeedback:feedbackCopy allowsIgnoreCapture:1])
  {
    v5 = [feedbackCopy _effectiveFeedbackTypes] == 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_internal_createCoreHapticsEngine
{
  v7.receiver = self;
  v7.super_class = _UIFeedbackCoreHapticsIgnoreCaptureHapticsOnlyEngine;
  _internal_createCoreHapticsEngine = [(_UIFeedbackCoreHapticsEngine *)&v7 _internal_createCoreHapticsEngine];
  if (!_internal_createCoreHapticsEngine)
  {
    coreHapticsEngine = [(_UIFeedbackCoreHapticsEngine *)self coreHapticsEngine];
    [coreHapticsEngine setMuteHapticsWhileRecordingAudio:0];

    coreHapticsEngine2 = [(_UIFeedbackCoreHapticsEngine *)self coreHapticsEngine];
    [coreHapticsEngine2 setPlaysHapticsOnly:1];
  }

  return _internal_createCoreHapticsEngine;
}

@end