@interface ANEDeviceInfoClass
@end

@implementation ANEDeviceInfoClass

Class __get_ANEDeviceInfoClass_block_invoke(uint64_t a1)
{
  v3 = 0;
  if (!AppleNeuralEngineLibraryCore())
  {
    __get_ANEDeviceInfoClass_block_invoke_cold_2(&v3);
  }

  result = objc_getClass("_ANEDeviceInfo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_ANEDeviceInfoClass_block_invoke_cold_1();
  }

  get_ANEDeviceInfoClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __get_ANEDeviceInfoClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class get_ANEDeviceInfoClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AXFeatureRuntimeSupport.m" lineNumber:28 description:{@"Unable to find class %s", "_ANEDeviceInfo"}];

  __break(1u);
}

void __get_ANEDeviceInfoClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AppleNeuralEngineLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXFeatureRuntimeSupport.m" lineNumber:27 description:{@"%s", *a1}];

  __break(1u);
}

@end