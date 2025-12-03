@interface TSCHMultiDataChartRepAnimationDictionaryEntry
+ (id)entry;
- (TSCHMultiDataChartRepAnimationDictionaryEntry)init;
- (id)animation;
- (void)addAnimation:(id)animation animationInfo:(id)info;
@end

@implementation TSCHMultiDataChartRepAnimationDictionaryEntry

+ (id)entry
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (TSCHMultiDataChartRepAnimationDictionaryEntry)init
{
  v6.receiver = self;
  v6.super_class = TSCHMultiDataChartRepAnimationDictionaryEntry;
  v2 = [(TSCHMultiDataChartRepAnimationDictionaryEntry *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    animations = v2->_animations;
    v2->_animations = v3;
  }

  return v2;
}

- (void)addAnimation:(id)animation animationInfo:(id)info
{
  animationCopy = animation;
  infoCopy = info;
  v11 = infoCopy;
  if (self->_animationInfo)
  {
    v12 = objc_msgSend_timingFunction(infoCopy, v7, v8, v9, v10);
    v17 = objc_msgSend_timingFunction(self->_animationInfo, v13, v14, v15, v16);
    isEqual = objc_msgSend_isEqual_(v12, v18, v19, v20, v21, v17);

    if ((isEqual & 1) == 0)
    {
      v27 = MEMORY[0x277D81150];
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v24, v25, v26, "[TSCHMultiDataChartRepAnimationDictionaryEntry addAnimation:animationInfo:]");
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHMultiDataChartRepAnimationDictionary.m");
      v38 = objc_msgSend_timingFunction(v11, v34, v35, v36, v37);
      v43 = objc_msgSend_timingFunction(self->_animationInfo, v39, v40, v41, v42);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v44, v45, v46, v47, v28, v33, 42, 0, "timing function mismatch %@ should be %@", v38, v43);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49, v50, v51);
    }

    objc_msgSend_duration(v11, v23, v24, v25, v26);
    v53 = v52;
    objc_msgSend_duration(self->_animationInfo, v54, v52, v55, v56);
    if (v53 != v58)
    {
      v59 = fabs(v58 * 0.000000999999997);
      v58 = vabdd_f64(v53, v58);
      if (v58 >= v59)
      {
        v61 = MEMORY[0x277D81150];
        v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, v58, v59, v60, "[TSCHMultiDataChartRepAnimationDictionaryEntry addAnimation:animationInfo:]");
        v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, v64, v65, v66, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHMultiDataChartRepAnimationDictionary.m");
        objc_msgSend_duration(v11, v68, v69, v70, v71);
        v73 = v72;
        objc_msgSend_duration(self->_animationInfo, v74, v72, v75, v76);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v61, v77, v78, v79, v80, v62, v67, 43, 0, "duration mismatch %f should be %f", *&v73, *&v78);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v81, v82, v83, v84);
      }
    }
  }

  else
  {
    v85 = objc_msgSend_copy(infoCopy, v7, v8, v9, v10);
    animationInfo = self->_animationInfo;
    self->_animationInfo = v85;
  }

  objc_msgSend_addObject_(self->_animations, v57, v58, v59, v60, animationCopy);
}

- (id)animation
{
  if (!self->_animationInfo)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCHMultiDataChartRepAnimationDictionaryEntry animation]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHMultiDataChartRepAnimationDictionary.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 49, 0, "invalid nil value for '%{public}s'", "_animationInfo");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  if (!objc_msgSend_count(self->_animations, a2, v2, v3, v4))
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, "[TSCHMultiDataChartRepAnimationDictionaryEntry animation]");
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v28, v29, v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHMultiDataChartRepAnimationDictionary.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v32, v33, v34, v35, v26, v31, 50, 0, "entry has no animations");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38, v39);
  }

  v40 = objc_msgSend_animation(MEMORY[0x277CD9E00], v21, v22, v23, v24);
  objc_msgSend_setAnimations_(v40, v41, v42, v43, v44, self->_animations);
  objc_msgSend_duration(self->_animationInfo, v45, v46, v47, v48);
  objc_msgSend_setDuration_(v40, v49, v50, v51, v52);
  v57 = objc_msgSend_timingFunction(self->_animationInfo, v53, v54, v55, v56);
  objc_msgSend_setTimingFunction_(v40, v58, v59, v60, v61, v57);

  return v40;
}

@end