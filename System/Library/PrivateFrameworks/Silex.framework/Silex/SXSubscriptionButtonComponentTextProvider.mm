@interface SXSubscriptionButtonComponentTextProvider
- (SXSubscriptionButtonComponentTextProvider)initWithTextProvider:(id)provider;
- (id)textForComponent:(id)component;
@end

@implementation SXSubscriptionButtonComponentTextProvider

- (SXSubscriptionButtonComponentTextProvider)initWithTextProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = SXSubscriptionButtonComponentTextProvider;
  v6 = [(SXSubscriptionButtonComponentTextProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_textProvider, provider);
  }

  return v7;
}

- (id)textForComponent:(id)component
{
  text = [component text];
  v5 = text;
  if (text)
  {
    v6 = text;
  }

  else
  {
    textProvider = [(SXSubscriptionButtonComponentTextProvider *)self textProvider];
    title = [textProvider title];
    v9 = title;
    v10 = &stru_1F532F6C0;
    if (title)
    {
      v10 = title;
    }

    v6 = v10;
  }

  return v6;
}

@end