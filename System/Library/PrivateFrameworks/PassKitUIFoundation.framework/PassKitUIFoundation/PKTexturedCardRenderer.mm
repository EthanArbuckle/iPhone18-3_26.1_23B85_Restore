@interface PKTexturedCardRenderer
- (__n128)setRotation:(__n128 *)result;
- (double)rotation;
- (id)_initWithStyle:(void *)a3 renderLoop:(void *)a4 diffuseLoader:(void *)a5 metalnessLoader:(void *)a6 normalLoader:;
- (id)initWithStyle:(void *)a3 renderLoop:(uint64_t)a4 diffuse:(double)a5 insets:(double)a6;
- (id)initWithStyle:(void *)a3 renderLoop:(uint64_t)a4 diffuse:(uint64_t)a5 metalness:(uint64_t)a6 normal:;
- (uint64_t)isInvalidated;
- (uint64_t)setLightIntensity:(uint64_t)result;
- (unint64_t)updateRenderPassDescriptorWithDrawable:(void *)a1;
- (void)dealloc;
- (void)invalidate;
- (void)renderAtTime:(uint64_t)a1;
@end

@implementation PKTexturedCardRenderer

- (uint64_t)isInvalidated
{
  if (a1)
  {
    v1 = *(a1 + 8);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (double)rotation
{
  if (a1)
  {
    v1 = *(a1 + 176);
  }

  else
  {
    *&v1 = 0;
  }

  return *&v1;
}

- (id)_initWithStyle:(void *)a3 renderLoop:(void *)a4 diffuseLoader:(void *)a5 metalnessLoader:(void *)a6 normalLoader:
{
  v70 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v59 = v15;
  v60 = v14;
  if (!a1)
  {
    goto LABEL_38;
  }

  if (!v12 || a2 >= 5 || !v13 || a2 <= 2 && !v14 || a2 <= 2 && !v15)
  {
    __break(1u);
LABEL_38:
    v44 = 0;
    goto LABEL_36;
  }

  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (!v16)
  {
    goto LABEL_34;
  }

  v63.receiver = a1;
  v63.super_class = PKTexturedCardRenderer;
  v17 = objc_msgSendSuper2(&v63, sel_init);
  a1 = v17;
  if (v17)
  {
    obj = a6;
    v58 = v13;
    v17[2] = a2;
    objc_storeStrong(v17 + 3, a3);
    v18 = [v12 device];
    v62 = 0;
    v19 = [v18 newDefaultLibraryWithBundle:v16 error:&v62];
    v20 = v62;
    v21 = v20;
    if (v19)
    {
      v55 = v19;
      v56 = v18;
      v54 = v12;

      v22 = objc_alloc_init(MEMORY[0x277CD7090]);
      v23 = [v22 attributes];
      v24 = [v23 objectAtIndexedSubscript:0];
      [v24 setFormat:29];
      [v24 setOffset:0];
      [v24 setBufferIndex:0];
      v25 = [v23 objectAtIndexedSubscript:1];

      [v25 setFormat:29];
      [v25 setOffset:8];
      [v25 setBufferIndex:0];
      v57 = v22;
      v26 = [v22 layouts];
      v27 = [v26 objectAtIndexedSubscript:0];

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
      v12 = v54;
      if (v35)
      {
        v36 = v35;
        [v28 setFragmentFunction:v35];
        v37 = [v28 colorAttachments];
        v38 = [v37 objectAtIndexedSubscript:0];
        [v38 setPixelFormat:objc_msgSend(v54, "pixelFormat")];

        v61 = 0;
        v39 = [v56 newRenderPipelineStateWithDescriptor:v28 error:&v61];
        v40 = v61;
        v41 = a1[5];
        a1[5] = v39;

        if (a1[5])
        {

          v42 = [v56 newCommandQueue];
          v43 = a1[4];
          a1[4] = v42;

          objc_storeStrong(a1 + 9, a4);
          objc_storeStrong(a1 + 10, a5);
          objc_storeStrong(a1 + 11, obja);
          *(a1 + 11) = xmmword_25E0D5B90;
          *(a1 + 42) = 1065353216;

          v13 = v58;
          goto LABEL_23;
        }

        v45 = v36;
        v47 = PKLogFacilityTypeGetObject();
        v13 = v58;
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v48 = a1[2];
          *buf = 134218498;
          v65 = a1;
          v66 = 2048;
          v67 = v48;
          v68 = 2114;
          v69 = v40;
          _os_log_impl(&dword_25E0A9000, v47, OS_LOG_TYPE_DEFAULT, "PKTexturedCardRenderer (%p:%ld): could not load pipeline - %{public}@.", buf, 0x20u);
        }

        v33 = v55;
        v18 = v56;
      }

      else
      {
        v45 = 0;
        v40 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
        {
          [PKTexturedCardRenderer _initWithStyle:a1 renderLoop:a1 + 2 diffuseLoader:v40 metalnessLoader:? normalLoader:?];
        }

        v18 = v56;
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v46 = a1[2];
          *buf = 134218240;
          v65 = a1;
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
        v51 = a1[2];
        *buf = 134218498;
        v65 = a1;
        v66 = 2048;
        v67 = v51;
        v68 = 2114;
        v69 = v21;
        _os_log_fault_impl(&dword_25E0A9000, v31, OS_LOG_TYPE_FAULT, "PKTexturedCardRenderer (%p:%ld): could not load metal library - %{public}@.", buf, 0x20u);
      }

      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = a1[2];
        *buf = 134218498;
        v65 = a1;
        v66 = 2048;
        v67 = v32;
        v68 = 2114;
        v69 = v21;
        _os_log_impl(&dword_25E0A9000, v31, OS_LOG_TYPE_DEFAULT, "PKTexturedCardRenderer (%p:%ld): could not load metal library - %{public}@.", buf, 0x20u);
      }
    }

LABEL_34:
    v44 = 0;
    goto LABEL_35;
  }

LABEL_23:
  a1 = a1;
  v44 = a1;
LABEL_35:

LABEL_36:
  v49 = *MEMORY[0x277D85DE8];
  return v44;
}

