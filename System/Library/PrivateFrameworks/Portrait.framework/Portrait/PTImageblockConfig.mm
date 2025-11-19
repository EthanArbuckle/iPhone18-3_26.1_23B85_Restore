@interface PTImageblockConfig
+ ($3CC19D079FD0B010EE84973AA846B91B)adjustScissorRectToImageBlocks:(SEL)a3 imageBlockSize:(id *)a4;
- (PTImageblockConfig)initWithPTTexture:(id)a3;
- (PTImageblockConfig)initWithPTTexture:(id)a3 outRect:;
- (PTImageblockConfig)initWithPTTexture:(id)a3 scissorRect:(id *)a4;
- (PTImageblockConfig)initWithTexture:(id)a3;
- (PTImageblockConfig)initWithTextureSize:(PTImageblockConfig *)self scissorRect:(SEL)a2 outRect:(id *)a3 imageblockSize:(unint64_t)a4;
- (__n128)scissorRectOffset;
@end

@implementation PTImageblockConfig

- (PTImageblockConfig)initWithTexture:(id)a3
{
  memset(v10, 0, sizeof(v10));
  v4 = a3;
  v5 = [v4 pixelFormat];
  v6 = [v4 device];
  v7 = [PTMetalTextureUtil macroBlockSizeForPixelFormat:v5 device:v6];

  LOWORD(v5) = [v4 width];
  LOWORD(v6) = [v4 height];

  LOWORD(v9) = v5;
  HIWORD(v9) = v6;
  return [(PTImageblockConfig *)self initWithTextureSize:v9 scissorRect:v10 outRect:v7 imageblockSize:0.0];
}

- (PTImageblockConfig)initWithPTTexture:(id)a3
{
  memset(v8, 0, sizeof(v8));
  v4 = a3;
  LOWORD(v7) = [v4 width];
  HIWORD(v7) = [v4 height];
  v5 = [v4 imageBlockSize];

  return [(PTImageblockConfig *)self initWithTextureSize:v7 scissorRect:v8 outRect:v5 imageblockSize:0.0];
}

- (PTImageblockConfig)initWithPTTexture:(id)a3 scissorRect:(id *)a4
{
  v6 = a3;
  LOWORD(v10) = [v6 width];
  HIWORD(v10) = [v6 height];
  v7 = [v6 imageBlockSize];

  v8 = *&a4->var2;
  v11[0] = *&a4->var0;
  v11[1] = v8;
  return [(PTImageblockConfig *)self initWithTextureSize:v10 scissorRect:v11 outRect:v7 imageblockSize:0.0];
}

- (PTImageblockConfig)initWithPTTexture:(id)a3 outRect:
{
  v4 = v3;
  memset(v10, 0, sizeof(v10));
  v6 = a3;
  LOWORD(v9) = [v6 width];
  HIWORD(v9) = [v6 height];
  v7 = [v6 imageBlockSize];

  return [(PTImageblockConfig *)self initWithTextureSize:v9 scissorRect:v10 outRect:v7 imageblockSize:v4];
}

- (PTImageblockConfig)initWithTextureSize:(PTImageblockConfig *)self scissorRect:(SEL)a2 outRect:(id *)a3 imageblockSize:(unint64_t)a4
{
  v6 = v4;
  v7 = v5;
  v9 = a3;
  v34.receiver = self;
  v34.super_class = PTImageblockConfig;
  v10 = [(PTImageblockConfig *)&v34 init];
  v11 = v10;
  if (v10)
  {
    v10->_imageblockSize = v6;
    v10->_threadsPerGroup.width = v6;
    v10->_threadsPerGroup.height = v6;
    v10->_threadsPerGroup.depth = 1;
    if (*(a4 + 16) && *(a4 + 24))
    {
      v32 = 0u;
      v33 = 0u;
      v12 = *(a4 + 16);
      v31[0] = *a4;
      v31[1] = v12;
      [PTImageblockConfig adjustScissorRectToImageBlocks:v31 imageBlockSize:v6];
      v13 = vmovn_s64(v32);
      *&v11->_scissorRectOffset[2] = v13.i16[2];
      *v11->_scissorRectOffset = v13.i16[0];
      v14 = v33;
    }

    else
    {
      v15 = vmovl_u16(v7);
      v16 = vextq_s8(v15, v15, 8uLL).u64[0];
      v17 = vceqz_s32(v16);
      if (vorr_s8(v17, vdup_lane_s32(v17, 1)).u8[0])
      {
        v10->_threads.width = v9;
        v10->_threads.height = HIWORD(v9);
LABEL_9:
        v11->_threads.depth = 1;
        v29 = v11;
        goto LABEL_10;
      }

      v18 = vand_s8(vdup_n_s32(v6), 0xFFFF0000FFFFLL);
      v19 = v18.u32[1];
      v20 = vand_s8(*v15.i8, 0xFFFF0000FFFFLL);
      v21 = v18.i32[0];
      v18.i32[0] = v20.i32[0] % v18.i32[0];
      v18.i32[1] = v20.i32[1] % v18.i32[1];
      v22 = vneg_s32(v18);
      *&v10->_anon_c[2] = v22.i16[2];
      *v10->_anon_c = v22.i16[0];
      v23 = vsub_s32(*v15.i8, v18);
      *&v10->_anon_c[6] = v23.i16[2];
      *&v10->_anon_c[4] = v23.i16[0];
      v24 = vadd_s32(vadd_s32(vdup_n_s32(v6 - 1), v16), v18);
      v25 = vand_s8(v24, 0xFFFF0000FFFFLL);
      v25.i32[0] %= v21;
      v25.i32[1] %= v19;
      v26 = vsub_s32(v24, v25);
      v27.i64[0] = v26.u32[0];
      v27.i64[1] = v26.u32[1];
      v28.i64[0] = 0xFFFFLL;
      v28.i64[1] = 0xFFFFLL;
      v14 = vandq_s8(v27, v28);
    }

    *&v11->_threads.width = v14;
    goto LABEL_9;
  }

LABEL_10:

  return v11;
}

+ ($3CC19D079FD0B010EE84973AA846B91B)adjustScissorRectToImageBlocks:(SEL)a3 imageBlockSize:(id *)a4
{
  v5 = vand_s8(vdup_n_s32(a5), 0xFFFF0000FFFFLL);
  v6 = vand_s8(vmovn_s64(*&a4->var0), 0xFFFF0000FFFFLL);
  v6.i32[0] %= v5.i32[0];
  v7 = v6.i32[1] % v5.i32[1];
  v8 = a4->var1 - v7;
  retstr->var0 = a4->var0 - v6.u32[0];
  retstr->var1 = v8;
  v9 = (a4->var3 + a5 - 1 + v7) / a5 * a5;
  retstr->var2 = (a4->var2 + a5 - 1 + v6.u32[0]) / a5 * a5;
  retstr->var3 = v9;
  return result;
}

- (__n128)scissorRectOffset
{
  LOWORD(v1) = *(a1 + 8);
  WORD2(v1) = *(a1 + 10);
  result.n128_u32[0] = v1;
  result.n128_u16[2] = WORD2(v1);
  return result;
}

@end