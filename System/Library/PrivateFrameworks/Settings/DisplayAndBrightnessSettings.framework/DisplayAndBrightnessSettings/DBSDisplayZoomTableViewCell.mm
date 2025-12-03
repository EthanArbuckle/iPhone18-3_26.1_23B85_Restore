@interface DBSDisplayZoomTableViewCell
- (DBSDisplayZoomTableViewCellDelegate)delegate;
- (id)_optionViewsByDensity;
- (void)_configureForLegacy;
- (void)_configureForThreeDisplayOptionsWithLeadingView:(id)view middleView:(id)middleView trailingView:(id)trailingView;
- (void)_configureForTwoDisplayOptionsWithLeadingView:(id)view trailingView:(id)trailingView;
- (void)configureView;
- (void)startAnimation;
- (void)stopAnimation;
- (void)updateSelectedViewWithOption:(unint64_t)option;
- (void)userDidTapOnDisplayZoomOptionView:(id)view;
@end

@implementation DBSDisplayZoomTableViewCell

- (void)configureView
{
  delegate = [(DBSDisplayZoomTableViewCell *)self delegate];
  supportedDisplayZoomOptions = [delegate supportedDisplayZoomOptions];

  v4 = [supportedDisplayZoomOptions containsObject:&unk_28349F448];
  v5 = MEMORY[0x277CBF3A0];
  if (v4)
  {
    v6 = [[DBSDisplayZoomOptionView alloc] initWithFrame:0 displayZoomOption:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    standardOptionView = self->_standardOptionView;
    self->_standardOptionView = v6;

    standardOptionView = [(DBSDisplayZoomTableViewCell *)self standardOptionView];
    [standardOptionView setTranslatesAutoresizingMaskIntoConstraints:0];

    standardOptionView2 = [(DBSDisplayZoomTableViewCell *)self standardOptionView];
    [standardOptionView2 setDelegate:self];

    v10 = DBSStringForDisplayZoomOption(0);
    standardOptionView3 = [(DBSDisplayZoomTableViewCell *)self standardOptionView];
    [standardOptionView3 setAccessibilityIdentifier:v10];
  }

  if ([supportedDisplayZoomOptions containsObject:&unk_28349F460])
  {
    v12 = [[DBSDisplayZoomOptionView alloc] initWithFrame:1 displayZoomOption:*v5, v5[1], v5[2], v5[3]];
    zoomedOptionView = self->_zoomedOptionView;
    self->_zoomedOptionView = v12;

    zoomedOptionView = [(DBSDisplayZoomTableViewCell *)self zoomedOptionView];
    [zoomedOptionView setTranslatesAutoresizingMaskIntoConstraints:0];

    zoomedOptionView2 = [(DBSDisplayZoomTableViewCell *)self zoomedOptionView];
    [zoomedOptionView2 setDelegate:self];

    v16 = DBSStringForDisplayZoomOption(1);
    zoomedOptionView3 = [(DBSDisplayZoomTableViewCell *)self zoomedOptionView];
    [zoomedOptionView3 setAccessibilityIdentifier:v16];
  }

  if ([supportedDisplayZoomOptions containsObject:&unk_28349F478])
  {
    v18 = [[DBSDisplayZoomOptionView alloc] initWithFrame:2 displayZoomOption:*v5, v5[1], v5[2], v5[3]];
    denseOptionView = self->_denseOptionView;
    self->_denseOptionView = v18;

    denseOptionView = [(DBSDisplayZoomTableViewCell *)self denseOptionView];
    [denseOptionView setTranslatesAutoresizingMaskIntoConstraints:0];

    denseOptionView2 = [(DBSDisplayZoomTableViewCell *)self denseOptionView];
    [denseOptionView2 setDelegate:self];

    v22 = DBSStringForDisplayZoomOption(2);
    denseOptionView3 = [(DBSDisplayZoomTableViewCell *)self denseOptionView];
    [denseOptionView3 setAccessibilityIdentifier:v22];
  }

  if ([supportedDisplayZoomOptions containsObject:&unk_28349F490])
  {
    v24 = [[DBSDisplayZoomOptionView alloc] initWithFrame:3 displayZoomOption:*v5, v5[1], v5[2], v5[3]];
    denserOptionView = self->_denserOptionView;
    self->_denserOptionView = v24;

    denserOptionView = [(DBSDisplayZoomTableViewCell *)self denserOptionView];
    [denserOptionView setTranslatesAutoresizingMaskIntoConstraints:0];

    denserOptionView2 = [(DBSDisplayZoomTableViewCell *)self denserOptionView];
    [denserOptionView2 setDelegate:self];

    v28 = DBSStringForDisplayZoomOption(3);
    denserOptionView3 = [(DBSDisplayZoomTableViewCell *)self denserOptionView];
    [denserOptionView3 setAccessibilityIdentifier:v28];
  }

  if (DBSReverseZoomEnabled())
  {
    _optionViewsByDensity = [(DBSDisplayZoomTableViewCell *)self _optionViewsByDensity];
    if ([_optionViewsByDensity count] >= 4)
    {
      v31 = [_optionViewsByDensity subarrayWithRange:{objc_msgSend(_optionViewsByDensity, "count") - 3, 3}];

      _optionViewsByDensity = v31;
    }

    v32 = [_optionViewsByDensity objectAtIndexedSubscript:0];
    v33 = [_optionViewsByDensity objectAtIndexedSubscript:1];
    v34 = 0;
    if ([_optionViewsByDensity count] >= 3)
    {
      v34 = [_optionViewsByDensity objectAtIndexedSubscript:2];
    }

    if ([supportedDisplayZoomOptions count] == 2)
    {
      [(DBSDisplayZoomTableViewCell *)self _configureForTwoDisplayOptionsWithLeadingView:v32 trailingView:v33];
    }

    else
    {
      [(DBSDisplayZoomTableViewCell *)self _configureForThreeDisplayOptionsWithLeadingView:v32 middleView:v33 trailingView:v34];
    }
  }

  else
  {
    [(DBSDisplayZoomTableViewCell *)self _configureForLegacy];
  }

  delegate2 = [(DBSDisplayZoomTableViewCell *)self delegate];
  v36 = objc_opt_respondsToSelector();

  if (v36)
  {
    delegate3 = [(DBSDisplayZoomTableViewCell *)self delegate];
    v38 = [delegate3 displayZoomTableViewCellCurrentlySelectedDisplayZoomOption:self];

    [(DBSDisplayZoomTableViewCell *)self updateSelectedViewWithOption:v38];
  }
}

- (void)_configureForTwoDisplayOptionsWithLeadingView:(id)view trailingView:(id)trailingView
{
  trailingViewCopy = trailingView;
  viewCopy = view;
  contentView = [(DBSDisplayZoomTableViewCell *)self contentView];
  [contentView addSubview:viewCopy];

  contentView2 = [(DBSDisplayZoomTableViewCell *)self contentView];
  [contentView2 addSubview:trailingViewCopy];

  v61 = objc_alloc_init(MEMORY[0x277D756D0]);
  v10 = objc_alloc_init(MEMORY[0x277D756D0]);
  v11 = objc_alloc_init(MEMORY[0x277D756D0]);
  contentView3 = [(DBSDisplayZoomTableViewCell *)self contentView];
  [contentView3 addLayoutGuide:v61];

  contentView4 = [(DBSDisplayZoomTableViewCell *)self contentView];
  [contentView4 addLayoutGuide:v10];

  contentView5 = [(DBSDisplayZoomTableViewCell *)self contentView];
  [contentView5 addLayoutGuide:v11];

  array = [MEMORY[0x277CBEB18] array];
  topAnchor = [trailingViewCopy topAnchor];
  contentView6 = [(DBSDisplayZoomTableViewCell *)self contentView];
  topAnchor2 = [contentView6 topAnchor];
  v19 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:18.0];
  [array addObject:v19];

  topAnchor3 = [viewCopy topAnchor];
  contentView7 = [(DBSDisplayZoomTableViewCell *)self contentView];
  topAnchor4 = [contentView7 topAnchor];
  v23 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:18.0];
  [array addObject:v23];

  bottomAnchor = [trailingViewCopy bottomAnchor];
  contentView8 = [(DBSDisplayZoomTableViewCell *)self contentView];
  bottomAnchor2 = [contentView8 bottomAnchor];
  v27 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-18.0];
  [array addObject:v27];

  bottomAnchor3 = [viewCopy bottomAnchor];
  contentView9 = [(DBSDisplayZoomTableViewCell *)self contentView];
  bottomAnchor4 = [contentView9 bottomAnchor];
  v31 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-18.0];
  [array addObject:v31];

  leadingAnchor = [v61 leadingAnchor];
  contentView10 = [(DBSDisplayZoomTableViewCell *)self contentView];
  leadingAnchor2 = [contentView10 leadingAnchor];
  v35 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [array addObject:v35];

  trailingAnchor = [v61 trailingAnchor];
  leadingAnchor3 = [viewCopy leadingAnchor];
  v38 = [trailingAnchor constraintEqualToAnchor:leadingAnchor3];
  [array addObject:v38];

  trailingAnchor2 = [viewCopy trailingAnchor];
  leadingAnchor4 = [v10 leadingAnchor];
  v41 = [trailingAnchor2 constraintEqualToAnchor:leadingAnchor4];
  [array addObject:v41];

  trailingAnchor3 = [v10 trailingAnchor];
  leadingAnchor5 = [trailingViewCopy leadingAnchor];
  v44 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor5];
  [array addObject:v44];

  trailingAnchor4 = [trailingViewCopy trailingAnchor];
  leadingAnchor6 = [v11 leadingAnchor];
  v47 = [trailingAnchor4 constraintEqualToAnchor:leadingAnchor6];
  [array addObject:v47];

  trailingAnchor5 = [v11 trailingAnchor];
  contentView11 = [(DBSDisplayZoomTableViewCell *)self contentView];
  trailingAnchor6 = [contentView11 trailingAnchor];
  v51 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  [array addObject:v51];

  widthAnchor = [viewCopy widthAnchor];

  widthAnchor2 = [trailingViewCopy widthAnchor];

  v54 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  [array addObject:v54];

  widthAnchor3 = [v61 widthAnchor];
  widthAnchor4 = [v10 widthAnchor];
  v57 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4 multiplier:1.0];
  [array addObject:v57];

  widthAnchor5 = [v10 widthAnchor];
  widthAnchor6 = [v11 widthAnchor];
  v60 = [widthAnchor5 constraintEqualToAnchor:widthAnchor6 multiplier:1.0];
  [array addObject:v60];

  [MEMORY[0x277CCAAD0] activateConstraints:array];
}

