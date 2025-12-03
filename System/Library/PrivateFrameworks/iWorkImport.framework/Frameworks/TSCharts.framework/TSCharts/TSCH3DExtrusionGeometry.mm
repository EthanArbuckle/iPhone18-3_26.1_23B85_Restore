@interface TSCH3DExtrusionGeometry
- (TSCH3DExtrusionGeometry)init;
- (id).cxx_construct;
- (tvec3<float>)normalBias;
- (tvec3<float>)spineDirectionBias;
- (void)debug_dumpGeometryBounds;
- (void)generateArrays;
- (void)setCrossSection:(const void *)section;
- (void)setScale:(const void *)scale;
- (void)setSpine:(const void *)spine;
@end

@implementation TSCH3DExtrusionGeometry

- (TSCH3DExtrusionGeometry)init
{
  v8.receiver = self;
  v8.super_class = TSCH3DExtrusionGeometry;
  result = [(TSCH3DGeometry *)&v8 init];
  if (result)
  {
    result->_beginCap = 1;
    result->_endCap = 1;
    result->_crossSectionCreaseAngle = 1.2;
    result->_spineCreaseAngle = 0.0;
    __asm { FMOV            V0.2S, #1.0 }

    *&result->_normalBias.var0.var0 = _D0;
    result->_normalBias.var2.var0 = 1.0;
    *&result->_spineDirectionBias.var0.var0 = _D0;
    result->_spineDirectionBias.var2.var0 = 1.0;
  }

  return result;
}

- (void)setCrossSection:(const void *)section
{
  p_crossSection = &self->_crossSection;
  if (p_crossSection != section)
  {
    sub_2761ED484(p_crossSection, *section, *(section + 1), (*(section + 1) - *section) >> 3);
  }
}

- (void)setSpine:(const void *)spine
{
  p_spine = &self->_spine;
  if (p_spine != spine)
  {
    sub_2761ED280(p_spine, *spine, *(spine + 1), 0xAAAAAAAAAAAAAAABLL * ((*(spine + 1) - *spine) >> 2));
  }
}

- (void)setScale:(const void *)scale
{
  p_scale = &self->_scale;
  if (p_scale != scale)
  {
    sub_2761ED484(p_scale, *scale, *(scale + 1), (*(scale + 1) - *scale) >> 3);
  }
}

- (void)generateArrays
{
  begin = self->_spine.__begin_;
  v7 = self->_spine.__end_ - begin;
  v8 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 2);
  v210 = v8 - 2;
  if (v8 < 2 || (v9 = self->_crossSection.__begin_, v10 = (self->_crossSection.__end_ - v9) >> 3, v243 = v10 - 1, v10 <= 1))
  {

    objc_msgSend_allocateArrays_(self, a2, v2, v3, v4, 0);
    return;
  }

  *&v259[12] = 0;
  *&v259[4] = 0;
  *v259 = 1065353216;
  *&v259[20] = 1065353216;
  *&v259[24] = 0;
  *v260 = 0;
  *&v260[20] = 0;
  *&v260[12] = 0;
  *&v260[8] = 1065353216;
  *&v260[28] = 1065353216;
  v11 = &begin[3 * v8 - 3];
  v212 = v11;
  v211 = *begin == *v11 && begin[1] == v11[1] && begin[2] == v11[2];
  v203 = *v9;
  v201 = v9[v243];
  v12 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  if (v7 >= 1)
  {
    v18 = 0;
    if (v8 <= 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 2);
    }

    do
    {
      if (v15 == 0.0 && v16 == 0.0 && v17 == 0.0)
      {
        sub_2761F1AC8(begin, v18, 0xAAAAAAAAAAAAAAABLL * (v7 >> 2), v211, __src);
        if (*__src != 0.0 || *&__src[4] != 0.0 || *&__src[8] != 0.0)
        {
          v15 = *__src;
          v16 = *&__src[4];
          v17 = *&__src[8];
        }
      }

      else if (v12 != 0.0 || v13 != 0.0 || v14 != 0.0)
      {
        break;
      }

      if (v12 == 0.0 && v13 == 0.0 && v14 == 0.0)
      {
        sub_2761F1C8C(begin, v18, 0xAAAAAAAAAAAAAAABLL * (v7 >> 2), v211, __src);
        if (*__src != 0.0 || *&__src[4] != 0.0 || *&__src[8] != 0.0)
        {
          v12 = *__src;
          v13 = *&__src[4];
          v14 = *&__src[8];
        }
      }

      ++v18;
    }

    while (v19 != v18);
  }

  v216 = v8 - 1;
  v20 = v16 == 0.0 && v15 == 0.0;
  v21 = v20;
  if ((v21 & (v17 == 0.0)) != 0)
  {
    v15 = 0.0;
    v16 = 1.0;
    v22 = 0.0;
  }

  else
  {
    v22 = v17;
  }

  v24 = v13 == 0.0 && v12 == 0.0;
  v25 = v24 && v14 == 0.0;
  if (v25 == 1)
  {
    v12 = 0.0;
    v27 = v16 == 0.0 && v15 == 0.0;
    v28 = v22 == 1.0;
    if (v27 && v28)
    {
      v13 = 1.0;
    }

    else
    {
      v13 = 0.0;
    }

    if (v27 && v28)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = 1.0;
    }
  }

  v226 = begin;
  v29 = self->_scale.__begin_;
  end = self->_scale.__end_;
  v258 = 0;
  v31 = v10 * v8;
  sub_2761F27A8(v257, v10 * v8);
  v36 = v257[0];
  v214 = v7;
  selfCopy = self;
  v231 = v10;
  v220 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 2);
  v238 = v257[0];
  if (v7 < 1)
  {
    v70 = 0;
  }

  else
  {
    v208 = v10 * v8;
    v37 = 0;
    v38 = v9;
    v39 = 0;
    p_spineDirectionBias = &self->_spineDirectionBias;
    if ((0xAAAAAAAAAAAAAAABLL * (v7 >> 2)) <= 1)
    {
      v41 = 1;
    }

    else
    {
      v41 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 2);
    }

    v222 = v38 + 1;
    v218 = p_spineDirectionBias;
    do
    {
      if ((v25 & 1) == 0)
      {
        sub_2761F1AC8(v226, v37, v220, v211, __src);
        v240 = v14;
        v42 = *__src;
        v235 = v13;
        v43 = *&__src[4];
        v232 = v12;
        v44 = *&__src[8];
        sub_2761F1C8C(v226, v37, v220, v211, __src);
        LODWORD(v34) = *&__src[4];
        v46 = v43 == 0.0 && v42 == 0.0;
        if (!v46 || v44 != 0.0)
        {
          v15 = v42;
          v16 = v43;
          v22 = v44;
        }

        v48 = *&__src[4] == 0.0 && *__src == 0.0;
        v49 = *&__src[8] == 0.0;
        if (v48 && v49)
        {
          v50 = v232;
        }

        else
        {
          v50 = *__src;
        }

        if (v48 && v49)
        {
          *&v34 = v235;
          v51 = v240;
        }

        else
        {
          v51 = *&__src[8];
        }

        if ((((v235 * *&v34) + (v50 * v232)) + (v51 * v240)) >= 0.0)
        {
          v12 = v50;
          v13 = *&v34;
          v14 = v51;
        }

        else
        {
          v12 = -v50;
          v13 = -*&v34;
          v14 = -v51;
        }

        v36 = v238;
        p_spineDirectionBias = v218;
      }

      v52 = v15 * p_spineDirectionBias->var0.var0;
      v53 = v16 * p_spineDirectionBias->var1.var0;
      v54 = v22 * p_spineDirectionBias->var2.var0;
      v55 = ((v53 * v53) + (v52 * v52)) + (v54 * v54);
      v33 = 0.0;
      v15 = 0.0;
      v16 = 0.0;
      v22 = 0.0;
      if (v55 > 0.00000011921)
      {
        v56 = 1.0 / sqrtf(v55);
        v15 = v52 * v56;
        v16 = v53 * v56;
        v22 = v54 * v56;
      }

      *&v34 = (v16 * v14) - (v13 * v22);
      *&v35 = (v22 * v12) - (v14 * v15);
      v57 = (v15 * v13) - (v12 * v16);
      v58 = ((*&v35 * *&v35) + (*&v34 * *&v34)) + (v57 * v57);
      v59 = 0.0;
      v60 = 0.0;
      if (v58 > 0.00000011921)
      {
        v61 = 1.0 / sqrtf(v58);
        *&v33 = *&v34 * v61;
        v59 = *&v35 * v61;
        v60 = v57 * v61;
      }

      *v259 = LODWORD(v33);
      *&v259[4] = v59;
      *&v259[8] = LODWORD(v60);
      *&v259[16] = v15;
      *&v259[20] = v16;
      *&v259[24] = LODWORD(v22);
      *v260 = v12;
      *&v260[4] = v13;
      *&v260[8] = LODWORD(v14);
      v62 = v226 + 12 * v37;
      *&v260[16] = *v62;
      LODWORD(v33) = *(v62 + 8);
      *&v260[24] = LODWORD(v33);
      *&v260[28] = 1065353216;
      if (end != v29)
      {
        *&__src[4] = 0uLL;
        *__src = 1065353216;
        v250 = 1065353216;
        v251 = 0;
        v252 = 0;
        v255 = 0;
        v254 = 0;
        v253 = 1065353216;
        v256 = 1065353216;
        v63 = ((end - v29) >> 3) - 1;
        if (v63 >= v37)
        {
          v63 = v37;
        }

        v64 = &v29[8 * v63];
        v65 = v64[1];
        *__src = *v64;
        v253 = v65;
        sub_2761558A0(__src, v259, v246);
        *v259 = v246[0];
        *&v259[16] = v246[1];
        v33 = *&v247;
        v34 = *&v248;
        *v260 = v247;
        *&v260[16] = v248;
      }

      v66 = v10;
      if (v10 >= 1)
      {
        v67 = v222;
        do
        {
          v68 = *(v67 - 1);
          *&v34 = *v67;
          *&v35 = *&v260[24] + (((*&v259[24] * 0.0) + (*&v259[8] * v68)) + (*&v260[8] * *v67));
          v69 = &v36[3 * v39];
          v33 = COERCE_DOUBLE(vadd_f32(*&v260[16], vmla_n_f32(vmla_n_f32(vmul_f32(*&v259[16], 0), *v259, v68), *v260, *v67)));
          *v69 = v33;
          *(v69 + 2) = LODWORD(v35);
          ++v39;
          v67 += 2;
          --v66;
        }

        while (v66);
      }

      ++v37;
    }

    while (v37 != v41);
    v70 = v39;
    v31 = v208;
  }

  if (v31 != v70)
  {
    v71 = MEMORY[0x277D81150];
    v72 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v33, v34, v35, "[TSCH3DExtrusionGeometry generateArrays]");
    v77 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v73, v74, v75, v76, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DExtrusionGeometry.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v71, v78, v79, v80, v81, v72, v77, 360, 0, "Wrong number of vertices");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v82, v83, v84, v85);
    v10 = v231;
  }

  v86 = 3 * v10 - 9;
  if (selfCopy->_beginCap)
  {
    v87 = 3 * v10 - 9;
  }

  else
  {
    v87 = 0;
  }

  if (!selfCopy->_endCap)
  {
    v86 = 0;
  }

  v88 = v87 + 6 * v243 * v216 + v86;
  objc_msgSend_allocateArrays_(selfCopy, v32, v33, v34, v35, v88);
  v202 = v243 * v216;
  v233 = objc_msgSend_vertexArrayPointer(selfCopy, v89, v90, v91, v92);
  v97 = objc_msgSend_normalArrayPointer(selfCopy, v93, v94, v95, v96);
  v258 = 0;
  v102 = &OBJC_IVAR___TSCH3DLabelResource__labelRenderOffset;
  v236 = v97;
  if (!selfCopy->_beginCap)
  {
    selfCopy->_beginCapCount = 0;
    selfCopy->_beginCapOffset = 0;
    LODWORD(v205) = 152;
    goto LABEL_128;
  }

  selfCopy->_beginCapOffset = 0;
  v99 = *v226;
  LODWORD(v100) = *(v226 + 8);
  v103 = (v226 + 20);
  v104 = 1;
  v101 = 3.18618444e-58;
  do
  {
    v105 = vsub_f32(*&v99, *(v103 - 2));
    v106 = *&v100 - *v103;
    v107 = (COERCE_FLOAT(vmul_f32(v105, v105).i32[1]) + (v105.f32[0] * v105.f32[0])) + (v106 * v106);
    if (v107 <= 0.00000011921)
    {
      v109 = 0;
      v110 = 0.0;
      if (v104 >= v216)
      {
        break;
      }

      goto LABEL_119;
    }

    v108 = 1.0 / sqrtf(v107);
    v109 = vmul_n_f32(v105, v108);
    v110 = v106 * v108;
    if (v104 >= v216 || v109.f32[0] != 0.0 || v109.f32[1] != 0.0)
    {
      break;
    }

LABEL_119:
    ++v104;
    v103 += 3;
  }

  while (v110 == 0.0);
  *__src = v109;
  *&__src[8] = v110;
  if (v10 < 4)
  {
    v114 = 0;
    v113 = selfCopy;
  }

  else
  {
    v111 = 1;
    v112 = v97;
    do
    {
      *&v99 = sub_2761F1EE4(&v258, v233, v112, v36, 0, 0, 0, v111, 0, v111 + 1, v10, __src);
      v20 = v111++ == v10 - 3;
    }

    while (!v20);
    v113 = selfCopy;
    v114 = v258 - selfCopy->_beginCapOffset;
    v102 = &OBJC_IVAR___TSCH3DLabelResource__labelRenderOffset;
  }

  v205 = v102[114];
  *(&v113->super.super.isa + v205) = v114;
