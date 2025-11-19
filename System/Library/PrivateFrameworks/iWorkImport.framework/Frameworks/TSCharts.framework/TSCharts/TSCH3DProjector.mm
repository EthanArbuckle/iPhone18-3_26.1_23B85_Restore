@interface TSCH3DProjector
+ (id)projectorWithProjection:(void *)a3 transform:(void *)a4;
- (TSCH3DProjector)initWithProjection:(void *)a3 transform:(void *)a4;
- (id).cxx_construct;
- (line<glm::detail::tvec3<float>>)objectSpaceLineFromPoint:(SEL)a3;
@end

@implementation TSCH3DProjector

+ (id)projectorWithProjection:(void *)a3 transform:(void *)a4
{
  v6 = [a1 alloc];
  v11 = objc_msgSend_initWithProjection_transform_(v6, v7, v8, v9, v10, a3, a4);

  return v11;
}

- (TSCH3DProjector)initWithProjection:(void *)a3 transform:(void *)a4
{
  v12.receiver = self;
  v12.super_class = TSCH3DProjector;
  v6 = [(TSCH3DProjector *)&v12 init];
  v7 = v6;
  if (v6)
  {
    *(v6 + 2) = *a3;
    *(v6 + 3) = *(a3 + 1);
    *(v6 + 4) = *(a3 + 2);
    *(v6 + 5) = *(a3 + 3);
    *(v6 + 6) = *(a3 + 4);
    *(v6 + 7) = *(a3 + 5);
    *(v6 + 8) = *(a3 + 6);
    *(v6 + 9) = *(a3 + 7);
    *(v6 + 10) = *(a3 + 8);
    *(v6 + 11) = *(a3 + 9);
    *(v6 + 12) = *(a3 + 10);
    *(v6 + 13) = *(a3 + 11);
    *(v6 + 14) = *(a3 + 12);
    *(v6 + 15) = *(a3 + 13);
    *(v6 + 16) = *(a3 + 14);
    *(v6 + 17) = *(a3 + 15);
    *(v6 + 18) = *a4;
    *(v6 + 19) = *(a4 + 1);
    *(v6 + 20) = *(a4 + 2);
    *(v6 + 21) = *(a4 + 3);
    *(v6 + 22) = *(a4 + 4);
    *(v6 + 23) = *(a4 + 5);
    *(v6 + 24) = *(a4 + 6);
    *(v6 + 25) = *(a4 + 7);
    *(v6 + 26) = *(a4 + 8);
    *(v6 + 27) = *(a4 + 9);
    *(v6 + 28) = *(a4 + 10);
    *(v6 + 29) = *(a4 + 11);
    *(v6 + 30) = *(a4 + 12);
    *(v6 + 31) = *(a4 + 13);
    *(v6 + 32) = *(a4 + 14);
    *(v6 + 33) = *(a4 + 15);
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

- (line<glm::detail::tvec3<float>>)objectSpaceLineFromPoint:(SEL)a3
{
  v9 = objc_msgSend_combined(self, a3, v4, v5, v6);

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