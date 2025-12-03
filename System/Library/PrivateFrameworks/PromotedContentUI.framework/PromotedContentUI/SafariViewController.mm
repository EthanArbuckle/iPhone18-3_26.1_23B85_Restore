@interface SafariViewController
- (_TtC17PromotedContentUI20SafariViewController)initWithURL:(id)l configuration:(id)configuration;
- (_TtC17PromotedContentUI20SafariViewController)initWithURL:(id)l entersReaderIfAvailable:(BOOL)available;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SafariViewController

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1C19C28BC(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1C19C317C(disappear);
}

- (_TtC17PromotedContentUI20SafariViewController)initWithURL:(id)l configuration:(id)configuration
{
  v4 = sub_1C1A6D48C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1C1A6D43C();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC17PromotedContentUI20SafariViewController)initWithURL:(id)l entersReaderIfAvailable:(BOOL)available
{
  v4 = sub_1C1A6D48C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1C1A6D43C();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end