@interface PTSpillCorrection
- (PTSpillCorrection)initWithMetalContext:(id)a3 refinementWidth:(unint64_t)a4 refinementHeight:(unint64_t)a5 refinementSteps:(unint64_t)a6 minFilterKernelWidth:(unint64_t)a7 minFilterKernelHeight:(unint64_t)a8 maxFilterKernelWidth:(unint64_t)a9 maxFilterKernelHeight:(unint64_t)a10 gaussianBlurSigma:(float)a11;
- (int)encodeToCommandBuffer:(id)a3 lumaTexture:(id)a4 chromaTexture:(id)a5 normChromaOffset:(id)a6 segmentationTexture:;
- (int)encodeToCommandBuffer:(id)a3 rgbTexture:(id)a4 segmentationTexture:(id)a5;
- (int)encodeToCommandBuffer:(id)a3 segmentationTexture:(id)a4;
- (void)diffusion:(id)a3;
- (void)initConstraints:(id)a3;
@end

@implementation PTSpillCorrection

- (PTSpillCorrection)initWithMetalContext:(id)a3 refinementWidth:(unint64_t)a4 refinementHeight:(unint64_t)a5 refinementSteps:(unint64_t)a6 minFilterKernelWidth:(unint64_t)a7 minFilterKernelHeight:(unint64_t)a8 maxFilterKernelWidth:(unint64_t)a9 maxFilterKernelHeight:(unint64_t)a10 gaussianBlurSigma:(float)a11
{
  v19 = a3;
  v221.receiver = self;
  v221.super_class = PTSpillCorrection;
  v20 = [(PTSpillCorrection *)&v221 init];
  v21 = v20;
  if (!v20)
  {
    goto LABEL_63;
  }

  objc_storeStrong(&v20->_metalContext, a3);
  v21->_refinementSteps = a6;
  v22 = [v19 computePipelineStateFor:@"PTSpillCorrection_initConstraintsPart1" withConstants:0];
  initConstraintsPart1 = v21->_initConstraintsPart1;
  v21->_initConstraintsPart1 = v22;

  if (!v21->_initConstraintsPart1)
  {
    v86 = _PTLogSystem();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      [PTSpillCorrection initWithMetalContext:v86 refinementWidth:v87 refinementHeight:v88 refinementSteps:v89 minFilterKernelWidth:v90 minFilterKernelHeight:v91 maxFilterKernelWidth:v92 maxFilterKernelHeight:v93 gaussianBlurSigma:?];
    }

    goto LABEL_62;
  }

  v24 = [v19 computePipelineStateFor:@"PTSpillCorrection_initConstraintsPart2" withConstants:0];
  initConstraintsPart2 = v21->_initConstraintsPart2;
  v21->_initConstraintsPart2 = v24;

  if (!v21->_initConstraintsPart2)
  {
    v86 = _PTLogSystem();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      [PTSpillCorrection initWithMetalContext:v86 refinementWidth:v94 refinementHeight:v95 refinementSteps:v96 minFilterKernelWidth:v97 minFilterKernelHeight:v98 maxFilterKernelWidth:v99 maxFilterKernelHeight:v100 gaussianBlurSigma:?];
    }

    goto LABEL_62;
  }

  v26 = [v19 computePipelineStateFor:@"PTSpillCorrection_initDiffusion" withConstants:0];
  initDiffusion = v21->_initDiffusion;
  v21->_initDiffusion = v26;

  if (!v21->_initDiffusion)
  {
    v86 = _PTLogSystem();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      [PTSpillCorrection initWithMetalContext:v86 refinementWidth:v101 refinementHeight:v102 refinementSteps:v103 minFilterKernelWidth:v104 minFilterKernelHeight:v105 maxFilterKernelWidth:v106 maxFilterKernelHeight:v107 gaussianBlurSigma:?];
    }

    goto LABEL_62;
  }

  v28 = [v19 computePipelineStateFor:@"PTSpillCorrection_constrainDiffusion" withConstants:0];
  constrainDiffusion = v21->_constrainDiffusion;
  v21->_constrainDiffusion = v28;

  if (!v21->_constrainDiffusion)
  {
    v86 = _PTLogSystem();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      [PTSpillCorrection initWithMetalContext:v86 refinementWidth:v108 refinementHeight:v109 refinementSteps:v110 minFilterKernelWidth:v111 minFilterKernelHeight:v112 maxFilterKernelWidth:v113 maxFilterKernelHeight:v114 gaussianBlurSigma:?];
    }

    goto LABEL_62;
  }

  v30 = [v19 computePipelineStateFor:@"PTSpillCorrection_computeUpsamplingCoefficients" withConstants:0];
  computeUpsamplingCoefficients = v21->_computeUpsamplingCoefficients;
  v21->_computeUpsamplingCoefficients = v30;

  if (!v21->_computeUpsamplingCoefficients)
  {
    v86 = _PTLogSystem();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      [PTSpillCorrection initWithMetalContext:v86 refinementWidth:v115 refinementHeight:v116 refinementSteps:v117 minFilterKernelWidth:v118 minFilterKernelHeight:v119 maxFilterKernelWidth:v120 maxFilterKernelHeight:v121 gaussianBlurSigma:?];
    }

    goto LABEL_62;
  }

  v32 = [v19 computePipelineStateFor:@"PTSpillCorrection_averageUpsamplingCoefficients" withConstants:0];
  averageUpsamplingCoefficients = v21->_averageUpsamplingCoefficients;
  v21->_averageUpsamplingCoefficients = v32;

  if (!v21->_averageUpsamplingCoefficients)
  {
    v86 = _PTLogSystem();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      [PTSpillCorrection initWithMetalContext:v86 refinementWidth:v122 refinementHeight:v123 refinementSteps:v124 minFilterKernelWidth:v125 minFilterKernelHeight:v126 maxFilterKernelWidth:v127 maxFilterKernelHeight:v128 gaussianBlurSigma:?];
    }

    goto LABEL_62;
  }

  v34 = [v19 computePipelineStateFor:@"PTSpillCorrection_applyUpsamplingCoefficients" withConstants:0];
  applyUpsamplingCoefficients = v21->_applyUpsamplingCoefficients;
  v21->_applyUpsamplingCoefficients = v34;

  if (!v21->_applyUpsamplingCoefficients)
  {
    v86 = _PTLogSystem();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      [PTSpillCorrection initWithMetalContext:v86 refinementWidth:v129 refinementHeight:v130 refinementSteps:v131 minFilterKernelWidth:v132 minFilterKernelHeight:v133 maxFilterKernelWidth:v134 maxFilterKernelHeight:v135 gaussianBlurSigma:?];
    }

    goto LABEL_62;
  }

  v36 = [v19 textureUtil];
  v37 = [v36 createWithWidth:a4 height:a5 pixelFormat:115];
  guideTexture = v21->_guideTexture;
  v21->_guideTexture = v37;

  if (!v21->_guideTexture)
  {
    v86 = _PTLogSystem();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      [PTSpillCorrection initWithMetalContext:v86 refinementWidth:v136 refinementHeight:v137 refinementSteps:v138 minFilterKernelWidth:v139 minFilterKernelHeight:v140 maxFilterKernelWidth:v141 maxFilterKernelHeight:v142 gaussianBlurSigma:?];
    }

    goto LABEL_62;
  }

  v39 = [v19 textureUtil];
  v40 = [v39 createWithWidth:a4 height:a5 pixelFormat:115];
  diffusionTexture = v21->_diffusionTexture;
  v21->_diffusionTexture = v40;

  if (!v21->_diffusionTexture)
  {
    v86 = _PTLogSystem();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      [PTSpillCorrection initWithMetalContext:v86 refinementWidth:v143 refinementHeight:v144 refinementSteps:v145 minFilterKernelWidth:v146 minFilterKernelHeight:v147 maxFilterKernelWidth:v148 maxFilterKernelHeight:v149 gaussianBlurSigma:?];
    }

    goto LABEL_62;
  }

  v42 = [v19 textureUtil];
  v43 = [v42 createWithWidth:a4 height:a5 pixelFormat:115];
  constraintsTexture = v21->_constraintsTexture;
  v21->_constraintsTexture = v43;

  if (!v21->_constraintsTexture)
  {
    v86 = _PTLogSystem();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      [PTSpillCorrection initWithMetalContext:v86 refinementWidth:v150 refinementHeight:v151 refinementSteps:v152 minFilterKernelWidth:v153 minFilterKernelHeight:v154 maxFilterKernelWidth:v155 maxFilterKernelHeight:v156 gaussianBlurSigma:?];
    }

    goto LABEL_62;
  }

  v45 = [v19 textureUtil];
  v46 = [v45 createWithWidth:a4 height:a5 pixelFormat:115];
  coeffXTexture = v21->_coeffXTexture;
  v21->_coeffXTexture = v46;

  if (!v21->_coeffXTexture)
  {
    v86 = _PTLogSystem();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      [PTSpillCorrection initWithMetalContext:v86 refinementWidth:v157 refinementHeight:v158 refinementSteps:v159 minFilterKernelWidth:v160 minFilterKernelHeight:v161 maxFilterKernelWidth:v162 maxFilterKernelHeight:v163 gaussianBlurSigma:?];
    }

    goto LABEL_62;
  }

  v48 = [v19 textureUtil];
  v49 = [v48 createWithWidth:a4 height:a5 pixelFormat:115];
  coeffYTexture = v21->_coeffYTexture;
  v21->_coeffYTexture = v49;

  if (!v21->_coeffYTexture)
  {
    v86 = _PTLogSystem();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      [PTSpillCorrection initWithMetalContext:v86 refinementWidth:v164 refinementHeight:v165 refinementSteps:v166 minFilterKernelWidth:v167 minFilterKernelHeight:v168 maxFilterKernelWidth:v169 maxFilterKernelHeight:v170 gaussianBlurSigma:?];
    }

    goto LABEL_62;
  }

  v51 = [v19 textureUtil];
  v52 = [v51 createWithWidth:a4 height:a5 pixelFormat:115];
  coeffZTexture = v21->_coeffZTexture;
  v21->_coeffZTexture = v52;

  if (!v21->_coeffZTexture)
  {
    v86 = _PTLogSystem();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      [PTSpillCorrection initWithMetalContext:v86 refinementWidth:v171 refinementHeight:v172 refinementSteps:v173 minFilterKernelWidth:v174 minFilterKernelHeight:v175 maxFilterKernelWidth:v176 maxFilterKernelHeight:v177 gaussianBlurSigma:?];
    }

    goto LABEL_62;
  }

  v54 = [v19 textureUtil];
  v55 = [v54 createWithWidth:a4 height:a5 pixelFormat:115];
  coeffXFilteredTexture = v21->_coeffXFilteredTexture;
  v21->_coeffXFilteredTexture = v55;

  if (!v21->_coeffXFilteredTexture)
  {
    v86 = _PTLogSystem();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      [PTSpillCorrection initWithMetalContext:v86 refinementWidth:v178 refinementHeight:v179 refinementSteps:v180 minFilterKernelWidth:v181 minFilterKernelHeight:v182 maxFilterKernelWidth:v183 maxFilterKernelHeight:v184 gaussianBlurSigma:?];
    }

    goto LABEL_62;
  }

  v57 = [v19 textureUtil];
  v58 = [v57 createWithWidth:a4 height:a5 pixelFormat:115];
  coeffYFilteredTexture = v21->_coeffYFilteredTexture;
  v21->_coeffYFilteredTexture = v58;

  if (!v21->_coeffYFilteredTexture)
  {
    v86 = _PTLogSystem();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      [PTSpillCorrection initWithMetalContext:v86 refinementWidth:v185 refinementHeight:v186 refinementSteps:v187 minFilterKernelWidth:v188 minFilterKernelHeight:v189 maxFilterKernelWidth:v190 maxFilterKernelHeight:v191 gaussianBlurSigma:?];
    }

    goto LABEL_62;
  }

  v60 = [v19 textureUtil];
  v61 = [v60 createWithWidth:a4 height:a5 pixelFormat:115];
  coeffZFilteredTexture = v21->_coeffZFilteredTexture;
  v21->_coeffZFilteredTexture = v61;

  if (!v21->_coeffZFilteredTexture)
  {
    v86 = _PTLogSystem();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      [PTSpillCorrection initWithMetalContext:v86 refinementWidth:v192 refinementHeight:v193 refinementSteps:v194 minFilterKernelWidth:v195 minFilterKernelHeight:v196 maxFilterKernelWidth:v197 maxFilterKernelHeight:v198 gaussianBlurSigma:?];
    }

    goto LABEL_62;
  }

  v63 = [v19 textureUtil];
  v64 = [v63 createWithWidth:a4 height:a5 pixelFormat:25];
  segmentationTexture = v21->_segmentationTexture;
  v21->_segmentationTexture = v64;

  if (!v21->_segmentationTexture)
  {
    v86 = _PTLogSystem();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      [PTSpillCorrection initWithMetalContext:v86 refinementWidth:v199 refinementHeight:v200 refinementSteps:v201 minFilterKernelWidth:v202 minFilterKernelHeight:v203 maxFilterKernelWidth:v204 maxFilterKernelHeight:v205 gaussianBlurSigma:?];
    }

    goto LABEL_62;
  }

  v66 = [v19 textureUtil];
  v67 = [v66 createWithWidth:a4 height:a5 pixelFormat:25];
  segmentationMinTexture = v21->_segmentationMinTexture;
  v21->_segmentationMinTexture = v67;

  if (!v21->_segmentationMinTexture)
  {
    v86 = _PTLogSystem();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      [PTSpillCorrection initWithMetalContext:v86 refinementWidth:v206 refinementHeight:v207 refinementSteps:v208 minFilterKernelWidth:v209 minFilterKernelHeight:v210 maxFilterKernelWidth:v211 maxFilterKernelHeight:v212 gaussianBlurSigma:?];
    }

    goto LABEL_62;
  }

  v69 = [v19 textureUtil];
  v70 = [v69 createWithWidth:a4 height:a5 pixelFormat:25];
  segmentationMaxTexture = v21->_segmentationMaxTexture;
  v21->_segmentationMaxTexture = v70;

  if (!v21->_segmentationMaxTexture)
  {
    v86 = _PTLogSystem();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      [PTSpillCorrection initWithMetalContext:v86 refinementWidth:v213 refinementHeight:v214 refinementSteps:v215 minFilterKernelWidth:v216 minFilterKernelHeight:v217 maxFilterKernelWidth:v218 maxFilterKernelHeight:v219 gaussianBlurSigma:?];
    }

