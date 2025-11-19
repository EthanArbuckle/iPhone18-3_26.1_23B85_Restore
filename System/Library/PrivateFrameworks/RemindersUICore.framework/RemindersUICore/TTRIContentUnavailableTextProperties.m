@interface TTRIContentUnavailableTextProperties
- (UIColor)color;
- (UIFont)font;
- (void)setColor:(id)a3;
- (void)setFont:(id)a3;
@end

@implementation TTRIContentUnavailableTextProperties

- (UIFont)font
{
  v2 = [(TTRIContentUnavailableTextProperties *)self asUIKit];
  v3 = [v2 font];

  return v3;
}

- (void)setFont:(id)a3
{
  v4 = a3;
  v5 = [(TTRIContentUnavailableTextProperties *)self asUIKit];
  [v5 setFont:v4];
}

- (UIColor)color
{
  v2 = [(TTRIContentUnavailableTextProperties *)self asUIKit];
  v3 = [v2 color];

  return v3;
}

- (void)setColor:(id)a3
{
  v4 = a3;
  v5 = [(TTRIContentUnavailableTextProperties *)self asUIKit];
  [v5 setColor:v4];
}

@end