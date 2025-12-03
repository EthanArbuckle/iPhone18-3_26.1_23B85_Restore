@interface _UIFeedbackCoreHapticsHapticsOnlyEngine
+ (BOOL)_supportsPlayingIndividualFeedback:(id)feedback;
+ (id)sharedEngine;
- (id)_internal_createCoreHapticsEngine;
@end

@implementation _UIFeedbackCoreHapticsHapticsOnlyEngine

- (id)_internal_createCoreHapticsEngine
{
  v6.receiver = self;
  v6.super_class = _UIFeedbackCoreHapticsHapticsOnlyEngine;
  _internal_createCoreHapticsEngine = [(_UIFeedbackCoreHapticsEngine *)&v6 _internal_createCoreHapticsEngine];
  if (!_internal_createCoreHapticsEngine)
  {
    coreHapticsEngine = [(_UIFeedbackCoreHapticsEngine *)self coreHapticsEngine];
    [coreHapticsEngine setPlaysHapticsOnly:1];
  }

  return _internal_createCoreHapticsEngine;
}

+ (id)sharedEngine
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55___UIFeedbackCoreHapticsHapticsOnlyEngine_sharedEngine__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED49A120 != -1)
  {
    dispatch_once(&qword_1ED49A120, block);
  }

  v2 = qword_1ED49A128;

  return v2;
}

+ (BOOL)_supportsPlayingIndividualFeedback:(id)feedback
{
  feedbackCopy = feedback;
  v5 = [self _supportsPlayingIndividualFeedback:feedbackCopy allowsIgnoreCapture:0];
  v6 = 0;
  if (v5)
  {
    v6 = [feedbackCopy _effectiveFeedbackTypes] == 2;
  }

  return v6;
}

@end