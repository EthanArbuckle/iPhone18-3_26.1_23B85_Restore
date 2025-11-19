@interface OntologyGraphCompatible
- (BOOL)isDescendentWithDescendent:(id)a3 ancestor:(id)a4;
- (_TtC12VisualLookUp23OntologyGraphCompatible)init;
- (id)findLeastCommonAncestorWithNode1:(id)a3 node2:(id)a4;
- (id)ontologyNodeWithKnowledgeGraphID:(id)a3;
@end

@implementation OntologyGraphCompatible

- (BOOL)isDescendentWithDescendent:(id)a3 ancestor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1D9B791E8(v6, v7);

  return v9 & 1;
}

- (id)ontologyNodeWithKnowledgeGraphID:(id)a3
{
  v4 = sub_1D9C7DC7C();
  v6 = v5;
  v7 = self;
  v8 = sub_1D9B793A4(v4, v6);

  return v8;
}

- (id)findLeastCommonAncestorWithNode1:(id)a3 node2:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1D9B79540(v6, v7);

  return v9;
}

- (_TtC12VisualLookUp23OntologyGraphCompatible)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end