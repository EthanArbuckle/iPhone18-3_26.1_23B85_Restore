@interface VKAnalyticsQuickActionEvent
- (VKAnalyticsQuickActionEvent)initWithQuickActionType:(id)type quickActionsCount:(int64_t)count textLength:(int64_t)length eventType:(int64_t)eventType customIdentifier:(id)identifier;
- (id)coreAnalyticsDictionary;
- (id)description;
@end

@implementation VKAnalyticsQuickActionEvent

- (VKAnalyticsQuickActionEvent)initWithQuickActionType:(id)type quickActionsCount:(int64_t)count textLength:(int64_t)length eventType:(int64_t)eventType customIdentifier:(id)identifier
{
  typeCopy = type;
  v17.receiver = self;
  v17.super_class = VKAnalyticsQuickActionEvent;
  v14 = [(VKAnalyticsEvent *)&v17 initWithCustomIdentifier:identifier];
  v15 = v14;
  if (v14)
  {
    v14->_eventType = eventType;
    v14->_quickActionsCount = count;
    objc_storeStrong(&v14->_quickActionType, type);
    v15->_textLength = length;
  }

  return v15;
}

- (id)coreAnalyticsDictionary
{
  v14[6] = *MEMORY[0x1E69E9840];
  v13[0] = @"eventType";
  v3 = VKMUIStringForVKAnalyticsQAEventType([(VKAnalyticsQuickActionEvent *)self eventType]);
  v14[0] = v3;
  v13[1] = @"types";
  quickActionType = [(VKAnalyticsQuickActionEvent *)self quickActionType];
  v5 = quickActionType;
  v6 = &stru_1F2C04538;
  if (quickActionType)
  {
    v6 = quickActionType;
  }

  v14[1] = v6;
  v13[2] = @"textLength";
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[VKAnalyticsQuickActionEvent textLength](self, "textLength")}];
  v14[2] = v7;
  v13[3] = @"numberOfQuickActions";
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[VKAnalyticsQuickActionEvent quickActionsCount](self, "quickActionsCount")}];
  v14[3] = v8;
  v13[4] = @"automatedTest";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[VKAnalyticsEvent isPerformingAutomatedTest](self, "isPerformingAutomatedTest")}];
  v14[4] = v9;
  v13[5] = @"bundleIdentifier";
  bundleIdentifier = [(VKAnalyticsEvent *)self bundleIdentifier];
  v14[5] = bundleIdentifier;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:6];

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v15.receiver = self;
  v15.super_class = VKAnalyticsQuickActionEvent;
  v4 = [(VKAnalyticsQuickActionEvent *)&v15 description];
  v5 = VKMUIStringForVKAnalyticsQAEventType([(VKAnalyticsQuickActionEvent *)self eventType]);
  quickActionType = [(VKAnalyticsQuickActionEvent *)self quickActionType];
  v7 = quickActionType;
  if (quickActionType)
  {
    v8 = quickActionType;
  }

  else
  {
    v8 = &stru_1F2C04538;
  }

  textLength = [(VKAnalyticsQuickActionEvent *)self textLength];
  quickActionsCount = [(VKAnalyticsQuickActionEvent *)self quickActionsCount];
  v11 = VKMUIStringForBool([(VKAnalyticsEvent *)self isPerformingAutomatedTest]);
  bundleIdentifier = [(VKAnalyticsEvent *)self bundleIdentifier];
  v13 = [v3 stringWithFormat:@"%@ \n eventType: %@ \n types: %@ \n textLength: %lu \n numberOfQuickActions: %lu \n automatedTest: %@ \n bundleIdentifier: %@ ", v4, v5, v8, textLength, quickActionsCount, v11, bundleIdentifier];

  return v13;
}

@end