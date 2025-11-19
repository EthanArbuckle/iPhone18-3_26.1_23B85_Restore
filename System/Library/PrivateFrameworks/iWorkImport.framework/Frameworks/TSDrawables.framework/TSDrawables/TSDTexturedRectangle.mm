@interface TSDTexturedRectangle
+ (CGRect)boundingRectForTextures:(id)a3;
+ (CGRect)boundingRectOnCanvasForTextures:(id)a3;
- (BOOL)canReuseMetalTextureWith:(id)a3;
- (BOOL)isBackgroundTexture;
- (BOOL)isMetalTextureSetup;
- (BOOL)isRenderable;
- (BOOL)p_shouldUseFloatTextures;
- (CALayer)parentLayer;
- (CGAffineTransform)p_transformWithAngle:(SEL)a3 scale:(double)a4 offset:(double)a5;
- (CGColorSpace)p_colorSpace;
- (CGImage)image;
- (CGPoint)offset;
- (CGPoint)originalPosition;
- (CGRect)contentRect;
- (CGRect)convertToCanvasCoordinates:(CGRect)a3;
- (CGRect)frame;
- (CGRect)frameOnCanvas;
- (CGRect)leadingCaretRect;
- (CGRect)originalFrame;
- (CGRect)trailingCaretRect;
- (CGSize)p_textureSizeWithMaxSize:(CGSize)a3;
- (CGSize)size;
- (MTLTexture)metalTexture;
- (NSOperation)renderingOperation;
- (NSOperation)renderingOperationMetal;
- (NSString)description;
- (TSDBitmapRenderingQualityInfo)bitmapRenderingQualityInfo;
- (TSDTextureSet)parent;
- (TSDTexturedRectangle)initWithCGImage:(CGImage *)a3;
- (TSDTexturedRectangle)initWithLayer:(id)a3;
- (TSDTexturedRectangle)initWithLayer:(id)a3 forMetalTexture:(id)a4;
- (TSDTexturedRectangle)initWithMetalTexture:(id)a3 frame:(CGRect)a4;
- (TSDTexturedRectangle)initWithSize:(CGSize)a3 offset:(CGPoint)a4 renderBlock:(id)a5;
- (TSDTexturedRectangle)liveTexturedRectangleSourceProxy;
- (TSUBezierPath)shapePath;
- (TSUColor)textBorderColor;
- (TSUColor)textColor;
- (_NSRange)textRange;
- (double)hdrHeadroom;
- (double)singleTextureOpacity;
- (id)copyWithZone:(_NSZone *)a3;
- (id)metalTextureWithContext:(id)a3;
- (id)p_newImageAndBufferWithTransform:(CGAffineTransform *)a3;
- (id)p_rasterizationBlockWithBitmapSize:(CGSize)a3;
- (id)shortDescription;
- (id)viewLayerAtEventIndex:(unint64_t)a3;
- (unint64_t)p_metalPixelFormat;
- (unint64_t)p_textureDataSizeWithBitmapSize:(CGSize)a3;
- (unint64_t)sizeInBytes;
- (void)adjustAnchorRelativeToCenterOfRotation:(CGPoint)a3 atEventIndex:(unint64_t)a4;
- (void)bakeLayerWithAngle:(double)a3 scale:(double)a4 layer:(id)a5;
- (void)dealloc;
- (void)evictRenderedResources;
- (void)p_bakeLayerWithAngle:(double)a3 scale:(double)a4 layer:(id)a5;
- (void)p_initialize;
- (void)p_renderIntoContext:(CGContext *)a3 viewLayer:(id)a4 shouldApplyAlpha:(BOOL)a5 shouldIgnoreLayerVisibility:(BOOL)a6 shouldClipToBounds:(BOOL)a7;
- (void)p_updateFrame;
- (void)releaseMetalTexture;
- (void)renderIntoContext:(CGContext *)a3 eventIndex:(unint64_t)a4 shouldApplyAlpha:(BOOL)a5 shouldClipToBounds:(BOOL)a6;
- (void)renderLayerContentsIfNeeded;
- (void)resetAnchorPointAtEventIndex:(unint64_t)a3;
- (void)resetToSourceImageAtEventIndex:(unint64_t)a3;
- (void)setHdrHeadroom:(double)a3;
- (void)setLeadingCaretRect:(CGRect)a3;
- (void)setMetalTextureProxy:(id)a3;
- (void)setTextureOpacity:(double)a3;
- (void)setTextureType:(int64_t)a3;
- (void)setTrailingCaretRect:(CGRect)a3;
- (void)setupMetalTextureForContext:(id)a3;
- (void)teardown;
- (void)waitUntilAsyncRenderingIsCompleteShouldCancel:(BOOL)a3;
@end

@implementation TSDTexturedRectangle

+ (CGRect)boundingRectForTextures:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a3;
  x = *MEMORY[0x277CBF3A0];
  y = *(MEMORY[0x277CBF3A0] + 8);
  width = *(MEMORY[0x277CBF3A0] + 16);
  height = *(MEMORY[0x277CBF3A0] + 24);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v8, &v23, v27, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v24;
    do
    {
      v14 = 0;
      do
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v3);
        }

        objc_msgSend_frame(*(*(&v23 + 1) + 8 * v14), v10, v11);
        v32.origin.x = v15;
        v32.origin.y = v16;
        v32.size.width = v17;
        v32.size.height = v18;
        v29.origin.x = x;
        v29.origin.y = y;
        v29.size.width = width;
        v29.size.height = height;
        v30 = CGRectUnion(v29, v32);
        x = v30.origin.x;
        y = v30.origin.y;
        width = v30.size.width;
        height = v30.size.height;
        ++v14;
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v10, &v23, v27, 16);
    }

    while (v12);
  }

  v19 = x;
  v20 = y;
  v21 = width;
  v22 = height;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

+ (CGRect)boundingRectOnCanvasForTextures:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a3;
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v8, &v23, v27, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v24;
    do
    {
      v14 = 0;
      do
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v3);
        }

        objc_msgSend_frameOnCanvas(*(*(&v23 + 1) + 8 * v14), v10, v11);
        v32.origin.x = v15;
        v32.origin.y = v16;
        v32.size.width = v17;
        v32.size.height = v18;
        v29.origin.x = x;
        v29.origin.y = y;
        v29.size.width = width;
        v29.size.height = height;
        v30 = CGRectUnion(v29, v32);
        x = v30.origin.x;
        y = v30.origin.y;
        width = v30.size.width;
        height = v30.size.height;
        ++v14;
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v10, &v23, v27, 16);
    }

    while (v12);
  }

  v19 = x;
  v20 = y;
  v21 = width;
  v22 = height;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (TSDTexturedRectangle)initWithSize:(CGSize)a3 offset:(CGPoint)a4 renderBlock:(id)a5
{
  y = a4.y;
  x = a4.x;
  height = a3.height;
  width = a3.width;
  v10 = a5;
  v37.receiver = self;
  v37.super_class = TSDTexturedRectangle;
  v13 = [(TSDTexturedRectangle *)&v37 init];
  if (v13)
  {
    v14 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v11, v12);
    objc_msgSend_setUuid_(v13, v15, v14);

    v18 = objc_msgSend_copy(v10, v16, v17);
    renderBlock = v13->_renderBlock;
    v13->_renderBlock = v18;

    v13->_textureOpacity = 1.0;
    v13->_bakedScale = 1.0;
    v13->_hdrHeadroom = 1.0;
    v13->_shouldOverrideHeadroom = 0;
    v13->_shouldUseFloatingPointTextures = 1;
    v20 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    layer = v13->_layer;
    v13->_layer = v20;

    objc_msgSend_setEdgeAntialiasingMask_(v13->_layer, v22, 0);
    objc_msgSend_setAllowsEdgeAntialiasing_(v13->_layer, v23, 1);
    v24 = v13->_layer;
    v26 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v25, 1);
    objc_msgSend_setValue_forKey_(v24, v27, v26, @"kTSDTextureLayerKeyHasContents");

    v28 = v13->_layer;
    v30 = objc_msgSend_valueWithNonretainedObject_(MEMORY[0x277CCAE60], v29, v13);
    objc_msgSend_setValue_forKey_(v28, v31, v30, @"kTSDTextureLayerKeyTexturedRectangle");

    v13->_size.width = width;
    v13->_size.height = height;
    objc_msgSend_setOffset_(v13, v32, v33, x, y);
    v13->_contentRect.origin.x = 0.0;
    v13->_contentRect.origin.y = 0.0;
    v13->_contentRect.size = v13->_size;
    v13->_stateLock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
    objc_msgSend_p_initialize(v13, v34, v35);
  }

  return v13;
}

