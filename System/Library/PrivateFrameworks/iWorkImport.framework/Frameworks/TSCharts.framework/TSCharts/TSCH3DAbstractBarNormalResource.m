@interface TSCH3DAbstractBarNormalResource
- (TSCH3DAbstractBarNormalResource)init;
@end

@implementation TSCH3DAbstractBarNormalResource

- (TSCH3DAbstractBarNormalResource)init
{
  v3.receiver = self;
  v3.super_class = TSCH3DAbstractBarNormalResource;
  return [(TSCH3DResource *)&v3 initWithCaching:0];
}

@end