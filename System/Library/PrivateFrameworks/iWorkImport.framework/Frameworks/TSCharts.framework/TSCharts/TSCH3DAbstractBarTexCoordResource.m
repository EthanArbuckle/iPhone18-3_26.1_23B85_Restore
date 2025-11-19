@interface TSCH3DAbstractBarTexCoordResource
- (TSCH3DAbstractBarTexCoordResource)init;
@end

@implementation TSCH3DAbstractBarTexCoordResource

- (TSCH3DAbstractBarTexCoordResource)init
{
  v3.receiver = self;
  v3.super_class = TSCH3DAbstractBarTexCoordResource;
  return [(TSCH3DResource *)&v3 initWithCaching:0];
}

@end