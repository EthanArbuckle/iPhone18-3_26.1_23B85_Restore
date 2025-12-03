@interface SKGNameKeyEdge
+ (id)edgeFromNameKey:(id)key toNode:(id)node;
@end

@implementation SKGNameKeyEdge

+ (id)edgeFromNameKey:(id)key toNode:(id)node
{
  keyCopy = key;
  nodeCopy = node;
  v7 = [(SKGEdge *)[SKGNameKeyEdge alloc] initWithSourceNode:keyCopy targetNode:nodeCopy];

  return v7;
}

@end