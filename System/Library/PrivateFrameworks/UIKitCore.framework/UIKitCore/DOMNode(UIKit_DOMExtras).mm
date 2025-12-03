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
    tagName = [self tagName];
  }

  else
  {
    tagName = 0;
  }

  return tagName;
}

- (id)urlScheme
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    absoluteLinkURL = [self absoluteLinkURL];
    scheme = [absoluteLinkURL scheme];
  }

  else
  {
    scheme = 0;
  }

  return scheme;
}

@end