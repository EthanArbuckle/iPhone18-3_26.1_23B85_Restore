@interface WFWidgetConfigurationCardView
- (WFWidgetConfigurationCardView)initWithRequest:(id)a3 contentView:(id)a4;
- (WFWidgetConfigurationCardViewDelegate)delegate;
- (void)setBackgroundColor:(id)a3;
- (void)setContentView:(id)a3 stretchToFit:(BOOL)a4;
- (void)setWidgetDescriptionTallScriptCompensatedSpacing:(double)a3;
- (void)widgetConfigurationCardHeaderViewDidRequestToClose:(id)a3;
@end

@implementation WFWidgetConfigurationCardView

- (WFWidgetConfigurationCardViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)widgetConfigurationCardHeaderViewDidRequestToClose:(id)a3
{
  v4 = [(WFWidgetConfigurationCardView *)self delegate];
  [v4 widgetConfigurationCardViewDidRequestToClose:self];
}

- (void)setWidgetDescriptionTallScriptCompensatedSpacing:(double)a3
{
  self->_widgetDescriptionTallScriptCompensatedSpacing = a3;
  v4 = [(WFWidgetConfigurationCardView *)self headerView];
  [v4 setWidgetDescriptionTallScriptCompensatedSpacing:a3];
}

- (void)setContentView:(id)a3 stretchToFit:(BOOL)a4
{
  v4 = a4;
  v30[4] = *MEMORY[0x1E69E9840];
  v7 = a3;
  contentView = self->_contentView;
  if (contentView)
  {
    [(UIView *)contentView removeFromSuperview];
  }

  objc_storeStrong(&self->_contentView, a3);
  [(UIView *)self->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
  if (v7)
  {
    [(WFWidgetConfigurationCardView *)self bounds];
    [v7 setFrame:?];
    v9 = [(WFWidgetConfigurationCardView *)self headerView];
    [(WFWidgetConfigurationCardView *)self insertSubview:v7 belowSubview:v9];

    v26 = MEMORY[0x1E696ACD8];
    if (v4)
    {
      v10 = [v7 leadingAnchor];
      v27 = [(UILayoutGuide *)self->_contentViewGuide leadingAnchor];
      v28 = v10;
      v25 = [v10 constraintEqualToAnchor:?];
      v30[0] = v25;
      v11 = [v7 trailingAnchor];
      v12 = [(UILayoutGuide *)self->_contentViewGuide trailingAnchor];
      v24 = v11;
      v13 = [v11 constraintEqualToAnchor:v12];
      v30[1] = v13;
      v14 = [v7 topAnchor];
      v15 = [(UILayoutGuide *)self->_contentViewGuide topAnchor];
      v16 = [v14 constraintEqualToAnchor:v15];
      v30[2] = v16;
      v17 = [v7 bottomAnchor];
      v18 = [(UILayoutGuide *)self->_contentViewGuide bottomAnchor];
      v19 = [v17 constraintEqualToAnchor:v18];
      v30[3] = v19;
      v20 = v30;
    }

    else
    {
      v21 = [v7 centerXAnchor];
      v27 = [(UILayoutGuide *)self->_contentViewGuide centerXAnchor];
      v28 = v21;
      v25 = [v21 constraintEqualToAnchor:?];
      v29[0] = v25;
      v22 = [v7 centerYAnchor];
      v12 = [(UILayoutGuide *)self->_contentViewGuide centerYAnchor];
      [(WFWidgetConfigurationCardView *)self widgetDescriptionTallScriptCompensatedSpacing];
      v24 = v22;
      v13 = [v22 constraintEqualToAnchor:v12 constant:?];
      v29[1] = v13;
      v14 = [v7 widthAnchor];
      v15 = [(UILayoutGuide *)self->_contentViewGuide widthAnchor];
      v16 = [v14 constraintLessThanOrEqualToAnchor:v15];
      v29[2] = v16;
      v17 = [v7 heightAnchor];
      v18 = [(UILayoutGuide *)self->_contentViewGuide heightAnchor];
      v19 = [v17 constraintLessThanOrEqualToAnchor:v18];
      v29[3] = v19;
      v20 = v29;
    }

    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:4];
    [v26 activateConstraints:v23];
  }
}

- (void)setBackgroundColor:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_backgroundColor, a3);
  if ([(WFWidgetConfigurationCardView *)self configurationStyle]!= 3 || (_UISolariumEnabled() & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = WFWidgetConfigurationCardView;
    [(WFWidgetConfigurationCardView *)&v7 setBackgroundColor:v5];
  }

  v6 = [(WFWidgetConfigurationCardView *)self backgroundView];
  [v6 setBackgroundColor:v5];
}

