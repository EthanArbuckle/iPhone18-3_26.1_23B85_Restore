void *sub_295717088(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = sub_295718060(a1, a2, a3, a4, 11, a5);
  *result = &unk_2A1C97FB0;
  return result;
}

void sub_2957170C8(uint64_t a1)
{
  sub_2957180D8(a1);

  JUMPOUT(0x29C250EB0);
}

void sub_295717100(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8)
{
  if ((a6 & 3) != 0)
  {
    sub_29572C1E8();
  }

  if (a7 < a8)
  {
    v8 = 0;
    v9 = a6 >> 2;
    v10 = (a4 - 11) / 0xC;
    if (v10 <= 1)
    {
      v10 = 1;
    }

    v184 = v10;
    v11 = v9 * (3 * a7 + 2);
    v12 = a3 + 4 * v11 + 24;
    v13 = 12 * v9;
    v14 = a2 + 4 * v11 + 44;
    v15 = v9 + v9 * 3 * a7;
    v16 = a3 + 4 * v15 + 24;
    v17 = a2 + 4 * v15 + 44;
    v18 = 12 * v9 * a7;
    v19 = v18 + a3 + 24;
    v20 = v18 + a2 + 44;
    do
    {
      v21 = 3 * a7 * v9;
      v22 = (a2 + 4 * v21);
      v23 = (a3 + 4 * v21);
      v24 = v9 + v21;
      v25 = (a2 + 4 * v24);
      v26 = (a3 + 4 * v24);
      v27 = (3 * a7 + 2) * v9;
      v28 = (a2 + 4 * v27);
      v29 = (a3 + 4 * v27);
      v30 = *v22;
      v31 = v22[6];
      v32 = v22[7];
      v33 = v22[8];
      v34 = v22[9];
      v35 = v22[10];
      v36 = *v25;
      v37 = v25[1];
      v38 = v25[2];
      v39 = v25[3];
      v40 = v25[4];
      v41 = v25[5];
      v42 = v25[6];
      v43 = v25[7];
      v44 = v25[8];
      v45 = v25[9];
      v46 = v25[10];
      v47 = *v28;
      v48 = v28[1];
      v50 = v28[2];
      v49 = v28[3];
      v52 = v28[4];
      v51 = v28[5];
      v53 = v28[6];
      v54 = v28[7];
      v188 = v22[2];
      v189 = v22[1];
      v186 = v22[4];
      v187 = v22[3];
      v185 = v22[5];
      v55 = (((((*v22 + v189) + v188) + v187) + v186) + v185) + 0.0;
      v57 = v28[8];
      v56 = v28[9];
      v58 = v28[10];
      *v23 = v55;
      v59 = v37;
      v60 = v36 + v37;
      v61 = v38;
      v62 = v60 + v38;
      v63 = v57;
      v64 = v52;
      v65 = v58;
      v66 = v50;
      v67 = v56;
      v68 = (((v62 + v39) + v40) + v41) + 0.0;
      *v26 = v68;
      v69 = (((((v47 + v48) + v66) + v49) + v64) + v51) + 0.0;
      *v29 = v69;
      v70 = v31 + v55;
      v23[1] = v70;
      v71 = v42 + v68;
      v26[1] = v71;
      v72 = v53 + v69;
      v29[1] = v72;
      v73 = v32 + v70;
      v23[2] = v73;
      v74 = v43 + v71;
      v26[2] = v74;
      v75 = v54 + v72;
      v29[2] = v75;
      v76 = v33 + v73;
      v23[3] = v76;
      v77 = v44 + v74;
      v26[3] = v77;
      v78 = v63 + v75;
      v29[3] = v78;
      v79 = v34 + v76;
      v23[4] = v79;
      v80 = v45 + v77;
      v26[4] = v80;
      v81 = v67 + v78;
      v29[4] = v81;
      v82 = v35 + v79;
      v23[5] = v82;
      v83 = v46 + v80;
      v26[5] = v83;
      v84 = v65 + v81;
      v29[5] = v84;
      if (a4 - 11 >= 0xC)
      {
        v91 = v8;
        v92 = v184;
        v194 = v54;
        v195 = v53;
        v192 = v66;
        v193 = v67;
        v94 = v187;
        v93 = v188;
        v191 = v51;
        v95 = v189;
        v96 = v65;
        v98 = v185;
        v97 = v186;
        v99 = v63;
        v100 = v61;
        do
        {
          v101 = v82 - v30;
          v102 = v83 - v36;
          v103 = v84 - v47;
          v104 = (v19 + v91);
          v190 = *(v20 + v91);
          v105 = *(v17 + v91);
          v106 = *(v14 + v91);
          *v104 = v101 + v190;
          v107 = (v101 + v190) - v95;
          v108 = (v16 + v91);
          *v108 = v102 + v105;
          v109 = (v102 + v105) - v59;
          v110 = (v12 + v91);
          v111 = v103 + v106;
          *v110 = v111;
          v112 = v111 - v48;
          v113 = *(v20 + v91 + 4);
          v114 = v107 + v113;
          v36 = *(v17 + v91 + 4);
          v47 = *(v14 + v91 + 4);
          v104[1] = v114;
          v115 = v114 - v93;
          v116 = v109 + v36;
          v108[1] = v116;
          v117 = v116 - v100;
          v110[1] = v112 + v47;
          v118 = (v112 + v47) - v192;
          v95 = *(v20 + v91 + 8);
          v119 = v115 + v95;
          v59 = *(v17 + v91 + 8);
          v48 = *(v14 + v91 + 8);
          v104[2] = v119;
          v120 = v119 - v94;
          v121 = v117 + v59;
          v108[2] = v121;
          v122 = v121 - v39;
          v123 = v118 + v48;
          v110[2] = v123;
          v124 = v123 - v49;
          v93 = *(v20 + v91 + 12);
          v125 = v120 + v93;
          v100 = *(v17 + v91 + 12);
          v126 = *(v14 + v91 + 12);
          v104[3] = v125;
          v127 = v125 - v97;
          v128 = v122 + v100;
          v108[3] = v128;
          v129 = v128 - v40;
          v192 = v126;
          v130 = v124 + v126;
          v110[3] = v130;
          v131 = v130 - v64;
          v94 = *(v20 + v91 + 16);
          v132 = v127 + v94;
          v39 = *(v17 + v91 + 16);
          v49 = *(v14 + v91 + 16);
          v104[4] = v132;
          v133 = v132 - v98;
          v134 = v129 + v39;
          v108[4] = v134;
          v135 = v134 - v41;
          v136 = v131 + v49;
          v110[4] = v136;
          v137 = v136 - v191;
          v97 = *(v20 + v91 + 20);
          v138 = v133 + v97;
          v40 = *(v17 + v91 + 20);
          v64 = *(v14 + v91 + 20);
          v104[5] = v138;
          v139 = v135 + v40;
          v108[5] = v139;
          v140 = v139 - v42;
          v141 = v137 + v64;
          v110[5] = v141;
          v142 = v141 - v195;
          v98 = *(v20 + v91 + 24);
          v143 = (v138 - v31) + v98;
          v41 = *(v17 + v91 + 24);
          v144 = *(v14 + v91 + 24);
          v104[6] = v143;
          v145 = v140 + v41;
          v108[6] = v145;
          v146 = v145 - v43;
          v191 = v144;
          v110[6] = v142 + v144;
          v147 = (v142 + v144) - v194;
          v148 = v35;
          v149 = v34;
          v150 = *(v20 + v91 + 28);
          v151 = (v143 - v32) + v150;
          v42 = *(v17 + v91 + 28);
          v152 = *(v14 + v91 + 28);
          v104[7] = v151;
          v153 = v151 - v33;
          v154 = v146 + v42;
          v108[7] = v154;
          v155 = v154 - v44;
          v195 = v152;
          v156 = v147 + v152;
          v31 = v150;
          v110[7] = v156;
          v157 = v156 - v99;
          v32 = *(v20 + v91 + 32);
          v158 = v153 + v32;
          v43 = *(v17 + v91 + 32);
          v159 = *(v14 + v91 + 32);
          v104[8] = v158;
          v160 = v158 - v149;
          v161 = v155 + v43;
          v108[8] = v161;
          v162 = v161 - v45;
          v194 = v159;
          v110[8] = v157 + v159;
          v163 = (v157 + v159) - v193;
          v33 = *(v20 + v91 + 36);
          v164 = v160 + v33;
          v44 = *(v17 + v91 + 36);
          v99 = *(v14 + v91 + 36);
          v104[9] = v164;
          v165 = v164 - v148;
          v30 = v113;
          v166 = v162 + v44;
          v108[9] = v166;
          v167 = v166 - v46;
          v110[9] = v163 + v99;
          v168 = (v163 + v99) - v96;
          v34 = *(v20 + v91 + 40);
          v169 = v165 + v34;
          v45 = *(v17 + v91 + 40);
          v170 = *(v14 + v91 + 40);
          v104[10] = v169;
          v171 = v169 - v190;
          v172 = v167 + v45;
          v108[10] = v172;
          v173 = v172 - v105;
          v193 = v170;
          v110[10] = v168 + v170;
          v174 = (v168 + v170) - v106;
          v35 = *(v20 + v91 + 44);
          v82 = v171 + v35;
          v46 = *(v17 + v91 + 44);
          v83 = v173 + v46;
          v96 = *(v14 + v91 + 44);
          v84 = v174 + v96;
          v104[11] = v82;
          v108[11] = v83;
          v110[11] = v174 + v96;
          v91 += 48;
          --v92;
        }

        while (v92);
        v90 = (v12 + v91);
        v87 = (v14 + v91);
        v89 = (v16 + v91);
        v86 = (v17 + v91);
        v88 = (v19 + v91);
        v85 = (v20 + v91);
      }

      else
      {
        v85 = v22 + 11;
        v86 = v25 + 11;
        v87 = v28 + 11;
        v88 = v23 + 6;
        v89 = v26 + 6;
        v90 = v29 + 6;
      }

      if (12 * ((a4 - 11) / 0xC) + 6 >= a4 - 5)
      {
        v179 = v85 - 11;
        v178 = v86 - 11;
        v177 = v87 - 11;
      }

      else
      {
        v175 = 0x3FFFFFFFFFFFFFF5;
        v176 = (a4 - 11) % 0xC;
        do
        {
          v82 = (v82 - v85[v175]) + v85[v175 + 11];
          v83 = (v83 - v86[v175]) + v86[v175 + 11];
          v84 = (v84 - v87[v175]) + v87[v175 + 11];
          v88[v175 + 11] = v82;
          v89[v175 + 11] = v83;
          v90[v175 + 11] = v84;
          ++v175;
          --v176;
        }

        while (v176);
        v177 = &v87[v175];
        v178 = &v86[v175];
        v179 = &v85[v175];
        v90 = (v90 + v175 * 4 + 44);
        v89 = (v89 + v175 * 4 + 44);
        v88 = (v88 + v175 * 4 + 44);
        v13 = 12 * v9;
      }

      v180 = a4 - 5;
      if (a4 >= 5)
      {
        do
        {
          v181 = *v179++;
          v82 = v82 - v181;
          v182 = *v178++;
          v83 = v83 - v182;
          v183 = *v177++;
          v84 = v84 - v183;
          *v88++ = v82;
          *v89++ = v83;
          *v90++ = v84;
          ++v180;
        }

        while (v180 < a4);
      }

      ++a7;
      v8 += v13;
    }

    while (a7 != a8);
  }
}

double sub_29571779C@<D0>(unsigned int a1@<W0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 48) = xmmword_295742850;
  *(a3 + 64) = unk_295742860;
  *(a3 + 80) = xmmword_295742870;
  *(a3 + 96) = unk_295742880;
  *(a3 + 16) = xmmword_295742830;
  *(a3 + 32) = unk_295742840;
  *(a3 + 112) = 0xA00000010;
  *(a3 + 120) = xmmword_295742810;
  *(a3 + 136) = 0;
  *(a3 + 140) = 0x4120000042C80000;
  *(a3 + 148) = 1040187392;
  *&result = 0x800000008;
  *(a3 + 152) = xmmword_295742820;
  *(a3 + 168) = 0x1441800000;
  *(a3 + 176) = 0;
  *(a3 + 176) = 1062836634;
  return result;
}

uint64_t sub_295717820(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

float sub_295717878(void *a1, uint64_t a2, _DWORD *a3)
{
  if (a1 && a2 && a3)
  {
    v5 = MEMORY[0x29EDBA0F8];
    v6 = a1;
    objc_msgSend_stringWithUTF8String_(v5, v7, a2, v8, v9, v10);
    Float32IfPresent = FigCFDictionaryGetFloat32IfPresent();

    if (Float32IfPresent)
    {
      result = 0.0;
      *a3 = 0;
    }
  }

  return result;
}

BOOL sub_295717910(void *a1, uint64_t a2, _DWORD *a3)
{
  result = 0;
  if (a1 && a2 && a3)
  {
    v7 = MEMORY[0x29EDBA0F8];
    v8 = a1;
    objc_msgSend_stringWithUTF8String_(v7, v9, a2, v10, v11, v12);
    Int32IfPresent = FigCFDictionaryGetInt32IfPresent();

    result = Int32IfPresent != 0;
    if (Int32IfPresent)
    {
      *a3 = 0;
    }
  }

  return result;
}

void sub_2957179A8(uint64_t a1, __int16 a2, __int16 a3)
{
  *a1 = a2;
  *(a1 + 2) = a3;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  operator new[]();
}

void sub_295717A18(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    *(v1 + 24) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_295717A38(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x29C250E90](v2, 0x1000C8052888210);
    a1[1] = 0;
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  return a1;
}

unsigned __int16 *sub_295717A90(unsigned __int16 *result, float32x4_t *a2, int32x2_t a3)
{
  if (result[1] * *result)
  {
    v3 = 0;
    v4 = vdupq_lane_s32(a3, 0);
    v5 = *(result + 1);
    do
    {
      v6 = *a2++;
      *v5++ = vceqq_f32(v6, v4);
      v3 += 4;
    }

    while (v3 < result[1] * *result);
  }

  return result;
}

void sub_295717AD4(unsigned __int16 *a1, uint64_t a2)
{
  v2 = *a1 + (*(a2 + 24) & 0xFEu);
  v3 = a1[1] + (*(a2 + 25) & 0xFEu);
  operator new[]();
}

unsigned __int16 *sub_295717CAC(unsigned __int16 *result, float *a2, float a3)
{
  v3 = result[1] * *result;
  if (v3)
  {
    v4 = *(result + 1);
    do
    {
      v5 = *a2++;
      v6 = *v4;
      if (v5 >= a3)
      {
        v6 = -1;
      }

      *v4++ = v6;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_295717CE8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_295717D5C(result, a4);
  }

  return result;
}

void sub_295717D40(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_295717D5C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_295717DB0(a1, a2);
  }

  sub_295717D98();
}

void sub_295717DB0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_295717E88();
}

void sub_295717DF8(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_295717E54(exception, a1);
  __cxa_throw(exception, off_29EDD7578, MEMORY[0x29EDC9348]);
}

std::logic_error *sub_295717E54(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

void sub_295717E88()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x29EDC9488], MEMORY[0x29EDC9370]);
}

uint64_t sub_295717EBC()
{
  LODWORD(v5) = -1;
  *&v0 = -1;
  *(&v0 + 1) = -1;
  v3 = v0;
  v4 = v0;
  qword_2A18AAA48 = 0;
  unk_2A18AAA50 = 0;
  qword_2A18AAA40 = 0;
  sub_295717CE8(&qword_2A18AAA40, &v3, &v5 + 4, 9uLL);
  word_2A18AAA58 = 771;
  v3 = xmmword_295742890;
  v4 = unk_2957428A0;
  LODWORD(v5) = 0;
  qword_2A18AABE0 = 0;
  unk_2A18AABE8 = 0;
  qword_2A18AABD8 = 0;
  sub_295717CE8(&qword_2A18AABD8, &v3, &v5 + 4, 9uLL);
  word_2A18AABF0 = 771;
  LODWORD(v9[0]) = -1;
  *&v1 = -1;
  *(&v1 + 1) = -1;
  v7 = v1;
  v8 = v1;
  v5 = v1;
  v6 = v1;
  v3 = v1;
  v4 = v1;
  qword_2A18AA9C8 = 0;
  unk_2A18AA9D0 = 0;
  qword_2A18AA9C0 = 0;
  sub_295717CE8(&qword_2A18AA9C0, &v3, v9 + 4, 0x19uLL);
  word_2A18AA9D8 = 1285;
  v5 = xmmword_2957428D4;
  v6 = unk_2957428E4;
  v7 = xmmword_2957428F4;
  v8 = unk_295742904;
  v3 = xmmword_2957428B4;
  v4 = *algn_2957428C4;
  LODWORD(v9[0]) = 0;
  qword_2A18AAB60 = 0;
  unk_2A18AAB68 = 0;
  qword_2A18AAB58 = 0;
  sub_295717CE8(&qword_2A18AAB58, &v3, v9 + 4, 0x19uLL);
  word_2A18AAB70 = 1285;
  v9[2] = xmmword_295742998;
  v9[3] = unk_2957429A8;
  v9[4] = xmmword_2957429B8;
  v9[5] = unk_2957429C8;
  v7 = xmmword_295742958;
  v8 = unk_295742968;
  memset(v9, 255, 32);
  v3 = xmmword_295742918;
  v4 = unk_295742928;
  v5 = xmmword_295742938;
  v6 = unk_295742948;
  v10 = 0;
  qword_2A18AAAD8 = 0;
  unk_2A18AAAE0 = 0;
  qword_2A18AAAE8 = 0;
  result = sub_295717CE8(&qword_2A18AAAD8, &v3, &v11, 0x31uLL);
  word_2A18AAAF0 = 1799;
  return result;
}

void *sub_295718060(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = a6;
  *a1 = &unk_2A1C98010;
  a1[1] = a2;
  a1[2] = a3;
  a1[3] = a4;
  a1[4] = a5;
  a1[5] = v11;
  a1[6] = dispatch_semaphore_create(0);
  return a1;
}

void sub_295718114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8, uint64_t a9)
{
  v9 = *(a1 + 32);
  if ((v9 & 1) == 0)
  {
    sub_29572C8F0();
  }

  if (v9 >= a7)
  {
    sub_29572C86C();
  }

  if (v9 >= a8)
  {
    sub_29572C898();
  }

  if (a8 <= 2)
  {
    sub_29572C8C4();
  }

  v20[0] = MEMORY[0x29EDCA5F8];
  v20[1] = 3221225472;
  v20[2] = sub_2957182AC;
  v20[3] = &unk_29EDD7580;
  v20[4] = a1;
  v20[5] = a8 / 3;
  v20[6] = a8 / 0xC;
  v20[7] = a8;
  v20[8] = a2;
  v20[9] = a4;
  v20[10] = a3;
  v20[11] = a5;
  v20[12] = a6;
  v20[13] = a7;
  v20[14] = a9;
  v11 = MEMORY[0x29C2511D0](v20);
  v12 = *(a1 + 40);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = sub_295718530;
  block[3] = &unk_29EDD75A8;
  v19 = a1;
  v13 = v11;
  v18 = v13;
  dispatch_async(v12, block);
  v14 = 0;
  v15 = 1;
  do
  {
    v16 = v15;
    (*(v13 + 2))(v13, v14);
    v15 = 0;
    v14 = 1;
  }

  while ((v16 & 1) != 0);
  dispatch_semaphore_wait(*(a1 + 48), 0xFFFFFFFFFFFFFFFFLL);
}

uint64_t sub_2957182AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 64);
  v23 = *(a1 + 80);
  v24 = v3;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v19 = *(a1 + 56);
  v7 = v4 + v6 * (a2 - 3);
  if (a2)
  {
    v8 = v7 - v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = 3 * v8;
  v10 = 3 * v7;
  v11 = 3 * v4;
  v12 = &v23;
  v13 = &v24;
  v14 = 1;
  v18 = v11;
  do
  {
    v21 = v14;
    v22 = 0;
    v15 = *v13;
    (*(*v5 + 24))(v5, *v13, *(a1 + 96), *(a1 + 104), *(a1 + 56), *(a1 + 112), v9, v10, &v22);
    (*(*v5 + 32))(v5, v15, *(a1 + 96), *(a1 + 104), *(a1 + 56), *(a1 + 112), v22, v9, v10);
    v16 = *v12;
    result = (*(*v5 + 40))(v5, *(a1 + 96), v16, *(a1 + 104), *(a1 + 56), *(a1 + 112), v8, v7);
    if (a2 == 3)
    {
      (*(*v5 + 24))(v5, v15, *(a1 + 96), *(a1 + 104), *(a1 + 56), *(a1 + 112), v18, v19, &v22);
      v10 = 3 * v7;
      (*(*v5 + 32))(v5, v15, *(a1 + 96), *(a1 + 104), *(a1 + 56), *(a1 + 112), v22, v18, v19);
      result = (*(*v5 + 48))(v5, *(a1 + 96), v16, *(a1 + 104), *(a1 + 56), *(a1 + 112), 3, *(a1 + 40));
    }

    v14 = 0;
    v12 = &v23 + 1;
    v13 = (&v24 + 8);
  }

  while ((v21 & 1) != 0);
  return result;
}

intptr_t sub_295718530(uint64_t a1)
{
  v2 = *(a1 + 40);
  for (i = 2; i != 4; ++i)
  {
    (*(*(a1 + 32) + 16))();
  }

  v4 = *(v2 + 48);

  return dispatch_semaphore_signal(v4);
}

float32x4_t *sub_295718594(float32x4_t *result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, void *a9)
{
  if (a8 > a5)
  {
    sub_29572C9A0();
  }

  v9 = result[2].u64[0];
  if (v9 >= a5)
  {
    sub_29572C91C();
  }

  if (v9 >= a4)
  {
    sub_29572C948();
  }

  if ((a6 & 3) != 0)
  {
    sub_29572C974();
  }

  v10 = (a4 / 0xC);
  *a9 = 12 * v10;
  if (a7 != a8)
  {
    v11 = v9 >> 1;
    v12 = a6 >> 2;
    v13 = a7 + 1;
    v14 = a7 + 1 + (v9 >> 1);
    if (v14 >= a5)
    {
      v15 = a5;
    }

    else
    {
      v15 = v14;
    }

    v16 = 4 * v12;
    if (v10)
    {
      v17 = 0;
      v18 = (a7 - v11) & ~((a7 - v11) >> 31);
      v19 = a2 + 4 * v12 * v18;
      v20 = v18 + 1;
      result = (~v18 + v15);
      v21 = (a2 + 4 * v12 * v20);
      do
      {
        v22 = (v19 + 48 * v17);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = v21;
        v27 = result;
        if (v20 < v15)
        {
          do
          {
            v28 = *v26;
            v29 = v26[1];
            v30 = v26[2];
            v26 = (v26 + v16);
            v23 = vaddq_f32(v23, v28);
            v24 = vaddq_f32(v24, v29);
            v25 = vaddq_f32(v25, v30);
            v27 = (v27 - 1);
          }

          while (v27);
        }

        v31 = (a3 + 4 * v12 * a7 + 48 * v17);
        *v31 = v23;
        v31[1] = v24;
        v31[2] = v25;
        ++v17;
        v21 += 3;
      }

      while (v17 != v10);
    }

    if (v11 + 1 < a8)
    {
      v32 = v11 + 1;
    }

    else
    {
      v32 = a8;
    }

    if (v13 < v32)
    {
      v33 = (a3 + 4 * v12 * v13);
      v34 = (a2 + 4 * (v12 + v12 * (a7 + v11)));
      v35 = (a3 + 4 * a7 * v12);
      v36 = a7 + 1;
      do
      {
        result = v35;
        v37 = v34;
        v38 = v33;
        for (i = v10; i; --i)
        {
          v40 = *result;
          v41 = result[1];
          v42 = result[2];
          result += 3;
          v43 = *v37;
          v44 = v37[1];
          v45 = v37[2];
          v37 += 3;
          *v38 = vaddq_f32(v40, v43);
          v38[1] = vaddq_f32(v41, v44);
          v38[2] = vaddq_f32(v42, v45);
          v38 += 3;
        }

        ++v36;
        v33 = (v33 + v16);
        v34 = (v34 + v16);
        v35 = (v35 + v16);
      }

      while (v36 != v32);
    }

    if (v13 > v32)
    {
      v32 = v13;
    }

    v46 = a5 - v11;
    if (a5 - v11 >= a8)
    {
      v46 = a8;
    }

    if (v32 < v46)
    {
      v47 = (a3 + 4 * v32 * v12);
      v48 = (a2 + 4 * v12 * (v32 + v11));
      v49 = (a2 + 4 * v12 * (v32 - 1 - v11));
      result = (a3 + 4 * v12 * (v32 - 1));
      do
      {
        v50 = result;
        v51 = v49;
        v52 = v48;
        v53 = v47;
        for (j = v10; j; --j)
        {
          v55 = *v50;
          v56 = v50[1];
          v57 = v50[2];
          v50 += 3;
          v58 = *v51;
          v59 = v51[1];
          v60 = v51[2];
          v51 += 3;
          v61 = *v52;
          v62 = v52[1];
          v63 = v52[2];
          v52 += 3;
          *v53 = vaddq_f32(vsubq_f32(v55, v58), v61);
          v53[1] = vaddq_f32(vsubq_f32(v56, v59), v62);
          v53[2] = vaddq_f32(vsubq_f32(v57, v60), v63);
          v53 += 3;
        }

        ++v32;
        v47 = (v47 + v16);
        v48 = (v48 + v16);
        v49 = (v49 + v16);
        result = (result + v16);
      }

      while (v32 != v46);
    }

    if (v13 <= v46)
    {
      v13 = v46;
    }

    if (v13 < a8)
    {
      v64 = (a3 + 4 * v13 * v12);
      v65 = (a2 + 4 * v12 * (v13 - 1 - v11));
      v66 = (a3 + 4 * v12 * (v13 - 1));
      do
      {
        v67 = v66;
        v68 = v65;
        v69 = v64;
        for (k = v10; k; --k)
        {
          v71 = *v67;
          v72 = v67[1];
          v73 = v67[2];
          v67 += 3;
          v74 = *v68;
          v75 = v68[1];
          v76 = v68[2];
          v68 += 3;
          *v69 = vsubq_f32(v71, v74);
          v69[1] = vsubq_f32(v72, v75);
          v69[2] = vsubq_f32(v73, v76);
          v69 += 3;
        }

        ++v13;
        v64 = (v64 + v16);
        v65 = (v65 + v16);
        v66 = (v66 + v16);
      }

      while (v13 != a8);
    }
  }

  return result;
}