LABEL_62:

LABEL_63:
    v85 = 0;
    goto LABEL_64;
  }

  if ((PTDefaultsPublicGetBool(@"harvesting.enabled", 0) & 1) == 0)
  {
    v72 = objc_alloc(MEMORY[0x277CD74D0]);
    v73 = [v19 device];
    v74 = [v72 initWithDevice:v73 kernelWidth:a7 kernelHeight:a8];
    minFilter = v21->_minFilter;
    v21->_minFilter = v74;

    v76 = objc_alloc(MEMORY[0x277CD74C8]);
    v77 = [v19 device];
    v78 = [v76 initWithDevice:v77 kernelWidth:a9 kernelHeight:a10];
    maxFilter = v21->_maxFilter;
    v21->_maxFilter = v78;

    v80 = objc_alloc(MEMORY[0x277CD7520]);
    v81 = [v19 device];
    *&v82 = a11;
    v83 = [v80 initWithDevice:v81 sigma:v82];
    gaussianBlur = v21->_gaussianBlur;
    v21->_gaussianBlur = v83;
  }

  v85 = v21;
LABEL_64:

  return v85;
}

- (int)encodeToCommandBuffer:(id)a3 rgbTexture:(id)a4 segmentationTexture:(id)a5
{
  metalContext = self->_metalContext;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [(PTMetalContext *)metalContext textureUtil];
  [v12 copy:v11 inTex:v10 outTex:self->_guideTexture];

  LODWORD(v10) = [(PTSpillCorrection *)self encodeToCommandBuffer:v11 segmentationTexture:v9];
  return v10;
}

