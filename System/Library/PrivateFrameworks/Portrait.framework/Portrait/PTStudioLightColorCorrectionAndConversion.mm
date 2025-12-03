@interface PTStudioLightColorCorrectionAndConversion
- (PTStudioLightColorCorrectionAndConversion)initWithMetalContext:(id)context correctionColorCube:(id)cube;
- (unsigned)initializeCubeMap:(id)map inputTexture:(id)texture;
@end

@implementation PTStudioLightColorCorrectionAndConversion

- (PTStudioLightColorCorrectionAndConversion)initWithMetalContext:(id)context correctionColorCube:(id)cube
{
  contextCopy = context;
  cubeCopy = cube;
  v44.receiver = self;
  v44.super_class = PTStudioLightColorCorrectionAndConversion;
  v8 = [(PTStudioLightColorCorrectionAndConversion *)&v44 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_correctionColorCube, cube);
    v10 = [contextCopy computePipelineStateFor:@"studioLightColorCorrectionRGBToYUV" withConstants:0];
    studioLightColorCorrectionRGBToYUV = v9->_studioLightColorCorrectionRGBToYUV;
    v9->_studioLightColorCorrectionRGBToYUV = v10;

    if (v9->_studioLightColorCorrectionRGBToYUV)
    {
      v12 = objc_alloc_init(MEMORY[0x277CD7058]);
      v13 = v12;
      if (v12)
      {
        [v12 setTextureType:7];
        [v13 setWidth:32];
        [v13 setHeight:32];
        [v13 setDepth:32];
        [v13 setPixelFormat:70];
        [v13 setUsage:3];
        device = [contextCopy device];
        v15 = [device newTextureWithDescriptor:v13];
        cubeTexture = v9->_cubeTexture;
        v9->_cubeTexture = v15;

        if (v9->_cubeTexture)
        {
          device2 = [contextCopy device];
          v18 = [device2 newBufferWithLength:16 options:0];
          rgbMinMax = v9->_rgbMinMax;
          v9->_rgbMinMax = v18;

          v20 = v9;
LABEL_15:

          goto LABEL_16;
        }

        v28 = _PTLogSystem();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          [(PTStudioLightColorCorrectionAndConversion *)v28 initWithMetalContext:v36 correctionColorCube:v37, v38, v39, v40, v41, v42];
        }
      }

      else
      {
        v28 = _PTLogSystem();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          [(PTStudioLightColorCorrectionAndConversion *)v28 initWithMetalContext:v29 correctionColorCube:v30, v31, v32, v33, v34, v35];
        }
      }
    }

    else
    {
      v13 = _PTLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(PTStudioLightColorCorrectionAndConversion *)v13 initWithMetalContext:v21 correctionColorCube:v22, v23, v24, v25, v26, v27];
      }
    }

    v20 = 0;
    goto LABEL_15;
  }

  v20 = 0;
LABEL_16:

  return v20;
}

- (unsigned)initializeCubeMap:(id)map inputTexture:(id)texture
{
  memset(v22, 0, sizeof(v22));
  textureCopy = texture;
  mapCopy = map;
  [PTColorConversion getColorMatrix:textureCopy toRGB:0];
  memset(v21, 0, sizeof(v21));
  [PTColorConversion getColorMatrix:textureCopy toRGB:1];
  transferFunction = [textureCopy transferFunction];
  v9 = [PTColorConversion getTransferFunction:transferFunction toLinear:1];

  v20 = v9;
  transferFunction2 = [textureCopy transferFunction];

  LODWORD(textureCopy) = [PTColorConversion getTransferFunction:transferFunction2 toLinear:0];
  v19 = textureCopy;
  computeCommandEncoder = [mapCopy computeCommandEncoder];

  [computeCommandEncoder setComputePipelineState:self->_studioLightColorCorrectionRGBToYUV];
  [computeCommandEncoder setTexture:self->_cubeTexture atIndex:0];
  [computeCommandEncoder setTexture:self->_correctionColorCube atIndex:1];
  [computeCommandEncoder setBuffer:self->_rgbMinMax offset:0 atIndex:0];
  [computeCommandEncoder setBytes:v22 length:24 atIndex:1];
  [computeCommandEncoder setBytes:v21 length:24 atIndex:2];
  [computeCommandEncoder setBytes:&v20 length:4 atIndex:3];
  [computeCommandEncoder setBytes:&v19 length:4 atIndex:4];
  width = [(MTLTexture *)self->_cubeTexture width];
  height = [(MTLTexture *)self->_cubeTexture height];
  depth = [(MTLTexture *)self->_cubeTexture depth];
  v18[0] = width;
  v18[1] = height;
  v18[2] = depth;
  v16 = xmmword_2244A5440;
  v17 = 1;
  [computeCommandEncoder dispatchThreads:v18 threadsPerThreadgroup:&v16];
  [computeCommandEncoder endEncoding];

  return 0;
}

@end