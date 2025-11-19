@interface PTColorConversion
+ (BOOL2)getChromaSubsampledFromLuma:(id)a3 texChroma:(id)a4;
+ (double)getChromaOffset:(void *)a3;
+ (double)getChromaOffsetFromLuma:(void *)a3 texChroma:(uint64_t)a4;
+ (int)getTransferFunction:(id)a3 toLinear:(BOOL)a4;
+ (void)getColorMatrix:(unsigned int)a3@<W4> toRGB:(uint64_t)a4@<X5> fullRange:(void *)a5@<X8> colorYCbCrDepth:;
+ (void)getColorMatrix:(void *)a3 toRGB:(uint64_t)a4;
- (PTColorConversion)initWithMetalContext:(id)a3;
- (int)convertRGB:(id)a3 inRGBA:(id)a4 outRGBA:(id)a5 toLinear:(BOOL)a6 transferFunction:(id)a7;
- (int)convertRGB:(id)a3 inRGBA:(id)a4 outRGBA:(id)a5 toLinear:(BOOL)a6 transferFunction:(id)a7 outRect:;
- (int)convertRGBLinearFromPTTexture:(id)a3 inPTTexture:(id)a4 outRGBA:(id)a5;
- (int)convertRGBLinearToPTTexture:(id)a3 inRGBA:(id)a4 outPTTexture:(id)a5;
- (int)convertRGBLinearToPTTexture:(id)a3 inRGBA:(id)a4 outPTTexture:(id)a5 outRect:;
- (int)convertRGBtoYUV:(id)a3 inRGBA:(id)a4 outLuma:(id)a5 outChroma:(id)a6 toLinear:(BOOL)a7 transferFunction:(id)a8 colorYCbCrMatrix:(id)a9 colorYCbCrFullRange:(BOOL)a10 colorYCbCrDepthOut:(int64_t)a11;
- (int)convertRGBtoYUV:(id)a3 inRGBA:(id)a4 outLuma:(id)a5 outChroma:(id)a6 toLinear:(BOOL)a7 transferFunction:(id)a8 colorYCbCrMatrix:(id)a9 colorYCbCrFullRange:(BOOL)a10 colorYCbCrDepthOut:(int64_t)a11 outRect:;
- (int)convertYUVtoRGB:(id)a3 inLuma:(id)a4 inChroma:(id)a5 outRGBA:(id)a6 toLinear:(BOOL)a7 transferFunction:(id)a8 colorYCbCrMatrix:(id)a9 colorYCbCrFullRange:(BOOL)a10 colorYCbCrDepthIn:(int64_t)a11;
@end

@implementation PTColorConversion

- (PTColorConversion)initWithMetalContext:(id)a3
{
  v5 = a3;
  v29.receiver = self;
  v29.super_class = PTColorConversion;
  v6 = [(PTColorConversion *)&v29 init];
  p_isa = &v6->super.isa;
  if (v6)
  {
    objc_storeStrong(&v6->_metalContext, a3);
    v8 = objc_opt_new();
    v9 = [p_isa[1] imageblocksSupported];
    v10 = @"NoImageBlocks";
    if (v9)
    {
      v10 = &stru_2837D16E8;
    }

    v11 = v10;
    v12 = p_isa + 2;
    v28 = 0;
    v13 = p_isa + 11;
    v14 = p_isa + 20;
    while (1)
    {
      [v8 reset];
      [v8 setConstantValue:&v28 type:29 withName:@"kColorTransferFunction"];
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"convertRGB%@", v11];
      v16 = [v5 computePipelineStateFor:v15 withConstants:v8];
      v17 = v12[v28];
      v12[v28] = v16;

      if (!v12[v28])
      {
        break;
      }

      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"convertRGBToYUV%@", v11];
      v19 = [v5 computePipelineStateFor:v18 withConstants:v8];
      v20 = v13[v28];
      v13[v28] = v19;

      if (!v13[v28])
      {
        v26 = _PTLogSystem();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [PTColorConversion initWithMetalContext:];
        }

        goto LABEL_17;
      }

      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"convertYUVToRGB%@", v11];
      v22 = [v5 computePipelineStateFor:v21 withConstants:v8];
      v23 = v14[v28];
      v14[v28] = v22;

      v24 = v28;
      if (!v14[v28])
      {
        v26 = _PTLogSystem();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [PTColorConversion initWithMetalContext:];
        }

        goto LABEL_17;
      }

      ++v28;
      if (v24 > 7)
      {
        v25 = p_isa;
        goto LABEL_18;
      }
    }

    v26 = _PTLogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [PTColorConversion initWithMetalContext:];
    }

