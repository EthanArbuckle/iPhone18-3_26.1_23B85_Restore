@interface SKGPhotoEdge
+ (id)edgeFromPhoto:(id)photo toNode:(id)node;
@end

@implementation SKGPhotoEdge

+ (id)edgeFromPhoto:(id)photo toNode:(id)node
{
  photoCopy = photo;
  nodeCopy = node;
  v7 = [(SKGEdge *)[SKGPhotoEdge alloc] initWithSourceNode:photoCopy targetNode:nodeCopy];

  return v7;
}

@end