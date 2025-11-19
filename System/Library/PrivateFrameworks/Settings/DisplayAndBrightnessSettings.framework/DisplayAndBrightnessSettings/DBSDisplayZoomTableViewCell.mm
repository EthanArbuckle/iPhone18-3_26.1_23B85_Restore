@interface DBSDisplayZoomTableViewCell
- (DBSDisplayZoomTableViewCellDelegate)delegate;
- (id)_optionViewsByDensity;
- (void)_configureForLegacy;
- (void)_configureForThreeDisplayOptionsWithLeadingView:(id)a3 middleView:(id)a4 trailingView:(id)a5;
- (void)_configureForTwoDisplayOptionsWithLeadingView:(id)a3 trailingView:(id)a4;
- (void)configureView;
- (void)startAnimation;
- (void)stopAnimation;
- (void)updateSelectedViewWithOption:(unint64_t)a3;
- (void)userDidTapOnDisplayZoomOptionView:(id)a3;
@end

@implementation DBSDisplayZoomTableViewCell

- (void)configureView
{
  v3 = [(DBSDisplayZoomTableViewCell *)self delegate];
  v39 = [v3 supportedDisplayZoomOptions];

  v4 = [v39 containsObject:&unk_28349F448];
  v5 = MEMORY[0x277CBF3A0];
  if (v4)
  {
    v6 = [[DBSDisplayZoomOptionView alloc] initWithFrame:0 displayZoomOption:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    standardOptionView = self->_standardOptionView;
    self->_standardOptionView = v6;

    v8 = [(DBSDisplayZoomTableViewCell *)self standardOptionView];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

    v9 = [(DBSDisplayZoomTableViewCell *)self standardOptionView];
    [v9 setDelegate:self];

    v10 = DBSStringForDisplayZoomOption(0);
    v11 = [(DBSDisplayZoomTableViewCell *)self standardOptionView];
    [v11 setAccessibilityIdentifier:v10];
  }

  if ([v39 containsObject:&unk_28349F460])
  {
    v12 = [[DBSDisplayZoomOptionView alloc] initWithFrame:1 displayZoomOption:*v5, v5[1], v5[2], v5[3]];
    zoomedOptionView = self->_zoomedOptionView;
    self->_zoomedOptionView = v12;

    v14 = [(DBSDisplayZoomTableViewCell *)self zoomedOptionView];
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

    v15 = [(DBSDisplayZoomTableViewCell *)self zoomedOptionView];
    [v15 setDelegate:self];

    v16 = DBSStringForDisplayZoomOption(1);
    v17 = [(DBSDisplayZoomTableViewCell *)self zoomedOptionView];
    [v17 setAccessibilityIdentifier:v16];
  }

  if ([v39 containsObject:&unk_28349F478])
  {
    v18 = [[DBSDisplayZoomOptionView alloc] initWithFrame:2 displayZoomOption:*v5, v5[1], v5[2], v5[3]];
    denseOptionView = self->_denseOptionView;
    self->_denseOptionView = v18;

    v20 = [(DBSDisplayZoomTableViewCell *)self denseOptionView];
    [v20 setTranslatesAutoresizingMaskIntoConstraints:0];

    v21 = [(DBSDisplayZoomTableViewCell *)self denseOptionView];
    [v21 setDelegate:self];

    v22 = DBSStringForDisplayZoomOption(2);
    v23 = [(DBSDisplayZoomTableViewCell *)self denseOptionView];
    [v23 setAccessibilityIdentifier:v22];
  }

  if ([v39 containsObject:&unk_28349F490])
  {
    v24 = [[DBSDisplayZoomOptionView alloc] initWithFrame:3 displayZoomOption:*v5, v5[1], v5[2], v5[3]];
    denserOptionView = self->_denserOptionView;
    self->_denserOptionView = v24;

    v26 = [(DBSDisplayZoomTableViewCell *)self denserOptionView];
    [v26 setTranslatesAutoresizingMaskIntoConstraints:0];

    v27 = [(DBSDisplayZoomTableViewCell *)self denserOptionView];
    [v27 setDelegate:self];

    v28 = DBSStringForDisplayZoomOption(3);
    v29 = [(DBSDisplayZoomTableViewCell *)self denserOptionView];
    [v29 setAccessibilityIdentifier:v28];
  }

  if (DBSReverseZoomEnabled())
  {
    v30 = [(DBSDisplayZoomTableViewCell *)self _optionViewsByDensity];
    if ([v30 count] >= 4)
    {
      v31 = [v30 subarrayWithRange:{objc_msgSend(v30, "count") - 3, 3}];

      v30 = v31;
    }

    v32 = [v30 objectAtIndexedSubscript:0];
    v33 = [v30 objectAtIndexedSubscript:1];
    v34 = 0;
    if ([v30 count] >= 3)
    {
      v34 = [v30 objectAtIndexedSubscript:2];
    }

    if ([v39 count] == 2)
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

  v35 = [(DBSDisplayZoomTableViewCell *)self delegate];
  v36 = objc_opt_respondsToSelector();

  if (v36)
  {
    v37 = [(DBSDisplayZoomTableViewCell *)self delegate];
    v38 = [v37 displayZoomTableViewCellCurrentlySelectedDisplayZoomOption:self];

    [(DBSDisplayZoomTableViewCell *)self updateSelectedViewWithOption:v38];
  }
}

- (void)_configureForTwoDisplayOptionsWithLeadingView:(id)a3 trailingView:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DBSDisplayZoomTableViewCell *)self contentView];
  [v8 addSubview:v7];

  v9 = [(DBSDisplayZoomTableViewCell *)self contentView];
  [v9 addSubview:v6];

  v61 = objc_alloc_init(MEMORY[0x277D756D0]);
  v10 = objc_alloc_init(MEMORY[0x277D756D0]);
  v11 = objc_alloc_init(MEMORY[0x277D756D0]);
  v12 = [(DBSDisplayZoomTableViewCell *)self contentView];
  [v12 addLayoutGuide:v61];

  v13 = [(DBSDisplayZoomTableViewCell *)self contentView];
  [v13 addLayoutGuide:v10];

  v14 = [(DBSDisplayZoomTableViewCell *)self contentView];
  [v14 addLayoutGuide:v11];

  v15 = [MEMORY[0x277CBEB18] array];
  v16 = [v6 topAnchor];
  v17 = [(DBSDisplayZoomTableViewCell *)self contentView];
  v18 = [v17 topAnchor];
  v19 = [v16 constraintEqualToAnchor:v18 constant:18.0];
  [v15 addObject:v19];

  v20 = [v7 topAnchor];
  v21 = [(DBSDisplayZoomTableViewCell *)self contentView];
  v22 = [v21 topAnchor];
  v23 = [v20 constraintEqualToAnchor:v22 constant:18.0];
  [v15 addObject:v23];

  v24 = [v6 bottomAnchor];
  v25 = [(DBSDisplayZoomTableViewCell *)self contentView];
  v26 = [v25 bottomAnchor];
  v27 = [v24 constraintEqualToAnchor:v26 constant:-18.0];
  [v15 addObject:v27];

  v28 = [v7 bottomAnchor];
  v29 = [(DBSDisplayZoomTableViewCell *)self contentView];
  v30 = [v29 bottomAnchor];
  v31 = [v28 constraintEqualToAnchor:v30 constant:-18.0];
  [v15 addObject:v31];

  v32 = [v61 leadingAnchor];
  v33 = [(DBSDisplayZoomTableViewCell *)self contentView];
  v34 = [v33 leadingAnchor];
  v35 = [v32 constraintEqualToAnchor:v34];
  [v15 addObject:v35];

  v36 = [v61 trailingAnchor];
  v37 = [v7 leadingAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];
  [v15 addObject:v38];

  v39 = [v7 trailingAnchor];
  v40 = [v10 leadingAnchor];
  v41 = [v39 constraintEqualToAnchor:v40];
  [v15 addObject:v41];

  v42 = [v10 trailingAnchor];
  v43 = [v6 leadingAnchor];
  v44 = [v42 constraintEqualToAnchor:v43];
  [v15 addObject:v44];

  v45 = [v6 trailingAnchor];
  v46 = [v11 leadingAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];
  [v15 addObject:v47];

  v48 = [v11 trailingAnchor];
  v49 = [(DBSDisplayZoomTableViewCell *)self contentView];
  v50 = [v49 trailingAnchor];
  v51 = [v48 constraintEqualToAnchor:v50];
  [v15 addObject:v51];

  v52 = [v7 widthAnchor];

  v53 = [v6 widthAnchor];

  v54 = [v52 constraintEqualToAnchor:v53];
  [v15 addObject:v54];

  v55 = [v61 widthAnchor];
  v56 = [v10 widthAnchor];
  v57 = [v55 constraintEqualToAnchor:v56 multiplier:1.0];
  [v15 addObject:v57];

  v58 = [v10 widthAnchor];
  v59 = [v11 widthAnchor];
  v60 = [v58 constraintEqualToAnchor:v59 multiplier:1.0];
  [v15 addObject:v60];

  [MEMORY[0x277CCAAD0] activateConstraints:v15];
}

