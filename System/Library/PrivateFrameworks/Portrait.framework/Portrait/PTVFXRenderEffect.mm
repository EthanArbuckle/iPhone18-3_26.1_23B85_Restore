@interface PTVFXRenderEffect
+ (uint64_t)transformVideoPositionToCropCoordinates:(uint64_t)coordinates effectRenderRequest:(uint64_t)request flipYAxis:(char)axis;
+ (uint64_t)transformVideoRectToCropCoordinates:(uint64_t)coordinates effectRenderRequest:(void *)request;
- (BOOL)computeSoftAlphaMask;
- (BOOL)updateWithRenderRequest:(id)request lastFrameTime:(double)time;
- (PTVFXRenderEffect)initWithMetalContext:(id)context colorSize:(id *)size colorConversion:(id)conversion prewarmOnly:(BOOL)only humanDetections:(id)detections sharedResources:(id)resources asyncInitQueue:(id)queue;
- (VFXTextureAttachmentDescriptor)finalColorDescriptor;
- (id)addNewEffectFromEvent:(id)event renderRequest:(id)request time:(double)time presenterOverlaySmall:(BOOL)small;
- (id)textureForAttachment:(id)attachment withDescriptor:(id)descriptor;
- (int)convertRGB:(id)b inRGBA:(id)a inAlphaMask:(id)mask outRGBA:(id)bA toLinear:(BOOL)linear transferFunction:(id)function;
- (int)initVFX:(BOOL)x sharedResources:(id)resources asyncInitQueue:(id)queue;
- (int)maxReactionEffectComplexity;
- (int)render:(id)render effectRGBA:(id)a effectDepth:(id)depth;
- (int)renderWithBackgroundDimming:(id)dimming effectRGBA:(id)a inCenteredDisparity:(id)disparity inSegmentation:(id)segmentation effectDepth:(id)depth disparityFiltered:(id)filtered focusDisparityModifiers:(id)modifiers renderRequest:(id)self0 debugType:(int64_t)self1;
- (unint64_t)loadActionForAttachment:(id)attachment;
- (void)dealloc;
- (void)removeAllActiveReactions;
- (void)removeEffectBindingWithKey:(id)key;
- (void)updateCameraProjection;
@end

@implementation PTVFXRenderEffect

