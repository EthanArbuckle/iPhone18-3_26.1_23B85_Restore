@interface SPUISLinksSectionBuilder
- (BOOL)useCompactRowOnMac;
- (id)buildCollectionStyle;
@end

@implementation SPUISLinksSectionBuilder

- (BOOL)useCompactRowOnMac
{
  v3 = +[SPUISUtilities isMacOS];
  if (v3)
  {
    LOBYTE(v3) = ![(SPUISSectionBuilder *)self hasEntities];
  }

  return v3;
}

- (id)buildCollectionStyle
{
  v2 = objc_opt_new();
  [v2 setNumberOfRows:1];

  return v2;
}

@end