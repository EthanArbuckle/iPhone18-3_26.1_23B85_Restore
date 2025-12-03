@interface PKTexturedCardRenderer
- (__n128)setRotation:(__n128 *)result;
- (double)rotation;
- (id)_initWithStyle:(void *)style renderLoop:(void *)loop diffuseLoader:(void *)loader metalnessLoader:(void *)metalnessLoader normalLoader:;
- (id)initWithStyle:(void *)style renderLoop:(uint64_t)loop diffuse:(double)diffuse insets:(double)insets;
- (id)initWithStyle:(void *)style renderLoop:(uint64_t)loop diffuse:(uint64_t)diffuse metalness:(uint64_t)metalness normal:;
- (uint64_t)isInvalidated;
- (uint64_t)setLightIntensity:(uint64_t)result;
- (unint64_t)updateRenderPassDescriptorWithDrawable:(void *)drawable;
- (void)dealloc;
- (void)invalidate;
- (void)renderAtTime:(uint64_t)time;
@end

@implementation PKTexturedCardRenderer

- (uint64_t)isInvalidated
{
  if (self)
  {
    v1 = *(self + 8);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (double)rotation
{
  if (self)
  {
    v1 = *(self + 176);
  }

  else
  {
    *&v1 = 0;
  }

  return *&v1;
}

- (id)_initWithStyle:(void *)style renderLoop:(void *)loop diffuseLoader:(void *)loader metalnessLoader:(void *)metalnessLoader normalLoader:
{
  v70 = *MEMORY[0x277D85DE8];
  styleCopy = style;
  loopCopy = loop;
  loaderCopy = loader;
  metalnessLoaderCopy = metalnessLoader;
  v59 = metalnessLoaderCopy;
  v60 = loaderCopy;
  if (!self)
  {
    goto LABEL_38;
  }

  if (!styleCopy || a2 >= 5 || !loopCopy || a2 <= 2 && !loaderCopy || a2 <= 2 && !metalnessLoaderCopy)
  {
    __break(1u);
LABEL_38:
    selfCopy5 = 0;
    goto LABEL_36;
  }

  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (!v16)
  {
    goto LABEL_34;
  }

  v63.receiver = self;
  v63.super_class = PKTexturedCardRenderer;
  v17 = objc_msgSendSuper2(&v63, sel_init);
  self = v17;
  if (v17)
  {
    obj = metalnessLoader;
    v58 = loopCopy;
    v17[2] = a2;
    objc_storeStrong(v17 + 3, style);
    device = [styleCopy device];
    v62 = 0;
    v19 = [device newDefaultLibraryWithBundle:v16 error:&v62];
    v20 = v62;
    v21 = v20;
    if (v19)
    {
      v55 = v19;
      v56 = device;
      v54 = styleCopy;

      v22 = objc_alloc_init(MEMORY[0x277CD7090]);
      attributes = [v22 attributes];
      v24 = [attributes objectAtIndexedSubscript:0];
      [v24 setFormat:29];
      [v24 setOffset:0];
      [v24 setBufferIndex:0];
      v25 = [attributes objectAtIndexedSubscript:1];

      [v25 setFormat:29];
      [v25 setOffset:8];
      [v25 setBufferIndex:0];
      v57 = v22;
      layouts = [v22 layouts];
      v27 = [layouts objectAtIndexedSubscript:0];

      [v27 setStride:16];
      [v27 setStepRate:1];
      [v27 setStepFunction:1];

      v28 = objc_alloc_init(MEMORY[0x277CD6F78]);
      v29 = [v16 pathForResource:off_279A00540[a2] ofType:@"pipelinelib"];
      if (v29)
      {
        v30 = [v56 newPipelineLibraryWithFilePath:v29 error:{0, obj}];
      }

      else
      {
        v30 = 0;
      }

      [v28 setPipelineLibrary:{v30, obj}];

      [v28 setVertexDescriptor:v57];
      v33 = v55;
      v34 = [v55 newFunctionWithName:@"texturedCard_vertex"];
      [v28 setVertexFunction:v34];

      v35 = [v55 newFunctionWithName:off_279A00568[a2]];
      styleCopy = v54;
      if (v35)
      {
        v36 = v35;
        [v28 setFragmentFunction:v35];
        colorAttachments = [v28 colorAttachments];
        v38 = [colorAttachments objectAtIndexedSubscript:0];
        [v38 setPixelFormat:objc_msgSend(v54, "pixelFormat")];

        v61 = 0;
        v39 = [v56 newRenderPipelineStateWithDescriptor:v28 error:&v61];
        v40 = v61;
        v41 = self[5];
        self[5] = v39;

        if (self[5])
        {

          newCommandQueue = [v56 newCommandQueue];
          v43 = self[4];
          self[4] = newCommandQueue;

          objc_storeStrong(self + 9, loop);
          objc_storeStrong(self + 10, loader);
          objc_storeStrong(self + 11, obja);
          *(self + 11) = xmmword_25E0D5B90;
          *(self + 42) = 1065353216;

          loopCopy = v58;
          goto LABEL_23;
        }

        v45 = v36;
        v47 = PKLogFacilityTypeGetObject();
        loopCopy = v58;
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v48 = self[2];
          *buf = 134218498;
          selfCopy4 = self;
          v66 = 2048;
          v67 = v48;
          v68 = 2114;
          v69 = v40;
          _os_log_impl(&dword_25E0A9000, v47, OS_LOG_TYPE_DEFAULT, "PKTexturedCardRenderer (%p:%ld): could not load pipeline - %{public}@.", buf, 0x20u);
        }

        v33 = v55;
        device = v56;
      }

      else
      {
        v45 = 0;
        v40 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
        {
          [PKTexturedCardRenderer _initWithStyle:self renderLoop:self + 2 diffuseLoader:v40 metalnessLoader:? normalLoader:?];
        }

        device = v56;
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v46 = self[2];
          *buf = 134218240;
          selfCopy4 = self;
          v66 = 2048;
          v67 = v46;
          _os_log_impl(&dword_25E0A9000, v40, OS_LOG_TYPE_DEFAULT, "PKTexturedCardRenderer (%p:%ld): could not load fragment function.", buf, 0x16u);
        }
      }
    }

    else
    {
      v31 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
        v51 = self[2];
        *buf = 134218498;
        selfCopy4 = self;
        v66 = 2048;
        v67 = v51;
        v68 = 2114;
        v69 = v21;
        _os_log_fault_impl(&dword_25E0A9000, v31, OS_LOG_TYPE_FAULT, "PKTexturedCardRenderer (%p:%ld): could not load metal library - %{public}@.", buf, 0x20u);
      }

      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = self[2];
        *buf = 134218498;
        selfCopy4 = self;
        v66 = 2048;
        v67 = v32;
        v68 = 2114;
        v69 = v21;
        _os_log_impl(&dword_25E0A9000, v31, OS_LOG_TYPE_DEFAULT, "PKTexturedCardRenderer (%p:%ld): could not load metal library - %{public}@.", buf, 0x20u);
      }
    }

