@interface KNOffscreenController
- (BOOL)gotoSlideNode:(id)node andEvent:(unint64_t)event;
- (CGImage)copyImageOfCurrentEventIgnoringBuildVisilibity:(BOOL)visilibity;
- (CGSize)outputSize;
- (KNAnimatedSlideView)animatedSlideView;
- (KNOffscreenController)initWithShow:(id)show canvasDelegate:(id)delegate;
- (KNOffscreenController)initWithShow:(id)show canvasDelegate:(id)delegate outputSize:(CGSize)size shouldEnableHDR:(BOOL)r;
- (void)dealloc;
- (void)drawCurrentEventIntoContext:(CGContext *)context intoRect:(CGRect)rect ignoreBuildVisibility:(BOOL)visibility;
- (void)generateImageOfCurrentEventWithCompletonHandler:(id)handler;
@end

@implementation KNOffscreenController

- (KNOffscreenController)initWithShow:(id)show canvasDelegate:(id)delegate
{
  delegateCopy = delegate;
  showCopy = show;
  objc_msgSend_size(showCopy, v8, v9);
  shouldEnableHDR = objc_msgSend_initWithShow_canvasDelegate_outputSize_shouldEnableHDR_(self, v10, showCopy, delegateCopy, 0);

  return shouldEnableHDR;
}

- (KNOffscreenController)initWithShow:(id)show canvasDelegate:(id)delegate outputSize:(CGSize)size shouldEnableHDR:(BOOL)r
{
  height = size.height;
  width = size.width;
  showCopy = show;
  delegateCopy = delegate;
  v30.receiver = self;
  v30.super_class = KNOffscreenController;
  v13 = [(KNOffscreenController *)&v30 init];
  v16 = v13;
  if (v13)
  {
    v13->_outputSize.width = width;
    v13->_outputSize.height = height;
    if (r)
    {
      v17 = objc_msgSend_currentCapabilities(MEMORY[0x277D801F0], v14, v15);
      v16->_supportsHDR = objc_msgSend_isHDRCapable(v17, v18, v19);

      objc_msgSend_configurationWithOffscreenCGContextBoundsSize_shouldEnableHDR_(KNPlaybackSessionConfiguration, v20, v16->_supportsHDR, width, height);
    }

    else
    {
      v13->_supportsHDR = 0;
      objc_msgSend_configurationWithOffscreenCGContextBoundsSize_shouldEnableHDR_(KNPlaybackSessionConfiguration, v14, 0, width, height);
    }
    v21 = ;
    v22 = [KNPlaybackSession alloc];
    v24 = objc_msgSend_initWithShow_configuration_canvasDelegate_(v22, v23, showCopy, v21, delegateCopy);
    session = v16->_session;
    v16->_session = v24;

    objc_msgSend_setPlayMode_(v16->_session, v26, 5);
    objc_msgSend_setIsShowLayerVisible_(v16->_session, v27, 0);
    v28 = v16;
  }

  return v16;
}

- (void)dealloc
{
  objc_msgSend_tearDown(self->_session, a2, v2);
  v4.receiver = self;
  v4.super_class = KNOffscreenController;
  [(KNOffscreenController *)&v4 dealloc];
}

- (BOOL)gotoSlideNode:(id)node andEvent:(unint64_t)event
{
  objc_msgSend_gotoSlideNode_(self->_session, a2, node);
  if (node)
  {
    v9 = objc_msgSend_animatedSlideViewForCurrentSlide(self->_session, v7, v8);
    objc_msgSend_setCurrentEventIndex_(v9, v10, event);
  }

  else
  {
    v9 = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_animatedSlideView);

  if (WeakRetained != v9)
  {
    objc_storeWeak(&self->_animatedSlideView, v9);
  }

  return node != 0;
}

- (CGImage)copyImageOfCurrentEventIgnoringBuildVisilibity:(BOOL)visilibity
{
  objc_msgSend_supportsHDR(self, a2, visilibity);
  v5 = TSDBitmapContextCreate();
  if (objc_msgSend_supportsHDR(self, v6, v7))
  {
    TSDCGContextSetShouldRenderHDRContent();
  }

  v10 = objc_msgSend_accessController(self->_session, v8, v9);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_275DACDF0;
  v14[3] = &unk_27A698A48;
  v14[4] = self;
  v14[5] = v5;
  visilibityCopy = visilibity;
  objc_msgSend_performRead_(v10, v11, v14);

  Image = CGBitmapContextCreateImage(v5);
  CGContextRelease(v5);
  return Image;
}

- (void)generateImageOfCurrentEventWithCompletonHandler:(id)handler
{
  handlerCopy = handler;
  v5 = dispatch_get_global_queue(-2, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_275DACF64;
  v7[3] = &unk_27A698068;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(v5, v7);
}

- (void)drawCurrentEventIntoContext:(CGContext *)context intoRect:(CGRect)rect ignoreBuildVisibility:(BOOL)visibility
{
  visibilityCopy = visibility;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  memset(&v28, 0, sizeof(v28));
  CGContextGetTextMatrix(&v28, context);
  CGContextSaveGState(context);
  CGContextTranslateCTM(context, x, y);
  CGContextScaleCTM(context, width / self->_outputSize.width, height / self->_outputSize.height);
  CGContextTranslateCTM(context, 0.0, self->_outputSize.height);
  CGContextScaleCTM(context, 1.0, -1.0);
  objc_msgSend_begin(MEMORY[0x277CD9FF0], v12, v13);
  v14 = MEMORY[0x277CD9FF0];
  isMainThread = objc_msgSend_isMainThread(MEMORY[0x277CCACC8], v15, v16);
  objc_msgSend_activateBackground_(v14, v18, isMainThread ^ 1u);
  v19 = objc_autoreleasePoolPush();
  v20 = objc_loadWeakRetained(&self->_animatedSlideView);
  v23 = objc_msgSend_currentEventIndex(v20, v21, v22);
  objc_msgSend_renderIntoContext_eventIndex_ignoreBuildVisibility_(v20, v24, context, v23, visibilityCopy);

  objc_autoreleasePoolPop(v19);
  objc_msgSend_commit(MEMORY[0x277CD9FF0], v25, v26);
  CGContextRestoreGState(context);
  v27 = v28;
  CGContextSetTextMatrix(context, &v27);
}

- (KNAnimatedSlideView)animatedSlideView
{
  WeakRetained = objc_loadWeakRetained(&self->_animatedSlideView);

  return WeakRetained;
}

- (CGSize)outputSize
{
  width = self->_outputSize.width;
  height = self->_outputSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end