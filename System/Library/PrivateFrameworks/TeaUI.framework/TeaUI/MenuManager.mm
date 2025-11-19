@interface MenuManager
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (void)buildMenuWithBuilder:(id)a3;
@end

@implementation MenuManager

- (void)buildMenuWithBuilder:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  MenuManager.buildMenu(with:)(a3);
  swift_unknownObjectRelease();
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    v5 = self;
    swift_unknownObjectRetain();
    sub_1D8191F34();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v6 = self;
  }

  v7 = MenuManager.canPerformAction(_:withSender:)();

  sub_1D7E7BAAC(v9);
  return v7 & 1;
}

@end