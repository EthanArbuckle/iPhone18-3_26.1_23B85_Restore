@interface TSCH3DGeometryResource
+ (id)resource;
+ (id)resourceWithType:(int)type resource:(id)resource;
+ (id)resourceWithType:(int)type resource:(id)resource arrays:(id)arrays geometry:(id)geometry;
- (TSCH3DGeometryResource)initWithType:(int)type resource:(id)resource arrays:(id)arrays geometry:(id)geometry;
- (void)submitToProcessor:(id)processor withPortion:(int)portion;
@end

@implementation TSCH3DGeometryResource

+ (id)resource
{
  v3 = objc_alloc_init(TSCH3DGeometryArrays);
  v8 = objc_msgSend_resourceWithType_resource_arrays_geometry_(self, v4, v5, v6, v7, 0, 0, v3, 0);

  return v8;
}

+ (id)resourceWithType:(int)type resource:(id)resource
{
  v4 = *&type;
  resourceCopy = resource;
  v7 = objc_alloc_init(TSCH3DGeometryArrays);
  v12 = objc_msgSend_resourceWithType_resource_arrays_geometry_(self, v8, v9, v10, v11, v4, resourceCopy, v7, 0);

  return v12;
}

+ (id)resourceWithType:(int)type resource:(id)resource arrays:(id)arrays geometry:(id)geometry
{
  v8 = *&type;
  resourceCopy = resource;
  arraysCopy = arrays;
  geometryCopy = geometry;
  v13 = [self alloc];
  v18 = objc_msgSend_initWithType_resource_arrays_geometry_(v13, v14, v15, v16, v17, v8, resourceCopy, arraysCopy, geometryCopy);

  return v18;
}

- (TSCH3DGeometryResource)initWithType:(int)type resource:(id)resource arrays:(id)arrays geometry:(id)geometry
{
  resourceCopy = resource;
  arraysCopy = arrays;
  geometryCopy = geometry;
  v41.receiver = self;
  v41.super_class = TSCH3DGeometryResource;
  v15 = [(TSCH3DGeometryResource *)&v41 init];
  if (v15)
  {
    if (!arraysCopy)
    {
      v40 = MEMORY[0x277D81150];
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v16, v17, v18, "[TSCH3DGeometryResource initWithType:resource:arrays:geometry:]");
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DGeometryResource.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v25, v26, v27, v28, v19, v24, 37, 0, "invalid nil value for '%{public}s'", "arrays");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
    }

    v15->_type = type;
    objc_storeStrong(&v15->_resource, resource);
    v37 = objc_msgSend_copy(arraysCopy, v33, v34, v35, v36);
    arrays = v15->_arrays;
    v15->_arrays = v37;

    objc_storeStrong(&v15->_geometry, geometry);
  }

  return v15;
}

- (void)submitToProcessor:(id)processor withPortion:(int)portion
{
  processorCopy = processor;
  v10 = objc_msgSend_type(self, v6, v7, v8, v9);
  v16 = objc_msgSend_infoWithType_(TSCH3DPrimitiveInfo, v11, v12, v13, v14, v10);
  if (portion == 1)
  {
    if ((objc_msgSend_hasArrays(self, v15, v17, v18, v19) & 1) == 0)
    {
      v73 = MEMORY[0x277D81150];
      v74 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, v70, v71, v72, "[TSCH3DGeometryResource submitToProcessor:withPortion:]");
      v79 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v75, v76, v77, v78, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DGeometryResource.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v73, v80, v81, v82, v83, v74, v79, 73, 0, "no caps found in arrays");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v84, v85, v86, v87);
    }

    v88 = objc_msgSend_type(self, v69, v70, v71, v72);
    v25 = objc_msgSend_arrays(self, v89, v90, v91, v92);
    v97 = objc_msgSend_capRange(v25, v93, v94, v95, v96);
    v35 = objc_msgSend_arrays(self, v98, v99, v100, v101);
    v106 = objc_msgSend_capRange(v35, v102, v103, v104, v105);
    v45 = objc_msgSend_infoWithType_offset_count_indices_(TSCH3DPrimitiveInfo, v107, v108, v109, v110, v88, v97, HIDWORD(v106), 0);
    goto LABEL_11;
  }

  if (portion == 2)
  {
    if (!objc_msgSend_hasArrays(self, v15, v17, v18, v19))
    {
      goto LABEL_12;
    }

    v46 = objc_msgSend_type(self, v15, v17, v18, v19);
    v25 = objc_msgSend_arrays(self, v47, v48, v49, v50);
    v55 = objc_msgSend_range(v25, v51, v52, v53, v54);
    v35 = objc_msgSend_arrays(self, v56, v57, v58, v59);
    v64 = objc_msgSend_range(v35, v60, v61, v62, v63);
    v45 = objc_msgSend_infoWithType_offset_count_indices_(TSCH3DPrimitiveInfo, v65, v66, v67, v68, v46, v55, HIDWORD(v64), 0);
    goto LABEL_11;
  }

  if (portion == 3 && objc_msgSend_hasArrays(self, v15, v17, v18, v19))
  {
    v20 = objc_msgSend_type(self, v15, v17, v18, v19);
    v25 = objc_msgSend_arrays(self, v21, v22, v23, v24);
    v30 = objc_msgSend_wholeRange(v25, v26, v27, v28, v29);
    v35 = objc_msgSend_arrays(self, v31, v32, v33, v34);
    v40 = objc_msgSend_wholeRange(v35, v36, v37, v38, v39);
    v45 = objc_msgSend_infoWithType_offset_count_indices_(TSCH3DPrimitiveInfo, v41, v42, v43, v44, v20, v30, HIDWORD(v40), 0);
LABEL_11:
    v111 = v45;

    v16 = v111;
  }

LABEL_12:
  objc_msgSend_submit_(processorCopy, v15, v17, v18, v19, v16);
}

@end