LABEL_17:

    v25 = 0;
LABEL_18:
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

+ (void)getColorMatrix:(unsigned int)a3@<W4> toRGB:(uint64_t)a4@<X5> fullRange:(void *)a5@<X8> colorYCbCrDepth:
{
  v9 = a1;
  v10 = v9;
  if (!v9)
  {
    v15 = _PTLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      +[PTColorConversion getColorMatrix:toRGB:fullRange:colorYCbCrDepth:];
    }

    v12 = xmmword_2244C60D0;
    v13 = 0.0722;
    if (!a4)
    {
      goto LABEL_35;
    }

    goto LABEL_18;
  }

  if (CFStringCompare(v9, *MEMORY[0x277CC4D18], 0) == kCFCompareEqualTo)
  {
    v12 = xmmword_2244C6100;
    v13 = 0.0593;
    if (a4)
    {
      goto LABEL_18;
    }

    goto LABEL_35;
  }

  v11 = CFStringCompare(v10, *MEMORY[0x277CC4D28], 0);
  v12 = xmmword_2244C60D0;
  v13 = 0.0722;
  if (v11 == kCFCompareEqualTo)
  {
    goto LABEL_17;
  }

  if (CFStringCompare(v10, *MEMORY[0x277CC4D20], 0) == kCFCompareEqualTo)
  {
    v12 = xmmword_2244C60E0;
    v13 = 0.114;
LABEL_17:
    if (a4)
    {
      goto LABEL_18;
    }

    goto LABEL_35;
  }

  if (CFStringCompare(v10, *MEMORY[0x277CC4D30], 0) == kCFCompareEqualTo)
  {
    v12 = xmmword_2244C60F0;
    v13 = 0.087;
    if (a4)
    {
      goto LABEL_18;
    }

LABEL_35:
    v19 = 0;
    __asm { FMOV            V2.2S, #1.0 }

    goto LABEL_36;
  }

  v14 = _PTLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    +[PTColorConversion getColorMatrix:toRGB:fullRange:colorYCbCrDepth:];
  }

  v12 = xmmword_2244C60D0;
  if (!a4)
  {
    goto LABEL_35;
  }

LABEL_18:
  if (a4 == 8)
  {
    _D2 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(a3), 0x1FuLL)), vdup_n_s32(0x3F7EFEFFu), 0x3F60E0E13F5BDBDCLL);
    v17 = 0.0;
    if (!a3)
    {
      v17 = 0.062745;
    }

    v18 = &unk_2244C6154;
    goto LABEL_26;
  }

  if (a4 == 10)
  {
    _D2 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(a3), 0x1FuLL)), vdup_n_s32(0x3F7FBFF0u), 0x3F60380E3F5B36CELL);
    v17 = 0.0;
    if (!a3)
    {
      v17 = 0.062561;
    }

    v18 = &unk_2244C614C;
LABEL_26:
    v19 = vld1_dup_f32(v18);
    v19.f32[0] = v17;
