@interface MenuProvidedButton
- (CGSize)intrinsicContentSize;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation MenuProvidedButton

- (CGSize)intrinsicContentSize
{
  v2 = self;
  v3 = sub_27453C3B8();
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
  v7 = sub_27453E50C();

  return v7;
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_27453E68C(a3);
}

@end