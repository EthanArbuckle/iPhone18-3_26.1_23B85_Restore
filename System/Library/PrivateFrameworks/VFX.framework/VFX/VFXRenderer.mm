@interface VFXRenderer
+ (VFXRenderer)rendererWithCommandQueue:(id)queue options:(id)options;
+ (VFXRenderer)rendererWithDevice:(id)device options:(id)options;
+ (id)remoteDecoder;
+ (id)remoteEncoder;
+ (void)logSharedResources;
- (BOOL)_enableARMode;
- (BOOL)_isNodeInsideFrustum:(id)frustum withPointOfView:(id)view viewport:;
- (BOOL)_legacyAdditiveWritesToAlpha;
- (BOOL)_needsRedrawAsap;
- (BOOL)_needsRepetitiveRedraw;
- (BOOL)_shouldDelegateARCompositing;
- (BOOL)_supportsDidPresentDelegate;
- (BOOL)additiveWritesToAlpha;
- (BOOL)autoAdjustCamera;
- (BOOL)autoenablesDefaultLighting;
- (BOOL)enableDeferredRendering;
- (BOOL)hasMissingParticlePipelineState;
- (BOOL)hasRenderableObjects;
- (BOOL)isNodeInsideFrustum:(id)frustum withPointOfView:(id)view;
- (BOOL)prepareObject:(id)object shouldAbortBlock:(id)block;
- (BOOL)renderMovieToURL:(id)l size:(CGSize)size antialiasingMode:(unint64_t)mode attributes:(id)attributes error:(id *)error;
- (BOOL)showsDebugUI;
- (CGImage)_createBackgroundColorImageWithSize:(CGSize)size;
- (CGImage)_createSnapshotWithSize:(CGSize)size error:(id *)error;
- (CGRect)currentViewport;
- (CGRect)viewport;
- (CGSize)_backingSize;
- (MTLTexture)depthTexture;
- (MTLTexture)texture;
- (NSArray)binaryArchives;
- (NSString)description;
- (UIColor)backgroundColor;
- (VFXNode)audioListener;
- (VFXRenderer)initWithCommandQueue:(id)queue;
- (_TtC3VFX8VFXScene)scene;
- (_TtC3VFX9VFXEffect)effect;
- (__n128)_currentProjectionMatrix;
- (__n128)_currentViewMatrix;
- (__n128)_projectPoint:(uint64_t)point viewport:(uint64_t)viewport;
- (double)_computeNextFrameTime;
- (double)_unprojectPoint:(__n128)point viewport:(double)viewport;
- (float32x2_t)_screenSize;
- (id)_copyPerformanceStatistics;
- (id)_defaultPOVForWorld:(id)world;
- (id)_hitTest:(CGPoint)test viewport:(CGSize)viewport options:(id)options;
- (id)_initWithDevice:(id)device commandQueue:(id)queue options:(id)options isPrivateRenderer:(BOOL)renderer privateRendererOwner:(id)owner clearsOnDraw:(BOOL)draw;
- (id)_newLayeredRenderTargetWithSize:(CGSize)size arrayLength:(unsigned int)length;
- (id)_newRenderTargetWithSize:(CGSize)size;
- (id)_nodesInsideFrustumWithPointOfView:(id)view viewport:;
- (id)_readSubdivCacheForHash:(id)hash;
- (id)encodeRemoteFrameWithBuffers:(id)buffers textures:(id)textures;
- (id)hitTest:(CGPoint)test options:(id)options;
- (id)hitTestWithSegmentFromPoint:(VFXRenderer *)self toPoint:(SEL)point options:(id)options;
- (id)legacyRenderer;
- (id)makeCompatibleRenderer;
- (id)metalLayer;
- (id)nodesInsideFrustumWithPointOfView:(id)view;
- (id)postRenderCallback;
- (id)resourceConsumer;
- (id)setupLegacyRendererWithCommandQueue:(id)queue;
- (id)snapshotImageWithSize:(CGSize)size deltaTime:(double)time;
- (id)snapshotWithSize:(CGSize)size;
- (id)snapshotWithSize:(CGSize)size deltaTime:(double)time;
- (id)statistics;
- (uint64_t)unprojectPoint:(uint64_t)point;
- (uint64_t)workingColorSpace;
- (unint64_t)antialiasingMode;
- (unint64_t)debugUIOptions;
- (void)_addGPUFrameCompletedHandler:(id)handler;
- (void)_addGPUFramePresentedHandler:(id)handler;
- (void)_addGPUFrameScheduledHandler:(id)handler;
- (void)_allowGPUBackgroundExecution;
- (void)_beginFrame;
- (void)_cfxBackgroundColorDidChange;
- (void)_clearBackBuffer;
- (void)_didPresentAtTime:(double)time;
- (void)_didRenderWorld:(id)world;
- (void)_discardPendingGPUFrameCompletedHandlers;
- (void)_discardPendingGPUFramePresentedHandlers;
- (void)_discardPendingGPUFrameScheduledHandlers;
- (void)_displayLinkStatsTack;
- (void)_displayLinkStatsTick;
- (void)_endFrame;
- (void)_endImGuiFrameAndRender;
- (void)_interfaceOrientationDidChange;
- (void)_jitterAtStep:(unint64_t)step updateMainFramebuffer:(BOOL)framebuffer redisplay:(BOOL)redisplay jitterer:(id)jitterer;
- (void)_projectPoints:(VFXRenderer *)self count:(SEL)count viewport:;
- (void)_render;
- (void)_renderWithViewport:(CGRect)viewport encoder:(id)encoder passDescriptor:(id)descriptor commandQueue:(id)queue commandBuffer:(id)buffer;
- (void)_renderWorldOrRemoteData;
- (void)_setBackingSize:(CGSize)size;
- (void)_setInterfaceOrientation:(int64_t)orientation;
- (void)_setLegacyAdditiveWritesToAlpha:(BOOL)alpha;
- (void)_startCaptureIfNeeded;
- (void)_stopCapture;
- (void)_unprojectPoints:(VFXRenderer *)self count:(SEL)count viewport:;
- (void)_updateEngineCallbacks;
- (void)_updateProbes:(id)probes progress:(id)progress completionHandler:(id)handler;
- (void)_willRenderWorld:(id)world;
- (void)_worldDidChange;
- (void)_writeSubdivCacheForHash:(id)hash dataProvider:(id)provider;
- (void)clearBackBufferWithUpdate:(id)update;
- (void)dealloc;
- (void)decodeAndEnumerateRemoteFrame:(id)frame usingBlock:(id)block;
- (void)decodeRemoteFrame:(id)frame skipDrawCalls:(BOOL)calls;
- (void)drawStatisticsIfNeeded;
- (void)encodeWithCommandBuffer:(id)buffer;
- (void)finalizeEncoding;
- (void)lock;
- (void)prepareObjects:(id)objects withCompletionHandler:(id)handler;
- (void)projectPoint:(uint64_t)point;
- (void)render;
- (void)renderContext:(id)context commandBufferDidCompleteWithError:(id)error;
- (void)renderContext:(id)context didFallbackToDefaultTextureForSource:(id)source message:(id)message;
- (void)renderToTexture:(id)texture options:(id)options;
- (void)renderWithCommandBuffer:(id)buffer viewPoints:(id)points mode:(unint64_t)mode;
- (void)renderWithTextureAttachmentProvider:(id)provider options:(id)options;
- (void)renderWithViewport:(CGRect)viewport commandBuffer:(id)buffer passDescriptor:(id)descriptor;
- (void)resolvedBackgroundColorDidChange;
- (void)setAdditiveWritesToAlpha:(BOOL)alpha;
- (void)setAntialiasingMode:(unint64_t)mode;
- (void)setAudioListener:(id)listener;
- (void)setAutoAdjustCamera:(BOOL)camera;
- (void)setAutoenablesDefaultLighting:(BOOL)lighting;
- (void)setBackgroundColor:(id)color;
- (void)setBinaryArchives:(id)archives;
- (void)setDebugOptions:(unint64_t)options;
- (void)setDebugUIOptions:(unint64_t)options;
- (void)setDelegate:(id)delegate;
- (void)setDepthTexture:(id)texture;
- (void)setEffect:(id)effect;
- (void)setEmulateRRM:(BOOL)m;
- (void)setEmulateStereo:(BOOL)stereo;
- (void)setEnableDeferredRendering:(BOOL)rendering;
- (void)setFrozen:(BOOL)frozen;
- (void)setJitteringEnabled:(BOOL)enabled;
- (void)setPointOfCulling:(id)culling;
- (void)setPointOfView:(id)view;
- (void)setPostRenderCallback:(id)callback;
- (void)setRenderGraph:(id)graph;
- (void)setRenderMode:(unint64_t)mode;
- (void)setRendererKind:(unint64_t)kind;
- (void)setRendersContinuously:(BOOL)continuously;
- (void)setScene:(id)scene;
- (void)setShowsStatistics:(BOOL)statistics;
- (void)setSideBySideStereo:(BOOL)stereo;
- (void)setTemporalAntialiasingEnabled:(BOOL)enabled;
- (void)setTexture:(id)texture;
- (void)setWorld:(id)world;
- (void)setWorld:(id)world completionHandler:(id)handler;
- (void)set_commandBufferStatusMonitor:(id)monitor;
- (void)set_drawableSafeAreaInsets:(VFXRenderer *)self;
- (void)set_enableARMode:(BOOL)mode;
- (void)set_resourceManagerMonitor:(id)monitor;
- (void)set_shouldDelegateARCompositing:(BOOL)compositing;
- (void)set_shouldForwardWorldRendererDelegationMessagesToPrivateRendererOwner:(BOOL)owner;
- (void)set_triggersEnabled:(BOOL)enabled;
- (void)set_viewport:(VFXRenderer *)self;
- (void)set_wantsWorldRendererDelegationMessages:(BOOL)messages;
- (void)setupAuthoringEnvironment;
- (void)startManipulatingPointOfView;
- (void)stopManipulatingPointOfView;
- (void)transferRenderGraphResourcesFrom:(id)from;
- (void)updateAtTime:(double)time;
- (void)updateProbes:(id)probes atTime:(double)time completionHandler:(id)handler;
@end

@implementation VFXRenderer

- (UIColor)backgroundColor
{
  legacyRenderer = self->_legacyRenderer;
  if (legacyRenderer)
  {

    return objc_msgSend_backgroundColor(legacyRenderer, a2, v2, v3);
  }

  else
  {
    v8 = self->_backgroundColor;

    return v8;
  }
}

- (uint64_t)workingColorSpace
{
  if (sub_1AF28A130())
  {
    if (qword_1ED734740 != -1)
    {
      sub_1AFDD6FB4();
    }

    v0 = &qword_1ED734748;
  }

  else
  {
    if (qword_1ED73AD70 != -1)
    {
      sub_1AFDD6FA0();
    }

    v0 = &qword_1ED73AD78;
  }

  return *v0;
}

+ (id)remoteEncoder
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = @"VFXRendererInitForRemoteEncoding";
  v9[0] = MEMORY[0x1E695E118];
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v9, &v8, 1);
  v4 = objc_msgSend_rendererWithDevice_options_(VFXRenderer, v3, 0, v2);
  objc_msgSend_setRendererKind_(v4, v5, 6, v6);
  return v4;
}

+ (id)remoteDecoder
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = @"VFXRendererInitForRemoteDecoding";
  v9[0] = MEMORY[0x1E695E118];
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v9, &v8, 1);
  v4 = objc_msgSend_rendererWithDevice_options_(VFXRenderer, v3, 0, v2);
  objc_msgSend_setRendererKind_(v4, v5, 6, v6);
  return v4;
}

- (id)encodeRemoteFrameWithBuffers:(id)buffers textures:(id)textures
{
  v6 = objc_msgSend__engineContext(self, a2, buffers, textures);
  v7 = sub_1AF1310A0(v6);
  objc_msgSend_render(self, v8, v9, v10);
  v11 = sub_1AF13099C(v6);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1AF31B044;
  v15[3] = &unk_1E7A7EE38;
  v15[4] = buffers;
  CFXGPUDeviceFetchAllNewlyCreatedBuffers(v11, v15);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1AF31B0FC;
  v14[3] = &unk_1E7A7EE60;
  v14[4] = buffers;
  CFXGPUDeviceFetchAllNewlyDestroyedBuffers(v11, v14);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1AF31B180;
  v13[3] = &unk_1E7A7EE60;
  v13[4] = buffers;
  CFXGPUDeviceFetchAllNewlyDestroyedTextures(v11, v13);
  return sub_1AF0FB884(v7);
}

- (void)decodeRemoteFrame:(id)frame skipDrawCalls:(BOOL)calls
{
  v5 = objc_msgSend__engineContext(self, a2, frame, calls);
  sub_1AF131114(v5, frame);
  v6 = sub_1AF12E2AC(v5);
  v10 = objc_msgSend_resourceManager(v6, v7, v8, v9);

  sub_1AF22E280(frame, v10);
}

- (void)decodeAndEnumerateRemoteFrame:(id)frame usingBlock:(id)block
{
  v7 = objc_opt_new();
  v11 = objc_msgSend__engineContext(self, v8, v9, v10);
  v12 = sub_1AF12E2AC(v11);
  v16 = objc_msgSend_resourceManager(v12, v13, v14, v15);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1AF31B318;
  v17[3] = &unk_1E7A7EEB0;
  v17[4] = v7;
  v17[5] = frame;
  v17[6] = v12;
  v17[7] = v16;
  v17[8] = block;
  sub_1AF22E074(frame, 0, 0, v17);
}

- (id)resourceConsumer
{
  v4 = objc_msgSend__engineContext(self, a2, v2, v3);
  v5 = sub_1AF12E2AC(v4);

  return objc_msgSend_resourceManager(v5, v6, v7, v8);
}

- (id)_initWithDevice:(id)device commandQueue:(id)queue options:(id)options isPrivateRenderer:(BOOL)renderer privateRendererOwner:(id)owner clearsOnDraw:(BOOL)draw
{
  rendererCopy = renderer;
  v105.receiver = self;
  v105.super_class = VFXRenderer;
  v14 = [(VFXRenderer *)&v105 init];
  v17 = v14;
  if (v14)
  {
    v14->_world = 0;
    v14->_viewpoints = 0;
    v14->_contentScaleFactor = 1.0;
    v14->_isSetupForRE = 0;
    v18 = objc_msgSend_objectForKeyedSubscript_(options, v15, @"kVFXRendererInitOptionForRERendering", v16);
    if (objc_msgSend_BOOLValue(v18, v19, v20, v21))
    {
      v25 = objc_msgSend_mutableCopy(options, v22, v23, v24);
      objc_msgSend_setObject_forKeyedSubscript_(v25, v26, MEMORY[0x1E695E118], @"VFXRenderingInRE");
      options = v25;
      v27 = 1;
      *(v17 + 389) = 1;
    }

    else
    {
      v27 = 0;
    }

    v28 = objc_msgSend_objectForKeyedSubscript_(options, v22, @"VFXRendererInitForRemoteEncoding", v24);
    v32 = objc_msgSend_BOOLValue(v28, v29, v30, v31);
    *(v17 + 144) = VFXCoreGetShaderCache();
    if (v32)
    {
      v33 = sub_1AF20C004(VFXMTLResourceManager, device, 1);
    }

    else
    {
      v33 = sub_1AF20C050(VFXMTLResourceManager, device);
    }

    v34 = v33;
    v35 = sub_1AFDE323C(v33);
    v36 = sub_1AF12E500(v35, options);
    *(v17 + 136) = v36;
    if (sub_1AF130D5C(v36))
    {
      v37 = 32;
    }

    else
    {
      v37 = 0;
    }

    *(v17 + 224) = *(v17 + 224) & 0xDF | v37;
    *(v17 + 32) = objc_alloc_init(VFXRecursiveLock);
    objc_msgSend__updateEngineCallbacks(v17, v38, v39, v40);
    sub_1AF12FD44(*(v17 + 136), @"frustumCulling", *MEMORY[0x1E695E4D0]);
    sub_1AF12FDD4(*(v17 + 136), draw);
    v41 = *(v17 + 136);
    if (v41)
    {
      sub_1AF12F3E0(v41, v17);
      sub_1AF12F47C(*(v17 + 136), owner);
    }

    else
    {
      v42 = sub_1AF0D5194();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF7D64();
      }
    }

    if (rendererCopy)
    {
      v43 = 4;
    }

    else
    {
      v43 = 0;
    }

    *(v17 + 81) = *(v17 + 81) & 0xFB | v43;
    *(v17 + 272) = owner;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v48 = 8;
    }

    else
    {
      v48 = 0;
    }

    *(v17 + 81) = *(v17 + 81) & 0xF7 | v48;
    if (isKindOfClass)
    {
      v49 = objc_msgSend_metalLayer(v17, v45, v46, v47);
      v53 = objc_msgSend_pixelFormat(v49, v50, v51, v52);
    }

    else
    {
      v53 = sub_1AF1F2C50(0);
    }

    *(v17 + 56) = v53;
    if ((*(v17 + 81) & 4) != 0)
    {
      v57 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v54, v55, v56);
      objc_msgSend_addObserver_selector_name_object_(v57, v58, v17, sel__UIOrientationDidChangeNotification_, *MEMORY[0x1E69DDAC0], 0);
      if ((*(v17 + 81) & 8) != 0)
      {
        v67 = objc_msgSend_window(*(v17 + 272), v59, v60, v61);
        v71 = objc_msgSend_windowScene(v67, v68, v69, v70);
        v66 = objc_msgSend_interfaceOrientation(v71, v72, v73, v74);
      }

      else
      {
        v62 = objc_msgSend_sharedApplication(MEMORY[0x1E69DC668], v59, v60, v61);
        v66 = objc_msgSend_statusBarOrientation(v62, v63, v64, v65);
      }

      sub_1AF1305E0(*(v17 + 136), v66);
    }

    *(v17 + 48) = 2;
    if (rendererCopy)
    {
      if ((byte_1ED73B338 & 1) == 0)
      {
        byte_1ED73B338 = 1;
        getpid();
        proc_disable_wakemon();
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v75 = sub_1AF0D5194();
        if (os_log_type_enabled(v75, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDF7DA0(v75, v76, v77, v78, v79, v80, v81, v82);
        }
      }

      v83 = MEMORY[0x1E696AEC0];
      v84 = objc_opt_class();
      v85 = NSStringFromClass(v84);
      v88 = objc_msgSend_stringWithFormat_(v83, v86, @"com.apple.vfx.renderingQueue.%@%p", v87, v85, *(v17 + 272));
      v91 = objc_msgSend_cStringUsingEncoding_(v88, v89, 1, v90);
      v92 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
      *(v17 + 40) = dispatch_queue_create(v91, v92);
    }

    v93 = [VFXMTLRenderContext alloc];
    *(v17 + 216) = objc_msgSend_initWithEngineContext_resourceManager_commandQueue_(v93, v94, *(v17 + 136), v34, queue);
    v98 = objc_msgSend_antialiasingMode(v17, v95, v96, v97);
    v99 = sub_1AF1F31D4(v98);
    objc_msgSend_setSampleCount_(*(v17 + 216), v100, v99, v101);
    sub_1AF12E8BC(*(v17 + 136), *(v17 + 216), v102, v103);

    sub_1AF130CFC(*(v17 + 136), v27);
  }

  return v17;
}

+ (VFXRenderer)rendererWithDevice:(id)device options:(id)options
{
  deviceCopy = device;
  if (device || (result = objc_msgSend_deviceForOptions_(VFXView, a2, options, options), (deviceCopy = result) != 0))
  {
    v8 = [self alloc];
    isPrivateRenderer_privateRendererOwner_clearsOnDraw = objc_msgSend__initWithDevice_options_isPrivateRenderer_privateRendererOwner_clearsOnDraw_(v8, v9, deviceCopy, options, 0, 0, 0);

    return isPrivateRenderer_privateRendererOwner_clearsOnDraw;
  }

  return result;
}

+ (VFXRenderer)rendererWithCommandQueue:(id)queue options:(id)options
{
  v6 = [self alloc];
  v10 = objc_msgSend_device(queue, v7, v8, v9);
  isPrivateRenderer_privateRendererOwner_clearsOnDraw = objc_msgSend__initWithDevice_commandQueue_options_isPrivateRenderer_privateRendererOwner_clearsOnDraw_(v6, v11, v10, queue, options, 0, 0, 0);

  return isPrivateRenderer_privateRendererOwner_clearsOnDraw;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v9 = objc_msgSend_world(self, v6, v7, v8);
  v13 = objc_msgSend_pointOfView(self, v10, v11, v12);
  return objc_msgSend_stringWithFormat_(v3, v14, @"<%@ %p: world = %@, pointOfView = %@>", v15, v5, self, v9, v13);
}

