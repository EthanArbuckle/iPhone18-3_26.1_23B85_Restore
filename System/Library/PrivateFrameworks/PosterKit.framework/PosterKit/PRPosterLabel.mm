@interface PRPosterLabel
- (void)posterAppearanceDidChange:(id)change;
@end

@implementation PRPosterLabel

- (void)posterAppearanceDidChange:(id)change
{
  changeCopy = change;
  font = [changeCopy font];
  labelColor = [changeCopy labelColor];

  color = [labelColor color];
  font2 = [(PRPosterLabel *)self font];

  if (font2 != font)
  {
    [(PRPosterLabel *)self setFont:font];
  }

  textColor = [(PRPosterLabel *)self textColor];

  if (textColor != color)
  {
    [(PRPosterLabel *)self setTextColor:color];
  }
}

@end