- (TSDTexturedRectangle)initWithLayer:(id)a3
{
  v5 = a3;
  v47.receiver = self;
  v47.super_class = TSDTexturedRectangle;
  v8 = [(TSDTexturedRectangle *)&v47 init];
  if (v8)
  {
    v9 = objc_msgSend_callStackSymbols(MEMORY[0x277CCACC8], v6, v7);
    objc_msgSend_count(v9, v10, v11);
    v14 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v12, v13);
    objc_msgSend_setUuid_(v8, v15, v14);

    renderBlock = v8->_renderBlock;
    v8->_renderBlock = 0;

    objc_msgSend_frame(v5, v17, v18);
    v8->_size.width = v19;
    v8->_size.height = v20;
    objc_msgSend_frame(v5, v21, v22);
    v8->_offset.x = v23;
    v8->_offset.y = v24;
    objc_msgSend_position(v5, v25, v26);
    v8->_originalPosition.x = v27;
    v8->_originalPosition.y = v28;
    objc_msgSend_frame(v5, v29, v30);
    v8->_originalFrame.origin.x = v31;
    v8->_originalFrame.origin.y = v32;
    v8->_originalFrame.size.width = v33;
    v8->_originalFrame.size.height = v34;
    v8->_contentRect.origin.x = 0.0;
    v8->_contentRect.origin.y = 0.0;
    v8->_contentRect.size = v8->_size;
    v8->_textureOpacity = 1.0;
    v8->_bakedScale = 1.0;
    v8->_hdrHeadroom = 1.0;
    v8->_shouldOverrideHeadroom = 0;
    v8->_shouldUseFloatingPointTextures = 1;
    objc_storeStrong(&v8->_layer, a3);
    v8->_didInitFromLayer = 1;
    layer = v8->_layer;
    v37 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v36, 1);
    objc_msgSend_setValue_forKey_(layer, v38, v37, @"kTSDTextureLayerKeyHasContents");

    v39 = v8->_layer;
    v41 = objc_msgSend_valueWithNonretainedObject_(MEMORY[0x277CCAE60], v40, v8);
    objc_msgSend_setValue_forKey_(v39, v42, v41, @"kTSDTextureLayerKeyTexturedRectangle");

    objc_msgSend_p_initialize(v8, v43, v44);
    v45 = v8;
  }

  return v8;
}

- (TSDTexturedRectangle)initWithCGImage:(CGImage *)a3
{
  v64.receiver = self;
  v64.super_class = TSDTexturedRectangle;
  v6 = [(TSDTexturedRectangle *)&v64 init];
  if (v6)
  {
    v7 = objc_msgSend_callStackSymbols(MEMORY[0x277CCACC8], v4, v5);
    objc_msgSend_count(v7, v8, v9);
    *(v6 + 39) = CGImageRetain(a3);
    v12 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v10, v11);
    objc_msgSend_setUuid_(v6, v13, v12);

    *(v6 + 46) = 0x3FF0000000000000;
    *(v6 + 29) = 0x3FF0000000000000;
    *(v6 + 33) = 0x3FF0000000000000;
    *(v6 + 208) = 0;
    *(v6 + 212) = 1;
    *(v6 + 54) = CGImageGetWidth(a3);
    Height = CGImageGetHeight(a3);
    *(v6 + 55) = Height;
    *(v6 + 25) = *MEMORY[0x277CBF348];
    v15 = *(v6 + 54);
    *(v6 + 58) = 0;
    *(v6 + 59) = 0;
    *(v6 + 60) = v15;
    *(v6 + 61) = Height;
    objc_msgSend_begin(MEMORY[0x277CD9FF0], v16, v17);
    objc_msgSend_setDisableActions_(MEMORY[0x277CD9FF0], v18, 1);
    v19 = MEMORY[0x277CD9FF0];
    isMainThread = objc_msgSend_isMainThread(MEMORY[0x277CCACC8], v20, v21);
    objc_msgSend_activateBackground_(v19, v23, isMainThread ^ 1u);
    v24 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    v25 = *(v6 + 34);
    *(v6 + 34) = v24;

    objc_msgSend_setContents_(*(v6 + 34), v26, a3);
    Width = CGImageGetWidth(a3);
    v28 = CGImageGetHeight(a3);
    objc_msgSend_setBounds_(*(v6 + 34), v29, v30, 0.0, 0.0, Width, v28);
    __asm { FMOV            V1.2D, #0.5 }

    objc_msgSend_setPosition_(*(v6 + 34), v36, v37, vmulq_f64(*(v6 + 27), _Q1));
    objc_msgSend_setEdgeAntialiasingMask_(*(v6 + 34), v38, 0);
    objc_msgSend_setMinificationFilter_(*(v6 + 34), v39, *MEMORY[0x277CDA630]);
    objc_msgSend_position(*(v6 + 34), v40, v41);
    *(v6 + 52) = v42;
    *(v6 + 53) = v43;
    objc_msgSend_frame(*(v6 + 34), v44, v45);
    *(v6 + 1) = v46;
    *(v6 + 2) = v47;
    *(v6 + 3) = v48;
    *(v6 + 4) = v49;
    v50 = *(v6 + 34);
    v52 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v51, 1);
    objc_msgSend_setValue_forKey_(v50, v53, v52, @"kTSDTextureLayerKeyHasContents");

    v54 = *(v6 + 34);
    v56 = objc_msgSend_valueWithNonretainedObject_(MEMORY[0x277CCAE60], v55, v6);
    objc_msgSend_setValue_forKey_(v54, v57, v56, @"kTSDTextureLayerKeyTexturedRectangle");

    objc_msgSend_commit(MEMORY[0x277CD9FF0], v58, v59);
    objc_msgSend_p_initialize(v6, v60, v61);
    v62 = v6;
  }

  return v6;
}

- (TSDTexturedRectangle)initWithMetalTexture:(id)a3 frame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3;
  v12 = objc_msgSend_initWithSize_offset_renderBlock_(self, v11, 0, width, height, x, y);
  v13 = v12;
  if (v12)
  {
    objc_storeStrong((v12 + 384), a3);
    v13->_didInitFromGPUTexture = 1;
    objc_msgSend_p_initialize(v13, v14, v15);
  }

  return v13;
}

- (TSDTexturedRectangle)initWithLayer:(id)a3 forMetalTexture:(id)a4
{
  v6 = a4;
  v10 = objc_msgSend_initWithLayer_(self, v7, a3);
  if (v10)
  {
    if (!v6 || (objc_msgSend_isMetalTextureSetup(v6, v8, v9) & 1) == 0)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSDTexturedRectangle initWithLayer:forMetalTexture:]");
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDTexturedRectangle.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 402, 0, "trying to share a Metal texture with a textured rectangle that is not set up.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
    }

    v19 = objc_msgSend_metalTexture(v6, v8, v11);
    metalTexture = v10->_metalTexture;
    v10->_metalTexture = v19;

    objc_msgSend_p_initialize(v10, v21, v22);
  }

  return v10;
}

- (void)teardown
{
  obj = self;
  objc_sync_enter(obj);
  objc_msgSend_begin(MEMORY[0x277CD9FF0], v2, v3);
  objc_msgSend_setDisableActions_(MEMORY[0x277CD9FF0], v4, 1);
  v5 = MEMORY[0x277CD9FF0];
  isMainThread = objc_msgSend_isMainThread(MEMORY[0x277CCACC8], v6, v7);
  objc_msgSend_activateBackground_(v5, v9, isMainThread ^ 1u);
  objc_msgSend_removeFromSuperlayer(obj->_layer, v10, v11);
  objc_msgSend_commit(MEMORY[0x277CD9FF0], v12, v13);
  layer = obj->_layer;
  obj->_layer = 0;

  eventIndexToViewLayerMap = obj->_eventIndexToViewLayerMap;
  obj->_eventIndexToViewLayerMap = 0;

  renderBlock = obj->_renderBlock;
  obj->_renderBlock = 0;

  bakedImage = obj->_bakedImage;
  if (bakedImage)
  {
    CGImageRelease(bakedImage);
  }

  obj->_bakedImage = 0;
  sourceImage = obj->_sourceImage;
  if (sourceImage)
  {
    CGImageRelease(sourceImage);
  }

  obj->_sourceImage = 0;
  objc_sync_exit(obj);
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = TSDTexturedRectangle;
  [(TSDTexturedRectangle *)&v2 dealloc];
}

- (NSString)description
{
  v4 = objc_msgSend_string(MEMORY[0x277CCAB68], a2, v2);
  v7 = objc_msgSend_textureType(self, v5, v6);
  v9 = sub_2766A57EC(v7, v8);
  objc_msgSend_appendFormat_(v4, v10, @"textureType:%@", v9);

  objc_msgSend_frame(self, v11, v12);
  v13 = NSStringFromCGRect(v31);
  objc_msgSend_appendFormat_(v4, v14, @" frame:%@", v13);

  v17 = objc_msgSend_text(self, v15, v16);

  if (v17)
  {
    v20 = objc_msgSend_text(self, v18, v19);
    objc_msgSend_appendFormat_(v4, v21, @" text:%@", v20);
  }

  if (objc_msgSend_isFlattenedRepresentation(self, v18, v19))
  {
    objc_msgSend_appendFormat_(v4, v22, @"isFlattenedRepresentation");
  }

  objc_msgSend_appendFormat_(v4, v22, @" layer:%@", self->_layer);
  objc_msgSend_appendFormat_(v4, v23, @" viewLayers:%@", self->_eventIndexToViewLayerMap);
  v24 = MEMORY[0x277CCACA8];
  v29.receiver = self;
  v29.super_class = TSDTexturedRectangle;
  v25 = [(TSDTexturedRectangle *)&v29 description];
  v27 = objc_msgSend_stringWithFormat_(v24, v26, @"%@: {%@}", v25, v4);

  return v27;
}

- (id)shortDescription
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_msgSend_textureType(self, a2, v2);
  v7 = sub_2766A57EC(v5, v6);
  objc_msgSend_frame(self, v8, v9);
  v10 = NSStringFromCGRect(v18);
  v13 = objc_msgSend_sizeInBytes(self, v11, v12);
  v15 = objc_msgSend_stringWithFormat_(v4, v14, @"textureType:%@ frame:%@ size:%.3f MB", v7, v10, vcvtd_n_f64_u64(v13, 0x14uLL));

  return v15;
}

