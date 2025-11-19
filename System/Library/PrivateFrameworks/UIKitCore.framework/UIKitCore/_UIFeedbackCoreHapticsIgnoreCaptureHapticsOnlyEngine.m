@interface _UIFeedbackCoreHapticsIgnoreCaptureHapticsOnlyEngine
+ (BOOL)_supportsPlayingIndividualFeedback:(id)a3;
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
  block[4] = a1;
  if (qword_1ED49A140 != -1)
  {
    dispatch_once(&qword_1ED49A140, block);
  }

  v2 = qword_1ED49A148;

  return v2;
}

+ (BOOL)_supportsPlayingIndividualFeedback:(id)a3
{
  v4 = a3;
  if ([a1 _supportsPlayingIndividualFeedback:v4 allowsIgnoreCapture:1])
  {
    v5 = [v4 _effectiveFeedbackTypes] == 2;
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
  v3 = [(_UIFeedbackCoreHapticsEngine *)&v7 _internal_createCoreHapticsEngine];
  if (!v3)
  {
    v4 = [(_UIFeedbackCoreHapticsEngine *)self coreHapticsEngine];
    [v4 setMuteHapticsWhileRecordingAudio:0];

    v5 = [(_UIFeedbackCoreHapticsEngine *)self coreHapticsEngine];
    [v5 setPlaysHapticsOnly:1];
  }

  return v3;
}

@end