- (void)_configureForThreeDisplayOptionsWithLeadingView:(id)view middleView:(id)middleView trailingView:(id)trailingView
{
  trailingViewCopy = trailingView;
  middleViewCopy = middleView;
  viewCopy = view;
  contentView = [(DBSDisplayZoomTableViewCell *)self contentView];
  [contentView addSubview:viewCopy];

  contentView2 = [(DBSDisplayZoomTableViewCell *)self contentView];
  [contentView2 addSubview:middleViewCopy];

  contentView3 = [(DBSDisplayZoomTableViewCell *)self contentView];
  [contentView3 addSubview:trailingViewCopy];

  v87 = objc_alloc_init(MEMORY[0x277D756D0]);
  v85 = objc_alloc_init(MEMORY[0x277D756D0]);
  v14 = objc_alloc_init(MEMORY[0x277D756D0]);
  v86 = objc_alloc_init(MEMORY[0x277D756D0]);
  contentView4 = [(DBSDisplayZoomTableViewCell *)self contentView];
  [contentView4 addLayoutGuide:v87];

  contentView5 = [(DBSDisplayZoomTableViewCell *)self contentView];
  [contentView5 addLayoutGuide:v85];

  contentView6 = [(DBSDisplayZoomTableViewCell *)self contentView];
  [contentView6 addLayoutGuide:v14];

  contentView7 = [(DBSDisplayZoomTableViewCell *)self contentView];
  [contentView7 addLayoutGuide:v86];

  array = [MEMORY[0x277CBEB18] array];
  topAnchor = [trailingViewCopy topAnchor];
  contentView8 = [(DBSDisplayZoomTableViewCell *)self contentView];
  topAnchor2 = [contentView8 topAnchor];
  v23 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:18.0];
  [array addObject:v23];

  topAnchor3 = [viewCopy topAnchor];
  contentView9 = [(DBSDisplayZoomTableViewCell *)self contentView];
  topAnchor4 = [contentView9 topAnchor];
  v27 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:18.0];
  [array addObject:v27];

  topAnchor5 = [middleViewCopy topAnchor];
  contentView10 = [(DBSDisplayZoomTableViewCell *)self contentView];
  topAnchor6 = [contentView10 topAnchor];
  v31 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:18.0];
  [array addObject:v31];

  bottomAnchor = [trailingViewCopy bottomAnchor];
  contentView11 = [(DBSDisplayZoomTableViewCell *)self contentView];
  bottomAnchor2 = [contentView11 bottomAnchor];
  v35 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-18.0];
  [array addObject:v35];

  bottomAnchor3 = [viewCopy bottomAnchor];
  contentView12 = [(DBSDisplayZoomTableViewCell *)self contentView];
  bottomAnchor4 = [contentView12 bottomAnchor];
  v39 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-18.0];
  [array addObject:v39];

  bottomAnchor5 = [middleViewCopy bottomAnchor];
  contentView13 = [(DBSDisplayZoomTableViewCell *)self contentView];
  bottomAnchor6 = [contentView13 bottomAnchor];
  v43 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:-18.0];
  [array addObject:v43];

  leadingAnchor = [v87 leadingAnchor];
  contentView14 = [(DBSDisplayZoomTableViewCell *)self contentView];
  leadingAnchor2 = [contentView14 leadingAnchor];
  v47 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [array addObject:v47];

  trailingAnchor = [v87 trailingAnchor];
  leadingAnchor3 = [viewCopy leadingAnchor];
  v50 = [trailingAnchor constraintEqualToAnchor:leadingAnchor3];
  [array addObject:v50];

  trailingAnchor2 = [viewCopy trailingAnchor];
  leadingAnchor4 = [v85 leadingAnchor];
  v53 = [trailingAnchor2 constraintEqualToAnchor:leadingAnchor4];
  [array addObject:v53];

  trailingAnchor3 = [v85 trailingAnchor];
  leadingAnchor5 = [middleViewCopy leadingAnchor];
  v56 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor5];
  [array addObject:v56];

  trailingAnchor4 = [middleViewCopy trailingAnchor];
  leadingAnchor6 = [v14 leadingAnchor];
  v59 = [trailingAnchor4 constraintEqualToAnchor:leadingAnchor6];
  [array addObject:v59];

  trailingAnchor5 = [v14 trailingAnchor];
  leadingAnchor7 = [trailingViewCopy leadingAnchor];
  v62 = [trailingAnchor5 constraintEqualToAnchor:leadingAnchor7];
  [array addObject:v62];

  trailingAnchor6 = [trailingViewCopy trailingAnchor];
  leadingAnchor8 = [v86 leadingAnchor];
  v65 = [trailingAnchor6 constraintEqualToAnchor:leadingAnchor8];
  [array addObject:v65];

  trailingAnchor7 = [v86 trailingAnchor];
  contentView15 = [(DBSDisplayZoomTableViewCell *)self contentView];
  trailingAnchor8 = [contentView15 trailingAnchor];
  v69 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
  [array addObject:v69];

  widthAnchor = [viewCopy widthAnchor];

  widthAnchor2 = [middleViewCopy widthAnchor];
  v72 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  [array addObject:v72];

  widthAnchor3 = [middleViewCopy widthAnchor];

  widthAnchor4 = [trailingViewCopy widthAnchor];

  v75 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
  [array addObject:v75];

  widthAnchor5 = [v87 widthAnchor];
  widthAnchor6 = [v85 widthAnchor];
  v78 = [widthAnchor5 constraintEqualToAnchor:widthAnchor6 multiplier:1.0];
  [array addObject:v78];

  widthAnchor7 = [v85 widthAnchor];
  widthAnchor8 = [v14 widthAnchor];
  v81 = [widthAnchor7 constraintEqualToAnchor:widthAnchor8 multiplier:1.0];
  [array addObject:v81];

  widthAnchor9 = [v14 widthAnchor];
  widthAnchor10 = [v86 widthAnchor];
  v84 = [widthAnchor9 constraintEqualToAnchor:widthAnchor10 multiplier:1.0];
  [array addObject:v84];

  [MEMORY[0x277CCAAD0] activateConstraints:array];
}

