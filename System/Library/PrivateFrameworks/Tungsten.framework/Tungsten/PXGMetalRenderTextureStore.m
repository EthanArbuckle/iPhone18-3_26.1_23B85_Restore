@interface PXGMetalRenderTextureStore
- (PXGMetalRenderTextureStore)init;
- (void)_sortIfNeeded;
- (void)addTexture:(id *)a3;
- (void)dealloc;
- (void)drawWithOrder:(unint64_t)a3 enumerationBlock:(id)a4;
- (void)prepareForRender;
@end

@implementation PXGMetalRenderTextureStore

- (PXGMetalRenderTextureStore)init
{
  v3.receiver = self;
  v3.super_class = PXGMetalRenderTextureStore;
  return [(PXGMetalRenderTextureStore *)&v3 init];
}

- (void)prepareForRender
{
  count = self->_count;
  v3 = count - 1;
  if (count >= 1)
  {
    textures = self->_textures;
    v5 = (count + 15) & 0xFFFFFFFFFFFFFFF0;
    v6 = xmmword_21AE2D3A0;
    v7 = xmmword_21AE2D3B0;
    v8 = xmmword_21AE2D3C0;
    v9 = xmmword_21AE2D3D0;
    v10 = xmmword_21AE2D330;
    v11 = xmmword_21AE2D340;
    v12 = xmmword_21AE2D350;
    v13 = xmmword_21AE2D360;
    v14 = vdupq_n_s64(v3);
    v15 = vdupq_n_s64(0x10uLL);
    do
    {
      v16 = vmovn_s64(vcgeq_u64(v14, v13));
      if (vuzp1_s8(vuzp1_s16(v16, *v6.i8), *v6.i8).u8[0])
      {
        BYTE6(textures[1].var1) = 0;
      }

      if (vuzp1_s8(vuzp1_s16(v16, *&v6), *&v6).i8[1])
      {
        BYTE6(textures[2].var2.length) = 0;
      }

      if (vuzp1_s8(vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v14, *&v12))), *&v6).i8[2])
      {
        *(&textures[3].var8 + 3) = 0;
        BYTE6(textures[5].var1) = 0;
      }

      v17 = vmovn_s64(vcgeq_u64(v14, v11));
      if (vuzp1_s8(*&v6, vuzp1_s16(v17, *&v6)).i32[1])
      {
        BYTE6(textures[6].var2.length) = 0;
      }

      if (vuzp1_s8(*&v6, vuzp1_s16(v17, *&v6)).i8[5])
      {
        *(&textures[7].var8 + 3) = 0;
      }

      if (vuzp1_s8(*&v6, vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v14, *&v10)))).i8[6])
      {
        BYTE6(textures[9].var1) = 0;
        BYTE6(textures[10].var2.length) = 0;
      }

      v18 = vmovn_s64(vcgeq_u64(v14, v9));
      if (vuzp1_s8(vuzp1_s16(v18, *v6.i8), *v6.i8).u8[0])
      {
        *(&textures[11].var8 + 3) = 0;
      }

      if (vuzp1_s8(vuzp1_s16(v18, *&v6), *&v6).i8[1])
      {
        BYTE6(textures[13].var1) = 0;
      }

      if (vuzp1_s8(vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v14, *&v8))), *&v6).i8[2])
      {
        BYTE6(textures[14].var2.length) = 0;
        *(&textures[15].var8 + 3) = 0;
      }

      v19 = vmovn_s64(vcgeq_u64(v14, v7));
      if (vuzp1_s8(*&v6, vuzp1_s16(v19, *&v6)).i32[1])
      {
        BYTE6(textures[17].var1) = 0;
      }

      if (vuzp1_s8(*&v6, vuzp1_s16(v19, *&v6)).i8[5])
      {
        BYTE6(textures[18].var2.length) = 0;
      }

      if (vuzp1_s8(*&v6, vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v14, *&v6)))).i8[6])
      {
        *(&textures[19].var8 + 3) = 0;
        BYTE6(textures[21].var1) = 0;
      }

      v11 = vaddq_s64(v11, v15);
      v12 = vaddq_s64(v12, v15);
      v13 = vaddq_s64(v13, v15);
      v10 = vaddq_s64(v10, v15);
      v9 = vaddq_s64(v9, v15);
      v8 = vaddq_s64(v8, v15);
      v7 = vaddq_s64(v7, v15);
      textures = (textures + 1024);
      v6 = vaddq_s64(v6, v15);
      v5 -= 16;
    }

    while (v5);
  }
}

- (void)_sortIfNeeded
{
  if (!self->_sorted)
  {
    self->_sorted = 1;
    qsort_b(self->_textures, self->_count, 0x40uLL, &__block_literal_global_5379);
  }
}

- (void)drawWithOrder:(unint64_t)a3 enumerationBlock:(id)a4
{
  v11 = a4;
  [(PXGMetalRenderTextureStore *)self _sortIfNeeded];
  textures = self->_textures;
  count = self->_count;
  if (a3 == 1)
  {
    v8 = v11;
    if (count >= 1)
    {
      do
      {
        (v8)[2](v11, textures);
        v8 = v11;
        textures = (textures + 64);
        --count;
      }

      while (count);
    }
  }

  else
  {
    v8 = v11;
    if (count >= 1)
    {
      v9 = count + 1;
      v10 = &textures[-1] + 64 * count - 16;
      do
      {
        (v8)[2](v11, v10);
        v8 = v11;
        --v9;
        v10 -= 64;
      }

      while (v9 > 1);
    }
  }
}

- (void)addTexture:(id *)a3
{
  count = self->_count;
  capacity = self->_capacity;
  if (count >= capacity)
  {
    v8 = 2 * capacity;
    v9 = capacity == 0;
    v10 = 16;
    if (!v9)
    {
      v10 = v8;
    }

    self->_capacity = v10;
    textures = malloc_type_realloc(self->_textures, v10 << 6, 0x42760281uLL);
    self->_textures = textures;
  }

  else
  {
    textures = self->_textures;
  }

  v11 = (textures + 64 * count);
  v12 = *&a3->var0;
  var2 = a3->var2;
  v14 = *&a3[1].var0;
  v11[2] = *&a3->var3;
  v11[3] = v14;
  *v11 = v12;
  v11[1] = var2;
  self->_count = count + 1;
  self->_sorted = 0;
}

- (void)dealloc
{
  free(self->_textures);
  v3.receiver = self;
  v3.super_class = PXGMetalRenderTextureStore;
  [(PXGMetalRenderTextureStore *)&v3 dealloc];
}

@end