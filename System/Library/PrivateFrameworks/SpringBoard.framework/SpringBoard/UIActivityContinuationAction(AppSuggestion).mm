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

  v13 = [v10 originatingDeviceType];

  if (v13)
  {
    v14 = [v10 originatingDeviceType];
    [v12 setObject:v14 forKeyedSubscript:&unk_283370E50];
  }

  v15 = [v10 originatingDeviceName];

  if (v15)
  {
    v16 = [v10 originatingDeviceName];
    [v12 setObject:v16 forKeyedSubscript:&unk_283370E68];
  }

  v17 = [v10 activityType];

  if (v17)
  {
    v18 = [v10 activityType];
    [v12 setObject:v18 forKeyedSubscript:&unk_283370E80];
  }

  v19 = [v10 lastUpdateTime];

  if (v19)
  {
    v20 = [v10 lastUpdateTime];
    [v12 setObject:v20 forKeyedSubscript:&unk_283370E98];
  }

  v21 = [a1 initWithSettings:v12];

  return v21;
}

@end