- (WFWidgetConfigurationCardView)initWithRequest:(id)a3 contentView:(id)a4
{
  v131[15] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x1E695EFF8];
  v9 = *(MEMORY[0x1E695EFF8] + 8);
  [v6 defaultCardSize];
  v130.receiver = self;
  v130.super_class = WFWidgetConfigurationCardView;
  v12 = [(WFWidgetConfigurationCardView *)&v130 initWithFrame:v8, v9, v10, v11];
  if (v12)
  {
    v129 = v7;
    v12->_configurationStyle = [v6 resolvedWidgetConfigurationStyle];
    v13 = objc_alloc_init(MEMORY[0x1E69AE168]);
    backgroundView = v12->_backgroundView;
    v12->_backgroundView = v13;

    v15 = [(WFWidgetConfigurationCardView *)v12 backgroundView];
    v16 = [v15 visualStylingProviderForCategory:1];
    strokeProvider = v12->_strokeProvider;
    v12->_strokeProvider = v16;

    v18 = [(WFWidgetConfigurationCardView *)v12 backgroundView];
    v19 = [v18 visualStylingProviderForCategory:2];
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

      v24 = [(WFWidgetConfigurationCardView *)v12 layer];
      [v24 setCornerRadius:v22];

      v25 = [(WFWidgetConfigurationCardView *)v12 backgroundView];
      v26 = [v25 layer];
      [v26 setCornerRadius:v22];

      [(WFWidgetConfigurationCardView *)v12 setLayoutMargins:v23, 16.0, v23, 16.0];
      v27 = *MEMORY[0x1E69796E8];
      v28 = [(WFWidgetConfigurationCardView *)v12 layer];
      [v28 setCornerCurve:v27];

      v29 = [(WFWidgetConfigurationCardView *)v12 backgroundView];
      v30 = [v29 layer];
      [v30 setCornerCurve:v27];

      [(WFWidgetConfigurationCardView *)v12 setClipsToBounds:1];
    }

    else
    {
      [(WFWidgetConfigurationCardView *)v12 setLayoutMargins:20.0, 20.0, 20.0, 20.0];
    }

    v31 = [(WFWidgetConfigurationCardView *)v12 backgroundView];
    [v31 setAutoresizingMask:18];

    v32 = [(WFWidgetConfigurationCardView *)v12 backgroundView];
    [v32 setTranslatesAutoresizingMaskIntoConstraints:1];

    [(WFWidgetConfigurationCardView *)v12 bounds];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v41 = [(WFWidgetConfigurationCardView *)v12 backgroundView];
    [v41 setFrame:{v34, v36, v38, v40}];

    v42 = [(WFWidgetConfigurationCardView *)v12 backgroundView];
    [(WFWidgetConfigurationCardView *)v12 addSubview:v42];

    if (_UISolariumEnabled() && [(WFWidgetConfigurationCardView *)v12 configurationStyle]== 3)
    {
      v43 = [(WFWidgetConfigurationCardView *)v12 backgroundView];
      [v43 setAutoresizingMask:36];

      v44 = *MEMORY[0x1E695F058];
      v45 = *(MEMORY[0x1E695F058] + 8);
      v46 = *(MEMORY[0x1E695F058] + 16);
      v47 = *(MEMORY[0x1E695F058] + 24);
      v48 = [(WFWidgetConfigurationCardView *)v12 backgroundView];
      [v48 setFrame:{v44, v45, v46, v47}];
    }

    if (_UISolariumEnabled() && [(WFWidgetConfigurationCardView *)v12 configurationStyle]!= 3)
    {
      v49 = objc_alloc_init(MEMORY[0x1E69DD250]);
      [v49 setAutoresizingMask:18];
      [v49 setTranslatesAutoresizingMaskIntoConstraints:1];
      v50 = [(WFWidgetConfigurationCardView *)v12 backgroundView];
      [v50 bounds];
      [v49 setFrame:?];

      v51 = [(WFWidgetConfigurationCardView *)v12 layer];
      [v51 cornerRadius];
      v53 = v52;
      v54 = [v49 layer];
      [v54 setCornerRadius:v53];

      v55 = *MEMORY[0x1E69796E8];
      v56 = [v49 layer];
      [v56 setCornerCurve:v55];

      v57 = [objc_alloc(MEMORY[0x1E69DD818]) initWithVariant:0];
      [v57 setExcludingPlatter:1];
      [v49 _setBackground:v57];
      [(WFWidgetConfigurationCardView *)v12 addSubview:v49];
    }

    v58 = [[WFWidgetConfigurationCardHeaderView alloc] initWithRequest:v6];
    [(WFWidgetConfigurationCardHeaderView *)v58 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(WFWidgetConfigurationCardHeaderView *)v58 setPreservesSuperviewLayoutMargins:1];
    [(WFWidgetConfigurationCardHeaderView *)v58 setDelegate:v12];
    [(WFWidgetConfigurationCardView *)v12 addSubview:v58];
    headerView = v12->_headerView;
    v12->_headerView = v58;
    v60 = v58;

    v61 = [(WFWidgetConfigurationCardView *)v12 strokeProvider];
    v62 = [(WFWidgetConfigurationCardHeaderView *)v60 titleLabel];
    [v61 automaticallyUpdateView:v62 withStyle:0];

    v63 = [(WFWidgetConfigurationCardView *)v12 strokeProvider];
    v64 = [(WFWidgetConfigurationCardHeaderView *)v60 subtitleLabel];
    [v63 automaticallyUpdateView:v64 withStyle:2];

    v65 = [(WFWidgetConfigurationCardView *)v12 strokeProvider];
    v66 = [(WFWidgetConfigurationCardHeaderView *)v60 closeButton];
    [v65 automaticallyUpdateView:v66 withStyle:2 andObserverBlock:&__block_literal_global_1521];

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
    v128 = [(WFWidgetConfigurationCardView *)v12 topAnchor];
    v127 = [(WFWidgetConfigurationCardView *)v12 topAnchor];
    v126 = [v128 constraintEqualToAnchor:v127];
    v131[0] = v126;
    v125 = [(WFWidgetConfigurationCardView *)v12 leadingAnchor];
    v124 = [(WFWidgetConfigurationCardView *)v12 leadingAnchor];
    v123 = [v125 constraintEqualToAnchor:v124];
    v131[1] = v123;
    v122 = [(WFWidgetConfigurationCardView *)v12 trailingAnchor];
    v121 = [(WFWidgetConfigurationCardView *)v12 trailingAnchor];
    v120 = [v122 constraintEqualToAnchor:v121];
    v131[2] = v120;
    v119 = [(WFWidgetConfigurationCardView *)v12 bottomAnchor];
    v118 = [(WFWidgetConfigurationCardView *)v12 bottomAnchor];
    v117 = [v119 constraintEqualToAnchor:v118];
    v131[3] = v117;
    v116 = [(WFWidgetConfigurationCardHeaderView *)v60 topAnchor];
    v115 = [(WFWidgetConfigurationCardView *)v12 topAnchor];
    v114 = [v116 constraintEqualToAnchor:v115];
    v131[4] = v114;
    v95 = v60;
    v113 = [(WFWidgetConfigurationCardHeaderView *)v60 layoutMarginsGuide];
    v112 = [v113 leadingAnchor];
    v111 = [(UILayoutGuide *)v12->_supplementaryContentLayoutMarginsGuide leadingAnchor];
    v110 = [v112 constraintEqualToAnchor:v111];
    v131[5] = v110;
    v109 = [(WFWidgetConfigurationCardHeaderView *)v60 layoutMarginsGuide];
    v108 = [v109 trailingAnchor];
    v107 = [(UILayoutGuide *)v12->_supplementaryContentLayoutMarginsGuide trailingAnchor];
    v105 = [v108 constraintEqualToAnchor:v107];
    v131[6] = v105;
    v104 = [(UILayoutGuide *)v12->_contentViewGuide topAnchor];
    v103 = [(WFWidgetConfigurationCardHeaderView *)v12->_headerView bottomAnchor];
    v102 = [v104 constraintEqualToAnchor:v103];
    v131[7] = v102;
    v101 = [(UILayoutGuide *)v12->_contentViewGuide leadingAnchor];
    v100 = [(WFWidgetConfigurationCardView *)v12 leadingAnchor];
    v99 = [v101 constraintEqualToAnchor:v100];
    v131[8] = v99;
    v98 = [(UILayoutGuide *)v12->_contentViewGuide trailingAnchor];
    v97 = [(WFWidgetConfigurationCardView *)v12 trailingAnchor];
    v96 = [v98 constraintEqualToAnchor:v97];
    v131[9] = v96;
    v94 = [(UILayoutGuide *)v12->_contentViewGuide bottomAnchor];
    v93 = [(WFWidgetConfigurationCardView *)v12 bottomAnchor];
    v92 = [v94 constraintEqualToAnchor:v93];
    v131[10] = v92;
    v90 = [(UILayoutGuide *)v12->_supplementaryContentLayoutMarginsGuide topAnchor];
    v91 = [(WFWidgetConfigurationCardView *)v12 layoutMarginsGuide];
    v89 = [v91 topAnchor];
    v88 = [v90 constraintEqualToAnchor:v89];
    v131[11] = v88;
    v86 = [(UILayoutGuide *)v12->_supplementaryContentLayoutMarginsGuide bottomAnchor];
    v87 = [(WFWidgetConfigurationCardView *)v12 layoutMarginsGuide];
    v85 = [v87 bottomAnchor];
    v84 = [v86 constraintEqualToAnchor:v85];
    v131[12] = v84;
    v83 = [(UILayoutGuide *)v12->_supplementaryContentLayoutMarginsGuide leadingAnchor];
    v72 = [(WFWidgetConfigurationCardView *)v12 layoutMarginsGuide];
    v73 = [v72 leadingAnchor];
    v74 = [v83 constraintEqualToAnchor:v73 constant:v71];
    v131[13] = v74;
    v75 = [(UILayoutGuide *)v12->_supplementaryContentLayoutMarginsGuide trailingAnchor];
    v76 = [(WFWidgetConfigurationCardView *)v12 layoutMarginsGuide];
    v77 = [v76 trailingAnchor];
    [v75 constraintEqualToAnchor:v77 constant:-v71];
    v79 = v78 = v6;
    v131[14] = v79;
    v80 = [MEMORY[0x1E695DEC8] arrayWithObjects:v131 count:15];
    [v106 activateConstraints:v80];

    v6 = v78;
    v7 = v129;
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