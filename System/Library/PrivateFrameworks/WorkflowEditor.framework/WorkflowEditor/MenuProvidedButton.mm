@interface MenuProvidedButton
- (CGSize)intrinsicContentSize;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation MenuProvidedButton

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  v3 = sub_27453C3B8();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  interactionCopy = interaction;
  selfCopy = self;
  v7 = sub_27453E50C();

  return v7;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_27453E68C(change);
}

@end