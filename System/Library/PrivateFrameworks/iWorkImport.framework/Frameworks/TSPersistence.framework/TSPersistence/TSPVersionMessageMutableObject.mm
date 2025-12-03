@interface TSPVersionMessageMutableObject
- (TSPVersionMessageMutableObject)initWithVersionMessage:(void *)message;
@end

@implementation TSPVersionMessageMutableObject

- (TSPVersionMessageMutableObject)initWithVersionMessage:(void *)message
{
  v5.receiver = self;
  v5.super_class = TSPVersionMessageMutableObject;
  result = [(TSPVersionMessageMutableObject *)&v5 init];
  if (result)
  {
    result->_versionMessage = message;
  }

  return result;
}

@end