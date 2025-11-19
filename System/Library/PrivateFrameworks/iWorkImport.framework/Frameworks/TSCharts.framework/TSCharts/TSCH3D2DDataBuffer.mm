@interface TSCH3D2DDataBuffer
+ (id)bufferWithCapacityDimension:(const void *)a3;
+ (id)bufferWithCapacitySize:(void *)a3 components:(unint64_t)a4;
- (DataBufferLevelData)dataAtLevel:(SEL)a3;
- (TSCH3D2DDataBuffer)initWithCapacityDimension:(const void *)a3;
- (id).cxx_construct;
- (tvec3<int>)size;
@end

@implementation TSCH3D2DDataBuffer

+ (id)bufferWithCapacitySize:(void *)a3 components:(unint64_t)a4
{
  v8[0] = *a3;
  *&v8[1] = a4;
  v9 = 0;
  v6 = objc_msgSend_bufferWithCapacityDimension_(a1, a2, v8[0], v4, v5, v8);

  return v6;
}

+ (id)bufferWithCapacityDimension:(const void *)a3
{
  v4 = [a1 alloc];
  v9 = objc_msgSend_initWithCapacityDimension_(v4, v5, v6, v7, v8, a3);

  return v9;
}

- (TSCH3D2DDataBuffer)initWithCapacityDimension:(const void *)a3
{
  v6.receiver = self;
  v6.super_class = TSCH3D2DDataBuffer;
  result = [(TSCH3D2DDataBuffer *)&v6 init];
  if (result)
  {
    result->_dimension._size.var0.var0 = *a3;
    result->_dimension._size.var1.var0 = *(a3 + 1);
    v5 = *(a3 + 1);
    result->_dimension._hasLevels = *(a3 + 16);
    result->_dimension._components = v5;
  }

  return result;
}

- (tvec3<int>)size
{
  *v2 = self->_dimension._size;
  v2[1].var0.var0 = 1;
  result.var2 = a2;
  result.var0 = self;
  result.var1 = *(&self + 4);
  return result;
}

- (DataBufferLevelData)dataAtLevel:(SEL)a3
{
  result = objc_msgSend_data(self, a3, v4, v5, v6);
  p_dimension = &self->_dimension;
  v12 = 0;
  if (a4 >= 1)
  {
    v13 = 0;
    do
    {
      if (v13)
      {
        if (!self->_dimension._hasLevels)
        {
          break;
        }

        v14 = self->_dimension._components * (self->_dimension._size.var1.var0 >> v13) * (p_dimension->i32[0] >> v13);
      }

      else
      {
        v14 = self->_dimension._components * self->_dimension._size.var1.var0 * self->_dimension._size.var0.var0;
      }

      v12 += v14;
      if (a4 - 1 == v13)
      {
        break;
      }

      ++v13;
    }

    while (v14);
  }

  retstr->var0 = result + v12;
  *&retstr->var1.var0.var0 = vshl_s32(*p_dimension, vneg_s32(vdup_n_s32(a4)));
  retstr->var1.var2.var0 = 1;
  return result;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 24) = 0;
  return self;
}

@end