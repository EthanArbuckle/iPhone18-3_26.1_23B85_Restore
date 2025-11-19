@interface PSFooterMultiHyperlinkViewLinkSpec
+ (id)specWithRange:(_NSRange)a3 target:(id)a4 action:(SEL)a5;
+ (id)specWithRange:(_NSRange)a3 url:(id)a4;
- (SEL)action;
- (_NSRange)linkRange;
- (id)target;
- (void)setAction:(SEL)a3;
@end

@implementation PSFooterMultiHyperlinkViewLinkSpec

+ (id)specWithRange:(_NSRange)a3 url:(id)a4
{
  length = a3.length;
  location = a3.location;
  v6 = a4;
  v7 = objc_alloc_init(PSFooterMultiHyperlinkViewLinkSpec);
  [(PSFooterMultiHyperlinkViewLinkSpec *)v7 setLinkRange:location, length];
  [(PSFooterMultiHyperlinkViewLinkSpec *)v7 setURL:v6];

  return v7;
}

+ (id)specWithRange:(_NSRange)a3 target:(id)a4 action:(SEL)a5
{
  length = a3.length;
  location = a3.location;
  v8 = a4;
  v9 = objc_alloc_init(PSFooterMultiHyperlinkViewLinkSpec);
  [(PSFooterMultiHyperlinkViewLinkSpec *)v9 setLinkRange:location, length];
  [(PSFooterMultiHyperlinkViewLinkSpec *)v9 setTarget:v8];

  [(PSFooterMultiHyperlinkViewLinkSpec *)v9 setAction:a5];

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

- (void)setAction:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_action = v3;
}

@end