LABEL_128:
  if (v7 >= 13)
  {
    v115 = 0;
    v116 = v216;
    if (v216 <= 1)
    {
      v116 = 1;
    }

    v223 = v116;
    v241 = 3 * v10;
    v228 = v238;
    do
    {
      v117 = v115 + 1;
      if (v10 >= 2)
      {
        v118 = 0;
        v119 = v228;
        do
        {
          v120 = v119 + 3;
          sub_2761F2588(v119, &v119[v241], &v119[v241 + 3], v119 + 3, __src);
          sub_2761F1EE4(&v258, v233, v236, v238, v115, v118, v115 + 1, v118, v115 + 1, v118 + 1, v231, __src);
          *&v99 = sub_2761F1EE4(&v258, v233, v236, v238, v115, v118, v115 + 1, v118 + 1, v115, v118 + 1, v231, __src);
          v119 = v120;
          ++v118;
        }

        while (v118 != v243);
      }

      v228 = (v228 + v241 * 4);
      ++v115;
      v10 = v231;
    }

    while (v117 != v223);
  }

  v121 = selfCopy;
  if (!selfCopy->_endCap)
  {
    selfCopy->_endCapCount = 0;
    selfCopy->_endCapOffset = 0;
    v133 = v258;
    v124 = v216;
    v126 = v236;
    goto LABEL_151;
  }

  endCapOffset = v258;
  selfCopy->_endCapOffset = v258;
  v99 = *v212;
  *&v100 = v212[2];
  v123 = (v226 + 12 * v220 - 24);
  v101 = 3.18618444e-58;
  v124 = v216;
  v125 = v216;
  v126 = v236;
  while (2)
  {
    v127 = vsub_f32(*&v99, *v123);
    v128 = *&v100 - v123[1].f32[0];
    v129 = (COERCE_FLOAT(vmul_f32(v127, v127).i32[1]) + (v127.f32[0] * v127.f32[0])) + (v128 * v128);
    if (v129 <= 0.00000011921)
    {
      v131 = 0;
      v132 = 0.0;
      if (v125 < 2)
      {
        goto LABEL_145;
      }

LABEL_144:
      v123 = (v123 - 12);
      --v125;
      if (v132 != 0.0)
      {
        goto LABEL_145;
      }

      continue;
    }

    break;
  }

  v130 = 1.0 / sqrtf(v129);
  v131 = vmul_n_f32(v127, v130);
  v132 = v128 * v130;
  if (v125 >= 2 && v131.f32[0] == 0.0 && v131.f32[1] == 0.0)
  {
    goto LABEL_144;
  }

