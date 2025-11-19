@interface TSDMetalShader
- (TSDMetalShader)initWithDefaultVertexShader:(id)a3 fragmentShader:(id)a4 device:(id)a5 colorAttachment:(id)a6 velocityAttachment:(id)a7 label:(id)a8 setupUniforms:(BOOL)a9;
- (id)description;
- (id)initCustomShaderWithVertexShader:(id)a3 fragmentShader:(id)a4 device:(id)a5 library:(id)a6 colorAttachment:(id)a7 velocityAttachment:(id)a8;
- (id)initDefaultBlendShaderWithDevice:(id)a3 colorAttachment:(id)a4 velocityAttachment:(id)a5 motionBlur:(BOOL)a6;
- (id)initDefaultGaussianBlurShaderWithDevice:(id)a3 colorAttachment:(id)a4 halfSizedRadius:(BOOL)a5;
- (id)initDefaultNeighborMaxBlurShaderWithDevice:(id)a3 colorAttachment:(id)a4;
- (id)initDefaultShaderWithVertexShader:(id)a3 fragmentShader:(id)a4 device:(id)a5 colorAttachment:(id)a6;
- (id)initDefaultSingleDirectionMotionBlurShaderWithDevice:(id)a3 colorAttachment:(id)a4;
- (id)initDefaultTextureAndOpacityMotionBlurShaderWithDevice:(id)a3 colorAttachment:(id)a4 velocityAttachment:(id)a5 motionBlur:(BOOL)a6;
- (id)initDefaultTextureAndOpacityShaderWithDevice:(id)a3 colorAttachment:(id)a4;
- (id)initDefaultTextureMotionBlurShaderWithDevice:(id)a3 colorAttachment:(id)a4 velocityAttachment:(id)a5;
- (id)initDefaultTextureShaderWithDevice:(id)a3 colorAttachment:(id)a4;
- (id)initDefaultTileMaxBlurShaderWithDevice:(id)a3 colorAttachment:(id)a4;
- (id)initDefaultVelocityCollectionShaderWithDevice:(id)a3 colorAttachment:(id)a4;
- (id)initDefaultVelocityVisualizerShaderWithDevice:(id)a3 colorAttachment:(id)a4;
- (id)initQuadMotionBlurTextureShaderWithFragmentShader:(id)a3 device:(id)a4 library:(id)a5 colorAttachment:(id)a6 velocityAttachment:(id)a7;
- (id)initQuadTextureShaderWithFragmentShader:(id)a3 device:(id)a4 library:(id)a5 colorAttachment:(id)a6 velocityAttachment:(id)a7;
- (id)p_createPipelineStateWithRenderPipelineDescriptor:(id)a3 device:(id)a4 setupUniforms:(BOOL)a5;
- (int64_t)p_indexOfUniformsFromMetalBindings:(id)a3 size:(unint64_t *)a4 bufferIndex:(unint64_t *)a5;
- (void)p_setupPipelineStateWithVertexFunction:(id)a3 fragmentShader:(id)a4 device:(id)a5 library:(id)a6 colorAttachment:(id)a7 velocityAttachment:(id)a8 setupUniforms:(BOOL)a9;
- (void)p_setupPipelineStateWithVertexShader:(id)a3 fragmentShader:(id)a4 device:(id)a5 library:(id)a6 colorAttachment:(id)a7 velocityAttachment:(id)a8 setupUniforms:(BOOL)a9;
- (void)setPipelineStateWithEncoder:(id)a3;
- (void)setPipelineStateWithEncoder:(id)a3 vertexBytes:(const void *)a4 fragmentBytes:(const void *)a5;
@end

@implementation TSDMetalShader

