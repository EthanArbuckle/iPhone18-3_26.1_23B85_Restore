@interface PTImageblockConfig
+ ($3CC19D079FD0B010EE84973AA846B91B)adjustScissorRectToImageBlocks:(SEL)blocks imageBlockSize:(id *)size;
- (PTImageblockConfig)initWithPTTexture:(id)texture;
- (PTImageblockConfig)initWithPTTexture:(id)texture outRect:;
- (PTImageblockConfig)initWithPTTexture:(id)texture scissorRect:(id *)rect;
- (PTImageblockConfig)initWithTexture:(id)texture;
- (PTImageblockConfig)initWithTextureSize:(PTImageblockConfig *)self scissorRect:(SEL)rect outRect:(id *)outRect imageblockSize:(unint64_t)size;
- (__n128)scissorRectOffset;
@end

@implementation PTImageblockConfig

- (PTImageblockConfig)initWithTexture:(id)texture
{
  memset(v10, 0, sizeof(v10));
  textureCopy = texture;
  pixelFormat = [textureCopy pixelFormat];
  device = [textureCopy device];
  v7 = [PTMetalTextureUtil macroBlockSizeForPixelFormat:pixelFormat device:device];

  LOWORD(pixelFormat) = [textureCopy width];
  LOWORD(device) = [textureCopy height];

  LOWORD(v9) = pixelFormat;
  HIWORD(v9) = device;
  return [(PTImageblockConfig *)self initWithTextureSize:v9 scissorRect:v10 outRect:v7 imageblockSize:0.0];
}

- (PTImageblockConfig)initWithPTTexture:(id)texture
{
  memset(v8, 0, sizeof(v8));
  textureCopy = texture;
  LOWORD(v7) = [textureCopy width];
  HIWORD(v7) = [textureCopy height];
  imageBlockSize = [textureCopy imageBlockSize];

  return [(PTImageblockConfig *)self initWithTextureSize:v7 scissorRect:v8 outRect:imageBlockSize imageblockSize:0.0];
}

- (PTImageblockConfig)initWithPTTexture:(id)texture scissorRect:(id *)rect
{
  textureCopy = texture;
  LOWORD(v10) = [textureCopy width];
  HIWORD(v10) = [textureCopy height];
  imageBlockSize = [textureCopy imageBlockSize];

  v8 = *&rect->var2;
  v11[0] = *&rect->var0;
  v11[1] = v8;
  return [(PTImageblockConfig *)self initWithTextureSize:v10 scissorRect:v11 outRect:imageBlockSize imageblockSize:0.0];
}

- (PTImageblockConfig)initWithPTTexture:(id)texture outRect:
{
  v4 = v3;
  memset(v10, 0, sizeof(v10));
  textureCopy = texture;
  LOWORD(v9) = [textureCopy width];
  HIWORD(v9) = [textureCopy height];
  imageBlockSize = [textureCopy imageBlockSize];

  return [(PTImageblockConfig *)self initWithTextureSize:v9 scissorRect:v10 outRect:imageBlockSize imageblockSize:v4];
}

- (PTImageblockConfig)initWithTextureSize:(PTImageblockConfig *)self scissorRect:(SEL)rect outRect:(id *)outRect imageblockSize:(unint64_t)size
{
  v6 = v4;
  v7 = v5;
  outRectCopy = outRect;
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
    if (*(size + 16) && *(size + 24))
    {
      v32 = 0u;
      v33 = 0u;
      v12 = *(size + 16);
      v31[0] = *size;
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
        v10->_threads.width = outRectCopy;
        v10->_threads.height = HIWORD(outRectCopy);
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

+ ($3CC19D079FD0B010EE84973AA846B91B)adjustScissorRectToImageBlocks:(SEL)blocks imageBlockSize:(id *)size
{
  v5 = vand_s8(vdup_n_s32(a5), 0xFFFF0000FFFFLL);
  v6 = vand_s8(vmovn_s64(*&size->var0), 0xFFFF0000FFFFLL);
  v6.i32[0] %= v5.i32[0];
  v7 = v6.i32[1] % v5.i32[1];
  v8 = size->var1 - v7;
  retstr->var0 = size->var0 - v6.u32[0];
  retstr->var1 = v8;
  v9 = (size->var3 + a5 - 1 + v7) / a5 * a5;
  retstr->var2 = (size->var2 + a5 - 1 + v6.u32[0]) / a5 * a5;
  retstr->var3 = v9;
  return result;
}

- (__n128)scissorRectOffset
{
  LOWORD(v1) = *(self + 8);
  WORD2(v1) = *(self + 10);
  result.n128_u32[0] = v1;
  result.n128_u16[2] = WORD2(v1);
  return result;
}

@end