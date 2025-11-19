@interface CMIColourConstancyClippingRecoveryV1
- (CMIColourConstancyClippingRecoveryV1)initWithMetalContext:(id)a3;
- (id)_encodeColourAccuracyClippedRegionRecovery:(double)a3 inputAmbientLumaTexture:(double)a4 inputAmbientChromaTexture:(uint64_t)a5 inoutFlashLumaTexture:(void *)a6 inoutFlashChromaTexture:(void *)a7 ambientToFlashRegistrationHomography:(void *)a8;
- (id)_encodeImagePyramidGeneration:(double)a3 inputAmbientLumaTexture:(double)a4 inputAmbientChromaTexture:(uint64_t)a5 inoutFlashLumaTexture:(void *)a6 inoutFlashChromaTexture:(void *)a7 ambientToFlashRegistrationHomography:(void *)a8;
- (id)_encodeImageReconstruction:(double)a3 inputAmbientLumaTexture:(double)a4 inputAmbientChromaTexture:(uint64_t)a5 inoutFlashLumaTexture:(void *)a6 inoutFlashChromaTexture:(void *)a7 ambientToFlashRegistrationHomography:(void *)a8;
- (id)applyClippedRegionRecovery:(void *)a1 inputAmbientLumaTexture:inputAmbientChromaTexture:inoutFlashLumaTexture:inoutFlashChromaTexture:ambientToFlashRegistrationHomography:;
- (int)_encodeGradientExtraction:(id)a3 frame:(int)a4 channel:(int)a5;
- (int)_encodeGradientImageFusion:(id)a3;
- (int)_encodeGradientImageFusion:(id)a3 channel:(int)a4;
- (int)_encodeImageAccumulationOfFusedThumbnail:(id)a3 inoutFlashLumaTexture:(id)a4 inoutFlashChromaTexture:(id)a5 gamma:(float)a6;
- (int)_encodeImageAccumulationOfSecondToLastPyramidLevels:(id)a3 inoutFlashLumaTexture:(id)a4 inoutFlashChromaTexture:(id)a5 gamma:(float)a6;
- (int)_encodeSecondToLastLevelsPyramidGeneration:(id)a3 kernelRadius:(int)a4 sigma:(float)a5;
- (int)_fusionMapExtraction:(id)a3;
- (int)prepareToProcessWithConfig:(id)a3;
- (int)purgeResources;
- (uint64_t)_encodeFirstLevelPyramidGeneration:(__n128)a3 inputAmbientLumaTexture:(__n128)a4 inputAmbientChromaTexture:(float)a5 inoutFlashLumaTexture:(float)a6 inoutFlashChromaTexture:(float)a7 ambientToFlashRegistrationHomography:(uint64_t)a8 scalar:(void *)a9 exponent:(void *)a10 gamma:(void *)a11;
- (uint64_t)_encodeImageAccumulationOfFirstPyramidLevel:(__n128)a3 inputAmbientLumaTexture:(__n128)a4 inputAmbientChromaTexture:(float)a5 inoutFlashLumaTexture:(uint64_t)a6 inoutFlashChromaTexture:(void *)a7 ambientToFlashRegistrationHomography:(void *)a8 gamma:(void *)a9;
@end

@implementation CMIColourConstancyClippingRecoveryV1

