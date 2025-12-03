@interface TSDMetalShader
- (TSDMetalShader)initWithDefaultVertexShader:(id)shader fragmentShader:(id)fragmentShader device:(id)device colorAttachment:(id)attachment velocityAttachment:(id)velocityAttachment label:(id)label setupUniforms:(BOOL)uniforms;
- (id)description;
- (id)initCustomShaderWithVertexShader:(id)shader fragmentShader:(id)fragmentShader device:(id)device library:(id)library colorAttachment:(id)attachment velocityAttachment:(id)velocityAttachment;
- (id)initDefaultBlendShaderWithDevice:(id)device colorAttachment:(id)attachment velocityAttachment:(id)velocityAttachment motionBlur:(BOOL)blur;
- (id)initDefaultGaussianBlurShaderWithDevice:(id)device colorAttachment:(id)attachment halfSizedRadius:(BOOL)radius;
- (id)initDefaultNeighborMaxBlurShaderWithDevice:(id)device colorAttachment:(id)attachment;
- (id)initDefaultShaderWithVertexShader:(id)shader fragmentShader:(id)fragmentShader device:(id)device colorAttachment:(id)attachment;
- (id)initDefaultSingleDirectionMotionBlurShaderWithDevice:(id)device colorAttachment:(id)attachment;
- (id)initDefaultTextureAndOpacityMotionBlurShaderWithDevice:(id)device colorAttachment:(id)attachment velocityAttachment:(id)velocityAttachment motionBlur:(BOOL)blur;
- (id)initDefaultTextureAndOpacityShaderWithDevice:(id)device colorAttachment:(id)attachment;
- (id)initDefaultTextureMotionBlurShaderWithDevice:(id)device colorAttachment:(id)attachment velocityAttachment:(id)velocityAttachment;
- (id)initDefaultTextureShaderWithDevice:(id)device colorAttachment:(id)attachment;
- (id)initDefaultTileMaxBlurShaderWithDevice:(id)device colorAttachment:(id)attachment;
- (id)initDefaultVelocityCollectionShaderWithDevice:(id)device colorAttachment:(id)attachment;
- (id)initDefaultVelocityVisualizerShaderWithDevice:(id)device colorAttachment:(id)attachment;
- (id)initQuadMotionBlurTextureShaderWithFragmentShader:(id)shader device:(id)device library:(id)library colorAttachment:(id)attachment velocityAttachment:(id)velocityAttachment;
- (id)initQuadTextureShaderWithFragmentShader:(id)shader device:(id)device library:(id)library colorAttachment:(id)attachment velocityAttachment:(id)velocityAttachment;
- (id)p_createPipelineStateWithRenderPipelineDescriptor:(id)descriptor device:(id)device setupUniforms:(BOOL)uniforms;
- (int64_t)p_indexOfUniformsFromMetalBindings:(id)bindings size:(unint64_t *)size bufferIndex:(unint64_t *)index;
- (void)p_setupPipelineStateWithVertexFunction:(id)function fragmentShader:(id)shader device:(id)device library:(id)library colorAttachment:(id)attachment velocityAttachment:(id)velocityAttachment setupUniforms:(BOOL)uniforms;
- (void)p_setupPipelineStateWithVertexShader:(id)shader fragmentShader:(id)fragmentShader device:(id)device library:(id)library colorAttachment:(id)attachment velocityAttachment:(id)velocityAttachment setupUniforms:(BOOL)uniforms;
- (void)setPipelineStateWithEncoder:(id)encoder;
- (void)setPipelineStateWithEncoder:(id)encoder vertexBytes:(const void *)bytes fragmentBytes:(const void *)fragmentBytes;
@end

@implementation TSDMetalShader

