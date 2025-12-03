@interface PTColorConversion
+ (BOOL2)getChromaSubsampledFromLuma:(id)luma texChroma:(id)chroma;
+ (double)getChromaOffset:(void *)offset;
+ (double)getChromaOffsetFromLuma:(void *)luma texChroma:(uint64_t)chroma;
+ (int)getTransferFunction:(id)function toLinear:(BOOL)linear;
+ (void)getColorMatrix:(unsigned int)matrix@<W4> toRGB:(uint64_t)b@<X5> fullRange:(void *)range@<X8> colorYCbCrDepth:;
+ (void)getColorMatrix:(void *)matrix toRGB:(uint64_t)b;
- (PTColorConversion)initWithMetalContext:(id)context;
- (int)convertRGB:(id)b inRGBA:(id)a outRGBA:(id)bA toLinear:(BOOL)linear transferFunction:(id)function;
- (int)convertRGB:(id)b inRGBA:(id)a outRGBA:(id)bA toLinear:(BOOL)linear transferFunction:(id)function outRect:;
- (int)convertRGBLinearFromPTTexture:(id)texture inPTTexture:(id)tTexture outRGBA:(id)a;
- (int)convertRGBLinearToPTTexture:(id)texture inRGBA:(id)a outPTTexture:(id)tTexture;
- (int)convertRGBLinearToPTTexture:(id)texture inRGBA:(id)a outPTTexture:(id)tTexture outRect:;
- (int)convertRGBtoYUV:(id)v inRGBA:(id)a outLuma:(id)luma outChroma:(id)chroma toLinear:(BOOL)linear transferFunction:(id)function colorYCbCrMatrix:(id)matrix colorYCbCrFullRange:(BOOL)self0 colorYCbCrDepthOut:(int64_t)self1;
- (int)convertRGBtoYUV:(id)v inRGBA:(id)a outLuma:(id)luma outChroma:(id)chroma toLinear:(BOOL)linear transferFunction:(id)function colorYCbCrMatrix:(id)matrix colorYCbCrFullRange:(BOOL)self0 colorYCbCrDepthOut:(int64_t)self1 outRect:;
- (int)convertYUVtoRGB:(id)b inLuma:(id)luma inChroma:(id)chroma outRGBA:(id)a toLinear:(BOOL)linear transferFunction:(id)function colorYCbCrMatrix:(id)matrix colorYCbCrFullRange:(BOOL)self0 colorYCbCrDepthIn:(int64_t)self1;
@end

@implementation PTColorConversion

