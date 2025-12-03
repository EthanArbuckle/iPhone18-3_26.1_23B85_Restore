@interface PGGraphEdgeCollection
+ (MAEdgeFilter)filter;
+ (id)edgesFromNodes:(id)nodes;
+ (id)edgesFromNodes:(id)nodes toNodes:(id)toNodes;
+ (id)edgesInGraph:(id)graph;
+ (id)edgesOfType:(unint64_t)type betweenNodes:(id)nodes andNodes:(id)andNodes;
+ (id)edgesOfType:(unint64_t)type onNodes:(id)nodes;
+ (id)edgesToNodes:(id)nodes;
@end

@implementation PGGraphEdgeCollection

+ (id)edgesOfType:(unint64_t)type betweenNodes:(id)nodes andNodes:(id)andNodes
{
  andNodesCopy = andNodes;
  nodesCopy = nodes;
  filter = [self filter];
  v13.receiver = self;
  v13.super_class = &OBJC_METACLASS___PGGraphEdgeCollection;
  v11 = objc_msgSendSuper2(&v13, sel_edgesOfType_betweenNodes_andNodes_matchingFilter_, type, nodesCopy, andNodesCopy, filter);

  return v11;
}

+ (id)edgesOfType:(unint64_t)type onNodes:(id)nodes
{
  nodesCopy = nodes;
  filter = [self filter];
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___PGGraphEdgeCollection;
  v8 = objc_msgSendSuper2(&v10, sel_edgesOfType_onNodes_matchingFilter_, type, nodesCopy, filter);

  return v8;
}

+ (id)edgesInGraph:(id)graph
{
  graphCopy = graph;
  filter = [self filter];
  v6 = [self edgesMatchingFilter:filter inGraph:graphCopy];

  return v6;
}

+ (MAEdgeFilter)filter
{
  edgeClass = [self edgeClass];

  return [edgeClass filter];
}

+ (id)edgesFromNodes:(id)nodes toNodes:(id)toNodes
{
  toNodesCopy = toNodes;
  nodesCopy = nodes;
  filter = [self filter];
  v11.receiver = self;
  v11.super_class = &OBJC_METACLASS___PGGraphEdgeCollection;
  v9 = objc_msgSendSuper2(&v11, sel_edgesFromNodes_toNodes_matchingFilter_, nodesCopy, toNodesCopy, filter);

  return v9;
}

+ (id)edgesToNodes:(id)nodes
{
  nodesCopy = nodes;
  filter = [self filter];
  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS___PGGraphEdgeCollection;
  v6 = objc_msgSendSuper2(&v8, sel_edgesToNodes_matchingFilter_, nodesCopy, filter);

  return v6;
}

+ (id)edgesFromNodes:(id)nodes
{
  nodesCopy = nodes;
  filter = [self filter];
  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS___PGGraphEdgeCollection;
  v6 = objc_msgSendSuper2(&v8, sel_edgesFromNodes_matchingFilter_, nodesCopy, filter);

  return v6;
}

@end