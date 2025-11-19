@interface WrapperClass
@end

@implementation WrapperClass

Class __getSTUIStatusBar_WrapperClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED49AD00)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __SystemStatusUILibraryCore_block_invoke_0;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7122710;
    v8 = 0;
    qword_1ED49AD00 = _sl_dlopen();
  }

  if (!qword_1ED49AD00)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SystemStatusUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIStatusBar_Base.m" lineNumber:36 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("STUIStatusBar_Wrapper");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSTUIStatusBar_WrapperClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UIStatusBar_Base.m" lineNumber:38 description:{@"Unable to find class %s", "STUIStatusBar_Wrapper"}];

LABEL_10:
    __break(1u);
  }

  qword_1ED49ACF8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end