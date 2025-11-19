@interface VFXMTLRenderContext
+ (void)registerBindings;
- ($56FBFA7F90079343FE03906F902E417E)bufferForBuiltin:(unsigned __int8)a3;
- ($56FBFA7F90079343FE03906F902E417E)vfxCoreViewConstants;
- (BOOL)_executeDeformerStackOfCommand:(id *)a3 dataKind:(unsigned __int8)a4 deformerStack:(__CFXDeformerStack *)a5 metalDeformedMesh:(id *)a6 skinner:(__CFXSkinner *)a7 skinnerCalculationMode:(int)a8;
- (BOOL)_setupRenderPipelineOfCommand:(id *)a3 tessellator:(id)a4 useTessellation:(BOOL)a5;
- (BOOL)constantOffsetAndSize:(int)a3 :(id)a4 :(int64_t *)a5 :(int64_t *)a6;
- (BOOL)mapVolatileMesh:(__CFXMesh *)a3 verticesCount:(int64_t)a4;
- (CFXVFXRenderTargetInfo)renderTargetInfo;
- (MTLCommandBuffer)resourceCommandBuffer;
- (MTLCommandQueue)commandQueue;
- (MTLRenderCommandEncoder)currentRenderCommandEncoder;
- (MTLRenderPassDescriptor)currentRenderPassDescriptor;
- (RGCachedComputeCommandEncoder)resourceComputeEncoder;
- (VFXMTLBlitCommandEncoder)resourceBlitEncoder;
- (VFXMTLRenderContext)initWithEngineContext:(__CFXEngineContext *)a3 resourceManager:(id)a4 commandQueue:(id)a5;
- (VFXWorldBuffer)_nextWorldBuffer;
- (VFXWorldBuffer)updateViewConstantsWithWorld:(__CFXWorld *)a3;
- (__CFXMeshElement)createVolatileMeshElementOfType:(VFXMTLRenderContext *)self primitiveCount:(unsigned int)a2 bytesPerIndex:;
- (__n128)setScreenTransform:(__n128)a3;
- (const)constantData:(int)a3;
- (float)_zFarForSkyboxRenderingProjectionMatrix:(id *)a3 defaultZFar:(float)a4;
- (id).cxx_construct;
- (id)_finalRenderTexture;
- (id)_newMTLBufferFromPoolWithLength:(unint64_t)a3;
- (id)_setupTessellatorOfCommand:(id *)a3 deformersDidMutateMeshForCurrentFrame:(BOOL)a4 tessellationPipelineStateHash:(char *)a5;
- (id)allocateWithStagingBuffer:(id)a3 desc:(id *)a4 forceCPUBlit:(BOOL)a5;
- (id)buffer:(int)a3 :(id)a4 :(int64_t *)a5 :(int64_t *)a6;
- (id)deformedRaytraceableMeshForNode:(__CFXNode *)a3 fallbackModel:(__CFXModel *)a4;
- (id)irradianceTextureForMaterialProperty:(__CFXMaterialProperty *)a3;
- (id)makeRenderPipelineForResourceID:(unint64_t)a3;
- (id)radianceTextureForMaterialProperty:(__CFXMaterialProperty *)a3;
- (id)renderResourcesFor:(id)a3 renderPassFormat:(id *)a4;
- (id)sampler:(int)a3 :(id)a4;
- (id)texture:(int)a3 :(id)a4;
- (int64_t)preferredFramesPerSecond;
- (uint64_t)_fillProcessingContextWithCullingContext:(uint64_t)a3;
- (uint64_t)unmapVolatileMeshElement:(uint64_t)a3;
- (unint64_t)cubeArrayTypeIfSupported;
- (void)_VFXWorldRendererMainPassCustomPostProcessSupportDrawSceneBackgroundUsingEncoder:(id)a3 commandBuffer:(id)a4 renderPassDesc:(id *)a5;
- (void)_allowGPUBackgroundExecution;
- (void)_beginRenderPass:(id *)a3 renderEncoder:(void *)a4;
- (void)_bindRenderPipelineArgumentsOfCommand:(id *)a3 materialHashChanged:(BOOL)a4 modelWithShaderModifier:(__CFXModel *)a5 modelWithShaderModifierHasChanged:(BOOL)a6 nodeHasChanged:(BOOL)a7 programHasChanged:(BOOL)a8 projHasChanged:(BOOL)a9 viewHasChanged:(BOOL)a10;
- (void)_clearRenderCaches;
- (void)_clearUnusedBindingPoints;
- (void)_commitResourceCommandBufferIfNeeded;
- (void)_createResourceCommandBufferIfNeeded;
- (void)_drawFullScreenTexture:(id)a3;
- (void)_drawMeshElement:(id)a3 instanceCount:(unint64_t)a4;
- (void)_drawPBRTextures;
- (void)_drawPatchForMeshElement:(id)a3 instanceCount:(unint64_t)a4;
- (void)_drawShadowMaps;
- (void)_endResourceCommandBufferEncodingIfAny;
- (void)_executeDrawCommand:(id *)a3;
- (void)_fillFrameUniformsWithWorld:(__CFXWorld *)a3;
- (void)_fillProcessingContextWithEngineIterationContext:(id *)a3;
- (void)_fillVFXCoreRenderData;
- (void)_installBindingsOfNode:(__CFXNode *)a3 probeCacheIndex:(unsigned int *)a4;
- (void)_logLightingInformation;
- (void)_prepareMaterialTextures:(__CFXMaterial *)a3;
- (void)_recycleMTLBufferToPool:(id)a3;
- (void)_setMeshBuffers:(id)a3;
- (void)_setWorldBufferAtVertexIndex:(int64_t)a3 fragmentIndex:(int64_t)a4;
- (void)_updateProjectionMatrixForOrthographicSkyboxRenderingIfNeeded:(id *)a3;
- (void)_updateViewDependentConstants:(uint64_t)a3 world:(__n128 *)a4;
- (void)addCommandBufferCompletedHandler:(id)a3;
- (void)addCommandBufferScheduledHandler:(id)a3;
- (void)addDrawablePresentedHandler:(id)a3;
- (void)authoring_drawDeformersForNode:(__CFXNode *)a3 authoringEnvironment:(void *)a4;
- (void)authoring_drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 instanceCount:(unint64_t)a7 vertexBuffers:(const void *)a8 offsets:(const unint64_t *)a9 range:(_NSRange)a10 vertexDescriptor:(id)a11 withProgram:(__CFXProgram *)a12 uniforms:(const void *)a13 uniformsLength:(unint64_t)a14 rasterizerStates:(__CFXRasterizerStates *)a15 blendStates:(__CFXBlendStates *)a16;
- (void)authoring_drawPrimitives:(unint64_t)a3 vertexCount:(unint64_t)a4 instanceCount:(unint64_t)a5 vertexBuffers:(const void *)a6 offsets:(const unint64_t *)a7 range:(_NSRange)a8 vertexDescriptor:(id)a9 withProgram:(__CFXProgram *)a10 uniforms:(const void *)a11 uniformsLength:(unint64_t)a12 rasterizerStates:(__CFXRasterizerStates *)a13 blendStates:(__CFXBlendStates *)a14;
- (void)authoring_renderMesh:(uint64_t)a3 meshElement:(uint64_t)a4 withProgram:(uint64_t)a5 uniforms:(const void *)a6 uniformsLength:(size_t)a7 rasterizerStates:(uint64_t)a8 blendStates:(uint64_t)a9 texture:(uint64_t)a10 sampler:(uint64_t)a11 depthBias:(char)a12;
- (void)beginExternalFrameWithEncoder:(void *)a3 frameIndex:(unint64_t)a4;
- (void)beginFrame:(id)a3;
- (void)beginRenderPass:(id)a3 renderEncoder:(void *)a4;
- (void)beginRenderPass:(id)a3 renderEncoder:(void *)a4 parameters:(id)a5;
- (void)dealloc;
- (void)discardPendingCommandBufferCompletedHandlers;
- (void)discardPendingCommandBufferScheduledHandlers;
- (void)discardPendingDrawablePresentedHandlers;
- (void)drawRenderElement:(__CFXRendererElement *)a3 withOverrides:(__CFXRenderingOverride *)a4;
- (void)drawWireframeOverlayForElements:(id *)a3 range:(id)a4 store:(__CFXRendererElementStore *)a5 passInstance:(__CFXPassInstance *)a6;
- (void)endExternalFrame;
- (void)endFrameWaitingUntilCompleted:(BOOL)a3 status:(unint64_t *)a4 error:(id *)a5;
- (void)endFrameWorldSpecifics;
- (void)endRenderPass;
- (void)processRendererElements:(id *)a3 count:(unsigned int)a4 engineIterationContext:(id *)a5;
- (void)renderBackground:(__CFXMaterialProperty *)a3 engineContext:(__CFXEngineContext *)a4 passInstance:(__CFXPassInstance *)a5;
- (void)renderVideoBackground:(__CFXImageProxy *)a3 engineContext:(__CFXEngineContext *)a4 materialProperty:(__CFXMaterialProperty *)a5;
- (void)resetVolatileMeshElements;
- (void)resetVolatileMeshes;
- (void)setAttachmentProvider:(id)a3;
- (void)setCollectsCompilationErrors:(BOOL)a3;
- (void)setCurrentExternalDrawCallContext:(id)a3;
- (void)setEnableARMode:(BOOL)a3;
- (void)setForceAsyncShaderCompilation:(BOOL)a3;
- (void)setIsOpaque:(BOOL)a3;
- (void)setPreferredFramesPerSecond:(int64_t)a3;
- (void)setRasterizerStates:(__CFXRasterizerStates *)a3;
- (void)setShouldDelegateARCompositing:(BOOL)a3;
- (void)setWantsWideGamut:(BOOL)a3;
- (void)startProcessingRendererElementsWithEngineIterationContext:(id *)a3;
- (void)stopProcessingRendererElements:(BOOL)a3;
- (void)unmapVolatileMesh:(__CFXMesh *)a3 modifiedVerticesCount:(int64_t)a4;
- (void)updateFrameConstants;
- (void)updateRenderPassDescriptor:(id *)a3;
- (void)writeBytes:(const void *)a3 length:(unint64_t)a4;
@end

@implementation VFXMTLRenderContext

- (VFXMTLRenderContext)initWithEngineContext:(__CFXEngineContext *)a3 resourceManager:(id)a4 commandQueue:(id)a5
{
  v9 = sub_1AF13099C(a3);
  MTLDevice = CFXGPUDeviceGetMTLDevice(v9);
  if (!v9)
  {
    v81 = sub_1AF0D5194();
    if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE5F98();
    }

    return 0;
  }

  v14 = MTLDevice;
  if (a5)
  {
    v15 = objc_msgSend_device(a5, v11, v12, v13);
    v19 = objc_msgSend_registryID(v15, v16, v17, v18);
    if (v19 != objc_msgSend_registryID(v14, v20, v21, v22))
    {
      v82 = sub_1AF0D5194();
      if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDE5F30();
      }

      return 0;
    }
  }

  v87.receiver = self;
  v87.super_class = VFXMTLRenderContext;
  v23 = [(VFXMTLRenderContext *)&v87 init];
  if (!v23)
  {
    return v23;
  }

  v24 = a4;
  *(v23 + 14) = v24;
  v25 = sub_1AFDE323C(v24);
  *(v23 + 15) = CFRetain(v25);
  if ((sub_1AF28A1D8() & 1) == 0)
  {
    v29 = objc_msgSend_newCommandQueue(v14, v26, v27, v28);
    *(v23 + 19) = v29;
    if (v29)
    {
      objc_msgSend_setLabel_(v29, v30, @"com.apple.vfx", v31);
      goto LABEL_8;
    }

    v83 = sub_1AF0D5194();
    if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE5F64();
    }

    return 0;
  }

LABEL_8:
  if (a5)
  {
    *(v23 + 2534) = a5;
  }

  *(v23 + 57) = objc_alloc_init(RGCachedComputeCommandEncoder);
  *(v23 + 128) = MTLValidationEnabled();
  *(v23 + 6) = 1065353216;
  *(v23 + 2) = VFXMatrix4Identity;
  *(v23 + 3) = unk_1AFE48510;
  *(v23 + 4) = xmmword_1AFE48520;
  *(v23 + 5) = unk_1AFE48530;
  *(v23 + 104) = 0;
  *(v23 + 17) = a3;
  *(v23 + 33) |= 3u;
  if (j__objc_msgSend_supportsMSAADepthResolve(v14, v32, v33, v34))
  {
    *(v23 + 33) |= 4u;
  }

  if (j__objc_msgSend_supportsMSAAStencilResolve(v14, v35, v36, v37))
  {
    *(v23 + 33) |= 0x4000u;
  }

  if (j__objc_msgSend_supportsNonUniformThreadgroupSize(v14, v38, v39, v40))
  {
    *(v23 + 33) |= 0x40u;
  }

  if (sub_1AF1F3110())
  {
    *(v23 + 33) |= 8u;
  }

  if (j__objc_msgSend_supportsLayeredRendering(v14, v41, v42, v43))
  {
    *(v23 + 33) |= 0x20u;
  }

  if (sub_1AF1F311C(v14, v44, v45, v46))
  {
    *(v23 + 33) |= 0x80u;
  }

  if (sub_1AF1F32C4(v14, v47, v48, v49))
  {
    *(v23 + 33) |= 0x2000u;
  }

  if (j__objc_msgSend_supportsTessellation(v14, v50, v51, v52))
  {
    *(v23 + 33) |= 0x10u;
  }

  if (j__objc_msgSend_supportsTextureCubeArray(v14, v53, v54, v55))
  {
    *(v23 + 33) |= 0x100u;
  }

  if (j__objc_msgSend_supportsReadWriteTextureCubeArguments(v14, v56, v57, v58))
  {
    *(v23 + 33) |= 0x200u;
  }

  if (j__objc_msgSend_supportsBaseVertexInstanceDrawing(v14, v59, v60, v61))
  {
    *(v23 + 33) |= 0x400u;
  }

  if (j__objc_msgSend_supportsProgrammableBlending(v14, v62, v63, v64))
  {
    *(v23 + 33) |= 0x800u;
  }

  if (j__objc_msgSend_supportsDepthClipMode(v14, v65, v66, v67))
  {
    *(v23 + 33) |= 0x1000u;
  }

  if (j__objc_msgSend_supportsTextureSwizzle(v14, v68, v69, v70))
  {
    *(v23 + 33) |= 0x8000u;
  }

  *(v23 + 77) = dispatch_queue_create("com.apple.vfx.resourceCPUQueue", 0);
  *(v23 + 2) = malloc_type_calloc(0x358uLL, 1uLL, 0x100004048B25B04uLL);
  *(v23 + 235) = -1;
  v71 = sub_1AF131048(*(v23 + 17));
  *(v23 + 23) = dispatch_semaphore_create(v71);
  *(v23 + 63) = CFXBufferAllocatorPerFrameCreate(*(v23 + 15), @"FrameConstant", 0, v71, 0x10000);
  *(v23 + 64) = CFXBufferAllocatorPerFrameCreate(*(v23 + 15), @"Volatile", 0, v71, 0x10000);
  *(v23 + 65) = CFXTextureAllocatorPerFrameCreate(*(v23 + 15), v71);
  *(v23 + 59) = objc_alloc_init(MEMORY[0x1E695DF70]);
  *(v23 + 60) = objc_alloc_init(MEMORY[0x1E695DF70]);
  v72 = objc_alloc(MEMORY[0x1E695DF70]);
  *(v23 + 61) = objc_msgSend_initWithCapacity_(v72, v73, 16, v74);
  v75 = objc_alloc(MEMORY[0x1E695DF70]);
  *(v23 + 62) = objc_msgSend_initWithCapacity_(v75, v76, 16, v77);
  v78 = *(v23 + 15);
  v79 = sub_1AF0D839C();
  *(v23 + 66) = CFXGPUDeviceCreateSampler(v78, v79);
  *(v23 + 67) = sub_1AF1D534C(@"background_2D_vertid", @"background_2D_frag");
  *(v23 + 70) = sub_1AF1D534C(@"background_cube_vertid", @"background_cube_frag");
  *(v23 + 73) = sub_1AF1D534C(@"background_video_vertid", @"background_video_frag");
  *(v23 + 74) = sub_1AF1D534C(@"background_video_vertid", @"background_video_alpha_0_frag");
  v80 = *(v23 + 33);
  if ((v80 & 0x80) != 0)
  {
    *(v23 + 69) = sub_1AF1D534C(@"background_2D_multiple_viewports_vertid", @"background_2D_multiple_viewports_frag");
    *(v23 + 72) = sub_1AF1D534C(@"background_cube_multiple_viewports_vertid", @"background_cube_multiple_viewports_frag");
    v80 = *(v23 + 33);
  }

  if ((v80 & 0x20) != 0)
  {
    *(v23 + 68) = sub_1AF1D534C(@"background_2D_layered_vertid", @"background_2D_layered_frag");
    *(v23 + 71) = sub_1AF1D534C(@"background_cube_layered_vertid", @"background_cube_layered_frag");
  }

  memset(v86, 0, sizeof(v86));
  sub_1AF1C40BC(v86);
  *&v86[2] = 0;
  *v85 = *v86;
  *&v85[13] = *&v86[13];
  *(v23 + 75) = sub_1AF1C4354(v85);
  v86[3] = 1;
  *v85 = *v86;
  *&v85[13] = *&v86[13];
  *(v23 + 76) = sub_1AF1C4354(v85);
  *(v23 + 18984) = 0;
  *(v23 + 4780) = 0;
  *(v23 + 2394) = objc_alloc_init(CFXVFXRenderTargetInfo);
  *(v23 + 2397) = 252;
  *(v23 + 2399) = objc_alloc_init(VFXMTLREContext);
  *(v23 + 20232) = 0;
  return v23;
}

- (void)dealloc
{
  objc_msgSend_setGeneratedTexturePath_(self, v3, 0, v4);
  objc_msgSend_setClientCommandBuffer_(self, v5, 0, v6);
  objc_msgSend_setClientRenderPassDescriptor_(self, v7, 0, v8);
  objc_msgSend_setClientRenderCommandEncoder_(self, v9, 0, v10);
  objc_msgSend_setClientCommandQueue_(self, v11, 0, v12);
  dispatch_release(self->_resourceQueue);
  dispatch_release(self->_inFlightFramesSemaphore);
  for (i = 0; i != 3; ++i)
  {
    v14 = self + i * 8;
    v15 = self->_background2DProgram[i];
    if (v15)
    {
      CFRelease(v15);
      *(v14 + 67) = 0;
    }

    v16 = *(v14 + 70);
    if (v16)
    {
      CFRelease(v16);
      *(v14 + 70) = 0;
    }
  }

  backgroundVideoProgram = self->_backgroundVideoProgram;
  if (backgroundVideoProgram)
  {
    CFRelease(backgroundVideoProgram);
    self->_backgroundVideoProgram = 0;
  }

  backgroundVideoAlpha0Program = self->_backgroundVideoAlpha0Program;
  if (backgroundVideoAlpha0Program)
  {
    CFRelease(backgroundVideoAlpha0Program);
    self->_backgroundVideoAlpha0Program = 0;
  }

  sub_1AF1C4640(self->_backgroundRasterizerStates);
  sub_1AF1C4640(self->_backgroundWithDepthRasterizerStates);
  renderEncoder = self->_renderEncoder;
  if (renderEncoder)
  {

    MEMORY[0x1B271C6B0](renderEncoder, 0x10A0C40617E9A74);
  }

  free(self->__engineStats);
  if (self->_commandBufferScheduledHandlers)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v21 = sub_1AF0D5194();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (isKindOfClass)
    {
      if (v22)
      {
        sub_1AFDE6000(&self->_commandBufferScheduledHandlers, v21, v23, v24);
      }
    }

    else if (v22)
    {
      sub_1AFDE5FCC();
    }
  }

  if (self->_commandBufferCompletedHandlers)
  {
    objc_opt_class();
    v25 = objc_opt_isKindOfClass();
    v26 = sub_1AF0D5194();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (v25)
    {
      if (v27)
      {
        sub_1AFDE60BC(&self->_commandBufferCompletedHandlers, v26, v28, v29);
      }
    }

    else if (v27)
    {
      sub_1AFDE6088();
    }
  }

  if (self->_drawablePresentedHandlers)
  {
    objc_opt_class();
    v30 = objc_opt_isKindOfClass();
    v31 = sub_1AF0D5194();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
    if (v30)
    {
      if (v32)
      {
        sub_1AFDE6178(&self->_commandBufferCompletedHandlers, v31, v33, v34);
      }
    }

    else if (v32)
    {
      sub_1AFDE6144();
    }
  }

  CFRelease(self->_gpuDevice);
  objc_msgSend__clearRenderCaches(self, v35, v36, v37);
  v38.receiver = self;
  v38.super_class = VFXMTLRenderContext;
  [(VFXMTLRenderContext *)&v38 dealloc];
}

- (MTLCommandQueue)commandQueue
{
  if (self->_clientCommandBuffer)
  {
    return objc_msgSend_commandQueue(self->_clientCommandBuffer, a2, v2, v3);
  }

  clientCommandQueue = self->_clientCommandQueue;
  if (clientCommandQueue)
  {
    return clientCommandQueue;
  }

  clientCommandQueue = self->_ownedCommandQueue;
  if (clientCommandQueue)
  {
    return clientCommandQueue;
  }

  else
  {
    return sub_1AFDE8698(self->_resourceManager);
  }
}

- (void)setPreferredFramesPerSecond:(int64_t)a3
{
  if (!a3)
  {
    v5 = objc_msgSend_mainScreen(MEMORY[0x1E69DCEB0], a2, 0, v3);
    a3 = objc_msgSend_maximumFramesPerSecond(v5, v6, v7, v8);
    if (!a3)
    {
      v9 = sub_1AF0D5194();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDE6200();
      }

      a3 = 120;
    }
  }

  self->_targetedFrameInterval = 1.0 / a3;
}

- (int64_t)preferredFramesPerSecond
{
  targetedFrameInterval = self->_targetedFrameInterval;
  if (targetedFrameInterval == 0.0)
  {
    return 0;
  }

  else
  {
    return (1.0 / targetedFrameInterval);
  }
}

- (__n128)setScreenTransform:(__n128)a3
{
  result[2] = a2;
  result[3] = a3;
  result[4] = a4;
  result[5] = a5;
  return result;
}

- (void)setWantsWideGamut:(BOOL)a3
{
  v4 = *(self + 144);
  if ((v4 & 1) != a3)
  {
    *(self + 144) = v4 & 0xFE | a3;
    v5 = sub_1AF12DDCC(self->_engineContext);

    sub_1AF1BE334(@"kCFXNotificationEngineContextInvalidatePasses", v5, 0, 1u);
  }
}

