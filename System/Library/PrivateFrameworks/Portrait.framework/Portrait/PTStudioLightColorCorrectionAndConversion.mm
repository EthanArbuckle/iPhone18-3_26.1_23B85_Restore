@interface PTStudioLightColorCorrectionAndConversion
- (PTStudioLightColorCorrectionAndConversion)initWithMetalContext:(id)a3 correctionColorCube:(id)a4;
- (unsigned)initializeCubeMap:(id)a3 inputTexture:(id)a4;
@end

@implementation PTStudioLightColorCorrectionAndConversion

- (PTStudioLightColorCorrectionAndConversion)initWithMetalContext:(id)a3 correctionColorCube:(id)a4
{
  v6 = a3;
  v7 = a4;
  v44.receiver = self;
  v44.super_class = PTStudioLightColorCorrectionAndConversion;
  v8 = [(PTStudioLightColorCorrectionAndConversion *)&v44 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_correctionColorCube, a4);
    v10 = [v6 computePipelineStateFor:@"studioLightColorCorrectionRGBToYUV" withConstants:0];
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
        v14 = [v6 device];
        v15 = [v14 newTextureWithDescriptor:v13];
        cubeTexture = v9->_cubeTexture;
        v9->_cubeTexture = v15;

        if (v9->_cubeTexture)
        {
          v17 = [v6 device];
          v18 = [v17 newBufferWithLength:16 options:0];
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

- (unsigned)initializeCubeMap:(id)a3 inputTexture:(id)a4
{
  memset(v22, 0, sizeof(v22));
  v6 = a4;
  v7 = a3;
  [PTColorConversion getColorMatrix:v6 toRGB:0];
  memset(v21, 0, sizeof(v21));
  [PTColorConversion getColorMatrix:v6 toRGB:1];
  v8 = [v6 transferFunction];
  v9 = [PTColorConversion getTransferFunction:v8 toLinear:1];

  v20 = v9;
  v10 = [v6 transferFunction];

  LODWORD(v6) = [PTColorConversion getTransferFunction:v10 toLinear:0];
  v19 = v6;
  v11 = [v7 computeCommandEncoder];

  [v11 setComputePipelineState:self->_studioLightColorCorrectionRGBToYUV];
  [v11 setTexture:self->_cubeTexture atIndex:0];
  [v11 setTexture:self->_correctionColorCube atIndex:1];
  [v11 setBuffer:self->_rgbMinMax offset:0 atIndex:0];
  [v11 setBytes:v22 length:24 atIndex:1];
  [v11 setBytes:v21 length:24 atIndex:2];
  [v11 setBytes:&v20 length:4 atIndex:3];
  [v11 setBytes:&v19 length:4 atIndex:4];
  v12 = [(MTLTexture *)self->_cubeTexture width];
  v13 = [(MTLTexture *)self->_cubeTexture height];
  v14 = [(MTLTexture *)self->_cubeTexture depth];
  v18[0] = v12;
  v18[1] = v13;
  v18[2] = v14;
  v16 = xmmword_2244A5440;
  v17 = 1;
  [v11 dispatchThreads:v18 threadsPerThreadgroup:&v16];
  [v11 endEncoding];

  return 0;
}

@end