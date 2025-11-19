@interface PTRenderPipelineState
+ (Class)classForVersion:(unint64_t)a3;
- (BOOL)prepareForRendering:(BOOL)a3;
- (CGRect)totalSensorCrop;
- (PTRenderPipelineState)initWithPipelineDescriptor:(id)a3 metalContext:(id)a4 quality:(int)a5;
- (float)cameraIntrinsicMatrix;
- (int)encodeRenderTo:(id)a3 withRenderRequest:(id)a4;
- (void)adjustScissorRect:(id)a3;
- (void)setRenderingVersion:(unint64_t)a3;
@end

@implementation PTRenderPipelineState

- (PTRenderPipelineState)initWithPipelineDescriptor:(id)a3 metalContext:(id)a4 quality:(int)a5
{
  v8 = a3;
  v9 = a4;
  v19.receiver = self;
  v19.super_class = PTRenderPipelineState;
  v10 = [(PTRenderPipelineState *)&v19 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_metalContext, a4);
    v12 = [v8 copy];
    pipelineDescritor = v11->_pipelineDescritor;
    v11->_pipelineDescritor = v12;

    v11->_quality = a5;
    v11->_renderingVersion = [v8 version];
    *&v11->noiseScaleFactor = 2143289344;
    [v8 colorInputSize];
    v15 = v14;
    [v8 colorInputSize];
    v11->_colorInputSize.width = v15;
    v11->_colorInputSize.height = v16;
    v17 = v11;
  }

  return v11;
}

+ (Class)classForVersion:(unint64_t)a3
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
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

- (void)setRenderingVersion:(unint64_t)a3
{
  if (self->_renderIntegration)
  {
    if (self->_renderingVersion != a3)
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
    self->_renderingVersion = a3;
  }
}