float32x4_t *sub_29571886C(float32x4_t *result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  if ((a6 & 3) != 0)
  {
    sub_29572C9CC();
  }

  if (a4 <= 4)
  {
    sub_29572CA7C();
  }

  if (a9 > a5)
  {
    sub_29572CA50();
  }

  v9 = result[2].u64[0];
  if (v9 >= a5)
  {
    sub_29572C9F8();
  }

  if (v9 >= a4)
  {
    sub_29572CA24();
  }

  if (a8 != a9)
  {
    v10 = v9 >> 1;
    v11 = a6 >> 2;
    v12 = vcvts_n_u32_f32(ceilf(vcvts_n_f32_u64(a4 - a7, 2uLL)), 2uLL);
    v13 = a4 - v12;
    v14 = a8 + 1;
    if (a8 + 1 + v10 >= a5)
    {
      v15 = a5;
    }

    else
    {
      v15 = a8 + 1 + v10;
    }

    v16 = 4 * v11;
    if (v13 < a4)
    {
      v17 = (a8 - v10) & ~((a8 - v10) >> 31);
      v18 = a2 + 4 * v11 * v17;
      v19 = v17 + 1;
      result = (a3 + 4 * v11 * a8);
      v20 = ~v17 + v15;
      v21 = (a2 + 4 * v11 * v19 + 4 * a4 - 4 * v12);
      v22 = a4 - v12;
      do
      {
        v23 = *(v18 + 4 * v22);
        v24 = v21;
        v25 = v20;
        if (v19 < v15)
        {
          do
          {
            v23 = vaddq_f32(v23, *v24);
            v24 = (v24 + v16);
            --v25;
          }

          while (v25);
        }

        *(result + 4 * v22) = v23;
        v22 += 4;
        ++v21;
      }

      while (v22 < a4);
    }

    if (v10 + 1 < a9)
    {
      v26 = v10 + 1;
    }

    else
    {
      v26 = a9;
    }

    if (v14 < v26)
    {
      v27 = (a3 + 4 * a8 * v11 + 4 * a4 - 4 * v12);
      v28 = (a2 + 4 * (v11 + v11 * (a8 + v10)) + 4 * a4 - 4 * v12);
      result = (a3 + 4 * v11 * v14 + 4 * a4 - 4 * v12);
      v29 = a8 + 1;
      do
      {
        v30 = result;
        v31 = v28;
        v32 = v27;
        v33 = a4 - v12;
        if (v13 < a4)
        {
          do
          {
            v34 = *v32++;
            v35 = v34;
            v36 = *v31++;
            *v30++ = vaddq_f32(v35, v36);
            v33 += 4;
          }

          while (v33 < a4);
        }

        ++v29;
        v27 = (v27 + v16);
        v28 = (v28 + v16);
        result = (result + v16);
      }

      while (v29 != v26);
    }

    if (v14 > v26)
    {
      v26 = v14;
    }

    v37 = a5 - v10;
    if (a5 - v10 >= a9)
    {
      v37 = a9;
    }

    if (v26 < v37)
    {
      v38 = a3 - 4 * v12;
      result = (v38 + 4 * v11 * (v26 - 1));
      v39 = a2 - 4 * v12;
      v40 = v39 + 4 * v11 * (v26 - 1 - v10);
      v41 = v39 + 4 * v11 * (v26 + v10);
      v42 = v38 + 4 * v26 * v11;
      do
      {
        v43 = v42;
        v44 = v41;
        v45 = v40;
        v46 = result;
        v47 = a4 - v12;
        if (v13 < a4)
        {
          do
          {
            *(v43 + 4 * a4) = vaddq_f32(vsubq_f32(*(v46 + 4 * a4), *(v45 + 4 * a4)), *(v44 + 4 * a4));
            v47 += 4;
            ++v46;
            v45 += 16;
            v44 += 16;
            v43 += 16;
          }

          while (v47 < a4);
        }

        ++v26;
        result = (result + v16);
        v40 += v16;
        v41 += v16;
        v42 += v16;
      }

      while (v26 != v37);
    }

    if (v14 <= v37)
    {
      v14 = v37;
    }

    if (v14 < a9)
    {
      v48 = (a3 + 4 * v11 * (v14 - 1) + 4 * a4 - 4 * v12);
      v49 = (a2 + 4 * v11 * (v14 - 1 - v10) + 4 * a4 - 4 * v12);
      v50 = (a3 + 4 * v14 * v11 + 4 * a4 - 4 * v12);
      do
      {
        v51 = v50;
        v52 = v49;
        v53 = v48;
        result = v13;
        if (v13 < a4)
        {
          do
          {
            v54 = *v53++;
            v55 = v54;
            v56 = *v52++;
            *v51++ = vsubq_f32(v55, v56);
            result = (result + 4);
          }

          while (result < a4);
        }

        ++v14;
        v48 = (v48 + v16);
        v49 = (v49 + v16);
        v50 = (v50 + v16);
      }

      while (v14 != a9);
    }
  }

  return result;
}

unint64_t sub_295718B94(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a6 & 3) != 0)
  {
    sub_29572CAA8();
  }

  v8 = *(result + 32);
  if (v8 >= a4)
  {
    sub_29572CAD4();
  }

  if (v8 >= a5)
  {
    sub_29572CB00();
  }

  v9 = a8 * a7;
  if (a8 * a7 < a5)
  {
    v10 = a6 >> 2;
    v11 = a4 - (v8 >> 1);
    v12 = v9 * (a6 >> 2);
    v13 = (a2 + 4 * v12);
    v14 = 4 * (a6 >> 2);
    v15 = a3 + 4 * v12 + 4;
    result = ~(2 * (v8 >> 1)) + a4;
    v16 = 4 * v12 + 8 * (v8 >> 1) + a2 + 4;
    v17 = v15 + 4 * (v8 >> 1);
    v18 = a4 + v12;
    v19 = a2 - 8 * (v8 >> 1) + 4 * v18 - 4;
    v20 = (a3 + 4 * (v18 - (v8 >> 1)));
    do
    {
      v21 = 0.0;
      v22 = v13;
      v23 = (v8 >> 1) + 1;
      do
      {
        v24 = *v22++;
        v21 = v21 + v24;
        --v23;
      }

      while (v23);
      *(a3 + 4 * v9 * v10) = v21;
      v25 = v15;
      v26 = 4 * (v8 >> 1) + 4;
      v27 = v8 >> 1;
      if (v8 >= 2)
      {
        do
        {
          v21 = v21 + *(v13 + v26);
          *v25++ = v21;
          v26 += 4;
          --v27;
        }

        while (v27);
      }

      if ((v8 >> 1) + 1 < v11)
      {
        v28 = 0;
        do
        {
          v21 = (v21 - v13[v28]) + *(v16 + 4 * v28);
          *(v17 + 4 * v28++) = v21;
        }

        while (result != v28);
      }

      v29 = v20;
      v30 = v19;
      v31 = v8 >> 1;
      if (v11 < a4)
      {
        do
        {
          v32 = *v30++;
          v21 = v21 - v32;
          *v29++ = v21;
          --v31;
        }

        while (v31);
      }

      ++v9;
      v13 = (v13 + v14);
      v15 += v14;
      v16 += v14;
      v17 += v14;
      v19 += v14;
      v20 = (v20 + v14);
    }

    while (v9 != a5);
  }

  return result;
}

void sub_295718DF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = FigStreamingDepthProcessorCPU;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_295719234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_295719570(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_295719570(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

size_t sub_2957195E8(int a1, int a2, CVPixelBufferRef pixelBuffer)
{

  return CVPixelBufferGetBytesPerRow(pixelBuffer);
}

uint64_t sub_295719610()
{

  return kdebug_trace();
}

void sub_295719640()
{
  v0 = objc_autoreleasePoolPush();
  LODWORD(v5) = -1;
  *&v1 = -1;
  *(&v1 + 1) = -1;
  v3 = v1;
  v4 = v1;
  qword_2A18AAA68 = 0;
  unk_2A18AAA70 = 0;
  qword_2A18AAA60 = 0;
  sub_295717CE8(&qword_2A18AAA60, &v3, &v5 + 4, 9uLL);
  word_2A18AAA78 = 771;
  v3 = xmmword_295742A38;
  v4 = unk_295742A48;
  LODWORD(v5) = 0;
  qword_2A18AAC00 = 0;
  unk_2A18AAC08 = 0;
  qword_2A18AABF8 = 0;
  sub_295717CE8(&qword_2A18AABF8, &v3, &v5 + 4, 9uLL);
  word_2A18AAC10 = 771;
  LODWORD(v9[0]) = -1;
  *&v2 = -1;
  *(&v2 + 1) = -1;
  v7 = v2;
  v8 = v2;
  v5 = v2;
  v6 = v2;
  v3 = v2;
  v4 = v2;
  qword_2A18AA9E8 = 0;
  unk_2A18AA9F0 = 0;
  qword_2A18AA9E0 = 0;
  sub_295717CE8(&qword_2A18AA9E0, &v3, v9 + 4, 0x19uLL);
  word_2A18AA9F8 = 1285;
  v5 = xmmword_295742A7C;
  v6 = unk_295742A8C;
  v7 = xmmword_295742A9C;
  v8 = unk_295742AAC;
  v3 = xmmword_295742A5C;
  v4 = *algn_295742A6C;
  LODWORD(v9[0]) = 0;
  qword_2A18AAB80 = 0;
  unk_2A18AAB88 = 0;
  qword_2A18AAB78 = 0;
  sub_295717CE8(&qword_2A18AAB78, &v3, v9 + 4, 0x19uLL);
  word_2A18AAB90 = 1285;
  v9[2] = xmmword_295742B40;
  v9[3] = unk_295742B50;
  v9[4] = xmmword_295742B60;
  v9[5] = unk_295742B70;
  v7 = xmmword_295742B00;
  v8 = unk_295742B10;
  memset(v9, 255, 32);
  v3 = xmmword_295742AC0;
  v4 = unk_295742AD0;
  v5 = xmmword_295742AE0;
  v6 = unk_295742AF0;
  v10 = 0;
  qword_2A18AAAF8 = 0;
  unk_2A18AAB00 = 0;
  qword_2A18AAB08 = 0;
  sub_295717CE8(&qword_2A18AAAF8, &v3, &v11, 0x31uLL);
  word_2A18AAB10 = 1799;
  objc_autoreleasePoolPop(v0);
}

void sub_2957197F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5;
  *a1 = &unk_2A1C98080;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  sub_2957198B8(a1, v9);
}

void sub_295719890(_Unwind_Exception *a1)
{
  v5 = *(v2 + 128);
  *(v2 + 128) = 0;
  if (v5)
  {
    sub_29572D5A8(v5);
  }

  sub_295719FB0(v3);

  _Unwind_Resume(a1);
}

void sub_2957198B8(uint64_t a1, void *a2)
{
  a2;
  v3 = sub_295719C14(a1);
  if (v3 != 3)
  {
    if (v3 != 5)
    {
      if (v3 == 11)
      {
        operator new();
      }

      __assert_rtn("initBoxFilterInstance", "SmpFilteringImpl.mm", 92, "false");
    }

    operator new();
  }

  operator new();
}

void sub_2957199FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  MEMORY[0x29C250EB0](v10, 0x1081C40EAF677CBLL);

  _Unwind_Resume(a1);
}

void sub_295719A44(uint64_t a1)
{
  v1 = *(a1 + 24);
  if ((v1 & 3) == 0)
  {
    v3 = 0;
    memset(v4, 0, sizeof(v4));
    do
    {
      malloc_type_posix_memalign((v4 + v3), 0x10uLL, v1 * *(a1 + 16), 0x100004052888210uLL);
      v3 += 8;
    }

    while (v3 != 48);
    sub_295719CD4(a1 + 32, *&v4[0]);
  }

  sub_29572D5CC();
}

void *sub_295719B20(void *a1)
{
  *a1 = &unk_2A1C98080;
  v2 = a1[16];
  a1[16] = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  v3 = a1[15];
  if (v3)
  {
    sub_295719570(v3);
  }

  v4 = a1[13];
  if (v4)
  {
    sub_295719570(v4);
  }

  v5 = a1[11];
  if (v5)
  {
    sub_295719570(v5);
  }

  v6 = a1[9];
  if (v6)
  {
    sub_295719570(v6);
  }

  v7 = a1[7];
  if (v7)
  {
    sub_295719570(v7);
  }

  v8 = a1[5];
  if (v8)
  {
    sub_295719570(v8);
  }

  return a1;
}

void sub_295719BDC(void *a1)
{
  sub_295719B20(a1);

  JUMPOUT(0x29C250EB0);
}

uint64_t sub_295719C14(uint64_t a1)
{
  v6 = *(a1 + 8);
  v2 = sub_29571A588(&unk_2A18AAAC0, &v6);
  if (v2 == &unk_2A18AAAC8)
  {
    v5 = vextq_s8(*(a1 + 8), *(a1 + 8), 8uLL);
    v2 = sub_29571A588(&unk_2A18AAAC0, &v5);
    if (v2 == &unk_2A18AAAC8)
    {
      exception = __cxa_allocate_exception(8uLL);
      *exception = &unk_2A1C980C8;
      __cxa_throw(exception, &unk_2A1C98090, std::exception::~exception);
    }
  }

  return v2[6];
}

uint64_t sub_295719D1C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, int8x16_t *a3@<X2>, void *a4@<X8>, double a5@<D0>, float a6@<S1>)
{
  v10 = a3;
  if (!a3)
  {
    v10 = *(a1 + 112);
  }

  sub_295719E14(a1, a2, *(a1 + 32), *(a1 + 48), a5);
  v11 = *(a1 + 80);
  v12 = *(a1 + 48);
  v13 = *(a1 + 96);
  v14 = *(a1 + 64);
  v15 = *(a1 + 8);
  v16 = *(a1 + 16);
  v17 = *(a1 + 32);
  v21 = *(a1 + 24);
  v18 = (***(a1 + 128))(*(a1 + 128));
  v18.n128_f32[0] = a6;
  result = sub_295719F00(a1, *(a1 + 96), *(a1 + 80), *(a1 + 32), v10, v18.n128_f64[0]);
  if (a3)
  {
    *a4 = 0;
    a4[1] = 0;
  }

  else
  {
    v20 = *(a1 + 120);
    *a4 = *(a1 + 112);
    a4[1] = v20;
    if (v20)
    {
      atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
    }
  }

  return result;
}

uint64_t sub_295719E14(uint64_t result, _OWORD *a2, int8x16_t *a3, int8x16_t *a4, double a5)
{
  v5 = *(result + 24);
  if ((v5 & 3) != 0)
  {
    sub_29572D5F8();
  }

  v6 = *(result + 16) * v5;
  v7 = (a2 + v6);
  v8 = a2 + v6 + -4 * ((v6 >> 2) - 12 * (v6 / 0x30));
  if (v8 != a2)
  {
    v9 = vdupq_lane_s32(*&a5, 0);
    v10 = v6 + 48 * (v6 / 0x30) - 4 * (v6 >> 2);
    __asm { FMOV            V2.4S, #1.0 }

    do
    {
      v15 = *a2;
      v16 = *(a2 + 1);
      v17 = *(a2 + 2);
      a2 += 3;
      v18 = vceqq_s32(v15, v9);
      v19 = vceqq_s32(v16, v9);
      v20 = vceqq_s32(v17, v9);
      *a3 = vbicq_s8(_Q2, v18);
      a3[1] = vbicq_s8(_Q2, v19);
      a3[2] = vbicq_s8(_Q2, v20);
      a3 += 3;
      *a4 = vbicq_s8(v15, v18);
      a4[1] = vbicq_s8(v16, v19);
      a4[2] = vbicq_s8(v17, v20);
      a4 += 3;
      v10 -= 48;
    }

    while (v10);
    a2 = v8;
  }

  for (; a2 != v7; a4 = (a4 + 4))
  {
    v21 = *a2;
    a2 = (a2 + 4);
    v22 = v21;
    _ZF = v21 == *&a5;
    if (v21 == *&a5)
    {
      v24 = 0.0;
    }

    else
    {
      v24 = 1.0;
    }

    *a3->i32 = v24;
    a3 = (a3 + 4);
    if (_ZF)
    {
      v22 = 0.0;
    }

    *a4->i32 = v22;
  }

  return result;
}

uint64_t sub_295719F00(uint64_t result, _OWORD *a2, _OWORD *a3, _OWORD *a4, int8x16_t *a5, double a6)
{
  v6 = *(result + 24);
  if ((v6 & 3) != 0)
  {
    sub_29572D624();
  }

  v7 = *(result + 16) * v6;
  v8 = (a2 + v7);
  v9 = (a2 + v7 - (v7 & 0x1C));
  if (v9 != a2)
  {
    v10 = vdupq_lane_s32(*&a6, 0);
    do
    {
      v11 = *a2;
      v12 = *(a2 + 1);
      a2 += 2;
      v13 = *a3;
      v14 = *(a3 + 1);
      a3 += 2;
      v15 = *a4;
      v16 = *(a4 + 1);
      a4 += 2;
      *a5 = vbslq_s8(vceqzq_f32(v15), v10, vdivq_f32(v11, v13));
      a5[1] = vbslq_s8(vceqzq_f32(v16), v10, vdivq_f32(v12, v14));
      a5 += 2;
    }

    while (a2 != v9);
    a2 = v9;
  }

  while (a2 != v8)
  {
    v17 = *&a6;
    if (*a4 != 0.0)
    {
      v17 = *a2 / *a3;
    }

    *a5->i32 = v17;
    a5 = (a5 + 4);
    a2 = (a2 + 4);
    a3 = (a3 + 4);
    a4 = (a4 + 4);
  }

  return result;
}

void *sub_295719FB0(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    sub_295719570(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    sub_295719570(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    sub_295719570(v4);
  }

  v5 = a1[5];
  if (v5)
  {
    sub_295719570(v5);
  }

  v6 = a1[3];
  if (v6)
  {
    sub_295719570(v6);
  }

  v7 = a1[1];
  if (v7)
  {
    sub_295719570(v7);
  }

  return a1;
}

void sub_29571A01C(std::exception *a1)
{
  std::exception::~exception(a1);

  JUMPOUT(0x29C250EB0);
}

void *sub_29571A054(void *a1, unint64_t *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 24 * a3;
    do
    {
      sub_29571A0D8(a1, v4, a2);
      a2 += 3;
      v6 -= 24;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_29571A0D8(void *a1, void *a2, unint64_t *a3)
{
  v3 = *sub_29571A178(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *sub_29571A178(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  if (a1 + 1 == a2)
  {
    goto LABEL_3;
  }

  v5 = *a5;
  v6 = a2[4];
  if (*a5 < v6)
  {
    goto LABEL_3;
  }

  if (v6 < v5)
  {
LABEL_9:
    v10 = a2[1];
    if (v10)
    {
      v11 = a2[1];
      do
      {
        a4 = v11;
        v11 = *v11;
      }

      while (v11);
    }

    else
    {
      v17 = a2;
      do
      {
        a4 = v17[2];
        v13 = *a4 == v17;
        v17 = a4;
      }

      while (!v13);
    }

    if (a4 != a1 + 1)
    {
      v18 = a4[4];
      if (v5 >= v18 && (v18 < v5 || a5[1] >= a4[5]))
      {
        return sub_29571A334(a1, a3, a5);
      }
    }

    if (v10)
    {
      *a3 = a4;
    }

    else
    {
      *a3 = a2;
      return a2 + 1;
    }

    return a4;
  }

  v15 = a5[1];
  v16 = a2[5];
  if (v15 >= v16)
  {
    if (v16 >= v15)
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    goto LABEL_9;
  }

LABEL_3:
  v7 = *a2;
  if (*a1 == a2)
  {
    v9 = a2;
  }

  else
  {
    if (v7)
    {
      v8 = *a2;
      do
      {
        v9 = v8;
        v8 = v8[1];
      }

      while (v8);
    }

    else
    {
      v12 = a2;
      do
      {
        v9 = v12[2];
        v13 = *v9 == v12;
        v12 = v9;
      }

      while (v13);
    }

    v14 = v9[4];
    if (v14 >= *a5 && (*a5 < v14 || v9[5] >= a5[1]))
    {
      return sub_29571A334(a1, a3, a5);
    }
  }

  if (v7)
  {
    *a3 = v9;
    return v9 + 1;
  }

  else
  {
    *a3 = a2;
    return a2;
  }
}

uint64_t *sub_29571A2DC(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_29571A398(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

void *sub_29571A334(uint64_t a1, void *a2, unint64_t *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = a3[1];
    while (1)
    {
      while (1)
      {
        v8 = v4;
        v9 = v4[4];
        if (v6 >= v9)
        {
          break;
        }

LABEL_4:
        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_12;
        }
      }

      if (v9 >= v6)
      {
        v10 = v8[5];
        if (v7 < v10)
        {
          goto LABEL_4;
        }

        if (v10 >= v7)
        {
          goto LABEL_12;
        }
      }

      result = v8 + 1;
      v4 = v8[1];
      if (!v4)
      {
        goto LABEL_12;
      }
    }
  }

  v8 = result;
LABEL_12:
  *a2 = v8;
  return result;
}

uint64_t *sub_29571A398(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void sub_29571A534(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29571A534(a1, *a2);
    sub_29571A534(a1, a2[1]);

    operator delete(a2);
  }
}

void *sub_29571A588(uint64_t a1, unint64_t *a2)
{
  v4 = *(a1 + 8);
  v2 = (a1 + 8);
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v6 = *a2;
  v5 = a2[1];
  v7 = v2;
  do
  {
    v8 = v3[4];
    if (v8 >= v6)
    {
      if (v6 >= v8)
      {
        v9 = v3[5];
        v10 = v9 >= v5;
        v11 = v9 < v5;
        if (v10)
        {
          v7 = v3;
        }

        v3 += v11;
      }

      else
      {
        v7 = v3;
      }
    }

    else
    {
      ++v3;
    }

    v3 = *v3;
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v12 = v7[4];
  if (v6 < v12 || v12 >= v6 && v5 < v7[5])
  {
    return v2;
  }

  return v7;
}

void sub_29571A678(void *a1)
{
  __cxa_begin_catch(a1);
  free(v1);
  __cxa_rethrow();
}

void sub_29571A6A4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C250EB0);
}

uint64_t sub_29571A6E4(uint64_t a1, uint64_t a2)
{
  if (sub_29571A724(a2, &unk_2A1C98130))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_29571A724(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void sub_29571A778()
{
  v0 = objc_autoreleasePoolPush();
  v1[0] = xmmword_295742B90;
  v1[1] = xmmword_295742BA0;
  v1[2] = xmmword_295742BB0;
  v1[3] = xmmword_295742BC0;
  v1[4] = xmmword_295742BA0;
  v1[5] = xmmword_295742BD0;
  v1[6] = xmmword_295742BE0;
  v1[7] = xmmword_295742BF0;
  v1[8] = xmmword_295742C00;
  v1[9] = vdupq_n_s64(0x140uLL);
  v1[10] = xmmword_295742C10;
  v1[11] = xmmword_295742C20;
  v1[12] = xmmword_295742C30;
  v1[13] = xmmword_295742C40;
  v1[14] = xmmword_295742C50;
  sub_29571A054(&qword_2A18AAAC0, v1, 10);
  objc_autoreleasePoolPop(v0);
}

double sub_29571A860(float32x4_t a1)
{
  v1 = vmulq_f32(vmaxq_f32(vminq_f32(a1, vdupq_n_s32(0x42B00000u)), vdupq_n_s32(0xC2B00000)), vdupq_n_s32(0x3FB8AA3Bu));
  v2 = vcvtnq_s32_f32(v1);
  v3 = vsubq_f32(v1, vcvtq_f32_s32(v2));
  v4 = vmulq_f32(vmulq_f32(vmlaq_f32(vdupq_n_s32(0x41EE6BE6u), v3, vaddq_f32(v3, vdupq_n_s32(0xC014661E))), vdupq_n_s32(0x39218489u)), vmulq_f32(vmlaq_f32(vdupq_n_s32(0x41854D69u), v3, vaddq_f32(v3, vdupq_n_s32(0x40852007u))), vmlaq_f32(vdupq_n_s32(0x41512B26u), v3, vaddq_f32(v3, vdupq_n_s32(0x40DA1261u)))));
  v5.i64[0] = 0x7F0000007FLL;
  v5.i64[1] = 0x7F0000007FLL;
  v6 = vaddq_s32(vandq_s8(v4, vnegq_f32(v5)), vshlq_n_s32(v2, 0x17uLL));
  v5.i64[0] = 0x7F0000007FLL;
  v5.i64[1] = 0x7F0000007FLL;
  *&result = vorrq_s8(v6, vandq_s8(v4, vnegq_f32(v5))).u64[0];
  return result;
}

void sub_29571A934(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  *a1 = &unk_2A1C98150;
  a1[1] = 0;
  operator new();
}

void sub_29571A9FC(_Unwind_Exception *a1, int a2)
{
  MEMORY[0x29C250EB0](v4, 0x10A1C40B685923ELL);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x29571A9E0);
  }

  v7 = *(v3 + 8);
  *(v3 + 8) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  _Unwind_Resume(a1);
}

void *sub_29571AA84(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2A1C98150;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_29571AAF0(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2A1C98150;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x29C250EB0);
}

uint64_t sub_29571AB8C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, int8x16_t *a3@<X2>, void *a4@<X8>, double a5@<D0>, float a6@<S1>)
{
  result = *(a1 + 8);
  if (result)
  {
    return sub_295719D1C(result, a2, a3, a4, a5, a6);
  }

  *a4 = 0;
  a4[1] = 0;
  return result;
}

uint64_t sub_29571AC7C()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_29571ACB0(uint64_t a1, void *a2)
{
  v17 = a2;
  if (objc_msgSend_status(v17, v2, v3, v4, v5, v6) == 4)
  {
    objc_msgSend_GPUEndTime(v17, v7, v8, v9, v10, v11);
    objc_msgSend_GPUStartTime(v17, v12, v13, v14, v15, v16);
  }

  else
  {
    objc_msgSend_status(v17, v7, v8, v9, v10, v11);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }
}

uint64_t sub_29571AD64()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_29571AD98(uint64_t a1, void *a2)
{
  v17 = a2;
  if (objc_msgSend_status(v17, v2, v3, v4, v5, v6) == 4)
  {
    objc_msgSend_GPUEndTime(v17, v7, v8, v9, v10, v11);
    objc_msgSend_GPUStartTime(v17, v12, v13, v14, v15, v16);
  }

  else
  {
    objc_msgSend_status(v17, v7, v8, v9, v10, v11);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }
}

uint64_t sub_29571B02C()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_29571B060(uint64_t a1, void *a2)
{
  v17 = a2;
  if (objc_msgSend_status(v17, v2, v3, v4, v5, v6) == 4)
  {
    objc_msgSend_GPUEndTime(v17, v7, v8, v9, v10, v11);
    objc_msgSend_GPUStartTime(v17, v12, v13, v14, v15, v16);
  }

  else
  {
    objc_msgSend_status(v17, v7, v8, v9, v10, v11);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }
}

uint64_t sub_29571B1C8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  a14 = v18;
  a15 = a1;
  a16 = v19;
  a11 = v17;
  a12 = v20;
  a13 = v19;

  return objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v16, a2, &a14, &a11, a5, a6);
}

uint64_t sub_29571B1F4()
{

  return fig_log_get_emitter();
}

uint64_t sub_29571B20C()
{

  return fig_log_get_emitter();
}

uint64_t sub_29571B224(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return objc_msgSend_setTexture_atIndex_(v7, a2, v6, 1, a5, a6);
}

char *sub_29571B244(unsigned int a1)
{
  v2 = malloc_type_malloc(16 * a1 + 24, 0x102004093CA8EA1uLL);
  v3 = v2;
  *v2 = v2 + 24;
  *(v2 + 2) = a1;
  *(v2 + 2) = 0;
  if (a1)
  {
    v4 = (a1 + 15) & 0x1FFFFFFF0;
    v5 = vdupq_n_s64(a1 - 1);
    v6 = xmmword_295742D60;
    v7 = xmmword_295742D70;
    v8 = xmmword_295742D80;
    v9 = xmmword_295742D90;
    v10 = xmmword_295742DA0;
    v11 = xmmword_295742DB0;
    v12 = xmmword_295742DC0;
    v13 = xmmword_295742DD0;
    v14 = v2 + 136;
    v15 = vdupq_n_s64(0x10uLL);
    do
    {
      v16 = vmovn_s64(vcgeq_u64(v5, v13));
      if (vuzp1_s8(vuzp1_s16(v16, *v5.i8), *v5.i8).u8[0])
      {
        *(v14 - 112) = 0;
      }

      if (vuzp1_s8(vuzp1_s16(v16, *&v5), *&v5).i8[1])
      {
        *(v14 - 96) = 0;
      }

      if (vuzp1_s8(vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, *&v12))), *&v5).i8[2])
      {
        *(v14 - 80) = 0;
        *(v14 - 64) = 0;
      }

      v17 = vmovn_s64(vcgeq_u64(v5, v11));
      if (vuzp1_s8(*&v5, vuzp1_s16(v17, *&v5)).i32[1])
      {
        *(v14 - 48) = 0;
      }

      if (vuzp1_s8(*&v5, vuzp1_s16(v17, *&v5)).i8[5])
      {
        *(v14 - 32) = 0;
      }

      if (vuzp1_s8(*&v5, vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, *&v10)))).i8[6])
      {
        *(v14 - 16) = 0;
        *v14 = 0;
      }

      v18 = vmovn_s64(vcgeq_u64(v5, v9));
      if (vuzp1_s8(vuzp1_s16(v18, *v5.i8), *v5.i8).u8[0])
      {
        v14[16] = 0;
      }

      if (vuzp1_s8(vuzp1_s16(v18, *&v5), *&v5).i8[1])
      {
        v14[32] = 0;
      }

      if (vuzp1_s8(vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, *&v8))), *&v5).i8[2])
      {
        v14[48] = 0;
        v14[64] = 0;
      }

      v19 = vmovn_s64(vcgeq_u64(v5, v7));
      if (vuzp1_s8(*&v5, vuzp1_s16(v19, *&v5)).i32[1])
      {
        v14[80] = 0;
      }

      if (vuzp1_s8(*&v5, vuzp1_s16(v19, *&v5)).i8[5])
      {
        v14[96] = 0;
      }

      if (vuzp1_s8(*&v5, vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, *&v6)))).i8[6])
      {
        v14[112] = 0;
        v14[128] = 0;
      }

      v11 = vaddq_s64(v11, v15);
      v12 = vaddq_s64(v12, v15);
      v13 = vaddq_s64(v13, v15);
      v10 = vaddq_s64(v10, v15);
      v9 = vaddq_s64(v9, v15);
      v8 = vaddq_s64(v8, v15);
      v7 = vaddq_s64(v7, v15);
      v14 += 256;
      v6 = vaddq_s64(v6, v15);
      v4 -= 16;
    }

    while (v4);
  }

  v20 = malloc_type_malloc(0x1D4D8uLL, 0x102004014030ADEuLL);
  *v20 = v20 + 3;
  v20[1] = 5000;
  v20[2] = 0;
  *(v3 + 2) = v20;
  return v3;
}

