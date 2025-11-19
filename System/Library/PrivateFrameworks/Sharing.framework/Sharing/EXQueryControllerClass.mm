@interface EXQueryControllerClass
@end

@implementation EXQueryControllerClass

Class __get_EXQueryControllerClass_block_invoke(uint64_t a1)
{
  ExtensionFoundationLibrary();
  result = objc_getClass("_EXQueryController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_EXQueryControllerClass_block_invoke_cold_1();
  }

  get_EXQueryControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __get_EXQueryControllerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class get_EXQueryControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFShareSheetSessionTestingSnapshot.m" lineNumber:24 description:{@"Unable to find class %s", "_EXQueryController"}];

  __break(1u);
}

@end