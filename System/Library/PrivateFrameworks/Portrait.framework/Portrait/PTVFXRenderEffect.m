@interface PTVFXRenderEffect
+ (uint64_t)transformVideoPositionToCropCoordinates:(uint64_t)a3 effectRenderRequest:(uint64_t)a4 flipYAxis:(char)a5;
+ (uint64_t)transformVideoRectToCropCoordinates:(uint64_t)a3 effectRenderRequest:(void *)a4;
- (BOOL)computeSoftAlphaMask;
- (BOOL)updateWithRenderRequest:(id)a3 lastFrameTime:(double)a4;
- (PTVFXRenderEffect)initWithMetalContext:(id)a3 colorSize:(id *)a4 colorConversion:(id)a5 prewarmOnly:(BOOL)a6 humanDetections:(id)a7 sharedResources:(id)a8 asyncInitQueue:(id)a9;
- (VFXTextureAttachmentDescriptor)finalColorDescriptor;
- (id)addNewEffectFromEvent:(id)a3 renderRequest:(id)a4 time:(double)a5 presenterOverlaySmall:(BOOL)a6;
- (id)textureForAttachment:(id)a3 withDescriptor:(id)a4;
- (int)convertRGB:(id)a3 inRGBA:(id)a4 inAlphaMask:(id)a5 outRGBA:(id)a6 toLinear:(BOOL)a7 transferFunction:(id)a8;
- (int)initVFX:(BOOL)a3 sharedResources:(id)a4 asyncInitQueue:(id)a5;
- (int)maxReactionEffectComplexity;
- (int)render:(id)a3 effectRGBA:(id)a4 effectDepth:(id)a5;
- (int)renderWithBackgroundDimming:(id)a3 effectRGBA:(id)a4 inCenteredDisparity:(id)a5 inSegmentation:(id)a6 effectDepth:(id)a7 disparityFiltered:(id)a8 focusDisparityModifiers:(id)a9 renderRequest:(id)a10 debugType:(int64_t)a11;
- (unint64_t)loadActionForAttachment:(id)a3;
- (void)dealloc;
- (void)removeAllActiveReactions;
- (void)removeEffectBindingWithKey:(id)a3;
- (void)updateCameraProjection;
@end

@implementation PTVFXRenderEffect

- (PTVFXRenderEffect)initWithMetalContext:(id)a3 colorSize:(id *)a4 colorConversion:(id)a5 prewarmOnly:(BOOL)a6 humanDetections:(id)a7 sharedResources:(id)a8 asyncInitQueue:(id)a9
{
  v16 = a3;
  v17 = a5;
  v55 = a7;
  v18 = a8;
  v19 = a9;
  v58.receiver = self;
  v58.super_class = PTVFXRenderEffect;
  v20 = [(PTVFXRenderEffect *)&v58 init];
  if (v20)
  {
    kdebug_trace();
    objc_storeStrong(v20 + 1, a3);
    objc_storeStrong(v20 + 2, a5);
    v21 = *&a4->var0;
    *(v20 + 12) = a4->var2;
    *(v20 + 5) = v21;
    v22 = *&a4->var0;
    *(v20 + 15) = a4->var2;
    *(v20 + 104) = v22;
    *(v20 + 43) = 81;
    *(v20 + 44) = 260;
    v20[68] = 0;
    v23 = [PTVFXSoftAlphaMask alloc];
    v24 = *(v20 + 1);
    v56 = *&a4->var0;
    var2 = a4->var2;
    v25 = [(PTVFXSoftAlphaMask *)v23 initWithMetalContext:v24 colorSize:&v56];
    v26 = *(v20 + 6);
    *(v20 + 6) = v25;

    *(v20 + 20) = [PTEffectUtil aspectRatio:a4->var0, a4->var1];
    objc_storeStrong(v20 + 4, a7);
    *(v20 + 45) = 0x461C40003DCCCCCDLL;
    v20[336] = 1;
    v20[244] = 0;
    v27 = [[PTEffectReactionBackgroundDimming alloc] initWithMetalContext:v16];
    v28 = *(v20 + 3);
    *(v20 + 3) = v27;

    if (*(v20 + 3))
    {
      v29 = objc_opt_new();
      v30 = *(v20 + 32);
      *(v20 + 32) = v29;

      v31 = objc_opt_new();
      LODWORD(v56) = 0;
      v32 = v20 + 264;
      do
      {
        [v31 reset];
        [v31 setConstantValue:&v56 type:29 withName:@"kColorTransferFunction"];
        v33 = [v16 computePipelineStateFor:@"convertRGBAlpha" withConstants:v31];
        v34 = *&v32[8 * v56];
        *&v32[8 * v56] = v33;

        v35 = v56;
        if (!*&v32[8 * v56])
        {
          v45 = _PTLogSystem();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            [(PTVFXRenderEffect *)v45 initWithMetalContext:v46 colorSize:v47 colorConversion:v48 prewarmOnly:v49 humanDetections:v50 sharedResources:v51 asyncInitQueue:v52];
          }

          goto LABEL_15;
        }

        LODWORD(v56) = v56 + 1;
      }

      while (v35 <= 7);
      if (a6)
      {
        kdebug_trace();
      }

      else
      {
        v53 = [v20 initVFX:0 sharedResources:v18 asyncInitQueue:v19];
        kdebug_trace();
        if (v53)
        {
          goto LABEL_15;
        }
      }

      v36 = v20;
    }

    else
    {
      v31 = _PTLogSystem();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [(PTVFXRenderEffect *)v31 initWithMetalContext:v38 colorSize:v39 colorConversion:v40 prewarmOnly:v41 humanDetections:v42 sharedResources:v43 asyncInitQueue:v44];
      }

LABEL_15:
      v36 = 0;
    }

    v37 = v55;
  }

  else
  {
    v36 = 0;
    v37 = v55;
  }

  return v36;
}

