@interface WLCompletedViewCell
- (WLCompletedViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)customCheckmarkAccessoryView;
- (id)customErrorAccessoryView;
- (id)customWarningAccessoryView;
- (void)setItem:(id)a3;
@end

@implementation WLCompletedViewCell

- (WLCompletedViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v70[4] = *MEMORY[0x277D85DE8];
  v67.receiver = self;
  v67.super_class = WLCompletedViewCell;
  v4 = [(WLCompletedViewCell *)&v67 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [MEMORY[0x277D75348] systemBackgroundColor];
    [(WLCompletedViewCell *)v4 setBackgroundColor:v5];

    v6 = objc_alloc(MEMORY[0x277D756B8]);
    v7 = *MEMORY[0x277CBF3A0];
    v8 = *(MEMORY[0x277CBF3A0] + 8);
    v9 = *(MEMORY[0x277CBF3A0] + 16);
    v10 = *(MEMORY[0x277CBF3A0] + 24);
    v11 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], v8, v9, v10}];
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v11;

    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = v4->_titleLabel;
    v14 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
    [(UILabel *)v13 setFont:v14];

    [(UILabel *)v4->_titleLabel setNumberOfLines:0];
    [(WLCompletedViewCell *)v4 addSubview:v4->_titleLabel];
    v15 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v7, v8, v9, v10}];
    descriptionLabel = v4->_descriptionLabel;
    v4->_descriptionLabel = v15;

    [(UILabel *)v4->_descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = v4->_descriptionLabel;
    v18 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [(UILabel *)v17 setFont:v18];

    [(UILabel *)v4->_descriptionLabel setNumberOfLines:0];
    [(WLCompletedViewCell *)v4 addSubview:v4->_descriptionLabel];
    v19 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v7, v8, v9, v10}];
    accessoryView = v4->_accessoryView;
    v4->_accessoryView = v19;

    [(UIView *)v4->_accessoryView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(WLCompletedViewCell *)v4 addSubview:v4->_accessoryView];
    v52 = MEMORY[0x277CCAAD0];
    v64 = [(UILabel *)v4->_titleLabel topAnchor];
    v61 = [(WLCompletedViewCell *)v4 topAnchor];
    v58 = [v64 constraintEqualToAnchor:v61 constant:10.0];
    v70[0] = v58;
    v55 = [(UILabel *)v4->_titleLabel leadingAnchor];
    v49 = [(WLCompletedViewCell *)v4 leadingAnchor];
    v46 = [v55 constraintEqualToAnchor:v49 constant:15.0];
    v70[1] = v46;
    v21 = [(UILabel *)v4->_titleLabel trailingAnchor];
    v22 = [(UIView *)v4->_accessoryView leadingAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];
    v70[2] = v23;
    v24 = [(UILabel *)v4->_titleLabel bottomAnchor];
    v25 = [(UILabel *)v4->_descriptionLabel topAnchor];
    v26 = [v24 constraintEqualToAnchor:v25 constant:-5.0];
    v70[3] = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:4];
    [v52 activateConstraints:v27];

    v50 = MEMORY[0x277CCAAD0];
    v65 = [(UILabel *)v4->_descriptionLabel topAnchor];
    v62 = [(UILabel *)v4->_titleLabel bottomAnchor];
    v59 = [v65 constraintEqualToAnchor:v62 constant:5.0];
    v69[0] = v59;
    v56 = [(UILabel *)v4->_descriptionLabel leadingAnchor];
    v53 = [(UILabel *)v4->_titleLabel leadingAnchor];
    v47 = [v56 constraintEqualToAnchor:v53];
    v69[1] = v47;
    v28 = [(UILabel *)v4->_descriptionLabel trailingAnchor];
    v29 = [(UILabel *)v4->_titleLabel trailingAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];
    v69[2] = v30;
    v31 = [(UILabel *)v4->_descriptionLabel bottomAnchor];
    v32 = [(WLCompletedViewCell *)v4 bottomAnchor];
    v33 = [v31 constraintEqualToAnchor:v32 constant:-10.0];
    v69[3] = v33;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:4];
    [v50 activateConstraints:v34];

    v48 = MEMORY[0x277CCAAD0];
    v66 = [(UIView *)v4->_accessoryView topAnchor];
    v63 = [(WLCompletedViewCell *)v4 topAnchor];
    v60 = [v66 constraintEqualToAnchor:v63];
    v68[0] = v60;
    v57 = [(UIView *)v4->_accessoryView leadingAnchor];
    v54 = [(UILabel *)v4->_titleLabel trailingAnchor];
    v51 = [v57 constraintEqualToAnchor:v54];
    v68[1] = v51;
    v35 = [(UIView *)v4->_accessoryView trailingAnchor];
    v36 = [(WLCompletedViewCell *)v4 trailingAnchor];
    v37 = [v35 constraintEqualToAnchor:v36];
    v68[2] = v37;
    v38 = [(UIView *)v4->_accessoryView bottomAnchor];
    v39 = [(WLCompletedViewCell *)v4 bottomAnchor];
    v40 = [v38 constraintEqualToAnchor:v39];
    v68[3] = v40;
    v41 = [(UIView *)v4->_accessoryView widthAnchor];
    v42 = [v41 constraintEqualToConstant:60.0];
    v68[4] = v42;
    v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:5];
    [v48 activateConstraints:v43];
  }

  v44 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)setItem:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = [(UIView *)self->_accessoryView subviews];
  v6 = [v5 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    do
    {
      v9 = 0;
      do
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v32 + 1) + 8 * v9++) removeFromSuperview];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v7);
  }

  titleLabel = self->_titleLabel;
  v11 = [v4 text];
  [(UILabel *)titleLabel setText:v11];

  [(UILabel *)self->_titleLabel sizeToFit];
  descriptionLabel = self->_descriptionLabel;
  v13 = [v4 secondaryText];
  [(UILabel *)descriptionLabel setText:v13];

  [(UILabel *)self->_descriptionLabel sizeToFit];
  v31 = v4;
  if ([v4 showDetailDisclosureButton])
  {
    if ([v4 failed])
    {
      [(WLCompletedViewCell *)self customErrorAccessoryView];
    }

    else
    {
      [(WLCompletedViewCell *)self customWarningAccessoryView];
    }
    v14 = ;
  }

  else
  {
    v14 = [(WLCompletedViewCell *)self customCheckmarkAccessoryView];
  }

  v15 = v14;
  [(UIView *)self->_accessoryView addSubview:v14];
  v26 = MEMORY[0x277CCAAD0];
  v30 = [v15 topAnchor];
  v29 = [(UIView *)self->_accessoryView topAnchor];
  v28 = [v30 constraintEqualToAnchor:v29];
  v36[0] = v28;
  v27 = [v15 leadingAnchor];
  v16 = [(UIView *)self->_accessoryView leadingAnchor];
  v17 = [v27 constraintEqualToAnchor:v16];
  v36[1] = v17;
  v18 = [v15 trailingAnchor];
  v19 = [(UIView *)self->_accessoryView trailingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];
  v36[2] = v20;
  v21 = [v15 bottomAnchor];
  v22 = [(UIView *)self->_accessoryView bottomAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];
  v36[3] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:4];
  [v26 activateConstraints:v24];

  v25 = *MEMORY[0x277D85DE8];
}

