@interface _UIFeedbackCoreHapticsHapticsOnlyEngine
+ (BOOL)_supportsPlayingIndividualFeedback:(id)a3;
+ (id)sharedEngine;
- (id)_internal_createCoreHapticsEngine;
@end

@implementation _UIFeedbackCoreHapticsHapticsOnlyEngine

- (id)_internal_createCoreHapticsEngine
{
  v6.receiver = self;
  v6.super_class = _UIFeedbackCoreHapticsHapticsOnlyEngine;
  v3 = [(_UIFeedbackCoreHapticsEngine *)&v6 _internal_createCoreHapticsEngine];
  if (!v3)
  {
    v4 = [(_UIFeedbackCoreHapticsEngine *)self coreHapticsEngine];
    [v4 setPlaysHapticsOnly:1];
  }

  return v3;
}

+ (id)sharedEngine
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55___UIFeedbackCoreHapticsHapticsOnlyEngine_sharedEngine__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_1ED49A120 != -1)
  {
    dispatch_once(&qword_1ED49A120, block);
  }

  v2 = qword_1ED49A128;

  return v2;
}

+ (BOOL)_supportsPlayingIndividualFeedback:(id)a3
{
  v4 = a3;
  v5 = [a1 _supportsPlayingIndividualFeedback:v4 allowsIgnoreCapture:0];
  v6 = 0;
  if (v5)
  {
    v6 = [v4 _effectiveFeedbackTypes] == 2;
  }

  return v6;
}

@end