- (void)dealloc
{
  [(PTVFXResources *)self->_vfxResources setInitializationCancelled:1];
  v3 = [(PTMetalContext *)self->_metalContext device];
  purgeMetalDevice(v3);
  v4 = dispatch_time(0, 2000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__PTVFXRenderEffect_dealloc__block_invoke;
  block[3] = &unk_278522E90;
  v8 = v3;
  v5 = v3;
  dispatch_after(v4, MEMORY[0x277D85CD0], block);

  v6.receiver = self;
  v6.super_class = PTVFXRenderEffect;
  [(PTVFXRenderEffect *)&v6 dealloc];
}

- (int)initVFX:(BOOL)a3 sharedResources:(id)a4 asyncInitQueue:(id)a5
{
  v8 = a4;
  v9 = a5;
  gotLoadHelper_x8__OBJC_CLASS___VFXTextureAttachmentDescriptor(v10);
  v12 = objc_alloc_init(*(v11 + 320));
  colorAttachmentDescriptor = self->_colorAttachmentDescriptor;
  self->_colorAttachmentDescriptor = v12;

  v14 = [v8 vfxResources];
  vfxResources = self->_vfxResources;
  self->_vfxResources = v14;

  if (!self->_vfxResources)
  {
    v16 = objc_opt_new();
    v17 = self->_vfxResources;
    self->_vfxResources = v16;

    [v8 setVfxResources:self->_vfxResources];
    if (!a3)
    {
      [(PTVFXResources *)self->_vfxResources asyncVFXInit:v9 metalContext:self->_metalContext];
    }
  }

  v18 = objc_opt_new();
  effectBindings = self->_effectBindings;
  self->_effectBindings = v18;

  self->_cameraRotationDegrees = -1;
  v20 = *self->depthNearFar;
  v21 = vmuls_lane_f32(v20.f32[0], v20, 1);
  v22 = -(v21 + (v20.f32[1] * -0.5));
  v23 = v21 + (v20.f32[0] * -0.5);
  if (!self->reverseZ)
  {
    v23 = v22;
  }

  self->_emitZValue = v23 / ((v20.f32[0] - v20.f32[1]) * -0.5);

  return 0;
}

- (void)removeEffectBindingWithKey:(id)a3
{
  effectBindings = self->_effectBindings;
  v5 = a3;
  v10 = [(NSMutableDictionary *)effectBindings objectForKey:v5];
  v6 = [v10 rootNode];

  if (v6)
  {
    v7 = [v10 rootNode];
    [v7 removeFromParentNode];

    [v10 setRootNode:0];
  }

  v8 = [v10 rootAssetNode];

  if (v8)
  {
    v9 = [v10 rootAssetNode];
    [v9 removeFromParent];

    [v10 setRootAssetNode:0];
  }

  [(NSMutableDictionary *)self->_effectBindings removeObjectForKey:v5];
  [(NSMutableDictionary *)self->_activeReactions removeObjectForKey:v5];
}

- (BOOL)computeSoftAlphaMask
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(NSMutableDictionary *)self->_effectBindings allValues];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (-[PTVFXRenderEffect useSoftAlphaMask:](self, "useSoftAlphaMask:", [*(*(&v10 + 1) + 8 * i) effectType]))
        {
          v8 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (void)updateCameraProjection
{
  self->_dimmingFactor = 0.0;
  [(PTVFXRenderEffect *)self removeAllActiveReactions];
  width = self->_colorSizeROI.width;
  height = self->_colorSizeROI.height;
  if (width >= height)
  {
    goto LABEL_9;
  }

  cameraRotationDegrees = self->_cameraRotationDegrees;
  if (cameraRotationDegrees > 179)
  {
    if (cameraRotationDegrees != 180 && cameraRotationDegrees != 270)
    {
      goto LABEL_9;
    }

LABEL_8:
    v6 = width / height;
    v7 = 24.0 / v6;
    goto LABEL_12;
  }

  if (!cameraRotationDegrees || cameraRotationDegrees == 90)
  {
    goto LABEL_8;
  }

LABEL_9:
  v7 = 28.8;
  if (self->_aspectRatio != 3)
  {
    v7 = 24.0;
  }

  v6 = width / height;
LABEL_12:
  v8 = v7 * 0.5 / 50.0;
  v9 = atanf(v8);
  *&v10 = v9 + v9;
  *&v11 = v6;
  [PTUtil perspectiveProjectionFieldOfView:self->reverseZ aspectRatio:v10 depthNearFar:v11 reverseZ:*self->depthNearFar];
  v16 = self->_cameraRotationDegrees;
  switch(v16)
  {
    case 0x10Eu:
      v19 = 0;
      v25 = xmmword_2244A5340;
      v26 = xmmword_2244A5350;
      v27 = xmmword_2244A5360;
      v28 = xmmword_2244A5370;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      do
      {
        *(&v29 + v19) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, COERCE_FLOAT(*(&v25 + v19))), v13, *(&v25 + v19), 1), v14, *(&v25 + v19), 2), v15, *(&v25 + v19), 3);
        v19 += 16;
      }

      while (v19 != 64);
      break;
    case 0xB4u:
      v18 = 0;
      v25 = xmmword_2244A5380;
      v26 = xmmword_2244A5340;
      v27 = xmmword_2244A5360;
      v28 = xmmword_2244A5370;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      do
      {
        *(&v29 + v18) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, COERCE_FLOAT(*(&v25 + v18))), v13, *(&v25 + v18), 1), v14, *(&v25 + v18), 2), v15, *(&v25 + v18), 3);
        v18 += 16;
      }

      while (v18 != 64);
      break;
    case 0x5Au:
      v17 = 0;
      v25 = xmmword_2244A5390;
      v26 = xmmword_2244A5380;
      v27 = xmmword_2244A5360;
      v28 = xmmword_2244A5370;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      do
      {
        *(&v29 + v17) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, COERCE_FLOAT(*(&v25 + v17))), v13, *(&v25 + v17), 1), v14, *(&v25 + v17), 2), v15, *(&v25 + v17), 3);
        v17 += 16;
      }

      while (v17 != 64);
      break;
    default:
      [(PTVFXResources *)self->_vfxResources camera:*&v15];
      goto LABEL_25;
  }

  [(PTVFXResources *)self->_vfxResources camera:v32];
  v20 = LABEL_25:;
  [v20 setProjectionTransform:{*v24.i64, *v23.i64, *v22.i64, *v21.i64}];

  v33.columns[1] = v23;
  v33.columns[0] = v24;
  v33.columns[3] = v21;
  v33.columns[2] = v22;
  *self->_anon_b0 = __invert_f4(v33);
}

