@interface VFXMTLResourceManager
+ (void)_fillVertexDescriptor:(id)descriptor withSemantic:(char)semantic inputSet:(int64_t)set bufferIndex:(int64_t)index vertexFormat:(unint64_t)format offset:(unint64_t)offset stride:(unint64_t)stride;
- ($A0006519144E89EAB0D3761C94EDBD8D)descForDepthStencilState:(id)state;
- (BOOL)_copyImage:(__CFXImage *)image toTexture:(id)texture desc:(id)desc textureOptions:(unsigned __int8)options needsMipMapGeneration:(BOOL)generation;
- (BOOL)allowHotReload;
- (VFXMTLResourceManager)initWithDevice:(id)device remoteEncoding:(BOOL)encoding;
- (__CFXProgram)defaultProgramUsingTessellation:(BOOL)tessellation;
- (id)_bufferForData:(__CFData *)data bytesPerIndex:(unint64_t)index;
- (id)_bufferForMTLBuffer:(void *)buffer;
- (id)_computePipelineStateForKernel:(id)kernel constants:(id)constants constantsHash:(id)hash threadGroupSizeIsMultipleOfThreadExecutionWidth:(BOOL)width;
- (id)_newComputeDescriptorForPipelineDesc:(id *)desc library:(id)library;
- (id)_textureDescriptorFromImage:(__CFXImage *)image needsMipMap:(BOOL)map textureOptions:(unsigned __int8)options;
- (id)areaLightPrecomputedDataTexture;
- (id)colorMatchingComputePipelineStateForBiPlanarPixelBufferWithFormatType:(unsigned int)type pixelBufferYCbCrMatrix:(id)matrix pixelBufferColorPrimaries:(id)primaries pixelBufferTransferFunction:(id)function sourceColorSpace:(CGColorSpace *)space destinationColorSpace:(CGColorSpace *)colorSpace renderContext:(id)context;
- (id)computeEvaluatorWithContext:(MTLContext *)context srcDesc:(const BufferDescriptor *)desc dstDesc:(const BufferDescriptor *)dstDesc duDesc:(const BufferDescriptor *)duDesc dvDesc:(const BufferDescriptor *)dvDesc;
- (id)computePipelineStateForKernel:(id)kernel withStageDescriptor:(id)descriptor stageDescriptorUpdateBlock:(id)block constants:(id)constants constantsHash:(id)hash;
- (id)copyTextureByConvertingToCubeMapIfApplicable:(id)applicable engineContext:(__CFXEngineContext *)context needsMipmap:(BOOL)mipmap;
- (id)defaultCubeTexture;
- (id)defaultLightingEnvironmentIrradianceTexture;
- (id)defaultLightingEnvironmentRadianceTexture;
- (id)defaultTexture;
- (id)defaultTexture1D;
- (id)defaultTexture3D;
- (id)defaultTextureForTextureType:(unint64_t)type;
- (id)depthStencilStateForDepthStencilDesc:(id)desc;
- (id)fetchArgumentBufferDescriptorWithRemoteID:(unint64_t)d offset:(unint64_t)offset;
- (id)getUniqueStageDescriptor:(id)descriptor;
- (id)hazardousResourceForKey:(id)key inLockedRegistry:(id *)registry onBehalfOfRenderContext:(id)context withHazardTrackingHandler:(id)handler;
- (id)iesTextureForProfile:(void *)profile renderContext:(id)context;
- (id)irradianceTextureForEnvironmentTexture:(id)texture renderContext:(id)context applySH:(id)h;
- (id)irradianceTextureForPrecomputedLightingEnvironment:(id)environment;
- (id)latlongTextureForCubemap:(id)cubemap pixelFormat:(unint64_t)format renderContext:(id)context needsMipmap:(BOOL)mipmap;
- (id)lazyMTKTextureLoader;
- (id)newComputePipelineStateForDesc:(id *)desc library:(id)library;
- (id)newComputePipelineStateWithFunctionName:(id)name;
- (id)newComputePipelineStateWithFunctionName:(id)name constantValues:(id)values;
- (id)newComputePipelineStateWithFunctionName:(id)name constantValues:(id)values linkedFunctions:(id)functions;
- (id)newComputePipelineStateWithFunctionName:(id)name library:(id)library constantValues:(id)values linkedFunctions:(id)functions;
- (id)newCubemapTextureForLatlongTexture:(id)texture pixelFormat:(unint64_t)format engineContext:(__CFXEngineContext *)context needsMipmap:(BOOL)mipmap;
- (id)newFunctionWithName:(id)name constants:(id)constants library:(id)library;
- (id)newRadianceTextureForEnvironmentTexture:(id)texture size:(unsigned int)size engineContext:(__CFXEngineContext *)context cpuAccessible:(BOOL)accessible;
- (id)newRenderPipelineStateWithDesc:(id *)desc;
- (id)newTextureUsingMTKTextureLoaderWithData:(id)data options:(id)options;
- (id)newTextureUsingMTKTextureLoaderWithURL:(id)l options:(id)options;
- (id)radianceTextureForEnvironmentTexture:(id)texture engineContext:(__CFXEngineContext *)context;
- (id)radianceTextureForPrecomputedLightingEnvironment:(id)environment;
- (id)renderResourceForAsset:(void *)asset withEngineContext:(__CFXEngineContext *)context entityCache:(int64_t *)cache isFallback:(BOOL *)fallback isDynamic:(BOOL *)dynamic;
- (id)renderResourceForDeformerStack:(__CFXDeformerStack *)stack node:(__CFXNode *)node dataKind:(unsigned __int8)kind;
- (id)renderResourceForImage:(__CFXImage *)image sampler:(id)sampler options:(unsigned __int8)options engineContext:(__CFXEngineContext *)context didFallbackToDefaultTexture:(BOOL *)texture;
- (id)renderResourceForImageProxy:(__CFXImageProxy *)proxy sampler:(id)sampler engineContext:(__CFXEngineContext *)context didFallbackToDefaultTexture:(BOOL *)texture;
- (id)renderResourceForMaterialProperty:(__CFXMaterialProperty *)property withEngineContext:(__CFXEngineContext *)context didFallbackToDefaultTexture:(BOOL *)texture isDynamic:(BOOL *)dynamic;
- (id)renderResourceForMorpher:(__CFXMorpher *)morpher baseMesh:(__CFXMesh *)mesh dataKind:(unsigned __int8)kind provider:(id)provider;
- (id)renderResourceForProgramDesc:(id *)desc renderPassDesc:(id *)passDesc;
- (id)renderResourceForSkinner:(__CFXSkinner *)skinner baseMesh:(__CFXMesh *)mesh dataKind:(unsigned __int8)kind provider:(id)provider;
- (id)samplerStateForSamplerDesc:(id)desc;
- (id)shFromCPU:(id)u commandBuffer:(id)buffer;
- (id)specularDFGDiffuseHammonTextureWithRenderContext:(id)context;
- (id)sphericalHarmonicsForEnvironmentTexture:(id)texture order:(unint64_t)order commandBuffer:(id)buffer;
- (id)unstageTexture:(id)texture commandBuffer:(id)buffer;
- (int64_t)decrementUsageCount;
- (unint64_t)registerRenderPipelineDescriptor:(id)descriptor state:(id)state;
- (unint64_t)resourceIDForBuffer:(id)buffer;
- (unint64_t)resourceIDForRenderPipelineState:(id)state;
- (unint64_t)resourceIDForTexture:(id)texture;
- (unsigned)builtinForBufferSlice:(id)slice;
- (unsigned)builtinForTexture:(id)texture;
- (void)__createPipelineStateWithDescriptor:(id)descriptor desc:(id *)desc pipeline:(id)pipeline;
- (void)__updateMutableMesh:(__CFXMesh *)mesh withMetalMesh:(id)metalMesh;
- (void)_bakeSphericalHamonicsBasedIrradianceTexture:(id)texture forEnvironmentTexture:(id)environmentTexture renderContext:(id)context applySH:(id)h;
- (void)_bakeStochasticIrradianceTexture:(id)texture forEnvironmentTexture:(id)environmentTexture mipmapLevelForSampling:(unint64_t)sampling renderContext:(id)context;
- (void)_configureComputePipeline:(id)pipeline withDescriptor:(id)descriptor;
- (void)_createPipelineStateWithDescriptor:(id)descriptor desc:(id *)desc pipeline:(id)pipeline;
- (void)_deallocRemoteResources;
- (void)_deformerStackDidChange:(id)change;
- (void)_deformerStackWillDie:(id)die;
- (void)_enqueueCopyFromTexture:(id)texture toTexture:(id)toTexture blitEncoder:(VFXMTLBlitCommandEncoder *)encoder generateMipMaps:(BOOL)maps;
- (void)_imageProxyWillDie:(id)die;
- (void)_imageWillDie:(id)die;
- (void)_materialWillDie:(id)die;
- (void)_meshElementWillDie:(id)die;
- (void)_meshSourceWillDie:(id)die;
- (void)_meshWillDie:(id)die;
- (void)_modelWillDie:(id)die;
- (void)_morphWillDie:(id)die;
- (void)_precomputedLightingEnvironmentWillDie:(id)die;
- (void)_programHashCodeWillDie:(id)die;
- (void)_programWillDie:(id)die;
- (void)_rasterizerStateDidDie:(const void *)die;
- (void)_removeHazardousResourcesForKey:(id)key fromLockedRegistry:(id *)registry byEnumeratingFirstUsingBlock:(id)block;
- (void)_removeMatchingProgram:(__CFXProgram *)program owner:(__CFXWorld *)owner;
- (void)_setupRemoteResourcesRegistry;
- (void)_skinWillDie:(id)die;
- (void)clearArgumentBufferDescriptors;
- (void)colorMatchBiPlanarPixelBufferWithFormatType:(unsigned int)type pixelBufferYCbCrMatrix:(id)matrix pixelBufferColorPrimaries:(id)primaries pixelBufferTransferFunction:(id)function sourceTextureY:(id)y sourceTextureCbCr:(id)cr sourceColorSpace:(CGColorSpace *)space destinationColorSpace:(CGColorSpace *)self0 destinationTexture:(id)self1 renderContext:(id)self2;
- (void)colorMatchSourceTexture:(id)texture sourceColorSpace:(CGColorSpace *)space destinationColorSpace:(CGColorSpace *)colorSpace destinationTexture:(id)destinationTexture renderContext:(id)context;
- (void)commandBufferDidCompleteWithError:(id)error;
- (void)dealloc;
- (void)encodeNewlyRegisteredResources:(__CFXRemoteFrameBuilder *)resources;
- (void)registerBuiltinBuffer:(id)buffer builtin:(unsigned __int8)builtin;
- (void)registerBuiltinTexture:(id)texture builtin:(unsigned __int8)builtin;
- (void)registerRenderPipeline:(id)pipeline forResourceID:(unint64_t)d;
- (void)remoteRegisterArgumentBufferDescriptor:(id)descriptor remoteID:(unint64_t)d offset:(unint64_t)offset;
- (void)remoteRegisterBuffer:(id)buffer remoteID:(unint64_t)d;
- (void)remoteRegisterRenderPipelineDescriptor:(id)descriptor remoteID:(unint64_t)d;
- (void)remoteRegisterTexture:(id)texture remoteID:(unint64_t)d;
- (void)remoteUnregisterBuffer:(unint64_t)buffer;
- (void)remoteUnregisterTexture:(unint64_t)texture;
- (void)removeResourceForKey:(id)key fromRegistry:(id *)registry;
- (void)removeResourceIDForResource:(id)resource;
- (void)setHazardousResource:(id)resource forKey:(id)key inLockedRegistry:(id *)registry onBehalfOfRenderContext:(id)context;
- (void)setRemoteResourceProvider:(id)provider;
@end

@implementation VFXMTLResourceManager

- (VFXMTLResourceManager)initWithDevice:(id)device remoteEncoding:(BOOL)encoding
{
  encodingCopy = encoding;
  v49 = *MEMORY[0x1E69E9840];
  v44.receiver = self;
  v44.super_class = VFXMTLResourceManager;
  v6 = [(VFXMTLResourceManager *)&v44 init];
  if (v6)
  {
    v7 = sub_1AF0D5194();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v46 = v6;
      v47 = 2048;
      deviceCopy = device;
      _os_log_impl(&dword_1AF0CE000, v7, OS_LOG_TYPE_INFO, "Info: VFXMTLResourceManager(%p) initWithDevice device:%p", buf, 0x16u);
    }

    *(v6 + 2) = 0;
    if (encodingCopy)
    {
      v8 = 3;
    }

    else
    {
      v8 = 1;
    }

    *(v6 + 1) = CFXGPUDeviceCreateWithOptions(device, v8);
    if (!sub_1AF28A1D8())
    {
      goto LABEL_10;
    }

    v12 = objc_msgSend_newCommandQueue(device, v9, v10, v11);
    if (v12)
    {
      *(v6 + 3) = v12;
      objc_msgSend_setLabel_(v12, v13, @"com.apple.vfx", v14);
LABEL_10:
      v15 = [VFXMTLLibraryManager alloc];
      *(v6 + 5) = objc_msgSend_initWithDevice_(v15, v16, device, v17);
      v18 = malloc_type_calloc(0x358uLL, 1uLL, 0x100004048B25B04uLL);
      *(v6 + 4) = v18;
      objc_msgSend__setEngineStats_(*(v6 + 5), v19, v18, v20);
      *(v6 + 6) = objc_alloc_init(VFXMTLShaderBindingsGenerator);
      v21 = [VFXMTLBufferAllocator alloc];
      *(v6 + 9) = objc_msgSend_initWithDevice_fixedSizeElement_buffersize_name_(v21, v22, *(v6 + 1), 352, 0x40000, @"VFXMaterialData");
      *(v6 + 7) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
      *(v6 + 16) = 0;
      *(v6 + 92) = 0;
      *(v6 + 22) = 0;
      *(v6 + 108) = 0;
      *(v6 + 26) = 0;
      *(v6 + 180) = 1;
      *(v6 + 44) = 0;
      *(v6 + 124) = 0;
      *(v6 + 30) = 0;
      *(v6 + 148) = 0;
      *(v6 + 36) = 0;
      *(v6 + 164) = 0;
      *(v6 + 40) = 0;
      *(v6 + 212) = 0;
      *(v6 + 52) = 0;
      *(v6 + 276) = 0;
      *(v6 + 68) = 0;
      *(v6 + 292) = 0;
      *(v6 + 72) = 0;
      *(v6 + 308) = 0;
      *(v6 + 76) = 0;
      *(v6 + 372) = 0;
      *(v6 + 92) = 0;
      *(v6 + 324) = 1;
      *(v6 + 80) = 0;
      *(v6 + 340) = 1;
      *(v6 + 84) = 0;
      *(v6 + 356) = 1;
      *(v6 + 88) = 0;
      *(v6 + 196) = 0;
      *(v6 + 48) = 0;
      *(v6 + 228) = 0;
      *(v6 + 56) = 0;
      *(v6 + 244) = 0;
      *(v6 + 60) = 0;
      *(v6 + 260) = 0;
      *(v6 + 64) = 0;
      *(v6 + 388) = 0;
      *(v6 + 96) = 0;
      *(v6 + 404) = 0;
      *(v6 + 100) = 0;
      *(v6 + 420) = 1;
      *(v6 + 104) = 0;
      *(v6 + 53) = objc_alloc_init(VFXMTLShadableKey);
      *(v6 + 54) = objc_alloc_init(MEMORY[0x1E695DF70]);
      *(v6 + 110) = 0;
      v26 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v23, v24, v25);
      objc_msgSend_addObserver_selector_name_object_(v26, v27, v6, sel__meshSourceWillDie_, @"kCFXNotificationMeshSourceWillDie", 0);
      objc_msgSend_addObserver_selector_name_object_(v26, v28, v6, sel__meshElementWillDie_, @"kCFXNotificationMeshElementWillDie", 0);
      objc_msgSend_addObserver_selector_name_object_(v26, v29, v6, sel__worldWillDie_, @"kCFXNotificationWorldWillDie", 0);
      objc_msgSend_addObserver_selector_name_object_(v26, v30, v6, sel__meshWillDie_, @"kCFXNotificationMeshWillDie", 0);
      objc_msgSend_addObserver_selector_name_object_(v26, v31, v6, sel__imageWillDie_, @"kCFXNotificationImageWillDie", 0);
      objc_msgSend_addObserver_selector_name_object_(v26, v32, v6, sel__imageProxyWillDie_, @"kCFXNotificationImageProxyWillDie", 0);
      objc_msgSend_addObserver_selector_name_object_(v26, v33, v6, sel__programWillDie_, @"kCFXNotificationProgramWillDie", 0);
      objc_msgSend_addObserver_selector_name_object_(v26, v34, v6, sel__materialWillDie_, @"kCFXNotificationMaterialWillDie", 0);
      objc_msgSend_addObserver_selector_name_object_(v26, v35, v6, sel__modelWillDie_, @"kCFXNotificationModelWillDie", 0);
      objc_msgSend_addObserver_selector_name_object_(v26, v36, v6, sel__morphWillDie_, @"kCFXNotificationMorphWillDie", 0);
      objc_msgSend_addObserver_selector_name_object_(v26, v37, v6, sel__skinWillDie_, @"kCFXNotificationSkinWillDie", 0);
      objc_msgSend_addObserver_selector_name_object_(v26, v38, v6, sel__deformerStackWillDie_, @"kCFXNotificationDeformerStackWillDie", 0);
      objc_msgSend_addObserver_selector_name_object_(v26, v39, v6, sel__deformerStackDidChange_, @"kCFXNotificationDeformerStackDidChange", 0);
      objc_msgSend_addObserver_selector_name_object_(v26, v40, v6, sel__programHashCodeWillDie_, @"kCFXNotificationProgramHashCodeWillDie", 0);
      objc_msgSend_addObserver_selector_name_object_(v26, v41, v6, sel__precomputedLightingEnvironmentWillDie_, @"kCFXNotificationPrecomputedLightingEnvironmentWillDie", 0);
      *(v6 + 70) = sub_1AF1D534C(@"vfx_debug_vert", @"vfx_debug_frag");
      *(v6 + 71) = sub_1AF1D534C(@"debug_post_tessellation_vert", @"vfx_debug_frag");
      *(v6 + 72) = sub_1AF1D534C(@"vfx_debug_vert", @"debug_isolate_frag");
      sub_1AF1BE27C(v6, sub_1AF20C7C4, @"kCFXNotificationRasterizerStatesDidDie", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      return v6;
    }

    v43 = sub_1AF0D5194();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE86B8(v43);
    }

    return 0;
  }

  return v6;
}

- (void)dealloc
{
  v3 = sub_1AF0D5194();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    sub_1AFDE86FC(self, v3);
  }

  v7 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v4, v5, v6);
  objc_msgSend_removeObserver_(v7, v8, self, v9);

  self->_availableIrradianceTextures.registry = 0;
  self->_availableRadianceTextures.registry = 0;

  self->_availableIESTextures.registry = 0;
  self->_availableImages.safeResourcesRegistry.registry = 0;

  self->_availableImages.hazardousResourcesTracker = 0;
  self->_availableImageProxy.registry = 0;

  self->_availableSamplers.registry = 0;
  self->_availableMeshes.registry = 0;

  self->_availableDeformerStacks.registry = 0;
  self->_availableSkinDeformerReadOnlyBuffers.registry = 0;

  self->_availableMorphDeformerReadOnlyBuffers.registry = 0;
  self->_availableTessellators.registry = 0;

  self->_availableComputePipelines.registry = 0;
  self->_availableComputePipelinesWithStageDescriptor.registry = 0;

  self->_availableColorMatchingComputePipelines.registry = 0;
  self->_availableBuffers.registry = 0;

  self->_availableMeshSources.registry = 0;
  self->_availableMeshElements.registry = 0;

  self->_availableRasterizerStates.registry = 0;
  self->_availableWireframeMaterials.registry = 0;

  self->_availableOpenSubdivComputeEvaluators.registry = 0;
  self->_availableShadables.registry = 0;
  CFRelease(self->_availablePipelineStates);

  defaultProgram = self->_defaultProgram;
  if (defaultProgram)
  {
    CFRelease(defaultProgram);
    self->_defaultProgram = 0;
  }

  defaultProgramForTessellation = self->_defaultProgramForTessellation;
  if (defaultProgramForTessellation)
  {
    CFRelease(defaultProgramForTessellation);
    self->_defaultProgramForTessellation = 0;
  }

  isolateProgram = self->_isolateProgram;
  if (isolateProgram)
  {
    CFRelease(isolateProgram);
    self->_isolateProgram = 0;
  }

  free(self->__engineStats);
  self->__engineStats = 0;

  objc_msgSend__deallocRemoteResources(self, v13, v14, v15);
  CFRelease(self->_gpuDevice);
  v16.receiver = self;
  v16.super_class = VFXMTLResourceManager;
  [(VFXMTLResourceManager *)&v16 dealloc];
}

- (int64_t)decrementUsageCount
{
  v2 = self->_usageCount - 1;
  self->_usageCount = v2;
  return v2;
}

- (void)removeResourceForKey:(id)key fromRegistry:(id *)registry
{
  objc_msgSend_removeObjectForKey_(registry->var0, a2, key, registry);
  if (self->_remote.resourceIDToTexture)
  {

    MEMORY[0x1EEE66B58](self, sel_removeResourceIDForResource_, key, v6);
  }
}

- (void)_meshSourceWillDie:(id)die
{
  v5 = objc_msgSend_object(die, a2, die, v3);
  if (sub_1AF17039C(v5))
  {
    v6 = sub_1AF1AE6E8(v5);
    if (v6)
    {
      v7 = v6;
      if (CFDataGetLength(v6))
      {
        os_unfair_lock_lock(&self->_availableMeshSources.lock);
        objc_msgSend_removeResourceForKey_fromRegistry_(self, v8, v7, &self->_availableMeshSources);

        os_unfair_lock_unlock(&self->_availableMeshSources.lock);
      }
    }
  }
}

