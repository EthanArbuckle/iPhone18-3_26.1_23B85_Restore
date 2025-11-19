@interface SBUIMutableBannerSceneClientSettings
- (NSString)transitionDismissalPreventionReason;
- (NSString)wantsDefaultGesturePriorityReason;
- (id)copyWithZone:(_NSZone *)a3;
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5;
- (void)setTransitionDismissalPreventionReason:(id)a3;
- (void)setWantsDefaultGesturePriorityReason:(id)a3;
@end

@implementation SBUIMutableBannerSceneClientSettings

- (NSString)transitionDismissalPreventionReason
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:1001];

  return v3;
}

- (void)setTransitionDismissalPreventionReason:(id)a3
{
  v4 = a3;
  v5 = [(FBSSettings *)self otherSettings];
  [v5 setObject:v4 forSetting:1001];
}

- (NSString)wantsDefaultGesturePriorityReason
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:1002];

  return v3;
}

- (void)setWantsDefaultGesturePriorityReason:(id)a3
{
  v4 = a3;
  v5 = [(FBSSettings *)self otherSettings];
  [v5 setObject:v4 forSetting:1002];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SBUIBannerSceneClientSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = SBUIMutableBannerSceneClientSettings;
  v4 = [(BNMutableSceneClientSettings *)&v7 keyDescriptionForSetting:?];
  if (a3 - 1000 <= 2)
  {
    v5 = off_1E789FC28[a3 - 1000];

    v4 = v5;
  }

  return v4;
}

- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5
{
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SBUIMutableBannerSceneClientSettings;
  v9 = [(BNMutableSceneClientSettings *)&v12 valueDescriptionForFlag:a3 object:v8 ofSetting:a5];
  if (a5 - 1000 <= 2)
  {
    v10 = v8;

    v9 = v10;
  }

  return v9;
}

@end