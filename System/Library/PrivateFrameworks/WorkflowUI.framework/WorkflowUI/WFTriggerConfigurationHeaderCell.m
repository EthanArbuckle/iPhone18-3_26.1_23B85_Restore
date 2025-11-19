@interface WFTriggerConfigurationHeaderCell
- (WFTriggerConfigurationHeaderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)configureWithImage:(id)a3 tintColor:(id)a4 title:(id)a5 numberOfLines:(int64_t)a6 withTrigger:(id)a7;
- (void)prepareForReuse;
- (void)setTrigger:(id)a3;
- (void)setTriggerTypeClass:(Class)a3;
- (void)updateUI;
@end

@implementation WFTriggerConfigurationHeaderCell

- (void)updateUI
{
  v3 = [(WFTriggerConfigurationHeaderCell *)self trigger];

  if (v3)
  {
    v4 = [(WFTriggerConfigurationHeaderCell *)self trigger];
    v5 = [v4 localizedDisplayName];
    v6 = [(WFTriggerConfigurationHeaderCell *)self triggerTitleLabel];
    [v6 setText:v5];

    v7 = [(WFTriggerConfigurationHeaderCell *)self trigger];
    v8 = [v7 displayGlyph];
    v9 = [v8 platformImage];
    v10 = [(WFTriggerConfigurationHeaderCell *)self triggerIconView];
    [v10 setImage:v9];

    v11 = [(WFTriggerConfigurationHeaderCell *)self trigger];
    [v11 displayGlyphCornerRadius];
    v13 = v12;

    v14 = [(WFTriggerConfigurationHeaderCell *)self triggerIconView];
    v15 = v14;
    if (v13 <= 0.0)
    {
      [v14 setClipsToBounds:0];

      v16 = [(WFTriggerConfigurationHeaderCell *)self triggerIconView];
      v19 = [v16 layer];
      [v19 setCornerRadius:0.0];
    }

    else
    {
      [v14 setClipsToBounds:1];

      v16 = [(WFTriggerConfigurationHeaderCell *)self trigger];
      [v16 displayGlyphCornerRadius];
      v18 = v17;
      v19 = [(WFTriggerConfigurationHeaderCell *)self triggerIconView];
      v20 = [v19 layer];
      [v20 setCornerRadius:v18];
    }

    v26 = [(WFTriggerConfigurationHeaderCell *)self trigger];
    v23 = [v26 displayGlyphTintColor];
    v24 = [v23 UIColor];
    v25 = [(WFTriggerConfigurationHeaderCell *)self triggerIconView];
    [v25 setTintColor:v24];
  }

  else
  {
    v21 = [(WFTriggerConfigurationHeaderCell *)self triggerTitleLabel];
    [v21 setText:0];

    v22 = [(WFTriggerConfigurationHeaderCell *)self triggerIconView];
    [v22 setImage:0];

    v26 = [(WFTriggerConfigurationHeaderCell *)self triggerIconView];
    [v26 setTintColor:0];
  }
}

- (void)setTrigger:(id)a3
{
  objc_storeStrong(&self->_trigger, a3);

  [(WFTriggerConfigurationHeaderCell *)self updateUI];
}

- (void)setTriggerTypeClass:(Class)a3
{
  objc_storeStrong(&self->_triggerTypeClass, a3);
  v4 = objc_opt_new();
  [(WFTriggerConfigurationHeaderCell *)self setTrigger:v4];
}

