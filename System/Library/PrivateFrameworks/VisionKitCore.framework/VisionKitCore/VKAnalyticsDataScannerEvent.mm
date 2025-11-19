@interface VKAnalyticsDataScannerEvent
- (BOOL)isHealth;
- (VKAnalyticsDataScannerEvent)initWithFeedDuration:(double)a3 scannedForText:(BOOL)a4 scannedForBarcodes:(BOOL)a5 customIdentifier:(id)a6;
- (id)coreAnalyticsDictionary;
- (id)description;
@end

@implementation VKAnalyticsDataScannerEvent

- (VKAnalyticsDataScannerEvent)initWithFeedDuration:(double)a3 scannedForText:(BOOL)a4 scannedForBarcodes:(BOOL)a5 customIdentifier:(id)a6
{
  v10.receiver = self;
  v10.super_class = VKAnalyticsDataScannerEvent;
  result = [(VKAnalyticsEvent *)&v10 initWithCustomIdentifier:a6];
  if (result)
  {
    result->_feedDuration = a3;
    result->_didScanForText = a4;
    result->_didScanForBarcodes = a5;
  }

  return result;
}

- (id)coreAnalyticsDictionary
{
  v12[5] = *MEMORY[0x1E69E9840];
  v11[0] = @"feedDuration";
  v3 = MEMORY[0x1E696AD98];
  [(VKAnalyticsDataScannerEvent *)self feedDuration];
  v4 = [v3 numberWithDouble:?];
  v12[0] = v4;
  v11[1] = @"didScanForText";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[VKAnalyticsDataScannerEvent didScanForText](self, "didScanForText")}];
  v12[1] = v5;
  v11[2] = @"didScanForBarcodes";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[VKAnalyticsDataScannerEvent didScanForBarcodes](self, "didScanForBarcodes")}];
  v12[2] = v6;
  v11[3] = @"automatedTest";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[VKAnalyticsEvent isPerformingAutomatedTest](self, "isPerformingAutomatedTest")}];
  v12[3] = v7;
  v11[4] = @"bundleIdentifier";
  v8 = [(VKAnalyticsEvent *)self bundleIdentifier];
  v12[4] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:5];

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VKAnalyticsDataScannerEvent;
  v4 = [(VKAnalyticsDataScannerEvent *)&v8 description];
  v5 = [(VKAnalyticsDataScannerEvent *)self coreAnalyticsDictionary];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (BOOL)isHealth
{
  v2 = [(VKAnalyticsEvent *)self bundleIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.Health"];

  return v3;
}

@end