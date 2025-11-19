@interface WFAutomationSummaryIconsView
- (CGSize)intrinsicContentSize;
- (WFAutomationSummaryIconsView)initWithFrame:(CGRect)a3;
- (void)configureIconView:(id)a3;
- (void)setActionIcons:(id)a3;
- (void)setHomeActionIcons:(id)a3;
- (void)setHomeTriggerIcon:(id)a3;
- (void)setTriggerIcon:(id)a3 tintColor:(id)a4 withCornerRadius:(double)a5;
- (void)setTriggerIcon:(id)a3 tintColor:(id)a4 withTrigger:(id)a5;
@end

@implementation WFAutomationSummaryIconsView

- (void)setHomeActionIcons:(id)a3
{
  v9 = a3;
  if (!v9)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"WFAutomationSummaryIconsView.m" lineNumber:169 description:{@"Invalid parameter not satisfying: %@", @"homeActionIcons"}];
  }

  v5 = [(WFAutomationSummaryIconsView *)self actionsIconsView];
  [v5 setHomeIcons:v9];

  v6 = [v9 count] == 0;
  v7 = [(WFAutomationSummaryIconsView *)self arrowImageView];
  [v7 setHidden:v6];
}

- (void)setActionIcons:(id)a3
{
  v9 = a3;
  if (!v9)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"WFAutomationSummaryIconsView.m" lineNumber:163 description:{@"Invalid parameter not satisfying: %@", @"actionIcons"}];
  }

  v5 = [(WFAutomationSummaryIconsView *)self actionsIconsView];
  [v5 setIcons:v9];

  v6 = [v9 count] == 0;
  v7 = [(WFAutomationSummaryIconsView *)self arrowImageView];
  [v7 setHidden:v6];
}

- (void)configureIconView:(id)a3
{
  v7 = a3;
  LODWORD(v3) = 1148846080;
  [v7 setContentCompressionResistancePriority:0 forAxis:v3];
  LODWORD(v4) = 1148846080;
  [v7 setContentCompressionResistancePriority:1 forAxis:v4];
  LODWORD(v5) = 1148846080;
  [v7 setContentHuggingPriority:0 forAxis:v5];
  LODWORD(v6) = 1148846080;
  [v7 setContentHuggingPriority:1 forAxis:v6];
}

- (void)setHomeTriggerIcon:(id)a3
{
  v4 = a3;
  v5 = [(WFAutomationSummaryIconsView *)self triggerIconView];

  if (v5)
  {
    v6 = [(WFAutomationSummaryIconsView *)self stackView];
    v7 = [(WFAutomationSummaryIconsView *)self triggerIconView];
    [v6 removeArrangedSubview:v7];

    v8 = [(WFAutomationSummaryIconsView *)self triggerIconView];
    [v8 removeFromSuperview];

    [(WFAutomationSummaryIconsView *)self setTriggerIconView:0];
  }

  v9 = [(WFAutomationSummaryIconsView *)self homeTriggerIconView];

  if (v9)
  {
    v10 = [(WFAutomationSummaryIconsView *)self stackView];
    v11 = [(WFAutomationSummaryIconsView *)self homeTriggerIconView];
    [v10 removeArrangedSubview:v11];

    v12 = [(WFAutomationSummaryIconsView *)self homeTriggerIconView];
    [v12 removeFromSuperview];

    [(WFAutomationSummaryIconsView *)self setHomeTriggerIconView:0];
  }

  v13 = [objc_alloc(getHUTriggerIconViewClass()) initWithIconDescriptor:v4];

  [(WFAutomationSummaryIconsView *)self setHomeTriggerIconView:v13];
  v14 = [(WFAutomationSummaryIconsView *)self homeTriggerIconView];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

  v15 = [(WFAutomationSummaryIconsView *)self stackView];
  v16 = [(WFAutomationSummaryIconsView *)self homeTriggerIconView];
  [v15 insertArrangedSubview:v16 atIndex:0];

  [(WFAutomationSummaryIconsView *)self setNeedsLayout];
}

