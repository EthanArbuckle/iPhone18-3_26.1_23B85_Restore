@interface NUNIAegirRenderer
+ (id)texturePreloadingQueue;
- (NUNIAegirRenderer)initWithPixelFormat:(unint64_t)a3 textureSuffix:(id)a4 rendererStyle:(unint64_t)a5;
- (id)getOrCreateUniformBufferforFrameBufferIndex:(unint64_t)a3;
- (void)_renderLocationDot:(id)a3 uniPtr:(NUNIAegirRenderUniforms *)a4 viewport:(NUNIViewport)a5 renderEncoder:(id)a6;
- (void)_renderOffscreenBackgroundWithRenderEncoder:(id)a3 frameBufferIndex:(unint64_t)a4;
- (void)_renderOffscreenBloomWithScene:(id)a3 viewport:(NUNIViewport)a4 commandBuffer:(id)a5 frameBufferIndex:(unint64_t)a6;
- (void)_renderOffscreenPostWithScene:(id)a3 viewport:(NUNIViewport)a4 commandBuffer:(id)a5 frameBufferIndex:(unint64_t)a6;
- (void)_renderOffscreenSceneWithScene:(id)a3 viewport:(NUNIViewport)a4 commandBuffer:(id)a5 frameBufferIndex:(unint64_t)a6 drawableTexture:(id)a7;
- (void)_renderRaytraceSpheroid:(id)a3 uniPtr:(NUNIAegirRenderUniforms *)a4 renderEncoder:(id)a5;
- (void)_renderSpriteSpheroid:(id)a3 uniPtr:(NUNIAegirRenderUniforms *)a4 renderEncoder:(id)a5;
- (void)_updateBaseUniformsForViewport:(NUNIViewport)a3;
- (void)_updateStateWithScene:(id)a3 viewport:(NUNIViewport)a4;
- (void)dealloc;
- (void)prepareForRenderingSpheroids:(id)a3 completionHandler:(id)a4;
- (void)purgeUnusedWithScene:(id)a3;
- (void)renderOffscreenWithScene:(id)a3 viewport:(NUNIViewport)a4 commandBuffer:(id)a5;
- (void)renderWithScene:(id)a3 viewport:(NUNIViewport)a4 commandBuffer:(id)a5 passDescriptor:(id)a6;
- (void)setRendererOptions:(id)a3;
@end

@implementation NUNIAegirRenderer

- (NUNIAegirRenderer)initWithPixelFormat:(unint64_t)a3 textureSuffix:(id)a4 rendererStyle:(unint64_t)a5
{
  v8 = a4;
  v21.receiver = self;
  v21.super_class = NUNIAegirRenderer;
  v9 = [(NUNIRenderer *)&v21 initWithPixelFormat:a3 textureSuffix:v8 rendererStyle:a5];
  if (v9)
  {
    v10 = [NUNIAegirResourceManager sharedInstanceWithDisplayPixelFormat:a3];
    resourceManager = v9->_resourceManager;
    v9->_resourceManager = v10;

    [(NUNIAegirResourceManager *)v9->_resourceManager addClient];
    v12 = +[CLKUIMetalResourceManager sharedDevice];
    device = v9->_device;
    v9->_device = v12;

    v14 = [(NUNIAegirResourceManager *)v9->_resourceManager textureGroupWithSuffix:v8 device:v9->_device];
    textureGroup = v9->_textureGroup;
    v9->_textureGroup = v14;

    v16 = 3;
    v17 = v9;
    do
    {
      v18 = objc_opt_new();
      v19 = v17->_renderUniformsBuffers[0];
      v17->_renderUniformsBuffers[0] = v18;

      v17 = (v17 + 8);
      --v16;
    }

    while (v16);
    v9->_supportsMTLGPUFamilyApple6 = [(MTLDevice *)v9->_device supportsFamily:1006];
  }

  return v9;
}

- (void)dealloc
{
  [(NUNIAegirResourceManager *)self->_resourceManager removeClient];
  v3.receiver = self;
  v3.super_class = NUNIAegirRenderer;
  [(NUNIRenderer *)&v3 dealloc];
}

+ (id)texturePreloadingQueue
{
  if (texturePreloadingQueue_onceToken != -1)
  {
    +[NUNIAegirRenderer texturePreloadingQueue];
  }

  v3 = texturePreloadingQueue_queue;

  return v3;
}

void __43__NUNIAegirRenderer_texturePreloadingQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v0 = dispatch_queue_create("com.apple.weather.aegir.preloading", v2);
  v1 = texturePreloadingQueue_queue;
  texturePreloadingQueue_queue = v0;
}

- (void)prepareForRenderingSpheroids:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [objc_opt_class() texturePreloadingQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__NUNIAegirRenderer_prepareForRenderingSpheroids_completionHandler___block_invoke;
  v11[3] = &unk_1E7FF9000;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __68__NUNIAegirRenderer_prepareForRenderingSpheroids_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[5] prepareForRendering];
    [v3[6] preloadTexturesForSpheroids:*(a1 + 32)];
    dispatch_async(MEMORY[0x1E69E96A0], *(a1 + 40));
    WeakRetained = v3;
  }
}

- (void)setRendererOptions:(id)a3
{
  objc_storeStrong(&self->_rendererOptions, a3);
  v5 = a3;
  v6 = [(NUNIRendererOptions *)self->_rendererOptions changeSequence];

  self->_rendererOptionsChangeSequence = v6 - 1;
}

- (void)purgeUnusedWithScene:(id)a3
{
  v4 = [a3 snap];
  v35 = +[CLKUIResourceManager sharedInstance];
  v5 = +[CLKUITexture nullTexture2D];
  for (i = 0; i != 24; ++i)
  {
    if (v4 != i)
    {
      v7 = [(NUNIAegirTextureGroup *)self->_textureGroup albedos];
      v8 = [v7 objectAtIndexedSubscript:i];

      if (v8 != v5)
      {
        v9 = [v8 atlas];
        v10 = [v9 uuid];
        [v35 purge:v10];
      }

      v11 = [(NUNIAegirTextureGroup *)self->_textureGroup normals];
      v12 = [v11 objectAtIndexedSubscript:i];

      if (v12 != v5)
      {
        v13 = [v12 atlas];
        v14 = [v13 uuid];
        [v35 purge:v14];
      }

      v15 = [(NUNIAegirTextureGroup *)self->_textureGroup emissives];
      v16 = [v15 objectAtIndexedSubscript:i];

      if (v16 != v5)
      {
        v17 = [v16 atlas];
        v18 = [v17 uuid];
        [v35 purge:v18];
      }

      v19 = [(NUNIAegirTextureGroup *)self->_textureGroup cloudsLo];
      v20 = [v19 objectAtIndexedSubscript:i];

      if (v20 != v5)
      {
        v21 = [v20 atlas];
        v22 = [v21 uuid];
        [v35 purge:v22];
      }

      v23 = [(NUNIAegirTextureGroup *)self->_textureGroup cloudsMd];
      v24 = [v23 objectAtIndexedSubscript:i];

      if (v24 != v5)
      {
        v25 = [v24 atlas];
        v26 = [v25 uuid];
        [v35 purge:v26];
      }

      v27 = [(NUNIAegirTextureGroup *)self->_textureGroup cloudsHi];
      v28 = [v27 objectAtIndexedSubscript:i];

      if (v28 != v5)
      {
        v29 = [v28 atlas];
        v30 = [v29 uuid];
        [v35 purge:v30];
      }

      v31 = [(NUNIAegirTextureGroup *)self->_textureGroup gradients];
      v32 = [v31 objectAtIndexedSubscript:i];

      if (v32 != v5)
      {
        v33 = [v32 atlas];
        v34 = [v33 uuid];
        [v35 purge:v34];
      }
    }
  }
}

