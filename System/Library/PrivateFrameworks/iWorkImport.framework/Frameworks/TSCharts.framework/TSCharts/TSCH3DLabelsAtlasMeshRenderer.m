@interface TSCH3DLabelsAtlasMeshRenderer
- (TSCH3DLabelsAtlasMeshRenderer)init;
- (id)p_resourceAtIndex:(unint64_t)a3 childIndex:(unint64_t)a4 dimension:(unint64_t)a5 createIfAbsent:(BOOL)a6;
- (id)p_resourceForExternalLabelAttribute:(id)a3 index:(unint64_t)a4 createIfAbsent:(BOOL)a5;
- (unint64_t)p_indexForExternalAttribute:(id)a3;
- (unint64_t)p_resourceCount;
- (void)beginResources:(id)a3 samples:(float)a4;
- (void)flushCache;
- (void)p_submitExternalAttributesForIndex:(unint64_t)a3 processor:(id)a4;
- (void)renderWithMeshRenderLabelInfo:(id)a3;
- (void)submitResourcesWithProcessor:(id)a3;
@end

@implementation TSCH3DLabelsAtlasMeshRenderer

- (TSCH3DLabelsAtlasMeshRenderer)init
{
  v6.receiver = self;
  v6.super_class = TSCH3DLabelsAtlasMeshRenderer;
  v2 = [(TSCH3DSceneRenderCacheObject *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D81278]);
    externalAttributeVariables = v2->_externalAttributeVariables;
    v2->_externalAttributeVariables = v3;
  }

  return v2;
}

- (void)beginResources:(id)a3 samples:(float)a4
{
  v27 = a3;
  if (self->_atlas)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCH3DLabelsAtlasMeshRenderer beginResources:samples:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 285, 0, "expected nil value for '%{public}s'", "_atlas");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  *&v7 = a4;
  v25 = objc_msgSend_prepareTextureAtlasWithSamples_(v27, v6, v7, v8, v9);
  atlas = self->_atlas;
  self->_atlas = v25;
}

- (id)p_resourceAtIndex:(unint64_t)a3 childIndex:(unint64_t)a4 dimension:(unint64_t)a5 createIfAbsent:(BOOL)a6
{
  v6 = a6;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_276219A84;
  v23[3] = &unk_27A6B6BE8;
  v23[4] = a5;
  v10 = MEMORY[0x277C98B30](v23, a2);
  v15 = objc_msgSend_childCacheObjectAtIndex_(self, v11, v12, v13, v14, a4);
  v20 = v15;
  if (v6)
  {
    objc_msgSend_resourceAtIndex_created_ifAbsent_(v15, v16, v17, v18, v19, a3, 0, v10);
  }

  else
  {
    objc_msgSend_resourceAtIndex_created_ifAbsent_(v15, v16, v17, v18, v19, a3, 0, 0);
  }
  v21 = ;

  return v21;
}

- (unint64_t)p_resourceCount
{
  v5 = objc_msgSend_childCacheObjectAtIndex_(self, a2, v2, v3, v4, 0);
  v10 = objc_msgSend_resourceCount(v5, v6, v7, v8, v9);

  return v10;
}

- (unint64_t)p_indexForExternalAttribute:(id)a3
{
  v4 = a3;
  if ((objc_msgSend_isValid(v4, v5, v6, v7, v8) & 1) == 0)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "[TSCH3DLabelsAtlasMeshRenderer p_indexForExternalAttribute:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 327, 0, "cannot get index for invalid external attribute");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  externalAttributeVariables = self->_externalAttributeVariables;
  v29 = objc_msgSend_variable(v4, v9, v10, v11, v12);
  v34 = objc_msgSend_objectForKey_(externalAttributeVariables, v30, v31, v32, v33, v29);

  if (v34)
  {
    v40 = objc_msgSend_unsignedIntValue(v34, v35, v36, v37, v38);
  }

  else
  {
    v40 = objc_msgSend_count(self->_externalAttributeVariables, v35, v36, v37, v38) + 2;
    v44 = self->_externalAttributeVariables;
    v49 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v45, v46, v47, v48, v40);
    v54 = objc_msgSend_variable(v4, v50, v51, v52, v53);
    objc_msgSend_setObject_forKey_(v44, v55, v56, v57, v58, v49, v54);
  }

  if (objc_msgSend_count(self->_externalAttributeVariables, v39, v41, v42, v43) != 1)
  {
    v63 = MEMORY[0x277D81150];
    v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, v60, v61, v62, "[TSCH3DLabelsAtlasMeshRenderer p_indexForExternalAttribute:]");
    v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v65, v66, v67, v68, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v63, v70, v71, v72, v73, v64, v69, 338, 0, "only single external attribute is supported");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v74, v75, v76, v77);
  }

  if (v40 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v78 = MEMORY[0x277D81150];
    v79 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, v60, v61, v62, "[TSCH3DLabelsAtlasMeshRenderer p_indexForExternalAttribute:]");
    v84 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v80, v81, v82, v83, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v78, v85, v86, v87, v88, v79, v84, 339, 0, "invalid index %lu", 0x7FFFFFFFFFFFFFFFLL);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v89, v90, v91, v92);
  }

  return v40;
}

