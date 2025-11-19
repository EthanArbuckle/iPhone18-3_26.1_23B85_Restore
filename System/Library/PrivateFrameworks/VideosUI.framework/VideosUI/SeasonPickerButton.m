@interface SeasonPickerButton
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4;
- (NSArray)accessibilityHeaderTitles;
- (VUILabel)accessibilityAltLabel;
- (VUILabel)accessibilityCurrentLabel;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (void)layoutSubviews;
@end

@implementation SeasonPickerButton

- (void)layoutSubviews
{
  v2 = self;
  sub_1E3B8CD94();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = sub_1E3B8D230(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_1E3B8D28C();

  return v7;
}

- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4
{
  height = a3.height;
  width = a3.width;
  v7 = self;
  v8 = sub_1E3B8CDEC(a4, width, height);
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