- (id)customWarningAccessoryView
{
  v35[2] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D755E8]);
  v3 = MEMORY[0x277D755B8];
  v4 = [MEMORY[0x277D755D0] configurationWithPointSize:20.0];
  v5 = [v3 systemImageNamed:@"exclamationmark.triangle" withConfiguration:v4];
  v6 = [v2 initWithImage:v5];

  v7 = [MEMORY[0x277D75348] systemOrangeColor];
  [v6 setTintColor:v7];

  [v6 setContentMode:4];
  v8 = objc_alloc(MEMORY[0x277D755E8]);
  v9 = MEMORY[0x277D755B8];
  v10 = [MEMORY[0x277D755D0] configurationWithPointSize:20.0];
  v11 = [v9 systemImageNamed:@"chevron.forward" withConfiguration:v10];
  v12 = [v8 initWithImage:v11];

  v13 = [MEMORY[0x277D75348] systemGray4Color];
  [v12 setTintColor:v13];

  [v12 setContentMode:4];
  v14 = objc_alloc(MEMORY[0x277D75A68]);
  v35[0] = v6;
  v35[1] = v12;
  v30 = v12;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
  v16 = [v14 initWithArrangedSubviews:v15];

  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v16 setAxis:0];
  [v16 setAlignment:3];
  [v16 setLayoutMargins:{0.0, 10.0, 0.0, 10.0}];
  [v16 setLayoutMarginsRelativeArrangement:1];
  v27 = MEMORY[0x277CCAAD0];
  v33 = [v6 topAnchor];
  v32 = [v16 topAnchor];
  v31 = [v33 constraintEqualToAnchor:v32];
  v34[0] = v31;
  v29 = [v6 leadingAnchor];
  v28 = [v16 leadingAnchor];
  v17 = [v29 constraintEqualToAnchor:v28];
  v34[1] = v17;
  v18 = [v6 trailingAnchor];
  v19 = [v12 trailingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:-5.0];
  v34[2] = v20;
  v21 = [v6 bottomAnchor];
  v22 = [v16 bottomAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];
  v34[3] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:4];
  [v27 activateConstraints:v24];

  v25 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)customErrorAccessoryView
{
  v35[2] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D755E8]);
  v3 = MEMORY[0x277D755B8];
  v4 = [MEMORY[0x277D755D0] configurationWithPointSize:20.0];
  v5 = [v3 systemImageNamed:@"xmark" withConfiguration:v4];
  v6 = [v2 initWithImage:v5];

  v7 = [MEMORY[0x277D75348] systemRedColor];
  [v6 setTintColor:v7];

  [v6 setContentMode:4];
  v8 = objc_alloc(MEMORY[0x277D755E8]);
  v9 = MEMORY[0x277D755B8];
  v10 = [MEMORY[0x277D755D0] configurationWithPointSize:20.0];
  v11 = [v9 systemImageNamed:@"chevron.forward" withConfiguration:v10];
  v12 = [v8 initWithImage:v11];

  v13 = [MEMORY[0x277D75348] systemGray4Color];
  [v12 setTintColor:v13];

  [v12 setContentMode:4];
  v14 = objc_alloc(MEMORY[0x277D75A68]);
  v35[0] = v6;
  v35[1] = v12;
  v30 = v12;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
  v16 = [v14 initWithArrangedSubviews:v15];

  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v16 setAxis:0];
  [v16 setAlignment:3];
  [v16 setLayoutMargins:{0.0, 10.0, 0.0, 10.0}];
  [v16 setLayoutMarginsRelativeArrangement:1];
  v27 = MEMORY[0x277CCAAD0];
  v33 = [v6 topAnchor];
  v32 = [v16 topAnchor];
  v31 = [v33 constraintEqualToAnchor:v32];
  v34[0] = v31;
  v29 = [v6 leadingAnchor];
  v28 = [v16 leadingAnchor];
  v17 = [v29 constraintEqualToAnchor:v28];
  v34[1] = v17;
  v18 = [v6 trailingAnchor];
  v19 = [v12 trailingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:-5.0];
  v34[2] = v20;
  v21 = [v6 bottomAnchor];
  v22 = [v16 bottomAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];
  v34[3] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:4];
  [v27 activateConstraints:v24];

  v25 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)customCheckmarkAccessoryView
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D755E8]);
  v3 = MEMORY[0x277D755B8];
  v4 = [MEMORY[0x277D755D0] configurationWithPointSize:20.0];
  v5 = [v3 systemImageNamed:@"checkmark" withConfiguration:v4];
  v6 = [v2 initWithImage:v5];

  v7 = [MEMORY[0x277D75348] systemBlueColor];
  [v6 setTintColor:v7];

  [v6 setContentMode:4];
  v8 = objc_alloc(MEMORY[0x277D75A68]);
  v13[0] = v6;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v10 = [v8 initWithArrangedSubviews:v9];

  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v10 setAxis:0];
  [v10 setAlignment:3];
  [v10 setLayoutMargins:{0.0, 10.0, 0.0, 10.0}];
  [v10 setLayoutMarginsRelativeArrangement:1];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end