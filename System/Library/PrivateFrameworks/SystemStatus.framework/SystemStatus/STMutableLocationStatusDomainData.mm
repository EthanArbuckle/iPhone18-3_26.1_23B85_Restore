@interface STMutableLocationStatusDomainData
- (BOOL)applyDiff:(id)diff;
- (STMutableListData)locationAttributionListData;
- (STMutableLocationStatusDomainData)initWithLocationAttributionListData:(id)data activeDisplayModes:(unint64_t)modes;
- (id)copyWithZone:(_NSZone *)zone;
- (void)addAttribution:(id)attribution;
- (void)addLocationAttribution:(id)attribution;
- (void)removeAttribution:(id)attribution;
- (void)removeLocationAttribution:(id)attribution;
- (void)setActiveDisplayModes:(unint64_t)modes;
- (void)setAttributions:(id)attributions;
- (void)setLocationAttributions:(id)attributions;
@end

@implementation STMutableLocationStatusDomainData

- (STMutableListData)locationAttributionListData
{
  v4.receiver = self;
  v4.super_class = STMutableLocationStatusDomainData;
  locationAttributionListData = [(STLocationStatusDomainData *)&v4 locationAttributionListData];

  return locationAttributionListData;
}

- (STMutableLocationStatusDomainData)initWithLocationAttributionListData:(id)data activeDisplayModes:(unint64_t)modes
{
  v6 = [data mutableCopy];
  v9.receiver = self;
  v9.super_class = STMutableLocationStatusDomainData;
  v7 = [(STLocationStatusDomainData *)&v9 _initWithLocationAttributionListData:v6 activeDisplayModes:modes];

  return v7;
}

- (void)setAttributions:(id)attributions
{
  if (attributions)
  {
    attributionsCopy = attributions;
    locationAttributionListData = [(STMutableLocationStatusDomainData *)self locationAttributionListData];
    [locationAttributionListData setObjects:attributionsCopy];
  }
}

- (void)addAttribution:(id)attribution
{
  if (attribution)
  {
    attributionCopy = attribution;
    locationAttributionListData = [(STMutableLocationStatusDomainData *)self locationAttributionListData];
    [locationAttributionListData addObject:attributionCopy];
  }
}

- (void)removeAttribution:(id)attribution
{
  if (attribution)
  {
    attributionCopy = attribution;
    locationAttributionListData = [(STMutableLocationStatusDomainData *)self locationAttributionListData];
    [locationAttributionListData removeObject:attributionCopy];
  }
}

- (void)setLocationAttributions:(id)attributions
{
  if (attributions)
  {
    attributionsCopy = attributions;
    attributions = [(STLocationStatusDomainData *)self attributions];
    v8 = [attributions bs_filter:&__block_literal_global_121];

    v6 = [v8 mutableCopy];
    v7 = [attributionsCopy bs_map:&__block_literal_global_124];

    [v6 addObjectsFromArray:v7];
    [(STMutableLocationStatusDomainData *)self setAttributions:v6];
  }
}

STLocationStatusDomainLocationAttribution *__61__STMutableLocationStatusDomainData_setLocationAttributions___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[STLocationStatusDomainLocationAttribution alloc] initWithLocationState:1 activityAttribution:v2];

  return v3;
}

- (void)addLocationAttribution:(id)attribution
{
  if (attribution)
  {
    attributionCopy = attribution;
    v5 = [[STLocationStatusDomainLocationAttribution alloc] initWithLocationState:1 activityAttribution:attributionCopy];

    [(STMutableLocationStatusDomainData *)self addAttribution:v5];
  }
}

- (void)removeLocationAttribution:(id)attribution
{
  if (attribution)
  {
    attributionCopy = attribution;
    v5 = [[STLocationStatusDomainLocationAttribution alloc] initWithLocationState:1 activityAttribution:attributionCopy];

    [(STMutableLocationStatusDomainData *)self removeAttribution:v5];
  }
}

- (void)setActiveDisplayModes:(unint64_t)modes
{
  if (self->super._activeDisplayModes != modes)
  {
    self->super._activeDisplayModes = modes;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [STLocationStatusDomainData allocWithZone:zone];

  return [(STLocationStatusDomainData *)v4 initWithData:self];
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