@interface PGGraphHighlightTypeNodeCollection
+ (id)aggregationTypeNodesInGraph:(id)a3;
+ (id)concludedTripTypeNodesInGraph:(id)a3;
+ (id)defaultTypeNodesInGraph:(id)a3;
+ (id)longTripTypeNodesInGraph:(id)a3;
+ (id)onGoingTripTypeNodesInGraph:(id)a3;
+ (id)shortTripTypeNodesInGraph:(id)a3;
+ (id)tripTypeNodesInGraph:(id)a3;
+ (id)typeNodesWithLabel:(id)a3 inGraph:(id)a4;
- (PGGraphHighlightGroupNodeCollection)highlightGroupNodes;
- (PGGraphHighlightNodeCollection)highlightNodes;
@end

@implementation PGGraphHighlightTypeNodeCollection

+ (id)typeNodesWithLabel:(id)a3 inGraph:(id)a4
{
  v6 = a4;
  v7 = [PGGraphHighlightTypeNode typeNodeFilterForLabel:a3];
  v8 = [a1 nodesMatchingFilter:v7 inGraph:v6];

  return v8;
}

+ (id)defaultTypeNodesInGraph:(id)a3
{
  v4 = a3;
  v5 = +[PGGraphHighlightTypeNode defaultTypeNodeFilter];
  v6 = [a1 nodesMatchingFilter:v5 inGraph:v4];

  return v6;
}

+ (id)onGoingTripTypeNodesInGraph:(id)a3
{
  v4 = a3;
  v5 = +[PGGraphHighlightTypeNode onGoingTripTypeNodeFilter];
  v6 = [a1 nodesMatchingFilter:v5 inGraph:v4];

  return v6;
}

+ (id)aggregationTypeNodesInGraph:(id)a3
{
  v4 = a3;
  v5 = +[PGGraphHighlightTypeNode aggregationTypeNodeFilter];
  v6 = [a1 nodesMatchingFilter:v5 inGraph:v4];

  return v6;
}

+ (id)shortTripTypeNodesInGraph:(id)a3
{
  v4 = a3;
  v5 = +[PGGraphHighlightTypeNode shortTripTypeNodeFilter];
  v6 = [a1 nodesMatchingFilter:v5 inGraph:v4];

  return v6;
}

+ (id)longTripTypeNodesInGraph:(id)a3
{
  v4 = a3;
  v5 = +[PGGraphHighlightTypeNode longTripTypeNodeFilter];
  v6 = [a1 nodesMatchingFilter:v5 inGraph:v4];

  return v6;
}

+ (id)concludedTripTypeNodesInGraph:(id)a3
{
  v4 = a3;
  v5 = +[PGGraphHighlightTypeNode concludedTripTypeNodeFilter];
  v6 = [a1 nodesMatchingFilter:v5 inGraph:v4];

  return v6;
}

+ (id)tripTypeNodesInGraph:(id)a3
{
  v4 = a3;
  v5 = +[PGGraphHighlightTypeNode tripTypeNodeFilter];
  v6 = [a1 nodesMatchingFilter:v5 inGraph:v4];

  return v6;
}

- (PGGraphHighlightGroupNodeCollection)highlightGroupNodes
{
  v2 = [(PGGraphHighlightTypeNodeCollection *)self highlightNodes];
  v3 = [(PGGraphNodeCollection *)PGGraphHighlightGroupNodeCollection subsetInCollection:v2];

  return v3;
}

- (PGGraphHighlightNodeCollection)highlightNodes
{
  v3 = +[PGGraphHasTypeEdge filter];
  v4 = [v3 inRelation];
  v5 = [(MANodeCollection *)PGGraphHighlightNodeCollection nodesRelatedToNodes:self withRelation:v4];

  return v5;
}

@end