LABEL_36:
    v30 = 0;
    if (a2)
    {
      v31 = v13 * -2.0 + 2.0;
      *&v32 = -(v31 * v13) / v12.f64[1];
      *&v33 = __PAIR64__(v32, 1.0);
      HIDWORD(v33) = 0;
      *&v34 = 1.0 / *_D2.i32;
      LODWORD(v35) = 0;
      *(&v35 + 1) = 1.0 / *&_D2.i32[1];
      *&v36 = 0;
      HIDWORD(v36) = 0;
      *(&v36 + 2) = 1.0 / *&_D2.i32[1];
      v37.i64[0] = COERCE_UNSIGNED_INT(1.0);
      v37.i32[2] = 0;
      v38.i64[0] = 0;
      v39.i32[0] = 0;
      v39.i32[1] = 1.0;
      v38.i32[2] = 1.0;
      v39.i32[2] = 0;
      v74 = v34;
      v75 = v35;
      v76 = v36;
      v77 = xmmword_2244A5370;
      v78 = 0u;
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      do
      {
        v37.f32[3] = -v19.f32[0];
        v38.f32[3] = -v19.f32[1];
        v39.f32[3] = -v19.f32[1];
        *(&v78 + v30) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v37, COERCE_FLOAT(*(&v74 + v30))), v39, *(&v74 + v30), 1), v38, *(&v74 + v30), 2), xmmword_2244A5370, *(&v74 + v30), 3);
        v30 += 16;
      }

      while (v30 != 64);
      v40 = 0;
      *&v41 = v12.f64[0] * -2.0 + 2.0;
      *&v42 = v31;
      *&v43 = COERCE_UNSIGNED_INT(1.0);
      v44 = __PAIR64__(v42, 1.0);
      *(&v43 + 1) = v41;
      v45 = -(v12.f64[0] * -2.0 + 2.0) * v12.f64[0] / v12.f64[1];
      *(&v33 + 2) = v45;
      v46 = v78;
      v47 = v79;
      v48 = v80;
      v49 = v81;
      v74 = v43;
      v75 = v33;
      v76 = v44;
      v77 = xmmword_2244A5370;
      v78 = 0u;
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      do
      {
        *(&v78 + v40) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v46, COERCE_FLOAT(*(&v74 + v40))), v47, *(&v74 + v40), 1), v48, *(&v74 + v40), 2), v49, *(&v74 + v40), 3);
        v40 += 16;
      }

      while (v40 != 64);
    }

    else
    {
      *v51.f32 = vcvt_f32_f64(v12);
      *&v50 = v13;
      v51.i64[1] = v50;
      __asm { FMOV            V3.2D, #-0.5 }

      v53 = vmulq_f64(v12, _Q3);
      *v54.f32 = vcvt_f32_f64(vdivq_f64(v53, vdupq_lane_s64(COERCE__INT64(1.0 - v13), 0)));
      v54.i64[1] = 1056964608;
      *&v55 = v53.f64[1] / (1.0 - v12.f64[0]);
      *&v56 = v13 * -0.5 / (1.0 - v12.f64[0]);
      v57.i64[0] = __PAIR64__(v55, 0.5);
      v57.i64[1] = v56;
      LODWORD(v58) = 0;
      HIDWORD(v58) = _D2.i32[1];
      *&v59 = 0;
      *(&v59 + 1) = _D2.u32[1];
      v74 = _D2.u32[0];
      v75 = v58;
      v76 = v59;
      v77 = xmmword_2244A5370;
      v78 = 0u;
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      do
      {
        *(&v78 + v30) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v51, COERCE_FLOAT(*(&v74 + v30))), v54, *(&v74 + v30), 1), v57, *(&v74 + v30), 2), xmmword_2244A5370, *(&v74 + v30), 3);
        v30 += 16;
      }

      while (v30 != 64);
      v60 = 0;
      v61 = xmmword_2244A5390;
      HIDWORD(v61) = v19.i32[1];
      v62 = xmmword_2244A5350;
      HIDWORD(v62) = v19.i32[0];
      v63 = xmmword_2244A5360;
      HIDWORD(v63) = v19.i32[1];
      v64 = v78;
      v65 = v79;
      v66 = v80;
      v67 = v81;
      v74 = v62;
      v75 = v61;
      v76 = v63;
      v77 = xmmword_2244A5370;
      v78 = 0u;
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      do
      {
        *(&v78 + v60) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v64, COERCE_FLOAT(*(&v74 + v60))), v65, *(&v74 + v60), 1), v66, *(&v74 + v60), 2), v67, *(&v74 + v60), 3);
        v60 += 16;
      }

      while (v60 != 64);
    }

    v68 = 0;
    a5[1] = 0;
    a5[2] = 0;
    *a5 = 0;
    do
    {
      v69 = 0;
      v70 = *(&v78 + v68);
      do
      {
        v73 = v70;
        _S1 = *(&v73 & 0xFFFFFFFFFFFFFFF3 | (4 * (v69 & 3)));
        __asm { FCVT            H1, S1 }

        *(a5 + v69++) = _S1;
      }

      while (v69 != 4);
      ++v68;
      ++a5;
    }

    while (v68 != 3);
    goto LABEL_50;
  }

  v20 = _PTLogSystem();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    +[PTColorConversion getColorMatrix:toRGB:fullRange:colorYCbCrDepth:];
  }

  v21 = 0;
  v22.i64[0] = 0x3F0000003FLL;
  v22.i64[1] = 0x3F0000003FLL;
  v78 = vnegq_f32(v22);
  v79 = v78;
  v80 = v78;
  v81 = v78;
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  do
  {
    v23 = 0;
    v24 = *(&v78 + v21);
    do
    {
      v72 = v24;
      _S1 = *(&v72 & 0xFFFFFFFFFFFFFFF3 | (4 * (v23 & 3)));
      __asm { FCVT            H1, S1 }

      *(a5 + v23++) = _S1;
    }

    while (v23 != 4);
    ++v21;
    ++a5;
  }

  while (v21 != 3);