- (void)setEnableARMode:(BOOL)a3
{
  v3 = *(self + 144);
  if (((((v3 & 4) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v4 = 4;
    }

    else
    {
      v4 = 0;
    }

    *(self + 144) = v3 & 0xFB | v4;
  }
}

- (void)setShouldDelegateARCompositing:(BOOL)a3
{
  v3 = *(self + 144);
  if (((((v3 & 8) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v4 = 8;
    }

    else
    {
      v4 = 0;
    }

    *(self + 144) = v3 & 0xF7 | v4;
  }
}

- (void)setIsOpaque:(BOOL)a3
{
  v4 = *(self + 144);
  if (((((v4 & 2) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    *(self + 144) = v4 & 0xFD | v5;
    v6 = sub_1AF12DDCC(self->_engineContext);

    sub_1AF1BE334(@"kCFXNotificationEngineContextInvalidatePasses", v6, 0, 1u);
  }
}

- (void)_clearUnusedBindingPoints
{
  v3 = *&self->_anon_4950[128];
  if (v3)
  {
    objc_msgSend_pushDebugGroup_(self->_renderEncoder->var3, a2, @"Clear binding points", v2);
    v8 = 0;
    for (i = 0; i != 31; ++i)
    {
      renderEncoder = self->_renderEncoder;
      if ((v3[31] & (1 << i)) != 0)
      {
        v11 = 65280;
      }

      else
      {
        v11 = v8;
      }

      if ((v3[30] & (1 << i)) == 0)
      {
        objc_msgSend_setVertexBuffer_offset_atIndex_(renderEncoder->var3, v5, 0, 0, i);
      }

      if (v11 != 65280)
      {
        objc_msgSend_setFragmentBuffer_offset_atIndex_(renderEncoder->var3, v5, 0, 0, v11 >> 8);
      }

      v8 += 256;
    }

    v12 = 0;
    for (j = 0; j != 31; ++j)
    {
      v14 = self->_renderEncoder;
      if ((v3[33] & (1 << j)) != 0)
      {
        v15 = 65280;
      }

      else
      {
        v15 = v12;
      }

      if ((v3[32] & (1 << j)) == 0)
      {
        v18 = 0;
        sub_1AF1F3034(v14->var2, &v18, 1, v7);
        objc_msgSend_setVertexTexture_atIndex_(v14->var3, v16, v18, j);
      }

      if (v15 != 65280)
      {
        v18 = 0;
        sub_1AF1F3034(v14->var2, &v18, 1, v7);
        objc_msgSend_setFragmentTexture_atIndex_(v14->var3, v17, v18, v15 >> 8);
      }

      v12 += 256;
    }

    objc_msgSend_popDebugGroup(self->_renderEncoder->var3, v5, v6, v7);
  }
}

- (void)beginFrame:(id)a3
{
  v5 = self->_currentFrameIndex + 1;
  self->_currentFrameIndex = v5;
  dispatch_semaphore_wait(self->_inFlightFramesSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v6 = sub_1AF12DDCC(self->_engineContext);
  if (v6)
  {
    v7 = sub_1AF1D13B8(v6);
    vfx_counters_push_frame(v7);
  }

  v8 = sub_1AF130D04(self->_engineContext);
  vfx_counters_push_frame(v8);
  prof_beginFlameSmallData("[VFXMTLRenderContext beginFrame:]", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/NewRenderer/VFXMTLRenderContext.mm", 1140, LODWORD(self->_currentFrameIndex) | 0x300000000);
  self->_counters = 0u;
  objc_msgSend_reloadPipelinesIfNeeded(self->_resourceManager, v9, v10, v11);

  self->_textureTarget = 0;
  self->_layerTarget = 0;
  self->_shouldPresentWithTransaction = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = a3;
    self->_layerTarget = v12;
    self->_shouldPresentWithTransaction = objc_msgSend_presentsWithTransaction(v12, v13, v14, v15);
  }

  else
  {
    self->_textureTarget = a3;
  }

  CFXBufferAllocatorPerFrameNextFrame(self->_frameConstantBufferPool.impl);
  CFXBufferAllocatorPerFrameNextFrame(self->_frameVolatileBufferPool.impl);
  CFXTextureAllocatorPerFrameNextFrame(self->_frameTexturePool.impl);
  clientCommandBuffer = self->_clientCommandBuffer;
  if (clientCommandBuffer)
  {
    self->_currentCommandBuffer = clientCommandBuffer;
    prof_eventSmallData(0, "Current CB creation to completion", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/NewRenderer/VFXMTLRenderContext.mm", 1199, v5 | 0x300000000);
  }

  else
  {
    os_variant_has_internal_diagnostics();
    v23 = objc_msgSend_commandQueue(self, v20, v21, v22);
    self->_currentCommandBuffer = objc_msgSend_commandBuffer(v23, v24, v25, v26);
    prof_eventSmallData(0, "Current CB creation to completion", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/NewRenderer/VFXMTLRenderContext.mm", 1225, v5 | 0x300000000);
    sub_1AF70CC44(self->_currentCommandBuffer);
  }

  if (self->_compilationIssues.collectEnabled)
  {
    objc_msgSend_removeAllObjects(self->_compilationIssues.errors, v17, v18, v19);
  }

  self->_remote.vfcGlobalConstants = 0u;
  self->_remote.vfcViewConstants = 0u;
  self->_remote.viewConstants = 0u;
  inFlightFramesSemaphore = self->_inFlightFramesSemaphore;
  currentCommandBuffer = self->_currentCommandBuffer;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = sub_1AF1FE3A4;
  v32[3] = &unk_1E7A7CC20;
  v32[5] = inFlightFramesSemaphore;
  v32[6] = v5;
  v32[4] = self;
  objc_msgSend_addCompletedHandler_(currentCommandBuffer, v17, v32, v19);
  objc_msgSend_updateFrameConstants(self, v29, v30, v31);
  prof_endFlame();
}

- (void)endFrameWorldSpecifics
{
  objc_msgSend_resetVolatileMeshes(self, a2, v2, v3);

  MEMORY[0x1EEE66B58](self, sel_resetVolatileMeshElements, v5, v6);
}

- (void)_endResourceCommandBufferEncodingIfAny
{
  if (self->_resourceBlitEncoder._encoder)
  {
    sub_1AF1FE520(&self->_resourceBlitEncoder, a2, v2, v3);
  }

  if (objc_msgSend_isEncoding(self->_resourceComputeEncoder, a2, v2, v3))
  {
    resourceComputeEncoder = self->_resourceComputeEncoder;

    objc_msgSend_endEncoding(resourceComputeEncoder, v5, v6, v7);
  }
}

- (void)_commitResourceCommandBufferIfNeeded
{
  if (self->_resourceCommandBuffer)
  {
    objc_msgSend__endResourceCommandBufferEncodingIfAny(self, a2, v2, v3);
    objc_msgSend_commit(self->_resourceCommandBuffer, v5, v6, v7);

    self->_resourceCommandBuffer = 0;
  }
}

- (void)endFrameWaitingUntilCompleted:(BOOL)a3 status:(unint64_t *)a4 error:(id *)a5
{
  v7 = a3;
  currentFrameIndex = self->_currentFrameIndex;
  prof_beginFlameSmallData("[VFXMTLRenderContext endFrameWaitingUntilCompleted:status:error:]", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/NewRenderer/VFXMTLRenderContext.mm", 1330, currentFrameIndex | 0x300000000);
  objc_msgSend__commitResourceCommandBufferIfNeeded(self, v10, v11, v12);
  os_unfair_lock_lock(&self->_gpuHandlersLock);
  commandBufferScheduledHandlers = self->_commandBufferScheduledHandlers;
  if (commandBufferScheduledHandlers)
  {
    currentCommandBuffer = self->_currentCommandBuffer;
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = sub_1AF1FE924;
    v57[3] = &unk_1E7A7CC48;
    v57[4] = commandBufferScheduledHandlers;
    objc_msgSend_addScheduledHandler_(currentCommandBuffer, v13, v57, v14);

    self->_commandBufferScheduledHandlers = 0;
  }

  commandBufferCompletedHandlers = self->_commandBufferCompletedHandlers;
  if (!commandBufferCompletedHandlers)
  {
    if (!prof_getEnabled())
    {
      goto LABEL_7;
    }

    commandBufferCompletedHandlers = self->_commandBufferCompletedHandlers;
  }

  v18 = self->_currentCommandBuffer;
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = sub_1AF1FEA80;
  v56[3] = &unk_1E7A7CC70;
  v56[4] = commandBufferCompletedHandlers;
  v56[5] = currentFrameIndex;
  objc_msgSend_addCompletedHandler_(v18, v13, v56, v14);

  self->_commandBufferCompletedHandlers = 0;
LABEL_7:
  if (!self->_metalDisplayLinkUpdate)
  {
    goto LABEL_18;
  }

  v19 = sub_1AF12F434(self->_engineContext);
  v26 = objc_msgSend__supportsDidPresentDelegate(v19, v20, v21, v22);
  drawablePresentedHandlers = self->_drawablePresentedHandlers;
  if (!((drawablePresentedHandlers != 0) | v26 & 1))
  {
    if (!prof_getEnabled())
    {
      goto LABEL_12;
    }

    drawablePresentedHandlers = self->_drawablePresentedHandlers;
  }

  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = sub_1AF1FEC98;
  v54[3] = &unk_1E7A7CC98;
  v54[5] = v19;
  v54[6] = currentFrameIndex;
  v55 = v26;
  v54[4] = drawablePresentedHandlers;
  v28 = objc_msgSend_drawable(self->_metalDisplayLinkUpdate, v23, v24, v25);
  objc_msgSend_addPresentedHandler_(v28, v29, v54, v30);

  self->_drawablePresentedHandlers = 0;
LABEL_12:
  if (self->_shouldPresentWithTransaction)
  {
    objc_msgSend_begin(MEMORY[0x1E6979518], v23, v24, v25);
    if (!pthread_main_np())
    {
      objc_msgSend_activateBackground_(MEMORY[0x1E6979518], v23, 1, v25);
    }
  }

  v31 = self->_currentCommandBuffer;
  v32 = objc_msgSend_drawable(self->_metalDisplayLinkUpdate, v23, v24, v25);
  objc_msgSend_presentDrawable_(v31, v33, v32, v34);
  if (self->_shouldPresentWithTransaction)
  {
    objc_msgSend_commit(MEMORY[0x1E6979518], v35, v36, v37);
  }

  self->_metalDisplayLinkUpdate = 0;
LABEL_18:
  os_unfair_lock_unlock(&self->_gpuHandlersLock);
  objc_msgSend__commitResourceCommandBufferIfNeeded(self, v38, v39, v40);
  clientCommandBuffer = self->_clientCommandBuffer;
  if (clientCommandBuffer)
  {
    if (v7)
    {
      objc_msgSend_waitUntilCompleted(clientCommandBuffer, v41, v42, v43);
      if (a4)
      {
        *a4 = objc_msgSend_status(self->_clientCommandBuffer, v41, v45, v43);
      }

      if (a5)
      {
        *a5 = 0;
      }
    }

    objc_msgSend_setClientCommandBuffer_(self, v41, 0, v43);
  }

  else
  {
    objc_msgSend_commit(self->_currentCommandBuffer, v41, v42, v43);
    if (v7)
    {
      objc_msgSend_waitUntilCompleted(self->_currentCommandBuffer, v46, v48, v47);
      if (a4)
      {
        *a4 = objc_msgSend_status(self->_currentCommandBuffer, v46, v49, v47);
      }

      if (a5)
      {
        *a5 = objc_msgSend_error(self->_currentCommandBuffer, v46, v49, v47);
      }
    }
  }

  objc_msgSend_setClientRenderCommandEncoder_(self, v46, 0, v47);
  objc_msgSend_setClientRenderPassDescriptor_(self, v50, 0, v51);
  objc_msgSend_setClientCommandQueue_(self, v52, 0, v53);
  self->_currentCommandBuffer = 0;
  *&self->_anon_4190[672] = 0;

  self->_textureTarget = 0;
  self->_layerTarget = 0;

  self->_metalDisplayLinkUpdate = 0;
  prof_endFlame();
}

- (id)_finalRenderTexture
{
  attachmentProvider = self->_attachmentProvider;
  v4 = RGResourceIdentifierFinalColor(self);
  Path = RGResourceIdentifierGetPath(v4);
  result = objc_msgSend_textureForAttachment_withDescriptor_(attachmentProvider, v6, Path, 0);
  if (!result)
  {
    if (self->_layerTarget)
    {
      v11 = objc_msgSend_drawable(self->_metalDisplayLinkUpdate, v8, v9, v10);

      return objc_msgSend_texture(v11, v12, v13, v14);
    }

    else
    {
      return self->_textureTarget;
    }
  }

  return result;
}

- (id)allocateWithStagingBuffer:(id)a3 desc:(id *)a4 forceCPUBlit:(BOOL)a5
{
  v5 = a5;
  v7 = *&a3.var1;
  var0 = a3.var0;
  v10 = *(a4 + 12);
  if (a5)
  {
    v11 = v10 & 0xFFFF8FFFFFFFFFFFLL;
  }

  else
  {
    v11 = v10 & 0xFFFF8FFDFFFFFFFFLL | 0x200200000000;
  }

  *(a4 + 12) = v11;
  impl = self->_frameTexturePool.impl;
  v59 = *&a4->var0.var0;
  v60 = *(a4 + 2);
  v13 = CFXTextureAllocatorPerFrameAllocate(impl, &v59);
  v14 = sub_1AF1F1AAC() >> 3;
  v15 = *(a4 + 4);
  v16 = v15 * v14;
  v17 = v16 * (v15 >> 16);
  v21 = objc_msgSend_width(v13, v18, v19, v20);
  v25 = objc_msgSend_height(v13, v22, v23, v24);
  v29 = objc_msgSend_depth(v13, v26, v27, v28);
  if (v5)
  {
    v59 = 0uLL;
    v60 = 0;
    v61 = v21;
    v62 = v25;
    v63 = v29;
    CPUPointer = CFXBufferSliceGetCPUPointer(var0, v7, v31, v32);
    objc_msgSend_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage_(v13, v34, &v59, 0, 0, CPUPointer, v16, v17);
  }

  else
  {
    LOWORD(v59) = v14;
    WORD1(v59) = v16;
    DWORD1(v59) = v17;
    if (objc_msgSend_pixelFormat(v13, v30, v31, v32, v59) != 23 && objc_msgSend_pixelFormat(v13, v35, v36, v37) != 63 && objc_msgSend_pixelFormat(v13, v35, v38, v37) != 113)
    {
      v39 = sub_1AF0D5194();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE6350(v39, v35, v40, v37, v41, v42, v43, v44);
      }
    }

    v45 = objc_msgSend_computePipelineStateForKernel_(self->_resourceManager, v35, @"copy_texture_3D_from_buffer_ushort", v37);
    v49 = objc_msgSend_resourceComputeEncoder(self, v46, v47, v48);
    v50 = sub_1AFDE323C(v45);
    objc_msgSend_setComputePipelineState_(v49, v51, v50, v52);
    objc_msgSend_setBufferSlice_atIndex_(v49, v53, var0, v7, 0);
    objc_msgSend_setBytes_length_atIndex_(v49, v54, &v59, 8, 1);
    objc_msgSend_setTexture_atIndex_(v49, v55, v13, 0);
    objc_msgSend_dispatchOnTexture3D_(v49, v56, v13, v57);
  }

  return v13;
}

- (void)_clearRenderCaches
{
  *&self->_anon_4950[128] = 0u;
  *&self->_anon_4950[112] = 0u;
  *&self->_anon_4950[96] = 0u;
  *&self->_anon_4950[80] = 0u;
  *&self->_anon_4950[64] = 0u;
  *&self->_anon_4950[48] = 0u;
  *&self->_anon_4950[32] = 0u;
  *&self->_anon_4950[16] = 0u;
  *self->_anon_4950 = 0u;
  *&self->_cache.tessellationPipelineStateHash = 0u;
  *&self->_cache.deformerStack = 0u;
  *&self->_cache.node = 0u;
  *&self->_cache.blendStates = 0u;
  *&self->_cache.metalShadable = 0u;
  *&self->_cache.material = 0u;
  *&self->_cache.metalMeshElement = 0u;
  *&self->_cache.metalMesh = 0u;
  *&self->_cache.rasterizerStates = 0u;
}

- (void)_createResourceCommandBufferIfNeeded
{
  if (!self->_resourceCommandBuffer)
  {
    v16[7] = v2;
    v16[8] = v3;
    os_variant_has_internal_diagnostics();
    v8 = objc_msgSend_commandQueue(self, v5, v6, v7);
    self->_resourceCommandBuffer = objc_msgSend_commandBuffer(v8, v9, v10, v11);
    prof_eventSmallData(0, "Resource CB creation to completion", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/NewRenderer/VFXMTLRenderContext.mm", 1757, LODWORD(self->_currentFrameIndex) | 0x300000000);
    sub_1AF70CC44(self->_resourceCommandBuffer);
    v12 = self->_resourceCommandBuffer;
    resourceCommandBuffer = self->_resourceCommandBuffer;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1AF1FF240;
    v16[3] = &unk_1E7A7CC48;
    v16[4] = self;
    objc_msgSend_addCompletedHandler_(resourceCommandBuffer, v14, v16, v15);
  }
}

- (MTLCommandBuffer)resourceCommandBuffer
{
  if (!self->_resourceCommandBuffer)
  {
    objc_msgSend__createResourceCommandBufferIfNeeded(self, a2, v2, v3);
  }

  if (objc_msgSend_isEncoding(self->_resourceComputeEncoder, a2, v2, v3))
  {
    objc_msgSend_endEncoding(self->_resourceComputeEncoder, v5, v6, v7);
  }

  if (self->_resourceBlitEncoder._encoder)
  {
    sub_1AF1FE520(&self->_resourceBlitEncoder, v5, v6, v7);
  }

  return self->_resourceCommandBuffer;
}

- (VFXMTLBlitCommandEncoder)resourceBlitEncoder
{
  if (!self->_resourceCommandBuffer)
  {
    objc_msgSend__createResourceCommandBufferIfNeeded(self, a2, v2, v3);
  }

  if (objc_msgSend_isEncoding(self->_resourceComputeEncoder, a2, v2, v3))
  {
    objc_msgSend_endEncoding(self->_resourceComputeEncoder, v5, v6, v7);
  }

  if (!self->_resourceBlitEncoder._encoder)
  {
    sub_1AF1FF3B8(&self->_resourceBlitEncoder._encoder, self->_resourceCommandBuffer, 0, v7);
  }

  return &self->_resourceBlitEncoder;
}

- (RGCachedComputeCommandEncoder)resourceComputeEncoder
{
  if (!self->_resourceCommandBuffer)
  {
    objc_msgSend__createResourceCommandBufferIfNeeded(self, a2, v2, v3);
  }

  if (self->_resourceBlitEncoder._encoder)
  {
    sub_1AF1FE520(&self->_resourceBlitEncoder, a2, v2, v3);
  }

  if ((objc_msgSend_isEncoding(self->_resourceComputeEncoder, a2, v2, v3) & 1) == 0)
  {
    objc_msgSend_beginEncodingWithCommandBuffer_label_(self->_resourceComputeEncoder, v5, self->_resourceCommandBuffer, @"ResourceComputeEncoder");
  }

  return self->_resourceComputeEncoder;
}

- (void)_beginRenderPass:(id *)a3 renderEncoder:(void *)a4
{
  self->_renderEncoder = a4;
  objc_msgSend__clearRenderCaches(self, a2, a3, a4);
  v6 = *&self->_currentRenderPassDesc.colorFormat[6];
  *&self->_originalRenderPassDesc.colorFormat[4] = *&self->_currentRenderPassDesc.colorFormat[4];
  *&self->_originalRenderPassDesc.colorFormat[6] = v6;
  *&self->_originalRenderPassDesc.depthFormat = *&self->_currentRenderPassDesc.depthFormat;
  *&self->_originalRenderPassDesc.sampleCount = *&self->_currentRenderPassDesc.sampleCount;
  v7 = *&self->_currentRenderPassDesc.colorFormat[2];
  *self->_originalRenderPassDesc.colorFormat = *self->_currentRenderPassDesc.colorFormat;
  *&self->_originalRenderPassDesc.colorFormat[2] = v7;
  v8 = *a3->var0;
  *&self->_currentRenderPassDesc.colorFormat[2] = *&a3->var0[2];
  *self->_currentRenderPassDesc.colorFormat = v8;
  v9 = *&a3->var3;
  v11 = *&a3->var0[6];
  v10 = *&a3->var1;
  *&self->_currentRenderPassDesc.colorFormat[4] = *&a3->var0[4];
  *&self->_currentRenderPassDesc.colorFormat[6] = v11;
  *&self->_currentRenderPassDesc.depthFormat = v10;
  *&self->_currentRenderPassDesc.sampleCount = v9;

  bzero(self->_anon_4b00, 0x400uLL);
}

- (void)beginRenderPass:(id)a3 renderEncoder:(void *)a4
{
  v7 = objc_msgSend_colorAttachments(a3, a2, a3, a4);
  v10 = objc_msgSend_objectAtIndexedSubscript_(v7, v8, 0, v9);
  v17 = objc_msgSend_texture(v10, v11, v12, v13);
  if (!v17)
  {
    v18 = objc_msgSend_depthAttachment(a3, v14, v15, v16);
    v17 = objc_msgSend_texture(v18, v19, v20, v21);
  }

  *self->_currentRenderSize = objc_msgSend_width(v17, v14, v15, v16);
  *&self->_currentRenderSize[4] = objc_msgSend_height(v17, v22, v23, v24);
  v28 = objc_msgSend_colorAttachments(a3, v25, v26, v27);
  v31 = objc_msgSend_objectAtIndexedSubscript_(v28, v29, 0, v30);
  objc_msgSend_clearColor(v31, v32, v33, v34);
  self->_currentClearColor.red = v35;
  self->_currentClearColor.green = v36;
  self->_currentClearColor.blue = v37;
  self->_currentClearColor.alpha = v38;
  v45 = 0;
  memset(v44, 0, sizeof(v44));
  v42 = sub_1AF218EA4(a3, v39, v40, v41, v44);
  objc_msgSend__beginRenderPass_renderEncoder_(self, v43, v44, a4, v42);
}

- (void)beginRenderPass:(id)a3 renderEncoder:(void *)a4 parameters:(id)a5
{
  v5 = *&a5.var0;
  objc_msgSend_beginRenderPass_renderEncoder_(self, a2, a3, a4);

  objc_msgSend_setRenderPassParameters_(self, v7, v5 & 0xFFFFFFFFFFFFLL, v8);
}

- (void)endRenderPass
{
  self->_renderGraph = 0u;
  v2 = *&self->_originalRenderPassDesc.colorFormat[6];
  *&self->_currentRenderPassDesc.colorFormat[4] = *&self->_originalRenderPassDesc.colorFormat[4];
  *&self->_currentRenderPassDesc.colorFormat[6] = v2;
  *&self->_currentRenderPassDesc.depthFormat = *&self->_originalRenderPassDesc.depthFormat;
  v3 = *&self->_originalRenderPassDesc.colorFormat[2];
  *self->_currentRenderPassDesc.colorFormat = *self->_originalRenderPassDesc.colorFormat;
  self->_renderEncoder = 0;
  *&self->_currentRenderPassDesc.sampleCount = *&self->_originalRenderPassDesc.sampleCount;
  *&self->_currentRenderPassDesc.colorFormat[2] = v3;
}

- (void)beginExternalFrameWithEncoder:(void *)a3 frameIndex:(unint64_t)a4
{
  self->_renderEncoder = a3;
  if (self->_currentFrameIndex != a4)
  {
    self->_currentFrameIndex = a4;
    objc_msgSend__clearRenderCaches(self, a2, a3, a4);
    bzero(self->_anon_4b00, 0x400uLL);
    CFXBufferAllocatorPerFrameNextFrame(self->_frameConstantBufferPool.impl);
    CFXBufferAllocatorPerFrameNextFrame(self->_frameVolatileBufferPool.impl);
    CFXTextureAllocatorPerFrameNextFrame(self->_frameTexturePool.impl);
    v9 = sub_1AFDEB254(self->_reContext);
    self->_currentWorldBufferIndex = -1;

    objc_msgSend_updateFrameConstants(self, v6, v7, v8, v9);
  }
}

- (void)endExternalFrame
{
  v5 = *&self->_originalRenderPassDesc.colorFormat[6];
  *&self->_currentRenderPassDesc.colorFormat[4] = *&self->_originalRenderPassDesc.colorFormat[4];
  *&self->_currentRenderPassDesc.colorFormat[6] = v5;
  *&self->_currentRenderPassDesc.depthFormat = *&self->_originalRenderPassDesc.depthFormat;
  *&self->_currentRenderPassDesc.sampleCount = *&self->_originalRenderPassDesc.sampleCount;
  v6 = *&self->_originalRenderPassDesc.colorFormat[2];
  *self->_currentRenderPassDesc.colorFormat = *self->_originalRenderPassDesc.colorFormat;
  *&self->_currentRenderPassDesc.colorFormat[2] = v6;
  objc_msgSend__commitResourceCommandBufferIfNeeded(self, a2, v2, v3);
  self->_renderEncoder = 0;
  objc_msgSend_setClientRenderCommandEncoder_(self, v7, 0, v8);
  objc_msgSend_setClientRenderPassDescriptor_(self, v9, 0, v10);
  self->_currentCommandBuffer = 0;
  *&self->_anon_4190[672] = 0;
}

- (void)setAttachmentProvider:(id)a3
{
  if (self->_attachmentProvider != a3)
  {
    v6 = a3;
    attachmentProvider = self->_attachmentProvider;
    self->_attachmentProvider = a3;
    v7 = sub_1AF12E8A4(self->_engineContext);
    sub_1AF2709AC(v7, a3);
  }
}

- (id)irradianceTextureForMaterialProperty:(__CFXMaterialProperty *)a3
{
  v5 = sub_1AF1676F4(a3);
  if (v5)
  {
    v8 = v5;
    resourceManager = self->_resourceManager;

    return MEMORY[0x1EEE66B58](resourceManager, sel_irradianceTextureForPrecomputedLightingEnvironment_, v8, v7);
  }

  else
  {
    result = objc_msgSend_textureForMaterialProperty_(self, v6, a3, v7);
    if (result)
    {
      v13 = result;
      if (objc_msgSend_textureType(result, v10, v11, v12) == 5)
      {
        lightingSystem = self->_processingContext.lightingSystem;
        if (lightingSystem)
        {
          lightingSystem = sub_1AF139110(lightingSystem);
        }

        v16 = self->_resourceManager;
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = sub_1AF1FF934;
        v18[3] = &unk_1E7A7CCB8;
        v18[4] = lightingSystem;
        return objc_msgSend_irradianceTextureForEnvironmentTexture_renderContext_applySH_(v16, v14, v13, self, v18);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

- (id)radianceTextureForMaterialProperty:(__CFXMaterialProperty *)a3
{
  v5 = sub_1AF1676F4(a3);
  if (v5)
  {
    v8 = v5;
    resourceManager = self->_resourceManager;

    return MEMORY[0x1EEE66B58](resourceManager, sel_radianceTextureForPrecomputedLightingEnvironment_, v8, v7);
  }

  else
  {
    v10 = objc_msgSend_textureForMaterialProperty_(self, v6, a3, v7);
    if (v10 && (v14 = v10, objc_msgSend_textureType(v10, v11, v12, v13) == 5))
    {
      v15 = self->_resourceManager;
      engineContext = self->_engineContext;

      return MEMORY[0x1EEE66B58](v15, sel_radianceTextureForEnvironmentTexture_engineContext_, v14, engineContext);
    }

    else
    {
      return 0;
    }
  }
}

- (id)deformedRaytraceableMeshForNode:(__CFXNode *)a3 fallbackModel:(__CFXModel *)a4
{
  v134 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v7 = sub_1AF1B75A0(a3);
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = a4;
  }

  v11 = sub_1AF174F44(v8, 0, 0);
  v12 = v11 == 0;
  if (a3)
  {
    v13 = sub_1AF1B7558(a3);
    if (v13)
    {
      v14 = v13;
      if (sub_1AF16B74C(v13))
      {
        v15 = sub_1AF27DD4C(v8, 0);
        v17 = objc_msgSend_renderResourceForDeformerStack_node_dataKind_(self->_resourceManager, v16, v14, a3, v12);
        if (sub_1AFDE22C0(v17))
        {
          v18 = sub_1AF12DDCC(self->_engineContext);
          v19 = sub_1AF1D0218(v18);
          v20 = sub_1AF14CD4C(v19, a3->var4);
          v102 = *v20;
          v104 = v20[1];
          v98 = v20[2];
          v100 = v20[3];
          v21 = sub_1AF1B92C8(a3);
          if (v21)
          {
            v22 = v21;
            v23 = sub_1AF1C9420(v21);
            *v24.i64 = sub_1AF1CA3E8(v22, v23, v102, v104, v98, v100);
            v28 = v24;
          }

          else
          {
            v26 = v98;
            v27 = v100;
            v28 = v102;
            v25 = v104;
          }

          v34 = 0;
          v35 = *self->_anon_2d0;
          v36 = *&self->_anon_2d0[16];
          v37 = *&self->_anon_2d0[32];
          v38 = *&self->_anon_2d0[48];
          v111 = v28;
          v112 = v25;
          v113 = v26;
          v114 = v27;
          do
          {
            *(&v118 + v34) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v35, COERCE_FLOAT(*(&v111 + v34))), v36, *&v111.f32[v34 / 4], 1), v37, *(&v111 + v34), 2), v38, *(&v111 + v34), 3);
            v34 += 16;
          }

          while (v34 != 64);
          v39 = 0;
          v101 = v119;
          v103 = v118;
          v97 = v121;
          v99 = v120;
          v40 = *&self->_anon_2d0[192];
          v41 = *&self->_anon_2d0[208];
          v42 = *&self->_anon_2d0[224];
          v43 = *&self->_anon_2d0[240];
          v111 = v28;
          v112 = v25;
          v113 = v26;
          v114 = v27;
          do
          {
            *(&v118 + v39) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v40, COERCE_FLOAT(*(&v111 + v39))), v41, *&v111.f32[v39 / 4], 1), v42, *(&v111 + v39), 2), v43, *(&v111 + v39), 3);
            v39 += 16;
          }

          while (v39 != 64);
          v95 = v119;
          v96 = v118;
          v93 = v121;
          v94 = v120;
          v44 = *&self->_anon_2d0[144];
          v130 = *&self->_anon_2d0[128];
          v131 = v44;
          v45 = *&self->_anon_2d0[176];
          v132 = *&self->_anon_2d0[160];
          v133 = v45;
        }

        if (sub_1AFDE22D8(v17))
        {
          objc_msgSend_renderSize(self, v46, v47, v48);
          v49 = 0;
          v111.i64[0] = v50;
          v51 = *&self->_anon_3408[2152];
          v52 = *&self->_anon_3408[2168];
          v53 = *&self->_anon_3408[2184];
          v54 = *&self->_anon_3408[2200];
          do
          {
            v55 = 0;
            v105 = v51;
            v56 = *(&v105 & 0xFFFFFFFFFFFFFFF3 | (4 * (v49 & 3)));
            v57 = (&v106 & 0xFFFFFFFFFFFFFFF3 | (4 * (v49 & 3)));
            v106 = v52;
            v58 = *(&v52 + 3) - *v57;
            v59 = *(&v52 + 3) + *v57;
            v107 = v53;
            v60 = *(&v107 & 0xFFFFFFFFFFFFFFF3 | (4 * (v49 & 3)));
            v108 = v54;
            v61 = *(&v108 & 0xFFFFFFFFFFFFFFF3 | (4 * (v49 & 3)));
            v62 = *(&v53 + 3) - v60;
            v63 = *(&v53 + 3) + v60;
            v64 = 1;
            do
            {
              v65 = v64 & 1;
              if (v64)
              {
                v66 = v56;
              }

              else
              {
                v66 = -v56;
              }

              v67 = v55 | (2 * v49);
              v68 = *(&v112 + v67);
              v68.f32[0] = *(&v51 + 3) + v66;
              if (v64)
              {
                v69 = v59;
              }

              else
              {
                v69 = v58;
              }

              if (v64)
              {
                v70 = v63;
              }

              else
              {
                v70 = v62;
              }

              if (v64)
              {
                v71 = v61;
              }

              else
              {
                v71 = -v61;
              }

              v68.f32[1] = v69;
              v68.f32[2] = v70;
              v72 = vmulq_f32(v68, v68);
              v68.f32[3] = *(&v54 + 3) + v71;
              *(&v112 + v67) = vmulq_n_f32(v68, sqrtf(v72.f32[2] + vaddv_f32(*v72.f32)));
              v55 = 1;
              v64 = 0;
            }

            while (v65);
            ++v49;
          }

          while (v49 != 3);
        }

        v110 = 0;
        v118 = v103;
        v119 = v101;
        v120 = v99;
        v121 = v97;
        v122 = v96;
        v123 = v95;
        v124 = v94;
        v125 = v93;
        v126 = v130;
        v127 = v131;
        v128 = v132;
        v129 = v133;
        v109[4] = v115;
        v109[5] = v116;
        v109[6] = v117;
        v109[0] = v111;
        v109[1] = v112;
        v109[2] = v113;
        v109[3] = v114;
        v73 = sub_1AFDE22F0(v17, self, v15, &v118, v109, &v110);
        if (v11)
        {
          return sub_1AF17780C(v8, self, v74, v75);
        }

        v33 = v73;
        if (v73)
        {
          v76 = sub_1AFDEA208(v73);
          if (!objc_msgSend_count(v76, v77, v78, v79))
          {
            v80 = sub_1AF1B2C1C(v8);
            v81 = sub_1AF1A3CCC(v80);
            v82 = objc_alloc(MEMORY[0x1E695DF70]);
            v85 = objc_msgSend_initWithCapacity_(v82, v83, v81, v84);
            if (v81 >= 1)
            {
              for (i = 0; i != v81; ++i)
              {
                v87 = sub_1AF1A3D1C(v80, i, v12);
                if (v87)
                {
                  v88 = sub_1AF1A7034(v87);
                  if (sub_1AF1F156C(v88))
                  {
                    v89 = sub_1AFDE7F98(self->_resourceManager);
                    objc_msgSend_addObject_(v85, v90, v89, v91);
                  }

                  else
                  {
                    v92 = sub_1AF0D5194();
                    if (os_log_type_enabled(v92, OS_LOG_TYPE_FAULT))
                    {
                      sub_1AFDE655C(&v118, (&v118 + 4), v92);
                    }
                  }
                }
              }
            }

            sub_1AFDEA214(v33, v85);
          }
        }

        return v33;
      }
    }
  }

  if (v11)
  {

    return sub_1AF17780C(v8, self, v9, v10);
  }

  else
  {
    v30 = sub_1AF1B2E04(v8);
    if (!v30)
    {
      return 0;
    }

    v31 = v30;
    resourceManager = self->_resourceManager;

    return sub_1AF20E1F8(resourceManager, v31, v12);
  }
}

- (void)_logLightingInformation
{
  NSLog(&cfstr_LightingsetUpl.isa, a2, self->_lighting.frameLightingSetDatas.__table_.__size_);
  next = self->_lighting.frameLightingSetDatas.__table_.__first_node_.__next_;
  if (next)
  {
    LODWORD(v4) = 0;
    do
    {
      v4 = (v4 + next[10]);
      next = *next;
    }

    while (next);
  }

  else
  {
    v4 = 0;
  }

  NSLog(&cfstr_LightingsetUpl_0.isa, v4);
}

- (void)setRasterizerStates:(__CFXRasterizerStates *)a3
{
  v3 = a3;
  if (!a3)
  {
    v3 = sub_1AF1C45EC();
  }

  if (self->_cache.rasterizerStates != v3)
  {
    v31 = 0;
    v32[0] = 0;
    *(v32 + 5) = 0;
    sub_1AF1C458C(v3, &v31);
    rasterizerStates = self->_cache.rasterizerStates;
    if (rasterizerStates)
    {
      v29 = 0;
      v30[0] = 0;
      *(v30 + 5) = 0;
      sub_1AF1C458C(rasterizerStates, &v29);
      v6 = v31;
      if (v29 == v31)
      {
        v7 = 2;
      }

      else
      {
        v7 = 3;
      }

      if (BYTE1(v29) == BYTE1(v31))
      {
        v8 = v29 != v31;
      }

      else
      {
        v8 = v7;
      }

      if (BYTE2(v29) == BYTE2(v31))
      {
        v9 = v8;
      }

      else
      {
        v9 = v8 | 4;
      }

      if (BYTE2(v31) == 1 && BYTE4(v29) != BYTE4(v31) || (v29 & 0x10000) == 0)
      {
        v9 |= 8u;
      }

      if (BYTE2(v31) && BYTE3(v29) != BYTE3(v31) || (v29 & 0x10000) == 0)
      {
        v9 |= 0x10u;
      }

      if ((v31 & 0x10000000000) != 0 || BYTE5(v29) == 1)
      {
        LOBYTE(v9) = v9 | 0x20;
      }

      else if (!v9)
      {
        v21 = sub_1AF0D5194();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDE65A4(v21, v22, v23, v24, v25, v26, v27, v28);
        }

        goto LABEL_30;
      }

      if ((v9 & 1) == 0)
      {
        if ((v9 & 2) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }
    }

    else
    {
      LOBYTE(v9) = -1;
      v6 = v31;
    }

    renderEncoder = self->_renderEncoder;
    v18 = sub_1AF1F1250(v6);
    objc_msgSend_setCullMode_(renderEncoder->var3, v19, v18, v20);
    if ((v9 & 2) == 0)
    {
LABEL_28:
      if ((v9 & 0x3C) != 0)
      {
        v14 = sub_1AFDE7C58(self->_resourceManager);
        objc_msgSend_setDepthStencilState_(self->_renderEncoder->var3, v15, v14, v16);
      }

LABEL_30:
      self->_cache.rasterizerStates = v3;
      return;
    }

LABEL_27:
    v10 = self->_renderEncoder;
    v11 = sub_1AF1F12A4(BYTE1(v31));
    objc_msgSend_setTriangleFillMode_(v10->var3, v12, v11, v13);
    goto LABEL_28;
  }
}

- (void)_setWorldBufferAtVertexIndex:(int64_t)a3 fragmentIndex:(int64_t)a4
{
  v4 = a4;
  v5 = a3;
  if (sub_1AF12E2A0(self->_engineContext))
  {
    v7 = sub_1AF1310A0(self->_engineContext);

    sub_1AF1FD200(v7, v5 | (v4 << 8), 3u);
  }

  else
  {
    renderEncoder = self->_renderEncoder;
    MTLBuffer = CFXBufferSliceGetMTLBuffer(self->_worldUniforms.impl._buffer, *&self->_worldUniforms.impl._offset);
    offset = self->_worldUniforms.impl._offset;
    v12 = v4 << 8;
    if (v5 != 0xFF)
    {
      objc_msgSend_setVertexBuffer_offset_atIndex_(renderEncoder->var3, v9, MTLBuffer, offset, v5);
    }

    if (v12 != 65280)
    {
      var3 = renderEncoder->var3;

      objc_msgSend_setFragmentBuffer_offset_atIndex_(var3, v9, MTLBuffer, offset, v12 >> 8);
    }
  }
}

- (void)_setMeshBuffers:(id)a3
{
  v16[14] = *MEMORY[0x1E69E9840];
  memset(v15, 0, sizeof(v15));
  v5 = sub_1AFDEA1E8(a3);
  v9 = objc_msgSend_count(v5, v6, v7, v8);
  if (v9 >= 0xE)
  {
    v10 = 14;
  }

  else
  {
    v10 = v9;
  }

  v11 = sub_1AFDEA1E8(a3);
  objc_msgSend_getObjects_range_(v11, v12, v16, 0, v10);
  if (sub_1AFDEA228(a3))
  {
    *(v15 + v10) = sub_1AFDEA248(a3);
    v16[v10++] = sub_1AFDEA228(a3);
  }

  renderEncoder = self->_renderEncoder;
  if (v10 == 1)
  {
    objc_msgSend_setVertexBuffer_offset_atIndex_(renderEncoder->var3, v13, v16[0], *&v15[0], 18);
  }

  else
  {
    objc_msgSend_setVertexBuffers_offsets_withRange_(renderEncoder->var3, v13, v16, v15, 18, v10);
  }
}

- (void)_drawMeshElement:(id)a3 instanceCount:(unint64_t)a4
{
  ++self->__engineStats->drawCount;
  if (!a3)
  {
    v7 = sub_1AF0D5194();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE661C(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  if (sub_1AFDEA1E8(a3))
  {
    renderEncoder = self->_renderEncoder;
    v16 = sub_1AFDE323C(a3);
    v17 = sub_1AFDEA208(a3);
    v18 = sub_1AFDE868C(a3);
    v22 = objc_msgSend_buffer(v18, v19, v20, v21);
    v23 = sub_1AFDEA330(a3);
    v24 = sub_1AFDE868C(a3);
    v28 = objc_msgSend_offset(v24, v25, v26, v27);
    v29 = v23 + sub_1AFDE8614(a3);
    v30 = sub_1AFDEA1E8(a3);
    v31 = sub_1AFDEA248(a3);
    objc_msgSend_drawIndexedPrimitives_indexType_indexBuffer_indexBufferOffset_indirectBuffer_indirectBufferOffset_(renderEncoder->var3, v32, v16, v17, v22, v28 + v29, v30, v31);
  }

  else
  {
    v37 = sub_1AFDE868C(a3);
    v38 = self->_renderEncoder;
    v39 = sub_1AFDE323C(a3);
    if (v37)
    {
      v40 = sub_1AFDEA228(a3);
      v41 = sub_1AFDEA208(a3);
      v42 = sub_1AFDE868C(a3);
      v46 = objc_msgSend_buffer(v42, v43, v44, v45);
      v47 = sub_1AFDEA330(a3);
      v48 = sub_1AFDE868C(a3);
      v52 = objc_msgSend_offset(v48, v49, v50, v51);
      v54 = v47 + sub_1AFDE8614(a3);
      var3 = v38->var3;
      v56 = v52 + v54;
      if (v38->var0 * a4 < 2)
      {
        objc_msgSend_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_(var3, v53, v39, v40, v41, v46, v56);
      }

      else
      {
        objc_msgSend_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_instanceCount_(var3, v53, v39, v40, v41, v46, v56);
      }
    }

    else
    {
      v57 = sub_1AFDEA330(a3);
      v59 = sub_1AFDEA228(a3);
      v60 = v38->var3;
      if (v38->var0 * a4 < 2)
      {
        objc_msgSend_drawPrimitives_vertexStart_vertexCount_(v60, v58, v39, v57, v59);
      }

      else
      {
        objc_msgSend_drawPrimitives_vertexStart_vertexCount_instanceCount_(v60, v58, v39, v57, v59);
      }
    }
  }

  v33 = sub_1AFDEA5A8(a3);
  engineStats = self->__engineStats;
  engineStats->primitivesProcessed += v33 * a4;
  metalMesh = self->_cache.metalMesh;
  if (metalMesh)
  {
    v36 = sub_1AFDEA290(metalMesh) * a4;
    engineStats = self->__engineStats;
  }

  else
  {
    v36 = 0;
  }

  engineStats->verticesProcessed += v36;
}

- (void)_drawPatchForMeshElement:(id)a3 instanceCount:(unint64_t)a4
{
  if (sub_1AFDEA208(a3) != 1)
  {
    if (sub_1AFDEA208(a3))
    {
      v7 = sub_1AF0D5194();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE6694(v7, v8, v9, v10, v11, v12, v13, v14);
      }
    }
  }

  if (sub_1AFDE323C(a3) != 3)
  {
    v15 = sub_1AF0D5194();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE670C(v15, v16, v17, v18, v19, v20, v21, v22);
    }
  }

  ++self->__engineStats->drawCount;
  renderEncoder = self->_renderEncoder;
  v24 = sub_1AFDEA534(a3);
  v25 = sub_1AFDE868C(a3);
  v29 = objc_msgSend_buffer(v25, v26, v27, v28);
  v30 = sub_1AFDE868C(a3);
  v34 = objc_msgSend_offset(v30, v31, v32, v33);
  v35 = sub_1AFDE8614(a3);
  objc_msgSend_drawIndexedPatches_patchStart_patchCount_patchIndexBuffer_patchIndexBufferOffset_controlPointIndexBuffer_controlPointIndexBufferOffset_instanceCount_baseInstance_(renderEncoder->var3, v36, 3, 0, v24, 0, 0, v29, v35 + v34, renderEncoder->var0 * a4, 0);
  v37 = sub_1AFDEA534(a3);
  engineStats = self->__engineStats;
  engineStats->primitivesProcessed += v37 * a4;
  metalMesh = self->_cache.metalMesh;
  if (metalMesh)
  {
    v40 = sub_1AFDEA290(metalMesh) * a4;
    engineStats = self->__engineStats;
  }

  else
  {
    v40 = 0;
  }

  engineStats->verticesProcessed += v40;
}

- (void)_updateProjectionMatrixForOrthographicSkyboxRenderingIfNeeded:(id *)a3
{
  v9 = *(a3 + 2);
  if (*(&v9 + 3) == 0.0)
  {
    v32 = v8;
    v33 = v7;
    v34 = v6;
    v35 = v5;
    v36 = v3;
    v37 = v4;
    v11 = *(a3 + 14);
    v12 = (v11 + -1.0) / *(&v9 + 2);
    *&v12 = v12;
    *v13.i32 = v11 / *(&v9 + 2);
    *&v9 = *v13.i32;
    v13.i32[1] = LODWORD(v12);
    v29 = vbsl_s8(vdup_lane_s32(vcgt_f32(*&v9, *&v12), 0), vrev64_s32(v13), v13);
    v14 = sub_1AF130548(self->_engineContext);
    if (v14.n128_f32[3] == 0.0)
    {
      v15 = 1.0;
    }

    else
    {
      v15 = v14.n128_f32[2] / v14.n128_f32[3];
    }

    v16 = *v29.i32;
    v17 = __tanpi(0.166666667);
    v18 = 0;
    if (v17 == 0.0)
    {
      v19 = 1.0;
    }

    else
    {
      v19 = 1.0 / v17;
    }

    v20 = v19;
    v21 = v16 + 1.0;
    if (*&v29.i32[1] > *v29.i32)
    {
      v21 = *&v29.i32[1];
    }

    v22 = v21 / (v16 - v21);
    *&v23 = v22;
    *&v22 = v22 * v16;
    *&v24 = 0;
    *(&v24 + 1) = __PAIR64__(-1.0, v23);
    *&v25 = 0;
    *(&v25 + 1) = LODWORD(v22);
    LODWORD(v22) = 0;
    *(&v22 + 1) = v15 * v20;
    v30[0] = LODWORD(v20);
    v30[1] = *&v22;
    v30[2] = v24;
    v30[3] = v25;
    do
    {
      v31[v18] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(v30[v18])), xmmword_1AFE20160, *&v30[v18], 1), xmmword_1AFE206C0, v30[v18], 2), xmmword_1AFE20BF0, v30[v18], 3);
      ++v18;
    }

    while (v18 != 4);
    v26 = v31[1];
    v27 = v31[2];
    v28 = v31[3];
    *a3 = v31[0];
    *(a3 + 1) = v26;
    *(a3 + 2) = v27;
    *(a3 + 3) = v28;
  }
}

- (float)_zFarForSkyboxRenderingProjectionMatrix:(id *)a3 defaultZFar:(float)a4
{
  v4 = 1000000.0;
  if (fabsf(a4) != INFINITY)
  {
    v4 = a4;
  }

  v5 = a4 <= 0.0;
  result = 1.0;
  if (!v5)
  {
    return v4;
  }

  return result;
}

- (void)renderBackground:(__CFXMaterialProperty *)a3 engineContext:(__CFXEngineContext *)a4 passInstance:(__CFXPassInstance *)a5
{
  v183 = *MEMORY[0x1E69E9840];
  v170 = 0;
  v10 = sub_1AF16679C(a3);
  v11 = sub_1AF167578(a3);
  v12 = sub_1AF130338(a4);
  v15 = v12;
  if (v12 && sub_1AF121B74(v12) != v11)
  {
    sub_1AF1302E4(a4, 0);
    v15 = 0;
  }

  if (v11)
  {
    if (!v15)
    {
      v15 = sub_1AF276584(v11, v10, a4);
      sub_1AF1302E4(a4, v15);
      CFRelease(v15);
      if (!v15)
      {
        return;
      }
    }

    v16 = sub_1AF276950(v15, a4, v10, &v161);
  }

  else
  {
    v16 = objc_msgSend_textureForMaterialProperty_(self, v13, a3, v14);
  }

  v17 = v16;
  v170 = v16;
  if (!v16)
  {
    return;
  }

  v144 = sub_1AF12DDCC(a4);
  if (objc_msgSend_textureType(v17, v18, v19, v20) == 5)
  {
    v21 = sub_1AF12E014(a4);
    v22 = self->_backgroundCubeProgram[self->_renderPassParameters.viewMapping];
    v23 = sub_1AF13050C(a4, 1);
    v24 = sub_1AF167434(a3);
    v151 = v23[2];
    v154 = *v23;
    v148 = v23[1];
    if (v24)
    {
      v145 = v23[3];
      v25 = sub_1AF167220(a3);
      v26 = 0;
      v27 = v25[1];
      v28 = v25[2];
      v29 = v25[3];
      v175 = *v25;
      v176 = v27;
      v177 = v28;
      v178 = v29;
      do
      {
        *(&v161 + v26) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v154, COERCE_FLOAT(*(&v175 + v26))), v148, *&v175.f32[v26 / 4], 1), v151, *(&v175 + v26), 2), v145, *(&v175 + v26), 3);
        v26 += 16;
      }

      while (v26 != 64);
      v148 = v162;
      v151 = v163;
      v154 = v161;
    }

    v30 = v21;
    v31 = sub_1AF13050C(self->_engineContext, 0);
    v32 = v31[3];
    v34 = *v31;
    v33 = v31[1];
    v173 = v31[2];
    v174 = v32;
    v171 = v34;
    v172 = v33;
    objc_msgSend__updateProjectionMatrixForOrthographicSkyboxRenderingIfNeeded_(self, v35, &v171, v36);
    v39 = 0;
    v40 = v171;
    v41 = v172;
    v42 = v173;
    v43 = v174;
    v175 = v154;
    v176 = v148;
    v177 = v151;
    v178 = xmmword_1AFE201A0;
    do
    {
      *(&v161 + v39) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v40, COERCE_FLOAT(*(&v175 + v39))), v41, *&v175.f32[v39 / 4], 1), v42, *(&v175 + v39), 2), v43, *(&v175 + v39), 3);
      v39 += 16;
    }

    while (v39 != 64);
    v146 = v161;
    v149 = v162;
    v45 = v163;
    v44 = v164;
  }

  else
  {
    v30 = sub_1AF130340(a4);
    v22 = self->_background2DProgram[self->_renderPassParameters.viewMapping];
    if (!sub_1AF167434(a3))
    {
      v155 = xmmword_1AFE201A0;
      v152 = xmmword_1AFE20180;
      v149 = xmmword_1AFE20160;
      v146 = xmmword_1AFE20150;
      goto LABEL_22;
    }

    v46 = sub_1AF167220(a3);
    v146 = *v46;
    v149 = v46[1];
    v45 = v46[2];
    v44 = v46[3];
  }

  v152 = v45;
  v155 = v44;