- (PTVFXRenderEffect)initWithMetalContext:(id)context colorSize:(id *)size colorConversion:(id)conversion prewarmOnly:(BOOL)only humanDetections:(id)detections sharedResources:(id)resources asyncInitQueue:(id)queue
{
  contextCopy = context;
  conversionCopy = conversion;
  detectionsCopy = detections;
  resourcesCopy = resources;
  queueCopy = queue;
  v58.receiver = self;
  v58.super_class = PTVFXRenderEffect;
  v20 = [(PTVFXRenderEffect *)&v58 init];
  if (v20)
  {
    kdebug_trace();
    objc_storeStrong(v20 + 1, context);
    objc_storeStrong(v20 + 2, conversion);
    v21 = *&size->var0;
    *(v20 + 12) = size->var2;
    *(v20 + 5) = v21;
    v22 = *&size->var0;
    *(v20 + 15) = size->var2;
    *(v20 + 104) = v22;
    *(v20 + 43) = 81;
    *(v20 + 44) = 260;
    v20[68] = 0;
    v23 = [PTVFXSoftAlphaMask alloc];
    v24 = *(v20 + 1);
    v56 = *&size->var0;
    var2 = size->var2;
    v25 = [(PTVFXSoftAlphaMask *)v23 initWithMetalContext:v24 colorSize:&v56];
    v26 = *(v20 + 6);
    *(v20 + 6) = v25;

    *(v20 + 20) = [PTEffectUtil aspectRatio:size->var0, size->var1];
    objc_storeStrong(v20 + 4, detections);
    *(v20 + 45) = 0x461C40003DCCCCCDLL;
    v20[336] = 1;
    v20[244] = 0;
    v27 = [[PTEffectReactionBackgroundDimming alloc] initWithMetalContext:contextCopy];
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
        v33 = [contextCopy computePipelineStateFor:@"convertRGBAlpha" withConstants:v31];
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
      if (only)
      {
        kdebug_trace();
      }

      else
      {
        v53 = [v20 initVFX:0 sharedResources:resourcesCopy asyncInitQueue:queueCopy];
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

    v37 = detectionsCopy;
  }

  else
  {
    v36 = 0;
    v37 = detectionsCopy;
  }

  return v36;
}

- (void)dealloc
{
  [(PTVFXResources *)self->_vfxResources setInitializationCancelled:1];
  device = [(PTMetalContext *)self->_metalContext device];
  purgeMetalDevice(device);
  v4 = dispatch_time(0, 2000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__PTVFXRenderEffect_dealloc__block_invoke;
  block[3] = &unk_278522E90;
  v8 = device;
  v5 = device;
  dispatch_after(v4, MEMORY[0x277D85CD0], block);

  v6.receiver = self;
  v6.super_class = PTVFXRenderEffect;
  [(PTVFXRenderEffect *)&v6 dealloc];
}

- (int)initVFX:(BOOL)x sharedResources:(id)resources asyncInitQueue:(id)queue
{
  resourcesCopy = resources;
  queueCopy = queue;
  gotLoadHelper_x8__OBJC_CLASS___VFXTextureAttachmentDescriptor(v10);
  v12 = objc_alloc_init(*(v11 + 320));
  colorAttachmentDescriptor = self->_colorAttachmentDescriptor;
  self->_colorAttachmentDescriptor = v12;

  vfxResources = [resourcesCopy vfxResources];
  vfxResources = self->_vfxResources;
  self->_vfxResources = vfxResources;

  if (!self->_vfxResources)
  {
    v16 = objc_opt_new();
    v17 = self->_vfxResources;
    self->_vfxResources = v16;

    [resourcesCopy setVfxResources:self->_vfxResources];
    if (!x)
    {
      [(PTVFXResources *)self->_vfxResources asyncVFXInit:queueCopy metalContext:self->_metalContext];
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

- (void)removeEffectBindingWithKey:(id)key
{
  effectBindings = self->_effectBindings;
  keyCopy = key;
  v10 = [(NSMutableDictionary *)effectBindings objectForKey:keyCopy];
  rootNode = [v10 rootNode];

  if (rootNode)
  {
    rootNode2 = [v10 rootNode];
    [rootNode2 removeFromParentNode];

    [v10 setRootNode:0];
  }

  rootAssetNode = [v10 rootAssetNode];

  if (rootAssetNode)
  {
    rootAssetNode2 = [v10 rootAssetNode];
    [rootAssetNode2 removeFromParent];

    [v10 setRootAssetNode:0];
  }

  [(NSMutableDictionary *)self->_effectBindings removeObjectForKey:keyCopy];
  [(NSMutableDictionary *)self->_activeReactions removeObjectForKey:keyCopy];
}

- (BOOL)computeSoftAlphaMask
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allValues = [(NSMutableDictionary *)self->_effectBindings allValues];
  v4 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(allValues);
        }

        if (-[PTVFXRenderEffect useSoftAlphaMask:](self, "useSoftAlphaMask:", [*(*(&v10 + 1) + 8 * i) effectType]))
        {
          v8 = 1;
          goto LABEL_11;
        }
      }

      v5 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (id)addNewEffectFromEvent:(id)event renderRequest:(id)request time:(double)time presenterOverlaySmall:(BOOL)small
{
  v169 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  requestCopy = request;
  smallCopy = small;
  v11 = objc_opt_new();
  [v11 setStartTime:time];
  effectType = [eventCopy effectType];
  reactionTemplates = [(PTVFXResources *)self->_vfxResources reactionTemplates];
  v14 = effectType % [reactionTemplates count];

  [v11 setEffectType:v14];
  [v11 setUiTriggeredReaction:{objc_msgSend(eventCopy, "uiTriggeredReaction")}];
  activeReactions = self->_activeReactions;
  v137 = eventCopy;
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(eventCopy, "triggerID")}];
  v128 = v11;
  [(NSMutableDictionary *)activeReactions setObject:v11 forKeyedSubscript:v16];

  v17 = [[PTVFXRenderEffectBinding alloc] initWithHumanDetections:self->_humanDetections];
  gotLoadHelper_x8__OBJC_CLASS___VFXNode(v18);
  v20 = objc_alloc_init(*(v19 + 296));
  [(PTVFXRenderEffectBinding *)v17 setRootNode:v20];

  gotLoadHelper_x8__OBJC_CLASS___VFXAssetNode(v21);
  v23 = objc_alloc_init(*(v22 + 280));
  [(PTVFXRenderEffectBinding *)v17 setRootAssetNode:v23];

  world = [(PTVFXResources *)self->_vfxResources world];
  rootNode = [world rootNode];
  rootNode2 = [(PTVFXRenderEffectBinding *)v17 rootNode];
  [rootNode addChildNode:rootNode2];

  world2 = [(PTVFXResources *)self->_vfxResources world];
  assetRegistry = [world2 assetRegistry];
  rootNode3 = [assetRegistry rootNode];
  rootAssetNode = [(PTVFXRenderEffectBinding *)v17 rootAssetNode];
  [rootNode3 addChildNode:rootAssetNode];

  reactionTemplates2 = [(PTVFXResources *)self->_vfxResources reactionTemplates];
  v141 = v14;
  v32 = [reactionTemplates2 objectAtIndexedSubscript:v14];
  v33 = [v32 copy];

  world3 = [(PTVFXResources *)self->_vfxResources world];
  rootNode4 = [(PTVFXRenderEffectBinding *)v17 rootNode];
  rootAssetNode2 = [(PTVFXRenderEffectBinding *)v17 rootAssetNode];
  v127 = v33;
  [world3 mergeWorld:v33 parentNode:rootNode4 parentAssetNode:rootAssetNode2];

  v158 = 0u;
  v159 = 0u;
  v156 = 0u;
  v157 = 0u;
  v142 = v17;
  rootAssetNode3 = [(PTVFXRenderEffectBinding *)v17 rootAssetNode];
  childNodes = [rootAssetNode3 childNodes];

  v39 = [childNodes countByEnumeratingWithState:&v156 objects:v168 count:16];
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
          objc_enumerationMutation(childNodes);
        }

        v44 = *(*(&v156 + 1) + 8 * i);
        asset = [v44 asset];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          asset2 = [v44 asset];
          clientIdentifier = [asset2 clientIdentifier];
          v49 = [clientIdentifier isEqualToString:@"texAlpha"];

          if (v49)
          {
            v50 = [(PTVFXSoftAlphaMask *)self->_softAlphaMask lazyInstantiateAlphaMaskForRenderRequest:requestCopy];
            [asset2 setTexture:v50];
          }
        }
      }

      v41 = [childNodes countByEnumeratingWithState:&v156 objects:v168 count:16];
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
  rootNode5 = [(PTVFXRenderEffectBinding *)v142 rootNode];
  childNodes2 = [rootNode5 childNodes];

  obj = childNodes2;
  v134 = [childNodes2 countByEnumeratingWithState:&v152 objects:v167 count:16];
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
      behaviorGraph = [v77 behaviorGraph];
      if (behaviorGraph)
      {
        v136 = j;
        name = [v77 name];
        v148 = 0u;
        v149 = 0u;
        v150 = 0u;
        v151 = 0u;
        v135 = behaviorGraph;
        bindings = [behaviorGraph bindings];
        v81 = [bindings countByEnumeratingWithState:&v148 objects:v166 count:16];
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
              objc_enumerationMutation(bindings);
            }

            v85 = *(*(&v148 + 1) + 8 * v84);
            name2 = [v85 name];
            if ([name2 isEqualToString:@"position"] && objc_msgSend(name, "isEqualToString:", @"Emitter"))
            {
              if (v141 == 6)
              {
                [(PTVFXRenderEffectBinding *)v51 setPositionBinding:v85];
              }
            }

            else
            {
              if ([name2 isEqualToString:@"headPosition"])
              {
                [(PTVFXRenderEffectBinding *)v51 setHeadPositionBinding:v85];
                goto LABEL_104;
              }

              if ([name2 isEqualToString:@"seed"])
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

              if ([name2 isEqualToString:@"orientation"])
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
                opacityValue2 = [v102 dataWithBytes:v103 length:v104];
                goto LABEL_102;
              }

              if ([name2 isEqualToString:@"aspectRatio"])
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

              if ([name2 isEqualToString:@"opacity"])
              {
                opacityValue = [(PTVFXRenderEffectBinding *)v51 opacityValue];

                if (!opacityValue)
                {
                  *buf = 1065353216;
                  v96 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:4];
                  [(PTVFXRenderEffectBinding *)v51 setOpacityValue:v96];

                  v97 = objc_opt_new();
                  [(PTVFXRenderEffectBinding *)v51 setOpacityBindings:v97];
                }

                opacityBindings = [(PTVFXRenderEffectBinding *)v51 opacityBindings];
                [opacityBindings addObject:v85];

                opacityValue2 = [(PTVFXRenderEffectBinding *)v51 opacityValue];