- (id)p_createPipelineStateWithRenderPipelineDescriptor:(id)a3 device:(id)a4 setupUniforms:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (a5)
  {
    v23 = 0;
    v24 = 0;
    v11 = [v9 newRenderPipelineStateWithDescriptor:v8 options:3 reflection:&v24 error:&v23];
    v12 = v24;
    v13 = v23;
    if (v12)
    {
      v14 = [(MTLRenderPipelineReflection *)v12 vertexBindings];
      self->_vertexUniformsIndex = [(TSDMetalShader *)self p_indexOfUniformsFromMetalBindings:v14 size:&self->_vertexUniformsSize bufferIndex:&self->_bufferIndex];

      v15 = [(MTLRenderPipelineReflection *)v12 fragmentBindings];
      self->_fragmentUniformsIndex = [(TSDMetalShader *)self p_indexOfUniformsFromMetalBindings:v15 size:&self->_fragmentUniformsSize bufferIndex:0];
    }

    else
    {
      v15 = [MEMORY[0x277D6C290] currentHandler];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalShader p_createPipelineStateWithRenderPipelineDescriptor:device:setupUniforms:]"];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalShader.m"];
      [v15 handleFailureInFunction:v16 file:v17 lineNumber:89 description:{@"Failed to create pipeline reflection object, error %@", v13}];
    }

    pipelineReflectionObject = self->_pipelineReflectionObject;
    self->_pipelineReflectionObject = v12;

    if (v11)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v25 = 0;
    v11 = [v9 newRenderPipelineStateWithDescriptor:v8 error:&v25];
    v13 = v25;
    if (v11)
    {
      goto LABEL_9;
    }
  }

  v19 = [MEMORY[0x277D6C290] currentHandler];
  v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalShader p_createPipelineStateWithRenderPipelineDescriptor:device:setupUniforms:]"];
  v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalShader.m"];
  [v19 handleFailureInFunction:v20 file:v21 lineNumber:98 description:{@"Failed to create pipeline state, error %@", v13}];

LABEL_9:

  return v11;
}

- (int64_t)p_indexOfUniformsFromMetalBindings:(id)a3 size:(unint64_t *)a4 bufferIndex:(unint64_t *)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v23;
    v20 = 0;
    v21 = -1;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = TSUProtocolCast();
        if (![v11 type] && objc_msgSend(v12, "bufferDataType") == 1)
        {
          v13 = [v11 name];
          v14 = [v13 isEqualToString:@"uniforms"];

          v15 = [v12 index];
          v16 = v15;
          if (v14)
          {
            v8 = [v12 bufferDataSize];
            v21 = v16;
          }

          else
          {
            v20 = v15;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
    v20 = 0;
    v21 = -1;
  }

  if (a5)
  {
    *a5 = v20;
  }

  *a4 = v8;

  return v21;
}

- (void)p_setupPipelineStateWithVertexShader:(id)a3 fragmentShader:(id)a4 device:(id)a5 library:(id)a6 colorAttachment:(id)a7 velocityAttachment:(id)a8 setupUniforms:(BOOL)a9
{
  v34 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (v17)
  {
    v20 = objc_alloc_init(MEMORY[0x277CD6F78]);
    v21 = v20;
    if (v18)
    {
      v22 = [v20 colorAttachments];
      [v22 setObject:v18 atIndexedSubscript:0];

      if (v19)
      {
        v23 = [v21 colorAttachments];
        [v23 setObject:v19 atIndexedSubscript:1];
      }

      v24 = [(TSDMetalShader *)self name];

      if (v24)
      {
        v25 = [(TSDMetalShader *)self name];
        [v21 setLabel:v25];
      }

      v26 = [v17 newFunctionWithName:v34];
      if (v26)
      {
        [v21 setVertexFunction:v26];
        v27 = [v17 newFunctionWithName:v15];
        if (v27)
        {
          [v21 setFragmentFunction:v27];
          v28 = [(TSDMetalShader *)self p_createPipelineStateWithRenderPipelineDescriptor:v21 device:v16 setupUniforms:a9];
          pipelineState = self->_pipelineState;
          self->_pipelineState = v28;
        }

        else
        {
          pipelineState = [MEMORY[0x277D6C290] currentHandler];
          [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalShader p_setupPipelineStateWithVertexShader:fragmentShader:device:library:colorAttachment:velocityAttachment:setupUniforms:]"];
          v31 = v33 = v16;
          v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalShader.m"];
          [pipelineState handleFailureInFunction:v31 file:v32 lineNumber:173 description:{@"invalid nil value for '%s'", "fragmentFunction"}];

          v16 = v33;
        }
      }

      else
      {
        v27 = [MEMORY[0x277D6C290] currentHandler];
        pipelineState = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalShader p_setupPipelineStateWithVertexShader:fragmentShader:device:library:colorAttachment:velocityAttachment:setupUniforms:]"];
        v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalShader.m"];
        [v27 handleFailureInFunction:pipelineState file:v30 lineNumber:165 description:{@"invalid nil value for '%s'", "vertexFunction"}];
      }
    }

    else
    {
      v26 = [MEMORY[0x277D6C290] currentHandler];
      v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalShader p_setupPipelineStateWithVertexShader:fragmentShader:device:library:colorAttachment:velocityAttachment:setupUniforms:]"];
      pipelineState = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalShader.m"];
      [v26 handleFailureInFunction:v27 file:pipelineState lineNumber:149 description:{@"invalid nil value for '%s'", "colorAttachment"}];
    }
  }

  else
  {
    v21 = [MEMORY[0x277D6C290] currentHandler];
    v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalShader p_setupPipelineStateWithVertexShader:fragmentShader:device:library:colorAttachment:velocityAttachment:setupUniforms:]"];
    v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalShader.m"];
    [v21 handleFailureInFunction:v26 file:v27 lineNumber:141 description:@"Can't load shaders from nil library"];
  }
}

