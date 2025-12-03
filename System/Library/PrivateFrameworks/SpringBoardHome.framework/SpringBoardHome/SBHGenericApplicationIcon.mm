@interface SBHGenericApplicationIcon
- (SBHGenericApplicationIcon)initWithLeafIdentifier:(id)identifier applicationBundleID:(id)d;
@end

@implementation SBHGenericApplicationIcon

- (SBHGenericApplicationIcon)initWithLeafIdentifier:(id)identifier applicationBundleID:(id)d
{
  v5 = sub_1BEE4708C();
  if (d)
  {
    v7 = v5;
    v8 = v6;
    v9 = sub_1BEE4708C();
    v5 = v7;
    v11 = v10;
    v6 = v8;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  return sub_1BEDCAB90(v5, v6, v9, v11);
}

@end