- (PTColorConversion)initWithMetalContext:(id)context
{
  contextCopy = context;
  v29.receiver = self;
  v29.super_class = PTColorConversion;
  v6 = [(PTColorConversion *)&v29 init];
  p_isa = &v6->super.isa;
  if (v6)
  {
    objc_storeStrong(&v6->_metalContext, context);
    v8 = objc_opt_new();
    imageblocksSupported = [p_isa[1] imageblocksSupported];
    v10 = @"NoImageBlocks";
    if (imageblocksSupported)
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
      v16 = [contextCopy computePipelineStateFor:v15 withConstants:v8];
      v17 = v12[v28];
      v12[v28] = v16;

      if (!v12[v28])
      {
        break;
      }

      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"convertRGBToYUV%@", v11];
      v19 = [contextCopy computePipelineStateFor:v18 withConstants:v8];
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
      v22 = [contextCopy computePipelineStateFor:v21 withConstants:v8];
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

+ (void)getColorMatrix:(unsigned int)matrix@<W4> toRGB:(uint64_t)b@<X5> fullRange:(void *)range@<X8> colorYCbCrDepth:
{
  selfCopy = self;
  v10 = selfCopy;
  if (!selfCopy)
  {
    v15 = _PTLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      +[PTColorConversion getColorMatrix:toRGB:fullRange:colorYCbCrDepth:];
    }

    v12 = xmmword_2244C60D0;
    v13 = 0.0722;
    if (!b)
    {
      goto LABEL_35;
    }

    goto LABEL_18;
  }

  if (CFStringCompare(selfCopy, *MEMORY[0x277CC4D18], 0) == kCFCompareEqualTo)
  {
    v12 = xmmword_2244C6100;
    v13 = 0.0593;
    if (b)
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
    if (b)
    {
      goto LABEL_18;
    }

    goto LABEL_35;
  }

  if (CFStringCompare(v10, *MEMORY[0x277CC4D30], 0) == kCFCompareEqualTo)
  {
    v12 = xmmword_2244C60F0;
    v13 = 0.087;
    if (b)
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
  if (!b)
  {
    goto LABEL_35;
  }

LABEL_18:
  if (b == 8)
  {
    _D2 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(matrix), 0x1FuLL)), vdup_n_s32(0x3F7EFEFFu), 0x3F60E0E13F5BDBDCLL);
    v17 = 0.0;
    if (!matrix)
    {
      v17 = 0.062745;
    }

    v18 = &unk_2244C6154;
    goto LABEL_26;
  }

  if (b == 10)
  {
    _D2 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(matrix), 0x1FuLL)), vdup_n_s32(0x3F7FBFF0u), 0x3F60380E3F5B36CELL);
    v17 = 0.0;
    if (!matrix)
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
    range[1] = 0;
    range[2] = 0;
    *range = 0;
    do
    {
      v69 = 0;
      v70 = *(&v78 + v68);
      do
      {
        v73 = v70;
        _S1 = *(&v73 & 0xFFFFFFFFFFFFFFF3 | (4 * (v69 & 3)));
        __asm { FCVT            H1, S1 }

        *(range + v69++) = _S1;
      }

      while (v69 != 4);
      ++v68;
      ++range;
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
  range[1] = 0;
  range[2] = 0;
  *range = 0;
  do
  {
    v23 = 0;
    v24 = *(&v78 + v21);
    do
    {
      v72 = v24;
      _S1 = *(&v72 & 0xFFFFFFFFFFFFFFF3 | (4 * (v23 & 3)));
      __asm { FCVT            H1, S1 }

      *(range + v23++) = _S1;
    }

    while (v23 != 4);
    ++v21;
    ++range;
  }

  while (v21 != 3);
LABEL_50:
}

+ (void)getColorMatrix:(void *)matrix toRGB:(uint64_t)b
{
  matrixCopy = matrix;
  yCbCrMatrix = [matrixCopy YCbCrMatrix];
  yCbCrFullRange = [matrixCopy YCbCrFullRange];
  yCbCrColorDepth = [matrixCopy YCbCrColorDepth];

  [PTColorConversion getColorMatrix:yCbCrMatrix toRGB:b fullRange:yCbCrFullRange colorYCbCrDepth:yCbCrColorDepth];
}

