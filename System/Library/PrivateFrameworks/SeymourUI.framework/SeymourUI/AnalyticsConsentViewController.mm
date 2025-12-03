@interface AnalyticsConsentViewController
- (_TtC9SeymourUI30AnalyticsConsentViewController)initWithTitle:(id)title;
- (_TtC9SeymourUI30AnalyticsConsentViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC9SeymourUI30AnalyticsConsentViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)didTapLearnMoreButton;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation AnalyticsConsentViewController

- (void)viewDidLoad
{
  selfCopy = self;
  AnalyticsConsentViewController.viewDidLoad()();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(OBBaseWelcomeController *)&v5 viewDidAppear:appearCopy];
  sub_20B783ADC();
  sub_20C138C54();
}

- (void)didTapLearnMoreButton
{
  selfCopy = self;
  sub_20B783CC8();
}

- (_TtC9SeymourUI30AnalyticsConsentViewController)initWithTitle:(id)title
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9SeymourUI30AnalyticsConsentViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9SeymourUI30AnalyticsConsentViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end