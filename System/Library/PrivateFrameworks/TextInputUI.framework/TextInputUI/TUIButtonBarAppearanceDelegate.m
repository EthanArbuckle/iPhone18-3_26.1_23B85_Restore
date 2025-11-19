@interface TUIButtonBarAppearanceDelegate
- (TUIButtonBarAppearanceDelegate)initWithSystemInputAssistantView:(id)a3;
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
  v3 = [(TUIButtonBarAppearanceDelegate *)self systemInputAssistantView];
  v4 = [v3 style];
  v5 = [v4 barButtonImageSymbolConfiguration];

  v6 = [(TUIButtonBarAppearanceDelegate *)self systemInputAssistantView];
  v7 = [v6 locale];

  if (v7)
  {
    v8 = [(TUIButtonBarAppearanceDelegate *)self systemInputAssistantView];
    v9 = [v8 locale];
    v10 = [v5 configurationWithLocale:v9];

    v5 = v10;
  }

  return v5;
}

- (UIColor)tintColor
{
  v3 = [(TUIButtonBarAppearanceDelegate *)self systemInputAssistantView];
  v4 = [v3 style];
  v5 = [v4 enableButtonTintColor];

  if (v5)
  {
    v6 = [(TUIButtonBarAppearanceDelegate *)self systemInputAssistantView];
    v7 = [v6 leftButtonBar];
    v8 = [v7 visualProvider];
    v9 = [v8 tintColor];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (TUIButtonBarAppearanceDelegate)initWithSystemInputAssistantView:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TUIButtonBarAppearanceDelegate;
  v5 = [(TUIButtonBarAppearanceDelegate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_systemInputAssistantView, v4);
  }

  return v6;
}

@end