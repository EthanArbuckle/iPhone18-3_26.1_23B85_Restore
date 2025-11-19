@interface UIPrintOptionPopupCell
- (BOOL)usingLargeTextLayout;
- (UIPrintOptionPopupCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_updateConstraints;
- (void)setEnabled:(BOOL)a3;
- (void)setPopupActions:(id)a3;
@end

@implementation UIPrintOptionPopupCell

- (UIPrintOptionPopupCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v37[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v35.receiver = self;
  v35.super_class = UIPrintOptionPopupCell;
  v6 = [(UIPrintOptionCell *)&v35 initWithStyle:1 reuseIdentifier:v5];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277D756B8]);
    textLabel = v6->_textLabel;
    v6->_textLabel = v7;

    v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v6->_textLabel setFont:v9];

    [(UILabel *)v6->_textLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v6->_textLabel setAdjustsFontForContentSizeCategory:1];
    v10 = [(UIPrintOptionPopupCell *)v6 contentView];
    [v10 addSubview:v6->_textLabel];

    v11 = [MEMORY[0x277D75230] plainButtonConfiguration];
    [v11 setTitleLineBreakMode:4];
    v12 = [MEMORY[0x277D75348] secondaryLabelColor];
    [v11 setBaseForegroundColor:v12];

    [v11 contentInsets];
    v14 = v13;
    [v11 contentInsets];
    [v11 setContentInsets:{v14, 0.0}];
    v15 = [MEMORY[0x277D75220] buttonWithConfiguration:v11 primaryAction:0];
    [(UIPrintOptionPopupCell *)v6 setPopupButton:v15];

    v16 = [(UIPrintOptionPopupCell *)v6 popupButton];
    [v16 setChangesSelectionAsPrimaryAction:1];

    v17 = [(UIPrintOptionPopupCell *)v6 popupButton];
    [v17 setShowsMenuAsPrimaryAction:1];

    v18 = [MEMORY[0x277D750C8] actionWithTitle:&stru_2871AE610 image:0 identifier:0 handler:&__block_literal_global_1];
    v19 = MEMORY[0x277D75710];
    v37[0] = v18;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
    v21 = [v19 menuWithChildren:v20];
    v22 = [(UIPrintOptionPopupCell *)v6 popupButton];
    [v22 setMenu:v21];

    v23 = [(UIPrintOptionPopupCell *)v6 popupButton];
    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];

    v24 = [(UIPrintOptionPopupCell *)v6 popupButton];
    LODWORD(v25) = 1144750080;
    [v24 setContentCompressionResistancePriority:0 forAxis:v25];

    v26 = [(UIPrintOptionPopupCell *)v6 popupButton];
    [(UIPrintOptionPopupCell *)v6 _setPopupMenuButton:v26];

    v27 = [(UIPrintOptionPopupCell *)v6 contentView];
    v28 = [(UIPrintOptionPopupCell *)v6 popupButton];
    [v27 addSubview:v28];

    [(UIPrintOptionPopupCell *)v6 _updateConstraints];
    objc_initWeak(&location, v6);
    v36 = objc_opt_class();
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __56__UIPrintOptionPopupCell_initWithStyle_reuseIdentifier___block_invoke_2;
    v32[3] = &unk_279A9C470;
    objc_copyWeak(&v33, &location);
    v30 = [(UIPrintOptionPopupCell *)v6 registerForTraitChanges:v29 withHandler:v32];

    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __56__UIPrintOptionPopupCell_initWithStyle_reuseIdentifier___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateConstraints];
}

- (BOOL)usingLargeTextLayout
{
  v3 = [(UIPrintOptionPopupCell *)self traitCollection];

  if (!v3)
  {
    return 0;
  }

  v4 = [(UIPrintOptionPopupCell *)self traitCollection];
  v5 = [v4 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v5);

  return IsAccessibilityCategory;
}