LABEL_34:
    selfCopy5 = 0;
    goto LABEL_35;
  }

LABEL_23:
  self = self;
  selfCopy5 = self;
LABEL_35:

LABEL_36:
  v49 = *MEMORY[0x277D85DE8];
  return selfCopy5;
}

- (id)initWithStyle:(void *)style renderLoop:(uint64_t)loop diffuse:(double)diffuse insets:(double)insets
{
  styleCopy = style;
  v16 = styleCopy;
  if (!self)
  {
    goto LABEL_11;
  }

  if (a2 >= 5 || a2 <= 2)
  {
    __break(1u);
LABEL_11:
    selfCopy = 0;
    goto LABEL_9;
  }

  selfCopy = 0;
  if (styleCopy && loop)
  {
    device = [styleCopy device];
    v19 = [[PKTextureLoadDescriptor alloc] initForDevice:device];
    v20 = [v19 createLoaderForCGImage:loop];
    v21 = [(PKTexturedCardRenderer *)self _initWithStyle:a2 renderLoop:v16 diffuseLoader:v20 metalnessLoader:0 normalLoader:0];
    if (v21)
    {
      v21[15] = diffuse;
      v21[16] = insets;
      v21[17] = a7;
      v21[18] = a8;
    }

    self = v21;

    selfCopy = self;
  }

LABEL_9:

  return selfCopy;
}