- (void)setTriggerIcon:(id)a3 tintColor:(id)a4 withCornerRadius:(double)a5
{
  v26 = a3;
  v8 = a4;
  v9 = [(WFAutomationSummaryIconsView *)self homeTriggerIconView];

  if (v9)
  {
    v10 = [(WFAutomationSummaryIconsView *)self stackView];
    v11 = [(WFAutomationSummaryIconsView *)self homeTriggerIconView];
    [v10 removeArrangedSubview:v11];

    v12 = [(WFAutomationSummaryIconsView *)self homeTriggerIconView];
    [v12 removeFromSuperview];

    [(WFAutomationSummaryIconsView *)self setHomeTriggerIconView:0];
  }

  v13 = [(WFAutomationSummaryIconsView *)self triggerIconView];

  if (v13)
  {
    v14 = [(WFAutomationSummaryIconsView *)self triggerIconView];
    [v14 setImage:v26];

    v15 = [(WFAutomationSummaryIconsView *)self triggerIconView];
    v16 = v15;
    if (a5 <= 0.0)
    {
      [v15 setClipsToBounds:0];

      v17 = [(WFAutomationSummaryIconsView *)self triggerIconView];
      v18 = [v17 layer];
      v19 = v18;
      v20 = 0.0;
    }

    else
    {
      [v15 setClipsToBounds:1];

      v17 = [(WFAutomationSummaryIconsView *)self triggerIconView];
      v18 = [v17 layer];
      v19 = v18;
      v20 = a5;
    }

    [v18 setCornerRadius:v20];
  }

  else
  {
    v21 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v26];
    [(WFAutomationSummaryIconsView *)self setTriggerIconView:v21];

    v22 = [(WFAutomationSummaryIconsView *)self triggerIconView];
    [v22 setTranslatesAutoresizingMaskIntoConstraints:0];

    v23 = [(WFAutomationSummaryIconsView *)self stackView];
    v24 = [(WFAutomationSummaryIconsView *)self triggerIconView];
    [v23 insertArrangedSubview:v24 atIndex:0];

    v17 = [(WFAutomationSummaryIconsView *)self triggerIconView];
    [(WFAutomationSummaryIconsView *)self configureIconView:v17];
  }

  v25 = [(WFAutomationSummaryIconsView *)self triggerIconView];
  [v25 setTintColor:v8];

  [(WFAutomationSummaryIconsView *)self setNeedsLayout];
}

- (void)setTriggerIcon:(id)a3 tintColor:(id)a4 withTrigger:(id)a5
{
  v31 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [(WFAutomationSummaryIconsView *)self homeTriggerIconView];

  if (v10)
  {
    v11 = [(WFAutomationSummaryIconsView *)self stackView];
    v12 = [(WFAutomationSummaryIconsView *)self homeTriggerIconView];
    [v11 removeArrangedSubview:v12];

    v13 = [(WFAutomationSummaryIconsView *)self homeTriggerIconView];
    [v13 removeFromSuperview];

    [(WFAutomationSummaryIconsView *)self setHomeTriggerIconView:0];
  }

  v14 = [(WFAutomationSummaryIconsView *)self triggerIconView];

  if (v14)
  {
    v15 = [(WFAutomationSummaryIconsView *)self triggerIconView];
    [v15 setImage:v31];

    [v8 displayGlyphCornerRadius];
    v17 = v16;
    v18 = [(WFAutomationSummaryIconsView *)self triggerIconView];
    v19 = v18;
    if (v17 <= 0.0)
    {
      [v18 setClipsToBounds:0];

      v22 = [(WFAutomationSummaryIconsView *)self triggerIconView];
      v23 = [v22 layer];
      v24 = v23;
      v25 = 0.0;
    }

    else
    {
      [v18 setClipsToBounds:1];

      [v8 displayGlyphCornerRadius];
      v21 = v20;
      v22 = [(WFAutomationSummaryIconsView *)self triggerIconView];
      v23 = [v22 layer];
      v24 = v23;
      v25 = v21;
    }

    [v23 setCornerRadius:v25];
  }

  else
  {
    v26 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v31];
    [(WFAutomationSummaryIconsView *)self setTriggerIconView:v26];

    v27 = [(WFAutomationSummaryIconsView *)self triggerIconView];
    [v27 setTranslatesAutoresizingMaskIntoConstraints:0];

    v28 = [(WFAutomationSummaryIconsView *)self stackView];
    v29 = [(WFAutomationSummaryIconsView *)self triggerIconView];
    [v28 insertArrangedSubview:v29 atIndex:0];

    v22 = [(WFAutomationSummaryIconsView *)self triggerIconView];
    [(WFAutomationSummaryIconsView *)self configureIconView:v22];
  }

  v30 = [(WFAutomationSummaryIconsView *)self triggerIconView];
  [v30 setTintColor:v9];

  [(WFAutomationSummaryIconsView *)self setNeedsLayout];
}

