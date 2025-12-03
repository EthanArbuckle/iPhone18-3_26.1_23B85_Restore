@interface SKGPersonaEdge
+ (id)edgeFromPersona:(id)persona toNode:(id)node;
@end

@implementation SKGPersonaEdge

+ (id)edgeFromPersona:(id)persona toNode:(id)node
{
  personaCopy = persona;
  nodeCopy = node;
  v7 = [(SKGEdge *)[SKGPersonaEdge alloc] initWithSourceNode:personaCopy targetNode:nodeCopy];

  return v7;
}

@end