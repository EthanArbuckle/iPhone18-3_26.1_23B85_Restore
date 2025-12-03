@interface TSDCAAnimationGroupContextCache
+ (id)p_flattenedBestAnimationContextCachesForKeyPath:(id)path atTime:(double)time inContextCaches:(id)caches;
- (TSDCAAnimationGroupContextCache)initWithAnimation:(id)animation;
- (double)p_groupTimingFactorAtTime:(double)time;
- (id)p_bestAnimationContextCachesForKeyPath:(id)path atTime:(double)time;
- (id)valueForKeyPath:(id)path atTime:(double)time animationCache:(id)cache;
@end

@implementation TSDCAAnimationGroupContextCache

- (TSDCAAnimationGroupContextCache)initWithAnimation:(id)animation
{
  v29 = *MEMORY[0x277D85DE8];
  animationCopy = animation;
  v27.receiver = self;
  v27.super_class = TSDCAAnimationGroupContextCache;
  v7 = [(TSDCAAnimationContextCache *)&v27 initWithAnimation:animationCopy];
  if (v7)
  {
    v8 = objc_msgSend_animations(animationCopy, v5, v6);
    animations = v7->_animations;
    v7->_animations = v8;

    v10 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v11 = v7->_animations;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v23, v28, 16);
    if (v13)
    {
      v16 = v13;
      v17 = *v24;
      do
      {
        v18 = 0;
        do
        {
          if (*v24 != v17)
          {
            objc_enumerationMutation(v11);
          }

          v19 = objc_msgSend_TSDCAAnimationContextCache(*(*(&v23 + 1) + 8 * v18), v14, v15, v23);
          objc_msgSend_addObject_(v10, v20, v19);

          ++v18;
        }

        while (v16 != v18);
        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v23, v28, 16);
      }

      while (v16);
    }

    animationContextCaches = v7->_animationContextCaches;
    v7->_animationContextCaches = v10;
  }

  return v7;
}

- (id)p_bestAnimationContextCachesForKeyPath:(id)path atTime:(double)time
{
  v59 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v52 = objc_opt_new();
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  selfCopy = self;
  obj = objc_msgSend_animationContextCaches(self, v6, v7);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v54, v58, 16);
  if (v9)
  {
    v10 = v9;
    v11 = *v55;
    v12 = *MEMORY[0x277CDA238];
    v48 = *MEMORY[0x277CDA230];
    v13 = 1.79769313e308;
    p_cache = &OBJC_METACLASS___TSDMovieLayout.cache;
    v15 = &OBJC_METACLASS___TSDMovieLayout.cache;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v55 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v54 + 1) + 8 * i);
        objc_opt_class();
        v18 = TSUDynamicCast();
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_msgSend_keyPath(v18, v19, v20), v21 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend_isEqualToString_(v21, v22, pathCopy), v21, v23))
        {
          objc_msgSend_animationPercentFromAnimationTime_(v17, v19, v20, time, v48);
          v25 = v24;
          v28 = objc_msgSend_fillMode(v17, v26, v27);
          if (objc_msgSend_isEqualToString_(v28, v29, v12))
          {
            isEqualToString = 1;
          }

          else
          {
            objc_msgSend_fillMode(v17, v30, v31);
            v53 = v18;
            v33 = v10;
            v34 = v11;
            v35 = v12;
            v36 = v15;
            v38 = v37 = p_cache;
            isEqualToString = objc_msgSend_isEqualToString_(v38, v39, v48);

            p_cache = v37;
            v15 = v36;
            v12 = v35;
            v11 = v34;
            v10 = v33;
            v18 = v53;
          }

          if (v25 > 1.0)
          {
            v42 = isEqualToString;
          }

          else
          {
            v42 = 0;
          }

          v43 = 0.0;
          v44 = v25 > 1.0 || v25 < 0.0;
          if (v44 && (v42 & 1) == 0)
          {
            objc_msgSend_duration(selfCopy, v40, v41);
            if (v25 >= 0.0)
            {
              v43 = (v25 + -1.0) * v45;
            }

            else
            {
              v43 = -(v25 * v45);
            }
          }

          if (v43 <= v13)
          {
            if (v43 < v13)
            {
              objc_msgSend_removeAllObjects(v52, v40, v41);
              v13 = v43;
            }

            objc_msgSend_addObject_(v52, v40, v17);
          }
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v46, &v54, v58, 16);
    }

    while (v10);
  }

  return v52;
}

