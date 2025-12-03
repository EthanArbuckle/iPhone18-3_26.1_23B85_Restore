@interface PTRenderPipelineState
+ (Class)classForVersion:(unint64_t)version;
- (BOOL)prepareForRendering:(BOOL)rendering;
- (CGRect)totalSensorCrop;
- (PTRenderPipelineState)initWithPipelineDescriptor:(id)descriptor metalContext:(id)context quality:(int)quality;
- (float)cameraIntrinsicMatrix;
- (int)encodeRenderTo:(id)to withRenderRequest:(id)request;
- (void)adjustScissorRect:(id)rect;
- (void)setRenderingVersion:(unint64_t)version;
@end

@implementation PTRenderPipelineState

- (PTRenderPipelineState)initWithPipelineDescriptor:(id)descriptor metalContext:(id)context quality:(int)quality
{
  descriptorCopy = descriptor;
  contextCopy = context;
  v19.receiver = self;
  v19.super_class = PTRenderPipelineState;
  v10 = [(PTRenderPipelineState *)&v19 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_metalContext, context);
    v12 = [descriptorCopy copy];
    pipelineDescritor = v11->_pipelineDescritor;
    v11->_pipelineDescritor = v12;

    v11->_quality = quality;
    v11->_renderingVersion = [descriptorCopy version];
    *&v11->noiseScaleFactor = 2143289344;
    [descriptorCopy colorInputSize];
    v15 = v14;
    [descriptorCopy colorInputSize];
    v11->_colorInputSize.width = v15;
    v11->_colorInputSize.height = v16;
    v17 = v11;
  }

  return v11;
}

+ (Class)classForVersion:(unint64_t)version
{
  v9[9] = *MEMORY[0x277D85DE8];
  v8[0] = &unk_2837F3130;
  v9[0] = objc_opt_class();
  v8[1] = &unk_2837F3148;
  v9[1] = objc_opt_class();
  v8[2] = &unk_2837F3160;
  v9[2] = objc_opt_class();
  v8[3] = &unk_2837F3178;
  v9[3] = objc_opt_class();
  v8[4] = &unk_2837F3190;
  v9[4] = objc_opt_class();
  v8[5] = &unk_2837F31A8;
  v9[5] = objc_opt_class();
  v8[6] = &unk_2837F31C0;
  v9[6] = objc_opt_class();
  v8[7] = &unk_2837F31D8;
  v9[7] = objc_opt_class();
  v8[8] = &unk_2837F31F0;
  v9[8] = objc_opt_class();
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:9];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:version];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

- (void)setRenderingVersion:(unint64_t)version
{
  if (self->_renderIntegration)
  {
    if (self->_renderingVersion != version)
    {
      v3 = _PTLogSystem();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        [PTRenderPipelineState setRenderingVersion:];
      }
    }
  }

  else
  {
    self->_renderingVersion = version;
  }
}