void sub_29571B4E0(void *a1)
{
  if (a1)
  {
    v2 = a1[2];
    if (v2)
    {
      do
      {
        v3 = v2[2];
        free(v2);
        v2 = v3;
      }

      while (v3);
    }

    free(a1);
  }
}

void sub_29571B534(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    do
    {
      v4 = v3[2];
      free(v3);
      v3 = v4;
    }

    while (v4);
  }

  *(v2 + 12) = 0;
  *(v2 + 16) = 0;
  v5 = *a1;
  v6 = 16 * *(a1 + 8);

  bzero(v5, v6);
}

uint64_t sub_29571B59C(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v3 = *a1 + 16 * ((257 * (16974593 * a2 + BYTE3(a2) + 66049 * BYTE1(a2) + (BYTE2(a2) | (BYTE2(a2) << 8))) + BYTE4(a2) + 842144005) % *(a1 + 8));
  if (*v3 != 1)
  {
    return 0;
  }

  v4 = *(v3 + 8);
  if (!v4)
  {
    return 0;
  }

  while (*v4 != a2)
  {
    v4 = *(v4 + 16);
    if (!v4)
    {
      return 0;
    }
  }

  *a3 = *(v4 + 8);
  return 1;
}

char *sub_29571B638(uint64_t a1, uint64_t a2, int a3)
{
  v5 = (*a1 + 16 * ((257 * (16974593 * a2 + BYTE3(a2) + 66049 * BYTE1(a2) + (BYTE2(a2) | (BYTE2(a2) << 8))) + BYTE4(a2) + 842144005) % *(a1 + 8)));
  v6 = *v5;
  result = sub_29571B6F4(a1);
  if (v6 == 1)
  {
    *(result + 2) = *(v5 + 1);
  }

  else
  {
    *(result + 2) = 0;
    *v5 = 1;
  }

  *result = a2;
  *(result + 2) = a3;
  *(v5 + 1) = result;
  return result;
}

char *sub_29571B6F4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = v2[3];
  if (v3 == v2[2])
  {
    v2 = malloc_type_malloc(24 * v3 + 24, 0x102004014030ADEuLL);
    v4 = (v2 + 6);
    *v2 = v2 + 6;
    v2[2] = v3;
    v2[3] = 0;
    *(v2 + 2) = *(a1 + 16);
    *(a1 + 16) = v2;
    v3 = 0;
  }

  else
  {
    v4 = *v2;
  }

  v2[3] = v3 + 1;
  return &v4[24 * v3];
}

__CVBuffer *sub_29571B778(__CVBuffer *result, CVPixelBufferLockFlags a2)
{
  if (result)
  {
    v2 = result;
    if (CVPixelBufferLockBaseAddress(result, a2))
    {
      sub_29572DFC0();
    }

    else
    {
      result = CVPixelBufferGetBaseAddress(v2);
      if (result)
      {
        return result;
      }

      sub_29572E020();
    }

    return 0;
  }

  return result;
}

void sub_29571B858(uint64_t a1, int a2, int a3, int a4, float a5, float a6, float a7, float a8, float a9)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = a4;
  *(a1 + 12) = a5;
  *(a1 + 16) = a6;
  *(a1 + 20) = a7;
  *(a1 + 24) = a8;
  *(a1 + 28) = a9;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  operator new[]();
}

void *sub_29571B95C(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    MEMORY[0x29C250E90](v2, 0x1000C8052888210);
    a1[5] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    MEMORY[0x29C250E90](v3, 0x1000C8052888210);
    a1[4] = 0;
  }

  v4 = a1[6];
  if (v4)
  {
    MEMORY[0x29C250E90](v4, 0x1000C8052888210);
    a1[6] = 0;
  }

  v5 = a1[7];
  if (v5)
  {
    MEMORY[0x29C250E90](v5, 0x1000C8052888210);
    a1[7] = 0;
  }

  return a1;
}

void sub_29571B9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a1 + 56);
  v9 = *a1;
  v8 = *(a1 + 4);
  if ((v8 + 4) * (*a1 + 4))
  {
    bzero(*(a1 + 56), 4 * (v8 + 4) * (v9 + 4));
  }

  v91 = v7;
  if (v8)
  {
    v10 = 0;
    v11 = 2 * v8 * v9;
    v12 = *(a1 + 40);
    v13 = v12 + 4 * v11;
    v14 = v12 + 4 * v8 * v9;
    v15 = a3 + 4 * v11;
    v16 = a3 + 4 * v8 * v9;
    v17 = v7;
    do
    {
      if (v9 < 4)
      {
        v18 = 0;
      }

      else
      {
        v18 = 0;
        do
        {
          v19 = v18;
          v20 = 4 * v18;
          *(v17 + v20) = vaddq_f32(vaddq_f32(vabdq_f32(*(a3 + v20), *(v12 + v20)), vabdq_f32(*(v16 + v20), *(v14 + v20))), vabdq_f32(*(v15 + v20), *(v13 + v20)));
          v18 = v19 + 4;
          v9 = *a1;
        }

        while (v19 + 7 < *a1);
      }

      if (v18 < v9)
      {
        v21 = 0;
        v22 = a3 + 4 * v18;
        v23 = v12 + 4 * v18;
        v24 = v16 + 4 * v18;
        v25 = v14 + 4 * v18;
        v26 = v15 + 4 * v18;
        v27 = v13 + 4 * v18;
        v28 = v17 + 4 * v18;
        v29 = v9 - v18;
        do
        {
          *(v28 + 4 * v21) = (vabds_f32(*(v22 + 4 * v21), *(v23 + 4 * v21)) + vabds_f32(*(v24 + 4 * v21), *(v25 + 4 * v21))) + vabds_f32(*(v26 + 4 * v21), *(v27 + 4 * v21));
          ++v21;
        }

        while (v29 != v21);
      }

      a3 += 4 * v9;
      v16 += 4 * v9;
      v15 += 4 * v9;
      v12 += 4 * v9;
      v14 += 4 * v9;
      v13 += 4 * v9;
      ++v10;
      v30 = *(a1 + 4);
      v17 += 4 * v9;
    }

    while (v10 < v30);
    if (v30)
    {
      v31 = 0;
      __asm
      {
        FMOV            V1.4S, #1.0
        FMOV            V0.4S, #-1.0
      }

      v93 = _Q0;
      v94 = _Q1;
      while (1)
      {
        v92 = v31;
        v38 = v9 * v31;
        v39 = *(a1 + 32);
        v40 = *(a1 + 48);
        if (v9 < 4)
        {
          v41 = 0;
        }

        else
        {
          v41 = 0;
          v42 = a2 + 4 * v38;
          v43 = a5 + 4 * v38;
          v86 = *(a1 + 32);
          v87 = *(a1 + 48);
          v44 = v39 + 4 * v38;
          v45 = v40 + 4 * v38;
          v46 = a4 + 4 * v38;
          do
          {
            v47 = v41;
            v48 = 4 * v41;
            *v49.i64 = sub_29571A860(vmulq_n_f32(*(v91 + 4 * v38 + v48), -*(a1 + 12)));
            v50 = (a1 + 16);
            v51 = vld1q_dup_f32(v50);
            v52 = vmaxq_f32(v51, vsubq_f32(v94, v49));
            v53 = *(v42 + v48);
            v54 = *(v44 + v48);
            v55 = vcgeq_f32(v93, v53);
            v56 = vcgeq_f32(v93, v54);
            v57 = vbslq_s8(vbicq_s8(v56, v55), v94, v52);
            v58 = *(v43 + v48);
            v59 = (a1 + 20);
            v60 = vld1q_dup_f32(v59);
            v61 = vcgtq_f32(v49, v60);
            v62 = vsubq_f32(v94, v57);
            v63 = vmulq_f32(*(v45 + v48), v62);
            v64 = (a1 + 24);
            v65 = vld1q_dup_f32(v64);
            v66 = vcgtq_f32(v49, v65);
            v67 = (a1 + 28);
            v68 = vld1q_dup_f32(v67);
            v69 = vornq_s8(vcgeq_f32(v93, *(v46 + v48)), vcgtq_f32(vabdq_f32(v53, *(v46 + v48)), v68));
            *(v46 + v48) = v53;
            *(v42 + v48) = vbslq_s8(v55, vbslq_s8(v61, v54, v53), vbslq_s8(v56, v53, vbslq_s8(v69, vmlaq_f32(vmulq_f32(v54, v62), v53, v57), vbslq_s8(v66, v93, v53))));
            *(v43 + v48) = vbslq_s8(v55, vbslq_s8(v61, v63, v58), vbslq_s8(v56, v58, vbslq_s8(v69, vmlaq_f32(v63, v58, v57), vbicq_s8(v58, v66))));
            v41 = v47 + 4;
            v9 = *a1;
          }

          while (v47 + 7 < *a1);
          v39 = v86;
          v40 = v87;
        }

        if (v41 < v9)
        {
          break;
        }

LABEL_36:
        v31 = v92 + 1;
        if ((v92 + 1) >= *(a1 + 4))
        {
          return;
        }
      }

      v70 = 0;
      v71 = 4 * v41 + 4 * v38;
      v72 = a2 + v71;
      v73 = v91 + v71;
      v74 = v39 + v71;
      v75 = v40 + v71;
      v76 = a5 + v71;
      v77 = a4 + v71;
      v78 = v9 - v41;
      while (1)
      {
        v79 = *(v72 + 4 * v70);
        v80 = expf(-(*(a1 + 12) * *(v73 + 4 * v70)));
        v81 = *(v74 + 4 * v70);
        v82 = 1.0;
        v83 = v79 + 1.0;
        if ((v81 + 1.0) != 0.0 || v83 == 0.0)
        {
          v82 = fmaxf(*(a1 + 16), 1.0 - v80);
        }

        if (v83 != 0.0)
        {
          break;
        }

        if (v80 > *(a1 + 20))
        {
          *(v72 + 4 * v70) = v81;
          v84 = (1.0 - v82) * *(v75 + 4 * v70);
LABEL_34:
          *(v76 + 4 * v70) = v84;
        }

LABEL_35:
        *(v77 + 4 * v70++) = v79;
        if (v78 == v70)
        {
          goto LABEL_36;
        }
      }

      v85 = *(v77 + 4 * v70);
      if ((v85 + 1.0) != 0.0 && vabds_f32(v79, v85) > *(a1 + 28))
      {
        if (v80 > *(a1 + 24))
        {
          *(v72 + 4 * v70) = -1082130432;
          *(v76 + 4 * v70) = 0;
        }

        goto LABEL_35;
      }

      *(v72 + 4 * v70) = (v81 * (1.0 - v82)) + (v82 * v79);
      v84 = ((1.0 - v82) * *(v75 + 4 * v70)) + (v82 * *(v76 + 4 * v70));
      goto LABEL_34;
    }
  }
}

void **sub_29571BE0C(void **result, const void *a2, void *__src, const void *a4)
{
  v6 = result;
  v7 = *(result + 1) * *result;
  if (v7 * *(result + 2))
  {
    result = memmove(result[5], a2, 4 * v7 * *(result + 2));
    v7 = *(v6 + 1) * *v6;
  }

  if (v7)
  {
    result = memmove(v6[4], __src, 4 * v7);
    v8 = *(v6 + 1) * *v6;
    if (v8)
    {
      v9 = v6[6];

      return memmove(v9, a4, 4 * v8);
    }
  }

  return result;
}

void *sub_29571BEB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = sub_295718060(a1, a2, a3, a4, 3, a5);
  *result = &unk_2A1C98240;
  return result;
}

void sub_29571BEF8(uint64_t a1)
{
  sub_2957180D8(a1);

  JUMPOUT(0x29C250EB0);
}