- (void)p_setupPipelineStateWithVertexFunction:(id)a3 fragmentShader:(id)a4 device:(id)a5 library:(id)a6 colorAttachment:(id)a7 velocityAttachment:(id)a8 setupUniforms:(BOOL)a9
{
  v31 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (v17)
  {
    v20 = objc_alloc_init(MEMORY[0x277CD6F78]);
    v21 = v20;
    if (v18)
    {
      v22 = [v20 colorAttachments];
      [v22 setObject:v18 atIndexedSubscript:0];

      if (v19)
      {
        v23 = [v21 colorAttachments];
        [v23 setObject:v19 atIndexedSubscript:1];
      }

      v24 = [(TSDMetalShader *)self name];

      if (v24)
      {
        v25 = [(TSDMetalShader *)self name];
        [v21 setLabel:v25];
      }

      if (v31)
      {
        [v21 setVertexFunction:?];
        v26 = [v17 newFunctionWithName:v15];
        if (v26)
        {
          [v21 setFragmentFunction:v26];
          v27 = [(TSDMetalShader *)self p_createPipelineStateWithRenderPipelineDescriptor:v21 device:v16 setupUniforms:a9];
          pipelineState = self->_pipelineState;
          self->_pipelineState = v27;
          goto LABEL_14;
        }

        pipelineState = [MEMORY[0x277D6C290] currentHandler];
        v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalShader p_setupPipelineStateWithVertexFunction:fragmentShader:device:library:colorAttachment:velocityAttachment:setupUniforms:]"];
        v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalShader.m"];
        [pipelineState handleFailureInFunction:v29 file:v30 lineNumber:222 description:{@"invalid nil value for '%s'", "fragmentFunction"}];
      }

      else
      {
        v26 = [MEMORY[0x277D6C290] currentHandler];
        pipelineState = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalShader p_setupPipelineStateWithVertexFunction:fragmentShader:device:library:colorAttachment:velocityAttachment:setupUniforms:]"];
        v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalShader.m"];
        [v26 handleFailureInFunction:pipelineState file:v29 lineNumber:214 description:{@"invalid nil value for '%s'", "vertexFunction"}];
      }
    }

    else
    {
      v26 = [MEMORY[0x277D6C290] currentHandler];
      pipelineState = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalShader p_setupPipelineStateWithVertexFunction:fragmentShader:device:library:colorAttachment:velocityAttachment:setupUniforms:]"];
      v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalShader.m"];
      [v26 handleFailureInFunction:pipelineState file:v29 lineNumber:199 description:{@"invalid nil value for '%s'", "colorAttachment"}];
    }
  }

  else
  {
    v21 = [MEMORY[0x277D6C290] currentHandler];
    v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalShader p_setupPipelineStateWithVertexFunction:fragmentShader:device:library:colorAttachment:velocityAttachment:setupUniforms:]"];
    pipelineState = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalShader.m"];
    [v21 handleFailureInFunction:v26 file:pipelineState lineNumber:191 description:@"Can't load shaders from nil library"];
  }

