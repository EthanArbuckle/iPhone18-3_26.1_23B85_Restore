@interface SPUISearchViewSceneSettings
- (double)revealProgress;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
- (unint64_t)presentationIntent;
- (unint64_t)presentationSource;
@end

@implementation SPUISearchViewSceneSettings

- (unint64_t)presentationSource
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1002];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (double)revealProgress
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1000];

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
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1003];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [SPUIMutableSearchViewSceneSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  switch(setting)
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

- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting
{
  objectCopy = object;
  if (setting - 1000 > 3 || setting == 1001)
  {
    v13.receiver = self;
    v13.super_class = SPUISearchViewSceneSettings;
    v10 = [(SPUILegibilitySceneSettings *)&v13 valueDescriptionForFlag:flag object:objectCopy ofSetting:setting];
  }

  else
  {
    v10 = SPUISearchViewSceneSettingValueDescription(setting, objectCopy);
  }

  v11 = v10;

  return v11;
}

@end