- (void)_configureForThreeDisplayOptionsWithLeadingView:(id)a3 middleView:(id)a4 trailingView:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(DBSDisplayZoomTableViewCell *)self contentView];
  [v11 addSubview:v10];

  v12 = [(DBSDisplayZoomTableViewCell *)self contentView];
  [v12 addSubview:v9];

  v13 = [(DBSDisplayZoomTableViewCell *)self contentView];
  [v13 addSubview:v8];

  v87 = objc_alloc_init(MEMORY[0x277D756D0]);
  v85 = objc_alloc_init(MEMORY[0x277D756D0]);
  v14 = objc_alloc_init(MEMORY[0x277D756D0]);
  v86 = objc_alloc_init(MEMORY[0x277D756D0]);
  v15 = [(DBSDisplayZoomTableViewCell *)self contentView];
  [v15 addLayoutGuide:v87];

  v16 = [(DBSDisplayZoomTableViewCell *)self contentView];
  [v16 addLayoutGuide:v85];

  v17 = [(DBSDisplayZoomTableViewCell *)self contentView];
  [v17 addLayoutGuide:v14];

  v18 = [(DBSDisplayZoomTableViewCell *)self contentView];
  [v18 addLayoutGuide:v86];

  v19 = [MEMORY[0x277CBEB18] array];
  v20 = [v8 topAnchor];
  v21 = [(DBSDisplayZoomTableViewCell *)self contentView];
  v22 = [v21 topAnchor];
  v23 = [v20 constraintEqualToAnchor:v22 constant:18.0];
  [v19 addObject:v23];

  v24 = [v10 topAnchor];
  v25 = [(DBSDisplayZoomTableViewCell *)self contentView];
  v26 = [v25 topAnchor];
  v27 = [v24 constraintEqualToAnchor:v26 constant:18.0];
  [v19 addObject:v27];

  v28 = [v9 topAnchor];
  v29 = [(DBSDisplayZoomTableViewCell *)self contentView];
  v30 = [v29 topAnchor];
  v31 = [v28 constraintEqualToAnchor:v30 constant:18.0];
  [v19 addObject:v31];

  v32 = [v8 bottomAnchor];
  v33 = [(DBSDisplayZoomTableViewCell *)self contentView];
  v34 = [v33 bottomAnchor];
  v35 = [v32 constraintEqualToAnchor:v34 constant:-18.0];
  [v19 addObject:v35];

  v36 = [v10 bottomAnchor];
  v37 = [(DBSDisplayZoomTableViewCell *)self contentView];
  v38 = [v37 bottomAnchor];
  v39 = [v36 constraintEqualToAnchor:v38 constant:-18.0];
  [v19 addObject:v39];

  v40 = [v9 bottomAnchor];
  v41 = [(DBSDisplayZoomTableViewCell *)self contentView];
  v42 = [v41 bottomAnchor];
  v43 = [v40 constraintEqualToAnchor:v42 constant:-18.0];
  [v19 addObject:v43];

  v44 = [v87 leadingAnchor];
  v45 = [(DBSDisplayZoomTableViewCell *)self contentView];
  v46 = [v45 leadingAnchor];
  v47 = [v44 constraintEqualToAnchor:v46];
  [v19 addObject:v47];

  v48 = [v87 trailingAnchor];
  v49 = [v10 leadingAnchor];
  v50 = [v48 constraintEqualToAnchor:v49];
  [v19 addObject:v50];

  v51 = [v10 trailingAnchor];
  v52 = [v85 leadingAnchor];
  v53 = [v51 constraintEqualToAnchor:v52];
  [v19 addObject:v53];

  v54 = [v85 trailingAnchor];
  v55 = [v9 leadingAnchor];
  v56 = [v54 constraintEqualToAnchor:v55];
  [v19 addObject:v56];

  v57 = [v9 trailingAnchor];
  v58 = [v14 leadingAnchor];
  v59 = [v57 constraintEqualToAnchor:v58];
  [v19 addObject:v59];

  v60 = [v14 trailingAnchor];
  v61 = [v8 leadingAnchor];
  v62 = [v60 constraintEqualToAnchor:v61];
  [v19 addObject:v62];

  v63 = [v8 trailingAnchor];
  v64 = [v86 leadingAnchor];
  v65 = [v63 constraintEqualToAnchor:v64];
  [v19 addObject:v65];

  v66 = [v86 trailingAnchor];
  v67 = [(DBSDisplayZoomTableViewCell *)self contentView];
  v68 = [v67 trailingAnchor];
  v69 = [v66 constraintEqualToAnchor:v68];
  [v19 addObject:v69];

  v70 = [v10 widthAnchor];

  v71 = [v9 widthAnchor];
  v72 = [v70 constraintEqualToAnchor:v71];
  [v19 addObject:v72];

  v73 = [v9 widthAnchor];

  v74 = [v8 widthAnchor];

  v75 = [v73 constraintEqualToAnchor:v74];
  [v19 addObject:v75];

  v76 = [v87 widthAnchor];
  v77 = [v85 widthAnchor];
  v78 = [v76 constraintEqualToAnchor:v77 multiplier:1.0];
  [v19 addObject:v78];

  v79 = [v85 widthAnchor];
  v80 = [v14 widthAnchor];
  v81 = [v79 constraintEqualToAnchor:v80 multiplier:1.0];
  [v19 addObject:v81];

  v82 = [v14 widthAnchor];
  v83 = [v86 widthAnchor];
  v84 = [v82 constraintEqualToAnchor:v83 multiplier:1.0];
  [v19 addObject:v84];

  [MEMORY[0x277CCAAD0] activateConstraints:v19];
}