- (id)addNewEffectFromEvent:(id)a3 renderRequest:(id)a4 time:(double)a5 presenterOverlaySmall:(BOOL)a6
{
  v169 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v130 = a4;
  v160 = a6;
  v11 = objc_opt_new();
  [v11 setStartTime:a5];
  v12 = [v10 effectType];
  v13 = [(PTVFXResources *)self->_vfxResources reactionTemplates];
  v14 = v12 % [v13 count];

  [v11 setEffectType:v14];
  [v11 setUiTriggeredReaction:{objc_msgSend(v10, "uiTriggeredReaction")}];
  activeReactions = self->_activeReactions;
  v137 = v10;
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v10, "triggerID")}];
  v128 = v11;
  [(NSMutableDictionary *)activeReactions setObject:v11 forKeyedSubscript:v16];

  v17 = [[PTVFXRenderEffectBinding alloc] initWithHumanDetections:self->_humanDetections];
  gotLoadHelper_x8__OBJC_CLASS___VFXNode(v18);
  v20 = objc_alloc_init(*(v19 + 296));
  [(PTVFXRenderEffectBinding *)v17 setRootNode:v20];

  gotLoadHelper_x8__OBJC_CLASS___VFXAssetNode(v21);
  v23 = objc_alloc_init(*(v22 + 280));
  [(PTVFXRenderEffectBinding *)v17 setRootAssetNode:v23];

  v24 = [(PTVFXResources *)self->_vfxResources world];
  v25 = [v24 rootNode];
  v26 = [(PTVFXRenderEffectBinding *)v17 rootNode];
  [v25 addChildNode:v26];

  v27 = [(PTVFXResources *)self->_vfxResources world];
  v28 = [v27 assetRegistry];
  v29 = [v28 rootNode];
  v30 = [(PTVFXRenderEffectBinding *)v17 rootAssetNode];
  [v29 addChildNode:v30];

  v31 = [(PTVFXResources *)self->_vfxResources reactionTemplates];
  v141 = v14;
  v32 = [v31 objectAtIndexedSubscript:v14];
  v33 = [v32 copy];

  v34 = [(PTVFXResources *)self->_vfxResources world];
  v35 = [(PTVFXRenderEffectBinding *)v17 rootNode];
  v36 = [(PTVFXRenderEffectBinding *)v17 rootAssetNode];
  v127 = v33;
  [v34 mergeWorld:v33 parentNode:v35 parentAssetNode:v36];

  v158 = 0u;
  v159 = 0u;
  v156 = 0u;
  v157 = 0u;
  v142 = v17;
  v37 = [(PTVFXRenderEffectBinding *)v17 rootAssetNode];
  v38 = [v37 childNodes];

  v39 = [v38 countByEnumeratingWithState:&v156 objects:v168 count:16];
  if (v39)
  {
    v41 = v39;
    v42 = *v157;
    gotLoadHelper_x27__OBJC_CLASS___VFXClientTextureAsset(v40);
    do
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v157 != v42)
        {
          objc_enumerationMutation(v38);
        }

        v44 = *(*(&v156 + 1) + 8 * i);
        v45 = [v44 asset];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v47 = [v44 asset];
          v48 = [v47 clientIdentifier];
          v49 = [v48 isEqualToString:@"texAlpha"];

          if (v49)
          {
            v50 = [(PTVFXSoftAlphaMask *)self->_softAlphaMask lazyInstantiateAlphaMaskForRenderRequest:v130];
            [v47 setTexture:v50];
          }
        }
      }

      v41 = [v38 countByEnumeratingWithState:&v156 objects:v168 count:16];
    }

    while (v41);
  }

  v51 = v142;
  [(PTVFXRenderEffectBinding *)v142 setEffectType:v141];
  cameraRotationDegrees = self->_cameraRotationDegrees;
  if (cameraRotationDegrees <= 179)
  {
    if (cameraRotationDegrees)
    {
      if (cameraRotationDegrees != 90)
      {
        goto LABEL_18;
      }

      goto LABEL_21;
    }

LABEL_19:
    width = self->_colorSize.width;
    height = self->_colorSize.height;
    if (width <= height)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (cameraRotationDegrees == 180)
  {
    goto LABEL_19;
  }

  if (cameraRotationDegrees == 270)
  {
LABEL_21:
    width = self->_colorSize.width;
    height = self->_colorSize.height;
    if (width >= height)
    {
      goto LABEL_23;
    }

LABEL_22:
    v56 = 1;
    goto LABEL_24;
  }

LABEL_18:
  width = self->_colorSize.width;
  height = self->_colorSize.height;
LABEL_23:
  v56 = width == height;
LABEL_24:
  aspectRatio = self->_aspectRatio;
  if (v141 > 3)
  {
    if (v141 > 5)
    {
      if (v141 != 7)
      {
        if (v141 != 6)
        {
          goto LABEL_41;
        }

        if (v56)
        {
          LODWORD(v52) = 1084647014;
LABEL_49:
          [(PTVFXRenderEffectBinding *)v142 setDuration:v52];
          goto LABEL_50;
        }

        _ZF = aspectRatio == 1;
        LODWORD(v52) = 1087163597;
        v68 = 6.0;
LABEL_47:
        if (!_ZF)
        {
          *&v52 = v68;
        }

        goto LABEL_49;
      }
    }

    else if (v141 != 4)
    {
      v58 = v142;
      v59 = 0;
LABEL_38:
      [(PTVFXRenderEffectBinding *)v58 setUseBackgroundDimming:v59];
      goto LABEL_50;
    }

    v58 = v142;
    v59 = 1;
    goto LABEL_38;
  }

  if ((v141 - 1) >= 2)
  {
    if (v141)
    {
      if (v141 == 3)
      {
        if (v56)
        {
          LODWORD(v52) = 1082340147;
        }

        else
        {
          LODWORD(v52) = dword_2244A52F8[aspectRatio == 1];
        }

        goto LABEL_49;
      }

LABEL_41:
      v60 = _PTLogSystem();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        [(PTVFXRenderEffect *)v141 addNewEffectFromEvent:v60 renderRequest:v61 time:v62 presenterOverlaySmall:v63, v64, v65, v66];
      }

      goto LABEL_50;
    }

    if (v56)
    {
      LODWORD(v52) = 1083388723;
      goto LABEL_49;
    }

    _ZF = aspectRatio == 1;
    LODWORD(v52) = 1084437299;
    v68 = 5.0;
    goto LABEL_47;
  }

