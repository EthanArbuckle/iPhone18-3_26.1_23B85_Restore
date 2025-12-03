@interface SPUIMutableSearchViewSceneSettings
- (double)revealProgress;
- (id)copyWithZone:(_NSZone *)zone;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
- (unint64_t)presentationIntent;
- (unint64_t)presentationSource;
- (void)setPresentationIntent:(unint64_t)intent;
- (void)setPresentationSource:(unint64_t)source;
- (void)setRevealProgress:(double)progress;
@end

@implementation SPUIMutableSearchViewSceneSettings

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

- (void)setRevealProgress:(double)progress
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:progress];
  [otherSettings setObject:v4 forSetting:1000];
}

- (void)setPresentationSource:(unint64_t)source
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:source];
  [otherSettings setObject:v4 forSetting:1002];
}

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

- (void)setPresentationIntent:(unint64_t)intent
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:intent];
  [otherSettings setObject:v4 forSetting:1003];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SPUISearchViewSceneSettings alloc];

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
      v7.super_class = SPUIMutableSearchViewSceneSettings;
      v5 = [(SPUIMutableLegibilitySceneSettings *)&v7 keyDescriptionForSetting:?];

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
    v13.super_class = SPUIMutableSearchViewSceneSettings;
    v10 = [(SPUIMutableLegibilitySceneSettings *)&v13 valueDescriptionForFlag:flag object:objectCopy ofSetting:setting];
  }

  else
  {
    v10 = SPUISearchViewSceneSettingValueDescription(setting, objectCopy);
  }

  v11 = v10;

  return v11;
}

@end