- (void)_meshElementWillDie:(id)die
{
  v5 = objc_msgSend_object(die, a2, die, v3);
  os_unfair_lock_lock(&self->_availableMeshElements.lock);
  v8 = objc_msgSend_objectForKey_(self->_availableMeshElements.registry, v6, v5, v7);
  v9 = sub_1AFDE868C(v8);
  if (!objc_msgSend_decrementUsedCount(v9, v10, v11, v12))
  {
    os_unfair_lock_lock(&self->_availableBuffers.lock);
    v14 = sub_1AFDE868C(v8);
    v18 = objc_msgSend_dataSource(v14, v15, v16, v17);
    objc_msgSend_removeResourceForKey_fromRegistry_(self, v19, v18, &self->_availableBuffers);
    os_unfair_lock_unlock(&self->_availableBuffers.lock);
  }

  objc_msgSend_removeResourceForKey_fromRegistry_(self, v13, v5, &self->_availableMeshElements);

  os_unfair_lock_unlock(&self->_availableMeshElements.lock);
}

- (void)_meshWillDie:(id)die
{
  v5 = objc_msgSend_object(die, a2, die, v3);
  os_unfair_lock_lock(&self->_availableMeshes.lock);
  objc_msgSend_removeResourceForKey_fromRegistry_(self, v6, v5, &self->_availableMeshes);
  objc_msgSend_removeResourceForKey_fromRegistry_(self, v7, v5 | 1, &self->_availableMeshes);
  os_unfair_lock_unlock(&self->_availableMeshes.lock);
  os_unfair_lock_lock(&self->_availableSkinDeformerReadOnlyBuffers.lock);
  registry = self->_availableSkinDeformerReadOnlyBuffers.registry;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1AF20CD04;
  v15[3] = &unk_1E7A7CE58;
  v15[4] = self;
  v15[5] = v5;
  objc_msgSend_vfx_enumerateKeysAndValuesUsingBlock_(registry, v9, v15, v10);
  os_unfair_lock_unlock(&self->_availableSkinDeformerReadOnlyBuffers.lock);
  os_unfair_lock_lock(&self->_availableMorphDeformerReadOnlyBuffers.lock);
  v11 = self->_availableMorphDeformerReadOnlyBuffers.registry;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1AF20CD50;
  v14[3] = &unk_1E7A7CE58;
  v14[4] = self;
  v14[5] = v5;
  objc_msgSend_vfx_enumerateKeysAndValuesUsingBlock_(v11, v12, v14, v13);
  os_unfair_lock_unlock(&self->_availableMorphDeformerReadOnlyBuffers.lock);
}

- (void)_morphWillDie:(id)die
{
  v5 = objc_msgSend_object(die, a2, die, v3);
  os_unfair_lock_lock(&self->_availableMorphDeformerReadOnlyBuffers.lock);
  objc_msgSend_removeResourceForKey_fromRegistry_(self, v6, v5, &self->_availableMorphDeformerReadOnlyBuffers);

  os_unfair_lock_unlock(&self->_availableMorphDeformerReadOnlyBuffers.lock);
}

- (void)_programHashCodeWillDie:(id)die
{
  v5 = objc_msgSend_object(die, a2, die, v3);
  os_unfair_lock_lock(&self->_availableWireframeMaterials.lock);
  objc_msgSend_removeResourceForKey_fromRegistry_(self, v6, v5, &self->_availableWireframeMaterials);

  os_unfair_lock_unlock(&self->_availableWireframeMaterials.lock);
}

- (void)_skinWillDie:(id)die
{
  v5 = objc_msgSend_object(die, a2, die, v3);
  os_unfair_lock_lock(&self->_availableSkinDeformerReadOnlyBuffers.lock);
  objc_msgSend_removeResourceForKey_fromRegistry_(self, v6, v5, &self->_availableSkinDeformerReadOnlyBuffers);

  os_unfair_lock_unlock(&self->_availableSkinDeformerReadOnlyBuffers.lock);
}

- (void)_deformerStackWillDie:(id)die
{
  os_unfair_lock_lock(&self->_availableDeformerStacks.lock);
  v8 = objc_msgSend_object(die, v5, v6, v7);
  objc_msgSend_removeResourceForKey_fromRegistry_(self, v9, v8, &self->_availableDeformerStacks);
  objc_msgSend_removeResourceForKey_fromRegistry_(self, v10, v8 | 1, &self->_availableDeformerStacks);

  os_unfair_lock_unlock(&self->_availableDeformerStacks.lock);
}

- (void)_deformerStackDidChange:(id)change
{
  os_unfair_lock_lock(&self->_availableDeformerStacks.lock);
  v8 = objc_msgSend_object(change, v5, v6, v7);
  if (sub_1AF16B74C(v8))
  {
    v11 = objc_msgSend_objectForKey_(self->_availableDeformerStacks.registry, v9, v8, v10);
    v14 = objc_msgSend_objectForKey_(self->_availableDeformerStacks.registry, v12, v8 | 1, v13);
    sub_1AFDE21EC(v11);
    sub_1AFDE21EC(v14);
  }

  else
  {
    objc_msgSend_removeResourceForKey_fromRegistry_(self, v9, v8, &self->_availableDeformerStacks);
    objc_msgSend_removeResourceForKey_fromRegistry_(self, v15, v8 | 1, &self->_availableDeformerStacks);
  }

  os_unfair_lock_unlock(&self->_availableDeformerStacks.lock);
}

- (void)_imageWillDie:(id)die
{
  v5 = objc_msgSend_object(die, a2, die, v3);
  os_unfair_lock_lock(&self->_availableImages.safeResourcesRegistry.lock);
  v7 = 0;
  v8 = MEMORY[0x1E69E9820];
  do
  {
    v10[0] = v8;
    v9 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * (v7 ^ v5 ^ 0xC6A4A7935BD1E995)) ^ ((0xC6A4A7935BD1E995 * (v7 ^ v5 ^ 0xC6A4A7935BD1E995)) >> 47));
    v10[1] = 3221225472;
    v10[2] = sub_1AF20D0BC;
    v10[3] = &unk_1E7A7C0C8;
    v10[4] = self;
    objc_msgSend__removeHazardousResourcesForKey_fromLockedRegistry_byEnumeratingFirstUsingBlock_(self, v6, v9 ^ (v9 >> 47), &self->_availableImages, v10);
    ++v7;
  }

  while (v7 != 16);
  os_unfair_lock_unlock(&self->_availableImages.safeResourcesRegistry.lock);
}

- (void)_imageProxyWillDie:(id)die
{
  v5 = objc_msgSend_object(die, a2, die, v3);
  os_unfair_lock_lock(&self->_availableImageProxy.lock);
  objc_msgSend_removeResourceForKey_fromRegistry_(self, v6, v5, &self->_availableImageProxy);

  os_unfair_lock_unlock(&self->_availableImageProxy.lock);
}

- (void)_precomputedLightingEnvironmentWillDie:(id)die
{
  v5 = objc_msgSend_object(die, a2, die, v3);
  os_unfair_lock_lock(&self->_availableIrradianceTextures.lock);
  objc_msgSend_removeResourceForKey_fromRegistry_(self, v6, v5, &self->_availableIrradianceTextures);
  os_unfair_lock_unlock(&self->_availableIrradianceTextures.lock);
  os_unfair_lock_lock(&self->_availableRadianceTextures.lock);
  objc_msgSend_removeResourceForKey_fromRegistry_(self, v7, v5, &self->_availableRadianceTextures);

  os_unfair_lock_unlock(&self->_availableRadianceTextures.lock);
}

- (void)_rasterizerStateDidDie:(const void *)die
{
  os_unfair_lock_lock(&self->_availableRasterizerStates.lock);
  objc_msgSend_removeResourceForKey_fromRegistry_(self, v5, die, &self->_availableRasterizerStates);

  os_unfair_lock_unlock(&self->_availableRasterizerStates.lock);
}

- (void)_removeMatchingProgram:(__CFXProgram *)program owner:(__CFXWorld *)owner
{
  if (owner)
  {
    v6 = sub_1AF16CD08(owner, a2, program, owner);
  }

  else
  {
    v6 = 0;
  }

  context[0] = program;
  context[1] = v6;
  theArray = 0;
  os_unfair_lock_lock(&self->_availablePipelineStatesLock);
  CFDictionaryApplyFunction(self->_availablePipelineStates, sub_1AF20D338, context);
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v8 = Count;
      for (i = 0; i != v8; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
        v11 = CFDictionaryGetValue(self->_availablePipelineStates, ValueAtIndex);
        CFDictionaryRemoveValue(self->_availablePipelineStates, ValueAtIndex);
      }
    }

    CFRelease(theArray);
  }

  os_unfair_lock_unlock(&self->_availablePipelineStatesLock);
}

- (void)_programWillDie:(id)die
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_object(die, a2, die, v3);
  os_unfair_lock_lock(&self->_availableShadables.lock);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  registry = self->_availableShadables.registry;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(registry, v7, &v27, v32, 16);
  if (v8)
  {
    v12 = v8;
    v13 = 0;
    v14 = *v28;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(registry);
        }

        v16 = *(*(&v27 + 1) + 8 * i);
        if (*(objc_msgSend_pipeline(v16, v9, v10, v11) + 24) == v5)
        {
          if (!v13)
          {
            v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          objc_msgSend_addObject_(v13, v9, v16, v11);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(registry, v9, &v27, v32, 16);
    }

    while (v12);
    if (v13)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v9, &v23, v31, 16);
      if (v17)
      {
        v19 = v17;
        v20 = *v24;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v24 != v20)
            {
              objc_enumerationMutation(v13);
            }

            objc_msgSend_removeResourceForKey_fromRegistry_(self, v18, *(*(&v23 + 1) + 8 * j), &self->_availableShadables);
          }

          v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v18, &v23, v31, 16);
        }

        while (v19);
      }
    }
  }

  os_unfair_lock_unlock(&self->_availableShadables.lock);
  objc_msgSend__removeMatchingProgram_owner_(self, v22, v5, 0);
}

- (void)_materialWillDie:(id)die
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_object(die, a2, die, v3);
  os_unfair_lock_lock(&self->_availableShadables.lock);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  registry = self->_availableShadables.registry;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(registry, v7, &v25, v30, 16);
  if (v8)
  {
    v11 = v8;
    v12 = 0;
    v13 = *v26;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(registry);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        if (*(v15 + 8) == v5)
        {
          if (!v12)
          {
            v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          objc_msgSend_addObject_(v12, v9, v15, v10);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(registry, v9, &v25, v30, 16);
    }

    while (v11);
    if (v12)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v9, &v21, v29, 16);
      if (v16)
      {
        v18 = v16;
        v19 = *v22;
        do
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v22 != v19)
            {
              objc_enumerationMutation(v12);
            }

            objc_msgSend_removeResourceForKey_fromRegistry_(self, v17, *(*(&v21 + 1) + 8 * j), &self->_availableShadables);
          }

          v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v17, &v21, v29, 16);
        }

        while (v18);
      }
    }
  }

  os_unfair_lock_unlock(&self->_availableShadables.lock);
}

- (void)_modelWillDie:(id)die
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_object(die, a2, die, v3);
  os_unfair_lock_lock(&self->_availableShadables.lock);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  registry = self->_availableShadables.registry;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(registry, v7, &v26, v31, 16);
  if (v8)
  {
    v11 = v8;
    v12 = 0;
    v13 = *v27;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(registry);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        if (*(v15 + 16) == v5)
        {
          if (!v12)
          {
            v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          objc_msgSend_addObject_(v12, v9, v15, v10);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(registry, v9, &v26, v31, 16);
    }

    while (v11);
    if (v12)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v9, &v22, v30, 16);
      if (v16)
      {
        v18 = v16;
        v19 = *v23;
        do
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v23 != v19)
            {
              objc_enumerationMutation(v12);
            }

            objc_msgSend_removeResourceForKey_fromRegistry_(self, v17, *(*(&v22 + 1) + 8 * j), &self->_availableShadables);
          }

          v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v17, &v22, v30, 16);
        }

        while (v18);
      }
    }
  }

  os_unfair_lock_unlock(&self->_availableShadables.lock);
  os_unfair_lock_lock(&self->_availableTessellators.lock);
  objc_msgSend_removeResourceForKey_fromRegistry_(self, v21, v5, &self->_availableTessellators);
  os_unfair_lock_unlock(&self->_availableTessellators.lock);
}

- (id)_bufferForMTLBuffer:(void *)buffer
{
  os_unfair_lock_lock(&self->_availableBuffers.lock);
  registry = self->_availableBuffers.registry;
  if (!registry)
  {
    if (self->_availableBuffers.registryKeyIsObject)
    {
      v8 = 0;
    }

    else
    {
      v8 = 258;
    }

    v9 = objc_alloc(MEMORY[0x1E696AD18]);
    registry = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v9, v10, v8, 0, 100);
    self->_availableBuffers.registry = registry;
  }

  v11 = objc_msgSend_objectForKey_(registry, v5, buffer, v6);
  if (v11)
  {
    v15 = v11;
    objc_msgSend_incrementUsedCount(v11, v12, v13, v14);
  }

  else
  {
    v15 = objc_alloc_init(VFXMTLBuffer);
    objc_msgSend_setBuffer_(v15, v16, buffer, v17);
    objc_msgSend_setDataSource_(v15, v18, buffer, v19);
    objc_msgSend_incrementUsedCount(v15, v20, v21, v22);
    objc_msgSend_setObject_forKey_(self->_availableBuffers.registry, v23, v15, buffer);
  }

  os_unfair_lock_unlock(&self->_availableBuffers.lock);
  return v15;
}

- (id)_bufferForData:(__CFData *)data bytesPerIndex:(unint64_t)index
{
  os_unfair_lock_lock(&self->_availableBuffers.lock);
  registry = self->_availableBuffers.registry;
  if (!registry)
  {
    if (self->_availableBuffers.registryKeyIsObject)
    {
      v10 = 0;
    }

    else
    {
      v10 = 258;
    }

    v11 = objc_alloc(MEMORY[0x1E696AD18]);
    registry = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v11, v12, v10, 0, 100);
    self->_availableBuffers.registry = registry;
  }

  v13 = objc_msgSend_objectForKey_(registry, v7, data, v8);
  if (v13)
  {
    v17 = v13;
    objc_msgSend_incrementUsedCount(v13, v14, v15, v16);
  }

  else
  {
    v17 = objc_alloc_init(VFXMTLBuffer);
    BytePtr = CFDataGetBytePtr(data);
    Length = CFDataGetLength(data);
    if (BytePtr)
    {
      v22 = Length;
      if (index == 1)
      {
        v23 = 2 * Length;
        v24 = malloc_type_malloc(2 * Length, 0x1000040BDFB0063uLL);
        v25 = v24;
        if (v22)
        {
          v26 = v24;
          do
          {
            v27 = *BytePtr++;
            *v26++ = v27;
            --v22;
          }

          while (v22);
        }

        BytePtr = CFXGPUDeviceCreateBufferWithBytes(self->_gpuDevice, v24, v23, 0);
        free(v25);
      }

      else
      {
        BytePtr = CFXGPUDeviceCreateBufferWithBytes(self->_gpuDevice, BytePtr, Length, 0);
        LODWORD(v23) = v22;
      }

      engineStats = self->__engineStats;
      engineStats->iboMemory += v23;
      ++engineStats->iboCount;
      objc_msgSend_setOffset_(v17, v28, 0, v29);
    }

    objc_msgSend_setBuffer_(v17, v20, BytePtr, v21);

    objc_msgSend_setDataSource_(v17, v31, data, v32);
    objc_msgSend_incrementUsedCount(v17, v33, v34, v35);
    objc_msgSend_setObject_forKey_(self->_availableBuffers.registry, v36, v17, data);
  }

  os_unfair_lock_unlock(&self->_availableBuffers.lock);
  return v17;
}

+ (void)_fillVertexDescriptor:(id)descriptor withSemantic:(char)semantic inputSet:(int64_t)set bufferIndex:(int64_t)index vertexFormat:(unint64_t)format offset:(unint64_t)offset stride:(unint64_t)stride
{
  if (semantic > 3)
  {
    switch(semantic)
    {
      case 4:
        semanticCopy = 2;
        goto LABEL_20;
      case 5:
        semanticCopy = 4;
        goto LABEL_20;
      case 6:
        semanticCopy = 5;
        goto LABEL_20;
    }
  }

  else
  {
    if (semantic < 2)
    {
      semanticCopy = semantic;
      goto LABEL_20;
    }

    if (semantic == 2)
    {
      semanticCopy = 3;
      goto LABEL_20;
    }

    if (semantic == 3)
    {
      if (set == -1)
      {
        semanticCopy = 6;
        goto LABEL_20;
      }

      semanticCopy = set + 6;
      if ((set + 6) != 14)
      {
        goto LABEL_20;
      }
    }
  }

  v14 = sub_1AF0D5194();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDE87A0();
  }

  semanticCopy = 14;
LABEL_20:
  v15 = objc_msgSend_attributes(descriptor, a2, descriptor, semantic);
  v18 = objc_msgSend_objectAtIndexedSubscript_(v15, v16, semanticCopy, v17);
  objc_msgSend_setFormat_(v18, v19, format, v20);
  v24 = objc_msgSend_attributes(descriptor, v21, v22, v23);
  v27 = objc_msgSend_objectAtIndexedSubscript_(v24, v25, semanticCopy, v26);
  objc_msgSend_setOffset_(v27, v28, offset, v29);
  v33 = objc_msgSend_attributes(descriptor, v30, v31, v32);
  v36 = objc_msgSend_objectAtIndexedSubscript_(v33, v34, semanticCopy, v35);
  objc_msgSend_setBufferIndex_(v36, v37, index + 18, v38);
  v42 = objc_msgSend_layouts(descriptor, v39, v40, v41);
  v45 = objc_msgSend_objectAtIndexedSubscript_(v42, v43, index + 18, v44);
  objc_msgSend_setStride_(v45, v46, stride, v47);
  v51 = objc_msgSend_layouts(descriptor, v48, v49, v50);
  v54 = objc_msgSend_objectAtIndexedSubscript_(v51, v52, index + 18, v53);
  objc_msgSend_setStepFunction_(v54, v55, 1, v56);
}

- (void)__updateMutableMesh:(__CFXMesh *)mesh withMetalMesh:(id)metalMesh
{
  v7 = sub_1AF1A5794(mesh);
  if (v7 != sub_1AFDE323C(metalMesh))
  {
    sub_1AFDEA2A8(metalMesh, v7);
    os_unfair_lock_lock(&self->_availableMeshSources.lock);
    if (!self->_availableMeshSources.registry)
    {
      if (self->_availableMeshSources.registryKeyIsObject)
      {
        v8 = 0;
      }

      else
      {
        v8 = 258;
      }

      v9 = objc_alloc(MEMORY[0x1E696AD18]);
      self->_availableMeshSources.registry = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v9, v10, v8, 0, 100);
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1AF20E0F4;
    v11[3] = &unk_1E7A7CE80;
    v11[4] = self;
    v11[5] = metalMesh;
    sub_1AF1A2BEC(mesh, 1, v11);
    os_unfair_lock_unlock(&self->_availableMeshSources.lock);
  }
}

- (id)renderResourceForDeformerStack:(__CFXDeformerStack *)stack node:(__CFXNode *)node dataKind:(unsigned __int8)kind
{
  v9 = kind == 0;
  os_unfair_lock_lock(&self->_availableDeformerStacks.lock);
  registry = self->_availableDeformerStacks.registry;
  if (!registry)
  {
    if (self->_availableDeformerStacks.registryKeyIsObject)
    {
      v13 = 0;
    }

    else
    {
      v13 = 258;
    }

    v14 = objc_alloc(MEMORY[0x1E696AD18]);
    registry = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v14, v15, v13, 0, 100);
    self->_availableDeformerStacks.registry = registry;
  }

  v16 = objc_msgSend_objectForKey_(registry, v10, v9 | stack, v11);
  if (!v16)
  {
    v16 = sub_1AFDE2074([VFXMTLDeformerStack alloc], stack, node, kind, self);
    objc_msgSend_setObject_forKey_(self->_availableDeformerStacks.registry, v17, v16, v9 | stack);
  }

  os_unfair_lock_unlock(&self->_availableDeformerStacks.lock);
  return v16;
}

- (id)renderResourceForSkinner:(__CFXSkinner *)skinner baseMesh:(__CFXMesh *)mesh dataKind:(unsigned __int8)kind provider:(id)provider
{
  kindCopy = kind;
  os_unfair_lock_lock(&self->_availableSkinDeformerReadOnlyBuffers.lock);
  if (!self->_availableSkinDeformerReadOnlyBuffers.registry)
  {
    if (self->_availableSkinDeformerReadOnlyBuffers.registryKeyIsObject)
    {
      v11 = 0;
    }

    else
    {
      v11 = 258;
    }

    v12 = objc_alloc(MEMORY[0x1E696AD18]);
    self->_availableSkinDeformerReadOnlyBuffers.registry = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v12, v13, v11, 0, 100);
  }

  v14 = sub_1AF15B294(skinner);
  v19 = objc_msgSend_objectForKey_(self->_availableSkinDeformerReadOnlyBuffers.registry, v15, v14, v16);
  if (!v19)
  {
    v20 = objc_alloc(MEMORY[0x1E696AD18]);
    v19 = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v20, v21, 258, 0, 1);
    objc_msgSend_setObject_forKey_(self->_availableSkinDeformerReadOnlyBuffers.registry, v22, v19, v14);
  }

  v23 = (kindCopy == 0) | mesh;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3052000000;
  v35 = sub_1AF20E9F4;
  v36 = sub_1AF20EA04;
  v37 = objc_msgSend_objectForKey_(v19, v17, v23, v18);
  if (!v33[5])
  {
    registry = self->_availableSkinDeformerReadOnlyBuffers.registry;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = sub_1AF20EA10;
    v31[3] = &unk_1E7A7CEF8;
    v31[6] = &v32;
    v31[7] = v14;
    v31[4] = v19;
    v31[5] = v23;
    objc_msgSend_vfx_enumerateKeysAndValuesUsingBlock_(registry, v24, v31, v25);
    v28 = v33[5];
    if (!v28)
    {
      v28 = (*(provider + 2))(provider);
      v33[5] = v28;
    }

    objc_msgSend_setObject_forKey_(v19, v27, v28, v23);
  }

  os_unfair_lock_unlock(&self->_availableSkinDeformerReadOnlyBuffers.lock);
  v29 = v33[5];
  _Block_object_dispose(&v32, 8);
  return v29;
}

