@interface NSExtension(_QLPreviewControllerUtilities)
- (id)ql_previewExtensionCustomLoadingTime;
- (uint64_t)ql_isPreviewExtensionThatHaveCustomPresentationView;
@end

@implementation NSExtension(_QLPreviewControllerUtilities)

- (uint64_t)ql_isPreviewExtensionThatHaveCustomPresentationView
{
  attributes = [self attributes];
  v2 = [attributes objectForKey:@"QLCustomLoadingView"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (id)ql_previewExtensionCustomLoadingTime
{
  attributes = [self attributes];
  v2 = [attributes objectForKey:@"QLCustomLoadingTimeout"];

  return v2;
}

@end