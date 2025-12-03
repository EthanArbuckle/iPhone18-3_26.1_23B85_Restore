@interface SXSubscriptionButtonTextProvider
- (SXSubscriptionButtonTextProvider)initWithTitle:(id)title;
@end

@implementation SXSubscriptionButtonTextProvider

- (SXSubscriptionButtonTextProvider)initWithTitle:(id)title
{
  titleCopy = title;
  v9.receiver = self;
  v9.super_class = SXSubscriptionButtonTextProvider;
  v5 = [(SXSubscriptionButtonTextProvider *)&v9 init];
  if (v5)
  {
    v6 = [titleCopy copy];
    title = v5->_title;
    v5->_title = v6;
  }

  return v5;
}

@end