@interface LNFoundationValueType(ContentItem)
- (id)wf_contentItemClassWithAppBundleIdentifier:()ContentItem;
@end

@implementation LNFoundationValueType(ContentItem)

- (id)wf_contentItemClassWithAppBundleIdentifier:()ContentItem
{
  if ([self typeIdentifier])
  {
    v1 = 0;
  }

  else
  {
    v1 = objc_opt_class();
  }

  return v1;
}

@end