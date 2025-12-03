@interface STUnlockForContentView
- (STUnlockForContentView)initWithCoder:(id)coder;
- (STUnlockForContentView)initWithFrame:(CGRect)frame;
- (void)_stUnlockForContentViewCommonInit;
@end

@implementation STUnlockForContentView

- (STUnlockForContentView)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = STUnlockForContentView;
  v3 = [(STUnlockForContentView *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(STUnlockForContentView *)v3 _stUnlockForContentViewCommonInit];
  return v3;
}

- (STUnlockForContentView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = STUnlockForContentView;
  v3 = [(STUnlockForContentView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(STUnlockForContentView *)v3 _stUnlockForContentViewCommonInit];
  }

  return v4;
}

- (void)_stUnlockForContentViewCommonInit
{
  v36[7] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  unlockToViewContentLabel = self->_unlockToViewContentLabel;
  self->_unlockToViewContentLabel = v3;

  [(UILabel *)self->_unlockToViewContentLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  [(UILabel *)self->_unlockToViewContentLabel setFont:v5];

  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  [(UILabel *)self->_unlockToViewContentLabel setTextColor:systemGrayColor];

  [(UILabel *)self->_unlockToViewContentLabel setLineBreakMode:0];
  [(UILabel *)self->_unlockToViewContentLabel setTextAlignment:1];
  [(UILabel *)self->_unlockToViewContentLabel setNumberOfLines:0];
  v7 = self->_unlockToViewContentLabel;
  v8 = +[STScreenTimeSettingsUIBundle bundle];
  v9 = [v8 localizedStringForKey:@"WidgetUnlockToView" value:&stru_28766E5A8 table:0];
  [(UILabel *)v7 setText:v9];

  v35 = [MEMORY[0x277D75D00] widgetEffectForVibrancyStyle:102];
  v10 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v35];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(STUnlockForContentView *)self addSubview:v10];
  contentView = [v10 contentView];
  [contentView addSubview:self->_unlockToViewContentLabel];
  v24 = MEMORY[0x277CCAAD0];
  topAnchor = [(UILabel *)self->_unlockToViewContentLabel topAnchor];
  topAnchor2 = [v10 topAnchor];
  v31 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v36[0] = v31;
  leadingAnchor = [(UILabel *)self->_unlockToViewContentLabel leadingAnchor];
  leadingAnchor2 = [v10 leadingAnchor];
  v28 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v36[1] = v28;
  bottomAnchor = [(UILabel *)self->_unlockToViewContentLabel bottomAnchor];
  bottomAnchor2 = [v10 bottomAnchor];
  v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v36[2] = v25;
  trailingAnchor = [(UILabel *)self->_unlockToViewContentLabel trailingAnchor];
  trailingAnchor2 = [v10 trailingAnchor];
  v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v36[3] = v21;
  leadingAnchor3 = [v10 leadingAnchor];
  leadingAnchor4 = [(STUnlockForContentView *)self leadingAnchor];
  v12 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v36[4] = v12;
  trailingAnchor3 = [v10 trailingAnchor];
  trailingAnchor4 = [(STUnlockForContentView *)self trailingAnchor];
  v15 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v36[5] = v15;
  centerYAnchor = [v10 centerYAnchor];
  centerYAnchor2 = [(STUnlockForContentView *)self centerYAnchor];
  v18 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v36[6] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:7];
  [v24 activateConstraints:v19];
}

@end