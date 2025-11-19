@interface LNSearchCriteriaValueType(ContentItem)
- (id)wf_contentItemClassWithAppBundleIdentifier:()ContentItem;
@end

@implementation LNSearchCriteriaValueType(ContentItem)

- (id)wf_contentItemClassWithAppBundleIdentifier:()ContentItem
{
  if ([a1 typeIdentifier])
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