@interface VKAnalyticsInteractionEvent
- (VKAnalyticsInteractionEvent)initWithEventType:(int64_t)type analysis:(id)analysis source:(int64_t)source interactionTypes:(unint64_t)types buttonActive:(BOOL)active customIdentifier:(id)identifier;
- (id)coreAnalyticsDictionary;
- (id)description;
@end

@implementation VKAnalyticsInteractionEvent

- (VKAnalyticsInteractionEvent)initWithEventType:(int64_t)type analysis:(id)analysis source:(int64_t)source interactionTypes:(unint64_t)types buttonActive:(BOOL)active customIdentifier:(id)identifier
{
  analysisCopy = analysis;
  v23.receiver = self;
  v23.super_class = VKAnalyticsInteractionEvent;
  v15 = [(VKAnalyticsEvent *)&v23 initWithCustomIdentifier:identifier];
  v16 = v15;
  if (v15)
  {
    v15->_eventType = type;
    v15->_analysisButtonActive = active;
    v15->_source = source;
    v15->_activeInteractionTypes = types;
    text = [analysisCopy text];
    v16->_textLength = [text length];

    textDataDetectorElements = [analysisCopy textDataDetectorElements];
    v16->_ddCount = [textDataDetectorElements count];

    mrcDataDetectorElements = [analysisCopy mrcDataDetectorElements];
    v16->_mrcCount = [mrcDataDetectorElements count];

    visualSearchResult = [analysisCopy visualSearchResult];
    resultItems = [visualSearchResult resultItems];
    v16->_vsCount = [resultItems count];
  }

  return v16;
}

- (id)coreAnalyticsDictionary
{
  v16[10] = *MEMORY[0x1E69E9840];
  v15[0] = @"eventSource";
  v14 = VKMUIStringForVKAnalyticsEventSource([(VKAnalyticsInteractionEvent *)self source]);
  v16[0] = v14;
  v15[1] = @"analysisButtonActive";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[VKAnalyticsInteractionEvent analysisButtonActive](self, "analysisButtonActive")}];
  v16[1] = v3;
  v15[2] = @"activeInteractionTypes";
  v4 = VKMUIStringForAnalysisInteractionTypes([(VKAnalyticsInteractionEvent *)self activeInteractionTypes]);
  v16[2] = v4;
  v15[3] = @"eventType";
  v5 = VKMUIStringForVKAnalyticsInteractionEventType([(VKAnalyticsInteractionEvent *)self eventType]);
  v16[3] = v5;
  v15[4] = @"textLength";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[VKAnalyticsInteractionEvent textLength](self, "textLength")}];
  v16[4] = v6;
  v15[5] = @"ddCount";
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[VKAnalyticsInteractionEvent ddCount](self, "ddCount")}];
  v16[5] = v7;
  v15[6] = @"mrcCount";
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[VKAnalyticsInteractionEvent mrcCount](self, "mrcCount")}];
  v16[6] = v8;
  v15[7] = @"vsCount";
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[VKAnalyticsInteractionEvent vsCount](self, "vsCount")}];
  v16[7] = v9;
  v15[8] = @"automatedTest";
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[VKAnalyticsEvent isPerformingAutomatedTest](self, "isPerformingAutomatedTest")}];
  v16[8] = v10;
  v15[9] = @"bundleIdentifier";
  bundleIdentifier = [(VKAnalyticsEvent *)self bundleIdentifier];
  v16[9] = bundleIdentifier;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:10];

  return v12;
}

- (id)description
{
  v14 = MEMORY[0x1E696AEC0];
  v17.receiver = self;
  v17.super_class = VKAnalyticsInteractionEvent;
  v16 = [(VKAnalyticsInteractionEvent *)&v17 description];
  v3 = VKMUIStringForVKAnalyticsInteractionEventType([(VKAnalyticsInteractionEvent *)self eventType]);
  v4 = VKMUIStringForAnalysisInteractionTypes([(VKAnalyticsInteractionEvent *)self activeInteractionTypes]);
  v5 = VKMUIStringForVKAnalyticsEventSource([(VKAnalyticsInteractionEvent *)self source]);
  v13 = VKMUIStringForBool([(VKAnalyticsInteractionEvent *)self analysisButtonActive]);
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[VKAnalyticsInteractionEvent textLength](self, "textLength")}];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[VKAnalyticsInteractionEvent ddCount](self, "ddCount")}];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[VKAnalyticsInteractionEvent mrcCount](self, "mrcCount")}];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[VKAnalyticsInteractionEvent vsCount](self, "vsCount")}];
  v10 = VKMUIStringForBool([(VKAnalyticsEvent *)self isPerformingAutomatedTest]);
  bundleIdentifier = [(VKAnalyticsEvent *)self bundleIdentifier];
  v15 = [v14 stringWithFormat:@"%@ \n eventType: %@ \n activeInteractionTypes: %@ \n source: %@ \n analysisButtonActive: %@ \n textLength: %@ \n ddCount: %@ \n mrcCount: %@ \n vsCount: %@ \n automatedTest: %@ \n bundleIdentifier: %@", v16, v3, v4, v5, v13, v6, v7, v8, v9, v10, bundleIdentifier];

  return v15;
}

@end