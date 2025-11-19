@interface VKAnalyticsMRCEvent
- (VKAnalyticsMRCEvent)initWithElement:(id)a3 eventType:(int64_t)a4 customIdentifier:(id)a5;
- (id)coreAnalyticsDictionary;
- (id)description;
@end

@implementation VKAnalyticsMRCEvent

- (VKAnalyticsMRCEvent)initWithElement:(id)a3 eventType:(int64_t)a4 customIdentifier:(id)a5
{
  v8 = a3;
  v16.receiver = self;
  v16.super_class = VKAnalyticsMRCEvent;
  v9 = [(VKAnalyticsEvent *)&v16 initWithCustomIdentifier:a5];
  v10 = v9;
  if (v9)
  {
    v9->_eventType = a4;
    v11 = [v8 barcodeObservation];
    v12 = [v11 symbology];
    barcodeSymbology = v10->_barcodeSymbology;
    v10->_barcodeSymbology = v12;

    v14 = [v8 barcodeAction];
    v10->__dataType = [v14 payloadDataType];
  }

  return v10;
}

- (id)coreAnalyticsDictionary
{
  v11[5] = *MEMORY[0x1E69E9840];
  v10[0] = @"dataTypes";
  v3 = VKMUIStringForBCSParsedDataType([(VKAnalyticsMRCEvent *)self dataType]);
  v11[0] = v3;
  v10[1] = @"symbology";
  v4 = [(VKAnalyticsMRCEvent *)self barcodeSymbology];
  v11[1] = v4;
  v10[2] = @"eventType";
  v5 = VKMUIStringForVKAnalyticsDDEventType([(VKAnalyticsMRCEvent *)self eventType]);
  v11[2] = v5;
  v10[3] = @"automatedTest";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[VKAnalyticsEvent isPerformingAutomatedTest](self, "isPerformingAutomatedTest")}];
  v11[3] = v6;
  v10[4] = @"bundleIdentifier";
  v7 = [(VKAnalyticsEvent *)self bundleIdentifier];
  v11[4] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:5];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v12.receiver = self;
  v12.super_class = VKAnalyticsMRCEvent;
  v4 = [(VKAnalyticsMRCEvent *)&v12 description];
  v5 = VKMUIStringForVKAnalyticsDDEventType([(VKAnalyticsMRCEvent *)self eventType]);
  v6 = VKMUIStringForBCSParsedDataType([(VKAnalyticsMRCEvent *)self dataType]);
  v7 = [(VKAnalyticsMRCEvent *)self barcodeSymbology];
  v8 = VKMUIStringForBool([(VKAnalyticsEvent *)self isPerformingAutomatedTest]);
  v9 = [(VKAnalyticsEvent *)self bundleIdentifier];
  v10 = [v3 stringWithFormat:@"%@ \n ddEventType: %@ \n bcsTypes: %@ \n symbology: %@ \n automatedTest: %@ \n bundleIdentifier: %@", v4, v5, v6, v7, v8, v9];

  return v10;
}

@end