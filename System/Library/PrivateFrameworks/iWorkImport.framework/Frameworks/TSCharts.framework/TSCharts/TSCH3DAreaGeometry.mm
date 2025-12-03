@interface TSCH3DAreaGeometry
- (TSCH3DAreaGeometry)init;
- (id).cxx_construct;
- (id)elementsBoundsPositions;
- (id)selectionKnobPositions;
- (tvec2<float>)bottomTopAtPosition:(float)position;
- (void)generateArrays;
- (void)setTopLine:(const void *)line bottomLine:(const void *)bottomLine zeroValue:(float)value;
@end

@implementation TSCH3DAreaGeometry

- (TSCH3DAreaGeometry)init
{
  v4.receiver = self;
  v4.super_class = TSCH3DAreaGeometry;
  v2 = [(TSCH3DGeometry *)&v4 init];
  if (v2)
  {
    v2->_minZ = +[TSCH3DChartLineSceneObject chartSeriesDepth]_0() * -0.5;
    v2->_maxZ = +[TSCH3DChartLineSceneObject chartSeriesDepth]_0() * 0.5;
  }

  return v2;
}

- (void)setTopLine:(const void *)line bottomLine:(const void *)bottomLine zeroValue:(float)value
{
  if (*(line + 1) - *line != *(bottomLine + 1) - *bottomLine)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, *&value, v5, v6, "[TSCH3DAreaGeometry setTopLine:bottomLine:zeroValue:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DAreaGeometry.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 156, 0, "top and bottom line size mismatch %zu, %zu", 0xAAAAAAAAAAAAAAABLL * ((*(line + 1) - *line) >> 2), 0xAAAAAAAAAAAAAAABLL * ((*(bottomLine + 1) - *bottomLine) >> 2));

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  if (&self->_topLine != line)
  {
    sub_2761ED280(&self->_topLine, *line, *(line + 1), 0xAAAAAAAAAAAAAAABLL * ((*(line + 1) - *line) >> 2));
  }

  if (&self->_bottomLine != bottomLine)
  {
    sub_2761ED280(&self->_bottomLine, *bottomLine, *(bottomLine + 1), 0xAAAAAAAAAAAAAAABLL * ((*(bottomLine + 1) - *bottomLine) >> 2));
  }

  self->_zeroValue = value;
}

- (tvec2<float>)bottomTopAtPosition:(float)position
{
  v7 = v3;
  p_topLine = &self->_topLine;
  v9 = self->_topLine.__end_ - self->_topLine.__begin_;
  p_bottomLine = &self->_bottomLine;
  begin = self->_bottomLine.__begin_;
  if (v9 != self->_bottomLine.__end_ - begin)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, *&position, v4, v5, "[TSCH3DAreaGeometry bottomTopAtPosition:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DAreaGeometry.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 190, 0, "_bottomLine.size() != _topLine.size()");

    self = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
    begin = p_bottomLine->__begin_;
  }

  v27 = 0;
  v28 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 2);
  if (v28 <= 1)
  {
    v28 = 1;
  }

  v29 = v28 - 1;
  v30 = begin + 3;
  while (v29 != v27)
  {
    ++v27;
    v31 = *v30;
    v30 += 3;
    v32 = v31;
    if (v31 >= position)
    {
      v29 = v27 - 1;
      v28 = v27;
      goto LABEL_10;
    }
  }

  v32 = begin[3 * v28];
LABEL_10:
  v33 = &begin[3 * v29];
  v34 = v32 - *v33;
  v35 = 0.0;
  if (v34 > 0.0)
  {
    v35 = (position - *v33) / v34;
  }

  v36 = *(p_topLine->__begin_ + 3 * v29 + 1);
  v37 = 3 * v28;
  v38 = v33[1] + (v35 * (begin[v37 + 1] - v33[1]));
  v39 = v36 + (v35 * (*(p_topLine->__begin_ + v37 + 1) - v36));
  *v7 = v38;
  v7[1] = v39;
  return self;
}