- (void)dealloc
{
  objc_msgSend_device(self, a2, v2, v3);
  v8 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v5, v6, v7);
  objc_msgSend_removeObserver_(v8, v9, self, v10);
  objc_storeWeak(&self->_delegate, 0);

  engineContext = self->_engineContext;
  if (engineContext)
  {
    sub_1AF130254(engineContext);
    CFRelease(self->_engineContext);
  }

  renderingQueue = self->__renderingQueue;
  if (renderingQueue)
  {
    dispatch_release(renderingQueue);
  }

  if (!self->_keepResourceManagerWhenDealloc)
  {
    sub_1AF20C174();
  }

  v13.receiver = self;
  v13.super_class = VFXRenderer;
  [(VFXRenderer *)&v13 dealloc];
}

- (void)lock
{
  prof_beginFlame("[VFXRenderer lock]", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/ObjC/VFXRenderer.mm", 855);
  objc_msgSend_lock(self->_lock, v3, v4, v5);

  prof_endFlame();
}

- (void)_clearBackBuffer
{
  objc_msgSend_lock(self, a2, v2, v3);
  v5 = sub_1AF12E8A4(self->_engineContext);
  sub_1AF270E68(v5);

  objc_msgSend_unlock(self, v6, v7, v8);
}

- (void)clearBackBufferWithUpdate:(id)update
{
  objc_msgSend_lock(self, a2, update, v3);
  objc_msgSend_setMetalDisplayLinkUpdate_(self, v6, update, v7);
  objc_msgSend__beginFrame(self, v8, v9, v10);
  objc_msgSend__clearBackBuffer(self, v11, v12, v13);
  objc_msgSend__endFrame(self, v14, v15, v16);

  objc_msgSend_unlock(self, v17, v18, v19);
}

- (float32x2_t)_screenSize
{
  v1 = &self[36];
  v2 = vld1_dup_f32(v1);
  return vdiv_f32(self[21], v2);
}

- (CGSize)_backingSize
{
  width = self->__drawableSize.width;
  height = self->__drawableSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_setBackingSize:(CGSize)size
{
  if (size.width != self->__drawableSize.width || size.height != self->__drawableSize.height)
  {
    self->__drawableSize = size;
    objc_msgSend__drawablePropertiesDidChange(self, a2, v3, v4);
  }
}

- (void)_beginFrame
{
  if (self->_renderContext)
  {
    objc_msgSend__startCaptureIfNeeded(self, a2, v2, v3);
    engineContext = self->_engineContext;
    objc_msgSend__contentsScaleFactor(self, v6, v7, v8);
    sub_1AF130850(engineContext, v9);
    if (*(self + 81))
    {
      *(self + 81) &= ~1u;
      sub_1AF12E8B4(self->_engineContext);
      sub_1AF12E8AC(self->_engineContext);
    }

    renderContext = self->_renderContext;
    v14 = objc_msgSend_metalLayer(self, v10, v11, v12);
    objc_msgSend_beginFrame_(renderContext, v15, v14, v16);
    v20 = objc_msgSend_world(self, v17, v18, v19);
    v24 = objc_msgSend_worldRef(v20, v21, v22, v23);
    if (v24)
    {
      v25 = v24;
      if (sub_1AF1CF8AC(v24))
      {
        v26 = sub_1AF1CF878(v25);
        if (objc_msgSend_showsDebugUI(self, v27, v28, v29))
        {
          objc_msgSend__contentsScaleFactor(self, v30, v31, v32);
          v41 = *v33.i32;
          v42 = vcvtq_f64_f32(vdiv_f32(COERCE_FLOAT32X2_T(sub_1AF1305C8(self->_engineContext)), vdup_lane_s32(v33, 0)));
          v37 = sub_1AF130C80(self->_engineContext, v34, v35, v36);
          if (!objc_msgSend_beginImgUIFrameWithViewportSize_backingScaleFactor_renderer_(v26, v38, v37, v39, *&v42, v41))
          {
            return;
          }

          v40 = *(self + 224) | 0x10;
        }

        else
        {
          objc_msgSend_setImGUIEnabled_(v26, v30, 0, v32);
          v40 = *(self + 224) & 0xEF;
        }

        *(self + 224) = v40;
      }
    }
  }
}

- (void)_endImGuiFrameAndRender
{
  v5 = objc_msgSend_world(self, a2, v2, v3);
  v9 = objc_msgSend_worldRef(v5, v6, v7, v8);
  if ((*(self + 224) & 0x10) != 0 && v9)
  {
    v10 = sub_1AF1CF878(v9);
    v14 = sub_1AF130C80(self->_engineContext, v11, v12, v13);
    v18 = objc_msgSend_currentCommandBuffer(self, v15, v16, v17);
    v22 = objc_msgSend_currentRenderCommandEncoder(self, v19, v20, v21);
    v26 = objc_msgSend_currentRenderPassDescriptor(self, v23, v24, v25);
    if (objc_msgSend_endImgUIFrameWithCommandBuffer_encoder_renderPassDescriptor_renderer_(v10, v27, v18, v22, v26, v14))
    {
      *(self + 224) &= ~0x10u;
    }
  }
}

- (void)_endFrame
{
  if (self->_renderContext)
  {
    v5 = objc_msgSend_world(self, a2, v2, v3);
    v9 = objc_msgSend_worldRef(v5, v6, v7, v8);
    if (v9)
    {
      if ((*(self + 224) & 0x10) != 0)
      {
        v13 = sub_1AF1CF878(v9);
        if (objc_msgSend_endImgUIFrame(v13, v14, v15, v16))
        {
          *(self + 224) &= ~0x10u;
        }
      }
    }

    if ((*&self->_selfDelegationConformance & 0x40) != 0)
    {
      v23 = sub_1AF1302C4(self->_engineContext);
      objc_msgSend__renderer_inputTimeForCurrentFrameWithTime_(self, v24, self, v25, v23);
    }

    else
    {
      if ((*&self->_privateRendererOwnerDelegationConformance & 0x40) != 0)
      {
        privateRendererOwner = self->_privateRendererOwner;
        v21 = sub_1AF1302C4(self->_engineContext);
        v22 = privateRendererOwner;
      }

      else
      {
        if ((*&self->_delegationConformance & 0x40) == 0)
        {
LABEL_16:
          objc_msgSend_endFrameWaitingUntilCompleted_status_error_(self->_renderContext, v10, 0, 0, 0);
          goto LABEL_17;
        }

        privateRendererOwner = self;
        if ((*(self + 81) & 4) != 0)
        {
          privateRendererOwner = self->_privateRendererOwner;
        }

        v18 = objc_msgSend_delegate(self, v10, v11, v12);
        v21 = sub_1AF1302C4(self->_engineContext);
        v22 = v18;
      }

      objc_msgSend__renderer_inputTimeForCurrentFrameWithTime_(v22, v19, privateRendererOwner, v20, v21);
    }

    v30 = v29;
    v31 = objc_msgSend_metalLayer(self, v26, v27, v28);
    objc_msgSend_setInputTime_(v31, v32, v33, v34, v30);
    goto LABEL_16;
  }

LABEL_17:

  objc_msgSend__stopCapture(self, a2, v2, v3);
}

- (unint64_t)antialiasingMode
{
  if (sub_1AF0D5C40(3))
  {
    return 0;
  }

  else
  {
    return self->__antialiasingMode;
  }
}

- (void)setAntialiasingMode:(unint64_t)mode
{
  if (self->__antialiasingMode != mode)
  {
    self->__antialiasingMode = mode;
    objc_msgSend__drawablePropertiesDidChange(self, a2, mode, v3);
    v9 = objc_msgSend_antialiasingMode(self, v6, v7, v8);
    v11 = sub_1AF1F31D4(v9);
    renderContext = self->_renderContext;
    if (renderContext)
    {
      objc_msgSend_setSampleCount_(renderContext, v10, v11, v12);
    }

    engineContext = self->_engineContext;

    sub_1AF12E8AC(engineContext);
  }
}

- (__n128)_currentProjectionMatrix
{
  v1 = sub_1AF13050C(*(self + 136), 0);
  v2 = &VFXMatrix4Identity;
  if (v1)
  {
    v2 = v1;
  }

  return *v2;
}

- (__n128)_currentViewMatrix
{
  v1 = sub_1AF13050C(*(self + 136), 1);
  v2 = &VFXMatrix4Identity;
  if (v1)
  {
    v2 = v1;
  }

  return *v2;
}

- (BOOL)autoenablesDefaultLighting
{
  objc_msgSend_lock(self, a2, v2, v3);
  v8 = objc_msgSend__engineContext(self, v5, v6, v7);
  if (v8)
  {
    v12 = sub_1AF12E754(v8, @"defaultLight") == *MEMORY[0x1E695E4D0];
  }

  else
  {
    v13 = sub_1AF0D5194();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF7E18();
    }

    v12 = 0;
  }

  objc_msgSend_unlock(self, v9, v10, v11);
  return v12;
}

- (void)setAutoenablesDefaultLighting:(BOOL)lighting
{
  lightingCopy = lighting;
  objc_msgSend_lock(self, a2, lighting, v3);
  v9 = objc_msgSend__engineContext(self, v6, v7, v8);
  if (v9)
  {
    v10 = v9;
    v11 = sub_1AF12DDCC(v9);
    if (v11)
    {
      v12 = v11;
      sub_1AF1CEA20(v11);
      v13 = MEMORY[0x1E695E4C0];
      if (lightingCopy)
      {
        v13 = MEMORY[0x1E695E4D0];
      }

      sub_1AF12FD44(v10, @"defaultLight", *v13);
      sub_1AF1CEA9C(v12);
    }

    else
    {
      v18 = MEMORY[0x1E695E4C0];
      if (lightingCopy)
      {
        v18 = MEMORY[0x1E695E4D0];
      }

      sub_1AF12FD44(v10, @"defaultLight", *v18);
    }
  }

  else
  {
    v17 = sub_1AF0D5194();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF7E54();
    }
  }

  objc_msgSend_unlock(self, v14, v15, v16);
}

- (void)setPointOfView:(id)view
{
  v381 = *MEMORY[0x1E69E9840];
  if (self->_pointOfView != view)
  {
    viewCopy = view;
    self->_pointOfViewWasSet = 1;
    if (objc_msgSend_isPresentationObject(view, a2, view, v3))
    {
      v9 = sub_1AF0D5194();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDF7E90(v9, v6, v7, v8, v10, v11, v12, v13);
      }
    }

    v14 = objc_msgSend_pointOfView(self, v6, v7, v8);
    v18 = objc_msgSend_presentationNode(v14, v15, v16, v17);
    v19 = self->_pointOfView;
    self->_pointOfView = viewCopy;
    objc_msgSend_animationDuration(VFXTransaction, v20, v21, v22);
    v24 = v23;
    v28 = objc_msgSend_worldRef(self->_world, v25, v26, v27);
    v32 = objc_msgSend_world(self, v29, v30, v31);
    v36 = objc_msgSend_clock(v32, v33, v34, v35);
    isPaused = objc_msgSend_isPaused(v36, v37, v38, v39);
    if (objc_msgSend_immediateMode(VFXTransaction, v41, v42, v43))
    {
      v47 = 0;
    }

    else
    {
      v47 = (v24 > 0.0) & ~isPaused;
      objc_msgSend_begin(VFXTransaction, v44, v45, v46);
      objc_msgSend_setAnimationDuration_(VFXTransaction, v48, v49, v50, 0.0);
      if (!v18)
      {
        v47 = 0;
      }
    }

    world = self->_world;
    v375[0] = MEMORY[0x1E69E9820];
    v375[1] = 3221225472;
    v375[2] = sub_1AF31DA34;
    v375[3] = &unk_1E7A7E2E8;
    v375[5] = self;
    v375[6] = v28;
    v375[4] = viewCopy;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v44, world, v375);
    if (!v47)
    {
      goto LABEL_79;
    }

    v368 = objc_msgSend_animationTimingFunction(VFXTransaction, v52, v53, v54);
    if (!v368)
    {
      v368 = sub_1AF291040(0, v55, v56, v57);
    }

    if (objc_msgSend_parentNode(viewCopy, v55, v56, v57))
    {
      v61 = objc_msgSend_parentNode(viewCopy, v58, v59, v60);
      v65 = objc_msgSend_presentationNode(v61, v62, v63, v64);
      objc_msgSend_convertTransform_fromNode_(v65, v66, v18, v67, *&VFXMatrix4Identity, 0.0078125, 0.0, 0.0);
    }

    else
    {
      objc_msgSend_worldTransform(v18, v58, v59, v60);
    }

    v79 = objc_msgSend_presentationNode(viewCopy, v68, v69, v70, v73, v74, v71, v72, v77, v78, v75, v76);
    objc_msgSend_transform(v79, v80, v81, v82);
    v383 = __invert_f4(v382);
    v85 = 0;
    *&v376.a = v362;
    *&v376.c = v360;
    *&v376.tx = v366;
    v377 = v364;
    do
    {
      *(&v378.a + v85) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v383.columns[0], COERCE_FLOAT(*(&v376.a + v85))), v383.columns[1], *(&v376.a + v85), 1), v383.columns[2], *(&v376.a + v85), 2), v383.columns[3], *(&v376.a + v85), 3);
      v85 += 16;
    }

    while (v85 != 64);
    tx = v378.tx;
    v367 = *&v379;
    a = v378.a;
    c = v378.c;
    v86 = objc_msgSend_animationWithKeyPath_(MEMORY[0x1E6979318], v83, @"transform", v84);
    objc_msgSend_setDuration_(v86, v87, v88, v89, v24);
    objc_msgSend_setTimingFunction_(v86, v90, v368, v91);
    objc_msgSend_setAdditive_(v86, v92, 1, v93);
    v97 = objc_msgSend_valueWithVFXMatrix4_(MEMORY[0x1E696B098], v94, v95, v96, a, c, tx, v367);
    objc_msgSend_setFromValue_(v86, v98, v97, v99);
    v103 = objc_msgSend_valueWithVFXMatrix4_(MEMORY[0x1E696B098], v100, v101, v102, *&VFXMatrix4Identity, 0.0078125, 0.0, 0.0);
    objc_msgSend_setToValue_(v86, v104, v103, v105);
    objc_msgSend_addAnimation_forKey_(viewCopy, v106, v86, 0);
    v110 = objc_msgSend_camera(v18, v107, v108, v109);
    v114 = objc_msgSend_presentationNode(viewCopy, v111, v112, v113);
    v118 = objc_msgSend_camera(v114, v115, v116, v117);
    if (objc_msgSend_hasCustomProjectionTransform(v110, v119, v120, v121) & 1) != 0 || (objc_msgSend_hasCustomProjectionTransform(v118, v122, v123, v124))
    {
LABEL_63:
      v371 = 0u;
      v372 = 0u;
      v369 = 0u;
      v370 = 0u;
      v308 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1F25D4750, v122, &v369, v380, 16);
      if (v308)
      {
        v309 = v308;
        v310 = *v370;
        do
        {
          for (i = 0; i != v309; ++i)
          {
            if (*v370 != v310)
            {
              objc_enumerationMutation(&unk_1F25D4750);
            }

            v312 = *(*(&v369 + 1) + 8 * i);
            v313 = objc_msgSend_valueForKeyPath_(v110, v52, v312, v54);
            v316 = objc_msgSend_valueForKeyPath_(v110, v314, v312, v315);
            if (v316)
            {
              v317 = v313 == 0;
            }

            else
            {
              v317 = 1;
            }

            if (!v317)
            {
              v318 = v316;
              if ((objc_msgSend_isEqual_(v313, v52, v316, v54) & 1) == 0)
              {
                v319 = viewCopy;
                v320 = MEMORY[0x1E6979318];
                v321 = objc_msgSend_stringByAppendingString_(@"camera.", v52, v312, v54);
                v324 = objc_msgSend_animationWithKeyPath_(v320, v322, v321, v323);
                objc_msgSend_setDuration_(v324, v325, v326, v327, v24);
                objc_msgSend_setTimingFunction_(v324, v328, v368, v329);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v333 = MEMORY[0x1E696AD98];
                  objc_msgSend_doubleValue(v313, v330, v331, v332);
                  v335 = v334;
                  objc_msgSend_doubleValue(v318, v336, v337, v338);
                  v343 = objc_msgSend_numberWithDouble_(v333, v340, v341, v342, v335 - v339);
                  objc_msgSend_setFromValue_(v324, v344, v343, v345);
                  v349 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v346, v347, v348, 0.0);
                  objc_msgSend_setToValue_(v324, v350, v349, v351);
                  objc_msgSend_setAdditive_(v324, v352, 1, v353);
                }

                else
                {
                  objc_msgSend_setFromValue_(v324, v330, v313, v332);
                  objc_msgSend_setToValue_(v324, v355, v318, v356);
                }

                viewCopy = v319;
                objc_msgSend_addAnimation_forKey_(v319, v354, v324, 0);
              }
            }
          }

          v309 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1F25D4750, v52, &v369, v380, 16);
        }

        while (v309);
      }

LABEL_79:
      if ((objc_msgSend_immediateMode(VFXTransaction, v52, v53, v54) & 1) == 0)
      {
        objc_msgSend_commit(VFXTransaction, v357, v358, v359);
      }

      return;
    }

    height = self->__drawableSize.height;
    if (height == 0.0)
    {
      v128 = 1.0;
    }

    else
    {
      v128 = self->__drawableSize.width / height;
    }

    objc_msgSend_fieldOfView(v118, v122, v125, v126);
    v130 = v129;
    v134 = objc_msgSend_fillMode(v118, v131, v132, v133);
    if (v134 > 1)
    {
      if (v134 != 2)
      {
LABEL_27:
        v138 = 1;
        goto LABEL_30;
      }

      v138 = 0;
    }

    else
    {
      if (v134)
      {
        if (v134 == 1)
        {
          v138 = v128 > 1.0;
          goto LABEL_30;
        }

        goto LABEL_27;
      }

      v138 = v128 < 1.0;
    }

