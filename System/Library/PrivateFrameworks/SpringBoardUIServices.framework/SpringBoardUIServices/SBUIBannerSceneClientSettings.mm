@interface SBUIBannerSceneClientSettings
- (NSString)transitionDismissalPreventionReason;
- (NSString)wantsDefaultGesturePriorityReason;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
@end

@implementation SBUIBannerSceneClientSettings

- (NSString)transitionDismissalPreventionReason
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1001];

  return v3;
}

- (NSString)wantsDefaultGesturePriorityReason
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1002];

  return v3;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [SBUIMutableBannerSceneClientSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  v7.receiver = self;
  v7.super_class = SBUIBannerSceneClientSettings;
  v4 = [(BNSceneClientSettings *)&v7 keyDescriptionForSetting:?];
  if (setting - 1000 <= 2)
  {
    v5 = off_1E789FC28[setting - 1000];

    v4 = v5;
  }

  return v4;
}

- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting
{
  objectCopy = object;
  v12.receiver = self;
  v12.super_class = SBUIBannerSceneClientSettings;
  v9 = [(BNSceneClientSettings *)&v12 valueDescriptionForFlag:flag object:objectCopy ofSetting:setting];
  if (setting - 1000 <= 2)
  {
    v10 = objectCopy;

    v9 = v10;
  }

  return v9;
}

@end