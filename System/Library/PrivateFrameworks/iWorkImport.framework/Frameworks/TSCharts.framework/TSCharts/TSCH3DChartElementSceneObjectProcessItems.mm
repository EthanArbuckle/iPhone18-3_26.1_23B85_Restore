@interface TSCH3DChartElementSceneObjectProcessItems
+ (id)processItemsWithSceneObject:(id)object properties:(id)properties pipeline:(id)pipeline;
- (BOOL)p_delayedItemsAreUnique;
- (TSCH3DChartElementSceneObjectProcessItems)initWithSceneObject:(id)object properties:(id)properties pipeline:(id)pipeline;
- (id)elementInfoWithSeries:(id)series position:(void *)position;
- (void)p_processElementInfoWithSeries:(id)series position:(void *)position;
- (void)performItemsProcessing;
- (void)processDelayedItemsWithOpacity:(float)opacity;
- (void)processItems;
@end

@implementation TSCH3DChartElementSceneObjectProcessItems

+ (id)processItemsWithSceneObject:(id)object properties:(id)properties pipeline:(id)pipeline
{
  objectCopy = object;
  propertiesCopy = properties;
  pipelineCopy = pipeline;
  v11 = [self alloc];
  v16 = objc_msgSend_initWithSceneObject_properties_pipeline_(v11, v12, v13, v14, v15, objectCopy, propertiesCopy, pipelineCopy);

  return v16;
}

- (TSCH3DChartElementSceneObjectProcessItems)initWithSceneObject:(id)object properties:(id)properties pipeline:(id)pipeline
{
  objectCopy = object;
  propertiesCopy = properties;
  pipelineCopy = pipeline;
  v16.receiver = self;
  v16.super_class = TSCH3DChartElementSceneObjectProcessItems;
  v11 = [(TSCH3DChartElementSceneObjectProcessItems *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_sceneObject, objectCopy);
    objc_storeStrong(&v12->_properties, properties);
    objc_storeStrong(&v12->_pipeline, pipeline);
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    delayedItems = v12->_delayedItems;
    v12->_delayedItems = v13;
  }

  return v12;
}

- (id)elementInfoWithSeries:(id)series position:(void *)position
{
  seriesCopy = series;
  pipeline = self->_pipeline;
  properties = self->_properties;
  v24 = *position;
  v12 = objc_msgSend_useBoundsGeometry(self, v9, v24, v10, v11);
  HIBYTE(v23) = objc_msgSend_geometryOnly(self, v13, v14, v15, v16);
  LOBYTE(v23) = 0;
  v21 = objc_msgSend_infoWithPipeline_properties_series_index_useBoundsGeometry_twoPasses_transparent_geometryOnly_(TSCH3DRenderElementInfo, v17, v18, v19, v20, pipeline, properties, seriesCopy, &v24, v12, 0, v23);

  return v21;
}

- (BOOL)p_delayedItemsAreUnique
{
  v35 = *MEMORY[0x277D85DE8];
  v32 = 0;
  v33 = 0;
  v31 = &v32;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = self->_delayedItems;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, v5, v6, v7, &v27, v34, 16);
  if (v9)
  {
    v13 = *v28;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v3);
        }

        v15 = *(*(&v27 + 1) + 8 * i);
        if (v15)
        {
          objc_msgSend_index(v15, v8, v10, v11, v12);
        }

        else
        {
          v26 = 0;
        }

        v16 = v32;
        if (!v32)
        {
LABEL_19:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v17 = v16;
            v18 = *(v16 + 7);
            if (v26 >= v18)
            {
              break;
            }

LABEL_11:
            v16 = *v17;
            if (!*v17)
            {
              goto LABEL_19;
            }
          }

          if (v26 != v18)
          {
            break;
          }

          v19 = *(v17 + 8);
          if (SHIDWORD(v26) < v19)
          {
            goto LABEL_11;
          }

          if (v19 >= SHIDWORD(v26))
          {
            goto LABEL_20;
          }

