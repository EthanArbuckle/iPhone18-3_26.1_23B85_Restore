@interface KNSinglePlaybackLayerHost
- (KNAnimationScreenEnvironment)screenEnvironment;
- (KNSinglePlaybackLayerHost)initWithContainerLayer:(id)layer screenEnvironment:(id)environment;
@end

@implementation KNSinglePlaybackLayerHost

- (KNSinglePlaybackLayerHost)initWithContainerLayer:(id)layer screenEnvironment:(id)environment
{
  layerCopy = layer;
  environmentCopy = environment;
  v24.receiver = self;
  v24.super_class = KNSinglePlaybackLayerHost;
  v9 = [(KNSinglePlaybackLayerHost *)&v24 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_containerLayer, layer);
    objc_msgSend_setMasksToBounds_(v10->_containerLayer, v11, 1);
    v14 = objc_msgSend_copy(environmentCopy, v12, v13);
    screenEnvironment = v10->_screenEnvironment;
    v10->_screenEnvironment = v14;

    v16 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    rootLayer = v10->_rootLayer;
    v10->_rootLayer = v16;

    objc_msgSend_bounds(v10->_containerLayer, v18, v19);
    TSURectWithSize();
    objc_msgSend_setFrame_(v10->_rootLayer, v20, v21);
    objc_msgSend_addSublayer_(v10->_containerLayer, v22, v10->_rootLayer);
  }

  return v10;
}

- (KNAnimationScreenEnvironment)screenEnvironment
{
  v3 = objc_msgSend_copy(self->_screenEnvironment, a2, v2);

  return v3;
}

@end