@interface PNPAirplaneModeView
- (CGSize)intrinsicContentSize;
- (PNPAirplaneModeBluetoothViewDelegate)bluetoothDelegate;
- (PNPAirplaneModeView)initWithFrame:(CGRect)frame;
- (id)_applePencilOff;
- (id)_applePencilOn;
- (id)_bluetoothOnString;
- (id)_turnOnString;
- (void)_configureConstraints;
- (void)layoutSubviews;
- (void)setDeviceState:(id)state;
- (void)turnOnBluetooth:(id)bluetooth;
@end

@implementation PNPAirplaneModeView

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = PNPAirplaneModeView;
  [(PNPAirplaneModeView *)&v5 layoutSubviews];
  [(UILabel *)self->_deviceNameLabel setText:self->_pencilStatusString];
  [(UILabel *)self->_deviceNameLabel setTextAlignment:1];
  [(UIButton *)self->_turnOnBluetoothButton setTitle:self->_currentString forState:0];
  turnOnBluetoothButton = self->_turnOnBluetoothButton;
  defaultButtonColor = [MEMORY[0x277D75348] defaultButtonColor];
  [(UIButton *)turnOnBluetoothButton setTitleColor:defaultButtonColor forState:0];
}

- (CGSize)intrinsicContentSize
{
  deviceNameLabel = self->_deviceNameLabel;
  [(UILabel *)deviceNameLabel frame];
  [(UILabel *)deviceNameLabel sizeThatFits:v4, 1.79769313e308];
  v6 = v5;
  turnOnBluetoothButton = self->_turnOnBluetoothButton;
  [(UIButton *)turnOnBluetoothButton frame];
  [(UIButton *)turnOnBluetoothButton sizeThatFits:v8, 1.79769313e308];
  v10 = fmax(fmax(v6, v9) + 60.0, 188.0);
  v11 = 56.0;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)setDeviceState:(id)state
{
  objc_storeStrong(&self->_deviceState, state);

  [(PNPAirplaneModeView *)self setNeedsLayout];
}

- (PNPAirplaneModeView)initWithFrame:(CGRect)frame
{
  v19.receiver = self;
  v19.super_class = PNPAirplaneModeView;
  v3 = [(PNPAirplaneModeView *)&v19 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = objc_alloc_init(MEMORY[0x277D756B8]);
  deviceNameLabel = v3->_deviceNameLabel;
  v3->_deviceNameLabel = v4;

  v6 = [MEMORY[0x277D75220] buttonWithType:1];
  turnOnBluetoothButton = v3->_turnOnBluetoothButton;
  v3->_turnOnBluetoothButton = v6;

  [(UIButton *)v3->_turnOnBluetoothButton addTarget:v3 action:sel_turnOnBluetooth_ forControlEvents:64];
  v8 = *MEMORY[0x277D743F8];
  v9 = [MEMORY[0x277D74300] systemFontOfSize:12.0 weight:*MEMORY[0x277D743F8]];
  titleLabel = [(UIButton *)v3->_turnOnBluetoothButton titleLabel];
  [titleLabel setFont:v9];

  _turnOnString = [(PNPAirplaneModeView *)v3 _turnOnString];
  currentString = v3->_currentString;
  v3->_currentString = _turnOnString;

  v13 = objc_alloc_init(MEMORY[0x277D75D18]);
  contentAreaView = v3->_contentAreaView;
  v3->_contentAreaView = v13;

  v15 = [MEMORY[0x277D74300] systemFontOfSize:13.0 weight:v8];
  [(UILabel *)v3->_deviceNameLabel setFont:v15];
  [(UILabel *)v3->_deviceNameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)v3->_contentAreaView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)v3->_turnOnBluetoothButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PNPAirplaneModeView *)v3 addSubview:v3->_contentAreaView];
  [(PNPAirplaneModeView *)v3 addSubview:v3->_deviceNameLabel];
  [(PNPAirplaneModeView *)v3 addSubview:v3->_turnOnBluetoothButton];
  _applePencilOff = [(PNPAirplaneModeView *)v3 _applePencilOff];
  pencilStatusString = v3->_pencilStatusString;
  v3->_pencilStatusString = _applePencilOff;

  [(PNPAirplaneModeView *)v3 _configureConstraints];
  if (_UISolariumEnabled())
  {
    [(UIView *)v3 ppuiSetGlassBackground];
    [(UIView *)v3 ppuiSetCapsuleCornerMaskingConfiguration];
  }

  return v3;
}