- (id)initWithStyle:(void *)style renderLoop:(uint64_t)loop diffuse:(uint64_t)diffuse metalness:(uint64_t)metalness normal:
{
  styleCopy = style;
  v12 = styleCopy;
  if (!self)
  {
    goto LABEL_10;
  }

  if (a2 > 2)
  {
    __break(1u);
LABEL_10:
    selfCopy = 0;
    goto LABEL_8;
  }

  selfCopy = 0;
  if (styleCopy && loop && diffuse && metalness)
  {
    device = [styleCopy device];
    v15 = [[PKTextureLoadDescriptor alloc] initForDevice:device];
    v16 = [v15 createLoaderForCGImage:loop];
    v17 = [v15 createLoaderForCGImage:diffuse];
    v18 = [v15 createLoaderForCGImage:metalness];
    self = [(PKTexturedCardRenderer *)self _initWithStyle:a2 renderLoop:v12 diffuseLoader:v16 metalnessLoader:v17 normalLoader:v18];

    selfCopy = self;
  }

LABEL_8:

  return selfCopy;
}

- (void)dealloc
{
  [(PKTexturedCardRenderer *)self invalidate];
  v3.receiver = self;
  v3.super_class = PKTexturedCardRenderer;
  [(PKTexturedCardRenderer *)&v3 dealloc];
}

- (void)renderAtTime:(uint64_t)time
{
  if (time && (*(time + 8) & 1) == 0)
  {
    if ([*(time + 24) isDrawableAvailable])
    {
      currentDrawable = [*(time + 24) currentDrawable];
      if (currentDrawable && [(PKTexturedCardRenderer *)time updateRenderPassDescriptorWithDrawable:currentDrawable])
      {
        device = [*(time + 24) device];
        v4 = device;
        if (*(time + 96) || (v5 = [device newBufferWithBytes:&renderAtTime__vertices length:64 options:32], v6 = *(time + 96), *(time + 96) = v5, v6, *(time + 96)))
        {
          v7 = (time + 104);
          if (*(time + 104) || (v28 = *(time + 16), v28 <= 4) && (v29 = [v4 newBufferWithLength:qword_25E0D5E90[v28] options:0], v30 = *v7, *v7 = v29, v30, *v7))
          {
            commandBuffer = [*(time + 32) commandBuffer];
            v9 = commandBuffer;
            if (*(time + 72) || *(time + 80) || *(time + 88))
            {
              blitCommandEncoder = [commandBuffer blitCommandEncoder];
              v11 = *(time + 72);
              if (v11)
              {
                v39[0] = MEMORY[0x277D85DD0];
                v39[1] = 3221225472;
                v39[2] = __39__PKTexturedCardRenderer_renderAtTime___block_invoke;
                v39[3] = &unk_279A00520;
                v39[4] = time;
                v40 = v4;
                v41 = blitCommandEncoder;
                [v11 tiling:1 read:v39];
                v12 = *(time + 72);
                *(time + 72) = 0;
              }

              v13 = *(time + 80);
              if (v13)
              {
                v36[0] = MEMORY[0x277D85DD0];
                v36[1] = 3221225472;
                v36[2] = __39__PKTexturedCardRenderer_renderAtTime___block_invoke_69;
                v36[3] = &unk_279A00520;
                v36[4] = time;
                v37 = v4;
                v38 = blitCommandEncoder;
                [v13 tiling:1 read:v36];
                v14 = *(time + 80);
                *(time + 80) = 0;
              }

              v15 = *(time + 88);
              if (v15)
              {
                v33[0] = MEMORY[0x277D85DD0];
                v33[1] = 3221225472;
                v33[2] = __39__PKTexturedCardRenderer_renderAtTime___block_invoke_70;
                v33[3] = &unk_279A00520;
                v33[4] = time;
                v34 = v4;
                v35 = blitCommandEncoder;
                [v15 tiling:1 read:v33];
                v16 = *(time + 88);
                *(time + 88) = 0;
              }

              [blitCommandEncoder endEncoding];
            }

            v17 = *(time + 16);
            if (v17 >= 5)
            {
              __break(1u);
              return;
            }

            v18 = *(time + 112);
            if (v18 && (v17 > 2 || *(time + 152) && *(time + 160)))
            {
              if (v17 - 3 >= 2)
              {
                if (v17 == 1)
                {
                  [(PKTexturedCardRenderer *)time renderAtTime:?];
                }

                else
                {
                  [(PKTexturedCardRenderer *)time renderAtTime:?];
                }
              }

              else
              {
                width = [v18 width];
                height = [*(time + 112) height];
                *v21.i64 = simd_matrix4x4(*(time + 176));
                v32[0] = v21;
                v32[1] = v22;
                v32[2] = v23;
                v32[3] = v24;
                v21.i64[0] = height;
                v21.i64[1] = width;
                v25 = vcvtq_f64_u64(v21);
                v32[4] = vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(*(time + 120), v25)), vdivq_f64(*(time + 136), v25));
                contents = [*(time + 104) contents];
                if ([*(time + 104) length] > 0x4F)
                {
                  v27 = 80;
                }

                else
                {
                  v27 = [*v7 length];
                }

                memcpy(contents, v32, v27);
              }

              v31 = [v9 renderCommandEncoderWithDescriptor:*(time + 64)];
              [v31 setRenderPipelineState:*(time + 40)];
              [v31 setVertexBuffer:*(time + 96) offset:0 atIndex:0];
              [v31 setFragmentBuffer:*(time + 104) offset:0 atIndex:0];
              [v31 setFragmentTexture:*(time + 112) atIndex:0];
              [v31 setFragmentTexture:*(time + 152) atIndex:1];
              [v31 setFragmentTexture:*(time + 160) atIndex:2];
              [v31 drawPrimitives:4 vertexStart:0 vertexCount:4];
              [v31 endEncoding];

              [v9 presentDrawable:currentDrawable];
              [v9 commit];
            }

            else
            {
              [(PKTexturedCardRenderer *)time renderAtTime:v17];
            }
          }
        }
      }
    }

    else
    {
      currentDrawable = 0;
    }
  }
}

