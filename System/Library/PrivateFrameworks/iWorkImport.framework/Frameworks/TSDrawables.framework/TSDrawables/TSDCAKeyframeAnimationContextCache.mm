@interface TSDCAKeyframeAnimationContextCache
- (TSDCAKeyframeAnimationContextCache)initWithAnimation:(id)animation;
- (double)percentAtTime:(double)time;
- (id)valueAtTime:(double)time initialValue:(id)value groupTimingFactor:(double)factor;
@end

@implementation TSDCAKeyframeAnimationContextCache

- (TSDCAKeyframeAnimationContextCache)initWithAnimation:(id)animation
{
  animationCopy = animation;
  v60.receiver = self;
  v60.super_class = TSDCAKeyframeAnimationContextCache;
  v7 = [(TSDCAPropertyAnimationContextCache *)&v60 initWithAnimation:animationCopy];
  if (v7)
  {
    v8 = objc_msgSend_keyPath(animationCopy, v5, v6);
    isEqualToString = objc_msgSend_isEqualToString_(v8, v9, @"contents");
    objc_msgSend_setIsContentsAnimation_(v7, v11, isEqualToString);

    if (objc_msgSend_isContentsAnimation(v7, v12, v13))
    {
      v16 = objc_msgSend_values(animationCopy, v14, v15);
      v19 = objc_msgSend_mutableCopy(v16, v17, v18);
      v58[0] = 0;
      v58[1] = v58;
      v58[2] = 0x3032000000;
      v58[3] = sub_2766D5ED0;
      v58[4] = sub_2766D5EE0;
      objc_opt_class();
      v21 = objc_msgSend_objectAtIndexedSubscript_(v16, v20, 0);
      v59 = TSUDynamicCast();

      v56[0] = 0;
      v56[1] = v56;
      v56[2] = 0x3032000000;
      v56[3] = sub_2766D5ED0;
      v56[4] = sub_2766D5EE0;
      objc_opt_class();
      v23 = objc_msgSend_objectAtIndexedSubscript_(v16, v22, 1);
      v57 = TSUDynamicCast();

      v48 = MEMORY[0x277D85DD0];
      v49 = 3221225472;
      v50 = sub_2766D5EE8;
      v51 = &unk_27A6CCE88;
      v54 = v58;
      v55 = v56;
      v24 = v16;
      v52 = v24;
      v25 = v19;
      v53 = v25;
      objc_msgSend_enumerateObjectsUsingBlock_(v24, v26, &v48);
      objc_msgSend_setValues_(animationCopy, v27, v25, v48, v49, v50, v51);

      _Block_object_dispose(v56, 8);
      _Block_object_dispose(v58, 8);
    }

    v28 = objc_msgSend_values(animationCopy, v14, v15);
    values = v7->_values;
    v7->_values = v28;

    v32 = objc_msgSend_keyTimes(animationCopy, v30, v31);
    keyTimes = v7->_keyTimes;
    v7->_keyTimes = v32;

    v36 = objc_msgSend_timingFunctions(animationCopy, v34, v35);
    timingFunctions = v7->_timingFunctions;
    v7->_timingFunctions = v36;

    objc_msgSend_setIsObjectTypeCGColor_(v7, v38, 0);
    v41 = v7->_values;
    if (v41 && objc_msgSend_count(v41, v39, v40))
    {
      v43 = objc_msgSend_objectAtIndexedSubscript_(v7->_values, v42, 0);
      v44 = CFGetTypeID(v43);
      v45 = v44 == CGColorGetTypeID();
      objc_msgSend_setIsObjectTypeCGColor_(v7, v46, v45);
    }
  }

  return v7;
}

- (id)valueAtTime:(double)time initialValue:(id)value groupTimingFactor:(double)factor
{
  v84 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  if (objc_msgSend_shouldUseInitialValueAtAnimationTime_(self, v8, v9, time))
  {
    v12 = valueCopy;
    objc_msgSend_adjustedResultWithValue_(self, v13, v12);
    goto LABEL_25;
  }

  objc_msgSend_workingPercentFromAnimationTime_(self, v10, v11, time);
  v15 = v14;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v18 = objc_msgSend_keyTimes(self, v16, v17, 0);
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v79, v83, 16);
  if (v22)
  {
    v23 = *v80;
    v24 = -1;
    while (2)
    {
      v25 = 0;
      v26 = v24;
      v24 += v22;
      do
      {
        if (*v80 != v23)
        {
          objc_enumerationMutation(v18);
        }

        objc_msgSend_doubleValue(*(*(&v79 + 1) + 8 * v25), v20, v21);
        v28 = vabdd_f64(v15, v27);
        if (v15 < v27 && v28 >= 0.000001)
        {
          v29 = 0;
          goto LABEL_18;
        }

        if (v15 == v27 || v28 < 0.000001)
        {
          ++v26;
          v29 = 1;
          goto LABEL_18;
        }

        ++v25;
        ++v26;
      }

      while (v22 != v25);
      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v20, &v79, v83, 16);
      if (v22)
      {
        continue;
      }

      break;
    }

    v29 = 0;
    v26 = v24;
