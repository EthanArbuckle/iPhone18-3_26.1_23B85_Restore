@interface VKAnalyticsDataScannerEvent
- (BOOL)isHealth;
- (VKAnalyticsDataScannerEvent)initWithFeedDuration:(double)duration scannedForText:(BOOL)text scannedForBarcodes:(BOOL)barcodes customIdentifier:(id)identifier;
- (id)coreAnalyticsDictionary;
- (id)description;
@end

@implementation VKAnalyticsDataScannerEvent

- (VKAnalyticsDataScannerEvent)initWithFeedDuration:(double)duration scannedForText:(BOOL)text scannedForBarcodes:(BOOL)barcodes customIdentifier:(id)identifier
{
  v10.receiver = self;
  v10.super_class = VKAnalyticsDataScannerEvent;
  result = [(VKAnalyticsEvent *)&v10 initWithCustomIdentifier:identifier];
  if (result)
  {
    result->_feedDuration = duration;
    result->_didScanForText = text;
    result->_didScanForBarcodes = barcodes;
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
  bundleIdentifier = [(VKAnalyticsEvent *)self bundleIdentifier];
  v12[4] = bundleIdentifier;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:5];

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VKAnalyticsDataScannerEvent;
  v4 = [(VKAnalyticsDataScannerEvent *)&v8 description];
  coreAnalyticsDictionary = [(VKAnalyticsDataScannerEvent *)self coreAnalyticsDictionary];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, coreAnalyticsDictionary];

  return v6;
}

- (BOOL)isHealth
{
  bundleIdentifier = [(VKAnalyticsEvent *)self bundleIdentifier];
  v3 = [bundleIdentifier isEqualToString:@"com.apple.Health"];

  return v3;
}

@end