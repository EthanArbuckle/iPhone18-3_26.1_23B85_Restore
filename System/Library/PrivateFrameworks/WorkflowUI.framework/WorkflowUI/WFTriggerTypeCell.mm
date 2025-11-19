@interface WFTriggerTypeCell
- (WFTriggerTypeCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)prepareForReuse;
- (void)setTrigger:(id)a3;
- (void)setTriggerTypeClass:(Class)a3;
- (void)updateUI;
@end

@implementation WFTriggerTypeCell

- (void)updateUI
{
  v3 = [(WFTriggerTypeCell *)self trigger];

  if (v3)
  {
    v4 = [(WFTriggerTypeCell *)self trigger];
    v5 = [v4 localizedDisplayName];
    v6 = [(WFTriggerTypeCell *)self triggerTitleLabel];
    [v6 setText:v5];

    v7 = [(WFTriggerTypeCell *)self trigger];
    v8 = [v7 localizedDisplayExplanation];
    v9 = [(WFTriggerTypeCell *)self triggerDescriptionLabel];
    [v9 setText:v8];

    v10 = [(WFTriggerTypeCell *)self trigger];
    v11 = [v10 displayGlyph];
    v12 = [v11 platformImage];
    v13 = [(WFTriggerTypeCell *)self triggerIconView];
    [v13 setImage:v12];

    v14 = [(WFTriggerTypeCell *)self trigger];
    [v14 displayGlyphCornerRadius];
    v16 = v15;

    v17 = [(WFTriggerTypeCell *)self triggerIconView];
    v18 = v17;
    if (v16 <= 0.0)
    {
      [v17 setClipsToBounds:0];
    }

    else
    {
      [v17 setClipsToBounds:1];

      v18 = [(WFTriggerTypeCell *)self trigger];
      [v18 displayGlyphCornerRadius];
      v20 = v19;
      v21 = [(WFTriggerTypeCell *)self triggerIconView];
      v22 = [v21 layer];
      [v22 setCornerRadius:v20];
    }

    v28 = [(WFTriggerTypeCell *)self trigger];
    v25 = [v28 displayGlyphTintColor];
    v26 = [v25 UIColor];
    v27 = [(WFTriggerTypeCell *)self triggerIconView];
    [v27 setTintColor:v26];
  }

  else
  {
    v23 = [(WFTriggerTypeCell *)self triggerTitleLabel];
    [v23 setText:0];

    v24 = [(WFTriggerTypeCell *)self triggerDescriptionLabel];
    [v24 setText:0];

    v28 = [(WFTriggerTypeCell *)self triggerIconView];
    [v28 setImage:0];
  }
}

- (void)setTrigger:(id)a3
{
  objc_storeStrong(&self->_trigger, a3);

  [(WFTriggerTypeCell *)self updateUI];
}

- (void)setTriggerTypeClass:(Class)a3
{
  objc_storeStrong(&self->_triggerTypeClass, a3);
  v4 = objc_opt_new();
  [(WFTriggerTypeCell *)self setTrigger:v4];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = WFTriggerTypeCell;
  [(WFTriggerTypeCell *)&v3 prepareForReuse];
  [(WFTriggerTypeCell *)self setTriggerTypeClass:0];
  [(WFTriggerTypeCell *)self setTrigger:0];
}

