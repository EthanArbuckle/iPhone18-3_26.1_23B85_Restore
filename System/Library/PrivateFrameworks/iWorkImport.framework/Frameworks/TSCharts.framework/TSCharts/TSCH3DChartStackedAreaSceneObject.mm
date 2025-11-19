@interface TSCH3DChartStackedAreaSceneObject
- (void)sortElements:(id *)a3 pipeline:(id)a4;
@end

@implementation TSCH3DChartStackedAreaSceneObject

- (void)sortElements:(id *)a3 pipeline:(id)a4
{
  v5 = a4;
  v154 = self;
  v156 = v5;
  v11 = objc_msgSend_processor(v156, v6, v7, v8, v9);
  if (!v11)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v12, v13, v14, "void TSCH3D::SortElements(TSCH3DChartElementSceneObject *__strong, SEL, NSMutableArray<TSCH3DRenderElementInfo *> *__autoreleasing *, TSCH3DSceneRenderPipeline *__strong, MakeSortData) [SortData = float, MakeSortData = (anonymous namespace)::MakeSortData]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartElementSceneObject_SortElements.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v22, v23, v24, v25, v16, v21, 28, 0, "invalid nil value for '%{public}s'", "processor");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  v30 = objc_msgSend_scene(v156, v10, v12, v13, v14);
  v35 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v31, v32, v33, v34, v30);

  v36 = *a3;
  __src = 0;
  v166 = 0;
  v167 = 0;
  v41 = objc_msgSend_count(v36, v37, v38, v39, v40);
  sub_276182010(&__src, v41);
  v46 = 0;
  v157 = v35;
  while (v46 < objc_msgSend_count(v36, v42, v43, v44, v45))
  {
    v51 = objc_msgSend_objectAtIndexedSubscript_(v36, v47, v48, v49, v50, v46);
    objc_msgSend_pushMatrix(v11, v52, v53, v54, v55);
    v60 = objc_msgSend_properties(v51, v56, v57, v58, v59);
    v66 = objc_msgSend_series(v51, v61, v62, v63, v64);
    if (v51)
    {
      objc_msgSend_index(v51, v65, v67, v68, v69);
    }

    else
    {
      *v158 = 0;
    }

    objc_msgSend_applyElementTransformToProcessor_series_index_propertyAccessor_(v60, v65, v67, v68, v69, v11, v66, v158, v35);

    *&v158[3] = 0;
    *&v158[1] = 0;
    v158[0] = 1065353216;
    v158[5] = 1065353216;
    v159 = 0;
    v160 = 0;
    v163 = 0;
    v162 = 0;
    v161 = 1065353216;
    v164 = 1065353216;
    objc_msgSend_copyTransformInto_(v11, v70, v71, v72, v73, v158);
    v74 = v51;
    v79 = v74;
    if (v51)
    {
      objc_msgSend_index(v74, v75, v76, v77, v78);
      v80 = v168;
    }

    else
    {
      v80 = 0.0;
    }

    v85 = v166;
    if (v166 >= v167)
    {
      v87 = __src;
      v88 = v166 - __src;
      v89 = (v166 - __src) >> 4;
      v90 = v89 + 1;
      if ((v89 + 1) >> 60)
      {
        sub_276161760();
      }

      v91 = v167 - __src;
      if ((v167 - __src) >> 3 > v90)
      {
        v90 = v91 >> 3;
      }

      v92 = v91 >= 0x7FFFFFFFFFFFFFF0;
      v93 = 0xFFFFFFFFFFFFFFFLL;
      if (!v92)
      {
        v93 = v90;
      }

      if (v93)
      {
        sub_2761820B0(&__src, v93);
      }

      v94 = 16 * v89;
      *v94 = v80;
      *(v94 + 8) = v46;
      v86 = (16 * v89 + 16);
      memcpy(0, v87, v88);
      v95 = __src;
      __src = 0;
      v166 = v86;
      v167 = 0;
      if (v95)
      {
        operator delete(v95);
      }

      v35 = v157;
    }

    else
    {
      *v166 = v80;
      *(v85 + 1) = v46;
      v86 = v85 + 4;
    }

    v166 = v86;
    objc_msgSend_popMatrix(v11, v81, v82, v83, v84);

    ++v46;
  }

  v96 = 126 - 2 * __clz((v166 - __src) >> 4);
  if (v166 == __src)
  {
    v97 = 0;
  }

  else
  {
    v97 = v96;
  }

  sub_2761820F8(__src, v166, v158, v97, 1);
  v98 = MEMORY[0x277CBEB18];
  v103 = objc_msgSend_count(v36, v99, v100, v101, v102);
  v109 = objc_msgSend_arrayWithCapacity_(v98, v104, v105, v106, v107, v103);
  for (i = __src; i != v166; i += 4)
  {
    v114 = objc_msgSend_objectAtIndexedSubscript_(v36, v108, v110, v111, v112, *(i + 1));
    objc_msgSend_addObject_(v109, v115, v116, v117, v118, v114);
  }

  v119 = objc_msgSend_count(v36, v108, v110, v111, v112);
  if (v119 != objc_msgSend_count(v109, v120, v121, v122, v123))
  {
    v128 = MEMORY[0x277D81150];
    v129 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v124, v125, v126, v127, "void TSCH3D::SortElements(TSCH3DChartElementSceneObject *__strong, SEL, NSMutableArray<TSCH3DRenderElementInfo *> *__autoreleasing *, TSCH3DSceneRenderPipeline *__strong, MakeSortData) [SortData = float, MakeSortData = (anonymous namespace)::MakeSortData]");
    v134 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v130, v131, v132, v133, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartElementSceneObject_SortElements.h");
    v139 = objc_msgSend_count(v36, v135, v136, v137, v138);
    v144 = objc_msgSend_count(v109, v140, v141, v142, v143);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v128, v145, v146, v147, v148, v129, v134, 59, 0, "size mismatch between elements and sorted %lu, %lu", v139, v144);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v149, v150, v151, v152);
  }

  v153 = v109;
  *a3 = v109;

  if (__src)
  {
    v166 = __src;
    operator delete(__src);
  }
}

@end