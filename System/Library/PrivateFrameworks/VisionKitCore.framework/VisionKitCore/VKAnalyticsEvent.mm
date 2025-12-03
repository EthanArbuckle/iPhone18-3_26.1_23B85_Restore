@interface VKAnalyticsEvent
- (NSString)bundleIdentifier;
- (VKAnalyticsAnalyzerEvent)analyzerEvent;
- (VKAnalyticsDDEvent)ddEvent;
- (VKAnalyticsDataScannerEvent)dataScannerEvent;
- (VKAnalyticsEvent)initWithCustomIdentifier:(id)identifier;
- (VKAnalyticsInteractionEvent)interactionEvent;
- (VKAnalyticsMRCEvent)mrcEvent;
- (VKAnalyticsQuickActionEvent)quickActionEvent;
- (VKAnalyticsSubjectEvent)subjectEvent;
- (VKAnalyticsTextEvent)textEvent;
- (VKAnalyticsVisualSearchEvent)visualSearchEvent;
- (id)bundleIdentifierCleansingIfNecessaryWithCustomIdentifier:(id)identifier;
@end

@implementation VKAnalyticsEvent

- (VKAnalyticsEvent)initWithCustomIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = VKAnalyticsEvent;
  v5 = [(VKAnalyticsEvent *)&v11 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF00]);
    date = v5->_date;
    v5->_date = v6;

    v8 = [(VKAnalyticsEvent *)v5 bundleIdentifierCleansingIfNecessaryWithCustomIdentifier:identifierCopy];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v8;

    v5->_isPerformingAutomatedTest = +[VKCInternalSettings isPerformingAutomatedTest];
  }

  return v5;
}

- (id)bundleIdentifierCleansingIfNecessaryWithCustomIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (!identifierCopy)
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];

    if ([(VKAnalyticsEvent *)self cleansesBundleID])
    {
      if ([bundleIdentifier hasPrefix:@"com.apple."])
      {
        v5 = bundleIdentifier;
      }

      else
      {
        v5 = @"3rdparty";
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (VKAnalyticsAnalyzerEvent)analyzerEvent
{
  v3 = objc_opt_class();

  return VKDynamicCast(v3, self);
}

- (VKAnalyticsTextEvent)textEvent
{
  v3 = objc_opt_class();

  return VKDynamicCast(v3, self);
}

- (VKAnalyticsDDEvent)ddEvent
{
  v3 = objc_opt_class();

  return VKDynamicCast(v3, self);
}

- (VKAnalyticsMRCEvent)mrcEvent
{
  v3 = objc_opt_class();

  return VKDynamicCast(v3, self);
}

- (VKAnalyticsQuickActionEvent)quickActionEvent
{
  v3 = objc_opt_class();

  return VKDynamicCast(v3, self);
}

- (VKAnalyticsInteractionEvent)interactionEvent
{
  v3 = objc_opt_class();

  return VKDynamicCast(v3, self);
}

- (VKAnalyticsVisualSearchEvent)visualSearchEvent
{
  v3 = objc_opt_class();

  return VKDynamicCast(v3, self);
}

- (VKAnalyticsSubjectEvent)subjectEvent
{
  v3 = objc_opt_class();

  return VKDynamicCast(v3, self);
}

- (VKAnalyticsDataScannerEvent)dataScannerEvent
{
  v3 = objc_opt_class();

  return VKDynamicCast(v3, self);
}

- (NSString)bundleIdentifier
{
  if (self->_bundleIdentifier)
  {
    return self->_bundleIdentifier;
  }

  else
  {
    return @"nil";
  }
}

@end