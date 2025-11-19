@interface SafariViewController
- (_TtC17PromotedContentUI20SafariViewController)initWithURL:(id)a3 configuration:(id)a4;
- (_TtC17PromotedContentUI20SafariViewController)initWithURL:(id)a3 entersReaderIfAvailable:(BOOL)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation SafariViewController

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1C19C28BC(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_1C19C317C(a3);
}

- (_TtC17PromotedContentUI20SafariViewController)initWithURL:(id)a3 configuration:(id)a4
{
  v4 = sub_1C1A6D48C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1C1A6D43C();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC17PromotedContentUI20SafariViewController)initWithURL:(id)a3 entersReaderIfAvailable:(BOOL)a4
{
  v4 = sub_1C1A6D48C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1C1A6D43C();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end