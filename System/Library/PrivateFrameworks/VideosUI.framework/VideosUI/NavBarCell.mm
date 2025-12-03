@interface NavBarCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation NavBarCell

- (void)prepareForReuse
{
  selfCopy = self;
  sub_1E3DFCAAC();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1E3DFCB98();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
  v5 = sub_1E3DFD100(width);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

@end