- (id)p_createPipelineStateWithRenderPipelineDescriptor:(id)descriptor device:(id)device setupUniforms:(BOOL)uniforms
{
  descriptorCopy = descriptor;
  deviceCopy = device;
  v10 = deviceCopy;
  if (uniforms)
  {
    v23 = 0;
    v24 = 0;
    v11 = [deviceCopy newRenderPipelineStateWithDescriptor:descriptorCopy options:3 reflection:&v24 error:&v23];
    v12 = v24;
    v13 = v23;
    if (v12)
    {
      vertexBindings = [(MTLRenderPipelineReflection *)v12 vertexBindings];
      self->_vertexUniformsIndex = [(TSDMetalShader *)self p_indexOfUniformsFromMetalBindings:vertexBindings size:&self->_vertexUniformsSize bufferIndex:&self->_bufferIndex];

      fragmentBindings = [(MTLRenderPipelineReflection *)v12 fragmentBindings];
      self->_fragmentUniformsIndex = [(TSDMetalShader *)self p_indexOfUniformsFromMetalBindings:fragmentBindings size:&self->_fragmentUniformsSize bufferIndex:0];
    }

    else
    {
      fragmentBindings = [MEMORY[0x277D6C290] currentHandler];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalShader p_createPipelineStateWithRenderPipelineDescriptor:device:setupUniforms:]"];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalShader.m"];
      [fragmentBindings handleFailureInFunction:v16 file:v17 lineNumber:89 description:{@"Failed to create pipeline reflection object, error %@", v13}];
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
    v11 = [deviceCopy newRenderPipelineStateWithDescriptor:descriptorCopy error:&v25];
    v13 = v25;
    if (v11)
    {
      goto LABEL_9;
    }
  }

  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalShader p_createPipelineStateWithRenderPipelineDescriptor:device:setupUniforms:]"];
  v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalShader.m"];
  [currentHandler handleFailureInFunction:v20 file:v21 lineNumber:98 description:{@"Failed to create pipeline state, error %@", v13}];

LABEL_9:

  return v11;
}

- (int64_t)p_indexOfUniformsFromMetalBindings:(id)bindings size:(unint64_t *)size bufferIndex:(unint64_t *)index
{
  v27 = *MEMORY[0x277D85DE8];
  bindingsCopy = bindings;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = [bindingsCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    bufferDataSize = 0;
    v9 = *v23;
    v20 = 0;
    v21 = -1;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(bindingsCopy);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = TSUProtocolCast();
        if (![v11 type] && objc_msgSend(v12, "bufferDataType") == 1)
        {
          name = [v11 name];
          v14 = [name isEqualToString:@"uniforms"];

          index = [v12 index];
          v16 = index;
          if (v14)
          {
            bufferDataSize = [v12 bufferDataSize];
            v21 = v16;
          }

          else
          {
            v20 = index;
          }
        }
      }

      v7 = [bindingsCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  else
  {
    bufferDataSize = 0;
    v20 = 0;
    v21 = -1;
  }

  if (index)
  {
    *index = v20;
  }

  *size = bufferDataSize;

  return v21;
}

- (void)p_setupPipelineStateWithVertexShader:(id)shader fragmentShader:(id)fragmentShader device:(id)device library:(id)library colorAttachment:(id)attachment velocityAttachment:(id)velocityAttachment setupUniforms:(BOOL)uniforms
{
  shaderCopy = shader;
  fragmentShaderCopy = fragmentShader;
  deviceCopy = device;
  libraryCopy = library;
  attachmentCopy = attachment;
  velocityAttachmentCopy = velocityAttachment;
  if (libraryCopy)
  {
    v20 = objc_alloc_init(MEMORY[0x277CD6F78]);
    currentHandler3 = v20;
    if (attachmentCopy)
    {
      colorAttachments = [v20 colorAttachments];
      [colorAttachments setObject:attachmentCopy atIndexedSubscript:0];

      if (velocityAttachmentCopy)
      {
        colorAttachments2 = [currentHandler3 colorAttachments];
        [colorAttachments2 setObject:velocityAttachmentCopy atIndexedSubscript:1];
      }

      name = [(TSDMetalShader *)self name];

      if (name)
      {
        name2 = [(TSDMetalShader *)self name];
        [currentHandler3 setLabel:name2];
      }

      currentHandler2 = [libraryCopy newFunctionWithName:shaderCopy];
      if (currentHandler2)
      {
        [currentHandler3 setVertexFunction:currentHandler2];
        currentHandler = [libraryCopy newFunctionWithName:fragmentShaderCopy];
        if (currentHandler)
        {
          [currentHandler3 setFragmentFunction:currentHandler];
          v28 = [(TSDMetalShader *)self p_createPipelineStateWithRenderPipelineDescriptor:currentHandler3 device:deviceCopy setupUniforms:uniforms];
          pipelineState = self->_pipelineState;
          self->_pipelineState = v28;
        }

        else
        {
          pipelineState = [MEMORY[0x277D6C290] currentHandler];
          [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalShader p_setupPipelineStateWithVertexShader:fragmentShader:device:library:colorAttachment:velocityAttachment:setupUniforms:]"];
          v31 = v33 = deviceCopy;
          v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalShader.m"];
          [pipelineState handleFailureInFunction:v31 file:v32 lineNumber:173 description:{@"invalid nil value for '%s'", "fragmentFunction"}];

          deviceCopy = v33;
        }
      }

      else
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        pipelineState = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalShader p_setupPipelineStateWithVertexShader:fragmentShader:device:library:colorAttachment:velocityAttachment:setupUniforms:]"];
        v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalShader.m"];
        [currentHandler handleFailureInFunction:pipelineState file:v30 lineNumber:165 description:{@"invalid nil value for '%s'", "vertexFunction"}];
      }
    }

    else
    {
      currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
      currentHandler = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalShader p_setupPipelineStateWithVertexShader:fragmentShader:device:library:colorAttachment:velocityAttachment:setupUniforms:]"];
      pipelineState = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalShader.m"];
      [currentHandler2 handleFailureInFunction:currentHandler file:pipelineState lineNumber:149 description:{@"invalid nil value for '%s'", "colorAttachment"}];
    }
  }

  else
  {
    currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
    currentHandler2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalShader p_setupPipelineStateWithVertexShader:fragmentShader:device:library:colorAttachment:velocityAttachment:setupUniforms:]"];
    currentHandler = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalShader.m"];
    [currentHandler3 handleFailureInFunction:currentHandler2 file:currentHandler lineNumber:141 description:@"Can't load shaders from nil library"];
  }
}

