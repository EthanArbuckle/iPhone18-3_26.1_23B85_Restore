@interface affineGPUMetal
- (affineGPUMetal)initWithMetalContext:(id)a3;
- (id)_allocatePyramidWithPixelFormat:(unint64_t)a3 bottomLevelWidth:(unint64_t)a4 bottomLevelHeight:(unint64_t)a5 scaleFactor:(unint64_t)a6 includeBottomLevel:(BOOL)a7 minimumDimension:(unint64_t)a8;
- (id)_compileShader:(id)a3 fragment:(id)a4 pixelFormat:(unint64_t)a5 deltaMapPixelFormat:(unint64_t)a6 unstyledPixelFormat:(unint64_t)a7 constants:(id)a8;
- (int)_allocateSemanticStyleColorCubeTextures;
- (int)_blurDeltaMapBordersFromStyledPixelBuffer:(__CVBuffer *)a3 withUnstyledPixelBuffer:(__CVBuffer *)a4 to:(__CVBuffer *)a5;
- (int)_cachedTexturesFromPixelBuffer:(__CVBuffer *)a3 isTwoPass:(BOOL)a4 isOptimized:(BOOL)a5 textures:(id *)a6;
- (int)_createRenderPipelinesForShaders:(id)a3;
- (int)_duplicateBottomRowsOnPixelBuffer:(__CVBuffer *)a3;
- (int)_getBlurDeltaMapBordersShaderParameters:(unint64_t)a3 pipelineIndexToUse:(int *)a4;
- (int)_getBlurShaderParameters:(unint64_t)a3 pipelineIndexToUse:(int *)a4;
- (int)_getTransformShaderParameters:(unint64_t)a3 isLuma:(BOOL)a4 isRGB:(BOOL)a5 isAttachment:(BOOL)a6 pixelRatio:(unsigned int *)a7 pipelineIndexToUse:(int *)a8;
- (int)_initBlurShaders;
- (int)_initComputeShaders;
- (int)_initTransformShaders;
- (int)_renderBlurInputTextures:(id *)a3 inputTexturesCount:(unsigned int)a4 outputTextures:(id *)a5;
- (int)_transformInputPixelBuffer:(__CVBuffer *)a3 outputPixelBuffer:(__CVBuffer *)a4 ltmLUT:(id)a5 isAttachment:(BOOL)a6 commandBuffer:(id)a7;
- (int)renderWithPixelBuffer:(__CVBuffer *)a3 metadata:(id)a4 pixelBufferValidRect:(CGRect *)a5 ltmLUT:(id)a6 outputPixelBuffer:(__CVBuffer *)a7 isAttachmentRendering:(BOOL)a8;
- (int)renderWithSampleBuffer:(opaqueCMSampleBuffer *)a3 pixelBufferValidRect:(CGRect *)a4 ltmLUT:(id)a5 outputPixelBuffer:(__CVBuffer *)a6 isAttachmentRendering:(BOOL)a7;
- (int)setTransformsArray:(float *)(a3 transforms3x3:transformStrides:inputSize:outputSize:pixelBufferValidRect:isQuadraSensor:;
- (int)updateCubesIfNeeded;
- (uint64_t)_allocateSemanticStyleColorCubeTextures;
- (uint64_t)_initBlurShaders;
- (uint64_t)_initComputeShaders;
- (uint64_t)_initTransformShaders;
- (uint64_t)updateCubesIfNeeded;
- (void)_addCommandBufferHandler:(id)a3;
- (void)_blurDuplicatedPixelsOnPixelBuffer:(__CVBuffer *)a3 validBufferRect:(CGRect *)a4 forDeltaMap:(BOOL)a5;
- (void)_deallocateTransformBuffers;
- (void)cacheSourcePixelBuffer:(__CVBuffer *)a3;
- (void)configureBlurWith:(id *)a3;
- (void)configureP3ToBT2020conversion:(BOOL)a3;
- (void)dealloc;
- (void)finish;
- (void)setRenderMethod:(int)a3;
@end

@implementation affineGPUMetal

- (affineGPUMetal)initWithMetalContext:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [affineGPUMetal initWithMetalContext:?];
LABEL_15:
    v7 = 0;
    goto LABEL_8;
  }

  v11.receiver = self;
  v11.super_class = affineGPUMetal;
  v6 = [(affineGPUMetal *)&v11 init];
  v7 = v6;
  if (!v6)
  {
    [affineGPUMetal initWithMetalContext:];
    goto LABEL_8;
  }

  objc_storeStrong(&v6->_metalContext, a3);
  v7->_useBicubic = 1;
  if ([(affineGPUMetal *)v7 _initTransformShaders])
  {
    [affineGPUMetal initWithMetalContext:];
    goto LABEL_15;
  }

  if ([(affineGPUMetal *)v7 _initBlurShaders])
  {
    [affineGPUMetal initWithMetalContext:];
    goto LABEL_15;
  }

  if ([(affineGPUMetal *)v7 _initComputeShaders])
  {
    [affineGPUMetal initWithMetalContext:];
    goto LABEL_15;
  }

  v8 = objc_opt_new();
  fgCubeTexture = v7->_fgCubeTexture;
  v7->_fgCubeTexture = v8;

  if (!v7->_fgCubeTexture)
  {
    [affineGPUMetal initWithMetalContext:v7];
    goto LABEL_15;
  }

  [(FigMetalContext *)v7->_metalContext setQueuePriority:1];
LABEL_8:

  return v7;
}

- (void)dealloc
{
  [(affineGPUMetal *)self finish];
  cvMetalTextureCacheRef = self->_cvMetalTextureCacheRef;
  if (cvMetalTextureCacheRef)
  {
    CFRelease(cvMetalTextureCacheRef);
  }

  v4.receiver = self;
  v4.super_class = affineGPUMetal;
  [(affineGPUMetal *)&v4 dealloc];
}

- (int)setTransformsArray:(float *)(a3 transforms3x3:transformStrides:inputSize:outputSize:pixelBufferValidRect:isQuadraSensor:
{
  v11 = v6;
  if (gGMFigKTraceEnabled == 1)
  {
    v124 = v7;
    v125 = v5;
    v123 = v8;
    kdebug_trace();
    *&v8 = v123;
    *&v7 = v124;
    v5 = v125;
  }

  if (!v7)
  {
    [affineGPUMetal setTransformsArray:transforms3x3:transformStrides:inputSize:outputSize:pixelBufferValidRect:isQuadraSensor:];
LABEL_87:
    v121 = -12780;
    goto LABEL_74;
  }

  if (!DWORD1(v7))
  {
    [affineGPUMetal setTransformsArray:transforms3x3:transformStrides:inputSize:outputSize:pixelBufferValidRect:isQuadraSensor:];
    goto LABEL_87;
  }

  if (!v8)
  {
    [affineGPUMetal setTransformsArray:transforms3x3:transformStrides:inputSize:outputSize:pixelBufferValidRect:isQuadraSensor:];
    goto LABEL_87;
  }

  if (!DWORD1(v8))
  {
    [affineGPUMetal setTransformsArray:transforms3x3:transformStrides:inputSize:outputSize:pixelBufferValidRect:isQuadraSensor:];
    goto LABEL_87;
  }

  *(&v7 + 1) = v8;
  p_inputWidth = &self->_inputWidth;
  *&self->_inputWidth = v7;
  v15 = v5.i32[0];
  v16 = v5.u32[1];
  if (!*&v5)
  {
    [(affineGPUMetal *)self _deallocateTransformBuffers];
LABEL_73:
    v121 = 0;
    goto LABEL_74;
  }

  if (!v5.i32[0])
  {
    [affineGPUMetal setTransformsArray:transforms3x3:transformStrides:inputSize:outputSize:pixelBufferValidRect:isQuadraSensor:];
    goto LABEL_87;
  }

  if (!v5.i32[1])
  {
    [affineGPUMetal setTransformsArray:transforms3x3:transformStrides:inputSize:outputSize:pixelBufferValidRect:isQuadraSensor:];
    goto LABEL_87;
  }

  v17 = v5.i32[0] - 1;
  if ((v5.i32[0] - 1) <= 1)
  {
    v17 = 1;
  }

  if (*&self->_texMatCount[4] != v17)
  {
    goto LABEL_16;
  }

  v18 = v5.i32[1] - 1;
  if ((v5.i32[1] - 1) <= 1)
  {
    v18 = 1;
  }

  if (HIDWORD(*&self->_texMatCount[4]) != v18)
  {
LABEL_16:
    texMats = self->_texMats;
    if (texMats)
    {
      self->_texMats = 0;
      v126 = v5;
      free(texMats);
      v5 = v126;
    }

    v20 = vmax_u32(v5, 0x200000002);
    *&self->_texMatCount[4] = v20;
    v21 = malloc_type_malloc(48 * vmul_lane_s32(v20, v20, 1).u32[0], 0x1000040EED21634uLL);
    self->_texMats = v21;
    if (!v21)
    {
      [affineGPUMetal setTransformsArray:transforms3x3:transformStrides:inputSize:outputSize:pixelBufferValidRect:isQuadraSensor:];
      goto LABEL_92;
    }

    v22 = HIDWORD(*&self->_texMatCount[4]);
    v23 = *&self->_texMatCount[4];
    LODWORD(self->_swathMatrices) = 8 * v23 * v22;
    self->_overscanHeight = 48 * v23 * v22;
    self->_swathRenderVertexIndicesBufferSize = (12 * v22 - 12) * (v23 + 0x7FFFFFFF);
    v24 = [(FigMetalContext *)self->_metalContext device];
    v25 = [v24 newBufferWithLength:LODWORD(self->_swathMatrices) options:0];
    verticesBuffer = self->_verticesBuffer;
    self->_verticesBuffer = v25;

    if (!self->_verticesBuffer)
    {
      [affineGPUMetal setTransformsArray:transforms3x3:transformStrides:inputSize:outputSize:pixelBufferValidRect:isQuadraSensor:];
      goto LABEL_92;
    }

    v27 = [(FigMetalContext *)self->_metalContext device];
    v28 = [v27 newBufferWithLength:self->_overscanHeight options:0];
    matricesBuffer = self->_matricesBuffer;
    self->_matricesBuffer = v28;

    if (!self->_matricesBuffer)
    {
      [affineGPUMetal setTransformsArray:transforms3x3:transformStrides:inputSize:outputSize:pixelBufferValidRect:isQuadraSensor:];
      goto LABEL_92;
    }

    v30 = [(FigMetalContext *)self->_metalContext device];
    v31 = [v30 newBufferWithLength:self->_swathRenderVertexIndicesBufferSize options:0];
    vertexIndicesBuffer = self->_vertexIndicesBuffer;
    self->_vertexIndicesBuffer = v31;

    if (!self->_vertexIndicesBuffer)
    {
      [affineGPUMetal setTransformsArray:transforms3x3:transformStrides:inputSize:outputSize:pixelBufferValidRect:isQuadraSensor:];
      goto LABEL_92;
    }

    *&self->_texMatCount[4] = vadd_s32(*&self->_texMatCount[4], -1);
  }

  if (self->_texMats)
  {
    v33 = 0;
    v34 = 0;
    v35 = 0;
    do
    {
      v36 = v33;
      v33 += v16;
      v37 = v16;
      do
      {
        v38 = v36;
        v39 = (self->_texMats + 48 * v34);
        v40 = &(*a3)[9 * v38];
        v41.i32[0] = v40[2];
        v42 = *(v40 + 3);
        v43 = *(v40 + 3);
        v44 = *(v40 + 8);
        v45 = vzip1_s32(*v40, v42);
        v41.i32[1] = v40[5];
        v46 = vzip2_s32(*v40, v42);
        v39[1].i32[0] = v43;
        *v39 = v45;
        v39[3].i32[0] = HIDWORD(v43);
        v39[2] = v46;
        v39[5].i32[0] = v44;
        v39[4] = v41;
        v36 = v38 + 1;
        ++v34;
        --v37;
      }

      while (v37);
      if (v16 == 1)
      {
        v47 = self->_texMats;
        v48 = (v47 + 48 * v34);
        v49 = (v47 + 48 * v38);
        v50 = *v49;
        v51 = v49[2];
        ++v34;
        v48[1] = v49[1];
        v48[2] = v51;
        *v48 = v50;
      }

      ++v35;
    }

    while (v35 != v15);
    if (v15 == 1)
    {
      if (v16 <= 2)
      {
        v52 = 2;
      }

      else
      {
        v52 = v16;
      }

      v53 = -v52;
      do
      {
        v54 = self->_texMats;
        v55 = (v54 + 48 * v34);
        v56 = (v54 + 48 * v53 + 48 * v34);
        v57 = v56[1];
        *v55 = *v56;
        v55[1] = v57;
        v55[2] = v56[2];
        ++v34;
        --v52;
      }

      while (v52);
    }

    *self->_transformStrides = v11;
    v58 = [(MTLBuffer *)self->_verticesBuffer contents:v123];
    *&self->_swathVertices[4] = v58;
    if (v58)
    {
      v59 = [(MTLBuffer *)self->_matricesBuffer contents];
      *&self->_swathMatricesBufferSize = v59;
      if (v59)
      {
        v60 = [(MTLBuffer *)self->_vertexIndicesBuffer contents];
        self->_swathRenderVertexIndices = v60;
        if (v60)
        {
          self->_transformConfig.clampingEnabled = 0;
          *&self->_anon_281[43] = 0;
          if (a4)
          {
            x = a4->origin.x;
            v62 = *&self->_anon_281[15];
            v66.f32[0] = x;
            *&self->_anon_281[15] = x;
            v63 = a4->origin.x + a4->size.width;
            v66.f32[1] = v63;
            *&self->_anon_281[15] = v66;
            y = a4->origin.y;
            v66.f32[2] = y;
            *&self->_anon_281[15] = v66;
            v65 = a4->origin.y + a4->size.height;
            v66.f32[3] = v65;
            if (x >= 2.0)
            {
              self->_transformConfig.clampingEnabled = 1;
              v66.f32[0] = x + 2.0;
              v66.f32[1] = v63 + -2.0;
            }

            v67.i32[0] = v66.i32[2];
            if (v66.f32[2] >= 2.0)
            {
              self->_transformConfig.clampingEnabled = 1;
              v67 = vadd_f32(*&vextq_s8(v66, v66, 8uLL), COERCE_FLOAT32X2_T(-2.00000048));
              v66.i32[3] = v67.i32[1];
            }

            v68 = *p_inputWidth;
            v69.i64[1] = -1;
            *v69.i8 = vcvt_f32_u32(vadd_s32(*p_inputWidth, -1));
            v66.i32[2] = v67.i32[0];
            *&self->_anon_281[15] = vdivq_f32(v66, vzip1q_s32(v69, v69));
            if (a5)
            {
              v70 = 0;
              v71 = 0;
            }

            else
            {
              v70 = a4->origin.x;
              v71 = a4->origin.y;
            }
          }

          else
          {
            v70 = 0;
            v71 = 0;
            v68 = *p_inputWidth;
          }

          v72 = vcvt_f32_u32(v68);
          v73 = HIDWORD(*&self->_texMatCount[4]);
          v74 = *&self->_texMatCount[4];
          if (v74)
          {
            v75 = 0;
            v76 = 0;
            v77 = *&self->_swathVertices[4];
            v78 = *self->_transformStrides / v72.f32[0];
            v79 = HIDWORD(*self->_transformStrides) / v72.f32[1];
            v80 = v79 + v79;
            v81 = v78 + v78;
            v82 = (*&self->_anon_429[3] + v71) / v72.f32[1];
            v83 = (*&self->_blurMetalConfig.mixEnabled + v70) / v72.f32[0];
            v84 = (v82 * -2.0) + 1.0;
            v85 = (v83 * 2.0) + -1.0;
            v86 = v74 + 1;
            v87 = (v83 * -2.0) + 1.0;
            if (v74 + 1 > 1)
            {
              v88 = v74 + 1;
            }

            else
            {
              v88 = 1;
            }

            v89 = (v82 * 2.0) + -1.0;
            if (v73 + 1 > 1)
            {
              v90 = v73 + 1;
            }

            else
            {
              v90 = 1;
            }

            do
            {
              v91 = 0;
              *&v92 = v85;
              do
              {
                *(&v92 + 1) = v84;
                *(v77 + 8 * (v75 + v91)) = v92;
                if (v91 >= v74 - 1)
                {
                  *&v92 = v87;
                }

                else
                {
                  *&v92 = v81 + *&v92;
                }

                ++v91;
              }

              while (v88 != v91);
              v84 = v84 - v80;
              if (v76 >= v73 - 1)
              {
                v84 = v89;
              }

              ++v76;
              v75 += v86;
            }

            while (v76 != v90);
            v93 = 0;
            v94 = 0;
            v95 = 0;
            v96 = v74 + 1;
            do
            {
              ++v95;
              v97 = v93;
              v98 = v96;
              v99 = v74;
              do
              {
                v60[v94] = v97++;
                v60[v94 + 1] = v97;
                v60[v94 + 2] = v98;
                v60[v94 + 3] = v97;
                v60[v94 + 4] = v98;
                v100 = v94 + 5;
                v94 += 6;
                v60[v100] = ++v98;
                --v99;
              }

              while (v99);
              v96 += v86;
              v93 += v86;
            }

            while (v95 != v73);
            v72 = vcvt_f32_u32(*p_inputWidth);
            v73 = HIDWORD(*&self->_texMatCount[4]);
            v74 = *&self->_texMatCount[4];
          }

          v101 = 0;
          v102 = 0;
          v103 = *&self->_swathMatricesBufferSize;
          v104 = self->_texMats;
          __asm { FMOV            V1.2S, #1.0 }

          v110 = vdiv_f32(_D1, v72);
          do
          {
            v111 = 0;
            v112 = v101;
            do
            {
              v113 = (v103 + 48 * (v102 + v111));
              v114 = (v104 + 48 * v112);
              v116 = v114[1];
              v115 = v114[2];
              *v113 = *v114;
              v113[1] = v116;
              v113[2] = v115;
              v117 = *v113;
              v118 = v113[1];
              v117.i32[1] = vmuls_lane_f32(v72.f32[0] / v72.f32[1], *v113->f32, 1);
              v113->f32[2] = vmuls_lane_f32(v72.f32[0], *v113, 2);
              v119 = vmuls_lane_f32(v72.f32[1], v118, 2);
              v118.f32[0] = (v72.f32[1] / v72.f32[0]) * v118.f32[0];
              v113->i64[0] = v117.i64[0];
              v113[1].f32[2] = v119;
              v113[1].i64[0] = v118.i64[0];
              v120 = v113[2];
              v113[2].i32[2] = v120.i32[2];
              *v113[2].f32 = vmul_f32(v110, *v120.f32);
              ++v111;
              v112 += v73 + 1;
            }

            while (v111 <= v74);
            ++v101;
            v102 += v111;
          }

          while (v101 <= v73);
          goto LABEL_73;
        }

        [affineGPUMetal setTransformsArray:transforms3x3:transformStrides:inputSize:outputSize:pixelBufferValidRect:isQuadraSensor:];
      }

      else
      {
        [affineGPUMetal setTransformsArray:transforms3x3:transformStrides:inputSize:outputSize:pixelBufferValidRect:isQuadraSensor:];
      }
    }

    else
    {
      [affineGPUMetal setTransformsArray:transforms3x3:transformStrides:inputSize:outputSize:pixelBufferValidRect:isQuadraSensor:];
    }

    goto LABEL_87;
  }

  [affineGPUMetal setTransformsArray:transforms3x3:transformStrides:inputSize:outputSize:pixelBufferValidRect:isQuadraSensor:];
LABEL_92:
  v121 = -12786;
LABEL_74:
  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }

  return v121;
}

- (void)_deallocateTransformBuffers
{
  texMats = self->_texMats;
  if (texMats)
  {
    self->_texMats = 0;
    free(texMats);
  }

  LODWORD(self->_swathMatrices) = 0;
  self->_overscanHeight = 0;
  self->_swathRenderVertexIndicesBufferSize = 0;
  verticesBuffer = self->_verticesBuffer;
  self->_verticesBuffer = 0;

  matricesBuffer = self->_matricesBuffer;
  self->_matricesBuffer = 0;

  vertexIndicesBuffer = self->_vertexIndicesBuffer;
  self->_vertexIndicesBuffer = 0;

  *&self->_texMatCount[4] = 0;
}

- (void)setRenderMethod:(int)a3
{
  useBicubic = self->_useBicubic;
  v4 = a3 == 1;
  if (useBicubic != v4)
  {
    self->_useBicubic = v4;
    if ([(affineGPUMetal *)self _initTransformShaders])
    {
      [affineGPUMetal setRenderMethod:];
    }

    else
    {
      if (![(affineGPUMetal *)self _initBlurShaders])
      {
        return;
      }

      [affineGPUMetal setRenderMethod:];
    }

    self->_useBicubic = useBicubic;
  }
}

- (void)configureP3ToBT2020conversion:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  LODWORD(self->_intermediateOutputPixelBuffer) = v3;
}

