@interface WGWidgetListEditViewPinTableViewCell
- (WGWidgetListEditViewPinTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)prepareForReuse;
@end

@implementation WGWidgetListEditViewPinTableViewCell

- (WGWidgetListEditViewPinTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v47[2] = *MEMORY[0x277D85DE8];
  v45.receiver = self;
  v45.super_class = WGWidgetListEditViewPinTableViewCell;
  v4 = [(WGWidgetListEditViewPinTableViewCell *)&v45 initWithStyle:3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v44 = [(WGWidgetListEditViewPinTableViewCell *)v4 contentView];
    v6 = objc_alloc_init(MEMORY[0x277D75AE8]);
    pinSwitch = v5->_pinSwitch;
    v5->_pinSwitch = v6;

    [(UISwitch *)v5->_pinSwitch setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UISwitch *)v5->_pinSwitch sizeToFit];
    v8 = objc_alloc_init(WGWidgetPinningTeachingAnimationView);
    [(WGWidgetPinningTeachingAnimationView *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v9) = 1148846080;
    [(WGWidgetPinningTeachingAnimationView *)v8 setContentHuggingPriority:0 forAxis:v9];
    pinImageView = v5->_pinImageView;
    v5->_pinImageView = v8;
    v43 = v8;

    v11 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"WIDGETS_PIN_TITLE" value:&stru_2883435D8 table:@"Widgets"];
    [v11 setText:v13];

    v14 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
    [v11 setFont:v14];

    v15 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"WIDGETS_PIN_MESSAGE" value:&stru_2883435D8 table:@"Widgets"];
    [v15 setText:v17];

    v18 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [v15 setFont:v18];

    [v15 setNumberOfLines:0];
    v19 = objc_alloc(MEMORY[0x277D75A68]);
    v47[0] = v11;
    v47[1] = v15;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:2];
    v21 = [v19 initWithArrangedSubviews:v20];

    [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v21 setAxis:1];
    v22 = objc_alloc(MEMORY[0x277D75A68]);
    v46[0] = v43;
    v46[1] = v21;
    v46[2] = v5->_pinSwitch;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:3];
    v24 = [v22 initWithArrangedSubviews:v23];

    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v24 setAxis:0];
    [v24 setAlignment:3];
    [v24 setSpacing:30.0];
    [v44 addSubview:v24];
    v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v26 = [v24 leadingAnchor];
    v27 = [v44 leadingAnchor];
    v28 = [v26 constraintEqualToAnchor:v27 constant:30.0];
    [v25 addObject:v28];

    v29 = [v44 trailingAnchor];
    v30 = [v24 trailingAnchor];
    v31 = [v29 constraintEqualToAnchor:v30 constant:23.0];
    [v25 addObject:v31];

    v32 = [v24 topAnchor];
    v33 = [v44 topAnchor];
    v34 = [v32 constraintEqualToAnchor:v33 constant:28.0];
    [v25 addObject:v34];

    v35 = [v44 bottomAnchor];
    v36 = [v24 bottomAnchor];
    v37 = [v35 constraintEqualToAnchor:v36 constant:28.0];
    [v25 addObject:v37];

    v38 = [(WGWidgetPinningTeachingAnimationView *)v43 widthAnchor];
    v39 = [v38 constraintEqualToConstant:61.0];
    [v25 addObject:v39];

    v40 = [(WGWidgetPinningTeachingAnimationView *)v43 heightAnchor];
    v41 = [v40 constraintEqualToConstant:50.0];
    [v25 addObject:v41];

    [MEMORY[0x277CCAAD0] activateConstraints:v25];
  }

  return v5;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = WGWidgetListEditViewPinTableViewCell;
  [(WGWidgetListEditViewPinTableViewCell *)&v3 prepareForReuse];
  [(WGWidgetListEditViewPinTableViewCell *)self stopAnimating];
}

@end