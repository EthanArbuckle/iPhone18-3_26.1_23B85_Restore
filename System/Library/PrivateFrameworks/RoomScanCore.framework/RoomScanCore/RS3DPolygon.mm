@interface RS3DPolygon
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation RS3DPolygon

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  if (!v7)
  {
    return 0;
  }

  v10 = self + 1;
  isa = self[1].super.isa;
  v9 = v10[1].super.isa;
  v15.receiver = v7;
  v15.super_class = RS3DPolygon;
  v11 = [(RS3DPolygon *)&v15 init];
  v12 = v11;
  if (v11)
  {
    v13 = v9 - isa;
    sub_262232448(v11 + 1, v13 >> 4);
    memcpy(v12[1], isa, v13);
  }

  return v12;
}

@end