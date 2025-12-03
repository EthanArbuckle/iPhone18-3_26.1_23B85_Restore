@interface Node
- (NSDictionary)properties;
- (NSSet)labels;
- (_TtC11PhotosGraph4Node)init;
- (_TtC11PhotosGraph4Node)initWithIdentifier:(unint64_t)identifier labels:(id)labels properties:(id)properties;
@end

@implementation Node

- (NSSet)labels
{
  v2 = *(self + OBJC_IVAR____TtC11PhotosGraph4Node_labels);

  v3 = sub_22F741410();

  return v3;
}

- (NSDictionary)properties
{
  v2 = *(self + OBJC_IVAR____TtC11PhotosGraph4Node_properties);
  sub_22F20B0E0();

  v3 = sub_22F740C80();

  return v3;
}

- (_TtC11PhotosGraph4Node)initWithIdentifier:(unint64_t)identifier labels:(id)labels properties:(id)properties
{
  v7 = sub_22F741420();
  sub_22F20B0E0();
  v8 = sub_22F740CA0();
  *(self + OBJC_IVAR____TtC11PhotosGraph4Node_identifier) = identifier;
  *(self + OBJC_IVAR____TtC11PhotosGraph4Node_labels) = v7;
  *(self + OBJC_IVAR____TtC11PhotosGraph4Node_properties) = v8;
  v10.receiver = self;
  v10.super_class = type metadata accessor for Node();
  return [(Node *)&v10 init];
}

- (_TtC11PhotosGraph4Node)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end