- (BOOL)prepareForRendering:(BOOL)rendering
{
  if (self->_renderIntegration)
  {
    v7 = !rendering;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    return 1;
  }

  v49 = v6;
  v50 = v5;
  v51 = v3;
  v52 = v4;
  kdebug_trace();
  v9 = [PTRenderPipelineState classForVersion:[(PTRenderPipelineState *)self renderingVersion]];
  [(PTRenderPipelineDescriptor *)self->_pipelineDescritor colorOutputSize];
  self->_colorOutputSize.width = v10;
  self->_colorOutputSize.height = v11;
  p_colorOutputSize = &self->_colorOutputSize;
  pipelineDescritor = self->_pipelineDescritor;
  if (pipelineDescritor)
  {
    [(PTRenderPipelineDescriptor *)pipelineDescritor preferredTransform];
  }

  else
  {
    memset(v48, 0, sizeof(v48));
  }

  v15 = [PTUtil getRotationDegreesFromAffineTransform:v48];
  self->_colorOutputRotationDegrees = v15;
  if (v15 == 270 || v15 == 90)
  {
    *p_colorOutputSize = vextq_s8(*p_colorOutputSize, *p_colorOutputSize, 8uLL);
  }

  else if (v15 == -1)
  {
    v16 = _PTLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [PTRenderPipelineState prepareForRendering:];
    }

    return 0;
  }

  self->_colorOutputSizeCropped = *p_colorOutputSize;
  width = self->_colorOutputSizeCropped.width;
  height = self->_colorOutputSizeCropped.height;
  if (height >= 0)
  {
    v19 = height & 1;
  }

  else
  {
    v19 = -(height & 1);
  }

  v20 = height - v19;
  if (width >= 0)
  {
    v21 = width & 1;
  }

  else
  {
    v21 = -(width & 1);
  }

  self->_colorOutputSizeCropped.width = width - v21;
  self->_colorOutputSizeCropped.height = v20;
  if (v15)
  {
    useRGBA = [(PTRenderPipelineDescriptor *)self->_pipelineDescritor useRGBA];
    textureUtil = [(PTMetalContext *)self->_metalContext textureUtil];
    v24 = textureUtil;
    v25 = self->_colorOutputSize.width;
    v26 = self->_colorOutputSize.height;
    if (useRGBA)
    {
      v27 = [textureUtil createWithWidth:v25 height:v26 pixelFormat:115];
      v28 = [PTTexture createRGBA:v27];
      intermediateOutput = self->_intermediateOutput;
      self->_intermediateOutput = v28;
    }

    else
    {
      v27 = [textureUtil createWithWidth:v25 height:v26 pixelFormat:25];
      intermediateOutput = [(PTMetalContext *)self->_metalContext textureUtil];
      v30 = [intermediateOutput createWithWidth:(self->_colorOutputSize.width * 0.5) height:(self->_colorOutputSize.height * 0.5) pixelFormat:65];
      v31 = [PTTexture createYUV420:v27 chroma:v30];
      v32 = self->_intermediateOutput;
      self->_intermediateOutput = v31;
    }

    v33 = [[PTUtil alloc] initWithMetalContext:self->_metalContext];
    util = self->_util;
    self->_util = v33;
  }

  v35 = [v9 alloc];
  renderIntegration = self->_renderIntegration;
  self->_renderIntegration = v35;

  v37 = self->_renderIntegration;
  metalContext = self->_metalContext;
  [(PTRenderPipelineDescriptor *)self->_pipelineDescritor disparitySize];
  v40 = v39;
  v42 = v41;
  debugRendering = [(PTRenderPipelineDescriptor *)self->_pipelineDescritor debugRendering];
  verbose = [(PTRenderPipelineDescriptor *)self->_pipelineDescritor verbose];
  options = [(PTRenderPipelineDescriptor *)self->_pipelineDescritor options];
  v46 = [(RenderingIntegration *)v37 initWithMetalContext:metalContext colorSize:debugRendering disparitySize:verbose debugRendering:options verbose:self->_quality options:self->_colorOutputSizeCropped.width quality:self->_colorOutputSizeCropped.height, v40, v42];
  v47 = self->_renderIntegration;
  self->_renderIntegration = v46;

  kdebug_trace();
  return self->_renderIntegration != 0;
}

- (void)adjustScissorRect:(id)rect
{
  rectCopy = rect;
  v5 = rectCopy;
  v15 = 0u;
  v16 = 0u;
  if (!rectCopy)
  {
    v16 = 0uLL;
LABEL_10:
    v15 = 0uLL;
    destinationColor = [v5 destinationColor];
    v16.i64[0] = [destinationColor width];

    destinationColor2 = [v5 destinationColor];
    v16.i64[1] = [destinationColor2 height];

    goto LABEL_11;
  }

  [rectCopy scissorRect];
  if (*&v16 == 0 || ![(PTMetalContext *)self->_metalContext imageblocksSupported])
  {
    goto LABEL_10;
  }

  v6 = v15;
  if (v15)
  {
    v6 = v15 - 1;
    *&v15 = v15 - 1;
    ++v16.i64[0];
  }

  v7 = DWORD2(v15);
  if (BYTE8(v15))
  {
    v7 = DWORD2(v15) - 1;
    --*(&v15 + 1);
    ++v16.i64[1];
  }

  v8 = vmovn_s64(v16);
  v9.i64[0] = v6;
  v9.i64[1] = v7;
  v10 = vsubq_f64(self->_colorOutputSizeCropped, vcvtq_f64_s64(v9));
  v9.i64[0] = v8.i32[0] | 1;
  v9.i64[1] = v8.i32[1] | 1;
  v11 = vcvtq_f64_s64(v9);
  v16 = vcvtq_u64_f64(vbslq_s8(vcgtq_f64(v10, v11), v11, v10));
LABEL_11:
  v14[0] = v15;
  v14[1] = v16;
  [v5 setScissorRect:v14];
}

