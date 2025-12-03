@interface TSCH3DChartElementSceneObjectProcessRenderItems
- (BOOL)processEnumeratorSeries:(id)series;
- (void)processElementInfo:(id)info eachValue:(BOOL)value;
@end

@implementation TSCH3DChartElementSceneObjectProcessRenderItems

- (BOOL)processEnumeratorSeries:(id)series
{
  seriesCopy = series;
  WeakRetained = objc_loadWeakRetained(&self->super._sceneObject);
  properties = self->super._properties;
  v12 = objc_msgSend_series(seriesCopy, v7, v8, v9, v10);
  if (seriesCopy)
  {
    objc_msgSend_position(seriesCopy, v11, v13, v14, v15);
  }

  else
  {
    v18 = 0;
  }

  v16 = objc_msgSend_applyEffectsForProperties_series_index_pipeline_injectEffectsUsingBlock_(WeakRetained, v11, v13, v14, v15, properties, v12, &v18, self->super._pipeline, &unk_28851CED8);

  return v16;
}

- (void)processElementInfo:(id)info eachValue:(BOOL)value
{
  valueCopy = value;
  infoCopy = info;
  WeakRetained = objc_loadWeakRetained(&self->super._sceneObject);
  v11 = objc_msgSend_render_pushMatrix_delayedPass_(WeakRetained, v7, v8, v9, v10, infoCopy, valueCopy, 0);

  if (v11)
  {
    delayedItems = self->super._delayedItems;
    v17 = objc_msgSend_copy(infoCopy, v12, v13, v14, v15);
    objc_msgSend_addObject_(delayedItems, v18, v19, v20, v21, v17);

    if (v11 == 2)
    {
      v26 = objc_msgSend_lastObject(self->super._delayedItems, v22, v23, v24, v25);
      objc_msgSend_setTransparent_(v26, v27, v28, v29, v30, 1);
    }
  }
}

@end