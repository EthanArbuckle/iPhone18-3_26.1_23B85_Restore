@interface UIApplicationSceneTransitionContext
- (BOOL)disableTouchCancellationOnRotation;
- (BOOL)forTesting;
- (BOOL)safeMode;
- (BOOL)shouldTakeKeyboardFocus;
- (BOOL)waitForBackgroundTaskCompletion;
- (NSDictionary)payload;
- (OS_xpc_object)launchMetricsPayload;
- (UISClickAttribution)clickAttribution;
- (UISPasteSharingToken)pasteSharingToken;
- (double)execTime;
- (double)userLaunchEventTime;
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5;
- (int64_t)statusBarAnimation;
- (unint64_t)signpostID;
- (void)setClickAttribution:(id)a3;
- (void)setDisableTouchCancellationOnRotation:(BOOL)a3;
- (void)setExecTime:(double)a3;
- (void)setForTesting:(BOOL)a3;
- (void)setLaunchMetricsPayload:(id)a3;
- (void)setPasteSharingToken:(id)a3;
- (void)setPayload:(id)a3;
- (void)setSafeMode:(BOOL)a3;
- (void)setShouldTakeKeyboardFocus:(BOOL)a3;
- (void)setSignpostID:(unint64_t)a3;
- (void)setStatusBarAnimation:(int64_t)a3;
- (void)setUserLaunchEventTime:(double)a3;
- (void)setWaitForBackgroundTaskCompletion:(BOOL)a3;
@end

@implementation UIApplicationSceneTransitionContext

- (OS_xpc_object)launchMetricsPayload
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:7];

  return v3;
}

- (BOOL)safeMode
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:3];

  return v3;
}

- (NSDictionary)payload
{
  v3 = [(FBSSettings *)self otherSettings];
  v4 = [v3 objectForSetting:1];

  v5 = [(UIApplicationSceneTransitionContext *)self clickAttribution];
  if (v5)
  {
    v6 = [(NSDictionary *)v4 mutableCopy];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = objc_opt_new();
    }

    v9 = v8;

    [(NSDictionary *)v9 setObject:v5 forKey:@"UIApplicationLaunchOptionsEventAttributionKey"];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(UIApplicationSceneTransitionContext *)self pasteSharingToken];
  if (v10)
  {
    if (!v9)
    {
      v11 = [(NSDictionary *)v4 mutableCopy];
      v12 = v11;
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = objc_opt_new();
      }

      v9 = v13;
    }

    [(NSDictionary *)v9 setObject:v10 forKey:@"UIApplicationLaunchOptionsPasteSharingTokenKey"];
  }

  if (v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v4;
  }

  v15 = v14;

  return v14;
}

- (UISClickAttribution)clickAttribution
{
  v2 = MEMORY[0x1E69DEBD0];
  v3 = [(FBSSettings *)self otherSettings];
  v4 = [v3 objectForSetting:12];
  v5 = [v2 bs_secureDecodedFromData:v4];

  return v5;
}

- (UISPasteSharingToken)pasteSharingToken
{
  v2 = MEMORY[0x1E69DEBF8];
  v3 = [(FBSSettings *)self otherSettings];
  v4 = [v3 objectForSetting:13];
  v5 = [v2 bs_secureDecodedFromData:v4];

  return v5;
}

- (BOOL)disableTouchCancellationOnRotation
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:11];

  return v3;
}

- (int64_t)statusBarAnimation
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:10];
  v4 = [v3 integerValue];

  return v4;
}

- (BOOL)shouldTakeKeyboardFocus
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:8];

  return v3;
}

- (BOOL)forTesting
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:2];

  return v3;
}

- (unint64_t)signpostID
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:6];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (double)userLaunchEventTime
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:5];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (double)execTime
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:4];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)setPayload:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"UIApplicationLaunchOptionsEventAttributionKey"];
  if (v5)
  {
    v6 = [v4 mutableCopy];
    [v6 removeObjectForKey:@"UIApplicationLaunchOptionsEventAttributionKey"];
    [(UIApplicationSceneTransitionContext *)self setClickAttribution:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x1E69DECF0];
  v8 = [v4 objectForKey:*MEMORY[0x1E69DECF0]];
  if (v8)
  {
    if (!v6)
    {
      v6 = [v4 mutableCopy];
    }

    [v6 removeObjectForKey:v7];
    [(UIApplicationSceneTransitionContext *)self setPasteSharingToken:v8];
  }

  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = v4;
  }

  v11 = v9;

  v10 = [(FBSSettings *)self otherSettings];
  [v10 setObject:v11 forSetting:1];
}

- (void)setForTesting:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagForBool() forSetting:2];
}

- (void)setSafeMode:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagForBool() forSetting:3];
}

- (void)setUserLaunchEventTime:(double)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [v5 setObject:v4 forSetting:5];
}

- (void)setSignpostID:(unint64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
  [v5 setObject:v4 forSetting:6];
}

- (void)setLaunchMetricsPayload:(id)a3
{
  v4 = a3;
  v5 = [(FBSSettings *)self otherSettings];
  [v5 setObject:v4 forSetting:7];
}

- (void)setExecTime:(double)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [v5 setObject:v4 forSetting:4];
}

- (void)setShouldTakeKeyboardFocus:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagForBool() forSetting:8];
}

- (BOOL)waitForBackgroundTaskCompletion
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:9];

  return v3;
}

- (void)setWaitForBackgroundTaskCompletion:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagForBool() forSetting:9];
}

- (void)setStatusBarAnimation:(int64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v5 setObject:v4 forSetting:10];
}

- (void)setDisableTouchCancellationOnRotation:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagForBool() forSetting:11];
}

- (void)setClickAttribution:(id)a3
{
  v4 = a3;
  v6 = [(FBSSettings *)self otherSettings];
  v5 = [v4 bs_secureEncoded];

  [v6 setObject:v5 forSetting:12];
}

- (void)setPasteSharingToken:(id)a3
{
  v4 = a3;
  v6 = [(FBSSettings *)self otherSettings];
  v5 = [v4 bs_secureEncoded];

  [v6 setObject:v5 forSetting:13];
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  if (a3 - 1 > 0xB)
  {
    return 0;
  }

  else
  {
    return off_1E710A958[a3 - 1];
  }
}

- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5
{
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (a5 <= 0xB)
  {
    if (((1 << a5) & 0x30C) != 0)
    {
      goto LABEL_3;
    }

    if (a5 == 10)
    {
      v11 = [v6 integerValue];
      v12 = @"none";
      if (v11 == 1)
      {
        v12 = @"fade";
      }

      if (v11 == 2)
      {
        v12 = @"slide";
      }

      v9 = v12;
      goto LABEL_4;
    }

    if (a5 == 11)
    {
LABEL_3:
      BSSettingFlagIsYes();
      v9 = NSStringFromBOOL();
LABEL_4:
      v8 = v9;
    }
  }

  return v8;
}

@end