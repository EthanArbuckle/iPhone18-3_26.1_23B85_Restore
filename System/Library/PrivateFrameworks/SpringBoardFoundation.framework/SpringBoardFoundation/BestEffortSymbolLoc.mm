@interface BestEffortSymbolLoc
@end

@implementation BestEffortSymbolLoc

void *__getSOSCCBailFromCircle_BestEffortSymbolLoc_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SecurityLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SecurityLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E807F080;
    v6 = 0;
    SecurityLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = SecurityLibraryCore_frameworkLibrary;
  if (!SecurityLibraryCore_frameworkLibrary)
  {
    __getSOSCCBailFromCircle_BestEffortSymbolLoc_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "SOSCCBailFromCircle_BestEffort");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSOSCCBailFromCircle_BestEffortSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getSOSCCBailFromCircle_BestEffortSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SecurityLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SBFObliterationController.m" lineNumber:35 description:{@"%s", *a1}];

  __break(1u);
}

@end