void __39__PKTexturedCardRenderer_renderAtTime___block_invoke(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  DefaultPrivate2DTexture = PKTextureLoaderResultCreateDefaultPrivate2DTexture(a2, *(a1 + 40), *(a1 + 48));
  v4 = *(a1 + 32);
  v5 = *(v4 + 112);
  *(v4 + 112) = DefaultPrivate2DTexture;

  v6 = *(a1 + 32);
  if (!*(v6 + 112))
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(v6 + 16);
      v10 = 134218240;
      v11 = v6;
      v12 = 2048;
      v13 = v8;
      _os_log_impl(&dword_25E0A9000, v7, OS_LOG_TYPE_DEFAULT, "PKTexturedCardRenderer (%p:%ld): could not load diffuse texture.", &v10, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __39__PKTexturedCardRenderer_renderAtTime___block_invoke_69(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  DefaultPrivate2DTexture = PKTextureLoaderResultCreateDefaultPrivate2DTexture(a2, *(a1 + 40), *(a1 + 48));
  v4 = *(a1 + 32);
  v5 = *(v4 + 152);
  *(v4 + 152) = DefaultPrivate2DTexture;

  v6 = *(a1 + 32);
  if (!*(v6 + 152))
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(v6 + 16);
      v10 = 134218240;
      v11 = v6;
      v12 = 2048;
      v13 = v8;
      _os_log_impl(&dword_25E0A9000, v7, OS_LOG_TYPE_DEFAULT, "PKTexturedCardRenderer (%p:%ld): could not load metalness texture.", &v10, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __39__PKTexturedCardRenderer_renderAtTime___block_invoke_70(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  DefaultPrivate2DTexture = PKTextureLoaderResultCreateDefaultPrivate2DTexture(a2, *(a1 + 40), *(a1 + 48));
  v4 = *(a1 + 32);
  v5 = *(v4 + 160);
  *(v4 + 160) = DefaultPrivate2DTexture;

  v6 = *(a1 + 32);
  if (!*(v6 + 160))
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(v6 + 16);
      v10 = 134218240;
      v11 = v6;
      v12 = 2048;
      v13 = v8;
      _os_log_impl(&dword_25E0A9000, v7, OS_LOG_TYPE_DEFAULT, "PKTexturedCardRenderer (%p:%ld): could not load normal texture.", &v10, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  if (self && (*(self + 8) & 1) == 0)
  {
    *(self + 8) = 1;
    v2 = *(self + 24);
    *(self + 24) = 0;

    v3 = *(self + 32);
    *(self + 32) = 0;

    v4 = *(self + 40);
    *(self + 40) = 0;

    v5 = *(self + 96);
    *(self + 96) = 0;

    v6 = *(self + 104);
    *(self + 104) = 0;

    v7 = *(self + 72);
    *(self + 72) = 0;

    v8 = *(self + 80);
    *(self + 80) = 0;

    v9 = *(self + 88);
    *(self + 88) = 0;

    v10 = *(self + 112);
    *(self + 112) = 0;

    v11 = *(self + 152);
    *(self + 152) = 0;

    v12 = *(self + 160);
    *(self + 160) = 0;

    v13 = *(self + 64);
    *(self + 64) = 0;
  }
}

- (unint64_t)updateRenderPassDescriptorWithDrawable:(void *)drawable
{
  drawableCopy = drawable;
  if (drawable)
  {
    texture = [a2 texture];
    width = [texture width];
    height = [texture height];
    if (*(drawableCopy + 48) != width || *(drawableCopy + 56) != height)
    {
      *(drawableCopy + 48) = width;
      *(drawableCopy + 56) = height;
      v6 = *(drawableCopy + 64);
      *(drawableCopy + 64) = 0;

      width = *(drawableCopy + 48);
    }

    if (width && *(drawableCopy + 56))
    {
      v7 = *(drawableCopy + 64);
      v8 = v7;
      if (!v7)
      {
        v9 = objc_alloc_init(MEMORY[0x277CD6F50]);
        v10 = *(drawableCopy + 64);
        *(drawableCopy + 64) = v9;

        v8 = *(drawableCopy + 64);
      }

      colorAttachments = [v8 colorAttachments];
      v12 = [colorAttachments objectAtIndexedSubscript:0];
      v13 = v12;
      if (!v7)
      {
        [v12 setLoadAction:0];
        [v13 setStoreAction:1];
      }

      [v13 setTexture:texture];
      drawableCopy = *(drawableCopy + 64) != 0;
    }

    else
    {
      drawableCopy = 0;
    }
  }

  return drawableCopy;
}

- (__n128)setRotation:(__n128 *)result
{
  if (result)
  {
    result[11] = a2;
  }

  return result;
}

- (uint64_t)setLightIntensity:(uint64_t)result
{
  if (result)
  {
    *(result + 168) = a2;
  }

  return result;
}

- (void)_initWithStyle:(os_log_t)log renderLoop:diffuseLoader:metalnessLoader:normalLoader:.cold.1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v5 = 134218240;
  v6 = a1;
  v7 = 2048;
  v8 = v3;
  _os_log_fault_impl(&dword_25E0A9000, log, OS_LOG_TYPE_FAULT, "PKTexturedCardRenderer (%p:%ld): could not load fragment function.", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)renderAtTime:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134218240;
    v7 = a1;
    v8 = 2048;
    v9 = a2;
    _os_log_impl(&dword_25E0A9000, v4, OS_LOG_TYPE_DEFAULT, "PKTexturedCardRenderer (%p:%ld): required textures missing - invalidating.", &v6, 0x16u);
  }

  [(PKTexturedCardRenderer *)a1 invalidate];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)renderAtTime:(float32x4_t *)a1 .cold.2(float32x4_t *a1, id *a2)
{
  v7[9] = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(a1);
  v3 = [*a2 contents];
  if ([*a2 length] >= 0x40)
  {
    v4 = 64;
  }

  else
  {
    v4 = [*a2 length];
  }

  result = memcpy(v3, v7, v4);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)renderAtTime:(float32x4_t *)a1 .cold.3(float32x4_t *a1, id *a2)
{
  v8 = 0;
  v9 = 0;
  OUTLINED_FUNCTION_0_1(a1);
  LODWORD(v8) = a1[10].i32[2];
  v4 = [*a2 contents];
  if ([*a2 length] >= 0x50)
  {
    v5 = 80;
  }

  else
  {
    v5 = [*a2 length];
  }

  return memcpy(v4, &v7, v5);
}

@end