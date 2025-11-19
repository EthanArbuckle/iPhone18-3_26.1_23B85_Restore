@interface SWWebView
- (id)_textInputTraits;
- (void)setShortcutsBarWithLeadingGroups:(id)a3 trailingGroups:(id)a4;
@end

@implementation SWWebView

- (void)setShortcutsBarWithLeadingGroups:(id)a3 trailingGroups:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SWWebView *)self inputAssistantItem];
  [v8 setLeadingBarButtonGroups:v7];

  v9 = [(SWWebView *)self inputAssistantItem];
  [v9 setTrailingBarButtonGroups:v6];
}

- (id)_textInputTraits
{
  v11.receiver = self;
  v11.super_class = SWWebView;
  v3 = [(SWWebView *)&v11 _textInputTraits];
  v4 = [(SWWebView *)self overridenTraits];
  [v3 overrideWithTraits:v4];

  v5 = [(SWWebView *)self overridenTraits];
  [v3 overrideWithPrivateTraits:v5];

  v6 = [(SWWebView *)self overridenTraits];
  [v3 setForceDisableDictation:{objc_msgSend(v6, "forceDisableDictation")}];

  v7 = [MEMORY[0x1E69DC938] currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if (!v8)
  {
    v9 = [(SWWebView *)self overridenTraits];
    [v3 setHidePrediction:{objc_msgSend(v9, "hidePrediction")}];
  }

  return v3;
}

@end