LABEL_50:
  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v153 = 0u;
  v69 = [(PTVFXRenderEffectBinding *)v142 rootNode];
  v70 = [v69 childNodes];

  obj = v70;
  v134 = [v70 countByEnumeratingWithState:&v152 objects:v167 count:16];
  if (!v134)
  {
    goto LABEL_153;
  }

  v129 = v141 - 1;
  v133 = *v153;
  __asm { FMOV            V0.2S, #1.0 }

  v131 = _D0;
  v75 = vneg_f32(0x80000000800000);
  do
  {
    for (j = 0; j != v134; ++j)
    {
      if (*v153 != v133)
      {
        objc_enumerationMutation(obj);
      }

      v77 = *(*(&v152 + 1) + 8 * j);
      v78 = [v77 behaviorGraph];
      if (v78)
      {
        v136 = j;
        v79 = [v77 name];
        v148 = 0u;
        v149 = 0u;
        v150 = 0u;
        v151 = 0u;
        v135 = v78;
        v80 = [v78 bindings];
        v81 = [v80 countByEnumeratingWithState:&v148 objects:v166 count:16];
        if (!v81)
        {
          goto LABEL_150;
        }

        v82 = v81;
        v83 = *v149;
        while (1)
        {
          v84 = 0;
          do
          {
            if (*v149 != v83)
            {
              objc_enumerationMutation(v80);
            }

            v85 = *(*(&v148 + 1) + 8 * v84);
            v86 = [v85 name];
            if ([v86 isEqualToString:@"position"] && objc_msgSend(v79, "isEqualToString:", @"Emitter"))
            {
              if (v141 == 6)
              {
                [(PTVFXRenderEffectBinding *)v51 setPositionBinding:v85];
              }
            }

            else
            {
              if ([v86 isEqualToString:@"headPosition"])
              {
                [(PTVFXRenderEffectBinding *)v51 setHeadPositionBinding:v85];
                goto LABEL_104;
              }

              if ([v86 isEqualToString:@"seed"])
              {
                *buf = 0;
                v87 = kVFXRandomizationSeed;
                if (kVFXRandomizationSeed == -1)
                {
                  v87 = mach_absolute_time();
                }

                *buf = v87;
                v88 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:4];
                [PTVFXRenderEffectBinding setRawValue:v88 onBinding:v85];

                goto LABEL_103;
              }

              if ([v86 isEqualToString:@"orientation"])
              {
                v89 = self->_cameraRotationDegrees;
                *buf = v89;
                if (self->_aspectRatio == 3)
                {
                  goto LABEL_73;
                }

                if (self->_colorSizeROI.width < self->_colorSizeROI.height)
                {
                  if (v89 > 179)
                  {
                    if (v89 == 270)
                    {
                      goto LABEL_73;
                    }

                    if (v89 != 180)
                    {
                      goto LABEL_100;
                    }
                  }

                  else if (v89)
                  {
                    if (v89 != 90)
                    {
                      goto LABEL_100;
                    }

LABEL_73:
                    *buf = 0;
                    goto LABEL_100;
                  }

                  *buf = 90;
                }

LABEL_100:
                v102 = MEMORY[0x277CBEA90];
                v103 = buf;
                v104 = 4;
LABEL_101:
                v99 = [v102 dataWithBytes:v103 length:v104];
                goto LABEL_102;
              }

              if ([v86 isEqualToString:@"aspectRatio"])
              {
                if ((self->_aspectRatio & 0xFFFFFFFFFFFFFFFELL) == 2)
                {
                  v90 = 4;
                }

                else
                {
                  v90 = 9;
                }

                *buf = v90;
                v91 = MEMORY[0x277CBEA90];
                v92 = buf;
                v93 = 4;
                goto LABEL_79;
              }

              if ([v86 isEqualToString:@"opacity"])
              {
                v95 = [(PTVFXRenderEffectBinding *)v51 opacityValue];

                if (!v95)
                {
                  *buf = 1065353216;
                  v96 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:4];
                  [(PTVFXRenderEffectBinding *)v51 setOpacityValue:v96];

                  v97 = objc_opt_new();
                  [(PTVFXRenderEffectBinding *)v51 setOpacityBindings:v97];
                }

                v98 = [(PTVFXRenderEffectBinding *)v51 opacityBindings];
                [v98 addObject:v85];

                v99 = [(PTVFXRenderEffectBinding *)v51 opacityValue];
LABEL_102:
                v105 = v99;
                [PTVFXRenderEffectBinding setRawValue:v99 onBinding:v85];

LABEL_103:
                v51 = v142;
                goto LABEL_104;
              }

              if ([v86 isEqualToString:@"duration"])
              {
                v100 = [(PTVFXRenderEffectBinding *)v51 durationBinding];

                if (v100)
                {
                  v101 = _PTLogSystem();
                  if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
                  {
                    [PTVFXRenderEffect addNewEffectFromEvent:v147 renderRequest:v101 time:? presenterOverlaySmall:?];
                  }
                }

                v94 = [v85 rawValue];
                if ([v94 length] == 4)
                {
                  [(PTVFXRenderEffectBinding *)v142 setDurationBinding:v85];
                }

                else
                {
                  v107 = _PTLogSystem();
                  if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
                  {
                    [PTVFXRenderEffect addNewEffectFromEvent:v165 renderRequest:v94 time:? presenterOverlaySmall:?];
                  }
                }

                goto LABEL_80;
              }

              if ([v86 isEqualToString:@"gestureTrigger"])
              {
                v106 = [v137 uiTriggeredReaction] ^ 1;
                goto LABEL_108;
              }

              if ([v86 isEqualToString:@"backgroundDimming"])
              {
                v139 = [v85 rawValue];
                v108 = [(PTVFXRenderEffectBinding *)v51 backgroundDimmingBinding];

                if (v108)
                {
                  v109 = _PTLogSystem();
                  if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
                  {
                    [PTVFXRenderEffect addNewEffectFromEvent:v145 renderRequest:v109 time:? presenterOverlaySmall:?];
                  }

                  v51 = v142;
                }

                if ([v139 length] == 4)
                {
                  [(PTVFXRenderEffectBinding *)v51 setBackgroundDimmingBinding:v85];
                }

                else
                {
                  v110 = _PTLogSystem();
                  if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
                  {
                    [PTVFXRenderEffect addNewEffectFromEvent:v164 renderRequest:v139 time:? presenterOverlaySmall:?];
                  }
                }
              }

              else
              {
                if ([v86 isEqualToString:@"bilbyFloating"])
                {
                  v91 = MEMORY[0x277CBEA90];
                  v92 = &v160;
                  goto LABEL_109;
                }

                if ([v86 isEqualToString:@"viewportScale"])
                {
                  v111 = self->_colorSizeROI.width;
                  v112 = self->_colorSizeROI.height;
                  HIDWORD(v113) = HIDWORD(v131);
                  LODWORD(v114) = v131;
                  if (v111 > v112)
                  {
                    *&v113 = v111 / v112;
                    v115 = v113;
                  }

                  else
                  {
                    *(&v114 + 1) = v112 / v111;
                    v115 = v114;
                  }

                  *buf = v115;
                  v91 = MEMORY[0x277CBEA90];
                  v92 = buf;
                  v93 = 8;
                  goto LABEL_79;
                }

                v51 = v142;
                if ([v86 isEqualToString:@"left"] && objc_msgSend(v79, "isEqualToString:", @"Emitter"))
                {
                  if (v129 <= 1)
                  {
                    v106 = [v137 orientation] == 0;
                    goto LABEL_108;
                  }
                }

                else if ([v86 isEqualToString:@"up"] && objc_msgSend(v79, "isEqualToString:", @"Emitter"))
                {
                  if (v129 <= 1)
                  {
                    v106 = v141 == 1;
LABEL_108:
                    buf[0] = v106;
                    v91 = MEMORY[0x277CBEA90];
                    v92 = buf;
LABEL_109:
                    v93 = 1;
LABEL_79:
                    v94 = [v91 dataWithBytes:v92 length:v93];
                    [PTVFXRenderEffectBinding setRawValue:v94 onBinding:v85];
LABEL_80:

                    v51 = v142;
                  }
                }

                else if ((![v86 isEqualToString:@"rate"] || (objc_msgSend(v79, "isEqualToString:", @"Emitter") & 1) == 0) && objc_msgSend(v86, "isEqualToString:", @"boundsMin"))
                {
                  v143 = v75;
                  v116 = 0.0;
                  v117 = 1;
                  do
                  {
                    v138 = v117;
                    v118 = 1;
                    v119 = 0.0;
                    v140 = v116;
                    do
                    {
                      v120 = v118;
                      v121 = COERCE_DOUBLE(__PAIR64__(LODWORD(v119), LODWORD(v140)));
                      LODWORD(v119) = -1.0;
                      [PTEffectUtil screenSpaceToCameraSpace:v121 zValue:v119 inverseProjection:*self->_anon_b0, *&self->_anon_b0[16], *&self->_anon_b0[32], *&self->_anon_b0[48]];
                      v118 = 0;
                      HIDWORD(v119) = v143.i32[1];
                      v143 = vminnm_f32(v122, v143);
                      LODWORD(v119) = 1.0;
                    }

                    while ((v120 & 1) != 0);
                    v117 = 0;
                    v116 = 1.0;
                  }

                  while ((v138 & 1) != 0);
                  v123 = _PTLogSystem();
                  if (os_log_type_enabled(v123, OS_LOG_TYPE_INFO))
                  {
                    *buf = 134218240;
                    *&buf[4] = v143.f32[0];
                    v162 = 2048;
                    v163 = v143.f32[1];
                    _os_log_impl(&dword_2243FB000, v123, OS_LOG_TYPE_INFO, "boundsMin %f %f ", buf, 0x16u);
                  }

                  v102 = MEMORY[0x277CBEA90];
                  v103 = &v143;
                  v104 = 8;
                  goto LABEL_101;
                }
              }
            }

LABEL_104:

            ++v84;
          }

          while (v84 != v82);
          v124 = [v80 countByEnumeratingWithState:&v148 objects:v166 count:16];
          v82 = v124;
          if (!v124)
          {
LABEL_150:

            v78 = v135;
            j = v136;
            break;
          }
        }
      }
    }

    v134 = [obj countByEnumeratingWithState:&v152 objects:v167 count:16];
  }

  while (v134);