- (id)copyWithZone:(_NSZone *)a3
{
  if (self->_didInitFromGPUTexture)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDTexturedRectangle copyWithZone:]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDTexturedRectangle.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 497, 0, "expected equality between %{public}s and %{public}s", "_didInitFromGPUTexture", "NO");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  if (self->_renderBlock)
  {
    v12 = objc_msgSend_allocWithZone_(TSDTexturedRectangle, a2, a3);
    v14 = objc_msgSend_initWithSize_offset_renderBlock_(v12, v13, self->_renderBlock, self->_originalFrame.size.width, self->_originalFrame.size.height, self->_originalFrame.origin.x, self->_originalFrame.origin.y);
  }

  else
  {
    if (!self->_sourceImage)
    {
      v75 = MEMORY[0x277D81150];
      v76 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDTexturedRectangle copyWithZone:]");
      v78 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v77, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDTexturedRectangle.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v75, v79, v76, v78, 508, 0, "Trying to make a copy from a texture with no content");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v80, v81);
      v19 = 0;
      goto LABEL_8;
    }

    v17 = objc_msgSend_allocWithZone_(TSDTexturedRectangle, a2, a3);
    v14 = objc_msgSend_initWithCGImage_(v17, v18, self->_sourceImage);
  }

  v19 = v14;
LABEL_8:
  v20 = objc_msgSend_uuid(self, v15, v16);
  objc_msgSend_setUuid_(v19, v21, v20);

  objc_msgSend_anchorPoint(self->_layer, v22, v23);
  v25 = v24;
  v27 = v26;
  v30 = objc_msgSend_layer(v19, v28, v29);
  objc_msgSend_setAnchorPoint_(v30, v31, v32, v25, v27);

  objc_msgSend_setOffset_(v19, v33, v34, self->_originalFrame.origin.x, self->_originalFrame.origin.y);
  objc_msgSend_setSize_(v19, v35, v36, self->_originalFrame.size.width, self->_originalFrame.size.height);
  objc_msgSend_setTextureType_(v19, v37, self->_textureType);
  objc_msgSend_setTextureOpacity_(v19, v38, v39, self->_textureOpacity);
  objc_msgSend_setTextBaseline_(v19, v40, v41, self->_textBaseline);
  objc_msgSend_setTextXHeight_(v19, v42, v43, self->_textXHeight);
  objc_msgSend_setTextColor_(v19, v44, self->_textColor);
  objc_msgSend_setTextBorderColor_(v19, v45, self->_textBorderColor);
  objc_msgSend_setTextRange_(v19, v46, self->_textRange.location, self->_textRange.length);
  objc_msgSend_setContentRect_(v19, v47, v48, self->_contentRect.origin.x, self->_contentRect.origin.y, self->_contentRect.size.width, self->_contentRect.size.height);
  objc_msgSend_setColorSpace_(v19, v49, self->_colorSpace);
  objc_msgSend_setIsIncomingContent_(v19, v50, self->_isIncomingContent);
  objc_msgSend_setIsFlattenedRepresentation_(v19, v51, self->_isFlattenedRepresentation);
  objc_msgSend_setIsVerticalText_(v19, v52, self->_isVerticalText);
  v55 = objc_msgSend_copy(self->_shapePath, v53, v54);
  objc_msgSend_setShapePath_(v19, v56, v55);

  objc_msgSend_setIsIncomingContent_(v19, v57, self->_isIncomingContent);
  objc_msgSend_setBakedScale_(v19, v58, v59, self->_bakedScale);
  objc_msgSend_setBakedRotation_(v19, v60, v61, self->_bakedRotation);
  objc_msgSend_setLeadingCaretRect_(v19, v62, v63, self->_originalLeadingCaretRect.origin.x, self->_originalLeadingCaretRect.origin.y, self->_originalLeadingCaretRect.size.width, self->_originalLeadingCaretRect.size.height);
  objc_msgSend_setTrailingCaretRect_(v19, v64, v65, self->_originalTrailingCaretRect.origin.x, self->_originalTrailingCaretRect.origin.y, self->_originalTrailingCaretRect.size.width, self->_originalTrailingCaretRect.size.height);
  objc_msgSend_setHdrHeadroom_(v19, v66, v67, self->_hdrHeadroom);
  objc_msgSend_setShouldOverrideHeadroom_(v19, v68, self->_shouldOverrideHeadroom);
  objc_msgSend_setShouldUseFloatingPointTextures_(v19, v69, self->_shouldUseFloatingPointTextures);
  objc_msgSend_p_initialize(v19, v70, v71);
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  objc_msgSend_setParent_(v19, v73, WeakRetained);

  return v19;
}

- (void)p_initialize
{
  v4 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x277CCAB00], a2, v2);
  eventIndexToViewLayerMap = self->_eventIndexToViewLayerMap;
  self->_eventIndexToViewLayerMap = v4;

  if (qword_280A4C260 != -1)
  {
    sub_2768087A8();
  }

  self->_signpostID = os_signpost_id_make_with_pointer(qword_280A4C268, self);
}

- (void)p_updateFrame
{
  objc_msgSend_setFrame_(self->_layer, a2, v2, self->_offset.x, self->_offset.y, self->_size.width, self->_size.height);
  objc_msgSend_position(self->_layer, v4, v5);
  self->_originalPosition.x = v6;
  self->_originalPosition.y = v7;
  objc_msgSend_frame(self->_layer, v8, v9);
  self->_originalFrame.origin.x = v10;
  self->_originalFrame.origin.y = v11;
  self->_originalFrame.size.width = v12;
  self->_originalFrame.size.height = v13;
}

- (void)setLeadingCaretRect:(CGRect)a3
{
  self->_leadingCaretRect = a3;
  if (self->_originalLeadingCaretRect.size.width == *MEMORY[0x277CBF3A8] && self->_originalLeadingCaretRect.size.height == *(MEMORY[0x277CBF3A8] + 8))
  {
    size = self->_leadingCaretRect.size;
    self->_originalLeadingCaretRect.origin = self->_leadingCaretRect.origin;
    self->_originalLeadingCaretRect.size = size;
  }
}

- (void)setTrailingCaretRect:(CGRect)a3
{
  self->_trailingCaretRect = a3;
  if (self->_originalTrailingCaretRect.size.width == *MEMORY[0x277CBF3A8] && self->_originalTrailingCaretRect.size.height == *(MEMORY[0x277CBF3A8] + 8))
  {
    size = self->_trailingCaretRect.size;
    self->_originalTrailingCaretRect.origin = self->_trailingCaretRect.origin;
    self->_originalTrailingCaretRect.size = size;
  }
}

- (CGRect)frame
{
  objc_msgSend_offset(self, a2, v2);
  v5 = v4;
  v7 = v6;
  objc_msgSend_size(self, v8, v9);
  v11 = v10;
  v13 = v12;
  v14 = v5;
  v15 = v7;
  result.size.height = v13;
  result.size.width = v11;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (TSUBezierPath)shapePath
{
  bakedShapePath = self->_bakedShapePath;
  if (!bakedShapePath)
  {
    bakedShapePath = self->_shapePath;
  }

  return bakedShapePath;
}

- (void)adjustAnchorRelativeToCenterOfRotation:(CGPoint)a3 atEventIndex:(unint64_t)a4
{
  y = a3.y;
  x = a3.x;
  if (self->_didInitFromGPUTexture)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDTexturedRectangle adjustAnchorRelativeToCenterOfRotation:atEventIndex:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDTexturedRectangle.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 627, 0, "expected equality between %{public}s and %{public}s", "_didInitFromGPUTexture", "NO");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  v13 = objc_msgSend_viewLayerAtEventIndex_(self, a2, a4);
  if (objc_msgSend_textureType(self, v14, v15) == 2)
  {
    objc_msgSend_frame(v13, v16, v17);
    TSUCenterOfRect();
    v20 = objc_msgSend_parent(self, v18, v19);
    v23 = objc_msgSend_layer(v20, v21, v22);
    objc_msgSend_bounds(v23, v24, v25);
    TSUCenterOfRect();
    TSUSubtractPoints();

    TSUAddPoints();
  }

  else
  {
    v27 = y;
    v26 = x;
  }

  v60 = v27;
  v63 = v26;
  TSUNormalizedPointInRect();
  objc_msgSend_setAnchorPoint_(v13, v28, v29);
  if (objc_msgSend_textureType(self, v30, v31) == 11 || (objc_msgSend_parent(self, v32, v33), v36 = objc_claimAutoreleasedReturnValue(), objc_msgSend_textureAngle(v36, v37, v38), v40 = v39, v36, v40 == 0.0) || fabs(v40) < 0.00999999978)
  {
    v35 = v60;
    v34.f64[0] = v63;
  }

  else
  {
    v41 = *(MEMORY[0x277CBF2C0] + 16);
    *&v65.a = *MEMORY[0x277CBF2C0];
    *&v65.c = v41;
    *&v65.tx = *(MEMORY[0x277CBF2C0] + 32);
    CGAffineTransformTranslate(&v66, &v65, v63, v60);
    tx = v66.tx;
    ty = v66.ty;
    v55 = *&v66.c;
    v57 = *&v66.a;
    v46 = objc_msgSend_parent(self, v44, v45);
    objc_msgSend_textureAngle(v46, v47, v48);
    *&v65.a = v57;
    *&v65.c = v55;
    v65.tx = tx;
    v65.ty = ty;
    CGAffineTransformRotate(&v66, &v65, -v49);
    v56 = *&v66.c;
    v58 = *&v66.a;
    v54 = *&v66.tx;

    *&v65.a = v58;
    *&v65.c = v56;
    *&v65.tx = v54;
    CGAffineTransformTranslate(&v66, &v65, -v63, -v60);
    v34 = vaddq_f64(*&v66.tx, vmlaq_n_f64(vmulq_n_f64(*&v66.c, v60), *&v66.a, v63));
    v35 = v34.f64[1];
  }

  v61 = v35;
  v64 = v34.f64[0];
  objc_msgSend_setPosition_(v13, v32, v33);
  if (v13 == self->_layer)
  {
    self->_originalPosition.x = v64;
    self->_originalPosition.y = v61;
  }

  else
  {
    v52 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v50, v51, v64, v61);
    objc_msgSend_setValue_forKey_(v13, v53, v52, @"kTSDTextureLayerKeyOriginalPosition");
  }
}