LABEL_145:
  *__src = v131;
  *&__src[8] = v132;
  v133 = endCapOffset;
  if (v10 >= 4)
  {
    for (i = 3; i != v10; ++i)
    {
      *&v99 = sub_2761F1EE4(&v258, v233, v236, v238, v216, 0, v216, i - 1, v216, i - 2, v10, __src);
    }

    v133 = v258;
    v121 = selfCopy;
    endCapOffset = selfCopy->_endCapOffset;
  }

  v121->_endCapCount = v133 - endCapOffset;
LABEL_151:
  if (v88 != v133)
  {
    v135 = MEMORY[0x277D81150];
    v136 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v98, v99, v100, v101, "[TSCH3DExtrusionGeometry generateArrays]");
    v141 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v137, v138, v139, v140, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DExtrusionGeometry.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v135, v142, v143, v144, v145, v136, v141, 422, 0, "Wrong number of vertices");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v146, v147, v148, v149);
  }

  crossSectionCreaseAngle = selfCopy->_crossSectionCreaseAngle;
  spineCreaseAngle = selfCopy->_spineCreaseAngle;
  if (crossSectionCreaseAngle > 0.0 || spineCreaseAngle > 0.0)
  {
    v152 = cosf(fmaxf(fminf(spineCreaseAngle, 3.1416), 0.0));
    v153 = cosf(fmaxf(fminf(crossSectionCreaseAngle, 3.1416), 0.0));
    v154 = *(&selfCopy->super.super.isa + v205);
    sub_2761F27A8(__src, 6 * v243 * v216);
    v157 = (v126 + 12 * v154);
    if (v214 >= 13)
    {
      v158 = 0;
      v159 = 0;
      v160 = *&v201;
      v161 = vceq_f32(v203, v201);
      v217 = v161.i8[0] & v161.i8[4];
      v213 = (v126 + 12 * v154);
      v215 = v10 - 2;
      v162 = v126 + 12 * v88;
      if (v124 <= 1)
      {
        v163 = 1;
      }

      else
      {
        v163 = v124;
      }

      v206 = 72 * v243;
      v207 = v126 + 12 * v154;
      v204 = v163;
      do
      {
        if (v10 <= 1)
        {
          v200 = v158 + 1;
        }

        else
        {
          v164 = 0;
          v165 = v158 - 1;
          if (!v158)
          {
            v165 = v210;
          }

          if (v158 >= v210)
          {
            v166 = v158;
          }

          else
          {
            v166 = v158 + 1;
          }

          v209 = v158 + 1;
          if (v158 < v210)
          {
            v167 = v158 + 1;
          }

          else
          {
            v167 = 0;
          }

          v224 = v158 * v243;
          if (v211)
          {
            v168 = v165;
          }

          else
          {
            v168 = v158 - (v158 != 0);
          }

          if (v211)
          {
            v169 = v167;
          }

          else
          {
            v169 = v166;
          }

          v219 = v169 * v243;
          v221 = v168 * v243;
          v170 = (v207 + v206 * v169);
          v171 = (v207 + v206 * v168);
          do
          {
            v172 = v164 - 1;
            v229 = *__src;
            v173 = &v157[12 * v159];
            v174 = *v173;
            v246[0].i64[0] = *v173;
            LODWORD(v174) = *(v173 + 2);
            v246[0].i32[2] = v174;
            if (v217)
            {
              if (v164 < v215)
              {
                v175 = v164 + 1;
              }

              else
              {
                v175 = 0;
              }

              if (!v164)
              {
                v172 = v215;
              }
            }

            else
            {
              if (v164 >= v215)
              {
                v175 = v164;
              }

              else
              {
                v175 = v164 + 1;
              }

              v172 = v164 - (v164 != 0);
            }

            v242 = &v157[72 * v175 + 72 * v224];
            v176 = &v157[72 * v172 + 72 * v224];
            v177 = &v157[72 * v172 + 72 * v221];
            v234 = &v157[72 * v172 + 72 * v219];
            v237 = &v157[72 * v175 + 72 * v219];
            v239 = &v157[72 * v175 + 72 * v221];
            if (v171 >= v162 || v170 >= v162 || v242 >= v162 || (v176 < v162 ? (v178 = v177 >= v162) : (v178 = 1), !v178 ? (v179 = v234 >= v162) : (v179 = 1), !v179 ? (v180 = v239 >= v162) : (v180 = 1), !v180 ? (v181 = v237 >= v162) : (v181 = 1), v181))
            {
              v182 = MEMORY[0x277D81150];
              v183 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v155, *&v174, v160, v156, "[TSCH3DExtrusionGeometry generateArrays]");
              v188 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v184, v185, v186, v187, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DExtrusionGeometry.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v182, v189, v190, v191, v192, v183, v188, 473, 0, "Normal out of bounds");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v193, v194, v195, v196);
            }

            v197 = v229 + 12 * v159;
            sub_2761F1FF4(v246[0].f32, v171, v176, v177, &selfCopy->_normalBias.var0.var0, &v244, v152, v153);
            v227 = v244;
            *v197 = v244;
            v230 = v245;
            *(v197 + 8) = v245;
            sub_2761F1FF4(v246[0].f32, v170, v176, v234, &selfCopy->_normalBias.var0.var0, &v244, v152, v153);
            *(v197 + 12) = v244;
            *(v197 + 20) = v245;
            sub_2761F1FF4(v246[0].f32, v170, v242, v237, &selfCopy->_normalBias.var0.var0, &v244, v152, v153);
            *&v198 = v244;
            LODWORD(v199) = vdup_lane_s32(v227, 1).u32[0];
            DWORD1(v199) = v230;
            *(&v199 + 1) = v244;
            *(&v198 + 1) = __PAIR64__(v227.u32[0], v245);
            *(v197 + 24) = v198;
            *(v197 + 40) = v199;
            *(v197 + 56) = DWORD2(v198);
            sub_2761F1FF4(v246[0].f32, v171, v242, v239, &selfCopy->_normalBias.var0.var0, &v244, v152, v153);
            *(v197 + 60) = v244;
            *(v197 + 68) = v245;
            v159 += 6;
            ++v164;
            v170 += 18;
            v171 += 18;
            v157 = v213;
          }

          while (v243 != v164);
          v10 = v231;
          v163 = v204;
          v200 = v209;
        }

        v158 = v200;
      }

      while (v200 != v163);
    }

    memcpy(v157, *__src, 72 * v202);
    if (*__src)
    {
      *&__src[8] = *__src;
      operator delete(*__src);
    }
  }

  if (v257[0])
  {
    v257[1] = v257[0];
    operator delete(v257[0]);
  }
}