LABEL_153:

  [(PTVFXRenderEffectBinding *)v51 setUseBackgroundDimming:[(PTVFXRenderEffectBinding *)v51 useBackgroundDimming]];
  [(PTVFXRenderEffectBinding *)v51 setCreationTimeSeconds:a5];
  [(PTVFXRenderEffectBinding *)v51 setInverseCameraProjection:*self->_anon_b0, *&self->_anon_b0[16], *&self->_anon_b0[32], *&self->_anon_b0[48]];
  *&v125 = self->_emitZValue;
  [(PTVFXRenderEffectBinding *)v51 setEmitZValue:v125];

  return v51;
}

- (int)maxReactionEffectComplexity
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(NSMutableDictionary *)self->_activeReactions keyEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (!v4)
  {
    v6 = 0;
    goto LABEL_19;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v14;
  do
  {
    v8 = 0;
    do
    {
      if (*v14 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v9 = [(NSMutableDictionary *)self->_activeReactions objectForKeyedSubscript:*(*(&v13 + 1) + 8 * v8)];
      v10 = [v9 effectType];
      if (v10 > 7)
      {
        goto LABEL_14;
      }

      if (((1 << v10) & 0xB1) != 0)
      {
        v6 = 100;
        goto LABEL_9;
      }

      if (v10 == 3)
      {
        if (v6 <= 50)
        {
          v6 = 50;
        }
      }

      else
      {
LABEL_14:
        if (v6 <= 25)
        {
          v6 = 25;
        }
      }

LABEL_9:

      ++v8;
    }

    while (v5 != v8);
    v11 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    v5 = v11;
  }

  while (v11);
LABEL_19:

  return v6;
}

- (void)removeAllActiveReactions
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NSMutableDictionary *)self->_effectBindings allKeys];
  v4 = [v3 copy];

  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(PTVFXRenderEffect *)self removeEffectBindingWithKey:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (BOOL)updateWithRenderRequest:(id)a3 lastFrameTime:(double)a4
{
  v129 = *MEMORY[0x277D85DE8];
  v6 = a3;
  [v6 frameTimeSeconds];
  v8 = v7;
  v9 = [v6 presenterOverlayMode] == 3 || objc_msgSend(v6, "presenterOverlayMode") == 4;
  v95 = v9;
  v10 = [(PTVFXResources *)self->_vfxResources reactionTemplates];
  v11 = [v10 count];

  v102 = v6;
  if ([(NSMutableDictionary *)self->_activeReactions count])
  {
    v12 = 0;
  }

  else
  {
    v13 = [v6 reactions];
    v12 = [v13 count] == 0;
  }

  v14 = 0;
  if (!v11 || v12)
  {
    goto LABEL_97;
  }

  v15 = v102;
  [v102 inReactionColorSize];
  if (v16 != self->_colorSize.width || ([v102 inReactionColorSize], v17 != self->_colorSize.height))
  {
    [v102 inReactionColorSize];
    if (v18 != 0.0)
    {
      [v102 inReactionColorSize];
      if (v19 != 0.0)
      {
        [v102 inReactionColorSize];
        v21 = v20;
        [v102 inReactionColorSize];
        self->_colorSize.width = v21;
        self->_colorSize.height = v22;
        v15 = v102;
        self->_colorSize.depth = 0;
      }
    }
  }

  width = self->_colorSize.width;
  [v15 outColorROI];
  v25 = v15;
  v26 = (v24 * width);
  height = self->_colorSize.height;
  [v25 outColorROI];
  v29 = (v28 * height);
  if (self->_colorSizeROI.width == v26 && self->_colorSizeROI.height == v29)
  {
    v30 = 0;
  }

  else
  {
    self->_colorSizeROI.width = v26;
    self->_colorSizeROI.height = v29;
    v30 = 1;
    self->_colorSizeROI.depth = 1;
    self->_aspectRatio = [PTEffectUtil aspectRatio:v26, v29];
  }

  v31 = v102;
  if (v102)
  {
    [v102 transform];
  }

  else
  {
    memset(v123, 0, sizeof(v123));
  }

  v32 = [PTUtil getRotationDegreesFromAffineTransform:v123];
  if (v32 == self->_cameraRotationDegrees)
  {
    if (!v30)
    {
      goto LABEL_26;
    }
  }

  else
  {
    self->_cameraRotationDegrees = v32;
  }

  [(PTVFXRenderEffect *)self updateCameraProjection];
LABEL_26:
  v33 = v8 - a4;
  v34 = v33 > 0.25 && !self->_simulationWasSkippedForPreviousFrame;
  v94 = v34;
  kdebug_trace();
  v35 = objc_alloc(MEMORY[0x277CBEB18]);
  v36 = [(NSMutableDictionary *)self->_effectBindings allKeys];
  v98 = [v35 initWithArray:v36];

  self->_emitNewReaction = 0;
  self->_dimmingFactor = 0.0;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  obj = [v102 reactions];
  v101 = [obj countByEnumeratingWithState:&v119 objects:v128 count:16];
  if (v101)
  {
    v97 = 0;
    v99 = 0;
    v100 = *v120;
    do
    {
      for (i = 0; i != v101; ++i)
      {
        if (*v120 != v100)
        {
          objc_enumerationMutation(obj);
        }

        v38 = *(*(&v119 + 1) + 8 * i);
        v39 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v38, "triggerID")}];
        v115 = 0u;
        v116 = 0u;
        v117 = 0u;
        v118 = 0u;
        v40 = [(NSMutableDictionary *)self->_effectBindings allValues];
        v41 = [v40 countByEnumeratingWithState:&v115 objects:v127 count:16];
        if (v41)
        {
          v42 = *v116;
          while (2)
          {
            for (j = 0; j != v41; j = j + 1)
            {
              if (*v116 != v42)
              {
                objc_enumerationMutation(v40);
              }

              v44 = *(*(&v115 + 1) + 8 * j);
              v45 = [v44 effectType];
              if (v45 == [v38 effectType])
              {
                v41 = v44;
                goto LABEL_44;
              }
            }

            v41 = [v40 countByEnumeratingWithState:&v115 objects:v127 count:16];
            if (v41)
            {
              continue;
            }

            break;
          }

LABEL_44:
          v31 = v102;
        }

        [v38 startTimeSeconds];
        v47 = v46;
        [v31 frameTimeSeconds];
        if (!v41 && v47 != v48)
        {
          if (([v38 uiTriggeredReaction] & 1) == 0)
          {
            goto LABEL_71;
          }

LABEL_50:
          v113 = 0u;
          v114 = 0u;
          v111 = 0u;
          v112 = 0u;
          v49 = [(NSMutableDictionary *)self->_effectBindings allValues];
          v50 = [v49 countByEnumeratingWithState:&v111 objects:v126 count:16];
          if (v50)
          {
            v51 = v50;
            v52 = *v112;
            do
            {
              for (k = 0; k != v51; ++k)
              {
                if (*v112 != v52)
                {
                  objc_enumerationMutation(v49);
                }

                [*(*(&v111 + 1) + 8 * k) forceFadeOut:v8];
              }

              v51 = [v49 countByEnumeratingWithState:&v111 objects:v126 count:16];
            }

            while (v51);
          }

          ++v99;
          v54 = [v38 effectType];
          v31 = v102;
          v55 = [(PTVFXRenderEffect *)self addNewEffectFromEvent:v38 renderRequest:v102 time:v95 presenterOverlaySmall:v8];
          v41 = v55;
          v57 = v54 << 32 != 0x100000000 && v54 << 32 != 0x200000000 && v95;
          [v55 setUseCircularGradient:v57];
          [(NSMutableDictionary *)self->_effectBindings setObject:v41 forKeyedSubscript:v39];
          self->_emitNewReaction |= v41 != 0;
          goto LABEL_64;
        }

        if (!v41)
        {
          goto LABEL_50;
        }

LABEL_64:
        [v31 inReactionVideoRect];
        [v41 updateWithEvent:v38 renderRequest:v31 videoRect:? time:?];
        if ([v41 active])
        {
          ++v97;
        }

        else
        {
          v58 = [v41 rootNode];

          if (v58)
          {
            v59 = [v41 rootNode];
            [v59 removeFromParentNode];

            [v41 setRootNode:0];
            v60 = [v41 rootAssetNode];
            [v60 removeFromParent];

            [v41 setRootAssetNode:0];
            [(NSMutableDictionary *)self->_activeReactions removeObjectForKey:v39];
          }
        }

        [v98 removeObject:v39];
        dimmingFactor = self->_dimmingFactor;
        [v41 dimmingFactor];
        if (dimmingFactor >= v62)
        {
          v62 = dimmingFactor;
        }

        self->_dimmingFactor = v62;

LABEL_71:
      }

      v101 = [obj countByEnumeratingWithState:&v119 objects:v128 count:16];
    }

    while (v101);
  }

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v63 = [(NSMutableDictionary *)self->_effectBindings allValues];
  v64 = [v63 countByEnumeratingWithState:&v107 objects:v125 count:16];
  if (v64)
  {
    v66 = v64;
    v67 = *v108;
    do
    {
      for (m = 0; m != v66; ++m)
      {
        if (*v108 != v67)
        {
          objc_enumerationMutation(v63);
        }

        *&v65 = self->_dimmingFactor;
        [*(*(&v107 + 1) + 8 * m) updateBackgroundDimming:v65];
      }

      v66 = [v63 countByEnumeratingWithState:&v107 objects:v125 count:16];
    }

    while (v66);
  }

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v69 = [v98 copy];
  v70 = [v69 countByEnumeratingWithState:&v103 objects:v124 count:16];
  if (v70)
  {
    v71 = 0;
    v72 = *v104;
    do
    {
      for (n = 0; n != v70; ++n)
      {
        if (*v104 != v72)
        {
          objc_enumerationMutation(v69);
        }

        v74 = *(*(&v103 + 1) + 8 * n);
        v75 = [(NSMutableDictionary *)self->_effectBindings objectForKey:v74];
        [v102 inReactionVideoRect];
        [v75 updateWithEvent:0 renderRequest:v102 videoRect:? time:?];
        v76 = self->_dimmingFactor;
        [v75 dimmingFactor];
        if (v76 >= v77)
        {
          v77 = v76;
        }

        self->_dimmingFactor = v77;
        if (([v75 active] & 1) == 0)
        {
          [(PTVFXRenderEffect *)self removeEffectBindingWithKey:v74];
          ++v71;
        }
      }

      v70 = [v69 countByEnumeratingWithState:&v103 objects:v124 count:16];
    }

    while (v70);
  }

  if (v94)
  {
    v79 = _PTLogSystem();
    if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
    {
      [(PTVFXRenderEffect *)v79 updateWithRenderRequest:v80 lastFrameTime:v81, v82, v83, v84, v85, v86];
    }

    v87 = 1;
  }

  else
  {
    Helper_x8__OBJC_CLASS___VFXTransaction = gotLoadHelper_x8__OBJC_CLASS___VFXTransaction(v78);
    [*(v89 + 344) flush];
    v79 = [(PTVFXResources *)self->_vfxResources vfxRenderer];
    [v79 updateAtTime:v8];
    v87 = 0;
  }

  self->_simulationWasSkippedForPreviousFrame = v87;
  v90 = self->_dimmingFactor * -0.95 + 1.0;
  *v123 = v90;
  v91 = [MEMORY[0x277CBEA90] dataWithBytes:v123 length:4];
  v92 = [(PTVFXResources *)self->_vfxResources lightBinding];
  [PTVFXRenderEffectBinding setRawValue:v91 onBinding:v92];

  kdebug_trace();
  v14 = [(NSMutableDictionary *)self->_activeReactions count]!= 0;

