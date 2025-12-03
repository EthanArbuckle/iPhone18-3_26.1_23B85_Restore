@interface SWKWindowControlsViewController
- (BOOL)isPresentingMenu;
- (BOOL)supportsHoverInteractions;
- (CGPoint)cornerOffset;
- (CGPoint)cornerPoint;
- (SWKWindowControlsViewController)initWithCoder:(id)coder;
- (SWKWindowControlsViewController)initWithElements:(unint64_t)elements delegate:(id)delegate;
- (SWKWindowControlsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (SWKWindowControlsViewControllerDelegate)delegate;
- (UIView)contextMenuContainerView;
- (_TtC20SystemUIWindowingKit18WindowControlsView)windowControlsView;
- (unint64_t)elements;
- (void)focus;
- (void)loadView;
- (void)setCornerOffset:(CGPoint)offset;
- (void)setElements:(unint64_t)elements;
- (void)setHighlightedIfNeeded:(BOOL)needed animated:(BOOL)animated;
- (void)setSupportsHoverInteractions:(BOOL)interactions;
- (void)setWindowControlsView:(id)view;
- (void)unfocus;
- (void)updateAdaptiveStyle:(int64_t)style adaptive:(BOOL)adaptive;
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

- (void)setCornerOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  v6 = (self + OBJC_IVAR___SWKWindowControlsViewController_cornerOffset);
  swift_beginAccess();
  *v6 = x;
  v6[1] = y;
  selfCopy = self;
  windowControlsView = [(SWKWindowControlsViewController *)selfCopy windowControlsView];
  v9 = *v6;

  *(&windowControlsView->super.super.super + OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_cornerOffset) = v9;
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

- (void)setElements:(unint64_t)elements
{
  selfCopy = self;
  SWKWindowControlsViewController.elements.setter(elements);
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

- (void)setSupportsHoverInteractions:(BOOL)interactions
{
  v5 = OBJC_IVAR___SWKWindowControlsViewController_supportsHoverInteractions;
  swift_beginAccess();
  *(self + v5) = interactions;
  selfCopy = self;
  windowControlsView = [(SWKWindowControlsViewController *)selfCopy windowControlsView];
  LOBYTE(self) = *(self + v5);

  *(&windowControlsView->super.super.super.super.isa + OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_supportsHoverInteractions) = self;
}

- (SWKWindowControlsViewControllerDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC20SystemUIWindowingKit18WindowControlsView)windowControlsView
{
  selfCopy = self;
  v3 = sub_21ED2A580();

  return v3;
}

- (void)setWindowControlsView:(id)view
{
  v4 = *(self + OBJC_IVAR___SWKWindowControlsViewController____lazy_storage___windowControlsView);
  *(self + OBJC_IVAR___SWKWindowControlsViewController____lazy_storage___windowControlsView) = view;
  viewCopy = view;
}

- (SWKWindowControlsViewController)initWithElements:(unint64_t)elements delegate:(id)delegate
{
  swift_unknownObjectRetain();
  v5 = sub_21ED2B8B8(elements);
  swift_unknownObjectRelease();
  return v5;
}

- (SWKWindowControlsViewController)initWithCoder:(id)coder
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
  selfCopy = self;
  sub_21ED2A924();
}

- (void)unfocus
{
  selfCopy = self;
  sub_21ED2ABF8();
}

- (BOOL)isPresentingMenu
{
  windowControlsView = [(SWKWindowControlsViewController *)self windowControlsView];
  v3 = *(&windowControlsView->super.super.super.super.isa + OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_interactionState);

  return v3 == 3;
}

- (void)setHighlightedIfNeeded:(BOOL)needed animated:(BOOL)animated
{
  selfCopy = self;
  sub_21ED2BA98(needed);
}

- (void)updateAdaptiveStyle:(int64_t)style adaptive:(BOOL)adaptive
{
  adaptiveCopy = adaptive;
  selfCopy = self;
  sub_21ED2AF64(style, adaptiveCopy);
}

- (SWKWindowControlsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)loadView
{
  selfCopy = self;
  windowControlsView = [(SWKWindowControlsViewController *)selfCopy windowControlsView];
  [(SWKWindowControlsViewController *)selfCopy setView:windowControlsView];
}

@end