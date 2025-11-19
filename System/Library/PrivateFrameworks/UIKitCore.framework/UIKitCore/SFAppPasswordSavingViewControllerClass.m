@interface SFAppPasswordSavingViewControllerClass
@end

@implementation SFAppPasswordSavingViewControllerClass

Class __get_SFAppPasswordSavingViewControllerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED49F9A8)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __SafariServicesLibraryCore_block_invoke_2;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7119628;
    v8 = 0;
    qword_1ED49F9A8 = _sl_dlopen();
  }

  if (!qword_1ED49F9A8)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SafariServicesLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIKBAutofillController.m" lineNumber:145 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("_SFAppPasswordSavingViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class get_SFAppPasswordSavingViewControllerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UIKBAutofillController.m" lineNumber:146 description:{@"Unable to find class %s", "_SFAppPasswordSavingViewController"}];

LABEL_10:
    __break(1u);
  }

  qword_1ED49F9A0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __get_SFAppPasswordSavingViewControllerClass_block_invoke_0(uint64_t a1)
{
  SafariServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("_SFAppPasswordSavingViewController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_SFAppPasswordSavingViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class get_SFAppPasswordSavingViewControllerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIKeyboardVCPresenter.m" lineNumber:46 description:{@"Unable to find class %s", "_SFAppPasswordSavingViewController"}];

    __break(1u);
  }
}

@end