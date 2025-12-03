@interface _UIFeedbackCoreHapticsHighPriorityEngine
+ (BOOL)_supportsPlayingIndividualFeedback:(id)feedback;
+ (id)_additionalEngineOptions;
+ (id)sharedEngine;
- (id)_internal_createCoreHapticsEngine;
@end

@implementation _UIFeedbackCoreHapticsHighPriorityEngine

+ (id)sharedEngine
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56___UIFeedbackCoreHapticsHighPriorityEngine_sharedEngine__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED49A150 != -1)
  {
    dispatch_once(&qword_1ED49A150, block);
  }

  v2 = qword_1ED49A158;

  return v2;
}

+ (BOOL)_supportsPlayingIndividualFeedback:(id)feedback
{
  feedbackCopy = feedback;
  v4 = +[UIDevice currentDevice];
  if ([v4 _feedbackSupportLevel] < 2)
  {

LABEL_10:
    v13 = 0;
    goto LABEL_11;
  }

  _effectiveFeedbackTypes = [feedbackCopy _effectiveFeedbackTypes];

  if (_effectiveFeedbackTypes != 2)
  {
    goto LABEL_10;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_10;
  }

  pattern = [feedbackCopy pattern];
  if (!pattern)
  {
    goto LABEL_10;
  }

  v7 = pattern;
  configurationDictionary = [pattern configurationDictionary];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v9 = getCHHapticPatternKeyPrioritySymbolLoc_ptr;
  v20 = getCHHapticPatternKeyPrioritySymbolLoc_ptr;
  if (!getCHHapticPatternKeyPrioritySymbolLoc_ptr)
  {
    v10 = CoreHapticsLibrary_0();
    v18[3] = dlsym(v10, "CHHapticPatternKeyPriority");
    getCHHapticPatternKeyPrioritySymbolLoc_ptr = v18[3];
    v9 = v18[3];
  }

  _Block_object_dispose(&v17, 8);
  if (v9)
  {
    v11 = [configurationDictionary valueForKey:*v9];
    v12 = getCHHapticPriorityHigh();
    v13 = [v11 isEqualToString:v12];

LABEL_11:
    return v13;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticPatternKey getCHHapticPatternKeyPriority(void)"];
  [currentHandler handleFailureInFunction:v16 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:98 description:{@"%s", dlerror()}];

  __break(1u);
  return result;
}

- (id)_internal_createCoreHapticsEngine
{
  v7.receiver = self;
  v7.super_class = _UIFeedbackCoreHapticsHighPriorityEngine;
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

+ (id)_additionalEngineOptions
{
  v32[3] = *MEMORY[0x1E69E9840];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v2 = qword_1ED49A1E0;
  v29 = qword_1ED49A1E0;
  if (!qword_1ED49A1E0)
  {
    v3 = CoreHapticsLibrary_0();
    v27[3] = dlsym(v3, "CHHapticEngineOptionKeyHapticPowerUsage");
    qword_1ED49A1E0 = v27[3];
    v2 = v27[3];
  }

  _Block_object_dispose(&v26, 8);
  if (!v2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticEngineOptionKey getCHHapticEngineOptionKeyHapticPowerUsage(void)"];
    [currentHandler handleFailureInFunction:v19 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:35 description:{@"%s", dlerror()}];

    goto LABEL_20;
  }

  v4 = *v2;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v5 = qword_1ED49A1E8;
  v29 = qword_1ED49A1E8;
  v30[0] = v4;
  if (!qword_1ED49A1E8)
  {
    v6 = CoreHapticsLibrary_0();
    v27[3] = dlsym(v6, "CHHapticPowerUsageLow");
    qword_1ED49A1E8 = v27[3];
    v5 = v27[3];
  }

  _Block_object_dispose(&v26, 8);
  if (!v5)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticPowerUsage getCHHapticPowerUsageLow(void)"];
    [currentHandler2 handleFailureInFunction:v21 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:36 description:{@"%s", dlerror()}];

    goto LABEL_20;
  }

  v7 = *v5;
  v32[0] = v7;
  v8 = getCHHapticEngineOptionKeyLocality();
  v30[1] = v8;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v9 = qword_1ED49A1F0;
  v29 = qword_1ED49A1F0;
  if (!qword_1ED49A1F0)
  {
    v10 = CoreHapticsLibrary_0();
    v27[3] = dlsym(v10, "CHHapticLocalityDefaultWithFullStrength");
    qword_1ED49A1F0 = v27[3];
    v9 = v27[3];
  }

  _Block_object_dispose(&v26, 8);
  if (!v9)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticLocality getCHHapticLocalityDefaultWithFullStrength(void)"];
    [currentHandler3 handleFailureInFunction:v23 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:30 description:{@"%s", dlerror()}];

    goto LABEL_20;
  }

  v11 = *v9;
  v32[1] = v11;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v12 = qword_1ED49A1F8;
  v29 = qword_1ED49A1F8;
  if (!qword_1ED49A1F8)
  {
    v13 = CoreHapticsLibrary_0();
    v27[3] = dlsym(v13, "CHHapticEngineOptionKeyPriority");
    qword_1ED49A1F8 = v27[3];
    v12 = v27[3];
  }

  _Block_object_dispose(&v26, 8);
  if (!v12)
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticEngineOptionKey getCHHapticEngineOptionKeyPriority(void)"];
    [currentHandler4 handleFailureInFunction:v25 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:33 description:{@"%s", dlerror()}];

LABEL_20:
    __break(1u);
  }

  v31 = *v12;
  v14 = v31;
  v15 = getCHHapticPriorityHigh();
  v32[2] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v30 count:3];

  return v16;
}

@end