- (id)renderResourceForMorpher:(__CFXMorpher *)morpher baseMesh:(__CFXMesh *)mesh dataKind:(unsigned __int8)kind provider:(id)provider
{
  kindCopy = kind;
  os_unfair_lock_lock(&self->_availableMorphDeformerReadOnlyBuffers.lock);
  if (!self->_availableMorphDeformerReadOnlyBuffers.registry)
  {
    if (self->_availableMorphDeformerReadOnlyBuffers.registryKeyIsObject)
    {
      v11 = 0;
    }

    else
    {
      v11 = 258;
    }

    v12 = objc_alloc(MEMORY[0x1E696AD18]);
    self->_availableMorphDeformerReadOnlyBuffers.registry = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v12, v13, v11, 0, 100);
  }

  v14 = sub_1AF15B294(morpher);
  v19 = objc_msgSend_objectForKey_(self->_availableMorphDeformerReadOnlyBuffers.registry, v15, v14, v16);
  if (!v19)
  {
    v20 = objc_alloc(MEMORY[0x1E696AD18]);
    v19 = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v20, v21, 258, 0, 1);
    objc_msgSend_setObject_forKey_(self->_availableMorphDeformerReadOnlyBuffers.registry, v22, v19, v14);
  }

  v23 = (kindCopy == 0) | mesh;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3052000000;
  v35 = sub_1AF20E9F4;
  v36 = sub_1AF20EA04;
  v37 = objc_msgSend_objectForKey_(v19, v17, v23, v18);
  if (!v33[5])
  {
    registry = self->_availableMorphDeformerReadOnlyBuffers.registry;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = sub_1AF20EC98;
    v31[3] = &unk_1E7A7CEF8;
    v31[6] = &v32;
    v31[7] = v14;
    v31[4] = v19;
    v31[5] = v23;
    objc_msgSend_vfx_enumerateKeysAndValuesUsingBlock_(registry, v24, v31, v25);
    v28 = v33[5];
    if (!v28)
    {
      v28 = (*(provider + 2))(provider);
      v33[5] = v28;
    }

    objc_msgSend_setObject_forKey_(v19, v27, v28, v23);
  }

  os_unfair_lock_unlock(&self->_availableMorphDeformerReadOnlyBuffers.lock);
  v29 = v33[5];
  _Block_object_dispose(&v32, 8);
  return v29;
}

- (void)commandBufferDidCompleteWithError:(id)error
{
  os_unfair_lock_lock(&self->_availableDeformerStacks.lock);
  objc_msgSend_vfx_enumerateKeysAndValuesUsingBlock_(self->_availableDeformerStacks.registry, v4, &unk_1F24E8C00, v5);

  os_unfair_lock_unlock(&self->_availableDeformerStacks.lock);
}

- (id)hazardousResourceForKey:(id)key inLockedRegistry:(id *)registry onBehalfOfRenderContext:(id)context withHazardTrackingHandler:(id)handler
{
  v11 = objc_msgSend_objectForKey_(registry->var0.var0, a2, key, registry);
  if (v11)
  {
    return v11;
  }

  var1 = registry->var1;
  v17 = objc_msgSend_objectForKey_(var1, v12, key, v13);
  if (!v17)
  {
    return 0;
  }

  v20 = v17;
  v11 = objc_msgSend_objectForKey_(v17, v18, context, v19);
  if (v11)
  {
    return v11;
  }

  v24 = objc_msgSend_objectEnumerator(v20, v21, v22, v23);
  Object = objc_msgSend_nextObject(v24, v25, v26, v27);
  if (!Object)
  {
    v29 = sub_1AF0D5194();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE8D1C(v29, v30, v31, v32, v33, v34, v35, v36);
    }
  }

  v14 = (*(handler + 2))(handler, Object);
  v38 = v37;
  if (!v14)
  {
    v39 = sub_1AF0D5194();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE8D94(v39, v37, v40, v41, v42, v43, v44, v45);
    }
  }

  objc_msgSend_setObject_forKey_(v20, v37, v14, context);
  if (!v38)
  {
    v46 = sub_1AF0D5194();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE7664(v46, v47, v48, v49, v50, v51, v52, v53);
    }
  }

  objc_initWeak(&location, self);
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = sub_1AF210848;
  v56[3] = &unk_1E7A7CF68;
  objc_copyWeak(v57, &location);
  v57[1] = key;
  v57[2] = registry;
  v56[4] = v14;
  v56[5] = context;
  v56[6] = var1;
  v56[7] = v20;
  objc_msgSend_addCompletedHandler_(v38, v54, v56, v55);
  objc_destroyWeak(v57);
  objc_destroyWeak(&location);
  return v14;
}

- (void)setHazardousResource:(id)resource forKey:(id)key inLockedRegistry:(id *)registry onBehalfOfRenderContext:(id)context
{
  var1 = resource.var1;
  var0 = resource.var0;
  if (!resource.var0 && (v12 = sub_1AF0D5194(), os_log_type_enabled(v12, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDE8E0C(v12, a2, resource.var0, resource.var1, v13, v14, v15, v16);
    if (var1)
    {
      goto LABEL_6;
    }
  }

  else if (var1)
  {
    goto LABEL_6;
  }

  v17 = sub_1AF0D5194();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDE7664(v17, a2, resource.var0, resource.var1, v18, v19, v20, v21);
  }

LABEL_6:
  v22 = registry->var1;
  if (!v22)
  {
    if (registry->var0.var2)
    {
      v23 = 0;
    }

    else
    {
      v23 = 258;
    }

    v24 = objc_alloc(MEMORY[0x1E696AD18]);
    v22 = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v24, v25, v23, 0, 1);
    registry->var1 = v22;
  }

  v27 = objc_msgSend_objectForKey_(v22, a2, key, resource.var1);
  if (!v27)
  {
    v28 = objc_alloc(MEMORY[0x1E696AD18]);
    v27 = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v28, v29, 0, 0, 1);
    objc_msgSend_setObject_forKey_(v22, v30, v27, key);
  }

  objc_msgSend_setObject_forKey_(v27, v26, var0, context);
  objc_initWeak(&location, self);
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = sub_1AF210B88;
  v33[3] = &unk_1E7A7CF68;
  objc_copyWeak(v34, &location);
  v34[1] = key;
  v34[2] = registry;
  v33[4] = var0;
  v33[5] = context;
  v33[6] = v22;
  v33[7] = v27;
  objc_msgSend_addCompletedHandler_(var1, v31, v33, v32);
  objc_destroyWeak(v34);
  objc_destroyWeak(&location);
}

- (void)_removeHazardousResourcesForKey:(id)key fromLockedRegistry:(id *)registry byEnumeratingFirstUsingBlock:(id)block
{
  v9 = objc_msgSend_objectForKey_(registry->var0.var0, a2, key, registry);
  if (v9)
  {
    (*(block + 2))(block, v9);
    objc_msgSend_removeResourceForKey_fromRegistry_(self, v12, key, registry);
  }

  var1 = registry->var1;
  if (var1)
  {
    v14 = objc_msgSend_objectForKey_(registry->var1, v10, key, v11);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = sub_1AF210CD8;
    v22[3] = &unk_1E7A7CF90;
    v22[4] = block;
    objc_msgSend_vfx_enumerateKeysAndValuesUsingBlock_(v14, v15, v22, v16);
    objc_msgSend_removeObjectForKey_(var1, v17, key, v18);
    if (!objc_msgSend_count(var1, v19, v20, v21))
    {

      registry->var1 = 0;
    }
  }
}

- (id)renderResourceForProgramDesc:(id *)desc renderPassDesc:(id *)passDesc
{
  v120[1] = *MEMORY[0x1E69E9840];
  var1 = desc->var1;
  var4 = desc->var4;
  var5 = desc->var5;
  var0 = desc->var15.var0;
  v78 = desc->var15.var1;
  memset(v119, 0, sizeof(v119));
  v118 = 0u;
  v117[0] = desc->var11;
  if (!v117[0])
  {
    v11 = sub_1AF0D5194();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE8E84(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  v19 = sub_1AF130338(var1);
  v20 = *&passDesc->var0[2];
  *(v119 + 8) = *passDesc->var0;
  v21 = *&passDesc->var0[4];
  *(&v119[1] + 8) = v20;
  *(&v119[2] + 8) = v21;
  v22 = *&passDesc->var1;
  *(&v119[3] + 8) = *&passDesc->var0[6];
  v117[1] = v19;
  *(&v118 + 1) = var4;
  LOBYTE(v119[0]) = var0;
  *(&v119[4] + 8) = v22;
  BYTE8(v119[5]) = desc->var7;
  var9 = desc->var9;
  if (var9 <= 1)
  {
    LOBYTE(var9) = 1;
  }

  BYTE10(v119[5]) = var9;
  var3 = passDesc->var3;
  if (var3 <= 1)
  {
    LOBYTE(var3) = 1;
  }

  BYTE9(v119[5]) = var3;
  v25 = var5;
  if (!passDesc->var0[0])
  {
    v25 = sub_1AF15BC40();
  }

  v26 = 0;
  *&v118 = v25;
  BYTE11(v119[5]) = desc->var6;
  v27 = 0x5253C9ADE8F4CA80;
  do
  {
    v28 = v117[v26++];
    v27 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v28) ^ ((0xC6A4A7935BD1E995 * v28) >> 47))) ^ v27);
  }

  while (v26 != 16);
  v29 = ((0xC6A4A7935BD1E995 * (v27 ^ (v27 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v27 ^ (v27 >> 47))) >> 47));
  os_unfair_lock_lock(&self->_availablePipelineStatesLock);
  Value = CFDictionaryGetValue(self->_availablePipelineStates, v29);
  if (Value)
  {
    v31 = Value;
LABEL_28:
    os_unfair_lock_unlock(&self->_availablePipelineStatesLock);
    return v31;
  }

  v32 = sub_1AF1D5940(var1, 0);
  if (v32)
  {
    v33 = v32;
    v77 = sub_1AF1D5940(var1, 1);
    v76 = sub_1AF1D5C2C(var1);
    v115 = 0;
    v116 = 0;
    v37 = sub_1AF1D5D58(var1);
    if (v37)
    {
      v38 = objc_msgSend_frameworkLibrary(self->_libraryManager, v34, v35, v36);
      v39 = *&desc->var14;
      v83 = *&desc->var11;
      v84 = v39;
      v85 = *&desc->var15.var1;
      v40 = *&desc->var2;
      v79 = *&desc->var0;
      v80 = v40;
      v41 = *&desc->var6;
      v81 = *&desc->var4;
      v82 = v41;
      sub_1AF211210(&v115, off_1E7A7CFB0, 2uLL, &v79, v38);
    }

    if ((v37 & 2) != 0)
    {
      v120[0] = @"vfx::api_v2::crws_position";
      v44 = objc_msgSend_frameworkLibrary(self->_libraryManager, v34, v35, v36);
      v45 = *&desc->var14;
      v83 = *&desc->var11;
      v84 = v45;
      v85 = *&desc->var15.var1;
      v46 = *&desc->var2;
      v79 = *&desc->var0;
      v80 = v46;
      v47 = *&desc->var6;
      v81 = *&desc->var4;
      v82 = v47;
      sub_1AF211210(&v116, v120, 1uLL, &v79, v44);
      v51 = objc_msgSend_frameworkLibrary(self->_libraryManager, v48, v49, v50);
      v52 = *&desc->var14;
      v83 = *&desc->var11;
      v84 = v52;
      v85 = *&desc->var15.var1;
      v53 = *&desc->var2;
      v79 = *&desc->var0;
      v80 = v53;
      v54 = *&desc->var6;
      v81 = *&desc->var4;
      v82 = v54;
      sub_1AF211210(&v115, off_1E7A7CFC0, 2uLL, &v79, v51);
      v42 = v116;
    }

    else
    {
      v42 = 0;
    }

    v55 = *&desc->var14;
    v56 = *&desc->var15.var1;
    v83 = *&desc->var11;
    v84 = v55;
    v85 = v56;
    v57 = *&desc->var2;
    v79 = *&desc->var0;
    v80 = v57;
    v58 = *&desc->var6;
    v81 = *&desc->var4;
    v82 = v58;
    v59 = *passDesc->var0;
    v88 = *&passDesc->var0[2];
    v87 = v59;
    v60 = *&passDesc->var0[6];
    v91 = *&passDesc->var1;
    v61 = *&passDesc->var0[4];
    v90 = v60;
    memset(v103, 0, sizeof(v103));
    var6 = desc->var6;
    var7 = desc->var7;
    var10 = desc->var10;
    var13 = desc->var13;
    v66 = *&passDesc->var3;
    v89 = v61;
    v86 = 0;
    v92 = v66;
    v93 = var5;
    v94 = var6;
    v95 = var6;
    v96 = var6;
    v97 = var6;
    v98 = var6;
    v99 = var6;
    v100 = var6;
    v101 = var6;
    v102 = var7;
    v104 = v76;
    v105 = var10;
    v106 = v33;
    v107 = v77;
    v108 = v42;
    v109 = v115;
    v110 = v78;
    v111 = var13;
    v112 = 256;
    v113 = 1;
    v114 = 0;
    v31 = objc_msgSend_newRenderPipelineStateWithDesc_(self, v34, &v79, v36);
    if (!v31)
    {
      v67 = sub_1AF0D5194();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE8EFC(v67, v68, v69, v70, v71, v72, v73, v74);
      }
    }

    CFDictionarySetValue(self->_availablePipelineStates, v29, v31);

    goto LABEL_28;
  }

  if ((byte_1EB6586AB & 1) == 0)
  {
    byte_1EB6586AB = 1;
    v43 = sub_1AF0D5194();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE8F74();
    }
  }

  os_unfair_lock_unlock(&self->_availablePipelineStatesLock);
  return 0;
}

- (__CFXProgram)defaultProgramUsingTessellation:(BOOL)tessellation
{
  v3 = &OBJC_IVAR___VFXMTLResourceManager__defaultProgram;
  if (tessellation)
  {
    v3 = &OBJC_IVAR___VFXMTLResourceManager__defaultProgramForTessellation;
  }

  return *(&self->super.isa + *v3);
}

- (void)__createPipelineStateWithDescriptor:(id)descriptor desc:(id *)desc pipeline:(id)pipeline
{
  memcpy(__dst, desc, sizeof(__dst));
  sub_1AF2196E8(__dst);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v30 = sub_1AF211868;
  v31 = &unk_1E7A7CFD8;
  pipelineCopy = pipeline;
  memcpy(v34, desc, sizeof(v34));
  descriptorCopy = descriptor;
  ++self->__engineStats->renderPipelineCount;
  if (desc->var13 - 1 >= 2)
  {
    if (desc->var13)
    {
      v22 = sub_1AF0D5194();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDE902C();
      }
    }

    else
    {
      __dst[0] = 0;
      if (desc->var15)
      {
        v25 = 0;
        v18 = sub_1AFDE78C8(self);
        v20 = objc_msgSend_newRenderPipelineStateWithDescriptor_options_reflection_error_(v18, v19, descriptor, 3, &v25, __dst);
        (v30)(v29, v20, __dst[0]);
        if (v20)
        {
          objc_msgSend_generateBindingsForPipeline_withReflection_program_materialIdentifier_overrides_(self->_bindingsGenerator, v21, pipeline, v25, desc->var0.var1, desc->var0.var2, desc->var0.var4);
        }
      }

      else
      {
        v23 = sub_1AFDE78C8(self);
        v20 = objc_msgSend_newRenderPipelineStateWithDescriptor_error_(v23, v24, descriptor, __dst);
        (v30)(v29, v20, __dst[0]);
      }
    }
  }

  else
  {
    v12 = objc_msgSend_shaderCompilationGroup(self->_libraryManager, v9, v10, v11);
    dispatch_group_enter(v12);
    var15 = desc->var15;
    v14 = sub_1AFDE78C8(self);
    v16 = v14;
    if (var15)
    {
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = sub_1AF2119A8;
      v27[3] = &unk_1E7A7D028;
      memcpy(v28, desc, sizeof(v28));
      v27[4] = self;
      v27[5] = pipeline;
      v27[6] = v12;
      v27[7] = v29;
      objc_msgSend_newRenderPipelineStateWithDescriptor_options_completionHandler_(v16, v17, descriptor, 3, v27);
    }

    else
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = sub_1AF211B38;
      v26[3] = &unk_1E7A7D050;
      v26[4] = v12;
      v26[5] = v29;
      objc_msgSend_newRenderPipelineStateWithDescriptor_completionHandler_(v14, v15, descriptor, v26);
    }
  }
}

- (void)_createPipelineStateWithDescriptor:(id)descriptor desc:(id *)desc pipeline:(id)pipeline
{
  memcpy(v33, desc, sizeof(v33));
  objc_msgSend___createPipelineStateWithDescriptor_desc_pipeline_(self, v9, descriptor, v33, pipeline);
  v13 = objc_msgSend_remoteResourceProvider(self, v10, v11, v12);
  if (v13)
  {
    v14 = v13;
    v15 = [CFXRemoteRenderPipelineDescriptor alloc];
    memcpy(v33, desc, sizeof(v33));
    v18 = objc_msgSend_initWithDescriptor_(v15, v16, v33, v17);
    v22 = objc_msgSend_state(pipeline, v19, v20, v21);
    objc_msgSend_registerRenderPipelineDescriptor_state_(v14, v23, v18, v22);
  }

  if (sub_1AFDE7A50(self))
  {
    if (objc_msgSend_state(pipeline, v24, v25, v26))
    {
      v30 = objc_msgSend_shaderArchive(self, v27, v28, v29);
      objc_msgSend_addRenderPipelineWithDescriptor_(v30, v31, descriptor, v32);
    }
  }
}

- (id)newRenderPipelineStateWithDesc:(id *)desc
{
  v5 = sub_1AF333168();
  v9 = v5;
  if (v5)
  {
    v10 = !sub_1AFDE7A50(self);
    if (desc->var0.var1)
    {
LABEL_8:
      v16 = objc_alloc_init(VFXMTLRenderPipeline);
      memcpy(__dst, desc, sizeof(__dst));
      sub_1AF2196E8(__dst);
      libraryManager = self->_libraryManager;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = sub_1AF211E58;
      v24[3] = &unk_1E7A7D078;
      memcpy(v25, desc, 0x160uLL);
      v25[352] = v9;
      v24[4] = self;
      v24[5] = v16;
      v25[353] = v10;
      v19 = *&desc->var0.var14;
      __dst[4] = *&desc->var0.var11;
      __dst[5] = v19;
      __dst[6] = *&desc->var0.var15.var1;
      v20 = *&desc->var0.var2;
      __dst[0] = *&desc->var0.var0;
      __dst[1] = v20;
      v21 = *&desc->var0.var6;
      __dst[2] = *&desc->var0.var4;
      __dst[3] = v21;
      objc_msgSend_libraryForProgramDesc_resourceManager_completionHandler_(libraryManager, v22, __dst, self, v24);
      return v16;
    }
  }

  else
  {
    v10 = 0;
  }

  if (!desc->var1)
  {
    goto LABEL_8;
  }

  objc_msgSend_hotReloadableLibrary(self->_libraryManager, v6, v7, v8);
  v11 = sub_1AFDE79F4(self);
  memcpy(__dst, desc, sizeof(__dst));
  v14 = sub_1AF211324(__dst, v12, v11, v13);
  if (!v14)
  {
    return 0;
  }

  v15 = v14;
  v16 = objc_alloc_init(VFXMTLRenderPipeline);
  memcpy(__dst, desc, sizeof(__dst));
  objc_msgSend__createPipelineStateWithDescriptor_desc_pipeline_(self, v17, v15, __dst, v16);
  ++self->__engineStats->prgCount;
  return v16;
}

- (id)_newComputeDescriptorForPipelineDesc:(id *)desc library:(id)library
{
  v5 = objc_msgSend_newFunctionWithName_constants_library_(self, a2, desc->var0, desc->var1, library);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = objc_alloc_init(MEMORY[0x1E6974030]);
  objc_msgSend_setComputeFunction_(v7, v8, v6, v9);

  var3 = desc->var3;
  if (var3)
  {
    var3[2](var3, v6, desc->var2);
  }

  if (desc->var7)
  {
    v13 = objc_alloc_init(MEMORY[0x1E6974100]);
    objc_msgSend_setFunctions_(v13, v14, desc->var7, v15);
    objc_msgSend_setLinkedFunctions_(v7, v16, v13, v17);
  }

  objc_msgSend_setThreadGroupSizeIsMultipleOfThreadExecutionWidth_(v7, v10, desc->var4, v11);
  objc_msgSend_setStageInputDescriptor_(v7, v18, desc->var2, v19);
  return v7;
}

- (void)_configureComputePipeline:(id)pipeline withDescriptor:(id)descriptor
{
  v16 = 0;
  ++self->__engineStats->computePipelineCount;
  v7 = CACurrentMediaTime();
  prof_beginFlame("configure compute pipeline", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/NewRenderer/VFXMTLResourceManager+Compilation.m", 653);
  v8 = sub_1AFDE78C8(self);
  v10 = objc_msgSend_newComputePipelineStateWithDescriptor_options_reflection_error_(v8, v9, descriptor, 0, 0, &v16);
  self->__engineStats->computePipelineCompilationTime = CACurrentMediaTime() - v7 + self->__engineStats->computePipelineCompilationTime;
  prof_endFlame();
  if (v10)
  {
    v14 = objc_msgSend_computeFunction(descriptor, v11, v12, v13);
    sub_1AFDEA010(pipeline, v14);
    sub_1AFDE9FF0(pipeline, v10);
  }

  else
  {
    v15 = sub_1AF0D5194();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE912C();
    }
  }
}

- (id)newComputePipelineStateForDesc:(id *)desc library:(id)library
{
  v5 = *&desc->var2;
  v11[0] = *&desc->var0;
  v11[1] = v5;
  v11[2] = *&desc->var4;
  v6 = objc_msgSend__newComputeDescriptorForPipelineDesc_library_(self, a2, v11, library);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = objc_alloc_init(VFXMTLComputePipeline);
  objc_msgSend__configureComputePipeline_withDescriptor_(self, v9, v8, v7);

  return v8;
}

