@interface PGGraphHighlightTypeNodeCollection
+ (id)aggregationTypeNodesInGraph:(id)graph;
+ (id)concludedTripTypeNodesInGraph:(id)graph;
+ (id)defaultTypeNodesInGraph:(id)graph;
+ (id)longTripTypeNodesInGraph:(id)graph;
+ (id)onGoingTripTypeNodesInGraph:(id)graph;
+ (id)shortTripTypeNodesInGraph:(id)graph;
+ (id)tripTypeNodesInGraph:(id)graph;
+ (id)typeNodesWithLabel:(id)label inGraph:(id)graph;
- (PGGraphHighlightGroupNodeCollection)highlightGroupNodes;
- (PGGraphHighlightNodeCollection)highlightNodes;
@end

@implementation PGGraphHighlightTypeNodeCollection

+ (id)typeNodesWithLabel:(id)label inGraph:(id)graph
{
  graphCopy = graph;
  v7 = [PGGraphHighlightTypeNode typeNodeFilterForLabel:label];
  v8 = [self nodesMatchingFilter:v7 inGraph:graphCopy];

  return v8;
}

+ (id)defaultTypeNodesInGraph:(id)graph
{
  graphCopy = graph;
  v5 = +[PGGraphHighlightTypeNode defaultTypeNodeFilter];
  v6 = [self nodesMatchingFilter:v5 inGraph:graphCopy];

  return v6;
}

+ (id)onGoingTripTypeNodesInGraph:(id)graph
{
  graphCopy = graph;
  v5 = +[PGGraphHighlightTypeNode onGoingTripTypeNodeFilter];
  v6 = [self nodesMatchingFilter:v5 inGraph:graphCopy];

  return v6;
}

+ (id)aggregationTypeNodesInGraph:(id)graph
{
  graphCopy = graph;
  v5 = +[PGGraphHighlightTypeNode aggregationTypeNodeFilter];
  v6 = [self nodesMatchingFilter:v5 inGraph:graphCopy];

  return v6;
}

+ (id)shortTripTypeNodesInGraph:(id)graph
{
  graphCopy = graph;
  v5 = +[PGGraphHighlightTypeNode shortTripTypeNodeFilter];
  v6 = [self nodesMatchingFilter:v5 inGraph:graphCopy];

  return v6;
}

+ (id)longTripTypeNodesInGraph:(id)graph
{
  graphCopy = graph;
  v5 = +[PGGraphHighlightTypeNode longTripTypeNodeFilter];
  v6 = [self nodesMatchingFilter:v5 inGraph:graphCopy];

  return v6;
}

+ (id)concludedTripTypeNodesInGraph:(id)graph
{
  graphCopy = graph;
  v5 = +[PGGraphHighlightTypeNode concludedTripTypeNodeFilter];
  v6 = [self nodesMatchingFilter:v5 inGraph:graphCopy];

  return v6;
}

+ (id)tripTypeNodesInGraph:(id)graph
{
  graphCopy = graph;
  v5 = +[PGGraphHighlightTypeNode tripTypeNodeFilter];
  v6 = [self nodesMatchingFilter:v5 inGraph:graphCopy];

  return v6;
}

- (PGGraphHighlightGroupNodeCollection)highlightGroupNodes
{
  highlightNodes = [(PGGraphHighlightTypeNodeCollection *)self highlightNodes];
  v3 = [(PGGraphNodeCollection *)PGGraphHighlightGroupNodeCollection subsetInCollection:highlightNodes];

  return v3;
}

- (PGGraphHighlightNodeCollection)highlightNodes
{
  v3 = +[PGGraphHasTypeEdge filter];
  inRelation = [v3 inRelation];
  v5 = [(MANodeCollection *)PGGraphHighlightNodeCollection nodesRelatedToNodes:self withRelation:inRelation];

  return v5;
}

@end