@interface DBSDeviceAppearanceTableViewCell
- (DBSDeviceAppearanceTableViewCell)init;
- (DBSDeviceAppearanceTableViewCell)initWithCoder:(id)coder;
- (DBSDeviceAppearanceTableViewCell)initWithFrame:(CGRect)frame;
- (DBSDeviceAppearanceTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (DBSDeviceAppearanceTableViewCellDelegate)delegate;
- (void)_configureView;
- (void)userDidTapOnAppearanceOptionView:(id)view;
@end

@implementation DBSDeviceAppearanceTableViewCell

- (DBSDeviceAppearanceTableViewCell)init
{
  v5.receiver = self;
  v5.super_class = DBSDeviceAppearanceTableViewCell;
  v2 = [(DBSDeviceAppearanceTableViewCell *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(DBSDeviceAppearanceTableViewCell *)v2 _configureView];
  }

  return v3;
}

- (DBSDeviceAppearanceTableViewCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = DBSDeviceAppearanceTableViewCell;
  v3 = [(DBSDeviceAppearanceTableViewCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(DBSDeviceAppearanceTableViewCell *)v3 _configureView];
  }

  return v4;
}

- (DBSDeviceAppearanceTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = DBSDeviceAppearanceTableViewCell;
  v4 = [(PSTableCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(DBSDeviceAppearanceTableViewCell *)v4 _configureView];
  }

  return v5;
}

- (DBSDeviceAppearanceTableViewCell)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = DBSDeviceAppearanceTableViewCell;
  v3 = [(DBSDeviceAppearanceTableViewCell *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(DBSDeviceAppearanceTableViewCell *)v3 _configureView];
  }

  return v4;
}

