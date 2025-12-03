@interface TSCH3DChartBoundsLayoutSceneDelegatePieFamily
- (BOOL)willBeginProcessingSceneObject:(id)object;
- (BOOL)willProcessElement:(id)element sceneObject:(id)object;
- (id)interestedClasses;
@end

@implementation TSCH3DChartBoundsLayoutSceneDelegatePieFamily

- (id)interestedClasses
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = TSCH3DChartBoundsLayoutSceneDelegatePieFamily;
  interestedClasses = [(TSCH3DChartBoundsLayoutSceneDelegate *)&v14 interestedClasses];
  v15[0] = objc_opt_class();
  v15[1] = objc_opt_class();
  v7 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v3, v4, v5, v6, v15, 2);
  v12 = objc_msgSend_arrayByAddingObjectsFromArray_(interestedClasses, v8, v9, v10, v11, v7);

  return v12;
}

- (BOOL)willBeginProcessingSceneObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = MEMORY[0x277D81150];
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v6, v7, v8, "[TSCH3DChartBoundsLayoutSceneDelegatePieFamily willBeginProcessingSceneObject:]");
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 493, 0, "scene object is not pie %@", objectCopy);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
    }
  }

  v24 = objc_msgSend_processor(self->super._pipeline, v5, v6, v7, v8);
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = sub_2761FFD58;
  v32[3] = &unk_27A6B6B30;
  v32[4] = self;
  v25 = objectCopy;
  v33 = v25;
  v34 = &v35;
  objc_msgSend_performBlockWithProcessor_block_(TSCH3DRenderProcessorMatrixSession, v26, v27, v28, v29, v24, v32);
  v30 = *(v36 + 24);

  _Block_object_dispose(&v35, 8);
  return v30;
}

- (BOOL)willProcessElement:(id)element sceneObject:(id)object
{
  elementCopy = element;
  objectCopy = object;
  v11 = objc_msgSend_pipeline(elementCopy, v7, v8, v9, v10);
  v16 = objc_msgSend_scene(v11, v12, v13, v14, v15);

  v22 = objc_msgSend_elementPropertiesFromScene_(objectCopy, v17, v18, v19, v20, v16);
  if (!v22)
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v23, v24, v25, "[TSCH3DChartBoundsLayoutSceneDelegatePieFamily willProcessElement:sceneObject:]");
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v33, v34, v35, v36, v27, v32, 536, 0, "invalid nil value for '%{public}s'", "properties");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39, v40);
  }

  v42 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v21, v23, v24, v25, v16);
  if (elementCopy)
  {
    objc_msgSend_index(elementCopy, v41, v43, v44, v45);
  }

  else
  {
    v49 = 0;
  }

  objc_msgSend_explosionAtElementIndex_propertyAccessor_(v22, v41, v43, v44, v45, &v49, v42);
  v47 = v46 < 0.00000011921;

  return v47;
}

@end