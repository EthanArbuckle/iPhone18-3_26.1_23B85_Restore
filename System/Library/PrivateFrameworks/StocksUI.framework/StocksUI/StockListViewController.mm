@interface StockListViewController
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)scrollViewShouldScrollToTop:(id)a3;
- (NSArray)keyCommands;
- (_TtC8StocksUI23StockListViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)contentScrollView;
- (int64_t)preferredStatusBarStyle;
- (void)delete:(id)a3;
- (void)deleteItem;
- (void)didDismissSearchController:(id)a3;
- (void)didPresentSearchController:(id)a3;
- (void)didTapAttributionButton;
- (void)didTapPlusButton;
- (void)presentSearchFromBarButtonItem;
- (void)scrollViewDidEndDecelerating:(void *)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setToolbarItems:(id)a3 animated:(BOOL)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)willDismissSearchController:(id)a3;
- (void)willPresentSearchController:(id)a3;
@end

@implementation StockListViewController

- (id)contentScrollView
{
  v2 = self;
  sub_22088C71C();
  v3 = sub_22088BFCC();

  return v3;
}

- (void)viewDidLoad
{
  v2 = self;
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

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_2204A4054(a3);
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2204A488C(v4);
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_2204A498C();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_2204A921C();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_2204C02F0(a3);
}

- (void)scrollViewDidEndDecelerating:(void *)a3
{
  v4 = a3;
  v5 = a1;
  sub_2204A7738();
}

- (_TtC8StocksUI23StockListViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(StockListViewController *)&v4 viewDidDisappear:v3];
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  sub_220763F70(v5, a4);
}

- (void)setToolbarItems:(id)a3 animated:(BOOL)a4
{
  v5 = a3;
  if (a3)
  {
    sub_22044D56C(0, &qword_28127E850);
    v5 = sub_2208916EC();
  }

  v7 = self;
  sub_220762EBC(v5, a4);
}

- (void)presentSearchFromBarButtonItem
{
  v2 = self;
  sub_220763878(0, 0);
}

- (void)didTapAttributionButton
{
  v3 = (*(&self->super.super.super.super.isa + OBJC_IVAR____TtC8StocksUI23StockListViewController_eventHandler))[5];
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 104);
  v6 = self;
  v5(ObjectType, v3);
}

- (void)didTapPlusButton
{
  v2 = self;
  sub_220888C9C();
  if (v4)
  {
    v3 = [v4 searchBar];

    [v3 becomeFirstResponder];
  }
}

- (BOOL)scrollViewShouldScrollToTop:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_22076B254();

  return self & 1;
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2207689CC(v4);
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    v6 = a3;
    v7 = self;
    sub_2204A7738();
  }
}

- (void)scrollViewDidEndScrollingAnimation:(id)a3
{
  v4 = a3;
  v5 = self;
  if (([v4 ts_isScrolling] & 1) == 0)
  {
    sub_2204A7738();
  }
}

- (void)willPresentSearchController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_22076591C(v4);
}

- (void)didPresentSearchController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_220888C9C();
  v6 = v8;
  if (!v8)
  {
    v6 = v4;
  }

  v7 = [v6 searchBar];

  [v7 becomeFirstResponder];
}

- (void)willDismissSearchController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_220767A98(v4);
}

- (void)didDismissSearchController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_220767EA8(v4);
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
  v2 = self;
  sub_220769AC4();
}

- (void)delete:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_2208923BC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_220769AC4();

  sub_22056D130(v6);
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    v6 = self;
    swift_unknownObjectRetain();
    sub_2208923BC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = self;
  }

  v8 = sub_220769F40(a3, v10);

  sub_22056D130(v10);
  return v8 & 1;
}

@end