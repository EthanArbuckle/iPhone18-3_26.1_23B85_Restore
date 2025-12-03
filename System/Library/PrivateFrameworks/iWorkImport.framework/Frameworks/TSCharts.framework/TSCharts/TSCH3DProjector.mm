@interface TSCH3DProjector
+ (id)projectorWithProjection:(void *)projection transform:(void *)transform;
- (TSCH3DProjector)initWithProjection:(void *)projection transform:(void *)transform;
- (id).cxx_construct;
- (line<glm::detail::tvec3<float>>)objectSpaceLineFromPoint:(SEL)point;
@end

@implementation TSCH3DProjector

+ (id)projectorWithProjection:(void *)projection transform:(void *)transform
{
  v6 = [self alloc];
  v11 = objc_msgSend_initWithProjection_transform_(v6, v7, v8, v9, v10, projection, transform);

  return v11;
}

- (TSCH3DProjector)initWithProjection:(void *)projection transform:(void *)transform
{
  v12.receiver = self;
  v12.super_class = TSCH3DProjector;
  v6 = [(TSCH3DProjector *)&v12 init];
  v7 = v6;
  if (v6)
  {
    *(v6 + 2) = *projection;
    *(v6 + 3) = *(projection + 1);
    *(v6 + 4) = *(projection + 2);
    *(v6 + 5) = *(projection + 3);
    *(v6 + 6) = *(projection + 4);
    *(v6 + 7) = *(projection + 5);
    *(v6 + 8) = *(projection + 6);
    *(v6 + 9) = *(projection + 7);
    *(v6 + 10) = *(projection + 8);
    *(v6 + 11) = *(projection + 9);
    *(v6 + 12) = *(projection + 10);
    *(v6 + 13) = *(projection + 11);
    *(v6 + 14) = *(projection + 12);
    *(v6 + 15) = *(projection + 13);
    *(v6 + 16) = *(projection + 14);
    *(v6 + 17) = *(projection + 15);
    *(v6 + 18) = *transform;
    *(v6 + 19) = *(transform + 1);
    *(v6 + 20) = *(transform + 2);
    *(v6 + 21) = *(transform + 3);
    *(v6 + 22) = *(transform + 4);
    *(v6 + 23) = *(transform + 5);
    *(v6 + 24) = *(transform + 6);
    *(v6 + 25) = *(transform + 7);
    *(v6 + 26) = *(transform + 8);
    *(v6 + 27) = *(transform + 9);
    *(v6 + 28) = *(transform + 10);
    *(v6 + 29) = *(transform + 11);
    *(v6 + 30) = *(transform + 12);
    *(v6 + 31) = *(transform + 13);
    *(v6 + 32) = *(transform + 14);
    *(v6 + 33) = *(transform + 15);
    sub_2761558A0((v6 + 8), (v6 + 72), v11);
    v8 = v11[1];
    *(v7 + 136) = v11[0];
    *(v7 + 152) = v8;
    v9 = v11[3];
    *(v7 + 168) = v11[2];
    *(v7 + 184) = v9;
  }

  return v7;
}

- (line<glm::detail::tvec3<float>>)objectSpaceLineFromPoint:(SEL)point
{
  v9 = objc_msgSend_combined(self, point, v4, v5, v6);

  sub_276154AF4(a4, v9, retstr, v10);
  return result;
}

- (id).cxx_construct
{
  *(self + 2) = 1065353216;
  *(self + 20) = 0;
  *(self + 12) = 0;
  *(self + 7) = 1065353216;
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 12) = 1065353216;
  *(self + 60) = 0;
  *(self + 52) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(self + 68) = _D0;
  *(self + 84) = 0;
  *(self + 76) = 0;
  *(self + 23) = 1065353216;
  *(self + 12) = 0;
  *(self + 13) = 0;
  *(self + 28) = 1065353216;
  *(self + 116) = 0;
  *(self + 124) = 0;
  *(self + 132) = _D0;
  *(self + 148) = 0;
  *(self + 140) = 0;
  *(self + 39) = 1065353216;
  *(self + 20) = 0;
  *(self + 21) = 0;
  *(self + 44) = 1065353216;
  *(self + 180) = 0;
  *(self + 188) = 0;
  *(self + 49) = 1065353216;
  return self;
}

@end