- (id)p_resourceForExternalLabelAttribute:(id)a3 index:(unint64_t)a4 createIfAbsent:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  if ((objc_msgSend_isValid(v8, v9, v10, v11, v12) & 1) == 0)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "[TSCH3DLabelsAtlasMeshRenderer p_resourceForExternalLabelAttribute:index:createIfAbsent:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 344, 0, "cannot get index for invalid external attribute");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
  }

  v32 = objc_msgSend_p_indexForExternalAttribute_(self, v13, v14, v15, v16, v8);
  v37 = objc_msgSend_p_resourceAtIndex_childIndex_dimension_createIfAbsent_(self, v33, v34, v35, v36, a4, v32, 2, v5);

  return v37;
}

- (void)p_submitExternalAttributesForIndex:(unint64_t)a3 processor:(id)a4
{
  v85 = *MEMORY[0x277D85DE8];
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v78 = a4;
  obj = self->_externalAttributeVariables;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, v6, v7, v8, &v80, v84, 16);
  if (v10)
  {
    v76 = *v81;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v81 != v76)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v80 + 1) + 8 * i);
        v16 = objc_msgSend_objectForKey_(self->_externalAttributeVariables, v9, v11, v12, v13, v15);
        v22 = objc_msgSend_unsignedIntValue(v16, v17, v18, v19, v20);
        if (!v16)
        {
          v26 = MEMORY[0x277D81150];
          v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v23, v24, v25, "[TSCH3DLabelsAtlasMeshRenderer p_submitExternalAttributesForIndex:processor:]");
          v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v33, v34, v35, v36, v27, v32, 357, 0, "invalid index %lu for key %@", v22, v15);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39, v40);
        }

        v41 = objc_msgSend_p_resourceAtIndex_childIndex_dimension_createIfAbsent_(self, v21, v23, v24, v25, a3, v22, 2, 0);
        v47 = objc_msgSend_buffer(v41, v42, v43, v44, v45);
        if (!v47 || (objc_msgSend_buffer(v41, v46, v48, v49, v50), v51 = objc_claimAutoreleasedReturnValue(), v52 = sub_276165208(v51), v54 = *v52, v53 = v52[1], v51, v51, v47, v53 == v54))
        {
          v55 = MEMORY[0x277D81150];
          v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, v48, v49, v50, "[TSCH3DLabelsAtlasMeshRenderer p_submitExternalAttributesForIndex:processor:]");
          v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, v58, v59, v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
          v66 = objc_msgSend_buffer(v41, v62, v63, v64, v65);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v55, v67, v68, v69, v70, v56, v61, 365, 0, "invalid buffer %@", v66);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v71, v72, v73, v74);
        }

        memset(v79, 0, sizeof(v79));
        objc_msgSend_attribute_resource_specs_(v78, v46, v48, v49, v50, v15, v41, v79);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, v11, v12, v13, &v80, v84, 16);
    }

    while (v10);
  }
}