- (void)_configureForLegacy
{
  v3 = [(DBSDisplayZoomTableViewCell *)self contentView];
  v4 = [(DBSDisplayZoomTableViewCell *)self zoomedOptionView];
  [v3 addSubview:v4];

  v5 = [(DBSDisplayZoomTableViewCell *)self contentView];
  v6 = [(DBSDisplayZoomTableViewCell *)self standardOptionView];
  [v5 addSubview:v6];

  v68 = objc_alloc_init(MEMORY[0x277D756D0]);
  v7 = objc_alloc_init(MEMORY[0x277D756D0]);
  v8 = objc_alloc_init(MEMORY[0x277D756D0]);
  v9 = [(DBSDisplayZoomTableViewCell *)self contentView];
  [v9 addLayoutGuide:v68];

  v10 = [(DBSDisplayZoomTableViewCell *)self contentView];
  [v10 addLayoutGuide:v7];

  v11 = [(DBSDisplayZoomTableViewCell *)self contentView];
  [v11 addLayoutGuide:v8];

  v12 = [MEMORY[0x277CBEB18] array];
  v13 = [(DBSDisplayZoomTableViewCell *)self standardOptionView];
  v14 = [v13 topAnchor];
  v15 = [(DBSDisplayZoomTableViewCell *)self contentView];
  v16 = [v15 topAnchor];
  v17 = [v14 constraintEqualToAnchor:v16 constant:56.0];
  [v12 addObject:v17];

  v18 = [(DBSDisplayZoomTableViewCell *)self zoomedOptionView];
  v19 = [v18 topAnchor];
  v20 = [(DBSDisplayZoomTableViewCell *)self contentView];
  v21 = [v20 topAnchor];
  v22 = [v19 constraintEqualToAnchor:v21 constant:56.0];
  [v12 addObject:v22];

  v23 = [(DBSDisplayZoomTableViewCell *)self standardOptionView];
  v24 = [v23 bottomAnchor];
  v25 = [(DBSDisplayZoomTableViewCell *)self contentView];
  v26 = [v25 bottomAnchor];
  v27 = [v24 constraintEqualToAnchor:v26 constant:-56.0];
  [v12 addObject:v27];

  v28 = [(DBSDisplayZoomTableViewCell *)self zoomedOptionView];
  v29 = [v28 bottomAnchor];
  v30 = [(DBSDisplayZoomTableViewCell *)self contentView];
  v31 = [v30 bottomAnchor];
  v32 = [v29 constraintEqualToAnchor:v31 constant:-56.0];
  [v12 addObject:v32];

  v33 = [v68 leadingAnchor];
  v34 = [(DBSDisplayZoomTableViewCell *)self contentView];
  v35 = [v34 leadingAnchor];
  v36 = [v33 constraintEqualToAnchor:v35];
  [v12 addObject:v36];

  v37 = [v68 trailingAnchor];
  v38 = [(DBSDisplayZoomTableViewCell *)self zoomedOptionView];
  v39 = [v38 leadingAnchor];
  v40 = [v37 constraintEqualToAnchor:v39];
  [v12 addObject:v40];

  v41 = [(DBSDisplayZoomTableViewCell *)self zoomedOptionView];
  v42 = [v41 trailingAnchor];
  v43 = [v7 leadingAnchor];
  v44 = [v42 constraintEqualToAnchor:v43];
  [v12 addObject:v44];

  v45 = [v7 trailingAnchor];
  v46 = [(DBSDisplayZoomTableViewCell *)self standardOptionView];
  v47 = [v46 leadingAnchor];
  v48 = [v45 constraintEqualToAnchor:v47];
  [v12 addObject:v48];

  v49 = [(DBSDisplayZoomTableViewCell *)self standardOptionView];
  v50 = [v49 trailingAnchor];
  v51 = [v8 leadingAnchor];
  v52 = [v50 constraintEqualToAnchor:v51];
  [v12 addObject:v52];

  v53 = [v8 trailingAnchor];
  v54 = [(DBSDisplayZoomTableViewCell *)self contentView];
  v55 = [v54 trailingAnchor];
  v56 = [v53 constraintEqualToAnchor:v55];
  [v12 addObject:v56];

  v57 = [(DBSDisplayZoomTableViewCell *)self zoomedOptionView];
  v58 = [v57 widthAnchor];
  v59 = [(DBSDisplayZoomTableViewCell *)self standardOptionView];
  v60 = [v59 widthAnchor];
  v61 = [v58 constraintEqualToAnchor:v60];
  [v12 addObject:v61];

  v62 = [v68 widthAnchor];
  v63 = [v7 widthAnchor];
  v64 = [v62 constraintEqualToAnchor:v63 multiplier:1.0];
  [v12 addObject:v64];

  v65 = [v7 widthAnchor];
  v66 = [v8 widthAnchor];
  v67 = [v65 constraintEqualToAnchor:v66 multiplier:1.0];
  [v12 addObject:v67];

  [MEMORY[0x277CCAAD0] activateConstraints:v12];
}