- (void)cacheSourcePixelBuffer:(__CVBuffer *)a3
{
  v4 = 0;
  v5 = 0;
  if (a3)
  {
    if ([(affineGPUMetal *)self _cachedTexturesFromPixelBuffer:a3 isTwoPass:1 isOptimized:0 textures:v3])
    {
      fig_log_get_emitter();
      FigDebugAssert3();
    }
  }

  else
  {
    fig_log_get_emitter();
    FigDebugAssert3();
  }
}

- (void)finish
{
  [(FigMetalContext *)self->_metalContext waitForIdle];
  m2m = self->_m2m;
  if (m2m)
  {
    CFRelease(m2m);
    self->_m2m = 0;
  }

  v4 = *&self->_ditherNoStyle;
  if (v4)
  {
    CFRelease(v4);
    *&self->_ditherNoStyle = 0;
  }

  cvMetalTextureCacheRef = self->_cvMetalTextureCacheRef;
  if (cvMetalTextureCacheRef)
  {
    CFRelease(cvMetalTextureCacheRef);
    self->_cvMetalTextureCacheRef = 0;
  }

  [(affineGPUMetal *)self _deallocateTransformBuffers];
  *self->_blurPreviousTextureIndex = 0u;
  inputLumaPyramid = self->_inputLumaPyramid;
  self->_inputLumaPyramid = 0;

  inputChromaPyramid = self->_inputChromaPyramid;
  self->_inputChromaPyramid = 0;

  smoothedLumaPyramid = self->_smoothedLumaPyramid;
  self->_smoothedLumaPyramid = 0;

  smoothedChromaPyramid = self->_smoothedChromaPyramid;
  self->_smoothedChromaPyramid = 0;
}

- (int)renderWithPixelBuffer:(__CVBuffer *)a3 metadata:(id)a4 pixelBufferValidRect:(CGRect *)a5 ltmLUT:(id)a6 outputPixelBuffer:(__CVBuffer *)a7 isAttachmentRendering:(BOOL)a8
{
  LODWORD(v8) = a8;
  v14 = a4;
  v15 = a6;
  if (!a3)
  {
    [affineGPUMetal renderWithPixelBuffer:metadata:pixelBufferValidRect:ltmLUT:outputPixelBuffer:isAttachmentRendering:];
LABEL_100:
    v57 = 0;
    goto LABEL_91;
  }

  if (!a5)
  {
    [affineGPUMetal renderWithPixelBuffer:metadata:pixelBufferValidRect:ltmLUT:outputPixelBuffer:isAttachmentRendering:];
    goto LABEL_100;
  }

  if (!a7)
  {
    [affineGPUMetal renderWithPixelBuffer:metadata:pixelBufferValidRect:ltmLUT:outputPixelBuffer:isAttachmentRendering:];
    goto LABEL_100;
  }

  if (!self->_verticesBuffer)
  {
    [affineGPUMetal renderWithPixelBuffer:metadata:pixelBufferValidRect:ltmLUT:outputPixelBuffer:isAttachmentRendering:];
    goto LABEL_100;
  }

  if (!self->_matricesBuffer)
  {
    [affineGPUMetal renderWithPixelBuffer:metadata:pixelBufferValidRect:ltmLUT:outputPixelBuffer:isAttachmentRendering:];
    goto LABEL_100;
  }

  if (!self->_vertexIndicesBuffer)
  {
    [affineGPUMetal renderWithPixelBuffer:metadata:pixelBufferValidRect:ltmLUT:outputPixelBuffer:isAttachmentRendering:];
    goto LABEL_100;
  }

  if (!self->_texMats)
  {
    [affineGPUMetal renderWithPixelBuffer:metadata:pixelBufferValidRect:ltmLUT:outputPixelBuffer:isAttachmentRendering:];
    goto LABEL_100;
  }

  v73 = a5;
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a3, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a3, 0);
  v18 = CVPixelBufferGetWidthOfPlane(a7, 0);
  v77 = CVPixelBufferGetHeightOfPlane(a7, 0);
  v72 = [v14 objectForKeyedSubscript:kFigCaptureStreamMetadata_QuadraBinningFactor];

  v78 = v8;
  if (v8)
  {
    goto LABEL_33;
  }

  reverseCoefficients = self->_reverseCoefficients;
  if (!reverseCoefficients && LOBYTE(self->_ditherStrengthChroma) != 1)
  {
    goto LABEL_25;
  }

  fbsDeltaThresholdLuma = self->_fbsDeltaThresholdLuma;
  fbsEdgeThresholdLuma = self->_fbsEdgeThresholdLuma;
  if (fbsDeltaThresholdLuma > 0.0 || fbsEdgeThresholdLuma > 0.0)
  {
    v22 = renderWithPixelBuffer_metadata_pixelBufferValidRect_ltmLUT_outputPixelBuffer_isAttachmentRendering__ditherSeed++;
    *&self->_anon_281[319] = v22;
    *&self->_anon_281[323] = fbsDeltaThresholdLuma;
    *&self->_anon_281[327] = fbsEdgeThresholdLuma;
    if (!reverseCoefficients)
    {
      goto LABEL_16;
    }

LABEL_17:
    if (self->_fbsDeltaThresholdChroma > 0.0 && self->_fbsEdgeThresholdChroma > 0.0)
    {
      if (!self->_inputLumaPyramid)
      {
        v23 = [(affineGPUMetal *)self _allocatePyramidWithPixelFormat:20 bottomLevelWidth:WidthOfPlane bottomLevelHeight:HeightOfPlane scaleFactor:4 includeBottomLevel:0 minimumDimension:8];
        inputLumaPyramid = self->_inputLumaPyramid;
        self->_inputLumaPyramid = v23;

        if (!self->_inputLumaPyramid)
        {
          [affineGPUMetal renderWithPixelBuffer:metadata:pixelBufferValidRect:ltmLUT:outputPixelBuffer:isAttachmentRendering:];
          goto LABEL_110;
        }
      }

      if (!self->_smoothedLumaPyramid)
      {
        v25 = [(affineGPUMetal *)self _allocatePyramidWithPixelFormat:20 bottomLevelWidth:WidthOfPlane bottomLevelHeight:HeightOfPlane scaleFactor:4 includeBottomLevel:0 minimumDimension:8];
        smoothedLumaPyramid = self->_smoothedLumaPyramid;
        self->_smoothedLumaPyramid = v25;

        if (!self->_smoothedLumaPyramid)
        {
          [affineGPUMetal renderWithPixelBuffer:metadata:pixelBufferValidRect:ltmLUT:outputPixelBuffer:isAttachmentRendering:];
          goto LABEL_110;
        }
      }

      *&self->_anon_281[331] = 0;
      *&self->_anon_281[335] = *&self->_fbsDeltaThresholdChroma;
      reverseCoefficients = self->_reverseCoefficients;
    }

    if (reverseCoefficients)
    {
LABEL_26:
      if (*&self->_attachmentIsLinearThumbnail <= 0.0 || *&self[1].super.isa <= 0.0)
      {
        goto LABEL_33;
      }

      if (self->_inputChromaPyramid || (v27 = CVPixelBufferGetWidthOfPlane(a3, 1uLL), [(affineGPUMetal *)self _allocatePyramidWithPixelFormat:60 bottomLevelWidth:v27 bottomLevelHeight:CVPixelBufferGetHeightOfPlane(a3 scaleFactor:1uLL) includeBottomLevel:4 minimumDimension:0, 8], v28 = objc_claimAutoreleasedReturnValue(), inputChromaPyramid = self->_inputChromaPyramid, self->_inputChromaPyramid = v28, inputChromaPyramid, self->_inputChromaPyramid))
      {
        if (self->_smoothedChromaPyramid || (v30 = CVPixelBufferGetWidthOfPlane(a3, 1uLL), [(affineGPUMetal *)self _allocatePyramidWithPixelFormat:60 bottomLevelWidth:v30 bottomLevelHeight:CVPixelBufferGetHeightOfPlane(a3 scaleFactor:1uLL) includeBottomLevel:4 minimumDimension:0, 8], v31 = objc_claimAutoreleasedReturnValue(), smoothedChromaPyramid = self->_smoothedChromaPyramid, self->_smoothedChromaPyramid = v31, smoothedChromaPyramid, self->_smoothedChromaPyramid))
        {
          *&self->_anon_281[343] = 0;
          *&self->_anon_281[347] = *&self->_attachmentIsLinearThumbnail;
          goto LABEL_33;
        }

        [affineGPUMetal renderWithPixelBuffer:metadata:pixelBufferValidRect:ltmLUT:outputPixelBuffer:isAttachmentRendering:];
      }

      else
      {
        [affineGPUMetal renderWithPixelBuffer:metadata:pixelBufferValidRect:ltmLUT:outputPixelBuffer:isAttachmentRendering:];
      }

LABEL_110:
      v57 = 0;
      v70 = -12786;
      goto LABEL_92;
    }

    goto LABEL_25;
  }

  if (reverseCoefficients)
  {
    goto LABEL_17;
  }

LABEL_16:
  if (LOBYTE(self->_ditherStrengthChroma))
  {
    goto LABEL_17;
  }

LABEL_25:
  if (LOBYTE(self->_ditherStrengthChroma) == 1)
  {
    goto LABEL_26;
  }

LABEL_33:
  v33 = a7;
  if (LODWORD(self->_intermediateOutputPixelBuffer) == 1)
  {
    p_m2m = &self->_m2m;
    m2m = self->_m2m;
    if (!m2m)
    {
      goto LABEL_42;
    }

    if (CVPixelBufferGetWidthOfPlane(m2m, 0) != v18 || CVPixelBufferGetHeightOfPlane(*p_m2m, 0) != v77 || (PixelFormatType = CVPixelBufferGetPixelFormatType(*p_m2m), PixelFormatType != CVPixelBufferGetPixelFormatType(a7)))
    {
      if (*p_m2m)
      {
        CFRelease(*p_m2m);
        *p_m2m = 0;
      }

      goto LABEL_42;
    }

    v33 = *p_m2m;
    if (!*p_m2m)
    {
LABEL_42:
      v74 = v18;
      v75 = v15;
      v76 = v14;
      v37 = CVPixelBufferGetAttributes();
      v38 = CVPixelBufferGetAttributes();
      v39 = +[NSMutableDictionary dictionary];
      [v39 setObject:&__NSDictionary0__struct forKeyedSubscript:kCVPixelBufferIOSurfacePropertiesKey];
      if (v38)
      {
        [v39 addEntriesFromDictionary:v38];
      }

      v40 = kCVBufferPropagatedAttachmentsKey;
      v41 = [v37 objectForKeyedSubscript:kCVBufferPropagatedAttachmentsKey];
      [v39 setObject:v41 forKeyedSubscript:v40];

      v42 = CVPixelBufferGetPixelFormatType(a7);
      v43 = CVPixelBufferCreate(kCFAllocatorDefault, v74, v77, v42, v39, &self->_m2m);
      if (v43)
      {
        v70 = v43;
        [affineGPUMetal renderWithPixelBuffer:v43 metadata:v39 pixelBufferValidRect:v38 ltmLUT:v37 outputPixelBuffer:? isAttachmentRendering:?];
        v57 = 0;
        goto LABEL_105;
      }

      v44 = CVBufferCopyAttachments(a3, kCVAttachmentMode_ShouldPropagate);
      if (v44)
      {
        v45 = CFAutorelease(v44);
        if (v45)
        {
          CVBufferSetAttachments(*p_m2m, v45, kCVAttachmentMode_ShouldPropagate);
        }
      }

      v33 = *p_m2m;
      v15 = v75;
      v14 = v76;
      v18 = v74;
    }
  }

  v46 = [v14 objectForKeyedSubscript:kFigVideoStabilizationSampleBufferAttachmentKey_OutputSmartStyleUnstyledEnabled];
  v47 = [v46 BOOLValue];

  v8 = v8;
  if (((v47 & 1) != 0 || LOBYTE(self->_blurOverscan.width) == 1) && (self->_reverseCoefficients || self->_intermediateOutputUnstyledPixelBuffer) && (v8 & 1) == 0)
  {
    p_ditherNoStyle = &self->_ditherNoStyle;
    v49 = *&self->_ditherNoStyle;
    if (!v49)
    {
      goto LABEL_62;
    }

    if (CVPixelBufferGetWidthOfPlane(v49, 0) != v18 || CVPixelBufferGetHeightOfPlane(*p_ditherNoStyle, 0) != v77 || (v50 = CVPixelBufferGetPixelFormatType(*p_ditherNoStyle), v50 != CVPixelBufferGetPixelFormatType(a7)))
    {
      if (*p_ditherNoStyle)
      {
        CFRelease(*p_ditherNoStyle);
        *p_ditherNoStyle = 0;
      }

      goto LABEL_62;
    }

    if (!*p_ditherNoStyle)
    {
LABEL_62:
      v75 = v15;
      v76 = v14;
      v51 = CVPixelBufferGetAttributes();
      v52 = +[NSMutableDictionary dictionary];
      [v52 setObject:&__NSDictionary0__struct forKeyedSubscript:kCVPixelBufferIOSurfacePropertiesKey];
      if (v51)
      {
        [v52 addEntriesFromDictionary:v51];
      }

      v53 = CVPixelBufferGetPixelFormatType(v33);
      if (!CVPixelBufferCreate(kCFAllocatorDefault, v18, v77, v53, v52, &self->_ditherNoStyle))
      {
        v54 = CVBufferCopyAttachments(a7, kCVAttachmentMode_ShouldPropagate);
        v8 = v8;
        if (v54)
        {
          v55 = CFAutorelease(v54);
          if (v55)
          {
            CVBufferSetAttachments(*p_ditherNoStyle, v55, kCVAttachmentMode_ShouldPropagate);
          }
        }

        v15 = v75;
        goto LABEL_69;
      }

      [affineGPUMetal renderWithPixelBuffer:v52 metadata:v51 pixelBufferValidRect:? ltmLUT:? outputPixelBuffer:? isAttachmentRendering:?];
      v57 = 0;
      v70 = -12786;
LABEL_105:
      v15 = v75;
      v14 = v76;
      goto LABEL_92;
    }
  }

