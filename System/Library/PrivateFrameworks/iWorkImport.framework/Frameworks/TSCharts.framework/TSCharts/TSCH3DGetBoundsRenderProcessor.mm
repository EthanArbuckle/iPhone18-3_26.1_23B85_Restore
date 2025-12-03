@interface TSCH3DGetBoundsRenderProcessor
- (TSCH3DGetBoundsRenderProcessor)init;
- (id).cxx_construct;
- (void)resetBounds;
- (void)submit:(id)submit;
@end

@implementation TSCH3DGetBoundsRenderProcessor

- (TSCH3DGetBoundsRenderProcessor)init
{
  v3.receiver = self;
  v3.super_class = TSCH3DGetBoundsRenderProcessor;
  return [(TSCH3DTransformGeometryRenderProcessor *)&v3 init];
}

- (void)resetBounds
{
  *&self->_bounds._bounds._min.var0.var0 = xmmword_2764D5F00;
  *&self->_bounds._bounds._max.var1.var0 = xmmword_2764D60B0;
  *&self->_bounds._projected._min.var2.var0 = xmmword_2764D60C0;
  *&self->_bounds._2DProjected._min.var0.var0 = xmmword_2764D5F00;
  *&self->_bounds._2DProjected._max.var1.var0 = 0x80000000800000;
  self->_bounds._boxes.__end_ = self->_bounds._boxes.__begin_;
}

