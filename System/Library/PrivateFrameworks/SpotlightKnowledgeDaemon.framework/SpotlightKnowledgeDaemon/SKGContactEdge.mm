@interface SKGContactEdge
+ (id)edgeFromContact:(id)contact toNode:(id)node;
@end

@implementation SKGContactEdge

+ (id)edgeFromContact:(id)contact toNode:(id)node
{
  contactCopy = contact;
  nodeCopy = node;
  v7 = [(SKGEdge *)[SKGContactEdge alloc] initWithSourceNode:contactCopy targetNode:nodeCopy];

  return v7;
}

@end