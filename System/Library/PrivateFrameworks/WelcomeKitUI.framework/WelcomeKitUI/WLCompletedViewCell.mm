@interface WLCompletedViewCell
- (WLCompletedViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)customCheckmarkAccessoryView;
- (id)customErrorAccessoryView;
- (id)customWarningAccessoryView;
- (void)setItem:(id)item;
@end

@implementation WLCompletedViewCell

- (WLCompletedViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v70[4] = *MEMORY[0x277D85DE8];
  v67.receiver = self;
  v67.super_class = WLCompletedViewCell;
  v4 = [(WLCompletedViewCell *)&v67 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [(WLCompletedViewCell *)v4 setBackgroundColor:systemBackgroundColor];

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
    topAnchor = [(UILabel *)v4->_titleLabel topAnchor];
    topAnchor2 = [(WLCompletedViewCell *)v4 topAnchor];
    v58 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
    v70[0] = v58;
    leadingAnchor = [(UILabel *)v4->_titleLabel leadingAnchor];
    leadingAnchor2 = [(WLCompletedViewCell *)v4 leadingAnchor];
    v46 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:15.0];
    v70[1] = v46;
    trailingAnchor = [(UILabel *)v4->_titleLabel trailingAnchor];
    leadingAnchor3 = [(UIView *)v4->_accessoryView leadingAnchor];
    v23 = [trailingAnchor constraintEqualToAnchor:leadingAnchor3];
    v70[2] = v23;
    bottomAnchor = [(UILabel *)v4->_titleLabel bottomAnchor];
    topAnchor3 = [(UILabel *)v4->_descriptionLabel topAnchor];
    v26 = [bottomAnchor constraintEqualToAnchor:topAnchor3 constant:-5.0];
    v70[3] = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:4];
    [v52 activateConstraints:v27];

    v50 = MEMORY[0x277CCAAD0];
    topAnchor4 = [(UILabel *)v4->_descriptionLabel topAnchor];
    bottomAnchor2 = [(UILabel *)v4->_titleLabel bottomAnchor];
    v59 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:5.0];
    v69[0] = v59;
    leadingAnchor4 = [(UILabel *)v4->_descriptionLabel leadingAnchor];
    leadingAnchor5 = [(UILabel *)v4->_titleLabel leadingAnchor];
    v47 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
    v69[1] = v47;
    trailingAnchor2 = [(UILabel *)v4->_descriptionLabel trailingAnchor];
    trailingAnchor3 = [(UILabel *)v4->_titleLabel trailingAnchor];
    v30 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
    v69[2] = v30;
    bottomAnchor3 = [(UILabel *)v4->_descriptionLabel bottomAnchor];
    bottomAnchor4 = [(WLCompletedViewCell *)v4 bottomAnchor];
    v33 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-10.0];
    v69[3] = v33;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:4];
    [v50 activateConstraints:v34];

    v48 = MEMORY[0x277CCAAD0];
    topAnchor5 = [(UIView *)v4->_accessoryView topAnchor];
    topAnchor6 = [(WLCompletedViewCell *)v4 topAnchor];
    v60 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    v68[0] = v60;
    leadingAnchor6 = [(UIView *)v4->_accessoryView leadingAnchor];
    trailingAnchor4 = [(UILabel *)v4->_titleLabel trailingAnchor];
    v51 = [leadingAnchor6 constraintEqualToAnchor:trailingAnchor4];
    v68[1] = v51;
    trailingAnchor5 = [(UIView *)v4->_accessoryView trailingAnchor];
    trailingAnchor6 = [(WLCompletedViewCell *)v4 trailingAnchor];
    v37 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    v68[2] = v37;
    bottomAnchor5 = [(UIView *)v4->_accessoryView bottomAnchor];
    bottomAnchor6 = [(WLCompletedViewCell *)v4 bottomAnchor];
    v40 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
    v68[3] = v40;
    widthAnchor = [(UIView *)v4->_accessoryView widthAnchor];
    v42 = [widthAnchor constraintEqualToConstant:60.0];
    v68[4] = v42;
    v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:5];
    [v48 activateConstraints:v43];
  }

  v44 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)setItem:(id)item
{
  v38 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  subviews = [(UIView *)self->_accessoryView subviews];
  v6 = [subviews countByEnumeratingWithState:&v32 objects:v37 count:16];
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
          objc_enumerationMutation(subviews);
        }

        [*(*(&v32 + 1) + 8 * v9++) removeFromSuperview];
      }

      while (v7 != v9);
      v7 = [subviews countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v7);
  }

  titleLabel = self->_titleLabel;
  text = [itemCopy text];
  [(UILabel *)titleLabel setText:text];

  [(UILabel *)self->_titleLabel sizeToFit];
  descriptionLabel = self->_descriptionLabel;
  secondaryText = [itemCopy secondaryText];
  [(UILabel *)descriptionLabel setText:secondaryText];

  [(UILabel *)self->_descriptionLabel sizeToFit];
  v31 = itemCopy;
  if ([itemCopy showDetailDisclosureButton])
  {
    if ([itemCopy failed])
    {
      [(WLCompletedViewCell *)self customErrorAccessoryView];
    }

    else
    {
      [(WLCompletedViewCell *)self customWarningAccessoryView];
    }
    customCheckmarkAccessoryView = ;
  }

  else
  {
    customCheckmarkAccessoryView = [(WLCompletedViewCell *)self customCheckmarkAccessoryView];
  }

  v15 = customCheckmarkAccessoryView;
  [(UIView *)self->_accessoryView addSubview:customCheckmarkAccessoryView];
  v26 = MEMORY[0x277CCAAD0];
  topAnchor = [v15 topAnchor];
  topAnchor2 = [(UIView *)self->_accessoryView topAnchor];
  v28 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v36[0] = v28;
  leadingAnchor = [v15 leadingAnchor];
  leadingAnchor2 = [(UIView *)self->_accessoryView leadingAnchor];
  v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v36[1] = v17;
  trailingAnchor = [v15 trailingAnchor];
  trailingAnchor2 = [(UIView *)self->_accessoryView trailingAnchor];
  v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v36[2] = v20;
  bottomAnchor = [v15 bottomAnchor];
  bottomAnchor2 = [(UIView *)self->_accessoryView bottomAnchor];
  v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
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

  systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
  [v6 setTintColor:systemOrangeColor];

  [v6 setContentMode:4];
  v8 = objc_alloc(MEMORY[0x277D755E8]);
  v9 = MEMORY[0x277D755B8];
  v10 = [MEMORY[0x277D755D0] configurationWithPointSize:20.0];
  v11 = [v9 systemImageNamed:@"chevron.forward" withConfiguration:v10];
  v12 = [v8 initWithImage:v11];

  systemGray4Color = [MEMORY[0x277D75348] systemGray4Color];
  [v12 setTintColor:systemGray4Color];

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
  topAnchor = [v6 topAnchor];
  topAnchor2 = [v16 topAnchor];
  v31 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v34[0] = v31;
  leadingAnchor = [v6 leadingAnchor];
  leadingAnchor2 = [v16 leadingAnchor];
  v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v34[1] = v17;
  trailingAnchor = [v6 trailingAnchor];
  trailingAnchor2 = [v12 trailingAnchor];
  v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-5.0];
  v34[2] = v20;
  bottomAnchor = [v6 bottomAnchor];
  bottomAnchor2 = [v16 bottomAnchor];
  v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
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

  systemRedColor = [MEMORY[0x277D75348] systemRedColor];
  [v6 setTintColor:systemRedColor];

  [v6 setContentMode:4];
  v8 = objc_alloc(MEMORY[0x277D755E8]);
  v9 = MEMORY[0x277D755B8];
  v10 = [MEMORY[0x277D755D0] configurationWithPointSize:20.0];
  v11 = [v9 systemImageNamed:@"chevron.forward" withConfiguration:v10];
  v12 = [v8 initWithImage:v11];

  systemGray4Color = [MEMORY[0x277D75348] systemGray4Color];
  [v12 setTintColor:systemGray4Color];

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
  topAnchor = [v6 topAnchor];
  topAnchor2 = [v16 topAnchor];
  v31 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v34[0] = v31;
  leadingAnchor = [v6 leadingAnchor];
  leadingAnchor2 = [v16 leadingAnchor];
  v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v34[1] = v17;
  trailingAnchor = [v6 trailingAnchor];
  trailingAnchor2 = [v12 trailingAnchor];
  v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-5.0];
  v34[2] = v20;
  bottomAnchor = [v6 bottomAnchor];
  bottomAnchor2 = [v16 bottomAnchor];
  v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
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

  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  [v6 setTintColor:systemBlueColor];

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