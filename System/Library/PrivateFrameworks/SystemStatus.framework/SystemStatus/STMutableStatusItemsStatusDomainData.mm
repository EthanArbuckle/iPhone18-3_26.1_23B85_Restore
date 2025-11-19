@interface STMutableStatusItemsStatusDomainData
- (BOOL)applyDiff:(id)a3;
- (STMutableDictionaryData)visualDescriptorsByIdentifierDictionaryData;
- (STMutableListData)statusItemsAttributionListData;
- (STMutableStatusItemsStatusDomainData)initWithStatusItemsAttributionListData:(id)a3 visualDescriptorsByIdentifierDictionaryData:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)addAttribution:(id)a3;
- (void)removeAttribution:(id)a3;
- (void)setAttributions:(id)a3;
- (void)setVisualDescriptor:(id)a3 forStatusItemWithIdentifier:(id)a4;
@end

@implementation STMutableStatusItemsStatusDomainData

- (STMutableStatusItemsStatusDomainData)initWithStatusItemsAttributionListData:(id)a3 visualDescriptorsByIdentifierDictionaryData:(id)a4
{
  v6 = a4;
  v7 = [a3 mutableCopy];
  v8 = [v6 mutableCopy];

  v11.receiver = self;
  v11.super_class = STMutableStatusItemsStatusDomainData;
  v9 = [(STStatusItemsStatusDomainData *)&v11 _initWithStatusItemsAttributionListData:v7 visualDescriptorsByIdentifierDictionaryData:v8];

  return v9;
}

- (void)setAttributions:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(STMutableStatusItemsStatusDomainData *)self statusItemsAttributionListData];
    [v5 setObjects:v4];
  }
}

- (void)addAttribution:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(STMutableStatusItemsStatusDomainData *)self statusItemsAttributionListData];
    [v5 addObject:v4];
  }
}

- (void)removeAttribution:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(STMutableStatusItemsStatusDomainData *)self statusItemsAttributionListData];
    [v5 removeObject:v4];
  }
}

- (void)setVisualDescriptor:(id)a3 forStatusItemWithIdentifier:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(STMutableStatusItemsStatusDomainData *)self visualDescriptorsByIdentifierDictionaryData];
  v8 = v7;
  if (v9)
  {
    [v7 setObject:v9 forKey:v6];
  }

  else
  {
    [v7 removeObjectForKey:v6];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [STStatusItemsStatusDomainData allocWithZone:a3];

  return [(STStatusItemsStatusDomainData *)v4 initWithData:self];
}

- (BOOL)applyDiff:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    [v4 applyToMutableData:self];
  }

  return isKindOfClass & 1;
}

- (STMutableListData)statusItemsAttributionListData
{
  v4.receiver = self;
  v4.super_class = STMutableStatusItemsStatusDomainData;
  v2 = [(STStatusItemsStatusDomainData *)&v4 statusItemsAttributionListData];

  return v2;
}

- (STMutableDictionaryData)visualDescriptorsByIdentifierDictionaryData
{
  v4.receiver = self;
  v4.super_class = STMutableStatusItemsStatusDomainData;
  v2 = [(STStatusItemsStatusDomainData *)&v4 visualDescriptorsByIdentifierDictionaryData];

  return v2;
}

@end