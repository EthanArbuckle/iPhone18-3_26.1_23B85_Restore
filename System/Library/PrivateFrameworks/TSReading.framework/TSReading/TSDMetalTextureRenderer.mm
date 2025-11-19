@interface TSDMetalTextureRenderer
- (TSDMetalTextureRenderer)initWithTextures:(id)a3 size:(CGSize)a4 context:(id)a5;
- (void)drawWithEncoder:(id)a3 andContext:(id)a4 atPercent:(double)a5;
- (void)p_generateValuesAndBuffers;
- (void)p_setupBlendingShader;
- (void)p_setupOffscreenPass;
- (void)p_setupShader;
- (void)setShouldDrawOffscreenPass:(BOOL)a3;
- (void)setTextures:(id)a3;
- (void)updateWithTexture:(id)a3 blendPercent:(double)a4 outgoingTexture:(id)a5 incomingTexture:(id)a6;
- (void)updateWithTexture:(id)a3 opacity:(double)a4;
- (void)updateWithTexture:(id)a3 transform:(CATransform3D *)a4 opacity:(double)a5 cullBackFace:(BOOL)a6;
@end

@implementation TSDMetalTextureRenderer

- (TSDMetalTextureRenderer)initWithTextures:(id)a3 size:(CGSize)a4 context:(id)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = TSDMetalTextureRenderer;
  v11 = [(TSDMetalTextureRenderer *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_metalContext, a5);
    v12->_size.width = width;
    v12->_size.height = height;
    v12->_opacity = 1.0;
    [(TSDMetalTextureRenderer *)v12 setTextures:v9];
    [(TSDMetalTextureRenderer *)v12 p_setupShader];
  }

  return v12;
}

- (void)setTextures:(id)a3
{
  objc_storeStrong(&self->_textures, a3);

  [(TSDMetalTextureRenderer *)self p_generateValuesAndBuffers];
}

- (void)setShouldDrawOffscreenPass:(BOOL)a3
{
  self->_shouldDrawOffscreenPass = a3;
  if (a3)
  {
    [(TSDMetalTextureRenderer *)self p_setupOffscreenPass];
  }

  [(TSDMetalTextureRenderer *)self p_generateValuesAndBuffers];
}

