@interface VISISPMeshGeneratorV2
- (VISISPMeshGeneratorV2)initWithMetalContext:(id)context metalCommandQueue:(id)queue;
- (__n128)gridSize;
- (__n128)inputSize;
- (__n128)outputSize;
- (int)_blitCopyLTMGrid:(id)grid;
- (int)generateMeshWithTransforms:(float *)(a3 transforms3x3:validBufferRect:ltmLUT:;
- (void)dealloc;
@end

@implementation VISISPMeshGeneratorV2

void __64__VISISPMeshGeneratorV2_initWithMetalContext_metalCommandQueue___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MTLTextureDescriptor);
  v5 = v2;
  if (!v2)
  {
    __64__VISISPMeshGeneratorV2_initWithMetalContext_metalCommandQueue___block_invoke_cold_1();
    v2 = 0;
  }

  [v2 setTextureType:2];
  [v5 setPixelFormat:23];
  [v5 setWidth:8];
  [v5 setHeight:8];
  [v5 setMipmapLevelCount:1];
  [v5 setUsage:1];
  v3 = [*(*(a1 + 32) + 8) device];
  v4 = [v3 newTextureWithDescriptor:v5];

  if (!v4)
  {
    __64__VISISPMeshGeneratorV2_initWithMetalContext_metalCommandQueue___block_invoke_cold_2();
  }

  if ([*(a1 + 32) _blitCopyLTMGrid:v4])
  {
    __64__VISISPMeshGeneratorV2_initWithMetalContext_metalCommandQueue___block_invoke_cold_3();
  }
}

- (void)dealloc
{
  free(*self->_inputPoints);
  v3.receiver = self;
  v3.super_class = VISISPMeshGeneratorV2;
  [(VISISPMeshGeneratorV2 *)&v3 dealloc];
}

- (__n128)inputSize
{
  LOWORD(v1) = *(self + 40);
  WORD2(v1) = *(self + 42);
  result.n128_u32[0] = v1;
  result.n128_u16[2] = WORD2(v1);
  return result;
}

- (__n128)outputSize
{
  LOWORD(v1) = *(self + 44);
  WORD2(v1) = *(self + 46);
  result.n128_u32[0] = v1;
  result.n128_u16[2] = WORD2(v1);
  return result;
}

- (__n128)gridSize
{
  LOWORD(v1) = *(self + 48);
  WORD2(v1) = *(self + 50);
  result.n128_u32[0] = v1;
  result.n128_u16[2] = WORD2(v1);
  return result;
}

- (VISISPMeshGeneratorV2)initWithMetalContext:(id)context metalCommandQueue:(id)queue
{
  contextCopy = context;
  queueCopy = queue;
  v26.receiver = self;
  v26.super_class = VISISPMeshGeneratorV2;
  v9 = [(VISISPMeshGeneratorV2 *)&v26 init];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_12;
  }

  objc_storeStrong(&v9->_metalContext, context);
  metalContext = v10->_metalContext;
  if (!metalContext)
  {
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = [[FigMetalContext alloc] initWithbundle:v12 andOptionalCommandQueue:queueCopy];
    v14 = v10->_metalContext;
    v10->_metalContext = v13;

    metalContext = v10->_metalContext;
    if (!metalContext)
    {
      goto LABEL_12;
    }
  }

  if (queueCopy)
  {
    [(FigMetalContext *)metalContext setCommandQueue:queueCopy];
    metalContext = v10->_metalContext;
  }

  device = [(FigMetalContext *)metalContext device];
  v16 = [device newBufferWithLength:648652 options:0];
  meshParamsBuffer = v10->_meshParamsBuffer;
  v10->_meshParamsBuffer = v16;

  v18 = v10->_meshParamsBuffer;
  if (v18 && ([NSData dataWithBytesNoCopy:[(MTLBuffer *)v18 contents] length:648652 freeWhenDone:0], v19 = objc_claimAutoreleasedReturnValue(), ISPMeshParams = v10->_ISPMeshParams, v10->_ISPMeshParams = v19, ISPMeshParams, v10->_ISPMeshParams))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __64__VISISPMeshGeneratorV2_initWithMetalContext_metalCommandQueue___block_invoke;
    block[3] = &unk_55148;
    v21 = v10;
    v25 = v21;
    if (initWithMetalContext_metalCommandQueue__onceToken != -1)
    {
      dispatch_once(&initWithMetalContext_metalCommandQueue__onceToken, block);
    }

    v22 = v21;
  }

  else
  {
LABEL_12:
    v22 = 0;
  }

  return v22;
}

