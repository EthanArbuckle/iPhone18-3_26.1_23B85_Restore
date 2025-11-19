@interface PXContextualMemoriesSettings
- (NSArray)peopleNames;
- (PXContextualMemoriesSettings)init;
@end

@implementation PXContextualMemoriesSettings

- (NSArray)peopleNames
{
  v2 = [(PXContextualMemoriesPeopleSetting *)self->_peopleSetting peopleNames];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  v5 = v4;

  return v4;
}

- (PXContextualMemoriesSettings)init
{
  v15 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = PXContextualMemoriesSettings;
  v2 = [(PXContextualMemoriesSettings *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(PXContextualMemoriesTimeSetting);
    timeSetting = v2->_timeSetting;
    v2->_timeSetting = v3;

    v5 = objc_alloc_init(PXContextualMemoriesLocationSetting);
    locationSetting = v2->_locationSetting;
    v2->_locationSetting = v5;

    v7 = objc_alloc_init(PXContextualMemoriesPeopleSetting);
    peopleSetting = v2->_peopleSetting;
    v2->_peopleSetting = v7;

    v13 = *&v2->_timeSetting;
    v14 = v2->_peopleSetting;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
    settings = v2->_settings;
    v2->_settings = v9;
  }

  return v2;
}

@end