@interface OntologyGraphCompatible
- (BOOL)isDescendentWithDescendent:(id)descendent ancestor:(id)ancestor;
- (_TtC12VisualLookUp23OntologyGraphCompatible)init;
- (id)findLeastCommonAncestorWithNode1:(id)node1 node2:(id)node2;
- (id)ontologyNodeWithKnowledgeGraphID:(id)d;
@end

@implementation OntologyGraphCompatible

- (BOOL)isDescendentWithDescendent:(id)descendent ancestor:(id)ancestor
{
  descendentCopy = descendent;
  ancestorCopy = ancestor;
  selfCopy = self;
  v9 = sub_1D9B791E8(descendentCopy, ancestorCopy);

  return v9 & 1;
}

- (id)ontologyNodeWithKnowledgeGraphID:(id)d
{
  v4 = sub_1D9C7DC7C();
  v6 = v5;
  selfCopy = self;
  v8 = sub_1D9B793A4(v4, v6);

  return v8;
}

- (id)findLeastCommonAncestorWithNode1:(id)node1 node2:(id)node2
{
  node1Copy = node1;
  node2Copy = node2;
  selfCopy = self;
  v9 = sub_1D9B79540(node1Copy, node2Copy);

  return v9;
}

- (_TtC12VisualLookUp23OntologyGraphCompatible)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end