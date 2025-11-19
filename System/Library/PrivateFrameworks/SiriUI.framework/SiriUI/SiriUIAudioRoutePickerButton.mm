@interface SiriUIAudioRoutePickerButton
- (SiriUIAudioRoutePickerButton)initWithFrame:(CGRect)a3;
- (id)_baseBluetoothImage;
- (id)_bluetoothImage;
- (id)_bluetoothImageHighlighted;
- (id)_bluetoothImageOn;
@end

@implementation SiriUIAudioRoutePickerButton

- (SiriUIAudioRoutePickerButton)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = SiriUIAudioRoutePickerButton;
  v3 = [(SiriUIContentButton *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(SiriUIAudioRoutePickerButton *)v3 _bluetoothImage];
    [(SiriUIAudioRoutePickerButton *)v4 setImage:v5 forState:0];

    v6 = [(SiriUIAudioRoutePickerButton *)v4 _bluetoothImageOn];
    [(SiriUIAudioRoutePickerButton *)v4 setImage:v6 forState:4];

    v7 = [(SiriUIAudioRoutePickerButton *)v4 _bluetoothImageHighlighted];
    [(SiriUIAudioRoutePickerButton *)v4 setImage:v7 forState:1];

    v8 = [(SiriUIAudioRoutePickerButton *)v4 _bluetoothImageHighlighted];
    [(SiriUIAudioRoutePickerButton *)v4 setImage:v8 forState:5];
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
  v2 = [(SiriUIAudioRoutePickerButton *)self _baseBluetoothImage];
  v3 = [MEMORY[0x277D75348] siriui_lightMaskingColor];
  v4 = [v2 _flatImageWithColor:v3];

  return v4;
}

- (id)_bluetoothImageOn
{
  v2 = [(SiriUIAudioRoutePickerButton *)self _baseBluetoothImage];
  v3 = [MEMORY[0x277D75348] whiteColor];
  v4 = [v2 _flatImageWithColor:v3];

  return v4;
}

- (id)_bluetoothImageHighlighted
{
  v2 = [(SiriUIAudioRoutePickerButton *)self _baseBluetoothImage];
  v3 = [MEMORY[0x277D75348] siriui_lightMaskingHighlightColor];
  v4 = [v2 _flatImageWithColor:v3];

  return v4;
}

@end