- (void)configureWithImage:(id)a3 tintColor:(id)a4 title:(id)a5 numberOfLines:(int64_t)a6 withTrigger:(id)a7
{
  v27 = a7;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [(WFTriggerConfigurationHeaderCell *)self triggerTitleLabel];
  [v15 setText:v12];

  v16 = [(WFTriggerConfigurationHeaderCell *)self triggerIconView];
  [v16 setImage:v14];

  v17 = [(WFTriggerConfigurationHeaderCell *)self triggerIconView];
  [v17 setTintColor:v13];

  [v27 displayGlyphCornerRadius];
  v19 = v18;
  v20 = [(WFTriggerConfigurationHeaderCell *)self triggerIconView];
  v21 = v20;
  if (v19 <= 0.0)
  {
    [v20 setClipsToBounds:0];

    v23 = 0.0;
  }

  else
  {
    [v20 setClipsToBounds:1];

    [v27 displayGlyphCornerRadius];
    v23 = v22;
  }

  v24 = [(WFTriggerConfigurationHeaderCell *)self triggerIconView];
  v25 = [v24 layer];
  [v25 setCornerRadius:v23];

  v26 = [(WFTriggerConfigurationHeaderCell *)self triggerTitleLabel];
  [v26 setNumberOfLines:a6];

  [(WFTriggerConfigurationHeaderCell *)self setNeedsLayout];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = WFTriggerConfigurationHeaderCell;
  [(WFTriggerConfigurationHeaderCell *)&v3 prepareForReuse];
  [(WFTriggerConfigurationHeaderCell *)self setTriggerTypeClass:0];
  [(WFTriggerConfigurationHeaderCell *)self setTrigger:0];
}

- (WFTriggerConfigurationHeaderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v43[6] = *MEMORY[0x277D85DE8];
  v42.receiver = self;
  v42.super_class = WFTriggerConfigurationHeaderCell;
  v4 = [(WFTriggerConfigurationHeaderCell *)&v42 initWithStyle:0 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D755E8]);
    triggerIconView = v4->_triggerIconView;
    v4->_triggerIconView = v5;

    [(UIImageView *)v4->_triggerIconView setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [(WFTriggerConfigurationHeaderCell *)v4 contentView];
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
    v12 = [(WFTriggerConfigurationHeaderCell *)v4 contentView];
    [v12 addSubview:v4->_triggerTitleLabel];

    v31 = MEMORY[0x277CCAAD0];
    v40 = [(UIImageView *)v4->_triggerIconView centerYAnchor];
    v41 = [(WFTriggerConfigurationHeaderCell *)v4 contentView];
    v39 = [v41 centerYAnchor];
    v38 = [v40 constraintEqualToAnchor:v39];
    v43[0] = v38;
    v36 = [(UIImageView *)v4->_triggerIconView centerXAnchor];
    v37 = [(WFTriggerConfigurationHeaderCell *)v4 contentView];
    v35 = [v37 leadingAnchor];
    v34 = [v36 constraintEqualToAnchor:v35 constant:26.0];
    v43[1] = v34;
    v32 = [(UILabel *)v4->_triggerTitleLabel leadingAnchor];
    v33 = [(WFTriggerConfigurationHeaderCell *)v4 contentView];
    v30 = [v33 leadingAnchor];
    v29 = [v32 constraintEqualToAnchor:v30 constant:52.0];
    v43[2] = v29;
    v27 = [(UILabel *)v4->_triggerTitleLabel trailingAnchor];
    v28 = [(WFTriggerConfigurationHeaderCell *)v4 contentView];
    v26 = [v28 trailingAnchor];
    v25 = [v27 constraintEqualToAnchor:v26 constant:-8.0];
    v43[3] = v25;
    v13 = [(UILabel *)v4->_triggerTitleLabel topAnchor];
    v14 = [(WFTriggerConfigurationHeaderCell *)v4 contentView];
    v15 = [v14 topAnchor];
    v16 = [v13 constraintEqualToAnchor:v15 constant:14.0];
    v43[4] = v16;
    v17 = [(UILabel *)v4->_triggerTitleLabel bottomAnchor];
    v18 = [(WFTriggerConfigurationHeaderCell *)v4 contentView];
    v19 = [v18 bottomAnchor];
    v20 = [v17 constraintEqualToAnchor:v19 constant:-14.0];
    v43[5] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:6];
    [v31 activateConstraints:v21];

    LODWORD(v22) = 1144766464;
    [(UIImageView *)v4->_triggerIconView setContentCompressionResistancePriority:0 forAxis:v22];
    [(WFTriggerConfigurationHeaderCell *)v4 setAccessoryType:1];
    [(WFTriggerConfigurationHeaderCell *)v4 setSeparatorInset:0.0, 52.0, 0.0, 0.0];
    v23 = v4;
  }

  return v4;
}

@end