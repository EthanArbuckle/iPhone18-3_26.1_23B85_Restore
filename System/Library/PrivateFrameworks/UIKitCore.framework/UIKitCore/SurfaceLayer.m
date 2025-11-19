@interface SurfaceLayer
- (id)actionForKey:(id)a3;
@end

@implementation SurfaceLayer

- (id)actionForKey:(id)a3
{
  if ([a3 isEqualToString:@"contents"])
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = SurfaceLayer;
  return [(SurfaceLayer *)&v6 actionForKey:a3];
}

@end