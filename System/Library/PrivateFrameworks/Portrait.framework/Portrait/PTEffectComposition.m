@interface PTEffectComposition
- (PTEffectComposition)initWithConfig:(id)a3;
- (float32x2_t)computeDownsamplingFactorWithInputSource:(void *)a3 inputTarget:(uint64_t)a4 renderRequest:(void *)a5;
- (unsigned)render:(id)a3 renderRequest:(id)a4;
@end

@implementation PTEffectComposition

- (PTEffectComposition)initWithConfig:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PTEffectComposition;
  v5 = [(PTEffectComposition *)&v17 init];
  v6 = [v4 device];

  if (!v6)
  {
    v15 = _PTLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [PTEffectComposition initWithConfig:];
    }

    goto LABEL_14;
  }

  v7 = [PTMetalContext alloc];
  v8 = [v4 device];
  v9 = [(PTMetalContext *)v7 initWithDevice:v8 bundleClass:objc_opt_class()];
  metalContext = v5->_metalContext;
  v5->_metalContext = v9;

  v11 = v5->_metalContext;
  if (!v11)
  {
    v15 = _PTLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [PTEffectComposition initWithConfig:];
    }

    goto LABEL_14;
  }

  if (![(PTMetalContext *)v11 imageblocksSupported])
  {
    v15 = _PTLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [PTEffectComposition initWithConfig:];
    }

    goto LABEL_14;
  }

  v12 = [(PTMetalContext *)v5->_metalContext computePipelineStateFor:@"composite" withConstants:0];
  composite = v5->_composite;
  v5->_composite = v12;

  if (!v5->_composite)
  {
    v15 = _PTLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [PTEffectComposition initWithConfig:];
    }

LABEL_14:

    v14 = 0;
    goto LABEL_15;
  }

  v14 = v5;
LABEL_15:

  return v14;
}

- (float32x2_t)computeDownsamplingFactorWithInputSource:(void *)a3 inputTarget:(uint64_t)a4 renderRequest:(void *)a5
{
  v6 = a5;
  v7 = a3;
  v21 = [v7 width];
  v8 = [v7 height];

  v9.f32[0] = v21;
  v9.f32[1] = v8;
  v22 = v9;
  [v6 inputTargetRect];
  v19 = v10;
  [v6 inputTargetRect];
  v11.f64[0] = v19;
  v11.f64[1] = v12;
  v13 = vcvt_f32_f64(v11);
  [v6 inputCropRect];
  v20 = v14;
  [v6 inputCropRect];
  v18 = v15;

  v16.f64[0] = v20;
  v16.f64[1] = v18;
  return vdiv_f32(vdiv_f32(v13, vdiv_f32(vcvt_f32_f64(v16), v22)), v22);
}