LABEL_30:
    v139 = objc_msgSend_fillMode(v110, v135, v136, v137);
    if (v139)
    {
      if (v139 != 1)
      {
        if (v139 == 2)
        {
          objc_msgSend_fieldOfView(v110, v140, v141, v142);
          v147 = v146;
          if ((v138 & 1) == 0)
          {
            goto LABEL_46;
          }
        }

        else
        {
          objc_msgSend_fieldOfView(v110, v140, v141, v142);
          v147 = v150;
          if (v138)
          {
LABEL_46:
            if (v147 != v130)
            {
              v152 = objc_msgSend_animationWithKeyPath_(MEMORY[0x1E6979318], v143, @"camera.fieldOfView", v145);
              objc_msgSend_setDuration_(v152, v153, v154, v155, v24);
              objc_msgSend_setTimingFunction_(v152, v156, v368, v157);
              v161 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v158, v159, v160, (v147 - v130));
              objc_msgSend_setFromValue_(v152, v162, v161, v163);
              v167 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v164, v165, v166, 0.0);
              objc_msgSend_setToValue_(v152, v168, v167, v169);
              objc_msgSend_setAdditive_(v152, v170, 1, v171);
              objc_msgSend_addAnimation_forKey_(viewCopy, v172, v152, 0);
            }

            if (objc_msgSend_usesOrthographicProjection(v110, v143, v144, v145))
            {
              if (objc_msgSend_usesOrthographicProjection(v118, v173, v174, v175))
              {
                objc_msgSend_orthographicScale(v110, v173, v174, v175);
                v177 = v176;
                objc_msgSend_orthographicScale(v118, v178, v179, v180);
                if (v177 != v181)
                {
                  v182 = objc_msgSend_animationWithKeyPath_(MEMORY[0x1E6979318], v173, @"camera.orthographicScale", v175);
                  objc_msgSend_setDuration_(v182, v183, v184, v185, v24);
                  objc_msgSend_setTimingFunction_(v182, v186, v368, v187);
                  v188 = MEMORY[0x1E696AD98];
                  objc_msgSend_orthographicScale(v110, v189, v190, v191);
                  v193 = v192;
                  objc_msgSend_orthographicScale(v118, v194, v195, v196);
                  *&v198 = v193 - v197;
                  v202 = objc_msgSend_numberWithFloat_(v188, v199, v200, v201, v198);
                  objc_msgSend_setFromValue_(v182, v203, v202, v204);
                  v208 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v205, v206, v207, 0.0);
                  objc_msgSend_setToValue_(v182, v209, v208, v210);
                  objc_msgSend_setAdditive_(v182, v211, 1, v212);
                  objc_msgSend_addAnimation_forKey_(viewCopy, v213, v182, 0);
                }
              }
            }

            objc_msgSend_filmOffset(v110, v173, v174, v175);
            v215 = v214;
            objc_msgSend_filmOffset(v118, v216, v217, v218);
            v223 = vmvn_s8(vceq_f32(v215, v222));
            if ((vpmax_u32(v223, v223).u32[0] & 0x80000000) != 0)
            {
              objc_msgSend_filmOffset(v110, v219, v220, v221);
              v225 = v224;
              objc_msgSend_filmOffset(v118, v226, v227, v228);
              v230 = vsub_f32(v225, v229);
              v233 = objc_msgSend_animationWithKeyPath_(MEMORY[0x1E6979318], v231, @"camera.filmOffset", v232);
              objc_msgSend_setDuration_(v233, v234, v235, v236, v24);
              objc_msgSend_setTimingFunction_(v233, v237, v368, v238);
              v242 = objc_msgSend_VFX_valueWithCGPoint_(MEMORY[0x1E696B098], v239, v240, v241, vcvtq_f64_f32(v230));
              objc_msgSend_setFromValue_(v233, v243, v242, v244);
              v248 = objc_msgSend_VFX_valueWithCGPoint_(MEMORY[0x1E696AD98], v245, v246, v247, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8));
              objc_msgSend_setToValue_(v233, v249, v248, v250);
              objc_msgSend_setAdditive_(v233, v251, 1, v252);
              objc_msgSend_addAnimation_forKey_(viewCopy, v253, v233, 0);
            }

            v254 = 0uLL;
            memset(&v378, 0, sizeof(v378));
            if (v110)
            {
              objc_msgSend_postProjectionTransform(v110, v219, v220, v221);
              v254 = 0uLL;
            }

            *&v376.c = v254;
            *&v376.tx = v254;
            *&v376.a = v254;
            if (v118)
            {
              objc_msgSend_postProjectionTransform(v118, v219, v220, v221);
            }

            t1 = v378;
            t2 = v376;
            if (!CGAffineTransformEqualToTransform(&t1, &t2))
            {
              v256 = vcvt_f32_f64(*&v378.tx);
              v257 = vcvt_f32_f64(*&v376.tx);
              v258 = vmvn_s8(vceq_f32(v256, v257));
              if ((vpmax_u32(v258, v258).u32[0] & 0x80000000) != 0)
              {
                v259 = vsub_f32(v256, v257);
                v260 = objc_msgSend_animationWithKeyPath_(MEMORY[0x1E6979318], v122, @"camera.postProjectionTransformTranslation", v255);
                objc_msgSend_setDuration_(v260, v261, v262, v263, v24);
                objc_msgSend_setTimingFunction_(v260, v264, v368, v265);
                v269 = objc_msgSend_VFX_valueWithCGPoint_(MEMORY[0x1E696B098], v266, v267, v268, vcvtq_f64_f32(v259));
                objc_msgSend_setFromValue_(v260, v270, v269, v271);
                v275 = objc_msgSend_VFX_valueWithCGPoint_(MEMORY[0x1E696AD98], v272, v273, v274, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8));
                objc_msgSend_setToValue_(v260, v276, v275, v277);
                objc_msgSend_setAdditive_(v260, v278, 1, v279);
                objc_msgSend_addAnimation_forKey_(viewCopy, v280, v260, 0);
              }

              v281.f64[0] = v378.a;
              v281.f64[1] = v378.d;
              v282.f64[0] = v376.a;
              v282.f64[1] = v376.d;
              v283 = vcvt_f32_f64(v281);
              v284 = vcvt_f32_f64(v282);
              v285 = vmvn_s8(vceq_f32(v283, v284));
              if ((vpmax_u32(v285, v285).u32[0] & 0x80000000) != 0)
              {
                v286 = vsub_f32(v283, v284);
                v287 = objc_msgSend_animationWithKeyPath_(MEMORY[0x1E6979318], v122, @"camera.postProjectionTransformScale", v255);
                objc_msgSend_setDuration_(v287, v288, v289, v290, v24);
                objc_msgSend_setTimingFunction_(v287, v291, v368, v292);
                v296 = objc_msgSend_VFX_valueWithCGPoint_(MEMORY[0x1E696B098], v293, v294, v295, vcvtq_f64_f32(v286));
                objc_msgSend_setFromValue_(v287, v297, v296, v298);
                v302 = objc_msgSend_VFX_valueWithCGPoint_(MEMORY[0x1E696AD98], v299, v300, v301, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8));
                objc_msgSend_setToValue_(v287, v303, v302, v304);
                objc_msgSend_setAdditive_(v287, v305, 1, v306);
                objc_msgSend_addAnimation_forKey_(viewCopy, v307, v287, 0);
              }
            }

            goto LABEL_63;
          }
        }

LABEL_40:
        if (objc_msgSend_fillMode(v118, v143, v144, v145) != 4 && objc_msgSend_fillMode(v110, v143, v144, v145) != 4)
        {
          if (v138)
          {
            v151 = sub_1AF31DB90(v147, v128);
          }

          else
          {
            v151 = sub_1AF31DC00(v147, v128);
          }

          v147 = v151;
        }

        goto LABEL_46;
      }

      v148 = v128 > 1.0;
    }

    else
    {
      v148 = v128 < 1.0;
    }

    objc_msgSend_fieldOfView(v110, v140, v141, v142);
    v147 = v149;
    if (v138 == v148)
    {
      goto LABEL_46;
    }

    goto LABEL_40;
  }
}

- (void)setPointOfCulling:(id)culling
{
  pointOfCulling = self->_pointOfCulling;
  if (pointOfCulling != culling)
  {
    v6 = pointOfCulling;
    self->_pointOfCulling = culling;
    world = self->_world;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1AF31DD10;
    v9[3] = &unk_1E7A7E220;
    v9[4] = culling;
    v9[5] = self;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v8, world, v9);
  }
}

- (void)_projectPoints:(VFXRenderer *)self count:(SEL)count viewport:
{
  v27 = v4;
  v5 = v3;
  v6 = v2;
  v8 = objc_msgSend__engineContext(self, count, v2, v3);
  if (v8)
  {
    v9 = sub_1AF12F10C(v8);
    if (v9)
    {
      v13 = v9;
      v14 = objc_msgSend_world(self, v10, v11, v12);
      v18 = objc_msgSend_worldRef(v14, v15, v16, v17);
      sub_1AF1CEA20(v18);
      for (; v5; --v5)
      {
        v28 = *v6;
        v22 = objc_msgSend_world(self, v19, v20, v21);
        v26 = objc_msgSend_worldRef(v22, v23, v24, v25);
        if (sub_1AF281920(&v28, 1, v13, v26, &v28, v27))
        {
          *v6 = v28;
        }

        ++v6;
      }

      sub_1AF1CEA9C(v18);
    }
  }
}

- (__n128)_projectPoint:(uint64_t)point viewport:(uint64_t)viewport
{
  v7 = objc_msgSend__engineContext(self, a2, point, viewport);
  if (v7)
  {
    v8 = sub_1AF12F10C(v7);
    if (v8)
    {
      v12 = v8;
      v21 = a5;
      v13 = objc_msgSend_world(self, v9, v10, v11);
      v17 = objc_msgSend_worldRef(v13, v14, v15, v16);
      sub_1AF1CEA20(v17);
      LOBYTE(v12) = sub_1AF281920(&v21, 1, v12, v17, &v21, a6);
      sub_1AF1CEA9C(v17);
      if (v12)
      {
        return v21;
      }
    }
  }

  return a5;
}

- (void)_unprojectPoints:(VFXRenderer *)self count:(SEL)count viewport:
{
  v19 = v4;
  v5 = v3;
  v6 = v2;
  v8 = objc_msgSend__engineContext(self, count, v2, v3);
  if (v8)
  {
    v9 = sub_1AF12F10C(v8);
    if (v9)
    {
      v13 = v9;
      v14 = objc_msgSend_world(self, v10, v11, v12);
      v18 = objc_msgSend_worldRef(v14, v15, v16, v17);
      sub_1AF1CEA20(v18);
      for (; v5; --v5)
      {
        v20 = *v6;
        if (sub_1AF281AF8(&v20, 1, v13, v18, &v20, v19))
        {
          *v6 = v20;
        }

        ++v6;
      }

      sub_1AF1CEA9C(v18);
    }
  }
}

- (double)_unprojectPoint:(__n128)point viewport:(double)viewport
{
  pointCopy = point;
  objc_msgSend__unprojectPoints_count_viewport_(self, a2, &pointCopy, 1, viewport);
  return pointCopy.n128_f64[0];
}

- (void)projectPoint:(uint64_t)point
{
  v5.f64[0] = *(self + 24);
  if (v5.f64[0] != 0.0)
  {
    v5.f64[1] = *(self + 25);
    return objc_msgSend__projectPoint_viewport_(self, a2, point, a4, a5, *vcvt_hight_f32_f64(0, v5).i64);
  }

  return self;
}

- (uint64_t)unprojectPoint:(uint64_t)point
{
  if (*(result + 192) != 0.0)
  {
    return MEMORY[0x1EEE66B58](result, sel__unprojectPoint_viewport_, point, a4);
  }

  return result;
}

- (BOOL)_supportsDidPresentDelegate
{
  if ((*&self->_delegationConformance & 0x400) != 0 || (*&self->_selfDelegationConformance & 0x400) != 0)
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    return (*&self->_privateRendererOwnerDelegationConformance >> 10) & 1;
  }

  return v2;
}

- (void)_didPresentAtTime:(double)time
{
  if ((*&self->_delegationConformance & 0x400) != 0)
  {
    privateRendererOwner = self;
    if ((*(self + 81) & 4) != 0)
    {
      privateRendererOwner = self->_privateRendererOwner;
    }

    v8 = objc_msgSend_delegate(self, a2, v3, v4);
    v12 = objc_msgSend_world(self, v9, v10, v11);
    objc_msgSend__renderer_didPresentWorld_atTime_(v8, v13, privateRendererOwner, v12, time);
    if ((*&self->_selfDelegationConformance & 0x400) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((*&self->_selfDelegationConformance & 0x400) == 0)
  {
    if ((*&self->_privateRendererOwnerDelegationConformance & 0x400) == 0)
    {
      return;
    }

    goto LABEL_9;
  }

  v14 = objc_msgSend_world(self, a2, v3, v4);
  objc_msgSend__renderer_didPresentWorld_atTime_(self, v15, self, v14, time);
LABEL_9:
  if ((*&self->_privateRendererOwnerDelegationConformance & 0x400) != 0)
  {
    v16 = self->_privateRendererOwner;
    v18 = objc_msgSend_world(self, a2, v3, v4);

    objc_msgSend__renderer_didPresentWorld_atTime_(v16, v17, v16, v18, time);
  }
}

- (void)_didRenderWorld:(id)world
{
  if ((*&self->_delegationConformance & 0x20) != 0 || (*&self->_selfDelegationConformance & 0x20) != 0 || (*&self->_privateRendererOwnerDelegationConformance & 0x20) != 0)
  {
    objc_msgSend_setImmediateMode_(VFXTransaction, a2, 1, v3);
    v9 = objc_msgSend_worldRef(world, v6, v7, v8);
    objc_msgSend_setImmediateModeRestrictedContext_(VFXTransaction, v10, v9, v11);
    v12 = sub_1AF12DE14(self->_engineContext);
    v13 = CACurrentMediaTime();
    prof_beginFlame("Did render delegate", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/ObjC/VFXRenderer.mm", 1639);
    v14 = sub_1AF12DE5C(self->_engineContext);
    v15 = sub_1AF0D5194();
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v19 = v15;
      if (os_signpost_enabled(v15))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v14, "Delegate (didRender)", &unk_1AFF70A1D, buf, 2u);
      }
    }

    if ((*&self->_delegationConformance & 0x20) != 0)
    {
      privateRendererOwner = self;
      if ((*(self + 81) & 4) != 0)
      {
        privateRendererOwner = self->_privateRendererOwner;
      }

      v21 = objc_msgSend_delegate(self, v16, v17, v18);
      objc_msgSend_renderer_didRenderWorld_atTime_(v21, v22, privateRendererOwner, world, self->_time);
    }

    if ((*&self->_selfDelegationConformance & 0x20) != 0)
    {
      objc_msgSend__renderer_didRenderWorld_atTime_(self, v16, self, world, self->_time);
    }

    if ((*&self->_privateRendererOwnerDelegationConformance & 0x20) != 0)
    {
      objc_msgSend__renderer_didRenderWorld_atTime_(self->_privateRendererOwner, v16, self->_privateRendererOwner, world, self->_time);
    }

    v23 = sub_1AF0D5194();
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v24 = v23;
      if (os_signpost_enabled(v23))
      {
        *v29 = 0;
        _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v24, OS_SIGNPOST_INTERVAL_END, v14, "Delegate (didRender)", &unk_1AFF70A1D, v29, 2u);
      }
    }

    *(v12 + 168) = *(v12 + 168) + CACurrentMediaTime() - v13;
    prof_endFlame();
    objc_msgSend_setImmediateModeRestrictedContext_(VFXTransaction, v25, 0, v26);
    objc_msgSend_setImmediateMode_(VFXTransaction, v27, 0, v28);
  }
}

- (void)_willRenderWorld:(id)world
{
  if ((*&self->_delegationConformance & 0x10) != 0 || (*&self->_selfDelegationConformance & 0x10) != 0 || (*&self->_privateRendererOwnerDelegationConformance & 0x10) != 0)
  {
    objc_msgSend_setImmediateMode_(VFXTransaction, a2, 1, v3);
    v9 = objc_msgSend_worldRef(world, v6, v7, v8);
    objc_msgSend_setImmediateModeRestrictedContext_(VFXTransaction, v10, v9, v11);
    v12 = sub_1AF12DE14(self->_engineContext);
    v13 = CACurrentMediaTime();
    prof_beginFlame("will render delegate", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/ObjC/VFXRenderer.mm", 1669);
    v14 = sub_1AF12DE5C(self->_engineContext);
    v15 = sub_1AF0D5194();
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v19 = v15;
      if (os_signpost_enabled(v15))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v14, "Delegate (willRender)", &unk_1AFF70A1D, buf, 2u);
      }
    }

    time = self->_time;
    if ((*&self->_privateRendererOwnerDelegationConformance & 0x10) != 0)
    {
      objc_msgSend__renderer_willRenderWorld_atTime_(self->_privateRendererOwner, v16, self->_privateRendererOwner, world, self->_time);
    }

    if ((*&self->_selfDelegationConformance & 0x10) != 0)
    {
      objc_msgSend__renderer_willRenderWorld_atTime_(self, v16, self, world, time);
    }

    if ((*&self->_delegationConformance & 0x10) != 0)
    {
      privateRendererOwner = self;
      if ((*(self + 81) & 4) != 0)
      {
        privateRendererOwner = self->_privateRendererOwner;
      }

      v22 = objc_msgSend_delegate(self, v16, v17, v18);
      objc_msgSend_renderer_willRenderWorld_atTime_(v22, v23, privateRendererOwner, world, time);
    }

    v24 = sub_1AF0D5194();
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v25 = v24;
      if (os_signpost_enabled(v24))
      {
        *v30 = 0;
        _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v25, OS_SIGNPOST_INTERVAL_END, v14, "Delegate (willRender)", &unk_1AFF70A1D, v30, 2u);
      }
    }

    *(v12 + 168) = *(v12 + 168) + CACurrentMediaTime() - v13;
    prof_endFlame();
    objc_msgSend_setImmediateModeRestrictedContext_(VFXTransaction, v26, 0, v27);
    objc_msgSend_setImmediateMode_(VFXTransaction, v28, 0, v29);
  }
}

- (id)_readSubdivCacheForHash:(id)hash
{
  if (((*&self->_privateRendererOwnerDelegationConformance & 0x80) == 0 || (result = objc_msgSend__renderer_subdivDataForHash_(self->_privateRendererOwner, a2, self->_privateRendererOwner, hash)) == 0) && ((*&self->_selfDelegationConformance & 0x80) == 0 || (result = objc_msgSend__renderer_subdivDataForHash_(self, a2, self, hash)) == 0))
  {
    if ((*&self->_delegationConformance & 0x80) == 0)
    {
      return 0;
    }

    privateRendererOwner = self;
    if ((*(self + 81) & 4) != 0)
    {
      privateRendererOwner = self->_privateRendererOwner;
    }

    v8 = objc_msgSend_delegate(self, a2, hash, v3);
    result = objc_msgSend__renderer_subdivDataForHash_(v8, v9, privateRendererOwner, hash);
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

- (void)_writeSubdivCacheForHash:(id)hash dataProvider:(id)provider
{
  if ((*&self->_privateRendererOwnerDelegationConformance & 0x100) != 0)
  {
    objc_msgSend__renderer_didBuildSubdivDataForHash_dataProvider_(self->_privateRendererOwner, a2, self->_privateRendererOwner, hash, provider);
  }

  if ((*&self->_selfDelegationConformance & 0x100) != 0)
  {
    objc_msgSend__renderer_didBuildSubdivDataForHash_dataProvider_(self, a2, self, hash, provider);
  }

  if ((*&self->_delegationConformance & 0x100) != 0)
  {
    privateRendererOwner = self;
    if ((*(self + 81) & 4) != 0)
    {
      privateRendererOwner = self->_privateRendererOwner;
    }

    v8 = objc_msgSend_delegate(self, a2, hash, provider);

    objc_msgSend__renderer_didBuildSubdivDataForHash_dataProvider_(v8, v9, privateRendererOwner, hash, provider);
  }
}

- (void)setAutoAdjustCamera:(BOOL)camera
{
  cameraCopy = camera;
  v5 = objc_msgSend__engineContext(self, a2, camera, v3);
  if (v5)
  {

    sub_1AF12FE28(v5, cameraCopy);
  }
}

- (BOOL)autoAdjustCamera
{
  v4 = objc_msgSend__engineContext(self, a2, v2, v3);
  if (v4)
  {
    LOBYTE(v4) = sub_1AF12FE84(v4) != 0;
  }

  return v4;
}

- (id)_defaultPOVForWorld:(id)world
{
  result = objc_msgSend_defaultPointOfView(world, a2, world, v3);
  if (!result)
  {
    v9 = objc_msgSend_rootNode(world, v6, v7, v8);
    v12 = objc_msgSend_childNodesPassingTest_(v9, v10, &unk_1F24EC268, v11);
    result = objc_msgSend_count(v12, v13, v14, v15);
    if (result)
    {

      return objc_msgSend_objectAtIndex_(v12, v16, 0, v17);
    }
  }

  return result;
}

- (void)_worldDidChange
{
  world = self->_world;
  if (world)
  {
    if (!self->_pointOfViewWasSet || (v5 = objc_msgSend_world(self->_pointOfView, a2, world, v2), world = self->_world, v5 != world))
    {
      v7 = objc_msgSend__defaultPOVForWorld_(self, a2, world, v2);
      if ((*(self + 81) & 4) != 0)
      {
        objc_msgSend_setPointOfView_(self->_privateRendererOwner, v6, v7, v8);
      }

      else
      {
        objc_msgSend_setPointOfView_(self, v6, v7, v8);
      }

      self->_pointOfViewWasSet = 0;
    }
  }
}

- (void)setWorld:(id)world completionHandler:(id)handler
{
  objc_msgSend_lock(self, a2, world, handler);

  self->_world = world;
  sub_1AF12EA28(self->_engineContext, 0);
  engineContext = self->_engineContext;
  v11 = objc_msgSend_worldRef(self->_world, v8, v9, v10);
  sub_1AF12FECC(engineContext, v11);
  v15 = objc_msgSend_defaultRenderGraph(world, v12, v13, v14);
  objc_msgSend_setRenderGraph_(self, v16, v15, v17);
  objc_msgSend__worldDidChange(self, v18, v19, v20);
  if (handler)
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = sub_1AF31EA1C;
    v26[3] = &unk_1E7A7EEF8;
    v26[4] = handler;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v21, 0, v26);
  }

  v24 = self->_engineContext;
  if (v24)
  {
    v25 = sub_1AF12EE9C(v24, 0);
    if (v25)
    {
      sub_1AF0FCE5C(v25, world);
    }
  }

  objc_msgSend_unlock(self, v21, v22, v23);
}

