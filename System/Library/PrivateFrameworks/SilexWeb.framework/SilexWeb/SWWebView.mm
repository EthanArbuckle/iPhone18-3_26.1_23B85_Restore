@interface SWWebView
- (id)_textInputTraits;
- (void)setShortcutsBarWithLeadingGroups:(id)groups trailingGroups:(id)trailingGroups;
@end

@implementation SWWebView

- (void)setShortcutsBarWithLeadingGroups:(id)groups trailingGroups:(id)trailingGroups
{
  trailingGroupsCopy = trailingGroups;
  groupsCopy = groups;
  inputAssistantItem = [(SWWebView *)self inputAssistantItem];
  [inputAssistantItem setLeadingBarButtonGroups:groupsCopy];

  inputAssistantItem2 = [(SWWebView *)self inputAssistantItem];
  [inputAssistantItem2 setTrailingBarButtonGroups:trailingGroupsCopy];
}

- (id)_textInputTraits
{
  v11.receiver = self;
  v11.super_class = SWWebView;
  _textInputTraits = [(SWWebView *)&v11 _textInputTraits];
  overridenTraits = [(SWWebView *)self overridenTraits];
  [_textInputTraits overrideWithTraits:overridenTraits];

  overridenTraits2 = [(SWWebView *)self overridenTraits];
  [_textInputTraits overrideWithPrivateTraits:overridenTraits2];

  overridenTraits3 = [(SWWebView *)self overridenTraits];
  [_textInputTraits setForceDisableDictation:{objc_msgSend(overridenTraits3, "forceDisableDictation")}];

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    overridenTraits4 = [(SWWebView *)self overridenTraits];
    [_textInputTraits setHidePrediction:{objc_msgSend(overridenTraits4, "hidePrediction")}];
  }

  return _textInputTraits;
}

@end