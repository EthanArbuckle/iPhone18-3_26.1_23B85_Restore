@interface TSCHPointArrayCache
+ ($5C4A7F080D05DAA414778C98C68F800C)cachedPointsForSeries:(id)series inAreaFrame:(CGRect)frame groupIndexSet:(id)set cullBadPoints:(BOOL)points outCount:(unint64_t *)count;
+ (id)p_getCacheCreate:(BOOL)create;
+ (void)clearCache;
+ (void)setCachedPointsForSeries:(id)series inAreaFrame:(CGRect)frame groupIndexSet:(id)set cullBadPoints:(BOOL)points points:(id *)a7 count:(unint64_t)count;
- (BOOL)matchesSeries:(id)series areaFrame:(CGRect)frame groupIndexSet:(id)set cull:(BOOL)cull;
@end

@implementation TSCHPointArrayCache

- (BOOL)matchesSeries:(id)series areaFrame:(CGRect)frame groupIndexSet:(id)set cull:(BOOL)cull
{
  cullCopy = cull;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  setCopy = set;
  v18 = self->_series == series && (v20.origin.x = x, v20.origin.y = y, v20.size.width = width, v20.size.height = height, CGRectEqualToRect(v20, self->_areaFrame)) && objc_msgSend_isEqualToIndexSet_(self->_groupIndexSet, v14, v15, v16, v17, setCopy) && self->_cull != !cullCopy && self->_data != 0;

  return v18;
}

+ (id)p_getCacheCreate:(BOOL)create
{
  createCopy = create;
  v7 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], a2, v3, v4, v5);
  v12 = objc_msgSend_threadDictionary(v7, v8, v9, v10, v11);
  v17 = objc_msgSend_objectForKey_(v12, v13, v14, v15, v16, @"TSCHPointArrayCache");

  if (v17)
  {
    v22 = 1;
  }

  else
  {
    v22 = !createCopy;
  }

  v23 = v17;
  if (!v22)
  {
    v23 = objc_msgSend_array(MEMORY[0x277CBEB18], v18, v19, v20, v21);
    v28 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], v24, v25, v26, v27);
    v33 = objc_msgSend_threadDictionary(v28, v29, v30, v31, v32);
    objc_msgSend_setObject_forKey_(v33, v34, v35, v36, v37, v23, @"TSCHPointArrayCache");
  }

  return v23;
}

+ ($5C4A7F080D05DAA414778C98C68F800C)cachedPointsForSeries:(id)series inAreaFrame:(CGRect)frame groupIndexSet:(id)set cullBadPoints:(BOOL)points outCount:(unint64_t *)count
{
  pointsCopy = points;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v66 = *MEMORY[0x277D85DE8];
  seriesCopy = series;
  setCopy = set;
  if (count)
  {
    *count = 0;
  }

  if (seriesCopy && (objc_msgSend_model(seriesCopy, v16, v18, v19, v20), v21 = objc_claimAutoreleasedReturnValue(), isTransient = objc_msgSend_isTransient(v21, v22, v23, v24, v25), v21, (isTransient & 1) == 0))
  {
    objc_msgSend_p_getCacheCreate_(self, v27, v28, v29, v30, 0);
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v32 = v62 = 0u;
    v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, v34, v35, v36, &v61, v65, 16);
    if (v38)
    {
      v39 = *v62;
      while (2)
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v62 != v39)
          {
            objc_enumerationMutation(v32);
          }

          v41 = *(*(&v61 + 1) + 8 * i);
          if (objc_msgSend_matchesSeries_areaFrame_groupIndexSet_cull_(v41, v37, x, y, width, seriesCopy, setCopy, pointsCopy, height, v61))
          {
            v45 = objc_msgSend_length(v41[8], v37, v42, v43, v44);
            v31 = malloc_type_malloc(v45, 0x100004020A5FE2DuLL);
            v50 = objc_msgSend_bytes(v41[8], v46, v47, v48, v49);
            v55 = objc_msgSend_length(v41[8], v51, v52, v53, v54);
            memcpy(v31, v50, v55);
            if (count)
            {
              *count = objc_msgSend_length(v41[8], v56, v57, v58, v59) / 0x28uLL;
            }

            goto LABEL_17;
          }
        }

        v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v37, v42, v43, v44, &v61, v65, 16);
        if (v38)
        {
          continue;
        }

        break;
      }
    }

    v31 = 0;
LABEL_17:
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

+ (void)setCachedPointsForSeries:(id)series inAreaFrame:(CGRect)frame groupIndexSet:(id)set cullBadPoints:(BOOL)points points:(id *)a7 count:(unint64_t)count
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  seriesCopy = series;
  setCopy = set;
  if (seriesCopy)
  {
    v23 = objc_msgSend_model(seriesCopy, v18, v20, v21, v22);
    isTransient = objc_msgSend_isTransient(v23, v24, v25, v26, v27);

    if ((isTransient & 1) == 0)
    {
      v29 = objc_alloc_init(TSCHPointArrayCache);
      objc_storeStrong(&v29->_series, series);
      v29->_areaFrame.origin.x = x;
      v29->_areaFrame.origin.y = y;
      v29->_areaFrame.size.width = width;
      v29->_areaFrame.size.height = height;
      v34 = objc_msgSend_copy(setCopy, v30, v31, v32, v33);
      groupIndexSet = v29->_groupIndexSet;
      v29->_groupIndexSet = v34;

      v29->_cull = points;
      v36 = objc_alloc(MEMORY[0x277CBEA90]);
      v41 = objc_msgSend_initWithBytes_length_(v36, v37, v38, v39, v40, a7, 40 * count);
      data = v29->_data;
      v29->_data = v41;

      v47 = objc_msgSend_p_getCacheCreate_(self, v43, v44, v45, v46, 1);
      objc_msgSend_insertObject_atIndex_(v47, v48, v49, v50, v51, v29, 0);
      if (objc_msgSend_count(v47, v52, v53, v54, v55) >= 3)
      {
        objc_msgSend_removeLastObject(v47, v56, v57, v58, v59);
      }
    }
  }
}

+ (void)clearCache
{
  v14 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], a2, v2, v3, v4);
  v9 = objc_msgSend_threadDictionary(v14, v5, v6, v7, v8);
  objc_msgSend_removeObjectForKey_(v9, v10, v11, v12, v13, @"TSCHPointArrayCache");
}

@end