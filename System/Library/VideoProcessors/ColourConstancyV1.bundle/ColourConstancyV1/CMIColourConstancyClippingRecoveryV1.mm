@interface CMIColourConstancyClippingRecoveryV1
- (CMIColourConstancyClippingRecoveryV1)initWithMetalContext:(id)context;
- (id)_encodeColourAccuracyClippedRegionRecovery:(double)recovery inputAmbientLumaTexture:(double)texture inputAmbientChromaTexture:(uint64_t)chromaTexture inoutFlashLumaTexture:(void *)lumaTexture inoutFlashChromaTexture:(void *)flashChromaTexture ambientToFlashRegistrationHomography:(void *)homography;
- (id)_encodeImagePyramidGeneration:(double)generation inputAmbientLumaTexture:(double)texture inputAmbientChromaTexture:(uint64_t)chromaTexture inoutFlashLumaTexture:(void *)lumaTexture inoutFlashChromaTexture:(void *)flashChromaTexture ambientToFlashRegistrationHomography:(void *)homography;
- (id)_encodeImageReconstruction:(double)reconstruction inputAmbientLumaTexture:(double)texture inputAmbientChromaTexture:(uint64_t)chromaTexture inoutFlashLumaTexture:(void *)lumaTexture inoutFlashChromaTexture:(void *)flashChromaTexture ambientToFlashRegistrationHomography:(void *)homography;
- (id)applyClippedRegionRecovery:(void *)recovery inputAmbientLumaTexture:inputAmbientChromaTexture:inoutFlashLumaTexture:inoutFlashChromaTexture:ambientToFlashRegistrationHomography:;
- (int)_encodeGradientExtraction:(id)extraction frame:(int)frame channel:(int)channel;
- (int)_encodeGradientImageFusion:(id)fusion;
- (int)_encodeGradientImageFusion:(id)fusion channel:(int)channel;
- (int)_encodeImageAccumulationOfFusedThumbnail:(id)thumbnail inoutFlashLumaTexture:(id)texture inoutFlashChromaTexture:(id)chromaTexture gamma:(float)gamma;
- (int)_encodeImageAccumulationOfSecondToLastPyramidLevels:(id)levels inoutFlashLumaTexture:(id)texture inoutFlashChromaTexture:(id)chromaTexture gamma:(float)gamma;
- (int)_encodeSecondToLastLevelsPyramidGeneration:(id)generation kernelRadius:(int)radius sigma:(float)sigma;
- (int)_fusionMapExtraction:(id)extraction;
- (int)prepareToProcessWithConfig:(id)config;
- (int)purgeResources;
- (uint64_t)_encodeFirstLevelPyramidGeneration:(__n128)generation inputAmbientLumaTexture:(__n128)texture inputAmbientChromaTexture:(float)chromaTexture inoutFlashLumaTexture:(float)lumaTexture inoutFlashChromaTexture:(float)flashChromaTexture ambientToFlashRegistrationHomography:(uint64_t)homography scalar:(void *)scalar exponent:(void *)self0 gamma:(void *)self1;
- (uint64_t)_encodeImageAccumulationOfFirstPyramidLevel:(__n128)level inputAmbientLumaTexture:(__n128)texture inputAmbientChromaTexture:(float)chromaTexture inoutFlashLumaTexture:(uint64_t)lumaTexture inoutFlashChromaTexture:(void *)flashChromaTexture ambientToFlashRegistrationHomography:(void *)homography gamma:(void *)gamma;
@end

@implementation CMIColourConstancyClippingRecoveryV1

- (CMIColourConstancyClippingRecoveryV1)initWithMetalContext:(id)context
{
  contextCopy = context;
  v34.receiver = self;
  v34.super_class = CMIColourConstancyClippingRecoveryV1;
  v6 = [(CMIColourConstancyClippingRecoveryV1 *)&v34 init];
  v7 = v6;
  if (v6)
  {
    if (contextCopy)
    {
      objc_storeStrong(&v6->_metalContext, context);
      v8 = 0;
      imagePyramidGenerationPipelineStates = v7->_imagePyramidGenerationPipelineStates;
      v10 = 1;
      do
      {
        v11 = v10;
        v12 = [NSString stringWithFormat:@"ColourConstancy::imagePyramidGeneration_stage%d", v8];
        v13 = [(FigMetalContext *)v7->_metalContext computePipelineStateFor:v12 constants:0];
        v14 = imagePyramidGenerationPipelineStates[v8];
        imagePyramidGenerationPipelineStates[v8] = v13;

        if (!imagePyramidGenerationPipelineStates[v8])
        {
          sub_1A350(v12);
          goto LABEL_22;
        }

        v10 = 0;
        v8 = 1;
      }

      while ((v11 & 1) != 0);
      for (i = 0; i != 3; ++i)
      {
        v16 = [NSString stringWithFormat:@"ColourConstancy::gradientExtraction_stage%d", i];
        v17 = [(FigMetalContext *)v7->_metalContext computePipelineStateFor:v16 constants:0];
        v18 = &v7->super.isa + i;
        v19 = v18[22];
        v18[22] = v17;

        if (!v18[22])
        {
          sub_1A2D0(v16);
          goto LABEL_22;
        }
      }

      for (j = 0; j != 5; ++j)
      {
        v21 = [NSString stringWithFormat:@"ColourConstancy::gradientImageFusion_stage%d", j];
        v22 = [(FigMetalContext *)v7->_metalContext computePipelineStateFor:v21 constants:0];
        v23 = &v7->super.isa + j;
        v24 = v23[25];
        v23[25] = v22;

        if (!v23[25])
        {
          sub_1A250(v21);
          goto LABEL_22;
        }
      }

      for (k = 0; k != 5; ++k)
      {
        v26 = [NSString stringWithFormat:@"ColourConstancy::imageReconstruction_stage%d", k];
        v27 = [(FigMetalContext *)v7->_metalContext computePipelineStateFor:v26 constants:0];
        v28 = &v7->super.isa + k;
        v29 = v28[30];
        v28[30] = v27;

        if (!v28[30])
        {
          sub_1A1D0(v26);
          goto LABEL_22;
        }
      }

      v30 = [[CMIColourConstancyMicroHazeDetectionV1 alloc] initWithMetalContext:v7->_metalContext];
      microHazeDetection = v7->_microHazeDetection;
      v7->_microHazeDetection = v30;

      if (v7->_microHazeDetection)
      {
        v32 = v7;
        goto LABEL_17;
      }

      sub_1A158();
    }

    else
    {
      sub_1A3D0();
    }
  }

  else
  {
    sub_1A448();
  }

LABEL_22:
  v32 = 0;
LABEL_17:

  return v32;
}