- (void)setWorld:(id)world
{
  if (self->_world != world)
  {
    objc_msgSend_lock(self, a2, world, v3);

    worldCopy = world;
    self->_world = worldCopy;
    engineContext = self->_engineContext;
    if (engineContext)
    {
      v12 = objc_msgSend_worldRef(worldCopy, v8, v9, v10);
      sub_1AF12FECC(engineContext, v12);
    }

    v13 = objc_msgSend_defaultRenderGraph(world, v8, v9, v10);
    objc_msgSend_setRenderGraph_(self, v14, v13, v15);
    objc_msgSend__worldDidChange(self, v16, v17, v18);

    objc_msgSend_unlock(self, v19, v20, v21);
  }
}

- (void)setBackgroundColor:(id)color
{
  legacyRenderer = self->_legacyRenderer;
  if (legacyRenderer)
  {

    objc_msgSend_setBackgroundColor_(legacyRenderer, a2, color, v3);
  }

  else
  {
    backgroundColor = self->_backgroundColor;
    if (backgroundColor != color)
    {

      colorCopy = color;
      self->_backgroundColor = colorCopy;
      v12.i64[0] = objc_msgSend_vfx_CFXColorIgnoringColorSpace_success_(colorCopy, v9, 0, 0);
      v12.i64[1] = v13;
      v14 = vmulq_f32(vdupq_n_s32(HIDWORD(v13)), v12);
      v14.var0.var0[3] = *(&v13 + 1);
      self->_cfxBackgroundColor = v14;

      MEMORY[0x1EEE66B58](self, sel__cfxBackgroundColorDidChange, v10, v11);
    }
  }
}

- (void)_cfxBackgroundColorDidChange
{
  v5 = objc_msgSend__engineContext(self, a2, v2, v3);
  if (!v5)
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2B48(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  sub_1AF1303B0(v5, *self->_cfxBackgroundColor.var0.var0, *&self->_cfxBackgroundColor.var0.var1.var2);
}

- (void)resolvedBackgroundColorDidChange
{
  v5.i64[0] = objc_msgSend_vfx_CFXColorIgnoringColorSpace_success_(self->_backgroundColor, a2, 0, 0);
  v5.i64[1] = v6;
  v7 = vmulq_f32(vdupq_n_s32(HIDWORD(v6)), v5);
  v7.var0.var0[3] = *(&v6 + 1);
  self->_cfxBackgroundColor = v7;

  MEMORY[0x1EEE66B58](self, sel__cfxBackgroundColorDidChange, v3, v4);
}

- (id)metalLayer
{
  if ((*(self + 81) & 8) != 0)
  {
    return objc_msgSend_vfx_backingLayer(self->_privateRendererOwner, a2, v2, v3);
  }

  else
  {
    return 0;
  }
}

- (void)_updateEngineCallbacks
{
  engineContext = self->_engineContext;
  if (engineContext)
  {
    v4 = sub_1AF12F398(engineContext);
    delegationConformance = self->_delegationConformance;
    if ((delegationConformance & 0x10) != 0 || (*&self->_selfDelegationConformance & 0x10) != 0 || (*&self->_privateRendererOwnerDelegationConformance & 0x10) != 0)
    {
      *v4 = sub_1AF31ED84;
      delegationConformance = self->_delegationConformance;
    }

    if ((delegationConformance & 0x20) != 0 || (*&self->_selfDelegationConformance & 0x20) != 0 || (*&self->_privateRendererOwnerDelegationConformance & 0x20) != 0)
    {
      v4[1] = sub_1AF31EDE0;
      delegationConformance = self->_delegationConformance;
    }

    if ((delegationConformance & 0x80) != 0 || (*&self->_selfDelegationConformance & 0x80) != 0 || (*&self->_privateRendererOwnerDelegationConformance & 0x80) != 0)
    {
      v4[2] = sub_1AF31EE3C;
      delegationConformance = self->_delegationConformance;
    }

    if ((delegationConformance & 0x100) != 0 || (selfDelegationConformance = self->_selfDelegationConformance, (selfDelegationConformance & 0x100) != 0) || (*&self->_privateRendererOwnerDelegationConformance & 0x100) != 0)
    {
      v4[3] = sub_1AF31EE84;
      selfDelegationConformance = self->_selfDelegationConformance;
    }

    if ((selfDelegationConformance & 0x200) != 0 || (*&self->_privateRendererOwnerDelegationConformance & 0x200) != 0)
    {
      v4[4] = sub_1AF31E650;
      v4[5] = sub_1AF31E6A0;
      v4[6] = sub_1AF31E714;
      v4[7] = sub_1AF31EED4;
    }
  }
}

- (void)setDelegate:(id)delegate
{
  objc_storeWeak(&self->_delegate, delegate);
  *&self->_delegationConformance = *&self->_delegationConformance & 0xFFFE | objc_opt_respondsToSelector() & 1;
  if (objc_opt_respondsToSelector())
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  *&self->_delegationConformance = *&self->_delegationConformance & 0xFFFD | v4;
  if (objc_opt_respondsToSelector())
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  *&self->_delegationConformance = *&self->_delegationConformance & 0xFFFB | v5;
  if (objc_opt_respondsToSelector())
  {
    v6 = 8;
  }

  else
  {
    v6 = 0;
  }

  *&self->_delegationConformance = *&self->_delegationConformance & 0xFFF7 | v6;
  if (objc_opt_respondsToSelector())
  {
    v7 = 16;
  }

  else
  {
    v7 = 0;
  }

  *&self->_delegationConformance = *&self->_delegationConformance & 0xFFEF | v7;
  if (objc_opt_respondsToSelector())
  {
    v8 = 32;
  }

  else
  {
    v8 = 0;
  }

  *&self->_delegationConformance = *&self->_delegationConformance & 0xFFDF | v8;
  if (objc_opt_respondsToSelector())
  {
    v9 = 64;
  }

  else
  {
    v9 = 0;
  }

  *&self->_delegationConformance = *&self->_delegationConformance & 0xFFBF | v9;
  if (objc_opt_respondsToSelector())
  {
    v10 = 128;
  }

  else
  {
    v10 = 0;
  }

  *&self->_delegationConformance = *&self->_delegationConformance & 0xFF7F | v10;
  if (objc_opt_respondsToSelector())
  {
    v11 = 256;
  }

  else
  {
    v11 = 0;
  }

  *&self->_delegationConformance = *&self->_delegationConformance & 0xFCFF | v11;
  if (objc_opt_respondsToSelector())
  {
    v15 = 1024;
  }

  else
  {
    v15 = 0;
  }

  *&self->_delegationConformance = *&self->_delegationConformance & 0xFBFF | v15;

  objc_msgSend__updateEngineCallbacks(self, v12, v13, v14);
}

- (void)set_wantsWorldRendererDelegationMessages:(BOOL)messages
{
  if (messages)
  {
    v5 = 64;
  }

  else
  {
    v5 = 0;
  }

  *(self + 224) = *(self + 224) & 0xBF | v5;
  if (!messages || (*(self + 81) & 4) != 0)
  {
    v15 = 0;
    *&self->_selfDelegationConformance &= 0xFC00u;
  }

  else
  {
    *&self->_selfDelegationConformance = *&self->_selfDelegationConformance & 0xFFFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    *&self->_selfDelegationConformance = *&self->_selfDelegationConformance & 0xFFFD | v6;
    if (objc_opt_respondsToSelector())
    {
      v7 = 4;
    }

    else
    {
      v7 = 0;
    }

    *&self->_selfDelegationConformance = *&self->_selfDelegationConformance & 0xFFFB | v7;
    if (objc_opt_respondsToSelector())
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    *&self->_selfDelegationConformance = *&self->_selfDelegationConformance & 0xFFF7 | v8;
    if (objc_opt_respondsToSelector())
    {
      v9 = 16;
    }

    else
    {
      v9 = 0;
    }

    *&self->_selfDelegationConformance = *&self->_selfDelegationConformance & 0xFFEF | v9;
    if (objc_opt_respondsToSelector())
    {
      v10 = 32;
    }

    else
    {
      v10 = 0;
    }

    *&self->_selfDelegationConformance = *&self->_selfDelegationConformance & 0xFFDF | v10;
    if (objc_opt_respondsToSelector())
    {
      v11 = 128;
    }

    else
    {
      v11 = 0;
    }

    *&self->_selfDelegationConformance = *&self->_selfDelegationConformance & 0xFF7F | v11;
    if (objc_opt_respondsToSelector())
    {
      v12 = 256;
    }

    else
    {
      v12 = 0;
    }

    *&self->_selfDelegationConformance = *&self->_selfDelegationConformance & 0xFEFF | v12;
    if (objc_opt_respondsToSelector())
    {
      v13 = 64;
    }

    else
    {
      v13 = 0;
    }

    *&self->_selfDelegationConformance = *&self->_selfDelegationConformance & 0xFFBF | v13;
    if (objc_opt_respondsToSelector())
    {
      v14 = 512;
    }

    else
    {
      v14 = 0;
    }

    *&self->_selfDelegationConformance = *&self->_selfDelegationConformance & 0xFDFF | v14;
    if (objc_opt_respondsToSelector())
    {
      v15 = 1024;
    }

    else
    {
      v15 = 0;
    }
  }

  *&self->_delegationConformance = *&self->_delegationConformance & 0xFBFF | v15;

  objc_msgSend__updateEngineCallbacks(self, a2, messages, v3);
}

- (void)set_shouldForwardWorldRendererDelegationMessagesToPrivateRendererOwner:(BOOL)owner
{
  if (owner)
  {
    v5 = 0x80;
  }

  else
  {
    v5 = 0;
  }

  *(self + 224) = v5 & 0x80 | *(self + 224) & 0x7F;
  if (owner && (*(self + 81) & 4) != 0)
  {
    *&self->_privateRendererOwnerDelegationConformance = *&self->_privateRendererOwnerDelegationConformance & 0xFFFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }

    *&self->_privateRendererOwnerDelegationConformance = *&self->_privateRendererOwnerDelegationConformance & 0xFFFD | v8;
    if (objc_opt_respondsToSelector())
    {
      v9 = 4;
    }

    else
    {
      v9 = 0;
    }

    *&self->_privateRendererOwnerDelegationConformance = *&self->_privateRendererOwnerDelegationConformance & 0xFFFB | v9;
    if (objc_opt_respondsToSelector())
    {
      v10 = 8;
    }

    else
    {
      v10 = 0;
    }

    *&self->_privateRendererOwnerDelegationConformance = *&self->_privateRendererOwnerDelegationConformance & 0xFFF7 | v10;
    if (objc_opt_respondsToSelector())
    {
      v11 = 16;
    }

    else
    {
      v11 = 0;
    }

    *&self->_privateRendererOwnerDelegationConformance = *&self->_privateRendererOwnerDelegationConformance & 0xFFEF | v11;
    if (objc_opt_respondsToSelector())
    {
      v12 = 32;
    }

    else
    {
      v12 = 0;
    }

    *&self->_privateRendererOwnerDelegationConformance = *&self->_privateRendererOwnerDelegationConformance & 0xFFDF | v12;
    if (objc_opt_respondsToSelector())
    {
      v13 = 128;
    }

    else
    {
      v13 = 0;
    }

    *&self->_privateRendererOwnerDelegationConformance = *&self->_privateRendererOwnerDelegationConformance & 0xFF7F | v13;
    if (objc_opt_respondsToSelector())
    {
      v14 = 256;
    }

    else
    {
      v14 = 0;
    }

    *&self->_privateRendererOwnerDelegationConformance = *&self->_privateRendererOwnerDelegationConformance & 0xFEFF | v14;
    if (objc_opt_respondsToSelector())
    {
      v15 = 64;
    }

    else
    {
      v15 = 0;
    }

    *&self->_privateRendererOwnerDelegationConformance = *&self->_privateRendererOwnerDelegationConformance & 0xFFBF | v15;
    if (objc_opt_respondsToSelector())
    {
      v16 = 512;
    }

    else
    {
      v16 = 0;
    }

    *&self->_privateRendererOwnerDelegationConformance = *&self->_privateRendererOwnerDelegationConformance & 0xFDFF | v16;
    if (objc_opt_respondsToSelector())
    {
      v6 = 1024;
    }

    else
    {
      v6 = 0;
    }

    privateRendererOwnerDelegationConformance = self->_privateRendererOwnerDelegationConformance;
  }

  else
  {
    v6 = 0;
    privateRendererOwnerDelegationConformance = *&self->_privateRendererOwnerDelegationConformance & 0xFC00;
  }

  *&self->_privateRendererOwnerDelegationConformance = privateRendererOwnerDelegationConformance & 0xFBFF | v6;

  objc_msgSend__updateEngineCallbacks(self, a2, owner, v3);
}

- (void)set_resourceManagerMonitor:(id)monitor
{
  if (objc_loadWeak(&self->_resourceManagerMonitor) != monitor)
  {
    if (monitor)
    {
      monitorCopy = monitor;
    }

    else
    {
      monitorCopy = 0;
    }

    if (monitor)
    {
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }

    objc_storeWeak(&self->_resourceManagerMonitor, monitorCopy);
    renderContext = self->_renderContext;

    MEMORY[0x1EEE66B58](renderContext, sel_setResourceManagerMonitor_, selfCopy, v7);
  }
}

- (void)renderContext:(id)context didFallbackToDefaultTextureForSource:(id)source message:(id)message
{
  privateRendererOwner = self;
  if ((*(self + 81) & 4) != 0)
  {
    privateRendererOwner = self->_privateRendererOwner;
  }

  Weak = objc_loadWeak(&self->_resourceManagerMonitor);

  MEMORY[0x1EEE66B58](Weak, sel_renderer_didFallbackToDefaultTextureForSource_message_, privateRendererOwner, source);
}

- (void)set_commandBufferStatusMonitor:(id)monitor
{
  if (objc_loadWeak(&self->_commandBufferStatusMonitor) != monitor)
  {
    if (monitor)
    {
      monitorCopy = monitor;
    }

    else
    {
      monitorCopy = 0;
    }

    if (monitor)
    {
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }

    objc_storeWeak(&self->_commandBufferStatusMonitor, monitorCopy);
    renderContext = self->_renderContext;

    MEMORY[0x1EEE66B58](renderContext, sel_setCommandBufferStatusMonitor_, selfCopy, v7);
  }
}

- (void)renderContext:(id)context commandBufferDidCompleteWithError:(id)error
{
  privateRendererOwner = self;
  if ((*(self + 81) & 4) != 0)
  {
    privateRendererOwner = self->_privateRendererOwner;
  }

  Weak = objc_loadWeak(&self->_commandBufferStatusMonitor);

  MEMORY[0x1EEE66B58](Weak, sel_renderer_commandBufferDidCompleteWithError_, privateRendererOwner, error);
}

- (BOOL)_needsRepetitiveRedraw
{
  if (self->_isAnimating)
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    return (*(self + 81) >> 1) & 1;
  }

  return v2;
}

