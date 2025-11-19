@interface SBSSystemNotesPresentationConfiguration(UIUtilities)
- (id)_uiActivityContinuationAction;
@end

@implementation SBSSystemNotesPresentationConfiguration(UIUtilities)

- (id)_uiActivityContinuationAction
{
  v2 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:4];
  v3 = [a1 userActivityData];
  [v2 setObject:v3 forKeyedSubscript:&unk_1F1DB59C8];

  v4 = [a1 userActivity];
  v5 = [v4 activityType];
  [v2 setObject:v5 forKeyedSubscript:&unk_1F1DB59E0];

  v6 = [a1 userActivity];
  v7 = [v6 activityType];
  [v2 setObject:v7 forKeyedSubscript:&unk_1F1DB59F8];

  v8 = [MEMORY[0x1E695DF00] date];
  [v2 setObject:v8 forKeyedSubscript:&unk_1F1DB5A10];

  v9 = [objc_alloc(MEMORY[0x1E69DC630]) initWithSettings:v2];

  return v9;
}

@end