LABEL_22:
  objc_msgSend_pushDebugGroup_(self, v37, @"VFX - Draw world background", v38);
  v47 = sub_1AF20E1F8(self->_resourceManager, v30, 1);
  *&v181[7] = 0;
  *v181 = 0;
  v48 = sub_1AFDEA004(v47);
  v142 = v47;
  v49 = sub_1AFDEA078(v47);
  if (self->_currentClearColor.alpha == 1.0)
  {
    v50 = sub_1AF15BC40();
  }

  else
  {
    v50 = sub_1AF15BBC4();
  }

  eyeCount = self->_renderPassParameters.eyeCount;
  viewMapping = self->_renderPassParameters.viewMapping;
  if (self->_renderPassParameters.multiVertexOutputStreamGenerator == 2)
  {
    v54 = 2;
  }

  else
  {
    v54 = 1;
  }

  v182 = 0;
  *&v181[15] = 0;
  resourceManager = self->_resourceManager;
  *&v161 = 0;
  *(&v161 + 1) = v22;
  v162 = 0uLL;
  *&v163 = 0;
  *(&v163 + 1) = v50;
  LOWORD(v164) = 783;
  BYTE2(v164) = eyeCount;
  BYTE3(v164) = v54;
  DWORD1(v164) = 0;
  *(&v164 + 1) = v48;
  *&v165[0] = v49;
  BYTE8(v165[0]) = viewMapping;
  memset(&v165[1] + 8, 0, 24);
  *(v165 + 9) = *v181;
  v56 = objc_msgSend_renderResourceForProgramDesc_renderPassDesc_(resourceManager, v51, &v161, &self->_currentRenderPassDesc);
  renderEncoder = self->_renderEncoder;
  v61 = objc_msgSend_state(v56, v58, v59, v60);
  objc_msgSend_setRenderPipelineState_(renderEncoder->var3, v62, v61, v63);
  v66 = 608;
  if (!self->_renderPassParameters.viewMapping)
  {
    v66 = 600;
  }

  objc_msgSend_setRasterizerStates_(self, v64, *(&self->super.isa + v66), v65);
  v169 = sub_1AF166598(a3);
  sub_1AF1F905C(self->_renderEncoder, &v169, 4uLL, 0);
  v67 = sub_1AFDE8554(self->_resourceManager);
  if (objc_msgSend_pixelFormat(v17, v68, v69, v70) == 520 || objc_msgSend_pixelFormat(v17, v71, v72, v73) == 500)
  {
    v75 = sub_1AF20107C(self->_renderEncoder);
    sub_1AF1F3034(self->_currentCommandBuffer, &v170, 1, v76);
    objc_msgSend_setFragmentTexture_atTextureIndex_samplerState_atSamplerIndex_(v75, v77, v170, 0, v67, 0);
  }

  else
  {
    sub_1AF1F8FCC(self->_renderEncoder, v17, 0, v74);
    objc_msgSend_setFragmentSamplerState_atIndex_(self->_renderEncoder->var3, v78, v67, 0);
  }

  if (self->_renderPassParameters.viewMapping)
  {
    v141 = v30;
    if (!a5)
    {
      v79 = sub_1AF0D5194();
      if (os_log_type_enabled(v79, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE6784(v79, v80, v81, v82, v83, v84, v85, v86);
      }
    }

    if (self->_renderPassParameters.eyeCount)
    {
      v87 = 0;
      do
      {
        if (v87 >= 6)
        {
          v88 = sub_1AF0D5194();
          if (os_log_type_enabled(v88, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDE67FC(v179, &v180, v88);
          }
        }

        v89 = (&a5[15].var13 + 8 * v87);
        v90 = sub_1AF167434(a3);
        v153 = v89[1];
        v156 = *v89;
        v147 = v89[3];
        v150 = v89[2];
        if (v90)
        {
          v93 = sub_1AF167220(a3);
          v94 = 0;
          v95 = v93[1];
          v96 = v93[2];
          v97 = v93[3];
          v171 = *v93;
          v172 = v95;
          v173 = v96;
          v174 = v97;
          do
          {
            *(&v175 + v94) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v156, COERCE_FLOAT(*(&v171 + v94))), v153, *&v171.f32[v94 / 4], 1), v150, *(&v171 + v94), 2), v147, *(&v171 + v94), 3);
            v94 += 16;
          }

          while (v94 != 64);
          v153 = v176;
          v156 = v175;
          v147 = v178;
          v150 = v177;
        }

        v98 = &a5[17].var5[8 * v87 + 12];
        v99 = v98[1];
        v157 = *v98;
        v158 = v99;
        v100 = v98[3];
        v159 = v98[2];
        v160 = v100;
        objc_msgSend__updateProjectionMatrixForOrthographicSkyboxRenderingIfNeeded_(self, v91, &v157, v92, v141);
        v101 = 0;
        v102 = v157;
        v103 = v158;
        v104 = v159;
        v105 = v160;
        v171 = v156;
        v172 = v153;
        v173 = v150;
        v174 = v147;
        do
        {
          *(&v175 + v101) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v102, COERCE_FLOAT(*(&v171 + v101))), v103, *&v171.f32[v101 / 4], 1), v104, *(&v171 + v101), 2), v105, *(&v171 + v101), 3);
          v101 += 16;
        }

        while (v101 != 64);
        v106 = v176;
        v107 = v177;
        v108 = v178;
        v109 = (&v161 + 4 * v87);
        *v109 = v175;
        v109[1] = v106;
        v109[2] = v107;
        v109[3] = v108;
        *&v110 = sub_1AF1D0EBC(v144);
        v111 = &v167[64 * v87];
        *v111 = v110;
        v111[1] = v112;
        v111[2] = v113;
        v111[3] = v114;
        ++v87;
      }

      while (v87 < self->_renderPassParameters.eyeCount);
    }

    v115 = sub_1AF13050C(self->_engineContext, 0);
    var12 = a5[27].var12;
    *&var12 = *&var12;
    objc_msgSend__zFarForSkyboxRenderingProjectionMatrix_defaultZFar_(self, v117, v115, v118, *&var12);
    v168 = v119;
    sub_1AF176E98(self->_renderEncoder, &v161, 0x310uLL, 0);
    v30 = v141;
  }

  else
  {
    v161 = v146;
    v162 = v149;
    v163 = v152;
    v164 = v155;
    *&v123 = sub_1AF1D0EBC(v144);
    v165[0] = v123;
    v165[1] = v124;
    v165[2] = v125;
    v165[3] = v126;
    v127 = sub_1AF13050C(self->_engineContext, 0);
    v128 = a5[27].var12;
    *&v128 = *&v128;
    objc_msgSend__zFarForSkyboxRenderingProjectionMatrix_defaultZFar_(self, v129, v127, v130, *&v128);
    v166 = v131;
    sub_1AF176E98(self->_renderEncoder, &v161, 0x90uLL, 0);
  }

  if (self->_cache.geometry != v30)
  {
    self->_cache.geometry = v30;
    objc_msgSend__setMeshBuffers_(self, v120, v142, v122);
  }

  if (objc_msgSend_textureType(v170, v120, v121, v122, v141) == 5)
  {
    v133 = sub_1AFDEA208(v142);
    v136 = objc_msgSend_objectAtIndexedSubscript_(v133, v134, 0, v135);
    objc_msgSend__drawMeshElement_instanceCount_(self, v137, v136, 1);
  }

  else
  {
    sub_1AF2010C8(self->_renderEncoder, v132);
  }

  objc_msgSend_popDebugGroup(self, v138, v139, v140);
}

- (void)renderVideoBackground:(__CFXImageProxy *)a3 engineContext:(__CFXEngineContext *)a4 materialProperty:(__CFXMaterialProperty *)a5
{
  v86 = *MEMORY[0x1E69E9840];
  objc_msgSend_pushDebugGroup_(self, a2, @"VFX - Draw video background", a4);
  v9 = sub_1AF276754(a3);
  v10 = sub_1AF130338(a4);
  if (!v10)
  {
    goto LABEL_4;
  }

  v11 = v10;
  if (sub_1AF121B74(v10) != a3)
  {
    sub_1AF1302E4(a4, 0);
LABEL_4:
    v12 = sub_1AF1C4F6C();
    v11 = sub_1AF276584(a3, v12, a4);
    sub_1AF1302E4(a4, v11);
    CFRelease(v11);
    goto LABEL_6;
  }

  v12 = sub_1AF1C4F6C();
LABEL_6:
  v13 = sub_1AF276950(v11, a4, v12, v84);
  v83 = v13;
  if (!v13)
  {
    return;
  }

  v14 = v13;
  v67 = a5;
  v15 = sub_1AF130340(a4);
  v68 = sub_1AF20E1F8(self->_resourceManager, v15, 1);
  *(v85 + 7) = 0;
  *&v85[0] = 0;
  v16 = sub_1AF12F10C(self->_engineContext);
  if (v16)
  {
    v17 = sub_1AF1BB260(v16);
  }

  else
  {
    v17 = 0;
  }

  v18 = sub_1AF15C4BC(v17);
  v65 = v15;
  if ((*(self + 144) & 4) != 0 && v17 && self->_renderPassParameters.isMainPass && v18 && sub_1AF161288(v18))
  {
    v19 = 592;
  }

  else
  {
    v19 = 584;
  }

  v20 = *(&self->super.isa + v19);
  v21 = sub_1AFDEA004(v68);
  v22 = sub_1AFDEA078(v68);
  eyeCount = self->_renderPassParameters.eyeCount;
  viewMapping = self->_renderPassParameters.viewMapping;
  if (self->_renderPassParameters.multiVertexOutputStreamGenerator == 2)
  {
    v26 = 2;
  }

  else
  {
    v26 = 1;
  }

  *(&v85[1] + 7) = 0;
  *(v85 + 15) = 0;
  resourceManager = self->_resourceManager;
  v70 = 0;
  v71 = v20;
  v72 = 0u;
  v73 = 0u;
  v74 = 783;
  v75 = eyeCount;
  v76 = v26;
  v77 = 0;
  v78 = v21;
  v79 = v22;
  v80 = viewMapping;
  *&v81[15] = *(v85 + 15);
  *v81 = v85[0];
  v82 = 0;
  v28 = objc_msgSend_renderResourceForProgramDesc_renderPassDesc_(resourceManager, v23, &v70, &self->_currentRenderPassDesc, v65);
  renderEncoder = self->_renderEncoder;
  v33 = objc_msgSend_state(v28, v30, v31, v32);
  objc_msgSend_setRenderPipelineState_(renderEncoder->var3, v34, v33, v35);
  objc_msgSend_setRasterizerStates_(self, v36, self->_backgroundRasterizerStates, v37);
  v38 = sub_1AFDE8554(self->_resourceManager);
  if (objc_msgSend_pixelFormat(v14, v39, v40, v41) == 520 || objc_msgSend_pixelFormat(v14, v42, v43, v44) == 500)
  {
    v46 = sub_1AF20107C(self->_renderEncoder);
    sub_1AF1F3034(self->_currentCommandBuffer, &v83, 1, v47);
    objc_msgSend_setFragmentTexture_atTextureIndex_samplerState_atSamplerIndex_(v46, v48, v83, 0, v38, 0);
  }

  else
  {
    sub_1AF1F8FCC(self->_renderEncoder, v14, 0, v45);
    objc_msgSend_setFragmentSamplerState_atIndex_(self->_renderEncoder->var3, v49, v38, 0);
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      if (v9 == 1)
      {
        __asm { FMOV            V1.2S, #1.0 }

        v70 = 0x3F80000000000000;
        v71 = _D1;
        *&v72 = 0;
        *(&v72 + 1) = 1065353216;
      }
    }

    else
    {
      v55 = sub_1AF0D5194();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDE68BC();
      }
    }

    goto LABEL_35;
  }

  if (v9 == 2)
  {
    sub_1AF2014BC(a3, a4);
  }

  else if (v9 != 3)
  {
    goto LABEL_35;
  }

  *&v56 = sub_1AF2014BC(a3, a4);
  v70 = v56;
  v71 = v57;
  *&v72 = v58;
  *(&v72 + 1) = v59;
LABEL_35:
  sub_1AF176E98(self->_renderEncoder, &v70, 0x20uLL, 0);
  v69 = sub_1AF166598(v67);
  sub_1AF1F905C(self->_renderEncoder, &v69, 4uLL, 0);
  if (self->_cache.geometry != v66)
  {
    self->_cache.geometry = v66;
    objc_msgSend__setMeshBuffers_(self, v60, v68, v61);
  }

  sub_1AF2016F4(self->_renderEncoder, v60);
  objc_msgSend_popDebugGroup(self, v62, v63, v64);
}

- (void)authoring_renderMesh:(uint64_t)a3 meshElement:(uint64_t)a4 withProgram:(uint64_t)a5 uniforms:(const void *)a6 uniformsLength:(size_t)a7 rasterizerStates:(uint64_t)a8 blendStates:(uint64_t)a9 texture:(uint64_t)a10 sampler:(uint64_t)a11 depthBias:(char)a12
{
  if (sub_1AF218E70(a1 + 200))
  {
    v59 = a7;
    v19 = sub_1AF20E1F8(*(a1 + 112), a3, 1);
    if (sub_1AF1A57DC(a3))
    {
      if (!sub_1AFDEA228(v19))
      {
        v20 = sub_1AF0D5194();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDE6924(v20, v21, v22, v23, v24, v25, v26, v27);
        }
      }
    }

    v28 = sub_1AFDE7F98(*(a1 + 112));
    v29 = sub_1AF1A73D4(a4);
    v60 = v28;
    sub_1AFDEA4AC(v28, v29, v30);
    if (*(a1 + 468) == 2)
    {
      v31 = 2;
    }

    else
    {
      v31 = 1;
    }

    v32 = *(a1 + 465);
    v33 = sub_1AFDEA004(v19);
    v34 = sub_1AFDEA078(v19);
    v35 = *(a1 + 467);
    v36 = *(a1 + 112);
    v61[0] = 0;
    v61[1] = a5;
    memset(&v61[2], 0, 24);
    v61[5] = a9;
    v62 = 15;
    v63 = v32;
    v64 = v31;
    v65 = 0;
    v66 = v33;
    v67 = v34;
    v68 = v35;
    v69 = 0u;
    memset(v70, 0, sizeof(v70));
    v38 = objc_msgSend_renderResourceForProgramDesc_renderPassDesc_(v36, v37, v61, a1 + 200);
    v39 = *(a1 + 424);
    v43 = objc_msgSend_state(v38, v40, v41, v42);
    objc_msgSend_setRenderPipelineState_(*(v39 + 16), v44, v43, v45);
    *(a1 + 18896) = 0;
    objc_msgSend_setRasterizerStates_(a1, v46, a8, v47);
    if (a6)
    {
      sub_1AF176E98(*(a1 + 424), a6, v59, 1);
    }

    if (a12)
    {
      LODWORD(v51) = -2.0;
      LODWORD(v52) = -2.0;
      objc_msgSend_setDepthBias_slopeScale_clamp_(*(*(a1 + 424) + 16), v48, v49, v50, v51, v52, 0.0);
    }

    if (a10)
    {
      v53 = objc_msgSend_renderResourceForImage_sampler_options_engineContext_didFallbackToDefaultTexture_(*(a1 + 112), v48, a10, a11, 0, *(a1 + 136), 0);
      sub_1AF1F8FCC(*(a1 + 424), v53, 0, v54);
    }

    if (*(a1 + 18632) != a3)
    {
      *(a1 + 18632) = a3;
      objc_msgSend__setMeshBuffers_(a1, v48, v19, v50);
    }

    objc_msgSend__drawMeshElement_instanceCount_(a1, v48, v60, 1, v59);
    if (a12)
    {
      objc_msgSend_setDepthBias_slopeScale_clamp_(*(*(a1 + 424) + 16), v55, v56, v57, 0.0, 0.0, 0.0);
    }
  }

  else if ((byte_1EB6586A0 & 1) == 0)
  {
    byte_1EB6586A0 = 1;
    v58 = sub_1AF0D5194();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE68F0();
    }
  }
}

- (void)authoring_drawPrimitives:(unint64_t)a3 vertexCount:(unint64_t)a4 instanceCount:(unint64_t)a5 vertexBuffers:(const void *)a6 offsets:(const unint64_t *)a7 range:(_NSRange)a8 vertexDescriptor:(id)a9 withProgram:(__CFXProgram *)a10 uniforms:(const void *)a11 uniformsLength:(unint64_t)a12 rasterizerStates:(__CFXRasterizerStates *)a13 blendStates:(__CFXBlendStates *)a14
{
  if (sub_1AF218E70(&self->_currentRenderPassDesc))
  {
    v46 = a5;
    v47 = a3;
    v48 = a4;
    self->_cache.geometry = 0;
    if (self->_renderPassParameters.multiVertexOutputStreamGenerator == 2)
    {
      v23 = 2;
    }

    else
    {
      v23 = 1;
    }

    v59 = 0;
    v58 = 0;
    eyeCount = self->_renderPassParameters.eyeCount;
    v25 = objc_msgSend_hash(a9, v20, v21, v22, a8.location, a8.length);
    viewMapping = self->_renderPassParameters.viewMapping;
    resourceManager = self->_resourceManager;
    v49[0] = 0;
    v49[1] = a10;
    memset(&v49[2], 0, 24);
    v49[5] = a14;
    v50 = 15;
    v51 = eyeCount;
    v52 = v23;
    v53 = 0;
    v54 = a9;
    v55 = v25;
    v56 = viewMapping;
    v57 = 0;
    v60 = 0u;
    v61 = 0u;
    v29 = objc_msgSend_renderResourceForProgramDesc_renderPassDesc_(resourceManager, v28, v49, &self->_currentRenderPassDesc);
    renderEncoder = self->_renderEncoder;
    v34 = objc_msgSend_state(v29, v31, v32, v33);
    objc_msgSend_setRenderPipelineState_(renderEncoder->var3, v35, v34, v36);
    objc_msgSend_setRasterizerStates_(self, v37, a13, v38);
    if (a11)
    {
      sub_1AF176E98(self->_renderEncoder, a11, a12, 1);
    }

    objc_msgSend_setVertexBuffers_offsets_withRange_(self->_renderEncoder->var3, v39, a6, a7, v44, v45);
    v41 = self->_renderEncoder;
    var3 = v41->var3;
    if (v41->var0 * v46 < 2)
    {
      objc_msgSend_drawPrimitives_vertexStart_vertexCount_(var3, v40, v47, 0, v48);
    }

    else
    {
      objc_msgSend_drawPrimitives_vertexStart_vertexCount_instanceCount_(var3, v40, v47, 0, v48);
    }
  }

  else if ((byte_1EB6586A1 & 1) == 0)
  {
    byte_1EB6586A1 = 1;
    v43 = sub_1AF0D5194();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE699C();
    }
  }
}

- (void)authoring_drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 instanceCount:(unint64_t)a7 vertexBuffers:(const void *)a8 offsets:(const unint64_t *)a9 range:(_NSRange)a10 vertexDescriptor:(id)a11 withProgram:(__CFXProgram *)a12 uniforms:(const void *)a13 uniformsLength:(unint64_t)a14 rasterizerStates:(__CFXRasterizerStates *)a15 blendStates:(__CFXBlendStates *)a16
{
  if (sub_1AF218E70(&self->_currentRenderPassDesc))
  {
    v50 = a3;
    v51 = a4;
    v52 = a6;
    self->_cache.geometry = 0;
    if (self->_renderPassParameters.multiVertexOutputStreamGenerator == 2)
    {
      v26 = 2;
    }

    else
    {
      v26 = 1;
    }

    v63 = 0;
    v62 = 0;
    eyeCount = self->_renderPassParameters.eyeCount;
    v28 = objc_msgSend_hash(a11, v23, v24, v25, a9, a10.location, a10.length);
    viewMapping = self->_renderPassParameters.viewMapping;
    resourceManager = self->_resourceManager;
    v53[0] = 0;
    v53[1] = a12;
    memset(&v53[2], 0, 24);
    v53[5] = a16;
    v54 = 15;
    v55 = eyeCount;
    v56 = v26;
    v57 = 0;
    v58 = a11;
    v59 = v28;
    v60 = viewMapping;
    v61 = 0;
    v64 = 0u;
    v65 = 0u;
    v32 = objc_msgSend_renderResourceForProgramDesc_renderPassDesc_(resourceManager, v31, v53, &self->_currentRenderPassDesc);
    renderEncoder = self->_renderEncoder;
    v37 = objc_msgSend_state(v32, v34, v35, v36);
    objc_msgSend_setRenderPipelineState_(renderEncoder->var3, v38, v37, v39);
    objc_msgSend_setRasterizerStates_(self, v40, a15, v41);
    if (a13)
    {
      sub_1AF176E98(self->_renderEncoder, a13, a14, 1);
    }

    objc_msgSend_setVertexBuffers_offsets_withRange_(self->_renderEncoder->var3, v42, a8, v47, v48, v49);
    v44 = self->_renderEncoder;
    var3 = v44->var3;
    if (v44->var0 * a7 < 2)
    {
      objc_msgSend_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_(var3, v43, v50, v51, a5, v52, 0);
    }

    else
    {
      objc_msgSend_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_instanceCount_(var3, v43, v50, v51, a5, v52, 0);
    }
  }

  else if ((byte_1EB6586A2 & 1) == 0)
  {
    byte_1EB6586A2 = 1;
    v46 = sub_1AF0D5194();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE699C();
    }
  }
}