- (int)purgeResources
{
  v3 = self->_rgbPyramidTextures[1];
  v4 = 3;
  do
  {
    FigMetalDecRef();
    FigMetalDecRef();
    ++v3;
    --v4;
  }

  while (v4);
  flashFusedThumbnailImageTextures = self->_flashFusedThumbnailImageTextures;
  v6 = 3;
  do
  {
    FigMetalDecRef();
    FigMetalDecRef();
    FigMetalDecRef();
    ++flashFusedThumbnailImageTextures;
    --v6;
  }

  while (v6);
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  microHazeDetection = self->_microHazeDetection;
  if (microHazeDetection)
  {
    [(CMIColourConstancyMicroHazeDetectionV1 *)microHazeDetection purgeResources];
  }

  return 0;
}

- (int)prepareToProcessWithConfig:(id)config
{
  configCopy = config;
  if (!configCopy)
  {
    sub_1AC00();
    newTextureDescriptor = 0;
    v93 = 8;
    goto LABEL_35;
  }

  objc_storeStrong(&self->_config, config);
  allocator = [(FigMetalContext *)self->_metalContext allocator];
  newTextureDescriptor = [allocator newTextureDescriptor];

  if (!newTextureDescriptor)
  {
    sub_1AB8C();
    v93 = 7;
    goto LABEL_35;
  }

  v96 = configCopy;
  desc = [newTextureDescriptor desc];
  [desc setTextureType:2];

  desc2 = [newTextureDescriptor desc];
  [desc2 setPixelFormat:115];

  pyramidLastLevelWidth = [(CMIColourConstancyClippingRecoveryConfigurationV1 *)self->_config pyramidLastLevelWidth];
  desc3 = [newTextureDescriptor desc];
  [desc3 setWidth:pyramidLastLevelWidth];

  pyramidLastLevelHeight = [(CMIColourConstancyClippingRecoveryConfigurationV1 *)self->_config pyramidLastLevelHeight];
  desc4 = [newTextureDescriptor desc];
  [desc4 setHeight:pyramidLastLevelHeight];

  pyramidNumLevels = [(CMIColourConstancyClippingRecoveryConfigurationV1 *)self->_config pyramidNumLevels];
  v15 = (pyramidNumLevels - 1);
  if (pyramidNumLevels >= 1)
  {
    v16 = pyramidNumLevels + 1;
    v17 = &self->_rgbPyramidTextures[0][pyramidNumLevels + 2];
    while (1)
    {
      v18 = [NSString stringWithFormat:@"ColourConstancyV1->Core->ClippingRecovery->ambientRGBPyramidTexture%d", v15];
      [newTextureDescriptor setLabel:v18];

      allocator2 = [(FigMetalContext *)self->_metalContext allocator];
      v20 = [allocator2 newTextureWithDescriptor:newTextureDescriptor];
      v21 = *(v17 - 3);
      *(v17 - 3) = v20;

      if (!*(v17 - 3))
      {
        break;
      }

      v22 = [NSString stringWithFormat:@"ColourConstancyV1->Core->ClippingRecovery->flashRGBPyramidTexture%d", v15];
      [newTextureDescriptor setLabel:v22];

      allocator3 = [(FigMetalContext *)self->_metalContext allocator];
      v24 = [allocator3 newTextureWithDescriptor:newTextureDescriptor];
      v25 = *v17;
      *v17 = v24;

      if (!*v17)
      {
        sub_1AAA4();
        goto LABEL_48;
      }

      desc5 = [newTextureDescriptor desc];
      [desc5 setWidth:{2 * objc_msgSend(desc5, "width")}];
      desc6 = [newTextureDescriptor desc];
      [desc6 setHeight:{2 * objc_msgSend(desc6, "height")}];

      --v16;
      --v17;
      v15 = (v15 - 1);
      if (v16 <= 1)
      {
        goto LABEL_8;
      }
    }

    sub_1AB18();
LABEL_48:
    v93 = 6;
    configCopy = v96;
    goto LABEL_35;
  }

LABEL_8:
  pyramidLastLevelWidth2 = [(CMIColourConstancyClippingRecoveryConfigurationV1 *)self->_config pyramidLastLevelWidth];
  desc7 = [newTextureDescriptor desc];
  [desc7 setWidth:pyramidLastLevelWidth2];

  pyramidLastLevelHeight2 = [(CMIColourConstancyClippingRecoveryConfigurationV1 *)self->_config pyramidLastLevelHeight];
  desc8 = [newTextureDescriptor desc];
  [desc8 setHeight:pyramidLastLevelHeight2];

  desc9 = [newTextureDescriptor desc];
  [desc9 setPixelFormat:65];

  v33 = self->_imageGradientTextures[1];
  v34 = -3;
  do
  {
    v35 = [NSString stringWithFormat:@"ColourConstancyV1->Core->ClippingRecovery->ambientGradientsTexture%d", v34 + 3];
    [newTextureDescriptor setLabel:v35];

    allocator4 = [(FigMetalContext *)self->_metalContext allocator];
    v37 = [allocator4 newTextureWithDescriptor:newTextureDescriptor];
    v38 = *(v33 - 3);
    *(v33 - 3) = v37;

    if (!*(v33 - 3))
    {
      sub_1AA30();
      goto LABEL_48;
    }

    v39 = [NSString stringWithFormat:@"ColourConstancyV1->Core->ClippingRecovery->flashGradientsTexture%d", v34 + 3];
    [newTextureDescriptor setLabel:v39];

    allocator5 = [(FigMetalContext *)self->_metalContext allocator];
    v41 = [allocator5 newTextureWithDescriptor:newTextureDescriptor];
    v42 = *v33;
    *v33 = v41;

    if (!*v33)
    {
      sub_1A9BC();
      goto LABEL_48;
    }

    ++v33;
  }

  while (!__CFADD__(v34++, 1));
  desc10 = [newTextureDescriptor desc];
  [desc10 setPixelFormat:25];

  v45 = 0;
  flashFusedThumbnailImageTextures = self->_flashFusedThumbnailImageTextures;
  do
  {
    v47 = [NSString stringWithFormat:@"ColourConstancyV1->Core->ClippingRecovery->flashFusedThumbnailImageTextures%d", v45];
    [newTextureDescriptor setLabel:v47];

    allocator6 = [(FigMetalContext *)self->_metalContext allocator];
    v49 = [allocator6 newTextureWithDescriptor:newTextureDescriptor];
    v50 = flashFusedThumbnailImageTextures[v45];
    flashFusedThumbnailImageTextures[v45] = v49;

    if (!flashFusedThumbnailImageTextures[v45])
    {
      sub_1A948();
      goto LABEL_48;
    }

    ++v45;
  }

  while (v45 != 3);
  desc11 = [newTextureDescriptor desc];
  [desc11 setPixelFormat:25];

  [newTextureDescriptor setLabel:@"ColourConstancyV1->Core->ClippingRecovery->fusionMapTexture"];
  allocator7 = [(FigMetalContext *)self->_metalContext allocator];
  v53 = [allocator7 newTextureWithDescriptor:newTextureDescriptor];
  fusionMapTexture = self->_fusionMapTexture;
  self->_fusionMapTexture = v53;

  if (!self->_fusionMapTexture)
  {
    sub_1A8D4();
    goto LABEL_48;
  }

  pyramidLastLevelWidth3 = [(CMIColourConstancyClippingRecoveryConfigurationV1 *)self->_config pyramidLastLevelWidth];
  v95 = 2 * pyramidLastLevelWidth3;
  pyramidLastLevelHeight3 = [(CMIColourConstancyClippingRecoveryConfigurationV1 *)self->_config pyramidLastLevelHeight];
  v57 = 4 * (2 * pyramidLastLevelHeight3 * 4 * pyramidLastLevelWidth3);
  scrapMemoryBuffers = self->_scrapMemoryBuffers;
  v59 = (4 * pyramidLastLevelWidth3);
  v97 = (2 * pyramidLastLevelHeight3);
  v60 = 3;
  while (2)
  {
    device = [(FigMetalContext *)self->_metalContext device];
    v62 = [device newBufferWithLength:v57 options:0];
    v63 = *scrapMemoryBuffers;
    *scrapMemoryBuffers = v62;

    if (!*scrapMemoryBuffers)
    {
      sub_1A860();
      goto LABEL_48;
    }

    v64 = [MTLTextureDescriptor texture2DDescriptorWithPixelFormat:55 width:v59 height:v97 mipmapped:0];
    v65 = v64;
    if (!v64)
    {
      sub_1A7EC();
LABEL_42:

      goto LABEL_48;
    }

    [v64 setUsage:3];
    [v65 setResourceOptions:{-[MTLBuffer resourceOptions](*scrapMemoryBuffers, "resourceOptions")}];
    v66 = -[MTLBuffer newTextureWithDescriptor:offset:bytesPerRow:](*scrapMemoryBuffers, "newTextureWithDescriptor:offset:bytesPerRow:", v65, 0, ([v65 width] * -[FigMetalContext getPixelSizeInBytes:](self->_metalContext, "getPixelSizeInBytes:", objc_msgSend(v65, "pixelFormat")) + 63) & 0xFFFFFFC0);
    v67 = scrapMemoryBuffers[3];
    scrapMemoryBuffers[3] = v66;

    if (!scrapMemoryBuffers[3])
    {
      sub_1A778();
      goto LABEL_42;
    }

    ++scrapMemoryBuffers;
    if (--v60)
    {
      continue;
    }

    break;
  }

  scrapMemoryRGBA32Textures = self->_scrapMemoryRGBA32Textures;
  v69 = 3;
  while (2)
  {
    pyramidLastLevelWidth4 = [(CMIColourConstancyClippingRecoveryConfigurationV1 *)self->_config pyramidLastLevelWidth];
    v71 = pyramidLastLevelWidth4 + 15;
    if (pyramidLastLevelWidth4 >= 0)
    {
      v71 = pyramidLastLevelWidth4;
    }

    v72 = v71 >> 4;
    pyramidLastLevelHeight4 = [(CMIColourConstancyClippingRecoveryConfigurationV1 *)self->_config pyramidLastLevelHeight];
    v74 = pyramidLastLevelHeight4 + 15;
    if (pyramidLastLevelHeight4 >= 0)
    {
      v74 = pyramidLastLevelHeight4;
    }

    v75 = [MTLTextureDescriptor texture2DDescriptorWithPixelFormat:125 width:v72 height:v74 >> 4 mipmapped:0];
    v76 = v75;
    if (!v75)
    {
      sub_1A704();
LABEL_45:

      goto LABEL_48;
    }

    [v75 setUsage:3];
    [v76 setResourceOptions:{-[MTLTexture resourceOptions](*(scrapMemoryRGBA32Textures - 6), "resourceOptions")}];
    v77 = -[MTLTexture newTextureWithDescriptor:offset:bytesPerRow:](*(scrapMemoryRGBA32Textures - 6), "newTextureWithDescriptor:offset:bytesPerRow:", v76, 0, ([v76 width] * -[FigMetalContext getPixelSizeInBytes:](self->_metalContext, "getPixelSizeInBytes:", objc_msgSend(v76, "pixelFormat")) + 63) & 0xFFFFFFC0);
    v78 = *scrapMemoryRGBA32Textures;
    *scrapMemoryRGBA32Textures = v77;

    if (!*scrapMemoryRGBA32Textures)
    {
      sub_1A690();
      goto LABEL_45;
    }

    ++scrapMemoryRGBA32Textures;
    if (--v69)
    {
      continue;
    }

    break;
  }

  desc12 = [newTextureDescriptor desc];
  [desc12 setPixelFormat:125];

  desc13 = [newTextureDescriptor desc];
  [desc13 setWidth:1];

  desc14 = [newTextureDescriptor desc];
  [desc14 setHeight:1];

  [newTextureDescriptor setLabel:@"ColourConstancyV1->Core->ClippingRecovery->offsetTextures0"];
  allocator8 = [(FigMetalContext *)self->_metalContext allocator];
  v83 = [allocator8 newTextureWithDescriptor:newTextureDescriptor];
  v84 = self->_offsetTextures[0];
  self->_offsetTextures[0] = v83;

  if (!self->_offsetTextures[0])
  {
    sub_1A61C();
    goto LABEL_48;
  }

  [newTextureDescriptor setLabel:@"ColourConstancyV1->Core->ClippingRecovery->offsetTextures1"];
  allocator9 = [(FigMetalContext *)self->_metalContext allocator];
  v86 = [allocator9 newTextureWithDescriptor:newTextureDescriptor];
  v87 = self->_offsetTextures[1];
  self->_offsetTextures[1] = v86;

  if (!self->_offsetTextures[1])
  {
    sub_1A5A8();
    goto LABEL_48;
  }

  device2 = [(FigMetalContext *)self->_metalContext device];
  v89 = [CMIFFT CMIFFT2DTransform:device2 figMetalContext:0 width:v95 height:v97 layout:0 precision:0];
  fftTransform = self->_fftTransform;
  self->_fftTransform = v89;

  if (!self->_fftTransform)
  {
    sub_1A534();
    goto LABEL_48;
  }

  microHazeDetection = self->_microHazeDetection;
  microHazeDetectionConfig = [(CMIColourConstancyClippingRecoveryConfigurationV1 *)self->_config microHazeDetectionConfig];
  [(CMIColourConstancyMicroHazeDetectionV1 *)microHazeDetection prepareToProcessWithConfig:microHazeDetectionConfig];

  configCopy = v96;
  if (self->_microHazeDetection)
  {
    v93 = 0;
  }

  else
  {
    sub_1A4C0();
    v93 = 6;
  }

LABEL_35:

  return v93;
}

