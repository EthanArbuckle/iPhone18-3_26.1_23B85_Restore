@interface RSKeyframeAccumulation
- (RSKeyframeAccumulation)init;
@end

@implementation RSKeyframeAccumulation

- (RSKeyframeAccumulation)init
{
  v24.receiver = self;
  v24.super_class = RSKeyframeAccumulation;
  v2 = [(RSKeyframeAccumulation *)&v24 init];
  if (v2)
  {
    v3 = objc_alloc_init(RSPointCloud);
    worldpc = v2->_worldpc;
    v2->_worldpc = v3;

    v5 = objc_alloc_init(RSTemporalMeta);
    accMeta = v2->_accMeta;
    v2->_accMeta = v5;

    v9 = objc_msgSend_array(MEMORY[0x277CBEB18], v7, v8);
    newKeyframes = v2->_newKeyframes;
    v2->_newKeyframes = v9;

    v13 = objc_msgSend_array(MEMORY[0x277CBEB18], v11, v12);
    diffKeyframes = v2->_diffKeyframes;
    v2->_diffKeyframes = v13;

    v17 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v15, v16);
    metas = v2->_metas;
    v2->_metas = v17;

    v21 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v19, v20);
    keyframeOrderDict = v2->_keyframeOrderDict;
    v2->_keyframeOrderDict = v21;

    v2->_skipCnt = 0;
  }

  return v2;
}

@end