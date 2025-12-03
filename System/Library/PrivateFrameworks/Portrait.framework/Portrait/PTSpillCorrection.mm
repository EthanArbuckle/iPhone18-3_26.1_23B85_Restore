@interface PTSpillCorrection
- (PTSpillCorrection)initWithMetalContext:(id)context refinementWidth:(unint64_t)width refinementHeight:(unint64_t)height refinementSteps:(unint64_t)steps minFilterKernelWidth:(unint64_t)kernelWidth minFilterKernelHeight:(unint64_t)kernelHeight maxFilterKernelWidth:(unint64_t)filterKernelWidth maxFilterKernelHeight:(unint64_t)self0 gaussianBlurSigma:(float)self1;
- (int)encodeToCommandBuffer:(id)buffer lumaTexture:(id)texture chromaTexture:(id)chromaTexture normChromaOffset:(id)offset segmentationTexture:;
- (int)encodeToCommandBuffer:(id)buffer rgbTexture:(id)texture segmentationTexture:(id)segmentationTexture;
- (int)encodeToCommandBuffer:(id)buffer segmentationTexture:(id)texture;
- (void)diffusion:(id)diffusion;
- (void)initConstraints:(id)constraints;
@end

@implementation PTSpillCorrection

- (PTSpillCorrection)initWithMetalContext:(id)context refinementWidth:(unint64_t)width refinementHeight:(unint64_t)height refinementSteps:(unint64_t)steps minFilterKernelWidth:(unint64_t)kernelWidth minFilterKernelHeight:(unint64_t)kernelHeight maxFilterKernelWidth:(unint64_t)filterKernelWidth maxFilterKernelHeight:(unint64_t)self0 gaussianBlurSigma:(float)self1
{
  contextCopy = context;
  v221.receiver = self;
  v221.super_class = PTSpillCorrection;
  v20 = [(PTSpillCorrection *)&v221 init];
  v21 = v20;
  if (!v20)
  {
    goto LABEL_63;
  }

  objc_storeStrong(&v20->_metalContext, context);
  v21->_refinementSteps = steps;
  v22 = [contextCopy computePipelineStateFor:@"PTSpillCorrection_initConstraintsPart1" withConstants:0];
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

  v24 = [contextCopy computePipelineStateFor:@"PTSpillCorrection_initConstraintsPart2" withConstants:0];
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

  v26 = [contextCopy computePipelineStateFor:@"PTSpillCorrection_initDiffusion" withConstants:0];
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

  v28 = [contextCopy computePipelineStateFor:@"PTSpillCorrection_constrainDiffusion" withConstants:0];
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

  v30 = [contextCopy computePipelineStateFor:@"PTSpillCorrection_computeUpsamplingCoefficients" withConstants:0];
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

  v32 = [contextCopy computePipelineStateFor:@"PTSpillCorrection_averageUpsamplingCoefficients" withConstants:0];
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

  v34 = [contextCopy computePipelineStateFor:@"PTSpillCorrection_applyUpsamplingCoefficients" withConstants:0];
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

  textureUtil = [contextCopy textureUtil];
  v37 = [textureUtil createWithWidth:width height:height pixelFormat:115];
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

  textureUtil2 = [contextCopy textureUtil];
  v40 = [textureUtil2 createWithWidth:width height:height pixelFormat:115];
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

  textureUtil3 = [contextCopy textureUtil];
  v43 = [textureUtil3 createWithWidth:width height:height pixelFormat:115];
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

  textureUtil4 = [contextCopy textureUtil];
  v46 = [textureUtil4 createWithWidth:width height:height pixelFormat:115];
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

  textureUtil5 = [contextCopy textureUtil];
  v49 = [textureUtil5 createWithWidth:width height:height pixelFormat:115];
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

  textureUtil6 = [contextCopy textureUtil];
  v52 = [textureUtil6 createWithWidth:width height:height pixelFormat:115];
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

  textureUtil7 = [contextCopy textureUtil];
  v55 = [textureUtil7 createWithWidth:width height:height pixelFormat:115];
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

  textureUtil8 = [contextCopy textureUtil];
  v58 = [textureUtil8 createWithWidth:width height:height pixelFormat:115];
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

  textureUtil9 = [contextCopy textureUtil];
  v61 = [textureUtil9 createWithWidth:width height:height pixelFormat:115];
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

  textureUtil10 = [contextCopy textureUtil];
  v64 = [textureUtil10 createWithWidth:width height:height pixelFormat:25];
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

  textureUtil11 = [contextCopy textureUtil];
  v67 = [textureUtil11 createWithWidth:width height:height pixelFormat:25];
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

  textureUtil12 = [contextCopy textureUtil];
  v70 = [textureUtil12 createWithWidth:width height:height pixelFormat:25];
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
    device = [contextCopy device];
    v74 = [v72 initWithDevice:device kernelWidth:kernelWidth kernelHeight:kernelHeight];
    minFilter = v21->_minFilter;
    v21->_minFilter = v74;

    v76 = objc_alloc(MEMORY[0x277CD74C8]);
    device2 = [contextCopy device];
    v78 = [v76 initWithDevice:device2 kernelWidth:filterKernelWidth kernelHeight:filterKernelHeight];
    maxFilter = v21->_maxFilter;
    v21->_maxFilter = v78;

    v80 = objc_alloc(MEMORY[0x277CD7520]);
    device3 = [contextCopy device];
    *&v82 = sigma;
    v83 = [v80 initWithDevice:device3 sigma:v82];
    gaussianBlur = v21->_gaussianBlur;
    v21->_gaussianBlur = v83;
  }

  v85 = v21;
