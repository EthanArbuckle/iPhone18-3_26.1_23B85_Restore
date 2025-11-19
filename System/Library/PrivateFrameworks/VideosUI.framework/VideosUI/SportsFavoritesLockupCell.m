@interface SportsFavoritesLockupCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation SportsFavoritesLockupCell

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
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
  v2 = self;
  sub_1E41034F0();
}

- (void)prepareForReuse
{
  v2 = self;
  sub_1E4103EB0();
}

- (void)setHighlighted:(BOOL)a3
{
  v4 = self;
  sub_1E4103F80(a3);
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v5 = self;
  sub_1E4104288(a3);
}

@end