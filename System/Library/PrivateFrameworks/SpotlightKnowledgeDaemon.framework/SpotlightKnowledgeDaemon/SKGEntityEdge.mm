@interface SKGEntityEdge
+ (id)edgeFromEntity:(id)entity toNode:(id)node;
@end

@implementation SKGEntityEdge

+ (id)edgeFromEntity:(id)entity toNode:(id)node
{
  entityCopy = entity;
  nodeCopy = node;
  v7 = [(SKGEdge *)[SKGEntityEdge alloc] initWithSourceNode:entityCopy targetNode:nodeCopy];

  return v7;
}

@end