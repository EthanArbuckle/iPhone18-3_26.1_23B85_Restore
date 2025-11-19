@interface SBHGenericApplicationIcon
- (SBHGenericApplicationIcon)initWithLeafIdentifier:(id)a3 applicationBundleID:(id)a4;
@end

@implementation SBHGenericApplicationIcon

- (SBHGenericApplicationIcon)initWithLeafIdentifier:(id)a3 applicationBundleID:(id)a4
{
  v5 = sub_1BEE4708C();
  if (a4)
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