- (int)generateMeshWithTransforms:(float *)(a3 transforms3x3:validBufferRect:ltmLUT:
{
  v6 = v5;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = a5;
  bytes = [(NSData *)self->_ISPMeshParams bytes];
  if (*self->_inputSize < *self->_outputSize || *&self->_inputSize[2] < *&self->_outputSize[2])
  {
    v70 = -12780;
    goto LABEL_34;
  }

  v17 = bytes;
  *bytes = 1;
  *(bytes + 2) = y;
  *(bytes + 3) = width;
  *(bytes + 4) = height;
  *(bytes + 5) = v6;
  bytes[3] = 0;
  *(bytes + 8) = *self->_outputSize;
  *(bytes + 9) = *&self->_outputSize[2];
  *(bytes + 20) = 1;
  bytes[6] = 0;
  v18 = *self->_gridSize;
  v71 = v12;
  if (v18)
  {
    v19 = *&x;
    v20 = HIDWORD(x);
  }

  else
  {
    v20 = 0;
    v18 = *self->_outputSize;
    v19 = *&x;
  }

  v21 = vmax_u32(v19, 0x200000002);
  v22 = *&self->_outputSize[2];
  if (*&self->_gridSize[2])
  {
    v23 = *&self->_gridSize[2];
  }

  else
  {
    v23 = *&self->_outputSize[2];
  }

  v24 = *self->_inputSize;
  v25 = *self->_outputSize;
  v26 = *&self->_inputSize[2];
  v27 = *self->_inputPoints;
  v73 = v21;
  if (v27)
  {
    _ZF = v21.i32[0] == *self->_inputPointsCount && v21.i32[1] == *&self->_inputPointsCount[2];
    if (_ZF)
    {
      goto LABEL_19;
    }

    *self->_inputPoints = 0;
    free(v27);
    v21 = v73;
  }

  *&self->_inputPointsCount[2] = v21.i16[2];
  *self->_inputPointsCount = v21.i16[0];
  v29 = malloc_type_malloc(16 * vmul_lane_s32(v21, v21, 1).u32[0], 0x1000040451B5BE8uLL);
  v21 = v73;
  *self->_inputPoints = v29;
  if (!v29)
  {
    v70 = 0;
    v12 = v71;
    goto LABEL_34;
  }

LABEL_19:
  v30 = 0;
  v31 = 0;
  __asm { FMOV            V0.4S, #1.0 }

  _Q0.i64[0] = __PAIR64__(COERCE_UNSIGNED_INT(vcvts_n_f32_s32(v26 - v22, 1uLL)), COERCE_UNSIGNED_INT(vcvts_n_f32_s32(v24 - v25, 1uLL)));
  v35 = v21.u32[0];
  v36 = v21.i32[1];
  do
  {
    v37 = 0;
    v38 = v35;
    v39 = v31;
    v40 = v30;
    do
    {
      v41 = &(*a3)[9 * v39];
      v42.i64[0] = *v41;
      v14.f32[0] = v41[2];
      *&v43 = v37;
      v15.i64[0] = *(v41 + 3);
      v44 = vzip1_s32(*v41, *v15.i8);
      *(&v43 + 1) = (v31 * v23);
      *v45.f32 = vzip1_s32(v44, *(v41 + 3));
      *&v45.u32[2] = vdup_lane_s32(v44, 1);
      v46 = vaddq_f32(_Q0, v43);
      v42.i64[1] = *(v41 + 3);
      v14.f32[1] = v41[5];
      v14.f32[2] = v41[8];
      *(*self->_inputPoints + 16 * v40++) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v45, v46.f32[0]), vuzp2q_s32(v42, v15), *v46.f32, 1), v14, v46, 2);
      v39 += v20;
      v37 += v18;
      --v38;
    }

    while (v38);
    ++v31;
    v30 += v35;
  }

  while (v31 != v36);
  v47 = (*self->_outputSize + 31) >> 5;
  v48 = (*&self->_outputSize[2] + 31) >> 5;
  v12 = v71;
  if (8 * v47 + 8 + (8 * v47 + 8) * v48 > 0x1738F)
  {
    goto LABEL_35;
  }

  v49 = 0;
  v50 = 0;
  v52 = v17 + 7;
  v53 = v47 + 1;
  do
  {
    v54 = 0;
    v55 = 4 * v50;
    do
    {
      v56.f32[0] = v54 * 32.0;
      v56.f32[1] = v49 * 32.0;
      v51.f32[1] = v23;
      v51.f32[0] = v18;
      v57 = vdiv_f32(v56, v51);
      v58.i32[0] = *self->_inputPointsCount;
      v59 = vrndm_f32(v57);
      v58.i32[1] = *&self->_inputPointsCount[2];
      v60 = vcvt_f32_s32(vadd_s32(v58, 0x100000001));
      v61 = vcvt_s32_f32(vbsl_s8(vcgt_f32(v60, v59), v59, v60));
      v62 = vsub_f32(v57, vcvt_f32_u32(v61));
      v63 = *self->_inputPoints;
      v64 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*(v63 + 16 * (v35 * v61.i32[1] + (v61.i16[0] + 1))), (1.0 - v62.f32[1]) * v62.f32[0]), *(v63 + 16 * (v35 * v61.i32[1] + v61.i32[0])), (1.0 - v62.f32[0]) * (1.0 - v62.f32[1])), *(v63 + 16 * (v35 * (v61.i16[2] + 1) + v61.i32[0])), vmuls_lane_f32(1.0 - v62.f32[0], v62, 1)), *(v63 + 16 * (v35 * (v61.i16[2] + 1) + (v61.i16[0] + 1))), vmuls_lane_f32(v62.f32[0], v62, 1));
      v65 = v50 + 1;
      v52[v50] = ((256.0 * v64.f32[0]) / v64.f32[2]);
      v50 += 2;
      v52[v65] = (vmuls_lane_f32(256.0, *v64.f32, 1) / v64.f32[2]);
      ++v54;
      v55 += 8;
    }

    while (v53 != v54);
    _ZF = v49++ == v48;
  }

  while (!_ZF);
  v17[6] = v55;
  v17[23787] = 1;
  v17[23794] = 0;
  *(v17 + 5947) = 0u;
  *(v17 + 95167) = 0;
  if (!v71)
  {
    v70 = 0;
    goto LABEL_34;
  }

  v66 = [v71 width] / 0x41;
  height = [v71 height];
  *(v17 + 11894) = vdup_n_s32(0x3FF8000u);
  v17[23790] = (v66 + *self->_inputSize - 1) / v66;
  v17[23791] = (height + *&self->_inputSize[2] - 1) / height;
  *(v17 + 47584) = v66;
  *(v17 + 47585) = height;
  width = [v71 width];
  *(v17 + 47586) = 2 * width;
  v17[23794] = (2 * width) * [v71 height];
  if ((v17[23793] & 0x3F) != 0)
  {
LABEL_35:
    v70 = -12782;
    goto LABEL_34;
  }

  v70 = [(VISISPMeshGeneratorV2 *)self _blitCopyLTMGrid:v71];
  if (!v70)
  {
    *(v17 + 95174) = 1;
  }

