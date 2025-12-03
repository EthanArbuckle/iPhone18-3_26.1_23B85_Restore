@interface TSCH3DChartAreaSceneObject
+ (id)createMeshForSeries:(id)series;
@end

@implementation TSCH3DChartAreaSceneObject

+ (id)createMeshForSeries:(id)series
{
  seriesCopy = series;
  v8 = objc_msgSend_model(seriesCopy, v4, v5, v6, v7);
  v162 = objc_msgSend_chartInfo(v8, v9, v10, v11, v12);
  v17 = objc_msgSend_chartType(v162, v13, v14, v15, v16);
  v22 = objc_msgSend_seriesType(seriesCopy, v18, v19, v20, v21);
  v27 = objc_msgSend_enumeratorWithModel_chartType_seriesType_(TSCH3DChartModelEnumerator, v23, v24, v25, v26, v8, v17, v22);

  v32 = objc_msgSend_seriesEnumerator(v27, v28, v29, v30, v31);
  v33 = objc_opt_class();
  v38 = objc_msgSend_chartSeriesType(v33, v34, v35, v36, v37);
  v43 = objc_msgSend_stackedArea3DSeries(TSCHChartSeriesType, v39, v40, v41, v42);

  if (v38 == v43)
  {
    v48 = 0;
    objc_msgSend_nextSeries_(v32, v44, v45, v46, v47, 0);
  }

  else
  {
    v48 = objc_msgSend_seriesIndex(seriesCopy, v44, v45, v46, v47);
    objc_msgSend_nextSeries_(v32, v49, v50, v51, v52, v48);
  }
  v53 = ;
  v58 = objc_msgSend_model(seriesCopy, v54, v55, v56, v57);
  v63 = objc_msgSend_seriesIndex(seriesCopy, v59, v60, v61, v62);
  v68 = objc_msgSend_lineAreaModelCacheForSeries_(v58, v64, v65, v66, v67, v63);

  v163 = objc_msgSend_groupAxis(v68, v69, v70, v71, v72);
  v160 = v27;
  v161 = v8;
  v159 = v68;
  v78 = objc_msgSend_valueAxis(v68, v73, v74, v75, v76);
  if (!v78)
  {
    v82 = MEMORY[0x277D81150];
    v83 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v77, v79, v80, v81, "+[TSCH3DChartAreaSceneObject createMeshForSeries:]");
    v88 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v84, v85, v86, v87, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartAreaSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v82, v89, v90, v91, v92, v83, v88, 103, 0, "invalid nil value for '%{public}s'", "valueAxis");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v93, v94, v95, v96);
  }

  objc_msgSend_interceptForAxis_(v78, v77, v79, v80, v81, v163);
  objc_msgSend_unitSpaceValueForDataSpaceValue_(v78, v97, v98, v99, v100);
  v102 = fmax(v101, 0.0);
  v173 = 0x3F80000000000000;
  v106 = objc_msgSend_generatorWithYLimits_zeroValue_(TSCH3DAreaGenerator, v103, COERCE_DOUBLE(LODWORD(v102) | 0x3F80000000000000), 0.0, v104, &v173);
  v173 = 0;
  v174 = 0;
  v175 = 0;
  __p = 0;
  v171 = 0;
  v172 = 0;
  while (v48 < objc_msgSend_seriesIndex(seriesCopy, v105, v107, v108, v109))
  {
    sub_276186F78(v53, &v173, &__p, v102);
    objc_msgSend_addRowWithXValues_yValues_(v106, v110, v111, v112, v113, &v173, &__p);
    v118 = objc_msgSend_nextSeries_(v32, v114, v115, v116, v117, ++v48);

    v53 = v118;
  }

  sub_276186F78(v53, &v173, &__p, v102);
  v123 = objc_msgSend_createGeometryWithXValues_yValues_(v106, v119, v120, v121, v122, &v173, &__p);
  objc_msgSend_setStacked_(v123, v124, v125, v126, v127, v38 == v43);
  v132 = objc_msgSend_bottomLine(v123, v128, v129, v130, v131);
  v133 = 1.0;
  v134 = v132[1] - *v132;
  if (v134)
  {
    v135 = 0xAAAAAAAAAAAAAAABLL * (v134 >> 2);
    if (v135 <= 1)
    {
      v135 = 1;
    }

    v136 = (*v132 + 4);
    do
    {
      v137 = *v136;
      v136 += 3;
      v138 = v137;
      if (v137 < v133)
      {
        v133 = v138;
      }

      --v135;
    }

    while (v135);
  }

  v166[0] = 0;
  *&v166[1] = v133;
  v167 = 0x3F800000BF000000;
  v168 = v133 + 1.0;
  v169 = 1056964608;
  v139 = [TSCH3DTexCoordGenerationCube alloc];
  v144 = objc_msgSend_initWithBBox_(v139, v140, v141, v142, v143, v166);
  v164 = 0x400000003F800000;
  v165 = 1065353216;
  v148 = objc_msgSend_mapperWithNormalBias_(TSCH3DDefaultNormalDirectionMapper, v145, 2.00000047, v146, v147, &v164);
  objc_msgSend_setNormalDirectionMapper_(v144, v149, v150, v151, v152, v148);

  v157 = objc_msgSend_dataWithGeometry_texcoordGenerator_(TSCH3DMeshData, v153, v154, v155, v156, v123, v144);

  if (__p)
  {
    v171 = __p;
    operator delete(__p);
  }

  if (v173)
  {
    v174 = v173;
    operator delete(v173);
  }

  return v157;
}

@end