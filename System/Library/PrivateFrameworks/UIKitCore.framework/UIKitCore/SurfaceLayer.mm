@interface SurfaceLayer
- (id)actionForKey:(id)key;
@end

@implementation SurfaceLayer

- (id)actionForKey:(id)key
{
  if ([key isEqualToString:@"contents"])
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = SurfaceLayer;
  return [(SurfaceLayer *)&v6 actionForKey:key];
}

@end