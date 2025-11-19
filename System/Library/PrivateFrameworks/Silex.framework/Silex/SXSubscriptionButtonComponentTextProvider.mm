@interface SXSubscriptionButtonComponentTextProvider
- (SXSubscriptionButtonComponentTextProvider)initWithTextProvider:(id)a3;
- (id)textForComponent:(id)a3;
@end

@implementation SXSubscriptionButtonComponentTextProvider

- (SXSubscriptionButtonComponentTextProvider)initWithTextProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SXSubscriptionButtonComponentTextProvider;
  v6 = [(SXSubscriptionButtonComponentTextProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_textProvider, a3);
  }

  return v7;
}

- (id)textForComponent:(id)a3
{
  v4 = [a3 text];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(SXSubscriptionButtonComponentTextProvider *)self textProvider];
    v8 = [v7 title];
    v9 = v8;
    v10 = &stru_1F532F6C0;
    if (v8)
    {
      v10 = v8;
    }

    v6 = v10;
  }

  return v6;
}

@end