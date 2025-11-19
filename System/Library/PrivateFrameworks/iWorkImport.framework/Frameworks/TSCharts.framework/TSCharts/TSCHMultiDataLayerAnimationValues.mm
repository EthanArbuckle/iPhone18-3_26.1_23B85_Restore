@interface TSCHMultiDataLayerAnimationValues
+ (id)animationValuesWithLayer:(id)a3 key:(id)a4 values:(id)a5;
+ (id)animationValuesWithLayer:(id)a3 key:(id)a4 values:(id)a5 keyTimes:(id)a6;
+ (id)animationValuesWithLayer:(id)a3 key:(id)a4 values:(id)a5 keyTimes:(id)a6 needPresentationLayerValues:(BOOL)a7;
- (TSCHMultiDataLayerAnimationValues)initWithLayer:(id)a3 key:(id)a4 values:(id)a5 keyTimes:(id)a6 needPresentationLayerValues:(BOOL)a7;
- (id)description;
@end

@implementation TSCHMultiDataLayerAnimationValues

+ (id)animationValuesWithLayer:(id)a3 key:(id)a4 values:(id)a5 keyTimes:(id)a6
{
  v9 = objc_msgSend_animationValuesWithLayer_key_values_keyTimes_needPresentationLayerValues_(a1, a2, v6, v7, v8, a3, a4, a5, a6, 0);

  return v9;
}

+ (id)animationValuesWithLayer:(id)a3 key:(id)a4 values:(id)a5
{
  v8 = objc_msgSend_animationValuesWithLayer_key_values_keyTimes_needPresentationLayerValues_(a1, a2, v5, v6, v7, a3, a4, a5, 0, 0);

  return v8;
}

+ (id)animationValuesWithLayer:(id)a3 key:(id)a4 values:(id)a5 keyTimes:(id)a6 needPresentationLayerValues:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [a1 alloc];
  v21 = objc_msgSend_initWithLayer_key_values_keyTimes_needPresentationLayerValues_(v16, v17, v18, v19, v20, v12, v13, v14, v15, v7);

  return v21;
}

- (TSCHMultiDataLayerAnimationValues)initWithLayer:(id)a3 key:(id)a4 values:(id)a5 keyTimes:(id)a6 needPresentationLayerValues:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v38.receiver = self;
  v38.super_class = TSCHMultiDataLayerAnimationValues;
  v17 = [(TSCHMultiDataLayerAnimationValues *)&v38 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_layer, a3);
    v23 = objc_msgSend_copy(v14, v19, v20, v21, v22);
    key = v18->_key;
    v18->_key = v23;

    v29 = objc_msgSend_copy(v15, v25, v26, v27, v28);
    values = v18->_values;
    v18->_values = v29;

    v35 = objc_msgSend_copy(v16, v31, v32, v33, v34);
    keyTimes = v18->_keyTimes;
    v18->_keyTimes = v35;

    v18->_needPresentationLayerValues = a7;
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