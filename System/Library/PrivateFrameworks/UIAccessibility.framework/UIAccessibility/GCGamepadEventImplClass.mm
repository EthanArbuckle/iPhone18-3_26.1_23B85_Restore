@interface GCGamepadEventImplClass
@end

@implementation GCGamepadEventImplClass

Class __get_GCGamepadEventImplClass_block_invoke(uint64_t a1)
{
  GameControllerLibrary();
  result = objc_getClass("_GCGamepadEventImpl");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_GCGamepadEventImplClass_block_invoke_cold_1();
  }

  get_GCGamepadEventImplClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __get_GCGamepadEventImplClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class get_GCGamepadEventImplClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"UIAccessibilityGameController.m" lineNumber:18 description:{@"Unable to find class %s", "_GCGamepadEventImpl"}];

  __break(1u);
}

@end