- (WFTriggerTypeCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v56[9] = *MEMORY[0x277D85DE8];
  v55.receiver = self;
  v55.super_class = WFTriggerTypeCell;
  v4 = [(WFTriggerTypeCell *)&v55 initWithStyle:0 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D755E8]);
    triggerIconView = v4->_triggerIconView;
    v4->_triggerIconView = v5;

    [(UIImageView *)v4->_triggerIconView setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [(WFTriggerTypeCell *)v4 contentView];
    [v7 addSubview:v4->_triggerIconView];

    v8 = objc_alloc_init(MEMORY[0x277D756B8]);
    triggerTitleLabel = v4->_triggerTitleLabel;
    v4->_triggerTitleLabel = v8;

    [(UILabel *)v4->_triggerTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v4->_triggerTitleLabel setFont:v10];

    v11 = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v4->_triggerTitleLabel setTextColor:v11];

    [(UILabel *)v4->_triggerTitleLabel setNumberOfLines:1];
    v12 = [(WFTriggerTypeCell *)v4 contentView];
    [v12 addSubview:v4->_triggerTitleLabel];

    v13 = objc_alloc_init(MEMORY[0x277D756B8]);
    triggerDescriptionLabel = v4->_triggerDescriptionLabel;
    v4->_triggerDescriptionLabel = v13;

    [(UILabel *)v4->_triggerDescriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
    [(UILabel *)v4->_triggerDescriptionLabel setFont:v15];

    v16 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v4->_triggerDescriptionLabel setTextColor:v16];

    [(UILabel *)v4->_triggerDescriptionLabel setLineBreakMode:0];
    [(UILabel *)v4->_triggerDescriptionLabel setNumberOfLines:3];
    v17 = [(WFTriggerTypeCell *)v4 contentView];
    [v17 addSubview:v4->_triggerDescriptionLabel];

    v42 = MEMORY[0x277CCAAD0];
    v53 = [(UIImageView *)v4->_triggerIconView centerYAnchor];
    v54 = [(WFTriggerTypeCell *)v4 contentView];
    v52 = [v54 centerYAnchor];
    v51 = [v53 constraintEqualToAnchor:v52];
    v56[0] = v51;
    v49 = [(UIImageView *)v4->_triggerIconView centerXAnchor];
    v50 = [(WFTriggerTypeCell *)v4 contentView];
    v48 = [v50 leadingAnchor];
    v47 = [v49 constraintEqualToAnchor:v48 constant:28.0];
    v56[1] = v47;
    v45 = [(UILabel *)v4->_triggerTitleLabel leadingAnchor];
    v46 = [(WFTriggerTypeCell *)v4 contentView];
    v44 = [v46 leadingAnchor];
    v43 = [v45 constraintEqualToAnchor:v44 constant:57.0];
    v56[2] = v43;
    v40 = [(UILabel *)v4->_triggerTitleLabel trailingAnchor];
    v41 = [(WFTriggerTypeCell *)v4 contentView];
    v39 = [v41 trailingAnchor];
    v38 = [v40 constraintEqualToAnchor:v39 constant:-8.0];
    v56[3] = v38;
    v37 = [(UILabel *)v4->_triggerDescriptionLabel leadingAnchor];
    v36 = [(UILabel *)v4->_triggerTitleLabel leadingAnchor];
    v35 = [v37 constraintEqualToAnchor:v36];
    v56[4] = v35;
    v34 = [(UILabel *)v4->_triggerDescriptionLabel trailingAnchor];
    v33 = [(UILabel *)v4->_triggerTitleLabel trailingAnchor];
    v32 = [v34 constraintEqualToAnchor:v33];
    v56[5] = v32;
    v30 = [(UILabel *)v4->_triggerTitleLabel topAnchor];
    v31 = [(WFTriggerTypeCell *)v4 contentView];
    v29 = [v31 topAnchor];
    v18 = [v30 constraintEqualToAnchor:v29 constant:10.0];
    v56[6] = v18;
    v19 = [(UILabel *)v4->_triggerDescriptionLabel topAnchor];
    v20 = [(UILabel *)v4->_triggerTitleLabel bottomAnchor];
    v21 = [v19 constraintEqualToAnchor:v20 constant:4.0];
    v56[7] = v21;
    v22 = [(UILabel *)v4->_triggerDescriptionLabel bottomAnchor];
    v23 = [(WFTriggerTypeCell *)v4 contentView];
    v24 = [v23 bottomAnchor];
    v25 = [v22 constraintEqualToAnchor:v24 constant:-12.0];
    v56[8] = v25;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:9];
    [v42 activateConstraints:v26];

    [(WFTriggerTypeCell *)v4 setAccessoryType:1];
    [(WFTriggerTypeCell *)v4 setSeparatorInset:0.0, 57.0, 0.0, 0.0];
    v27 = v4;
  }

  return v4;
}

@end