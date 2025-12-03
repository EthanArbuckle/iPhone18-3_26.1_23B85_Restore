@interface SPUISFindMySectionBuilder
- (id)buildCollectionStyle;
- (id)buildTitle;
@end

@implementation SPUISFindMySectionBuilder

- (id)buildTitle
{
  if ([(SPUISSectionBuilder *)self isContactEntitySearch])
  {
    buildTitle = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SPUISFindMySectionBuilder;
    buildTitle = [(SPUISSectionBuilder *)&v5 buildTitle];
  }

  return buildTitle;
}

- (id)buildCollectionStyle
{
  v2 = objc_opt_new();
  [v2 setDrawPlattersIfNecessary:1];
  [v2 setInitiallyVisibleCardSectionCount:1];

  return v2;
}

@end