@interface TUIButtonBarAppearanceDelegate
- (TUIButtonBarAppearanceDelegate)initWithSystemInputAssistantView:(id)view;
- (TUISystemInputAssistantView)systemInputAssistantView;
- (UIColor)tintColor;
- (UIImageSymbolConfiguration)imageSymbolConfiguration;
@end

@implementation TUIButtonBarAppearanceDelegate

- (TUISystemInputAssistantView)systemInputAssistantView
{
  WeakRetained = objc_loadWeakRetained(&self->_systemInputAssistantView);

  return WeakRetained;
}

- (UIImageSymbolConfiguration)imageSymbolConfiguration
{
  systemInputAssistantView = [(TUIButtonBarAppearanceDelegate *)self systemInputAssistantView];
  style = [systemInputAssistantView style];
  barButtonImageSymbolConfiguration = [style barButtonImageSymbolConfiguration];

  systemInputAssistantView2 = [(TUIButtonBarAppearanceDelegate *)self systemInputAssistantView];
  locale = [systemInputAssistantView2 locale];

  if (locale)
  {
    systemInputAssistantView3 = [(TUIButtonBarAppearanceDelegate *)self systemInputAssistantView];
    locale2 = [systemInputAssistantView3 locale];
    v10 = [barButtonImageSymbolConfiguration configurationWithLocale:locale2];

    barButtonImageSymbolConfiguration = v10;
  }

  return barButtonImageSymbolConfiguration;
}

- (UIColor)tintColor
{
  systemInputAssistantView = [(TUIButtonBarAppearanceDelegate *)self systemInputAssistantView];
  style = [systemInputAssistantView style];
  enableButtonTintColor = [style enableButtonTintColor];

  if (enableButtonTintColor)
  {
    systemInputAssistantView2 = [(TUIButtonBarAppearanceDelegate *)self systemInputAssistantView];
    leftButtonBar = [systemInputAssistantView2 leftButtonBar];
    visualProvider = [leftButtonBar visualProvider];
    tintColor = [visualProvider tintColor];
  }

  else
  {
    tintColor = 0;
  }

  return tintColor;
}

- (TUIButtonBarAppearanceDelegate)initWithSystemInputAssistantView:(id)view
{
  viewCopy = view;
  v8.receiver = self;
  v8.super_class = TUIButtonBarAppearanceDelegate;
  v5 = [(TUIButtonBarAppearanceDelegate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_systemInputAssistantView, viewCopy);
  }

  return v6;
}

@end