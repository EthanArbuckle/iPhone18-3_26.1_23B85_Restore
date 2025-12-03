@interface FBSSceneClientSettings(PosterBoardUI)
- (double)pruis_primaryPosterOffset;
- (double)pruis_primaryPosterScale;
- (uint64_t)pruis_switcherContextID;
- (uint64_t)pruis_switcherLayoutMode;
@end

@implementation FBSSceneClientSettings(PosterBoardUI)

- (uint64_t)pruis_switcherLayoutMode
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:25612];

  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  unsignedIntegerValue = [v6 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (uint64_t)pruis_switcherContextID
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:25613];

  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  unsignedLongLongValue = [v6 unsignedLongLongValue];
  return unsignedLongLongValue;
}

- (double)pruis_primaryPosterScale
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:25614];

  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  [v6 doubleValue];
  v8 = v7;

  return v8;
}

- (double)pruis_primaryPosterOffset
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:25615];

  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  [v6 CGPointValue];
  v8 = v7;

  return v8;
}

@end