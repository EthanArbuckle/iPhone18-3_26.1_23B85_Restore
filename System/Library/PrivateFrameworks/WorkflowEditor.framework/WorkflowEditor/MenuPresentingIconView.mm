@interface MenuPresentingIconView
- (CGSize)intrinsicContentSize;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (void)layoutSubviews;
@end

@implementation MenuPresentingIconView

- (void)layoutSubviews
{
  v2 = self;
  sub_2744FA558();
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  v3 = sub_2744FA650();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_2744FA6B4();

  return v7;
}

@end