- (CGSize)intrinsicContentSize
{
  v2 = *MEMORY[0x277D77260];
  v3 = 30.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (WFAutomationSummaryIconsView)initWithFrame:(CGRect)a3
{
  v37[4] = *MEMORY[0x277D85DE8];
  v36.receiver = self;
  v36.super_class = WFAutomationSummaryIconsView;
  v3 = [(WFAutomationSummaryIconsView *)&v36 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75A68]);
    stackView = v3->_stackView;
    v3->_stackView = v4;

    [(UIStackView *)v3->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v3->_stackView setAxis:0];
    [(UIStackView *)v3->_stackView setAlignment:3];
    [(UIStackView *)v3->_stackView setDistribution:3];
    [(UIStackView *)v3->_stackView setSpacing:12.0];
    [(WFAutomationSummaryIconsView *)v3 addSubview:v3->_stackView];
    v28 = MEMORY[0x277CCAAD0];
    v33 = [(UIStackView *)v3->_stackView topAnchor];
    v32 = [(WFAutomationSummaryIconsView *)v3 topAnchor];
    v31 = [v33 constraintEqualToAnchor:v32];
    v37[0] = v31;
    v30 = [(UIStackView *)v3->_stackView bottomAnchor];
    v29 = [(WFAutomationSummaryIconsView *)v3 bottomAnchor];
    v6 = [v30 constraintEqualToAnchor:v29];
    v37[1] = v6;
    v7 = [(UIStackView *)v3->_stackView leadingAnchor];
    v8 = [(WFAutomationSummaryIconsView *)v3 leadingAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];
    v37[2] = v9;
    v10 = [(UIStackView *)v3->_stackView trailingAnchor];
    v11 = [(WFAutomationSummaryIconsView *)v3 trailingAnchor];
    v12 = [v10 constraintLessThanOrEqualToAnchor:v11];
    v37[3] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:4];
    [v28 activateConstraints:v13];

    v14 = objc_alloc_init(MEMORY[0x277D755E8]);
    triggerIconView = v3->_triggerIconView;
    v3->_triggerIconView = v14;

    [(UIImageView *)v3->_triggerIconView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v3->_stackView addArrangedSubview:v3->_triggerIconView];
    [(WFAutomationSummaryIconsView *)v3 configureIconView:v3->_triggerIconView];
    v16 = objc_alloc(MEMORY[0x277D755E8]);
    v17 = MEMORY[0x277D755B8];
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v17 imageNamed:@"TriggerSummaryArrow" inBundle:v18 compatibleWithTraitCollection:0];
    v20 = [v16 initWithImage:v19];
    arrowImageView = v3->_arrowImageView;
    v3->_arrowImageView = v20;

    v22 = [MEMORY[0x277CFC248] sharedContext];
    LODWORD(v19) = [v22 shouldReverseLayoutDirection];

    if (v19)
    {
      CGAffineTransformMakeScale(&v35, -1.0, 1.0);
      v23 = v3->_arrowImageView;
      v34 = v35;
      [(UIImageView *)v23 setTransform:&v34];
    }

    [(UIImageView *)v3->_arrowImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v3->_stackView addArrangedSubview:v3->_arrowImageView];
    v24 = [[WFRowOfIconsView alloc] initWithMaxNumberOfIcons:6 height:30.0];
    actionsIconsView = v3->_actionsIconsView;
    v3->_actionsIconsView = v24;

    [(WFRowOfIconsView *)v3->_actionsIconsView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v3->_stackView addArrangedSubview:v3->_actionsIconsView];
    v26 = v3;
  }

  return v3;
}

@end