LABEL_14:
}

- (TSDMetalShader)initWithDefaultVertexShader:(id)a3 fragmentShader:(id)a4 device:(id)a5 colorAttachment:(id)a6 velocityAttachment:(id)a7 label:(id)a8 setupUniforms:(BOOL)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v25.receiver = self;
  v25.super_class = TSDMetalShader;
  v21 = [(TSDMetalShader *)&v25 init];
  if (v21)
  {
    v22 = [TSDMetalShaderLibraryLoader loadDefaultLibraryWithDevice:v17];
    objc_storeStrong(&v21->_name, a8);
    v21->_vertexUniformsIndex = -1;
    v21->_fragmentUniformsIndex = -1;
    LOBYTE(v24) = a9;
    [(TSDMetalShader *)v21 p_setupPipelineStateWithVertexShader:v15 fragmentShader:v16 device:v17 library:v22 colorAttachment:v18 velocityAttachment:v19 setupUniforms:v24];
  }

  return v21;
}

- (id)initDefaultShaderWithVertexShader:(id)a3 fragmentShader:(id)a4 device:(id)a5 colorAttachment:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v13 componentsSeparatedByString:@"_"];
  v15 = [v14 objectAtIndexedSubscript:0];
  v16 = [v15 copy];

  LOBYTE(v19) = 1;
  v17 = [(TSDMetalShader *)self initWithDefaultVertexShader:v13 fragmentShader:v12 device:v11 colorAttachment:v10 velocityAttachment:0 label:v16 setupUniforms:v19];

  return v17;
}

- (id)initDefaultTextureShaderWithDevice:(id)a3 colorAttachment:(id)a4
{
  LOBYTE(v7) = 0;
  v4 = [(TSDMetalShader *)self initWithDefaultVertexShader:@"TSDMetalShaderDefaultTexture_VertexShader" fragmentShader:@"TSDMetalShaderDefaultTexture_FragmentShader" device:a3 colorAttachment:a4 velocityAttachment:0 label:@"Default Texture Shader" setupUniforms:v7];
  v5 = v4;
  if (v4)
  {
    [(TSDMetalShader *)v4 p_setDefaultVertexUniforms];
  }

  return v5;
}

- (id)initDefaultTextureAndOpacityShaderWithDevice:(id)a3 colorAttachment:(id)a4
{
  LOBYTE(v7) = 0;
  v4 = [(TSDMetalShader *)self initWithDefaultVertexShader:@"TSDMetalShaderDefaultTexture_VertexShader" fragmentShader:@"TSDMetalShaderDefaultOpacityTexture_FragmentShader" device:a3 colorAttachment:a4 velocityAttachment:0 label:@"Default Texture and Opacity Shader" setupUniforms:v7];
  v5 = v4;
  if (v4)
  {
    [(TSDMetalShader *)v4 p_setDefaultVertexUniforms];
    *&v5->_fragmentUniformsIndex = xmmword_26CA668D0;
  }

  return v5;
}

- (id)initDefaultGaussianBlurShaderWithDevice:(id)a3 colorAttachment:(id)a4 halfSizedRadius:(BOOL)a5
{
  if (a5)
  {
    v6 = @"TSDMetalShaderDefaultHalfSizedRadiusGaussianBlur_FragmentShader";
  }

  else
  {
    v6 = @"TSDMetalShaderDefaultGaussianBlur_FragmentShader";
  }

  if (a5)
  {
    v7 = @"Default Gaussain Blur Shader with Radius 5";
  }

  else
  {
    v7 = @"Default Gaussian Blur Shader with Radius 9";
  }

  LOBYTE(v11) = 0;
  v8 = [(TSDMetalShader *)self initWithDefaultVertexShader:@"TSDMetalShaderDefaultTexture_VertexShader" fragmentShader:v6 device:a3 colorAttachment:a4 velocityAttachment:0 label:v7 setupUniforms:v11];
  v9 = v8;
  if (v8)
  {
    [(TSDMetalShader *)v8 p_setDefaultVertexUniforms];
    *&v9->_fragmentUniformsIndex = xmmword_26CA668E0;
  }

  return v9;
}