- (void)authoring_drawDeformersForNode:(__CFXNode *)a3 authoringEnvironment:(void *)a4
{
  if (a3)
  {
    v7 = sub_1AF1B7558(a3);
    if (v7)
    {
      v8 = v7;
      if (sub_1AF16B74C(v7))
      {
        v9 = sub_1AF1B75A0(a3);
        if (v9)
        {
          v11 = sub_1AF1B40A0(v9);
          v13 = objc_msgSend_renderResourceForDeformerStack_node_dataKind_(self->_resourceManager, v12, v8, a3, v11);
        }

        else
        {
          v13 = objc_msgSend_renderResourceForDeformerStack_node_dataKind_(self->_resourceManager, v10, v8, a3, 1);
        }

        sub_1AFDE287C(v13, a4, self, v14);
      }
    }
  }
}

- (void)processRendererElements:(id *)a3 count:(unsigned int)a4 engineIterationContext:(id *)a5
{
  LODWORD(i) = a4;
  *&v47[5] = *MEMORY[0x1E69E9840];
  var1 = a5->var1;
  var2 = a5->var2;
  v43 = *(a5->var0 + 20);
  v42 = sub_1AF130504(var1);
  v41 = sub_1AF12EDD8(var1);
  if (self->_debugOptions & 2) != 0 && (BYTE2(var2[27].var5[4]))
  {
    v12 = 1;
    objc_msgSend_setTriangleFillMode_(self->_renderEncoder->var3, v10, 1, v11);
    sub_1AF2021D8(self->_renderEncoder, 1, v13, v14);
  }

  else
  {
    v12 = 0;
  }

  v15 = a5;
  objc_msgSend_startProcessingRendererElementsWithEngineIterationContext_(self, v10, a5, v11);
  if (!a5->var10)
  {
    return;
  }

  v40 = sub_1AF1302DC(var1);
  v39 = sub_1AF1D0188(*&var2[27].var7);
  if (sub_1AF12E2A0(var1))
  {
    v19 = sub_1AF1310A0(var1);
    if (!i)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v19 = 0;
    if (!i)
    {
      goto LABEL_46;
    }
  }

  v36 = v12;
  v20 = 0;
  v21 = 0;
  v38 = a3;
  v37 = i;
  for (i = i; i; --i)
  {
    v22 = *a3++;
    v15 = v15 & 0xFFFFFFFF00000000 | v22;
    v23 = sub_1AF1474D8(v43, v15);
    v24 = v23;
    if (a5->var12 && !sub_1AF146200(v23))
    {
LABEL_42:
      v27 = v21;
      v24 = v20;
      goto LABEL_43;
    }

    CurrentPassHash = objc_msgSend_getCurrentPassHash(self, v16, v17, v18, v36);
    v26 = sub_1AF1D632C(var2);
    v27 = sub_1AF1402E0(v41, v24, v26, CurrentPassHash);
    if (v20)
    {
      if (!sub_1AF145EB0(v20) && !sub_1AF145EB0(v24) && v20[2] == *(v24 + 16) && v20[3] == *(v24 + 24) && v20[6] == *(v24 + 48) && v21 == v27 && v20[7] == *(v24 + 56) && v20[8] == *(v24 + 64) && sub_1AF16B7C8(v20[1], *(v24 + 8)) && sub_1AF12DBA4(v39, *(v24 + 8)))
      {
        goto LABEL_42;
      }

      sub_1AF202238(self, v20, var2);
      sub_1AF12DB94(v39);
      v21 = 0;
    }

    if (!sub_1AF145EB0(v24) && !v40 && v27 && sub_1AF13E540(v27) && (v28 = *(v24 + 16)) != 0 && sub_1AF1B3F80(v28))
    {
      if ((sub_1AF13E540(v27) & 1) == 0)
      {
        v29 = sub_1AF0D5194();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDE69D0(v46, v47, v29);
        }
      }

      sub_1AF12DBA4(v39, *(v24 + 8));
    }

    else
    {
      if (v19)
      {
        sub_1AF1B7A3C(*(v24 + 8), &v45);
        sub_1AF22D78C(v19, 0, xmmword_1AFE22A50, unk_1AFE22A60);
        sub_1AF202238(self, v24, var2);
        sub_1AF22D814(v19);
      }

      else
      {
        sub_1AF202238(self, v24, var2);
      }

      v24 = 0;
      v27 = v21;
    }

    if (v42 && ((*(v42 + 16))() & 1) != 0)
    {
      break;
    }

    ++self->__engineStats->drawStep;
LABEL_43:
    v20 = v24;
    v21 = v27;
  }

  a3 = v38;
  LODWORD(i) = v37;
  LODWORD(v12) = v36;
  if (v24)
  {
    sub_1AF202238(self, v24, var2);
    sub_1AF12DB94(v39);
  }

LABEL_46:
  isMainPass = self->_processingContext.isMainPass;
  if ((objc_msgSend_debugOptions(self, v16, v17, v18, v36) & 4) != 0 && isMainPass)
  {
    objc_msgSend_drawWireframeOverlayForElements_range_store_passInstance_(self, v31, a3, 0, i, v43, a5->var2);
  }

  if (v12)
  {
    sub_1AF2021D8(self->_renderEncoder, 0, v32, v33);
    objc_msgSend_setTriangleFillMode_(self->_renderEncoder->var3, v34, 0, v35);
  }

  objc_msgSend_stopProcessingRendererElements_(self, v31, isMainPass, v33);
}

- (void)startProcessingRendererElementsWithEngineIterationContext:(id *)a3
{
  v5 = sub_1AF12DDCC(a3->var1);
  objc_msgSend__fillProcessingContextWithEngineIterationContext_(self, v6, a3, v7);
  objc_msgSend__fillFrameUniformsWithWorld_(self, v8, v5, v9);
  self->_renderGraphParticleMaterialOverride = a3->var5;
  if (a3->var11)
  {

    objc_msgSend__fillVFXCoreRenderData(self, v10, v11, v12);
  }
}

- (uint64_t)_fillProcessingContextWithCullingContext:(uint64_t)a3
{
  v5 = *(a3 + 14688);
  *(a1 + 640) = sub_1AF1D00F8(v5);
  *(a1 + 688) = sub_1AF1D0218(v5);
  result = sub_1AF1D0188(v5);
  *(a1 + 648) = result;
  *(a1 + 664) = a3;
  *(a1 + 656) = 0;
  *(a1 + 672) = 0;
  *(a1 + 680) = 256;
  *(a1 + 696) = 0;
  return result;
}

- (void)_fillProcessingContextWithEngineIterationContext:(id *)a3
{
  if (a3->var1 != self->_engineContext)
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE6BF8(v6, a2, v7, v3, v8, v9, v10, v11);
    }
  }

  var2 = a3->var2;
  if (!var2)
  {
    v13 = sub_1AF0D5194();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE6C70(v13, a2, v14, v3, v15, v16, v17, v18);
    }
  }

  objc_msgSend__fillProcessingContextWithCullingContext_(self, a2, &var2->var7, v3);
  self->_processingContext.renderingOverrides = sub_1AF1D632C(var2);
  self->_processingContext.passInstance = var2;
  var4 = a3->var4;
  self->_processingContext.renderGraphPass = a3->var3;
  self->_processingContext.passRequiresLighting = a3->var6;
  self->_processingContext.isMainPass = a3->var9;
  self->_processingContext.programHashCodeStoreKey = var4;
}

- (void)updateFrameConstants
{
  v3 = sub_1AF1302D4(self->_engineContext);
  v4 = modf(v3, &__y);
  *&self->_anon_2d0[768] = sub_1AF130770(self->_engineContext, v5, v6, v7);
  v8 = v3;
  *&self->_anon_2d0[440] = v8;
  v9 = v4;
  *&self->_anon_2d0[444] = v9;
  v10 = sub_1AF1302B4(self->_engineContext);
  *&self->_anon_2d0[448] = v10;
}

- (void)_updateViewDependentConstants:(uint64_t)a3 world:(__n128 *)a4
{
  if (*(a1 + 467))
  {
    v4 = *(a1 + 465);
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v7 = 0;
    v8 = (a1 + 720);
    v61 = a3 + 7168;
    v62 = a3 + 0x2000;
    v9 = a3 + 10240;
    v10 = a3 + 9216;
    v59 = a3 + 11264;
    v11 = v4;
    __asm { FMOV            V0.4S, #1.0 }

    v60 = _Q0;
    v17 = a1 + 736;
    do
    {
      v18 = *(a1 + 464);
      if (v7)
      {
        memcpy((v17 - 16), v8, 0x310uLL);
      }

      v19 = v7 + v18;
      v20 = (v62 + ((v7 + v18) << 6));
      v21 = *v20;
      v22 = *(v20 + 1);
      v23 = *(v20 + 2);
      v24 = *(v20 + 3);
      *(v17 - 16) = *v20;
      *v17 = v22;
      *(v17 + 16) = v23;
      *(v17 + 32) = v24;
      v25 = (v61 + ((v7 + v18) << 6));
      v26 = v25[1];
      v27 = v25[2];
      v28 = v25[3];
      *(v17 + 48) = *v25;
      *(v17 + 64) = v26;
      *(v17 + 80) = v27;
      *(v17 + 96) = v28;
      v29 = vmulq_f32(v21, v21);
      v30 = vmulq_f32(v22, v22);
      v31 = vmulq_f32(v23, v23);
      v32 = vzip1q_s32(v29, v31);
      v33 = vzip2q_s32(v29, v31);
      v34 = vtrn2q_s32(v29, v30);
      v34.i32[2] = v31.i32[1];
      v35 = vaddq_f32(vzip1q_s32(v33, vdupq_laneq_s32(v30, 2)), vaddq_f32(vzip1q_s32(v32, v30), v34));
      v36 = vceqzq_f32(v35);
      v36.i32[3] = 0;
      v37 = vbslq_s8(vcltzq_s32(v36), v35, vdivq_f32(v60, v35));
      *(v17 + 672) = vmulq_n_f32(v21, v37.f32[0]);
      *(v17 + 688) = vmulq_lane_f32(v22, *v37.f32, 1);
      *(v17 + 704) = vmulq_laneq_f32(v23, v37, 2);
      *(v17 + 720) = v24;
      v38 = (v9 + ((v7 + v18) << 6));
      v39 = v38[1];
      v40 = v38[2];
      v41 = v38[3];
      *(v17 + 176) = *v38;
      *(v17 + 192) = v39;
      *(v17 + 208) = v40;
      *(v17 + 224) = v41;
      v64.columns[0] = v21;
      v64.columns[1] = v22;
      v64.columns[2] = v23;
      v64.columns[3] = v24;
      sub_1AF1D0B30(a4, &v64);
      v42 = v64.columns[1];
      v43 = v64.columns[2];
      v44 = v64.columns[3];
      *(v17 + 240) = v64.columns[0];
      *(v17 + 256) = v42;
      *(v17 + 272) = v43;
      *(v17 + 288) = v44;
      v45 = (v10 + ((v7 + v18) << 6));
      v46 = v45[1];
      v47 = v45[2];
      v48 = v45[3];
      *(v17 + 112) = *v45;
      *(v17 + 128) = v46;
      *(v17 + 144) = v47;
      *(v17 + 160) = v48;
      if (sub_1AF130540(*(a1 + 136)))
      {
        v49 = (v59 + (v19 << 6));
        v50 = v49[1];
        v51 = v49[2];
        v52 = v49[3];
        *(v17 + 304) = *v49;
        *(v17 + 320) = v50;
        *(v17 + 336) = v51;
        *(v17 + 352) = v52;
        v53 = sub_1AF12F10C(*(a3 + 14696));
        if (v53)
        {
          v54 = sub_1AF1BB260(v53);
          if (v54)
          {
            v55 = v54;
            if (sub_1AF15CEC0(v54))
            {
              v56 = sub_1AF15C3C4(v55);
              *(v17 + 436) = sub_1AF160FEC(v56) * 0.5;
            }
          }
        }
      }

      v57 = &v8[784 * v19];
      *(v17 + 512) = __invert_f4(v57[2]);
      *(v17 + 576) = __invert_f4(v57[3]);
      v58 = sub_1AF125C8C(a3, v7);
      *(v17 + 656) = vextq_s8(v58, v58, 8uLL);
      ++v7;
      v17 += 784;
    }

    while (v11 != v7);
  }
}

- (void)_fillFrameUniformsWithWorld:(__CFXWorld *)a3
{
  v5 = sub_1AF1384DC(self->_processingContext.lightingSystem);
  *&self->_anon_2d0[392] = v6;
  *&self->_anon_2d0[384] = v5;
  v7 = sub_1AF12FAE8(self->_engineContext, 0, 0);
  v31 = *(v7 + 48);
  v32 = *(v7 + 32);
  v8 = sub_1AF12EF08(self->_engineContext);
  *&self->_anon_2d0[400] = *sub_1AF1D048C(a3);
  if (*(&v32 + 3) == 0.0 && sub_1AF28A2DC())
  {
    v9 = xmmword_1AFE20180;
  }

  else
  {
    sub_1AF1D04D4(a3, v8);
  }

  *&self->_anon_2d0[416] = v9;
  __asm { FMOV            V1.2S, #16.0 }

  v15 = vmaxnm_f32(*self->_currentRenderSize, _D1);
  *self->_currentRenderSize = v15;
  __asm { FMOV            V1.2S, #1.0 }

  *&self->_anon_2d0[432] = vdiv_f32(_D1, v15);
  v17 = sub_1AF1D005C(a3, 0);
  if (v17)
  {
    v19 = v17;
    if (sub_1AF166220(v17) || (v20 = sub_1AF1676A0(v19), v21 = 1.0, v20))
    {
      v21 = sub_1AF166598(v19);
    }

    *&self->_anon_2d0[456] = v21;
    v17 = sub_1AF167220(v19);
  }

  else
  {
    *&self->_anon_2d0[456] = 1065353216;
  }

  v22 = MEMORY[0x1E69E9B18];
  if (v17)
  {
    v22 = v17;
  }

  v23 = v22[1];
  v24 = v22[2];
  v25 = v22[3];
  *&self->_anon_2d0[464] = *v22;
  *&self->_anon_2d0[480] = v23;
  *&self->_anon_2d0[496] = v24;
  v26.i32[1] = DWORD1(v32);
  v26.f32[0] = *(&v31 + 2) / *(&v32 + 2);
  v27 = (*(&v31 + 2) + -1.0) / *(&v32 + 2);
  if (*(&v32 + 3) != 0.0)
  {
    v27 = *(&v31 + 2) / (*(&v32 + 2) + 1.0);
  }

  *&v27 = v27;
  v28 = vcgt_f32(v26, *&v27);
  v26.i32[1] = LODWORD(v27);
  *&self->_anon_2d0[512] = v25;
  *&self->_anon_2d0[656] = vbsl_s8(vdup_lane_s32(v28, 0), vrev64_s32(v26), v26);
  if (self->_processingContext.passRequiresLighting)
  {
    sub_1AF130864(self->_engineContext);
    sub_1AF1F6CD8(&self->_anon_4190[144], self->_processingContext.cullingContext);
    memcpy(&self->_anon_4190[336], __src, 0x150uLL);
    *&self->_anon_2d0[752] = *&self->_anon_4190[384];
  }

  objc_msgSend__updateViewDependentConstants_world_(self, v18, self->_processingContext.cullingContext, a3, v31);
  if ((sub_1AF13103C(self->_engineContext) & 1) == 0)
  {
    if (self->_renderPassParameters.viewMapping)
    {
      eyeCount = self->_renderPassParameters.eyeCount;
    }

    else
    {
      eyeCount = 1;
    }

    self->_worldUniforms.impl._buffer = CFXBufferAllocatorPerFrameAllocateWithBytes(self->_frameConstantBufferPool.impl, self->_anon_2d0, 784 * eyeCount);
    *&self->_worldUniforms.impl._offset = v30;
  }
}

- (void)_fillVFXCoreRenderData
{
  if (self->_renderPassParameters.viewMapping)
  {
    eyeCount = self->_renderPassParameters.eyeCount;
  }

  else
  {
    eyeCount = 1;
  }

  v5 = eyeCount;
  cullingContext = self->_processingContext.cullingContext;
  if (eyeCount)
  {
    v6 = (self->_processingContext.cullingContext + 64 * self->_renderPassParameters.renderSliceIndex + 7216);
    v7 = 0uLL;
    v8 = v5;
    do
    {
      v9 = *v6;
      v6 += 4;
      v2.i32[1] = v9.i32[1];
      v7 = vaddq_f32(v7, v9);
      --v8;
    }

    while (v8);
  }

  else
  {
    v7 = 0uLL;
  }

  *v2.i32 = v5;
  v10 = vdivq_f32(v7, vdupq_lane_s32(v2, 0));
  if (v5 >= 2)
  {
    v11 = 2;
  }

  else
  {
    v11 = v5;
  }

  v102 = v11;
  if (v5 > 2 && (byte_1EB6586A3 & 1) == 0)
  {
    byte_1EB6586A3 = 1;
    v103 = v10;
    v12 = sub_1AF0D5194();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    v10 = v103;
    if (v13)
    {
      sub_1AFDE6CE8(v5, v12);
      v10 = v103;
    }
  }

  anon_4440 = self->_anon_4440;
  *&self->_anon_4440[800] = v10;
  *&v14 = *self->_currentRenderSize;
  *(&v14 + 1) = *&self->_anon_2d0[432];
  *&self->_anon_4440[816] = v14;
  *&self->_anon_4440[832] = v102;
  *&self->_anon_4440[836] = self->_renderPassParameters.multiVertexOutputStreamGenerator == 2;
  if (v5)
  {
    v15 = 0;
    v16 = xmmword_1AFE20150;
    v17 = xmmword_1AFE20160;
    v18 = xmmword_1AFE20180;
    do
    {
      v20 = 0;
      v21 = (cullingContext + 64 * v15 + 11264);
      v22 = *v21;
      v23 = v21[1];
      v24 = v21[2];
      v25 = v21[3];
      v26 = *&self->_anon_4440[800];
      HIDWORD(v26) = 1.0;
      v105 = v16;
      v106 = v17;
      v107 = v18;
      v108 = v26;
      do
      {
        *(&v109 + v20) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, COERCE_FLOAT(*(&v105 + v20))), v23, *(&v105 + v20), 1), v24, *(&v105 + v20), 2), v25, *(&v105 + v20), 3);
        v20 += 16;
      }

      while (v20 != 64);
      v27 = 0;
      v28 = v110;
      v29 = v111;
      v30 = v112;
      v31 = &self->_anon_4440[64 * v15 + 992];
      *v31 = v109;
      *(v31 + 1) = v28;
      *(v31 + 2) = v29;
      *(v31 + 3) = v30;
      v32 = &self->_anon_2d0[784 * v15];
      v33 = *v32;
      v34 = *(v32 + 1);
      v35 = *(v32 + 2);
      v36 = *(v32 + 3);
      v105 = v16;
      v106 = v17;
      v107 = v18;
      v108 = v26;
      do
      {
        *(&v109 + v27) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v33, COERCE_FLOAT(*(&v105 + v27))), v34, *(&v105 + v27), 1), v35, *(&v105 + v27), 2), v36, *(&v105 + v27), 3);
        v27 += 16;
      }

      while (v27 != 64);
      v37 = 0;
      v38 = v109;
      v39 = v110;
      v40 = v111;
      v41 = v112;
      v42 = &anon_4440[64 * v15];
      *v42 = v109;
      *(v42 + 1) = v39;
      *(v42 + 2) = v40;
      *(v42 + 3) = v41;
      v43 = *(v32 + 8);
      v44 = *(v32 + 9);
      v45 = *(v32 + 10);
      v46 = *(v32 + 11);
      v105 = v38;
      v106 = v39;
      v107 = v40;
      v108 = v41;
      do
      {
        *(&v109 + v37) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v43, COERCE_FLOAT(*(&v105 + v37))), v44, *(&v105 + v37), 1), v45, *(&v105 + v37), 2), v46, *(&v105 + v37), 3);
        v37 += 16;
      }

      while (v37 != 64);
      v47 = v110;
      v48 = v111;
      v49 = v112;
      v50 = &self->_anon_4440[64 * v15 + 128];
      *v50 = v109;
      *(v50 + 1) = v47;
      *(v50 + 2) = v48;
      *(v50 + 3) = v49;
      v51 = &self->_anon_4440[64 * v15 + 256];
      v52 = *(v32 + 8);
      v53 = *(v32 + 9);
      v54 = *(v32 + 11);
      *(v51 + 2) = *(v32 + 10);
      *(v51 + 3) = v54;
      *v51 = v52;
      *(v51 + 1) = v53;
      v55 = &self->_anon_4440[64 * v15 + 384];
      v56 = *(v32 + 33);
      v57 = *(v32 + 34);
      v58 = *(v32 + 36);
      *(v55 + 2) = *(v32 + 35);
      *(v55 + 3) = v58;
      *v55 = v56;
      *(v55 + 1) = v57;
      *&self->_anon_4440[16 * v15 + 512] = vsubq_f32(*(cullingContext + 4 * v15 + 451), *&self->_anon_4440[800]);
      v59 = sub_1AF125C8C(cullingContext, v15);
      v19 = &self->_anon_4440[816];
      v60 = vld1q_dup_f64(v19);
      *&self->_anon_4440[16 * v15++ + 928] = vdivq_f32(v59, v60);
      v17 = xmmword_1AFE20160;
      v16 = xmmword_1AFE20150;
      v18 = xmmword_1AFE20180;
    }

    while (v15 != v102);
  }

  sub_1AFB1D8C4(anon_4440, 0);
  sub_1AFB1D910(anon_4440, *&self->_anon_2d0[656]);
  sub_1AFB1D8EC();
  v61 = *&self->_anon_2d0[400];
  v62 = HIDWORD(*&self->_anon_2d0[400]);
  *&self->_anon_4440[1120] = *&self->_anon_2d0[416];
  v63 = WORD1(v61) & 0x8000;
  v64 = (v61 >> 23);
  v65 = v64 - 112;
  v66 = v63 | 0x7BFF;
  if ((v61 & 0x7FFFFF) != 0)
  {
    LOWORD(v67) = v63 + 1;
  }

  else
  {
    v67 = WORD1(v61) & 0x8000;
  }

  v68 = v67 | 0x7C00;
  if (v64 == 255)
  {
    v66 = v68;
  }

  v69 = v64 - 113;
  if (v64 >= 0x71)
  {
    v70 = v66;
  }

  else
  {
    v70 = WORD1(v61) & 0x8000;
  }

  v71 = WORD1(v61) & 0x8000 | (v61 >> 13) & 0x3FF | (v65 << 10);
  if (v69 > 0x1D)
  {
    LOWORD(v71) = v70;
  }

  v72 = HIWORD(v62) & 0x8000;
  v73 = (v62 >> 23);
  v74 = v73 - 112;
  v75 = v72 | 0x7BFF;
  if ((v62 & 0x7FFFFF) != 0)
  {
    LOWORD(v76) = v72 + 1;
  }

  else
  {
    v76 = HIWORD(v62) & 0x8000;
  }

  v77 = v76 | 0x7C00;
  if (v73 == 255)
  {
    v75 = v77;
  }

  v78 = v73 - 113;
  if (v73 >= 0x71)
  {
    v79 = v75;
  }

  else
  {
    v79 = HIWORD(v62) & 0x8000;
  }

  v80 = HIWORD(v62) & 0x8000 | (v62 >> 13) & 0x3FF | (v74 << 10);
  if (v78 > 0x1D)
  {
    LOWORD(v80) = v79;
  }

  v81 = HIWORD(DWORD2(v61)) & 0x8000;
  v82 = (DWORD2(v61) >> 23);
  v83 = v82 - 112;
  v84 = v81 | 0x7BFF;
  if ((DWORD2(v61) & 0x7FFFFF) != 0)
  {
    LOWORD(v85) = v81 + 1;
  }

  else
  {
    v85 = HIWORD(DWORD2(v61)) & 0x8000;
  }

  v86 = v85 | 0x7C00;
  if (v82 == 255)
  {
    v84 = v86;
  }

  v87 = v82 - 113;
  if (v82 >= 0x71)
  {
    v88 = v84;
  }

  else
  {
    v88 = WORD5(v61) & 0x8000;
  }

  v89 = HIWORD(DWORD2(v61)) & 0x8000 | (DWORD2(v61) >> 13) & 0x3FF | (v83 << 10);
  if (v87 > 0x1D)
  {
    LOWORD(v89) = v88;
  }

  v90 = HIWORD(HIDWORD(v61)) & 0x8000;
  v91 = (HIDWORD(v61) >> 23);
  v92 = v91 - 112;
  v93 = v91 - 113;
  v94 = v90 | 0x7BFF;
  if ((HIDWORD(v61) & 0x7FFFFF) != 0)
  {
    LOWORD(v95) = v90 + 1;
  }

  else
  {
    v95 = HIWORD(HIDWORD(v61)) & 0x8000;
  }

  v96 = v95 | 0x7C00;
  if (v91 == 255)
  {
    v94 = v96;
  }

  if (v91 >= 0x71)
  {
    v97 = v94;
  }

  else
  {
    v97 = HIWORD(v61) & 0x8000;
  }

  v98 = HIWORD(HIDWORD(v61)) & 0x8000 | (HIDWORD(v61) >> 13) & 0x3FF | (v92 << 10);
  if (v93 > 0x1D)
  {
    LOWORD(v98) = v97;
  }

  LOWORD(v99) = v71;
  WORD1(v99) = v80;
  WORD2(v99) = v89;
  HIWORD(v99) = v98;
  *&self->_anon_4440[1136] = v99;
  self->_vfxViewUniforms.impl._buffer = CFXBufferAllocatorPerFrameAllocateWithBytes(self->_frameConstantBufferPool.impl, anon_4440, 0x480uLL);
  *&self->_vfxViewUniforms.impl._offset = v100;
}

- (void)setCurrentExternalDrawCallContext:(id)a3
{
  self->_currentExternalDrawCallContext = a3;
  reContext = self->_reContext;

  sub_1AFDEB10C(reContext);
}

- (VFXWorldBuffer)updateViewConstantsWithWorld:(__CFXWorld *)a3
{
  *&STACK[0x880] = 0u;
  *&STACK[0x890] = 0u;
  *&STACK[0x860] = 0u;
  *&STACK[0x870] = 0u;
  *&STACK[0x840] = 0u;
  *&STACK[0x850] = 0u;
  *&STACK[0x820] = 0u;
  *&STACK[0x830] = 0u;
  *&STACK[0x800] = 0u;
  *&STACK[0x810] = 0u;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  __s1 = 0u;
  v78 = 0u;
  sub_1AF22BB20(self->_reContext, a2, a3, v3, &__s1);
  anon_4b00 = self->_anon_4b00;
  if (!memcmp(&__s1, self->_anon_4b00, 0x400uLL))
  {
    return objc_msgSend__currentWorldBuffer(self, v6, v7, v8);
  }

  memcpy(self->_anon_4b00, &__s1, sizeof(self->_anon_4b00));
  WorldBuffer = objc_msgSend__nextWorldBuffer(self, v9, v10, v11);
  if (self->_renderPassParameters.viewMapping)
  {
    eyeCount = self->_renderPassParameters.eyeCount;
  }

  else
  {
    eyeCount = 1;
  }

  *&v14 = sub_1AFDEB144(self->_reContext);
  v75 = v15;
  v76 = v14;
  v73 = v17;
  v74 = v16;
  if (eyeCount)
  {
    v18 = 0;
    __asm { FMOV            V0.4S, #1.0 }

    v71 = _Q0;
    do
    {
      v24 = 0;
      v25 = anon_4b00;
      v26 = &anon_4b00[64 * v18];
      v27 = *v26;
      v28 = v26[1];
      v29 = v26[2];
      v30 = v26[3];
      *&STACK[0xAC0] = v76;
      *&STACK[0xAD0] = v75;
      *&STACK[0xAE0] = v74;
      *&STACK[0xAF0] = v73;
      do
      {
        *(&STACK[0xB00] + v24) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v27, COERCE_FLOAT(*(&STACK[0xAC0] + v24))), v28, *(&STACK[0xAC0] + v24), 1), v29, *(&STACK[0xAC0] + v24), 2), v30, *(&STACK[0xAC0] + v24), 3);
        v24 += 16;
      }

      while (v24 != 64);
      v99.columns[0] = *&STACK[0xB00];
      v99.columns[1] = *&STACK[0xB10];
      v99.columns[2] = *&STACK[0xB20];
      v99.columns[3] = *&STACK[0xB30];
      v31 = WorldBuffer;
      v32 = WorldBuffer + 784 * v18;
      *v32 = *&STACK[0xB00];
      *(v32 + 1) = v99.columns[1];
      *(v32 + 2) = v99.columns[2];
      *(v32 + 3) = v99.columns[3];
      v100 = __invert_f4(v99);
      v33 = 0;
      *(v32 + 1) = v100;
      v34 = &self->_anon_4b00[64 * v18 + 512];
      v100.columns[1] = *(v34 + 1);
      v100.columns[2] = *(v34 + 2);
      v100.columns[3] = *(v34 + 3);
      *(v32 + 8) = *v34;
      *(v32 + 9) = v100.columns[1];
      *(v32 + 10) = v100.columns[2];
      *(v32 + 11) = v100.columns[3];
      v35 = &self->_anon_4b00[64 * v18 + 256];
      v36 = *v35;
      v37 = *(v35 + 1);
      v38 = *(v35 + 2);
      v39 = *(v35 + 3);
      *&STACK[0xAC0] = v76;
      *&STACK[0xAD0] = v75;
      *&STACK[0xAE0] = v74;
      *&STACK[0xAF0] = v73;
      do
      {
        *(&STACK[0xB00] + v33) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v36, COERCE_FLOAT(*(&STACK[0xAC0] + v33))), v37, *(&STACK[0xAC0] + v33), 1), v38, *(&STACK[0xAC0] + v33), 2), v39, *(&STACK[0xAC0] + v33), 3);
        v33 += 16;
      }

      while (v33 != 64);
      v101.columns[0] = *&STACK[0xB00];
      v101.columns[1] = *&STACK[0xB10];
      v101.columns[2] = *&STACK[0xB20];
      v101.columns[3] = *&STACK[0xB30];
      *(v32 + 12) = *&STACK[0xB00];
      *(v32 + 13) = v101.columns[1];
      *(v32 + 14) = v101.columns[2];
      *(v32 + 15) = v101.columns[3];
      v40 = &self->_anon_4b00[64 * v18 + 640];
      v41 = *(v40 + 1);
      v42 = *(v40 + 2);
      v43 = *(v40 + 3);
      *(v32 + 33) = *v40;
      *(v32 + 34) = v41;
      *(v32 + 35) = v42;
      *(v32 + 36) = v43;
      *(v32 + 592) = __invert_f4(v101);
      v44 = &self->_anon_2d0[784 * v18];
      v45 = *(v44 + 3);
      v47 = *v44;
      v46 = *(v44 + 1);
      *(v32 + 18) = *(v44 + 2);
      *(v32 + 19) = v45;
      *(v32 + 16) = v47;
      *(v32 + 17) = v46;
      sub_1AF1D0B30(a3, v32 + 4);
      v48 = *(v32 + 1);
      v49 = *(v32 + 2);
      v50 = *(v32 + 3);
      v51 = vmulq_f32(*v32, *v32);
      v52 = vmulq_f32(v48, v48);
      v53 = vmulq_f32(v49, v49);
      v54 = vzip1q_s32(v51, v53);
      v55 = vzip2q_s32(v51, v53);
      v56 = vtrn2q_s32(v51, v52);
      v56.i32[2] = v53.i32[1];
      v57 = vaddq_f32(vzip1q_s32(v55, vdupq_laneq_s32(v52, 2)), vaddq_f32(vzip1q_s32(v54, v52), v56));
      v58 = vceqzq_f32(v57);
      v58.i32[3] = 0;
      v59 = vbslq_s8(vcltzq_s32(v58), v57, vdivq_f32(v71, v57));
      *(v32 + 43) = vmulq_n_f32(*v32, v59.f32[0]);
      *(v32 + 44) = vmulq_lane_f32(v48, *v59.f32, 1);
      *(v32 + 45) = vmulq_laneq_f32(v49, v59, 2);
      *(v32 + 46) = v50;
      *(v32 + 54) = vextq_s8(*&self->_anon_4b00[880], *&self->_anon_4b00[880], 8uLL).u64[0];
      v60 = *&self->_anon_4b00[880];
      *(&v60 + 1) = *(v32 + 85);
      *(v32 + 42) = v60;
      *(&v60 + 1) = *&self->_anon_4b00[16 * v18 + 832];
      *(v32 + 42) = v60;
      memcpy(v44, v32, 0x180uLL);
      v61 = *(v32 + 36);
      v63 = *(v32 + 33);
      v62 = *(v32 + 34);
      *(v44 + 35) = *(v32 + 35);
      *(v44 + 36) = v61;
      *(v44 + 33) = v63;
      *(v44 + 34) = v62;
      v64 = *(v32 + 40);
      v66 = *(v32 + 37);
      v65 = *(v32 + 38);
      *(v44 + 39) = *(v32 + 39);
      *(v44 + 40) = v64;
      *(v44 + 37) = v66;
      *(v44 + 38) = v65;
      v67 = *(v32 + 43);
      v68 = *(v32 + 44);
      v69 = *(v32 + 46);
      *(v44 + 45) = *(v32 + 45);
      *(v44 + 46) = v69;
      *(v44 + 43) = v67;
      *(v44 + 44) = v68;
      *(v44 + 42) = *(v32 + 42);
      ++v18;
      anon_4b00 = v25;
      WorldBuffer = v31;
    }

    while (v18 != eyeCount);
  }

  return WorldBuffer;
}

