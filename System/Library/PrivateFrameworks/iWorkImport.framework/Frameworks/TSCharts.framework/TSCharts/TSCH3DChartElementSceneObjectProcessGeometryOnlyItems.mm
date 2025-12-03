@interface TSCH3DChartElementSceneObjectProcessGeometryOnlyItems
- (void)dealloc;
- (void)processDelayedItemsWithOpacity:(float)opacity;
- (void)processElementInfo:(id)info eachValue:(BOOL)value;
@end

@implementation TSCH3DChartElementSceneObjectProcessGeometryOnlyItems

- (void)dealloc
{
  if (objc_msgSend_count(self->super._delayedItems, a2, v2, v3, v4))
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCH3DChartElementSceneObjectProcessGeometryOnlyItems dealloc]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartElementSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 341, 0, "geometry only should not push transparent items");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  v25.receiver = self;
  v25.super_class = TSCH3DChartElementSceneObjectProcessGeometryOnlyItems;
  [(TSCH3DChartElementSceneObjectProcessGeometryOnlyItems *)&v25 dealloc];
}

- (void)processElementInfo:(id)info eachValue:(BOOL)value
{
  valueCopy = value;
  infoCopy = info;
  WeakRetained = objc_loadWeakRetained(&self->super._sceneObject);
  LODWORD(valueCopy) = objc_msgSend_render_pushMatrix_delayedPass_(WeakRetained, v8, v9, v10, v11, infoCopy, valueCopy, 0);

  if (valueCopy)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "[TSCH3DChartElementSceneObjectProcessGeometryOnlyItems processElementInfo:eachValue:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartElementSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v24, v25, v26, v17, v22, 362, 0, "geometry onlt must succeed at rendering without delayed rendering");

    v31 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v31, v27, v28, v29, v30);
  }
}

- (void)processDelayedItemsWithOpacity:(float)opacity
{
  if (objc_msgSend_count(self->super._delayedItems, a2, *&opacity, v3, v4))
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v6, v7, v8, "[TSCH3DChartElementSceneObjectProcessGeometryOnlyItems processDelayedItemsWithOpacity:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartElementSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 366, 0, "geometry only should not push transparent items");

    v24 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v24, v20, v21, v22, v23);
  }
}

@end