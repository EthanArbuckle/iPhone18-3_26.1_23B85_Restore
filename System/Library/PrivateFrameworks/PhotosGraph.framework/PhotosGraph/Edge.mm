@interface Edge
- (KGNode)sourceNode;
- (KGNode)targetNode;
- (NSDictionary)properties;
- (NSSet)labels;
- (_TtC11PhotosGraph4Edge)init;
- (_TtC11PhotosGraph4Edge)initWithIdentifier:(unint64_t)identifier labels:(id)labels properties:(id)properties sourceNode:(id)node targetNode:(id)targetNode;
- (void)setLabels:(id)labels;
- (void)setProperties:(id)properties;
@end

@implementation Edge

- (KGNode)targetNode
{
  v2 = *(self + OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (KGNode)sourceNode
{
  v2 = *(self + OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (NSSet)labels
{
  v2 = *(self + OBJC_IVAR____TtC11PhotosGraph4Edge_labels);

  v3 = sub_22F741410();

  return v3;
}

- (void)setLabels:(id)labels
{
  v4 = sub_22F741420();
  v5 = *(self + OBJC_IVAR____TtC11PhotosGraph4Edge_labels);
  *(self + OBJC_IVAR____TtC11PhotosGraph4Edge_labels) = v4;
}

- (NSDictionary)properties
{
  v2 = *(self + OBJC_IVAR____TtC11PhotosGraph4Edge_properties);
  sub_22F20B0E0();

  v3 = sub_22F740C80();

  return v3;
}

- (void)setProperties:(id)properties
{
  sub_22F20B0E0();
  v4 = sub_22F740CA0();
  v5 = *(self + OBJC_IVAR____TtC11PhotosGraph4Edge_properties);
  *(self + OBJC_IVAR____TtC11PhotosGraph4Edge_properties) = v4;
}

- (_TtC11PhotosGraph4Edge)initWithIdentifier:(unint64_t)identifier labels:(id)labels properties:(id)properties sourceNode:(id)node targetNode:(id)targetNode
{
  v11 = sub_22F741420();
  sub_22F20B0E0();
  v12 = sub_22F740CA0();
  *(self + OBJC_IVAR____TtC11PhotosGraph4Edge_identifier) = identifier;
  *(self + OBJC_IVAR____TtC11PhotosGraph4Edge_labels) = v11;
  *(self + OBJC_IVAR____TtC11PhotosGraph4Edge_properties) = v12;
  *(self + OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode) = node;
  *(self + OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode) = targetNode;
  v14.receiver = self;
  v14.super_class = type metadata accessor for Edge();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return [(Edge *)&v14 init];
}

- (_TtC11PhotosGraph4Edge)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end