- (void)_configureForLegacy
{
  contentView = [(DBSDisplayZoomTableViewCell *)self contentView];
  zoomedOptionView = [(DBSDisplayZoomTableViewCell *)self zoomedOptionView];
  [contentView addSubview:zoomedOptionView];

  contentView2 = [(DBSDisplayZoomTableViewCell *)self contentView];
  standardOptionView = [(DBSDisplayZoomTableViewCell *)self standardOptionView];
  [contentView2 addSubview:standardOptionView];

  v68 = objc_alloc_init(MEMORY[0x277D756D0]);
  v7 = objc_alloc_init(MEMORY[0x277D756D0]);
  v8 = objc_alloc_init(MEMORY[0x277D756D0]);
  contentView3 = [(DBSDisplayZoomTableViewCell *)self contentView];
  [contentView3 addLayoutGuide:v68];

  contentView4 = [(DBSDisplayZoomTableViewCell *)self contentView];
  [contentView4 addLayoutGuide:v7];

  contentView5 = [(DBSDisplayZoomTableViewCell *)self contentView];
  [contentView5 addLayoutGuide:v8];

  array = [MEMORY[0x277CBEB18] array];
  standardOptionView2 = [(DBSDisplayZoomTableViewCell *)self standardOptionView];
  topAnchor = [standardOptionView2 topAnchor];
  contentView6 = [(DBSDisplayZoomTableViewCell *)self contentView];
  topAnchor2 = [contentView6 topAnchor];
  v17 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:56.0];
  [array addObject:v17];

  zoomedOptionView2 = [(DBSDisplayZoomTableViewCell *)self zoomedOptionView];
  topAnchor3 = [zoomedOptionView2 topAnchor];
  contentView7 = [(DBSDisplayZoomTableViewCell *)self contentView];
  topAnchor4 = [contentView7 topAnchor];
  v22 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:56.0];
  [array addObject:v22];

  standardOptionView3 = [(DBSDisplayZoomTableViewCell *)self standardOptionView];
  bottomAnchor = [standardOptionView3 bottomAnchor];
  contentView8 = [(DBSDisplayZoomTableViewCell *)self contentView];
  bottomAnchor2 = [contentView8 bottomAnchor];
  v27 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-56.0];
  [array addObject:v27];

  zoomedOptionView3 = [(DBSDisplayZoomTableViewCell *)self zoomedOptionView];
  bottomAnchor3 = [zoomedOptionView3 bottomAnchor];
  contentView9 = [(DBSDisplayZoomTableViewCell *)self contentView];
  bottomAnchor4 = [contentView9 bottomAnchor];
  v32 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-56.0];
  [array addObject:v32];

  leadingAnchor = [v68 leadingAnchor];
  contentView10 = [(DBSDisplayZoomTableViewCell *)self contentView];
  leadingAnchor2 = [contentView10 leadingAnchor];
  v36 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [array addObject:v36];

  trailingAnchor = [v68 trailingAnchor];
  zoomedOptionView4 = [(DBSDisplayZoomTableViewCell *)self zoomedOptionView];
  leadingAnchor3 = [zoomedOptionView4 leadingAnchor];
  v40 = [trailingAnchor constraintEqualToAnchor:leadingAnchor3];
  [array addObject:v40];

  zoomedOptionView5 = [(DBSDisplayZoomTableViewCell *)self zoomedOptionView];
  trailingAnchor2 = [zoomedOptionView5 trailingAnchor];
  leadingAnchor4 = [v7 leadingAnchor];
  v44 = [trailingAnchor2 constraintEqualToAnchor:leadingAnchor4];
  [array addObject:v44];

  trailingAnchor3 = [v7 trailingAnchor];
  standardOptionView4 = [(DBSDisplayZoomTableViewCell *)self standardOptionView];
  leadingAnchor5 = [standardOptionView4 leadingAnchor];
  v48 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor5];
  [array addObject:v48];

  standardOptionView5 = [(DBSDisplayZoomTableViewCell *)self standardOptionView];
  trailingAnchor4 = [standardOptionView5 trailingAnchor];
  leadingAnchor6 = [v8 leadingAnchor];
  v52 = [trailingAnchor4 constraintEqualToAnchor:leadingAnchor6];
  [array addObject:v52];

  trailingAnchor5 = [v8 trailingAnchor];
  contentView11 = [(DBSDisplayZoomTableViewCell *)self contentView];
  trailingAnchor6 = [contentView11 trailingAnchor];
  v56 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  [array addObject:v56];

  zoomedOptionView6 = [(DBSDisplayZoomTableViewCell *)self zoomedOptionView];
  widthAnchor = [zoomedOptionView6 widthAnchor];
  standardOptionView6 = [(DBSDisplayZoomTableViewCell *)self standardOptionView];
  widthAnchor2 = [standardOptionView6 widthAnchor];
  v61 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  [array addObject:v61];

  widthAnchor3 = [v68 widthAnchor];
  widthAnchor4 = [v7 widthAnchor];
  v64 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4 multiplier:1.0];
  [array addObject:v64];

  widthAnchor5 = [v7 widthAnchor];
  widthAnchor6 = [v8 widthAnchor];
  v67 = [widthAnchor5 constraintEqualToAnchor:widthAnchor6 multiplier:1.0];
  [array addObject:v67];

  [MEMORY[0x277CCAAD0] activateConstraints:array];
}

