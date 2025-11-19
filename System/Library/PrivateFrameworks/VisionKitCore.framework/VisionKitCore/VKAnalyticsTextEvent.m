@interface VKAnalyticsTextEvent
- (SEL)macOSKBNavigationSelector;
- (VKAnalyticsTextEvent)initWithSelectionLength:(unint64_t)a3 totalLength:(unint64_t)a4 selectionWordCount:(unint64_t)a5 macOSSelector:(SEL)a6 includesRichPasteBoardContent:(BOOL)a7 eventType:(int64_t)a8 source:(int64_t)a9 customIdentifier:(id)a10;
- (id)coreAnalyticsDictionary;
- (id)description;
- (void)setMacOSKBNavigationSelector:(SEL)a3;
@end

@implementation VKAnalyticsTextEvent

- (VKAnalyticsTextEvent)initWithSelectionLength:(unint64_t)a3 totalLength:(unint64_t)a4 selectionWordCount:(unint64_t)a5 macOSSelector:(SEL)a6 includesRichPasteBoardContent:(BOOL)a7 eventType:(int64_t)a8 source:(int64_t)a9 customIdentifier:(id)a10
{
  v18.receiver = self;
  v18.super_class = VKAnalyticsTextEvent;
  result = [(VKAnalyticsEvent *)&v18 initWithCustomIdentifier:a10];
  if (result)
  {
    result->_selectionLength = a3;
    result->_totalLength = a4;
    result->_selectionWordCount = a5;
    result->_eventType = a8;
    if (a6)
    {
      v17 = a6;
    }

    else
    {
      v17 = 0;
    }

    result->_macOSKBNavigationSelector = v17;
    result->_includesRichPasteboardContent = a7;
    result->_source = a9;
  }

  return result;
}

- (id)coreAnalyticsDictionary
{
  v14[8] = *MEMORY[0x1E69E9840];
  if ([(VKAnalyticsTextEvent *)self macOSKBNavigationSelector])
  {
    v3 = NSStringFromSelector([(VKAnalyticsTextEvent *)self macOSKBNavigationSelector]);
  }

  else
  {
    v3 = &stru_1F2C04538;
  }

  v13[0] = @"eventType";
  v4 = VKMUIStringForVKAnalyticsTextEventType([(VKAnalyticsTextEvent *)self eventType]);
  v14[0] = v4;
  v13[1] = @"eventSource";
  v5 = VKMUIStringForVKAnalyticsEventSource([(VKAnalyticsTextEvent *)self source]);
  v14[1] = v5;
  v13[2] = @"selectionLength";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VKAnalyticsTextEvent selectionLength](self, "selectionLength")}];
  v14[2] = v6;
  v13[3] = @"selectionLength";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VKAnalyticsTextEvent selectionWordCount](self, "selectionWordCount")}];
  v14[3] = v7;
  v13[4] = @"selectionLength";
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VKAnalyticsTextEvent totalLength](self, "totalLength")}];
  v14[4] = v8;
  v14[5] = v3;
  v13[5] = @"macOSKBNavigationSelector";
  v13[6] = @"automatedTest";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[VKAnalyticsEvent isPerformingAutomatedTest](self, "isPerformingAutomatedTest")}];
  v14[6] = v9;
  v13[7] = @"bundleIdentifier";
  v10 = [(VKAnalyticsEvent *)self bundleIdentifier];
  v14[7] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:8];

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v16.receiver = self;
  v16.super_class = VKAnalyticsTextEvent;
  v4 = [(VKAnalyticsTextEvent *)&v16 description];
  v5 = VKMUIStringForVKAnalyticsTextEventType([(VKAnalyticsTextEvent *)self textEventType]);
  v6 = VKMUIStringForVKAnalyticsEventSource([(VKAnalyticsTextEvent *)self source]);
  v7 = [(VKAnalyticsTextEvent *)self selectionLength];
  v8 = [(VKAnalyticsTextEvent *)self selectionWordCount];
  v9 = [(VKAnalyticsTextEvent *)self totalLength];
  v10 = VKMUIStringForBool([(VKAnalyticsEvent *)self isPerformingAutomatedTest]);
  v11 = [(VKAnalyticsEvent *)self bundleIdentifier];
  v12 = [v3 stringWithFormat:@"%@ \n textEventType: %@ \n source: %@ \n selectionLength: %lu \n selectionWordCount: %lu \n totalLength: %lu \n automatedTest: %@ \n bundleIdentifier: %@ ", v4, v5, v6, v7, v8, v9, v10, v11];

  if ([(VKAnalyticsTextEvent *)self macOSKBNavigationSelector])
  {
    v13 = NSStringFromSelector([(VKAnalyticsTextEvent *)self macOSKBNavigationSelector]);
    v14 = [v12 stringByAppendingFormat:@"\n macOSSelector: %@", v13];

    v12 = v14;
  }

  return v12;
}

- (SEL)macOSKBNavigationSelector
{
  if (self->_macOSKBNavigationSelector)
  {
    return self->_macOSKBNavigationSelector;
  }

  else
  {
    return 0;
  }
}

- (void)setMacOSKBNavigationSelector:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_macOSKBNavigationSelector = v3;
}

@end