void sub_29571BF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8)
{
  if ((a6 & 3) != 0)
  {
    sub_29572E080();
  }

  if (a7 < a8)
  {
    v8 = 0;
    v9 = a6 >> 2;
    v10 = a4 - 3;
    v11 = (a4 - 3) >> 2;
    if (v11 <= 1)
    {
      v11 = 1;
    }

    v77 = v11;
    v12 = v9 * (3 * a7 + 2);
    v13 = a3 + 4 * v12 + 8;
    v14 = 12 * v9;
    v15 = a2 + 4 * v12 + 12;
    v16 = v9 + v9 * 3 * a7;
    v17 = a3 + 4 * v16 + 8;
    v18 = a2 + 4 * v16 + 12;
    v19 = 12 * v9 * a7;
    v20 = v19 + a3 + 8;
    v21 = v19 + a2 + 12;
    v76 = 12 * v9;
    v78 = v9;
    while (1)
    {
      v22 = 3 * a7 * v9;
      v23 = (a2 + 4 * v22);
      v24 = (a3 + 4 * v22);
      v25 = v9 + v22;
      v26 = (a2 + 4 * v25);
      v27 = (a3 + 4 * v25);
      v28 = (3 * a7 + 2) * v9;
      v29 = (a2 + 4 * v28);
      v30 = (a3 + 4 * v28);
      v31 = *v23;
      v32 = v23[1];
      v33 = v23[2];
      v34 = *v26;
      v35 = v26[1];
      v36 = v26[2];
      v37 = *v29;
      v38 = v29[1];
      v39 = v29[2];
      v40 = (*v23 + v32) + 0.0;
      *v24 = v40;
      v41 = (v34 + v35) + 0.0;
      *v27 = v41;
      v42 = (v37 + v38) + 0.0;
      *v30 = v42;
      v43 = v33 + v40;
      v24[1] = v43;
      v44 = v36 + v41;
      v27[1] = v44;
      v45 = v39 + v42;
      v30[1] = v45;
      if (v10 >= 4)
      {
        v52 = v8;
        v53 = v77;
        do
        {
          v54 = (v13 + v52);
          v55 = (v17 + v52);
          v56 = (v20 + v52);
          v57 = *(v21 + v52);
          v58 = *(v18 + v52);
          v59 = *(v15 + v52);
          v60 = (v43 - v31) + v57;
          v61 = (v44 - v34) + v58;
          v62 = (v45 - v37) + v59;
          *v56 = v60;
          *v55 = v61;
          *v54 = v62;
          v31 = *(v21 + v52 + 4);
          v34 = *(v18 + v52 + 4);
          v37 = *(v15 + v52 + 4);
          v63 = (v60 - v32) + v31;
          v64 = (v61 - v35) + v34;
          v65 = (v62 - v38) + v37;
          v56[1] = v63;
          v55[1] = v64;
          v54[1] = v65;
          v32 = *(v21 + v52 + 8);
          v35 = *(v18 + v52 + 8);
          v38 = *(v15 + v52 + 8);
          v66 = (v63 - v33) + v32;
          v67 = (v64 - v36) + v35;
          v68 = (v65 - v39) + v38;
          v56[2] = v66;
          v55[2] = v67;
          v54[2] = v68;
          v33 = *(v21 + v52 + 12);
          v36 = *(v18 + v52 + 12);
          v39 = *(v15 + v52 + 12);
          v43 = (v66 - v57) + v33;
          v44 = (v67 - v58) + v36;
          v45 = (v68 - v59) + v39;
          v56[3] = v43;
          v55[3] = v44;
          v54[3] = v45;
          v52 += 16;
          --v53;
        }

        while (v53);
        v51 = (v13 + v52);
        v48 = (v15 + v52);
        v50 = (v17 + v52);
        v47 = (v18 + v52);
        v49 = (v20 + v52);
        v46 = (v21 + v52);
      }

      else
      {
        v46 = v23 + 3;
        v47 = v26 + 3;
        v48 = v29 + 3;
        v49 = v24 + 2;
        v50 = v27 + 2;
        v51 = v30 + 2;
      }

      if (((a4 - 3) & 0xFFFFFFFFFFFFFFFCLL | 2) < a4 - 1)
      {
        break;
      }

      v73 = v46 - 3;
      v72 = v47 - 3;
      v71 = v48 - 3;
      if (a4)
      {
        goto LABEL_17;
      }

LABEL_18:
      ++a7;
      v8 += v14;
      if (a7 == a8)
      {
        return;
      }
    }

    v69 = 0x3FFFFFFFFFFFFFFDLL;
    v70 = v10 & 3;
    do
    {
      v43 = (v43 - v46[v69]) + v46[v69 + 3];
      v44 = (v44 - v47[v69]) + v47[v69 + 3];
      v45 = (v45 - v48[v69]) + v48[v69 + 3];
      v49[v69 + 3] = v43;
      v50[v69 + 3] = v44;
      v51[v69 + 3] = v45;
      ++v69;
      --v70;
    }

    while (v70);
    v71 = &v48[v69];
    v72 = &v47[v69];
    v73 = &v46[v69];
    v51 = (v51 + v69 * 4 + 12);
    v50 = (v50 + v69 * 4 + 12);
    v49 = (v49 + v69 * 4 + 12);
    v9 = v78;
    v14 = v76;
    if (!a4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v74 = v44 - *v72;
    v75 = v45 - *v71;
    *v49 = v43 - *v73;
    *v50 = v74;
    *v51 = v75;
    goto LABEL_18;
  }
}

uint64_t sub_29571C7C4()
{

  return fig_log_get_emitter();
}

uint64_t sub_29571CF78()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_29571CFAC(uint64_t a1, void *a2)
{
  v17 = a2;
  if (objc_msgSend_status(v17, v2, v3, v4, v5, v6) == 4)
  {
    objc_msgSend_GPUEndTime(v17, v7, v8, v9, v10, v11);
    objc_msgSend_GPUStartTime(v17, v12, v13, v14, v15, v16);
  }

  else
  {
    objc_msgSend_status(v17, v7, v8, v9, v10, v11);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }
}

uint64_t sub_29571D86C()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_29571D8A0(uint64_t a1, void *a2)
{
  v17 = a2;
  if (objc_msgSend_status(v17, v2, v3, v4, v5, v6) == 4)
  {
    objc_msgSend_GPUEndTime(v17, v7, v8, v9, v10, v11);
    objc_msgSend_GPUStartTime(v17, v12, v13, v14, v15, v16);
  }

  else
  {
    objc_msgSend_status(v17, v7, v8, v9, v10, v11);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }
}

uint64_t sub_29571DDC8()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_29571DDFC(uint64_t a1, void *a2)
{
  v17 = a2;
  if (objc_msgSend_status(v17, v2, v3, v4, v5, v6) == 4)
  {
    objc_msgSend_GPUEndTime(v17, v7, v8, v9, v10, v11);
    objc_msgSend_GPUStartTime(v17, v12, v13, v14, v15, v16);
  }

  else
  {
    objc_msgSend_status(v17, v7, v8, v9, v10, v11);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }
}

uint64_t sub_29571E460()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_29571E494(uint64_t a1, void *a2)
{
  v17 = a2;
  if (objc_msgSend_status(v17, v2, v3, v4, v5, v6) == 4)
  {
    objc_msgSend_GPUEndTime(v17, v7, v8, v9, v10, v11);
    objc_msgSend_GPUStartTime(v17, v12, v13, v14, v15, v16);
  }

  else
  {
    objc_msgSend_status(v17, v7, v8, v9, v10, v11);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }
}

uint64_t sub_29571ECCC()
{

  return fig_log_get_emitter();
}

uint64_t sub_29571ECE4()
{

  return fig_log_get_emitter();
}

uint64_t sub_29571F578()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_29571F5AC(uint64_t a1, void *a2)
{
  v17 = a2;
  if (objc_msgSend_status(v17, v2, v3, v4, v5, v6) == 4)
  {
    objc_msgSend_GPUEndTime(v17, v7, v8, v9, v10, v11);
    objc_msgSend_GPUStartTime(v17, v12, v13, v14, v15, v16);
  }

  else
  {
    objc_msgSend_status(v17, v7, v8, v9, v10, v11);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }
}

void sub_29571FA28(uint64_t a1, __int16 a2, __int16 a3, char a4, char a5, char a6, char a7)
{
  *a1 = a2;
  *(a1 + 2) = a3;
  *(a1 + 4) = a4;
  *(a1 + 5) = a5;
  *(a1 + 6) = a6;
  *(a1 + 7) = a7;
  *(a1 + 8) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  operator new[]();
}

uint64_t sub_29571FFA4(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    MEMORY[0x29C250E90](v2, 0x1000C80BDFB0063);
    *(a1 + 8) = 0;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    MEMORY[0x29C250E90](v3, 0x1000C80BDFB0063);
    *(a1 + 16) = 0;
  }

  if (*(a1 + 24))
  {
    v4 = *(a1 + 4);
    if (!*(a1 + 4))
    {
      goto LABEL_12;
    }

    v5 = 0;
    do
    {
      v6 = *(a1 + 24);
      v7 = *(v6 + 8 * v5);
      if (v7)
      {
        MEMORY[0x29C250E90](v7, 0x1000C8052888210);
        v6 = *(a1 + 24);
        v4 = *(a1 + 4);
      }

      *(v6 + 8 * v5++) = 0;
    }

    while (v5 < v4);
    if (*(a1 + 24))
    {
LABEL_12:
      MEMORY[0x29C250E90]();
    }

    *(a1 + 24) = 0;
  }

  if (*(a1 + 32))
  {
    v8 = *(a1 + 4);
    if (!*(a1 + 4))
    {
      goto LABEL_21;
    }

    v9 = 0;
    do
    {
      v10 = *(a1 + 32);
      v11 = *(v10 + 8 * v9);
      if (v11)
      {
        MEMORY[0x29C250E90](v11, 0x1000C8052888210);
        v10 = *(a1 + 32);
        v8 = *(a1 + 4);
      }

      *(v10 + 8 * v9++) = 0;
    }

    while (v9 < v8);
    if (*(a1 + 32))
    {
LABEL_21:
      MEMORY[0x29C250E90]();
    }

    *(a1 + 32) = 0;
  }

  if (*(a1 + 40))
  {
    v12 = *(a1 + 4);
    if (!*(a1 + 4))
    {
      goto LABEL_30;
    }

    v13 = 0;
    do
    {
      v14 = *(a1 + 40);
      v15 = *(v14 + 8 * v13);
      if (v15)
      {
        MEMORY[0x29C250E90](v15, 0x1000C8052888210);
        v14 = *(a1 + 40);
        v12 = *(a1 + 4);
      }

      *(v14 + 8 * v13++) = 0;
    }

    while (v13 < v12);
    if (*(a1 + 40))
    {
LABEL_30:
      MEMORY[0x29C250E90]();
    }

    *(a1 + 40) = 0;
  }

  if (*(a1 + 48))
  {
    v16 = *(a1 + 4);
    if (!*(a1 + 4))
    {
      goto LABEL_39;
    }

    v17 = 0;
    do
    {
      v18 = *(a1 + 48);
      v19 = *(v18 + 8 * v17);
      if (v19)
      {
        MEMORY[0x29C250E90](v19, 0x1000C8052888210);
        v18 = *(a1 + 48);
        v16 = *(a1 + 4);
      }

      *(v18 + 8 * v17++) = 0;
    }

    while (v17 < v16);
    if (*(a1 + 48))
    {
LABEL_39:
      MEMORY[0x29C250E90]();
    }

    *(a1 + 48) = 0;
  }

  if (*(a1 + 56))
  {
    v20 = *(a1 + 4);
    if (!*(a1 + 4))
    {
      goto LABEL_48;
    }

    v21 = 0;
    do
    {
      v22 = *(a1 + 56);
      v23 = *(v22 + 8 * v21);
      if (v23)
      {
        MEMORY[0x29C250E90](v23, 0x1000C8052888210);
        v22 = *(a1 + 56);
        v20 = *(a1 + 4);
      }

      *(v22 + 8 * v21++) = 0;
    }

    while (v21 < v20);
    if (*(a1 + 56))
    {
LABEL_48:
      MEMORY[0x29C250E90]();
    }

    *(a1 + 56) = 0;
  }

  if (*(a1 + 64))
  {
    v24 = *(a1 + 4);
    if (!*(a1 + 4))
    {
      goto LABEL_57;
    }

    v25 = 0;
    do
    {
      v26 = *(a1 + 64);
      v27 = *(v26 + 8 * v25);
      if (v27)
      {
        MEMORY[0x29C250E90](v27, 0x1000C8052888210);
        v26 = *(a1 + 64);
        v24 = *(a1 + 4);
      }

      *(v26 + 8 * v25++) = 0;
    }

    while (v25 < v24);
    if (*(a1 + 64))
    {
LABEL_57:
      MEMORY[0x29C250E90]();
    }

    *(a1 + 64) = 0;
  }

  if (*(a1 + 72))
  {
    v28 = *(a1 + 4);
    if (!*(a1 + 4))
    {
      goto LABEL_66;
    }

    v29 = 0;
    do
    {
      v30 = *(a1 + 72);
      v31 = *(v30 + 8 * v29);
      if (v31)
      {
        MEMORY[0x29C250E90](v31, 0x1000C8052888210);
        v30 = *(a1 + 72);
        v28 = *(a1 + 4);
      }

      *(v30 + 8 * v29++) = 0;
    }

    while (v29 < v28);
    if (*(a1 + 72))
    {
LABEL_66:
      MEMORY[0x29C250E90]();
    }

    *(a1 + 72) = 0;
  }

  if (*(a1 + 80))
  {
    v32 = *(a1 + 4);
    if (!*(a1 + 4))
    {
      goto LABEL_75;
    }

    v33 = 0;
    do
    {
      v34 = *(a1 + 80);
      v35 = *(v34 + 8 * v33);
      if (v35)
      {
        MEMORY[0x29C250E90](v35, 0x1000C8052888210);
        v34 = *(a1 + 80);
        v32 = *(a1 + 4);
      }

      *(v34 + 8 * v33++) = 0;
    }

    while (v33 < v32);
    if (*(a1 + 80))
    {
LABEL_75:
      MEMORY[0x29C250E90]();
    }

    *(a1 + 80) = 0;
  }

  v36 = *(a1 + 88);
  if (v36)
  {
    MEMORY[0x29C250E90](v36, 0x1000C8052888210);
    *(a1 + 88) = 0;
  }

  v37 = *(a1 + 96);
  if (v37)
  {
    MEMORY[0x29C250E90](v37, 0x1000C8052888210);
    *(a1 + 96) = 0;
  }

  v38 = *(a1 + 136);
  if (v38)
  {
    MEMORY[0x29C250E90](v38, 0x1000C8077774924);
    *(a1 + 136) = 0;
  }

  v39 = *(a1 + 112);
  if (v39)
  {
    MEMORY[0x29C250E90](v39, 0x1000C8052888210);
    *(a1 + 112) = 0;
  }

  v40 = *(a1 + 120);
  if (v40)
  {
    MEMORY[0x29C250E90](v40, 0x1000C8052888210);
    *(a1 + 120) = 0;
  }

  v41 = *(a1 + 128);
  if (v41)
  {
    MEMORY[0x29C250E90](v41, 0x1000C8052888210);
    *(a1 + 128) = 0;
  }

  v42 = *(a1 + 104);
  if (v42)
  {
    MEMORY[0x29C250E90](v42, 0x1000C8052888210);
  }

  return a1;
}

void sub_29572036C(unsigned __int16 *a1, void *__src, void *__dst, const void *a4, const void *a5, uint64_t a6, float a7, float a8)
{
  if (a1[1] * *a1)
  {
    bzero(*(a1 + 11), 4 * *a1 * a1[1]);
  }

  if (**(a1 + 2) * **(a1 + 1))
  {
    memmove(**(a1 + 5), __src, 4 * **(a1 + 2) * **(a1 + 1));
    if (**(a1 + 2) * **(a1 + 1))
    {
      memmove(**(a1 + 4), a4, 4 * **(a1 + 2) * **(a1 + 1));
      if (**(a1 + 2) * **(a1 + 1))
      {
        memmove(**(a1 + 3), a5, 4 * **(a1 + 2) * **(a1 + 1));
      }
    }
  }

  LODWORD(v16) = *(a1 + 4);
  if (v16 >= 2)
  {
    v17 = 0;
    do
    {
      sub_29572070C(a1, **(a1 + 5), *(*(a1 + 5) + 8 * v17 + 8), (v17 + 1), **(a1 + 1), **(a1 + 2));
      sub_295721E80(v18, *(*(a1 + 4) + 8 * v17), *(*(a1 + 4) + 8 * v17 + 8), *(*(a1 + 1) + 2 * v17), *(*(a1 + 2) + 2 * v17));
      sub_295721B40(v19, *(*(a1 + 3) + 8 * v17), *(*(a1 + 3) + 8 * v17 + 8), *(*(a1 + 1) + 2 * v17), *(*(a1 + 2) + 2 * v17));
      v16 = *(a1 + 4);
      v20 = v17 + 2;
      ++v17;
    }

    while (v20 < v16);
  }

  if (v16)
  {
    v21 = v16;
    do
    {
      v22 = v21 - 1;
      sub_295720788(a1, *(*(a1 + 6) + 8 * (v21 - 1)), *(*(a1 + 3) + 8 * (v21 - 1)), *(*(a1 + 7) + 8 * (v21 - 1)), *(*(a1 + 8) + 8 * (v21 - 1)), 0, *(*(a1 + 1) + 2 * (v21 - 1)), *(*(a1 + 2) + 2 * (v21 - 1)));
      if (v21 == *(a1 + 4))
      {
        v24 = *(a1 + 1);
        v25 = *(a1 + 2);
        if (v25[v22] * v24[v22])
        {
          v23 = memmove(*(*(a1 + 9) + 8 * v22), *(*(a1 + 5) + 8 * v22), 4 * v25[v22] * v24[v22]);
          v24 = *(a1 + 1);
          v25 = *(a1 + 2);
        }

        sub_295721F14(v23, a6, *(a1 + 14), *v24, *v25);
        sub_2957209C0(a7, a8, v26, *(*(a1 + 9) + 8 * v22), *(a1 + 14), *(*(a1 + 1) + 2 * v22), *(*(a1 + 2) + 2 * v22));
        sub_295720A60(a1, *(*(a1 + 9) + 8 * v22), *(*(a1 + 1) + 2 * v22), *(*(a1 + 2) + 2 * v22));
      }

      else
      {
        sub_295720C60(a1, *(*(a1 + 5) + 8 * v21), *(*(a1 + 9) + 8 * v22), *(*(a1 + 1) + 2 * v21), *(*(a1 + 2) + 2 * v21));
        v27 = *(*(a1 + 5) + 8 * v22);
        v28 = *(*(a1 + 9) + 8 * v22);
        v29 = *(*(a1 + 4) + 8 * v22);
        v30 = *(*(a1 + 2) + 2 * v22) * *(*(a1 + 1) + 2 * v22);
        v31 = v30 - 3;
        if (v30 != 3)
        {
          v32 = 0;
          do
          {
            v33 = *v29++;
            v34 = v33;
            v35 = *v27++;
            *v28 = vbslq_s8(vceqzq_s32(v34), v35, *v28);
            ++v28;
            v32 += 4;
          }

          while (v32 < v31);
          v31 = v30 & 0x7FFFFFFC;
        }

        v36 = v30 >= v31;
        v37 = v30 - v31;
        if (v37 != 0 && v36)
        {
          do
          {
            if (v29->i32[0] != -1)
            {
              v28->i32[0] = v27->i32[0];
            }

            v27 = (v27 + 4);
            v28 = (v28 + 4);
            v29 = (v29 + 4);
            --v37;
          }

          while (v37);
        }
      }

      sub_295720EDC(a1, *(*(a1 + 9) + 8 * v22), *(*(a1 + 10) + 8 * v22), *(a1 + 13), (v21 - 1), *(a1 + 5), *(a1 + 6), *(a1 + 7));
      if (*(*(a1 + 2) + 2 * v22) * *(*(a1 + 1) + 2 * v22))
      {
        memmove(*(*(a1 + 5) + 8 * v22), *(*(a1 + 10) + 8 * v22), 4 * *(*(a1 + 2) + 2 * v22) * *(*(a1 + 1) + 2 * v22));
      }
    }

    while (v21-- > 1);
  }

  v39 = **(a1 + 2) * **(a1 + 1);
  if (v39)
  {
    v40 = **(a1 + 5);

    memmove(__dst, v40, 4 * v39);
  }
}

void sub_29572070C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  if (a4 >= 4)
  {
    sub_295733294();
  }

  switch(a4)
  {
    case 3u:

      sub_295721D8C(a1, a2, a3, a5, a6);
      break;
    case 2u:

      sub_295721CB8(a1, a2, a3, a5, a6);
      break;
    case 1u:

      sub_295721BFC(a1, a2, a3, a5, a6);
      break;
  }
}

void sub_295720788(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, unsigned int a8)
{
  v14 = *(a1 + 112);
  v15 = a7 + 2;
  bzero(v14, 4 * ((a8 + 2) * v15 - ((a8 + 2) * v15 != 0)) + 4);
  if (a8)
  {
    v48 = a2;
    v49 = a5;
    v16 = 4 * a7;
    v47 = v14 + 4;
    v17 = a8;
    v18 = &v14[v16 + 12];
    v19 = v17;
    do
    {
      if (a7)
      {
        memmove(v18, a3, 4 * a7);
      }

      v18 += v16 + 8;
      a3 += v16;
      --v19;
    }

    while (v19);
    v20 = 0;
    v21 = 4 * a7;
    v22 = v21 + 8;
    v23 = &v14[8 * a7 + 20];
    v24 = vdupq_n_s32(0x3A800000u);
    v25 = v49;
    v26 = a4;
    v27 = &v14[v21];
    do
    {
      v28 = v20 * a7;
      ++v20;
      v29 = (v48 + 16 * (v28 & 0x3FFFFFFF));
      if (a7 < 4)
      {
        v37 = 0;
        v32 = &v47[4 * v20 * v15];
        v33 = (v32 - 4 * v15);
        v34 = (v32 + 4 * v15);
        v35 = (a4 + 4 * v28);
        v36 = (v49 + 4 * v28);
      }

      else
      {
        v30 = 0;
        v31 = 3;
        do
        {
          v50.val[0] = *&v27[v30 + 16];
          v50.val[1] = *&v14[v30 + 4];
          v50.val[2] = *&v27[v30 + 8];
          v50.val[3] = *(v23 + v30);
          vst4q_f32(v29, v50);
          v29 += 16;
          v50.val[0] = vaddq_f32(vaddq_f32(v50.val[0], v50.val[1]), vaddq_f32(v50.val[2], v50.val[3]));
          *(v26 + v30) = v50.val[0];
          *(v25 + v30) = vrecpeq_f32(vmaxq_f32(v50.val[0], v24));
          v31 += 4;
          v30 += 16;
        }

        while (v31 < a7);
        v32 = &v27[v30 + 12];
        v33 = &v14[v30 + 4];
        v34 = (v23 + v30);
        v35 = (v26 + v30);
        v36 = (v25 + v30);
        v37 = a7 & 0xFFFC;
      }

      v38 = a7 >= v37;
      v39 = a7 - v37;
      if (v39 != 0 && v38)
      {
        v40 = (v32 + 4);
        do
        {
          v41 = *v40;
          *v29 = *v40;
          v42 = *v33++;
          v43 = v42;
          v29[1] = v42;
          v44 = *(v40 - 2);
          v29[2] = v44;
          v45 = *v34++;
          v29[3] = v45;
          v46 = ((v41 + v43) + v44) + v45;
          *v35++ = v46;
          *v36++ = 1.0 / fmaxf(v46, 0.00097656);
          v29 += 4;
          ++v40;
          --v39;
        }

        while (v39);
      }

      v27 += v22;
      v14 += v22;
      v23 += v22;
      v26 += v21;
      v25 += v21;
    }

    while (v20 != v17);
  }
}

void sub_2957209C0(float a1, float a2, uint64_t a3, float *a4, float *a5, unsigned int a6, unsigned int a7)
{
  if (a6)
  {
    v7 = 0;
    v8 = (a6 * (a7 - 1));
    v9 = a5;
    v10 = a4;
    do
    {
      if (*v9 > a2)
      {
        *v10 = a1;
      }

      if (v9[v8] > a2)
      {
        v10[v8] = a1;
      }

      ++v7;
      ++v10;
      ++v9;
    }

    while (v7 < a6);
  }

  if (a7)
  {
    v11 = 0;
    v12 = 4 * a6;
    v13 = a5 - 1;
    v14 = a4 - 1;
    do
    {
      if (v13[1] > a2)
      {
        v14[1] = a1;
      }

      if (v13[a6] > a2)
      {
        v14[a6] = a1;
      }

      ++v11;
      v13 = (v13 + v12);
      v14 = (v14 + v12);
    }

    while (v11 < a7);
  }
}

uint64_t sub_295720A60(uint64_t result, float *a2, unsigned int a3, unsigned int a4)
{
  v4 = *(result + 136);
  v5 = a4 * a3;
  if (v5)
  {
    v6 = *(result + 136);
    v7 = a2;
    do
    {
      if ((*v7 + 1.0) == 0.0)
      {
        *v6 = 1;
        *v7 = 1.0e10;
      }

      else
      {
        *v6 = 0;
      }

      ++v7;
      ++v6;
      --v5;
    }

    while (v5);
  }

  v8 = a3 - 2;
  if (a3 >= 2)
  {
    v9 = a2 + 1;
    for (i = 1; i != a3; ++i)
    {
      v11 = a4;
      v12 = v4;
      v13 = v9;
      if (a4)
      {
        do
        {
          result = *(v12 + i);
          if (*(v12 + i))
          {
            v14 = *(v13 - 1);
            if (v14 >= *v13)
            {
              v14 = *v13;
            }

            *v13 = v14;
          }

          v12 += a3;
          v13 += a3;
          --v11;
        }

        while (v11);
      }

      ++v9;
    }

    v15 = &a2[v8];
    do
    {
      v16 = a4;
      v17 = v4;
      v18 = v15;
      if (a4)
      {
        do
        {
          if (*(v17 + v8))
          {
            v19 = v18[1];
            if (v19 >= *v18)
            {
              v19 = *v18;
            }

            *v18 = v19;
          }

          v17 += a3;
          v18 += a3;
          --v16;
        }

        while (v16);
      }

      --v15;
      v20 = v8-- <= 0;
    }

    while (!v20);
  }

  v21 = a4 - 2;
  if (a4 >= 2)
  {
    v22 = 4 * a3;
    v23 = 1;
    v24 = a2;
    v25 = (v4 + a3);
    do
    {
      if (a3)
      {
        v26 = 0;
        v27 = v24;
        v28 = v25;
        do
        {
          if (*v28++)
          {
            v30 = *v27;
            if (*v27 >= v27[a3])
            {
              v30 = v27[a3];
            }

            v27[a3] = v30;
          }

          ++v27;
          v26 += 4;
        }

        while (v22 != v26);
      }

      ++v23;
      v25 += a3;
      v24 = (v24 + v22);
    }

    while (v23 != a4);
    v31 = a2 + (4 * (a4 - 2) + 4) * a3;
    v32 = (v4 + a3 * v21);
    v33 = &a2[a3 * v21];
    do
    {
      v34 = a3;
      v35 = v33;
      v36 = v32;
      result = v31;
      if (a3)
      {
        do
        {
          if (*v36++)
          {
            v38 = *result;
            if (*result >= *v35)
            {
              v38 = *v35;
            }

            *v35 = v38;
          }

          result += 4;
          ++v35;
          --v34;
        }

        while (v34);
      }

      v31 -= 4 * a3;
      v32 -= a3;
      v33 -= a3;
      v20 = v21-- <= 0;
    }

    while (!v20);
  }

  return result;
}

float32x4_t *sub_295720C60(float32x4_t *result, float *a2, float32x4_t *__dst, unsigned int a4, int a5)
{
  v6 = __dst;
  v7 = result[8].i64[0];
  __len = 8 * a4;
  if (!a5)
  {
    v20 = __dst;
    if (!a4)
    {
      return result;
    }

    goto LABEL_27;
  }

  v9 = 0;
  v10 = 2 * a4;
  v11 = a4 - 7;
  v12 = a4 - 1;
  v13 = (a4 & 0xFFFC) - 4;
  __asm
  {
    FMOV            V4.4S, #0.75
    FMOV            V5.4S, #0.25
  }

  v20 = __dst;
  v21 = &v7->f32[v10];
  v44 = -2 * a4;
  v41 = v13;
  v42 = a5;
  v39 = _Q5;
  v40 = _Q4;
  do
  {
    result = v7;
    v7 = v21;
    *v21 = *a2;
    v22 = v21 + 1;
    if (a4 < 8)
    {
      v25 = 0;
    }

    else
    {
      v23 = 0;
      do
      {
        v24 = *(a2 + 1);
        v47.val[0] = vmlaq_f32(vmulq_f32(*a2, _Q4), _Q5, v24);
        v47.val[1] = vmlaq_f32(vmulq_f32(*a2, _Q5), _Q4, v24);
        vst2q_f32(v22, v47);
        v22 += 8;
        v23 += 4;
        a2 += 4;
      }

      while (v23 < v11);
      v25 = v13;
    }

    if (v25 >= v12)
    {
      v27 = a2;
    }

    else
    {
      v26 = v12 - v25;
      v27 = a2;
      do
      {
        v28 = v27[1];
        ++v27;
        *v22 = (v28 * 0.25) + (*a2 * 0.75);
        v22[1] = (*v27 * 0.75) + (*a2 * 0.25);
        v22 += 2;
        a2 = v27;
        --v26;
      }

      while (v26);
    }

    v6 = (v6 + 4 * v10);
    a2 = v27 + 1;
    *v22 = *v27;
    if (v9)
    {
      if (a4 < 2)
      {
        v29 = 0;
        v31 = v7;
        v30 = result;
      }

      else
      {
        v29 = 0;
        v30 = result;
        v31 = v7;
        do
        {
          v32 = *v30++;
          v33 = v32;
          v34 = *v31++;
          *v20++ = vmlaq_f32(vmulq_f32(v33, _Q4), _Q5, v34);
          *v6++ = vmlaq_f32(vmulq_f32(v33, _Q5), _Q4, v34);
          v29 += 4;
        }

        while (v29 < v10 - 3);
      }

      if (v29 < v10)
      {
        v35 = v44 + v29;
        do
        {
          v20->f32[0] = (v31->f32[0] * 0.25) + (v30->f32[0] * 0.75);
          v20 = (v20 + 4);
          v36 = v30->f32[0];
          v30 = (v30 + 4);
          v37 = v36;
          v38 = v31->f32[0];
          v31 = (v31 + 4);
          v6->f32[0] = (v38 * 0.75) + (v37 * 0.25);
          v6 = (v6 + 4);
        }

        while (!__CFADD__(v35++, 1));
      }
    }

    else if (a4)
    {
      v45 = result;
      memmove(v20, v7, __len);
      result = v45;
      _Q5 = v39;
      _Q4 = v40;
      v13 = v41;
      a5 = v42;
    }

    v20 = (v20 + 4 * v10);
    ++v9;
    v21 = result;
  }

  while (v9 != a5);
  if (a4)
  {
LABEL_27:

    return memmove(v20, v7, __len);
  }

  return result;
}

