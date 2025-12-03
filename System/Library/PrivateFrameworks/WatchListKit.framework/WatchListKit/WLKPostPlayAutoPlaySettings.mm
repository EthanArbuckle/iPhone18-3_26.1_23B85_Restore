@interface WLKPostPlayAutoPlaySettings
- (BOOL)_compareOptional:(id)optional with:(id)with;
- (BOOL)_hasValues;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSettings:(id)settings;
- (id)_newSettingsMergedWithPreviousSettings:(id)settings;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation WLKPostPlayAutoPlaySettings

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(WLKPostPlayAutoPlaySettings *)self isEqualToSettings:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToSettings:(id)settings
{
  settingsCopy = settings;
  v5 = settingsCopy;
  if (settingsCopy)
  {
    nextEpisodeSettingValue = self->_nextEpisodeSettingValue;
    nextEpisodeSettingValue = [settingsCopy nextEpisodeSettingValue];
    if (nextEpisodeSettingValue == nextEpisodeSettingValue)
    {
      recommendedItemsSettingValue = self->_recommendedItemsSettingValue;
      recommendedItemsSettingValue = [v5 recommendedItemsSettingValue];
      if (recommendedItemsSettingValue == recommendedItemsSettingValue)
      {
        v11 = self->_nextEpisodeSettingValue;
        nextEpisodeSettingValue2 = [v5 nextEpisodeSettingValue];
        if ([(WLKPostPlayAutoPlaySettings *)self _compareOptional:v11 with:nextEpisodeSettingValue2])
        {
          v13 = self->_recommendedItemsSettingValue;
          recommendedItemsSettingValue2 = [v5 recommendedItemsSettingValue];
          v8 = [(WLKPostPlayAutoPlaySettings *)self _compareOptional:v13 with:recommendedItemsSettingValue2];
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(WLKPostPlayAutoPlaySettings);
  v5 = [(NSNumber *)self->_nextEpisodeSettingValue copy];
  nextEpisodeSettingValue = v4->_nextEpisodeSettingValue;
  v4->_nextEpisodeSettingValue = v5;

  v7 = [(NSNumber *)self->_recommendedItemsSettingValue copy];
  recommendedItemsSettingValue = v4->_recommendedItemsSettingValue;
  v4->_recommendedItemsSettingValue = v7;

  return v4;
}

- (BOOL)_compareOptional:(id)optional with:(id)with
{
  if (optional && with)
  {
    return [optional isEqual:with];
  }

  else
  {
    return (optional | with) == 0;
  }
}

- (BOOL)_hasValues
{
  nextEpisodeSettingValue = [(WLKPostPlayAutoPlaySettings *)self nextEpisodeSettingValue];

  if (nextEpisodeSettingValue)
  {
    return 1;
  }

  recommendedItemsSettingValue = [(WLKPostPlayAutoPlaySettings *)self recommendedItemsSettingValue];
  v4 = recommendedItemsSettingValue != 0;

  return v4;
}

- (id)_newSettingsMergedWithPreviousSettings:(id)settings
{
  settingsCopy = settings;
  v5 = objc_alloc_init(WLKPostPlayAutoPlaySettings);
  nextEpisodeSettingValue = [(WLKPostPlayAutoPlaySettings *)self nextEpisodeSettingValue];

  selfCopy = self;
  if (nextEpisodeSettingValue || ([(WLKPostPlayAutoPlaySettings *)settingsCopy nextEpisodeSettingValue], v8 = objc_claimAutoreleasedReturnValue(), v8, selfCopy = settingsCopy, v8))
  {
    nextEpisodeSettingValue2 = [(WLKPostPlayAutoPlaySettings *)selfCopy nextEpisodeSettingValue];
    [(WLKPostPlayAutoPlaySettings *)v5 setNextEpisodeSettingValue:nextEpisodeSettingValue2];
  }

  recommendedItemsSettingValue = [(WLKPostPlayAutoPlaySettings *)self recommendedItemsSettingValue];

  if (recommendedItemsSettingValue || ([(WLKPostPlayAutoPlaySettings *)settingsCopy recommendedItemsSettingValue], v11 = objc_claimAutoreleasedReturnValue(), v11, self = settingsCopy, v11))
  {
    recommendedItemsSettingValue2 = [(WLKPostPlayAutoPlaySettings *)self recommendedItemsSettingValue];
    [(WLKPostPlayAutoPlaySettings *)v5 setRecommendedItemsSettingValue:recommendedItemsSettingValue2];
  }

  return v5;
}

@end