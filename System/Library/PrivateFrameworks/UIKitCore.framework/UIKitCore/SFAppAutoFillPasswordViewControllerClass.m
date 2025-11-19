@interface SFAppAutoFillPasswordViewControllerClass
@end

@implementation SFAppAutoFillPasswordViewControllerClass

void __get_SFAppAutoFillPasswordViewControllerClass_block_invoke(uint64_t a1)
{
  SafariServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("_SFAppAutoFillPasswordViewController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_SFAppAutoFillPasswordViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class get_SFAppAutoFillPasswordViewControllerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIKeyboardVCPresenter.m" lineNumber:45 description:{@"Unable to find class %s", "_SFAppAutoFillPasswordViewController"}];

    __break(1u);
  }
}

@end