- (void)_updateStateWithScene:(id)a3 viewport:(NUNIViewport)a4
{
  width = a4.width;
  height = a4.height;
  v7 = a3;
  [v7 cameraPosition];
  v83 = v8;
  [v7 cameraTarget];
  v77 = v9;
  [v7 cameraRoll];
  v11 = v10;
  [v7 cameraOffset];
  v76 = v12;
  _Q0 = vsubq_f32(v77, v83);
  _Q1 = vmulq_f32(_Q0, _Q0);
  _S2 = _Q0.i32[2];
  __asm { FMLA            S1, S2, V0.S[2] }

  _Q1.f32[0] = sqrtf(_Q1.f32[0]);
  v84 = vdivq_f32(_Q0, vdupq_lane_s32(*_Q1.f32, 0));
  [v7 cameraUp];
  v81 = v20;

  v21 = v84;
  v22 = vextq_s8(vextq_s8(v21, v21, 0xCuLL), v21, 8uLL);
  _Q4 = v81;
  _Q3 = vextq_s8(vuzp1q_s32(_Q4, _Q4), _Q4, 0xCuLL);
  v24 = vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL);
  _Q2 = vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(_Q4, _Q4, 0xCuLL), _Q4, 8uLL), vnegq_f32(v24)), _Q3, v22);
  _Q3.i32[0] = _Q2.i32[2];
  __asm { FMLA            S4, S3, V2.S[2] }

  _Q3.f32[0] = sqrtf(*_Q4.i32);
  if (_Q3.f32[0] < 0.00001)
  {
    _Q2 = vmlaq_f32(vmulq_f32(v24, xmmword_1BCE3AB90), xmmword_1BCE3ABA0, v22);
    _Q3.i64[0] = _Q2.u32[2];
    __asm { FMLA            S4, S3, V2.S[2] }

    _Q3.f32[0] = sqrtf(_S4);
    if (_Q3.f32[0] < 0.00001)
    {
      _Q2 = vmlaq_f32(vmulq_f32(v24, xmmword_1BCE3ABB0), xmmword_1BCE3ABC0, v22);
      _Q3.i64[0] = _Q2.u32[2];
      __asm { FMLA            S4, S3, V2.S[2] }

      _Q3.f32[0] = sqrtf(_S4);
    }
  }

  v29 = vdivq_f32(_Q2, vdupq_lane_s32(*_Q3.f32, 0));
  _Q0 = vmlaq_f32(vmulq_f32(v22, vnegq_f32(vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL))), v24, vextq_s8(vextq_s8(v29, v29, 0xCuLL), v29, 8uLL));
  _Q1 = vmulq_f32(_Q0, _Q0);
  _S2 = _Q0.i32[2];
  __asm { FMLA            S1, S2, V0.S[2] }

  _Q1.f32[0] = sqrtf(_Q1.f32[0]);
  v74 = vnegq_f32(vdivq_f32(_Q0, vdupq_lane_s32(*_Q1.f32, 0)));
  v75 = v29;
  v33 = width / height;
  if (v33 >= 1.0)
  {
    v35 = 0.34907;
  }

  else
  {
    v34 = atanf(0.17633 / v33);
    v35 = v34 + v34;
  }

  *v36.f32 = UMFloat4x4MakeLookAt(*v75.i64, v74.f32[0]);
  v80 = v37;
  v82 = v36;
  v78 = v39;
  v79 = v38;
  if (fabsf(v11) > 0.00001)
  {
    v40 = __sincosf_stret(v11 * 0.5);
    v41 = vmul_n_f32(*v84.f32, v40.__sinval);
    *v42.f32 = UMFloat4x4Make(v41.f32[0], v41.f32[1], vmuls_lane_f32(v40.__sinval, v84, 2), v40.__cosval);
    v89.columns[0] = v42;
    v89.columns[1] = v43;
    v89.columns[2] = v44;
    v89.columns[3] = v45;
    v85.columns[1] = v80;
    v85.columns[0] = v82;
    v85.columns[3] = v78;
    v85.columns[2] = v79;
    *v46.i64 = UMMul(v85, v89);
    v80 = v47;
    v82 = v46;
    v78 = v49;
    v79 = v48;
  }

  *v50.i64 = UMFloat4x4MakeTranslate();
  v90.columns[0] = v50;
  v90.columns[1] = v51;
  v90.columns[2] = v52;
  v90.columns[3] = v53;
  v86.columns[1] = v80;
  v86.columns[0] = v82;
  v86.columns[3] = v78;
  v86.columns[2] = v79;
  *v54.i64 = UMMul(v86, v90);
  v72 = v55;
  v73 = v54;
  v70 = v57;
  v71 = v56;
  v58.f32[0] = UMFloat4x4MakePerspective((v35 * 180.0) / 3.1416, width / height, 0.001, 4.0);
  v68 = v59;
  v69 = v58;
  v66 = v61;
  v67 = v60;
  *v87.columns[0].i64 = UMFloat4x4MakeTranslate();
  v91.columns[1] = v68;
  v91.columns[0] = v69;
  v91.columns[3] = v66;
  v91.columns[2] = v67;
  *v88.columns[0].i64 = UMMul(v87, v91);
  v92.columns[1] = v72;
  v92.columns[0] = v73;
  v92.columns[3] = v70;
  v92.columns[2] = v71;
  *&v62 = UMMul(v88, v92);
  self->_state.viewport.width = width;
  self->_state.viewport.height = height;
  self->_state.cameraRoll = v11;
  self->_state.aspect = v33;
  self->_state.fovY = v35;
  *self->_anon_e4 = 0;
  *&self->_anon_e4[4] = v76;
  *&self->_anon_e4[12] = v83;
  *&self->_anon_e4[28] = v77;
  *&self->_anon_e4[44] = v74;
  *&self->_anon_e4[60] = v75;
  *&self->_anon_e4[76] = v84;
  *&self->_anon_e4[92] = v82;
  *&self->_anon_e4[108] = v80;
  *&self->_anon_e4[124] = v79;
  *&self->_anon_e4[140] = v78;
  *&self->_anon_e4[156] = v73;
  *&self->_anon_e4[172] = v72;
  *&self->_anon_e4[188] = v71;
  *&self->_anon_e4[204] = v70;
  *&self->_anon_e4[220] = v62;
  *&self->_anon_e4[236] = v63;
  *&self->_anon_e4[252] = v64;
  *&self->_anon_e4[268] = v65;
}

