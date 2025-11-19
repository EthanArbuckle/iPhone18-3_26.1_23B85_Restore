@interface SPUISearchViewSceneSettings
- (double)revealProgress;
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5;
- (unint64_t)presentationIntent;
- (unint64_t)presentationSource;
@end

@implementation SPUISearchViewSceneSettings

- (unint64_t)presentationSource
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:1002];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)revealProgress
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:1000];

  objc_opt_class();
  v4 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    [v3 doubleValue];
    v4 = v5;
  }

  return v4;
}

- (unint64_t)presentationIntent
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:1003];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [SPUIMutableSearchViewSceneSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  switch(a3)
  {
    case 0x3E8uLL:
      v5 = @"revealProgress";

      break;
    case 0x3EBuLL:
      v5 = @"deactivationReasons";

      break;
    case 0x3EAuLL:
      v5 = @"presentationSource";

      break;
    default:
      v8 = v3;
      v9 = v4;
      v7.receiver = self;
      v7.super_class = SPUISearchViewSceneSettings;
      v5 = [(SPUILegibilitySceneSettings *)&v7 keyDescriptionForSetting:?];

      break;
  }

  return v5;
}

- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5
{
  v8 = a4;
  if (a5 - 1000 > 3 || a5 == 1001)
  {
    v13.receiver = self;
    v13.super_class = SPUISearchViewSceneSettings;
    v10 = [(SPUILegibilitySceneSettings *)&v13 valueDescriptionForFlag:a3 object:v8 ofSetting:a5];
  }

  else
  {
    v10 = SPUISearchViewSceneSettingValueDescription(a5, v8);
  }

  v11 = v10;

  return v11;
}

@end