LABEL_18:
          v16 = v17[1];
          if (!v16)
          {
            goto LABEL_19;
          }
        }

        if (v18 < v26)
        {
          goto LABEL_18;
        }

LABEL_20:
        ;
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v8, v10, v11, v12, &v27, v34, 16);
    }

    while (v9);
  }

  v20 = v33;
  LOBYTE(v20) = v20 == objc_msgSend_count(self->_delayedItems, v21, v22, v23, v24);
  sub_27617F924(v32);
  return v20;
}

- (void)processDelayedItemsWithOpacity:(float)opacity
{
  if (objc_msgSend_count(self->_delayedItems, a2, *&opacity, v3, v4))
  {
    v12 = objc_msgSend_processor(self->_pipeline, v8, v9, v10, v11);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_27617C23C;
    v16[3] = &unk_27A6B6530;
    v16[4] = self;
    v16[5] = a2;
    opacityCopy = opacity;
    objc_msgSend_performBlockWithProcessor_block_(TSCH3DRenderProcessorMatrixSession, v13, COERCE_DOUBLE(3221225472), v14, v15, v12, v16);
  }
}

- (void)p_processElementInfoWithSeries:(id)series position:(void *)position
{
  v34 = objc_msgSend_elementInfoWithSeries_position_(self, a2, v4, v5, v6, series, position);
  WeakRetained = objc_loadWeakRetained(&self->_sceneObject);
  v13 = objc_msgSend_scene(self->_pipeline, v9, v10, v11, v12);
  v18 = objc_msgSend_delegateFromScene_(WeakRetained, v14, v15, v16, v17, v13);

  v19 = objc_loadWeakRetained(&self->_sceneObject);
  LOBYTE(v13) = objc_msgSend_willProcessElement_sceneObject_(v18, v20, v21, v22, v23, v34, v19);

  if ((v13 & 1) == 0)
  {
    v24 = objc_loadWeakRetained(&self->_sceneObject);
    shouldRenderEachValue = objc_msgSend_shouldRenderEachValue(v24, v25, v26, v27, v28);

    objc_msgSend_processElementInfo_eachValue_(self, v30, v31, v32, v33, v34, shouldRenderEachValue);
  }
}

- (void)performItemsProcessing
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneObject);
  v8 = objc_msgSend_scene(self->_pipeline, v4, v5, v6, v7);
  v13 = objc_msgSend_delegateFromScene_(WeakRetained, v9, v10, v11, v12, v8);

  v14 = objc_loadWeakRetained(&self->_sceneObject);
  v19 = objc_msgSend_scene(self->_pipeline, v15, v16, v17, v18);
  v24 = objc_msgSend_modelEnumeratorFromScene_(v14, v20, v21, v22, v23, v19);

  v29 = objc_msgSend_seriesEnumerator(v24, v25, v26, v27, v28);
  v34 = objc_msgSend_processor(self->_pipeline, v30, v31, v32, v33);
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = sub_27617CAAC;
  v41[3] = &unk_27A6B6558;
  v41[4] = self;
  v35 = v29;
  v42 = v35;
  v36 = v13;
  v43 = v36;
  objc_msgSend_performBlockWithProcessor_block_(TSCH3DRenderProcessorMatrixSession, v37, v38, v39, v40, v34, v41);
}

- (void)processItems
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneObject);
  v8 = objc_msgSend_scene(self->_pipeline, v4, v5, v6, v7);
  v28 = objc_msgSend_delegateFromScene_(WeakRetained, v9, v10, v11, v12, v8);

  if (!v28 || (v17 = objc_loadWeakRetained(&self->_sceneObject), v22 = objc_msgSend_willBeginProcessingSceneObject_(v28, v18, v19, v20, v21, v17), v17, v22))
  {
    objc_msgSend_performItemsProcessing(self, v13, v14, v15, v16);
  }

  v23 = objc_loadWeakRetained(&self->_sceneObject);
  objc_msgSend_didEndProcessingSceneObject_(v28, v24, v25, v26, v27, v23);
}

@end