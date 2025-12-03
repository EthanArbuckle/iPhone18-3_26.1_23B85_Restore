@interface StockListViewController
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)scrollViewShouldScrollToTop:(id)top;
- (NSArray)keyCommands;
- (_TtC8StocksUI23StockListViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)contentScrollView;
- (int64_t)preferredStatusBarStyle;
- (void)delete:(id)delete;
- (void)deleteItem;
- (void)didDismissSearchController:(id)controller;
- (void)didPresentSearchController:(id)controller;
- (void)didTapAttributionButton;
- (void)didTapPlusButton;
- (void)presentSearchFromBarButtonItem;
- (void)scrollViewDidEndDecelerating:(void *)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setToolbarItems:(id)items animated:(BOOL)animated;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)willDismissSearchController:(id)controller;
- (void)willPresentSearchController:(id)controller;
@end

@implementation StockListViewController

- (id)contentScrollView
{
  selfCopy = self;
  sub_22088C71C();
  v3 = sub_22088BFCC();

  return v3;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_220491CFC();
}

- (int64_t)preferredStatusBarStyle
{
  v2 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC8StocksUI23StockListViewController_styler);
  swift_beginAccess();
  v3 = v2[3];
  v4 = v2[4];
  v5 = __swift_project_boxed_opaque_existential_1(v2, v3);
  v6 = *(v3 - 8);
  v7 = MEMORY[0x28223BE20](v5, v5);
  v9 = &v12 - v8;
  (*(v6 + 16))(&v12 - v8, v7);
  v10 = (*(*(v4 + 24) + 8))(v3);
  (*(v6 + 8))(v9, v3);
  return v10;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_2204A4054(change);
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_2204A488C(scrollCopy);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_2204A498C();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_2204A921C();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_2204C02F0(appear);
}

- (void)scrollViewDidEndDecelerating:(void *)decelerating
{
  deceleratingCopy = decelerating;
  selfCopy = self;
  sub_2204A7738();
}

- (_TtC8StocksUI23StockListViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(StockListViewController *)&v4 viewDidDisappear:disappearCopy];
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  editingCopy = editing;
  selfCopy = self;
  sub_220763F70(editingCopy, animated);
}

- (void)setToolbarItems:(id)items animated:(BOOL)animated
{
  itemsCopy = items;
  if (items)
  {
    sub_22044D56C(0, &qword_28127E850);
    itemsCopy = sub_2208916EC();
  }

  selfCopy = self;
  sub_220762EBC(itemsCopy, animated);
}

- (void)presentSearchFromBarButtonItem
{
  selfCopy = self;
  sub_220763878(0, 0);
}

- (void)didTapAttributionButton
{
  v3 = (*(&self->super.super.super.super.isa + OBJC_IVAR____TtC8StocksUI23StockListViewController_eventHandler))[5];
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 104);
  selfCopy = self;
  v5(ObjectType, v3);
}

- (void)didTapPlusButton
{
  selfCopy = self;
  sub_220888C9C();
  if (v4)
  {
    searchBar = [v4 searchBar];

    [searchBar becomeFirstResponder];
  }
}

- (BOOL)scrollViewShouldScrollToTop:(id)top
{
  topCopy = top;
  selfCopy = self;
  LOBYTE(self) = sub_22076B254();

  return self & 1;
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  selfCopy = self;
  sub_2207689CC(draggingCopy);
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    draggingCopy = dragging;
    selfCopy = self;
    sub_2204A7738();
  }
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  animationCopy = animation;
  selfCopy = self;
  if (([animationCopy ts_isScrolling] & 1) == 0)
  {
    sub_2204A7738();
  }
}

- (void)willPresentSearchController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_22076591C(controllerCopy);
}

- (void)didPresentSearchController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_220888C9C();
  v6 = v8;
  if (!v8)
  {
    v6 = controllerCopy;
  }

  searchBar = [v6 searchBar];

  [searchBar becomeFirstResponder];
}

- (void)willDismissSearchController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_220767A98(controllerCopy);
}

- (void)didDismissSearchController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_220767EA8(controllerCopy);
}

- (NSArray)keyCommands
{
  sub_22076BA14();
  if (v2)
  {
    sub_22044D56C(0, &qword_281299860);
    v3 = sub_2208916DC();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)deleteItem
{
  selfCopy = self;
  sub_220769AC4();
}

- (void)delete:(id)delete
{
  if (delete)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_2208923BC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_220769AC4();

  sub_22056D130(v6);
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_2208923BC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  v8 = sub_220769F40(action, v10);

  sub_22056D130(v10);
  return v8 & 1;
}

@end