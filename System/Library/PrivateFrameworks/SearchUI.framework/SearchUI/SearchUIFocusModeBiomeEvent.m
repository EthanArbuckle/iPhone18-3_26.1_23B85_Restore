@interface SearchUIFocusModeBiomeEvent
+ (BOOL)supportsEvent:(id)a3 contextualAction:(id)a4;
- (SearchUIFocusModeBiomeEvent)initWithEvent:(id)a3 contextualAction:(id)a4;
- (void)getEnabledStatusWithCompletion:(id)a3;
@end

@implementation SearchUIFocusModeBiomeEvent

+ (BOOL)supportsEvent:(id)a3 contextualAction:(id)a4
{
  v4 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (SearchUIFocusModeBiomeEvent)initWithEvent:(id)a3 contextualAction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = SearchUIFocusModeBiomeEvent;
  v8 = [(BMEventBase *)&v12 init];
  if (v8)
  {
    v9 = [v7 focusMode];
    v10 = [v9 identifier];
    [(SearchUIFocusModeBiomeEvent *)v8 setObservedFocusModeIdentifier:v10];

    [(SearchUIBiomeEvent *)v8 setBiomeEvent:v6];
  }

  return v8;
}

- (void)getEnabledStatusWithCompletion:(id)a3
{
  v9 = a3;
  v4 = [(SearchUIBiomeEvent *)self biomeEvent];

  if (v4)
  {
    v5 = [(SearchUIBiomeEvent *)self biomeEvent];
    v6 = [v5 semanticModeIdentifier];
    v7 = [(SearchUIFocusModeBiomeEvent *)self observedFocusModeIdentifier];
    if ([v6 isEqualToString:v7])
    {
      v8 = [(SearchUIBiomeEvent *)self biomeEvent];
      v9[2](v9, [v8 starting]);
    }

    else
    {
      v9[2](v9, 0);
    }
  }

  else
  {
    (v9[2])();
  }
}

@end