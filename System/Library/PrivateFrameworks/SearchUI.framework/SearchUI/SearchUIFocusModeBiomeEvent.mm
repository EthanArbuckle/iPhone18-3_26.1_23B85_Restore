@interface SearchUIFocusModeBiomeEvent
+ (BOOL)supportsEvent:(id)event contextualAction:(id)action;
- (SearchUIFocusModeBiomeEvent)initWithEvent:(id)event contextualAction:(id)action;
- (void)getEnabledStatusWithCompletion:(id)completion;
@end

@implementation SearchUIFocusModeBiomeEvent

+ (BOOL)supportsEvent:(id)event contextualAction:(id)action
{
  actionCopy = action;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (SearchUIFocusModeBiomeEvent)initWithEvent:(id)event contextualAction:(id)action
{
  eventCopy = event;
  actionCopy = action;
  v12.receiver = self;
  v12.super_class = SearchUIFocusModeBiomeEvent;
  v8 = [(BMEventBase *)&v12 init];
  if (v8)
  {
    focusMode = [actionCopy focusMode];
    identifier = [focusMode identifier];
    [(SearchUIFocusModeBiomeEvent *)v8 setObservedFocusModeIdentifier:identifier];

    [(SearchUIBiomeEvent *)v8 setBiomeEvent:eventCopy];
  }

  return v8;
}

- (void)getEnabledStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  biomeEvent = [(SearchUIBiomeEvent *)self biomeEvent];

  if (biomeEvent)
  {
    biomeEvent2 = [(SearchUIBiomeEvent *)self biomeEvent];
    semanticModeIdentifier = [biomeEvent2 semanticModeIdentifier];
    observedFocusModeIdentifier = [(SearchUIFocusModeBiomeEvent *)self observedFocusModeIdentifier];
    if ([semanticModeIdentifier isEqualToString:observedFocusModeIdentifier])
    {
      biomeEvent3 = [(SearchUIBiomeEvent *)self biomeEvent];
      completionCopy[2](completionCopy, [biomeEvent3 starting]);
    }

    else
    {
      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    (completionCopy[2])();
  }
}

@end