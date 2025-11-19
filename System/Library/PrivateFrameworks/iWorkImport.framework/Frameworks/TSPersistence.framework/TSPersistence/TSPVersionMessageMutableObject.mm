@interface TSPVersionMessageMutableObject
- (TSPVersionMessageMutableObject)initWithVersionMessage:(void *)a3;
@end

@implementation TSPVersionMessageMutableObject

- (TSPVersionMessageMutableObject)initWithVersionMessage:(void *)a3
{
  v5.receiver = self;
  v5.super_class = TSPVersionMessageMutableObject;
  result = [(TSPVersionMessageMutableObject *)&v5 init];
  if (result)
  {
    result->_versionMessage = a3;
  }

  return result;
}

@end