- (id)_encodeImagePyramidGeneration:(double)generation inputAmbientLumaTexture:(double)texture inputAmbientChromaTexture:(uint64_t)chromaTexture inoutFlashLumaTexture:(void *)lumaTexture inoutFlashChromaTexture:(void *)flashChromaTexture ambientToFlashRegistrationHomography:(void *)homography
{
  lumaTextureCopy = lumaTexture;
  v16 = self[2];
  v17 = a10;
  v18 = a9;
  homographyCopy = homography;
  flashChromaTextureCopy = flashChromaTexture;
  [v16 clippedLikelihoodScalar];
  v22 = v21;
  [self[2] clippedLikelihoodExponent];
  v24 = v23;
  [self[2] gamma];
  LODWORD(v26) = v25;
  LODWORD(v27) = v22;
  LODWORD(v28) = v24;
  v29 = [self _encodeFirstLevelPyramidGeneration:lumaTextureCopy inputAmbientLumaTexture:flashChromaTextureCopy inputAmbientChromaTexture:homographyCopy inoutFlashLumaTexture:v18 inoutFlashChromaTexture:v17 ambientToFlashRegistrationHomography:a2 scalar:generation exponent:texture gamma:{v27, v28, v26}];

  if (v29)
  {
    sub_1AC74();
  }

  else
  {
    pyramidGaussianKernelRadius = [self[2] pyramidGaussianKernelRadius];
    [self[2] pyramidGaussianSigma];
    v29 = [self _encodeSecondToLastLevelsPyramidGeneration:lumaTextureCopy kernelRadius:pyramidGaussianKernelRadius sigma:?];
    if (v29)
    {
      sub_1ACF0();
    }
  }

  return v29;
}

