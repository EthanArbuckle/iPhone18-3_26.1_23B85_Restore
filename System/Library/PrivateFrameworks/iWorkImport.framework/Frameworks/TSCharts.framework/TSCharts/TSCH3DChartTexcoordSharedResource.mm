@interface TSCH3DChartTexcoordSharedResource
- (id)get;
- (void)dealloc;
- (void)flushMemory;
- (void)setChildRegenerated:(BOOL)regenerated;
- (void)setVertex:(id)vertex normal:(id)normal generator:(id)generator;
@end

@implementation TSCH3DChartTexcoordSharedResource

- (void)dealloc
{
  objc_msgSend_setVertex_normal_generator_(self, a2, v2, v3, v4, 0, 0, 0);
  v6.receiver = self;
  v6.super_class = TSCH3DChartTexcoordSharedResource;
  [(TSCH3DChartMeshSharedChildResource *)&v6 dealloc];
}

- (void)setVertex:(id)vertex normal:(id)normal generator:(id)generator
{
  vertexCopy = vertex;
  normalCopy = normal;
  generatorCopy = generator;
  objc_msgSend_setVertex_(self, v10, v11, v12, v13, vertexCopy);
  objc_msgSend_setNormal_(self, v14, v15, v16, v17, normalCopy);
  objc_msgSend_setGenerator_(self, v18, v19, v20, v21, generatorCopy);
}

- (void)setChildRegenerated:(BOOL)regenerated
{
  regeneratedCopy = regenerated;
  v9.receiver = self;
  v9.super_class = TSCH3DChartTexcoordSharedResource;
  [(TSCH3DChartMeshSharedResource *)&v9 setChildRegenerated:?];
  if (regeneratedCopy)
  {
    objc_msgSend_setVertex_normal_generator_(self, v5, v6, v7, v8, 0, 0, 0);
  }
}

- (id)get
{
  if (byte_280A46430 == 1)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromSelector(a2);
    NSLog(&cfstr_PVertexPNormal.isa, v4, self, v5, self->_vertex, self->_normal);
  }

  WeakRetained = objc_loadWeakRetained(&self->super.super._parent);

  if (!WeakRetained)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCH3DChartTexcoordSharedResource get]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartMeshResources.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 200, 0, "invalid nil value for '%{public}s'", "_parent");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v26 = objc_loadWeakRetained(&self->super.super._parent);
  objc_sync_enter(v26);
  vertex = self->_vertex;
  if (!vertex || !self->_normal)
  {
    v28 = objc_loadWeakRetained(&self->super.super._parent);

    if (!v28)
    {
      v33 = MEMORY[0x277D81150];
      v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, "[TSCH3DChartTexcoordSharedResource get]");
      v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v36, v37, v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartMeshResources.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v40, v41, v42, v43, v34, v39, 207, 0, "invalid nil value for '%{public}s'", "_parent");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46, v47);
    }

    v48 = objc_loadWeakRetained(&self->super.super._parent);
    objc_msgSend_regenerateForChild_(v48, v49, v50, v51, v52, self);

    vertex = self->_vertex;
  }

  v53 = vertex;
  v54 = self->_normal;
  v55 = self->_generator;
  objc_sync_exit(v26);

  if (!v53)
  {
    v105 = MEMORY[0x277D81150];
    v106 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, v57, v58, v59, "[TSCH3DChartTexcoordSharedResource get]");
    v111 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v107, v108, v109, v110, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartMeshResources.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v105, v112, v113, v114, v115, v106, v111, 215, 0, "invalid nil value for '%{public}s'", "vertexBuffer");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v116, v117, v118, v119);
    if (v54)
    {
LABEL_17:
      v81 = 0;
      goto LABEL_18;
    }

LABEL_16:
    v120 = MEMORY[0x277D81150];
    v121 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, v57, v58, v59, "[TSCH3DChartTexcoordSharedResource get]");
    v126 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v122, v123, v124, v125, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartMeshResources.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v120, v127, v128, v129, v130, v121, v126, 216, 0, "invalid nil value for '%{public}s'", "normalBuffer");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v131, v132, v133, v134);
    goto LABEL_17;
  }

  if (!v54)
  {
    goto LABEL_16;
  }

  if (!v55)
  {
    v60 = MEMORY[0x277D81150];
    v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, v57, v58, v59, "[TSCH3DChartTexcoordSharedResource get]");
    v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, v63, v64, v65, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartMeshResources.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v60, v67, v68, v69, v70, v61, v66, 221, 0, "invalid nil value for '%{public}s'", "texcoordGenerator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v71, v72, v73, v74);
  }

  v75 = objc_msgSend_container(v53, v56, v57, v58, v59);
  v76 = 0xAAAAAAAAAAAAAAABLL * ((v75[1] - *v75) >> 2);
  v81 = objc_msgSend_bufferWithCapacity_(TSCH3Dvec4DataBuffer, v77, v78, v79, v80, v76);
  objc_msgSend_fillCapacity(v81, v82, v83, v84, v85);
  v90 = objc_msgSend_container(v81, v86, v87, v88, v89);
  v95 = *objc_msgSend_container(v53, v91, v92, v93, v94);
  v100 = objc_msgSend_container(v54, v96, v97, v98, v99);
  objc_msgSend_generateFromVertexArray_normalArray_numVertices_destination4D_(v55, v101, v102, v103, v104, v95, *v100, v76, *v90);
LABEL_18:

  return v81;
}

- (void)flushMemory
{
  obj = objc_loadWeakRetained(&self->super.super._parent);
  objc_sync_enter(obj);
  vertex = self->_vertex;
  self->_vertex = 0;

  normal = self->_normal;
  self->_normal = 0;

  generator = self->_generator;
  self->_generator = 0;

  objc_sync_exit(obj);
}

@end