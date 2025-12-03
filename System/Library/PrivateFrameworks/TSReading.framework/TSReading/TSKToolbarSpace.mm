@interface TSKToolbarSpace
+ (id)spaceWithWidth:(double)width;
@end

@implementation TSKToolbarSpace

+ (id)spaceWithWidth:(double)width
{
  v4 = objc_alloc_init(self);
  [v4 setWidth:width];
  return v4;
}

@end