- (void)_configureConstraints
{
  array = [MEMORY[0x277CBEB18] array];
  leadingAnchor = [(UIView *)self->_contentAreaView leadingAnchor];
  leadingAnchor2 = [(PNPAirplaneModeView *)self leadingAnchor];
  v5 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:30.0];
  [array addObject:v5];

  trailingAnchor = [(UIView *)self->_contentAreaView trailingAnchor];
  trailingAnchor2 = [(PNPAirplaneModeView *)self trailingAnchor];
  v8 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-30.0];
  [array addObject:v8];

  centerYAnchor = [(UIView *)self->_contentAreaView centerYAnchor];
  centerYAnchor2 = [(PNPAirplaneModeView *)self centerYAnchor];
  v11 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [array addObject:v11];

  leadingAnchor3 = [(UILabel *)self->_deviceNameLabel leadingAnchor];
  leadingAnchor4 = [(UIView *)self->_contentAreaView leadingAnchor];
  v14 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [array addObject:v14];

  trailingAnchor3 = [(UILabel *)self->_deviceNameLabel trailingAnchor];
  trailingAnchor4 = [(UIView *)self->_contentAreaView trailingAnchor];
  v17 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [array addObject:v17];

  topAnchor = [(UILabel *)self->_deviceNameLabel topAnchor];
  topAnchor2 = [(UIView *)self->_contentAreaView topAnchor];
  v20 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
  [array addObject:v20];

  lastBaselineAnchor = [(UIButton *)self->_turnOnBluetoothButton lastBaselineAnchor];
  lastBaselineAnchor2 = [(UILabel *)self->_deviceNameLabel lastBaselineAnchor];
  v23 = [lastBaselineAnchor constraintEqualToAnchor:lastBaselineAnchor2 constant:16.0];
  [array addObject:v23];

  bottomAnchor = [(UIButton *)self->_turnOnBluetoothButton bottomAnchor];
  bottomAnchor2 = [(UIView *)self->_contentAreaView bottomAnchor];
  v26 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [array addObject:v26];

  centerXAnchor = [(UIButton *)self->_turnOnBluetoothButton centerXAnchor];
  centerXAnchor2 = [(UILabel *)self->_deviceNameLabel centerXAnchor];
  v29 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [array addObject:v29];

  [MEMORY[0x277CCAAD0] activateConstraints:array];
}

- (void)turnOnBluetooth:(id)bluetooth
{
  _bluetoothOnString = [(PNPAirplaneModeView *)self _bluetoothOnString];
  currentString = self->_currentString;
  self->_currentString = _bluetoothOnString;

  _applePencilOn = [(PNPAirplaneModeView *)self _applePencilOn];
  pencilStatusString = self->_pencilStatusString;
  self->_pencilStatusString = _applePencilOn;

  turnOnBluetoothButton = self->_turnOnBluetoothButton;
  defaultButtonPressedColor = [MEMORY[0x277D75348] defaultButtonPressedColor];
  [(UIButton *)turnOnBluetoothButton setTitleColor:defaultButtonPressedColor forState:0];

  [(UIButton *)self->_turnOnBluetoothButton setUserInteractionEnabled:0];
  WeakRetained = objc_loadWeakRetained(&self->_bluetoothDelegate);

  if (WeakRetained)
  {
    v11 = objc_loadWeakRetained(&self->_bluetoothDelegate);
    [v11 didTapOnBluetoothButton];
  }

  [(PNPAirplaneModeView *)self setNeedsLayout];
}

- (id)_applePencilOff
{
  v2 = PencilPairingUIBundle();
  v3 = [v2 localizedStringForKey:@"APPLE_PENCIL_OFF" value:&stru_286FDFDB8 table:0];

  return v3;
}

- (id)_applePencilOn
{
  v2 = PencilPairingUIBundle();
  v3 = [v2 localizedStringForKey:@"APPLE_PENCIL_ON" value:&stru_286FDFDB8 table:0];

  return v3;
}

- (id)_turnOnString
{
  v2 = PencilPairingUIBundle();
  v3 = [v2 localizedStringForKey:@"TURN_ON_BLUETOOTH" value:&stru_286FDFDB8 table:0];

  return v3;
}

- (id)_bluetoothOnString
{
  v2 = PencilPairingUIBundle();
  v3 = [v2 localizedStringForKey:@"BLUETOOTH_TURNED_ON" value:&stru_286FDFDB8 table:0];

  return v3;
}

- (PNPAirplaneModeBluetoothViewDelegate)bluetoothDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_bluetoothDelegate);

  return WeakRetained;
}

@end