- (id)initWithStyle:(void *)a3 renderLoop:(uint64_t)a4 diffuse:(double)a5 insets:(double)a6
{
  v15 = a3;
  v16 = v15;
  if (!a1)
  {
    goto LABEL_11;
  }

  if (a2 >= 5 || a2 <= 2)
  {
    __break(1u);
LABEL_11:
    v17 = 0;
    goto LABEL_9;
  }

  v17 = 0;
  if (v15 && a4)
  {
    v18 = [v15 device];
    v19 = [[PKTextureLoadDescriptor alloc] initForDevice:v18];
    v20 = [v19 createLoaderForCGImage:a4];
    v21 = [(PKTexturedCardRenderer *)a1 _initWithStyle:a2 renderLoop:v16 diffuseLoader:v20 metalnessLoader:0 normalLoader:0];
    if (v21)
    {
      v21[15] = a5;
      v21[16] = a6;
      v21[17] = a7;
      v21[18] = a8;
    }

    a1 = v21;

    v17 = a1;
  }

LABEL_9:

  return v17;
}

- (id)initWithStyle:(void *)a3 renderLoop:(uint64_t)a4 diffuse:(uint64_t)a5 metalness:(uint64_t)a6 normal:
{
  v11 = a3;
  v12 = v11;
  if (!a1)
  {
    goto LABEL_10;
  }

  if (a2 > 2)
  {
    __break(1u);
LABEL_10:
    v13 = 0;
    goto LABEL_8;
  }

  v13 = 0;
  if (v11 && a4 && a5 && a6)
  {
    v14 = [v11 device];
    v15 = [[PKTextureLoadDescriptor alloc] initForDevice:v14];
    v16 = [v15 createLoaderForCGImage:a4];
    v17 = [v15 createLoaderForCGImage:a5];
    v18 = [v15 createLoaderForCGImage:a6];
    a1 = [(PKTexturedCardRenderer *)a1 _initWithStyle:a2 renderLoop:v12 diffuseLoader:v16 metalnessLoader:v17 normalLoader:v18];

    v13 = a1;
  }

LABEL_8:

  return v13;
}

