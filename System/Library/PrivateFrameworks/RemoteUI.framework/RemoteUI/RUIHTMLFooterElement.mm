@interface RUIHTMLFooterElement
- (void)configureView:(id)view;
@end

@implementation RUIHTMLFooterElement

- (void)configureView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = viewCopy;
    sourceURL = [(RUIElement *)self sourceURL];
    [v4 setBaseURL:sourceURL];

    hTMLContent = [(RUIHTMLFooterElement *)self HTMLContent];
    [v4 setText:hTMLContent attributes:0];
  }
}

@end