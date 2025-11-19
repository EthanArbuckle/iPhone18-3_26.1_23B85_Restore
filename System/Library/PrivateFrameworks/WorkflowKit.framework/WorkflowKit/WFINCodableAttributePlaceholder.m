@interface WFINCodableAttributePlaceholder
- (WFINCodableAttributePlaceholder)initWithMetadata:(id)a3;
- (id)localizedStringWithContext:(id)a3 pluralizationNumber:(id)a4;
@end

@implementation WFINCodableAttributePlaceholder

- (id)localizedStringWithContext:(id)a3 pluralizationNumber:(id)a4
{
  v5 = a3;
  v6 = [(WFINCodableAttributePlaceholder *)self metadata];
  v7 = [v5 stringLocalizer];

  v8 = [v6 localizedPlaceholderWithLocalizer:v7];

  return v8;
}

- (WFINCodableAttributePlaceholder)initWithMetadata:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WFINCodableAttributePlaceholder;
  v6 = [(WFINCodableAttributePlaceholder *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metadata, a3);
    v8 = v7;
  }

  return v7;
}

@end