- (CMIColourConstancyClippingRecoveryV1)initWithMetalContext:(id)a3
{
  v5 = a3;
  v34.receiver = self;
  v34.super_class = CMIColourConstancyClippingRecoveryV1;
  v6 = [(CMIColourConstancyClippingRecoveryV1 *)&v34 init];
  v7 = v6;
  if (v6)
  {
    if (v5)
    {
      objc_storeStrong(&v6->_metalContext, a3);
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

- (int)prepareToProcessWithConfig:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    sub_1AC00();
    v7 = 0;
    v93 = 8;
    goto LABEL_35;
  }

  objc_storeStrong(&self->_config, a3);
  v6 = [(FigMetalContext *)self->_metalContext allocator];
  v7 = [v6 newTextureDescriptor];

  if (!v7)
  {
    sub_1AB8C();
    v93 = 7;
    goto LABEL_35;
  }

  v96 = v5;
  v8 = [v7 desc];
  [v8 setTextureType:2];

  v9 = [v7 desc];
  [v9 setPixelFormat:115];

  v10 = [(CMIColourConstancyClippingRecoveryConfigurationV1 *)self->_config pyramidLastLevelWidth];
  v11 = [v7 desc];
  [v11 setWidth:v10];

  v12 = [(CMIColourConstancyClippingRecoveryConfigurationV1 *)self->_config pyramidLastLevelHeight];
  v13 = [v7 desc];
  [v13 setHeight:v12];

  v14 = [(CMIColourConstancyClippingRecoveryConfigurationV1 *)self->_config pyramidNumLevels];
  v15 = (v14 - 1);
  if (v14 >= 1)
  {
    v16 = v14 + 1;
    v17 = &self->_rgbPyramidTextures[0][v14 + 2];
    while (1)
    {
      v18 = [NSString stringWithFormat:@"ColourConstancyV1->Core->ClippingRecovery->ambientRGBPyramidTexture%d", v15];
      [v7 setLabel:v18];

      v19 = [(FigMetalContext *)self->_metalContext allocator];
      v20 = [v19 newTextureWithDescriptor:v7];
      v21 = *(v17 - 3);
      *(v17 - 3) = v20;

      if (!*(v17 - 3))
      {
        break;
      }

      v22 = [NSString stringWithFormat:@"ColourConstancyV1->Core->ClippingRecovery->flashRGBPyramidTexture%d", v15];
      [v7 setLabel:v22];

      v23 = [(FigMetalContext *)self->_metalContext allocator];
      v24 = [v23 newTextureWithDescriptor:v7];
      v25 = *v17;
      *v17 = v24;

      if (!*v17)
      {
        sub_1AAA4();
        goto LABEL_48;
      }

      v26 = [v7 desc];
      [v26 setWidth:{2 * objc_msgSend(v26, "width")}];
      v27 = [v7 desc];
      [v27 setHeight:{2 * objc_msgSend(v27, "height")}];

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
    v5 = v96;
    goto LABEL_35;
  }

LABEL_8:
  v28 = [(CMIColourConstancyClippingRecoveryConfigurationV1 *)self->_config pyramidLastLevelWidth];
  v29 = [v7 desc];
  [v29 setWidth:v28];

  v30 = [(CMIColourConstancyClippingRecoveryConfigurationV1 *)self->_config pyramidLastLevelHeight];
  v31 = [v7 desc];
  [v31 setHeight:v30];

  v32 = [v7 desc];
  [v32 setPixelFormat:65];

  v33 = self->_imageGradientTextures[1];
  v34 = -3;
  do
  {
    v35 = [NSString stringWithFormat:@"ColourConstancyV1->Core->ClippingRecovery->ambientGradientsTexture%d", v34 + 3];
    [v7 setLabel:v35];

    v36 = [(FigMetalContext *)self->_metalContext allocator];
    v37 = [v36 newTextureWithDescriptor:v7];
    v38 = *(v33 - 3);
    *(v33 - 3) = v37;

    if (!*(v33 - 3))
    {
      sub_1AA30();
      goto LABEL_48;
    }

    v39 = [NSString stringWithFormat:@"ColourConstancyV1->Core->ClippingRecovery->flashGradientsTexture%d", v34 + 3];
    [v7 setLabel:v39];

    v40 = [(FigMetalContext *)self->_metalContext allocator];
    v41 = [v40 newTextureWithDescriptor:v7];
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
  v44 = [v7 desc];
  [v44 setPixelFormat:25];

  v45 = 0;
  flashFusedThumbnailImageTextures = self->_flashFusedThumbnailImageTextures;
  do
  {
    v47 = [NSString stringWithFormat:@"ColourConstancyV1->Core->ClippingRecovery->flashFusedThumbnailImageTextures%d", v45];
    [v7 setLabel:v47];

    v48 = [(FigMetalContext *)self->_metalContext allocator];
    v49 = [v48 newTextureWithDescriptor:v7];
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
  v51 = [v7 desc];
  [v51 setPixelFormat:25];

  [v7 setLabel:@"ColourConstancyV1->Core->ClippingRecovery->fusionMapTexture"];
  v52 = [(FigMetalContext *)self->_metalContext allocator];
  v53 = [v52 newTextureWithDescriptor:v7];
  fusionMapTexture = self->_fusionMapTexture;
  self->_fusionMapTexture = v53;

  if (!self->_fusionMapTexture)
  {
    sub_1A8D4();
    goto LABEL_48;
  }

  v55 = [(CMIColourConstancyClippingRecoveryConfigurationV1 *)self->_config pyramidLastLevelWidth];
  v95 = 2 * v55;
  v56 = [(CMIColourConstancyClippingRecoveryConfigurationV1 *)self->_config pyramidLastLevelHeight];
  v57 = 4 * (2 * v56 * 4 * v55);
  scrapMemoryBuffers = self->_scrapMemoryBuffers;
  v59 = (4 * v55);
  v97 = (2 * v56);
  v60 = 3;
  while (2)
  {
    v61 = [(FigMetalContext *)self->_metalContext device];
    v62 = [v61 newBufferWithLength:v57 options:0];
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
    v70 = [(CMIColourConstancyClippingRecoveryConfigurationV1 *)self->_config pyramidLastLevelWidth];
    v71 = v70 + 15;
    if (v70 >= 0)
    {
      v71 = v70;
    }

    v72 = v71 >> 4;
    v73 = [(CMIColourConstancyClippingRecoveryConfigurationV1 *)self->_config pyramidLastLevelHeight];
    v74 = v73 + 15;
    if (v73 >= 0)
    {
      v74 = v73;
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

  v79 = [v7 desc];
  [v79 setPixelFormat:125];

  v80 = [v7 desc];
  [v80 setWidth:1];

  v81 = [v7 desc];
  [v81 setHeight:1];

  [v7 setLabel:@"ColourConstancyV1->Core->ClippingRecovery->offsetTextures0"];
  v82 = [(FigMetalContext *)self->_metalContext allocator];
  v83 = [v82 newTextureWithDescriptor:v7];
  v84 = self->_offsetTextures[0];
  self->_offsetTextures[0] = v83;

  if (!self->_offsetTextures[0])
  {
    sub_1A61C();
    goto LABEL_48;
  }

  [v7 setLabel:@"ColourConstancyV1->Core->ClippingRecovery->offsetTextures1"];
  v85 = [(FigMetalContext *)self->_metalContext allocator];
  v86 = [v85 newTextureWithDescriptor:v7];
  v87 = self->_offsetTextures[1];
  self->_offsetTextures[1] = v86;

  if (!self->_offsetTextures[1])
  {
    sub_1A5A8();
    goto LABEL_48;
  }

  v88 = [(FigMetalContext *)self->_metalContext device];
  v89 = [CMIFFT CMIFFT2DTransform:v88 figMetalContext:0 width:v95 height:v97 layout:0 precision:0];
  fftTransform = self->_fftTransform;
  self->_fftTransform = v89;

  if (!self->_fftTransform)
  {
    sub_1A534();
    goto LABEL_48;
  }

  microHazeDetection = self->_microHazeDetection;
  v92 = [(CMIColourConstancyClippingRecoveryConfigurationV1 *)self->_config microHazeDetectionConfig];
  [(CMIColourConstancyMicroHazeDetectionV1 *)microHazeDetection prepareToProcessWithConfig:v92];

  v5 = v96;
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

- (id)_encodeImagePyramidGeneration:(double)a3 inputAmbientLumaTexture:(double)a4 inputAmbientChromaTexture:(uint64_t)a5 inoutFlashLumaTexture:(void *)a6 inoutFlashChromaTexture:(void *)a7 ambientToFlashRegistrationHomography:(void *)a8
{
  v15 = a6;
  v16 = a1[2];
  v17 = a10;
  v18 = a9;
  v19 = a8;
  v20 = a7;
  [v16 clippedLikelihoodScalar];
  v22 = v21;
  [a1[2] clippedLikelihoodExponent];
  v24 = v23;
  [a1[2] gamma];
  LODWORD(v26) = v25;
  LODWORD(v27) = v22;
  LODWORD(v28) = v24;
  v29 = [a1 _encodeFirstLevelPyramidGeneration:v15 inputAmbientLumaTexture:v20 inputAmbientChromaTexture:v19 inoutFlashLumaTexture:v18 inoutFlashChromaTexture:v17 ambientToFlashRegistrationHomography:a2 scalar:a3 exponent:a4 gamma:{v27, v28, v26}];

  if (v29)
  {
    sub_1AC74();
  }

  else
  {
    v30 = [a1[2] pyramidGaussianKernelRadius];
    [a1[2] pyramidGaussianSigma];
    v29 = [a1 _encodeSecondToLastLevelsPyramidGeneration:v15 kernelRadius:v30 sigma:?];
    if (v29)
    {
      sub_1ACF0();
    }
  }

  return v29;
}

- (uint64_t)_encodeFirstLevelPyramidGeneration:(__n128)a3 inputAmbientLumaTexture:(__n128)a4 inputAmbientChromaTexture:(float)a5 inoutFlashLumaTexture:(float)a6 inoutFlashChromaTexture:(float)a7 ambientToFlashRegistrationHomography:(uint64_t)a8 scalar:(void *)a9 exponent:(void *)a10 gamma:(void *)a11
{
  v38[0] = a2;
  v38[1] = a3;
  v38[2] = a4;
  v21 = a10;
  v22 = a11;
  v23 = a12;
  v24 = a13;
  v36 = a6;
  v37 = a5;
  v35 = a7;
  v25 = [a9 computeCommandEncoder];
  v26 = v25;
  if (v25)
  {
    [v25 setComputePipelineState:*(a1 + 160)];
    [v26 setTexture:v21 atIndex:0];
    [v26 setTexture:v22 atIndex:1];
    [v26 setTexture:v23 atIndex:2];
    [v26 setTexture:v24 atIndex:3];
    [v26 setTexture:*(a1 + 24) atIndex:4];
    [v26 setTexture:*(a1 + 48) atIndex:5];
    [v26 setBytes:&v37 length:4 atIndex:0];
    [v26 setBytes:&v36 length:4 atIndex:1];
    [v26 setBytes:&v35 length:4 atIndex:2];
    [v26 setBytes:v38 length:48 atIndex:3];
    v27 = [*(a1 + 160) threadExecutionWidth];
    v28 = [*(a1 + 160) maxTotalThreadsPerThreadgroup] / v27;
    v29 = [*(a1 + 24) width];
    v30 = [*(a1 + 24) height];
    v34[0] = v29;
    v34[1] = v30;
    v34[2] = 1;
    v33[0] = v27;
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

- (int)_encodeSecondToLastLevelsPyramidGeneration:(id)a3 kernelRadius:(int)a4 sigma:(float)a5
{
  v22 = a4;
  v21 = a5;
  v6 = [a3 computeCommandEncoder];
  if (v6)
  {
    v7 = 0;
    rgbPyramidTextures = self->_rgbPyramidTextures;
    v9 = self->_rgbPyramidTextures[1];
    v10 = 1;
    do
    {
      v11 = v10;
      [v6 setComputePipelineState:self->_imagePyramidGenerationPipelineStates[1]];
      [v6 setTexture:(*rgbPyramidTextures)[v7] atIndex:0];
      [v6 setTexture:v9[v7] atIndex:1];
      v12 = 8 * v7 + 8;
      [v6 setTexture:*(rgbPyramidTextures + v12) atIndex:2];
      [v6 setTexture:*(v9 + v12) atIndex:3];
      [v6 setBytes:&v22 length:4 atIndex:0];
      [v6 setBytes:&v21 length:4 atIndex:1];
      v13 = [(MTLComputePipelineState *)self->_imagePyramidGenerationPipelineStates[1] threadExecutionWidth];
      v14 = [(MTLComputePipelineState *)self->_imagePyramidGenerationPipelineStates[1] maxTotalThreadsPerThreadgroup]/ v13;
      v15 = [*(rgbPyramidTextures + v12) width];
      v16 = [*(rgbPyramidTextures + v12) height];
      v20[0] = v15;
      v20[1] = v16;
      v20[2] = 1;
      v19[0] = v13;
      v19[1] = v14;
      v19[2] = 1;
      [v6 dispatchThreads:v20 threadsPerThreadgroup:v19];
      v10 = 0;
      v7 = 1;
    }

    while ((v11 & 1) != 0);
    [v6 endEncoding];
    v17 = 0;
  }

  else
  {
    sub_1ADE0();
    v17 = 10;
  }

  return v17;
}

- (int)_encodeGradientExtraction:(id)a3 frame:(int)a4 channel:(int)a5
{
  v8 = a3;
  v48 = a5;
  v9 = [v8 computeCommandEncoder];
  if (!v9)
  {
    sub_1B24C();
LABEL_16:
    LODWORD(v30) = 10;
    goto LABEL_8;
  }

  v10 = v9;
  [v9 setComputePipelineState:self->_gradientExtractionPipelineStates[0]];
  [v10 setTexture:self->_rgbPyramidTextures[a4][2] atIndex:0];
  [v10 setTexture:self->_scrapMemoryR32Textures[0] atIndex:1];
  [v10 setBytes:&v48 length:4 atIndex:0];
  v11 = [(MTLComputePipelineState *)self->_gradientExtractionPipelineStates[0] threadExecutionWidth];
  v12 = [(MTLComputePipelineState *)self->_gradientExtractionPipelineStates[0] maxTotalThreadsPerThreadgroup]/ v11;
  v13 = [(MTLTexture *)self->_scrapMemoryR32Textures[0] width]>> 1;
  v14 = [(MTLTexture *)self->_scrapMemoryR32Textures[0] height];
  v45 = v13;
  v46 = v14;
  v47 = 1;
  v42 = v11;
  v43 = v12;
  v44 = 1;
  [v10 dispatchThreads:&v45 threadsPerThreadgroup:&v42];
  [v10 endEncoding];
  fftTransform = self->_fftTransform;
  v16 = [(MTLTexture *)self->_scrapMemoryR32Textures[0] buffer];
  v17 = [(CMIFFTTransform *)fftTransform encodeToCommandBuffer:v8 inputBuffer:v16 direction:1];

  if (v17)
  {
    sub_1AFC8(v17, v10, &v45);
LABEL_13:
    LODWORD(v30) = v45;
    goto LABEL_8;
  }

  v18 = [v8 computeCommandEncoder];

  if (!v18)
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
  [v18 setComputePipelineState:self->_gradientExtractionPipelineStates[1]];
  [v18 setTexture:self->_scrapMemoryR32Textures[0] atIndex:0];
  [v18 setTexture:self->_scrapMemoryR32Textures[1] atIndex:1];
  [v18 setTexture:self->_scrapMemoryR32Textures[2] atIndex:2];
  [v18 setBytes:&v41 length:8 atIndex:0];
  [v18 setBytes:&v40 length:8 atIndex:1];
  v21 = [(MTLComputePipelineState *)self->_gradientExtractionPipelineStates[1] threadExecutionWidth];
  v22 = [(MTLComputePipelineState *)self->_gradientExtractionPipelineStates[1] maxTotalThreadsPerThreadgroup]/ v21;
  v23 = [(MTLTexture *)self->_scrapMemoryR32Textures[0] width]>> 1;
  v24 = [(MTLTexture *)self->_scrapMemoryR32Textures[0] height];
  v45 = v23;
  v46 = v24;
  v47 = 1;
  v42 = v21;
  v43 = v22;
  v44 = 1;
  [v18 dispatchThreads:&v45 threadsPerThreadgroup:&v42];
  [v18 endEncoding];
  v25 = self->_fftTransform;
  v26 = [(MTLTexture *)self->_scrapMemoryR32Textures[1] buffer];
  v27 = [(CMIFFTTransform *)v25 encodeToCommandBuffer:v8 inputBuffer:v26 direction:-1];

  if (v27)
  {
    sub_1B050(v27, v18, &v45);
    goto LABEL_13;
  }

  v28 = self->_fftTransform;
  v29 = [(MTLTexture *)self->_scrapMemoryR32Textures[2] buffer];
  v30 = [(CMIFFTTransform *)v28 encodeToCommandBuffer:v8 inputBuffer:v29 direction:-1];

  if (v30)
  {
    sub_1B0D8(v30, v18);
    goto LABEL_8;
  }

  v31 = [v8 computeCommandEncoder];

  if (!v31)
  {
    sub_1B164();
    goto LABEL_16;
  }

  [v31 setComputePipelineState:self->_gradientExtractionPipelineStates[2]];
  [v31 setTexture:self->_scrapMemoryR32Textures[1] atIndex:0];
  [v31 setTexture:self->_scrapMemoryR32Textures[2] atIndex:1];
  v32 = self->_imageGradientTextures[a4];
  [v31 setTexture:v32[v48] atIndex:2];
  v33 = [(MTLComputePipelineState *)self->_gradientExtractionPipelineStates[2] threadExecutionWidth];
  v34 = [(MTLComputePipelineState *)self->_gradientExtractionPipelineStates[2] maxTotalThreadsPerThreadgroup]/ v33;
  v35 = [(MTLTexture *)v32[v48] width];
  v36 = [(MTLTexture *)v32[v48] height];
  v45 = v35;
  v46 = v36;
  v47 = 1;
  v42 = v33;
  v43 = v34;
  v44 = 1;
  [v31 dispatchThreads:&v45 threadsPerThreadgroup:&v42];
  [v31 endEncoding];

LABEL_8:
  return v30;
}

- (int)_encodeGradientImageFusion:(id)a3
{
  v4 = a3;
  v5 = [(CMIColourConstancyClippingRecoveryV1 *)self _encodeGradientImageFusion:v4 channel:0];
  if (v5)
  {
    v7 = v5;
    sub_1B2C0();
  }

  else
  {
    v6 = [(CMIColourConstancyClippingRecoveryV1 *)self _encodeGradientImageFusion:v4 channel:1];
    if (v6)
    {
      v7 = v6;
      sub_1B33C();
    }

    else
    {
      v7 = [(CMIColourConstancyClippingRecoveryV1 *)self _encodeGradientImageFusion:v4 channel:2];
      if (v7)
      {
        sub_1B3B8();
      }
    }
  }

  return v7;
}

- (int)_encodeGradientImageFusion:(id)a3 channel:(int)a4
{
  v6 = a3;
  v7 = [v6 computeCommandEncoder];
  if (!v7)
  {
    sub_1B6B8();
LABEL_16:
    LODWORD(v29) = 10;
    goto LABEL_8;
  }

  v8 = v7;
  [v7 setComputePipelineState:self->_gradientImageFusionPipelineStates[2]];
  v9 = &self->super.isa + a4;
  [v8 setTexture:v9[9] atIndex:0];
  [v8 setTexture:v9[12] atIndex:1];
  [v8 setTexture:self->_fusionMapTexture atIndex:2];
  [v8 setTexture:self->_scrapMemoryR32Textures[0] atIndex:3];
  [v8 setTexture:self->_scrapMemoryR32Textures[1] atIndex:4];
  v10 = [(MTLComputePipelineState *)self->_gradientImageFusionPipelineStates[2] threadExecutionWidth];
  v11 = [(MTLComputePipelineState *)self->_gradientImageFusionPipelineStates[2] maxTotalThreadsPerThreadgroup]/ v10;
  v12 = [(MTLTexture *)self->_scrapMemoryR32Textures[0] width]>> 1;
  v13 = [(MTLTexture *)self->_scrapMemoryR32Textures[0] height];
  v44 = v12;
  v45 = v13;
  v46 = 1;
  v41 = v10;
  v42 = v11;
  v43 = 1;
  [v8 dispatchThreads:&v44 threadsPerThreadgroup:&v41];
  [v8 endEncoding];
  fftTransform = self->_fftTransform;
  v15 = [(MTLTexture *)self->_scrapMemoryR32Textures[0] buffer];
  v16 = [(CMIFFTTransform *)fftTransform encodeToCommandBuffer:v6 inputBuffer:v15 direction:1];

  if (v16)
  {
    sub_1B434(v16, v8, &v44);
LABEL_12:
    LODWORD(v29) = v44;
    goto LABEL_8;
  }

  v17 = self->_fftTransform;
  v18 = [(MTLTexture *)self->_scrapMemoryR32Textures[1] buffer];
  v19 = [(CMIFFTTransform *)v17 encodeToCommandBuffer:v6 inputBuffer:v18 direction:1];

  if (v19)
  {
    sub_1B4BC(v19, v8, &v44);
    goto LABEL_12;
  }

  v20 = [v6 computeCommandEncoder];

  if (!v20)
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
  [v20 setComputePipelineState:self->_gradientImageFusionPipelineStates[3]];
  [v20 setTexture:self->_scrapMemoryR32Textures[0] atIndex:0];
  [v20 setTexture:self->_scrapMemoryR32Textures[1] atIndex:1];
  [v20 setTexture:self->_scrapMemoryR32Textures[2] atIndex:2];
  [v20 setBytes:&v40 length:8 atIndex:0];
  [v20 setBytes:&v39 length:8 atIndex:1];
  v23 = [(MTLComputePipelineState *)self->_gradientImageFusionPipelineStates[3] threadExecutionWidth];
  v24 = [(MTLComputePipelineState *)self->_gradientImageFusionPipelineStates[3] maxTotalThreadsPerThreadgroup]/ v23;
  v25 = [(MTLTexture *)self->_scrapMemoryR32Textures[0] width]>> 1;
  v26 = [(MTLTexture *)self->_scrapMemoryR32Textures[0] height];
  v44 = v25;
  v45 = v26;
  v46 = 1;
  v41 = v23;
  v42 = v24;
  v43 = 1;
  [v20 dispatchThreads:&v44 threadsPerThreadgroup:&v41];
  [v20 endEncoding];
  v27 = self->_fftTransform;
  v28 = [(MTLTexture *)self->_scrapMemoryR32Textures[2] buffer];
  v29 = [(CMIFFTTransform *)v27 encodeToCommandBuffer:v6 inputBuffer:v28 direction:-1];

  if (v29)
  {
    sub_1B544(v29, v20);
    goto LABEL_8;
  }

  v30 = [v6 computeCommandEncoder];

  if (!v30)
  {
    sub_1B5D0();
    goto LABEL_16;
  }

  [v30 setComputePipelineState:self->_gradientImageFusionPipelineStates[4]];
  [v30 setTexture:self->_scrapMemoryR32Textures[2] atIndex:0];
  v31 = &self->super.isa + a4;
  [v30 setTexture:v31[17] atIndex:1];
  v32 = [(MTLComputePipelineState *)self->_gradientImageFusionPipelineStates[4] threadExecutionWidth];
  v33 = [(MTLComputePipelineState *)self->_gradientImageFusionPipelineStates[4] maxTotalThreadsPerThreadgroup]/ v32;
  v34 = [(objc_class *)v31[17] width];
  v35 = [(objc_class *)v31[17] height];
  v44 = v34;
  v45 = v35;
  v46 = 1;
  v41 = v32;
  v42 = v33;
  v43 = 1;
  [v30 dispatchThreads:&v44 threadsPerThreadgroup:&v41];
  [v30 endEncoding];

LABEL_8:
  return v29;
}

- (id)_encodeImageReconstruction:(double)a3 inputAmbientLumaTexture:(double)a4 inputAmbientChromaTexture:(uint64_t)a5 inoutFlashLumaTexture:(void *)a6 inoutFlashChromaTexture:(void *)a7 ambientToFlashRegistrationHomography:(void *)a8
{
  v15 = a6;
  v16 = a9;
  v17 = a10;
  v18 = a1[2];
  v19 = a8;
  v20 = a7;
  [v18 gamma];
  v22 = v21;
  LODWORD(v23) = v21;
  v24 = [a1 _encodeImageAccumulationOfFirstPyramidLevel:v15 inputAmbientLumaTexture:v20 inputAmbientChromaTexture:v19 inoutFlashLumaTexture:v16 inoutFlashChromaTexture:v17 ambientToFlashRegistrationHomography:a2 gamma:{a3, a4, v23}];

  if (v24)
  {
    sub_1B72C();
  }

  else
  {
    LODWORD(v25) = v22;
    v26 = [a1 _encodeImageAccumulationOfSecondToLastPyramidLevels:v15 inoutFlashLumaTexture:v16 inoutFlashChromaTexture:v17 gamma:v25];
    if (v26)
    {
      v24 = v26;
      sub_1B7A8();
    }

    else
    {
      LODWORD(v27) = v22;
      v24 = [a1 _encodeImageAccumulationOfFusedThumbnail:v15 inoutFlashLumaTexture:v16 inoutFlashChromaTexture:v17 gamma:v27];
      if (v24)
      {
        sub_1B824();
      }
    }
  }

  return v24;
}

- (uint64_t)_encodeImageAccumulationOfFirstPyramidLevel:(__n128)a3 inputAmbientLumaTexture:(__n128)a4 inputAmbientChromaTexture:(float)a5 inoutFlashLumaTexture:(uint64_t)a6 inoutFlashChromaTexture:(void *)a7 ambientToFlashRegistrationHomography:(void *)a8 gamma:(void *)a9
{
  v30[0] = a2;
  v30[1] = a3;
  v30[2] = a4;
  v17 = a8;
  v18 = a9;
  v19 = a10;
  v20 = a11;
  v29 = a5;
  v21 = [a7 computeCommandEncoder];
  v22 = v21;
  if (v21)
  {
    [v21 setComputePipelineState:*(a1 + 240)];
    [v22 setTexture:*(a1 + 368) atIndex:0];
    [v22 setTexture:v17 atIndex:1];
    [v22 setTexture:v18 atIndex:2];
    [v22 setTexture:*(a1 + 24) atIndex:3];
    [v22 setTexture:*(a1 + 48) atIndex:4];
    [v22 setTexture:v19 atIndex:5];
    [v22 setTexture:v20 atIndex:6];
    [v22 setBytes:&v29 length:4 atIndex:0];
    [v22 setBytes:v30 length:48 atIndex:1];
    v23 = [*(a1 + 240) threadExecutionWidth];
    v24 = [*(a1 + 240) maxTotalThreadsPerThreadgroup] / v23;
    v28[0] = [v19 width];
    v28[1] = [v19 height];
    v28[2] = 1;
    v27[0] = v23;
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

- (int)_encodeImageAccumulationOfSecondToLastPyramidLevels:(id)a3 inoutFlashLumaTexture:(id)a4 inoutFlashChromaTexture:(id)a5 gamma:(float)a6
{
  v10 = a4;
  v11 = a5;
  v23 = a6;
  v12 = [a3 computeCommandEncoder];
  if (v12)
  {
    if ([(CMIColourConstancyClippingRecoveryConfigurationV1 *)self->_config pyramidNumLevels]>= 2)
    {
      v13 = &self->_rgbPyramidTextures[0][1];
      v14 = -1;
      do
      {
        [v12 setComputePipelineState:self->_imageReconstructionPipelineStates[1]];
        [v12 setTexture:self->_fusionMapTexture atIndex:0];
        [v12 setTexture:*(v13 - 1) atIndex:1];
        [v12 setTexture:v13[2] atIndex:2];
        [v12 setTexture:*v13 atIndex:3];
        [v12 setTexture:v13[3] atIndex:4];
        [v12 setTexture:v10 atIndex:5];
        [v12 setTexture:v11 atIndex:6];
        [v12 setBytes:&v23 length:4 atIndex:0];
        v15 = [(MTLComputePipelineState *)self->_imageReconstructionPipelineStates[1] threadExecutionWidth];
        v16 = [(MTLComputePipelineState *)self->_imageReconstructionPipelineStates[1] maxTotalThreadsPerThreadgroup]/ v15;
        v17 = [v10 width];
        v18 = [v10 height];
        v22[0] = v17;
        v22[1] = v18;
        v22[2] = 1;
        v21[0] = v15;
        v21[1] = v16;
        v21[2] = 1;
        [v12 dispatchThreads:v22 threadsPerThreadgroup:v21];
        ++v14;
        ++v13;
      }

      while (v14 < [(CMIColourConstancyClippingRecoveryConfigurationV1 *)self->_config pyramidNumLevels]- 2);
    }

    [v12 endEncoding];
    v19 = 0;
  }

  else
  {
    sub_1B914();
    v19 = 10;
  }

  return v19;
}

- (int)_encodeImageAccumulationOfFusedThumbnail:(id)a3 inoutFlashLumaTexture:(id)a4 inoutFlashChromaTexture:(id)a5 gamma:(float)a6
{
  v10 = a4;
  v11 = a5;
  v34 = a6;
  v12 = [a3 computeCommandEncoder];
  v13 = v12;
  if (v12)
  {
    [v12 setComputePipelineState:self->_imageReconstructionPipelineStates[2]];
    [v13 setTexture:self->_rgbPyramidTextures[1][2] atIndex:0];
    [v13 setTexture:self->_flashFusedThumbnailImageTextures[0] atIndex:1];
    [v13 setTexture:self->_flashFusedThumbnailImageTextures[1] atIndex:2];
    [v13 setTexture:self->_flashFusedThumbnailImageTextures[2] atIndex:3];
    [v13 setTexture:self->_fusionMapTexture atIndex:4];
    [v13 setTexture:self->_scrapMemoryRGBA32Textures[0] atIndex:5];
    [v13 setTexture:self->_scrapMemoryRGBA32Textures[1] atIndex:6];
    [v13 setTexture:self->_scrapMemoryRGBA32Textures[2] atIndex:7];
    v14 = [(MTLComputePipelineState *)self->_imageReconstructionPipelineStates[2] threadExecutionWidth];
    v15 = [(MTLComputePipelineState *)self->_imageReconstructionPipelineStates[2] maxTotalThreadsPerThreadgroup]/ v14;
    v16 = [(MTLTexture *)self->_scrapMemoryRGBA32Textures[0] width];
    v17 = [(MTLTexture *)self->_scrapMemoryRGBA32Textures[0] height];
    v31 = v16;
    v32 = v17;
    v33 = 1;
    v28 = v14;
    v29 = v15;
    v30 = 1;
    [v13 dispatchThreads:&v31 threadsPerThreadgroup:&v28];
    [v13 setComputePipelineState:self->_imageReconstructionPipelineStates[3]];
    [v13 setTexture:self->_scrapMemoryRGBA32Textures[0] atIndex:0];
    [v13 setTexture:self->_scrapMemoryRGBA32Textures[1] atIndex:1];
    [v13 setTexture:self->_scrapMemoryRGBA32Textures[2] atIndex:2];
    [v13 setTexture:self->_offsetTextures[0] atIndex:3];
    [v13 setTexture:self->_offsetTextures[1] atIndex:4];
    v18 = [(MTLComputePipelineState *)self->_imageReconstructionPipelineStates[3] threadExecutionWidth];
    v19 = [(MTLComputePipelineState *)self->_imageReconstructionPipelineStates[3] maxTotalThreadsPerThreadgroup]/ v18;
    v20 = [(MTLTexture *)self->_offsetTextures[0] width];
    v21 = [(MTLTexture *)self->_offsetTextures[0] height];
    v31 = v20;
    v32 = v21;
    v33 = 1;
    v28 = v18;
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
    [v13 setTexture:v10 atIndex:7];
    [v13 setTexture:v11 atIndex:8];
    [v13 setBytes:&v34 length:4 atIndex:0];
    v22 = [(MTLComputePipelineState *)self->_imageReconstructionPipelineStates[4] threadExecutionWidth];
    v23 = [(MTLComputePipelineState *)self->_imageReconstructionPipelineStates[4] maxTotalThreadsPerThreadgroup]/ v22;
    v24 = [v10 width];
    v25 = [v10 height];
    v31 = v24;
    v32 = v25;
    v33 = 1;
    v28 = v22;
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

- (int)_fusionMapExtraction:(id)a3
{
  v3 = [(CMIColourConstancyMicroHazeDetectionV1 *)self->_microHazeDetection microHazeFusionMapExtraction:a3 inputAmbientTexture:self->_rgbPyramidTextures[0][0] inputFlashTexture:self->_rgbPyramidTextures[1][0] outputFusionMapTexture:self->_fusionMapTexture];
  if (v3)
  {
    sub_1B9FC();
  }

  return v3;
}

- (id)_encodeColourAccuracyClippedRegionRecovery:(double)a3 inputAmbientLumaTexture:(double)a4 inputAmbientChromaTexture:(uint64_t)a5 inoutFlashLumaTexture:(void *)a6 inoutFlashChromaTexture:(void *)a7 ambientToFlashRegistrationHomography:(void *)a8
{
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v19 = a10;
  if (v15)
  {
    v20 = [a1 _encodeImagePyramidGeneration:v15 inputAmbientLumaTexture:v16 inputAmbientChromaTexture:v17 inoutFlashLumaTexture:v18 inoutFlashChromaTexture:v19 ambientToFlashRegistrationHomography:{a2, a3, a4}];
    if (v20)
    {
      v25 = v20;
      sub_1BA78();
    }

    else
    {
      v21 = [a1 _fusionMapExtraction:v15];
      if (v21)
      {
        v25 = v21;
        sub_1BAF0();
      }

      else
      {
        v22 = [a1 _encodeGradientExtraction:v15 frame:0];
        if (v22)
        {
          v25 = v22;
          sub_1BB6C();
        }

        else
        {
          v23 = [a1 _encodeGradientExtraction:v15 frame:1];
          if (v23)
          {
            v25 = v23;
            sub_1BBE4();
          }

          else
          {
            v24 = [a1 _encodeGradientImageFusion:v15];
            if (v24)
            {
              v25 = v24;
              sub_1BC5C();
            }

            else
            {
              v25 = [a1 _encodeImageReconstruction:v15 inputAmbientLumaTexture:v16 inputAmbientChromaTexture:v17 inoutFlashLumaTexture:v18 inoutFlashChromaTexture:v19 ambientToFlashRegistrationHomography:{a2, a3, a4}];
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

- (id)applyClippedRegionRecovery:(void *)a1 inputAmbientLumaTexture:inputAmbientChromaTexture:inoutFlashLumaTexture:inoutFlashChromaTexture:ambientToFlashRegistrationHomography:
{
  v1 = [a1 _encodeColourAccuracyClippedRegionRecovery:? inputAmbientLumaTexture:? inputAmbientChromaTexture:? inoutFlashLumaTexture:? inoutFlashChromaTexture:? ambientToFlashRegistrationHomography:?];
  if (v1)
  {
    sub_1BDC0();
  }

  return v1;
}

@end