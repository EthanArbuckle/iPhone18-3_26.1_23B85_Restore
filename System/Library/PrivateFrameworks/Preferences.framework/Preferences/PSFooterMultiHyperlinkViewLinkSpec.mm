@interface PSFooterMultiHyperlinkViewLinkSpec
+ (id)specWithRange:(_NSRange)range target:(id)target action:(SEL)action;
+ (id)specWithRange:(_NSRange)range url:(id)url;
- (SEL)action;
- (_NSRange)linkRange;
- (id)target;
- (void)setAction:(SEL)action;
@end

@implementation PSFooterMultiHyperlinkViewLinkSpec

+ (id)specWithRange:(_NSRange)range url:(id)url
{
  length = range.length;
  location = range.location;
  urlCopy = url;
  v7 = objc_alloc_init(PSFooterMultiHyperlinkViewLinkSpec);
  [(PSFooterMultiHyperlinkViewLinkSpec *)v7 setLinkRange:location, length];
  [(PSFooterMultiHyperlinkViewLinkSpec *)v7 setURL:urlCopy];

  return v7;
}

+ (id)specWithRange:(_NSRange)range target:(id)target action:(SEL)action
{
  length = range.length;
  location = range.location;
  targetCopy = target;
  v9 = objc_alloc_init(PSFooterMultiHyperlinkViewLinkSpec);
  [(PSFooterMultiHyperlinkViewLinkSpec *)v9 setLinkRange:location, length];
  [(PSFooterMultiHyperlinkViewLinkSpec *)v9 setTarget:targetCopy];

  [(PSFooterMultiHyperlinkViewLinkSpec *)v9 setAction:action];

  return v9;
}

- (_NSRange)linkRange
{
  length = self->_linkRange.length;
  location = self->_linkRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (SEL)action
{
  if (self->_action)
  {
    return self->_action;
  }

  else
  {
    return 0;
  }
}

- (void)setAction:(SEL)action
{
  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  self->_action = actionCopy;
}

@end