- (void)p_setupPipelineStateWithVertexFunction:(id)function fragmentShader:(id)shader device:(id)device library:(id)library colorAttachment:(id)attachment velocityAttachment:(id)velocityAttachment setupUniforms:(BOOL)uniforms
{
  functionCopy = function;
  shaderCopy = shader;
  deviceCopy = device;
  libraryCopy = library;
  attachmentCopy = attachment;
  velocityAttachmentCopy = velocityAttachment;
  if (libraryCopy)
  {
    v20 = objc_alloc_init(MEMORY[0x277CD6F78]);
    currentHandler2 = v20;
    if (attachmentCopy)
    {
      colorAttachments = [v20 colorAttachments];
      [colorAttachments setObject:attachmentCopy atIndexedSubscript:0];

      if (velocityAttachmentCopy)
      {
        colorAttachments2 = [currentHandler2 colorAttachments];
        [colorAttachments2 setObject:velocityAttachmentCopy atIndexedSubscript:1];
      }

      name = [(TSDMetalShader *)self name];

      if (name)
      {
        name2 = [(TSDMetalShader *)self name];
        [currentHandler2 setLabel:name2];
      }

      if (functionCopy)
      {
        [currentHandler2 setVertexFunction:?];
        currentHandler = [libraryCopy newFunctionWithName:shaderCopy];
        if (currentHandler)
        {
          [currentHandler2 setFragmentFunction:currentHandler];
          v27 = [(TSDMetalShader *)self p_createPipelineStateWithRenderPipelineDescriptor:currentHandler2 device:deviceCopy setupUniforms:uniforms];
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
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        pipelineState = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalShader p_setupPipelineStateWithVertexFunction:fragmentShader:device:library:colorAttachment:velocityAttachment:setupUniforms:]"];
        v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalShader.m"];
        [currentHandler handleFailureInFunction:pipelineState file:v29 lineNumber:214 description:{@"invalid nil value for '%s'", "vertexFunction"}];
      }
    }

    else
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      pipelineState = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalShader p_setupPipelineStateWithVertexFunction:fragmentShader:device:library:colorAttachment:velocityAttachment:setupUniforms:]"];
      v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalShader.m"];
      [currentHandler handleFailureInFunction:pipelineState file:v29 lineNumber:199 description:{@"invalid nil value for '%s'", "colorAttachment"}];
    }
  }

  else
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    currentHandler = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalShader p_setupPipelineStateWithVertexFunction:fragmentShader:device:library:colorAttachment:velocityAttachment:setupUniforms:]"];
    pipelineState = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalShader.m"];
    [currentHandler2 handleFailureInFunction:currentHandler file:pipelineState lineNumber:191 description:@"Can't load shaders from nil library"];
  }

