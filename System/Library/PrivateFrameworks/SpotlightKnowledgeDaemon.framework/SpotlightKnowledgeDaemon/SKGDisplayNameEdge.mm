@interface SKGDisplayNameEdge
+ (id)edgeFromDisplayName:(id)name toNode:(id)node;
@end

@implementation SKGDisplayNameEdge

+ (id)edgeFromDisplayName:(id)name toNode:(id)node
{
  nameCopy = name;
  nodeCopy = node;
  v7 = [(SKGEdge *)[SKGDisplayNameEdge alloc] initWithSourceNode:nameCopy targetNode:nodeCopy];

  return v7;
}

@end