@interface SBFluidSwitcherTitledButton
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)setTitle:(id)title;
@end

@implementation SBFluidSwitcherTitledButton

- (void)setTitle:(id)title
{
  titleCopy = title;
  if ((BSEqualStrings() & 1) == 0)
  {
    v4 = [titleCopy copy];
    title = self->_title;
    self->_title = v4;

    v6 = _SBFluidSwitcherTitledButtonContentImageWithTitle(self->_title);
    [(SBFluidSwitcherButton *)self setImage:v6];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = [(SBFluidSwitcherButton *)self image:fits.width];
  [v3 alignmentRectInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v3 size];
  v18.size.width = v12 - (v7 + v11);
  v18.size.height = v13 - (v5 + v9);
  v18.origin.x = v7 + 0.0;
  v18.origin.y = v5 + 0.0;
  v19 = CGRectIntegral(v18);
  v14 = CGRectGetWidth(v19) + 13.0 + 13.0;

  v15 = 26.0;
  v16 = v14;
  result.height = v15;
  result.width = v16;
  return result;
}

@end