LABEL_14:
}

- (TSDMetalShader)initWithDefaultVertexShader:(id)shader fragmentShader:(id)fragmentShader device:(id)device colorAttachment:(id)attachment velocityAttachment:(id)velocityAttachment label:(id)label setupUniforms:(BOOL)uniforms
{
  shaderCopy = shader;
  fragmentShaderCopy = fragmentShader;
  deviceCopy = device;
  attachmentCopy = attachment;
  velocityAttachmentCopy = velocityAttachment;
  labelCopy = label;
  v25.receiver = self;
  v25.super_class = TSDMetalShader;
  v21 = [(TSDMetalShader *)&v25 init];
  if (v21)
  {
    v22 = [TSDMetalShaderLibraryLoader loadDefaultLibraryWithDevice:deviceCopy];
    objc_storeStrong(&v21->_name, label);
    v21->_vertexUniformsIndex = -1;
    v21->_fragmentUniformsIndex = -1;
    LOBYTE(v24) = uniforms;
    [(TSDMetalShader *)v21 p_setupPipelineStateWithVertexShader:shaderCopy fragmentShader:fragmentShaderCopy device:deviceCopy library:v22 colorAttachment:attachmentCopy velocityAttachment:velocityAttachmentCopy setupUniforms:v24];
  }

  return v21;
}

- (id)initDefaultShaderWithVertexShader:(id)shader fragmentShader:(id)fragmentShader device:(id)device colorAttachment:(id)attachment
{
  attachmentCopy = attachment;
  deviceCopy = device;
  fragmentShaderCopy = fragmentShader;
  shaderCopy = shader;
  v14 = [shaderCopy componentsSeparatedByString:@"_"];
  v15 = [v14 objectAtIndexedSubscript:0];
  v16 = [v15 copy];

  LOBYTE(v19) = 1;
  v17 = [(TSDMetalShader *)self initWithDefaultVertexShader:shaderCopy fragmentShader:fragmentShaderCopy device:deviceCopy colorAttachment:attachmentCopy velocityAttachment:0 label:v16 setupUniforms:v19];

  return v17;
}

- (id)initDefaultTextureShaderWithDevice:(id)device colorAttachment:(id)attachment
{
  LOBYTE(v7) = 0;
  v4 = [(TSDMetalShader *)self initWithDefaultVertexShader:@"TSDMetalShaderDefaultTexture_VertexShader" fragmentShader:@"TSDMetalShaderDefaultTexture_FragmentShader" device:device colorAttachment:attachment velocityAttachment:0 label:@"Default Texture Shader" setupUniforms:v7];
  v5 = v4;
  if (v4)
  {
    [(TSDMetalShader *)v4 p_setDefaultVertexUniforms];
  }

  return v5;
}

- (id)initDefaultTextureAndOpacityShaderWithDevice:(id)device colorAttachment:(id)attachment
{
  LOBYTE(v7) = 0;
  v4 = [(TSDMetalShader *)self initWithDefaultVertexShader:@"TSDMetalShaderDefaultTexture_VertexShader" fragmentShader:@"TSDMetalShaderDefaultOpacityTexture_FragmentShader" device:device colorAttachment:attachment velocityAttachment:0 label:@"Default Texture and Opacity Shader" setupUniforms:v7];
  v5 = v4;
  if (v4)
  {
    [(TSDMetalShader *)v4 p_setDefaultVertexUniforms];
    *&v5->_fragmentUniformsIndex = xmmword_26CA668D0;
  }

  return v5;
}

- (id)initDefaultGaussianBlurShaderWithDevice:(id)device colorAttachment:(id)attachment halfSizedRadius:(BOOL)radius
{
  if (radius)
  {
    v6 = @"TSDMetalShaderDefaultHalfSizedRadiusGaussianBlur_FragmentShader";
  }

  else
  {
    v6 = @"TSDMetalShaderDefaultGaussianBlur_FragmentShader";
  }

  if (radius)
  {
    v7 = @"Default Gaussain Blur Shader with Radius 5";
  }

  else
  {
    v7 = @"Default Gaussian Blur Shader with Radius 9";
  }

  LOBYTE(v11) = 0;
  v8 = [(TSDMetalShader *)self initWithDefaultVertexShader:@"TSDMetalShaderDefaultTexture_VertexShader" fragmentShader:v6 device:device colorAttachment:attachment velocityAttachment:0 label:v7 setupUniforms:v11];
  v9 = v8;
  if (v8)
  {
    [(TSDMetalShader *)v8 p_setDefaultVertexUniforms];
    *&v9->_fragmentUniformsIndex = xmmword_26CA668E0;
  }

  return v9;
}

