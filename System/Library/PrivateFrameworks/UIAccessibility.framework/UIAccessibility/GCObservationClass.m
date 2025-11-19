@interface GCObservationClass
@end

@implementation GCObservationClass

Class __get_GCObservationClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!GameControllerLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __GameControllerLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E78AB5B0;
    v5 = 0;
    GameControllerLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!GameControllerLibraryCore_frameworkLibrary_0)
  {
    __get_GCObservationClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("_GCObservation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_GCObservationClass_block_invoke_cold_1();
  }

  get_GCObservationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __get_GCObservationClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class get_GCObservationClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"UIAccessibilityGamepadEventSource.m" lineNumber:17 description:{@"Unable to find class %s", "_GCObservation"}];

  __break(1u);
}

void __get_GCObservationClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *GameControllerLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"UIAccessibilityGamepadEventSource.m" lineNumber:16 description:{@"%s", *a1}];

  __break(1u);
}

@end