@interface TSCHMultiDataLayerAnimationValues
+ (id)animationValuesWithLayer:(id)layer key:(id)key values:(id)values;
+ (id)animationValuesWithLayer:(id)layer key:(id)key values:(id)values keyTimes:(id)times;
+ (id)animationValuesWithLayer:(id)layer key:(id)key values:(id)values keyTimes:(id)times needPresentationLayerValues:(BOOL)layerValues;
- (TSCHMultiDataLayerAnimationValues)initWithLayer:(id)layer key:(id)key values:(id)values keyTimes:(id)times needPresentationLayerValues:(BOOL)layerValues;
- (id)description;
@end

@implementation TSCHMultiDataLayerAnimationValues

+ (id)animationValuesWithLayer:(id)layer key:(id)key values:(id)values keyTimes:(id)times
{
  v9 = objc_msgSend_animationValuesWithLayer_key_values_keyTimes_needPresentationLayerValues_(self, a2, v6, v7, v8, layer, key, values, times, 0);

  return v9;
}

+ (id)animationValuesWithLayer:(id)layer key:(id)key values:(id)values
{
  v8 = objc_msgSend_animationValuesWithLayer_key_values_keyTimes_needPresentationLayerValues_(self, a2, v5, v6, v7, layer, key, values, 0, 0);

  return v8;
}

+ (id)animationValuesWithLayer:(id)layer key:(id)key values:(id)values keyTimes:(id)times needPresentationLayerValues:(BOOL)layerValues
{
  layerValuesCopy = layerValues;
  layerCopy = layer;
  keyCopy = key;
  valuesCopy = values;
  timesCopy = times;
  v16 = [self alloc];
  v21 = objc_msgSend_initWithLayer_key_values_keyTimes_needPresentationLayerValues_(v16, v17, v18, v19, v20, layerCopy, keyCopy, valuesCopy, timesCopy, layerValuesCopy);

  return v21;
}

- (TSCHMultiDataLayerAnimationValues)initWithLayer:(id)layer key:(id)key values:(id)values keyTimes:(id)times needPresentationLayerValues:(BOOL)layerValues
{
  layerCopy = layer;
  keyCopy = key;
  valuesCopy = values;
  timesCopy = times;
  v38.receiver = self;
  v38.super_class = TSCHMultiDataLayerAnimationValues;
  v17 = [(TSCHMultiDataLayerAnimationValues *)&v38 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_layer, layer);
    v23 = objc_msgSend_copy(keyCopy, v19, v20, v21, v22);
    key = v18->_key;
    v18->_key = v23;

    v29 = objc_msgSend_copy(valuesCopy, v25, v26, v27, v28);
    values = v18->_values;
    v18->_values = v29;

    v35 = objc_msgSend_copy(timesCopy, v31, v32, v33, v34);
    keyTimes = v18->_keyTimes;
    v18->_keyTimes = v35;

    v18->_needPresentationLayerValues = layerValues;
  }

  return v18;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = TSCHMultiDataLayerAnimationValues;
  v4 = [(TSCHMultiDataLayerAnimationValues *)&v10 description];
  v8 = objc_msgSend_stringWithFormat_(v3, v5, *&self->_layer, v6, v7, @"%@ layer %@ key %@ values %@ times %@", v4, self->_layer, self->_key, self->_values, self->_keyTimes);

  return v8;
}

@end