- (void)_updateConstraints
{
  v72[7] = *MEMORY[0x277D85DE8];
  v3 = [(UIPrintOptionPopupCell *)self constraints];

  if (v3)
  {
    v4 = MEMORY[0x277CCAAD0];
    v5 = [(UIPrintOptionPopupCell *)self constraints];
    [v4 deactivateConstraints:v5];
  }

  v6 = [(UIPrintOptionPopupCell *)self usingLargeTextLayout];
  textLabel = self->_textLabel;
  if (v6)
  {
    LODWORD(v7) = 1144750080;
    [(UILabel *)textLabel setContentCompressionResistancePriority:0 forAxis:v7];
    v63 = [(UILabel *)self->_textLabel leadingAnchor];
    v57 = [(UIPrintOptionPopupCell *)self contentView];
    v51 = [v57 layoutMarginsGuide];
    v50 = [v51 leadingAnchor];
    v49 = [v63 constraintEqualToAnchor:v50];
    v72[0] = v49;
    v47 = [(UILabel *)self->_textLabel topAnchor];
    v48 = [(UIPrintOptionPopupCell *)self contentView];
    v70 = [v48 layoutMarginsGuide];
    v69 = [v70 topAnchor];
    v68 = [v47 constraintEqualToAnchor:?];
    v72[1] = v68;
    v9 = [(UILabel *)self->_textLabel trailingAnchor];
    v66 = [(UIPrintOptionPopupCell *)self contentView];
    v46 = [v66 layoutMarginsGuide];
    [v46 trailingAnchor];
    v65 = v67 = v9;
    v64 = [v9 constraintEqualToAnchor:?];
    v72[2] = v64;
    v62 = [(UIPrintOptionPopupCell *)self popupButton];
    v10 = [v62 leadingAnchor];
    v60 = [(UIPrintOptionPopupCell *)self contentView];
    v45 = [v60 layoutMarginsGuide];
    [v45 leadingAnchor];
    v59 = v61 = v10;
    v58 = [v10 constraintEqualToAnchor:?];
    v72[3] = v58;
    v56 = [(UIPrintOptionPopupCell *)self popupButton];
    v11 = [v56 trailingAnchor];
    v54 = [(UIPrintOptionPopupCell *)self contentView];
    v42 = [v54 layoutMarginsGuide];
    [v42 trailingAnchor];
    v53 = v55 = v11;
    v52 = [v11 constraintLessThanOrEqualToAnchor:?];
    v72[4] = v52;
    v44 = [(UIPrintOptionPopupCell *)self popupButton];
    v43 = [v44 topAnchor];
    v12 = [(UILabel *)self->_textLabel bottomAnchor];
    v13 = [v43 constraintEqualToAnchor:v12];
    v72[5] = v13;
    v14 = [(UIPrintOptionPopupCell *)self popupButton];
    v15 = [v14 bottomAnchor];
    v16 = [(UIPrintOptionPopupCell *)self contentView];
    v17 = [v16 layoutMarginsGuide];
    v18 = [v17 bottomAnchor];
    v19 = [v15 constraintEqualToAnchor:v18];
    v72[6] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:7];
    [(UIPrintOptionPopupCell *)self setConstraints:v20];

    v21 = v48;
    v22 = v42;

    v23 = v47;
    v24 = v45;

    v25 = v49;
    v26 = v50;

    v27 = v51;
    v28 = v46;
  }

  else
  {
    LODWORD(v7) = 1148846080;
    [(UILabel *)textLabel setContentCompressionResistancePriority:0 forAxis:v7];
    v29 = [(UILabel *)self->_textLabel leadingAnchor];
    v57 = [(UIPrintOptionPopupCell *)self contentView];
    v27 = [v57 layoutMarginsGuide];
    v26 = [v27 leadingAnchor];
    v63 = v29;
    v25 = [v29 constraintEqualToAnchor:v26];
    v71[0] = v25;
    v23 = [(UILabel *)self->_textLabel centerYAnchor];
    v21 = [(UIPrintOptionPopupCell *)self contentView];
    v70 = [v21 layoutMarginsGuide];
    v69 = [v70 centerYAnchor];
    v68 = [v23 constraintEqualToAnchor:?];
    v71[1] = v68;
    v67 = [(UIPrintOptionPopupCell *)self popupButton];
    v30 = [v67 leadingAnchor];
    v31 = [(UILabel *)self->_textLabel trailingAnchor];
    v66 = v30;
    v32 = v30;
    v28 = v31;
    v65 = [v32 constraintGreaterThanOrEqualToAnchor:v31 constant:8.0];
    v71[2] = v65;
    v64 = [(UIPrintOptionPopupCell *)self popupButton];
    v33 = [v64 trailingAnchor];
    v61 = [(UIPrintOptionPopupCell *)self contentView];
    v60 = [v61 layoutMarginsGuide];
    v34 = [v60 trailingAnchor];
    v62 = v33;
    v35 = v33;
    v24 = v34;
    v59 = [v35 constraintEqualToAnchor:v34];
    v71[3] = v59;
    v58 = [(UIPrintOptionPopupCell *)self popupButton];
    v36 = [v58 centerYAnchor];
    v55 = [(UIPrintOptionPopupCell *)self contentView];
    v54 = [v55 layoutMarginsGuide];
    v37 = [v54 centerYAnchor];
    v56 = v36;
    v38 = v36;
    v22 = v37;
    v53 = [v38 constraintEqualToAnchor:v37];
    v71[4] = v53;
    v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:5];
    [(UIPrintOptionPopupCell *)self setConstraints:?];
  }

  v39 = MEMORY[0x277CCAAD0];
  v40 = [(UIPrintOptionPopupCell *)self constraints];
  [v39 activateConstraints:v40];

  [(UILabel *)self->_textLabel setNeedsUpdateConstraints];
  v41 = [(UIPrintOptionPopupCell *)self popupButton];
  [v41 setNeedsUpdateConstraints];
}

- (void)setPopupActions:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_storeStrong(&self->_popupActions, a3);
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        v11 = 0;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [MEMORY[0x277D75710] menuWithTitle:&stru_2871AE610 image:0 identifier:0 options:1 children:{*(*(&v16 + 1) + 8 * v11), v16}];
          [v6 addObject:v12];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    v13 = [MEMORY[0x277D75710] menuWithTitle:&stru_2871AE610 children:v6];
    v14 = [(UIPrintOptionPopupCell *)self popupButton];
    [v14 setMenu:v13];
  }

  v15 = [(UIPrintOptionPopupCell *)self popupButton];
  [(UIPrintOptionPopupCell *)self _setPopupMenuButton:v15];
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIPrintOptionPopupCell *)self popupButton];
  [v5 setEnabled:v3];

  [(UIPrintOptionPopupCell *)self setUserInteractionEnabled:v3];
}

@end