- (void)_updateBaseUniformsForViewport:(NUNIViewport)a3
{
  width = a3.width;
  height = a3.height;
  if (__ROR8__(0xEEEEEEEEEEEEEEEFLL * self->_frame, 2) <= 0x444444444444444uLL)
  {
    v6 = [(NUNIRendererOptions *)self->_rendererOptions changeSequence];
    if (v6 != self->_rendererOptionsChangeSequence)
    {
      v7 = 0;
      self->_rendererOptionsChangeSequence = v6;
      v8 = self;
      do
      {
        v9 = _updateBaseUniformsForViewport__optionKeys[v7];
        v10 = [(NUNIRendererOptions *)self->_rendererOptions fractionValueForOption:v9];
        v11 = v10;
        if (v10)
        {
          [v10 doubleValue];
          *&v12 = v12;
          _H1 = *v8->_anon_3b4;
          __asm { FCVT            S1, H1 }

          if (*&v12 != _S1)
          {
            [v11 doubleValue];
            __asm { FCVT            H0, D0 }

            *v8->_anon_3b4 = _D0;
          }
        }

        v8 = (v8 + 2);
        ++v7;
      }

      while (v7 != 35);
      resourceManager = self->_resourceManager;
      v21 = *&self->_anon_3b4[48];
      v35[2] = *&self->_anon_3b4[32];
      v36[0] = v21;
      *(v36 + 14) = *&self->_anon_3b4[62];
      v22 = *&self->_anon_3b4[16];
      v35[0] = *self->_anon_3b4;
      v35[1] = v22;
      [(NUNIAegirResourceManager *)resourceManager setPipelineConstants:v35];
    }
  }

  v23 = *&self->_anon_e4[4];
  aspect = self->_state.aspect;
  if (height <= width)
  {
    v25 = height;
    __asm { FMOV            V2.2S, #1.0 }

    *&_D2 = width / height;
  }

  else
  {
    v25 = width;
    __asm { FMOV            V2.2S, #1.0 }

    *(&_D2 + 1) = height / width;
  }

  v34 = _D2;
  v27 = tanf(self->_state.fovY * 0.5);
  _H4 = *&self->_anon_3b4[10];
  __asm { FCVT            S4, H4 }

  v30 = (_S4 * 5.0) + 1.0;
  LOWORD(_S4) = *&self->_anon_3b4[12];
  __asm { FCVT            S4, H4 }

  v32 = _S4 * -10.0;
  v33 = *&self->_anon_3b4[6];
  *&self->_baseUniforms.var5 = 0u;
  *&self->_baseUniforms.var9 = 0u;
  *&self->_baseUniforms.var13 = 0u;
  *&self->_baseUniforms.var17 = 0u;
  *&self->_baseUniforms.var21 = 0u;
  *self->_anon_250 = 0u;
  *&self->_anon_250[16] = 0u;
  *&self->_anon_250[32] = 0u;
  *&self->_anon_250[48] = 0u;
  *&self->_anon_250[64] = 0u;
  *&self->_anon_250[80] = 0u;
  *&self->_anon_250[96] = 0u;
  *&self->_anon_250[112] = 0u;
  *&self->_anon_250[128] = 0u;
  *&self->_anon_250[144] = 0u;
  *&self->_anon_250[160] = 0u;
  *&self->_anon_250[176] = 0u;
  *&self->_anon_250[192] = 0u;
  *&self->_anon_250[208] = 0u;
  *&self->_anon_250[224] = 0u;
  *&self->_anon_250[240] = 0u;
  *&self->_anon_250[256] = v23;
  *&self->_anon_250[264] = v34;
  *&self->_anon_250[272] = 1.0 / v25;
  *&self->_anon_250[276] = (-1.0 / v27) / aspect;
  *&self->_anon_250[280] = 0x3E31D0D400000000;
  *&self->_anon_250[288] = 0;
  *&self->_anon_250[292] = v32;
  *&self->_anon_250[296] = ((-1.0 / v30) * v32) - v32;
  *&self->_anon_250[300] = vcvtq_f32_f16(vmul_f16(__PAIR64__(HIDWORD(v34), v33), __PAIR64__(HIDWORD(v34), v33))).u64[0];
  *&self->_anon_250[308] = v30;
  *&self->_anon_250[312] = 0u;
  *&self->_anon_250[328] = 0u;
  *&self->_anon_250[344] = 0;
}

- (id)getOrCreateUniformBufferforFrameBufferIndex:(unint64_t)a3
{
  v5 = self->_renderUniformsBuffers[a3];
  v6 = self->_renderUniformBuffersCounts[a3];
  self->_renderUniformBuffersCounts[a3] = v6 + 1;
  if ([(NSMutableArray *)v5 count]<= v6)
  {
    v7 = [(MTLDevice *)self->_device newBufferWithLength:432 options:1];
    [(NSMutableArray *)v5 addObject:v7];
  }

  else
  {
    v7 = [(NSMutableArray *)v5 objectAtIndexedSubscript:v6];
  }

  return v7;
}

- (void)_renderOffscreenBackgroundWithRenderEncoder:(id)a3 frameBufferIndex:(unint64_t)a4
{
  v6 = a3;
  v17 = [(NUNIAegirRenderer *)self getOrCreateUniformBufferforFrameBufferIndex:a4];
  v7 = v17;
  v8 = [v17 contents];
  memcpy(v8, &self->_baseUniforms, 0x1B0uLL);
  self = (self + 208);
  *(v8 + 144) = __invert_f4(*&self->_contentMaskSurfaces[2]);
  *v9.i64 = UMFloat4x4MakeTranslate();
  v19.columns[0] = v9;
  v19.columns[1] = v10;
  v19.columns[2] = v11;
  v19.columns[3] = v12;
  *&v13 = UMMul(*&self->_anon_e4[12], v19);
  *(v8 + 272) = v13;
  *(v8 + 288) = v14;
  *(v8 + 304) = v15;
  *(v8 + 320) = v16;
  [v6 setVertexBuffer:v17 offset:0 atIndex:1];
}

- (void)_renderRaytraceSpheroid:(id)a3 uniPtr:(NUNIAegirRenderUniforms *)a4 renderEncoder:(id)a5
{
  v108 = a3;
  v8 = a5;
  v9 = [v108 type];
  if (v9 == 3)
  {
    _H0 = *&self->_anon_3b4[46];
    __asm { FCVT            S8, H0 }

    [v108 cloudOpacity];
    v17 = v16 * _S8;
    a4[5].var10 = v17;
    v18 = v17 > 0.00001;
    v19 = v17 > 0.00001;
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  v20 = [(NUNIAegirResourceManager *)self->_resourceManager renderOffscreenPipelineForSpheroid:v9 config:v18];
  if (v20)
  {
    [v8 setLabel:@"Ægir RaytraceSpheroid"];
    [v8 setRenderPipelineState:v20];
    [v108 opacity];
    a4[4].var15 = v21;
    [v108 equatorRotation];
    v23 = v22;
    [v108 radius];
    v25 = v24;
    [v108 radiusScale];
    v99 = v25 * v26;
    UMFloat4x4MakeScale(v25 * v26);
    v104 = v28;
    v106 = v27;
    v100 = v30;
    v102 = v29;
    if (v23 != 0.0)
    {
      *v31.i64 = UMFloat4x4MakeRotateZ(v23 + 1.5708);
      v115.columns[0] = v31;
      v115.columns[1] = v32;
      v115.columns[2] = v33;
      v115.columns[3] = v34;
      v110.columns[1] = v104;
      v110.columns[0] = v106;
      v110.columns[3] = v100;
      v110.columns[2] = v102;
      *v35.i64 = UMMul(v110, v115);
      v104 = v36;
      v106 = v35;
      v100 = v38;
      v102 = v37;
    }

    [v108 position];
    v90 = v39;
    *v40.i64 = UMFloat4x4MakeTranslate();
    v93 = v41;
    v94 = v40;
    v91 = v43;
    v92 = v42;
    v116.columns[1] = v104;
    v116.columns[0] = v106;
    v116.columns[3] = v100;
    v116.columns[2] = v102;
    *v111.columns[0].i64 = UMMul(*&self->_anon_e4[92], v116);
    v112 = __invert_f4(v111);
    v95 = v112.columns[0];
    v97 = v112.columns[1];
    v98 = v112.columns[2];
    v112.columns[1] = v93;
    v112.columns[0] = v94;
    v112.columns[3] = v91;
    v112.columns[2] = v92;
    v117.columns[1] = v104;
    v117.columns[0] = v106;
    v117.columns[3] = v100;
    v117.columns[2] = v102;
    *v44.i64 = UMMul(v112, v117);
    v118.columns[0] = v44;
    v118.columns[1] = v45;
    v118.columns[2] = v46;
    v118.columns[3] = v47;
    *v113.columns[0].i64 = UMMul(*&self->_anon_e4[156], v118);
    v105 = v113.columns[1];
    v107 = v113.columns[0];
    v101 = v113.columns[3];
    v103 = v113.columns[2];
    v114 = __invert_f4(v113);
    v48 = vcvt_f16_f32(v95);
    _S5 = v95.i32[2];
    __asm { FCVT            H5, S5 }

    v48.i16[2] = _S5;
    v50 = vcvt_f16_f32(v97);
    _S6 = v97.i32[2];
    __asm { FCVT            H6, S6 }

    v50.i16[2] = _S6;
    v52 = vcvt_f16_f32(v98);
    _S7 = v98.i32[2];
    __asm { FCVT            H7, S7 }

    v52.i16[2] = _S7;
    v54 = vcvt_f16_f32(v114.columns[3]);
    _S16 = v114.columns[3].i32[2];
    __asm { FCVT            H16, S16 }

    v54.i16[2] = _S16;
    *&a4[1].var13 = v48;
    *&a4[1].var15 = v50;
    *&a4[1].var17 = v52;
    *&a4[1].var19 = v54;
    *&a4[1].var21 = v114;
    *&a4[2].var17 = v107;
    *&a4[2].var21 = v105;
    *&a4[3].var5 = v103;
    *&a4[3].var9 = v101;
    if (v9 == 4)
    {
      _Q0 = vaddq_f32(v90, xmmword_1BCE3ABD0);
      _Q1 = vmulq_f32(_Q0, _Q0);
      _S2 = _Q0.i32[2];
      __asm { FMLA            S1, S2, V0.S[2] }

      _Q1.f32[0] = sqrtf(_Q1.f32[0]);
      v59 = vdivq_f32(_Q0, vdupq_lane_s32(*_Q1.f32, 0));
    }

    else
    {
      [v108 light];
      v96 = v60;
      v62 = __sincosf_stret(v61);
      v63 = __sincosf_stret(v96);
      *v59.f32 = vmul_n_f32(__PAIR64__(LODWORD(v63.__sinval), LODWORD(v63.__cosval)), v62.__sinval);
      v59.i32[2] = LODWORD(v62.__cosval);
    }

    v59.i32[3] = 0;
    *&v64 = UMMul(*&self->_anon_e4[156], *&self->_anon_e4[172], *&self->_anon_e4[188], *&self->_anon_e4[204], v59);
    *&a4->var13 = v64;
    *&v65 = UMMul(v107, v105, v103, v101, xmmword_1BCE22FD0);
    *(&v65 + 3) = v99 * v99;
    *&a4->var9 = v65;
    if (v9 == 3)
    {
      if (a4->var15 < 0.0 && self->_supportsMTLGPUFamilyApple6)
      {
        *&a4[4].var23 = vmul_f32(vmul_n_f32(0x42DA000046B73E00, v99), *&a4[4].var20);
      }

      v66 = v99 * 0.98;
      if (v19)
      {
        a4[5].var6 = v99 * v99;
        v67 = vcvt_f32_f64(vmulq_n_f64(xmmword_1BCE3ABE0, v99));
        *&a4[5].var7 = vmul_f32(v67, v67);
        a4[5].var9 = v99 * 0.02;
      }

      v68 = v66 * 1.125;
      a4[5].var5 = v66 * v66;
      v69 = v66 * 0.95;
      a4[5].var11 = v68;
      a4[5].var12 = v69;
    }

    v70 = [(NUNIAegirTextureGroup *)self->_textureGroup albedos];
    v71 = [v70 objectAtIndexedSubscript:v9];

    v72 = [v71 atlas];
    [v72 bind:v8 slot:1];

    v73 = [(NUNIAegirTextureGroup *)self->_textureGroup normals];
    v74 = [v73 objectAtIndexedSubscript:v9];

    v75 = [v74 atlas];
    [v75 bind:v8 slot:2];

    v76 = [(NUNIAegirTextureGroup *)self->_textureGroup emissives];
    v77 = [v76 objectAtIndexedSubscript:v9];

    v78 = [v77 atlas];
    [v78 bind:v8 slot:3];

    if (v19)
    {
      v79 = [(NUNIAegirTextureGroup *)self->_textureGroup cloudsLo];
      v80 = [v79 objectAtIndexedSubscript:v9];

      v81 = [v80 atlas];
      [v81 bind:v8 slot:5];

      v82 = [(NUNIAegirTextureGroup *)self->_textureGroup cloudsMd];
      v83 = [v82 objectAtIndexedSubscript:v9];

      v84 = [v83 atlas];
      [v84 bind:v8 slot:6];

      v85 = [(NUNIAegirTextureGroup *)self->_textureGroup cloudsHi];
      v77 = [v85 objectAtIndexedSubscript:v9];

      v86 = [v77 atlas];
      [v86 bind:v8 slot:7];
    }

    v87 = [(NUNIAegirTextureGroup *)self->_textureGroup gradients];
    v88 = [v87 objectAtIndexedSubscript:v9];

    v89 = [v88 atlas];
    [v89 bind:v8 slot:4];

    [v8 drawPrimitives:4 vertexStart:0 vertexCount:4];
  }
}

- (void)_renderLocationDot:(id)a3 uniPtr:(NUNIAegirRenderUniforms *)a4 viewport:(NUNIViewport)a5 renderEncoder:(id)a6
{
  v162 = a3;
  v10 = a6;
  v11 = [(NUNIAegirResourceManager *)self->_resourceManager renderOffscreenPipelineForLocationDot];
  if (v11)
  {
    p_state = &self->_state;
    [v10 setLabel:@"Ægir LocationDot"];
    [v10 setRenderPipelineState:v11];
    UMFloat4x4MakeScale(0.11);
    v152 = v14;
    v157 = v13;
    v142 = v16;
    v147 = v15;
    *v164.columns[0].i64 = UMFloat4x4MakeTranslate();
    v130 = v164.columns[1];
    v131 = v164.columns[0];
    v128 = v164.columns[3];
    v129 = v164.columns[2];
    v176.columns[1] = v152;
    v176.columns[0] = v157;
    v176.columns[3] = v142;
    v176.columns[2] = v147;
    *v17.i64 = UMMul(v164, v176);
    v153 = v18;
    v158 = v17;
    v143 = v20;
    v148 = v19;
    [v162 homeCoordinate];
    v22 = v21;
    *&v23 = v23;
    *v24.i64 = UMFloat4x4MakeRotateX(*&v23 * -0.017453);
    v136 = v25;
    v137 = v24;
    v134 = v27;
    v135 = v26;
    v24.f32[0] = v22;
    *v28.i64 = UMFloat4x4MakeRotateZ(v24.f32[0] * 0.017453);
    v140 = v29;
    v141 = v28;
    v138 = v31;
    v139 = v30;
    v165.columns[1] = v136;
    v165.columns[0] = v137;
    v165.columns[3] = v134;
    v165.columns[2] = v135;
    v177.columns[1] = v153;
    v177.columns[0] = v158;
    v177.columns[3] = v143;
    v177.columns[2] = v148;
    *v32.i64 = UMMul(v165, v177);
    v178.columns[0] = v32;
    v178.columns[1] = v33;
    v178.columns[2] = v34;
    v178.columns[3] = v35;
    v166.columns[1] = v140;
    v166.columns[0] = v141;
    v166.columns[3] = v138;
    v166.columns[2] = v139;
    *v36.i64 = UMMul(v166, v178);
    v154 = v37;
    v159 = v36;
    v144 = v39;
    v149 = v38;
    [v162 equatorRotation];
    v41 = v40;
    [v162 radius];
    v43 = v42;
    [v162 radiusScale];
    UMFloat4x4MakeScale(v43 * v44);
    v126 = v167.columns[1];
    v127 = v167.columns[0];
    v124 = v167.columns[3];
    v125 = v167.columns[2];
    v179.columns[1] = v154;
    v179.columns[0] = v159;
    v179.columns[3] = v144;
    v179.columns[2] = v149;
    *v45.i64 = UMMul(v167, v179);
    v155 = v46;
    v160 = v45;
    v145 = v48;
    v150 = v47;
    v49 = fabsf(v41);
    if (v49 <= 0.00001)
    {
      UMFloat4x4MakeScale(1.0);
      v116 = v55;
      v118 = v54;
      v112 = v57;
      v114 = v56;
    }

    else
    {
      *v168.columns[0].i64 = UMFloat4x4MakeRotateZ(v41 + 1.5708);
      v116 = v168.columns[1];
      v118 = v168.columns[0];
      v112 = v168.columns[3];
      v114 = v168.columns[2];
      v180.columns[1] = v155;
      v180.columns[0] = v160;
      v180.columns[3] = v145;
      v180.columns[2] = v150;
      *v50.i64 = UMMul(v168, v180);
      v155 = v51;
      v160 = v50;
      v145 = v53;
      v150 = v52;
    }

    [v162 position];
    *v169.columns[0].i64 = UMFloat4x4MakeTranslate();
    v122 = v169.columns[1];
    v123 = v169.columns[0];
    v120 = v169.columns[3];
    v121 = v169.columns[2];
    v181.columns[1] = v155;
    v181.columns[0] = v160;
    v181.columns[3] = v145;
    v181.columns[2] = v150;
    *v58.i64 = UMMul(v169, v181);
    v182.columns[0] = v58;
    v182.columns[1] = v59;
    v182.columns[2] = v60;
    v182.columns[3] = v61;
    *v62.i64 = UMMul(*&p_state[12].viewport.width, v182);
    v156 = v63;
    v161 = v62;
    v146 = v65;
    v151 = v64;
    *v66.i64 = UMMul(v62, v63, v64, v65, xmmword_1BCE3A860);
    v133 = v66;
    *v67.i64 = UMMul(v161, v156, v151, v146, xmmword_1BCE3AC00);
    v132 = v67;
    *v68.i64 = UMMul(v161, v156, v151, v146, xmmword_1BCE22FD0);
    v69.f32[0] = a5.width;
    v69.f32[1] = a5.height;
    v70 = vmul_f32(v69, 0x3F0000003F000000);
    v71 = vdiv_f32(vmul_f32(v70, *v132.i8), vdup_laneq_s32(v132, 3));
    *v68.i8 = vdiv_f32(vmul_f32(v70, *v68.i8), vdup_laneq_s32(v68, 3));
    v72 = vsub_f32(vdiv_f32(vmul_f32(v70, *v133.i8), vdup_laneq_s32(v133, 3)), *v68.i8);
    v73 = vmul_f32(v72, v72);
    *v68.i8 = vsub_f32(v71, *v68.i8);
    *v68.i8 = vmul_f32(*v68.i8, *v68.i8);
    v74 = vsqrt_f32(vadd_f32(vzip1_s32(v73, *v68.i8), vzip2_s32(v73, *v68.i8)));
    if (v74.f32[0] >= v74.f32[1])
    {
      v74.f32[0] = v74.f32[1];
    }

    v75 = v74.f32[0] * 0.23077;
    v76 = [v162 scene];
    [v76 locationDotMaximumRadius];
    v78 = v77;

    if (v75 <= v78)
    {
      v109 = v156;
      v108 = v161;
      v111 = v146;
      v110 = v151;
    }

    else
    {
      UMFloat4x4MakeScale((v78 * 0.11) / v75);
      v183.columns[0] = v79;
      v183.columns[1] = v80;
      v183.columns[2] = v81;
      v183.columns[3] = v82;
      v170.columns[1] = v130;
      v170.columns[0] = v131;
      v170.columns[3] = v128;
      v170.columns[2] = v129;
      *v83.i64 = UMMul(v170, v183);
      v184.columns[0] = v83;
      v184.columns[1] = v84;
      v184.columns[2] = v85;
      v184.columns[3] = v86;
      v171.columns[1] = v136;
      v171.columns[0] = v137;
      v171.columns[3] = v134;
      v171.columns[2] = v135;
      *v87.i64 = UMMul(v171, v184);
      v185.columns[0] = v87;
      v185.columns[1] = v88;
      v185.columns[2] = v89;
      v185.columns[3] = v90;
      v172.columns[1] = v140;
      v172.columns[0] = v141;
      v172.columns[3] = v138;
      v172.columns[2] = v139;
      *v91.i64 = UMMul(v172, v185);
      v186.columns[0] = v91;
      v186.columns[1] = v92;
      v186.columns[2] = v93;
      v186.columns[3] = v94;
      v173.columns[1] = v126;
      v173.columns[0] = v127;
      v173.columns[3] = v124;
      v173.columns[2] = v125;
      *v95.i64 = UMMul(v173, v186);
      v99.columns[0] = v95;
      v99.columns[1] = v96;
      v99.columns[2] = v97;
      v99.columns[3] = v98;
      if (v49 > 0.00001)
      {
        v174.columns[1] = v117;
        v174.columns[0] = v119;
        v174.columns[3] = v113;
        v174.columns[2] = v115;
        *v100.i64 = UMMul(v174, v99);
        v99.columns[0] = v100;
        v99.columns[1] = v101;
        v99.columns[2] = v102;
        v99.columns[3] = v103;
      }

      v175.columns[1] = v122;
      v175.columns[0] = v123;
      v175.columns[3] = v120;
      v175.columns[2] = v121;
      *v104.i64 = UMMul(v175, v99);
      v187.columns[0] = v104;
      v187.columns[1] = v105;
      v187.columns[2] = v106;
      v187.columns[3] = v107;
      *v108.i64 = UMMul(*&p_state[12].viewport.width, v187);
    }

    *&a4[3].var13 = v108;
    *&a4[3].var17 = v109;
    *&a4[3].var21 = v110;
    *&a4[4].var5 = v111;
    [v10 setCullMode:1];
    [v10 drawPrimitives:4 vertexStart:0 vertexCount:4];
    [v10 setCullMode:0];
  }
}

- (void)_renderSpriteSpheroid:(id)a3 uniPtr:(NUNIAegirRenderUniforms *)a4 renderEncoder:(id)a5
{
  v50 = a3;
  v8 = a5;
  v9 = [v50 type];
  v10 = [(NUNIAegirResourceManager *)self->_resourceManager renderOffscreenPipelineForSpheroid:v9 config:0];
  if (v10)
  {
    p_state = &self->_state;
    [v8 setLabel:@"Ægir SpriteSpheroid"];
    [v8 setRenderPipelineState:v10];
    *&a4->var5 = s_sprites[[v50 spriteType]];
    [v50 opacity];
    a4[4].var15 = v12;
    [v50 position];
    _Q3 = vsubq_f32(*&self->_anon_e4[12], v13);
    v15 = v13;
    _Q1 = vmulq_f32(_Q3, _Q3);
    _S2 = _Q3.i32[2];
    __asm { FMLA            S1, S2, V3.S[2] }

    _Q1.f32[0] = sqrtf(_Q1.f32[0]);
    v22 = vdivq_f32(_Q3, vdupq_lane_s32(*_Q1.f32, 0));
    v23 = vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL);
    v24 = vextq_s8(vextq_s8(v22, v22, 0xCuLL), v22, 8uLL);
    v25 = vmlaq_f32(vmulq_f32(v24, vnegq_f32(vextq_s8(vuzp1q_s32(*&p_state[3].viewport.height, *&p_state[3].viewport.height), *&p_state[3].viewport.height, 0xCuLL))), v23, vextq_s8(vextq_s8(*&p_state[3].viewport.height, *&p_state[3].viewport.height, 0xCuLL), *&p_state[3].viewport.height, 8uLL));
    v26 = vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v25, v25, 0xCuLL), v25, 8uLL), vnegq_f32(v23)), vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL), v24);
    v25.i32[3] = 0;
    v26.i32[3] = 0;
    v48 = v26;
    v49 = v25;
    v22.i32[3] = 0;
    v15.i32[3] = 1.0;
    v46 = v15;
    v47 = v22;
    [v50 radius];
    v28 = v27;
    [v50 radiusScale];
    v30 = v28 * v29;
    if (v9 == 14)
    {
      v30 = v30 + v30;
    }

    UMFloat4x4MakeScale(v30);
    v53.columns[0] = v31;
    v53.columns[1] = v32;
    v53.columns[2] = v33;
    v53.columns[3] = v34;
    v52.columns[1] = v48;
    v52.columns[0] = v49;
    v52.columns[3] = v46;
    v52.columns[2] = v47;
    *v35.i64 = UMMul(v52, v53);
    v54.columns[0] = v35;
    v54.columns[1] = v36;
    v54.columns[2] = v37;
    v54.columns[3] = v38;
    *&v39 = UMMul(*&self->_anon_e4[220], v54);
    *&a4[3].var13 = v39;
    *&a4[3].var17 = v40;
    *&a4[3].var21 = v41;
    *&a4[4].var5 = v42;
    v43 = [(NUNIAegirTextureGroup *)self->_textureGroup gradients];
    v44 = [v43 objectAtIndexedSubscript:v9];

    v45 = [v44 atlas];
    [v45 bind:v8 slot:4];

    [v8 drawPrimitives:4 vertexStart:0 vertexCount:4];
  }
}