LABEL_34:

  return v70;
}

- (int)_blitCopyLTMGrid:(id)grid
{
  gridCopy = grid;
  commandQueue = [(FigMetalContext *)self->_metalContext commandQueue];
  commandBuffer = [commandQueue commandBuffer];

  if (commandBuffer && ([commandBuffer blitCommandEncoder], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    memset(v12, 0, sizeof(v12));
    v11[0] = [gridCopy width];
    v11[1] = [gridCopy height];
    v11[2] = 1;
    [v8 copyFromTexture:gridCopy sourceSlice:0 sourceLevel:0 sourceOrigin:v12 sourceSize:v11 toBuffer:self->_meshParamsBuffer destinationOffset:95180 destinationBytesPerRow:2 * objc_msgSend(gridCopy destinationBytesPerImage:{"width"), 0}];
    [v8 endEncoding];
    [commandBuffer commit];
    [commandBuffer waitUntilCompleted];

    v9 = 0;
  }

  else
  {
    v9 = -12782;
  }

  return v9;
}

uint64_t __64__VISISPMeshGeneratorV2_initWithMetalContext_metalCommandQueue___block_invoke_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_0();
  return FigDebugAssert3();
}

uint64_t __64__VISISPMeshGeneratorV2_initWithMetalContext_metalCommandQueue___block_invoke_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_0();
  return FigDebugAssert3();
}

uint64_t __64__VISISPMeshGeneratorV2_initWithMetalContext_metalCommandQueue___block_invoke_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_0();
  return FigDebugAssert3();
}

@end