- (unsigned)render:(id)a3 renderRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 inputSourcePixelBuffer];
  v9 = [(PTMetalContext *)self->_metalContext device];
  v10 = [PTPixelBufferUtil createTextureFromPixelBuffer:v8 device:v9 textureCache:self->metalTextureCache sRGB:0 metalYCBCRConversion:1];

  v11 = [v7 inputTargetPixelBuffer];
  v12 = [(PTMetalContext *)self->_metalContext device];
  v13 = [PTPixelBufferUtil createTextureFromPixelBuffer:v11 device:v12 textureCache:self->metalTextureCache sRGB:0 metalYCBCRConversion:1];

  v14 = [v7 outputPixelBuffer];
  v15 = [(PTMetalContext *)self->_metalContext device];
  v16 = [PTPixelBufferUtil createTextureFromPixelBuffer:v14 device:v15 textureCache:self->metalTextureCache sRGB:0 metalYCBCRConversion:1];

  if (!v10 || !v13 || !v16)
  {
    v21 = _PTLogSystem();
    if (os_log_type_enabled(&v21->super, OS_LOG_TYPE_ERROR))
    {
      [PTEffectComposition render:renderRequest:];
    }

    goto LABEL_11;
  }

  v17 = [v13 width];
  if (v17 == [v16 width])
  {
    v18 = [v13 height];
    if (v18 == [v16 height])
    {
      [(PTEffectComposition *)self computeDownsamplingFactorWithInputSource:v10 inputTarget:v13 renderRequest:v7];
      if (vabds_f32(v19, v20) > 0.1)
      {
        v21 = _PTLogSystem();
        if (os_log_type_enabled(&v21->super, OS_LOG_TYPE_ERROR))
        {
          [PTEffectComposition render:renderRequest:];
        }

LABEL_11:
        v22 = -10;
        goto LABEL_15;
      }

      if (v19 >= v20)
      {
        v24 = v19;
      }

      else
      {
        v24 = v20;
      }

      v25 = (log2f(1.0 / v24) + -1.0);
      sourceMipmap = self->_sourceMipmap;
      if (v24 <= 0.5)
      {
        if (!sourceMipmap || (v27 = -[MTLTexture width](self->_sourceMipmap, "width"), v27 != [v10 width] >> 1) || (v28 = -[MTLTexture height](self->_sourceMipmap, "height"), v28 != objc_msgSend(v10, "height") >> 1))
        {
          v29 = [(PTMetalContext *)self->_metalContext textureUtil];
          v30 = [v29 createWithWidth:objc_msgSend(v10 height:"width") >> 1 pixelFormat:objc_msgSend(v10 mipmapLevelCount:"height") >> 1, 71, -1];
          v31 = self->_sourceMipmap;
          self->_sourceMipmap = v30;
        }

        v32 = [(PTMetalContext *)self->_metalContext textureUtil];
        [v32 copy:v6 inTex:v10 outTex:self->_sourceMipmap];

        if (v25 < 1)
        {
          goto LABEL_28;
        }

        sourceMipmap = [v6 blitCommandEncoder];
        [sourceMipmap generateMipmapsForTexture:self->_sourceMipmap];
        [sourceMipmap endEncoding];
      }

      else
      {
        self->_sourceMipmap = 0;
      }

LABEL_28:
      v21 = [[PTImageblockConfig alloc] initWithTexture:v16];
      v33 = [v6 computeCommandEncoder];
      [v33 setImageblockWidth:-[PTImageblockConfig imageblockSize](v21 height:{"imageblockSize"), -[PTImageblockConfig imageblockSize](v21, "imageblockSize")}];
      [v33 setComputePipelineState:self->_composite];
      if (self->_sourceMipmap)
      {
        v34 = [(PTMetalContext *)self->_metalContext textureUtil];
        v35 = [v34 mipmapLevelsUsingTextureView:self->_sourceMipmap];

        v36 = [v35 count];
        if (v36 - 1 >= v25)
        {
          v37 = v25;
        }

        else
        {
          v37 = v36 - 1;
        }

        v38 = [v35 objectAtIndexedSubscript:v37];
        [v33 setTexture:v38 atIndex:0];
      }

      else
      {
        [v33 setTexture:v10 atIndex:0];
      }

      [v33 setTexture:v13 atIndex:1];
      [v33 setTexture:v16 atIndex:2];
      *&v50 = [v10 width];
      *&v49 = [v10 height];
      [v7 inputCropRect];
      v40.f64[1] = v39;
      v42.f64[1] = v41;
      v43.i64[0] = __PAIR64__(v49, v50);
      v43.i64[1] = __PAIR64__(v49, v50);
      v55 = vdivq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(v42), v40), v43);
      [v7 inputTargetRect];
      v45.f64[1] = v44;
      v47.f64[1] = v46;
      v54 = vcvt_hight_f32_f64(vcvt_f32_f64(v47), v45);
      [v7 inputTargetRectCornerRadius];
      v53 = v48;
      [v33 setBytes:&v55 length:16 atIndex:0];
      [v33 setBytes:&v54 length:16 atIndex:1];
      [v33 setBytes:&v53 length:4 atIndex:2];
      if (v21)
      {
        [(PTImageblockConfig *)v21 threads];
        [(PTImageblockConfig *)v21 threadsPerGroup];
      }

      else
      {
        memset(v52, 0, sizeof(v52));
        memset(v51, 0, sizeof(v51));
      }

      [v33 dispatchThreads:v52 threadsPerThreadgroup:v51];
      [v33 endEncoding];

      v22 = 0;
      goto LABEL_15;
    }
  }

  v21 = _PTLogSystem();
  if (os_log_type_enabled(&v21->super, OS_LOG_TYPE_ERROR))
  {
    [PTEffectComposition render:renderRequest:];
  }

  v22 = -3;
LABEL_15:

  return v22;
}

@end