- (void)resetAnchorPointAtEventIndex:(unint64_t)a3
{
  v21 = objc_msgSend_viewLayerAtEventIndex_(self, a2, a3);
  objc_msgSend_setAnchorPoint_(v21, v4, v5, 0.5, 0.5);
  objc_msgSend_bounds(v21, v6, v7);
  v9 = self->_offset.x + v8 * 0.5;
  objc_msgSend_bounds(v21, v10, v11);
  v13 = self->_offset.y + v12 * 0.5;
  objc_msgSend_setPosition_(v21, v14, v15, v9, v13);
  v18 = v21;
  if (v21 == self->_layer)
  {
    self->_originalPosition.x = v9;
    self->_originalPosition.y = v13;
  }

  else
  {
    v19 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v16, v17, v9, v13);
    objc_msgSend_setValue_forKey_(v21, v20, v19, @"kTSDTextureLayerKeyOriginalPosition");

    v18 = v21;
  }
}

- (void)setTextureType:(int64_t)a3
{
  if (self->_textureType != a3)
  {
    self->_textureType = a3;
    v5 = objc_msgSend_textureType(self, a2, a3);
    v8 = sub_2766A57EC(v5, v6);
    objc_msgSend_setName_(self->_layer, v7, v8);
  }
}

- (void)setTextureOpacity:(double)a3
{
  self->_textureOpacity = a3;
  *&a3 = a3;
  objc_msgSend_setOpacity_(self->_layer, a2, v3, a3);
}

- (TSUColor)textColor
{
  textColor = self->_textColor;
  if (textColor)
  {
    v5 = objc_msgSend_p_colorForColorspaceWithColor_(self, a2, textColor);
    v6 = self->_textColor;
    self->_textColor = v5;

    v7 = self->_textColor;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (TSUColor)textBorderColor
{
  textBorderColor = self->_textBorderColor;
  if (textBorderColor)
  {
    v5 = objc_msgSend_p_colorForColorspaceWithColor_(self, a2, textBorderColor);
    v6 = self->_textBorderColor;
    self->_textBorderColor = v5;

    v7 = self->_textBorderColor;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CGColorSpace)p_colorSpace
{
  v3 = TSUDeviceRGBColorSpace();
  result = self->_colorSpace;
  if (!result)
  {
    WeakRetained = objc_loadWeakRetained(&self->_parent);
    v8 = objc_msgSend_colorSpace(WeakRetained, v6, v7);

    if (v8)
    {
      v9 = objc_loadWeakRetained(&self->_parent);
      v3 = objc_msgSend_colorSpace(v9, v10, v11);
    }

    return v3;
  }

  return result;
}

- (BOOL)p_shouldUseFloatTextures
{
  v4 = objc_msgSend_currentCapabilities(TSDCapabilities, a2, v2);
  if (objc_msgSend_isHDRCapable(v4, v5, v6) && self->_shouldUseFloatingPointTextures)
  {
    WeakRetained = objc_loadWeakRetained(&self->_parent);
    if (WeakRetained)
    {
      v8 = objc_loadWeakRetained(&self->_parent);
      shouldUseFloatingPointTextures = objc_msgSend_shouldUseFloatingPointTextures(v8, v9, v10);
    }

    else
    {
      shouldUseFloatingPointTextures = 1;
    }
  }

  else
  {
    shouldUseFloatingPointTextures = 0;
  }

  return shouldUseFloatingPointTextures;
}

- (CGAffineTransform)p_transformWithAngle:(SEL)a3 scale:(double)a4 offset:(double)a5
{
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  result = CGAffineTransformMakeTranslation(retstr, a6.x, a6.y);
  if (a4 != 0.0 || a5 != 1.0)
  {
    objc_msgSend_frame(self->_layer, v11, v12);
    v15 = -v14;
    objc_msgSend_frame(self->_layer, v16, v17);
    v19 = *&retstr->c;
    *&v42.a = *&retstr->a;
    *&v42.c = v19;
    *&v42.tx = *&retstr->tx;
    CGAffineTransformTranslate(&v43, &v42, v15, -v18);
    v20 = *&v43.c;
    *&retstr->a = *&v43.a;
    *&retstr->c = v20;
    *&retstr->tx = *&v43.tx;
    objc_msgSend_position(self->_layer, v21, v22);
    v24 = v23;
    objc_msgSend_position(self->_layer, v25, v26);
    v27 = *&retstr->c;
    *&v42.a = *&retstr->a;
    *&v42.c = v27;
    *&v42.tx = *&retstr->tx;
    CGAffineTransformTranslate(&v43, &v42, v24, v28);
    v29 = *&v43.c;
    *&retstr->a = *&v43.a;
    *&retstr->c = v29;
    *&retstr->tx = *&v43.tx;
    v30 = *&retstr->c;
    *&v42.a = *&retstr->a;
    *&v42.c = v30;
    *&v42.tx = *&retstr->tx;
    CGAffineTransformScale(&v43, &v42, a5, a5);
    v31 = *&v43.c;
    *&retstr->a = *&v43.a;
    *&retstr->c = v31;
    *&retstr->tx = *&v43.tx;
    v32 = *&retstr->c;
    *&v42.a = *&retstr->a;
    *&v42.c = v32;
    *&v42.tx = *&retstr->tx;
    CGAffineTransformRotate(&v43, &v42, a4);
    v33 = *&v43.c;
    *&retstr->a = *&v43.a;
    *&retstr->c = v33;
    *&retstr->tx = *&v43.tx;
    objc_msgSend_anchorPoint(self->_layer, v34, v35);
    objc_msgSend_bounds(self->_layer, v36, v37);
    TSUMultiplyPointBySize();
    v40 = *&retstr->c;
    *&v42.a = *&retstr->a;
    *&v42.c = v40;
    *&v42.tx = *&retstr->tx;
    result = CGAffineTransformTranslate(&v43, &v42, -v38, -v39);
    v41 = *&v43.c;
    *&retstr->a = *&v43.a;
    *&retstr->c = v41;
    *&retstr->tx = *&v43.tx;
  }

  return result;
}

- (id)p_newImageAndBufferWithTransform:(CGAffineTransform *)a3
{
  v5 = objc_msgSend_currentCapabilities(TSDCapabilities, a2, a3);
  objc_msgSend_maximumImageSize(v5, v6, v7);

  TSUShrinkSizeToFitInSize();
  TSUFlooredSize();
  v9 = v8;
  v11 = v10;
  shouldUseFloatTextures = objc_msgSend_p_shouldUseFloatTextures(self, v12, v13);
  v17 = shouldUseFloatTextures;
  if (shouldUseFloatTextures)
  {
    v18 = 4353;
  }

  else
  {
    v18 = 8194;
  }

  if (shouldUseFloatTextures)
  {
    v19 = 16;
  }

  else
  {
    v19 = 8;
  }

  v20 = objc_msgSend_p_colorSpace(self, v15, v16);
  v21 = CGBitmapContextCreate(0, v9, v11, v19, 0, v20, v18);
  TSDSetCGContextInfo(v21, 0, 0, 0, 0, 1.0);
  v24 = objc_msgSend_currentCapabilities(TSDCapabilities, v22, v23);
  isHDRCapable = objc_msgSend_isHDRCapable(v24, v25, v26);

  if (isHDRCapable)
  {
    if (v17)
    {
      objc_msgSend_p_colorSpace(self, v28, v29);
      v30 = TSUColorSpaceSupportsHDR();
    }

    else
    {
      v30 = 0;
    }

    TSDCGContextSetShouldRenderHDRContent(v21, v30);
  }

  WeakRetained = objc_loadWeakRetained(&self->_bitmapRenderingQualityInfo);
  if (WeakRetained)
  {
    v32 = WeakRetained;
  }

  else
  {
    v33 = objc_loadWeakRetained(&self->_parent);
    v32 = objc_msgSend_bitmapRenderingQualityInfo(v33, v34, v35);

    if (!v32)
    {
      goto LABEL_16;
    }
  }

  TSDCGContextSetBitmapQualityInfo(v21, v32);

LABEL_16:
  CGContextScaleCTM(v21, v9 / self->_size.width, v11 / self->_size.height);
  CGContextTranslateCTM(v21, 0.0, self->_size.height);
  CGContextScaleCTM(v21, 1.0, -1.0);
  v38 = objc_msgSend_backgroundColor(self, v36, v37);
  if (v38)
  {
    CGContextSaveGState(v21);
    v41 = objc_msgSend_CGColor(v38, v39, v40);
    CGContextSetFillColorWithColor(v21, v41);
    TSURectWithSize();
    CGContextFillRect(v21, v76);
    CGContextRestoreGState(v21);
  }

  v42 = *&a3->c;
  *&transform.a = *&a3->a;
  *&transform.c = v42;
  *&transform.tx = *&a3->tx;
  CGContextConcatCTM(v21, &transform);
  renderBlock = self->_renderBlock;
  if (renderBlock)
  {
    renderBlock[2](renderBlock, v21);
    goto LABEL_28;
  }

  sourceImage = self->_sourceImage;
  layer = self->_layer;
  if (layer && self->_didInitFromLayer)
  {
    sourceImage = objc_msgSend_newRasterizedImageRef(layer, v43, v44);
    v48 = 1;
    if (!sourceImage)
    {
      goto LABEL_23;
    }

LABEL_26:
    objc_msgSend_bounds(self->_layer, v43, v44);
    CGContextTranslateCTM(v21, 0.0, v56);
    CGContextScaleCTM(v21, 1.0, -1.0);
    TSURectWithSize();
    TSDCGContextDrawImageRecordingMaxHeadroom(v21, sourceImage, v57, v58, v59, v60);
    if (!v48)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v48 = 0;
  if (sourceImage)
  {
    goto LABEL_26;
  }

LABEL_23:
  v49 = MEMORY[0x277D81150];
  v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "[TSDTexturedRectangle p_newImageAndBufferWithTransform:]");
  v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDTexturedRectangle.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v53, v50, v52, 824, 0, "%p - Nothing to render from.", self);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55);
  if (v48)
  {
LABEL_27:
    CGImageRelease(sourceImage);
  }

LABEL_28:
  MaxHDRHeadroom = TSDCGContextGetMaxHDRHeadroom(v21);
  objc_msgSend_setHdrHeadroom_(self, v62, v63);
  TSDClearCGContextInfo(v21);
  Image = CGBitmapContextCreateImage(v21);
  if (((MaxHDRHeadroom >= 1.0) & isHDRCapable) == 1)
  {
    v67 = objc_msgSend_p_colorSpace(self, v64, v65);
    if (v67 == TSUExtendedP3ColorSpace() || (v70 = objc_msgSend_p_colorSpace(self, v68, v69), v70 == TSUExtendedSRGBColorSpace()))
    {
      CopyWithContentHeadroom = CGImageCreateCopyWithContentHeadroom();
      if (CopyWithContentHeadroom)
      {
        v72 = CopyWithContentHeadroom;
        CGImageRelease(Image);
        Image = v72;
      }
    }
  }

  CGContextRelease(v21);

  return Image;
}

- (void)resetToSourceImageAtEventIndex:(unint64_t)a3
{
  if (self->_didInitFromGPUTexture)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDTexturedRectangle resetToSourceImageAtEventIndex:]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDTexturedRectangle.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 860, 0, "expected equality between %{public}s and %{public}s", "_didInitFromGPUTexture", "NO");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  CGImageRelease(self->_bakedImage);
  self->_bakedImage = 0;
  v20 = objc_msgSend_viewLayerAtEventIndex_(self, v12, a3);
  objc_msgSend_setFrame_(v20, v13, v14, self->_originalFrame.origin.x, self->_originalFrame.origin.y, self->_originalFrame.size.width, self->_originalFrame.size.height);
  objc_msgSend_setContents_(v20, v15, self->_sourceImage);
  self->_size = self->_originalFrame.size;
  self->_offset = self->_originalFrame.origin;
  bakedShapePath = self->_bakedShapePath;
  self->_bakedShapePath = 0;

  WeakRetained = objc_loadWeakRetained(&self->_parent);
  objc_msgSend_setIsBaked_(WeakRetained, v18, 0);

  objc_msgSend_setValue_forKey_(v20, v19, 0, @"kTSDTextureLayerKeyBakedScale");
  *&self->_bakedScale = xmmword_2768256E0;
}

