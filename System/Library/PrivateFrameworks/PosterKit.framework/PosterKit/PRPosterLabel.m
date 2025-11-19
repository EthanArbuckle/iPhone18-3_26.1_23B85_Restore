@interface PRPosterLabel
- (void)posterAppearanceDidChange:(id)a3;
@end

@implementation PRPosterLabel

- (void)posterAppearanceDidChange:(id)a3
{
  v4 = a3;
  v9 = [v4 font];
  v5 = [v4 labelColor];

  v6 = [v5 color];
  v7 = [(PRPosterLabel *)self font];

  if (v7 != v9)
  {
    [(PRPosterLabel *)self setFont:v9];
  }

  v8 = [(PRPosterLabel *)self textColor];

  if (v8 != v6)
  {
    [(PRPosterLabel *)self setTextColor:v6];
  }
}

@end