LABEL_102:
                v105 = opacityValue2;
                [PTVFXRenderEffectBinding setRawValue:opacityValue2 onBinding:v85];

LABEL_103:
                v51 = v142;
                goto LABEL_104;
              }

              if ([name2 isEqualToString:@"duration"])
              {
                durationBinding = [(PTVFXRenderEffectBinding *)v51 durationBinding];

                if (durationBinding)
                {
                  v101 = _PTLogSystem();
                  if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
                  {
                    [PTVFXRenderEffect addNewEffectFromEvent:v147 renderRequest:v101 time:? presenterOverlaySmall:?];
                  }
                }

                rawValue = [v85 rawValue];
                if ([rawValue length] == 4)
                {
                  [(PTVFXRenderEffectBinding *)v142 setDurationBinding:v85];
                }

                else
                {
                  v107 = _PTLogSystem();
                  if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
                  {
                    [PTVFXRenderEffect addNewEffectFromEvent:v165 renderRequest:rawValue time:? presenterOverlaySmall:?];
                  }
                }

                goto LABEL_80;
              }

              if ([name2 isEqualToString:@"gestureTrigger"])
              {
                v106 = [v137 uiTriggeredReaction] ^ 1;
                goto LABEL_108;
              }

              if ([name2 isEqualToString:@"backgroundDimming"])
              {
                rawValue2 = [v85 rawValue];
                backgroundDimmingBinding = [(PTVFXRenderEffectBinding *)v51 backgroundDimmingBinding];

                if (backgroundDimmingBinding)
                {
                  v109 = _PTLogSystem();
                  if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
                  {
                    [PTVFXRenderEffect addNewEffectFromEvent:v145 renderRequest:v109 time:? presenterOverlaySmall:?];
                  }

                  v51 = v142;
                }

                if ([rawValue2 length] == 4)
                {
                  [(PTVFXRenderEffectBinding *)v51 setBackgroundDimmingBinding:v85];
                }

                else
                {
                  v110 = _PTLogSystem();
                  if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
                  {
                    [PTVFXRenderEffect addNewEffectFromEvent:v164 renderRequest:rawValue2 time:? presenterOverlaySmall:?];
                  }
                }
              }

              else
              {
                if ([name2 isEqualToString:@"bilbyFloating"])
                {
                  v91 = MEMORY[0x277CBEA90];
                  v92 = &smallCopy;
                  goto LABEL_109;
                }

                if ([name2 isEqualToString:@"viewportScale"])
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
                if ([name2 isEqualToString:@"left"] && objc_msgSend(name, "isEqualToString:", @"Emitter"))
                {
                  if (v129 <= 1)
                  {
                    v106 = [v137 orientation] == 0;
                    goto LABEL_108;
                  }
                }

                else if ([name2 isEqualToString:@"up"] && objc_msgSend(name, "isEqualToString:", @"Emitter"))
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
                    rawValue = [v91 dataWithBytes:v92 length:v93];
                    [PTVFXRenderEffectBinding setRawValue:rawValue onBinding:v85];
LABEL_80:

                    v51 = v142;
                  }
                }

                else if ((![name2 isEqualToString:@"rate"] || (objc_msgSend(name, "isEqualToString:", @"Emitter") & 1) == 0) && objc_msgSend(name2, "isEqualToString:", @"boundsMin"))
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
          v124 = [bindings countByEnumeratingWithState:&v148 objects:v166 count:16];
          v82 = v124;
          if (!v124)
          {
LABEL_150:

            behaviorGraph = v135;
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
  [(PTVFXRenderEffectBinding *)v51 setCreationTimeSeconds:time];
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
  keyEnumerator = [(NSMutableDictionary *)self->_activeReactions keyEnumerator];
  v4 = [keyEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
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
        objc_enumerationMutation(keyEnumerator);
      }

      v9 = [(NSMutableDictionary *)self->_activeReactions objectForKeyedSubscript:*(*(&v13 + 1) + 8 * v8)];
      effectType = [v9 effectType];
      if (effectType > 7)
      {
        goto LABEL_14;
      }

      if (((1 << effectType) & 0xB1) != 0)
      {
        v6 = 100;
        goto LABEL_9;
      }

      if (effectType == 3)
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
    v11 = [keyEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  allKeys = [(NSMutableDictionary *)self->_effectBindings allKeys];
  v4 = [allKeys copy];

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

- (BOOL)updateWithRenderRequest:(id)request lastFrameTime:(double)time
{
  v129 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  [requestCopy frameTimeSeconds];
  v8 = v7;
  v9 = [requestCopy presenterOverlayMode] == 3 || objc_msgSend(requestCopy, "presenterOverlayMode") == 4;
  v95 = v9;
  reactionTemplates = [(PTVFXResources *)self->_vfxResources reactionTemplates];
  v11 = [reactionTemplates count];

  v102 = requestCopy;
  if ([(NSMutableDictionary *)self->_activeReactions count])
  {
    v12 = 0;
  }

  else
  {
    reactions = [requestCopy reactions];
    v12 = [reactions count] == 0;
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
  v33 = v8 - time;
  v34 = v33 > 0.25 && !self->_simulationWasSkippedForPreviousFrame;
  v94 = v34;
  kdebug_trace();
  v35 = objc_alloc(MEMORY[0x277CBEB18]);
  allKeys = [(NSMutableDictionary *)self->_effectBindings allKeys];
  v98 = [v35 initWithArray:allKeys];

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
        allValues = [(NSMutableDictionary *)self->_effectBindings allValues];
        v41 = [allValues countByEnumeratingWithState:&v115 objects:v127 count:16];
        if (v41)
        {
          v42 = *v116;
          while (2)
          {
            for (j = 0; j != v41; j = j + 1)
            {
              if (*v116 != v42)
              {
                objc_enumerationMutation(allValues);
              }

              v44 = *(*(&v115 + 1) + 8 * j);
              effectType = [v44 effectType];
              if (effectType == [v38 effectType])
              {
                v41 = v44;
                goto LABEL_44;
              }
            }

            v41 = [allValues countByEnumeratingWithState:&v115 objects:v127 count:16];
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
          allValues2 = [(NSMutableDictionary *)self->_effectBindings allValues];
          v50 = [allValues2 countByEnumeratingWithState:&v111 objects:v126 count:16];
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
                  objc_enumerationMutation(allValues2);
                }

                [*(*(&v111 + 1) + 8 * k) forceFadeOut:v8];
              }

              v51 = [allValues2 countByEnumeratingWithState:&v111 objects:v126 count:16];
            }

            while (v51);
          }

          ++v99;
          effectType2 = [v38 effectType];
          v31 = v102;
          v55 = [(PTVFXRenderEffect *)self addNewEffectFromEvent:v38 renderRequest:v102 time:v95 presenterOverlaySmall:v8];
          v41 = v55;
          v57 = effectType2 << 32 != 0x100000000 && effectType2 << 32 != 0x200000000 && v95;
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
          rootNode = [v41 rootNode];

          if (rootNode)
          {
            rootNode2 = [v41 rootNode];
            [rootNode2 removeFromParentNode];

            [v41 setRootNode:0];
            rootAssetNode = [v41 rootAssetNode];
            [rootAssetNode removeFromParent];

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
  allValues3 = [(NSMutableDictionary *)self->_effectBindings allValues];
  v64 = [allValues3 countByEnumeratingWithState:&v107 objects:v125 count:16];
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
          objc_enumerationMutation(allValues3);
        }

        *&v65 = self->_dimmingFactor;
        [*(*(&v107 + 1) + 8 * m) updateBackgroundDimming:v65];
      }

      v66 = [allValues3 countByEnumeratingWithState:&v107 objects:v125 count:16];
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
    vfxRenderer = _PTLogSystem();
    if (os_log_type_enabled(vfxRenderer, OS_LOG_TYPE_ERROR))
    {
      [(PTVFXRenderEffect *)vfxRenderer updateWithRenderRequest:v80 lastFrameTime:v81, v82, v83, v84, v85, v86];
    }

    v87 = 1;
  }

  else
  {
    Helper_x8__OBJC_CLASS___VFXTransaction = gotLoadHelper_x8__OBJC_CLASS___VFXTransaction(v78);
    [*(v89 + 344) flush];
    vfxRenderer = [(PTVFXResources *)self->_vfxResources vfxRenderer];
    [vfxRenderer updateAtTime:v8];
    v87 = 0;
  }

  self->_simulationWasSkippedForPreviousFrame = v87;
  v90 = self->_dimmingFactor * -0.95 + 1.0;
  *v123 = v90;
  v91 = [MEMORY[0x277CBEA90] dataWithBytes:v123 length:4];
  lightBinding = [(PTVFXResources *)self->_vfxResources lightBinding];
  [PTVFXRenderEffectBinding setRawValue:v91 onBinding:lightBinding];

  kdebug_trace();
  v14 = [(NSMutableDictionary *)self->_activeReactions count]!= 0;

