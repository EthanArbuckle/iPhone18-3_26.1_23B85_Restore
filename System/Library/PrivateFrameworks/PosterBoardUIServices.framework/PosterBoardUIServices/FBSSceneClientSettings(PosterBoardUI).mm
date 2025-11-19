@interface FBSSceneClientSettings(PosterBoardUI)
- (double)pruis_primaryPosterOffset;
- (double)pruis_primaryPosterScale;
- (uint64_t)pruis_switcherContextID;
- (uint64_t)pruis_switcherLayoutMode;
@end

@implementation FBSSceneClientSettings(PosterBoardUI)

- (uint64_t)pruis_switcherLayoutMode
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:25612];

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

  v7 = [v6 unsignedIntegerValue];
  return v7;
}

- (uint64_t)pruis_switcherContextID
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:25613];

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

  v7 = [v6 unsignedLongLongValue];
  return v7;
}

- (double)pruis_primaryPosterScale
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:25614];

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
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:25615];

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