LABEL_50:
}

+ (void)getColorMatrix:(void *)a3 toRGB:(uint64_t)a4
{
  v5 = a3;
  v8 = [v5 YCbCrMatrix];
  v6 = [v5 YCbCrFullRange];
  v7 = [v5 YCbCrColorDepth];

  [PTColorConversion getColorMatrix:v8 toRGB:a4 fullRange:v6 colorYCbCrDepth:v7];
}

+ (int)getTransferFunction:(id)a3 toLinear:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    v7 = _PTLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[PTColorConversion getTransferFunction:toLinear:];
    }

    goto LABEL_11;
  }

  if (CFStringCompare(v5, *MEMORY[0x277CC4CD0], 0))
  {
    if (CFStringCompare(v6, *MEMORY[0x277CC4CD8], 0) == kCFCompareEqualTo)
    {
LABEL_12:
      v8 = !v4;
      v9 = 1;
      goto LABEL_17;
    }

    if (CFStringCompare(v6, *MEMORY[0x277CC4C98], 0))
    {
      if (CFStringCompare(v6, *MEMORY[0x277CC4CE0], 0) == kCFCompareEqualTo)
      {
        v10 = 0;
        goto LABEL_20;
      }

      if (CFStringCompare(v6, @"PTImageBufferTransferFunction_Linear_1_6", 0))
      {
        v7 = _PTLogSystem();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          +[PTColorConversion getTransferFunction:toLinear:];
        }

LABEL_11:

        goto LABEL_12;
      }

      v8 = !v4;
      v9 = 7;
    }

    else
    {
      v8 = !v4;
      v9 = 5;
    }
  }

  else
  {
    v8 = !v4;
    v9 = 3;
  }

LABEL_17:
  if (v8)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = v9;
  }

LABEL_20:

  return v10;
}

+ (BOOL2)getChromaSubsampledFromLuma:(id)a3 texChroma:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 width];
  v8 = v7 / [v5 width] == 2;
  v9 = [v6 height];

  v10 = [v5 height];
  return (v8 | ((v9 / v10 == 2) << 8));
}

+ (double)getChromaOffset:(void *)a3
{
  v3 = a3;
  v4 = [v3 texLuma];
  v5 = [v3 texChroma];

  [PTColorConversion getChromaOffsetFromLuma:v4 texChroma:v5];
  v7 = v6;

  return v7;
}

+ (double)getChromaOffsetFromLuma:(void *)a3 texChroma:(uint64_t)a4
{
  v5 = a3;
  v6 = [PTColorConversion getChromaSubsampledFromLuma:v5 texChroma:a4];
  v7 = 0.0;
  if (v6.var0)
  {
    v8 = 0.5;
  }

  else
  {
    v8 = 0.0;
  }

  v10 = v8 / [v5 width];
  *&v10 = v10;
  if ((*&v6 & 0x100) != 0)
  {
    v7 = 0.5;
  }

  v11 = [v5 height];

  *&v12 = v7 / v11;
  return COERCE_DOUBLE(__PAIR64__(v12, v14));
}

