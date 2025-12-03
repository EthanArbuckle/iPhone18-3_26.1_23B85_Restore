@interface SBHMappedIconListLayoutProvider
- (SBHMappedIconListLayoutProvider)initWithTargetListLayoutProvider:(id)provider;
- (id)layoutForIconLocation:(id)location;
- (void)mapIconLocation:(id)location toIconLocation:(id)iconLocation;
@end

@implementation SBHMappedIconListLayoutProvider

- (SBHMappedIconListLayoutProvider)initWithTargetListLayoutProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = SBHMappedIconListLayoutProvider;
  v6 = [(SBHMappedIconListLayoutProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_targetListLayoutProvider, provider);
  }

  return v7;
}

- (void)mapIconLocation:(id)location toIconLocation:(id)iconLocation
{
  locationCopy = location;
  iconLocationCopy = iconLocation;
  mappedIconLocations = self->_mappedIconLocations;
  if (!mappedIconLocations)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = self->_mappedIconLocations;
    self->_mappedIconLocations = v8;

    mappedIconLocations = self->_mappedIconLocations;
  }

  [(NSMutableDictionary *)mappedIconLocations setObject:iconLocationCopy forKey:locationCopy];
}

- (id)layoutForIconLocation:(id)location
{
  locationCopy = location;
  v5 = [(NSMutableDictionary *)self->_mappedIconLocations objectForKey:locationCopy];
  if (!v5)
  {
    v5 = locationCopy;
  }

  targetListLayoutProvider = [(SBHMappedIconListLayoutProvider *)self targetListLayoutProvider];
  v7 = [targetListLayoutProvider layoutForIconLocation:v5];

  return v7;
}

@end