@interface SiriUIAudioRoutePickerButton
- (SiriUIAudioRoutePickerButton)initWithFrame:(CGRect)frame;
- (id)_baseBluetoothImage;
- (id)_bluetoothImage;
- (id)_bluetoothImageHighlighted;
- (id)_bluetoothImageOn;
@end

@implementation SiriUIAudioRoutePickerButton

- (SiriUIAudioRoutePickerButton)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = SiriUIAudioRoutePickerButton;
  v3 = [(SiriUIContentButton *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    _bluetoothImage = [(SiriUIAudioRoutePickerButton *)v3 _bluetoothImage];
    [(SiriUIAudioRoutePickerButton *)v4 setImage:_bluetoothImage forState:0];

    _bluetoothImageOn = [(SiriUIAudioRoutePickerButton *)v4 _bluetoothImageOn];
    [(SiriUIAudioRoutePickerButton *)v4 setImage:_bluetoothImageOn forState:4];

    _bluetoothImageHighlighted = [(SiriUIAudioRoutePickerButton *)v4 _bluetoothImageHighlighted];
    [(SiriUIAudioRoutePickerButton *)v4 setImage:_bluetoothImageHighlighted forState:1];

    _bluetoothImageHighlighted2 = [(SiriUIAudioRoutePickerButton *)v4 _bluetoothImageHighlighted];
    [(SiriUIAudioRoutePickerButton *)v4 setImage:_bluetoothImageHighlighted2 forState:5];
  }

  return v4;
}

- (id)_baseBluetoothImage
{
  v2 = MEMORY[0x277D755B8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v2 imageNamed:@"bluetoothglyph" inBundle:v3];

  return v4;
}

- (id)_bluetoothImage
{
  _baseBluetoothImage = [(SiriUIAudioRoutePickerButton *)self _baseBluetoothImage];
  siriui_lightMaskingColor = [MEMORY[0x277D75348] siriui_lightMaskingColor];
  v4 = [_baseBluetoothImage _flatImageWithColor:siriui_lightMaskingColor];

  return v4;
}

- (id)_bluetoothImageOn
{
  _baseBluetoothImage = [(SiriUIAudioRoutePickerButton *)self _baseBluetoothImage];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  v4 = [_baseBluetoothImage _flatImageWithColor:whiteColor];

  return v4;
}

- (id)_bluetoothImageHighlighted
{
  _baseBluetoothImage = [(SiriUIAudioRoutePickerButton *)self _baseBluetoothImage];
  siriui_lightMaskingHighlightColor = [MEMORY[0x277D75348] siriui_lightMaskingHighlightColor];
  v4 = [_baseBluetoothImage _flatImageWithColor:siriui_lightMaskingHighlightColor];

  return v4;
}

@end