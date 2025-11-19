@interface SKGPersonaEdge
+ (id)edgeFromPersona:(id)a3 toNode:(id)a4;
@end

@implementation SKGPersonaEdge

+ (id)edgeFromPersona:(id)a3 toNode:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [(SKGEdge *)[SKGPersonaEdge alloc] initWithSourceNode:v5 targetNode:v6];

  return v7;
}

@end