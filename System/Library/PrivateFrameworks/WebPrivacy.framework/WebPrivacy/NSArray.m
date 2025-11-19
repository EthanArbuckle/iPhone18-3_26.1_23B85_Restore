@interface NSArray
@end

@implementation NSArray

void __67__NSArray_WebPrivacyExtras___wp_removeTrackingInformationFromURLs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    [*(a1 + 40) setObject:v3 atIndexedSubscript:*(a1 + 48)];
  }

  dispatch_group_leave(*(a1 + 32));
}

@end