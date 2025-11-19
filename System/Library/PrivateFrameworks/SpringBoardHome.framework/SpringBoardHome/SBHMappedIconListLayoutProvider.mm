@interface SBHMappedIconListLayoutProvider
- (SBHMappedIconListLayoutProvider)initWithTargetListLayoutProvider:(id)a3;
- (id)layoutForIconLocation:(id)a3;
- (void)mapIconLocation:(id)a3 toIconLocation:(id)a4;
@end

@implementation SBHMappedIconListLayoutProvider

- (SBHMappedIconListLayoutProvider)initWithTargetListLayoutProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBHMappedIconListLayoutProvider;
  v6 = [(SBHMappedIconListLayoutProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_targetListLayoutProvider, a3);
  }

  return v7;
}

- (void)mapIconLocation:(id)a3 toIconLocation:(id)a4
{
  v10 = a3;
  v6 = a4;
  mappedIconLocations = self->_mappedIconLocations;
  if (!mappedIconLocations)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = self->_mappedIconLocations;
    self->_mappedIconLocations = v8;

    mappedIconLocations = self->_mappedIconLocations;
  }

  [(NSMutableDictionary *)mappedIconLocations setObject:v6 forKey:v10];
}

- (id)layoutForIconLocation:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_mappedIconLocations objectForKey:v4];
  if (!v5)
  {
    v5 = v4;
  }

  v6 = [(SBHMappedIconListLayoutProvider *)self targetListLayoutProvider];
  v7 = [v6 layoutForIconLocation:v5];

  return v7;
}

@end