- (void)_renderOffscreenSceneWithScene:(id)a3 viewport:(NUNIViewport)a4 commandBuffer:(id)a5 frameBufferIndex:(unint64_t)a6 drawableTexture:(id)a7
{
  v89[4] = *MEMORY[0x1E69E9840];
  height = a4.height;
  v76 = a3;
  v13 = a5;
  v14 = a7;
  v77 = a6;
  v15 = &self->_offscreenScenes[a6];
  v16 = *v15;
  v17 = v16;
  v72 = v14;
  v73 = v13;
  v71 = height;
  if (!v16 || [(NUNAegirOffscreen *)v16 width]!= a4.width || [(NUNAegirOffscreen *)v17 height]!= height)
  {
    v74 = +[CLKUIMetalResourceManager sharedNilTexture2D];
    v18 = objc_opt_new();
    [v18 setTextureType:2];
    [v18 setWidth:a4.width];
    [v18 setHeight:*&a4 >> 32];
    [v18 setDepth:1];
    [v18 setPixelFormat:10];
    [v18 setUsage:5];
    v19 = +[MetalDeviceInfo sharedInfo];
    [v18 setResourceOptions:{objc_msgSend(v19, "defaultResourceOptionForDevice:", self->_device)}];

    v88[0] = *MEMORY[0x1E696CDE0];
    v20 = [MEMORY[0x1E696AD98] numberWithInt:a4];
    v89[0] = v20;
    v88[1] = *MEMORY[0x1E696CD90];
    v21 = [MEMORY[0x1E696AD98] numberWithInt:height];
    v22 = *MEMORY[0x1E696CDA0];
    v89[1] = v21;
    v89[2] = &unk_1F3B663F0;
    v23 = *MEMORY[0x1E696CD78];
    v88[2] = v22;
    v88[3] = v23;
    v89[3] = &unk_1F3B66408;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v89 forKeys:v88 count:4];

    v25 = [objc_alloc(MEMORY[0x1E696CDE8]) initWithProperties:v24];
    v26 = self->_contentMaskSurfaces[v77];
    self->_contentMaskSurfaces[v77] = v25;

    device = self->_device;
    v28 = v25;
    v29 = [(MTLDevice *)device newTextureWithDescriptor:v18 iosurface:v28 plane:0];
    v30 = self->_contentMaskTextures[v77];
    self->_contentMaskTextures[v77] = v29;

    v31 = v29;
    v32 = [[NUNAegirOffscreen alloc] initWithDevice:self->_device width:a4 height:v71 texture0:v74 texture1:v31 loadAction:2 clearColor0:0.0 clearColor1:0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 1.0];

    objc_storeStrong(v15, v32);
    v13 = v73;

    v14 = v72;
    v17 = v32;
  }

  [(NUNAegirOffscreen *)v17 setTexture0:v14];
  v70 = v17;
  v33 = [(NUNAegirOffscreen *)v17 renderPassDescriptor];
  v34 = [v13 renderCommandEncoderWithDescriptor:v33];

  memset(v87, 0, sizeof(v87));
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v35 = [v76 spheroids];
  v36 = [v35 countByEnumeratingWithState:&v80 objects:v84 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = 0;
    v39 = *v81;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v81 != v39)
        {
          objc_enumerationMutation(v35);
        }

        v41 = *(*(&v80 + 1) + 8 * i);
        [v41 radiusScale];
        if (v42 > 0.00001)
        {
          [v41 opacity];
          if (v43 > 0.00001)
          {
            if ([v41 isVisible])
            {
              v44 = [v41 type];
              if (v44 == 10)
              {
                _S0 = 1258291200;
              }

              else if (v44 == 13)
              {
                _S0 = 1258291194;
              }

              else
              {
                _S0 = 1258291196;
                if (((1 << v44) & 0xFFC000) == 0)
                {
                  _S0 = 1258291198;
                  if (v44 != 12)
                  {
                    v75 = *&self->_anon_e4[12];
                    [v41 position];
                    _S2 = vsubq_f32(v75, v46).i32[2];
                    __asm { FMLA            S0, S2, V1.S[2] }
                  }
                }
              }

              v52 = &__base[8 * v38];
              *v52 = _S0;
              v52[1] = v38;
              objc_storeStrong(v87 + v38++, v41);
            }
          }
        }
      }

      v37 = [v35 countByEnumeratingWithState:&v80 objects:v84 count:16];
    }

    while (v37);
  }

  else
  {
    v38 = 0;
  }

  qsort(__base, v38, 8uLL, _NUNIAegirRenderCompareObject);
  [v34 setLabel:@"Ægir Offscreen Scene"];
  v78[0] = 0;
  v78[1] = 0;
  *&v78[2] = a4.width;
  *&v78[3] = v71;
  v79 = xmmword_1BCE3A870;
  [v34 setViewport:v78];
  [v34 setCullMode:0];
  [(NUNIAegirRenderer *)self _renderOffscreenBackgroundWithRenderEncoder:v34 frameBufferIndex:v77];
  v53 = [(NUNIAegirResourceManager *)self->_resourceManager rectVerticesBuffer];
  [v34 setVertexBuffer:v53 offset:0 atIndex:0];

  if (v38 >= 1)
  {
    v54 = &v86;
    v55 = v38;
    do
    {
      v56 = *v54;
      v54 += 2;
      v57 = *(v87 + v56);
      v58 = 1 << [v57 type];
      v59 = [(NUNIAegirRenderer *)self getOrCreateUniformBufferforFrameBufferIndex:v77];
      [v34 setVertexBuffer:v59 offset:0 atIndex:1];
      [v34 setFragmentBuffer:v59 offset:0 atIndex:0];
      v60 = [v59 contents];
      memcpy(v60, &self->_baseUniforms, 0x1B0uLL);
      if ((*&v58 & 0xFBF400) != 0)
      {
        [(NUNIAegirRenderer *)self _renderSpriteSpheroid:v57 uniPtr:v60 renderEncoder:v34];
      }

      else if ((v58 & 0x3FE) != 0)
      {
        [(NUNIAegirRenderer *)self _renderRaytraceSpheroid:v57 uniPtr:v60 renderEncoder:v34];
      }

      if ((v58 & 8) != 0)
      {
        [v76 locationDotAlpha];
        if (v61 > 0.00001)
        {
          v62 = v61;
          [v76 locationDotPulse];
          v64 = v63;
          v65 = [(NUNIAegirRenderer *)self getOrCreateUniformBufferforFrameBufferIndex:v77];
          [v34 setVertexBuffer:v65 offset:0 atIndex:1];
          [v34 setFragmentBuffer:v65 offset:0 atIndex:0];
          v66 = [v65 contents];
          memcpy(v66, &self->_baseUniforms, 0x1B0uLL);
          [v57 opacity];
          *(v66 + 360) = v62 * v67;
          *(v66 + 364) = v64 - floorf(v64);
          [v76 locationDotPulseOverrideAlpha];
          *(v66 + 368) = v68;
          [(NUNIAegirRenderer *)self _renderLocationDot:v57 uniPtr:v66 viewport:a4 renderEncoder:v34];
        }
      }

      --v55;
    }

    while (v55);
  }

  [v34 endEncoding];
  for (j = 184; j != -8; j -= 8)
  {
  }
}