LABEL_97:
  return v14;
}

- (int)render:(id)a3 effectRGBA:(id)a4 effectDepth:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v12 = v10;
  if (v9 && v10)
  {
    gotLoadHelper_x8__OBJC_CLASS___VFXRenderOptions(v11);
    v14 = objc_alloc_init(*(v13 + 304));
    [v14 setCommandBuffer:v8];
    [v14 setDepthPixelFormat:self->depthOutputPixelFormat];
    objc_storeStrong(&self->_colorTexture, a4);
    objc_storeStrong(&self->_depthTexture, a5);
    v15 = [(PTVFXResources *)self->_vfxResources vfxRenderer];
    [v15 renderWithTextureAttachmentProvider:self options:v14];

    colorTexture = self->_colorTexture;
    self->_colorTexture = 0;

    depthTexture = self->_depthTexture;
    self->_depthTexture = 0;

    v18 = 0;
  }

  else
  {
    v19 = _PTLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [PTVFXRenderEffect render:v19 effectRGBA:v20 effectDepth:v21];
    }

    v18 = -10;
  }

  return v18;
}

- (VFXTextureAttachmentDescriptor)finalColorDescriptor
{
  [(VFXTextureAttachmentDescriptor *)self->_colorAttachmentDescriptor setWidth:[(MTLTexture *)self->_colorTexture width]];
  [(VFXTextureAttachmentDescriptor *)self->_colorAttachmentDescriptor setHeight:[(MTLTexture *)self->_colorTexture height]];
  [(VFXTextureAttachmentDescriptor *)self->_colorAttachmentDescriptor setPixelFormat:[(MTLTexture *)self->_colorTexture pixelFormat]];
  [(VFXTextureAttachmentDescriptor *)self->_colorAttachmentDescriptor setArrayLength:[(MTLTexture *)self->_colorTexture arrayLength]];
  colorAttachmentDescriptor = self->_colorAttachmentDescriptor;

  return colorAttachmentDescriptor;
}

