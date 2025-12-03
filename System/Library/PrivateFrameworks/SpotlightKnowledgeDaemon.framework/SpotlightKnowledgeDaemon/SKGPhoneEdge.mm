@interface SKGPhoneEdge
+ (id)edgeFromPhone:(id)phone toNode:(id)node;
@end

@implementation SKGPhoneEdge

+ (id)edgeFromPhone:(id)phone toNode:(id)node
{
  phoneCopy = phone;
  nodeCopy = node;
  v7 = [(SKGEdge *)[SKGPhoneEdge alloc] initWithSourceNode:phoneCopy targetNode:nodeCopy];

  return v7;
}

@end