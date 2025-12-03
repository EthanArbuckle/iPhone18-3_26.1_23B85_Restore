@interface WFAutomationSummaryIconsView
- (CGSize)intrinsicContentSize;
- (WFAutomationSummaryIconsView)initWithFrame:(CGRect)frame;
- (void)configureIconView:(id)view;
- (void)setActionIcons:(id)icons;
- (void)setHomeActionIcons:(id)icons;
- (void)setHomeTriggerIcon:(id)icon;
- (void)setTriggerIcon:(id)icon tintColor:(id)color withCornerRadius:(double)radius;
- (void)setTriggerIcon:(id)icon tintColor:(id)color withTrigger:(id)trigger;
@end

@implementation WFAutomationSummaryIconsView

- (void)setHomeActionIcons:(id)icons
{
  iconsCopy = icons;
  if (!iconsCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFAutomationSummaryIconsView.m" lineNumber:169 description:{@"Invalid parameter not satisfying: %@", @"homeActionIcons"}];
  }

  actionsIconsView = [(WFAutomationSummaryIconsView *)self actionsIconsView];
  [actionsIconsView setHomeIcons:iconsCopy];

  v6 = [iconsCopy count] == 0;
  arrowImageView = [(WFAutomationSummaryIconsView *)self arrowImageView];
  [arrowImageView setHidden:v6];
}

- (void)setActionIcons:(id)icons
{
  iconsCopy = icons;
  if (!iconsCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFAutomationSummaryIconsView.m" lineNumber:163 description:{@"Invalid parameter not satisfying: %@", @"actionIcons"}];
  }

  actionsIconsView = [(WFAutomationSummaryIconsView *)self actionsIconsView];
  [actionsIconsView setIcons:iconsCopy];

  v6 = [iconsCopy count] == 0;
  arrowImageView = [(WFAutomationSummaryIconsView *)self arrowImageView];
  [arrowImageView setHidden:v6];
}

- (void)configureIconView:(id)view
{
  viewCopy = view;
  LODWORD(v3) = 1148846080;
  [viewCopy setContentCompressionResistancePriority:0 forAxis:v3];
  LODWORD(v4) = 1148846080;
  [viewCopy setContentCompressionResistancePriority:1 forAxis:v4];
  LODWORD(v5) = 1148846080;
  [viewCopy setContentHuggingPriority:0 forAxis:v5];
  LODWORD(v6) = 1148846080;
  [viewCopy setContentHuggingPriority:1 forAxis:v6];
}

- (void)setHomeTriggerIcon:(id)icon
{
  iconCopy = icon;
  triggerIconView = [(WFAutomationSummaryIconsView *)self triggerIconView];

  if (triggerIconView)
  {
    stackView = [(WFAutomationSummaryIconsView *)self stackView];
    triggerIconView2 = [(WFAutomationSummaryIconsView *)self triggerIconView];
    [stackView removeArrangedSubview:triggerIconView2];

    triggerIconView3 = [(WFAutomationSummaryIconsView *)self triggerIconView];
    [triggerIconView3 removeFromSuperview];

    [(WFAutomationSummaryIconsView *)self setTriggerIconView:0];
  }

  homeTriggerIconView = [(WFAutomationSummaryIconsView *)self homeTriggerIconView];

  if (homeTriggerIconView)
  {
    stackView2 = [(WFAutomationSummaryIconsView *)self stackView];
    homeTriggerIconView2 = [(WFAutomationSummaryIconsView *)self homeTriggerIconView];
    [stackView2 removeArrangedSubview:homeTriggerIconView2];

    homeTriggerIconView3 = [(WFAutomationSummaryIconsView *)self homeTriggerIconView];
    [homeTriggerIconView3 removeFromSuperview];

    [(WFAutomationSummaryIconsView *)self setHomeTriggerIconView:0];
  }

  v13 = [objc_alloc(getHUTriggerIconViewClass()) initWithIconDescriptor:iconCopy];

  [(WFAutomationSummaryIconsView *)self setHomeTriggerIconView:v13];
  homeTriggerIconView4 = [(WFAutomationSummaryIconsView *)self homeTriggerIconView];
  [homeTriggerIconView4 setTranslatesAutoresizingMaskIntoConstraints:0];

  stackView3 = [(WFAutomationSummaryIconsView *)self stackView];
  homeTriggerIconView5 = [(WFAutomationSummaryIconsView *)self homeTriggerIconView];
  [stackView3 insertArrangedSubview:homeTriggerIconView5 atIndex:0];

  [(WFAutomationSummaryIconsView *)self setNeedsLayout];
}