- (id)_optionViewsByDensity
{
  v3 = objc_opt_new();
  zoomedOptionView = [(DBSDisplayZoomTableViewCell *)self zoomedOptionView];

  if (zoomedOptionView)
  {
    zoomedOptionView2 = [(DBSDisplayZoomTableViewCell *)self zoomedOptionView];
    [v3 addObject:zoomedOptionView2];
  }

  standardOptionView = [(DBSDisplayZoomTableViewCell *)self standardOptionView];

  if (standardOptionView)
  {
    standardOptionView2 = [(DBSDisplayZoomTableViewCell *)self standardOptionView];
    [v3 addObject:standardOptionView2];
  }

  denseOptionView = [(DBSDisplayZoomTableViewCell *)self denseOptionView];

  if (denseOptionView)
  {
    denseOptionView2 = [(DBSDisplayZoomTableViewCell *)self denseOptionView];
    [v3 addObject:denseOptionView2];
  }

  denserOptionView = [(DBSDisplayZoomTableViewCell *)self denserOptionView];

  if (denserOptionView)
  {
    denserOptionView2 = [(DBSDisplayZoomTableViewCell *)self denserOptionView];
    [v3 addObject:denserOptionView2];
  }

  return v3;
}

- (void)updateSelectedViewWithOption:(unint64_t)option
{
  v18 = *MEMORY[0x277D85DE8];
  _optionViewsByDensity = [(DBSDisplayZoomTableViewCell *)self _optionViewsByDensity];
  v6 = 0;
  if (option > 1)
  {
    if (option == 2)
    {
      denseOptionView = [(DBSDisplayZoomTableViewCell *)self denseOptionView];
    }

    else
    {
      if (option != 3)
      {
        goto LABEL_11;
      }

      denseOptionView = [(DBSDisplayZoomTableViewCell *)self denserOptionView];
    }
  }

  else if (option)
  {
    if (option != 1)
    {
      goto LABEL_11;
    }

    denseOptionView = [(DBSDisplayZoomTableViewCell *)self zoomedOptionView];
  }

  else
  {
    denseOptionView = [(DBSDisplayZoomTableViewCell *)self standardOptionView];
  }

  v6 = denseOptionView;
LABEL_11:
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = _optionViewsByDensity;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12) setSelected:{*(*(&v13 + 1) + 8 * v12) == v6, v13}];
        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)startAnimation
{
  standardOptionView = [(DBSDisplayZoomTableViewCell *)self standardOptionView];
  [standardOptionView startAnimation];

  zoomedOptionView = [(DBSDisplayZoomTableViewCell *)self zoomedOptionView];
  [zoomedOptionView startAnimation];

  denseOptionView = [(DBSDisplayZoomTableViewCell *)self denseOptionView];
  [denseOptionView startAnimation];

  denserOptionView = [(DBSDisplayZoomTableViewCell *)self denserOptionView];
  [denserOptionView startAnimation];
}

- (void)stopAnimation
{
  standardOptionView = [(DBSDisplayZoomTableViewCell *)self standardOptionView];
  [standardOptionView stopAnimation];

  zoomedOptionView = [(DBSDisplayZoomTableViewCell *)self zoomedOptionView];
  [zoomedOptionView stopAnimation];

  denseOptionView = [(DBSDisplayZoomTableViewCell *)self denseOptionView];
  [denseOptionView stopAnimation];

  denserOptionView = [(DBSDisplayZoomTableViewCell *)self denserOptionView];
  [denserOptionView stopAnimation];
}

- (void)userDidTapOnDisplayZoomOptionView:(id)view
{
  viewCopy = view;
  delegate = [(DBSDisplayZoomTableViewCell *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(DBSDisplayZoomTableViewCell *)self delegate];
    [delegate2 displayZoomTableViewCell:self userDidTapOnDisplayZoomOption:{objc_msgSend(viewCopy, "displayZoomOption")}];

    -[DBSDisplayZoomTableViewCell updateSelectedViewWithOption:](self, "updateSelectedViewWithOption:", [viewCopy displayZoomOption]);
  }
}

- (DBSDisplayZoomTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end