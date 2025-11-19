void sub_25FC18458(_Unwind_Exception *exception_object)
{
  if (*(v1 - 137) < 0)
  {
    operator delete(*(v1 - 160));
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *arb::atok(_BYTE *this, const char *a2)
{
  v2 = *this;
  if (*this)
  {
    if ((v2 - 33) >= 0xFFFFFFE0)
    {
      do
      {
LABEL_3:
        v3 = *++this;
        v2 = v3;
      }

      while ((v3 - 33) > 0xFFFFFFDF);
    }

LABEL_4:
    if (v2 == 35)
    {
      ++this;
      while (1)
      {
        v2 = *this;
        if (!*this)
        {
          break;
        }

        v4 = *(this++ - 1);
        if (v4 == 10)
        {
          --this;
          if ((v2 - 33) >= 0xFFFFFFE0)
          {
            goto LABEL_3;
          }

          goto LABEL_4;
        }
      }
    }
  }

  return this;
}

unsigned __int8 *arb::obj_write(int a1, uint64_t a2, const HGLimits *a3, char *__s1)
{
  v17[1] = 0;
  __src = 0;
  __s1a = __s1;
  v18 = 0;
  v6 = *__s1;
  if (*__s1)
  {
    if ((v6 - 33) >= 0xFFFFFFE0)
    {
      do
      {
LABEL_3:
        v7 = *++__s1;
        v6 = v7;
      }

      while ((v7 - 33) > 0xFFFFFFDF);
    }

LABEL_4:
    if (v6 == 35)
    {
      ++__s1;
      while (1)
      {
        v6 = *__s1;
        if (!*__s1)
        {
          break;
        }

        v8 = *(__s1++ - 1);
        if (v8 == 10)
        {
          --__s1;
          if ((v6 - 33) >= 0xFFFFFFE0)
          {
            goto LABEL_3;
          }

          goto LABEL_4;
        }
      }
    }
  }

  __s1a = __s1;
  if (*__s1)
  {
    result = header(__s1, &v17[1]);
    __s1a = result;
    if (result)
    {
      arb::begin(a2, HGString::_distill(char const*,unsigned int)::head, a3, v10);
      v12 = *(a2 + 8);
      v11 = *(a2 + 16);
      v13 = v12 + 4;
      if (v11)
      {
        if (v13 >= *v11)
        {
          v14 = malloc_type_realloc(*(v11 + 16), (v12 + 259) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
          v15 = *(a2 + 16);
          v15[2] = v14;
          *v15 = (v12 + 259) & 0xFFFFFFFFFFFFFF00;
          *a2 = v14;
        }
      }

      else
      {
        str_alloc(a2, v13);
      }

      v16 = *a2;
      *(a2 + 8) += 4;
      *&v16[v12] = 170140451;
      operator new[]();
    }
  }

  return result;
}

uint64_t arb::end(string_t *a1, uint64_t a2, unsigned int *a3, double a4, double a5, uint32x4_t a6)
{
  v10 = a1[1];
  v9 = a1[2];
  v11 = (v10 + 4);
  if (v9)
  {
    if (v11 >= *v9)
    {
      v12 = malloc_type_realloc(*(v9 + 2), (v10 + 259) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
      v13 = a1[2];
      *(v13 + 2) = v12;
      *v13 = (v10 + 259) & 0xFFFFFFFFFFFFFF00;
      *a1 = v12;
    }
  }

  else
  {
    str_alloc(a1, v11);
  }

  v14 = *a1;
  a1[1] += 4;
  *&v10[v14] = 172248645;
  v16 = a1[1];
  v15 = a1[2];
  v17 = (v16 + 6);
  if (v15)
  {
    if (v17 >= *v15)
    {
      v18 = malloc_type_realloc(*(v15 + 2), (v16 + 261) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
      v19 = a1[2];
      *(v19 + 2) = v18;
      *v19 = (v16 + 261) & 0xFFFFFFFFFFFFFF00;
      *a1 = v18;
    }
  }

  else
  {
    str_alloc(a1, v17);
  }

  v20 = *a1;
  a1[1] += 6;
  v21 = &v16[v20];
  *(v21 + 2) = 15669;
  *v21 = 1145905955;
  v22 = *a3;
  v24 = a1[1];
  v23 = a1[2];
  v25 = (v24 + 8);
  if (v23)
  {
    if (v25 >= *v23)
    {
      v26 = malloc_type_realloc(*(v23 + 2), (v24 + 263) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
      v27 = a1[2];
      *(v27 + 2) = v26;
      *v27 = (v24 + 263) & 0xFFFFFFFFFFFFFF00;
      *a1 = v26;
    }
  }

  else
  {
    str_alloc(a1, v25);
  }

  v28 = vdup_n_s32(v22);
  v29 = vshl_u32(v28, 0xFFFFFFF0FFFFFFECLL);
  *v30.i8 = vshl_u32(v28, 0xFFFFFFF8FFFFFFF4);
  a6.i32[0] = v22;
  v31 = vshrq_n_u32(a6, 0x1CuLL).u32[0];
  a6.i32[1] = HIBYTE(v22);
  a6.u64[1] = v29;
  v30.i32[2] = v22 >> 4;
  v30.i32[3] = v22;
  v32.i64[0] = 0xF0000000FLL;
  v32.i64[1] = 0xF0000000FLL;
  v33 = vandq_s8(a6, v32);
  v34 = vandq_s8(v30, v32);
  v35 = v33;
  v35.i32[0] = v31;
  v33.i32[0] = v22;
  v36.i64[0] = 0xA0000000ALL;
  v36.i64[1] = 0xA0000000ALL;
  v37 = vuzp1q_s16(vcgtq_u32(xmmword_260391100, v33), vcgtq_u32(v36, v34));
  *v37.i8 = vmovn_s16(v37);
  *v34.i8 = vmovn_s16(vuzp1q_s16(v35, v34));
  *&v24[*a1] = vbsl_s8(*v37.i8, vorr_s8(*v34.i8, 0x3030303030303030), vadd_s8(*v34.i8, 0x5757575757575757));
  v39 = a1[1];
  v38 = a1[2];
  v40 = (v39 + 8);
  a1[1] = v39 + 8;
  v41 = (v39 + 9);
  if (v38)
  {
    if (v41 >= *v38)
    {
      v42 = malloc_type_realloc(*(v38 + 2), (v40 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
      v43 = a1[2];
      *(v43 + 2) = v42;
      *v43 = (v40 & 0xFFFFFFFFFFFFFF00) + 256;
      *a1 = v42;
    }
  }

  else
  {
    str_alloc(a1, v41);
  }

  v44 = *a1;
  ++a1[1];
  v44[v40] = 58;
  v45 = a3[1];
  v47 = a1[1];
  v46 = a1[2];
  v48 = (v47 + 8);
  if (v46)
  {
    if (v48 >= *v46)
    {
      v49 = malloc_type_realloc(*(v46 + 2), (v47 + 263) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
      v50 = a1[2];
      *(v50 + 2) = v49;
      *v50 = (v47 + 263) & 0xFFFFFFFFFFFFFF00;
      *a1 = v49;
    }
  }

  else
  {
    str_alloc(a1, v48);
  }

  v51 = vdup_n_s32(v45);
  v52 = vshl_u32(v51, 0xFFFFFFF0FFFFFFECLL);
  *v53.i8 = vshl_u32(v51, 0xFFFFFFF8FFFFFFF4);
  v37.i32[0] = v45;
  v54 = vshrq_n_u32(v37, 0x1CuLL).u32[0];
  v37.i32[1] = HIBYTE(v45);
  v37.u64[1] = v52;
  v53.i32[2] = v45 >> 4;
  v53.i32[3] = v45;
  v55.i64[0] = 0xF0000000FLL;
  v55.i64[1] = 0xF0000000FLL;
  v56 = vandq_s8(v37, v55);
  v57 = vandq_s8(v53, v55);
  v58 = v56;
  v58.i32[0] = v54;
  v56.i32[0] = v45;
  v59.i64[0] = 0xA0000000ALL;
  v59.i64[1] = 0xA0000000ALL;
  v60 = vuzp1q_s16(vcgtq_u32(xmmword_260391100, v56), vcgtq_u32(v59, v57));
  *v60.i8 = vmovn_s16(v60);
  *v57.i8 = vmovn_s16(vuzp1q_s16(v58, v57));
  *&v47[*a1] = vbsl_s8(*v60.i8, vorr_s8(*v57.i8, 0x3030303030303030), vadd_s8(*v57.i8, 0x5757575757575757));
  v62 = a1[1];
  v61 = a1[2];
  v63 = (v62 + 8);
  a1[1] = v62 + 8;
  v64 = (v62 + 9);
  if (v61)
  {
    if (v64 >= *v61)
    {
      v65 = malloc_type_realloc(*(v61 + 2), (v63 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
      v66 = a1[2];
      *(v66 + 2) = v65;
      *v66 = (v63 & 0xFFFFFFFFFFFFFF00) + 256;
      *a1 = v65;
    }
  }

  else
  {
    str_alloc(a1, v64);
  }

  v67 = *a1;
  ++a1[1];
  v67[v63] = 58;
  v68 = a3[2];
  v70 = a1[1];
  v69 = a1[2];
  v71 = (v70 + 8);
  if (v69)
  {
    if (v71 >= *v69)
    {
      v72 = malloc_type_realloc(*(v69 + 2), (v70 + 263) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
      v73 = a1[2];
      *(v73 + 2) = v72;
      *v73 = (v70 + 263) & 0xFFFFFFFFFFFFFF00;
      *a1 = v72;
    }
  }

  else
  {
    str_alloc(a1, v71);
  }

  v74 = vdup_n_s32(v68);
  v75 = vshl_u32(v74, 0xFFFFFFF0FFFFFFECLL);
  *v76.i8 = vshl_u32(v74, 0xFFFFFFF8FFFFFFF4);
  v60.i32[0] = v68;
  v77 = vshrq_n_u32(v60, 0x1CuLL).u32[0];
  v60.i32[1] = HIBYTE(v68);
  v60.u64[1] = v75;
  v76.i32[2] = v68 >> 4;
  v76.i32[3] = v68;
  v78.i64[0] = 0xF0000000FLL;
  v78.i64[1] = 0xF0000000FLL;
  v79 = vandq_s8(v60, v78);
  v80 = vandq_s8(v76, v78);
  v81 = v79;
  v81.i32[0] = v77;
  v79.i32[0] = v68;
  v82.i64[0] = 0xA0000000ALL;
  v82.i64[1] = 0xA0000000ALL;
  v83 = vuzp1q_s16(vcgtq_u32(xmmword_260391100, v79), vcgtq_u32(v82, v80));
  *v83.i8 = vmovn_s16(v83);
  *v80.i8 = vmovn_s16(vuzp1q_s16(v81, v80));
  *&v70[*a1] = vbsl_s8(*v83.i8, vorr_s8(*v80.i8, 0x3030303030303030), vadd_s8(*v80.i8, 0x5757575757575757));
  v85 = a1[1];
  v84 = a1[2];
  v86 = (v85 + 8);
  a1[1] = v85 + 8;
  v87 = (v85 + 9);
  if (v84)
  {
    if (v87 >= *v84)
    {
      v88 = malloc_type_realloc(*(v84 + 2), (v86 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
      v89 = a1[2];
      *(v89 + 2) = v88;
      *v89 = (v86 & 0xFFFFFFFFFFFFFF00) + 256;
      *a1 = v88;
    }
  }

  else
  {
    str_alloc(a1, v87);
  }

  v90 = *a1;
  ++a1[1];
  v90[v86] = 58;
  v91 = a3[3];
  v93 = a1[1];
  v92 = a1[2];
  v94 = (v93 + 8);
  if (v92)
  {
    if (v94 >= *v92)
    {
      v95 = malloc_type_realloc(*(v92 + 2), (v93 + 263) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
      v96 = a1[2];
      *(v96 + 2) = v95;
      *v96 = (v93 + 263) & 0xFFFFFFFFFFFFFF00;
      *a1 = v95;
    }
  }

  else
  {
    str_alloc(a1, v94);
  }

  v97 = vdup_n_s32(v91);
  v98 = vshl_u32(v97, 0xFFFFFFF0FFFFFFECLL);
  *v99.i8 = vshl_u32(v97, 0xFFFFFFF8FFFFFFF4);
  v83.i32[0] = v91;
  v100 = vshrq_n_u32(v83, 0x1CuLL).u32[0];
  v83.i32[1] = HIBYTE(v91);
  v83.u64[1] = v98;
  v99.i32[2] = v91 >> 4;
  v99.i32[3] = v91;
  v101.i64[0] = 0xF0000000FLL;
  v101.i64[1] = 0xF0000000FLL;
  v102 = vandq_s8(v83, v101);
  v103 = vandq_s8(v99, v101);
  v104 = v102;
  v104.i32[0] = v100;
  v102.i32[0] = v91;
  v105.i64[0] = 0xA0000000ALL;
  v105.i64[1] = 0xA0000000ALL;
  v106 = vuzp1q_s16(vcgtq_u32(xmmword_260391100, v102), vcgtq_u32(v105, v103));
  *v106.i8 = vmovn_s16(v106);
  *v103.i8 = vmovn_s16(vuzp1q_s16(v104, v103));
  *&v93[*a1] = vbsl_s8(*v106.i8, vorr_s8(*v103.i8, 0x3030303030303030), vadd_s8(*v103.i8, 0x5757575757575757));
  v108 = a1[1];
  v107 = a1[2];
  v109 = (v108 + 8);
  a1[1] = v108 + 8;
  v110 = (v108 + 9);
  if (v107)
  {
    if (v110 >= *v107)
    {
      v111 = malloc_type_realloc(*(v107 + 2), (v109 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
      v112 = a1[2];
      *(v112 + 2) = v111;
      *v112 = (v109 & 0xFFFFFFFFFFFFFF00) + 256;
      *a1 = v111;
    }
  }

  else
  {
    str_alloc(a1, v110);
  }

  v113 = *a1;
  ++a1[1];
  v113[v109] = 10;
  v115 = a1[1];
  v114 = a1[2];
  v116 = (v115 + 6);
  if ((*a2 & 0xFE00u) <= 0x5FF)
  {
    if (v114)
    {
      if (v116 >= *v114)
      {
        v119 = malloc_type_realloc(*(v114 + 2), (v115 + 261) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
        v120 = a1[2];
        *(v120 + 2) = v119;
        *v120 = (v115 + 261) & 0xFFFFFFFFFFFFFF00;
        *a1 = v119;
      }
    }

    else
    {
      str_alloc(a1, v116);
    }

    v129 = *a1;
    a1[1] += 6;
    v130 = &v115[v129];
    *(v130 + 2) = 15687;
    *v130 = 1230185251;
    v123 = *(a2 + 4);
    v125 = a1[1];
    v124 = a1[2];
    v126 = (v125 + 8);
    if (v124)
    {
      goto LABEL_50;
    }

LABEL_54:
    str_alloc(a1, v126);
    goto LABEL_55;
  }

  if (v114)
  {
    if (v116 >= *v114)
    {
      v117 = malloc_type_realloc(*(v114 + 2), (v115 + 261) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
      v118 = a1[2];
      *(v118 + 2) = v117;
      *v118 = (v115 + 261) & 0xFFFFFFFFFFFFFF00;
      *a1 = v117;
    }
  }

  else
  {
    str_alloc(a1, v116);
  }

  v121 = *a1;
  a1[1] += 6;
  v122 = &v115[v121];
  *(v122 + 2) = 15687;
  *v122 = 1230188335;
  v123 = *(a2 + 4);
  v125 = a1[1];
  v124 = a1[2];
  v126 = (v125 + 8);
  if (!v124)
  {
    goto LABEL_54;
  }

LABEL_50:
  if (v126 >= *v124)
  {
    v127 = malloc_type_realloc(*(v124 + 2), (v125 + 263) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
    v128 = a1[2];
    *(v128 + 2) = v127;
    *v128 = (v125 + 263) & 0xFFFFFFFFFFFFFF00;
    *a1 = v127;
  }

LABEL_55:
  v131 = vdup_n_s32(v123);
  v132 = vshl_u32(v131, 0xFFFFFFF0FFFFFFECLL);
  *v133.i8 = vshl_u32(v131, 0xFFFFFFF8FFFFFFF4);
  v106.i32[0] = v123;
  v134 = vshrq_n_u32(v106, 0x1CuLL).u32[0];
  v106.i32[1] = HIBYTE(v123);
  v106.u64[1] = v132;
  v133.i32[2] = v123 >> 4;
  v133.i32[3] = v123;
  v135.i64[0] = 0xF0000000FLL;
  v135.i64[1] = 0xF0000000FLL;
  v136 = vandq_s8(v106, v135);
  v137 = vandq_s8(v133, v135);
  v138 = v136;
  v138.i32[0] = v134;
  v136.i32[0] = v123;
  v139.i64[0] = 0xA0000000ALL;
  v139.i64[1] = 0xA0000000ALL;
  v140 = vuzp1q_s16(vcgtq_u32(xmmword_260391100, v136), vcgtq_u32(v139, v137));
  *v140.i8 = vmovn_s16(v140);
  *v137.i8 = vmovn_s16(vuzp1q_s16(v138, v137));
  *&v125[*a1] = vbsl_s8(*v140.i8, vorr_s8(*v137.i8, 0x3030303030303030), vadd_s8(*v137.i8, 0x5757575757575757));
  v142 = a1[1];
  v141 = a1[2];
  v143 = (v142 + 8);
  a1[1] = v142 + 8;
  v144 = (v142 + 9);
  if (v141)
  {
    if (v144 >= *v141)
    {
      v145 = malloc_type_realloc(*(v141 + 2), (v143 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
      v146 = a1[2];
      *(v146 + 2) = v145;
      *v146 = (v143 & 0xFFFFFFFFFFFFFF00) + 256;
      *a1 = v145;
    }
  }

  else
  {
    str_alloc(a1, v144);
  }

  v147 = *a1;
  ++a1[1];
  v147[v143] = 58;
  v148 = *(a2 + 8);
  v150 = a1[1];
  v149 = a1[2];
  v151 = (v150 + 8);
  if (v149)
  {
    if (v151 >= *v149)
    {
      v152 = malloc_type_realloc(*(v149 + 2), (v150 + 263) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
      v153 = a1[2];
      *(v153 + 2) = v152;
      *v153 = (v150 + 263) & 0xFFFFFFFFFFFFFF00;
      *a1 = v152;
    }
  }

  else
  {
    str_alloc(a1, v151);
  }

  v154 = vdup_n_s32(v148);
  v155 = vshl_u32(v154, 0xFFFFFFF0FFFFFFECLL);
  *v156.i8 = vshl_u32(v154, 0xFFFFFFF8FFFFFFF4);
  v140.i32[0] = v148;
  v157 = vshrq_n_u32(v140, 0x1CuLL).u32[0];
  v140.i32[1] = HIBYTE(v148);
  v140.u64[1] = v155;
  v156.i32[2] = v148 >> 4;
  v156.i32[3] = v148;
  v158.i64[0] = 0xF0000000FLL;
  v158.i64[1] = 0xF0000000FLL;
  v159 = vandq_s8(v140, v158);
  v160 = vandq_s8(v156, v158);
  v161 = v159;
  v161.i32[0] = v157;
  v159.i32[0] = v148;
  v162.i64[0] = 0xA0000000ALL;
  v162.i64[1] = 0xA0000000ALL;
  v163 = vuzp1q_s16(vcgtq_u32(xmmword_260391100, v159), vcgtq_u32(v162, v160));
  *v163.i8 = vmovn_s16(v163);
  *v160.i8 = vmovn_s16(vuzp1q_s16(v161, v160));
  *&v150[*a1] = vbsl_s8(*v163.i8, vorr_s8(*v160.i8, 0x3030303030303030), vadd_s8(*v160.i8, 0x5757575757575757));
  v165 = a1[1];
  v164 = a1[2];
  v166 = (v165 + 8);
  a1[1] = v165 + 8;
  v167 = (v165 + 9);
  if (v164)
  {
    if (v167 >= *v164)
    {
      v168 = malloc_type_realloc(*(v164 + 2), (v166 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
      v169 = a1[2];
      *(v169 + 2) = v168;
      *v169 = (v166 & 0xFFFFFFFFFFFFFF00) + 256;
      *a1 = v168;
    }
  }

  else
  {
    str_alloc(a1, v167);
  }

  v170 = *a1;
  ++a1[1];
  v170[v166] = 58;
  v171 = *(a2 + 12);
  v173 = a1[1];
  v172 = a1[2];
  v174 = (v173 + 8);
  if (v172)
  {
    if (v174 >= *v172)
    {
      v175 = malloc_type_realloc(*(v172 + 2), (v173 + 263) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
      v176 = a1[2];
      *(v176 + 2) = v175;
      *v176 = (v173 + 263) & 0xFFFFFFFFFFFFFF00;
      *a1 = v175;
    }
  }

  else
  {
    str_alloc(a1, v174);
  }

  v177 = vdup_n_s32(v171);
  v178 = vshl_u32(v177, 0xFFFFFFF0FFFFFFECLL);
  *v179.i8 = vshl_u32(v177, 0xFFFFFFF8FFFFFFF4);
  v163.i32[0] = v171;
  v180 = vshrq_n_u32(v163, 0x1CuLL).u32[0];
  v163.i32[1] = HIBYTE(v171);
  v163.u64[1] = v178;
  v179.i32[2] = v171 >> 4;
  v179.i32[3] = v171;
  v181.i64[0] = 0xF0000000FLL;
  v181.i64[1] = 0xF0000000FLL;
  v182 = vandq_s8(v163, v181);
  v183 = vandq_s8(v179, v181);
  v184 = v182;
  v184.i32[0] = v180;
  v182.i32[0] = v171;
  v185.i64[0] = 0xA0000000ALL;
  v185.i64[1] = 0xA0000000ALL;
  v186 = vuzp1q_s16(vcgtq_u32(xmmword_260391100, v182), vcgtq_u32(v185, v183));
  *v186.i8 = vmovn_s16(v186);
  *v183.i8 = vmovn_s16(vuzp1q_s16(v184, v183));
  *&v173[*a1] = vbsl_s8(*v186.i8, vorr_s8(*v183.i8, 0x3030303030303030), vadd_s8(*v183.i8, 0x5757575757575757));
  v188 = a1[1];
  v187 = a1[2];
  v189 = (v188 + 8);
  a1[1] = v188 + 8;
  v190 = (v188 + 9);
  if (v187)
  {
    if (v190 >= *v187)
    {
      v191 = malloc_type_realloc(*(v187 + 2), (v189 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
      v192 = a1[2];
      *(v192 + 2) = v191;
      *v192 = (v189 & 0xFFFFFFFFFFFFFF00) + 256;
      *a1 = v191;
    }
  }

  else
  {
    str_alloc(a1, v190);
  }

  v193 = *a1;
  ++a1[1];
  v193[v189] = 58;
  v194 = *(a2 + 16);
  v196 = a1[1];
  v195 = a1[2];
  v197 = (v196 + 8);
  if (v195)
  {
    if (v197 >= *v195)
    {
      v198 = malloc_type_realloc(*(v195 + 2), (v196 + 263) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
      v199 = a1[2];
      *(v199 + 2) = v198;
      *v199 = (v196 + 263) & 0xFFFFFFFFFFFFFF00;
      *a1 = v198;
    }
  }

  else
  {
    str_alloc(a1, v197);
  }

  v200 = vdup_n_s32(v194);
  v201 = vshl_u32(v200, 0xFFFFFFF0FFFFFFECLL);
  *v202.i8 = vshl_u32(v200, 0xFFFFFFF8FFFFFFF4);
  v186.i32[0] = v194;
  v203 = vshrq_n_u32(v186, 0x1CuLL).u32[0];
  v186.i32[1] = HIBYTE(v194);
  v186.u64[1] = v201;
  v202.i32[2] = v194 >> 4;
  v202.i32[3] = v194;
  v204.i64[0] = 0xF0000000FLL;
  v204.i64[1] = 0xF0000000FLL;
  v205 = vandq_s8(v186, v204);
  v206 = vandq_s8(v202, v204);
  v207 = v205;
  v207.i32[0] = v203;
  v205.i32[0] = v194;
  v208.i64[0] = 0xA0000000ALL;
  v208.i64[1] = 0xA0000000ALL;
  v209 = vuzp1q_s16(vcgtq_u32(xmmword_260391100, v205), vcgtq_u32(v208, v206));
  *v209.i8 = vmovn_s16(v209);
  *v206.i8 = vmovn_s16(vuzp1q_s16(v207, v206));
  v210 = vorr_s8(*v206.i8, 0x3030303030303030);
  v211 = COERCE_DOUBLE(vbsl_s8(*v209.i8, v210, vadd_s8(*v206.i8, 0x5757575757575757)));
  *&v196[*a1] = v211;
  v213 = a1[1];
  v212 = a1[2];
  v214 = (v213 + 8);
  a1[1] = v213 + 8;
  v215 = (v213 + 9);
  if (v212)
  {
    if (v215 >= *v212)
    {
      v216 = malloc_type_realloc(*(v212 + 2), (v214 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
      v217 = a1[2];
      *(v217 + 2) = v216;
      *v217 = (v214 & 0xFFFFFFFFFFFFFF00) + 256;
      *a1 = v216;
    }
  }

  else
  {
    str_alloc(a1, v215);
  }

  v218 = *a1;
  ++a1[1];
  v218[v214] = 58;
  v219 = *(a2 + 20);
  v221 = a1[1];
  v220 = a1[2];
  v222 = (v221 + 4);
  if (v220)
  {
    if (v222 >= *v220)
    {
      v223 = malloc_type_realloc(*(v220 + 2), (v221 + 259) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
      v224 = a1[2];
      *(v224 + 2) = v223;
      *v224 = (v221 + 259) & 0xFFFFFFFFFFFFFF00;
      *a1 = v223;
    }
  }

  else
  {
    str_alloc(a1, v222);
  }

  v225 = &v221[*a1];
  v226 = (v219 >> 12) + 87;
  if (v219 < 0xA000)
  {
    LOBYTE(v226) = (v219 >> 12) | 0x30;
  }

  *v225 = v226;
  v227 = (v219 >> 8) & 0xF;
  if (v227 >= 0xA)
  {
    v228 = v227 + 87;
  }

  else
  {
    v228 = v227 | 0x30;
  }

  v225[1] = v228;
  v229 = v219 >> 4;
  if (v229 >= 0xA)
  {
    v230 = v229 + 87;
  }

  else
  {
    v230 = (v219 >> 4) | 0x30;
  }

  v225[2] = v230;
  if ((v219 & 0xF) >= 0xA)
  {
    v231 = (v219 & 0xF) + 87;
  }

  else
  {
    v231 = v219 & 0xF | 0x30;
  }

  v225[3] = v231;
  v233 = a1[1];
  v232 = a1[2];
  v234 = (v233 + 4);
  a1[1] = v233 + 4;
  v235 = (v233 + 5);
  if (v232)
  {
    if (v235 >= *v232)
    {
      v236 = malloc_type_realloc(*(v232 + 2), (v234 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
      v237 = a1[2];
      *(v237 + 2) = v236;
      *v237 = (v234 & 0xFFFFFFFFFFFFFF00) + 256;
      *a1 = v236;
    }
  }

  else
  {
    str_alloc(a1, v235);
  }

  v238 = *a1;
  ++a1[1];
  v238[v234] = 58;
  v239 = *(a2 + 22);
  v241 = a1[1];
  v240 = a1[2];
  v242 = (v241 + 4);
  if (v240)
  {
    if (v242 >= *v240)
    {
      v243 = malloc_type_realloc(*(v240 + 2), (v241 + 259) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
      v244 = a1[2];
      *(v244 + 2) = v243;
      *v244 = (v241 + 259) & 0xFFFFFFFFFFFFFF00;
      *a1 = v243;
    }
  }

  else
  {
    str_alloc(a1, v242);
  }

  v245 = &v241[*a1];
  v246 = (v239 >> 12) + 87;
  if (v239 < 0xA000)
  {
    LOBYTE(v246) = (v239 >> 12) | 0x30;
  }

  *v245 = v246;
  v247 = (v239 >> 8) & 0xF;
  if (v247 >= 0xA)
  {
    v248 = v247 + 87;
  }

  else
  {
    v248 = v247 | 0x30;
  }

  v245[1] = v248;
  v249 = v239 >> 4;
  if (v249 >= 0xA)
  {
    v250 = v249 + 87;
  }

  else
  {
    v250 = (v239 >> 4) | 0x30;
  }

  v245[2] = v250;
  if ((v239 & 0xF) >= 0xA)
  {
    v251 = (v239 & 0xF) + 87;
  }

  else
  {
    v251 = v239 & 0xF | 0x30;
  }

  v245[3] = v251;
  v253 = a1[1];
  v252 = a1[2];
  v254 = (v253 + 4);
  a1[1] = v253 + 4;
  v255 = (v253 + 5);
  if (v252)
  {
    if (v255 >= *v252)
    {
      v256 = malloc_type_realloc(*(v252 + 2), (v254 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
      v257 = a1[2];
      *(v257 + 2) = v256;
      *v257 = (v254 & 0xFFFFFFFFFFFFFF00) + 256;
      *a1 = v256;
    }
  }

  else
  {
    str_alloc(a1, v255);
  }

  v258 = *a1;
  ++a1[1];
  v258[v254] = 58;
  v259 = *(a2 + 24);
  v261 = a1[1];
  v260 = a1[2];
  v262 = (v261 + 4);
  if (v260)
  {
    if (v262 >= *v260)
    {
      v263 = malloc_type_realloc(*(v260 + 2), (v261 + 259) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
      v264 = a1[2];
      *(v264 + 2) = v263;
      *v264 = (v261 + 259) & 0xFFFFFFFFFFFFFF00;
      *a1 = v263;
    }
  }

  else
  {
    str_alloc(a1, v262);
  }

  v265 = &v261[*a1];
  v266 = (v259 >> 12) + 87;
  if (v259 < 0xA000)
  {
    LOBYTE(v266) = (v259 >> 12) | 0x30;
  }

  *v265 = v266;
  v267 = (v259 >> 8) & 0xF;
  if (v267 >= 0xA)
  {
    v268 = v267 + 87;
  }

  else
  {
    v268 = v267 | 0x30;
  }

  v265[1] = v268;
  v269 = v259 >> 4;
  if (v269 >= 0xA)
  {
    v270 = v269 + 87;
  }

  else
  {
    v270 = (v259 >> 4) | 0x30;
  }

  v265[2] = v270;
  if ((v259 & 0xF) >= 0xA)
  {
    v271 = (v259 & 0xF) + 87;
  }

  else
  {
    v271 = v259 & 0xF | 0x30;
  }

  v265[3] = v271;
  v273 = a1[1];
  v272 = a1[2];
  v274 = (v273 + 4);
  a1[1] = v273 + 4;
  v275 = (v273 + 5);
  if (v272)
  {
    if (v275 >= *v272)
    {
      v276 = malloc_type_realloc(*(v272 + 2), (v274 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
      v277 = a1[2];
      *(v277 + 2) = v276;
      *v277 = (v274 & 0xFFFFFFFFFFFFFF00) + 256;
      *a1 = v276;
    }
  }

  else
  {
    str_alloc(a1, v275);
  }

  v278 = *a1;
  ++a1[1];
  v278[v274] = 58;
  v279 = *(a2 + 26);
  v281 = a1[1];
  v280 = a1[2];
  v282 = (v281 + 2);
  if (v280)
  {
    if (v282 >= *v280)
    {
      v283 = malloc_type_realloc(*(v280 + 2), (v281 + 257) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
      v284 = a1[2];
      *(v284 + 2) = v283;
      *v284 = (v281 + 257) & 0xFFFFFFFFFFFFFF00;
      *a1 = v283;
    }
  }

  else
  {
    str_alloc(a1, v282);
  }

  v285 = &v281[*a1];
  v286 = (v279 >> 4) + 87;
  if (v279 < 0xA0)
  {
    LOBYTE(v286) = (v279 >> 4) | 0x30;
  }

  *v285 = v286;
  if ((v279 & 0xF) >= 0xA)
  {
    v287 = (v279 & 0xF) + 87;
  }

  else
  {
    v287 = v279 & 0xF | 0x30;
  }

  v285[1] = v287;
  v288 = a1[1];
  v289 = a1[2];
  v290 = v288 + 2;
  a1[1] = v288 + 2;
  v291 = *(a2 + 27);
  v292 = (v288 + 4);
  if (v289)
  {
    if (v292 >= *v289)
    {
      v293 = (v288 + 259) & 0xFFFFFFFFFFFFFF00;
      v294 = malloc_type_realloc(*(v289 + 2), v293, 0x100004077774924uLL);
      v295 = a1[2];
      *(v295 + 2) = v294;
      *v295 = v293;
      *a1 = v294;
    }
  }

  else
  {
    str_alloc(a1, v292);
  }

  v296 = &v290[*a1];
  v297 = (v291 >> 4) + 87;
  if (v291 < 0xA0)
  {
    LOBYTE(v297) = (v291 >> 4) | 0x30;
  }

  *v296 = v297;
  if ((v291 & 0xF) >= 0xA)
  {
    v298 = (v291 & 0xF) + 87;
  }

  else
  {
    v298 = v291 & 0xF | 0x30;
  }

  v296[1] = v298;
  v300 = a1[1];
  v299 = a1[2];
  v301 = (v300 + 2);
  a1[1] = v300 + 2;
  v302 = (v300 + 3);
  if (v299)
  {
    if (v302 >= *v299)
    {
      v303 = malloc_type_realloc(*(v299 + 2), (v301 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
      v304 = a1[2];
      *(v304 + 2) = v303;
      *v304 = (v301 & 0xFFFFFFFFFFFFFF00) + 256;
      *a1 = v303;
    }
  }

  else
  {
    str_alloc(a1, v302);
  }

  v305 = *a1;
  ++a1[1];
  v305[v301] = 58;
  v306 = *(a2 + 28);
  v308 = a1[1];
  v307 = a1[2];
  v309 = (v308 + 2);
  if (v307)
  {
    if (v309 >= *v307)
    {
      v310 = malloc_type_realloc(*(v307 + 2), (v308 + 257) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
      v311 = a1[2];
      *(v311 + 2) = v310;
      *v311 = (v308 + 257) & 0xFFFFFFFFFFFFFF00;
      *a1 = v310;
    }
  }

  else
  {
    str_alloc(a1, v309);
  }

  v312 = &v308[*a1];
  v313 = (v306 >> 4) + 87;
  if (v306 < 0xA0)
  {
    LOBYTE(v313) = (v306 >> 4) | 0x30;
  }

  *v312 = v313;
  if ((v306 & 0xF) >= 0xA)
  {
    v314 = (v306 & 0xF) + 87;
  }

  else
  {
    v314 = v306 & 0xF | 0x30;
  }

  v312[1] = v314;
  v315 = a1[1];
  v316 = a1[2];
  v317 = v315 + 2;
  a1[1] = v315 + 2;
  v318 = *(a2 + 29);
  v319 = (v315 + 4);
  if (v316)
  {
    if (v319 >= *v316)
    {
      v320 = (v315 + 259) & 0xFFFFFFFFFFFFFF00;
      v321 = malloc_type_realloc(*(v316 + 2), v320, 0x100004077774924uLL);
      v322 = a1[2];
      *(v322 + 2) = v321;
      *v322 = v320;
      *a1 = v321;
    }
  }

  else
  {
    str_alloc(a1, v319);
  }

  v323 = &v317[*a1];
  v324 = (v318 >> 4) + 87;
  if (v318 < 0xA0)
  {
    LOBYTE(v324) = (v318 >> 4) | 0x30;
  }

  *v323 = v324;
  if ((v318 & 0xF) >= 0xA)
  {
    v325 = (v318 & 0xF) + 87;
  }

  else
  {
    v325 = v318 & 0xF | 0x30;
  }

  v323[1] = v325;
  v327 = a1[1];
  v326 = a1[2];
  v328 = (v327 + 2);
  a1[1] = v327 + 2;
  v329 = (v327 + 3);
  if (v326)
  {
    if (v329 >= *v326)
    {
      v330 = malloc_type_realloc(*(v326 + 2), (v328 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
      v331 = a1[2];
      *(v331 + 2) = v330;
      *v331 = (v328 & 0xFFFFFFFFFFFFFF00) + 256;
      *a1 = v330;
    }
  }

  else
  {
    str_alloc(a1, v329);
  }

  v332 = *a1;
  ++a1[1];
  v332[v328] = 58;
  v333 = *(a2 + 30);
  v335 = a1[1];
  v334 = a1[2];
  v336 = (v335 + 4);
  if (v334)
  {
    if (v336 >= *v334)
    {
      v337 = malloc_type_realloc(*(v334 + 2), (v335 + 259) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
      v338 = a1[2];
      *(v338 + 2) = v337;
      *v338 = (v335 + 259) & 0xFFFFFFFFFFFFFF00;
      *a1 = v337;
    }
  }

  else
  {
    str_alloc(a1, v336);
  }

  v339 = &v335[*a1];
  v340 = (v333 >> 12) + 87;
  if (v333 < 0xA000)
  {
    LOBYTE(v340) = (v333 >> 12) | 0x30;
  }

  *v339 = v340;
  v341 = (v333 >> 8) & 0xF;
  if (v341 >= 0xA)
  {
    v342 = v341 + 87;
  }

  else
  {
    v342 = v341 | 0x30;
  }

  v339[1] = v342;
  v343 = v333 >> 4;
  if (v343 >= 0xA)
  {
    v344 = v343 + 87;
  }

  else
  {
    v344 = (v333 >> 4) | 0x30;
  }

  v339[2] = v344;
  if ((v333 & 0xF) >= 0xA)
  {
    v345 = (v333 & 0xF) + 87;
  }

  else
  {
    v345 = v333 & 0xF | 0x30;
  }

  v339[3] = v345;
  v347 = a1[1];
  v346 = a1[2];
  v348 = (v347 + 4);
  a1[1] = v347 + 4;
  v349 = (v347 + 5);
  if (v346)
  {
    if (v349 >= *v346)
    {
      v350 = malloc_type_realloc(*(v346 + 2), (v348 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
      v351 = a1[2];
      *(v351 + 2) = v350;
      *v351 = (v348 & 0xFFFFFFFFFFFFFF00) + 256;
      *a1 = v350;
    }
  }

  else
  {
    str_alloc(a1, v349);
  }

  v352 = *a1;
  ++a1[1];
  v352[v348] = 58;
  v353 = *(a2 + 32);
  v355 = a1[1];
  v354 = a1[2];
  v356 = (v355 + 4);
  if (v354)
  {
    if (v356 >= *v354)
    {
      v357 = malloc_type_realloc(*(v354 + 2), (v355 + 259) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
      v358 = a1[2];
      *(v358 + 2) = v357;
      *v358 = (v355 + 259) & 0xFFFFFFFFFFFFFF00;
      *a1 = v357;
    }
  }

  else
  {
    str_alloc(a1, v356);
  }

  v359 = &v355[*a1];
  v360 = (v353 >> 12) + 87;
  if (v353 < 0xA000)
  {
    LOBYTE(v360) = (v353 >> 12) | 0x30;
  }

  *v359 = v360;
  v361 = (v353 >> 8) & 0xF;
  if (v361 >= 0xA)
  {
    v362 = v361 + 87;
  }

  else
  {
    v362 = v361 | 0x30;
  }

  v359[1] = v362;
  v363 = v353 >> 4;
  if (v363 >= 0xA)
  {
    v364 = v363 + 87;
  }

  else
  {
    v364 = (v353 >> 4) | 0x30;
  }

  v359[2] = v364;
  if ((v353 & 0xF) >= 0xA)
  {
    v365 = (v353 & 0xF) + 87;
  }

  else
  {
    v365 = v353 & 0xF | 0x30;
  }

  v359[3] = v365;
  v367 = a1[1];
  v366 = a1[2];
  v368 = (v367 + 4);
  a1[1] = v367 + 4;
  v369 = (v367 + 5);
  if (v366)
  {
    if (v369 >= *v366)
    {
      v370 = malloc_type_realloc(*(v366 + 2), (v368 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
      v371 = a1[2];
      *(v371 + 2) = v370;
      *v371 = (v368 & 0xFFFFFFFFFFFFFF00) + 256;
      *a1 = v370;
    }
  }

  else
  {
    str_alloc(a1, v369);
  }

  v372 = *a1;
  ++a1[1];
  v372[v368] = 58;
  v373 = *(a2 + 34);
  v375 = a1[1];
  v374 = a1[2];
  v376 = (v375 + 4);
  if (v374)
  {
    if (v376 >= *v374)
    {
      v377 = malloc_type_realloc(*(v374 + 2), (v375 + 259) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
      v378 = a1[2];
      *(v378 + 2) = v377;
      *v378 = (v375 + 259) & 0xFFFFFFFFFFFFFF00;
      *a1 = v377;
    }
  }

  else
  {
    str_alloc(a1, v376);
  }

  v379 = &v375[*a1];
  v380 = (v373 >> 12) + 87;
  if (v373 < 0xA000)
  {
    LOBYTE(v380) = (v373 >> 12) | 0x30;
  }

  *v379 = v380;
  v381 = (v373 >> 8) & 0xF;
  if (v381 >= 0xA)
  {
    v382 = v381 + 87;
  }

  else
  {
    v382 = v381 | 0x30;
  }

  v379[1] = v382;
  v383 = v373 >> 4;
  if (v383 >= 0xA)
  {
    v384 = v383 + 87;
  }

  else
  {
    v384 = (v373 >> 4) | 0x30;
  }

  v379[2] = v384;
  if ((v373 & 0xF) >= 0xA)
  {
    v385 = (v373 & 0xF) + 87;
  }

  else
  {
    v385 = v373 & 0xF | 0x30;
  }

  v379[3] = v385;
  v387 = a1[1];
  v386 = a1[2];
  v388 = (v387 + 4);
  a1[1] = v387 + 4;
  v389 = (v387 + 5);
  if (v386)
  {
    if (v389 >= *v386)
    {
      v390 = malloc_type_realloc(*(v386 + 2), (v388 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
      v391 = a1[2];
      *(v391 + 2) = v390;
      *v391 = (v388 & 0xFFFFFFFFFFFFFF00) + 256;
      *a1 = v390;
    }
  }

  else
  {
    str_alloc(a1, v389);
  }

  v392 = *a1;
  ++a1[1];
  v392[v388] = 58;
  v393 = *(a2 + 36);
  v395 = a1[1];
  v394 = a1[2];
  v396 = (v395 + 4);
  if (v394)
  {
    if (v396 >= *v394)
    {
      v397 = malloc_type_realloc(*(v394 + 2), (v395 + 259) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
      v398 = a1[2];
      *(v398 + 2) = v397;
      *v398 = (v395 + 259) & 0xFFFFFFFFFFFFFF00;
      *a1 = v397;
    }
  }

  else
  {
    str_alloc(a1, v396);
  }

  v399 = &v395[*a1];
  v400 = (v393 >> 12) + 87;
  if (v393 < 0xA000)
  {
    LOBYTE(v400) = (v393 >> 12) | 0x30;
  }

  *v399 = v400;
  v401 = (v393 >> 8) & 0xF;
  if (v401 >= 0xA)
  {
    v402 = v401 + 87;
  }

  else
  {
    v402 = v401 | 0x30;
  }

  v399[1] = v402;
  v403 = v393 >> 4;
  if (v403 >= 0xA)
  {
    v404 = v403 + 87;
  }

  else
  {
    v404 = (v393 >> 4) | 0x30;
  }

  v399[2] = v404;
  if ((v393 & 0xF) >= 0xA)
  {
    v405 = (v393 & 0xF) + 87;
  }

  else
  {
    v405 = v393 & 0xF | 0x30;
  }

  v399[3] = v405;
  v407 = a1[1];
  v406 = a1[2];
  v408 = (v407 + 4);
  a1[1] = v407 + 4;
  v409 = (v407 + 5);
  if (v406)
  {
    if (v409 >= *v406)
    {
      v410 = malloc_type_realloc(*(v406 + 2), (v408 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
      v411 = a1[2];
      *(v411 + 2) = v410;
      *v411 = (v408 & 0xFFFFFFFFFFFFFF00) + 256;
      *a1 = v410;
    }
  }

  else
  {
    str_alloc(a1, v409);
  }

  v412 = *a1;
  ++a1[1];
  v412[v408] = 58;
  v413 = *(a2 + 40);
  v415 = a1[1];
  v414 = a1[2];
  v416 = (v415 + 2);
  if (v414)
  {
    if (v416 >= *v414)
    {
      v417 = malloc_type_realloc(*(v414 + 2), (v415 + 257) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
      v418 = a1[2];
      *(v418 + 2) = v417;
      *v418 = (v415 + 257) & 0xFFFFFFFFFFFFFF00;
      *a1 = v417;
    }
  }

  else
  {
    str_alloc(a1, v416);
  }

  v419 = &v415[*a1];
  v420 = (v413 >> 4) + 87;
  if (v413 < 0xA0)
  {
    LOBYTE(v420) = (v413 >> 4) | 0x30;
  }

  *v419 = v420;
  if ((v413 & 0xF) >= 0xA)
  {
    v421 = (v413 & 0xF) + 87;
  }

  else
  {
    v421 = v413 & 0xF | 0x30;
  }

  v419[1] = v421;
  v423 = a1[1];
  v422 = a1[2];
  v424 = (v423 + 2);
  a1[1] = v423 + 2;
  v425 = (v423 + 3);
  if (v422)
  {
    if (v425 >= *v422)
    {
      v426 = malloc_type_realloc(*(v422 + 2), (v424 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
      v427 = a1[2];
      *(v427 + 2) = v426;
      *v427 = (v424 & 0xFFFFFFFFFFFFFF00) + 256;
      *a1 = v426;
    }
  }

  else
  {
    str_alloc(a1, v425);
  }

  v428 = *a1;
  ++a1[1];
  v428[v424] = 58;
  v429 = *(a2 + 41);
  v431 = a1[1];
  v430 = a1[2];
  v432 = v431 + 1;
  if (v430)
  {
    if (v432 >= *v430)
    {
      v433 = malloc_type_realloc(*(v430 + 2), (v431 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
      v434 = a1[2];
      *(v434 + 2) = v433;
      *v434 = (v431 & 0xFFFFFFFFFFFFFF00) + 256;
      *a1 = v433;
    }
  }

  else
  {
    str_alloc(a1, v432);
  }

  if ((v429 & 0xFu) >= 0xA)
  {
    v435 = (v429 & 0xF) + 87;
  }

  else
  {
    v435 = v429 & 0xF | 0x30;
  }

  (*a1)[v431] = v435;
  v437 = a1[1];
  v436 = a1[2];
  v438 = (v437 + 1);
  a1[1] = v437 + 1;
  v439 = (v437 + 2);
  if (v436)
  {
    if (v439 >= *v436)
    {
      v440 = malloc_type_realloc(*(v436 + 2), (v438 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
      v441 = a1[2];
      *(v441 + 2) = v440;
      *v441 = (v438 & 0xFFFFFFFFFFFFFF00) + 256;
      *a1 = v440;
    }
  }

  else
  {
    str_alloc(a1, v439);
  }

  v442 = *a1;
  ++a1[1];
  v442[v438] = 58;
  v443 = *(a2 + 42);
  v445 = a1[1];
  v444 = a1[2];
  v446 = v445 + 1;
  if (v444)
  {
    if (v446 >= *v444)
    {
      v447 = malloc_type_realloc(*(v444 + 2), (v445 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
      v448 = a1[2];
      *(v448 + 2) = v447;
      *v448 = (v445 & 0xFFFFFFFFFFFFFF00) + 256;
      *a1 = v447;
    }
  }

  else
  {
    str_alloc(a1, v446);
  }

  if ((v443 & 0xFu) >= 0xA)
  {
    v449 = (v443 & 0xF) + 87;
  }

  else
  {
    v449 = v443 & 0xF | 0x30;
  }

  (*a1)[v445] = v449;
  v451 = a1[1];
  v450 = a1[2];
  v452 = (v451 + 1);
  a1[1] = v451 + 1;
  v453 = (v451 + 2);
  if (v450)
  {
    if (v453 >= *v450)
    {
      v454 = malloc_type_realloc(*(v450 + 2), (v452 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
      v455 = a1[2];
      *(v455 + 2) = v454;
      *v455 = (v452 & 0xFFFFFFFFFFFFFF00) + 256;
      *a1 = v454;
    }
  }

  else
  {
    str_alloc(a1, v453);
  }

  v456 = *a1;
  ++a1[1];
  v456[v452] = 58;
  v457 = *(a2 + 43);
  v459 = a1[1];
  v458 = a1[2];
  v460 = v459 + 1;
  if (v458)
  {
    if (v460 >= *v458)
    {
      v461 = malloc_type_realloc(*(v458 + 2), (v459 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
      v462 = a1[2];
      *(v462 + 2) = v461;
      *v462 = (v459 & 0xFFFFFFFFFFFFFF00) + 256;
      *a1 = v461;
    }
  }

  else
  {
    str_alloc(a1, v460);
  }

  if ((v457 & 0xFu) >= 0xA)
  {
    v463 = (v457 & 0xF) + 87;
  }

  else
  {
    v463 = v457 & 0xF | 0x30;
  }

  (*a1)[v459] = v463;
  v465 = a1[1];
  v464 = a1[2];
  v466 = (v465 + 1);
  a1[1] = v465 + 1;
  v467 = (v465 + 2);
  if (v464)
  {
    if (v467 >= *v464)
    {
      v468 = malloc_type_realloc(*(v464 + 2), (v466 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
      v469 = a1[2];
      *(v469 + 2) = v468;
      *v469 = (v466 & 0xFFFFFFFFFFFFFF00) + 256;
      *a1 = v468;
    }
  }

  else
  {
    str_alloc(a1, v467);
  }

  v470 = *a1;
  ++a1[1];
  v470[v466] = 10;

  return str_close(a1, v211, *&v210, v209);
}

const char *str_ext(string_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[1];
  v5 = a1[2];
  v7 = &v6[a3];
  if (v5)
  {
    if (v7 >= *v5)
    {
      v8 = (v7 + 255) & 0xFFFFFFFFFFFFFF00;
      v9 = malloc_type_realloc(*(v5 + 2), v8, 0x100004077774924uLL);
      v10 = a1[2];
      *(v10 + 2) = v9;
      *v10 = v8;
      *a1 = v9;
    }
  }

  else
  {
    str_alloc(a1, v7);
  }

  v11 = *a1;
  a1[1] += a2;
  return &v6[v11];
}

void glsl::end(string_t *a1, uint64_t a2, unsigned int *a3, char a4, double a5, double a6, uint32x4_t a7)
{
  v12 = a1[1];
  v11 = a1[2];
  v13 = (v12 + 6);
  if (v11)
  {
    if (v13 >= *v11)
    {
      v14 = malloc_type_realloc(*(v11 + 2), (v12 + 261) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
      v15 = a1[2];
      *(v15 + 2) = v14;
      *v15 = (v12 + 261) & 0xFFFFFFFFFFFFFF00;
      *a1 = v14;
    }
  }

  else
  {
    str_alloc(a1, v13);
  }

  v16 = *a1;
  a1[1] += 6;
  v17 = &v12[v16];
  *(v17 + 2) = 15669;
  *v17 = 1145909039;
  v18 = *a3;
  v20 = a1[1];
  v19 = a1[2];
  v21 = (v20 + 8);
  if (v19)
  {
    if (v21 >= *v19)
    {
      v22 = malloc_type_realloc(*(v19 + 2), (v20 + 263) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
      v23 = a1[2];
      *(v23 + 2) = v22;
      *v23 = (v20 + 263) & 0xFFFFFFFFFFFFFF00;
      *a1 = v22;
    }
  }

  else
  {
    str_alloc(a1, v21);
  }

  v24 = vdup_n_s32(v18);
  v25 = vshl_u32(v24, 0xFFFFFFF0FFFFFFECLL);
  *v26.i8 = vshl_u32(v24, 0xFFFFFFF8FFFFFFF4);
  a7.i32[0] = v18;
  v27 = vshrq_n_u32(a7, 0x1CuLL).u32[0];
  a7.i32[1] = HIBYTE(v18);
  a7.u64[1] = v25;
  v26.i32[2] = v18 >> 4;
  v26.i32[3] = v18;
  v28.i64[0] = 0xF0000000FLL;
  v28.i64[1] = 0xF0000000FLL;
  v29 = vandq_s8(a7, v28);
  v30 = vandq_s8(v26, v28);
  v31 = v29;
  v31.i32[0] = v27;
  v29.i32[0] = v18;
  v32.i64[0] = 0xA0000000ALL;
  v32.i64[1] = 0xA0000000ALL;
  v33 = vuzp1q_s16(vcgtq_u32(xmmword_260391100, v29), vcgtq_u32(v32, v30));
  *v33.i8 = vmovn_s16(v33);
  *v30.i8 = vmovn_s16(vuzp1q_s16(v31, v30));
  *&v20[*a1] = vbsl_s8(*v33.i8, vorr_s8(*v30.i8, 0x3030303030303030), vadd_s8(*v30.i8, 0x5757575757575757));
  v35 = a1[1];
  v34 = a1[2];
  v36 = (v35 + 8);
  a1[1] = v35 + 8;
  v37 = (v35 + 9);
  if (v34)
  {
    if (v37 >= *v34)
    {
      v38 = malloc_type_realloc(*(v34 + 2), (v36 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
      v39 = a1[2];
      *(v39 + 2) = v38;
      *v39 = (v36 & 0xFFFFFFFFFFFFFF00) + 256;
      *a1 = v38;
    }
  }

  else
  {
    str_alloc(a1, v37);
  }

  v40 = *a1;
  ++a1[1];
  v40[v36] = 58;
  v41 = a3[1];
  v43 = a1[1];
  v42 = a1[2];
  v44 = (v43 + 8);
  if (v42)
  {
    if (v44 >= *v42)
    {
      v45 = malloc_type_realloc(*(v42 + 2), (v43 + 263) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
      v46 = a1[2];
      *(v46 + 2) = v45;
      *v46 = (v43 + 263) & 0xFFFFFFFFFFFFFF00;
      *a1 = v45;
    }
  }

  else
  {
    str_alloc(a1, v44);
  }

  v47 = vdup_n_s32(v41);
  v48 = vshl_u32(v47, 0xFFFFFFF0FFFFFFECLL);
  *v49.i8 = vshl_u32(v47, 0xFFFFFFF8FFFFFFF4);
  v33.i32[0] = v41;
  v50 = vshrq_n_u32(v33, 0x1CuLL).u32[0];
  v33.i32[1] = HIBYTE(v41);
  v33.u64[1] = v48;
  v49.i32[2] = v41 >> 4;
  v49.i32[3] = v41;
  v51.i64[0] = 0xF0000000FLL;
  v51.i64[1] = 0xF0000000FLL;
  v52 = vandq_s8(v33, v51);
  v53 = vandq_s8(v49, v51);
  v54 = v52;
  v54.i32[0] = v50;
  v52.i32[0] = v41;
  v55.i64[0] = 0xA0000000ALL;
  v55.i64[1] = 0xA0000000ALL;
  v56 = vuzp1q_s16(vcgtq_u32(xmmword_260391100, v52), vcgtq_u32(v55, v53));
  *v56.i8 = vmovn_s16(v56);
  *v53.i8 = vmovn_s16(vuzp1q_s16(v54, v53));
  *&v43[*a1] = vbsl_s8(*v56.i8, vorr_s8(*v53.i8, 0x3030303030303030), vadd_s8(*v53.i8, 0x5757575757575757));
  v58 = a1[1];
  v57 = a1[2];
  v59 = (v58 + 8);
  a1[1] = v58 + 8;
  v60 = (v58 + 9);
  if (v57)
  {
    if (v60 >= *v57)
    {
      v61 = malloc_type_realloc(*(v57 + 2), (v59 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
      v62 = a1[2];
      *(v62 + 2) = v61;
      *v62 = (v59 & 0xFFFFFFFFFFFFFF00) + 256;
      *a1 = v61;
    }
  }

  else
  {
    str_alloc(a1, v60);
  }

  v63 = *a1;
  ++a1[1];
  v63[v59] = 58;
  v64 = a3[2];
  v66 = a1[1];
  v65 = a1[2];
  v67 = (v66 + 8);
  if (v65)
  {
    if (v67 >= *v65)
    {
      v68 = malloc_type_realloc(*(v65 + 2), (v66 + 263) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
      v69 = a1[2];
      *(v69 + 2) = v68;
      *v69 = (v66 + 263) & 0xFFFFFFFFFFFFFF00;
      *a1 = v68;
    }
  }

  else
  {
    str_alloc(a1, v67);
  }

  v70 = vdup_n_s32(v64);
  v71 = vshl_u32(v70, 0xFFFFFFF0FFFFFFECLL);
  *v72.i8 = vshl_u32(v70, 0xFFFFFFF8FFFFFFF4);
  v56.i32[0] = v64;
  v73 = vshrq_n_u32(v56, 0x1CuLL).u32[0];
  v56.i32[1] = HIBYTE(v64);
  v56.u64[1] = v71;
  v72.i32[2] = v64 >> 4;
  v72.i32[3] = v64;
  v74.i64[0] = 0xF0000000FLL;
  v74.i64[1] = 0xF0000000FLL;
  v75 = vandq_s8(v56, v74);
  v76 = vandq_s8(v72, v74);
  v77 = v75;
  v77.i32[0] = v73;
  v75.i32[0] = v64;
  v78.i64[0] = 0xA0000000ALL;
  v78.i64[1] = 0xA0000000ALL;
  v79 = vuzp1q_s16(vcgtq_u32(xmmword_260391100, v75), vcgtq_u32(v78, v76));
  *v79.i8 = vmovn_s16(v79);
  *v76.i8 = vmovn_s16(vuzp1q_s16(v77, v76));
  *&v66[*a1] = vbsl_s8(*v79.i8, vorr_s8(*v76.i8, 0x3030303030303030), vadd_s8(*v76.i8, 0x5757575757575757));
  v81 = a1[1];
  v80 = a1[2];
  v82 = (v81 + 8);
  a1[1] = v81 + 8;
  v83 = (v81 + 9);
  if (v80)
  {
    if (v83 >= *v80)
    {
      v84 = malloc_type_realloc(*(v80 + 2), (v82 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
      v85 = a1[2];
      *(v85 + 2) = v84;
      *v85 = (v82 & 0xFFFFFFFFFFFFFF00) + 256;
      *a1 = v84;
    }
  }

  else
  {
    str_alloc(a1, v83);
  }

  v86 = *a1;
  ++a1[1];
  v86[v82] = 58;
  v87 = a3[3];
  v89 = a1[1];
  v88 = a1[2];
  v90 = (v89 + 8);
  if (v88)
  {
    if (v90 >= *v88)
    {
      v91 = malloc_type_realloc(*(v88 + 2), (v89 + 263) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
      v92 = a1[2];
      *(v92 + 2) = v91;
      *v92 = (v89 + 263) & 0xFFFFFFFFFFFFFF00;
      *a1 = v91;
    }
  }

  else
  {
    str_alloc(a1, v90);
  }

  v93 = vdup_n_s32(v87);
  v94 = vshl_u32(v93, 0xFFFFFFF0FFFFFFECLL);
  *v95.i8 = vshl_u32(v93, 0xFFFFFFF8FFFFFFF4);
  v79.i32[0] = v87;
  v96 = vshrq_n_u32(v79, 0x1CuLL).u32[0];
  v79.i32[1] = HIBYTE(v87);
  v79.u64[1] = v94;
  v95.i32[2] = v87 >> 4;
  v95.i32[3] = v87;
  v97.i64[0] = 0xF0000000FLL;
  v97.i64[1] = 0xF0000000FLL;
  v98 = vandq_s8(v79, v97);
  v99 = vandq_s8(v95, v97);
  v100 = v98;
  v100.i32[0] = v96;
  v98.i32[0] = v87;
  v101.i64[0] = 0xA0000000ALL;
  v101.i64[1] = 0xA0000000ALL;
  v102 = vuzp1q_s16(vcgtq_u32(xmmword_260391100, v98), vcgtq_u32(v101, v99));
  *v102.i8 = vmovn_s16(v102);
  *v99.i8 = vmovn_s16(vuzp1q_s16(v100, v99));
  *&v89[*a1] = vbsl_s8(*v102.i8, vorr_s8(*v99.i8, 0x3030303030303030), vadd_s8(*v99.i8, 0x5757575757575757));
  v104 = a1[1];
  v103 = a1[2];
  v105 = (v104 + 8);
  a1[1] = v104 + 8;
  v106 = (v104 + 9);
  if (v103)
  {
    if (v106 >= *v103)
    {
      v107 = malloc_type_realloc(*(v103 + 2), (v105 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
      v108 = a1[2];
      *(v108 + 2) = v107;
      *v108 = (v105 & 0xFFFFFFFFFFFFFF00) + 256;
      *a1 = v107;
    }
  }

  else
  {
    str_alloc(a1, v106);
  }

  v109 = *a1;
  ++a1[1];
  v109[v105] = 10;
  v111 = a1[1];
  v110 = a1[2];
  v112 = (v111 + 6);
  if (v110)
  {
    if (v112 >= *v110)
    {
      v113 = malloc_type_realloc(*(v110 + 2), (v111 + 261) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
      v114 = a1[2];
      *(v114 + 2) = v113;
      *v114 = (v111 + 261) & 0xFFFFFFFFFFFFFF00;
      *a1 = v113;
    }
  }

  else
  {
    str_alloc(a1, v112);
  }

  v115 = *a1;
  a1[1] += 6;
  v116 = &v111[v115];
  *(v116 + 2) = 15687;
  *v116 = 1230188335;
  v117 = *(a2 + 4);
  v119 = a1[1];
  v118 = a1[2];
  v120 = (v119 + 8);
  if (v118)
  {
    if (v120 >= *v118)
    {
      v121 = malloc_type_realloc(*(v118 + 2), (v119 + 263) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
      v122 = a1[2];
      *(v122 + 2) = v121;
      *v122 = (v119 + 263) & 0xFFFFFFFFFFFFFF00;
      *a1 = v121;
    }
  }

  else
  {
    str_alloc(a1, v120);
  }

  v123 = vdup_n_s32(v117);
  v124 = vshl_u32(v123, 0xFFFFFFF0FFFFFFECLL);
  *v125.i8 = vshl_u32(v123, 0xFFFFFFF8FFFFFFF4);
  v102.i32[0] = v117;
  v126 = vshrq_n_u32(v102, 0x1CuLL).u32[0];
  v102.i32[1] = HIBYTE(v117);
  v102.u64[1] = v124;
  v125.i32[2] = v117 >> 4;
  v125.i32[3] = v117;
  v127.i64[0] = 0xF0000000FLL;
  v127.i64[1] = 0xF0000000FLL;
  v128 = vandq_s8(v102, v127);
  v129 = vandq_s8(v125, v127);
  v130 = v128;
  v130.i32[0] = v126;
  v128.i32[0] = v117;
  v131.i64[0] = 0xA0000000ALL;
  v131.i64[1] = 0xA0000000ALL;
  v132 = vuzp1q_s16(vcgtq_u32(xmmword_260391100, v128), vcgtq_u32(v131, v129));
  *v132.i8 = vmovn_s16(v132);
  *v129.i8 = vmovn_s16(vuzp1q_s16(v130, v129));
  *&v119[*a1] = vbsl_s8(*v132.i8, vorr_s8(*v129.i8, 0x3030303030303030), vadd_s8(*v129.i8, 0x5757575757575757));
  v134 = a1[1];
  v133 = a1[2];
  v135 = (v134 + 8);
  a1[1] = v134 + 8;
  v136 = (v134 + 9);
  if (v133)
  {
    if (v136 >= *v133)
    {
      v137 = malloc_type_realloc(*(v133 + 2), (v135 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
      v138 = a1[2];
      *(v138 + 2) = v137;
      *v138 = (v135 & 0xFFFFFFFFFFFFFF00) + 256;
      *a1 = v137;
    }
  }

  else
  {
    str_alloc(a1, v136);
  }

  v139 = *a1;
  ++a1[1];
  v139[v135] = 58;
  v140 = *(a2 + 8);
  v142 = a1[1];
  v141 = a1[2];
  v143 = (v142 + 8);
  if (v141)
  {
    if (v143 >= *v141)
    {
      v144 = malloc_type_realloc(*(v141 + 2), (v142 + 263) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
      v145 = a1[2];
      *(v145 + 2) = v144;
      *v145 = (v142 + 263) & 0xFFFFFFFFFFFFFF00;
      *a1 = v144;
    }
  }

  else
  {
    str_alloc(a1, v143);
  }

  v146 = vdup_n_s32(v140);
  v147 = vshl_u32(v146, 0xFFFFFFF0FFFFFFECLL);
  *v148.i8 = vshl_u32(v146, 0xFFFFFFF8FFFFFFF4);
  v132.i32[0] = v140;
  v149 = vshrq_n_u32(v132, 0x1CuLL).u32[0];
  v132.i32[1] = HIBYTE(v140);
  v132.u64[1] = v147;
  v148.i32[2] = v140 >> 4;
  v148.i32[3] = v140;
  v150.i64[0] = 0xF0000000FLL;
  v150.i64[1] = 0xF0000000FLL;
  v151 = vandq_s8(v132, v150);
  v152 = vandq_s8(v148, v150);
  v153 = v151;
  v153.i32[0] = v149;
  v151.i32[0] = v140;
  v154.i64[0] = 0xA0000000ALL;
  v154.i64[1] = 0xA0000000ALL;
  v155 = vuzp1q_s16(vcgtq_u32(xmmword_260391100, v151), vcgtq_u32(v154, v152));
  *v155.i8 = vmovn_s16(v155);
  *v152.i8 = vmovn_s16(vuzp1q_s16(v153, v152));
  *&v142[*a1] = vbsl_s8(*v155.i8, vorr_s8(*v152.i8, 0x3030303030303030), vadd_s8(*v152.i8, 0x5757575757575757));
  v157 = a1[1];
  v156 = a1[2];
  v158 = (v157 + 8);
  a1[1] = v157 + 8;
  v159 = (v157 + 9);
  if (v156)
  {
    if (v159 >= *v156)
    {
      v160 = malloc_type_realloc(*(v156 + 2), (v158 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
      v161 = a1[2];
      *(v161 + 2) = v160;
      *v161 = (v158 & 0xFFFFFFFFFFFFFF00) + 256;
      *a1 = v160;
    }
  }

  else
  {
    str_alloc(a1, v159);
  }

  v162 = *a1;
  ++a1[1];
  v162[v158] = 58;
  v163 = *(a2 + 12);
  v165 = a1[1];
  v164 = a1[2];
  v166 = (v165 + 8);
  if (v164)
  {
    if (v166 >= *v164)
    {
      v167 = malloc_type_realloc(*(v164 + 2), (v165 + 263) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
      v168 = a1[2];
      *(v168 + 2) = v167;
      *v168 = (v165 + 263) & 0xFFFFFFFFFFFFFF00;
      *a1 = v167;
    }
  }

  else
  {
    str_alloc(a1, v166);
  }

  v169 = vdup_n_s32(v163);
  v170 = vshl_u32(v169, 0xFFFFFFF0FFFFFFECLL);
  *v171.i8 = vshl_u32(v169, 0xFFFFFFF8FFFFFFF4);
  v155.i32[0] = v163;
  v172 = vshrq_n_u32(v155, 0x1CuLL).u32[0];
  v155.i32[1] = HIBYTE(v163);
  v155.u64[1] = v170;
  v171.i32[2] = v163 >> 4;
  v171.i32[3] = v163;
  v173.i64[0] = 0xF0000000FLL;
  v173.i64[1] = 0xF0000000FLL;
  v174 = vandq_s8(v155, v173);
  v175 = vandq_s8(v171, v173);
  v176 = v174;
  v176.i32[0] = v172;
  v174.i32[0] = v163;
  v177.i64[0] = 0xA0000000ALL;
  v177.i64[1] = 0xA0000000ALL;
  v178 = vuzp1q_s16(vcgtq_u32(xmmword_260391100, v174), vcgtq_u32(v177, v175));
  *v178.i8 = vmovn_s16(v178);
  *v175.i8 = vmovn_s16(vuzp1q_s16(v176, v175));
  *&v165[*a1] = vbsl_s8(*v178.i8, vorr_s8(*v175.i8, 0x3030303030303030), vadd_s8(*v175.i8, 0x5757575757575757));
  v180 = a1[1];
  v179 = a1[2];
  v181 = (v180 + 8);
  a1[1] = v180 + 8;
  v182 = (v180 + 9);
  if (v179)
  {
    if (v182 >= *v179)
    {
      v183 = malloc_type_realloc(*(v179 + 2), (v181 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
      v184 = a1[2];
      *(v184 + 2) = v183;
      *v184 = (v181 & 0xFFFFFFFFFFFFFF00) + 256;
      *a1 = v183;
    }
  }

  else
  {
    str_alloc(a1, v182);
  }

  v185 = *a1;
  ++a1[1];
  v185[v181] = 58;
  v186 = *(a2 + 16);
  v188 = a1[1];
  v187 = a1[2];
  v189 = (v188 + 8);
  if (v187)
  {
    if (v189 >= *v187)
    {
      v190 = malloc_type_realloc(*(v187 + 2), (v188 + 263) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
      v191 = a1[2];
      *(v191 + 2) = v190;
      *v191 = (v188 + 263) & 0xFFFFFFFFFFFFFF00;
      *a1 = v190;
    }
  }

  else
  {
    str_alloc(a1, v189);
  }

  v192 = vdup_n_s32(v186);
  v193 = vshl_u32(v192, 0xFFFFFFF0FFFFFFECLL);
  *v194.i8 = vshl_u32(v192, 0xFFFFFFF8FFFFFFF4);
  v178.i32[0] = v186;
  v195 = vshrq_n_u32(v178, 0x1CuLL).u32[0];
  v178.i32[1] = HIBYTE(v186);
  v178.u64[1] = v193;
  v194.i32[2] = v186 >> 4;
  v194.i32[3] = v186;
  v196.i64[0] = 0xF0000000FLL;
  v196.i64[1] = 0xF0000000FLL;
  v197 = vandq_s8(v178, v196);
  v198 = vandq_s8(v194, v196);
  v199 = v197;
  v199.i32[0] = v195;
  v197.i32[0] = v186;
  v200.i64[0] = 0xA0000000ALL;
  v200.i64[1] = 0xA0000000ALL;
  v201 = vuzp1q_s16(vcgtq_u32(xmmword_260391100, v197), vcgtq_u32(v200, v198));
  *v201.i8 = vmovn_s16(v201);
  *v198.i8 = vmovn_s16(vuzp1q_s16(v199, v198));
  v202 = vorr_s8(*v198.i8, 0x3030303030303030);
  v203 = COERCE_DOUBLE(vbsl_s8(*v201.i8, v202, vadd_s8(*v198.i8, 0x5757575757575757)));
  *&v188[*a1] = v203;
  v205 = a1[1];
  v204 = a1[2];
  v206 = (v205 + 8);
  a1[1] = v205 + 8;
  v207 = (v205 + 9);
  if (v204)
  {
    if (v207 >= *v204)
    {
      v208 = malloc_type_realloc(*(v204 + 2), (v206 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
      v209 = a1[2];
      *(v209 + 2) = v208;
      *v209 = (v206 & 0xFFFFFFFFFFFFFF00) + 256;
      *a1 = v208;
    }
  }

  else
  {
    str_alloc(a1, v207);
  }

  v210 = *a1;
  ++a1[1];
  v210[v206] = 58;
  v211 = *(a2 + 20);
  v213 = a1[1];
  v212 = a1[2];
  v214 = (v213 + 4);
  if (v212)
  {
    if (v214 >= *v212)
    {
      v215 = malloc_type_realloc(*(v212 + 2), (v213 + 259) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
      v216 = a1[2];
      *(v216 + 2) = v215;
      *v216 = (v213 + 259) & 0xFFFFFFFFFFFFFF00;
      *a1 = v215;
    }
  }

  else
  {
    str_alloc(a1, v214);
  }

  v217 = &v213[*a1];
  v218 = (v211 >> 12) + 87;
  if (v211 < 0xA000)
  {
    LOBYTE(v218) = (v211 >> 12) | 0x30;
  }

  *v217 = v218;
  v219 = (v211 >> 8) & 0xF;
  if (v219 >= 0xA)
  {
    v220 = v219 + 87;
  }

  else
  {
    v220 = v219 | 0x30;
  }

  v217[1] = v220;
  v221 = v211 >> 4;
  if (v221 >= 0xA)
  {
    v222 = v221 + 87;
  }

  else
  {
    v222 = (v211 >> 4) | 0x30;
  }

  v217[2] = v222;
  if ((v211 & 0xF) >= 0xA)
  {
    v223 = (v211 & 0xF) + 87;
  }

  else
  {
    v223 = v211 & 0xF | 0x30;
  }

  v217[3] = v223;
  v225 = a1[1];
  v224 = a1[2];
  v226 = (v225 + 4);
  a1[1] = v225 + 4;
  v227 = (v225 + 5);
  if (v224)
  {
    if (v227 >= *v224)
    {
      v228 = malloc_type_realloc(*(v224 + 2), (v226 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
      v229 = a1[2];
      *(v229 + 2) = v228;
      *v229 = (v226 & 0xFFFFFFFFFFFFFF00) + 256;
      *a1 = v228;
    }
  }

  else
  {
    str_alloc(a1, v227);
  }

  v230 = *a1;
  ++a1[1];
  v230[v226] = 58;
  v231 = *(a2 + 22);
  v233 = a1[1];
  v232 = a1[2];
  v234 = (v233 + 4);
  if (v232)
  {
    if (v234 >= *v232)
    {
      v235 = malloc_type_realloc(*(v232 + 2), (v233 + 259) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
      v236 = a1[2];
      *(v236 + 2) = v235;
      *v236 = (v233 + 259) & 0xFFFFFFFFFFFFFF00;
      *a1 = v235;
    }
  }

  else
  {
    str_alloc(a1, v234);
  }

  v237 = &v233[*a1];
  v238 = (v231 >> 12) + 87;
  if (v231 < 0xA000)
  {
    LOBYTE(v238) = (v231 >> 12) | 0x30;
  }

  *v237 = v238;
  v239 = (v231 >> 8) & 0xF;
  if (v239 >= 0xA)
  {
    v240 = v239 + 87;
  }

  else
  {
    v240 = v239 | 0x30;
  }

  v237[1] = v240;
  v241 = v231 >> 4;
  if (v241 >= 0xA)
  {
    v242 = v241 + 87;
  }

  else
  {
    v242 = (v231 >> 4) | 0x30;
  }

  v237[2] = v242;
  if ((v231 & 0xF) >= 0xA)
  {
    v243 = (v231 & 0xF) + 87;
  }

  else
  {
    v243 = v231 & 0xF | 0x30;
  }

  v237[3] = v243;
  v245 = a1[1];
  v244 = a1[2];
  v246 = (v245 + 4);
  a1[1] = v245 + 4;
  v247 = (v245 + 5);
  if (v244)
  {
    if (v247 >= *v244)
    {
      v248 = malloc_type_realloc(*(v244 + 2), (v246 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
      v249 = a1[2];
      *(v249 + 2) = v248;
      *v249 = (v246 & 0xFFFFFFFFFFFFFF00) + 256;
      *a1 = v248;
    }
  }

  else
  {
    str_alloc(a1, v247);
  }

  v250 = *a1;
  ++a1[1];
  v250[v246] = 58;
  v251 = *(a2 + 24);
  v253 = a1[1];
  v252 = a1[2];
  v254 = (v253 + 4);
  if (v252)
  {
    if (v254 >= *v252)
    {
      v255 = malloc_type_realloc(*(v252 + 2), (v253 + 259) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
      v256 = a1[2];
      *(v256 + 2) = v255;
      *v256 = (v253 + 259) & 0xFFFFFFFFFFFFFF00;
      *a1 = v255;
    }
  }

  else
  {
    str_alloc(a1, v254);
  }

  v257 = &v253[*a1];
  v258 = (v251 >> 12) + 87;
  if (v251 < 0xA000)
  {
    LOBYTE(v258) = (v251 >> 12) | 0x30;
  }

  *v257 = v258;
  v259 = (v251 >> 8) & 0xF;
  if (v259 >= 0xA)
  {
    v260 = v259 + 87;
  }

  else
  {
    v260 = v259 | 0x30;
  }

  v257[1] = v260;
  v261 = v251 >> 4;
  if (v261 >= 0xA)
  {
    v262 = v261 + 87;
  }

  else
  {
    v262 = (v251 >> 4) | 0x30;
  }

  v257[2] = v262;
  if ((v251 & 0xF) >= 0xA)
  {
    v263 = (v251 & 0xF) + 87;
  }

  else
  {
    v263 = v251 & 0xF | 0x30;
  }

  v257[3] = v263;
  v265 = a1[1];
  v264 = a1[2];
  v266 = (v265 + 4);
  a1[1] = v265 + 4;
  v267 = (v265 + 5);
  if (v264)
  {
    if (v267 >= *v264)
    {
      v268 = malloc_type_realloc(*(v264 + 2), (v266 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
      v269 = a1[2];
      *(v269 + 2) = v268;
      *v269 = (v266 & 0xFFFFFFFFFFFFFF00) + 256;
      *a1 = v268;
    }
  }

  else
  {
    str_alloc(a1, v267);
  }

  v270 = *a1;
  ++a1[1];
  v270[v266] = 58;
  v271 = *(a2 + 26);
  v273 = a1[1];
  v272 = a1[2];
  v274 = (v273 + 2);
  if (v272)
  {
    if (v274 >= *v272)
    {
      v275 = malloc_type_realloc(*(v272 + 2), (v273 + 257) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
      v276 = a1[2];
      *(v276 + 2) = v275;
      *v276 = (v273 + 257) & 0xFFFFFFFFFFFFFF00;
      *a1 = v275;
    }
  }

  else
  {
    str_alloc(a1, v274);
  }

  v277 = &v273[*a1];
  v278 = (v271 >> 4) + 87;
  if (v271 < 0xA0)
  {
    LOBYTE(v278) = (v271 >> 4) | 0x30;
  }

  *v277 = v278;
  if ((v271 & 0xF) >= 0xA)
  {
    v279 = (v271 & 0xF) + 87;
  }

  else
  {
    v279 = v271 & 0xF | 0x30;
  }

  v277[1] = v279;
  v280 = a1[1];
  v281 = a1[2];
  v282 = v280 + 2;
  a1[1] = v280 + 2;
  v283 = *(a2 + 27);
  v284 = (v280 + 4);
  if (v281)
  {
    if (v284 >= *v281)
    {
      v285 = (v280 + 259) & 0xFFFFFFFFFFFFFF00;
      v286 = malloc_type_realloc(*(v281 + 2), v285, 0x100004077774924uLL);
      v287 = a1[2];
      *(v287 + 2) = v286;
      *v287 = v285;
      *a1 = v286;
    }
  }

  else
  {
    str_alloc(a1, v284);
  }

  v288 = &v282[*a1];
  v289 = (v283 >> 4) + 87;
  if (v283 < 0xA0)
  {
    LOBYTE(v289) = (v283 >> 4) | 0x30;
  }

  *v288 = v289;
  if ((v283 & 0xF) >= 0xA)
  {
    v290 = (v283 & 0xF) + 87;
  }

  else
  {
    v290 = v283 & 0xF | 0x30;
  }

  v288[1] = v290;
  v292 = a1[1];
  v291 = a1[2];
  v293 = (v292 + 2);
  a1[1] = v292 + 2;
  v294 = (v292 + 3);
  if (v291)
  {
    if (v294 >= *v291)
    {
      v295 = malloc_type_realloc(*(v291 + 2), (v293 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
      v296 = a1[2];
      *(v296 + 2) = v295;
      *v296 = (v293 & 0xFFFFFFFFFFFFFF00) + 256;
      *a1 = v295;
    }
  }

  else
  {
    str_alloc(a1, v294);
  }

  v297 = *a1;
  ++a1[1];
  v297[v293] = 58;
  v298 = *(a2 + 28);
  v300 = a1[1];
  v299 = a1[2];
  v301 = (v300 + 2);
  if (v299)
  {
    if (v301 >= *v299)
    {
      v302 = malloc_type_realloc(*(v299 + 2), (v300 + 257) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
      v303 = a1[2];
      *(v303 + 2) = v302;
      *v303 = (v300 + 257) & 0xFFFFFFFFFFFFFF00;
      *a1 = v302;
    }
  }

  else
  {
    str_alloc(a1, v301);
  }

  v304 = &v300[*a1];
  v305 = (v298 >> 4) + 87;
  if (v298 < 0xA0)
  {
    LOBYTE(v305) = (v298 >> 4) | 0x30;
  }

  *v304 = v305;
  if ((v298 & 0xF) >= 0xA)
  {
    v306 = (v298 & 0xF) + 87;
  }

  else
  {
    v306 = v298 & 0xF | 0x30;
  }

  v304[1] = v306;
  v307 = a1[1];
  v308 = a1[2];
  v309 = v307 + 2;
  a1[1] = v307 + 2;
  v310 = *(a2 + 29);
  v311 = (v307 + 4);
  if (v308)
  {
    if (v311 >= *v308)
    {
      v312 = (v307 + 259) & 0xFFFFFFFFFFFFFF00;
      v313 = malloc_type_realloc(*(v308 + 2), v312, 0x100004077774924uLL);
      v314 = a1[2];
      *(v314 + 2) = v313;
      *v314 = v312;
      *a1 = v313;
    }
  }

  else
  {
    str_alloc(a1, v311);
  }

  v315 = &v309[*a1];
  v316 = (v310 >> 4) + 87;
  if (v310 < 0xA0)
  {
    LOBYTE(v316) = (v310 >> 4) | 0x30;
  }

  *v315 = v316;
  if ((v310 & 0xF) >= 0xA)
  {
    v317 = (v310 & 0xF) + 87;
  }

  else
  {
    v317 = v310 & 0xF | 0x30;
  }

  v315[1] = v317;
  v319 = a1[1];
  v318 = a1[2];
  v320 = (v319 + 2);
  a1[1] = v319 + 2;
  v321 = (v319 + 3);
  if (v318)
  {
    if (v321 >= *v318)
    {
      v322 = malloc_type_realloc(*(v318 + 2), (v320 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
      v323 = a1[2];
      *(v323 + 2) = v322;
      *v323 = (v320 & 0xFFFFFFFFFFFFFF00) + 256;
      *a1 = v322;
    }
  }

  else
  {
    str_alloc(a1, v321);
  }

  v324 = *a1;
  ++a1[1];
  v324[v320] = 58;
  v325 = *(a2 + 30);
  v327 = a1[1];
  v326 = a1[2];
  v328 = (v327 + 4);
  if (v326)
  {
    if (v328 >= *v326)
    {
      v329 = malloc_type_realloc(*(v326 + 2), (v327 + 259) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
      v330 = a1[2];
      *(v330 + 2) = v329;
      *v330 = (v327 + 259) & 0xFFFFFFFFFFFFFF00;
      *a1 = v329;
    }
  }

  else
  {
    str_alloc(a1, v328);
  }

  v331 = &v327[*a1];
  v332 = (v325 >> 12) + 87;
  if (v325 < 0xA000)
  {
    LOBYTE(v332) = (v325 >> 12) | 0x30;
  }

  *v331 = v332;
  v333 = (v325 >> 8) & 0xF;
  if (v333 >= 0xA)
  {
    v334 = v333 + 87;
  }

  else
  {
    v334 = v333 | 0x30;
  }

  v331[1] = v334;
  v335 = v325 >> 4;
  if (v335 >= 0xA)
  {
    v336 = v335 + 87;
  }

  else
  {
    v336 = (v325 >> 4) | 0x30;
  }

  v331[2] = v336;
  if ((v325 & 0xF) >= 0xA)
  {
    v337 = (v325 & 0xF) + 87;
  }

  else
  {
    v337 = v325 & 0xF | 0x30;
  }

  v331[3] = v337;
  v339 = a1[1];
  v338 = a1[2];
  v340 = (v339 + 4);
  a1[1] = v339 + 4;
  v341 = (v339 + 5);
  if (v338)
  {
    if (v341 >= *v338)
    {
      v342 = malloc_type_realloc(*(v338 + 2), (v340 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
      v343 = a1[2];
      *(v343 + 2) = v342;
      *v343 = (v340 & 0xFFFFFFFFFFFFFF00) + 256;
      *a1 = v342;
    }
  }

  else
  {
    str_alloc(a1, v341);
  }

  v344 = *a1;
  ++a1[1];
  v344[v340] = 58;
  v345 = *(a2 + 32);
  v347 = a1[1];
  v346 = a1[2];
  v348 = (v347 + 4);
  if (v346)
  {
    if (v348 >= *v346)
    {
      v349 = malloc_type_realloc(*(v346 + 2), (v347 + 259) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
      v350 = a1[2];
      *(v350 + 2) = v349;
      *v350 = (v347 + 259) & 0xFFFFFFFFFFFFFF00;
      *a1 = v349;
    }
  }

  else
  {
    str_alloc(a1, v348);
  }

  v351 = &v347[*a1];
  v352 = (v345 >> 12) + 87;
  if (v345 < 0xA000)
  {
    LOBYTE(v352) = (v345 >> 12) | 0x30;
  }

  *v351 = v352;
  v353 = (v345 >> 8) & 0xF;
  if (v353 >= 0xA)
  {
    v354 = v353 + 87;
  }

  else
  {
    v354 = v353 | 0x30;
  }

  v351[1] = v354;
  v355 = v345 >> 4;
  if (v355 >= 0xA)
  {
    v356 = v355 + 87;
  }

  else
  {
    v356 = (v345 >> 4) | 0x30;
  }

  v351[2] = v356;
  if ((v345 & 0xF) >= 0xA)
  {
    v357 = (v345 & 0xF) + 87;
  }

  else
  {
    v357 = v345 & 0xF | 0x30;
  }

  v351[3] = v357;
  v359 = a1[1];
  v358 = a1[2];
  v360 = (v359 + 4);
  a1[1] = v359 + 4;
  v361 = (v359 + 5);
  if (v358)
  {
    if (v361 >= *v358)
    {
      v362 = malloc_type_realloc(*(v358 + 2), (v360 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
      v363 = a1[2];
      *(v363 + 2) = v362;
      *v363 = (v360 & 0xFFFFFFFFFFFFFF00) + 256;
      *a1 = v362;
    }
  }

  else
  {
    str_alloc(a1, v361);
  }

  v364 = *a1;
  ++a1[1];
  v364[v360] = 58;
  v365 = *(a2 + 34);
  v367 = a1[1];
  v366 = a1[2];
  v368 = (v367 + 4);
  if (v366)
  {
    if (v368 >= *v366)
    {
      v369 = malloc_type_realloc(*(v366 + 2), (v367 + 259) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
      v370 = a1[2];
      *(v370 + 2) = v369;
      *v370 = (v367 + 259) & 0xFFFFFFFFFFFFFF00;
      *a1 = v369;
    }
  }

  else
  {
    str_alloc(a1, v368);
  }

  v371 = &v367[*a1];
  v372 = (v365 >> 12) + 87;
  if (v365 < 0xA000)
  {
    LOBYTE(v372) = (v365 >> 12) | 0x30;
  }

  *v371 = v372;
  v373 = (v365 >> 8) & 0xF;
  if (v373 >= 0xA)
  {
    v374 = v373 + 87;
  }

  else
  {
    v374 = v373 | 0x30;
  }

  v371[1] = v374;
  v375 = v365 >> 4;
  if (v375 >= 0xA)
  {
    v376 = v375 + 87;
  }

  else
  {
    v376 = (v365 >> 4) | 0x30;
  }

  v371[2] = v376;
  if ((v365 & 0xF) >= 0xA)
  {
    v377 = (v365 & 0xF) + 87;
  }

  else
  {
    v377 = v365 & 0xF | 0x30;
  }

  v371[3] = v377;
  v379 = a1[1];
  v378 = a1[2];
  v380 = (v379 + 4);
  a1[1] = v379 + 4;
  v381 = (v379 + 5);
  if (v378)
  {
    if (v381 >= *v378)
    {
      v382 = malloc_type_realloc(*(v378 + 2), (v380 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
      v383 = a1[2];
      *(v383 + 2) = v382;
      *v383 = (v380 & 0xFFFFFFFFFFFFFF00) + 256;
      *a1 = v382;
    }
  }

  else
  {
    str_alloc(a1, v381);
  }

  v384 = *a1;
  ++a1[1];
  v384[v380] = 58;
  v385 = *(a2 + 36);
  v387 = a1[1];
  v386 = a1[2];
  v388 = (v387 + 4);
  if (v386)
  {
    if (v388 >= *v386)
    {
      v389 = malloc_type_realloc(*(v386 + 2), (v387 + 259) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
      v390 = a1[2];
      *(v390 + 2) = v389;
      *v390 = (v387 + 259) & 0xFFFFFFFFFFFFFF00;
      *a1 = v389;
    }
  }

  else
  {
    str_alloc(a1, v388);
  }

  v391 = &v387[*a1];
  v392 = (v385 >> 12) + 87;
  if (v385 < 0xA000)
  {
    LOBYTE(v392) = (v385 >> 12) | 0x30;
  }

  *v391 = v392;
  v393 = (v385 >> 8) & 0xF;
  if (v393 >= 0xA)
  {
    v394 = v393 + 87;
  }

  else
  {
    v394 = v393 | 0x30;
  }

  v391[1] = v394;
  v395 = v385 >> 4;
  if (v395 >= 0xA)
  {
    v396 = v395 + 87;
  }

  else
  {
    v396 = (v385 >> 4) | 0x30;
  }

  v391[2] = v396;
  if ((v385 & 0xF) >= 0xA)
  {
    v397 = (v385 & 0xF) + 87;
  }

  else
  {
    v397 = v385 & 0xF | 0x30;
  }

  v391[3] = v397;
  v399 = a1[1];
  v398 = a1[2];
  v400 = (v399 + 4);
  a1[1] = v399 + 4;
  v401 = (v399 + 5);
  if (v398)
  {
    if (v401 >= *v398)
    {
      v402 = malloc_type_realloc(*(v398 + 2), (v400 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
      v403 = a1[2];
      *(v403 + 2) = v402;
      *v403 = (v400 & 0xFFFFFFFFFFFFFF00) + 256;
      *a1 = v402;
    }
  }

  else
  {
    str_alloc(a1, v401);
  }

  v404 = *a1;
  ++a1[1];
  v404[v400] = 58;
  v405 = *(a2 + 40);
  v407 = a1[1];
  v406 = a1[2];
  v408 = (v407 + 2);
  if (v406)
  {
    if (v408 >= *v406)
    {
      v409 = malloc_type_realloc(*(v406 + 2), (v407 + 257) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
      v410 = a1[2];
      *(v410 + 2) = v409;
      *v410 = (v407 + 257) & 0xFFFFFFFFFFFFFF00;
      *a1 = v409;
    }
  }

  else
  {
    str_alloc(a1, v408);
  }

  v411 = &v407[*a1];
  v412 = (v405 >> 4) + 87;
  if (v405 < 0xA0)
  {
    LOBYTE(v412) = (v405 >> 4) | 0x30;
  }

  *v411 = v412;
  if ((v405 & 0xF) >= 0xA)
  {
    v413 = (v405 & 0xF) + 87;
  }

  else
  {
    v413 = v405 & 0xF | 0x30;
  }

  v411[1] = v413;
  v415 = a1[1];
  v414 = a1[2];
  v416 = (v415 + 2);
  a1[1] = v415 + 2;
  v417 = (v415 + 3);
  if (v414)
  {
    if (v417 >= *v414)
    {
      v418 = malloc_type_realloc(*(v414 + 2), (v416 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
      v419 = a1[2];
      *(v419 + 2) = v418;
      *v419 = (v416 & 0xFFFFFFFFFFFFFF00) + 256;
      *a1 = v418;
    }
  }

  else
  {
    str_alloc(a1, v417);
  }

  v420 = *a1;
  ++a1[1];
  v420[v416] = 58;
  v421 = *(a2 + 41);
  v423 = a1[1];
  v422 = a1[2];
  v424 = v423 + 1;
  if (v422)
  {
    if (v424 >= *v422)
    {
      v425 = malloc_type_realloc(*(v422 + 2), (v423 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
      v426 = a1[2];
      *(v426 + 2) = v425;
      *v426 = (v423 & 0xFFFFFFFFFFFFFF00) + 256;
      *a1 = v425;
    }
  }

  else
  {
    str_alloc(a1, v424);
  }

  if ((v421 & 0xFu) >= 0xA)
  {
    v427 = (v421 & 0xF) + 87;
  }

  else
  {
    v427 = v421 & 0xF | 0x30;
  }

  (*a1)[v423] = v427;
  v429 = a1[1];
  v428 = a1[2];
  v430 = (v429 + 1);
  a1[1] = v429 + 1;
  v431 = (v429 + 2);
  if (v428)
  {
    if (v431 >= *v428)
    {
      v432 = malloc_type_realloc(*(v428 + 2), (v430 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
      v433 = a1[2];
      *(v433 + 2) = v432;
      *v433 = (v430 & 0xFFFFFFFFFFFFFF00) + 256;
      *a1 = v432;
    }
  }

  else
  {
    str_alloc(a1, v431);
  }

  v434 = *a1;
  ++a1[1];
  v434[v430] = 58;
  v435 = *(a2 + 42);
  v437 = a1[1];
  v436 = a1[2];
  v438 = v437 + 1;
  if (v436)
  {
    if (v438 >= *v436)
    {
      v439 = malloc_type_realloc(*(v436 + 2), (v437 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
      v440 = a1[2];
      *(v440 + 2) = v439;
      *v440 = (v437 & 0xFFFFFFFFFFFFFF00) + 256;
      *a1 = v439;
    }
  }

  else
  {
    str_alloc(a1, v438);
  }

  if ((v435 & 0xFu) >= 0xA)
  {
    v441 = (v435 & 0xF) + 87;
  }

  else
  {
    v441 = v435 & 0xF | 0x30;
  }

  (*a1)[v437] = v441;
  v443 = a1[1];
  v442 = a1[2];
  v444 = (v443 + 1);
  a1[1] = v443 + 1;
  v445 = (v443 + 2);
  if (v442)
  {
    if (v445 >= *v442)
    {
      v446 = malloc_type_realloc(*(v442 + 2), (v444 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
      v447 = a1[2];
      *(v447 + 2) = v446;
      *v447 = (v444 & 0xFFFFFFFFFFFFFF00) + 256;
      *a1 = v446;
    }
  }

  else
  {
    str_alloc(a1, v445);
  }

  v448 = *a1;
  ++a1[1];
  v448[v444] = 58;
  v449 = *(a2 + 43);
  v451 = a1[1];
  v450 = a1[2];
  v452 = v451 + 1;
  if (v450)
  {
    if (v452 >= *v450)
    {
      v453 = malloc_type_realloc(*(v450 + 2), (v451 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
      v454 = a1[2];
      *(v454 + 2) = v453;
      *v454 = (v451 & 0xFFFFFFFFFFFFFF00) + 256;
      *a1 = v453;
    }
  }

  else
  {
    str_alloc(a1, v452);
  }

  if ((v449 & 0xFu) >= 0xA)
  {
    v455 = (v449 & 0xF) + 87;
  }

  else
  {
    v455 = v449 & 0xF | 0x30;
  }

  (*a1)[v451] = v455;
  v457 = a1[1];
  v456 = a1[2];
  v458 = (v457 + 1);
  a1[1] = v457 + 1;
  v459 = (v457 + 2);
  if (!v456)
  {
    str_alloc(a1, v459);
    v463 = *a1;
    ++a1[1];
    v463[v458] = 10;
    if (a4)
    {
      return;
    }

    goto LABEL_298;
  }

  if (v459 >= *v456)
  {
    v460 = malloc_type_realloc(*(v456 + 2), (v458 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
    v461 = a1[2];
    *(v461 + 2) = v460;
    *v461 = (v458 & 0xFFFFFFFFFFFFFF00) + 256;
    *a1 = v460;
  }

  v462 = *a1;
  ++a1[1];
  v462[v458] = 10;
  if ((a4 & 1) == 0)
  {
LABEL_298:

    str_close(a1, v203, *&v202, v201);
  }
}

void HGString::HGString(HGString *this)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
}

void HGString::HGString(HGString *this, HGString *a2, int a3, unsigned int a4)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  if (a2)
  {
    v8 = HGString::isdistilled(a2, a2);
    v9 = v8;
    if (v8)
    {
      if (a4 != 255 || a3)
      {
        str_alloc(this, v8);
        if (a4 == 255)
        {
          v11 = *(this + 1);
          v10 = *(this + 2);
          v12 = v11 + v9;
          if (v10)
          {
            if (v12 >= *v10)
            {
              v13 = (v12 + 255) & 0xFFFFFFFFFFFFFF00;
              v14 = malloc_type_realloc(*(v10 + 16), v13, 0x100004077774924uLL);
              v15 = *(this + 2);
              v15[2] = v14;
              *v15 = v13;
              *this = v14;
            }
          }

          else
          {
            str_alloc(this, v12);
          }

          v22 = *this;
          *(this + 1) += v9;
          memcpy((v22 + v11), a2, v9);
          str_close(this, v23, v24, v25);
        }

        else
        {
          v17 = *(this + 1);
          v16 = *(this + 2);
          v18 = v17 + v9 - 72;
          if (v16)
          {
            if (v18 >= *v16)
            {
              v19 = (v18 + 255) & 0xFFFFFFFFFFFFFF00;
              v20 = malloc_type_realloc(*(v16 + 16), v19, 0x100004077774924uLL);
              v21 = *(this + 2);
              v21[2] = v20;
              *v21 = v19;
              *this = v20;
            }
          }

          else
          {
            str_alloc(this, v18);
          }

          v26 = *this;
          *(this + 1) += v9 - 72;
          memcpy((v26 + v17), a2, v9 - 72);
          v28 = *(this + 1);
          v27 = *(this + 2);
          v29 = v28 + 8;
          if (v27)
          {
            if (v29 >= *v27)
            {
              v30 = malloc_type_realloc(*(v27 + 16), (v28 + 263) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
              v31 = *(this + 2);
              v31[2] = v30;
              *v31 = (v28 + 263) & 0xFFFFFFFFFFFFFF00;
              *this = v30;
            }
          }

          else
          {
            str_alloc(this, v29);
          }

          v32 = *this;
          *(this + 1) += 8;
          *(v32 + v28) = 0x3030303030303030;
          v34 = *(this + 1);
          v33 = *(this + 2);
          v35 = v34 + 64;
          if (v33)
          {
            if (v35 >= *v33)
            {
              v36 = malloc_type_realloc(*(v33 + 16), (v34 + 319) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
              v37 = *(this + 2);
              v37[2] = v36;
              *v37 = (v34 + 319) & 0xFFFFFFFFFFFFFF00;
              *this = v36;
            }
          }

          else
          {
            str_alloc(this, v35);
          }

          v38 = *this;
          *(this + 1) += 64;
          v39 = (v38 + v34);
          v40 = *(a2 + v9 - 64);
          v41 = *(a2 + v9 - 48);
          v42 = *(a2 + v9 - 32);
          v43 = *(a2 + v9 - 16);
          v39[2] = v42;
          v39[3] = v43;
          *v39 = v40;
          v39[1] = v41;
          str_close(this, *&v40, *&v41, v42);
        }
      }

      else
      {
        *this = a2;
        *(this + 1) = v8;
      }
    }

    else
    {
      HGString::_distill(this, a2, a4);
    }
  }
}

void sub_25FC2143C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void str_alloc(string_t *a1, uint64_t a2)
{
  v3 = (a2 + 255) & 0xFFFFFFFFFFFFFF00;
  v4 = a1[2];
  if (v4 && *(v4 + 1) < 2uLL)
  {
    v5 = malloc_type_malloc(0x18uLL, 0x1010040A79CA2DEuLL);
    *(v5 + 2) = malloc_type_realloc(*(a1[2] + 2), v3, 0x100004077774924uLL);
    v6 = a1[2];
    *v5 = v3;
    *(v5 + 1) = 1;
    a1[2] = v5;
    free(v6);
    *a1 = *(v5 + 2);
  }

  else
  {
    v7 = malloc_type_malloc(0x18uLL, 0x1010040A79CA2DEuLL);
    v8 = malloc_type_malloc(v3, 0x100004077774924uLL);
    *(v7 + 2) = v8;
    bzero(v8, v3);
    *(v7 + 1) = 1;
    v9 = a1[1];
    if (v9)
    {
      memcpy(*(v7 + 2), *a1, v9);
    }

    v10 = a1[2];
    if (v10)
    {
      --*(v10 + 1);
    }

    *v7 = v3;
    a1[2] = v7;
    *a1 = *(v7 + 2);
  }
}

uint64_t str_close(string_t *a1, double a2, double a3, uint32x4_t a4)
{
  v6 = a1[1];
  v5 = a1[2];
  v7 = v6 + 1;
  if (v5)
  {
    if (v7 >= *v5)
    {
      v8 = malloc_type_realloc(*(v5 + 2), (v6 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
      v9 = a1[2];
      *(v9 + 2) = v8;
      *v9 = (v6 & 0xFFFFFFFFFFFFFF00) + 256;
      *a1 = v8;
    }
  }

  else
  {
    str_alloc(a1, v7);
  }

  (*a1)[v6] = 0;
  *(*a1 + 22) = 48;
  *(*a1 + 23) = 48;
  v10 = *(a1 + 2);
  v11 = vdup_n_s32(v10);
  v12 = vshl_u32(v11, 0xFFFFFFF0FFFFFFECLL);
  *v13.i8 = vshl_u32(v11, 0xFFFFFFF8FFFFFFF4);
  a4.i64[0] = v10 | 0xFFFFFFF800000000;
  v14 = vshrq_n_u32(a4, 0x1CuLL).u32[0];
  a4.i32[1] = HIBYTE(v10);
  a4.u64[1] = v12;
  v15.i64[0] = 0xF0000000FLL;
  v15.i64[1] = 0xF0000000FLL;
  v16 = vandq_s8(a4, v15);
  v17 = v16;
  v17.i32[0] = v14;
  v13.i32[2] = v10 >> 4;
  v13.i32[3] = v10;
  v16.i32[0] = v10;
  v18 = vandq_s8(v13, v15);
  v19 = vcgtq_u32(xmmword_260391100, v16);
  v16.i64[0] = 0xA0000000ALL;
  v16.i64[1] = 0xA0000000ALL;
  *v19.i8 = vmovn_s16(vuzp1q_s16(v19, vcgtq_u32(v16, v18)));
  *v18.i8 = vmovn_s16(vuzp1q_s16(v17, v18));
  *(*a1 + 3) = vbsl_s8(*v19.i8, vorr_s8(*v18.i8, 0x3030303030303030), vadd_s8(*v18.i8, 0x5757575757575757));
  return *a1;
}

void HGString::HGString(HGString *this, const HGString *a2)
{
  v2 = *(a2 + 1);
  *this = *a2;
  *(this + 1) = v2;
  v3 = *(a2 + 2);
  if (v3)
  {
    ++*(v3 + 8);
  }

  *(this + 3) = 0;
  *(this + 2) = v3;
  *(this + 4) = 0;
  *(this + 5) = 0;
  v5 = *(a2 + 3);
  v4 = *(a2 + 4);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }
}

void sub_25FC21758(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void HGString::~HGString(HGString *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8) - 1;
    *(v2 + 8) = v3;
    if (!v3)
    {
      free(*(v2 + 16));
      free(*(this + 2));
    }
  }

  v4 = *(this + 3);
  if (v4)
  {
    *(this + 4) = v4;
    operator delete(v4);
  }
}

string_t *HGString::set(string_t *this, HGString *a2, const char *a3, int a4, unsigned int a5)
{
  if (*this != a2)
  {
    if (a2)
    {
      v10 = HGString::isdistilled(a2, a2);
      if (!v10)
      {
        this[1] = 0;
        HGString::_distill(this, a2, a5);
        return this;
      }

      v11 = v10;
      str_alloc(this, v10);
      if (a5 != 255)
      {
        this[1] = 0;
        v19 = v11 - 72;
        v20 = this[2];
        if (v20)
        {
          if (v19 >= *v20)
          {
            v21 = malloc_type_realloc(*(v20 + 2), (v11 + 183) & 0x1FFFFFF00, 0x100004077774924uLL);
            v22 = this[2];
            *(v22 + 2) = v21;
            *v22 = (v11 + 183) & 0x1FFFFFF00;
            *this = v21;
          }
        }

        else
        {
          str_alloc(this, v11 - 72);
        }

        v25 = *this;
        this[1] += v19;
        memcpy(v25, a2, v11 - 72);
        v27 = this[1];
        v26 = this[2];
        v28 = (v27 + 8);
        if (v26)
        {
          if (v28 >= *v26)
          {
            v29 = malloc_type_realloc(*(v26 + 2), (v27 + 263) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
            v30 = this[2];
            *(v30 + 2) = v29;
            *v30 = (v27 + 263) & 0xFFFFFFFFFFFFFF00;
            *this = v29;
          }
        }

        else
        {
          str_alloc(this, v28);
        }

        v31 = &v27[*this];
        v32 = a5 >> 4;
        if (v32 >= 0xA)
        {
          v33 = v32 + 87;
        }

        else
        {
          v33 = (a5 >> 4) | 0x30;
        }

        *(v31 + 2) = 12336;
        *v31 = 808464432;
        v31[6] = v33;
        if ((a5 & 0xF) >= 0xA)
        {
          v34 = (a5 & 0xF) + 87;
        }

        else
        {
          v34 = a5 & 0xF | 0x30;
        }

        v31[7] = v34;
        v35 = this[1];
        v36 = this[2];
        v37 = v35 + 8;
        this[1] = v35 + 8;
        v38 = (a2 + v11 - 64);
        v39 = (v35 + 72);
        if (v36)
        {
          if (v39 >= *v36)
          {
            v40 = (v35 + 327) & 0xFFFFFFFFFFFFFF00;
            v41 = malloc_type_realloc(*(v36 + 2), v40, 0x100004077774924uLL);
            v42 = this[2];
            *(v42 + 2) = v41;
            *v42 = v40;
            *this = v41;
          }
        }

        else
        {
          str_alloc(this, v39);
        }

        v43 = *this;
        this[1] += 64;
        v44 = &v37[v43];
        v45 = *v38;
        v46 = v38[1];
        v47 = v38[2];
        v48 = v38[3];
        v44[2] = v47;
        v44[3] = v48;
        *v44 = v45;
        v44[1] = v46;
        goto LABEL_46;
      }

      if (a4)
      {
        this[1] = 0;
        v12 = this[2];
        if (v12)
        {
          if (v11 >= *v12)
          {
            v13 = malloc_type_realloc(*(v12 + 2), (v11 + 255) & 0x1FFFFFF00, 0x100004077774924uLL);
            v14 = this[2];
            *(v14 + 2) = v13;
            *v14 = (v11 + 255) & 0x1FFFFFF00;
            *this = v13;
          }
        }

        else
        {
          str_alloc(this, v11);
        }

        v49 = *this;
        this[1] += v11;
        memcpy(v49, a2, v11);
LABEL_46:
        str_close(this, *v45.i64, *v46.i64, v47);
        return this;
      }

      v23 = this[2];
      if (v23)
      {
        v24 = *(v23 + 1) - 1;
        *(v23 + 1) = v24;
        if (!v24)
        {
          free(*(v23 + 2));
          free(this[2]);
        }
      }

      *this = a2;
      this[1] = a3;
    }

    else
    {
      v17 = this[2];
      if (v17)
      {
        v18 = *(v17 + 1) - 1;
        *(v17 + 1) = v18;
        if (!v18)
        {
          free(*(v17 + 2));
          free(this[2]);
        }
      }

      *this = 0;
      this[1] = 0;
    }

    this[2] = 0;
    return this;
  }

  if (a2)
  {
    v15 = this[1];
    if (v15)
    {
      if (!a5 && ctype[2 * v15[*this - 65]] & 0xF | (16 * ctype[2 * v15[*this - 66]]))
      {
        str_alloc(this, v15);
        *&this[1][*this - 72] = 0x3030303030303030;
      }
    }
  }

  return this;
}

void *HGString::operator=(void *result, void *a2)
{
  v2 = *a2;
  if (*result != *a2)
  {
    v3 = result[2];
    if (v3)
    {
      v4 = *(v3 + 8) - 1;
      *(v3 + 8) = v4;
      if (!v4)
      {
        v5 = result;
        v6 = a2;
        free(*(v3 + 16));
        free(v5[2]);
        a2 = v6;
        result = v5;
        v2 = *v6;
      }
    }

    v8 = a2[1];
    v7 = a2[2];
    *result = v2;
    result[1] = v8;
    result[2] = v7;
    if (v7)
    {
      ++*(v7 + 8);
    }
  }

  return result;
}

unint64_t HGString::hash(HGString *this, uint8x8_t a2)
{
  v2 = *this + *(this + 1);
  v3 = *(v2 - 132);
  if (v3 <= 96)
  {
    v4 = 0;
  }

  else
  {
    v4 = 9;
  }

  v5 = (v4 + v3) << 28;
  v6 = *(v2 - 131);
  if (v6 <= 96)
  {
    v7 = 0;
  }

  else
  {
    v7 = 217;
  }

  a2.i32[0] = *(v2 - 130);
  v8 = vmovl_u16(*&vmovl_u8(a2));
  v9.i64[0] = v8.u32[0];
  v9.i64[1] = v8.u32[1];
  v10 = vshlq_n_s64(v9, 0x38uLL);
  v9.i64[0] = v8.u32[2];
  v9.i64[1] = v8.u32[3];
  v11 = vshlq_n_s64(v9, 0x38uLL);
  v12 = vdupq_n_s64(0x60uLL);
  v13 = vdupq_n_s64(0xFFFFFFD9uLL);
  v14 = vaddq_s64(vshlq_u64(vsraq_n_s64(vandq_s8(vcgtq_s64(vshrq_n_s64(v11, 0x38uLL), v12), v13), v11, 0x38uLL), xmmword_260391120), xmmword_260391130);
  v15 = vaddq_s64(vshlq_u64(vsraq_n_s64(vandq_s8(vcgtq_s64(vshrq_n_s64(v10, 0x38uLL), v12), v13), v10, 0x38uLL), xmmword_260391110), xmmword_260391140);
  v16 = *(v2 - 126);
  v17 = v16 - 48;
  if (v16 <= 96)
  {
    v18 = 0;
  }

  else
  {
    v18 = -39;
  }

  v19 = v17 + v18;
  v20 = *(v2 - 125);
  v21 = v20 - 48;
  if (v20 <= 96)
  {
    v22 = 0;
  }

  else
  {
    v22 = -39;
  }

  v23 = vorrq_s8(v15, v14);
  v24 = vorr_s8(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
  v25 = v24.i32[0] | (((v6 + v7) << 24) - 805306368) | v5 | (16 * v19) | (v21 + v22);
  v26 = *(v2 - 123);
  if (v26 <= 96)
  {
    v27 = 0;
  }

  else
  {
    v27 = 9;
  }

  v28 = (v27 + v26) << 28;
  v29 = *(v2 - 122);
  if (v29 <= 96)
  {
    v30 = 0;
  }

  else
  {
    v30 = 217;
  }

  v31 = ((v29 + v30) << 24) - 805306368;
  v24.i32[0] = *(v2 - 121);
  v32 = vmovl_u16(*&vmovl_u8(v24));
  v33.i64[0] = v32.u32[0];
  v33.i64[1] = v32.u32[1];
  v34 = vshlq_n_s64(v33, 0x38uLL);
  v33.i64[0] = v32.u32[2];
  v33.i64[1] = v32.u32[3];
  v35 = vshlq_n_s64(v33, 0x38uLL);
  v36 = vsraq_n_s64(vandq_s8(vcgtq_s64(vshrq_n_s64(v35, 0x38uLL), v12), v13), v35, 0x38uLL);
  v37 = vshlq_u64(vsraq_n_s64(vandq_s8(vcgtq_s64(vshrq_n_s64(v34, 0x38uLL), v12), v13), v34, 0x38uLL), xmmword_260391110);
  v38 = vaddq_s64(vshlq_u64(v36, xmmword_260391120), xmmword_260391130);
  v39 = vaddq_s64(v37, xmmword_260391140);
  v40 = *(v2 - 117);
  v41 = v40 - 48;
  if (v40 <= 96)
  {
    v42 = 0;
  }

  else
  {
    v42 = -39;
  }

  v43 = v41 + v42;
  v44 = *(v2 - 116);
  v45 = v44 - 48;
  if (v44 <= 96)
  {
    v46 = 0;
  }

  else
  {
    v46 = -39;
  }

  v47 = vorrq_s8(v39, v38);
  return v25 | ((vorr_s8(*v47.i8, *&vextq_s8(v47, v47, 8uLL)).u32[0] | v31 | v28 | (16 * v43) | (v45 + v46)) << 32);
}

string_t HGString::c_str(string_t *this, double a2, double a3, uint32x4_t a4)
{
  if (!*this || this[2] || this[1][*this])
  {
    return str_close(this, a2, a3, a4);
  }

  else
  {
    return *this;
  }
}

uint64_t HGString::signature@<X0>(HGString **this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v4 = *this;
  if (v4)
  {
    v5 = HGString::target(v4, (this[1] != 0));
    *a2 = v5;
    v6 = *this;
    if (v5)
    {
      v7 = 0;
      v8 = this[1] + v6 - 90;
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = v6 + 48;
  v7 = 1;
LABEL_6:
  v9 = *v8;
  if (v9 <= 96)
  {
    v10 = 0;
  }

  else
  {
    v10 = 9;
  }

  v11 = v10 + v9;
  v12 = v8[1];
  if (v12 <= 96)
  {
    v13 = 0;
  }

  else
  {
    v13 = 217;
  }

  v14 = (((v12 + v13) << 24) - 805306368) | (v11 << 28);
  v15 = v8[2];
  if (v15 <= 96)
  {
    v16 = 0;
  }

  else
  {
    v16 = -39;
  }

  v17 = ((v15 + v16) << 20) - 50331648;
  v18 = v8[3];
  if (v18 <= 96)
  {
    v19 = 0;
  }

  else
  {
    v19 = -39;
  }

  v20 = v17 | (((v18 + v19) << 16) - 3145728);
  v21 = v8[4];
  if (v21 <= 96)
  {
    v22 = 0;
  }

  else
  {
    v22 = -39;
  }

  v23 = v14 | v20 | (((v21 + v22) << 12) - 196608);
  v24 = v8[5];
  if (v24 <= 96)
  {
    v25 = 0;
  }

  else
  {
    v25 = -39;
  }

  v26 = ((v24 + v25) << 8) - 12288;
  v27 = v8[6];
  if (v27 <= 96)
  {
    v28 = 0;
  }

  else
  {
    v28 = -39;
  }

  v29 = v26 | (16 * (v27 + v28) - 768);
  v30 = v8[7];
  if (v30 <= 96)
  {
    v31 = 0;
  }

  else
  {
    v31 = -39;
  }

  *(a2 + 4) = v23 | v29 | (v30 + v31 - 48);
  v32 = v8[9];
  if (v32 <= 96)
  {
    v33 = 0;
  }

  else
  {
    v33 = 9;
  }

  v34 = v33 + v32;
  v35 = v8[10];
  if (v35 <= 96)
  {
    v36 = 0;
  }

  else
  {
    v36 = 217;
  }

  v37 = (((v35 + v36) << 24) - 805306368) | (v34 << 28);
  v38 = v8[11];
  if (v38 <= 96)
  {
    v39 = 0;
  }

  else
  {
    v39 = -39;
  }

  v40 = ((v38 + v39) << 20) - 50331648;
  v41 = v8[12];
  if (v41 <= 96)
  {
    v42 = 0;
  }

  else
  {
    v42 = -39;
  }

  v43 = v40 | (((v41 + v42) << 16) - 3145728);
  v44 = v8[13];
  if (v44 <= 96)
  {
    v45 = 0;
  }

  else
  {
    v45 = -39;
  }

  v46 = v37 | v43 | (((v44 + v45) << 12) - 196608);
  v47 = v8[14];
  if (v47 <= 96)
  {
    v48 = 0;
  }

  else
  {
    v48 = -39;
  }

  v49 = ((v47 + v48) << 8) - 12288;
  v50 = v8[15];
  if (v50 <= 96)
  {
    v51 = 0;
  }

  else
  {
    v51 = -39;
  }

  v52 = v49 | (16 * (v50 + v51) - 768);
  v53 = v8[16];
  if (v53 <= 96)
  {
    v54 = 0;
  }

  else
  {
    v54 = -39;
  }

  v55 = v46 | v52 | (v53 + v54 - 48);
  *(a2 + 8) = v55;
  v56 = v8[18];
  if (v56 <= 96)
  {
    v57 = 0;
  }

  else
  {
    v57 = 9;
  }

  v58 = v57 + v56;
  v59 = v8[19];
  if (v59 <= 96)
  {
    v60 = 0;
  }

  else
  {
    v60 = 217;
  }

  v61 = (((v59 + v60) << 24) - 805306368) | (v58 << 28);
  v62 = v8[20];
  if (v62 <= 96)
  {
    v63 = 0;
  }

  else
  {
    v63 = -39;
  }

  v64 = ((v62 + v63) << 20) - 50331648;
  v65 = v8[21];
  if (v65 <= 96)
  {
    v66 = 0;
  }

  else
  {
    v66 = -39;
  }

  v67 = v64 | (((v65 + v66) << 16) - 3145728);
  v68 = v8[22];
  if (v68 <= 96)
  {
    v69 = 0;
  }

  else
  {
    v69 = -39;
  }

  v70 = v61 | v67 | (((v68 + v69) << 12) - 196608);
  v71 = v8[23];
  if (v71 <= 96)
  {
    v72 = 0;
  }

  else
  {
    v72 = -39;
  }

  v73 = ((v71 + v72) << 8) - 12288;
  v74 = v8[24];
  if (v74 <= 96)
  {
    v75 = 0;
  }

  else
  {
    v75 = -39;
  }

  v76 = v73 | (16 * (v74 + v75) - 768);
  v77 = v8[25];
  if (v77 <= 96)
  {
    v78 = 0;
  }

  else
  {
    v78 = -39;
  }

  *(a2 + 12) = v70 | v76 | (v77 + v78 - 48);
  v79 = v8[27];
  if (v79 <= 96)
  {
    v80 = 0;
  }

  else
  {
    v80 = 9;
  }

  v81 = v80 + v79;
  v82 = v8[28];
  if (v82 <= 96)
  {
    v83 = 0;
  }

  else
  {
    v83 = 217;
  }

  v84 = (((v82 + v83) << 24) - 805306368) | (v81 << 28);
  v85 = v8[29];
  if (v85 <= 96)
  {
    v86 = 0;
  }

  else
  {
    v86 = -39;
  }

  v87 = ((v85 + v86) << 20) - 50331648;
  v88 = v8[30];
  if (v88 <= 96)
  {
    v89 = 0;
  }

  else
  {
    v89 = -39;
  }

  v90 = v87 | (((v88 + v89) << 16) - 3145728);
  v91 = v8[31];
  if (v91 <= 96)
  {
    v92 = 0;
  }

  else
  {
    v92 = -39;
  }

  v93 = v84 | v90 | (((v91 + v92) << 12) - 196608);
  v94 = v8[32];
  if (v94 <= 96)
  {
    v95 = 0;
  }

  else
  {
    v95 = -39;
  }

  v96 = ((v94 + v95) << 8) - 12288;
  v97 = v8[33];
  if (v97 <= 96)
  {
    v98 = 0;
  }

  else
  {
    v98 = -39;
  }

  v99 = v96 | (16 * (v97 + v98) - 768);
  v100 = v8[34];
  if (v100 <= 96)
  {
    v101 = 0;
  }

  else
  {
    v101 = -39;
  }

  *(a2 + 16) = v93 | v99 | (v100 + v101 - 48);
  v102 = v8[36];
  if (v102 <= 96)
  {
    v103 = 0;
  }

  else
  {
    v103 = 9;
  }

  v104 = v103 + v102;
  v105 = v8[37];
  if (v105 <= 96)
  {
    v106 = 0;
  }

  else
  {
    v106 = 217;
  }

  v107 = (((v105 + v106) << 8) - 12288) | (v104 << 12);
  v108 = v8[38];
  if (v108 <= 96)
  {
    v109 = 0;
  }

  else
  {
    v109 = 4057;
  }

  v110 = 16 * (v108 + v109) - 768;
  v111 = v8[39];
  if (v111 <= 96)
  {
    v112 = 0;
  }

  else
  {
    v112 = -39;
  }

  *(a2 + 20) = v107 | v110 | (v111 + v112 - 48);
  v113 = v8[41];
  if (v113 <= 96)
  {
    v114 = 0;
  }

  else
  {
    v114 = 9;
  }

  v115 = v114 + v113;
  v116 = v8[42];
  if (v116 <= 96)
  {
    v117 = 0;
  }

  else
  {
    v117 = 217;
  }

  v118 = (((v116 + v117) << 8) - 12288) | (v115 << 12);
  v119 = v8[43];
  if (v119 <= 96)
  {
    v120 = 0;
  }

  else
  {
    v120 = 4057;
  }

  v121 = 16 * (v119 + v120) - 768;
  v122 = v8[44];
  if (v122 <= 96)
  {
    v123 = 0;
  }

  else
  {
    v123 = -39;
  }

  v124 = v118 | v121 | (v122 + v123 - 48);
  *(a2 + 22) = v124;
  v125 = v8[46];
  if (v125 <= 96)
  {
    v126 = 0;
  }

  else
  {
    v126 = 9;
  }

  v127 = v126 + v125;
  v128 = v8[47];
  if (v128 <= 96)
  {
    v129 = 0;
  }

  else
  {
    v129 = 217;
  }

  v130 = (((v128 + v129) << 8) - 12288) | (v127 << 12);
  v131 = v8[48];
  if (v131 <= 96)
  {
    v132 = 0;
  }

  else
  {
    v132 = 4057;
  }

  v133 = 16 * (v131 + v132) - 768;
  v134 = v8[49];
  if (v134 <= 96)
  {
    v135 = 0;
  }

  else
  {
    v135 = -39;
  }

  *(a2 + 24) = v130 | v133 | (v134 + v135 - 48);
  v136 = v8[51];
  if (v136 <= 96)
  {
    v137 = 96;
  }

  else
  {
    v137 = 9;
  }

  v138 = v137 + v136;
  v139 = v8[52];
  if (v139 <= 96)
  {
    v140 = 0;
  }

  else
  {
    v140 = -39;
  }

  *(a2 + 26) = (v139 + v140 - 48) | (16 * v138);
  v141 = v8[53];
  if (v141 <= 96)
  {
    v142 = 96;
  }

  else
  {
    v142 = 9;
  }

  v143 = v142 + v141;
  v144 = v8[54];
  if (v144 <= 96)
  {
    v145 = 0;
  }

  else
  {
    v145 = -39;
  }

  *(a2 + 27) = (v144 + v145 - 48) | (16 * v143);
  v146 = v8[56];
  if (v146 <= 96)
  {
    v147 = 96;
  }

  else
  {
    v147 = 9;
  }

  v148 = v147 + v146;
  v149 = v8[57];
  if (v149 <= 96)
  {
    v150 = 0;
  }

  else
  {
    v150 = -39;
  }

  *(a2 + 28) = (v149 + v150 - 48) | (16 * v148);
  v151 = v8[58];
  if (v151 <= 96)
  {
    v152 = 96;
  }

  else
  {
    v152 = 9;
  }

  v153 = v152 + v151;
  v154 = v8[59];
  if (v154 <= 96)
  {
    v155 = 0;
  }

  else
  {
    v155 = -39;
  }

  *(a2 + 29) = (v154 + v155 - 48) | (16 * v153);
  v156 = v8[61];
  if (v156 <= 96)
  {
    v157 = 0;
  }

  else
  {
    v157 = 9;
  }

  v158 = v157 + v156;
  v159 = v8[62];
  if (v159 <= 96)
  {
    v160 = 0;
  }

  else
  {
    v160 = 217;
  }

  v161 = (((v159 + v160) << 8) - 12288) | (v158 << 12);
  v162 = v8[63];
  if (v162 <= 96)
  {
    v163 = 0;
  }

  else
  {
    v163 = 4057;
  }

  v164 = 16 * (v162 + v163) - 768;
  v165 = v8[64];
  if (v165 <= 96)
  {
    v166 = 0;
  }

  else
  {
    v166 = -39;
  }

  *(a2 + 30) = v161 | v164 | (v165 + v166 - 48);
  v167 = v8[66];
  if (v167 <= 96)
  {
    v168 = 0;
  }

  else
  {
    v168 = 9;
  }

  v169 = v168 + v167;
  v170 = v8[67];
  if (v170 <= 96)
  {
    v171 = 0;
  }

  else
  {
    v171 = 217;
  }

  v172 = (((v170 + v171) << 8) - 12288) | (v169 << 12);
  v173 = v8[68];
  if (v173 <= 96)
  {
    v174 = 0;
  }

  else
  {
    v174 = 4057;
  }

  v175 = 16 * (v173 + v174) - 768;
  v176 = v8[69];
  if (v176 <= 96)
  {
    v177 = 0;
  }

  else
  {
    v177 = -39;
  }

  *(a2 + 32) = v172 | v175 | (v176 + v177 - 48);
  v178 = v8[71];
  if (v178 <= 96)
  {
    v179 = 0;
  }

  else
  {
    v179 = 9;
  }

  v180 = v179 + v178;
  v181 = v8[72];
  if (v181 <= 96)
  {
    v182 = 0;
  }

  else
  {
    v182 = 217;
  }

  v183 = (((v181 + v182) << 8) - 12288) | (v180 << 12);
  v184 = v8[73];
  if (v184 <= 96)
  {
    v185 = 0;
  }

  else
  {
    v185 = 4057;
  }

  v186 = 16 * (v184 + v185) - 768;
  v187 = v8[74];
  if (v187 <= 96)
  {
    v188 = 0;
  }

  else
  {
    v188 = -39;
  }

  *(a2 + 34) = v183 | v186 | (v187 + v188 - 48);
  v189 = v8[76];
  if (v189 <= 96)
  {
    v190 = 0;
  }

  else
  {
    v190 = 9;
  }

  v191 = v190 + v189;
  v192 = v8[77];
  if (v192 <= 96)
  {
    v193 = 0;
  }

  else
  {
    v193 = 217;
  }

  v194 = (((v192 + v193) << 8) - 12288) | (v191 << 12);
  v195 = v8[78];
  if (v195 <= 96)
  {
    v196 = 0;
  }

  else
  {
    v196 = 4057;
  }

  v197 = 16 * (v195 + v196) - 768;
  v198 = v8[79];
  if (v198 <= 96)
  {
    result = 0;
  }

  else
  {
    result = 4294967257;
  }

  v200 = v194 | v197 | (v198 + result - 48);
  *(a2 + 36) = v200;
  v201 = v8[81];
  if (v201 <= 96)
  {
    v202 = 96;
  }

  else
  {
    v202 = 9;
  }

  v203 = v202 + v201;
  v204 = v8[82];
  if (v204 <= 96)
  {
    v205 = 0;
  }

  else
  {
    v205 = -39;
  }

  *(a2 + 40) = (v204 + v205 - 48) | (16 * v203);
  v206 = v8[84];
  if (v206 <= 96)
  {
    v207 = 0;
  }

  else
  {
    v207 = -39;
  }

  *(a2 + 41) = v206 + v207 - 48;
  v208 = v8[86];
  if (v208 <= 96)
  {
    v209 = 0;
  }

  else
  {
    v209 = -39;
  }

  *(a2 + 42) = v208 + v209 - 48;
  v210 = v8[88];
  if (v210 <= 96)
  {
    v211 = 0;
  }

  else
  {
    v211 = -39;
  }

  *(a2 + 43) = v210 + v211 - 48;
  if (v7)
  {
    *(a2 + 36) = v200 | (v55 << 8);
    *(a2 + 8) = v55 & 0xFFFFFF00;
  }

  *(a2 + 44) = 16 * v124;
  return result;
}

double HGString::digest@<D0>(HGString *this@<X0>, uint64_t a2@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  result = 0.0;
  *(a2 + 16) = 0u;
  v5 = a2 + 16;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  v6 = *(this + 1);
  if (v6)
  {
    if (v6 != 125 || strncmp(*this, "//MD5=", 6uLL))
    {
      *a2 = HGString::hash(this, *&result);
      *(a2 + 8) = v7;
    }

    HGString::signature(this, v5);
  }

  else
  {
    v8 = *this;
    if (*this)
    {
      v9 = strlen(*this);
      HGDigestInit(a2);
      if (v9 >= 0x40)
      {
        v10 = v9 >> 6;
        do
        {
          HGDigestAdd(a2, v8);
          v8 += 16;
          --v10;
        }

        while (v10);
        v9 &= 0x3Fu;
      }

      if (v9)
      {
        memcpy(__dst, v8, v9);
        bzero(__dst + v9, 64 - v9);
        HGDigestAdd(a2, __dst);
      }

      result = 0.0;
      *(a2 + 48) = 0u;
      *(a2 + 36) = 0u;
      *(a2 + 20) = 0u;
      *(a2 + 16) = 394768;
    }
  }

  return result;
}

double HGString::sample2d@<D0>(HGString *this@<X0>, int a2@<W1>, int a3@<W2>, HGString *a4@<X8>)
{
  if (this != 394784)
  {
    if (this != 394000)
    {
      if (this == 396048 && a3)
      {
        if (a2 > 3)
        {
          if (a2 > 5)
          {
            if (a2 == 6)
            {
              metal_sample2d6_half_s();
              v9 = &qword_280C5D650;
              v10 = a4;
            }

            else
            {
              if (a2 != 7)
              {
                goto LABEL_163;
              }

              metal_sample2d7_half_s();
              v9 = &qword_280C5D680;
              v10 = a4;
            }
          }

          else if (a2 == 4)
          {
            metal_sample2d4_half_s();
            v9 = &qword_280C5D5F0;
            v10 = a4;
          }

          else
          {
            metal_sample2d5_half_s();
            v9 = &qword_280C5D620;
            v10 = a4;
          }
        }

        else if (a2 > 1)
        {
          if (a2 == 2)
          {
            metal_sample2d2_half_s();
            v9 = &qword_280C5D590;
            v10 = a4;
          }

          else
          {
            metal_sample2d3_half_s();
            v9 = &qword_280C5D5C0;
            v10 = a4;
          }
        }

        else if (a2)
        {
          if (a2 != 1)
          {
            goto LABEL_163;
          }

          metal_sample2d1_half_s();
          v9 = &qword_280C5D560;
          v10 = a4;
        }

        else
        {
          metal_sample2d0_half_s();
          v9 = &qword_280C5D530;
          v10 = a4;
        }
      }

      else
      {
        if (this != 396048)
        {
          goto LABEL_163;
        }

        if (a2 > 3)
        {
          if (a2 > 5)
          {
            if (a2 == 6)
            {
              metal_sample2d6_s();
              v9 = &qword_280C5D7D0;
              v10 = a4;
            }

            else
            {
              if (a2 != 7)
              {
                goto LABEL_163;
              }

              metal_sample2d7_s();
              v9 = &qword_280C5D800;
              v10 = a4;
            }
          }

          else if (a2 == 4)
          {
            metal_sample2d4_s();
            v9 = &qword_280C5D770;
            v10 = a4;
          }

          else
          {
            metal_sample2d5_s();
            v9 = &qword_280C5D7A0;
            v10 = a4;
          }
        }

        else if (a2 > 1)
        {
          if (a2 == 2)
          {
            metal_sample2d2_s();
            v9 = &qword_280C5D710;
            v10 = a4;
          }

          else
          {
            metal_sample2d3_s();
            v9 = &qword_280C5D740;
            v10 = a4;
          }
        }

        else if (a2)
        {
          if (a2 != 1)
          {
            goto LABEL_163;
          }

          metal_sample2d1_s();
          v9 = &qword_280C5D6E0;
          v10 = a4;
        }

        else
        {
          metal_sample2d0_s();
          v9 = &qword_280C5D6B0;
          v10 = a4;
        }
      }

      HGString::HGString(v10, v9);
      return result;
    }

    if (a2 <= 3)
    {
      if (a2 <= 1)
      {
        if (a2)
        {
          if (a2 == 1)
          {
            if (atomic_load_explicit(&qword_280C5D048, memory_order_acquire))
            {
              v5 = qword_280C5D268;
              *a4 = qword_280C5D260;
              *(a4 + 1) = v5;
              v6 = xmmword_280C5D270;
              if (!xmmword_280C5D270)
              {
                goto LABEL_10;
              }
            }

            else
            {
              HGString::sample2d();
              v40 = qword_280C5D268;
              *a4 = qword_280C5D260;
              *(a4 + 1) = v40;
              v6 = xmmword_280C5D270;
              if (!xmmword_280C5D270)
              {
LABEL_10:
                *(a4 + 3) = 0;
                *(a4 + 2) = v6;
                *(a4 + 4) = 0;
                *(a4 + 5) = 0;
                if (unk_280C5D280 != *(&xmmword_280C5D270 + 1))
                {
                  if (((unk_280C5D280 - *(&xmmword_280C5D270 + 1)) & 0x8000000000000000) == 0)
                  {
                    operator new();
                  }

                  std::vector<double>::__throw_length_error[abi:ne200100]();
                }

                return result;
              }
            }

            ++*(v6 + 8);
            goto LABEL_10;
          }

LABEL_163:
          result = 0.0;
          *(a4 + 1) = 0u;
          *(a4 + 2) = 0u;
          *a4 = 0u;
          return result;
        }

        if (atomic_load_explicit(&_MergedGlobals_15, memory_order_acquire))
        {
          v24 = unk_280C5D238;
          *a4 = qword_280C5D230;
          *(a4 + 1) = v24;
          v25 = xmmword_280C5D240;
          if (!xmmword_280C5D240)
          {
            goto LABEL_108;
          }
        }

        else
        {
          HGString::sample2d();
          v44 = unk_280C5D238;
          *a4 = qword_280C5D230;
          *(a4 + 1) = v44;
          v25 = xmmword_280C5D240;
          if (!xmmword_280C5D240)
          {
LABEL_108:
            *(a4 + 3) = 0;
            *(a4 + 2) = v25;
            *(a4 + 4) = 0;
            *(a4 + 5) = 0;
            if (unk_280C5D250 != *(&xmmword_280C5D240 + 1))
            {
              if (((unk_280C5D250 - *(&xmmword_280C5D240 + 1)) & 0x8000000000000000) == 0)
              {
                operator new();
              }

              std::vector<double>::__throw_length_error[abi:ne200100]();
            }

            return result;
          }
        }

        ++*(v25 + 8);
        goto LABEL_108;
      }

      if (a2 != 2)
      {
        if (atomic_load_explicit(&qword_280C5D058, memory_order_acquire))
        {
          v16 = qword_280C5D2C8;
          *a4 = qword_280C5D2C0;
          *(a4 + 1) = v16;
          v17 = xmmword_280C5D2D0;
          if (!xmmword_280C5D2D0)
          {
            goto LABEL_60;
          }
        }

        else
        {
          HGString::sample2d();
          v42 = qword_280C5D2C8;
          *a4 = qword_280C5D2C0;
          *(a4 + 1) = v42;
          v17 = xmmword_280C5D2D0;
          if (!xmmword_280C5D2D0)
          {
LABEL_60:
            *(a4 + 3) = 0;
            *(a4 + 2) = v17;
            *(a4 + 4) = 0;
            *(a4 + 5) = 0;
            if (unk_280C5D2E0 != *(&xmmword_280C5D2D0 + 1))
            {
              if (((unk_280C5D2E0 - *(&xmmword_280C5D2D0 + 1)) & 0x8000000000000000) == 0)
              {
                operator new();
              }

              std::vector<double>::__throw_length_error[abi:ne200100]();
            }

            return result;
          }
        }

        ++*(v17 + 8);
        goto LABEL_60;
      }

      if (atomic_load_explicit(&qword_280C5D050, memory_order_acquire))
      {
        v28 = qword_280C5D298;
        *a4 = qword_280C5D290;
        *(a4 + 1) = v28;
        v29 = xmmword_280C5D2A0;
        if (!xmmword_280C5D2A0)
        {
          goto LABEL_120;
        }
      }

      else
      {
        HGString::sample2d();
        v46 = qword_280C5D298;
        *a4 = qword_280C5D290;
        *(a4 + 1) = v46;
        v29 = xmmword_280C5D2A0;
        if (!xmmword_280C5D2A0)
        {
LABEL_120:
          *(a4 + 3) = 0;
          *(a4 + 2) = v29;
          *(a4 + 4) = 0;
          *(a4 + 5) = 0;
          if (unk_280C5D2B0 != *(&xmmword_280C5D2A0 + 1))
          {
            if (((unk_280C5D2B0 - *(&xmmword_280C5D2A0 + 1)) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            std::vector<double>::__throw_length_error[abi:ne200100]();
          }

          return result;
        }
      }

      ++*(v29 + 8);
      goto LABEL_120;
    }

    if (a2 <= 5)
    {
      if (a2 != 4)
      {
        if (atomic_load_explicit(&qword_280C5D068, memory_order_acquire))
        {
          v12 = qword_280C5D328;
          *a4 = qword_280C5D320;
          *(a4 + 1) = v12;
          v13 = xmmword_280C5D330;
          if (!xmmword_280C5D330)
          {
            goto LABEL_37;
          }
        }

        else
        {
          HGString::sample2d();
          v41 = qword_280C5D328;
          *a4 = qword_280C5D320;
          *(a4 + 1) = v41;
          v13 = xmmword_280C5D330;
          if (!xmmword_280C5D330)
          {
LABEL_37:
            *(a4 + 3) = 0;
            *(a4 + 2) = v13;
            *(a4 + 4) = 0;
            *(a4 + 5) = 0;
            if (unk_280C5D340 != *(&xmmword_280C5D330 + 1))
            {
              if (((unk_280C5D340 - *(&xmmword_280C5D330 + 1)) & 0x8000000000000000) == 0)
              {
                operator new();
              }

              std::vector<double>::__throw_length_error[abi:ne200100]();
            }

            return result;
          }
        }

        ++*(v13 + 8);
        goto LABEL_37;
      }

      if (atomic_load_explicit(&qword_280C5D060, memory_order_acquire))
      {
        v26 = qword_280C5D2F8;
        *a4 = qword_280C5D2F0;
        *(a4 + 1) = v26;
        v27 = xmmword_280C5D300;
        if (!xmmword_280C5D300)
        {
          goto LABEL_114;
        }
      }

      else
      {
        HGString::sample2d();
        v45 = qword_280C5D2F8;
        *a4 = qword_280C5D2F0;
        *(a4 + 1) = v45;
        v27 = xmmword_280C5D300;
        if (!xmmword_280C5D300)
        {
LABEL_114:
          *(a4 + 3) = 0;
          *(a4 + 2) = v27;
          *(a4 + 4) = 0;
          *(a4 + 5) = 0;
          if (unk_280C5D310 != *(&xmmword_280C5D300 + 1))
          {
            if (((unk_280C5D310 - *(&xmmword_280C5D300 + 1)) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            std::vector<double>::__throw_length_error[abi:ne200100]();
          }

          return result;
        }
      }

      ++*(v27 + 8);
      goto LABEL_114;
    }

    if (a2 != 6)
    {
      if (a2 != 7)
      {
        goto LABEL_163;
      }

      if (atomic_load_explicit(&qword_280C5D078, memory_order_acquire))
      {
        v18 = qword_280C5D388;
        *a4 = qword_280C5D380;
        *(a4 + 1) = v18;
        v19 = xmmword_280C5D390;
        if (!xmmword_280C5D390)
        {
          goto LABEL_68;
        }
      }

      else
      {
        HGString::sample2d();
        v43 = qword_280C5D388;
        *a4 = qword_280C5D380;
        *(a4 + 1) = v43;
        v19 = xmmword_280C5D390;
        if (!xmmword_280C5D390)
        {
LABEL_68:
          *(a4 + 3) = 0;
          *(a4 + 2) = v19;
          *(a4 + 4) = 0;
          *(a4 + 5) = 0;
          if (unk_280C5D3A0 != *(&xmmword_280C5D390 + 1))
          {
            if (((unk_280C5D3A0 - *(&xmmword_280C5D390 + 1)) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            std::vector<double>::__throw_length_error[abi:ne200100]();
          }

          return result;
        }
      }

      ++*(v19 + 8);
      goto LABEL_68;
    }

    if (atomic_load_explicit(&qword_280C5D070, memory_order_acquire))
    {
      v30 = qword_280C5D358;
      *a4 = qword_280C5D350;
      *(a4 + 1) = v30;
      v31 = xmmword_280C5D360;
      if (!xmmword_280C5D360)
      {
        goto LABEL_126;
      }
    }

    else
    {
      HGString::sample2d();
      v47 = qword_280C5D358;
      *a4 = qword_280C5D350;
      *(a4 + 1) = v47;
      v31 = xmmword_280C5D360;
      if (!xmmword_280C5D360)
      {
LABEL_126:
        *(a4 + 3) = 0;
        *(a4 + 2) = v31;
        *(a4 + 4) = 0;
        *(a4 + 5) = 0;
        if (unk_280C5D370 != *(&xmmword_280C5D360 + 1))
        {
          if (((unk_280C5D370 - *(&xmmword_280C5D360 + 1)) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          std::vector<double>::__throw_length_error[abi:ne200100]();
        }

        return result;
      }
    }

    ++*(v31 + 8);
    goto LABEL_126;
  }

  if (a2 <= 3)
  {
    if (a2 <= 1)
    {
      if (a2)
      {
        if (a2 != 1)
        {
          goto LABEL_163;
        }

        if (atomic_load_explicit(&qword_280C5D088, memory_order_acquire))
        {
          v7 = qword_280C5D3E8;
          *a4 = qword_280C5D3E0;
          *(a4 + 1) = v7;
          v8 = xmmword_280C5D3F0;
          if (!xmmword_280C5D3F0)
          {
            goto LABEL_20;
          }
        }

        else
        {
          HGString::sample2d();
          v52 = qword_280C5D3E8;
          *a4 = qword_280C5D3E0;
          *(a4 + 1) = v52;
          v8 = xmmword_280C5D3F0;
          if (!xmmword_280C5D3F0)
          {
LABEL_20:
            *(a4 + 3) = 0;
            *(a4 + 2) = v8;
            *(a4 + 4) = 0;
            *(a4 + 5) = 0;
            if (unk_280C5D400 != *(&xmmword_280C5D3F0 + 1))
            {
              if (((unk_280C5D400 - *(&xmmword_280C5D3F0 + 1)) & 0x8000000000000000) == 0)
              {
                operator new();
              }

              std::vector<double>::__throw_length_error[abi:ne200100]();
            }

            return result;
          }
        }

        ++*(v8 + 8);
        goto LABEL_20;
      }

      if (atomic_load_explicit(&qword_280C5D080, memory_order_acquire))
      {
        v32 = qword_280C5D3B8;
        *a4 = qword_280C5D3B0;
        *(a4 + 1) = v32;
        v33 = xmmword_280C5D3C0;
        if (!xmmword_280C5D3C0)
        {
          goto LABEL_132;
        }
      }

      else
      {
        HGString::sample2d();
        v48 = qword_280C5D3B8;
        *a4 = qword_280C5D3B0;
        *(a4 + 1) = v48;
        v33 = xmmword_280C5D3C0;
        if (!xmmword_280C5D3C0)
        {
LABEL_132:
          *(a4 + 3) = 0;
          *(a4 + 2) = v33;
          *(a4 + 4) = 0;
          *(a4 + 5) = 0;
          if (unk_280C5D3D0 != *(&xmmword_280C5D3C0 + 1))
          {
            if (((unk_280C5D3D0 - *(&xmmword_280C5D3C0 + 1)) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            std::vector<double>::__throw_length_error[abi:ne200100]();
          }

          return result;
        }
      }

      ++*(v33 + 8);
      goto LABEL_132;
    }

    if (a2 != 2)
    {
      if (atomic_load_explicit(&qword_280C5D098, memory_order_acquire))
      {
        v20 = qword_280C5D448;
        *a4 = qword_280C5D440;
        *(a4 + 1) = v20;
        v21 = xmmword_280C5D450;
        if (!xmmword_280C5D450)
        {
          goto LABEL_75;
        }
      }

      else
      {
        HGString::sample2d();
        v54 = qword_280C5D448;
        *a4 = qword_280C5D440;
        *(a4 + 1) = v54;
        v21 = xmmword_280C5D450;
        if (!xmmword_280C5D450)
        {
LABEL_75:
          *(a4 + 3) = 0;
          *(a4 + 2) = v21;
          *(a4 + 4) = 0;
          *(a4 + 5) = 0;
          if (xmmword_280C5D460 != *(&xmmword_280C5D450 + 1))
          {
            if (((xmmword_280C5D460 - *(&xmmword_280C5D450 + 1)) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            std::vector<double>::__throw_length_error[abi:ne200100]();
          }

          return result;
        }
      }

      ++*(v21 + 8);
      goto LABEL_75;
    }

    if (atomic_load_explicit(&qword_280C5D090, memory_order_acquire))
    {
      v36 = qword_280C5D418;
      *a4 = qword_280C5D410;
      *(a4 + 1) = v36;
      v37 = xmmword_280C5D420;
      if (!xmmword_280C5D420)
      {
        goto LABEL_144;
      }
    }

    else
    {
      HGString::sample2d();
      v50 = qword_280C5D418;
      *a4 = qword_280C5D410;
      *(a4 + 1) = v50;
      v37 = xmmword_280C5D420;
      if (!xmmword_280C5D420)
      {
LABEL_144:
        *(a4 + 3) = 0;
        *(a4 + 2) = v37;
        *(a4 + 4) = 0;
        *(a4 + 5) = 0;
        if (unk_280C5D430 != *(&xmmword_280C5D420 + 1))
        {
          if (((unk_280C5D430 - *(&xmmword_280C5D420 + 1)) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          std::vector<double>::__throw_length_error[abi:ne200100]();
        }

        return result;
      }
    }

    ++*(v37 + 8);
    goto LABEL_144;
  }

  if (a2 <= 5)
  {
    if (a2 != 4)
    {
      if (atomic_load_explicit(&qword_280C5D0A8, memory_order_acquire))
      {
        v14 = qword_280C5D4A8;
        *a4 = qword_280C5D4A0;
        *(a4 + 1) = v14;
        v15 = xmmword_280C5D4B0;
        if (!xmmword_280C5D4B0)
        {
          goto LABEL_45;
        }
      }

      else
      {
        HGString::sample2d();
        v53 = qword_280C5D4A8;
        *a4 = qword_280C5D4A0;
        *(a4 + 1) = v53;
        v15 = xmmword_280C5D4B0;
        if (!xmmword_280C5D4B0)
        {
LABEL_45:
          *(a4 + 3) = 0;
          *(a4 + 2) = v15;
          *(a4 + 4) = 0;
          *(a4 + 5) = 0;
          if (xmmword_280C5D4C0 != *(&xmmword_280C5D4B0 + 1))
          {
            if (((xmmword_280C5D4C0 - *(&xmmword_280C5D4B0 + 1)) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            std::vector<double>::__throw_length_error[abi:ne200100]();
          }

          return result;
        }
      }

      ++*(v15 + 8);
      goto LABEL_45;
    }

    if (atomic_load_explicit(&qword_280C5D0A0, memory_order_acquire))
    {
      v34 = qword_280C5D478;
      *a4 = qword_280C5D470;
      *(a4 + 1) = v34;
      v35 = xmmword_280C5D480;
      if (!xmmword_280C5D480)
      {
        goto LABEL_138;
      }
    }

    else
    {
      HGString::sample2d();
      v49 = qword_280C5D478;
      *a4 = qword_280C5D470;
      *(a4 + 1) = v49;
      v35 = xmmword_280C5D480;
      if (!xmmword_280C5D480)
      {
LABEL_138:
        *(a4 + 3) = 0;
        *(a4 + 2) = v35;
        *(a4 + 4) = 0;
        *(a4 + 5) = 0;
        if (unk_280C5D490 != *(&xmmword_280C5D480 + 1))
        {
          if (((unk_280C5D490 - *(&xmmword_280C5D480 + 1)) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          std::vector<double>::__throw_length_error[abi:ne200100]();
        }

        return result;
      }
    }

    ++*(v35 + 8);
    goto LABEL_138;
  }

  if (a2 != 6)
  {
    if (a2 != 7)
    {
      goto LABEL_163;
    }

    if (atomic_load_explicit(&qword_280C5D0B8, memory_order_acquire))
    {
      v22 = qword_280C5D508;
      *a4 = qword_280C5D500;
      *(a4 + 1) = v22;
      v23 = xmmword_280C5D510;
      if (!xmmword_280C5D510)
      {
        goto LABEL_83;
      }
    }

    else
    {
      HGString::sample2d();
      v55 = qword_280C5D508;
      *a4 = qword_280C5D500;
      *(a4 + 1) = v55;
      v23 = xmmword_280C5D510;
      if (!xmmword_280C5D510)
      {
LABEL_83:
        *(a4 + 3) = 0;
        *(a4 + 2) = v23;
        *(a4 + 4) = 0;
        *(a4 + 5) = 0;
        if (xmmword_280C5D520 != *(&xmmword_280C5D510 + 1))
        {
          if (((xmmword_280C5D520 - *(&xmmword_280C5D510 + 1)) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          std::vector<double>::__throw_length_error[abi:ne200100]();
        }

        return result;
      }
    }

    ++*(v23 + 8);
    goto LABEL_83;
  }

  if (atomic_load_explicit(&qword_280C5D0B0, memory_order_acquire))
  {
    v38 = qword_280C5D4D8;
    *a4 = qword_280C5D4D0;
    *(a4 + 1) = v38;
    v39 = xmmword_280C5D4E0;
    if (!xmmword_280C5D4E0)
    {
      goto LABEL_150;
    }

    goto LABEL_149;
  }

  HGString::sample2d();
  v51 = qword_280C5D4D8;
  *a4 = qword_280C5D4D0;
  *(a4 + 1) = v51;
  v39 = xmmword_280C5D4E0;
  if (xmmword_280C5D4E0)
  {
LABEL_149:
    ++*(v39 + 8);
  }

LABEL_150:
  *(a4 + 3) = 0;
  *(a4 + 2) = v39;
  *(a4 + 4) = 0;
  *(a4 + 5) = 0;
  if (xmmword_280C5D4F0 != *(&xmmword_280C5D4E0 + 1))
  {
    if (((xmmword_280C5D4F0 - *(&xmmword_280C5D4E0 + 1)) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_25FC2377C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void metal_sample2d0_half_s(void)
{
  if ((atomic_load_explicit(&qword_280C5D0C0, memory_order_acquire) & 1) == 0)
  {
    metal_sample2d0_half_s();
  }
}

void metal_sample2d1_half_s(void)
{
  if ((atomic_load_explicit(&qword_280C5D0C8, memory_order_acquire) & 1) == 0)
  {
    metal_sample2d1_half_s();
  }
}

void metal_sample2d2_half_s(void)
{
  if ((atomic_load_explicit(&qword_280C5D0D0, memory_order_acquire) & 1) == 0)
  {
    metal_sample2d2_half_s();
  }
}

void metal_sample2d3_half_s(void)
{
  if ((atomic_load_explicit(&qword_280C5D0D8, memory_order_acquire) & 1) == 0)
  {
    metal_sample2d3_half_s();
  }
}

void metal_sample2d4_half_s(void)
{
  if ((atomic_load_explicit(&qword_280C5D0E0, memory_order_acquire) & 1) == 0)
  {
    metal_sample2d4_half_s();
  }
}

void metal_sample2d5_half_s(void)
{
  if ((atomic_load_explicit(&qword_280C5D0E8, memory_order_acquire) & 1) == 0)
  {
    metal_sample2d5_half_s();
  }
}

void metal_sample2d6_half_s(void)
{
  if ((atomic_load_explicit(&qword_280C5D0F0, memory_order_acquire) & 1) == 0)
  {
    metal_sample2d6_half_s();
  }
}

void metal_sample2d7_half_s(void)
{
  if ((atomic_load_explicit(&qword_280C5D0F8, memory_order_acquire) & 1) == 0)
  {
    metal_sample2d7_half_s();
  }
}

void metal_sample2d0_s(void)
{
  if ((atomic_load_explicit(&qword_280C5D100, memory_order_acquire) & 1) == 0)
  {
    metal_sample2d0_s();
  }
}

void metal_sample2d1_s(void)
{
  if ((atomic_load_explicit(&qword_280C5D108, memory_order_acquire) & 1) == 0)
  {
    metal_sample2d1_s();
  }
}

void metal_sample2d2_s(void)
{
  if ((atomic_load_explicit(&qword_280C5D110, memory_order_acquire) & 1) == 0)
  {
    metal_sample2d2_s();
  }
}

void metal_sample2d3_s(void)
{
  if ((atomic_load_explicit(&qword_280C5D118, memory_order_acquire) & 1) == 0)
  {
    metal_sample2d3_s();
  }
}

void metal_sample2d4_s(void)
{
  if ((atomic_load_explicit(&qword_280C5D120, memory_order_acquire) & 1) == 0)
  {
    metal_sample2d4_s();
  }
}

void metal_sample2d5_s(void)
{
  if ((atomic_load_explicit(&qword_280C5D128, memory_order_acquire) & 1) == 0)
  {
    metal_sample2d5_s();
  }
}

void metal_sample2d6_s(void)
{
  if ((atomic_load_explicit(&qword_280C5D130, memory_order_acquire) & 1) == 0)
  {
    metal_sample2d6_s();
  }
}

void metal_sample2d7_s(void)
{
  if ((atomic_load_explicit(&qword_280C5D138, memory_order_acquire) & 1) == 0)
  {
    metal_sample2d7_s();
  }
}

void HGString::sampleRect(HGString *this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  if (this != 394000)
  {
    goto LABEL_35;
  }

  if (a2 <= 3)
  {
    if (a2 <= 1)
    {
      if (a2)
      {
        if (a2 == 1)
        {
          if (atomic_load_explicit(&qword_280C5D148, memory_order_acquire))
          {
            v4 = qword_280C5D868;
            *a3 = qword_280C5D860;
            a3[1] = v4;
            v5 = xmmword_280C5D870;
            if (!xmmword_280C5D870)
            {
              goto LABEL_9;
            }
          }

          else
          {
            HGString::sampleRect();
            v24 = qword_280C5D868;
            *a3 = qword_280C5D860;
            a3[1] = v24;
            v5 = xmmword_280C5D870;
            if (!xmmword_280C5D870)
            {
LABEL_9:
              a3[3] = 0;
              a3[2] = v5;
              a3[4] = 0;
              a3[5] = 0;
              if (xmmword_280C5D880 != *(&xmmword_280C5D870 + 1))
              {
                if (((xmmword_280C5D880 - *(&xmmword_280C5D870 + 1)) & 0x8000000000000000) == 0)
                {
                  operator new();
                }

                std::vector<double>::__throw_length_error[abi:ne200100]();
              }

              return;
            }
          }

          ++*(v5 + 8);
          goto LABEL_9;
        }

LABEL_35:
        *(a3 + 1) = 0u;
        *(a3 + 2) = 0u;
        *a3 = 0u;
        return;
      }

      if (atomic_load_explicit(&qword_280C5D140, memory_order_acquire))
      {
        v12 = qword_280C5D838;
        *a3 = qword_280C5D830;
        a3[1] = v12;
        v13 = xmmword_280C5D840;
        if (!xmmword_280C5D840)
        {
          goto LABEL_40;
        }
      }

      else
      {
        HGString::sampleRect();
        v20 = qword_280C5D838;
        *a3 = qword_280C5D830;
        a3[1] = v20;
        v13 = xmmword_280C5D840;
        if (!xmmword_280C5D840)
        {
LABEL_40:
          a3[3] = 0;
          a3[2] = v13;
          a3[4] = 0;
          a3[5] = 0;
          if (xmmword_280C5D850 != *(&xmmword_280C5D840 + 1))
          {
            if (((xmmword_280C5D850 - *(&xmmword_280C5D840 + 1)) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            std::vector<double>::__throw_length_error[abi:ne200100]();
          }

          return;
        }
      }

      ++*(v13 + 8);
      goto LABEL_40;
    }

    if (a2 != 2)
    {
      if (atomic_load_explicit(&qword_280C5D158, memory_order_acquire))
      {
        v8 = qword_280C5D8C8;
        *a3 = qword_280C5D8C0;
        a3[1] = v8;
        v9 = xmmword_280C5D8D0;
        if (!xmmword_280C5D8D0)
        {
          goto LABEL_24;
        }
      }

      else
      {
        HGString::sampleRect();
        v26 = qword_280C5D8C8;
        *a3 = qword_280C5D8C0;
        a3[1] = v26;
        v9 = xmmword_280C5D8D0;
        if (!xmmword_280C5D8D0)
        {
LABEL_24:
          a3[3] = 0;
          a3[2] = v9;
          a3[4] = 0;
          a3[5] = 0;
          if (xmmword_280C5D8E0 != *(&xmmword_280C5D8D0 + 1))
          {
            if (((xmmword_280C5D8E0 - *(&xmmword_280C5D8D0 + 1)) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            std::vector<double>::__throw_length_error[abi:ne200100]();
          }

          return;
        }
      }

      ++*(v9 + 8);
      goto LABEL_24;
    }

    if (atomic_load_explicit(&qword_280C5D150, memory_order_acquire))
    {
      v16 = qword_280C5D898;
      *a3 = qword_280C5D890;
      a3[1] = v16;
      v17 = xmmword_280C5D8A0;
      if (!xmmword_280C5D8A0)
      {
        goto LABEL_52;
      }
    }

    else
    {
      HGString::sampleRect();
      v22 = qword_280C5D898;
      *a3 = qword_280C5D890;
      a3[1] = v22;
      v17 = xmmword_280C5D8A0;
      if (!xmmword_280C5D8A0)
      {
LABEL_52:
        a3[3] = 0;
        a3[2] = v17;
        a3[4] = 0;
        a3[5] = 0;
        if (xmmword_280C5D8B0 != *(&xmmword_280C5D8A0 + 1))
        {
          if (((xmmword_280C5D8B0 - *(&xmmword_280C5D8A0 + 1)) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          std::vector<double>::__throw_length_error[abi:ne200100]();
        }

        return;
      }
    }

    ++*(v17 + 8);
    goto LABEL_52;
  }

  if (a2 <= 5)
  {
    if (a2 != 4)
    {
      if (atomic_load_explicit(&qword_280C5D168, memory_order_acquire))
      {
        v6 = qword_280C5D928;
        *a3 = qword_280C5D920;
        a3[1] = v6;
        v7 = xmmword_280C5D930;
        if (!xmmword_280C5D930)
        {
          goto LABEL_17;
        }
      }

      else
      {
        HGString::sampleRect();
        v25 = qword_280C5D928;
        *a3 = qword_280C5D920;
        a3[1] = v25;
        v7 = xmmword_280C5D930;
        if (!xmmword_280C5D930)
        {
LABEL_17:
          a3[3] = 0;
          a3[2] = v7;
          a3[4] = 0;
          a3[5] = 0;
          if (xmmword_280C5D940 != *(&xmmword_280C5D930 + 1))
          {
            if (((xmmword_280C5D940 - *(&xmmword_280C5D930 + 1)) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            std::vector<double>::__throw_length_error[abi:ne200100]();
          }

          return;
        }
      }

      ++*(v7 + 8);
      goto LABEL_17;
    }

    if (atomic_load_explicit(&qword_280C5D160, memory_order_acquire))
    {
      v14 = qword_280C5D8F8;
      *a3 = qword_280C5D8F0;
      a3[1] = v14;
      v15 = xmmword_280C5D900;
      if (!xmmword_280C5D900)
      {
        goto LABEL_46;
      }
    }

    else
    {
      HGString::sampleRect();
      v21 = qword_280C5D8F8;
      *a3 = qword_280C5D8F0;
      a3[1] = v21;
      v15 = xmmword_280C5D900;
      if (!xmmword_280C5D900)
      {
LABEL_46:
        a3[3] = 0;
        a3[2] = v15;
        a3[4] = 0;
        a3[5] = 0;
        if (xmmword_280C5D910 != *(&xmmword_280C5D900 + 1))
        {
          if (((xmmword_280C5D910 - *(&xmmword_280C5D900 + 1)) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          std::vector<double>::__throw_length_error[abi:ne200100]();
        }

        return;
      }
    }

    ++*(v15 + 8);
    goto LABEL_46;
  }

  if (a2 != 6)
  {
    if (a2 != 7)
    {
      goto LABEL_35;
    }

    if (atomic_load_explicit(&qword_280C5D178, memory_order_acquire))
    {
      v10 = qword_280C5D988;
      *a3 = qword_280C5D980;
      a3[1] = v10;
      v11 = xmmword_280C5D990;
      if (!xmmword_280C5D990)
      {
        goto LABEL_32;
      }
    }

    else
    {
      HGString::sampleRect();
      v27 = qword_280C5D988;
      *a3 = qword_280C5D980;
      a3[1] = v27;
      v11 = xmmword_280C5D990;
      if (!xmmword_280C5D990)
      {
LABEL_32:
        a3[3] = 0;
        a3[2] = v11;
        a3[4] = 0;
        a3[5] = 0;
        if (xmmword_280C5D9A0 != *(&xmmword_280C5D990 + 1))
        {
          if (((xmmword_280C5D9A0 - *(&xmmword_280C5D990 + 1)) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          std::vector<double>::__throw_length_error[abi:ne200100]();
        }

        return;
      }
    }

    ++*(v11 + 8);
    goto LABEL_32;
  }

  if (atomic_load_explicit(&qword_280C5D170, memory_order_acquire))
  {
    v18 = qword_280C5D958;
    *a3 = qword_280C5D950;
    a3[1] = v18;
    v19 = xmmword_280C5D960;
    if (!xmmword_280C5D960)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  HGString::sampleRect();
  v23 = qword_280C5D958;
  *a3 = qword_280C5D950;
  a3[1] = v23;
  v19 = xmmword_280C5D960;
  if (xmmword_280C5D960)
  {
LABEL_57:
    ++*(v19 + 8);
  }

LABEL_58:
  a3[3] = 0;
  a3[2] = v19;
  a3[4] = 0;
  a3[5] = 0;
  if (xmmword_280C5D970 != *(&xmmword_280C5D960 + 1))
  {
    if (((xmmword_280C5D970 - *(&xmmword_280C5D960 + 1)) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }
}

void sub_25FC24090(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

double HGString::zero@<D0>(HGString *this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  if (this == 394784)
  {
    if (a2 != 1)
    {
      goto LABEL_31;
    }

    if (atomic_load_explicit(&qword_280C5D1A0, memory_order_acquire))
    {
      v7 = qword_280C5DA78;
      *a3 = qword_280C5DA70;
      a3[1] = v7;
      v8 = xmmword_280C5DA80;
      if (!xmmword_280C5DA80)
      {
        goto LABEL_15;
      }
    }

    else
    {
      HGString::zero();
      v18 = qword_280C5DA78;
      *a3 = qword_280C5DA70;
      a3[1] = v18;
      v8 = xmmword_280C5DA80;
      if (!xmmword_280C5DA80)
      {
LABEL_15:
        a3[2] = v8;
        a3[3] = 0;
        a3[4] = 0;
        a3[5] = 0;
        v6 = xmmword_280C5DA90 - *(&xmmword_280C5DA80 + 1);
        if (xmmword_280C5DA90 != *(&xmmword_280C5DA80 + 1))
        {
          goto LABEL_41;
        }

        return result;
      }
    }

    ++*(v8 + 8);
    goto LABEL_15;
  }

  if (this != 394000)
  {
    if (this != 396048 || a2 != 1)
    {
      goto LABEL_31;
    }

    if (atomic_load_explicit(&qword_280C5D1A8, memory_order_acquire))
    {
      v9 = qword_280C5DAA8;
      *a3 = qword_280C5DAA0;
      a3[1] = v9;
      v10 = xmmword_280C5DAB0;
      if (!xmmword_280C5DAB0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      HGString::zero();
      v19 = qword_280C5DAA8;
      *a3 = qword_280C5DAA0;
      a3[1] = v19;
      v10 = xmmword_280C5DAB0;
      if (!xmmword_280C5DAB0)
      {
LABEL_22:
        a3[2] = v10;
        a3[3] = 0;
        a3[4] = 0;
        a3[5] = 0;
        v6 = xmmword_280C5DAC0 - *(&xmmword_280C5DAB0 + 1);
        if (xmmword_280C5DAC0 != *(&xmmword_280C5DAB0 + 1))
        {
          goto LABEL_41;
        }

        return result;
      }
    }

    ++*(v10 + 8);
    goto LABEL_22;
  }

  if (a2 <= 2)
  {
    if (a2 != 1)
    {
      if (a2 == 2)
      {
        if (atomic_load_explicit(&qword_280C5D188, memory_order_acquire))
        {
          v4 = qword_280C5D9E8;
          *a3 = qword_280C5D9E0;
          a3[1] = v4;
          v5 = xmmword_280C5D9F0;
          if (!xmmword_280C5D9F0)
          {
            goto LABEL_9;
          }
        }

        else
        {
          HGString::zero();
          v20 = qword_280C5D9E8;
          *a3 = qword_280C5D9E0;
          a3[1] = v20;
          v5 = xmmword_280C5D9F0;
          if (!xmmword_280C5D9F0)
          {
LABEL_9:
            a3[2] = v5;
            a3[3] = 0;
            a3[4] = 0;
            a3[5] = 0;
            v6 = xmmword_280C5DA00 - *(&xmmword_280C5D9F0 + 1);
            if (xmmword_280C5DA00 == *(&xmmword_280C5D9F0 + 1))
            {
              return result;
            }

LABEL_41:
            if ((v6 & 0x8000000000000000) == 0)
            {
              operator new();
            }

            std::vector<double>::__throw_length_error[abi:ne200100]();
          }
        }

        ++*(v5 + 8);
        goto LABEL_9;
      }

LABEL_31:
      result = 0.0;
      *(a3 + 1) = 0u;
      *(a3 + 2) = 0u;
      *a3 = 0u;
      return result;
    }

    if (atomic_load_explicit(&qword_280C5D180, memory_order_acquire))
    {
      v14 = qword_280C5D9B8;
      *a3 = qword_280C5D9B0;
      a3[1] = v14;
      v15 = xmmword_280C5D9C0;
      if (!xmmword_280C5D9C0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      HGString::zero();
      v22 = qword_280C5D9B8;
      *a3 = qword_280C5D9B0;
      a3[1] = v22;
      v15 = xmmword_280C5D9C0;
      if (!xmmword_280C5D9C0)
      {
LABEL_35:
        a3[2] = v15;
        a3[3] = 0;
        a3[4] = 0;
        a3[5] = 0;
        v6 = xmmword_280C5D9D0 - *(&xmmword_280C5D9C0 + 1);
        if (xmmword_280C5D9D0 != *(&xmmword_280C5D9C0 + 1))
        {
          goto LABEL_41;
        }

        return result;
      }
    }

    ++*(v15 + 8);
    goto LABEL_35;
  }

  if (a2 != 3)
  {
    if (a2 != 4)
    {
      goto LABEL_31;
    }

    if (atomic_load_explicit(&qword_280C5D198, memory_order_acquire))
    {
      v11 = qword_280C5DA48;
      *a3 = qword_280C5DA40;
      a3[1] = v11;
      v12 = xmmword_280C5DA50;
      if (!xmmword_280C5DA50)
      {
        goto LABEL_29;
      }
    }

    else
    {
      HGString::zero();
      v21 = qword_280C5DA48;
      *a3 = qword_280C5DA40;
      a3[1] = v21;
      v12 = xmmword_280C5DA50;
      if (!xmmword_280C5DA50)
      {
LABEL_29:
        a3[2] = v12;
        a3[3] = 0;
        a3[4] = 0;
        a3[5] = 0;
        v6 = xmmword_280C5DA60 - *(&xmmword_280C5DA50 + 1);
        if (xmmword_280C5DA60 != *(&xmmword_280C5DA50 + 1))
        {
          goto LABEL_41;
        }

        return result;
      }
    }

    ++*(v12 + 8);
    goto LABEL_29;
  }

  if (atomic_load_explicit(&qword_280C5D190, memory_order_acquire))
  {
    v16 = qword_280C5DA18;
    *a3 = qword_280C5DA10;
    a3[1] = v16;
    v17 = xmmword_280C5DA20;
    if (!xmmword_280C5DA20)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  HGString::zero();
  v23 = qword_280C5DA18;
  *a3 = qword_280C5DA10;
  a3[1] = v23;
  v17 = xmmword_280C5DA20;
  if (xmmword_280C5DA20)
  {
LABEL_39:
    ++*(v17 + 8);
  }

LABEL_40:
  a3[2] = v17;
  a3[3] = 0;
  a3[4] = 0;
  a3[5] = 0;
  v6 = xmmword_280C5DA30 - *(&xmmword_280C5DA20 + 1);
  if (xmmword_280C5DA30 != *(&xmmword_280C5DA20 + 1))
  {
    goto LABEL_41;
  }

  return result;
}

double HGString::uniform@<D0>(HGString *this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  if (this == 394784)
  {
    if (a2 != 1)
    {
      goto LABEL_31;
    }

    if (atomic_load_explicit(&qword_280C5D1D0, memory_order_acquire))
    {
      v7 = qword_280C5DB98;
      *a3 = qword_280C5DB90;
      a3[1] = v7;
      v8 = xmmword_280C5DBA0;
      if (!xmmword_280C5DBA0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      HGString::uniform();
      v18 = qword_280C5DB98;
      *a3 = qword_280C5DB90;
      a3[1] = v18;
      v8 = xmmword_280C5DBA0;
      if (!xmmword_280C5DBA0)
      {
LABEL_15:
        a3[2] = v8;
        a3[3] = 0;
        a3[4] = 0;
        a3[5] = 0;
        v6 = xmmword_280C5DBB0 - *(&xmmword_280C5DBA0 + 1);
        if (xmmword_280C5DBB0 != *(&xmmword_280C5DBA0 + 1))
        {
          goto LABEL_41;
        }

        return result;
      }
    }

    ++*(v8 + 8);
    goto LABEL_15;
  }

  if (this != 394000)
  {
    if (this != 396048 || a2 != 1)
    {
      goto LABEL_31;
    }

    if (atomic_load_explicit(&qword_280C5D1D8, memory_order_acquire))
    {
      v9 = qword_280C5DBC8;
      *a3 = qword_280C5DBC0;
      a3[1] = v9;
      v10 = xmmword_280C5DBD0;
      if (!xmmword_280C5DBD0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      HGString::uniform();
      v19 = qword_280C5DBC8;
      *a3 = qword_280C5DBC0;
      a3[1] = v19;
      v10 = xmmword_280C5DBD0;
      if (!xmmword_280C5DBD0)
      {
LABEL_22:
        a3[2] = v10;
        a3[3] = 0;
        a3[4] = 0;
        a3[5] = 0;
        v6 = xmmword_280C5DBE0 - *(&xmmword_280C5DBD0 + 1);
        if (xmmword_280C5DBE0 != *(&xmmword_280C5DBD0 + 1))
        {
          goto LABEL_41;
        }

        return result;
      }
    }

    ++*(v10 + 8);
    goto LABEL_22;
  }

  if (a2 <= 2)
  {
    if (a2 != 1)
    {
      if (a2 == 2)
      {
        if (atomic_load_explicit(&qword_280C5D1B8, memory_order_acquire))
        {
          v4 = qword_280C5DB08;
          *a3 = qword_280C5DB00;
          a3[1] = v4;
          v5 = xmmword_280C5DB10;
          if (!xmmword_280C5DB10)
          {
            goto LABEL_9;
          }
        }

        else
        {
          HGString::uniform();
          v20 = qword_280C5DB08;
          *a3 = qword_280C5DB00;
          a3[1] = v20;
          v5 = xmmword_280C5DB10;
          if (!xmmword_280C5DB10)
          {
LABEL_9:
            a3[2] = v5;
            a3[3] = 0;
            a3[4] = 0;
            a3[5] = 0;
            v6 = xmmword_280C5DB20 - *(&xmmword_280C5DB10 + 1);
            if (xmmword_280C5DB20 == *(&xmmword_280C5DB10 + 1))
            {
              return result;
            }

LABEL_41:
            if ((v6 & 0x8000000000000000) == 0)
            {
              operator new();
            }

            std::vector<double>::__throw_length_error[abi:ne200100]();
          }
        }

        ++*(v5 + 8);
        goto LABEL_9;
      }

LABEL_31:
      result = 0.0;
      *(a3 + 1) = 0u;
      *(a3 + 2) = 0u;
      *a3 = 0u;
      return result;
    }

    if (atomic_load_explicit(&qword_280C5D1B0, memory_order_acquire))
    {
      v14 = qword_280C5DAD8;
      *a3 = qword_280C5DAD0;
      a3[1] = v14;
      v15 = xmmword_280C5DAE0;
      if (!xmmword_280C5DAE0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      HGString::uniform();
      v22 = qword_280C5DAD8;
      *a3 = qword_280C5DAD0;
      a3[1] = v22;
      v15 = xmmword_280C5DAE0;
      if (!xmmword_280C5DAE0)
      {
LABEL_35:
        a3[2] = v15;
        a3[3] = 0;
        a3[4] = 0;
        a3[5] = 0;
        v6 = xmmword_280C5DAF0 - *(&xmmword_280C5DAE0 + 1);
        if (xmmword_280C5DAF0 != *(&xmmword_280C5DAE0 + 1))
        {
          goto LABEL_41;
        }

        return result;
      }
    }

    ++*(v15 + 8);
    goto LABEL_35;
  }

  if (a2 != 3)
  {
    if (a2 != 4)
    {
      goto LABEL_31;
    }

    if (atomic_load_explicit(&qword_280C5D1C8, memory_order_acquire))
    {
      v11 = qword_280C5DB68;
      *a3 = qword_280C5DB60;
      a3[1] = v11;
      v12 = xmmword_280C5DB70;
      if (!xmmword_280C5DB70)
      {
        goto LABEL_29;
      }
    }

    else
    {
      HGString::uniform();
      v21 = qword_280C5DB68;
      *a3 = qword_280C5DB60;
      a3[1] = v21;
      v12 = xmmword_280C5DB70;
      if (!xmmword_280C5DB70)
      {
LABEL_29:
        a3[2] = v12;
        a3[3] = 0;
        a3[4] = 0;
        a3[5] = 0;
        v6 = xmmword_280C5DB80 - *(&xmmword_280C5DB70 + 1);
        if (xmmword_280C5DB80 != *(&xmmword_280C5DB70 + 1))
        {
          goto LABEL_41;
        }

        return result;
      }
    }

    ++*(v12 + 8);
    goto LABEL_29;
  }

  if (atomic_load_explicit(&qword_280C5D1C0, memory_order_acquire))
  {
    v16 = qword_280C5DB38;
    *a3 = qword_280C5DB30;
    a3[1] = v16;
    v17 = xmmword_280C5DB40;
    if (!xmmword_280C5DB40)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  HGString::uniform();
  v23 = qword_280C5DB38;
  *a3 = qword_280C5DB30;
  a3[1] = v23;
  v17 = xmmword_280C5DB40;
  if (xmmword_280C5DB40)
  {
LABEL_39:
    ++*(v17 + 8);
  }

LABEL_40:
  a3[2] = v17;
  a3[3] = 0;
  a3[4] = 0;
  a3[5] = 0;
  v6 = xmmword_280C5DB50 - *(&xmmword_280C5DB40 + 1);
  if (xmmword_280C5DB50 != *(&xmmword_280C5DB40 + 1))
  {
    goto LABEL_41;
  }

  return result;
}

void HGString::transform(HGString *this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  if (this != 329232)
  {
    goto LABEL_36;
  }

  if (a2 > 3)
  {
    if (a2 > 5)
    {
      if (a2 != 6)
      {
        if (a2 != 7)
        {
          if (a2 == 8)
          {
            if (atomic_load_explicit(qword_280C5D220, memory_order_acquire))
            {
              v4 = qword_280C5DD78;
              *a3 = qword_280C5DD70;
              a3[1] = v4;
              v5 = xmmword_280C5DD80;
              if (!xmmword_280C5DD80)
              {
                goto LABEL_10;
              }
            }

            else
            {
              HGString::transform();
              v24 = qword_280C5DD78;
              *a3 = qword_280C5DD70;
              a3[1] = v24;
              v5 = xmmword_280C5DD80;
              if (!xmmword_280C5DD80)
              {
LABEL_10:
                a3[3] = 0;
                a3[2] = v5;
                a3[4] = 0;
                a3[5] = 0;
                if (xmmword_280C5DD90 != *(&xmmword_280C5DD80 + 1))
                {
                  if (((xmmword_280C5DD90 - *(&xmmword_280C5DD80 + 1)) & 0x8000000000000000) == 0)
                  {
                    operator new();
                  }

                  std::vector<double>::__throw_length_error[abi:ne200100]();
                }

                return;
              }
            }

            ++*(v5 + 8);
            goto LABEL_10;
          }

LABEL_36:
          *(a3 + 1) = 0u;
          *(a3 + 2) = 0u;
          *a3 = 0u;
          return;
        }

        if (atomic_load_explicit(&qword_280C5D218, memory_order_acquire))
        {
          v20 = qword_280C5DD48;
          *a3 = qword_280C5DD40;
          a3[1] = v20;
          v21 = xmmword_280C5DD50;
          if (!xmmword_280C5DD50)
          {
            goto LABEL_65;
          }
        }

        else
        {
          HGString::transform();
          v30 = qword_280C5DD48;
          *a3 = qword_280C5DD40;
          a3[1] = v30;
          v21 = xmmword_280C5DD50;
          if (!xmmword_280C5DD50)
          {
LABEL_65:
            a3[3] = 0;
            a3[2] = v21;
            a3[4] = 0;
            a3[5] = 0;
            if (xmmword_280C5DD60 != *(&xmmword_280C5DD50 + 1))
            {
              if (((xmmword_280C5DD60 - *(&xmmword_280C5DD50 + 1)) & 0x8000000000000000) == 0)
              {
                operator new();
              }

              std::vector<double>::__throw_length_error[abi:ne200100]();
            }

            return;
          }
        }

        ++*(v21 + 8);
        goto LABEL_65;
      }

      if (atomic_load_explicit(&qword_280C5D210, memory_order_acquire))
      {
        v16 = qword_280C5DD18;
        *a3 = qword_280C5DD10;
        a3[1] = v16;
        v17 = xmmword_280C5DD20;
        if (!xmmword_280C5DD20)
        {
          goto LABEL_53;
        }
      }

      else
      {
        HGString::transform();
        v28 = qword_280C5DD18;
        *a3 = qword_280C5DD10;
        a3[1] = v28;
        v17 = xmmword_280C5DD20;
        if (!xmmword_280C5DD20)
        {
LABEL_53:
          a3[3] = 0;
          a3[2] = v17;
          a3[4] = 0;
          a3[5] = 0;
          if (xmmword_280C5DD30 != *(&xmmword_280C5DD20 + 1))
          {
            if (((xmmword_280C5DD30 - *(&xmmword_280C5DD20 + 1)) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            std::vector<double>::__throw_length_error[abi:ne200100]();
          }

          return;
        }
      }

      ++*(v17 + 8);
      goto LABEL_53;
    }

    if (a2 != 4)
    {
      if (atomic_load_explicit(&qword_280C5D208, memory_order_acquire))
      {
        v10 = qword_280C5DCE8;
        *a3 = qword_280C5DCE0;
        a3[1] = v10;
        v11 = xmmword_280C5DCF0;
        if (!xmmword_280C5DCF0)
        {
          goto LABEL_33;
        }
      }

      else
      {
        HGString::transform();
        v25 = qword_280C5DCE8;
        *a3 = qword_280C5DCE0;
        a3[1] = v25;
        v11 = xmmword_280C5DCF0;
        if (!xmmword_280C5DCF0)
        {
LABEL_33:
          a3[3] = 0;
          a3[2] = v11;
          a3[4] = 0;
          a3[5] = 0;
          if (xmmword_280C5DD00 != *(&xmmword_280C5DCF0 + 1))
          {
            if (((xmmword_280C5DD00 - *(&xmmword_280C5DCF0 + 1)) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            std::vector<double>::__throw_length_error[abi:ne200100]();
          }

          return;
        }
      }

      ++*(v11 + 8);
      goto LABEL_33;
    }

    if (atomic_load_explicit(&qword_280C5D200, memory_order_acquire))
    {
      v18 = qword_280C5DCB8;
      *a3 = qword_280C5DCB0;
      a3[1] = v18;
      v19 = xmmword_280C5DCC0;
      if (!xmmword_280C5DCC0)
      {
        goto LABEL_59;
      }
    }

    else
    {
      HGString::transform();
      v29 = qword_280C5DCB8;
      *a3 = qword_280C5DCB0;
      a3[1] = v29;
      v19 = xmmword_280C5DCC0;
      if (!xmmword_280C5DCC0)
      {
LABEL_59:
        a3[3] = 0;
        a3[2] = v19;
        a3[4] = 0;
        a3[5] = 0;
        if (xmmword_280C5DCD0 != *(&xmmword_280C5DCC0 + 1))
        {
          if (((xmmword_280C5DCD0 - *(&xmmword_280C5DCC0 + 1)) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          std::vector<double>::__throw_length_error[abi:ne200100]();
        }

        return;
      }
    }

    ++*(v19 + 8);
    goto LABEL_59;
  }

  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_36;
      }

      if (atomic_load_explicit(&qword_280C5D1E8, memory_order_acquire))
      {
        v6 = qword_280C5DC28;
        *a3 = qword_280C5DC20;
        a3[1] = v6;
        v7 = xmmword_280C5DC30;
        if (!xmmword_280C5DC30)
        {
          goto LABEL_19;
        }
      }

      else
      {
        HGString::transform();
        v22 = qword_280C5DC28;
        *a3 = qword_280C5DC20;
        a3[1] = v22;
        v7 = xmmword_280C5DC30;
        if (!xmmword_280C5DC30)
        {
LABEL_19:
          a3[3] = 0;
          a3[2] = v7;
          a3[4] = 0;
          a3[5] = 0;
          if (xmmword_280C5DC40 != *(&xmmword_280C5DC30 + 1))
          {
            if (((xmmword_280C5DC40 - *(&xmmword_280C5DC30 + 1)) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            std::vector<double>::__throw_length_error[abi:ne200100]();
          }

          return;
        }
      }

      ++*(v7 + 8);
      goto LABEL_19;
    }

    if (atomic_load_explicit(&qword_280C5D1E0, memory_order_acquire))
    {
      v12 = qword_280C5DBF8;
      *a3 = qword_280C5DBF0;
      a3[1] = v12;
      v13 = xmmword_280C5DC00;
      if (!xmmword_280C5DC00)
      {
        goto LABEL_41;
      }
    }

    else
    {
      HGString::transform();
      v26 = qword_280C5DBF8;
      *a3 = qword_280C5DBF0;
      a3[1] = v26;
      v13 = xmmword_280C5DC00;
      if (!xmmword_280C5DC00)
      {
LABEL_41:
        a3[3] = 0;
        a3[2] = v13;
        a3[4] = 0;
        a3[5] = 0;
        if (xmmword_280C5DC10 != *(&xmmword_280C5DC00 + 1))
        {
          if (((xmmword_280C5DC10 - *(&xmmword_280C5DC00 + 1)) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          std::vector<double>::__throw_length_error[abi:ne200100]();
        }

        return;
      }
    }

    ++*(v13 + 8);
    goto LABEL_41;
  }

  if (a2 != 2)
  {
    if (atomic_load_explicit(&qword_280C5D1F8, memory_order_acquire))
    {
      v8 = qword_280C5DC88;
      *a3 = qword_280C5DC80;
      a3[1] = v8;
      v9 = xmmword_280C5DC90;
      if (!xmmword_280C5DC90)
      {
        goto LABEL_26;
      }
    }

    else
    {
      HGString::transform();
      v23 = qword_280C5DC88;
      *a3 = qword_280C5DC80;
      a3[1] = v23;
      v9 = xmmword_280C5DC90;
      if (!xmmword_280C5DC90)
      {
LABEL_26:
        a3[3] = 0;
        a3[2] = v9;
        a3[4] = 0;
        a3[5] = 0;
        if (xmmword_280C5DCA0 != *(&xmmword_280C5DC90 + 1))
        {
          if (((xmmword_280C5DCA0 - *(&xmmword_280C5DC90 + 1)) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          std::vector<double>::__throw_length_error[abi:ne200100]();
        }

        return;
      }
    }

    ++*(v9 + 8);
    goto LABEL_26;
  }

  if (atomic_load_explicit(&qword_280C5D1F0, memory_order_acquire))
  {
    v14 = qword_280C5DC58;
    *a3 = qword_280C5DC50;
    a3[1] = v14;
    v15 = xmmword_280C5DC60;
    if (!xmmword_280C5DC60)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  HGString::transform();
  v27 = qword_280C5DC58;
  *a3 = qword_280C5DC50;
  a3[1] = v27;
  v15 = xmmword_280C5DC60;
  if (xmmword_280C5DC60)
  {
LABEL_46:
    ++*(v15 + 8);
  }

LABEL_47:
  a3[3] = 0;
  a3[2] = v15;
  a3[4] = 0;
  a3[5] = 0;
  if (xmmword_280C5DC70 != *(&xmmword_280C5DC60 + 1))
  {
    if (((xmmword_280C5DC70 - *(&xmmword_280C5DC60 + 1)) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }
}

void sub_25FC24E74(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

__n128 HGString::Digest::operator=(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

char *arb::begin(string_t *this, string_t *a2, const HGLimits *a3, const HGLimits *a4)
{
  v7 = *a3;
  v8 = this[1];
  if (v8)
  {
    str_alloc(this, v8);
    this[1][*this - 142] = 35;
    v9 = v7 & 0xFE00;
    result = *this;
    v11 = *a2;
    v12 = *a3;
    if (*a2 == *a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    str_alloc(this, 168);
    this[1] = 168;
    v9 = v7 & 0xFE00;
    result = *this;
    v11 = *a2;
    v12 = *a3;
    if (*a2 == *a3)
    {
LABEL_3:
      v13 = result + 62;
      if (v9 >= 0x600)
      {
LABEL_4:
        qmemcpy(v13, "//                            \n//                                \n##                                     \n", 106);
        return result;
      }

      goto LABEL_90;
    }
  }

  v14 = v7 >> 4;
  v15 = v7 & 0xF;
  v16 = v7 & 0xFFF00;
  if ((v7 & 0xFFF00u) > 0x505FF)
  {
    if ((v7 & 0xFFF00u) > 0x603FF)
    {
      if ((v7 & 0xFFF00u) > 0x605FF)
      {
        if (v16 != 394752)
        {
          if (v16 != 395008)
          {
            if (v16 != 460288)
            {
              return result;
            }

            v17 = 29557;
            goto LABEL_55;
          }

          v18 = 29542;
          goto LABEL_47;
        }

        v17 = 29542;
        goto LABEL_55;
      }

      if (v16 != 394240)
      {
        if (v16 != 394496)
        {
          return result;
        }

        v21 = 28774;
        goto LABEL_40;
      }

      if ((v12 & 0xC0) != 0)
      {
        v26 = 28774;
        goto LABEL_71;
      }

      v15 = 0;
      v28 = 1885749842;
LABEL_64:
      *(result + 3) = v28;
      *result = 1380000033;
      result += 7;
      v14 = 1;
      goto LABEL_73;
    }

    if ((v7 & 0xFFF00u) <= 0x601FF)
    {
      if (v16 != 329216)
      {
        if (v16 != 329472)
        {
          return result;
        }

        v18 = 29558;
LABEL_47:
        *(result + 2) = v18;
        v22 = 1195585327;
        goto LABEL_72;
      }

      v17 = 29558;
LABEL_55:
      *(result + 2) = v17;
      v22 = 1279733551;
      goto LABEL_72;
    }

    if (v16 != 393728)
    {
      if (v16 != 393984)
      {
        return result;
      }

      v19 = 1885749842;
      goto LABEL_30;
    }

    v23 = v7 & 0xFFF00000;
    if ((v7 & 0xFFF00000) > 69206015)
    {
      if (v23 <= 72351743)
      {
        if (v23 != 69206016)
        {
          v24 = 70254592;
          goto LABEL_67;
        }

LABEL_68:
        *(result + 3) = 1885750611;
        v20 = 1397956897;
        goto LABEL_69;
      }

      if (v23 == 72351744)
      {
        goto LABEL_68;
      }

      v24 = 73400320;
LABEL_67:
      if (v23 != v24)
      {
        goto LABEL_73;
      }

      goto LABEL_68;
    }

    if (v23)
    {
      if (v23 != 0x1000000)
      {
        v24 = 68157440;
        goto LABEL_67;
      }

      v25 = 30579;
    }

    else
    {
      v25 = 28774;
    }

LABEL_50:
    *(result + 2) = v25;
    v22 = 1229136161;
    goto LABEL_72;
  }

  if ((v7 & 0xFFF00u) > 0x501FF)
  {
    if ((v7 & 0xFFF00u) > 0x503FF)
    {
      if (v16 != 328704)
      {
        if (v16 != 328960)
        {
          return result;
        }

        v21 = 28790;
LABEL_40:
        *(result + 2) = v21;
        v22 = 1195909409;
LABEL_72:
        *result = v22;
        result += 6;
        goto LABEL_73;
      }

      v27 = v12 >> 4;
      if (v27 <= 1)
      {
        *result = 1347821857;
        result += 4;
        goto LABEL_73;
      }

      if (v27 > 3)
      {
        v26 = 28790;
        goto LABEL_71;
      }

      v15 = 0;
      v28 = 1886798418;
      goto LABEL_64;
    }

    if (v16 != 328192)
    {
      if (v16 != 328448)
      {
        return result;
      }

      v19 = 1886798418;
LABEL_30:
      *(result + 3) = v19;
      v20 = 1380000033;
LABEL_69:
      *result = v20;
      result += 7;
      goto LABEL_73;
    }

    v25 = 28790;
    goto LABEL_50;
  }

  if ((v7 & 0xFFF00u) <= 0x303FF)
  {
    if (v16 != 66048)
    {
      if (v16 != 132608)
      {
        return result;
      }

      v17 = 29552;
      goto LABEL_55;
    }

    v25 = 28784;
    goto LABEL_50;
  }

  if (v16 == 197632)
  {
    v26 = 28775;
LABEL_71:
    *(result + 2) = v26;
    v22 = 1447960865;
    goto LABEL_72;
  }

  if (v16 != 263168)
  {
    return result;
  }

  result[4] = 80;
  *result = 1398153505;
  result += 5;
LABEL_73:
  if (v14 | v15)
  {
    *result = v14 | 0x30;
    result[1] = 46;
    result[2] = v15 | 0x30;
    result += 3;
  }

  v29 = *this;
  v30 = *this + 15;
  result = memset(result, 32, v30 - result);
  *(v29 + 15) = 10;
  if (v9 >= 0x600)
  {
    *(v29 + 32) = 10;
    *(v29 + 1) = *"//LEN=0000000000\n";
    if (v7 > 394255)
    {
      goto LABEL_77;
    }

LABEL_81:
    if (v7 == 328736)
    {
      v31 = "OPTION NV_vertex_program2;  \n";
      goto LABEL_88;
    }

    if (v7 == 328752)
    {
      v31 = "OPTION NV_vertex_program3;  \n";
      goto LABEL_88;
    }

LABEL_84:
    v13 = v30 + 47;
    if (v9 >= 0x600)
    {
      qmemcpy((v30 + 18), "//                          \n", 29);
      goto LABEL_4;
    }

    qmemcpy((v30 + 18), "##                          \n", 29);
    goto LABEL_89;
  }

  *(v29 + 32) = 10;
  *(v29 + 1) = *"##LEN=0000000000\n";
  if (v7 <= 394255)
  {
    goto LABEL_81;
  }

LABEL_77:
  if (v7 == 394256)
  {
    v31 = "OPTION NV_fragment_program; \n";
    goto LABEL_88;
  }

  if (v7 != 394272)
  {
    goto LABEL_84;
  }

  v31 = "OPTION NV_fragment_program2;\n";
LABEL_88:
  *(v30 + 18) = *v31;
  *(v30 + 31) = *(v31 + 13);
  v13 = v30 + 47;
LABEL_89:
  v11 = *a2;
LABEL_90:
  if (!v11 || *(a2 + 42) != *(a3 + 42) || (*(a3 + 1) ^ *(a2 + 1)) >> 30)
  {
    if (*(a3 + 1) >> 30 == 3)
    {
      v32 = "OPTION ARB_position_invariant;\n";
    }

    else if ((*a3 & 0xF0000) == 0x60000 && *(a3 + 42) >= 2u)
    {
      v32 = "OPTION ARB_draw_buffers;      \n";
    }

    else
    {
      v32 = "##                            \n";
    }

    *v13 = *v32;
    *(v13 + 15) = *(v32 + 15);
    v33 = *(a3 + 1) & 0xC0000000;
    if (v33 == 0x80000000)
    {
      *(v13 + 62) = 169884532;
      v34 = "OPTION ARB_precision_hint_nicest; \n";
    }

    else if (v33 == 0x40000000)
    {
      *(v13 + 62) = 171668595;
      v34 = "OPTION ARB_precision_hint_fastest;\n";
    }

    else
    {
      *(v13 + 62) = 169877536;
      v34 = "##                                \n";
    }

    v35 = *(v34 + 1);
    *(v13 + 31) = *v34;
    *(v13 + 47) = v35;
  }

  v36 = *(a3 + 43);
  if (v36 <= 7)
  {
    v37 = *this;
    v38 = (*this + 128);
    if (*(a3 + 43))
    {
      v39 = 4 * v36;
      v40 = 4 * v36 + 4;
      memcpy(v38, "TEMP $t0,$t1,$t2,$t3,$t4,$t5,$t6,$t7;  \n", v40);
      v38[v40] = 59;
      result = memset(&v38[v40 + 1], 32, 34 - v39);
      *(v37 + 167) = 10;
    }

    else
    {
      qmemcpy(v38, "##                                     \n", 40);
    }
  }

  return result;
}

void arb::write(string_t *this, string_t *a2, const HGShaderBinding *a3, const HGLimits *a4, unsigned int a5, const HGLimits *__src, int a7, const char *a8, BOOL a9, unsigned int a10, int a11, BOOL a12)
{
  v460 = a8;
  v456 = a4;
  *v463 = 0;
  v13 = __src + 168;
  v12 = *(__src + 168);
  if (!*(__src + 168))
  {
    return;
  }

  v457 = a2 + 12;
  v458 = a2 + 1;
  v459 = a2 + 2;
  v15 = __src + 168;
LABEL_6:
  while (v12 == 36)
  {
    v26 = v13 + 1;
    v25 = v13[1];
    v27 = vand_s8(vcgt_s16(vdup_n_s16(v25), 0x6F006600630061), 0x8000400020001);
    v27.i32[0] = vaddv_s16(v27) & 0xF;
    v28 = vcnt_s8(v27);
    v28.i16[0] = vaddlv_u8(v28);
    v29 = *(a2 + v28.i32[0] - (v25 > 112) - (v25 > 116));
    if (!v29)
    {
      v30 = *(v13 + 1) - 102;
      v31 = v30 > 0x10;
      v32 = (1 << v30) & 0x10201;
      if (v31 || v32 == 0)
      {
        v13 += 2;
LABEL_121:
        v36 = v15;
        goto LABEL_141;
      }
    }

    v34 = (v13 + 2);
    v35 = *(v13 + 2);
    if ((v35 - 58) >= 0xFFFFFFF6)
    {
      v51 = 0;
      v36 = (v13 + 2);
      do
      {
        v51 = v35 + 10 * v51 - 48;
        v52 = *++v36;
        v35 = v52;
      }

      while ((v52 - 58) > 0xFFFFFFF5);
      *v463 = v51;
      if (*v36 != 61)
      {
LABEL_21:
        if (*v26 != 111 || a7 == 0)
        {
          if (!v29)
          {
            v13 = v36;
            goto LABEL_121;
          }

          v38 = v34 - v15;
          v40 = this[1];
          v39 = this[2];
          v41 = &v40[v38];
          if (v39)
          {
            if (v41 >= *v39)
            {
              v42 = (v41 + 255) & 0xFFFFFFFFFFFFFF00;
              v43 = malloc_type_realloc(*(v39 + 2), v42, 0x100004077774924uLL);
              v44 = this[2];
              *(v44 + 2) = v43;
              *v44 = v42;
              *this = v43;
            }
          }

          else
          {
            str_alloc(this, v41);
          }

          v138 = *this;
          this[1] += v38;
          memcpy(&v40[v138], v15, v38);
          v131 = *v463;
          v133 = this[1];
          v132 = this[2];
          v134 = (v133 + 20);
          if (!v132)
          {
            goto LABEL_139;
          }

LABEL_132:
          if (v134 >= *v132)
          {
            v135 = malloc_type_realloc(*(v132 + 2), (v133 + 275) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
            v136 = this[2];
            *(v136 + 2) = v135;
            *v136 = (v133 + 275) & 0xFFFFFFFFFFFFFF00;
            *this = v135;
          }
        }

        else
        {
          v60 = v26 - v15;
          v62 = this[1];
          v61 = this[2];
          v63 = &v62[v60];
          if (v61)
          {
            if (v63 >= *v61)
            {
              v64 = (v63 + 255) & 0xFFFFFFFFFFFFFF00;
              v65 = malloc_type_realloc(*(v61 + 2), v64, 0x100004077774924uLL);
              v66 = this[2];
              *(v66 + 2) = v65;
              *v66 = v64;
              *this = v65;
            }
          }

          else
          {
            str_alloc(this, v63);
          }

          v124 = *this;
          this[1] += v60;
          memcpy(&v62[v124], v15, v60);
          v126 = this[1];
          v125 = this[2];
          v127 = v126 + 1;
          if (v125)
          {
            if (v127 >= *v125)
            {
              v128 = malloc_type_realloc(*(v125 + 2), (v126 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
              v129 = this[2];
              *(v129 + 2) = v128;
              *v129 = (v126 & 0xFFFFFFFFFFFFFF00) + 256;
              *this = v128;
            }
          }

          else
          {
            str_alloc(this, v127);
          }

          v130 = *this;
          ++this[1];
          v130[v126] = 116;
          v131 = *v463;
          v133 = this[1];
          v132 = this[2];
          v134 = (v133 + 20);
          if (v132)
          {
            goto LABEL_132;
          }

LABEL_139:
          str_alloc(this, v134);
        }

        this[1] += itoa(&v133[*this], v131 + v29);
        v13 = v36;
        goto LABEL_141;
      }
    }

    else
    {
      v36 = 0;
      if (MEMORY[0] != 61)
      {
        goto LABEL_21;
      }
    }

    v53 = v34 - v15;
    v55 = this[1];
    v54 = this[2];
    v56 = &v55[v53];
    if (v54)
    {
      if (v56 >= *v54)
      {
        v57 = (v56 + 255) & 0xFFFFFFFFFFFFFF00;
        v58 = malloc_type_realloc(*(v54 + 2), v57, 0x100004077774924uLL);
        v59 = this[2];
        *(v59 + 2) = v58;
        *v59 = v57;
        *this = v58;
      }
    }

    else
    {
      str_alloc(this, v56);
    }

    v73 = *this;
    this[1] += v53;
    memcpy(&v55[v73], v15, v53);
    v74 = *v26;
    if (v74 == 102)
    {
      v75 = *v463;
      if (v460)
      {
        v76 = *v463;
        if (((v460 >> v463[0]) & 1) == 0)
        {
          goto LABEL_72;
        }

        goto LABEL_61;
      }

      if (v456 == -1)
      {
        if (a5 == -1)
        {
          goto LABEL_72;
        }

        v76 = *v463 - a5;
        if (*v463 < a5)
        {
          goto LABEL_72;
        }

LABEL_61:
        if (v76 == -1)
        {
          goto LABEL_72;
        }
      }

      else if (a5 == -1)
      {
        if (*v463)
        {
          goto LABEL_72;
        }
      }

      else if (*v463 != a5)
      {
        goto LABEL_72;
      }

      this[1] -= 9;
      do
      {
        v254 = *v13++;
        v36 = v13;
      }

      while (v254 != 10);
      goto LABEL_141;
    }

    if (v74 != 111 || (a7 & 1) == 0)
    {
      v75 = *v463;
LABEL_72:
      v86 = this[1];
      v85 = this[2];
      v87 = (v86 + 20);
      if (v85)
      {
        if (v87 >= *v85)
        {
          v88 = malloc_type_realloc(*(v85 + 2), (v86 + 275) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
          v89 = this[2];
          *(v89 + 2) = v88;
          *v89 = (v86 + 275) & 0xFFFFFFFFFFFFFF00;
          *this = v88;
        }
      }

      else
      {
        str_alloc(this, v87);
      }

      this[1] += itoa(&v86[*this], v75 + v29);
      v13 = (v36 + 1);
      v12 = v36[1];
      while (2)
      {
        while (2)
        {
          if (v12 == 59)
          {
            goto LABEL_142;
          }

          if ((v12 - 48) < 0xA || (ctype[2 * v12] & 0x40) == 0)
          {
            ++v13;
LABEL_90:
            v12 = *v13;
            continue;
          }

          break;
        }

        if (!strncmp(v13, "program.local", 0xDuLL))
        {
          v91 = (v13 + 13);
          v95 = *v459;
          v96 = v13 + 13 - v36;
          v98 = this[1];
          v97 = this[2];
          v99 = &v98[v96];
          if (v97)
          {
            goto LABEL_97;
          }
        }

        else if (!strncmp(v13, "fragment.texcoord", 0x11uLL))
        {
          v91 = (v13 + 17);
          v95 = *v458;
          v96 = v13 + 17 - v36;
          v98 = this[1];
          v97 = this[2];
          v99 = &v98[v96];
          if (v97)
          {
            goto LABEL_97;
          }
        }

        else
        {
          if (!strncmp(v13, "result.color", 0xCuLL))
          {
            v91 = (v13 + 12);
            v93 = v457;
            goto LABEL_96;
          }

          v91 = (v13 + 15);
          if (!strncmp(v13, "vertex.texcoord", 0xFuLL))
          {
            v95 = *v458;
            v96 = v91 - v36;
            v98 = this[1];
            v97 = this[2];
            v99 = &v98[v91 - v36];
            if (v97)
            {
              goto LABEL_97;
            }
          }

          else
          {
            v92 = strncmp(v13, "result.texcoord", 0xFuLL);
            v93 = v457;
            if (v92)
            {
              do
              {
                v94 = *++v13;
              }

              while ((ctype[2 * v94] & 0x40) != 0);
              goto LABEL_90;
            }

LABEL_96:
            v95 = *v93;
            v96 = v91 - v36;
            v98 = this[1];
            v97 = this[2];
            v99 = &v98[v91 - v36];
            if (v97)
            {
LABEL_97:
              if (v99 >= *v97)
              {
                v100 = (v99 + 255) & 0xFFFFFFFFFFFFFF00;
                v101 = malloc_type_realloc(*(v97 + 2), v100, 0x100004077774924uLL);
                v102 = this[2];
                *(v102 + 2) = v101;
                *v102 = v100;
                *this = v101;
              }

              goto LABEL_101;
            }
          }
        }

        str_alloc(this, v99);
LABEL_101:
        v103 = *this;
        this[1] += v96;
        memcpy(&v98[v103], v36, v96);
        *v463 = 0;
        v105 = arb::aidx(v91, v463, 0, v104);
        if (v105)
        {
          v36 = v105;
        }

        else
        {
          v36 = v91;
        }

        *v463 += v95;
        if (!*v463 && *v13 == 114 && v13[7] == 99)
        {
          v13 = v36;
          v12 = *v36;
        }

        else
        {
          v107 = this[1];
          v106 = this[2];
          v108 = v107 + 1;
          if (v106)
          {
            if (v108 >= *v106)
            {
              v109 = malloc_type_realloc(*(v106 + 2), (v107 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
              v110 = this[2];
              *(v110 + 2) = v109;
              *v110 = (v107 & 0xFFFFFFFFFFFFFF00) + 256;
              *this = v109;
            }
          }

          else
          {
            str_alloc(this, v108);
          }

          v111 = *this;
          ++this[1];
          v111[v107] = 91;
          v112 = *v463;
          v114 = this[1];
          v113 = this[2];
          v115 = (v114 + 20);
          if (v113)
          {
            if (v115 >= *v113)
            {
              v116 = malloc_type_realloc(*(v113 + 2), (v114 + 275) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
              v117 = this[2];
              *(v117 + 2) = v116;
              *v117 = (v114 + 275) & 0xFFFFFFFFFFFFFF00;
              *this = v116;
            }
          }

          else
          {
            str_alloc(this, v115);
          }

          v118 = itoa(&v114[*this], v112);
          v119 = this[2];
          v120 = &this[1][v118];
          this[1] = v120;
          v121 = (v120 + 1);
          if (v119)
          {
            if (v121 >= *v119)
            {
              v122 = malloc_type_realloc(*(v119 + 2), (v120 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
              v123 = this[2];
              *(v123 + 2) = v122;
              *v123 = (v120 & 0xFFFFFFFFFFFFFF00) + 256;
              *this = v122;
            }
          }

          else
          {
            str_alloc(this, v121);
          }

          v90 = *this;
          ++this[1];
          v120[v90] = 93;
          v13 = v36;
          v12 = *v36;
        }

        continue;
      }
    }

    this[1] -= 9;
    do
    {
      v77 = *v13++;
      v36 = v13;
    }

    while (v77 != 10);
LABEL_141:
    v12 = *v13;
LABEL_142:
    v15 = v36;
    if (!v12)
    {
      return;
    }
  }

  if (v12 == 35)
  {
    v18 = (v13 + 2);
    v17 = *(v13 + 2);
    if ((v17 - 58) < 0xFFFFFFF6)
    {
      if (v17 != 37)
      {
        if (v17 == 42)
        {
          v20 = this[1];
          v19 = this[2];
          v21 = &v20[v13 - v15];
          if (v19)
          {
            if (v21 >= *v19)
            {
              v22 = (v21 + 255) & 0xFFFFFFFFFFFFFF00;
              v23 = malloc_type_realloc(*(v19 + 2), v22, 0x100004077774924uLL);
              v24 = this[2];
              *(v24 + 2) = v23;
              *v24 = v22;
              *this = v23;
            }
          }

          else
          {
            str_alloc(this, v21);
          }

          v160 = *this;
          this[1] += v13 - v15;
          memcpy(&v20[v160], v15, v13 - v15);
          v16 = v13 + 4;
          v13 += 4;
          goto LABEL_5;
        }

        v16 = v13 + 4;
LABEL_4:
        v13 = v15;
        goto LABEL_5;
      }

      v16 = v13 + 4;
      v78 = v13 + 4 - v15;
      v80 = this[1];
      v79 = this[2];
      v81 = &v80[v78];
      if (v79)
      {
        if (v81 >= *v79)
        {
          v82 = (v81 + 255) & 0xFFFFFFFFFFFFFF00;
          v83 = malloc_type_realloc(*(v79 + 2), v82, 0x100004077774924uLL);
          v84 = this[2];
          *(v84 + 2) = v83;
          *v84 = v82;
          *this = v83;
        }
      }

      else
      {
        str_alloc(this, v81);
      }

      v139 = *this;
      this[1] += v78;
      memcpy(&v80[v139], v15, v13 + 4 - v15);
      if (!strncmp(v13 + 4, "TEMP r", 6uLL))
      {
        v140 = v13 + 10;
        v141 = *(a3 + 12);
        v142 = *v463;
        while (1)
        {
          v143 = *v140;
          if ((v143 - 58) >= 0xFFFFFFF6)
          {
            v142 = 0;
            v144 = v140;
            do
            {
              v142 = v143 + 10 * v142 - 48;
              v145 = *++v144;
              v143 = v145;
            }

            while ((v145 - 58) > 0xFFFFFFF5);
            *v463 = v142;
            v146 = *v144;
            if (*v144)
            {
              if ((v146 - 33) >= 0xFFFFFFE0)
              {
                do
                {
LABEL_153:
                  v147 = *++v144;
                  v146 = v147;
                }

                while ((v147 - 33) > 0xFFFFFFDF);
              }

LABEL_154:
              if (v146 == 35)
              {
                ++v144;
                while (1)
                {
                  v146 = *v144;
                  if (!*v144)
                  {
                    break;
                  }

                  v148 = *(v144++ - 1);
                  if (v148 == 10)
                  {
                    --v144;
                    if ((v146 - 33) >= 0xFFFFFFE0)
                    {
                      goto LABEL_153;
                    }

                    goto LABEL_154;
                  }
                }
              }
            }
          }

          else
          {
            v144 = 0;
          }

          if (v142 >= v141)
          {
            break;
          }

          v149 = *v144;
          v16 = v144 + 2;
          v140 = v16;
          if (v149 == 59)
          {
            goto LABEL_162;
          }
        }

        v245 = this[1];
        v244 = this[2];
        v246 = (v245 + 6);
        if (v244)
        {
          if (v246 >= *v244)
          {
            v247 = malloc_type_realloc(*(v244 + 2), (v245 + 261) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
            v248 = this[2];
            *(v248 + 2) = v247;
            *v248 = (v245 + 261) & 0xFFFFFFFFFFFFFF00;
            *this = v247;
          }
        }

        else
        {
          str_alloc(this, v246);
        }

        v343 = 0;
        v344 = *this;
        this[1] += 6;
        v345 = &v245[v344];
        *(v345 + 2) = 29216;
        *v345 = 1347241300;
        do
        {
          v346 = v144[v343++ - 2];
        }

        while (v346 != 59);
        v347 = v144 - v140;
        v348 = v144 - v140 + v343 - 1;
        v350 = this[1];
        v349 = this[2];
        v351 = &v350[v348];
        if (v349)
        {
          if (v351 >= *v349)
          {
            v352 = malloc_type_realloc(*(v349 + 2), &v350[v347 + 254 + v343] & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
            v353 = this[2];
            *(v353 + 2) = v352;
            *v353 = &v350[v347 + 254 + v343] & 0xFFFFFFFFFFFFFF00;
            *this = v352;
          }
        }

        else
        {
          str_alloc(this, v351);
        }

        v16 = &v144[v343 - 1];
        v365 = *this;
        this[1] = &this[1][v347 - 1 + v343];
        memcpy(&v350[v365], v140, v348);
        if (strncmp(v16, "LONG TEMP l", 0xBuLL))
        {
LABEL_424:
          if (!strncmp(v16, "SHORT TEMP h", 0xCuLL))
          {
            goto LABEL_425;
          }

LABEL_447:
          if (!strncmp(v16, "INT TEMP i", 0xAuLL))
          {
            goto LABEL_448;
          }

LABEL_482:
          if (strncmp(v16, "UINT TEMP u", 0xBuLL))
          {
            goto LABEL_483;
          }

          goto LABEL_486;
        }
      }

      else
      {
LABEL_162:
        if (strncmp(v16, "LONG TEMP l", 0xBuLL))
        {
          goto LABEL_424;
        }
      }

      v150 = v16 + 11;
      v151 = *(a3 + 27);
      v152 = *v463;
      while (1)
      {
        v153 = *v150;
        if ((v153 - 58) >= 0xFFFFFFF6)
        {
          v152 = 0;
          v154 = v150;
          do
          {
            v152 = v153 + 10 * v152 - 48;
            v155 = *++v154;
            v153 = v155;
          }

          while ((v155 - 58) > 0xFFFFFFF5);
          *v463 = v152;
          v156 = *v154;
          if (*v154)
          {
            if ((v156 - 33) >= 0xFFFFFFE0)
            {
              do
              {
LABEL_170:
                v157 = *++v154;
                v156 = v157;
              }

              while ((v157 - 33) > 0xFFFFFFDF);
            }

LABEL_171:
            if (v156 == 35)
            {
              ++v154;
              while (1)
              {
                v156 = *v154;
                if (!*v154)
                {
                  break;
                }

                v158 = *(v154++ - 1);
                if (v158 == 10)
                {
                  --v154;
                  if ((v156 - 33) >= 0xFFFFFFE0)
                  {
                    goto LABEL_170;
                  }

                  goto LABEL_171;
                }
              }
            }
          }
        }

        else
        {
          v154 = 0;
        }

        if (v152 >= v151)
        {
          break;
        }

        v159 = *v154;
        v16 = v154 + 2;
        v150 = v16;
        if (v159 == 59)
        {
          goto LABEL_424;
        }
      }

      v250 = this[1];
      v249 = this[2];
      v251 = (v250 + 11);
      if (v249)
      {
        if (v251 >= *v249)
        {
          v252 = malloc_type_realloc(*(v249 + 2), (v250 + 266) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
          v253 = this[2];
          *(v253 + 2) = v252;
          *v253 = (v250 + 266) & 0xFFFFFFFFFFFFFF00;
          *this = v252;
        }
      }

      else
      {
        str_alloc(this, v251);
      }

      v354 = 0;
      v355 = *this;
      this[1] += 11;
      v356 = &v250[v355];
      *v356 = *"LONG TEMP l";
      *(v356 + 7) = 1814057037;
      do
      {
        v357 = v154[v354++ - 2];
      }

      while (v357 != 59);
      v358 = v154 - v150;
      v359 = v154 - v150 + v354 - 1;
      v361 = this[1];
      v360 = this[2];
      v362 = &v361[v359];
      if (v360)
      {
        if (v362 >= *v360)
        {
          v363 = malloc_type_realloc(*(v360 + 2), &v361[v358 + 254 + v354] & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
          v364 = this[2];
          *(v364 + 2) = v363;
          *v364 = &v361[v358 + 254 + v354] & 0xFFFFFFFFFFFFFF00;
          *this = v363;
        }
      }

      else
      {
        str_alloc(this, v362);
      }

      v16 = &v154[v354 - 1];
      v381 = *this;
      this[1] = &this[1][v358 - 1 + v354];
      memcpy(&v361[v381], v150, v359);
      if (strncmp(v16, "SHORT TEMP h", 0xCuLL))
      {
        goto LABEL_447;
      }

LABEL_425:
      v366 = v16 + 12;
      v367 = *(a3 + 26);
      v368 = *v463;
      while (1)
      {
        v369 = *v366;
        if ((v369 - 58) >= 0xFFFFFFF6)
        {
          v368 = 0;
          v370 = v366;
          do
          {
            v368 = v369 + 10 * v368 - 48;
            v371 = *++v370;
            v369 = v371;
          }

          while ((v371 - 58) > 0xFFFFFFF5);
          *v463 = v368;
          v372 = *v370;
          if (*v370)
          {
            if ((v372 - 33) >= 0xFFFFFFE0)
            {
              do
              {
LABEL_432:
                v373 = *++v370;
                v372 = v373;
              }

              while ((v373 - 33) > 0xFFFFFFDF);
            }

LABEL_433:
            if (v372 == 35)
            {
              ++v370;
              while (1)
              {
                v372 = *v370;
                if (!*v370)
                {
                  break;
                }

                v374 = *(v370++ - 1);
                if (v374 == 10)
                {
                  --v370;
                  if ((v372 - 33) >= 0xFFFFFFE0)
                  {
                    goto LABEL_432;
                  }

                  goto LABEL_433;
                }
              }
            }
          }
        }

        else
        {
          v370 = 0;
        }

        if (v368 >= v367)
        {
          break;
        }

        v375 = *v370;
        v16 = v370 + 2;
        v366 = v16;
        if (v375 == 59)
        {
          goto LABEL_447;
        }
      }

      v377 = this[1];
      v376 = this[2];
      v378 = (v377 + 12);
      if (v376)
      {
        if (v378 >= *v376)
        {
          v379 = malloc_type_realloc(*(v376 + 2), (v377 + 267) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
          v380 = this[2];
          *(v380 + 2) = v379;
          *v380 = (v377 + 267) & 0xFFFFFFFFFFFFFF00;
          *this = v379;
        }
      }

      else
      {
        str_alloc(this, v378);
      }

      v397 = 0;
      v398 = *this;
      this[1] += 12;
      v399 = &v377[v398];
      *v399 = *"SHORT TEMP h";
      *(v399 + 2) = 1746948173;
      do
      {
        v400 = v370[v397++ - 2];
      }

      while (v400 != 59);
      v401 = v370 - v366;
      v402 = v370 - v366 + v397 - 1;
      v404 = this[1];
      v403 = this[2];
      v405 = &v404[v402];
      if (v403)
      {
        if (v405 >= *v403)
        {
          v406 = malloc_type_realloc(*(v403 + 2), &v404[v401 + 254 + v397] & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
          v407 = this[2];
          *(v407 + 2) = v406;
          *v407 = &v404[v401 + 254 + v397] & 0xFFFFFFFFFFFFFF00;
          *this = v406;
        }
      }

      else
      {
        str_alloc(this, v405);
      }

      v16 = &v370[v397 - 1];
      v419 = *this;
      this[1] = &this[1][v401 - 1 + v397];
      memcpy(&v404[v419], v366, v402);
      if (strncmp(v16, "INT TEMP i", 0xAuLL))
      {
        goto LABEL_482;
      }

LABEL_448:
      v382 = v16 + 10;
      v383 = *(a3 + 28);
      v384 = *v463;
      while (1)
      {
        v385 = *v382;
        if ((v385 - 58) >= 0xFFFFFFF6)
        {
          v384 = 0;
          v386 = v382;
          do
          {
            v384 = v385 + 10 * v384 - 48;
            v387 = *++v386;
            v385 = v387;
          }

          while ((v387 - 58) > 0xFFFFFFF5);
          *v463 = v384;
          v388 = *v386;
          if (*v386)
          {
            if ((v388 - 33) >= 0xFFFFFFE0)
            {
              do
              {
LABEL_455:
                v389 = *++v386;
                v388 = v389;
              }

              while ((v389 - 33) > 0xFFFFFFDF);
            }

LABEL_456:
            if (v388 == 35)
            {
              ++v386;
              while (1)
              {
                v388 = *v386;
                if (!*v386)
                {
                  break;
                }

                v390 = *(v386++ - 1);
                if (v390 == 10)
                {
                  --v386;
                  if ((v388 - 33) >= 0xFFFFFFE0)
                  {
                    goto LABEL_455;
                  }

                  goto LABEL_456;
                }
              }
            }
          }
        }

        else
        {
          v386 = 0;
        }

        if (v384 >= v383)
        {
          break;
        }

        v391 = *v386;
        v16 = v386 + 2;
        v382 = v16;
        if (v391 == 59)
        {
          goto LABEL_482;
        }
      }

      v393 = this[1];
      v392 = this[2];
      v394 = (v393 + 10);
      if (v392)
      {
        if (v394 >= *v392)
        {
          v395 = malloc_type_realloc(*(v392 + 2), (v393 + 265) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
          v396 = this[2];
          *(v396 + 2) = v395;
          *v396 = (v393 + 265) & 0xFFFFFFFFFFFFFF00;
          *this = v395;
        }
      }

      else
      {
        str_alloc(this, v394);
      }

      v408 = 0;
      v409 = *this;
      this[1] += 10;
      v410 = &v393[v409];
      *v410 = *"INT TEMP i";
      *(v410 + 4) = 26912;
      do
      {
        v411 = v386[v408++ - 2];
      }

      while (v411 != 59);
      v412 = v386 - v382;
      v413 = v386 - v382 + v408 - 1;
      v415 = this[1];
      v414 = this[2];
      v416 = &v415[v413];
      if (v414)
      {
        if (v416 >= *v414)
        {
          v417 = malloc_type_realloc(*(v414 + 2), &v415[v412 + 254 + v408] & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
          v418 = this[2];
          *(v418 + 2) = v417;
          *v418 = &v415[v412 + 254 + v408] & 0xFFFFFFFFFFFFFF00;
          *this = v417;
        }
      }

      else
      {
        str_alloc(this, v416);
      }

      v16 = &v386[v408 - 1];
      v420 = *this;
      this[1] = &this[1][v412 - 1 + v408];
      memcpy(&v415[v420], v382, v413);
      if (strncmp(v16, "UINT TEMP u", 0xBuLL))
      {
LABEL_483:
        v13 = v16;
        goto LABEL_5;
      }

LABEL_486:
      v13 = v16 + 11;
      v421 = *(a3 + 29);
      v422 = *v463;
      while (1)
      {
        v423 = *v13;
        if ((v423 - 58) >= 0xFFFFFFF6)
        {
          v422 = 0;
          v424 = v13;
          do
          {
            v422 = v423 + 10 * v422 - 48;
            v425 = *++v424;
            v423 = v425;
          }

          while ((v425 - 58) > 0xFFFFFFF5);
          *v463 = v422;
          v426 = *v424;
          if (*v424)
          {
            if ((v426 - 33) >= 0xFFFFFFE0)
            {
              do
              {
LABEL_493:
                v427 = *++v424;
                v426 = v427;
              }

              while ((v427 - 33) > 0xFFFFFFDF);
            }

LABEL_494:
            if (v426 == 35)
            {
              ++v424;
              while (1)
              {
                v426 = *v424;
                if (!*v424)
                {
                  break;
                }

                v428 = *(v424++ - 1);
                if (v428 == 10)
                {
                  --v424;
                  if ((v426 - 33) >= 0xFFFFFFE0)
                  {
                    goto LABEL_493;
                  }

                  goto LABEL_494;
                }
              }
            }
          }
        }

        else
        {
          v424 = 0;
        }

        if (v422 >= v421)
        {
          break;
        }

        v429 = *v424;
        v16 = v424 + 2;
        v13 = v16;
        if (v429 == 59)
        {
          goto LABEL_5;
        }
      }

      v431 = this[1];
      v430 = this[2];
      v432 = (v431 + 11);
      if (v430)
      {
        if (v432 >= *v430)
        {
          v433 = malloc_type_realloc(*(v430 + 2), (v431 + 266) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
          v434 = this[2];
          *(v434 + 2) = v433;
          *v434 = (v431 + 266) & 0xFFFFFFFFFFFFFF00;
          *this = v433;
        }
      }

      else
      {
        str_alloc(this, v432);
      }

      v435 = 0;
      v436 = *this;
      this[1] += 11;
      v437 = &v431[v436];
      *v437 = *"UINT TEMP u";
      *(v437 + 7) = 1965051981;
      do
      {
        v438 = v424[v435++ - 2];
      }

      while (v438 != 59);
      v439 = v424 - v13;
      v440 = v424 - v13 + v435 - 1;
      v442 = this[1];
      v441 = this[2];
      v443 = &v442[v440];
      if (v441)
      {
        if (v443 >= *v441)
        {
          v444 = malloc_type_realloc(*(v441 + 2), &v442[v439 + 254 + v435] & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
          v445 = this[2];
          *(v445 + 2) = v444;
          *v445 = &v442[v439 + 254 + v435] & 0xFFFFFFFFFFFFFF00;
          *this = v444;
        }
      }

      else
      {
        str_alloc(this, v443);
      }

      v16 = &v424[v435 - 1];
      v446 = *this;
      this[1] = &this[1][v439 - 1 + v435];
      memcpy(&v442[v446], v13, v440);
      goto LABEL_5;
    }

    v46 = this[1];
    v45 = this[2];
    v47 = &v46[v13 - v15];
    if (v45)
    {
      if (v47 >= *v45)
      {
        v48 = (v47 + 255) & 0xFFFFFFFFFFFFFF00;
        v49 = malloc_type_realloc(*(v45 + 2), v48, 0x100004077774924uLL);
        v50 = this[2];
        *(v50 + 2) = v49;
        *v50 = v48;
        *this = v49;
      }
    }

    else
    {
      str_alloc(this, v47);
    }

    v67 = *this;
    this[1] += v13 - v15;
    memcpy(&v46[v67], v15, v13 - v15);
    v68 = *v18;
    if ((v68 - 58) >= 0xFFFFFFF6)
    {
      v69 = 0;
      do
      {
        v69 = v68 + 10 * v69 - 48;
        v72 = *++v18;
        v68 = v72;
      }

      while ((v72 - 58) > 0xFFFFFFF5);
      *v463 = v69;
      v70 = v460;
      if (!v460)
      {
        goto LABEL_53;
      }

LABEL_47:
      if (((v70 >> v69) & 1) == 0)
      {
        goto LABEL_183;
      }
    }

    else
    {
      v18 = 0;
      v69 = *v463;
      v70 = v460;
      if (v460)
      {
        goto LABEL_47;
      }

LABEL_53:
      if (v456 != -1)
      {
        if (a5 == -1)
        {
          v71 = v456;
          if (!v69)
          {
LABEL_187:
            v167 = this[1];
            v166 = this[2];
            v168 = (v167 + 3);
            if (v166)
            {
              if (v168 >= *v166)
              {
                v169 = malloc_type_realloc(*(v166 + 2), (v167 + 258) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
                v170 = this[2];
                *(v170 + 2) = v169;
                *v170 = (v167 + 258) & 0xFFFFFFFFFFFFFF00;
                *this = v169;
              }
            }

            else
            {
              str_alloc(this, v168);
            }

            v171 = *this;
            this[1] += 3;
            v172 = &v167[v171];
            v172[2] = 86;
            *v172 = 20301;
            v173 = v18 + 4;
            v174 = 256;
            v175 = *v173;
            if (v175 == 44)
            {
LABEL_253:
              v218 = this[1];
              v217 = this[2];
              v219 = &v218[v174 - 255];
              if (v217)
              {
                if (v219 >= *v217)
                {
                  v220 = malloc_type_realloc(*(v217 + 2), &v218[v174] & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
                  v221 = this[2];
                  *(v221 + 2) = v220;
                  *v221 = &v218[v174] & 0xFFFFFFFFFFFFFF00;
                  *this = v220;
                }
              }

              else
              {
                str_alloc(this, v219);
              }

              v222 = *this;
              this[1] = &this[1][v174 - 255];
              memcpy(&v218[v222], v173, v174 - 255);
              v224 = this[1];
              v223 = this[2];
              v225 = (v224 + 2);
              if (v223)
              {
                if (v225 >= *v223)
                {
                  v226 = malloc_type_realloc(*(v223 + 2), (v224 + 257) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
                  v227 = this[2];
                  *(v227 + 2) = v226;
                  *v227 = (v224 + 257) & 0xFFFFFFFFFFFFFF00;
                  *this = v226;
                }
              }

              else
              {
                str_alloc(this, v225);
              }

              v228 = *this;
              this[1] += 2;
              *&v224[v228] = 29732;
              v230 = this[1];
              v229 = this[2];
              v231 = (v230 + 20);
              if (v229)
              {
                if (v231 >= *v229)
                {
                  v232 = malloc_type_realloc(*(v229 + 2), (v230 + 275) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
                  v233 = this[2];
                  *(v233 + 2) = v232;
                  *v233 = (v230 + 275) & 0xFFFFFFFFFFFFFF00;
                  *this = v232;
                }
              }

              else
              {
                str_alloc(this, v231);
              }

              this[1] += itoa(&v230[*this], v71);
              v16 = (v173 - 1);
              do
              {
                v234 = *++v16;
                v13 = v16;
              }

              while (v234 != 59);
              goto LABEL_5;
            }

            while (2)
            {
              while (v175 != 36)
              {
                v175 = v173[++v174 - 256];
                if (v175 == 44)
                {
                  goto LABEL_253;
                }
              }

              v176 = v174 - 254;
              v178 = this[1];
              v177 = this[2];
              if (v177)
              {
                if (&v178[v176] < *v177)
                {
                  v179 = *this;
                  goto LABEL_206;
                }

                v179 = malloc_type_realloc(*(v177 + 2), &v178[v174 + 1] & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
                v185 = this[2];
                *(v185 + 2) = v179;
                *v185 = &v178[v174 + 1] & 0xFFFFFFFFFFFFFF00;
              }

              else
              {
                v180 = &v178[v174 + 1] & 0xFFFFFFFFFFFFFF00;
                v181 = malloc_type_malloc(0x18uLL, 0x1010040A79CA2DEuLL);
                v182 = malloc_type_malloc(v180, 0x100004077774924uLL);
                *(v181 + 2) = v182;
                bzero(v182, v180);
                *(v181 + 1) = 1;
                v183 = this[1];
                if (v183)
                {
                  memcpy(*(v181 + 2), *this, v183);
                }

                v184 = this[2];
                if (v184)
                {
                  --*(v184 + 1);
                }

                *v181 = v180;
                this[2] = v181;
                v179 = *(v181 + 2);
              }

              *this = v179;
LABEL_206:
              v186 = &v173[v176];
              this[1] = &this[1][v174 - 254];
              memcpy(&v178[v179], v173, v174 - 254);
              v187 = v173[v176];
              if ((v187 - 58) >= 0xFFFFFFF6)
              {
                v188 = 0;
                v173 += v176;
                do
                {
                  v188 = v187 + 10 * v188 - 48;
                  v189 = *++v173;
                  v187 = v189;
                }

                while ((v189 - 58) > 0xFFFFFFF5);
                *v463 = v188;
                LOBYTE(v187) = *v186;
              }

              else
              {
                v173 = 0;
                v188 = *v463;
              }

              v190 = v187 > 99;
              if (v187 > 97)
              {
                ++v190;
              }

              if (v187 > 102)
              {
                ++v190;
              }

              if (v187 > 111)
              {
                ++v190;
              }

              v191 = *(a2 + v190 - (v187 > 112) - (v187 > 116));
              v193 = this[1];
              v192 = this[2];
              if (v192)
              {
                if ((v193 + 20) < *v192)
                {
                  v194 = v188 + v191;
                  v195 = &v193[*this];
                  if (v188 + v191 < 0)
                  {
                    break;
                  }

LABEL_228:
                  v196 = 0;
LABEL_229:
                  v204 = vdupq_n_s32(v194);
                  v205 = vandq_s8(vuzp1q_s16(vcgtq_u32(v204, xmmword_260391160), vcgtq_u32(v204, xmmword_260391150)), xmmword_260391170);
                  v205.i32[0] = vaddvq_s16(v205);
                  v206 = vcnt_s8(*v205.i8);
                  v206.i16[0] = vaddlv_u8(v206);
                  v207 = v206.i32[0];
                  if (v194 > 9)
                  {
                    v207 = v206.i32[0] + 1;
                  }

                  if (v207 <= 4)
                  {
                    if (v207 > 2)
                    {
                      if (v207 != 3)
                      {
                        goto LABEL_248;
                      }

                      goto LABEL_249;
                    }

                    if (v207 == 1)
                    {
                      goto LABEL_251;
                    }

                    if (v207 == 2)
                    {
                      goto LABEL_250;
                    }
                  }

                  else
                  {
                    if (v207 <= 6)
                    {
                      if (v207 != 5)
                      {
                        goto LABEL_246;
                      }

                      goto LABEL_247;
                    }

                    switch(v207)
                    {
                      case 7:
                        goto LABEL_238;
                      case 8:
                        goto LABEL_237;
                      case 9:
                        v208 = v194 / 0x3B9ACA00u;
                        v194 %= 0x3B9ACA00u;
                        v195[v196++] = v208 | 0x30;
LABEL_237:
                        v209 = v194 / 100000000;
                        v194 %= 100000000;
                        v195[v196++] = v209 + 48;
LABEL_238:
                        v210 = v194 / 10000000;
                        v194 %= 10000000;
                        v195[v196++] = v210 + 48;
LABEL_246:
                        v211 = v194 / 1000000;
                        v194 %= 1000000;
                        v195[v196++] = v211 + 48;
LABEL_247:
                        v212 = v194 / 100000;
                        v194 %= 100000;
                        v195[v196++] = v212 + 48;
LABEL_248:
                        v213 = v194 / 10000;
                        v194 %= 10000;
                        v195[v196++] = v213 + 48;
LABEL_249:
                        v214 = v194 / 1000;
                        v194 %= 1000;
                        v195[v196++] = v214 + 48;
LABEL_250:
                        v215 = v194 / 100;
                        v194 %= 100;
                        v195[v196++] = v215 + 48;
LABEL_251:
                        v216 = v194 / 10;
                        v194 %= 10;
                        v195[v196++] = v216 + 48;
                        break;
                    }
                  }

                  v195[v196] = v194 + 48;
                  this[1] += v196 + 1;
                  v174 = 256;
                  v175 = *v173;
                  if (v175 == 44)
                  {
                    goto LABEL_253;
                  }

                  continue;
                }

                v202 = malloc_type_realloc(*(v192 + 2), (v193 + 275) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
                v203 = this[2];
                *(v203 + 2) = v202;
                *v203 = (v193 + 275) & 0xFFFFFFFFFFFFFF00;
                *this = v202;
                v194 = v188 + v191;
                v195 = &v193[v202];
                if (((v188 + v191) & 0x80000000) == 0)
                {
                  goto LABEL_228;
                }
              }

              else
              {
                v197 = malloc_type_malloc(0x18uLL, 0x1010040A79CA2DEuLL);
                v198 = malloc_type_malloc((v193 + 275) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
                *(v197 + 2) = v198;
                bzero(v198, (v193 + 275) & 0xFFFFFFFFFFFFFF00);
                *(v197 + 1) = 1;
                v199 = this[1];
                if (v199)
                {
                  memcpy(*(v197 + 2), *this, v199);
                }

                v200 = this[2];
                if (v200)
                {
                  --*(v200 + 1);
                }

                *v197 = (v193 + 275) & 0xFFFFFFFFFFFFFF00;
                this[2] = v197;
                v201 = *(v197 + 2);
                *this = v201;
                v194 = v188 + v191;
                v195 = &v193[v201];
                if (((v188 + v191) & 0x80000000) == 0)
                {
                  goto LABEL_228;
                }
              }

              break;
            }

            *v195 = 45;
            v194 = -v194;
            v196 = 1;
            goto LABEL_229;
          }
        }

        else
        {
          v71 = v456;
          if (v69 == a5)
          {
            goto LABEL_187;
          }
        }

        goto LABEL_183;
      }

      if (a5 == -1 || (v137 = v69 >= a5, v69 -= a5, !v137))
      {
LABEL_183:
        if (!*(a2 + 6))
        {
          v16 = (v18 + 2);
          goto LABEL_5;
        }

        v162 = this[1];
        v161 = this[2];
        v163 = (v162 + 2);
        if (v161)
        {
          if (v163 >= *v161)
          {
            v164 = malloc_type_realloc(*(v161 + 2), (v162 + 257) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
            v165 = this[2];
            *(v165 + 2) = v164;
            *v165 = (v162 + 257) & 0xFFFFFFFFFFFFFF00;
            *this = v164;
          }
        }

        else
        {
          str_alloc(this, v163);
        }

        v235 = *this;
        this[1] += 2;
        *&v162[v235] = 8995;
        v236 = *(a2 + 6);
        v237 = *v463;
        v239 = this[1];
        v238 = this[2];
        v240 = (v239 + 20);
        if (v238)
        {
          if (v240 >= *v238)
          {
            v241 = malloc_type_realloc(*(v238 + 2), (v239 + 275) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
            v242 = this[2];
            *(v242 + 2) = v241;
            *v242 = (v239 + 275) & 0xFFFFFFFFFFFFFF00;
            *this = v241;
          }
        }

        else
        {
          str_alloc(this, v240);
        }

        v243 = &this[1][itoa(&v239[*this], v237 + v236)];
LABEL_298:
        v267 = 0;
        this[1] = v243;
        while (1)
        {
          v268 = v18[v267];
          if (v268 == 101)
          {
            if (v18[v267 + 1] == 91 && v18[v267 - 7] != 46)
            {
              v329 = &v243[v267 + 2];
              v330 = this[2];
              if (v330)
              {
                if (v329 >= *v330)
                {
                  v331 = malloc_type_realloc(*(v330 + 2), &v243[v267 + 257] & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
                  v332 = this[2];
                  *(v332 + 2) = v331;
                  *v332 = &v243[v267 + 257] & 0xFFFFFFFFFFFFFF00;
                  *this = v331;
                }
              }

              else
              {
                str_alloc(this, v329);
              }

              v16 = &v18[v267 + 2];
              v333 = *this;
              this[1] += v267 + 2;
              memcpy(&v243[v333], v18, v267 + 2);
              v334 = *v16;
              if ((v334 - 58) >= 0xFFFFFFF6)
              {
                v335 = 0;
                do
                {
                  v335 = v334 + 10 * v335 - 48;
                  v342 = *++v16;
                  v334 = v342;
                }

                while ((v342 - 58) > 0xFFFFFFF5);
                *v463 = v335;
                v336 = *(a2 + 6);
                v338 = this[1];
                v337 = this[2];
                v339 = (v338 + 20);
                if (v337)
                {
                  goto LABEL_403;
                }

LABEL_408:
                str_alloc(this, v339);
                goto LABEL_409;
              }

              v16 = 0;
              v335 = *v463;
              v336 = *(a2 + 6);
              v338 = this[1];
              v337 = this[2];
              v339 = (v338 + 20);
              if (!v337)
              {
                goto LABEL_408;
              }

LABEL_403:
              if (v339 >= *v337)
              {
                v340 = malloc_type_realloc(*(v337 + 2), (v338 + 275) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
                v341 = this[2];
                *(v341 + 2) = v340;
                *v341 = (v338 + 275) & 0xFFFFFFFFFFFFFF00;
                *this = v340;
              }

LABEL_409:
              this[1] += itoa(&v338[*this], v335 + v336);
              v13 = v16;
LABEL_5:
              v15 = v13;
              v12 = *v16;
              v13 = v16;
              goto LABEL_6;
            }
          }

          else if (v268 == 36)
          {
            if (v18[v267 + 1] == 111 && a7 != 0)
            {
              v274 = &v243[v267];
              v275 = this[2];
              if (v275)
              {
                if (v274 >= *v275)
                {
                  v276 = malloc_type_realloc(*(v275 + 2), &v243[v267 + 255] & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
                  v277 = this[2];
                  *(v277 + 2) = v276;
                  *v277 = &v243[v267 + 255] & 0xFFFFFFFFFFFFFF00;
                  *this = v276;
                }
              }

              else
              {
                str_alloc(this, v274);
              }

              v294 = *this;
              this[1] += v267;
              memcpy(&v243[v294], v18, v267);
              v278 = &v18[v267 + 2];
              v295 = *v278;
              if ((v295 - 58) >= 0xFFFFFFF6)
              {
                v301 = 0;
                do
                {
                  v301 = v295 + 10 * v301 - 48;
                  v302 = *++v278;
                  v295 = v302;
                }

                while ((v302 - 58) > 0xFFFFFFF5);
                *v463 = v301;
                v297 = this[1];
                v296 = this[2];
                v298 = (v297 + 2);
                if (v296)
                {
                  goto LABEL_336;
                }
              }

              else
              {
                v278 = 0;
                v297 = this[1];
                v296 = this[2];
                v298 = (v297 + 2);
                if (v296)
                {
LABEL_336:
                  if (v298 >= *v296)
                  {
                    v299 = malloc_type_realloc(*(v296 + 2), (v297 + 257) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
                    v300 = this[2];
                    *(v300 + 2) = v299;
                    *v300 = (v297 + 257) & 0xFFFFFFFFFFFFFF00;
                    *this = v299;
                  }

LABEL_342:
                  v303 = *this;
                  this[1] += 2;
                  *&v297[v303] = 29732;
                  v304 = (v463[0] + 111);
                  v305 = v304 > 99;
                  if (v304 > 97)
                  {
                    ++v305;
                  }

                  if (v304 > 102)
                  {
                    ++v305;
                  }

                  if (v304 > 111)
                  {
                    ++v305;
                  }

                  v256 = *(a2 + v305 - (v304 > 112) - (v304 > 116));
                  v307 = this[1];
                  v306 = this[2];
                  v308 = (v307 + 20);
                  if (v306)
                  {
                    if (v308 >= *v306)
                    {
                      v309 = malloc_type_realloc(*(v306 + 2), (v307 + 275) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
                      v310 = this[2];
                      *(v310 + 2) = v309;
                      *v310 = (v307 + 275) & 0xFFFFFFFFFFFFFF00;
                      *this = v309;
                    }

                    v311 = &v307[*this];
                    if ((v256 & 0x80000000) == 0)
                    {
LABEL_352:
                      v257 = 0;
                      goto LABEL_371;
                    }
                  }

                  else
                  {
                    str_alloc(this, v308);
                    v311 = &v307[*this];
                    if ((v256 & 0x80000000) == 0)
                    {
                      goto LABEL_352;
                    }
                  }

                  *v311 = 45;
                  v256 = -v256;
                  v257 = 1;
LABEL_371:
                  v319 = vdupq_n_s32(v256);
                  v320 = vandq_s8(vuzp1q_s16(vcgtq_u32(v319, xmmword_260391160), vcgtq_u32(v319, xmmword_260391150)), xmmword_260391170);
                  v320.i32[0] = vaddvq_s16(v320);
                  v321 = vcnt_s8(*v320.i8);
                  v321.i16[0] = vaddlv_u8(v321);
                  v322 = v321.i32[0];
                  if (v256 > 9)
                  {
                    v322 = v321.i32[0] + 1;
                  }

                  if (v322 > 4)
                  {
                    if (v322 <= 6)
                    {
                      if (v322 != 5)
                      {
                        goto LABEL_290;
                      }
                    }

                    else
                    {
                      if (v322 != 7)
                      {
                        if (v322 != 8)
                        {
                          if (v322 != 9)
                          {
                            goto LABEL_296;
                          }

                          v255 = v256 / 0x3B9ACA00u;
                          v256 %= 0x3B9ACA00u;
                          v311[v257++] = v255 | 0x30;
                        }

                        v258 = v256 / 100000000;
                        v256 %= 100000000;
                        v311[v257++] = v258 + 48;
                      }

                      v259 = v256 / 10000000;
                      v256 %= 10000000;
                      v311[v257++] = v259 + 48;
LABEL_290:
                      v260 = v256 / 1000000;
                      v256 %= 1000000;
                      v311[v257++] = v260 + 48;
                    }

                    v261 = v256 / 100000;
                    v256 %= 100000;
                    v311[v257++] = v261 + 48;
LABEL_292:
                    v262 = v256 / 10000;
                    v256 %= 10000;
                    v311[v257++] = v262 + 48;
LABEL_293:
                    v263 = v256 / 1000;
                    v256 %= 1000;
                    v311[v257++] = v263 + 48;
LABEL_294:
                    v264 = v256 / 100;
                    v256 %= 100;
                    v311[v257++] = v264 + 48;
LABEL_295:
                    v265 = v256 / 10;
                    v256 %= 10;
                    v311[v257++] = v265 + 48;
                    goto LABEL_296;
                  }

                  if (v322 > 2)
                  {
                    if (v322 != 3)
                    {
                      goto LABEL_292;
                    }

                    goto LABEL_293;
                  }

                  if (v322 == 1)
                  {
                    goto LABEL_295;
                  }

                  if (v322 == 2)
                  {
                    goto LABEL_294;
                  }

LABEL_296:
                  v266 = v257 + 1;
                  v311[v257] = v256 + 48;
LABEL_297:
                  v243 = &this[1][v266];
                  v18 = v278;
                  goto LABEL_298;
                }
              }

              str_alloc(this, v298);
              goto LABEL_342;
            }

            v270 = &v243[v267 + 2];
            v271 = this[2];
            if (v271)
            {
              if (v270 >= *v271)
              {
                v272 = malloc_type_realloc(*(v271 + 2), &v243[v267 + 257] & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
                v273 = this[2];
                *(v273 + 2) = v272;
                *v273 = &v243[v267 + 257] & 0xFFFFFFFFFFFFFF00;
                *this = v272;
              }
            }

            else
            {
              str_alloc(this, v270);
            }

            v278 = &v18[v267 + 2];
            v279 = *this;
            this[1] += v267 + 2;
            memcpy(&v243[v279], v18, v267 + 2);
            v280 = *v278;
            if ((v280 - 58) >= 0xFFFFFFF6)
            {
              v281 = 0;
              do
              {
                v281 = v280 + 10 * v281 - 48;
                v282 = *++v278;
                v280 = v282;
              }

              while ((v282 - 58) > 0xFFFFFFF5);
              *v463 = v281;
            }

            else
            {
              v278 = 0;
              v281 = *v463;
            }

            v283 = v18[v267 + 1];
            v284 = v283 > 99;
            if (v283 > 97)
            {
              ++v284;
            }

            if (v283 > 102)
            {
              ++v284;
            }

            if (v283 > 111)
            {
              ++v284;
            }

            v285 = *(a2 + v284 - (v283 > 112) - (v283 > 116));
            v287 = this[1];
            v286 = this[2];
            v288 = (v287 + 20);
            if (v286)
            {
              if (v288 >= *v286)
              {
                v289 = malloc_type_realloc(*(v286 + 2), (v287 + 275) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
                v290 = this[2];
                *(v290 + 2) = v289;
                *v290 = (v287 + 275) & 0xFFFFFFFFFFFFFF00;
                *this = v289;
              }

              v291 = v281 + v285;
              v292 = &v287[*this];
              if (((v281 + v285) & 0x80000000) == 0)
              {
LABEL_332:
                v293 = 0;
                goto LABEL_355;
              }
            }

            else
            {
              str_alloc(this, v288);
              v291 = v281 + v285;
              v292 = &v287[*this];
              if (((v281 + v285) & 0x80000000) == 0)
              {
                goto LABEL_332;
              }
            }

            *v292 = 45;
            v291 = -v291;
            v293 = 1;
LABEL_355:
            v312 = vdupq_n_s32(v291);
            v313 = vandq_s8(vuzp1q_s16(vcgtq_u32(v312, xmmword_260391160), vcgtq_u32(v312, xmmword_260391150)), xmmword_260391170);
            v313.i32[0] = vaddvq_s16(v313);
            v314 = vcnt_s8(*v313.i8);
            v314.i16[0] = vaddlv_u8(v314);
            v315 = v314.i32[0];
            if (v291 > 9)
            {
              v315 = v314.i32[0] + 1;
            }

            if (v315 <= 4)
            {
              if (v315 > 2)
              {
                if (v315 != 3)
                {
                  goto LABEL_390;
                }

                goto LABEL_391;
              }

              if (v315 == 1)
              {
                goto LABEL_393;
              }

              if (v315 == 2)
              {
                goto LABEL_392;
              }
            }

            else
            {
              if (v315 <= 6)
              {
                if (v315 != 5)
                {
                  goto LABEL_388;
                }

                goto LABEL_389;
              }

              switch(v315)
              {
                case 7:
                  goto LABEL_364;
                case 8:
                  goto LABEL_363;
                case 9:
                  v316 = v291 / 0x3B9ACA00u;
                  v291 %= 0x3B9ACA00u;
                  v292[v293++] = v316 | 0x30;
LABEL_363:
                  v317 = v291 / 100000000;
                  v291 %= 100000000;
                  v292[v293++] = v317 + 48;
LABEL_364:
                  v318 = v291 / 10000000;
                  v291 %= 10000000;
                  v292[v293++] = v318 + 48;
LABEL_388:
                  v323 = v291 / 1000000;
                  v291 %= 1000000;
                  v292[v293++] = v323 + 48;
LABEL_389:
                  v324 = v291 / 100000;
                  v291 %= 100000;
                  v292[v293++] = v324 + 48;
LABEL_390:
                  v325 = v291 / 10000;
                  v291 %= 10000;
                  v292[v293++] = v325 + 48;
LABEL_391:
                  v326 = v291 / 1000;
                  v291 %= 1000;
                  v292[v293++] = v326 + 48;
LABEL_392:
                  v327 = v291 / 100;
                  v291 %= 100;
                  v292[v293++] = v327 + 48;
LABEL_393:
                  v328 = v291 / 10;
                  v291 %= 10;
                  v292[v293++] = v328 + 48;
                  break;
              }
            }

            v266 = v293 + 1;
            v292[v293] = v291 + 48;
            goto LABEL_297;
          }

          ++v267;
        }
      }
    }

    v71 = v69;
    if (v69 != -1)
    {
      goto LABEL_187;
    }

    goto LABEL_183;
  }

  if (strncmp(v13 - 1, "\nEND\n", 5uLL))
  {
    v16 = v13 + 1;
    goto LABEL_4;
  }

  v448 = this[1];
  v447 = this[2];
  v449 = &v448[v13 - v15];
  if (v447)
  {
    if (v449 >= *v447)
    {
      v450 = (v449 + 255) & 0xFFFFFFFFFFFFFF00;
      v451 = malloc_type_realloc(*(v447 + 2), v450, 0x100004077774924uLL);
      v452 = this[2];
      *(v452 + 2) = v451;
      *v452 = v450;
      *this = v451;
    }
  }

  else
  {
    str_alloc(this, v449);
  }

  v453 = *this;
  this[1] += v13 - v15;
  memcpy(&v448[v453], v15, v13 - v15);
}