@interface DBSDeviceAppearanceTableViewCell
- (DBSDeviceAppearanceTableViewCell)init;
- (DBSDeviceAppearanceTableViewCell)initWithCoder:(id)a3;
- (DBSDeviceAppearanceTableViewCell)initWithFrame:(CGRect)a3;
- (DBSDeviceAppearanceTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (DBSDeviceAppearanceTableViewCellDelegate)delegate;
- (void)_configureView;
- (void)userDidTapOnAppearanceOptionView:(id)a3;
@end

@implementation DBSDeviceAppearanceTableViewCell

- (DBSDeviceAppearanceTableViewCell)init
{
  v5.receiver = self;
  v5.super_class = DBSDeviceAppearanceTableViewCell;
  v2 = [(DBSDeviceAppearanceTableViewCell *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(DBSDeviceAppearanceTableViewCell *)v2 _configureView];
  }

  return v3;
}

- (DBSDeviceAppearanceTableViewCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = DBSDeviceAppearanceTableViewCell;
  v3 = [(DBSDeviceAppearanceTableViewCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(DBSDeviceAppearanceTableViewCell *)v3 _configureView];
  }

  return v4;
}

- (DBSDeviceAppearanceTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = DBSDeviceAppearanceTableViewCell;
  v4 = [(PSTableCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(DBSDeviceAppearanceTableViewCell *)v4 _configureView];
  }

  return v5;
}

- (DBSDeviceAppearanceTableViewCell)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = DBSDeviceAppearanceTableViewCell;
  v3 = [(DBSDeviceAppearanceTableViewCell *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(DBSDeviceAppearanceTableViewCell *)v3 _configureView];
  }

  return v4;
}

