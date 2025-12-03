@interface SBSUIInCallSceneTransitionContext
- (NSString)analyticsSource;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
- (void)setAnalyticsSource:(id)source;
@end

@implementation SBSUIInCallSceneTransitionContext

- (NSString)analyticsSource
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:2000];

  return v3;
}

- (void)setAnalyticsSource:(id)source
{
  sourceCopy = source;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:sourceCopy forSetting:2000];
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting == 2000)
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

- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting
{
  objectCopy = object;
  v9 = objectCopy;
  if (setting == 2000)
  {
    v10 = objectCopy;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBSUIInCallSceneTransitionContext;
    v10 = [(FBSSettings *)&v13 valueDescriptionForFlag:flag object:objectCopy ofSetting:setting];
  }

  v11 = v10;

  return v11;
}

@end