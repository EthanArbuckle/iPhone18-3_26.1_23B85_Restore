@interface WPLinkFilteringConditionals
- (WPLinkFilteringConditionals)init;
@end

@implementation WPLinkFilteringConditionals

- (WPLinkFilteringConditionals)init
{
  v9.receiver = self;
  v9.super_class = WPLinkFilteringConditionals;
  v2 = [(WPLinkFilteringConditionals *)&v9 init];
  if (v2)
  {
    v3 = objc_opt_new();
    domains = v2->_domains;
    v2->_domains = v3;

    v5 = objc_opt_new();
    paths = v2->_paths;
    v2->_paths = v5;

    v7 = v2;
  }

  return v2;
}

@end