@interface TSCHMultiDataLayerAnimationInfo
+ (id)animationInfo;
- (CGRect)chartBodyFrameInRepElementSpace;
- (CGRect)interceptRect;
- (TSCHMultiDataLayerAnimationInfo)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)addAnimationForLayer:(id)layer key:(id)key values:(id)values keyTimes:(id)times needPresentationLayerValues:(BOOL)layerValues;
- (void)addImageContentsAnimationForLayer:(id)layer fromImage:(id)image toImage:(id)toImage keyTimes:(id)times;
@end

@implementation TSCHMultiDataLayerAnimationInfo

+ (id)animationInfo
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (TSCHMultiDataLayerAnimationInfo)init
{
  v16.receiver = self;
  v16.super_class = TSCHMultiDataLayerAnimationInfo;
  v2 = [(TSCHMultiDataLayerAnimationInfo *)&v16 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_shouldAnimate = 256;
    v2->_crossesIntercept = 0;
    keyTimes = v2->_keyTimes;
    v2->_keyTimes = &unk_28856EC78;

    v5 = *(MEMORY[0x277CBF398] + 16);
    v3->_interceptRect.origin = *MEMORY[0x277CBF398];
    v3->_interceptRect.size = v5;
    v3->_horizontalChart = 0;
    v6 = *(MEMORY[0x277CBF3A0] + 16);
    v3->_chartBodyFrameInRepElementSpace.origin = *MEMORY[0x277CBF3A0];
    v3->_chartBodyFrameInRepElementSpace.size = v6;
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    layerAnimationValues = v3->_layerAnimationValues;
    v3->_layerAnimationValues = v7;

    v13 = objc_msgSend_functionWithName_(MEMORY[0x277CD9EF8], v9, v10, v11, v12, *MEMORY[0x277CDA7B8]);
    timingFunction = v3->_timingFunction;
    v3->_timingFunction = v13;

    v3->_elementUndefined = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v10 = objc_msgSend_allocWithZone_(v5, v6, v7, v8, v9, zone);
  v15 = objc_msgSend_init(v10, v11, v12, v13, v14);
  v20 = v15;
  if (v15)
  {
    v15[8] = self->_shouldAnimate;
    v15[9] = self->_aboveIntercept;
    v15[10] = self->_crossesIntercept;
    v15[121] = self->_atIntercept;
    v15[122] = self->_currentAtIntercept;
    v15[123] = self->_currentAboveIntercept;
    v21 = objc_msgSend_copy(self->_keyTimes, v16, v17, v18, v19);
    v22 = *(v20 + 2);
    *(v20 + 2) = v21;

    origin = self->_interceptRect.origin;
    *(v20 + 40) = self->_interceptRect.size;
    *(v20 + 24) = origin;
    v20[56] = self->_horizontalChart;
    *(v20 + 8) = *&self->_duration;
    v24 = self->_chartBodyFrameInRepElementSpace.origin;
    size = self->_chartBodyFrameInRepElementSpace.size;
    *(v20 + 88) = size;
    *(v20 + 72) = v24;
    v28 = objc_msgSend_mutableCopy(self->_layerAnimationValues, v26, v24.x, size.width, v27);
    v29 = *(v20 + 13);
    *(v20 + 13) = v28;

    objc_storeStrong(v20 + 14, self->_timingFunction);
    v20[120] = self->_elementUndefined;
  }

  return v20;
}

- (void)addAnimationForLayer:(id)layer key:(id)key values:(id)values keyTimes:(id)times needPresentationLayerValues:(BOOL)layerValues
{
  v15 = objc_msgSend_animationValuesWithLayer_key_values_keyTimes_needPresentationLayerValues_(TSCHMultiDataLayerAnimationValues, a2, v7, v8, v9, layer, key, values, times, layerValues);
  objc_msgSend_addObject_(self->_layerAnimationValues, v11, v12, v13, v14);
}

- (void)addImageContentsAnimationForLayer:(id)layer fromImage:(id)image toImage:(id)toImage keyTimes:(id)times
{
  v35[2] = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  imageCopy = image;
  toImageCopy = toImage;
  timesCopy = times;
  if (imageCopy)
  {
    v18 = imageCopy;
  }

  else
  {
    v18 = objc_msgSend_null(MEMORY[0x277CBEB68], v13, v15, v16, v17);
  }

  v23 = v18;
  if (toImageCopy)
  {
    v24 = toImageCopy;
  }

  else
  {
    v24 = objc_msgSend_null(MEMORY[0x277CBEB68], v19, v20, v21, v22);
  }

  v29 = v24;
  v35[0] = v23;
  v35[1] = v24;
  v30 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v25, v26, v27, v28, v35, 2);
  objc_msgSend_addAnimationForLayer_key_values_keyTimes_needPresentationLayerValues_(self, v31, v32, v33, v34, layerCopy, @"contents", v30, timesCopy, 1);
}

- (CGRect)interceptRect
{
  x = self->_interceptRect.origin.x;
  y = self->_interceptRect.origin.y;
  width = self->_interceptRect.size.width;
  height = self->_interceptRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)chartBodyFrameInRepElementSpace
{
  x = self->_chartBodyFrameInRepElementSpace.origin.x;
  y = self->_chartBodyFrameInRepElementSpace.origin.y;
  width = self->_chartBodyFrameInRepElementSpace.size.width;
  height = self->_chartBodyFrameInRepElementSpace.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end