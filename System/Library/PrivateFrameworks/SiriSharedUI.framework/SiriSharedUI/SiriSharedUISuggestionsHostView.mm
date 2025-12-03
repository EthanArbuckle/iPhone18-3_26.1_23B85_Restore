@interface SiriSharedUISuggestionsHostView
- (CGSize)intrinsicContentSize;
- (SiriSharedUIStackableContentDelegate)stackContainerDelegate;
- (SiriSharedUISuggestionsHostView)initWithSuggestionsView:(id)view;
- (void)_configureConstraints;
- (void)invalidateIntrinsicContentSize;
@end

@implementation SiriSharedUISuggestionsHostView

- (SiriSharedUISuggestionsHostView)initWithSuggestionsView:(id)view
{
  viewCopy = view;
  v8.receiver = self;
  v8.super_class = SiriSharedUISuggestionsHostView;
  v5 = [(SiriSharedUISuggestionsHostView *)&v8 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v5)
  {
    [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [viewCopy setBackgroundColor:clearColor];

    [(SiriSharedUISuggestionsHostView *)v5 setSuggestionsView:viewCopy];
    [(SiriSharedUISuggestionsHostView *)v5 addSubview:viewCopy];
    [(SiriSharedUISuggestionsHostView *)v5 _configureConstraints];
  }

  return v5;
}

- (void)_configureConstraints
{
  v21[4] = *MEMORY[0x277D85DE8];
  v13 = MEMORY[0x277CCAAD0];
  leadingAnchor = [(SiriSharedUISuggestionsHostView *)self leadingAnchor];
  suggestionsView = [(SiriSharedUISuggestionsHostView *)self suggestionsView];
  leadingAnchor2 = [suggestionsView leadingAnchor];
  v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v21[0] = v17;
  trailingAnchor = [(SiriSharedUISuggestionsHostView *)self trailingAnchor];
  suggestionsView2 = [(SiriSharedUISuggestionsHostView *)self suggestionsView];
  trailingAnchor2 = [suggestionsView2 trailingAnchor];
  v3 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v21[1] = v3;
  topAnchor = [(SiriSharedUISuggestionsHostView *)self topAnchor];
  suggestionsView3 = [(SiriSharedUISuggestionsHostView *)self suggestionsView];
  topAnchor2 = [suggestionsView3 topAnchor];
  v7 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v21[2] = v7;
  bottomAnchor = [(SiriSharedUISuggestionsHostView *)self bottomAnchor];
  suggestionsView4 = [(SiriSharedUISuggestionsHostView *)self suggestionsView];
  bottomAnchor2 = [suggestionsView4 bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v21[3] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];
  [v13 activateConstraints:v12];
}

- (CGSize)intrinsicContentSize
{
  suggestionsView = [(SiriSharedUISuggestionsHostView *)self suggestionsView];
  [suggestionsView intrinsicContentSize];
  v5 = v4;

  stackContainerDelegate = [(SiriSharedUISuggestionsHostView *)self stackContainerDelegate];
  [stackContainerDelegate stackableContentMaximumContainerWidth];
  v8 = v7;

  v9 = v8;
  v10 = v5;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)invalidateIntrinsicContentSize
{
  v4.receiver = self;
  v4.super_class = SiriSharedUISuggestionsHostView;
  [(SiriSharedUISuggestionsHostView *)&v4 invalidateIntrinsicContentSize];
  stackContainerDelegate = [(SiriSharedUISuggestionsHostView *)self stackContainerDelegate];
  [(SiriSharedUISuggestionsHostView *)self intrinsicContentSize];
  [stackContainerDelegate stackableContentWillUpdateLayout:self withUpdatedContentSize:1 animated:?];
}

- (SiriSharedUIStackableContentDelegate)stackContainerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->stackContainerDelegate);

  return WeakRetained;
}

@end