@interface SBUIMutableBannerSceneClientSettings
- (NSString)transitionDismissalPreventionReason;
- (NSString)wantsDefaultGesturePriorityReason;
- (id)copyWithZone:(_NSZone *)zone;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
- (void)setTransitionDismissalPreventionReason:(id)reason;
- (void)setWantsDefaultGesturePriorityReason:(id)reason;
@end

@implementation SBUIMutableBannerSceneClientSettings

- (NSString)transitionDismissalPreventionReason
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1001];

  return v3;
}

- (void)setTransitionDismissalPreventionReason:(id)reason
{
  reasonCopy = reason;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:reasonCopy forSetting:1001];
}

- (NSString)wantsDefaultGesturePriorityReason
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1002];

  return v3;
}

- (void)setWantsDefaultGesturePriorityReason:(id)reason
{
  reasonCopy = reason;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:reasonCopy forSetting:1002];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SBUIBannerSceneClientSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  v7.receiver = self;
  v7.super_class = SBUIMutableBannerSceneClientSettings;
  v4 = [(BNMutableSceneClientSettings *)&v7 keyDescriptionForSetting:?];
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
  v12.super_class = SBUIMutableBannerSceneClientSettings;
  v9 = [(BNMutableSceneClientSettings *)&v12 valueDescriptionForFlag:flag object:objectCopy ofSetting:setting];
  if (setting - 1000 <= 2)
  {
    v10 = objectCopy;

    v9 = v10;
  }

  return v9;
}

@end