- (void)updateAtTime:(double)time
{
  objc_msgSend_lock(self, a2, v3, v4);
  v10 = sub_1AF130770(self->_engineContext, v7, v8, v9);
  prof_beginFlameSmallData("[VFXRenderer updateAtTime:]", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/ObjC/VFXRenderer.mm", 2227, v10 | 0x300000000);
  v11 = sub_1AF12DDCC(self->_engineContext);
  v15 = objc_msgSend_world(self, v12, v13, v14);
  if (!v11)
  {
    goto LABEL_4;
  }

  v19 = v15;
  sub_1AF1CEA20(v11);
  if (v11 != objc_msgSend_worldRef(v19, v20, v21, v22))
  {
    sub_1AF1CEA9C(v11);
LABEL_4:
    objc_msgSend_unlock(self, v16, v17, v18);
    goto LABEL_135;
  }

  v23 = 0.0;
  if (prof_getEnabled())
  {
    v23 = CACurrentMediaTime();
  }

  v24 = sub_1AF1CF8AC(v11);
  v28 = v24;
  if (v24)
  {
    v164 = sub_1AF0FB884(v24);
    objc_msgSend_beginTransaction(v164, v29, v30, v31);
  }

  else
  {
    v164 = 0;
  }

  self->_isAnimating = 0;
  objc_msgSend_setImmediateModeWithAtomicTime_(VFXTransaction, v25, v26, v27, time);
  objc_msgSend_setImmediateModeRestrictedContext_(VFXTransaction, v32, v11, v33);
  v34 = sub_1AF12DE5C(self->_engineContext);
  context = objc_autoreleasePoolPush();
  sub_1AF12F8F0(self->_engineContext, v35, v36, v37);
  self->_time = time;
  v41 = objc_msgSend_delegate(self, v38, v39, v40);
  v42 = sub_1AF12DE14(self->_engineContext);
  v43 = CACurrentMediaTime();
  prof_beginFlame("updateAtTime", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/ObjC/VFXRenderer.mm", 2274);
  if (*&self->_delegationConformance & 1) != 0 || (*&self->_selfDelegationConformance & 1) != 0 || (*&self->_privateRendererOwnerDelegationConformance)
  {
    v47 = CACurrentMediaTime();
    prof_beginFlame("updateAtTime delegate", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/ObjC/VFXRenderer.mm", 2278);
    v48 = sub_1AF0D5194();
    if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v51 = v48;
      if (os_signpost_enabled(v48))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v51, OS_SIGNPOST_INTERVAL_BEGIN, v34, "Delegate (update)", &unk_1AFF70A1D, buf, 2u);
      }
    }

    if (*&self->_privateRendererOwnerDelegationConformance)
    {
      objc_msgSend__renderer_updateAtTime_(self->_privateRendererOwner, v49, self->_privateRendererOwner, v50, time, context);
    }

    if (*&self->_selfDelegationConformance)
    {
      objc_msgSend__renderer_updateAtTime_(self, v49, self, v50, time);
    }

    if (*&self->_delegationConformance)
    {
      privateRendererOwner = self;
      if ((*(self + 81) & 4) != 0)
      {
        privateRendererOwner = self->_privateRendererOwner;
      }

      objc_msgSend_renderer_updateAtTime_(v41, v49, privateRendererOwner, v50, time, context);
    }

    v53 = sub_1AF0D5194();
    if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v54 = v53;
      if (os_signpost_enabled(v53))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v54, OS_SIGNPOST_INTERVAL_END, v34, "Delegate (update)", &unk_1AFF70A1D, buf, 2u);
      }
    }

    v42[21] = CACurrentMediaTime() - v47 + v42[21];
    prof_endFlame();
  }

  v55 = objc_msgSend_clock(v19, v44, v45, v46, context);
  objc_msgSend_lastUpdateTime(v19, v56, v57, v58);
  v60 = v59;
  objc_msgSend_updateWithAbsoluteTime_(v55, v61, v62, v63, time);
  objc_msgSend_time(v55, v64, v65, v66);
  v68 = v67;
  objc_msgSend_setLastUpdateTime_(v19, v69, v70, v71);
  if (v68 - v60 >= 0.0)
  {
    v72 = v68 - v60;
  }

  else
  {
    v72 = 0.0166666667;
  }

  sub_1AF1302BC(self->_engineContext, time);
  sub_1AF1302CC(self->_engineContext, v68);
  sub_1AF1302AC(self->_engineContext, v72);
  sub_1AF12ECCC(self->_engineContext);
  isPaused = objc_msgSend_isPaused(v55, v73, v74, v75);
  if (self->_privateRendererOwner)
  {
    v77 = v72 <= 1.0;
  }

  else
  {
    v77 = 1;
  }

  if (!v77)
  {
    v72 = 0.0166666667;
  }

  v78 = sub_1AF1CFFC0(v11);
  sub_1AF1DF22C(v78);
  v79 = CACurrentMediaTime();
  prof_beginFlame("Animations", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/ObjC/VFXRenderer.mm", 2345);
  v80 = sub_1AF1CF830(v11);
  if (v80 && !self->_cameraIsManipulated)
  {
    v81 = sub_1AF0D5194();
    if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v82 = v81;
      if (os_signpost_enabled(v81))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v82, OS_SIGNPOST_INTERVAL_BEGIN, v34, "Animations", &unk_1AFF70A1D, buf, 2u);
      }
    }

    sub_1AF116CA4(v80, time);
    sub_1AF116CF8(v80, v68);
    sub_1AF116E78(v80);
    v83 = sub_1AF0D5194();
    if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v84 = v83;
      if (os_signpost_enabled(v83))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v84, OS_SIGNPOST_INTERVAL_END, v34, "Animations", &unk_1AFF70A1D, buf, 2u);
      }
    }

    sub_1AF1190C0(v80);
    self->_isAnimating = sub_1AF117AA8(v80, isPaused);
  }

  v42[16] = CACurrentMediaTime() - v79 + v42[16];
  prof_endFlame();
  v85 = sub_1AF1D00B0(v11);
  sub_1AF134224(v85);
  if (v28)
  {
    v86 = CACurrentMediaTime();
    prof_beginFlame("VFXCore", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/ObjC/VFXRenderer.mm", 2368);
    v87 = sub_1AF0D5194();
    if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v88 = v87;
      if (os_signpost_enabled(v87))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v88, OS_SIGNPOST_INTERVAL_BEGIN, v34, "VFXCoreSimulate", &unk_1AFF70A1D, buf, 2u);
      }
    }

    sub_1AF14E5CC(self->_engineContext, isPaused, v68, v72);
    v89 = sub_1AF0D5194();
    if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v90 = v89;
      if (os_signpost_enabled(v89))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v90, OS_SIGNPOST_INTERVAL_END, v34, "VFXCoreSimulate", &unk_1AFF70A1D, buf, 2u);
      }
    }

    v42[15] = CACurrentMediaTime() - v86 + v42[15];
    prof_endFlame();
  }

  if ((*&self->_delegationConformance & 2) != 0 || (*&self->_selfDelegationConformance & 2) != 0 || (*&self->_privateRendererOwnerDelegationConformance & 2) != 0)
  {
    v91 = CACurrentMediaTime();
    prof_beginFlame("didApply Animations", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/ObjC/VFXRenderer.mm", 2378);
    v92 = sub_1AF0D5194();
    if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v95 = v92;
      if (os_signpost_enabled(v92))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v95, OS_SIGNPOST_INTERVAL_BEGIN, v34, "Delegate (didApplyAnimation)", &unk_1AFF70A1D, buf, 2u);
      }
    }

    if ((*&self->_privateRendererOwnerDelegationConformance & 2) != 0)
    {
      objc_msgSend__renderer_didApplyAnimationsAtTime_(self->_privateRendererOwner, v93, self->_privateRendererOwner, v94, time);
    }

    if ((*&self->_selfDelegationConformance & 2) != 0)
    {
      objc_msgSend__renderer_didApplyAnimationsAtTime_(self, v93, self, v94, time);
    }

    if ((*&self->_delegationConformance & 2) != 0)
    {
      selfCopy = self;
      if ((*(self + 81) & 4) != 0)
      {
        selfCopy = self->_privateRendererOwner;
      }

      objc_msgSend_renderer_didApplyAnimationsAtTime_(v41, v93, selfCopy, v94, time);
    }

    v97 = sub_1AF0D5194();
    if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v98 = v97;
      if (os_signpost_enabled(v97))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v98, OS_SIGNPOST_INTERVAL_END, v34, "Delegate (didApplyAnimation)", &unk_1AFF70A1D, buf, 2u);
      }
    }

    v42[21] = CACurrentMediaTime() - v91 + v42[21];
    prof_endFlame();
  }

  v99 = CACurrentMediaTime();
  prof_beginFlame("Authoring", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/ObjC/VFXRenderer.mm", 2397);
  v102 = sub_1AF1D1084(v11, 0, v100, v101);
  if (v102)
  {
    sub_1AF108368(v102, self, v103, v104);
  }

  v42[20] = CACurrentMediaTime() - v99 + v42[20];
  prof_endFlame();
  v105 = CACurrentMediaTime();
  prof_beginFlame("Physics", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/ObjC/VFXRenderer.mm", 2406);
  v106 = sub_1AF16CDEC(v11);
  IfNeeded = objc_msgSend__physicsWorldCreateIfNeeded_(v106, v107, 0, v108);
  if (IfNeeded)
  {
    v110 = sub_1AF0D5194();
    if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v114 = v110;
      if (os_signpost_enabled(v110))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v114, OS_SIGNPOST_INTERVAL_BEGIN, v34, "Physics", &unk_1AFF70A1D, buf, 2u);
      }
    }

    objc_msgSend__step_(IfNeeded, v111, v112, v113, v72);
    v115 = sub_1AF0D5194();
    if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v119 = v115;
      if (os_signpost_enabled(v115))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v119, OS_SIGNPOST_INTERVAL_END, v34, "Physics", &unk_1AFF70A1D, buf, 2u);
      }
    }

    if ((isPaused & 1) == 0 && !self->_isAnimating)
    {
      self->_isAnimating = objc_msgSend__needsRedraw(IfNeeded, v116, v117, v118);
    }
  }

  v42[14] = CACurrentMediaTime() - v105 + v42[14];
  prof_endFlame();
  if ((*&self->_delegationConformance & 4) != 0 || (*&self->_selfDelegationConformance & 4) != 0 || (*&self->_privateRendererOwnerDelegationConformance & 4) != 0)
  {
    v120 = CACurrentMediaTime();
    prof_beginFlame("didSimulate Physics", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/ObjC/VFXRenderer.mm", 2420);
    v121 = sub_1AF0D5194();
    if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v124 = v121;
      if (os_signpost_enabled(v121))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v124, OS_SIGNPOST_INTERVAL_BEGIN, v34, "Delegate (didUpdatePhysics)", &unk_1AFF70A1D, buf, 2u);
      }
    }

    if ((*&self->_privateRendererOwnerDelegationConformance & 4) != 0)
    {
      objc_msgSend__renderer_didSimulatePhysicsAtTime_(self->_privateRendererOwner, v122, self->_privateRendererOwner, v123, time);
    }

    if ((*&self->_selfDelegationConformance & 4) != 0)
    {
      objc_msgSend__renderer_didSimulatePhysicsAtTime_(self, v122, self, v123, time);
    }

    if ((*&self->_delegationConformance & 4) != 0)
    {
      selfCopy2 = self;
      if ((*(self + 81) & 4) != 0)
      {
        selfCopy2 = self->_privateRendererOwner;
      }

      objc_msgSend_renderer_didSimulatePhysicsAtTime_(v41, v122, selfCopy2, v123, time);
    }

    v126 = sub_1AF0D5194();
    if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v127 = v126;
      if (os_signpost_enabled(v126))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v127, OS_SIGNPOST_INTERVAL_END, v34, "Delegate (didUpdatePhysics)", &unk_1AFF70A1D, buf, 2u);
      }
    }

    v42[21] = CACurrentMediaTime() - v120 + v42[21];
    prof_endFlame();
  }

  v128 = CACurrentMediaTime();
  prof_beginFlame("Constraints", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/ObjC/VFXRenderer.mm", 2439);
  v132 = sub_1AF1CECF0(v11);
  if (v132)
  {
    v132[4] = objc_msgSend__engineContext(self, v129, v130, v131);
    v133 = sub_1AF0D5194();
    if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v134 = v133;
      if (os_signpost_enabled(v133))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v134, OS_SIGNPOST_INTERVAL_BEGIN, v34, "Constraints", &unk_1AFF70A1D, buf, 2u);
      }
    }

    sub_1AF15956C(v132);
    v135 = sub_1AF0D5194();
    if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v136 = v135;
      if (os_signpost_enabled(v135))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v136, OS_SIGNPOST_INTERVAL_END, v34, "Constraints", &unk_1AFF70A1D, buf, 2u);
      }
    }
  }

  v42[13] = CACurrentMediaTime() - v128 + v42[13];
  prof_endFlame();
  if ((*&self->_delegationConformance & 8) != 0 || (*&self->_selfDelegationConformance & 8) != 0 || (*&self->_privateRendererOwnerDelegationConformance & 8) != 0)
  {
    v137 = CACurrentMediaTime();
    prof_beginFlame("didApply constraints", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/ObjC/VFXRenderer.mm", 2451);
    v138 = sub_1AF0D5194();
    if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v141 = v138;
      if (os_signpost_enabled(v138))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v141, OS_SIGNPOST_INTERVAL_BEGIN, v34, "Delegate (didApplyConstraints)", &unk_1AFF70A1D, buf, 2u);
      }
    }

    if ((*&self->_privateRendererOwnerDelegationConformance & 8) != 0)
    {
      objc_msgSend__renderer_didApplyConstraintsAtTime_(self->_privateRendererOwner, v139, self->_privateRendererOwner, v140, time);
    }

    if ((*&self->_selfDelegationConformance & 8) != 0)
    {
      objc_msgSend__renderer_didApplyConstraintsAtTime_(self, v139, self, v140, time);
    }

    if ((*&self->_delegationConformance & 8) != 0)
    {
      selfCopy3 = self;
      if ((*(self + 81) & 4) != 0)
      {
        selfCopy3 = self->_privateRendererOwner;
      }

      objc_msgSend_renderer_didApplyConstraintsAtTime_(v41, v139, selfCopy3, v140, time);
    }

    v143 = sub_1AF0D5194();
    if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v144 = v143;
      if (os_signpost_enabled(v143))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v144, OS_SIGNPOST_INTERVAL_END, v34, "Delegate (didApplyConstraints)", &unk_1AFF70A1D, buf, 2u);
      }
    }

    v42[21] = CACurrentMediaTime() - v137 + v42[21];
    prof_endFlame();
  }

  v145 = sub_1AF0D5194();
  if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v146 = v145;
    if (os_signpost_enabled(v145))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v146, OS_SIGNPOST_INTERVAL_BEGIN, v34, "Audio", &unk_1AFF70A1D, buf, 2u);
    }
  }

  sub_1AF15AC70(self->_engineContext);
  v147 = sub_1AF0D5194();
  if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v148 = v147;
    if (os_signpost_enabled(v147))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v148, OS_SIGNPOST_INTERVAL_END, v34, "Audio", &unk_1AFF70A1D, buf, 2u);
    }
  }

  v42[12] = CACurrentMediaTime() - v43 + v42[12];
  prof_endFlame();
  objc_autoreleasePoolPop(contexta);
  objc_msgSend_setImmediateModeRestrictedContext_(VFXTransaction, v149, 0, v150);
  objc_msgSend_setImmediateMode_(VFXTransaction, v151, 0, v152);
  objc_msgSend_endTransaction(v164, v153, v154, v155);
  if (prof_getEnabled())
  {
    v156 = sub_1AF1D13B8(v11);
    v157 = sub_1AF1D1400(v11);
    v158 = CACurrentMediaTime();
    vfx_counters_update(v156, v157, v158 - v23);
  }

  sub_1AF1CEA9C(v11);
  objc_msgSend_unlock(self, v159, v160, v161);
LABEL_135:
  prof_endFlame();
}

- (void)drawStatisticsIfNeeded
{
  v3 = sub_1AF332204();
  v7 = v3;
  if (self->_showStatistics || v3)
  {
    v8 = objc_msgSend_stats(self->_renderContext, v4, v5, v6);
    v12 = objc_msgSend_resourceManager(self->_renderContext, v9, v10, v11);
    v13 = sub_1AFDE8614(v12);
    sub_1AF134BC4(v8);
    Current = CFAbsoluteTimeGetCurrent();
    statisticsTimeStamp = self->_statisticsTimeStamp;
    v19 = objc_msgSend__authoringEnvironment(self, v16, v17, v18);
    if (statisticsTimeStamp <= Current)
    {
      v20 = v19;
      sub_1AF1348BC(v8, v13, __src);
      sub_1AF134B58(v8);
      if (self->_showStatistics)
      {
        sub_1AF1029B4(v20, __src, v13);
      }

      if (v7)
      {
        sub_1AF332334(__src);
      }

      self->_statisticsTimeStamp = Current + 1.0;
    }
  }
}

- (void)startManipulatingPointOfView
{
  objc_msgSend_lock(self, a2, v2, v3);
  v8 = objc_msgSend_pointOfView(self, v5, v6, v7);
  v12 = objc_msgSend_presentationNode(v8, v9, v10, v11);
  objc_msgSend_transform(v12, v13, v14, v15);
  objc_msgSend_setTransform_(v8, v16, v17, v18);
  v22 = objc_msgSend_camera(v8, v19, v20, v21);
  v26 = objc_msgSend_presentationCamera(v22, v23, v24, v25);
  objc_msgSend_focalLength(v26, v27, v28, v29);
  v31 = v30;
  v35 = objc_msgSend_camera(v8, v32, v33, v34);
  LODWORD(v36) = v31;
  objc_msgSend_setFocalLength_(v35, v37, v38, v39, v36);
  self->_cameraIsManipulated = 1;

  objc_msgSend_unlock(self, v40, v41, v42);
}

- (void)stopManipulatingPointOfView
{
  objc_msgSend_lock(self, a2, v2, v3);
  self->_cameraIsManipulated = 0;

  objc_msgSend_unlock(self, v5, v6, v7);
}

- (id)hitTest:(CGPoint)test options:(id)options
{
  if (self->__drawableSize.width == 0.0)
  {
    return MEMORY[0x1E695E0F0];
  }

  else
  {
    return (MEMORY[0x1EEE66B58])(self, sel__hitTest_viewport_options_, options);
  }
}

- (id)hitTestWithSegmentFromPoint:(VFXRenderer *)self toPoint:(SEL)point options:(id)options
{
  v15 = v4;
  v16 = v5;
  v7 = objc_msgSend_world(self, point, options, v3);
  v11 = objc_msgSend_rootNode(v7, v8, v9, v10);

  return objc_msgSend_hitTestWithSegmentFromPoint_toPoint_options_(v11, v12, options, v13, v15, v16);
}

- (id)_hitTest:(CGPoint)test viewport:(CGSize)viewport options:(id)options
{
  optionsCopy = options;
  height = viewport.height;
  width = viewport.width;
  x = test.x;
  y = test.y;
  v8 = objc_msgSend_world(self, a2, options, v5);
  v12 = objc_msgSend_worldRef(v8, v9, v10, v11);
  if (v12 && (v13 = CFRetain(v12)) != 0)
  {
    v14 = v13;
    sub_1AF1CEA20(v13);
    v18 = objc_msgSend__engineContext(self, v15, v16, v17);
    if (!v18)
    {
      goto LABEL_13;
    }

    v19 = v18;
    v20 = sub_1AF12F10C(v18);
    if (!v20)
    {
      goto LABEL_13;
    }

    v23 = v20;
    if (optionsCopy)
    {
      if (!objc_msgSend_objectForKey_(optionsCopy, v21, @"kHitTestRootNode", v22) || (v26 = objc_msgSend_objectForKey_(optionsCopy, v24, @"kHitTestRootNode", v25), v30 = objc_msgSend_nodeRef(v26, v27, v28, v29), optionsCopy = objc_msgSend_mutableCopy(optionsCopy, v31, v32, v33), objc_msgSend_setObject_forKey_(optionsCopy, v34, v30, @"kHitTestRootNode"), optionsCopy))
      {
        if (objc_msgSend_objectForKey_(optionsCopy, v24, @"kHitTestShowDebugInfo", v25))
        {
          optionsCopy = objc_msgSend_mutableCopy(optionsCopy, v35, v36, v37);
          v38 = sub_1AF12EE9C(v19, 0);
          objc_msgSend_setObject_forKey_(optionsCopy, v39, v38, @"auth");
        }
      }
    }

    v40.f64[0] = x;
    v40.f64[1] = y;
    v41.f64[0] = width;
    v41.f64[1] = height;
    v42 = sub_1AF286C78(v14, v23, optionsCopy, COERCE_DOUBLE(vcvt_f32_f64(v40)), vcvt_hight_f32_f64(0, v41), v41);
    if (v42)
    {
      v45 = v42;
      v46 = objc_msgSend_hitTestResultsFromHitTestResultRef_(VFXHitTestResult, v43, v42, v44);
      CFRelease(v45);
    }

    else
    {
LABEL_13:
      v46 = 0;
    }

    sub_1AF1CEA9C(v14);
    CFRelease(v14);
  }

  else
  {
    v46 = 0;
  }

  if (v46)
  {
    return v46;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (BOOL)_isNodeInsideFrustum:(id)frustum withPointOfView:(id)view viewport:
{
  if ((view || (view = objc_msgSend_pointOfView(self, a2, frustum, 0)) != 0) && objc_msgSend_getFrustum_withViewport_(view, a2, v43, view))
  {
    if (objc_msgSend_isPresentationObject(frustum, v5, v6, v7))
    {
      v11 = objc_msgSend_nodeRef(frustum, v8, v9, v10);
      v12 = sub_1AF1B9B04(v11);
      v35 = v12[1];
      v36 = *v12;
      v37 = v12[2];
      v38 = v12[3];
      v16 = objc_msgSend_nodeRef(frustum, v13, v14, v15);
      sub_1AF1B81E4(v16, 1, &v41);
    }

    else
    {
      objc_msgSend_worldTransform(frustum, v8, v9, v10);
      v35 = v19;
      v36 = v18;
      v37 = v20;
      v38 = v21;
      DWORD2(v39[0]) = 0;
      *&v39[0] = 0;
      v40.i32[2] = 0;
      v40.i64[0] = 0;
      objc_msgSend_getBoundingBoxMin_max_(frustum, v22, v39, &v40);
      v23 = v39[0];
      v24 = v40;
      v23.i32[3] = 1.0;
      v24.i32[3] = 1.0;
      v25.i64[0] = 0x3F0000003F000000;
      v25.i64[1] = 0x3F0000003F000000;
      v41 = vmulq_f32(vaddq_f32(v23, v24), v25);
      v42 = vmulq_f32(vsubq_f32(v24, v23), v25);
    }

    for (i = 0; i != 6; ++i)
    {
      v43[i] = vnegq_f32(v43[i]);
    }

    v27 = 0;
    v17 = 0;
    v39[2] = v43[2];
    v39[3] = v43[3];
    v39[4] = v43[4];
    v39[5] = v43[5];
    v28 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v38, v37, v41, 2), v35, *v41.f32, 1), v36, v41.f32[0]);
    v28.i32[3] = v41.i32[3];
    v39[0] = v43[0];
    v39[1] = v43[1];
    v29 = v42;
    v29.i32[1] = v42.i32[0];
    v29.i32[2] = v42.i32[0];
    v30 = vmlaq_f32(vmlaq_f32(vmulq_f32(vabsq_f32(v35), vuzp2q_s32(vdupq_lane_s32(*v42.i8, 1), v42)), v29, vabsq_f32(v36)), vzip2q_s32(vtrn1q_s32(v42, v42), v42), vabsq_f32(v37));
    do
    {
      v31 = v39[v27];
      v32 = vmulq_f32(v28, v31);
      *v32.i8 = vadd_f32(*v32.i8, *&vextq_s8(v32, v32, 8uLL));
      v33 = vmulq_f32(v30, vabsq_f32(v31));
      *v32.i8 = vadd_f32(vzip1_s32(*v32.i8, *v33.f32), vzip2_s32(*v32.i8, *v33.f32));
      if (*v32.i32 > (v33.f32[2] + *&v32.i32[1]))
      {
        break;
      }

      v17 = v27++ > 4;
    }

    while (v27 != 6);
  }

  else
  {
    return 0;
  }

  return v17;
}

- (BOOL)isNodeInsideFrustum:(id)frustum withPointOfView:(id)view
{
  if (self->__drawableSize.width == 0.0)
  {
    return 0;
  }

  else
  {
    return MEMORY[0x1EEE66B58](self, sel__isNodeInsideFrustum_withPointOfView_viewport_, frustum, view);
  }
}

- (id)_nodesInsideFrustumWithPointOfView:(id)view viewport:
{
  viewCopy = view;
  v9 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, view, v3);
  if ((viewCopy || (viewCopy = objc_msgSend_pointOfView(self, v6, v7, v8)) != 0) && objc_msgSend_world(self, v6, v7, v8) && objc_msgSend_getFrustum_withViewport_(viewCopy, v10, v30, v11, 0.0))
  {
    v15 = objc_msgSend_worldRef(self->_world, v12, v13, v14);
    sub_1AF1CEA20(v15);
    v16 = sub_1AF1D01D0(v15);
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = sub_1AF320C50;
    v26[3] = &unk_1E7A7EF20;
    v26[4] = v9;
    v17 = sub_1AF1271CC(v26, &v27);
    v21 = objc_msgSend_camera(viewCopy, v18, v19, v20, v17);
    v27 = objc_msgSend_categoryBitMask(v21, v22, v23, v24);
    DWORD1(v28) = 2;
    sub_1AF127B58(v16, v30);
    sub_1AF1CEA9C(v15);
  }

  return v9;
}

- (id)nodesInsideFrustumWithPointOfView:(id)view
{
  if (self->__drawableSize.width == 0.0)
  {
    return MEMORY[0x1E695E0F0];
  }

  else
  {
    return (MEMORY[0x1EEE66B58])(self, sel__nodesInsideFrustumWithPointOfView_viewport_, view);
  }
}

- (void)setRendersContinuously:(BOOL)continuously
{
  if (continuously)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 81) = *(self + 81) & 0xFD | v3;
}

- (void)setJitteringEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 224) = *(self + 224) & 0xFD | v3;
}

