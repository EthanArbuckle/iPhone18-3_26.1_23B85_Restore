@interface WFTriggerConfigurationHeaderCell
- (WFTriggerConfigurationHeaderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)configureWithImage:(id)image tintColor:(id)color title:(id)title numberOfLines:(int64_t)lines withTrigger:(id)trigger;
- (void)prepareForReuse;
- (void)setTrigger:(id)trigger;
- (void)setTriggerTypeClass:(Class)class;
- (void)updateUI;
@end

@implementation WFTriggerConfigurationHeaderCell

- (void)updateUI
{
  trigger = [(WFTriggerConfigurationHeaderCell *)self trigger];

  if (trigger)
  {
    trigger2 = [(WFTriggerConfigurationHeaderCell *)self trigger];
    localizedDisplayName = [trigger2 localizedDisplayName];
    triggerTitleLabel = [(WFTriggerConfigurationHeaderCell *)self triggerTitleLabel];
    [triggerTitleLabel setText:localizedDisplayName];

    trigger3 = [(WFTriggerConfigurationHeaderCell *)self trigger];
    displayGlyph = [trigger3 displayGlyph];
    platformImage = [displayGlyph platformImage];
    triggerIconView = [(WFTriggerConfigurationHeaderCell *)self triggerIconView];
    [triggerIconView setImage:platformImage];

    trigger4 = [(WFTriggerConfigurationHeaderCell *)self trigger];
    [trigger4 displayGlyphCornerRadius];
    v13 = v12;

    triggerIconView2 = [(WFTriggerConfigurationHeaderCell *)self triggerIconView];
    v15 = triggerIconView2;
    if (v13 <= 0.0)
    {
      [triggerIconView2 setClipsToBounds:0];

      triggerIconView3 = [(WFTriggerConfigurationHeaderCell *)self triggerIconView];
      layer = [triggerIconView3 layer];
      [layer setCornerRadius:0.0];
    }

    else
    {
      [triggerIconView2 setClipsToBounds:1];

      triggerIconView3 = [(WFTriggerConfigurationHeaderCell *)self trigger];
      [triggerIconView3 displayGlyphCornerRadius];
      v18 = v17;
      layer = [(WFTriggerConfigurationHeaderCell *)self triggerIconView];
      v19Layer = [layer layer];
      [v19Layer setCornerRadius:v18];
    }

    trigger5 = [(WFTriggerConfigurationHeaderCell *)self trigger];
    displayGlyphTintColor = [trigger5 displayGlyphTintColor];
    uIColor = [displayGlyphTintColor UIColor];
    triggerIconView4 = [(WFTriggerConfigurationHeaderCell *)self triggerIconView];
    [triggerIconView4 setTintColor:uIColor];
  }

  else
  {
    triggerTitleLabel2 = [(WFTriggerConfigurationHeaderCell *)self triggerTitleLabel];
    [triggerTitleLabel2 setText:0];

    triggerIconView5 = [(WFTriggerConfigurationHeaderCell *)self triggerIconView];
    [triggerIconView5 setImage:0];

    trigger5 = [(WFTriggerConfigurationHeaderCell *)self triggerIconView];
    [trigger5 setTintColor:0];
  }
}

- (void)setTrigger:(id)trigger
{
  objc_storeStrong(&self->_trigger, trigger);

  [(WFTriggerConfigurationHeaderCell *)self updateUI];
}

- (void)setTriggerTypeClass:(Class)class
{
  objc_storeStrong(&self->_triggerTypeClass, class);
  v4 = objc_opt_new();
  [(WFTriggerConfigurationHeaderCell *)self setTrigger:v4];
}