- (id)_computePipelineStateForKernel:(id)kernel constants:(id)constants constantsHash:(id)hash threadGroupSizeIsMultipleOfThreadExecutionWidth:(BOOL)width
{
  p_availableComputePipelines = &self->_availableComputePipelines;
  os_unfair_lock_lock(&self->_availableComputePipelines.lock);
  if (p_availableComputePipelines->registry)
  {
    if (!constants)
    {
LABEL_8:
      kernelCopy3 = kernel;
      if (hash)
      {
        kernelCopy3 = objc_msgSend_stringByAppendingString_(kernel, v12, hash, v13);
      }

      goto LABEL_10;
    }
  }

  else
  {
    sub_1AF20C220(p_availableComputePipelines);
    if (!constants)
    {
      goto LABEL_8;
    }
  }

  if (hash)
  {
    goto LABEL_8;
  }

  v14 = sub_1AF0D5194();
  kernelCopy3 = kernel;
  if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
LABEL_10:
    v23 = objc_msgSend_objectForKey_(p_availableComputePipelines->registry, v12, kernelCopy3, v13);
    goto LABEL_11;
  }

  sub_1AFDE91A4(v14, v12, v15, v13, v16, v17, v18, v19);
  kernelCopy3 = kernel;
  v23 = objc_msgSend_objectForKey_(p_availableComputePipelines->registry, v21, kernel, v22);
LABEL_11:
  v27 = v23;
  if (!v23)
  {
    v28 = objc_msgSend_frameworkLibrary(self->_libraryManager, v24, v25, v26);
    v32[0] = kernel;
    v32[1] = constants;
    v32[2] = 0;
    v32[3] = 0;
    widthCopy = width;
    memset(v34, 0, sizeof(v34));
    v27 = objc_msgSend_newComputePipelineStateForDesc_library_(self, v29, v32, v28);
    if (v27)
    {
      objc_msgSend_setObject_forKey_(p_availableComputePipelines->registry, v30, v27, kernelCopy3);
    }
  }

  os_unfair_lock_unlock(&p_availableComputePipelines->lock);
  return v27;
}

- (id)computePipelineStateForKernel:(id)kernel withStageDescriptor:(id)descriptor stageDescriptorUpdateBlock:(id)block constants:(id)constants constantsHash:(id)hash
{
  p_availableComputePipelinesWithStageDescriptor = &self->_availableComputePipelinesWithStageDescriptor;
  os_unfair_lock_lock(&self->_availableComputePipelinesWithStageDescriptor.lock);
  if (p_availableComputePipelinesWithStageDescriptor->registry)
  {
    if (!constants)
    {
LABEL_8:
      kernelCopy3 = kernel;
      if (hash)
      {
        kernelCopy3 = objc_msgSend_stringByAppendingString_(kernel, v14, hash, v15);
      }

      goto LABEL_10;
    }
  }

  else
  {
    sub_1AF20C220(p_availableComputePipelinesWithStageDescriptor);
    if (!constants)
    {
      goto LABEL_8;
    }
  }

  if (hash)
  {
    goto LABEL_8;
  }

  v16 = sub_1AF0D5194();
  kernelCopy3 = kernel;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDE91A4(v16, v14, v17, v15, v18, v19, v20, v21);
    kernelCopy3 = kernel;
    v25 = objc_msgSend_objectForKey_(p_availableComputePipelinesWithStageDescriptor->registry, v23, kernel, v24);
    goto LABEL_11;
  }

LABEL_10:
  v25 = objc_msgSend_objectForKey_(p_availableComputePipelinesWithStageDescriptor->registry, v14, kernelCopy3, v15);
LABEL_11:
  v29 = v25;
  if (v25)
  {
    if (descriptor)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v29 = objc_msgSend_dictionaryWithCapacity_(MEMORY[0x1E695DF90], v26, 10, v28);
    objc_msgSend_setObject_forKey_(p_availableComputePipelinesWithStageDescriptor->registry, v30, v29, kernelCopy3);
    if (descriptor)
    {
      goto LABEL_16;
    }
  }

  v31 = sub_1AF0D5194();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDE921C(v31, v26, v27, v28, v32, v33, v34, v35);
    if (!block)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

LABEL_16:
  if (!block)
  {
    goto LABEL_19;
  }

LABEL_17:
  if (!objc_msgSend_count(v29, v26, v27, v28))
  {
    v56 = objc_msgSend_frameworkLibrary(self->_libraryManager, v36, v37, v38);
    kernelCopy5 = kernel;
    constantsCopy2 = constants;
    descriptorCopy2 = descriptor;
    blockCopy = block;
    v67 = 0;
    v68 = 0;
    v52 = objc_msgSend_newComputePipelineStateForDesc_library_(self, v57, &kernelCopy5, v56);
    if (!v52)
    {
      goto LABEL_26;
    }

    UniqueStageDescriptor = objc_msgSend_getUniqueStageDescriptor_(self, v58, descriptor, v59);
    objc_msgSend_setObject_forKey_(v29, v61, v52, UniqueStageDescriptor);
    goto LABEL_25;
  }

  v39 = objc_msgSend_allValues(v29, v36, v37, v38);
  Object = objc_msgSend_firstObject(v39, v40, v41, v42);
  v44 = sub_1AFDEA004(Object);
  (*(block + 2))(block, v44, descriptor);
LABEL_19:
  v45 = objc_msgSend_getUniqueStageDescriptor_(self, v26, descriptor, v28);
  v48 = objc_msgSend_objectForKey_(v29, v46, v45, v47);
  if (!v48)
  {
    v53 = objc_msgSend_frameworkLibrary(self->_libraryManager, v49, v50, v51);
    kernelCopy5 = kernel;
    constantsCopy2 = constants;
    descriptorCopy2 = descriptor;
    blockCopy = 0;
    v67 = 0;
    v68 = 0;
    v52 = objc_msgSend_newComputePipelineStateForDesc_library_(self, v54, &kernelCopy5, v53);
    if (!v52)
    {
      goto LABEL_26;
    }

    objc_msgSend_setObject_forKey_(v29, v55, v52, v45);
LABEL_25:

    goto LABEL_26;
  }

  v52 = v48;
LABEL_26:
  os_unfair_lock_unlock(&p_availableComputePipelinesWithStageDescriptor->lock);
  return v52;
}

- (id)getUniqueStageDescriptor:(id)descriptor
{
  v141 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_availableStageDescriptorsLock);
  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  availableStageDescriptors = self->_availableStageDescriptors;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(availableStageDescriptors, v6, &v136, v140, 16);
  if (v7)
  {
    v11 = v7;
    v12 = *v137;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v137 != v12)
        {
          objc_enumerationMutation(availableStageDescriptors);
        }

        v14 = 0;
        v15 = *(*(&v136 + 1) + 8 * i);
        while (1)
        {
          v16 = objc_msgSend_attributes(v15, v8, v9, v10);
          v19 = objc_msgSend_objectAtIndexedSubscript_(v16, v17, v14, v18);
          v23 = objc_msgSend_format(v19, v20, v21, v22);
          v27 = objc_msgSend_attributes(descriptor, v24, v25, v26);
          v30 = objc_msgSend_objectAtIndexedSubscript_(v27, v28, v14, v29);
          if (v23 != objc_msgSend_format(v30, v31, v32, v33))
          {
            break;
          }

          v34 = objc_msgSend_attributes(v15, v8, v9, v10);
          v37 = objc_msgSend_objectAtIndexedSubscript_(v34, v35, v14, v36);
          v41 = objc_msgSend_offset(v37, v38, v39, v40);
          v45 = objc_msgSend_attributes(descriptor, v42, v43, v44);
          v48 = objc_msgSend_objectAtIndexedSubscript_(v45, v46, v14, v47);
          if (v41 != objc_msgSend_offset(v48, v49, v50, v51))
          {
            break;
          }

          v52 = objc_msgSend_attributes(v15, v8, v9, v10);
          v55 = objc_msgSend_objectAtIndexedSubscript_(v52, v53, v14, v54);
          v59 = objc_msgSend_bufferIndex(v55, v56, v57, v58);
          v63 = objc_msgSend_attributes(descriptor, v60, v61, v62);
          v66 = objc_msgSend_objectAtIndexedSubscript_(v63, v64, v14, v65);
          if (v59 != objc_msgSend_bufferIndex(v66, v67, v68, v69))
          {
            break;
          }

          if (++v14 == 31)
          {
            v70 = 0;
            while (1)
            {
              v71 = objc_msgSend_layouts(v15, v8, v9, v10);
              v74 = objc_msgSend_objectAtIndexedSubscript_(v71, v72, v70, v73);
              v78 = objc_msgSend_stride(v74, v75, v76, v77);
              v82 = objc_msgSend_layouts(descriptor, v79, v80, v81);
              v85 = objc_msgSend_objectAtIndexedSubscript_(v82, v83, v70, v84);
              if (v78 != objc_msgSend_stride(v85, v86, v87, v88))
              {
                goto LABEL_18;
              }

              v89 = objc_msgSend_layouts(v15, v8, v9, v10);
              v92 = objc_msgSend_objectAtIndexedSubscript_(v89, v90, v70, v91);
              v96 = objc_msgSend_stepFunction(v92, v93, v94, v95);
              v100 = objc_msgSend_layouts(descriptor, v97, v98, v99);
              v103 = objc_msgSend_objectAtIndexedSubscript_(v100, v101, v70, v102);
              if (v96 != objc_msgSend_stepFunction(v103, v104, v105, v106))
              {
                goto LABEL_18;
              }

              v107 = objc_msgSend_layouts(v15, v8, v9, v10);
              v110 = objc_msgSend_objectAtIndexedSubscript_(v107, v108, v70, v109);
              v114 = objc_msgSend_stepRate(v110, v111, v112, v113);
              v118 = objc_msgSend_layouts(descriptor, v115, v116, v117);
              v121 = objc_msgSend_objectAtIndexedSubscript_(v118, v119, v70, v120);
              if (v114 != objc_msgSend_stepRate(v121, v122, v123, v124))
              {
                goto LABEL_18;
              }

              if (++v70 == 31)
              {
                v125 = objc_msgSend_indexType(v15, v8, v9, v10);
                if (v125 != objc_msgSend_indexType(descriptor, v126, v127, v128))
                {
                  goto LABEL_18;
                }

                v129 = objc_msgSend_indexBufferIndex(v15, v8, v9, v10);
                if (v129 != objc_msgSend_indexBufferIndex(descriptor, v130, v131, v132))
                {
                  goto LABEL_18;
                }

                if (v15)
                {
                  goto LABEL_23;
                }

                goto LABEL_22;
              }
            }
          }
        }

LABEL_18:
        ;
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(availableStageDescriptors, v8, &v136, v140, 16);
    }

    while (v11);
  }

LABEL_22:
  v15 = objc_msgSend_copy(descriptor, v8, v9, v10);
  objc_msgSend_addObject_(self->_availableStageDescriptors, v133, v15, v134);

LABEL_23:
  os_unfair_lock_unlock(&self->_availableStageDescriptorsLock);
  return v15;
}

- (id)newFunctionWithName:(id)name constants:(id)constants library:(id)library
{
  libraryCopy = library;
  if (!library)
  {
    libraryCopy = objc_msgSend_frameworkLibrary(self->_libraryManager, a2, name, constants);
  }

  v9 = objc_msgSend_functionDescriptor(MEMORY[0x1E6974070], a2, name, constants);
  objc_msgSend_setName_(v9, v10, name, v11);
  objc_msgSend_setConstantValues_(v9, v12, constants, v13);
  v21 = 0;
  v18 = objc_msgSend_newFunctionWithDescriptor_error_(libraryCopy, v14, v9, &v21);
  if (!v18 && libraryCopy != objc_msgSend_hotReloadableLibrary(self->_libraryManager, v15, v16, v17))
  {
    v19 = sub_1AF0D5194();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE9294();
    }
  }

  return v18;
}

- (id)newComputePipelineStateWithFunctionName:(id)name
{
  v7 = objc_msgSend_frameworkLibrary(self->_libraryManager, a2, name, v3);

  return objc_msgSend_newComputePipelineStateWithFunctionName_library_constantValues_linkedFunctions_(self, v6, name, v7, 0, 0);
}

- (id)newComputePipelineStateWithFunctionName:(id)name constantValues:(id)values
{
  v8 = objc_msgSend_frameworkLibrary(self->_libraryManager, a2, name, values);

  return objc_msgSend_newComputePipelineStateWithFunctionName_library_constantValues_linkedFunctions_(self, v7, name, v8, values, 0);
}

- (id)newComputePipelineStateWithFunctionName:(id)name constantValues:(id)values linkedFunctions:(id)functions
{
  v10 = objc_msgSend_frameworkLibrary(self->_libraryManager, a2, name, values);

  return objc_msgSend_newComputePipelineStateWithFunctionName_library_constantValues_linkedFunctions_(self, v9, name, v10, values, functions);
}

- (id)newComputePipelineStateWithFunctionName:(id)name library:(id)library constantValues:(id)values linkedFunctions:(id)functions
{
  v7[0] = name;
  v7[1] = values;
  memset(&v7[2], 0, 24);
  v7[5] = functions;
  return objc_msgSend_newComputePipelineStateForDesc_library_(self, a2, v7, library);
}

- (id)colorMatchingComputePipelineStateForBiPlanarPixelBufferWithFormatType:(unsigned int)type pixelBufferYCbCrMatrix:(id)matrix pixelBufferColorPrimaries:(id)primaries pixelBufferTransferFunction:(id)function sourceColorSpace:(CGColorSpace *)space destinationColorSpace:(CGColorSpace *)colorSpace renderContext:(id)context
{
  p_availableColorMatchingComputePipelines = &self->_availableColorMatchingComputePipelines;
  os_unfair_lock_lock(&self->_availableColorMatchingComputePipelines.lock);
  registry = p_availableColorMatchingComputePipelines->registry;
  if (!p_availableColorMatchingComputePipelines->registry)
  {
    sub_1AF20C220(p_availableColorMatchingComputePipelines);
    registry = p_availableColorMatchingComputePipelines->registry;
  }

  v22 = objc_msgSend_objectForKey_(registry, v17, colorSpace, v18);
  if (!v22)
  {
    v23 = objc_alloc(MEMORY[0x1E696AD18]);
    v22 = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v23, v24, 0, 0, 1);
    objc_msgSend_setObject_forKey_(p_availableColorMatchingComputePipelines->registry, v25, v22, colorSpace);
  }

  v28 = objc_msgSend_objectForKey_(v22, v20, space, v21);
  if (!v28)
  {
    v29 = objc_alloc(MEMORY[0x1E696AD18]);
    v28 = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v29, v30, 0, 0, 1);
    objc_msgSend_setObject_forKey_(v22, v31, v28, space);
  }

  v32 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v26, type != -1, v27);
  v37 = objc_msgSend_objectForKey_(v28, v33, v32, v34);
  if (!v37)
  {
    if (type == -1)
    {
      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      sub_1AF164CB4(space, colorSpace, &v111);
      v39 = objc_alloc_init(MEMORY[0x1E6974060]);
      objc_msgSend_setConstantValue_type_withName_(v39, v40, &v111, 53, @"needsInputTRC");
      objc_msgSend_setConstantValue_type_withName_(v39, v41, &v111 + 1, 53, @"needsColorMatrix");
      objc_msgSend_setConstantValue_type_withName_(v39, v42, &v111 + 2, 53, @"needsOutputTRC");
      objc_msgSend_setConstantValue_type_withName_(v39, v43, &v111 + 4, 29, @"inputTRC_type");
      objc_msgSend_setConstantValue_type_withName_(v39, v44, &v111 + 8, 3, @"inputTRC_gamma");
      objc_msgSend_setConstantValue_type_withName_(v39, v45, &v111 | 0xC, 3, @"inputTRC_a");
      objc_msgSend_setConstantValue_type_withName_(v39, v46, &v112, 3, @"inputTRC_b");
      objc_msgSend_setConstantValue_type_withName_(v39, v47, &v112 + 4, 3, @"inputTRC_c");
      objc_msgSend_setConstantValue_type_withName_(v39, v48, &v112 + 8, 3, @"inputTRC_d");
      objc_msgSend_setConstantValue_type_withName_(v39, v49, &v112 + 12, 3, @"inputTRC_e");
      objc_msgSend_setConstantValue_type_withName_(v39, v50, &v113, 3, @"inputTRC_f");
      objc_msgSend_setConstantValue_type_withName_(v39, v51, &v114, 5, @"colorMatrixColumn0");
      objc_msgSend_setConstantValue_type_withName_(v39, v52, &v115, 5, @"colorMatrixColumn1");
      objc_msgSend_setConstantValue_type_withName_(v39, v53, &v116, 5, @"colorMatrixColumn2");
      objc_msgSend_setConstantValue_type_withName_(v39, v54, &v117, 29, @"outputTRC_type");
      objc_msgSend_setConstantValue_type_withName_(v39, v55, &v117 + 4, 3, @"outputTRC_gamma");
      objc_msgSend_setConstantValue_type_withName_(v39, v56, &v117 + 8, 3, @"outputTRC_a");
      objc_msgSend_setConstantValue_type_withName_(v39, v57, &v117 + 12, 3, @"outputTRC_b");
      objc_msgSend_setConstantValue_type_withName_(v39, v58, &v118, 3, @"outputTRC_c");
      objc_msgSend_setConstantValue_type_withName_(v39, v59, &v118 + 4, 3, @"outputTRC_d");
      objc_msgSend_setConstantValue_type_withName_(v39, v60, &v118 + 8, 3, @"outputTRC_e");
      objc_msgSend_setConstantValue_type_withName_(v39, v61, &v118 + 12, 3, @"outputTRC_f");
      v63 = objc_msgSend_newComputePipelineStateWithFunctionName_constantValues_(self, v62, @"color_matching_kernel", v39);
LABEL_48:
      v37 = v63;

      v105 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v103, type != -1, v104);
      objc_msgSend_setObject_forKey_(v28, v106, v37, v105);

      goto LABEL_49;
    }

    if (type <= 875704949)
    {
      switch(type)
      {
        case 0x34323066u:
          v64 = 1;
          v38 = 1;
          goto LABEL_28;
        case 0x34323076u:
          v38 = 0;
          v64 = 1;
          goto LABEL_28;
        case 0x34323266u:
          v38 = 1;
LABEL_21:
          v64 = 2;
          goto LABEL_28;
      }

      goto LABEL_22;
    }

    switch(type)
    {
      case 0x34323276u:
        v38 = 0;
        goto LABEL_21;
      case 0x34343466u:
        v38 = 1;
        break;
      case 0x34343476u:
        v38 = 0;
        break;
      default:
LABEL_22:
        LOBYTE(v111) = HIBYTE(type);
        BYTE1(v111) = BYTE2(type);
        BYTE2(v111) = BYTE1(type);
        *(&v111 + 3) = type;
        v65 = sub_1AF0D5194();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDE930C();
        }

        v64 = 0;
        v38 = 0;
LABEL_28:
        if (objc_msgSend_isEqualToString_(matrix, v35, *MEMORY[0x1E6965FD0], v36))
        {
          v68 = v38 == 0;
          v69 = 3;
        }

        else if (objc_msgSend_isEqualToString_(matrix, v66, *MEMORY[0x1E6965FC8], v67))
        {
          v68 = v38 == 0;
          v69 = 1;
        }

        else
        {
          if (!objc_msgSend_isEqualToString_(matrix, v66, *MEMORY[0x1E6965FB0], v67))
          {
            v108 = sub_1AF0D5194();
            if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
            {
              sub_1AFDE937C();
            }

            v70 = 0;
LABEL_37:
            v117 = 0u;
            v118 = 0u;
            v115 = 0u;
            v116 = 0u;
            v113 = 0u;
            v114 = 0u;
            v111 = 0u;
            v112 = 0u;
            if (objc_msgSend_isEqualToString_(primaries, v66, *MEMORY[0x1E6965DB8], v67) && (objc_msgSend_isEqualToString_(function, v71, *MEMORY[0x1E6965F50], v72) & 1) != 0)
            {
              v73 = MEMORY[0x1E695F180];
            }

            else
            {
              if (!objc_msgSend_isEqualToString_(primaries, v71, *MEMORY[0x1E6965DD0], v72) || !objc_msgSend_isEqualToString_(function, v74, *MEMORY[0x1E6965F50], v75))
              {
                goto LABEL_45;
              }

              v73 = MEMORY[0x1E695F0B0];
            }

            if (*v73)
            {
              v76 = CGColorSpaceCreateWithName(*v73);
              sub_1AF164CB4(v76, colorSpace, &v111);
              CFRelease(v76);
LABEL_47:
              v39 = objc_alloc_init(MEMORY[0x1E6974060]);
              objc_msgSend_setConstantValue_type_withName_(v39, v78, &v111, 53, @"needsInputTRC");
              objc_msgSend_setConstantValue_type_withName_(v39, v79, &v111 + 1, 53, @"needsColorMatrix");
              objc_msgSend_setConstantValue_type_withName_(v39, v80, &v111 + 2, 53, @"needsOutputTRC");
              objc_msgSend_setConstantValue_type_withName_(v39, v81, &v111 + 4, 29, @"inputTRC_type");
              objc_msgSend_setConstantValue_type_withName_(v39, v82, &v111 + 8, 3, @"inputTRC_gamma");
              objc_msgSend_setConstantValue_type_withName_(v39, v83, &v111 | 0xC, 3, @"inputTRC_a");
              objc_msgSend_setConstantValue_type_withName_(v39, v84, &v112, 3, @"inputTRC_b");
              objc_msgSend_setConstantValue_type_withName_(v39, v85, &v112 + 4, 3, @"inputTRC_c");
              objc_msgSend_setConstantValue_type_withName_(v39, v86, &v112 + 8, 3, @"inputTRC_d");
              objc_msgSend_setConstantValue_type_withName_(v39, v87, &v112 + 12, 3, @"inputTRC_e");
              objc_msgSend_setConstantValue_type_withName_(v39, v88, &v113, 3, @"inputTRC_f");
              objc_msgSend_setConstantValue_type_withName_(v39, v89, &v114, 5, @"colorMatrixColumn0");
              objc_msgSend_setConstantValue_type_withName_(v39, v90, &v115, 5, @"colorMatrixColumn1");
              objc_msgSend_setConstantValue_type_withName_(v39, v91, &v116, 5, @"colorMatrixColumn2");
              objc_msgSend_setConstantValue_type_withName_(v39, v92, &v117, 29, @"outputTRC_type");
              objc_msgSend_setConstantValue_type_withName_(v39, v93, &v117 + 4, 3, @"outputTRC_gamma");
              objc_msgSend_setConstantValue_type_withName_(v39, v94, &v117 + 8, 3, @"outputTRC_a");
              objc_msgSend_setConstantValue_type_withName_(v39, v95, &v117 + 12, 3, @"outputTRC_b");
              objc_msgSend_setConstantValue_type_withName_(v39, v96, &v118, 3, @"outputTRC_c");
              objc_msgSend_setConstantValue_type_withName_(v39, v97, &v118 + 4, 3, @"outputTRC_d");
              objc_msgSend_setConstantValue_type_withName_(v39, v98, &v118 + 8, 3, @"outputTRC_e");
              objc_msgSend_setConstantValue_type_withName_(v39, v99, &v118 + 12, 3, @"outputTRC_f");
              v109 = v70;
              v110 = v64;
              objc_msgSend_setConstantValue_type_withName_(v39, v100, &v110, 29, @"biPlanarTextureChromaSubsampling");
              objc_msgSend_setConstantValue_type_withName_(v39, v101, &v109, 29, @"biPlanarTextureYCbCrMatrix");
              v63 = objc_msgSend_newComputePipelineStateWithFunctionName_constantValues_(self, v102, @"color_matching_kernel_biplanar", v39);
              goto LABEL_48;
            }

LABEL_45:
            v77 = sub_1AF0D5194();
            if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
            {
              sub_1AFDE93EC();
            }

            goto LABEL_47;
          }

          v68 = v38 == 0;
          v69 = 5;
        }

        if (v68)
        {
          v70 = v69;
        }

        else
        {
          v70 = v69 + 1;
        }

        goto LABEL_37;
    }

    v64 = 3;
    goto LABEL_28;
  }

