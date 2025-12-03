@interface USKXFormOp
- (USKXFormOp)initWithOperation:(UsdGeomXformOp *)operation atTime:(double)time;
- (USKXFormOp)initWithRotationX:(float)x;
- (USKXFormOp)initWithRotationXYZ:(USKXFormOp *)self;
- (USKXFormOp)initWithRotationXZY:(USKXFormOp *)self;
- (USKXFormOp)initWithRotationY:(float)y;
- (USKXFormOp)initWithRotationYXZ:(USKXFormOp *)self;
- (USKXFormOp)initWithRotationYZX:(USKXFormOp *)self;
- (USKXFormOp)initWithRotationZ:(float)z;
- (USKXFormOp)initWithRotationZXY:(USKXFormOp *)self;
- (USKXFormOp)initWithRotationZYX:(USKXFormOp *)self;
- (USKXFormOp)initWithScale:(USKXFormOp *)self;
- (USKXFormOp)initWithTranslation:(USKXFormOp *)self;
- (UsdGeomXformOp)addToXformable:(SEL)xformable;
- (double)matrixValue;
- (double)quatValue;
- (double)vectorValue;
- (uint64_t)initWithOrientation:(void *)orientation;
- (uint64_t)initWithTransform:(__n128)transform;
@end

@implementation USKXFormOp