- (void)setTemporalAntialiasingEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 224) = *(self + 224) & 0xFB | v3;
}

- (BOOL)additiveWritesToAlpha
{
  if (self->_legacyRenderer)
  {
    return (MEMORY[0x1EEE66B58])(self, sel__legacyAdditiveWritesToAlpha);
  }

  else
  {
    return *(self + 224) & 1;
  }
}

- (void)setAdditiveWritesToAlpha:(BOOL)alpha
{
  if (self->_legacyRenderer)
  {

    (MEMORY[0x1EEE66B58])(self, sel__setLegacyAdditiveWritesToAlpha_, alpha);
  }

  else
  {
    v5 = *(self + 224);
    if ((v5 & 1) != alpha)
    {
      v9 = v3;
      v10 = v4;
      *(self + 224) = v5 & 0xFE | alpha;
      renderingQueue = self->__renderingQueue;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = sub_1AF320E74;
      v7[3] = &unk_1E7A7EF48;
      v7[4] = self;
      alphaCopy = alpha;
      dispatch_async(renderingQueue, v7);
    }
  }
}

- (void)setFrozen:(BOOL)frozen
{
  frozenCopy = frozen;
  objc_msgSend_lock(self, a2, frozen, v3);
  if (frozenCopy)
  {
    v9 = 8;
  }

  else
  {
    v9 = 0;
  }

  *(self + 224) = *(self + 224) & 0xF7 | v9;

  objc_msgSend_unlock(self, v6, v7, v8);
}

- (id)_copyPerformanceStatistics
{
  objc_msgSend_lock(self, a2, v2, v3);
  v8 = objc_msgSend__engineContext(self, v5, v6, v7);
  if (v8 && (v12 = sub_1AF12DE14(v8)) != 0)
  {
    sub_1AF332294(v12, v17, 0);
    v15 = sub_1AF33248C(v17, 0, v13, v14);
  }

  else
  {
    v15 = 0;
  }

  objc_msgSend_unlock(self, v9, v10, v11);
  return v15;
}

- (void)_displayLinkStatsTick
{
  v4 = objc_msgSend__engineContext(self, a2, v2, v3);
  if (v4)
  {
    v5 = sub_1AF12DE14(v4);
    if (v5)
    {
      *(v5 + 184) = *(v5 + 184) + CACurrentMediaTime() - *(v5 + 208);
    }
  }
}

- (void)_displayLinkStatsTack
{
  v4 = objc_msgSend__engineContext(self, a2, v2, v3);
  if (v4)
  {
    v5 = sub_1AF12DE14(v4);
    if (v5)
    {
      *(v5 + 208) = CACurrentMediaTime();
    }
  }
}

- (void)setShowsStatistics:(BOOL)statistics
{
  if (statistics)
  {
    objc_msgSend_setupAuthoringEnvironment(self, a2, statistics, v3);
  }

  self->_showStatistics = statistics;
}

- (id)statistics
{
  VFXSetPerformanceStatisticsEnabled(1);
  v6 = objc_msgSend__copyPerformanceStatistics(self, v3, v4, v5);

  return v6;
}

- (BOOL)showsDebugUI
{
  v5 = objc_msgSend__engineContext(self, a2, v2, v3);
  v6 = sub_1AF12F6A0(v5);
  v7 = -801;
  if (v6 == 3)
  {
    v7 = -769;
  }

  return (self->_debugUIOptions & v7) != 0;
}

- (void)setRenderMode:(unint64_t)mode
{
  engineContext = self->_engineContext;
  self->_renderMode = mode;
  v6 = objc_msgSend_world(self, a2, mode, v3);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF321138;
  v8[3] = &unk_1E7A7E6A0;
  v8[4] = engineContext;
  v8[5] = mode;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v7, v6, v8);
}

- (void)setRendererKind:(unint64_t)kind
{
  objc_msgSend_lock(self, a2, kind, v3);
  engineContext = self->_engineContext;
  self->_rendererKind = kind;
  sub_1AF12E7B4(engineContext, kind);

  objc_msgSend_unlock(self, v7, v8, v9);
}

- (void)setEmulateStereo:(BOOL)stereo
{
  engineContext = self->_engineContext;
  self->_emulateStereo = stereo;
  v6 = objc_msgSend_world(self, a2, stereo, v3);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF32124C;
  v8[3] = &unk_1E7A7EF68;
  v8[4] = engineContext;
  stereoCopy = stereo;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v7, v6, v8);
}

- (void)setEmulateRRM:(BOOL)m
{
  engineContext = self->_engineContext;
  self->_emulateRRM = m;
  v6 = objc_msgSend_world(self, a2, m, v3);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF321304;
  v8[3] = &unk_1E7A7EF68;
  v8[4] = engineContext;
  mCopy = m;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v7, v6, v8);
}

- (void)setSideBySideStereo:(BOOL)stereo
{
  objc_msgSend_lock(self, a2, stereo, v3);
  engineContext = self->_engineContext;
  self->_isSideBySideStereo = stereo;
  sub_1AF12F824(engineContext, stereo);

  objc_msgSend_unlock(self, v7, v8, v9);
}

- (void)setDebugOptions:(unint64_t)options
{
  if (self->_debugOptions != options)
  {
    objc_msgSend_setupAuthoringEnvironment(self, a2, options, v3);
    self->_debugOptions = options;
    objc_msgSend_lock(self, v7, v8, v9);
    objc_msgSend_debugOptionsDidChange_(self->_authoringEnvironment, v10, options, v11);
    sub_1AF12EE70(self->_engineContext, options);
    objc_msgSend_setDebugOptions_(self->_renderContext, v12, (options >> 5) & 2 | (options >> 3) & 4, v13);
    v17 = objc_msgSend__showsAuthoringEnvironment(self, v14, v15, v16);
    objc_msgSend_setShowsAuthoringEnvironment_(self->_renderContext, v18, v17, v19);

    objc_msgSend_unlock(self, v20, v21, v22);
  }
}

- (unint64_t)debugUIOptions
{
  objc_msgSend_lock(self, a2, v2, v3);
  v5 = sub_1AF12EE78(self->_engineContext);
  objc_msgSend_unlock(self, v6, v7, v8);
  return v5;
}

- (void)setDebugUIOptions:(unint64_t)options
{
  objc_msgSend_lock(self, a2, options, v3);
  self->_debugUIOptions = options;
  sub_1AF12EE80(self->_engineContext, options);

  objc_msgSend_unlock(self, v6, v7, v8);
}

- (BOOL)_enableARMode
{
  renderContext = self->_renderContext;
  if (renderContext)
  {
    LOBYTE(renderContext) = objc_msgSend_enableARMode(renderContext, a2, v2, v3);
  }

  return renderContext;
}

- (void)set_enableARMode:(BOOL)mode
{
  renderContext = self->_renderContext;
  if (renderContext)
  {
    (MEMORY[0x1EEE66B58])(renderContext, sel_setEnableARMode_, mode);
  }
}

- (BOOL)_shouldDelegateARCompositing
{
  renderContext = self->_renderContext;
  if (renderContext)
  {
    LOBYTE(renderContext) = (MEMORY[0x1EEE66B58])(renderContext, sel_shouldDelegateARCompositing);
  }

  return renderContext;
}

- (void)set_shouldDelegateARCompositing:(BOOL)compositing
{
  renderContext = self->_renderContext;
  if (renderContext)
  {
    (MEMORY[0x1EEE66B58])(renderContext, sel_setShouldDelegateARCompositing_, compositing);
  }
}

- (void)setupAuthoringEnvironment
{
  if (!self->_authoringEnvironment)
  {
    objc_msgSend_lock(self, a2, v2, v3);
    if (self->_privateRendererOwner)
    {
      IfNeeded = objc_msgSend_authoringEnvironmentForWorldRenderer_createIfNeeded_(VFXAuthoringEnvironment, v6, self->_privateRendererOwner, 1);
    }

    else
    {
      IfNeeded = objc_msgSend_authoringEnvironmentForWorldRenderer_createIfNeeded_(VFXAuthoringEnvironment, v6, self, 1);
    }

    self->_authoringEnvironment = IfNeeded;

    objc_msgSend_unlock(self, v8, v9, v10);
  }
}

- (CGRect)currentViewport
{
  v10 = *MEMORY[0x1E695F058];
  v11 = *(MEMORY[0x1E695F058] + 16);
  v4 = objc_msgSend__engineContext(self, a2, v2, v3);
  v5 = v10;
  v6 = v11;
  if (v4)
  {
    v7 = sub_1AF130548(v4);
    v6 = vcvt_hight_f64_f32(v7);
    v5 = vcvtq_f64_f32(v7.n128_u64[0]);
  }

  v8 = v5.f64[1];
  v9 = v6.f64[1];
  result.size.width = v6.f64[0];
  result.origin.x = v5.f64[0];
  result.size.height = v9;
  result.origin.y = v8;
  return result;
}

- (CGRect)viewport
{
  (MEMORY[0x1EEE66B58])(self, sel_currentViewport);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)set_viewport:(VFXRenderer *)self
{
  v14 = v4;
  objc_msgSend_lock(self, a2, v2, v3);
  *self->__viewport = v14;
  v9 = objc_msgSend__engineContext(self, v6, v7, v8);
  if (v9)
  {
    v13 = v9;
    sub_1AF1305D0(v9, *vextq_s8(v14, v14, 8uLL).i64);
    sub_1AF130550(v13, v14);
  }

  objc_msgSend_unlock(self, v10, v11, v12);
}

- (void)set_drawableSafeAreaInsets:(VFXRenderer *)self
{
  v6 = v4;
  *self->__drawableSafeAreaInsets = v4;
  v5 = objc_msgSend__engineContext(self, a2, v2, v3);
  if (v5)
  {

    sub_1AF1305F0(v5, v6);
  }
}

- (VFXNode)audioListener
{
  v3 = sub_1AF12DDCC(self->_engineContext);
  v4 = v3;
  if (v3)
  {
    sub_1AF1CEA20(v3);
  }

  v5 = sub_1AF15AC20(self->_engineContext);
  v6 = sub_1AF16CDEC(v5);
  if (v4)
  {
    sub_1AF1CEA9C(v4);
  }

  return v6;
}

- (void)setAudioListener:(id)listener
{
  world = self->_world;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF321778;
  v4[3] = &unk_1E7A7E220;
  v4[4] = self;
  v4[5] = listener;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, world, v4);
}

- (void)_renderWorldOrRemoteData
{
  v3 = sub_1AF12DDCC(self->_engineContext);
  v4 = sub_1AF131088(self->_engineContext);
  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    v6 = sub_1AF12EE9C(self->_engineContext, 0);
    if (v6)
    {
      sub_1AF0FCEEC(v6);
    }

    v7 = sub_1AF12DE14(self->_engineContext);
    v8 = CACurrentMediaTime();
    prof_beginFlame("Apply notification queue", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/ObjC/VFXRenderer.mm", 3235);
    sub_1AF130920(self->_engineContext);
    *(v7 + 152) = *(v7 + 152) + CACurrentMediaTime() - v8;
    prof_endFlame();
    sub_1AF12DEB0(self->_engineContext);
    sub_1AF12DC44(self->_engineContext);
    if (self->_viewpoints)
    {
      viewpointCoordinateSpace = self->_viewpointCoordinateSpace;
    }

    else
    {
      viewpointCoordinateSpace = 2;
    }

    sub_1AF130840(self->_engineContext, viewpointCoordinateSpace);
    *&v12 = sub_1AF12FBD8(self->_engineContext).n128_u64[0];
    viewpoints = self->_viewpoints;
    if (viewpoints)
    {
      v14 = objc_msgSend_objectAtIndexedSubscript_(viewpoints, v10, 0, v11, v12);
      v18 = objc_msgSend_passDescriptor(v14, v15, v16, v17);
      v22 = objc_msgSend_colorAttachments(v18, v19, v20, v21);
      v25 = objc_msgSend_objectAtIndexedSubscript_(v22, v23, 0, v24);
      v29 = objc_msgSend_texture(v25, v26, v27, v28);
      v33 = objc_msgSend_textureType(v29, v30, v31, v32);
      v37 = v33;
      v40 = v33 == 5 || v33 == 3 || v33 == 8;
      v41 = v40 & (objc_msgSend_features(self->_renderContext, v34, v35, v36) >> 5);
      v45 = (v37 == 2) & (objc_msgSend_features(self->_renderContext, v42, v43, v44) >> 7);
      v51 = objc_msgSend_count(self->_viewpoints, v46, v47, v48);
      if (v51)
      {
        v52 = 0;
        v53 = 0;
        v54 = 1;
        do
        {
          engineContext = self->_engineContext;
          v56 = objc_msgSend_objectAtIndexedSubscript_(self->_viewpoints, v49, v52, v50);
          v60 = objc_msgSend_passDescriptor(v56, v57, v58, v59);
          sub_1AF1307E0(engineContext, v60, v53);
          if (v54)
          {
            v61 = objc_msgSend_objectAtIndexedSubscript_(self->_viewpoints, v49, v52, v50);
            v65 = objc_msgSend_passDescriptor(v61, v62, v63, v64);
            v69 = objc_msgSend_colorAttachments(v65, v66, v67, v68);
            v72 = objc_msgSend_objectAtIndexedSubscript_(v69, v70, 0, v71);
            v54 = v29 == objc_msgSend_texture(v72, v73, v74, v75);
          }

          else
          {
            v54 = 0;
          }

          v52 = ++v53;
        }

        while (v51 > v53);
      }

      else
      {
        v54 = 1;
      }

      if (v45)
      {
        v76 = 2;
      }

      else
      {
        v76 = v41;
      }

      if (((v51 > 1 && v54) & (v45 | v41)) != 0)
      {
        v77 = v76;
      }

      else
      {
        v77 = 0;
      }

      sub_1AF1307A8(self->_engineContext, v77);
      v78 = self->_engineContext;
      v82 = objc_msgSend_count(self->_viewpoints, v79, v80, v81);
      sub_1AF1307D8(v78, v82);
      if (v51)
      {
        v85 = 0;
        for (i = 0; i < v51; v85 = i)
        {
          v87 = objc_msgSend_objectAtIndexedSubscript_(self->_viewpoints, v83, v85, v84);
          v91 = 0uLL;
          if (v87)
          {
            objc_msgSend_viewport(v87, v88, v89, v90, 0.0);
            v91 = vcvt_hight_f32_f64(vcvt_f32_f64(v117), v118);
          }

          sub_1AF130558(self->_engineContext, i, v91);
          v94 = objc_msgSend_objectAtIndexedSubscript_(self->_viewpoints, v92, v85, v93, 0, 0, 0, 0, 0, 0, 0, 0);
          objc_msgSend_viewMatrix(v94, v95, v96, v97);
          v117 = v98;
          v118 = v99;
          v119 = v100;
          v120 = v101;
          *&v102 = sub_1AF12FB54(self->_engineContext, 1, &v117, i).n128_u64[0];
          v105 = objc_msgSend_objectAtIndexedSubscript_(self->_viewpoints, v103, v85, v104, v102);
          objc_msgSend_projectionMatrix(v105, v106, v107, v108);
          v117 = v109;
          v118 = v110;
          v119 = v111;
          v120 = v112;
          sub_1AF12FB54(self->_engineContext, 0, &v117, i++);
        }
      }
    }

    else
    {
      sub_1AF130550(self->_engineContext, *self->__viewport);
    }

    if (self->_renderContext)
    {
      v113 = sub_1AF12E8A4(self->_engineContext);
      nullsub_106();
      sub_1AF270460(v113, v114, v115, v116);
    }
  }
}

- (BOOL)_needsRedrawAsap
{
  if ((objc_msgSend__needsRepetitiveRedraw(self, a2, v2, v3) & 1) == 0)
  {
    if (sub_1AF12ED90(self->_engineContext) == INFINITY)
    {
      v5 = sub_1AF12DDCC(self->_engineContext);
      if (!v5)
      {
        return v5;
      }

      v6 = v5;
      v7 = sub_1AF12F10C(self->_engineContext);
      if (v7)
      {
        v8 = sub_1AF1BB260(v7);
        if (v8)
        {
          v9 = v8;
          if (sub_1AF15D690(v8) && (sub_1AF15D63C(v9) & 1) != 0)
          {
            v10 = sub_1AF15C5B4(v9);
            v11 = sub_1AF1614F0(v10);
            v12 = sub_1AF160E58(v10);
            if (v11 < v12)
            {
              v12 = v11;
            }

            v13 = v12;
            v14 = v12 + 1.0;
            if (v13 <= 0.01)
            {
              v14 = 1.01;
            }

            v15 = (5.0 / logf(v14) * 60.0);
            if (!v15)
            {
              goto LABEL_20;
            }
          }

          else
          {
            if ((sub_1AF15CEC0(v9) & 1) == 0)
            {
              goto LABEL_20;
            }

            v15 = 2;
          }

          adaptativeState0 = self->_adaptativeState0;
          if (adaptativeState0 != sub_1AF1CFF1C(v6))
          {
            self->_adaptativeState0 = sub_1AF1CFF1C(v6);
            self->_adaptativeEndFrame = sub_1AF1CFE84(v6) + v15;
          }

          if (sub_1AF1CFE84(v6) < self->_adaptativeEndFrame)
          {
            goto LABEL_2;
          }
        }
      }
    }

LABEL_20:
    LOBYTE(v5) = 0;
    return v5;
  }

LABEL_2:
  LOBYTE(v5) = 1;
  return v5;
}

- (double)_computeNextFrameTime
{
  v3 = sub_1AF12ED90(self->_engineContext);
  if (objc_msgSend__needsRedrawAsap(self, v4, v5, v6))
  {
    v7 = CACurrentMediaTime();
    if (v3 >= v7)
    {
      return v7;
    }
  }

  return v3;
}

- (void)_startCaptureIfNeeded
{
  if (self->_captureMetalFrameStarted || !self->_shouldCaptureNextMetalFrame)
  {
    return;
  }

  v5 = objc_msgSend_processInfo(MEMORY[0x1E696AE30], a2, v2, v3);
  v9 = objc_msgSend_environment(v5, v6, v7, v8);
  if (objc_msgSend_objectForKeyedSubscript_(v9, v10, @"XPC_SERVICE_NAME", v11))
  {
    goto LABEL_4;
  }

  v67 = objc_msgSend_processInfo(MEMORY[0x1E696AE30], v12, v13, v14);
  v71 = objc_msgSend_environment(v67, v68, v69, v70);
  v74 = objc_msgSend_objectForKeyedSubscript_(v71, v72, @"MTLCAPTURE_DESTINATION_DEVELOPER_TOOLS_ENABLE", v73);
  if (objc_msgSend_isEqual_(v74, v75, @"1", v76))
  {
    v15 = 0;
    v16 = 1;
    goto LABEL_6;
  }

  v80 = objc_msgSend_processInfo(MEMORY[0x1E696AE30], v77, v78, v79);
  v84 = objc_msgSend_environment(v80, v81, v82, v83);
  v87 = objc_msgSend_objectForKeyedSubscript_(v84, v85, @"MTL_CAPTURE_ENABLED", v86);
  if (objc_msgSend_isEqual_(v87, v88, @"1", v89))
  {
LABEL_4:
    v15 = 1;
  }

  else
  {
    v15 = 1;
    if ((byte_1EB658CD0 & 1) == 0)
    {
      byte_1EB658CD0 = 1;
      v90 = sub_1AF0D5194();
      if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF7F08();
      }
    }
  }

  v16 = 2;
LABEL_6:
  v17 = objc_alloc_init(MEMORY[0x1E6973FF8]);
  v21 = objc_msgSend_commandQueue(self->_renderContext, v18, v19, v20);
  objc_msgSend_setCaptureObject_(v17, v22, v21, v23);
  if (v15)
  {
    v27 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v24, v25, v26);
    v31 = objc_msgSend_temporaryDirectory(v27, v28, v29, v30);
    v34 = objc_msgSend_URLByAppendingPathComponent_(v31, v32, @"vfx-capture.gputrace", v33);
    objc_msgSend_setOutputURL_(v17, v35, v34, v36);
  }

  v91 = 0;
  v37 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v24, v25, v26);
  v41 = objc_msgSend_outputURL(v17, v38, v39, v40);
  v45 = objc_msgSend_path(v41, v42, v43, v44);
  if (objc_msgSend_fileExistsAtPath_(v37, v46, v45, v47))
  {
    v51 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v48, v49, v50);
    v55 = objc_msgSend_outputURL(v17, v52, v53, v54);
    objc_msgSend_removeItemAtURL_error_(v51, v56, v55, &v91);
    if (v91)
    {
      v57 = sub_1AF0D5194();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF7F44();
      }
    }
  }

  objc_msgSend_setDestination_(v17, v48, v16, v50);
  v91 = 0;
  v61 = objc_msgSend_sharedCaptureManager(MEMORY[0x1E6974000], v58, v59, v60);
  objc_msgSend_startCaptureWithDescriptor_error_(v61, v62, v17, &v91);
  if (v91)
  {
    v66 = sub_1AF0D5194();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF7F44();
    }
  }

  else
  {
    objc_msgSend_outputURL(v17, v63, v64, v65);
    *&self->_shouldCaptureNextMetalFrame = 256;
  }
}