LABEL_49:
  os_unfair_lock_unlock(&p_availableColorMatchingComputePipelines->lock);
  return v37;
}

- (BOOL)allowHotReload
{
  if (sub_1AFDE7A50(self))
  {
    return 0;
  }

  else
  {
    return objc_msgSend_hasCommonProfilePrecompiledFunctions(self, v3, v4, v5) ^ 1;
  }
}

- (id)computeEvaluatorWithContext:(MTLContext *)context srcDesc:(const BufferDescriptor *)desc dstDesc:(const BufferDescriptor *)dstDesc duDesc:(const BufferDescriptor *)duDesc dvDesc:(const BufferDescriptor *)dvDesc
{
  v7 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *&desc->var1) ^ ((0xC6A4A7935BD1E995 * *&desc->var1) >> 47))) ^ 0x4FB7DAE84DD6F2FCLL)) ^ dstDesc->var2);
  v8 = (0xC6A4A7935BD1E995 * (v7 ^ (v7 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v7 ^ (v7 >> 47))) >> 47);
  p_availableOpenSubdivComputeEvaluators = &self->_availableOpenSubdivComputeEvaluators;
  os_unfair_lock_lock(&self->_availableOpenSubdivComputeEvaluators.lock);
  registry = p_availableOpenSubdivComputeEvaluators->registry;
  if (!p_availableOpenSubdivComputeEvaluators->registry)
  {
    sub_1AF20C220(p_availableOpenSubdivComputeEvaluators);
    registry = p_availableOpenSubdivComputeEvaluators->registry;
  }

  v13 = objc_msgSend_objectForKey_(registry, v10, v8, v11);
  if (!v13)
  {
    v14 = objc_alloc_init(VFXMTLOpenSubdivComputeEvaluator);
    sub_1AFDBACE8();
  }

  os_unfair_lock_unlock(&p_availableOpenSubdivComputeEvaluators->lock);
  return v13;
}

- (id)defaultLightingEnvironmentIrradianceTexture
{
  v36[1] = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  if (!self->_defaultLightingEnvironmentIrradianceTexture)
  {
    v3 = MEMORY[0x1E696AAE8];
    v4 = objc_opt_class();
    v7 = objc_msgSend_bundleForClass_(v3, v5, v4, v6);
    v9 = objc_msgSend_URLForResource_withExtension_(v7, v8, @"VFXDefaultIrradiance", @"ktx");
    v35 = *MEMORY[0x1E69743F8];
    v36[0] = MEMORY[0x1E695E110];
    v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v10, v36, &v35, 1);
    v13 = objc_msgSend_newTextureUsingMTKTextureLoaderWithURL_options_(self, v12, v9, v11);
    self->_defaultLightingEnvironmentIrradianceTexture = v13;
    if (objc_msgSend_textureType(v13, v14, v15, v16) != 5)
    {
      v20 = sub_1AF0D5194();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE9460(v20, v17, v18, v19, v21, v22, v23, v24);
      }
    }

    if (objc_msgSend_pixelFormat(self->_defaultLightingEnvironmentIrradianceTexture, v17, v18, v19) != 115)
    {
      v25 = sub_1AF0D5194();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE94D8(v25, v26, v27, v28, v29, v30, v31, v32);
      }
    }
  }

  defaultLightingEnvironmentIrradianceTexture = self->_defaultLightingEnvironmentIrradianceTexture;
  objc_sync_exit(self);
  return defaultLightingEnvironmentIrradianceTexture;
}

- (id)defaultLightingEnvironmentRadianceTexture
{
  v36[1] = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  if (!self->_defaultLightingEnvironmentRadianceTexture)
  {
    v3 = MEMORY[0x1E696AAE8];
    v4 = objc_opt_class();
    v7 = objc_msgSend_bundleForClass_(v3, v5, v4, v6);
    v9 = objc_msgSend_URLForResource_withExtension_(v7, v8, @"VFXDefaultRadiance", @"ktx");
    v35 = *MEMORY[0x1E69743F8];
    v36[0] = MEMORY[0x1E695E110];
    v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v10, v36, &v35, 1);
    v13 = objc_msgSend_newTextureUsingMTKTextureLoaderWithURL_options_(self, v12, v9, v11);
    self->_defaultLightingEnvironmentRadianceTexture = v13;
    if (objc_msgSend_textureType(v13, v14, v15, v16) != 5)
    {
      v20 = sub_1AF0D5194();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE9550(v20, v17, v18, v19, v21, v22, v23, v24);
      }
    }

    if (objc_msgSend_pixelFormat(self->_defaultLightingEnvironmentRadianceTexture, v17, v18, v19) != 115)
    {
      v25 = sub_1AF0D5194();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE95C8(v25, v26, v27, v28, v29, v30, v31, v32);
      }
    }
  }

  defaultLightingEnvironmentRadianceTexture = self->_defaultLightingEnvironmentRadianceTexture;
  objc_sync_exit(self);
  return defaultLightingEnvironmentRadianceTexture;
}

- (id)irradianceTextureForPrecomputedLightingEnvironment:(id)environment
{
  v39[1] = *MEMORY[0x1E69E9840];
  p_availableIrradianceTextures = &self->_availableIrradianceTextures;
  os_unfair_lock_lock(&self->_availableIrradianceTextures.lock);
  registry = p_availableIrradianceTextures->registry;
  if (!p_availableIrradianceTextures->registry)
  {
    sub_1AF20C220(p_availableIrradianceTextures);
    registry = p_availableIrradianceTextures->registry;
  }

  v9 = objc_msgSend_objectForKey_(registry, v6, environment, v7);
  if (v9)
  {
    v13 = v9;
    os_unfair_lock_unlock(&p_availableIrradianceTextures->lock);
  }

  else
  {
    v14 = objc_msgSend_irradianceData(environment, v10, v11, v12);
    v38 = *MEMORY[0x1E69743F8];
    v39[0] = MEMORY[0x1E695E110];
    v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v15, v39, &v38, 1);
    v13 = objc_msgSend_newTextureUsingMTKTextureLoaderWithData_options_(self, v17, v14, v16);
    if (objc_msgSend_textureType(v13, v18, v19, v20) != 5)
    {
      v24 = sub_1AF0D5194();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE9640(v24, v21, v22, v23, v25, v26, v27, v28);
      }
    }

    if (objc_msgSend_pixelFormat(v13, v21, v22, v23) != 115)
    {
      v30 = sub_1AF0D5194();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE96B8(v30, v29, v31, v32, v33, v34, v35, v36);
      }
    }

    objc_msgSend_setObject_forKey_(p_availableIrradianceTextures->registry, v29, v13, environment);
    os_unfair_lock_unlock(&p_availableIrradianceTextures->lock);
  }

  return v13;
}

- (id)radianceTextureForPrecomputedLightingEnvironment:(id)environment
{
  v39[1] = *MEMORY[0x1E69E9840];
  p_availableRadianceTextures = &self->_availableRadianceTextures;
  os_unfair_lock_lock(&self->_availableRadianceTextures.lock);
  registry = p_availableRadianceTextures->registry;
  if (!p_availableRadianceTextures->registry)
  {
    sub_1AF20C220(p_availableRadianceTextures);
    registry = p_availableRadianceTextures->registry;
  }

  v9 = objc_msgSend_objectForKey_(registry, v6, environment, v7);
  if (v9)
  {
    v13 = v9;
    os_unfair_lock_unlock(&p_availableRadianceTextures->lock);
  }

  else
  {
    v14 = objc_msgSend_radianceData(environment, v10, v11, v12);
    v38 = *MEMORY[0x1E69743F8];
    v39[0] = MEMORY[0x1E695E110];
    v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v15, v39, &v38, 1);
    v13 = objc_msgSend_newTextureUsingMTKTextureLoaderWithData_options_(self, v17, v14, v16);
    if (objc_msgSend_textureType(v13, v18, v19, v20) != 5)
    {
      v24 = sub_1AF0D5194();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE9730(v24, v21, v22, v23, v25, v26, v27, v28);
      }
    }

    if (objc_msgSend_pixelFormat(v13, v21, v22, v23) != 115)
    {
      v30 = sub_1AF0D5194();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE97A8(v30, v29, v31, v32, v33, v34, v35, v36);
      }
    }

    objc_msgSend_setObject_forKey_(p_availableRadianceTextures->registry, v29, v13, environment);
    os_unfair_lock_unlock(&p_availableRadianceTextures->lock);
  }

  return v13;
}

- (id)irradianceTextureForEnvironmentTexture:(id)texture renderContext:(id)context applySH:(id)h
{
  p_availableIrradianceTextures = &self->_availableIrradianceTextures;
  os_unfair_lock_lock(&self->_availableIrradianceTextures.lock);
  registry = p_availableIrradianceTextures->registry;
  if (!p_availableIrradianceTextures->registry)
  {
    sub_1AF20C220(p_availableIrradianceTextures);
    registry = p_availableIrradianceTextures->registry;
  }

  v13 = objc_msgSend_objectForKey_(registry, v10, texture, v11);
  if (v13)
  {
    v14 = v13;
    os_unfair_lock_unlock(&p_availableIrradianceTextures->lock);
  }

  else
  {
    v21 = 0uLL;
    v22 = 0;
    CFXTextureDescriptorMakeCube(0x40u, 0x73u, &v21);
    LOBYTE(v22) = 5;
    v15 = sub_1AFDE323C(self);
    v19 = v21;
    v20 = v22;
    v14 = CFXGPUDeviceCreateTexture(v15, &v19);
    objc_msgSend_setObject_forKey_(p_availableIrradianceTextures->registry, v16, v14, texture);
    os_unfair_lock_unlock(&p_availableIrradianceTextures->lock);

    objc_msgSend__bakeSphericalHamonicsBasedIrradianceTexture_forEnvironmentTexture_renderContext_applySH_(self, v17, v14, texture, context, h);
  }

  return v14;
}

- (void)_bakeStochasticIrradianceTexture:(id)texture forEnvironmentTexture:(id)environmentTexture mipmapLevelForSampling:(unint64_t)sampling renderContext:(id)context
{
  samplingCopy = sampling;
  v10 = objc_msgSend_computePipelineStateForKernel_(self, a2, @"compute_diffusePreIntegrated_texture2d", environmentTexture);
  v11 = sub_1AFDE323C(v10);
  v15 = objc_msgSend_resourceComputeEncoder(context, v12, v13, v14);
  objc_msgSend_setComputePipelineState_(v15, v16, v11, v17);
  for (i = 0; i != 6; ++i)
  {
    v22 = objc_msgSend_pixelFormat(texture, v18, v19, v20);
    v24 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(texture, v23, v22, 2, 0, 1, i, 1);
    objc_msgSend_setTexture_atIndex_(v15, v25, v24, 0);
    objc_msgSend_setTexture_atIndex_(v15, v26, environmentTexture, 1);
    v37 = i;
    v38 = samplingCopy;
    objc_msgSend_setBytes_length_atIndex_(v15, v27, &v38, 4, 0);
    objc_msgSend_setBytes_length_atIndex_(v15, v28, &v37, 4, 1);
    objc_msgSend_dispatchOnTexture2D_(v15, v29, v24, v30);
  }

  if (objc_msgSend_mipmapLevelCount(texture, v18, v19, v20) > 1)
  {
    v34 = objc_msgSend_resourceBlitEncoder(context, v31, v32, v33);
    sub_1AF213F78(v34, texture, v35, v36);
  }
}

- (void)_bakeSphericalHamonicsBasedIrradianceTexture:(id)texture forEnvironmentTexture:(id)environmentTexture renderContext:(id)context applySH:(id)h
{
  v11 = objc_msgSend_resourceCommandBuffer(context, a2, texture, environmentTexture);
  v16 = objc_msgSend_sphericalHarmonicsForEnvironmentTexture_order_commandBuffer_(self, v12, environmentTexture, 3, v11);
  if (h)
  {
    v17 = objc_msgSend_resourceCommandBuffer(context, v13, v14, v15);
    v80[0] = MEMORY[0x1E69E9820];
    v80[1] = 3221225472;
    v80[2] = sub_1AF214240;
    v80[3] = &unk_1E7A7D0A0;
    v80[4] = v16;
    v80[5] = h;
    objc_msgSend_addCompletedHandler_(v17, v18, v80, v19);
  }

  v20 = objc_msgSend_frameworkLibrary(self->_libraryManager, v13, v14, v15);
  *(&v77 + 1) = objc_msgSend_pixelFormat(texture, v21, v22, v23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  v78 = @"vfx_draw_fullscreen_quad_vertex";
  v79 = @"cubemap_from_sh";
  v26 = objc_msgSend_newRenderPipelineStateWithDesc_(self, v24, &v76, v25);
  v30 = objc_msgSend_resourceCommandBuffer(context, v27, v28, v29);
  for (i = 0; i != 6; ++i)
  {
    v32 = objc_alloc_init(MEMORY[0x1E6974128]);
    v36 = objc_msgSend_colorAttachments(v32, v33, v34, v35);
    v39 = objc_msgSend_objectAtIndexedSubscript_(v36, v37, 0, v38);
    objc_msgSend_setTexture_(v39, v40, texture, v41);
    v45 = objc_msgSend_colorAttachments(v32, v42, v43, v44);
    v48 = objc_msgSend_objectAtIndexedSubscript_(v45, v46, 0, v47);
    objc_msgSend_setLevel_(v48, v49, 0, v50);
    v54 = objc_msgSend_colorAttachments(v32, v51, v52, v53);
    v57 = objc_msgSend_objectAtIndexedSubscript_(v54, v55, 0, v56);
    objc_msgSend_setSlice_(v57, v58, i, v59);
    v62 = objc_msgSend_renderCommandEncoderWithDescriptor_(v30, v60, v32, v61);

    v66 = objc_msgSend_state(v26, v63, v64, v65);
    objc_msgSend_setRenderPipelineState_(v62, v67, v66, v68);
    objc_msgSend_setFragmentTexture_atIndex_(v62, v69, environmentTexture, 1);
    LODWORD(v76) = i;
    objc_msgSend_setFragmentBuffer_offset_atIndex_(v62, v70, v16, 0, 0, v76);
    objc_msgSend_setFragmentBytes_length_atIndex_(v62, v71, &v76, 4, 1);
    objc_msgSend_drawPrimitives_vertexStart_vertexCount_(v62, v72, 4, 0, 4);
    objc_msgSend_endEncoding(v62, v73, v74, v75);
  }
}

- (id)newRadianceTextureForEnvironmentTexture:(id)texture size:(unsigned int)size engineContext:(__CFXEngineContext *)context cpuAccessible:(BOOL)accessible
{
  accessibleCopy = accessible;
  memset(v78, 0, sizeof(v78));
  CFXTextureDescriptorMakeCube(size, 0x73u, v78);
  v14 = log2f(size);
  v15 = *&v78[12] & 0xFFFF8F00FF00FFFFLL | ((vcvtms_s32_f32(v14) + 1) << 16);
  v16 = 0x201300000000;
  if (accessibleCopy)
  {
    v16 = 0x1300000000;
  }

  *&v78[12] = v15 | v16;
  v17 = objc_msgSend_mipmapLevelCount(texture, v11, v12, v13);
  v18 = (*&v78[12] << 40) >> 56;
  v78[14] = (((*&v78[12] << 8) >> 24 << 16) + 16515072) >> 16;
  v22 = objc_msgSend_mipmapLevelCount(texture, v19, v20, v21);
  if (((v18 << 16) + 16515072) << 40 >> 56 >= v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = (((v18 << 16) + 16515072) << 40) >> 56;
  }

  v78[14] = v23;
  v24 = sub_1AFDE323C(self);
  v76 = *v78;
  v77 = *&v78[16];
  v25 = CFXGPUDeviceCreateTexture(v24, &v76);
  v28 = sub_1AF1305F8(context, 512);
  if (v28)
  {
    v29 = objc_msgSend_computePipelineStateForKernel_(self, v26, @"compute_specularPreIntegratedLD_texturecube", v27);
  }

  else
  {
    v29 = objc_msgSend_computePipelineStateForKernel_(self, v26, @"compute_specularPreIntegratedLD_texture2d", v27);
  }

  v30 = sub_1AFDE323C(v29);
  v31 = sub_1AF12E2AC(context);
  v35 = objc_msgSend_resourceComputeEncoder(v31, v32, v33, v34);
  objc_msgSend_setComputePipelineState_(v35, v36, v30, v37);
  objc_msgSend_setTexture_atIndex_(v35, v38, texture, 1);
  if (objc_msgSend_mipmapLevelCount(v25, v39, v40, v41))
  {
    v45 = 0;
    do
    {
      if (v17 < 2)
      {
        v53 = 0;
      }

      else
      {
        v46 = objc_msgSend_mipmapLevelCount(texture, v42, v43, v44);
        if (v46 < v18)
        {
          v50 = -1;
        }

        else
        {
          v50 = v46 - v18;
        }

        v51 = objc_msgSend_pixelFormat(texture, v47, v48, v49);
        v53 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(texture, v52, v51, 5, v45 + v50 + 1, 1, 0, 6);
        objc_msgSend_setTexture_atIndex_(v35, v54, v53, 1);
      }

      v55 = 0;
      do
      {
        if (v28)
        {
          v56 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v25, v42, 115, 5, v45, 1, 0, 6);
        }

        else
        {
          LODWORD(v76) = v55;
          objc_msgSend_setBytes_length_atIndex_(v35, v42, &v76, 4, 1);
          v56 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v25, v58, 115, 2, v45, 1, v55, 1);
        }

        v59 = v56;
        objc_msgSend_setTexture_atIndex_(v35, v57, v56, 0);
        v63 = objc_msgSend_mipmapLevelCount(v25, v60, v61, v62);
        v67 = 0.0;
        if (v63 >= 2)
        {
          v67 = 1.0 / (objc_msgSend_mipmapLevelCount(v25, v64, v65, v66, 0.0) - 1);
        }

        LODWORD(v76) = fminf(fmaxf((v67 * v45) * (v67 * v45), 0.01), 1.0);
        objc_msgSend_setBytes_length_atIndex_(v35, v64, &v76, 4, 0);
        if (v28)
        {
          objc_msgSend_dispatchOnTextureCube_(v35, v68, v59, v69);
        }

        else
        {
          objc_msgSend_dispatchOnTexture2D_(v35, v68, v59, v69);
        }

        v71 = v55++ > 4 || v28;
      }

      while ((v71 & 1) == 0);

      ++v45;
    }

    while (v45 < objc_msgSend_mipmapLevelCount(v25, v72, v73, v74));
  }

  objc_msgSend_endEncoding(v35, v42, v43, v44);
  return v25;
}

- (id)radianceTextureForEnvironmentTexture:(id)texture engineContext:(__CFXEngineContext *)context
{
  p_availableRadianceTextures = &self->_availableRadianceTextures;
  os_unfair_lock_lock(&self->_availableRadianceTextures.lock);
  registry = p_availableRadianceTextures->registry;
  if (!p_availableRadianceTextures->registry)
  {
    sub_1AF20C220(p_availableRadianceTextures);
    registry = p_availableRadianceTextures->registry;
  }

  v11 = objc_msgSend_objectForKey_(registry, v8, texture, v9);
  if (v11)
  {
    v13 = v11;
    os_unfair_lock_unlock(&p_availableRadianceTextures->lock);
  }

  else
  {
    v13 = objc_msgSend_newRadianceTextureForEnvironmentTexture_size_engineContext_cpuAccessible_(self, v12, texture, 256, context, 0);
    objc_msgSend_setObject_forKey_(p_availableRadianceTextures->registry, v14, v13, texture);
    os_unfair_lock_unlock(&p_availableRadianceTextures->lock);
  }

  return v13;
}