- (void)dealloc
{
  [(PKTexturedCardRenderer *)self invalidate];
  v3.receiver = self;
  v3.super_class = PKTexturedCardRenderer;
  [(PKTexturedCardRenderer *)&v3 dealloc];
}

- (void)renderAtTime:(uint64_t)a1
{
  if (a1 && (*(a1 + 8) & 1) == 0)
  {
    if ([*(a1 + 24) isDrawableAvailable])
    {
      v2 = [*(a1 + 24) currentDrawable];
      if (v2 && [(PKTexturedCardRenderer *)a1 updateRenderPassDescriptorWithDrawable:v2])
      {
        v3 = [*(a1 + 24) device];
        v4 = v3;
        if (*(a1 + 96) || (v5 = [v3 newBufferWithBytes:&renderAtTime__vertices length:64 options:32], v6 = *(a1 + 96), *(a1 + 96) = v5, v6, *(a1 + 96)))
        {
          v7 = (a1 + 104);
          if (*(a1 + 104) || (v28 = *(a1 + 16), v28 <= 4) && (v29 = [v4 newBufferWithLength:qword_25E0D5E90[v28] options:0], v30 = *v7, *v7 = v29, v30, *v7))
          {
            v8 = [*(a1 + 32) commandBuffer];
            v9 = v8;
            if (*(a1 + 72) || *(a1 + 80) || *(a1 + 88))
            {
              v10 = [v8 blitCommandEncoder];
              v11 = *(a1 + 72);
              if (v11)
              {
                v39[0] = MEMORY[0x277D85DD0];
                v39[1] = 3221225472;
                v39[2] = __39__PKTexturedCardRenderer_renderAtTime___block_invoke;
                v39[3] = &unk_279A00520;
                v39[4] = a1;
                v40 = v4;
                v41 = v10;
                [v11 tiling:1 read:v39];
                v12 = *(a1 + 72);
                *(a1 + 72) = 0;
              }

              v13 = *(a1 + 80);
              if (v13)
              {
                v36[0] = MEMORY[0x277D85DD0];
                v36[1] = 3221225472;
                v36[2] = __39__PKTexturedCardRenderer_renderAtTime___block_invoke_69;
                v36[3] = &unk_279A00520;
                v36[4] = a1;
                v37 = v4;
                v38 = v10;
                [v13 tiling:1 read:v36];
                v14 = *(a1 + 80);
                *(a1 + 80) = 0;
              }

              v15 = *(a1 + 88);
              if (v15)
              {
                v33[0] = MEMORY[0x277D85DD0];
                v33[1] = 3221225472;
                v33[2] = __39__PKTexturedCardRenderer_renderAtTime___block_invoke_70;
                v33[3] = &unk_279A00520;
                v33[4] = a1;
                v34 = v4;
                v35 = v10;
                [v15 tiling:1 read:v33];
                v16 = *(a1 + 88);
                *(a1 + 88) = 0;
              }

              [v10 endEncoding];
            }

            v17 = *(a1 + 16);
            if (v17 >= 5)
            {
              __break(1u);
              return;
            }

            v18 = *(a1 + 112);
            if (v18 && (v17 > 2 || *(a1 + 152) && *(a1 + 160)))
            {
              if (v17 - 3 >= 2)
              {
                if (v17 == 1)
                {
                  [(PKTexturedCardRenderer *)a1 renderAtTime:?];
                }

                else
                {
                  [(PKTexturedCardRenderer *)a1 renderAtTime:?];
                }
              }

              else
              {
                v19 = [v18 width];
                v20 = [*(a1 + 112) height];
                *v21.i64 = simd_matrix4x4(*(a1 + 176));
                v32[0] = v21;
                v32[1] = v22;
                v32[2] = v23;
                v32[3] = v24;
                v21.i64[0] = v20;
                v21.i64[1] = v19;
                v25 = vcvtq_f64_u64(v21);
                v32[4] = vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(*(a1 + 120), v25)), vdivq_f64(*(a1 + 136), v25));
                v26 = [*(a1 + 104) contents];
                if ([*(a1 + 104) length] > 0x4F)
                {
                  v27 = 80;
                }

                else
                {
                  v27 = [*v7 length];
                }

                memcpy(v26, v32, v27);
              }

              v31 = [v9 renderCommandEncoderWithDescriptor:*(a1 + 64)];
              [v31 setRenderPipelineState:*(a1 + 40)];
              [v31 setVertexBuffer:*(a1 + 96) offset:0 atIndex:0];
              [v31 setFragmentBuffer:*(a1 + 104) offset:0 atIndex:0];
              [v31 setFragmentTexture:*(a1 + 112) atIndex:0];
              [v31 setFragmentTexture:*(a1 + 152) atIndex:1];
              [v31 setFragmentTexture:*(a1 + 160) atIndex:2];
              [v31 drawPrimitives:4 vertexStart:0 vertexCount:4];
              [v31 endEncoding];

              [v9 presentDrawable:v2];
              [v9 commit];
            }

            else
            {
              [(PKTexturedCardRenderer *)a1 renderAtTime:v17];
            }
          }
        }
      }
    }

    else
    {
      v2 = 0;
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
  if (a1 && (*(a1 + 8) & 1) == 0)
  {
    *(a1 + 8) = 1;
    v2 = *(a1 + 24);
    *(a1 + 24) = 0;

    v3 = *(a1 + 32);
    *(a1 + 32) = 0;

    v4 = *(a1 + 40);
    *(a1 + 40) = 0;

    v5 = *(a1 + 96);
    *(a1 + 96) = 0;

    v6 = *(a1 + 104);
    *(a1 + 104) = 0;

    v7 = *(a1 + 72);
    *(a1 + 72) = 0;

    v8 = *(a1 + 80);
    *(a1 + 80) = 0;

    v9 = *(a1 + 88);
    *(a1 + 88) = 0;

    v10 = *(a1 + 112);
    *(a1 + 112) = 0;

    v11 = *(a1 + 152);
    *(a1 + 152) = 0;

    v12 = *(a1 + 160);
    *(a1 + 160) = 0;

    v13 = *(a1 + 64);
    *(a1 + 64) = 0;
  }
}

- (unint64_t)updateRenderPassDescriptorWithDrawable:(void *)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = [a2 texture];
    v4 = [v3 width];
    v5 = [v3 height];
    if (*(v2 + 48) != v4 || *(v2 + 56) != v5)
    {
      *(v2 + 48) = v4;
      *(v2 + 56) = v5;
      v6 = *(v2 + 64);
      *(v2 + 64) = 0;

      v4 = *(v2 + 48);
    }

    if (v4 && *(v2 + 56))
    {
      v7 = *(v2 + 64);
      v8 = v7;
      if (!v7)
      {
        v9 = objc_alloc_init(MEMORY[0x277CD6F50]);
        v10 = *(v2 + 64);
        *(v2 + 64) = v9;

        v8 = *(v2 + 64);
      }

      v11 = [v8 colorAttachments];
      v12 = [v11 objectAtIndexedSubscript:0];
      v13 = v12;
      if (!v7)
      {
        [v12 setLoadAction:0];
        [v13 setStoreAction:1];
      }

      [v13 setTexture:v3];
      v2 = *(v2 + 64) != 0;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
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