- (int)encodeToCommandBuffer:(id)a3 lumaTexture:(id)a4 chromaTexture:(id)a5 normChromaOffset:(id)a6 segmentationTexture:
{
  metalContext = self->_metalContext;
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [(PTMetalContext *)metalContext textureUtil];
  [v15 resample420To444:v14 inLuma:v13 inChroma:v12 outYUV:self->_guideTexture];

  LODWORD(v12) = [(PTSpillCorrection *)self encodeToCommandBuffer:v14 segmentationTexture:v11];
  return v12;
}

- (int)encodeToCommandBuffer:(id)a3 segmentationTexture:(id)a4
{
  metalContext = self->_metalContext;
  v7 = a4;
  v8 = a3;
  v9 = [(PTMetalContext *)metalContext textureUtil];
  [v9 copy:v8 inTex:v7 outTex:self->_segmentationTexture];

  [(PTSpillCorrection *)self updateFromDefaults];
  [(PTSpillCorrection *)self initConstraints:v8];
  [(PTSpillCorrection *)self diffusion:v8];

  return 0;
}

- (void)initConstraints:(id)a3
{
  minFilter = self->_minFilter;
  segmentationTexture = self->_segmentationTexture;
  segmentationMinTexture = self->_segmentationMinTexture;
  v7 = a3;
  [(MPSImageAreaMin *)minFilter encodeToCommandBuffer:v7 sourceTexture:segmentationTexture destinationTexture:segmentationMinTexture];
  [(MPSImageAreaMax *)self->_maxFilter encodeToCommandBuffer:v7 sourceTexture:self->_segmentationTexture destinationTexture:self->_segmentationMaxTexture];
  v8 = [v7 computeCommandEncoder];
  [v8 setComputePipelineState:self->_initConstraintsPart1];
  [v8 setTexture:self->_guideTexture atIndex:0];
  [v8 setTexture:self->_segmentationMinTexture atIndex:1];
  p_constraintsTexture = &self->_constraintsTexture;
  [v8 setTexture:self->_constraintsTexture atIndex:2];
  v10 = [(MTLTexture *)self->_constraintsTexture width];
  v11 = [(MTLTexture *)self->_constraintsTexture height];
  v17 = v10;
  v18 = v11;
  v19 = 1;
  v15 = xmmword_2244A5230;
  v16 = 1;
  [v8 dispatchThreads:&v17 threadsPerThreadgroup:&v15];
  [v8 endEncoding];

  [(MPSImageGaussianBlur *)self->_gaussianBlur encodeToCommandBuffer:v7 inPlaceTexture:&self->_constraintsTexture fallbackCopyAllocator:0];
  v12 = [v7 computeCommandEncoder];

  [v12 setComputePipelineState:self->_initConstraintsPart2];
  [v12 setTexture:self->_guideTexture atIndex:0];
  [v12 setTexture:self->_segmentationMinTexture atIndex:1];
  [v12 setTexture:self->_segmentationMaxTexture atIndex:2];
  [v12 setTexture:self->_constraintsTexture atIndex:3];
  v13 = [(MTLTexture *)self->_constraintsTexture width];
  v14 = [(MTLTexture *)*p_constraintsTexture height];
  v17 = v13;
  v18 = v14;
  v19 = 1;
  v15 = xmmword_2244A5230;
  v16 = 1;
  [v12 dispatchThreads:&v17 threadsPerThreadgroup:&v15];
  [v12 endEncoding];
}