- (void)_stopCapture
{
  if (self->_captureMetalFrameStarted)
  {
    v5 = objc_msgSend_sharedCaptureManager(MEMORY[0x1E6974000], a2, v2, v3);
    objc_msgSend_stopCapture(v5, v6, v7, v8);
    self->_captureMetalFrameStarted = 0;
  }
}

- (void)_render
{
  if ((*(self + 81) & 4) != 0)
  {
    drawableSize = self->__drawableSize;
    v58 = vcvt_hight_f32_f64(0, drawableSize);
    sub_1AF1305D0(self->_engineContext, COERCE_DOUBLE(vcvt_f32_f64(drawableSize)));
    sub_1AF130550(self->_engineContext, v58);
  }

  objc_msgSend_lock(self, a2, v2, v3, *&v58);
  v9 = sub_1AF130770(self->_engineContext, v6, v7, v8);
  prof_beginFlameSmallData("[VFXRenderer _render]", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/ObjC/VFXRenderer.mm", 3449, v9 | 0x300000000);
  v10 = 0.0;
  if (prof_getEnabled())
  {
    v10 = CACurrentMediaTime();
  }

  v11 = sub_1AF12DDCC(self->_engineContext);
  if (self->_engineContext && self->_renderContext)
  {
    v15 = v11;
    if (v11)
    {
      if ((*(self + 81) & 8) != 0)
      {
        isJitteringEnabled = 0;
      }

      else
      {
        isJitteringEnabled = objc_msgSend_isJitteringEnabled(self, v12, v13, v14);
      }

      sub_1AF1CEA20(v15);
      v21 = sub_1AF1CF8AC(v15);
      if (v21)
      {
        v20 = sub_1AF0FB884(v21);
        objc_msgSend_beginTransaction(v20, v25, v26, v27);
      }

      else
      {
        v20 = 0;
      }

      v28 = objc_msgSend_stats(self->_renderContext, v22, v23, v24);
      if ((*(self + 224) & 8) != 0)
      {
        sub_1AF134B58(v28);
      }

      else
      {
        *(v28 + 12) = 0;
      }

      sub_1AF1CFCF4(v15);
      if (isJitteringEnabled)
      {
        isJitteringEnabled = 1;
        sub_1AF1309A4(self->_engineContext, 1);
      }
    }

    else
    {
      isJitteringEnabled = 0;
      v20 = 0;
    }

    objc_msgSend__renderWorldOrRemoteData(self, v12, v13, v14);
    if (isJitteringEnabled)
    {
      sub_1AF1309A4(self->_engineContext, 1);
      objc_msgSend__endFrame(self, v32, v33, v34);
      for (i = 0; ; ++i)
      {
        objc_msgSend__beginFrame(self, v35, v36, v37);
        sub_1AF1309DC(self->_engineContext, i == 80);
        sub_1AF1309CC(self->_engineContext, i);
        objc_msgSend__renderWorldOrRemoteData(self, v39, v40, v41);
        if (i == 80)
        {
          break;
        }

        objc_msgSend__endFrame(self, v42, v43, v44);
      }

      sub_1AF1309A4(self->_engineContext, 0);
    }

    if (v15)
    {
      sub_1AF1CFD54(v15);
      objc_msgSend__computeNextFrameTime(self, v45, v46, v47);
      self->_nextFrameTime = v48;
      objc_msgSend_endFrameWorldSpecifics(self->_renderContext, v49, v50, v51);
      objc_msgSend_endTransaction(v20, v52, v53, v54);
      if (prof_getEnabled())
      {
        v55 = sub_1AF1D13B8(v15);
        v56 = sub_1AF1D1448(v15);
        v57 = CACurrentMediaTime();
        vfx_counters_update(v55, v56, v57 - v10);
      }

      sub_1AF1CEA9C(v15);
    }

    objc_msgSend_drawStatisticsIfNeeded(self, v29, v30, v31);
  }

  else
  {
    self->_nextFrameTime = INFINITY;
    objc_msgSend__clearBackBuffer(self, v12, v13, v14);
  }

  objc_msgSend_unlock(self, v17, v18, v19);

  prof_endFlame();
}

- (void)render
{
  objc_msgSend_lock(self, a2, v2, v3);
  objc_msgSend__beginFrame(self, v5, v6, v7);
  v8 = sub_1AF12DE5C(self->_engineContext);
  v9 = sub_1AF0D5194();
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = v9;
    if (os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v8, "RenderFrame", &unk_1AFF70A1D, buf, 2u);
    }
  }

  objc_msgSend__render(self, v10, v11, v12);
  v14 = sub_1AF0D5194();
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v18 = v14;
    if (os_signpost_enabled(v14))
    {
      *v22 = 0;
      _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v18, OS_SIGNPOST_INTERVAL_END, v8, "RenderFrame", &unk_1AFF70A1D, v22, 2u);
    }
  }

  objc_msgSend__endFrame(self, v15, v16, v17);
  objc_msgSend_unlock(self, v19, v20, v21);
}

- (void)renderWithTextureAttachmentProvider:(id)provider options:(id)options
{
  objc_msgSend_lock(self, a2, provider, options);
  objc_msgSend__startCaptureIfNeeded(self, v7, v8, v9);
  v143 = *self->__viewport;
  width = self->__drawableSize.width;
  height = self->__drawableSize.height;
  viewpointCoordinateSpace = self->_viewpointCoordinateSpace;
  isSideBySideStereo = objc_msgSend_isSideBySideStereo(options, v13, v14, v15);
  objc_msgSend_setSideBySideStereo_(self, v17, isSideBySideStereo, v18);
  objc_msgSend_setAttachmentProvider_(self->_renderContext, v19, provider, v20);
  v24 = objc_msgSend_commandBuffer(options, v21, v22, v23);
  objc_msgSend_setClientCommandBuffer_(self->_renderContext, v25, v24, v26);
  v30 = objc_msgSend_rayMap(options, v27, v28, v29);
  objc_msgSend_setRayMap_(self->_renderContext, v31, v30, v32);
  v36 = objc_msgSend_rasterizationRateMap(options, v33, v34, v35);
  objc_msgSend_setRasterizationRateMap_(self->_renderContext, v37, v36, v38);
  v42 = objc_msgSend_depthPixelFormat(self->_renderContext, v39, v40, v41);
  v46 = objc_msgSend_stencilPixelFormat(self->_renderContext, v43, v44, v45);
  v50 = objc_msgSend_depthPixelFormat(options, v47, v48, v49);
  if (VFXMTLTexturePixelFormatIsDepth(v50))
  {
    v54 = objc_msgSend_depthPixelFormat(options, v51, v52, v53);
    objc_msgSend_setDepthPixelFormat_(self->_renderContext, v55, v54, v56);
  }

  v57 = objc_msgSend_stencilPixelFormat(options, v51, v52, v53);
  if (VFXMTLTexturePixelFormatIsStencil(v57))
  {
    v61 = objc_msgSend_stencilPixelFormat(options, v58, v59, v60);
    objc_msgSend_setStencilPixelFormat_(self->_renderContext, v62, v61, v63);
  }

  if (objc_msgSend_viewpoints(options, v58, v59, v60))
  {
    self->_viewpoints = objc_msgSend_viewpoints(options, v64, v65, v66);
    self->_viewpointCoordinateSpace = objc_msgSend_coordinateSpace(options, v67, v68, v69);
    v73 = objc_msgSend_finalColorDescriptor(provider, v70, v71, v72);
    v76 = objc_msgSend_objectAtIndexedSubscript_(self->_viewpoints, v74, 0, v75);
    if (v76)
    {
      objc_msgSend_viewport(v76, v77, v78, v79);
      v80 = vcvt_hight_f32_f64(vcvt_f32_f64(0), 0);
    }

    else
    {
      v80 = 0uLL;
    }

    v142 = v80;
    if (v73)
    {
      *v95.i32 = objc_msgSend_width(v73, v77, v78, v79);
      v141 = v95;
      v99 = objc_msgSend_height(v73, v96, v97, v98);
      v92 = v141;
      *&v92.i32[1] = v99;
    }

    else
    {
      v92 = vextq_s8(v80, v80, 8uLL);
    }

    v93 = *v92.i32;
    if (self->__drawableSize.width == *v92.i32)
    {
      v94 = *&v92.i32[1];
      if (self->__drawableSize.height == *&v92.i32[1])
      {
        goto LABEL_18;
      }
    }

    else
    {
      v94 = *&v92.i32[1];
    }

    goto LABEL_17;
  }

  v81 = objc_msgSend_finalColorDescriptor(provider, v64, v65, v66);
  *v85.i32 = objc_msgSend_width(v81, v82, v83, v84);
  v141 = v85;
  v89 = objc_msgSend_height(v81, v86, v87, v88);
  v90 = v89;
  v91.n128_u64[0] = 0;
  v91.n128_u64[1] = __PAIR64__(v89, v141.u32[0]);
  v142 = v91;
  v92 = v141;
  *&v92.i32[1] = v89;
  v93 = *v141.i32;
  if (self->__drawableSize.width != *v141.i32)
  {
    v94 = v90;
LABEL_17:
    v141 = v92;
    sub_1AF12E8B4(self->_engineContext);
    sub_1AF12E8AC(self->_engineContext);
    v92.i64[0] = v141.i64[0];
    goto LABEL_18;
  }

  v94 = v90;
  if (self->__drawableSize.height != v90)
  {
    goto LABEL_17;
  }

LABEL_18:
  self->__drawableSize.width = v93;
  self->__drawableSize.height = v94;
  *self->__viewport = v142;
  sub_1AF1305D0(self->_engineContext, *v92.i64);
  sub_1AF130550(self->_engineContext, v142);
  engineContext = self->_engineContext;
  objc_msgSend__contentsScaleFactor(self, v101, v102, v103);
  sub_1AF130850(engineContext, v104);
  lastOptionsHash = self->_lastOptionsHash;
  if (lastOptionsHash != objc_msgSend_hash(options, v106, v107, v108))
  {
    sub_1AF12E8AC(self->_engineContext);
    self->_lastOptionsHash = objc_msgSend_hash(options, v111, v112, v113);
  }

  objc_msgSend_beginFrame_(self->_renderContext, v109, 0, v110, *&v141);
  objc_msgSend__render(self, v114, v115, v116);
  renderContext = self->_renderContext;
  v121 = objc_msgSend_waitUntilCompleted(options, v118, v119, v120);
  objc_msgSend_endFrameWaitingUntilCompleted_status_error_(renderContext, v122, v121, 0, 0);
  objc_msgSend_setAttachmentProvider_(self->_renderContext, v123, 0, v124);
  self->_viewpointCoordinateSpace = viewpointCoordinateSpace;
  objc_msgSend_setClientCommandBuffer_(self->_renderContext, v125, 0, v126);
  objc_msgSend_setRayMap_(self->_renderContext, v127, 0, v128);
  objc_msgSend_setRasterizationRateMap_(self->_renderContext, v129, 0, v130);
  objc_msgSend_setDepthPixelFormat_(self->_renderContext, v131, v42, v132);
  objc_msgSend_setStencilPixelFormat_(self->_renderContext, v133, v46, v134);
  if (self->__drawableSize.width != width || self->__drawableSize.height != height)
  {
    sub_1AF12E8B4(self->_engineContext);
    sub_1AF12E8AC(self->_engineContext);
  }

  self->__drawableSize.width = width;
  self->__drawableSize.height = height;
  *self->__viewport = v143;
  sub_1AF130550(self->_engineContext, v143);
  sub_1AF1305D0(self->_engineContext, *vextq_s8(*self->__viewport, *self->__viewport, 8uLL).i64);
  self->_viewpoints = 0;
  objc_msgSend__stopCapture(self, v135, v136, v137);
  objc_msgSend_unlock(self, v138, v139, v140);
}

- (void)renderToTexture:(id)texture options:(id)options
{
  objc_msgSend_lock(self, a2, texture, options);
  v26 = *self->__viewport;
  v7 = [VFXRenderToTextureFinalAttachmentProvider alloc];
  v10 = objc_msgSend_initWithTexture_(v7, v8, texture, v9);
  shouldLoadFinalColor = objc_msgSend_shouldLoadFinalColor(options, v11, v12, v13);
  objc_msgSend_setShouldLoad_(v10, v15, shouldLoadFinalColor, v16);
  engineContext = self->_engineContext;
  v21 = objc_msgSend_disableCoreRendering(options, v18, v19, v20);
  sub_1AF131174(engineContext, v21);
  objc_msgSend_renderWithTextureAttachmentProvider_options_(self, v22, v10, options);

  *self->__viewport = v26;
  sub_1AF130550(self->_engineContext, v26);
  sub_1AF1305D0(self->_engineContext, *vextq_s8(*self->__viewport, *self->__viewport, 8uLL).i64);

  objc_msgSend_unlock(self, v23, v24, v25);
}

- (void)renderWithViewport:(CGRect)viewport commandBuffer:(id)buffer passDescriptor:(id)descriptor
{
  objc_msgSend_commandQueue(buffer, a2, buffer, descriptor);

  MEMORY[0x1EEE66B58](self, sel__renderWithViewport_encoder_passDescriptor_commandQueue_commandBuffer_, 0, descriptor);
}

- (void)_renderWithViewport:(CGRect)viewport encoder:(id)encoder passDescriptor:(id)descriptor commandQueue:(id)queue commandBuffer:(id)buffer
{
  y = viewport.origin.y;
  width = viewport.size.width;
  v101 = *&viewport.size.height;
  x = viewport.origin.x;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = sub_1AF0D5194();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF7FBC(v15, v12, v13, v14, v16, v17, v18, v19);
    }
  }

  v20 = objc_msgSend_colorAttachments(descriptor, v12, v13, v14, v101);
  v23 = objc_msgSend_objectAtIndexedSubscript_(v20, v21, 0, v22);
  v27 = objc_msgSend_texture(v23, v24, v25, v26);
  v31 = objc_msgSend_sampleCount(v27, v28, v29, v30);
  if (v31 == 2)
  {
    objc_msgSend_setAntialiasingMode_(self, v32, 1, v33);
  }

  else
  {
    objc_msgSend_setAntialiasingMode_(self, v32, 2 * (v31 == 4), v33);
  }

  objc_msgSend_setClientRenderPassDescriptor_(self->_renderContext, v34, descriptor, v35);
  v39 = objc_msgSend_depthAttachment(descriptor, v36, v37, v38);
  v43 = objc_msgSend_texture(v39, v40, v41, v42);
  if (encoder)
  {
    if (v43)
    {
      v47 = objc_msgSend_depthAttachment(descriptor, v44, v45, v46);
      objc_msgSend_clearDepth(v47, v48, v49, v50);
      if (v51 == 1.0 && (byte_1EB658CD1 & 1) == 0)
      {
        byte_1EB658CD1 = 1;
        v52 = sub_1AF0D5194();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDF8034();
        }
      }
    }
  }

  objc_msgSend_setClientCommandQueue_(self->_renderContext, v44, queue, v46);
  objc_msgSend_setClientRenderCommandEncoder_(self->_renderContext, v53, encoder, v54);
  objc_msgSend_setClientCommandBuffer_(self->_renderContext, v55, buffer, v56);
  v60 = objc_msgSend_colorAttachments(descriptor, v57, v58, v59);
  v63 = objc_msgSend_objectAtIndexedSubscript_(v60, v61, 0, v62);
  v70 = objc_msgSend_resolveTexture(v63, v64, v65, v66);
  if (!v70)
  {
    v71 = objc_msgSend_colorAttachments(descriptor, v67, v68, v69);
    v74 = objc_msgSend_objectAtIndexedSubscript_(v71, v72, 0, v73);
    v70 = objc_msgSend_texture(v74, v75, v76, v77);
  }

  v78.f64[0] = width;
  v79.f64[0] = x;
  v78.f64[1] = v102;
  v79.f64[1] = y;
  v80 = vcvt_hight_f32_f64(vcvt_f32_f64(v79), v78);
  v105 = v80;
  if (v70)
  {
    v107 = objc_msgSend_width(v70, v67, v68, v69);
    v84 = objc_msgSend_height(v70, v81, v82, v83);
    *&v85 = v107;
    *(&v85 + 1) = v84;
  }

  else
  {
    v85 = vextq_s8(v80, v80, 8uLL).u64[0];
  }

  v86 = *&v85;
  v108 = *&v85;
  if (self->__drawableSize.width == *&v85)
  {
    v87 = *(&v85 + 1);
    if (self->__drawableSize.height == *(&v85 + 1))
    {
      goto LABEL_22;
    }
  }

  else
  {
    v87 = *(&v85 + 1);
  }

  sub_1AF12E8B4(self->_engineContext);
  sub_1AF12E8AC(self->_engineContext);
LABEL_22:
  self->__drawableSize.width = v86;
  self->__drawableSize.height = v87;
  *self->__viewport = v105;
  sub_1AF130550(self->_engineContext, v105);
  sub_1AF1305D0(self->_engineContext, v108);
  objc_msgSend__startCaptureIfNeeded(self, v88, v89, v90);
  if (v70)
  {
    objc_msgSend_beginFrame_(self->_renderContext, v91, v70, v92);
    objc_msgSend__render(self, v93, v94, v95);
    objc_msgSend_endFrameWaitingUntilCompleted_status_error_(self->_renderContext, v96, 0, 0, 0);
  }

  else
  {
    v100 = sub_1AF0D5194();
    if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF8070();
    }
  }

  objc_msgSend__stopCapture(self, v97, v98, v99);
}

- (void)renderWithCommandBuffer:(id)buffer viewPoints:(id)points mode:(unint64_t)mode
{
  self->_viewpoints = points;
  self->_viewpointCoordinateSpace = mode;
  if (points)
  {
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    v7 = objc_msgSend_objectAtIndexedSubscript_(points, a2, 0, points);
    if (v7)
    {
      objc_msgSend_viewport(v7, v8, v9, v10);
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
      v17 = 0u;
    }

    v11 = objc_msgSend_objectAtIndexedSubscript_(self->_viewpoints, v8, 0, v10, v17, v18, v19);
    v15 = objc_msgSend_passDescriptor(v11, v12, v13, v14);
    objc_msgSend_renderWithViewport_commandBuffer_passDescriptor_(self, v16, buffer, v15, 0.0, 0.0, 0.0, 0.0);
    self->_viewpoints = 0;
  }
}

- (id)makeCompatibleRenderer
{
  v5 = objc_msgSend_device(self, a2, v2, v3);
  v7 = objc_msgSend_rendererWithDevice_options_(VFXRenderer, v6, v5, 0);
  v11 = objc_msgSend_antialiasingMode(self, v8, v9, v10);
  objc_msgSend_setAntialiasingMode_(v7, v12, v11, v13);
  v17 = objc_msgSend_pixelFormat(self, v14, v15, v16);
  objc_msgSend_setPixelFormat_(v7, v18, v17, v19);
  v23 = objc_msgSend_backgroundColor(self, v20, v21, v22);
  objc_msgSend_setBackgroundColor_(v7, v24, v23, v25);
  v29 = objc_msgSend_debugOptions(self, v26, v27, v28);
  objc_msgSend_setDebugOptions_(v7, v30, v29, v31);
  v35 = objc_msgSend_rendererKind(self, v32, v33, v34);
  objc_msgSend_setRendererKind_(v7, v36, v35, v37);
  objc_msgSend__backingSize(self, v38, v39, v40);
  objc_msgSend__setBackingSize_(v7, v41, v42, v43);
  objc_msgSend__viewport(self, v44, v45, v46);
  objc_msgSend_set_viewport_(v7, v47, v48, v49);
  objc_msgSend__contentsScaleFactor(self, v50, v51, v52);
  objc_msgSend__setContentsScaleFactor_(v7, v53, v54, v55);
  return v7;
}

- (void)transferRenderGraphResourcesFrom:(id)from
{
  v4 = sub_1AF12E8A4(self->_engineContext);
  v8 = objc_msgSend__engineContext(from, v5, v6, v7);
  v9 = sub_1AF12E8A4(v8);

  sub_1AF270DD0(v4, v9);
}

