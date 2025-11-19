@interface SKGInteractionEdges
+ (id)edgesFromNodes:(id)a3 toNodes:(id)a4;
+ (id)edgesInGraph:(id)a3 withRelationship:(id)a4;
@end

@implementation SKGInteractionEdges

+ (id)edgesInGraph:(id)a3 withRelationship:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:v6 domain:100];
  v8 = [v5 graph];
  v9 = [(MAEdgeCollection *)SKGInteractionEdges edgesMatchingFilter:v7 inGraph:v8];

  return v9;
}

+ (id)edgesFromNodes:(id)a3 toNodes:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[SKGInteractionEdge filter];
  v8 = [(MAEdgeCollection *)SKGInteractionEdges edgesFromNodes:v5 toNodes:v6 matchingFilter:v7];

  return v8;
}

@end