@interface CatalogTipPlayerViewController
- (_TtC9SeymourUI30CatalogTipPlayerViewController)initWithCoder:(id)coder;
- (_TtC9SeymourUI30CatalogTipPlayerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC9SeymourUI30CatalogTipPlayerViewController)initWithPlayerLayerView:(id)view;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation CatalogTipPlayerViewController

- (_TtC9SeymourUI30CatalogTipPlayerViewController)initWithCoder:(id)coder
{
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for CatalogTipPlayerViewController();
  v4 = v5.receiver;
  [(CatalogTipPlayerViewController *)&v5 viewDidAppear:appearCopy];
  sub_20BF410A8();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for CatalogTipPlayerViewController();
  v4 = v5.receiver;
  [(CatalogTipPlayerViewController *)&v5 viewDidDisappear:disappearCopy];
  sub_20BF43334();
  if ([v4 isBeingDismissed])
  {
    sub_20BF43570();
  }
}

- (_TtC9SeymourUI30CatalogTipPlayerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9SeymourUI30CatalogTipPlayerViewController)initWithPlayerLayerView:(id)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end