LABEL_64:

  return v85;
}

- (int)encodeToCommandBuffer:(id)buffer rgbTexture:(id)texture segmentationTexture:(id)segmentationTexture
{
  metalContext = self->_metalContext;
  segmentationTextureCopy = segmentationTexture;
  textureCopy = texture;
  bufferCopy = buffer;
  textureUtil = [(PTMetalContext *)metalContext textureUtil];
  [textureUtil copy:bufferCopy inTex:textureCopy outTex:self->_guideTexture];

  LODWORD(textureCopy) = [(PTSpillCorrection *)self encodeToCommandBuffer:bufferCopy segmentationTexture:segmentationTextureCopy];
  return textureCopy;
}

- (int)encodeToCommandBuffer:(id)buffer lumaTexture:(id)texture chromaTexture:(id)chromaTexture normChromaOffset:(id)offset segmentationTexture:
{
  metalContext = self->_metalContext;
  offsetCopy = offset;
  chromaTextureCopy = chromaTexture;
  textureCopy = texture;
  bufferCopy = buffer;
  textureUtil = [(PTMetalContext *)metalContext textureUtil];
  [textureUtil resample420To444:bufferCopy inLuma:textureCopy inChroma:chromaTextureCopy outYUV:self->_guideTexture];

  LODWORD(chromaTextureCopy) = [(PTSpillCorrection *)self encodeToCommandBuffer:bufferCopy segmentationTexture:offsetCopy];
  return chromaTextureCopy;
}

- (int)encodeToCommandBuffer:(id)buffer segmentationTexture:(id)texture
{
  metalContext = self->_metalContext;
  textureCopy = texture;
  bufferCopy = buffer;
  textureUtil = [(PTMetalContext *)metalContext textureUtil];
  [textureUtil copy:bufferCopy inTex:textureCopy outTex:self->_segmentationTexture];

  [(PTSpillCorrection *)self updateFromDefaults];
  [(PTSpillCorrection *)self initConstraints:bufferCopy];
  [(PTSpillCorrection *)self diffusion:bufferCopy];

  return 0;
}

