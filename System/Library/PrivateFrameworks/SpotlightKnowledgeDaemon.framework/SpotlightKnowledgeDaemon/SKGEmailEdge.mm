@interface SKGEmailEdge
+ (id)edgeFromEmail:(id)email toNode:(id)node;
@end

@implementation SKGEmailEdge

+ (id)edgeFromEmail:(id)email toNode:(id)node
{
  emailCopy = email;
  nodeCopy = node;
  v7 = [(SKGEdge *)[SKGEmailEdge alloc] initWithSourceNode:emailCopy targetNode:nodeCopy];

  return v7;
}

@end