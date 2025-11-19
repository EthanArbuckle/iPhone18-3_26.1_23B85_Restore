@interface VUIProductBadgeResource
- (VUIProductBadgeResource)init;
@end

@implementation VUIProductBadgeResource

- (VUIProductBadgeResource)init
{
  v3.receiver = self;
  v3.super_class = VUIProductBadgeResource;
  result = [(VUIProductBadgeResource *)&v3 init];
  if (result)
  {
    result->_templated = 1;
  }

  return result;
}

@end