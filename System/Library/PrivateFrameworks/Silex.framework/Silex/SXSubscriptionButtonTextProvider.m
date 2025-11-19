@interface SXSubscriptionButtonTextProvider
- (SXSubscriptionButtonTextProvider)initWithTitle:(id)a3;
@end

@implementation SXSubscriptionButtonTextProvider

- (SXSubscriptionButtonTextProvider)initWithTitle:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SXSubscriptionButtonTextProvider;
  v5 = [(SXSubscriptionButtonTextProvider *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    title = v5->_title;
    v5->_title = v6;
  }

  return v5;
}

@end