- (VFXWorldBuffer)_nextWorldBuffer
{
  if (self->_renderPassParameters.viewMapping)
  {
    eyeCount = self->_renderPassParameters.eyeCount;
  }

  else
  {
    eyeCount = 1;
  }

  self->_worldUniforms.impl._buffer = CFXBufferAllocatorPerFrameAllocateWithBytes(self->_frameConstantBufferPool.impl, self->_anon_2d0, 784 * eyeCount);
  *&self->_worldUniforms.impl._offset = v4;
  ++self->_currentWorldBufferIndex;

  return objc_msgSend__currentWorldBuffer(self, v4, v5, v6);
}

- (void)updateRenderPassDescriptor:(id *)a3
{
  v3 = *&self->_currentRenderPassDesc.colorFormat[6];
  *&self->_originalRenderPassDesc.colorFormat[4] = *&self->_currentRenderPassDesc.colorFormat[4];
  *&self->_originalRenderPassDesc.colorFormat[6] = v3;
  *&self->_originalRenderPassDesc.sampleCount = *&self->_currentRenderPassDesc.sampleCount;
  v4 = *&self->_currentRenderPassDesc.colorFormat[2];
  *self->_originalRenderPassDesc.colorFormat = *self->_currentRenderPassDesc.colorFormat;
  *&self->_originalRenderPassDesc.colorFormat[2] = v4;
  *&self->_originalRenderPassDesc.depthFormat = *&self->_currentRenderPassDesc.depthFormat;
  v5 = *a3->var0;
  *&self->_currentRenderPassDesc.colorFormat[2] = *&a3->var0[2];
  *self->_currentRenderPassDesc.colorFormat = v5;
  v7 = *&a3->var0[6];
  v6 = *&a3->var1;
  v8 = *&a3->var3;
  *&self->_currentRenderPassDesc.colorFormat[4] = *&a3->var0[4];
  *&self->_currentRenderPassDesc.sampleCount = v8;
  *&self->_currentRenderPassDesc.depthFormat = v6;
  *&self->_currentRenderPassDesc.colorFormat[6] = v7;
}

- (void)stopProcessingRendererElements:(BOOL)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (self->_processingContext.passRequiresLighting)
    {
      if (sub_1AF12EE9C(self->_engineContext, 0))
      {
        if ((sub_1AF12EE68(self->_engineContext) & 0x100000) != 0)
        {
          cullingContext = self->_processingContext.cullingContext;
          if (!*(cullingContext + 1828))
          {
            v6 = *(cullingContext + 3);
            v15 = *(cullingContext + 2);
            v16 = v6;
            v7 = *(cullingContext + 5);
            v17 = *(cullingContext + 4);
            v18 = v7;
            v8 = *(cullingContext + 1);
            v13 = *cullingContext;
            v14 = v8;
            renderEncoder = self->_renderEncoder;
            engineContext = self->_engineContext;
            v12[2] = v15;
            v12[3] = v6;
            v12[4] = v17;
            v12[5] = v7;
            v12[0] = v13;
            v12[1] = v8;
            sub_1AF1F8704(&self->_anon_4190[144], renderEncoder, engineContext, v12, &self->_anon_4190[336]);
          }
        }
      }
    }

    debugOptions = self->_debugOptions;
    if ((debugOptions & 0x10) != 0)
    {
      objc_msgSend__drawPBRTextures(self, a2, a3, v3);
      debugOptions = self->_debugOptions;
    }

    if ((debugOptions & 8) != 0)
    {
      objc_msgSend__drawShadowMaps(self, a2, a3, v3);
    }
  }

  self->_processingContext.programHashCodeStoreKey = 0;
  *&self->_processingContext.cullingContext = 0u;
  *&self->_processingContext.passRequiresLighting = 0u;
  *&self->_processingContext.passInstance = 0u;
  *&self->_processingContext.dynamicBatchingSystem = 0u;
  self->_vfxViewUniforms = 0u;
  self->_renderGraphParticleMaterialOverride = -1;
}

- (void)_prepareMaterialTextures:(__CFXMaterial *)a3
{
  v4 = sub_1AF1A1270(a3);
  if (v4)
  {
    v5 = v4;
    v8 = sub_1AF165AE4(v4);
    if (v8 == 3)
    {
      objc_msgSend_specularDFGDiffuseHammonTextureWithRenderContext_(self->_resourceManager, v6, self, v7);
    }

    v9 = sub_1AF203660();
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      do
      {
        if (sub_1AF165594(v8, v11))
        {
          v12 = sub_1AF1656E4(v5, v11, 0);
          if (v12)
          {
            objc_msgSend_textureForMaterialProperty_(self, v13, v12, v14);
          }
        }

        ++v11;
      }

      while (v11 != v10);
    }
  }
}

- (BOOL)_executeDeformerStackOfCommand:(id *)a3 dataKind:(unsigned __int8)a4 deformerStack:(__CFXDeformerStack *)a5 metalDeformedMesh:(id *)a6 skinner:(__CFXSkinner *)a7 skinnerCalculationMode:(int)a8
{
  v12 = a4;
  v15 = sub_1AF16B74C(a5);
  if (v15)
  {
    v17 = a3->var12 || sub_1AF27DD4C(a3->var3, 0);
    v18 = objc_msgSend_renderResourceForDeformerStack_node_dataKind_(self->_resourceManager, v16, a5, a3->var4, v12);
    if ((sub_1AFDE22C0(v18) & 1) != 0 || self->_showsAuthoringEnvironment)
    {
      if (sub_1AFDE22C0(v18))
      {
        *&v99 = 0;
        sub_1AF12DC38(self->_processingContext.dynamicBatchingSystem, &v99);
        if (v99 >= 2)
        {
          v19 = sub_1AF0D5194();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDE6DC0(v19, v20, v21, v22, v23, v24, v25, v26);
          }
        }
      }

      v27 = sub_1AF14CD4C(self->_processingContext.transformTree, a3->var4->var4);
      v28 = *v27;
      v29 = v27[1];
      v30 = v27[2];
      v31 = v27[3];
      *&self->_nodeUniforms.instanceNode = *v27;
      *&self->_nodeUniforms.probeCacheIndex = v29;
      *&self->_anon_3408[8] = v30;
      *&self->_anon_3408[24] = v31;
      if (a7)
      {
        *v28.i64 = sub_1AF1CA3E8(a7, a8, v28, v29, v30, v31);
        *&self->_nodeUniforms.instanceNode = v28;
        *&self->_nodeUniforms.probeCacheIndex = v29;
        *&self->_anon_3408[8] = v30;
        *&self->_anon_3408[24] = v31;
      }

      eyeCount = self->_renderPassParameters.eyeCount;
      *&self->_anon_3408[3248] = 2;
      if (eyeCount)
      {
        v33 = 0;
        anon_2d0 = self->_anon_2d0;
        do
        {
          v35 = 0;
          v36 = &anon_2d0[784 * v33];
          v37 = *v36;
          v38 = v36[1];
          v39 = v36[2];
          v40 = v36[3];
          v112 = v28;
          v113 = v29;
          v114 = v30;
          v115 = v31;
          do
          {
            *(&v99 + v35) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v37, COERCE_FLOAT(*(&v112 + v35))), v38, *&v112.f32[v35 / 4], 1), v39, *(&v112 + v35), 2), v40, *(&v112 + v35), 3);
            v35 += 16;
          }

          while (v35 != 64);
          v41 = v100;
          v42 = v101;
          v43 = v102;
          v44 = &self->_anon_3408[64 * v33 + 1128];
          *v44 = v99;
          *(v44 + 1) = v41;
          *(v44 + 2) = v42;
          *(v44 + 3) = v43;
          ++v33;
        }

        while (v33 != eyeCount);
        v45 = *&self->_anon_3408[3248];
        if ((v45 & 4) == 0)
        {
          v46 = 0;
          *&self->_anon_3408[3248] = v45 | 4;
          do
          {
            v47 = 0;
            v48 = &anon_2d0[784 * v46];
            v49 = v48[12];
            v50 = v48[13];
            v51 = v48[14];
            v52 = v48[15];
            v112 = v28;
            v113 = v29;
            v114 = v30;
            v115 = v31;
            do
            {
              *(&v99 + v47) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v49, COERCE_FLOAT(*(&v112 + v47))), v50, *&v112.f32[v47 / 4], 1), v51, *(&v112 + v47), 2), v52, *(&v112 + v47), 3);
              v47 += 16;
            }

            while (v47 != 64);
            v53 = v100;
            v54 = v101;
            v55 = v102;
            v56 = &self->_anon_3408[64 * v46 + 2152];
            *v56 = v99;
            *(v56 + 1) = v53;
            *(v56 + 2) = v54;
            *(v56 + 3) = v55;
            ++v46;
          }

          while (v46 != eyeCount);
        }
      }

      else
      {
        *&self->_anon_3408[3248] = 6;
      }

      v57 = *&self->_anon_3408[1144];
      v119 = *&self->_anon_3408[1128];
      v120 = v57;
      v58 = *&self->_anon_3408[1176];
      v121 = *&self->_anon_3408[1160];
      v122 = v58;
      v59 = *&self->_anon_3408[2168];
      v123 = *&self->_anon_3408[2152];
      v124 = v59;
      v60 = *&self->_anon_3408[2200];
      v125 = *&self->_anon_3408[2184];
      v126 = v60;
      v61 = *&self->_anon_2d0[128];
      v62 = *&self->_anon_2d0[144];
      v63 = *&self->_anon_2d0[176];
      v129 = *&self->_anon_2d0[160];
      v130 = v63;
      v127 = v61;
      v128 = v62;
    }

    if (sub_1AFDE22D8(v18))
    {
      objc_msgSend_renderSize(self, v64, v65, v66);
      v67 = 0;
      v112.i64[0] = v68;
      v69 = *&self->_anon_3408[2152];
      v70 = *&self->_anon_3408[2168];
      v71 = *&self->_anon_3408[2184];
      v72 = *&self->_anon_3408[2200];
      do
      {
        v73 = 0;
        v94 = v69;
        v74 = *(&v94 & 0xFFFFFFFFFFFFFFF3 | (4 * (v67 & 3)));
        v75 = (&v95 & 0xFFFFFFFFFFFFFFF3 | (4 * (v67 & 3)));
        v95 = v70;
        v76 = *(&v70 + 3) - *v75;
        v77 = *(&v70 + 3) + *v75;
        v96 = v71;
        v78 = *(&v96 & 0xFFFFFFFFFFFFFFF3 | (4 * (v67 & 3)));
        v97 = v72;
        v79 = *(&v97 & 0xFFFFFFFFFFFFFFF3 | (4 * (v67 & 3)));
        v80 = *(&v71 + 3) - v78;
        v81 = *(&v71 + 3) + v78;
        v82 = 1;
        do
        {
          v83 = v82 & 1;
          if (v82)
          {
            v84 = v74;
          }

          else
          {
            v84 = -v74;
          }

          v85 = v73 | (2 * v67);
          v86 = *(&v113 + v85);
          v86.f32[0] = *(&v69 + 3) + v84;
          if (v82)
          {
            v87 = v77;
          }

          else
          {
            v87 = v76;
          }

          if (v82)
          {
            v88 = v81;
          }

          else
          {
            v88 = v80;
          }

          if (v82)
          {
            v89 = v79;
          }

          else
          {
            v89 = -v79;
          }

          v86.f32[1] = v87;
          v86.f32[2] = v88;
          v90 = vmulq_f32(v86, v86);
          v86.f32[3] = *(&v72 + 3) + v89;
          *(&v113 + v85) = vmulq_n_f32(v86, sqrtf(v90.f32[2] + vaddv_f32(*v90.f32)));
          v73 = 1;
          v82 = 0;
        }

        while (v83);
        ++v67;
      }

      while (v67 != 3);
    }

    v91 = CACurrentMediaTime();
    prof_beginFlame("Deformer", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/NewRenderer/VFXMTLRenderContext.mm", 3808);
    v111 = 0;
    v107 = v127;
    v108 = v128;
    v109 = v129;
    v110 = v130;
    v103 = v123;
    v104 = v124;
    v105 = v125;
    v106 = v126;
    v99 = v119;
    v100 = v120;
    v101 = v121;
    v102 = v122;
    v98[4] = v116;
    v98[5] = v117;
    v98[6] = v118;
    v98[0] = v112;
    v98[1] = v113;
    v98[2] = v114;
    v98[3] = v115;
    *a6 = sub_1AFDE22F0(v18, self, v17, &v99, v98, &v111);
    self->__engineStats->mrphTime = CACurrentMediaTime() - v91 + self->__engineStats->mrphTime;
    prof_endFlame();
    if (self->_showsAuthoringEnvironment)
    {
      v92 = sub_1AF12EE9C(self->_engineContext, 0);
      v107 = v127;
      v108 = v128;
      v109 = v129;
      v110 = v130;
      v103 = v123;
      v104 = v124;
      v105 = v125;
      v106 = v126;
      v99 = v119;
      v100 = v120;
      v101 = v121;
      v102 = v122;
      sub_1AFDE27EC(v18, v92, &v99, self);
    }

    LOBYTE(v15) = v111;
  }

  return v15;
}

- (id)_setupTessellatorOfCommand:(id *)a3 deformersDidMutateMeshForCurrentFrame:(BOOL)a4 tessellationPipelineStateHash:(char *)a5
{
  if (!a4)
  {
    goto LABEL_18;
  }

  eyeCount = self->_renderPassParameters.eyeCount;
  v10 = *&self->_anon_3408[3248];
  if ((v10 & 2) != 0)
  {
    goto LABEL_9;
  }

  *&self->_anon_3408[3248] = v10 | 2;
  if (eyeCount)
  {
    v11 = 0;
    v12 = *&self->_nodeUniforms.instanceNode;
    v13 = *&self->_nodeUniforms.probeCacheIndex;
    v14 = *&self->_anon_3408[8];
    v15 = *&self->_anon_3408[24];
    do
    {
      v16 = 0;
      v17 = &self->_anon_2d0[784 * v11];
      v18 = *v17;
      v19 = *(v17 + 1);
      v20 = *(v17 + 2);
      v21 = *(v17 + 3);
      v67 = v12;
      v68 = v13;
      v69 = v14;
      v70 = v15;
      do
      {
        *(&v55 + v16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, COERCE_FLOAT(*(&v67 + v16))), v19, *(&v67 + v16), 1), v20, *(&v67 + v16), 2), v21, *(&v67 + v16), 3);
        v16 += 16;
      }

      while (v16 != 64);
      v22 = v56;
      v23 = v57;
      v24 = v58;
      v25 = &self->_anon_3408[64 * v11 + 1128];
      *v25 = v55;
      *(v25 + 1) = v22;
      *(v25 + 2) = v23;
      *(v25 + 3) = v24;
      ++v11;
    }

    while (v11 != eyeCount);
    v10 = *&self->_anon_3408[3248];
LABEL_9:
    if ((v10 & 4) == 0)
    {
      *&self->_anon_3408[3248] = v10 | 4;
      if (eyeCount)
      {
        v26 = 0;
        v27 = *&self->_nodeUniforms.instanceNode;
        v28 = *&self->_nodeUniforms.probeCacheIndex;
        v29 = *&self->_anon_3408[8];
        v30 = *&self->_anon_3408[24];
        do
        {
          v31 = 0;
          v32 = &self->_anon_2d0[784 * v26];
          v33 = *(v32 + 12);
          v34 = *(v32 + 13);
          v35 = *(v32 + 14);
          v36 = *(v32 + 15);
          v67 = v27;
          v68 = v28;
          v69 = v29;
          v70 = v30;
          do
          {
            *(&v55 + v31) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v33, COERCE_FLOAT(*(&v67 + v31))), v34, *(&v67 + v31), 1), v35, *(&v67 + v31), 2), v36, *(&v67 + v31), 3);
            v31 += 16;
          }

          while (v31 != 64);
          v37 = v56;
          v38 = v57;
          v39 = v58;
          v40 = &self->_anon_3408[64 * v26 + 2152];
          *v40 = v55;
          *(v40 + 1) = v37;
          *(v40 + 2) = v38;
          *(v40 + 3) = v39;
          ++v26;
        }

        while (v26 != eyeCount);
      }
    }

    goto LABEL_18;
  }

  if ((v10 & 4) == 0)
  {
    *&self->_anon_3408[3248] = v10 | 6;
  }

LABEL_18:
  v41 = *&self->_anon_3408[1144];
  v55 = *&self->_anon_3408[1128];
  v56 = v41;
  v42 = *&self->_anon_3408[1176];
  v57 = *&self->_anon_3408[1160];
  v58 = v42;
  v43 = *&self->_anon_3408[2168];
  v59 = *&self->_anon_3408[2152];
  v60 = v43;
  v44 = *&self->_anon_3408[2200];
  v61 = *&self->_anon_3408[2184];
  v62 = v44;
  v45 = *&self->_anon_2d0[128];
  v46 = *&self->_anon_2d0[144];
  v47 = *&self->_anon_2d0[176];
  v65 = *&self->_anon_2d0[160];
  v66 = v47;
  v63 = v45;
  v64 = v46;
  HIBYTE(v68) = 0;
  *(&v68 + 13) = 0;
  metalMesh = self->_cache.metalMesh;
  currentFrameIndex = self->_currentFrameIndex;
  v50 = sub_1AFDE8154(self->_resourceManager);
  *&v67 = metalMesh;
  *(&v67 + 1) = self;
  *&v68 = &v55;
  DWORD2(v68) = currentFrameIndex;
  BYTE12(v68) = a4;
  objc_msgSend_update_(v50, v51, &v67, v52);
  *a5 = objc_msgSend_pipelineStateHashForMeshElement_patchType_(v50, v53, self->_cache.metalMeshElement, *(a3 + 85) & 7);
  return v50;
}

- (BOOL)_setupRenderPipelineOfCommand:(id *)a3 tessellator:(id)a4 useTessellation:(BOOL)a5
{
  v7 = &self->_anon_3408[3064];
  if (a5)
  {
    metalMeshElement = self->_cache.metalMeshElement;
    v10 = *(a3 + 85);
    v11 = objc_msgSend_device(self, a2, a3, a4);
    v66 = objc_msgSend_newPipelineStateConfiguratorForMeshElement_patchType_device_(a4, v12, metalMeshElement, v10 & 7, v11);
  }

  else
  {
    v66 = 0;
  }

  var2 = a3->var2;
  v14 = sub_1AF1304FC(self->_engineContext);
  v58 = v14;
  if ((*(self + 144) & 0x10) != 0)
  {
    v18 = 2;
  }

  else
  {
    v18 = v14;
  }

  if (self->_renderPassParameters.multiVertexOutputStreamGenerator == 2)
  {
    v19 = 2;
  }

  else
  {
    v19 = 1;
  }

  v64 = v19;
  v65 = v18;
  metalMesh = self->_cache.metalMesh;
  if (v7[2504])
  {
    v63 = sub_1AFDEA150(metalMesh, v15, v16, v17);
    v24 = sub_1AFDEA120(&self->_cache.metalMesh->super.isa, v21, v22, v23);
  }

  else
  {
    v63 = sub_1AFDEA078(metalMesh);
    v24 = sub_1AFDEA004(self->_cache.metalMesh);
  }

  v62 = v24;
  v61 = v7[2504];
  v56 = var2;
  if (var2)
  {
    v60 = sub_1AF16CD08(var2, v25, v26, v27);
    v28 = sub_1AF1C3FAC(var2);
    if (v28)
    {
      v59 = sub_1AF16CD08(v28, v29, v30, v31);
      goto LABEL_18;
    }
  }

  else
  {
    v60 = 0;
  }

  v59 = 0;
LABEL_18:
  var1 = a3->var1;
  program = self->_cache.program;
  var8 = a3->var8;
  blendStates = self->_cache.blendStates;
  v36 = v7[2328];
  v37 = v7[2329];
  eyeCount = self->_renderPassParameters.eyeCount;
  viewMapping = self->_renderPassParameters.viewMapping;
  if (v7[2608] == 1)
  {
    errors = self->_compilationIssues.errors;
  }

  else
  {
    errors = 0;
  }

  resourceManager = self->_resourceManager;
  v67[0] = var1;
  v67[1] = program;
  v67[2] = v60;
  v67[3] = v59;
  v67[4] = var8;
  v67[5] = blendStates;
  v68 = v36;
  v69 = v37;
  v70 = eyeCount;
  v71 = v64;
  v72 = 0;
  v73 = v62;
  v74 = v63;
  v75 = viewMapping;
  v76 = v65;
  v77 = 0;
  v78 = 0;
  v79 = errors;
  v80 = v61;
  memset(v81, 0, sizeof(v81));
  v82 = v66;
  v83 = 0;
  v43 = objc_msgSend_renderResourceForProgramDesc_renderPassDesc_(resourceManager, v42, v67, &self->_currentRenderPassDesc);
  *&self->_anon_4950[128] = v43;
  if (v66)
  {
    _Block_release(v66);
    v43 = *&self->_anon_4950[128];
  }

  v50 = objc_msgSend_state(v43, v44, v45, v46, v56);
  if (v50)
  {
    v51 = objc_msgSend_state(*&self->_anon_4950[128], v47, v48, v49);
    objc_msgSend_setRenderPipelineState_(self->_renderEncoder->var3, v52, v51, v53);
  }

  else
  {
    *&self->_anon_4950[128] = 0;
    self->_cache.program = 0;
    if (v58)
    {
      if (v57)
      {
        objc_msgSend__prepareMaterialTextures_(self, v47, v57, v49);
      }
    }

    else if ((byte_1EB6586A4 & 1) == 0)
    {
      byte_1EB6586A4 = 1;
      v55 = sub_1AF0D5194();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDE6E38();
      }
    }
  }

  return v50 != 0;
}

- (void)_installBindingsOfNode:(__CFXNode *)a3 probeCacheIndex:(unsigned int *)a4
{
  v4 = a4;
  v5 = a3;
  v80 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v7 = sub_1AF1B92C8(a3);
    v8 = v7;
    if (v7)
    {
      v57 = sub_1AF1C9420(v7);
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
  }

  v57 = -1;
LABEL_6:
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  obj = objc_msgSend_nodeBufferBindings(*&self->_anon_4950[128], a2, a3, a4);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v73, v79, 16);
  if (v10)
  {
    v11 = v10;
    v12 = *v74;
    v53 = v5;
    v54 = v4;
    v55 = *v74;
    v56 = v8;
    do
    {
      v13 = 0;
      v58 = v11;
      do
      {
        if (*v74 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v73 + 1) + 8 * v13);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (objc_msgSend_semanticsCount(v14, v15, v16, v17) < 1)
          {
            v46 = sub_1AF0D5194();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              sub_1AFDE6EB4(&buf, v61, v46);
            }
          }

          else
          {
            v21 = objc_msgSend_bufferSize(v14, v18, v19, v20);
            eyeCount = self->_renderPassParameters.eyeCount;
            v62 = 0;
            v63[0] = MEMORY[0x1E69E9820];
            v63[1] = 3221225472;
            v64 = sub_1AF2043F4;
            v65 = &unk_1E7A7CCE0;
            v68 = v8;
            v69 = v4;
            v71 = v57;
            v72 = eyeCount;
            v70 = v21;
            v66 = self;
            v67 = v14;
            v23 = sub_1AF12DC38(self->_processingContext.dynamicBatchingSystem, &v62);
            v24 = v21 * eyeCount;
            if (v62 < 2)
            {
              CFXBufferAllocatorPerFrameAllocateWithLength(self->_frameConstantBufferPool.impl, v21 * eyeCount);
              v48 = v47;
              v38 = v49;
              CPUPointer = CFXBufferSliceGetCPUPointer(v47, v49, v50, v51);
              (v64)(v63, v5, CPUPointer);
              renderEncoder = self->_renderEncoder;
              MTLBuffer = CFXBufferSliceGetMTLBuffer(v48, v38);
              v38 = v38;
              v39 = *(v14 + 9);
              if (v39 != 0xFF)
              {
                objc_msgSend_setVertexBuffer_offset_atIndex_(renderEncoder->var3, v36, MTLBuffer, v38, v39);
              }

              v40 = (~v39 & 0xFF00) == 0;
            }

            else
            {
              v25 = v23;
              CFXBufferAllocatorPerFrameAllocateWithLength(self->_frameConstantBufferPool.impl, v62 * v24);
              v27 = v26;
              v29 = v28;
              v32 = CFXBufferSliceGetCPUPointer(v26, v28, v30, v31);
              if (v62 >= 1)
              {
                v33 = v32;
                for (i = 0; i < v62; ++i)
                {
                  (v64)(v63, *(v25 + 8 * i), v33);
                  v33 += v24;
                }
              }

              CFXBufferSliceDidModify(v27, v29);
              renderEncoder = self->_renderEncoder;
              MTLBuffer = CFXBufferSliceGetMTLBuffer(v27, v29);
              v38 = v29;
              v39 = *(v14 + 9);
              if (v39 != 0xFF)
              {
                objc_msgSend_setVertexBuffer_offset_atIndex_(renderEncoder->var3, v36, MTLBuffer, v29, v39);
              }

              v40 = (~v39 & 0xFF00) == 0;
              v5 = v53;
              v4 = v54;
            }

            v11 = v58;
            if (!v40)
            {
              objc_msgSend_setFragmentBuffer_offset_atIndex_(renderEncoder->var3, v36, MTLBuffer, v38, v39 >> 8);
            }

            v12 = v55;
            v8 = v56;
          }
        }

        else
        {
          if (!objc_msgSend_bindBlock(v14, v15, v16, v17))
          {
            v44 = sub_1AF0D5194();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
            {
              sub_1AFDE6E6C(v77, &v78, v44);
            }
          }

          v45 = objc_msgSend_bindBlock(v14, v41, v42, v43);
          (*(v45 + 16))(v45, v14, self);
        }

        ++v13;
      }

      while (v13 != v11);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v36, &v73, v79, 16);
    }

    while (v11);
  }
}

