@interface VKAnalyticsSubjectEvent
- (VKAnalyticsSubjectEvent)initWithEventType:(int64_t)type interactionType:(int64_t)interactionType subjectFound:(BOOL)found processingDuration:(double)duration customIdentifier:(id)identifier;
- (id)coreAnalyticsDictionary;
- (id)description;
@end

@implementation VKAnalyticsSubjectEvent

- (VKAnalyticsSubjectEvent)initWithEventType:(int64_t)type interactionType:(int64_t)interactionType subjectFound:(BOOL)found processingDuration:(double)duration customIdentifier:(id)identifier
{
  v12.receiver = self;
  v12.super_class = VKAnalyticsSubjectEvent;
  result = [(VKAnalyticsEvent *)&v12 initWithCustomIdentifier:identifier];
  if (result)
  {
    result->_eventType = type;
    result->_subjectFound = found;
    result->_processingDuration = duration;
    result->_interactionType = interactionType;
  }

  return result;
}

- (id)coreAnalyticsDictionary
{
  v13[6] = *MEMORY[0x1E69E9840];
  v12[0] = @"eventType";
  v3 = VKMUIStringForVKAnalyticsSubjectEventType([(VKAnalyticsSubjectEvent *)self eventType]);
  v13[0] = v3;
  v12[1] = @"interactionType";
  v4 = VKMUIStringForVKAnalyticsSubjectInteractionType([(VKAnalyticsSubjectEvent *)self interactionType]);
  v13[1] = v4;
  v12[2] = @"subjectFound";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[VKAnalyticsSubjectEvent subjectFound](self, "subjectFound")}];
  v13[2] = v5;
  v12[3] = @"processingDuration";
  v6 = MEMORY[0x1E696AD98];
  [(VKAnalyticsSubjectEvent *)self processingDuration];
  v7 = [v6 numberWithDouble:?];
  v13[3] = v7;
  v12[4] = @"automatedTest";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[VKAnalyticsEvent isPerformingAutomatedTest](self, "isPerformingAutomatedTest")}];
  v13[4] = v8;
  v12[5] = @"bundleId";
  bundleIdentifier = [(VKAnalyticsEvent *)self bundleIdentifier];
  v13[5] = bundleIdentifier;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:6];

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v14.receiver = self;
  v14.super_class = VKAnalyticsSubjectEvent;
  v4 = [(VKAnalyticsSubjectEvent *)&v14 description];
  v5 = VKMUIStringForVKAnalyticsSubjectEventType([(VKAnalyticsSubjectEvent *)self eventType]);
  v6 = VKMUIStringForVKAnalyticsSubjectInteractionType([(VKAnalyticsSubjectEvent *)self interactionType]);
  v7 = VKMUIStringForBool([(VKAnalyticsSubjectEvent *)self subjectFound]);
  [(VKAnalyticsSubjectEvent *)self processingDuration];
  v9 = v8;
  v10 = VKMUIStringForBool([(VKAnalyticsEvent *)self isPerformingAutomatedTest]);
  bundleIdentifier = [(VKAnalyticsEvent *)self bundleIdentifier];
  v12 = [v3 stringWithFormat:@"%@ \n eventType: %@ \n interactionType: %@ \n subjectFound: %@ \n processingDuration: %f \n automatedTest: %@ \n bundleId: %@ ", v4, v5, v6, v7, v9, v10, bundleIdentifier];

  return v12;
}

@end