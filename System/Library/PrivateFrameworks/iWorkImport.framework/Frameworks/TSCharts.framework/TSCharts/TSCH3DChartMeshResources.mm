@interface TSCH3DChartMeshResources
+ (TSCH3DChartMeshResources)resourcesWithSeries:(id)series creator:(id)creator;
- (TSCH3DChartMeshResources)initWithSeries:(id)series creator:(id)creator;
- (TSCH3DResource)bounds;
- (id)geometryResourceWithPrimitiveType:(int)type;
- (void)dealloc;
- (void)regenerate;
- (void)regenerateBounds;
- (void)regenerateForChild:(id)child;
@end

@implementation TSCH3DChartMeshResources

+ (TSCH3DChartMeshResources)resourcesWithSeries:(id)series creator:(id)creator
{
  seriesCopy = series;
  creatorCopy = creator;
  v8 = [self alloc];
  v13 = objc_msgSend_initWithSeries_creator_(v8, v9, v10, v11, v12, seriesCopy, creatorCopy);

  return v13;
}

- (TSCH3DChartMeshResources)initWithSeries:(id)series creator:(id)creator
{
  seriesCopy = series;
  creatorCopy = creator;
  v59.receiver = self;
  v59.super_class = TSCH3DChartMeshResources;
  v8 = [(TSCH3DChartMeshResources *)&v59 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_series, seriesCopy);
    objc_storeStrong(&v9->_creator, creator);
    v10 = [TSCH3DChartMeshSharedResource alloc];
    v15 = objc_msgSend_initWithParent_(v10, v11, v12, v13, v14, v9);
    vertex = v9->_vertex;
    v9->_vertex = v15;

    v17 = [TSCH3DChartMeshSharedResource alloc];
    v22 = objc_msgSend_initWithParent_(v17, v18, v19, v20, v21, v9);
    bounds = v9->_bounds;
    v9->_bounds = v22;

    v24 = [TSCH3DChartMeshSharedResource alloc];
    v29 = objc_msgSend_initWithParent_(v24, v25, v26, v27, v28, v9);
    normal = v9->_normal;
    v9->_normal = v29;

    v31 = [TSCH3DChartTexcoordSharedResource alloc];
    v36 = objc_msgSend_initWithParent_(v31, v32, v33, v34, v35, v9);
    texcoord = v9->_texcoord;
    v9->_texcoord = v36;

    objc_msgSend_setCaching_(v9->_vertex, v38, v39, v40, v41, 2);
    objc_msgSend_setCaching_(v9->_normal, v42, v43, v44, v45, 2);
    objc_msgSend_setCaching_(v9->_texcoord, v46, v47, v48, v49, 2);
    objc_msgSend_setCaching_(v9->_bounds, v50, v51, v52, v53, 1);
    v54 = objc_alloc_init(MEMORY[0x277D812A0]);
    cachedBoundsOnce = v9->_cachedBoundsOnce;
    v9->_cachedBoundsOnce = v54;

    v56 = objc_alloc_init(TSCH3DGeometryArrays);
    arrays = v9->_arrays;
    v9->_arrays = v56;
  }

  return v9;
}

- (void)dealloc
{
  objc_msgSend_p_clear(self->_vertex, a2, v2, v3, v4);
  objc_msgSend_p_clear(self->_bounds, v6, v7, v8, v9);
  objc_msgSend_p_clear(self->_normal, v10, v11, v12, v13);
  objc_msgSend_p_clear(self->_texcoord, v14, v15, v16, v17);
  v18.receiver = self;
  v18.super_class = TSCH3DChartMeshResources;
  [(TSCH3DChartMeshResources *)&v18 dealloc];
}

- (TSCH3DResource)bounds
{
  cachedBoundsOnce = self->_cachedBoundsOnce;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2761CEEA0;
  v7[3] = &unk_27A6B6888;
  v7[4] = self;
  objc_msgSend_performBlockOnce_(cachedBoundsOnce, a2, COERCE_DOUBLE(3221225472), v2, v3, v7);
  return self->_cachedBounds;
}

