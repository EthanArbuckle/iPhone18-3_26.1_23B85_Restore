@interface RS2DPolygon
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation RS2DPolygon

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  isa = self[1].super.isa;
  v9 = (self[2].super.isa - isa) >> 3;

  return sub_26230E988(v7, v9, isa);
}

@end