- (void)evictRenderedResources
{
  if (self->_renderBlock && (bakedImage = self->_sourceImage) != 0)
  {
    p_sourceImage = &self->_sourceImage;
  }

  else
  {
    p_sourceImage = &self->_bakedImage;
    bakedImage = self->_bakedImage;
    if (!bakedImage)
    {
      return;
    }
  }

  CGImageRelease(bakedImage);
  *p_sourceImage = 0;
  layer = self->_layer;

  objc_msgSend_setContents_(layer, v5, 0);
}

- (BOOL)isRenderable
{
  if (self->_sourceImage || self->_renderBlock)
  {
    LOBYTE(layer) = 1;
  }

  else
  {
    layer = self->_layer;
    if (layer)
    {
      LOBYTE(layer) = self->_didInitFromLayer;
    }
  }

  return layer & 1;
}

- (void)renderLayerContentsIfNeeded
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_didInitFromGPUTexture)
  {
    v5 = objc_msgSend_contents(v2->_layer, v3, v4);

    if (!v5)
    {
      if ((objc_msgSend_isRenderable(v2, v6, v7) & 1) == 0)
      {
        v9 = MEMORY[0x277D81150];
        v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSDTexturedRectangle renderLayerContentsIfNeeded]");
        v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDTexturedRectangle.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 904, 0, "%p - Nothing to render from", v2);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
      }

      sourceImage = v2->_sourceImage;
      if (sourceImage)
      {
        CGImageRelease(sourceImage);
        v2->_sourceImage = 0;
      }

      v17 = *(MEMORY[0x277CBF2C0] + 16);
      v23[0] = *MEMORY[0x277CBF2C0];
      v23[1] = v17;
      v23[2] = *(MEMORY[0x277CBF2C0] + 32);
      v18 = objc_msgSend_p_newImageAndBufferWithTransform_(v2, v8, v23);
      v2->_sourceImage = v18;
      objc_msgSend_setContents_(v2->_layer, v19, v18);
      if (v2->_size.height != CGImageGetHeight(v2->_sourceImage))
      {
        Height = CGImageGetHeight(v2->_sourceImage);
        objc_msgSend_setContentsScale_(v2->_layer, v21, v22, Height / v2->_size.height);
      }
    }
  }

  objc_sync_exit(v2);
}

- (unint64_t)sizeInBytes
{
  width = self->_size.width;
  v5 = objc_msgSend_p_colorSpace(self, a2, v2);
  if (v5 == TSUP3ColorSpace())
  {
    v6 = self->_size.width * 8.0;
  }

  else
  {
    v6 = width * 4.0;
  }

  return (self->_size.height * v6);
}

- (unint64_t)p_textureDataSizeWithBitmapSize:(CGSize)a3
{
  width = a3.width;
  height = a3.height;
  v6 = objc_msgSend_p_colorSpace(self, a2, v3);
  v7 = TSUP3ColorSpace();
  v9 = 2;
  if (v6 == v7)
  {
    v9 = 3;
  }

  v10 = (width << v9) * height;
  if (!v10)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSDTexturedRectangle p_textureDataSizeWithBitmapSize:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDTexturedRectangle.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 949, 0, "Attempting to allocate 0 size texture data!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  }

  return v10;
}

- (id)p_rasterizationBlockWithBitmapSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  bakedImage = self->_bakedImage;
  if (!bakedImage)
  {
    bakedImage = self->_sourceImage;
  }

  v8 = self->_size.width;
  v9 = self->_size.height;
  ColorSpace = objc_msgSend_p_colorSpace(self, a2, v3);
  shouldUseFloatTextures = objc_msgSend_p_shouldUseFloatTextures(self, v11, v12);
  if (self->_renderBlock)
  {
    v16 = 0;
  }

  else
  {
    v16 = 0;
    layer = self->_layer;
    if (layer && !bakedImage)
    {
      bakedImage = objc_msgSend_newRasterizedImageRef(layer, v13, v14);
      v16 = 1;
    }
  }

  if (objc_msgSend_textureType(self, v13, v14) == 7 && bakedImage)
  {
    ColorSpace = CGImageGetColorSpace(bakedImage);
  }

  if (shouldUseFloatTextures)
  {
    v20 = 4353;
  }

  else
  {
    v20 = 8194;
  }

  if (shouldUseFloatTextures)
  {
    v21 = 16;
  }

  else
  {
    v21 = 8;
  }

  v22 = width;
  v23 = 2;
  if (shouldUseFloatTextures)
  {
    v23 = 3;
  }

  v24 = v22 << v23;
  v25 = height / v9;
  v26 = height;
  v27 = width / v8;
  v28 = objc_msgSend_backgroundColor(self, v18, v19);
  objc_msgSend_bounds(self->_layer, v29, v30);
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = MEMORY[0x277C9C8B0](self->_renderBlock);
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = sub_2766A7EC8;
  v44[3] = &unk_27A6CCB18;
  v47 = v24;
  v48 = v22;
  v49 = v21;
  v50 = ColorSpace;
  v58 = v20;
  v44[4] = self;
  v44[5] = v28;
  v51 = v27;
  v52 = v25;
  v53 = bakedImage;
  v54 = v32;
  v55 = v34;
  v56 = v36;
  v57 = v38;
  v45 = v39;
  v46 = v26;
  v59 = v16;
  v40 = v39;
  v41 = MEMORY[0x277C9C8B0](v44);
  v42 = MEMORY[0x277C9C8B0]();

  return v42;
}