- (void)generateArrays
{
  selfCopy = self;
  v185 = *MEMORY[0x277D85DE8];
  p_topLine = &self->_topLine;
  v7 = self->_topLine.__end_ - self->_topLine.__begin_;
  if (v7 <= 23)
  {
    v8 = 0;
    goto LABEL_60;
  }

  p_bottomLine = &self->_bottomLine;
  if (v7 != self->_bottomLine.__end_ - self->_bottomLine.__begin_)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, *&v2, v3, *v4.i64, "[TSCH3DAreaGeometry generateArrays]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DAreaGeometry.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 216, 0, "_bottomLine.size() != _topLine.size()");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  v24 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 2);
  v25 = v24 - 1;
  *&v2 = selfCopy->_zeroValue;
  v26 = 6;
  if (*&v2 == 0.0)
  {
    v26 = 0;
  }

  v171 = (v26 | (24 * v24)) - 6;
  objc_msgSend_allocateArrays_(selfCopy, a2, *&v2, v3, *v4.i64);
  v31 = objc_msgSend_vertexArrayPointer(selfCopy, v27, v28, v29, v30);
  v36 = objc_msgSend_normalArrayPointer(selfCopy, v32, v33, v34, v35);
  v37 = 0;
  v175 = 0;
  v180 = 0u;
  v181 = 0u;
  v179 = 0u;
  v38 = v24 - 2;
  if (v25 <= 1)
  {
    v39 = 1;
  }

  else
  {
    v39 = v25;
  }

  v173 = v39;
  v40 = 12;
  v41 = xmmword_2764D63B0;
  v42 = xmmword_2764D6280;
  v43 = 1.0;
  v172 = v38;
  do
  {
    v44 = p_bottomLine->__begin_ + v40;
    v2 = *(v44 - 12);
    *&v45 = *(v44 + 4);
    v46 = p_topLine->__begin_ + v40;
    *(&v45 + 1) = *(v46 - 12);
    v176 = v2;
    v177 = v45;
    v178 = *(v46 - 4);
    DWORD1(v2) = *(&v176 | 0xC);
    DWORD2(v2) = DWORD2(v45);
    HIDWORD(v2) = DWORD1(v178);
    v3 = COERCE_DOUBLE(__PAIR64__(v45, DWORD1(v176)));
    v47 = HIDWORD(v45);
    v48 = DWORD2(v178);
    p_minZ = &selfCopy->_minZ;
    v4 = vld1q_dup_f32(p_minZ);
    vst3q_f32(&v179, *&v2);
    DWORD2(v176) = LODWORD(selfCopy->_maxZ);
    DWORD1(v177) = DWORD2(v176);
    LODWORD(v178) = DWORD2(v176);
    HIDWORD(v178) = DWORD2(v176);
    v50 = *(&v176 + 1);
    if (*(&v176 + 1) == *(&v177 + 3))
    {
      LODWORD(v2) = v177;
      LODWORD(v3) = DWORD2(v178);
      if (*&v177 == *(&v178 + 2))
      {
        goto LABEL_51;
      }
    }

    v184 = 1065353216;
    v182 = v41;
    v183 = xmmword_2764D5F40;
    sub_2761F8A3C(&v175, v31, v36, &v176, 0, 1, 3, &v182);
    v184 = 1065353216;
    v182 = xmmword_2764D63B0;
    v183 = xmmword_2764D5F40;
    sub_2761F8A3C(&v175, v31, v36, &v176, 0, 3, 2, &v182);
    v184 = -1082130432;
    v182 = xmmword_2764D6740;
    v183 = xmmword_2764D6730;
    sub_2761F8A3C(&v175, v31, v36, &v176, 6, 7, 5, &v182);
    v184 = -1082130432;
    v182 = xmmword_2764D6740;
    v183 = xmmword_2764D6730;
    sub_2761F8A3C(&v175, v31, v36, &v176, 6, 5, 4, &v182);
    begin = p_topLine->__begin_;
    v52 = 0.0;
    if (v40 == 12)
    {
      v53 = 0.0;
      v54 = 0.0;
    }

    else
    {
      v55 = *&begin[v40 - 12] - *&begin[v40 - 24];
      v56 = *&begin[v40 - 8] - *&begin[v40 - 20];
      v57 = *&begin[v40 - 4] - *&begin[v40 - 16];
      v58 = ((v56 * v56) + (v55 * v55)) + (v57 * v57);
      v53 = 0.0;
      v54 = 0.0;
      if (v58 > 0.00000011921)
      {
        v59 = v43 / sqrtf(v58);
        v52 = v55 * v59;
        v53 = v56 * v59;
        v54 = v57 * v59;
      }
    }

    v60 = &begin[v40];
    if (v37 >= v38)
    {
      v61 = *v60;
      v62 = v60[1];
      v63 = v60[2];
      v68 = 0.0;
LABEL_21:
      v70 = 0.0;
      v71 = 0.0;
      goto LABEL_22;
    }

    v61 = *v60;
    v62 = v60[1];
    v63 = v60[2];
    v64 = v60[3] - *v60;
    v65 = v60[4] - v62;
    v66 = v60[5] - v63;
    v67 = ((v65 * v65) + (v64 * v64)) + (v66 * v66);
    v68 = 0.0;
    if (v67 <= 0.00000011921)
    {
      goto LABEL_21;
    }

    v69 = v43 / sqrtf(v67);
    v68 = v64 * v69;
    v70 = v65 * v69;
    v71 = v66 * v69;
LABEL_22:
    v72 = &begin[v40];
    v73 = v61 - *(v72 - 3);
    v74 = v62 - *(v72 - 2);
    v75 = v63 - *(v72 - 1);
    v76 = ((v74 * v74) + (v73 * v73)) + (v75 * v75);
    v77 = 0.0;
    v78 = 0.0;
    v79 = 0.0;
    v80 = 0.0;
    if (v76 > 0.00000011921)
    {
      v81 = v43 / sqrtf(v76);
      v78 = v73 * v81;
      v79 = v74 * v81;
      v80 = v75 * v81;
    }

    v82 = -(v53 - (v54 * 0.0));
    v83 = v52 + (v54 * -0.0);
    v84 = (v52 * -0.0) + (v53 * 0.0);
    v85 = ((v83 * v83) + (v82 * v82)) + (v84 * v84);
    v86 = 0.0;
    v87 = 0.0;
    if (v85 > 0.00000011921)
    {
      v88 = v43 / sqrtf(v85);
      v77 = v82 * v88;
      v86 = v83 * v88;
      v87 = v84 * v88;
    }

    v89 = 0.0;
    v90 = -(v70 - (v71 * 0.0));
    v91 = v68 + (v71 * -0.0);
    v92 = (v68 * -0.0) + (v70 * 0.0);
    v93 = ((v91 * v91) + (v90 * v90)) + (v92 * v92);
    v94 = 0.0;
    v95 = 0.0;
    v96 = 0.0;
    if (v93 > 0.00000011921)
    {
      v97 = v43 / sqrtf(v93);
      v94 = v90 * v97;
      v95 = v91 * v97;
      v96 = v92 * v97;
    }

    v98 = -(v79 - (v80 * 0.0));
    v99 = v78 + (v80 * -0.0);
    v100 = (v78 * -0.0) + (v79 * 0.0);
    v101 = ((v99 * v99) + (v98 * v98)) + (v100 * v100);
    v102 = 0.0;
    v103 = 0.0;
    if (v101 > 0.00000011921)
    {
      v104 = v43 / sqrtf(v101);
      v89 = v98 * v104;
      v102 = v99 * v104;
      v103 = v100 * v104;
    }

    v105 = ((v86 * v86) + (v77 * v77)) + (v87 * v87);
    v106 = 0.0;
    v107 = 0.0;
    v108 = 0.0;
    v109 = 0.0;
    if (v105 > 0.00000011921)
    {
      v110 = v43 / sqrtf(v105);
      v107 = v77 * v110;
      v108 = v86 * v110;
      v109 = v87 * v110;
    }

    v111 = ((v102 * v102) + (v89 * v89)) + (v103 * v103);
    v112 = sqrtf(v111);
    v113 = 0.0;
    v114 = 0.0;
    if (v111 > 0.00000011921)
    {
      v106 = v89 * (v43 / v112);
      v113 = v102 * (v43 / v112);
      v114 = v103 * (v43 / v112);
    }

    v115 = v89;
    v116 = v102;
    v117 = v103;
    if ((((v108 * v113) + (v107 * v106)) + (v109 * v114)) > 0.69671)
    {
      v118 = v77 + v89;
      v119 = v86 + v102;
      v120 = v87 + v103;
      v121 = ((v119 * v119) + (v118 * v118)) + (v120 * v120);
      v115 = 0.0;
      v116 = 0.0;
      v117 = 0.0;
      if (v121 > 0.00000011921)
      {
        v122 = 1.0 / sqrtf(v121);
        v115 = v118 * v122;
        v116 = v119 * v122;
        v117 = v120 * v122;
      }
    }

    v123 = ((v95 * v95) + (v94 * v94)) + (v96 * v96);
    v124 = 0.0;
    v125 = 0.0;
    v126 = 0.0;
    v127 = 0.0;
    if (v123 > 0.00000011921)
    {
      v128 = 1.0 / sqrtf(v123);
      v125 = v94 * v128;
      v126 = v95 * v128;
      v127 = v96 * v128;
    }

    v129 = v111 <= 0.00000011921;
    v130 = 0.0;
    v131 = 0.0;
    if (!v129)
    {
      v132 = 1.0 / v112;
      v124 = v89 * v132;
      v130 = v102 * v132;
      v131 = v103 * v132;
    }

    if ((((v126 * v130) + (v125 * v124)) + (v127 * v131)) > 0.69671)
    {
      v133 = v94 + v89;
      v134 = v95 + v102;
      v135 = v96 + v103;
      v136 = ((v134 * v134) + (v133 * v133)) + (v135 * v135);
      v89 = 0.0;
      v102 = 0.0;
      v103 = 0.0;
      if (v136 > 0.00000011921)
      {
        v137 = 1.0 / sqrtf(v136);
        v89 = v133 * v137;
        v102 = v134 * v137;
        v103 = v135 * v137;
      }
    }

    *&v182 = __PAIR64__(LODWORD(v116), LODWORD(v115));
    *(&v182 + 1) = __PAIR64__(LODWORD(v89), LODWORD(v117));
    *&v183 = __PAIR64__(LODWORD(v103), LODWORD(v102));
    *(&v183 + 1) = __PAIR64__(LODWORD(v102), LODWORD(v89));
    v184 = LODWORD(v103);
    sub_2761F8A3C(&v175, v31, v36, &v176, 2, 3, 7, &v182);
    *&v182 = __PAIR64__(LODWORD(v116), LODWORD(v115));
    *(&v182 + 1) = __PAIR64__(LODWORD(v89), LODWORD(v117));
    *&v183 = __PAIR64__(LODWORD(v103), LODWORD(v102));
    *(&v183 + 1) = __PAIR64__(LODWORD(v116), LODWORD(v115));
    v184 = LODWORD(v117);
    sub_2761F8A3C(&v175, v31, v36, &v176, 2, 7, 6, &v182);
    v138 = *(&v179 + 3) - *&v179;
    v139 = *&v180 - *(&v179 + 1);
    v140 = *(&v180 + 1) - *(&v179 + 2);
    v141 = ((*&v180 - *(&v179 + 1)) * (*(&v176 + 2) - *(&v179 + 2))) - ((v50 - *(&v179 + 1)) * (*(&v180 + 1) - *(&v179 + 2)));
    v142 = ((*(&v180 + 1) - *(&v179 + 2)) * (*&v176 - *&v179)) - ((*(&v176 + 2) - *(&v179 + 2)) * (*(&v179 + 3) - *&v179));
    v143 = ((*(&v179 + 3) - *&v179) * (v50 - *(&v179 + 1))) - ((*&v176 - *&v179) * (*&v180 - *(&v179 + 1)));
    v144 = ((v142 * v142) + (v141 * v141)) + (v143 * v143);
    v145 = 0.0;
    v146 = 0.0;
    v147 = 0.0;
    v43 = 1.0;
    if (v144 > 0.00000011921)
    {
      v148 = 1.0 / sqrtf(v144);
      v145 = v141 * v148;
      v146 = v142 * v148;
      v147 = v143 * v148;
    }

    if ((((v146 * v146) + (v145 * v145)) + (v147 * v147)) == 0.0)
    {
      v149 = (v139 * (*(&v177 + 1) - *(&v179 + 2))) - ((*&v177 - *(&v179 + 1)) * v140);
      v150 = (v140 * (*(&v176 + 3) - *&v179)) - ((*(&v177 + 1) - *(&v179 + 2)) * v138);
      v151 = (v138 * (*&v177 - *(&v179 + 1))) - ((*(&v176 + 3) - *&v179) * v139);
      v152 = ((v150 * v150) + (v149 * v149)) + (v151 * v151);
      v147 = 0.0;
      v146 = 0.0;
      v145 = 0.0;
      if (v152 > 0.00000011921)
      {
        v153 = 1.0 / sqrtf(v152);
        v145 = v149 * v153;
        v146 = v150 * v153;
        v147 = v151 * v153;
      }
    }

    *(&v183 + 3) = v146;
    v184 = LODWORD(v147);
    *&v183 = v146;
    *(&v183 + 4) = __PAIR64__(LODWORD(v145), LODWORD(v147));
    *&v182 = __PAIR64__(LODWORD(v146), LODWORD(v145));
    *(&v182 + 1) = __PAIR64__(LODWORD(v145), LODWORD(v147));
    sub_2761F8A3C(&v175, v31, v36, &v176, 4, 5, 1, &v182);
    *(&v183 + 3) = v146;
    v184 = LODWORD(v147);
    *&v183 = v146;
    *(&v183 + 4) = __PAIR64__(LODWORD(v145), LODWORD(v147));
    *&v182 = __PAIR64__(LODWORD(v146), LODWORD(v145));
    *(&v182 + 1) = __PAIR64__(LODWORD(v145), LODWORD(v147));
    *&v2 = sub_2761F8A3C(&v175, v31, v36, &v176, 4, 1, 0, &v182);
    v42 = xmmword_2764D6280;
    v41 = xmmword_2764D63B0;
    if (v40 == 12)
    {
      v184 = 0;
      v182 = xmmword_2764D6750;
      v183 = xmmword_2764D6740;
      sub_2761F8A3C(&v175, v31, v36, &v176, 4, 0, 2, &v182);
      v184 = 0;
      v182 = xmmword_2764D6750;
      v183 = xmmword_2764D6740;
      *&v2 = sub_2761F8A3C(&v175, v31, v36, &v176, 4, 2, 6, &v182);
      v42 = xmmword_2764D6280;
      v41 = xmmword_2764D63B0;
    }

LABEL_51:
    if (v38 == v37)
    {
      v184 = 0;
      v182 = v42;
      v183 = v41;
      sub_2761F8A3C(&v175, v31, v36, &v176, 1, 5, 7, &v182);
      v184 = 0;
      v182 = xmmword_2764D6280;
      v183 = xmmword_2764D63B0;
      sub_2761F8A3C(&v175, v31, v36, &v176, 1, 7, 3, &v182);
      selfCopy->_capOffset = v175;
      zeroValue = selfCopy->_zeroValue;
      if (zeroValue != 0.0)
      {
        LODWORD(v177) = 0;
        LODWORD(v180) = 0;
        *(&v181 + 2) = zeroValue;
        *(&v178 + 2) = zeroValue;
        v184 = 0;
        v182 = xmmword_2764D6280;
        v183 = xmmword_2764D63B0;
        sub_2761F8A3C(&v175, v31, v36, &v176, 1, 5, 7, &v182);
        v184 = 0;
        v182 = xmmword_2764D6280;
        v183 = xmmword_2764D63B0;
        sub_2761F8A3C(&v175, v31, v36, &v176, 1, 7, 3, &v182);
        zeroValue = selfCopy->_zeroValue;
      }

      *&v177 = zeroValue;
      *&v180 = zeroValue;
      DWORD2(v181) = 1065353216;
      DWORD2(v178) = 1065353216;
      v184 = 0;
      v182 = xmmword_2764D6280;
      v183 = xmmword_2764D63B0;
      sub_2761F8A3C(&v175, v31, v36, &v176, 1, 5, 7, &v182);
      v184 = 0;
      v182 = xmmword_2764D6280;
      v183 = xmmword_2764D63B0;
      *&v2 = sub_2761F8A3C(&v175, v31, v36, &v176, 1, 7, 3, &v182);
      selfCopy->_capCount = v175 - selfCopy->_capOffset;
      v38 = v172;
      v42 = xmmword_2764D6280;
      v41 = xmmword_2764D63B0;
    }

    ++v37;
    v40 += 12;
  }

  while (v173 != v37);
  v155 = v175;
  if (v171 < v175)
  {
    v156 = MEMORY[0x277D81150];
    v157 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, *&v2, v3, *v4.i64, "[TSCH3DAreaGeometry generateArrays]");
    v162 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v158, v159, v160, v161, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DAreaGeometry.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v156, v163, v164, v165, v166, v157, v162, 308, 0, "Too many vertices detected");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v167, v168, v169, v170);
  }

  if (v171 > v155)
  {
    self = selfCopy;
    v8 = v155;
LABEL_60:

    objc_msgSend_allocateArrays_(self, a2, *&v2, v3, *v4.i64, v8);
  }
}