- (void)configureWithImage:(id)image tintColor:(id)color title:(id)title numberOfLines:(int64_t)lines withTrigger:(id)trigger
{
  triggerCopy = trigger;
  titleCopy = title;
  colorCopy = color;
  imageCopy = image;
  triggerTitleLabel = [(WFTriggerConfigurationHeaderCell *)self triggerTitleLabel];
  [triggerTitleLabel setText:titleCopy];

  triggerIconView = [(WFTriggerConfigurationHeaderCell *)self triggerIconView];
  [triggerIconView setImage:imageCopy];

  triggerIconView2 = [(WFTriggerConfigurationHeaderCell *)self triggerIconView];
  [triggerIconView2 setTintColor:colorCopy];

  [triggerCopy displayGlyphCornerRadius];
  v19 = v18;
  triggerIconView3 = [(WFTriggerConfigurationHeaderCell *)self triggerIconView];
  v21 = triggerIconView3;
  if (v19 <= 0.0)
  {
    [triggerIconView3 setClipsToBounds:0];

    v23 = 0.0;
  }

  else
  {
    [triggerIconView3 setClipsToBounds:1];

    [triggerCopy displayGlyphCornerRadius];
    v23 = v22;
  }

  triggerIconView4 = [(WFTriggerConfigurationHeaderCell *)self triggerIconView];
  layer = [triggerIconView4 layer];
  [layer setCornerRadius:v23];

  triggerTitleLabel2 = [(WFTriggerConfigurationHeaderCell *)self triggerTitleLabel];
  [triggerTitleLabel2 setNumberOfLines:lines];

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

- (WFTriggerConfigurationHeaderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v43[6] = *MEMORY[0x277D85DE8];
  v42.receiver = self;
  v42.super_class = WFTriggerConfigurationHeaderCell;
  v4 = [(WFTriggerConfigurationHeaderCell *)&v42 initWithStyle:0 reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D755E8]);
    triggerIconView = v4->_triggerIconView;
    v4->_triggerIconView = v5;

    [(UIImageView *)v4->_triggerIconView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(WFTriggerConfigurationHeaderCell *)v4 contentView];
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
    contentView2 = [(WFTriggerConfigurationHeaderCell *)v4 contentView];
    [contentView2 addSubview:v4->_triggerTitleLabel];

    v31 = MEMORY[0x277CCAAD0];
    centerYAnchor = [(UIImageView *)v4->_triggerIconView centerYAnchor];
    contentView3 = [(WFTriggerConfigurationHeaderCell *)v4 contentView];
    centerYAnchor2 = [contentView3 centerYAnchor];
    v38 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v43[0] = v38;
    centerXAnchor = [(UIImageView *)v4->_triggerIconView centerXAnchor];
    contentView4 = [(WFTriggerConfigurationHeaderCell *)v4 contentView];
    leadingAnchor = [contentView4 leadingAnchor];
    v34 = [centerXAnchor constraintEqualToAnchor:leadingAnchor constant:26.0];
    v43[1] = v34;
    leadingAnchor2 = [(UILabel *)v4->_triggerTitleLabel leadingAnchor];
    contentView5 = [(WFTriggerConfigurationHeaderCell *)v4 contentView];
    leadingAnchor3 = [contentView5 leadingAnchor];
    v29 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3 constant:52.0];
    v43[2] = v29;
    trailingAnchor = [(UILabel *)v4->_triggerTitleLabel trailingAnchor];
    contentView6 = [(WFTriggerConfigurationHeaderCell *)v4 contentView];
    trailingAnchor2 = [contentView6 trailingAnchor];
    v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-8.0];
    v43[3] = v25;
    topAnchor = [(UILabel *)v4->_triggerTitleLabel topAnchor];
    contentView7 = [(WFTriggerConfigurationHeaderCell *)v4 contentView];
    topAnchor2 = [contentView7 topAnchor];
    v16 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:14.0];
    v43[4] = v16;
    bottomAnchor = [(UILabel *)v4->_triggerTitleLabel bottomAnchor];
    contentView8 = [(WFTriggerConfigurationHeaderCell *)v4 contentView];
    bottomAnchor2 = [contentView8 bottomAnchor];
    v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-14.0];
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