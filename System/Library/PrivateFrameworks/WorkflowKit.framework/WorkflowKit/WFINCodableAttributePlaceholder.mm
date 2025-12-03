@interface WFINCodableAttributePlaceholder
- (WFINCodableAttributePlaceholder)initWithMetadata:(id)metadata;
- (id)localizedStringWithContext:(id)context pluralizationNumber:(id)number;
@end

@implementation WFINCodableAttributePlaceholder

- (id)localizedStringWithContext:(id)context pluralizationNumber:(id)number
{
  contextCopy = context;
  metadata = [(WFINCodableAttributePlaceholder *)self metadata];
  stringLocalizer = [contextCopy stringLocalizer];

  v8 = [metadata localizedPlaceholderWithLocalizer:stringLocalizer];

  return v8;
}

- (WFINCodableAttributePlaceholder)initWithMetadata:(id)metadata
{
  metadataCopy = metadata;
  v10.receiver = self;
  v10.super_class = WFINCodableAttributePlaceholder;
  v6 = [(WFINCodableAttributePlaceholder *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metadata, metadata);
    v8 = v7;
  }

  return v7;
}

@end