- (void)submitResourcesWithProcessor:(id)a3
{
  v89 = 1065353216;
  v91 = 0;
  v90 = 0;
  v92 = 1065353216;
  v93 = 0;
  v94 = 0;
  v97 = 0;
  v96 = 0;
  v95 = 1065353216;
  v98 = 1065353216;
  v79 = a3;
  objc_msgSend_replace_(v79, v4, v5, v6, v7, &v89);
  v13 = objc_msgSend_p_resourceCount(self, v8, v9, v10, v11);
  if (v13)
  {
    v17 = 0;
    do
    {
      v18 = objc_msgSend_p_vertexResourceAtIndex_createIfAbsent_(self, v12, v14, v15, v16, v17, 0);
      v23 = objc_msgSend_p_texcoordResourceAtIndex_createIfAbsent_(self, v19, v20, v21, v22, v17, 0);
      v28 = objc_msgSend_buffer(v18, v24, v25, v26, v27);
      v33 = objc_msgSend_buffer(v23, v29, v30, v31, v32);
      v34 = v33 == 0;

      if ((v28 == 0) != v34)
      {
        v39 = MEMORY[0x277D81150];
        v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v36, v37, v38, "[TSCH3DLabelsAtlasMeshRenderer submitResourcesWithProcessor:]");
        v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, v42, v43, v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v46, v47, v48, v49, v40, v45, 393, 0, "resource mismatch at index %zu, %@ %@", v17, v18, v23);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51, v52, v53);
      }

      v55 = objc_msgSend_buffer(v18, v35, v36, v37, v38);
      if (v55)
      {
        v59 = objc_msgSend_buffer(v23, v54, v56, v57, v58);

        if (v59)
        {
          v64 = objc_msgSend_buffer(v18, v60, v61, v62, v63);
          v65 = sub_27616536C(v64);
          v67 = *v65;
          v66 = v65[1];

          if (v66 == v67)
          {
          }

          else
          {
            v72 = objc_msgSend_buffer(v23, v68, v69, v70, v71);
            v73 = sub_2761654D0(v72);
            v74 = *v73;
            v80 = v73[1];

            if (v80 != v74)
            {
              v81[0] = MEMORY[0x277D85DD0];
              v81[1] = 3321888768;
              v81[2] = sub_27621A67C;
              v81[3] = &unk_28851D3B0;
              v81[4] = self;
              v84 = v17;
              v85 = 0;
              v86 = 0;
              v87 = 1;
              v88[0] = 0;
              *(v88 + 5) = 0;
              v82 = v23;
              v83 = v18;
              objc_msgSend_performBlockWithProcessor_block_(TSCH3DRenderProcessorStateSession, v75, v76, v77, v78, v79, v81);
            }
          }
        }
      }

      ++v17;
    }

    while (v13 != v17);
  }
}

- (void)flushCache
{
  v4.receiver = self;
  v4.super_class = TSCH3DLabelsAtlasMeshRenderer;
  [(TSCH3DSceneRenderCacheObject *)&v4 flushCache];
  atlas = self->_atlas;
  self->_atlas = 0;
}

