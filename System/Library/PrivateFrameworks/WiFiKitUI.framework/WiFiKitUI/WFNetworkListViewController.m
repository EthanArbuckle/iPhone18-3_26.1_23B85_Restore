@interface WFNetworkListViewController
- (WFNetworkListViewController)initWithCoder:(id)a3;
- (WFNetworkListViewController)initWithNetworkListDataSource:(id)a3 networkListConfigDataSource:(id)a4;
- (WFNetworkListViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation WFNetworkListViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_27403CCB8();
}

- (WFNetworkListViewController)initWithNetworkListDataSource:(id)a3 networkListConfigDataSource:(id)a4
{
  *(&self->super.super.super.isa + OBJC_IVAR___WFNetworkListViewController_hostingController) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___WFNetworkListViewController_networkListDataSource) = a3;
  *(&self->super.super.super.isa + OBJC_IVAR___WFNetworkListViewController_networkConfigDataSource) = a4;
  v9.receiver = self;
  v9.super_class = type metadata accessor for WFNetworkListViewController();
  v6 = a3;
  v7 = a4;
  return [(WFNetworkListViewController *)&v9 initWithNibName:0 bundle:0];
}

- (WFNetworkListViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR___WFNetworkListViewController_hostingController) = 0;
  result = sub_274051A88();
  __break(1u);
  return result;
}

- (WFNetworkListViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end