LABEL_97:
  return v14;
}

- (int)render:(id)render effectRGBA:(id)a effectDepth:(id)depth
{
  renderCopy = render;
  aCopy = a;
  depthCopy = depth;
  v12 = depthCopy;
  if (aCopy && depthCopy)
  {
    gotLoadHelper_x8__OBJC_CLASS___VFXRenderOptions(v11);
    v14 = objc_alloc_init(*(v13 + 304));
    [v14 setCommandBuffer:renderCopy];
    [v14 setDepthPixelFormat:self->depthOutputPixelFormat];
    objc_storeStrong(&self->_colorTexture, a);
    objc_storeStrong(&self->_depthTexture, depth);
    vfxRenderer = [(PTVFXResources *)self->_vfxResources vfxRenderer];
    [vfxRenderer renderWithTextureAttachmentProvider:self options:v14];

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

- (unint64_t)loadActionForAttachment:(id)attachment
{
  attachmentCopy = attachment;
  Helper_x8__VFXRenderGraphFinalColorAttachment = gotLoadHelper_x8__VFXRenderGraphFinalColorAttachment(v4);
  if ([v7 isEqualToString:{**(v6 + 376), Helper_x8__VFXRenderGraphFinalColorAttachment}])
  {
    v9 = 1;
  }

  else
  {
    Helper_x8__VFXRenderGraphMainDepthAttachment = gotLoadHelper_x8__VFXRenderGraphMainDepthAttachment(v8);
    v9 = [attachmentCopy isEqualToString:{**(v11 + 384), Helper_x8__VFXRenderGraphMainDepthAttachment}];
  }

  return v9;
}

- (id)textureForAttachment:(id)attachment withDescriptor:(id)descriptor
{
  attachmentCopy = attachment;
  Helper_x8__VFXRenderGraphFinalColorAttachment = gotLoadHelper_x8__VFXRenderGraphFinalColorAttachment(v6);
  if ([v9 isEqualToString:{**(v8 + 376), Helper_x8__VFXRenderGraphFinalColorAttachment}])
  {
    v11 = 136;
LABEL_5:
    v14 = *(&self->super.isa + v11);
    goto LABEL_7;
  }

  Helper_x8__VFXRenderGraphMainDepthAttachment = gotLoadHelper_x8__VFXRenderGraphMainDepthAttachment(v10);
  if ([attachmentCopy isEqualToString:{**(v13 + 384), Helper_x8__VFXRenderGraphMainDepthAttachment}])
  {
    v11 = 144;
    goto LABEL_5;
  }

  v14 = 0;
LABEL_7:

  return v14;
}

- (int)renderWithBackgroundDimming:(id)dimming effectRGBA:(id)a inCenteredDisparity:(id)disparity inSegmentation:(id)segmentation effectDepth:(id)depth disparityFiltered:(id)filtered focusDisparityModifiers:(id)modifiers renderRequest:(id)self0 debugType:(int64_t)self1
{
  v91 = *MEMORY[0x277D85DE8];
  dimmingCopy = dimming;
  aCopy = a;
  disparityCopy = disparity;
  segmentationCopy = segmentation;
  depthCopy = depth;
  filteredCopy = filtered;
  modifiersCopy = modifiers;
  requestCopy = request;
  outColorBuffer = [requestCopy outColorBuffer];
  inBilbyAlphaMaskTexture = [requestCopy inBilbyAlphaMaskTexture];
  [requestCopy inReactionVideoRect];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  [requestCopy outColorROI];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  if ([(PTVFXRenderEffect *)self computeSoftAlphaMask])
  {
    softAlphaMask = self->_softAlphaMask;
    if (segmentationCopy)
    {
      [(PTVFXSoftAlphaMask *)softAlphaMask updateSoftAlphaMask:dimmingCopy inSegmentation:segmentationCopy effectRenderRequest:requestCopy];
    }

    else
    {
      [(PTVFXSoftAlphaMask *)softAlphaMask updateSoftAlphaMask:dimmingCopy inDisparity:filteredCopy focusDisparityModifiers:modifiersCopy effectRenderRequest:requestCopy];
    }
  }

  v81 = modifiersCopy;
  v82 = filteredCopy;
  device = [(PTMetalContext *)self->_metalContext device];
  v43 = [PTTexture createFromPixelbuffer:outColorBuffer device:device read:1 write:1];

  if (inBilbyAlphaMaskTexture)
  {
    self->_dimmingFactor = 0.0;
    v44 = 0.0;
  }

  else
  {
    *&v44 = self->_dimmingFactor;
  }

  v45 = [(PTEffectReactionBackgroundDimming *)self->_reactionBackground backgroundDimAndConvertRGBLinearFromPTTexture:dimmingCopy inPTTexture:v43 inCenteredDisparity:disparityCopy inSegmentation:segmentationCopy outRGBA:aCopy dimmingFactor:v44 disparityRemapping:v26 outColorROI:v28, v30, v32, *&v34, *&v36, *&v38, *&v40];
  v46 = [(PTVFXRenderEffect *)self render:dimmingCopy effectRGBA:aCopy effectDepth:depthCopy];
  isRGB = [v43 isRGB];
  v79 = v46;
  v80 = v45;
  if (inBilbyAlphaMaskTexture && isRGB)
  {
    v76 = segmentationCopy;
    v77 = disparityCopy;
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    allValues = [(NSMutableDictionary *)self->_effectBindings allValues];
    v49 = [allValues countByEnumeratingWithState:&v86 objects:v90 count:16];
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
            objc_enumerationMutation(allValues);
          }

          v50 |= [*(*(&v86 + 1) + 8 * i) useCircularGradient];
        }

        v49 = [allValues countByEnumeratingWithState:&v86 objects:v90 count:16];
      }

      while (v49);

      if (v50)
      {
        v49 = inBilbyAlphaMaskTexture;
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
    texRGBA = [v72 texRGBA];
    transferFunction = [v72 transferFunction];

    v71 = [(PTVFXRenderEffect *)self convertRGB:dimmingCopy inRGBA:aCopy inAlphaMask:v49 outRGBA:texRGBA toLinear:0 transferFunction:transferFunction];
    v53 = v76;
    disparityCopy = v77;
  }

  else
  {
    v53 = segmentationCopy;
    LOWORD(v85) = [v43 width];
    HIWORD(v85) = [v43 height];
    [PTEffectUtil computeRectInPixelCoordinates:v85 pixelBufferSize:131074 alignment:v34, v36, v38, v40];
    v78 = v54;
    if ([aCopy width] != WORD2(v54))
    {
      v55 = _PTLogSystem();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        [PTVFXRenderEffect renderWithBackgroundDimming:v55 effectRGBA:v56 inCenteredDisparity:v57 inSegmentation:v58 effectDepth:v59 disparityFiltered:v60 focusDisparityModifiers:v61 renderRequest:v62 debugType:?];
      }
    }

    if ([aCopy height] != HIWORD(v78))
    {
      v63 = _PTLogSystem();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        [PTVFXRenderEffect renderWithBackgroundDimming:v63 effectRGBA:v64 inCenteredDisparity:v65 inSegmentation:v66 effectDepth:v67 disparityFiltered:v68 focusDisparityModifiers:v69 renderRequest:v70 debugType:?];
      }
    }

    v71 = [(PTColorConversion *)self->_colorConversion convertRGBLinearToPTTexture:dimmingCopy inRGBA:aCopy outPTTexture:v43 outRect:v78];
  }

  return v79 | v80 | v71;
}

