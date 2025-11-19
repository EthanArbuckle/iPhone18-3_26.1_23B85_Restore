@interface WLKPostPlayAutoPlaySettings
- (BOOL)_compareOptional:(id)a3 with:(id)a4;
- (BOOL)_hasValues;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSettings:(id)a3;
- (id)_newSettingsMergedWithPreviousSettings:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation WLKPostPlayAutoPlaySettings

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(WLKPostPlayAutoPlaySettings *)self isEqualToSettings:v4];
  }

  return v5;
}

- (BOOL)isEqualToSettings:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    nextEpisodeSettingValue = self->_nextEpisodeSettingValue;
    v7 = [v4 nextEpisodeSettingValue];
    if (nextEpisodeSettingValue == v7)
    {
      recommendedItemsSettingValue = self->_recommendedItemsSettingValue;
      v10 = [v5 recommendedItemsSettingValue];
      if (recommendedItemsSettingValue == v10)
      {
        v11 = self->_nextEpisodeSettingValue;
        v12 = [v5 nextEpisodeSettingValue];
        if ([(WLKPostPlayAutoPlaySettings *)self _compareOptional:v11 with:v12])
        {
          v13 = self->_recommendedItemsSettingValue;
          v14 = [v5 recommendedItemsSettingValue];
          v8 = [(WLKPostPlayAutoPlaySettings *)self _compareOptional:v13 with:v14];
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

- (id)copyWithZone:(_NSZone *)a3
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

- (BOOL)_compareOptional:(id)a3 with:(id)a4
{
  if (a3 && a4)
  {
    return [a3 isEqual:a4];
  }

  else
  {
    return (a3 | a4) == 0;
  }
}

- (BOOL)_hasValues
{
  v3 = [(WLKPostPlayAutoPlaySettings *)self nextEpisodeSettingValue];

  if (v3)
  {
    return 1;
  }

  v5 = [(WLKPostPlayAutoPlaySettings *)self recommendedItemsSettingValue];
  v4 = v5 != 0;

  return v4;
}

- (id)_newSettingsMergedWithPreviousSettings:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(WLKPostPlayAutoPlaySettings);
  v6 = [(WLKPostPlayAutoPlaySettings *)self nextEpisodeSettingValue];

  v7 = self;
  if (v6 || ([(WLKPostPlayAutoPlaySettings *)v4 nextEpisodeSettingValue], v8 = objc_claimAutoreleasedReturnValue(), v8, v7 = v4, v8))
  {
    v9 = [(WLKPostPlayAutoPlaySettings *)v7 nextEpisodeSettingValue];
    [(WLKPostPlayAutoPlaySettings *)v5 setNextEpisodeSettingValue:v9];
  }

  v10 = [(WLKPostPlayAutoPlaySettings *)self recommendedItemsSettingValue];

  if (v10 || ([(WLKPostPlayAutoPlaySettings *)v4 recommendedItemsSettingValue], v11 = objc_claimAutoreleasedReturnValue(), v11, self = v4, v11))
  {
    v12 = [(WLKPostPlayAutoPlaySettings *)self recommendedItemsSettingValue];
    [(WLKPostPlayAutoPlaySettings *)v5 setRecommendedItemsSettingValue:v12];
  }

  return v5;
}

@end