@interface WFNetworkListViewController
- (WFNetworkListViewController)initWithCoder:(id)coder;
- (WFNetworkListViewController)initWithNetworkListDataSource:(id)source networkListConfigDataSource:(id)dataSource;
- (WFNetworkListViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation WFNetworkListViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_27403CCB8();
}

- (WFNetworkListViewController)initWithNetworkListDataSource:(id)source networkListConfigDataSource:(id)dataSource
{
  *(&self->super.super.super.isa + OBJC_IVAR___WFNetworkListViewController_hostingController) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___WFNetworkListViewController_networkListDataSource) = source;
  *(&self->super.super.super.isa + OBJC_IVAR___WFNetworkListViewController_networkConfigDataSource) = dataSource;
  v9.receiver = self;
  v9.super_class = type metadata accessor for WFNetworkListViewController();
  sourceCopy = source;
  dataSourceCopy = dataSource;
  return [(WFNetworkListViewController *)&v9 initWithNibName:0 bundle:0];
}

- (WFNetworkListViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR___WFNetworkListViewController_hostingController) = 0;
  result = sub_274051A88();
  __break(1u);
  return result;
}

- (WFNetworkListViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end