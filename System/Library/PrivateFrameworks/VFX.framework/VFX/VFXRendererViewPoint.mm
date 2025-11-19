@interface VFXRendererViewPoint
- ($54B668FA3CFF7C50914A1C899F2834C0)viewport;
- (BOOL)isEqual:(id)a3;
- (__n128)setProjectionMatrix:(__n128)a3;
- (__n128)setViewMatrix:(__n128)a3;
- (unint64_t)hash;
- (void)dealloc;
- (void)setViewport:(id *)a3;
@end

@implementation VFXRendererViewPoint

- ($54B668FA3CFF7C50914A1C899F2834C0)viewport
{
  v3 = *&self->var4;
  *&retstr->var0 = *&self->var2;
  *&retstr->var2 = v3;
  *&retstr->var4 = *&self[1].var0;
  return self;
}

- (void)setViewport:(id *)a3
{
  v3 = *&a3->var0;
  v4 = *&a3->var4;
  *&self->_viewport.width = *&a3->var2;
  *&self->_viewport.znear = v4;
  *&self->_viewport.originX = v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXRendererViewPoint;
  [(VFXRendererViewPoint *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v28 = *&self->_anon_40[16], v31 = *self->_anon_40, v37 = *&self->_anon_40[32], v34 = *&self->_anon_40[48], objc_msgSend_viewMatrix(a3, v5, v6, v7), (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v31, v11), vceqq_f32(v28, v12)), vandq_s8(vceqq_f32(v37, v13), vceqq_f32(v34, v14)))) & 0x80000000) != 0) && (v29 = *&self[1]._viewport.originX, v32 = *&self[1].super.isa, v38 = *&self[1]._viewport.width, v35 = *&self[1]._viewport.znear, objc_msgSend_projectionMatrix(a3, v8, v9, v10), (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v32, v18), vceqq_f32(v29, v19)), vandq_s8(vceqq_f32(v38, v20), vceqq_f32(v35, v21)))) & 0x80000000) != 0))
  {
    v30 = *&self->_anon_40[16];
    v33 = *self->_anon_40;
    v39 = *&self->_anon_40[32];
    v36 = *&self->_anon_40[48];
    objc_msgSend_viewMatrix(a3, v15, v16, v17);
    return vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v33, v23), vceqq_f32(v30, v24)), vandq_s8(vceqq_f32(v39, v25), vceqq_f32(v36, v26)))) >> 31;
  }

  else
  {
    LOBYTE(v22) = 0;
  }

  return v22;
}

- (unint64_t)hash
{
  v2 = 0;
  v3 = 0x9E3779B185EBCA87;
  v4 = 0x9E3779B185EBCA87;
  do
  {
    v5 = 0;
    v6 = *&self->_anon_40[16 * v2];
    do
    {
      v19 = v6;
      v7 = v4 ^ *(&v19 & 0xFFFFFFFFFFFFFFF3 | (4 * (v5 & 3)));
      v4 = (0x93EA75A780000000 * v7) | ((0xC2B2AE3D27D4EB4FLL * v7) >> 33);
      ++v5;
    }

    while (v5 != 4);
    ++v2;
  }

  while (v2 != 4);
  for (i = 0; i != 4; ++i)
  {
    v9 = 0;
    v10 = *(&self[1].super.isa + i);
    do
    {
      v18 = v10;
      v11 = v3 ^ *(&v18 & 0xFFFFFFFFFFFFFFF3 | (4 * (v9 & 3)));
      v3 = (0x93EA75A780000000 * v11) | ((0xC2B2AE3D27D4EB4FLL * v11) >> 33);
      ++v9;
    }

    while (v9 != 4);
  }

  v12 = ((0x93EA75A780000000 * (*&self->_viewport.originX ^ 0x9E3779B185EBCA87)) | ((0xC2B2AE3D27D4EB4FLL * (*&self->_viewport.originX ^ 0x9E3779B185EBCA87)) >> 33)) ^ *&self->_viewport.originY;
  v13 = ((0x93EA75A780000000 * v12) | ((0xC2B2AE3D27D4EB4FLL * v12) >> 33)) ^ *&self->_viewport.width;
  v14 = ((0x93EA75A780000000 * v13) | ((0xC2B2AE3D27D4EB4FLL * v13) >> 33)) ^ *&self->_viewport.height;
  v15 = ((0x93EA75A780000000 * v14) | ((0xC2B2AE3D27D4EB4FLL * v14) >> 33)) ^ *&self->_viewport.znear;
  v16 = ((0x93EA75A780000000 * v15) | ((0xC2B2AE3D27D4EB4FLL * v15) >> 33)) ^ *&self->_viewport.zfar;
  return v4 ^ v3 ^ ((0x93EA75A780000000 * v16) | ((0xC2B2AE3D27D4EB4FLL * v16) >> 33));
}

- (__n128)setViewMatrix:(__n128)a3
{
  result[4] = a2;
  result[5] = a3;
  result[6] = a4;
  result[7] = a5;
  return result;
}

- (__n128)setProjectionMatrix:(__n128)a3
{
  result[8] = a2;
  result[9] = a3;
  result[10] = a4;
  result[11] = a5;
  return result;
}

@end