- (void)setTriggerIcon:(id)icon tintColor:(id)color withCornerRadius:(double)radius
{
  iconCopy = icon;
  colorCopy = color;
  homeTriggerIconView = [(WFAutomationSummaryIconsView *)self homeTriggerIconView];

  if (homeTriggerIconView)
  {
    stackView = [(WFAutomationSummaryIconsView *)self stackView];
    homeTriggerIconView2 = [(WFAutomationSummaryIconsView *)self homeTriggerIconView];
    [stackView removeArrangedSubview:homeTriggerIconView2];

    homeTriggerIconView3 = [(WFAutomationSummaryIconsView *)self homeTriggerIconView];
    [homeTriggerIconView3 removeFromSuperview];

    [(WFAutomationSummaryIconsView *)self setHomeTriggerIconView:0];
  }

  triggerIconView = [(WFAutomationSummaryIconsView *)self triggerIconView];

  if (triggerIconView)
  {
    triggerIconView2 = [(WFAutomationSummaryIconsView *)self triggerIconView];
    [triggerIconView2 setImage:iconCopy];

    triggerIconView3 = [(WFAutomationSummaryIconsView *)self triggerIconView];
    v16 = triggerIconView3;
    if (radius <= 0.0)
    {
      [triggerIconView3 setClipsToBounds:0];

      triggerIconView4 = [(WFAutomationSummaryIconsView *)self triggerIconView];
      layer = [triggerIconView4 layer];
      v19 = layer;
      radiusCopy = 0.0;
    }

    else
    {
      [triggerIconView3 setClipsToBounds:1];

      triggerIconView4 = [(WFAutomationSummaryIconsView *)self triggerIconView];
      layer = [triggerIconView4 layer];
      v19 = layer;
      radiusCopy = radius;
    }

    [layer setCornerRadius:radiusCopy];
  }

  else
  {
    v21 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:iconCopy];
    [(WFAutomationSummaryIconsView *)self setTriggerIconView:v21];

    triggerIconView5 = [(WFAutomationSummaryIconsView *)self triggerIconView];
    [triggerIconView5 setTranslatesAutoresizingMaskIntoConstraints:0];

    stackView2 = [(WFAutomationSummaryIconsView *)self stackView];
    triggerIconView6 = [(WFAutomationSummaryIconsView *)self triggerIconView];
    [stackView2 insertArrangedSubview:triggerIconView6 atIndex:0];

    triggerIconView4 = [(WFAutomationSummaryIconsView *)self triggerIconView];
    [(WFAutomationSummaryIconsView *)self configureIconView:triggerIconView4];
  }

  triggerIconView7 = [(WFAutomationSummaryIconsView *)self triggerIconView];
  [triggerIconView7 setTintColor:colorCopy];

  [(WFAutomationSummaryIconsView *)self setNeedsLayout];
}

