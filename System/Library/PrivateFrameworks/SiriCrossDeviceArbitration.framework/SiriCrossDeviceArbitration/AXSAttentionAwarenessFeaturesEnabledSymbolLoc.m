@interface AXSAttentionAwarenessFeaturesEnabledSymbolLoc
@end

@implementation AXSAttentionAwarenessFeaturesEnabledSymbolLoc

void *__get_AXSAttentionAwarenessFeaturesEnabledSymbolLoc_block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v2 = libAccessibilityLibraryCore_frameworkLibrary;
  v12 = libAccessibilityLibraryCore_frameworkLibrary;
  if (!libAccessibilityLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __libAccessibilityLibraryCore_block_invoke;
    v6[4] = &unk_1E85D3018;
    v7 = &v9;
    v8 = v6;
    v13 = xmmword_1E85D2FF8;
    v14 = 0;
    v10[3] = _sl_dlopen();
    libAccessibilityLibraryCore_frameworkLibrary = *(v7[1] + 24);
    v2 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  v3 = v6[0];
  if (!v2)
  {
    v3 = abort_report_np();
    __break(1u);
    goto LABEL_7;
  }

  if (v6[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "_AXSAttentionAwarenessFeaturesEnabled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_AXSAttentionAwarenessFeaturesEnabledSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

@end