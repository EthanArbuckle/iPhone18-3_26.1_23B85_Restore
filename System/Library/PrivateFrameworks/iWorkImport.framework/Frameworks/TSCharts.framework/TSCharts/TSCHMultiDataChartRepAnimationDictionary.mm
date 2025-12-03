@interface TSCHMultiDataChartRepAnimationDictionary
+ (id)dictionary;
- (NSDictionary)animationDictionaryForBuildEngine;
- (TSCHMultiDataChartRepAnimationDictionary)init;
- (id)entryForLayer:(id)layer;
- (id)nonretainedValueForObject:(id)object;
- (void)addAnimation:(id)animation animationInfo:(id)info forLayer:(id)layer;
- (void)addEntriesFromAnimationDictionary:(id)dictionary beginTime:(double)time duration:(double)duration interpolations:(id)interpolations;
@end

@implementation TSCHMultiDataChartRepAnimationDictionary

+ (id)dictionary
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (TSCHMultiDataChartRepAnimationDictionary)init
{
  v6.receiver = self;
  v6.super_class = TSCHMultiDataChartRepAnimationDictionary;
  v2 = [(TSCHMultiDataChartRepAnimationDictionary *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D81308]);
    entries = v2->_entries;
    v2->_entries = v3;
  }

  return v2;
}

- (id)entryForLayer:(id)layer
{
  layerCopy = layer;
  v10 = objc_msgSend_objectForKeyedSubscript_(self->_entries, v5, v6, v7, v8, layerCopy);
  if (!v10)
  {
    v10 = objc_msgSend_entry(TSCHMultiDataChartRepAnimationDictionaryEntry, v9, v11, v12, v13);
    objc_msgSend_setObject_forKeyedSubscript_(self->_entries, v14, v15, v16, v17, v10, layerCopy);
  }

  return v10;
}

- (void)addAnimation:(id)animation animationInfo:(id)info forLayer:(id)layer
{
  infoCopy = info;
  animationCopy = animation;
  v18 = objc_msgSend_entryForLayer_(self, v10, v11, v12, v13, layer);
  objc_msgSend_addAnimation_animationInfo_(v18, v14, v15, v16, v17, animationCopy, infoCopy);
}

- (id)nonretainedValueForObject:(id)object
{
  objectCopy = object;
  v9 = MEMORY[0x277CCAE60];

  return objc_msgSend_valueWithNonretainedObject_(v9, v5, v6, v7, v8, object);
}

- (NSDictionary)animationDictionaryForBuildEngine
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2, v3, v4);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v7 = self->_entries;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, v9, v10, v11, &v42, v46, 16);
  if (v12)
  {
    v17 = v12;
    v18 = *v43;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v43 != v18)
        {
          objc_enumerationMutation(v7);
        }

        v20 = *(*(&v42 + 1) + 8 * i);
        v21 = objc_msgSend_objectForKeyedSubscript_(self->_entries, v13, v14, v15, v16, v20, v42);
        v26 = objc_msgSend_nonretainedValueForObject_(self, v22, v23, v24, v25, v20);
        v31 = objc_msgSend_animation(v21, v27, v28, v29, v30);
        v36 = objc_msgSend_nonretainedValueForObject_(self, v32, v33, v34, v35, v31);

        objc_msgSend_setObject_forKeyedSubscript_(v6, v37, v38, v39, v40, v36, v26);
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v13, v14, v15, v16, &v42, v46, 16);
    }

    while (v17);
  }

  return v6;
}

- (void)addEntriesFromAnimationDictionary:(id)dictionary beginTime:(double)time duration:(double)duration interpolations:(id)interpolations
{
  v109 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  interpolationsCopy = interpolations;
  v16 = objc_msgSend_animationInfo(TSCHMultiDataLayerAnimationInfo, v12, v13, v14, v15);
  v21 = objc_msgSend_overall(interpolationsCopy, v17, v18, v19, v20);
  objc_msgSend_setTimingFunction_(v16, v22, v23, v24, v25, v21);

  objc_msgSend_setDuration_(v16, v26, duration, v27, v28);
  if (!dictionaryCopy)
  {
    v33 = MEMORY[0x277D81150];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, "[TSCHMultiDataChartRepAnimationDictionary addEntriesFromAnimationDictionary:beginTime:duration:interpolations:]");
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v36, v37, v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHMultiDataChartRepAnimationDictionary.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v40, v41, v42, v43, v34, v39, 114, 0, "invalid nil value for '%{public}s'", "other");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46, v47);
  }

  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  obj = dictionaryCopy[1];
  v103 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v48, v49, v50, v51, &v104, v108, 16);
  if (v103)
  {
    v56 = *v105;
    v100 = *v105;
    v101 = v16;
    do
    {
      for (i = 0; i != v103; ++i)
      {
        if (*v105 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v58 = *(*(&v104 + 1) + 8 * i);
        v59 = objc_msgSend_entryForLayer_(dictionaryCopy, v52, v53, v54, v55, v58);
        v65 = objc_msgSend_animation(v59, v60, v61, v62, v63);
        if (!v65)
        {
          v69 = interpolationsCopy;
          selfCopy = self;
          v71 = dictionaryCopy;
          v72 = MEMORY[0x277D81150];
          v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, v66, v67, v68, "[TSCHMultiDataChartRepAnimationDictionary addEntriesFromAnimationDictionary:beginTime:duration:interpolations:]");
          v78 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v74, v75, v76, v77, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHMultiDataChartRepAnimationDictionary.m");
          v79 = v72;
          dictionaryCopy = v71;
          self = selfCopy;
          interpolationsCopy = v69;
          v16 = v101;
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v79, v80, v81, v82, v83, v73, v78, 118, 0, "invalid nil value for '%{public}s'", "animation");

          v56 = v100;
          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v84, v85, v86, v87);
        }

        v88 = objc_msgSend_individual(interpolationsCopy, v64, v66, v67, v68);
        objc_msgSend_setTimingFunction_(v65, v89, v90, v91, v92, v88);

        objc_msgSend_setBeginTime_(v65, v93, time, v94, v95);
        objc_msgSend_addAnimation_animationInfo_forLayer_(self, v96, v97, v98, v99, v65, v16, v58);
      }

      v103 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v52, v53, v54, v55, &v104, v108, 16);
    }

    while (v103);
  }
}

@end