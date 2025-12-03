@interface TSCHChartLayoutCache
+ (TSCHChartLayoutCache)cacheWithCacheItem:(id)item;
- (TSCHChartLayoutCache)init;
- (TSCHChartLayoutCache)initWithCacheItem:(id)item;
- (void)accessWithCacheItemBlock:(id)block calculateBlock:(id)calculateBlock;
- (void)invalidate;
- (void)printDebug;
@end

@implementation TSCHChartLayoutCache

+ (TSCHChartLayoutCache)cacheWithCacheItem:(id)item
{
  itemCopy = item;
  v5 = [self alloc];
  v10 = objc_msgSend_initWithCacheItem_(v5, v6, v7, v8, v9, itemCopy);

  return v10;
}

- (TSCHChartLayoutCache)init
{
  v6.receiver = self;
  v6.super_class = TSCHChartLayoutCache;
  v2 = [(TSCHChartLayoutCache *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    cacheItems = v2->_cacheItems;
    v2->_cacheItems = v3;
  }

  return v2;
}

- (TSCHChartLayoutCache)initWithCacheItem:(id)item
{
  itemCopy = item;
  v13.receiver = self;
  v13.super_class = TSCHChartLayoutCache;
  v5 = [(TSCHChartLayoutCache *)&v13 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    cacheItems = v5->_cacheItems;
    v5->_cacheItems = v6;

    objc_msgSend_addObject_(v5->_cacheItems, v8, v9, v10, v11, itemCopy);
  }

  return v5;
}

- (void)accessWithCacheItemBlock:(id)block calculateBlock:(id)calculateBlock
{
  v40 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  calculateBlockCopy = calculateBlock;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v9 = selfCopy->_cacheItems;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, v11, v12, v13, &v35, v39, 16);
  if (v14)
  {
    v15 = *v36;
    while (2)
    {
      v16 = 0;
      do
      {
        if (*v36 != v15)
        {
          objc_enumerationMutation(v9);
        }

        if (blockCopy[2](blockCopy, *(*(&v35 + 1) + 8 * v16)))
        {

          goto LABEL_13;
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v17, v18, v19, v20, &v35, v39, 16);
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  cacheItems = selfCopy->_cacheItems;
  v22 = calculateBlockCopy[2](calculateBlockCopy);
  objc_msgSend_insertObject_atIndex_(cacheItems, v23, v24, v25, v26, v22, 0, v35);

  while (objc_msgSend_count(selfCopy->_cacheItems, v27, v28, v29, v30) >= 3)
  {
    objc_msgSend_removeLastObject(selfCopy->_cacheItems, v31, v32, v33, v34);
  }

LABEL_13:
  objc_sync_exit(selfCopy);
}

- (void)invalidate
{
  obj = self;
  objc_sync_enter(obj);
  if (!obj->_ignoreInvalidation)
  {
    objc_msgSend_removeAllObjects(obj->_cacheItems, v2, v3, v4, v5);
  }

  objc_sync_exit(obj);
}

- (void)printDebug
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = self->_cacheItems;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, v4, v5, v6, &v15, v19, 16);
  if (v7)
  {
    v12 = v7;
    v13 = *v16;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v2);
        }

        objc_msgSend_performSelector_(*(*(&v15 + 1) + 8 * i), v8, v9, v10, v11, sel_printDebug, v15);
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v8, v9, v10, v11, &v15, v19, 16);
    }

    while (v12);
  }
}

@end