- (void)_bindRenderPipelineArgumentsOfCommand:(id *)a3 materialHashChanged:(BOOL)a4 modelWithShaderModifier:(__CFXModel *)a5 modelWithShaderModifierHasChanged:(BOOL)a6 nodeHasChanged:(BOOL)a7 programHasChanged:(BOOL)a8 projHasChanged:(BOOL)a9 viewHasChanged:(BOOL)a10
{
  v11 = a6;
  v143 = *MEMORY[0x1E69E9840];
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v15 = objc_msgSend_frameBufferBindings(*&self->_anon_4950[128], a2, a3, a4);
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v127, v142, 16);
  if (v17)
  {
    v21 = v17;
    v22 = *v128;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v128 != v22)
        {
          objc_enumerationMutation(v15);
        }

        v24 = *(*(&v127 + 1) + 8 * i);
        v25 = objc_msgSend_bindBlock(v24, v18, v19, v20);
        (*(v25 + 16))(v25, v24, self);
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v127, v142, 16);
    }

    while (v21);
  }

  v26 = a3;
  if (a4 || v11)
  {
    v27 = self->_cache.material ? sub_1AF20ED1C(self->_resourceManager, a3->var2, a5, *&self->_anon_4950[128], self->_engineContext) : 0;
    self->_cache.metalShadable = v27;
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v28 = objc_msgSend_shadableBufferBindings(*&self->_anon_4950[128], v18, v19, v20);
    v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v123, v141, 16);
    if (v30)
    {
      v33 = v30;
      v34 = *v124;
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v124 != v34)
          {
            objc_enumerationMutation(v28);
          }

          v36 = *(*(&v123 + 1) + 8 * j);
          v37 = objc_msgSend_bindBlock(v36, v18, v31, v32);
          if (v37)
          {
            (*(v37 + 16))(v37, v36, self);
          }
        }

        v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v18, &v123, v141, 16);
      }

      while (v33);
    }
  }

  if (a3->var13)
  {
    cullingContext = self->_processingContext.cullingContext;
    v144 = __invert_f4(*(cullingContext + 128));
    v112 = v144.columns[1];
    v113 = v144.columns[0];
    v110 = v144.columns[3];
    v111 = v144.columns[2];
    v41 = *&self->_anon_4950[128];
    v42 = *&a3->var7 ^ v41 ^ self->_renderPassParameters.eyeCount ^ self->_renderPassParameters.viewMapping;
    v122 = v42;
    if (self->_lighting.currentLightingHashKey != v42)
    {
      self->_lighting.currentLightingHashKey = v42;
      obj = objc_msgSend_lightBufferBindings(v41, v18, v39, v40);
      if (obj)
      {
        sub_1AF138864(self->_processingContext.lightingSystem, &a3->var7, &self->_lighting.currentLightingDesc);
        *&v135 = &v122;
        v109 = sub_1AF20B88C(&self->_lighting.frameLightingSetDatas.__table_.__bucket_list_.__ptr_, &v122);
        if (v109[3])
        {
          v116 = 0u;
          v117 = 0u;
          v114 = 0u;
          v115 = 0u;
          v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v43, &v114, v139, 16);
          if (v44)
          {
            v45 = v44;
            v46 = *v115;
            do
            {
              for (k = 0; k != v45; ++k)
              {
                if (*v115 != v46)
                {
                  objc_enumerationMutation(obj);
                }

                renderEncoder = self->_renderEncoder;
                v49 = v109[3];
                v50 = v109[4];
                v51 = *(*(*(&v114 + 1) + 8 * k) + 9);
                if (*(*(*(&v114 + 1) + 8 * k) + 9) != 0xFF)
                {
                  objc_msgSend_setVertexBuffer_offset_atIndex_(renderEncoder->var3, v18, v109[3], v109[4], v51);
                }

                if ((~v51 & 0xFF00) != 0)
                {
                  objc_msgSend_setFragmentBuffer_offset_atIndex_(renderEncoder->var3, v18, v49, v50, v51 >> 8);
                }
              }

              v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v114, v139, 16);
            }

            while (v45);
          }
        }

        else
        {
          v120 = 0u;
          v121 = 0u;
          v118 = 0u;
          v119 = 0u;
          v105 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v43, &v118, v140, 16);
          if (v105)
          {
            v104 = *v119;
            do
            {
              v54 = 0;
              do
              {
                if (*v119 != v104)
                {
                  objc_enumerationMutation(obj);
                }

                v108 = v54;
                v55 = *(*(&v118 + 1) + 8 * v54);
                if (objc_msgSend_semanticsCount(v55, v18, v52, v53) >= 1)
                {
                  v56 = objc_msgSend_bufferSize(v55, v18, v52, v53) * self->_renderPassParameters.eyeCount;
                  v109[5] = v56;
                  CFXBufferAllocatorPerFrameAllocateWithLength(self->_frameConstantBufferPool.impl, v56);
                  v58 = v57;
                  v60 = v59;
                  v109[3] = CFXBufferSliceGetMTLBuffer(v57, v59);
                  v109[4] = v60;
                  v106 = v60;
                  v107 = v58;
                  CPUPointer = CFXBufferSliceGetCPUPointer(v58, v60, v61, v62);
                  if (self->_renderPassParameters.eyeCount)
                  {
                    v67 = CPUPointer;
                    v68 = 0;
                    do
                    {
                      v69 = 0;
                      v70 = (cullingContext + 64 * v68 + 0x2000);
                      v71 = *v70;
                      v72 = v70[1];
                      v73 = v70[2];
                      v74 = v70[3];
                      v131 = v113;
                      v132 = v112;
                      v133 = v111;
                      v134 = v110;
                      do
                      {
                        *(&v135 + v69) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v71, COERCE_FLOAT(*(&v131 + v69))), v72, *&v131.f32[v69 / 4], 1), v73, *(&v131 + v69), 2), v74, *(&v131 + v69), 3);
                        v69 += 16;
                      }

                      while (v69 != 64);
                      v75 = 0;
                      v76 = v136;
                      v77 = v137;
                      v78 = v138;
                      *self->_anon_4190 = v135;
                      *&self->_anon_4190[16] = v76;
                      *&self->_anon_4190[32] = v77;
                      *&self->_anon_4190[48] = v78;
                      v131 = v113;
                      v132 = v112;
                      v133 = v111;
                      v134 = v110;
                      do
                      {
                        *(&v135 + v75) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v71, COERCE_FLOAT(*(&v131 + v75))), v72, *&v131.f32[v75 / 4], 1), v73, *(&v131 + v75), 2), v74, *(&v131 + v75), 3);
                        v75 += 16;
                      }

                      while (v75 != 64);
                      v79 = v136;
                      v80 = v137;
                      v81 = v138;
                      *&self->_anon_4190[64] = v135;
                      *&self->_anon_4190[80] = v79;
                      *&self->_anon_4190[96] = v80;
                      *&self->_anon_4190[112] = v81;
                      self->_anon_4190[128] = 1;
                      if (objc_msgSend_semanticsCount(v55, v64, v65, v66) >= 1)
                      {
                        v85 = 0;
                        v86 = 0;
                        do
                        {
                          (*(*(*(v55 + 48) + v85) + 16))();
                          ++v86;
                          v85 += 16;
                        }

                        while (v86 < objc_msgSend_semanticsCount(v55, v87, v88, v89));
                      }

                      v67 += objc_msgSend_bufferSize(v55, v82, v83, v84);
                      ++v68;
                    }

                    while (v68 < self->_renderPassParameters.eyeCount);
                  }

                  CFXBufferSliceDidModify(v107, v106);
                }

                v90 = self->_renderEncoder;
                v91 = v109[3];
                v92 = v109[4];
                v93 = *(v55 + 9);
                if (*(v55 + 9) != 0xFF)
                {
                  objc_msgSend_setVertexBuffer_offset_atIndex_(v90->var3, v18, v109[3], v109[4], v93);
                }

                if ((~v93 & 0xFF00) != 0)
                {
                  objc_msgSend_setFragmentBuffer_offset_atIndex_(v90->var3, v18, v91, v92, v93 >> 8);
                }

                v54 = v108 + 1;
              }

              while (v108 + 1 != v105);
              v105 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v118, v140, 16);
            }

            while (v105);
          }
        }
      }
    }

    v26 = a3;
  }

  if (a7 || a10 || a9)
  {
    objc_msgSend__installBindingsOfNode_probeCacheIndex_(self, v18, v26->var4, v26->var9);
  }

  if (a8 || a9)
  {
    if (sub_1AF12E2A0(self->_engineContext))
    {
      v94 = sub_1AF1310A0(self->_engineContext);
      sub_1AF1FD200(v94, *(*&self->_anon_4950[128] + 8), 3u);
    }

    else
    {
      v95 = self->_renderEncoder;
      MTLBuffer = CFXBufferSliceGetMTLBuffer(self->_worldUniforms.impl._buffer, *&self->_worldUniforms.impl._offset);
      offset = self->_worldUniforms.impl._offset;
      v99 = *&self->_anon_4950[128];
      v100 = *(v99 + 8);
      if (*(v99 + 8) != 0xFF)
      {
        objc_msgSend_setVertexBuffer_offset_atIndex_(v95->var3, v96, MTLBuffer, offset, v100);
      }

      if ((~v100 & 0xFF00) != 0)
      {
        objc_msgSend_setFragmentBuffer_offset_atIndex_(v95->var3, v96, MTLBuffer, offset, v100 >> 8);
      }
    }
  }
}

- (void)_executeDrawCommand:(id *)a3
{
  var3 = a3->var3;
  var5 = a3->var5;
  var6 = a3->var6;
  var10 = a3->var10;
  var11 = a3->var11;
  if (sub_1AF12E2A0(self->_engineContext))
  {
    objc_msgSend__clearRenderCaches(self, v9, v10, v11);
  }

  if (var3 && sub_1AF1B402C(var3) && (self->_features & 0x10) != 0)
  {
    v13 = (*(a3 + 85) & 7) != 0;
    v12 = 1;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  if (a3->var0)
  {
    if (!var3)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if ((byte_1EB6586A5 & 1) == 0)
    {
      byte_1EB6586A5 = 1;
      v14 = sub_1AF0D5194();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDE6EF4();
      }
    }

    a3->var0 = objc_msgSend_defaultProgramUsingTessellation_(self->_resourceManager, v9, v12, v11);
    if (!var3)
    {
      goto LABEL_17;
    }
  }

  if (sub_1AF16E098(var3) || sub_1AF15B294(var3))
  {
    v164 = var3;
    goto LABEL_18;
  }

LABEL_17:
  v164 = 0;
LABEL_18:
  v160 = var10;
  program = self->_cache.program;
  var0 = a3->var0;
  self->_cache.program = a3->var0;
  v165 = program;
  v166 = var0;
  v18 = self->_cache.geometry != var5 || program != var0;
  if (var3)
  {
    v19 = sub_1AF1B40A0(var3);
  }

  else
  {
    v19 = 1;
  }

  var4 = a3->var4;
  if (!var4)
  {
    v158 = 0;
    v177 = 0;
    v162 = -1;
    goto LABEL_38;
  }

  v21 = sub_1AF1B92C8(var4);
  v22 = v21;
  v158 = v21 != 0;
  if (v21)
  {
    v162 = sub_1AF1C9420(v21);
  }

  else
  {
    v162 = -1;
  }

  v23 = a3->var4;
  v177 = 0;
  if (!v23)
  {
LABEL_38:
    v25 = 0;
    v26 = 0;
    if (self->_cache.deformerStack)
    {
      v27 = 1;
    }

    else
    {
      v27 = v18;
    }

    self->_cache.deformerStack = 0;
    if ((v27 & 1) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_42;
  }

  v24 = sub_1AF1B7558(v23);
  if (self->_cache.deformerStack != v24)
  {
    v18 = 1;
  }

  self->_cache.deformerStack = v24;
  if (v24)
  {
    v25 = objc_msgSend__executeDeformerStackOfCommand_dataKind_deformerStack_metalDeformedMesh_skinner_skinnerCalculationMode_(self, v9, a3, v19, v24, &v177, v22, v162);
    if (!v18)
    {
      v26 = 0;
      goto LABEL_58;
    }
  }

  else
  {
    v25 = 0;
    v26 = 0;
    if (!v18)
    {
      goto LABEL_58;
    }
  }

LABEL_42:
  v28 = v177;
  if (v177)
  {
    self->_cache.geometry = var5;
  }

  else
  {
    if (var5)
    {
      if (sub_1AF1706B8(var5) != 1)
      {
        v29 = sub_1AF0D5194();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDE6F28(v29, v9, v30, v31, v32, v33, v34, v35);
        }
      }
    }

    if (a3->var12 && (v12 & v13 & 1) == 0)
    {
      sub_1AF27DDF0(var5, v19);
    }

    self->_cache.geometry = var5;
    if (var5)
    {
      v28 = sub_1AF20E1F8(self->_resourceManager, var5, v19);
    }

    else
    {
      v28 = 0;
    }
  }

  self->_cache.metalMesh = v28;
  v26 = 1;
LABEL_58:
  v153 = v26;
  v176 = 0;
  if (v12)
  {
    v155 = objc_msgSend__setupTessellatorOfCommand_deformersDidMutateMeshForCurrentFrame_tessellationPipelineStateHash_(self, v9, a3, v25, &v176);
    v157 = self->_anon_4950[120] == v176;
    self->_anon_4950[120] = v176;
    if (v13)
    {
      v36 = 0;
      v37 = var6;
      v38 = v160;
      v39 = v165;
      goto LABEL_71;
    }
  }

  else
  {
    v155 = 0;
    v157 = self->_anon_4950[120] == 0;
    self->_anon_4950[120] = 0;
  }

  if (v177 && sub_1AF170774(var5))
  {
    if (var6)
    {
      v40 = sub_1AF0D5194();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE6FA0(v40, v41, v42, v43, v44, v45, v46, v47);
      }
    }

    v38 = v160;
    v39 = v165;
    if (sub_1AF170790(var5) != 1)
    {
      v48 = sub_1AF0D5194();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE7018(v48, v49, v50, v51, v52, v53, v54, v55);
      }
    }

    v56 = sub_1AFDEA208(v177);
    v36 = objc_msgSend_objectAtIndexedSubscript_(v56, v57, 0, v58);
    v37 = 0;
LABEL_71:
    self->_cache.meshElement = v37;
    self->_cache.metalMeshElement = v36;
    if (!var6)
    {
      goto LABEL_97;
    }

LABEL_94:
    v88 = sub_1AF1A7034(var6);
    if (v88 > 5)
    {
      LOBYTE(var6) = 0;
    }

    else
    {
      var6 = (0x30001020303uLL >> (8 * (v88 & 0x1F)));
    }

    goto LABEL_97;
  }

  if (self->_cache.meshElement == var6)
  {
    v38 = v160;
    v39 = v165;
    if (var6)
    {
      goto LABEL_94;
    }
  }

  else
  {
    if (v177 == 0 || v13)
    {
      self->_cache.meshElement = var6;
      if (var6)
      {
        v59 = sub_1AFDE7F98(self->_resourceManager);
        p_metalMeshElement = &self->_cache.metalMeshElement;
        self->_cache.metalMeshElement = v59;
        v39 = v165;
        if (v59)
        {
          goto LABEL_91;
        }
      }

      else
      {
        p_metalMeshElement = &self->_cache.metalMeshElement;
        self->_cache.metalMeshElement = 0;
        v39 = v165;
      }

      v77 = sub_1AF0D5194();
      if (os_log_type_enabled(v77, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE7090(v77, v78, v79, v80, v81, v82, v83, v84);
        if (!var6)
        {
LABEL_92:
          v87 = sub_1AFDEA228(*p_metalMeshElement);
          v38 = v160;
          if (!v87)
          {
            return;
          }

          goto LABEL_93;
        }
      }

      else if (!var6)
      {
        goto LABEL_92;
      }

LABEL_91:
      v85 = sub_1AF1A73D4(var6);
      sub_1AFDEA4AC(*p_metalMeshElement, v85, v86);
      goto LABEL_92;
    }

    if (var5)
    {
      if (sub_1AF1706B8(var5) != 1)
      {
        v61 = sub_1AF0D5194();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDE6F28(v61, v62, v63, v64, v65, v66, v67, v68);
        }
      }
    }

    v69 = sub_1AF1A5020(var5, var6, v19);
    v39 = v165;
    if (v69 != -1)
    {
      v70 = v69;
      v71 = sub_1AFDEA208(v177);
      v74 = objc_msgSend_objectAtIndexedSubscript_(v71, v72, v70, v73);
      self->_cache.meshElement = var6;
      self->_cache.metalMeshElement = v74;
      v38 = v160;
      if (!sub_1AFDEA1E8(v74))
      {
        v75 = sub_1AF1A73D4(var6);
        sub_1AFDEA4AC(v74, v75, v76);
        if (!sub_1AFDEA228(v74))
        {
          return;
        }
      }

LABEL_93:
      if (!var6)
      {
        goto LABEL_97;
      }

      goto LABEL_94;
    }

    v38 = v160;
    if (var6)
    {
      goto LABEL_94;
    }
  }

LABEL_97:
  primitiveTopologyClass = self->_cache.primitiveTopologyClass;
  self->_cache.primitiveTopologyClass = var6;
  var2 = a3->var2;
  v91 = self->_cache.material != var2 || v39 != v166;
  v152 = v91;
  self->_cache.material = var2;
  if (var2)
  {
    var2 = sub_1AF1A1270(var2);
  }

  self->_cache.commonProfile = var2;
  v92 = self->_cache.model != v164;
  self->_cache.model = var3;
  v93 = sub_1AF12DB9C(self->_processingContext.dynamicBatchingSystem);
  v97 = v93;
  v98 = a3->var4;
  v99 = self->_cache.node != v98;
  v100 = v39 != v166 || v92;
  v151 = v100;
  if (v39 != v166)
  {
    v99 = 1;
  }

  v101 = v99 || v158 && v162 == 1;
  if (v93 > 1)
  {
    v101 = 1;
  }

  v163 = v101;
  self->_cache.node = v98;
  cullingContext = self->_processingContext.cullingContext;
  v103 = *(cullingContext + 1829);
  if (self->_cache.pointOfView == v103 && (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(*self->_anon_4950, *(cullingContext + 513)), vceqq_f32(*&self->_cache.tessellationPipelineStateHash, *(cullingContext + 512))), vandq_s8(vceqq_f32(*&self->_anon_4950[16], *(cullingContext + 514)), vceqq_f32(*&self->_anon_4950[32], *(cullingContext + 515))))) & 0x80000000) != 0)
  {
    v159 = 0;
  }

  else
  {
    self->_cache.pointOfView = v103;
    v104 = *(cullingContext + 512);
    v105 = *(cullingContext + 513);
    v106 = *(cullingContext + 514);
    *&self->_anon_4950[32] = *(cullingContext + 515);
    *&self->_anon_4950[16] = v106;
    *self->_anon_4950 = v105;
    *&self->_cache.tessellationPipelineStateHash = v104;
    v159 = 1;
  }

  v107 = vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(*&self->_anon_4950[64], *(cullingContext + 577)), vceqq_f32(*&self->_anon_4950[48], *(cullingContext + 576))), vandq_s8(vceqq_f32(*&self->_anon_4950[80], *(cullingContext + 578)), vceqq_f32(*&self->_anon_4950[96], *(cullingContext + 579)))));
  if ((v107 & 0x80000000) == 0)
  {
    v108 = (cullingContext + 9216);
    v109 = *v108;
    v110 = v108[1];
    v111 = v108[3];
    *&self->_anon_4950[80] = v108[2];
    *&self->_anon_4950[96] = v111;
    *&self->_anon_4950[48] = v109;
    *&self->_anon_4950[64] = v110;
  }

  metalMesh = self->_cache.metalMesh;
  v156 = v12;
  if (v12)
  {
    v113 = sub_1AFDEA150(metalMesh, v94, v95, v96);
  }

  else
  {
    v113 = sub_1AFDEA078(metalMesh);
  }

  v117 = v113;
  v118 = *&self->_anon_4950[112];
  *&self->_anon_4950[112] = v113;
  if ((v38 & 1) == 0)
  {
    v119 = a3->var4;
    if (v119)
    {
      sub_1AF1BA79C(v119);
    }
  }

  v175 = 0uLL;
  v120 = a3->var2;
  if (v120)
  {
    v121 = objc_msgSend_enableARMode(self, v114, v115, v116);
    v122 = sub_1AF1A1870(v120, v38, var11, v121, &v175);
    v123 = v122;
    if (v122 && sub_1AF15B9CC(v122))
    {
      LODWORD(v125) = DWORD2(v175);
      LODWORD(v124) = DWORD1(v175);
      LODWORD(v126) = HIDWORD(v175);
      objc_msgSend_setBlendColorRed_green_blue_alpha_(self->_renderEncoder->var3, v114, v115, v116, *&v175, v124, v125, v126);
    }

    v127 = a3->var2;
    v128 = v165;
    if (v127)
    {
      v129 = sub_1AF1A16A0(v127);
    }

    else
    {
      v129 = 15;
    }
  }

  else
  {
    v123 = 0;
    v129 = 15;
    v128 = v165;
  }

  if (a3->var14)
  {
    v130 = 0;
  }

  else
  {
    v130 = v129;
  }

  colorBufferWriteMask = self->_cache.colorBufferWriteMask;
  self->_cache.colorBufferWriteMask = v130;
  blendStates = self->_cache.blendStates;
  self->_cache.blendStates = v123;
  if (v128 == v166 && v118 == v117 && blendStates == v123 && colorBufferWriteMask == v130 && v157 && primitiveTopologyClass == var6 || objc_msgSend__setupRenderPipelineOfCommand_tessellator_useTessellation_(self, v114, a3, v155, v156))
  {
    v133 = *&self->_anon_4950[128];
    if (v133)
    {
      if (objc_msgSend_state(v133, v114, v115, v116))
      {
        HIBYTE(v150) = v159;
        LOBYTE(v150) = v107 >= 0;
        objc_msgSend__bindRenderPipelineArgumentsOfCommand_materialHashChanged_modelWithShaderModifier_modelWithShaderModifierHasChanged_nodeHasChanged_programHasChanged_projHasChanged_viewHasChanged_(self, v134, a3, v152, v164, v151, v163, v128 != v166, v150);
        if (a3->var4 && v97 <= 1)
        {
          v138 = *&self->_nodeUniforms.probeCacheIndex;
          v139 = *&self->_anon_3408[8];
          v137 = vmulq_f32(*&self->_nodeUniforms.instanceNode, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v139, v139, 0xCuLL), v139, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v138, v138), v138, 0xCuLL))), vextq_s8(vuzp1q_s32(v139, v139), v139, 0xCuLL), vextq_s8(vextq_s8(v138, v138, 0xCuLL), v138, 8uLL)));
          v137.f32[0] = v137.f32[2] + vaddv_f32(*v137.f32);
          v140 = v137.f32[0] > 0.0;
          renderEncoder = self->_renderEncoder;
          if (renderEncoder->var6)
          {
            objc_msgSend_setFrontFacingWinding_(renderEncoder->var3, v135, *(&xmmword_1AFE22A20 + v140), v136, *v137.i64);
LABEL_149:
            if (v153)
            {
              objc_msgSend__setMeshBuffers_(self, v142, self->_cache.metalMesh, v143);
            }

            if (v97 <= 1)
            {
              v97 = sub_1AFDE8698(self->_cache.metalMeshElement);
            }

            if (v156)
            {
              v144 = sub_1AF170740(self->_cache.geometry);
              memset(v174, 0, sizeof(v174));
              metalMeshElement = self->_cache.metalMeshElement;
              if (v97 <= 1)
              {
                v148 = 1;
              }

              else
              {
                v148 = v97;
              }

              v149 = *(a3 + 85) & 7;
              v167 = v144;
              v168 = *&self->_cache.metalMesh;
              v169 = metalMeshElement;
              v170 = v148;
              v171 = 0;
              v172 = self;
              v173 = v149;
              objc_msgSend_draw_(v155, v145, &v167, v146);
            }

            else
            {
              objc_msgSend__drawMeshElement_instanceCount_(self, v142, self->_cache.metalMeshElement, v97);
            }

            return;
          }
        }

        else
        {
          renderEncoder = self->_renderEncoder;
          v140 = !renderEncoder->var6;
        }

        objc_msgSend_setFrontFacingWinding_(renderEncoder->var3, v135, v140, v136, *v137.i64);
        goto LABEL_149;
      }
    }
  }
}

