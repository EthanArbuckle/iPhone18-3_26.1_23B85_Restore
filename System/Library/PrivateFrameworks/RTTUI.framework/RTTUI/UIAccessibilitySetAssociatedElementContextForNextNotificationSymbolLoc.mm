@interface UIAccessibilitySetAssociatedElementContextForNextNotificationSymbolLoc
@end

@implementation UIAccessibilitySetAssociatedElementContextForNextNotificationSymbolLoc

void *__get_UIAccessibilitySetAssociatedElementContextForNextNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!UIAccessibilityLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __UIAccessibilityLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279AE52B8;
    v7 = 0;
    UIAccessibilityLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = UIAccessibilityLibraryCore_frameworkLibrary;
    if (UIAccessibilityLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = UIAccessibilityLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "_UIAccessibilitySetAssociatedElementContextForNextNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_UIAccessibilitySetAssociatedElementContextForNextNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end