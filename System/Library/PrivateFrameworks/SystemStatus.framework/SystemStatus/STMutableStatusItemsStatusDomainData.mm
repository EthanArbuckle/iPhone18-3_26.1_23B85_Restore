@interface STMutableStatusItemsStatusDomainData
- (BOOL)applyDiff:(id)diff;
- (STMutableDictionaryData)visualDescriptorsByIdentifierDictionaryData;
- (STMutableListData)statusItemsAttributionListData;
- (STMutableStatusItemsStatusDomainData)initWithStatusItemsAttributionListData:(id)data visualDescriptorsByIdentifierDictionaryData:(id)dictionaryData;
- (id)copyWithZone:(_NSZone *)zone;
- (void)addAttribution:(id)attribution;
- (void)removeAttribution:(id)attribution;
- (void)setAttributions:(id)attributions;
- (void)setVisualDescriptor:(id)descriptor forStatusItemWithIdentifier:(id)identifier;
@end

@implementation STMutableStatusItemsStatusDomainData

- (STMutableStatusItemsStatusDomainData)initWithStatusItemsAttributionListData:(id)data visualDescriptorsByIdentifierDictionaryData:(id)dictionaryData
{
  dictionaryDataCopy = dictionaryData;
  v7 = [data mutableCopy];
  v8 = [dictionaryDataCopy mutableCopy];

  v11.receiver = self;
  v11.super_class = STMutableStatusItemsStatusDomainData;
  v9 = [(STStatusItemsStatusDomainData *)&v11 _initWithStatusItemsAttributionListData:v7 visualDescriptorsByIdentifierDictionaryData:v8];

  return v9;
}

- (void)setAttributions:(id)attributions
{
  if (attributions)
  {
    attributionsCopy = attributions;
    statusItemsAttributionListData = [(STMutableStatusItemsStatusDomainData *)self statusItemsAttributionListData];
    [statusItemsAttributionListData setObjects:attributionsCopy];
  }
}

- (void)addAttribution:(id)attribution
{
  if (attribution)
  {
    attributionCopy = attribution;
    statusItemsAttributionListData = [(STMutableStatusItemsStatusDomainData *)self statusItemsAttributionListData];
    [statusItemsAttributionListData addObject:attributionCopy];
  }
}

- (void)removeAttribution:(id)attribution
{
  if (attribution)
  {
    attributionCopy = attribution;
    statusItemsAttributionListData = [(STMutableStatusItemsStatusDomainData *)self statusItemsAttributionListData];
    [statusItemsAttributionListData removeObject:attributionCopy];
  }
}

- (void)setVisualDescriptor:(id)descriptor forStatusItemWithIdentifier:(id)identifier
{
  descriptorCopy = descriptor;
  identifierCopy = identifier;
  visualDescriptorsByIdentifierDictionaryData = [(STMutableStatusItemsStatusDomainData *)self visualDescriptorsByIdentifierDictionaryData];
  v8 = visualDescriptorsByIdentifierDictionaryData;
  if (descriptorCopy)
  {
    [visualDescriptorsByIdentifierDictionaryData setObject:descriptorCopy forKey:identifierCopy];
  }

  else
  {
    [visualDescriptorsByIdentifierDictionaryData removeObjectForKey:identifierCopy];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [STStatusItemsStatusDomainData allocWithZone:zone];

  return [(STStatusItemsStatusDomainData *)v4 initWithData:self];
}

- (BOOL)applyDiff:(id)diff
{
  diffCopy = diff;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    [diffCopy applyToMutableData:self];
  }

  return isKindOfClass & 1;
}

- (STMutableListData)statusItemsAttributionListData
{
  v4.receiver = self;
  v4.super_class = STMutableStatusItemsStatusDomainData;
  statusItemsAttributionListData = [(STStatusItemsStatusDomainData *)&v4 statusItemsAttributionListData];

  return statusItemsAttributionListData;
}

- (STMutableDictionaryData)visualDescriptorsByIdentifierDictionaryData
{
  v4.receiver = self;
  v4.super_class = STMutableStatusItemsStatusDomainData;
  visualDescriptorsByIdentifierDictionaryData = [(STStatusItemsStatusDomainData *)&v4 visualDescriptorsByIdentifierDictionaryData];

  return visualDescriptorsByIdentifierDictionaryData;
}

@end