- (void)_configureView
{
  v3 = [DBSDeviceAppearanceOptionView alloc];
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v8 = [(DBSDeviceAppearanceOptionView *)v3 initWithFrame:0 appearanceOption:*MEMORY[0x277CBF3A0], v5, v6, v7];
  [(DBSDeviceAppearanceTableViewCell *)self set_lightOptionView:v8];

  v9 = [(DBSDeviceAppearanceTableViewCell *)self _lightOptionView];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  v10 = [(DBSDeviceAppearanceTableViewCell *)self _lightOptionView];
  [v10 setDelegate:self];

  v11 = [(DBSDeviceAppearanceTableViewCell *)self _lightOptionView];
  [v11 setAccessibilityIdentifier:@"DBSDeviceAppearanceOptionLight"];

  v12 = [(DBSDeviceAppearanceTableViewCell *)self contentView];
  v13 = [(DBSDeviceAppearanceTableViewCell *)self _lightOptionView];
  [v12 addSubview:v13];

  v14 = [[DBSDeviceAppearanceOptionView alloc] initWithFrame:1 appearanceOption:v4, v5, v6, v7];
  [(DBSDeviceAppearanceTableViewCell *)self set_darkOptionView:v14];

  v15 = [(DBSDeviceAppearanceTableViewCell *)self _darkOptionView];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

  v16 = [(DBSDeviceAppearanceTableViewCell *)self _darkOptionView];
  [v16 setDelegate:self];

  v17 = [(DBSDeviceAppearanceTableViewCell *)self _darkOptionView];
  [v17 setAccessibilityIdentifier:@"DBSDeviceAppearanceOptionDark"];

  v18 = [(DBSDeviceAppearanceTableViewCell *)self contentView];
  v19 = [(DBSDeviceAppearanceTableViewCell *)self _darkOptionView];
  [v18 addSubview:v19];

  v20 = objc_alloc_init(MEMORY[0x277D756D0]);
  [(DBSDeviceAppearanceTableViewCell *)self set_leadingGuide:v20];

  v21 = objc_alloc_init(MEMORY[0x277D756D0]);
  [(DBSDeviceAppearanceTableViewCell *)self set_middleGuide:v21];

  v22 = objc_alloc_init(MEMORY[0x277D756D0]);
  [(DBSDeviceAppearanceTableViewCell *)self set_trailingGuide:v22];

  v23 = [(DBSDeviceAppearanceTableViewCell *)self contentView];
  v24 = [(DBSDeviceAppearanceTableViewCell *)self _leadingGuide];
  [v23 addLayoutGuide:v24];

  v25 = [(DBSDeviceAppearanceTableViewCell *)self contentView];
  v26 = [(DBSDeviceAppearanceTableViewCell *)self _middleGuide];
  [v25 addLayoutGuide:v26];

  v27 = [(DBSDeviceAppearanceTableViewCell *)self contentView];
  v28 = [(DBSDeviceAppearanceTableViewCell *)self _trailingGuide];
  [v27 addLayoutGuide:v28];

  v89 = [MEMORY[0x277CBEB18] array];
  v29 = [(DBSDeviceAppearanceTableViewCell *)self _leadingGuide];
  v30 = [v29 leadingAnchor];
  v31 = [(DBSDeviceAppearanceTableViewCell *)self contentView];
  v32 = [v31 leadingAnchor];
  v33 = [v30 constraintEqualToAnchor:v32];
  [v89 addObject:v33];

  v34 = [(DBSDeviceAppearanceTableViewCell *)self _leadingGuide];
  v35 = [v34 trailingAnchor];
  v36 = [(DBSDeviceAppearanceTableViewCell *)self _lightOptionView];
  v37 = [v36 leadingAnchor];
  v38 = [v35 constraintEqualToAnchor:v37];
  [v89 addObject:v38];

  v39 = [(DBSDeviceAppearanceTableViewCell *)self _lightOptionView];
  v40 = [v39 trailingAnchor];
  v41 = [(DBSDeviceAppearanceTableViewCell *)self _middleGuide];
  v42 = [v41 leadingAnchor];
  v43 = [v40 constraintEqualToAnchor:v42];
  [v89 addObject:v43];

  v44 = [(DBSDeviceAppearanceTableViewCell *)self _middleGuide];
  v45 = [v44 trailingAnchor];
  v46 = [(DBSDeviceAppearanceTableViewCell *)self _darkOptionView];
  v47 = [v46 leadingAnchor];
  v48 = [v45 constraintEqualToAnchor:v47];
  [v89 addObject:v48];

  v49 = [(DBSDeviceAppearanceTableViewCell *)self _darkOptionView];
  v50 = [v49 trailingAnchor];
  v51 = [(DBSDeviceAppearanceTableViewCell *)self _trailingGuide];
  v52 = [v51 leadingAnchor];
  v53 = [v50 constraintEqualToAnchor:v52];
  [v89 addObject:v53];

  v54 = [(DBSDeviceAppearanceTableViewCell *)self _trailingGuide];
  v55 = [v54 trailingAnchor];
  v56 = [(DBSDeviceAppearanceTableViewCell *)self contentView];
  v57 = [v56 trailingAnchor];
  v58 = [v55 constraintEqualToAnchor:v57];
  [v89 addObject:v58];

  v59 = [(DBSDeviceAppearanceTableViewCell *)self _leadingGuide];
  v60 = [v59 widthAnchor];
  v61 = [(DBSDeviceAppearanceTableViewCell *)self _middleGuide];
  v62 = [v61 widthAnchor];
  v63 = [v60 constraintEqualToAnchor:v62 multiplier:1.0];
  [v89 addObject:v63];

  v64 = [(DBSDeviceAppearanceTableViewCell *)self _middleGuide];
  v65 = [v64 widthAnchor];
  v66 = [(DBSDeviceAppearanceTableViewCell *)self _trailingGuide];
  v67 = [v66 widthAnchor];
  v68 = [v65 constraintEqualToAnchor:v67 multiplier:1.0];
  [v89 addObject:v68];

  v69 = [(DBSDeviceAppearanceTableViewCell *)self _lightOptionView];
  v70 = [v69 topAnchor];
  v71 = [(DBSDeviceAppearanceTableViewCell *)self contentView];
  v72 = [v71 topAnchor];
  v73 = [v70 constraintEqualToSystemSpacingBelowAnchor:v72 multiplier:2.0];
  [v89 addObject:v73];

  v74 = [(DBSDeviceAppearanceTableViewCell *)self contentView];
  v75 = [v74 bottomAnchor];
  v76 = [(DBSDeviceAppearanceTableViewCell *)self _lightOptionView];
  v77 = [v76 bottomAnchor];
  v78 = [v75 constraintEqualToSystemSpacingBelowAnchor:v77 multiplier:2.0];
  [v89 addObject:v78];

  v79 = [(DBSDeviceAppearanceTableViewCell *)self _darkOptionView];
  v80 = [v79 topAnchor];
  v81 = [(DBSDeviceAppearanceTableViewCell *)self contentView];
  v82 = [v81 topAnchor];
  v83 = [v80 constraintEqualToSystemSpacingBelowAnchor:v82 multiplier:2.0];
  [v89 addObject:v83];

  v84 = [(DBSDeviceAppearanceTableViewCell *)self contentView];
  v85 = [v84 bottomAnchor];
  v86 = [(DBSDeviceAppearanceTableViewCell *)self _darkOptionView];
  v87 = [v86 bottomAnchor];
  v88 = [v85 constraintEqualToSystemSpacingBelowAnchor:v87 multiplier:2.0];
  [v89 addObject:v88];

  [MEMORY[0x277CCAAD0] activateConstraints:v89];
}

- (void)userDidTapOnAppearanceOptionView:(id)a3
{
  v4 = [a3 appearanceOption];
  v5 = [(DBSDeviceAppearanceTableViewCell *)self delegate];
  if (v4)
  {
    v6 = objc_opt_respondsToSelector();

    if ((v6 & 1) == 0)
    {
      return;
    }

    v8 = [(DBSDeviceAppearanceTableViewCell *)self delegate];
    [v8 deviceAppearanceTableViewCellUserDidTapOnDarkAppearance:self];
  }

  else
  {
    v7 = objc_opt_respondsToSelector();

    if ((v7 & 1) == 0)
    {
      return;
    }

    v8 = [(DBSDeviceAppearanceTableViewCell *)self delegate];
    [v8 deviceAppearanceTableViewCellUserDidTapOnLightAppearance:self];
  }
}

- (DBSDeviceAppearanceTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end