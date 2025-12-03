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
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
- (int64_t)statusBarAnimation;
- (unint64_t)signpostID;
- (void)setClickAttribution:(id)attribution;
- (void)setDisableTouchCancellationOnRotation:(BOOL)rotation;
- (void)setExecTime:(double)time;
- (void)setForTesting:(BOOL)testing;
- (void)setLaunchMetricsPayload:(id)payload;
- (void)setPasteSharingToken:(id)token;
- (void)setPayload:(id)payload;
- (void)setSafeMode:(BOOL)mode;
- (void)setShouldTakeKeyboardFocus:(BOOL)focus;
- (void)setSignpostID:(unint64_t)d;
- (void)setStatusBarAnimation:(int64_t)animation;
- (void)setUserLaunchEventTime:(double)time;
- (void)setWaitForBackgroundTaskCompletion:(BOOL)completion;
@end

@implementation UIApplicationSceneTransitionContext

- (OS_xpc_object)launchMetricsPayload
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:7];

  return v3;
}

- (BOOL)safeMode
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:3];

  return v3;
}

- (NSDictionary)payload
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [otherSettings objectForSetting:1];

  clickAttribution = [(UIApplicationSceneTransitionContext *)self clickAttribution];
  if (clickAttribution)
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

    [(NSDictionary *)v9 setObject:clickAttribution forKey:@"UIApplicationLaunchOptionsEventAttributionKey"];
  }

  else
  {
    v9 = 0;
  }

  pasteSharingToken = [(UIApplicationSceneTransitionContext *)self pasteSharingToken];
  if (pasteSharingToken)
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

    [(NSDictionary *)v9 setObject:pasteSharingToken forKey:@"UIApplicationLaunchOptionsPasteSharingTokenKey"];
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
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [otherSettings objectForSetting:12];
  v5 = [v2 bs_secureDecodedFromData:v4];

  return v5;
}

- (UISPasteSharingToken)pasteSharingToken
{
  v2 = MEMORY[0x1E69DEBF8];
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [otherSettings objectForSetting:13];
  v5 = [v2 bs_secureDecodedFromData:v4];

  return v5;
}

- (BOOL)disableTouchCancellationOnRotation
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:11];

  return v3;
}

- (int64_t)statusBarAnimation
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:10];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (BOOL)shouldTakeKeyboardFocus
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:8];

  return v3;
}

- (BOOL)forTesting
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:2];

  return v3;
}

- (unint64_t)signpostID
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:6];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (double)userLaunchEventTime
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:5];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (double)execTime
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:4];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)setPayload:(id)payload
{
  payloadCopy = payload;
  v5 = [payloadCopy objectForKey:@"UIApplicationLaunchOptionsEventAttributionKey"];
  if (v5)
  {
    v6 = [payloadCopy mutableCopy];
    [v6 removeObjectForKey:@"UIApplicationLaunchOptionsEventAttributionKey"];
    [(UIApplicationSceneTransitionContext *)self setClickAttribution:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x1E69DECF0];
  v8 = [payloadCopy objectForKey:*MEMORY[0x1E69DECF0]];
  if (v8)
  {
    if (!v6)
    {
      v6 = [payloadCopy mutableCopy];
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
    v9 = payloadCopy;
  }

  v11 = v9;

  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:v11 forSetting:1];
}

- (void)setForTesting:(BOOL)testing
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:2];
}

- (void)setSafeMode:(BOOL)mode
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:3];
}

- (void)setUserLaunchEventTime:(double)time
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:time];
  [otherSettings setObject:v4 forSetting:5];
}

- (void)setSignpostID:(unint64_t)d
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:d];
  [otherSettings setObject:v4 forSetting:6];
}

- (void)setLaunchMetricsPayload:(id)payload
{
  payloadCopy = payload;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:payloadCopy forSetting:7];
}

- (void)setExecTime:(double)time
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:time];
  [otherSettings setObject:v4 forSetting:4];
}

- (void)setShouldTakeKeyboardFocus:(BOOL)focus
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:8];
}

- (BOOL)waitForBackgroundTaskCompletion
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:9];

  return v3;
}

- (void)setWaitForBackgroundTaskCompletion:(BOOL)completion
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:9];
}

- (void)setStatusBarAnimation:(int64_t)animation
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:animation];
  [otherSettings setObject:v4 forSetting:10];
}

- (void)setDisableTouchCancellationOnRotation:(BOOL)rotation
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:11];
}

- (void)setClickAttribution:(id)attribution
{
  attributionCopy = attribution;
  otherSettings = [(FBSSettings *)self otherSettings];
  bs_secureEncoded = [attributionCopy bs_secureEncoded];

  [otherSettings setObject:bs_secureEncoded forSetting:12];
}

- (void)setPasteSharingToken:(id)token
{
  tokenCopy = token;
  otherSettings = [(FBSSettings *)self otherSettings];
  bs_secureEncoded = [tokenCopy bs_secureEncoded];

  [otherSettings setObject:bs_secureEncoded forSetting:13];
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting - 1 > 0xB)
  {
    return 0;
  }

  else
  {
    return off_1E710A958[setting - 1];
  }
}

- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting
{
  objectCopy = object;
  v7 = objectCopy;
  v8 = 0;
  if (setting <= 0xB)
  {
    if (((1 << setting) & 0x30C) != 0)
    {
      goto LABEL_3;
    }

    if (setting == 10)
    {
      integerValue = [objectCopy integerValue];
      v12 = @"none";
      if (integerValue == 1)
      {
        v12 = @"fade";
      }

      if (integerValue == 2)
      {
        v12 = @"slide";
      }

      v9 = v12;
      goto LABEL_4;
    }

    if (setting == 11)
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