@interface PEPhotoStyleValuesPlatterView
- (BOOL)hidePaletteLabel;
- (BOOL)hideResetButton;
- (BOOL)hideToneAndColorLabels;
- (BOOL)isResetButtonEnabled;
- (double)color;
- (double)palette;
- (double)tone;
- (id)resetAction;
- (void)setColor:(double)a3;
- (void)setHidePaletteLabel:(BOOL)a3;
- (void)setHideResetButton:(BOOL)a3;
- (void)setHideToneAndColorLabels:(BOOL)a3;
- (void)setIsResetButtonEnabled:(BOOL)a3;
- (void)setPalette:(double)a3;
- (void)setResetAction:(id)a3;
- (void)setTone:(double)a3;
@end

@implementation PEPhotoStyleValuesPlatterView

- (double)tone
{
  v2 = self;
  v3 = PEPhotoStyleValuesPlatterView.tone.getter();

  return v3;
}

- (void)setTone:(double)a3
{
  v3 = self;
  PEPhotoStyleValuesPlatterView.tone.setter();
}

- (double)color
{
  v2 = self;
  v3 = PEPhotoStyleValuesPlatterView.color.getter();

  return v3;
}

- (void)setColor:(double)a3
{
  v3 = self;
  PEPhotoStyleValuesPlatterView.color.setter();
}

- (double)palette
{
  v2 = self;
  v3 = PEPhotoStyleValuesPlatterView.palette.getter();

  return v3;
}

- (void)setPalette:(double)a3
{
  v3 = self;
  PEPhotoStyleValuesPlatterView.palette.setter();
}

- (BOOL)hideToneAndColorLabels
{
  v2 = self;
  v3 = PEPhotoStyleValuesPlatterView.hideToneAndColorLabels.getter();

  return v3 & 1;
}

- (void)setHideToneAndColorLabels:(BOOL)a3
{
  v3 = self;
  PEPhotoStyleValuesPlatterView.hideToneAndColorLabels.setter();
}

- (BOOL)hidePaletteLabel
{
  v2 = self;
  v3 = PEPhotoStyleValuesPlatterView.hidePaletteLabel.getter();

  return v3 & 1;
}

- (void)setHidePaletteLabel:(BOOL)a3
{
  v3 = self;
  PEPhotoStyleValuesPlatterView.hidePaletteLabel.setter();
}

- (BOOL)hideResetButton
{
  v2 = self;
  v3 = PEPhotoStyleValuesPlatterView.hideResetButton.getter();

  return v3 & 1;
}

- (void)setHideResetButton:(BOOL)a3
{
  v3 = self;
  PEPhotoStyleValuesPlatterView.hideResetButton.setter();
}

- (BOOL)isResetButtonEnabled
{
  v2 = self;
  v3 = PEPhotoStyleValuesPlatterView.isResetButtonEnabled.getter();

  return v3 & 1;
}

- (void)setIsResetButtonEnabled:(BOOL)a3
{
  v3 = self;
  PEPhotoStyleValuesPlatterView.isResetButtonEnabled.setter();
}

- (id)resetAction
{
  v2 = self;
  v3 = PEPhotoStyleValuesPlatterView.resetAction.getter();
  v5 = v4;

  v8[4] = v3;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_25E71D6D8;
  v8[3] = &block_descriptor_1;
  v6 = _Block_copy(v8);

  return v6;
}

- (void)setResetAction:(id)a3
{
  v4 = _Block_copy(a3);
  *(swift_allocObject() + 16) = v4;
  v5 = self;
  PEPhotoStyleValuesPlatterView.resetAction.setter();
}

@end