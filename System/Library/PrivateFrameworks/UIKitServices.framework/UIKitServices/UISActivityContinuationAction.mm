@interface UISActivityContinuationAction
+ (void)buildWithUserActivity:(id)activity completion:(id)completion;
- (BOOL)isKindOfClass:(Class)class;
- (NSData)userActivityData;
- (NSDate)lastUpdateTime;
- (NSString)activityType;
- (NSString)activityTypeIdentifier;
- (NSString)identifier;
- (NSString)originatingDeviceName;
- (NSString)originatingDeviceType;
- (UISActivityContinuationAction)initWithSettings:(id)settings;
- (id)keyDescriptionForSetting:(unint64_t)setting;
@end

@implementation UISActivityContinuationAction

+ (void)buildWithUserActivity:(id)activity completion:(id)completion
{
  completionCopy = completion;
  activityCopy = activity;
  activityType = [activityCopy activityType];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__UISActivityContinuationAction_buildWithUserActivity_completion___block_invoke;
  v11[3] = &unk_1E74591C0;
  v13 = completionCopy;
  selfCopy = self;
  v12 = activityType;
  v9 = activityType;
  v10 = completionCopy;
  [activityCopy _createUserActivityDataWithOptions:MEMORY[0x1E695E0F8] completionHandler:v11];
}

void __66__UISActivityContinuationAction_buildWithUserActivity_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13[3] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (v5)
    {
      v7 = objc_alloc(*(a1 + 48));
      v12[0] = &unk_1F0A843A0;
      v12[1] = &unk_1F0A843B8;
      v8 = *(a1 + 32);
      v13[0] = v5;
      v13[1] = v8;
      v12[2] = &unk_1F0A843D0;
      v9 = [MEMORY[0x1E695DF00] date];
      v13[2] = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
      v11 = [v7 initWithSettings:v10];
    }

    else
    {
      v11 = 0;
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (UISActivityContinuationAction)initWithSettings:(id)settings
{
  settingsCopy = settings;
  if (!settingsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISActivityContinuationAction.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"settings"}];
  }

  v6 = objc_alloc_init(MEMORY[0x1E698E700]);
  v7 = [settingsCopy objectForKey:&unk_1F0A843E8];
  [v6 setObject:v7 forSetting:1];

  v8 = [settingsCopy objectForKey:&unk_1F0A84400];
  [v6 setObject:v8 forSetting:2];

  v9 = [settingsCopy objectForKey:&unk_1F0A84418];
  [v6 setObject:v9 forSetting:3];

  v10 = [settingsCopy objectForKey:&unk_1F0A84430];
  [v6 setObject:v10 forSetting:4];

  v11 = [settingsCopy objectForKey:&unk_1F0A843B8];
  [v6 setObject:v11 forSetting:5];

  v12 = [settingsCopy objectForKey:&unk_1F0A843D0];
  [v6 setObject:v12 forSetting:6];

  v13 = [settingsCopy objectForKey:&unk_1F0A843A0];
  [v6 setObject:v13 forSetting:7];

  v17.receiver = self;
  v17.super_class = UISActivityContinuationAction;
  v14 = [(UISActivityContinuationAction *)&v17 initWithInfo:v6 responder:0];

  return v14;
}

- (NSString)identifier
{
  info = [(UISActivityContinuationAction *)self info];
  v3 = [info objectForSetting:1];

  return v3;
}

- (NSString)activityTypeIdentifier
{
  info = [(UISActivityContinuationAction *)self info];
  v3 = [info objectForSetting:2];

  return v3;
}

- (NSString)originatingDeviceType
{
  info = [(UISActivityContinuationAction *)self info];
  v3 = [info objectForSetting:3];

  return v3;
}

- (NSString)originatingDeviceName
{
  info = [(UISActivityContinuationAction *)self info];
  v3 = [info objectForSetting:4];

  return v3;
}

- (NSString)activityType
{
  info = [(UISActivityContinuationAction *)self info];
  v3 = [info objectForSetting:5];

  return v3;
}

- (NSDate)lastUpdateTime
{
  info = [(UISActivityContinuationAction *)self info];
  v3 = [info objectForSetting:6];

  return v3;
}

- (NSData)userActivityData
{
  info = [(UISActivityContinuationAction *)self info];
  v3 = [info objectForSetting:7];

  return v3;
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting - 1 > 6)
  {
    return 0;
  }

  else
  {
    return off_1E74591E0[setting - 1];
  }
}

- (BOOL)isKindOfClass:(Class)class
{
  v5.receiver = self;
  v5.super_class = UISActivityContinuationAction;
  if ([(UISActivityContinuationAction *)&v5 isKindOfClass:?])
  {
    return 1;
  }

  else
  {
    return [(objc_class *)class isSubclassOfClass:objc_opt_class()];
  }
}

@end