- (int)convertRGB:(id)a3 inRGBA:(id)a4 outRGBA:(id)a5 toLinear:(BOOL)a6 transferFunction:(id)a7 outRect:
{
  v25 = v7;
  v9 = a6;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  if ([(PTMetalContext *)self->_metalContext imageblocksSupported]|| !v25)
  {
    v19 = [PTColorConversion getTransferFunction:v16 toLinear:v9, v25];
    v20 = [PTImageblockConfig alloc];
    v21 = [PTTexture createRGBA:v15];
    v17 = [(PTImageblockConfig *)v20 initWithPTTexture:v21 outRect:v26];

    v29 = [v17 outOffset];
    v22 = [v13 computeCommandEncoder];
    if (!v22)
    {
      v23 = _PTLogSystem();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [PTColorConversion convertRGB:inRGBA:outRGBA:toLinear:transferFunction:outRect:];
      }
    }

    [v22 setComputePipelineState:self->_convertRGB[v19]];
    if ([(PTMetalContext *)self->_metalContext imageblocksSupported])
    {
      [v22 setImageblockWidth:-[NSObject imageblockSize](v17 height:{"imageblockSize"), -[NSObject imageblockSize](v17, "imageblockSize")}];
    }

    [v22 setTexture:v14 atIndex:0];
    [v22 setTexture:v15 atIndex:1];
    [v22 setBytes:&v29 length:8 atIndex:0];
    if (v17)
    {
      [v17 threads];
      [v17 threadsPerGroup];
    }

    else
    {
      memset(v28, 0, sizeof(v28));
      memset(v27, 0, sizeof(v27));
    }

    [v22 dispatchThreads:v28 threadsPerThreadgroup:v27];
    [v22 endEncoding];

    v18 = 0;
  }

  else
  {
    v17 = _PTLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [PTColorConversion convertRGB:inRGBA:outRGBA:toLinear:transferFunction:outRect:];
    }

    v18 = -1;
  }

  return v18;
}

- (int)convertRGB:(id)a3 inRGBA:(id)a4 outRGBA:(id)a5 toLinear:(BOOL)a6 transferFunction:(id)a7
{
  v7 = a6;
  v12 = a7;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [v13 width];
  v17 = [v13 height];
  LODWORD(v18) = 0;
  WORD2(v18) = v16;
  HIWORD(v18) = v17;
  LODWORD(v7) = [(PTColorConversion *)self convertRGB:v15 inRGBA:v14 outRGBA:v13 toLinear:v7 transferFunction:v12 outRect:v18];

  return v7;
}

- (int)convertRGBtoYUV:(id)a3 inRGBA:(id)a4 outLuma:(id)a5 outChroma:(id)a6 toLinear:(BOOL)a7 transferFunction:(id)a8 colorYCbCrMatrix:(id)a9 colorYCbCrFullRange:(BOOL)a10 colorYCbCrDepthOut:(int64_t)a11
{
  v29 = a7;
  v17 = a9;
  v18 = a8;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  v23 = [v20 width];
  v24 = [v20 height];
  LODWORD(v25) = 0;
  WORD2(v25) = v23;
  HIWORD(v25) = v24;
  LOBYTE(v28) = a10;
  v26 = [(PTColorConversion *)self convertRGBtoYUV:v22 inRGBA:v21 outLuma:v20 outChroma:v19 toLinear:v29 transferFunction:v18 colorYCbCrMatrix:v25 colorYCbCrFullRange:v17 colorYCbCrDepthOut:v28 outRect:a11];

  return v26;
}

