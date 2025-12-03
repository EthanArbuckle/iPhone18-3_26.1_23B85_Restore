@interface TTRIContentUnavailableTextProperties
- (UIColor)color;
- (UIFont)font;
- (void)setColor:(id)color;
- (void)setFont:(id)font;
@end

@implementation TTRIContentUnavailableTextProperties

- (UIFont)font
{
  asUIKit = [(TTRIContentUnavailableTextProperties *)self asUIKit];
  font = [asUIKit font];

  return font;
}

- (void)setFont:(id)font
{
  fontCopy = font;
  asUIKit = [(TTRIContentUnavailableTextProperties *)self asUIKit];
  [asUIKit setFont:fontCopy];
}

- (UIColor)color
{
  asUIKit = [(TTRIContentUnavailableTextProperties *)self asUIKit];
  color = [asUIKit color];

  return color;
}

- (void)setColor:(id)color
{
  colorCopy = color;
  asUIKit = [(TTRIContentUnavailableTextProperties *)self asUIKit];
  [asUIKit setColor:colorCopy];
}

@end