@interface KNSlideNodeDepthMap
- (KNSlideNodeDepthMap)initWithSlideNodes:(id)nodes depths:(id)depths;
- (void)enumerateSlideNodesAndDepthsUsingBlock:(id)block;
@end

@implementation KNSlideNodeDepthMap

- (KNSlideNodeDepthMap)initWithSlideNodes:(id)nodes depths:(id)depths
{
  nodesCopy = nodes;
  depthsCopy = depths;
  v30.receiver = self;
  v30.super_class = KNSlideNodeDepthMap;
  v10 = [(KNSlideNodeDepthMap *)&v30 init];
  if (v10)
  {
    v11 = objc_msgSend_count(nodesCopy, v8, v9);
    if (v11 != objc_msgSend_count(depthsCopy, v12, v13))
    {
      v16 = MEMORY[0x277D81150];
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[KNSlideNodeDepthMap initWithSlideNodes:depths:]");
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideNodeDepthMap.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 30, 0, "Slide node depths map must have equal number slide nodes to depths.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
    }

    v23 = objc_msgSend_copy(nodesCopy, v14, v15);
    slideNodes = v10->_slideNodes;
    v10->_slideNodes = v23;

    v27 = objc_msgSend_copy(depthsCopy, v25, v26);
    depthsOfSlideNodes = v10->_depthsOfSlideNodes;
    v10->_depthsOfSlideNodes = v27;
  }

  return v10;
}

- (void)enumerateSlideNodesAndDepthsUsingBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[KNSlideNodeDepthMap enumerateSlideNodesAndDepthsUsingBlock:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideNodeDepthMap.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 40, 0, "invalid nil value for '%{public}s'", "block");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  if (objc_msgSend_count(self->_slideNodes, v4, v5))
  {
    v14 = 0;
    do
    {
      v15 = objc_msgSend_objectAtIndexedSubscript_(self->_slideNodes, v13, v14);
      v17 = objc_msgSend_objectAtIndexedSubscript_(self->_depthsOfSlideNodes, v16, v14);
      v20 = objc_msgSend_unsignedIntegerValue(v17, v18, v19);
      blockCopy[2](blockCopy, v15, v20);

      ++v14;
    }

    while (v14 < objc_msgSend_count(self->_slideNodes, v21, v22));
  }
}

@end