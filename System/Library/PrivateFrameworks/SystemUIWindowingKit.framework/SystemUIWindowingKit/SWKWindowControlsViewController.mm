@interface SWKWindowControlsViewController
- (BOOL)isPresentingMenu;
- (BOOL)supportsHoverInteractions;
- (CGPoint)cornerOffset;
- (CGPoint)cornerPoint;
- (SWKWindowControlsViewController)initWithCoder:(id)a3;
- (SWKWindowControlsViewController)initWithElements:(unint64_t)a3 delegate:(id)a4;
- (SWKWindowControlsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (SWKWindowControlsViewControllerDelegate)delegate;
- (UIView)contextMenuContainerView;
- (_TtC20SystemUIWindowingKit18WindowControlsView)windowControlsView;
- (unint64_t)elements;
- (void)focus;
- (void)loadView;
- (void)setCornerOffset:(CGPoint)a3;
- (void)setElements:(unint64_t)a3;
- (void)setHighlightedIfNeeded:(BOOL)a3 animated:(BOOL)a4;
- (void)setSupportsHoverInteractions:(BOOL)a3;
- (void)setWindowControlsView:(id)a3;
- (void)unfocus;
- (void)updateAdaptiveStyle:(int64_t)a3 adaptive:(BOOL)a4;
@end

@implementation SWKWindowControlsViewController

- (CGPoint)cornerOffset
{
  v2 = (self + OBJC_IVAR___SWKWindowControlsViewController_cornerOffset);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)setCornerOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = (self + OBJC_IVAR___SWKWindowControlsViewController_cornerOffset);
  swift_beginAccess();
  *v6 = x;
  v6[1] = y;
  v7 = self;
  v8 = [(SWKWindowControlsViewController *)v7 windowControlsView];
  v9 = *v6;

  *(&v8->super.super.super + OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_cornerOffset) = v9;
}

- (CGPoint)cornerPoint
{
  [(SWKWindowControlsViewController *)self cornerOffset];
  result.y = v3;
  result.x = v2;
  return result;
}

- (unint64_t)elements
{
  v3 = OBJC_IVAR___SWKWindowControlsViewController_elements;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setElements:(unint64_t)a3
{
  v4 = self;
  SWKWindowControlsViewController.elements.setter(a3);
}

- (UIView)contextMenuContainerView
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (BOOL)supportsHoverInteractions
{
  v3 = OBJC_IVAR___SWKWindowControlsViewController_supportsHoverInteractions;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSupportsHoverInteractions:(BOOL)a3
{
  v5 = OBJC_IVAR___SWKWindowControlsViewController_supportsHoverInteractions;
  swift_beginAccess();
  *(self + v5) = a3;
  v6 = self;
  v7 = [(SWKWindowControlsViewController *)v6 windowControlsView];
  LOBYTE(self) = *(self + v5);

  *(&v7->super.super.super.super.isa + OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_supportsHoverInteractions) = self;
}

- (SWKWindowControlsViewControllerDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC20SystemUIWindowingKit18WindowControlsView)windowControlsView
{
  v2 = self;
  v3 = sub_21ED2A580();

  return v3;
}

- (void)setWindowControlsView:(id)a3
{
  v4 = *(self + OBJC_IVAR___SWKWindowControlsViewController____lazy_storage___windowControlsView);
  *(self + OBJC_IVAR___SWKWindowControlsViewController____lazy_storage___windowControlsView) = a3;
  v3 = a3;
}

- (SWKWindowControlsViewController)initWithElements:(unint64_t)a3 delegate:(id)a4
{
  swift_unknownObjectRetain();
  v5 = sub_21ED2B8B8(a3);
  swift_unknownObjectRelease();
  return v5;
}

- (SWKWindowControlsViewController)initWithCoder:(id)a3
{
  v4 = (self + OBJC_IVAR___SWKWindowControlsViewController_cornerOffset);
  *v4 = 0;
  v4[1] = 0;
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR___SWKWindowControlsViewController_supportsHoverInteractions) = 1;
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR___SWKWindowControlsViewController____lazy_storage___windowControlsView) = 0;
  result = sub_21ED35B1C();
  __break(1u);
  return result;
}

- (void)focus
{
  v2 = self;
  sub_21ED2A924();
}

- (void)unfocus
{
  v2 = self;
  sub_21ED2ABF8();
}

- (BOOL)isPresentingMenu
{
  v2 = [(SWKWindowControlsViewController *)self windowControlsView];
  v3 = *(&v2->super.super.super.super.isa + OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_interactionState);

  return v3 == 3;
}

- (void)setHighlightedIfNeeded:(BOOL)a3 animated:(BOOL)a4
{
  v5 = self;
  sub_21ED2BA98(a3);
}

- (void)updateAdaptiveStyle:(int64_t)a3 adaptive:(BOOL)a4
{
  v4 = a4;
  v6 = self;
  sub_21ED2AF64(a3, v4);
}

- (SWKWindowControlsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)loadView
{
  v3 = self;
  v2 = [(SWKWindowControlsViewController *)v3 windowControlsView];
  [(SWKWindowControlsViewController *)v3 setView:v2];
}

@end