- (void)submit:(id)submit
{
  submitCopy = submit;
  buffer = self->super._buffer;
  if (!buffer)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCH3DGetBoundsRenderProcessor submit:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DGetBoundsPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 115, 0, "invalid nil value for '%{public}s'", "_buffer");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
    buffer = self->super._buffer;
  }

  if (objc_msgSend_componentType(buffer, v5, v7, v8, v9) != 1)
  {
    v30 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v27, v28, v29, "[TSCH3DGetBoundsRenderProcessor submit:]");
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DGetBoundsPipeline.mm");
    v41 = objc_msgSend_componentType(self->super._buffer, v37, v38, v39, v40);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v42, v43, v44, v45, v31, v36, 117, 0, "componentByteSize is not float %ld", v41);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47, v48, v49);
  }

  if (objc_msgSend_hasOffset(submitCopy, v26, v27, v28, v29))
  {
    v191 = objc_msgSend_offset(submitCopy, v50, v51, v52, v53);
  }

  else
  {
    v191 = 0;
  }

  if (objc_msgSend_hasCount(submitCopy, v50, v51, v52, v53))
  {
    v192 = objc_msgSend_count(submitCopy, v54, v55, v56, v57);
  }

  else
  {
    v192 = objc_msgSend_count(self->super._buffer, v54, v55, v56, v57);
  }

  v208 = 0;
  v207 = 0;
  v210 = 0;
  v211 = 0;
  v213 = xmmword_2764D5F60;
  v206 = 1056964608;
  v209 = 1056964608;
  v212 = 1056964608;
  v61 = objc_msgSend_matrix(self, v58, 0.0000305175853, v59, v60);
  v66 = objc_msgSend_current(v61, v62, v63, v64, v65);
  v195 = 0u;
  v196 = 0u;
  v193 = 0u;
  v194 = 0u;
  v67 = *(v66 + 16);
  v193 = *v66;
  v194 = v67;
  v68 = *(v66 + 48);
  v195 = *(v66 + 32);
  v196 = v68;
  v71 = objc_msgSend_matrix(self, v69, *&v195, *&v68, v70);
  v76 = objc_msgSend_projection(v71, v72, v73, v74, v75);
  sub_2761558A0(&v206, v76, v201);
  sub_2761661E4(&v202, &v193, v201);

  if (byte_280A46430 == 1)
  {
    v81 = objc_opt_class();
    v82 = NSStringFromSelector(a2);
    v87 = objc_msgSend_matrix(self, v83, v84, v85, v86);
    v88 = a2;
    v93 = objc_msgSend_projection(v87, v89, v90, v91, v92);
    *&v94 = sub_2761558A0(&v206, v93, v201).u64[0];
    v98 = objc_msgSend_matrix(self, v95, v94, v96, v97);
    v103 = objc_msgSend_current(v98, v99, v100, v101, v102);
    sub_2761558A0(v201, v103, &v193);
    v104 = MEMORY[0x277CCACA8];
    v189 = *(&v196 + 2);
    v190 = *(&v196 + 3);
    v187 = *&v196;
    v188 = *(&v196 + 1);
    v185 = *(&v195 + 2);
    v186 = *(&v195 + 3);
    v183 = *&v195;
    v184 = *(&v195 + 1);
    v181 = *(&v194 + 2);
    v182 = *(&v194 + 3);
    v179 = *&v194;
    v180 = *(&v194 + 1);
    v178 = v193.f32[0];
    sub_276152FD4("mat4x4((%f, %f, %f, %f), (%f, %f, %f, %f), (%f, %f, %f, %f), (%f, %f, %f, %f))", v105, v106, v107, v108, v109, v110, v111, SLOBYTE(v178));
    if (v215 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v104, v112, v113, v114, v115, &v214);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v104, v112, v113, v114, v115, v214);
    }
    v116 = ;
    if (v215 < 0)
    {
      operator delete(v214);
    }

    NSLog(&cfstr_PNormalization.isa, v81, self, v82, v116, *&v179, *&v180, *&v181, *&v182, *&v183, *&v184, *&v185, *&v186, *&v187, *&v188, *&v189, *&v190);

    a2 = v88;
  }

  if (objc_msgSend_components(self->super._buffer, v77, v78, v79, v80) < 2 || objc_msgSend_components(self->super._buffer, v117, v118, v119, v120) >= 5)
  {
    v121 = MEMORY[0x277D81150];
    v122 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v117, v118, v119, v120, "[TSCH3DGetBoundsRenderProcessor submit:]");
    v127 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v123, v124, v125, v126, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DGetBoundsPipeline.mm");
    v132 = objc_msgSend_components(self->super._buffer, v128, v129, v130, v131);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v121, v133, v134, v135, v136, v122, v127, 128, 0, "buffer components out of bounds %lu", v132);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v137, v138, v139, v140);
  }

  v142 = objc_msgSend_components(self->super._buffer, v117, v118, v119, v120);
  v146 = self->super._buffer;
  if (v142 == 2)
  {
    v147 = sub_276165208(v146);
    if (8 * v191 != 8 * (v192 + v191))
    {
      v149 = (*v147 + 8 * (v192 + v191));
      v150 = (8 * v191 + *v147);
      do
      {
        v193.i64[0] = *v150;
        v193.i64[1] = 0x3F80000000000000;
        sub_2761666BC(&v202, &v193);
        ++v150;
      }

      while (v150 != v149);
    }
  }

  else
  {
    v152 = objc_msgSend_components(v146, v141, v143, v144, v145);
    v156 = self->super._buffer;
    if (v152 == 3)
    {
      v157 = sub_27616536C(v156);
      if (v192)
      {
        v158 = *v157 + 12 * v191;
        v159 = v158 + 12 * v192;
        do
        {
          v160 = *(v158 + 8);
          v193.i64[0] = *v158;
          v193.i64[1] = v160 | 0x3F80000000000000;
          sub_2761666BC(&v202, &v193);
          v158 += 12;
        }

        while (v158 != v159);
      }
    }

    else if (objc_msgSend_components(v156, v151, v153, v154, v155) == 4)
    {
      v161 = sub_2761654D0(self->super._buffer);
      if (16 * v191 != 16 * (v192 + v191))
      {
        v162 = (*v161 + 16 * (v192 + v191));
        v163 = (16 * v191 + *v161);
        do
        {
          v193 = *v163;
          sub_2761666BC(&v202, &v193);
          ++v163;
        }

        while (v163 != v162);
      }
    }
  }

  *&v164 = v203;
  *(&v164 + 1) = v204;
  v193 = v202;
  v194 = v164;
  v195 = v205;
  v196 = xmmword_2764D5F00;
  v197 = 0x80000000800000;
  v199 = 0;
  v200 = 0;
  __p = 0;
  mode = self->_mode;
  if (mode == 2)
  {
    objc_msgSend_extend2DProjectedBounds_(self, v148, *v202.i64, 2.84809454e-306, 1.40444743e306, &v194 + 8);
  }

  else if (mode == 1)
  {
    end = self->_bounds._boxes.__end_;
    if (end >= self->_bounds._boxes.__cap_)
    {
      v167 = sub_2761662F4(&self->_bounds._boxes.__begin_, &v193);
    }

    else
    {
      *end = v202.i32[0];
      *(end + 4) = *(v193.i64 + 4);
      *(end + 3) = v193.i32[3];
      *(end + 2) = v194;
      v167 = end + 24;
    }

    self->_bounds._boxes.__end_ = v167;
  }

  else
  {
    sub_276166138(&self->_bounds, &v193);
    sub_276166138(&self->_bounds._projected, &v194 + 8);
  }

  if (byte_280A46430 == 1)
  {
    v168 = objc_opt_class();
    v169 = NSStringFromSelector(a2);
    v177 = sub_276165634(&self->_bounds._bounds._min.var0.var0, v170, v171, v172, v173, v174, v175, v176);
    NSLog(&cfstr_PBounds.isa, v168, self, v169, v177);
  }

  if (__p)
  {
    v199 = __p;
    operator delete(__p);
  }
}

- (id).cxx_construct
{
  *(self + 40) = xmmword_2764D5F00;
  *(self + 56) = xmmword_2764D60B0;
  *(self + 72) = xmmword_2764D60C0;
  *(self + 88) = xmmword_2764D5F00;
  *(self + 13) = 0x80000000800000;
  *(self + 15) = 0;
  *(self + 16) = 0;
  *(self + 14) = 0;
  return self;
}

@end