- (id)selectionKnobPositions
{
  v7 = objc_msgSend_stacked(self, a2, v2, v3, v4);
  if (v7)
  {
    objc_msgSend_maxZ(self, v6, v8, v9, v10);
    v15 = *&v12;
    p_topLine = &self->_topLine;
    p_end = &self->_topLine.__end_;
    v18 = self->_topLine.__end_ - self->_topLine.__begin_;
    v19 = 0xAAAAAAAAAAAAAAABLL * ((self->_bottomLine.__end_ - self->_bottomLine.__begin_) >> 2);
  }

  else
  {
    objc_msgSend_minZ(self, v6, v8, v9, v10);
    v21 = *&v20;
    objc_msgSend_maxZ(self, v22, v20, v23, v24);
    v19 = 0;
    *&v12 = v21 + *&v12;
    LODWORD(v13) = 0.5;
    v15 = *&v12 * 0.5;
    p_topLine = &self->_topLine;
    p_end = &self->_topLine.__end_;
    v18 = self->_topLine.__end_ - self->_topLine.__begin_;
  }

  v26 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v11, v12, v13, v14, v19 - 0x5555555555555555 * (v18 >> 2));
  begin = p_topLine->__begin_;
  if (p_topLine->__end_ != p_topLine->__begin_)
  {
    v30 = 0;
    v31 = 0;
    do
    {
      v47 = *&begin[v30];
      v48 = v15;
      v32 = objc_msgSend_vectorWithVec3_(TSCH3DVector, v25, v47, v27, v28, &v47);
      objc_msgSend_addObject_(v26, v33, v34, v35, v36, v32);

      ++v31;
      begin = p_topLine->__begin_;
      v30 += 12;
    }

    while (v31 < 0xAAAAAAAAAAAAAAABLL * ((*p_end - p_topLine->__begin_) >> 2));
  }

  if (v7)
  {
    p_bottomLine = &self->_bottomLine;
    v38 = p_bottomLine->__begin_;
    if (p_bottomLine->__end_ != p_bottomLine->__begin_)
    {
      v39 = 0;
      v40 = 0;
      do
      {
        v47 = *&v38[v39];
        v48 = v15;
        v41 = objc_msgSend_vectorWithVec3_(TSCH3DVector, v25, v47, v27, v28, &v47);
        objc_msgSend_addObject_(v26, v42, v43, v44, v45, v41);

        ++v40;
        v38 = p_bottomLine->__begin_;
        v39 += 12;
      }

      while (v40 < 0xAAAAAAAAAAAAAAABLL * ((p_bottomLine->__end_ - p_bottomLine->__begin_) >> 2));
    }
  }

  return v26;
}