- (int)convertRGBtoYUV:(id)a3 inRGBA:(id)a4 outLuma:(id)a5 outChroma:(id)a6 toLinear:(BOOL)a7 transferFunction:(id)a8 colorYCbCrMatrix:(id)a9 colorYCbCrFullRange:(BOOL)a10 colorYCbCrDepthOut:(int64_t)a11 outRect:
{
  v40 = v11;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a8;
  v22 = a9;
  v23 = [(PTMetalContext *)self->_metalContext imageblocksSupported];
  v24 = LOBYTE(v40) | BYTE2(v40);
  if (!v23)
  {
    if (LODWORD(v40))
    {
      v25 = _PTLogSystem();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [PTColorConversion convertRGB:inRGBA:outRGBA:toLinear:transferFunction:outRect:];
      }

LABEL_19:

      v35 = -1;
      goto LABEL_22;
    }

    v24 = 0;
  }

  if (v24 & 1 | BYTE4(v40) & 1 | BYTE6(v40) & 1)
  {
    v25 = _PTLogSystem();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [PTColorConversion convertRGBtoYUV:inRGBA:outLuma:outChroma:toLinear:transferFunction:colorYCbCrMatrix:colorYCbCrFullRange:colorYCbCrDepthOut:outRect:];
    }

    goto LABEL_19;
  }

  v37 = v18;
  v26 = v17;
  v39 = v21;
  v27 = [PTColorConversion getTransferFunction:"getTransferFunction:toLinear:" toLinear:?];
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v38 = v22;
  [PTColorConversion getColorMatrix:v22 toRGB:0 fullRange:a10 colorYCbCrDepth:a11];
  v44 = [PTColorConversion getChromaSubsampledFromLuma:v19 texChroma:v20];
  v28 = [PTImageblockConfig alloc];
  v29 = [PTTexture createYUV420:v19 chroma:v20];
  v30 = [(PTImageblockConfig *)v28 initWithPTTexture:v29 outRect:v40];

  v43 = [(PTImageblockConfig *)v30 outOffset];
  v31 = v26;
  v32 = v26;
  v18 = v37;
  v33 = [v32 computeCommandEncoder];
  if (!v33)
  {
    v34 = _PTLogSystem();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [PTColorConversion convertRGB:inRGBA:outRGBA:toLinear:transferFunction:outRect:];
    }
  }

  [v33 setComputePipelineState:self->_convertRGBToYUV[v27]];
  if ([(PTMetalContext *)self->_metalContext imageblocksSupported])
  {
    [v33 setImageblockWidth:-[PTImageblockConfig imageblockSize](v30 height:{"imageblockSize"), -[PTImageblockConfig imageblockSize](v30, "imageblockSize")}];
  }

  [v33 setTexture:v37 atIndex:0];
  [v33 setTexture:v19 atIndex:1];
  [v33 setTexture:v20 atIndex:2];
  [v33 setBytes:&v44 + 2 length:24 atIndex:0];
  [v33 setBytes:&v44 length:2 atIndex:1];
  v21 = v39;
  if ([(PTMetalContext *)self->_metalContext imageblocksSupported])
  {
    [v33 setBytes:&v43 length:8 atIndex:2];
  }

  if (v30)
  {
    [(PTImageblockConfig *)v30 threads];
    [(PTImageblockConfig *)v30 threadsPerGroup];
  }

  else
  {
    memset(v42, 0, sizeof(v42));
    memset(v41, 0, sizeof(v41));
  }

  [v33 dispatchThreads:v42 threadsPerThreadgroup:v41];
  [v33 endEncoding];

  v35 = 0;
  v17 = v31;
  v22 = v38;
LABEL_22:

  return v35;
}

- (int)convertYUVtoRGB:(id)a3 inLuma:(id)a4 inChroma:(id)a5 outRGBA:(id)a6 toLinear:(BOOL)a7 transferFunction:(id)a8 colorYCbCrMatrix:(id)a9 colorYCbCrFullRange:(BOOL)a10 colorYCbCrDepthIn:(int64_t)a11
{
  v12 = a7;
  v27 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a9;
  v20 = a3;
  v21 = [PTColorConversion getTransferFunction:a8 toLinear:v12];
  v32 = 0;
  v33 = 0;
  v34 = 0;
  [PTColorConversion getColorMatrix:v19 toRGB:1 fullRange:a10 colorYCbCrDepth:a11];

  v22 = v27;
  v31 = [PTColorConversion getChromaSubsampledFromLuma:v27 texChroma:v17];
  v23 = [[PTImageblockConfig alloc] initWithTexture:v18];
  v30 = [(PTImageblockConfig *)v23 outOffset];
  v24 = [v20 computeCommandEncoder];

  if (!v24)
  {
    v25 = _PTLogSystem();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [PTColorConversion convertRGB:inRGBA:outRGBA:toLinear:transferFunction:outRect:];
    }
  }

  [v24 setComputePipelineState:{self->_convertYUVToRGB[v21], v27}];
  if ([(PTMetalContext *)self->_metalContext imageblocksSupported])
  {
    [v24 setImageblockWidth:-[PTImageblockConfig imageblockSize](v23 height:{"imageblockSize"), -[PTImageblockConfig imageblockSize](v23, "imageblockSize")}];
  }

  [v24 setTexture:v22 atIndex:0];
  [v24 setTexture:v17 atIndex:1];
  [v24 setTexture:v18 atIndex:2];
  [v24 setBytes:&v31 + 2 length:24 atIndex:0];
  [v24 setBytes:&v31 length:2 atIndex:1];
  if ([(PTMetalContext *)self->_metalContext imageblocksSupported])
  {
    [v24 setBytes:&v30 length:8 atIndex:2];
  }

  if (v23)
  {
    [(PTImageblockConfig *)v23 threads];
    [(PTImageblockConfig *)v23 threadsPerGroup];
  }

  else
  {
    memset(v29, 0, sizeof(v29));
    memset(v28, 0, sizeof(v28));
  }

  [v24 dispatchThreads:v29 threadsPerThreadgroup:v28];
  [v24 endEncoding];

  return 0;
}

