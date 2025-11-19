@interface SPUISFindMySectionBuilder
- (id)buildCollectionStyle;
- (id)buildTitle;
@end

@implementation SPUISFindMySectionBuilder

- (id)buildTitle
{
  if ([(SPUISSectionBuilder *)self isContactEntitySearch])
  {
    v3 = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SPUISFindMySectionBuilder;
    v3 = [(SPUISSectionBuilder *)&v5 buildTitle];
  }

  return v3;
}

- (id)buildCollectionStyle
{
  v2 = objc_opt_new();
  [v2 setDrawPlattersIfNecessary:1];
  [v2 setInitiallyVisibleCardSectionCount:1];

  return v2;
}

@end