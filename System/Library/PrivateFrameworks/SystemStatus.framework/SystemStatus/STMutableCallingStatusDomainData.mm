@interface STMutableCallingStatusDomainData
- (BOOL)applyDiff:(id)diff;
- (STMutableCallingStatusDomainData)initWithCallDescriptorListData:(id)data;
- (STMutableListData)callDescriptorListData;
- (id)copyWithZone:(_NSZone *)zone;
- (void)addActiveCallAttribution:(id)attribution;
- (void)addActiveVideoConferenceAttribution:(id)attribution;
- (void)addCallDescriptor:(id)descriptor;
- (void)addRingingCallAttribution:(id)attribution;
- (void)addRingingVideoConferenceAttribution:(id)attribution;
- (void)removeActiveCallAttribution:(id)attribution;
- (void)removeActiveVideoConferenceAttribution:(id)attribution;
- (void)removeCallDescriptor:(id)descriptor;
- (void)removeRingingCallAttribution:(id)attribution;
- (void)removeRingingVideoConferenceAttribution:(id)attribution;
- (void)setActiveCallAttributions:(id)attributions;
- (void)setActiveVideoConferenceAttributions:(id)attributions;
- (void)setCallDescriptors:(id)descriptors;
- (void)setRingingCallAttributions:(id)attributions;
- (void)setRingingVideoConferenceAttributions:(id)attributions;
@end

@implementation STMutableCallingStatusDomainData

- (STMutableListData)callDescriptorListData
{
  v4.receiver = self;
  v4.super_class = STMutableCallingStatusDomainData;
  callDescriptorListData = [(STCallingStatusDomainData *)&v4 callDescriptorListData];

  return callDescriptorListData;
}

- (STMutableCallingStatusDomainData)initWithCallDescriptorListData:(id)data
{
  v4 = [data mutableCopy];
  v7.receiver = self;
  v7.super_class = STMutableCallingStatusDomainData;
  v5 = [(STCallingStatusDomainData *)&v7 _initWithCallDescriptorListData:v4];

  return v5;
}

- (void)setCallDescriptors:(id)descriptors
{
  if (descriptors)
  {
    descriptorsCopy = descriptors;
    callDescriptorListData = [(STMutableCallingStatusDomainData *)self callDescriptorListData];
    [callDescriptorListData setObjects:descriptorsCopy];
  }
}

- (void)addCallDescriptor:(id)descriptor
{
  if (descriptor)
  {
    descriptorCopy = descriptor;
    callDescriptorListData = [(STMutableCallingStatusDomainData *)self callDescriptorListData];
    [callDescriptorListData addObject:descriptorCopy];
  }
}

- (void)removeCallDescriptor:(id)descriptor
{
  if (descriptor)
  {
    descriptorCopy = descriptor;
    callDescriptorListData = [(STMutableCallingStatusDomainData *)self callDescriptorListData];
    [callDescriptorListData removeObject:descriptorCopy];
  }
}

- (void)setActiveCallAttributions:(id)attributions
{
  attributionsCopy = attributions;
  _activeAudioCallDescriptors = [(STCallingStatusDomainData *)self _activeAudioCallDescriptors];
  allObjects = [attributionsCopy allObjects];

  v6 = [allObjects bs_map:&__block_literal_global_128];

  if (([_activeAudioCallDescriptors isEqualToArray:v6] & 1) == 0)
  {
    callDescriptorListData = [(STMutableCallingStatusDomainData *)self callDescriptorListData];
    objects = [callDescriptorListData objects];
    v9 = [objects mutableCopy];

    [v9 removeObjectsInArray:_activeAudioCallDescriptors];
    [v9 addObjectsFromArray:v6];
    [callDescriptorListData setObjects:v9];
  }
}

- (void)addActiveCallAttribution:(id)attribution
{
  if (attribution)
  {
    callDescriptorListData = [(STMutableCallingStatusDomainData *)self callDescriptorListData];
    v3 = [STCallingStatusDomainCallDescriptor audioCallDescriptorWithState:0];
    [callDescriptorListData addObject:v3];
  }
}

- (void)removeActiveCallAttribution:(id)attribution
{
  if (attribution)
  {
    callDescriptorListData = [(STMutableCallingStatusDomainData *)self callDescriptorListData];
    v3 = [STCallingStatusDomainCallDescriptor audioCallDescriptorWithState:0];
    [callDescriptorListData removeObject:v3];
  }
}

