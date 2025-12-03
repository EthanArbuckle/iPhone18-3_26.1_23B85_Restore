@interface SFStoreButtonItem(SearchUIButtonItemViewController)
- (id)searchUI_viewControllerClass;
@end

@implementation SFStoreButtonItem(SearchUIButtonItemViewController)

- (id)searchUI_viewControllerClass
{
  if ([MEMORY[0x1E69D9240] isSpotlightUICLI])
  {
    v4.receiver = self;
    v4.super_class = &off_1F566EC08;
    v2 = objc_msgSendSuper2(&v4, sel_searchUI_viewControllerClass);
  }

  else
  {
    v2 = objc_opt_class();
  }

  return v2;
}

@end