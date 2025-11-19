@interface DBSExternalDisplayMultitaskingTableViewCell
- (DBSExternalDisplayMultitaskingTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (DBSExternalDisplayMultitaskingTableViewCellDelegate)delegate;
- (void)_configureView;
- (void)_updateSelectedMultitaskingOptionView:(unint64_t)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)userDidTapOnMultitaskingOptionView:(id)a3;
@end

@implementation DBSExternalDisplayMultitaskingTableViewCell

- (DBSExternalDisplayMultitaskingTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = DBSExternalDisplayMultitaskingTableViewCell;
  v4 = [(PSTableCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = +[DBSExternalDisplayManager defaultManager];
    [v5 addObserver:v4];

    [(DBSExternalDisplayMultitaskingTableViewCell *)v4 _configureView];
  }

  return v4;
}

- (void)dealloc
{
  v3 = +[DBSExternalDisplayManager defaultManager];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = DBSExternalDisplayMultitaskingTableViewCell;
  [(PSTableCell *)&v4 dealloc];
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = DBSExternalDisplayMultitaskingTableViewCell;
  [(PSTableCell *)&v10 layoutSubviews];
  v3 = [(DBSExternalDisplayMultitaskingTableViewCell *)self contentView];
  [v3 bounds];
  v5 = v4;

  if (v5 > 530.0)
  {
    [(DBSExternalDisplayMultitaskingTableViewCell *)self screenMirroringOptionOneThirdConstraint];
  }

  else
  {
    [(DBSExternalDisplayMultitaskingTableViewCell *)self multitaskingOptionEqualWidthConstraint];
  }
  v6 = ;
  v7 = [v6 isActive];

  if ((v7 & 1) == 0)
  {
    v8 = [(DBSExternalDisplayMultitaskingTableViewCell *)self screenMirroringOptionOneThirdConstraint];
    [v8 setActive:v5 > 530.0];

    v9 = [(DBSExternalDisplayMultitaskingTableViewCell *)self multitaskingOptionEqualWidthConstraint];
    [v9 setActive:v5 <= 530.0];

    [(DBSExternalDisplayMultitaskingTableViewCell *)self setNeedsUpdateConstraints];
  }
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v3.receiver = self;
  v3.super_class = DBSExternalDisplayMultitaskingTableViewCell;
  [(PSTableCell *)&v3 refreshCellContentsWithSpecifier:a3];
}

- (void)prepareForReuse
{
  v2.receiver = self;
  v2.super_class = DBSExternalDisplayMultitaskingTableViewCell;
  [(PSTableCell *)&v2 prepareForReuse];
}

- (void)_configureView
{
  v3 = [DBSExternalDisplayMultitaskingOptionView alloc];
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v8 = [(DBSExternalDisplayMultitaskingOptionView *)v3 initWithFrame:0 multitaskingOption:*MEMORY[0x277CBF3A0], v5, v6, v7];
  [(DBSExternalDisplayMultitaskingTableViewCell *)self setScreenMirroringOptionView:v8];

  v9 = [(DBSExternalDisplayMultitaskingTableViewCell *)self screenMirroringOptionView];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  v10 = [(DBSExternalDisplayMultitaskingTableViewCell *)self screenMirroringOptionView];
  [v10 setDelegate:self];

  v11 = [(DBSExternalDisplayMultitaskingTableViewCell *)self screenMirroringOptionView];
  [v11 setAccessibilityIdentifier:@"DBSExternalDisplayMultitaskingOptionScreenMirroring"];

  v12 = [(DBSExternalDisplayMultitaskingTableViewCell *)self contentView];
  v13 = [(DBSExternalDisplayMultitaskingTableViewCell *)self screenMirroringOptionView];
  [v12 addSubview:v13];

  v14 = [[DBSExternalDisplayMultitaskingOptionView alloc] initWithFrame:1 multitaskingOption:v4, v5, v6, v7];
  [(DBSExternalDisplayMultitaskingTableViewCell *)self setExtendedDisplayOptionView:v14];

  v15 = [(DBSExternalDisplayMultitaskingTableViewCell *)self extendedDisplayOptionView];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

  v16 = [(DBSExternalDisplayMultitaskingTableViewCell *)self extendedDisplayOptionView];
  [v16 setDelegate:self];

  v17 = [(DBSExternalDisplayMultitaskingTableViewCell *)self extendedDisplayOptionView];
  [v17 setAccessibilityIdentifier:@"DBSExternalDisplayMultitaskingOptionExtendedDisplay"];

  v18 = [(DBSExternalDisplayMultitaskingTableViewCell *)self contentView];
  v19 = [(DBSExternalDisplayMultitaskingTableViewCell *)self extendedDisplayOptionView];
  [v18 addSubview:v19];

  v20 = +[DBSExternalDisplayManager defaultManager];
  v21 = [v20 isMirroringEnabled] ^ 1;

  [(DBSExternalDisplayMultitaskingTableViewCell *)self _updateSelectedMultitaskingOptionView:v21];
  v96 = objc_alloc_init(MEMORY[0x277D756D0]);
  v22 = objc_alloc_init(MEMORY[0x277D756D0]);
  v23 = objc_alloc_init(MEMORY[0x277D756D0]);
  v24 = [(DBSExternalDisplayMultitaskingTableViewCell *)self contentView];
  [v24 addLayoutGuide:v96];

  v25 = [(DBSExternalDisplayMultitaskingTableViewCell *)self contentView];
  [v25 addLayoutGuide:v22];

  v26 = [(DBSExternalDisplayMultitaskingTableViewCell *)self contentView];
  [v26 addLayoutGuide:v23];

  v27 = [MEMORY[0x277CBEB18] array];
  v28 = [v96 leadingAnchor];
  v29 = [(DBSExternalDisplayMultitaskingTableViewCell *)self contentView];
  v30 = [v29 leadingAnchor];
  v31 = [v28 constraintEqualToAnchor:v30];
  [v27 addObject:v31];

  v32 = [v96 trailingAnchor];
  v33 = [(DBSExternalDisplayMultitaskingTableViewCell *)self screenMirroringOptionView];
  v34 = [v33 leadingAnchor];
  v35 = [v32 constraintEqualToAnchor:v34];
  [v27 addObject:v35];

  v36 = [(DBSExternalDisplayMultitaskingTableViewCell *)self screenMirroringOptionView];
  v37 = [v36 trailingAnchor];
  v38 = [v22 leadingAnchor];
  v39 = [v37 constraintEqualToAnchor:v38];
  [v27 addObject:v39];

  v40 = [v22 trailingAnchor];
  v41 = [(DBSExternalDisplayMultitaskingTableViewCell *)self extendedDisplayOptionView];
  v42 = [v41 leadingAnchor];
  v43 = [v40 constraintEqualToAnchor:v42];
  [v27 addObject:v43];

  v44 = [(DBSExternalDisplayMultitaskingTableViewCell *)self extendedDisplayOptionView];
  v45 = [v44 trailingAnchor];
  v46 = [v23 leadingAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];
  [v27 addObject:v47];

  v48 = [v23 trailingAnchor];
  v49 = [(DBSExternalDisplayMultitaskingTableViewCell *)self contentView];
  v50 = [v49 trailingAnchor];
  v51 = [v48 constraintEqualToAnchor:v50];
  [v27 addObject:v51];

  v52 = [v96 widthAnchor];
  v53 = [v22 widthAnchor];
  v54 = [v52 constraintEqualToAnchor:v53 multiplier:1.0];
  [v27 addObject:v54];

  v55 = [v22 widthAnchor];
  v56 = [v23 widthAnchor];
  v57 = [v55 constraintEqualToAnchor:v56 multiplier:1.0];
  [v27 addObject:v57];

  v58 = [v96 widthAnchor];
  v59 = [v58 constraintGreaterThanOrEqualToConstant:10.0];
  [v27 addObject:v59];

  v60 = [v22 widthAnchor];
  v61 = [v60 constraintGreaterThanOrEqualToConstant:10.0];
  [v27 addObject:v61];

  v62 = [v23 widthAnchor];
  v63 = [v62 constraintGreaterThanOrEqualToConstant:10.0];
  [v27 addObject:v63];

  v64 = [(DBSExternalDisplayMultitaskingTableViewCell *)self screenMirroringOptionView];
  v65 = [v64 widthAnchor];
  v66 = [(DBSExternalDisplayMultitaskingTableViewCell *)self contentView];
  v67 = [v66 widthAnchor];
  v68 = [v65 constraintEqualToAnchor:v67 multiplier:0.35];
  [(DBSExternalDisplayMultitaskingTableViewCell *)self setScreenMirroringOptionOneThirdConstraint:v68];

  v69 = [(DBSExternalDisplayMultitaskingTableViewCell *)self screenMirroringOptionView];
  v70 = [v69 widthAnchor];
  v71 = [(DBSExternalDisplayMultitaskingTableViewCell *)self extendedDisplayOptionView];
  v72 = [v71 widthAnchor];
  v73 = [v70 constraintEqualToAnchor:v72];
  [(DBSExternalDisplayMultitaskingTableViewCell *)self setMultitaskingOptionEqualWidthConstraint:v73];

  v74 = [(DBSExternalDisplayMultitaskingTableViewCell *)self screenMirroringOptionOneThirdConstraint];
  [v74 setActive:1];

  v75 = [(DBSExternalDisplayMultitaskingTableViewCell *)self multitaskingOptionEqualWidthConstraint];
  [v75 setActive:0];

  v76 = [(DBSExternalDisplayMultitaskingTableViewCell *)self screenMirroringOptionView];
  v77 = [v76 topAnchor];
  v78 = [(DBSExternalDisplayMultitaskingTableViewCell *)self contentView];
  v79 = [v78 topAnchor];
  v80 = [v77 constraintEqualToSystemSpacingBelowAnchor:v79 multiplier:2.0];
  [v27 addObject:v80];

  v81 = [(DBSExternalDisplayMultitaskingTableViewCell *)self contentView];
  v82 = [v81 bottomAnchor];
  v83 = [(DBSExternalDisplayMultitaskingTableViewCell *)self screenMirroringOptionView];
  v84 = [v83 bottomAnchor];
  v85 = [v82 constraintEqualToSystemSpacingBelowAnchor:v84 multiplier:2.0];
  [v27 addObject:v85];

  v86 = [(DBSExternalDisplayMultitaskingTableViewCell *)self extendedDisplayOptionView];
  v87 = [v86 topAnchor];
  v88 = [(DBSExternalDisplayMultitaskingTableViewCell *)self contentView];
  v89 = [v88 topAnchor];
  v90 = [v87 constraintEqualToSystemSpacingBelowAnchor:v89 multiplier:2.0];
  [v27 addObject:v90];

  v91 = [(DBSExternalDisplayMultitaskingTableViewCell *)self contentView];
  v92 = [v91 bottomAnchor];
  v93 = [(DBSExternalDisplayMultitaskingTableViewCell *)self extendedDisplayOptionView];
  v94 = [v93 bottomAnchor];
  v95 = [v92 constraintEqualToSystemSpacingBelowAnchor:v94 multiplier:2.0];
  [v27 addObject:v95];

  [MEMORY[0x277CCAAD0] activateConstraints:v27];
}

- (void)userDidTapOnMultitaskingOptionView:(id)a3
{
  v4 = [a3 multitaskingOption];
  v5 = [(DBSExternalDisplayMultitaskingTableViewCell *)self delegate];
  if (v4)
  {
    v6 = objc_opt_respondsToSelector();

    if ((v6 & 1) == 0)
    {
      goto LABEL_7;
    }

    v7 = [(DBSExternalDisplayMultitaskingTableViewCell *)self delegate];
    [v7 externalDisplayMultitaskingTableViewCellUserDidSelectedExtendedDisplay:self];
  }

  else
  {
    v8 = objc_opt_respondsToSelector();

    if ((v8 & 1) == 0)
    {
      goto LABEL_7;
    }

    v7 = [(DBSExternalDisplayMultitaskingTableViewCell *)self delegate];
    [v7 externalDisplayMultitaskingTableViewCellUserDidSelectedScreenMirroring:self];
  }

LABEL_7:

  [(DBSExternalDisplayMultitaskingTableViewCell *)self _updateSelectedMultitaskingOptionView:v4];
}

- (void)_updateSelectedMultitaskingOptionView:(unint64_t)a3
{
  v5 = a3 == 0;
  v6 = [(DBSExternalDisplayMultitaskingTableViewCell *)self screenMirroringOptionView];
  [v6 setSelected:v5];

  v7 = [(DBSExternalDisplayMultitaskingTableViewCell *)self extendedDisplayOptionView];
  [v7 setSelected:a3 == 1];
}

- (DBSExternalDisplayMultitaskingTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end