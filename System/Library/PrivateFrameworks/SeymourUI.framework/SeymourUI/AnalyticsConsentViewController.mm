@interface AnalyticsConsentViewController
- (_TtC9SeymourUI30AnalyticsConsentViewController)initWithTitle:(id)a3;
- (_TtC9SeymourUI30AnalyticsConsentViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC9SeymourUI30AnalyticsConsentViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)didTapLearnMoreButton;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation AnalyticsConsentViewController

- (void)viewDidLoad
{
  v2 = self;
  AnalyticsConsentViewController.viewDidLoad()();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(OBBaseWelcomeController *)&v5 viewDidAppear:v3];
  sub_20B783ADC();
  sub_20C138C54();
}

- (void)didTapLearnMoreButton
{
  v2 = self;
  sub_20B783CC8();
}

- (_TtC9SeymourUI30AnalyticsConsentViewController)initWithTitle:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9SeymourUI30AnalyticsConsentViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9SeymourUI30AnalyticsConsentViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end