LABEL_69:
  self->_gpuProcessFailed = 0;
  v56 = [(FigMetalContext *)self->_metalContext commandQueue];
  v57 = [v56 commandBuffer];

  if (!v57)
  {
    [affineGPUMetal renderWithPixelBuffer:? metadata:? pixelBufferValidRect:? ltmLUT:? outputPixelBuffer:? isAttachmentRendering:?];
    v70 = v79;
    goto LABEL_92;
  }

  [(affineGPUMetal *)self updateCubesIfNeeded];
  [(affineGPUMetal *)self _transformInputPixelBuffer:a3 outputPixelBuffer:v33 ltmLUT:v15 isAttachment:v8 commandBuffer:v57];
  v58 = CMGetAttachment(a3, @"InputDepthPixelBuffer", 0);
  v59 = CMGetAttachment(a3, @"OutputDepthPixelBuffer", 0);
  if (v58)
  {
    v60 = v59;
    if (v59)
    {
      v8 = v15;
      v61 = [v14 objectForKeyedSubscript:kFigVideoStabilizationSampleBufferProcessorMetadata_DepthBufferFOVScaling];
      v62 = v61;
      if (v61)
      {
        [v61 floatValue];
        *&self->_anon_281[43] = v63;
        *v64.i32 = (1.0 - v63) * 0.5;
        *&self->_anon_281[47] = vdup_lane_s32(v64, 0);
      }

      [(affineGPUMetal *)self _transformInputPixelBuffer:v58 outputPixelBuffer:v60 ltmLUT:0 isAttachment:1 commandBuffer:v57];

      v15 = v8;
      LOBYTE(v8) = v78;
    }
  }

  [(affineGPUMetal *)self _addCommandBufferHandler:v57];
  if (gGMFigKTraceEnabled)
  {
    v65 = [v57 commandQueue];
    v66 = [v65 commandBuffer];

    [v66 setLabel:@"KTRACE_MTLCMDBUF"];
    [v66 addCompletedHandler:&__block_literal_global];
    [v66 commit];
    [v57 addCompletedHandler:&__block_literal_global_74];
  }

  [v57 commit];
  if ((v8 & 1) == 0)
  {
    v67 = *&self->_ditherNoStyle;
    CMSetAttachment(a3, @"OutputSmartStyleUnstyledPixelBuffer", v67, 1u);
    if (LOBYTE(self->_blurOverscan.width) == 1)
    {
      if (v72)
      {
        v68 = 0;
      }

      else
      {
        v68 = v73;
      }

      [(affineGPUMetal *)self _blurDuplicatedPixelsOnPixelBuffer:v33 validBufferRect:v68 forDeltaMap:0];
      if (v67)
      {
        [(affineGPUMetal *)self _blurDuplicatedPixelsOnPixelBuffer:v67 validBufferRect:v68 forDeltaMap:1];
      }

      if (self->_intermediateOutputUnstyledPixelBuffer)
      {
        v69 = CMGetAttachment(a3, @"OutputSmartStyleDeltaMapPixelBuffer", 0);
        if (v67)
        {
          if (v69)
          {
            [(affineGPUMetal *)self _blurDeltaMapBordersFromStyledPixelBuffer:v33 withUnstyledPixelBuffer:v67 to:v69];
          }
        }
      }
    }
  }

  [(affineGPUMetal *)self _duplicateBottomRowsOnPixelBuffer:v33];
  [(FigMetalContext *)self->_metalContext waitForIdle];
  if (self->_gpuProcessFailed)
  {
    [affineGPUMetal renderWithPixelBuffer:metadata:pixelBufferValidRect:ltmLUT:outputPixelBuffer:isAttachmentRendering:];
    v70 = -12782;
    goto LABEL_92;
  }

  if (LODWORD(self->_intermediateOutputPixelBuffer) == 1)
  {
    [(MTLTexture *)self->_fgCubeTexture downsample:v33 dst:a7 sync_m2m:1];
  }

LABEL_91:
  v70 = 0;
LABEL_92:

  return v70;
}

- (int)renderWithSampleBuffer:(opaqueCMSampleBuffer *)a3 pixelBufferValidRect:(CGRect *)a4 ltmLUT:(id)a5 outputPixelBuffer:(__CVBuffer *)a6 isAttachmentRendering:(BOOL)a7
{
  v7 = a7;
  v12 = a5;
  ImageBuffer = CMSampleBufferGetImageBuffer(a3);
  v13 = CMGetAttachment(a3, kFigCaptureSampleBufferAttachmentKey_StreamingSemanticStylePersonMaskSampleBuffer, 0);
  if ((v7 & 1) != 0 || !v13)
  {
    backgroundColorCube = self->_backgroundColorCube;
    *&self->_foregroundColorCube = 0u;

    v16 = 0;
  }

  else
  {
    self->_foregroundColorCube = CMSampleBufferGetImageBuffer(v13);
    v14 = CMGetAttachment(a3, kFigCaptureSampleBufferAttachmentKey_StreamingSemanticStyleForegroundLUT, 0);
    v15 = self->_backgroundColorCube;
    self->_backgroundColorCube = v14;

    v16 = CMGetAttachment(a3, kFigCaptureSampleBufferAttachmentKey_StreamingSemanticStyleBackgroundLUT, 0);
  }

  fgCubePtr = self->_fgCubePtr;
  self->_fgCubePtr = v16;

  if (v7)
  {
    LOBYTE(self->_forwardCoefficients) = 0;
    HIDWORD(self->_forwardCoefficients) = 0;
  }

  else
  {
    v19 = CMGetAttachment(a3, kFigCaptureSampleBufferAttachmentKey_SubjectRelightingCurveParameter, 0);
    v20 = v19;
    LOBYTE(self->_forwardCoefficients) = v19 != 0;
    if (v19)
    {
      [v19 floatValue];
      HIDWORD(self->_forwardCoefficients) = v21;
    }
  }

  v22 = CMGetAttachment(a3, @"AttachmentName", 0);
  BYTE4(self[1].super.isa) = [v22 isEqual:kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingLinearThumbnail];

  v23 = kFigSampleBufferAttachmentKey_AttachedMedia;
  v24 = CMGetAttachment(a3, kFigSampleBufferAttachmentKey_AttachedMedia, 0);
  v25 = kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingIntegratedForwardLearnedCoefficients;
  v26 = [v24 objectForKeyedSubscript:kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingIntegratedForwardLearnedCoefficients];
  reverseCoefficients = self->_reverseCoefficients;
  self->_reverseCoefficients = v26;

  v28 = kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingIntegratedReverseLearnedCoefficients;
  v29 = [v24 objectForKeyedSubscript:kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingIntegratedReverseLearnedCoefficients];
  intermediateOutputUnstyledPixelBuffer = self->_intermediateOutputUnstyledPixelBuffer;
  self->_intermediateOutputUnstyledPixelBuffer = v29;

  if (self->_reverseCoefficients || self->_intermediateOutputUnstyledPixelBuffer)
  {
    v39 = v7;
    v31 = v12;
    v32 = a4;
    v33 = a6;
    v34 = [v24 mutableCopy];
    [v34 setObject:0 forKeyedSubscript:v25];
    [v34 setObject:0 forKeyedSubscript:v28];
    v35 = [v34 copy];
    CMRemoveAttachment(a3, v23);
    CMSetAttachment(a3, v23, v35, 1u);
    LOBYTE(self->_forwardCoefficients) = 0;

    a6 = v33;
    a4 = v32;
    v12 = v31;
    v7 = v39;
  }

  v36 = CMGetAttachment(a3, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
  v37 = [(affineGPUMetal *)self renderWithPixelBuffer:ImageBuffer metadata:v36 pixelBufferValidRect:a4 ltmLUT:v12 outputPixelBuffer:a6 isAttachmentRendering:v7];

  if (v37)
  {
    [affineGPUMetal renderWithSampleBuffer:pixelBufferValidRect:ltmLUT:outputPixelBuffer:isAttachmentRendering:];
  }

  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }

  return v37;
}

- (int)_transformInputPixelBuffer:(__CVBuffer *)a3 outputPixelBuffer:(__CVBuffer *)a4 ltmLUT:(id)a5 isAttachment:(BOOL)a6 commandBuffer:(id)a7
{
  v141 = a6;
  v133 = a5;
  v135 = a7;
  v176 = 0;
  v177 = 0;
  v173 = 0;
  v174 = 0;
  v170 = 0;
  v171 = 0;
  v167 = 0;
  v168 = 0;
  v165 = 0;
  v164 = 0.0;
  if (!*&self->_swathVertices[4] || !LODWORD(self->_swathMatrices) || !*&self->_swathMatricesBufferSize || !self->_overscanHeight || !self->_swathRenderVertexIndices || !self->_swathRenderVertexIndicesBufferSize || !a3 || !a4 || !v135)
  {
    fig_log_get_emitter();
LABEL_185:
    FigDebugAssert3();
    goto LABEL_186;
  }

  v136 = *&self->_texMatCount[4] <= 1 && (self->_forwardCoefficients & 1) == 0 && !v133 && LODWORD(self->_intermediateOutputPixelBuffer) != 2 && !self->_foregroundColorCube && !self->_reverseCoefficients && !self->_intermediateOutputUnstyledPixelBuffer && (LOBYTE(self->_ditherStrengthChroma) & 1) == 0 && (BYTE4(self[1].super.isa) & 1) == 0 && CVPixelBufferGetPixelFormatType(a3) != 2016686642 && CVPixelBufferGetPixelFormatType(a3) != 2019963442 && CVPixelBufferGetPixelFormatType(a3) != 1882468914 && CVPixelBufferGetPixelFormatType(a3) != 1885745714 && CVPixelBufferGetPixelFormatType(a3) != 645428786 && CVPixelBufferGetPixelFormatType(a3) != 645424690 && CVPixelBufferGetPixelFormatType(a3) != 762869298 && CVPixelBufferGetPixelFormatType(a3) != 762865202 && CVPixelBufferGetPixelFormatType(a3) != 796423730 && CVPixelBufferGetPixelFormatType(a3) != 796419634 && CVPixelBufferGetPixelFormatType(a3) != 2088269362 && CVPixelBufferGetPixelFormatType(a3) != 2088265266 && CVPixelBufferGetPixelFormatType(a3) != 1278226488 && CVPixelBufferGetPixelFormatType(a3) != 1278226536 && CVPixelBufferGetPixelFormatType(a3) != 1278226534 && CVPixelBufferGetPixelFormatType(a3) != 1751411059;
  v9 = [(affineGPUMetal *)self _cachedTexturesFromPixelBuffer:a3 isTwoPass:1 isOptimized:0 textures:v175];
  if (v9)
  {
    fig_log_get_emitter();
    FigDebugAssert3();
LABEL_183:
    v84 = 0;
    v66 = 0;
    goto LABEL_164;
  }

  v9 = [(affineGPUMetal *)self _cachedTexturesFromPixelBuffer:a4 isTwoPass:v136 isOptimized:1 textures:&v172];
  if (v9)
  {
    fig_log_get_emitter();
    FigDebugAssert3();
    goto LABEL_183;
  }

  if (v172 >= 3)
  {
    fig_log_get_emitter();
    goto LABEL_185;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  if (!v141)
  {
    reverseCoefficients = self->_reverseCoefficients;
    if (!reverseCoefficients && LOBYTE(self->_ditherStrengthChroma) != 1)
    {
      HIDWORD(v123) = 0;
      goto LABEL_68;
    }

    if (self->_fbsDeltaThresholdChroma <= 0.0 || self->_fbsEdgeThresholdChroma <= 0.0)
    {
      HIDWORD(v123) = 0;
      if (!reverseCoefficients)
      {
        goto LABEL_68;
      }
    }

    else
    {
      if (v175[0] >= 3u)
      {
        fig_log_get_emitter();
        FigDebugAssert3();
        goto LABEL_186;
      }

      if (gGMFigKTraceEnabled == 1)
      {
        kdebug_trace();
      }

      v11 = [v135 computeCommandEncoder];
      v12 = v11;
      if (!v11)
      {
        fig_log_get_emitter();
        FigDebugAssert3();
        fig_log_get_emitter();
        v120 = FigSignalErrorAtGM();
LABEL_191:
        v9 = v120;
        goto LABEL_183;
      }

      [v11 setComputePipelineState:self->_pipelineComputeStates[1]];
      [v12 setImageblockWidth:32 height:32];
      [v12 setBytes:&self->_anon_281[331] length:12 atIndex:0];
      v13 = v176;
      v160 = 0u;
      v161 = 0u;
      v162 = 0u;
      v163 = 0u;
      v14 = self->_inputLumaPyramid;
      v15 = [(NSArray *)v14 countByEnumeratingWithState:&v160 objects:v159 count:16];
      if (v15)
      {
        v16 = *v161;
        v142 = vdupq_n_s64(0x20uLL);
        do
        {
          v17 = 0;
          v18 = v13;
          do
          {
            if (*v161 != v16)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v160 + 1) + 8 * v17);
            [v12 setTexture:v18 atIndex:0];
            [v12 setTexture:v19 atIndex:3];
            v20 = [v19 width];
            v21 = [v19 height];
            *&v146.f64[0] = v20;
            *&v146.f64[1] = v21;
            *&v147 = 1;
            v157 = v142;
            v158 = 1;
            [v12 dispatchThreads:&v146 threadsPerThreadgroup:&v157];
            v13 = v19;

            v17 = v17 + 1;
            v18 = v13;
          }

          while (v15 != v17);
          v15 = [(NSArray *)v14 countByEnumeratingWithState:&v160 objects:v159 count:16];
        }

        while (v15);
      }

      [v12 setComputePipelineState:self->_pipelineComputeStates[2]];
      [v12 setImageblockWidth:32 height:32];
      v22 = [(NSArray *)self->_inputLumaPyramid lastObject];

      v23 = [(NSArray *)self->_smoothedLumaPyramid count];
      if (v23 < 2)
      {
        v31 = v22;
      }

      else
      {
        v24 = (v23 - 2);
        v143 = vdupq_n_s64(0x20uLL);
        do
        {
          v155 = *&self->_anon_281[331];
          v156 = *&self->_anon_281[339];
          v25 = [(NSArray *)self->_inputLumaPyramid objectAtIndexedSubscript:v24];
          v26 = [(NSArray *)self->_smoothedLumaPyramid objectAtIndexedSubscript:v24];
          v27 = v156;
          v28 = exp2f(v24);
          v156 = fmaxf(v28 * v27, *(&v155 + 1));
          [v12 setBytes:&v155 length:12 atIndex:0];
          [v12 setTexture:v25 atIndex:0];
          [v12 setTexture:v22 atIndex:1];
          [v12 setTexture:v26 atIndex:2];
          v29 = [v26 width];
          v30 = [v26 height];
          *&v146.f64[0] = v29;
          *&v146.f64[1] = v30;
          *&v147 = 1;
          v157 = v143;
          v158 = 1;
          [v12 dispatchThreads:&v146 threadsPerThreadgroup:&v157];
          v31 = v26;

          v22 = v31;
          v32 = v24-- <= 0;
        }

        while (!v32);
      }

      [v12 endEncoding];
      if (gGMFigKTraceEnabled == 1)
      {
        kdebug_trace();
      }

      HIDWORD(v123) = 1;
      if (!self->_reverseCoefficients)
      {
LABEL_68:
        if (LOBYTE(self->_ditherStrengthChroma) != 1)
        {
          goto LABEL_87;
        }
      }
    }

    if (*&self->_attachmentIsLinearThumbnail > 0.0 && *&self[1].super.isa > 0.0)
    {
      if (v175[0] < 3u)
      {
        if (gGMFigKTraceEnabled == 1)
        {
          kdebug_trace();
        }

        v33 = [v135 computeCommandEncoder];
        v34 = v33;
        if (v33)
        {
          [v33 setComputePipelineState:self->_pipelineComputeStates[1]];
          [v34 setImageblockWidth:32 height:32];
          [v34 setBytes:&self->_anon_281[343] length:12 atIndex:0];
          v35 = v177;
          v151 = 0u;
          v152 = 0u;
          v153 = 0u;
          v154 = 0u;
          v36 = self->_inputChromaPyramid;
          v37 = [(NSArray *)v36 countByEnumeratingWithState:&v151 objects:v150 count:16];
          if (v37)
          {
            v38 = *v152;
            v144 = vdupq_n_s64(0x20uLL);
            do
            {
              v39 = 0;
              v40 = v35;
              do
              {
                if (*v152 != v38)
                {
                  objc_enumerationMutation(v36);
                }

                v41 = *(*(&v151 + 1) + 8 * v39);
                [v34 setTexture:v40 atIndex:0];
                [v34 setTexture:v41 atIndex:3];
                v42 = [v41 width];
                v43 = [v41 height];
                *&v146.f64[0] = v42;
                *&v146.f64[1] = v43;
                *&v147 = 1;
                v157 = v144;
                v158 = 1;
                [v34 dispatchThreads:&v146 threadsPerThreadgroup:&v157];
                v35 = v41;

                v39 = v39 + 1;
                v40 = v35;
              }

              while (v37 != v39);
              v37 = [(NSArray *)v36 countByEnumeratingWithState:&v151 objects:v150 count:16];
            }

            while (v37);
          }

          [v34 setComputePipelineState:self->_pipelineComputeStates[2]];
          [v34 setImageblockWidth:32 height:32];
          v44 = [(NSArray *)self->_inputChromaPyramid lastObject];

          v45 = [(NSArray *)self->_smoothedChromaPyramid count];
          if (v45 < 2)
          {
            v53 = v44;
          }

          else
          {
            v46 = (v45 - 2);
            v145 = vdupq_n_s64(0x20uLL);
            do
            {
              v155 = *&self->_anon_281[343];
              v156 = *&self->_anon_281[351];
              v47 = [(NSArray *)self->_inputChromaPyramid objectAtIndexedSubscript:v46];
              v48 = [(NSArray *)self->_smoothedChromaPyramid objectAtIndexedSubscript:v46];
              v49 = v156;
              v50 = exp2f(v46);
              v156 = fmaxf(v50 * v49, *(&v155 + 1));
              [v34 setBytes:&v155 length:12 atIndex:0];
              [v34 setTexture:v47 atIndex:0];
              [v34 setTexture:v44 atIndex:1];
              [v34 setTexture:v48 atIndex:2];
              v51 = [v48 width];
              v52 = [v48 height];
              *&v146.f64[0] = v51;
              *&v146.f64[1] = v52;
              *&v147 = 1;
              v157 = v145;
              v158 = 1;
              [v34 dispatchThreads:&v146 threadsPerThreadgroup:&v157];
              v53 = v48;

              v44 = v53;
              v32 = v46-- <= 0;
            }

            while (!v32);
          }

          [v34 endEncoding];
          if (gGMFigKTraceEnabled == 1)
          {
            kdebug_trace();
          }

          LODWORD(v123) = 1;
          goto LABEL_88;
        }

        fig_log_get_emitter();
        FigDebugAssert3();
        fig_log_get_emitter();
        v120 = FigSignalErrorAtGM();
        goto LABEL_191;
      }

      fig_log_get_emitter();
      FigDebugAssert3();
LABEL_186:
      v84 = 0;
      v66 = 0;
      v9 = -12780;
      goto LABEL_164;
    }

LABEL_87:
    LODWORD(v123) = 0;
    goto LABEL_88;
  }

  v123 = 0;