- (void)initConstraints:(id)constraints
{
  minFilter = self->_minFilter;
  segmentationTexture = self->_segmentationTexture;
  segmentationMinTexture = self->_segmentationMinTexture;
  constraintsCopy = constraints;
  [(MPSImageAreaMin *)minFilter encodeToCommandBuffer:constraintsCopy sourceTexture:segmentationTexture destinationTexture:segmentationMinTexture];
  [(MPSImageAreaMax *)self->_maxFilter encodeToCommandBuffer:constraintsCopy sourceTexture:self->_segmentationTexture destinationTexture:self->_segmentationMaxTexture];
  computeCommandEncoder = [constraintsCopy computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_initConstraintsPart1];
  [computeCommandEncoder setTexture:self->_guideTexture atIndex:0];
  [computeCommandEncoder setTexture:self->_segmentationMinTexture atIndex:1];
  p_constraintsTexture = &self->_constraintsTexture;
  [computeCommandEncoder setTexture:self->_constraintsTexture atIndex:2];
  width = [(MTLTexture *)self->_constraintsTexture width];
  height = [(MTLTexture *)self->_constraintsTexture height];
  v17 = width;
  v18 = height;
  v19 = 1;
  v15 = xmmword_2244A5230;
  v16 = 1;
  [computeCommandEncoder dispatchThreads:&v17 threadsPerThreadgroup:&v15];
  [computeCommandEncoder endEncoding];

  [(MPSImageGaussianBlur *)self->_gaussianBlur encodeToCommandBuffer:constraintsCopy inPlaceTexture:&self->_constraintsTexture fallbackCopyAllocator:0];
  computeCommandEncoder2 = [constraintsCopy computeCommandEncoder];

  [computeCommandEncoder2 setComputePipelineState:self->_initConstraintsPart2];
  [computeCommandEncoder2 setTexture:self->_guideTexture atIndex:0];
  [computeCommandEncoder2 setTexture:self->_segmentationMinTexture atIndex:1];
  [computeCommandEncoder2 setTexture:self->_segmentationMaxTexture atIndex:2];
  [computeCommandEncoder2 setTexture:self->_constraintsTexture atIndex:3];
  width2 = [(MTLTexture *)self->_constraintsTexture width];
  height2 = [(MTLTexture *)*p_constraintsTexture height];
  v17 = width2;
  v18 = height2;
  v19 = 1;
  v15 = xmmword_2244A5230;
  v16 = 1;
  [computeCommandEncoder2 dispatchThreads:&v17 threadsPerThreadgroup:&v15];
  [computeCommandEncoder2 endEncoding];
}

