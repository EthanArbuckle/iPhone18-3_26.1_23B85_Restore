@interface ManageWatchlistsViewController
- (_TtC8StocksUI30ManageWatchlistsViewController)initWithCoder:(id)coder;
- (_TtC8StocksUI30ManageWatchlistsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection;
- (void)handleDone;
- (void)presentationController:(id)controller prepareAdaptivePresentationController:(id)presentationController;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation ManageWatchlistsViewController

- (_TtC8StocksUI30ManageWatchlistsViewController)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC8StocksUI30ManageWatchlistsViewController_descriptionLabel;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  result = sub_22089267C();
  __break(1u);
  return result;
}

- (_TtC8StocksUI30ManageWatchlistsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_22070E1E0();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_22070ECA4();
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v7.receiver;
  [(ManageWatchlistsViewController *)&v7 traitCollectionDidChange:changeCopy];
  traitCollection = [v5 traitCollection];
  sub_2207102F4();
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v6 = v9.receiver;
  [(ManageWatchlistsViewController *)&v9 setEditing:editingCopy animated:animatedCopy];
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
  selfCopy = self;
  navigationController = [(ManageWatchlistsViewController *)selfCopy navigationController];
  if (navigationController)
  {
    v3 = navigationController;
    [navigationController dismissViewControllerAnimated:1 completion:0];
  }
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection
{
  controllerCopy = controller;
  collectionCopy = collection;
  selfCopy = self;
  v9 = sub_2207104E8(controllerCopy, collectionCopy);

  return v9;
}

- (void)presentationController:(id)controller prepareAdaptivePresentationController:(id)presentationController
{
  controllerCopy = controller;
  presentationControllerCopy = presentationController;
  selfCopy = self;
  sub_22071068C(presentationControllerCopy);
}

@end