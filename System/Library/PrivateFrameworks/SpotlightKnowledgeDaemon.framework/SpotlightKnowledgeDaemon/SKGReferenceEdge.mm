@interface SKGReferenceEdge
+ (id)edgeFromReference:(id)reference toNode:(id)node;
@end

@implementation SKGReferenceEdge

+ (id)edgeFromReference:(id)reference toNode:(id)node
{
  referenceCopy = reference;
  nodeCopy = node;
  v7 = [(SKGEdge *)[SKGReferenceEdge alloc] initWithSourceNode:referenceCopy targetNode:nodeCopy];

  return v7;
}

@end