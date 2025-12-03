@interface TSTLayoutTask
- (TSTLayoutEngine)layoutEngine;
- (TSTLayoutTask)initWithLayoutEngine:(id)engine;
- (TSTLayoutTask)initWithLayoutTask:(id)task;
- (id)copyWithZone:(_NSZone *)zone;
- (void)enumerateCellStatesUsingBlock:(id)block;
- (void)writeToLayoutEngineCaches:(id)caches;
@end

@implementation TSTLayoutTask

- (TSTLayoutTask)initWithLayoutEngine:(id)engine
{
  engineCopy = engine;
  v10.receiver = self;
  v10.super_class = TSTLayoutTask;
  v5 = [(TSTLayoutTask *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_layoutEngine, engineCopy);
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    cellStatesToLayout = v6->_cellStatesToLayout;
    v6->_cellStatesToLayout = v7;
  }

  return v6;
}

- (TSTLayoutTask)initWithLayoutTask:(id)task
{
  taskCopy = task;
  v23.receiver = self;
  v23.super_class = TSTLayoutTask;
  v9 = [(TSTLayoutTask *)&v23 init];
  if (v9)
  {
    v10 = objc_msgSend_layoutEngine(taskCopy, v5, v6, v7, v8);
    objc_storeWeak(&v9->_layoutEngine, v10);

    v15 = objc_msgSend_cellStatesToLayout(taskCopy, v11, v12, v13, v14);
    v20 = objc_msgSend_copy(v15, v16, v17, v18, v19);
    cellStatesToLayout = v9->_cellStatesToLayout;
    v9->_cellStatesToLayout = v20;
  }

  return v9;
}

- (void)enumerateCellStatesUsingBlock:(id)block
{
  v17 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v15 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_cellStatesToLayout;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v11, v16, 16);
  if (v7)
  {
    v8 = *v12;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v12 != v8)
      {
        objc_enumerationMutation(v5);
      }

      blockCopy[2](blockCopy, *(*(&v11 + 1) + 8 * v9), &v15);
      if (v15)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v10, &v11, v16, 16);
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)writeToLayoutEngineCaches:(id)caches
{
  cachesCopy = caches;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v11 = objc_msgSend_generateWidthHeightCollection(cachesCopy, v7, v8, v9, v10);
  cellStatesToLayout = self->_cellStatesToLayout;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = sub_2213ECB74;
  v36[3] = &unk_278464908;
  v13 = v6;
  v37 = v13;
  selfCopy = self;
  v14 = v11;
  v39 = v14;
  objc_msgSend_enumerateObjectsUsingBlock_(cellStatesToLayout, v15, v36, v16, v17);
  WeakRetained = objc_loadWeakRetained(&self->_layoutEngine);
  v23 = objc_msgSend_dupContentCache(WeakRetained, v19, v20, v21, v22);
  objc_msgSend_addEntriesFromDictionary_(v23, v24, v5, v25, v26);

  v27 = objc_loadWeakRetained(&self->_layoutEngine);
  v32 = objc_msgSend_cellIDToWPColumnCache(v27, v28, v29, v30, v31);
  objc_msgSend_addEntriesFromDictionary_(v32, v33, v13, v34, v35);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v9 = objc_msgSend_allocWithZone_(v5, v6, zone, v7, v8);

  return MEMORY[0x2821F9670](v9, sel_initWithLayoutTask_, self, v10, v11);
}

- (TSTLayoutEngine)layoutEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutEngine);

  return WeakRetained;
}

@end