- (int)encodeRenderTo:(id)to withRenderRequest:(id)request
{
  v60 = *MEMORY[0x277D85DE8];
  toCopy = to;
  requestCopy = request;
  if ([(PTRenderPipelineState *)self prepareForRendering:0])
  {
    if ([toCopy status] && objc_msgSend(toCopy, "status") != 1)
    {
      destinationColor2 = _PTLogSystem();
      if (os_log_type_enabled(destinationColor2, OS_LOG_TYPE_ERROR))
      {
        [PTRenderPipelineState encodeRenderTo:toCopy withRenderRequest:destinationColor2];
      }
    }

    else
    {
      if (!self->_intermediateOutput)
      {
        [(PTRenderPipelineState *)self adjustScissorRect:requestCopy];
        destinationColor2 = 0;
        goto LABEL_26;
      }

      destinationColor = [requestCopy destinationColor];
      [destinationColor copyMetadataTo:self->_intermediateOutput];

      destinationColor2 = [requestCopy destinationColor];
      [requestCopy setDestinationColor:self->_intermediateOutput];
      width = self->_colorOutputSize.width;
      height = self->_colorOutputSize.height;
      if (!requestCopy)
      {
        *&buf[16] = 0u;
        goto LABEL_18;
      }

      [requestCopy scissorRect];
      if (!*buf && !*&buf[8] && __PAIR128__(*&buf[16], 0) == *&buf[24])
      {
        memset(buf, 0, sizeof(buf));
        goto LABEL_24;
      }

      [requestCopy scissorRect];
      if (*buf == 0 && *&buf[16] == __PAIR128__(height, width))
      {
LABEL_18:
        memset(buf, 0, sizeof(buf));
        if (!requestCopy)
        {
          *&buf[16] = 0uLL;
LABEL_25:
          *buf = 0;
          *&buf[8] = 0;
          *&buf[16] = [(PTTexture *)self->_intermediateOutput width];
          *&buf[24] = [(PTTexture *)self->_intermediateOutput height];
          v56[0] = *buf;
          v56[1] = *&buf[16];
          [requestCopy setScissorRect:v56];
LABEL_26:
          sourceColor = [requestCopy sourceColor];
          width = [sourceColor width];
          [(PTRenderPipelineDescriptor *)self->_pipelineDescritor colorInputSize];
          if (width == v16)
          {
            sourceColor2 = [requestCopy sourceColor];
            height = [sourceColor2 height];
            [(PTRenderPipelineDescriptor *)self->_pipelineDescritor colorInputSize];
            v20 = v19;

            if (height == v20)
            {
              goto LABEL_35;
            }
          }

          else
          {
          }

          v21 = _PTLogSystem();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            [(PTRenderPipelineState *)&self->_pipelineDescritor encodeRenderTo:requestCopy withRenderRequest:v21];
          }

          v22 = _PTLogSystem();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            [PTRenderPipelineState encodeRenderTo:withRenderRequest:];
          }

LABEL_35:
          destinationColor3 = [requestCopy destinationColor];
          if ([destinationColor3 width] == self->_colorOutputSize.width)
          {
            destinationColor4 = [requestCopy destinationColor];
            height2 = [destinationColor4 height];
            v26 = self->_colorOutputSize.height;

            if (height2 == v26)
            {
              goto LABEL_44;
            }
          }

          else
          {
          }

          v27 = _PTLogSystem();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            v48 = destinationColor2;
            v49 = self->_colorOutputSize.width;
            v50 = self->_colorOutputSize.height;
            destinationColor5 = [requestCopy destinationColor];
            width2 = [destinationColor5 width];
            destinationColor6 = [requestCopy destinationColor];
            height3 = [destinationColor6 height];
            *buf = 134218752;
            *&buf[4] = v49;
            *&buf[12] = 2048;
            *&buf[14] = v50;
            destinationColor2 = v48;
            *&buf[22] = 2048;
            *&buf[24] = width2;
            v58 = 2048;
            v59 = height3;
            _os_log_error_impl(&dword_2243FB000, v27, OS_LOG_TYPE_ERROR, "Invalid output size. Expected %f %f. Was %lu %lu", buf, 0x2Au);
          }

          v28 = _PTLogSystem();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            [PTRenderPipelineState encodeRenderTo:withRenderRequest:];
          }

LABEL_44:
          sourceColor3 = [requestCopy sourceColor];
          transferFunction = [sourceColor3 transferFunction];
          destinationColor7 = [requestCopy destinationColor];
          transferFunction2 = [destinationColor7 transferFunction];
          if ([transferFunction isEqual:transferFunction2])
          {
          }

          else
          {
            sourceColor4 = [requestCopy sourceColor];
            transferFunction3 = [sourceColor4 transferFunction];
            if (transferFunction3)
            {
            }

            else
            {
              [requestCopy destinationColor];
              v35 = v55 = destinationColor2;
              transferFunction4 = [v35 transferFunction];

              destinationColor2 = v55;
              if (!transferFunction4)
              {
                goto LABEL_54;
              }
            }

            v37 = _PTLogSystem();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              [PTRenderPipelineState encodeRenderTo:requestCopy withRenderRequest:v37];
            }

            sourceColor3 = _PTLogSystem();
            if (os_log_type_enabled(sourceColor3, OS_LOG_TYPE_ERROR))
            {
              [PTRenderPipelineState encodeRenderTo:withRenderRequest:];
            }
          }

