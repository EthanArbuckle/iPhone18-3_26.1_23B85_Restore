@interface WFTriggerTypeCell
- (WFTriggerTypeCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)prepareForReuse;
- (void)setTrigger:(id)trigger;
- (void)setTriggerTypeClass:(Class)class;
- (void)updateUI;
@end

@implementation WFTriggerTypeCell

- (void)updateUI
{
  trigger = [(WFTriggerTypeCell *)self trigger];

  if (trigger)
  {
    trigger2 = [(WFTriggerTypeCell *)self trigger];
    localizedDisplayName = [trigger2 localizedDisplayName];
    triggerTitleLabel = [(WFTriggerTypeCell *)self triggerTitleLabel];
    [triggerTitleLabel setText:localizedDisplayName];

    trigger3 = [(WFTriggerTypeCell *)self trigger];
    localizedDisplayExplanation = [trigger3 localizedDisplayExplanation];
    triggerDescriptionLabel = [(WFTriggerTypeCell *)self triggerDescriptionLabel];
    [triggerDescriptionLabel setText:localizedDisplayExplanation];

    trigger4 = [(WFTriggerTypeCell *)self trigger];
    displayGlyph = [trigger4 displayGlyph];
    platformImage = [displayGlyph platformImage];
    triggerIconView = [(WFTriggerTypeCell *)self triggerIconView];
    [triggerIconView setImage:platformImage];

    trigger5 = [(WFTriggerTypeCell *)self trigger];
    [trigger5 displayGlyphCornerRadius];
    v16 = v15;

    triggerIconView2 = [(WFTriggerTypeCell *)self triggerIconView];
    trigger6 = triggerIconView2;
    if (v16 <= 0.0)
    {
      [triggerIconView2 setClipsToBounds:0];
    }

    else
    {
      [triggerIconView2 setClipsToBounds:1];

      trigger6 = [(WFTriggerTypeCell *)self trigger];
      [trigger6 displayGlyphCornerRadius];
      v20 = v19;
      triggerIconView3 = [(WFTriggerTypeCell *)self triggerIconView];
      layer = [triggerIconView3 layer];
      [layer setCornerRadius:v20];
    }

    trigger7 = [(WFTriggerTypeCell *)self trigger];
    displayGlyphTintColor = [trigger7 displayGlyphTintColor];
    uIColor = [displayGlyphTintColor UIColor];
    triggerIconView4 = [(WFTriggerTypeCell *)self triggerIconView];
    [triggerIconView4 setTintColor:uIColor];
  }

  else
  {
    triggerTitleLabel2 = [(WFTriggerTypeCell *)self triggerTitleLabel];
    [triggerTitleLabel2 setText:0];

    triggerDescriptionLabel2 = [(WFTriggerTypeCell *)self triggerDescriptionLabel];
    [triggerDescriptionLabel2 setText:0];

    trigger7 = [(WFTriggerTypeCell *)self triggerIconView];
    [trigger7 setImage:0];
  }
}

- (void)setTrigger:(id)trigger
{
  objc_storeStrong(&self->_trigger, trigger);

  [(WFTriggerTypeCell *)self updateUI];
}

- (void)setTriggerTypeClass:(Class)class
{
  objc_storeStrong(&self->_triggerTypeClass, class);
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

- (WFTriggerTypeCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v56[9] = *MEMORY[0x277D85DE8];
  v55.receiver = self;
  v55.super_class = WFTriggerTypeCell;
  v4 = [(WFTriggerTypeCell *)&v55 initWithStyle:0 reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D755E8]);
    triggerIconView = v4->_triggerIconView;
    v4->_triggerIconView = v5;

    [(UIImageView *)v4->_triggerIconView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(WFTriggerTypeCell *)v4 contentView];
    [contentView addSubview:v4->_triggerIconView];

    v8 = objc_alloc_init(MEMORY[0x277D756B8]);
    triggerTitleLabel = v4->_triggerTitleLabel;
    v4->_triggerTitleLabel = v8;

    [(UILabel *)v4->_triggerTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v4->_triggerTitleLabel setFont:v10];

    labelColor = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v4->_triggerTitleLabel setTextColor:labelColor];

    [(UILabel *)v4->_triggerTitleLabel setNumberOfLines:1];
    contentView2 = [(WFTriggerTypeCell *)v4 contentView];
    [contentView2 addSubview:v4->_triggerTitleLabel];

    v13 = objc_alloc_init(MEMORY[0x277D756B8]);
    triggerDescriptionLabel = v4->_triggerDescriptionLabel;
    v4->_triggerDescriptionLabel = v13;

    [(UILabel *)v4->_triggerDescriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
    [(UILabel *)v4->_triggerDescriptionLabel setFont:v15];

    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v4->_triggerDescriptionLabel setTextColor:secondaryLabelColor];

    [(UILabel *)v4->_triggerDescriptionLabel setLineBreakMode:0];
    [(UILabel *)v4->_triggerDescriptionLabel setNumberOfLines:3];
    contentView3 = [(WFTriggerTypeCell *)v4 contentView];
    [contentView3 addSubview:v4->_triggerDescriptionLabel];

    v42 = MEMORY[0x277CCAAD0];
    centerYAnchor = [(UIImageView *)v4->_triggerIconView centerYAnchor];
    contentView4 = [(WFTriggerTypeCell *)v4 contentView];
    centerYAnchor2 = [contentView4 centerYAnchor];
    v51 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v56[0] = v51;
    centerXAnchor = [(UIImageView *)v4->_triggerIconView centerXAnchor];
    contentView5 = [(WFTriggerTypeCell *)v4 contentView];
    leadingAnchor = [contentView5 leadingAnchor];
    v47 = [centerXAnchor constraintEqualToAnchor:leadingAnchor constant:28.0];
    v56[1] = v47;
    leadingAnchor2 = [(UILabel *)v4->_triggerTitleLabel leadingAnchor];
    contentView6 = [(WFTriggerTypeCell *)v4 contentView];
    leadingAnchor3 = [contentView6 leadingAnchor];
    v43 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3 constant:57.0];
    v56[2] = v43;
    trailingAnchor = [(UILabel *)v4->_triggerTitleLabel trailingAnchor];
    contentView7 = [(WFTriggerTypeCell *)v4 contentView];
    trailingAnchor2 = [contentView7 trailingAnchor];
    v38 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-8.0];
    v56[3] = v38;
    leadingAnchor4 = [(UILabel *)v4->_triggerDescriptionLabel leadingAnchor];
    leadingAnchor5 = [(UILabel *)v4->_triggerTitleLabel leadingAnchor];
    v35 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
    v56[4] = v35;
    trailingAnchor3 = [(UILabel *)v4->_triggerDescriptionLabel trailingAnchor];
    trailingAnchor4 = [(UILabel *)v4->_triggerTitleLabel trailingAnchor];
    v32 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v56[5] = v32;
    topAnchor = [(UILabel *)v4->_triggerTitleLabel topAnchor];
    contentView8 = [(WFTriggerTypeCell *)v4 contentView];
    topAnchor2 = [contentView8 topAnchor];
    v18 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
    v56[6] = v18;
    topAnchor3 = [(UILabel *)v4->_triggerDescriptionLabel topAnchor];
    bottomAnchor = [(UILabel *)v4->_triggerTitleLabel bottomAnchor];
    v21 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:4.0];
    v56[7] = v21;
    bottomAnchor2 = [(UILabel *)v4->_triggerDescriptionLabel bottomAnchor];
    contentView9 = [(WFTriggerTypeCell *)v4 contentView];
    bottomAnchor3 = [contentView9 bottomAnchor];
    v25 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-12.0];
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