- (id)initDefaultTextureMotionBlurShaderWithDevice:(id)device colorAttachment:(id)attachment velocityAttachment:(id)velocityAttachment
{
  LOBYTE(v6) = 0;
  result = [(TSDMetalShader *)self initWithDefaultVertexShader:@"TSDMetalShaderDefaultMotionBlurTexture_VertexShader" fragmentShader:@"TSDMetalShaderDefaultMotionBlurTexture_FragmentShader" device:device colorAttachment:attachment velocityAttachment:velocityAttachment label:@"Default Texture Shader with Motion Blur" setupUniforms:v6];
  if (result)
  {
    *(result + 8) = xmmword_26CA668F0;
    *(result + 7) = 1;
  }

  return result;
}

- (id)initDefaultTextureAndOpacityMotionBlurShaderWithDevice:(id)device colorAttachment:(id)attachment velocityAttachment:(id)velocityAttachment motionBlur:(BOOL)blur
{
  blurCopy = blur;
  if (blurCopy)
  {
    v10 = @"TSDMetalShaderDefaultMotionBlurTexture_VertexShader";
  }

  else
  {
    v10 = @"TSDMetalShaderDefaultTexture_VertexShader";
  }

  if (blurCopy)
  {
    v11 = @"TSDMetalShaderDefaultMotionBlurOpacityTexture_FragmentShader";
  }

  else
  {
    v11 = @"TSDMetalShaderDefaultOpacityTexture_FragmentShader";
  }

  LOBYTE(v15) = 0;
  result = [(TSDMetalShader *)self initWithDefaultVertexShader:v10 fragmentShader:v11 device:device colorAttachment:attachment velocityAttachment:velocityAttachment label:@"Default Texture and Opacity Shader with Motion Blur" setupUniforms:v15];
  if (result)
  {
    v13 = 64;
    if (blurCopy)
    {
      v13 = 192;
    }

    v14 = !blurCopy;
    *(result + 1) = v14;
    *(result + 2) = v13;
    *(result + 3) = v14;
    *(result + 4) = 4;
    *(result + 7) = blurCopy;
  }

  return result;
}