- (void)_configureView
{
  v3 = [DBSDeviceAppearanceOptionView alloc];
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v8 = [(DBSDeviceAppearanceOptionView *)v3 initWithFrame:0 appearanceOption:*MEMORY[0x277CBF3A0], v5, v6, v7];
  [(DBSDeviceAppearanceTableViewCell *)self set_lightOptionView:v8];

  _lightOptionView = [(DBSDeviceAppearanceTableViewCell *)self _lightOptionView];
  [_lightOptionView setTranslatesAutoresizingMaskIntoConstraints:0];

  _lightOptionView2 = [(DBSDeviceAppearanceTableViewCell *)self _lightOptionView];
  [_lightOptionView2 setDelegate:self];

  _lightOptionView3 = [(DBSDeviceAppearanceTableViewCell *)self _lightOptionView];
  [_lightOptionView3 setAccessibilityIdentifier:@"DBSDeviceAppearanceOptionLight"];

  contentView = [(DBSDeviceAppearanceTableViewCell *)self contentView];
  _lightOptionView4 = [(DBSDeviceAppearanceTableViewCell *)self _lightOptionView];
  [contentView addSubview:_lightOptionView4];

  v14 = [[DBSDeviceAppearanceOptionView alloc] initWithFrame:1 appearanceOption:v4, v5, v6, v7];
  [(DBSDeviceAppearanceTableViewCell *)self set_darkOptionView:v14];

  _darkOptionView = [(DBSDeviceAppearanceTableViewCell *)self _darkOptionView];
  [_darkOptionView setTranslatesAutoresizingMaskIntoConstraints:0];

  _darkOptionView2 = [(DBSDeviceAppearanceTableViewCell *)self _darkOptionView];
  [_darkOptionView2 setDelegate:self];

  _darkOptionView3 = [(DBSDeviceAppearanceTableViewCell *)self _darkOptionView];
  [_darkOptionView3 setAccessibilityIdentifier:@"DBSDeviceAppearanceOptionDark"];

  contentView2 = [(DBSDeviceAppearanceTableViewCell *)self contentView];
  _darkOptionView4 = [(DBSDeviceAppearanceTableViewCell *)self _darkOptionView];
  [contentView2 addSubview:_darkOptionView4];

  v20 = objc_alloc_init(MEMORY[0x277D756D0]);
  [(DBSDeviceAppearanceTableViewCell *)self set_leadingGuide:v20];

  v21 = objc_alloc_init(MEMORY[0x277D756D0]);
  [(DBSDeviceAppearanceTableViewCell *)self set_middleGuide:v21];

  v22 = objc_alloc_init(MEMORY[0x277D756D0]);
  [(DBSDeviceAppearanceTableViewCell *)self set_trailingGuide:v22];

  contentView3 = [(DBSDeviceAppearanceTableViewCell *)self contentView];
  _leadingGuide = [(DBSDeviceAppearanceTableViewCell *)self _leadingGuide];
  [contentView3 addLayoutGuide:_leadingGuide];

  contentView4 = [(DBSDeviceAppearanceTableViewCell *)self contentView];
  _middleGuide = [(DBSDeviceAppearanceTableViewCell *)self _middleGuide];
  [contentView4 addLayoutGuide:_middleGuide];

  contentView5 = [(DBSDeviceAppearanceTableViewCell *)self contentView];
  _trailingGuide = [(DBSDeviceAppearanceTableViewCell *)self _trailingGuide];
  [contentView5 addLayoutGuide:_trailingGuide];

  array = [MEMORY[0x277CBEB18] array];
  _leadingGuide2 = [(DBSDeviceAppearanceTableViewCell *)self _leadingGuide];
  leadingAnchor = [_leadingGuide2 leadingAnchor];
  contentView6 = [(DBSDeviceAppearanceTableViewCell *)self contentView];
  leadingAnchor2 = [contentView6 leadingAnchor];
  v33 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [array addObject:v33];

  _leadingGuide3 = [(DBSDeviceAppearanceTableViewCell *)self _leadingGuide];
  trailingAnchor = [_leadingGuide3 trailingAnchor];
  _lightOptionView5 = [(DBSDeviceAppearanceTableViewCell *)self _lightOptionView];
  leadingAnchor3 = [_lightOptionView5 leadingAnchor];
  v38 = [trailingAnchor constraintEqualToAnchor:leadingAnchor3];
  [array addObject:v38];

  _lightOptionView6 = [(DBSDeviceAppearanceTableViewCell *)self _lightOptionView];
  trailingAnchor2 = [_lightOptionView6 trailingAnchor];
  _middleGuide2 = [(DBSDeviceAppearanceTableViewCell *)self _middleGuide];
  leadingAnchor4 = [_middleGuide2 leadingAnchor];
  v43 = [trailingAnchor2 constraintEqualToAnchor:leadingAnchor4];
  [array addObject:v43];

  _middleGuide3 = [(DBSDeviceAppearanceTableViewCell *)self _middleGuide];
  trailingAnchor3 = [_middleGuide3 trailingAnchor];
  _darkOptionView5 = [(DBSDeviceAppearanceTableViewCell *)self _darkOptionView];
  leadingAnchor5 = [_darkOptionView5 leadingAnchor];
  v48 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor5];
  [array addObject:v48];

  _darkOptionView6 = [(DBSDeviceAppearanceTableViewCell *)self _darkOptionView];
  trailingAnchor4 = [_darkOptionView6 trailingAnchor];
  _trailingGuide2 = [(DBSDeviceAppearanceTableViewCell *)self _trailingGuide];
  leadingAnchor6 = [_trailingGuide2 leadingAnchor];
  v53 = [trailingAnchor4 constraintEqualToAnchor:leadingAnchor6];
  [array addObject:v53];

  _trailingGuide3 = [(DBSDeviceAppearanceTableViewCell *)self _trailingGuide];
  trailingAnchor5 = [_trailingGuide3 trailingAnchor];
  contentView7 = [(DBSDeviceAppearanceTableViewCell *)self contentView];
  trailingAnchor6 = [contentView7 trailingAnchor];
  v58 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  [array addObject:v58];

  _leadingGuide4 = [(DBSDeviceAppearanceTableViewCell *)self _leadingGuide];
  widthAnchor = [_leadingGuide4 widthAnchor];
  _middleGuide4 = [(DBSDeviceAppearanceTableViewCell *)self _middleGuide];
  widthAnchor2 = [_middleGuide4 widthAnchor];
  v63 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:1.0];
  [array addObject:v63];

  _middleGuide5 = [(DBSDeviceAppearanceTableViewCell *)self _middleGuide];
  widthAnchor3 = [_middleGuide5 widthAnchor];
  _trailingGuide4 = [(DBSDeviceAppearanceTableViewCell *)self _trailingGuide];
  widthAnchor4 = [_trailingGuide4 widthAnchor];
  v68 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4 multiplier:1.0];
  [array addObject:v68];

  _lightOptionView7 = [(DBSDeviceAppearanceTableViewCell *)self _lightOptionView];
  topAnchor = [_lightOptionView7 topAnchor];
  contentView8 = [(DBSDeviceAppearanceTableViewCell *)self contentView];
  topAnchor2 = [contentView8 topAnchor];
  v73 = [topAnchor constraintEqualToSystemSpacingBelowAnchor:topAnchor2 multiplier:2.0];
  [array addObject:v73];

  contentView9 = [(DBSDeviceAppearanceTableViewCell *)self contentView];
  bottomAnchor = [contentView9 bottomAnchor];
  _lightOptionView8 = [(DBSDeviceAppearanceTableViewCell *)self _lightOptionView];
  bottomAnchor2 = [_lightOptionView8 bottomAnchor];
  v78 = [bottomAnchor constraintEqualToSystemSpacingBelowAnchor:bottomAnchor2 multiplier:2.0];
  [array addObject:v78];

  _darkOptionView7 = [(DBSDeviceAppearanceTableViewCell *)self _darkOptionView];
  topAnchor3 = [_darkOptionView7 topAnchor];
  contentView10 = [(DBSDeviceAppearanceTableViewCell *)self contentView];
  topAnchor4 = [contentView10 topAnchor];
  v83 = [topAnchor3 constraintEqualToSystemSpacingBelowAnchor:topAnchor4 multiplier:2.0];
  [array addObject:v83];

  contentView11 = [(DBSDeviceAppearanceTableViewCell *)self contentView];
  bottomAnchor3 = [contentView11 bottomAnchor];
  _darkOptionView8 = [(DBSDeviceAppearanceTableViewCell *)self _darkOptionView];
  bottomAnchor4 = [_darkOptionView8 bottomAnchor];
  v88 = [bottomAnchor3 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor4 multiplier:2.0];
  [array addObject:v88];

  [MEMORY[0x277CCAAD0] activateConstraints:array];
}

- (void)userDidTapOnAppearanceOptionView:(id)view
{
  appearanceOption = [view appearanceOption];
  delegate = [(DBSDeviceAppearanceTableViewCell *)self delegate];
  if (appearanceOption)
  {
    v6 = objc_opt_respondsToSelector();

    if ((v6 & 1) == 0)
    {
      return;
    }

    delegate2 = [(DBSDeviceAppearanceTableViewCell *)self delegate];
    [delegate2 deviceAppearanceTableViewCellUserDidTapOnDarkAppearance:self];
  }

  else
  {
    v7 = objc_opt_respondsToSelector();

    if ((v7 & 1) == 0)
    {
      return;
    }

    delegate2 = [(DBSDeviceAppearanceTableViewCell *)self delegate];
    [delegate2 deviceAppearanceTableViewCellUserDidTapOnLightAppearance:self];
  }
}

- (DBSDeviceAppearanceTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end