- (void)diffusion:(id)diffusion
{
  diffusionCopy = diffusion;
  computeCommandEncoder = [diffusionCopy computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_initDiffusion];
  [computeCommandEncoder setTexture:self->_guideTexture atIndex:0];
  [computeCommandEncoder setTexture:self->_segmentationTexture atIndex:1];
  [computeCommandEncoder setTexture:self->_constraintsTexture atIndex:2];
  [computeCommandEncoder setTexture:self->_diffusionTexture atIndex:3];
  width = [(MTLTexture *)self->_diffusionTexture width];
  height = [(MTLTexture *)self->_diffusionTexture height];
  v23 = width;
  v24 = height;
  v25 = 1;
  v21 = xmmword_2244A5230;
  v22 = 1;
  [computeCommandEncoder dispatchThreads:&v23 threadsPerThreadgroup:&v21];
  [computeCommandEncoder endEncoding];

  if (self->_refinementSteps)
  {
    v8 = 0;
    do
    {
      computeCommandEncoder2 = [diffusionCopy computeCommandEncoder];
      [computeCommandEncoder2 setComputePipelineState:self->_computeUpsamplingCoefficients];
      [computeCommandEncoder2 setTexture:self->_guideTexture atIndex:0];
      [computeCommandEncoder2 setTexture:self->_diffusionTexture atIndex:1];
      [computeCommandEncoder2 setTexture:self->_coeffXTexture atIndex:2];
      [computeCommandEncoder2 setTexture:self->_coeffYTexture atIndex:3];
      [computeCommandEncoder2 setTexture:self->_coeffZTexture atIndex:4];
      width2 = [(MTLTexture *)self->_coeffXTexture width];
      height2 = [(MTLTexture *)self->_coeffXTexture height];
      v23 = width2;
      v24 = height2;
      v25 = 1;
      v21 = xmmword_2244A5230;
      v22 = 1;
      [computeCommandEncoder2 dispatchThreads:&v23 threadsPerThreadgroup:&v21];
      [computeCommandEncoder2 endEncoding];

      computeCommandEncoder3 = [diffusionCopy computeCommandEncoder];
      [computeCommandEncoder3 setComputePipelineState:self->_averageUpsamplingCoefficients];
      [computeCommandEncoder3 setTexture:self->_coeffXTexture atIndex:0];
      [computeCommandEncoder3 setTexture:self->_coeffYTexture atIndex:1];
      [computeCommandEncoder3 setTexture:self->_coeffZTexture atIndex:2];
      [computeCommandEncoder3 setTexture:self->_coeffXFilteredTexture atIndex:3];
      [computeCommandEncoder3 setTexture:self->_coeffYFilteredTexture atIndex:4];
      [computeCommandEncoder3 setTexture:self->_coeffZFilteredTexture atIndex:5];
      width3 = [(MTLTexture *)self->_coeffXTexture width];
      height3 = [(MTLTexture *)self->_coeffXTexture height];
      v23 = width3;
      v24 = height3;
      v25 = 1;
      v21 = xmmword_2244A5230;
      v22 = 1;
      [computeCommandEncoder3 dispatchThreads:&v23 threadsPerThreadgroup:&v21];
      [computeCommandEncoder3 endEncoding];

      computeCommandEncoder4 = [diffusionCopy computeCommandEncoder];
      [computeCommandEncoder4 setComputePipelineState:self->_applyUpsamplingCoefficients];
      [computeCommandEncoder4 setTexture:self->_guideTexture atIndex:0];
      [computeCommandEncoder4 setTexture:self->_coeffXFilteredTexture atIndex:1];
      [computeCommandEncoder4 setTexture:self->_coeffYFilteredTexture atIndex:2];
      [computeCommandEncoder4 setTexture:self->_coeffZFilteredTexture atIndex:3];
      [computeCommandEncoder4 setTexture:self->_diffusionTexture atIndex:4];
      width4 = [(MTLTexture *)self->_diffusionTexture width];
      height4 = [(MTLTexture *)self->_diffusionTexture height];
      v23 = width4;
      v24 = height4;
      v25 = 1;
      v21 = xmmword_2244A5230;
      v22 = 1;
      [computeCommandEncoder4 dispatchThreads:&v23 threadsPerThreadgroup:&v21];
      [computeCommandEncoder4 endEncoding];

      computeCommandEncoder5 = [diffusionCopy computeCommandEncoder];
      [computeCommandEncoder5 setComputePipelineState:self->_constrainDiffusion];
      [computeCommandEncoder5 setTexture:self->_constraintsTexture atIndex:0];
      [computeCommandEncoder5 setTexture:self->_diffusionTexture atIndex:1];
      width5 = [(MTLTexture *)self->_diffusionTexture width];
      height5 = [(MTLTexture *)self->_diffusionTexture height];
      v23 = width5;
      v24 = height5;
      v25 = 1;
      v21 = xmmword_2244A5230;
      v22 = 1;
      [computeCommandEncoder5 dispatchThreads:&v23 threadsPerThreadgroup:&v21];
      [computeCommandEncoder5 endEncoding];

      ++v8;
    }

    while (self->_refinementSteps > v8);
  }
}

@end