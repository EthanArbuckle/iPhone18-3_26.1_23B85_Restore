@interface TSKToolbarSpace
+ (id)spaceWithWidth:(double)a3;
@end

@implementation TSKToolbarSpace

+ (id)spaceWithWidth:(double)a3
{
  v4 = objc_alloc_init(a1);
  [v4 setWidth:a3];
  return v4;
}

@end