- (id)initDefaultBlendShaderWithDevice:(id)device colorAttachment:(id)attachment velocityAttachment:(id)velocityAttachment motionBlur:(BOOL)blur
{
  blurCopy = blur;
  if (blurCopy)
  {
    v10 = @"TSDMetalShaderDefaultMotionBlurTexture_VertexShader";
  }

  else
  {
    v10 = @"TSDMetalShaderDefaultTexture_VertexShader";
  }

  if (blurCopy)
  {
    v11 = @"TSDMetalShaderDefaultMotionBlurBlendTexture_FragmentShader";
  }

  else
  {
    v11 = @"TSDMetalShaderDefaultBlendTexture_FragmentShader";
  }

  if (blurCopy)
  {
    v12 = @"Default Texture Blending Shader with Motion Blur";
  }

  else
  {
    v12 = @"Default Texture Blending Shader";
  }

  LOBYTE(v16) = 0;
  v13 = [(TSDMetalShader *)self initWithDefaultVertexShader:v10 fragmentShader:v11 device:device colorAttachment:attachment velocityAttachment:velocityAttachment label:v12 setupUniforms:v16];
  v14 = v13;
  if (v13)
  {
    if (blurCopy)
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

- (id)initDefaultVelocityCollectionShaderWithDevice:(id)device colorAttachment:(id)attachment
{
  LOBYTE(v5) = 0;
  result = [(TSDMetalShader *)self initWithDefaultVertexShader:@"TSDMetalMotionBlurEffect_Collection_Vertex" fragmentShader:@"TSDMetalMotionBlurEffect_Collection_Fragment" device:device colorAttachment:attachment velocityAttachment:0 label:@"Default Velocity Collection Shader" setupUniforms:v5];
  if (result)
  {
    *(result + 8) = xmmword_26CA66910;
    *(result + 24) = xmmword_26CA66920;
    *(result + 7) = 1;
  }

  return result;
}

- (id)initDefaultVelocityVisualizerShaderWithDevice:(id)device colorAttachment:(id)attachment
{
  LOBYTE(v7) = 0;
  v4 = [(TSDMetalShader *)self initWithDefaultVertexShader:@"TSDMetalShaderDefaultTexture_VertexShader" fragmentShader:@"TSDMetalMotionBlurEffect_Visualizer_Fragment" device:device colorAttachment:attachment velocityAttachment:0 label:@"Default Velocity Visualizer Shader" setupUniforms:v7];
  v5 = v4;
  if (v4)
  {
    [(TSDMetalShader *)v4 p_setDefaultVertexUniforms];
  }

  return v5;
}

- (id)initDefaultNeighborMaxBlurShaderWithDevice:(id)device colorAttachment:(id)attachment
{
  LOBYTE(v7) = 0;
  v4 = [(TSDMetalShader *)self initWithDefaultVertexShader:@"TSDMetalShaderDefaultTexture_VertexShader" fragmentShader:@"TSDMetalMotionBlurEffect_Neighbor_Fragment" device:device colorAttachment:attachment velocityAttachment:0 label:@"Default Neighbor Max Shader" setupUniforms:v7];
  v5 = v4;
  if (v4)
  {
    [(TSDMetalShader *)v4 p_setDefaultVertexUniforms];
    *&v5->_fragmentUniformsIndex = xmmword_26CA66910;
  }

  return v5;
}

- (id)initDefaultTileMaxBlurShaderWithDevice:(id)device colorAttachment:(id)attachment
{
  LOBYTE(v5) = 0;
  result = [(TSDMetalShader *)self initWithDefaultVertexShader:@"TSDMetalMotionBlurEffect_Tile_Vertex" fragmentShader:@"TSDMetalMotionBlurEffect_Tile_Fragment" device:device colorAttachment:attachment velocityAttachment:0 label:@"Default Tile Max Shader" setupUniforms:v5];
  if (result)
  {
    *(result + 8) = xmmword_26CA66930;
    *(result + 24) = xmmword_26CA66940;
    *(result + 7) = 1;
  }

  return result;
}

- (id)initDefaultSingleDirectionMotionBlurShaderWithDevice:(id)device colorAttachment:(id)attachment
{
  LOBYTE(v5) = 0;
  result = [(TSDMetalShader *)self initWithDefaultVertexShader:@"TSDMetalShaderMotionBlurSingleDirection_VertexShader" fragmentShader:@"TSDMetalShaderMotionBlurSingleDirection_FragmentShader" device:device colorAttachment:attachment velocityAttachment:0 label:@"Default Single Direction Motion Blur Shader" setupUniforms:v5];
  if (result)
  {
    *(result + 8) = xmmword_26CA66950;
    *(result + 24) = xmmword_26CA668D0;
    *(result + 7) = 0;
  }

  return result;
}

- (id)initCustomShaderWithVertexShader:(id)shader fragmentShader:(id)fragmentShader device:(id)device library:(id)library colorAttachment:(id)attachment velocityAttachment:(id)velocityAttachment
{
  shaderCopy = shader;
  fragmentShaderCopy = fragmentShader;
  deviceCopy = device;
  libraryCopy = library;
  attachmentCopy = attachment;
  velocityAttachmentCopy = velocityAttachment;
  v31.receiver = self;
  v31.super_class = TSDMetalShader;
  v20 = [(TSDMetalShader *)&v31 init];
  if (v20)
  {
    v30 = fragmentShaderCopy;
    v21 = [TSDMetalShaderLibraryLoader loadDefaultLibraryWithDevice:deviceCopy];
    v22 = [TSDMetalShaderLibraryLoader loadApplicationLibraryWithDevice:deviceCopy library:libraryCopy];
    v23 = [shaderCopy componentsSeparatedByString:@"_"];
    v24 = [v23 objectAtIndexedSubscript:0];
    v25 = [v24 copy];
    name = v20->_name;
    v20->_name = v25;

    v20->_vertexUniformsIndex = -1;
    v20->_fragmentUniformsIndex = -1;
    v27 = [v21 newFunctionWithName:shaderCopy];
    if (!v27)
    {
      v27 = [v22 newFunctionWithName:shaderCopy];
    }

    LOBYTE(v29) = 1;
    fragmentShaderCopy = v30;
    [(TSDMetalShader *)v20 p_setupPipelineStateWithVertexFunction:v27 fragmentShader:v30 device:deviceCopy library:v22 colorAttachment:attachmentCopy velocityAttachment:velocityAttachmentCopy setupUniforms:v29];
  }

  return v20;
}

- (id)initQuadTextureShaderWithFragmentShader:(id)shader device:(id)device library:(id)library colorAttachment:(id)attachment velocityAttachment:(id)velocityAttachment
{
  shaderCopy = shader;
  deviceCopy = device;
  libraryCopy = library;
  attachmentCopy = attachment;
  velocityAttachmentCopy = velocityAttachment;
  v27.receiver = self;
  v27.super_class = TSDMetalShader;
  v17 = [(TSDMetalShader *)&v27 init];
  if (v17)
  {
    v18 = [TSDMetalShaderLibraryLoader loadDefaultLibraryWithDevice:deviceCopy];
    v19 = [TSDMetalShaderLibraryLoader loadApplicationLibraryWithDevice:deviceCopy library:libraryCopy];
    v20 = [shaderCopy componentsSeparatedByString:@"_"];
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
    [(TSDMetalShader *)v17 p_setupPipelineStateWithVertexFunction:v24 fragmentShader:shaderCopy device:deviceCopy library:v19 colorAttachment:attachmentCopy velocityAttachment:velocityAttachmentCopy setupUniforms:v26];
  }

  return v17;
}

- (id)initQuadMotionBlurTextureShaderWithFragmentShader:(id)shader device:(id)device library:(id)library colorAttachment:(id)attachment velocityAttachment:(id)velocityAttachment
{
  shaderCopy = shader;
  deviceCopy = device;
  libraryCopy = library;
  attachmentCopy = attachment;
  velocityAttachmentCopy = velocityAttachment;
  v27.receiver = self;
  v27.super_class = TSDMetalShader;
  v17 = [(TSDMetalShader *)&v27 init];
  if (v17)
  {
    v18 = [TSDMetalShaderLibraryLoader loadDefaultLibraryWithDevice:deviceCopy];
    v19 = [TSDMetalShaderLibraryLoader loadApplicationLibraryWithDevice:deviceCopy library:libraryCopy];
    v20 = [shaderCopy componentsSeparatedByString:@"_"];
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
    [(TSDMetalShader *)v17 p_setupPipelineStateWithVertexFunction:v24 fragmentShader:shaderCopy device:deviceCopy library:v19 colorAttachment:attachmentCopy velocityAttachment:velocityAttachmentCopy setupUniforms:v26];
  }

  return v17;
}

- (void)setPipelineStateWithEncoder:(id)encoder vertexBytes:(const void *)bytes fragmentBytes:(const void *)fragmentBytes
{
  encoderCopy = encoder;
  [encoderCopy pushDebugGroup:self->_name];
  [encoderCopy setRenderPipelineState:self->_pipelineState];
  if ((self->_vertexUniformsIndex & 0x8000000000000000) == 0)
  {
    [encoderCopy setVertexBytes:bytes length:self->_vertexUniformsSize atIndex:?];
  }

  if ((self->_fragmentUniformsIndex & 0x8000000000000000) == 0)
  {
    [encoderCopy setFragmentBytes:fragmentBytes length:self->_fragmentUniformsSize atIndex:?];
  }
}

- (void)setPipelineStateWithEncoder:(id)encoder
{
  name = self->_name;
  encoderCopy = encoder;
  [encoderCopy pushDebugGroup:name];
  [encoderCopy setRenderPipelineState:self->_pipelineState];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = TSDMetalShader;
  v4 = [(TSDMetalShader *)&v10 description];
  name = [(TSDMetalShader *)self name];
  v6 = name;
  v7 = @"Unnamed";
  if (name)
  {
    v7 = name;
  }

  v8 = [v3 stringWithFormat:@"%@: %@", v4, v7];

  return v8;
}

@end