- (unint64_t)loadActionForAttachment:(id)a3
{
  v3 = a3;
  Helper_x8__VFXRenderGraphFinalColorAttachment = gotLoadHelper_x8__VFXRenderGraphFinalColorAttachment(v4);
  if ([v7 isEqualToString:{**(v6 + 376), Helper_x8__VFXRenderGraphFinalColorAttachment}])
  {
    v9 = 1;
  }

  else
  {
    Helper_x8__VFXRenderGraphMainDepthAttachment = gotLoadHelper_x8__VFXRenderGraphMainDepthAttachment(v8);
    v9 = [v3 isEqualToString:{**(v11 + 384), Helper_x8__VFXRenderGraphMainDepthAttachment}];
  }

  return v9;
}

- (id)textureForAttachment:(id)a3 withDescriptor:(id)a4
{
  v5 = a3;
  Helper_x8__VFXRenderGraphFinalColorAttachment = gotLoadHelper_x8__VFXRenderGraphFinalColorAttachment(v6);
  if ([v9 isEqualToString:{**(v8 + 376), Helper_x8__VFXRenderGraphFinalColorAttachment}])
  {
    v11 = 136;
LABEL_5:
    v14 = *(&self->super.isa + v11);
    goto LABEL_7;
  }

  Helper_x8__VFXRenderGraphMainDepthAttachment = gotLoadHelper_x8__VFXRenderGraphMainDepthAttachment(v10);
  if ([v5 isEqualToString:{**(v13 + 384), Helper_x8__VFXRenderGraphMainDepthAttachment}])
  {
    v11 = 144;
    goto LABEL_5;
  }

  v14 = 0;
LABEL_7:

  return v14;
}