- (id)initDefaultTextureMotionBlurShaderWithDevice:(id)a3 colorAttachment:(id)a4 velocityAttachment:(id)a5
{
  LOBYTE(v6) = 0;
  result = [(TSDMetalShader *)self initWithDefaultVertexShader:@"TSDMetalShaderDefaultMotionBlurTexture_VertexShader" fragmentShader:@"TSDMetalShaderDefaultMotionBlurTexture_FragmentShader" device:a3 colorAttachment:a4 velocityAttachment:a5 label:@"Default Texture Shader with Motion Blur" setupUniforms:v6];
  if (result)
  {
    *(result + 8) = xmmword_26CA668F0;
    *(result + 7) = 1;
  }

  return result;
}

- (id)initDefaultTextureAndOpacityMotionBlurShaderWithDevice:(id)a3 colorAttachment:(id)a4 velocityAttachment:(id)a5 motionBlur:(BOOL)a6
{
  v6 = a6;
  if (v6)
  {
    v10 = @"TSDMetalShaderDefaultMotionBlurTexture_VertexShader";
  }

  else
  {
    v10 = @"TSDMetalShaderDefaultTexture_VertexShader";
  }

  if (v6)
  {
    v11 = @"TSDMetalShaderDefaultMotionBlurOpacityTexture_FragmentShader";
  }

  else
  {
    v11 = @"TSDMetalShaderDefaultOpacityTexture_FragmentShader";
  }

  LOBYTE(v15) = 0;
  result = [(TSDMetalShader *)self initWithDefaultVertexShader:v10 fragmentShader:v11 device:a3 colorAttachment:a4 velocityAttachment:a5 label:@"Default Texture and Opacity Shader with Motion Blur" setupUniforms:v15];
  if (result)
  {
    v13 = 64;
    if (v6)
    {
      v13 = 192;
    }

    v14 = !v6;
    *(result + 1) = v14;
    *(result + 2) = v13;
    *(result + 3) = v14;
    *(result + 4) = 4;
    *(result + 7) = v6;
  }

  return result;
}

- (id)initDefaultBlendShaderWithDevice:(id)a3 colorAttachment:(id)a4 velocityAttachment:(id)a5 motionBlur:(BOOL)a6
{
  v6 = a6;
  if (v6)
  {
    v10 = @"TSDMetalShaderDefaultMotionBlurTexture_VertexShader";
  }

  else
  {
    v10 = @"TSDMetalShaderDefaultTexture_VertexShader";
  }

  if (v6)
  {
    v11 = @"TSDMetalShaderDefaultMotionBlurBlendTexture_FragmentShader";
  }

  else
  {
    v11 = @"TSDMetalShaderDefaultBlendTexture_FragmentShader";
  }

  if (v6)
  {
    v12 = @"Default Texture Blending Shader with Motion Blur";
  }

  else
  {
    v12 = @"Default Texture Blending Shader";
  }

  LOBYTE(v16) = 0;
  v13 = [(TSDMetalShader *)self initWithDefaultVertexShader:v10 fragmentShader:v11 device:a3 colorAttachment:a4 velocityAttachment:a5 label:v12 setupUniforms:v16];
  v14 = v13;
  if (v13)
  {
    if (v6)
    {
      *&v13->_vertexUniformsIndex = xmmword_26CA668F0;
      v13->_bufferIndex = 1;
    }

    else
    {
      [(TSDMetalShader *)v13 p_setDefaultVertexUniforms];
    }

    *&v14->_fragmentUniformsIndex = xmmword_26CA66900;
  }

  return v14;
}

- (id)initDefaultVelocityCollectionShaderWithDevice:(id)a3 colorAttachment:(id)a4
{
  LOBYTE(v5) = 0;
  result = [(TSDMetalShader *)self initWithDefaultVertexShader:@"TSDMetalMotionBlurEffect_Collection_Vertex" fragmentShader:@"TSDMetalMotionBlurEffect_Collection_Fragment" device:a3 colorAttachment:a4 velocityAttachment:0 label:@"Default Velocity Collection Shader" setupUniforms:v5];
  if (result)
  {
    *(result + 8) = xmmword_26CA66910;
    *(result + 24) = xmmword_26CA66920;
    *(result + 7) = 1;
  }

  return result;
}