LABEL_18:

    v22 = v26 & ~(v26 >> 63);
    if ((v26 & 0x8000000000000000) == 0 && (v29 & 1) == 0)
    {
      v32 = objc_msgSend_keyTimes(self, v30, v31);
      v35 = objc_msgSend_count(v32, v33, v34) - 1;

      if (v26 != v35)
      {
        v48 = objc_msgSend_keyTimes(self, v30, v31);
        v50 = objc_msgSend_objectAtIndex_(v48, v49, v26);
        objc_msgSend_doubleValue(v50, v51, v52);

        v55 = objc_msgSend_keyTimes(self, v53, v54);
        v57 = objc_msgSend_objectAtIndex_(v55, v56, v26 + 1);
        objc_msgSend_doubleValue(v57, v58, v59);

        v62 = objc_msgSend_timingFunctions(self, v60, v61);
        v36 = objc_msgSend_objectAtIndex_(v62, v63, v26);

        TSUClamp();
        if (v36)
        {
          objc_msgSend_TSD_valueAtPercent_(v36, v64, v65);
        }

        TSUClamp();
        v67 = v66;
        v70 = objc_msgSend_values(self, v68, v69);
        v72 = objc_msgSend_objectAtIndex_(v70, v71, v26);

        v75 = objc_msgSend_values(self, v73, v74);
        v77 = objc_msgSend_objectAtIndex_(v75, v76, v26 + 1);

        v12 = objc_msgSend_interpolatedValueFrom_to_percent_(self, v78, v72, v77, v67);

        goto LABEL_22;
      }
    }
  }

  else
  {
  }

  v36 = objc_msgSend_values(self, v30, v31);
  v12 = objc_msgSend_objectAtIndex_(v36, v37, v22);
LABEL_22:

  if (!v12)
  {
    v39 = MEMORY[0x277D81150];
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "[TSDCAKeyframeAnimationContextCache valueAtTime:initialValue:groupTimingFactor:]");
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/CAAnimationAdditions.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v43, v40, v42, 522, 0, "result is nil!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45);
    v12 = 0;
  }

  objc_msgSend_adjustedResultWithValue_(self, v38, v12);
  v46 = LABEL_25:;

  return v46;
}

- (double)percentAtTime:(double)time
{
  v69 = *MEMORY[0x277D85DE8];
  objc_msgSend_animationPercentFromAnimationTime_(self, a2, v3, time);
  v8 = v7;
  if (v7 > 0.0 && v7 < 1.0)
  {
    v10 = objc_msgSend_keyTimes(self, v5, v6);
    v13 = objc_msgSend_firstObject(v10, v11, v12);
    objc_msgSend_doubleValue(v13, v14, v15);
    if (v8 >= v18)
    {
      v19 = objc_msgSend_keyTimes(self, v16, v17);
      v22 = objc_msgSend_lastObject(v19, v20, v21);
      objc_msgSend_doubleValue(v22, v23, v24);
      v26 = v25;

      if (v8 <= v26)
      {
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v29 = objc_msgSend_keyTimes(self, v27, v28, 0);
        v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, &v64, v68, 16);
        if (v33)
        {
          v34 = *v65;
          while (2)
          {
            for (i = 0; i != v33; ++i)
            {
              if (*v65 != v34)
              {
                objc_enumerationMutation(v29);
              }

              v36 = *(*(&v64 + 1) + 8 * i);
              objc_msgSend_doubleValue(v36, v31, v32);
              if (v8 < v37)
              {
                v38 = objc_msgSend_keyTimes(self, v31, v32);
                v33 = objc_msgSend_indexOfObject_(v38, v39, v36) - 1;

                goto LABEL_19;
              }
            }

            v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v31, &v64, v68, 16);
            if (v33)
            {
              continue;
            }

            break;
          }
        }

LABEL_19:

        v42 = objc_msgSend_keyTimes(self, v40, v41);
        v44 = objc_msgSend_objectAtIndex_(v42, v43, v33);
        objc_msgSend_doubleValue(v44, v45, v46);

        v49 = objc_msgSend_keyTimes(self, v47, v48);
        v51 = objc_msgSend_objectAtIndex_(v49, v50, v33 + 1);
        objc_msgSend_doubleValue(v51, v52, v53);

        v56 = objc_msgSend_timingFunctions(self, v54, v55);
        v58 = objc_msgSend_objectAtIndex_(v56, v57, v33);

        TSUClamp();
        v8 = v61;
        if (v58)
        {
          objc_msgSend_TSD_valueAtPercent_(v58, v59, v60, v61);
          v8 = v62;
        }
      }
    }

    else
    {
    }
  }

  return v8;
}

@end