- (int)renderWithBackgroundDimming:(id)a3 effectRGBA:(id)a4 inCenteredDisparity:(id)a5 inSegmentation:(id)a6 effectDepth:(id)a7 disparityFiltered:(id)a8 focusDisparityModifiers:(id)a9 renderRequest:(id)a10 debugType:(int64_t)a11
{
  v91 = *MEMORY[0x277D85DE8];
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v83 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = [v23 outColorBuffer];
  v84 = [v23 inBilbyAlphaMaskTexture];
  [v23 inReactionVideoRect];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  [v23 outColorROI];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  if ([(PTVFXRenderEffect *)self computeSoftAlphaMask])
  {
    softAlphaMask = self->_softAlphaMask;
    if (v20)
    {
      [(PTVFXSoftAlphaMask *)softAlphaMask updateSoftAlphaMask:v17 inSegmentation:v20 effectRenderRequest:v23];
    }

    else
    {
      [(PTVFXSoftAlphaMask *)softAlphaMask updateSoftAlphaMask:v17 inDisparity:v21 focusDisparityModifiers:v22 effectRenderRequest:v23];
    }
  }

  v81 = v22;
  v82 = v21;
  v42 = [(PTMetalContext *)self->_metalContext device];
  v43 = [PTTexture createFromPixelbuffer:v24 device:v42 read:1 write:1];

  if (v84)
  {
    self->_dimmingFactor = 0.0;
    v44 = 0.0;
  }

  else
  {
    *&v44 = self->_dimmingFactor;
  }

  v45 = [(PTEffectReactionBackgroundDimming *)self->_reactionBackground backgroundDimAndConvertRGBLinearFromPTTexture:v17 inPTTexture:v43 inCenteredDisparity:v19 inSegmentation:v20 outRGBA:v18 dimmingFactor:v44 disparityRemapping:v26 outColorROI:v28, v30, v32, *&v34, *&v36, *&v38, *&v40];
  v46 = [(PTVFXRenderEffect *)self render:v17 effectRGBA:v18 effectDepth:v83];
  v47 = [v43 isRGB];
  v79 = v46;
  v80 = v45;
  if (v84 && v47)
  {
    v76 = v20;
    v77 = v19;
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v48 = [(NSMutableDictionary *)self->_effectBindings allValues];
    v49 = [v48 countByEnumeratingWithState:&v86 objects:v90 count:16];
    if (v49)
    {
      v50 = 0;
      v51 = *v87;
      do
      {
        for (i = 0; i != v49; ++i)
        {
          if (*v87 != v51)
          {
            objc_enumerationMutation(v48);
          }

          v50 |= [*(*(&v86 + 1) + 8 * i) useCircularGradient];
        }

        v49 = [v48 countByEnumeratingWithState:&v86 objects:v90 count:16];
      }

      while (v49);

      if (v50)
      {
        v49 = v84;
      }

      else
      {
        v49 = 0;
      }
    }

    else
    {
    }

    v72 = v43;
    v73 = [v72 texRGBA];
    v74 = [v72 transferFunction];

    v71 = [(PTVFXRenderEffect *)self convertRGB:v17 inRGBA:v18 inAlphaMask:v49 outRGBA:v73 toLinear:0 transferFunction:v74];
    v53 = v76;
    v19 = v77;
  }

  else
  {
    v53 = v20;
    LOWORD(v85) = [v43 width];
    HIWORD(v85) = [v43 height];
    [PTEffectUtil computeRectInPixelCoordinates:v85 pixelBufferSize:131074 alignment:v34, v36, v38, v40];
    v78 = v54;
    if ([v18 width] != WORD2(v54))
    {
      v55 = _PTLogSystem();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        [PTVFXRenderEffect renderWithBackgroundDimming:v55 effectRGBA:v56 inCenteredDisparity:v57 inSegmentation:v58 effectDepth:v59 disparityFiltered:v60 focusDisparityModifiers:v61 renderRequest:v62 debugType:?];
      }
    }

    if ([v18 height] != HIWORD(v78))
    {
      v63 = _PTLogSystem();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        [PTVFXRenderEffect renderWithBackgroundDimming:v63 effectRGBA:v64 inCenteredDisparity:v65 inSegmentation:v66 effectDepth:v67 disparityFiltered:v68 focusDisparityModifiers:v69 renderRequest:v70 debugType:?];
      }
    }

    v71 = [(PTColorConversion *)self->_colorConversion convertRGBLinearToPTTexture:v17 inRGBA:v18 outPTTexture:v43 outRect:v78];
  }

  return v79 | v80 | v71;
}

- (int)convertRGB:(id)a3 inRGBA:(id)a4 inAlphaMask:(id)a5 outRGBA:(id)a6 toLinear:(BOOL)a7 transferFunction:(id)a8
{
  v9 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [PTColorConversion getTransferFunction:a8 toLinear:v9];
  v19 = [[PTImageblockConfig alloc] initWithTexture:v14];
  v20 = [v17 computeCommandEncoder];

  if (!v20)
  {
    v21 = _PTLogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v21 disparityApplyPostModifier:v22 inDisparity:v23 outDisparity:v24 postModifier:v25, v26, v27, v28];
    }
  }

  [v20 setComputePipelineState:self->_convertRGBAlpha[v18]];
  [v20 setImageblockWidth:-[PTImageblockConfig imageblockSize](v19 height:{"imageblockSize"), -[PTImageblockConfig imageblockSize](v19, "imageblockSize")}];
  [v20 setTexture:v16 atIndex:0];

  [v20 setTexture:v15 atIndex:1];
  [v20 setTexture:v14 atIndex:2];
  if (v19)
  {
    [(PTImageblockConfig *)v19 threads];
    [(PTImageblockConfig *)v19 threadsPerGroup];
  }

  else
  {
    memset(v31, 0, sizeof(v31));
    memset(v30, 0, sizeof(v30));
  }

  [v20 dispatchThreads:v31 threadsPerThreadgroup:v30];
  [v20 endEncoding];

  return 0;
}

+ (uint64_t)transformVideoPositionToCropCoordinates:(uint64_t)a3 effectRenderRequest:(uint64_t)a4 flipYAxis:(char)a5
{
  if (a5)
  {
    *(&a2 + 1) = 1.0 - *(&a2 + 1);
  }

  return [a1 transformVideoRectToCropCoordinates:a2 effectRenderRequest:?];
}

+ (uint64_t)transformVideoRectToCropCoordinates:(uint64_t)a3 effectRenderRequest:(void *)a4
{
  [a4 reactionsCombinedCropRect];

  return [PTEffectUtil transformRect:a1 intoCropCoordinates:v4];
}

- (void)addNewEffectFromEvent:(NSObject *)a3 renderRequest:time:presenterOverlaySmall:.cold.2(uint8_t *a1, _BYTE *a2, NSObject *a3)
{
  *a1 = 0;
  *a2 = 0;
  OUTLINED_FUNCTION_3_0(&dword_2243FB000, a3, a3, "Already bound", a1);
}

- (void)addNewEffectFromEvent:(uint64_t)a1 renderRequest:(void *)a2 time:presenterOverlaySmall:.cold.3(uint64_t a1, void *a2)
{
  v4 = OUTLINED_FUNCTION_2_0(a1, a2);
  *v3 = 134217984;
  *v2 = v4;
  OUTLINED_FUNCTION_1_0(&dword_2243FB000, v5, v6, "Unexpected length of backgroundDimming: %lu");
}

- (void)addNewEffectFromEvent:(NSObject *)a3 renderRequest:time:presenterOverlaySmall:.cold.4(uint8_t *a1, _BYTE *a2, NSObject *a3)
{
  *a1 = 0;
  *a2 = 0;
  OUTLINED_FUNCTION_3_0(&dword_2243FB000, a3, a3, "Multiple duration bindings found", a1);
}

- (void)addNewEffectFromEvent:(uint64_t)a1 renderRequest:(void *)a2 time:presenterOverlaySmall:.cold.5(uint64_t a1, void *a2)
{
  v4 = OUTLINED_FUNCTION_2_0(a1, a2);
  *v3 = 134217984;
  *v2 = v4;
  OUTLINED_FUNCTION_1_0(&dword_2243FB000, v5, v6, "Unexpected length of duration: %lu");
}

@end