- (id)specularDFGDiffuseHammonTextureWithRenderContext:(id)context
{
  objc_sync_enter(self);
  specularDFGDiffuseHammonTexture = self->_specularDFGDiffuseHammonTexture;
  if (!specularDFGDiffuseHammonTexture)
  {
    v26 = 0uLL;
    v27 = 0;
    CFXTextureDescriptorMake2D(0x80u, 0x80u, 0x73u, &v26);
    LOBYTE(v27) = 3;
    v9 = objc_msgSend_gpuDevice(context, v6, v7, v8);
    v24 = v26;
    v25 = v27;
    self->_specularDFGDiffuseHammonTexture = CFXGPUDeviceCreateTexture(v9, &v24);
    v12 = objc_msgSend_computePipelineStateForKernel_(self, v10, @"compute_specularPreIntegratedDFG_diffuseHammon", v11);
    v13 = sub_1AFDE323C(v12);
    v17 = objc_msgSend_resourceComputeEncoder(context, v14, v15, v16);
    objc_msgSend_setComputePipelineState_(v17, v18, v13, v19);
    objc_msgSend_setTexture_atIndex_(v17, v20, self->_specularDFGDiffuseHammonTexture, 0);
    objc_msgSend_dispatchOnTexture2D_(v17, v21, self->_specularDFGDiffuseHammonTexture, v22);
    specularDFGDiffuseHammonTexture = self->_specularDFGDiffuseHammonTexture;
  }

  objc_sync_exit(self);
  return specularDFGDiffuseHammonTexture;
}

- (id)areaLightPrecomputedDataTexture
{
  objc_sync_enter(self);
  areaLightPrecomputedDataTexture = self->_areaLightPrecomputedDataTexture;
  if (!areaLightPrecomputedDataTexture)
  {
    memset(v16, 0, sizeof(v16));
    CFXTextureDescriptorMake2DArray(0x40u, 0x40u, 3, 0x7Du, v16);
    *&v16[12] &= 0xFFFF8FFFFFFFFFFFLL;
    v4 = sub_1AFDE323C(self);
    v12 = *v16;
    v13 = *&v16[16];
    v5 = CFXGPUDeviceCreateTexture(v4, &v12);
    self->_areaLightPrecomputedDataTexture = v5;
    v12 = 0uLL;
    v13 = 0;
    v14 = vdupq_n_s64(0x40uLL);
    v15 = 1;
    objc_msgSend_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage_(v5, v6, &v12, 0, 0, &unk_1AFE22A70, 1024, 0x10000);
    v7 = self->_areaLightPrecomputedDataTexture;
    v12 = 0uLL;
    v13 = 0;
    v14 = vdupq_n_s64(0x40uLL);
    v15 = 1;
    objc_msgSend_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage_(v7, v8, &v12, 0, 1, &unk_1AFE32A70, 1024, 0x10000);
    v9 = self->_areaLightPrecomputedDataTexture;
    v12 = 0uLL;
    v13 = 0;
    v14 = vdupq_n_s64(0x40uLL);
    v15 = 1;
    objc_msgSend_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage_(v9, v10, &v12, 0, 2, &unk_1AFE32A70, 1024, 0x10000);
    areaLightPrecomputedDataTexture = self->_areaLightPrecomputedDataTexture;
  }

  objc_sync_exit(self);
  return areaLightPrecomputedDataTexture;
}

- (void)_setupRemoteResourcesRegistry
{
  p_remote = &self->_remote;
  if (self->_remote.var0)
  {
    v3 = sub_1AF0D5194();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE9820(v3);
    }
  }

  v4 = objc_alloc(MEMORY[0x1E696AD18]);
  p_remote->var0 = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v4, v5, 258, 0, 16);
  v6 = objc_alloc(MEMORY[0x1E696AD18]);
  p_remote->resourceIDToTexture = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v6, v7, 258, 0, 16);
  v8 = objc_alloc(MEMORY[0x1E696AD18]);
  p_remote->bufferToBuiltin = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v8, v9, 258, 258, 16);
  v10 = objc_alloc(MEMORY[0x1E696AD18]);
  p_remote->textureToBuiltin = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v10, v11, 258, 258, 16);
  v12 = objc_alloc(MEMORY[0x1E696AD18]);
  p_remote->renderPipelineDescToResourceID = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v12, v13, 0, 258, 16);
  v14 = objc_alloc(MEMORY[0x1E696AD18]);
  p_remote->resourceIDToRenderPipeline = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v14, v15, 258, 0, 16);
  v16 = objc_alloc(MEMORY[0x1E696AD18]);
  p_remote->resourceIDToRenderPipelineDesc = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v16, v17, 258, 0, 16);
  v18 = objc_alloc(MEMORY[0x1E696AD18]);
  p_remote->renderPipelineStateToDescriptor = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v18, v19, 258, 0, 16);
  v20 = objc_alloc(MEMORY[0x1E695DF70]);
  p_remote->newlyRegisteredRenderPipelineResourceIDs = objc_msgSend_initWithCapacity_(v20, v21, 16, v22);
}

- (void)_deallocRemoteResources
{
  p_remote = &self->_remote;

  newlyRegisteredRenderPipelineResourceIDs = p_remote->newlyRegisteredRenderPipelineResourceIDs;
}

- (void)setRemoteResourceProvider:(id)provider
{
  resourceProvider = self->_remote.resourceProvider;
  if (resourceProvider != provider)
  {
    if (resourceProvider)
    {
      CFRelease(resourceProvider);
      self->_remote.resourceProvider = 0;
    }

    if (provider)
    {
      v6 = CFRetain(provider);
    }

    else
    {
      v6 = 0;
    }

    self->_remote.resourceProvider = v6;
  }
}

- (id)depthStencilStateForDepthStencilDesc:(id)desc
{
  DepthStencil = CFXGPUDeviceCreateDepthStencil(self->_gpuDevice, *&desc.var0, *(&desc + 8));

  return DepthStencil;
}

- (unint64_t)resourceIDForBuffer:(id)buffer
{
  p_remote = &self->_remote;
  var0 = self->_remote.var0;
  if (!var0)
  {
    objc_msgSend__setupRemoteResourcesRegistry(self, a2, buffer, v3);
    var0 = p_remote->var0;
  }

  objc_msgSend_setObject_forKey_(var0, a2, buffer, buffer);
  return buffer;
}

- (unint64_t)resourceIDForTexture:(id)texture
{
  p_remote = &self->_remote;
  if (!self->_remote.var0)
  {
    objc_msgSend__setupRemoteResourcesRegistry(self, a2, texture, v3);
  }

  objc_msgSend_setObject_forKey_(p_remote->resourceIDToTexture, a2, texture, texture);
  return texture;
}

- ($A0006519144E89EAB0D3761C94EDBD8D)descForDepthStencilState:(id)state
{
  DepthStencilDesc = CFXGPUDeviceGetDepthStencilDesc(self->_gpuDevice, state);
  v4 = v4;
  result.var0 = DepthStencilDesc;
  result.var1 = *(&DepthStencilDesc + 4);
  return result;
}

- (void)removeResourceIDForResource:(id)resource
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = sub_1AF0D5194();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11 = 134217984;
    resourceCopy = resource;
    _os_log_impl(&dword_1AF0CE000, v5, OS_LOG_TYPE_INFO, "Info: removeResourceIDForResource %llu", &v11, 0xCu);
  }

  p_remote = &self->_remote;
  objc_msgSend_removeObjectForKey_(p_remote->resourceIDToTexture, v6, resource, v7);
  objc_msgSend_removeObjectForKey_(p_remote->var0, v9, resource, v10);
}

- (id)samplerStateForSamplerDesc:(id)desc
{
  Sampler = CFXGPUDeviceCreateSampler(self->_gpuDevice, *&desc);

  return Sampler;
}

- (void)registerRenderPipeline:(id)pipeline forResourceID:(unint64_t)d
{
  p_remote = &self->_remote;
  if (!self->_remote.var0)
  {
    objc_msgSend__setupRemoteResourcesRegistry(self, a2, pipeline, d);
  }

  resourceIDToRenderPipeline = p_remote->resourceIDToRenderPipeline;

  objc_msgSend_setObject_forKey_(resourceIDToRenderPipeline, a2, pipeline, d);
}

- (unint64_t)resourceIDForRenderPipelineState:(id)state
{
  p_remote = &self->_remote;
  v5 = objc_msgSend_objectForKey_(self->_remote.renderPipelineStateToDescriptor, a2, state, v3);
  if (v5)
  {
    result = objc_msgSend_objectForKey_(p_remote->renderPipelineDescToResourceID, v6, v5, v7);
    if (result)
    {
      return result;
    }

    v9 = sub_1AF0D5194();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE98A4(v9);
    }
  }

  else
  {
    v10 = sub_1AF0D5194();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE98E8(v10);
    }
  }

  return 0;
}

- (unint64_t)registerRenderPipelineDescriptor:(id)descriptor state:(id)state
{
  p_remote = &self->_remote;
  if (!self->_remote.var0)
  {
    objc_msgSend__setupRemoteResourcesRegistry(self, a2, descriptor, state);
  }

  if (state)
  {
    objc_msgSend_setObject_forKey_(p_remote->renderPipelineStateToDescriptor, a2, descriptor, state);
  }

  v7 = objc_msgSend_objectForKey_(p_remote->renderPipelineDescToResourceID, a2, descriptor, state);
  if (v7)
  {
    return v7;
  }

  v11 = objc_msgSend_hash(descriptor, v8, v9, v10);
  objc_msgSend_setObject_forKey_(p_remote->renderPipelineDescToResourceID, v12, v11, descriptor);
  objc_msgSend_setObject_forKey_(p_remote->resourceIDToRenderPipelineDesc, v13, descriptor, v11);
  v16 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v14, v11, v15);
  objc_msgSend_addObject_(p_remote->newlyRegisteredRenderPipelineResourceIDs, v17, v16, v18);
  return v11;
}

- (void)remoteRegisterRenderPipelineDescriptor:(id)descriptor remoteID:(unint64_t)d
{
  v16 = *MEMORY[0x1E69E9840];
  p_remote = &self->_remote;
  if (!self->_remote.var0)
  {
    objc_msgSend__setupRemoteResourcesRegistry(self, a2, descriptor, d);
  }

  v7 = objc_msgSend_objectForKey_(p_remote->renderPipelineDescToResourceID, a2, descriptor, d);
  if (v7)
  {
    v9 = v7;
    v10 = sub_1AF0D5194();
    v11 = v10;
    if (v9 == d)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        descriptorCopy = descriptor;
        _os_log_impl(&dword_1AF0CE000, v11, OS_LOG_TYPE_DEFAULT, "Warning: RemoteRenderPipelineDesc %@ already registered", &v14, 0xCu);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE992C(descriptor, v9, v11);
    }
  }

  else
  {
    objc_msgSend_setObject_forKey_(p_remote->renderPipelineDescToResourceID, v8, d, descriptor);
    resourceIDToRenderPipelineDesc = p_remote->resourceIDToRenderPipelineDesc;

    objc_msgSend_setObject_forKey_(resourceIDToRenderPipelineDesc, v12, descriptor, d);
  }
}

- (void)remoteRegisterArgumentBufferDescriptor:(id)descriptor remoteID:(unint64_t)d offset:(unint64_t)offset
{
  p_remote = &self->_remote;
  v9 = malloc_type_realloc(self->_remote.argumentBufferEntries, 24 * self->_remote.argumentBufferEntriesCount + 24, 0x108004098BBCF0FuLL);
  p_remote->argumentBufferEntries = v9;
  v10 = (v9 + 24 * p_remote->argumentBufferEntriesCount);
  *v10 = d;
  v10[1] = offset;
  descriptorCopy = descriptor;
  argumentBufferEntriesCount = p_remote->argumentBufferEntriesCount;
  *(p_remote->argumentBufferEntries + 3 * argumentBufferEntriesCount + 2) = descriptorCopy;
  p_remote->argumentBufferEntriesCount = argumentBufferEntriesCount + 1;
}

- (id)fetchArgumentBufferDescriptorWithRemoteID:(unint64_t)d offset:(unint64_t)offset
{
  argumentBufferEntriesCount = self->_remote.argumentBufferEntriesCount;
  if (argumentBufferEntriesCount < 1)
  {
    return 0;
  }

  for (i = (self->_remote.argumentBufferEntries + 16); *(i - 2) != d || *(i - 1) != offset; i += 3)
  {
    if (!--argumentBufferEntriesCount)
    {
      return 0;
    }
  }

  return *i;
}

- (void)clearArgumentBufferDescriptors
{
  p_remote = &self->_remote;
  p_argumentBufferEntries = &self->_remote.argumentBufferEntries;
  argumentBufferEntries = self->_remote.argumentBufferEntries;
  if (argumentBufferEntries)
  {
    if (p_remote->argumentBufferEntriesCount >= 1)
    {
      v5 = 0;
      v6 = 16;
      do
      {

        ++v5;
        v6 += 24;
      }

      while (v5 < p_remote->argumentBufferEntriesCount);
      argumentBufferEntries = *p_argumentBufferEntries;
    }

    free(argumentBufferEntries);
  }

  *p_argumentBufferEntries = 0;
  p_argumentBufferEntries[1] = 0;
}

- (void)remoteRegisterBuffer:(id)buffer remoteID:(unint64_t)d
{
  p_remote = &self->_remote;
  var0 = self->_remote.var0;
  if (!var0)
  {
    objc_msgSend__setupRemoteResourcesRegistry(self, a2, buffer, d);
    var0 = p_remote->var0;
  }

  objc_msgSend_setObject_forKey_(var0, a2, buffer, d);
}

- (void)remoteRegisterTexture:(id)texture remoteID:(unint64_t)d
{
  p_remote = &self->_remote;
  if (!self->_remote.var0)
  {
    objc_msgSend__setupRemoteResourcesRegistry(self, a2, texture, d);
  }

  resourceIDToTexture = p_remote->resourceIDToTexture;

  objc_msgSend_setObject_forKey_(resourceIDToTexture, a2, texture, d);
}

- (void)remoteUnregisterBuffer:(unint64_t)buffer
{
  p_remote = &self->_remote;
  var0 = self->_remote.var0;
  if (!var0)
  {
    objc_msgSend__setupRemoteResourcesRegistry(self, a2, buffer, v3);
    var0 = p_remote->var0;
  }

  objc_msgSend_removeObjectForKey_(var0, a2, buffer, v3);
}

- (void)remoteUnregisterTexture:(unint64_t)texture
{
  p_remote = &self->_remote;
  if (!self->_remote.var0)
  {
    objc_msgSend__setupRemoteResourcesRegistry(self, a2, texture, v3);
  }

  resourceIDToTexture = p_remote->resourceIDToTexture;

  objc_msgSend_removeObjectForKey_(resourceIDToTexture, a2, texture, v3);
}

- (void)encodeNewlyRegisteredResources:(__CFXRemoteFrameBuilder *)resources
{
  v27 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  p_remote = &self->_remote;
  newlyRegisteredRenderPipelineResourceIDs = self->_remote.newlyRegisteredRenderPipelineResourceIDs;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(newlyRegisteredRenderPipelineResourceIDs, a2, &v20, v26, 16);
  if (v6)
  {
    v11 = v6;
    v12 = *v21;
    *&v10 = 134217984;
    v19 = v10;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(newlyRegisteredRenderPipelineResourceIDs);
        }

        v14 = objc_msgSend_unsignedIntegerValue(*(*(&v20 + 1) + 8 * i), v7, v8, v9, v19);
        v17 = objc_msgSend_objectForKey_(p_remote->resourceIDToRenderPipelineDesc, v15, v14, v16);
        if (v17)
        {
          sub_1AF22DF6C(resources, v14, v17);
        }

        else
        {
          v18 = sub_1AF0D5194();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = v19;
            v25 = v14;
            _os_log_error_impl(&dword_1AF0CE000, v18, OS_LOG_TYPE_ERROR, "Error: Missing RenderPipelineDesc for resourceID %llu", buf, 0xCu);
          }
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(newlyRegisteredRenderPipelineResourceIDs, v7, &v20, v26, 16);
    }

    while (v11);
  }

  objc_msgSend_removeAllObjects(p_remote->newlyRegisteredRenderPipelineResourceIDs, v7, v8, v9);
}

- (unsigned)builtinForBufferSlice:(id)slice
{
  v3 = *&slice.var1;
  var0 = slice.var0;
  p_remote = &self->_remote;
  if (!self->_remote.var0)
  {
    objc_msgSend__setupRemoteResourcesRegistry(self, a2, slice.var0, *&slice.var1);
  }

  CPUPointer = CFXBufferSliceGetCPUPointer(var0, v3, slice.var0, *&slice.var1);
  return objc_msgSend_objectForKey_(p_remote->bufferToBuiltin, v7, CPUPointer, v8);
}

- (unsigned)builtinForTexture:(id)texture
{
  p_remote = &self->_remote;
  if (!self->_remote.var0)
  {
    objc_msgSend__setupRemoteResourcesRegistry(self, a2, texture, v3);
  }

  return objc_msgSend_objectForKey_(p_remote->textureToBuiltin, a2, texture, v3);
}

- (void)registerBuiltinBuffer:(id)buffer builtin:(unsigned __int8)builtin
{
  builtinCopy = builtin;
  v5 = *&buffer.var1;
  var0 = buffer.var0;
  p_remote = &self->_remote;
  if (!self->_remote.var0)
  {
    objc_msgSend__setupRemoteResourcesRegistry(self, a2, buffer.var0, *&buffer.var1);
  }

  CPUPointer = CFXBufferSliceGetCPUPointer(var0, v5, buffer.var0, *&buffer.var1);
  bufferToBuiltin = p_remote->bufferToBuiltin;

  objc_msgSend_setObject_forKey_(bufferToBuiltin, v8, builtinCopy, CPUPointer);
}

- (void)registerBuiltinTexture:(id)texture builtin:(unsigned __int8)builtin
{
  builtinCopy = builtin;
  p_remote = &self->_remote;
  if (!self->_remote.var0)
  {
    objc_msgSend__setupRemoteResourcesRegistry(self, a2, texture, builtin);
  }

  textureToBuiltin = p_remote->textureToBuiltin;

  objc_msgSend_setObject_forKey_(textureToBuiltin, a2, builtinCopy, texture);
}

- (id)shFromCPU:(id)u commandBuffer:(id)buffer
{
  v110 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_unstageTexture_commandBuffer_(self, a2, u, buffer);
  v8 = 0;
  memset(v109, 0, 108);
  while (1)
  {
    v9 = objc_msgSend_pixelFormat(v7, v4, v5, v6);
    if ((v9 & 0xFFFFFFFFFFFFFFFELL) != 0x46)
    {
      break;
    }

    v13 = 4 * objc_msgSend_width(v7, v10, v11, v12);
    v17 = v13 * objc_msgSend_height(v7, v14, v15, v16);
    v18 = malloc_type_calloc(v17, 1uLL, 0x100004052888210uLL);
    v22 = objc_msgSend_width(v7, v19, v20, v21);
    v26 = objc_msgSend_height(v7, v23, v24, v25);
    v103 = 0;
    v104 = 0;
    v105 = 0;
    v106 = v22;
    v107 = v26;
    v108 = 1;
    objc_msgSend_getBytes_bytesPerRow_bytesPerImage_fromRegion_mipmapLevel_slice_(v7, v27, v18, v13, v17, &v103, 0, v8);
    v31 = objc_msgSend_width(v7, v28, v29, v30);
    v35 = objc_msgSend_height(v7, v32, v33, v34);
    v36 = malloc_type_calloc(v35 * v31, 0x10uLL, 0x1000040451B5BE8uLL);
    LODWORD(v22) = 16 * objc_msgSend_width(v7, v37, v38, v39);
    v43 = objc_msgSend_width(v7, v40, v41, v42);
    v47 = objc_msgSend_height(v7, v44, v45, v46);
    sub_1AF2159F8(v36, v22, v18, v13, v43, v47);
LABEL_7:
    free(v18);
LABEL_9:
    v99 = objc_msgSend_width(v7, v82, v83, v84);
    sub_1AF2156C8(v36, v99, v8, 3, v109);
    free(v36);
    if (++v8 == 6)
    {
      return CFXGPUDeviceCreateBufferWithBytes(self->_gpuDevice, v109, 0x6C, 0);
    }
  }

  v48 = v9;
  if (v9 == 125)
  {
    v85 = 16 * objc_msgSend_width(v7, v10, v11, v12);
    v89 = v85 * objc_msgSend_height(v7, v86, v87, v88);
    v36 = malloc_type_calloc(v89, 1uLL, 0xED5CF897uLL);
    v93 = objc_msgSend_width(v7, v90, v91, v92);
    v97 = objc_msgSend_height(v7, v94, v95, v96);
    v103 = 0;
    v104 = 0;
    v105 = 0;
    v106 = v93;
    v107 = v97;
    v108 = 1;
    objc_msgSend_getBytes_bytesPerRow_bytesPerImage_fromRegion_mipmapLevel_slice_(v7, v98, v36, v85, v89, &v103, 0, v8);
    goto LABEL_9;
  }

  if (v9 == 115)
  {
    v49 = 8 * objc_msgSend_width(v7, v10, v11, v12);
    v53 = v49 * objc_msgSend_height(v7, v50, v51, v52);
    v18 = malloc_type_calloc(v53, 1uLL, 0x100004052888210uLL);
    v57 = objc_msgSend_width(v7, v54, v55, v56);
    v61 = objc_msgSend_height(v7, v58, v59, v60);
    v103 = 0;
    v104 = 0;
    v105 = 0;
    v106 = v57;
    v107 = v61;
    v108 = 1;
    objc_msgSend_getBytes_bytesPerRow_bytesPerImage_fromRegion_mipmapLevel_slice_(v7, v62, v18, v49, v53, &v103, 0, v8);
    v66 = objc_msgSend_width(v7, v63, v64, v65);
    v70 = objc_msgSend_height(v7, v67, v68, v69);
    v36 = malloc_type_calloc(v70 * v66, 0x10uLL, 0x1000040451B5BE8uLL);
    LODWORD(v57) = 16 * objc_msgSend_width(v7, v71, v72, v73);
    v77 = objc_msgSend_width(v7, v74, v75, v76);
    v81 = objc_msgSend_height(v7, v78, v79, v80);
    sub_1AF215B48(v36, v57, v18, v49, v77, v81);
    goto LABEL_7;
  }

  v101 = sub_1AF0D5194();
  if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDE99B4(v48, v101);
  }

  return 0;
}

