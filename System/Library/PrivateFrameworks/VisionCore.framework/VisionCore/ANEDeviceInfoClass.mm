@interface ANEDeviceInfoClass
@end

@implementation ANEDeviceInfoClass

Class __get_ANEDeviceInfoClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AppleNeuralEngineLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AppleNeuralEngineLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8698768;
    v6 = 0;
    AppleNeuralEngineLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (AppleNeuralEngineLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("_ANEDeviceInfo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  get_ANEDeviceInfoClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end