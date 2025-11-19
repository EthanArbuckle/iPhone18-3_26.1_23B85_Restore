@interface TSCH3DChartMeshSharedResource
- (id)get;
- (void)flushMemory;
- (void)setChildRegenerated:(BOOL)a3;
@end

@implementation TSCH3DChartMeshSharedResource

- (void)setChildRegenerated:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = TSCH3DChartMeshSharedResource;
  [(TSCH3DChartMeshSharedChildResource *)&v9 setChildRegenerated:?];
  if (v3)
  {
    objc_msgSend_setMesh_(self, v5, v6, v7, v8, 0);
  }
}

- (id)get
{
  if (byte_280A46430 == 1)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromSelector(a2);
    NSLog(&cfstr_PP.isa, v4, self, v5, self->_mesh);
  }

  WeakRetained = objc_loadWeakRetained(&self->super._parent);

  if (!WeakRetained)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCH3DChartMeshSharedResource get]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartMeshResources.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 139, 0, "invalid nil value for '%{public}s'", "_parent");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v26 = objc_loadWeakRetained(&self->super._parent);
  objc_sync_enter(v26);
  mesh = self->_mesh;
  if (mesh)
  {
    v28 = mesh;
    objc_msgSend_bufferInfo(v28, v29, v30, v31, v32);
LABEL_9:
    v42 = 0;
    goto LABEL_10;
  }

  v33 = objc_loadWeakRetained(&self->super._parent);
  objc_msgSend_regenerateForChild_(v33, v34, v35, v36, v37, self);

  v28 = self->_mesh;
  if (v28)
  {
    objc_msgSend_bufferInfo(v28, v38, v39, v40, v41);
    goto LABEL_9;
  }

  v64 = 0u;
  v65 = 0u;
  v63 = 0u;
  v42 = 1;
LABEL_10:
  *&self->super._bufferInfo.componentType = v63;
  *&self->super._bufferInfo.count = v64;
  *&self->super._bufferInfo.componentByteSize = v65;
  objc_sync_exit(v26);

  if (v42)
  {
    v47 = MEMORY[0x277D81150];
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v44, v45, v46, "[TSCH3DChartMeshSharedResource get]");
    v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, v50, v51, v52, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartMeshResources.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v54, v55, v56, v57, v48, v53, 148, 0, "invalid nil value for '%{public}s'", "result");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v58, v59, v60, v61);
  }

  return v28;
}

- (void)flushMemory
{
  WeakRetained = objc_loadWeakRetained(&self->super._parent);

  if (!WeakRetained)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v5, v6, v7, "[TSCH3DChartMeshSharedResource flushMemory]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartMeshResources.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 153, 0, "invalid nil value for '%{public}s'", "_parent");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  obj = objc_loadWeakRetained(&self->super._parent);
  objc_sync_enter(obj);
  mesh = self->_mesh;
  self->_mesh = 0;

  objc_sync_exit(obj);
}

@end