@interface MenuManager
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (void)buildMenuWithBuilder:(id)builder;
@end

@implementation MenuManager

- (void)buildMenuWithBuilder:(id)builder
{
  swift_unknownObjectRetain();
  selfCopy = self;
  MenuManager.buildMenu(with:)(builder);
  swift_unknownObjectRelease();
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1D8191F34();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    selfCopy2 = self;
  }

  v7 = MenuManager.canPerformAction(_:withSender:)();

  sub_1D7E7BAAC(v9);
  return v7 & 1;
}

@end