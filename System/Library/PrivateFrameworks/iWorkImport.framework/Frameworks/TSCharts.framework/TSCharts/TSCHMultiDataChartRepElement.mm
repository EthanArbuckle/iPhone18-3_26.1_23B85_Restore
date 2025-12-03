@interface TSCHMultiDataChartRepElement
+ (id)elementWithElementLayer:(id)layer;
- (TSCHMultiDataChartRepElement)initWithElementLayer:(id)layer;
- (id)delegate;
- (void)addAnimationForKey:(id)key values:(id)values keyTimes:(id)times toAnimationInfo:(id)info;
- (void)setContentsScale:(double)scale;
- (void)setDelegate:(id)delegate;
- (void)setOpacity:(double)opacity;
@end

@implementation TSCHMultiDataChartRepElement

+ (id)elementWithElementLayer:(id)layer
{
  layerCopy = layer;
  v5 = [self alloc];
  v10 = objc_msgSend_initWithElementLayer_(v5, v6, v7, v8, v9, layerCopy);

  return v10;
}

- (TSCHMultiDataChartRepElement)initWithElementLayer:(id)layer
{
  layerCopy = layer;
  v11.receiver = self;
  v11.super_class = TSCHMultiDataChartRepElement;
  v6 = [(TSCHMultiDataChartRepElement *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_elementLayer, layer);
    v8 = objc_alloc_init(TSCHMultiDataAnimatingFrameLayer);
    labelLayer = v7->_labelLayer;
    v7->_labelLayer = v8;
  }

  return v7;
}

- (id)delegate
{
  v6 = objc_msgSend_delegate(self->_elementLayer, a2, v2, v3, v4);
  v11 = objc_msgSend_delegate(self->_labelLayer, v7, v8, v9, v10);
  if (v6 | v11)
  {
    v16 = v11;
    isEqual = objc_msgSend_isEqual_(v6, v12, v13, v14, v15, v11);

    if ((isEqual & 1) == 0)
    {
      v18 = MEMORY[0x277D81150];
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "[TSCHMultiDataChartRepElement delegate]");
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHMultiDataChartRepElement.m");
      v29 = objc_msgSend_delegate(self->_elementLayer, v25, v26, v27, v28);
      v34 = objc_msgSend_delegate(self->_labelLayer, v30, v31, v32, v33);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v35, v36, v37, v38, v19, v24, 43, 0, "sublayers delegates differ %@ %@", v29, v34);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41, v42);
    }
  }

  elementLayer = self->_elementLayer;

  return objc_msgSend_delegate(elementLayer, v12, v13, v14, v15);
}

- (void)setDelegate:(id)delegate
{
  elementLayer = self->_elementLayer;
  delegateCopy = delegate;
  objc_msgSend_setDelegate_(elementLayer, v5, v6, v7, v8, delegateCopy);
  objc_msgSend_setDelegate_(self->_labelLayer, v9, v10, v11, v12, delegateCopy);
}

- (void)setContentsScale:(double)scale
{
  objc_msgSend_setContentsScale_(self->_elementLayer, a2, scale, v3, v4);
  labelLayer = self->_labelLayer;

  objc_msgSend_setContentsScale_(labelLayer, v7, scale, v8, v9);
}

- (void)setOpacity:(double)opacity
{
  opacityCopy = opacity;
  *&opacity = opacityCopy;
  objc_msgSend_setOpacity_(self->_elementLayer, a2, opacity, v3, v4);
  labelLayer = self->_labelLayer;
  *&v11 = opacityCopy;

  objc_msgSend_setOpacity_(labelLayer, v7, v11, v8, v9);
}

- (void)addAnimationForKey:(id)key values:(id)values keyTimes:(id)times toAnimationInfo:(id)info
{
  keyCopy = key;
  valuesCopy = values;
  timesCopy = times;
  infoCopy = info;
  if (!infoCopy)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v14, v15, v16, "[TSCHMultiDataChartRepElement addAnimationForKey:values:keyTimes:toAnimationInfo:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHMultiDataChartRepElement.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 64, 0, "invalid nil value for '%{public}s'", "animInfo");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
  }

  objc_msgSend_addAnimationForLayer_key_values_keyTimes_(infoCopy, v12, v14, v15, v16, self->_elementLayer, keyCopy, valuesCopy, timesCopy);
  objc_msgSend_addAnimationForLayer_key_values_keyTimes_(infoCopy, v32, v33, v34, v35, self->_labelLayer, keyCopy, valuesCopy, timesCopy);
}

@end