- (void)drawRenderElement:(__CFXRendererElement *)a3 withOverrides:(__CFXRenderingOverride *)a4
{
  v88 = *MEMORY[0x1E69E9840];
  if (!self->_engineContext)
  {
    v7 = sub_1AF0D5194();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE7108(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  v15 = sub_1AF146110(a3);
  v16 = sub_1AF146118(a3);
  v17 = sub_1AF146158(a3);
  v18 = sub_1AF146178(a3);
  v70 = 0;
  v71 = 0;
  v69 = 0;
  sub_1AF133CC8(a3, a4, self->_engineContext, &v71, &v69, &v70, 0);
  v19 = sub_1AF146200(a3);
  v20 = v69;
  if (!v19 || !v69)
  {
    if (v19)
    {
      v21 = 0;
      v22 = 1;
      goto LABEL_18;
    }

    goto LABEL_10;
  }

  if ((sub_1AF13E49C(v69) & 1) == 0)
  {
LABEL_10:
    if (v15)
    {
      sub_1AF1BA79C(v15);
      if (v23 <= 0.0)
      {
        return;
      }
    }

    if (!v69)
    {
      v66 = v17;
      v68 = 0;
      v22 = 0;
      v63 = 0;
      goto LABEL_23;
    }

    v24 = sub_1AF1A1270(v71);
    if (v24)
    {
      v21 = sub_1AF166C38(v24);
      v22 = 0;
    }

    else
    {
      v22 = 0;
      v21 = 0;
    }

    goto LABEL_17;
  }

  v21 = 0;
  v22 = 1;
LABEL_17:
  v20 = v69;
LABEL_18:
  v63 = v21;
  v66 = v17;
  if (!v20)
  {
    v68 = 0;
LABEL_23:
    v67 = 0;
    if (!a4)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  v68 = sub_1AF13E4F8(v20);
  if (!v69)
  {
    goto LABEL_23;
  }

  v67 = sub_1AF13E510(v69);
  if (!a4)
  {
    goto LABEL_26;
  }

LABEL_24:
  v25 = sub_1AF1D62E4(a4);
  if (v25)
  {
    v28 = v25;
    objc_msgSend_setRasterizerStates_(self, v26, v25, v27);
    goto LABEL_28;
  }

LABEL_26:
  v28 = sub_1AF1461DC(a3);
  if (!v28)
  {
    v31 = 1;
    goto LABEL_30;
  }

  objc_msgSend_setRasterizerStates_(self, v29, v28, v30);
LABEL_28:
  v31 = 0;
LABEL_30:
  p_var5 = &a3->var5;
  v33 = *(a3 + 40);
  v34 = v22;
  v35 = self;
  v36 = (v33 & 0x40) != 0 && self->_processingContext.passRequiresLighting;
  v38 = v69;
  v37 = v70;
  v39 = v71;
  v40 = (v33 >> 14) & 1;
  var3 = a3->var3;
  if (v34 & 1) != 0 || (*(v35->_processingContext.cullingContext + 14650))
  {
    goto LABEL_39;
  }

  if (v63 == 1)
  {
    v72 = v70;
    *&v73 = v69;
    *(&v73 + 1) = v71;
    v74 = v16;
    v75 = v15;
    v76 = v66;
    v77 = v18;
    v78 = var3;
    v79 = a4;
    v80 = p_var5;
    v81 = v34;
    v82 = v68;
    v83 = v67;
    v84 = v36;
    v85 = 1;
    v86 = (v33 >> 11) & 7;
    v87 = 0;
    v52 = v35;
    v60 = v34;
    v62 = v36;
    v58 = p_var5;
    v65 = v86;
    objc_msgSend__executeDrawCommand_(v35, v29, &v72, v30);
    v72 = v37;
    *&v73 = v38;
    *(&v73 + 1) = v39;
    v74 = v16;
    v75 = v15;
    v76 = v66;
    v77 = v18;
    v78 = var3;
    v79 = a4;
    v80 = v58;
    v81 = v60;
    v82 = v68;
    v83 = v67;
    v84 = v62;
    v85 = 0;
    v86 = v65;
    v87 = 0;
    objc_msgSend__executeDrawCommand_(v52, v53, &v72, v54);
    return;
  }

  if (v63 != 2)
  {
LABEL_39:
    v72 = v70;
    *&v73 = v69;
    *(&v73 + 1) = v71;
    v74 = v16;
    v75 = v15;
    v76 = v66;
    v77 = v18;
    v78 = var3;
    v79 = a4;
    v80 = p_var5;
    v81 = v34;
    v82 = v68;
    v83 = v67;
    v84 = v36;
    v85 = (v33 & 0x4000) != 0;
    v86 = (v33 >> 11) & 7;
    v87 = 0;
    objc_msgSend__executeDrawCommand_(v35, v29, &v72, v30);
  }

  else
  {
    v55 = v35;
    v59 = v34;
    v61 = v36;
    v57 = p_var5;
    v64 = (v33 >> 11) & 7;
    v56 = v31;
    objc_msgSend_setCullMode_(v35->_renderEncoder->var3, v29, 1, v30);
    v72 = v37;
    *&v73 = v38;
    *(&v73 + 1) = v39;
    v74 = v16;
    v75 = v15;
    v76 = v66;
    v77 = v18;
    v78 = var3;
    v79 = a4;
    v80 = v57;
    v81 = v59;
    v82 = v68;
    v83 = v67;
    v84 = v61;
    v85 = v40;
    v86 = v64;
    v87 = 0;
    objc_msgSend__executeDrawCommand_(v55, v42, &v72, v43);
    objc_msgSend_setCullMode_(v55->_renderEncoder->var3, v44, 2, v45);
    v72 = v37;
    *&v73 = v38;
    *(&v73 + 1) = v39;
    v74 = v16;
    v75 = v15;
    v76 = v66;
    v77 = v18;
    v78 = var3;
    v79 = a4;
    v80 = v57;
    v81 = v59;
    v82 = v68;
    v83 = v67;
    v84 = v61;
    v85 = v40;
    v86 = v64;
    v87 = 0;
    objc_msgSend__executeDrawCommand_(v55, v46, &v72, v47);
    if ((v56 & 1) == 0)
    {
      v72 = 0;
      *&v73 = 0;
      *(&v73 + 5) = 0;
      sub_1AF1C458C(v28, &v72);
      renderEncoder = v55->_renderEncoder;
      v49 = sub_1AF1F1250(v72);
      objc_msgSend_setCullMode_(renderEncoder->var3, v50, v49, v51);
    }
  }
}

- (void)setForceAsyncShaderCompilation:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 144) = *(self + 144) & 0xEF | v3;
}

- (void)setCollectsCompilationErrors:(BOOL)a3
{
  self->_compilationIssues.collectEnabled = a3;
  errors = self->_compilationIssues.errors;
  if (a3)
  {
    if (!errors)
    {
      errors = objc_alloc_init(MEMORY[0x1E695DF90]);
      self->_compilationIssues.errors = errors;
    }

    objc_msgSend_removeAllObjects(errors, a2, a3, v3);
  }

  else
  {

    self->_compilationIssues.errors = 0;
  }
}

- (void)drawWireframeOverlayForElements:(id *)a3 range:(id)a4 store:(__CFXRendererElementStore *)a5 passInstance:(__CFXPassInstance *)a6
{
  v8 = a5;
  var1 = a4.var1;
  var0 = a4.var0;
  v53 = *MEMORY[0x1E69E9840];
  objc_msgSend_pushDebugGroup_(self, a2, @"VFX - Draw wireframe", a4.var0, a4.var1, a5, a6, a7);
  LODWORD(v13) = -1138501878;
  LODWORD(v14) = -1194215657;
  LODWORD(v15) = -10.0;
  objc_msgSend_setDepthBias_slopeScale_clamp_(self->_renderEncoder->var3, v16, v17, v18, v15, v13, v14);
  if (var0 < var0 + var1)
  {
    v23 = &a3[var0];
    *&v22 = 257;
    v44 = v22;
    v24 = var0 + var1 - var0;
    v45 = v8;
    do
    {
      v25 = *v23++;
      a3 = (a3 & 0xFFFFFFFF00000000 | v25);
      v26 = sub_1AF1474D8(v8, a3);
      v27 = sub_1AF146110(v26);
      v28 = sub_1AF146118(v26);
      v29 = sub_1AF146158(v26);
      if (v29)
      {
        v30 = v29;
        v31 = sub_1AF146178(v26);
        if (v31)
        {
          v32 = v31;
          v33 = sub_1AFDE8204(self->_resourceManager, v26, self->_engineContext, a6, self->_processingContext.programHashCodeStoreKey);
          if (v33)
          {
            material = v33->material;
            program = v33->program;
            v35 = sub_1AF15B364(material);
            objc_msgSend_setRasterizerStates_(self, v36, v35, v37);
            v38 = (*(v26 + 80) >> 11) & 7;
            v48[0] = program;
            v48[1] = 0;
            v48[2] = material;
            v48[3] = v28;
            v8 = v45;
            v48[4] = v27;
            v48[5] = v30;
            v48[6] = v32;
            memset(&v48[7], 0, 24);
            v49 = v44;
            v50 = 0;
            v51 = v38;
            v52 = 0;
            objc_msgSend__executeDrawCommand_(self, v39, v48, v40);
          }
        }
      }

      --v24;
    }

    while (v24);
  }

  objc_msgSend_setDepthBias_slopeScale_clamp_(self->_renderEncoder->var3, v19, v20, v21, 0.0, 0.0, 0.0, v44);
  objc_msgSend_popDebugGroup(self, v41, v42, v43);
}

+ (void)registerBindings
{
  objc_msgSend_registerSemantic_withBlock_(VFXMTLShaderBindingsGenerator, a2, @"modelTransform", &unk_1F24E87A0);
  objc_msgSend_registerSemantic_withBlock_(VFXMTLShaderBindingsGenerator, v2, @"inverseModelTransform", &unk_1F24E87C0);
  objc_msgSend_registerSemantic_withBlock_(VFXMTLShaderBindingsGenerator, v3, @"modelViewTransform", &unk_1F24E87E0);
  objc_msgSend_registerSemantic_withBlock_(VFXMTLShaderBindingsGenerator, v4, @"inverseModelViewTransform", &unk_1F24E8800);
  objc_msgSend_registerSemantic_withBlock_(VFXMTLShaderBindingsGenerator, v5, @"normalTransform", &unk_1F24E8820);
  objc_msgSend_registerSemantic_withBlock_(VFXMTLShaderBindingsGenerator, v6, @"modelViewProjectionTransform", &unk_1F24E8840);
  objc_msgSend_registerSemantic_withBlock_(VFXMTLShaderBindingsGenerator, v7, @"inverseModelViewProjectionTransform", &unk_1F24E8860);
  objc_msgSend_registerSemantic_withBlock_(VFXMTLShaderBindingsGenerator, v8, @"lastFrameModelTransform", &unk_1F24E8880);
  objc_msgSend_registerSemantic_withBlock_(VFXMTLShaderBindingsGenerator, v9, @"motionBlurIntensity", &unk_1F24E88A0);
  objc_msgSend_registerSemantic_withBlock_(VFXMTLShaderBindingsGenerator, v10, @"boundingBox", &unk_1F24E88C0);
  objc_msgSend_registerSemantic_withBlock_(VFXMTLShaderBindingsGenerator, v11, @"worldBoundingBox", &unk_1F24E88E0);
  objc_msgSend_registerSemantic_withBlock_(VFXMTLShaderBindingsGenerator, v12, @"nodeOpacity", &unk_1F24E8900);
  objc_msgSend_registerSemantic_withBlock_(VFXMTLShaderBindingsGenerator, v13, @"shCoefficients", &unk_1F24E8920);
  objc_msgSend_registerSemantic_withBlock_(VFXMTLShaderBindingsGenerator, v14, @"categoryBitmask", &unk_1F24E8940);
  objc_msgSend_registerShadableArgumentBindingBlockForBuffers_textures_samplers_(VFXMTLShaderBindingsGenerator, v15, &unk_1F24E8960, &unk_1F24E8980, &unk_1F24E89A0);
  objc_msgSend_registerArgument_frequency_needsRenderResource_block_(VFXMTLShaderBindingsGenerator, v16, @"vfx_lights", 0, 1, &unk_1F24E89C0);
  objc_msgSend_registerArgument_frequency_needsRenderResource_block_(VFXMTLShaderBindingsGenerator, v17, @"vfx_lights_count", 0, 1, &unk_1F24E89E0);
  objc_msgSend_registerArgument_frequency_needsRenderResource_block_(VFXMTLShaderBindingsGenerator, v18, @"vfx_commonprofile", 2, 1, &unk_1F24E8960);
  objc_msgSend_registerArgument_frequency_needsRenderResource_block_(VFXMTLShaderBindingsGenerator, v19, @"u_shaderModifierParametersGeometry", 2, 1, &unk_1F24E8960);
  objc_msgSend_registerArgument_frequency_needsRenderResource_block_(VFXMTLShaderBindingsGenerator, v20, @"u_shaderModifierParametersSurface", 2, 1, &unk_1F24E8960);
  objc_msgSend_registerArgument_frequency_needsRenderResource_block_(VFXMTLShaderBindingsGenerator, v21, @"u_shaderModifierParametersFragment", 2, 1, &unk_1F24E8960);
  objc_msgSend_registerArgument_frequency_needsRenderResource_block_(VFXMTLShaderBindingsGenerator, v22, @"u_shaderModifierParametersLighting", 2, 1, &unk_1F24E8960);
  objc_msgSend_registerArgument_frequency_block_(VFXMTLShaderBindingsGenerator, v23, @"vfx_pointSize", 2, &unk_1F24E8A00);
  objc_msgSend_registerArgument_frequency_block_(VFXMTLShaderBindingsGenerator, v24, @"u_clusterTexture", 0, &unk_1F24E8A20);
  objc_msgSend_registerArgument_frequency_block_(VFXMTLShaderBindingsGenerator, v25, @"u_lightIndicesTexture", 0, &unk_1F24E8A40);
  objc_msgSend_registerArgument_frequency_block_(VFXMTLShaderBindingsGenerator, v26, @"u_areaLightBakedDataTexture", 0, &unk_1F24E8A60);
  objc_msgSend_registerArgument_frequency_block_(VFXMTLShaderBindingsGenerator, v27, @"u_shadowKernel", 0, &unk_1F24E8A80);
  v134 = 0;
  v28 = sub_1AF203660();
  if (v28)
  {
    v30 = v28;
    v31 = 0;
    do
    {
      v32 = MEMORY[0x1E696AEC0];
      v33 = sub_1AF1EC048(v31);
      v36 = objc_msgSend_stringWithFormat_(v32, v34, @"u_%@Texture", v35, v33);
      v132[0] = MEMORY[0x1E69E9820];
      v132[1] = 3221225472;
      v132[2] = sub_1AF207E4C;
      v132[3] = &unk_1E7A7CD68;
      v132[4] = &unk_1F24E8AA0;
      v133 = v31;
      objc_msgSend_registerArgument_frequency_block_(VFXMTLShaderBindingsGenerator, v37, v36, 2, v132);
      ++v31;
    }

    while (v31 != v30);
  }

  objc_msgSend_registerArgument_frequency_block_(VFXMTLShaderBindingsGenerator, v29, @"u_shadowTexture", 1, &unk_1F24E8AC0);
  v40 = 0;
  v116 = MEMORY[0x1E69E9820];
  do
  {
    v131[0] = v116;
    v131[1] = 3221225472;
    v131[2] = sub_1AF207F50;
    v131[3] = &unk_1E7A7CD88;
    v131[4] = v40;
    v41 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v38, @"u_goboTexture%d", v39, v40);
    objc_msgSend_registerArgument_frequency_block_(VFXMTLShaderBindingsGenerator, v42, v41, 1, v131);
    v45 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v43, @"u_iesTexture%d", v44, v40);
    objc_msgSend_registerArgument_frequency_block_(VFXMTLShaderBindingsGenerator, v46, v45, 1, v131);
    v49 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v47, @"u_iesCubeTexture%d", v48, v40);
    objc_msgSend_registerArgument_frequency_block_(VFXMTLShaderBindingsGenerator, v50, v49, 1, v131);
    v53 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v51, @"color%d", v52, v40);
    v130[0] = MEMORY[0x1E69E9820];
    v130[1] = 3221225472;
    v130[2] = sub_1AF2080E8;
    v130[3] = &unk_1E7A7CDA8;
    v130[4] = v40;
    objc_msgSend_registerSemantic_withBlock_(VFXMTLShaderBindingsGenerator, v54, v53, v130);
    v57 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v55, @"position%d", v56, v40);
    v129[0] = MEMORY[0x1E69E9820];
    v129[1] = 3221225472;
    v129[2] = sub_1AF208100;
    v129[3] = &unk_1E7A7CDA8;
    v129[4] = v40;
    objc_msgSend_registerSemantic_withBlock_(VFXMTLShaderBindingsGenerator, v58, v57, v129);
    v61 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v59, @"direction%d", v60, v40);
    v128[0] = MEMORY[0x1E69E9820];
    v128[1] = 3221225472;
    v128[2] = sub_1AF20815C;
    v128[3] = &unk_1E7A7CDA8;
    v128[4] = v40;
    objc_msgSend_registerSemantic_withBlock_(VFXMTLShaderBindingsGenerator, v62, v61, v128);
    v65 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v63, @"right%d", v64, v40);
    v127[0] = MEMORY[0x1E69E9820];
    v127[1] = 3221225472;
    v127[2] = sub_1AF2081BC;
    v127[3] = &unk_1E7A7CDA8;
    v127[4] = v40;
    objc_msgSend_registerSemantic_withBlock_(VFXMTLShaderBindingsGenerator, v66, v65, v127);
    v69 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v67, @"up%d", v68, v40);
    v126[0] = MEMORY[0x1E69E9820];
    v126[1] = 3221225472;
    v126[2] = sub_1AF2081D4;
    v126[3] = &unk_1E7A7CDA8;
    v126[4] = v40;
    objc_msgSend_registerSemantic_withBlock_(VFXMTLShaderBindingsGenerator, v70, v69, v126);
    v73 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v71, @"iesMatrix%d", v72, v40);
    v125[0] = MEMORY[0x1E69E9820];
    v125[1] = 3221225472;
    v125[2] = sub_1AF2081EC;
    v125[3] = &unk_1E7A7CDA8;
    v125[4] = v40;
    objc_msgSend_registerSemantic_withBlock_(VFXMTLShaderBindingsGenerator, v74, v73, v125);
    v77 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v75, @"attenuation%d", v76, v40);
    v124[0] = MEMORY[0x1E69E9820];
    v124[1] = 3221225472;
    v124[2] = sub_1AF20820C;
    v124[3] = &unk_1E7A7CDA8;
    v124[4] = v40;
    objc_msgSend_registerSemantic_withBlock_(VFXMTLShaderBindingsGenerator, v78, v77, v124);
    v81 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v79, @"spotAttenuation%d", v80, v40);
    v123[0] = MEMORY[0x1E69E9820];
    v123[1] = 3221225472;
    v123[2] = sub_1AF208224;
    v123[3] = &unk_1E7A7CDA8;
    v123[4] = v40;
    objc_msgSend_registerSemantic_withBlock_(VFXMTLShaderBindingsGenerator, v82, v81, v123);
    v85 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v83, @"shadowMatrix%d", v84, v40);
    v122[0] = MEMORY[0x1E69E9820];
    v122[1] = 3221225472;
    v122[2] = sub_1AF20823C;
    v122[3] = &unk_1E7A7CDA8;
    v122[4] = v40;
    objc_msgSend_registerSemantic_withBlock_(VFXMTLShaderBindingsGenerator, v86, v85, v122);
    v89 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v87, @"shadowRadius%d", v88, v40);
    v121[0] = MEMORY[0x1E69E9820];
    v121[1] = 3221225472;
    v121[2] = sub_1AF2083B8;
    v121[3] = &unk_1E7A7CDA8;
    v121[4] = v40;
    objc_msgSend_registerSemantic_withBlock_(VFXMTLShaderBindingsGenerator, v90, v89, v121);
    v93 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v91, @"shadowColor%d", v92, v40);
    v120[0] = MEMORY[0x1E69E9820];
    v120[1] = 3221225472;
    v120[2] = sub_1AF2083D0;
    v120[3] = &unk_1E7A7CDA8;
    v120[4] = v40;
    objc_msgSend_registerSemantic_withBlock_(VFXMTLShaderBindingsGenerator, v94, v93, v120);
    v97 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v95, @"goboMatrix%d", v96, v40);
    v119[0] = MEMORY[0x1E69E9820];
    v119[1] = 3221225472;
    v119[2] = sub_1AF2083E8;
    v119[3] = &unk_1E7A7CDA8;
    v119[4] = v40;
    objc_msgSend_registerSemantic_withBlock_(VFXMTLShaderBindingsGenerator, v98, v97, v119);
    v101 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v99, @"projectorColor%d", v100, v40);
    v118[0] = MEMORY[0x1E69E9820];
    v118[1] = 3221225472;
    v118[2] = sub_1AF208408;
    v118[3] = &unk_1E7A7CDA8;
    v118[4] = v40;
    objc_msgSend_registerSemantic_withBlock_(VFXMTLShaderBindingsGenerator, v102, v101, v118);
    v105 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v103, @"u_areaPolygonPositions%d", v104, v40);
    v117[0] = MEMORY[0x1E69E9820];
    v117[1] = 3221225472;
    v117[2] = sub_1AF208420;
    v117[3] = &unk_1E7A7CD88;
    v117[4] = v40;
    objc_msgSend_registerArgument_frequency_block_(VFXMTLShaderBindingsGenerator, v106, v105, 1, v117);
    ++v40;
  }

  while (v40 != 8);
  objc_msgSend_registerArgument_frequency_block_(VFXMTLShaderBindingsGenerator, v38, @"u_specularDFGDiffuseHammonTexture", 0, &unk_1F24E8AE0);
  objc_msgSend_registerArgument_frequency_block_(VFXMTLShaderBindingsGenerator, v107, @"u_radianceTexture", 0, &unk_1F24E8B00);
  objc_msgSend_registerArgument_frequency_block_(VFXMTLShaderBindingsGenerator, v108, @"u_irradianceTexture", 0, &unk_1F24E8B20);
  objc_msgSend_registerArgument_frequency_block_(VFXMTLShaderBindingsGenerator, v109, @"u_reflectionProbeTexture", 0, &unk_1F24E8B40);
  objc_msgSend_registerArgument_frequency_block_(VFXMTLShaderBindingsGenerator, v110, @"u_ssaoTexture", 0, &unk_1F24E8B60);
  v111 = _Block_copy(&unk_1F24E8B80);
  objc_msgSend_registerArgument_frequency_needsRenderResource_block_(VFXMTLShaderBindingsGenerator, v112, @"vfx_bezier_curve_data", 1, 0, v111);
  objc_msgSend_registerArgument_frequency_needsRenderResource_block_(VFXMTLShaderBindingsGenerator, v113, @"vfx_bezier_curve_controlPoints", 1, 0, v111);
  _Block_release(v111);
  objc_msgSend_registerCustomProgramBindingBlockTrampoline_(VFXMTLShaderBindingsGenerator, v114, &unk_1F24E8BA0, v115);
}

- (BOOL)mapVolatileMesh:(__CFXMesh *)a3 verticesCount:(int64_t)a4
{
  v7 = sub_1AF1A57DC(a3);
  if (v7)
  {
    v8 = sub_1AF20E1F8(self->_resourceManager, a3, 1);
    if (!sub_1AFDEA260(v8))
    {
      v9 = sub_1AF0D5194();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE7484(v9, v10, v11, v12, v13, v14, v15, v16);
      }
    }

    sub_1AFDEA228(v8);
    v17 = sub_1AFDEA260(v8) * a4;
    CFXBufferAllocatorPerFrameAllocateWithLength(self->_frameVolatileBufferPool.impl, v17);
    v19 = v18;
    v21 = v20;
    sub_1AFDEA284(v8, v17);
    MTLBuffer = CFXBufferSliceGetMTLBuffer(v19, v21);
    sub_1AFDEA234(v8, MTLBuffer);
    sub_1AFDEA254(v8, v21);
    CPUPointer = CFXBufferSliceGetCPUPointer(v19, v21, v23, v24);
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = sub_1AF208E78;
    v37[3] = &unk_1E7A7CE10;
    v37[4] = a4;
    v37[5] = CPUPointer;
    sub_1AF1A2BEC(a3, 1, v37);
    objc_msgSend_addObject_(self->_volatileMeshes, v26, v8, v27);
  }

  else
  {
    v28 = sub_1AF0D5194();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE740C(v28, v29, v30, v31, v32, v33, v34, v35);
    }
  }

  return v7;
}

- (void)unmapVolatileMesh:(__CFXMesh *)a3 modifiedVerticesCount:(int64_t)a4
{
  if (sub_1AF1A57DC(a3))
  {
    v7 = sub_1AF20E1F8(self->_resourceManager, a3, 1);
    v8 = sub_1AFDEA278(v7);
    if (a4 < 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = sub_1AFDEA260(v7) * a4;
    }

    if (!sub_1AFDEA228(v7))
    {
      v18 = sub_1AF0D5194();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE74FC(v18, v19, v20, v21, v22, v23, v24, v25);
      }
    }

    sub_1AFDEA228(v7);
    sub_1AFDEA248(v7);
    CFXBufferSliceMake();
    if (v9)
    {
      CFXBufferSliceDidModify(v26, v27);
    }

    sub_1AF1A2BEC(a3, 1, &unk_1F24E8BC0);
  }

  else
  {
    v10 = sub_1AF0D5194();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE740C(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }
}

- (void)resetVolatileMeshes
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  volatileMeshes = self->_volatileMeshes;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(volatileMeshes, a2, &v12, v16, 16);
  if (v4)
  {
    v8 = v4;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(volatileMeshes);
        }

        sub_1AFDEA234(*(*(&v12 + 1) + 8 * i), 0);
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(volatileMeshes, v11, &v12, v16, 16);
    }

    while (v8);
  }

  objc_msgSend_removeAllObjects(self->_volatileMeshes, v5, v6, v7);
}

- (id)_newMTLBufferFromPoolWithLength:(unint64_t)a3
{
  Object = objc_msgSend_lastObject(self->_bufferPool, a2, a3, v3);
  if (Object)
  {
    v7 = Object;
    v8 = Object;
    objc_msgSend_removeLastObject(self->_bufferPool, v9, v10, v11);
  }

  else
  {
    v7 = objc_alloc_init(VFXMTLBuffer);
  }

  CFXBufferAllocatorPerFrameAllocateWithLength(self->_frameVolatileBufferPool.impl, a3);
  v13 = v12;
  MTLBuffer = CFXBufferSliceGetMTLBuffer(v14, v12);
  objc_msgSend_setBuffer_(v7, v16, MTLBuffer, v17);
  objc_msgSend_setOffset_(v7, v18, v13, v19);
  if (!objc_msgSend_buffer(v7, v20, v21, v22))
  {

    return 0;
  }

  return v7;
}

- (void)_recycleMTLBufferToPool:(id)a3
{
  if (!a3)
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE7574(v6, a2, v7, v3, v8, v9, v10, v11);
    }
  }

  objc_msgSend_addObject_(self->_bufferPool, a2, a3, v3);
  objc_msgSend_setUsedCount_(a3, v12, 0, v13);
  objc_msgSend_setBuffer_(a3, v14, 0, v15);
  objc_msgSend_setOffset_(a3, v16, 0, v17);
  objc_msgSend_setDataSource_(a3, v18, 0, v19);
}

- (__CFXMeshElement)createVolatileMeshElementOfType:(VFXMTLRenderContext *)self primitiveCount:(unsigned int)a2 bytesPerIndex:
{
  v5 = v4;
  v6 = v3;
  v7 = v2;
  if (objc_msgSend_count(self->_freeVolatileMeshElements, *&a2, v2, v3))
  {
    Object = objc_msgSend_lastObject(self->_freeVolatileMeshElements, v9, v10, v11);
    objc_msgSend_addObject_(self->_usedVolatileMeshElements, v13, Object, v14);
    objc_msgSend_removeLastObject(self->_freeVolatileMeshElements, v15, v16, v17);
    if (Object)
    {
      goto LABEL_7;
    }
  }

  else
  {
    Object = sub_1AF1A7F90();
    objc_msgSend_addObject_(self->_usedVolatileMeshElements, v18, Object, v19);
    CFRelease(Object);
    if (Object)
    {
      goto LABEL_7;
    }
  }

  v20 = sub_1AF0D5194();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDDBBAC(v20, v21, v22, v23, v24, v25, v26, v27);
  }

LABEL_7:
  sub_1AF1A699C(Object, v7);
  sub_1AF1A72A0(Object, v6, 0, v5);
  v28 = sub_1AFDE7F98(self->_resourceManager);
  if (sub_1AFDE868C(v28))
  {
    v29 = sub_1AF0D5194();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE75EC(v29, v30, v31, v32, v33, v34, v35, v36);
    }
  }

  sub_1AFDEA33C(v28, Object);
  v37 = sub_1AFDEA004(v28);
  v40 = objc_msgSend__newMTLBufferFromPoolWithLength_(self, v38, v37 * v5, v39);
  sub_1AFDEA31C(v28, v40);

  v44 = objc_msgSend_buffer(v40, v41, v42, v43);
  v48 = objc_msgSend_contents(v44, v45, v46, v47);
  v52 = objc_msgSend_offset(v40, v49, v50, v51);
  v53 = sub_1AFDE8614(v28);
  sub_1AF1A8000(Object, v48 + v52 + v53);
  return Object;
}

- (uint64_t)unmapVolatileMeshElement:(uint64_t)a3
{
  v4 = sub_1AFDE7F98(*(a1 + 112));
  sub_1AF1A809C(a3);
  sub_1AFDEA004(v4);
  v5 = sub_1AFDE868C(v4);
  objc_msgSend_buffer(v5, v6, v7, v8);
  v9 = sub_1AFDE868C(v4);
  objc_msgSend_offset(v9, v10, v11, v12);
  CFXBufferSliceMake();

  return CFXBufferSliceDidModify(v13, v14);
}

- (void)resetVolatileMeshElements
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  usedVolatileMeshElements = self->_usedVolatileMeshElements;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(usedVolatileMeshElements, a2, &v19, v23, 16);
  if (v4)
  {
    v7 = v4;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(usedVolatileMeshElements);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = sub_1AFDE7F98(self->_resourceManager);
        v12 = sub_1AFDE868C(v11);
        objc_msgSend__recycleMTLBufferToPool_(self, v13, v12, v14);
        sub_1AFDEA31C(v11, 0);
        sub_1AFDEA634(v11, 0);
        sub_1AF1A8000(v10, 0);
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(usedVolatileMeshElements, v15, &v19, v23, 16);
    }

    while (v7);
  }

  objc_msgSend_addObjectsFromArray_(self->_freeVolatileMeshElements, v5, self->_usedVolatileMeshElements, v6);
  objc_msgSend_removeAllObjects(self->_usedVolatileMeshElements, v16, v17, v18);
}

- (MTLRenderCommandEncoder)currentRenderCommandEncoder
{
  result = self->_renderEncoder;
  if (result)
  {
    return sub_1AF20107C(result);
  }

  return result;
}

- (MTLRenderPassDescriptor)currentRenderPassDescriptor
{
  v2 = sub_1AF12E8A4(self->_engineContext);

  return sub_1AF270B88(v2);
}

- (void)_drawPBRTextures
{
  v5 = objc_msgSend_currentRenderPassDescriptor(self, a2, v2, v3);
  v9 = objc_msgSend_colorAttachments(v5, v6, v7, v8);
  v12 = objc_msgSend_objectAtIndexedSubscript_(v9, v10, 0, v11);
  v16 = objc_msgSend_texture(v12, v13, v14, v15);
  v20 = objc_msgSend_pixelFormat(v16, v17, v18, v19);
  v24 = objc_msgSend_currentRenderPassDescriptor(self, v21, v22, v23);
  v28 = objc_msgSend_colorAttachments(v24, v25, v26, v27);
  v31 = objc_msgSend_objectAtIndexedSubscript_(v28, v29, 0, v30);
  v35 = objc_msgSend_texture(v31, v32, v33, v34);
  v39 = objc_msgSend_sampleCount(v35, v36, v37, v38);
  if (v20)
  {
    if (self->_debug.pixelFormat != v20 || self->_debug.sampleCount != v39)
    {
      self->_debug.pixelFormat = v20;
      self->_debug.sampleCount = v39;
      v42 = sub_1AFDE868C(self->_resourceManager);
      v46 = objc_msgSend_frameworkLibrary(v42, v43, v44, v45);
      v47 = sub_1AF15BBC4();
      *self->_currentRenderPassDesc.colorFormat = 0u;
      *&self->_currentRenderPassDesc.colorFormat[2] = 0u;
      *&self->_currentRenderPassDesc.colorFormat[4] = 0u;
      *&self->_currentRenderPassDesc.colorFormat[6] = 0u;
      *&self->_currentRenderPassDesc.depthFormat = 0u;
      *&self->_currentRenderPassDesc.sampleCount = 0;

      resourceManager = self->_resourceManager;
      v160 = 0u;
      v161 = 0u;
      v158 = 0u;
      v159 = 0u;
      v156 = 0u;
      v157 = 0u;
      v155 = 0u;
      v162 = v46;
      v163 = 0u;
      v164 = 0u;
      v165 = 0u;
      v166 = 0u;
      v167 = 0u;
      v168 = 0;
      v169 = v47;
      v173 = 0u;
      v174 = 0u;
      v170 = 0u;
      v171 = 0u;
      v172 = 0u;
      v175 = 0;
      v176 = @"quad_vertex";
      v177 = @"quad_display_cube_equirectangular";
      v178 = 0u;
      v179 = 0u;
      self->_debug.displayCubemapPipeline = objc_msgSend_newRenderPipelineStateWithDesc_(resourceManager, v49, &v155, v50);
      v51 = sub_1AF15BC40();

      v52 = self->_resourceManager;
      v160 = 0u;
      v161 = 0u;
      v158 = 0u;
      v159 = 0u;
      v156 = 0u;
      v157 = 0u;
      v155 = 0u;
      v162 = v46;
      v163 = 0u;
      v164 = 0u;
      v165 = 0u;
      v166 = 0u;
      v167 = 0u;
      v168 = 0;
      v169 = v51;
      v173 = 0u;
      v174 = 0u;
      v170 = 0u;
      v171 = 0u;
      v172 = 0u;
      v175 = 0;
      v176 = @"quad_vertex";
      v177 = @"quad_display_texture2D";
      v178 = 0u;
      v179 = 0u;
      self->_debug.displayTexture2DPipeline = objc_msgSend_newRenderPipelineStateWithDesc_(v52, v53, &v155, v54);
    }

    objc_msgSend_setCullMode_(self->_renderEncoder->var3, v40, 0, v41);
    renderEncoder = self->_renderEncoder;
    v56 = sub_1AFDE8620(self->_resourceManager);
    objc_msgSend_setDepthStencilState_(renderEncoder->var3, v57, v56, v58);
    v62 = sub_1AF12DDCC(self->_engineContext);
    v63 = *&self->_anon_4190[672];
    if (v63)
    {
      v64 = objc_msgSend_arrayLength(v63, v59, v60, v61);
      v68 = objc_msgSend_mipmapLevelCount(*&self->_anon_4190[672], v65, v66, v67);
      v72 = objc_msgSend_pixelFormat(*&self->_anon_4190[672], v69, v70, v71);
      v76 = sub_1AF130548(self->_engineContext);
      v77 = v76.n128_f32[2];
      v150 = v76.n128_u64[0];
      v78 = v76.n128_f32[3];
      v79 = v76.n128_f32[2] / v76.n128_f32[3];
      v80 = 1.0 / v64;
      v81 = 4.0 / v76.n128_f32[3];
      v82 = (v80 + ((4.0 / v76.n128_f32[3]) * -2.0)) * 2.5;
      v154 = v80 + ((4.0 / v76.n128_f32[3]) * -2.0);
      if ((v76.n128_f32[2] / v76.n128_f32[3]) <= 1.0)
      {
        v83 = v79 * v82;
      }

      else
      {
        v83 = v82 / v79;
      }

      v153 = v83;
      v99 = objc_msgSend_textureType(*&self->_anon_4190[672], v73, v74, v75, v150);
      IsCube = VFXMTLTextureTypeIsCube(v99);
      v104 = self->_renderEncoder;
      if (IsCube)
      {
        v105 = objc_msgSend_state(self->_debug.displayCubemapPipeline, v101, v102, v103);
        objc_msgSend_setRenderPipelineState_(v104->var3, v106, v105, v107);
        if (v64)
        {
          v110 = 0;
          v111 = -*(&v151 + 1) / v78;
          *&v109 = *&v151 / v77;
          v152 = v109;
          do
          {
            v112 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(*&self->_anon_4190[672], v108, v72, 5, 0, v68, v110, 6, v152);
            sub_1AF1F8FCC(self->_renderEncoder, v112, 0, v113);
            LODWORD(v114) = v152;
            *(&v114 + 1) = v81 + v111;
            *(&v114 + 1) = __PAIR64__(LODWORD(v154), LODWORD(v153));
            v155 = v114;
            sub_1AF176E98(self->_renderEncoder, &v155, 0x10uLL, 0);
            objc_msgSend_drawPrimitives_vertexStart_vertexCount_(self->_renderEncoder->var3, v115, 4, 0, 4);
            v111 = v80 + v111;
            v110 += 6;
            --v64;
          }

          while (v64);
        }
      }

      else
      {
        v116 = objc_msgSend_state(self->_debug.displayTexture2DPipeline, v101, v102, v103);
        objc_msgSend_setRenderPipelineState_(v104->var3, v117, v116, v118);
        if (v64)
        {
          v120 = 0;
          v121 = 0.0;
          do
          {
            v122 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(*&self->_anon_4190[672], v119, v72, 2, 0, v68, v120, 1);
            sub_1AF1F8FCC(self->_renderEncoder, v122, 0, v123);
            LODWORD(v124) = 0;
            *(&v124 + 1) = v81 + v121;
            *(&v124 + 1) = __PAIR64__(LODWORD(v154), LODWORD(v153));
            v155 = v124;
            sub_1AF176E98(self->_renderEncoder, &v155, 0x10uLL, 0);
            objc_msgSend_drawPrimitives_vertexStart_vertexCount_(self->_renderEncoder->var3, v125, 4, 0, 4);
            ++v120;
            v121 = v80 + v121;
          }

          while (v64 != v120);
        }
      }
    }

    else
    {
      v84 = sub_1AF1D005C(v62, 0);
      if (v84)
      {
        v85 = v84;
        if (sub_1AF166220(v84) || sub_1AF1676A0(v85))
        {
          v88 = objc_msgSend_radianceTextureForMaterialProperty_(self, v86, v85, v87);
          if (v88)
          {
            v92 = v88;
            v93 = self->_renderEncoder;
            v94 = objc_msgSend_state(self->_debug.displayCubemapPipeline, v89, v90, v91);
            objc_msgSend_setRenderPipelineState_(v93->var3, v95, v94, v96);
            sub_1AF1F8FCC(self->_renderEncoder, v92, 0, v97);
            v155 = xmmword_1AFE229F0;
            sub_1AF176E98(self->_renderEncoder, &v155, 0x10uLL, 0);
            objc_msgSend_drawPrimitives_vertexStart_vertexCount_(self->_renderEncoder->var3, v98, 4, 0, 4);
          }
        }
      }
    }

    v126 = sub_1AF1D005C(v62, 0);
    if (v126)
    {
      v129 = v126;
      if (sub_1AF166220(v126) || sub_1AF1676A0(v129))
      {
        v130 = objc_msgSend_irradianceTextureForMaterialProperty_(self, v127, v129, v128);
        if (v130)
        {
          v132 = v130;
          v133 = self->_renderEncoder;
          v134 = objc_msgSend_state(self->_debug.displayCubemapPipeline, v127, v131, v128);
          objc_msgSend_setRenderPipelineState_(v133->var3, v135, v134, v136);
          sub_1AF1F8FCC(self->_renderEncoder, v132, 0, v137);
          v155 = xmmword_1AFE22A00;
          sub_1AF176E98(self->_renderEncoder, &v155, 0x10uLL, 0);
          objc_msgSend_drawPrimitives_vertexStart_vertexCount_(self->_renderEncoder->var3, v138, 4, 0, 4);
        }
      }
    }

    v139 = objc_msgSend_specularDFGDiffuseHammonTextureWithRenderContext_(self->_resourceManager, v127, self, v128);
    if (v139)
    {
      v143 = v139;
      v144 = self->_renderEncoder;
      v145 = objc_msgSend_state(self->_debug.displayTexture2DPipeline, v140, v141, v142);
      objc_msgSend_setRenderPipelineState_(v144->var3, v146, v145, v147);
      sub_1AF1F8FCC(self->_renderEncoder, v143, 0, v148);
      v155 = xmmword_1AFE22A10;
      sub_1AF176E98(self->_renderEncoder, &v155, 0x10uLL, 0);
      objc_msgSend_drawPrimitives_vertexStart_vertexCount_(self->_renderEncoder->var3, v149, 4, 0, 4);
    }
  }
}