- (void)_renderOffscreenBloomWithScene:(id)a3 viewport:(NUNIViewport)a4 commandBuffer:(id)a5 frameBufferIndex:(unint64_t)a6
{
  v10 = self->_offscreenScenes[a6];
  v11 = self->_offscreenBlooms;
  v12 = a5;
  v13 = [(NUNIAegirRenderer *)self getOrCreateUniformBufferforFrameBufferIndex:a6];
  memcpy([v13 contents], &self->_baseUniforms, 0x1B0uLL);
  v14 = a4.width >> 1;
  v15 = *&a4 >> 33;
  if (!v11 || [(NUNAegirOffscreen *)v11 width]!= v14 || [(NUNAegirOffscreen *)v11 height]!= v15)
  {
    v16 = [[NUNAegirOffscreen alloc] initWithDevice:self->_device width:(a4.width >> 1) height:*&a4 >> 33 pixelFormat0:10 pixelFormat1:0 mipmaps:3 loadAction:0.0 clearColor0:0.0 clearColor1:0.0, 0.0, 1.0, 1.0, 1.0, 1.0, 2];

    objc_storeStrong(&self->_offscreenBlooms, v16);
    v11 = v16;
  }

  v17 = [(NUNAegirOffscreen *)v11 renderPassDescriptor];
  v18 = [v12 renderCommandEncoderWithDescriptor:v17];

  v19 = [(NUNIAegirResourceManager *)self->_resourceManager renderOffscreenPipelineForThreshold];
  [v18 setLabel:@"Ægir Threshold"];
  v24[0] = 0;
  v24[1] = 0;
  *&v24[2] = v14;
  *&v24[3] = v15;
  v25 = xmmword_1BCE3A870;
  [v18 setViewport:v24];
  [v18 setCullMode:0];
  [v18 setRenderPipelineState:v19];
  v20 = [(NUNIAegirResourceManager *)self->_resourceManager rectVerticesBuffer];
  [v18 setVertexBuffer:v20 offset:0 atIndex:0];

  [v18 setVertexBuffer:v13 offset:0 atIndex:1];
  [v18 setFragmentBuffer:v13 offset:0 atIndex:0];
  v21 = [(NUNAegirOffscreen *)v10 texture0];
  [v18 setFragmentTexture:v21 atIndex:1];

  [v18 drawPrimitives:4 vertexStart:0 vertexCount:4];
  [v18 endEncoding];
  v22 = [v12 blitCommandEncoder];

  v23 = [(NUNAegirOffscreen *)v11 texture0];
  [v22 generateMipmapsForTexture:v23];

  [v22 endEncoding];
}