char *sub_295720EDC(char *result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, unsigned __int8 a7, char a8)
{
  v9 = result;
  if (result[4] - 1 == a5)
  {
    return sub_2957211BC(result, a2, a3, 0, a4, *(*(result + 4) + 8 * a5), *(*(result + 6) + 8 * a5), *(*(result + 7) + 8 * a5), *(*(result + 8) + 8 * a5), a8 + a7, *(*(result + 1) + 2 * a5), *(*(result + 2) + 2 * a5));
  }

  if (result[5])
  {
    sub_2957211BC(result, a2, a3, *(result + 11), a4, *(*(result + 4) + 8 * a5), *(*(result + 6) + 8 * a5), *(*(result + 7) + 8 * a5), *(*(result + 8) + 8 * a5), a7, *(*(result + 1) + 2 * a5), *(*(result + 2) + 2 * a5));
    v10 = *(*(v9 + 8) + 2 * a5);
    v11 = *(*(v9 + 16) + 2 * a5);
    if (v11 * v10)
    {
      memmove(*(v9 + 112), *(v9 + 88), 4 * v11 * v10);
      v10 = *(*(v9 + 8) + 2 * a5);
      v11 = *(*(v9 + 16) + 2 * a5);
    }

    sub_29572178C(v9, *(v9 + 112), *(v9 + 88), v10, v11);
    if (*(*(v9 + 8) + 2 * a5))
    {
      if (*(*(v9 + 16) + 2 * a5))
      {
        operator new[]();
      }
    }

    sub_2957332C0();
  }

  return result;
}

char *sub_2957211BC(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8, uint64_t a9, unsigned __int8 a10, unsigned __int16 a11, unsigned __int16 a12)
{
  v16 = *(a1 + 112);
  v17 = a11 + 2;
  bzero(v16, 4 * ((a12 + 2) * v17 - ((a12 + 2) * v17 != 0)) + 4);
  v88 = a4;
  v89 = a3;
  if (a12)
  {
    v18 = 0;
    do
    {
      if (a11)
      {
        v19 = v18 + 1;
        memmove((*(a1 + 112) + 4 * (v18 + 1) * v17 + 4), (a2 + 4 * v18 * a11), 4 * a11);
        v18 = v19;
      }

      else
      {
        ++v18;
      }
    }

    while (v18 != a12);
    v16 = *(a1 + 112);
  }

  result = memmove(*(a1 + 120), v16, 4 * (a12 + 2) * v17);
  if (a10)
  {
    v21 = 0;
    v22 = 4 * a11;
    v23 = v22 + 8;
    v24 = vdupq_n_s32(0xBF4CCCCD);
    do
    {
      v90 = v21;
      if (a12)
      {
        v25 = 0;
        v26 = 0;
        v27 = a6;
        result = a8;
        v29 = a9;
        v28 = a5;
        v30 = v22 + 12;
        v31 = 8 * a11 + 20;
        v32 = 4 * a11;
        do
        {
          v33 = v26 + 1;
          v35 = *(a1 + 112);
          v34 = *(a1 + 120);
          v36 = v26 * a11;
          v37 = (a7 + 16 * (v36 & 0x3FFFFFFF));
          if (a11 < 4u)
          {
            v51 = 0;
            v43 = v35 + 4 * v33 * v17 + 4;
            v44 = v43 - 4 * v17;
            v45 = v43 + 4 * v17;
            v46 = v34 + 4 * v33 * v17 + 4;
            v47 = a5 + 4 * v36;
            v48 = &a8[4 * v36];
            v49 = a9 + 4 * v36;
            v50 = a6 + 4 * v36;
          }

          else
          {
            v38 = 0;
            v39 = 0;
            do
            {
              v41 = *(v27 + v38);
              if (vmaxvq_u32(v41))
              {
                v96 = vld4q_f32(v37);
                v40 = v35 + v32;
                *(v34 + v30 + v38) = vbslq_s8(v41, vmlaq_f32(*(v40 + v38 + 12), v24, vmulq_f32(vsubq_f32(vmulq_f32(*&result[v38], vsubq_f32(*(v40 + v38 + 12), *(v28 + v38))), vaddq_f32(vmlaq_f32(vmulq_f32(v96.val[0], *(v40 + v38 + 16)), *(v35 + v25 + v38 + 4), v96.val[1]), vmlaq_f32(vmulq_f32(v96.val[2], *(v40 + v38 + 8)), *(v35 + v31 + v38), v96.val[3]))), *(v29 + v38))), *(v40 + v38 + 12));
              }

              v42 = v39 + 7;
              v39 += 4;
              v37 += 16;
              v38 += 16;
            }

            while (v42 < a11);
            v43 = v35 + v32 + v38 + 12;
            v44 = v35 + v25 + v38 + 4;
            v45 = v35 + v31 + v38;
            v46 = v34 + v30 + v38;
            v47 = v28 + v38;
            v48 = &result[v38];
            v49 = v29 + v38;
            v50 = v27 + v38;
            v51 = a11 & 0xFFFC;
          }

          if (v51 < a11)
          {
            v52 = 0;
            v53 = (v37 + 2);
            v54 = v43 - 4;
            do
            {
              if (*(v50 + v52))
              {
                *(v46 + v52) = *(v54 + v52 + 4) + ((*(v49 + v52) * -0.8) * -(((((*(v53 - 1) * *(v44 + v52)) + (*(v53 - 2) * *(v54 + v52 + 8))) + (*v53 * *(v54 + v52))) + (v53[1] * *(v45 + v52))) - (*&v48[v52] * (*(v54 + v52 + 4) - *(v47 + v52)))));
              }

              ++v51;
              v53 += 4;
              v52 += 4;
            }

            while (v51 < a11);
          }

          v32 += v23;
          v25 += v23;
          v31 += v23;
          v30 += v23;
          v28 += v22;
          result += v22;
          v29 += v22;
          v27 += v22;
          v26 = v33;
        }

        while (v33 != a12);
      }

      *(a1 + 112) = vextq_s8(*(a1 + 112), *(a1 + 112), 8uLL);
      v21 = v90 + 1;
    }

    while (v90 + 1 < a10);
  }

  if (v88 && a12)
  {
    v55 = 0;
    v56 = 4 * a11;
    v57 = v56 + 8;
    v58 = 8 * a11 + 20;
    v59 = a6;
    v60 = a8;
    v61 = a9;
    v62 = a5;
    v63 = v56;
    result = v88;
    v64 = 0;
    do
    {
      v65 = *(a1 + 112);
      v66 = v64 + 1;
      v67 = v64 * a11;
      v68 = (a7 + 16 * (v67 & 0x3FFFFFFF));
      if (a11 < 4u)
      {
        v81 = 0;
        v74 = v65 + 4 * v66 * v17 + 4;
        v75 = v74 - 4 * v17;
        v76 = v74 + 4 * v17;
        v77 = a5 + 4 * v67;
        v78 = a9 + 4 * v67;
        v79 = &a8[4 * v67];
        v80 = a6 + 4 * v67;
        v73 = &v88[4 * v67];
      }

      else
      {
        v69 = 0;
        v70 = 0;
        do
        {
          v71 = *(v59 + v69);
          if (vmaxvq_u32(v71))
          {
            v95 = vld4q_f32(v68);
            *&result[v69] = vandq_s8(v71, vmulq_f32(vsubq_f32(vmulq_f32(*&v60[v69], vsubq_f32(*(v65 + v63 + v69 + 12), *(v62 + v69))), vaddq_f32(vmlaq_f32(vmulq_f32(v95.val[0], *(v65 + v63 + v69 + 16)), *(v65 + v55 + v69 + 4), v95.val[1]), vmlaq_f32(vmulq_f32(v95.val[2], *(v65 + v63 + v69 + 8)), *(v65 + v58 + v69), v95.val[3]))), vnegq_f32(*(v61 + v69))));
          }

          v72 = v70 + 7;
          v70 += 4;
          v68 += 16;
          v69 += 16;
        }

        while (v72 < a11);
        v73 = &result[v69];
        v74 = v65 + v63 + v69 + 12;
        v75 = v65 + v55 + v69 + 4;
        v76 = v65 + v58 + v69;
        v77 = v62 + v69;
        v78 = v61 + v69;
        v79 = &v60[v69];
        v80 = v59 + v69;
        v81 = a11 & 0xFFFC;
      }

      if (v81 < a11)
      {
        v82 = 0;
        v83 = (v68 + 2);
        v84 = v74 - 4;
        do
        {
          if (*(v80 + v82))
          {
            v85 = -(*(v78 + v82) * -(((((*(v83 - 1) * *(v75 + v82)) + (*(v83 - 2) * *(v84 + v82 + 8))) + (*v83 * *(v84 + v82))) + (v83[1] * *(v76 + v82))) - (*&v79[v82] * (*(v84 + v82 + 4) - *(v77 + v82)))));
          }

          else
          {
            v85 = 0.0;
          }

          *&v73[v82] = v85;
          ++v81;
          v82 += 4;
          v83 += 4;
        }

        while (v81 < a11);
      }

      result += v56;
      v63 += v57;
      v55 += v57;
      v58 += v57;
      v62 += v56;
      v61 += v56;
      v60 += v56;
      v59 += v56;
      v64 = v66;
    }

    while (v66 != a12);
  }

  if (a12)
  {
    v86 = 0;
    do
    {
      if (a11)
      {
        v87 = (v89 + 4 * v86 * a11);
        result = memmove(v87, (*(a1 + 112) + 4 * ++v86 * v17 + 4), 4 * a11);
      }

      else
      {
        ++v86;
      }
    }

    while (v86 != a12);
  }

  return result;
}

uint64_t sub_29572178C(uint64_t result, uint64_t a2, float32x4_t *a3, unsigned int a4, unsigned int a5)
{
  v5 = a4 >> 1;
  v6 = *(result + 128);
  __asm { FMOV            V0.4S, #0.375 }

  if (a5)
  {
    v12 = 0;
    v13 = v5 - 2;
    v14.i64[0] = 0x3E0000003E000000;
    v14.i64[1] = 0x3E0000003E000000;
    do
    {
      v15 = &v6->f32[v12 * v5];
      v16 = (a2 + 4 * v12 * a4);
      v17 = *v16;
      v18 = v16[2];
      v20 = v16[1];
      v19 = v16 + 1;
      *v15 = ((v20 * 0.375) + (v17 * 0.5)) + (v18 * 0.125);
      v21 = (v15 + 1);
      if (a4 < 0x12)
      {
        v22 = 0;
      }

      else
      {
        v22 = 0;
        do
        {
          result = (v19 + 2);
          v75 = vld2q_f32(v19);
          v19 += 8;
          v76 = vld2q_f32(result);
          *v21++ = vaddq_f32(vmlaq_f32(vmulq_f32(v75.val[0], v14), _Q0, v75.val[1]), vmlaq_f32(vmulq_f32(v76.val[0], _Q0), v14, v76.val[1]));
          v22 += 4;
        }

        while (v5 - 8 > v22);
        v22 = v22;
      }

      if (v13 > v22)
      {
        do
        {
          v23 = (v19[1] * 0.375) + (*v19 * 0.125);
          v24 = v19[3];
          v25 = v19[2];
          v19 += 2;
          v21->f32[0] = (v23 + (v25 * 0.375)) + (v24 * 0.125);
          v21 = (v21 + 4);
          ++v22;
        }

        while (v13 > v22);
      }

      v21->f32[0] = ((v19[1] * 0.375) + (*v19 * 0.125)) + (v19[2] * 0.5);
      ++v12;
    }

    while (v12 != a5);
  }

  v26 = v5 - 3;
  if (a4 < 8)
  {
    v27 = 0;
    v32 = &v6->f32[v5];
    v31 = v6;
    v30 = a3;
    v33 = &v6->f32[(2 * v5)];
  }

  else
  {
    v27 = 0;
    v28.i64[0] = 0x3F0000003F000000;
    v28.i64[1] = 0x3F0000003F000000;
    v29.i64[0] = 0x3E0000003E000000;
    v29.i64[1] = 0x3E0000003E000000;
    v30 = a3;
    v31 = v6;
    do
    {
      *v30++ = vmlaq_f32(vmlaq_f32(vmulq_f32(*v31, v28), _Q0, *(v31 + 4 * v5)), v29, *(v31 + 8 * v5));
      v27 += 4;
      ++v31;
    }

    while (v26 > v27);
    v27 = v27;
    v32 = &v31->f32[v5];
    v33 = &v31->f32[2 * v5];
  }

  for (; v27 < v5; ++v27)
  {
    v34 = v31->f32[0];
    v31 = (v31 + 4);
    v35 = v34;
    v36 = *v32++;
    v37 = v36 * 0.375;
    v38 = *v33++;
    v30->f32[0] = (v37 + (v35 * 0.5)) + (v38 * 0.125);
    v30 = (v30 + 4);
  }

  v39 = (a5 >> 1) - 1;
  if (a5 >= 6)
  {
    v40 = &a3->i8[4 * v5];
    v41 = &v6->i8[4 * v5];
    v42 = 8 * v5;
    v43 = v6 + 8 * v5;
    v44 = v6 + 12 * v5;
    result = 1;
    v45.i64[0] = 0x3E0000003E000000;
    v45.i64[1] = 0x3E0000003E000000;
    v46 = &v6[v5];
    do
    {
      if (a4 < 8)
      {
        v48 = 0;
        v49 = &a3->f32[result * v5];
        v50 = &v6->f32[(2 * result - 1) * v5];
        v51 = &v50[v5];
        v52 = &v51[v5];
        f32 = &v52[v5];
      }

      else
      {
        v47 = 0;
        v48 = 0;
        do
        {
          *&v40[v47] = vaddq_f32(vmlaq_f32(vmulq_f32(*&v41[v47], v45), _Q0, *&v43[v47]), vmlaq_f32(vmulq_f32(*&v44[v47], _Q0), v45, v46[v47 / 0x10]));
          v48 += 4;
          v47 += 16;
        }

        while (v26 > v48);
        v48 = v48;
        v49 = &v40[v47];
        v50 = &v41[v47];
        v51 = &v43[v47];
        v52 = &v44[v47];
        f32 = v46[v47 / 0x10].f32;
      }

      while (v48 < v5)
      {
        v54 = *v50++;
        v55 = v54;
        v56 = *v51++;
        v57 = (v56 * 0.375) + (v55 * 0.125);
        v58 = *v52++;
        v59 = v58;
        v60 = *f32++;
        *v49++ = (v57 + (v59 * 0.375)) + (v60 * 0.125);
        ++v48;
      }

      ++result;
      v40 += 4 * v5;
      v41 += v42;
      v43 += v42;
      v44 += v42;
      v46 = (v46 + v42);
    }

    while (result != v39);
  }

  v61 = &a3->f32[v39 * v5];
  v62 = &v6->f32[((a5 - 3) * v5)];
  v63 = &v6->f32[((a5 - 2) * v5)];
  v64 = &v6->f32[((a5 - 1) * v5)];
  if (a4 < 8)
  {
    v69 = 0;
  }

  else
  {
    v65 = 0;
    v66 = 0;
    v67.i64[0] = 0x3E0000003E000000;
    v67.i64[1] = 0x3E0000003E000000;
    v68.i64[0] = 0x3F0000003F000000;
    v68.i64[1] = 0x3F0000003F000000;
    do
    {
      *&v61[v65] = vmlaq_f32(vmlaq_f32(vmulq_f32(*&v62[v65], v67), _Q0, *&v63[v65]), v68, *&v64[v65]);
      v66 += 4;
      v65 += 4;
    }

    while (v26 > v66);
    v69 = v66;
    v61 = (v61 + v65 * 4);
    v62 = (v62 + v65 * 4);
    v63 = (v63 + v65 * 4);
    v64 = (v64 + v65 * 4);
  }

  for (; v69 < v5; ++v69)
  {
    v70 = *v62++;
    v71 = v70;
    v72 = *v63++;
    v73 = v72 * 0.375;
    v74 = *v64++;
    *v61++ = (v73 + (v71 * 0.125)) + (v74 * 0.5);
  }

  return result;
}

void sub_295721B40(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  if (a5 >= 2)
  {
    v5 = 0;
    v6 = a4 - 1;
    do
    {
      v7 = (a2 + 4 * v5 * a4);
      v8 = (a2 + 4 * (a4 + v5 * a4));
      v9 = (a3 + ((v5 * a4) & 0xFFFFFFFC));
      if (a4 < 8)
      {
        v15 = 0;
      }

      else
      {
        v10 = 0;
        do
        {
          v11 = *v7;
          v12 = v7[1];
          v7 += 2;
          v13 = *v8;
          v14 = v8[1];
          v8 += 2;
          *v9++ = vminq_f32(vpminq_f32(v11, v12), vpminq_f32(v13, v14));
          v10 += 8;
        }

        while ((a4 - 7) > v10);
        v15 = a4 & 0xFFF8;
      }

      if (v6 > v15)
      {
        do
        {
          v16 = v7->f32[0];
          v17 = v7->f32[1];
          v7 = (v7 + 8);
          if (v16 >= v17)
          {
            v16 = v17;
          }

          v18 = v8->f32[0];
          v19 = v8->f32[1];
          v8 = (v8 + 8);
          if (v18 >= v19)
          {
            v18 = v19;
          }

          if (v16 >= v18)
          {
            v16 = v18;
          }

          v9->f32[0] = v16;
          v9 = (v9 + 4);
          v15 += 2;
        }

        while (v6 > v15);
      }

      v5 = (v5 + 2);
    }

    while (v5 < (a5 - 1));
  }
}

void sub_295721BFC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  if (a5 >= 2)
  {
    v5 = 0;
    v6 = a4 - 1;
    do
    {
      v7 = (a2 + 4 * v5 * a4);
      v8 = (a2 + 4 * (a4 + v5 * a4));
      v9 = (a3 + ((v5 * a4) & 0xFFFFFFFC));
      if (a4 < 8)
      {
        v15 = 0;
      }

      else
      {
        v10 = 0;
        do
        {
          v11 = *v7;
          v12 = v7[1];
          v7 += 2;
          v13 = *v8;
          v14 = v8[1];
          v8 += 2;
          *v9++ = vmaxq_f32(vpmaxq_f32(v11, v12), vpmaxq_f32(v13, v14));
          v10 += 8;
        }

        while ((a4 - 7) > v10);
        v15 = a4 & 0xFFF8;
      }

      if (v6 > v15)
      {
        do
        {
          v16 = v7->f32[0];
          v17 = v7->f32[1];
          v7 = (v7 + 8);
          if (v16 <= v17)
          {
            v16 = v17;
          }

          v18 = v8->f32[0];
          v19 = v8->f32[1];
          v8 = (v8 + 8);
          if (v18 <= v19)
          {
            v18 = v19;
          }

          if (v16 <= v18)
          {
            v16 = v18;
          }

          v9->f32[0] = v16;
          v9 = (v9 + 4);
          v15 += 2;
        }

        while (v6 > v15);
      }

      v5 = (v5 + 2);
    }

    while (v5 < (a5 - 1));
  }
}

void sub_295721D8C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  if (a5 >= 5)
  {
    v5 = 0;
    v6 = a2 + 12;
    v7 = a4 - 1;
    do
    {
      v8 = (v5 + 3) * a4;
      v9 = (v5 + 4) * a4;
      v10 = (a3 + 4 * ((v5 * a4) >> 6));
      if (a4 < 0x10)
      {
        v14 = 0;
        v13 = (v6 + 4 * v8);
        v15 = (v6 + 4 * v9);
      }

      else
      {
        v11 = 0;
        v12 = a2 + 12;
        do
        {
          *v10++ = vpmax_f32(vmax_f32(*(v12 + 4 * v8), *(v12 + 4 * v9)), vmax_f32(*(v12 + 4 * v8 + 32), *(v12 + 4 * v9 + 32)));
          v11 += 16;
          v12 += 64;
        }

        while ((a4 - 15) > v11);
        v13 = (v12 + 4 * v8);
        v14 = a4 & 0xFFF0;
        v15 = (v12 + 4 * v9);
      }

      if (v7 > v14)
      {
        do
        {
          v16 = *v13;
          v17 = v13[1];
          v13 += 8;
          if (v16 <= v17)
          {
            v16 = v17;
          }

          v18 = *v15;
          v19 = v15[1];
          v15 += 8;
          if (v18 <= v19)
          {
            v18 = v19;
          }

          if (v16 <= v18)
          {
            v16 = v18;
          }

          v10->f32[0] = v16;
          v10 = (v10 + 4);
          v14 += 8;
        }

        while (v7 > v14);
      }

      v5 = (v5 + 8);
    }

    while (v5 < (a5 - 4));
  }
}

void sub_295721E80(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  if (a5 >= 2)
  {
    v5 = 0;
    v6 = a4 - 1;
    do
    {
      v7 = (a2 + 4 * (a4 + v5 * a4));
      v8 = (a3 + ((v5 * a4) & 0xFFFFFFFC));
      if (a4 < 0x10)
      {
        v10 = 0;
      }

      else
      {
        v9 = 0;
        do
        {
          v13 = vld4q_f32(v7);
          v7 += 16;
          v13.val[2] = v13.val[3];
          vst2q_f32(v8, *v13.val[1].f32);
          v8 += 8;
          v9 += 16;
        }

        while ((a4 - 15) > v9);
        v10 = a4 & 0xFFF0;
      }

      if (v6 > v10)
      {
        v11 = (v7 + 1);
        do
        {
          v12 = *v11;
          v11 += 2;
          *v8++ = v12;
          v10 += 2;
        }

        while (v6 > v10);
      }

      v5 = (v5 + 2);
    }

    while (v5 < (a5 - 1));
  }
}

void sub_295721F14(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  if (a5 >= 2)
  {
    v5 = 0;
    v6 = a4 - 1;
    do
    {
      v7 = (a2 + 4 * (a4 + v5 * a4));
      v8 = (a3 + 4 * ((v5 * a4) >> 4));
      if (a4 < 0x10)
      {
        v10 = 0;
      }

      else
      {
        v9 = 0;
        do
        {
          v13 = vld4q_f32(v7);
          v7 += 16;
          *v8++ = v13.val[1];
          v9 += 16;
        }

        while ((a4 - 15) > v9);
        v10 = a4 & 0xFFF0;
      }

      if (v6 > v10)
      {
        v11 = (v7 + 1);
        do
        {
          v12 = *v11;
          v11 += 4;
          v8->i32[0] = v12;
          v8 = (v8 + 4);
          v10 += 4;
        }

        while (v6 > v10);
      }

      v5 = (v5 + 4);
    }

    while (v5 < (a5 - 1));
  }
}

