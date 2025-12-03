@interface SKGNameEdge
+ (id)edgeFromName:(id)name toNode:(id)node;
@end

@implementation SKGNameEdge

+ (id)edgeFromName:(id)name toNode:(id)node
{
  nameCopy = name;
  nodeCopy = node;
  v7 = [(SKGEdge *)[SKGNameEdge alloc] initWithSourceNode:nameCopy targetNode:nodeCopy];

  return v7;
}

@end