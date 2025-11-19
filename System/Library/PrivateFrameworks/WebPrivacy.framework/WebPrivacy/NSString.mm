@interface NSString
@end

@implementation NSString

void __68__NSString_WebPrivacyExtras___wp_removeTrackingInformationFromURLs___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 absoluteString];
  (*(v2 + 16))(v2);
}

void __68__NSString_WebPrivacyExtras___wp_removeTrackingInformationFromURLs___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = WebPrivacy::applyOrderedReplacements<objc_object>(*(a1 + 40), a2);
  (*(v2 + 16))(v2);
}

@end