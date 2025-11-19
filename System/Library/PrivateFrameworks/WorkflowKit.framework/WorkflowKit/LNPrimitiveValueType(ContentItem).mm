@interface LNPrimitiveValueType(ContentItem)
- (id)wf_contentItemClassWithAppBundleIdentifier:()ContentItem;
@end

@implementation LNPrimitiveValueType(ContentItem)

- (id)wf_contentItemClassWithAppBundleIdentifier:()ContentItem
{
  v1 = [a1 typeIdentifier];
  if (v1 > 0xC)
  {
    v3 = 0;
  }

  else
  {
    v2 = **(&unk_1E837FE18 + v1);
    v3 = objc_opt_class();
  }

  return v3;
}

@end