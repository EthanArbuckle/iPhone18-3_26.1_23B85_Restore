@interface VKAnalyticsQuickActionEvent
- (VKAnalyticsQuickActionEvent)initWithQuickActionType:(id)a3 quickActionsCount:(int64_t)a4 textLength:(int64_t)a5 eventType:(int64_t)a6 customIdentifier:(id)a7;
- (id)coreAnalyticsDictionary;
- (id)description;
@end

@implementation VKAnalyticsQuickActionEvent

- (VKAnalyticsQuickActionEvent)initWithQuickActionType:(id)a3 quickActionsCount:(int64_t)a4 textLength:(int64_t)a5 eventType:(int64_t)a6 customIdentifier:(id)a7
{
  v13 = a3;
  v17.receiver = self;
  v17.super_class = VKAnalyticsQuickActionEvent;
  v14 = [(VKAnalyticsEvent *)&v17 initWithCustomIdentifier:a7];
  v15 = v14;
  if (v14)
  {
    v14->_eventType = a6;
    v14->_quickActionsCount = a4;
    objc_storeStrong(&v14->_quickActionType, a3);
    v15->_textLength = a5;
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
  v4 = [(VKAnalyticsQuickActionEvent *)self quickActionType];
  v5 = v4;
  v6 = &stru_1F2C04538;
  if (v4)
  {
    v6 = v4;
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
  v10 = [(VKAnalyticsEvent *)self bundleIdentifier];
  v14[5] = v10;
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
  v6 = [(VKAnalyticsQuickActionEvent *)self quickActionType];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &stru_1F2C04538;
  }

  v9 = [(VKAnalyticsQuickActionEvent *)self textLength];
  v10 = [(VKAnalyticsQuickActionEvent *)self quickActionsCount];
  v11 = VKMUIStringForBool([(VKAnalyticsEvent *)self isPerformingAutomatedTest]);
  v12 = [(VKAnalyticsEvent *)self bundleIdentifier];
  v13 = [v3 stringWithFormat:@"%@ \n eventType: %@ \n types: %@ \n textLength: %lu \n numberOfQuickActions: %lu \n automatedTest: %@ \n bundleIdentifier: %@ ", v4, v5, v8, v9, v10, v11, v12];

  return v13;
}

@end