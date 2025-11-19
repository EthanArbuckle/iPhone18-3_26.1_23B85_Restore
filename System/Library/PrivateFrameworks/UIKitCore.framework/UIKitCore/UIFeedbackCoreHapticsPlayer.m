@interface UIFeedbackCoreHapticsPlayer
@end

@implementation UIFeedbackCoreHapticsPlayer

void __108___UIFeedbackCoreHapticsPlayer__internal_createEventsForFileFeedbackData_engine_parameters_parameterCurves___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = qword_1ED49A170;
  qword_1ED49A170 = v0;
}

void __108___UIFeedbackCoreHapticsPlayer__internal_createEventsForFileFeedbackData_engine_parameters_parameterCurves___block_invoke_111(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 audioParameters];
  v7 = getCHHapticEventTypeAudioCustom();
  v9 = [v3 _internal_createFixedParameterForParameters:v6 withKey:v5 forEventType:v7];

  v8 = v9;
  if (v9)
  {
    [*(a1 + 48) addObject:v9];
    v8 = v9;
  }
}

void __76___UIFeedbackCoreHapticsPlayer__internal_createEventsForLegacyFeedbackData___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) audioParameters];
  v5 = [v3 _internal_createFixedParameterForParameters:v4 withKey:v9 forEventType:*(a1 + 48)];

  if (v5)
  {
    [*(a1 + 56) addObject:v5];
  }

  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) hapticParameters];
  v8 = [v6 _internal_createFixedParameterForParameters:v7 withKey:v9 forEventType:*(a1 + 48)];

  if (v8)
  {
    [*(a1 + 56) addObject:v8];
  }
}

@end