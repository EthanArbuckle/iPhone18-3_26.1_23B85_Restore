@interface CatalogTipPlayerViewController
- (_TtC9SeymourUI30CatalogTipPlayerViewController)initWithCoder:(id)a3;
- (_TtC9SeymourUI30CatalogTipPlayerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC9SeymourUI30CatalogTipPlayerViewController)initWithPlayerLayerView:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation CatalogTipPlayerViewController

- (_TtC9SeymourUI30CatalogTipPlayerViewController)initWithCoder:(id)a3
{
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for CatalogTipPlayerViewController();
  v4 = v5.receiver;
  [(CatalogTipPlayerViewController *)&v5 viewDidAppear:v3];
  sub_20BF410A8();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for CatalogTipPlayerViewController();
  v4 = v5.receiver;
  [(CatalogTipPlayerViewController *)&v5 viewDidDisappear:v3];
  sub_20BF43334();
  if ([v4 isBeingDismissed])
  {
    sub_20BF43570();
  }
}

- (_TtC9SeymourUI30CatalogTipPlayerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9SeymourUI30CatalogTipPlayerViewController)initWithPlayerLayerView:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end