@interface RUIPrivacyLinkHeaderElement
- (void)configureView:(id)view;
@end

@implementation RUIPrivacyLinkHeaderElement

- (void)configureView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = viewCopy;
    pageElement = [(RUIElement *)self pageElement];
    page = [pageElement page];
    [v4 configureInPage:page];
  }
}

@end