LABEL_88:
  if (!v172)
  {
    v84 = 0;
    v66 = 0;
    v9 = 0;
    goto LABEL_164;
  }

  v54 = 0;
  v55 = 0;
  v137 = 0;
  pipelineRenderStates = self->_pipelineRenderStates;
  p_inputWidth = &self->_inputWidth;
  __asm { FMOV            V0.2D, #-0.5 }

  v129 = _Q0;
  __asm { FMOV            V9.2S, #1.0 }

  while (1)
  {
    v62 = [*(&v176 + v54) width];
    v63 = [*(&v176 + v54) height];
    v140 = [*(&v173 + v54) width];
    v64 = [*(&v173 + v54) height];
    v164 = 1.0 / v62;
    v9 = -[affineGPUMetal _getTransformShaderParameters:isLuma:isRGB:isAttachment:pixelRatio:pipelineIndexToUse:](self, "_getTransformShaderParameters:isLuma:isRGB:isAttachment:pixelRatio:pipelineIndexToUse:", [*(&v173 + v54) pixelFormat], v54 == 0, PixelFormatType == 1111970369, v141, &v165, &v165 + 4);
    if (v9)
    {
      fig_log_get_emitter();
      FigDebugAssert3();
      v84 = v137;
      v66 = v55;
      goto LABEL_164;
    }

    if (!pipelineRenderStates[SHIDWORD(v165)] || (v65 = v165) == 0)
    {
      fig_log_get_emitter();
      FigDebugAssert3();
      v9 = -12782;
      v84 = v137;
      v66 = v55;
      goto LABEL_164;
    }

    v66 = objc_opt_new();

    if (!v66)
    {
      fig_log_get_emitter();
      FigDebugAssert3();
      fig_log_get_emitter();
      v9 = FigSignalErrorAtGM();
      v66 = 0;
      goto LABEL_177;
    }

    v67 = [v66 colorAttachments];
    v68 = [v67 objectAtIndexedSubscript:0];
    [v68 setLoadAction:0];

    v69 = [v66 colorAttachments];
    v70 = [v69 objectAtIndexedSubscript:0];
    [v70 setStoreAction:1];

    v71 = *(&v173 + v54);
    v72 = [v66 colorAttachments];
    v73 = [v72 objectAtIndexedSubscript:0];
    [v73 setTexture:v71];

    if (!v141)
    {
      break;
    }

LABEL_103:
    v84 = [v135 renderCommandEncoderWithDescriptor:v66];

    if (!v84)
    {
      fig_log_get_emitter();
      FigDebugAssert3();
      fig_log_get_emitter();
      v9 = FigSignalErrorAtGM();
      v84 = 0;
      goto LABEL_164;
    }

    [v84 setRenderPipelineState:pipelineRenderStates[SHIDWORD(v165)]];
    v85 = v64;
    if (v141)
    {
      v86.f64[0] = v140;
      v87 = *&self->_outputWidth;
      v88.i64[0] = *p_inputWidth;
      v88.i64[1] = HIDWORD(*p_inputWidth);
      v89 = vcvtq_f64_u64(v88);
      v88.i64[0] = v87;
      v88.i64[1] = HIDWORD(v87);
      v90 = vdivq_f64(v89, vcvtq_f64_u64(v88));
      v91 = v140 * v90.f64[0];
      v86.f64[1] = v64;
      v85 = vmuld_lane_f64(v85, v90, 1);
      v92 = vmulq_f64(vmlaq_f64(vnegq_f64(v86), v90, v86), v129);
    }

    else
    {
      v93 = v62 / v65;
      if (v62 / v65 <= v140)
      {
        v93 = v140;
      }

      v91 = v93;
      if (v62 / v65 <= v140)
      {
        v94 = 0.0;
      }

      else
      {
        v94 = (v62 / v65 - v140) * -0.5;
      }

      v92 = *&v94;
      if (v63 > v64)
      {
        v85 = v63;
        v92.f64[1] = (v63 - v64) * -0.5;
      }
    }

    v146 = v92;
    *&v147 = v91;
    *(&v147 + 1) = v85;
    v148 = xmmword_43850;
    [v84 setViewport:&v146];
    [v84 setVertexBuffer:self->_verticesBuffer offset:0 atIndex:0];
    [v84 setVertexBuffer:self->_matricesBuffer offset:0 atIndex:1];
    [v84 setVertexBytes:&v164 length:4 atIndex:2];
    [v84 setVertexBytes:&self->_transformConfig length:368 atIndex:3];
    if (v136)
    {
      [v84 setFragmentTexture:*(&v176 + v54) atIndex:0];
LABEL_115:
      v9 = 0;
      goto LABEL_116;
    }

    if (v175[0])
    {
      v96 = 1;
      do
      {
        [v84 setFragmentTexture:*&v175[2 * v96] atIndex:v96 - 1];
      }

      while (v96++ < v175[0]);
    }

    if (v133)
    {
      [v84 setFragmentTexture:v133 atIndex:2];
    }

    if (self->_bgCubePtr)
    {
      if (*&self->_srlFixOn)
      {
        foregroundColorCube = self->_foregroundColorCube;
        if (foregroundColorCube)
        {
          v146.f64[1] = 0.0;
          *&v147 = 0;
          [(affineGPUMetal *)self _cachedTexturesFromPixelBuffer:foregroundColorCube isTwoPass:0 isOptimized:0 textures:&v146];
          [v84 setFragmentTexture:*&v146.f64[1] atIndex:3];
          [v84 setFragmentTexture:self->_bgCubeTexture atIndex:4];
          [v84 setFragmentTexture:self->_segmentationMask atIndex:5];
        }
      }
    }

    if (v141)
    {
      if (BYTE4(self[1].super.isa) != 1)
      {
        goto LABEL_115;
      }

      *&self->_anon_281[39] = 1;
      CVPixelBufferGetPixelFormatType(a4);
      if ((CMIGetPixelFormatInfo() & 0x100) != 0)
      {
        CMIGetPixelBufferYCCMatrix();
        CMIGetYCCFromRGBConversionMatrix();
        self->_anon_281[40] = 1;
      }

      else
      {
        v98 = xmmword_43970;
        v99 = unk_43980;
        v100 = _PromotedConst_1;
        v101 = unk_43960;
      }

      v9 = 0;
      *&self->_anon_281[135] = DWORD2(v100);
      *&self->_anon_281[151] = DWORD2(v101);
      *&self->_anon_281[167] = DWORD2(v98);
      *&self->_anon_281[183] = DWORD2(v99);
      *&self->_anon_281[127] = v100;
      *&self->_anon_281[139] = 0;
      *&self->_anon_281[143] = v101;
      *&self->_anon_281[155] = 0;
      *&self->_anon_281[159] = v98;
      *&self->_anon_281[171] = 0;
      *&self->_anon_281[175] = v99;
      *&self->_anon_281[187] = 0;
    }

    else
    {
      if (!self->_reverseCoefficients && !self->_intermediateOutputUnstyledPixelBuffer)
      {
        goto LABEL_115;
      }

      CVPixelBufferGetPixelFormatType(a3);
      CVPixelBufferGetPixelFormatType(a4);
      v102 = CMIGetPixelFormatInfo();
      v103 = CMIGetPixelFormatInfo();
      v138 = 0u;
      if ((v102 & 0x100) != 0)
      {
        v104 = CMIGetPixelBufferYCCMatrix();
        v105 = v104;
        if (v104 != 5 && v104)
        {
          CMIGetRGBFromYCCConversionMatrix();
          v108 = 0;
          v9 = 0;
        }

        else
        {
          fig_log_get_emitter();
          v122 = v124;
          LODWORD(v121) = 0;
          FigDebugAssert3();
          v106 = xmmword_43600;
          v107 = xmmword_435E0;
          v9 = -12780;
          v108 = 4;
          v109 = 0uLL;
          v110 = xmmword_435D0;
          if (!v105)
          {
            goto LABEL_154;
          }
        }

        v125 = v106;
        v126 = v110;
        v127 = v107;
        v128 = v109;
        if (v105 == 5)
        {
          goto LABEL_154;
        }
      }

      else
      {
        v9 = 0;
        v128 = 0uLL;
        v126 = xmmword_435D0;
        v127 = xmmword_435E0;
        v125 = xmmword_43600;
      }

      if ((v103 & 0x100) != 0)
      {
        v112 = CMIGetPixelBufferYCCMatrix();
        v113 = v112;
        if (v112 != 5 && v112)
        {
          CMIGetYCCFromRGBConversionMatrix();
          v138 = v111.columns[3];
          v108 = 0;
        }

        else
        {
          fig_log_get_emitter();
          v122 = v124;
          LODWORD(v121) = 0;
          FigDebugAssert3();
          v111.columns[0] = xmmword_43600;
          v111.columns[1] = xmmword_435E0;
          v9 = -12780;
          v108 = 4;
          v138 = 0u;
          v111.columns[2] = xmmword_435D0;
          if (!v113)
          {
            goto LABEL_154;
          }
        }

        if (v113 == 5)
        {
LABEL_154:
          if (v108)
          {
            goto LABEL_164;
          }

          goto LABEL_116;
        }
      }

      else
      {
        v111.columns[2] = xmmword_435D0;
        v111.columns[1] = xmmword_435E0;
        v111.columns[0] = xmmword_43600;
      }

      *&self->_anon_281[71] = DWORD2(v125);
      *&self->_anon_281[63] = v125;
      *&self->_anon_281[75] = 0;
      *&self->_anon_281[87] = DWORD2(v127);
      *&self->_anon_281[79] = v127;
      *&self->_anon_281[91] = 0;
      *&self->_anon_281[103] = DWORD2(v126);
      *&self->_anon_281[95] = v126;
      *&self->_anon_281[107] = 0;
      *&self->_anon_281[119] = DWORD2(v128);
      *&self->_anon_281[111] = v128;
      *&self->_anon_281[123] = 0;
      *&self->_anon_281[127] = v111.columns[0];
      *&self->_anon_281[143] = v111.columns[1];
      v114 = v138;
      *&self->_anon_281[159] = v111.columns[2];
      *&self->_anon_281[175] = v138;
      v111.columns[0].i32[3] = 0;
      v111.columns[1].i32[3] = 0;
      v111.columns[2].i32[3] = 0;
      v114.i32[3] = 1.0;
      v111.columns[3] = v114;
      v178 = __invert_f4(v111);
      *&self->_anon_281[199] = v178.columns[0].i32[2];
      *&self->_anon_281[191] = v178.columns[0].i64[0];
      *&self->_anon_281[215] = v178.columns[1].i32[2];
      *&self->_anon_281[207] = v178.columns[1].i64[0];
      *&self->_anon_281[231] = v178.columns[2].i32[2];
      *&self->_anon_281[223] = v178.columns[2].i64[0];
      *&self->_anon_281[247] = v178.columns[3].i32[2];
      *&self->_anon_281[239] = v178.columns[3].i64[0];
      v115 = self->_reverseCoefficients;
      if (v115)
      {
        [v84 setFragmentTexture:v115 atIndex:6];
        if (HIDWORD(v123))
        {
          v116 = [(NSArray *)self->_smoothedLumaPyramid firstObject];
          [v84 setFragmentTexture:v116 atIndex:8];
        }

        if (v123)
        {
          v117 = [(NSArray *)self->_smoothedChromaPyramid firstObject];
          [v84 setFragmentTexture:v117 atIndex:9];
        }
      }

      intermediateOutputUnstyledPixelBuffer = self->_intermediateOutputUnstyledPixelBuffer;
      if (intermediateOutputUnstyledPixelBuffer)
      {
        [v84 setFragmentTexture:intermediateOutputUnstyledPixelBuffer atIndex:7];
      }
    }

LABEL_116:
    self->_anon_281[31] = self->_forwardCoefficients;
    v95 = *(&self->_forwardCoefficients + 1);
    *&self->_anon_281[35] = v95;
    if (v95 == -1.0)
    {
      self->_anon_281[31] = 0;
    }

    *&self->_anon_281[55] = vdiv_f32(_D9, vcvt_f32_u32(__PAIR64__(v64, v140)));
    [v84 setFragmentBytes:&self->_transformConfig length:368 atIndex:{0, v121, v122}];
    [v84 setTriangleFillMode:0];
    [v84 drawIndexedPrimitives:3 indexCount:self->_swathRenderVertexIndicesBufferSize >> 1 indexType:0 indexBuffer:self->_vertexIndicesBuffer indexBufferOffset:0];
    [v84 endEncoding];
    ++v54;
    v55 = v66;
    v137 = v84;
    if (v54 >= v172)
    {
      goto LABEL_164;
    }
  }

  if (!self->_intermediateOutputUnstyledPixelBuffer)
  {
LABEL_100:
    v80 = *&self->_ditherNoStyle;
    if (v80)
    {
      v9 = [(affineGPUMetal *)self _cachedTexturesFromPixelBuffer:v80 isTwoPass:v136 isOptimized:1 textures:v166];
      if (v9)
      {
        fig_log_get_emitter();
        FigDebugAssert3();
        v84 = v137;
        goto LABEL_164;
      }

      self->_anon_281[355] = 1;
      v81 = v167;
      v82 = [v66 colorAttachments];
      v83 = [v82 objectAtIndexedSubscript:2];
      [v83 setTexture:v81];
    }

    goto LABEL_103;
  }

  v148 = 0u;
  v149 = 0u;
  v146 = 0u;
  v147 = 0u;
  v74 = CMGetAttachment(a3, @"OutputSmartStyleDeltaMapPixelBuffer", 0);
  if (!v74)
  {
    fig_log_get_emitter();
    FigDebugAssert3();
    v9 = -12780;
    goto LABEL_177;
  }

  v9 = CMIGetYCCFromRGBConversionMatrixForPixelBuffer();
  if (!v9)
  {
    v75 = v147;
    *&self->_anon_281[255] = v146;
    *&self->_anon_281[271] = v75;
    v76 = v149;
    *&self->_anon_281[287] = v148;
    *&self->_anon_281[303] = v76;
    v9 = [(affineGPUMetal *)self _cachedTexturesFromPixelBuffer:v74 isTwoPass:0 isOptimized:0 textures:v169];
    if (!v9)
    {
      v77 = v170;
      v78 = [v66 colorAttachments];
      v79 = [v78 objectAtIndexedSubscript:1];
      [v79 setTexture:v77];

      goto LABEL_100;
    }
  }

  fig_log_get_emitter();
  FigDebugAssert3();
LABEL_177:
  v84 = v137;
LABEL_164:

  return v9;
}

- (int)_renderBlurInputTextures:(id *)a3 inputTexturesCount:(unsigned int)a4 outputTextures:(id *)a5
{
  v42 = 0;
  if (!a4)
  {
    [affineGPUMetal _renderBlurInputTextures:inputTexturesCount:outputTextures:];
    return -12780;
  }

  if (!a3)
  {
    [affineGPUMetal _renderBlurInputTextures:inputTexturesCount:outputTextures:];
    return -12780;
  }

  if (!a5)
  {
    [affineGPUMetal _renderBlurInputTextures:inputTexturesCount:outputTextures:];
    return -12780;
  }

  v7 = self;
  if (LODWORD(self->_blurVertexIndices) > 0x1000)
  {
    [affineGPUMetal _renderBlurInputTextures:inputTexturesCount:outputTextures:];
    return -12780;
  }

  v9 = [(FigMetalContext *)self->_metalContext commandQueue];
  v10 = [v9 commandBuffer];

  if (!v10)
  {
    [affineGPUMetal _renderBlurInputTextures:? inputTexturesCount:? outputTextures:?];
    return v43;
  }

  if (a5->var0)
  {
    v38 = a5;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    pipelineRenderStates = v7->_pipelineRenderStates;
    var1 = a5->var1;
    v15 = a3->var1;
    v16 = a4;
    while (1)
    {
      v17 = -[affineGPUMetal _getBlurShaderParameters:pipelineIndexToUse:](v7, "_getBlurShaderParameters:pipelineIndexToUse:", [var1[v11] pixelFormat], &v42);
      if (v17)
      {
        v36 = v17;
        fig_log_get_emitter();
        FigDebugAssert3();

        return v36;
      }

      if (!pipelineRenderStates[v42])
      {
        [(affineGPUMetal *)v12 _renderBlurInputTextures:v10 inputTexturesCount:v13 outputTextures:v14];
        return -12782;
      }

      v18 = [(FigMetalContext *)v7->_metalContext device];
      v19 = [v18 newBufferWithBytes:*&v7->_blurVertexIndicesSize length:v7->_P3ToBT2020ConversionMethod options:0];

      if (!v19)
      {
        [affineGPUMetal _renderBlurInputTextures:inputTexturesCount:outputTextures:];
        return v43;
      }

      v20 = objc_opt_new();

      if (!v20)
      {
        [affineGPUMetal _renderBlurInputTextures:inputTexturesCount:outputTextures:];
        return v43;
      }

      v39 = v19;
      v21 = v7;
      v22 = [v20 colorAttachments];
      v23 = [v22 objectAtIndexedSubscript:0];
      [v23 setLoadAction:1];

      v24 = [v20 colorAttachments];
      v25 = [v24 objectAtIndexedSubscript:0];
      [v25 setStoreAction:1];

      v26 = var1[v11];
      v27 = [v20 colorAttachments];
      [v27 objectAtIndexedSubscript:0];
      v29 = v28 = v10;
      [v29 setTexture:v26];

      v10 = v28;
      v30 = [v28 renderCommandEncoderWithDescriptor:v20];

      if (!v30)
      {
        break;
      }

      v12 = v30;
      [v30 setRenderPipelineState:pipelineRenderStates[v42]];
      v7 = v21;
      [v30 setVertexBytes:*&v21->_blurVertexSize length:LODWORD(v21->_blurVertexIndices) atIndex:0];
      v31 = 0;
      v32 = v15;
      do
      {
        v33 = *v32;
        v32 += 3;
        [v12 setFragmentTexture:v33 atIndex:v31++];
      }

      while (v16 != v31);
      [v12 setFragmentBytes:&v21->_anon_429[11] length:32 atIndex:0];
      [v12 setTriangleFillMode:0];
      [v12 drawIndexedPrimitives:3 indexCount:v21->_P3ToBT2020ConversionMethod >> 1 indexType:0 indexBuffer:v39 indexBufferOffset:0];
      [v12 endEncoding];
      ++v11;
      ++v15;
      v13 = v39;
      v14 = v20;
      if (v11 >= v38->var0)
      {

        goto LABEL_17;
      }
    }

    [affineGPUMetal _renderBlurInputTextures:inputTexturesCount:outputTextures:];
    return v43;
  }

LABEL_17:
  [(affineGPUMetal *)v7 _addCommandBufferHandler:v10];
  if (gGMFigKTraceEnabled)
  {
    v34 = [v10 commandQueue];
    v35 = [v34 commandBuffer];

    [v35 setLabel:@"KTRACE_MTLCMDBUF"];
    [v35 addCompletedHandler:&__block_literal_global_129];
    [v35 commit];
    [v10 addCompletedHandler:&__block_literal_global_131];
  }

  [v10 commit];

  return 0;
}

- (int)_blurDeltaMapBordersFromStyledPixelBuffer:(__CVBuffer *)a3 withUnstyledPixelBuffer:(__CVBuffer *)a4 to:(__CVBuffer *)a5
{
  v35 = 0;
  v33 = 0;
  v34 = 0;
  v31 = 0;
  v32 = 0;
  v28 = 0;
  v29 = 0;
  if (!a3 || !a4 || !a5)
  {
    fig_log_get_emitter();
    FigDebugAssert3();
    v23 = 0;
    v10 = 0;
    v12 = 0;
    v14 = 0;
    v8 = -12780;
    goto LABEL_16;
  }

  v8 = [affineGPUMetal _cachedTexturesFromPixelBuffer:"_cachedTexturesFromPixelBuffer:isTwoPass:isOptimized:textures:" isTwoPass:? isOptimized:? textures:?];
  if (v8)
  {
    fig_log_get_emitter();
    FigDebugAssert3();
LABEL_22:
    v23 = 0;
    v10 = 0;
LABEL_27:
    v12 = 0;
LABEL_28:
    v14 = 0;
    goto LABEL_16;
  }

  v8 = [(affineGPUMetal *)self _cachedTexturesFromPixelBuffer:a4 isTwoPass:1 isOptimized:0 textures:v30];
  if (v8)
  {
    fig_log_get_emitter();
    FigDebugAssert3();
    goto LABEL_22;
  }

  v8 = [(affineGPUMetal *)self _cachedTexturesFromPixelBuffer:a5 isTwoPass:0 isOptimized:0 textures:v27];
  if (v8)
  {
    fig_log_get_emitter();
    FigDebugAssert3();
    goto LABEL_22;
  }

  v9 = [(FigMetalContext *)self->_metalContext commandQueue];
  v10 = [v9 commandBuffer];

  if (!v10)
  {
    fig_log_get_emitter();
    FigDebugAssert3();
    fig_log_get_emitter();
    v8 = FigSignalErrorAtGM();
    goto LABEL_22;
  }

  v8 = -[affineGPUMetal _getBlurDeltaMapBordersShaderParameters:pipelineIndexToUse:](self, "_getBlurDeltaMapBordersShaderParameters:pipelineIndexToUse:", [v28 pixelFormat], &v35);
  if (v8)
  {
    fig_log_get_emitter();
    FigDebugAssert3();
LABEL_26:
    v23 = 0;
    goto LABEL_27;
  }

  if (!self->_pipelineRenderStates[v35])
  {
    fig_log_get_emitter();
    FigDebugAssert3();
    v23 = 0;
    v12 = 0;
    v14 = 0;
    v8 = -12782;
    goto LABEL_16;
  }

  v11 = [(FigMetalContext *)self->_metalContext device];
  v12 = [v11 newBufferWithBytes:&self->_blurRenderIndices[5] length:96 options:0];

  if (!v12)
  {
    fig_log_get_emitter();
    FigDebugAssert3();
    fig_log_get_emitter();
    v8 = FigSignalErrorAtGM();
    goto LABEL_26;
  }

  v13 = objc_opt_new();
  v14 = v13;
  if (!v13)
  {
    fig_log_get_emitter();
    FigDebugAssert3();
    fig_log_get_emitter();
    v8 = FigSignalErrorAtGM();
    v23 = 0;
    goto LABEL_28;
  }

  v15 = [v13 colorAttachments];
  v16 = [v15 objectAtIndexedSubscript:0];
  [v16 setLoadAction:1];

  v17 = [v14 colorAttachments];
  v18 = [v17 objectAtIndexedSubscript:0];
  [v18 setStoreAction:1];

  v19 = v28;
  v20 = [v14 colorAttachments];
  v21 = [v20 objectAtIndexedSubscript:0];
  [v21 setTexture:v19];

  v22 = [v10 renderCommandEncoderWithDescriptor:v14];
  v23 = v22;
  if (v22)
  {
    [v22 setRenderPipelineState:self->_pipelineRenderStates[v35]];
    [v23 setVertexBytes:&self->_blurRenderVertices[10] length:128 atIndex:0];
    [v23 setFragmentTexture:v33 atIndex:0];
    [v23 setFragmentTexture:v34 atIndex:1];
    [v23 setFragmentTexture:v31 atIndex:2];
    [v23 setFragmentTexture:v32 atIndex:3];
    [v23 setFragmentTexture:self->_intermediateOutputUnstyledPixelBuffer atIndex:4];
    [v23 setFragmentBytes:&self->_transformConfig length:368 atIndex:0];
    [v23 setTriangleFillMode:0];
    [v23 drawIndexedPrimitives:3 indexCount:48 indexType:0 indexBuffer:v12 indexBufferOffset:0];
    [v23 endEncoding];
    [(affineGPUMetal *)self _addCommandBufferHandler:v10];
    if (gGMFigKTraceEnabled)
    {
      v24 = [v10 commandQueue];
      v25 = [v24 commandBuffer];

      [v25 setLabel:@"KTRACE_MTLCMDBUF"];
      [v25 addCompletedHandler:&__block_literal_global_142];
      [v25 commit];
      [v10 addCompletedHandler:&__block_literal_global_144];
    }

    [v10 commit];
    v8 = 0;
  }

  else
  {
    fig_log_get_emitter();
    FigDebugAssert3();
    fig_log_get_emitter();
    v8 = FigSignalErrorAtGM();
    v23 = 0;
  }

LABEL_16:

  return v8;
}

- (void)configureBlurWith:(id *)a3
{
  if (!a3)
  {
    [affineGPUMetal configureBlurWith:];
    return;
  }

  var0 = a3->var0;
  LOBYTE(self->_blurOverscan.width) = a3->var0 != 0;
  if (var0)
  {
    if (a3->var1 < 4)
    {
      [affineGPUMetal configureBlurWith:];
      return;
    }

    *self->_blurPreviousTextureIndex = 0u;
    HIDWORD(self->_blurOverscan.width) = 5;
    *&self->_blurRadiusTable[4] = 4;
    *&self->_blurOverscan.height = vcvtq_f64_f32(vcvt_f32_s32(*&a3->var2));
    __asm { FMOV            V0.2S, #-1.0 }

    *&self->_blurBorderVertices[10] = -_D0;
    __asm { FMOV            V2.2S, #1.0 }

    *&self->_blurBorderVertices[18] = _D2;
    *&self->_blurBorderVertices[26] = _D0;
    *&self->_blurBorderVertices[34] = -_D2;
    *&self->_blurBorderVertices[42] = -_D0;
    *&self->_blurBorderVertices[50] = _D2;
    *&self->_blurBorderVertices[58] = _D0;
    *&self->_blurRenderIndices[1] = -_D2;
    *&self->_blurBorderIndices[4] = xmmword_43860;
    *&self->_blurBorderIndices[12] = xmmword_43870;
    *&self->_blurBorderIndices[20] = xmmword_43880;
    *&self->_blurRenderVertices[10] = -_D0;
    *&self->_blurRenderVertices[18] = -_D0;
    *&self->_blurRenderVertices[26] = _D2;
    *&self->_blurRenderVertices[34] = _D2;
    *&self->_blurRenderVertices[42] = -_D0;
    *&self->_blurRenderVertices[50] = -_D0;
    *&self->_blurRenderVertices[58] = _D2;
    *&self->_blurRenderVertices[66] = _D2;
    *&self->_blurRenderVertices[74] = _D0;
    *&self->_blurRenderVertices[82] = _D0;
    *&self->_blurRenderVertices[90] = -_D2;
    *&self->_blurRenderVertices[98] = -_D2;
    *&self->_blurRenderVertices[106] = _D0;
    *&self->_blurRenderVertices[114] = _D0;
    *&self->_blurRenderVertices[122] = -_D2;
    *self->_blurFrameCounter = -_D2;
    *&self->_blurRenderIndices[5] = xmmword_43890;
    *&self->_blurRenderIndices[13] = xmmword_438A0;
    *&self->_blurRenderIndices[21] = xmmword_438B0;
    *&self->_blurRenderIndices[29] = xmmword_438C0;
    *&self->_blurRenderIndices[37] = xmmword_438D0;
    *&self->_blurRenderIndices[45] = xmmword_438E0;
    *&self->_blurRadiusTable[8] = 0x102030201020100;
    self->_blurBorderIndices[3] = 257;
    if ([(affineGPUMetal *)self _cachedTexturesFromPixelBuffer:a3->var8[0] isTwoPass:1 isOptimized:0 textures:self->_blurTempTextures[0][0].texture])
    {
      [affineGPUMetal configureBlurWith:];
      return;
    }

    if ([(affineGPUMetal *)self _cachedTexturesFromPixelBuffer:a3->var8[1] isTwoPass:1 isOptimized:0 textures:self->_blurPreviousTextures[0][0].texture])
    {
      [affineGPUMetal configureBlurWith:];
      return;
    }

    if ([(affineGPUMetal *)self _cachedTexturesFromPixelBuffer:a3->var8[2] isTwoPass:1 isOptimized:0 textures:self->_blurPreviousTextures[0][1].texture])
    {
      [affineGPUMetal configureBlurWith:];
      return;
    }

    if ([(affineGPUMetal *)self _cachedTexturesFromPixelBuffer:a3->var8[3] isTwoPass:1 isOptimized:0 textures:self->_blurPreviousTextures[0][2].texture])
    {
      [affineGPUMetal configureBlurWith:];
      return;
    }

    v12 = a3->var9[0];
    if (!v12)
    {
      goto LABEL_28;
    }

    if ([(affineGPUMetal *)self _cachedTexturesFromPixelBuffer:v12 isTwoPass:1 isOptimized:0 textures:self->_blurTempTextures[1][0].texture])
    {
      [affineGPUMetal configureBlurWith:];
      return;
    }

    if ([(affineGPUMetal *)self _cachedTexturesFromPixelBuffer:a3->var9[1] isTwoPass:1 isOptimized:0 textures:self->_blurPreviousTextures[1][0].texture])
    {
      [affineGPUMetal configureBlurWith:];
      return;
    }

    if ([(affineGPUMetal *)self _cachedTexturesFromPixelBuffer:a3->var9[2] isTwoPass:1 isOptimized:0 textures:self->_blurPreviousTextures[1][1].texture])
    {
      [affineGPUMetal configureBlurWith:];
      return;
    }

    if ([(affineGPUMetal *)self _cachedTexturesFromPixelBuffer:a3->var9[3] isTwoPass:1 isOptimized:0 textures:self->_blurPreviousTextures[1][2].texture])
    {
      [affineGPUMetal configureBlurWith:];
    }

    else
    {
LABEL_28:
      if (a3->var10)
      {
        LOBYTE(self->_ditherStrengthChroma) = 1;
        *&self->_fbsDeltaThresholdLuma = xmmword_438F0;
        *&self->_attachmentIsLinearThumbnail = 0x3C8080813B008081;
      }
    }
  }
}

- (void)_blurDuplicatedPixelsOnPixelBuffer:(__CVBuffer *)a3 validBufferRect:(CGRect *)a4 forDeltaMap:(BOOL)a5
{
  v124 = 0;
  v125 = 0;
  v115 = 0;
  v116 = 0;
  v118 = 0;
  v119 = 0;
  v121 = 0;
  v122 = 0;
  v112 = 0;
  v113 = 0;
  v107 = 0;
  v108 = 0;
  v109 = 0;
  v110 = 0;
  if (a3)
  {
    v5 = a5;
    if ([(affineGPUMetal *)self _cachedTexturesFromPixelBuffer:a3 isTwoPass:1 isOptimized:0 textures:&v123])
    {
      fig_log_get_emitter();
      FigDebugAssert3();
    }

    else
    {
      p_inputWidth = &self->_inputWidth;
      ++self->_blurPreviousTextureIndex[v5];
      __asm { FMOV            V10.2S, #-1.0 }

      v13 = -_D10;
      *&self->_blurBorderVertices[42] = -_D10;
      __asm { FMOV            V13.2S, #1.0 }

      *&self->_blurBorderVertices[50] = _D13;
      *&self->_blurBorderVertices[58] = _D10;
      *&self->_blurRenderIndices[1] = -_D13;
      v15 = *&self->_blurOverscan.height;
      if (a4)
      {
        v15 = vaddq_f64(v15, a4->origin);
      }

      v16 = *&self->_swathMatricesBufferSize;
      v17 = *&self->_texMatCount[4];
      v19 = *p_inputWidth;
      v18 = *&self->_outputWidth;
      v20.i64[0] = *p_inputWidth;
      v20.i64[1] = HIDWORD(*p_inputWidth);
      v21 = vcvtq_f64_u64(v20);
      v22 = 0;
      if (a4)
      {
        v98 = v21;
        v100 = v15;
        v103 = *&self->_texMatCount[4];
        IsNull = CGRectIsNull(*a4);
        v21 = v98;
        v15 = v100;
        size = v98;
        v17 = v103;
        if (!IsNull)
        {
          size = a4->size;
          v22 = vcvt_f32_f64(a4->origin);
        }
      }

      else
      {
        size = v21;
      }

      v25 = 0;
      v26 = v5;
      v27.i64[0] = v18;
      v27.i64[1] = HIDWORD(v18);
      v28 = vcvtq_f64_u64(v27);
      v29 = vdivq_f64(v15, v28);
      v30 = v29.f64[0];
      v94 = (v30 * 2.0) + -1.0;
      *v29.f64 = v29.f64[1];
      v104 = ((v30 * -2.0) + 1.0) + ((v30 * -2.0) + 1.0);
      v93 = (*v29.f64 * -2.0) + 1.0;
      v101 = v93 + v93;
      *&v29.f64[0] = vcvt_f32_u32(v19);
      v31 = vmla_f32(*&v13, COERCE_FLOAT32X2_T(-2.00000048), vdiv_f32(v22, *&v29.f64[0]));
      *&v29.f64[0] = vmla_f32(v31, COERCE_FLOAT32X2_T(-2.00000048), vdiv_f32(vcvt_f32_f64(size), *&v29.f64[0]));
      v32 = vcvt_f32_f64(vdivq_f64(v21, v28));
      v134[0] = v31;
      v134[1] = __PAIR64__(v31.u32[1], LODWORD(v29.f64[0]));
      v31.i32[1] = HIDWORD(v29.f64[0]);
      v134[2] = v31;
      v134[3] = *&v29.f64[0];
      v126 = 0;
      v127 = v17 + v17 * HIDWORD(v17);
      v128 = HIDWORD(v17);
      v129 = v127 + HIDWORD(v17);
      _S12 = -0.5;
      do
      {
        v135 = __invert_f3(*(v16 + 48 * *(&v126 + v25)));
        _D3 = v134[v25];
        __asm { FMLA            S5, S12, V3.S[1] }

        v135.columns[0] = vaddq_f32(v135.columns[2], vmlaq_n_f32(vmulq_n_f32(v135.columns[0], (*&_D3 * 0.5) + 0.5), v135.columns[1], _S5));
        *(&v130 + v25++) = vmul_f32(vmla_f32(*&v13, COERCE_FLOAT32X2_T(-2.00000048), vdiv_f32(*v135.columns[0].f32, vdup_laneq_s32(v135.columns[0], 2))), v32);
      }

      while (v25 != 4);
      v36 = 1;
      v37 = 8;
      v38 = &v130;
      do
      {
        v39 = v37;
        do
        {
          v40 = *v38;
          v41 = *(&v130 + v39);
          if (vcgt_f32(v41, *v38).i32[1])
          {
            *v38 = v41;
            *(&v130 + v39) = v40;
          }

          v39 += 8;
        }

        while (v39 != 32);
        ++v36;
        v37 += 8;
        v38 = &v131;
      }

      while (v36 != 3);
      v42 = v132;
      v43 = vcgt_f32(v132, v133).u8[0];
      _ZF = (v43 & 1) == 0;
      if (v43)
      {
        v45 = v132.f32[0];
      }

      else
      {
        v45 = v133.f32[0];
      }

      if (v43)
      {
        v46 = v133.f32[0];
      }

      else
      {
        v46 = v132.f32[0];
      }

      if (v43)
      {
        v47 = v132;
      }

      else
      {
        v47 = v133;
      }

      if (!_ZF)
      {
        v42 = v133;
      }

      if (vcgt_f32(v130, v131).u8[0])
      {
        v48 = -1;
      }

      else
      {
        v48 = 0;
      }

      v49 = vdup_n_s32(v48);
      v50 = vbsl_s8(v49, v131, v130);
      v51 = vbsl_s8(v49, v130, v131);
      *&self->_blurRenderVertices[10] = v13;
      v52 = *&v50.i32[1];
      if (*&v50.i32[1] < 1.0)
      {
        v52 = 1.0;
      }

      v53 = *&v51.i32[1];
      if (*&v51.i32[1] < 1.0)
      {
        v53 = 1.0;
      }

      if (*v50.i32 <= -1.0)
      {
        v54 = *v50.i32;
      }

      else
      {
        v54 = -1.0;
      }

      HIDWORD(v55) = v50.i32[1];
      *&self->_blurRenderVertices[50] = v50;
      *&v50.i32[1] = v52;
      *&self->_blurRenderVertices[18] = v50;
      *&self->_blurRenderVertices[26] = __PAIR64__(LODWORD(v53), v51.u32[0]);
      *&v55 = v54;
      *&self->_blurRenderVertices[34] = _D13;
      *&self->_blurRenderVertices[58] = v51;
      if (*v51.i32 >= 1.0)
      {
        v56 = *v51.i32;
      }

      else
      {
        v56 = 1.0;
      }

      *v51.i32 = v56;
      *&self->_blurRenderVertices[42] = v55;
      *&self->_blurRenderVertices[66] = v51;
      if (v46 > -1.0)
      {
        v46 = -1.0;
      }

      *&self->_blurRenderVertices[74] = __PAIR64__(v42.u32[1], LODWORD(v46));
      *&self->_blurRenderVertices[82] = v42;
      *&self->_blurRenderVertices[90] = v47;
      if (v45 < 1.0)
      {
        v45 = 1.0;
      }

      *&self->_blurRenderVertices[98] = __PAIR64__(v47.u32[1], LODWORD(v45));
      *&self->_blurRenderVertices[106] = _D10;
      if (v42.f32[1] <= -1.0)
      {
        v57 = v42.f32[1];
      }

      else
      {
        v57 = -1.0;
      }

      v42.f32[1] = v57;
      *&self->_blurRenderVertices[114] = v42;
      if (v47.f32[1] <= -1.0)
      {
        v58 = v47.f32[1];
      }

      else
      {
        v58 = -1.0;
      }

      v47.f32[1] = v58;
      *&self->_blurRenderVertices[122] = v47;
      *self->_blurFrameCounter = -_D13;
      v59 = HIDWORD(self->_blurOverscan.width) & 1;
      blurTempTextures = self->_blurTempTextures;
      __copy_assignment_8_8_t0w4_AB8s8n2_s8_AE(&v106[24 * (HIDWORD(self->_blurOverscan.width) & 1)], self->_blurPreviousTextures[v26][*(&self->_blurTempTextures[0][0].count + v26)].texture);
      __copy_assignment_8_8_t0w4_AB8s8n2_s8_AE(&v106[24 * (v59 ^ 1)], self->_blurTempTextures[v26][0].texture);
      LODWORD(width_high) = HIDWORD(self->_blurOverscan.width);
      if (width_high)
      {
        v61 = 0;
        v62 = 0;
        *v63.i32 = v94;
        *&v64 = v94 + v104;
        *&v63.i32[1] = v93 - v101;
        v96 = v63;
        v97 = __PAIR64__(LODWORD(v93), v94 + v104);
        v92 = v94 + v104;
        *(&v64 + 1) = v93 - v101;
        v95 = v64;
        _S10 = 10.0;
        _S11 = -10.0;
        do
        {
          v67 = (width_high - 1);
          if (v61 == v67)
          {
            v68 = self->_blurPreviousTextureIndex[v26];
            v69 = v68 > 2;
            if (v61)
            {
              v70 = v68 > 2;
              texture = self->_blurPreviousTextures[v26][0].texture;
              __copy_assignment_8_8_t0w4_AB8s8n2_s8_AE(&v114, &texture[3 * *(&(*blurTempTextures)[0].count + v26)]);
              __copy_assignment_8_8_t0w4_AB8s8n2_s8_AE(&v117, &texture[3 * ((*(&(*blurTempTextures)[0].count + v26) + 1) % 3)]);
              v69 = v70;
              __copy_assignment_8_8_t0w4_AB8s8n2_s8_AE(&v120, &texture[3 * ((*(&(*blurTempTextures)[0].count + v26) + 2) % 3)]);
              v73 = 3;
              goto LABEL_58;
            }
          }

          else
          {
            if (v61)
            {
              __copy_assignment_8_8_t0w4_AB8s8n2_s8_AE(&v114, &v106[24 * (v62 ^ 1)]);
              v69 = 0;
              v73 = 1;
LABEL_58:
              v74 = 1.5;
              v72.i32[0] = 4.0;
              if (v61 > 9)
              {
                goto LABEL_63;
              }

              goto LABEL_62;
            }

            v69 = 0;
          }

          __copy_assignment_8_8_t0w4_AB8s8n2_s8_AE(&v114, &v123);
          v73 = 1;
          v72.i32[0] = 2.0;
LABEL_62:
          LOBYTE(v74) = self->_blurRadiusTable[v61 + 8];
          v74 = LODWORD(v74) + 0.5;
LABEL_63:
          v105 = v74;
          v76 = v97;
          v75 = __PAIR64__(LODWORD(v93), LODWORD(v94));
          _D5 = vdiv_f32(vdup_lane_s32(v72, 0), vcvt_f32_u32(*&self->_outputWidth));
          v79 = v95;
          v78 = v96;
          if (v61 <= 1)
          {
            *v78.i32 = v94 + (_D5.f32[0] * 10.0);
            __asm { FMLA            S4, S11, V5.S[1] }

            *&v75 = *v78.i32;
            HIDWORD(v75) = _S4;
            *&v79 = v92 + (_D5.f32[0] * -10.0);
            *&v76 = *&v79;
            HIDWORD(v76) = _S4;
            __asm { FMLA            S4, S10, V5.S[1] }

            v78.i32[1] = _S4;
            HIDWORD(v79) = _S4;
          }

          *&self->_blurBorderVertices[42] = v75;
          *&self->_blurBorderVertices[50] = v76;
          *&self->_blurBorderVertices[58] = v78;
          *&self->_blurRenderIndices[1] = v79;
          if (v61 == v67)
          {
            v82 = &v123;
          }

          else
          {
            v82 = &v106[24 * v62];
          }

          if (v61 == v67)
          {
            *v78.i32 = 1.0;
          }

          else
          {
            *v78.i32 = 2.0;
          }

          v99 = _D5;
          v102 = v78;
          __copy_assignment_8_8_t0w4_AB8s8n2_s8_AE(&v111, v82);
          v83 = vcvt_f32_u32(*&self->_outputWidth);
          *&self->_anon_429[19] = vmul_n_f32(vdiv_f32(vdup_lane_s32(v102, 0), v83), v105);
          v84 = 0;
          if (!v61)
          {
            v84 = vmul_n_f32(v99, *&self->_blurRadiusTable[4]);
          }

          *&self->_anon_429[27] = v84;
          if (v61 == v67)
          {
            v85 = 96;
            v86 = 128;
            v87 = &self->_blurRenderVertices[10];
            v88 = &self->_blurRenderIndices[5];
          }

          else
          {
            v85 = 48;
            v86 = 64;
            v87 = &self->_blurBorderVertices[10];
            v88 = &self->_blurBorderIndices[4];
          }

          *&self->_blurVertexSize = v87;
          LODWORD(self->_blurVertexIndices) = v86;
          *&self->_blurVertexIndicesSize = v88;
          self->_P3ToBT2020ConversionMethod = v85;
          *&self->_blurPasses = v83;
          self->_anon_429[11] = v69;
          [(affineGPUMetal *)self _renderBlurInputTextures:&v114 inputTexturesCount:v73 outputTextures:&v111];
          v62 ^= 1uLL;
          ++v61;
          width_high = HIDWORD(self->_blurOverscan.width);
        }

        while (v61 < width_high);
      }

      *(&(*blurTempTextures)[0].count + v26) = (*(&(*blurTempTextures)[0].count + v26) + 1) % 3;
    }
  }

  else
  {
    fig_log_get_emitter();
    FigDebugAssert3();
  }

  for (i = 0; i != -48; i -= 24)
  {
  }

  for (j = 0; j != -72; j -= 24)
  {
  }
}

- (int)_initTransformShaders
{
  v2 = [(affineGPUMetal *)self _createRenderPipelinesForShaders:&off_5A9B0];
  if (v2)
  {
    [affineGPUMetal _initTransformShaders];
  }

  return v2;
}

- (int)_initBlurShaders
{
  v2 = [(affineGPUMetal *)self _createRenderPipelinesForShaders:&off_5AB78];
  if (v2)
  {
    [affineGPUMetal _initBlurShaders];
  }

  return v2;
}

- (int)_initComputeShaders
{
  if (FigCapturePlatformIdentifier() <= 6)
  {
    v3 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"kernelDuplicateBottomRows" constants:0];
    v4 = self->_pipelineComputeStates[0];
    self->_pipelineComputeStates[0] = v3;

    if (!self->_pipelineComputeStates[0])
    {
      [(affineGPUMetal *)&v14 _initComputeShaders];
      return v14;
    }
  }

  v5 = [(FigMetalContext *)self->_metalContext device];
  v6 = [v5 supportsFamily:1004];

  if (!v6)
  {
    return 0;
  }

  v7 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"CMIFastBilateralSmoothing_Downsample4x" constants:0];
  v8 = self->_pipelineComputeStates[1];
  self->_pipelineComputeStates[1] = v7;

  if (!self->_pipelineComputeStates[1])
  {
    [(affineGPUMetal *)&v13 _initComputeShaders];
    return v13;
  }

  v9 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"CMIFastBilateralSmoothing_Remix" constants:0];
  v10 = self->_pipelineComputeStates[2];
  self->_pipelineComputeStates[2] = v9;

  if (self->_pipelineComputeStates[2])
  {
    return 0;
  }

  [(affineGPUMetal *)&v12 _initComputeShaders];
  return v12;
}

- (int)_createRenderPipelinesForShaders:(id)a3
{
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = a3;
  v4 = [obj countByEnumeratingWithState:&v47 objects:v46 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v48;
    v36 = *v48;
    pipelineRenderStates = self->_pipelineRenderStates;
    while (2)
    {
      v8 = 0;
      v9 = v6;
      v38 = v5;
      do
      {
        if (*v48 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v47 + 1) + 8 * v8);
        v11 = [v10 objectForKeyedSubscript:{@"functionConstants", v36}];
        v6 = objc_alloc_init(MTLFunctionConstantValues);

        if (!v6)
        {
          [affineGPUMetal _createRenderPipelinesForShaders:?];
          v34 = v44;
LABEL_20:

          goto LABEL_21;
        }

        v12 = [v10 objectForKeyedSubscript:@"index"];
        v43 = [v12 unsignedIntValue];

        v13 = [v10 objectForKeyedSubscript:@"pixelFormat"];
        v14 = [v13 unsignedIntValue];

        v15 = [v10 objectForKeyedSubscript:@"deltaMapPixelFormat"];
        v41 = [v15 unsignedIntValue];

        v16 = [v10 objectForKeyedSubscript:@"unstyledPixelFormat"];
        v40 = [v16 unsignedIntValue];

        v17 = [(FigMetalContext *)self->_metalContext device];
        v42 = v14;
        MTLPixelFormatGetInfoForDevice();
        LOBYTE(v14) = v45;

        if ((v14 & 0x10) != 0)
        {
          if ([v11 count])
          {
            v18 = 0;
            v19 = 1;
            do
            {
              v20 = [v11 objectAtIndexedSubscript:v18];
              v21 = [v20 objectAtIndexedSubscript:1];
              v22 = [v21 BOOLValue];

              LOBYTE(v44) = v22;
              v23 = [v11 objectAtIndexedSubscript:v18];
              v24 = [v23 objectAtIndexedSubscript:0];
              v25 = [v24 unsignedIntValue];
              v26 = v44;
              if (!v25)
              {
                v26 = self->_useBicubic & v44;
              }

              LOBYTE(v44) = v26;

              v27 = [v11 objectAtIndexedSubscript:v18];
              v28 = [v27 objectAtIndexedSubscript:0];
              [v6 setConstantValue:&v44 type:53 atIndex:{objc_msgSend(v28, "unsignedIntValue")}];

              v18 = v19;
            }

            while ([v11 count] > v19++);
          }

          v30 = [v10 objectForKeyedSubscript:@"vertName"];
          v31 = [v10 objectForKeyedSubscript:@"fragName"];
          v32 = [(affineGPUMetal *)self _compileShader:v30 fragment:v31 pixelFormat:v42 deltaMapPixelFormat:v41 unstyledPixelFormat:v40 constants:v6];
          v33 = pipelineRenderStates[v43];
          pipelineRenderStates[v43] = v32;

          v5 = v38;
          v7 = v36;
          if (!pipelineRenderStates[v43])
          {
            [affineGPUMetal _createRenderPipelinesForShaders:];
            v34 = -12786;
            goto LABEL_20;
          }
        }

        v8 = v8 + 1;
        v9 = v6;
      }

      while (v8 != v5);
      v5 = [obj countByEnumeratingWithState:&v47 objects:v46 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }

    v34 = 0;
LABEL_21:
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

- (id)_compileShader:(id)a3 fragment:(id)a4 pixelFormat:(unint64_t)a5 deltaMapPixelFormat:(unint64_t)a6 unstyledPixelFormat:(unint64_t)a7 constants:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a8;
  v17 = 1;
  if (a6)
  {
    v17 = 2;
  }

  if (a7)
  {
    v18 = v17 + 1;
  }

  else
  {
    v18 = v17;
  }

  v19 = [NSMutableArray arrayWithCapacity:v18];
  if (!v14)
  {
    [affineGPUMetal _compileShader:fragment:pixelFormat:deltaMapPixelFormat:unstyledPixelFormat:constants:];
LABEL_20:
    v24 = 0;
    v23 = 0;
    goto LABEL_14;
  }

  if (!v15)
  {
    [affineGPUMetal _compileShader:fragment:pixelFormat:deltaMapPixelFormat:unstyledPixelFormat:constants:];
    goto LABEL_20;
  }

  if (!v16)
  {
    [affineGPUMetal _compileShader:fragment:pixelFormat:deltaMapPixelFormat:unstyledPixelFormat:constants:];
    goto LABEL_20;
  }

  v20 = objc_opt_new();
  if (!v20)
  {
    [affineGPUMetal _compileShader:fragment:pixelFormat:deltaMapPixelFormat:unstyledPixelFormat:constants:];
    goto LABEL_20;
  }

  v21 = v20;
  [v20 setPixelFormat:a5];
  [v19 addObject:v21];
  v22 = objc_opt_new();

  if (!v22)
  {
    [affineGPUMetal _compileShader:fragment:pixelFormat:deltaMapPixelFormat:unstyledPixelFormat:constants:];
    goto LABEL_20;
  }

  [v22 setPixelFormat:a6];
  [v19 addObject:v22];
  v23 = objc_opt_new();

  if (v23)
  {
    [v23 setPixelFormat:a7];
    [v19 addObject:v23];
    v24 = [(FigMetalContext *)self->_metalContext renderPipelineStateForVertexFunction:v14 vertexDescriptor:0 fragmentFunction:v15 constants:v16 colorAttachmentDescriptorArrray:v19];
    if (!v24)
    {
      [affineGPUMetal _compileShader:fragment:pixelFormat:deltaMapPixelFormat:unstyledPixelFormat:constants:];
    }
  }

  else
  {
    [affineGPUMetal _compileShader:fragment:pixelFormat:deltaMapPixelFormat:unstyledPixelFormat:constants:];
    v24 = 0;
  }

LABEL_14:
  v25 = v24;

  return v24;
}

- (int)_cachedTexturesFromPixelBuffer:(__CVBuffer *)a3 isTwoPass:(BOOL)a4 isOptimized:(BOOL)a5 textures:(id *)a6
{
  v50 = a5;
  image = 0;
  if (!a3)
  {
    [affineGPUMetal _cachedTexturesFromPixelBuffer:isTwoPass:isOptimized:textures:];
LABEL_186:
    v15 = 0;
    v13 = -12780;
    goto LABEL_181;
  }

  if (!a6)
  {
    [affineGPUMetal _cachedTexturesFromPixelBuffer:isTwoPass:isOptimized:textures:];
    goto LABEL_186;
  }

  v7 = a4;
  p_cvMetalTextureCacheRef = &self->_cvMetalTextureCacheRef;
  if (!self->_cvMetalTextureCacheRef)
  {
    v53 = kCVMetalTextureCacheMaximumTextureAgeKey;
    v54 = &off_55D50;
    v11 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    v12 = [(FigMetalContext *)self->_metalContext device];
    v13 = CVMetalTextureCacheCreate(kCFAllocatorDefault, v11, v12, 0, p_cvMetalTextureCacheRef);

    if (v13)
    {
      [affineGPUMetal _cachedTexturesFromPixelBuffer:isTwoPass:isOptimized:textures:];
      v15 = 0;
      goto LABEL_181;
    }
  }

  a6->var0 = 0;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  v15 = 0;
  v13 = -12782;
  if (PixelFormatType <= 1111970368)
  {
    if (PixelFormatType <= 762869295)
    {
      if (PixelFormatType <= 645428785)
      {
        if (PixelFormatType > 645424687)
        {
          if (PixelFormatType == 645424688)
          {
            goto LABEL_89;
          }

          if (PixelFormatType == 645424690)
          {
            goto LABEL_90;
          }

          v16 = 645428784;
LABEL_88:
          if (PixelFormatType != v16)
          {
            goto LABEL_181;
          }

          goto LABEL_89;
        }

        if (PixelFormatType == 641230384)
        {
          goto LABEL_84;
        }

        v25 = 641234480;
LABEL_83:
        if (PixelFormatType != v25)
        {
          goto LABEL_181;
        }

        goto LABEL_84;
      }

      if (PixelFormatType <= 758674991)
      {
        if (PixelFormatType == 645428786)
        {
          goto LABEL_90;
        }

        v25 = 758670896;
        goto LABEL_83;
      }

      if (PixelFormatType == 758674992)
      {
        goto LABEL_84;
      }

      if (PixelFormatType == 762865200)
      {
        goto LABEL_89;
      }

      v21 = 26162;
LABEL_78:
      v24 = v21 | 0x2D780000;
LABEL_79:
      if (PixelFormatType != v24)
      {
        goto LABEL_181;
      }

      goto LABEL_90;
    }

    if (PixelFormatType > 796419633)
    {
      if (PixelFormatType > 796423729)
      {
        if (PixelFormatType == 796423730)
        {
          goto LABEL_90;
        }

        if (PixelFormatType != 875704422 && PixelFormatType != 875704438)
        {
          goto LABEL_181;
        }

        v20 = 540;
        v22 = 10;
        if (v50)
        {
          v22 = 80;
          v23 = 4;
        }

        else
        {
          v23 = 1;
        }

LABEL_68:
        if (v7)
        {
          v18 = v22;
        }

        else
        {
          v18 = v20;
        }

        if (v7)
        {
          v17 = v23;
        }

        else
        {
          v17 = 1;
        }

        goto LABEL_96;
      }

      if (PixelFormatType == 796419634)
      {
        goto LABEL_90;
      }

      v19 = 30256;
    }

    else
    {
      if (PixelFormatType <= 792225327)
      {
        if (PixelFormatType == 762869296)
        {
          goto LABEL_89;
        }

        v21 = 30258;
        goto LABEL_78;
      }

      if (PixelFormatType == 792225328 || PixelFormatType == 792229424)
      {
        goto LABEL_84;
      }

      v19 = 26160;
    }

    v16 = v19 | 0x2F780000;
    goto LABEL_88;
  }

  if (PixelFormatType > 1885745713)
  {
    if (PixelFormatType > 2084070959)
    {
      if (PixelFormatType <= 2088265265)
      {
        if (PixelFormatType != 2084070960 && PixelFormatType != 2084075056)
        {
          v16 = 2088265264;
          goto LABEL_88;
        }

LABEL_84:
        v26 = !v7;
        v27 = 540;
        v28 = 10;
LABEL_92:
        if (v26)
        {
          v18 = v27;
        }

        else
        {
          v18 = v28;
        }

        v17 = 1;
        goto LABEL_96;
      }

      if (PixelFormatType != 2088265266)
      {
        if (PixelFormatType != 2088269360)
        {
          v24 = 2088269362;
          goto LABEL_79;
        }

LABEL_89:
        v26 = !v7;
        v27 = 546;
LABEL_91:
        v28 = 588;
        goto LABEL_92;
      }

LABEL_90:
      v26 = !v7;
      v27 = 547;
      goto LABEL_91;
    }

    if (PixelFormatType <= 2016686641)
    {
      if (PixelFormatType == 1885745714)
      {
        goto LABEL_90;
      }

      if (PixelFormatType != 2016686640)
      {
        goto LABEL_181;
      }
    }

    else
    {
      if (PixelFormatType == 2016686642)
      {
LABEL_41:
        v20 = 544;
        goto LABEL_65;
      }

      if (PixelFormatType != 2019963440)
      {
        if (PixelFormatType != 2019963442)
        {
          goto LABEL_181;
        }

        goto LABEL_41;
      }
    }

    v20 = 543;
LABEL_65:
    v22 = 20;
    if (v50)
    {
      v22 = 60;
      v23 = 2;
    }

    else
    {
      v23 = 1;
    }

    goto LABEL_68;
  }

  v17 = 1;
  v18 = MTLPixelFormatR16Float;
  if (PixelFormatType > 1751411058)
  {
    if (PixelFormatType <= 1882468911)
    {
      if (PixelFormatType != 1751411059)
      {
        if (PixelFormatType != 1815491698)
        {
          goto LABEL_181;
        }

        v18 = MTLPixelFormatRGBA16Unorm;
      }
    }

    else
    {
      if (PixelFormatType != 1882468912)
      {
        if (PixelFormatType == 1882468914)
        {
          goto LABEL_90;
        }

        if (PixelFormatType != 1885745712)
        {
          goto LABEL_181;
        }
      }

      if (v7)
      {
        v18 = 588;
      }

      else
      {
        v18 = MTLPixelFormatRG8Sint|0x200;
      }
    }
  }

  else if (PixelFormatType <= 1278226533)
  {
    if (PixelFormatType == 1111970369)
    {
      v18 = MTLPixelFormatBGRA8Unorm;
    }

    else
    {
      if (PixelFormatType != 1278226488)
      {
        goto LABEL_181;
      }

      v18 = MTLPixelFormatR8Unorm;
    }
  }

  else if (PixelFormatType == 1278226534)
  {
    v18 = MTLPixelFormatR32Float;
  }

  else if (PixelFormatType != 1278226536)
  {
    if (PixelFormatType != 1380411457)
    {
      goto LABEL_181;
    }

    v18 = MTLPixelFormatRGBA16Float;
  }

LABEL_96:
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a3, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a3, 0);
  CVPixelBufferGetIOSurface(a3);
  if (IOSurfaceGetCompressionTypeOfPlane() == 3 || IOSurfaceGetCompressionTypeOfPlane() == 4)
  {
    v31 = 16391;
  }

  else
  {
    v31 = 7;
  }

  v51 = kCVMetalTextureUsage;
  v32 = [NSNumber numberWithUnsignedInteger:v31];
  v52 = v32;
  v15 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];

  if (CVMetalTextureCacheCreateTextureFromImage(kCFAllocatorDefault, *p_cvMetalTextureCacheRef, a3, v15, v18, WidthOfPlane / v17, HeightOfPlane, 0, &image))
  {
    [affineGPUMetal _cachedTexturesFromPixelBuffer:isTwoPass:isOptimized:textures:];
    goto LABEL_191;
  }

  v33 = CVMetalTextureGetTexture(image);
  v34 = a6->var1[0];
  a6->var1[0] = v33;

  if (!a6->var1[0])
  {
    [affineGPUMetal _cachedTexturesFromPixelBuffer:isTwoPass:isOptimized:textures:];
    goto LABEL_191;
  }

  ++a6->var0;
  if (image)
  {
    CFRelease(image);
  }

  if (!v7)
  {
    goto LABEL_180;
  }

  v35 = CVPixelBufferGetPixelFormatType(a3);
  v36 = 1;
  v13 = -12782;
  v37 = MTLPixelFormatRG8Unorm;
  if (v35 <= 1111970368)
  {
    if (v35 <= 762869295)
    {
      if (v35 <= 645428785)
      {
        if (v35 > 645424687)
        {
          if (v35 == 645424688 || v35 == 645424690)
          {
            goto LABEL_175;
          }

          v39 = 645428784;
          goto LABEL_174;
        }

        if (v35 == 641230384)
        {
          goto LABEL_176;
        }

        v44 = 641234480;
LABEL_169:
        if (v35 != v44)
        {
          goto LABEL_181;
        }

        goto LABEL_176;
      }

      if (v35 <= 758674991)
      {
        if (v35 == 645428786)
        {
          goto LABEL_175;
        }

        v44 = 758670896;
        goto LABEL_169;
      }

      if (v35 == 758674992)
      {
        goto LABEL_176;
      }

      if (v35 == 762865200)
      {
        goto LABEL_175;
      }

      v43 = 26162;
LABEL_166:
      v39 = v43 | 0x2D780000;
      goto LABEL_174;
    }

    if (v35 > 796419633)
    {
      if (v35 > 796423729)
      {
        if (v35 != 796423730)
        {
          if (v35 != 875704422 && v35 != 875704438)
          {
            goto LABEL_181;
          }

          if (v50)
          {
            v37 = MTLPixelFormatBGRA8Unorm;
          }

          else
          {
            v37 = MTLPixelFormatRG8Unorm;
          }

          if (v50)
          {
            v36 = 2;
          }

          else
          {
            v36 = 1;
          }

          goto LABEL_176;
        }

        goto LABEL_175;
      }

      if (v35 == 796419634)
      {
        goto LABEL_175;
      }

      v41 = 30256;
    }

    else
    {
      if (v35 <= 792225327)
      {
        if (v35 == 762869296)
        {
          goto LABEL_175;
        }

        v43 = 30258;
        goto LABEL_166;
      }

      if (v35 == 792225328 || v35 == 792229424)
      {
        goto LABEL_176;
      }

      v41 = 26160;
    }

    v39 = v41 | 0x2F780000;
    goto LABEL_174;
  }

  if (v35 > 1885745713)
  {
    if (v35 > 2084070959)
    {
      if (v35 > 2088265265)
      {
        if (v35 == 2088265266 || v35 == 2088269360)
        {
          goto LABEL_175;
        }

        v38 = 30258;
        goto LABEL_153;
      }

      if (v35 != 2084070960 && v35 != 2084075056)
      {
        v38 = 26160;
LABEL_153:
        v39 = v38 | 0x7C780000;
        goto LABEL_174;
      }

LABEL_176:
      v45 = CVPixelBufferGetWidthOfPlane(a3, 1uLL);
      v46 = CVPixelBufferGetHeightOfPlane(a3, 1uLL);
      if (CVMetalTextureCacheCreateTextureFromImage(kCFAllocatorDefault, *p_cvMetalTextureCacheRef, a3, v15, v37, v45 / v36, v46, 1uLL, &image))
      {
        [affineGPUMetal _cachedTexturesFromPixelBuffer:isTwoPass:isOptimized:textures:];
      }

      else
      {
        v47 = CVMetalTextureGetTexture(image);
        v48 = a6->var1[1];
        a6->var1[1] = v47;

        if (a6->var1[1])
        {
          ++a6->var0;
          if (image)
          {
            CFRelease(image);
          }

          goto LABEL_180;
        }

        [affineGPUMetal _cachedTexturesFromPixelBuffer:isTwoPass:isOptimized:textures:];
      }

LABEL_191:
      v13 = -12786;
      goto LABEL_181;
    }

    if (v35 > 2016686641)
    {
      if (v35 == 2016686642 || v35 == 2019963440)
      {
        goto LABEL_161;
      }

      v42 = 2019963442;
LABEL_160:
      if (v35 != v42)
      {
        goto LABEL_181;
      }

LABEL_161:
      v37 = MTLPixelFormatRG16Unorm;
      goto LABEL_176;
    }

    if (v35 != 1885745714)
    {
      v42 = 2016686640;
      goto LABEL_160;
    }

LABEL_175:
    v37 = MTLPixelFormatRGBA8Uint|0x204;
    goto LABEL_176;
  }

  if (v35 <= 1751411058)
  {
    if ((v35 - 1278226488) <= 0x30 && ((1 << (v35 - 56)) & 0x1400000000001) != 0 || v35 == 1111970369)
    {
      goto LABEL_180;
    }

    v40 = 1380411457;
    goto LABEL_156;
  }

  if (v35 <= 1882468911)
  {
    if (v35 == 1751411059)
    {
LABEL_180:
      v13 = 0;
      goto LABEL_181;
    }

    v40 = 1815491698;
LABEL_156:
    if (v35 != v40)
    {
      goto LABEL_181;
    }

    goto LABEL_180;
  }

  if (v35 == 1882468912 || v35 == 1882468914)
  {
    goto LABEL_175;
  }

  v39 = 1885745712;
LABEL_174:
  if (v35 == v39)
  {
    goto LABEL_175;
  }

LABEL_181:

  return v13;
}

- (int)_getTransformShaderParameters:(unint64_t)a3 isLuma:(BOOL)a4 isRGB:(BOOL)a5 isAttachment:(BOOL)a6 pixelRatio:(unsigned int *)a7 pipelineIndexToUse:(int *)a8
{
  if (!a7)
  {
    [affineGPUMetal _getTransformShaderParameters:isLuma:isRGB:isAttachment:pixelRatio:pipelineIndexToUse:];
    return -12780;
  }

  if (!a8)
  {
    [affineGPUMetal _getTransformShaderParameters:isLuma:isRGB:isAttachment:pixelRatio:pipelineIndexToUse:];
    return -12780;
  }

  if (a3 > 114)
  {
    if (a3 > 545)
    {
      if (a3 > 587)
      {
        if (a3 == 588)
        {
          v8 = 0;
          v9 = 7;
          goto LABEL_70;
        }

        if (a3 == 589)
        {
          v8 = 0;
          v9 = 8;
          goto LABEL_70;
        }

        goto LABEL_59;
      }

      if (a3 == 546)
      {
        if (LODWORD(self->_intermediateOutputPixelBuffer) == 2)
        {
          v9 = 25;
        }

        else
        {
          v9 = 20;
        }

        *a8 = v9;
        if (!self->_reverseCoefficients)
        {
          goto LABEL_69;
        }

        v12 = self->_intermediateOutputUnstyledPixelBuffer == 0;
        v13 = 21;
        goto LABEL_66;
      }

      if (a3 != 547)
      {
        goto LABEL_59;
      }

      v9 = 29;
      *a8 = 29;
      if (self->_reverseCoefficients)
      {
        v12 = self->_intermediateOutputUnstyledPixelBuffer == 0;
        v13 = 30;
        goto LABEL_66;
      }
    }

    else
    {
      if (a3 <= 542)
      {
        if (a3 == 115)
        {
          v8 = 0;
          v9 = 47;
          goto LABEL_70;
        }

        if (a3 == 540)
        {
          if (self->_bgCubePtr)
          {
            v10 = 10;
            if (*&self->_srlFixOn)
            {
              if (self->_foregroundColorCube)
              {
                v10 = 12;
              }

              else
              {
                v10 = 10;
              }
            }
          }

          else
          {
            v10 = 10;
          }

          if (LODWORD(self->_intermediateOutputPixelBuffer) == 2)
          {
            v10 = 23;
          }

          *a8 = v10;
          if (self->_reverseCoefficients)
          {
            if (self->_intermediateOutputUnstyledPixelBuffer)
            {
              v10 = 15;
            }

            else
            {
              v10 = 13;
            }
          }

          *a8 = v10;
          if (!self->_reverseCoefficients && LOBYTE(self->_ditherStrengthChroma) != 1 || self->_fbsDeltaThresholdLuma <= 0.0 && self->_fbsEdgeThresholdLuma <= 0.0)
          {
            v8 = 0;
            goto LABEL_71;
          }

          v17 = v10 - 10;
          if (v17 > 5)
          {
            v8 = -12780;
            v9 = -1;
          }

          else
          {
            v9 = dword_43920[v17];
            v8 = dword_43938[v17];
          }

LABEL_70:
          *a8 = v9;
LABEL_71:
          v14 = 1;
          goto LABEL_72;
        }

        goto LABEL_59;
      }

      if (a3 == 543)
      {
        if (LODWORD(self->_intermediateOutputPixelBuffer) == 2)
        {
          v9 = 24;
        }

        else
        {
          v9 = 17;
        }

        *a8 = v9;
        if (BYTE4(self[1].super.isa))
        {
          v9 = 48;
        }

        else if (self->_reverseCoefficients)
        {
          v12 = self->_intermediateOutputUnstyledPixelBuffer == 0;
          v13 = 18;
LABEL_66:
          if (v12)
          {
            v9 = v13;
          }

          else
          {
            v9 = v13 + 1;
          }
        }
      }

      else
      {
        if (a3 != 544)
        {
          goto LABEL_59;
        }

        v9 = 26;
        *a8 = 26;
        if (self->_reverseCoefficients)
        {
          v12 = self->_intermediateOutputUnstyledPixelBuffer == 0;
          v13 = 27;
          goto LABEL_66;
        }
      }
    }

LABEL_69:
    v8 = 0;
    goto LABEL_70;
  }

  if (a3 > 54)
  {
    if (a3 > 79)
    {
      if (a3 != 80)
      {
        if (a3 == 110)
        {
          v8 = 0;
          v9 = 46;
          goto LABEL_70;
        }

        goto LABEL_59;
      }

      if (a4 && !a5)
      {
        v8 = 0;
        *a8 = 0;
        v14 = 4;
        goto LABEL_72;
      }

      v8 = 0;
      if (a5)
      {
        v9 = 9;
        goto LABEL_70;
      }

      v11 = 1;
    }

    else
    {
      if (a3 == 55)
      {
        v8 = 0;
        v9 = 45;
        goto LABEL_70;
      }

      if (a3 != 60)
      {
        goto LABEL_59;
      }

      v8 = 0;
      if (!a4)
      {
        v9 = 6;
        goto LABEL_70;
      }

      v11 = 5;
    }

    *a8 = v11;
    v14 = 2;
LABEL_72:
    *a7 = v14;
    if (a6)
    {
      return v8;
    }

    goto LABEL_73;
  }

  if (a3 > 24)
  {
    if (a3 == 25)
    {
      v8 = 0;
      v9 = 44;
      goto LABEL_70;
    }

    if (a3 == 30)
    {
      v8 = 0;
      v9 = 3;
      goto LABEL_70;
    }
  }

  else
  {
    if (a3 == 10)
    {
      v8 = 0;
      v9 = 2;
      goto LABEL_70;
    }

    if (a3 == 20)
    {
      v8 = 0;
      v9 = 4;
      goto LABEL_70;
    }
  }

LABEL_59:
  *a8 = -1;
  v8 = -12780;
  if (a6)
  {
    return v8;
  }

LABEL_73:
  if ((self->_reverseCoefficients || self->_intermediateOutputUnstyledPixelBuffer) && *&self->_ditherNoStyle)
  {
    v15 = *a8;
    if (*a8 > 20)
    {
      if (v15 > 27)
      {
        switch(v15)
        {
          case 28:
            v16 = 41;
            goto LABEL_117;
          case 30:
            v16 = 42;
            goto LABEL_117;
          case 31:
            v16 = 43;
            goto LABEL_117;
        }
      }

      else
      {
        switch(v15)
        {
          case 21:
            v16 = 38;
            goto LABEL_117;
          case 22:
            v16 = 39;
            goto LABEL_117;
          case 27:
            v16 = 40;
            goto LABEL_117;
        }
      }
    }

    else if (v15 > 15)
    {
      switch(v15)
      {
        case 16:
          v16 = 35;
          goto LABEL_117;
        case 18:
          v16 = 36;
          goto LABEL_117;
        case 19:
          v16 = 37;
          goto LABEL_117;
      }
    }

    else
    {
      switch(v15)
      {
        case 13:
          v16 = 32;
          goto LABEL_117;
        case 14:
          v16 = 33;
          goto LABEL_117;
        case 15:
          v16 = 34;
LABEL_117:
          *a8 = v16;
          return v8;
      }
    }

    *a8 = -1;
    return -12780;
  }

  return v8;
}

- (int)_getBlurShaderParameters:(unint64_t)a3 pipelineIndexToUse:(int *)a4
{
  if (a4)
  {
    if (a3 <= 539)
    {
      if (a3 > 29)
      {
        if (a3 == 30)
        {
          result = 0;
          v5 = 50;
          goto LABEL_23;
        }

        if (a3 == 60)
        {
          result = 0;
          v5 = 53;
          goto LABEL_23;
        }
      }

      else
      {
        if (a3 == 10)
        {
          result = 0;
          v5 = 49;
          goto LABEL_23;
        }

        if (a3 == 20)
        {
          result = 0;
          v5 = 52;
          goto LABEL_23;
        }
      }
    }

    else if (a3 <= 545)
    {
      if (a3 == 540)
      {
        result = 0;
        v5 = 51;
        goto LABEL_23;
      }

      if (a3 == 543)
      {
        result = 0;
        v5 = 54;
        goto LABEL_23;
      }
    }

    else
    {
      switch(a3)
      {
        case 0x222uLL:
          result = 0;
          v5 = 57;
          goto LABEL_23;
        case 0x24CuLL:
          result = 0;
          v5 = 55;
          goto LABEL_23;
        case 0x24DuLL:
          result = 0;
          v5 = 56;
LABEL_23:
          *a4 = v5;
          return result;
      }
    }

    *a4 = -1;
    return -12780;
  }

  else
  {
    [affineGPUMetal _getBlurShaderParameters:pipelineIndexToUse:];
    return -12780;
  }
}

- (int)_getBlurDeltaMapBordersShaderParameters:(unint64_t)a3 pipelineIndexToUse:(int *)a4
{
  if (a4)
  {
    switch(a3)
    {
      case 0x222uLL:
        result = 0;
        v5 = 60;
        goto LABEL_8;
      case 0x21FuLL:
        result = 0;
        v5 = 59;
        goto LABEL_8;
      case 0x21CuLL:
        result = 0;
        v5 = 58;
LABEL_8:
        *a4 = v5;
        return result;
    }

    *a4 = -1;
    return -12780;
  }

  else
  {
    [affineGPUMetal _getBlurDeltaMapBordersShaderParameters:pipelineIndexToUse:];
    return -12780;
  }
}

- (void)_addCommandBufferHandler:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __43__affineGPUMetal__addCommandBufferHandler___block_invoke;
  v5[3] = &unk_550B0;
  objc_copyWeak(&v6, &location);
  [v4 addCompletedHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (id)_allocatePyramidWithPixelFormat:(unint64_t)a3 bottomLevelWidth:(unint64_t)a4 bottomLevelHeight:(unint64_t)a5 scaleFactor:(unint64_t)a6 includeBottomLevel:(BOOL)a7 minimumDimension:(unint64_t)a8
{
  v14 = objc_alloc_init(NSMutableArray);
  if (v14)
  {
    if (a6)
    {
      if (!a7)
      {
        a4 = (a6 - 1 + a4) / a6;
        a5 = (a6 - 1 + a5) / a6;
      }

      if (a4 >= a5)
      {
        v15 = a5;
      }

      else
      {
        v15 = a4;
      }

      if (v15 < a8)
      {
LABEL_16:
        v22 = v14;
        goto LABEL_17;
      }

      v16 = a6 - 1;
      while (1)
      {
        v17 = [MTLTextureDescriptor texture2DDescriptorWithPixelFormat:a3 width:a4 height:a5 mipmapped:0];
        v18 = v17;
        if (!v17)
        {
          [affineGPUMetal _allocatePyramidWithPixelFormat:bottomLevelWidth:bottomLevelHeight:scaleFactor:includeBottomLevel:minimumDimension:];
          goto LABEL_22;
        }

        [v17 setUsage:23];
        v19 = [(FigMetalContext *)self->_metalContext device];
        v20 = [v19 newTextureWithDescriptor:v18];

        if (!v20)
        {
          break;
        }

        [v14 addObject:v20];
        a4 = (v16 + a4) / a6;
        a5 = (v16 + a5) / a6;
        if (a4 >= a5)
        {
          v21 = a5;
        }

        else
        {
          v21 = a4;
        }

        if (v21 < a8)
        {
          goto LABEL_16;
        }
      }

      [affineGPUMetal _allocatePyramidWithPixelFormat:bottomLevelWidth:bottomLevelHeight:scaleFactor:includeBottomLevel:minimumDimension:];
LABEL_22:
    }

    else
    {
      [affineGPUMetal _allocatePyramidWithPixelFormat:bottomLevelWidth:bottomLevelHeight:scaleFactor:includeBottomLevel:minimumDimension:];
    }
  }

  else
  {
    [affineGPUMetal _allocatePyramidWithPixelFormat:bottomLevelWidth:bottomLevelHeight:scaleFactor:includeBottomLevel:minimumDimension:];
  }

  v22 = 0;
LABEL_17:

  return v22;
}

- (int)_allocateSemanticStyleColorCubeTextures
{
  v3 = objc_opt_new();
  v4 = v3;
  if (!v3)
  {
    [affineGPUMetal _allocateSemanticStyleColorCubeTextures];
LABEL_9:
    v11 = -12786;
    goto LABEL_5;
  }

  [v3 setTextureType:2];
  [v4 setHeight:1024];
  [v4 setWidth:32];
  [v4 setPixelFormat:70];
  [v4 setUsage:7];
  v5 = [(FigMetalContext *)self->_metalContext device];
  v6 = [v5 newTextureWithDescriptor:v4];
  segmentationMask = self->_segmentationMask;
  self->_segmentationMask = v6;

  if (!self->_segmentationMask)
  {
    [affineGPUMetal _allocateSemanticStyleColorCubeTextures];
    goto LABEL_9;
  }

  v8 = [(FigMetalContext *)self->_metalContext device];
  v9 = [v8 newTextureWithDescriptor:v4];
  bgCubeTexture = self->_bgCubeTexture;
  self->_bgCubeTexture = v9;

  if (!self->_bgCubeTexture)
  {
    [affineGPUMetal _allocateSemanticStyleColorCubeTextures];
    goto LABEL_9;
  }

  v11 = 0;
LABEL_5:

  return v11;
}

- (int)updateCubesIfNeeded
{
  if ((self->_bgCubeTexture && self->_segmentationMask || ([(affineGPUMetal *)self _allocateSemanticStyleColorCubeTextures], self->_bgCubeTexture)) && self->_segmentationMask)
  {
    v3 = [(NSData *)self->_backgroundColorCube bytes];
    if (v3)
    {
      v4 = v3;
      if (self->_bgCubePtr != v3)
      {
        bgCubeTexture = self->_bgCubeTexture;
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = xmmword_43910;
        v13 = 1;
        [(MTLTexture *)bgCubeTexture replaceRegion:&v9 mipmapLevel:0 slice:0 withBytes:v4 bytesPerRow:128 bytesPerImage:0];
        self->_bgCubePtr = v4;
      }
    }

    v6 = [self->_fgCubePtr bytes];
    result = 0;
    if (v6)
    {
      if (*&self->_srlFixOn != v6)
      {
        segmentationMask = self->_segmentationMask;
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = xmmword_43910;
        v13 = 1;
        [(__CVBuffer *)segmentationMask replaceRegion:&v9 mipmapLevel:0 slice:0 withBytes:v6 bytesPerRow:128 bytesPerImage:0];
        result = 0;
        *&self->_srlFixOn = v6;
      }
    }
  }

  else
  {
    [(affineGPUMetal *)&v9 updateCubesIfNeeded];
    return v9;
  }

  return result;
}

- (int)_duplicateBottomRowsOnPixelBuffer:(__CVBuffer *)a3
{
  extraRowsOnBottom = 0;
  if (self->_pipelineComputeStates[0] && *(&self->_P3ToBT2020ConversionMethod + 4) == 1)
  {
    v4 = a3;
    if (!a3)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_7();
      FigDebugAssert3();
      return v4;
    }

    CVPixelBufferGetExtendedPixels(a3, 0, 0, 0, &extraRowsOnBottom);
    if (CVPixelBufferGetHeight(v4) == 1080 && extraRowsOnBottom == 8)
    {
      if (CVPixelBufferGetPixelFormatType(v4) == 875704438 || CVPixelBufferGetPixelFormatType(v4) == 875704422)
      {
        IOSurface = CVPixelBufferGetIOSurface(v4);
        if (!IOSurface)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_7();
          FigDebugAssert3();
          LODWORD(v4) = -12782;
          return v4;
        }

        v7 = IOSurface;
        v8 = [(FigMetalContext *)self->_metalContext device];
        v9 = [v8 newBufferWithIOSurface:v7];

        if (!v9)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_7();
          FigDebugAssert3();
          LODWORD(v4) = -12786;
          return v4;
        }

        v20 = 0x43800000437;
        OffsetOfPlane = IOSurfaceGetOffsetOfPlane();
        v21 = OffsetOfPlane - IOSurfaceGetOffsetOfPlane();
        BytesPerRowOfPlane = IOSurfaceGetBytesPerRowOfPlane(v7, 0);
        v11 = [(FigMetalContext *)self->_metalContext commandQueue];
        v12 = [v11 commandBuffer];

        if (!v12)
        {
          OUTLINED_FUNCTION_2();
          OUTLINED_FUNCTION_4_1();
          FigDebugAssert3();
          OUTLINED_FUNCTION_2();
          OUTLINED_FUNCTION_5_1();
          LODWORD(v4) = FigSignalErrorAtGM();

          return v4;
        }

        v13 = [v12 computeCommandEncoder];
        if (!v13)
        {
          OUTLINED_FUNCTION_2();
          OUTLINED_FUNCTION_4_1();
          FigDebugAssert3();
          OUTLINED_FUNCTION_2();
          OUTLINED_FUNCTION_5_1();
          LODWORD(v4) = FigSignalErrorAtGM();

          return v4;
        }

        v14 = v13;
        [v13 setComputePipelineState:self->_pipelineComputeStates[0]];
        [v14 setBuffer:v9 offset:0 atIndex:0];
        [v14 setBytes:&v20 length:16 atIndex:1];
        v18 = ((CVPixelBufferGetWidth(v4) >> 1) + 31) >> 5;
        v19 = vdupq_n_s64(1uLL);
        v16 = xmmword_43900;
        v17 = 1;
        [v14 dispatchThreadgroups:&v18 threadsPerThreadgroup:&v16];
        [v14 endEncoding];
        [(affineGPUMetal *)self _addCommandBufferHandler:v12];
        [v12 commit];
        CVBufferSetAttachment(v4, kCVPixelBufferExtendedPixelsFilledKey, kCFBooleanTrue, kCVAttachmentMode_ShouldNotPropagate);
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_7();
        FigDebugAssert3();
      }
    }
  }

  LODWORD(v4) = 0;
  return v4;
}

