@interface SBSUIInCallSceneTransitionContext
- (NSString)analyticsSource;
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5;
- (void)setAnalyticsSource:(id)a3;
@end

@implementation SBSUIInCallSceneTransitionContext

- (NSString)analyticsSource
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:2000];

  return v3;
}

- (void)setAnalyticsSource:(id)a3
{
  v4 = a3;
  v5 = [(FBSSettings *)self otherSettings];
  [v5 setObject:v4 forSetting:2000];
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  if (a3 == 2000)
  {
    v5 = @"analyticsSource";
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = SBSUIInCallSceneTransitionContext;
    v5 = [(FBSSettings *)&v7 keyDescriptionForSetting:?];
  }

  return v5;
}

- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5
{
  v8 = a4;
  v9 = v8;
  if (a5 == 2000)
  {
    v10 = v8;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBSUIInCallSceneTransitionContext;
    v10 = [(FBSSettings *)&v13 valueDescriptionForFlag:a3 object:v8 ofSetting:a5];
  }

  v11 = v10;

  return v11;
}

@end