- (int)convertRGB:(id)b inRGBA:(id)a inAlphaMask:(id)mask outRGBA:(id)bA toLinear:(BOOL)linear transferFunction:(id)function
{
  linearCopy = linear;
  bACopy = bA;
  maskCopy = mask;
  aCopy = a;
  bCopy = b;
  v18 = [PTColorConversion getTransferFunction:function toLinear:linearCopy];
  v19 = [[PTImageblockConfig alloc] initWithTexture:bACopy];
  computeCommandEncoder = [bCopy computeCommandEncoder];

  if (!computeCommandEncoder)
  {
    v21 = _PTLogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v21 disparityApplyPostModifier:v22 inDisparity:v23 outDisparity:v24 postModifier:v25, v26, v27, v28];
    }
  }

  [computeCommandEncoder setComputePipelineState:self->_convertRGBAlpha[v18]];
  [computeCommandEncoder setImageblockWidth:-[PTImageblockConfig imageblockSize](v19 height:{"imageblockSize"), -[PTImageblockConfig imageblockSize](v19, "imageblockSize")}];
  [computeCommandEncoder setTexture:aCopy atIndex:0];

  [computeCommandEncoder setTexture:maskCopy atIndex:1];
  [computeCommandEncoder setTexture:bACopy atIndex:2];
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

  [computeCommandEncoder dispatchThreads:v31 threadsPerThreadgroup:v30];
  [computeCommandEncoder endEncoding];

  return 0;
}

+ (uint64_t)transformVideoPositionToCropCoordinates:(uint64_t)coordinates effectRenderRequest:(uint64_t)request flipYAxis:(char)axis
{
  if (axis)
  {
    *(&a2 + 1) = 1.0 - *(&a2 + 1);
  }

  return [self transformVideoRectToCropCoordinates:a2 effectRenderRequest:?];
}

+ (uint64_t)transformVideoRectToCropCoordinates:(uint64_t)coordinates effectRenderRequest:(void *)request
{
  [request reactionsCombinedCropRect];

  return [PTEffectUtil transformRect:self intoCropCoordinates:v4];
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