- (void)initWithMetalContext:.cold.1()
{
  OUTLINED_FUNCTION_21();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_0();
  FigDebugAssert3();
}

- (void)initWithMetalContext:.cold.2()
{
  OUTLINED_FUNCTION_21();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_0();
  FigDebugAssert3();
}

- (void)initWithMetalContext:.cold.3()
{
  OUTLINED_FUNCTION_21();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_0();
  FigDebugAssert3();
}

- (void)initWithMetalContext:(void *)a1 .cold.4(void *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
}

- (uint64_t)initWithMetalContext:.cold.5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (void)initWithMetalContext:(void *)a1 .cold.6(void *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
}

- (uint64_t)setTransformsArray:transforms3x3:transformStrides:inputSize:outputSize:pixelBufferValidRect:isQuadraSensor:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)setTransformsArray:transforms3x3:transformStrides:inputSize:outputSize:pixelBufferValidRect:isQuadraSensor:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)setTransformsArray:transforms3x3:transformStrides:inputSize:outputSize:pixelBufferValidRect:isQuadraSensor:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)setTransformsArray:transforms3x3:transformStrides:inputSize:outputSize:pixelBufferValidRect:isQuadraSensor:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)setTransformsArray:transforms3x3:transformStrides:inputSize:outputSize:pixelBufferValidRect:isQuadraSensor:.cold.5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)setTransformsArray:transforms3x3:transformStrides:inputSize:outputSize:pixelBufferValidRect:isQuadraSensor:.cold.6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)setTransformsArray:transforms3x3:transformStrides:inputSize:outputSize:pixelBufferValidRect:isQuadraSensor:.cold.7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)setTransformsArray:transforms3x3:transformStrides:inputSize:outputSize:pixelBufferValidRect:isQuadraSensor:.cold.8()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)setTransformsArray:transforms3x3:transformStrides:inputSize:outputSize:pixelBufferValidRect:isQuadraSensor:.cold.9()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)setTransformsArray:transforms3x3:transformStrides:inputSize:outputSize:pixelBufferValidRect:isQuadraSensor:.cold.10()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)setTransformsArray:transforms3x3:transformStrides:inputSize:outputSize:pixelBufferValidRect:isQuadraSensor:.cold.11()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)setTransformsArray:transforms3x3:transformStrides:inputSize:outputSize:pixelBufferValidRect:isQuadraSensor:.cold.12()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)setTransformsArray:transforms3x3:transformStrides:inputSize:outputSize:pixelBufferValidRect:isQuadraSensor:.cold.13()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)setTransformsArray:transforms3x3:transformStrides:inputSize:outputSize:pixelBufferValidRect:isQuadraSensor:.cold.14()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)setRenderMethod:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_0();
  return FigDebugAssert3();
}