- (void)_renderOffscreenPostWithScene:(id)a3 viewport:(NUNIViewport)a4 commandBuffer:(id)a5 frameBufferIndex:(unint64_t)a6
{
  v8 = a4;
  height = a4.height;
  v11 = self->_offscreenScenes[a6];
  v12 = self->_offscreenBlooms;
  v13 = self->_offscreenPosts;
  v14 = a5;
  v15 = [(NUNIAegirRenderer *)self getOrCreateUniformBufferforFrameBufferIndex:a6];
  memcpy([v15 contents], &self->_baseUniforms, 0x1B0uLL);
  if (!v13 || [(NUNAegirOffscreen *)v13 width]!= v8.width || [(NUNAegirOffscreen *)v13 height]!= height)
  {
    v16 = +[CLKUIMetalResourceManager sharedNilTexture2D];
    v33 = v13;
    v17 = v14;
    v18 = v15;
    v19 = height;
    v20 = v8;
    v21 = v12;
    v22 = [NUNAegirOffscreen alloc];
    device = self->_device;
    [(NUNAegirOffscreen *)v11 texture1];
    v24 = v34 = v11;
    v25 = v22;
    v12 = v21;
    v8 = v20;
    height = v19;
    v15 = v18;
    v14 = v17;
    v13 = [(NUNAegirOffscreen *)v25 initWithDevice:device width:v8 height:height texture0:v16 texture1:v24 loadAction:1 clearColor0:0.0 clearColor1:0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 1.0];

    objc_storeStrong(&self->_offscreenPosts, v13);
    v11 = v34;
  }

  [(NUNAegirOffscreen *)v11 texture0];
  v27 = v26 = v11;
  [(NUNAegirOffscreen *)v13 setTexture0:v27];

  v28 = [(NUNAegirOffscreen *)v13 renderPassDescriptor];
  v29 = [v14 renderCommandEncoderWithDescriptor:v28];

  v30 = [(NUNIAegirResourceManager *)self->_resourceManager renderOffscreenPipelineForPost];
  [v29 setLabel:@"Ægir Post"];
  [v29 setRenderPipelineState:v30];
  v35[0] = 0;
  v35[1] = 0;
  *&v35[2] = v8.width;
  *&v35[3] = height;
  v36 = xmmword_1BCE3A870;
  [v29 setViewport:v35];
  [v29 setCullMode:0];
  v31 = [(NUNIAegirResourceManager *)self->_resourceManager rectVerticesBuffer];
  [v29 setVertexBuffer:v31 offset:0 atIndex:0];

  [v29 setVertexBuffer:v15 offset:0 atIndex:1];
  [v29 setFragmentBuffer:v15 offset:0 atIndex:0];
  v32 = [(NUNAegirOffscreen *)v12 texture0];
  [v29 setFragmentTexture:v32 atIndex:1];

  [v29 drawPrimitives:4 vertexStart:0 vertexCount:4];
  [v29 endEncoding];
}