- (void)p_generateValuesAndBuffers
{
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](self->_textures, "count")}];
  drawValues = self->_drawValues;
  self->_drawValues = v3;

  memset(&v48, 0, sizeof(v48));
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](self->_textures, "count", TSDTransform3DMakeOrtho(&v48, 0.0, self->_size.width, 0.0, self->_size.height, -1.0, 1.0))}];
  if ([(NSArray *)self->_textures count])
  {
    v6 = 0;
    v7 = *MEMORY[0x277D6C3C8];
    v8 = *(MEMORY[0x277D6C3C8] + 8);
    v9 = *(MEMORY[0x277D6C3C8] + 16);
    v10 = *(MEMORY[0x277D6C3C8] + 24);
    __asm { FMOV            V0.2D, #1.0 }

    v41 = _Q0;
    do
    {
      v16 = [(NSArray *)self->_textures objectAtIndexedSubscript:v6];
      v17 = [v16 conformsToProtocol:&unk_287E95D00];

      if (v17)
      {
        v46 = 0uLL;
        v44 = v48;
        v45 = v41;
        v47 = 0;
        v18 = [MEMORY[0x277CCAE60] valueWithBytes:&v44 objCType:"{?={CATransform3D=dddddddddddddddd}ddB@@}"];
        [(NSMutableArray *)self->_drawValues setObject:v18 atIndexedSubscript:v6];

        v19 = [MEMORY[0x277CBEB68] null];
        [(NSArray *)v5 setObject:v19 atIndexedSubscript:v6];
      }

      else
      {
        v20 = [(NSArray *)self->_textures objectAtIndexedSubscript:v6];
        [v20 frameOnCanvas];
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v28 = v27;

        v47 = 0;
        v45 = 0u;
        v46 = 0u;
        v44 = v48;
        v29 = [(NSArray *)self->_textures objectAtIndexedSubscript:v6];
        [v29 textureOpacity];
        *&v45 = v30;
        *(&v45 + 1) = 0x3FF0000000000000;
        LOBYTE(v46) = 0;
        *(&v46 + 1) = 0;
        v47 = 0;

        if (self->_shouldDrawOffscreenPass)
        {
          v31 = self->_size.height - v24 - v28;
          v42 = v48;
          CATransform3DTranslate(&v43, &v42, v22, v31, 0.0);
          v44 = v43;
          v32 = [(NSArray *)self->_textures objectAtIndexedSubscript:v6];
          [v32 frame];
          TSURectWithSize();
          v22 = v33;
          v35 = v34;
          v26 = v36;
          v28 = v37;
        }

        else
        {
          v35 = self->_size.height - v24 - v28;
        }

        v38 = [MEMORY[0x277CCAE60] valueWithBytes:&v44 objCType:"{?={CATransform3D=dddddddddddddddd}ddB@@}"];
        [(NSMutableArray *)self->_drawValues setObject:v38 atIndexedSubscript:v6];

        v19 = [(TSDMetalContext *)self->_metalContext device];
        v39 = [TSDGPUDataBuffer newDataBufferWithVertexRect:v19 textureRect:v22 meshSize:v35 device:v26, v28, v7, v8, v9, v10, 0x4014000000000000, 0x4014000000000000];
        [(NSArray *)v5 setObject:v39 atIndexedSubscript:v6];
      }

      ++v6;
    }

    while (v6 < [(NSArray *)self->_textures count]);
  }

  dataBuffers = self->_dataBuffers;
  self->_dataBuffers = v5;
}

- (void)p_setupShader
{
  if (!self->_shader)
  {
    v8 = objc_alloc_init(MEMORY[0x277CD6F68]);
    [v8 setPixelFormat:-[TSDMetalContext pixelFormat](self->_metalContext, "pixelFormat")];
    [v8 setBlendingEnabled:1];
    [v8 setRgbBlendOperation:0];
    [v8 setAlphaBlendOperation:0];
    [v8 setSourceRGBBlendFactor:1];
    [v8 setSourceAlphaBlendFactor:1];
    [v8 setDestinationRGBBlendFactor:5];
    [v8 setDestinationAlphaBlendFactor:5];
    v4 = [TSDMetalShader alloc];
    v5 = [(TSDMetalContext *)self->_metalContext device];
    v6 = [(TSDMetalShader *)v4 initDefaultTextureAndOpacityShaderWithDevice:v5 colorAttachment:v8];
    shader = self->_shader;
    self->_shader = v6;
  }
}

- (void)p_setupBlendingShader
{
  if (!self->_blendingShader)
  {
    v8 = objc_alloc_init(MEMORY[0x277CD6F68]);
    [v8 setPixelFormat:-[TSDMetalContext pixelFormat](self->_metalContext, "pixelFormat")];
    [v8 setBlendingEnabled:1];
    [v8 setRgbBlendOperation:0];
    [v8 setAlphaBlendOperation:0];
    [v8 setSourceRGBBlendFactor:1];
    [v8 setSourceAlphaBlendFactor:1];
    [v8 setDestinationRGBBlendFactor:5];
    [v8 setDestinationAlphaBlendFactor:5];
    v4 = [TSDMetalShader alloc];
    v5 = [(TSDMetalContext *)self->_metalContext device];
    v6 = [(TSDMetalShader *)v4 initDefaultBlendShaderWithDevice:v5 colorAttachment:v8 velocityAttachment:0 motionBlur:0];
    blendingShader = self->_blendingShader;
    self->_blendingShader = v6;
  }
}

