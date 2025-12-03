@interface WFWidgetConfigurationCardView
- (WFWidgetConfigurationCardView)initWithRequest:(id)request contentView:(id)view;
- (WFWidgetConfigurationCardViewDelegate)delegate;
- (void)setBackgroundColor:(id)color;
- (void)setContentView:(id)view stretchToFit:(BOOL)fit;
- (void)setWidgetDescriptionTallScriptCompensatedSpacing:(double)spacing;
- (void)widgetConfigurationCardHeaderViewDidRequestToClose:(id)close;
@end

@implementation WFWidgetConfigurationCardView

- (WFWidgetConfigurationCardViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)widgetConfigurationCardHeaderViewDidRequestToClose:(id)close
{
  delegate = [(WFWidgetConfigurationCardView *)self delegate];
  [delegate widgetConfigurationCardViewDidRequestToClose:self];
}

- (void)setWidgetDescriptionTallScriptCompensatedSpacing:(double)spacing
{
  self->_widgetDescriptionTallScriptCompensatedSpacing = spacing;
  headerView = [(WFWidgetConfigurationCardView *)self headerView];
  [headerView setWidgetDescriptionTallScriptCompensatedSpacing:spacing];
}

- (void)setContentView:(id)view stretchToFit:(BOOL)fit
{
  fitCopy = fit;
  v30[4] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  contentView = self->_contentView;
  if (contentView)
  {
    [(UIView *)contentView removeFromSuperview];
  }

  objc_storeStrong(&self->_contentView, view);
  [(UIView *)self->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
  if (viewCopy)
  {
    [(WFWidgetConfigurationCardView *)self bounds];
    [viewCopy setFrame:?];
    headerView = [(WFWidgetConfigurationCardView *)self headerView];
    [(WFWidgetConfigurationCardView *)self insertSubview:viewCopy belowSubview:headerView];

    v26 = MEMORY[0x1E696ACD8];
    if (fitCopy)
    {
      leadingAnchor = [viewCopy leadingAnchor];
      leadingAnchor2 = [(UILayoutGuide *)self->_contentViewGuide leadingAnchor];
      v28 = leadingAnchor;
      v25 = [leadingAnchor constraintEqualToAnchor:?];
      v30[0] = v25;
      trailingAnchor = [viewCopy trailingAnchor];
      trailingAnchor2 = [(UILayoutGuide *)self->_contentViewGuide trailingAnchor];
      v24 = trailingAnchor;
      v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v30[1] = v13;
      topAnchor = [viewCopy topAnchor];
      topAnchor2 = [(UILayoutGuide *)self->_contentViewGuide topAnchor];
      v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v30[2] = v16;
      bottomAnchor = [viewCopy bottomAnchor];
      bottomAnchor2 = [(UILayoutGuide *)self->_contentViewGuide bottomAnchor];
      v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v30[3] = v19;
      v20 = v30;
    }

    else
    {
      centerXAnchor = [viewCopy centerXAnchor];
      leadingAnchor2 = [(UILayoutGuide *)self->_contentViewGuide centerXAnchor];
      v28 = centerXAnchor;
      v25 = [centerXAnchor constraintEqualToAnchor:?];
      v29[0] = v25;
      centerYAnchor = [viewCopy centerYAnchor];
      trailingAnchor2 = [(UILayoutGuide *)self->_contentViewGuide centerYAnchor];
      [(WFWidgetConfigurationCardView *)self widgetDescriptionTallScriptCompensatedSpacing];
      v24 = centerYAnchor;
      v13 = [centerYAnchor constraintEqualToAnchor:trailingAnchor2 constant:?];
      v29[1] = v13;
      topAnchor = [viewCopy widthAnchor];
      topAnchor2 = [(UILayoutGuide *)self->_contentViewGuide widthAnchor];
      v16 = [topAnchor constraintLessThanOrEqualToAnchor:topAnchor2];
      v29[2] = v16;
      bottomAnchor = [viewCopy heightAnchor];
      bottomAnchor2 = [(UILayoutGuide *)self->_contentViewGuide heightAnchor];
      v19 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
      v29[3] = v19;
      v20 = v29;
    }

    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:4];
    [v26 activateConstraints:v23];
  }
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  objc_storeStrong(&self->_backgroundColor, color);
  if ([(WFWidgetConfigurationCardView *)self configurationStyle]!= 3 || (_UISolariumEnabled() & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = WFWidgetConfigurationCardView;
    [(WFWidgetConfigurationCardView *)&v7 setBackgroundColor:colorCopy];
  }

  backgroundView = [(WFWidgetConfigurationCardView *)self backgroundView];
  [backgroundView setBackgroundColor:colorCopy];
}

- (WFWidgetConfigurationCardView)initWithRequest:(id)request contentView:(id)view
{
  v131[15] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  viewCopy = view;
  v8 = *MEMORY[0x1E695EFF8];
  v9 = *(MEMORY[0x1E695EFF8] + 8);
  [requestCopy defaultCardSize];
  v130.receiver = self;
  v130.super_class = WFWidgetConfigurationCardView;
  v12 = [(WFWidgetConfigurationCardView *)&v130 initWithFrame:v8, v9, v10, v11];
  if (v12)
  {
    v129 = viewCopy;
    v12->_configurationStyle = [requestCopy resolvedWidgetConfigurationStyle];
    v13 = objc_alloc_init(MEMORY[0x1E69AE168]);
    backgroundView = v12->_backgroundView;
    v12->_backgroundView = v13;

    backgroundView = [(WFWidgetConfigurationCardView *)v12 backgroundView];
    v16 = [backgroundView visualStylingProviderForCategory:1];
    strokeProvider = v12->_strokeProvider;
    v12->_strokeProvider = v16;

    backgroundView2 = [(WFWidgetConfigurationCardView *)v12 backgroundView];
    v19 = [backgroundView2 visualStylingProviderForCategory:2];
    fillProvider = v12->_fillProvider;
    v12->_fillProvider = v19;

    if (([(WFWidgetConfigurationCardView *)v12 configurationStyle]& 0xFFFFFFFFFFFFFFFDLL) == 1)
    {
      v21 = _UISolariumEnabled();
      if (v21)
      {
        v22 = 42.0;
      }

      else
      {
        v22 = 25.0;
      }

      if (v21)
      {
        v23 = 24.0;
      }

      else
      {
        v23 = 17.0;
      }

      layer = [(WFWidgetConfigurationCardView *)v12 layer];
      [layer setCornerRadius:v22];

      backgroundView3 = [(WFWidgetConfigurationCardView *)v12 backgroundView];
      layer2 = [backgroundView3 layer];
      [layer2 setCornerRadius:v22];

      [(WFWidgetConfigurationCardView *)v12 setLayoutMargins:v23, 16.0, v23, 16.0];
      v27 = *MEMORY[0x1E69796E8];
      layer3 = [(WFWidgetConfigurationCardView *)v12 layer];
      [layer3 setCornerCurve:v27];

      backgroundView4 = [(WFWidgetConfigurationCardView *)v12 backgroundView];
      layer4 = [backgroundView4 layer];
      [layer4 setCornerCurve:v27];

      [(WFWidgetConfigurationCardView *)v12 setClipsToBounds:1];
    }

    else
    {
      [(WFWidgetConfigurationCardView *)v12 setLayoutMargins:20.0, 20.0, 20.0, 20.0];
    }

    backgroundView5 = [(WFWidgetConfigurationCardView *)v12 backgroundView];
    [backgroundView5 setAutoresizingMask:18];

    backgroundView6 = [(WFWidgetConfigurationCardView *)v12 backgroundView];
    [backgroundView6 setTranslatesAutoresizingMaskIntoConstraints:1];

    [(WFWidgetConfigurationCardView *)v12 bounds];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    backgroundView7 = [(WFWidgetConfigurationCardView *)v12 backgroundView];
    [backgroundView7 setFrame:{v34, v36, v38, v40}];

    backgroundView8 = [(WFWidgetConfigurationCardView *)v12 backgroundView];
    [(WFWidgetConfigurationCardView *)v12 addSubview:backgroundView8];

    if (_UISolariumEnabled() && [(WFWidgetConfigurationCardView *)v12 configurationStyle]== 3)
    {
      backgroundView9 = [(WFWidgetConfigurationCardView *)v12 backgroundView];
      [backgroundView9 setAutoresizingMask:36];

      v44 = *MEMORY[0x1E695F058];
      v45 = *(MEMORY[0x1E695F058] + 8);
      v46 = *(MEMORY[0x1E695F058] + 16);
      v47 = *(MEMORY[0x1E695F058] + 24);
      backgroundView10 = [(WFWidgetConfigurationCardView *)v12 backgroundView];
      [backgroundView10 setFrame:{v44, v45, v46, v47}];
    }

    if (_UISolariumEnabled() && [(WFWidgetConfigurationCardView *)v12 configurationStyle]!= 3)
    {
      v49 = objc_alloc_init(MEMORY[0x1E69DD250]);
      [v49 setAutoresizingMask:18];
      [v49 setTranslatesAutoresizingMaskIntoConstraints:1];
      backgroundView11 = [(WFWidgetConfigurationCardView *)v12 backgroundView];
      [backgroundView11 bounds];
      [v49 setFrame:?];

      layer5 = [(WFWidgetConfigurationCardView *)v12 layer];
      [layer5 cornerRadius];
      v53 = v52;
      layer6 = [v49 layer];
      [layer6 setCornerRadius:v53];

      v55 = *MEMORY[0x1E69796E8];
      layer7 = [v49 layer];
      [layer7 setCornerCurve:v55];

      v57 = [objc_alloc(MEMORY[0x1E69DD818]) initWithVariant:0];
      [v57 setExcludingPlatter:1];
      [v49 _setBackground:v57];
      [(WFWidgetConfigurationCardView *)v12 addSubview:v49];
    }

    v58 = [[WFWidgetConfigurationCardHeaderView alloc] initWithRequest:requestCopy];
    [(WFWidgetConfigurationCardHeaderView *)v58 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(WFWidgetConfigurationCardHeaderView *)v58 setPreservesSuperviewLayoutMargins:1];
    [(WFWidgetConfigurationCardHeaderView *)v58 setDelegate:v12];
    [(WFWidgetConfigurationCardView *)v12 addSubview:v58];
    headerView = v12->_headerView;
    v12->_headerView = v58;
    v60 = v58;

    strokeProvider = [(WFWidgetConfigurationCardView *)v12 strokeProvider];
    titleLabel = [(WFWidgetConfigurationCardHeaderView *)v60 titleLabel];
    [strokeProvider automaticallyUpdateView:titleLabel withStyle:0];

    strokeProvider2 = [(WFWidgetConfigurationCardView *)v12 strokeProvider];
    subtitleLabel = [(WFWidgetConfigurationCardHeaderView *)v60 subtitleLabel];
    [strokeProvider2 automaticallyUpdateView:subtitleLabel withStyle:2];

    strokeProvider3 = [(WFWidgetConfigurationCardView *)v12 strokeProvider];
    closeButton = [(WFWidgetConfigurationCardHeaderView *)v60 closeButton];
    [strokeProvider3 automaticallyUpdateView:closeButton withStyle:2 andObserverBlock:&__block_literal_global_1521];

    v67 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    contentViewGuide = v12->_contentViewGuide;
    v12->_contentViewGuide = v67;

    [(WFWidgetConfigurationCardView *)v12 addLayoutGuide:v12->_contentViewGuide];
    v69 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    supplementaryContentLayoutMarginsGuide = v12->_supplementaryContentLayoutMarginsGuide;
    v12->_supplementaryContentLayoutMarginsGuide = v69;

    [(WFWidgetConfigurationCardView *)v12 addLayoutGuide:v12->_supplementaryContentLayoutMarginsGuide];
    if (_UISolariumEnabled())
    {
      v71 = 8.0;
    }

    else
    {
      v71 = 0.0;
    }

    v106 = MEMORY[0x1E696ACD8];
    topAnchor = [(WFWidgetConfigurationCardView *)v12 topAnchor];
    topAnchor2 = [(WFWidgetConfigurationCardView *)v12 topAnchor];
    v126 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v131[0] = v126;
    leadingAnchor = [(WFWidgetConfigurationCardView *)v12 leadingAnchor];
    leadingAnchor2 = [(WFWidgetConfigurationCardView *)v12 leadingAnchor];
    v123 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v131[1] = v123;
    trailingAnchor = [(WFWidgetConfigurationCardView *)v12 trailingAnchor];
    trailingAnchor2 = [(WFWidgetConfigurationCardView *)v12 trailingAnchor];
    v120 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v131[2] = v120;
    bottomAnchor = [(WFWidgetConfigurationCardView *)v12 bottomAnchor];
    bottomAnchor2 = [(WFWidgetConfigurationCardView *)v12 bottomAnchor];
    v117 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v131[3] = v117;
    topAnchor3 = [(WFWidgetConfigurationCardHeaderView *)v60 topAnchor];
    topAnchor4 = [(WFWidgetConfigurationCardView *)v12 topAnchor];
    v114 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v131[4] = v114;
    v95 = v60;
    layoutMarginsGuide = [(WFWidgetConfigurationCardHeaderView *)v60 layoutMarginsGuide];
    leadingAnchor3 = [layoutMarginsGuide leadingAnchor];
    leadingAnchor4 = [(UILayoutGuide *)v12->_supplementaryContentLayoutMarginsGuide leadingAnchor];
    v110 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v131[5] = v110;
    layoutMarginsGuide2 = [(WFWidgetConfigurationCardHeaderView *)v60 layoutMarginsGuide];
    trailingAnchor3 = [layoutMarginsGuide2 trailingAnchor];
    trailingAnchor4 = [(UILayoutGuide *)v12->_supplementaryContentLayoutMarginsGuide trailingAnchor];
    v105 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v131[6] = v105;
    topAnchor5 = [(UILayoutGuide *)v12->_contentViewGuide topAnchor];
    bottomAnchor3 = [(WFWidgetConfigurationCardHeaderView *)v12->_headerView bottomAnchor];
    v102 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3];
    v131[7] = v102;
    leadingAnchor5 = [(UILayoutGuide *)v12->_contentViewGuide leadingAnchor];
    leadingAnchor6 = [(WFWidgetConfigurationCardView *)v12 leadingAnchor];
    v99 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v131[8] = v99;
    trailingAnchor5 = [(UILayoutGuide *)v12->_contentViewGuide trailingAnchor];
    trailingAnchor6 = [(WFWidgetConfigurationCardView *)v12 trailingAnchor];
    v96 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    v131[9] = v96;
    bottomAnchor4 = [(UILayoutGuide *)v12->_contentViewGuide bottomAnchor];
    bottomAnchor5 = [(WFWidgetConfigurationCardView *)v12 bottomAnchor];
    v92 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
    v131[10] = v92;
    topAnchor6 = [(UILayoutGuide *)v12->_supplementaryContentLayoutMarginsGuide topAnchor];
    layoutMarginsGuide3 = [(WFWidgetConfigurationCardView *)v12 layoutMarginsGuide];
    topAnchor7 = [layoutMarginsGuide3 topAnchor];
    v88 = [topAnchor6 constraintEqualToAnchor:topAnchor7];
    v131[11] = v88;
    bottomAnchor6 = [(UILayoutGuide *)v12->_supplementaryContentLayoutMarginsGuide bottomAnchor];
    layoutMarginsGuide4 = [(WFWidgetConfigurationCardView *)v12 layoutMarginsGuide];
    bottomAnchor7 = [layoutMarginsGuide4 bottomAnchor];
    v84 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
    v131[12] = v84;
    leadingAnchor7 = [(UILayoutGuide *)v12->_supplementaryContentLayoutMarginsGuide leadingAnchor];
    layoutMarginsGuide5 = [(WFWidgetConfigurationCardView *)v12 layoutMarginsGuide];
    leadingAnchor8 = [layoutMarginsGuide5 leadingAnchor];
    v74 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:v71];
    v131[13] = v74;
    trailingAnchor7 = [(UILayoutGuide *)v12->_supplementaryContentLayoutMarginsGuide trailingAnchor];
    layoutMarginsGuide6 = [(WFWidgetConfigurationCardView *)v12 layoutMarginsGuide];
    trailingAnchor8 = [layoutMarginsGuide6 trailingAnchor];
    [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:-v71];
    v79 = v78 = requestCopy;
    v131[14] = v79;
    v80 = [MEMORY[0x1E695DEC8] arrayWithObjects:v131 count:15];
    [v106 activateConstraints:v80];

    requestCopy = v78;
    viewCopy = v129;
    [(WFWidgetConfigurationCardView *)v12 setContentView:v129];
    v81 = v12;
  }

  return v12;
}

void __61__WFWidgetConfigurationCardView_initWithRequest_contentView___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v7 = [a2 _visualStylingForContinuallyUpdatedView:v4];
  v5 = [MEMORY[0x1E69DC888] clearColor];
  [v4 setBackgroundColor:v5];

  v6 = [v7 color];
  [v4 _setImageColor:v6 forState:0];
}

@end