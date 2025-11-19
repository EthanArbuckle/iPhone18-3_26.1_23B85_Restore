@interface TSCH3DChartElementSceneObjectProcessRenderItems
- (BOOL)processEnumeratorSeries:(id)a3;
- (void)processElementInfo:(id)a3 eachValue:(BOOL)a4;
@end

@implementation TSCH3DChartElementSceneObjectProcessRenderItems

- (BOOL)processEnumeratorSeries:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->super._sceneObject);
  properties = self->super._properties;
  v12 = objc_msgSend_series(v4, v7, v8, v9, v10);
  if (v4)
  {
    objc_msgSend_position(v4, v11, v13, v14, v15);
  }

  else
  {
    v18 = 0;
  }

  v16 = objc_msgSend_applyEffectsForProperties_series_index_pipeline_injectEffectsUsingBlock_(WeakRetained, v11, v13, v14, v15, properties, v12, &v18, self->super._pipeline, &unk_28851CED8);

  return v16;
}

- (void)processElementInfo:(id)a3 eachValue:(BOOL)a4
{
  v4 = a4;
  v31 = a3;
  WeakRetained = objc_loadWeakRetained(&self->super._sceneObject);
  v11 = objc_msgSend_render_pushMatrix_delayedPass_(WeakRetained, v7, v8, v9, v10, v31, v4, 0);

  if (v11)
  {
    delayedItems = self->super._delayedItems;
    v17 = objc_msgSend_copy(v31, v12, v13, v14, v15);
    objc_msgSend_addObject_(delayedItems, v18, v19, v20, v21, v17);

    if (v11 == 2)
    {
      v26 = objc_msgSend_lastObject(self->super._delayedItems, v22, v23, v24, v25);
      objc_msgSend_setTransparent_(v26, v27, v28, v29, v30, 1);
    }
  }
}

@end