- (void)setRingingCallAttributions:(id)attributions
{
  attributionsCopy = attributions;
  _ringingAudioCallDescriptors = [(STCallingStatusDomainData *)self _ringingAudioCallDescriptors];
  allObjects = [attributionsCopy allObjects];

  v6 = [allObjects bs_map:&__block_literal_global_130];

  if (([_ringingAudioCallDescriptors isEqualToArray:v6] & 1) == 0)
  {
    callDescriptorListData = [(STMutableCallingStatusDomainData *)self callDescriptorListData];
    objects = [callDescriptorListData objects];
    v9 = [objects mutableCopy];

    [v9 removeObjectsInArray:_ringingAudioCallDescriptors];
    [v9 addObjectsFromArray:v6];
    [callDescriptorListData setObjects:v9];
  }
}

- (void)addRingingCallAttribution:(id)attribution
{
  if (attribution)
  {
    callDescriptorListData = [(STMutableCallingStatusDomainData *)self callDescriptorListData];
    v3 = [STCallingStatusDomainCallDescriptor audioCallDescriptorWithState:1];
    [callDescriptorListData addObject:v3];
  }
}

- (void)removeRingingCallAttribution:(id)attribution
{
  if (attribution)
  {
    callDescriptorListData = [(STMutableCallingStatusDomainData *)self callDescriptorListData];
    v3 = [STCallingStatusDomainCallDescriptor audioCallDescriptorWithState:1];
    [callDescriptorListData removeObject:v3];
  }
}

- (void)setActiveVideoConferenceAttributions:(id)attributions
{
  attributionsCopy = attributions;
  if (self)
  {
    callDescriptors = [(STCallingStatusDomainData *)self callDescriptors];
    v11 = [callDescriptors bs_filter:&__block_literal_global_23_0];
  }

  else
  {
    v11 = 0;
  }

  allObjects = [attributionsCopy allObjects];

  v7 = [allObjects bs_map:&__block_literal_global_132];

  if (([v11 isEqualToArray:v7] & 1) == 0)
  {
    callDescriptorListData = [(STMutableCallingStatusDomainData *)self callDescriptorListData];
    objects = [callDescriptorListData objects];
    v10 = [objects mutableCopy];

    [v10 removeObjectsInArray:v11];
    [v10 addObjectsFromArray:v7];
    [callDescriptorListData setObjects:v10];
  }
}

- (void)addActiveVideoConferenceAttribution:(id)attribution
{
  if (attribution)
  {
    callDescriptorListData = [(STMutableCallingStatusDomainData *)self callDescriptorListData];
    v3 = [STCallingStatusDomainCallDescriptor videoCallDescriptorWithState:0];
    [callDescriptorListData addObject:v3];
  }
}

- (void)removeActiveVideoConferenceAttribution:(id)attribution
{
  if (attribution)
  {
    callDescriptorListData = [(STMutableCallingStatusDomainData *)self callDescriptorListData];
    v3 = [STCallingStatusDomainCallDescriptor videoCallDescriptorWithState:0];
    [callDescriptorListData removeObject:v3];
  }
}

- (void)setRingingVideoConferenceAttributions:(id)attributions
{
  attributionsCopy = attributions;
  if (self)
  {
    callDescriptors = [(STCallingStatusDomainData *)self callDescriptors];
    v11 = [callDescriptors bs_filter:&__block_literal_global_25];
  }

  else
  {
    v11 = 0;
  }

  allObjects = [attributionsCopy allObjects];

  v7 = [allObjects bs_map:&__block_literal_global_134];

  if (([v11 isEqualToArray:v7] & 1) == 0)
  {
    callDescriptorListData = [(STMutableCallingStatusDomainData *)self callDescriptorListData];
    objects = [callDescriptorListData objects];
    v10 = [objects mutableCopy];

    [v10 removeObjectsInArray:v11];
    [v10 addObjectsFromArray:v7];
    [callDescriptorListData setObjects:v10];
  }
}

- (void)addRingingVideoConferenceAttribution:(id)attribution
{
  if (attribution)
  {
    callDescriptorListData = [(STMutableCallingStatusDomainData *)self callDescriptorListData];
    v3 = [STCallingStatusDomainCallDescriptor videoCallDescriptorWithState:1];
    [callDescriptorListData addObject:v3];
  }
}

- (void)removeRingingVideoConferenceAttribution:(id)attribution
{
  if (attribution)
  {
    callDescriptorListData = [(STMutableCallingStatusDomainData *)self callDescriptorListData];
    v3 = [STCallingStatusDomainCallDescriptor videoCallDescriptorWithState:1];
    [callDescriptorListData removeObject:v3];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [STCallingStatusDomainData allocWithZone:zone];

  return [(STCallingStatusDomainData *)v4 initWithData:self];
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