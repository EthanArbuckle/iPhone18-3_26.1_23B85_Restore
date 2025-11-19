@interface TSCH3DTexCoordGeneration
- (TSCH3DTexCoordGeneration)init;
- (TSCH3DTexCoordGeneration)initWithTransform:(const void *)a3;
- (id).cxx_construct;
@end

@implementation TSCH3DTexCoordGeneration

- (TSCH3DTexCoordGeneration)init
{
  v18.receiver = self;
  v18.super_class = TSCH3DTexCoordGeneration;
  v2 = [(TSCH3DTexCoordGeneration *)&v18 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 2) = 1065353216;
    *(v2 + 20) = 0;
    *(v2 + 12) = 0;
    *(v2 + 7) = 1065353216;
    *(v2 + 4) = 0;
    *(v2 + 5) = 0;
    *(v2 + 12) = 1065353216;
    *(v2 + 60) = 0;
    *(v2 + 52) = 0;
    *(v2 + 17) = 1065353216;
    v4 = [TSCH3DDefaultNormalDirectionMapper alloc];
    __asm { FMOV            V0.2S, #1.0 }

    v16 = _D0;
    v17 = 1065353216;
    v13 = objc_msgSend_initWithNormalBias_(v4, v10, _D0, v11, v12, &v16);
    normalDirectionMapper = v3->_normalDirectionMapper;
    v3->_normalDirectionMapper = v13;
  }

  return v3;
}

- (TSCH3DTexCoordGeneration)initWithTransform:(const void *)a3
{
  result = objc_msgSend_init(self, a2, v3, v4, v5);
  if (result)
  {
    result->_transform.value[0].var0.var0 = *a3;
    result->_transform.value[0].var1.var0 = *(a3 + 1);
    result->_transform.value[0].var2.var0 = *(a3 + 2);
    result->_transform.value[0].var3.var0 = *(a3 + 3);
    result->_transform.value[1].var0.var0 = *(a3 + 4);
    result->_transform.value[1].var1.var0 = *(a3 + 5);
    result->_transform.value[1].var2.var0 = *(a3 + 6);
    result->_transform.value[1].var3.var0 = *(a3 + 7);
    result->_transform.value[2].var0.var0 = *(a3 + 8);
    result->_transform.value[2].var1.var0 = *(a3 + 9);
    result->_transform.value[2].var2.var0 = *(a3 + 10);
    result->_transform.value[2].var3.var0 = *(a3 + 11);
    result->_transform.value[3].var0.var0 = *(a3 + 12);
    result->_transform.value[3].var1.var0 = *(a3 + 13);
    result->_transform.value[3].var2.var0 = *(a3 + 14);
    result->_transform.value[3].var3.var0 = *(a3 + 15);
  }

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
  *(self + 17) = 1065353216;
  return self;
}

@end