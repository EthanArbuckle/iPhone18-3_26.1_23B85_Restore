@interface PTVFXSoftAlphaMask
- (PTVFXSoftAlphaMask)initWithMetalContext:(id)a3 colorSize:(id *)a4;
- (id)lazyInstantiateAlphaMaskForRenderRequest:(id)a3;
- (int)remapAlphaMask:(id)a3 effectRenderRequest:(id)a4;
- (int)updateSoftAlphaMask:(id)a3 inDisparity:(id)a4 focusDisparityModifiers:(id)a5 effectRenderRequest:(id)a6;
- (int)updateSoftAlphaMask:(id)a3 inSegmentation:(id)a4 effectRenderRequest:(id)a5;
@end

@implementation PTVFXSoftAlphaMask

- (PTVFXSoftAlphaMask)initWithMetalContext:(id)a3 colorSize:(id *)a4
{
  v7 = a3;
  v56.receiver = self;
  v56.super_class = PTVFXSoftAlphaMask;
  v8 = [(PTVFXSoftAlphaMask *)&v56 init];
  if (!v8)
  {
    goto LABEL_26;
  }

  v9 = [PTEffectUtil aspectRatio:a4->var0, a4->var1];
  if (a4->var0 > a4->var1)
  {
    if (v9 != 3)
    {
      if (v9 == 1)
      {
        v10 = 320;
        v11 = 176;
      }

      else
      {
        v10 = 288;
        v11 = 216;
      }

      goto LABEL_12;
    }

LABEL_9:
    v11 = 320;
    v10 = 320;
    goto LABEL_12;
  }

  if (v9 == 3)
  {
    goto LABEL_9;
  }

  if (v9 == 1)
  {
    v10 = 176;
    v11 = 320;
  }

  else
  {
    v10 = 216;
    v11 = 288;
  }

LABEL_12:
  objc_storeStrong(v8 + 1, a3);
  v12 = [v7 computePipelineStateFor:@"disparityToAlphaMask" withConstants:0];
  v13 = *(v8 + 2);
  *(v8 + 2) = v12;

  if (!*(v8 + 2))
  {
    v26 = _PTLogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [(PTVFXSoftAlphaMask *)v26 initWithMetalContext:v27 colorSize:v28, v29, v30, v31, v32, v33];
    }

    goto LABEL_25;
  }

  v14 = [v7 computePipelineStateFor:@"remapAlphaMask" withConstants:0];
  v15 = *(v8 + 3);
  *(v8 + 3) = v14;

  if (!*(v8 + 3))
  {
    v26 = _PTLogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [(PTVFXSoftAlphaMask *)v26 initWithMetalContext:v34 colorSize:v35, v36, v37, v38, v39, v40];
    }

    goto LABEL_25;
  }

  v16 = [v7 textureUtil];
  v17 = [v16 createWithWidth:v10 height:v11 pixelFormat:10];
  v18 = *(v8 + 4);
  *(v8 + 4) = v17;

  if (!*(v8 + 4))
  {
    v26 = _PTLogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [(PTVFXSoftAlphaMask *)v26 initWithMetalContext:v41 colorSize:v42, v43, v44, v45, v46, v47];
    }

    goto LABEL_25;
  }

  v19 = [v7 textureUtil];
  v20 = [v19 createWithWidth:v10 height:v11 pixelFormat:10];
  v21 = *(v8 + 6);
  *(v8 + 6) = v20;

  if (!*(v8 + 6))
  {
    v26 = _PTLogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [(PTVFXSoftAlphaMask *)v26 initWithMetalContext:v48 colorSize:v49, v50, v51, v52, v53, v54];
    }

LABEL_25:

LABEL_26:
    v25 = 0;
    goto LABEL_27;
  }

  v22 = *&a4->var0;
  *(v8 + 9) = a4->var2;
  *(v8 + 56) = v22;
  v23 = [[PTBoxFilter alloc] initWithMetalContext:v7 options:1];
  v24 = *(v8 + 10);
  *(v8 + 10) = v23;

  v25 = v8;
LABEL_27:

  return v25;
}

