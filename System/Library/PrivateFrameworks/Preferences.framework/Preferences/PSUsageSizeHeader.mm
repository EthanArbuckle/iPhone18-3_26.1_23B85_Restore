@interface PSUsageSizeHeader
- (PSUsageSizeHeader)initWithSpecifier:(id)a3;
- (void)_setupSubviewsAndConstraints;
- (void)setSize:(id)a3;
@end

@implementation PSUsageSizeHeader

- (PSUsageSizeHeader)initWithSpecifier:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PSUsageSizeHeader;
  v5 = [(PSUsageSizeHeader *)&v14 init];
  v6 = v5;
  if (v5)
  {
    [(PSUsageSizeHeader *)v5 _setupSubviewsAndConstraints];
    v7 = MEMORY[0x1E696AAF0];
    v8 = [v4 propertyForKey:@"SIZE"];
    v9 = [v7 stringFromByteCount:objc_msgSend(v8 countStyle:{"longLongValue"), 2}];
    v10 = [(PSUsageSizeHeader *)v6 sizeLabel];
    [v10 setText:v9];

    v11 = [v4 name];
    v12 = [(PSUsageSizeHeader *)v6 titleLabel];
    [v12 setText:v11];
  }

  return v6;
}

- (void)_setupSubviewsAndConstraints
{
  v3 = [(PSUsageSizeHeader *)self _internalStackView];
  [v3 removeFromSuperview];

  v4 = objc_alloc(MEMORY[0x1E69DCF90]);
  v5 = *MEMORY[0x1E695F058];
  v6 = *(MEMORY[0x1E695F058] + 8);
  v7 = *(MEMORY[0x1E695F058] + 16);
  v8 = *(MEMORY[0x1E695F058] + 24);
  v9 = [v4 initWithFrame:{*MEMORY[0x1E695F058], v6, v7, v8}];
  [(PSUsageSizeHeader *)self set_internalStackView:v9];

  v10 = [(PSUsageSizeHeader *)self _internalStackView];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  v11 = [(PSUsageSizeHeader *)self _internalStackView];
  [v11 setAxis:0];

  v12 = [(PSUsageSizeHeader *)self _internalStackView];
  [v12 setDistribution:3];

  v13 = [(PSUsageSizeHeader *)self _internalStackView];
  [v13 setAlignment:2];

  v14 = [(PSUsageSizeHeader *)self contentView];
  v15 = [(PSUsageSizeHeader *)self _internalStackView];
  [v14 addSubview:v15];

  v16 = +[PSListController appearance];
  v17 = [v16 altTextColor];
  if (v17)
  {
    v18 = +[PSListController appearance];
    v66 = [v18 altTextColor];
  }

  else
  {
    v66 = PreferencesTableViewFooterColor();
  }

  v19 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v5, v6, v7, v8}];
  [(PSUsageSizeHeader *)self setTitleLabel:v19];

  v20 = [(PSUsageSizeHeader *)self titleLabel];
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];

  v21 = [(PSUsageSizeHeader *)self titleLabel];
  [v21 setAdjustsFontForContentSizeCategory:1];

  v22 = PreferencesTableViewHeaderFont();
  v23 = [(PSUsageSizeHeader *)self titleLabel];
  [v23 setFont:v22];

  v24 = [(PSUsageSizeHeader *)self titleLabel];
  [v24 setTextColor:v66];

  v25 = [MEMORY[0x1E69DC888] clearColor];
  v26 = [(PSUsageSizeHeader *)self titleLabel];
  [v26 setBackgroundColor:v25];

  v27 = [(PSUsageSizeHeader *)self _internalStackView];
  v28 = [(PSUsageSizeHeader *)self titleLabel];
  [v27 addArrangedSubview:v28];

  v29 = [(PSUsageSizeHeader *)self sizeLabel];
  [v29 removeFromSuperview];

  v30 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v5, v6, v7, v8}];
  [(PSUsageSizeHeader *)self setSizeLabel:v30];

  v31 = [(PSUsageSizeHeader *)self sizeLabel];
  [v31 setTranslatesAutoresizingMaskIntoConstraints:0];

  v32 = [(PSUsageSizeHeader *)self sizeLabel];
  [v32 setAdjustsFontForContentSizeCategory:1];

  v33 = PreferencesTableViewHeaderFont();
  v34 = [(PSUsageSizeHeader *)self sizeLabel];
  [v34 setFont:v33];

  v35 = [(PSUsageSizeHeader *)self sizeLabel];
  [v35 setTextColor:v66];

  v36 = [(PSUsageSizeHeader *)self sizeLabel];
  [v36 setTextAlignment:2];

  v37 = [MEMORY[0x1E69DC888] clearColor];
  v38 = [(PSUsageSizeHeader *)self sizeLabel];
  [v38 setBackgroundColor:v37];

  v39 = [(PSUsageSizeHeader *)self _internalStackView];
  v40 = [(PSUsageSizeHeader *)self sizeLabel];
  [v39 addArrangedSubview:v40];

  v41 = [MEMORY[0x1E695DF70] array];
  v42 = [(PSUsageSizeHeader *)self _internalStackView];
  v43 = [v42 leadingAnchor];
  v44 = [(PSUsageSizeHeader *)self contentView];
  v45 = [v44 layoutMarginsGuide];
  v46 = [v45 leadingAnchor];
  v47 = [v43 constraintEqualToAnchor:v46];
  [v41 addObject:v47];

  v48 = [(PSUsageSizeHeader *)self _internalStackView];
  v49 = [v48 trailingAnchor];
  v50 = [(PSUsageSizeHeader *)self contentView];
  v51 = [v50 layoutMarginsGuide];
  v52 = [v51 trailingAnchor];
  v53 = [v49 constraintEqualToAnchor:v52];
  [v41 addObject:v53];

  v54 = [(PSUsageSizeHeader *)self _internalStackView];
  v55 = [v54 topAnchor];
  v56 = [(PSUsageSizeHeader *)self contentView];
  v57 = [v56 layoutMarginsGuide];
  v58 = [v57 topAnchor];
  v59 = [v55 constraintEqualToAnchor:v58];
  [v41 addObject:v59];

  v60 = [(PSUsageSizeHeader *)self _internalStackView];
  v61 = [v60 bottomAnchor];
  v62 = [(PSUsageSizeHeader *)self contentView];
  v63 = [v62 layoutMarginsGuide];
  v64 = [v63 bottomAnchor];
  v65 = [v61 constraintEqualToAnchor:v64];
  [v41 addObject:v65];

  [MEMORY[0x1E696ACD8] activateConstraints:v41];
}

- (void)setSize:(id)a3
{
  [(UILabel *)self->_sizeLabel setText:a3];
  [(UILabel *)self->_sizeLabel sizeToFit];

  [(PSUsageSizeHeader *)self setNeedsLayout];
}

@end