- (uint64_t)setRenderMethod:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_0();
  return FigDebugAssert3();
}

- (uint64_t)renderWithPixelBuffer:metadata:pixelBufferValidRect:ltmLUT:outputPixelBuffer:isAttachmentRendering:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)renderWithPixelBuffer:metadata:pixelBufferValidRect:ltmLUT:outputPixelBuffer:isAttachmentRendering:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)renderWithPixelBuffer:metadata:pixelBufferValidRect:ltmLUT:outputPixelBuffer:isAttachmentRendering:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)renderWithPixelBuffer:metadata:pixelBufferValidRect:ltmLUT:outputPixelBuffer:isAttachmentRendering:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (void)renderWithPixelBuffer:(void *)a3 metadata:(void *)a4 pixelBufferValidRect:ltmLUT:outputPixelBuffer:isAttachmentRendering:.cold.5(uint64_t a1, void *a2, void *a3, void *a4)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_0();
  FigDebugAssert3();
}

- (void)renderWithPixelBuffer:(void *)a1 metadata:(void *)a2 pixelBufferValidRect:ltmLUT:outputPixelBuffer:isAttachmentRendering:.cold.6(void *a1, void *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
}

- (uint64_t)renderWithPixelBuffer:metadata:pixelBufferValidRect:ltmLUT:outputPixelBuffer:isAttachmentRendering:.cold.7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)renderWithPixelBuffer:(_DWORD *)a1 metadata:pixelBufferValidRect:ltmLUT:outputPixelBuffer:isAttachmentRendering:.cold.8(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)renderWithPixelBuffer:metadata:pixelBufferValidRect:ltmLUT:outputPixelBuffer:isAttachmentRendering:.cold.9()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)renderWithPixelBuffer:metadata:pixelBufferValidRect:ltmLUT:outputPixelBuffer:isAttachmentRendering:.cold.10()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)renderWithPixelBuffer:metadata:pixelBufferValidRect:ltmLUT:outputPixelBuffer:isAttachmentRendering:.cold.11()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)renderWithPixelBuffer:metadata:pixelBufferValidRect:ltmLUT:outputPixelBuffer:isAttachmentRendering:.cold.12()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)renderWithPixelBuffer:metadata:pixelBufferValidRect:ltmLUT:outputPixelBuffer:isAttachmentRendering:.cold.13()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)renderWithPixelBuffer:metadata:pixelBufferValidRect:ltmLUT:outputPixelBuffer:isAttachmentRendering:.cold.14()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)renderWithPixelBuffer:metadata:pixelBufferValidRect:ltmLUT:outputPixelBuffer:isAttachmentRendering:.cold.15()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)renderWithSampleBuffer:pixelBufferValidRect:ltmLUT:outputPixelBuffer:isAttachmentRendering:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_0();
  return FigDebugAssert3();
}