- (double)hdrHeadroom
{
  if (!self->_metalTextureProxy)
  {
    return self->_hdrHeadroom;
  }

  objc_msgSend_hdrHeadroom(self->_metalTextureProxy, a2, v2);
  return result;
}

- (void)setHdrHeadroom:(double)a3
{
  if (a3 < 1.0)
  {
    a3 = 1.0;
  }

  self->_hdrHeadroom = a3;
}

- (double)singleTextureOpacity
{
  v4 = objc_msgSend_layer(self, a2, v2);
  objc_msgSend_opacity(v4, v5, v6);
  v8 = v7;

  v11 = objc_msgSend_parent(self, v9, v10);

  if (v11)
  {
    textureType = self->_textureType;
    objc_opt_class();
    v15 = objc_msgSend_parent(self, v13, v14);
    v18 = objc_msgSend_rep(v15, v16, v17);
    v21 = objc_msgSend_parentRep(v18, v19, v20);
    v24 = objc_msgSend_info(v21, v22, v23);
    v25 = TSUDynamicCast();

    if (v25)
    {
      v28 = objc_msgSend_caption(v25, v26, v27);
      v31 = objc_msgSend_parent(self, v29, v30);
      v34 = objc_msgSend_rep(v31, v32, v33);
      v39 = objc_msgSend_info(v34, v35, v36);
      if (v28 == v39)
      {
        v50 = 1;
      }

      else
      {
        objc_msgSend_title(v25, v37, v38);
        v40 = v59 = textureType;
        v43 = objc_msgSend_parent(self, v41, v42);
        v46 = objc_msgSend_rep(v43, v44, v45);
        v49 = objc_msgSend_info(v46, v47, v48);
        v50 = v40 == v49;

        textureType = v59;
      }
    }

    else
    {
      v50 = 0;
    }

    if ((textureType - 15) >= 2 && !v50)
    {
      v51 = objc_msgSend_parent(self, v26, v27);
      v54 = objc_msgSend_layer(v51, v52, v53);
      objc_msgSend_opacity(v54, v55, v56);
      v8 = v8 * v57;
    }
  }

  return v8;
}

- (CGImage)image
{
  if (self->_didInitFromGPUTexture)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDTexturedRectangle image]");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDTexturedRectangle.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 1087, 0, "expected equality between %{public}s and %{public}s", "_didInitFromGPUTexture", "NO");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  }

  objc_msgSend_renderLayerContentsIfNeeded(self, a2, v2);
  if (self->_didInitFromGPUTexture)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSDTexturedRectangle image]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDTexturedRectangle.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 1094, 0, "Can't make an image from a GPU texture!");
LABEL_5:

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
    return 0;
  }

  result = self->_bakedImage;
  if (!result)
  {
    result = self->_sourceImage;
    if (!result)
    {
      v20 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSDTexturedRectangle image]");
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDTexturedRectangle.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v22, v13, v15, 1100, 0, "Can't make an image from this TSDTexturedRectangle!");
      goto LABEL_5;
    }
  }

  return result;
}

- (void)bakeLayerWithAngle:(double)a3 scale:(double)a4 layer:(id)a5
{
  v10 = a5;
  v8 = self;
  objc_sync_enter(v8);
  objc_msgSend_p_bakeLayerWithAngle_scale_layer_(v8, v9, v10, a3, a4);
  objc_sync_exit(v8);
}

- (void)p_bakeLayerWithAngle:(double)a3 scale:(double)a4 layer:(id)a5
{
  v9 = a5;
  if (self->_didInitFromGPUTexture)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSDTexturedRectangle p_bakeLayerWithAngle:scale:layer:]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDTexturedRectangle.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 1117, 0, "expected equality between %{public}s and %{public}s", "_didInitFromGPUTexture", "NO");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  }

  if (v9)
  {
    objc_msgSend_setContents_(v9, v8, 0);
    objc_msgSend_anchorPoint(v9, v17, v18);
    objc_msgSend_frame(v9, v19, v20);
    TSUPointFromNormalizedRect();
    v22 = *MEMORY[0x277CBF348];
    v21 = *(MEMORY[0x277CBF348] + 8);
    TSURectWithOriginAndSize();
    objc_msgSend_setBounds_(v9, v23, v24);
    v27 = objc_msgSend_superlayer(v9, v25, v26);
    objc_msgSend_frame(v27, v28, v29);
    objc_msgSend_frame(v9, v30, v31);
    TSUAddPoints();

    objc_msgSend_frame(v9, v32, v33);
    TSURectWithOriginAndSize();
    v105 = CGRectIntegral(v104);
    self->_size.width = fmax(v105.size.width, 1.0);
    self->_size.height = fmax(v105.size.height, 1.0);
    v36 = objc_msgSend_superlayer(v9, v34, v35);
    objc_msgSend_frame(v36, v37, v38);
    TSUSubtractPoints();
    self->_offset.x = v39;
    self->_offset.y = v40;

    bakedImage = self->_bakedImage;
    if (bakedImage)
    {
      CGImageRelease(bakedImage);
      self->_bakedImage = 0;
      objc_msgSend_setContents_(v9, v42, 0);
    }

    v102 = 0u;
    v103 = 0u;
    v101 = 0u;
    TSUSubtractPoints();
    objc_msgSend_p_transformWithAngle_scale_offset_(self, v43, v44, a3, a4, v45, v46);
    v49 = objc_msgSend_willRenderWithLiveTexturedRectangleSource(self, v47, v48);
    if (a4 != 0.0 && (v49 & 1) == 0)
    {
      v93 = v101;
      v94 = v102;
      v95 = v103;
      v52 = objc_msgSend_p_newImageAndBufferWithTransform_(self, v50, &v93);
      self->_bakedImage = v52;
      objc_msgSend_setContents_(v9, v53, v52);
      if (self->_size.height != CGImageGetHeight(self->_bakedImage))
      {
        Height = CGImageGetHeight(self->_bakedImage);
        objc_msgSend_setContentsScale_(v9, v55, v56, Height / self->_size.height);
      }
    }

    v58 = *MEMORY[0x277CBF3A8];
    v57 = *(MEMORY[0x277CBF3A8] + 8);
    if (self->_originalLeadingCaretRect.size.width != *MEMORY[0x277CBF3A8] || self->_originalLeadingCaretRect.size.height != v57)
    {
      TSUMultiplySizeScalar();
      TSURectWithOriginAndSize();
      self->_leadingCaretRect.origin.x = v59;
      self->_leadingCaretRect.origin.y = v60;
      self->_leadingCaretRect.size.width = v61;
      self->_leadingCaretRect.size.height = v62;
    }

    if (self->_originalTrailingCaretRect.size.width != v58 || self->_originalTrailingCaretRect.size.height != v57)
    {
      TSUMultiplySizeScalar();
      TSURectWithOriginAndSize();
      self->_trailingCaretRect.origin.x = v63;
      self->_trailingCaretRect.origin.y = v64;
      self->_trailingCaretRect.size.width = v65;
      self->_trailingCaretRect.size.height = v66;
    }

    if (a3 != 0.0)
    {
      objc_msgSend_setValue_forKeyPath_(v9, v50, &unk_28859C298, @"transform.rotation.z");
    }

    if (a4 != 1.0)
    {
      objc_msgSend_setValue_forKeyPath_(v9, v50, &unk_28859C2A8, @"transform.scale.xy");
    }

    v67 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v50, v51, a4);
    objc_msgSend_setValue_forKey_(v9, v68, v67, @"kTSDTextureLayerKeyBakedScale");

    self->_bakedScale = a4;
    self->_bakedRotation = a3;
    v69 = *(MEMORY[0x277CD9DE8] + 80);
    v97 = *(MEMORY[0x277CD9DE8] + 64);
    v98 = v69;
    v70 = *(MEMORY[0x277CD9DE8] + 112);
    v99 = *(MEMORY[0x277CD9DE8] + 96);
    v100 = v70;
    v71 = *(MEMORY[0x277CD9DE8] + 16);
    v93 = *MEMORY[0x277CD9DE8];
    v94 = v71;
    v72 = *(MEMORY[0x277CD9DE8] + 48);
    v95 = *(MEMORY[0x277CD9DE8] + 32);
    v96 = v72;
    objc_msgSend_setTransform_(v9, v73, &v93);
    TSURectWithOriginAndSize();
    objc_msgSend_setFrame_(v9, v74, v75);
    if (a4 != 0.0 && fabs(a4) >= 0.0001)
    {
      objc_msgSend_anchorPoint(v9, v76, v77);
      objc_msgSend_frame(v9, v78, v79);
      TSUPointFromNormalizedRect();
      TSUSubtractPoints();
      if (v81 != v22 || v80 != v21)
      {
        objc_msgSend_anchorPoint(v9, v76, v77);
        TSUAddPoints();
        objc_msgSend_setAnchorPoint_(v9, v82, v83);
        TSURectWithOriginAndSize();
        objc_msgSend_setFrame_(v9, v84, v85);
      }
    }

    v86 = objc_msgSend_copy(self->_shapePath, v76, v77);
    v93 = v101;
    v94 = v102;
    v95 = v103;
    objc_msgSend_transformUsingAffineTransform_(v86, v87, &v93);
    bakedShapePath = self->_bakedShapePath;
    self->_bakedShapePath = v86;

    if (objc_msgSend_isMetalTextureSetup(self, v89, v90))
    {
      objc_msgSend_releaseMetalTexture(self, v91, v92);
    }
  }
}