- (void)renderWithMeshRenderLabelInfo:(id)a3
{
  v298 = *MEMORY[0x277D85DE8];
  v231 = a3;
  v227 = objc_msgSend_renderer(v231, v5, v6, v7, v8);
  if (!self->_atlas)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "[TSCH3DLabelsAtlasMeshRenderer renderWithMeshRenderLabelInfo:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 426, 0, "invalid nil value for '%{public}s'", "_atlas");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  v226 = objc_msgSend_label(v227, v9, v10, v11, v12);
  atlas = self->_atlas;
  if (atlas)
  {
    objc_msgSend_positionForLabel_(atlas, v28, v29, v30, v31, v226);
    v33 = v287;
  }

  else
  {
    v33 = 0;
    v287 = 0;
    v286 = 0;
  }

  if (v226)
  {
    objc_msgSend_clampedLabelSampledSize(v226, v28, v29, v30, v31);
  }

  else
  {
    v285 = 0;
  }

  v34 = self->_atlas;
  if (v34)
  {
    objc_msgSend_textureSizeAtIndex_(v34, v28, v29, v30, v31, v33);
  }

  else
  {
    v284 = 0;
  }

  v223 = objc_msgSend_p_vertexResourceAtIndex_createIfAbsent_(self, v28, v29, v30, v31, v33, 1);
  v224 = objc_msgSend_p_texcoordResourceAtIndex_createIfAbsent_(self, v35, v36, v37, v38, v33, 1);
  v43 = objc_msgSend_externalAttribute(v231, v39, v40, v41, v42);
  isValid = objc_msgSend_isValid(v43, v44, v45, v46, v47);

  if (isValid)
  {
    v53 = objc_msgSend_externalAttribute(v231, v49, v50, v51, v52);
    v225 = objc_msgSend_p_resourceForExternalLabelAttribute_index_createIfAbsent_(self, v54, v55, v56, v57, v53, v33, 1);
  }

  else
  {
    if (objc_msgSend_count(self->_externalAttributeVariables, v49, v50, v51, v52))
    {
      v62 = MEMORY[0x277D81150];
      v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, v59, v60, v61, "[TSCH3DLabelsAtlasMeshRenderer renderWithMeshRenderLabelInfo:]");
      v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, v65, v66, v67, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v62, v69, v70, v71, v72, v63, v68, 447, 0, "supplying invalid external attribute when attribute is required %@", self->_externalAttributeVariables);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v73, v74, v75, v76);
    }

    v225 = 0;
  }

  v228 = sub_27618C648(v223);
  v78 = sub_27618C374(v224);
  if (v225)
  {
    v82 = sub_27621B498(v225);
  }

  else
  {
    v82 = 0;
  }

  v296 = 0u;
  v297 = 0u;
  v294 = 0u;
  v295 = 0u;
  v292 = 0u;
  v293 = 0u;
  v291 = 0u;
  if (v231)
  {
    objc_msgSend_translation(v231, v77, 0.0, v79, v80);
    v83 = v263;
    LODWORD(v84) = v264;
  }

  else
  {
    v264 = 0;
    v263 = 0;
    v83 = 0;
    v84 = 0.0;
  }

  v267 = 0;
  v266 = 0;
  v265 = 1065353216;
  v268 = 1065353216;
  v269 = 0;
  v270 = 0;
  v85 = 0;
  v86 = vmul_f32(v83, 0);
  v87 = vrev64_s32(v86);
  v86.f32[0] = vaddv_f32(v86);
  *v81.i32 = *&v84 * 0.0;
  *&v84 = (*&v84 + v86.f32[0]) + 0.0;
  v88 = COERCE_DOUBLE(vadd_f32(vadd_f32(vadd_f32(v83, v87), vdup_lane_s32(v81, 0)), 0));
  v271 = 1065353216;
  v272 = v88;
  v273 = LODWORD(v84);
  v274 = (v86.f32[0] + *v81.i32) + 1.0;
  if (v231)
  {
    objc_msgSend_offset(v231, v77, 0.0, v88, v84);
    v85 = v252;
  }

  else
  {
    v252 = 0;
  }

  v255 = 0;
  v254 = 0;
  v253 = 1065353216;
  v256 = 1065353216;
  v257 = 0;
  v258 = 0;
  v89 = vmul_f32(v85, 0);
  v259 = 1065353216;
  v260 = vadd_f32(vadd_f32(v85, vrev64_s32(v89)), 0);
  v261 = vaddv_f32(v89) + 0.0;
  v262 = v261 + 1.0;
  *&v90 = sub_2761558A0(&v265, &v253, v275).u64[0];
  objc_msgSend_rotation(v231, v91, v90, v92, v93);
  v95 = __sincosf_stret(v94 * 0.017453);
  v96 = (1.0 - v95.__cosval) * 0.0;
  v97 = v95.__cosval + (v96 * 0.0);
  v98 = (v96 * 0.0) + 0.0;
  v99 = v95.__sinval + v98;
  v100 = v96 + 0.0;
  v101 = v100 - (v95.__sinval * 0.0);
  v102 = v98 - v95.__sinval;
  v103 = v100 + (v95.__sinval * 0.0);
  v104 = ((1.0 - v95.__cosval) * 0.0) + 0.0;
  v105 = v104 + (v95.__sinval * 0.0);
  v106 = v104 - (v95.__sinval * 0.0);
  v107 = v95.__cosval + (1.0 - v95.__cosval);
  v108 = (v97 * 0.0) + (v99 * 0.0);
  v250[0] = (v101 * 0.0) + (v97 + (v99 * 0.0));
  v250[1] = ((v97 * 0.0) + v99) + (v101 * 0.0);
  v250[2] = v101 + v108;
  v250[3] = (v101 * 0.0) + v108;
  v109 = (v97 * 0.0) + (v102 * 0.0);
  v250[4] = ((v97 * 0.0) + v102) + (v103 * 0.0);
  v250[5] = (v103 * 0.0) + (v97 + (v102 * 0.0));
  v250[6] = v103 + v109;
  v250[7] = (v103 * 0.0) + v109;
  v110 = (v105 * 0.0) + (v106 * 0.0);
  v250[8] = (v107 * 0.0) + (v105 + (v106 * 0.0));
  v250[9] = (v107 * 0.0) + (v106 + (v105 * 0.0));
  v250[10] = v107 + v110;
  v250[11] = (v107 * 0.0) + v110;
  v251 = xmmword_2764D5F20;
  *&v112 = sub_2761558A0(v275, v250, v276).u64[0];
  if (v231)
  {
    objc_msgSend_alignmentOffset(v231, v111, v112, v113, v114);
    v115 = v239;
  }

  else
  {
    v239 = 0;
    v115 = 0;
  }

  v116 = vmul_f32(v115, 0);
  v240 = 1065353216;
  v242 = 0;
  v241 = 0;
  v243 = 1065353216;
  v244 = 0;
  v245 = 0;
  v246 = 1065353216;
  v247 = vadd_f32(vadd_f32(v115, vrev64_s32(v116)), 0);
  v248 = vaddv_f32(v116) + 0.0;
  v249 = v248 + 1.0;
  *&v118 = sub_2761558A0(v276, &v240, &__p).u64[0];
  if (v231)
  {
    objc_msgSend_scale(v231, v117, v118, *v119.i64, v120);
    v119.i32[0] = v232;
    v121 = v233;
  }

  else
  {
    v121 = 0;
    v119.i32[0] = 0;
  }

  v234[0] = v119.i32[0];
  *&v234[1] = *v119.i32 * 0.0;
  *&v234[2] = *v119.i32 * 0.0;
  *&v234[3] = *v119.i32 * 0.0;
  *v119.i8 = vmul_f32(v121, 0);
  v235 = vzip1_s32(*v119.i8, v121);
  v236 = vzip1q_s32(v119, v119);
  v237 = vzip2_s32(v121, *v119.i8);
  v238 = xmmword_2764D5F20;
  v122 = sub_2761558A0(&__p, v234, &v277);
  v123.i64[0] = v277.i64[0];
  v124 = vmul_f32(v278, 0);
  *v125.i8 = vadd_f32(*v277.f32, v124);
  v126.i32[0] = vdup_lane_s32(v124, 1).u32[0];
  *v127.i8 = v280;
  *v128.i8 = v282;
  v129 = vadd_f32(v282, vmla_f32(vmla_f32(v124, 0, *v277.f32), 0, v280));
  v130 = v283 + (((v279 * 0.0) + (v277.f32[2] * 0.0)) + (v281 * 0.0));
  *&v295 = v129;
  *(&v295 + 2) = v130;
  *(&v295 + 3) = v282.f32[0] + (*v125.i32 + (v280.f32[0] * 0.0));
  *v125.i32 = v277.f32[2] + v279;
  v131 = vuzp2q_s32(v123, vzip1q_s32(v123, v123));
  v131.i32[1] = v277.i32[2];
  *&v126.u32[2] = v278;
  v126.f32[1] = v279 * 0.0;
  v132 = vuzp2q_s32(v127, vzip1q_s32(v127, v127));
  v132.f32[1] = v281;
  v133 = vmlaq_f32(vaddq_f32(v131, v126), 0, v132);
  v134 = vuzp2q_s32(v128, vzip1q_s32(v128, v128));
  v134.f32[1] = v283;
  *v122.f32 = vmla_f32(v278, 0, *v277.f32);
  v135 = vextq_s8(v122, v127, 0xCuLL);
  v135.f32[0] = v281;
  v135.f32[3] = v281;
  v136 = vextq_s8(vextq_s8(v125, v125, 4uLL), v122, 0xCuLL);
  v136.f32[3] = v279 + (v277.f32[2] * 0.0);
  v137 = vextq_s8(v136, v128, 0xCuLL);
  v137.f32[0] = v283;
  v137.f32[3] = v283;
  v296 = vaddq_f32(v134, v133);
  v297 = vaddq_f32(v137, vmlaq_f32(v136, 0, v135));
  *v135.f32 = vcvt_f32_s32(v284);
  *v125.i8 = vdiv_f32(vcvt_f32_s32(v286), *v135.f32);
  *&v294 = v125.i64[0];
  *(&v294 + 1) = 0x3F80000000000000;
  *v137.f32 = vdiv_f32(vcvt_f32_s32(vadd_s32(v285, v286)), *v135.f32);
  *&v293 = __PAIR64__(v125.u32[1], v137.u32[0]);
  *(&v293 + 1) = 0x3F80000000000000;
  *&v292 = v137.i64[0];
  *(&v292 + 1) = 0x3F80000000000000;
  v125.i32[1] = v137.i32[1];
  *&v291 = v125.i64[0];
  *(&v291 + 1) = 0x3F80000000000000;
  v139 = objc_msgSend_pipeline(v227, v138, 0.0078125, *v137.i64, *&v293);
  v140 = v139 == 0;

  if (v140)
  {
    v145 = MEMORY[0x277D81150];
    v146 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v141, v142, v143, v144, "[TSCH3DLabelsAtlasMeshRenderer renderWithMeshRenderLabelInfo:]");
    v151 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v147, v148, v149, v150, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v145, v152, v153, v154, v155, v146, v151, 495, 0, "invalid nil value for '%{public}s'", "renderer.pipeline");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v156, v157, v158, v159);
  }

  v160 = objc_msgSend_pipeline(v227, v141, v142, v143, v144);
  objc_msgSend_superSamples(v160, v161, v162, v163, v164);
  v229 = v165;

  v230 = vsub_f32(vmul_n_f32(vrndm_f32(vadd_f32(vdiv_f32(v129, vdup_lane_s32(v229, 0)), 0x3F0000003F000000)), *v229.i32), v129);
  if (byte_280A46430 == 1)
  {
    v166 = objc_opt_class();
    v167 = NSStringFromSelector(a2);
    v168 = MEMORY[0x277CCACA8];
    v222 = v230.f32[0];
    sub_276152FD4("vec3(%f, %f, %f)", v169, v170, v171, v172, v173, v174, v175, SLOBYTE(v222));
    if (__p_8[15] >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v168, v176, v177, v178, v179, &__p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v168, v176, v177, v178, v179, __p);
    }
    v180 = ;
    if ((__p_8[15] & 0x80000000) != 0)
    {
      operator delete(__p);
    }

    NSLog(&cfstr_PAlign.isa, v166, self, v167, v180);
  }

  v181 = 0;
  __p = 0;
  *&__p_8[8] = 0u;
  *__p_8 = xmmword_2764D6880;
  v290 = xmmword_2764D6700;
  do
  {
    v182 = *&__p_8[v181 - 8];
    v183 = (&v295 + 12 * v182);
    v184 = (0.0 - v130) + v183[1].f32[0];
    *v276[0].f32 = vadd_f32(v230, *v183);
    v276[0].f32[2] = v184;
    sub_2761C14E8(v228, v276);
    sub_276161E1C(v78, &v291 + 4 * v182);
    if (v82)
    {
      v189 = objc_msgSend_externalAttribute(v231, v185, v186, v187, v188);
      v194 = objc_msgSend_isValid(v189, v190, v191, v192, v193);

      if ((v194 & 1) == 0)
      {
        v199 = MEMORY[0x277D81150];
        v200 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v195, v196, v197, v198, "[TSCH3DLabelsAtlasMeshRenderer renderWithMeshRenderLabelInfo:]");
        v205 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v201, v202, v203, v204, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v199, v206, v207, v208, v209, v200, v205, 514, 0, "have ext array with invalid external attribs");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v210, v211, v212, v213);
      }

      v214 = objc_msgSend_externalAttribute(v231, v195, v196, v197, v198);
      v219 = v214;
      if (v214)
      {
        objc_msgSend_value(v214, v215, v216, v217, v218);
      }

      else
      {
        v276[0].i64[0] = 0;
      }

      v220 = v82[1];
      if (v220 >= v82[2])
      {
        v221 = sub_2761ADBFC(v82, v276);
      }

      else
      {
        *v220 = v276[0].i64[0];
        v221 = (v220 + 1);
      }

      v82[1] = v221;
    }

    v181 += 8;
  }

  while (v181 != 48);
}

@end