uint64_t sub_295721FA4()
{
  LODWORD(v5) = -1;
  *&v0 = -1;
  *(&v0 + 1) = -1;
  v3 = v0;
  v4 = v0;
  qword_2A18AAA88 = 0;
  unk_2A18AAA90 = 0;
  qword_2A18AAA80 = 0;
  sub_295717CE8(&qword_2A18AAA80, &v3, &v5 + 4, 9uLL);
  word_2A18AAA98 = 771;
  v3 = xmmword_295742E9C;
  v4 = unk_295742EAC;
  LODWORD(v5) = 0;
  qword_2A18AAC20 = 0;
  unk_2A18AAC28 = 0;
  qword_2A18AAC18 = 0;
  sub_295717CE8(&qword_2A18AAC18, &v3, &v5 + 4, 9uLL);
  word_2A18AAC30 = 771;
  LODWORD(v9[0]) = -1;
  *&v1 = -1;
  *(&v1 + 1) = -1;
  v7 = v1;
  v8 = v1;
  v5 = v1;
  v6 = v1;
  v3 = v1;
  v4 = v1;
  qword_2A18AAA08 = 0;
  unk_2A18AAA10 = 0;
  qword_2A18AAA00 = 0;
  sub_295717CE8(&qword_2A18AAA00, &v3, v9 + 4, 0x19uLL);
  word_2A18AAA18 = 1285;
  v5 = xmmword_295742EE0;
  v6 = unk_295742EF0;
  v7 = xmmword_295742F00;
  v8 = unk_295742F10;
  v3 = xmmword_295742EC0;
  v4 = unk_295742ED0;
  LODWORD(v9[0]) = 0;
  qword_2A18AABA0 = 0;
  unk_2A18AABA8 = 0;
  qword_2A18AAB98 = 0;
  sub_295717CE8(&qword_2A18AAB98, &v3, v9 + 4, 0x19uLL);
  word_2A18AABB0 = 1285;
  v9[2] = xmmword_295742FA4;
  v9[3] = unk_295742FB4;
  v9[4] = xmmword_295742FC4;
  v9[5] = unk_295742FD4;
  v7 = xmmword_295742F64;
  v8 = unk_295742F74;
  memset(v9, 255, 32);
  v3 = xmmword_295742F24;
  v4 = unk_295742F34;
  v5 = xmmword_295742F44;
  v6 = unk_295742F54;
  v10 = 0;
  qword_2A18AAB18 = 0;
  unk_2A18AAB20 = 0;
  qword_2A18AAB28 = 0;
  result = sub_295717CE8(&qword_2A18AAB18, &v3, &v11, 0x31uLL);
  word_2A18AAB30 = 1799;
  return result;
}

void sub_295722148(uint64_t a1, int a2, int a3, int a4, float a5, float a6, float a7, float a8)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = a4;
  *(a1 + 12) = a5;
  *(a1 + 16) = a6;
  *(a1 + 20) = a7;
  *(a1 + 24) = a8;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  operator new[]();
}

void *sub_295722344(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x29C250E90](v2, 0x1000C8052888210);
    a1[4] = 0;
  }

  v3 = a1[5];
  if (v3)
  {
    MEMORY[0x29C250E90](v3, 0x1000C8052888210);
    a1[5] = 0;
  }

  v4 = a1[6];
  if (v4)
  {
    MEMORY[0x29C250E90](v4, 0x1000C8052888210);
    a1[6] = 0;
  }

  v5 = a1[9];
  if (v5)
  {
    MEMORY[0x29C250E90](v5, 0x1000C8052888210);
    a1[9] = 0;
  }

  v6 = a1[10];
  if (v6)
  {
    MEMORY[0x29C250E90](v6, 0x1000C8052888210);
    a1[10] = 0;
  }

  v7 = a1[8];
  if (v7)
  {
    MEMORY[0x29C250E90](v7, 0x1000C80451B5BE8);
    a1[8] = 0;
  }

  v8 = a1[7];
  if (v8)
  {
    MEMORY[0x29C250E90](v8, 0x1000C8052888210);
    a1[7] = 0;
  }

  v9 = a1[11];
  if (v9)
  {
    MEMORY[0x29C250E90](v9, 0x1000C8052888210);
    a1[11] = 0;
  }

  return a1;
}

unsigned int *sub_295722428(unsigned int *result, uint64_t a2)
{
  v3 = result;
  v4 = *result;
  v5 = result[1] - 4;
  v6 = 3 * *result;
  if (v5 >= 4)
  {
    v7 = v5 - 3;
    v8 = v7;
    v9 = 3 * v4;
    do
    {
      v10 = (a2 + 4 * v9);
      v11 = v10[3];
      *v10 = v11;
      v10[1] = v11;
      v10[2] = v11;
      v9 += v4;
      --v8;
    }

    while (v8);
    v12 = 4 * v4 - 5;
    do
    {
      v13 = (a2 + 4 * v12);
      v14 = vld1q_dup_f32(v13++);
      *v13 = v14;
      v12 += v4;
      --v7;
    }

    while (v7);
  }

  v15 = 0;
  v16 = (a2 + 4 * v6);
  do
  {
    v17 = *v3;
    if (v17)
    {
      result = memmove((a2 + 4 * (v17 * v15)), v16, 4 * v17);
    }

    ++v15;
  }

  while (v15 != 3);
  v18 = *v3;
  v19 = (a2 + 4 * (v3[1] - 5) * *v3);
  v20 = -1;
  if (*v3)
  {
LABEL_11:
    result = memmove((a2 + 4 * (v20 + v3[1]) * v18), v19, 4 * v18);
  }

  while (v20 != -4)
  {
    v18 = *v3;
    --v20;
    if (*v3)
    {
      goto LABEL_11;
    }
  }

  return result;
}

uint64_t sub_29572252C(unsigned int *a1, int8x16_t *a2, float32x4_t *a3)
{
  v4 = a2;
  v6 = *a1;
  v7 = a1[1];
  v8 = (a2 + 4 * (v7 * v6));
  v9 = 0.0;
  if (v7 * v6)
  {
    v10 = a2;
    do
    {
      v11 = *v10++;
      v12 = vmaxvq_f32(v11);
      if (v9 < v12)
      {
        v9 = v12;
      }
    }

    while (v10 < v8);
  }

  else
  {
    v10 = a2;
  }

  while (v10 < v8)
  {
    v13 = v10->f32[0];
    v10 = (v10 + 4);
    v14 = v13;
    if (v9 < v13)
    {
      v9 = v14;
    }
  }

  src.data = a2;
  src.height = v7;
  src.width = v6;
  src.rowBytes = 4 * v6;
  vImageHistogramCalculation_PlanarF(&src, histogram, 0x100u, -1.0, v9, 0);
  v15 = (a1[1] * *a1 - histogram[0]) * 0.05;
  v16 = 1.0;
  if (v15)
  {
    v17 = 0;
    v18 = 1;
    do
    {
      v19 = v18 + 1;
      if (v18 > 0xFE)
      {
        break;
      }

      v17 += histogram[v18++];
    }

    while (v17 < v15);
    v16 = v19;
  }

  *&v15 = ((((v9 + 1.0) + 1.0) * v16) * 0.0039062) + -1.0;
  if (*&v15 >= *(a1 + 3))
  {
    LODWORD(v15) = a1[3];
  }

  v31 = *&v15;
  sub_295722718(a1, v4, a3);
  v20 = a1[1] * *a1;
  if (v20 < 4)
  {
    v21 = 0;
    v24 = v31.i32[0];
  }

  else
  {
    v21 = 0;
    v22 = (a1 + 4);
    v23 = vld1q_dup_f32(v22);
    v24 = v31.i32[0];
    v25 = vdupq_lane_s32(v31, 0);
    do
    {
      v26 = *a3++;
      *v4 = vbslq_s8(vcgtq_f32(v26, v23), v25, *v4);
      ++v4;
      v27 = v21 + 7;
      v21 += 4;
      v20 = a1[1] * *a1;
    }

    while (v27 < v20);
  }

  v28 = v20 >= v21;
  v29 = v20 - v21;
  if (v29 != 0 && v28)
  {
    do
    {
      if (a3->f32[0] > *(a1 + 4))
      {
        v4->i32[0] = v24;
      }

      v4 = (v4 + 4);
      a3 = (a3 + 4);
      --v29;
    }

    while (v29);
  }

  return 1;
}

uint64_t sub_295722718(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  if (a1[1])
  {
    v3 = 0;
    v4 = *a1;
    __asm { FMOV            V0.4S, #-1.0 }

    v10 = vdupq_n_s32(0x65A96816u);
    do
    {
      v11 = (a2 + 4 * v4 * v3);
      v12 = (a3 + 4 * v4 * v3);
      if (v4 < 4)
      {
        v13 = 0;
      }

      else
      {
        v13 = 0;
        do
        {
          v14 = *v11++;
          *v12++ = vandq_s8(v10, vcgeq_f32(_Q0, v14));
          v15 = v13 + 7;
          v13 += 4;
          v4 = *a1;
        }

        while (v15 < *a1);
      }

      _CF = v4 >= v13;
      v16 = v4 - v13;
      if (v16 != 0 && _CF)
      {
        do
        {
          v17 = v11->f32[0];
          v11 = (v11 + 4);
          if ((v17 + 1.0) == 0.0)
          {
            v18 = 1.0e23;
          }

          else
          {
            v18 = 0.0;
          }

          *v12->i32 = v18;
          v12 = (v12 + 4);
          --v16;
        }

        while (v16);
      }

      ++v3;
    }

    while (v3 < a1[1]);
  }

  return sub_2957227C8(a1, a3);
}

uint64_t sub_2957227C8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 64);
  v3 = *result;
  v4 = *(result + 4);
  if (*result)
  {
    v5 = 0;
    v6 = *(result + 56);
    do
    {
      v7 = v4;
      v8 = v5;
      v9 = v6;
      if (v4)
      {
        do
        {
          *v9++ = *(a2 + 4 * v8);
          v8 += v3;
          --v7;
        }

        while (v7);
        v10 = 0;
        while (*&v6[v10] > 1.0)
        {
          if (v4 == ++v10)
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
        LODWORD(v10) = 0;
      }

      if (v10 < v4)
      {
        v11 = 0;
        v12 = v10;
        v13 = v10 + 1;
        v14 = v12 - 1;
        do
        {
          if (*&v6[v12] <= 1.0)
          {
            if (v12 >= 1)
            {
              v15 = 1;
              v16 = v14;
              v17 = v13;
              do
              {
                v18 = (v15 * v15);
                if (*&v6[v16] <= v18)
                {
                  break;
                }

                *&v6[v16] = v18;
                --v17;
                --v16;
                ++v15;
              }

              while (v17 > 1);
            }

            v11 = 0;
          }

          else
          {
            ++v11;
            *&v6[v12] = (v11 * v11);
          }

          ++v12;
          ++v13;
          ++v14;
        }

        while (v4 != v12);
      }

LABEL_20:
      v19 = v4;
      v20 = v6;
      v21 = v5;
      if (v4)
      {
        do
        {
          v22 = *v20++;
          *(a2 + 4 * v21) = v22;
          v21 += v3;
          --v19;
        }

        while (v19);
      }

      ++v5;
    }

    while (v5 != v3);
  }

  if (v4)
  {
    v23 = 0;
    do
    {
      v24 = v3 * v23;
      v25 = a2 + 4 * v3 * v23;
      v27 = *(result + 72);
      v26 = *(result + 80);
      v28 = *(result + 64);
      *v27 = 0;
      *v26 = 0x65A96816E5A96816;
      v29 = v3;
      if (v3 < 2)
      {
        goto LABEL_39;
      }

      v30 = 0;
      v31 = 0;
      for (i = 1; i != v3; ++i)
      {
        v33 = *(v25 + 4 * i) + (i * i);
        v34 = v31;
        v35 = (v30 + 1);
        v36 = v33 - (*(v25 + 4 * v30) + (v30 * v30));
        v37 = v35 - v30;
        if (v36 <= (v37 * (v26[v31] + v26[v31])))
        {
          do
          {
            v38 = v27[v34 - 1];
            v39 = v26[--v34];
            v36 = v33 - (*(v25 + 4 * v38) + (v38 * v38));
            v40 = v39 + v39;
            v37 = v35 - v38;
          }

          while (v36 <= (v37 * v40));
          v31 = v34;
        }

        v27[++v31] = v30 + 1;
        v26[v31] = v36 / (v37 + v37);
        v26[v34 + 2] = 1.0e23;
        ++v30;
      }

      if (v3 < 4)
      {
LABEL_39:
        v54 = 0;
        v42 = 0;
      }

      else
      {
        v41 = 0;
        v42 = 0;
        do
        {
          v43 = 0;
          v44.i32[0] = v41;
          v44.i32[1] = v41 | 1;
          v44.u64[1] = vorr_s8(vdup_n_s32(v41), 0x300000002);
          v45 = 0uLL;
          do
          {
            v46 = (v42 << 32) - 0x100000000;
            v47 = &v26[v42 + 1];
            v42 = v42 - 1;
            do
            {
              v48 = *v47++;
              ++v42;
              v46 += 0x100000000;
            }

            while (v48 < (v43 | v41));
            v49 = *(v27 + (v46 >> 30));
            v69 = v44;
            *(&v69 & 0xFFFFFFFFFFFFFFF3 | (4 * (v43 & 3))) -= v49;
            v50 = *(v25 + 4 * v49);
            v44 = v69;
            v70 = v45;
            *(&v70 & 0xFFFFFFFFFFFFFFF3 | (4 * (v43 & 3))) = v50;
            v45 = v70;
            ++v43;
          }

          while (v43 != 4);
          v51 = vcvtq_f32_s32(v44);
          *(v28 + 4 * v41) = vmlaq_f32(v70, v51, v51);
          v52 = v41 + 4;
          v53 = v41 + 7;
          v41 += 4;
        }

        while (v53 < v3);
        v54 = v52;
      }

      if (v54 < v3)
      {
        v55 = (v26 + 1);
        do
        {
          v56 = (v42 << 32) - 0x100000000;
          v57 = &v55[4 * v42];
          v42 = v42 - 1;
          do
          {
            v58 = *v57++;
            ++v42;
            v56 += 0x100000000;
          }

          while (v58 < v54);
          *(v28 + 4 * v54) = *(v25 + 4 * *(v27 + (v56 >> 30))) + ((v54 - *(v27 + (v56 >> 30))) * (v54 - *(v27 + (v56 >> 30))));
          ++v54;
        }

        while (v54 != v29);
      }

      v3 = *result;
      if (*result < 4u)
      {
        v59 = 0;
      }

      else
      {
        v59 = 0;
        do
        {
          v60 = 4 * v59;
          v61 = *(v2 + v60);
          v62 = vrsqrteq_f32(v61);
          v63 = vmulq_f32(v62, vrsqrtsq_f32(vmulq_f32(v61, v62), v62));
          *(v25 + v60) = vbicq_s8(vmulq_f32(v61, vmulq_f32(vrsqrtsq_f32(vmulq_f32(v61, v63), v63), v63)), vclezq_f32(v61));
          v64 = v59 + 7;
          v59 += 4;
          v3 = *result;
        }

        while (v64 < *result);
      }

      if (v59 < v3)
      {
        v65 = (v2 + 4 * v59);
        v66 = (a2 + 4 * v59 + 4 * v24);
        v67 = v3 - v59;
        do
        {
          v68 = *v65++;
          *v66++ = sqrtf(v68);
          --v67;
        }

        while (v67);
      }

      ++v23;
    }

    while (v23 < *(result + 4));
  }

  return result;
}

unsigned int *sub_295722D10(unsigned int *result, uint64_t a2)
{
  if (result[2])
  {
    v2 = result;
    v3 = *(result + 5);
    sub_295723354(a2, *v2, *(v2 + 4), result[1] + 4, *v2 + 4);
    v5 = *v2;
    v4 = v2[1];
    sub_295722C00();
  }

  return result;
}

void *sub_295723354(uint64_t a1, unsigned int a2, uint64_t a3, int a4, unsigned int a5)
{
  v5 = a5;
  v6 = 0;
  v7 = 4 * a2;
  v8 = a5 - 5;
  v9 = a5 - 1;
  v10 = a5 - 4;
  v11 = a5 - 2;
  v12 = 1;
  v13 = a5;
  v33 = a2;
  do
  {
    v14 = v12;
    v15 = a3 + 4 * v6 * v13;
    v16 = a1;
    v17 = v7;
    v18 = v8;
    v19 = v9;
    v20 = v10;
    v21 = v11;
    memcpy((v15 + 8), (a1 + 4 * (2 - v6) * a2), v7);
    v11 = v21;
    v10 = v20;
    v9 = v19;
    v8 = v18;
    v7 = v17;
    a1 = v16;
    a2 = v33;
    v12 = 0;
    *v15 = vrev64_s32(*(v15 + 12));
    *(v15 + 4 * v19) = *(v15 + 4 * v18);
    *(v15 + 4 * v21) = *(v15 + 4 * v20);
    v6 = 1;
  }

  while ((v14 & 1) != 0);
  v29 = v13;
  v30 = (a4 - 2);
  v22 = a3;
  if (v30 >= 3)
  {
    v23 = 0;
    v24 = 2 * v5;
    v25 = v30 - 2;
    v32 = v5;
    do
    {
      v26 = v22 + 4 * v24;
      memcpy((v26 + 8), (a1 + 4 * v23), v17);
      a1 = v16;
      *v26 = vrev64_s32(*(v26 + 12));
      *(v26 + 4 * v19) = *(v26 + 4 * v18);
      v22 = a3;
      *(v26 + 4 * v21) = *(v26 + 4 * v20);
      v5 = v32;
      v24 += v32;
      v23 += v33;
      --v25;
    }

    while (v25);
  }

  v27 = v22;
  memcpy((v22 + 4 * (a4 - 1) * v5), (v22 + 4 * (a4 - 5) * v5), 4 * v29);

  return memcpy((v27 + 4 * v30 * v5), (v27 + 4 * (a4 - 4) * v5), 4 * v29);
}

_DWORD *sub_295723520(_DWORD *result, float *a2, float *a3, float a4, float a5, float a6)
{
  if ((a5 - a4) <= 1.0)
  {
    sub_2957332EC();
  }

  v6 = result[1] * *result;
  if (v6)
  {
    v7 = &a2[v6];
    do
    {
      v8 = *a3;
      if (*a3 <= a4)
      {
        v10 = *a2;
        v12 = 0.0;
      }

      else
      {
        if (v8 >= a5)
        {
          v10 = *a2;
          v11 = 1.0 - *a2;
        }

        else
        {
          v9 = (1.0 / (a5 - a4)) * (v8 - a4);
          v10 = *a2;
          v11 = v9 * (1.0 - *a2);
        }

        v12 = v11 * a6;
      }

      *a2++ = v12 + v10;
      ++a3;
    }

    while (a2 < v7);
  }

  return result;
}

void *sub_2957235B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  result = sub_295723354(a3, *a1, v6, *(a1 + 4) + 4, *a1 + 4);
  v8 = (*a1 + 4) * (*(a1 + 4) + 4);
  v9 = v6 + 4 * v8;
  if (v8 >= 4)
  {
    __asm { FMOV            V0.4S, #-1.0 }

    v15 = v6;
    do
    {
      v16 = *v15++;
      *v6 = vbicq_s8(v16, vcgeq_f32(_Q0, v16));
      _CF = &v6[1].u64[1] + 4 >= v9;
      v6 = v15;
    }

    while (!_CF);
    v6 = v15;
  }

  for (; v6 < v9; v6 = (v6 + 4))
  {
    if ((*v6->i32 + 1.0) == 0.0)
    {
      v6->i32[0] = 0;
    }
  }

  if (*(a1 + 4))
  {
    v17 = 0;
    v18 = *a1;
    __asm
    {
      FMOV            V0.4S, #-1.0
      FMOV            V1.4S, #1.0
    }

    do
    {
      v21 = v18 * v17;
      if (v18 < 4)
      {
        v22 = 0;
      }

      else
      {
        v22 = 0;
        do
        {
          *(a2 + 4 * v21 + 4 * v22) = vbicq_s8(_Q1, vcgeq_f32(_Q0, *(a3 + 4 * v21 + 4 * v22)));
          v23 = v22 + 7;
          v22 += 4;
          v18 = *a1;
        }

        while (v23 < *a1);
      }

      if (v22 < v18)
      {
        v24 = 4 * v22 + 4 * v21;
        v25 = (a3 + v24);
        v26 = (a2 + v24);
        v27 = v18 - v22;
        do
        {
          v28 = *v25++;
          if ((v28 + 1.0) == 0.0)
          {
            v29 = 0.0;
          }

          else
          {
            v29 = 1.0;
          }

          *v26++ = v29;
          --v27;
        }

        while (v27);
      }

      ++v17;
    }

    while (v17 < *(a1 + 4));
  }

  return result;
}

uint64_t sub_29572542C()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_295725460(uint64_t a1, void *a2)
{
  v17 = a2;
  if (objc_msgSend_status(v17, v2, v3, v4, v5, v6) == 4)
  {
    objc_msgSend_GPUEndTime(v17, v7, v8, v9, v10, v11);
    objc_msgSend_GPUStartTime(v17, v12, v13, v14, v15, v16);
  }

  else
  {
    objc_msgSend_status(v17, v7, v8, v9, v10, v11);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }
}

uint64_t sub_2957256C8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return objc_msgSend_setTextures_withRange_(v7, a2, v6 + 88, 0, 9, a6);
}

uint64_t sub_2957256E8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return objc_msgSend_width(v6, a2, a3, a4, a5, a6);
}

uint64_t sub_295725704(double a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a1 * *(v7 + 160);
  v10 = *(v7 + 48);

  return objc_msgSend_mapSize(v10, a3, a4, a5, a6, a7);
}

uint64_t sub_295725724(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return objc_msgSend_setTextures_withRange_(v6, a2, v7 + 88, 0, 9, a6);
}

uint64_t sub_295725744(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return objc_msgSend_height(v6, a2, a3, a4, a5, a6);
}

void sub_295727BD0(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  v2 = *(a2 + 4);
  *(a1 + 4) = *a2;
  *(a1 + 6) = v2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 12);
  *(a1 + 12) = *(a2 + 16);
  *(a1 + 28) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 40);
  *(a1 + 40) = *(a2 + 44);
  *(a1 + 56) = *(a2 + 60);
  *(a1 + 60) = *(a2 + 64);
  *(a1 + 64) = 0;
  *(a1 + 72) = *(a2 + 65);
  *(a1 + 73) = *(a2 + 66);
  *(a1 + 74) = *(a2 + 67);
  *(a1 + 76) = *(a2 + 68);
  v3 = *(a2 + 72);
  *(a1 + 184) = 0u;
  *(a1 + 80) = v3;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = 1;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  operator new[]();
}

void *sub_295727F40(void *a1)
{
  v2 = a1[15];
  if (v2)
  {
    MEMORY[0x29C250E90](v2, 0x1000C8052888210);
    a1[15] = 0;
  }

  v3 = a1[16];
  if (v3)
  {
    MEMORY[0x29C250E90](v3, 0x1000C8052888210);
    a1[16] = 0;
  }

  v4 = a1[17];
  if (v4)
  {
    MEMORY[0x29C250E90](v4, 0x1000C8052888210);
    a1[17] = 0;
  }

  v5 = a1[18];
  if (v5)
  {
    MEMORY[0x29C250E90](v5, 0x1000C8052888210);
    a1[18] = 0;
  }

  v6 = a1[19];
  if (v6)
  {
    MEMORY[0x29C250E90](v6, 0x1000C8052888210);
    a1[19] = 0;
  }

  v7 = a1[20];
  if (v7)
  {
    MEMORY[0x29C250E90](v7, 0x1000C8052888210);
    a1[20] = 0;
  }

  v8 = a1[21];
  if (v8)
  {
    MEMORY[0x29C250E90](v8, 0x1000C8052888210);
    a1[21] = 0;
  }

  v9 = a1[11];
  if (v9)
  {
    v10 = sub_295722424(v9);
    MEMORY[0x29C250EB0](v10, 0x1090C406EB7B2EALL);
    a1[11] = 0;
  }

  v11 = a1[12];
  if (v11)
  {
    v12 = sub_29571B9E0(v11);
    MEMORY[0x29C250EB0](v12, 0x1080C40583CFBB1);
    a1[12] = 0;
  }

  if (a1[13])
  {
    v13 = sub_295717A8C();
    MEMORY[0x29C250EB0](v13, 0x1010C40198E3B44);
    a1[13] = 0;
  }

  v14 = a1[14];
  if (v14)
  {
    v15 = sub_295720368(v14);
    MEMORY[0x29C250EB0](v15, 0x1090C408851B61ELL);
    a1[14] = 0;
  }

  return a1;
}