- (void)p_setupOffscreenPass
{
  if (!self->_renderTarget)
  {
    v4 = [[TSDMetalRenderTarget alloc] initWithSize:self->_metalContext metalContext:self->_size.width, self->_size.height];
    renderTarget = self->_renderTarget;
    self->_renderTarget = v4;

    width = self->_size.width;
    height = self->_size.height;
    v10 = [(TSDMetalContext *)self->_metalContext device];
    v8 = [TSDGPUDataBuffer newDataBufferWithVertexRect:v10 textureRect:0.0 meshSize:0.0 device:width, height, *MEMORY[0x277D6C3C8], *(MEMORY[0x277D6C3C8] + 8), *(MEMORY[0x277D6C3C8] + 16), *(MEMORY[0x277D6C3C8] + 24), 0x4014000000000000, 0x4014000000000000];
    encodingDataBuffer = self->_encodingDataBuffer;
    self->_encodingDataBuffer = v8;
  }
}

- (void)drawWithEncoder:(id)a3 andContext:(id)a4 atPercent:(double)a5
{
  v8 = a3;
  v9 = a4;
  if (!self->_shader)
  {
    v10 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalTextureRenderer drawWithEncoder:andContext:atPercent:]"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalTextureRenderer.m"];
    [v10 handleFailureInFunction:v11 file:v12 lineNumber:155 description:{@"invalid nil value for '%s'", "_shader"}];
  }

  v13 = v8;
  if ([(NSArray *)self->_textures count])
  {
    v14 = 0;
    while (1)
    {
      v77 = 0;
      v78 = 0;
      v15 = [(NSMutableArray *)self->_drawValues objectAtIndexedSubscript:v14];
      [v15 getValue:&v66];

      v16 = v74;
      if (v16 > 0.0)
      {
        break;
      }

      if (++v14 >= [(NSArray *)self->_textures count])
      {
        goto LABEL_7;
      }
    }

    v63 = v13;
    if (self->_shouldDrawOffscreenPass)
    {
      v19 = [v9 commandQueue];
      v62 = [v19 commandBuffer];

      v20 = [(TSDMetalRenderTarget *)self->_renderTarget passDescriptor];
      v18 = [v62 renderCommandEncoderWithDescriptor:v20];

      if (!v18)
      {
        v21 = [MEMORY[0x277D6C290] currentHandler];
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalTextureRenderer drawWithEncoder:andContext:atPercent:]"];
        v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalTextureRenderer.m"];
        [v21 handleFailureInFunction:v22 file:v23 lineNumber:175 description:{@"invalid nil value for '%s'", "renderEncoder"}];
      }

      if (!self->_renderTarget)
      {
        v24 = [MEMORY[0x277D6C290] currentHandler];
        v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalTextureRenderer drawWithEncoder:andContext:atPercent:]"];
        v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalTextureRenderer.m"];
        [v24 handleFailureInFunction:v25 file:v26 lineNumber:176 description:{@"invalid nil value for '%s'", "_renderTarget"}];
      }

      if (!self->_encodingDataBuffer)
      {
        v27 = [MEMORY[0x277D6C290] currentHandler];
        v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalTextureRenderer drawWithEncoder:andContext:atPercent:]"];
        v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalTextureRenderer.m"];
        [v27 handleFailureInFunction:v28 file:v29 lineNumber:177 description:{@"invalid nil value for '%s'", "_encodingDataBuffer"}];
      }
    }

    else
    {
      v62 = 0;
      v18 = v13;
    }

    if ([(NSArray *)self->_textures count])
    {
      for (i = 0; i < [(NSArray *)self->_textures count]; ++i)
      {
        v77 = 0;
        v78 = 0;
        v31 = [(NSMutableArray *)self->_drawValues objectAtIndexedSubscript:i];
        [v31 getValue:&v66];

        if (v76)
        {
          v32 = 2;
        }

        else
        {
          v32 = 0;
        }

        [v18 setCullMode:v32];
        v33 = [(NSArray *)self->_textures objectAtIndexedSubscript:i];
        v34 = [v33 conformsToProtocol:&unk_287E95D00];

        if (v34)
        {
          opacity = 1.0;
          if (!self->_shouldDrawOffscreenPass)
          {
            opacity = self->_opacity;
          }

          v36 = v74;
          v37 = [(NSArray *)self->_textures objectAtIndexedSubscript:i];
          [v37 setOpacity:v36 * opacity];

          v38 = [(NSArray *)self->_textures objectAtIndexedSubscript:i];
          v39 = objc_opt_respondsToSelector();

          if ((v39 & 1) == 0)
          {
            goto LABEL_39;
          }

          v40 = [(NSArray *)self->_textures objectAtIndexedSubscript:i];
          [v40 renderEffectAtPercent:objc_msgSend(v9 atBufferIndex:"currentBuffer") withEncoder:{v18, a5}];
        }

        else
        {
          v65[0] = vcvt_hight_f32_f64(vcvt_f32_f64(v66), v67);
          v65[1] = vcvt_hight_f32_f64(vcvt_f32_f64(v68), v69);
          v65[2] = vcvt_hight_f32_f64(vcvt_f32_f64(v70), v71);
          v65[3] = vcvt_hight_f32_f64(vcvt_f32_f64(v72), v73);
          if (v78)
          {
            if (!self->_blendingShader)
            {
              v41 = v9;
              v42 = [MEMORY[0x277D6C290] currentHandler];
              v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalTextureRenderer drawWithEncoder:andContext:atPercent:]"];
              v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalTextureRenderer.m"];
              [v42 handleFailureInFunction:v43 file:v44 lineNumber:202 description:{@"invalid nil value for '%s'", "_blendingShader"}];

              v9 = v41;
            }

            v45 = 1.0;
            if (!self->_shouldDrawOffscreenPass)
            {
              v45 = self->_opacity;
            }

            v46 = v74 * v45;
            v47 = v75;
            *v64 = v46;
            *&v64[1] = v47;
            if (v46 <= 0.0)
            {
              goto LABEL_39;
            }

            v48 = [v77 metalTexture];
            [v18 setFragmentTexture:v48 atIndex:0];

            v49 = [v78 metalTexture];
            [v18 setFragmentTexture:v49 atIndex:1];

            [(TSDMetalShader *)self->_blendingShader setPipelineStateWithEncoder:v18 vertexBytes:v65 fragmentBytes:v64];
            v40 = [(NSArray *)self->_dataBuffers objectAtIndexedSubscript:i];
            [v40 drawWithEncoder:v18 atIndex:{-[TSDMetalShader bufferIndex](self->_blendingShader, "bufferIndex")}];
          }

          else
          {
            v50 = 1.0;
            if (!self->_shouldDrawOffscreenPass)
            {
              v50 = self->_opacity;
            }

            v51 = v74 * v50;
            *v64 = v51;
            if (v51 <= 0.0)
            {
              goto LABEL_39;
            }

            v52 = [(NSArray *)self->_textures objectAtIndexedSubscript:i];
            v53 = [v52 metalTexture];
            [v18 setFragmentTexture:v53 atIndex:0];

            [(TSDMetalShader *)self->_shader setPipelineStateWithEncoder:v18 vertexBytes:v65 fragmentBytes:v64];
            v40 = [(NSArray *)self->_dataBuffers objectAtIndexedSubscript:i];
            [v40 drawWithEncoder:v18 atIndex:{-[TSDMetalShader bufferIndex](self->_shader, "bufferIndex")}];
          }
        }

LABEL_39:
      }
    }

    if (self->_shouldDrawOffscreenPass)
    {
      [v18 endEncoding];
      v17 = v62;
      [v62 commit];
      renderTarget = self->_renderTarget;
      if (renderTarget)
      {
        [(TSDMetalRenderTarget *)renderTarget orthoProjectionWithVerticalFlip:0];
        renderTarget = self->_renderTarget;
        v55 = vcvt_hight_f32_f64(vcvt_f32_f64(v72), v73);
        v56 = vcvt_hight_f32_f64(vcvt_f32_f64(v70), v71);
        v57 = vcvt_hight_f32_f64(vcvt_f32_f64(v68), v69);
        v58 = vcvt_hight_f32_f64(vcvt_f32_f64(v66), v67);
      }

      else
      {
        v58 = 0uLL;
        v57 = 0uLL;
        v56 = 0uLL;
        v55 = 0uLL;
      }

      v66 = v58;
      v67 = v57;
      v68 = v56;
      v69 = v55;
      v59 = self->_opacity;
      *v65 = v59;
      v60 = [(TSDMetalRenderTarget *)renderTarget textures];
      v61 = [v60 firstObject];
      [v63 setFragmentTexture:v61 atIndex:0];

      v13 = v63;
      [(TSDMetalShader *)self->_shader setPipelineStateWithEncoder:v63 vertexBytes:&v66 fragmentBytes:v65];
      [(TSDMTLDataBuffer *)self->_encodingDataBuffer drawWithEncoder:v63 atIndex:[(TSDMetalShader *)self->_shader bufferIndex]];
    }

    else
    {
      v17 = v62;
      v13 = v63;
    }
  }

  else
  {
LABEL_7:
    v17 = 0;
    v18 = v13;
  }
}

