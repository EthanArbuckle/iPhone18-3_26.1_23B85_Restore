@interface WebViewController
- (_TtC8StocksUI17WebViewController)initWithURL:(id)l configuration:(id)configuration;
- (_TtC8StocksUI17WebViewController)initWithURL:(id)l entersReaderIfAvailable:(BOOL)available;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation WebViewController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(WebViewController *)&v4 viewDidLoad];
  traitCollection = [v2 traitCollection];
  sub_220739E48(traitCollection);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_22073A080(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_22073A47C(disappear);
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v7.receiver;
  [(WebViewController *)&v7 traitCollectionDidChange:changeCopy];
  traitCollection = [v5 traitCollection];
  sub_220739E48(traitCollection);
}

- (_TtC8StocksUI17WebViewController)initWithURL:(id)l configuration:(id)configuration
{
  v4 = sub_220884E9C();
  MEMORY[0x28223BE20](v4 - 8, v5);
  sub_220884E4C();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8StocksUI17WebViewController)initWithURL:(id)l entersReaderIfAvailable:(BOOL)available
{
  v4 = sub_220884E9C();
  MEMORY[0x28223BE20](v4 - 8, v5);
  sub_220884E4C();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end