uint64_t sub_295728094(uint64_t a1, const void *a2, int8x16_t *a3)
{
  if (*(a1 + 9) == 1)
  {
    v6 = MEMORY[0x29C250DB0]();
    v7 = sub_295722428(*(a1 + 88), a3);
    *(a1 + 192) += MEMORY[0x29C250DB0](v7) - v6;
  }

  v8 = MEMORY[0x29C250DB0]();
  v9 = sub_29572252C(*(a1 + 88), a3, *(a1 + 144));
  *(a1 + 200) += MEMORY[0x29C250DB0](v9) - v8;
  v10 = MEMORY[0x29C250DB0]();
  v11 = *(a1 + 160);
  sub_295722D10(*(a1 + 88), a2);
  v12 = sub_295723520(*(a1 + 88), *(a1 + 160), *(a1 + 144), 3.0, 10.0, 0.2);
  *(a1 + 216) += MEMORY[0x29C250DB0](v12) - v10;
  v13 = MEMORY[0x29C250DB0]();
  v14 = *(a1 + 28);
  v15 = *(a1 + 32);
  v16 = sub_2957235B8(*(a1 + 88), *(a1 + 136), a3);
  *(a1 + 224) += MEMORY[0x29C250DB0](v16) - v13;
  if (*(a1 + 36) == 1)
  {
    v17 = MEMORY[0x29C250DB0]();
    v18 = v17;
    if (*a1)
    {
      v19 = *a1;
      sub_29571B9E4(*(a1 + 96), a3, a2, *(a1 + 64), *(a1 + 136));
    }

    else
    {
      v20 = *(a1 + 6);
      if (v20 * *(a1 + 4))
      {
        v17 = memmove(*(a1 + 168), a3, 4 * v20 * *(a1 + 4));
      }
    }

    *(a1 + 232) += MEMORY[0x29C250DB0](v17) - v18;
  }

  v21 = MEMORY[0x29C250DB0]();
  v23 = *(a1 + 104);
  if (*(a1 + 72) == 1)
  {
    v22.i32[0] = -1.0;
    sub_295717A90(v23, a3, v22);
    if (*(a1 + 74) == 1)
    {
      sub_295717CAC(*(a1 + 104), *(a1 + 160), *(a1 + 76));
    }

    if (*(a1 + 73) == 1)
    {
      v24 = *(a1 + 104);
      memset(__p, 0, sizeof(__p));
      sub_2957283CC(__p, qword_2A18AABB8, qword_2A18AABC0, (qword_2A18AABC0 - qword_2A18AABB8) >> 2);
      v34 = word_2A18AABD0;
      sub_295717AD4(v24, __p);
    }
  }

  else
  {
    v25 = sub_295717CE0(v23);
    if (*(a1 + 6) * *(a1 + 4))
    {
      memset(v25, 255, 4 * *(a1 + 4) * *(a1 + 6));
    }
  }

  v26 = MEMORY[0x29C250DB0]();
  *(a1 + 208) += &v26[-v21];
  if (*(a1 + 176) == 1)
  {
    v26 = memcpy(*(a1 + 152), a3, 4 * *(a1 + 4) * *(a1 + 6));
  }

  v27 = MEMORY[0x29C250DB0](v26);
  v28 = *(a1 + 112);
  v29 = sub_295717CE0(*(a1 + 104));
  sub_29572036C(v28, a3, a3, v29, *(a1 + 160), *(a1 + 144), 0.4, *(a1 + 20));
  result = MEMORY[0x29C250DB0]();
  *(a1 + 264) += result - v27;
  if (*(a1 + 36) == 1)
  {
    v31 = MEMORY[0x29C250DB0]();
    v32 = sub_29571BE0C(*(a1 + 96), a2, a3, *(a1 + 136));
    result = MEMORY[0x29C250DB0](v32);
    *(a1 + 272) += result - v31;
  }

  ++*a1;
  return result;
}

void sub_2957283B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2957283CC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_295717D5C(result, a4);
  }

  return result;
}

void sub_29572842C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_295728448()
{
  LODWORD(v5) = -1;
  *&v0 = -1;
  *(&v0 + 1) = -1;
  v3 = v0;
  v4 = v0;
  qword_2A18AAAA8 = 0;
  unk_2A18AAAB0 = 0;
  qword_2A18AAAA0 = 0;
  sub_295717CE8(&qword_2A18AAAA0, &v3, &v5 + 4, 9uLL);
  word_2A18AAAB8 = 771;
  v3 = xmmword_295743070;
  v4 = unk_295743080;
  LODWORD(v5) = 0;
  qword_2A18AAC40 = 0;
  unk_2A18AAC48 = 0;
  qword_2A18AAC38 = 0;
  sub_295717CE8(&qword_2A18AAC38, &v3, &v5 + 4, 9uLL);
  word_2A18AAC50 = 771;
  LODWORD(v9[0]) = -1;
  *&v1 = -1;
  *(&v1 + 1) = -1;
  v7 = v1;
  v8 = v1;
  v5 = v1;
  v6 = v1;
  v3 = v1;
  v4 = v1;
  qword_2A18AAA28 = 0;
  unk_2A18AAA30 = 0;
  qword_2A18AAA20 = 0;
  sub_295717CE8(&qword_2A18AAA20, &v3, v9 + 4, 0x19uLL);
  word_2A18AAA38 = 1285;
  v5 = xmmword_2957430B4;
  v6 = unk_2957430C4;
  v7 = xmmword_2957430D4;
  v8 = unk_2957430E4;
  v3 = xmmword_295743094;
  v4 = *algn_2957430A4;
  LODWORD(v9[0]) = 0;
  qword_2A18AABC0 = 0;
  unk_2A18AABC8 = 0;
  qword_2A18AABB8 = 0;
  sub_295717CE8(&qword_2A18AABB8, &v3, v9 + 4, 0x19uLL);
  word_2A18AABD0 = 1285;
  v9[2] = xmmword_295743178;
  v9[3] = unk_295743188;
  v9[4] = xmmword_295743198;
  v9[5] = unk_2957431A8;
  v7 = xmmword_295743138;
  v8 = unk_295743148;
  memset(v9, 255, 32);
  v3 = xmmword_2957430F8;
  v4 = unk_295743108;
  v5 = xmmword_295743118;
  v6 = unk_295743128;
  v10 = 0;
  qword_2A18AAB38 = 0;
  unk_2A18AAB40 = 0;
  qword_2A18AAB48 = 0;
  result = sub_295717CE8(&qword_2A18AAB38, &v3, &v11, 0x31uLL);
  word_2A18AAB50 = 1799;
  return result;
}

unint64_t sub_2957285EC(uint64_t a1, int a2)
{
  result = *(a1 + a2 - 1);
  v4 = (a2 - 2);
  if (a2 >= 2)
  {
    do
    {
      result = *(a1 + v4--) | (result << 8);
    }

    while (v4 != -1);
  }

  return result;
}

uint64_t sub_295728618(uint64_t a1, unsigned int a2, int a3)
{
  v5[1] = 0;
  v5[2] = 0;
  v5[0] = a1;
  v3 = *(v5 + a2) + a3;
  if (v3 > 0xFF)
  {
    return -1;
  }

  *(v5 + a2) = v3;
  return v5[0];
}

uint64_t sub_295728CD8()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_295728D0C(uint64_t a1, void *a2)
{
  v17 = a2;
  if (objc_msgSend_status(v17, v2, v3, v4, v5, v6) == 4)
  {
    objc_msgSend_GPUEndTime(v17, v7, v8, v9, v10, v11);
    objc_msgSend_GPUStartTime(v17, v12, v13, v14, v15, v16);
  }

  else
  {
    objc_msgSend_status(v17, v7, v8, v9, v10, v11);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }
}

uint64_t sub_295729070()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_2957290A4(uint64_t a1, void *a2)
{
  v17 = a2;
  if (objc_msgSend_status(v17, v2, v3, v4, v5, v6) == 4)
  {
    objc_msgSend_GPUEndTime(v17, v7, v8, v9, v10, v11);
    objc_msgSend_GPUStartTime(v17, v12, v13, v14, v15, v16);
  }

  else
  {
    objc_msgSend_status(v17, v7, v8, v9, v10, v11);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }
}

uint64_t sub_29572956C()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_2957295A0(uint64_t a1, void *a2)
{
  v17 = a2;
  if (objc_msgSend_status(v17, v2, v3, v4, v5, v6) == 4)
  {
    objc_msgSend_GPUEndTime(v17, v7, v8, v9, v10, v11);
    objc_msgSend_GPUStartTime(v17, v12, v13, v14, v15, v16);
  }

  else
  {
    objc_msgSend_status(v17, v7, v8, v9, v10, v11);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }
}

uint64_t sub_295729A98()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_295729ACC(uint64_t a1, void *a2)
{
  v17 = a2;
  if (objc_msgSend_status(v17, v2, v3, v4, v5, v6) == 4)
  {
    objc_msgSend_GPUEndTime(v17, v7, v8, v9, v10, v11);
    objc_msgSend_GPUStartTime(v17, v12, v13, v14, v15, v16);
  }

  else
  {
    objc_msgSend_status(v17, v7, v8, v9, v10, v11);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }
}

uint64_t sub_295729DE0()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_295729E14(uint64_t a1, void *a2)
{
  v17 = a2;
  if (objc_msgSend_status(v17, v2, v3, v4, v5, v6) == 4)
  {
    objc_msgSend_GPUEndTime(v17, v7, v8, v9, v10, v11);
    objc_msgSend_GPUStartTime(v17, v12, v13, v14, v15, v16);
  }

  else
  {
    objc_msgSend_status(v17, v7, v8, v9, v10, v11);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }
}

uint64_t sub_29572A29C()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_29572A2D0(uint64_t a1, void *a2)
{
  v17 = a2;
  if (objc_msgSend_status(v17, v2, v3, v4, v5, v6) == 4)
  {
    objc_msgSend_GPUEndTime(v17, v7, v8, v9, v10, v11);
    objc_msgSend_GPUStartTime(v17, v12, v13, v14, v15, v16);
  }

  else
  {
    objc_msgSend_status(v17, v7, v8, v9, v10, v11);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }
}

uint64_t sub_29572A958()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_29572A98C(uint64_t a1, void *a2)
{
  v17 = a2;
  if (objc_msgSend_status(v17, v2, v3, v4, v5, v6) == 4)
  {
    objc_msgSend_GPUEndTime(v17, v7, v8, v9, v10, v11);
    objc_msgSend_GPUStartTime(v17, v12, v13, v14, v15, v16);
  }

  else
  {
    objc_msgSend_status(v17, v7, v8, v9, v10, v11);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }
}

void *sub_29572BD38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = sub_295718060(a1, a2, a3, a4, 5, a5);
  *result = &unk_2A1C98610;
  return result;
}

void sub_29572BD78(uint64_t a1)
{
  sub_2957180D8(a1);

  JUMPOUT(0x29C250EB0);
}

void sub_29572BDB0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8)
{
  if ((a6 & 3) != 0)
  {
    sub_29573E050();
  }

  if (a7 < a8)
  {
    v8 = 0;
    v9 = a6 >> 2;
    v10 = (a4 - 5) / 6;
    if (v10 <= 1)
    {
      v10 = 1;
    }

    v93 = v10;
    v11 = v9 * (3 * a7 + 2);
    v12 = a3 + 4 * v11 + 12;
    v13 = 12 * v9;
    v14 = a2 + 4 * v11 + 20;
    v15 = v9 + v9 * 3 * a7;
    v16 = a3 + 4 * v15 + 12;
    v17 = a2 + 4 * v15 + 20;
    v18 = 12 * v9 * a7;
    v19 = v18 + a3 + 12;
    v20 = v18 + a2 + 20;
    v92 = 12 * v9;
    v94 = v9;
    do
    {
      v21 = 3 * a7 * v9;
      v22 = (a2 + 4 * v21);
      v23 = (a3 + 4 * v21);
      v24 = v9 + v21;
      v25 = (a2 + 4 * v24);
      v26 = (a3 + 4 * v24);
      v27 = (3 * a7 + 2) * v9;
      v28 = (a2 + 4 * v27);
      v29 = (a3 + 4 * v27);
      v30 = *v22;
      v31 = v22[1];
      v32 = v22[2];
      v33 = v22[3];
      v34 = v22[4];
      v35 = *v25;
      v36 = v25[1];
      v37 = v25[2];
      v38 = v25[3];
      v39 = v25[4];
      v40 = *v28;
      v41 = v28[1];
      v42 = v28[2];
      v43 = v28[3];
      v44 = v28[4];
      v45 = ((*v22 + v31) + v32) + 0.0;
      *v23 = v45;
      v46 = ((v35 + v36) + v37) + 0.0;
      *v26 = v46;
      v47 = ((v40 + v41) + v42) + 0.0;
      *v29 = v47;
      v48 = v33 + v45;
      v23[1] = v48;
      v49 = v38 + v46;
      v26[1] = v49;
      v50 = v43 + v47;
      v29[1] = v50;
      v51 = v34 + v48;
      v23[2] = v51;
      v52 = v39 + v49;
      v26[2] = v52;
      v53 = v44 + v50;
      v29[2] = v53;
      if (a4 - 5 >= 6)
      {
        v60 = v8;
        v61 = v93;
        do
        {
          v62 = (v12 + v60);
          v63 = (v16 + v60);
          v64 = (v19 + v60);
          v65 = *(v20 + v60);
          v66 = *(v17 + v60);
          v67 = *(v14 + v60);
          v68 = (v51 - v30) + v65;
          v69 = (v52 - v35) + v66;
          v70 = (v53 - v40) + v67;
          *v64 = v68;
          *v63 = v69;
          *v62 = v70;
          v30 = *(v20 + v60 + 4);
          v35 = *(v17 + v60 + 4);
          v40 = *(v14 + v60 + 4);
          v71 = (v68 - v31) + v30;
          v72 = (v69 - v36) + v35;
          v73 = (v70 - v41) + v40;
          v64[1] = v71;
          v63[1] = v72;
          v62[1] = v73;
          v31 = *(v20 + v60 + 8);
          v36 = *(v17 + v60 + 8);
          v41 = *(v14 + v60 + 8);
          v74 = (v71 - v32) + v31;
          v75 = (v72 - v37) + v36;
          v76 = (v73 - v42) + v41;
          v64[2] = v74;
          v63[2] = v75;
          v62[2] = v76;
          v32 = *(v20 + v60 + 12);
          v37 = *(v17 + v60 + 12);
          v42 = *(v14 + v60 + 12);
          v77 = (v74 - v33) + v32;
          v78 = (v75 - v38) + v37;
          v79 = (v76 - v43) + v42;
          v64[3] = v77;
          v63[3] = v78;
          v62[3] = v79;
          v33 = *(v20 + v60 + 16);
          v38 = *(v17 + v60 + 16);
          v43 = *(v14 + v60 + 16);
          v80 = (v77 - v34) + v33;
          v81 = (v78 - v39) + v38;
          v82 = (v79 - v44) + v43;
          v64[4] = v80;
          v63[4] = v81;
          v62[4] = v82;
          v34 = *(v20 + v60 + 20);
          v39 = *(v17 + v60 + 20);
          v44 = *(v14 + v60 + 20);
          v51 = (v80 - v65) + v34;
          v52 = (v81 - v66) + v39;
          v53 = (v82 - v67) + v44;
          v64[5] = v51;
          v63[5] = v52;
          v62[5] = v53;
          v60 += 24;
          --v61;
        }

        while (v61);
        v59 = (v12 + v60);
        v56 = (v14 + v60);
        v58 = (v16 + v60);
        v55 = (v17 + v60);
        v57 = (v19 + v60);
        v54 = (v20 + v60);
      }

      else
      {
        v54 = v22 + 5;
        v55 = v25 + 5;
        v56 = v28 + 5;
        v57 = v23 + 3;
        v58 = v26 + 3;
        v59 = v29 + 3;
      }

      if (6 * ((a4 - 5) / 6) + 3 >= a4 - 2)
      {
        v87 = v54 - 5;
        v86 = v55 - 5;
        v85 = v56 - 5;
      }

      else
      {
        v83 = 0x3FFFFFFFFFFFFFFBLL;
        v84 = (a4 - 5) % 6;
        do
        {
          v51 = (v51 - v54[v83]) + v54[v83 + 5];
          v52 = (v52 - v55[v83]) + v55[v83 + 5];
          v53 = (v53 - v56[v83]) + v56[v83 + 5];
          v57[v83 + 5] = v51;
          v58[v83 + 5] = v52;
          v59[v83 + 5] = v53;
          ++v83;
          --v84;
        }

        while (v84);
        v85 = &v56[v83];
        v86 = &v55[v83];
        v87 = &v54[v83];
        v59 = (v59 + v83 * 4 + 20);
        v58 = (v58 + v83 * 4 + 20);
        v57 = (v57 + v83 * 4 + 20);
        v9 = v94;
        v13 = v92;
      }

      v88 = a4 - 2;
      if (a4 >= 2)
      {
        do
        {
          v89 = *v87++;
          v51 = v51 - v89;
          v90 = *v86++;
          v52 = v52 - v90;
          v91 = *v85++;
          v53 = v53 - v91;
          *v57++ = v51;
          *v58++ = v52;
          *v59++ = v53;
          ++v88;
        }

        while (v88 < a4);
      }

      ++a7;
      v8 += v13;
    }

    while (a7 != a8);
  }
}

uint64_t sub_29572C214(void *a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v7 = a1;
  v8 = v7;
  if (!a2)
  {
    goto LABEL_68;
  }

  *a2 = a4;
  *(a2 + 8) = a3;
  if (!sub_295717820(v7))
  {
    a2 = 0;
LABEL_68:
    v13 = 0;
    goto LABEL_65;
  }

  v13 = objc_msgSend_objectForKeyedSubscript_(v8, v9, @"DepthProcessorV2", v10, v11, v12);
  if (!sub_295717820(v13))
  {
    a2 = 0;
    goto LABEL_65;
  }

  v18 = objc_msgSend_objectForKeyedSubscript_(v13, v14, @"SuperPixelParameters", v15, v16, v17);
  if (!sub_295717820(v18))
  {
    v23 = 0;
LABEL_57:
    v36 = 0;
LABEL_58:
    v42 = 0;
LABEL_59:
    v53 = 0;
LABEL_60:
    v64 = 0;
LABEL_61:

    a2 = 0;
    v74 = v18;
    goto LABEL_62;
  }

  v23 = objc_msgSend_objectForKeyedSubscript_(v18, v19, @"BrightnessCorrection", v20, v21, v22);
  if (!sub_295717820(v23))
  {
    goto LABEL_57;
  }

  sub_295717878(v23, "h", (a2 + 20));
  if (!v24)
  {
    goto LABEL_57;
  }

  sub_295717878(v23, "k", (a2 + 24));
  if (!v25)
  {
    goto LABEL_57;
  }

  sub_295717878(v23, "thres", (a2 + 28));
  if (!v26)
  {
    goto LABEL_57;
  }

  if (!v23)
  {
    goto LABEL_57;
  }

  v27 = MEMORY[0x29EDBA0F8];
  v23 = v23;
  objc_msgSend_stringWithUTF8String_(v27, v28, "doBrightnessCorrection", v29, v30, v31);
  LODWORD(v27) = FigCFDictionaryGetBooleanIfPresent();

  if (!v27)
  {
    goto LABEL_57;
  }

  *(a2 + 16) = 0;
  v36 = objc_msgSend_objectForKeyedSubscript_(v18, v32, @"SPGeneration", v33, v34, v35);
  if (!sub_295717820(v36))
  {
    goto LABEL_58;
  }

  sub_295717878(v36, "slicSpatialBias", (a2 + 120));
  if (!v37 || !sub_295717910(v36, "slicSuperPixelSize", (a2 + 112)) || !sub_295717910(v36, "slicMaxIters", (a2 + 116)))
  {
    goto LABEL_58;
  }

  v42 = objc_msgSend_objectForKeyedSubscript_(v18, v38, @"SPSimilarity", v39, v40, v41);
  if (!sub_295717820(v42))
  {
    goto LABEL_59;
  }

  sub_295717878(v42, "colorSigma", (a2 + 32));
  if (!v43)
  {
    goto LABEL_59;
  }

  sub_295717878(v42, "minInstanceSegmentation", (a2 + 36));
  if (!v44)
  {
    goto LABEL_59;
  }

  sub_295717878(v42, "maxInstanceSegmentation", (a2 + 40));
  if (!v45)
  {
    goto LABEL_59;
  }

  sub_295717878(v42, "minInstanceLayerConfidence", (a2 + 44));
  if (!v46)
  {
    goto LABEL_59;
  }

  if (!sub_295717910(v42, "maxNumberOfInstanceLayers", (a2 + 48)))
  {
    goto LABEL_59;
  }

  *&v51 = sub_295717878(v42, "minPersonSegmentation", (a2 + 68));
  if (!v52)
  {
    goto LABEL_59;
  }

  v53 = objc_msgSend_objectForKeyedSubscript_(v18, v47, @"SPSolver", v48, v49, v50, v51);
  if (!sub_295717820(v53))
  {
    goto LABEL_60;
  }

  sub_295717878(v53, "initialLocalWeight", (a2 + 72));
  if (!v54)
  {
    goto LABEL_60;
  }

  sub_295717878(v53, "maxLocalWeightThres", (a2 + 76));
  if (!v55)
  {
    goto LABEL_60;
  }

  sub_295717878(v53, "fractionValidThreshold", (a2 + 80));
  if (!v56)
  {
    goto LABEL_60;
  }

  sub_295717878(v53, "lambda", (a2 + 84));
  if (!v57)
  {
    goto LABEL_60;
  }

  *&v62 = sub_295717878(v53, "minDataTermWeight", (a2 + 88));
  if (!v63)
  {
    goto LABEL_60;
  }

  v64 = objc_msgSend_objectForKeyedSubscript_(v18, v58, @"SPConfidence", v59, v60, v61, v62);
  if (!sub_295717820(v64))
  {
    goto LABEL_61;
  }

  sub_295717878(v64, "sigmaColor", (a2 + 92));
  if (!v65)
  {
    goto LABEL_61;
  }

  sub_295717878(v64, "sigmaDepth", (a2 + 96));
  if (!v66)
  {
    goto LABEL_61;
  }

  sub_295717878(v64, "sigamPixelColorDiff", (a2 + 100));
  if (!v67)
  {
    goto LABEL_61;
  }

  sub_295717878(v64, "minConfVal", (a2 + 104));
  if (!v68)
  {
    goto LABEL_61;
  }

  sub_295717878(v64, "minBaseConfVal", (a2 + 108));
  if ((v69 & 1) == 0)
  {
    goto LABEL_61;
  }

  v74 = objc_msgSend_objectForKeyedSubscript_(v13, v70, @"SetFarDistanceParameters", v71, v72, v73);
  if (sub_295717820(v74))
  {
    sub_295717878(v74, "distanceTransformMaxDistance", (a2 + 124));
    if (v75)
    {
      sub_295717878(v74, "setFarDistanceFurthestDisparity", (a2 + 128));
      if (v76)
      {
        sub_295717878(v74, "setFarDistanceConfidence", (a2 + 132));
        if (v77)
        {
          sub_295717878(v74, "confidenceSeedValue", (a2 + 140));
          if (v78)
          {
            if (sub_295717910(v74, "useBestInstanceForPersonSegmentation", (a2 + 136)))
            {

              v23 = objc_msgSend_objectForKeyedSubscript_(v13, v79, @"ConfidenceFalloffParameters", v80, v81, v82);
              if (!sub_295717820(v23) || (sub_295717878(v23, "confidenceFallOffMaxDist", (a2 + 144)), !v83) || (sub_295717878(v23, "confidenceFallOffSigma", (a2 + 148)), !v84))
              {
                a2 = 0;
                v96 = v23;
LABEL_63:
                v95 = v74;

                v74 = v96;
                goto LABEL_64;
              }

              v36 = objc_msgSend_objectForKeyedSubscript_(v13, v85, @"FBSParameters", v86, v87, v88);
              if (sub_295717820(v36) && sub_295717910(v36, "bilateralSolverSigmaSpace", (a2 + 152)) && sub_295717910(v36, "bilateralSolverSigmaLumaRange", (a2 + 156)) && sub_295717910(v36, "bilateralSolverSigmaChromaRange", (a2 + 160)) && (sub_295717878(v36, "bilateralSolverLambda", (a2 + 168)), v89) && sub_295717910(v36, "bilateralSolverMaxHashTableSize", (a2 + 164)) && sub_295717910(v36, "bilateralSolverPCFGMaxIters", (a2 + 172)))
              {

                v42 = objc_msgSend_objectForKeyedSubscript_(v13, v90, @"SceneClassification", v91, v92, v93);
                a2 = sub_295717820(v42) && (sub_295717878(v42, "disparityQualityThreshold", (a2 + 176)), (v94 & 1) != 0);
              }

              else
              {
                a2 = 0;
                v42 = v36;
              }

LABEL_62:
              v96 = v23;

              v23 = v36;
              goto LABEL_63;
            }
          }
        }
      }
    }
  }

  a2 = 0;
  v95 = v74;
LABEL_64:

LABEL_65:
  return a2;
}

uint64_t sub_29572D4EC(uint64_t a1, uint64_t a2, char *a3)
{
  *(a1 + 56) = a2;
  if (*MEMORY[0x29EDB9270] == 1)
  {
    sub_295719610();
    a2 = *(a1 + 56);
    if (!a2)
    {
      v6 = 1;
      goto LABEL_6;
    }
  }

  v5 = sub_29571AB7C(a2);
  v6 = 0;
  result = 0;
  if (v5)
  {
LABEL_6:
    *a3 = v6;
    return 1;
  }

  return result;
}

void sub_29572D568(void *a1, void *a2, int *a3)
{
  if (*a1)
  {
    v3 = 0;
    *a2 = *a1;
  }

  else
  {
    v3 = 3;
  }

  *a3 = v3;
  v4 = a1[1];
  if (v4)
  {
    sub_295719570(v4);
  }
}

uint64_t sub_29572DC64(void *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();

  sub_29571B20C();
  return FigSignalErrorAtGM();
}