- (uint64_t)_encodeFirstLevelPyramidGeneration:(__n128)generation inputAmbientLumaTexture:(__n128)texture inputAmbientChromaTexture:(float)chromaTexture inoutFlashLumaTexture:(float)lumaTexture inoutFlashChromaTexture:(float)flashChromaTexture ambientToFlashRegistrationHomography:(uint64_t)homography scalar:(void *)scalar exponent:(void *)self0 gamma:(void *)self1
{
  v38[0] = a2;
  v38[1] = generation;
  v38[2] = texture;
  exponentCopy = exponent;
  gammaCopy = gamma;
  v23 = a12;
  v24 = a13;
  lumaTextureCopy = lumaTexture;
  chromaTextureCopy = chromaTexture;
  flashChromaTextureCopy = flashChromaTexture;
  computeCommandEncoder = [scalar computeCommandEncoder];
  v26 = computeCommandEncoder;
  if (computeCommandEncoder)
  {
    [computeCommandEncoder setComputePipelineState:*(self + 160)];
    [v26 setTexture:exponentCopy atIndex:0];
    [v26 setTexture:gammaCopy atIndex:1];
    [v26 setTexture:v23 atIndex:2];
    [v26 setTexture:v24 atIndex:3];
    [v26 setTexture:*(self + 24) atIndex:4];
    [v26 setTexture:*(self + 48) atIndex:5];
    [v26 setBytes:&chromaTextureCopy length:4 atIndex:0];
    [v26 setBytes:&lumaTextureCopy length:4 atIndex:1];
    [v26 setBytes:&flashChromaTextureCopy length:4 atIndex:2];
    [v26 setBytes:v38 length:48 atIndex:3];
    threadExecutionWidth = [*(self + 160) threadExecutionWidth];
    v28 = [*(self + 160) maxTotalThreadsPerThreadgroup] / threadExecutionWidth;
    width = [*(self + 24) width];
    height = [*(self + 24) height];
    v34[0] = width;
    v34[1] = height;
    v34[2] = 1;
    v33[0] = threadExecutionWidth;
    v33[1] = v28;
    v33[2] = 1;
    [v26 dispatchThreads:v34 threadsPerThreadgroup:v33];
    [v26 endEncoding];
    v31 = 0;
  }

  else
  {
    sub_1AD6C();
    v31 = 10;
  }

  return v31;
}

