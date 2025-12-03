@interface SKGUserEdge
+ (id)edgeFromUser:(id)user toNode:(id)node;
@end

@implementation SKGUserEdge

+ (id)edgeFromUser:(id)user toNode:(id)node
{
  userCopy = user;
  nodeCopy = node;
  v7 = [(SKGEdge *)[SKGUserEdge alloc] initWithSourceNode:userCopy targetNode:nodeCopy];

  return v7;
}

@end