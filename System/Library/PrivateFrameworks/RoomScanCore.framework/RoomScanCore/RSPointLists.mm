@interface RSPointLists
- (RSPointLists)init;
- (void)generateRSPointListsWithWalls:(id)walls;
@end

@implementation RSPointLists

- (void)generateRSPointListsWithWalls:(id)walls
{
  v251 = *MEMORY[0x277D85DE8];
  wallsCopy = walls;
  objc_msgSend_removeAllObjects(self->_pointLists_array, v4, v5);
  objc_msgSend_removeAllObjects(self->_wallLists_array, v6, v7);
  objc_msgSend_removeAllObjects(self->_outerPointList_array, v8, v9);
  v230 = 0;
  v231 = 0;
  v232 = 0;
  v227 = 0;
  v228 = 0;
  v229 = 0;
  v215 = wallsCopy;
  v12 = 0;
  v244 = 0uLL;
  v245 = 0;
  v237 = 0;
  v238 = 0;
  v239 = 0;
  v241 = 0u;
  *v240 = 0u;
  LODWORD(v242) = 1065353216;
  while (1)
  {
    LODWORD(v248[0]) = v12;
    if (objc_msgSend_count(v215, v10, v11) <= v12)
    {
      break;
    }

    sub_2621C729C(v240, v12++);
  }

  selfCopy = self;
  if (*(&v241 + 1))
  {
    v234 = &v234;
    v235 = &v234;
    v236 = 0;
    v233[0] = v233;
    v233[1] = v233;
    v233[2] = 0;
    sub_26223B830(v240, *(v241 + 16));
    operator new();
  }

  v13 = *(&v244 + 1);
  for (i = v244; i != v13; i += 24)
  {
    sub_26223C0EC(&v234, i);
    if (v235 != &v234)
    {
      v15 = -1;
      v16 = v235;
      do
      {
        v17 = v15;
        v16 = v16[1];
        ++v15;
      }

      while (v16 != &v234);
      if (v15 < 0x3FFFFFFFFFFFFFFFLL)
      {
        sub_2621C7F54(v17 + 2);
      }

      sub_2621CBEB0();
    }

    v18 = v231;
    if (v231 >= v232)
    {
      v20 = 0xAAAAAAAAAAAAAAABLL * ((v231 - v230) >> 3);
      v21 = v20 + 1;
      if (v20 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_2621CBEB0();
      }

      if (0x5555555555555556 * ((v232 - v230) >> 3) > v21)
      {
        v21 = 0x5555555555555556 * ((v232 - v230) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v232 - v230) >> 3) >= 0x555555555555555)
      {
        v22 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v22 = v21;
      }

      v250.i64[0] = &v230;
      if (v22)
      {
        sub_2621E1E3C(v22);
      }

      v23 = 8 * ((v231 - v230) >> 3);
      *v23 = 0u;
      *(v23 + 16) = 0;
      v19 = 24 * v20 + 24;
      v24 = (v23 - (v231 - v230));
      memcpy(v24, v230, v231 - v230);
      v25 = v230;
      v26 = v232;
      v230 = v24;
      v231 = v19;
      v232 = 0;
      v248[1] = v25;
      *&v249 = v25;
      *(&v249 + 1) = v26;
      v248[0] = v25;
      sub_26220AA90(v248);
    }

    else
    {
      *v231 = 0u;
      *(v18 + 2) = 0;
      v19 = (v18 + 24);
    }

    v231 = v19;
    sub_26223C234(&v234);
  }

  v28 = v237;
  for (j = v238; v28 != j; v28 += 24)
  {
    sub_26223C190(&v234, v28);
    if (v235 != &v234)
    {
      v29 = -1;
      v30 = v235;
      do
      {
        v31 = v29;
        v30 = v30[1];
        ++v29;
      }

      while (v30 != &v234);
      if (v29 < 0xFFFFFFFFFFFFFFFLL)
      {
        sub_2621CBF10(v31 + 2);
      }

      sub_2621CBEB0();
    }

    v32 = v228;
    if (v228 >= v229)
    {
      v34 = 0xAAAAAAAAAAAAAAABLL * ((v228 - v227) >> 3);
      v35 = v34 + 1;
      if (v34 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_2621CBEB0();
      }

      if (0x5555555555555556 * ((v229 - v227) >> 3) > v35)
      {
        v35 = 0x5555555555555556 * ((v229 - v227) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v229 - v227) >> 3) >= 0x555555555555555)
      {
        v36 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v36 = v35;
      }

      v250.i64[0] = &v227;
      if (v36)
      {
        sub_2621E1EE4(v36);
      }

      v37 = 8 * ((v228 - v227) >> 3);
      *v37 = 0u;
      *(v37 + 16) = 0;
      v33 = 24 * v34 + 24;
      v38 = (v37 - (v228 - v227));
      memcpy(v38, v227, v228 - v227);
      v39 = v227;
      v40 = v229;
      v227 = v38;
      v228 = v33;
      v229 = 0;
      v248[1] = v39;
      *&v249 = v39;
      *(&v249 + 1) = v40;
      v248[0] = v39;
      sub_26220AA90(v248);
    }

    else
    {
      *v228 = 0u;
      *(v32 + 2) = 0;
      v33 = (v32 + 24);
    }

    v228 = v33;
    sub_26223C234(&v234);
  }

  sub_2621C74C4(v240);
  v248[0] = &v237;
  sub_26223C298(v248);
  v248[0] = &v244;
  sub_26223C298(v248);

  v42 = v227;
  v41 = v228;
  if (selfCopy && v228 != v227)
  {
    v43 = 0;
    do
    {
      v44 = v42[3 * v43];
      v45 = v42[3 * v43 + 1];
      v46 = v45 - v44;
      if (v46 >= 3)
      {
        v47 = 0;
        v48 = *v44;
        for (k = 1; k != v46; ++k)
        {
          v50 = v44[k];
          if (vmovn_s32(vcgtq_f32(v48, v50)).u8[0] & 1) != 0 || (vmovn_s32(vceqq_f32(v50, v48)).u8[0] & 1) != 0 && (vmovn_s32(vcgtq_f32(v50, v48)).i8[2])
          {
            v48 = v44[k];
            v47 = k;
          }
        }

        v51 = v46 - 1;
        v52 = v47 - 1;
        if (!v47)
        {
          v52 = v51;
        }

        if (v51 == v47)
        {
          v53 = 0;
        }

        else
        {
          v53 = v47 + 1;
        }

        v54 = vsubq_f32(v48, v44[v52]).u64[0];
        v55 = vsubq_f32(v44[v53], v48).u64[0];
        if (((-*(&v54 + 1) * *&v55) + (*&v54 * *(&v55 + 1))) > 0.0)
        {
          if (v44 != v45)
          {
            v56 = v45 - 1;
            if (v56 > v44)
            {
              v57 = v44 + 1;
              do
              {
                v58 = v57[-1];
                v57[-1] = *v56;
                *v56-- = v58;
                v59 = v57++ >= v56;
              }

              while (!v59);
            }
          }

          v60 = &v230[24 * v43];
          v61 = *v60;
          v62 = *(v60 + 1);
          v63 = (v62 - 4);
          if (v61 != v62 && v63 > v61)
          {
            v65 = v61 + 4;
            do
            {
              v66 = *(v65 - 4);
              *(v65 - 4) = *v63;
              *v63-- = v66;
              v59 = v65 >= v63;
              v65 += 4;
            }

            while (!v59);
          }
        }
      }

      ++v43;
      v42 = v227;
      v41 = v228;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v228 - v227) >> 3) > v43);
  }

  if (v42 != v41)
  {
    v216 = v41;
    do
    {
      v248[0] = 0;
      v248[1] = 0;
      *&v249 = 0;
      sub_2621DDA38(v248, *v42, v42[1], (v42[1] - *v42) >> 4);
      v69 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v70 = v248[1];
      v71 = v248[0];
      for (__p = v248[0]; v71 != v70; ++v71)
      {
        v222 = *v71;
        v72 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v67, v68);
        v247[0] = v72;
        HIDWORD(v73) = DWORD1(v222);
        LODWORD(v73) = DWORD1(v222);
        v76 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v74, v75, v73);
        v247[1] = v76;
        v79 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v77, v78, COERCE_DOUBLE(__PAIR64__(DWORD1(v222), DWORD2(v222))));
        v247[2] = v79;
        v81 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v80, v247, 3);
        objc_msgSend_addObject_(v69, v82, v81);
      }

      objc_msgSend_addObject_(selfCopy->_pointLists_array, v67, v69);

      if (__p)
      {
        operator delete(__p);
      }

      v42 += 3;
    }

    while (v42 != v216);
  }

  v83 = v230;
  v84 = v231;
  if (v230 == v231)
  {
    v237 = 0;
    v238 = 0;
    v239 = 0;
    v92 = v215;
    v94 = v215;
    if (!selfCopy)
    {

      goto LABEL_205;
    }
  }

  else
  {
    do
    {
      v248[0] = 0;
      v248[1] = 0;
      *&v249 = 0;
      sub_2621C8B60(v248, *v83, v83[1], (v83[1] - *v83) >> 2);
      v86 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v87 = v248[0];
      v88 = v248[1];
      for (m = v248[0]; m != v88; ++m)
      {
        v90 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v85, *m);
        objc_msgSend_addObject_(v86, v91, v90);
      }

      objc_msgSend_addObject_(selfCopy->_wallLists_array, v85, v86);

      if (v87)
      {
        operator delete(v87);
      }

      v83 += 3;
    }

    while (v83 != v84);
    v237 = 0;
    v238 = 0;
    v239 = 0;
    v92 = v215;
    v93 = v215;
  }

  v95 = v92;
  v244 = 0uLL;
  v245 = 0;
  *v240 = 0u;
  v241 = 0u;
  v242 = 0u;
  v223 = 0u;
  v243 = 0u;
  v96 = v95;
  v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(v96, v97, v240, v248, 16);
  if (v100)
  {
    v101 = *v241;
    do
    {
      for (n = 0; n != v100; ++n)
      {
        if (*v241 != v101)
        {
          objc_enumerationMutation(v96);
        }

        v103 = *(v240[1] + n);
        objc_msgSend_quad(v103, v98, v99);
        v234 = v104;
        sub_2621CBA84(&v244, &v234);
        objc_msgSend_quad(v103, v105, v106);
        v234 = v107;
        sub_2621CBA84(&v244, &v234);
      }

      v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(v96, v98, v240, v248, 16);
    }

    while (v100);
    v223 = v244;
  }

  v108 = xmmword_2623A78B0;
  if (v223 != *(&v223 + 1))
  {
    v109 = v223;
    do
    {
      v110 = *v109++;
      v111.i64[0] = v110;
      v111.i64[1] = v110;
      v112.i32[0] = vmovn_s32(vcgtq_f32(v108, v111)).u32[0];
      v112.i32[1] = vmovn_s32(vcgtq_f32(v111, v108)).i32[1];
      v108 = vbslq_s8(vmovl_s16(v112), v111, v108);
    }

    while (v109 != *(&v223 + 1));
  }

  v213 = v108;
  if (v223)
  {
    operator delete(v223);
  }

  v113 = v96;
  if (!objc_msgSend_count(v113, v114, v115))
  {

    v249 = 0u;
    v250 = 0u;
    *v248 = 0u;
    goto LABEL_197;
  }

  v118 = objc_msgSend_count(v113, v116, v117);
  LOBYTE(v248[0]) = 0;
  sub_26220F1D4(v240, v118);
  v121 = 0;
  v122 = 0;
  v212 = vextq_s8(v213, v213, 8uLL).u64[0];
  while (objc_msgSend_count(v113, v119, v120) > v122)
  {
    v124 = objc_msgSend_objectAtIndexedSubscript_(v113, v123, v122);
    __pa = sub_26237922C(v124).n128_u64[0];
    v224 = v125;

    v126 = 0;
    for (ii = 0; ii != 4; ++ii)
    {
      v128 = COERCE_DOUBLE(__PAIR64__(HIDWORD(v212), v224));
      if (ii == 2)
      {
        v128 = COERCE_DOUBLE(__PAIR64__(v213.u32[1], v224));
      }

      v129 = COERCE_DOUBLE(__PAIR64__(HIDWORD(v212), __pa));
      if (ii == 2)
      {
        v129 = COERCE_DOUBLE(__PAIR64__(v213.u32[1], __pa));
      }

      v130 = COERCE_DOUBLE(__PAIR64__(HIDWORD(v224), v212));
      if (!ii)
      {
        v130 = COERCE_DOUBLE(__PAIR64__(HIDWORD(v224), v213.u32[0]));
      }

      v131 = COERCE_DOUBLE(__PAIR64__(HIDWORD(__pa), v212));
      if (!ii)
      {
        v131 = COERCE_DOUBLE(__PAIR64__(HIDWORD(__pa), v213.u32[0]));
      }

      if (ii <= 1)
      {
        v132 = v130;
      }

      else
      {
        v132 = v128;
      }

      if (ii <= 1)
      {
        v133 = v131;
      }

      else
      {
        v133 = v129;
      }

      for (jj = 0; objc_msgSend_count(v113, v119, v120) > jj; ++jj)
      {
        if (v122 != jj && ((*(v240[0] + ((jj >> 3) & 0x1FFFFFFFFFFFFFF8)) >> jj) & 1) == 0)
        {
          v135 = objc_msgSend_objectAtIndexedSubscript_(v113, v119, jj);
          *&v136 = sub_26237922C(v135).n128_u64[0];
          v138 = v137;

          v139 = 0;
          v248[0] = __pa;
          v248[1] = v224;
          *&v249 = v132;
          *(&v249 + 1) = v133;
          while (v139 != 4)
          {
            v140 = &v248[v139 + 1];
            v141 = v248[v139];
            if (v139 == 3)
            {
              v140 = v248;
            }

            ++v139;
            if (sub_262379288(0, v136, v138, *&v141, *v140))
            {
              goto LABEL_131;
            }
          }

          if (sub_2623793EC(*&__pa, *&v224, v132, v133, v136) & 1) != 0 && (sub_2623793EC(*&__pa, *&v224, v132, v133, v138))
          {
            break;
          }
        }
      }

LABEL_131:
      if (objc_msgSend_count(v113, v119, v120) == jj)
      {
        break;
      }

      v126 = ii > 2;
    }

    v142 = v122 >> 6;
    v143 = 1 << v122;
    if (v126)
    {
      *(v240[0] + v142) |= v143;
    }

    else
    {
      *(v240[0] + v142) &= ~v143;
      v144 = objc_msgSend_objectAtIndexedSubscript_(v113, v119, v122);
      objc_msgSend_quad(v144, v145, v146);
      v218 = v147;

      v148 = v121;
      v149 = v121 >> 5;
      if (((v121 >> 5) + 1) >> 59)
      {
        sub_2621CBEB0();
      }

      if (v121 >> 5 != -1)
      {
        if (!(((v121 >> 5) + 1) >> 59))
        {
          operator new();
        }

        sub_2621C6A34();
      }

      v150 = 32 * v149;
      *v150 = __pa;
      *(v150 + 8) = v224;
      *(v150 + 16) = v218;
      *(v150 + 20) = v122;
      *(v150 + 24) = 0;
      v121 = 32 * v149 + 32;
      memcpy(0, 0, v148);
    }

    ++v122;
  }

  if (v240[0])
  {
    operator delete(v240[0]);
  }

  v249 = 0u;
  v250 = 0u;
  *v248 = 0u;
  if (v121)
  {
    v151 = sub_26223B31C(v248, 0);
    MEMORY[0x18] = 1;
    v153 = v250.u64[1];
    if (v250.i64[1] >= (v121 >> 5))
    {
      goto LABEL_187;
    }

    v154 = v121 >> 5;
    v156 = MEMORY[0];
    v155 = MEMORY[8];
    if ((v121 >> 5) <= 1)
    {
      v157 = 1;
    }

    else
    {
      v157 = v121 >> 5;
    }

    while (1)
    {
      v158 = 0;
      LODWORD(v159) = 0;
      v160 = 1;
      v161 = 3.4028e38;
      v162 = 1;
      do
      {
        while (1)
        {
          v163 = v158;
          v164 = (32 * v158);
          if (v164[3].i8[0])
          {
            v165 = v161;
            break;
          }

          v166 = vsub_f32(v156, *v164);
          v167 = sqrtf(vaddv_f32(vmul_f32(v166, v166)));
          if (v167 < v161)
          {
            v162 = 1;
            LODWORD(v159) = v163;
            v160 = 1;
            v161 = v167;
          }

          v168 = v164[1];
          v169 = vsub_f32(v156, v168);
          v170 = sqrtf(vaddv_f32(vmul_f32(v169, v169)));
          if (v170 < v161)
          {
            v162 = 0;
            v160 = 1;
            LODWORD(v159) = v163;
            v161 = v170;
          }

          v171 = vsub_f32(v155, *v164);
          v172 = sqrtf(vaddv_f32(vmul_f32(v171, v171)));
          if (v172 < v161)
          {
            v160 = 0;
            v162 = 1;
            LODWORD(v159) = v163;
            v161 = v172;
          }

          v165 = v161;
          v173 = vsub_f32(v155, v168);
          v161 = sqrtf(vaddv_f32(vmul_f32(v173, v173)));
          if (v161 >= v165)
          {
            break;
          }

          v160 = 0;
          v162 = 0;
          v158 = v163 + 1;
          LODWORD(v159) = v163;
          if (v163 + 1 == v157)
          {
            v159 = v163;
            v179 = 32 * v163;
            *(v179 + 0x18) = 1;
            goto LABEL_170;
          }
        }

        v158 = v163 + 1;
        v161 = v165;
      }

      while (v163 + 1 != v157);
      v159 = v159;
      v179 = 32 * v159;
      *(v179 + 0x18) = 1;
      if ((v160 & 1) == 0)
      {
        if ((v162 & 1) == 0)
        {
LABEL_170:
          v180 = *v179;
          *v179 = *(v179 + 8);
          *(v179 + 8) = v180;
        }

        v181 = 32 * v159;
        v151 = sub_26223B31C(v248, 32 * v159);
        v155 = *(v181 + 8);
        v153 = v250.u64[1];
        goto LABEL_186;
      }

      if (v162)
      {
        v174 = *v179;
        *(32 * v159) = *(32 * v159 + 8);
        *(32 * v159 + 8) = v174;
      }

      v175 = v250.i64[0];
      v176 = v248[1];
      v177 = v249;
      if (!v250.i64[0])
      {
        v178 = 16 * (v249 - v248[1]) - 1;
        if (v249 == v248[1])
        {
          v178 = 0;
        }

        if (v178 - v250.i64[1] < 0x80)
        {
          if (v249 - v248[1] < *(&v249 + 1) - v248[0])
          {
            if (v248[1] != v248[0])
            {
              operator new();
            }

            operator new();
          }

          if (*(&v249 + 1) == v248[0])
          {
            v182 = 1;
          }

          else
          {
            v182 = (*(&v249 + 1) - v248[0]) >> 2;
          }

          *&v242 = v248;
          sub_26223B6E4(v182);
        }

        v250.i64[0] = 128;
        v240[0] = *(v249 - 8);
        *&v249 = v249 - 8;
        sub_26223B5DC(v248, v240);
        v175 = v250.i64[0];
        v176 = v248[1];
        v177 = v249;
      }

      v183 = &v176[8 * (v175 >> 7)];
      v184 = *v183 + 32 * (v175 & 0x7F);
      if (v177 == v176)
      {
        v185 = 0;
      }

      else
      {
        v185 = v184;
      }

      if (v185 == *v183)
      {
        v185 = *(v183 - 1) + 4096;
      }

      v186 = *(v179 + 16);
      *(v185 - 32) = *v179;
      *(v185 - 16) = v186;
      v151 = vaddq_s64(v250, xmmword_2623A7860);
      v250 = v151;
      v156 = *v179;
      v153 = v151.n128_u64[1];
LABEL_186:
      if (v153 >= v154)
      {
LABEL_187:
        if (v153)
        {
          v187 = vdup_n_s32(0x3727C5ACu);
          do
          {
            v188 = *(v248[1] + ((v250.i64[0] >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v250.i8[0] & 0x7F);
            v152.n128_u64[0] = *v188;
            v151.n128_u64[0] = *(v188 + 8);
            v189 = *(v188 + 16);
            v250.i64[1] = v153 - 1;
            ++v250.i64[0];
            *__pb = v151;
            v225 = v189;
            if (v250.i64[0] >= 0x100uLL)
            {
              v217 = v152;
              operator delete(*v248[1]);
              v152 = v217;
              v189 = v225;
              v248[1] = v248[1] + 8;
              v250.i64[0] -= 128;
            }

            if (v238 == v237 || (v190 = vcgt_f32(v187, vabd_f32(v152.n128_u64[0], v238[-2])), (vand_s8(v190, vdup_lane_s32(v190, 1)).u8[0] & 1) == 0))
            {
              v152.n128_u32[2] = v189;
              *v240 = v152;
              sub_2621D9F60(&v237, v240);
              v189 = v225;
            }

            v191 = *__pb;
            DWORD2(v191) = v189;
            *v240 = v191;
            sub_2621D9F60(&v237, v240);
            v153 = v250.u64[1];
          }

          while (v250.i64[1]);
        }

        break;
      }
    }
  }

LABEL_197:
  v193 = v237;
  v192 = v238;
  if ((v238 - v237) >= 0x11)
  {
    v194 = vcgt_f32(vdup_n_s32(0x3727C5ACu), vabd_f32(v238[-2], *v237));
    if (vand_s8(v194, vdup_lane_s32(v194, 1)).u8[0])
    {
      v192 = v238 - 2;
      v238 -= 2;
    }
  }

  sub_26223B250(v248);

  if (v193 != v192)
  {
    v197 = v193;
    do
    {
      outerPointList_array = selfCopy->_outerPointList_array;
      v226 = *v197->f32;
      v199 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v195, v196);
      v246[0] = v199;
      HIDWORD(v200) = DWORD1(v226);
      LODWORD(v200) = DWORD1(v226);
      v203 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v201, v202, v200);
      v246[1] = v203;
      v206 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v204, v205, COERCE_DOUBLE(__PAIR64__(DWORD1(v226), DWORD2(v226))));
      v246[2] = v206;
      v208 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v207, v246, 3);
      objc_msgSend_addObject_(outerPointList_array, v209, v208);

      v197 += 2;
    }

    while (v197 != v192);
  }

  if (v193)
  {
    v238 = v193;
    operator delete(v193);
  }

LABEL_205:
  v248[0] = &v227;
  sub_2621E1D40(v248);
  v248[0] = &v230;
  sub_2621E1CB0(v248);

  v210 = *MEMORY[0x277D85DE8];
}

- (RSPointLists)init
{
  v10.receiver = self;
  v10.super_class = RSPointLists;
  v2 = [(RSPointLists *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    pointLists_array = v2->_pointLists_array;
    v2->_pointLists_array = v3;

    v5 = objc_opt_new();
    wallLists_array = v2->_wallLists_array;
    v2->_wallLists_array = v5;

    v7 = objc_opt_new();
    outerPointList_array = v2->_outerPointList_array;
    v2->_outerPointList_array = v7;
  }

  return v2;
}

@end