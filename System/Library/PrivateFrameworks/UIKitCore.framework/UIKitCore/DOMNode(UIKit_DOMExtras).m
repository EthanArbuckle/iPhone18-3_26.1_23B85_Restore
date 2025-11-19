@interface DOMNode(UIKit_DOMExtras)
- (id)tagName;
- (id)urlScheme;
@end

@implementation DOMNode(UIKit_DOMExtras)

- (id)tagName
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [a1 tagName];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)urlScheme
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [a1 absoluteLinkURL];
    v3 = [v2 scheme];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end