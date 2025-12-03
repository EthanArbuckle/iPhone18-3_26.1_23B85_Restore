@interface SKGPersonEdge
+ (id)edgeFromPerson:(id)person toNode:(id)node;
@end

@implementation SKGPersonEdge

+ (id)edgeFromPerson:(id)person toNode:(id)node
{
  personCopy = person;
  nodeCopy = node;
  v7 = [(SKGEdge *)[SKGPersonEdge alloc] initWithSourceNode:personCopy targetNode:nodeCopy];

  return v7;
}

@end