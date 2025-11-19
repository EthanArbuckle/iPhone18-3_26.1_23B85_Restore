@interface ManageWatchlistsViewController
- (_TtC8StocksUI30ManageWatchlistsViewController)initWithCoder:(id)a3;
- (_TtC8StocksUI30ManageWatchlistsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3 traitCollection:(id)a4;
- (void)handleDone;
- (void)presentationController:(id)a3 prepareAdaptivePresentationController:(id)a4;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation ManageWatchlistsViewController

- (_TtC8StocksUI30ManageWatchlistsViewController)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC8StocksUI30ManageWatchlistsViewController_descriptionLabel;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  result = sub_22089267C();
  __break(1u);
  return result;
}

- (_TtC8StocksUI30ManageWatchlistsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_22070E1E0();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_22070ECA4();
}

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v7.receiver;
  [(ManageWatchlistsViewController *)&v7 traitCollectionDidChange:v4];
  v6 = [v5 traitCollection];
  sub_2207102F4();
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v6 = v9.receiver;
  [(ManageWatchlistsViewController *)&v9 setEditing:v5 animated:v4];
  sub_22088C70C();
  sub_22088C71C();
  v7 = sub_22088BFCC();

  [v7 setDragInteractionEnabled_];

  sub_22088C71C();
  v8 = sub_22088BFCC();

  [v8 setAllowsMultipleSelection_];
}

- (void)handleDone
{
  v4 = self;
  v2 = [(ManageWatchlistsViewController *)v4 navigationController];
  if (v2)
  {
    v3 = v2;
    [v2 dismissViewControllerAnimated:1 completion:0];
  }
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3 traitCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_2207104E8(v6, v7);

  return v9;
}

- (void)presentationController:(id)a3 prepareAdaptivePresentationController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_22071068C(v7);
}

@end