- (id)elementsBoundsPositions
{
  if (objc_msgSend_stacked(self, a2, v2, v3, v4))
  {
    objc_msgSend_maxZ(self, v6, v7, v8, v9);
    v14 = *&v11;
    p_topLine = &self->_topLine;
    p_end = &self->_topLine.__end_;
    v17 = self->_topLine.__end_ - self->_topLine.__begin_;
    v18 = 0xAAAAAAAAAAAAAAABLL * ((self->_bottomLine.__end_ - self->_bottomLine.__begin_) >> 2);
  }

  else
  {
    objc_msgSend_minZ(self, v6, v7, v8, v9);
    v20 = *&v19;
    objc_msgSend_maxZ(self, v21, v19, v22, v23);
    v18 = 0;
    *&v11 = v20 + *&v11;
    LODWORD(v12) = 0.5;
    v14 = *&v11 * 0.5;
    p_topLine = &self->_topLine;
    p_end = &self->_topLine.__end_;
    v17 = self->_topLine.__end_ - self->_topLine.__begin_;
  }

  v25 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v10, v11, v12, v13, v18 - 0x5555555555555555 * (v17 >> 2));
  begin = p_topLine->__begin_;
  if (p_topLine->__end_ != p_topLine->__begin_)
  {
    v29 = 0;
    v30 = 0;
    do
    {
      v37 = *&begin[v29];
      v38 = v14;
      v31 = objc_msgSend_vectorWithVec3_(TSCH3DVector, v24, v37, v26, v27, &v37);
      objc_msgSend_addObject_(v25, v32, v33, v34, v35, v31);

      ++v30;
      begin = p_topLine->__begin_;
      v29 += 12;
    }

    while (v30 < 0xAAAAAAAAAAAAAAABLL * ((*p_end - p_topLine->__begin_) >> 2));
  }

  return v25;
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 7) = 0;
  *(self + 11) = 0;
  *(self + 12) = 0;
  *(self + 10) = 0;
  return self;
}

@end