- (void)renderIntoContext:(CGContext *)a3 eventIndex:(unint64_t)a4 shouldApplyAlpha:(BOOL)a5 shouldClipToBounds:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v11 = objc_msgSend_viewLayerAtEventIndex_(self, a2, a4);
  objc_msgSend_p_renderIntoContext_viewLayer_shouldApplyAlpha_shouldIgnoreLayerVisibility_shouldClipToBounds_(self, v10, a3, v11, v7, 0, v6);
}

- (void)p_renderIntoContext:(CGContext *)a3 viewLayer:(id)a4 shouldApplyAlpha:(BOOL)a5 shouldIgnoreLayerVisibility:(BOOL)a6 shouldClipToBounds:(BOOL)a7
{
  v7 = a7;
  v9 = a5;
  v12 = a4;
  v13 = self;
  objc_sync_enter(v13);
  if (a6 || (objc_msgSend_isHidden(v12, v14, v15) & 1) == 0)
  {
    CGContextSaveGState(a3);
    if (v7)
    {
      objc_msgSend_frame(v12, v16, v17);
      CGContextClipToRectSafe();
    }

    objc_msgSend_position(v12, v16, v17);
    v19 = v18;
    objc_msgSend_position(v12, v20, v21);
    CGContextTranslateCTM(a3, v19, v22);
    if (v12)
    {
      objc_msgSend_transform(v12, v23, v24);
    }

    else
    {
      memset(&v73, 0, sizeof(v73));
    }

    if (!CATransform3DIsIdentity(&v73))
    {
      if (v12)
      {
        objc_msgSend_affineTransform(v12, v25, v26);
      }

      else
      {
        memset(&v73, 0, 48);
      }

      CGContextConcatCTM(a3, &v73);
    }

    objc_msgSend_bounds(v12, v25, v26);
    v28 = v27;
    objc_msgSend_anchorPoint(v12, v29, v30);
    v32 = v31;
    objc_msgSend_bounds(v12, v33, v34);
    v36 = v35;
    objc_msgSend_anchorPoint(v12, v37, v38);
    CGContextTranslateCTM(a3, -(v28 * v32), -(v36 * v39));
    bakedScale = v13->_bakedScale;
    if (bakedScale != 1.0)
    {
      CGContextScaleCTM(a3, bakedScale, v13->_bakedScale);
    }

    objc_msgSend_opacity(v12, v40, v41);
    if (v45 != 1.0 && v9)
    {
      objc_msgSend_opacity(v12, v43, v44);
      CGContextSetAlpha(a3, v46);
      CGContextBeginTransparencyLayer(a3, 0);
    }

    v49 = objc_msgSend_backgroundColor(v13, v43, v44);
    if (v49)
    {
      CGContextSaveGState(a3);
      v52 = objc_msgSend_CGColor(v49, v50, v51);
      CGContextSetFillColorWithColor(a3, v52);
      objc_msgSend_bounds(v12, v53, v54);
      CGContextFillRect(a3, v74);
      CGContextRestoreGState(a3);
    }

    renderBlock = v13->_renderBlock;
    if (renderBlock)
    {
      renderBlock[2](renderBlock, a3);
    }

    else if (v13->_sourceImage)
    {
      objc_msgSend_bounds(v12, v47, v48);
      CGContextTranslateCTM(a3, 0.0, v58);
      CGContextScaleCTM(a3, 1.0, -1.0);
      objc_msgSend_bounds(v12, v59, v60);
      TSDCGContextDrawImageRecordingMaxHeadroom(a3, v13->_sourceImage, v61, v62, v63, v64);
    }

    else
    {
      v65 = MEMORY[0x277D81150];
      v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "[TSDTexturedRectangle p_renderIntoContext:viewLayer:shouldApplyAlpha:shouldIgnoreLayerVisibility:shouldClipToBounds:]");
      v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v67, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDTexturedRectangle.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v65, v69, v66, v68, 1264, 0, "%p - Nothing to render from", v13);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v70, v71);
    }

    objc_msgSend_opacity(v12, v56, v57);
    if (v72 != 1.0 && v9)
    {
      CGContextEndTransparencyLayer(a3);
    }

    CGContextRestoreGState(a3);
  }

  objc_sync_exit(v13);
}

- (BOOL)isBackgroundTexture
{
  v4 = objc_msgSend_parent(self, a2, v2);

  if (!v4)
  {
    return 0;
  }

  v7 = objc_msgSend_parent(self, v5, v6);
  isBackgroundTexture = objc_msgSend_isBackgroundTexture_(v7, v8, self);

  return isBackgroundTexture;
}

- (CALayer)parentLayer
{
  v4 = objc_msgSend_parent(self, a2, v2);

  if (v4)
  {
    v7 = objc_msgSend_parent(self, v5, v6);
    v10 = objc_msgSend_layer(v7, v8, v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (CGRect)frameOnCanvas
{
  objc_msgSend_frame(self, a2, v2);
  x = v4;
  y = v6;
  width = v8;
  height = v10;
  v14 = objc_msgSend_parent(self, v12, v13);

  if (v14)
  {
    v17 = objc_msgSend_parent(self, v15, v16);
    objc_msgSend_frame(v17, v18, v19);
    v21 = v20;
    v23 = v22;

    objc_msgSend_frame(self, v24, v25);
    v31 = CGRectOffset(v30, v21, v23);
    x = v31.origin.x;
    y = v31.origin.y;
    width = v31.size.width;
    height = v31.size.height;
  }

  v26 = x;
  v27 = y;
  v28 = width;
  v29 = height;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (CGRect)convertToCanvasCoordinates:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = objc_msgSend_parent(self, a2, v3);

  if (v9)
  {
    v12 = objc_msgSend_parent(self, v10, v11);
    objc_msgSend_frame(v12, v13, v14);
    v16 = v15;
    v19 = objc_msgSend_parent(self, v17, v18);
    objc_msgSend_frame(v19, v20, v21);
    v23 = v22;
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    v29 = CGRectOffset(v28, v16, v23);
    x = v29.origin.x;
    y = v29.origin.y;
    width = v29.size.width;
    height = v29.size.height;
  }

  v24 = x;
  v25 = y;
  v26 = width;
  v27 = height;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (id)viewLayerAtEventIndex:(unint64_t)a3
{
  if (a3 == 0x7FFFFFFF || (objc_msgSend_currentThread(MEMORY[0x277CCACC8], a2, a3), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend_threadDictionary(v5, v6, v7), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v8, v9, @"kTSDTexturePreCachingOperation"), v10 = objc_claimAutoreleasedReturnValue(), v10, v8, v5, !v10))
  {
    v16 = self->_layer;
  }

  else
  {
    v11 = self->_eventIndexToViewLayerMap;
    objc_sync_enter(v11);
    eventIndexToViewLayerMap = self->_eventIndexToViewLayerMap;
    v14 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v13, a3);
    v16 = objc_msgSend_objectForKey_(eventIndexToViewLayerMap, v15, v14);

    if (!v16)
    {
      v16 = objc_msgSend_layer(MEMORY[0x277CD9ED0], v17, v18);
      objc_msgSend_opacity(self->_layer, v19, v20);
      objc_msgSend_setOpacity_(v16, v21, v22);
      objc_msgSend_bounds(self->_layer, v23, v24);
      objc_msgSend_setBounds_(v16, v25, v26);
      objc_msgSend_anchorPoint(self->_layer, v27, v28);
      objc_msgSend_setAnchorPoint_(v16, v29, v30);
      objc_msgSend_position(self->_layer, v31, v32);
      objc_msgSend_setPosition_(v16, v33, v34);
      layer = self->_layer;
      if (layer)
      {
        objc_msgSend_transform(layer, v35, v36);
      }

      else
      {
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
      }

      v47[4] = v52;
      v47[5] = v53;
      v47[6] = v54;
      v47[7] = v55;
      v47[0] = v48;
      v47[1] = v49;
      v47[2] = v50;
      v47[3] = v51;
      objc_msgSend_setTransform_(v16, v35, v47);
      v40 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v38, v39, self->_originalPosition.x, self->_originalPosition.y);
      objc_msgSend_setValue_forKey_(v16, v41, v40, @"kTSDTextureLayerKeyOriginalPosition");

      v42 = self->_eventIndexToViewLayerMap;
      v44 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v43, a3);
      objc_msgSend_setObject_forKey_(v42, v45, v16, v44);
    }

    objc_sync_exit(v11);
  }

  return v16;
}

- (void)waitUntilAsyncRenderingIsCompleteShouldCancel:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->_stateLock);
  metalTextureProxy = self->_metalTextureProxy;
  os_unfair_lock_unlock(&self->_stateLock);
  if (metalTextureProxy)
  {
    os_unfair_lock_lock(&self->_stateLock);
    objc_msgSend_waitUntilAsyncRenderingIsCompleteShouldCancel_(self->_metalTextureProxy, v8, v3);

    os_unfair_lock_unlock(&self->_stateLock);
  }

  else
  {
    if (v3)
    {
      v9 = objc_msgSend_renderingOperation(self, v6, v7);
      objc_msgSend_cancel(v9, v10, v11);

      v14 = objc_msgSend_renderingOperationMetal(self, v12, v13);
      objc_msgSend_cancel(v14, v15, v16);
    }

    v17 = objc_msgSend_renderingOperation(self, v6, v7);
    objc_msgSend_waitUntilFinished(v17, v18, v19);

    v24 = objc_msgSend_renderingOperationMetal(self, v20, v21);
    objc_msgSend_waitUntilFinished(v24, v22, v23);
  }
}

