@interface RUIPrivacyLinkHeaderElement
- (void)configureView:(id)a3;
@end

@implementation RUIPrivacyLinkHeaderElement

- (void)configureView:(id)a3
{
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v7;
    v5 = [(RUIElement *)self pageElement];
    v6 = [v5 page];
    [v4 configureInPage:v6];
  }
}

@end