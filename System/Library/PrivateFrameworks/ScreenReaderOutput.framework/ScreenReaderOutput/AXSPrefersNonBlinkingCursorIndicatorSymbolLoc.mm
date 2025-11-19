@interface AXSPrefersNonBlinkingCursorIndicatorSymbolLoc
@end

@implementation AXSPrefersNonBlinkingCursorIndicatorSymbolLoc

void *__get_AXSPrefersNonBlinkingCursorIndicatorSymbolLoc_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = libAccessibilityLibraryCore_frameworkLibrary;
  v11 = libAccessibilityLibraryCore_frameworkLibrary;
  if (!libAccessibilityLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __libAccessibilityLibraryCore_block_invoke;
    v5[4] = &unk_279B73EF0;
    v6 = &v8;
    v7 = v5;
    v12 = xmmword_279B73ED0;
    v13 = 0;
    v9[3] = _sl_dlopen();
    libAccessibilityLibraryCore_frameworkLibrary = *(v6[1] + 24);
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v2)
  {
    __get_AXSPrefersNonBlinkingCursorIndicatorSymbolLoc_block_invoke_cold_1(v5);
  }

  if (v5[0])
  {
    free(v5[0]);
  }

  result = dlsym(v2, "_AXSPrefersNonBlinkingCursorIndicator");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_AXSPrefersNonBlinkingCursorIndicatorSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void __get_AXSPrefersNonBlinkingCursorIndicatorSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *libAccessibilityLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SCROBrailleDisplay.m" lineNumber:34 description:{@"%s", *a1}];

  __break(1u);
}

@end