- (unint64_t)p_metalPixelFormat
{
  if (objc_msgSend_p_shouldUseFloatTextures(self, a2, v2))
  {
    return 115;
  }

  else
  {
    return 80;
  }
}

- (BOOL)canReuseMetalTextureWith:(id)a3
{
  v4 = a3;
  bakedRotation = self->_bakedRotation;
  objc_msgSend_bakedRotation(v4, v6, v7);
  if (bakedRotation == v10 || vabdd_f64(bakedRotation, v10) < 0.00999999978)
  {
    bakedScale = self->_bakedScale;
    objc_msgSend_bakedScale(v4, v8, v9);
    v11 = vabdd_f64(bakedScale, v13) >= 0.00999999978 && bakedScale != v13;
  }

  else
  {
    v11 = 1;
  }

  if (self->_shouldGenerateMipmap)
  {
    v14 = objc_msgSend_shouldGenerateMipmap(v4, v8, v9) ^ 1;
  }

  else
  {
    v14 = 0;
  }

  if ((v11 | v14))
  {
    goto LABEL_11;
  }

  uuid = self->_uuid;
  v17 = objc_msgSend_uuid(v4, v8, v9);
  LOBYTE(uuid) = objc_msgSend_isEqual_(uuid, v18, v17);

  if (uuid)
  {
    LOBYTE(WeakRetained) = 1;
    goto LABEL_35;
  }

  WeakRetained = objc_loadWeakRetained(&self->_parent);
  if (!WeakRetained)
  {
    goto LABEL_35;
  }

  v19 = objc_loadWeakRetained(&self->_parent);
  v22 = objc_msgSend_parent(v4, v20, v21);
  canReuseMetalTexturesWith = objc_msgSend_canReuseMetalTexturesWith_(v19, v23, v22);

  if (!canReuseMetalTexturesWith)
  {
    goto LABEL_11;
  }

  textureType = self->_textureType;
  v28 = objc_msgSend_textureType(v4, v25, v26);
  if (self->_isFlattenedRepresentation)
  {
    goto LABEL_11;
  }

  v31 = v28;
  isFlattenedRepresentation = objc_msgSend_isFlattenedRepresentation(v4, v29, v30);
  LOBYTE(WeakRetained) = 0;
  if (textureType == v31 && (isFlattenedRepresentation & 1) == 0)
  {
    v33 = objc_loadWeakRetained(&self->_parent);
    if (objc_msgSend_containsContentBuildTextures(v33, v34, v35))
    {
      v38 = objc_msgSend_parent(v4, v36, v37);
      v41 = objc_msgSend_containsContentBuildTextures(v38, v39, v40);

      if (v41)
      {
        if ((objc_msgSend_isIncomingContent(self, v42, v43) & 1) == 0)
        {
          LOBYTE(WeakRetained) = objc_msgSend_isIncomingContent(v4, v44, v45);
          goto LABEL_35;
        }

        goto LABEL_11;
      }
    }

    else
    {
    }

    objc_msgSend_size(v4, v42, v43);
    v46 = TSUNearlyEqualSizes();
    v49 = self->_textureType;
    if (v49 <= 0x10 && ((1 << v49) & 0x18040) != 0)
    {
      if (v46)
      {
        LOBYTE(WeakRetained) = self->_textRange.location == objc_msgSend_textRange(v4, v47, v48) && self->_textRange.length == v50;
        goto LABEL_35;
      }
    }

    else if (v46)
    {
      v52 = objc_loadWeakRetained(&self->_parent);
      v55 = objc_msgSend_allTextures(v52, v53, v54);
      v57 = objc_msgSend_indexOfObject_(v55, v56, self);
      v60 = objc_msgSend_parent(v4, v58, v59);
      v63 = objc_msgSend_allTextures(v60, v61, v62);
      LOBYTE(WeakRetained) = v57 == objc_msgSend_indexOfObject_(v63, v64, v4);

      goto LABEL_35;
    }

LABEL_11:
    LOBYTE(WeakRetained) = 0;
  }

LABEL_35:

  return WeakRetained;
}

- (BOOL)isMetalTextureSetup
{
  os_unfair_lock_lock(&self->_stateLock);
  if (self->_metalTexture)
  {
    v3 = 1;
  }

  else
  {
    v3 = self->_metalTextureProxy != 0;
  }

  os_unfair_lock_unlock(&self->_stateLock);
  return v3;
}

- (void)releaseMetalTexture
{
  os_unfair_lock_lock(&self->_stateLock);
  metalTexture = self->_metalTexture;
  self->_metalTexture = 0;

  metalTextureProxy = self->_metalTextureProxy;
  self->_metalTextureProxy = 0;

  os_unfair_lock_unlock(&self->_stateLock);
}

- (MTLTexture)metalTexture
{
  os_unfair_lock_lock(&self->_stateLock);
  metalTextureProxy = self->_metalTextureProxy;
  if (metalTextureProxy)
  {
    v6 = objc_msgSend_metalTexture(metalTextureProxy, v3, v4);
  }

  else
  {
    v6 = self->_metalTexture;
  }

  v7 = v6;
  os_unfair_lock_unlock(&self->_stateLock);

  return v7;
}

- (void)setMetalTextureProxy:(id)a3
{
  v7 = a3;
  os_unfair_lock_lock(&self->_stateLock);
  objc_storeStrong(&self->_metalTextureProxy, a3);
  if (self->_metalTextureProxy)
  {
    bakedImage = self->_bakedImage;
    if (bakedImage)
    {
      if (self->_renderBlock)
      {
        CGImageRelease(bakedImage);
        self->_bakedImage = 0;
        objc_msgSend_setContents_(self->_layer, v6, 0);
      }
    }
  }

  os_unfair_lock_unlock(&self->_stateLock);
}

- (CGSize)p_textureSizeWithMaxSize:(CGSize)a3
{
  objc_msgSend_contentsRect(self->_layer, a2, v3);
  if (v7 != 0.0)
  {
    objc_msgSend_contentsRect(self->_layer, v5, v6);
    if (v10 != 0.0)
    {
      objc_msgSend_contentsRect(self->_layer, v8, v9);
      objc_msgSend_contentsRect(self->_layer, v11, v12);
    }
  }

  TSUShrinkSizeToFitInSize();
  if (self->_size.width != 0.0)
  {
    v15 = fmax(v13, 1.0);
    v16 = fmax(v14, 1.0);
    if (self->_size.height != 0.0)
    {
      v14 = v16;
      v13 = v15;
    }
  }

  result.height = v14;
  result.width = v13;
  return result;
}

- (void)setupMetalTextureForContext:(id)a3
{
  v5 = objc_msgSend_device(a3, a2, a3);
  objc_msgSend_setupMetalTextureForDevice_(self, v4, v5);
}

- (id)metalTextureWithContext:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSDTexturedRectangle metalTextureWithContext:]");
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDTexturedRectangle.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v6, v8, 1884, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  v12 = MEMORY[0x277CBEAD8];
  v13 = *MEMORY[0x277CBE658];
  v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v14, @"%s: %s", "Do not call method", "[TSDTexturedRectangle metalTextureWithContext:]");
  v17 = objc_msgSend_exceptionWithName_reason_userInfo_(v12, v16, v13, v15, 0);
  v18 = v17;

  objc_exception_throw(v17);
}

- (TSDBitmapRenderingQualityInfo)bitmapRenderingQualityInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_bitmapRenderingQualityInfo);

  return WeakRetained;
}

- (CGRect)contentRect
{
  x = self->_contentRect.origin.x;
  y = self->_contentRect.origin.y;
  width = self->_contentRect.size.width;
  height = self->_contentRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)leadingCaretRect
{
  x = self->_leadingCaretRect.origin.x;
  y = self->_leadingCaretRect.origin.y;
  width = self->_leadingCaretRect.size.width;
  height = self->_leadingCaretRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (TSDTexturedRectangle)liveTexturedRectangleSourceProxy
{
  WeakRetained = objc_loadWeakRetained(&self->_liveTexturedRectangleSourceProxy);

  return WeakRetained;
}

- (CGPoint)offset
{
  x = self->_offset.x;
  y = self->_offset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)originalPosition
{
  x = self->_originalPosition.x;
  y = self->_originalPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)originalFrame
{
  x = self->_originalFrame.origin.x;
  y = self->_originalFrame.origin.y;
  width = self->_originalFrame.size.width;
  height = self->_originalFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (TSDTextureSet)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

- (NSOperation)renderingOperation
{
  WeakRetained = objc_loadWeakRetained(&self->_renderingOperation);

  return WeakRetained;
}

- (NSOperation)renderingOperationMetal
{
  WeakRetained = objc_loadWeakRetained(&self->_renderingOperationMetal);

  return WeakRetained;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (_NSRange)textRange
{
  length = self->_textRange.length;
  location = self->_textRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (CGRect)trailingCaretRect
{
  x = self->_trailingCaretRect.origin.x;
  y = self->_trailingCaretRect.origin.y;
  width = self->_trailingCaretRect.size.width;
  height = self->_trailingCaretRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end