uint64_t sub_29572DD10(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  sub_29571B1BC();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29572DDBC(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  sub_29571B1BC();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29572DE68(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  sub_29571B1BC();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29572DF14(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  sub_29571B1BC();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29572E0AC()
{
  fig_log_get_emitter();
  sub_29571C7B0();
  return FigDebugAssert3();
}

uint64_t sub_29572E128()
{
  fig_log_get_emitter();
  sub_29571C7B0();
  return FigDebugAssert3();
}

uint64_t sub_29572E1A4(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29572E250(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29572E2FC(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29572E3A8()
{
  fig_log_get_emitter();
  sub_29571C7B0();
  return FigDebugAssert3();
}

uint64_t sub_29572E428(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29572E4D8(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29572E588()
{
  sub_29571C7C4();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571C7C4();

  return FigSignalErrorAtGM();
}

uint64_t sub_29572E638()
{
  sub_29571C7C4();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571C7C4();

  return FigSignalErrorAtGM();
}

uint64_t sub_29572E6E8()
{
  sub_29571C7C4();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571C7C4();

  return FigSignalErrorAtGM();
}

uint64_t sub_29572E798()
{
  sub_29571C7C4();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571C7C4();

  return FigSignalErrorAtGM();
}

uint64_t sub_29572E848()
{
  sub_29571C7C4();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571C7C4();

  return FigSignalErrorAtGM();
}

uint64_t sub_29572E8F8()
{
  sub_29571C7C4();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571C7C4();

  return FigSignalErrorAtGM();
}

uint64_t sub_29572E9A8()
{
  sub_29571C7C4();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571C7C4();

  return FigSignalErrorAtGM();
}

uint64_t sub_29572EA58()
{
  sub_29571C7C4();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571C7C4();

  return FigSignalErrorAtGM();
}

uint64_t sub_29572EB08()
{
  fig_log_get_emitter();
  sub_29571EC44();
  return FigDebugAssert3();
}

uint64_t sub_29572EB7C()
{
  fig_log_get_emitter();
  sub_29571EC44();
  return FigDebugAssert3();
}

uint64_t sub_29572EBF0()
{
  fig_log_get_emitter();
  sub_29571EC44();
  return FigDebugAssert3();
}

uint64_t sub_29572EC64()
{
  fig_log_get_emitter();
  sub_29571EC44();
  return FigDebugAssert3();
}

uint64_t sub_29572ECD8()
{
  fig_log_get_emitter();
  sub_29571EC44();
  return FigDebugAssert3();
}

uint64_t sub_29572ED4C()
{
  fig_log_get_emitter();
  sub_29571EC44();
  return FigDebugAssert3();
}

uint64_t sub_29572EDC0()
{
  fig_log_get_emitter();
  sub_29571EC44();
  return FigDebugAssert3();
}

uint64_t sub_29572EE34()
{
  fig_log_get_emitter();
  sub_29571EC44();
  return FigDebugAssert3();
}

uint64_t sub_29572EEA8()
{
  fig_log_get_emitter();
  sub_29571EC44();
  return FigDebugAssert3();
}

uint64_t sub_29572EF1C()
{
  fig_log_get_emitter();
  sub_29571EC44();
  return FigDebugAssert3();
}

uint64_t sub_29572EF90(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29572F03C(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29572F0E8(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29572F194(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29572F240(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29572F2EC(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29572F398(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29572F444(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29572F4F0(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sub_29572F59C(uint64_t a1, uint64_t a2)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  sub_29571B1BC();
  v2 = FigSignalErrorAtGM();
  v10 = sub_29571ECAC(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, v13, a2);
}

uint64_t sub_29572F65C(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  sub_29571B1BC();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29572F708(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  sub_29571B1BC();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29572F7B4(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  sub_29571B1BC();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29572F860(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  sub_29571B1BC();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29572F90C(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29572F9B8(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29572FA64(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29572FB10(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29572FBBC(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sub_29572FC68(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  sub_29571ECCC();
  sub_29571ECB8();
  FigDebugAssert3();
  sub_29571ECCC();
  sub_29571B1BC();
  *a4 = FigSignalErrorAtGM();
}

void sub_29572FD28(void *a1, void *a2, _DWORD *a3)
{
  sub_29571ECCC();
  FigDebugAssert3();
  sub_29571ECCC();
  *a3 = FigSignalErrorAtGM();
}

void sub_29572FDF8(uint64_t a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  sub_29571B1BC();
  v1 = FigSignalErrorAtGM();
  v9 = sub_29571ECAC(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, a1);
}

uint64_t sub_29572FEB8(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  sub_29571B1BC();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29572FF64(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295730010(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2957300BC(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295730168(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  sub_29571B1BC();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295730214(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  sub_29571B1BC();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2957302C0(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  sub_29571B1BC();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29573036C(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  sub_29571B1BC();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295730418(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  sub_29571B1BC();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2957304C4(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  sub_29571B1BC();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295730570(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  sub_29571B1BC();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29573061C(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2957306C8(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295730774(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295730820(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2957308CC(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295730978(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sub_295730A24(uint64_t a1, uint64_t a2)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  sub_29571B1BC();
  v2 = FigSignalErrorAtGM();
  v10 = sub_29571ECAC(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, v13, a2);
}

uint64_t sub_295730AE4(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  sub_29571B1BC();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295730B90(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295730C3C(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295730CE8(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295730D94(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295730E40(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295730EEC(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295730F98(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295731044(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2957310F0(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29573119C(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295731248(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2957312F4(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2957313A0(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29573144C(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2957314F8(uint64_t a1, _DWORD *a2)
{
  sub_29571ECE4();
  FigDebugAssert3();
  sub_29571ECE4();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

void sub_2957315BC(uint64_t a1, void *a2, _DWORD *a3)
{
  sub_29571ECE4();
  sub_29571ECB8();
  FigDebugAssert3();
  sub_29571ECE4();
  sub_29571B1BC();
  *a3 = FigSignalErrorAtGM();
}

void sub_295731678(uint64_t a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  sub_29571B1BC();
  v1 = FigSignalErrorAtGM();
  v9 = sub_29571ECAC(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, a1);
}

uint64_t sub_295731738(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  sub_29571B1BC();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2957317E4(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295731890(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29573193C(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2957319E8(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295731A94(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295731B40(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295731BEC(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295731C98(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295731D44(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295731DF0(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295731E9C(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sub_295731F48()
{
  sub_29571EC84();
  sub_29571EC5C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_295731FA4()
{
  sub_29571EC84();
  sub_29571EC5C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_2957320C4()
{
  sub_29571EC94();
  sub_29571EC68();
  sub_29571EC5C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void sub_295732128()
{
  sub_29571EC94();
  sub_29571EC68();
  sub_29571EC5C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void sub_295732278()
{
  sub_29571EC84();
  sub_29571EC5C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

uint64_t sub_295732514(void *a1)
{
  fig_log_get_emitter();
  FigDebugAssert3();

  fig_log_get_emitter();
  return FigSignalErrorAtGM();
}

void sub_2957325DC(void *a1)
{
  fig_log_get_emitter();
  FigDebugAssert3();
}

uint64_t sub_29573267C(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  sub_29571B1BC();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295732728(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  sub_29571B1BC();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2957327D4(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  sub_29571B1BC();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295732880(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  sub_29571B1BC();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29573292C(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2957329D8(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295732A84(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  sub_29571B1BC();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295732B30(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  sub_29571B1BC();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295732BDC(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  sub_29571B1BC();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295732C88(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  sub_29571B1BC();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295732D34(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  sub_29571B1BC();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295732DE0(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  sub_29571B1BC();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295732E8C(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295732F38(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  sub_29571B1BC();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295732FE4(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  sub_29571B1BC();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295733090(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  sub_29571B1BC();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29573313C(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  sub_29571B1BC();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2957331E8(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  sub_29571B1BC();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295733318()
{
  sub_295724F34();
  sub_295724F54();
  FigDebugAssert3();
  sub_295724F60();
  return FigSignalErrorAtGM();
}

uint64_t sub_295733398()
{
  sub_295724F34();
  sub_295724F54();
  FigDebugAssert3();
  sub_295724F60();
  return FigSignalErrorAtGM();
}

uint64_t sub_295733418()
{
  sub_295724F34();
  sub_295724F54();
  FigDebugAssert3();
  sub_295724F60();
  return FigSignalErrorAtGM();
}

uint64_t sub_295733498()
{
  sub_295724F34();
  sub_295724F54();
  FigDebugAssert3();
  sub_295724F60();
  return FigSignalErrorAtGM();
}

uint64_t sub_295733518()
{
  sub_295724F34();
  sub_295724F54();
  FigDebugAssert3();
  sub_295724F60();
  return FigSignalErrorAtGM();
}

uint64_t sub_295733598()
{
  sub_295724F34();
  sub_295724F54();
  FigDebugAssert3();
  sub_295724F60();
  return FigSignalErrorAtGM();
}

uint64_t sub_295733618()
{
  sub_295724F34();
  sub_295724F54();
  FigDebugAssert3();
  sub_295724F60();
  return FigSignalErrorAtGM();
}

uint64_t sub_295733698()
{
  sub_295724F34();
  sub_295724F54();
  FigDebugAssert3();
  sub_295724F60();
  return FigSignalErrorAtGM();
}

uint64_t sub_295733718()
{
  sub_295724F34();
  sub_295724F54();
  FigDebugAssert3();
  sub_295724F60();
  return FigSignalErrorAtGM();
}

uint64_t sub_295733798()
{
  sub_295724F34();
  sub_295724F54();
  FigDebugAssert3();
  sub_295724F60();
  return FigSignalErrorAtGM();
}

uint64_t sub_295733818(_DWORD *a1)
{
  sub_295724F44();
  sub_295724F54();
  FigDebugAssert3();
  sub_295724F60();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2957338A0(_DWORD *a1)
{
  sub_295724F44();
  sub_295724F54();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29573392C(_DWORD *a1)
{
  sub_295724F44();
  sub_295724F54();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2957339B8(_DWORD *a1)
{
  sub_295724F44();
  sub_295724F54();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295733A44()
{
  sub_295724F34();
  sub_295724F54();
  FigDebugAssert3();
  sub_295724F60();

  return FigSignalErrorAtGM();
}

uint64_t sub_295733AD0()
{
  sub_295724F34();
  sub_295724F54();
  FigDebugAssert3();
  sub_295724F60();

  return FigSignalErrorAtGM();
}

uint64_t sub_295733B5C()
{
  sub_295724F34();
  sub_295724F54();
  FigDebugAssert3();
  sub_295724F60();

  return FigSignalErrorAtGM();
}

uint64_t sub_295733BE8()
{
  sub_295724F34();
  sub_295724F54();
  FigDebugAssert3();
  sub_295724F60();

  return FigSignalErrorAtGM();
}

uint64_t sub_295733C74()
{
  sub_295724F34();
  sub_295724F54();
  FigDebugAssert3();
  sub_295724F60();

  return FigSignalErrorAtGM();
}

uint64_t sub_295733D00()
{
  sub_295724F34();
  sub_295724F54();
  FigDebugAssert3();
  sub_295724F60();

  return FigSignalErrorAtGM();
}

uint64_t sub_295733D8C()
{
  sub_295724F34();
  sub_295724F54();
  FigDebugAssert3();
  sub_295724F60();

  return FigSignalErrorAtGM();
}

uint64_t sub_295733E18()
{
  sub_295724F34();
  sub_295724F54();
  FigDebugAssert3();
  sub_295724F60();

  return FigSignalErrorAtGM();
}

uint64_t sub_295733EA4()
{
  sub_295724F34();
  sub_295724F54();
  FigDebugAssert3();
  sub_295724F60();

  return FigSignalErrorAtGM();
}

uint64_t sub_295733F30()
{
  sub_295724F34();
  sub_295724F54();
  FigDebugAssert3();
  sub_295724F60();

  return FigSignalErrorAtGM();
}

uint64_t sub_295733FBC()
{
  sub_295724F34();
  sub_295724F54();
  FigDebugAssert3();
  sub_295724F60();

  return FigSignalErrorAtGM();
}

uint64_t sub_295734048()
{
  sub_295724F34();
  sub_295724F54();
  FigDebugAssert3();
  sub_295724F60();

  return FigSignalErrorAtGM();
}

uint64_t sub_2957340D4()
{
  sub_295724F34();
  sub_295724F54();
  FigDebugAssert3();
  sub_295724F60();

  return FigSignalErrorAtGM();
}

uint64_t sub_295734160()
{
  sub_295724F34();
  sub_295724F54();
  FigDebugAssert3();
  sub_295724F60();

  return FigSignalErrorAtGM();
}

uint64_t sub_2957341EC()
{
  sub_295724F34();
  sub_295724F54();
  FigDebugAssert3();
  sub_295724F60();

  return FigSignalErrorAtGM();
}

uint64_t sub_295734278()
{
  sub_295724F34();
  sub_295724F54();
  FigDebugAssert3();
  sub_295724F60();

  return FigSignalErrorAtGM();
}

uint64_t sub_295734304()
{
  sub_295724F34();
  sub_295724F54();
  FigDebugAssert3();
  sub_295724F60();

  return FigSignalErrorAtGM();
}

uint64_t sub_295734390()
{
  sub_295724F34();
  sub_295724F54();
  FigDebugAssert3();
  sub_295724F60();

  return FigSignalErrorAtGM();
}

uint64_t sub_29573441C()
{
  sub_295724F34();
  sub_295724F54();
  FigDebugAssert3();
  sub_295724F60();

  return FigSignalErrorAtGM();
}

uint64_t sub_2957344A8()
{
  sub_295724F34();
  sub_295724F54();
  FigDebugAssert3();
  sub_295724F60();

  return FigSignalErrorAtGM();
}

uint64_t sub_295734534()
{
  sub_295724F34();
  sub_295724F54();
  FigDebugAssert3();
  sub_295724F60();

  return FigSignalErrorAtGM();
}

uint64_t sub_2957345C0()
{
  sub_295724F34();
  sub_295724F54();
  FigDebugAssert3();
  sub_295724F60();

  return FigSignalErrorAtGM();
}

uint64_t sub_29573464C()
{
  sub_295724F34();
  sub_295724F54();
  FigDebugAssert3();
  sub_295724F60();

  return FigSignalErrorAtGM();
}

uint64_t sub_2957346D8()
{
  sub_295724F34();
  sub_295724F54();
  FigDebugAssert3();
  sub_295724F60();

  return FigSignalErrorAtGM();
}

uint64_t sub_295734764()
{
  sub_295724F34();
  sub_295724F54();
  FigDebugAssert3();
  sub_295724F60();

  return FigSignalErrorAtGM();
}

uint64_t sub_2957347F0()
{
  sub_295724F34();
  sub_295724F54();
  FigDebugAssert3();
  sub_295724F60();

  return FigSignalErrorAtGM();
}

uint64_t sub_29573487C()
{
  sub_295724F34();
  sub_295724F54();
  FigDebugAssert3();
  sub_295724F60();

  return FigSignalErrorAtGM();
}

uint64_t sub_295734908()
{
  sub_295724F34();
  sub_295724F54();
  FigDebugAssert3();
  sub_295724F60();

  return FigSignalErrorAtGM();
}

uint64_t sub_295734994()
{
  sub_295724F34();
  sub_295724F54();
  FigDebugAssert3();
  sub_295724F60();

  return FigSignalErrorAtGM();
}

uint64_t sub_295734A20()
{
  sub_295724F34();
  sub_295724F54();
  FigDebugAssert3();
  sub_295724F60();

  return FigSignalErrorAtGM();
}

uint64_t sub_295734AAC()
{
  sub_295724F34();
  sub_295724F54();
  FigDebugAssert3();
  sub_295724F60();

  return FigSignalErrorAtGM();
}

uint64_t sub_295734B38()
{
  sub_295724F34();
  sub_295724F54();
  FigDebugAssert3();
  sub_295724F60();

  return FigSignalErrorAtGM();
}

uint64_t sub_295734BC4()
{
  sub_295724F34();
  sub_295724F54();
  FigDebugAssert3();
  sub_295724F60();

  return FigSignalErrorAtGM();
}

uint64_t sub_295734C50()
{
  sub_295724F34();
  sub_295724F54();
  FigDebugAssert3();
  sub_295724F60();

  return FigSignalErrorAtGM();
}

uint64_t sub_295734CDC()
{
  sub_295724F34();
  sub_295724F54();
  FigDebugAssert3();
  sub_295724F60();

  return FigSignalErrorAtGM();
}

uint64_t sub_295734D68()
{
  sub_295724F34();
  sub_295724F54();
  FigDebugAssert3();
  sub_295724F60();

  return FigSignalErrorAtGM();
}

uint64_t sub_295734F74(_DWORD *a1)
{
  sub_295724F44();
  sub_295724F54();
  FigDebugAssert3();
  sub_295724F60();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295734FFC()
{
  sub_295724F34();
  sub_295724F54();
  FigDebugAssert3();
  sub_295724F60();

  return FigSignalErrorAtGM();
}

uint64_t sub_295735088()
{
  sub_295724F34();
  sub_295724F54();
  FigDebugAssert3();
  sub_295724F60();

  return FigSignalErrorAtGM();
}

uint64_t sub_295735114()
{
  sub_295724F34();
  sub_295724F54();
  FigDebugAssert3();
  sub_295724F60();

  return FigSignalErrorAtGM();
}

uint64_t sub_2957351A0()
{
  sub_295724F34();
  sub_295724F54();
  FigDebugAssert3();
  sub_295724F60();

  return FigSignalErrorAtGM();
}

uint64_t sub_29573522C()
{
  sub_295724F34();
  sub_295724F54();
  FigDebugAssert3();
  sub_295724F60();

  return FigSignalErrorAtGM();
}

uint64_t sub_2957352B8()
{
  sub_295724F34();
  sub_295724F54();
  FigDebugAssert3();
  sub_295724F60();

  return FigSignalErrorAtGM();
}

uint64_t sub_295735344()
{
  sub_295724F34();
  sub_295724F54();
  FigDebugAssert3();
  sub_295724F60();

  return FigSignalErrorAtGM();
}

uint64_t sub_2957353D0(_DWORD *a1)
{
  sub_295724F44();
  sub_295724F54();
  FigDebugAssert3();
  sub_295724F60();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295735458(_DWORD *a1)
{
  sub_295724F44();
  sub_295724F54();
  FigDebugAssert3();
  sub_295724F60();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295735DF8(uint64_t a1, void *a2)
{
  fig_log_get_emitter();
  sub_295725698();
  FigDebugAssert3();

  fig_log_get_emitter();
  return FigSignalErrorAtGM();
}

uint64_t sub_295735EC4()
{
  sub_29571C7C4();
  sub_295725698();
  FigDebugAssert3();
  sub_29571C7C4();

  return FigSignalErrorAtGM();
}

uint64_t sub_295735F78()
{
  sub_29571C7C4();
  sub_295725698();
  FigDebugAssert3();
  sub_29571C7C4();

  return FigSignalErrorAtGM();
}

uint64_t sub_29573602C()
{
  fig_log_get_emitter();
  sub_29571EC44();
  return FigDebugAssert3();
}

uint64_t sub_2957360A4()
{
  fig_log_get_emitter();
  sub_29571EC44();
  return FigDebugAssert3();
}

uint64_t sub_29573611C()
{
  fig_log_get_emitter();
  sub_29571EC44();
  return FigDebugAssert3();
}

uint64_t sub_295736194()
{
  fig_log_get_emitter();
  sub_29571EC44();
  return FigDebugAssert3();
}

uint64_t sub_29573620C()
{
  fig_log_get_emitter();
  sub_29571EC44();
  return FigDebugAssert3();
}

uint64_t sub_295736284()
{
  fig_log_get_emitter();
  sub_29571EC44();
  return FigDebugAssert3();
}

uint64_t sub_2957362FC(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_295725698();
  FigDebugAssert3();
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2957363C0()
{
  fig_log_get_emitter();
  sub_295727B70();
  return FigDebugAssert3();
}

uint64_t sub_295736438(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2957364E4(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  sub_29571B1BC();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295736590(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  sub_29571B1BC();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29573663C(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  sub_29571B1BC();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2957366E8(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  sub_29571B1BC();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295736794(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  sub_29571B1BC();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295736840(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  sub_29571B1BC();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2957368EC(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  sub_29571B1BC();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295736998(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  sub_29571B1BC();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295736A44(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295736AF0()
{
  fig_log_get_emitter();
  sub_295727B70();
  return FigDebugAssert3();
}

void sub_295736B6C(void *a1)
{
  fig_log_get_emitter();
  sub_29571C7B0();
  FigDebugAssert3();
}

uint64_t sub_295736BF0()
{
  fig_log_get_emitter();
  sub_29571C7B0();
  return FigDebugAssert3();
}

uint64_t sub_295736C6C()
{
  fig_log_get_emitter();
  sub_29571C7B0();
  return FigDebugAssert3();
}

uint64_t sub_295736CE8()
{
  fig_log_get_emitter();
  sub_29571C7B0();
  return FigDebugAssert3();
}

uint64_t sub_295736D64()
{
  sub_29571C7C4();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571C7C4();

  return FigSignalErrorAtGM();
}

uint64_t sub_295736E14()
{
  fig_log_get_emitter();
  sub_295727B70();
  return FigDebugAssert3();
}

uint64_t sub_295736E90()
{
  fig_log_get_emitter();
  sub_295727B70();
  return FigDebugAssert3();
}

uint64_t sub_295736F0C()
{
  fig_log_get_emitter();
  sub_295727B70();
  return FigDebugAssert3();
}

uint64_t sub_295736F88()
{
  fig_log_get_emitter();
  sub_295727B70();
  return FigDebugAssert3();
}

uint64_t sub_295737004()
{
  sub_29571C7C4();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571C7C4();
  sub_29571B1BC();

  return FigSignalErrorAtGM();
}

uint64_t sub_2957370B4()
{
  sub_29571C7C4();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571C7C4();
  sub_29571B1BC();

  return FigSignalErrorAtGM();
}

uint64_t sub_295737164()
{
  sub_29571C7C4();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571C7C4();
  sub_29571B1BC();

  return FigSignalErrorAtGM();
}

uint64_t sub_295737214()
{
  sub_29571C7C4();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571C7C4();
  sub_29571B1BC();

  return FigSignalErrorAtGM();
}

uint64_t sub_2957372C4()
{
  sub_29571C7C4();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571C7C4();
  sub_29571B1BC();

  return FigSignalErrorAtGM();
}

uint64_t sub_295737374()
{
  sub_29571C7C4();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571C7C4();
  sub_29571B1BC();

  return FigSignalErrorAtGM();
}

uint64_t sub_295737424()
{
  sub_29571C7C4();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571C7C4();
  sub_29571B1BC();

  return FigSignalErrorAtGM();
}

uint64_t sub_2957374D4()
{
  sub_29571C7C4();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571C7C4();
  sub_29571B1BC();

  return FigSignalErrorAtGM();
}

uint64_t sub_295737584()
{
  sub_29571C7C4();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571C7C4();
  sub_29571B1BC();

  return FigSignalErrorAtGM();
}

uint64_t sub_295737634()
{
  sub_29571C7C4();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571C7C4();
  sub_29571B1BC();

  return FigSignalErrorAtGM();
}

uint64_t sub_2957376E4()
{
  sub_29571C7C4();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571C7C4();
  sub_29571B1BC();

  return FigSignalErrorAtGM();
}

uint64_t sub_295737794()
{
  sub_29571C7C4();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571C7C4();
  sub_29571B1BC();

  return FigSignalErrorAtGM();
}

uint64_t sub_295737844()
{
  sub_29571C7C4();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571C7C4();
  sub_29571B1BC();

  return FigSignalErrorAtGM();
}

uint64_t sub_2957378F4()
{
  sub_29571C7C4();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571C7C4();
  sub_29571B1BC();

  return FigSignalErrorAtGM();
}

uint64_t sub_2957379A4()
{
  sub_29571C7C4();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571C7C4();
  sub_29571B1BC();

  return FigSignalErrorAtGM();
}

uint64_t sub_295737A54()
{
  sub_29571C7C4();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571C7C4();
  sub_29571B1BC();

  return FigSignalErrorAtGM();
}

uint64_t sub_295737B04()
{
  sub_29571C7C4();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571C7C4();
  sub_29571B1BC();

  return FigSignalErrorAtGM();
}

uint64_t sub_295737BB4()
{
  sub_29571C7C4();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571C7C4();
  sub_29571B1BC();

  return FigSignalErrorAtGM();
}

uint64_t sub_295737C64()
{
  sub_29571C7C4();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571C7C4();
  sub_29571B1BC();

  return FigSignalErrorAtGM();
}

uint64_t sub_295737D14(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295737DC0(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295737E6C(_DWORD *a1)
{
  sub_29571B20C();
  sub_29571B194();
  FigDebugAssert3();
  sub_29571B20C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}