- (id)sphericalHarmonicsForEnvironmentTexture:(id)texture order:(unint64_t)order commandBuffer:(id)buffer
{
  v9 = order * order;
  sub_1AFDE851C(self, 12 * order * order, 0);
  v11 = v10;
  v14 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v12, @"compute_sh%d_from_cubemap_threadgroup_mem", v13, order);
  v17 = objc_msgSend_computePipelineStateForKernel_(self, v15, v14, v16);
  v21 = sub_1AFDE323C(v17);
  v22 = v21;
  if (!v21)
  {
    v23 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v18, @"compute_sh%d_from_cubemap", v20, order);
    v26 = objc_msgSend_computePipelineStateForKernel_(self, v24, v23, v25);
    v22 = sub_1AFDE323C(v26);
  }

  v27 = objc_msgSend_computeCommandEncoder(buffer, v18, v19, v20);
  objc_msgSend_setComputePipelineState_(v27, v28, v22, v29);
  if (objc_msgSend_mipmapLevelCount(texture, v30, v31, v32) >= 0xA)
  {
    v36 = objc_msgSend_mipmapLevelCount(texture, v33, v34, v35);
    v40 = 9;
    if (v36 > 9)
    {
      v40 = v36;
    }

    v41 = v40 - 9;
    v42 = objc_msgSend_pixelFormat(texture, v37, v38, v39);
    texture = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(texture, v43, v42, 5, v41, 1, 0, 6);
  }

  objc_msgSend_setTexture_atIndex_(v27, v33, texture, 0);
  if (v21)
  {
    sub_1AFDE851C(self, 72 * v9, 32);
    v46 = v45;
    objc_msgSend_setBuffer_offset_atIndex_(v27, v47, v45, 0, 1);
    v48 = (16 * v9);
    v52 = objc_msgSend_threadExecutionWidth(v22, v49, v50, v51);
    v54 = 0x7FFF / v48;
    if (v52 < v54)
    {
      v54 = v52;
    }

    if (v54 >= 0x40)
    {
      v55 = 64;
    }

    else
    {
      v55 = v54;
    }

    objc_msgSend_setThreadgroupMemoryLength_atIndex_(v27, v53, v55 * v48, 0);
    v74 = xmmword_1AFE42AC0;
    v75 = 1;
    *v73 = v55;
    *&v73[8] = vdupq_n_s64(1uLL);
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v27, v56, &v74, v73);
    v59 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v57, @"sum_sh%d", v58, order);
    v62 = objc_msgSend_computePipelineStateForKernel_(self, v60, v59, v61);
    v63 = sub_1AFDE323C(v62);
    objc_msgSend_setComputePipelineState_(v27, v64, v63, v65);
    objc_msgSend_setBuffer_offset_atIndex_(v27, v66, v11, 0, 0);
    v74 = xmmword_1AFE42AD0;
    v75 = 1;
    *v73 = xmmword_1AFE42AD0;
    *&v73[16] = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v27, v67, &v74, v73);
  }

  else
  {
    objc_msgSend_setBuffer_offset_atIndex_(v27, v44, v11, 0, 0);
    v74 = xmmword_1AFE42AD0;
    v75 = 1;
    *v73 = xmmword_1AFE42AD0;
    *&v73[16] = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v27, v71, &v74, v73);
  }

  objc_msgSend_endEncoding(v27, v68, v69, v70);
  return v11;
}

- (id)copyTextureByConvertingToCubeMapIfApplicable:(id)applicable engineContext:(__CFXEngineContext *)context needsMipmap:(BOOL)mipmap
{
  v6 = objc_msgSend_width(applicable, a2, applicable, context);
  if (v6 == 2 * objc_msgSend_height(applicable, v7, v8, v9))
  {
    v13 = objc_msgSend_pixelFormat(applicable, v10, v11, v12);
    if (v13 == 115 || v13 == 125)
    {
      v15 = 115;
    }

    else
    {
      v15 = 70;
    }

    return MEMORY[0x1EEE66B58](self, sel_newCubemapTextureForLatlongTexture_pixelFormat_engineContext_needsMipmap_, applicable, v15);
  }

  else
  {

    return applicable;
  }
}

- (id)newTextureUsingMTKTextureLoaderWithURL:(id)l options:(id)options
{
  v7 = objc_alloc(MEMORY[0x1E6974438]);
  v8 = sub_1AFDE78C8(self);
  v12 = objc_msgSend_initWithDevice_(v7, v9, v8, v10);
  if (!v12)
  {
    v13 = sub_1AF0D5194();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE9A2C(v13, v11, v14, v15, v16, v17, v18, v19);
    }
  }

  v25 = 0;
  v20 = objc_msgSend_newTextureWithContentsOfURL_options_error_(v12, v11, l, options, &v25);

  if (v25)
  {
    v21 = sub_1AF0D5194();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE9AA4(&v25, v21, v22, v23);
    }

    return 0;
  }

  return v20;
}

- (id)newTextureUsingMTKTextureLoaderWithData:(id)data options:(id)options
{
  v7 = objc_alloc(MEMORY[0x1E6974438]);
  v8 = sub_1AFDE78C8(self);
  v12 = objc_msgSend_initWithDevice_(v7, v9, v8, v10);
  if (!v12)
  {
    v13 = sub_1AF0D5194();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE9A2C(v13, v11, v14, v15, v16, v17, v18, v19);
    }
  }

  v25 = 0;
  v20 = objc_msgSend_newTextureWithData_options_error_(v12, v11, data, options, &v25);

  if (v25)
  {
    v21 = sub_1AF0D5194();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE9AA4(&v25, v21, v22, v23);
    }

    return 0;
  }

  return v20;
}

- (void)_enqueueCopyFromTexture:(id)texture toTexture:(id)toTexture blitEncoder:(VFXMTLBlitCommandEncoder *)encoder generateMipMaps:(BOOL)maps
{
  mapsCopy = maps;
  v10 = objc_msgSend_width(texture, a2, texture, toTexture);
  if (v10 == objc_msgSend_width(toTexture, v11, v12, v13))
  {
    v17 = objc_msgSend_height(texture, v14, v15, v16);
    if (v17 == objc_msgSend_height(toTexture, v18, v19, v20))
    {
      v24 = objc_msgSend_depth(texture, v21, v22, v23);
      if (v24 == objc_msgSend_depth(toTexture, v25, v26, v27))
      {
        sub_1AF21683C(&encoder->_encoder, texture, 0, toTexture, 0);
        if (mapsCopy)
        {

          sub_1AF213F78(&encoder->_encoder, toTexture, v28, v29);
        }
      }
    }
  }
}

- (id)_textureDescriptorFromImage:(__CFXImage *)image needsMipMap:(BOOL)map textureOptions:(unsigned __int8)options
{
  mapCopy = map;
  v9 = objc_alloc_init(MEMORY[0x1E69741C0]);
  v10 = sub_1AF197E50(image);
  v11 = sub_1AF1F11FC(v10);
  objc_msgSend_setTextureType_(v9, v12, v11, v13);
  v14 = 1;
  objc_msgSend_setUsage_(v9, v15, 1, v16);
  objc_msgSend_setStorageMode_(v9, v17, 0, v18);
  v21 = sub_1AF197D7C(image);
  if (*v21.i32 >= 1.0)
  {
    v23 = *v21.i32;
  }

  else
  {
    v23 = 1.0;
  }

  objc_msgSend_setWidth_(v9, *&v19, v23, *&v20, *&v21, *&v22);
  v26 = v75;
  if (v75 < 1.0)
  {
    v26 = 1.0;
  }

  objc_msgSend_setHeight_(v9, v24, v26, v25);
  v27 = sub_1AF197DFC(image);
  objc_msgSend_setDepth_(v9, v28, v27, v29);
  if (mapCopy)
  {
    v33 = objc_msgSend_width(v9, v30, v31, v32);
    v37 = fmax(v33, objc_msgSend_height(v9, v34, v35, v36));
    v14 = (floorf(log2f(v37)) + 1.0);
  }

  objc_msgSend_setMipmapLevelCount_(v9, v30, v14, v32);
  if (objc_msgSend_mipmapLevelCount(v9, v38, v39, v40) >= 2 && objc_msgSend_textureType(v9, v41, v42, v43) == 5)
  {
    v47 = objc_msgSend_usage(v9, v44, v45, v46);
    objc_msgSend_setUsage_(v9, v48, v47 | 0x10, v49);
  }

  v50 = sub_1AF196128(image);
  if (v50)
  {
    v51 = v50;
    v52 = *(v50 + 7);
    v53 = sub_1AF198570(image, 0);
    objc_msgSend_setMipmapLevelCount_(v9, v54, v53, v55);
    v56 = *(v51 + 20);
    if (v52 & 1) != 0 || (options)
    {
      v57 = VFXMTLPixelFormatNonSRGBVariant(v56);
    }

    else
    {
      v57 = VFXMTLPixelFormatSRGBVariant(v56);
    }

    objc_msgSend_setPixelFormat_(v9, v58, v57, v59);
  }

  else
  {
    v60 = sub_1AF197BC0(image, 1);
    if (v60)
    {
      v61 = v60;
      BitsPerComponent = CGBitmapContextGetBitsPerComponent(v60);
      v63 = CGBitmapContextGetBitsPerPixel(v61) / BitsPerComponent;
      sub_1AFDE78C8(self);
      v64 = sub_1AF1F1624(v63, BitsPerComponent, v61, options);
      objc_msgSend_setPixelFormat_(v9, v65, v64, v66);
      if (v63 == 1)
      {
        v67 = sub_1AFDE78C8(self);
        if (j__objc_msgSend_supportsTextureSwizzle(v67, v68, v69, v70))
        {
          objc_msgSend_setSwizzle_(v9, v71, 16908802, v72);
        }
      }

      CGContextRelease(v61);
    }

    else
    {
      v74 = sub_1AF0D5194();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDE9B98(image);
      }

      return 0;
    }
  }

  return v9;
}

- (BOOL)_copyImage:(__CFXImage *)image toTexture:(id)texture desc:(id)desc textureOptions:(unsigned __int8)options needsMipMapGeneration:(BOOL)generation
{
  imageCopy = image;
  v107 = sub_1AF197E50(image);
  v11 = sub_1AF196128(imageCopy);
  if (!v11)
  {
    v61 = sub_1AF197BC0(imageCopy, 1);
    if (!v61)
    {
      v62 = sub_1AF0D5194();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDE9CCC(imageCopy);
      }
    }

    v63 = imageCopy;
    Data = CGBitmapContextGetData(v61);
    if (!Data)
    {
      v64 = sub_1AF0D5194();
      if (!os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        if (!v61)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

      sub_1AFDE9D44(v64);
      if (v61)
      {
LABEL_20:
        CFRelease(v61);
        v61 = 0;
      }
    }

LABEL_21:
    BytesPerRow = CGBitmapContextGetBytesPerRow(v61);
    BitsPerComponent = CGBitmapContextGetBitsPerComponent(v61);
    v67 = (CGBitmapContextGetBitsPerPixel(v61) / BitsPerComponent * BitsPerComponent) >> 3;
    v71 = v67 * objc_msgSend_width(desc, v68, v69, v70);
    v75 = objc_msgSend_width(desc, v72, v73, v74);
    v79 = objc_msgSend_height(desc, v76, v77, v78);
    if (v107 == 2)
    {
      v83 = objc_msgSend_width(desc, v80, v81, v82);
      v87 = objc_msgSend_depth(desc, v84, v85, v86);
      v110[0] = MEMORY[0x1E69E9820];
      v110[1] = 3221225472;
      v110[2] = sub_1AF2172E4;
      v110[3] = &unk_1E7A7D118;
      v110[4] = desc;
      v110[5] = texture;
      v110[6] = v71;
      sub_1AF19834C(2, v83, v87, BytesPerRow, v71, v67, Data, v110);
      if (!v61)
      {
        return generation;
      }
    }

    else
    {
      v89 = v79;
      if (sub_1AF196D70(v63))
      {
        v93 = objc_msgSend_width(desc, v90, v91, v92);
        v109[0] = MEMORY[0x1E69E9820];
        v109[1] = 3221225472;
        v109[2] = sub_1AF217370;
        v109[3] = &unk_1E7A7D0F0;
        memset(&v109[6], 0, 24);
        v109[9] = v75;
        v109[10] = v89;
        v109[11] = 1;
        v109[12] = v71;
        v109[4] = texture;
        v109[5] = desc;
        sub_1AF198078(v107, v93, BytesPerRow, v71, v67, Data, v109);
        if (!v61)
        {
          return generation;
        }
      }

      else
      {
        memset(v108, 0, 24);
        v108[3] = v75;
        v108[4] = v89;
        v108[5] = 1;
        v97 = objc_msgSend_height(desc, v90, v91, v92);
        objc_msgSend_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage_(texture, v98, v108, 0, 0, Data, v71, v97 * v71);
        if (!v61)
        {
          return generation;
        }
      }
    }

    CFRelease(v61);
    return generation;
  }

  v12 = v11;
  v13 = sub_1AF196D70(imageCopy);
  v14 = sub_1AF197EEC(imageCopy);
  LOBYTE(v108[0]) = 0;
  v103 = sub_1AF198570(imageCopy, v108);
  if (v103 > objc_msgSend_mipmapLevelCount(desc, v15, v16, v17))
  {
    v21 = sub_1AF0D5194();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE9C10(v21, v18, v19, v20, v22, v23, v24, v25);
    }
  }

  generationCopy = generation;
  if (v13)
  {
    if (v14)
    {
      if (v103)
      {
        for (i = 0; i != v103; ++i)
        {
          v27 = objc_msgSend_width(desc, v18, v19, v20);
          v31 = objc_msgSend_height(desc, v28, v29, v30);
          ValueAtIndex = CFArrayGetValueAtIndex(*(v12 + 24), i);
          Length = CFDataGetLength(ValueAtIndex);
          BytePtr = CFDataGetBytePtr(ValueAtIndex);
          v38 = sub_1AF1965C4(imageCopy);
          v40 = Length;
          if (*(v12 + 4) < 2u)
          {
            v55 = *(v12 + 1) >> 3;
            v104 = *&v38;
            v105 = BytePtr;
            v56 = imageCopy;
            v57 = objc_msgSend_width(desc, v35, v36, v37) * v55;
            v48 = objc_msgSend_width(desc, v58, v59, v60);
            v111[0] = MEMORY[0x1E69E9820];
            v111[1] = 3221225472;
            v111[2] = sub_1AF217264;
            v111[3] = &unk_1E7A7D0F0;
            memset(&v111[6], 0, 24);
            v111[9] = v27;
            v111[10] = v31;
            v111[11] = 1;
            v111[12] = v57;
            v111[4] = texture;
            v111[5] = desc;
            v50 = v111;
            v51 = v107;
            v52 = (v40 / v104);
            v49 = v57;
            imageCopy = v56;
            v53 = v55;
            v54 = v105;
          }

          else
          {
            LOBYTE(v39) = *(v12 + 5);
            v41 = ((v40 / *(&v38 + 1)) * v39);
            v42 = *(v12 + 1) >> 3;
            LODWORD(v42) = objc_msgSend_width(desc, v35, v36, v37) / *(v12 + 4) * v42;
            v46 = objc_msgSend_height(desc, v43, v44, v45);
            v47 = *(v12 + 5);
            v112[0] = MEMORY[0x1E69E9820];
            v112[1] = 3221225472;
            v112[2] = sub_1AF21720C;
            v112[3] = &unk_1E7A7D0C8;
            memset(&v112[5], 0, 24);
            v112[4] = texture;
            v112[8] = v27;
            v112[9] = v31;
            v48 = v46 / v47;
            v49 = v42;
            v113 = v42;
            v112[10] = 1;
            v112[11] = v46 / v47;
            v50 = v112;
            v51 = v107;
            v52 = v41;
            v53 = 0;
            v54 = BytePtr;
          }

          sub_1AF198078(v51, v48, v52, v49, v53, v54, v50);
        }
      }
    }

    else if (v108[0])
    {
      if (v103)
      {
        for (j = 0; j < v103; ++j)
        {
          for (k = 0; k != 6; ++k)
          {
            v96 = CFArrayGetValueAtIndex(*(v12 + 24), 6 * j + k);
            sub_1AF21627C(texture, desc, k, j, v96, v12);
          }
        }
      }
    }

    else
    {
      for (m = 0; m != 6; ++m)
      {
        v101 = CFArrayGetValueAtIndex(*(v12 + 24), m);
        sub_1AF2163AC(texture, desc, m, v101, v12);
      }
    }
  }

  else
  {
    sub_1AF2163AC(texture, desc, 0, *(v12 + 24), v12);
  }

  generation = v103 < 2 && generationCopy;
  if (!texture)
  {
    v88 = sub_1AF0D5194();
    if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE9C88(v88);
    }
  }

  return generation;
}

- (id)newCubemapTextureForLatlongTexture:(id)texture pixelFormat:(unint64_t)format engineContext:(__CFXEngineContext *)context needsMipmap:(BOOL)mipmap
{
  mipmapCopy = mipmap;
  formatCopy = format;
  v45 = *MEMORY[0x1E69E9840];
  v11 = objc_msgSend_width(texture, a2, texture, format);
  if (v11 >> 1 >= 0x800)
  {
    LODWORD(v12) = 2048;
  }

  else
  {
    v12 = v11 >> 1;
  }

  memset(v42, 0, sizeof(v42));
  CFXTextureDescriptorMakeCube(v12, formatCopy, v42);
  v13 = log2f(v12);
  *&v42[12] = *&v42[12] & 0xFFFF8F00FF00FFFFLL | ((vcvtms_s32_f32(v13) + 1) << 16) | 0x201300000000;
  v14 = sub_1AFDE323C(self);
  v43 = *v42;
  v44 = *&v42[16];
  v15 = CFXGPUDeviceCreateTexture(v14, &v43);
  v16 = sub_1AF12E2AC(context);
  v17 = sub_1AF1305F8(context, 512);
  v20 = v17;
  if (v17)
  {
    v21 = objc_msgSend_computePipelineStateForKernel_(self, v18, @"compute_cube_from_equi", v19);
  }

  else
  {
    v21 = objc_msgSend_computePipelineStateForKernel_(self, v18, @"compute_cube_from_equi_views", v19);
  }

  v22 = sub_1AFDE323C(v21);
  v26 = objc_msgSend_resourceComputeEncoder(v16, v23, v24, v25);
  objc_msgSend_setComputePipelineState_(v26, v27, v22, v28);
  objc_msgSend_setTexture_atIndex_(v26, v29, texture, 0);
  if (v20)
  {
    objc_msgSend_setTexture_atIndex_(v26, v30, v15, 1);
  }

  else
  {
    sub_1AF21620C(v15, 0, &v43, v31);
    objc_msgSend_setTextures_withRange_(v26, v34, &v43, 1, 6);
  }

  objc_msgSend_dispatchOnTextureCube_(v26, v32, v15, v33);
  if (mipmapCopy)
  {
    v38 = objc_msgSend_resourceBlitEncoder(v16, v35, v36, v37);
    sub_1AF213F78(v38, v15, v39, v40);
  }

  return v15;
}

- (id)latlongTextureForCubemap:(id)cubemap pixelFormat:(unint64_t)format renderContext:(id)context needsMipmap:(BOOL)mipmap
{
  mipmapCopy = mipmap;
  formatCopy = format;
  memset(v44, 0, sizeof(v44));
  v11 = 2 * objc_msgSend_width(cubemap, a2, cubemap, format);
  v15 = objc_msgSend_height(cubemap, v12, v13, v14);
  CFXTextureDescriptorMake2D(v11, v15, formatCopy, v44);
  *&v44[12] = *&v44[12] & 0xFFFFFF00FF00FFFFLL | 0x300100000;
  v19 = objc_msgSend_gpuDevice(context, v16, v17, v18);
  v42 = *v44;
  v43 = *&v44[16];
  v20 = CFXGPUDeviceCreateTexture(v19, &v42);
  v23 = objc_msgSend_computePipelineStateForKernel_(self, v21, @"compute_equi_from_cube", v22);
  v24 = sub_1AFDE323C(v23);
  v28 = objc_msgSend_resourceComputeEncoder(context, v25, v26, v27);
  objc_msgSend_setComputePipelineState_(v28, v29, v24, v30);
  objc_msgSend_setTexture_atIndex_(v28, v31, cubemap, 0);
  objc_msgSend_setTexture_atIndex_(v28, v32, v20, 1);
  objc_msgSend_dispatchOnTexture2D_(v28, v33, v20, v34);
  if (mipmapCopy)
  {
    v38 = objc_msgSend_resourceBlitEncoder(context, v35, v36, v37);
    sub_1AF213F78(v38, v20, v39, v40);
  }

  return v20;
}

- (id)unstageTexture:(id)texture commandBuffer:(id)buffer
{
  textureCopy = texture;
  if (objc_msgSend_storageMode(texture, a2, texture, buffer) == 2)
  {
    memset(v20, 0, sizeof(v20));
    CFXTextureDescriptorFromMTLTexture(textureCopy, v7, v8, v9, v20);
    *&v20[12] &= 0xFFFF8F00FFFFFFFFLL;
    v10 = sub_1AFDE323C(self);
    v18 = *v20;
    v19 = *&v20[16];
    v11 = CFXGPUDeviceCreateTexture(v10, &v18);
    v18 = 0uLL;
    sub_1AF1FF3B8(&v18, buffer, 0, v12);
    sub_1AF2177B4(&v18, textureCopy, v11, v13);
    sub_1AF1FE520(&v18, v14, v15, v16);
    return v11;
  }

  return textureCopy;
}

- (id)renderResourceForAsset:(void *)asset withEngineContext:(__CFXEngineContext *)context entityCache:(int64_t *)cache isFallback:(BOOL *)fallback isDynamic:(BOOL *)dynamic
{
  v11 = sub_1AF12DDCC(context);
  v12 = *cache;
  v13 = sub_1AF1CF8AC(v11);
  v17 = sub_1AF0FB884(v13);
  if (!v12)
  {
    v18 = objc_msgSend_entityTag(asset, v14, v15, v16);
    result = objc_msgSend_entityWithTag_(v17, v19, v18, v20);
    if (!result)
    {
      return result;
    }

    v12 = result;
    *cache = result;
  }

  sub_1AF130C80(context, v14, v15, v16);

  return MEMORY[0x1EEE66B58](v17, sel_textureForEntity_isFallback_isDynamic_renderer_, v12, fallback);
}