- (void)renderOffscreenWithScene:(id)a3 viewport:(NUNIViewport)a4 commandBuffer:(id)a5
{
  [(NUNIAegirRenderer *)self _updateStateWithScene:a3 viewport:a4, a5];

  [(NUNIAegirRenderer *)self _updateBaseUniformsForViewport:a4];
}

- (void)renderWithScene:(id)a3 viewport:(NUNIViewport)a4 commandBuffer:(id)a5 passDescriptor:(id)a6
{
  v10 = a5;
  v11 = a3;
  v12 = [a6 colorAttachments];
  v15 = [v12 objectAtIndexedSubscript:0];

  v13 = [v15 texture];
  v14 = self->_frame % 3;
  self->_renderUniformBuffersCounts[v14] = 0;
  [(NUNIAegirRenderer *)self _renderOffscreenSceneWithScene:v11 viewport:a4 commandBuffer:v10 frameBufferIndex:v14 drawableTexture:v13];
  [(NUNIAegirRenderer *)self _renderOffscreenBloomWithScene:v11 viewport:a4 commandBuffer:v10 frameBufferIndex:v14];
  [(NUNIAegirRenderer *)self _renderOffscreenPostWithScene:v11 viewport:a4 commandBuffer:v10 frameBufferIndex:v14];

  [(CALayer *)self->_contentMaskLayer setContents:self->_contentMaskSurfaces[v14]];
  ++self->_frame;
}

@end