LABEL_54:
          v12 = [(RenderingIntegration *)self->_renderIntegration renderContinuousWithSource:toCopy renderRequest:requestCopy];
          if (self->_intermediateOutput)
          {
            useRGBA = [(PTRenderPipelineDescriptor *)self->_pipelineDescritor useRGBA];
            util = self->_util;
            intermediateOutput = self->_intermediateOutput;
            destinationColor2 = destinationColor2;
            v41 = intermediateOutput;
            v42 = v41;
            if (useRGBA)
            {
              texRGBA = [(PTTexture *)v41 texRGBA];
              [destinationColor2 texRGBA];
            }

            else
            {
              texLuma = [(PTTexture *)v41 texLuma];
              texLuma2 = [destinationColor2 texLuma];
              [(PTUtil *)util rotateTexture:toCopy inTex:texLuma outTex:texLuma2 rotationDegrees:self->_colorOutputRotationDegrees];

              util = self->_util;
              texRGBA = [(PTTexture *)v42 texChroma];
              [destinationColor2 texChroma];
            }
            v46 = ;

            [(PTUtil *)util rotateTexture:toCopy inTex:texRGBA outTex:v46 rotationDegrees:self->_colorOutputRotationDegrees];
            [requestCopy setDestinationColor:destinationColor2];
          }

          goto LABEL_59;
        }

LABEL_24:
        [requestCopy scissorRect];
        goto LABEL_25;
      }

      v13 = _PTLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [PTRenderPipelineState encodeRenderTo:withRenderRequest:];
      }
    }

    v12 = -2;
LABEL_59:

    goto LABEL_60;
  }

  v12 = -1;
LABEL_60:

  return v12;
}

- (float)cameraIntrinsicMatrix
{
  +[PTRaytracingUtils frameWidth];
  v3 = v2;
  v4 = *(self + 176);
  if (*&v4 < *(&v4 + 1))
  {
    LODWORD(v4) = HIDWORD(*(self + 176));
  }

  v5 = v3 / *(self + 64);
  v6 = *(self + 136) / 1000.0 * *&v4;
  __asm { FMOV            V2.4S, #1.0 }

  return v6 / v5;
}

- (CGRect)totalSensorCrop
{
  x = self->totalSensorCrop.origin.x;
  y = self->totalSensorCrop.origin.y;
  width = self->totalSensorCrop.size.width;
  height = self->totalSensorCrop.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)encodeRenderTo:(void *)a1 withRenderRequest:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = [a1 status];
  _os_log_error_impl(&dword_2243FB000, a2, OS_LOG_TYPE_ERROR, "Invalid commandbuffer state %lu", &v3, 0xCu);
}

- (void)encodeRenderTo:(NSObject *)a3 withRenderRequest:.cold.3(id *a1, void *a2, NSObject *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  [*a1 colorInputSize];
  v7 = v6;
  [*a1 colorInputSize];
  v9 = v8;
  v10 = [a2 sourceColor];
  v11 = [v10 width];
  v12 = [a2 sourceColor];
  v13 = 134218752;
  v14 = v7;
  v15 = 2048;
  v16 = v9;
  v17 = 2048;
  v18 = v11;
  v19 = 2048;
  v20 = [v12 height];
  _os_log_error_impl(&dword_2243FB000, a3, OS_LOG_TYPE_ERROR, "Invalid input size. Expected %f %f. Was %lu %lu", &v13, 0x2Au);
}

- (void)encodeRenderTo:(void *)a1 withRenderRequest:(NSObject *)a2 .cold.6(void *a1, NSObject *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [a1 sourceColor];
  v5 = [v4 transferFunction];
  v6 = [a1 destinationColor];
  v7 = [v6 transferFunction];
  v8 = 138412546;
  v9 = v5;
  v10 = 2112;
  v11 = v7;
  _os_log_error_impl(&dword_2243FB000, a2, OS_LOG_TYPE_ERROR, "Invalid transferfunction. Input %@ output %@", &v8, 0x16u);
}

@end