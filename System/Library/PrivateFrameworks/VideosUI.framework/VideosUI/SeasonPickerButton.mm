@interface SeasonPickerButton
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
- (NSArray)accessibilityHeaderTitles;
- (VUILabel)accessibilityAltLabel;
- (VUILabel)accessibilityCurrentLabel;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (void)layoutSubviews;
@end

@implementation SeasonPickerButton

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1E3B8CD94();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = sub_1E3B8D230(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  interactionCopy = interaction;
  selfCopy = self;
  v7 = sub_1E3B8D28C();

  return v7;
}

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  height = subviews.height;
  width = subviews.width;
  selfCopy = self;
  v8 = sub_1E3B8CDEC(only, width, height);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (VUILabel)accessibilityCurrentLabel
{
  v2 = sub_1E3B8D5A4();

  return v2;
}

- (VUILabel)accessibilityAltLabel
{
  v2 = sub_1E3B8D608();

  return v2;
}

- (NSArray)accessibilityHeaderTitles
{
  sub_1E3B8D68C();
  v2 = sub_1E42062A4();

  return v2;
}

@end