@interface SFAutomaticPasswordInputViewControllerClass
@end

@implementation SFAutomaticPasswordInputViewControllerClass

Class __get_SFAutomaticPasswordInputViewControllerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED49C058)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __SafariServicesLibraryCore_block_invoke_1;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E710E5D0;
    v8 = 0;
    qword_1ED49C058 = _sl_dlopen();
  }

  if (!qword_1ED49C058)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SafariServicesLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIInputViewController.m" lineNumber:53 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("_SFAutomaticPasswordInputViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class get_SFAutomaticPasswordInputViewControllerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UIInputViewController.m" lineNumber:54 description:{@"Unable to find class %s", "_SFAutomaticPasswordInputViewController"}];

LABEL_10:
    __break(1u);
  }

  qword_1ED49C050 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end