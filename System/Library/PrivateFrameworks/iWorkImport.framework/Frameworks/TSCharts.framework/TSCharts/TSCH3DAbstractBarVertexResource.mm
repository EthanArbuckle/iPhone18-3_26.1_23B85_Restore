@interface TSCH3DAbstractBarVertexResource
- (TSCH3DAbstractBarVertexResource)init;
@end

@implementation TSCH3DAbstractBarVertexResource

- (TSCH3DAbstractBarVertexResource)init
{
  v3.receiver = self;
  v3.super_class = TSCH3DAbstractBarVertexResource;
  return [(TSCH3DResource *)&v3 initWithCaching:0];
}

@end