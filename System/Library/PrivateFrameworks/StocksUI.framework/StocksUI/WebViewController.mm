@interface WebViewController
- (_TtC8StocksUI17WebViewController)initWithURL:(id)a3 configuration:(id)a4;
- (_TtC8StocksUI17WebViewController)initWithURL:(id)a3 entersReaderIfAvailable:(BOOL)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation WebViewController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(WebViewController *)&v4 viewDidLoad];
  v3 = [v2 traitCollection];
  sub_220739E48(v3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_22073A080(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_22073A47C(a3);
}

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v7.receiver;
  [(WebViewController *)&v7 traitCollectionDidChange:v4];
  v6 = [v5 traitCollection];
  sub_220739E48(v6);
}

- (_TtC8StocksUI17WebViewController)initWithURL:(id)a3 configuration:(id)a4
{
  v4 = sub_220884E9C();
  MEMORY[0x28223BE20](v4 - 8, v5);
  sub_220884E4C();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8StocksUI17WebViewController)initWithURL:(id)a3 entersReaderIfAvailable:(BOOL)a4
{
  v4 = sub_220884E9C();
  MEMORY[0x28223BE20](v4 - 8, v5);
  sub_220884E4C();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end