- (int)updateSoftAlphaMask:(id)a3 inDisparity:(id)a4 focusDisparityModifiers:(id)a5 effectRenderRequest:(id)a6
{
  v21 = 1065353216;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v13 computeCommandEncoder];
  [v14 setComputePipelineState:self->_disparityToAlphaMask];
  [v14 setTexture:v12 atIndex:0];

  [v14 setTexture:self->_alphaMask atIndex:1];
  [v14 setBuffer:v11 offset:0 atIndex:0];

  [v14 setBytes:&v21 length:4 atIndex:1];
  v15 = [(MTLTexture *)self->_alphaMask width];
  v16 = [(MTLTexture *)self->_alphaMask height];
  v20[0] = v15;
  v20[1] = v16;
  v20[2] = 1;
  v18 = xmmword_2244A5230;
  v19 = 1;
  [v14 dispatchThreads:v20 threadsPerThreadgroup:&v18];
  [v14 endEncoding];
  LODWORD(v15) = [(PTVFXSoftAlphaMask *)self boxFilter:v13 mask:self->_alphaMask];
  LODWORD(self) = [(PTVFXSoftAlphaMask *)self remapAlphaMask:v13 effectRenderRequest:v10];

  return self | v15;
}

- (int)remapAlphaMask:(id)a3 effectRenderRequest:(id)a4
{
  if (self->_remappedAlphaMask)
  {
    v6 = a4;
    v7 = [a3 computeCommandEncoder];
    [v7 setComputePipelineState:self->_remapAlphaMask];
    [v7 setTexture:self->_alphaMask atIndex:0];
    [v7 setTexture:self->_remappedAlphaMask atIndex:1];
    [v6 reactionsCombinedCropRect];
    v12 = v8;

    v16 = v12;
    [v7 setBytes:&v16 length:16 atIndex:0];
    v9 = [(MTLTexture *)self->_remappedAlphaMask width];
    v10 = [(MTLTexture *)self->_remappedAlphaMask height];
    v15[0] = v9;
    v15[1] = v10;
    v15[2] = 1;
    v13 = xmmword_2244A5230;
    v14 = 1;
    [v7 dispatchThreads:v15 threadsPerThreadgroup:&v13];
    [v7 endEncoding];
  }

  return 0;
}

- (id)lazyInstantiateAlphaMaskForRenderRequest:(id)a3
{
  v4 = a3;
  [v4 inReactionVideoRect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v4 outColorROI];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v53.origin.x = 0.0;
  v53.origin.y = 0.0;
  v53.size.width = 1.0;
  v53.size.height = 1.0;
  v51.origin.x = v6;
  v51.origin.y = v8;
  v51.size.width = v10;
  v51.size.height = v12;
  if (CGRectEqualToRect(v51, v53) && (v54.origin.x = 0.0, v54.origin.y = 0.0, v54.size.width = 1.0, v54.size.height = 1.0, v52.origin.x = v14, v52.origin.y = v16, v52.size.width = v18, v52.size.height = v20, CGRectEqualToRect(v52, v54)))
  {
    remappedAlphaMask = self->_remappedAlphaMask;
    self->_remappedAlphaMask = 0;

    p_alphaMask = &self->_alphaMask;
  }

  else
  {
    [v4 outColorROI];
    v24 = v23;
    v26 = v25;
    [v4 inReactionColorSize];
    width = v27;
    [v4 inReactionColorSize];
    height = v29;
    if (width)
    {
      v31 = height == 0;
    }

    else
    {
      v31 = 1;
    }

    if (v31)
    {
      width = self->_colorSize.width;
      height = self->_colorSize.height;
    }

    v32 = v24 * width;
    v33 = vcvtas_u32_f32(v32);
    v34 = v26 * height;
    v35 = vcvtas_u32_f32(v34);
    if (v35 * v33 >= 62209)
    {
      v36 = (v35 * v33) / 62208.0;
      v33 = (v33 / v36);
      v35 = (v35 / v36);
    }

    p_alphaMask = &self->_remappedAlphaMask;
    if ([(MTLTexture *)self->_remappedAlphaMask width]!= v33 || [(MTLTexture *)*p_alphaMask height]!= v35)
    {
      v37 = [(PTMetalContext *)self->_metalContext textureUtil];
      v38 = [v37 createWithWidth:v33 height:v35 pixelFormat:10];
      v39 = self->_remappedAlphaMask;
      self->_remappedAlphaMask = v38;

      if (!self->_remappedAlphaMask)
      {
        v40 = _PTLogSystem();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          [(PTVFXSoftAlphaMask *)v40 lazyInstantiateAlphaMaskForRenderRequest:v41, v42, v43, v44, v45, v46, v47];
        }
      }
    }
  }

  v48 = *p_alphaMask;
  v49 = *p_alphaMask;

  return v48;
}

- (int)updateSoftAlphaMask:(id)a3 inSegmentation:(id)a4 effectRenderRequest:(id)a5
{
  v8 = a5;
  v9 = a3;
  LODWORD(a4) = [(PTVFXSoftAlphaMask *)self boxFilter:v9 mask:a4];
  LODWORD(self) = [(PTVFXSoftAlphaMask *)self remapAlphaMask:v9 effectRenderRequest:v8];

  return self | a4;
}

@end