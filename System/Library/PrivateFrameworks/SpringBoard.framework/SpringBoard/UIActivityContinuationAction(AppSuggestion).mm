@interface UIActivityContinuationAction(AppSuggestion)
- (uint64_t)initWithIdentifier:()AppSuggestion activityTypeIdentifier:appSuggestion:;
@end

@implementation UIActivityContinuationAction(AppSuggestion)

- (uint64_t)initWithIdentifier:()AppSuggestion activityTypeIdentifier:appSuggestion:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v12 = v11;
  if (v8)
  {
    [v11 setObject:v8 forKeyedSubscript:&unk_283370E20];
  }

  if (v9)
  {
    [v12 setObject:v9 forKeyedSubscript:&unk_283370E38];
  }

  originatingDeviceType = [v10 originatingDeviceType];

  if (originatingDeviceType)
  {
    originatingDeviceType2 = [v10 originatingDeviceType];
    [v12 setObject:originatingDeviceType2 forKeyedSubscript:&unk_283370E50];
  }

  originatingDeviceName = [v10 originatingDeviceName];

  if (originatingDeviceName)
  {
    originatingDeviceName2 = [v10 originatingDeviceName];
    [v12 setObject:originatingDeviceName2 forKeyedSubscript:&unk_283370E68];
  }

  activityType = [v10 activityType];

  if (activityType)
  {
    activityType2 = [v10 activityType];
    [v12 setObject:activityType2 forKeyedSubscript:&unk_283370E80];
  }

  lastUpdateTime = [v10 lastUpdateTime];

  if (lastUpdateTime)
  {
    lastUpdateTime2 = [v10 lastUpdateTime];
    [v12 setObject:lastUpdateTime2 forKeyedSubscript:&unk_283370E98];
  }

  v21 = [self initWithSettings:v12];

  return v21;
}

@end