- (void)setTriggerIcon:(id)icon tintColor:(id)color withTrigger:(id)trigger
{
  iconCopy = icon;
  triggerCopy = trigger;
  colorCopy = color;
  homeTriggerIconView = [(WFAutomationSummaryIconsView *)self homeTriggerIconView];

  if (homeTriggerIconView)
  {
    stackView = [(WFAutomationSummaryIconsView *)self stackView];
    homeTriggerIconView2 = [(WFAutomationSummaryIconsView *)self homeTriggerIconView];
    [stackView removeArrangedSubview:homeTriggerIconView2];

    homeTriggerIconView3 = [(WFAutomationSummaryIconsView *)self homeTriggerIconView];
    [homeTriggerIconView3 removeFromSuperview];

    [(WFAutomationSummaryIconsView *)self setHomeTriggerIconView:0];
  }

  triggerIconView = [(WFAutomationSummaryIconsView *)self triggerIconView];

  if (triggerIconView)
  {
    triggerIconView2 = [(WFAutomationSummaryIconsView *)self triggerIconView];
    [triggerIconView2 setImage:iconCopy];

    [triggerCopy displayGlyphCornerRadius];
    v17 = v16;
    triggerIconView3 = [(WFAutomationSummaryIconsView *)self triggerIconView];
    v19 = triggerIconView3;
    if (v17 <= 0.0)
    {
      [triggerIconView3 setClipsToBounds:0];

      triggerIconView4 = [(WFAutomationSummaryIconsView *)self triggerIconView];
      layer = [triggerIconView4 layer];
      v24 = layer;
      v25 = 0.0;
    }

    else
    {
      [triggerIconView3 setClipsToBounds:1];

      [triggerCopy displayGlyphCornerRadius];
      v21 = v20;
      triggerIconView4 = [(WFAutomationSummaryIconsView *)self triggerIconView];
      layer = [triggerIconView4 layer];
      v24 = layer;
      v25 = v21;
    }

    [layer setCornerRadius:v25];
  }

  else
  {
    v26 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:iconCopy];
    [(WFAutomationSummaryIconsView *)self setTriggerIconView:v26];

    triggerIconView5 = [(WFAutomationSummaryIconsView *)self triggerIconView];
    [triggerIconView5 setTranslatesAutoresizingMaskIntoConstraints:0];

    stackView2 = [(WFAutomationSummaryIconsView *)self stackView];
    triggerIconView6 = [(WFAutomationSummaryIconsView *)self triggerIconView];
    [stackView2 insertArrangedSubview:triggerIconView6 atIndex:0];

    triggerIconView4 = [(WFAutomationSummaryIconsView *)self triggerIconView];
    [(WFAutomationSummaryIconsView *)self configureIconView:triggerIconView4];
  }

  triggerIconView7 = [(WFAutomationSummaryIconsView *)self triggerIconView];
  [triggerIconView7 setTintColor:colorCopy];

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

- (WFAutomationSummaryIconsView)initWithFrame:(CGRect)frame
{
  v37[4] = *MEMORY[0x277D85DE8];
  v36.receiver = self;
  v36.super_class = WFAutomationSummaryIconsView;
  v3 = [(WFAutomationSummaryIconsView *)&v36 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    topAnchor = [(UIStackView *)v3->_stackView topAnchor];
    topAnchor2 = [(WFAutomationSummaryIconsView *)v3 topAnchor];
    v31 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v37[0] = v31;
    bottomAnchor = [(UIStackView *)v3->_stackView bottomAnchor];
    bottomAnchor2 = [(WFAutomationSummaryIconsView *)v3 bottomAnchor];
    v6 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v37[1] = v6;
    leadingAnchor = [(UIStackView *)v3->_stackView leadingAnchor];
    leadingAnchor2 = [(WFAutomationSummaryIconsView *)v3 leadingAnchor];
    v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v37[2] = v9;
    trailingAnchor = [(UIStackView *)v3->_stackView trailingAnchor];
    trailingAnchor2 = [(WFAutomationSummaryIconsView *)v3 trailingAnchor];
    v12 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
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

    mEMORY[0x277CFC248] = [MEMORY[0x277CFC248] sharedContext];
    LODWORD(v19) = [mEMORY[0x277CFC248] shouldReverseLayoutDirection];

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