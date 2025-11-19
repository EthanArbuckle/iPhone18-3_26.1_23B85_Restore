@interface STMutableLocationStatusDomainData
- (BOOL)applyDiff:(id)a3;
- (STMutableListData)locationAttributionListData;
- (STMutableLocationStatusDomainData)initWithLocationAttributionListData:(id)a3 activeDisplayModes:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)addAttribution:(id)a3;
- (void)addLocationAttribution:(id)a3;
- (void)removeAttribution:(id)a3;
- (void)removeLocationAttribution:(id)a3;
- (void)setActiveDisplayModes:(unint64_t)a3;
- (void)setAttributions:(id)a3;
- (void)setLocationAttributions:(id)a3;
@end

@implementation STMutableLocationStatusDomainData

- (STMutableListData)locationAttributionListData
{
  v4.receiver = self;
  v4.super_class = STMutableLocationStatusDomainData;
  v2 = [(STLocationStatusDomainData *)&v4 locationAttributionListData];

  return v2;
}

- (STMutableLocationStatusDomainData)initWithLocationAttributionListData:(id)a3 activeDisplayModes:(unint64_t)a4
{
  v6 = [a3 mutableCopy];
  v9.receiver = self;
  v9.super_class = STMutableLocationStatusDomainData;
  v7 = [(STLocationStatusDomainData *)&v9 _initWithLocationAttributionListData:v6 activeDisplayModes:a4];

  return v7;
}

- (void)setAttributions:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(STMutableLocationStatusDomainData *)self locationAttributionListData];
    [v5 setObjects:v4];
  }
}

- (void)addAttribution:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(STMutableLocationStatusDomainData *)self locationAttributionListData];
    [v5 addObject:v4];
  }
}

- (void)removeAttribution:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(STMutableLocationStatusDomainData *)self locationAttributionListData];
    [v5 removeObject:v4];
  }
}

- (void)setLocationAttributions:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(STLocationStatusDomainData *)self attributions];
    v8 = [v5 bs_filter:&__block_literal_global_121];

    v6 = [v8 mutableCopy];
    v7 = [v4 bs_map:&__block_literal_global_124];

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

- (void)addLocationAttribution:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[STLocationStatusDomainLocationAttribution alloc] initWithLocationState:1 activityAttribution:v4];

    [(STMutableLocationStatusDomainData *)self addAttribution:v5];
  }
}

- (void)removeLocationAttribution:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[STLocationStatusDomainLocationAttribution alloc] initWithLocationState:1 activityAttribution:v4];

    [(STMutableLocationStatusDomainData *)self removeAttribution:v5];
  }
}

- (void)setActiveDisplayModes:(unint64_t)a3
{
  if (self->super._activeDisplayModes != a3)
  {
    self->super._activeDisplayModes = a3;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [STLocationStatusDomainData allocWithZone:a3];

  return [(STLocationStatusDomainData *)v4 initWithData:self];
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

@end