- (void)_renderBlurInputTextures:inputTexturesCount:outputTextures:.cold.1()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_4_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_5_1();
  *v3 = FigSignalErrorAtGM();
}

- (void)_renderBlurInputTextures:inputTexturesCount:outputTextures:.cold.2()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_4_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_5_1();
  *v3 = FigSignalErrorAtGM();
}

- (void)_renderBlurInputTextures:inputTexturesCount:outputTextures:.cold.3()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_4_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_5_1();
  *v3 = FigSignalErrorAtGM();
}

- (void)_renderBlurInputTextures:(void *)a3 inputTexturesCount:(void *)a4 outputTextures:.cold.4(void *a1, void *a2, void *a3, void *a4)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
}

- (uint64_t)_renderBlurInputTextures:(_DWORD *)a1 inputTexturesCount:outputTextures:.cold.5(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_renderBlurInputTextures:inputTexturesCount:outputTextures:.cold.6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)_renderBlurInputTextures:inputTexturesCount:outputTextures:.cold.7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)_renderBlurInputTextures:inputTexturesCount:outputTextures:.cold.8()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)_renderBlurInputTextures:inputTexturesCount:outputTextures:.cold.9()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)configureBlurWith:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_0();
  return FigDebugAssert3();
}

- (uint64_t)configureBlurWith:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_0();
  return FigDebugAssert3();
}

