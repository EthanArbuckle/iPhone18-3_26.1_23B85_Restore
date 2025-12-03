@interface PEPhotoStyleValuesPlatterView
- (BOOL)hidePaletteLabel;
- (BOOL)hideResetButton;
- (BOOL)hideToneAndColorLabels;
- (BOOL)isResetButtonEnabled;
- (double)color;
- (double)palette;
- (double)tone;
- (id)resetAction;
- (void)setColor:(double)color;
- (void)setHidePaletteLabel:(BOOL)label;
- (void)setHideResetButton:(BOOL)button;
- (void)setHideToneAndColorLabels:(BOOL)labels;
- (void)setIsResetButtonEnabled:(BOOL)enabled;
- (void)setPalette:(double)palette;
- (void)setResetAction:(id)action;
- (void)setTone:(double)tone;
@end

@implementation PEPhotoStyleValuesPlatterView

- (double)tone
{
  selfCopy = self;
  v3 = PEPhotoStyleValuesPlatterView.tone.getter();

  return v3;
}

- (void)setTone:(double)tone
{
  selfCopy = self;
  PEPhotoStyleValuesPlatterView.tone.setter();
}

- (double)color
{
  selfCopy = self;
  v3 = PEPhotoStyleValuesPlatterView.color.getter();

  return v3;
}

- (void)setColor:(double)color
{
  selfCopy = self;
  PEPhotoStyleValuesPlatterView.color.setter();
}

- (double)palette
{
  selfCopy = self;
  v3 = PEPhotoStyleValuesPlatterView.palette.getter();

  return v3;
}

- (void)setPalette:(double)palette
{
  selfCopy = self;
  PEPhotoStyleValuesPlatterView.palette.setter();
}

- (BOOL)hideToneAndColorLabels
{
  selfCopy = self;
  v3 = PEPhotoStyleValuesPlatterView.hideToneAndColorLabels.getter();

  return v3 & 1;
}

- (void)setHideToneAndColorLabels:(BOOL)labels
{
  selfCopy = self;
  PEPhotoStyleValuesPlatterView.hideToneAndColorLabels.setter();
}

- (BOOL)hidePaletteLabel
{
  selfCopy = self;
  v3 = PEPhotoStyleValuesPlatterView.hidePaletteLabel.getter();

  return v3 & 1;
}

- (void)setHidePaletteLabel:(BOOL)label
{
  selfCopy = self;
  PEPhotoStyleValuesPlatterView.hidePaletteLabel.setter();
}

- (BOOL)hideResetButton
{
  selfCopy = self;
  v3 = PEPhotoStyleValuesPlatterView.hideResetButton.getter();

  return v3 & 1;
}

- (void)setHideResetButton:(BOOL)button
{
  selfCopy = self;
  PEPhotoStyleValuesPlatterView.hideResetButton.setter();
}

- (BOOL)isResetButtonEnabled
{
  selfCopy = self;
  v3 = PEPhotoStyleValuesPlatterView.isResetButtonEnabled.getter();

  return v3 & 1;
}

- (void)setIsResetButtonEnabled:(BOOL)enabled
{
  selfCopy = self;
  PEPhotoStyleValuesPlatterView.isResetButtonEnabled.setter();
}

- (id)resetAction
{
  selfCopy = self;
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

- (void)setResetAction:(id)action
{
  v4 = _Block_copy(action);
  *(swift_allocObject() + 16) = v4;
  selfCopy = self;
  PEPhotoStyleValuesPlatterView.resetAction.setter();
}

@end