- (void)debug_dumpGeometryBounds
{
  objc_msgSend_geometryBounds(self, a2, v2, v3, v4);
  v7 = objc_opt_class();
  v8 = NSStringFromSelector(a2);
  v9 = MEMORY[0x277CCACA8];
  sub_276166580(v22, v10, v11, v12, v13, v14, v15, v16);
  if (v24 >= 0)
  {
    objc_msgSend_stringWithUTF8String_(v9, v17, v18, v19, v20, &__p);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(v9, v17, v18, v19, v20, __p);
  }
  v21 = ;
  if (v24 < 0)
  {
    operator delete(__p);
  }

  NSLog(&cfstr_PBounds_0.isa, v7, self, v8, v21);
}

- (tvec3<float>)normalBias
{
  *v2 = self->_normalBias;
  result.var2 = a2;
  result.var0 = self;
  result.var1 = *(&self + 4);
  return result;
}

- (tvec3<float>)spineDirectionBias
{
  *v2 = self->_spineDirectionBias;
  result.var2 = a2;
  result.var0 = self;
  result.var1 = *(&self + 4);
  return result;
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 7) = 0;
  *(self + 11) = 0;
  *(self + 12) = 0;
  *(self + 10) = 0;
  *(self + 14) = 0;
  *(self + 15) = 0;
  *(self + 13) = 0;
  *(self + 156) = 0;
  *(self + 41) = 0;
  *(self + 21) = 0;
  *(self + 44) = 0;
  return self;
}

@end