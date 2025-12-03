@interface STMutableBackgroundActivitiesStatusDomainData
- (BOOL)applyDiff:(id)diff;
- (STMutableBackgroundActivitiesStatusDomainData)initWithBackgroundActivitiesAttributionListData:(id)data visualDescriptorsByIdentifierDictionaryData:(id)dictionaryData;
- (STMutableDictionaryData)visualDescriptorsByIdentifierDictionaryData;
- (STMutableListData)backgroundActivitiesAttributionListData;
- (id)copyWithZone:(_NSZone *)zone;
- (void)addAttribution:(id)attribution;
- (void)removeAttribution:(id)attribution;
- (void)setAttributions:(id)attributions;
- (void)setVisualDescriptor:(id)descriptor forBackgroundActivityWithIdentifier:(id)identifier;
@end

@implementation STMutableBackgroundActivitiesStatusDomainData

- (STMutableListData)backgroundActivitiesAttributionListData
{
  v4.receiver = self;
  v4.super_class = STMutableBackgroundActivitiesStatusDomainData;
  backgroundActivitiesAttributionListData = [(STBackgroundActivitiesStatusDomainData *)&v4 backgroundActivitiesAttributionListData];

  return backgroundActivitiesAttributionListData;
}

- (STMutableDictionaryData)visualDescriptorsByIdentifierDictionaryData
{
  v4.receiver = self;
  v4.super_class = STMutableBackgroundActivitiesStatusDomainData;
  visualDescriptorsByIdentifierDictionaryData = [(STBackgroundActivitiesStatusDomainData *)&v4 visualDescriptorsByIdentifierDictionaryData];

  return visualDescriptorsByIdentifierDictionaryData;
}

- (STMutableBackgroundActivitiesStatusDomainData)initWithBackgroundActivitiesAttributionListData:(id)data visualDescriptorsByIdentifierDictionaryData:(id)dictionaryData
{
  dictionaryDataCopy = dictionaryData;
  v7 = [data mutableCopy];
  v8 = [dictionaryDataCopy mutableCopy];

  v11.receiver = self;
  v11.super_class = STMutableBackgroundActivitiesStatusDomainData;
  v9 = [(STBackgroundActivitiesStatusDomainData *)&v11 _initWithBackgroundActivitiesAttributionListData:v7 visualDescriptorsByIdentifierDictionaryData:v8];

  return v9;
}

- (void)setAttributions:(id)attributions
{
  if (attributions)
  {
    attributionsCopy = attributions;
    backgroundActivitiesAttributionListData = [(STMutableBackgroundActivitiesStatusDomainData *)self backgroundActivitiesAttributionListData];
    [backgroundActivitiesAttributionListData setObjects:attributionsCopy];
  }
}

- (void)addAttribution:(id)attribution
{
  if (attribution)
  {
    attributionCopy = attribution;
    backgroundActivitiesAttributionListData = [(STMutableBackgroundActivitiesStatusDomainData *)self backgroundActivitiesAttributionListData];
    [backgroundActivitiesAttributionListData addObject:attributionCopy];
  }
}

- (void)removeAttribution:(id)attribution
{
  if (attribution)
  {
    attributionCopy = attribution;
    backgroundActivitiesAttributionListData = [(STMutableBackgroundActivitiesStatusDomainData *)self backgroundActivitiesAttributionListData];
    [backgroundActivitiesAttributionListData removeObject:attributionCopy];
  }
}

- (void)setVisualDescriptor:(id)descriptor forBackgroundActivityWithIdentifier:(id)identifier
{
  descriptorCopy = descriptor;
  identifierCopy = identifier;
  visualDescriptorsByIdentifierDictionaryData = [(STMutableBackgroundActivitiesStatusDomainData *)self visualDescriptorsByIdentifierDictionaryData];
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
  v4 = [STBackgroundActivitiesStatusDomainData allocWithZone:zone];

  return [(STBackgroundActivitiesStatusDomainData *)v4 initWithData:self];
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

@end