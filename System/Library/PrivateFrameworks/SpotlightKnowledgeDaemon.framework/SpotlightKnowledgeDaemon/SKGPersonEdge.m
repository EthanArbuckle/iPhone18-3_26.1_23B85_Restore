@interface SKGPersonEdge
+ (id)edgeFromPerson:(id)a3 toNode:(id)a4;
@end

@implementation SKGPersonEdge

+ (id)edgeFromPerson:(id)a3 toNode:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [(SKGEdge *)[SKGPersonEdge alloc] initWithSourceNode:v5 targetNode:v6];

  return v7;
}

@end