- (void)updateWithTexture:(id)a3 opacity:(double)a4
{
  v6 = a3;
  v7 = [(NSArray *)self->_textures indexOfObject:v6];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v7;
    v13 = 0;
    v14 = 0;
    v9 = [(NSMutableArray *)self->_drawValues objectAtIndexedSubscript:v7];
    [v9 getValue:v11];

    v12 = a4;
    v10 = [MEMORY[0x277CCAE60] valueWithBytes:v11 objCType:"{?={CATransform3D=dddddddddddddddd}ddB@@}"];
    [(NSMutableArray *)self->_drawValues setObject:v10 atIndexedSubscript:v8];
  }
}

- (void)updateWithTexture:(id)a3 transform:(CATransform3D *)a4 opacity:(double)a5 cullBackFace:(BOOL)a6
{
  v10 = a3;
  v11 = [(NSArray *)self->_textures indexOfObject:v10];
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = v11;
    v22 = 0;
    v23 = 0;
    v13 = [(NSMutableArray *)self->_drawValues objectAtIndexedSubscript:v11];
    [v13 getValue:v19];

    v14 = *&a4->m33;
    v19[4] = *&a4->m31;
    v19[5] = v14;
    v15 = *&a4->m43;
    v19[6] = *&a4->m41;
    v19[7] = v15;
    v16 = *&a4->m13;
    v19[0] = *&a4->m11;
    v19[1] = v16;
    v17 = *&a4->m23;
    v19[2] = *&a4->m21;
    v19[3] = v17;
    v20 = a5;
    v21 = a6;
    v18 = [MEMORY[0x277CCAE60] valueWithBytes:v19 objCType:"{?={CATransform3D=dddddddddddddddd}ddB@@}"];
    [(NSMutableArray *)self->_drawValues setObject:v18 atIndexedSubscript:v12];
  }
}

- (void)updateWithTexture:(id)a3 blendPercent:(double)a4 outgoingTexture:(id)a5 incomingTexture:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(NSArray *)self->_textures indexOfObject:v10];
  if (v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = v13;
    v18 = 0;
    v19 = 0;
    v15 = [(NSMutableArray *)self->_drawValues objectAtIndexedSubscript:v13];
    [v15 getValue:v17];

    *&v17[17] = a4;
    objc_storeStrong(&v18, a5);
    objc_storeStrong(&v19, a6);
    v16 = [MEMORY[0x277CCAE60] valueWithBytes:v17 objCType:"{?={CATransform3D=dddddddddddddddd}ddB@@}"];
    [(NSMutableArray *)self->_drawValues setObject:v16 atIndexedSubscript:v14];

    [(TSDMetalTextureRenderer *)self p_setupBlendingShader];
  }
}

@end