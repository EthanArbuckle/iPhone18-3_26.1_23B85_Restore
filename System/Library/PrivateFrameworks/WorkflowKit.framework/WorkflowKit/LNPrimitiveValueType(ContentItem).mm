@interface LNPrimitiveValueType(ContentItem)
- (id)wf_contentItemClassWithAppBundleIdentifier:()ContentItem;
@end

@implementation LNPrimitiveValueType(ContentItem)

- (id)wf_contentItemClassWithAppBundleIdentifier:()ContentItem
{
  typeIdentifier = [self typeIdentifier];
  if (typeIdentifier > 0xC)
  {
    v3 = 0;
  }

  else
  {
    v2 = **(&unk_1E837FE18 + typeIdentifier);
    v3 = objc_opt_class();
  }

  return v3;
}

@end