uint64_t vl_randperm_int_s(uint64_t result, int a2, int32x4_t *a3, unsigned int *a4)
{
  v7 = result;
  if (result < a2)
  {
    printf("%sError : ", &str_1_2);
    printf("n needs to be equal or larger than k");
    result = putchar(10);
  }

  if (v7 == a2)
  {
    if (v7 < 1)
    {
      return result;
    }

    v8 = v7;
    if (v7 >= 8)
    {
      v9 = v7 & 0x7FFFFFF8;
      v16 = xmmword_271103920;
      v17 = a3 + 1;
      v18.i64[0] = 0x400000004;
      v18.i64[1] = 0x400000004;
      v19.i64[0] = 0x800000008;
      v19.i64[1] = 0x800000008;
      v20 = v9;
      do
      {
        v17[-1] = v16;
        *v17 = vaddq_s32(v16, v18);
        v16 = vaddq_s32(v16, v19);
        v17 += 2;
        v20 -= 8;
      }

      while (v20);
      if (v9 == v7)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v9 = 0;
    }

    do
    {
      a3->i32[v9] = v9;
      ++v9;
    }

    while (v7 != v9);
    do
    {
LABEL_20:
      v21 = 214013 * *a4 + 2531011;
      *a4 = v21;
      v22 = (HIWORD(v21) & 0x7FFF) % v8;
      v23 = a3->i32[0];
      a3->i32[0] = a3->i32[v22];
      a3->i32[v22] = v23;
      a3 = (a3 + 4);
      --v8;
    }

    while (v8);
    return result;
  }

  if (a2 >= 1)
  {
    v10 = 0;
    v11 = v7 + 1;
    do
    {
      v12 = 214013 * *a4 + 2531011;
      *a4 = v12;
      v13 = (HIWORD(v12) & 0x7FFF) % v11;
      a3->i32[v10] = v13;
      if (v10)
      {
        for (i = 0; i != v10; ++i)
        {
          while (v13 == a3->i32[i])
          {
            v15 = 214013 * *a4 + 2531011;
            *a4 = v15;
            v13 = (HIWORD(v15) & 0x7FFF) % v11;
            a3->i32[v10] = v13;
          }
        }
      }

      ++v10;
    }

    while (v10 != a2);
  }

  return result;
}

void vl_get_model_path(char *a1, const char *a2, const char *a3)
{
  v5 = CFStringCreateWithCStringNoCopy(0, a2, 0x8000100u, *MEMORY[0x277CBED00]);
  BundleWithIdentifier = CFBundleGetBundleWithIdentifier(v5);
  v7 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a3, 0x8000100u);
  v8 = CFBundleCopyResourceURL(BundleWithIdentifier, @"model.espresso", @"net", v7);
  v9 = CFURLCopyPath(v8);
  CStringPtr = CFStringGetCStringPtr(v9, 0x8000100u);
  strcpy(a1, CStringPtr);
  CFRelease(v9);
  CFRelease(v7);
  CFRelease(v8);

  CFRelease(v5);
}

uint64_t lbl_feature2d_t::forward(uint64_t a1, uint64_t a2, int a3, int a4, void *a5, int32x2_t *a6, int a7, int a8)
{
  v229 = *MEMORY[0x277D85DE8];
  gettimeofday(&v170, 0);
  tv_sec = v170.tv_sec;
  tv_usec = v170.tv_usec;
  *(a1 + 1592) = a2;
  *(a1 + 1600) = a4;
  *(a1 + 1608) = a3;
  *(a1 + 1616) = a3;
  if (a3 < a4)
  {
    __assert_rtn("forward", "vl_kpts_lbl.mm", 475, "width >= height");
  }

  if ((a7 & 0xFFFFFFFD) == 1)
  {
    v18 = *(a1 + 1568);
    if (!v18)
    {
      operator new();
    }
  }

  else
  {
    v18 = *(a1 + 1576);
    if (!v18)
    {
      operator new();
    }
  }

  v98 = a6;
  v19 = *(v18 + 416);
  v20 = *(a1 + 1560);
  if (!v20)
  {
    operator new();
  }

  if (*(a1 + 1608) < *(a1 + 1600))
  {
    __assert_rtn("process", "vl_kpts_lbl.mm", 303, "vimg_input->width >= vimg_input->height");
  }

  v97 = a5;
  if (*(v20 + 10))
  {
    v21 = *(v20 + 9);
  }

  else
  {
    v22 = vImageScale_Planar8((a1 + 1592), (v20 + 2), 0, 0x80u);
    *(v20 + 10) = v22;
    v21 = malloc_type_valloc(v22, 0x25F9A4FAuLL);
    *(v20 + 9) = v21;
  }

  v23 = v20 + 10;
  if (vImageScale_Planar8((a1 + 1592), (v20 + 2), v21, 4u))
  {
    [MEMORY[0x277CBEAD8] raise:@"Lbl2d runtime exception" format:@"Failed to downscale src vImage"];
  }

  v99 = v18;
  if (a7 > 1)
  {
    if (a7 != 3)
    {
      if (a7 == 2)
      {
        v24 = *v20;
        *(v20 + 6) = v20[1];
        *(v20 + 7) = v24;
        *(v20 + 8) = v24;
        vImageRotate90_Planar8((v20 + 2), (v20 + 10), 2u, 0, 0);
        goto LABEL_27;
      }

      goto LABEL_24;
    }

LABEL_22:
    v25 = v20[1];
    *(v20 + 6) = *v20;
    *(v20 + 7) = v25;
    *(v20 + 8) = v25;
    if (!vImageRotate90_Planar8((v20 + 2), (v20 + 10), a7, 0, 0))
    {
      goto LABEL_27;
    }

    v26 = MEMORY[0x277CBEAD8];
    v27 = @"Failed to rot src vImage";
    goto LABEL_25;
  }

  if (a7)
  {
    if (a7 != 1)
    {
LABEL_24:
      v26 = MEMORY[0x277CBEAD8];
      v27 = @"Failed to rotate src vImage";
LABEL_25:
      [v26 raise:@"Lbl2d runtime exception" format:v27];
      goto LABEL_27;
    }

    goto LABEL_22;
  }

  v23 = v20 + 2;
LABEL_27:
  printf("Info : ");
  gettimeofday(&v170, 0);
  printf("prepro time: %lf ms", (1000000 * (v170.tv_sec - tv_sec) - tv_usec + v170.tv_usec) / 1000.0);
  putchar(10);
  gettimeofday(&v170, 0);
  v28 = v170.tv_sec;
  v29 = v170.tv_usec;
  v30 = *(v23 + 1);
  v170 = *v23;
  v171 = v30;
  if ((espresso_network_bind_input_vimagebuffer_planar8() & 0x80000000) != 0)
  {
    v87 = *MEMORY[0x277D85DF8];
    status_string = espresso_get_status_string();
    fprintf(v87, "Error: %s:%d %s\n", "/Library/Caches/com.apple.xbs/Sources/VisualLocalization/argo/lib/kpts/vl_kpts_lbl.mm", 131, status_string);
    exception = __cxa_allocate_exception(0x10uLL);
    v90 = espresso_get_status_string();
    MEMORY[0x2743BC920](exception, v90);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if ((espresso_plan_execute_sync() & 0x80000000) != 0)
  {
    v91 = *MEMORY[0x277D85DF8];
    v92 = espresso_get_status_string();
    fprintf(v91, "Error: %s:%d %s\n", "/Library/Caches/com.apple.xbs/Sources/VisualLocalization/argo/lib/kpts/vl_kpts_lbl.mm", 132, v92);
    v93 = __cxa_allocate_exception(0x10uLL);
    v94 = espresso_get_status_string();
    MEMORY[0x2743BC920](v93, v94);
    __cxa_throw(v93, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  printf("Info : ");
  gettimeofday(&v170, 0);
  printf("cnn time: %lf ms", (1000000 * (v170.tv_sec - v28) - v29 + v170.tv_usec) / 1000.0);
  putchar(10);
  gettimeofday(&v170, 0);
  if (v19)
  {
    __assert_rtn("forward", "vl_kpts_lbl.mm", 523, "0");
  }

  v31 = *(v99 + 392);
  v100 = *(v99 + 400);
  v32 = *(v99 + 136);
  v102 = *(v99 + 304);
  v33 = *(a1 + 1552);
  gettimeofday(&v170, 0);
  v34 = v170.tv_sec;
  v35 = v170.tv_usec;
  v37 = *(v99 + 144);
  v36 = *(v99 + 152);
  v38 = *(v99 + 136);
  v39 = v37 * v36;
  if (*(a1 + 1624))
  {
    if (a8)
    {
LABEL_32:
      if (v36 && v37 && v38)
      {
        v40 = 0;
        for (i = 0; i != v37; ++i)
        {
          v42 = 0;
          v43 = v31;
          v44 = v40;
          do
          {
            v45 = v43;
            v46 = v44;
            v47 = v36;
            do
            {
              v48 = (*v45 / v33);
              if (v48 <= 126)
              {
                v49 = (*v45 / v33);
              }

              else
              {
                LOBYTE(v49) = 127;
              }

              if (v48 <= -128)
              {
                v50 = 0x80;
              }

              else
              {
                v50 = v49;
              }

              *(*(a1 + 1624) + v46++) = v50;
              v45 += v37 * v32;
              --v47;
            }

            while (v47);
            ++v42;
            v44 += v36;
            ++v43;
          }

          while (v42 != v38);
          v40 += v38 * v36;
          v31 += v32;
        }
      }

      goto LABEL_61;
    }
  }

  else
  {
    *(a1 + 1624) = malloc_type_malloc(4 * v38 * v39, 0x100004052888210uLL);
    if (a8)
    {
      goto LABEL_32;
    }
  }

  if (v39 && v38)
  {
    v51 = 0;
    for (j = 0; j != v39; ++j)
    {
      v53 = v31;
      v54 = v51;
      v55 = v38;
      do
      {
        v56 = *v53++;
        v57 = (v56 / v33);
        if (v57 <= 126)
        {
          v58 = v57;
        }

        else
        {
          v58 = 127;
        }

        if (v57 <= -128)
        {
          v59 = 0x80;
        }

        else
        {
          v59 = v58;
        }

        *(*(a1 + 1624) + v54++) = v59;
        --v55;
      }

      while (v55);
      v51 += v38;
      v31 += v32;
    }
  }

LABEL_61:
  printf("Info : ");
  gettimeofday(&v170, 0);
  printf("copy time: %lf", (1000000 * (v170.tv_sec - v34) - v35 + v170.tv_usec) / 1000.0);
  putchar(10);
  gettimeofday(&v170, 0);
  if (*(v99 + 320) != 65)
  {
    __assert_rtn("softmax65_permute_to16i", "vl_kpts_lbl.h", 48, "channel == 65");
  }

  v95 = v170.tv_usec;
  v96 = v170.tv_sec;
  v60 = *(v99 + 312);
  v166 = *(v99 + 304);
  v101 = v60;
  if (*(a1 + 1632))
  {
    if (!v60)
    {
      goto LABEL_73;
    }
  }

  else
  {
    *(a1 + 1632) = malloc_type_malloc((v60 * v166) << 7, 0x1000040BDFB0063uLL);
    v60 = v101;
    if (!v101)
    {
      goto LABEL_73;
    }
  }

  if (v166)
  {
    v61 = 0;
    v62 = v60 * v102;
    v63 = 8 * v60 * v102;
    v64 = 16 * v60 * v102;
    v65 = 4 * v60 * v102;
    v66 = 5 * v60 * v102;
    v164 = 11 * v60 * v102;
    v163 = 5 * v60 * v102;
    v67 = 32 * v60 * v102;
    v161 = 13 * v60 * v102;
    v68 = 9 * v60 * v102;
    v160 = v68;
    v159 = 19 * v62;
    v158 = 2 * v66;
    v157 = 21 * v62;
    v156 = v64 + v62;
    v155 = 2 * v68;
    v154 = 22 * v62;
    v153 = 4 * v66;
    v152 = 23 * v62;
    v151 = 25 * v62;
    v150 = 26 * v62;
    v149 = 27 * v62;
    v148 = 29 * v62;
    v146 = 2 * (v64 + v62);
    v147 = v67 + v62;
    v144 = 4 * v68;
    v145 = 35 * v62;
    v142 = 38 * v62;
    v143 = 37 * v62;
    v140 = 8 * v66;
    v141 = 39 * v62;
    v138 = 42 * v62;
    v139 = 41 * v62;
    v136 = 44 * v62;
    v137 = 43 * v62;
    v134 = 46 * v62;
    v135 = 45 * v62;
    v132 = 3 * v62;
    v133 = 47 * v62;
    v130 = 12 * v62;
    v131 = 6 * v62;
    v128 = 48 * v62;
    v129 = 24 * v62;
    v126 = 50 * v62;
    v127 = 49 * v62;
    v124 = 52 * v62;
    v125 = 51 * v62;
    v122 = v67 - v65;
    v123 = 53 * v62;
    v120 = (v62 << 6) - v65;
    v118 = (v62 << 7) - v65;
    v116 = (v62 << 8) - v65;
    v115 = 54 * v62;
    v114 = 55 * v62;
    v113 = 57 * v62;
    v112 = 58 * v62;
    v111 = 59 * v62;
    v165 = v62;
    v110 = 61 * v62;
    v121 = v62 << 6;
    v109 = (v62 << 6) - v63;
    v108 = (v62 << 7) - v64;
    v119 = v62 << 7;
    v107 = (v62 << 7) - v63;
    v162 = v67;
    v106 = (v62 << 8) - v67;
    v117 = v64;
    v105 = (v62 << 8) - v64;
    v69 = v63;
    v70 = v62 << 8;
    v104 = (v62 << 8) - v63;
    do
    {
      v71 = 0;
      v72 = v100 + 4 * v61 * v102;
      v103 = v61;
      v73 = 8 * v61;
      do
      {
        v74 = (v72 + 4 * v71);
        LODWORD(v170.tv_sec) = *v74;
        HIDWORD(v170.tv_sec) = v74[v165];
        v170.tv_usec = *(v74 + v69);
        *(&v170.tv_usec + 1) = v74[v132];
        LODWORD(v171) = *(v74 + v117);
        DWORD1(v171) = v74[v163];
        DWORD2(v171) = v74[v131];
        HIDWORD(v171) = *(v74 + v122);
        v172 = *(v74 + v162);
        v173 = v74[v160];
        v174 = v74[v158];
        v175 = v74[v164];
        v176 = v74[v130];
        v177 = v74[v161];
        v178 = *(v74 + v109);
        v179 = *(v74 + v120);
        v180 = *(v74 + v121);
        v181 = v74[v156];
        v182 = v74[v155];
        v183 = v74[v159];
        v184 = v74[v153];
        v185 = v74[v157];
        v186 = v74[v154];
        v187 = v74[v152];
        v188 = v74[v129];
        v189 = v74[v151];
        v190 = v74[v150];
        v191 = v74[v149];
        v192 = *(v74 + v108);
        v193 = v74[v148];
        v194 = *(v74 + v107);
        v195 = *(v74 + v118);
        v196 = *(v74 + v119);
        v197 = v74[v147];
        v198 = v74[v146];
        v199 = v74[v145];
        v200 = v74[v144];
        v201 = v74[v143];
        v202 = v74[v142];
        v203 = v74[v141];
        v204 = v74[v140];
        v205 = v74[v139];
        v206 = v74[v138];
        v207 = v74[v137];
        v208 = v74[v136];
        v209 = v74[v135];
        v210 = v74[v134];
        v211 = v74[v133];
        v212 = v74[v128];
        v213 = v74[v127];
        v214 = v74[v126];
        v215 = v74[v125];
        v216 = v74[v124];
        v217 = v74[v123];
        v218 = v74[v115];
        v219 = v74[v114];
        v220 = *(v74 + v106);
        v221 = v74[v113];
        v222 = v74[v112];
        v223 = v74[v111];
        v224 = *(v74 + v105);
        v225 = v74[v110];
        v226 = *(v74 + v104);
        v227 = *(v74 + v116);
        v228 = *(v74 + v70);
        __N = 65;
        __C = 0;
        MEMORY[0x2743BDB20](&v170, 1, &__C + 4, __N_4, 1, 65);
        vvexpf(__N_4, __N_4, &__N);
        vDSP_sve(__N_4, 1, &__C, __N);
        vDSP_vsdiv(__N_4, 1, &__C, __N_4, 1, __N);
        v75 = 0;
        v76 = *(a1 + 1632);
        v77 = 8 * (v71 & 0x1FFFFFFF);
        do
        {
          v78 = &__N_4[v75];
          v79 = fmin((v78[1] * 65535.0), 65535.0);
          v80 = fmin((*v78 * 65535.0), 65535.0);
          LODWORD(v78) = v80;
          v81 = v79;
          v82 = v76 + 16 * v166 * (v73 + (v75 >> 3));
          *(v82 + 2 * (v75 & 6 | v77)) = v78;
          *(v82 + 2 * ((v75 + 1) & 7 | v77)) = v81;
          v75 += 2;
        }

        while (v75 != 64);
        ++v71;
      }

      while (v71 != v166);
      v61 = v103 + 1;
    }

    while (v103 + 1 != v101);
  }

LABEL_73:
  printf("Info : ");
  gettimeofday(&v170, 0);
  printf("softmax time: %lf", (1000000 * (v170.tv_sec - v96) - v95 + v170.tv_usec) / 1000.0);
  result = putchar(10);
  v84 = *(v99 + 152);
  *v98 = *(a1 + 1624);
  v85 = (*(v99 + 136) * v84);
  v98[1] = vmovn_s64(*(v99 + 136));
  v98[2] = v85;
  *v97 = *(a1 + 1632);
  v86 = vshl_n_s32(vmovn_s64(*(v99 + 304)), 3uLL);
  v97[1] = v86;
  v97[2] = v86.i32[0];
  return result;
}

void lbl_feature2d_t::lbl_feature2d_t(lbl_feature2d_t *this, const char *a2, int a3)
{
  v6 = this + 1032;
  bzero(this, 0x608uLL);
  if ((a3 - 3006) < 3 || a3 == 3010)
  {
    strcpy(v6, "espressos/lbl2d_v4_ind_pl.mlmodelc");
    v14 = 1041056891;
    *(this + 193) = 0x100000040;
    *(this + 388) = 1018762931;
    v15 = 524;
  }

  else
  {
    if (a3 != 3011)
    {
      __assert_rtn("lbl_feature2d_par_ver", "vl_kpts_lbl.mm", 389, "0");
    }

    strcpy(v6, "espressos/lbl2d_v5.mlmodelc");
    v14 = 989888641;
    *(this + 193) = 64;
    v15 = 520;
  }

  *&v6[v15] = v14;
  *(this + 1560) = 0u;
  *(this + 1576) = 0u;
  *(this + 203) = 0;
  *(this + 205) = 0;
  *(this + 204) = 0;
  log_col_app("Loading model at: %s", v7, v8, v9, v10, v11, v12, v13, v6);
  vl_get_model_path(this + 8, a2, v6);
  v16 = MTLCreateSystemDefaultDevice();
  v17 = *this;
  *this = v16;

  operator new();
}

void sub_2710A5DD8(_Unwind_Exception *a1)
{
  MEMORY[0x2743BC950](v2, 0x1080C409FDDAA90);

  _Unwind_Resume(a1);
}

uint64_t lbl_2d_metal_t::lbl_2d_metal_t(uint64_t a1, void *a2)
{
  v4 = a2;
  *(a1 + 32) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a1 + 32;
  *(a1 + 64) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = a1 + 56;
  objc_storeStrong(a1, a2);
  v5 = [v4 newCommandQueue];
  v6 = *(a1 + 8);
  *(a1 + 8) = v5;

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"\nconstant ushort ushort_arg0[[function_constant(0)]]\nconstant ushort ushort_arg1[[function_constant(1)]];\nconstant ushort ushort_arg2[[function_constant(2)]];\n\n#include <metal_stdlib>\nusing namespace metal;\n\n\nkernel void copy_tex_toi8(texture2d_array<half, access::read> tex[[texture(0)]], \n                                 device char* buf[[buffer(0)]], \n                                 constant float *alpha[[buffer(1)]], \n                                 ushort3 gid[[thread_position_in_grid]]) {\n  const ushort C = ushort_arg0;\n  const ushort H = ushort_arg1;\n  const ushort W = ushort_arg2;\n  ushort i;\n  \n  if (gid.x >= W || gid.y >= H) {\n    return;\n  }\n  half4 t = tex.read(gid.xy, gid.z);\n\n  for (i = 0; i < 4; ++i){\n    int c = (int)(gid.z) * 4 + i;\n    if (c < C){\n      int ind = c * (int)H * (int)W + ((int)(gid.y) * W + (int)(gid.x));\n      buf[ind] = (char)fmax(fmin(t[i] * alpha[0], 127.), -128.);\n    }\n  }\n}\n\nkernel void copy_tex_toi8_trans(texture2d_array<half, access::read> tex[[texture(0)]], \n                                 device char* buf[[buffer(0)]], \n                                 constant float *alpha[[buffer(1)]], \n                                 ushort3 gid[[thread_position_in_grid]]) {\n  const ushort C = ushort_arg0;\n  const ushort H = ushort_arg1;\n  const ushort W = ushort_arg2;\n  ushort i;\n  \n  if (gid.x >= W || gid.y >= H) {\n    return;\n  }\n  half4 t = tex.read(gid.xy, gid.z);\n\n  for (i = 0; i < 4; ++i){\n    int c = (int)(gid.z) * 4 + i;\n    if (c < C){\n      int ind = ((int)(gid.y) * W + (int)(gid.x)) * C + c;\n      buf[ind] = (char)fmax(fmin(t[i] * alpha[0], 127.), -128.);\n    }\n  }\n}\n\n\nkernel void copy_tex_tof16(texture2d_array<half, access::read> tex[[texture(0)]], \n                                 device half* buf[[buffer(0)]], \n                                 constant float *alpha[[buffer(1)]], \n                                 ushort3 gid[[thread_position_in_grid]]) {\n  const ushort C = ushort_arg0;\n  const ushort H = ushort_arg1;\n  const ushort W = ushort_arg2;\n  ushort i;\n  \n  if (gid.x >= W || gid.y >= H) {\n    return;\n  }\n  half4 t = tex.read(gid.xy, gid.z);\n\n  for (i = 0; i < 4; ++i){\n    int c = (int)(gid.z) * 4 + i;\n    if (c < C){\n      int ind = c * (int)H * (int)W + ((int)(gid.y) * W + (int)(gid.x));\n      buf[ind] = t[i];\n    }\n  }\n}\n\nkernel void copy_tex_tof16_trans(texture2d_array<half, access::read> tex[[texture(0)]], \n                                 device half* buf[[buffer(0)]], \n                                 constant float *alpha[[buffer(1)]], \n                                 ushort3 gid[[thread_position_in_grid]]) {\n  const ushort C = ushort_arg0;\n  const ushort H = ushort_arg1;\n  const ushort W = ushort_arg2;\n  ushort i;\n  \n  if (gid.x >= W || gid.y >= H) {\n    return;\n  }\n  half4 t = tex.read(gid.xy, gid.z);\n\n  for (i = 0; i < 4; ++i){\n    int c = (int)(gid.z) * 4 + i;\n    if (c < C){\n      int ind = ((int)(gid.y) * W + (int)(gid.x)) * C + c;\n      buf[ind] = t[i];\n    }\n  }\n}\n\n"}];;
  v8 = *a1;
  v13 = 0;
  v9 = [v8 newLibraryWithSource:v7 options:0 error:&v13];
  v10 = v13;
  v11 = *(a1 + 16);
  *(a1 + 16) = v9;

  if (!*(a1 + 16) || v10)
  {
    NSLog(&cfstr_FailedToLoadLi.isa);
  }

  return a1;
}

void sub_2710A5F30(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong}>,std::__map_value_compare<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::less<std::string>,true>,std::allocator<objc_object  {objcproto23MTLComputePipelineState}* {__strong}>>::destroy(*(v2 + 56));
  std::__tree<std::__value_type<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong}>,std::__map_value_compare<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::less<std::string>,true>,std::allocator<objc_object  {objcproto23MTLComputePipelineState}* {__strong}>>::destroy(*(v2 + 32));

  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong}>,std::__map_value_compare<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::less<std::string>,true>,std::allocator<objc_object  {objcproto23MTLComputePipelineState}* {__strong}>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong}>,std::__map_value_compare<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::less<std::string>,true>,std::allocator<objc_object  {objcproto23MTLComputePipelineState}* {__strong}>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong}>,std::__map_value_compare<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::less<std::string>,true>,std::allocator<objc_object  {objcproto23MTLComputePipelineState}* {__strong}>>::destroy(*(a1 + 1));

    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
      v2 = a1;
    }

    else
    {
      v2 = a1;
    }

    operator delete(v2);
  }
}

void lbl_2d_cnn_t::lbl_2d_cnn_t(lbl_2d_cnn_t *this, const char *a2, const char *a3)
{
  v5 = objc_autoreleasePoolPush();
  context = espresso_create_context();
  *(this + 104) = 0;
  if (context || (context = espresso_create_context(), *(this + 104) = 1, context))
  {
    v7 = context;
  }

  else
  {
    v7 = espresso_create_context();
    *(this + 104) = 2;
  }

  objc_autoreleasePoolPop(v5);
  *(this + 3) = v7;
  NSLog(&cfstr_InitLblModelWi.isa, *(this + 104), a2);
  *(this + 4) = espresso_create_plan();
  espresso_get_default_storage_type();
  if ((espresso_plan_add_network() & 0x80000000) != 0)
  {
    v8 = *MEMORY[0x277D85DF8];
    status_string = espresso_get_status_string();
    fprintf(v8, "Error: %s:%d %s\n", "/Library/Caches/com.apple.xbs/Sources/VisualLocalization/argo/lib/kpts/vl_kpts_lbl.mm", 100, status_string);
    exception = __cxa_allocate_exception(0x10uLL);
    v11 = espresso_get_status_string();
    MEMORY[0x2743BC920](exception, v11);
    goto LABEL_17;
  }

  if ((espresso_network_select_configuration() & 0x80000000) != 0)
  {
    v12 = *MEMORY[0x277D85DF8];
    v13 = espresso_get_status_string();
    fprintf(v12, "Error: %s:%d %s\n", "/Library/Caches/com.apple.xbs/Sources/VisualLocalization/argo/lib/kpts/vl_kpts_lbl.mm", 101, v13);
    exception = __cxa_allocate_exception(0x10uLL);
    v14 = espresso_get_status_string();
    MEMORY[0x2743BC920](exception, v14);
    goto LABEL_17;
  }

  if ((espresso_plan_build() & 0x80000000) != 0)
  {
    v15 = *MEMORY[0x277D85DF8];
    v16 = espresso_get_status_string();
    fprintf(v15, "Error: %s:%d %s\n", "/Library/Caches/com.apple.xbs/Sources/VisualLocalization/argo/lib/kpts/vl_kpts_lbl.mm", 102, v16);
    exception = __cxa_allocate_exception(0x10uLL);
    v17 = espresso_get_status_string();
    MEMORY[0x2743BC920](exception, v17);
LABEL_17:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if ((espresso_network_query_blob_dimensions() & 0x80000000) != 0)
  {
    v18 = *MEMORY[0x277D85DF8];
    v19 = espresso_get_status_string();
    fprintf(v18, "Error: %s:%d %s\n", "/Library/Caches/com.apple.xbs/Sources/VisualLocalization/argo/lib/kpts/vl_kpts_lbl.mm", 106, v19);
    v20 = __cxa_allocate_exception(0x10uLL);
    v21 = espresso_get_status_string();
    MEMORY[0x2743BC920](v20, v21);
    __cxa_throw(v20, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *(this + 51) = vmovn_s64(v38);
  if ((espresso_network_query_blob_dimensions() & 0x80000000) != 0)
  {
    v22 = *MEMORY[0x277D85DF8];
    v23 = espresso_get_status_string();
    fprintf(v22, "Error: %s:%d %s\n", "/Library/Caches/com.apple.xbs/Sources/VisualLocalization/argo/lib/kpts/vl_kpts_lbl.mm", 110, v23);
    v24 = __cxa_allocate_exception(0x10uLL);
    v25 = espresso_get_status_string();
    MEMORY[0x2743BC920](v24, v25);
    __cxa_throw(v24, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *(this + 49) = malloc_type_malloc(4 * v40 * v39 * v38.i64[1] * v38.i64[0], 0x100004052888210uLL);
  espresso_buffer_pack_tensor_shape();
  *(this + 7) = *(this + 49);
  if ((espresso_network_bind_buffer() & 0x80000000) != 0)
  {
    v26 = *MEMORY[0x277D85DF8];
    v27 = espresso_get_status_string();
    fprintf(v26, "Error: %s:%d %s\n", "/Library/Caches/com.apple.xbs/Sources/VisualLocalization/argo/lib/kpts/vl_kpts_lbl.mm", 117, v27);
    v28 = __cxa_allocate_exception(0x10uLL);
    v29 = espresso_get_status_string();
    MEMORY[0x2743BC920](v28, v29);
    __cxa_throw(v28, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if ((espresso_network_query_blob_dimensions() & 0x80000000) != 0)
  {
    v30 = *MEMORY[0x277D85DF8];
    v31 = espresso_get_status_string();
    fprintf(v30, "Error: %s:%d %s\n", "/Library/Caches/com.apple.xbs/Sources/VisualLocalization/argo/lib/kpts/vl_kpts_lbl.mm", 119, v31);
    v32 = __cxa_allocate_exception(0x10uLL);
    v33 = espresso_get_status_string();
    MEMORY[0x2743BC920](v32, v33);
    __cxa_throw(v32, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *(this + 50) = malloc_type_malloc(4 * v40 * v39 * v38.i64[1] * v38.i64[0], 0x100004052888210uLL);
  espresso_buffer_pack_tensor_shape();
  *(this + 28) = *(this + 50);
  if ((espresso_network_bind_buffer() & 0x80000000) != 0)
  {
    v34 = *MEMORY[0x277D85DF8];
    v35 = espresso_get_status_string();
    fprintf(v34, "Error: %s:%d %s\n", "/Library/Caches/com.apple.xbs/Sources/VisualLocalization/argo/lib/kpts/vl_kpts_lbl.mm", 126, v35);
    v36 = __cxa_allocate_exception(0x10uLL);
    v37 = espresso_get_status_string();
    MEMORY[0x2743BC920](v36, v37);
    __cxa_throw(v36, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }
}

void lbl_feature2d_t::~lbl_feature2d_t(lbl_feature2d_t *this)
{
  v2 = *(this + 195);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      free(v3);
    }

    v4 = *(v2 + 40);
    if (v4)
    {
      free(v4);
    }

    if (*(v2 + 80))
    {
      free(*(v2 + 72));
    }

    MEMORY[0x2743BC950](v2, 0x1080C4095AC591FLL);
  }

  v5 = *(this + 197);
  if (v5)
  {
    if (espresso_plan_destroy() || espresso_context_destroy())
    {
      NSLog(&cfstr_WarningFaildTo.isa);
    }

    v6 = *(v5 + 392);
    if (v6)
    {
      free(v6);
    }

    v7 = *(v5 + 400);
    if (v7)
    {
      free(v7);
    }

    MEMORY[0x2743BC950](v5, 0x1080C409FDDAA90);
  }

  v8 = *(this + 196);
  if (v8)
  {
    if (espresso_plan_destroy() || espresso_context_destroy())
    {
      NSLog(&cfstr_WarningFaildTo.isa);
    }

    v9 = *(v8 + 392);
    if (v9)
    {
      free(v9);
    }

    v10 = *(v8 + 400);
    if (v10)
    {
      free(v10);
    }

    MEMORY[0x2743BC950](v8, 0x1080C409FDDAA90);
  }

  v11 = *(this + 198);
  if (v11)
  {
    std::__tree<std::__value_type<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong}>,std::__map_value_compare<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::less<std::string>,true>,std::allocator<objc_object  {objcproto23MTLComputePipelineState}* {__strong}>>::destroy(*(v11 + 56));
    std::__tree<std::__value_type<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong}>,std::__map_value_compare<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::less<std::string>,true>,std::allocator<objc_object  {objcproto23MTLComputePipelineState}* {__strong}>>::destroy(*(v11 + 32));

    MEMORY[0x2743BC950](v11, 0x10A0C40A7699F9ELL);
  }

  free(*(this + 203));
  free(*(this + 204));
  free(*(this + 205));
}

void vl_gauss16(uint64_t *a1, unint64_t *a2, float a3)
{
  v4 = a1;
  v3991 = malloc_type_calloc(*(a1 + 2), 2uLL, 0x1000040BDFB0063uLL);
  v5 = (a3 * 6.0) + 1.0;
  v6 = v5;
  v7 = v5 <= 0.0;
  v8 = -0.5;
  if (!v7)
  {
    v8 = 0.5;
  }

  v9 = (v8 + v6);
  v3983 = v9 | 1;
  v10 = malloc_type_calloc(v3983, 4uLL, 0x100004052888210uLL);
  v11 = malloc_type_calloc(v3983, 2uLL, 0x1000040BDFB0063uLL);
  v12 = v9;
  v13 = v11;
  v3974 = v9;
  if ((v9 & 0x80000000) != 0)
  {
    LOWORD(v18) = 0;
    goto LABEL_28;
  }

  v14 = v9 >> 1;
  v15 = -0.5 / (a3 * a3);
  v3958 = v15;
  if (v12 >= 8)
  {
    v16 = v3983 & 0x7FFFFFF8;
    v3901 = vdupq_n_s32(v14);
    v19 = xmmword_271103920;
    v20 = v10 + 16;
    v17 = 0.0;
    v21 = v16;
    do
    {
      v3929 = v19;
      v22 = vsubq_s32(v19, v3901);
      v23.i64[0] = 0x400000004;
      v23.i64[1] = 0x400000004;
      v24 = vaddq_s32(v22, v23);
      v25 = vcvtq_f32_s32(v22);
      v26 = vcvtq_f32_s32(v24);
      v3947 = vmulq_f32(vmulq_n_f32(v25, v15), v25);
      v3965 = vmulq_f32(vmulq_n_f32(v26, v3958), v26);
      v3942 = expf(v3947.f32[1]);
      *&v27 = expf(v3947.f32[0]);
      v3925 = *&v27;
      v28 = v27;
      *(&v28 + 1) = v3942;
      v3979 = v28;
      v3920 = expf(v3947.f32[2]);
      v29 = v3979;
      *(&v29 + 2) = v3920;
      v3980 = v29;
      v3912 = expf(v3947.f32[3]);
      v30 = v3980;
      *(&v30 + 3) = v3912;
      v3981 = v30;
      v3936 = expf(v3965.f32[1]);
      *&v31 = expf(v3965.f32[0]);
      v3909 = *&v31;
      v32 = v31;
      *(&v32 + 1) = v3936;
      v3948 = v32;
      v3905 = expf(v3965.f32[2]);
      v33 = v3948;
      *(&v33 + 2) = v3905;
      v3949 = v33;
      v34 = expf(v3965.f32[3]);
      v15 = v3958;
      v35 = v3949;
      *(&v35 + 3) = v34;
      *(v20 - 1) = v3981;
      *v20 = v35;
      v17 = (((((((v17 + v3925) + v3942) + v3920) + v3912) + v3909) + v3936) + v3905) + v34;
      v36.i64[0] = 0x800000008;
      v36.i64[1] = 0x800000008;
      v19 = vaddq_s32(v3929, v36);
      v20 += 2;
      v21 -= 8;
    }

    while (v21);
  }

  else
  {
    v16 = 0;
    v17 = 0.0;
  }

  v37 = v3983 - v16;
  v38 = &v10[4 * v16];
  v39 = v16 - v14;
  do
  {
    v40 = expf((v15 * v39) * v39);
    v15 = v3958;
    *v38++ = v40;
    v17 = v17 + v40;
    ++v39;
    --v37;
  }

  while (v37);
  v41 = v10;
  v42 = v13;
  v43 = v3983;
  do
  {
    v44 = *v41++;
    v45 = ldexpf(v44 / v17, 15);
    v46 = v45;
    if (v45 <= 0.0)
    {
      v47 = -0.5;
    }

    else
    {
      v47 = 0.5;
    }

    *v42++ = (v47 + v46);
    --v43;
  }

  while (v43);
  v12 = v3974;
  if (v3974 >= 4)
  {
    if (v3974 >= 0x10)
    {
      v48 = v3983 & 0x7FFFFFF0;
      v49 = (v13 + 8);
      v50 = 0uLL;
      v51 = v48;
      v52 = 0uLL;
      v53 = 0uLL;
      v54 = 0uLL;
      do
      {
        v55 = v49[-1];
        v52 = vaddw_high_u16(v52, v55);
        v50 = vaddw_u16(v50, *v55.i8);
        v54 = vaddw_high_u16(v54, *v49);
        v53 = vaddw_u16(v53, *v49->i8);
        v49 += 2;
        v51 -= 16;
      }

      while (v51);
      v18 = vaddvq_s32(vaddq_s32(vaddq_s32(v53, v50), vaddq_s32(v54, v52)));
      if ((v3983 & 0xC) == 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v18 = 0;
      v48 = 0;
    }

    v56 = v48;
    v48 = v3983 & 0x7FFFFFFC;
    v57 = v18;
    v58 = &v13[v56];
    v59 = v56 - v48;
    do
    {
      v60 = *v58++;
      v57 = vaddw_u16(v57, v60);
      v59 += 4;
    }

    while (v59);
    LOWORD(v18) = vaddvq_s32(v57);
  }

  else
  {
    v48 = 0;
    LOWORD(v18) = 0;
  }

LABEL_26:
  v61 = v3983 - v48;
  v62 = &v13[v48];
  do
  {
    v63 = *v62++;
    LOWORD(v18) = v18 + v63;
    --v61;
  }

  while (v61);
LABEL_28:
  v64 = (v12 >> 1);
  v13[v64] = (v13[v64] - v18) ^ 0x8000;
  free(v10);
  v3982 = v4;
  if (v64 > 4)
  {
    v66 = v3991;
    if (v64 != 5)
    {
      if (v64 != 6)
      {
        goto LABEL_250;
      }

      v239 = *(v4 + 2);
      if (v239 < 1)
      {
        v1910 = v4 + 3;
        v3881 = *(v4 + 3);
        v1909 = v4;
        if (v3881 <= 12)
        {
          goto LABEL_1130;
        }

        goto LABEL_1131;
      }

      v240 = v4[2];
      v241 = 4 * v240;
      v242 = *v4;
      v243 = *a2;
      v3921 = a2[2];
      v244 = 6 * v240;
      v245 = v240;
      v246 = 10 * v240;
      v247 = 2 * v239;
      v248 = *v4 + 2 * v240;
      v249 = 2 * v240;
      v3943 = v240;
      v3950 = v240;
      v3938 = 12 * v240;
      v250 = 0;
      if (v239 > 7)
      {
        v2457 = v243 + v247;
        v2458 = &v242->i8[12 * v240];
        v2460 = v243 < &v2458[v247] && v2458 < v2457;
        v2462 = v243 < v242->u64 + v246 + v247 && v242->u64 + v246 < v2457;
        v2464 = v243 < &v242->u64[v245] + v247 && &v242->u64[v245] < v2457;
        v2466 = v243 < v242->u64 + v244 + v247 && v242->u64 + v244 < v2457;
        v2468 = v243 < v242->u64 + v241 + v247 && v242->u64 + v241 < v2457;
        v2470 = v243 < v248 + v247 && v248 < v2457;
        v2472 = v243 < v242->u64 + v247 && v242 < v2457;
        if (v13 >= v2457 || v243 >= (v13 + 13))
        {
          v240 = v4[2];
          if (!v2460 && !v2462 && !v2464 && !v2466 && !v2468 && !v2470 && !v2472)
          {
            v2474 = v13;
            v2475 = vld1_dup_s16(v2474++);
            v2476 = vld1_dup_s16(v2474);
            v2477 = vaddl_u16(v2476, v2475);
            v2478 = (v13 + 2);
            v2479 = vld1_dup_s16(v2478);
            v2480 = (v13 + 3);
            v2481 = vld1_dup_s16(v2480);
            v2482 = vaddw_u16(vaddw_u16(v2477, v2479), v2481);
            v2483 = (v13 + 4);
            v2484 = vld1_dup_s16(v2483);
            v2485 = vaddw_u16(v2482, v2484);
            v2486 = (v13 + 5);
            v2487 = vld1_dup_s16(v2486);
            v2488 = (v13 + 6);
            v2489 = vld1_dup_s16(v2488);
            v2490 = vaddw_u16(vaddw_u16(v2485, v2487), v2489);
            v2491 = (v13 + 7);
            v2492 = vld1_dup_s16(v2491);
            v2493 = vmovl_u16(v2492);
            v2494 = (v13 + 8);
            v2495 = vld1_dup_s16(v2494);
            v2496 = (v13 + 9);
            v2497 = vld1_dup_s16(v2496);
            v2498 = vmovl_u16(v2495);
            v2499 = vmovl_u16(v2497);
            v2500 = (v13 + 10);
            v2501 = vld1_dup_s16(v2500);
            v2502 = vmovl_u16(v2501);
            v2503 = (v13 + 11);
            v2504 = vld1_dup_s16(v2503);
            v2505 = (v13 + 12);
            v2506 = vld1_dup_s16(v2505);
            v2507 = vmovl_u16(v2504);
            v2508 = vmovl_u16(v2506);
            v2509 = vuzp1q_s16(v2490, v2493);
            v2510 = vmovn_s32(v2493);
            v250 = v239 & 0x7FFFFFF8;
            v2511 = vuzp1q_s16(v2490, v2498);
            v2512 = vmovn_s32(v2498);
            v2513 = vuzp1q_s16(v2490, v2499);
            v2514 = vmovn_s32(v2499);
            v2515 = vuzp1q_s16(v2490, v2502);
            v2516 = vmovn_s32(v2502);
            v2517 = vuzp1q_s16(v2490, v2507);
            v2518 = vmovn_s32(v2507);
            v2519 = vuzp1q_s16(v2490, v2508);
            v2520 = vmovn_s32(v2508);
            v2521 = v250;
            v2522 = *a2;
            v2523 = *v4;
            do
            {
              v2524 = *(v2523 + v249);
              v2525 = (v2523 + v249 + v249);
              v2526 = vmlal_high_u16(vmlal_high_u16(vmulq_s32(v2490, vmovl_high_u16(*v2523)), v2509, v2524), v2511, *v2525);
              v2527 = vmlal_u16(vmlal_u16(vmulq_s32(v2490, vmovl_u16(*v2523->i8)), v2510, *v2524.i8), v2512, *v2525->i8);
              v2528 = (v2525 + v249);
              v2529 = vmlal_high_u16(v2526, v2513, *v2528);
              v2530 = vmlal_u16(v2527, v2514, *v2528->i8);
              v2531 = &v2528->i8[v249];
              *v2522++ = vshrn_high_n_s32(vshrn_n_s32(vmlal_u16(vmlal_u16(vmlal_u16(v2530, v2516, *v2531), v2518, *(v2531 + v249)), v2520, *(v2531 + v249 + v249)), 0xFuLL), vmlal_high_u16(vmlal_high_u16(vmlal_high_u16(v2529, v2515, *v2531->i8), v2517, *&v2531->i8[v249]), v2519, *&v2531->i8[v249 + v249]), 0xFuLL);
              ++v2523;
              v2521 -= 8;
            }

            while (v2521);
            if (v250 == v239)
            {
LABEL_139:
              v261 = v240;
              v262 = 14 * v240;
              v3985 = v239;
              v3894 = v242;
              v3913 = v243;
              v263 = v244;
              v3966 = v246;
              v3960 = 14 * v240;
              v264 = 0;
              if (v239 >= 8)
              {
                v2532 = (v243 + 2 * v3921);
                v2533 = v243 + 2 * (v3921 + v239);
                v2534 = &v242->i8[v262];
                v2535 = v242->u64 + v262 + v247;
                v266 = v3938;
                v2536 = &v242->i8[v3938];
                v2537 = v242->u64 + v3938 + v247;
                v2538 = &v242->i8[v246];
                v2539 = v242->u64 + v246 + v247;
                v265 = v3950 * 8;
                v2540 = &v242->i8[v3950 * 8];
                v2541 = &v242->u64[v3950] + v247;
                v2542 = &v242->i8[v244];
                v2543 = v242->u64 + v244 + v247;
                v2544 = &v242->i8[v241];
                v2545 = v242->u64 + v241 + v247;
                v2546 = v242->u64 + v247;
                v2548 = v2532 < v2535 && v2534 < v2533;
                v2550 = v2532 < v2537 && v2536 < v2533;
                v2552 = v2532 < v2539 && v2538 < v2533;
                v2554 = v2532 < v2541 && v2540 < v2533;
                v2556 = v2532 < v2543 && v2542 < v2533;
                v2558 = v2532 < v2545 && v2544 < v2533;
                v2560 = v2532 < v248 + v247 && v248 < v2533;
                v159 = v2532 >= v2546;
                v242 = v3894;
                v2562 = !v159 && v3894 < v2533;
                v2563 = v13 >= v2533 || v2532 >= (v13 + 13);
                if (!v2563 || v2548)
                {
                  v4 = v3982;
                  v243 = v3913;
                  v240 = v3943;
                  v246 = v3966;
                }

                else
                {
                  v4 = v3982;
                  v243 = v3913;
                  v240 = v3943;
                  v246 = v3966;
                  if (!v2550 && !v2552 && !v2554 && !v2556 && !v2558 && !v2560 && (v2562 & 1) == 0)
                  {
                    v2564 = v13;
                    v2565 = vld1_dup_s16(v2564++);
                    v2566 = vld1_dup_s16(v2564);
                    v2567 = vaddl_u16(v2566, v2565);
                    v2568 = (v13 + 2);
                    v2569 = vld1_dup_s16(v2568);
                    v2570 = vaddw_u16(v2567, v2569);
                    v2571 = (v13 + 3);
                    v2572 = vld1_dup_s16(v2571);
                    v2573 = vaddw_u16(v2570, v2572);
                    v2574 = (v13 + 4);
                    v2575 = vld1_dup_s16(v2574);
                    v2576 = vaddw_u16(v2573, v2575);
                    v2577 = (v13 + 5);
                    v2578 = vld1_dup_s16(v2577);
                    v2579 = vaddw_u16(v2576, v2578);
                    v2580 = (v13 + 6);
                    v2581 = vld1_dup_s16(v2580);
                    v2582 = vmovl_u16(v2581);
                    v2583 = (v13 + 7);
                    v2584 = vld1_dup_s16(v2583);
                    v2585 = vmovl_u16(v2584);
                    v2586 = (v13 + 8);
                    v2587 = vld1_dup_s16(v2586);
                    v2588 = vmovl_u16(v2587);
                    v2589 = (v13 + 9);
                    v2590 = vld1_dup_s16(v2589);
                    v2591 = vmovl_u16(v2590);
                    v2592 = (v13 + 10);
                    v2593 = vld1_dup_s16(v2592);
                    v2594 = vmovl_u16(v2593);
                    v2595 = (v13 + 11);
                    v2596 = vld1_dup_s16(v2595);
                    v2597 = vmovl_u16(v2596);
                    v2598 = (v13 + 12);
                    v2599 = vld1_dup_s16(v2598);
                    v2600 = vmovl_u16(v2599);
                    v2601 = vuzp1q_s16(v2579, v2582);
                    v2602 = vmovn_s32(v2582);
                    v264 = v239 & 0x7FFFFFF8;
                    v2603 = vuzp1q_s16(v2579, v2585);
                    v2604 = vmovn_s32(v2585);
                    v2605 = vuzp1q_s16(v2579, v2588);
                    v2606 = vmovn_s32(v2588);
                    v2607 = vuzp1q_s16(v2579, v2591);
                    v2608 = vmovn_s32(v2591);
                    v2609 = vuzp1q_s16(v2579, v2594);
                    v2610 = vmovn_s32(v2594);
                    v2611 = vuzp1q_s16(v2579, v2597);
                    v2612 = vmovn_s32(v2597);
                    v2613 = vuzp1q_s16(v2579, v2600);
                    v2614 = vmovn_s32(v2600);
                    v2615 = v264;
                    v2616 = v3894;
                    do
                    {
                      v2617 = *(v2616 + v249);
                      v2618 = vmlal_high_u16(vmulq_s32(v2579, vmovl_high_u16(*v2616)), v2601, v2617);
                      v2619 = vmlal_u16(vmulq_s32(v2579, vmovl_u16(*v2616->i8)), v2602, *v2617.i8);
                      v2620 = &v2616->i8[v249 + v249];
                      v2621 = *v2620->i8;
                      v2622 = vmlal_u16(v2619, v2604, *v2620);
                      v2623 = (v2620 + v249);
                      v2624 = vmlal_high_u16(vmlal_high_u16(v2618, v2603, v2621), v2605, *v2623);
                      v2625 = vmlal_u16(v2622, v2606, *v2623->i8);
                      v2626 = (v2623 + v249);
                      v2627 = vmlal_high_u16(v2624, v2607, *v2626);
                      v2628 = vmlal_u16(v2625, v2608, *v2626->i8);
                      v2629 = &v2626->i8[v249];
                      *v2532++ = vshrn_high_n_s32(vshrn_n_s32(vmlal_u16(vmlal_u16(vmlal_u16(v2628, v2610, *v2629), v2612, *(v2629 + v249)), v2614, *(v2629 + v249 + v249)), 0xFuLL), vmlal_high_u16(vmlal_high_u16(vmlal_high_u16(v2627, v2609, *v2629->i8), v2611, *&v2629->i8[v249]), v2613, *&v2629->i8[v249 + v249]), 0xFuLL);
                      ++v2616;
                      v2615 -= 8;
                    }

                    while (v2615);
                    if (v264 == v239)
                    {
LABEL_143:
                      v275 = 4 * v3921;
                      if (v239 >= 8)
                      {
                        v276 = 0;
                        v2630 = (v243 + v275);
                        v2631 = v243 + v275 + v247;
                        v2633 = v243 + v275 < v242[v261].u64 + v247 && &v242[v261] < v2631;
                        v2634 = &v242->i8[v244];
                        v2636 = v2630 < &v242->i8[v3960 + v247] && v242->u64 + v3960 < v2631;
                        v2638 = v2630 < &v242->i8[v266 + v247] && v242->u64 + v266 < v2631;
                        v2639 = &v242->i8[v241];
                        v2641 = v2630 < &v242->i8[v246 + v247] && v242->u64 + v246 < v2631;
                        v2643 = v2630 < &v242->i8[v265 + v247] && v242->u64 + v265 < v2631;
                        v2645 = v2630 < &v2634[v247] && v2634 < v2631;
                        v2647 = v2630 < &v2639[v247] && v2639 < v2631;
                        v2649 = v2630 < v248 + v247 && v248 < v2631;
                        v2651 = v2630 < &v242->i8[v247] && v242 < v2631;
                        v2652 = v13 >= v2631 || v2630 >= (v13 + 13);
                        if (!v2652 || v2633)
                        {
                          v243 = v3913;
                          v240 = v3943;
                          v246 = v3966;
                        }

                        else
                        {
                          v243 = v3913;
                          v246 = v3966;
                          if (v2636 || v2638 || v2641 || v2643 || v2645 || v2647 || v2649)
                          {
                            v240 = v3943;
                          }

                          else
                          {
                            v240 = v3943;
                            if (!v2651)
                            {
                              v2653 = v13;
                              v2654 = vld1_dup_s16(v2653++);
                              v2655 = vld1_dup_s16(v2653);
                              v2656 = vaddl_u16(v2655, v2654);
                              v2657 = (v13 + 2);
                              v2658 = vld1_dup_s16(v2657);
                              v2659 = vaddw_u16(v2656, v2658);
                              v2660 = (v13 + 3);
                              v2661 = vld1_dup_s16(v2660);
                              v2662 = vaddw_u16(v2659, v2661);
                              v2663 = (v13 + 4);
                              v2664 = vld1_dup_s16(v2663);
                              v2665 = vaddw_u16(v2662, v2664);
                              v2666 = (v13 + 5);
                              v2667 = vld1_dup_s16(v2666);
                              v2668 = vmovl_u16(v2667);
                              v2669 = (v13 + 6);
                              v2670 = vld1_dup_s16(v2669);
                              v2671 = vmovl_u16(v2670);
                              v2672 = (v13 + 7);
                              v2673 = vld1_dup_s16(v2672);
                              v2674 = vmovl_u16(v2673);
                              v2675 = (v13 + 8);
                              v2676 = vld1_dup_s16(v2675);
                              v2677 = vmovl_u16(v2676);
                              v2678 = (v13 + 9);
                              v2679 = vld1_dup_s16(v2678);
                              v2680 = vmovl_u16(v2679);
                              v2681 = (v13 + 10);
                              v2682 = vld1_dup_s16(v2681);
                              v2683 = vmovl_u16(v2682);
                              v2684 = (v13 + 11);
                              v2685 = vld1_dup_s16(v2684);
                              v2686 = vmovl_u16(v2685);
                              v2687 = (v13 + 12);
                              v2688 = vld1_dup_s16(v2687);
                              v2689 = vmovl_u16(v2688);
                              v2690 = vuzp1q_s16(v2665, v2668);
                              v2691 = vmovn_s32(v2668);
                              v276 = v239 & 0x7FFFFFF8;
                              v2692 = vuzp1q_s16(v2665, v2671);
                              v2693 = vmovn_s32(v2671);
                              v2694 = vuzp1q_s16(v2665, v2674);
                              v2695 = vmovn_s32(v2674);
                              v2696 = vuzp1q_s16(v2665, v2677);
                              v2697 = vmovn_s32(v2677);
                              v2698 = vuzp1q_s16(v2665, v2680);
                              v2699 = vmovn_s32(v2680);
                              v2700 = vuzp1q_s16(v2665, v2683);
                              v2701 = vmovn_s32(v2683);
                              v2702 = vuzp1q_s16(v2665, v2686);
                              v2703 = vmovn_s32(v2686);
                              v2704 = vuzp1q_s16(v2665, v2689);
                              v2705 = vmovn_s32(v2689);
                              v2706 = v276;
                              v2707 = v242;
                              do
                              {
                                v2708 = *(v2707 + v249);
                                v2709 = (v2707 + v249 + v249);
                                v2710 = vmlal_high_u16(vmlal_high_u16(vmulq_s32(v2665, vmovl_high_u16(*v2707)), v2690, v2708), v2692, *v2709);
                                v2711 = vmlal_u16(vmlal_u16(vmulq_s32(v2665, vmovl_u16(*v2707->i8)), v2691, *v2708.i8), v2693, *v2709->i8);
                                v2712 = &v2709->i8[v249];
                                v2713 = *v2712->i8;
                                v2714 = vmlal_u16(v2711, v2695, *v2712);
                                v2715 = (v2712 + v249);
                                v2716 = vmlal_high_u16(vmlal_high_u16(v2710, v2694, v2713), v2696, *v2715);
                                v2717 = vmlal_u16(v2714, v2697, *v2715->i8);
                                v2718 = (v2715 + v249);
                                v2719 = vmlal_high_u16(v2716, v2698, *v2718);
                                v2720 = vmlal_u16(v2717, v2699, *v2718->i8);
                                v2721 = &v2718->i8[v249];
                                *v2630++ = vshrn_high_n_s32(vshrn_n_s32(vmlal_u16(vmlal_u16(vmlal_u16(v2720, v2701, *v2721), v2703, *(v2721 + v249)), v2705, *(v2721 + v249 + v249)), 0xFuLL), vmlal_high_u16(vmlal_high_u16(vmlal_high_u16(v2719, v2700, *v2721->i8), v2702, *&v2721->i8[v249]), v2704, *&v2721->i8[v249 + v249]), 0xFuLL);
                                ++v2707;
                                v2706 -= 8;
                              }

                              while (v2706);
                              if (v276 == v239)
                              {
LABEL_147:
                                v288 = 6 * v3921;
                                v289 = 18 * v240;
                                if (v239 >= 8)
                                {
                                  v290 = 0;
                                  v2722 = (v243 + v288);
                                  v2723 = v243 + v288 + v247;
                                  v2724 = &v242->i8[v246];
                                  v2725 = &v242->i8[v265];
                                  v2727 = v2722 < &v242->i8[v289 + v247] && v242->u64 + v289 < v2723;
                                  v2729 = v2722 < &v242[v261].i8[v247] && &v242[v261] < v2723;
                                  v2730 = &v242->i8[v244];
                                  v2732 = v2722 < &v242->i8[v3960 + v247] && v242->u64 + v3960 < v2723;
                                  v2734 = v2722 < &v242->i8[v266 + v247] && v242->u64 + v266 < v2723;
                                  v2735 = &v242->i8[v241];
                                  v2737 = v2722 < &v2724[v247] && v2724 < v2723;
                                  v2739 = v2722 < &v2725[v247] && v2725 < v2723;
                                  v2741 = v2722 < &v2730[v247] && v2730 < v2723;
                                  v2743 = v2722 < &v2735[v247] && v2735 < v2723;
                                  v2745 = v2722 < v248 + v247 && v248 < v2723;
                                  v2747 = v2722 < &v242->i8[v247] && v242 < v2723;
                                  v2748 = v13 >= v2723 || v2722 >= (v13 + 13);
                                  if (!v2748 || v2727)
                                  {
                                    v4 = v3982;
                                    v243 = v3913;
                                    v240 = v3943;
                                  }

                                  else
                                  {
                                    v4 = v3982;
                                    v243 = v3913;
                                    if (v2729 || v2732 || v2734 || v2737 || v2739)
                                    {
                                      v240 = v3943;
                                    }

                                    else
                                    {
                                      v240 = v3943;
                                      if (!v2741 && !v2743 && !v2745 && !v2747)
                                      {
                                        v2749 = v13;
                                        v2750 = vld1_dup_s16(v2749++);
                                        v2751 = vld1_dup_s16(v2749);
                                        v2752 = vaddl_u16(v2751, v2750);
                                        v2753 = (v13 + 2);
                                        v2754 = vld1_dup_s16(v2753);
                                        v2755 = vaddw_u16(v2752, v2754);
                                        v2756 = (v13 + 3);
                                        v2757 = vld1_dup_s16(v2756);
                                        v2758 = vaddw_u16(v2755, v2757);
                                        v2759 = (v13 + 4);
                                        v2760 = vld1_dup_s16(v2759);
                                        v2761 = vmovl_u16(v2760);
                                        v2762 = (v13 + 5);
                                        v2763 = vld1_dup_s16(v2762);
                                        v2764 = vmovl_u16(v2763);
                                        v2765 = (v13 + 6);
                                        v2766 = vld1_dup_s16(v2765);
                                        v2767 = vmovl_u16(v2766);
                                        v2768 = (v13 + 7);
                                        v2769 = vld1_dup_s16(v2768);
                                        v2770 = vmovl_u16(v2769);
                                        v2771 = (v13 + 8);
                                        v2772 = vld1_dup_s16(v2771);
                                        v2773 = vmovl_u16(v2772);
                                        v2774 = (v13 + 9);
                                        v2775 = vld1_dup_s16(v2774);
                                        v2776 = vmovl_u16(v2775);
                                        v2777 = (v13 + 10);
                                        v2778 = vld1_dup_s16(v2777);
                                        v2779 = vmovl_u16(v2778);
                                        v2780 = (v13 + 11);
                                        v2781 = vld1_dup_s16(v2780);
                                        v2782 = vmovl_u16(v2781);
                                        v2783 = (v13 + 12);
                                        v2784 = vld1_dup_s16(v2783);
                                        v2785 = vmovl_u16(v2784);
                                        v2786 = vuzp1q_s16(v2758, v2761);
                                        v2787 = vmovn_s32(v2761);
                                        v290 = v239 & 0x7FFFFFF8;
                                        v2788 = vuzp1q_s16(v2758, v2764);
                                        v2789 = vmovn_s32(v2764);
                                        v2790 = vuzp1q_s16(v2758, v2767);
                                        v2791 = vmovn_s32(v2767);
                                        v2792 = vuzp1q_s16(v2758, v2770);
                                        v2793 = vmovn_s32(v2770);
                                        v2794 = vuzp1q_s16(v2758, v2773);
                                        v2795 = vmovn_s32(v2773);
                                        v2796 = vuzp1q_s16(v2758, v2776);
                                        v2797 = vmovn_s32(v2776);
                                        v2798 = vuzp1q_s16(v2758, v2779);
                                        v2799 = vmovn_s32(v2779);
                                        v2800 = vuzp1q_s16(v2758, v2782);
                                        v2801 = vmovn_s32(v2782);
                                        v2802 = vuzp1q_s16(v2758, v2785);
                                        v2803 = vmovn_s32(v2785);
                                        v2804 = v290;
                                        v2805 = v242;
                                        do
                                        {
                                          v2806 = *(v2805 + v249);
                                          v2807 = (v2805 + v249 + v249);
                                          v2808 = vmlal_high_u16(vmlal_high_u16(vmulq_s32(v2758, vmovl_high_u16(*v2805)), v2786, v2806), v2788, *v2807);
                                          v2809 = vmlal_u16(vmlal_u16(vmulq_s32(v2758, vmovl_u16(*v2805->i8)), v2787, *v2806.i8), v2789, *v2807->i8);
                                          v2810 = (v2807 + v249);
                                          v2811 = vmlal_high_u16(v2808, v2790, *v2810);
                                          v2812 = vmlal_u16(v2809, v2791, *v2810->i8);
                                          v2813 = &v2810->i8[v249];
                                          v2814 = *v2813->i8;
                                          v2815 = vmlal_u16(v2812, v2793, *v2813);
                                          v2816 = (v2813 + v249);
                                          v2817 = vmlal_high_u16(vmlal_high_u16(v2811, v2792, v2814), v2794, *v2816);
                                          v2818 = vmlal_u16(v2815, v2795, *v2816->i8);
                                          v2819 = (v2816 + v249);
                                          v2820 = vmlal_high_u16(v2817, v2796, *v2819);
                                          v2821 = vmlal_u16(v2818, v2797, *v2819->i8);
                                          v2822 = &v2819->i8[v249];
                                          *v2722++ = vshrn_high_n_s32(vshrn_n_s32(vmlal_u16(vmlal_u16(vmlal_u16(v2821, v2799, *v2822), v2801, *(v2822 + v249)), v2803, *(v2822 + v249 + v249)), 0xFuLL), vmlal_high_u16(vmlal_high_u16(vmlal_high_u16(v2820, v2798, *v2822->i8), v2800, *&v2822->i8[v249]), v2802, *&v2822->i8[v249 + v249]), 0xFuLL);
                                          ++v2805;
                                          v2804 -= 8;
                                        }

                                        while (v2804);
                                        if (v290 == v239)
                                        {
LABEL_151:
                                          v304 = 8 * v3921;
                                          v305 = 20 * v240;
                                          v306 = v239;
                                          if (v239 >= 8)
                                          {
                                            v307 = 0;
                                            v2823 = (v243 + v304);
                                            v2824 = v243 + v304 + v247;
                                            v2825 = &v242->i8[v266];
                                            v2826 = v242->u64 + v266 + v247;
                                            v2828 = v243 + v304 < v242->u64 + v305 + v247 && v242->u64 + v305 < v2824;
                                            v2829 = &v3894->i8[v265];
                                            v2831 = v2823 < &v242->i8[v289 + v247] && v242->u64 + v289 < v2824;
                                            v2833 = v2823 < &v242[v261].i8[v247] && &v242[v261] < v2824;
                                            v2834 = &v3894->i8[v263];
                                            v2836 = v2823 < &v242->i8[v3960 + v247] && v242->u64 + v3960 < v2824;
                                            v2838 = v2823 < v2826 && v2825 < v2824;
                                            v2839 = &v3894->i8[v241];
                                            v2840 = v2823 >= &v3894->i8[v3966 + v247] || v3894->u64 + v3966 >= v2824;
                                            v242 = v3894;
                                            v2841 = !v2840;
                                            v2843 = v2823 < &v2829[v247] && v2829 < v2824;
                                            v2845 = v2823 < &v2834[v247] && v2834 < v2824;
                                            v2847 = v2823 < &v2839[v247] && v2839 < v2824;
                                            v2849 = v2823 < v248 + v247 && v248 < v2824;
                                            v2851 = v2823 < &v3894->i8[v247] && v3894 < v2824;
                                            v2852 = v13 >= v2824 || v2823 >= (v13 + 13);
                                            if (!v2852 || v2828 || v2831 || v2833 || v2836)
                                            {
                                              v4 = v3982;
                                              v306 = v239;
                                              v243 = v3913;
                                              v240 = v3943;
                                            }

                                            else
                                            {
                                              v240 = v3943;
                                              if (v2838 || (v2841 & 1) != 0 || v2843)
                                              {
                                                v4 = v3982;
                                                v306 = v239;
                                                v243 = v3913;
                                              }

                                              else
                                              {
                                                v306 = v239;
                                                if (v2845)
                                                {
                                                  v4 = v3982;
                                                  v243 = v3913;
                                                }

                                                else
                                                {
                                                  v243 = v3913;
                                                  if (v2847 || v2849)
                                                  {
                                                    v4 = v3982;
                                                  }

                                                  else
                                                  {
                                                    v4 = v3982;
                                                    if (!v2851)
                                                    {
                                                      v2853 = v13;
                                                      v2854 = vld1_dup_s16(v2853++);
                                                      v2855 = vld1_dup_s16(v2853);
                                                      v2856 = vaddl_u16(v2855, v2854);
                                                      v2857 = (v13 + 2);
                                                      v2858 = vld1_dup_s16(v2857);
                                                      v2859 = vaddw_u16(v2856, v2858);
                                                      v2860 = (v13 + 3);
                                                      v2861 = vld1_dup_s16(v2860);
                                                      v2862 = vmovl_u16(v2861);
                                                      v2863 = (v13 + 4);
                                                      v2864 = vld1_dup_s16(v2863);
                                                      v2865 = vmovl_u16(v2864);
                                                      v2866 = (v13 + 5);
                                                      v2867 = vld1_dup_s16(v2866);
                                                      v2868 = vmovl_u16(v2867);
                                                      v2869 = (v13 + 6);
                                                      v2870 = vld1_dup_s16(v2869);
                                                      v2871 = vmovl_u16(v2870);
                                                      v2872 = (v13 + 7);
                                                      v2873 = vld1_dup_s16(v2872);
                                                      v2874 = vmovl_u16(v2873);
                                                      v2875 = (v13 + 8);
                                                      v2876 = vld1_dup_s16(v2875);
                                                      v2877 = vmovl_u16(v2876);
                                                      v2878 = (v13 + 9);
                                                      v2879 = vld1_dup_s16(v2878);
                                                      v2880 = vmovl_u16(v2879);
                                                      v2881 = (v13 + 10);
                                                      v2882 = vld1_dup_s16(v2881);
                                                      v2883 = vmovl_u16(v2882);
                                                      v2884 = (v13 + 11);
                                                      v2885 = vld1_dup_s16(v2884);
                                                      v2886 = vmovl_u16(v2885);
                                                      v2887 = (v13 + 12);
                                                      v2888 = vld1_dup_s16(v2887);
                                                      v2889 = vmovl_u16(v2888);
                                                      v2890 = vuzp1q_s16(v2859, v2862);
                                                      v2891 = vmovn_s32(v2862);
                                                      v307 = v239 & 0x7FFFFFF8;
                                                      v2892 = vuzp1q_s16(v2859, v2865);
                                                      v2893 = vmovn_s32(v2865);
                                                      v2894 = vuzp1q_s16(v2859, v2868);
                                                      v2895 = vmovn_s32(v2868);
                                                      v2896 = vuzp1q_s16(v2859, v2871);
                                                      v2897 = vmovn_s32(v2871);
                                                      v2898 = vuzp1q_s16(v2859, v2874);
                                                      v2899 = vmovn_s32(v2874);
                                                      v2900 = vuzp1q_s16(v2859, v2877);
                                                      v2901 = vmovn_s32(v2877);
                                                      v2902 = vuzp1q_s16(v2859, v2880);
                                                      v2903 = vmovn_s32(v2880);
                                                      v2904 = vuzp1q_s16(v2859, v2883);
                                                      v2905 = vmovn_s32(v2883);
                                                      v2906 = vuzp1q_s16(v2859, v2886);
                                                      v2907 = vmovn_s32(v2886);
                                                      v2908 = vuzp1q_s16(v2859, v2889);
                                                      v2909 = vmovn_s32(v2889);
                                                      v2910 = v307;
                                                      v2911 = v3894;
                                                      do
                                                      {
                                                        v2912 = *(v2911 + v249);
                                                        v2913 = vmlal_high_u16(vmulq_s32(v2859, vmovl_high_u16(*v2911)), v2890, v2912);
                                                        v2914 = vmlal_u16(vmulq_s32(v2859, vmovl_u16(*v2911->i8)), v2891, *v2912.i8);
                                                        v2915 = &v2911->i8[v249 + v249];
                                                        v2916 = *v2915->i8;
                                                        v2917 = vmlal_u16(v2914, v2893, *v2915);
                                                        v2918 = (v2915 + v249);
                                                        v2919 = vmlal_high_u16(vmlal_high_u16(v2913, v2892, v2916), v2894, *v2918);
                                                        v2920 = vmlal_u16(v2917, v2895, *v2918->i8);
                                                        v2921 = (v2918 + v249);
                                                        v2922 = vmlal_high_u16(v2919, v2896, *v2921);
                                                        v2923 = vmlal_u16(v2920, v2897, *v2921->i8);
                                                        v2924 = &v2921->i8[v249];
                                                        v2925 = *v2924->i8;
                                                        v2926 = vmlal_u16(v2923, v2899, *v2924);
                                                        v2927 = (v2924 + v249);
                                                        v2928 = vmlal_high_u16(vmlal_high_u16(v2922, v2898, v2925), v2900, *v2927);
                                                        v2929 = vmlal_u16(v2926, v2901, *v2927->i8);
                                                        v2930 = (v2927 + v249);
                                                        v2931 = vmlal_high_u16(v2928, v2902, *v2930);
                                                        v2932 = vmlal_u16(v2929, v2903, *v2930->i8);
                                                        v2933 = &v2930->i8[v249];
                                                        *v2823++ = vshrn_high_n_s32(vshrn_n_s32(vmlal_u16(vmlal_u16(vmlal_u16(v2932, v2905, *v2933), v2907, *(v2933 + v249)), v2909, *(v2933 + v249 + v249)), 0xFuLL), vmlal_high_u16(vmlal_high_u16(vmlal_high_u16(v2931, v2904, *v2933->i8), v2906, *&v2933->i8[v249]), v2908, *&v2933->i8[v249 + v249]), 0xFuLL);
                                                        ++v2911;
                                                        v2910 -= 8;
                                                      }

                                                      while (v2910);
                                                      if (v307 == v239)
                                                      {
LABEL_155:
                                                        v324 = 10 * v3921;
                                                        v325 = 22 * v240;
                                                        if (v306 < 0x10)
                                                        {
                                                          v326 = 0;
                                                          goto LABEL_157;
                                                        }

                                                        v326 = 0;
                                                        v2934 = (v243 + v324);
                                                        v2935 = v243 + v324 + v247;
                                                        v2936 = &v242->i8[v325];
                                                        v2937 = v242->u64 + v325 + v247;
                                                        v2938 = &v242->i8[v305];
                                                        v2939 = v242->u64 + v305 + v247;
                                                        v2940 = &v242->i8[v289];
                                                        v2941 = v242->u64 + v289 + v247;
                                                        v2942 = &v242[v261];
                                                        v2943 = v242[v261].u64 + v247;
                                                        v2944 = &v242->i8[v3960];
                                                        v2945 = v242->u64 + v3960 + v247;
                                                        v2946 = v242;
                                                        v2947 = &v242->i8[v3938];
                                                        v2949 = v2934 < v2937 && v2936 < v2935;
                                                        v2950 = v2946->u64 + v3966;
                                                        v2952 = v2934 < v2939 && v2938 < v2935;
                                                        v2954 = v2934 < v2941 && v2940 < v2935;
                                                        v2955 = &v2946->u64[v3950];
                                                        v2957 = v2934 < v2943 && v2942 < v2935;
                                                        v2959 = v2934 < v2945 && v2944 < v2935;
                                                        v2960 = v2946->u64 + v263;
                                                        v2962 = v2934 < &v2947[v247] && v2947 < v2935;
                                                        v2964 = v2934 < v2950 + v247 && v2950 < v2935;
                                                        v2965 = v2946->u64 + v241;
                                                        v2967 = v2934 < v2955 + v247 && v2955 < v2935;
                                                        v2969 = v2934 < v2960 + v247 && v2960 < v2935;
                                                        v2971 = v2934 < v2965 + v247 && v2965 < v2935;
                                                        v2973 = v2934 < v248 + v247 && v248 < v2935;
                                                        v2975 = v2934 < &v2946->i8[v247] && v2946 < v2935;
                                                        v2976 = v13 >= v2935 || v2934 >= (v13 + 13);
                                                        if (v2976 && !v2949 && !v2952 && !v2954 && !v2957)
                                                        {
                                                          v240 = v3943;
                                                          if (v2959 || v2962)
                                                          {
                                                            v4 = v3982;
                                                            v306 = v239;
                                                          }

                                                          else
                                                          {
                                                            v306 = v239;
                                                            if (!v2964)
                                                            {
                                                              v243 = v3913;
                                                              if (v2967)
                                                              {
                                                                v4 = v3982;
                                                                v242 = v3894;
                                                              }

                                                              else
                                                              {
                                                                v4 = v3982;
                                                                if (v2969 || v2971)
                                                                {
                                                                  v242 = v3894;
                                                                }

                                                                else
                                                                {
                                                                  v242 = v3894;
                                                                  if (!v2973 && !v2975)
                                                                  {
                                                                    v2977 = v13;
                                                                    v2978 = vld1_dup_s16(v2977++);
                                                                    v2979 = vld1_dup_s16(v2977);
                                                                    v65 = vaddl_u16(v2979, v2978);
                                                                    v2980 = (v13 + 2);
                                                                    v2981 = vld1_dup_s16(v2980);
                                                                    v2982 = vmovl_u16(v2981);
                                                                    v2983 = (v13 + 3);
                                                                    v2984 = vld1_dup_s16(v2983);
                                                                    v2985 = vmovl_u16(v2984);
                                                                    v2986 = (v13 + 4);
                                                                    v2987 = vld1_dup_s16(v2986);
                                                                    v2988 = vmovl_u16(v2987);
                                                                    v2989 = (v13 + 5);
                                                                    v2990 = vld1_dup_s16(v2989);
                                                                    v2991 = vmovl_u16(v2990);
                                                                    v2992 = (v13 + 6);
                                                                    v2993 = vld1_dup_s16(v2992);
                                                                    v2994 = vmovl_u16(v2993);
                                                                    v2995 = (v13 + 7);
                                                                    v2996 = vld1_dup_s16(v2995);
                                                                    v2997 = vmovl_u16(v2996);
                                                                    v2998 = (v13 + 8);
                                                                    v2999 = vld1_dup_s16(v2998);
                                                                    v3000 = vmovl_u16(v2999);
                                                                    v3001 = (v13 + 9);
                                                                    v3002 = vld1_dup_s16(v3001);
                                                                    v3003 = vmovl_u16(v3002);
                                                                    v3004 = (v13 + 10);
                                                                    v3005 = vld1_dup_s16(v3004);
                                                                    v3006 = vmovl_u16(v3005);
                                                                    v3007 = (v13 + 11);
                                                                    v3008 = vld1_dup_s16(v3007);
                                                                    v3009 = vmovl_u16(v3008);
                                                                    v3010 = (v13 + 12);
                                                                    v3011 = vld1_dup_s16(v3010);
                                                                    v3012 = vmovl_u16(v3011);
                                                                    v3013 = vuzp1q_s16(v65, v2982);
                                                                    v3014 = vmovn_s32(v2982);
                                                                    v326 = v239 & 0x7FFFFFF8;
                                                                    v3015 = vuzp1q_s16(v65, v2985);
                                                                    v3016 = vmovn_s32(v2985);
                                                                    v3017 = vuzp1q_s16(v65, v2988);
                                                                    v3018 = vmovn_s32(v2988);
                                                                    v3019 = vuzp1q_s16(v65, v2991);
                                                                    v3020 = vmovn_s32(v2991);
                                                                    v3021 = vuzp1q_s16(v65, v2994);
                                                                    v3022 = vmovn_s32(v2994);
                                                                    v3023 = vuzp1q_s16(v65, v2997);
                                                                    v3024 = vmovn_s32(v2997);
                                                                    v3025 = vuzp1q_s16(v65, v3000);
                                                                    v3026 = vmovn_s32(v3000);
                                                                    v3027 = vuzp1q_s16(v65, v3003);
                                                                    v3028 = vmovn_s32(v3003);
                                                                    v3029 = vuzp1q_s16(v65, v3006);
                                                                    v3030 = vmovn_s32(v3006);
                                                                    v3031 = vuzp1q_s16(v65, v3009);
                                                                    v3032 = vmovn_s32(v3009);
                                                                    v3033 = vuzp1q_s16(v65, v3012);
                                                                    v3034 = vmovn_s32(v3012);
                                                                    v3035 = v326;
                                                                    v3036 = v3894;
                                                                    do
                                                                    {
                                                                      v3037 = *(v3036 + v249);
                                                                      v3038 = (v3036 + v249 + v249);
                                                                      v3039 = vmlal_high_u16(vmlal_high_u16(vmulq_s32(v65, vmovl_high_u16(*v3036)), v3013, v3037), v3015, *v3038);
                                                                      v3040 = vmlal_u16(vmlal_u16(vmulq_s32(v65, vmovl_u16(*v3036->i8)), v3014, *v3037.i8), v3016, *v3038->i8);
                                                                      v3041 = &v3038->i8[v249];
                                                                      v3042 = *v3041->i8;
                                                                      v3043 = vmlal_u16(v3040, v3018, *v3041);
                                                                      v3044 = (v3041 + v249);
                                                                      v3045 = vmlal_high_u16(vmlal_high_u16(v3039, v3017, v3042), v3019, *v3044);
                                                                      v3046 = vmlal_u16(v3043, v3020, *v3044->i8);
                                                                      v3047 = (v3044 + v249);
                                                                      v3048 = vmlal_high_u16(v3045, v3021, *v3047);
                                                                      v3049 = vmlal_u16(v3046, v3022, *v3047->i8);
                                                                      v3050 = &v3047->i8[v249];
                                                                      v3051 = *v3050->i8;
                                                                      v3052 = vmlal_u16(v3049, v3024, *v3050);
                                                                      v3053 = (v3050 + v249);
                                                                      v3054 = vmlal_high_u16(vmlal_high_u16(v3048, v3023, v3051), v3025, *v3053);
                                                                      v3055 = vmlal_u16(v3052, v3026, *v3053->i8);
                                                                      v3056 = (v3053 + v249);
                                                                      v3057 = vmlal_high_u16(v3054, v3027, *v3056);
                                                                      v3058 = vmlal_u16(v3055, v3028, *v3056->i8);
                                                                      v3059 = &v3056->i8[v249];
                                                                      *v2934++ = vshrn_high_n_s32(vshrn_n_s32(vmlal_u16(vmlal_u16(vmlal_u16(v3058, v3030, *v3059), v3032, *(v3059 + v249)), v3034, *(v3059 + v249 + v249)), 0xFuLL), vmlal_high_u16(vmlal_high_u16(vmlal_high_u16(v3057, v3029, *v3059->i8), v3031, *&v3059->i8[v249]), v3033, *&v3059->i8[v249 + v249]), 0xFuLL);
                                                                      ++v3036;
                                                                      v3035 -= 8;
                                                                    }

                                                                    while (v3035);
                                                                    if (v326 == v239)
                                                                    {
LABEL_159:
                                                                      v3879 = v4 + 3;
                                                                      v3881 = *(v4 + 3);
                                                                      v3930 = v3881 - 6;
                                                                      v3975 = (v3881 - 12);
                                                                      if (v3881 > 12)
                                                                      {
                                                                        v340 = 0;
                                                                        v341 = 2 * v3975;
                                                                        v342 = v3913 + v3921 * (v341 + 10) + v247;
                                                                        v343 = v3894;
                                                                        v344 = v3894->u64 + v3943 * (v341 + 22) + v247;
                                                                        v345 = v3894->u64 + v3943 * (v341 + 20) + v247;
                                                                        v346 = v3894->u64 + v3943 * (v341 + 18) + v247;
                                                                        v347 = v3894->u64 + v3943 * (v341 + 16) + v247;
                                                                        v348 = v3894->u64 + v3943 * (v341 + 14) + v247;
                                                                        v349 = v3894->u64 + v3943 * (v341 + 12) + v247;
                                                                        v350 = v3894->u64 + v3943 * (v341 + 10) + v247;
                                                                        v351 = v3894->u64 + v3943 * (v341 + 8) + v247;
                                                                        v352 = v3894->u64 + v3943 * (v341 + 6) + v247;
                                                                        v353 = v3894->u64 + v3943 * (v341 + 4) + v247;
                                                                        v354 = v3894->u64 + v3943 * (v341 + 2) + v247;
                                                                        v355 = v3913 + 12 * v3921;
                                                                        v357 = v355 < v345 && v3894->u64 + v325 < v342;
                                                                        v359 = v355 < v347 && v3894->u64 + v289 < v342;
                                                                        v360 = &v3894->i8[v263];
                                                                        v362 = v355 < v349 && v3894->u64 + v3960 < v342;
                                                                        v363 = &v3894->i8[v249];
                                                                        v365 = v355 < v351 && v3894->u64 + v3966 < v342;
                                                                        v367 = v355 < v353 && v360 < v342;
                                                                        v369 = v355 < v3894 + 2 * v239 + 2 * v3943 * v3975 && v363 < v342;
                                                                        v371 = v355 < v346 && v3894->u64 + v305 < v342 || v357;
                                                                        v372 = v355 >= v348 || &v3894[v261] >= v342;
                                                                        v373 = &v3894->i8[24 * v3943];
                                                                        if (!v372)
                                                                        {
                                                                          v359 = 1;
                                                                        }

                                                                        v375 = v355 < v350 && v3894->u64 + v3938 < v342 || v362;
                                                                        if (v355 < v352 && &v3894->u64[v3950] < v342)
                                                                        {
                                                                          v365 = 1;
                                                                        }

                                                                        v378 = v355 < v354 && v3894->u64 + v241 < v342 || v367;
                                                                        v380 = v355 < v3894 + 2 * v239 + 2 * v3943 * (v3975 - 1) && v3894 < v342 || v369;
                                                                        v382 = v355 < v344 && v373 < v342 || ((v3921 | v3943) & 0x4000000000000000) != 0;
                                                                        v383 = v355 >= (v13 + 13) || v13 >= v342;
                                                                        v384 = &v3894->i8[22 * v3943];
                                                                        v385 = v382 | v371 | v359 | v375 | v365 | v378 | v380;
                                                                        if (!v383)
                                                                        {
                                                                          v385 = 1;
                                                                        }

                                                                        v3967 = v385;
                                                                        v386 = &v3894->i8[20 * v3943];
                                                                        v387 = &v3894->i8[18 * v3943];
                                                                        v388 = &v3894[v3943];
                                                                        v389 = &v3894->i8[14 * v3943];
                                                                        v390 = &v3894->i8[12 * v3943];
                                                                        v391 = &v3894->i8[10 * v3943];
                                                                        v392 = &v3894->i8[8 * v3943];
                                                                        v393 = &v3894->i8[6 * v3943];
                                                                        v394 = &v3894->i8[4 * v3943];
                                                                        do
                                                                        {
                                                                          if ((v239 < 8) | v3967 & 1)
                                                                          {
                                                                            v395 = 0;
                                                                            v396 = v239;
                                                                          }

                                                                          else
                                                                          {
                                                                            v397 = v13;
                                                                            *v65.i8 = vld1_dup_s16(v397++);
                                                                            v398 = vmovl_u16(*v65.i8);
                                                                            *v65.i8 = vld1_dup_s16(v397);
                                                                            v399 = vmovl_u16(*v65.i8);
                                                                            v400 = (v13 + 2);
                                                                            *v65.i8 = vld1_dup_s16(v400);
                                                                            v401 = vmovl_u16(*v65.i8);
                                                                            v402 = (v13 + 3);
                                                                            *v65.i8 = vld1_dup_s16(v402);
                                                                            v403 = vmovl_u16(*v65.i8);
                                                                            v404 = (v13 + 4);
                                                                            *v65.i8 = vld1_dup_s16(v404);
                                                                            v405 = vmovl_u16(*v65.i8);
                                                                            v406 = (v13 + 5);
                                                                            *v65.i8 = vld1_dup_s16(v406);
                                                                            v407 = vmovl_u16(*v65.i8);
                                                                            v408 = (v13 + 6);
                                                                            *v65.i8 = vld1_dup_s16(v408);
                                                                            v409 = vmovl_u16(*v65.i8);
                                                                            v410 = (v13 + 7);
                                                                            *v65.i8 = vld1_dup_s16(v410);
                                                                            v411 = vmovl_u16(*v65.i8);
                                                                            v412 = (v13 + 8);
                                                                            *v65.i8 = vld1_dup_s16(v412);
                                                                            v413 = vmovl_u16(*v65.i8);
                                                                            v414 = (v13 + 9);
                                                                            *v65.i8 = vld1_dup_s16(v414);
                                                                            v415 = vmovl_u16(*v65.i8);
                                                                            v416 = (v13 + 10);
                                                                            *v65.i8 = vld1_dup_s16(v416);
                                                                            v417 = vmovl_u16(*v65.i8);
                                                                            v418 = (v13 + 11);
                                                                            *v65.i8 = vld1_dup_s16(v418);
                                                                            v419 = vmovl_u16(*v65.i8);
                                                                            v420 = (v13 + 12);
                                                                            *v65.i8 = vld1_dup_s16(v420);
                                                                            v421 = vmovl_u16(*v65.i8);
                                                                            v65 = vuzp1q_s16(v65, v398);
                                                                            v422 = vmovn_s32(v398);
                                                                            v423 = vuzp1q_s16(v65, v399);
                                                                            v424 = vmovn_s32(v399);
                                                                            v425 = vuzp1q_s16(v65, v401);
                                                                            v426 = vmovn_s32(v401);
                                                                            v427 = vuzp1q_s16(v65, v403);
                                                                            v428 = vmovn_s32(v403);
                                                                            v429 = vuzp1q_s16(v65, v405);
                                                                            v430 = vmovn_s32(v405);
                                                                            v431 = vuzp1q_s16(v65, v407);
                                                                            v432 = vmovn_s32(v407);
                                                                            v433 = vuzp1q_s16(v65, v409);
                                                                            v434 = vmovn_s32(v409);
                                                                            v435 = vuzp1q_s16(v65, v411);
                                                                            v436 = vmovn_s32(v411);
                                                                            v437 = vuzp1q_s16(v65, v413);
                                                                            v438 = vmovn_s32(v413);
                                                                            v439 = vuzp1q_s16(v65, v415);
                                                                            v440 = vmovn_s32(v415);
                                                                            v441 = vuzp1q_s16(v65, v417);
                                                                            v442 = vmovn_s32(v417);
                                                                            v443 = vuzp1q_s16(v65, v419);
                                                                            v444 = vmovn_s32(v419);
                                                                            v445 = vuzp1q_s16(v65, v421);
                                                                            v446 = vmovn_s32(v421);
                                                                            v447 = v239 & 0x7FFFFFF8;
                                                                            v448 = v355;
                                                                            v449 = v343;
                                                                            do
                                                                            {
                                                                              v450 = &v449->i8[v249];
                                                                              v451 = *(v449 + v249);
                                                                              v452 = *v449++;
                                                                              v453 = &v450[v249];
                                                                              v454 = vmlal_high_u16(vmlal_high_u16(vmull_high_u16(v423, v451), v65, v452), v425, *v453);
                                                                              v455 = vmlal_u16(vmlal_u16(vmull_u16(v424, *v451.i8), v422, *v452.i8), v426, *v453->i8);
                                                                              v456 = &v453->i8[v249];
                                                                              v457 = vmlal_u16(v455, v428, *v456);
                                                                              v458 = vmlal_high_u16(v454, v427, *v456->i8);
                                                                              v459 = (v456 + v249);
                                                                              v460 = *v459->i8;
                                                                              v461 = vmlal_u16(v457, v430, *v459);
                                                                              v462 = (v459 + v249);
                                                                              v463 = vmlal_u16(v461, v432, *v462);
                                                                              v464 = vmlal_high_u16(vmlal_high_u16(v458, v429, v460), v431, *v462->i8);
                                                                              v465 = (v462 + v249);
                                                                              v466 = vmlal_high_u16(v464, v433, *v465);
                                                                              v467 = vmlal_u16(v463, v434, *v465->i8);
                                                                              v468 = &v465->i8[v249];
                                                                              v469 = *v468->i8;
                                                                              v470 = vmlal_u16(v467, v436, *v468);
                                                                              v471 = (v468 + v249);
                                                                              v472 = vmlal_high_u16(vmlal_high_u16(v466, v435, v469), v437, *v471);
                                                                              v473 = vmlal_u16(v470, v438, *v471->i8);
                                                                              v474 = &v471->i8[v249];
                                                                              v475 = vmlal_u16(v473, v440, *v474);
                                                                              v476 = vmlal_high_u16(v472, v439, *v474->i8);
                                                                              v477 = (v474 + v249);
                                                                              *v448++ = vshrn_high_n_s32(vshrn_n_s32(vmlal_u16(vmlal_u16(vmlal_u16(v475, v442, *v477), v444, *(v477 + v249)), v446, *(v477 + v249 + v249)), 0xFuLL), vmlal_high_u16(vmlal_high_u16(vmlal_high_u16(v476, v441, *v477->i8), v443, *&v477->i8[v249]), v445, *&v477->i8[v249 + v249]), 0xFuLL);
                                                                              v447 -= 8;
                                                                            }

                                                                            while (v447);
                                                                            v395 = v239 & 0x7FFFFFF8;
                                                                            v396 = v239;
                                                                            if (v395 == v239)
                                                                            {
                                                                              goto LABEL_242;
                                                                            }
                                                                          }

                                                                          do
                                                                          {
                                                                            v478.i16[0] = *&v392[2 * v395];
                                                                            v478.i16[1] = *&v391[2 * v395];
                                                                            v478.i16[2] = *&v390[2 * v395];
                                                                            v478.i16[3] = *&v389[2 * v395];
                                                                            v479.i16[0] = v343->i16[v395];
                                                                            v479.i16[1] = *&v363[2 * v395];
                                                                            v479.i16[2] = *&v394[2 * v395];
                                                                            v479.i16[3] = *&v393[2 * v395];
                                                                            *(v355 + 2 * v395) = (vaddvq_s32(vmlal_u16(vmull_u16(*v13, v479), *&vextq_s8(*v13, *v13, 8uLL), v478)) + v13[8] * v388->u16[v395] + v13[10] * *&v386[2 * v395] + v13[9] * *&v387[2 * v395] + v13[12] * *&v373[2 * v395] + v13[11] * *&v384[2 * v395]) >> 15;
                                                                            ++v395;
                                                                          }

                                                                          while (v396 != v395);
LABEL_242:
                                                                          ++v340;
                                                                          v343 = (v343 + v249);
                                                                          v355 += 2 * v3921;
                                                                          v373 += v249;
                                                                          v384 += v249;
                                                                          v386 += v249;
                                                                          v387 += v249;
                                                                          v388 = (v388 + v249);
                                                                          v389 += v249;
                                                                          v390 += v249;
                                                                          v391 += v249;
                                                                          v392 += v249;
                                                                          v393 += v249;
                                                                          v394 += v249;
                                                                          v363 += v249;
                                                                        }

                                                                        while (v340 != v3975);
                                                                      }

                                                                      v1831 = 0;
                                                                      v1832 = &v3894->i8[2 * v3943 * (v3881 - 1)];
                                                                      v1833 = v3881 - 2;
                                                                      v1834 = v3930;
                                                                      v3890 = v1833 + 6;
                                                                      v3900 = v1833 + 5;
                                                                      v3886 = &v3894->i8[2 * v3943 * (v1833 - 1)];
                                                                      v1835 = v13 + 3;
                                                                      v3978 = v1833;
                                                                      v3884 = &v3894->i8[2 * v3943 * v1833];
                                                                      v1836 = 2;
                                                                      v3904 = v3930 - 1;
                                                                      v1837 = v3904;
                                                                      v1838 = v239;
LABEL_1071:
                                                                      v3935 = v1837;
                                                                      if (v1837 >= v3900)
                                                                      {
                                                                        v1839 = v3900;
                                                                      }

                                                                      else
                                                                      {
                                                                        v1839 = v1837;
                                                                      }

                                                                      v1840 = v3904 + v1831;
                                                                      if (v3904 + v1831 >= v3900)
                                                                      {
                                                                        v1841 = v3900;
                                                                      }

                                                                      else
                                                                      {
                                                                        v1841 = v3904 + v1831;
                                                                      }

                                                                      if (v1840 >= v3900)
                                                                      {
                                                                        v1840 = v3900;
                                                                      }

                                                                      v1842 = v3913 + 2 * v1834 * v3921;
                                                                      v3941 = v1831;
                                                                      if (v1834 > v3881 + 4)
                                                                      {
                                                                        v1843 = 0;
                                                                        while (1)
                                                                        {
                                                                          if (v1836 >= 4)
                                                                          {
                                                                            if (v1836 < 0x10)
                                                                            {
                                                                              v1845 = 0;
                                                                              v1846 = 0;
LABEL_1090:
                                                                              v65 = v1845;
                                                                              v1854 = &v13[v1846];
                                                                              v1855 = v1846 - (v1836 & 0xFFFFFFFFFFFFFFFCLL);
                                                                              do
                                                                              {
                                                                                v1856 = *v1854++;
                                                                                v65 = vaddw_u16(v65, v1856);
                                                                                v1855 += 4;
                                                                              }

                                                                              while (v1855);
                                                                              v1845 = vaddvq_s32(v65);
                                                                              v1844 = v1836 & 0x7FFFFFFFFFFFFFFCLL;
                                                                              if (v1836 == (v1836 & 0x7FFFFFFFFFFFFFFCLL))
                                                                              {
                                                                                goto LABEL_1081;
                                                                              }

                                                                              goto LABEL_1093;
                                                                            }

                                                                            v1847 = 0uLL;
                                                                            v1848 = v1836 & 0xFFFFFFFFFFFFFFF0;
                                                                            v1849 = (v13 + 8);
                                                                            v1850 = 0uLL;
                                                                            v1851 = 0uLL;
                                                                            v1852 = 0uLL;
                                                                            do
                                                                            {
                                                                              v1853 = v1849[-1];
                                                                              v1850 = vaddw_high_u16(v1850, v1853);
                                                                              v1847 = vaddw_u16(v1847, *v1853.i8);
                                                                              v1852 = vaddw_high_u16(v1852, *v1849);
                                                                              v1851 = vaddw_u16(v1851, *v1849->i8);
                                                                              v1849 += 2;
                                                                              v1848 -= 16;
                                                                            }

                                                                            while (v1848);
                                                                            v65 = vaddq_s32(vaddq_s32(v1851, v1847), vaddq_s32(v1852, v1850));
                                                                            v1845 = vaddvq_s32(v65);
                                                                            if (v1836 == (v1836 & 0x7FFFFFFFFFFFFFF0))
                                                                            {
                                                                              goto LABEL_1081;
                                                                            }

                                                                            v1846 = v1836 & 0x7FFFFFFFFFFFFFF0;
                                                                            v1844 = v1836 & 0x7FFFFFFFFFFFFFF0;
                                                                            if ((v1836 & 0xC) != 0)
                                                                            {
                                                                              goto LABEL_1090;
                                                                            }
                                                                          }

                                                                          else
                                                                          {
                                                                            v1844 = 0;
                                                                            v1845 = 0;
                                                                          }

                                                                          do
                                                                          {
LABEL_1093:
                                                                            v1845 += v13[v1844++];
                                                                          }

                                                                          while (v1836 != v1844);
LABEL_1081:
                                                                          *(v1842 + 2 * v1843) = (v1845 * *&v1832[2 * v1843]) >> 15;
                                                                          if (++v1843 == v1838)
                                                                          {
                                                                            goto LABEL_1070;
                                                                          }
                                                                        }
                                                                      }

                                                                      v1857 = (v3890 - v1839) & 0xFFFFFFFFFFFFFFFELL;
                                                                      if (v1834 < v3881 - 7)
                                                                      {
                                                                        v1858 = 0;
                                                                        v1859 = v3890 - v1840;
                                                                        v1860 = v3894;
                                                                        v1862 = v3884;
                                                                        v1861 = v3886;
                                                                        while (1)
                                                                        {
                                                                          if (v1859 >= 2)
                                                                          {
                                                                            v1866 = 0;
                                                                            v1867 = 0;
                                                                            v1868 = 0;
                                                                            v1869 = v1857;
                                                                            v1870 = v13 + 1;
                                                                            do
                                                                            {
                                                                              v1871 = *(v1870 - 1);
                                                                              v1872 = *v1870;
                                                                              v1870 += 2;
                                                                              v1867 += v1871 * *&v1862[v1866];
                                                                              v1868 += v1872 * *&v1861[v1866];
                                                                              v1866 -= v241;
                                                                              v1869 -= 2;
                                                                            }

                                                                            while (v1869);
                                                                            v1864 = v1868 + v1867;
                                                                            v1865 = v3978 - (v1859 & 0xFFFFFFFFFFFFFFFELL);
                                                                            v1863 = v1859 & 0xFFFFFFFFFFFFFFFELL;
                                                                            if (v1859 == (v1859 & 0xFFFFFFFFFFFFFFFELL))
                                                                            {
                                                                              goto LABEL_1097;
                                                                            }
                                                                          }

                                                                          else
                                                                          {
                                                                            v1863 = 0;
                                                                            v1864 = 0;
                                                                            v1865 = v3881 - 2;
                                                                          }

                                                                          v1873 = v1865 + 6;
                                                                          v1874 = (v1860->u16 + v249 * v1865);
                                                                          v1875 = &v13[v1863];
                                                                          do
                                                                          {
                                                                            v1876 = *v1875++;
                                                                            v1864 += v1876 * *v1874;
                                                                            --v1873;
                                                                            v1874 = (v1874 - v249);
                                                                          }

                                                                          while (v1873 >= v1834);
LABEL_1097:
                                                                          *(v1842 + 2 * v1858++) = v1864 >> 15;
                                                                          v1862 += 2;
                                                                          v1861 += 2;
                                                                          v1860 = (v1860 + 2);
                                                                          if (v1858 == v1838)
                                                                          {
                                                                            goto LABEL_1070;
                                                                          }
                                                                        }
                                                                      }

                                                                      v1877 = 0;
                                                                      v1878 = v3890 - v1841;
                                                                      v1879 = (v3890 - v1841) & 0xFFFFFFFFFFFFFFFELL;
                                                                      v1880 = v3894;
                                                                      v1882 = v3884;
                                                                      v1881 = v3886;
                                                                      while (1)
                                                                      {
                                                                        if (v1836 < 4)
                                                                        {
                                                                          v1883 = 0;
                                                                          v1884 = 0;
                                                                          do
                                                                          {
LABEL_1119:
                                                                            v1884 += v13[v1883++];
                                                                          }

                                                                          while (v1836 != v1883);
                                                                          goto LABEL_1120;
                                                                        }

                                                                        if (v1836 >= 0x10)
                                                                        {
                                                                          v1886 = 0uLL;
                                                                          v1887 = v1836 & 0xFFFFFFFFFFFFFFF0;
                                                                          v1888 = (v13 + 8);
                                                                          v1889 = 0uLL;
                                                                          v1890 = 0uLL;
                                                                          v1891 = 0uLL;
                                                                          do
                                                                          {
                                                                            v1892 = v1888[-1];
                                                                            v1889 = vaddw_high_u16(v1889, v1892);
                                                                            v1886 = vaddw_u16(v1886, *v1892.i8);
                                                                            v1891 = vaddw_high_u16(v1891, *v1888);
                                                                            v1890 = vaddw_u16(v1890, *v1888->i8);
                                                                            v1888 += 2;
                                                                            v1887 -= 16;
                                                                          }

                                                                          while (v1887);
                                                                          v65 = vaddq_s32(vaddq_s32(v1890, v1886), vaddq_s32(v1891, v1889));
                                                                          v1884 = vaddvq_s32(v65);
                                                                          if (v1836 == (v1836 & 0x7FFFFFFFFFFFFFF0))
                                                                          {
                                                                            goto LABEL_1120;
                                                                          }

                                                                          v1885 = v1836 & 0x7FFFFFFFFFFFFFF0;
                                                                          v1883 = v1836 & 0x7FFFFFFFFFFFFFF0;
                                                                          if ((v1836 & 0xC) == 0)
                                                                          {
                                                                            goto LABEL_1119;
                                                                          }
                                                                        }

                                                                        else
                                                                        {
                                                                          v1884 = 0;
                                                                          v1885 = 0;
                                                                        }

                                                                        v65 = v1884;
                                                                        v1893 = &v13[v1885];
                                                                        v1894 = v1885 - (v1836 & 0xFFFFFFFFFFFFFFFCLL);
                                                                        do
                                                                        {
                                                                          v1895 = *v1893++;
                                                                          v65 = vaddw_u16(v65, v1895);
                                                                          v1894 += 4;
                                                                        }

                                                                        while (v1894);
                                                                        v1884 = vaddvq_s32(v65);
                                                                        v1883 = v1836 & 0x7FFFFFFFFFFFFFFCLL;
                                                                        if (v1836 != (v1836 & 0x7FFFFFFFFFFFFFFCLL))
                                                                        {
                                                                          goto LABEL_1119;
                                                                        }

LABEL_1120:
                                                                        v1896 = v1884 * *&v1832[2 * v1877];
                                                                        if (v1878 >= 2)
                                                                        {
                                                                          v1899 = 0;
                                                                          v1900 = 0;
                                                                          v1901 = v1835;
                                                                          v1902 = v1857;
                                                                          do
                                                                          {
                                                                            v1903 = *(v1901 - 1);
                                                                            v1904 = *v1901;
                                                                            v1901 += 2;
                                                                            v1896 += v1903 * *&v1882[v1899];
                                                                            v1900 += v1904 * *&v1881[v1899];
                                                                            v1899 -= v241;
                                                                            v1902 -= 2;
                                                                          }

                                                                          while (v1902);
                                                                          v1896 += v1900;
                                                                          v1897 = v3978 - v1879;
                                                                          v1898 = v1836 + v1879;
                                                                          if (v1878 == v1879)
                                                                          {
                                                                            goto LABEL_1107;
                                                                          }
                                                                        }

                                                                        else
                                                                        {
                                                                          v1897 = v3881 - 2;
                                                                          v1898 = v1836;
                                                                        }

                                                                        v1905 = v1897 + 6;
                                                                        v1906 = (v1880->u16 + v249 * v1897);
                                                                        v1907 = &v13[v1898];
                                                                        do
                                                                        {
                                                                          v1908 = *v1907++;
                                                                          v1896 += v1908 * *v1906;
                                                                          --v1905;
                                                                          v1906 = (v1906 - v249);
                                                                        }

                                                                        while (v1905 >= v1834);
LABEL_1107:
                                                                        *(v1842 + 2 * v1877++) = v1896 >> 15;
                                                                        v1881 += 2;
                                                                        v1882 += 2;
                                                                        v1880 = (v1880 + 2);
                                                                        v1838 = v3985;
                                                                        if (v1877 == v3985)
                                                                        {
LABEL_1070:
                                                                          ++v1834;
                                                                          ++v1836;
                                                                          v1831 = v3941 + 1;
                                                                          v1837 = v3935 + 1;
                                                                          ++v1835;
                                                                          if (v1834 < v3881)
                                                                          {
                                                                            goto LABEL_1071;
                                                                          }

                                                                          v1909 = v3982;
                                                                          v66 = v3991;
                                                                          v1910 = v3879;
LABEL_1130:
                                                                          if (v3881 < 1)
                                                                          {
                                                                            goto LABEL_2573;
                                                                          }

LABEL_1131:
                                                                          v1911 = 0;
                                                                          v1912 = 0;
                                                                          v1913 = v66 + 2;
                                                                          v1914 = v66 + 3;
                                                                          v1915 = v66 + 4;
                                                                          v1916 = v66 + 5;
                                                                          v1917 = (v66 + 6);
                                                                          v1918 = v13 + 8;
                                                                          while (2)
                                                                          {
                                                                            v1919 = *a2;
                                                                            v1920 = a2[2];
                                                                            v1921 = v1920 * v1912;
                                                                            v1922 = (*a2 + 2 * v1920 * v1912);
                                                                            *v66 = ((v13[1] + *v13 + v13[2] + v13[3] + v13[4] + v13[5] + v13[6]) * *v1922 + v1922[1] * v13[7] + v1922[2] * v13[8] + v1922[3] * v13[9] + v1922[4] * v13[10] + v1922[5] * v13[11] + v1922[6] * v13[12]) >> 15;
                                                                            v66[1] = ((v13[1] + *v13 + v13[2] + v13[3] + v13[4] + v13[5]) * *v1922 + v1922[1] * v13[6] + v1922[2] * v13[7] + v1922[3] * v13[8] + v1922[4] * v13[9] + v1922[5] * v13[10] + v1922[6] * v13[11] + v1922[7] * v13[12]) >> 15;
                                                                            v66[2] = ((v13[1] + *v13 + v13[2] + v13[3] + v13[4]) * *v1922 + v1922[1] * v13[5] + v1922[2] * v13[6] + v1922[3] * v13[7] + v1922[4] * v13[8] + v1922[5] * v13[9] + v1922[6] * v13[10] + v1922[7] * v13[11] + v1922[8] * v13[12]) >> 15;
                                                                            v66[3] = ((v13[1] + *v13 + v13[2] + v13[3]) * *v1922 + v1922[1] * v13[4] + v1922[2] * v13[5] + v1922[3] * v13[6] + v1922[4] * v13[7] + v1922[5] * v13[8] + v1922[6] * v13[9] + v1922[7] * v13[10] + v1922[8] * v13[11] + v1922[9] * v13[12]) >> 15;
                                                                            v66[4] = ((v13[1] + *v13 + v13[2]) * *v1922 + v1922[1] * v13[3] + v1922[2] * v13[4] + v1922[3] * v13[5] + v1922[4] * v13[6] + v1922[5] * v13[7] + v1922[6] * v13[8] + v1922[7] * v13[9] + v1922[8] * v13[10] + v1922[9] * v13[11] + v1922[10] * v13[12]) >> 15;
                                                                            v66[5] = ((v13[1] + *v13) * *v1922 + v1922[1] * v13[2] + v1922[2] * v13[3] + v1922[3] * v13[4] + v1922[4] * v13[5] + v1922[5] * v13[6] + v1922[6] * v13[7] + v1922[7] * v13[8] + v1922[8] * v13[9] + v1922[9] * v13[10] + v1922[10] * v13[11] + v1922[11] * v13[12]) >> 15;
                                                                            v1923 = *(v1909 + 2);
                                                                            if (v1923 > 12)
                                                                            {
                                                                              v1924 = (v1923 - 12);
                                                                              if (v1924 <= 7)
                                                                              {
                                                                                v1925 = 0;
                                                                                goto LABEL_1137;
                                                                              }

                                                                              v1925 = 0;
                                                                              v1943 = v1917 + 2 * v1924;
                                                                              v1945 = v1917 < v1919 + v1920 * 2 * v1912 + 2 * v1924 + 24 && v1922 < v1943;
                                                                              if (v13 < v1943 && v1917 < (v13 + 13))
                                                                              {
LABEL_1137:
                                                                                v1926 = 6;
                                                                                goto LABEL_1138;
                                                                              }

                                                                              v1926 = 6;
                                                                              if (v1945)
                                                                              {
                                                                                goto LABEL_1138;
                                                                              }

                                                                              v1947 = v13;
                                                                              *v65.i8 = vld1_dup_s16(v1947++);
                                                                              v1948 = vld1_dup_s16(v1947);
                                                                              v1949 = vmovl_u16(*v65.i8);
                                                                              v1950 = vmovl_u16(v1948);
                                                                              v1951 = (v13 + 2);
                                                                              *v65.i8 = vld1_dup_s16(v1951);
                                                                              v1952 = vmovl_u16(*v65.i8);
                                                                              v1953 = (v13 + 3);
                                                                              *v65.i8 = vld1_dup_s16(v1953);
                                                                              v1954 = (v13 + 4);
                                                                              v1955 = vld1_dup_s16(v1954);
                                                                              v1956 = vmovl_u16(*v65.i8);
                                                                              v1957 = vmovl_u16(v1955);
                                                                              v1958 = (v13 + 5);
                                                                              *v65.i8 = vld1_dup_s16(v1958);
                                                                              v1959 = vmovl_u16(*v65.i8);
                                                                              v1960 = (v13 + 6);
                                                                              *v65.i8 = vld1_dup_s16(v1960);
                                                                              v1961 = (v13 + 7);
                                                                              v1962 = vld1_dup_s16(v1961);
                                                                              v1963 = vmovl_u16(*v65.i8);
                                                                              v1964 = vmovl_u16(v1962);
                                                                              v1965 = (v13 + 8);
                                                                              *v65.i8 = vld1_dup_s16(v1965);
                                                                              v1966 = vmovl_u16(*v65.i8);
                                                                              v1967 = (v13 + 9);
                                                                              *v65.i8 = vld1_dup_s16(v1967);
                                                                              v1968 = (v13 + 10);
                                                                              v1969 = vld1_dup_s16(v1968);
                                                                              v1970 = vmovl_u16(*v65.i8);
                                                                              v1971 = vmovl_u16(v1969);
                                                                              v1972 = (v13 + 11);
                                                                              *v65.i8 = vld1_dup_s16(v1972);
                                                                              v1973 = vmovl_u16(*v65.i8);
                                                                              v1974 = (v13 + 12);
                                                                              *v65.i8 = vld1_dup_s16(v1974);
                                                                              v1975 = vmovl_u16(*v65.i8);
                                                                              v1976 = vuzp1q_s16(v65, v1949);
                                                                              v1925 = v1924 & 0xFFFFFFF8;
                                                                              v1977 = vmovn_s32(v1949);
                                                                              v1926 = v1925 | 6;
                                                                              v1978 = vmovn_s32(v1950);
                                                                              v1979 = vuzp1q_s16(v1976, v1950);
                                                                              v1980 = v1919 + v1920 * v1911 + 12;
                                                                              v1981 = vuzp1q_s16(v1976, v1952);
                                                                              v1982 = vmovn_s32(v1952);
                                                                              v1983 = vuzp1q_s16(v1976, v1956);
                                                                              v1984 = vmovn_s32(v1956);
                                                                              v1985 = vuzp1q_s16(v1976, v1957);
                                                                              v1986 = vmovn_s32(v1957);
                                                                              v1987 = vuzp1q_s16(v1976, v1959);
                                                                              v1988 = vmovn_s32(v1959);
                                                                              v1989 = vuzp1q_s16(v1976, v1963);
                                                                              v1990 = vmovn_s32(v1963);
                                                                              v1991 = vuzp1q_s16(v1976, v1964);
                                                                              v1992 = vmovn_s32(v1964);
                                                                              v1993 = vuzp1q_s16(v1976, v1966);
                                                                              v1994 = vmovn_s32(v1966);
                                                                              v1995 = vuzp1q_s16(v1976, v1970);
                                                                              v1996 = vmovn_s32(v1970);
                                                                              v1997 = vuzp1q_s16(v1976, v1971);
                                                                              v1998 = vmovn_s32(v1971);
                                                                              v1999 = vuzp1q_s16(v1976, v1973);
                                                                              v2000 = vmovn_s32(v1973);
                                                                              v2001 = vuzp1q_s16(v1976, v1975);
                                                                              v2002 = vmovn_s32(v1975);
                                                                              v2003 = v1917;
                                                                              v2004 = v1925;
                                                                              do
                                                                              {
                                                                                v2005 = *(v1980 - 12);
                                                                                v2006 = *(v1980 - 10);
                                                                                v2007 = vmull_u16(*v2006.i8, v1978);
                                                                                v2008 = vmlal_high_u16(vmull_high_u16(v2006, v1979), v2005, v1976);
                                                                                v2009 = vmlal_u16(v2007, *v2005.i8, v1977);
                                                                                v2010 = *(v1980 - 8);
                                                                                *v2003++ = vshrn_high_n_s32(vshrn_n_s32(vmlal_u16(vmlal_u16(vmlal_u16(vmlal_u16(vmlal_u16(vmlal_u16(vmlal_u16(vmlal_u16(vmlal_u16(vmlal_u16(vmlal_u16(v2009, *v2010.i8, v1982), *(v1980 - 6), v1984), *(v1980 - 4), v1986), *(v1980 - 2), v1988), *v1980, v1990), *(v1980 + 2), v1992), *(v1980 + 4), v1994), *(v1980 + 6), v1996), *(v1980 + 8), v1998), *(v1980 + 10), v2000), *(v1980 + 12), v2002), 0xFuLL), vmlal_high_u16(vmlal_high_u16(vmlal_high_u16(vmlal_high_u16(vmlal_high_u16(vmlal_high_u16(vmlal_high_u16(vmlal_high_u16(vmlal_high_u16(vmlal_high_u16(vmlal_high_u16(v2008, v2010, v1981), *(v1980 - 6), v1983), *(v1980 - 4), v1985), *(v1980 - 2), v1987), *v1980, v1989), *(v1980 + 2), v1991), *(v1980 + 4), v1993), *(v1980 + 6), v1995), *(v1980 + 8), v1997), *(v1980 + 10), v1999), *(v1980 + 12), v2001), 0xFuLL);
                                                                                v1980 += 16;
                                                                                v2004 -= 8;
                                                                              }

                                                                              while (v2004);
                                                                              if (v1925 != v1924)
                                                                              {
LABEL_1138:
                                                                                v1927 = 0;
                                                                                v1928 = &v66[v1926];
                                                                                v1929 = v1919 + v1920 * v1911 + 2 * v1925;
                                                                                v1930 = v1924 - v1925;
                                                                                do
                                                                                {
                                                                                  v1928[v1927 / 2] = (vaddvq_s32(vmlal_u16(vmlal_high_u16(vmull_u16(*(v1929 + v1927), *v13), *(v1929 + v1927), *v13), *(v1929 + v1927 + 16), *(v13 + 8))) + *(v1929 + v1927 + 24) * v13[12]) >> 15;
                                                                                  v1927 += 2;
                                                                                  --v1930;
                                                                                }

                                                                                while (v1930);
                                                                              }

                                                                              v1919 = *a2;
                                                                              v1921 = a2[2] * v1912;
                                                                            }

                                                                            v1931 = v1923 - 6;
                                                                            v1932 = v1923 - 1;
                                                                            v1933 = v1923 - 6;
                                                                            if (v1933 + 6 >= v1923 - 1)
                                                                            {
                                                                              v1935 = v13[1] + *v13;
                                                                              v1934 = 2;
                                                                            }

                                                                            else
                                                                            {
                                                                              v1934 = 0;
                                                                              v1935 = 0;
                                                                            }

                                                                            v1936 = (v1919 + 2 * v1921);
                                                                            v1937 = v1923 - 2;
                                                                            v1938 = v1935 * v1936[v1932];
                                                                            if (v1923 + 4 >= v1931)
                                                                            {
                                                                              v1939 = v1931 - 6;
                                                                              if (v1933 - 6 >= v1937)
                                                                              {
                                                                                v1939 = v1923 - 2;
                                                                              }

                                                                              v1940 = v1937 - v1939 + 1;
                                                                              if (v1940 < 4)
                                                                              {
                                                                                v1941 = v1923 - 2;
                                                                                v1942 = v1934;
                                                                                goto LABEL_1176;
                                                                              }

                                                                              v2011 = 2 * v1921;
                                                                              if (v1940 >= 0x10)
                                                                              {
                                                                                v2012 = v1940 & 0xFFFFFFFFFFFFFFF0;
                                                                                v2013 = 0uLL;
                                                                                v2014 = v1938;
                                                                                v2015 = (v1919 + v2011 + 2 * v1937 - 14);
                                                                                v2016 = &v1918[v1934];
                                                                                v2017 = v1940 & 0xFFFFFFFFFFFFFFF0;
                                                                                v2018 = 0uLL;
                                                                                v2019 = 0uLL;
                                                                                do
                                                                                {
                                                                                  v2020 = vrev64q_s16(*v2015);
                                                                                  v2021 = vextq_s8(v2020, v2020, 8uLL);
                                                                                  v2022 = vrev64q_s16(v2015[-1]);
                                                                                  v2023 = vextq_s8(v2022, v2022, 8uLL);
                                                                                  v2024 = v2016[-1];
                                                                                  v2013 = vmlal_high_u16(v2013, v2024, v2021);
                                                                                  v2014 = vmlal_u16(v2014, *v2024.i8, *v2021.i8);
                                                                                  v2019 = vmlal_high_u16(v2019, *v2016, v2023);
                                                                                  v2018 = vmlal_u16(v2018, *v2016->i8, *v2023.i8);
                                                                                  v2015 -= 2;
                                                                                  v2016 += 2;
                                                                                  v2017 -= 16;
                                                                                }

                                                                                while (v2017);
                                                                                v1938 = vaddvq_s32(vaddq_s32(vaddq_s32(v2018, v2014), vaddq_s32(v2019, v2013)));
                                                                                if (v1940 != v2012)
                                                                                {
                                                                                  if ((v1940 & 0xC) == 0)
                                                                                  {
                                                                                    v1942 = v1934 | v2012;
                                                                                    v1941 = v1937 - v2012;
                                                                                    goto LABEL_1176;
                                                                                  }

                                                                                  goto LABEL_1171;
                                                                                }
                                                                              }

                                                                              else
                                                                              {
                                                                                v2012 = 0;
LABEL_1171:
                                                                                v1941 = v1937 - (v1940 & 0xFFFFFFFFFFFFFFFCLL);
                                                                                v1942 = v1934 | v1940 & 0xFFFFFFFFFFFFFFFCLL;
                                                                                v2025 = v1938;
                                                                                v2026 = &v13[v2012 + v1934];
                                                                                v2027 = v2012 - (v1940 & 0xFFFFFFFFFFFFFFFCLL);
                                                                                v2028 = (v1919 + v2011 + 2 * v1937 - 2 * v2012 - 6);
                                                                                do
                                                                                {
                                                                                  v2029 = *v2028--;
                                                                                  v2030 = vrev64_s16(v2029);
                                                                                  v2031 = *v2026++;
                                                                                  v2025 = vmlal_u16(v2025, v2031, v2030);
                                                                                  v2027 += 4;
                                                                                }

                                                                                while (v2027);
                                                                                v1938 = vaddvq_s32(v2025);
                                                                                if (v1940 != (v1940 & 0xFFFFFFFFFFFFFFFCLL))
                                                                                {
LABEL_1176:
                                                                                  v2032 = v1941 + 1;
                                                                                  v2033 = (v1919 + 2 * v1941 + 2 * v1921);
                                                                                  v2034 = &v13[v1942];
                                                                                  do
                                                                                  {
                                                                                    v2036 = *v2033--;
                                                                                    v2035 = v2036;
                                                                                    v2037 = *v2034++;
                                                                                    v1938 += v2037 * v2035;
                                                                                    --v2032;
                                                                                  }

                                                                                  while (v2032 >= v1933 - 5);
                                                                                }
                                                                              }
                                                                            }

                                                                            v66[v1933] = v1938 >> 15;
                                                                            if (v1933 + 1 < v1923)
                                                                            {
                                                                              if (v1933 + 7 >= v1932)
                                                                              {
                                                                                v2039 = v13[1] + *v13 + v13[2];
                                                                                v2038 = 3;
                                                                              }

                                                                              else
                                                                              {
                                                                                v2038 = 0;
                                                                                v2039 = 0;
                                                                              }

                                                                              v2040 = v2039 * v1936[v1932];
                                                                              v2041 = v1933 - 5;
                                                                              if (v1933 - 5 >= v1937)
                                                                              {
                                                                                v2041 = v1923 - 2;
                                                                              }

                                                                              v2042 = v1937 - v2041 + 1;
                                                                              if (v2042 < 4)
                                                                              {
                                                                                v2043 = v1923 - 2;
                                                                                v2044 = v2038;
                                                                                goto LABEL_1197;
                                                                              }

                                                                              if (v2042 >= 0x10)
                                                                              {
                                                                                v2045 = v2042 & 0xFFFFFFFFFFFFFFF0;
                                                                                v2046 = 0uLL;
                                                                                v2047 = v2040;
                                                                                v2048 = (v1919 + 2 * v1921 + 2 * v1937 - 14);
                                                                                v2049 = &v1918[v2038];
                                                                                v2050 = v2042 & 0xFFFFFFFFFFFFFFF0;
                                                                                v2051 = 0uLL;
                                                                                v2052 = 0uLL;
                                                                                do
                                                                                {
                                                                                  v2053 = vrev64q_s16(*v2048);
                                                                                  v2054 = vextq_s8(v2053, v2053, 8uLL);
                                                                                  v2055 = vrev64q_s16(v2048[-1]);
                                                                                  v2056 = vextq_s8(v2055, v2055, 8uLL);
                                                                                  v2057 = v2049[-1];
                                                                                  v2046 = vmlal_high_u16(v2046, v2057, v2054);
                                                                                  v2047 = vmlal_u16(v2047, *v2057.i8, *v2054.i8);
                                                                                  v2052 = vmlal_high_u16(v2052, *v2049, v2056);
                                                                                  v2051 = vmlal_u16(v2051, *v2049->i8, *v2056.i8);
                                                                                  v2048 -= 2;
                                                                                  v2049 += 2;
                                                                                  v2050 -= 16;
                                                                                }

                                                                                while (v2050);
                                                                                v2040 = vaddvq_s32(vaddq_s32(vaddq_s32(v2051, v2047), vaddq_s32(v2052, v2046)));
                                                                                if (v2042 != v2045)
                                                                                {
                                                                                  if ((v2042 & 0xC) == 0)
                                                                                  {
                                                                                    v2044 = v2038 | v2045;
                                                                                    v2043 = v1937 - v2045;
                                                                                    goto LABEL_1197;
                                                                                  }

                                                                                  goto LABEL_1192;
                                                                                }
                                                                              }

                                                                              else
                                                                              {
                                                                                v2045 = 0;
LABEL_1192:
                                                                                v2043 = v1937 - (v2042 & 0xFFFFFFFFFFFFFFFCLL);
                                                                                v2044 = v2038 | v2042 & 0xFFFFFFFFFFFFFFFCLL;
                                                                                v2058 = v2040;
                                                                                v2059 = &v13[v2045 + v2038];
                                                                                v2060 = v2045 - (v2042 & 0xFFFFFFFFFFFFFFFCLL);
                                                                                v2061 = (v1919 + 2 * v1921 + 2 * v1937 - 2 * v2045 - 6);
                                                                                do
                                                                                {
                                                                                  v2062 = *v2061--;
                                                                                  v2063 = vrev64_s16(v2062);
                                                                                  v2064 = *v2059++;
                                                                                  v2058 = vmlal_u16(v2058, v2064, v2063);
                                                                                  v2060 += 4;
                                                                                }

                                                                                while (v2060);
                                                                                v2040 = vaddvq_s32(v2058);
                                                                                if (v2042 != (v2042 & 0xFFFFFFFFFFFFFFFCLL))
                                                                                {
LABEL_1197:
                                                                                  v2065 = (v1919 + 2 * v2043 + 2 * v1921);
                                                                                  v2066 = &v13[v2044];
                                                                                  v2067 = v2038 + v1937 - v2044 - v2041 + 1;
                                                                                  do
                                                                                  {
                                                                                    v2069 = *v2065--;
                                                                                    v2068 = v2069;
                                                                                    v2070 = *v2066++;
                                                                                    v2040 += v2070 * v2068;
                                                                                    --v2067;
                                                                                  }

                                                                                  while (v2067);
                                                                                }
                                                                              }

                                                                              v66[v1933 + 1] = v2040 >> 15;
                                                                              if (v1933 + 8 >= v1932)
                                                                              {
                                                                                v2072 = vaddvq_s32(vmovl_u16(*v13));
                                                                                v2071 = 4;
                                                                              }

                                                                              else
                                                                              {
                                                                                v2071 = 0;
                                                                                v2072 = 0;
                                                                              }

                                                                              v2073 = v2072 * v1936[v1932];
                                                                              v2074 = v1933 - 3;
                                                                              v2075 = v1933 - 4;
                                                                              if (v1933 - 4 >= v1937)
                                                                              {
                                                                                v2075 = v1923 - 2;
                                                                              }

                                                                              v2076 = v1937 - v2075 + 1;
                                                                              if (v2076 < 4)
                                                                              {
                                                                                v2077 = v1923 - 2;
                                                                                v2078 = v2071;
                                                                                goto LABEL_1217;
                                                                              }

                                                                              if (v2076 >= 0x10)
                                                                              {
                                                                                v2079 = v2076 & 0xFFFFFFFFFFFFFFF0;
                                                                                v2080 = 0uLL;
                                                                                v2081 = v2073;
                                                                                v2082 = (v1919 + 2 * v1921 + 2 * v1937 - 14);
                                                                                v2083 = &v1918[v2071];
                                                                                v2084 = v2076 & 0xFFFFFFFFFFFFFFF0;
                                                                                v2085 = 0uLL;
                                                                                v2086 = 0uLL;
                                                                                do
                                                                                {
                                                                                  v2087 = vrev64q_s16(*v2082);
                                                                                  v2088 = vextq_s8(v2087, v2087, 8uLL);
                                                                                  v2089 = vrev64q_s16(v2082[-1]);
                                                                                  v2090 = vextq_s8(v2089, v2089, 8uLL);
                                                                                  v2091 = v2083[-1];
                                                                                  v2080 = vmlal_high_u16(v2080, v2091, v2088);
                                                                                  v2081 = vmlal_u16(v2081, *v2091.i8, *v2088.i8);
                                                                                  v2086 = vmlal_high_u16(v2086, *v2083, v2090);
                                                                                  v2085 = vmlal_u16(v2085, *v2083->i8, *v2090.i8);
                                                                                  v2082 -= 2;
                                                                                  v2083 += 2;
                                                                                  v2084 -= 16;
                                                                                }

                                                                                while (v2084);
                                                                                v2073 = vaddvq_s32(vaddq_s32(vaddq_s32(v2085, v2081), vaddq_s32(v2086, v2080)));
                                                                                if (v2076 != v2079)
                                                                                {
                                                                                  if ((v2076 & 0xC) == 0)
                                                                                  {
                                                                                    v2078 = v2071 | v2079;
                                                                                    v2077 = v1937 - v2079;
                                                                                    goto LABEL_1217;
                                                                                  }

                                                                                  goto LABEL_1212;
                                                                                }
                                                                              }

                                                                              else
                                                                              {
                                                                                v2079 = 0;
LABEL_1212:
                                                                                v2077 = v1937 - (v2076 & 0xFFFFFFFFFFFFFFFCLL);
                                                                                v2078 = v2071 + (v2076 & 0xFFFFFFFFFFFFFFFCLL);
                                                                                v2092 = v2073;
                                                                                v2093 = &v13[v2079 + v2071];
                                                                                v2094 = v2079 - (v2076 & 0xFFFFFFFFFFFFFFFCLL);
                                                                                v2095 = (v1919 + 2 * v1921 + 2 * v1937 - 2 * v2079 - 6);
                                                                                do
                                                                                {
                                                                                  v2096 = *v2095--;
                                                                                  v2097 = vrev64_s16(v2096);
                                                                                  v2098 = *v2093++;
                                                                                  v2092 = vmlal_u16(v2092, v2098, v2097);
                                                                                  v2094 += 4;
                                                                                }

                                                                                while (v2094);
                                                                                v2073 = vaddvq_s32(v2092);
                                                                                if (v2076 != (v2076 & 0xFFFFFFFFFFFFFFFCLL))
                                                                                {
LABEL_1217:
                                                                                  v2099 = v2077 + 1;
                                                                                  v2100 = (v1919 + 2 * v2077 + 2 * v1921);
                                                                                  v2101 = &v13[v2078];
                                                                                  do
                                                                                  {
                                                                                    v2103 = *v2100--;
                                                                                    v2102 = v2103;
                                                                                    v2104 = *v2101++;
                                                                                    v2073 += v2104 * v2102;
                                                                                    --v2099;
                                                                                  }

                                                                                  while (v2099 >= v2074);
                                                                                }
                                                                              }

                                                                              v1913[v1933] = v2073 >> 15;
                                                                              if (v1933 + 9 >= v1932)
                                                                              {
                                                                                v2106 = vaddvq_s32(vmovl_u16(*v13)) + v13[4];
                                                                                v2105 = 5;
                                                                              }

                                                                              else
                                                                              {
                                                                                v2105 = 0;
                                                                                v2106 = 0;
                                                                              }

                                                                              v2107 = v2106 * v1936[v1932];
                                                                              if (v2074 >= v1937)
                                                                              {
                                                                                v2074 = v1923 - 2;
                                                                              }

                                                                              v2108 = v1937 - v2074 + 1;
                                                                              if (v2108 < 4)
                                                                              {
                                                                                v2109 = v1923 - 2;
                                                                                v2110 = v2105;
                                                                                goto LABEL_1237;
                                                                              }

                                                                              if (v2108 >= 0x10)
                                                                              {
                                                                                v2111 = v2108 & 0xFFFFFFFFFFFFFFF0;
                                                                                v2112 = 0uLL;
                                                                                v2113 = v2107;
                                                                                v2114 = (v1919 + 2 * v1921 + 2 * v1937 - 14);
                                                                                v2115 = &v1918[v2105];
                                                                                v2116 = v2108 & 0xFFFFFFFFFFFFFFF0;
                                                                                v2117 = 0uLL;
                                                                                v2118 = 0uLL;
                                                                                do
                                                                                {
                                                                                  v2119 = vrev64q_s16(*v2114);
                                                                                  v2120 = vextq_s8(v2119, v2119, 8uLL);
                                                                                  v2121 = vrev64q_s16(v2114[-1]);
                                                                                  v2122 = vextq_s8(v2121, v2121, 8uLL);
                                                                                  v2123 = v2115[-1];
                                                                                  v2112 = vmlal_high_u16(v2112, v2123, v2120);
                                                                                  v2113 = vmlal_u16(v2113, *v2123.i8, *v2120.i8);
                                                                                  v2118 = vmlal_high_u16(v2118, *v2115, v2122);
                                                                                  v2117 = vmlal_u16(v2117, *v2115->i8, *v2122.i8);
                                                                                  v2114 -= 2;
                                                                                  v2115 += 2;
                                                                                  v2116 -= 16;
                                                                                }

                                                                                while (v2116);
                                                                                v2107 = vaddvq_s32(vaddq_s32(vaddq_s32(v2117, v2113), vaddq_s32(v2118, v2112)));
                                                                                if (v2108 != v2111)
                                                                                {
                                                                                  if ((v2108 & 0xC) == 0)
                                                                                  {
                                                                                    v2110 = v2105 | v2111;
                                                                                    v2109 = v1937 - v2111;
                                                                                    goto LABEL_1237;
                                                                                  }

                                                                                  goto LABEL_1232;
                                                                                }
                                                                              }

                                                                              else
                                                                              {
                                                                                v2111 = 0;
LABEL_1232:
                                                                                v2109 = v1937 - (v2108 & 0xFFFFFFFFFFFFFFFCLL);
                                                                                v2110 = v2105 + (v2108 & 0xFFFFFFFFFFFFFFFCLL);
                                                                                v2124 = v2107;
                                                                                v2125 = 2 * v2111;
                                                                                v2126 = &v13[v2111 + v2105];
                                                                                v2127 = v2111 - (v2108 & 0xFFFFFFFFFFFFFFFCLL);
                                                                                v2128 = (v1919 + 2 * v1921 + 2 * v1937 - v2125 - 6);
                                                                                do
                                                                                {
                                                                                  v2129 = *v2128--;
                                                                                  v2130 = vrev64_s16(v2129);
                                                                                  v2131 = *v2126++;
                                                                                  v2124 = vmlal_u16(v2124, v2131, v2130);
                                                                                  v2127 += 4;
                                                                                }

                                                                                while (v2127);
                                                                                v2107 = vaddvq_s32(v2124);
                                                                                if (v2108 != (v2108 & 0xFFFFFFFFFFFFFFFCLL))
                                                                                {
LABEL_1237:
                                                                                  v2132 = (v1919 + 2 * v2109 + 2 * v1921);
                                                                                  v2133 = &v13[v2110];
                                                                                  v2134 = v2105 + v1937 - v2110 - v2074 + 1;
                                                                                  do
                                                                                  {
                                                                                    v2136 = *v2132--;
                                                                                    v2135 = v2136;
                                                                                    v2137 = *v2133++;
                                                                                    v2107 += v2137 * v2135;
                                                                                    --v2134;
                                                                                  }

                                                                                  while (v2134);
                                                                                }
                                                                              }

                                                                              v1914[v1933] = v2107 >> 15;
                                                                              if (v1933 + 10 >= v1932)
                                                                              {
                                                                                v2139 = vaddvq_s32(vmovl_u16(*v13)) + v13[4] + v13[5];
                                                                                v2138 = 6;
                                                                              }

                                                                              else
                                                                              {
                                                                                v2138 = 0;
                                                                                v2139 = 0;
                                                                              }

                                                                              v2140 = v2139 * v1936[v1932];
                                                                              v2141 = v1933 - 1;
                                                                              v2142 = v1933 - 2;
                                                                              if (v1933 - 2 >= v1937)
                                                                              {
                                                                                v2142 = v1923 - 2;
                                                                              }

                                                                              v2143 = v1937 - v2142 + 1;
                                                                              if (v2143 < 4)
                                                                              {
                                                                                v2144 = v1923 - 2;
                                                                                v2145 = v2138;
                                                                                goto LABEL_1257;
                                                                              }

                                                                              if (v2143 >= 0x10)
                                                                              {
                                                                                v2146 = v2143 & 0xFFFFFFFFFFFFFFF0;
                                                                                v2147 = 0uLL;
                                                                                v2148 = v2140;
                                                                                v2149 = (v1919 + 2 * v1921 + 2 * v1937 - 14);
                                                                                v2150 = &v1918[v2138];
                                                                                v2151 = v2143 & 0xFFFFFFFFFFFFFFF0;
                                                                                v2152 = 0uLL;
                                                                                v2153 = 0uLL;
                                                                                do
                                                                                {
                                                                                  v2154 = vrev64q_s16(*v2149);
                                                                                  v2155 = vextq_s8(v2154, v2154, 8uLL);
                                                                                  v2156 = vrev64q_s16(v2149[-1]);
                                                                                  v2157 = vextq_s8(v2156, v2156, 8uLL);
                                                                                  v2158 = v2150[-1];
                                                                                  v2147 = vmlal_high_u16(v2147, v2158, v2155);
                                                                                  v2148 = vmlal_u16(v2148, *v2158.i8, *v2155.i8);
                                                                                  v2153 = vmlal_high_u16(v2153, *v2150, v2157);
                                                                                  v2152 = vmlal_u16(v2152, *v2150->i8, *v2157.i8);
                                                                                  v2149 -= 2;
                                                                                  v2150 += 2;
                                                                                  v2151 -= 16;
                                                                                }

                                                                                while (v2151);
                                                                                v2140 = vaddvq_s32(vaddq_s32(vaddq_s32(v2152, v2148), vaddq_s32(v2153, v2147)));
                                                                                if (v2143 != v2146)
                                                                                {
                                                                                  if ((v2143 & 0xC) == 0)
                                                                                  {
                                                                                    v2145 = v2138 | v2146;
                                                                                    v2144 = v1937 - v2146;
                                                                                    goto LABEL_1257;
                                                                                  }

                                                                                  goto LABEL_1252;
                                                                                }
                                                                              }

                                                                              else
                                                                              {
                                                                                v2146 = 0;
LABEL_1252:
                                                                                v2144 = v1937 - (v2143 & 0xFFFFFFFFFFFFFFFCLL);
                                                                                v2145 = v2138 + (v2143 & 0xFFFFFFFFFFFFFFFCLL);
                                                                                v2159 = v2140;
                                                                                v2160 = &v13[v2146 + v2138];
                                                                                v2161 = v2146 - (v2143 & 0xFFFFFFFFFFFFFFFCLL);
                                                                                v2162 = (v1919 + 2 * v1921 + 2 * v1937 - 2 * v2146 - 6);
                                                                                do
                                                                                {
                                                                                  v2163 = *v2162--;
                                                                                  v2164 = vrev64_s16(v2163);
                                                                                  v2165 = *v2160++;
                                                                                  v2159 = vmlal_u16(v2159, v2165, v2164);
                                                                                  v2161 += 4;
                                                                                }

                                                                                while (v2161);
                                                                                v2140 = vaddvq_s32(v2159);
                                                                                if (v2143 != (v2143 & 0xFFFFFFFFFFFFFFFCLL))
                                                                                {
LABEL_1257:
                                                                                  v2166 = v2144 + 1;
                                                                                  v2167 = (v1919 + 2 * v2144 + 2 * v1921);
                                                                                  v2168 = &v13[v2145];
                                                                                  do
                                                                                  {
                                                                                    v2170 = *v2167--;
                                                                                    v2169 = v2170;
                                                                                    v2171 = *v2168++;
                                                                                    v2140 += v2171 * v2169;
                                                                                    --v2166;
                                                                                  }

                                                                                  while (v2166 >= v2141);
                                                                                }
                                                                              }

                                                                              v1915[v1933] = v2140 >> 15;
                                                                              if (v1933 + 11 >= v1932)
                                                                              {
                                                                                v2173 = vaddvq_s32(vmovl_u16(*v13)) + v13[4] + v13[5] + v13[6];
                                                                                v2172 = 7;
                                                                              }

                                                                              else
                                                                              {
                                                                                v2172 = 0;
                                                                                v2173 = 0;
                                                                              }

                                                                              v2174 = v2173 * v1936[v1932];
                                                                              if (v2141 >= v1937)
                                                                              {
                                                                                v2175 = v1923 - 2;
                                                                              }

                                                                              else
                                                                              {
                                                                                v2175 = v1933 - 1;
                                                                              }

                                                                              v2176 = v1937 - v2175 + 1;
                                                                              if (v2176 < 4)
                                                                              {
                                                                                v2177 = v1923 - 2;
                                                                                v2178 = v2172;
                                                                                goto LABEL_1278;
                                                                              }

                                                                              if (v2176 >= 0x10)
                                                                              {
                                                                                v2179 = v2176 & 0xFFFFFFFFFFFFFFF0;
                                                                                v2180 = 0uLL;
                                                                                v2181 = v2174;
                                                                                v2182 = (v1919 + 2 * v1921 + 2 * v1937 - 14);
                                                                                v2183 = &v1918[v2172];
                                                                                v2184 = v2176 & 0xFFFFFFFFFFFFFFF0;
                                                                                v2185 = 0uLL;
                                                                                v2186 = 0uLL;
                                                                                do
                                                                                {
                                                                                  v2187 = vrev64q_s16(*v2182);
                                                                                  v2188 = vextq_s8(v2187, v2187, 8uLL);
                                                                                  v2189 = vrev64q_s16(v2182[-1]);
                                                                                  v2190 = vextq_s8(v2189, v2189, 8uLL);
                                                                                  v2191 = v2183[-1];
                                                                                  v2180 = vmlal_high_u16(v2180, v2191, v2188);
                                                                                  v2181 = vmlal_u16(v2181, *v2191.i8, *v2188.i8);
                                                                                  v2186 = vmlal_high_u16(v2186, *v2183, v2190);
                                                                                  v2185 = vmlal_u16(v2185, *v2183->i8, *v2190.i8);
                                                                                  v2182 -= 2;
                                                                                  v2183 += 2;
                                                                                  v2184 -= 16;
                                                                                }

                                                                                while (v2184);
                                                                                v2174 = vaddvq_s32(vaddq_s32(vaddq_s32(v2185, v2181), vaddq_s32(v2186, v2180)));
                                                                                if (v2176 != v2179)
                                                                                {
                                                                                  if ((v2176 & 0xC) == 0)
                                                                                  {
                                                                                    v2178 = v2172 | v2179;
                                                                                    v2177 = v1937 - v2179;
                                                                                    goto LABEL_1278;
                                                                                  }

                                                                                  goto LABEL_1273;
                                                                                }
                                                                              }

                                                                              else
                                                                              {
                                                                                v2179 = 0;
LABEL_1273:
                                                                                v2177 = v1937 - (v2176 & 0xFFFFFFFFFFFFFFFCLL);
                                                                                v2178 = v2172 + (v2176 & 0xFFFFFFFFFFFFFFFCLL);
                                                                                v2192 = v2174;
                                                                                v2193 = 2 * v2179;
                                                                                v2194 = &v13[v2179 + v2172];
                                                                                v2195 = v2179 - (v2176 & 0xFFFFFFFFFFFFFFFCLL);
                                                                                v2196 = (v1919 + 2 * v1921 + 2 * v1937 - v2193 - 6);
                                                                                do
                                                                                {
                                                                                  v2197 = *v2196--;
                                                                                  v2198 = vrev64_s16(v2197);
                                                                                  v2199 = *v2194++;
                                                                                  v2192 = vmlal_u16(v2192, v2199, v2198);
                                                                                  v2195 += 4;
                                                                                }

                                                                                while (v2195);
                                                                                v2174 = vaddvq_s32(v2192);
                                                                                if (v2176 != (v2176 & 0xFFFFFFFFFFFFFFFCLL))
                                                                                {
LABEL_1278:
                                                                                  v2200 = (v1919 + 2 * v2177 + 2 * v1921);
                                                                                  v2201 = &v13[v2178];
                                                                                  v2202 = v2172 + v1937 - v2178 - v2175 + 1;
                                                                                  do
                                                                                  {
                                                                                    v2204 = *v2200--;
                                                                                    v2203 = v2204;
                                                                                    v2205 = *v2201++;
                                                                                    v2174 += v2205 * v2203;
                                                                                    --v2202;
                                                                                  }

                                                                                  while (v2202);
                                                                                }
                                                                              }

                                                                              v1916[v1933] = v2174 >> 15;
                                                                            }

                                                                            memcpy(v1936, v66, 2 * v1923);
                                                                            v66 = v3991;
                                                                            ++v1912;
                                                                            v1911 += 2;
                                                                            v1909 = v3982;
                                                                            if (v1912 >= *v1910)
                                                                            {
                                                                              goto LABEL_2573;
                                                                            }

                                                                            continue;
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }

LABEL_157:
                                                              v327 = v306 - v326;
                                                              v328 = (v243 + 2 * v326 + v324);
                                                              v329 = v242 + v326;
                                                              do
                                                              {
                                                                v330 = &v329[v240];
                                                                v331 = *v330;
                                                                v332 = &v330[v249 / 2];
                                                                v333.i16[0] = *v332;
                                                                v333.i16[1] = v332[v249 / 2];
                                                                v334 = &v332[v249 / 2 + v249 / 2];
                                                                v333.i16[2] = *v334;
                                                                v335 = &v334[v249 / 2];
                                                                v333.i16[3] = *v335;
                                                                v336 = &v335[v249 / 2];
                                                                v337.i16[0] = *v336;
                                                                v337.i16[1] = v336[v249 / 2];
                                                                v338 = &v336[v249 / 2 + v249 / 2];
                                                                v337.i16[2] = *v338;
                                                                v339 = &v338[v249 / 2];
                                                                v337.i16[3] = *v339;
                                                                v65 = vmlal_u16(vmull_u16(*(v13 + 3), v333), *&vextq_s8(*(v13 + 3), *(v13 + 3), 8uLL), v337);
                                                                *v328++ = (vaddvq_s32(v65) + v13[2] * v331 + v13[11] * v339[v249 / 2] + (v13[1] + *v13) * *v329++ + v13[12] * v339[v249 / 2 + v249 / 2]) >> 15;
                                                                --v327;
                                                              }

                                                              while (v327);
                                                              goto LABEL_159;
                                                            }

                                                            v4 = v3982;
                                                          }

                                                          v242 = v3894;
                                                          v243 = v3913;
                                                          goto LABEL_157;
                                                        }

                                                        v4 = v3982;
                                                        v306 = v239;
                                                        v242 = v3894;
                                                        v243 = v3913;
                                                        v240 = v3943;
                                                        goto LABEL_157;
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }

                                          else
                                          {
                                            v307 = 0;
                                          }

                                          v308 = v306 - v307;
                                          v309 = v307;
                                          v310 = (v243 + v304 + 2 * v307);
                                          v311 = &v242->u16[v309];
                                          do
                                          {
                                            v312 = &v311[v240];
                                            v313 = *v312;
                                            v314 = &v312[v249 / 2];
                                            v315.i16[0] = *v314;
                                            v316 = &v314[v249 / 2];
                                            v315.i16[1] = *v316;
                                            v317 = &v316[v249 / 2];
                                            v315.i16[2] = *v317;
                                            v318 = &v317[v249 / 2];
                                            v315.i16[3] = *v318;
                                            v319 = &v318[v249 / 2];
                                            v320.i16[0] = *v319;
                                            v321 = &v319[v249 / 2];
                                            v320.i16[1] = *v321;
                                            v322 = &v321[v249 / 2];
                                            v320.i16[2] = *v322;
                                            v323 = &v322[v249 / 2];
                                            v320.i16[3] = *v323;
                                            *v310++ = (vaddvq_s32(vmlal_u16(vmull_u16(*(v13 + 4), v315), *&vextq_s8(*(v13 + 4), *(v13 + 4), 8uLL), v320)) + v13[3] * v313 + v13[12] * v323[v249 / 2] + (v13[1] + *v13 + v13[2]) * *v311++) >> 15;
                                            --v308;
                                          }

                                          while (v308);
                                          goto LABEL_155;
                                        }
                                      }
                                    }
                                  }
                                }

                                else
                                {
                                  v290 = 0;
                                }

                                v291 = v239 - v290;
                                v292 = v290;
                                v293 = (v243 + 2 * v290 + v288);
                                v294 = &v242->u16[v292];
                                do
                                {
                                  v295 = &v294[v240];
                                  v296 = *v295;
                                  v297 = &v295[v249 / 2];
                                  v298.i16[0] = *v297;
                                  v298.i16[1] = v297[v249 / 2];
                                  v299 = &v297[v249 / 2 + v249 / 2];
                                  v298.i16[2] = *v299;
                                  v300 = &v299[v249 / 2];
                                  v298.i16[3] = *v300;
                                  v301 = &v300[v249 / 2];
                                  v302.i16[0] = *v301;
                                  v302.i16[1] = v301[v249 / 2];
                                  v303 = &v301[v249 / 2 + v249 / 2];
                                  v302.i16[2] = *v303;
                                  v302.i16[3] = v303[v249 / 2];
                                  *v293++ = (vaddvq_s32(vmlal_u16(vmull_u16(*(v13 + 5), v298), *&vextq_s8(*(v13 + 5), *(v13 + 5), 8uLL), v302)) + v13[4] * v296 + vaddvq_s32(vmovl_u16(*v13)) * *v294++) >> 15;
                                  --v291;
                                }

                                while (v291);
                                goto LABEL_151;
                              }
                            }
                          }
                        }
                      }

                      else
                      {
                        v276 = 0;
                      }

                      v277 = v239 - v276;
                      v278 = v276;
                      v279 = (v243 + v275 + v278 * 2);
                      v280 = &v242->u16[v278];
                      do
                      {
                        v281 = &v280[v240];
                        v282 = *v281;
                        v283 = &v281[v249 / 2];
                        v284 = (vaddvq_s32(vmovl_u16(*v13)) + v13[4]) * *v280 + v13[5] * v282 + v13[6] * *v283;
                        v285 = &v283[v249 / 2 + v249 / 2];
                        v286 = v284 + v13[7] * v283[v249 / 2];
                        LODWORD(v283) = *v285;
                        v287 = &v285[v249 / 2];
                        *v279++ = (v286 + v13[8] * v283 + v13[9] * *v287 + v13[10] * v287[v249 / 2] + v13[11] * v287[v249 / 2 + v249 / 2] + v13[12] * v287[v249 / 2 + v249 / 2 + v249 / 2]) >> 15;
                        ++v280;
                        --v277;
                      }

                      while (v277);
                      goto LABEL_147;
                    }
                  }
                }
              }

              else
              {
                v265 = v3950 * 8;
                v266 = v3938;
              }

              v267 = v239 - v264;
              v268 = v264;
              v269 = (v243 + 2 * v264 + 2 * v3921);
              v270 = &v242->u16[v268];
              do
              {
                v271 = &v270[v240];
                v272 = &v271[v249 / 2 + v249 / 2];
                v273 = (vaddvq_s32(vmovl_u16(*v13)) + v13[4] + v13[5]) * *v270 + v13[6] * *v271 + v13[7] * v271[v249 / 2];
                LODWORD(v271) = *v272;
                v274 = &v272[v249 / 2];
                *v269++ = (v273 + v13[8] * v271 + v13[9] * *v274 + v13[10] * v274[v249 / 2] + v13[11] * v274[v249 / 2 + v249 / 2] + v13[12] * v274[v249 / 2 + v249 / 2 + v249 / 2]) >> 15;
                ++v270;
                --v267;
              }

              while (v267);
              goto LABEL_143;
            }
          }
        }

        else
        {
          v240 = v4[2];
        }
      }

      v251 = v239 - v250;
      v252 = v250;
      v253 = (v243 + 2 * v250);
      v254 = &v242->u16[v252];
      do
      {
        v255 = &v254[v240];
        v256 = *v255;
        v257 = &v255[v249 / 2];
        v258 = (vaddvq_s32(vmovl_u16(*v13)) + v13[4] + v13[5] + v13[6]) * *v254 + v13[7] * v256;
        v259 = *v257;
        v260 = &v257[v249 / 2];
        *v253++ = (v258 + v13[8] * v259 + v13[9] * *v260 + v13[10] * v260[v249 / 2] + v13[11] * v260[v249 / 2 + v249 / 2] + v13[12] * v260[v249 / 2 + v249 / 2 + v249 / 2]) >> 15;
        ++v254;
        --v251;
      }

      while (v251);
      goto LABEL_139;
    }

    v1251 = *(v4 + 2);
    v3963 = v1251;
    if (v1251 <= 0)
    {
      goto LABEL_760;
    }

    v1252 = v4[2];
    v1253 = 4 * v1252;
    v1254 = *v4;
    v1255 = *a2;
    v1256 = 6 * v1252;
    v1257 = v1252;
    v1258 = 10 * v1252;
    v1259 = 2 * v1251;
    v1260 = *v4 + 2 * v1252;
    v1261 = v1252;
    if (v1251 >= 8)
    {
      v1262 = 0;
      v3197 = v1255 + v1259;
      v3199 = v1255 < v1254->u64 + v1258 + v1259 && v1254->u64 + v1258 < v3197;
      v3201 = v1255 < &v1254->u64[v1257] + v1259 && &v1254->u64[v1257] < v3197;
      v3203 = v1255 < v1254->u64 + v1256 + v1259 && v1254->u64 + v1256 < v3197;
      v3205 = v1255 < v1254->u64 + v1253 + v1259 && v1254->u64 + v1253 < v3197;
      v3207 = v1255 < v1260 + v1259 && v1260 < v3197;
      v3209 = v1255 < v1254->u64 + v1259 && v1254 < v3197;
      if ((v13 >= v3197 || v1255 >= (v13 + 11)) && !v3199 && !v3201 && !v3203 && !v3205 && !v3207 && !v3209)
      {
        v3211 = v13;
        v3212 = vld1_dup_s16(v3211++);
        v3213 = vld1_dup_s16(v3211);
        v3214 = (v13 + 2);
        v3215 = vld1_dup_s16(v3214);
        v3216 = vaddw_u16(vaddl_u16(v3213, v3212), v3215);
        v3217 = (v13 + 3);
        v3218 = vld1_dup_s16(v3217);
        v3219 = vaddw_u16(v3216, v3218);
        v3220 = (v13 + 4);
        v3221 = vld1_dup_s16(v3220);
        v3222 = (v13 + 5);
        v3223 = vld1_dup_s16(v3222);
        v3224 = vaddw_u16(vaddw_u16(v3219, v3221), v3223);
        v3225 = (v13 + 6);
        v3226 = vld1_dup_s16(v3225);
        v3227 = vmovl_u16(v3226);
        v3228 = (v13 + 7);
        v3229 = vld1_dup_s16(v3228);
        v3230 = (v13 + 8);
        v3231 = vld1_dup_s16(v3230);
        v3232 = vmovl_u16(v3229);
        v3233 = vmovl_u16(v3231);
        v3234 = (v13 + 9);
        v3235 = vld1_dup_s16(v3234);
        v3236 = vmovl_u16(v3235);
        v3237 = (v13 + 10);
        v3238 = vld1_dup_s16(v3237);
        v3239 = vmovl_u16(v3238);
        v3240 = vuzp1q_s16(v3224, v3227);
        v3241 = vmovn_s32(v3227);
        v1262 = v1251 & 0x7FFFFFF8;
        v3242 = vuzp1q_s16(v3224, v3232);
        v3243 = vmovn_s32(v3232);
        v3244 = vuzp1q_s16(v3224, v3233);
        v3245 = vmovn_s32(v3233);
        v3246 = vuzp1q_s16(v3224, v3236);
        v3247 = vmovn_s32(v3236);
        v3248 = vuzp1q_s16(v3224, v3239);
        v3249 = vmovn_s32(v3239);
        v3250 = v1262;
        v3251 = *a2;
        v3252 = *v4;
        do
        {
          v3253 = *(v3252 + 2 * v1252);
          v3254 = (v3252 + v1261 * 2 + v1261 * 2);
          v3255 = vmlal_high_u16(vmlal_high_u16(vmulq_s32(v3224, vmovl_high_u16(*v3252)), v3240, v3253), v3242, *v3254);
          v3256 = vmlal_u16(vmlal_u16(vmulq_s32(v3224, vmovl_u16(*v3252->i8)), v3241, *v3253.i8), v3243, *v3254->i8);
          v3257 = &v3254->i8[v1261 * 2];
          *v3251++ = vshrn_high_n_s32(vshrn_n_s32(vmlal_u16(vmlal_u16(vmlal_u16(v3256, v3245, *v3257), v3247, *(v3257 + 2 * v1252)), v3249, *(v3257 + 2 * v1252 + 2 * v1252)), 0xFuLL), vmlal_high_u16(vmlal_high_u16(vmlal_high_u16(v3255, v3244, *v3257->i8), v3246, *&v3257->i8[2 * v1252]), v3248, *&v3257->i8[2 * v1252 + 2 * v1252]), 0xFuLL);
          ++v3252;
          v3250 -= 8;
        }

        while (v3250);
        if (v1262 == v1251)
        {
LABEL_744:
          v1270 = a2[2];
          v1271 = 12 * v1252;
          if (v1251 >= 8)
          {
            v1272 = 0;
            v3258 = (v1255 + 2 * v1270);
            v3259 = v1255 + 2 * (v1270 + v1251);
            v3261 = v3258 < &v1254->i8[v1271 + v1259] && v1254->u64 + v1271 < v3259;
            v3263 = v3258 < &v1254->i8[v1258 + v1259] && v1254->u64 + v1258 < v3259;
            v3265 = v3258 < &v1254->i8[v1257 * 8 + v1259] && &v1254->u64[v1257] < v3259;
            v3267 = v3258 < &v1254->i8[v1256 + v1259] && v1254->u64 + v1256 < v3259;
            v3269 = v3258 < &v1254->i8[v1253 + v1259] && v1254->u64 + v1253 < v3259;
            v3271 = v3258 < v1260 + v1259 && v1260 < v3259;
            v3273 = v3258 < &v1254->i8[v1259] && v1254 < v3259;
            if (v13 >= v3259 || v3258 >= (v13 + 11))
            {
              v1256 = 6 * v1252;
              if (!v3261 && !v3263 && !v3265 && !v3267 && !v3269 && !v3271 && !v3273)
              {
                v3275 = v13;
                v3276 = vld1_dup_s16(v3275++);
                v3277 = vld1_dup_s16(v3275);
                v3278 = vaddl_u16(v3277, v3276);
                v3279 = (v13 + 2);
                v3280 = vld1_dup_s16(v3279);
                v3281 = vaddw_u16(v3278, v3280);
                v3282 = (v13 + 3);
                v3283 = vld1_dup_s16(v3282);
                v3284 = vaddw_u16(v3281, v3283);
                v3285 = (v13 + 4);
                v3286 = vld1_dup_s16(v3285);
                v3287 = vaddw_u16(v3284, v3286);
                v3288 = (v13 + 5);
                v3289 = vld1_dup_s16(v3288);
                v3290 = vmovl_u16(v3289);
                v3291 = (v13 + 6);
                v3292 = vld1_dup_s16(v3291);
                v3293 = vmovl_u16(v3292);
                v3294 = (v13 + 7);
                v3295 = vld1_dup_s16(v3294);
                v3296 = vmovl_u16(v3295);
                v3297 = (v13 + 8);
                v3298 = vld1_dup_s16(v3297);
                v3299 = vmovl_u16(v3298);
                v3300 = (v13 + 9);
                v3301 = vld1_dup_s16(v3300);
                v3302 = vmovl_u16(v3301);
                v3303 = (v13 + 10);
                v3304 = vld1_dup_s16(v3303);
                v3305 = vmovl_u16(v3304);
                v3306 = vuzp1q_s16(v3287, v3290);
                v3307 = vmovn_s32(v3290);
                v1272 = v1251 & 0x7FFFFFF8;
                v3308 = vuzp1q_s16(v3287, v3293);
                v3309 = vmovn_s32(v3293);
                v3310 = vuzp1q_s16(v3287, v3296);
                v3311 = vmovn_s32(v3296);
                v3312 = vuzp1q_s16(v3287, v3299);
                v3313 = vmovn_s32(v3299);
                v3314 = vuzp1q_s16(v3287, v3302);
                v3315 = vmovn_s32(v3302);
                v3316 = vuzp1q_s16(v3287, v3305);
                v3317 = vmovn_s32(v3305);
                v3318 = v1272;
                v3319 = v1254;
                do
                {
                  v3320 = *(v3319 + 2 * v1252);
                  v3321 = (v3319 + v1261 * 2 + v1261 * 2);
                  v3322 = vmlal_high_u16(vmlal_high_u16(vmulq_s32(v3287, vmovl_high_u16(*v3319)), v3306, v3320), v3308, *v3321);
                  v3323 = vmlal_u16(vmlal_u16(vmulq_s32(v3287, vmovl_u16(*v3319->i8)), v3307, *v3320.i8), v3309, *v3321->i8);
                  v3324 = (v3321 + v1261 * 2);
                  v3325 = vmlal_high_u16(v3322, v3310, *v3324);
                  v3326 = vmlal_u16(v3323, v3311, *v3324->i8);
                  v3327 = &v3324->i8[v1261 * 2];
                  *v3258++ = vshrn_high_n_s32(vshrn_n_s32(vmlal_u16(vmlal_u16(vmlal_u16(v3326, v3313, *v3327), v3315, *(v3327 + 2 * v1252)), v3317, *(v3327 + 2 * v1252 + 2 * v1252)), 0xFuLL), vmlal_high_u16(vmlal_high_u16(vmlal_high_u16(v3325, v3312, *v3327->i8), v3314, *&v3327->i8[2 * v1252]), v3316, *&v3327->i8[2 * v1252 + 2 * v1252]), 0xFuLL);
                  ++v3319;
                  v3318 -= 8;
                }

                while (v3318);
                if (v1272 == v1251)
                {
LABEL_748:
                  v1283 = 4 * v1270;
                  v1284 = v1252;
                  v1285 = 14 * v1252;
                  v3988 = 4 * v1252;
                  v3976 = v1252;
                  v3972 = 10 * v1252;
                  v3956 = 12 * v1252;
                  if (v1251 < 8)
                  {
                    v1286 = 0;
                    goto LABEL_750;
                  }

                  v1286 = 0;
                  v3328 = (v1255 + v1283);
                  v3329 = v1255 + v1283 + v1259;
                  v3330 = &v1254->i8[v1285];
                  v3331 = v1254->u64 + v1285 + v1259;
                  v3332 = v1256;
                  v3333 = &v1254->i8[v1256];
                  v3335 = v1255 + v1283 < v3331 && v3330 < v3329;
                  v3337 = v3328 < &v1254->i8[v1271 + v1259] && v1254->u64 + v1271 < v3329;
                  v3339 = v3328 < &v1254->i8[v1258 + v1259] && v1254->u64 + v1258 < v3329;
                  v3341 = v3328 < &v1254->i8[v1257 * 8 + v1259] && &v1254->u64[v1257] < v3329;
                  v3343 = v3328 < &v3333[v1259] && v3333 < v3329;
                  v3345 = v3328 < &v1254->i8[v1253 + v1259] && v1254->u64 + v1253 < v3329;
                  v3347 = v3328 < v1260 + v1259 && v1260 < v3329;
                  v3349 = v3328 < &v1254->i8[v1259] && v1254 < v3329;
                  v3350 = v13 >= v3329 || v3328 >= (v13 + 11);
                  if (!v3350 || v3335)
                  {
                    v1256 = v3332;
                    v1285 = 14 * v1252;
                    v1284 = v1252;
                  }

                  else
                  {
                    v1256 = v3332;
                    if (v3337)
                    {
                      v1285 = 14 * v1252;
                      v1284 = v1252;
                    }

                    else
                    {
                      if (!v3339 && !v3341 && !v3343 && !v3345)
                      {
                        v1283 = 4 * v1270;
                        v1285 = 14 * v1252;
                        if (v3347)
                        {
                          v1284 = v1252;
                        }

                        else
                        {
                          v1284 = v1252;
                          if (!v3349)
                          {
                            v3351 = v13;
                            v3352 = vld1_dup_s16(v3351++);
                            v3353 = vld1_dup_s16(v3351);
                            v3354 = vaddl_u16(v3353, v3352);
                            v3355 = (v13 + 2);
                            v3356 = vld1_dup_s16(v3355);
                            v3357 = vaddw_u16(v3354, v3356);
                            v3358 = (v13 + 3);
                            v3359 = vld1_dup_s16(v3358);
                            v3360 = vaddw_u16(v3357, v3359);
                            v3361 = (v13 + 4);
                            v3362 = vld1_dup_s16(v3361);
                            v3363 = vmovl_u16(v3362);
                            v3364 = (v13 + 5);
                            v3365 = vld1_dup_s16(v3364);
                            v3366 = vmovl_u16(v3365);
                            v3367 = (v13 + 6);
                            v3368 = vld1_dup_s16(v3367);
                            v3369 = vmovl_u16(v3368);
                            v3370 = (v13 + 7);
                            v3371 = vld1_dup_s16(v3370);
                            v3372 = vmovl_u16(v3371);
                            v3373 = (v13 + 8);
                            v3374 = vld1_dup_s16(v3373);
                            v3375 = vmovl_u16(v3374);
                            v3376 = (v13 + 9);
                            v3377 = vld1_dup_s16(v3376);
                            v3378 = vmovl_u16(v3377);
                            v3379 = (v13 + 10);
                            v3380 = vld1_dup_s16(v3379);
                            v3381 = vmovl_u16(v3380);
                            v3382 = vuzp1q_s16(v3360, v3363);
                            v3383 = vmovn_s32(v3363);
                            v1286 = v1251 & 0x7FFFFFF8;
                            v3384 = vuzp1q_s16(v3360, v3366);
                            v3385 = vmovn_s32(v3366);
                            v3386 = vuzp1q_s16(v3360, v3369);
                            v3387 = vmovn_s32(v3369);
                            v3388 = vuzp1q_s16(v3360, v3372);
                            v3389 = vmovn_s32(v3372);
                            v3390 = vuzp1q_s16(v3360, v3375);
                            v3391 = vmovn_s32(v3375);
                            v3392 = vuzp1q_s16(v3360, v3378);
                            v3393 = vmovn_s32(v3378);
                            v3394 = vuzp1q_s16(v3360, v3381);
                            v3395 = vmovn_s32(v3381);
                            v3396 = v1286;
                            v3397 = v1254;
                            do
                            {
                              v3398 = *(v3397 + 2 * v1252);
                              v3399 = vmlal_high_u16(vmulq_s32(v3360, vmovl_high_u16(*v3397)), v3382, v3398);
                              v3400 = vmlal_u16(vmulq_s32(v3360, vmovl_u16(*v3397->i8)), v3383, *v3398.i8);
                              v3401 = &v3397->i8[v1261 * 2 + v1261 * 2];
                              v3402 = *v3401->i8;
                              v3403 = vmlal_u16(v3400, v3385, *v3401);
                              v3404 = (v3401 + v1261 * 2);
                              v3405 = vmlal_high_u16(vmlal_high_u16(v3399, v3384, v3402), v3386, *v3404);
                              v3406 = vmlal_u16(v3403, v3387, *v3404->i8);
                              v3407 = (v3404 + v1261 * 2);
                              v3408 = vmlal_high_u16(v3405, v3388, *v3407);
                              v3409 = vmlal_u16(v3406, v3389, *v3407->i8);
                              v3410 = &v3407->i8[v1261 * 2];
                              *v3328++ = vshrn_high_n_s32(vshrn_n_s32(vmlal_u16(vmlal_u16(vmlal_u16(v3409, v3391, *v3410), v3393, *(v3410 + 2 * v1252)), v3395, *(v3410 + 2 * v1252 + 2 * v1252)), 0xFuLL), vmlal_high_u16(vmlal_high_u16(vmlal_high_u16(v3408, v3390, *v3410->i8), v3392, *&v3410->i8[2 * v1252]), v3394, *&v3410->i8[2 * v1252 + 2 * v1252]), 0xFuLL);
                              ++v3397;
                              v3396 -= 8;
                            }

                            while (v3396);
                            if (v1286 == v1251)
                            {
LABEL_752:
                              v1294 = 6 * v1270;
                              if (v1251 >= 8)
                              {
                                v1295 = 0;
                                v3411 = (v1255 + v1294);
                                v3412 = v1255 + v1294 + v1259;
                                v3414 = v1255 + v1294 < v1254[v1284].u64 + v1259 && &v1254[v1284] < v3412;
                                v3415 = &v1254->i8[v1256];
                                v3417 = v3411 < &v1254->i8[v1285 + v1259] && v1254->u64 + v1285 < v3412;
                                v3419 = v3411 < &v1254->i8[v3956 + v1259] && v1254->u64 + v3956 < v3412;
                                v3420 = &v1254->i8[v3988];
                                v3422 = v3411 < &v1254->i8[v3972 + v1259] && v1254->u64 + v3972 < v3412;
                                v3424 = v3411 < &v1254->i8[v3976 * 8 + v1259] && &v1254->u64[v3976] < v3412;
                                v3426 = v3411 < &v3415[v1259] && v3415 < v3412;
                                v3428 = v3411 < &v3420[v1259] && v3420 < v3412;
                                v3430 = v3411 < v1260 + v1259 && v1260 < v3412;
                                v3432 = v3411 < &v1254->i8[v1259] && v1254 < v3412;
                                v3433 = v13 >= v3412 || v3411 >= (v13 + 11);
                                if (!v3433 || v3414)
                                {
                                  v1294 = 6 * v1270;
                                }

                                else if (v3417 || v3419 || v3422 || v3424 || v3426 || v3428 || v3430)
                                {
                                  v1294 = 6 * v1270;
                                }

                                else
                                {
                                  v1294 = 6 * v1270;
                                  if (!v3432)
                                  {
                                    v3434 = v13;
                                    v3435 = vld1_dup_s16(v3434++);
                                    v3436 = vld1_dup_s16(v3434);
                                    v3437 = vaddl_u16(v3436, v3435);
                                    v3438 = (v13 + 2);
                                    v3439 = vld1_dup_s16(v3438);
                                    v3440 = vaddw_u16(v3437, v3439);
                                    v3441 = (v13 + 3);
                                    v3442 = vld1_dup_s16(v3441);
                                    v3443 = vmovl_u16(v3442);
                                    v3444 = (v13 + 4);
                                    v3445 = vld1_dup_s16(v3444);
                                    v3446 = vmovl_u16(v3445);
                                    v3447 = (v13 + 5);
                                    v3448 = vld1_dup_s16(v3447);
                                    v3449 = vmovl_u16(v3448);
                                    v3450 = (v13 + 6);
                                    v3451 = vld1_dup_s16(v3450);
                                    v3452 = vmovl_u16(v3451);
                                    v3453 = (v13 + 7);
                                    v3454 = vld1_dup_s16(v3453);
                                    v3455 = vmovl_u16(v3454);
                                    v3456 = (v13 + 8);
                                    v3457 = vld1_dup_s16(v3456);
                                    v3458 = vmovl_u16(v3457);
                                    v3459 = (v13 + 9);
                                    v3460 = vld1_dup_s16(v3459);
                                    v3461 = vmovl_u16(v3460);
                                    v3462 = (v13 + 10);
                                    v3463 = vld1_dup_s16(v3462);
                                    v3464 = vmovl_u16(v3463);
                                    v3465 = vuzp1q_s16(v3440, v3443);
                                    v3466 = vmovn_s32(v3443);
                                    v1295 = v1251 & 0x7FFFFFF8;
                                    v3467 = vuzp1q_s16(v3440, v3446);
                                    v3468 = vmovn_s32(v3446);
                                    v3469 = vuzp1q_s16(v3440, v3449);
                                    v3470 = vmovn_s32(v3449);
                                    v3471 = vuzp1q_s16(v3440, v3452);
                                    v3472 = vmovn_s32(v3452);
                                    v3473 = vuzp1q_s16(v3440, v3455);
                                    v3474 = vmovn_s32(v3455);
                                    v3475 = vuzp1q_s16(v3440, v3458);
                                    v3476 = vmovn_s32(v3458);
                                    v3477 = vuzp1q_s16(v3440, v3461);
                                    v3478 = vmovn_s32(v3461);
                                    v3479 = vuzp1q_s16(v3440, v3464);
                                    v3480 = vmovn_s32(v3464);
                                    v3481 = v1295;
                                    v3482 = v1254;
                                    do
                                    {
                                      v3483 = *(v3482 + 2 * v1252);
                                      v3484 = (v3482 + v1261 * 2 + v1261 * 2);
                                      v3485 = vmlal_high_u16(vmlal_high_u16(vmulq_s32(v3440, vmovl_high_u16(*v3482)), v3465, v3483), v3467, *v3484);
                                      v3486 = vmlal_u16(vmlal_u16(vmulq_s32(v3440, vmovl_u16(*v3482->i8)), v3466, *v3483.i8), v3468, *v3484->i8);
                                      v3487 = &v3484->i8[v1261 * 2];
                                      v3488 = *v3487->i8;
                                      v3489 = vmlal_u16(v3486, v3470, *v3487);
                                      v3490 = (v3487 + v1261 * 2);
                                      v3491 = vmlal_high_u16(vmlal_high_u16(v3485, v3469, v3488), v3471, *v3490);
                                      v3492 = vmlal_u16(v3489, v3472, *v3490->i8);
                                      v3493 = (v3490 + v1261 * 2);
                                      v3494 = vmlal_high_u16(v3491, v3473, *v3493);
                                      v3495 = vmlal_u16(v3492, v3474, *v3493->i8);
                                      v3496 = &v3493->i8[v1261 * 2];
                                      *v3411++ = vshrn_high_n_s32(vshrn_n_s32(vmlal_u16(vmlal_u16(vmlal_u16(v3495, v3476, *v3496), v3478, *(v3496 + 2 * v1252)), v3480, *(v3496 + 2 * v1252 + 2 * v1252)), 0xFuLL), vmlal_high_u16(vmlal_high_u16(vmlal_high_u16(v3494, v3475, *v3496->i8), v3477, *&v3496->i8[2 * v1252]), v3479, *&v3496->i8[2 * v1252 + 2 * v1252]), 0xFuLL);
                                      ++v3482;
                                      v3481 -= 8;
                                    }

                                    while (v3481);
                                    if (v1295 == v1251)
                                    {
LABEL_756:
                                      v1306 = 8 * v1270;
                                      if (v1251 < 0x10)
                                      {
                                        v1307 = 0;
                                        v4 = v3982;
                                        goto LABEL_758;
                                      }

                                      v1307 = 0;
                                      v3497 = v1255;
                                      v3498 = 8 * v1270;
                                      v3946 = v3497;
                                      v3499 = (v3497 + v1306);
                                      v3500 = v3497 + v1306 + v1259;
                                      v3501 = &v1254->i8[18 * v1252];
                                      v3502 = &v1254[v1284];
                                      v3503 = v1254[v1284].u64 + v1259;
                                      v3504 = v1254->u64 + v1285 + v1259;
                                      v3505 = v1254->u64 + v3956 + v1259;
                                      v3506 = v1254->u64 + v3972 + v1259;
                                      v3507 = &v1254->u64[v3976] + v1259;
                                      v3508 = &v1254->i8[v1256];
                                      v3509 = v1254->u64 + v1256 + v1259;
                                      v3510 = v1254->u64 + v3988 + v1259;
                                      v3511 = v1260 + v1259;
                                      v3512 = v1254->u64 + v1259;
                                      v3514 = v3499 < &v3501[v1259] && v3501 < v3500;
                                      v3516 = v3499 < v3503 && v3502 < v3500;
                                      v3518 = v3499 < v3504 && v1254->u64 + v1285 < v3500;
                                      v3520 = v3499 < v3505 && v1254->u64 + v3956 < v3500;
                                      v3522 = v3499 < v3506 && v1254->u64 + v3972 < v3500;
                                      v3524 = v3499 < v3507 && &v1254->u64[v3976] < v3500;
                                      v3526 = v3499 < v3509 && v3508 < v3500;
                                      v3528 = v3499 < v3510 && v1254->u64 + v3988 < v3500;
                                      v3530 = v3499 < v3511 && v1260 < v3500;
                                      v3532 = v3499 < v3512 && v1254 < v3500;
                                      v3533 = v13 >= v3500 || v3499 >= (v13 + 11);
                                      if (!v3533 || v3514)
                                      {
                                        v4 = v3982;
                                        v1251 = v3963;
                                      }

                                      else
                                      {
                                        v4 = v3982;
                                        v1251 = v3963;
                                        if (!v3516 && !v3518 && !v3520 && !v3522 && !v3524 && !v3526)
                                        {
                                          v1306 = v3498;
                                          if (v3528)
                                          {
                                            v1255 = v3946;
                                          }

                                          else
                                          {
                                            v1255 = v3946;
                                            if (!v3530 && !v3532)
                                            {
                                              v3534 = v13;
                                              v3535 = vld1_dup_s16(v3534++);
                                              v3536 = vld1_dup_s16(v3534);
                                              v65 = vaddl_u16(v3536, v3535);
                                              v3537 = (v13 + 2);
                                              v3538 = vld1_dup_s16(v3537);
                                              v3539 = vmovl_u16(v3538);
                                              v3540 = (v13 + 3);
                                              v3541 = vld1_dup_s16(v3540);
                                              v3542 = vmovl_u16(v3541);
                                              v3543 = (v13 + 4);
                                              v3544 = vld1_dup_s16(v3543);
                                              v3545 = vmovl_u16(v3544);
                                              v3546 = (v13 + 5);
                                              v3547 = vld1_dup_s16(v3546);
                                              v3548 = vmovl_u16(v3547);
                                              v3549 = (v13 + 6);
                                              v3550 = vld1_dup_s16(v3549);
                                              v3551 = vmovl_u16(v3550);
                                              v3552 = (v13 + 7);
                                              v3553 = vld1_dup_s16(v3552);
                                              v3554 = vmovl_u16(v3553);
                                              v3555 = (v13 + 8);
                                              v3556 = vld1_dup_s16(v3555);
                                              v3557 = vmovl_u16(v3556);
                                              v3558 = (v13 + 9);
                                              v3559 = vld1_dup_s16(v3558);
                                              v3560 = vmovl_u16(v3559);
                                              v3561 = (v13 + 10);
                                              v3562 = vld1_dup_s16(v3561);
                                              v3563 = vmovl_u16(v3562);
                                              v3564 = vuzp1q_s16(v65, v3539);
                                              v3565 = vmovn_s32(v3539);
                                              v1307 = v3963 & 0x7FFFFFF8;
                                              v3566 = vuzp1q_s16(v65, v3542);
                                              v3567 = vmovn_s32(v3542);
                                              v3568 = vuzp1q_s16(v65, v3545);
                                              v3569 = vmovn_s32(v3545);
                                              v3570 = vuzp1q_s16(v65, v3548);
                                              v3571 = vmovn_s32(v3548);
                                              v3572 = vuzp1q_s16(v65, v3551);
                                              v3573 = vmovn_s32(v3551);
                                              v3574 = vuzp1q_s16(v65, v3554);
                                              v3575 = vmovn_s32(v3554);
                                              v3576 = vuzp1q_s16(v65, v3557);
                                              v3577 = vmovn_s32(v3557);
                                              v3578 = vuzp1q_s16(v65, v3560);
                                              v3579 = vmovn_s32(v3560);
                                              v3580 = vuzp1q_s16(v65, v3563);
                                              v3581 = vmovn_s32(v3563);
                                              v3582 = v1307;
                                              v3583 = v1254;
                                              do
                                              {
                                                v3584 = *(v3583 + 2 * v1252);
                                                v3585 = (v3583 + v1261 * 2 + v1261 * 2);
                                                v3586 = vmlal_high_u16(vmlal_high_u16(vmulq_s32(v65, vmovl_high_u16(*v3583)), v3564, v3584), v3566, *v3585);
                                                v3587 = vmlal_u16(vmlal_u16(vmulq_s32(v65, vmovl_u16(*v3583->i8)), v3565, *v3584.i8), v3567, *v3585->i8);
                                                v3588 = (v3585 + v1261 * 2);
                                                v3589 = vmlal_high_u16(v3586, v3568, *v3588);
                                                v3590 = vmlal_u16(v3587, v3569, *v3588->i8);
                                                v3591 = &v3588->i8[v1261 * 2];
                                                v3592 = *v3591->i8;
                                                v3593 = vmlal_u16(v3590, v3571, *v3591);
                                                v3594 = (v3591 + v1261 * 2);
                                                v3595 = vmlal_high_u16(vmlal_high_u16(v3589, v3570, v3592), v3572, *v3594);
                                                v3596 = vmlal_u16(v3593, v3573, *v3594->i8);
                                                v3597 = (v3594 + v1261 * 2);
                                                v3598 = vmlal_high_u16(v3595, v3574, *v3597);
                                                v3599 = vmlal_u16(v3596, v3575, *v3597->i8);
                                                v3600 = &v3597->i8[v1261 * 2];
                                                *v3499++ = vshrn_high_n_s32(vshrn_n_s32(vmlal_u16(vmlal_u16(vmlal_u16(v3599, v3577, *v3600), v3579, *(v3600 + 2 * v1252)), v3581, *(v3600 + 2 * v1252 + 2 * v1252)), 0xFuLL), vmlal_high_u16(vmlal_high_u16(vmlal_high_u16(v3598, v3576, *v3600->i8), v3578, *&v3600->i8[2 * v1252]), v3580, *&v3600->i8[2 * v1252 + 2 * v1252]), 0xFuLL);
                                                ++v3583;
                                                v3582 -= 8;
                                              }

                                              while (v3582);
                                              if (v1307 == v3963)
                                              {
                                                goto LABEL_760;
                                              }
                                            }
                                          }

LABEL_758:
                                          v1308 = v1251 - v1307;
                                          v1309 = (v1255 + v1306 + 2 * v1307);
                                          v1310 = v1254 + v1307;
                                          do
                                          {
                                            v1311 = &v1310[v1252];
                                            v1312 = *v1311;
                                            v1313 = &v1311[v1261];
                                            v1314.i16[0] = *v1313;
                                            v1314.i16[1] = v1313[v1252];
                                            v1315 = &v1313[v1261 + v1261];
                                            v1314.i16[2] = *v1315;
                                            v1316 = &v1315[v1261];
                                            v1314.i16[3] = *v1316;
                                            v1317 = &v1316[v1261];
                                            v1318.i16[0] = *v1317;
                                            v1318.i16[1] = v1317[v1252];
                                            v1319 = &v1317[v1261 + v1261];
                                            v1318.i16[2] = *v1319;
                                            v1318.i16[3] = v1319[v1252];
                                            v65 = vmlal_u16(vmull_u16(*(v13 + 3), v1314), *&vextq_s8(*(v13 + 3), *(v13 + 3), 8uLL), v1318);
                                            *v1309++ = (vaddvq_s32(v65) + v13[2] * v1312 + (v13[1] + *v13) * *v1310++) >> 15;
                                            --v1308;
                                          }

                                          while (v1308);
LABEL_760:
                                          v1320 = *(v4 + 3);
                                          v3918 = v1320 - 5;
                                          v3928 = v1320;
                                          if (v1320 > 10)
                                          {
                                            v1321 = 0;
                                            v1322 = 0;
                                            v1323 = (v1320 - 10);
                                            v3940 = 2 * v1251;
                                            v3923 = v1251 & 0x7FFFFFF8;
                                            v1324 = 5;
                                            v1325 = 10;
                                            while (v1251 <= 0)
                                            {
                                              v1326 = v1322 + 1;
LABEL_763:
                                              ++v1324;
                                              ++v1321;
                                              v1325 += 2;
                                              v1322 = v1326;
                                              if (v1326 == v1323)
                                              {
                                                goto LABEL_880;
                                              }
                                            }

                                            v1327 = *v4;
                                            v1328 = v4[2];
                                            v1329 = *a2;
                                            v1330 = a2[2];
                                            v1326 = v1322 + 1;
                                            v1331 = 2 * v1328;
                                            if (v1251 <= 7)
                                            {
                                              v1332 = 0;
                                              goto LABEL_767;
                                            }

                                            v1332 = 0;
                                            v1346 = v1329 + 2 * v1330 * v1324;
                                            v1347 = v1329 + v3940 + v1330 * (2 * v1321 + 10);
                                            v1348 = v1331 * (v1322 + 10);
                                            v1349 = &v1327->i8[v3940];
                                            v1350 = v1331 * (v1322 + 9);
                                            v1351 = v1327->u64 + v1350;
                                            v1352 = v1331 * (v1322 + 8);
                                            v1353 = v1331 * (v1322 + 7);
                                            v1354 = v1327->u64 + v1353;
                                            v1355 = v1327->u64 + v3940 + v1353;
                                            v1356 = v1331 * (v1322 + 6);
                                            v1357 = v1327->u64 + v1356;
                                            v1358 = v1327->u64 + v3940 + v1356;
                                            v1359 = v1331 * (v1322 + 5);
                                            v159 = v1346 >= v1327->u64 + v3940 + v1350;
                                            v1360 = v1327->u64 + v1359;
                                            v1361 = v1327->u64 + v3940 + v1359;
                                            v1362 = v1331 * (v1322 + 4);
                                            v1364 = !v159 && v1351 < v1347;
                                            v3957 = v1364;
                                            v1365 = v1327->u64 + v1362;
                                            v1366 = &v1349[v1362];
                                            v1367 = v1331 * (v1322 + 3);
                                            v1369 = v1346 < v1327->u64 + v3940 + v1352 && v1327->u64 + v1352 < v1347;
                                            v159 = v1346 >= v1355;
                                            v1370 = v1327->u64 + v1367;
                                            v1371 = &v1349[v1367];
                                            v1372 = v1331 * (v1322 + 2);
                                            v1374 = !v159 && v1354 < v1347;
                                            v1375 = v1327->u64 + v1372;
                                            v1376 = &v1349[v1372];
                                            v1377 = v1346 >= v1358 || v1357 >= v1347;
                                            v1326 = v1322 + 1;
                                            v1378 = !v1377;
                                            v159 = v1346 >= v1361;
                                            v1379 = v1331 * (v1322 + 1);
                                            v1381 = !v159 && v1360 < v1347;
                                            v159 = v1346 >= v1366;
                                            v1382 = v1327->u64 + v1379;
                                            v1383 = &v1349[v1379];
                                            v1385 = !v159 && v1365 < v1347;
                                            v1386 = v1322 * v1328;
                                            v1388 = v1346 < v1371 && v1370 < v1347;
                                            v1389 = 2 * v1386;
                                            v1391 = v1346 < v1376 && v1375 < v1347;
                                            v159 = v1346 >= v1383;
                                            v1392 = v1327->u64 + v1389;
                                            v1393 = &v1349[v1389];
                                            v1395 = !v159 && v1382 < v1347;
                                            v1397 = v1346 < v1393 && v1392 < v1347;
                                            v1399 = v1346 < (v13 + 11) && v13 < v1347;
                                            v1400 = v1327->u64 + v1348 >= v1347 || v1346 >= &v1349[v1348];
                                            if (!v1400 || (v3957 & 1) != 0 || v1369 || (v1374 & 1) != 0 || (v1378 & 1) != 0)
                                            {
                                              v4 = v3982;
                                            }

                                            else
                                            {
                                              v4 = v3982;
                                              if ((v1381 & 1) == 0)
                                              {
                                                v1251 = v3963;
                                                if ((v1385 & 1) == 0)
                                                {
                                                  v1323 = (v3928 - 10);
                                                  v1329 = *a2;
                                                  v1330 = a2[2];
                                                  if (!v1388 && !v1391 && (v1395 & 1) == 0 && !v1397 && !v1399)
                                                  {
                                                    v1401 = v13;
                                                    *v65.i8 = vld1_dup_s16(v1401++);
                                                    v1402 = vmovl_u16(*v65.i8);
                                                    *v65.i8 = vld1_dup_s16(v1401);
                                                    v1403 = vmovl_u16(*v65.i8);
                                                    v1404 = (v13 + 2);
                                                    *v65.i8 = vld1_dup_s16(v1404);
                                                    v1405 = vmovl_u16(*v65.i8);
                                                    v1406 = (v13 + 3);
                                                    *v65.i8 = vld1_dup_s16(v1406);
                                                    v1407 = vmovl_u16(*v65.i8);
                                                    v1408 = (v13 + 4);
                                                    *v65.i8 = vld1_dup_s16(v1408);
                                                    v1409 = vmovl_u16(*v65.i8);
                                                    v1410 = (v13 + 5);
                                                    *v65.i8 = vld1_dup_s16(v1410);
                                                    v1411 = vmovl_u16(*v65.i8);
                                                    v1412 = (v13 + 6);
                                                    *v65.i8 = vld1_dup_s16(v1412);
                                                    v1413 = vmovl_u16(*v65.i8);
                                                    v1414 = (v13 + 7);
                                                    *v65.i8 = vld1_dup_s16(v1414);
                                                    v1415 = vmovl_u16(*v65.i8);
                                                    v1416 = (v13 + 8);
                                                    *v65.i8 = vld1_dup_s16(v1416);
                                                    v1417 = vmovl_u16(*v65.i8);
                                                    v1418 = (v13 + 9);
                                                    *v65.i8 = vld1_dup_s16(v1418);
                                                    v1419 = vmovl_u16(*v65.i8);
                                                    v1420 = (v13 + 10);
                                                    *v65.i8 = vld1_dup_s16(v1420);
                                                    v1421 = vmovl_u16(*v65.i8);
                                                    v65 = vuzp1q_s16(v65, v1402);
                                                    v1422 = (v1327 + 2 * v1386);
                                                    v1423 = vmovn_s32(v1402);
                                                    v1424 = (*a2 + a2[2] * v1325);
                                                    v1425 = vuzp1q_s16(v65, v1403);
                                                    v1426 = vmovn_s32(v1403);
                                                    v1427 = vuzp1q_s16(v65, v1405);
                                                    v1428 = vmovn_s32(v1405);
                                                    v1429 = vuzp1q_s16(v65, v1407);
                                                    v1430 = vmovn_s32(v1407);
                                                    v1431 = vuzp1q_s16(v65, v1409);
                                                    v1432 = vmovn_s32(v1409);
                                                    v1433 = vuzp1q_s16(v65, v1411);
                                                    v1434 = vmovn_s32(v1411);
                                                    v1435 = vuzp1q_s16(v65, v1413);
                                                    v1436 = vmovn_s32(v1413);
                                                    v1437 = vuzp1q_s16(v65, v1415);
                                                    v1438 = vmovn_s32(v1415);
                                                    v1439 = vuzp1q_s16(v65, v1417);
                                                    v1440 = vmovn_s32(v1417);
                                                    v1441 = vuzp1q_s16(v65, v1419);
                                                    v1442 = vmovn_s32(v1419);
                                                    v1443 = vuzp1q_s16(v65, v1421);
                                                    v1444 = vmovn_s32(v1421);
                                                    v1445 = v3923;
                                                    do
                                                    {
                                                      v1446 = *&v1422->i8[2 * v1328];
                                                      v1447 = vmull_high_u16(v1425, v1446);
                                                      v1448 = (v1422 + v1331 + v1331);
                                                      v1449 = *v1448->i8;
                                                      v1450 = vmlal_u16(vmlal_u16(vmull_u16(v1426, *v1446.i8), v1423, *v1422), v1428, *v1448);
                                                      v1451 = (v1448 + v1331);
                                                      v1452 = vmlal_u16(v1450, v1430, *v1451);
                                                      v1453 = vmlal_high_u16(vmlal_high_u16(vmlal_high_u16(v1447, v65, *v1422->i8), v1427, v1449), v1429, *v1451->i8);
                                                      v1454 = (v1451 + v1331);
                                                      v1455 = vmlal_high_u16(v1453, v1431, *v1454);
                                                      v1456 = vmlal_u16(v1452, v1432, *v1454->i8);
                                                      v1457 = &v1454->i8[v1331];
                                                      v1458 = *v1457->i8;
                                                      v1459 = vmlal_u16(v1456, v1434, *v1457);
                                                      v1460 = (v1457 + v1331);
                                                      v1461 = vmlal_high_u16(vmlal_high_u16(v1455, v1433, v1458), v1435, *v1460);
                                                      v1462 = vmlal_u16(v1459, v1436, *v1460->i8);
                                                      v1463 = &v1460->i8[v1331];
                                                      v1464 = vmlal_u16(v1462, v1438, *v1463);
                                                      v1465 = vmlal_high_u16(v1461, v1437, *v1463->i8);
                                                      v1466 = (v1463 + v1331);
                                                      *v1424++ = vshrn_high_n_s32(vshrn_n_s32(vmlal_u16(vmlal_u16(vmlal_u16(v1464, v1440, *v1466), v1442, *(v1466 + 2 * v1328)), v1444, *(v1466 + 2 * v1328 + 2 * v1328)), 0xFuLL), vmlal_high_u16(vmlal_high_u16(vmlal_high_u16(v1465, v1439, *v1466->i8), v1441, *&v1466->i8[2 * v1328]), v1443, *&v1466->i8[2 * v1328 + 2 * v1328]), 0xFuLL);
                                                      v1422 += 2;
                                                      v1445 -= 8;
                                                    }

                                                    while (v1445);
                                                    v1332 = v3923;
                                                    if (v3923 == v3963)
                                                    {
                                                      goto LABEL_763;
                                                    }
                                                  }

                                                  goto LABEL_767;
                                                }

                                                goto LABEL_858;
                                              }
                                            }

                                            v1251 = v3963;
LABEL_858:
                                            v1323 = (v3928 - 10);
                                            v1329 = *a2;
                                            v1330 = a2[2];
LABEL_767:
                                            v1333 = v1251 - v1332;
                                            v1334 = v1332;
                                            v1335 = (v1329 + 2 * v1332 + v1330 * v1325);
                                            v1336 = &v1327->i16[v1322 * v1328 + v1334];
                                            do
                                            {
                                              v1337 = &v1336[v1328];
                                              v1338 = *v1336++;
                                              v1339.i16[0] = v1338;
                                              v1339.i16[1] = *v1337;
                                              v1340 = &v1337[v1331 / 2];
                                              v1339.i16[2] = *v1340;
                                              v1341 = &v1340[v1331 / 2];
                                              v1339.i16[3] = *v1341;
                                              v1342 = &v1341[v1331 / 2];
                                              v1343.i16[0] = *v1342;
                                              v1343.i16[1] = v1342[v1328];
                                              v1344 = &v1342[v1331 / 2 + v1331 / 2];
                                              v1343.i16[2] = *v1344;
                                              v1345 = &v1344[v1331 / 2];
                                              v1343.i16[3] = *v1345;
                                              v65 = vmlal_u16(vmull_u16(*v13, v1339), *&vextq_s8(*v13, *v13, 8uLL), v1343);
                                              *v1335++ = (vaddvq_s32(v65) + v13[8] * v1345[v1331 / 2] + v13[10] * v1345[v1331 / 2 + v1331 / 2 + v1331 / 2] + v13[9] * v1345[v1331 / 2 + v1331 / 2]) >> 15;
                                              --v1333;
                                            }

                                            while (v1333);
                                            goto LABEL_763;
                                          }

LABEL_880:
                                          v1502 = 0;
                                          v1503 = v3928 - 2;
                                          v1504 = v3918;
                                          v3897 = v1503 + 5;
                                          v1505 = v3918 - 1;
                                          v3989 = v1503;
                                          v3919 = v1503 + 4;
                                          v3893 = 2 * v1503;
                                          v3889 = 2 * v1503 - 2;
                                          v1506 = v13 + 3;
                                          v1507 = 2;
                                          v3924 = v1505;
                                          while (1)
                                          {
                                            if (v1505 >= v3919)
                                            {
                                              v1508 = v3919;
                                            }

                                            else
                                            {
                                              v1508 = v1505;
                                            }

                                            v3934 = v1502;
                                            v1509 = v3924 + v1502;
                                            if (v3924 + v1502 >= v3919)
                                            {
                                              v1510 = v3919;
                                            }

                                            else
                                            {
                                              v1510 = v3924 + v1502;
                                            }

                                            if (v1509 >= v3919)
                                            {
                                              v1509 = v3919;
                                            }

                                            if (v1251 >= 1)
                                            {
                                              break;
                                            }

LABEL_881:
                                            ++v1504;
                                            ++v1507;
                                            v1502 = v3934 + 1;
                                            ++v1505;
                                            ++v1506;
                                            if (v1504 >= v3928)
                                            {
                                              v1587 = v3982;
                                              v66 = v3991;
                                              if (v3928 < 1)
                                              {
                                                goto LABEL_2573;
                                              }

                                              v1588 = 0;
                                              v1589 = 0;
                                              v1590 = (v3991 + 10);
                                              v1591 = v13 + 8;
                                              while (2)
                                              {
                                                v1592 = *a2;
                                                v1593 = a2[2];
                                                v1594 = (*a2 + 2 * v1593 * v1589);
                                                *v66 = ((v13[1] + *v13 + v13[2] + v13[3] + v13[4] + v13[5]) * *v1594 + v1594[1] * v13[6] + v1594[2] * v13[7] + v1594[3] * v13[8] + v1594[4] * v13[9] + v1594[5] * v13[10]) >> 15;
                                                v66[1] = ((v13[1] + *v13 + v13[2] + v13[3] + v13[4]) * *v1594 + v1594[1] * v13[5] + v1594[2] * v13[6] + v1594[3] * v13[7] + v1594[4] * v13[8] + v1594[5] * v13[9] + v1594[6] * v13[10]) >> 15;
                                                v66[2] = ((v13[1] + *v13 + v13[2] + v13[3]) * *v1594 + v1594[1] * v13[4] + v1594[2] * v13[5] + v1594[3] * v13[6] + v1594[4] * v13[7] + v1594[5] * v13[8] + v1594[6] * v13[9] + v1594[7] * v13[10]) >> 15;
                                                v66[3] = ((v13[1] + *v13 + v13[2]) * *v1594 + v1594[1] * v13[3] + v1594[2] * v13[4] + v1594[3] * v13[5] + v1594[4] * v13[6] + v1594[5] * v13[7] + v1594[6] * v13[8] + v1594[7] * v13[9] + v1594[8] * v13[10]) >> 15;
                                                v66[4] = ((v13[1] + *v13) * *v1594 + v1594[1] * v13[2] + v1594[2] * v13[3] + v1594[3] * v13[4] + v1594[4] * v13[5] + v1594[5] * v13[6] + v1594[6] * v13[7] + v1594[7] * v13[8] + v1594[8] * v13[9] + v1594[9] * v13[10]) >> 15;
                                                v1595 = *(v1587 + 2);
                                                if (v1595 > 10)
                                                {
                                                  v1596 = (v1595 - 10);
                                                  if (v1596 <= 7)
                                                  {
                                                    v1597 = 0;
                                                    goto LABEL_947;
                                                  }

                                                  v1597 = 0;
                                                  v1617 = v1590 + 2 * v1596;
                                                  v1619 = v1590 < v1592 + v1593 * 2 * v1589 + 2 * v1596 + 20 && v1594 < v1617;
                                                  if (v13 < v1617 && v1590 < (v13 + 11))
                                                  {
LABEL_947:
                                                    v1598 = 5;
                                                    goto LABEL_948;
                                                  }

                                                  v1598 = 5;
                                                  if (v1619)
                                                  {
                                                    goto LABEL_948;
                                                  }

                                                  v1621 = v13;
                                                  *v65.i8 = vld1_dup_s16(v1621++);
                                                  v1622 = vld1_dup_s16(v1621);
                                                  v1623 = vmovl_u16(*v65.i8);
                                                  v1624 = vmovl_u16(v1622);
                                                  v1625 = (v13 + 2);
                                                  *v65.i8 = vld1_dup_s16(v1625);
                                                  v1626 = vmovl_u16(*v65.i8);
                                                  v1627 = (v13 + 3);
                                                  *v65.i8 = vld1_dup_s16(v1627);
                                                  v1628 = (v13 + 4);
                                                  v1629 = vld1_dup_s16(v1628);
                                                  v1630 = vmovl_u16(*v65.i8);
                                                  v1631 = vmovl_u16(v1629);
                                                  v1632 = (v13 + 5);
                                                  *v65.i8 = vld1_dup_s16(v1632);
                                                  v1633 = vmovl_u16(*v65.i8);
                                                  v1634 = (v13 + 6);
                                                  *v65.i8 = vld1_dup_s16(v1634);
                                                  v1635 = (v13 + 7);
                                                  v1636 = vld1_dup_s16(v1635);
                                                  v1637 = vmovl_u16(*v65.i8);
                                                  v1638 = vmovl_u16(v1636);
                                                  v1639 = (v13 + 8);
                                                  *v65.i8 = vld1_dup_s16(v1639);
                                                  v1640 = vmovl_u16(*v65.i8);
                                                  v1641 = (v13 + 9);
                                                  *v65.i8 = vld1_dup_s16(v1641);
                                                  v1642 = (v13 + 10);
                                                  v1643 = vld1_dup_s16(v1642);
                                                  v1644 = vmovl_u16(*v65.i8);
                                                  v1645 = vmovl_u16(v1643);
                                                  v1646 = vuzp1q_s16(v65, v1623);
                                                  v1597 = v1596 & 0xFFFFFFF8;
                                                  v1647 = vmovn_s32(v1623);
                                                  v1598 = v1597 | 5;
                                                  v1648 = vmovn_s32(v1624);
                                                  v1649 = vuzp1q_s16(v1646, v1624);
                                                  v1650 = v1592 + v1593 * v1588 + 10;
                                                  v1651 = vuzp1q_s16(v1646, v1626);
                                                  v1652 = vmovn_s32(v1626);
                                                  v1653 = vuzp1q_s16(v1646, v1630);
                                                  v1654 = vmovn_s32(v1630);
                                                  v1655 = vuzp1q_s16(v1646, v1631);
                                                  v1656 = vmovn_s32(v1631);
                                                  v1657 = vuzp1q_s16(v1646, v1633);
                                                  v1658 = vmovn_s32(v1633);
                                                  v1659 = vuzp1q_s16(v1646, v1637);
                                                  v1660 = vmovn_s32(v1637);
                                                  v1661 = vuzp1q_s16(v1646, v1638);
                                                  v1662 = vmovn_s32(v1638);
                                                  v1663 = vuzp1q_s16(v1646, v1640);
                                                  v1664 = vmovn_s32(v1640);
                                                  v1665 = vuzp1q_s16(v1646, v1644);
                                                  v1666 = vmovn_s32(v1644);
                                                  v1667 = vuzp1q_s16(v1646, v1645);
                                                  v1668 = vmovn_s32(v1645);
                                                  v1669 = (v3991 + 10);
                                                  v1670 = v1597;
                                                  do
                                                  {
                                                    v1671 = *(v1650 - 10);
                                                    *v1669++ = vshrn_high_n_s32(vshrn_n_s32(vmlal_u16(vmlal_u16(vmlal_u16(vmlal_u16(vmlal_u16(vmlal_u16(vmlal_u16(vmlal_u16(vmlal_u16(vmlal_u16(vmull_u16(*(v1650 - 8), v1648), *v1671.i8, v1647), *(v1650 - 6), v1652), *(v1650 - 4), v1654), *(v1650 - 2), v1656), *v1650, v1658), *(v1650 + 2), v1660), *(v1650 + 4), v1662), *(v1650 + 6), v1664), *(v1650 + 8), v1666), *(v1650 + 10), v1668), 0xFuLL), vmlal_high_u16(vmlal_high_u16(vmlal_high_u16(vmlal_high_u16(vmlal_high_u16(vmlal_high_u16(vmlal_high_u16(vmlal_high_u16(vmlal_high_u16(vmlal_high_u16(vmull_high_u16(*(v1650 - 8), v1649), v1671, v1646), *(v1650 - 6), v1651), *(v1650 - 4), v1653), *(v1650 - 2), v1655), *v1650, v1657), *(v1650 + 2), v1659), *(v1650 + 4), v1661), *(v1650 + 6), v1663), *(v1650 + 8), v1665), *(v1650 + 10), v1667), 0xFuLL);
                                                    v1650 += 16;
                                                    v1670 -= 8;
                                                  }

                                                  while (v1670);
                                                  if (v1597 != v1596)
                                                  {
LABEL_948:
                                                    v1599 = &v66[v1598];
                                                    v1600 = (v1592 + v1593 * v1588 + 2 * v1597 + 20);
                                                    v1601 = v1596 - v1597;
                                                    do
                                                    {
                                                      v1602 = *(v1600 - 10);
                                                      v1603 = *(v1600 - 2);
                                                      v1604 = *(v1600 - 1);
                                                      v1605 = *v1600++;
                                                      *v1599++ = (vaddvq_s32(vmlal_high_u16(vmull_u16(*v1602.i8, *v13), v1602, *v13)) + v1603 * v13[8] + v1605 * v13[10] + v1604 * v13[9]) >> 15;
                                                      --v1601;
                                                    }

                                                    while (v1601);
                                                  }
                                                }

                                                v1606 = v1595 - 5;
                                                v1607 = v1595 - 1;
                                                v1608 = v1595 - 5;
                                                if (v1608 + 5 >= v1595 - 1)
                                                {
                                                  v1610 = v13[1] + *v13;
                                                  v1609 = 2;
                                                }

                                                else
                                                {
                                                  v1609 = 0;
                                                  v1610 = 0;
                                                }

                                                v1611 = v1595 - 2;
                                                v1612 = v1610 * v1594[v1607];
                                                if (v1595 + 3 >= v1606)
                                                {
                                                  v1613 = v1606 - 5;
                                                  if (v1608 - 5 >= v1611)
                                                  {
                                                    v1613 = v1595 - 2;
                                                  }

                                                  v1614 = v1611 - v1613 + 1;
                                                  if (v1614 < 4)
                                                  {
                                                    v1615 = v1595 - 2;
                                                    v1616 = v1609;
                                                    goto LABEL_985;
                                                  }

                                                  if (v1614 >= 0x10)
                                                  {
                                                    v1672 = v1614 & 0xFFFFFFFFFFFFFFF0;
                                                    v1673 = 0uLL;
                                                    v1674 = v1612;
                                                    v1675 = (v1592 + v1593 * v1588 + 2 * v1611 - 14);
                                                    v1676 = &v1591[v1609];
                                                    v1677 = v1614 & 0xFFFFFFFFFFFFFFF0;
                                                    v1678 = 0uLL;
                                                    v1679 = 0uLL;
                                                    do
                                                    {
                                                      v1680 = vrev64q_s16(*v1675);
                                                      v1681 = vextq_s8(v1680, v1680, 8uLL);
                                                      v1682 = vrev64q_s16(v1675[-1]);
                                                      v1683 = vextq_s8(v1682, v1682, 8uLL);
                                                      v1684 = v1676[-1];
                                                      v1673 = vmlal_high_u16(v1673, v1684, v1681);
                                                      v1674 = vmlal_u16(v1674, *v1684.i8, *v1681.i8);
                                                      v1679 = vmlal_high_u16(v1679, *v1676, v1683);
                                                      v1678 = vmlal_u16(v1678, *v1676->i8, *v1683.i8);
                                                      v1675 -= 2;
                                                      v1676 += 2;
                                                      v1677 -= 16;
                                                    }

                                                    while (v1677);
                                                    v1612 = vaddvq_s32(vaddq_s32(vaddq_s32(v1678, v1674), vaddq_s32(v1679, v1673)));
                                                    if (v1614 != v1672)
                                                    {
                                                      if ((v1614 & 0xC) == 0)
                                                      {
                                                        v1616 = v1609 | v1672;
                                                        v1615 = v1611 - v1672;
                                                        goto LABEL_985;
                                                      }

                                                      goto LABEL_980;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v1672 = 0;
LABEL_980:
                                                    v1615 = v1611 - (v1614 & 0xFFFFFFFFFFFFFFFCLL);
                                                    v1616 = v1609 | v1614 & 0xFFFFFFFFFFFFFFFCLL;
                                                    v1685 = v1612;
                                                    v1686 = &v13[v1672 + v1609];
                                                    v1687 = v1672 - (v1614 & 0xFFFFFFFFFFFFFFFCLL);
                                                    v1688 = (v1592 + v1593 * v1588 + 2 * v1611 - 2 * v1672 - 6);
                                                    do
                                                    {
                                                      v1689 = *v1688--;
                                                      v1690 = vrev64_s16(v1689);
                                                      v1691 = *v1686++;
                                                      v1685 = vmlal_u16(v1685, v1691, v1690);
                                                      v1687 += 4;
                                                    }

                                                    while (v1687);
                                                    v1612 = vaddvq_s32(v1685);
                                                    if (v1614 != (v1614 & 0xFFFFFFFFFFFFFFFCLL))
                                                    {
LABEL_985:
                                                      v1692 = v1615 + 1;
                                                      v1693 = (v1592 + v1593 * v1588 + 2 * v1615);
                                                      v1694 = &v13[v1616];
                                                      do
                                                      {
                                                        v1696 = *v1693--;
                                                        v1695 = v1696;
                                                        v1697 = *v1694++;
                                                        v1612 += v1697 * v1695;
                                                        --v1692;
                                                      }

                                                      while (v1692 >= v1608 - 4);
                                                    }
                                                  }
                                                }

                                                v66[v1608] = v1612 >> 15;
                                                if (v1608 + 1 < v1595)
                                                {
                                                  if (v1608 + 6 >= v1607)
                                                  {
                                                    v1699 = v13[1] + *v13 + v13[2];
                                                    v1698 = 3;
                                                  }

                                                  else
                                                  {
                                                    v1698 = 0;
                                                    v1699 = 0;
                                                  }

                                                  v1700 = v1699 * v1594[v1607];
                                                  v1701 = v1608 - 4;
                                                  if (v1608 - 4 >= v1611)
                                                  {
                                                    v1701 = v1595 - 2;
                                                  }

                                                  v1702 = v1611 - v1701 + 1;
                                                  if (v1702 < 4)
                                                  {
                                                    v1703 = v1595 - 2;
                                                    v1704 = v1698;
                                                    goto LABEL_1006;
                                                  }

                                                  if (v1702 >= 0x10)
                                                  {
                                                    v1705 = v1702 & 0xFFFFFFFFFFFFFFF0;
                                                    v1706 = 0uLL;
                                                    v1707 = v1700;
                                                    v1708 = (v1592 + v1593 * v1588 + 2 * v1611 - 14);
                                                    v1709 = &v1591[v1698];
                                                    v1710 = v1702 & 0xFFFFFFFFFFFFFFF0;
                                                    v1711 = 0uLL;
                                                    v1712 = 0uLL;
                                                    do
                                                    {
                                                      v1713 = vrev64q_s16(*v1708);
                                                      v1714 = vextq_s8(v1713, v1713, 8uLL);
                                                      v1715 = vrev64q_s16(v1708[-1]);
                                                      v1716 = vextq_s8(v1715, v1715, 8uLL);
                                                      v1717 = v1709[-1];
                                                      v1706 = vmlal_high_u16(v1706, v1717, v1714);
                                                      v1707 = vmlal_u16(v1707, *v1717.i8, *v1714.i8);
                                                      v1712 = vmlal_high_u16(v1712, *v1709, v1716);
                                                      v1711 = vmlal_u16(v1711, *v1709->i8, *v1716.i8);
                                                      v1708 -= 2;
                                                      v1709 += 2;
                                                      v1710 -= 16;
                                                    }

                                                    while (v1710);
                                                    v1700 = vaddvq_s32(vaddq_s32(vaddq_s32(v1711, v1707), vaddq_s32(v1712, v1706)));
                                                    if (v1702 != v1705)
                                                    {
                                                      if ((v1702 & 0xC) == 0)
                                                      {
                                                        v1704 = v1698 | v1705;
                                                        v1703 = v1611 - v1705;
                                                        goto LABEL_1006;
                                                      }

                                                      goto LABEL_1001;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v1705 = 0;
LABEL_1001:
                                                    v1703 = v1611 - (v1702 & 0xFFFFFFFFFFFFFFFCLL);
                                                    v1704 = v1698 | v1702 & 0xFFFFFFFFFFFFFFFCLL;
                                                    v1718 = v1700;
                                                    v1719 = &v13[v1705 + v1698];
                                                    v1720 = v1705 - (v1702 & 0xFFFFFFFFFFFFFFFCLL);
                                                    v1721 = (v1592 + v1593 * v1588 + 2 * v1611 - 2 * v1705 - 6);
                                                    do
                                                    {
                                                      v1722 = *v1721--;
                                                      v1723 = vrev64_s16(v1722);
                                                      v1724 = *v1719++;
                                                      v1718 = vmlal_u16(v1718, v1724, v1723);
                                                      v1720 += 4;
                                                    }

                                                    while (v1720);
                                                    v1700 = vaddvq_s32(v1718);
                                                    if (v1702 != (v1702 & 0xFFFFFFFFFFFFFFFCLL))
                                                    {
LABEL_1006:
                                                      v1725 = (v1592 + v1593 * v1588 + 2 * v1703);
                                                      v1726 = &v13[v1704];
                                                      v1727 = v1698 + v1611 - v1704 - v1701 + 1;
                                                      do
                                                      {
                                                        v1729 = *v1725--;
                                                        v1728 = v1729;
                                                        v1730 = *v1726++;
                                                        v1700 += v1730 * v1728;
                                                        --v1727;
                                                      }

                                                      while (v1727);
                                                    }
                                                  }

                                                  v66[v1608 + 1] = v1700 >> 15;
                                                  if (v1608 + 7 >= v1607)
                                                  {
                                                    v1732 = vaddvq_s32(vmovl_u16(*v13));
                                                    v1731 = 4;
                                                  }

                                                  else
                                                  {
                                                    v1731 = 0;
                                                    v1732 = 0;
                                                  }

                                                  v1733 = v1732 * v1594[v1607];
                                                  v1734 = v1608 - 2;
                                                  v1735 = v1608 - 3;
                                                  if (v1608 - 3 >= v1611)
                                                  {
                                                    v1735 = v1595 - 2;
                                                  }

                                                  v1736 = v1611 - v1735 + 1;
                                                  if (v1736 < 4)
                                                  {
                                                    v1737 = v1595 - 2;
                                                    v1738 = v1731;
                                                    goto LABEL_1026;
                                                  }

                                                  if (v1736 >= 0x10)
                                                  {
                                                    v1739 = v1736 & 0xFFFFFFFFFFFFFFF0;
                                                    v1740 = 0uLL;
                                                    v1741 = v1733;
                                                    v1742 = (v1592 + v1593 * v1588 + 2 * v1611 - 14);
                                                    v1743 = &v1591[v1731];
                                                    v1744 = v1736 & 0xFFFFFFFFFFFFFFF0;
                                                    v1745 = 0uLL;
                                                    v1746 = 0uLL;
                                                    do
                                                    {
                                                      v1747 = vrev64q_s16(*v1742);
                                                      v1748 = vextq_s8(v1747, v1747, 8uLL);
                                                      v1749 = vrev64q_s16(v1742[-1]);
                                                      v1750 = vextq_s8(v1749, v1749, 8uLL);
                                                      v1751 = v1743[-1];
                                                      v1740 = vmlal_high_u16(v1740, v1751, v1748);
                                                      v1741 = vmlal_u16(v1741, *v1751.i8, *v1748.i8);
                                                      v1746 = vmlal_high_u16(v1746, *v1743, v1750);
                                                      v1745 = vmlal_u16(v1745, *v1743->i8, *v1750.i8);
                                                      v1742 -= 2;
                                                      v1743 += 2;
                                                      v1744 -= 16;
                                                    }

                                                    while (v1744);
                                                    v1733 = vaddvq_s32(vaddq_s32(vaddq_s32(v1745, v1741), vaddq_s32(v1746, v1740)));
                                                    if (v1736 != v1739)
                                                    {
                                                      if ((v1736 & 0xC) == 0)
                                                      {
                                                        v1738 = v1731 | v1739;
                                                        v1737 = v1611 - v1739;
                                                        goto LABEL_1026;
                                                      }

                                                      goto LABEL_1021;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v1739 = 0;
LABEL_1021:
                                                    v1737 = v1611 - (v1736 & 0xFFFFFFFFFFFFFFFCLL);
                                                    v1738 = v1731 + (v1736 & 0xFFFFFFFFFFFFFFFCLL);
                                                    v1752 = v1733;
                                                    v1753 = &v13[v1739 + v1731];
                                                    v1754 = v1739 - (v1736 & 0xFFFFFFFFFFFFFFFCLL);
                                                    v1755 = (v1592 + v1593 * v1588 + 2 * v1611 - 2 * v1739 - 6);
                                                    do
                                                    {
                                                      v1756 = *v1755--;
                                                      v1757 = vrev64_s16(v1756);
                                                      v1758 = *v1753++;
                                                      v1752 = vmlal_u16(v1752, v1758, v1757);
                                                      v1754 += 4;
                                                    }

                                                    while (v1754);
                                                    v1733 = vaddvq_s32(v1752);
                                                    if (v1736 != (v1736 & 0xFFFFFFFFFFFFFFFCLL))
                                                    {
LABEL_1026:
                                                      v1759 = v1737 + 1;
                                                      v1760 = (v1592 + v1593 * v1588 + 2 * v1737);
                                                      v1761 = &v13[v1738];
                                                      do
                                                      {
                                                        v1763 = *v1760--;
                                                        v1762 = v1763;
                                                        v1764 = *v1761++;
                                                        v1733 += v1764 * v1762;
                                                        --v1759;
                                                      }

                                                      while (v1759 >= v1734);
                                                    }
                                                  }

                                                  *&v3991[2 * v1608 + 4] = v1733 >> 15;
                                                  if (v1608 + 8 >= v1607)
                                                  {
                                                    v1766 = vaddvq_s32(vmovl_u16(*v13)) + v13[4];
                                                    v1765 = 5;
                                                  }

                                                  else
                                                  {
                                                    v1765 = 0;
                                                    v1766 = 0;
                                                  }

                                                  v1767 = v1766 * v1594[v1607];
                                                  if (v1734 >= v1611)
                                                  {
                                                    v1734 = v1595 - 2;
                                                  }

                                                  v1768 = v1611 - v1734 + 1;
                                                  if (v1768 < 4)
                                                  {
                                                    v1769 = v1595 - 2;
                                                    v1770 = v1765;
                                                    goto LABEL_1046;
                                                  }

                                                  if (v1768 >= 0x10)
                                                  {
                                                    v1771 = v1768 & 0xFFFFFFFFFFFFFFF0;
                                                    v1772 = 0uLL;
                                                    v1773 = v1767;
                                                    v1774 = (v1592 + v1593 * v1588 + 2 * v1611 - 14);
                                                    v1775 = &v1591[v1765];
                                                    v1776 = v1768 & 0xFFFFFFFFFFFFFFF0;
                                                    v1777 = 0uLL;
                                                    v1778 = 0uLL;
                                                    do
                                                    {
                                                      v1779 = vrev64q_s16(*v1774);
                                                      v1780 = vextq_s8(v1779, v1779, 8uLL);
                                                      v1781 = vrev64q_s16(v1774[-1]);
                                                      v1782 = vextq_s8(v1781, v1781, 8uLL);
                                                      v1783 = v1775[-1];
                                                      v1772 = vmlal_high_u16(v1772, v1783, v1780);
                                                      v1773 = vmlal_u16(v1773, *v1783.i8, *v1780.i8);
                                                      v1778 = vmlal_high_u16(v1778, *v1775, v1782);
                                                      v1777 = vmlal_u16(v1777, *v1775->i8, *v1782.i8);
                                                      v1774 -= 2;
                                                      v1775 += 2;
                                                      v1776 -= 16;
                                                    }

                                                    while (v1776);
                                                    v1767 = vaddvq_s32(vaddq_s32(vaddq_s32(v1777, v1773), vaddq_s32(v1778, v1772)));
                                                    if (v1768 != v1771)
                                                    {
                                                      if ((v1768 & 0xC) == 0)
                                                      {
                                                        v1770 = v1765 | v1771;
                                                        v1769 = v1611 - v1771;
                                                        goto LABEL_1046;
                                                      }

                                                      goto LABEL_1041;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v1771 = 0;
LABEL_1041:
                                                    v1769 = v1611 - (v1768 & 0xFFFFFFFFFFFFFFFCLL);
                                                    v1770 = v1765 + (v1768 & 0xFFFFFFFFFFFFFFFCLL);
                                                    v1784 = v1767;
                                                    v1785 = 2 * v1771;
                                                    v1786 = &v13[v1771 + v1765];
                                                    v1787 = v1771 - (v1768 & 0xFFFFFFFFFFFFFFFCLL);
                                                    v1788 = (v1592 + v1593 * v1588 + 2 * v1611 - v1785 - 6);
                                                    do
                                                    {
                                                      v1789 = *v1788--;
                                                      v1790 = vrev64_s16(v1789);
                                                      v1791 = *v1786++;
                                                      v1784 = vmlal_u16(v1784, v1791, v1790);
                                                      v1787 += 4;
                                                    }

                                                    while (v1787);
                                                    v1767 = vaddvq_s32(v1784);
                                                    if (v1768 != (v1768 & 0xFFFFFFFFFFFFFFFCLL))
                                                    {
LABEL_1046:
                                                      v1792 = (v1592 + v1593 * v1588 + 2 * v1769);
                                                      v1793 = &v13[v1770];
                                                      v1794 = v1765 + v1611 - v1770 - v1734 + 1;
                                                      do
                                                      {
                                                        v1796 = *v1792--;
                                                        v1795 = v1796;
                                                        v1797 = *v1793++;
                                                        v1767 += v1797 * v1795;
                                                        --v1794;
                                                      }

                                                      while (v1794);
                                                    }
                                                  }

                                                  *&v3991[2 * v1608 + 6] = v1767 >> 15;
                                                  if (v1608 + 9 >= v1607)
                                                  {
                                                    v1799 = vaddvq_s32(vmovl_u16(*v13)) + v13[4] + v13[5];
                                                    v1798 = 6;
                                                  }

                                                  else
                                                  {
                                                    v1798 = 0;
                                                    v1799 = 0;
                                                  }

                                                  v1800 = v1799 * v1594[v1607];
                                                  v1801 = v1608 - 1;
                                                  if (v1608 - 1 >= v1611)
                                                  {
                                                    v1801 = v1595 - 2;
                                                  }

                                                  v1802 = v1611 - v1801 + 1;
                                                  if (v1802 < 4)
                                                  {
                                                    v1803 = v1595 - 2;
                                                    v1804 = v1798;
                                                    goto LABEL_1066;
                                                  }

                                                  if (v1802 >= 0x10)
                                                  {
                                                    v1805 = v1802 & 0xFFFFFFFFFFFFFFF0;
                                                    v1806 = 0uLL;
                                                    v1807 = v1800;
                                                    v1808 = (v1592 + v1593 * v1588 + 2 * v1611 - 14);
                                                    v1809 = &v1591[v1798];
                                                    v1810 = v1802 & 0xFFFFFFFFFFFFFFF0;
                                                    v1811 = 0uLL;
                                                    v1812 = 0uLL;
                                                    do
                                                    {
                                                      v1813 = vrev64q_s16(*v1808);
                                                      v1814 = vextq_s8(v1813, v1813, 8uLL);
                                                      v1815 = vrev64q_s16(v1808[-1]);
                                                      v1816 = vextq_s8(v1815, v1815, 8uLL);
                                                      v1817 = v1809[-1];
                                                      v1806 = vmlal_high_u16(v1806, v1817, v1814);
                                                      v1807 = vmlal_u16(v1807, *v1817.i8, *v1814.i8);
                                                      v1812 = vmlal_high_u16(v1812, *v1809, v1816);
                                                      v1811 = vmlal_u16(v1811, *v1809->i8, *v1816.i8);
                                                      v1808 -= 2;
                                                      v1809 += 2;
                                                      v1810 -= 16;
                                                    }

                                                    while (v1810);
                                                    v1800 = vaddvq_s32(vaddq_s32(vaddq_s32(v1811, v1807), vaddq_s32(v1812, v1806)));
                                                    if (v1802 != v1805)
                                                    {
                                                      if ((v1802 & 0xC) == 0)
                                                      {
                                                        v1804 = v1798 | v1805;
                                                        v1803 = v1611 - v1805;
                                                        goto LABEL_1066;
                                                      }

                                                      goto LABEL_1061;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v1805 = 0;
LABEL_1061:
                                                    v1803 = v1611 - (v1802 & 0xFFFFFFFFFFFFFFFCLL);
                                                    v1804 = v1798 + (v1802 & 0xFFFFFFFFFFFFFFFCLL);
                                                    v1818 = v1800;
                                                    v1819 = &v13[v1805 + v1798];
                                                    v1820 = v1805 - (v1802 & 0xFFFFFFFFFFFFFFFCLL);
                                                    v1821 = (v1592 + v1593 * v1588 + 2 * v1611 - 2 * v1805 - 6);
                                                    do
                                                    {
                                                      v1822 = *v1821--;
                                                      v1823 = vrev64_s16(v1822);
                                                      v1824 = *v1819++;
                                                      v1818 = vmlal_u16(v1818, v1824, v1823);
                                                      v1820 += 4;
                                                    }

                                                    while (v1820);
                                                    v1800 = vaddvq_s32(v1818);
                                                    if (v1802 != (v1802 & 0xFFFFFFFFFFFFFFFCLL))
                                                    {
LABEL_1066:
                                                      v1825 = v1803 + 1;
                                                      v1826 = (v1592 + v1593 * v1588 + 2 * v1803);
                                                      v1827 = &v13[v1804];
                                                      do
                                                      {
                                                        v1829 = *v1826--;
                                                        v1828 = v1829;
                                                        v1830 = *v1827++;
                                                        v1800 += v1830 * v1828;
                                                        --v1825;
                                                      }

                                                      while (v1825 >= v1608);
                                                    }
                                                  }

                                                  *&v3991[2 * v1608 + 8] = v1800 >> 15;
                                                }

                                                memcpy(v1594, v66, 2 * v1595);
                                                v66 = v3991;
                                                ++v1589;
                                                v1587 = v3982;
                                                v1588 += 2;
                                                if (v1589 >= *(v3982 + 3))
                                                {
                                                  goto LABEL_2573;
                                                }

                                                continue;
                                              }
                                            }
                                          }

                                          v1511 = *v3982;
                                          v1512 = v3982[2];
                                          v1513 = *v3982 + 2 * v1512 * (v3928 - 1);
                                          v1514 = *a2 + 2 * a2[2] * v1504;
                                          if (v1504 > v3928 + 3)
                                          {
                                            v1515 = 0;
                                            while (1)
                                            {
                                              if (v1507 >= 4)
                                              {
                                                if (v1507 < 0x10)
                                                {
                                                  v1517 = 0;
                                                  v1518 = 0;
LABEL_902:
                                                  v65 = v1517;
                                                  v1526 = &v13[v1518];
                                                  v1527 = v1518 - (v1507 & 0xFFFFFFFFFFFFFFFCLL);
                                                  do
                                                  {
                                                    v1528 = *v1526++;
                                                    v65 = vaddw_u16(v65, v1528);
                                                    v1527 += 4;
                                                  }

                                                  while (v1527);
                                                  v1517 = vaddvq_s32(v65);
                                                  v1516 = v1507 & 0x7FFFFFFFFFFFFFFCLL;
                                                  if (v1507 == (v1507 & 0x7FFFFFFFFFFFFFFCLL))
                                                  {
                                                    goto LABEL_893;
                                                  }

                                                  goto LABEL_905;
                                                }

                                                v1519 = 0uLL;
                                                v1520 = v1507 & 0xFFFFFFFFFFFFFFF0;
                                                v1521 = (v13 + 8);
                                                v1522 = 0uLL;
                                                v1523 = 0uLL;
                                                v1524 = 0uLL;
                                                do
                                                {
                                                  v1525 = v1521[-1];
                                                  v1522 = vaddw_high_u16(v1522, v1525);
                                                  v1519 = vaddw_u16(v1519, *v1525.i8);
                                                  v1524 = vaddw_high_u16(v1524, *v1521);
                                                  v1523 = vaddw_u16(v1523, *v1521->i8);
                                                  v1521 += 2;
                                                  v1520 -= 16;
                                                }

                                                while (v1520);
                                                v65 = vaddq_s32(vaddq_s32(v1523, v1519), vaddq_s32(v1524, v1522));
                                                v1517 = vaddvq_s32(v65);
                                                if (v1507 == (v1507 & 0x7FFFFFFFFFFFFFF0))
                                                {
                                                  goto LABEL_893;
                                                }

                                                v1518 = v1507 & 0x7FFFFFFFFFFFFFF0;
                                                v1516 = v1507 & 0x7FFFFFFFFFFFFFF0;
                                                if ((v1507 & 0xC) != 0)
                                                {
                                                  goto LABEL_902;
                                                }
                                              }

                                              else
                                              {
                                                v1516 = 0;
                                                v1517 = 0;
                                              }

                                              do
                                              {
LABEL_905:
                                                v1517 += v13[v1516++];
                                              }

                                              while (v1507 != v1516);
LABEL_893:
                                              *(v1514 + 2 * v1515) = (v1517 * *(v1513 + 2 * v1515)) >> 15;
                                              if (++v1515 == v1251)
                                              {
                                                goto LABEL_881;
                                              }
                                            }
                                          }

                                          v1529 = (v3897 - v1508) & 0xFFFFFFFFFFFFFFFELL;
                                          if (v1504 < v3928 - 6)
                                          {
                                            v1530 = 0;
                                            v1531 = v3897 - v1509;
                                            v1532 = v1511 + v3893 * v1512;
                                            v1533 = 4 * v1512;
                                            v1534 = v1511 + v3889 * v1512;
                                            v1535 = 2 * v1512;
                                            v1536 = -2 * v1512;
                                            while (1)
                                            {
                                              if (v1531 >= 2)
                                              {
                                                v1540 = 0;
                                                v1541 = 0;
                                                v1542 = 0;
                                                v1543 = (v3897 - v1508) & 0xFFFFFFFFFFFFFFFELL;
                                                v1544 = v13 + 1;
                                                do
                                                {
                                                  v1545 = *(v1544 - 1);
                                                  v1546 = *v1544;
                                                  v1544 += 2;
                                                  v1541 += v1545 * *(v1532 + v1540);
                                                  v1542 += v1546 * *(v1534 + v1540);
                                                  v1540 -= v1533;
                                                  v1543 -= 2;
                                                }

                                                while (v1543);
                                                v1538 = v1542 + v1541;
                                                v1539 = v3989 - (v1531 & 0xFFFFFFFFFFFFFFFELL);
                                                v1537 = v1531 & 0xFFFFFFFFFFFFFFFELL;
                                                if (v1531 == (v1531 & 0xFFFFFFFFFFFFFFFELL))
                                                {
                                                  goto LABEL_909;
                                                }
                                              }

                                              else
                                              {
                                                v1537 = 0;
                                                v1538 = 0;
                                                v1539 = v3928 - 2;
                                              }

                                              v1547 = v1539 + 5;
                                              v1548 = (v1511 + v1535 * v1539);
                                              v1549 = &v13[v1537];
                                              do
                                              {
                                                v1550 = *v1549++;
                                                v1538 += v1550 * *v1548;
                                                --v1547;
                                                v1548 = (v1548 + v1536);
                                              }

                                              while (v1547 >= v1504);
LABEL_909:
                                              *(v1514 + 2 * v1530++) = v1538 >> 15;
                                              v1532 += 2;
                                              v1534 += 2;
                                              v1511 += 2;
                                              if (v1530 == v1251)
                                              {
                                                goto LABEL_881;
                                              }
                                            }
                                          }

                                          v1551 = 0;
                                          v1552 = v3897 - v1510;
                                          v1553 = v1507 & 0x7FFFFFFFFFFFFFF0;
                                          v1554 = (v3897 - v1510) & 0xFFFFFFFFFFFFFFFELL;
                                          v1555 = v1511 + v3889 * v1512;
                                          v1556 = 4 * v1512;
                                          v1557 = v1511 + v3893 * v1512;
                                          v1558 = 2 * v1512;
                                          v1559 = -2 * v1512;
                                          while (1)
                                          {
                                            if (v1507 < 4)
                                            {
                                              v1560 = 0;
                                              v1561 = 0;
                                              do
                                              {
LABEL_931:
                                                v1561 += v13[v1560++];
                                              }

                                              while (v1507 != v1560);
                                              goto LABEL_932;
                                            }

                                            if (v1507 >= 0x10)
                                            {
                                              v1563 = 0uLL;
                                              v1564 = v1507 & 0xFFFFFFFFFFFFFFF0;
                                              v1565 = (v13 + 8);
                                              v1566 = 0uLL;
                                              v1567 = 0uLL;
                                              v1568 = 0uLL;
                                              do
                                              {
                                                v1569 = v1565[-1];
                                                v1566 = vaddw_high_u16(v1566, v1569);
                                                v1563 = vaddw_u16(v1563, *v1569.i8);
                                                v1568 = vaddw_high_u16(v1568, *v1565);
                                                v1567 = vaddw_u16(v1567, *v1565->i8);
                                                v1565 += 2;
                                                v1564 -= 16;
                                              }

                                              while (v1564);
                                              v65 = vaddq_s32(vaddq_s32(v1567, v1563), vaddq_s32(v1568, v1566));
                                              v1561 = vaddvq_s32(v65);
                                              if (v1507 == v1553)
                                              {
                                                goto LABEL_932;
                                              }

                                              v1562 = v1553;
                                              v1560 = v1553;
                                              if ((v1507 & 0xC) == 0)
                                              {
                                                goto LABEL_931;
                                              }
                                            }

                                            else
                                            {
                                              v1561 = 0;
                                              v1562 = 0;
                                            }

                                            v65 = v1561;
                                            v1570 = &v13[v1562];
                                            v1571 = v1562 - (v1507 & 0xFFFFFFFFFFFFFFFCLL);
                                            do
                                            {
                                              v1572 = *v1570++;
                                              v65 = vaddw_u16(v65, v1572);
                                              v1571 += 4;
                                            }

                                            while (v1571);
                                            v1561 = vaddvq_s32(v65);
                                            v1560 = v1507 & 0x7FFFFFFFFFFFFFFCLL;
                                            if (v1507 != (v1507 & 0x7FFFFFFFFFFFFFFCLL))
                                            {
                                              goto LABEL_931;
                                            }

LABEL_932:
                                            v1573 = v1561 * *(v1513 + 2 * v1551);
                                            if (v1552 >= 2)
                                            {
                                              v1576 = v1553;
                                              v1577 = 0;
                                              v1578 = 0;
                                              v1579 = v1506;
                                              v1580 = v1529;
                                              do
                                              {
                                                v1581 = *(v1579 - 1);
                                                v1582 = *v1579;
                                                v1579 += 2;
                                                v1573 += v1581 * *(v1557 + v1577);
                                                v1578 += v1582 * *(v1555 + v1577);
                                                v1577 -= v1556;
                                                v1580 -= 2;
                                              }

                                              while (v1580);
                                              v1573 += v1578;
                                              v1574 = v3989 - v1554;
                                              v1575 = v1507 + v1554;
                                              v1251 = v3963;
                                              v1553 = v1576;
                                              if (v1552 == v1554)
                                              {
                                                goto LABEL_919;
                                              }
                                            }

                                            else
                                            {
                                              v1574 = v3928 - 2;
                                              v1575 = v1507;
                                            }

                                            v1583 = v1574 + 5;
                                            v1584 = (v1511 + v1558 * v1574);
                                            v1585 = &v13[v1575];
                                            do
                                            {
                                              v1586 = *v1585++;
                                              v1573 += v1586 * *v1584;
                                              --v1583;
                                              v1584 = (v1584 + v1559);
                                            }

                                            while (v1583 >= v1504);
LABEL_919:
                                            *(v1514 + 2 * v1551++) = v1573 >> 15;
                                            v1555 += 2;
                                            v1557 += 2;
                                            v1511 += 2;
                                            if (v1551 == v1251)
                                            {
                                              goto LABEL_881;
                                            }
                                          }
                                        }
                                      }

                                      v1306 = v3498;
                                      v1255 = v3946;
                                      goto LABEL_758;
                                    }
                                  }
                                }
                              }

                              else
                              {
                                v1295 = 0;
                              }

                              v1296 = v1251 - v1295;
                              v1297 = (v1255 + 2 * v1295 + v1294);
                              v1298 = v1254 + v1295;
                              do
                              {
                                v1299 = &v1298[v1252];
                                v1300 = *v1299;
                                v1301 = &v1299[v1261];
                                v1302 = (v13[1] + *v13 + v13[2]) * *v1298 + v13[3] * v1300 + v13[4] * *v1301;
                                v1303 = &v1301[v1261 + v1261];
                                v1304 = v1302 + v13[5] * v1301[v1252];
                                LODWORD(v1301) = *v1303;
                                v1305 = &v1303[v1261];
                                *v1297++ = (v1304 + v13[6] * v1301 + v13[7] * *v1305 + v13[8] * v1305[v1261] + v13[9] * v1305[v1261 + v1261] + v13[10] * v1305[v1261 + v1261 + v1261]) >> 15;
                                ++v1298;
                                --v1296;
                              }

                              while (v1296);
                              goto LABEL_756;
                            }
                          }
                        }

LABEL_750:
                        v1287 = v1251 - v1286;
                        v1288 = (v1255 + v1283 + 2 * v1286);
                        v1289 = v1254 + v1286;
                        do
                        {
                          v1290 = &v1289[v1252];
                          v1291 = &v1290[v1261 + v1261];
                          v1292 = vaddvq_s32(vmovl_u16(*v13)) * *v1289 + v13[4] * *v1290 + v13[5] * v1290[v1252];
                          LODWORD(v1290) = *v1291;
                          v1293 = &v1291[v1261];
                          *v1288++ = (v1292 + v13[6] * v1290 + v13[7] * *v1293 + v13[8] * v1293[v1261] + v13[9] * v1293[v1261 + v1261] + v13[10] * v1293[v1261 + v1261 + v1261]) >> 15;
                          ++v1289;
                          --v1287;
                        }

                        while (v1287);
                        goto LABEL_752;
                      }

                      v1285 = 14 * v1252;
                      v1284 = v1252;
                    }
                  }

                  v1283 = 4 * v1270;
                  goto LABEL_750;
                }
              }
            }

            else
            {
              v1256 = 6 * v1252;
            }
          }

          else
          {
            v1272 = 0;
          }

          v1273 = v1251 - v1272;
          v1274 = v1272;
          v1275 = (v1255 + 2 * v1272 + 2 * v1270);
          v1276 = &v1254->u16[v1274];
          do
          {
            v1277 = &v1276[v1252];
            v1278 = *v1277;
            v1279 = &v1277[v1261];
            v1280 = (vaddvq_s32(vmovl_u16(*v13)) + v13[4]) * *v1276 + v13[5] * v1278;
            v1281 = *v1279;
            v1282 = &v1279[v1261];
            *v1275++ = (v1280 + v13[6] * v1281 + v13[7] * *v1282 + v13[8] * v1282[v1261] + v13[9] * v1282[v1261 + v1261] + v13[10] * v1282[v1261 + v1261 + v1261]) >> 15;
            ++v1276;
            --v1273;
          }

          while (v1273);
          goto LABEL_748;
        }
      }
    }

    else
    {
      v1262 = 0;
    }

    v1263 = v1251 - v1262;
    v1264 = v1262;
    v1265 = (v1255 + 2 * v1262);
    v1266 = &v1254->u16[v1264];
    do
    {
      v1267 = &v1266[v1252];
      v1268 = *v1267;
      v1269 = &v1267[v1261];
      *v1265++ = ((vaddvq_s32(vmovl_u16(*v13)) + v13[4] + v13[5]) * *v1266++ + v13[6] * v1268 + v13[7] * *v1269 + v13[8] * v1269[v1261] + v13[9] * v1269[v1261 + v1261] + v13[10] * v1269[v1261 + v1261 + v1261]) >> 15;
      --v1263;
    }

    while (v1263);
    goto LABEL_744;
  }

  v66 = v3991;
  if (v64 == 3)
  {
    v1128 = *(v4 + 2);
    if (v1128 < 1)
    {
      goto LABEL_670;
    }

    v1129 = *v4;
    v1130 = v4[2];
    v1131 = 4 * v1130;
    v1132 = *a2;
    v1133 = 6 * v1130;
    v1134 = 2 * v1128;
    v1135 = *v4 + 2 * v1130;
    v1136 = v1130;
    if (v1128 >= 8)
    {
      v1137 = 0;
      v3060 = v1132 + v1134;
      v3062 = v1132 < v1129->u64 + v1133 + v1134 && v1129->u64 + v1133 < v3060;
      v3064 = v1132 < v1129->u64 + v1131 + v1134 && v1129->u64 + v1131 < v3060;
      v3066 = v1132 < v1135 + v1134 && v1135 < v3060;
      v3068 = v1132 < v1129->u64 + v1134 && v1129 < v3060;
      if ((v13 >= v3060 || v1132 >= (v13 + 7)) && !v3062 && !v3064 && !v3066 && !v3068)
      {
        v3070 = v13;
        v3071 = vld1_dup_s16(v3070++);
        v3072 = vld1_dup_s16(v3070);
        v3073 = vaddl_u16(v3072, v3071);
        v3074 = (v13 + 2);
        v3075 = vld1_dup_s16(v3074);
        v3076 = (v13 + 3);
        v3077 = vld1_dup_s16(v3076);
        v65 = vaddw_u16(vaddw_u16(v3073, v3075), v3077);
        v3078 = (v13 + 4);
        v3079 = vld1_dup_s16(v3078);
        v3080 = vmovl_u16(v3079);
        v3081 = (v13 + 5);
        v3082 = vld1_dup_s16(v3081);
        v3083 = (v13 + 6);
        v3084 = vld1_dup_s16(v3083);
        v3085 = vmovl_u16(v3082);
        v3086 = vmovl_u16(v3084);
        v1137 = v1128 & 0x7FFFFFF8;
        v3087 = vuzp1q_s16(v65, v3080);
        v3088 = vmovn_s32(v3080);
        v3089 = vuzp1q_s16(v65, v3085);
        v3090 = vmovn_s32(v3085);
        v3091 = vuzp1q_s16(v65, v3086);
        v3092 = vmovn_s32(v3086);
        v3093 = v1137;
        v3094 = *a2;
        v3095 = *v4;
        do
        {
          *v3094++ = vshrn_high_n_s32(vshrn_n_s32(vmlal_u16(vmlal_u16(vmlal_u16(vmulq_s32(v65, vmovl_u16(*v3095)), v3088, *(v3095 + 2 * v1130)), v3090, *(v3095 + 4 * v1130)), v3092, *(v3095 + 6 * v1130)), 0xFuLL), vmlal_high_u16(vmlal_high_u16(vmlal_high_u16(vmulq_s32(v65, vmovl_high_u16(*v3095->i8)), v3087, *&v3095->i8[2 * v1130]), v3089, *&v3095->i8[4 * v1130]), v3091, *&v3095->i8[6 * v1130]), 0xFuLL);
          v3095 += 2;
          v3093 -= 8;
        }

        while (v3093);
        if (v1137 == v1128)
        {
LABEL_662:
          v1138 = a2[2];
          v1139 = 8 * v1130;
          if (v1128 >= 8)
          {
            v1140 = 0;
            v3096 = (v1132 + 2 * v1138);
            v3097 = v1132 + 2 * (v1138 + v1128);
            v3099 = v3096 < &v1129->i8[v1139 + v1134] && &v1129->u64[v1139 / 8] < v3097;
            v3101 = v3096 < &v1129->i8[v1133 + v1134] && v1129->u64 + v1133 < v3097;
            v3103 = v3096 < &v1129->i8[v1131 + v1134] && v1129->u64 + v1131 < v3097;
            v3105 = v3096 < v1135 + v1134 && v1135 < v3097;
            v3107 = v3096 < &v1129->i8[v1134] && v1129 < v3097;
            if ((v13 >= v3097 || v3096 >= (v13 + 7)) && !v3099 && !v3101 && !v3103 && !v3105 && !v3107)
            {
              v3109 = v13;
              v3110 = vld1_dup_s16(v3109++);
              v3111 = vld1_dup_s16(v3109);
              v3112 = vaddl_u16(v3111, v3110);
              v3113 = (v13 + 2);
              v3114 = vld1_dup_s16(v3113);
              v65 = vaddw_u16(v3112, v3114);
              v3115 = (v13 + 3);
              v3116 = vld1_dup_s16(v3115);
              v3117 = vmovl_u16(v3116);
              v3118 = (v13 + 4);
              v3119 = vld1_dup_s16(v3118);
              v3120 = vmovl_u16(v3119);
              v3121 = (v13 + 5);
              v3122 = vld1_dup_s16(v3121);
              v3123 = vmovl_u16(v3122);
              v3124 = (v13 + 6);
              v3125 = vld1_dup_s16(v3124);
              v3126 = vmovl_u16(v3125);
              v3127 = vuzp1q_s16(v65, v3117);
              v3128 = vmovn_s32(v3117);
              v1140 = v1128 & 0x7FFFFFF8;
              v3129 = vuzp1q_s16(v65, v3120);
              v3130 = vmovn_s32(v3120);
              v3131 = vuzp1q_s16(v65, v3123);
              v3132 = vmovn_s32(v3123);
              v3133 = vuzp1q_s16(v65, v3126);
              v3134 = vmovn_s32(v3126);
              v3135 = v1140;
              v3136 = v1129;
              do
              {
                v3137 = (v3136 + v1136 * 2 + v1136 * 2);
                *v3096++ = vshrn_high_n_s32(vshrn_n_s32(vmlal_u16(vmlal_u16(vmlal_u16(vmlal_u16(vmulq_s32(v65, vmovl_u16(*v3136)), v3128, *(v3136 + 2 * v1130)), v3130, *v3137), v3132, *(v3137 + v1136 * 2)), v3134, *(v3137 + 2 * v1130 + v1136 * 2)), 0xFuLL), vmlal_high_u16(vmlal_high_u16(vmlal_high_u16(vmlal_high_u16(vmulq_s32(v65, vmovl_high_u16(*v3136->i8)), v3127, *&v3136->i8[2 * v1130]), v3129, *v3137->i8), v3131, *&v3137->i8[v1136 * 2]), v3133, *&v3137->i8[2 * v1130 + v1136 * 2]), 0xFuLL);
                v3136 += 2;
                v3135 -= 8;
              }

              while (v3135);
              if (v1140 == v1128)
              {
                goto LABEL_666;
              }
            }
          }

          else
          {
            v1140 = 0;
          }

          v1141 = v1128 - v1140;
          v1142 = v1140;
          v1143 = (v1132 + 2 * v1140 + 2 * v1138);
          v1144 = &v1129->u16[v1142];
          do
          {
            v1145 = &v1144[v1130];
            *v1143++ = ((v13[1] + *v13 + v13[2]) * *v1144++ + v13[3] * *v1145 + v13[4] * v1145[v1136] + v13[5] * v1145[v1136 + v1136] + v13[6] * v1145[v1136 + v1136 + v1130]) >> 15;
            --v1141;
          }

          while (v1141);
LABEL_666:
          v1146 = 4 * v1138;
          if (v1128 >= 0x10)
          {
            v1147 = 0;
            v3138 = (v1132 + v1146);
            v3139 = v1132 + v1146 + v1134;
            v3140 = &v1129->i8[10 * v1130];
            v3141 = &v1129->i8[v1139];
            v3142 = &v3141[v1134];
            v3143 = &v1129->i8[v1133];
            v3144 = &v3143[v1134];
            v3145 = &v1129->i8[v1131];
            v3146 = v1129->u64 + v1131 + v1134;
            v3147 = v1135 + v1134;
            v3148 = v1129->u64 + v1134;
            v3150 = v1132 + v1146 < &v3140[v1134] && v3140 < v3139;
            v3152 = v3138 < v3142 && v3141 < v3139;
            v3154 = v3138 < v3144 && v3143 < v3139;
            v3156 = v3138 < v3146 && v3145 < v3139;
            v3158 = v3138 < v3147 && v1135 < v3139;
            v3160 = v3138 < v3148 && v1129 < v3139;
            if ((v13 >= v3139 || v3138 >= (v13 + 7)) && !v3150 && !v3152 && !v3154 && !v3156 && !v3158 && !v3160)
            {
              v3162 = v13;
              v3163 = vld1_dup_s16(v3162++);
              v3164 = vld1_dup_s16(v3162);
              v65 = vaddl_u16(v3164, v3163);
              v3165 = (v13 + 2);
              v3166 = vld1_dup_s16(v3165);
              v3167 = vmovl_u16(v3166);
              v3168 = (v13 + 3);
              v3169 = vld1_dup_s16(v3168);
              v3170 = vmovl_u16(v3169);
              v3171 = (v13 + 4);
              v3172 = vld1_dup_s16(v3171);
              v3173 = vmovl_u16(v3172);
              v3174 = (v13 + 5);
              v3175 = vld1_dup_s16(v3174);
              v3176 = vmovl_u16(v3175);
              v3177 = (v13 + 6);
              v3178 = vld1_dup_s16(v3177);
              v3179 = vmovl_u16(v3178);
              v3180 = vuzp1q_s16(v65, v3167);
              v3181 = vmovn_s32(v3167);
              v1147 = v1128 & 0x7FFFFFF8;
              v3182 = vuzp1q_s16(v65, v3170);
              v3183 = vmovn_s32(v3170);
              v3184 = vuzp1q_s16(v65, v3173);
              v3185 = vmovn_s32(v3173);
              v3186 = vuzp1q_s16(v65, v3176);
              v3187 = vmovn_s32(v3176);
              v3188 = vuzp1q_s16(v65, v3179);
              v3189 = vmovn_s32(v3179);
              v3190 = v1147;
              v3191 = v1129;
              do
              {
                v3192 = *(v3191 + 2 * v1130);
                v3193 = (v3191 + v1136 * 2 + v1136 * 2);
                v3194 = vmlal_high_u16(vmlal_high_u16(vmulq_s32(v65, vmovl_high_u16(*v3191)), v3180, v3192), v3182, *v3193);
                v3195 = vmlal_u16(vmlal_u16(vmulq_s32(v65, vmovl_u16(*v3191->i8)), v3181, *v3192.i8), v3183, *v3193->i8);
                v3196 = &v3193->i8[v1136 * 2];
                *v3138++ = vshrn_high_n_s32(vshrn_n_s32(vmlal_u16(vmlal_u16(vmlal_u16(v3195, v3185, *v3196), v3187, *(v3196 + 2 * v1130)), v3189, *(v3196 + 2 * v1130 + 2 * v1130)), 0xFuLL), vmlal_high_u16(vmlal_high_u16(vmlal_high_u16(v3194, v3184, *v3196->i8), v3186, *&v3196->i8[2 * v1130]), v3188, *&v3196->i8[2 * v1130 + 2 * v1130]), 0xFuLL);
                ++v3191;
                v3190 -= 8;
              }

              while (v3190);
              if (v1147 == v1128)
              {
                goto LABEL_670;
              }
            }
          }

          else
          {
            v1147 = 0;
          }

          v1148 = v1128 - v1147;
          v1149 = (v1132 + v1146 + 2 * v1147);
          v1150 = v1129 + v1147;
          do
          {
            v1151 = &v1150[v1130];
            v1152 = *v1151;
            v1153 = &v1151[v1136];
            *v1149++ = ((v13[1] + *v13) * *v1150++ + v13[2] * v1152 + v13[3] * *v1153 + v13[4] * v1153[v1136] + v13[5] * v1153[v1136 + v1136] + v13[6] * v1153[v1136 + v1136 + v1136]) >> 15;
            --v1148;
          }

          while (v1148);
LABEL_670:
          v3945 = *(v4 + 3);
          v3987 = v1128;
          if (v3945 > 6)
          {
            v1154 = 0;
            v1155 = 0;
            v1156 = (v3945 - 6);
            v3971 = 2 * v1128;
            v3955 = v1128 & 0x7FFFFFF8;
            v1157 = 3;
            v1158 = 6;
            do
            {
              if (v1128 <= 0)
              {
                v1159 = v1155 + 1;
              }

              else
              {
                v1160 = *v4;
                v1161 = v4[2];
                v1162 = *a2;
                v1163 = a2[2];
                v1159 = v1155 + 1;
                v1164 = v1155 + 6;
                v1165 = 2 * v1161;
                if (v1128 > 7)
                {
                  v1166 = 0;
                  v1177 = v1162 + 2 * v1163 * v1157;
                  v1178 = v1155 + 5;
                  v1179 = v1155 + 4;
                  v1180 = v1155 + 3;
                  v1181 = v1155 + 2;
                  v1182 = v1162 + v3971 + v1163 * (2 * v1154 + 6);
                  v1183 = 2 * v1155 * v1161;
                  v1184 = v1165 * v1181;
                  v1185 = v1160->u64 + v1184;
                  v1186 = v1160->u64 + v3971 + v1184;
                  v1187 = v1165 * v1180;
                  v1188 = v1160->u64 + v1187;
                  v1189 = v1160->u64 + v3971 + v1187;
                  v1190 = v1165 * v1179;
                  v1191 = v1160->u64 + v1190;
                  v1192 = v1160->u64 + v3971 + v1190;
                  v1193 = v1165 * v1178;
                  v1194 = v1160->u64 + v1193;
                  v1195 = v1160->u64 + v3971 + v1193;
                  v1197 = v1177 < v1160->u64 + v3971 + v1183 && v1160->u64 + v1183 < v1182;
                  v1199 = v1177 < v1160->u64 + v3971 + v1165 * v1159 && v1160->u64 + v1165 * v1159 < v1182;
                  v1201 = v1177 < v1186 && v1185 < v1182;
                  v1203 = v1177 < v1189 && v1188 < v1182;
                  v1205 = v1177 < v1192 && v1191 < v1182;
                  v1207 = v1177 < v1195 && v1194 < v1182;
                  v1209 = v1177 < v1160->u64 + v3971 + v1165 * v1164 && v1160->u64 + v1165 * v1164 < v1182;
                  if (v13 >= v1182 || v1177 >= (v13 + 7))
                  {
                    v4 = v3982;
                    v66 = v3991;
                    v1128 = v3987;
                    if (v1197 || v1199 || v1201 || v1203 || v1205 || v1207)
                    {
                      v1156 = (v3945 - 6);
                    }

                    else
                    {
                      v1156 = (v3945 - 6);
                      if (!v1209)
                      {
                        v1211 = (v13 + 6);
                        *v65.i8 = vld1_dup_s16(v1211);
                        v1212 = vmovl_u16(*v65.i8);
                        v1213 = (v13 + 5);
                        *v65.i8 = vld1_dup_s16(v1213);
                        v1214 = (v13 + 4);
                        v1215 = vld1_dup_s16(v1214);
                        v1216 = vmovl_u16(*v65.i8);
                        v1217 = vmovl_u16(v1215);
                        v1218 = (v13 + 3);
                        *v65.i8 = vld1_dup_s16(v1218);
                        v1219 = (v13 + 2);
                        v1220 = vld1_dup_s16(v1219);
                        v1221 = v13;
                        v1222 = vld1_dup_s16(v1221++);
                        v1223 = vmovl_u16(*v65.i8);
                        v1224 = vmovl_u16(v1220);
                        *v65.i8 = vld1_dup_s16(v1221);
                        v1225 = vmovl_u16(*v65.i8);
                        v1226 = vmovl_u16(v1222);
                        v1227 = (v1160 + v1165 * v1164);
                        v65 = vuzp1q_s16(v65, v1212);
                        v1228 = vmovn_s32(v1212);
                        v1229 = (v1162 + v1163 * v1158);
                        v1230 = vuzp1q_s16(v65, v1216);
                        v1231 = vmovn_s32(v1216);
                        v1232 = vuzp1q_s16(v65, v1217);
                        v1233 = vmovn_s32(v1217);
                        v1234 = vuzp1q_s16(v65, v1223);
                        v1235 = vmovn_s32(v1223);
                        v1236 = vuzp1q_s16(v65, v1224);
                        v1237 = vmovn_s32(v1224);
                        v1238 = vuzp1q_s16(v65, v1225);
                        v1239 = vmovn_s32(v1225);
                        v1240 = vuzp1q_s16(v65, v1226);
                        v1241 = vmovn_s32(v1226);
                        v1242 = v3955;
                        do
                        {
                          v1243 = &v1227->i8[-v1165];
                          v1244 = *(v1227 - v1165);
                          v1245 = *v1227++;
                          v1246 = &v1243[-v1165];
                          v1247 = *v1246;
                          v1248 = (v1246 - v1165);
                          v1249 = *v1248;
                          v1250 = (v1248 - v1165);
                          *v1229++ = vshrn_high_n_s32(vshrn_n_s32(vmlal_u16(vmlal_u16(vmlal_u16(vmlal_u16(vmlal_u16(vmlal_u16(vmull_u16(*v1244.i8, v1231), *v1245.i8, v1228), *v1247.i8, v1233), *v1249.i8, v1235), *v1250, v1237), *(v1250 - v1165), v1239), *(v1250 - v1165 - v1165), v1241), 0xFuLL), vmlal_high_u16(vmlal_high_u16(vmlal_high_u16(vmlal_high_u16(vmlal_high_u16(vmlal_high_u16(vmull_high_u16(v1244, v1230), v1245, v65), v1247, v1232), v1249, v1234), *v1250->i8, v1236), *&v1250->i8[-v1165], v1238), *&v1250->i8[-v1165 - v1165], v1240), 0xFuLL);
                          v1242 -= 8;
                        }

                        while (v1242);
                        v1166 = v3955;
                        if (v3955 == v3987)
                        {
                          goto LABEL_673;
                        }
                      }
                    }
                  }

                  else
                  {
                    v1156 = (v3945 - 6);
                    v4 = v3982;
                    v66 = v3991;
                    v1128 = v3987;
                  }
                }

                else
                {
                  v1166 = 0;
                }

                v1167 = v1128 - v1166;
                v1168 = v1166;
                v1169 = (v1162 + v1168 * 2 + v1163 * v1158);
                v1170 = (&v1160->u16[v1168] + v1165 * v1164);
                v1171 = -v1165;
                do
                {
                  v1172 = (v1170 + v1171 + v1171);
                  v1173 = *v1172;
                  v1174 = (v1172 + v1171);
                  v1175 = *v1174;
                  v1176 = (v1174 + v1171);
                  *v1169++ = (*v1170 * v13[6] + *(v1170 + v1171) * v13[5] + v1173 * v13[4] + v1175 * v13[3] + *v1176 * v13[2] + *(v1176 + v1171) * v13[1] + *(v1176 + v1171 + v1171) * *v13) >> 15;
                  ++v1170;
                  --v1167;
                }

                while (v1167);
              }

LABEL_673:
              ++v1157;
              ++v1154;
              v1158 += 2;
              v1155 = v1159;
            }

            while (v1159 != v1156);
          }

          if (v1128 < 1)
          {
LABEL_2484:
            if (v3945 < 1)
            {
              goto LABEL_2573;
            }

            v3704 = 0;
            v3705 = 0;
            v3706 = v66 + 2;
            v3707 = (v66 + 3);
            v3708 = v13 + 8;
            while (1)
            {
              v3709 = *a2;
              v3710 = a2[2];
              v3711 = (*a2 + 2 * v3710 * v3705);
              *v66 = ((v13[1] + *v13 + v13[2] + v13[3]) * *v3711 + v3711[1] * v13[4] + v3711[2] * v13[5] + v3711[3] * v13[6]) >> 15;
              v66[1] = ((v13[1] + *v13 + v13[2]) * *v3711 + v3711[1] * v13[3] + v3711[2] * v13[4] + v3711[3] * v13[5] + v3711[4] * v13[6]) >> 15;
              v66[2] = ((v13[1] + *v13) * *v3711 + v3711[1] * v13[2] + v3711[2] * v13[3] + v3711[3] * v13[4] + v3711[4] * v13[5] + v3711[5] * v13[6]) >> 15;
              v3712 = *(v4 + 2);
              if (v3712 > 6)
              {
                break;
              }

LABEL_2494:
              v3723 = v3712 - 3;
              v3724 = v3712 - 1;
              v3725 = v3712 - 3;
              if (v3725 + 3 >= v3712 - 1)
              {
                v3727 = v13[1] + *v13;
                v3726 = 2;
              }

              else
              {
                v3726 = 0;
                v3727 = 0;
              }

              v3728 = v3712 - 2;
              v3729 = v3727 * v3711[v3724];
              if (v3712 + 1 >= v3723)
              {
                v3730 = v3723 - 3;
                if (v3725 - 3 >= v3728)
                {
                  v3730 = v3712 - 2;
                }

                v3731 = v3728 - v3730 + 1;
                if (v3731 < 4)
                {
                  v3732 = v3712 - 2;
                  v3733 = v3726;
                  goto LABEL_2529;
                }

                if (v3731 >= 0x10)
                {
                  v3770 = v3731 & 0xFFFFFFFFFFFFFFF0;
                  v3771 = 0uLL;
                  v3772 = v3729;
                  v3773 = (v3709 + v3710 * v3704 + 2 * v3728 - 14);
                  v3774 = &v3708[v3726];
                  v3775 = v3731 & 0xFFFFFFFFFFFFFFF0;
                  v3776 = 0uLL;
                  v3777 = 0uLL;
                  do
                  {
                    v3778 = vrev64q_s16(*v3773);
                    v3779 = vextq_s8(v3778, v3778, 8uLL);
                    v3780 = vrev64q_s16(v3773[-1]);
                    v3781 = vextq_s8(v3780, v3780, 8uLL);
                    v3782 = v3774[-1];
                    v3771 = vmlal_high_u16(v3771, v3782, v3779);
                    v3772 = vmlal_u16(v3772, *v3782.i8, *v3779.i8);
                    v3777 = vmlal_high_u16(v3777, *v3774, v3781);
                    v3776 = vmlal_u16(v3776, *v3774->i8, *v3781.i8);
                    v3773 -= 2;
                    v3774 += 2;
                    v3775 -= 16;
                  }

                  while (v3775);
                  v3729 = vaddvq_s32(vaddq_s32(vaddq_s32(v3776, v3772), vaddq_s32(v3777, v3771)));
                  if (v3731 == v3770)
                  {
                    goto LABEL_2531;
                  }

                  if ((v3731 & 0xC) == 0)
                  {
                    v3733 = v3726 | v3770;
                    v3732 = v3728 - v3770;
LABEL_2529:
                    v3790 = v3732 + 1;
                    v3791 = (v3709 + v3710 * v3704 + 2 * v3732);
                    v3792 = &v13[v3733];
                    do
                    {
                      v3794 = *v3791--;
                      v3793 = v3794;
                      v3795 = *v3792++;
                      v3729 += v3795 * v3793;
                      --v3790;
                    }

                    while (v3790 >= v3725 - 2);
                    goto LABEL_2531;
                  }
                }

                else
                {
                  v3770 = 0;
                }

                v3732 = v3728 - (v3731 & 0xFFFFFFFFFFFFFFFCLL);
                v3733 = v3726 | v3731 & 0xFFFFFFFFFFFFFFFCLL;
                v3783 = v3729;
                v3784 = &v13[v3770 + v3726];
                v3785 = v3770 - (v3731 & 0xFFFFFFFFFFFFFFFCLL);
                v3786 = (v3709 + v3710 * v3704 + 2 * v3728 - 2 * v3770 - 6);
                do
                {
                  v3787 = *v3786--;
                  v3788 = vrev64_s16(v3787);
                  v3789 = *v3784++;
                  v3783 = vmlal_u16(v3783, v3789, v3788);
                  v3785 += 4;
                }

                while (v3785);
                v3729 = vaddvq_s32(v3783);
                if (v3731 != (v3731 & 0xFFFFFFFFFFFFFFFCLL))
                {
                  goto LABEL_2529;
                }
              }

LABEL_2531:
              v66[v3725] = v3729 >> 15;
              if (v3725 + 1 >= v3712)
              {
                goto LABEL_2487;
              }

              if (v3725 + 4 >= v3724)
              {
                v3797 = v13[1] + *v13 + v13[2];
                v3796 = 3;
              }

              else
              {
                v3796 = 0;
                v3797 = 0;
              }

              v3798 = v3797 * v3711[v3724];
              v3799 = v3725 - 2;
              if (v3725 - 2 >= v3728)
              {
                v3799 = v3712 - 2;
              }

              v3800 = v3728 - v3799 + 1;
              if (v3800 >= 4)
              {
                if (v3800 < 0x10)
                {
                  v3803 = 0;
LABEL_2545:
                  v3801 = v3728 - (v3800 & 0xFFFFFFFFFFFFFFFCLL);
                  v3802 = v3796 | v3800 & 0xFFFFFFFFFFFFFFFCLL;
                  v3816 = v3798;
                  v3817 = &v13[v3803 + v3796];
                  v3818 = v3803 - (v3800 & 0xFFFFFFFFFFFFFFFCLL);
                  v3819 = (v3709 + v3710 * v3704 + 2 * v3728 - 2 * v3803 - 6);
                  do
                  {
                    v3820 = *v3819--;
                    v3821 = vrev64_s16(v3820);
                    v3822 = *v3817++;
                    v3816 = vmlal_u16(v3816, v3822, v3821);
                    v3818 += 4;
                  }

                  while (v3818);
                  v3798 = vaddvq_s32(v3816);
                  if (v3800 == (v3800 & 0xFFFFFFFFFFFFFFFCLL))
                  {
                    goto LABEL_2552;
                  }

                  goto LABEL_2550;
                }

                v3803 = v3800 & 0xFFFFFFFFFFFFFFF0;
                v3804 = 0uLL;
                v3805 = v3798;
                v3806 = (v3709 + v3710 * v3704 + 2 * v3728 - 14);
                v3807 = &v3708[v3796];
                v3808 = v3800 & 0xFFFFFFFFFFFFFFF0;
                v3809 = 0uLL;
                v3810 = 0uLL;
                do
                {
                  v3811 = vrev64q_s16(*v3806);
                  v3812 = vextq_s8(v3811, v3811, 8uLL);
                  v3813 = vrev64q_s16(v3806[-1]);
                  v3814 = vextq_s8(v3813, v3813, 8uLL);
                  v3815 = v3807[-1];
                  v3804 = vmlal_high_u16(v3804, v3815, v3812);
                  v3805 = vmlal_u16(v3805, *v3815.i8, *v3812.i8);
                  v3810 = vmlal_high_u16(v3810, *v3807, v3814);
                  v3809 = vmlal_u16(v3809, *v3807->i8, *v3814.i8);
                  v3806 -= 2;
                  v3807 += 2;
                  v3808 -= 16;
                }

                while (v3808);
                v3798 = vaddvq_s32(vaddq_s32(vaddq_s32(v3809, v3805), vaddq_s32(v3810, v3804)));
                if (v3800 == v3803)
                {
                  goto LABEL_2552;
                }

                if ((v3800 & 0xC) != 0)
                {
                  goto LABEL_2545;
                }

                v3802 = v3796 | v3803;
                v3801 = v3728 - v3803;
              }

              else
              {
                v3801 = v3712 - 2;
                v3802 = v3796;
              }

LABEL_2550:
              v3823 = (v3709 + v3710 * v3704 + 2 * v3801);
              v3824 = &v13[v3802];
              v3825 = v3796 + v3728 - v3802 - v3799 + 1;
              do
              {
                v3827 = *v3823--;
                v3826 = v3827;
                v3828 = *v3824++;
                v3798 += v3828 * v3826;
                --v3825;
              }

              while (v3825);
LABEL_2552:
              v66[v3725 + 1] = v3798 >> 15;
              if (v3725 + 5 >= v3724)
              {
                v3830 = vaddvq_s32(vmovl_u16(*v13));
                v3829 = 4;
              }

              else
              {
                v3829 = 0;
                v3830 = 0;
              }

              v3831 = v3830 * v3711[v3724];
              v3832 = v3725 - 1;
              if (v3725 - 1 >= v3728)
              {
                v3832 = v3712 - 2;
              }

              v3833 = v3728 - v3832 + 1;
              if (v3833 >= 4)
              {
                if (v3833 < 0x10)
                {
                  v3836 = 0;
LABEL_2565:
                  v3834 = v3728 - (v3833 & 0xFFFFFFFFFFFFFFFCLL);
                  v3835 = v3829 + (v3833 & 0xFFFFFFFFFFFFFFFCLL);
                  v3849 = v3831;
                  v3850 = &v13[v3836 + v3829];
                  v3851 = v3836 - (v3833 & 0xFFFFFFFFFFFFFFFCLL);
                  v3852 = (v3709 + v3710 * v3704 + 2 * v3728 - 2 * v3836 - 6);
                  do
                  {
                    v3853 = *v3852--;
                    v3854 = vrev64_s16(v3853);
                    v3855 = *v3850++;
                    v3849 = vmlal_u16(v3849, v3855, v3854);
                    v3851 += 4;
                  }

                  while (v3851);
                  v3831 = vaddvq_s32(v3849);
                  if (v3833 == (v3833 & 0xFFFFFFFFFFFFFFFCLL))
                  {
                    goto LABEL_2486;
                  }

                  goto LABEL_2570;
                }

                v3836 = v3833 & 0xFFFFFFFFFFFFFFF0;
                v3837 = 0uLL;
                v3838 = v3831;
                v3839 = (v3709 + v3710 * v3704 + 2 * v3728 - 14);
                v3840 = &v3708[v3829];
                v3841 = v3833 & 0xFFFFFFFFFFFFFFF0;
                v3842 = 0uLL;
                v3843 = 0uLL;
                do
                {
                  v3844 = vrev64q_s16(*v3839);
                  v3845 = vextq_s8(v3844, v3844, 8uLL);
                  v3846 = vrev64q_s16(v3839[-1]);
                  v3847 = vextq_s8(v3846, v3846, 8uLL);
                  v3848 = v3840[-1];
                  v3837 = vmlal_high_u16(v3837, v3848, v3845);
                  v3838 = vmlal_u16(v3838, *v3848.i8, *v3845.i8);
                  v3843 = vmlal_high_u16(v3843, *v3840, v3847);
                  v3842 = vmlal_u16(v3842, *v3840->i8, *v3847.i8);
                  v3839 -= 2;
                  v3840 += 2;
                  v3841 -= 16;
                }

                while (v3841);
                v3831 = vaddvq_s32(vaddq_s32(vaddq_s32(v3842, v3838), vaddq_s32(v3843, v3837)));
                if (v3833 == v3836)
                {
                  goto LABEL_2486;
                }

                if ((v3833 & 0xC) != 0)
                {
                  goto LABEL_2565;
                }

                v3835 = v3829 | v3836;
                v3834 = v3728 - v3836;
              }

              else
              {
                v3834 = v3712 - 2;
                v3835 = v3829;
              }

LABEL_2570:
              v3856 = v3834 + 1;
              v3857 = (v3709 + v3710 * v3704 + 2 * v3834);
              v3858 = &v13[v3835];
              do
              {
                v3860 = *v3857--;
                v3859 = v3860;
                v3861 = *v3858++;
                v3831 += v3861 * v3859;
                --v3856;
              }

              while (v3856 >= v3725);
LABEL_2486:
              v3706[v3725] = v3831 >> 15;
LABEL_2487:
              memcpy(v3711, v66, 2 * v3712);
              v66 = v3991;
              ++v3705;
              v3704 += 2;
              if (v3705 >= *(v4 + 3))
              {
                goto LABEL_2573;
              }
            }

            v3713 = (v3712 - 6);
            if (v3713 > 7)
            {
              v3714 = 0;
              v3734 = v3707 + 2 * v3713;
              v3736 = v3707 < v3709 + v3710 * 2 * v3705 + 2 * v3713 + 12 && v3711 < v3734;
              if (v13 >= v3734 || v3707 >= (v13 + 7))
              {
                v3715 = 3;
                if (!v3736)
                {
                  v3714 = v3713 & 0xFFFFFFF8;
                  v3715 = v3714 | 3;
                  v3738 = v13;
                  *v65.i8 = vld1_dup_s16(v3738++);
                  v3739 = vmovl_u16(*v65.i8);
                  *v65.i8 = vld1_dup_s16(v3738);
                  v3740 = (v13 + 2);
                  v3741 = vld1_dup_s16(v3740);
                  v3742 = vmovl_u16(*v65.i8);
                  v3743 = vmovl_u16(v3741);
                  v3744 = (v13 + 3);
                  *v65.i8 = vld1_dup_s16(v3744);
                  v3745 = vmovl_u16(*v65.i8);
                  v3746 = (v13 + 4);
                  *v65.i8 = vld1_dup_s16(v3746);
                  v3747 = (v13 + 5);
                  v3748 = vld1_dup_s16(v3747);
                  v3749 = vmovl_u16(*v65.i8);
                  v3750 = vmovl_u16(v3748);
                  v3751 = (v13 + 6);
                  *v65.i8 = vld1_dup_s16(v3751);
                  v3752 = vmovl_u16(*v65.i8);
                  v3753 = vuzp1q_s16(v65, v3739);
                  v3754 = vmovn_s32(v3739);
                  v3755 = vmovn_s32(v3742);
                  v3756 = vuzp1q_s16(v3753, v3742);
                  v3757 = v3709 + v3710 * v3704 + 6;
                  v3758 = vuzp1q_s16(v3753, v3743);
                  v3759 = vmovn_s32(v3743);
                  v3760 = vuzp1q_s16(v3753, v3745);
                  v3761 = vmovn_s32(v3745);
                  v3762 = vuzp1q_s16(v3753, v3749);
                  v3763 = vmovn_s32(v3749);
                  v3764 = vuzp1q_s16(v3753, v3750);
                  v3765 = vmovn_s32(v3750);
                  v3766 = vuzp1q_s16(v3753, v3752);
                  v3767 = vmovn_s32(v3752);
                  v3768 = v3707;
                  v3769 = v3714;
                  do
                  {
                    *v3768++ = vshrn_high_n_s32(vshrn_n_s32(vmlal_u16(vmlal_u16(vmlal_u16(vmlal_u16(vmlal_u16(vmlal_u16(vmull_u16(*(v3757 - 4), v3755), *(v3757 - 6), v3754), *(v3757 - 2), v3759), *v3757, v3761), *(v3757 + 2), v3763), *(v3757 + 4), v3765), *(v3757 + 6), v3767), 0xFuLL), vmlal_high_u16(vmlal_high_u16(vmlal_high_u16(vmlal_high_u16(vmlal_high_u16(vmlal_high_u16(vmull_high_u16(*(v3757 - 4), v3756), *(v3757 - 6), v3753), *(v3757 - 2), v3758), *v3757, v3760), *(v3757 + 2), v3762), *(v3757 + 4), v3764), *(v3757 + 6), v3766), 0xFuLL);
                    v3757 += 16;
                    v3769 -= 8;
                  }

                  while (v3769);
                  if (v3714 == v3713)
                  {
                    goto LABEL_2494;
                  }
                }

                goto LABEL_2492;
              }
            }

            else
            {
              v3714 = 0;
            }

            v3715 = 3;
LABEL_2492:
            v3716 = &v66[v3715];
            v3717 = (v3709 + v3710 * v3704 + 2 * v3714 + 12);
            v3718 = v3713 - v3714;
            do
            {
              v3719 = vmull_u16(*(v3717 - 6), *v13);
              v3720 = *(v3717 - 2);
              v3721 = *(v3717 - 1);
              v3722 = *v3717++;
              *v3716++ = (vaddvq_s32(v3719) + v3720 * v13[4] + v3722 * v13[6] + v3721 * v13[5]) >> 15;
              --v3718;
            }

            while (v3718);
            goto LABEL_2494;
          }

          v1467 = v3945 - 1;
          v1468 = v3945 - 2;
          v1469 = v3945 - 3;
          v1470 = *v4;
          v1471 = v4[2];
          v1472 = v1471 * v1467;
          v1473 = *v4 + 2 * v1471 * v1467;
          v3973 = a2[2];
          v1474 = v3973 * v1469;
          v3977 = *a2;
          v1475 = *a2 + 2 * v3973 * v1469;
          v3964 = v1467;
          if (v3945 + 1 < v3945 - 3)
          {
            if (v1128 < 4)
            {
              v1476 = 0;
              goto LABEL_863;
            }

            v1476 = 0;
            v3621 = v3977 + 2 * (v1128 + v3973 * (v3945 - 3));
            v3623 = v1475 < v1470 + 2 * v1128 + 2 * v1471 * v1467 && v1473 < v3621;
            v3624 = v13 >= v3621 || v1475 >= (v13 + 2);
            if (!v3624 || v3623)
            {
              goto LABEL_863;
            }

            if (v1128 >= 0x10)
            {
              v1476 = v1128 & 0x7FFFFFF0;
              v3862 = v13;
              v3863 = vld1_dup_s16(v3862++);
              v3864 = vld1_dup_s16(v3862);
              v65 = vaddl_u16(v3864, v3863);
              v3865 = (v1473 + 16);
              v3866 = (v1475 + 16);
              v3867 = v1128 & 0xFFFFFFF0;
              do
              {
                v3868 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v65, vmovl_u16(*v3865)), 0xFuLL), vmulq_s32(v65, vmovl_high_u16(*v3865->i8)), 0xFuLL);
                v3866[-1] = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v65, vmovl_u16(v3865[-2])), 0xFuLL), vmulq_s32(v65, vmovl_high_u16(*v3865[-2].i8)), 0xFuLL);
                *v3866 = v3868;
                v3865 += 4;
                v3866 += 2;
                v3867 -= 16;
              }

              while (v3867);
              if (v1128 == v1476)
              {
                goto LABEL_865;
              }

              if ((v1128 & 0xC) == 0)
              {
LABEL_863:
                v1477 = v1128 - v1476;
                v1478 = (v3977 + 2 * v1476 + 2 * v1474);
                v1479 = v1470 + v1476 + v1472;
                do
                {
                  v1480 = *v1479++;
                  *v1478++ = ((v13[1] + *v13) * v1480) >> 15;
                  --v1477;
                }

                while (v1477);
                goto LABEL_865;
              }
            }

            else
            {
              v1476 = 0;
            }

            v3869 = v1476;
            v1476 = v1128 & 0xFFFFFFFC;
            v3870 = v13;
            v3871 = vld1_dup_s16(v3870++);
            v3872 = vld1_dup_s16(v3870);
            v65 = vaddl_u16(v3872, v3871);
            v3873 = (v1470 + 2 * v3869 + 2 * v1472);
            v3874 = (v3977 + 2 * v3869 + 2 * v1474);
            v3875 = v3869 - v1476;
            do
            {
              v3876 = *v3873++;
              *v3874++ = vshrn_n_s32(vmulq_s32(v65, vmovl_u16(v3876)), 0xFuLL);
              v3875 += 4;
            }

            while (v3875);
            if (v1128 != v1476)
            {
              goto LABEL_863;
            }

LABEL_865:
            v4 = v3982;
            if (v1469 + 1 < v3945)
            {
              v1481 = v3977 + 2 * v3973 * (v1469 + 1);
              if (v1469 + 4 < v1467)
              {
                v1482 = 0;
                v1483 = v1469 - 2;
                if (v1469 - 2 >= v1468)
                {
                  v1483 = v3945 - 2;
                }

                v1484 = v1468 - v1483 + 1;
                v1485 = &v1470->i8[2 * v1471 * v1468];
                v1486 = &v1470->i8[2 * v1471 * (v1468 - 1)];
                v1487 = v1470;
                while (1)
                {
                  if (v1484 >= 2)
                  {
                    v1491 = 0;
                    v1492 = 0;
                    v1493 = 0;
                    v1494 = v1484 & 0xFFFFFFFFFFFFFFFELL;
                    v1495 = v13 + 1;
                    do
                    {
                      v1496 = *(v1495 - 1);
                      v1497 = *v1495;
                      v1495 += 2;
                      v1492 += v1496 * *&v1485[v1491];
                      v1493 += v1497 * *&v1486[v1491];
                      v1491 -= 4 * v1471;
                      v1494 -= 2;
                    }

                    while (v1494);
                    v1489 = v1493 + v1492;
                    v1490 = v1468 - (v1484 & 0xFFFFFFFFFFFFFFFELL);
                    v1488 = v1484 & 0xFFFFFFFFFFFFFFFELL;
                    v1128 = v3987;
                    if (v1484 == (v1484 & 0xFFFFFFFFFFFFFFFELL))
                    {
                      goto LABEL_870;
                    }
                  }

                  else
                  {
                    v1488 = 0;
                    v1489 = 0;
                    v1490 = v3945 - 2;
                  }

                  v1498 = (v1487->u16 + 2 * v1471 * v1490);
                  v1499 = &v13[v1488];
                  v1500 = ~v1468 + v1483 + v1488;
                  do
                  {
                    v1501 = *v1499++;
                    v1489 += v1501 * *v1498;
                    v1498 -= v1471;
                    v159 = __CFADD__(v1500++, 1);
                  }

                  while (!v159);
LABEL_870:
                  *(v1481 + 2 * v1482++) = v1489 >> 15;
                  v1485 += 2;
                  v1486 += 2;
                  v1487 = (v1487 + 2);
                  if (v1482 == v1128)
                  {
                    goto LABEL_2449;
                  }
                }
              }

              v3625 = 0;
              v3626 = v1469 - 2;
              if (v1469 - 2 >= v1468)
              {
                v3626 = v3945 - 2;
              }

              v3627 = v1468 - v3626 + 1;
              v3628 = &v1470->i8[2 * v1471 * (v1468 - 1)];
              v3629 = &v1470->i8[2 * v1471 * v1468];
              v3630 = v1470;
              while (1)
              {
                v3631 = (v13[1] + *v13 + v13[2]) * *(v1473 + 2 * v3625);
                if (v3627 >= 2)
                {
                  v3634 = 0;
                  v3635 = 0;
                  v3636 = v3627 & 0xFFFFFFFFFFFFFFFELL;
                  v3637 = v13 + 4;
                  do
                  {
                    v3638 = *(v3637 - 1);
                    v3639 = *v3637;
                    v3637 += 2;
                    v3631 += v3638 * *&v3629[v3634];
                    v3635 += v3639 * *&v3628[v3634];
                    v3634 -= 4 * v1471;
                    v3636 -= 2;
                  }

                  while (v3636);
                  v3631 += v3635;
                  v3632 = v1468 - (v3627 & 0xFFFFFFFFFFFFFFFELL);
                  v3633 = (v3627 & 0xFFFFFFFFFFFFFFFELL) + 3;
                  v66 = v3991;
                  if (v3627 == (v3627 & 0xFFFFFFFFFFFFFFFELL))
                  {
                    goto LABEL_2439;
                  }
                }

                else
                {
                  v3632 = v3945 - 2;
                  v3633 = 3;
                }

                v3640 = (v3630->u16 + 2 * v1471 * v3632);
                v3641 = &v13[v3633];
                v3642 = v3626 - v1468 - 4 + v3633;
                do
                {
                  v3643 = *v3641++;
                  v3631 += v3643 * *v3640;
                  v3640 -= v1471;
                  v159 = __CFADD__(v3642++, 1);
                }

                while (!v159);
LABEL_2439:
                *(v1481 + 2 * v3625++) = v3631 >> 15;
                v3628 += 2;
                v3629 += 2;
                v3630 = (v3630 + 2);
                v1128 = v3987;
                if (v3625 == v3987)
                {
LABEL_2449:
                  v3644 = v3977 + 2 * v3973 * (v1469 + 2);
                  v3645 = v1469 - 1;
                  if (v1469 - 1 >= v1468)
                  {
                    v3645 = v3945 - 2;
                  }

                  v3646 = v1468 - v3645 + 1;
                  v3647 = v3646 & 0xFFFFFFFFFFFFFFFELL;
                  if (v1469 + 5 < v3964)
                  {
                    v3648 = 0;
                    v3649 = &v1470->i8[2 * v1471 * v1468];
                    v3650 = 4 * v1471;
                    v3651 = &v1470->i8[2 * v1471 * (v1468 - 1)];
                    v3652 = 2 * v1471;
                    v4 = v3982;
                    while (1)
                    {
                      if (v3646 >= 2)
                      {
                        v3656 = 0;
                        v3657 = 0;
                        v3658 = 0;
                        v3659 = v3646 & 0xFFFFFFFFFFFFFFFELL;
                        v3660 = v13 + 1;
                        do
                        {
                          v3661 = *(v3660 - 1);
                          v3662 = *v3660;
                          v3660 += 2;
                          v3657 += v3661 * *&v3649[v3656];
                          v3658 += v3662 * *&v3651[v3656];
                          v3656 -= v3650;
                          v3659 -= 2;
                        }

                        while (v3659);
                        v3654 = v3658 + v3657;
                        v3655 = v1468 - (v3646 & 0xFFFFFFFFFFFFFFFELL);
                        v3653 = v3646 & 0xFFFFFFFFFFFFFFFELL;
                        if (v3646 == v3647)
                        {
                          goto LABEL_2453;
                        }
                      }

                      else
                      {
                        v3653 = 0;
                        v3654 = 0;
                        v3655 = v3945 - 2;
                      }

                      v3663 = v3655 + 1;
                      v3664 = (v1470->u16 + v3652 * v3655);
                      v3665 = &v13[v3653];
                      do
                      {
                        v3666 = *v3665++;
                        v3654 += v3666 * *v3664;
                        --v3663;
                        v3664 = (v3664 - v3652);
                      }

                      while (v3663 >= v1469);
LABEL_2453:
                      *(v3644 + 2 * v3648++) = v3654 >> 15;
                      v3649 += 2;
                      v3651 += 2;
                      v1470 = (v1470 + 2);
                      if (v3648 == v1128)
                      {
                        goto LABEL_2484;
                      }
                    }
                  }

                  v3686 = 0;
                  v3687 = &v1470->i8[2 * v1471 * (v1468 - 1)];
                  v3688 = 4 * v1471;
                  v3689 = &v1470->i8[2 * v1471 * v1468];
                  v3690 = 2 * v1471;
                  v4 = v3982;
                  while (2)
                  {
                    v65 = vmovl_u16(*v13);
                    v3691 = vaddvq_s32(v65) * *(v1473 + 2 * v3686);
                    if (v3646 < 2)
                    {
                      v3692 = v3945 - 2;
                      v3693 = 4;
                      goto LABEL_2481;
                    }

                    v3694 = 0;
                    v3695 = 0;
                    v3696 = v3646 & 0xFFFFFFFFFFFFFFFELL;
                    v3697 = v13 + 5;
                    do
                    {
                      v3698 = *(v3697 - 1);
                      v3699 = *v3697;
                      v3697 += 2;
                      v3691 += v3698 * *&v3689[v3694];
                      v3695 += v3699 * *&v3687[v3694];
                      v3694 -= v3688;
                      v3696 -= 2;
                    }

                    while (v3696);
                    v3691 += v3695;
                    v3692 = v1468 - (v3646 & 0xFFFFFFFFFFFFFFFELL);
                    v3693 = v3647 + 4;
                    if (v3646 != v3647)
                    {
LABEL_2481:
                      v3700 = v3692 + 1;
                      v3701 = (v1470->u16 + v3690 * v3692);
                      v3702 = &v13[v3693];
                      do
                      {
                        v3703 = *v3702++;
                        v3691 += v3703 * *v3701;
                        --v3700;
                        v3701 = (v3701 - v3690);
                      }

                      while (v3700 >= v1469);
                    }

                    *(v3644 + 2 * v3686++) = v3691 >> 15;
                    v3687 += 2;
                    v3689 += 2;
                    v1470 = (v1470 + 2);
                    if (v3686 == v1128)
                    {
                      goto LABEL_2484;
                    }

                    continue;
                  }
                }
              }
            }

            goto LABEL_2484;
          }

          if (v1469 + 3 < v1467)
          {
            v3601 = 0;
            v3602 = v1469 - 3;
            if (v1469 - 3 >= v1468)
            {
              v3602 = v3945 - 2;
            }

            v3603 = v1468 - v3602 + 1;
            v3604 = &v1470->i8[2 * v1471 * v1468];
            v3605 = &v1470->i8[2 * v1471 * (v1468 - 1)];
            v3606 = *v4;
            while (1)
            {
              if (v3603 >= 2)
              {
                v3610 = 0;
                v3611 = 0;
                v3612 = 0;
                v3613 = v3603 & 0xFFFFFFFFFFFFFFFELL;
                v3614 = v13 + 1;
                do
                {
                  v3615 = *(v3614 - 1);
                  v3616 = *v3614;
                  v3614 += 2;
                  v3611 += v3615 * *&v3604[v3610];
                  v3612 += v3616 * *&v3605[v3610];
                  v3610 -= 4 * v1471;
                  v3613 -= 2;
                }

                while (v3613);
                v3608 = v3612 + v3611;
                v3609 = v1468 - (v3603 & 0xFFFFFFFFFFFFFFFELL);
                v3607 = v3603 & 0xFFFFFFFFFFFFFFFELL;
                v66 = v3991;
                v1128 = v3987;
                if (v3603 == (v3603 & 0xFFFFFFFFFFFFFFFELL))
                {
                  goto LABEL_2413;
                }
              }

              else
              {
                v3607 = 0;
                v3608 = 0;
                v3609 = v3945 - 2;
              }

              v3617 = v3609 + 1;
              v3618 = (v3606->u16 + 2 * v1471 * v3609);
              v3619 = &v13[v3607];
              do
              {
                v3620 = *v3619++;
                v3608 += v3620 * *v3618;
                --v3617;
                v3618 -= v1471;
              }

              while (v3617 >= v1469 - 2);
LABEL_2413:
              *(v1475 + 2 * v3601++) = v3608 >> 15;
              v3604 += 2;
              v3605 += 2;
              v3606 = (v3606 + 2);
              if (v3601 == v1128)
              {
                goto LABEL_865;
              }
            }
          }

          v3667 = 0;
          v3668 = v1469 - 3;
          if (v1469 - 3 >= v1468)
          {
            v3668 = v3945 - 2;
          }

          v3669 = v1468 - v3668 + 1;
          v3670 = &v1470->i8[2 * v1471 * (v1468 - 1)];
          v3671 = &v1470->i8[2 * v1471 * v1468];
          v3672 = *v4;
          while (1)
          {
            v3673 = (v13[1] + *v13) * *(v1473 + 2 * v3667);
            if (v3669 >= 2)
            {
              v3676 = 0;
              v3677 = 0;
              v3678 = v3669 & 0xFFFFFFFFFFFFFFFELL;
              v3679 = v13 + 3;
              do
              {
                v3680 = *(v3679 - 1);
                v3681 = *v3679;
                v3679 += 2;
                v3673 += v3680 * *&v3671[v3676];
                v3677 += v3681 * *&v3670[v3676];
                v3676 -= 4 * v1471;
                v3678 -= 2;
              }

              while (v3678);
              v3673 += v3677;
              v3674 = v1468 - (v3669 & 0xFFFFFFFFFFFFFFFELL);
              v3675 = (v3669 & 0xFFFFFFFFFFFFFFFELL) + 2;
              v66 = v3991;
              if (v3669 == (v3669 & 0xFFFFFFFFFFFFFFFELL))
              {
                goto LABEL_2465;
              }
            }

            else
            {
              v3674 = v3945 - 2;
              v3675 = 2;
            }

            v3682 = v3674 + 1;
            v3683 = (v3672->u16 + 2 * v1471 * v3674);
            v3684 = &v13[v3675];
            do
            {
              v3685 = *v3684++;
              v3673 += v3685 * *v3683;
              --v3682;
              v3683 -= v1471;
            }

            while (v3682 >= v1469 - 2);
LABEL_2465:
            *(v1475 + 2 * v3667++) = v3673 >> 15;
            v3670 += 2;
            v3671 += 2;
            v3672 = (v3672 + 2);
            v1128 = v3987;
            if (v3667 == v3987)
            {
              goto LABEL_865;
            }
          }
        }
      }
    }

    else
    {
      v1137 = 0;
    }

    do
    {
      v65 = vmovl_u16(*v13);
      *(v1132 + 2 * v1137) = (vaddvq_s32(v65) * v1129->u16[v1137] + v13[4] * *(v1135 + 2 * v1137) + v13[5] * v1129->u16[v1137 + v1131 / 2] + v13[6] * v1129->u16[v1137 + v1133 / 2]) >> 15;
      ++v1137;
    }

    while (v1128 != v1137);
    goto LABEL_662;
  }

  if (v64 != 4)
  {
LABEL_250:
    v480 = v3974 >> 1;
    if (v64 >= 1)
    {
      v481 = *(v3982 + 2);
      if (v481 >= 1)
      {
        v482 = 0;
        v483 = *v3982;
        v3910 = *a2;
        v484 = v64 + 1;
        v3906 = a2[2];
        v3898 = *v3982 + 2;
        v3902 = *v3982 + 18;
        v485 = v64 + 1;
        v486 = v64;
        do
        {
          v487 = v484;
          v488 = v484 & 0xFFFFFFFC;
          v489 = v484 & 0xFFFFFFF0;
          v3914 = v482;
          v490 = v3910 + 2 * v482 * v3906;
          if (v64 + v482 > 0)
          {
            v491 = 0;
            v492 = v484;
            v3951 = &v13[v492 + 8];
            v493 = v3982[2];
            v495 = v486 > 3 && v493 == 1;
            v496 = &v13[v492];
            v497 = 2 * v493;
            v498 = v483;
            v500 = v3898;
            v499 = v3902;
            while (1)
            {
              if (v487 < 4)
              {
                v501 = 0;
                v502 = 0;
LABEL_274:
                v515 = &v13[v501];
                v516 = v487 - v501;
                do
                {
                  v517 = *v515++;
                  v502 += v517;
                  --v516;
                }

                while (v516);
                goto LABEL_276;
              }

              if (v487 >= 0x10)
              {
                v504 = 0uLL;
                v505 = v489;
                v506 = (v13 + 8);
                v507 = 0uLL;
                v508 = 0uLL;
                v509 = 0uLL;
                do
                {
                  v510 = v506[-1];
                  v507 = vaddw_high_u16(v507, v510);
                  v504 = vaddw_u16(v504, *v510.i8);
                  v509 = vaddw_high_u16(v509, *v506);
                  v508 = vaddw_u16(v508, *v506->i8);
                  v506 += 2;
                  v505 -= 16;
                }

                while (v505);
                v502 = vaddvq_s32(vaddq_s32(vaddq_s32(v508, v504), vaddq_s32(v509, v507)));
                if (v489 == v487)
                {
                  goto LABEL_276;
                }

                v501 = v489;
                v503 = v489;
                if ((v487 & 0xC) == 0)
                {
                  goto LABEL_274;
                }
              }

              else
              {
                v502 = 0;
                v503 = 0;
              }

              v511 = v502;
              v512 = &v13[v503];
              v513 = v503 - v488;
              do
              {
                v514 = *v512++;
                v511 = vaddw_u16(v511, v514);
                v513 += 4;
              }

              while (v513);
              v502 = vaddvq_s32(v511);
              v501 = v488;
              if (v488 != v487)
              {
                goto LABEL_274;
              }

LABEL_276:
              v518 = v502 * *(v483 + 2 * v491);
              if (v495)
              {
                if (v486 < 0x10)
                {
                  v519 = 0;
LABEL_284:
                  v531 = v518;
                  v532 = &v496[v519];
                  v533 = (v500 + 2 * v519);
                  v534 = v519 - (v486 & 0xFFFFFFFFFFFFFFFCLL);
                  do
                  {
                    v535 = *v533++;
                    v536 = v535;
                    v537 = *v532++;
                    v531 = vmlal_u16(v531, v537, v536);
                    v534 += 4;
                  }

                  while (v534);
                  v518 = vaddvq_s32(v531);
                  v520 = v486 & 0x7FFFFFFFFFFFFFFCLL | 1;
                  v521 = (v486 & 0x7FFFFFFFFFFFFFFCLL) + v487;
                  if (v486 == (v486 & 0x7FFFFFFFFFFFFFFCLL))
                  {
                    goto LABEL_262;
                  }

                  goto LABEL_287;
                }

                v522 = v518;
                v523 = 0uLL;
                v524 = v486 & 0xFFFFFFFFFFFFFFF0;
                v525 = v499;
                v526 = v3951;
                v527 = 0uLL;
                v528 = 0uLL;
                do
                {
                  v529 = v525[-1];
                  v530 = v526[-1];
                  v523 = vmlal_high_u16(v523, v530, v529);
                  v522 = vmlal_u16(v522, *v530.i8, *v529.i8);
                  v528 = vmlal_high_u16(v528, *v526, *v525);
                  v527 = vmlal_u16(v527, *v526->i8, *v525->i8);
                  v526 += 2;
                  v525 += 2;
                  v524 -= 16;
                }

                while (v524);
                v518 = vaddvq_s32(vaddq_s32(vaddq_s32(v527, v522), vaddq_s32(v528, v523)));
                if (v486 == (v486 & 0x7FFFFFFFFFFFFFF0))
                {
                  goto LABEL_262;
                }

                v520 = v486 & 0x7FFFFFFFFFFFFFF0 | 1;
                v521 = (v486 & 0x7FFFFFFFFFFFFFF0) + v487;
                v519 = v486 & 0x7FFFFFFFFFFFFFF0;
                if ((v486 & 0xC) != 0)
                {
                  goto LABEL_284;
                }
              }

              else
              {
                v520 = 1;
                v521 = v487;
              }

LABEL_287:
              v538 = v485 - v520;
              v539 = (v498 + v497 * v520);
              v540 = &v13[v521];
              do
              {
                v541 = *v540++;
                v518 += v541 * *v539;
                v539 = (v539 + v497);
                --v538;
              }

              while (v538);
LABEL_262:
              *(v490 + 2 * v491++) = v518 >> 15;
              v499 = (v499 + 2);
              v500 += 2;
              v498 += 2;
              if (v491 == v481)
              {
                goto LABEL_253;
              }
            }
          }

          for (i = 0; i != v481; ++i)
          {
            if (v487 < 4)
            {
              v543 = 0;
              v544 = 0;
LABEL_303:
              v557 = &v13[v543];
              v558 = v487 - v543;
              do
              {
                v559 = *v557++;
                v544 += v559;
                --v558;
              }

              while (v558);
              goto LABEL_291;
            }

            if (v487 >= 0x10)
            {
              v546 = 0uLL;
              v547 = v489;
              v548 = (v13 + 8);
              v549 = 0uLL;
              v550 = 0uLL;
              v551 = 0uLL;
              do
              {
                v552 = v548[-1];
                v549 = vaddw_high_u16(v549, v552);
                v546 = vaddw_u16(v546, *v552.i8);
                v551 = vaddw_high_u16(v551, *v548);
                v550 = vaddw_u16(v550, *v548->i8);
                v548 += 2;
                v547 -= 16;
              }

              while (v547);
              v544 = vaddvq_s32(vaddq_s32(vaddq_s32(v550, v546), vaddq_s32(v551, v549)));
              if (v489 == v487)
              {
                goto LABEL_291;
              }

              v545 = v489;
              v543 = v489;
              if ((v487 & 0xC) == 0)
              {
                goto LABEL_303;
              }
            }

            else
            {
              v544 = 0;
              v545 = 0;
            }

            v553 = v544;
            v554 = &v13[v545];
            v555 = v545 - v488;
            do
            {
              v556 = *v554++;
              v553 = vaddw_u16(v553, v556);
              v555 += 4;
            }

            while (v555);
            v544 = vaddvq_s32(v553);
            v543 = v488;
            if (v488 != v487)
            {
              goto LABEL_303;
            }

LABEL_291:
            *(v490 + 2 * i) = (v544 * *(v483 + 2 * i)) >> 15;
          }

LABEL_253:
          ++v486;
          v482 = v3914 + 1;
          v484 = v487 - 1;
          ++v485;
        }

        while (v3914 + 1 != v64);
      }
    }

    v3899 = *(v3982 + 3);
    v3915 = v3899 - v64;
    v66 = v3991;
    if (v3915 > v64)
    {
      v560 = *(v3982 + 2);
      if (v560 >= 1)
      {
        v561 = 0;
        v562 = a2[2];
        v3961 = v562;
        v3952 = 2 * v562;
        v563 = v3899 - (v3974 & 0xFFFFFFFE);
        v3944 = *a2;
        v3931 = *a2 + 2 * v480 * v562;
        v564 = v3983 & 0xC;
        v565 = v3983 & 0xFFFFFFFC;
        v566 = (v13 + 8);
        v567 = -v565;
        v568 = v3974 >> 1;
        while (v568 - v480 > v568 + v480)
        {
          v569 = (v3931 + v3952 * v561);
          v3968 = v561;
          v570 = v565;
          v571 = v566;
          v572 = v563;
          v573 = v568;
          v574 = v564;
          bzero(v569, 2 * v560);
          v564 = v574;
          v568 = v573;
          v563 = v572;
          v566 = v571;
          v565 = v570;
          v561 = v3968;
          v567 = -(v3983 & 0xFFFFFFFC);
          v66 = v3991;
LABEL_310:
          ++v568;
          if (v563 == ++v561)
          {
            goto LABEL_333;
          }
        }

        v575 = 0;
        v576 = *v3982;
        v577 = v3982[2];
        v579 = v3974 > 3 && v577 == 1;
        v580 = (v576 + 2 * v561);
        v581 = v580 + 1;
        v582 = 2 * v577;
        while (1)
        {
          if (v579)
          {
            if (v3974 >= 0x10)
            {
              v587 = 0uLL;
              v588 = v3983 & 0xFFFFFFF0;
              v589 = v566;
              v590 = v581;
              v591 = 0uLL;
              v592 = 0uLL;
              v593 = 0uLL;
              do
              {
                v594 = v590[-1];
                v595 = v589[-1];
                v591 = vmlal_high_u16(v591, v595, v594);
                v587 = vmlal_u16(v587, *v595.i8, *v594.i8);
                v593 = vmlal_high_u16(v593, *v589, *v590);
                v592 = vmlal_u16(v592, *v589->i8, *v590->i8);
                v590 += 2;
                v589 += 2;
                v588 -= 16;
              }

              while (v588);
              v583 = vaddvq_s32(vaddq_s32(vaddq_s32(v592, v587), vaddq_s32(v593, v591)));
              v584 = v3983 & 0xFFFFFFF0;
              v586 = v561 + v584;
              v585 = v584;
              if (!v564)
              {
                goto LABEL_329;
              }
            }

            else
            {
              v583 = 0;
              v584 = 0;
            }

            v596 = v583;
            v597 = (v580 + 2 * v584);
            v598 = &v13[v584];
            v599 = v567 + v584;
            do
            {
              v600 = *v597++;
              v601 = v600;
              v602 = *v598++;
              v596 = vmlal_u16(v596, v602, v601);
              v599 += 4;
            }

            while (v599);
            v583 = vaddvq_s32(v596);
            v586 = v561 + v565;
            v585 = v565;
          }

          else
          {
            v585 = 0;
            v583 = 0;
            v586 = v561;
          }

LABEL_329:
          v603 = (v576 + v582 * v586);
          v604 = &v13[v585];
          v605 = v3983 - v585;
          do
          {
            v606 = *v604++;
            v583 += v606 * *v603;
            v603 = (v603 + v582);
            --v605;
          }

          while (v605);
          *(v3944 + 2 * v568 * v3961 + 2 * v575++) = v583 >> 15;
          v581 = (v581 + 2);
          v580 = (v580 + 2);
          v576 += 2;
          if (v575 == v560)
          {
            goto LABEL_310;
          }
        }
      }
    }

LABEL_333:
    v607 = v3899 - v64;
    if (v64 >= 1)
    {
      v608 = *(v3982 + 2);
      if (v608 >= 1)
      {
        v609 = 0;
        v610 = v3982[2];
        v611 = *v3982 + 2 * v610 * (v3899 - 1);
        v612 = a2[2];
        v613 = v3899 - 2;
        v3891 = v612;
        v3895 = *a2;
        v3878 = 2 * v612;
        v3877 = *a2 + 2 * v3915 * v612;
        v3887 = v3899 - 1 - v64;
        v3882 = *v3982 + 2 * v610 * (v613 - 1);
        v614 = 4 * v610;
        v3969 = v613;
        v3883 = v480 + v613 + v64 - v3899 + 1;
        v3885 = *v3982;
        v3880 = *v3982 + 2 * v610 * v613;
        v615 = 2 * v610;
        v616 = -2 * v610;
        v617 = 2;
        v618 = v3883;
        while (1)
        {
          v619 = v617;
          v3962 = -(v617 & 0xFFFFFFFC);
          v3953 = v617 & 0xFFFFFFF0;
          v620 = v607 - v64;
          v621 = v3895 + 2 * v607 * v3891;
          v3916 = v607;
          v3911 = v609;
          v3907 = v618;
          if ((v607 - v64) <= v3969)
          {
            break;
          }

          if (v607 >= v3887)
          {
            v622 = 0;
            while (1)
            {
              if (v617 >= 4)
              {
                if (v617 < 0x10)
                {
                  v624 = 0;
                  v625 = 0;
LABEL_350:
                  v633 = v624;
                  v634 = &v13[v625];
                  v635 = v625 - (v617 & 0xFFFFFFFC);
                  do
                  {
                    v636 = *v634++;
                    v633 = vaddw_u16(v633, v636);
                    v635 += 4;
                  }

                  while (v635);
                  v624 = vaddvq_s32(v633);
                  v623 = v617 & 0xFFFFFFFC;
                  if (v623 == v617)
                  {
                    goto LABEL_341;
                  }

                  goto LABEL_353;
                }

                v626 = 0uLL;
                v627 = v617 & 0xFFFFFFF0;
                v628 = (v13 + 8);
                v629 = 0uLL;
                v630 = 0uLL;
                v631 = 0uLL;
                do
                {
                  v632 = v628[-1];
                  v629 = vaddw_high_u16(v629, v632);
                  v626 = vaddw_u16(v626, *v632.i8);
                  v631 = vaddw_high_u16(v631, *v628);
                  v630 = vaddw_u16(v630, *v628->i8);
                  v628 += 2;
                  v627 -= 16;
                }

                while (v627);
                v624 = vaddvq_s32(vaddq_s32(vaddq_s32(v630, v626), vaddq_s32(v631, v629)));
                if ((v617 & 0xFFFFFFF0) == v617)
                {
                  goto LABEL_341;
                }

                v625 = v617 & 0xFFFFFFF0;
                v623 = v625;
                if ((v617 & 0xC) != 0)
                {
                  goto LABEL_350;
                }
              }

              else
              {
                v623 = 0;
                v624 = 0;
              }

LABEL_353:
              v637 = &v13[v623];
              v638 = v617 - v623;
              do
              {
                v639 = *v637++;
                v624 += v639;
                --v638;
              }

              while (v638);
LABEL_341:
              *(v621 + 2 * v622) = (v624 * *(v611 + 2 * v622)) >> 15;
              if (++v622 == v608)
              {
                goto LABEL_337;
              }
            }
          }

          bzero((v3877 + v3878 * v609), 2 * v608);
          v66 = v3991;
LABEL_337:
          v607 = v3916 + 1;
          v617 = v619 + 1;
          v609 = v3911 + 1;
          v618 = v3907 - 1;
          if (v3916 + 1 >= v3899)
          {
            goto LABEL_390;
          }
        }

        v640 = v618 & 0xFFFFFFFFFFFFFFFELL;
        v641 = v3883 - v609;
        if (v607 < v3887)
        {
          v642 = 0;
          v643 = v3885;
          v645 = v3880;
          v644 = v3882;
          while (1)
          {
            if (v641 >= 2)
            {
              v649 = 0;
              v650 = 0;
              v651 = 0;
              v652 = v618 & 0xFFFFFFFFFFFFFFFELL;
              v653 = v13 + 1;
              do
              {
                v654 = *(v653 - 1);
                v655 = *v653;
                v653 += 2;
                v650 += v654 * *(v645 + v649);
                v651 += v655 * *(v644 + v649);
                v649 -= v614;
                v652 -= 2;
              }

              while (v652);
              v647 = v651 + v650;
              v648 = v3969 - (v641 & 0xFFFFFFFFFFFFFFFELL);
              v646 = v641 & 0xFFFFFFFFFFFFFFFELL;
              if (v641 == (v641 & 0xFFFFFFFFFFFFFFFELL))
              {
                goto LABEL_358;
              }
            }

            else
            {
              v646 = 0;
              v647 = 0;
              v648 = v3899 - 2;
            }

            v656 = v648 + 1;
            v657 = (v643 + v615 * v648);
            v658 = &v13[v646];
            do
            {
              v659 = *v658++;
              v647 += v659 * *v657;
              --v656;
              v657 = (v657 + v616);
            }

            while (v656 > v620);
LABEL_358:
            *(v621 + 2 * v642++) = v647 >> 15;
            v645 += 2;
            v644 += 2;
            v643 += 2;
            if (v642 == v608)
            {
              goto LABEL_337;
            }
          }
        }

        v660 = 0;
        v3922 = v617 & 0xFFFFFFF0;
        v3903 = v617 & 0xC;
        v661 = v617 & 0xFFFFFFFC;
        v3932 = (v641 & 0xFFFFFFFFFFFFFFFELL) + v617;
        v662 = v3885;
        v663 = v3880;
        v664 = v3882;
        v665 = &v13[v617 + 1];
        while (1)
        {
          if (v619 < 4)
          {
            v666 = 0;
            v667 = 0;
LABEL_380:
            v680 = &v13[v666];
            v681 = v619 - v666;
            do
            {
              v682 = *v680++;
              v667 += v682;
              --v681;
            }

            while (v681);
            goto LABEL_382;
          }

          if (v619 >= 0x10)
          {
            v669 = 0uLL;
            v670 = v3953;
            v671 = (v13 + 8);
            v672 = 0uLL;
            v673 = 0uLL;
            v674 = 0uLL;
            do
            {
              v675 = v671[-1];
              v672 = vaddw_high_u16(v672, v675);
              v669 = vaddw_u16(v669, *v675.i8);
              v674 = vaddw_high_u16(v674, *v671);
              v673 = vaddw_u16(v673, *v671->i8);
              v671 += 2;
              v670 -= 16;
            }

            while (v670);
            v667 = vaddvq_s32(vaddq_s32(vaddq_s32(v673, v669), vaddq_s32(v674, v672)));
            if (v3922 == v619)
            {
              goto LABEL_382;
            }

            v668 = v3922;
            v666 = v3922;
            if (!v3903)
            {
              goto LABEL_380;
            }
          }

          else
          {
            v667 = 0;
            v668 = 0;
          }

          v676 = v667;
          v677 = &v13[v668];
          v678 = v3962 + v668;
          do
          {
            v679 = *v677++;
            v676 = vaddw_u16(v676, v679);
            v678 += 4;
          }

          while (v678);
          v667 = vaddvq_s32(v676);
          v666 = v619 & 0xFFFFFFFC;
          if (v661 != v619)
          {
            goto LABEL_380;
          }

LABEL_382:
          v683 = v667 * *(v611 + 2 * v660);
          if (v641 >= 2)
          {
            v686 = 0;
            v687 = 0;
            v688 = v665;
            v689 = v640;
            do
            {
              v690 = *(v688 - 1);
              v691 = *v688;
              v688 += 2;
              v683 += v690 * *(v663 + v686);
              v687 += v691 * *(v664 + v686);
              v686 -= v614;
              v689 -= 2;
            }

            while (v689);
            v683 += v687;
            v684 = v3969 - (v641 & 0xFFFFFFFFFFFFFFFELL);
            v685 = v3932;
            if (v641 == (v641 & 0xFFFFFFFFFFFFFFFELL))
            {
              goto LABEL_368;
            }
          }

          else
          {
            v684 = v3899 - 2;
            v685 = v619;
          }

          v692 = v684 + 1;
          v693 = (v662 + v615 * v684);
          v694 = &v13[v685];
          do
          {
            v695 = *v694++;
            v683 += v695 * *v693;
            --v692;
            v693 = (v693 + v616);
          }

          while (v692 > v620);
LABEL_368:
          *(v621 + 2 * v660++) = v683 >> 15;
          v664 += 2;
          v663 += 2;
          v662 += 2;
          v66 = v3991;
          if (v660 == v608)
          {
            goto LABEL_337;
          }
        }
      }
    }

LABEL_390:
    if (v3899 < 1)
    {
      goto LABEL_2573;
    }

    v696 = 0;
    v3954 = 0;
    v697 = v13 + 8;
    v3970 = v3983 & 0xFFFFFFFC;
    v3908 = (2 * v480) | 1;
    while (1)
    {
      if (v64 >= 1)
      {
        v699 = 0;
        v700 = *a2;
        v701 = a2[2];
        v702 = v701 * v3954;
        v703 = *a2 + v701 * v696;
        v704 = v64 + 1;
        v705 = v64;
        v706 = -v64;
        v707 = v64 + 1;
        v708 = v64;
        do
        {
          if (v706 <= 1)
          {
            v709 = 1;
          }

          else
          {
            v709 = v706;
          }

          if (v699 > v480)
          {
            v710 = 0;
            goto LABEL_415;
          }

          if (v707 < 4)
          {
            v711 = 0;
            v710 = 0;
LABEL_413:
            v723 = &v13[v711];
            v724 = v707 - v711;
            do
            {
              v725 = *v723++;
              v710 += v725;
              --v724;
            }

            while (v724);
            goto LABEL_415;
          }

          if (v707 >= 0x10)
          {
            v712 = v707 & 0xFFFFFFF0;
            v711 = v712;
            v713 = 0uLL;
            v714 = (v13 + 8);
            v715 = 0uLL;
            v716 = 0uLL;
            v717 = 0uLL;
            do
            {
              v718 = v714[-1];
              v715 = vaddw_high_u16(v715, v718);
              v713 = vaddw_u16(v713, *v718.i8);
              v717 = vaddw_high_u16(v717, *v714);
              v716 = vaddw_u16(v716, *v714->i8);
              v714 += 2;
              v712 -= 16;
            }

            while (v712);
            v710 = vaddvq_s32(vaddq_s32(vaddq_s32(v716, v713), vaddq_s32(v717, v715)));
            if (v711 == v707)
            {
              goto LABEL_415;
            }

            if ((v707 & 0xC) == 0)
            {
              goto LABEL_413;
            }
          }

          else
          {
            v710 = 0;
            v711 = 0;
          }

          v719 = &v13[v711];
          v720 = v711 - (v707 & 0xFFFFFFFC);
          v711 = v707 & 0xFFFFFFFC;
          v721 = v710;
          do
          {
            v722 = *v719++;
            v721 = vaddw_u16(v721, v722);
            v720 += 4;
          }

          while (v720);
          v710 = vaddvq_s32(v721);
          if (v711 != v707)
          {
            goto LABEL_413;
          }

LABEL_415:
          v726 = v710 * *(v700 + 2 * v702);
          if (v64 + v699 >= 1)
          {
            v727 = (v709 + v708);
            if (v705 < 4)
            {
              v728 = 1;
              goto LABEL_429;
            }

            v729 = v727;
            if (v705 >= 0x10)
            {
              v731 = &v697[v729];
              v732 = v705 & 0xFFFFFFFFFFFFFFF0;
              v730 = v705 & 0x7FFFFFFFFFFFFFF0;
              v733 = 0uLL;
              v734 = v726;
              v735 = (v703 + 18);
              v736 = 0uLL;
              v737 = 0uLL;
              do
              {
                v738 = v731[-1];
                v739 = v735[-1];
                v733 = vmlal_high_u16(v733, v739, v738);
                v734 = vmlal_u16(v734, *v739.i8, *v738.i8);
                v737 = vmlal_high_u16(v737, *v735, *v731);
                v736 = vmlal_u16(v736, *v735->i8, *v731->i8);
                v731 += 2;
                v735 += 2;
                v732 -= 16;
              }

              while (v732);
              v726 = vaddvq_s32(vaddq_s32(vaddq_s32(v736, v734), vaddq_s32(v737, v733)));
              if (v705 == v730)
              {
                goto LABEL_396;
              }

              if ((v705 & 0xC) == 0)
              {
                v727 += v730;
                v728 = v730 | 1;
LABEL_429:
                v747 = v704 - v728;
                v748 = (v703 + 2 * v728);
                v749 = &v13[v727];
                do
                {
                  v751 = *v749++;
                  v750 = v751;
                  v752 = *v748++;
                  v726 += v752 * v750;
                  --v747;
                }

                while (v747);
                goto LABEL_396;
              }
            }

            else
            {
              v730 = 0;
            }

            v728 = v705 & 0x7FFFFFFFFFFFFFFCLL | 1;
            v740 = v726;
            v727 += v705 & 0x7FFFFFFFFFFFFFFCLL;
            v741 = &v13[v729 + v730];
            v742 = (v703 + 2 + 2 * v730);
            v743 = v730 - (v705 & 0xFFFFFFFFFFFFFFFCLL);
            do
            {
              v744 = *v741++;
              v745 = v744;
              v746 = *v742++;
              v740 = vmlal_u16(v740, v746, v745);
              v743 += 4;
            }

            while (v743);
            v726 = vaddvq_s32(v740);
            if (v705 == (v705 & 0x7FFFFFFFFFFFFFFCLL))
            {
              goto LABEL_396;
            }

            goto LABEL_429;
          }

LABEL_396:
          ++v705;
          v66[v699++] = v726 >> 15;
          --v708;
          --v707;
          ++v706;
          ++v704;
        }

        while (v699 != v64);
      }

      v753 = v3974;
      v754 = *(v3982 + 2);
      v755 = v754 - v64;
      if (v755 > v64)
      {
        v756 = 0;
        v757 = v754 - (v3974 & 0xFFFFFFFE);
        v758 = v3974 >> 1;
        do
        {
          while (v758 - v480 > v758 + v480)
          {
            v66[v758++] = 0;
            if (++v756 == v757)
            {
              goto LABEL_452;
            }
          }

          v759 = v756;
          v760 = *a2;
          v761 = a2[2];
          if (v753 >= 4)
          {
            v764 = 2 * v756;
            if (v753 < 0x10)
            {
              v763 = 0;
              v765 = 0;
              goto LABEL_444;
            }

            v766 = (v760 + v764 + v696 * v761 + 16);
            v767 = 0uLL;
            v768 = v3983 & 0xFFFFFFF0;
            v769 = (v13 + 8);
            v770 = 0uLL;
            v771 = 0uLL;
            v772 = 0uLL;
            do
            {
              v773 = v769[-1];
              v774 = v766[-1];
              v770 = vmlal_high_u16(v770, v774, v773);
              v767 = vmlal_u16(v767, *v774.i8, *v773.i8);
              v772 = vmlal_high_u16(v772, *v766, *v769);
              v771 = vmlal_u16(v771, *v766->i8, *v769->i8);
              v766 += 2;
              v769 += 2;
              v768 -= 16;
            }

            while (v768);
            v763 = vaddvq_s32(vaddq_s32(vaddq_s32(v771, v767), vaddq_s32(v772, v770)));
            if ((v3983 & 0xC) != 0)
            {
              v765 = v3983 & 0xFFFFFFF0;
LABEL_444:
              v759 = v3970 + v756;
              v775 = v763;
              v776 = (v760 + v764 + 2 * v765 + v696 * v761);
              v777 = &v13[v765];
              v778 = v765 - v3970;
              do
              {
                v779 = *v777++;
                v780 = v779;
                v781 = *v776++;
                v775 = vmlal_u16(v775, v781, v780);
                v778 += 4;
              }

              while (v778);
              v763 = vaddvq_s32(v775);
              v762 = v3983 & 0xFFFFFFFC;
              goto LABEL_447;
            }

            v762 = v3983 & 0xFFFFFFF0;
            v759 = v762 + v756;
          }

          else
          {
            v762 = 0;
            v763 = 0;
          }

LABEL_447:
          v782 = (v760 + v696 * v761 + 2 * v759);
          v783 = &v13[v762];
          v784 = v3983 - v762;
          do
          {
            v786 = *v783++;
            v785 = v786;
            v787 = *v782++;
            v763 += v787 * v785;
            --v784;
          }

          while (v784);
          v788 = v763 >> 15;
          v753 = v3974;
          v66[v758++] = v788;
          ++v756;
        }

        while (v756 != v757);
      }

LABEL_452:
      v789 = *a2;
      v790 = a2[2];
      v698 = v790 * v3954;
      if (v64 > 0)
      {
        break;
      }

LABEL_393:
      memcpy((v789 + 2 * v698), v66, 2 * v754);
      v66 = v3991;
      v696 += 2;
      if (++v3954 >= *(v3982 + 3))
      {
        goto LABEL_2573;
      }
    }

    v791 = 0;
    v3927 = v790 * v3954;
    v792 = v789 + 2 * v698;
    v793 = v754 - 2;
    v794 = v790 * v696;
    v795 = v789 + v794 + 2 * v793;
    v3939 = (v795 - 14);
    v796 = v3908 + v793 - v754;
    v797 = v795 - 6;
    v798 = v789 + v794;
    LODWORD(v799) = 1;
    v800 = 2;
    while (1)
    {
      v801 = v800;
      v799 = (v799 + 1);
      if (v755 < v754 - 1 - v480)
      {
        v802 = 0;
        v803 = 0;
        v804 = v755 - v480;
        if (v755 - v480 <= v793)
        {
          goto LABEL_472;
        }

        goto LABEL_454;
      }

      if (v800 < 4)
      {
        v805 = 0;
        v806 = 0;
LABEL_469:
        v818 = &v13[v805];
        v819 = v801 - v805;
        do
        {
          v820 = *v818++;
          v806 += v820;
          --v819;
        }

        while (v819);
        goto LABEL_471;
      }

      if (v800 >= 0x10)
      {
        v807 = v800 & 0xFFFFFFF0;
        v805 = v801 & 0xFFFFFFF0;
        v808 = 0uLL;
        v809 = (v13 + 8);
        v810 = 0uLL;
        v811 = 0uLL;
        v812 = 0uLL;
        do
        {
          v813 = v809[-1];
          v810 = vaddw_high_u16(v810, v813);
          v808 = vaddw_u16(v808, *v813.i8);
          v812 = vaddw_high_u16(v812, *v809);
          v811 = vaddw_u16(v811, *v809->i8);
          v809 += 2;
          v807 -= 16;
        }

        while (v807);
        v806 = vaddvq_s32(vaddq_s32(vaddq_s32(v811, v808), vaddq_s32(v812, v810)));
        if (v805 == v801)
        {
          goto LABEL_471;
        }

        if ((v801 & 0xC) == 0)
        {
          goto LABEL_469;
        }
      }

      else
      {
        v806 = 0;
        v805 = 0;
      }

      v814 = &v13[v805];
      v815 = v805 - (v801 & 0xFFFFFFFC);
      v805 = v801 & 0xFFFFFFFC;
      v816 = v806;
      do
      {
        v817 = *v814++;
        v816 = vaddw_u16(v816, v817);
        v815 += 4;
      }

      while (v815);
      v806 = vaddvq_s32(v816);
      if (v805 != v801)
      {
        goto LABEL_469;
      }

LABEL_471:
      v802 = v799;
      v803 = v806 * *(v792 + 2 * (v754 - 1));
      v804 = v755 - v480;
      if (v755 - v480 <= v793)
      {
LABEL_472:
        v821 = v3908 + v793 - (v791 + v754);
        if (v821 < 4)
        {
          v822 = v754 - 2;
          v823 = v802;
          goto LABEL_485;
        }

        if (v821 >= 0x10)
        {
          v825 = v796 & 0xFFFFFFFFFFFFFFF0;
          v824 = v821 & 0xFFFFFFFFFFFFFFF0;
          v826 = 0uLL;
          v827 = v803;
          v828 = &v697[v802];
          v829 = v3939;
          v830 = 0uLL;
          v831 = 0uLL;
          do
          {
            v832 = vrev64q_s16(*v829);
            v833 = vextq_s8(v832, v832, 8uLL);
            v834 = vrev64q_s16(v829[-1]);
            v835 = vextq_s8(v834, v834, 8uLL);
            v836 = v828[-1];
            v826 = vmlal_high_u16(v826, v836, v833);
            v827 = vmlal_u16(v827, *v836.i8, *v833.i8);
            v831 = vmlal_high_u16(v831, *v828, v835);
            v830 = vmlal_u16(v830, *v828->i8, *v835.i8);
            v829 -= 2;
            v828 += 2;
            v825 -= 16;
          }

          while (v825);
          v803 = vaddvq_s32(vaddq_s32(vaddq_s32(v830, v827), vaddq_s32(v831, v826)));
          if (v821 == v824)
          {
            goto LABEL_454;
          }

          if ((v821 & 0xC) == 0)
          {
            v823 = v802 + v824;
            v822 = v793 - v824;
LABEL_485:
            v844 = v822 + 1;
            v845 = (v798 + 2 * v822);
            v846 = &v13[v823];
            do
            {
              v848 = *v845--;
              v847 = v848;
              v849 = *v846++;
              v803 += v849 * v847;
              --v844;
            }

            while (v844 > v804);
            goto LABEL_454;
          }
        }

        else
        {
          v824 = 0;
        }

        v822 = v793 - (v821 & 0xFFFFFFFFFFFFFFFCLL);
        v837 = v803;
        v823 = v802 + (v821 & 0xFFFFFFFFFFFFFFFCLL);
        v838 = &v13[v824 + v802];
        v839 = v824 - (v796 & 0xFFFFFFFFFFFFFFFCLL);
        v840 = (v797 - 2 * v824);
        do
        {
          v841 = *v840--;
          v842 = vrev64_s16(v841);
          v843 = *v838++;
          v837 = vmlal_u16(v837, v843, v842);
          v839 += 4;
        }

        while (v839);
        v803 = vaddvq_s32(v837);
        if (v821 == (v821 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_454;
        }

        goto LABEL_485;
      }

LABEL_454:
      v66 = v3991;
      *&v3991[2 * v755++] = v803 >> 15;
      v800 = v801 + 1;
      ++v791;
      --v796;
      if (v755 >= v754)
      {
        v698 = v3927;
        goto LABEL_393;
      }
    }
  }

  v67 = *(v4 + 2);
  if (v67 <= 0)
  {
    goto LABEL_48;
  }

  v68 = v4[2];
  v69 = 4 * v68;
  v70 = *v4;
  v71 = *a2;
  v72 = 6 * v68;
  v73 = v68;
  v74 = 2 * v67;
  v75 = *v4 + 2 * v68;
  v76 = v68;
  if (v67 <= 7)
  {
    v77 = 0;
LABEL_34:
    v78 = v67 - v77;
    v79 = v77;
    v80 = (v71 + 2 * v77);
    v81 = &v70->u16[v79];
    do
    {
      v82 = &v81[v68];
      *v80++ = ((vaddvq_s32(vmovl_u16(*v13)) + v13[4]) * *v81++ + v13[5] * *v82 + v13[6] * v82[v76] + v13[7] * v82[v76 + v76] + v13[8] * v82[v76 + v76 + v76]) >> 15;
      --v78;
    }

    while (v78);
    goto LABEL_36;
  }

  v77 = 0;
  v2206 = v71 + v74;
  v2208 = v71 < &v70->u64[v73] + v74 && &v70->u64[v73] < v2206;
  v2210 = v71 < v70->u64 + v72 + v74 && v70->u64 + v72 < v2206;
  v2212 = v71 < v70->u64 + v69 + v74 && v70->u64 + v69 < v2206;
  v2214 = v71 < v75 + v74 && v75 < v2206;
  v2216 = v71 < v70->u64 + v74 && v70 < v2206;
  if (v13 < v2206 && v71 < (v13 + 9))
  {
    goto LABEL_34;
  }

  if (v2208)
  {
    goto LABEL_34;
  }

  if (v2210)
  {
    goto LABEL_34;
  }

  if (v2212)
  {
    goto LABEL_34;
  }

  if (v2214)
  {
    goto LABEL_34;
  }

  if (v2216)
  {
    goto LABEL_34;
  }

  v2218 = v13;
  v2219 = vld1_dup_s16(v2218++);
  v2220 = vld1_dup_s16(v2218);
  v2221 = vaddl_u16(v2220, v2219);
  v2222 = (v13 + 2);
  v2223 = vld1_dup_s16(v2222);
  v2224 = vaddw_u16(v2221, v2223);
  v2225 = (v13 + 3);
  v2226 = vld1_dup_s16(v2225);
  v2227 = (v13 + 4);
  v2228 = vld1_dup_s16(v2227);
  v2229 = vaddw_u16(vaddw_u16(v2224, v2226), v2228);
  v2230 = (v13 + 5);
  v2231 = vld1_dup_s16(v2230);
  v2232 = vmovl_u16(v2231);
  v2233 = (v13 + 6);
  v2234 = vld1_dup_s16(v2233);
  v2235 = (v13 + 7);
  v2236 = vld1_dup_s16(v2235);
  v2237 = vmovl_u16(v2234);
  v2238 = vmovl_u16(v2236);
  v2239 = (v13 + 8);
  v2240 = vld1_dup_s16(v2239);
  v2241 = vmovl_u16(v2240);
  v2242 = vuzp1q_s16(v2229, v2232);
  v2243 = vmovn_s32(v2232);
  v77 = v67 & 0x7FFFFFF8;
  v2244 = vuzp1q_s16(v2229, v2237);
  v2245 = vmovn_s32(v2237);
  v2246 = vuzp1q_s16(v2229, v2238);
  v2247 = vmovn_s32(v2238);
  v2248 = vuzp1q_s16(v2229, v2241);
  v2249 = vmovn_s32(v2241);
  v2250 = v77;
  v2251 = *a2;
  v2252 = *v4;
  do
  {
    v2253 = (v2252 + v76 * 2 + v76 * 2);
    *v2251++ = vshrn_high_n_s32(vshrn_n_s32(vmlal_u16(vmlal_u16(vmlal_u16(vmlal_u16(vmulq_s32(v2229, vmovl_u16(*v2252)), v2243, *(v2252 + 2 * v68)), v2245, *v2253), v2247, *(v2253 + v76 * 2)), v2249, *(v2253 + 2 * v68 + v76 * 2)), 0xFuLL), vmlal_high_u16(vmlal_high_u16(vmlal_high_u16(vmlal_high_u16(vmulq_s32(v2229, vmovl_high_u16(*v2252->i8)), v2242, *&v2252->i8[2 * v68]), v2244, *v2253->i8), v2246, *&v2253->i8[v76 * 2]), v2248, *&v2253->i8[2 * v68 + v76 * 2]), 0xFuLL);
    v2252 += 2;
    v2250 -= 8;
  }

  while (v2250);
  if (v77 != v67)
  {
    goto LABEL_34;
  }

LABEL_36:
  v83 = a2[2];
  v84 = 10 * v68;
  if (v67 < 8)
  {
    v85 = 0;
LABEL_38:
    v86 = v67 - v85;
    v87 = v85;
    v88 = (v71 + 2 * v85 + 2 * v83);
    v89 = &v70->u16[v87];
    do
    {
      v65 = vmovl_u16(*v13);
      v90 = &v89[v68];
      v91 = *v90;
      v92 = &v90[v76];
      *v88++ = (vaddvq_s32(v65) * *v89++ + v13[4] * v91 + v13[5] * *v92 + v13[6] * v92[v76] + v13[7] * v92[v76 + v76] + v13[8] * v92[v76 + v76 + v76]) >> 15;
      --v86;
    }

    while (v86);
    goto LABEL_40;
  }

  v85 = 0;
  v2254 = (v71 + 2 * v83);
  v2255 = v71 + 2 * (v83 + v67);
  v2257 = v2254 < &v70->i8[v84 + v74] && v70->u64 + v84 < v2255;
  v2259 = v2254 < &v70->i8[v73 * 8 + v74] && &v70->u64[v73] < v2255;
  v2261 = v2254 < &v70->i8[v72 + v74] && v70->u64 + v72 < v2255;
  v2263 = v2254 < &v70->i8[v69 + v74] && v70->u64 + v69 < v2255;
  v2265 = v2254 < v75 + v74 && v75 < v2255;
  v2267 = v2254 < &v70->i8[v74] && v70 < v2255;
  if (v13 < v2255 && v2254 < (v13 + 9))
  {
    goto LABEL_38;
  }

  if (v2257)
  {
    goto LABEL_38;
  }

  if (v2259)
  {
    goto LABEL_38;
  }

  if (v2261)
  {
    goto LABEL_38;
  }

  if (v2263)
  {
    goto LABEL_38;
  }

  if (v2265)
  {
    goto LABEL_38;
  }

  if (v2267)
  {
    goto LABEL_38;
  }

  v2269 = v13;
  v2270 = vld1_dup_s16(v2269++);
  v2271 = vld1_dup_s16(v2269);
  v2272 = vaddl_u16(v2271, v2270);
  v2273 = (v13 + 2);
  v2274 = vld1_dup_s16(v2273);
  v2275 = vaddw_u16(v2272, v2274);
  v2276 = (v13 + 3);
  v2277 = vld1_dup_s16(v2276);
  v65 = vaddw_u16(v2275, v2277);
  v2278 = (v13 + 4);
  v2279 = vld1_dup_s16(v2278);
  v2280 = vmovl_u16(v2279);
  v2281 = (v13 + 5);
  v2282 = vld1_dup_s16(v2281);
  v2283 = vmovl_u16(v2282);
  v2284 = (v13 + 6);
  v2285 = vld1_dup_s16(v2284);
  v2286 = vmovl_u16(v2285);
  v2287 = (v13 + 7);
  v2288 = vld1_dup_s16(v2287);
  v2289 = vmovl_u16(v2288);
  v2290 = (v13 + 8);
  v2291 = vld1_dup_s16(v2290);
  v2292 = vmovl_u16(v2291);
  v2293 = vuzp1q_s16(v65, v2280);
  v2294 = vmovn_s32(v2280);
  v85 = v67 & 0x7FFFFFF8;
  v2295 = vuzp1q_s16(v65, v2283);
  v2296 = vmovn_s32(v2283);
  v2297 = vuzp1q_s16(v65, v2286);
  v2298 = vmovn_s32(v2286);
  v2299 = vuzp1q_s16(v65, v2289);
  v2300 = vmovn_s32(v2289);
  v2301 = vuzp1q_s16(v65, v2292);
  v2302 = vmovn_s32(v2292);
  v2303 = v85;
  v2304 = v70;
  do
  {
    v2305 = *(v2304 + 2 * v68);
    v2306 = (v2304 + v76 * 2 + v76 * 2);
    v2307 = vmlal_high_u16(vmlal_high_u16(vmulq_s32(v65, vmovl_high_u16(*v2304)), v2293, v2305), v2295, *v2306);
    v2308 = vmlal_u16(vmlal_u16(vmulq_s32(v65, vmovl_u16(*v2304->i8)), v2294, *v2305.i8), v2296, *v2306->i8);
    v2309 = &v2306->i8[v76 * 2];
    *v2254++ = vshrn_high_n_s32(vshrn_n_s32(vmlal_u16(vmlal_u16(vmlal_u16(v2308, v2298, *v2309), v2300, *(v2309 + 2 * v68)), v2302, *(v2309 + 2 * v68 + 2 * v68)), 0xFuLL), vmlal_high_u16(vmlal_high_u16(vmlal_high_u16(v2307, v2297, *v2309->i8), v2299, *&v2309->i8[2 * v68]), v2301, *&v2309->i8[2 * v68 + 2 * v68]), 0xFuLL);
    ++v2304;
    v2303 -= 8;
  }

  while (v2303);
  if (v85 != v67)
  {
    goto LABEL_38;
  }

LABEL_40:
  v93 = 4 * v83;
  v94 = 12 * v68;
  v3984 = 6 * v68;
  if (v67 < 8)
  {
    v95 = 0;
    goto LABEL_42;
  }

  v95 = 0;
  v2310 = (v71 + v93);
  v2311 = v71 + v93 + v74;
  v2312 = &v70->i8[v69];
  v2313 = v70->u64 + v69 + v74;
  v2315 = v71 + v93 < v70->u64 + v94 + v74 && v70->u64 + v94 < v2311;
  v2317 = v2310 < &v70->i8[v84 + v74] && v70->u64 + v84 < v2311;
  v2319 = v2310 < &v70->i8[v73 * 8 + v74] && &v70->u64[v73] < v2311;
  v2321 = v2310 < &v70->i8[v72 + v74] && v70->u64 + v72 < v2311;
  v2323 = v2310 < v2313 && v2312 < v2311;
  v2325 = v2310 < v75 + v74 && v75 < v2311;
  v2327 = v2310 < &v70->i8[v74] && v70 < v2311;
  if (v13 < v2311 && v2310 < (v13 + 9))
  {
    v69 = 4 * v68;
LABEL_2601:
    v73 = v68;
    goto LABEL_2602;
  }

  v69 = 4 * v68;
  if (v2315)
  {
    goto LABEL_2601;
  }

  v73 = v68;
  if (!v2317)
  {
    v84 = 10 * v68;
    if (!v2319 && !v2321 && !v2323)
    {
      v93 = 4 * v83;
      v94 = 12 * v68;
      if (!v2325 && !v2327)
      {
        v2329 = v13;
        v2330 = vld1_dup_s16(v2329++);
        v2331 = vld1_dup_s16(v2329);
        v2332 = vaddl_u16(v2331, v2330);
        v2333 = (v13 + 2);
        v2334 = vld1_dup_s16(v2333);
        v65 = vaddw_u16(v2332, v2334);
        v2335 = (v13 + 3);
        v2336 = vld1_dup_s16(v2335);
        v2337 = vmovl_u16(v2336);
        v2338 = (v13 + 4);
        v2339 = vld1_dup_s16(v2338);
        v2340 = vmovl_u16(v2339);
        v2341 = (v13 + 5);
        v2342 = vld1_dup_s16(v2341);
        v2343 = vmovl_u16(v2342);
        v2344 = (v13 + 6);
        v2345 = vld1_dup_s16(v2344);
        v2346 = vmovl_u16(v2345);
        v2347 = (v13 + 7);
        v2348 = vld1_dup_s16(v2347);
        v2349 = vmovl_u16(v2348);
        v2350 = (v13 + 8);
        v2351 = vld1_dup_s16(v2350);
        v2352 = vmovl_u16(v2351);
        v2353 = vuzp1q_s16(v65, v2337);
        v2354 = vmovn_s32(v2337);
        v95 = v67 & 0x7FFFFFF8;
        v2355 = vuzp1q_s16(v65, v2340);
        v2356 = vmovn_s32(v2340);
        v2357 = vuzp1q_s16(v65, v2343);
        v2358 = vmovn_s32(v2343);
        v2359 = vuzp1q_s16(v65, v2346);
        v2360 = vmovn_s32(v2346);
        v2361 = vuzp1q_s16(v65, v2349);
        v2362 = vmovn_s32(v2349);
        v2363 = vuzp1q_s16(v65, v2352);
        v2364 = vmovn_s32(v2352);
        v2365 = v95;
        v2366 = v70;
        do
        {
          v2367 = *(v2366 + 2 * v68);
          v2368 = (v2366 + v76 * 2 + v76 * 2);
          v2369 = vmlal_high_u16(vmlal_high_u16(vmulq_s32(v65, vmovl_high_u16(*v2366)), v2353, v2367), v2355, *v2368);
          v2370 = vmlal_u16(vmlal_u16(vmulq_s32(v65, vmovl_u16(*v2366->i8)), v2354, *v2367.i8), v2356, *v2368->i8);
          v2371 = (v2368 + v76 * 2);
          v2372 = vmlal_high_u16(v2369, v2357, *v2371);
          v2373 = vmlal_u16(v2370, v2358, *v2371->i8);
          v2374 = &v2371->i8[v76 * 2];
          *v2310++ = vshrn_high_n_s32(vshrn_n_s32(vmlal_u16(vmlal_u16(vmlal_u16(v2373, v2360, *v2374), v2362, *(v2374 + 2 * v68)), v2364, *(v2374 + 2 * v68 + 2 * v68)), 0xFuLL), vmlal_high_u16(vmlal_high_u16(vmlal_high_u16(v2372, v2359, *v2374->i8), v2361, *&v2374->i8[2 * v68]), v2363, *&v2374->i8[2 * v68 + 2 * v68]), 0xFuLL);
          ++v2366;
          v2365 -= 8;
        }

        while (v2365);
        if (v95 == v67)
        {
          goto LABEL_44;
        }
      }

      goto LABEL_42;
    }

    goto LABEL_2603;
  }

LABEL_2602:
  v84 = 10 * v68;
LABEL_2603:
  v94 = 12 * v68;
  v93 = 4 * v83;
LABEL_42:
  v96 = v67 - v95;
  v97 = (v71 + v93 + 2 * v95);
  v98 = v70 + v95;
  do
  {
    v99 = &v98[v68];
    v100 = *v99;
    v101 = &v99[v76];
    v102 = (v13[1] + *v13 + v13[2]) * *v98 + v13[3] * v100;
    v103 = *v101;
    v104 = &v101[v76];
    *v97++ = (v102 + v13[4] * v103 + v13[5] * *v104 + v13[6] * v104[v76] + v13[7] * v104[v76 + v76] + v13[8] * v104[v76 + v76 + v76]) >> 15;
    ++v98;
    --v96;
  }

  while (v96);
LABEL_44:
  v105 = 6 * v83;
  if (v67 >= 0x10)
  {
    v106 = 0;
    v2375 = (v71 + v105);
    v2376 = v71 + v105 + v74;
    v2377 = &v70->i8[14 * v68];
    v2378 = &v70->i8[v94];
    v2379 = &v70->i8[v84];
    v2380 = &v2379[v74];
    v2381 = &v70->i8[v73 * 8];
    v2382 = &v2381[v74];
    v2383 = v70->u64 + v3984 + v74;
    v2384 = v70->u64 + v69 + v74;
    v2385 = v75 + v74;
    v2386 = v70->u64 + v74;
    v2388 = v71 + v105 < &v2377[v74] && v2377 < v2376;
    v2390 = v2375 < &v2378[v74] && v2378 < v2376;
    v2392 = v2375 < v2380 && v2379 < v2376;
    v2394 = v2375 < v2382 && v2381 < v2376;
    v2396 = v2375 < v2383 && v70->u64 + v3984 < v2376;
    v2398 = v2375 < v2384 && v70->u64 + v69 < v2376;
    v2400 = v2375 < v2385 && v75 < v2376;
    v2402 = v2375 < v2386 && v70 < v2376;
    v2403 = v13 >= v2376 || v2375 >= (v13 + 9);
    if (!v2403 || v2388)
    {
      v4 = v3982;
    }

    else
    {
      v4 = v3982;
      if (!v2390 && !v2392 && !v2394 && !v2396 && !v2398 && !v2400 && !v2402)
      {
        v2404 = v13;
        v2405 = vld1_dup_s16(v2404++);
        v2406 = vld1_dup_s16(v2404);
        v65 = vaddl_u16(v2406, v2405);
        v2407 = (v13 + 2);
        v2408 = vld1_dup_s16(v2407);
        v2409 = vmovl_u16(v2408);
        v2410 = (v13 + 3);
        v2411 = vld1_dup_s16(v2410);
        v2412 = vmovl_u16(v2411);
        v2413 = (v13 + 4);
        v2414 = vld1_dup_s16(v2413);
        v2415 = vmovl_u16(v2414);
        v2416 = (v13 + 5);
        v2417 = vld1_dup_s16(v2416);
        v2418 = vmovl_u16(v2417);
        v2419 = (v13 + 6);
        v2420 = vld1_dup_s16(v2419);
        v2421 = vmovl_u16(v2420);
        v2422 = (v13 + 7);
        v2423 = vld1_dup_s16(v2422);
        v2424 = vmovl_u16(v2423);
        v2425 = (v13 + 8);
        v2426 = vld1_dup_s16(v2425);
        v2427 = vmovl_u16(v2426);
        v2428 = vuzp1q_s16(v65, v2409);
        v2429 = vmovn_s32(v2409);
        v106 = v67 & 0x7FFFFFF8;
        v2430 = vuzp1q_s16(v65, v2412);
        v2431 = vmovn_s32(v2412);
        v2432 = vuzp1q_s16(v65, v2415);
        v2433 = vmovn_s32(v2415);
        v2434 = vuzp1q_s16(v65, v2418);
        v2435 = vmovn_s32(v2418);
        v2436 = vuzp1q_s16(v65, v2421);
        v2437 = vmovn_s32(v2421);
        v2438 = vuzp1q_s16(v65, v2424);
        v2439 = vmovn_s32(v2424);
        v2440 = vuzp1q_s16(v65, v2427);
        v2441 = vmovn_s32(v2427);
        v2442 = v106;
        v2443 = v70;
        do
        {
          v2444 = *(v2443 + 2 * v68);
          v2445 = vmlal_high_u16(vmulq_s32(v65, vmovl_high_u16(*v2443)), v2428, v2444);
          v2446 = vmlal_u16(vmulq_s32(v65, vmovl_u16(*v2443->i8)), v2429, *v2444.i8);
          v2447 = &v2443->i8[v76 * 2 + v76 * 2];
          v2448 = *v2447->i8;
          v2449 = vmlal_u16(v2446, v2431, *v2447);
          v2450 = (v2447 + v76 * 2);
          v2451 = vmlal_high_u16(vmlal_high_u16(v2445, v2430, v2448), v2432, *v2450);
          v2452 = vmlal_u16(v2449, v2433, *v2450->i8);
          v2453 = (v2450 + v76 * 2);
          v2454 = vmlal_high_u16(v2451, v2434, *v2453);
          v2455 = vmlal_u16(v2452, v2435, *v2453->i8);
          v2456 = &v2453->i8[v76 * 2];
          *v2375++ = vshrn_high_n_s32(vshrn_n_s32(vmlal_u16(vmlal_u16(vmlal_u16(v2455, v2437, *v2456), v2439, *(v2456 + 2 * v68)), v2441, *(v2456 + 2 * v68 + 2 * v68)), 0xFuLL), vmlal_high_u16(vmlal_high_u16(vmlal_high_u16(v2454, v2436, *v2456->i8), v2438, *&v2456->i8[2 * v68]), v2440, *&v2456->i8[2 * v68 + 2 * v68]), 0xFuLL);
          ++v2443;
          v2442 -= 8;
        }

        while (v2442);
        if (v106 == v67)
        {
          goto LABEL_48;
        }
      }
    }
  }

  else
  {
    v106 = 0;
  }

  v107 = v67 - v106;
  v108 = (v71 + 2 * v106 + v105);
  v109 = v70 + v106;
  do
  {
    v110 = &v109[v68];
    v111 = &v110[v76 + v76];
    v112 = (v13[1] + *v13) * *v109 + v13[2] * *v110 + v13[3] * v110[v68];
    LODWORD(v110) = *v111;
    v113 = &v111[v76];
    *v108++ = (v112 + v13[4] * v110 + v13[5] * *v113 + v13[6] * v113[v76] + v13[7] * v113[v76 + v76] + v13[8] * v113[v76 + v76 + v76]) >> 15;
    ++v109;
    --v107;
  }

  while (v107);
LABEL_48:
  v114 = *(v4 + 3);
  v3937 = v114 - 4;
  v3926 = v114;
  if (v114 > 8)
  {
    v115 = 0;
    v116 = 0;
    v117 = (v114 - 8);
    v3959 = 2 * v67;
    v118 = 4;
    v119 = 8;
    while (v67 <= 0)
    {
      v120 = v116 + 1;
LABEL_51:
      ++v118;
      ++v115;
      v119 += 2;
      v116 = v120;
      if (v120 == v117)
      {
        goto LABEL_488;
      }
    }

    v121 = *v4;
    v122 = v4[2];
    v123 = *a2;
    v124 = a2[2];
    v120 = v116 + 1;
    v125 = 2 * v122;
    if (v67 > 7)
    {
      v126 = 0;
      v140 = v123 + 2 * v124 * v118;
      v141 = v123 + v3959 + v124 * (2 * v115 + 8);
      v142 = v125 * (v116 + 8);
      v143 = &v121->i8[v3959];
      v144 = v125 * (v116 + 7);
      v145 = v121->u64 + v144;
      v146 = v125 * (v116 + 6);
      v147 = v121->u64 + v146;
      v148 = v121->u64 + v3959 + v146;
      v149 = v125 * (v116 + 5);
      v150 = v121->u64 + v149;
      v151 = v121->u64 + v3959 + v149;
      v152 = v125 * (v116 + 4);
      v153 = v121->u64 + v152;
      v154 = v121->u64 + v3959 + v152;
      v155 = v125 * (v116 + 3);
      v159 = v140 >= v121->u64 + v3959 + v144;
      v156 = v121->u64 + v155;
      v157 = v121->u64 + v3959 + v155;
      v158 = v125 * (v116 + 2);
      v159 = v159 || v145 >= v141;
      v160 = !v159;
      v161 = v121->u64 + v158;
      v162 = &v143[v158];
      v164 = v140 < v148 && v147 < v141;
      v159 = v140 >= v151;
      v165 = v125 * v120;
      v167 = !v159 && v150 < v141;
      v159 = v140 >= v154;
      v168 = v121->u64 + v165;
      v169 = &v143[v165];
      v171 = !v159 && v153 < v141;
      v172 = v116 * v122;
      v174 = v140 < v157 && v156 < v141;
      v175 = 2 * v172;
      v177 = v140 < v162 && v161 < v141;
      v178 = v121->u64 + v175;
      v179 = &v143[v175];
      v181 = v140 < v169 && v168 < v141;
      v183 = v140 < v179 && v178 < v141;
      v185 = v140 < (v13 + 9) && v13 < v141;
      v186 = v121->u64 + v142 >= v141 || v140 >= &v143[v142];
      if (!v186 || (v160 & 1) != 0 || v164 || (v167 & 1) != 0 || (v171 & 1) != 0)
      {
        v4 = v3982;
      }

      else
      {
        v4 = v3982;
        if (!v174 && !v177)
        {
          v123 = *a2;
          v124 = a2[2];
          if (v181 || v183)
          {
            v117 = (v3926 - 8);
          }

          else
          {
            v117 = (v3926 - 8);
            if (!v185)
            {
              v187 = v13;
              *v65.i8 = vld1_dup_s16(v187++);
              v188 = vmovl_u16(*v65.i8);
              *v65.i8 = vld1_dup_s16(v187);
              v189 = vmovl_u16(*v65.i8);
              v190 = (v13 + 2);
              *v65.i8 = vld1_dup_s16(v190);
              v191 = vmovl_u16(*v65.i8);
              v192 = (v13 + 3);
              *v65.i8 = vld1_dup_s16(v192);
              v193 = vmovl_u16(*v65.i8);
              v194 = (v13 + 4);
              *v65.i8 = vld1_dup_s16(v194);
              v195 = vmovl_u16(*v65.i8);
              v196 = (v13 + 5);
              *v65.i8 = vld1_dup_s16(v196);
              v197 = vmovl_u16(*v65.i8);
              v198 = (v13 + 6);
              *v65.i8 = vld1_dup_s16(v198);
              v199 = vmovl_u16(*v65.i8);
              v200 = (v13 + 7);
              *v65.i8 = vld1_dup_s16(v200);
              v201 = vmovl_u16(*v65.i8);
              v202 = (v13 + 8);
              *v65.i8 = vld1_dup_s16(v202);
              v203 = vmovl_u16(*v65.i8);
              v65 = vuzp1q_s16(v65, v188);
              v204 = (v121 + 2 * v172);
              v205 = vmovn_s32(v188);
              v206 = (*a2 + a2[2] * v119);
              v207 = vuzp1q_s16(v65, v189);
              v208 = vmovn_s32(v189);
              v209 = vuzp1q_s16(v65, v191);
              v210 = vmovn_s32(v191);
              v211 = vuzp1q_s16(v65, v193);
              v212 = vmovn_s32(v193);
              v213 = vuzp1q_s16(v65, v195);
              v214 = vmovn_s32(v195);
              v215 = vuzp1q_s16(v65, v197);
              v216 = vmovn_s32(v197);
              v217 = vuzp1q_s16(v65, v199);
              v218 = vmovn_s32(v199);
              v219 = vuzp1q_s16(v65, v201);
              v220 = vmovn_s32(v201);
              v221 = vuzp1q_s16(v65, v203);
              v222 = vmovn_s32(v203);
              v223 = v67 & 0x7FFFFFF8;
              do
              {
                v224 = *(v204 + 2 * v122);
                v225 = vmull_u16(v208, *v224.i8);
                v226 = (v204 + v125 + v125);
                v227 = vmlal_high_u16(vmlal_high_u16(vmull_high_u16(v207, v224), v65, *v204), v209, *v226);
                v228 = vmlal_u16(vmlal_u16(v225, v205, *v204->i8), v210, *v226->i8);
                v229 = &v226->i8[v125];
                v230 = *v229->i8;
                v231 = vmlal_u16(v228, v212, *v229);
                v232 = (v229 + v125);
                v233 = vmlal_high_u16(vmlal_high_u16(v227, v211, v230), v213, *v232);
                v234 = vmlal_u16(v231, v214, *v232->i8);
                v235 = &v232->i8[v125];
                v236 = vmlal_u16(v234, v216, *v235);
                v237 = vmlal_high_u16(v233, v215, *v235->i8);
                v238 = (v235 + v125);
                *v206++ = vshrn_high_n_s32(vshrn_n_s32(vmlal_u16(vmlal_u16(vmlal_u16(v236, v218, *v238), v220, *(v238 + 2 * v122)), v222, *(v238 + 2 * v122 + 2 * v122)), 0xFuLL), vmlal_high_u16(vmlal_high_u16(vmlal_high_u16(v237, v217, *v238->i8), v219, *&v238->i8[2 * v122]), v221, *&v238->i8[2 * v122 + 2 * v122]), 0xFuLL);
                ++v204;
                v223 -= 8;
              }

              while (v223);
              v126 = v67 & 0x7FFFFFF8;
              if (v126 == v67)
              {
                goto LABEL_51;
              }
            }
          }

          goto LABEL_55;
        }
      }

      v117 = (v3926 - 8);
      v123 = *a2;
      v124 = a2[2];
    }

    else
    {
      v126 = 0;
    }

LABEL_55:
    v127 = v67 - v126;
    v128 = v126;
    v129 = (v123 + 2 * v126 + v124 * v119);
    v130 = &v121->i16[v116 * v122 + v128];
    do
    {
      v131 = &v130[v122];
      v132 = *v130++;
      v133.i16[0] = v132;
      v133.i16[1] = *v131;
      v134 = &v131[v125 / 2];
      v133.i16[2] = *v134;
      v135 = &v134[v125 / 2];
      v133.i16[3] = *v135;
      v136 = &v135[v125 / 2];
      v137.i16[0] = *v136;
      v137.i16[1] = v136[v122];
      v138 = &v136[v125 / 2 + v125 / 2];
      v137.i16[2] = *v138;
      v139 = &v138[v125 / 2];
      v137.i16[3] = *v139;
      v65 = vmlal_u16(vmull_u16(*v13, v133), *&vextq_s8(*v13, *v13, 8uLL), v137);
      *v129++ = (vaddvq_s32(v65) + v13[8] * v139[v122]) >> 15;
      --v127;
    }

    while (v127);
    goto LABEL_51;
  }

LABEL_488:
  v850 = 0;
  v851 = v3926 - 2;
  v852 = v3937;
  v3896 = v851 + 4;
  v853 = v3937 - 1;
  v3986 = v851;
  v3917 = v851 + 3;
  v3892 = 2 * v851;
  v3888 = 2 * v851 - 2;
  v854 = v13 + 3;
  v855 = 2;
  do
  {
    if (v853 >= v3917)
    {
      v856 = v3917;
    }

    else
    {
      v856 = v853;
    }

    v3933 = v850;
    v857 = v3937 - 1 + v850;
    if (v857 >= v3917)
    {
      v858 = v3917;
    }

    else
    {
      v858 = v857;
    }

    if (v857 >= v3917)
    {
      v857 = v3917;
    }

    if (v67 >= 1)
    {
      v859 = *v3982;
      v860 = v3982[2];
      v861 = *v3982 + 2 * v860 * (v3926 - 1);
      v862 = *a2 + 2 * a2[2] * v852;
      if (v852 > v3926 + 2)
      {
        v863 = 0;
        while (1)
        {
          if (v855 >= 4)
          {
            if (v855 < 0x10)
            {
              v865 = 0;
              v866 = 0;
LABEL_510:
              v65 = v865;
              v874 = &v13[v866];
              v875 = v866 - (v855 & 0xFFFFFFFFFFFFFFFCLL);
              do
              {
                v876 = *v874++;
                v65 = vaddw_u16(v65, v876);
                v875 += 4;
              }

              while (v875);
              v865 = vaddvq_s32(v65);
              v864 = v855 & 0x7FFFFFFFFFFFFFFCLL;
              if (v855 == (v855 & 0x7FFFFFFFFFFFFFFCLL))
              {
                goto LABEL_501;
              }

              goto LABEL_513;
            }

            v867 = 0uLL;
            v868 = v855 & 0xFFFFFFFFFFFFFFF0;
            v869 = (v13 + 8);
            v870 = 0uLL;
            v871 = 0uLL;
            v872 = 0uLL;
            do
            {
              v873 = v869[-1];
              v870 = vaddw_high_u16(v870, v873);
              v867 = vaddw_u16(v867, *v873.i8);
              v872 = vaddw_high_u16(v872, *v869);
              v871 = vaddw_u16(v871, *v869->i8);
              v869 += 2;
              v868 -= 16;
            }

            while (v868);
            v65 = vaddq_s32(vaddq_s32(v871, v867), vaddq_s32(v872, v870));
            v865 = vaddvq_s32(v65);
            if (v855 == (v855 & 0x7FFFFFFFFFFFFFF0))
            {
              goto LABEL_501;
            }

            v866 = v855 & 0x7FFFFFFFFFFFFFF0;
            v864 = v855 & 0x7FFFFFFFFFFFFFF0;
            if ((v855 & 0xC) != 0)
            {
              goto LABEL_510;
            }
          }

          else
          {
            v864 = 0;
            v865 = 0;
          }

          do
          {
LABEL_513:
            v865 += v13[v864++];
          }

          while (v855 != v864);
LABEL_501:
          *(v862 + 2 * v863) = (v865 * *(v861 + 2 * v863)) >> 15;
          if (++v863 == v67)
          {
            goto LABEL_489;
          }
        }
      }

      v877 = 4 * v860;
      v878 = 2 * v860;
      if (v852 < v3926 - 5)
      {
        v879 = 0;
        v880 = v3896 - v857;
        v881 = v859 + v3892 * v860;
        v882 = v859 + v3888 * v860;
        while (1)
        {
          if (v880 >= 2)
          {
            v886 = 0;
            v887 = 0;
            v888 = 0;
            v889 = (v3896 - v856) & 0xFFFFFFFFFFFFFFFELL;
            v890 = v13 + 1;
            do
            {
              v891 = *(v890 - 1);
              v892 = *v890;
              v890 += 2;
              v887 += v891 * *(v881 + v886);
              v888 += v892 * *(v882 + v886);
              v886 -= v877;
              v889 -= 2;
            }

            while (v889);
            v884 = v888 + v887;
            v885 = v3986 - (v880 & 0xFFFFFFFFFFFFFFFELL);
            v883 = v880 & 0xFFFFFFFFFFFFFFFELL;
            if (v880 == (v880 & 0xFFFFFFFFFFFFFFFELL))
            {
              goto LABEL_517;
            }
          }

          else
          {
            v883 = 0;
            v884 = 0;
            v885 = v3926 - 2;
          }

          v893 = v885 + 4;
          v894 = (v859 + v878 * v885);
          v895 = &v13[v883];
          do
          {
            v896 = *v895++;
            v884 += v896 * *v894;
            --v893;
            v894 = (v894 - v878);
          }

          while (v893 >= v852);
LABEL_517:
          *(v862 + 2 * v879++) = v884 >> 15;
          v881 += 2;
          v882 += 2;
          v859 += 2;
          if (v879 == v67)
          {
            goto LABEL_489;
          }
        }
      }

      v897 = 0;
      v898 = v3896 - v858;
      v899 = (v3896 - v858) & 0xFFFFFFFFFFFFFFFELL;
      v900 = v859 + v3888 * v860;
      v901 = v859 + v3892 * v860;
      do
      {
        if (v855 < 4)
        {
          v902 = 0;
          v903 = 0;
          do
          {
LABEL_539:
            v903 += v13[v902++];
          }

          while (v855 != v902);
          goto LABEL_540;
        }

        if (v855 >= 0x10)
        {
          v905 = 0uLL;
          v906 = v855 & 0xFFFFFFFFFFFFFFF0;
          v907 = (v13 + 8);
          v908 = 0uLL;
          v909 = 0uLL;
          v910 = 0uLL;
          do
          {
            v911 = v907[-1];
            v908 = vaddw_high_u16(v908, v911);
            v905 = vaddw_u16(v905, *v911.i8);
            v910 = vaddw_high_u16(v910, *v907);
            v909 = vaddw_u16(v909, *v907->i8);
            v907 += 2;
            v906 -= 16;
          }

          while (v906);
          v65 = vaddq_s32(vaddq_s32(v909, v905), vaddq_s32(v910, v908));
          v903 = vaddvq_s32(v65);
          if (v855 == (v855 & 0x7FFFFFFFFFFFFFF0))
          {
            goto LABEL_540;
          }

          v904 = v855 & 0x7FFFFFFFFFFFFFF0;
          v902 = v855 & 0x7FFFFFFFFFFFFFF0;
          if ((v855 & 0xC) == 0)
          {
            goto LABEL_539;
          }
        }

        else
        {
          v903 = 0;
          v904 = 0;
        }

        v65 = v903;
        v912 = &v13[v904];
        v913 = v904 - (v855 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          v914 = *v912++;
          v65 = vaddw_u16(v65, v914);
          v913 += 4;
        }

        while (v913);
        v903 = vaddvq_s32(v65);
        v902 = v855 & 0x7FFFFFFFFFFFFFFCLL;
        if (v855 != (v855 & 0x7FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_539;
        }

LABEL_540:
        v915 = v903 * *(v861 + 2 * v897);
        if (v898 >= 2)
        {
          v918 = 0;
          v919 = 0;
          v920 = v854;
          v921 = (v3896 - v856) & 0xFFFFFFFFFFFFFFFELL;
          do
          {
            v922 = *(v920 - 1);
            v923 = *v920;
            v920 += 2;
            v915 += v922 * *(v901 + v918);
            v919 += v923 * *(v900 + v918);
            v918 -= v877;
            v921 -= 2;
          }

          while (v921);
          v915 += v919;
          v916 = v3986 - v899;
          v917 = v855 + v899;
          if (v898 == v899)
          {
            goto LABEL_527;
          }
        }

        else
        {
          v916 = v3926 - 2;
          v917 = v855;
        }

        v924 = v916 + 4;
        v925 = (v859 + v878 * v916);
        v926 = &v13[v917];
        do
        {
          v927 = *v926++;
          v915 += v927 * *v925;
          --v924;
          v925 = (v925 - v878);
        }

        while (v924 >= v852);
LABEL_527:
        *(v862 + 2 * v897++) = v915 >> 15;
        v900 += 2;
        v901 += 2;
        v859 += 2;
      }

      while (v897 != v67);
    }

LABEL_489:
    ++v852;
    ++v855;
    v850 = v3933 + 1;
    ++v853;
    ++v854;
  }

  while (v852 < v3926);
  v928 = v3982;
  v66 = v3991;
  if (v3926 >= 1)
  {
    v929 = 0;
    v930 = 0;
    v931 = (v3991 + 8);
    v932 = v13 + 8;
    while (1)
    {
      v933 = *a2;
      v934 = a2[2];
      v935 = (*a2 + 2 * v934 * v930);
      *v66 = ((v13[1] + *v13 + v13[2] + v13[3] + v13[4]) * *v935 + v935[1] * v13[5] + v935[2] * v13[6] + v935[3] * v13[7] + v935[4] * v13[8]) >> 15;
      v66[1] = ((v13[1] + *v13 + v13[2] + v13[3]) * *v935 + v935[1] * v13[4] + v935[2] * v13[5] + v935[3] * v13[6] + v935[4] * v13[7] + v935[5] * v13[8]) >> 15;
      v66[2] = ((v13[1] + *v13 + v13[2]) * *v935 + v935[1] * v13[3] + v935[2] * v13[4] + v935[3] * v13[5] + v935[4] * v13[6] + v935[5] * v13[7] + v935[6] * v13[8]) >> 15;
      v66[3] = ((v13[1] + *v13) * *v935 + v935[1] * v13[2] + v935[2] * v13[3] + v935[3] * v13[4] + v935[4] * v13[5] + v935[5] * v13[6] + v935[6] * v13[7] + v935[7] * v13[8]) >> 15;
      v936 = *(v928 + 2);
      if (v936 >= 9)
      {
        break;
      }

LABEL_558:
      v945 = v936 - 4;
      v946 = v936 - 1;
      v947 = v936 - 4;
      if (v947 + 4 >= v936 - 1)
      {
        v949 = v13[1] + *v13;
        v948 = 2;
      }

      else
      {
        v948 = 0;
        v949 = 0;
      }

      v950 = v936 - 2;
      v951 = v949 * v935[v946];
      if (v936 + 2 >= v945)
      {
        v952 = v945 - 4;
        if (v947 - 4 >= v950)
        {
          v952 = v936 - 2;
        }

        v953 = v950 - v952 + 1;
        if (v953 < 4)
        {
          v954 = v936 - 2;
          v955 = v948;
          goto LABEL_593;
        }

        if (v953 >= 0x10)
        {
          v1001 = v953 & 0xFFFFFFFFFFFFFFF0;
          v1002 = 0uLL;
          v1003 = v951;
          v1004 = (v933 + v934 * v929 + 2 * v950 - 14);
          v1005 = &v932[v948];
          v1006 = v953 & 0xFFFFFFFFFFFFFFF0;
          v1007 = 0uLL;
          v1008 = 0uLL;
          do
          {
            v1009 = vrev64q_s16(*v1004);
            v1010 = vextq_s8(v1009, v1009, 8uLL);
            v1011 = vrev64q_s16(v1004[-1]);
            v1012 = vextq_s8(v1011, v1011, 8uLL);
            v1013 = v1005[-1];
            v1002 = vmlal_high_u16(v1002, v1013, v1010);
            v1003 = vmlal_u16(v1003, *v1013.i8, *v1010.i8);
            v1008 = vmlal_high_u16(v1008, *v1005, v1012);
            v1007 = vmlal_u16(v1007, *v1005->i8, *v1012.i8);
            v1004 -= 2;
            v1005 += 2;
            v1006 -= 16;
          }

          while (v1006);
          v951 = vaddvq_s32(vaddq_s32(vaddq_s32(v1007, v1003), vaddq_s32(v1008, v1002)));
          if (v953 == v1001)
          {
            goto LABEL_595;
          }

          if ((v953 & 0xC) == 0)
          {
            v955 = v948 | v1001;
            v954 = v950 - v1001;
LABEL_593:
            v1021 = v954 + 1;
            v1022 = (v933 + v934 * v929 + 2 * v954);
            v1023 = &v13[v955];
            do
            {
              v1025 = *v1022--;
              v1024 = v1025;
              v1026 = *v1023++;
              v951 += v1026 * v1024;
              --v1021;
            }

            while (v1021 >= v947 - 3);
            goto LABEL_595;
          }
        }

        else
        {
          v1001 = 0;
        }

        v954 = v950 - (v953 & 0xFFFFFFFFFFFFFFFCLL);
        v955 = v948 | v953 & 0xFFFFFFFFFFFFFFFCLL;
        v1014 = v951;
        v1015 = &v13[v1001 + v948];
        v1016 = v1001 - (v953 & 0xFFFFFFFFFFFFFFFCLL);
        v1017 = (v933 + v934 * v929 + 2 * v950 - 2 * v1001 - 6);
        do
        {
          v1018 = *v1017--;
          v1019 = vrev64_s16(v1018);
          v1020 = *v1015++;
          v1014 = vmlal_u16(v1014, v1020, v1019);
          v1016 += 4;
        }

        while (v1016);
        v951 = vaddvq_s32(v1014);
        if (v953 != (v953 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_593;
        }
      }

LABEL_595:
      v66[v947] = v951 >> 15;
      if (v947 + 1 >= v936)
      {
        goto LABEL_551;
      }

      if (v947 + 5 >= v946)
      {
        v1028 = v13[1] + *v13 + v13[2];
        v1027 = 3;
      }

      else
      {
        v1027 = 0;
        v1028 = 0;
      }

      v1029 = v1028 * v935[v946];
      v1030 = v947 - 3;
      if (v947 - 3 >= v950)
      {
        v1030 = v936 - 2;
      }

      v1031 = v950 - v1030 + 1;
      if (v1031 >= 4)
      {
        if (v1031 < 0x10)
        {
          v1034 = 0;
LABEL_609:
          v1032 = v950 - (v1031 & 0xFFFFFFFFFFFFFFFCLL);
          v1033 = v1027 | v1031 & 0xFFFFFFFFFFFFFFFCLL;
          v1047 = v1029;
          v1048 = &v13[v1034 + v1027];
          v1049 = v1034 - (v1031 & 0xFFFFFFFFFFFFFFFCLL);
          v1050 = (v933 + v934 * v929 + 2 * v950 - 2 * v1034 - 6);
          do
          {
            v1051 = *v1050--;
            v1052 = vrev64_s16(v1051);
            v1053 = *v1048++;
            v1047 = vmlal_u16(v1047, v1053, v1052);
            v1049 += 4;
          }

          while (v1049);
          v1029 = vaddvq_s32(v1047);
          if (v1031 == (v1031 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_616;
          }

          goto LABEL_614;
        }

        v1034 = v1031 & 0xFFFFFFFFFFFFFFF0;
        v1035 = 0uLL;
        v1036 = v1029;
        v1037 = (v933 + v934 * v929 + 2 * v950 - 14);
        v1038 = &v932[v1027];
        v1039 = v1031 & 0xFFFFFFFFFFFFFFF0;
        v1040 = 0uLL;
        v1041 = 0uLL;
        do
        {
          v1042 = vrev64q_s16(*v1037);
          v1043 = vextq_s8(v1042, v1042, 8uLL);
          v1044 = vrev64q_s16(v1037[-1]);
          v1045 = vextq_s8(v1044, v1044, 8uLL);
          v1046 = v1038[-1];
          v1035 = vmlal_high_u16(v1035, v1046, v1043);
          v1036 = vmlal_u16(v1036, *v1046.i8, *v1043.i8);
          v1041 = vmlal_high_u16(v1041, *v1038, v1045);
          v1040 = vmlal_u16(v1040, *v1038->i8, *v1045.i8);
          v1037 -= 2;
          v1038 += 2;
          v1039 -= 16;
        }

        while (v1039);
        v1029 = vaddvq_s32(vaddq_s32(vaddq_s32(v1040, v1036), vaddq_s32(v1041, v1035)));
        if (v1031 == v1034)
        {
          goto LABEL_616;
        }

        if ((v1031 & 0xC) != 0)
        {
          goto LABEL_609;
        }

        v1033 = v1027 | v1034;
        v1032 = v950 - v1034;
      }

      else
      {
        v1032 = v936 - 2;
        v1033 = v1027;
      }

LABEL_614:
      v1054 = (v933 + v934 * v929 + 2 * v1032);
      v1055 = &v13[v1033];
      v1056 = v1027 + v950 - v1033 - v1030 + 1;
      do
      {
        v1058 = *v1054--;
        v1057 = v1058;
        v1059 = *v1055++;
        v1029 += v1059 * v1057;
        --v1056;
      }

      while (v1056);
LABEL_616:
      v66[v947 + 1] = v1029 >> 15;
      if (v947 + 6 >= v946)
      {
        v1061 = vaddvq_s32(vmovl_u16(*v13));
        v1060 = 4;
      }

      else
      {
        v1060 = 0;
        v1061 = 0;
      }

      v1062 = v1061 * v935[v946];
      v1063 = v947 - 1;
      v1064 = v947 - 2;
      if (v947 - 2 >= v950)
      {
        v1064 = v936 - 2;
      }

      v1065 = v950 - v1064 + 1;
      if (v1065 >= 4)
      {
        if (v1065 < 0x10)
        {
          v1068 = 0;
LABEL_629:
          v1066 = v950 - (v1065 & 0xFFFFFFFFFFFFFFFCLL);
          v1067 = v1060 + (v1065 & 0xFFFFFFFFFFFFFFFCLL);
          v1081 = v1062;
          v1082 = &v13[v1068 + v1060];
          v1083 = v1068 - (v1065 & 0xFFFFFFFFFFFFFFFCLL);
          v1084 = (v933 + v934 * v929 + 2 * v950 - 2 * v1068 - 6);
          do
          {
            v1085 = *v1084--;
            v1086 = vrev64_s16(v1085);
            v1087 = *v1082++;
            v1081 = vmlal_u16(v1081, v1087, v1086);
            v1083 += 4;
          }

          while (v1083);
          v1062 = vaddvq_s32(v1081);
          if (v1065 == (v1065 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_636;
          }

          goto LABEL_634;
        }

        v1068 = v1065 & 0xFFFFFFFFFFFFFFF0;
        v1069 = 0uLL;
        v1070 = v1062;
        v1071 = (v933 + v934 * v929 + 2 * v950 - 14);
        v1072 = &v932[v1060];
        v1073 = v1065 & 0xFFFFFFFFFFFFFFF0;
        v1074 = 0uLL;
        v1075 = 0uLL;
        do
        {
          v1076 = vrev64q_s16(*v1071);
          v1077 = vextq_s8(v1076, v1076, 8uLL);
          v1078 = vrev64q_s16(v1071[-1]);
          v1079 = vextq_s8(v1078, v1078, 8uLL);
          v1080 = v1072[-1];
          v1069 = vmlal_high_u16(v1069, v1080, v1077);
          v1070 = vmlal_u16(v1070, *v1080.i8, *v1077.i8);
          v1075 = vmlal_high_u16(v1075, *v1072, v1079);
          v1074 = vmlal_u16(v1074, *v1072->i8, *v1079.i8);
          v1071 -= 2;
          v1072 += 2;
          v1073 -= 16;
        }

        while (v1073);
        v1062 = vaddvq_s32(vaddq_s32(vaddq_s32(v1074, v1070), vaddq_s32(v1075, v1069)));
        if (v1065 == v1068)
        {
          goto LABEL_636;
        }

        if ((v1065 & 0xC) != 0)
        {
          goto LABEL_629;
        }

        v1067 = v1060 | v1068;
        v1066 = v950 - v1068;
      }

      else
      {
        v1066 = v936 - 2;
        v1067 = v1060;
      }

LABEL_634:
      v1088 = v1066 + 1;
      v1089 = (v933 + v934 * v929 + 2 * v1066);
      v1090 = &v13[v1067];
      do
      {
        v1092 = *v1089--;
        v1091 = v1092;
        v1093 = *v1090++;
        v1062 += v1093 * v1091;
        --v1088;
      }

      while (v1088 >= v1063);
LABEL_636:
      *&v3991[2 * v947 + 4] = v1062 >> 15;
      if (v947 + 7 >= v946)
      {
        v1095 = vaddvq_s32(vmovl_u16(*v13)) + v13[4];
        v1094 = 5;
      }

      else
      {
        v1094 = 0;
        v1095 = 0;
      }

      v1096 = v1095 * v935[v946];
      if (v1063 >= v950)
      {
        v1097 = v936 - 2;
      }

      else
      {
        v1097 = v947 - 1;
      }

      v1098 = v950 - v1097 + 1;
      if (v1098 >= 4)
      {
        if (v1098 < 0x10)
        {
          v1101 = 0;
LABEL_650:
          v1099 = v950 - (v1098 & 0xFFFFFFFFFFFFFFFCLL);
          v1100 = v1094 + (v1098 & 0xFFFFFFFFFFFFFFFCLL);
          v1114 = v1096;
          v1115 = 2 * v1101;
          v1116 = &v13[v1101 + v1094];
          v1117 = v1101 - (v1098 & 0xFFFFFFFFFFFFFFFCLL);
          v1118 = (v933 + v934 * v929 + 2 * v950 - v1115 - 6);
          do
          {
            v1119 = *v1118--;
            v1120 = vrev64_s16(v1119);
            v1121 = *v1116++;
            v1114 = vmlal_u16(v1114, v1121, v1120);
            v1117 += 4;
          }

          while (v1117);
          v1096 = vaddvq_s32(v1114);
          if (v1098 == (v1098 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_550;
          }

          goto LABEL_655;
        }

        v1101 = v1098 & 0xFFFFFFFFFFFFFFF0;
        v1102 = 0uLL;
        v1103 = v1096;
        v1104 = (v933 + v934 * v929 + 2 * v950 - 14);
        v1105 = &v932[v1094];
        v1106 = v1098 & 0xFFFFFFFFFFFFFFF0;
        v1107 = 0uLL;
        v1108 = 0uLL;
        do
        {
          v1109 = vrev64q_s16(*v1104);
          v1110 = vextq_s8(v1109, v1109, 8uLL);
          v1111 = vrev64q_s16(v1104[-1]);
          v1112 = vextq_s8(v1111, v1111, 8uLL);
          v1113 = v1105[-1];
          v1102 = vmlal_high_u16(v1102, v1113, v1110);
          v1103 = vmlal_u16(v1103, *v1113.i8, *v1110.i8);
          v1108 = vmlal_high_u16(v1108, *v1105, v1112);
          v1107 = vmlal_u16(v1107, *v1105->i8, *v1112.i8);
          v1104 -= 2;
          v1105 += 2;
          v1106 -= 16;
        }

        while (v1106);
        v1096 = vaddvq_s32(vaddq_s32(vaddq_s32(v1107, v1103), vaddq_s32(v1108, v1102)));
        if (v1098 == v1101)
        {
          goto LABEL_550;
        }

        if ((v1098 & 0xC) != 0)
        {
          goto LABEL_650;
        }

        v1100 = v1094 | v1101;
        v1099 = v950 - v1101;
      }

      else
      {
        v1099 = v936 - 2;
        v1100 = v1094;
      }

LABEL_655:
      v1122 = (v933 + v934 * v929 + 2 * v1099);
      v1123 = &v13[v1100];
      v1124 = v1094 + v950 - v1100 - v1097 + 1;
      do
      {
        v1126 = *v1122--;
        v1125 = v1126;
        v1127 = *v1123++;
        v1096 += v1127 * v1125;
        --v1124;
      }

      while (v1124);
LABEL_550:
      *&v3991[2 * v947 + 6] = v1096 >> 15;
LABEL_551:
      memcpy(v935, v66, 2 * v936);
      v66 = v3991;
      ++v930;
      v928 = v3982;
      v929 += 2;
      if (v930 >= *(v3982 + 3))
      {
        goto LABEL_2573;
      }
    }

    v937 = (v936 - 8);
    if (v937 > 7)
    {
      v938 = 0;
      v956 = v931 + 2 * v937;
      v958 = v931 < v933 + v934 * 2 * v930 + 2 * v937 + 16 && v935 < v956;
      if (v13 >= v956 || v931 >= (v13 + 9))
      {
        v939 = 4;
        if (!v958)
        {
          v960 = v13;
          *v65.i8 = vld1_dup_s16(v960++);
          v961 = vld1_dup_s16(v960);
          v962 = vmovl_u16(*v65.i8);
          v963 = vmovl_u16(v961);
          v964 = (v13 + 2);
          *v65.i8 = vld1_dup_s16(v964);
          v965 = vmovl_u16(*v65.i8);
          v966 = (v13 + 3);
          *v65.i8 = vld1_dup_s16(v966);
          v967 = (v13 + 4);
          v968 = vld1_dup_s16(v967);
          v969 = vmovl_u16(*v65.i8);
          v970 = vmovl_u16(v968);
          v971 = (v13 + 5);
          *v65.i8 = vld1_dup_s16(v971);
          v972 = vmovl_u16(*v65.i8);
          v973 = (v13 + 6);
          *v65.i8 = vld1_dup_s16(v973);
          v974 = (v13 + 7);
          v975 = vld1_dup_s16(v974);
          v976 = vmovl_u16(*v65.i8);
          v977 = vmovl_u16(v975);
          v978 = (v13 + 8);
          *v65.i8 = vld1_dup_s16(v978);
          v979 = vmovl_u16(*v65.i8);
          v938 = v937 & 0xFFFFFFF8;
          v939 = v938 | 4;
          v980 = vuzp1q_s16(v65, v962);
          v981 = vmovn_s32(v962);
          v982 = vmovn_s32(v963);
          v983 = vuzp1q_s16(v980, v963);
          v984 = v933 + v934 * v929 + 8;
          v985 = vuzp1q_s16(v980, v965);
          v986 = vmovn_s32(v965);
          v987 = vuzp1q_s16(v980, v969);
          v988 = vmovn_s32(v969);
          v989 = vuzp1q_s16(v980, v970);
          v990 = vmovn_s32(v970);
          v991 = vuzp1q_s16(v980, v972);
          v992 = vmovn_s32(v972);
          v993 = vuzp1q_s16(v980, v976);
          v994 = vmovn_s32(v976);
          v995 = vuzp1q_s16(v980, v977);
          v996 = vmovn_s32(v977);
          v997 = vuzp1q_s16(v980, v979);
          v998 = vmovn_s32(v979);
          v999 = (v3991 + 8);
          v1000 = v938;
          do
          {
            *v999++ = vshrn_high_n_s32(vshrn_n_s32(vmlal_u16(vmlal_u16(vmlal_u16(vmlal_u16(vmlal_u16(vmlal_u16(vmlal_u16(vmlal_u16(vmull_u16(*(v984 - 6), v982), *(v984 - 8), v981), *(v984 - 4), v986), *(v984 - 2), v988), *v984, v990), *(v984 + 2), v992), *(v984 + 4), v994), *(v984 + 6), v996), *(v984 + 8), v998), 0xFuLL), vmlal_high_u16(vmlal_high_u16(vmlal_high_u16(vmlal_high_u16(vmlal_high_u16(vmlal_high_u16(vmlal_high_u16(vmlal_high_u16(vmull_high_u16(*(v984 - 6), v983), *(v984 - 8), v980), *(v984 - 4), v985), *(v984 - 2), v987), *v984, v989), *(v984 + 2), v991), *(v984 + 4), v993), *(v984 + 6), v995), *(v984 + 8), v997), 0xFuLL);
            v984 += 16;
            v1000 -= 8;
          }

          while (v1000);
          if (v938 == v937)
          {
            goto LABEL_558;
          }
        }

        goto LABEL_556;
      }
    }

    else
    {
      v938 = 0;
    }

    v939 = 4;
LABEL_556:
    v940 = &v66[v939];
    v941 = (v933 + v934 * v929 + 2 * v938 + 16);
    v942 = v937 - v938;
    do
    {
      v943 = v941[-1];
      v944 = v941->u16[0];
      v941 = (v941 + 2);
      *v940++ = (vaddvq_s32(vmlal_high_u16(vmull_u16(*v943.i8, *v13), v943, *v13)) + v944 * v13[8]) >> 15;
      --v942;
    }

    while (v942);
    goto LABEL_558;
  }

LABEL_2573:
  free(v66);

  free(v13);
}