- (id)_optionViewsByDensity
{
  v3 = objc_opt_new();
  v4 = [(DBSDisplayZoomTableViewCell *)self zoomedOptionView];

  if (v4)
  {
    v5 = [(DBSDisplayZoomTableViewCell *)self zoomedOptionView];
    [v3 addObject:v5];
  }

  v6 = [(DBSDisplayZoomTableViewCell *)self standardOptionView];

  if (v6)
  {
    v7 = [(DBSDisplayZoomTableViewCell *)self standardOptionView];
    [v3 addObject:v7];
  }

  v8 = [(DBSDisplayZoomTableViewCell *)self denseOptionView];

  if (v8)
  {
    v9 = [(DBSDisplayZoomTableViewCell *)self denseOptionView];
    [v3 addObject:v9];
  }

  v10 = [(DBSDisplayZoomTableViewCell *)self denserOptionView];

  if (v10)
  {
    v11 = [(DBSDisplayZoomTableViewCell *)self denserOptionView];
    [v3 addObject:v11];
  }

  return v3;
}

- (void)updateSelectedViewWithOption:(unint64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [(DBSDisplayZoomTableViewCell *)self _optionViewsByDensity];
  v6 = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v7 = [(DBSDisplayZoomTableViewCell *)self denseOptionView];
    }

    else
    {
      if (a3 != 3)
      {
        goto LABEL_11;
      }

      v7 = [(DBSDisplayZoomTableViewCell *)self denserOptionView];
    }
  }

  else if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_11;
    }

    v7 = [(DBSDisplayZoomTableViewCell *)self zoomedOptionView];
  }

  else
  {
    v7 = [(DBSDisplayZoomTableViewCell *)self standardOptionView];
  }

  v6 = v7;