- (USKXFormOp)initWithOperation:(UsdGeomXformOp *)operation atTime:(double)time
{
  v9.receiver = self;
  v9.super_class = USKXFormOp;
  v6 = [(USKXFormOp *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_opType = *(&operation->var0.var0.var0.var2.var2 + 32);
    v6->_precision = pxrInternal__aapl__pxrReserved__::UsdGeomXformOp::GetPrecision(operation);
    sub_270312BD4(operation, &v7->_value, time);
  }

  return v7;
}

- (USKXFormOp)initWithTranslation:(USKXFormOp *)self
{
  v7 = *MEMORY[0x277D85DE8];
  v5.receiver = self;
  v5.super_class = USKXFormOp;
  v2 = [(USKXFormOp *)&v5 init];
  if (v2)
  {
    *&v2->_opType = 0x100000004;
    v6 = &off_28803FBF8 + 2;
    operator new();
  }

  v3 = *MEMORY[0x277D85DE8];
  return 0;
}

- (USKXFormOp)initWithScale:(USKXFormOp *)self
{
  v7 = *MEMORY[0x277D85DE8];
  v5.receiver = self;
  v5.super_class = USKXFormOp;
  v2 = [(USKXFormOp *)&v5 init];
  if (v2)
  {
    *&v2->_opType = 0x100000008;
    v6 = &off_28803FBF8 + 2;
    operator new();
  }

  v3 = *MEMORY[0x277D85DE8];
  return 0;
}

- (USKXFormOp)initWithRotationX:(float)x
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = USKXFormOp;
  v4 = [(USKXFormOp *)&v8 init];
  v5 = v4;
  if (v4)
  {
    *&v4->_opType = 0x100000009;
    v9[1] = &unk_28803FCC3;
    *v9 = x;
    sub_270312D2C(&v4->_value._storage, v9);
    sub_270311D34(v9);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

- (USKXFormOp)initWithRotationY:(float)y
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = USKXFormOp;
  v4 = [(USKXFormOp *)&v8 init];
  v5 = v4;
  if (v4)
  {
    *&v4->_opType = 0x10000000ALL;
    v9[1] = &unk_28803FCC3;
    *v9 = y;
    sub_270312D2C(&v4->_value._storage, v9);
    sub_270311D34(v9);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

- (USKXFormOp)initWithRotationZ:(float)z
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = USKXFormOp;
  v4 = [(USKXFormOp *)&v8 init];
  v5 = v4;
  if (v4)
  {
    *&v4->_opType = 0x10000000BLL;
    v9[1] = &unk_28803FCC3;
    *v9 = z;
    sub_270312D2C(&v4->_value._storage, v9);
    sub_270311D34(v9);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

- (USKXFormOp)initWithRotationXYZ:(USKXFormOp *)self
{
  v7 = *MEMORY[0x277D85DE8];
  v5.receiver = self;
  v5.super_class = USKXFormOp;
  v2 = [(USKXFormOp *)&v5 init];
  if (v2)
  {
    *&v2->_opType = 0x10000000CLL;
    v6 = &off_28803FBF8 + 2;
    operator new();
  }

  v3 = *MEMORY[0x277D85DE8];
  return 0;
}

- (USKXFormOp)initWithRotationXZY:(USKXFormOp *)self
{
  v7 = *MEMORY[0x277D85DE8];
  v5.receiver = self;
  v5.super_class = USKXFormOp;
  v2 = [(USKXFormOp *)&v5 init];
  if (v2)
  {
    *&v2->_opType = 0x10000000CLL;
    v6 = &off_28803FBF8 + 2;
    operator new();
  }

  v3 = *MEMORY[0x277D85DE8];
  return 0;
}

- (USKXFormOp)initWithRotationYXZ:(USKXFormOp *)self
{
  v7 = *MEMORY[0x277D85DE8];
  v5.receiver = self;
  v5.super_class = USKXFormOp;
  v2 = [(USKXFormOp *)&v5 init];
  if (v2)
  {
    *&v2->_opType = 0x10000000ELL;
    v6 = &off_28803FBF8 + 2;
    operator new();
  }

  v3 = *MEMORY[0x277D85DE8];
  return 0;
}

- (USKXFormOp)initWithRotationYZX:(USKXFormOp *)self
{
  v7 = *MEMORY[0x277D85DE8];
  v5.receiver = self;
  v5.super_class = USKXFormOp;
  v2 = [(USKXFormOp *)&v5 init];
  if (v2)
  {
    *&v2->_opType = 0x10000000FLL;
    v6 = &off_28803FBF8 + 2;
    operator new();
  }

  v3 = *MEMORY[0x277D85DE8];
  return 0;
}

- (USKXFormOp)initWithRotationZXY:(USKXFormOp *)self
{
  v7 = *MEMORY[0x277D85DE8];
  v5.receiver = self;
  v5.super_class = USKXFormOp;
  v2 = [(USKXFormOp *)&v5 init];
  if (v2)
  {
    *&v2->_opType = 0x100000010;
    v6 = &off_28803FBF8 + 2;
    operator new();
  }

  v3 = *MEMORY[0x277D85DE8];
  return 0;
}

- (USKXFormOp)initWithRotationZYX:(USKXFormOp *)self
{
  v7 = *MEMORY[0x277D85DE8];
  v5.receiver = self;
  v5.super_class = USKXFormOp;
  v2 = [(USKXFormOp *)&v5 init];
  if (v2)
  {
    *&v2->_opType = 0x100000011;
    v6 = &off_28803FBF8 + 2;
    operator new();
  }

  v3 = *MEMORY[0x277D85DE8];
  return 0;
}

- (uint64_t)initWithOrientation:(void *)orientation
{
  v7 = *MEMORY[0x277D85DE8];
  v5.receiver = orientation;
  v5.super_class = USKXFormOp;
  v2 = [(USKXFormOp *)&v5 init];
  if (v2)
  {
    *&v2->_opType = 0x100000012;
    v6 = &off_28803FD78;
    operator new();
  }

  v3 = *MEMORY[0x277D85DE8];
  return 0;
}

- (uint64_t)initWithTransform:(__n128)transform
{
  v10 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = USKXFormOp;
  v5 = [(USKXFormOp *)&v8 init:*&a2];
  if (v5)
  {
    *&v5->_opType = 19;
    v9 = &off_28803FE40 + 2;
    operator new();
  }

  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

- (double)vectorValue
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4 = 0;
  v3 = 0.0;
  sub_270313C14(v5, (self + 16));
  sub_270313B0C(v5, &v3);
  sub_270311D34(v5);
  result = v3;
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

- (double)quatValue
{
  v8[2] = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  sub_270313C14(v8, (self + 16));
  sub_270313DC0(v8, v7);
  sub_270311D34(v8);
  pxrInternal__aapl__pxrReserved__::GfRotation::GetQuat(v7);
  v1 = *MEMORY[0x277D85DE8];
  v3.f64[1] = v2;
  v5.f64[1] = v4;
  *&result = vcvt_hight_f32_f64(vcvt_f32_f64(v3), v5).u64[0];
  return result;
}

- (double)matrixValue
{
  v5[2] = *MEMORY[0x277D85DE8];
  memset(v4, 0, sizeof(v4));
  v1 = sub_270313C14(v5, (self + 16));
  sub_270313F58(v1, v4);
  sub_270311D34(v5);
  result = *v4;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

- (UsdGeomXformOp)addToXformable:(SEL)xformable
{
  retstr->var0.var0.var0.var2.var1.var0.var2.var0 = 0;
  *(&retstr->var0.var0.var0.var2.var2 + 6) = 0u;
  *(&retstr->var0.var0.var0.var2.var2 + 7) = 0u;
  *(&retstr->var0.var0.var0.var2.var2 + 4) = 0u;
  *(&retstr->var0.var0.var0.var2.var2 + 5) = 0u;
  *(&retstr->var0.var0.var0.var2.var2 + 2) = 0u;
  *(&retstr->var0.var0.var0.var2.var2 + 3) = 0u;
  *&retstr->var0.var0.var0.var0 = 0u;
  *(&retstr->var0.var0.var0.var2.var2 + 1) = 0u;
  opType = self->_opType;
  precision = self->_precision;
  pxrInternal__aapl__pxrReserved__::UsdGeomXformable::AddXformOp();
  return sub_270314128(retstr);
}

@end