- (void)regenerate
{
  if (byte_280A46430 == 1)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromSelector(a2);
    NSLog(&cfstr_P_1.isa, v4, self, v5);
  }

  context = objc_autoreleasePoolPush();
  if (!self->_creator)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCH3DChartMeshResources regenerate]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartMeshResources.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 375, 0, "invalid nil value for '%{public}s'", "_creator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  objc_msgSend_setChildRegenerated_(self->_vertex, v6, v7, v8, v9, 1);
  objc_msgSend_setChildRegenerated_(self->_normal, v25, v26, v27, v28, 1);
  objc_msgSend_setChildRegenerated_(self->_texcoord, v29, v30, v31, v32, 1);
  creator = self->_creator;
  WeakRetained = objc_loadWeakRetained(&self->_series);
  v39 = objc_msgSend_createMeshForSeries_(creator, v35, v36, v37, v38, WeakRetained);

  v44 = objc_msgSend_geometry(v39, v40, v41, v42, v43);
  v50 = objc_msgSend_vertexBuffer(v44, v45, v46, v47, v48);
  if (v50)
  {
    v54 = objc_msgSend_geometry(v39, v49, v51, v52, v53);
    v59 = objc_msgSend_normalBuffer(v54, v55, v56, v57, v58);

    if (v59)
    {
      v64 = objc_msgSend_geometry(v39, v60, v61, v62, v63);
      v69 = objc_msgSend_vertexBuffer(v64, v65, v66, v67, v68);
      objc_msgSend_setMesh_(self->_vertex, v70, v71, v72, v73, v69);

      v78 = objc_msgSend_geometry(v39, v74, v75, v76, v77);
      v83 = objc_msgSend_normalBuffer(v78, v79, v80, v81, v82);
      objc_msgSend_setMesh_(self->_normal, v84, v85, v86, v87, v83);

      texcoord = self->_texcoord;
      v93 = objc_msgSend_geometry(v39, v89, v90, v91, v92);
      v98 = objc_msgSend_vertexBuffer(v93, v94, v95, v96, v97);
      v103 = objc_msgSend_geometry(v39, v99, v100, v101, v102);
      v108 = objc_msgSend_normalBuffer(v103, v104, v105, v106, v107);
      v113 = objc_msgSend_texcoordGenerator(v39, v109, v110, v111, v112);
      objc_msgSend_setVertex_normal_generator_(texcoord, v114, v115, v116, v117, v98, v108, v113);

      v122 = objc_msgSend_geometry(v39, v118, v119, v120, v121);
      v127 = objc_msgSend_geometryOffset(v122, v123, v124, v125, v126);
      v132 = objc_msgSend_geometry(v39, v128, v129, v130, v131);
      v137 = objc_msgSend_geometryCount(v132, v133, v134, v135, v136);
      v142 = objc_msgSend_geometry(v39, v138, v139, v140, v141);
      v147 = objc_msgSend_capOffset(v142, v143, v144, v145, v146);
      v152 = objc_msgSend_geometry(v39, v148, v149, v150, v151);
      v157 = objc_msgSend_capCount(v152, v153, v154, v155, v156);
      v162 = objc_msgSend_arraysWithOffset_count_capoffset_capcount_(TSCH3DGeometryArrays, v158, v159, v160, v161, v127, v137, v147, v157);
      v167 = objc_msgSend_copy(v162, v163, v164, v165, v166);
      arrays = self->_arrays;
      self->_arrays = v167;

      goto LABEL_10;
    }
  }

  else
  {
  }

  v169 = objc_opt_class();
  v122 = objc_msgSend_nullBuffer(v169, v170, v171, v172, v173);
  objc_msgSend_setMesh_(self->_vertex, v174, v175, v176, v177, v122);
  objc_msgSend_setMesh_(self->_normal, v178, v179, v180, v181, v122);
  v182 = self->_texcoord;
  v187 = objc_msgSend_texcoordGenerator(v39, v183, v184, v185, v186);
  objc_msgSend_setVertex_normal_generator_(v182, v188, v189, v190, v191, v122, v122, v187);

  v192 = objc_alloc_init(TSCH3DGeometryArrays);
  v132 = self->_arrays;
  self->_arrays = v192;
LABEL_10:

  v197 = objc_msgSend_geometry(v39, v193, v194, v195, v196);
  geometry = self->_geometry;
  self->_geometry = v197;

  objc_autoreleasePoolPop(context);
}

- (id)geometryResourceWithPrimitiveType:(int)type
{
  v3 = *&type;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = objc_msgSend_vertex(selfCopy, v5, v6, v7, v8);
  objc_msgSend_bufferInfo(v9, v10, v11, v12, v13);
  v18 = objc_msgSend_resourceWithType_resource_arrays_geometry_(TSCH3DGeometryResource, v14, v15, v16, v17, v3, v9, selfCopy->_arrays, selfCopy->_geometry);

  objc_sync_exit(selfCopy);

  return v18;
}

- (void)regenerateBounds
{
  v4 = objc_autoreleasePoolPush();
  if (!self->_creator)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, v5, v6, v7, "[TSCH3DChartMeshResources regenerateBounds]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartMeshResources.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 422, 0, "invalid nil value for '%{public}s'", "_creator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  objc_msgSend_setChildRegenerated_(self->_bounds, v3, v5, v6, v7, 1);
  creator = self->_creator;
  WeakRetained = objc_loadWeakRetained(&self->_series);
  v29 = objc_msgSend_createBoundsForSeries_(creator, v25, v26, v27, v28, WeakRetained);

  if (!v29)
  {
    objc_msgSend_regenerate(self, v30, v31, v32, v33);
    v29 = objc_msgSend_mesh(self->_vertex, v34, v35, v36, v37);
    if (!v29)
    {
      v38 = MEMORY[0x277D81150];
      v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, v31, v32, v33, "[TSCH3DChartMeshResources regenerateBounds]");
      v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, v41, v42, v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartMeshResources.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v45, v46, v47, v48, v39, v44, 430, 0, "invalid nil value for '%{public}s'", "boundsBuffer");

      v29 = 0;
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50, v51, v52);
    }
  }

  objc_msgSend_setMesh_(self->_bounds, v30, v31, v32, v33, v29);

  objc_autoreleasePoolPop(v4);
}

- (void)regenerateForChild:(id)child
{
  childCopy = child;
  if (self->_bounds == childCopy)
  {
    if (byte_280A46430)
    {
      v11 = objc_opt_class();
      v12 = NSStringFromSelector(a2);
      NSLog(&cfstr_PRegenerateBou.isa, v11, self, v12, childCopy);
    }

    objc_msgSend_regenerateBounds(self, v5, v6, v7, v8);
  }

  else
  {
    if (byte_280A46430)
    {
      v9 = objc_opt_class();
      v10 = NSStringFromSelector(a2);
      NSLog(&cfstr_PRegenerateChi.isa, v9, self, v10, childCopy);
    }

    objc_msgSend_regenerate(self, v5, v6, v7, v8);
  }
}

@end