- (id)renderResourceForMaterialProperty:(__CFXMaterialProperty *)property withEngineContext:(__CFXEngineContext *)context didFallbackToDefaultTexture:(BOOL *)texture isDynamic:(BOOL *)dynamic
{
  if (texture)
  {
    *texture = 1;
    v11 = sub_1AF167644(property);
    if (v11)
    {
      isDynamic = v11;
      *texture = 0;
      return isDynamic;
    }
  }

  else
  {
    v13 = sub_1AF167644(property);
    if (v13)
    {
      return v13;
    }
  }

  v14 = sub_1AF167578(property);
  if (v14)
  {
    v15 = v14;
    v16 = sub_1AF16679C(property);
    v13 = objc_msgSend_renderResourceForImageProxy_sampler_engineContext_didFallbackToDefaultTexture_(self, v17, v15, v16, context, texture);
    if (v13)
    {
      return v13;
    }
  }

  v19 = sub_1AF166428(property);
  if (!v19)
  {
    isDynamic = sub_1AF167054(property);
    if (isDynamic)
    {
      v24 = sub_1AF167158(property);
      v29 = v24;
      isDynamic = objc_msgSend_renderResourceForAsset_withEngineContext_entityCache_isFallback_isDynamic_(self, v25, isDynamic, context, &v29, texture, dynamic);
      if (isDynamic && !v24)
      {
        sub_1AF1671CC(property, v29);
      }

      if (sub_1AF167CD8(property) == 26)
      {
        var4 = property->var4;
        if (var4 != isDynamic)
        {
          if (var4)
          {
            CFRelease(var4);
            property->var4 = 0;
          }

          if (isDynamic)
          {
            v27 = CFRetain(isDynamic);
          }

          else
          {
            v27 = 0;
          }

          property->var4 = v27;
          v28 = sub_1AF12DDCC(context);
          sub_1AF1D121C(v28);
        }
      }
    }

    return isDynamic;
  }

  v20 = v19;
  v21 = sub_1AF16679C(property);
  v23 = sub_1AF1678F4(property);

  return objc_msgSend_renderResourceForImage_sampler_options_engineContext_didFallbackToDefaultTexture_(self, v22, v20, v21, v23, context, texture);
}

- (id)renderResourceForImageProxy:(__CFXImageProxy *)proxy sampler:(id)sampler engineContext:(__CFXEngineContext *)context didFallbackToDefaultTexture:(BOOL *)texture
{
  if (!proxy)
  {
    v11 = sub_1AF0D5194();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE9EF0(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  p_availableImageProxy = &self->_availableImageProxy;
  os_unfair_lock_lock(&p_availableImageProxy->lock);
  registry = p_availableImageProxy->registry;
  if (!p_availableImageProxy->registry)
  {
    sub_1AF20C220(p_availableImageProxy);
    registry = p_availableImageProxy->registry;
  }

  v23 = objc_msgSend_objectForKey_(registry, v20, proxy, v21);
  if (!v23)
  {
    v24 = sub_1AF276584(proxy, *&sampler, context);
    if (!v24)
    {
      os_unfair_lock_unlock(&p_availableImageProxy->lock);
      v26 = 0;
      goto LABEL_17;
    }

    v23 = v24;
    objc_msgSend_setObject_forKey_(p_availableImageProxy->registry, v25, v24, proxy);
    CFRelease(v23);
  }

  v36 = 257;
  v26 = sub_1AF276950(v23, context, *&sampler, &v36);
  os_unfair_lock_unlock(&p_availableImageProxy->lock);
  if (v26)
  {
    if (v36 == 1 && HIBYTE(v36) == 1 && (*&sampler & 0xFF0000) != 0)
    {
      v27 = sub_1AF12E2AC(context);
      v31 = objc_msgSend_resourceBlitEncoder(v27, v28, v29, v30);
      sub_1AF213F78(v31, v26, v32, v33);
    }

    if (texture)
    {
      v34 = 0;
LABEL_19:
      *texture = v34;
      return v26;
    }

    return v26;
  }

LABEL_17:
  if (texture)
  {
    v34 = 1;
    goto LABEL_19;
  }

  return v26;
}

- (id)lazyMTKTextureLoader
{
  result = self->_mtkTextureLoader;
  if (!result)
  {
    v4 = objc_alloc(MEMORY[0x1E6974438]);
    v5 = sub_1AFDE78C8(self);
    result = objc_msgSend_initWithDevice_(v4, v6, v5, v7);
    self->_mtkTextureLoader = result;
  }

  return result;
}

- (id)renderResourceForImage:(__CFXImage *)image sampler:(id)sampler options:(unsigned __int8)options engineContext:(__CFXEngineContext *)context didFallbackToDefaultTexture:(BOOL *)texture
{
  optionsCopy = options;
  samplerCopy = sampler;
  if (!image)
  {
    v13 = sub_1AF0D5194();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE9EF0(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  if ((*&samplerCopy & 0xFF0000) != 0)
  {
    v21 = 1;
  }

  else
  {
    v21 = (optionsCopy >> 2) & 1;
  }

  if ((*&samplerCopy & 0xFF0000) != 0)
  {
    v22 = optionsCopy | 4;
  }

  else
  {
    v22 = optionsCopy;
  }

  v23 = (0xC6A4A7935BD1E995 * (image ^ 0xC6A4A7935BD1E995 ^ v22)) ^ ((0xC6A4A7935BD1E995 * (image ^ 0xC6A4A7935BD1E995 ^ v22)) >> 47);
  v24 = (0xC6A4A7935BD1E995 * v23) ^ ((0xC6A4A7935BD1E995 * v23) >> 47);
  v25 = sub_1AF12E2AC(context);
  os_unfair_lock_lock(&self->_availableImages.safeResourcesRegistry.lock);
  if (!self->_availableImages.safeResourcesRegistry.registry)
  {
    sub_1AF20C220(&self->_availableImages);
  }

  v80[0] = MEMORY[0x1E69E9820];
  v80[1] = 3221225472;
  v80[2] = sub_1AF2182A0;
  v80[3] = &unk_1E7A7D140;
  v80[4] = self;
  v80[5] = v25;
  locked = objc_msgSend_hazardousResourceForKey_inLockedRegistry_onBehalfOfRenderContext_withHazardTrackingHandler_(self, v26, v24, &self->_availableImages, v25, v80);
  if (locked)
  {
    defaultTexture = locked;
    goto LABEL_32;
  }

  sub_1AF1974B4(image, v28, v29, v30);
  if (!sub_1AF1971B0(image))
  {
    if ((v22 & 2) != 0 && sub_1AF197D50(image))
    {
      v48 = objc_msgSend__textureDescriptorFromImage_needsMipMap_textureOptions_(self, v32, image, 0, v22);
      if (v48)
      {
        v49 = v48;
        v78 = 0uLL;
        v79 = 0;
        CFXTextureDescriptorFromMTLTextureDescriptor(v48, v44, v45, v46, &v78);
        v50 = sub_1AFDE323C(self);
        v76 = v78;
        v77 = v79;
        v75 = CFXGPUDeviceCreateTexture(v50, &v76);
        objc_msgSend__copyImage_toTexture_desc_textureOptions_needsMipMapGeneration_(self, v51, image, v75, v49, v22, 0);
        defaultTexture = objc_msgSend_copyTextureByConvertingToCubeMapIfApplicable_engineContext_needsMipmap_(self, v52, v75, context, v21);
        v53 = defaultTexture;

LABEL_24:
        sub_1AF197C5C(image);
        goto LABEL_25;
      }
    }

    else
    {
      v54 = objc_msgSend__textureDescriptorFromImage_needsMipMap_textureOptions_(self, v32, image, v21, v22);
      if (v54)
      {
        v55 = v54;
        v78 = 0uLL;
        v79 = 0;
        CFXTextureDescriptorFromMTLTextureDescriptor(v54, v44, v45, v46, &v78);
        v56 = sub_1AFDE323C(self);
        v76 = v78;
        v77 = v79;
        defaultTexture = CFXGPUDeviceCreateTexture(v56, &v76);
        v57 = defaultTexture;
        LODWORD(v21) = objc_msgSend__copyImage_toTexture_desc_textureOptions_needsMipMapGeneration_(self, v58, image, defaultTexture, v55, v22, v21);
        goto LABEL_24;
      }
    }

LABEL_30:
    defaultTexture = self->_defaultTexture;
    v68 = objc_msgSend_resourceManagerMonitor(v25, v44, v45, v46);
    v71 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v69, @"Unable to find texture for source %@", v70, image);
    objc_msgSend_renderContext_didFallbackToDefaultTextureForSource_message_(v68, v72, v25, image, v71);
    goto LABEL_31;
  }

  v33 = sub_1AF1971C0(image);
  v37 = VFXGetResourceBundle(v33, v34, v35, v36);
  *&v78 = 0;
  v41 = objc_msgSend_lazyMTKTextureLoader(self, v38, v39, v40);
  defaultTexture = objc_msgSend_newTextureWithName_scaleFactor_bundle_options_error_(v41, v42, v33, v37, MEMORY[0x1E695E0F8], &v78, 1.0);
  v43 = defaultTexture;
  if (!defaultTexture)
  {
    v47 = sub_1AF0D5194();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE9F68();
    }
  }

LABEL_25:
  if (!defaultTexture)
  {
    goto LABEL_30;
  }

  if (v21)
  {
    if (sub_1AF198570(image, 0) <= 1)
    {
      v61 = objc_msgSend_pixelFormat(defaultTexture, v44, v59, v60);
      if (sub_1AF1F1544(v61))
      {
        v64 = objc_msgSend_resourceBlitEncoder(v25, v44, v62, v63);
        sub_1AF213F78(v64, defaultTexture, v65, v66);
        objc_msgSend_setHazardousResource_forKey_inLockedRegistry_onBehalfOfRenderContext_(self, v67, defaultTexture, *(v64 + 8), v24, &self->_availableImages, v25);
        goto LABEL_32;
      }
    }
  }

LABEL_31:
  objc_msgSend_setObject_forKey_(self->_availableImages.safeResourcesRegistry.registry, v44, defaultTexture, v24);
LABEL_32:
  os_unfair_lock_unlock(&self->_availableImages.safeResourcesRegistry.lock);
  if (texture)
  {
    v73 = self->_defaultTexture1D == defaultTexture || self->_defaultTexture == defaultTexture || self->_defaultTexture3D == defaultTexture;
    *texture = v73;
  }

  return defaultTexture;
}

- (id)defaultTexture
{
  v23 = *MEMORY[0x1E69E9840];
  p_availableImages = &self->_availableImages;
  os_unfair_lock_lock(&self->_availableImages.safeResourcesRegistry.lock);
  if (!p_availableImages->safeResourcesRegistry.registry)
  {
    sub_1AF20C220(p_availableImages);
  }

  if (!self->_defaultTexture)
  {
    v16 = p_availableImages;
    memset(v22, 0, sizeof(v22));
    CFXTextureDescriptorMake2D(4u, 4u, 0x46u, v22);
    *&v22[12] = *&v22[12] & 0xFFFF8F00FF00FFFFLL | 0x100030000;
    v4 = sub_1AFDE323C(self);
    v17 = *v22;
    v18 = *&v22[16];
    v5 = CFXGPUDeviceCreateTexture(v4, &v17);
    self->_defaultTexture = v5;
    if (v22[14])
    {
      v7 = 4;
      v8 = 1;
      do
      {
        MEMORY[0x1EEE9AC00](v5, v6);
        v10 = &v15 - v9;
        memset(&v15 - v9, 255, 4 * v7 * v7);
        defaultTexture = self->_defaultTexture;
        v17 = 0uLL;
        v18 = 0;
        v19 = v7;
        v20 = v7;
        v21 = 1;
        v5 = objc_msgSend_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage_(defaultTexture, v12, &v17, v8 - 1, 0, v10, 4 * v7, 4 * v7 * v7);
        v13 = v8 < (*&v22[12] << 40) >> 56 && v7 > 1;
        v7 >>= 1;
        ++v8;
      }

      while (v13);
    }

    p_availableImages = v16;
  }

  os_unfair_lock_unlock(&p_availableImages->safeResourcesRegistry.lock);
  return self->_defaultTexture;
}

- (id)defaultTexture1D
{
  v15 = *MEMORY[0x1E69E9840];
  p_availableImages = &self->_availableImages;
  os_unfair_lock_lock(&self->_availableImages.safeResourcesRegistry.lock);
  if (!p_availableImages->safeResourcesRegistry.registry)
  {
    sub_1AF20C220(p_availableImages);
  }

  if (!self->_defaultTexture1D)
  {
    memset(v14, 0, sizeof(v14));
    CFXTextureDescriptorMake1D(4, 0x46u, v14);
    *&v14[12] = *&v14[12] & 0xFFFF8F00FFFFFFFFLL | 0x100000000;
    v4 = sub_1AFDE323C(self);
    v10 = *v14;
    v11 = *&v14[16];
    v5 = CFXGPUDeviceCreateTexture(v4, &v10);
    self->_defaultTexture1D = v5;
    MEMORY[0x1EEE9AC00](v5, v6);
    defaultTexture1D = self->_defaultTexture1D;
    v10 = 0uLL;
    v11 = 0;
    v12 = xmmword_1AFE42AF0;
    v13 = 1;
    objc_msgSend_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage_(defaultTexture1D, v8, &v10, 0, 0, -1, -1);
  }

  os_unfair_lock_unlock(&p_availableImages->safeResourcesRegistry.lock);
  return self->_defaultTexture1D;
}

- (id)defaultCubeTexture
{
  v22 = *MEMORY[0x1E69E9840];
  p_availableImages = &self->_availableImages;
  os_unfair_lock_lock(&self->_availableImages.safeResourcesRegistry.lock);
  if (!p_availableImages->safeResourcesRegistry.registry)
  {
    sub_1AF20C220(p_availableImages);
  }

  if (!self->_defaultCubeTexture)
  {
    v15 = p_availableImages;
    memset(v21, 0, sizeof(v21));
    CFXTextureDescriptorMakeCube(4u, 0x46u, v21);
    *&v21[12] = *&v21[12] & 0xFFFF8F00FF00FFFFLL | 0x100030000;
    v4 = sub_1AFDE323C(self);
    v16 = *v21;
    v17 = *&v21[16];
    v5 = CFXGPUDeviceCreateTexture(v4, &v16);
    self->_defaultCubeTexture = v5;
    if (v21[14])
    {
      v7 = 0;
      v8 = 4;
      do
      {
        MEMORY[0x1EEE9AC00](v5, v6);
        v10 = &v14 - v9;
        bzero(&v14 - v9, 4 * v8 * v8);
        for (i = 0; i != 6; ++i)
        {
          defaultCubeTexture = self->_defaultCubeTexture;
          v16 = 0uLL;
          v17 = 0;
          v18 = v8;
          v19 = v8;
          v20 = 1;
          v5 = objc_msgSend_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage_(defaultCubeTexture, v6, &v16, v7, i, v10, 4 * v8, 4 * v8 * v8);
        }

        ++v7;
        v8 >>= 1;
      }

      while (v7 < (*&v21[12] << 40) >> 56);
    }

    p_availableImages = v15;
  }

  os_unfair_lock_unlock(&p_availableImages->safeResourcesRegistry.lock);
  return self->_defaultCubeTexture;
}

- (id)defaultTexture3D
{
  v32 = *MEMORY[0x1E69E9840];
  p_availableImages = &self->_availableImages;
  os_unfair_lock_lock(&self->_availableImages.safeResourcesRegistry.lock);
  if (!p_availableImages->safeResourcesRegistry.registry)
  {
    sub_1AF20C220(p_availableImages);
  }

  if (!self->_defaultTexture3D)
  {
    memset(v31, 0, sizeof(v31));
    CFXTextureDescriptorMake3D(0x10u, 0x10u, 0x10u, 0x46u, v31);
    *&v31[12] = *&v31[12] & 0xFFFF8F00FFFFFFFFLL | 0x100000000;
    v4 = sub_1AFDE323C(self);
    v26 = *v31;
    v27 = *&v31[16];
    v5 = CFXGPUDeviceCreateTexture(v4, &v26);
    v25[1] = v25;
    self->_defaultTexture3D = v5;
    v6 = 4 * *&v31[4];
    v7 = v6 * (*&v31[4] >> 16);
    *&v10 = MEMORY[0x1EEE9AC00](v5, v8).n128_u64[0];
    v12 = v25 - v11;
    LODWORD(v13) = *&v31[4];
    v14 = (*&v31[4] << 16) >> 48;
    if (v14 >= 1)
    {
      for (i = 0; i < v14; ++i)
      {
        v16 = v13 >> 16;
        v13 = v13;
        if (v16 > 0)
        {
          v17 = 0;
          v18 = v13 - 1;
          v19 = v12 + 3;
          do
          {
            if (v13 >= 1)
            {
              v20 = 0;
              v21 = v19;
              v22 = v13;
              do
              {
                v9 = v20 / v18;
                *(v21 - 3) = v20 / v18;
                *(v21 - 2) = 255 * v17 / (v16 - 1);
                *(v21 - 1) = 255 * i / (v14 - 1);
                *v21 = -1;
                v21 += 4;
                v20 += 255;
                --v22;
              }

              while (v22);
            }

            ++v17;
            v19 += v6;
          }

          while (v17 != v16);
        }

        defaultTexture3D = self->_defaultTexture3D;
        v26 = 0uLL;
        v27 = i;
        v28 = v13;
        v29 = v16;
        v30 = 1;
        objc_msgSend_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage_(defaultTexture3D, v9, &v26, 0, 0, v12, v6, v7, v10);
        LODWORD(v13) = *&v31[4];
        v14 = (*&v31[4] << 16) >> 48;
      }
    }
  }

  os_unfair_lock_unlock(&p_availableImages->safeResourcesRegistry.lock);
  return self->_defaultTexture3D;
}

- (id)defaultTextureForTextureType:(unint64_t)type
{
  if (type == 7)
  {
    return (MEMORY[0x1EEE66B58])(self, sel_defaultTexture3D, 7);
  }

  if (type)
  {
    return objc_msgSend_defaultTexture(self, a2, type, v3);
  }

  return (MEMORY[0x1EEE66B58])(self, sel_defaultTexture1D, 0);
}

- (id)iesTextureForProfile:(void *)profile renderContext:(id)context
{
  p_availableIESTextures = &self->_availableIESTextures;
  os_unfair_lock_lock(&self->_availableIESTextures.lock);
  registry = p_availableIESTextures->registry;
  if (!p_availableIESTextures->registry)
  {
    sub_1AF20C220(p_availableIESTextures);
    registry = p_availableIESTextures->registry;
  }

  v10 = objc_msgSend_objectForKey_(registry, v7, profile, v8);
  if (v10)
  {
    v14 = v10;
    os_unfair_lock_unlock(&p_availableIESTextures->lock);
  }

  else
  {
    v15 = j__objc_msgSend__infoHangle(profile, v11, v12, v13);
    CACurrentMediaTime();
    v16 = sub_1AF1F1AAC();
    v17 = v16 >> 3 << 8;
    v18 = v16 >> 3 << 12;
    v19 = malloc_type_malloc(v18, 0xF32F5BBCuLL);
    v20 = sub_1AF1F1AAC();
    sub_1AF1959F4(v15, v19, 256, 0x10u, 1, v20 >> 3);
    memset(v29, 0, sizeof(v29));
    CFXTextureDescriptorMake2D(0x100u, 0x10u, 0x19u, v29);
    *&v29[12] = *&v29[12] & 0xFFFF8F00FF00FFFFLL | 0x100090000;
    v21 = sub_1AFDE323C(self);
    v25 = *v29;
    v26 = *&v29[16];
    v14 = CFXGPUDeviceCreateTexture(v21, &v25);
    v25 = 0uLL;
    v26 = 0;
    v27 = xmmword_1AFE42B00;
    v28 = 1;
    objc_msgSend_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage_(v14, v22, &v25, 0, 0, v19, v17, v18);
    free(v19);
    objc_msgSend_setObject_forKey_(p_availableIESTextures->registry, v23, v14, profile);
    os_unfair_lock_unlock(&p_availableIESTextures->lock);
  }

  return v14;
}

- (void)colorMatchSourceTexture:(id)texture sourceColorSpace:(CGColorSpace *)space destinationColorSpace:(CGColorSpace *)colorSpace destinationTexture:(id)destinationTexture renderContext:(id)context
{
  v10 = objc_msgSend_colorMatchingComputePipelineStateForSourceColorSpace_destinationColorSpace_renderContext_(self, a2, space, colorSpace, context);
  v14 = objc_msgSend_resourceComputeEncoder(context, v11, v12, v13);
  v15 = sub_1AFDE323C(v10);
  objc_msgSend_setComputePipelineState_(v14, v16, v15, v17);
  objc_msgSend_setTexture_atIndex_(v14, v18, texture, 0);
  objc_msgSend_setTexture_atIndex_(v14, v19, destinationTexture, 1);

  objc_msgSend_dispatchOnTexture2D_(v14, v20, texture, v21);
}

- (void)colorMatchBiPlanarPixelBufferWithFormatType:(unsigned int)type pixelBufferYCbCrMatrix:(id)matrix pixelBufferColorPrimaries:(id)primaries pixelBufferTransferFunction:(id)function sourceTextureY:(id)y sourceTextureCbCr:(id)cr sourceColorSpace:(CGColorSpace *)space destinationColorSpace:(CGColorSpace *)self0 destinationTexture:(id)self1 renderContext:(id)self2
{
  v14 = objc_msgSend_colorMatchingComputePipelineStateForBiPlanarPixelBufferWithFormatType_pixelBufferYCbCrMatrix_pixelBufferColorPrimaries_pixelBufferTransferFunction_sourceColorSpace_destinationColorSpace_renderContext_(self, a2, *&type, matrix, primaries, function, space, colorSpace, context);
  v18 = objc_msgSend_resourceComputeEncoder(context, v15, v16, v17);
  v19 = sub_1AFDE323C(v14);
  objc_msgSend_setComputePipelineState_(v18, v20, v19, v21);
  objc_msgSend_setTexture_atIndex_(v18, v22, y, 0);
  objc_msgSend_setTexture_atIndex_(v18, v23, cr, 1);
  objc_msgSend_setTexture_atIndex_(v18, v24, texture, 2);

  objc_msgSend_dispatchOnTexture2D_(v18, v25, texture, v26);
}

@end