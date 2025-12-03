@interface _UIFeedbackCoreHapticsIgnoreCaptureEngine
+ (id)sharedEngine;
- (id)_internal_createCoreHapticsEngine;
@end

@implementation _UIFeedbackCoreHapticsIgnoreCaptureEngine

+ (id)sharedEngine
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57___UIFeedbackCoreHapticsIgnoreCaptureEngine_sharedEngine__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED49A130 != -1)
  {
    dispatch_once(&qword_1ED49A130, block);
  }

  v2 = qword_1ED49A138;

  return v2;
}

- (id)_internal_createCoreHapticsEngine
{
  v6.receiver = self;
  v6.super_class = _UIFeedbackCoreHapticsIgnoreCaptureEngine;
  _internal_createCoreHapticsEngine = [(_UIFeedbackCoreHapticsEngine *)&v6 _internal_createCoreHapticsEngine];
  if (!_internal_createCoreHapticsEngine)
  {
    coreHapticsEngine = [(_UIFeedbackCoreHapticsEngine *)self coreHapticsEngine];
    [coreHapticsEngine setMuteHapticsWhileRecordingAudio:0];
  }

  return _internal_createCoreHapticsEngine;
}

@end