- (void)diffusion:(id)a3
{
  v4 = a3;
  v5 = [v4 computeCommandEncoder];
  [v5 setComputePipelineState:self->_initDiffusion];
  [v5 setTexture:self->_guideTexture atIndex:0];
  [v5 setTexture:self->_segmentationTexture atIndex:1];
  [v5 setTexture:self->_constraintsTexture atIndex:2];
  [v5 setTexture:self->_diffusionTexture atIndex:3];
  v6 = [(MTLTexture *)self->_diffusionTexture width];
  v7 = [(MTLTexture *)self->_diffusionTexture height];
  v23 = v6;
  v24 = v7;
  v25 = 1;
  v21 = xmmword_2244A5230;
  v22 = 1;
  [v5 dispatchThreads:&v23 threadsPerThreadgroup:&v21];
  [v5 endEncoding];

  if (self->_refinementSteps)
  {
    v8 = 0;
    do
    {
      v9 = [v4 computeCommandEncoder];
      [v9 setComputePipelineState:self->_computeUpsamplingCoefficients];
      [v9 setTexture:self->_guideTexture atIndex:0];
      [v9 setTexture:self->_diffusionTexture atIndex:1];
      [v9 setTexture:self->_coeffXTexture atIndex:2];
      [v9 setTexture:self->_coeffYTexture atIndex:3];
      [v9 setTexture:self->_coeffZTexture atIndex:4];
      v10 = [(MTLTexture *)self->_coeffXTexture width];
      v11 = [(MTLTexture *)self->_coeffXTexture height];
      v23 = v10;
      v24 = v11;
      v25 = 1;
      v21 = xmmword_2244A5230;
      v22 = 1;
      [v9 dispatchThreads:&v23 threadsPerThreadgroup:&v21];
      [v9 endEncoding];

      v12 = [v4 computeCommandEncoder];
      [v12 setComputePipelineState:self->_averageUpsamplingCoefficients];
      [v12 setTexture:self->_coeffXTexture atIndex:0];
      [v12 setTexture:self->_coeffYTexture atIndex:1];
      [v12 setTexture:self->_coeffZTexture atIndex:2];
      [v12 setTexture:self->_coeffXFilteredTexture atIndex:3];
      [v12 setTexture:self->_coeffYFilteredTexture atIndex:4];
      [v12 setTexture:self->_coeffZFilteredTexture atIndex:5];
      v13 = [(MTLTexture *)self->_coeffXTexture width];
      v14 = [(MTLTexture *)self->_coeffXTexture height];
      v23 = v13;
      v24 = v14;
      v25 = 1;
      v21 = xmmword_2244A5230;
      v22 = 1;
      [v12 dispatchThreads:&v23 threadsPerThreadgroup:&v21];
      [v12 endEncoding];

      v15 = [v4 computeCommandEncoder];
      [v15 setComputePipelineState:self->_applyUpsamplingCoefficients];
      [v15 setTexture:self->_guideTexture atIndex:0];
      [v15 setTexture:self->_coeffXFilteredTexture atIndex:1];
      [v15 setTexture:self->_coeffYFilteredTexture atIndex:2];
      [v15 setTexture:self->_coeffZFilteredTexture atIndex:3];
      [v15 setTexture:self->_diffusionTexture atIndex:4];
      v16 = [(MTLTexture *)self->_diffusionTexture width];
      v17 = [(MTLTexture *)self->_diffusionTexture height];
      v23 = v16;
      v24 = v17;
      v25 = 1;
      v21 = xmmword_2244A5230;
      v22 = 1;
      [v15 dispatchThreads:&v23 threadsPerThreadgroup:&v21];
      [v15 endEncoding];

      v18 = [v4 computeCommandEncoder];
      [v18 setComputePipelineState:self->_constrainDiffusion];
      [v18 setTexture:self->_constraintsTexture atIndex:0];
      [v18 setTexture:self->_diffusionTexture atIndex:1];
      v19 = [(MTLTexture *)self->_diffusionTexture width];
      v20 = [(MTLTexture *)self->_diffusionTexture height];
      v23 = v19;
      v24 = v20;
      v25 = 1;
      v21 = xmmword_2244A5230;
      v22 = 1;
      [v18 dispatchThreads:&v23 threadsPerThreadgroup:&v21];
      [v18 endEncoding];

      ++v8;
    }

    while (self->_refinementSteps > v8);
  }
}

@end