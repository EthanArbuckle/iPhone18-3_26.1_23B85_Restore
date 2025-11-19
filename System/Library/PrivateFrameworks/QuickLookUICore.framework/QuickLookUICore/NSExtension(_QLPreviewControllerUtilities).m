@interface NSExtension(_QLPreviewControllerUtilities)
- (id)ql_previewExtensionCustomLoadingTime;
- (uint64_t)ql_isPreviewExtensionThatHaveCustomPresentationView;
@end

@implementation NSExtension(_QLPreviewControllerUtilities)

- (uint64_t)ql_isPreviewExtensionThatHaveCustomPresentationView
{
  v1 = [a1 attributes];
  v2 = [v1 objectForKey:@"QLCustomLoadingView"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (id)ql_previewExtensionCustomLoadingTime
{
  v1 = [a1 attributes];
  v2 = [v1 objectForKey:@"QLCustomLoadingTimeout"];

  return v2;
}

@end