LABEL_11:
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = v5;
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
  v3 = [(DBSDisplayZoomTableViewCell *)self standardOptionView];
  [v3 startAnimation];

  v4 = [(DBSDisplayZoomTableViewCell *)self zoomedOptionView];
  [v4 startAnimation];

  v5 = [(DBSDisplayZoomTableViewCell *)self denseOptionView];
  [v5 startAnimation];

  v6 = [(DBSDisplayZoomTableViewCell *)self denserOptionView];
  [v6 startAnimation];
}

- (void)stopAnimation
{
  v3 = [(DBSDisplayZoomTableViewCell *)self standardOptionView];
  [v3 stopAnimation];

  v4 = [(DBSDisplayZoomTableViewCell *)self zoomedOptionView];
  [v4 stopAnimation];

  v5 = [(DBSDisplayZoomTableViewCell *)self denseOptionView];
  [v5 stopAnimation];

  v6 = [(DBSDisplayZoomTableViewCell *)self denserOptionView];
  [v6 stopAnimation];
}

- (void)userDidTapOnDisplayZoomOptionView:(id)a3
{
  v7 = a3;
  v4 = [(DBSDisplayZoomTableViewCell *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(DBSDisplayZoomTableViewCell *)self delegate];
    [v6 displayZoomTableViewCell:self userDidTapOnDisplayZoomOption:{objc_msgSend(v7, "displayZoomOption")}];

    -[DBSDisplayZoomTableViewCell updateSelectedViewWithOption:](self, "updateSelectedViewWithOption:", [v7 displayZoomOption]);
  }
}

- (DBSDisplayZoomTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end