- (id)_newRenderTargetWithSize:(CGSize)size
{
  memset(v8, 0, sizeof(v8));
  CFXTextureDescriptorMake2D(size.width, size.height, self->_pixelFormat, v8);
  *&v8[12] = *&v8[12] & 0xFFFF8F00FFFFFFFFLL | 0x400000000;
  v4 = sub_1AF13099C(self->_engineContext);
  v6 = *v8;
  v7 = *&v8[16];
  return CFXGPUDeviceCreateTexture(v4, &v6);
}

- (id)_newLayeredRenderTargetWithSize:(CGSize)size arrayLength:(unsigned int)length
{
  memset(v9, 0, sizeof(v9));
  CFXTextureDescriptorMake2DArray(size.width, size.height, *&length, self->_pixelFormat, v9);
  *&v9[12] = *&v9[12] & 0xFFFF8F00FFFFFFFFLL | 0x400000000;
  v5 = sub_1AF13099C(self->_engineContext);
  v7 = *v9;
  v8 = *&v9[16];
  return CFXGPUDeviceCreateTexture(v5, &v7);
}

- (BOOL)prepareObject:(id)object shouldAbortBlock:(id)block
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v8 = sub_1AF12DE5C(self->_engineContext);
    v9 = sub_1AF0D5194();
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v13 = v9;
      if (os_signpost_enabled(v9))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PrepareObject", &unk_1AFF70A1D, buf, 2u);
      }
    }

    objc_msgSend_flush(VFXTransaction, v10, v11, v12);
    v17 = objc_msgSend_worldRef(object, v14, v15, v16);
    objc_msgSend_lock(self, v18, v19, v20);
    v24 = objc_msgSend_world(self, v21, v22, v23);
    v28 = objc_msgSend_pointOfView(self, v25, v26, v27);
    objc_msgSend_setWorld_(self, v29, object, v30);
    sub_1AF1CEA20(v17);
    v34 = objc_msgSend__engineContext(self, v31, v32, v33);
    sub_1AF130454(v34, block);
    v38 = objc_msgSend_immediateMode(VFXTransaction, v35, v36, v37);
    objc_msgSend_setImmediateMode_(VFXTransaction, v39, 1, v40);
    v44 = objc_msgSend_presentationScene(object, v41, v42, v43);
    v48 = sub_1AF130C80(self->_engineContext, v45, v46, v47);
    objc_msgSend_prepareWithRenderer_(v44, v49, v48, v50);
    objc_msgSend_updateAtTime_(self, v51, v52, v53, self->_time);
    objc_msgSend_setImmediateMode_(VFXTransaction, v54, v38, v55);
    v56 = objc_alloc_init(VFXRenderOptions);
    objc_msgSend_setWaitUntilCompleted_(v56, v57, 1, v58);
    objc_msgSend_setDisableCoreRendering_(v56, v59, self->_isSetupForRE, v60);
    if (self->_isSetupForRE)
    {
      objc_msgSend_setRendererKind_(self, v61, 0, v63);
      objc_msgSend_setDepthPixelFormat_(v56, v64, 252, v65);
      objc_msgSend_setStencilPixelFormat_(v56, v66, 253, v67);
      objc_msgSend_setPixelFormat_(self, v68, 81, v69);
      v72 = objc_msgSend__newLayeredRenderTargetWithSize_arrayLength_(self, v70, 2, v71, 16.0, 16.0);
      objc_msgSend_renderToTexture_options_(self, v73, v72, v56);

      objc_msgSend_setPixelFormat_(self, v74, 115, v75);
      v78 = objc_msgSend__newLayeredRenderTargetWithSize_arrayLength_(self, v76, 2, v77, 16.0, 16.0);
      objc_msgSend_renderToTexture_options_(self, v79, v78, v56);
    }

    else
    {
      v78 = objc_msgSend__newRenderTargetWithSize_(self, v61, v62, v63, 16.0, 16.0);
      objc_msgSend_renderToTexture_options_(self, v81, v78, v56);
      if (objc_msgSend_hasMissingParticlePipelineState(self, v82, v83, v84))
      {
        objc_msgSend_renderToTexture_options_(self, v85, v78, v56);
      }
    }

    v89 = objc_msgSend__engineContext(self, v86, v87, v88);
    sub_1AF1304B0(v89);
    objc_msgSend_setWorld_(self, v90, v24, v91);
    objc_msgSend_setPointOfView_(self, v92, v28, v93);
    sub_1AF1CEA9C(v17);
    objc_msgSend_unlock(self, v94, v95, v96);
    v100 = objc_msgSend__renderContextMetal(self, v97, v98, v99);
    v104 = objc_msgSend_resourceManager(v100, v101, v102, v103);
    v105 = sub_1AFDE868C(v104);
    objc_msgSend_waitForShadersCompilation(v105, v106, v107, v108);
    v109 = sub_1AF0D5194();
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v110 = v109;
      if (os_signpost_enabled(v109))
      {
        *v112 = 0;
        _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v110, OS_SIGNPOST_INTERVAL_END, v8, "PrepareObject", &unk_1AFF70A1D, v112, 2u);
      }
    }
  }

  else
  {
    v80 = sub_1AF0D5194();
    if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF80AC();
    }
  }

  return isKindOfClass & 1;
}

- (void)prepareObjects:(id)objects withCompletionHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = sub_1AF0D5194();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF80E8();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(objects, v8, &v14, v18, 16);
  if (v9)
  {
    v11 = v9;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(objects);
        }

        objc_msgSend_prepareObject_shouldAbortBlock_(self, v10, *(*(&v14 + 1) + 8 * v13++), 0);
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(objects, v10, &v14, v18, 16);
    }

    while (v11);
  }

  if (handler)
  {
    (*(handler + 2))(handler, 1);
  }
}

- (CGImage)_createBackgroundColorImageWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = size.width;
  v7 = size.height;
  v8 = 4 * (size.width & 0x3FFFFFFF);
  v9 = malloc_type_malloc(v8 * size.height, 0x100004077774924uLL);
  v10 = sub_1AF164420();
  v11 = CGBitmapContextCreate(v9, v6, v7, 8uLL, v8, v10, 0x4001u);
  v15 = objc_msgSend_backgroundColor(self, v12, v13, v14);
  v19 = objc_msgSend_CGColor(v15, v16, v17, v18);
  CGContextSetFillColorWithColor(v11, v19);
  v22.size.width = width;
  v22.size.height = height;
  v22.origin.x = 0.0;
  v22.origin.y = 0.0;
  CGContextFillRect(v11, v22);
  Image = CGBitmapContextCreateImage(v11);
  CGContextRelease(v11);
  free(v9);
  return Image;
}

- (id)snapshotWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  objc_msgSend_lock(self, a2, v3, v4);
  SnapshotWithSize_error = objc_msgSend__createSnapshotWithSize_error_(self, v8, 0, v9, width, height);
  if (!SnapshotWithSize_error)
  {
    SnapshotWithSize_error = objc_msgSend__createBackgroundColorImageWithSize_(self, v10, v11, v12, width, height);
  }

  v14 = objc_msgSend_imageWithCGImage_(MEMORY[0x1E69DCAB8], v10, SnapshotWithSize_error, v12);
  CGImageRelease(SnapshotWithSize_error);
  objc_msgSend_unlock(self, v15, v16, v17);
  return v14;
}

- (CGImage)_createSnapshotWithSize:(CGSize)size error:(id *)error
{
  width = size.width;
  v7 = rintf(width);
  height = size.height;
  v9 = rintf(height);
  if ((*(self + 81) & 4) == 0)
  {
    objc_msgSend__setBackingSize_(self, a2, error, v4, v7, v9);
  }

  v10 = objc_msgSend__newRenderTargetWithSize_(self, a2, error, v4, v7, v9);
  v11 = objc_alloc_init(VFXRenderOptions);
  objc_msgSend_setWaitUntilCompleted_(v11, v12, 1, v13);
  objc_msgSend_renderToTexture_options_(self, v14, v10, v11);

  v18 = sub_1AF1F2C7C(v10, v15, v16, v17);
  return v18;
}

- (void)_updateProbes:(id)probes progress:(id)progress completionHandler:(id)handler
{
  objc_msgSend_becomeCurrentWithPendingUnitCount_(progress, a2, 1, progress);
  v9 = CACurrentMediaTime();
  objc_msgSend_updateProbes_atTime_completionHandler_(self, v10, probes, handler, v9);

  MEMORY[0x1EEE66B58](progress, sel_resignCurrent, v11, v12);
}

- (void)updateProbes:(id)probes atTime:(double)time completionHandler:(id)handler
{
  if (!objc_msgSend_world(self, a2, probes, handler, time))
  {
    v11 = sub_1AF0D5194();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF8124(v11, v8, v9, v10, v12, v13, v14, v15);
    }
  }

  v16 = objc_msgSend_world(self, v8, v9, v10);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1AF323510;
  v18[3] = &unk_1E7A7EFB8;
  v18[4] = self;
  v18[5] = probes;
  v18[6] = handler;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v17, v16, v18);
}

- (void)_jitterAtStep:(unint64_t)step updateMainFramebuffer:(BOOL)framebuffer redisplay:(BOOL)redisplay jitterer:(id)jitterer
{
  renderingQueue = self->__renderingQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1AF323918;
  v7[3] = &unk_1E7A7EFE0;
  v7[4] = self;
  v7[5] = jitterer;
  v7[6] = step;
  framebufferCopy = framebuffer;
  redisplayCopy = redisplay;
  dispatch_sync(renderingQueue, v7);
}

- (void)_addGPUFrameScheduledHandler:(id)handler
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF323AA4;
  v3[3] = &unk_1E7A7F008;
  v3[4] = self;
  v3[5] = handler;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, 0, v3);
}

- (void)_addGPUFrameCompletedHandler:(id)handler
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF323B2C;
  v3[3] = &unk_1E7A7F008;
  v3[4] = self;
  v3[5] = handler;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, 0, v3);
}

- (void)_addGPUFramePresentedHandler:(id)handler
{
  if ((*(self + 81) & 4) != 0)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1AF323C00;
    v8[3] = &unk_1E7A7F008;
    v8[4] = self;
    v8[5] = handler;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, 0, v8);
  }

  else
  {
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF819C();
    }

    objc_msgSend__addGPUFrameCompletedHandler_(self, v6, handler, v7);
  }
}

- (void)_discardPendingGPUFrameScheduledHandlers
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF323C88;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, 0, v2);
}

- (void)_discardPendingGPUFrameCompletedHandlers
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF323D10;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, 0, v2);
}

- (void)_discardPendingGPUFramePresentedHandlers
{
  if ((*(self + 81) & 4) != 0)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1AF323DD4;
    v7[3] = &unk_1E7A7E1D0;
    v7[4] = self;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, 0, v7);
  }

  else
  {
    v3 = sub_1AF0D5194();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF821C();
    }

    objc_msgSend__discardPendingGPUFrameCompletedHandlers(self, v4, v5, v6);
  }
}

- (void)_allowGPUBackgroundExecution
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF323E5C;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, 0, v2);
}

- (void)_interfaceOrientationDidChange
{
  if ((*(self + 81) & 8) != 0)
  {
    v11 = objc_msgSend_window(self->_privateRendererOwner, a2, v2, v3);
    v15 = objc_msgSend_windowScene(v11, v12, v13, v14);
    v9 = objc_msgSend_interfaceOrientation(v15, v16, v17, v18);
  }

  else
  {
    v5 = objc_msgSend_sharedApplication(MEMORY[0x1E69DC668], a2, v2, v3);
    v9 = objc_msgSend_statusBarOrientation(v5, v6, v7, v8);
  }

  MEMORY[0x1EEE66B58](self, sel__setInterfaceOrientation_, v9, v10);
}

- (void)_setInterfaceOrientation:(int64_t)orientation
{
  orientationCopy = orientation;
  objc_msgSend_lock(self, a2, orientation, v3);
  sub_1AF1305E0(self->_engineContext, orientationCopy);

  objc_msgSend_unlock(self, v6, v7, v8);
}

- (BOOL)hasMissingParticlePipelineState
{
  v2 = sub_1AF12DF70(self->_engineContext);
  if (v2)
  {

    LOBYTE(v2) = sub_1AF70C94C(v2);
  }

  return v2;
}

- (void)setRenderGraph:(id)graph
{
  if (self->_renderGraph != graph)
  {
    objc_msgSend_lock(self, a2, graph, v3);

    self->_renderGraph = graph;
    objc_msgSend_invalidateCompiledGraph(graph, v7, v8, v9);
    objc_msgSend_prepareForLoad(graph, v10, v11, v12);
    sub_1AF12F878(self->_engineContext, self->_renderGraph);

    objc_msgSend_unlock(self, v13, v14, v15);
  }
}

- (void)set_triggersEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  objc_msgSend_lock(self, a2, enabled, v3);
  if (enabledCopy)
  {
    v6 = 32;
  }

  else
  {
    v6 = 0;
  }

  *(self + 224) = *(self + 224) & 0xDF | v6;
  sub_1AF130D50(self->_engineContext, enabledCopy);

  objc_msgSend_unlock(self, v7, v8, v9);
}

- (void)setBinaryArchives:(id)archives
{
  v5 = objc_msgSend_copy(archives, a2, archives, v3);
  v9 = objc_msgSend_resourceManager(self->_renderContext, v6, v7, v8);
  sub_1AFDE79B4(v9);
  v13 = objc_msgSend_resourceManager(self->_renderContext, v10, v11, v12);
  sub_1AFDE79F4(v13);
  objc_msgSend_device(self, v14, v15, v16);

  VFXCoreSetBinaryArchives();
}

- (NSArray)binaryArchives
{
  v4 = objc_msgSend_resourceManager(self->_renderContext, a2, v2, v3);

  return sub_1AFDE79F4(v4);
}

+ (void)logSharedResources
{
  v6 = CFXMTLCreateSystemDefaultDevice();
  v2 = sub_1AF20C050(VFXMTLResourceManager, v6);
  sub_1AFDE78D8(v2, v3, v4, v5);
  sub_1AF20C174();
}

- (VFXRenderer)initWithCommandQueue:(id)queue
{
  v9.receiver = self;
  v9.super_class = VFXRenderer;
  v4 = [(VFXRenderer *)&v9 init];
  v7 = v4;
  if (v4)
  {
    objc_msgSend_setupLegacyRendererWithCommandQueue_(v4, v5, queue, v6);
  }

  return v7;
}

- (id)setupLegacyRendererWithCommandQueue:(id)queue
{
  v5 = [_TtC3VFX17VFXRendererLegacy alloc];
  v8 = objc_msgSend_initWithCommandQueue_(v5, v6, queue, v7);
  v12 = objc_msgSend_backgroundColor(self, v9, v10, v11);
  objc_msgSend_setBackgroundColor_(v8, v13, v12, v14);
  v18 = objc_msgSend_world(self, v15, v16, v17);
  v22 = objc_msgSend_scene(v18, v19, v20, v21);
  objc_msgSend_setScene_(v8, v23, v22, v24);
  objc_msgSend_set_legacyRenderer_(self, v25, v8, v26);

  return objc_msgSend__legacyRenderer(self, v27, v28, v29);
}

- (id)legacyRenderer
{
  result = objc_msgSend__legacyRenderer(self, a2, v2, v3);
  if (!result)
  {

    return objc_msgSend_setupLegacyRendererWithCommandQueue_(self, v6, 0, v7);
  }

  return result;
}

- (_TtC3VFX8VFXScene)scene
{
  v4 = objc_msgSend_legacyRenderer(self, a2, v2, v3);

  return objc_msgSend_scene(v4, v5, v6, v7);
}

- (void)setScene:(id)scene
{
  v5 = objc_msgSend_legacyRenderer(self, a2, scene, v3);

  objc_msgSend_setScene_(v5, v6, scene, v7);
}

- (_TtC3VFX9VFXEffect)effect
{
  v4 = objc_msgSend_legacyRenderer(self, a2, v2, v3);

  return MEMORY[0x1EEE66B58](v4, sel_effect, v5, v6);
}

- (void)setEffect:(id)effect
{
  v5 = objc_msgSend_legacyRenderer(self, a2, effect, v3);

  MEMORY[0x1EEE66B58](v5, sel_setEffect_, effect, v6);
}

- (MTLTexture)texture
{
  v4 = objc_msgSend_legacyRenderer(self, a2, v2, v3);

  return objc_msgSend_texture(v4, v5, v6, v7);
}

- (void)setTexture:(id)texture
{
  v5 = objc_msgSend_legacyRenderer(self, a2, texture, v3);

  objc_msgSend_setTexture_(v5, v6, texture, v7);
}

- (MTLTexture)depthTexture
{
  v4 = objc_msgSend_legacyRenderer(self, a2, v2, v3);

  return MEMORY[0x1EEE66B58](v4, sel_depthTexture, v5, v6);
}

- (void)setDepthTexture:(id)texture
{
  v5 = objc_msgSend_legacyRenderer(self, a2, texture, v3);

  objc_msgSend_setDepthTexture_(v5, v6, texture, v7);
}

- (BOOL)hasRenderableObjects
{
  v4 = objc_msgSend_legacyRenderer(self, a2, v2, v3);

  return MEMORY[0x1EEE66B58](v4, sel_hasRenderableObjects, v5, v6);
}

- (void)encodeWithCommandBuffer:(id)buffer
{
  v5 = objc_msgSend_legacyRenderer(self, a2, buffer, v3);

  MEMORY[0x1EEE66B58](v5, sel_encodeWithCommandBuffer_, buffer, v6);
}

- (void)finalizeEncoding
{
  v4 = objc_msgSend_legacyRenderer(self, a2, v2, v3);

  MEMORY[0x1EEE66B58](v4, sel_finalizeEncoding, v5, v6);
}

- (BOOL)enableDeferredRendering
{
  v4 = objc_msgSend_legacyRenderer(self, a2, v2, v3);

  return MEMORY[0x1EEE66B58](v4, sel_enableDeferredRendering, v5, v6);
}

- (void)setEnableDeferredRendering:(BOOL)rendering
{
  renderingCopy = rendering;
  v5 = objc_msgSend_legacyRenderer(self, a2, rendering, v3);

  MEMORY[0x1EEE66B58](v5, sel_setEnableDeferredRendering_, renderingCopy, v6);
}

- (BOOL)_legacyAdditiveWritesToAlpha
{
  v4 = objc_msgSend_legacyRenderer(self, a2, v2, v3);

  return objc_msgSend_additiveWritesToAlpha(v4, v5, v6, v7);
}

- (void)_setLegacyAdditiveWritesToAlpha:(BOOL)alpha
{
  alphaCopy = alpha;
  v5 = objc_msgSend_legacyRenderer(self, a2, alpha, v3);

  objc_msgSend_setAdditiveWritesToAlpha_(v5, v6, alphaCopy, v7);
}

- (id)snapshotWithSize:(CGSize)size deltaTime:(double)time
{
  v6 = objc_msgSend_legacyRenderer(self, a2, v4, v5);

  return MEMORY[0x1EEE66B58](v6, sel_snapshotWithSize_deltaTime_, v7, v8);
}

- (id)snapshotImageWithSize:(CGSize)size deltaTime:(double)time
{
  v6 = objc_msgSend_legacyRenderer(self, a2, v4, v5);

  return MEMORY[0x1EEE66B58](v6, sel_snapshotImageWithSize_deltaTime_, v7, v8);
}

- (id)postRenderCallback
{
  v4 = objc_msgSend_legacyRenderer(self, a2, v2, v3);

  return MEMORY[0x1EEE66B58](v4, sel_postRenderCallback, v5, v6);
}

- (void)setPostRenderCallback:(id)callback
{
  v5 = objc_msgSend_legacyRenderer(self, a2, callback, v3);

  MEMORY[0x1EEE66B58](v5, sel_setPostRenderCallback_, callback, v6);
}

- (BOOL)renderMovieToURL:(id)l size:(CGSize)size antialiasingMode:(unint64_t)mode attributes:(id)attributes error:(id *)error
{
  height = size.height;
  width = size.width;
  v14 = [VFXMovieExportOperation alloc];
  v16 = objc_msgSend_initWithRenderer_size_attributes_outputURL_(v14, v15, self, attributes, l, width, height);
  objc_msgSend_setAntialiasingMode_(v16, v17, mode, v18);
  objc_msgSend_main(v16, v19, v20, v21);
  v25 = objc_msgSend_error(v16, v22, v23, v24);
  v29 = v25;
  if (error && v25)
  {
    *error = objc_msgSend_error(v16, v26, v27, v28);
  }

  return v29 == 0;
}

@end