+ (id)p_flattenedBestAnimationContextCachesForKeyPath:(id)path atTime:(double)time inContextCaches:(id)caches
{
  v32 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  cachesCopy = caches;
  v9 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = cachesCopy;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v27, v31, 16);
  if (v12)
  {
    v13 = v12;
    v14 = *v28;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v27 + 1) + 8 * i);
        objc_opt_class();
        v18 = TSUDynamicCast();
        if (v18)
        {
          v19 = objc_opt_class();
          v21 = objc_msgSend_p_bestAnimationContextCachesForKeyPath_atTime_(v18, v20, pathCopy, time);
          v23 = objc_msgSend_p_flattenedBestAnimationContextCachesForKeyPath_atTime_inContextCaches_(v19, v22, pathCopy, v21, time);

          objc_msgSend_addObjectsFromArray_(v9, v24, v23);
        }

        else
        {
          objc_msgSend_addObject_(v9, v17, v16);
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v25, &v27, v31, 16);
    }

    while (v13);
  }

  return v9;
}

- (id)valueForKeyPath:(id)path atTime:(double)time animationCache:(id)cache
{
  v63 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  cacheCopy = cache;
  v11 = objc_msgSend_p_bestAnimationContextCachesForKeyPath_atTime_(self, v10, pathCopy, time);
  v12 = objc_opt_class();
  v14 = objc_msgSend_p_flattenedBestAnimationContextCachesForKeyPath_atTime_inContextCaches_(v12, v13, pathCopy, v11, time);
  v17 = v14;
  if (!v14 || !objc_msgSend_count(v14, v15, v16))
  {
    goto LABEL_26;
  }

  objc_msgSend_p_groupTimingFactorAtTime_(self, v15, v16, time);
  v19 = v18;
  v22 = objc_msgSend_layer(cacheCopy, v20, v21);
  v24 = objc_msgSend_valueForKeyPath_(v22, v23, @"transform.rotation.z");

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v25 = v17;
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v58, v62, 16);
  if (!v27)
  {

LABEL_26:
    v51 = objc_msgSend_initialValues(cacheCopy, v15, v16);
    v31 = objc_msgSend_objectForKey_(v51, v52, pathCopy);

    goto LABEL_27;
  }

  v29 = v27;
  v54 = v17;
  v55 = v11;
  v56 = cacheCopy;
  v57 = pathCopy;
  v30 = 0;
  v31 = 0;
  v32 = *v59;
  v33 = 0.0;
  while (2)
  {
    v34 = 0;
    v35 = v31;
    do
    {
      if (*v59 != v32)
      {
        objc_enumerationMutation(v25);
      }

      v31 = objc_msgSend_valueAtTime_initialValue_groupTimingFactor_(*(*(&v58 + 1) + 8 * v34), v28, v35, time, v19, v54, v55, v56, v57, v58);

      objc_opt_class();
      v36 = TSUDynamicCast();
      if (v36)
      {
        objc_opt_class();
        v37 = TSUDynamicCast();
        if (objc_msgSend_isAdditive(v36, v38, v39))
        {
          if (!v37)
          {

            goto LABEL_21;
          }

          objc_msgSend_doubleValue(v37, v40, v41);
          v33 = v33 + v44;
          if (v24)
          {
            objc_msgSend_doubleValue(v24, v42, v43);
            v33 = v33 + v45;

            v24 = 0;
          }

          v30 = 1;
        }

        else if (v37)
        {
          objc_msgSend_doubleValue(v37, v40, v41);
          v33 = v46;
        }
      }

      ++v34;
      v35 = v31;
    }

    while (v29 != v34);
    v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v28, &v58, v62, 16);
    if (v29)
    {
      continue;
    }

    break;
  }

LABEL_21:

  if (v30)
  {
    v47 = objc_alloc(MEMORY[0x277CCABB0]);
    v50 = objc_msgSend_initWithDouble_(v47, v48, v49, v33);

    v31 = v50;
  }

  cacheCopy = v56;
  pathCopy = v57;
  v17 = v54;
  v11 = v55;

  if (!v31)
  {
    goto LABEL_26;
  }

LABEL_27:

  return v31;
}

- (double)p_groupTimingFactorAtTime:(double)time
{
  v6 = objc_msgSend_timingFunction(self, a2, v3);

  v9 = 1.0;
  if (v6)
  {
    objc_msgSend_animationPercentFromAnimationTime_(self, v7, v8, time);
    if (v12 != 0.0)
    {
      v13 = v12;
      v14 = objc_msgSend_timingFunction(self, v10, v11);
      objc_msgSend_TSD_valueAtPercent_(v14, v15, v16, v13);
      v18 = v17;

      return v18 / v13;
    }
  }

  return v9;
}

@end