+ (int)getTransferFunction:(id)function toLinear:(BOOL)linear
{
  linearCopy = linear;
  functionCopy = function;
  v6 = functionCopy;
  if (!functionCopy)
  {
    v7 = _PTLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[PTColorConversion getTransferFunction:toLinear:];
    }

    goto LABEL_11;
  }

  if (CFStringCompare(functionCopy, *MEMORY[0x277CC4CD0], 0))
  {
    if (CFStringCompare(v6, *MEMORY[0x277CC4CD8], 0) == kCFCompareEqualTo)
    {
LABEL_12:
      v8 = !linearCopy;
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

      v8 = !linearCopy;
      v9 = 7;
    }

    else
    {
      v8 = !linearCopy;
      v9 = 5;
    }
  }

  else
  {
    v8 = !linearCopy;
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

+ (BOOL2)getChromaSubsampledFromLuma:(id)luma texChroma:(id)chroma
{
  chromaCopy = chroma;
  lumaCopy = luma;
  width = [lumaCopy width];
  v8 = width / [chromaCopy width] == 2;
  height = [lumaCopy height];

  height2 = [chromaCopy height];
  return (v8 | ((height / height2 == 2) << 8));
}

+ (double)getChromaOffset:(void *)offset
{
  offsetCopy = offset;
  texLuma = [offsetCopy texLuma];
  texChroma = [offsetCopy texChroma];

  [PTColorConversion getChromaOffsetFromLuma:texLuma texChroma:texChroma];
  v7 = v6;

  return v7;
}

+ (double)getChromaOffsetFromLuma:(void *)luma texChroma:(uint64_t)chroma
{
  lumaCopy = luma;
  v6 = [PTColorConversion getChromaSubsampledFromLuma:lumaCopy texChroma:chroma];
  v7 = 0.0;
  if (v6.var0)
  {
    v8 = 0.5;
  }

  else
  {
    v8 = 0.0;
  }

  v10 = v8 / [lumaCopy width];
  *&v10 = v10;
  if ((*&v6 & 0x100) != 0)
  {
    v7 = 0.5;
  }

  height = [lumaCopy height];

  *&v12 = v7 / height;
  return COERCE_DOUBLE(__PAIR64__(v12, v14));
}

- (int)convertRGB:(id)b inRGBA:(id)a outRGBA:(id)bA toLinear:(BOOL)linear transferFunction:(id)function outRect:
{
  v25 = v7;
  linearCopy = linear;
  bCopy = b;
  aCopy = a;
  bACopy = bA;
  functionCopy = function;
  if ([(PTMetalContext *)self->_metalContext imageblocksSupported]|| !v25)
  {
    v19 = [PTColorConversion getTransferFunction:functionCopy toLinear:linearCopy, v25];
    v20 = [PTImageblockConfig alloc];
    v21 = [PTTexture createRGBA:bACopy];
    v17 = [(PTImageblockConfig *)v20 initWithPTTexture:v21 outRect:v26];

    outOffset = [v17 outOffset];
    computeCommandEncoder = [bCopy computeCommandEncoder];
    if (!computeCommandEncoder)
    {
      v23 = _PTLogSystem();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [PTColorConversion convertRGB:inRGBA:outRGBA:toLinear:transferFunction:outRect:];
      }
    }

    [computeCommandEncoder setComputePipelineState:self->_convertRGB[v19]];
    if ([(PTMetalContext *)self->_metalContext imageblocksSupported])
    {
      [computeCommandEncoder setImageblockWidth:-[NSObject imageblockSize](v17 height:{"imageblockSize"), -[NSObject imageblockSize](v17, "imageblockSize")}];
    }

    [computeCommandEncoder setTexture:aCopy atIndex:0];
    [computeCommandEncoder setTexture:bACopy atIndex:1];
    [computeCommandEncoder setBytes:&outOffset length:8 atIndex:0];
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

    [computeCommandEncoder dispatchThreads:v28 threadsPerThreadgroup:v27];
    [computeCommandEncoder endEncoding];

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

- (int)convertRGB:(id)b inRGBA:(id)a outRGBA:(id)bA toLinear:(BOOL)linear transferFunction:(id)function
{
  linearCopy = linear;
  functionCopy = function;
  bACopy = bA;
  aCopy = a;
  bCopy = b;
  width = [bACopy width];
  height = [bACopy height];
  LODWORD(v18) = 0;
  WORD2(v18) = width;
  HIWORD(v18) = height;
  LODWORD(linearCopy) = [(PTColorConversion *)self convertRGB:bCopy inRGBA:aCopy outRGBA:bACopy toLinear:linearCopy transferFunction:functionCopy outRect:v18];

  return linearCopy;
}

- (int)convertRGBtoYUV:(id)v inRGBA:(id)a outLuma:(id)luma outChroma:(id)chroma toLinear:(BOOL)linear transferFunction:(id)function colorYCbCrMatrix:(id)matrix colorYCbCrFullRange:(BOOL)self0 colorYCbCrDepthOut:(int64_t)self1
{
  linearCopy = linear;
  matrixCopy = matrix;
  functionCopy = function;
  chromaCopy = chroma;
  lumaCopy = luma;
  aCopy = a;
  vCopy = v;
  width = [lumaCopy width];
  height = [lumaCopy height];
  LODWORD(v25) = 0;
  WORD2(v25) = width;
  HIWORD(v25) = height;
  LOBYTE(v28) = range;
  v26 = [(PTColorConversion *)self convertRGBtoYUV:vCopy inRGBA:aCopy outLuma:lumaCopy outChroma:chromaCopy toLinear:linearCopy transferFunction:functionCopy colorYCbCrMatrix:v25 colorYCbCrFullRange:matrixCopy colorYCbCrDepthOut:v28 outRect:out];

  return v26;
}

- (int)convertRGBtoYUV:(id)v inRGBA:(id)a outLuma:(id)luma outChroma:(id)chroma toLinear:(BOOL)linear transferFunction:(id)function colorYCbCrMatrix:(id)matrix colorYCbCrFullRange:(BOOL)self0 colorYCbCrDepthOut:(int64_t)self1 outRect:
{
  v40 = v11;
  vCopy = v;
  aCopy = a;
  lumaCopy = luma;
  chromaCopy = chroma;
  functionCopy = function;
  matrixCopy = matrix;
  imageblocksSupported = [(PTMetalContext *)self->_metalContext imageblocksSupported];
  v24 = LOBYTE(v40) | BYTE2(v40);
  if (!imageblocksSupported)
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

  v37 = aCopy;
  v26 = vCopy;
  v39 = functionCopy;
  v27 = [PTColorConversion getTransferFunction:"getTransferFunction:toLinear:" toLinear:?];
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v38 = matrixCopy;
  [PTColorConversion getColorMatrix:matrixCopy toRGB:0 fullRange:range colorYCbCrDepth:out];
  v44 = [PTColorConversion getChromaSubsampledFromLuma:lumaCopy texChroma:chromaCopy];
  v28 = [PTImageblockConfig alloc];
  v29 = [PTTexture createYUV420:lumaCopy chroma:chromaCopy];
  v30 = [(PTImageblockConfig *)v28 initWithPTTexture:v29 outRect:v40];

  outOffset = [(PTImageblockConfig *)v30 outOffset];
  v31 = v26;
  v32 = v26;
  aCopy = v37;
  computeCommandEncoder = [v32 computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    v34 = _PTLogSystem();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [PTColorConversion convertRGB:inRGBA:outRGBA:toLinear:transferFunction:outRect:];
    }
  }

  [computeCommandEncoder setComputePipelineState:self->_convertRGBToYUV[v27]];
  if ([(PTMetalContext *)self->_metalContext imageblocksSupported])
  {
    [computeCommandEncoder setImageblockWidth:-[PTImageblockConfig imageblockSize](v30 height:{"imageblockSize"), -[PTImageblockConfig imageblockSize](v30, "imageblockSize")}];
  }

  [computeCommandEncoder setTexture:v37 atIndex:0];
  [computeCommandEncoder setTexture:lumaCopy atIndex:1];
  [computeCommandEncoder setTexture:chromaCopy atIndex:2];
  [computeCommandEncoder setBytes:&v44 + 2 length:24 atIndex:0];
  [computeCommandEncoder setBytes:&v44 length:2 atIndex:1];
  functionCopy = v39;
  if ([(PTMetalContext *)self->_metalContext imageblocksSupported])
  {
    [computeCommandEncoder setBytes:&outOffset length:8 atIndex:2];
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

  [computeCommandEncoder dispatchThreads:v42 threadsPerThreadgroup:v41];
  [computeCommandEncoder endEncoding];

  v35 = 0;
  vCopy = v31;
  matrixCopy = v38;
LABEL_22:

  return v35;
}

- (int)convertYUVtoRGB:(id)b inLuma:(id)luma inChroma:(id)chroma outRGBA:(id)a toLinear:(BOOL)linear transferFunction:(id)function colorYCbCrMatrix:(id)matrix colorYCbCrFullRange:(BOOL)self0 colorYCbCrDepthIn:(int64_t)self1
{
  linearCopy = linear;
  lumaCopy = luma;
  chromaCopy = chroma;
  aCopy = a;
  matrixCopy = matrix;
  bCopy = b;
  v21 = [PTColorConversion getTransferFunction:function toLinear:linearCopy];
  v32 = 0;
  v33 = 0;
  v34 = 0;
  [PTColorConversion getColorMatrix:matrixCopy toRGB:1 fullRange:range colorYCbCrDepth:in];

  v22 = lumaCopy;
  v31 = [PTColorConversion getChromaSubsampledFromLuma:lumaCopy texChroma:chromaCopy];
  v23 = [[PTImageblockConfig alloc] initWithTexture:aCopy];
  outOffset = [(PTImageblockConfig *)v23 outOffset];
  computeCommandEncoder = [bCopy computeCommandEncoder];

  if (!computeCommandEncoder)
  {
    v25 = _PTLogSystem();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [PTColorConversion convertRGB:inRGBA:outRGBA:toLinear:transferFunction:outRect:];
    }
  }

  [computeCommandEncoder setComputePipelineState:{self->_convertYUVToRGB[v21], lumaCopy}];
  if ([(PTMetalContext *)self->_metalContext imageblocksSupported])
  {
    [computeCommandEncoder setImageblockWidth:-[PTImageblockConfig imageblockSize](v23 height:{"imageblockSize"), -[PTImageblockConfig imageblockSize](v23, "imageblockSize")}];
  }

  [computeCommandEncoder setTexture:v22 atIndex:0];
  [computeCommandEncoder setTexture:chromaCopy atIndex:1];
  [computeCommandEncoder setTexture:aCopy atIndex:2];
  [computeCommandEncoder setBytes:&v31 + 2 length:24 atIndex:0];
  [computeCommandEncoder setBytes:&v31 length:2 atIndex:1];
  if ([(PTMetalContext *)self->_metalContext imageblocksSupported])
  {
    [computeCommandEncoder setBytes:&outOffset length:8 atIndex:2];
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

  [computeCommandEncoder dispatchThreads:v29 threadsPerThreadgroup:v28];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (int)convertRGBLinearFromPTTexture:(id)texture inPTTexture:(id)tTexture outRGBA:(id)a
{
  aCopy = a;
  tTextureCopy = tTexture;
  textureCopy = texture;
  if ([tTextureCopy isRGB])
  {
    texRGBA = [tTextureCopy texRGBA];
    transferFunction = [tTextureCopy transferFunction];

    v13 = [(PTColorConversion *)self convertRGB:textureCopy inRGBA:texRGBA outRGBA:aCopy toLinear:1 transferFunction:transferFunction];
  }

  else
  {
    texRGBA = [tTextureCopy texLuma];
    transferFunction = [tTextureCopy texChroma];
    transferFunction2 = [tTextureCopy transferFunction];
    yCbCrMatrix = [tTextureCopy YCbCrMatrix];
    yCbCrFullRange = [tTextureCopy YCbCrFullRange];
    yCbCrColorDepth = [tTextureCopy YCbCrColorDepth];

    LOBYTE(v19) = yCbCrFullRange;
    v13 = [(PTColorConversion *)self convertYUVtoRGB:textureCopy inLuma:texRGBA inChroma:transferFunction outRGBA:aCopy toLinear:1 transferFunction:transferFunction2 colorYCbCrMatrix:yCbCrMatrix colorYCbCrFullRange:v19 colorYCbCrDepthIn:yCbCrColorDepth];

    aCopy = yCbCrMatrix;
    textureCopy = transferFunction2;
  }

  return v13;
}

- (int)convertRGBLinearToPTTexture:(id)texture inRGBA:(id)a outPTTexture:(id)tTexture
{
  tTextureCopy = tTexture;
  aCopy = a;
  textureCopy = texture;
  width = [tTextureCopy width];
  height = [tTextureCopy height];
  LODWORD(v13) = 0;
  WORD2(v13) = width;
  HIWORD(v13) = height;
  LODWORD(self) = [(PTColorConversion *)self convertRGBLinearToPTTexture:textureCopy inRGBA:aCopy outPTTexture:tTextureCopy outRect:v13];

  return self;
}

- (int)convertRGBLinearToPTTexture:(id)texture inRGBA:(id)a outPTTexture:(id)tTexture outRect:
{
  v6 = v5;
  tTextureCopy = tTexture;
  aCopy = a;
  textureCopy = texture;
  if ([tTextureCopy isRGB])
  {
    texRGBA = [tTextureCopy texRGBA];
    transferFunction = [tTextureCopy transferFunction];

    v15 = [(PTColorConversion *)self convertRGB:textureCopy inRGBA:aCopy outRGBA:texRGBA toLinear:0 transferFunction:transferFunction outRect:v6];
  }

  else
  {
    texRGBA = [tTextureCopy texLuma];
    transferFunction = [tTextureCopy texChroma];
    transferFunction2 = [tTextureCopy transferFunction];
    yCbCrMatrix = [tTextureCopy YCbCrMatrix];
    yCbCrFullRange = [tTextureCopy YCbCrFullRange];
    yCbCrColorDepth = [tTextureCopy YCbCrColorDepth];

    LOBYTE(v21) = yCbCrFullRange;
    v15 = [(PTColorConversion *)self convertRGBtoYUV:textureCopy inRGBA:aCopy outLuma:texRGBA outChroma:transferFunction toLinear:0 transferFunction:transferFunction2 colorYCbCrMatrix:v6 colorYCbCrFullRange:yCbCrMatrix colorYCbCrDepthOut:v21 outRect:yCbCrColorDepth];

    aCopy = yCbCrMatrix;
    textureCopy = transferFunction2;
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