- (int)_encodeSecondToLastLevelsPyramidGeneration:(id)generation kernelRadius:(int)radius sigma:(float)sigma
{
  radiusCopy = radius;
  sigmaCopy = sigma;
  computeCommandEncoder = [generation computeCommandEncoder];
  if (computeCommandEncoder)
  {
    v7 = 0;
    rgbPyramidTextures = self->_rgbPyramidTextures;
    v9 = self->_rgbPyramidTextures[1];
    v10 = 1;
    do
    {
      v11 = v10;
      [computeCommandEncoder setComputePipelineState:self->_imagePyramidGenerationPipelineStates[1]];
      [computeCommandEncoder setTexture:(*rgbPyramidTextures)[v7] atIndex:0];
      [computeCommandEncoder setTexture:v9[v7] atIndex:1];
      v12 = 8 * v7 + 8;
      [computeCommandEncoder setTexture:*(rgbPyramidTextures + v12) atIndex:2];
      [computeCommandEncoder setTexture:*(v9 + v12) atIndex:3];
      [computeCommandEncoder setBytes:&radiusCopy length:4 atIndex:0];
      [computeCommandEncoder setBytes:&sigmaCopy length:4 atIndex:1];
      threadExecutionWidth = [(MTLComputePipelineState *)self->_imagePyramidGenerationPipelineStates[1] threadExecutionWidth];
      v14 = [(MTLComputePipelineState *)self->_imagePyramidGenerationPipelineStates[1] maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
      width = [*(rgbPyramidTextures + v12) width];
      height = [*(rgbPyramidTextures + v12) height];
      v20[0] = width;
      v20[1] = height;
      v20[2] = 1;
      v19[0] = threadExecutionWidth;
      v19[1] = v14;
      v19[2] = 1;
      [computeCommandEncoder dispatchThreads:v20 threadsPerThreadgroup:v19];
      v10 = 0;
      v7 = 1;
    }

    while ((v11 & 1) != 0);
    [computeCommandEncoder endEncoding];
    v17 = 0;
  }

  else
  {
    sub_1ADE0();
    v17 = 10;
  }

  return v17;
}

- (int)_encodeGradientExtraction:(id)extraction frame:(int)frame channel:(int)channel
{
  extractionCopy = extraction;
  channelCopy = channel;
  computeCommandEncoder = [extractionCopy computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    sub_1B24C();
LABEL_16:
    LODWORD(v30) = 10;
    goto LABEL_8;
  }

  v10 = computeCommandEncoder;
  [computeCommandEncoder setComputePipelineState:self->_gradientExtractionPipelineStates[0]];
  [v10 setTexture:self->_rgbPyramidTextures[frame][2] atIndex:0];
  [v10 setTexture:self->_scrapMemoryR32Textures[0] atIndex:1];
  [v10 setBytes:&channelCopy length:4 atIndex:0];
  threadExecutionWidth = [(MTLComputePipelineState *)self->_gradientExtractionPipelineStates[0] threadExecutionWidth];
  v12 = [(MTLComputePipelineState *)self->_gradientExtractionPipelineStates[0] maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
  v13 = [(MTLTexture *)self->_scrapMemoryR32Textures[0] width]>> 1;
  height = [(MTLTexture *)self->_scrapMemoryR32Textures[0] height];
  v45 = v13;
  v46 = height;
  v47 = 1;
  v42 = threadExecutionWidth;
  v43 = v12;
  v44 = 1;
  [v10 dispatchThreads:&v45 threadsPerThreadgroup:&v42];
  [v10 endEncoding];
  fftTransform = self->_fftTransform;
  buffer = [(MTLTexture *)self->_scrapMemoryR32Textures[0] buffer];
  v17 = [(CMIFFTTransform *)fftTransform encodeToCommandBuffer:extractionCopy inputBuffer:buffer direction:1];

  if (v17)
  {
    sub_1AFC8(v17, v10, &v45);
LABEL_13:
    LODWORD(v30) = v45;
    goto LABEL_8;
  }

  computeCommandEncoder2 = [extractionCopy computeCommandEncoder];

  if (!computeCommandEncoder2)
  {
    sub_1B1D8();
    goto LABEL_16;
  }

  v19 = floorf(vcvts_n_f32_u64([(MTLTexture *)self->_scrapMemoryR32Textures[0] width], 2uLL));
  *&v38 = v19 + v19;
  v41 = vcvt_s32_f32(__PAIR64__(COERCE_UNSIGNED_INT(floorf(vcvts_n_f32_u64([(MTLTexture *)self->_scrapMemoryR32Textures[0] height], 1uLL))), v38));
  v20 = ceilf(vcvts_n_f32_u64([(MTLTexture *)self->_scrapMemoryR32Textures[0] width], 2uLL));
  *&v39 = v20 + v20;
  v40 = vcvt_s32_f32(__PAIR64__(COERCE_UNSIGNED_INT(ceilf(vcvts_n_f32_u64([(MTLTexture *)self->_scrapMemoryR32Textures[0] height], 1uLL))), v39));
  [computeCommandEncoder2 setComputePipelineState:self->_gradientExtractionPipelineStates[1]];
  [computeCommandEncoder2 setTexture:self->_scrapMemoryR32Textures[0] atIndex:0];
  [computeCommandEncoder2 setTexture:self->_scrapMemoryR32Textures[1] atIndex:1];
  [computeCommandEncoder2 setTexture:self->_scrapMemoryR32Textures[2] atIndex:2];
  [computeCommandEncoder2 setBytes:&v41 length:8 atIndex:0];
  [computeCommandEncoder2 setBytes:&v40 length:8 atIndex:1];
  threadExecutionWidth2 = [(MTLComputePipelineState *)self->_gradientExtractionPipelineStates[1] threadExecutionWidth];
  v22 = [(MTLComputePipelineState *)self->_gradientExtractionPipelineStates[1] maxTotalThreadsPerThreadgroup]/ threadExecutionWidth2;
  v23 = [(MTLTexture *)self->_scrapMemoryR32Textures[0] width]>> 1;
  height2 = [(MTLTexture *)self->_scrapMemoryR32Textures[0] height];
  v45 = v23;
  v46 = height2;
  v47 = 1;
  v42 = threadExecutionWidth2;
  v43 = v22;
  v44 = 1;
  [computeCommandEncoder2 dispatchThreads:&v45 threadsPerThreadgroup:&v42];
  [computeCommandEncoder2 endEncoding];
  v25 = self->_fftTransform;
  buffer2 = [(MTLTexture *)self->_scrapMemoryR32Textures[1] buffer];
  v27 = [(CMIFFTTransform *)v25 encodeToCommandBuffer:extractionCopy inputBuffer:buffer2 direction:-1];

  if (v27)
  {
    sub_1B050(v27, computeCommandEncoder2, &v45);
    goto LABEL_13;
  }

  v28 = self->_fftTransform;
  buffer3 = [(MTLTexture *)self->_scrapMemoryR32Textures[2] buffer];
  v30 = [(CMIFFTTransform *)v28 encodeToCommandBuffer:extractionCopy inputBuffer:buffer3 direction:-1];

  if (v30)
  {
    sub_1B0D8(v30, computeCommandEncoder2);
    goto LABEL_8;
  }

  computeCommandEncoder3 = [extractionCopy computeCommandEncoder];

  if (!computeCommandEncoder3)
  {
    sub_1B164();
    goto LABEL_16;
  }

  [computeCommandEncoder3 setComputePipelineState:self->_gradientExtractionPipelineStates[2]];
  [computeCommandEncoder3 setTexture:self->_scrapMemoryR32Textures[1] atIndex:0];
  [computeCommandEncoder3 setTexture:self->_scrapMemoryR32Textures[2] atIndex:1];
  v32 = self->_imageGradientTextures[frame];
  [computeCommandEncoder3 setTexture:v32[channelCopy] atIndex:2];
  threadExecutionWidth3 = [(MTLComputePipelineState *)self->_gradientExtractionPipelineStates[2] threadExecutionWidth];
  v34 = [(MTLComputePipelineState *)self->_gradientExtractionPipelineStates[2] maxTotalThreadsPerThreadgroup]/ threadExecutionWidth3;
  width = [(MTLTexture *)v32[channelCopy] width];
  height3 = [(MTLTexture *)v32[channelCopy] height];
  v45 = width;
  v46 = height3;
  v47 = 1;
  v42 = threadExecutionWidth3;
  v43 = v34;
  v44 = 1;
  [computeCommandEncoder3 dispatchThreads:&v45 threadsPerThreadgroup:&v42];
  [computeCommandEncoder3 endEncoding];

LABEL_8:
  return v30;
}

- (int)_encodeGradientImageFusion:(id)fusion
{
  fusionCopy = fusion;
  v5 = [(CMIColourConstancyClippingRecoveryV1 *)self _encodeGradientImageFusion:fusionCopy channel:0];
  if (v5)
  {
    v7 = v5;
    sub_1B2C0();
  }

  else
  {
    v6 = [(CMIColourConstancyClippingRecoveryV1 *)self _encodeGradientImageFusion:fusionCopy channel:1];
    if (v6)
    {
      v7 = v6;
      sub_1B33C();
    }

    else
    {
      v7 = [(CMIColourConstancyClippingRecoveryV1 *)self _encodeGradientImageFusion:fusionCopy channel:2];
      if (v7)
      {
        sub_1B3B8();
      }
    }
  }

  return v7;
}

- (int)_encodeGradientImageFusion:(id)fusion channel:(int)channel
{
  fusionCopy = fusion;
  computeCommandEncoder = [fusionCopy computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    sub_1B6B8();
LABEL_16:
    LODWORD(v29) = 10;
    goto LABEL_8;
  }

  v8 = computeCommandEncoder;
  [computeCommandEncoder setComputePipelineState:self->_gradientImageFusionPipelineStates[2]];
  v9 = &self->super.isa + channel;
  [v8 setTexture:v9[9] atIndex:0];
  [v8 setTexture:v9[12] atIndex:1];
  [v8 setTexture:self->_fusionMapTexture atIndex:2];
  [v8 setTexture:self->_scrapMemoryR32Textures[0] atIndex:3];
  [v8 setTexture:self->_scrapMemoryR32Textures[1] atIndex:4];
  threadExecutionWidth = [(MTLComputePipelineState *)self->_gradientImageFusionPipelineStates[2] threadExecutionWidth];
  v11 = [(MTLComputePipelineState *)self->_gradientImageFusionPipelineStates[2] maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
  v12 = [(MTLTexture *)self->_scrapMemoryR32Textures[0] width]>> 1;
  height = [(MTLTexture *)self->_scrapMemoryR32Textures[0] height];
  v44 = v12;
  v45 = height;
  v46 = 1;
  v41 = threadExecutionWidth;
  v42 = v11;
  v43 = 1;
  [v8 dispatchThreads:&v44 threadsPerThreadgroup:&v41];
  [v8 endEncoding];
  fftTransform = self->_fftTransform;
  buffer = [(MTLTexture *)self->_scrapMemoryR32Textures[0] buffer];
  v16 = [(CMIFFTTransform *)fftTransform encodeToCommandBuffer:fusionCopy inputBuffer:buffer direction:1];

  if (v16)
  {
    sub_1B434(v16, v8, &v44);
LABEL_12:
    LODWORD(v29) = v44;
    goto LABEL_8;
  }

  v17 = self->_fftTransform;
  buffer2 = [(MTLTexture *)self->_scrapMemoryR32Textures[1] buffer];
  v19 = [(CMIFFTTransform *)v17 encodeToCommandBuffer:fusionCopy inputBuffer:buffer2 direction:1];

  if (v19)
  {
    sub_1B4BC(v19, v8, &v44);
    goto LABEL_12;
  }

  computeCommandEncoder2 = [fusionCopy computeCommandEncoder];

  if (!computeCommandEncoder2)
  {
    sub_1B644();
    goto LABEL_16;
  }

  v21 = floorf(vcvts_n_f32_u64([(MTLTexture *)self->_scrapMemoryR32Textures[0] width], 2uLL));
  *&v37 = v21 + v21;
  v40 = vcvt_s32_f32(__PAIR64__(COERCE_UNSIGNED_INT(floorf(vcvts_n_f32_u64([(MTLTexture *)self->_scrapMemoryR32Textures[0] height], 1uLL))), v37));
  v22 = ceilf(vcvts_n_f32_u64([(MTLTexture *)self->_scrapMemoryR32Textures[0] width], 2uLL));
  *&v38 = v22 + v22;
  v39 = vcvt_s32_f32(__PAIR64__(COERCE_UNSIGNED_INT(ceilf(vcvts_n_f32_u64([(MTLTexture *)self->_scrapMemoryR32Textures[0] height], 1uLL))), v38));
  [computeCommandEncoder2 setComputePipelineState:self->_gradientImageFusionPipelineStates[3]];
  [computeCommandEncoder2 setTexture:self->_scrapMemoryR32Textures[0] atIndex:0];
  [computeCommandEncoder2 setTexture:self->_scrapMemoryR32Textures[1] atIndex:1];
  [computeCommandEncoder2 setTexture:self->_scrapMemoryR32Textures[2] atIndex:2];
  [computeCommandEncoder2 setBytes:&v40 length:8 atIndex:0];
  [computeCommandEncoder2 setBytes:&v39 length:8 atIndex:1];
  threadExecutionWidth2 = [(MTLComputePipelineState *)self->_gradientImageFusionPipelineStates[3] threadExecutionWidth];
  v24 = [(MTLComputePipelineState *)self->_gradientImageFusionPipelineStates[3] maxTotalThreadsPerThreadgroup]/ threadExecutionWidth2;
  v25 = [(MTLTexture *)self->_scrapMemoryR32Textures[0] width]>> 1;
  height2 = [(MTLTexture *)self->_scrapMemoryR32Textures[0] height];
  v44 = v25;
  v45 = height2;
  v46 = 1;
  v41 = threadExecutionWidth2;
  v42 = v24;
  v43 = 1;
  [computeCommandEncoder2 dispatchThreads:&v44 threadsPerThreadgroup:&v41];
  [computeCommandEncoder2 endEncoding];
  v27 = self->_fftTransform;
  buffer3 = [(MTLTexture *)self->_scrapMemoryR32Textures[2] buffer];
  v29 = [(CMIFFTTransform *)v27 encodeToCommandBuffer:fusionCopy inputBuffer:buffer3 direction:-1];

  if (v29)
  {
    sub_1B544(v29, computeCommandEncoder2);
    goto LABEL_8;
  }

  computeCommandEncoder3 = [fusionCopy computeCommandEncoder];

  if (!computeCommandEncoder3)
  {
    sub_1B5D0();
    goto LABEL_16;
  }

  [computeCommandEncoder3 setComputePipelineState:self->_gradientImageFusionPipelineStates[4]];
  [computeCommandEncoder3 setTexture:self->_scrapMemoryR32Textures[2] atIndex:0];
  v31 = &self->super.isa + channel;
  [computeCommandEncoder3 setTexture:v31[17] atIndex:1];
  threadExecutionWidth3 = [(MTLComputePipelineState *)self->_gradientImageFusionPipelineStates[4] threadExecutionWidth];
  v33 = [(MTLComputePipelineState *)self->_gradientImageFusionPipelineStates[4] maxTotalThreadsPerThreadgroup]/ threadExecutionWidth3;
  width = [(objc_class *)v31[17] width];
  height3 = [(objc_class *)v31[17] height];
  v44 = width;
  v45 = height3;
  v46 = 1;
  v41 = threadExecutionWidth3;
  v42 = v33;
  v43 = 1;
  [computeCommandEncoder3 dispatchThreads:&v44 threadsPerThreadgroup:&v41];
  [computeCommandEncoder3 endEncoding];

LABEL_8:
  return v29;
}

- (id)_encodeImageReconstruction:(double)reconstruction inputAmbientLumaTexture:(double)texture inputAmbientChromaTexture:(uint64_t)chromaTexture inoutFlashLumaTexture:(void *)lumaTexture inoutFlashChromaTexture:(void *)flashChromaTexture ambientToFlashRegistrationHomography:(void *)homography
{
  lumaTextureCopy = lumaTexture;
  v16 = a9;
  v17 = a10;
  v18 = self[2];
  homographyCopy = homography;
  flashChromaTextureCopy = flashChromaTexture;
  [v18 gamma];
  v22 = v21;
  LODWORD(v23) = v21;
  v24 = [self _encodeImageAccumulationOfFirstPyramidLevel:lumaTextureCopy inputAmbientLumaTexture:flashChromaTextureCopy inputAmbientChromaTexture:homographyCopy inoutFlashLumaTexture:v16 inoutFlashChromaTexture:v17 ambientToFlashRegistrationHomography:a2 gamma:{reconstruction, texture, v23}];

  if (v24)
  {
    sub_1B72C();
  }

  else
  {
    LODWORD(v25) = v22;
    v26 = [self _encodeImageAccumulationOfSecondToLastPyramidLevels:lumaTextureCopy inoutFlashLumaTexture:v16 inoutFlashChromaTexture:v17 gamma:v25];
    if (v26)
    {
      v24 = v26;
      sub_1B7A8();
    }

    else
    {
      LODWORD(v27) = v22;
      v24 = [self _encodeImageAccumulationOfFusedThumbnail:lumaTextureCopy inoutFlashLumaTexture:v16 inoutFlashChromaTexture:v17 gamma:v27];
      if (v24)
      {
        sub_1B824();
      }
    }
  }

  return v24;
}

- (uint64_t)_encodeImageAccumulationOfFirstPyramidLevel:(__n128)level inputAmbientLumaTexture:(__n128)texture inputAmbientChromaTexture:(float)chromaTexture inoutFlashLumaTexture:(uint64_t)lumaTexture inoutFlashChromaTexture:(void *)flashChromaTexture ambientToFlashRegistrationHomography:(void *)homography gamma:(void *)gamma
{
  v30[0] = a2;
  v30[1] = level;
  v30[2] = texture;
  homographyCopy = homography;
  gammaCopy = gamma;
  v19 = a10;
  v20 = a11;
  chromaTextureCopy = chromaTexture;
  computeCommandEncoder = [flashChromaTexture computeCommandEncoder];
  v22 = computeCommandEncoder;
  if (computeCommandEncoder)
  {
    [computeCommandEncoder setComputePipelineState:*(self + 240)];
    [v22 setTexture:*(self + 368) atIndex:0];
    [v22 setTexture:homographyCopy atIndex:1];
    [v22 setTexture:gammaCopy atIndex:2];
    [v22 setTexture:*(self + 24) atIndex:3];
    [v22 setTexture:*(self + 48) atIndex:4];
    [v22 setTexture:v19 atIndex:5];
    [v22 setTexture:v20 atIndex:6];
    [v22 setBytes:&chromaTextureCopy length:4 atIndex:0];
    [v22 setBytes:v30 length:48 atIndex:1];
    threadExecutionWidth = [*(self + 240) threadExecutionWidth];
    v24 = [*(self + 240) maxTotalThreadsPerThreadgroup] / threadExecutionWidth;
    v28[0] = [v19 width];
    v28[1] = [v19 height];
    v28[2] = 1;
    v27[0] = threadExecutionWidth;
    v27[1] = v24;
    v27[2] = 1;
    [v22 dispatchThreads:v28 threadsPerThreadgroup:v27];
    [v22 endEncoding];
    v25 = 0;
  }

  else
  {
    sub_1B8A0();
    v25 = 10;
  }

  return v25;
}

- (int)_encodeImageAccumulationOfSecondToLastPyramidLevels:(id)levels inoutFlashLumaTexture:(id)texture inoutFlashChromaTexture:(id)chromaTexture gamma:(float)gamma
{
  textureCopy = texture;
  chromaTextureCopy = chromaTexture;
  gammaCopy = gamma;
  computeCommandEncoder = [levels computeCommandEncoder];
  if (computeCommandEncoder)
  {
    if ([(CMIColourConstancyClippingRecoveryConfigurationV1 *)self->_config pyramidNumLevels]>= 2)
    {
      v13 = &self->_rgbPyramidTextures[0][1];
      v14 = -1;
      do
      {
        [computeCommandEncoder setComputePipelineState:self->_imageReconstructionPipelineStates[1]];
        [computeCommandEncoder setTexture:self->_fusionMapTexture atIndex:0];
        [computeCommandEncoder setTexture:*(v13 - 1) atIndex:1];
        [computeCommandEncoder setTexture:v13[2] atIndex:2];
        [computeCommandEncoder setTexture:*v13 atIndex:3];
        [computeCommandEncoder setTexture:v13[3] atIndex:4];
        [computeCommandEncoder setTexture:textureCopy atIndex:5];
        [computeCommandEncoder setTexture:chromaTextureCopy atIndex:6];
        [computeCommandEncoder setBytes:&gammaCopy length:4 atIndex:0];
        threadExecutionWidth = [(MTLComputePipelineState *)self->_imageReconstructionPipelineStates[1] threadExecutionWidth];
        v16 = [(MTLComputePipelineState *)self->_imageReconstructionPipelineStates[1] maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
        width = [textureCopy width];
        height = [textureCopy height];
        v22[0] = width;
        v22[1] = height;
        v22[2] = 1;
        v21[0] = threadExecutionWidth;
        v21[1] = v16;
        v21[2] = 1;
        [computeCommandEncoder dispatchThreads:v22 threadsPerThreadgroup:v21];
        ++v14;
        ++v13;
      }

      while (v14 < [(CMIColourConstancyClippingRecoveryConfigurationV1 *)self->_config pyramidNumLevels]- 2);
    }

    [computeCommandEncoder endEncoding];
    v19 = 0;
  }

  else
  {
    sub_1B914();
    v19 = 10;
  }

  return v19;
}

- (int)_encodeImageAccumulationOfFusedThumbnail:(id)thumbnail inoutFlashLumaTexture:(id)texture inoutFlashChromaTexture:(id)chromaTexture gamma:(float)gamma
{
  textureCopy = texture;
  chromaTextureCopy = chromaTexture;
  gammaCopy = gamma;
  computeCommandEncoder = [thumbnail computeCommandEncoder];
  v13 = computeCommandEncoder;
  if (computeCommandEncoder)
  {
    [computeCommandEncoder setComputePipelineState:self->_imageReconstructionPipelineStates[2]];
    [v13 setTexture:self->_rgbPyramidTextures[1][2] atIndex:0];
    [v13 setTexture:self->_flashFusedThumbnailImageTextures[0] atIndex:1];
    [v13 setTexture:self->_flashFusedThumbnailImageTextures[1] atIndex:2];
    [v13 setTexture:self->_flashFusedThumbnailImageTextures[2] atIndex:3];
    [v13 setTexture:self->_fusionMapTexture atIndex:4];
    [v13 setTexture:self->_scrapMemoryRGBA32Textures[0] atIndex:5];
    [v13 setTexture:self->_scrapMemoryRGBA32Textures[1] atIndex:6];
    [v13 setTexture:self->_scrapMemoryRGBA32Textures[2] atIndex:7];
    threadExecutionWidth = [(MTLComputePipelineState *)self->_imageReconstructionPipelineStates[2] threadExecutionWidth];
    v15 = [(MTLComputePipelineState *)self->_imageReconstructionPipelineStates[2] maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
    width = [(MTLTexture *)self->_scrapMemoryRGBA32Textures[0] width];
    height = [(MTLTexture *)self->_scrapMemoryRGBA32Textures[0] height];
    v31 = width;
    v32 = height;
    v33 = 1;
    v28 = threadExecutionWidth;
    v29 = v15;
    v30 = 1;
    [v13 dispatchThreads:&v31 threadsPerThreadgroup:&v28];
    [v13 setComputePipelineState:self->_imageReconstructionPipelineStates[3]];
    [v13 setTexture:self->_scrapMemoryRGBA32Textures[0] atIndex:0];
    [v13 setTexture:self->_scrapMemoryRGBA32Textures[1] atIndex:1];
    [v13 setTexture:self->_scrapMemoryRGBA32Textures[2] atIndex:2];
    [v13 setTexture:self->_offsetTextures[0] atIndex:3];
    [v13 setTexture:self->_offsetTextures[1] atIndex:4];
    threadExecutionWidth2 = [(MTLComputePipelineState *)self->_imageReconstructionPipelineStates[3] threadExecutionWidth];
    v19 = [(MTLComputePipelineState *)self->_imageReconstructionPipelineStates[3] maxTotalThreadsPerThreadgroup]/ threadExecutionWidth2;
    width2 = [(MTLTexture *)self->_offsetTextures[0] width];
    height2 = [(MTLTexture *)self->_offsetTextures[0] height];
    v31 = width2;
    v32 = height2;
    v33 = 1;
    v28 = threadExecutionWidth2;
    v29 = v19;
    v30 = 1;
    [v13 dispatchThreads:&v31 threadsPerThreadgroup:&v28];
    [v13 setComputePipelineState:self->_imageReconstructionPipelineStates[4]];
    [v13 setTexture:self->_rgbPyramidTextures[1][2] atIndex:0];
    [v13 setTexture:self->_flashFusedThumbnailImageTextures[0] atIndex:1];
    [v13 setTexture:self->_flashFusedThumbnailImageTextures[1] atIndex:2];
    [v13 setTexture:self->_flashFusedThumbnailImageTextures[2] atIndex:3];
    [v13 setTexture:self->_fusionMapTexture atIndex:4];
    [v13 setTexture:self->_offsetTextures[0] atIndex:5];
    [v13 setTexture:self->_offsetTextures[1] atIndex:6];
    [v13 setTexture:textureCopy atIndex:7];
    [v13 setTexture:chromaTextureCopy atIndex:8];
    [v13 setBytes:&gammaCopy length:4 atIndex:0];
    threadExecutionWidth3 = [(MTLComputePipelineState *)self->_imageReconstructionPipelineStates[4] threadExecutionWidth];
    v23 = [(MTLComputePipelineState *)self->_imageReconstructionPipelineStates[4] maxTotalThreadsPerThreadgroup]/ threadExecutionWidth3;
    width3 = [textureCopy width];
    height3 = [textureCopy height];
    v31 = width3;
    v32 = height3;
    v33 = 1;
    v28 = threadExecutionWidth3;
    v29 = v23;
    v30 = 1;
    [v13 dispatchThreads:&v31 threadsPerThreadgroup:&v28];
    [v13 endEncoding];
    v26 = 0;
  }

  else
  {
    sub_1B988();
    v26 = 10;
  }

  return v26;
}

- (int)_fusionMapExtraction:(id)extraction
{
  v3 = [(CMIColourConstancyMicroHazeDetectionV1 *)self->_microHazeDetection microHazeFusionMapExtraction:extraction inputAmbientTexture:self->_rgbPyramidTextures[0][0] inputFlashTexture:self->_rgbPyramidTextures[1][0] outputFusionMapTexture:self->_fusionMapTexture];
  if (v3)
  {
    sub_1B9FC();
  }

  return v3;
}

- (id)_encodeColourAccuracyClippedRegionRecovery:(double)recovery inputAmbientLumaTexture:(double)texture inputAmbientChromaTexture:(uint64_t)chromaTexture inoutFlashLumaTexture:(void *)lumaTexture inoutFlashChromaTexture:(void *)flashChromaTexture ambientToFlashRegistrationHomography:(void *)homography
{
  lumaTextureCopy = lumaTexture;
  flashChromaTextureCopy = flashChromaTexture;
  homographyCopy = homography;
  v18 = a9;
  v19 = a10;
  if (lumaTextureCopy)
  {
    v20 = [self _encodeImagePyramidGeneration:lumaTextureCopy inputAmbientLumaTexture:flashChromaTextureCopy inputAmbientChromaTexture:homographyCopy inoutFlashLumaTexture:v18 inoutFlashChromaTexture:v19 ambientToFlashRegistrationHomography:{a2, recovery, texture}];
    if (v20)
    {
      v25 = v20;
      sub_1BA78();
    }

    else
    {
      v21 = [self _fusionMapExtraction:lumaTextureCopy];
      if (v21)
      {
        v25 = v21;
        sub_1BAF0();
      }

      else
      {
        v22 = [self _encodeGradientExtraction:lumaTextureCopy frame:0];
        if (v22)
        {
          v25 = v22;
          sub_1BB6C();
        }

        else
        {
          v23 = [self _encodeGradientExtraction:lumaTextureCopy frame:1];
          if (v23)
          {
            v25 = v23;
            sub_1BBE4();
          }

          else
          {
            v24 = [self _encodeGradientImageFusion:lumaTextureCopy];
            if (v24)
            {
              v25 = v24;
              sub_1BC5C();
            }

            else
            {
              v25 = [self _encodeImageReconstruction:lumaTextureCopy inputAmbientLumaTexture:flashChromaTextureCopy inputAmbientChromaTexture:homographyCopy inoutFlashLumaTexture:v18 inoutFlashChromaTexture:v19 ambientToFlashRegistrationHomography:{a2, recovery, texture}];
              if (v25)
              {
                sub_1BCD4();
              }
            }
          }
        }
      }
    }
  }

  else
  {
    sub_1BD4C();
    v25 = &dword_8 + 2;
  }

  return v25;
}

- (id)applyClippedRegionRecovery:(void *)recovery inputAmbientLumaTexture:inputAmbientChromaTexture:inoutFlashLumaTexture:inoutFlashChromaTexture:ambientToFlashRegistrationHomography:
{
  v1 = [recovery _encodeColourAccuracyClippedRegionRecovery:? inputAmbientLumaTexture:? inputAmbientChromaTexture:? inoutFlashLumaTexture:? inoutFlashChromaTexture:? ambientToFlashRegistrationHomography:?];
  if (v1)
  {
    sub_1BDC0();
  }

  return v1;
}

@end