- (void)_drawShadowMaps
{
  v5 = objc_msgSend_currentRenderPassDescriptor(self, a2, v2, v3);
  v9 = objc_msgSend_colorAttachments(v5, v6, v7, v8);
  v12 = objc_msgSend_objectAtIndexedSubscript_(v9, v10, 0, v11);
  v16 = objc_msgSend_texture(v12, v13, v14, v15);
  if (v16)
  {
    v20 = v16;
    v21 = objc_msgSend_pixelFormat(v16, v17, v18, v19);
    v25 = objc_msgSend_sampleCount(v20, v22, v23, v24);
    if (self->_debug.pixelFormat != v21 || self->_debug.sampleCount != v25)
    {
      self->_debug.pixelFormat = v21;
      self->_debug.sampleCount = v25;
      v28 = sub_1AFDE868C(self->_resourceManager);
      v32 = objc_msgSend_frameworkLibrary(v28, v29, v30, v31);
      v33 = *&self->_currentRenderPassDesc.colorFormat[6];
      v123 = *&self->_currentRenderPassDesc.colorFormat[4];
      v124 = v33;
      v125 = *&self->_currentRenderPassDesc.depthFormat;
      v126 = *&self->_currentRenderPassDesc.sampleCount;
      v34 = *&self->_currentRenderPassDesc.colorFormat[2];
      v121 = *self->_currentRenderPassDesc.colorFormat;
      v122 = v34;

      resourceManager = self->_resourceManager;
      v107 = v123;
      v108 = v124;
      v109 = v125;
      v105 = v121;
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      v97 = 0u;
      v104 = v32;
      v110 = v126;
      v106 = v122;
      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      v117 = @"quad_vertex";
      v118 = @"quad_display_depth2D";
      v119 = 0u;
      v120 = 0u;
      self->_debug.displayDepth2DPipeline = objc_msgSend_newRenderPipelineStateWithDesc_(resourceManager, v36, &v97, v37);

      v107 = v123;
      v108 = v124;
      v109 = v125;
      v105 = v121;
      v38 = self->_resourceManager;
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      v97 = 0u;
      v104 = v32;
      v110 = v126;
      v106 = v122;
      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      v117 = @"quad_vertex";
      v118 = @"quad_display_depth_cube";
      v119 = 0u;
      v120 = 0u;
      self->_debug.displayDepthCubePipeline = objc_msgSend_newRenderPipelineStateWithDesc_(v38, v39, &v97, v40);
    }

    objc_msgSend_setCullMode_(self->_renderEncoder->var3, v26, 0, v27);
    renderEncoder = self->_renderEncoder;
    v42 = sub_1AFDE8620(self->_resourceManager);
    objc_msgSend_setDepthStencilState_(renderEncoder->var3, v43, v42, v44);
    v48 = objc_msgSend_height(v20, v45, v46, v47);
    v96 = (v48 / objc_msgSend_width(v20, v49, v50, v51)) * 0.125;
    v52 = *&self->_anon_4190[456];
    if (objc_msgSend_textureType(v52, v53, v54, v55) == 5)
    {
      v59 = self->_renderEncoder;
      v60 = objc_msgSend_state(self->_debug.displayDepthCubePipeline, v56, v57, v58);
LABEL_9:
      objc_msgSend_setRenderPipelineState_(v59->var3, v61, v60, v62);
      sub_1AF1F8FCC(self->_renderEncoder, v52, 0, v66);
      *&v67 = 0x3F5D70A43C23D70ALL;
      *(&v67 + 1) = __PAIR64__(0.125, LODWORD(v96));
      v97 = v67;
      sub_1AF176E98(self->_renderEncoder, &v97, 0x10uLL, 0);
      objc_msgSend_drawPrimitives_vertexStart_vertexCount_(self->_renderEncoder->var3, v68, 4, 0, 4);
      return;
    }

    if (objc_msgSend_textureType(v52, v56, v57, v58) == 2)
    {
      v59 = self->_renderEncoder;
      v60 = objc_msgSend_state(self->_debug.displayDepth2DPipeline, v63, v64, v65);
      goto LABEL_9;
    }

    if (objc_msgSend_textureType(v52, v63, v64, v65) == 3)
    {
      v72 = self->_renderEncoder;
      v73 = objc_msgSend_state(self->_debug.displayDepth2DPipeline, v69, v70, v71);
      objc_msgSend_setRenderPipelineState_(v72->var3, v74, v73, v75);
      if (objc_msgSend_arrayLength(v52, v76, v77, v78))
      {
        v82 = 0;
        do
        {
          v83 = objc_msgSend_pixelFormat(v52, v79, v80, v81);
          v87 = objc_msgSend_mipmapLevelCount(v52, v84, v85, v86);
          v89 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v52, v88, v83, 2, 0, v87, v82, 1);
          sub_1AF1F8FCC(self->_renderEncoder, v89, 0, v90);
          *&v91 = (v82 * (v96 + 0.01)) + 0.01;
          DWORD1(v91) = 1063088292;
          *(&v91 + 1) = __PAIR64__(0.125, LODWORD(v96));
          v97 = v91;
          sub_1AF176E98(self->_renderEncoder, &v97, 0x10uLL, 0);
          objc_msgSend_drawPrimitives_vertexStart_vertexCount_(self->_renderEncoder->var3, v92, 4, 0, 4);

          ++v82;
        }

        while (v82 < objc_msgSend_arrayLength(v52, v93, v94, v95));
      }
    }
  }
}

- (void)_drawFullScreenTexture:(id)a3
{
  v6 = objc_msgSend_currentRenderPassDescriptor(self, a2, a3, v3);
  v10 = objc_msgSend_depthAttachment(v6, v7, v8, v9);
  v14 = objc_msgSend_texture(v10, v11, v12, v13);
  v18 = objc_msgSend_pixelFormat(v14, v15, v16, v17);
  v22 = objc_msgSend_stencilAttachment(v6, v19, v20, v21);
  v26 = objc_msgSend_texture(v22, v23, v24, v25);
  v30 = objc_msgSend_pixelFormat(v26, v27, v28, v29);
  v34 = 0;
  v35 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v18 ^ ((0x9DDFEA08EB382D69 * (v30 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v30 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v18 ^ ((0x9DDFEA08EB382D69 * (v30 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v30 ^ v18)))) >> 47));
  do
  {
    v36 = objc_msgSend_colorAttachments(v6, v31, v32, v33);
    v39 = objc_msgSend_objectAtIndexedSubscript_(v36, v37, v34, v38);
    v43 = objc_msgSend_texture(v39, v40, v41, v42);
    v47 = objc_msgSend_pixelFormat(v43, v44, v45, v46);
    v51 = objc_msgSend_texture(v39, v48, v49, v50);
    v55 = objc_msgSend_sampleCount(v51, v52, v53, v54);
    v56 = 0x9DDFEA08EB382D69 * (v35 ^ ((0x9DDFEA08EB382D69 * (v47 ^ v35)) >> 47) ^ (0x9DDFEA08EB382D69 * (v47 ^ v35)));
    v57 = 0x9DDFEA08EB382D69 * (v56 ^ (v56 >> 47));
    ++v34;
    v35 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v57 ^ ((0x9DDFEA08EB382D69 * (v57 ^ v55)) >> 47) ^ (0x9DDFEA08EB382D69 * (v57 ^ v55)))) ^ ((0x9DDFEA08EB382D69 * (v57 ^ ((0x9DDFEA08EB382D69 * (v57 ^ v55)) >> 47) ^ (0x9DDFEA08EB382D69 * (v57 ^ v55)))) >> 47));
  }

  while (v34 != 8);
  if (self->_compositeRendering[0].hash != v35)
  {
    self->_compositeRendering[0].hash = v35;
    v58 = sub_1AFDE868C(self->_resourceManager);
    v62 = objc_msgSend_frameworkLibrary(v58, v59, v60, v61);
    v83 = *&self->_currentRenderPassDesc.colorFormat[4];
    v84 = *&self->_currentRenderPassDesc.colorFormat[6];
    v85 = *&self->_currentRenderPassDesc.depthFormat;
    v86 = *&self->_currentRenderPassDesc.sampleCount;
    v81 = *self->_currentRenderPassDesc.colorFormat;
    v82 = *&self->_currentRenderPassDesc.colorFormat[2];

    resourceManager = self->_resourceManager;
    memset(v79, 0, sizeof(v79));
    v80 = v62;
    v91 = 0;
    v92 = 0;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    memset(v90, 0, sizeof(v90));
    v93 = @"vfx_draw_fullscreen_triangle_vertex";
    v94 = @"vfx_draw_fullscreen_gamma_fragment";
    v95 = 0u;
    v96 = 0u;
    self->_compositeRendering[0].pipeline = objc_msgSend_newRenderPipelineStateWithDesc_(resourceManager, v64, v79, v65);
  }

  objc_msgSend_setCullMode_(self->_renderEncoder->var3, v31, 0, v33);
  renderEncoder = self->_renderEncoder;
  v67 = sub_1AFDE8620(self->_resourceManager);
  objc_msgSend_setDepthStencilState_(renderEncoder->var3, v68, v67, v69);
  v70 = self->_renderEncoder;
  v74 = objc_msgSend_state(self->_compositeRendering[0].pipeline, v71, v72, v73);
  objc_msgSend_setRenderPipelineState_(v70->var3, v75, v74, v76);
  sub_1AF1F8FCC(self->_renderEncoder, a3, 0, v77);
  sub_1AF2010C8(self->_renderEncoder, v78);
}

- (void)writeBytes:(const void *)a3 length:(unint64_t)a4
{
  renderEncoder = self->_renderEncoder;
  currentStreamBufferIndices = self->_currentStreamBufferIndices;
  v6 = CFXBufferAllocatorPerFrameAllocateWithBytes(renderEncoder->var5->impl, a3, a4);
  v8 = v7;
  MTLBuffer = CFXBufferSliceGetMTLBuffer(v6, v7);
  if (currentStreamBufferIndices != 0xFF)
  {
    objc_msgSend_setVertexBuffer_offset_atIndex_(renderEncoder->var3, v9, MTLBuffer, v8, currentStreamBufferIndices);
  }

  if ((~currentStreamBufferIndices & 0xFF00) != 0)
  {
    var3 = renderEncoder->var3;

    objc_msgSend_setFragmentBuffer_offset_atIndex_(var3, v9, MTLBuffer, v8, currentStreamBufferIndices >> 8);
  }
}

- (unint64_t)cubeArrayTypeIfSupported
{
  if ((self->_features & 0x100) != 0)
  {
    return 6;
  }

  else
  {
    return 3;
  }
}

- (void)addCommandBufferScheduledHandler:(id)a3
{
  v16[2] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_gpuHandlersLock);
  v8 = objc_msgSend_copy(a3, v5, v6, v7);
  v9 = v8;
  if (self->_commandBufferScheduledHandlers)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    commandBufferScheduledHandlers = self->_commandBufferScheduledHandlers;
    if (isKindOfClass)
    {
      objc_msgSend_addObject_(self->_commandBufferScheduledHandlers, v11, v9, v12);
    }

    else
    {
      v16[0] = self->_commandBufferScheduledHandlers;
      v16[1] = v9;
      v14 = objc_alloc(MEMORY[0x1E695DF70]);
      self->_commandBufferScheduledHandlers = objc_msgSend_initWithObjects_count_(v14, v15, v16, 2);
    }
  }

  else
  {
    self->_commandBufferScheduledHandlers = v8;
  }

  os_unfair_lock_unlock(&self->_gpuHandlersLock);
}

- (void)addCommandBufferCompletedHandler:(id)a3
{
  v16[2] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_gpuHandlersLock);
  v8 = objc_msgSend_copy(a3, v5, v6, v7);
  v9 = v8;
  if (self->_commandBufferCompletedHandlers)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    commandBufferCompletedHandlers = self->_commandBufferCompletedHandlers;
    if (isKindOfClass)
    {
      objc_msgSend_addObject_(self->_commandBufferCompletedHandlers, v11, v9, v12);
    }

    else
    {
      v16[0] = self->_commandBufferCompletedHandlers;
      v16[1] = v9;
      v14 = objc_alloc(MEMORY[0x1E695DF70]);
      self->_commandBufferCompletedHandlers = objc_msgSend_initWithObjects_count_(v14, v15, v16, 2);
    }
  }

  else
  {
    self->_commandBufferCompletedHandlers = v8;
  }

  os_unfair_lock_unlock(&self->_gpuHandlersLock);
}

- (void)addDrawablePresentedHandler:(id)a3
{
  v16[2] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_gpuHandlersLock);
  v8 = objc_msgSend_copy(a3, v5, v6, v7);
  v9 = v8;
  if (self->_drawablePresentedHandlers)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    drawablePresentedHandlers = self->_drawablePresentedHandlers;
    if (isKindOfClass)
    {
      objc_msgSend_addObject_(self->_drawablePresentedHandlers, v11, v9, v12);
    }

    else
    {
      v16[0] = self->_drawablePresentedHandlers;
      v16[1] = v9;
      v14 = objc_alloc(MEMORY[0x1E695DF70]);
      self->_drawablePresentedHandlers = objc_msgSend_initWithObjects_count_(v14, v15, v16, 2);
    }
  }

  else
  {
    self->_drawablePresentedHandlers = v8;
  }

  os_unfair_lock_unlock(&self->_gpuHandlersLock);
}

- (void)discardPendingCommandBufferScheduledHandlers
{
  os_unfair_lock_lock(&self->_gpuHandlersLock);

  self->_commandBufferScheduledHandlers = 0;

  os_unfair_lock_unlock(&self->_gpuHandlersLock);
}

- (void)discardPendingCommandBufferCompletedHandlers
{
  os_unfair_lock_lock(&self->_gpuHandlersLock);

  self->_commandBufferCompletedHandlers = 0;

  os_unfair_lock_unlock(&self->_gpuHandlersLock);
}

- (void)discardPendingDrawablePresentedHandlers
{
  os_unfair_lock_lock(&self->_gpuHandlersLock);

  self->_drawablePresentedHandlers = 0;

  os_unfair_lock_unlock(&self->_gpuHandlersLock);
}

- (void)_allowGPUBackgroundExecution
{
  if (!self->_clientCommandBuffer && !objc_msgSend_clientCommandQueue(self, a2, v2, v3))
  {
    ownedCommandQueue = self->_ownedCommandQueue;
    if (ownedCommandQueue)
    {
      if (objc_msgSend_getBackgroundGPUPriority(self->_ownedCommandQueue, v5, v6, v7) != 3)
      {
        return;
      }

      v11 = ownedCommandQueue;
    }

    else
    {
      v12 = sub_1AFDE8698(self->_resourceManager);
      if (objc_msgSend_getBackgroundGPUPriority(v12, v13, v14, v15) != 3)
      {
        return;
      }

      v11 = v12;
    }

    objc_msgSend_setBackgroundGPUPriority_(v11, v9, 2, v10);
  }
}

- (void)_VFXWorldRendererMainPassCustomPostProcessSupportDrawSceneBackgroundUsingEncoder:(id)a3 commandBuffer:(id)a4 renderPassDesc:(id *)a5
{
  v7 = sub_1AF12DDCC(self->_engineContext);
  v8 = sub_1AF1D0008(v7, 0);
  if (v8)
  {
    v9 = v8;
    if (sub_1AF20107C(self->_renderEncoder) != a3)
    {
      sub_1AF20B70C();
    }

    engineContext = self->_engineContext;

    sub_1AF12E1B8(engineContext, v9);
  }
}

- (CFXVFXRenderTargetInfo)renderTargetInfo
{
  v5 = objc_msgSend_currentRenderPassDescriptor(self, a2, v2, v3);
  objc_msgSend_setDescriptor_(self->_renderTargetInfo, v6, v5, v7);
  objc_msgSend_renderSize(self, v8, v9, v10);
  v32 = v11;
  objc_msgSend_renderSize(self, v12, v13, v14);
  v31 = v15;
  objc_msgSend_renderSize(self, v16, v17, v18);
  objc_msgSend_renderSize(self, v19, v20, v21);
  __asm { FMOV            V0.2S, #1.0 }

  objc_msgSend_set_renderTargetSize_(self->_renderTargetInfo, v27, v28, v29, COERCE_DOUBLE(__PAIR64__(v31, v32)));
  return self->_renderTargetInfo;
}

- ($56FBFA7F90079343FE03906F902E417E)bufferForBuiltin:(unsigned __int8)a3
{
  MEMORY[0x1EEE9AC00](self, a2);
  v5 = v3;
  v73 = *MEMORY[0x1E69E9840];
  switch(v4)
  {
    case 3:
      if (CFXBufferSliceGetMTLBuffer(v3[2385], v3[2386]))
      {
        v60 = *(v5 + 19080);
        v61 = *(v5 + 19088);
      }

      else
      {
        v60 = CFXBufferAllocatorPerFrameAllocateWithBytes(*(v5 + 504), (v5 + 720), 0x310uLL);
        *(v5 + 19080) = v60;
        *(v5 + 19088) = v61;
      }

      break;
    case 2:
      if (CFXBufferSliceGetMTLBuffer(v3[2383], v3[2384]))
      {
        v60 = *(v5 + 19064);
        v61 = *(v5 + 19072);
      }

      else
      {
        v60 = CFXBufferAllocatorPerFrameAllocateWithBytes(*(v5 + 504), (v5 + 17472), 0x480uLL);
        *(v5 + 19064) = v60;
        *(v5 + 19072) = v61;
      }

      break;
    case 1:
      if (!CFXBufferSliceGetMTLBuffer(v3[2380], v3[2381]))
      {
        v9 = *(v5 + 1160);
        v10 = *(v5 + 1168);
        if (!*(v5 + 19056))
        {
          v11 = objc_msgSend_newFunctionWithName_constants_library_(*(v5 + 112), v6, @"global_constants_encoder", 0, 0);
          *(v5 + 19056) = objc_msgSend_newArgumentEncoderWithBufferIndex_(v11, v12, 0, v13);
        }

        v14 = objc_msgSend_defaultLightingEnvironmentIrradianceTexture(*(v5 + 112), v6, v7, v8);
        v18 = objc_msgSend_defaultLightingEnvironmentRadianceTexture(*(v5 + 112), v15, v16, v17);
        v21 = objc_msgSend_specularDFGDiffuseHammonTextureWithRenderContext_(*(v5 + 112), v19, v5, v20);
        v25 = objc_msgSend_encodedLength(*(v5 + 19056), v22, v23, v24);
        CFXBufferAllocatorPerFrameAllocateWithLength(*(v5 + 504), v25);
        *(v5 + 19040) = v26;
        *(v5 + 19048) = v27;
        v28 = *(v5 + 19056);
        MTLBuffer = CFXBufferSliceGetMTLBuffer(v26, v27);
        objc_msgSend_setArgumentBuffer_offset_(v28, v30, MTLBuffer, *(v5 + 19048));
        v33 = objc_msgSend_constantDataAtIndex_(*(v5 + 19056), v31, 0, v32);
        *v33 = v10;
        v33[1] = v9;
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v64 = 0u;
        v34 = *(MEMORY[0x1E69E9B10] + 16);
        v62[0] = *MEMORY[0x1E69E9B10];
        v62[1] = v34;
        v62[2] = *(MEMORY[0x1E69E9B10] + 32);
        v63 = 0u;
        LODWORD(v63) = 1065353216;
        v35 = CFXBufferAllocatorPerFrameAllocateWithBytes(*(v5 + 504), v62, 0xD0uLL);
        v37 = v36;
        v38 = *(v5 + 19056);
        v39 = CFXBufferSliceGetMTLBuffer(v35, v36);
        objc_msgSend_setBuffer_offset_atIndex_(v38, v40, v39, v37, 10);
        v41 = *(v5 + 424);
        v42 = CFXBufferSliceGetMTLBuffer(v35, v37);
        objc_msgSend_useResource_usage_stages_(*(v41 + 16), v43, v42, 1, 3);
        bzero(v62, 0x65C0uLL);
        v44 = CFXBufferAllocatorPerFrameAllocateWithBytes(*(v5 + 504), v62, 0x65C0uLL);
        v46 = v45;
        v47 = *(v5 + 19056);
        v48 = CFXBufferSliceGetMTLBuffer(v44, v45);
        objc_msgSend_setBuffer_offset_atIndex_(v47, v49, v48, v46, 11);
        v50 = *(v5 + 424);
        v51 = CFXBufferSliceGetMTLBuffer(v44, v46);
        objc_msgSend_useResource_usage_stages_(*(v50 + 16), v52, v51, 1, 3);
        objc_msgSend_setTexture_atIndex_(*(v5 + 19056), v53, 0, 24);
        objc_msgSend_setTexture_atIndex_(*(v5 + 19056), v54, v14, 20);
        objc_msgSend_setTexture_atIndex_(*(v5 + 19056), v55, v18, 21);
        objc_msgSend_setTexture_atIndex_(*(v5 + 19056), v56, v21, 22);
        objc_msgSend_useResource_usage_stages_(*(*(v5 + 424) + 16), v57, v14, 1, 3);
        objc_msgSend_useResource_usage_stages_(*(*(v5 + 424) + 16), v58, v18, 1, 3);
        objc_msgSend_useResource_usage_stages_(*(*(v5 + 424) + 16), v59, v21, 1, 3);
      }

      v60 = *(v5 + 19040);
      v61 = *(v5 + 19048);
      break;
    default:
      v60 = 0;
      v61 = 0;
      break;
  }

  result.var1 = v61;
  result.var2 = HIDWORD(v61);
  result.var0 = v60;
  return result;
}

- (id)makeRenderPipelineForResourceID:(unint64_t)a3
{
  v5 = objc_msgSend_renderPipelineDescForResourceID_(self->_resourceManager, a2, a3, v3);
  if (v5)
  {
    v9 = v5;
    v10 = objc_msgSend_programHashCode(v5, v6, v7, v8);
    if (v10)
    {
      v12 = sub_1AF130160(self->_engineContext, v10, 0, 0);
      HIWORD(v42) = 0;
      *(&v42 + 10) = 0;
      memset(v45, 0, sizeof(v45));
      v16 = objc_msgSend_vertexDescriptor(v9, v13, v14, v15);
      v20 = objc_msgSend_vertexDescriptor(v9, v17, v18, v19);
      v24 = objc_msgSend_hash(v20, v21, v22, v23);
      resourceManager = self->_resourceManager;
      *&v38 = 0;
      *(&v38 + 1) = v12;
      v39 = 0u;
      v40 = 0u;
      *&v41 = 33620223;
      *(&v41 + 1) = v16;
      *&v42 = v24;
      WORD4(v42) = 0;
      v43 = 0;
      v44 = 0;
      v46 = 0;
      v47 = 0;
      v27 = objc_msgSend_renderResourceForProgramDesc_renderPassDesc_(resourceManager, v26, &v38, &self->_currentRenderPassDesc);
      v31 = objc_msgSend_state(v27, v28, v29, v30);
    }

    else
    {
      v35 = *&self->_currentRenderPassDesc.colorFormat[6];
      v40 = *&self->_currentRenderPassDesc.colorFormat[4];
      v41 = v35;
      v43 = *&self->_currentRenderPassDesc.sampleCount;
      v36 = *&self->_currentRenderPassDesc.colorFormat[2];
      v38 = *self->_currentRenderPassDesc.colorFormat;
      v39 = v36;
      v42 = *&self->_currentRenderPassDesc.depthFormat;
      v31 = objc_msgSend_renderResourcesFor_renderPassFormat_(self, v11, v9, &v38);
    }

    v34 = v31;
    objc_msgSend_registerRenderPipelineDescriptor_state_(self->_resourceManager, v32, v9, v31);
  }

  else
  {
    if ((byte_1EB6586A6 & 1) == 0)
    {
      byte_1EB6586A6 = 1;
      v33 = sub_1AF0D5194();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDE7754();
      }
    }

    return 0;
  }

  return v34;
}

- ($56FBFA7F90079343FE03906F902E417E)vfxCoreViewConstants
{
  v2 = *&self->_vfxViewUniforms.impl._offset;
  buffer = self->_vfxViewUniforms.impl._buffer;
  result.var1 = v2;
  result.var2 = HIDWORD(v2);
  result.var0 = buffer;
  return result;
}

- (id).cxx_construct
{
  self->_resourceBlitEncoder._encoder = 0;
  self->_resourceBlitEncoder._commandBuffer = 0;
  self->_frameTexturePool.impl = 0;
  v3 = -12544;
  self->_frameConstantBufferPool.impl = 0;
  self->_frameVolatileBufferPool.impl = 0;
  do
  {
    v4 = (self + v3);
    v4[875] = 0uLL;
    v4[874] = 0uLL;
    v4[873] = 0uLL;
    v4[872] = 0uLL;
    v4[829] = 0uLL;
    v4[830] = 0uLL;
    v4[831] = 0uLL;
    v4[832] = 0uLL;
    v4[833] = 0uLL;
    v4[834] = 0uLL;
    v4[835] = 0uLL;
    v4[836] = 0uLL;
    v4[837] = 0uLL;
    v4[838] = 0uLL;
    v4[839] = 0uLL;
    v4[840] = 0uLL;
    v4[841] = 0uLL;
    v4[842] = 0uLL;
    v4[843] = 0uLL;
    v4[844] = 0uLL;
    v4[845] = 0uLL;
    v4[846] = 0uLL;
    v4[847] = 0uLL;
    v4[848] = 0uLL;
    v4[849] = 0uLL;
    v4[850] = 0uLL;
    v4[851] = 0uLL;
    v4[852] = 0uLL;
    v4[869] = 0uLL;
    v4[868] = 0uLL;
    v4[867] = 0uLL;
    v4[866] = 0uLL;
    v4[865] = 0uLL;
    v4[864] = 0uLL;
    v4[863] = 0uLL;
    v4[862] = 0uLL;
    v4[861] = 0uLL;
    v4[860] = 0uLL;
    v4[859] = 0uLL;
    v4[858] = 0uLL;
    v3 += 784;
  }

  while (v3);
  *&self->_lighting.frameLightingSetDatas.__table_.__first_node_.__next_ = 0u;
  self->_lighting.frameLightingSetDatas.__table_.__bucket_list_ = 0u;
  bzero(&self->_worldUniforms, 0xCE0uLL);
  self->_lighting.frameLightingSetDatas.__table_.__max_load_factor_ = 1.0;
  sub_1AF1F6C30(&self->_anon_4190[144]);
  *&self->_anon_4190[336] = 0u;
  *&self->_anon_4190[432] = 0u;
  self->_remote.vfcGlobalConstants = 0u;
  self->_remote.vfcViewConstants = 0u;
  self->_remote.viewConstants = 0u;
  return self;
}

- (id)texture:(int)a3 :(id)a4
{
  if (!objc_msgSend_isEqualToString_(a4, a2, @"shadowMap", a4))
  {
    return 0;
  }

  v5 = sub_1AF13AE54(self->_processingContext.lightingSystem);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  engineContext = self->_engineContext;

  return sub_1AF130664(engineContext, v6);
}

- (id)buffer:(int)a3 :(id)a4 :(int64_t *)a5 :(int64_t *)a6
{
  v7 = *&a3;
  v9 = objc_msgSend_engineContext(self, a2, *&a3, a4, a5, a6);
  v10 = sub_1AF12E8A4(v9);
  if (!v10)
  {
    return 0;
  }

  v13 = v10;
  if (!objc_msgSend_isEqualToString_(a4, v11, @"passConstants", v12))
  {
    v42 = sub_1AF0D5194();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE7788(a4, v7, v42, v43);
    }

    return 0;
  }

  v17 = objc_msgSend_resourceManager(self, v14, v15, v16);
  v18 = sub_1AFDE868C(v17);
  v22 = objc_msgSend_frameworkLibrary(v18, v19, v20, v21);
  v25 = objc_msgSend_newFunctionWithName_(v22, v23, @"pass_constants_encoder", v24);
  v28 = objc_msgSend_newArgumentEncoderWithBufferIndex_(v25, v26, 0, v27);

  resourceManager = self->_resourceManager;
  v33 = objc_msgSend_encodedLength(v28, v30, v31, v32);
  sub_1AFDE851C(resourceManager, v33, 0);
  v35 = v34;
  objc_msgSend_setArgumentBuffer_offset_(v28, v36, v34, 0);
  v39 = sub_1AF270A00(v13, @"VFX-Depth-Linear", v37, v38);
  objc_msgSend_setTexture_atIndex_(v28, v40, v39, 30);

  return v35;
}

- (id)sampler:(int)a3 :(id)a4
{
  v4 = sub_1AF0D5194();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDE781C();
  }

  return 0;
}

- (const)constantData:(int)a3
{
  anon_4440 = self->_anon_4440;
  if (a3 != 8)
  {
    anon_4440 = 0;
  }

  if (a3 == 1)
  {
    return self->_anon_4440;
  }

  else
  {
    return anon_4440;
  }
}

- (BOOL)constantOffsetAndSize:(int)a3 :(id)a4 :(int64_t *)a5 :(int64_t *)a6
{
  if (a3 != 1)
  {
    if (a3 == 8)
    {
      if (objc_msgSend_isEqualToString_(a4, a2, @"crWorldToViewArray", a4))
      {
        *a5 = 0;
LABEL_15:
        v14 = self->_renderPassParameters.eyeCount << 6;
LABEL_16:
        result = 1;
        goto LABEL_30;
      }

      if (objc_msgSend_isEqualToString_(a4, v10, @"crWorldToProjArray", v11))
      {
        v17 = 128;
LABEL_14:
        *a5 = v17;
        goto LABEL_15;
      }

      if (objc_msgSend_isEqualToString_(a4, v15, @"viewToProjArray", v16))
      {
        v17 = 256;
        goto LABEL_14;
      }

      if (objc_msgSend_isEqualToString_(a4, v18, @"projToViewArray", v19))
      {
        v17 = 384;
        goto LABEL_14;
      }

      if (objc_msgSend_isEqualToString_(a4, v20, @"crwsCameraPositionArray", v21))
      {
        v24 = 512;
LABEL_19:
        *a5 = v24;
        v14 = 16 * self->_renderPassParameters.eyeCount;
        goto LABEL_16;
      }

      if (objc_msgSend_isEqualToString_(a4, v22, @"renderTargetSize", v23))
      {
        v12 = 816;
        goto LABEL_7;
      }

      if (objc_msgSend_isEqualToString_(a4, v25, @"viewportCount", v26))
      {
        v29 = 832;
LABEL_26:
        *a5 = v29;
        result = 1;
        v14 = 4;
        goto LABEL_30;
      }

      if (objc_msgSend_isEqualToString_(a4, v27, @"useVertexAmplification", v28))
      {
        v29 = 836;
        goto LABEL_26;
      }

      if (objc_msgSend_isEqualToString_(a4, v30, @"viewportPercentsArray", v31))
      {
        v24 = 928;
        goto LABEL_19;
      }
    }

LABEL_29:
    v14 = 0;
    result = 0;
    *a5 = 0;
    goto LABEL_30;
  }

  if (!objc_msgSend_isEqualToString_(a4, a2, @"crwsReferencePosition", a4))
  {
    goto LABEL_29;
  }

  v12 = 800;
LABEL_7:
  *a5 = v12;
  result = 1;
  v14 = 16;
LABEL_30:
  *a6 = v14;
  return result;
}

- (id)renderResourcesFor:(id)a3 renderPassFormat:(id *)a4
{
  var3 = a4->var3;
  v6 = *&a4->var0[2];
  v12[0] = *a4->var0;
  v12[1] = v6;
  v7 = *&a4->var0[6];
  v12[2] = *&a4->var0[4];
  v12[3] = v7;
  v12[4] = *&a4->var1;
  v13 = var3;
  v8 = a3;
  v9 = self;
  v10 = sub_1AF70CCBC(v8, v12);

  return v10;
}

@end