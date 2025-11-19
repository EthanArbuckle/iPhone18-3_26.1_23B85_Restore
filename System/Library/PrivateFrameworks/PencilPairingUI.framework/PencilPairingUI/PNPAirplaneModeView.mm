@interface PNPAirplaneModeView
- (CGSize)intrinsicContentSize;
- (PNPAirplaneModeBluetoothViewDelegate)bluetoothDelegate;
- (PNPAirplaneModeView)initWithFrame:(CGRect)a3;
- (id)_applePencilOff;
- (id)_applePencilOn;
- (id)_bluetoothOnString;
- (id)_turnOnString;
- (void)_configureConstraints;
- (void)layoutSubviews;
- (void)setDeviceState:(id)a3;
- (void)turnOnBluetooth:(id)a3;
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
  v4 = [MEMORY[0x277D75348] defaultButtonColor];
  [(UIButton *)turnOnBluetoothButton setTitleColor:v4 forState:0];
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

- (void)setDeviceState:(id)a3
{
  objc_storeStrong(&self->_deviceState, a3);

  [(PNPAirplaneModeView *)self setNeedsLayout];
}

- (PNPAirplaneModeView)initWithFrame:(CGRect)a3
{
  v19.receiver = self;
  v19.super_class = PNPAirplaneModeView;
  v3 = [(PNPAirplaneModeView *)&v19 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = objc_alloc_init(MEMORY[0x277D756B8]);
  deviceNameLabel = v3->_deviceNameLabel;
  v3->_deviceNameLabel = v4;

  v6 = [MEMORY[0x277D75220] buttonWithType:1];
  turnOnBluetoothButton = v3->_turnOnBluetoothButton;
  v3->_turnOnBluetoothButton = v6;

  [(UIButton *)v3->_turnOnBluetoothButton addTarget:v3 action:sel_turnOnBluetooth_ forControlEvents:64];
  v8 = *MEMORY[0x277D743F8];
  v9 = [MEMORY[0x277D74300] systemFontOfSize:12.0 weight:*MEMORY[0x277D743F8]];
  v10 = [(UIButton *)v3->_turnOnBluetoothButton titleLabel];
  [v10 setFont:v9];

  v11 = [(PNPAirplaneModeView *)v3 _turnOnString];
  currentString = v3->_currentString;
  v3->_currentString = v11;

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
  v16 = [(PNPAirplaneModeView *)v3 _applePencilOff];
  pencilStatusString = v3->_pencilStatusString;
  v3->_pencilStatusString = v16;

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
  v30 = [MEMORY[0x277CBEB18] array];
  v3 = [(UIView *)self->_contentAreaView leadingAnchor];
  v4 = [(PNPAirplaneModeView *)self leadingAnchor];
  v5 = [v3 constraintEqualToAnchor:v4 constant:30.0];
  [v30 addObject:v5];

  v6 = [(UIView *)self->_contentAreaView trailingAnchor];
  v7 = [(PNPAirplaneModeView *)self trailingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7 constant:-30.0];
  [v30 addObject:v8];

  v9 = [(UIView *)self->_contentAreaView centerYAnchor];
  v10 = [(PNPAirplaneModeView *)self centerYAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  [v30 addObject:v11];

  v12 = [(UILabel *)self->_deviceNameLabel leadingAnchor];
  v13 = [(UIView *)self->_contentAreaView leadingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  [v30 addObject:v14];

  v15 = [(UILabel *)self->_deviceNameLabel trailingAnchor];
  v16 = [(UIView *)self->_contentAreaView trailingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  [v30 addObject:v17];

  v18 = [(UILabel *)self->_deviceNameLabel topAnchor];
  v19 = [(UIView *)self->_contentAreaView topAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:10.0];
  [v30 addObject:v20];

  v21 = [(UIButton *)self->_turnOnBluetoothButton lastBaselineAnchor];
  v22 = [(UILabel *)self->_deviceNameLabel lastBaselineAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:16.0];
  [v30 addObject:v23];

  v24 = [(UIButton *)self->_turnOnBluetoothButton bottomAnchor];
  v25 = [(UIView *)self->_contentAreaView bottomAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];
  [v30 addObject:v26];

  v27 = [(UIButton *)self->_turnOnBluetoothButton centerXAnchor];
  v28 = [(UILabel *)self->_deviceNameLabel centerXAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];
  [v30 addObject:v29];

  [MEMORY[0x277CCAAD0] activateConstraints:v30];
}

- (void)turnOnBluetooth:(id)a3
{
  v4 = [(PNPAirplaneModeView *)self _bluetoothOnString];
  currentString = self->_currentString;
  self->_currentString = v4;

  v6 = [(PNPAirplaneModeView *)self _applePencilOn];
  pencilStatusString = self->_pencilStatusString;
  self->_pencilStatusString = v6;

  turnOnBluetoothButton = self->_turnOnBluetoothButton;
  v9 = [MEMORY[0x277D75348] defaultButtonPressedColor];
  [(UIButton *)turnOnBluetoothButton setTitleColor:v9 forState:0];

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