- (uint64_t)configureBlurWith:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_0();
  return FigDebugAssert3();
}

- (uint64_t)configureBlurWith:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_0();
  return FigDebugAssert3();
}

- (uint64_t)configureBlurWith:.cold.5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_0();
  return FigDebugAssert3();
}

- (uint64_t)configureBlurWith:.cold.6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_0();
  return FigDebugAssert3();
}

- (uint64_t)configureBlurWith:.cold.7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_0();
  return FigDebugAssert3();
}

- (uint64_t)configureBlurWith:.cold.8()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_0();
  return FigDebugAssert3();
}

- (uint64_t)configureBlurWith:.cold.9()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)configureBlurWith:.cold.10()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)_initTransformShaders
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_0();
  return FigDebugAssert3();
}

- (uint64_t)_initBlurShaders
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_0();
  return FigDebugAssert3();
}

- (uint64_t)_initComputeShaders
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_createRenderPipelinesForShaders:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)_createRenderPipelinesForShaders:(_DWORD *)a1 .cold.2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_compileShader:fragment:pixelFormat:deltaMapPixelFormat:unstyledPixelFormat:constants:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_1();

  return FigSignalErrorAtGM();
}

- (uint64_t)_compileShader:fragment:pixelFormat:deltaMapPixelFormat:unstyledPixelFormat:constants:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_1();

  return FigSignalErrorAtGM();
}

- (uint64_t)_compileShader:fragment:pixelFormat:deltaMapPixelFormat:unstyledPixelFormat:constants:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_1();

  return FigSignalErrorAtGM();
}

- (uint64_t)_compileShader:fragment:pixelFormat:deltaMapPixelFormat:unstyledPixelFormat:constants:.cold.4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_1();

  return FigSignalErrorAtGM();
}

- (uint64_t)_compileShader:fragment:pixelFormat:deltaMapPixelFormat:unstyledPixelFormat:constants:.cold.5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)_compileShader:fragment:pixelFormat:deltaMapPixelFormat:unstyledPixelFormat:constants:.cold.6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)_compileShader:fragment:pixelFormat:deltaMapPixelFormat:unstyledPixelFormat:constants:.cold.7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (void)_cachedTexturesFromPixelBuffer:isTwoPass:isOptimized:textures:.cold.1()
{
  OUTLINED_FUNCTION_21();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_0();
  FigDebugAssert3();
}

- (uint64_t)_cachedTexturesFromPixelBuffer:isTwoPass:isOptimized:textures:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)_cachedTexturesFromPixelBuffer:isTwoPass:isOptimized:textures:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)_cachedTexturesFromPixelBuffer:isTwoPass:isOptimized:textures:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)_cachedTexturesFromPixelBuffer:isTwoPass:isOptimized:textures:.cold.5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)_cachedTexturesFromPixelBuffer:isTwoPass:isOptimized:textures:.cold.6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)_cachedTexturesFromPixelBuffer:isTwoPass:isOptimized:textures:.cold.7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)_getTransformShaderParameters:isLuma:isRGB:isAttachment:pixelRatio:pipelineIndexToUse:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)_getTransformShaderParameters:isLuma:isRGB:isAttachment:pixelRatio:pipelineIndexToUse:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)_getBlurShaderParameters:pipelineIndexToUse:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)_getBlurDeltaMapBordersShaderParameters:pipelineIndexToUse:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)_allocatePyramidWithPixelFormat:bottomLevelWidth:bottomLevelHeight:scaleFactor:includeBottomLevel:minimumDimension:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)_allocatePyramidWithPixelFormat:bottomLevelWidth:bottomLevelHeight:scaleFactor:includeBottomLevel:minimumDimension:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)_allocatePyramidWithPixelFormat:bottomLevelWidth:bottomLevelHeight:scaleFactor:includeBottomLevel:minimumDimension:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)_allocatePyramidWithPixelFormat:bottomLevelWidth:bottomLevelHeight:scaleFactor:includeBottomLevel:minimumDimension:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)_allocateSemanticStyleColorCubeTextures
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)updateCubesIfNeeded
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

@end