- (id)initDefaultVelocityVisualizerShaderWithDevice:(id)a3 colorAttachment:(id)a4
{
  LOBYTE(v7) = 0;
  v4 = [(TSDMetalShader *)self initWithDefaultVertexShader:@"TSDMetalShaderDefaultTexture_VertexShader" fragmentShader:@"TSDMetalMotionBlurEffect_Visualizer_Fragment" device:a3 colorAttachment:a4 velocityAttachment:0 label:@"Default Velocity Visualizer Shader" setupUniforms:v7];
  v5 = v4;
  if (v4)
  {
    [(TSDMetalShader *)v4 p_setDefaultVertexUniforms];
  }

  return v5;
}

- (id)initDefaultNeighborMaxBlurShaderWithDevice:(id)a3 colorAttachment:(id)a4
{
  LOBYTE(v7) = 0;
  v4 = [(TSDMetalShader *)self initWithDefaultVertexShader:@"TSDMetalShaderDefaultTexture_VertexShader" fragmentShader:@"TSDMetalMotionBlurEffect_Neighbor_Fragment" device:a3 colorAttachment:a4 velocityAttachment:0 label:@"Default Neighbor Max Shader" setupUniforms:v7];
  v5 = v4;
  if (v4)
  {
    [(TSDMetalShader *)v4 p_setDefaultVertexUniforms];
    *&v5->_fragmentUniformsIndex = xmmword_26CA66910;
  }

  return v5;
}

- (id)initDefaultTileMaxBlurShaderWithDevice:(id)a3 colorAttachment:(id)a4
{
  LOBYTE(v5) = 0;
  result = [(TSDMetalShader *)self initWithDefaultVertexShader:@"TSDMetalMotionBlurEffect_Tile_Vertex" fragmentShader:@"TSDMetalMotionBlurEffect_Tile_Fragment" device:a3 colorAttachment:a4 velocityAttachment:0 label:@"Default Tile Max Shader" setupUniforms:v5];
  if (result)
  {
    *(result + 8) = xmmword_26CA66930;
    *(result + 24) = xmmword_26CA66940;
    *(result + 7) = 1;
  }

  return result;
}

- (id)initDefaultSingleDirectionMotionBlurShaderWithDevice:(id)a3 colorAttachment:(id)a4
{
  LOBYTE(v5) = 0;
  result = [(TSDMetalShader *)self initWithDefaultVertexShader:@"TSDMetalShaderMotionBlurSingleDirection_VertexShader" fragmentShader:@"TSDMetalShaderMotionBlurSingleDirection_FragmentShader" device:a3 colorAttachment:a4 velocityAttachment:0 label:@"Default Single Direction Motion Blur Shader" setupUniforms:v5];
  if (result)
  {
    *(result + 8) = xmmword_26CA66950;
    *(result + 24) = xmmword_26CA668D0;
    *(result + 7) = 0;
  }

  return result;
}

- (id)initCustomShaderWithVertexShader:(id)a3 fragmentShader:(id)a4 device:(id)a5 library:(id)a6 colorAttachment:(id)a7 velocityAttachment:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v31.receiver = self;
  v31.super_class = TSDMetalShader;
  v20 = [(TSDMetalShader *)&v31 init];
  if (v20)
  {
    v30 = v15;
    v21 = [TSDMetalShaderLibraryLoader loadDefaultLibraryWithDevice:v16];
    v22 = [TSDMetalShaderLibraryLoader loadApplicationLibraryWithDevice:v16 library:v17];
    v23 = [v14 componentsSeparatedByString:@"_"];
    v24 = [v23 objectAtIndexedSubscript:0];
    v25 = [v24 copy];
    name = v20->_name;
    v20->_name = v25;

    v20->_vertexUniformsIndex = -1;
    v20->_fragmentUniformsIndex = -1;
    v27 = [v21 newFunctionWithName:v14];
    if (!v27)
    {
      v27 = [v22 newFunctionWithName:v14];
    }

    LOBYTE(v29) = 1;
    v15 = v30;
    [(TSDMetalShader *)v20 p_setupPipelineStateWithVertexFunction:v27 fragmentShader:v30 device:v16 library:v22 colorAttachment:v18 velocityAttachment:v19 setupUniforms:v29];
  }

  return v20;
}