- (BOOL)prepareForRendering:(BOOL)a3
{
  if (self->_renderIntegration)
  {
    v7 = !a3;
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
    v22 = [(PTRenderPipelineDescriptor *)self->_pipelineDescritor useRGBA];
    v23 = [(PTMetalContext *)self->_metalContext textureUtil];
    v24 = v23;
    v25 = self->_colorOutputSize.width;
    v26 = self->_colorOutputSize.height;
    if (v22)
    {
      v27 = [v23 createWithWidth:v25 height:v26 pixelFormat:115];
      v28 = [PTTexture createRGBA:v27];
      intermediateOutput = self->_intermediateOutput;
      self->_intermediateOutput = v28;
    }

    else
    {
      v27 = [v23 createWithWidth:v25 height:v26 pixelFormat:25];
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
  v43 = [(PTRenderPipelineDescriptor *)self->_pipelineDescritor debugRendering];
  v44 = [(PTRenderPipelineDescriptor *)self->_pipelineDescritor verbose];
  v45 = [(PTRenderPipelineDescriptor *)self->_pipelineDescritor options];
  v46 = [(RenderingIntegration *)v37 initWithMetalContext:metalContext colorSize:v43 disparitySize:v44 debugRendering:v45 verbose:self->_quality options:self->_colorOutputSizeCropped.width quality:self->_colorOutputSizeCropped.height, v40, v42];
  v47 = self->_renderIntegration;
  self->_renderIntegration = v46;

  kdebug_trace();
  return self->_renderIntegration != 0;
}

- (void)adjustScissorRect:(id)a3
{
  v4 = a3;
  v5 = v4;
  v15 = 0u;
  v16 = 0u;
  if (!v4)
  {
    v16 = 0uLL;
LABEL_10:
    v15 = 0uLL;
    v12 = [v5 destinationColor];
    v16.i64[0] = [v12 width];

    v13 = [v5 destinationColor];
    v16.i64[1] = [v13 height];

    goto LABEL_11;
  }

  [v4 scissorRect];
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

- (int)encodeRenderTo:(id)a3 withRenderRequest:(id)a4
{
  v60 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(PTRenderPipelineState *)self prepareForRendering:0])
  {
    if ([v6 status] && objc_msgSend(v6, "status") != 1)
    {
      v9 = _PTLogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [PTRenderPipelineState encodeRenderTo:v6 withRenderRequest:v9];
      }
    }

    else
    {
      if (!self->_intermediateOutput)
      {
        [(PTRenderPipelineState *)self adjustScissorRect:v7];
        v9 = 0;
        goto LABEL_26;
      }

      v8 = [v7 destinationColor];
      [v8 copyMetadataTo:self->_intermediateOutput];

      v9 = [v7 destinationColor];
      [v7 setDestinationColor:self->_intermediateOutput];
      width = self->_colorOutputSize.width;
      height = self->_colorOutputSize.height;
      if (!v7)
      {
        *&buf[16] = 0u;
        goto LABEL_18;
      }

      [v7 scissorRect];
      if (!*buf && !*&buf[8] && __PAIR128__(*&buf[16], 0) == *&buf[24])
      {
        memset(buf, 0, sizeof(buf));
        goto LABEL_24;
      }

      [v7 scissorRect];
      if (*buf == 0 && *&buf[16] == __PAIR128__(height, width))
      {
LABEL_18:
        memset(buf, 0, sizeof(buf));
        if (!v7)
        {
          *&buf[16] = 0uLL;
LABEL_25:
          *buf = 0;
          *&buf[8] = 0;
          *&buf[16] = [(PTTexture *)self->_intermediateOutput width];
          *&buf[24] = [(PTTexture *)self->_intermediateOutput height];
          v56[0] = *buf;
          v56[1] = *&buf[16];
          [v7 setScissorRect:v56];
LABEL_26:
          v14 = [v7 sourceColor];
          v15 = [v14 width];
          [(PTRenderPipelineDescriptor *)self->_pipelineDescritor colorInputSize];
          if (v15 == v16)
          {
            v17 = [v7 sourceColor];
            v18 = [v17 height];
            [(PTRenderPipelineDescriptor *)self->_pipelineDescritor colorInputSize];
            v20 = v19;

            if (v18 == v20)
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
            [(PTRenderPipelineState *)&self->_pipelineDescritor encodeRenderTo:v7 withRenderRequest:v21];
          }

          v22 = _PTLogSystem();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            [PTRenderPipelineState encodeRenderTo:withRenderRequest:];
          }

LABEL_35:
          v23 = [v7 destinationColor];
          if ([v23 width] == self->_colorOutputSize.width)
          {
            v24 = [v7 destinationColor];
            v25 = [v24 height];
            v26 = self->_colorOutputSize.height;

            if (v25 == v26)
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
            v48 = v9;
            v49 = self->_colorOutputSize.width;
            v50 = self->_colorOutputSize.height;
            v51 = [v7 destinationColor];
            v52 = [v51 width];
            v53 = [v7 destinationColor];
            v54 = [v53 height];
            *buf = 134218752;
            *&buf[4] = v49;
            *&buf[12] = 2048;
            *&buf[14] = v50;
            v9 = v48;
            *&buf[22] = 2048;
            *&buf[24] = v52;
            v58 = 2048;
            v59 = v54;
            _os_log_error_impl(&dword_2243FB000, v27, OS_LOG_TYPE_ERROR, "Invalid output size. Expected %f %f. Was %lu %lu", buf, 0x2Au);
          }

          v28 = _PTLogSystem();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            [PTRenderPipelineState encodeRenderTo:withRenderRequest:];
          }

LABEL_44:
          v29 = [v7 sourceColor];
          v30 = [v29 transferFunction];
          v31 = [v7 destinationColor];
          v32 = [v31 transferFunction];
          if ([v30 isEqual:v32])
          {
          }

          else
          {
            v33 = [v7 sourceColor];
            v34 = [v33 transferFunction];
            if (v34)
            {
            }

            else
            {
              [v7 destinationColor];
              v35 = v55 = v9;
              v36 = [v35 transferFunction];

              v9 = v55;
              if (!v36)
              {
                goto LABEL_54;
              }
            }

            v37 = _PTLogSystem();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              [PTRenderPipelineState encodeRenderTo:v7 withRenderRequest:v37];
            }

            v29 = _PTLogSystem();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              [PTRenderPipelineState encodeRenderTo:withRenderRequest:];
            }
          }

LABEL_54:
          v12 = [(RenderingIntegration *)self->_renderIntegration renderContinuousWithSource:v6 renderRequest:v7];
          if (self->_intermediateOutput)
          {
            v38 = [(PTRenderPipelineDescriptor *)self->_pipelineDescritor useRGBA];
            util = self->_util;
            intermediateOutput = self->_intermediateOutput;
            v9 = v9;
            v41 = intermediateOutput;
            v42 = v41;
            if (v38)
            {
              v43 = [(PTTexture *)v41 texRGBA];
              [v9 texRGBA];
            }

            else
            {
              v44 = [(PTTexture *)v41 texLuma];
              v45 = [v9 texLuma];
              [(PTUtil *)util rotateTexture:v6 inTex:v44 outTex:v45 rotationDegrees:self->_colorOutputRotationDegrees];

              util = self->_util;
              v43 = [(PTTexture *)v42 texChroma];
              [v9 texChroma];
            }
            v46 = ;

            [(PTUtil *)util rotateTexture:v6 inTex:v43 outTex:v46 rotationDegrees:self->_colorOutputRotationDegrees];
            [v7 setDestinationColor:v9];
          }

          goto LABEL_59;
        }

LABEL_24:
        [v7 scissorRect];
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
  v4 = *(a1 + 176);
  if (*&v4 < *(&v4 + 1))
  {
    LODWORD(v4) = HIDWORD(*(a1 + 176));
  }

  v5 = v3 / *(a1 + 64);
  v6 = *(a1 + 136) / 1000.0 * *&v4;
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