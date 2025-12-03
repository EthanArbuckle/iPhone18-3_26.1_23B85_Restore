@interface VKAnalyticsTextEvent
- (SEL)macOSKBNavigationSelector;
- (VKAnalyticsTextEvent)initWithSelectionLength:(unint64_t)length totalLength:(unint64_t)totalLength selectionWordCount:(unint64_t)count macOSSelector:(SEL)selector includesRichPasteBoardContent:(BOOL)content eventType:(int64_t)type source:(int64_t)source customIdentifier:(id)self0;
- (id)coreAnalyticsDictionary;
- (id)description;
- (void)setMacOSKBNavigationSelector:(SEL)selector;
@end

@implementation VKAnalyticsTextEvent

- (VKAnalyticsTextEvent)initWithSelectionLength:(unint64_t)length totalLength:(unint64_t)totalLength selectionWordCount:(unint64_t)count macOSSelector:(SEL)selector includesRichPasteBoardContent:(BOOL)content eventType:(int64_t)type source:(int64_t)source customIdentifier:(id)self0
{
  v18.receiver = self;
  v18.super_class = VKAnalyticsTextEvent;
  result = [(VKAnalyticsEvent *)&v18 initWithCustomIdentifier:identifier];
  if (result)
  {
    result->_selectionLength = length;
    result->_totalLength = totalLength;
    result->_selectionWordCount = count;
    result->_eventType = type;
    if (selector)
    {
      selectorCopy = selector;
    }

    else
    {
      selectorCopy = 0;
    }

    result->_macOSKBNavigationSelector = selectorCopy;
    result->_includesRichPasteboardContent = content;
    result->_source = source;
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
  bundleIdentifier = [(VKAnalyticsEvent *)self bundleIdentifier];
  v14[7] = bundleIdentifier;
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
  selectionLength = [(VKAnalyticsTextEvent *)self selectionLength];
  selectionWordCount = [(VKAnalyticsTextEvent *)self selectionWordCount];
  totalLength = [(VKAnalyticsTextEvent *)self totalLength];
  v10 = VKMUIStringForBool([(VKAnalyticsEvent *)self isPerformingAutomatedTest]);
  bundleIdentifier = [(VKAnalyticsEvent *)self bundleIdentifier];
  v12 = [v3 stringWithFormat:@"%@ \n textEventType: %@ \n source: %@ \n selectionLength: %lu \n selectionWordCount: %lu \n totalLength: %lu \n automatedTest: %@ \n bundleIdentifier: %@ ", v4, v5, v6, selectionLength, selectionWordCount, totalLength, v10, bundleIdentifier];

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

- (void)setMacOSKBNavigationSelector:(SEL)selector
{
  if (selector)
  {
    selectorCopy = selector;
  }

  else
  {
    selectorCopy = 0;
  }

  self->_macOSKBNavigationSelector = selectorCopy;
}

@end