- (int)convertRGBLinearFromPTTexture:(id)a3 inPTTexture:(id)a4 outRGBA:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  if ([v9 isRGB])
  {
    v11 = [v9 texRGBA];
    v12 = [v9 transferFunction];

    v13 = [(PTColorConversion *)self convertRGB:v10 inRGBA:v11 outRGBA:v8 toLinear:1 transferFunction:v12];
  }

  else
  {
    v11 = [v9 texLuma];
    v12 = [v9 texChroma];
    v14 = [v9 transferFunction];
    v15 = [v9 YCbCrMatrix];
    v16 = [v9 YCbCrFullRange];
    v17 = [v9 YCbCrColorDepth];

    LOBYTE(v19) = v16;
    v13 = [(PTColorConversion *)self convertYUVtoRGB:v10 inLuma:v11 inChroma:v12 outRGBA:v8 toLinear:1 transferFunction:v14 colorYCbCrMatrix:v15 colorYCbCrFullRange:v19 colorYCbCrDepthIn:v17];

    v8 = v15;
    v10 = v14;
  }

  return v13;
}

- (int)convertRGBLinearToPTTexture:(id)a3 inRGBA:(id)a4 outPTTexture:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v8 width];
  v12 = [v8 height];
  LODWORD(v13) = 0;
  WORD2(v13) = v11;
  HIWORD(v13) = v12;
  LODWORD(self) = [(PTColorConversion *)self convertRGBLinearToPTTexture:v10 inRGBA:v9 outPTTexture:v8 outRect:v13];

  return self;
}

- (int)convertRGBLinearToPTTexture:(id)a3 inRGBA:(id)a4 outPTTexture:(id)a5 outRect:
{
  v6 = v5;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  if ([v10 isRGB])
  {
    v13 = [v10 texRGBA];
    v14 = [v10 transferFunction];

    v15 = [(PTColorConversion *)self convertRGB:v12 inRGBA:v11 outRGBA:v13 toLinear:0 transferFunction:v14 outRect:v6];
  }

  else
  {
    v13 = [v10 texLuma];
    v14 = [v10 texChroma];
    v16 = [v10 transferFunction];
    v17 = [v10 YCbCrMatrix];
    v18 = [v10 YCbCrFullRange];
    v19 = [v10 YCbCrColorDepth];

    LOBYTE(v21) = v18;
    v15 = [(PTColorConversion *)self convertRGBtoYUV:v12 inRGBA:v11 outLuma:v13 outChroma:v14 toLinear:0 transferFunction:v16 colorYCbCrMatrix:v6 colorYCbCrFullRange:v17 colorYCbCrDepthOut:v21 outRect:v19];

    v11 = v17;
    v12 = v16;
  }

  return v15;
}

+ (void)getColorMatrix:toRGB:fullRange:colorYCbCrDepth:.cold.2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)getTransferFunction:toLinear:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)getTransferFunction:toLinear:.cold.2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)convertRGB:inRGBA:outRGBA:toLinear:transferFunction:outRect:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)convertRGBtoYUV:inRGBA:outLuma:outChroma:toLinear:transferFunction:colorYCbCrMatrix:colorYCbCrFullRange:colorYCbCrDepthOut:outRect:.cold.2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end