- (id)initQuadTextureShaderWithFragmentShader:(id)a3 device:(id)a4 library:(id)a5 colorAttachment:(id)a6 velocityAttachment:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v27.receiver = self;
  v27.super_class = TSDMetalShader;
  v17 = [(TSDMetalShader *)&v27 init];
  if (v17)
  {
    v18 = [TSDMetalShaderLibraryLoader loadDefaultLibraryWithDevice:v13];
    v19 = [TSDMetalShaderLibraryLoader loadApplicationLibraryWithDevice:v13 library:v14];
    v20 = [v12 componentsSeparatedByString:@"_"];
    v21 = [v20 objectAtIndexedSubscript:0];
    v22 = [v21 copy];
    name = v17->_name;
    v17->_name = v22;

    v17->_vertexUniformsIndex = -1;
    v17->_fragmentUniformsIndex = -1;
    v24 = [v18 newFunctionWithName:@"TSDMetalShaderDefaultTexture_VertexShader"];
    if (!v24)
    {
      v24 = [v19 newFunctionWithName:@"TSDMetalShaderDefaultMotionBlurTexture_VertexShader"];
    }

    LOBYTE(v26) = 1;
    [(TSDMetalShader *)v17 p_setupPipelineStateWithVertexFunction:v24 fragmentShader:v12 device:v13 library:v19 colorAttachment:v15 velocityAttachment:v16 setupUniforms:v26];
  }

  return v17;
}

- (id)initQuadMotionBlurTextureShaderWithFragmentShader:(id)a3 device:(id)a4 library:(id)a5 colorAttachment:(id)a6 velocityAttachment:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v27.receiver = self;
  v27.super_class = TSDMetalShader;
  v17 = [(TSDMetalShader *)&v27 init];
  if (v17)
  {
    v18 = [TSDMetalShaderLibraryLoader loadDefaultLibraryWithDevice:v13];
    v19 = [TSDMetalShaderLibraryLoader loadApplicationLibraryWithDevice:v13 library:v14];
    v20 = [v12 componentsSeparatedByString:@"_"];
    v21 = [v20 objectAtIndexedSubscript:0];
    v22 = [v21 copy];
    name = v17->_name;
    v17->_name = v22;

    v17->_vertexUniformsIndex = -1;
    v17->_fragmentUniformsIndex = -1;
    v24 = [v18 newFunctionWithName:@"TSDMetalShaderDefaultMotionBlurTexture_VertexShader"];
    if (!v24)
    {
      v24 = [v19 newFunctionWithName:@"TSDMetalShaderDefaultMotionBlurTexture_VertexShader"];
    }

    LOBYTE(v26) = 1;
    [(TSDMetalShader *)v17 p_setupPipelineStateWithVertexFunction:v24 fragmentShader:v12 device:v13 library:v19 colorAttachment:v15 velocityAttachment:v16 setupUniforms:v26];
  }

  return v17;
}

- (void)setPipelineStateWithEncoder:(id)a3 vertexBytes:(const void *)a4 fragmentBytes:(const void *)a5
{
  v8 = a3;
  [v8 pushDebugGroup:self->_name];
  [v8 setRenderPipelineState:self->_pipelineState];
  if ((self->_vertexUniformsIndex & 0x8000000000000000) == 0)
  {
    [v8 setVertexBytes:a4 length:self->_vertexUniformsSize atIndex:?];
  }

  if ((self->_fragmentUniformsIndex & 0x8000000000000000) == 0)
  {
    [v8 setFragmentBytes:a5 length:self->_fragmentUniformsSize atIndex:?];
  }
}

- (void)setPipelineStateWithEncoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 pushDebugGroup:name];
  [v5 setRenderPipelineState:self->_pipelineState];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = TSDMetalShader;
  v4 = [(TSDMetalShader *)&v10 description];
  v5 = [(TSDMetalShader *)self name];
  v6 = v5;
  v7 = @"Unnamed";
  if (v5)
  {
    v7 = v5;
  }

  v8 = [v3 stringWithFormat:@"%@: %@", v4, v7];

  return v8;
}

@end