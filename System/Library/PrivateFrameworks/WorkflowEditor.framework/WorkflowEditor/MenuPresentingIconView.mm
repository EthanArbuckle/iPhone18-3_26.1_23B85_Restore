@interface MenuPresentingIconView
- (CGSize)intrinsicContentSize;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (void)layoutSubviews;
@end

@implementation MenuPresentingIconView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_2744FA558();
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  v3 = sub_2744FA650();
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
  v7 = sub_2744FA6B4();

  return v7;
}

@end