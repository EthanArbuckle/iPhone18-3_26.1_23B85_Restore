@interface KSTextReplacementServerClass
@end

@implementation KSTextReplacementServerClass

Class __get_KSTextReplacementServerClass_block_invoke(uint64_t a1)
{
  KeyboardServicesLibrary_15017();
  result = objc_getClass("_KSTextReplacementServer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_KSTextReplacementServerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return __getMCKeyboardSettingsChangedNotificationSymbolLoc_block_invoke(v3);
  }

  return result;
}

@end