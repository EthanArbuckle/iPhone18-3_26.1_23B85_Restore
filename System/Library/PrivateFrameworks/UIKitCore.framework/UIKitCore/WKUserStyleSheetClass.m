@interface WKUserStyleSheetClass
@end

@implementation WKUserStyleSheetClass

void __get_WKUserStyleSheetClass_block_invoke(uint64_t a1)
{
  WebKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("_WKUserStyleSheet");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    _MergedGlobals_5_6 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class get_WKUserStyleSheetClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIReferenceLibraryViewController.m" lineNumber:53 description:{@"Unable to find class %s", "_WKUserStyleSheet"}];

    __break(1u);
  }
}

@end