@interface SportsFavoritesLockupCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
@end

@implementation SportsFavoritesLockupCell

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
  v5 = sub_1E4103290(width);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1E41034F0();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_1E4103EB0();
}

- (void)setHighlighted:(BOOL)highlighted
{
  selfCopy = self;
  sub_1E4103F80(highlighted);
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  selfCopy = self;
  sub_1E4104288(selected);
}

@end