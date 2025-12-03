@interface SBSSystemNotesPresentationConfiguration(UIUtilities)
- (id)_uiActivityContinuationAction;
@end

@implementation SBSSystemNotesPresentationConfiguration(UIUtilities)

- (id)_uiActivityContinuationAction
{
  v2 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:4];
  userActivityData = [self userActivityData];
  [v2 setObject:userActivityData forKeyedSubscript:&unk_1F1DB59C8];

  userActivity = [self userActivity];
  activityType = [userActivity activityType];
  [v2 setObject:activityType forKeyedSubscript:&unk_1F1DB59E0];

  userActivity2 = [self userActivity];
  activityType2 = [userActivity2 activityType];
  [v2 setObject:activityType2 forKeyedSubscript:&unk_1F1DB59F8];

  date = [MEMORY[0x1E695DF00] date];
  [v2 setObject:date forKeyedSubscript:&unk_1F1DB5A10];

  v9 = [objc_alloc(MEMORY[0x1E69DC630]) initWithSettings:v2];

  return v9;
}

@end