@interface SiriSharedUISuggestionsHostView
- (CGSize)intrinsicContentSize;
- (SiriSharedUIStackableContentDelegate)stackContainerDelegate;
- (SiriSharedUISuggestionsHostView)initWithSuggestionsView:(id)a3;
- (void)_configureConstraints;
- (void)invalidateIntrinsicContentSize;
@end

@implementation SiriSharedUISuggestionsHostView

- (SiriSharedUISuggestionsHostView)initWithSuggestionsView:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SiriSharedUISuggestionsHostView;
  v5 = [(SiriSharedUISuggestionsHostView *)&v8 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v5)
  {
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [MEMORY[0x277D75348] clearColor];
    [v4 setBackgroundColor:v6];

    [(SiriSharedUISuggestionsHostView *)v5 setSuggestionsView:v4];
    [(SiriSharedUISuggestionsHostView *)v5 addSubview:v4];
    [(SiriSharedUISuggestionsHostView *)v5 _configureConstraints];
  }

  return v5;
}

- (void)_configureConstraints
{
  v21[4] = *MEMORY[0x277D85DE8];
  v13 = MEMORY[0x277CCAAD0];
  v19 = [(SiriSharedUISuggestionsHostView *)self leadingAnchor];
  v20 = [(SiriSharedUISuggestionsHostView *)self suggestionsView];
  v18 = [v20 leadingAnchor];
  v17 = [v19 constraintEqualToAnchor:v18];
  v21[0] = v17;
  v15 = [(SiriSharedUISuggestionsHostView *)self trailingAnchor];
  v16 = [(SiriSharedUISuggestionsHostView *)self suggestionsView];
  v14 = [v16 trailingAnchor];
  v3 = [v15 constraintEqualToAnchor:v14];
  v21[1] = v3;
  v4 = [(SiriSharedUISuggestionsHostView *)self topAnchor];
  v5 = [(SiriSharedUISuggestionsHostView *)self suggestionsView];
  v6 = [v5 topAnchor];
  v7 = [v4 constraintEqualToAnchor:v6];
  v21[2] = v7;
  v8 = [(SiriSharedUISuggestionsHostView *)self bottomAnchor];
  v9 = [(SiriSharedUISuggestionsHostView *)self suggestionsView];
  v10 = [v9 bottomAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v21[3] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];
  [v13 activateConstraints:v12];
}

- (CGSize)intrinsicContentSize
{
  v3 = [(SiriSharedUISuggestionsHostView *)self suggestionsView];
  [v3 intrinsicContentSize];
  v5 = v4;

  v6 = [(SiriSharedUISuggestionsHostView *)self stackContainerDelegate];
  [v6 stackableContentMaximumContainerWidth];
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
  v3 = [(SiriSharedUISuggestionsHostView *)self stackContainerDelegate];
  [(SiriSharedUISuggestionsHostView *)self intrinsicContentSize];
  [v3 stackableContentWillUpdateLayout:self withUpdatedContentSize:1 animated:?];
}

- (SiriSharedUIStackableContentDelegate)stackContainerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->stackContainerDelegate);

  return WeakRetained;
}

@end