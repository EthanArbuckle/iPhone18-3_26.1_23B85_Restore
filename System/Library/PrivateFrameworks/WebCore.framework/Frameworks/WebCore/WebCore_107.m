void *interleave_hadamard(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v8 = v48 - v7;
  if (!v9)
  {
    if (v5 < 1 || v4 < 1)
    {
      return memcpy(v3, v8, 4 * v6);
    }

    v28 = 0;
    v29 = v5;
    v31 = v5 > 7 && v4 == 1;
    v32 = (v3 + 16);
    v33 = 4 * v5;
    v34 = v8 + 16;
    v35 = 4 * v4;
    v36 = v3;
    for (i = v48 - v7; ; i += 4)
    {
      if (v31)
      {
        v38 = v29 & 0x7FFFFFF8;
        v39 = v34;
        v40 = v32;
        do
        {
          v41 = *v40;
          *(v39 - 1) = *(v40 - 1);
          *v39 = v41;
          v40 += 2;
          v39 += 32;
          v38 -= 8;
        }

        while (v38);
        v42 = v29 & 0x7FFFFFF8;
        if (v42 == v29)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v42 = 0;
      }

      v43 = v29 - v42;
      v44 = &i[v35 * v42];
      v45 = &v36[4 * v42];
      do
      {
        v46 = *v45;
        v45 += 4;
        *v44 = v46;
        v44 += v35;
        --v43;
      }

      while (v43);
LABEL_30:
      ++v28;
      v32 = (v32 + v33);
      v34 += 4;
      v36 += v33;
      if (v28 == v4)
      {
        return memcpy(v3, v8, 4 * v6);
      }
    }
  }

  if (v5 >= 1 && v4 >= 1)
  {
    v10 = 0;
    v11 = &ordery_table + 4 * v4 - 8;
    v12 = v4;
    v14 = v5 > 7 && v4 == 1;
    v15 = v8 + 16;
    v16 = 4 * v4;
    v17 = v48 - v7;
    do
    {
      v18 = (*&v11[4 * v10] * v5);
      if (v14)
      {
        v19 = &v3[4 * v18 + 16];
        v20 = v5 & 0x7FFFFFF8;
        v21 = v15;
        do
        {
          v22 = *v19;
          *(v21 - 1) = *(v19 - 1);
          *v21 = v22;
          v19 += 32;
          v21 += 32;
          v20 -= 8;
        }

        while (v20);
        v23 = v5 & 0x7FFFFFF8;
        if (v23 == v5)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v23 = 0;
      }

      v24 = v5 - v23;
      v25 = &v17[v16 * v23];
      v26 = &v3[4 * v23 + 4 * v18];
      do
      {
        v27 = *v26;
        v26 += 4;
        *v25 = v27;
        v25 += v16;
        --v24;
      }

      while (v24);
LABEL_11:
      ++v10;
      v15 += 4;
      v17 += 4;
    }

    while (v10 != v12);
  }

  return memcpy(v3, v8, 4 * v6);
}

unint64_t compute_theta(unint64_t result, uint64_t a2, float32x4_t *a3, float32x4_t *a4, int a5, int *a6, char a7, int a8, float32x4_t a9, int a10, int a11, _DWORD *a12)
{
  v12 = a12;
  v13 = *result;
  v14 = *(result + 8);
  v15 = *(result + 16);
  v16 = *(result + 32);
  v17 = *(result + 48);
  v18 = *(*(v14 + 64) + 2 * v15) + 8 * a10;
  v19 = a11 != 0;
  v20 = a5 == 2;
  v21 = !v20 || !v19;
  if (v20 && v19)
  {
    v22 = -16;
  }

  else
  {
    v22 = -4;
  }

  v23 = v22 + (v18 >> 1);
  v24 = *a6;
  if (v21)
  {
    v25 = -1;
  }

  else
  {
    v25 = -2;
  }

  v26 = (v24 + v23 * (v25 + 2 * a5)) / (v25 + 2 * a5);
  v27 = v24 - v18 - 32;
  if (v27 >= v26)
  {
    v27 = v26;
  }

  if (v27 < 4)
  {
    v28 = 1;
    if (v13)
    {
      goto LABEL_11;
    }

LABEL_24:
    v34 = *(v16 + 24);
    v35 = *(v16 + 32);
    v36 = __clz(v35);
    v37 = ((__PAIR64__(8 * (v36 + v34), ec_tell_frac_correction[(v35 >> (16 - v36) >> 12) - 8]) - __PAIR64__(v35 >> (16 - v36) >> 12, v35 >> (16 - v36))) >> 32) - 248;
    if (v28 == 1)
    {
      if (a11)
      {
        v38 = 0;
        goto LABEL_141;
      }

      goto LABEL_158;
    }

    if (a5 > 2 && a11)
    {
      v40 = v28 / 2;
      v41 = v28 / 2 + 1;
      v42 = 3 * v41;
      v43 = 3 * v41 + v28 / 2;
      v44 = v35 / v43;
      *(v16 + 40) = v35 / v43;
      v45 = *(v16 + 36);
      v46 = v45 / (v35 / v43) + 1;
      v47 = v43 >= v46;
      v48 = v43 - v46;
      if (!v47)
      {
        v48 = 0;
      }

      result = (1431655766 * v48) >> 63;
      v49 = v48 - 2 * v41;
      if (v48 >= v42)
      {
        v50 = v49;
      }

      else
      {
        v50 = v48 / 3;
      }

      v51 = v42 + ~v40 + v50;
      v52 = v42 - v40;
      v53 = v50 <= v40;
      if (v50 <= v40)
      {
        v54 = 3 * v50;
      }

      else
      {
        v54 = v51;
      }

      v55 = v52 + v50;
      if (v53)
      {
        v55 = 3 * v50 + 3;
      }

      v56 = (v43 - v55) * v44;
      v57 = v45 - v56;
      v58 = (v55 - v54) * v44;
      v59 = v35 - v56;
      if (!v54)
      {
        v58 = v59;
      }

      *(v16 + 32) = v58;
      *(v16 + 36) = v57;
      if (v58 <= 0x800000)
      {
        v60 = *(v16 + 8);
        v61 = *(v16 + 44);
        v62 = v34 + 8;
        v63 = *(v16 + 28);
        do
        {
          *(v16 + 24) = v62;
          *(v16 + 32) = v58 << 8;
          if (v63 < v60)
          {
            v64 = *v16;
            *(v16 + 28) = v63 + 1;
            v65 = *(v64 + v63++);
          }

          else
          {
            v65 = 0;
          }

          v57 = (((v57 & 0x7FFFFF) << 8) | ((v65 | (v61 << 8)) >> 1)) ^ 0xFF;
          *(v16 + 44) = v65;
          *(v16 + 36) = v57;
          v62 += 8;
          v61 = v65;
          v53 = v58 > 0x8000;
          v58 <<= 8;
        }

        while (!v53);
      }
    }

    else if (a8 >= 2 || a11)
    {
      v179 = a2;
      v180 = a5;
      v181 = a7;
      v182 = a6;
      result = ec_dec_uint(*(result + 32), v28 + 1);
      a6 = v182;
      a7 = v181;
      a2 = v179;
      LOWORD(a5) = v180;
      v50 = result;
    }

    else
    {
      v86 = (v28 >> 1) + 1;
      v87 = v86 * v86;
      v88 = v35 / (v86 * v86);
      *(v16 + 40) = v88;
      v89 = *(v16 + 36);
      v90 = v89 / v88 + 1;
      v47 = v86 * v86 >= v90;
      v91 = v86 * v86 - v90;
      if (!v47)
      {
        v91 = 0;
      }

      if (v91 >= (v86 * (v28 >> 1)) >> 1)
      {
        v223 = a2;
        v224 = 0;
        v225 = v28 + 1;
        v226 = (8 * (v87 + ~v91)) | 1;
        v227 = (__clz(v226) >> 1) ^ 0xF;
        v228 = 1 << v227;
        do
        {
          LODWORD(result) = (v228 + 2 * v224) << v227;
          v229 = result > v226;
          if (result <= v226)
          {
            result = result;
          }

          else
          {
            result = 0;
          }

          if (v229)
          {
            v230 = 0;
          }

          else
          {
            v230 = v228;
          }

          v226 -= result;
          v224 += v230;
          v228 >>= 1;
          --v227;
        }

        while (v227 != -1);
        v50 = (2 * v225 - v224) >> 1;
        v97 = v225 - v50;
        v98 = v87 - ((v97 * (v28 - v50 + 2)) >> 1);
        a2 = v223;
      }

      else
      {
        v92 = 0;
        v93 = (8 * v91) | 1;
        v94 = (__clz(v93) >> 1) ^ 0xF;
        v95 = 1 << v94;
        do
        {
          v96 = (v95 + 2 * v92) << v94;
          if (v96 <= v93)
          {
            result = v95;
          }

          else
          {
            v96 = 0;
            result = 0;
          }

          v93 -= v96;
          v92 += result;
          v95 >>= 1;
          --v94;
        }

        while (v94 != -1);
        v50 = (v92 - 1) >> 1;
        v97 = v50 + 1;
        v98 = ((v50 + 1) * v50) >> 1;
      }

      v231 = (v87 - v97 - v98) * v88;
      v232 = v89 - v231;
      v233 = v97 * v88;
      v234 = v35 - v231;
      if (!v98)
      {
        v233 = v234;
      }

      *(v16 + 32) = v233;
      *(v16 + 36) = v232;
      if (v233 <= 0x800000)
      {
        v235 = *(v16 + 8);
        v236 = *(v16 + 44);
        v237 = v34 + 8;
        v238 = *(v16 + 28);
        do
        {
          *(v16 + 24) = v237;
          *(v16 + 32) = v233 << 8;
          if (v238 < v235)
          {
            v239 = *v16;
            *(v16 + 28) = v238 + 1;
            v240 = *(v239 + v238++);
          }

          else
          {
            v240 = 0;
          }

          v232 = (((v232 & 0x7FFFFF) << 8) | ((v240 | (v236 << 8)) >> 1)) ^ 0xFF;
          *(v16 + 44) = v240;
          *(v16 + 36) = v232;
          v237 += 8;
          v236 = v240;
          v53 = v233 > 0x8000;
          v233 <<= 8;
        }

        while (!v53);
      }
    }

    goto LABEL_208;
  }

  if (v27 >= 0x40)
  {
    v27 = 64;
  }

  v32 = ((compute_qn_exp2_table8[v27 & 7] >> (14 - (v27 >> 3))) + 1) & 0xFFFFFFFE;
  if (v15 < *(result + 20) || a11 == 0)
  {
    v28 = v32;
  }

  else
  {
    v28 = 1;
  }

  if (!v13)
  {
    goto LABEL_24;
  }

LABEL_11:
  if (!a11)
  {
    if (a5 < 1)
    {
      goto LABEL_30;
    }

    if (a5 >= 8)
    {
      v39 = a5 & 0x7FFFFFF8;
      v99 = a3 + 1;
      a9.i64[0] = 0;
      v100 = v39;
      do
      {
        v101 = vmulq_f32(v99[-1], v99[-1]);
        v102 = vmulq_f32(*v99, *v99);
        a9.f32[0] = (((((((a9.f32[0] + v101.f32[0]) + v101.f32[1]) + v101.f32[2]) + v101.f32[3]) + v102.f32[0]) + v102.f32[1]) + v102.f32[2]) + v102.f32[3];
        v99 += 2;
        v100 -= 8;
      }

      while (v100);
      if (v39 == a5)
      {
LABEL_74:
        if (a5 >= 8)
        {
          v106 = a5 & 0x7FFFFFF8;
          v108 = a4 + 1;
          v107 = 0.0;
          v109 = v106;
          do
          {
            v110 = vmulq_f32(v108[-1], v108[-1]);
            v111 = vmulq_f32(*v108, *v108);
            v107 = (((((((v107 + v110.f32[0]) + v110.f32[1]) + v110.f32[2]) + v110.f32[3]) + v111.f32[0]) + v111.f32[1]) + v111.f32[2]) + v111.f32[3];
            v108 += 2;
            v109 -= 8;
          }

          while (v109);
          if (v106 == a5)
          {
            goto LABEL_81;
          }
        }

        else
        {
          v106 = 0;
          v107 = 0.0;
        }

        v112 = a5 - v106;
        v113 = &a4->f32[v106];
        do
        {
          v114 = *v113++;
          v107 = v107 + (v114 * v114);
          --v112;
        }

        while (v112);
LABEL_81:
        v31 = a9.f32[0] + 1.0e-15;
        v30 = v107 + 1.0e-15;
        goto LABEL_82;
      }
    }

    else
    {
      v39 = 0;
      a9.i64[0] = 0;
    }

    v103 = a5 - v39;
    v104 = &a3->f32[v39];
    do
    {
      v105 = *v104++;
      a9.f32[0] = a9.f32[0] + (v105 * v105);
      --v103;
    }

    while (v103);
    goto LABEL_74;
  }

  if (a5 < 1)
  {
LABEL_30:
    v31 = 1.0e-15;
    v30 = 1.0e-15;
    goto LABEL_82;
  }

  if (a5 < 8)
  {
    v29 = 0;
    v30 = 1.0e-15;
    v31 = 1.0e-15;
LABEL_55:
    v79 = a5 - v29;
    v80 = v29;
    v81 = &a4->f32[v29];
    v82 = &a3->f32[v80];
    do
    {
      v83 = *v82++;
      v84 = v83;
      v85 = *v81++;
      v31 = v31 + ((v84 + v85) * (v84 + v85));
      v30 = v30 + ((v84 - v85) * (v84 - v85));
      --v79;
    }

    while (v79);
    goto LABEL_82;
  }

  v29 = a5 & 0x7FFFFFF8;
  v66 = a3 + 1;
  v67 = a4 + 1;
  v30 = 1.0e-15;
  v68 = v29;
  v31 = 1.0e-15;
  do
  {
    v69 = v66[-1];
    v70 = v67[-1];
    v71 = vaddq_f32(v69, v70);
    v72 = vaddq_f32(*v66, *v67);
    v73 = vsubq_f32(v69, v70);
    v74 = vsubq_f32(*v66, *v67);
    v75 = vmulq_f32(v71, v71);
    v76 = vmulq_f32(v72, v72);
    v77 = vmulq_f32(v73, v73);
    v78 = vmulq_f32(v74, v74);
    v30 = (((((((v30 + v77.f32[0]) + v77.f32[1]) + v77.f32[2]) + v77.f32[3]) + v78.f32[0]) + v78.f32[1]) + v78.f32[2]) + v78.f32[3];
    v31 = (((((((v31 + v75.f32[0]) + v75.f32[1]) + v75.f32[2]) + v75.f32[3]) + v76.f32[0]) + v76.f32[1]) + v76.f32[2]) + v76.f32[3];
    v66 += 2;
    v67 += 2;
    v68 -= 8;
  }

  while (v68);
  if (v29 != a5)
  {
    goto LABEL_55;
  }

LABEL_82:
  v115 = sqrtf(v31);
  v116 = sqrtf(v30);
  v117 = v115 * v115;
  v118 = v116 * v116;
  v119 = 0.0;
  if (((v115 * v115) + (v116 * v116)) >= 1.0e-18)
  {
    if (v117 >= v118)
    {
      v120 = v115 * v116;
      v121 = (v120 * (v117 + (v118 * 0.43158))) / ((v117 + (v118 * 0.67848)) * (v117 + (v118 * 0.085955)));
      v122 = 1.5708;
      v123 = v121 + 1.5708;
      if (v120 < 0.0)
      {
        v122 = -1.5708;
      }

      v119 = v123 - v122;
    }

    else
    {
      v119 = 1.5708 - (((v116 * v115) * (v118 + (v117 * 0.43158))) / ((v118 + (v117 * 0.67848)) * (v118 + (v117 * 0.085955))));
    }
  }

  v124 = vcvtms_s32_f32((v119 * 10430.0) + 0.5);
  v34 = *(v16 + 24);
  v35 = *(v16 + 32);
  v125 = __clz(v35);
  v37 = ((__PAIR64__(8 * (v125 + v34), ec_tell_frac_correction[(v35 >> (16 - v125) >> 12) - 8]) - __PAIR64__(v35 >> (16 - v125) >> 12, v35 >> (16 - v125))) >> 32) - 248;
  if (v28 != 1)
  {
    v263 = a2;
    if (a11)
    {
      v259 = *(result + 8);
      v260 = a6;
      v261 = a12;
      v262 = a7;
      v128 = *(result + 64);
      if (v124 > 0x2000)
      {
        v129 = 0x7FFF;
      }

      else
      {
        v129 = -32767;
      }

      v130 = ((v129 / v28 + v28 * v124) >> 14) & ~((v129 / v28 + v28 * v124) >> 31);
      if (v28 <= v130)
      {
        v130 = v28 - 1;
      }

      v131 = v130 + (v128 >= 0);
      if (v128)
      {
        v50 = v131;
      }

      else
      {
        v50 = (v28 * v124 + 0x2000) >> 14;
      }

      v132 = *(result + 48);
      v133 = a4;
      v134 = a3;
      v135 = a5;
      if (a5 > 2)
      {
        v136 = v28 / 2;
        v137 = ((v28 + (v28 >> 31)) & 0xFFFFFFFE) + v28 / 2 + 3;
        if (v50 <= v28 / 2)
        {
          v138 = 3 * v50;
        }

        else
        {
          v138 = v137 + ~(v28 / 2) + v50;
        }

        if (v50 <= v136)
        {
          v139 = 3 * v50 + 3;
        }

        else
        {
          v139 = ((v28 + (v28 >> 31)) & 0xFFFFFFFE) + 3 + v50;
        }

        result = ec_encode(v16, v138, v139, v137 + v136);
        v141 = v50 << 14;
        v124 = (v50 << 14) / v28;
        goto LABEL_125;
      }

LABEL_124:
      result = ec_enc_uint(v16, v50, v28 + 1);
      v141 = v50 << 14;
      v124 = (v50 << 14) / v28;
      if (!a11)
      {
        LOWORD(a5) = v135;
        goto LABEL_150;
      }

LABEL_125:
      LOWORD(a5) = v135;
      if (v28 > v141)
      {
        if (v135 < 1)
        {
          v124 = 0;
          a7 = v262;
          a6 = v260;
          v12 = v261;
          a2 = v263;
LABEL_159:
          v193 = *(v16 + 32);
          v194 = __clz(v193);
          v195 = ((__PAIR64__(8 * (v194 + *(v16 + 24)) - v37, ec_tell_frac_correction[(v193 >> (16 - v194) >> 12) - 8]) - __PAIR64__(v193 >> (16 - v194) >> 12, v193 >> (16 - v194))) >> 32) - 248;
          *a6 -= v195;
          goto LABEL_211;
        }

        v153 = v134;
        a6 = v260;
        v154 = *(v132 + 4 * v15);
        v155 = *(v132 + 4 * (*(v259 + 8) + v15));
        v156 = sqrtf(((v154 * v154) + 1.0e-15) + (v155 * v155)) + 1.0e-15;
        *v140.i32 = v154 / v156;
        v157 = v155 / v156;
        a7 = v262;
        v12 = v261;
        if (v135 >= 8)
        {
          v158 = v135 & 0x7FFFFFF8;
          v183 = vdupq_lane_s32(v140, 0);
          v184 = v153 + 1;
          v185 = v133 + 1;
          v186 = v158;
          do
          {
            v187 = vmlaq_f32(vmulq_n_f32(*v185, v157), *v184, v183);
            v184[-1] = vmlaq_f32(vmulq_n_f32(v185[-1], v157), v184[-1], v183);
            *v184 = v187;
            v184 += 2;
            v185 += 2;
            v186 -= 8;
          }

          while (v186);
          a2 = v263;
          if (v158 == v135)
          {
            goto LABEL_158;
          }
        }

        else
        {
          v158 = 0;
          a2 = v263;
        }

        v188 = v135 - v158;
        v189 = v158;
        v190 = &v133->f32[v189];
        v191 = &v153->f32[v189];
        do
        {
          v192 = *v190++;
          *v191 = (v157 * v192) + (*v140.i32 * *v191);
          ++v191;
          --v188;
        }

        while (v188);
LABEL_158:
        v124 = 0;
        goto LABEL_159;
      }

      if (v135 >= 1)
      {
        if (v135 >= 4)
        {
          v164 = v135 & 0x7FFFFFFC;
          v196 = vdupq_n_s32(0x3F3504F3u);
          v197 = v164;
          v198 = v133;
          v199 = v134;
          do
          {
            v200 = vmulq_f32(*v199, v196);
            v201 = vmulq_f32(*v198, v196);
            *v199++ = vaddq_f32(v200, v201);
            *v198++ = vsubq_f32(v201, v200);
            v197 -= 4;
          }

          while (v197);
          a2 = v263;
          if (v164 == v135)
          {
            goto LABEL_165;
          }
        }

        else
        {
          v164 = 0;
          a2 = v263;
        }

        v202 = v135 - v164;
        v203 = v164;
        v204 = &v133->f32[v164];
        v205 = &v134->f32[v203];
        do
        {
          v206 = *v205 * 0.70711;
          v207 = *v204 * 0.70711;
          *v205++ = v206 + v207;
          *v204++ = v207 - v206;
          --v202;
        }

        while (v202);
LABEL_165:
        a7 = v262;
        a6 = v260;
        v12 = v261;
        goto LABEL_209;
      }

LABEL_150:
      a7 = v262;
      a6 = v260;
      v12 = v261;
      a2 = v263;
      goto LABEL_209;
    }

    v142 = v28 * v124 + 0x2000;
    v143 = v142 >> 14;
    if (*(result + 72))
    {
      v144 = v143 >= 1 && v143 < v28;
      v50 = v142 >> 14;
      if (v144)
      {
        v145.i32[0] = ((v142 & 0xFFFFC000) / v28) << 16;
        v145.i32[1] = 0x40000000 - v145.i32[0];
        v146 = vshr_n_s32(vmla_s32(0x800000008000, vshl_s32(v145, 0xFFFFFFF3FFFFFFF0), vshl_s32(v145, 0xFFFFFFF0FFFFFFF3)), 0x10uLL);
        v147 = vmul_s32(v146, (*&vsra_n_u32(vdup_n_s32(0x2055u), vmla_s32(0x400000004000, v146, vdup_n_s32(0x7FFFFD8Eu)), 0xFuLL) & 0xFFFCFFFFFFFCFFFFLL));
        v148 = veor_s8(vshr_n_s32(vshl_n_s32(vsub_s32(vshr_n_u32(vmla_s32(0x400000004000, vshr_n_s32(vadd_s32(vadd_s32(v147, v147), vdup_n_s32(0xE21D8000)), 0x10uLL), v146), 0xFuLL), v146), 0x10uLL), 0x10uLL), 0x7F0000007FLL);
        v149 = vclz_s32(v148);
        v150 = vshr_n_s32(vshl_n_s32(vshl_u32(v148, vadd_s32(v149, 0x1000000010)), 0x10uLL), 0x10uLL);
        v151 = vshr_n_u32(vmla_s32(0x400000004000, (*&vsra_n_u32(vdup_n_s32(0x1EFCu), vmla_s32(0x400000004000, v150, vdup_n_s32(0x7FFFF5DBu)), 0xFuLL) & 0xFFFCFFFFFFFCFFFFLL), v150), 0xFuLL);
        v152 = ((v151.i16[2] - v151.i16[0] + (vsub_s32(v149, vdup_lane_s32(v149, 1)).u16[0] << 11)) * ((a5 << 7) - 128) + 0x4000) >> 15;
        v50 = v28;
        if (v152 <= v24)
        {
          if (v152 >= -v24)
          {
            v50 = v143;
          }

          else
          {
            v50 = 0;
          }
        }
      }

      if (a8 > 1)
      {
        goto LABEL_123;
      }
    }

    else
    {
      v50 = v142 >> 14;
      if (a8 > 1)
      {
LABEL_123:
        v259 = *(result + 8);
        v260 = a6;
        v132 = *(result + 48);
        v261 = a12;
        v262 = a7;
        v133 = a4;
        v134 = a3;
        v135 = a5;
        goto LABEL_124;
      }
    }

    v241 = ((v28 >> 1) + 1) * ((v28 >> 1) + 1);
    if (v50 <= v28 >> 1)
    {
      v242 = v50 + 1;
    }

    else
    {
      v242 = v28 - v50 + 1;
    }

    if (v50 <= v28 >> 1)
    {
      v243 = ((v50 + 1) * v50) >> 1;
    }

    else
    {
      v243 = v241 - (((v28 - v50 + 1) * (v28 - v50 + 2)) >> 1);
    }

    v244 = a5;
    v245 = a7;
    v246 = a6;
    result = ec_encode(v16, v243, v243 + v242, v241);
    a6 = v246;
    a7 = v245;
    LOWORD(a5) = v244;
    a2 = v263;
LABEL_208:
    v124 = (v50 << 14) / v28;
    goto LABEL_209;
  }

  if (a11)
  {
    if (v124 <= 0x2000)
    {
      v38 = 0;
    }

    else
    {
      v126 = *(result + 68);
      v38 = v126 == 0;
      if (a5 >= 1 && !v126)
      {
        if (a5 >= 8)
        {
          v127 = a5 & 0x7FFFFFF8;
          v218 = a4 + 1;
          v219 = v127;
          do
          {
            a9 = vnegq_f32(v218[-1]);
            v220 = vnegq_f32(*v218);
            v218[-1] = a9;
            *v218 = v220;
            v218 += 2;
            v219 -= 8;
          }

          while (v219);
          if (v127 == a5)
          {
            goto LABEL_182;
          }
        }

        else
        {
          v127 = 0;
        }

        v221 = a5 - v127;
        v222 = &a4->f32[v127];
        do
        {
          *v222 = -*v222;
          ++v222;
          --v221;
        }

        while (v221);
LABEL_182:
        v38 = 1;
LABEL_131:
        v159 = *(v17 + 4 * v15);
        v160 = *(v17 + 4 * (*(v14 + 8) + v15));
        v161 = sqrtf(((v159 * v159) + 1.0e-15) + (v160 * v160)) + 1.0e-15;
        a9.f32[0] = v159 / v161;
        v162 = v160 / v161;
        if (a5 >= 8)
        {
          v163 = a5 & 0x7FFFFFF8;
          v165 = vdupq_lane_s32(*a9.f32, 0);
          v166 = a3 + 1;
          v167 = a4 + 1;
          v168 = v163;
          do
          {
            v169 = vmlaq_f32(vmulq_n_f32(*v167, v162), *v166, v165);
            v166[-1] = vmlaq_f32(vmulq_n_f32(v167[-1], v162), v166[-1], v165);
            *v166 = v169;
            v166 += 2;
            v167 += 2;
            v168 -= 8;
          }

          while (v168);
          if (v163 == a5)
          {
            goto LABEL_141;
          }
        }

        else
        {
          v163 = 0;
        }

        v170 = a5 - v163;
        v171 = v163;
        v172 = &a4->f32[v163];
        v173 = &a3->f32[v171];
        do
        {
          v174 = *v172++;
          *v173 = (v162 * v174) + (a9.f32[0] * *v173);
          ++v173;
          --v170;
        }

        while (v170);
LABEL_141:
        if (v24 < 17 || *(result + 40) < 17)
        {
          v38 = 0;
        }

        else if (v13)
        {
          v175 = result;
          v176 = a2;
          v177 = a7;
          v178 = a6;
          ec_enc_bit_logp(v16, v38, 2);
          a6 = v178;
          a7 = v177;
          a2 = v176;
          result = v175;
        }

        else
        {
          v208 = *(v16 + 36);
          v209 = v35 >> 2;
          v210 = v208;
          if (v208 >= v35 >> 2)
          {
            *(v16 + 36) = v208 - (v35 >> 2);
            v210 = v208 - v209;
          }

          v211 = v35 - v209;
          if (v208 < v209)
          {
            v211 = v209;
          }

          *(v16 + 32) = v211;
          if (v211 <= 0x800000)
          {
            v212 = *(v16 + 8);
            v213 = *(v16 + 44);
            v214 = v34 + 8;
            v215 = *(v16 + 28);
            do
            {
              *(v16 + 24) = v214;
              *(v16 + 32) = v211 << 8;
              if (v215 < v212)
              {
                v216 = *v16;
                *(v16 + 28) = v215 + 1;
                v217 = *(v216 + v215++);
              }

              else
              {
                v217 = 0;
              }

              v210 = (((v210 & 0x7FFFFF) << 8) | ((v217 | (v213 << 8)) >> 1)) ^ 0xFF;
              *(v16 + 44) = v217;
              *(v16 + 36) = v210;
              v214 += 8;
              v213 = v217;
              v53 = v211 > 0x8000;
              v211 <<= 8;
            }

            while (!v53);
          }

          v38 = v208 < v209;
        }

        if (*(result + 68))
        {
          v124 = 0;
        }

        else
        {
          v124 = v38;
        }

        goto LABEL_159;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_141;
    }

    goto LABEL_131;
  }

LABEL_209:
  v247 = *(v16 + 32);
  v248 = __clz(v247);
  v195 = ((__PAIR64__(8 * (v248 + *(v16 + 24)) - v37, ec_tell_frac_correction[(v247 >> (16 - v248) >> 12) - 8]) - __PAIR64__(v247 >> (16 - v248) >> 12, v247 >> (16 - v248))) >> 32) - 248;
  *a6 -= v195;
  if (v124 == 0x4000)
  {
    v249 = 0;
    *v12 &= ~(-1 << a7) << a7;
    v250 = 0x7FFF00000000;
    v251 = 0x4000;
    goto LABEL_214;
  }

  if (v124)
  {
    v249 = 0;
    v252.i32[0] = v124 << 16;
    v252.i32[1] = 0x40000000 - (v124 << 16);
    v253 = vshr_n_s32(vmla_s32(0x800000008000, vshl_s32(v252, 0xFFFFFFF0FFFFFFF3), vshl_s32(v252, 0xFFFFFFF3FFFFFFF0)), 0x10uLL);
    v254 = vmul_s32(v253, (*&vsra_n_u32(vdup_n_s32(0x2055u), vmla_s32(0x400000004000, v253, vdup_n_s32(0x7FFFFD8Eu)), 0xFuLL) & 0xFFFCFFFFFFFCFFFFLL));
    v250 = veor_s8(vshr_n_s32(vshl_n_s32(vsub_s32(vshr_n_u32(vmla_s32(0x400000004000, vshr_n_s32(vadd_s32(vadd_s32(v254, v254), vdup_n_s32(0xE21D8000)), 0x10uLL), v253), 0xFuLL), v253), 0x10uLL), 0x10uLL), 0x7F0000007FLL);
    v255 = vclz_s32(v250);
    v256 = vsub_s32(v255, vdup_lane_s32(v255, 1)).u16[0];
    v257 = vshr_n_s32(vshl_n_s32(vshl_u32(v250, vadd_s32(v255, 0x1000000010)), 0x10uLL), 0x10uLL);
    v258 = vshr_n_u32(vmla_s32(0x400000004000, (*&vsra_n_u32(vdup_n_s32(0x1EFCu), vmla_s32(0x400000004000, v257, vdup_n_s32(0x7FFFF5DBu)), 0xFuLL) & 0xFFFCFFFFFFFCFFFFLL), v257), 0xFuLL);
    v251 = ((v258.i16[2] - v258.i16[0] + (v256 << 11)) * ((a5 << 7) - 128) + 0x4000) >> 15;
    goto LABEL_214;
  }

LABEL_211:
  v249 = v124;
  *v12 &= ~(-1 << a7);
  v250 = 0x7FFFLL;
  v251 = -16384;
  v124 = 0;
LABEL_214:
  *a2 = v249;
  *(a2 + 4) = v250;
  *(a2 + 12) = v251;
  *(a2 + 16) = v124;
  *(a2 + 20) = v195;
  return result;
}

float silk_burg_modified_FLP(float32x4_t *a1, uint64_t a2, int a3, int a4, unint64_t a5, float a6)
{
  v324 = a2;
  v345 = *MEMORY[0x277D85DE8];
  v6 = (a4 * a3);
  if (v6 < 4)
  {
    LODWORD(v11) = 0;
    v10 = 0.0;
    v314 = a5;
    if (v6 <= 0)
    {
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  v7 = (v6 - 3);
  v8 = 4;
  if (v7 > 4)
  {
    v8 = (v6 - 3);
  }

  if (v7 <= 0xC)
  {
    v9 = 0;
    v10 = 0.0;
LABEL_11:
    v26 = (v324 + 4 * v9 + 8);
    do
    {
      v27 = *(v26 - 1) * *(v26 - 1) + *(v26 - 2) * *(v26 - 2);
      v28 = *v26;
      v29 = v26[1];
      v26 += 4;
      v10 = v10 + v27 + v28 * v28 + v29 * v29;
      v9 += 4;
    }

    while (v9 < v7);
    goto LABEL_13;
  }

  v12 = ((v8 - 1) >> 2) + 1;
  v9 = 4 * (v12 & 0x7FFFFFFFFFFFFFFCLL);
  v13 = (v324 + 32);
  v10 = 0.0;
  v14 = v12 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v15 = v13 - 8;
    v346 = vld4_f32(v15);
    v349 = vld4_f32(v13);
    v16 = vcvtq_f64_f32(v346.val[0]);
    v17 = vcvtq_f64_f32(v349.val[0]);
    v18 = vcvtq_f64_f32(v346.val[1]);
    v19 = vcvtq_f64_f32(v349.val[1]);
    v20 = vmlaq_f64(vmulq_f64(v18, v18), v16, v16);
    v21 = vmlaq_f64(vmulq_f64(v19, v19), v17, v17);
    v22 = vcvtq_f64_f32(v346.val[2]);
    v23 = vcvtq_f64_f32(v349.val[2]);
    *v346.val[0].f32 = vcvtq_f64_f32(v346.val[3]);
    *v346.val[1].f32 = vcvtq_f64_f32(v349.val[3]);
    v24 = vmlaq_f64(vmlaq_f64(v20, v22, v22), *v346.val[0].f32, *v346.val[0].f32);
    v25 = vmlaq_f64(vmlaq_f64(v21, v23, v23), *v346.val[1].f32, *v346.val[1].f32);
    v10 = v10 + v24.f64[0] + v24.f64[1] + v25.f64[0] + v25.f64[1];
    v13 += 16;
    v14 -= 4;
  }

  while (v14);
  if (v12 != (v12 & 0x7FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_11;
  }

LABEL_13:
  LODWORD(v11) = v6 & 0x7FFFFFFC;
  v314 = a5;
  if ((v6 & 0x7FFFFFFC) >= v6)
  {
    goto LABEL_21;
  }

LABEL_14:
  v30 = v11;
  v31 = v6 - v11;
  if (v31 > 7)
  {
    v11 = (v31 & 0xFFFFFFFFFFFFFFF8) + v11;
    v32 = (v324 + 4 * v30 + 16);
    v33 = v31 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v34 = *v32[-2].f32;
      v35 = vcvtq_f64_f32(*v34.f32);
      v36 = vcvt_hight_f64_f32(v34);
      v37 = vcvtq_f64_f32(*v32);
      v38 = vcvt_hight_f64_f32(*v32->f32);
      v39 = vmulq_f64(v36, v36);
      v40 = vmulq_f64(v35, v35);
      v41 = vmulq_f64(v38, v38);
      v42 = vmulq_f64(v37, v37);
      v10 = v10 + v40.f64[0] + v40.f64[1] + v39.f64[0] + v39.f64[1] + v42.f64[0] + v42.f64[1] + v41.f64[0] + v41.f64[1];
      v32 += 4;
      v33 -= 8;
    }

    while (v33);
    if (v31 == (v31 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_21;
    }
  }

  else
  {
    v11 = v11;
  }

  v43 = v6 - v11;
  v44 = (v324 + 4 * v11);
  do
  {
    v45 = *v44++;
    v10 = v10 + v45 * v45;
    --v43;
  }

  while (v43);
LABEL_21:
  v344 = 0u;
  v343 = 0u;
  v342 = 0u;
  v341 = 0u;
  v340 = 0u;
  v338 = 0u;
  v339 = 0u;
  v336 = 0u;
  v337 = 0u;
  v334 = 0u;
  v335 = 0u;
  v333 = 0u;
  if (a4 >= 1 && v314 >= 1)
  {
    v46 = 0;
    v47 = a3 - 4;
    v48 = v324;
    v49 = (v324 + 32);
    v323 = 4 * a3;
    v50 = (v324 + 36);
    v51 = v324 + 8;
    v52 = v324 + 20;
    v53 = v324 + 4;
    do
    {
      v54 = 0;
      v55 = v53;
      v56 = v52;
      v57 = a3 - 1;
      v58 = v51;
      v59 = a3 - 4;
      v60 = v50;
      v61 = 1;
      do
      {
        if (v59 <= 4uLL)
        {
          v63 = 4;
        }

        else
        {
          v63 = v59;
        }

        v64 = v47 - v54;
        if ((v47 - v54) <= 4)
        {
          v65 = 4;
        }

        else
        {
          v65 = v64;
        }

        v66 = a3 - v61;
        if (a3 - v61 < 4)
        {
          v69 = 0;
          v68 = 0.0;
          v70 = v57;
          if (v66 <= 0)
          {
            goto LABEL_26;
          }

          goto LABEL_44;
        }

        if (v64 <= 0xC)
        {
          v67 = 0;
          v68 = 0.0;
LABEL_41:
          v80 = v58;
          v81 = v48;
          v82 = v67;
          do
          {
            v79 = 4 * v67;
            v68 = v68 + *(v81 + v79 + 4) * *(v80 + 4 * v67) + *(v81 + 4 * v67) * *(v80 + v79 - 4) + *(v81 + v79 + 8) * *(v80 + v79 + 4) + *(v81 + v79 + 12) * *(v80 + v79 + 8);
            v82 += 4;
            v81 += 16;
            v80 += 16;
          }

          while (v82 < (v66 - 3));
          goto LABEL_43;
        }

        v71 = (((v63 - 1) >> 2) + 1) & 0x7FFFFFFFFFFFFFFCLL;
        v72 = ((v65 - 1) >> 2) + 1;
        v67 = 4 * (v72 & 0x7FFFFFFFFFFFFFFCLL);
        v68 = 0.0;
        v73 = v60;
        v74 = v49;
        do
        {
          v75 = v74 - 8;
          v348 = vld4_f32(v75);
          v350 = vld4_f32(v74);
          v76 = v73 - 8;
          v352 = vld4_f32(v76);
          v353 = vld4_f32(v73);
          v77 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(vcvtq_f64_f32(v348.val[1]), vcvtq_f64_f32(v352.val[1])), vcvtq_f64_f32(v352.val[0]), vcvtq_f64_f32(v348.val[0])), vcvtq_f64_f32(v352.val[2]), vcvtq_f64_f32(v348.val[2])), vcvtq_f64_f32(v352.val[3]), vcvtq_f64_f32(v348.val[3]));
          v78 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(vcvtq_f64_f32(v350.val[1]), vcvtq_f64_f32(v353.val[1])), vcvtq_f64_f32(v353.val[0]), vcvtq_f64_f32(v350.val[0])), vcvtq_f64_f32(v353.val[2]), vcvtq_f64_f32(v350.val[2])), vcvtq_f64_f32(v353.val[3]), vcvtq_f64_f32(v350.val[3]));
          v68 = v68 + v77.f64[0] + v77.f64[1] + v78.f64[0] + v78.f64[1];
          v74 += 16;
          v73 += 16;
          v71 -= 4;
        }

        while (v71);
        if (v72 != (v72 & 0x7FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_41;
        }

LABEL_43:
        v69 = v66 & 0x7FFFFFFC;
        v70 = v57;
        if ((v66 & 0x7FFFFFFC) >= v66)
        {
          goto LABEL_26;
        }

LABEL_44:
        v83 = v69;
        v84 = (~v54 + a3) - v69;
        if (v84 <= 7)
        {
          v85 = v83;
          do
          {
LABEL_49:
            v68 = v68 + *(v48 + 4 * v85) * *(v55 + 4 * v85);
            ++v85;
          }

          while (v70 != v85);
          goto LABEL_26;
        }

        v85 = (v84 & 0xFFFFFFFFFFFFFFF8) + v83;
        v86 = (v70 - v83) & 0xFFFFFFFFFFFFFFF8;
        v87 = 4 * v83;
        v88 = (v56 + 4 * v83);
        v89 = (v48 + v87);
        do
        {
          v90 = *v89;
          v91 = v89[1];
          v89 += 2;
          v92 = vcvtq_f64_f32(*v90.f32);
          v93 = vcvtq_f64_f32(*v91.f32);
          v94 = v88[-1];
          v95 = vmulq_f64(vcvt_hight_f64_f32(v90), vcvt_hight_f64_f32(v94));
          v96 = vmulq_f64(v92, vcvtq_f64_f32(*v94.f32));
          v97 = vmulq_f64(vcvt_hight_f64_f32(v91), vcvt_hight_f64_f32(*v88));
          v98 = vmulq_f64(v93, vcvtq_f64_f32(*v88->f32));
          v68 = v68 + v96.f64[0] + v96.f64[1] + v95.f64[0] + v95.f64[1] + v98.f64[0] + v98.f64[1] + v97.f64[0] + v97.f64[1];
          v88 += 2;
          v86 -= 8;
        }

        while (v86);
        if (v84 != (v84 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_49;
        }

LABEL_26:
        v62 = &v333 + v61++;
        *(v62 - 1) = v68 + *(v62 - 1);
        ++v54;
        ++v60;
        --v59;
        v58 += 4;
        v57 = v70 - 1;
        v56 += 4;
        v55 += 4;
      }

      while (v61 != v314 + 1);
      ++v46;
      v49 = (v49 + v323);
      v50 = (v50 + v323);
      v48 += v323;
      v51 += v323;
      v52 += v323;
      v53 += v323;
    }

    while (v46 != a4);
  }

  v331[6] = v341;
  v331[7] = v342;
  v331[8] = v343;
  v332 = v344;
  v331[2] = v337;
  v331[3] = v338;
  v331[4] = v339;
  v331[5] = v340;
  v330[0] = v333;
  v330[1] = v334;
  v331[0] = v335;
  v331[1] = v336;
  v99 = v10 + v10 * 0.00000999999975 + 9.99999972e-10;
  v328[0] = v99;
  v327[0] = v99;
  if (v314 < 1)
  {
    v215 = 1.0;
    return v99 + v10 * -0.00000999999975 * v215;
  }

  v100 = 0;
  v101 = 0;
  v102 = a6;
  v103 = a3;
  v322 = (v324 - 16);
  v104 = 4 * a3;
  v321 = v324 + v104;
  v319 = v324 - 4;
  v320 = v324 + v104 + 16;
  v105 = &v324;
  v106 = 1.0;
  v107 = 2;
  v108 = 1;
  v109 = v327;
  v318 = v324;
  v110 = a4;
  do
  {
    v316 = v105;
    v317 = v100;
    if (v108 >> 1 <= 1)
    {
      v112 = 1;
    }

    else
    {
      v112 = v108 >> 1;
    }

    if (a4 >= 1)
    {
      v113 = 0;
      v115 = v318;
      v114 = v319;
      v117 = v320;
      v116 = v321;
      v118 = v322;
      while (1)
      {
        v119 = v324 + 4 * v113 * v103;
        v120 = *(v119 + 4 * v101);
        v121 = v120;
        v122 = *(v119 + 4 * (v103 - v101) - 4);
        v123 = v122;
        if (!v101)
        {
          goto LABEL_68;
        }

        if (v101 <= 7)
        {
          break;
        }

        v125 = v110;
        v126 = v117;
        v128 = v331;
        v127 = &v335;
        v129 = v326;
        v130 = v118;
        v131 = v101 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v132 = vrev64q_s32(*v130);
          v133 = vextq_s8(v132, v132, 8uLL);
          v134 = vrev64q_s32(v130[-1]);
          v135 = vextq_s8(v134, v134, 8uLL);
          v136 = vmulq_n_f32(v133, v120);
          v137 = vmulq_n_f32(v135, v120);
          v138 = vcvt_hight_f64_f32(v137);
          v139 = vsubq_f64(v127[-1], vcvt_hight_f64_f32(v136));
          v140 = vsubq_f64(*v127, vcvtq_f64_f32(*v137.f32));
          v141 = vsubq_f64(v127[1], v138);
          v127[-2] = vsubq_f64(v127[-2], vcvtq_f64_f32(*v136.f32));
          v127[-1] = v139;
          *v127 = v140;
          v127[1] = v141;
          v127 += 4;
          v142 = v126[-1];
          v143 = *v126;
          v144 = vmulq_n_f32(v142, v122);
          v145 = vmulq_n_f32(*v126, v122);
          v146 = vcvt_hight_f64_f32(v145);
          v147 = vsubq_f64(v128[-1], vcvt_hight_f64_f32(v144));
          v148 = vsubq_f64(*v128, vcvtq_f64_f32(*v145.f32));
          v149 = vsubq_f64(v128[1], v146);
          v128[-2] = vsubq_f64(v128[-2], vcvtq_f64_f32(*v144.f32));
          v128[-1] = v147;
          *v128 = v148;
          v128[1] = v149;
          v128 += 4;
          v150 = v129[-2];
          v151 = v129[-1];
          v152 = *v129;
          v153 = v129[1];
          v129 += 4;
          v154 = vcvtq_f64_f32(*v133.f32);
          v155 = vcvtq_f64_f32(*v135.f32);
          v156 = vmulq_f64(v151, vcvt_hight_f64_f32(v133));
          v157 = vmulq_f64(v150, v154);
          v158 = vmulq_f64(v153, vcvt_hight_f64_f32(v135));
          v159 = vmulq_f64(v152, v155);
          v160 = vcvtq_f64_f32(*v142.f32);
          v161 = vcvtq_f64_f32(*v143.f32);
          v162 = vmulq_f64(v151, vcvt_hight_f64_f32(v142));
          v163 = vmulq_f64(v150, v160);
          v164 = vmulq_f64(v153, vcvt_hight_f64_f32(v143));
          v165 = vmulq_f64(v152, v161);
          v123 = v123 + v163.f64[0] + v163.f64[1] + v162.f64[0] + v162.f64[1] + v165.f64[0] + v165.f64[1] + v164.f64[0] + v164.f64[1];
          v130 -= 2;
          v121 = v121 + v157.f64[0] + v157.f64[1] + v156.f64[0] + v156.f64[1] + v159.f64[0] + v159.f64[1] + v158.f64[0] + v158.f64[1];
          v126 += 2;
          v131 -= 8;
        }

        while (v131);
        v124 = v101 & 0xFFFFFFFFFFFFFFF8;
        v110 = v125;
        if (v101 != (v101 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_66;
        }

LABEL_68:
        v170 = -v121;
        v171 = -v123;
        if (v108 > 1)
        {
          v173 = 0;
          v174 = vdupq_lane_s64(*&v170, 0);
          v175 = vdupq_lane_s64(*&v171, 0);
          v176 = v328;
          v177 = -4;
          v178 = v327;
          v179 = 2 * (v108 >> 1);
          do
          {
            *v176 = vmlaq_f64(*v176, vcvtq_f64_f32(vrev64_s32(*(v114 + v173))), v174);
            ++v176;
            *v178 = vmlaq_f64(*v178, vcvtq_f64_f32(*(v116 + v177)), v175);
            ++v178;
            v173 -= 8;
            v177 += 8;
            v179 -= 2;
          }

          while (v179);
          v172 = v108 & 0x7FFFFFFFFFFFFFFELL;
          if (v108 == (v108 & 0x7FFFFFFFFFFFFFFELL))
          {
            goto LABEL_59;
          }
        }

        else
        {
          v172 = 0;
        }

        v180 = (v115 - 4 * v172);
        do
        {
          v181 = *v180--;
          v328[v172] = v328[v172] + v170 * v181;
          v327[v172] = v327[v172] + v171 * *(v116 + 4 * v172 - 4);
          ++v172;
        }

        while (v108 != v172);
LABEL_59:
        ++v113;
        v118 = (v118 + v104);
        v117 = (v117 + v104);
        v116 += v104;
        v114 += v104;
        v115 += v104;
        if (v113 == v110)
        {
          goto LABEL_76;
        }
      }

      v124 = 0;
LABEL_66:
      v166 = (v114 - 4 * v124);
      do
      {
        v167 = *v166--;
        *(&v333 + v124) = *(&v333 + v124) - (v120 * v167);
        v168 = *(v116 + 4 * v124);
        *(v330 + v124) = *(v330 + v124) - (v122 * v168);
        v169 = v325[v124];
        v121 = v121 + v167 * v169;
        v123 = v123 + v168 * v169;
        ++v124;
      }

      while (v101 != v124);
      goto LABEL_68;
    }

LABEL_76:
    v182 = *(&v333 + v101);
    v183 = *(v330 + v101);
    if (v101)
    {
      v184 = v325;
      v185 = v317;
      v186 = v317;
      do
      {
        v187 = *v184++;
        v182 = v182 + *&v329[v186 + 152] * v187;
        v183 = v183 + *(&v332 + v186 + 8) * v187;
        v186 -= 8;
      }

      while (v186);
      v188 = v101 + 1;
      v328[v101 + 1] = v182;
      v327[v101 + 1] = v183;
      v189 = v327[0];
      v190 = v325;
      v191 = v328[0];
      v192 = 1;
      v193 = v317;
      do
      {
        v194 = *v190++;
        v183 = v183 + *(v327 + v193) * v194;
        v189 = v189 + v327[v192] * v194;
        v191 = v191 + v328[v192++] * v194;
        v193 -= 8;
      }

      while (v193);
    }

    else
    {
      *&v328[1] = v333;
      v327[1] = v183;
      v189 = v327[0];
      v188 = 1;
      v191 = v328[0];
      v185 = v317;
    }

    v195 = v183 * -2.0 / (v191 + v189);
    v196 = v106 * (1.0 - v195 * v195);
    v197 = v196;
    if (v196 <= v102)
    {
      v195 = sqrt(1.0 - v102 / v106);
      if (v183 > 0.0)
      {
        v195 = -v195;
      }

      v197 = v102;
    }

    v106 = v197;
    if (v101)
    {
      v198 = v325;
      v199 = v316;
      do
      {
        v200 = *v198;
        v201 = *v199;
        *v198 = *v198 + v195 * *v199;
        ++v198;
        *v199-- = v201 + v195 * v200;
        --v112;
      }

      while (v112);
    }

    v325[v101] = v195;
    if (v196 <= v102)
    {
      if (v188 < v314)
      {
        v216 = v103;
        bzero(&v325[v101 + 1], 8 * (v314 - v101 - 2) + 8);
        v103 = v216;
      }

      if (v314 <= 7)
      {
        v217 = 0;
        goto LABEL_109;
      }

      v217 = v314 & 0x7FFFFFF8;
      v219 = v326;
      v220 = a1 + 1;
      v221 = v217;
      do
      {
        v223 = v219[-2];
        v222 = v219[-1];
        v225 = *v219;
        v224 = v219[1];
        v219 += 4;
        v220[-1] = vnegq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(v223), v222));
        *v220 = vnegq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(v225), v224));
        v220 += 2;
        v221 -= 8;
      }

      while (v221);
      if (v217 != v314)
      {
LABEL_109:
        v226 = v314 - v217;
        v227 = &a1->f32[v217];
        v228 = &v325[v217];
        do
        {
          v229 = *v228++;
          v230 = v229;
          *v227++ = -v230;
          --v226;
        }

        while (v226);
      }

      if (a4 >= 1)
      {
        v231 = (v314 - 3);
        if (v314 > 3)
        {
          v232 = 0;
          v233 = v314 & 0x7FFFFFFC;
          v234 = v314 - v233;
          v235 = 4;
          if (v231 > 4)
          {
            v235 = (v314 - 3);
          }

          v236 = ((v235 - 1) >> 2) + 1;
          v237 = (v324 + 32);
          v238 = 4 * v103;
          v239 = v324 + 4;
          v240 = v324 + 8;
          v241 = v324 + 16 * ((v314 >> 2) & 0x1FFFFFFF) + 16;
          while (v231 >= 0xD)
          {
            v243 = 0.0;
            v244 = v236 & 0x7FFFFFFFFFFFFFFCLL;
            v245 = v237;
            do
            {
              v246 = v245 - 8;
              v347 = vld4_f32(v246);
              v351 = vld4_f32(v245);
              v247 = vcvtq_f64_f32(v347.val[0]);
              v248 = vcvtq_f64_f32(v351.val[0]);
              v249 = vcvtq_f64_f32(v347.val[1]);
              v250 = vcvtq_f64_f32(v351.val[1]);
              v251 = vmlaq_f64(vmulq_f64(v249, v249), v247, v247);
              v252 = vmlaq_f64(vmulq_f64(v250, v250), v248, v248);
              v253 = vcvtq_f64_f32(v347.val[2]);
              v254 = vcvtq_f64_f32(v351.val[2]);
              *v347.val[0].f32 = vcvtq_f64_f32(v347.val[3]);
              *v347.val[1].f32 = vcvtq_f64_f32(v351.val[3]);
              v255 = vmlaq_f64(vmlaq_f64(v251, v253, v253), *v347.val[0].f32, *v347.val[0].f32);
              v256 = vmlaq_f64(vmlaq_f64(v252, v254, v254), *v347.val[1].f32, *v347.val[1].f32);
              v243 = v243 + v255.f64[0] + v255.f64[1] + v256.f64[0] + v256.f64[1];
              v245 += 16;
              v244 -= 4;
            }

            while (v244);
            v242 = 4 * (v236 & 0x7FFFFFFFFFFFFFFCLL);
            if (v236 != (v236 & 0x7FFFFFFFFFFFFFFCLL))
            {
              goto LABEL_122;
            }

LABEL_124:
            if (v233 != v314)
            {
              if (v234 >= 8)
              {
                v262 = v234 & 0xFFFFFFFFFFFFFFF8;
                v263 = v241;
                do
                {
                  v264 = *v263[-2].f32;
                  v265 = vcvtq_f64_f32(*v264.f32);
                  v266 = vcvt_hight_f64_f32(v264);
                  v267 = vcvtq_f64_f32(*v263);
                  v268 = vcvt_hight_f64_f32(*v263->f32);
                  v269 = vmulq_f64(v266, v266);
                  v270 = vmulq_f64(v265, v265);
                  v271 = vmulq_f64(v268, v268);
                  v272 = vmulq_f64(v267, v267);
                  v243 = v243 + v270.f64[0] + v270.f64[1] + v269.f64[0] + v269.f64[1] + v272.f64[0] + v272.f64[1] + v271.f64[0] + v271.f64[1];
                  v263 += 4;
                  v262 -= 8;
                }

                while (v262);
                v261 = (v234 & 0xFFFFFFFFFFFFFFF8) + v233;
                if (v234 == (v234 & 0xFFFFFFFFFFFFFFF8))
                {
                  goto LABEL_116;
                }
              }

              else
              {
                v261 = v314 & 0x7FFFFFFC;
              }

              v273 = v314 - v261;
              v274 = (v324 + 4 * v261);
              do
              {
                v275 = *v274++;
                v243 = v243 + v275 * v275;
                --v273;
              }

              while (v273);
            }

LABEL_116:
            ++v232;
            v237 = (v237 + v238);
            v10 = v10 - v243;
            v239 += v238;
            v240 += v238;
            v241 += v238;
            v324 += v238;
            if (v232 == v110)
            {
              return v106 * v10;
            }
          }

          v242 = 0;
          v243 = 0.0;
LABEL_122:
          v257 = (v240 + 4 * v242);
          do
          {
            v258 = *(v239 + 4 * v242) * *(v239 + 4 * v242) + *(v257 - 2) * *(v257 - 2);
            v259 = *v257;
            v260 = v257[1];
            v257 += 4;
            v243 = v243 + v258 + v259 * v259 + v260 * v260;
            v242 += 4;
          }

          while (v242 < v231);
          goto LABEL_124;
        }

        v306 = 0;
        v307 = v324 + 16;
        v308 = 4 * v103;
        do
        {
          v309 = 0.0;
          v310 = v314;
          v311 = v324;
          do
          {
            v312 = *v311++;
            v309 = v309 + v312 * v312;
            --v310;
          }

          while (v310);
          v10 = v10 - v309;
          ++v306;
          v307 += v308;
          v324 += v308;
        }

        while (v306 != v110);
      }

      return v106 * v10;
    }

    if (v107 <= 1)
    {
      v202 = 0;
LABEL_96:
      v210 = -v202;
      v211 = &v328[v202];
      do
      {
        v212 = *v211;
        v213 = &v109[v210];
        v214 = v213[1];
        *v211 = *v211 + v195 * v214;
        ++v211;
        v213[1] = v214 + v195 * v212;
        --v210;
      }

      while (v107 + v210);
      goto LABEL_53;
    }

    v203 = v107 & 0xFFFFFFFFFFFFFFFELL;
    v202 = v107 & 0x7FFFFFFFFFFFFFFELL;
    v204 = vdupq_lane_s64(*&v195, 0);
    v205 = v328;
    v206 = v109;
    do
    {
      v207 = *v205;
      v208 = vextq_s8(*v206, *v206, 8uLL);
      *v205 = vmlaq_f64(*v205, v208, v204);
      ++v205;
      v209 = vmlaq_f64(v208, v207, v204);
      *v206-- = vextq_s8(v209, v209, 8uLL);
      v203 -= 2;
    }

    while (v203);
    if (v107 != v202)
    {
      goto LABEL_96;
    }

LABEL_53:
    ++v107;
    ++v101;
    v322 = (v322 + 4);
    v320 -= 4;
    v321 -= 4;
    v319 += 4;
    v318 += 4;
    v100 = v185 + 8;
    v105 = v316 + 1;
    ++v109;
  }

  while (v108++ != v314);
  v99 = v328[0];
  if (v314 < 8)
  {
    v218 = 0;
    v215 = 1.0;
    goto LABEL_136;
  }

  v218 = v314 & 0x7FFFFFF8;
  v276 = v329;
  v277 = v326;
  v278 = a1 + 1;
  v215 = 1.0;
  v279 = v218;
  do
  {
    v280 = v277[-2];
    v281 = v277[-1];
    v282 = *v277;
    v283 = v277[1];
    v277 += 4;
    v284 = v276[-2];
    v285 = v276[-1];
    v286 = *v276;
    v287 = v276[1];
    v276 += 4;
    v288 = vmulq_f64(v285, v281);
    v289 = vmulq_f64(v284, v280);
    v290 = vmulq_f64(v287, v283);
    v291 = vmulq_f64(v286, v282);
    v292 = vmulq_f64(v281, v281);
    v293 = vmulq_f64(v280, v280);
    v294 = vmulq_f64(v283, v283);
    v295 = vmulq_f64(v282, v282);
    v278[-1] = vnegq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(v280), v281));
    *v278 = vnegq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(v282), v283));
    v215 = v215 + v293.f64[0] + v293.f64[1] + v292.f64[0] + v292.f64[1] + v295.f64[0] + v295.f64[1] + v294.f64[0] + v294.f64[1];
    v99 = v99 + v289.f64[0] + v289.f64[1] + v288.f64[0] + v288.f64[1] + v291.f64[0] + v291.f64[1] + v290.f64[0] + v290.f64[1];
    v278 += 2;
    v279 -= 8;
  }

  while (v279);
  if (v218 != v314)
  {
LABEL_136:
    v296 = &a1->f32[v218];
    v297 = v314 - v218;
    v298 = v218;
    v299 = &v328[v218 + 1];
    v300 = &v325[v298];
    do
    {
      v301 = *v300++;
      v302 = v301;
      v303 = *v299++;
      v99 = v99 + v303 * v302;
      v215 = v215 + v302 * v302;
      *&v302 = v302;
      *v296++ = -*&v302;
      --v297;
    }

    while (v297);
  }

  return v99 + v10 * -0.00000999999975 * v215;
}

int8x16_t comb_filter(char *a1, char *a2, int a3, int a4, int a5, int a6, int a7, unint64_t a8, int8x16_t result, float a10, double a11, double a12, double a13, double a14, double a15, int8x16_t a16, unsigned int a17)
{
  if (*result.i32 == 0.0 && a10 == 0.0)
  {
    if (a2 != a1)
    {
      v19 = 4 * a5;

LABEL_6:
      memmove(a1, a2, v19);
      return result;
    }

    return result;
  }

  if (a3 <= 15)
  {
    v20 = 15;
  }

  else
  {
    v20 = a3;
  }

  if (a4 <= 15)
  {
    v21 = 15;
  }

  else
  {
    v21 = a4;
  }

  v22 = (&comb_filter_gains + 12 * a7);
  *&a11 = *v22 * a10;
  *&a12 = v22[1] * a10;
  *&a13 = v22[2] * a10;
  v23 = -v21;
  v24 = ~v21;
  v25 = -2 - v21;
  if (*result.i32 == a10 && a6 == a7 && v20 == v21)
  {
    v28 = 0;
  }

  else
  {
    v28 = a17;
  }

  if (v28 >= 1)
  {
    v29 = (&comb_filter_gains + 12 * a6);
    v30 = *v29 * *result.i32;
    v31 = v29[1] * *result.i32;
    *result.i32 = v29[2] * *result.i32;
    a16.i32[0] = *&a2[4 * v25];
    v18.i32[0] = *&a2[4 * v24];
    v32 = *&a2[4 * v23];
    if (v28 >= 8)
    {
      v33 = 0;
      v57 = &a1[4 * v28];
      v58 = 4 * v28 + 8;
      v59 = &a2[v58 - 4 * v20];
      v60 = &a2[v58 - 4 * v21];
      v62 = &a2[4 * v28] > a1 && v57 > a2;
      v64 = v60 > a1 && &a2[-4 * v21 + 8] < v57;
      v66 = a8 + 4 * v28 > a1 && v57 > a8;
      v67 = &a2[-4 * v20 - 8] < v57 && v59 > a1;
      if (!v67 && !v62 && !v64 && !v66)
      {
        v68 = 0;
        v69 = vdupq_lane_s32(*a16.i8, 0);
        v70 = vdupq_lane_s32(v18, 0);
        v71 = vdupq_lane_s32(v32, 0);
        a16.i64[1] = *&a2[4 * v23];
        v33 = v28 & 0x7FFFFFFC;
        __asm { FMOV            V16.4S, #1.0 }

        do
        {
          v76 = a16;
          a16 = *&a2[v68 + 8 + -4 * v21];
          v77 = vextq_s8(v76, a16, 0xCuLL);
          v78 = vextq_s8(v71, v77, 0xCuLL);
          v79 = vextq_s8(v70, v78, 0xCuLL);
          v80 = vmulq_f32(*(a8 + v68), *(a8 + v68));
          v81 = vsubq_f32(_Q16, v80);
          v72 = &a2[-4 * v20];
          *&a1[v68] = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(*&a2[v68], *&v72[v68], vmulq_n_f32(v81, v30)), vaddq_f32(*&v72[v68 + 4], *&v72[v68 - 4]), vmulq_n_f32(v81, v31)), vaddq_f32(*&v72[v68 + 8], *&v72[v68 - 8]), vmulq_n_f32(v81, *result.i32)), v78, vmulq_n_f32(v80, *&a11)), vaddq_f32(v79, v77), vmulq_n_f32(v80, *&a12)), vaddq_f32(vextq_s8(v69, v79, 0xCuLL), a16), vmulq_n_f32(v80, *&a13));
          v68 += 16;
          v69 = v79;
          v70 = v78;
          v71 = v77;
        }

        while (16 * ((v28 >> 2) & 0x1FFFFFFF) != v68);
        if (v33 == v28)
        {
LABEL_27:
          v42 = v28;
          if (a10 == 0.0)
          {
            goto LABEL_28;
          }

LABEL_33:
          v44 = a5 - v42;
          if (v44 < 1)
          {
            return result;
          }

          v45 = &a2[4 * v42];
          v46 = *&v45[4 * v23];
          LODWORD(a14) = *&v45[4 * v24];
          result.i32[0] = *&v45[4 * v25];
          v47 = v42;
          if (v44 >= 8)
          {
            v48 = 0;
            if ((a1 - a2) >= 0x20 && (&a1[4 * v21] - a2 - 8) >= 0x20)
            {
              v48 = v44 & 0x7FFFFFF8;
              v82 = vdupq_lane_s32(*result.i8, 0);
              v83 = vdupq_lane_s32(*&a14, 0);
              v84 = vdupq_lane_s32(v46, 0);
              result.u64[1] = v46;
              v85 = vdupq_lane_s32(*&a11, 0);
              v86 = vdupq_lane_s32(*&a12, 0);
              v87 = vdupq_lane_s32(*&a13, 0);
              v88 = &a2[4 * v42 - 4 * v21 + 24];
              v89 = 4 * v42 + 16;
              v90 = &a1[v89];
              v91 = &a2[v89];
              v92 = v48;
              do
              {
                v93 = v88[-1];
                v94 = vextq_s8(result, v93, 0xCuLL);
                v95 = *v88;
                v88 += 2;
                result = v95;
                v96 = vextq_s8(v84, v94, 0xCuLL);
                v97 = vextq_s8(v93, v95, 0xCuLL);
                v98 = vextq_s8(v83, v96, 0xCuLL);
                v99 = vextq_s8(v94, v97, 0xCuLL);
                v100 = vextq_s8(v96, v99, 0xCuLL);
                v101 = vmlaq_f32(vmlaq_f32(vmlaq_f32(*v91, v99, v85), vaddq_f32(v100, v97), v86), vaddq_f32(vextq_s8(v98, v100, 0xCuLL), v95), v87);
                v90[-1] = vmlaq_f32(vmlaq_f32(vmlaq_f32(v91[-1], v96, v85), vaddq_f32(v98, v94), v86), vaddq_f32(vextq_s8(v82, v98, 0xCuLL), v93), v87);
                *v90 = v101;
                v90 += 2;
                v91 += 2;
                v82 = v100;
                v83 = v99;
                v84 = v97;
                v92 -= 8;
              }

              while (v92);
              if (v48 == v44)
              {
                return result;
              }

              LODWORD(a14) = result.i32[1];
              v46 = vextq_s8(result, result, 8uLL).u64[0];
            }
          }

          else
          {
            v48 = 0;
          }

          v49 = v44 - v48;
          v50 = 4 * v48 + 4 * v47;
          v51 = &a1[v50];
          v52 = &a2[v50];
          v53 = 8 - 4 * v21;
          do
          {
            v54 = *(v52 + v53);
            v55 = *v52++;
            *v51++ = ((v55 + (*&a11 * *v46.i32)) + (*&a12 * (*&a14 + *&v46.i32[1]))) + (*&a13 * (*result.i32 + v54));
            v56.i32[0] = vdup_lane_s32(v46, 1).u32[0];
            result.i32[0] = LODWORD(a14);
            LODWORD(a14) = v46.i32[0];
            *&v56.i32[1] = v54;
            v46 = v56;
            --v49;
          }

          while (v49);
          return result;
        }

        v18.i32[0] = a16.i32[1];
        v32 = vextq_s8(a16, a16, 8uLL).u64[0];
      }
    }

    else
    {
      v33 = 0;
    }

    v34 = v28 - v33;
    v35 = 4 * v33;
    v36 = &a2[-4 * v21 + 8];
    v37 = &a2[-4 * v20];
    v38 = a2;
    v39 = a1;
    do
    {
      v40 = *(v36 + v35);
      v41 = *(a8 + v35) * *(a8 + v35);
      *&v39[v35] = (((((*&v38[v35] + ((v30 * (1.0 - v41)) * *&v37[v35])) + ((v31 * (1.0 - v41)) * (*&v37[v35 + 4] + *&v37[v35 - 4]))) + ((*result.i32 * (1.0 - v41)) * (*&v37[v35 + 8] + *&v37[v35 - 8]))) + ((*&a11 * v41) * *v32.i32)) + ((*&a12 * v41) * (*v18.i32 + *&v32.i32[1]))) + ((*&a13 * v41) * (*a16.i32 + v40));
      a16.i32[0] = v18.i32[0];
      v18.i32[0] = v32.i32[0];
      v32.i32[0] = vdup_lane_s32(v32, 1).u32[0];
      v39 += 4;
      v36 += 4;
      a8 += 4;
      *&v32.i32[1] = v40;
      v38 += 4;
      v37 += 4;
      --v34;
    }

    while (v34);
    goto LABEL_27;
  }

  v42 = 0;
  if (a10 != 0.0)
  {
    goto LABEL_33;
  }

LABEL_28:
  if (a2 != a1)
  {
    v43 = 4 * v28;
    v19 = 4 * (a5 - v28);
    a1 += v43;
    a2 += v43;

    goto LABEL_6;
  }

  return result;
}

uint64_t celt_decode_with_ec(float32x2_t *a1, unsigned __int8 *a2, int a3, float32x2_t *a4, int a5, _OWORD *a6, int a7)
{
  v516[1] = *MEMORY[0x277D85DE8];
  memset(v512, 0, sizeof(v512));
  memset(v511, 0, sizeof(v511));
  v7 = a1[1].i32[1];
  v510 = 0;
  v8 = *a1;
  v9 = *(*a1 + 40);
  if (v9 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = a6;
  LODWORD(v502) = a3;
  v12 = 0;
  v508 = &v512[16];
  v13 = *(v8 + 1);
  v14 = *(v8 + 2);
  v15 = v14;
  v500 = *(v8 + 4);
  v503 = a1[3].i32[0];
  v499 = a1[3].i32[1];
  v504 = v499;
  v505 = a1[2].u32[0];
  v16 = (a1[2].i32[1] * a5);
  v17 = a1 + 12;
  v498 = v13;
  v18 = v13 + 2048;
  v19 = v18 * v7;
  v20 = 24 * v7;
  v21 = 2 * v14;
  v501 = &a1[12] + 4 * v19 + 4 * v20;
  v22 = a6 + 3;
  v23 = (v10 + 2);
  v24 = v10 + 6;
  v25 = v9 + 1;
  v26 = 1;
  v27 = 16;
  v28 = &tf_select_table;
  while (*(v8 + 12) << v12 != v16)
  {
    v12 = (v12 + 1);
    v26 -= 2;
    v27 += 8;
    v28 += 8;
    if (v25 == v12)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v492 = &v501[4 * v21 + 4 * v21];
  result = 0xFFFFFFFFLL;
  if (v502 <= 0x4FB && a4)
  {
    v484 = &v501[4 * v21];
    v30 = 0;
    v515 = 0;
    v516[0] = 0;
    v513 = 0;
    v514 = 0;
    v31 = v16;
    v32 = v18;
    if (v7 <= 1)
    {
      v33 = 1;
    }

    else
    {
      v33 = v7;
    }

    v497 = v33;
    v34 = 4 * v32;
    v491 = v19;
    v487 = 2 * v14;
    v490 = 24 * v7;
    v495 = v14;
    v489 = v16;
    if (v7 < 2)
    {
      goto LABEL_16;
    }

    v30 = v497 & 0x7FFFFFFE;
    v35 = &a1[1036] - 4 * v16;
    v36 = 8 * v32;
    v37 = &v514;
    v38 = v516;
    v39 = v30;
    do
    {
      *(v37 - 1) = v35;
      *v37 = v35 + v34;
      v35 += v36;
      *(v38 - 1) = v17;
      *v38 = v17 + v34;
      v17 = (v17 + v36);
      v37 += 2;
      v38 += 2;
      v39 -= 2;
    }

    while (v39);
    v19 = v491;
    v20 = v490;
    v14 = v495;
    v31 = v489;
    if (v30 != v497)
    {
LABEL_16:
      v40 = v497 - v30;
      v41 = &(&v513)[v30];
      v42 = &v516[v30 - 1];
      v43 = a1 + 4 * v30 * v32;
      do
      {
        *v42++ = v43 + 96;
        *v41++ = &v43[8288 - 4 * v31];
        v43 += v34;
        --v40;
      }

      while (v40);
    }

    v509 = 0;
    v44 = *(v8 + 3);
    if (v504 < v44)
    {
      v44 = v504;
    }

    v45 = v502;
    if (!a2 || v502 <= 1)
    {
      v53 = v16;
      celt_decode_lost(a1, v16, v12);
      deemphasis(&v513, a4, v53, v7, a1[2].i32[1], v8 + 4, a1 + 11, a7);
      return (v53 / a1[2].i32[1]);
    }

    v479 = v44;
    a1[7].i32[1] = a1[7].i32[0] != 0;
    if (!v10)
    {
      *&v511[0] = a2;
      DWORD2(v511[0]) = v45;
      *(v511 + 12) = 0;
      DWORD1(v511[1]) = 0;
      v46 = *a2;
      *&v512[12] = *a2;
      v47 = 2;
      *&v512[4] = (v46 >> 1) ^ 0x7F;
      HIDWORD(v511[1]) = 2;
      v48 = v45;
      v49 = a2[1];
      if (v48 < 3)
      {
        v50 = 0;
      }

      else
      {
        v47 = 3;
        HIDWORD(v511[1]) = 3;
        v50 = a2[2];
      }

      v23 = v512;
      v54 = (v49 << 7) & 0xFF00 | (v46 << 15) | (((v46 >> 1) ^ 0x7F) << 16) | ((v50 | (v49 << 8)) >> 1);
      DWORD2(v511[1]) = 33;
      *v512 = 0x80000000;
      v45 = v502;
      if (v47 >= v502)
      {
        v55 = 0;
      }

      else
      {
        HIDWORD(v511[1]) = v47 + 1;
        v55 = a2[v47];
      }

      v22 = v508;
      *&v512[12] = v55;
      *&v512[4] = (((v55 | (v50 << 8)) >> 1) | (v54 << 8)) ^ 0xFFFFFF;
      v10 = v511;
      v24 = &v511[1] + 2;
    }

    v56 = v15;
    if (v505 == 1 && v15 >= 1)
    {
      if (v15 >= 8)
      {
        v57 = v14 & 0x7FFFFFF8;
        v58 = (a1 + 4 * v19 + 4 * v20);
        v59 = 4 * v14;
        v60 = v57;
        do
        {
          v61 = vbslq_s8(vcgtq_f32(v58[7], *(v58 + v59 + 112)), v58[7], *(&v58[7] + v59));
          v58[6] = vbslq_s8(vcgtq_f32(v58[6], *(v58 + v59 + 96)), v58[6], *(&v58[6] + v59));
          v58[7] = v61;
          v58 += 2;
          v60 -= 8;
        }

        while (v60);
        if (v57 == v14)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v57 = 0;
      }

      v62 = v14 - v57;
      v63 = &a1[12] + v57 + v19 + v20;
      do
      {
        v64 = v63[v14];
        if (*v63 > v64)
        {
          v64 = *v63;
        }

        *v63++ = v64;
        --v62;
      }

      while (v62);
    }

LABEL_42:
    v65 = 8 * v45;
    v66 = __clz(*v23);
    v67 = *v24 + v66 - 32;
    v481 = a7;
    v482 = a4;
    v508 = v16;
    v488 = v56;
    v68 = v504;
    v471 = v22;
    v494 = 8 * v45;
    if (v67 < (8 * v45))
    {
      if (v67 == 1)
      {
        if (ec_dec_bit_logp(v10, 15))
        {
          v66 = __clz(*v23);
          v68 = v504;
          v65 = v494;
          goto LABEL_46;
        }

        v469 = 0;
        v67 = 1;
        v478 = 1;
        v68 = v504;
        v65 = v494;
      }

      else
      {
        v469 = 0;
        v478 = 1;
      }

LABEL_49:
      v69 = 0;
      v70 = 0.0;
      v486 = v7;
      if (v503)
      {
        v71 = 0;
      }

      else
      {
        v71 = 0;
        if (v67 + 16 <= v65)
        {
          v72 = *v23;
          v73 = *(v10 + 9);
          v74 = *v23 >> 1;
          v75 = v73;
          if (v73 >= v74)
          {
            *(v10 + 9) = v73 - v74;
            v75 = v73 - v74;
          }

          v76 = v72 - v74;
          if (v73 >= v74)
          {
            v77 = v76;
          }

          else
          {
            v77 = v74;
          }

          *v23 = v77;
          if (v77 >= 0x800001)
          {
            v84 = v77;
          }

          else
          {
            v78 = *(v10 + 2);
            v79 = *(v10 + 11);
            v80 = *(v10 + 7);
            v81 = *v24 + 8;
            do
            {
              *v24 = v81;
              v84 = v77 << 8;
              *v23 = v77 << 8;
              if (v80 < v78)
              {
                v82 = *v10;
                *(v10 + 7) = v80 + 1;
                v83 = *(v82 + v80++);
              }

              else
              {
                v83 = 0;
              }

              v75 = (((v75 & 0x7FFFFF) << 8) | ((v83 | (v79 << 8)) >> 1)) ^ 0xFF;
              *(v10 + 11) = v83;
              *(v10 + 9) = v75;
              v81 += 8;
              v79 = v83;
              v146 = v77 > 0x8000;
              v77 <<= 8;
            }

            while (!v146);
          }

          if (v73 >= v74)
          {
            v69 = 0;
            v71 = 0;
            v70 = 0.0;
          }

          else
          {
            v85 = ec_dec_uint(v10, 6u);
            v86 = v85 + 4;
            v87 = *(v10 + 4);
            v88 = *(v10 + 5);
            if (v88 >= (v85 + 4))
            {
              v92 = *(v10 + 5);
              v65 = v494;
            }

            else
            {
              v89 = *(v10 + 2);
              v90 = *(v10 + 3);
              v65 = v494;
              do
              {
                while (v90 < v89)
                {
                  v91 = *v10;
                  *(v10 + 3) = ++v90;
                  v87 |= *(v91 + v89 - v90) << v88;
                  v92 = v88 + 8;
                  v146 = v88 < 17;
                  v88 += 8;
                  if (!v146)
                  {
                    goto LABEL_74;
                  }
                }

                v92 = v88 + 8;
                v146 = v88 < 17;
                v88 += 8;
              }

              while (v146);
            }

LABEL_74:
            v93 = v87 & ~(-1 << v86);
            v94 = v87 >> v86;
            v95 = v92 - v86;
            *(v10 + 4) = v94;
            *(v10 + 5) = v92 - v86;
            v96 = *v24 + v86;
            *v24 = v96;
            v97 = (16 << v85) + v93;
            if (v95 <= 2)
            {
              v98 = *(v10 + 2);
              v99 = *(v10 + 3);
              v100 = v92 - v85 - 12;
              do
              {
                while (v99 < v98)
                {
                  v101 = *v10;
                  *(v10 + 3) = ++v99;
                  v100 += 8;
                  v94 |= *(v101 + v98 - v99) << v100;
                  if (v100 >= 17)
                  {
                    goto LABEL_79;
                  }
                }

                v100 += 8;
              }

              while (v100 < 17);
LABEL_79:
              v95 = v100 + 8;
            }

            v69 = v97 - 1;
            v102 = v94 & 7;
            *(v10 + 4) = v94 >> 3;
            *(v10 + 5) = v95 - 3;
            *v24 = v96 + 3;
            v84 = *v23;
            if ((v96 + __clz(*v23) - 27) <= v65)
            {
              v103 = v69;
              v507 = v94 & 7;
              v71 = ec_dec_icdf(v10, tapset_icdf, 2);
              v102 = v507;
              v69 = v103;
              v65 = v494;
              v84 = *v23;
            }

            else
            {
              v71 = 0;
            }

            v68 = v504;
            v70 = (v102 + 1) * 0.09375;
          }

          v67 = *v24 + __clz(v84) - 32;
        }
      }

      v104 = 0;
      v105 = v67 + 3;
      v506 = v71;
      v507 = v69;
      if (v12 && v105 <= v65)
      {
        v106 = *v23;
        v107 = *(v10 + 9);
        v108 = *v23 >> 3;
        v109 = v107;
        if (v107 >= v108)
        {
          *(v10 + 9) = v107 - v108;
          v109 = v107 - v108;
        }

        v110 = v106 - v108;
        if (v107 >= v108)
        {
          v111 = v110;
        }

        else
        {
          v111 = v108;
        }

        *v23 = v111;
        v112 = *v24;
        if (v111 >= 0x800001)
        {
          v118 = v111;
        }

        else
        {
          v113 = *(v10 + 2);
          v114 = *(v10 + 11);
          v115 = *(v10 + 7);
          do
          {
            v112 += 8;
            *v24 = v112;
            v118 = v111 << 8;
            *v23 = v111 << 8;
            if (v115 < v113)
            {
              v116 = *v10;
              *(v10 + 7) = v115 + 1;
              v117 = *(v116 + v115++);
            }

            else
            {
              v117 = 0;
            }

            *(v10 + 11) = v117;
            v109 = (((v109 & 0x7FFFFF) << 8) | ((v117 | (v114 << 8)) >> 1)) ^ 0xFF;
            *(v10 + 9) = v109;
            v114 = v117;
            v146 = v111 > 0x8000;
            v111 <<= 8;
          }

          while (!v146);
        }

        v104 = v107 < v108;
        v105 = v112 + __clz(v118) - 29;
      }

      v119 = 0;
      v496 = v104;
      if (v104)
      {
        v120 = 1 << v12;
      }

      else
      {
        v120 = 0;
      }

      v477 = v120;
      if (v105 <= v65)
      {
        v121 = *v23;
        v122 = *(v10 + 9);
        v123 = *v23 >> 3;
        v124 = v122;
        if (v122 >= v123)
        {
          *(v10 + 9) = v122 - v123;
          v124 = v122 - v123;
        }

        v125 = v121 - v123;
        if (v122 < v123)
        {
          v125 = v123;
        }

        *v23 = v125;
        if (v125 < 0x800001)
        {
          v126 = *(v10 + 2);
          v127 = *(v10 + 11);
          v128 = *(v10 + 7);
          v129 = *v24 + 8;
          do
          {
            *v24 = v129;
            *v23 = v125 << 8;
            if (v128 < v126)
            {
              v130 = *v10;
              *(v10 + 7) = v128 + 1;
              v131 = *(v130 + v128++);
            }

            else
            {
              v131 = 0;
            }

            v124 = (((v124 & 0x7FFFFF) << 8) | ((v131 | (v127 << 8)) >> 1)) ^ 0xFF;
            *(v10 + 11) = v131;
            *(v10 + 9) = v124;
            v129 += 8;
            v127 = v131;
            v146 = v125 > 0x8000;
            v125 <<= 8;
          }

          while (!v146);
        }

        v119 = v122 < v123;
      }

      v472 = 1 << v12;
      v132 = unquant_coarse_energy(v8, v503, v68, v501, v119, v10, v505, v12);
      MEMORY[0x28223BE20](v132, v133, v134);
      v137 = v504;
      v485 = v138;
      v139 = &v468[-((v138 + 15) & 0x7FFFFFFF0)];
      v140 = 8 * *(v10 + 2);
      v141 = *v24;
      v142 = *v23;
      v143 = *v24 + __clz(*v23) - 32;
      v144 = v496;
      if (v496)
      {
        v145 = 2;
      }

      else
      {
        v145 = 4;
      }

      if (v12)
      {
        v146 = v143 + v145 + 1 > v140;
      }

      else
      {
        v146 = 1;
      }

      v147 = !v146;
      v483 = v139;
      v480 = v136;
      if (v503 >= v504)
      {
        v150 = 0;
        v151 = v494;
      }

      else
      {
        v148 = v140 - v147;
        if (v496)
        {
          v149 = 4;
        }

        else
        {
          v149 = 5;
        }

        LODWORD(v493) = v140 - v147;
        if (v143 + v145 <= v148)
        {
          LODWORD(v476) = v147;
          v150 = ec_dec_bit_logp(v10, v145);
          v148 = v493;
          v147 = v476;
          v139 = v483;
          v144 = v496;
          v137 = v504;
          v141 = *v24;
          v142 = *v23;
          v143 = *v24 + __clz(*v23) - 32;
        }

        else
        {
          v150 = 0;
        }

        v151 = v494;
        v152 = v503;
        *&v139[4 * v503] = v150;
        v153 = v152 + 1;
        if (v137 != v153)
        {
          v156 = v150;
          do
          {
            if (v143 + v149 <= v148)
            {
              v157 = *(v10 + 9);
              v158 = v142 >> v149;
              v159 = v157;
              if (v157 >= v142 >> v149)
              {
                *(v10 + 9) = v157 - (v142 >> v149);
                v159 = v157 - v158;
              }

              v160 = v142 - v158;
              if (v157 >= v158)
              {
                v161 = v160;
              }

              else
              {
                v161 = v158;
              }

              *v23 = v161;
              if (v161 >= 0x800001)
              {
                v142 = v161;
              }

              else
              {
                v162 = *(v10 + 2);
                LODWORD(v145) = *(v10 + 11);
                v163 = *(v10 + 7);
                do
                {
                  v141 += 8;
                  *v24 = v141;
                  v142 = v161 << 8;
                  *v23 = v161 << 8;
                  if (v163 < v162)
                  {
                    v164 = *v10;
                    *(v10 + 7) = v163 + 1;
                    v135 = *(v164 + v163++);
                  }

                  else
                  {
                    v135 = 0;
                  }

                  *(v10 + 11) = v135;
                  v159 = (((v159 & 0x7FFFFF) << 8) | ((v135 | (v145 << 8)) >> 1)) ^ 0xFF;
                  *(v10 + 9) = v159;
                  v145 = v135;
                  v146 = v161 > 0x8000;
                  v161 <<= 8;
                }

                while (!v146);
              }

              v156 ^= v157 < v158;
              v143 = v141 + __clz(v142) - 32;
              v150 = v156 | v150;
              v148 = v493;
            }

            *&v139[4 * v153++] = v156;
          }

          while (v137 != v153);
        }
      }

      if (v147)
      {
        v154 = v505;
        if (v28[v150 + (4 * v144)] == v28[((4 * (v144 & 1)) | 2u) + v150])
        {
          v155 = 0;
          if (v503 >= v137)
          {
            goto LABEL_162;
          }
        }

        else
        {
          v150 = ec_dec_bit_logp(v10, 1);
          v139 = v483;
          v144 = v496;
          v151 = v494;
          v155 = 2 * v150;
          if (v503 >= v504)
          {
            goto LABEL_162;
          }
        }
      }

      else
      {
        v155 = 0;
        v154 = v505;
        if (v503 >= v137)
        {
          goto LABEL_162;
        }
      }

      v165 = (v155 + 4 * v144);
      v166 = v499 - v503;
      v167 = v503;
      if ((v499 - v503) < 2)
      {
        goto LABEL_160;
      }

      v167 = (v166 & 0xFFFFFFFFFFFFFFFELL) + v503;
      v168 = &v139[4 * v503 + 4];
      v169 = v166 & 0xFFFFFFFFFFFFFFFELL;
      do
      {
        v170 = v28[v165 + *v168];
        *(v168 - 1) = v28[v165 + *(v168 - 1)];
        *v168 = v170;
        v168 += 2;
        v169 -= 2;
      }

      while (v169);
      if (v166 != (v166 & 0xFFFFFFFFFFFFFFFELL))
      {
LABEL_160:
        v171 = v499 - v167;
        v172 = &v139[4 * v167];
        do
        {
          *v172 = v28[*v172 + v165];
          ++v172;
          --v171;
        }

        while (v171);
      }

LABEL_162:
      v173 = *v24;
      v174 = *v23;
      if ((*v24 + __clz(*v23) - 28) <= v151)
      {
        v176 = *(v10 + 9);
        v177 = v174 >> 5;
        v175 = -1;
        v178 = "\x19\x17\x02";
        do
        {
          v179 = v174;
          v180 = *v178++;
          v174 = v177 * v180;
          ++v175;
          v181 = v176 - v177 * v180;
        }

        while (v176 < v177 * v180);
        *(v10 + 9) = v181;
        v182 = v179 - v174;
        *v23 = v182;
        if (v182 < 0x800001)
        {
          v183 = *(v10 + 2);
          v184 = *(v10 + 11);
          v185 = *(v10 + 7);
          do
          {
            v173 += 8;
            *v24 = v173;
            *v23 = v182 << 8;
            if (v185 < v183)
            {
              v186 = *v10;
              *(v10 + 7) = v185 + 1;
              v187 = *(v186 + v185++);
            }

            else
            {
              v187 = 0;
            }

            *(v10 + 11) = v187;
            v181 = (((v181 & 0x7FFFFF) << 8) | ((v187 | (v184 << 8)) >> 1)) ^ 0xFF;
            *(v10 + 9) = v181;
            v184 = v187;
            v146 = v182 > 0x8000;
            v182 <<= 8;
          }

          while (!v146);
        }
      }

      else
      {
        v175 = 2;
      }

      v188 = MEMORY[0x28223BE20](v150, v145, v135);
      v192 = &v468[-((v191 + 15) & 0x7FFFFFFF0)];
      v193 = *(v8 + 2);
      if (v193 >= 1)
      {
        v194 = v154 - v26;
        v195 = *(v8 + 4);
        v196 = *(v8 + 19);
        v197 = *v195;
        if (v193 < 0x10 || ((v193 * v194 + v193 - 1) >= (v193 * v194) ? (_ZF = (v193 - 1) >> 32 == 0) : (_ZF = 0), !_ZF))
        {
          v199 = 0;
          goto LABEL_179;
        }

        v199 = 0;
        v333 = &v192[4 * v193];
        v189 = (v195 + 1);
        v190 = &v195[v193 + 1];
        v334 = v196 + (v193 * v194);
        v336 = v192 < v334 + v193 && v334 < v333;
        v337 = v189 >= v333 || v192 >= v190;
        if (!v337 || v336)
        {
          goto LABEL_179;
        }

        v338 = vdupq_n_s16(v197);
        v199 = v193 & 0x7FFFFFF0;
        v339 = vdupq_n_s32(v12);
        v340 = (v195 + 1);
        v341 = v193 * v194;
        v342.i64[0] = 0x4000000040;
        v342.i64[1] = 0x4000000040;
        v188 = v199;
        v189 = &v468[-((v191 + 15) & 0x7FFFFFFF0)];
        v343 = vdupq_n_s32(v154);
        do
        {
          v344 = vextq_s8(v338, *v340, 0xEuLL);
          v338 = v340[1];
          v345 = vextq_s8(*v340, v338, 0xEuLL);
          v346 = vsubl_s16(*v340->i8, *v344.i8);
          v347 = vsubl_high_s16(*v340, v344);
          v348 = *(v196 + v341);
          v189[2] = vshrq_n_s32(vmulq_s32(vshlq_u32(vsubl_s16(*v338.i8, *v345.i8), v339), vmulq_s32(v343, vaddq_s32(vqtbl1q_s8(v348, xmmword_273B8E7B0), v342))), 2uLL);
          v189[3] = vshrq_n_s32(vmulq_s32(vshlq_u32(vsubl_high_s16(v338, v345), v339), vmulq_s32(v343, vaddq_s32(vqtbl1q_s8(v348, xmmword_273B8E7A0), v342))), 2uLL);
          *v189 = vshrq_n_s32(vmulq_s32(vshlq_u32(v346, v339), vmulq_s32(v343, vaddq_s32(vqtbl1q_s8(v348, xmmword_273B8E7D0), v342))), 2uLL);
          v189[1] = vshrq_n_s32(vmulq_s32(vshlq_u32(v347, v339), vmulq_s32(v343, vaddq_s32(vqtbl1q_s8(v348, xmmword_273B8E7C0), v342))), 2uLL);
          v189 += 4;
          v340 += 2;
          v341 += 16;
          v188 -= 16;
        }

        while (v188);
        if (v199 != v193)
        {
          LOWORD(v197) = v338.i16[7];
LABEL_179:
          v200 = v193 * v194;
          v201 = v195 + 1;
          do
          {
            v202 = v201[v199];
            *&v192[4 * v199] = (((v202 - v197) << v12) * v154 * (*(v196 + v200 + v199) + 64)) >> 2;
            v188 = v199 + 1;
            LOWORD(v197) = v202;
            v199 = v188;
          }

          while (v188 < v193);
        }
      }

      v203 = MEMORY[0x28223BE20](v188, v189, v190);
      v209 = &v468[-v208];
      v210 = v502 << 6;
      v211 = __clz(v206);
      v212 = ((__PAIR64__(8 * (v211 + v207), ec_tell_frac_correction[(v206 >> (16 - v211) >> 12) - 8]) - __PAIR64__(v206 >> (16 - v211) >> 12, v206 >> (16 - v211))) >> 32) - 248;
      v213 = v503;
      v502 = &v468[-v208];
      LODWORD(v493) = v210;
      if (v503 < v504)
      {
        v214 = v500;
        v215 = *&v500[2 * v503];
        v216 = 6;
        v217 = v207;
        LODWORD(v218) = v207;
        v219 = v210;
        v220 = v499;
        while (1)
        {
          v221 = v213 + 1;
          v203 = *&v214[2 * v213 + 2];
          v222 = ((v203 - v215) * v154) << v12;
          v223 = 8 * v222;
          if (v222 <= 48)
          {
            v222 = 48;
          }

          if (v223 >= v222)
          {
            v204 = v222;
          }

          else
          {
            v204 = v223;
          }

          if (v212 + 8 * v216 >= v219)
          {
            goto LABEL_184;
          }

          v224 = *(v205 + 4 * v213);
          if (v224 < 1)
          {
            goto LABEL_184;
          }

          v225 = *(v10 + 9);
          v226 = v206 >> v216;
          v227 = v225;
          if (v225 >= v206 >> v216)
          {
            *(v10 + 9) = v225 - (v206 >> v216);
            v227 = v225 - v226;
          }

          v228 = v206 - v226;
          if (v225 >= v226)
          {
            v229 = v228;
          }

          else
          {
            v229 = v226;
          }

          *v23 = v229;
          if (v229 >= 0x800001)
          {
            v218 = v207;
            v206 = v229;
          }

          else
          {
            v230 = *(v10 + 2);
            v231 = *(v10 + 11);
            v232 = *(v10 + 7);
            do
            {
              v218 = (v218 + 8);
              *v24 = v218;
              v206 = v229 << 8;
              *v23 = v229 << 8;
              if (v232 < v230)
              {
                v233 = *v10;
                *(v10 + 7) = v232 + 1;
                v234 = *(v233 + v232++);
              }

              else
              {
                v234 = 0;
              }

              v227 = (((v227 & 0x7FFFFF) << 8) | ((v234 | (v231 << 8)) >> 1)) ^ 0xFF;
              *(v10 + 11) = v234;
              *(v10 + 9) = v227;
              v231 = v234;
              v217 = v218;
              v146 = v229 > 0x8000;
              v229 <<= 8;
            }

            while (!v146);
          }

          v235 = __clz(v206);
          v212 = ((__PAIR64__(8 * (v235 + v217), ec_tell_frac_correction[(v206 >> (16 - v235) >> 12) - 8]) - __PAIR64__(v206 >> (16 - v235) >> 12, v206 >> (16 - v235))) >> 32) - 248;
          if (v225 >= v226)
          {
            v207 = v218;
            LODWORD(v218) = v217;
            v154 = v505;
            v214 = v500;
            v209 = v502;
LABEL_184:
            *&v209[4 * v213] = 0;
            v215 = v203;
            ++v213;
            if (v221 == v220)
            {
              break;
            }
          }

          else
          {
            v219 -= v204;
            if ((((__PAIR64__(8 * (v235 + v217), ec_tell_frac_correction[(v206 >> (16 - v235) >> 12) - 8]) - __PAIR64__(v206 >> (16 - v235) >> 12, v206 >> (16 - v235))) >> 32) - 240) < v219 && v204 < v224)
            {
              v217 = v218;
              v237 = v204;
              v238 = v227;
              do
              {
                v239 = v206 >> 1;
                if (v227 >= v206 >> 1)
                {
                  *(v10 + 9) = v227 - (v206 >> 1);
                  v238 = v227 - v239;
                }

                v240 = v206 - v239;
                if (v227 >= v239)
                {
                  v241 = v240;
                }

                else
                {
                  v241 = v239;
                }

                *v23 = v241;
                if (v241 >= 0x800001)
                {
                  v206 = v241;
                }

                else
                {
                  v242 = *(v10 + 2);
                  v243 = *(v10 + 11);
                  v244 = *(v10 + 7);
                  do
                  {
                    v218 = (v218 + 8);
                    *v24 = v218;
                    v206 = v241 << 8;
                    *v23 = v241 << 8;
                    if (v244 < v242)
                    {
                      v245 = *v10;
                      *(v10 + 7) = v244 + 1;
                      v246 = *(v245 + v244++);
                    }

                    else
                    {
                      v246 = 0;
                    }

                    v238 = (((v238 & 0x7FFFFF) << 8) | ((v246 | (v243 << 8)) >> 1)) ^ 0xFF;
                    *(v10 + 11) = v246;
                    *(v10 + 9) = v238;
                    v243 = v246;
                    v217 = v218;
                    v146 = v241 > 0x8000;
                    v241 <<= 8;
                  }

                  while (!v146);
                }

                v247 = __clz(v206);
                v212 = ((__PAIR64__(8 * (v247 + v218), ec_tell_frac_correction[(v206 >> (16 - v247) >> 12) - 8]) - __PAIR64__(v206 >> (16 - v247) >> 12, v206 >> (16 - v247))) >> 32) - 248;
                if (v227 >= v239)
                {
                  break;
                }

                v237 += v204;
                v219 -= v204;
                v248 = (((__PAIR64__(8 * (v247 + v218), ec_tell_frac_correction[(v206 >> (16 - v247) >> 12) - 8]) - __PAIR64__(v206 >> (16 - v247) >> 12, v206 >> (16 - v247))) >> 32) - 240) < v219 && v237 < v224;
                v227 = v238;
              }

              while (v248);
            }

            else
            {
              v237 = v204;
            }

            v209 = v502;
            *&v502[4 * v213] = v237;
            if (v216 <= 3)
            {
              v249 = 3;
            }

            else
            {
              v249 = v216;
            }

            v250 = v249 - 1;
            if (v237 > 0)
            {
              v216 = v250;
            }

            v207 = v218;
            LODWORD(v218) = v217;
            v220 = v499;
            v154 = v505;
            v214 = v500;
            v215 = v203;
            ++v213;
            if (v221 == v499)
            {
              break;
            }
          }
        }
      }

      MEMORY[0x28223BE20](v203, v485, v204);
      v255 = (v251 + 15) & 0x7FFFFFFF0;
      v500 = &v468[-v255];
      if (v256 + 48 <= v257)
      {
        v259 = *(v10 + 9);
        v260 = v253 >> 7;
        v261 = -1;
        v262 = "~|wmW)\x13\t\x04\x02";
        do
        {
          v263 = v253;
          v264 = *v262++;
          v253 = v260 * v264;
          ++v261;
          v265 = v259 - v260 * v264;
        }

        while (v259 < v260 * v264);
        *(v10 + 9) = v265;
        v253 = v263 - v253;
        *v23 = v253;
        v258 = v496;
        if (v253 < 0x800001)
        {
          v266 = *(v10 + 2);
          v267 = *(v10 + 11);
          v268 = *(v10 + 7);
          do
          {
            v254 += 8;
            *v24 = v254;
            v271 = v253 << 8;
            *v23 = v253 << 8;
            if (v268 < v266)
            {
              v269 = *v10;
              *(v10 + 7) = v268 + 1;
              v270 = *(v269 + v268++);
            }

            else
            {
              v270 = 0;
            }

            *(v10 + 11) = v270;
            v265 = (((v265 & 0x7FFFFF) << 8) | ((v270 | (v267 << 8)) >> 1)) ^ 0xFF;
            *(v10 + 9) = v265;
            v267 = v270;
            v146 = v253 > 0x8000;
            v253 <<= 8;
          }

          while (!v146);
          v253 = v271;
        }
      }

      else
      {
        v258 = v496;
      }

      v272 = __clz(v253);
      v273 = (v493 - 8 * (v272 + v254) + (v253 >> (16 - v272) >> 12) - (v253 >> (16 - v272) <= ec_tell_frac_correction[(v253 >> (16 - v272) >> 12) - 8]) + 248) >= v27;
      v274 = 8 * v273;
      if (!v258)
      {
        v273 = 0;
        v274 = 0;
      }

      if (v12 < 2)
      {
        v273 = 0;
      }

      v475 = v273;
      if (v12 >= 2)
      {
        v275 = v274;
      }

      else
      {
        v275 = 0;
      }

      v474 = v275;
      v276 = MEMORY[0x28223BE20](v255, v251, v252);
      v466 = v154;
      v476 = &v468[-MEMORY[0x28223BE20](v276, v277, v278)];
      v485 = v279;
      v280 = v503;
      v284 = v500;
      v285 = v504;
      v473 = clt_compute_allocation(v8, v503, v504, v502, v281, v282, &v510 + 1, &v510, v283, &v509, v279, v500, v476, v466, v12, v10, 0, 0, 0);
      v146 = v280 < v285;
      v286 = v508;
      v287 = v501;
      if (v146)
      {
        if (v505 <= 1)
        {
          v288 = 1;
        }

        else
        {
          v288 = v505;
        }

        v289 = v503;
        do
        {
          v290 = *&v284[4 * v289];
          if (v290 >= 1)
          {
            v291 = 0;
            v292 = &v287[4 * v289];
            v293 = *(v8 + 2);
            v294 = *(v10 + 4);
            v295 = *(v10 + 5);
            v296 = *v24;
            do
            {
              if (v295 >= v290)
              {
                v297 = v295;
              }

              else
              {
                v300 = *(v10 + 2);
                v301 = *(v10 + 3);
                do
                {
                  while (v301 < v300)
                  {
                    v302 = *v10;
                    *(v10 + 3) = ++v301;
                    v294 |= *(v302 + v300 - v301) << v295;
                    v297 = v295 + 8;
                    v146 = v295 < 17;
                    v295 += 8;
                    if (!v146)
                    {
                      goto LABEL_262;
                    }
                  }

                  v297 = v295 + 8;
                  v146 = v295 < 17;
                  v295 += 8;
                }

                while (v146);
              }

LABEL_262:
              v298 = v294 & ~(-1 << v290);
              v294 >>= v290;
              v295 = v297 - v290;
              *(v10 + 4) = v294;
              *(v10 + 5) = v297 - v290;
              v296 += v290;
              v299 = *&v292[4 * v291 * v293];
              *v24 = v296;
              *&v292[4 * v291 * v293] = ((((v298 + 0.5) * (1 << (14 - v290))) * 0.000061035) + -0.5) + v299;
              ++v291;
            }

            while (v291 != v288);
          }

          ++v289;
        }

        while (v285 != v289);
      }

      v502 = v8;
      v303 = 4 * (v498 / 2 - v286 + 2048);
      v304 = &v515;
      v305 = v497;
      v306 = v489;
      do
      {
        v307 = *v304++;
        v308 = memmove(v307, &v307[4 * v306], v303);
        --v305;
      }

      while (v305);
      v311 = v505;
      v470 = v488 * v505;
      v312 = MEMORY[0x28223BE20](v308, v309, v310);
      MEMORY[0x28223BE20](v312, v313, v314);
      v317 = &v468[-v316];
      v318 = &v468[4 * v306 - v316];
      if (v311 == 2)
      {
        v319 = v318;
      }

      else
      {
        v319 = 0;
      }

      v467 = a1[5].i32[0];
      v465 = v493 - v474;
      v464 = v175;
      v320 = v502;
      v321 = v503;
      v322 = v504;
      v493 = v315;
      quant_all_bands(0, v502, v503, v504, v317, v319, v315, 0, v485, v477, v464, v510, v483, v465, v509, v10, v12, v473, &a1[5] + 1, 0, v467);
      if (v475)
      {
        v324 = *(v10 + 4);
        v323 = *(v10 + 5);
        v325 = v494;
        v326 = v500;
        if (v323)
        {
          v327 = v504;
          v328 = v478;
        }

        else
        {
          v329 = *(v10 + 2);
          v330 = *(v10 + 3);
          v327 = v504;
          v328 = v478;
          if (v330 >= v329)
          {
            v332 = 0;
          }

          else
          {
            v331 = *v10;
            *(v10 + 3) = ++v330;
            v332 = *(v331 + v329 - v330);
          }

          if (v330 >= v329)
          {
            v350 = 0;
          }

          else
          {
            v349 = *v10;
            *(v10 + 3) = ++v330;
            v350 = *(v349 + v329 - v330) << 8;
          }

          v351 = v332 | v350;
          if (v330 >= v329)
          {
            v353 = 0;
          }

          else
          {
            v352 = *v10;
            *(v10 + 3) = ++v330;
            v353 = *(v352 + v329 - v330) << 16;
          }

          v354 = v351 | v353;
          if (v330 >= v329)
          {
            v357 = 0;
          }

          else
          {
            v355 = *v10;
            v356 = v330 + 1;
            *(v10 + 3) = v356;
            v357 = *(v355 + v329 - v356) << 24;
          }

          v324 |= v354 | v357;
          v323 = 32;
        }

        *(v10 + 4) = v324 >> 1;
        *(v10 + 5) = v323 - 1;
        v358 = (*v24)++;
        unquant_energy_finalise(v320, v321, v327, v501, v326, v476, v325 + ~v358 - __clz(*v23) + 32, v10, v505);
        if (v324)
        {
          anti_collapse(v320, v317, v493, v12, v505, v508, v321, v504, v501, v484, v492, v485, a1[5].i32[1]);
        }
      }

      else
      {
        unquant_energy_finalise(v320, v321, v322, v501, v500, v476, v494 - *v24 - __clz(*v23) + 32, v10, v311);
        v328 = v478;
      }

      v359 = v498;
      if (v328)
      {
        v360 = 0;
      }

      else
      {
        if (v470 >= 1)
        {
          memset_pattern16(v501, &unk_273BBA7B0, 4 * v470);
        }

        v360 = v469;
      }

      celt_synthesis(v320, v317, &v513, v501, v321, v479, v505, v486, v496, v12, a1[2].u32[1], v360, a1[5].i32[0]);
      v367 = 0;
      v368 = 8 * v497;
      do
      {
        *v361.i8 = a1[8];
        v369 = COERCE_DOUBLE(vmax_s32(*v361.i8, 0xF0000000FLL));
        *&a1[8] = v369;
        v370 = (&v513)[v367 / 8];
        v361.i32[0] = a1[9].i32[1];
        v361 = comb_filter(v370, v370, SHIDWORD(v369), SLODWORD(v369), *(v320 + 12), a1[10].i32[1], a1[10].i32[0], *(v320 + 9), v361, a1[9].f32[0], v369, v362, v363, v364, v365, v366, v359);
        if (v12)
        {
          v361.i32[0] = a1[9].i32[0];
          v361 = comb_filter(&v370[4 * *(v320 + 12)], &v370[4 * *(v320 + 12)], a1[8].i32[0], v507, v508 - *(v320 + 12), a1[10].i32[0], v506, *(v320 + 9), v361, v70, v371, v362, v363, v364, v365, v366, v359);
        }

        v367 += 8;
      }

      while (v368 != v367);
      v372 = a1[8].i32[0];
      v373 = a1[9].i32[0];
      v374 = a1[10].i32[0];
      v376 = v506;
      v375 = v507;
      a1[8].i32[0] = v507;
      a1[8].i32[1] = v372;
      a1[9].f32[0] = v70;
      a1[9].i32[1] = v373;
      a1[10].i32[0] = v376;
      a1[10].i32[1] = v374;
      if (v12)
      {
        a1[8].i32[1] = v375;
        a1[9].f32[1] = v70;
        a1[10].i32[1] = v376;
      }

      v377 = v486;
      v378 = v488;
      v379 = v503;
      if (v505 == 1)
      {
        memcpy(&v501[4 * v488], v501, 4 * v488);
        v378 = v488;
      }

      v380 = v482;
      v381 = v508;
      v382 = v504;
      v383 = v491;
      v384 = v487;
      v385 = v490;
      v386 = v495;
      if (!v496)
      {
        v394 = 4 * v487;
        v395 = v484;
        memcpy(v492, v484, 4 * v487);
        memcpy(v395, v501, v394);
        v386 = v495;
        v385 = v490;
        v384 = v487;
        v383 = v491;
        v382 = v504;
        v378 = v488;
        v381 = v508;
        v380 = v482;
        goto LABEL_338;
      }

      if (v495 < 1)
      {
        goto LABEL_352;
      }

      if (v487 <= 1)
      {
        v387 = 1;
      }

      else
      {
        v387 = v487;
      }

      if (v487 > 15 && ((v388 = (a1 + 4 * v491 + 4 * v490), v389 = &v388->u64[v487 / 2], v389 >= v388->u64 + 4 * v387) || v501 >= v389 + 4 * v387 + 96))
      {
        v390 = v387 & 0x7FFFFFF8;
        v460 = v388 + 7;
        v461 = (v460 + 4 * v487);
        v462 = v390;
        do
        {
          v361 = vbslq_s8(vcgtq_f32(v460[-1], v461[-1]), v461[-1], v460[-1]);
          v463 = vbslq_s8(vcgtq_f32(*v460, *v461), *v461, *v460);
          v461[-1] = v361;
          *v461 = v463;
          v461 += 2;
          v460 += 2;
          v462 -= 8;
        }

        while (v462);
        if (v390 == v387)
        {
          goto LABEL_338;
        }
      }

      else
      {
        v390 = 0;
      }

      v391 = v387 - v390;
      v392 = &a1[12] + v390 + v383 + v385;
      do
      {
        v393 = v392[v384];
        if (v393 >= *v392)
        {
          v393 = *v392;
        }

        v392[v384] = v393;
        ++v392;
        --v391;
      }

      while (v391);
LABEL_338:
      v396 = a1[7].i32[0] + v472;
      *v361.i32 = v396 * 0.001;
      if (v396 > 160)
      {
        *v361.i32 = 0.16;
      }

      if (v386 >= 1)
      {
        if (v384 <= 1)
        {
          v397 = 1;
        }

        else
        {
          v397 = v384;
        }

        if (v384 > 15 && ((v398 = a1 + 12 * v384 + 4 * v383 + 4 * v385, v398 >= a1 + 4 * v383 + 4 * v385 + 4 * v397) || v501 >= v398 + 4 * v397 + 96))
        {
          v399 = v397 & 0x7FFFFFF8;
          v453 = vdupq_lane_s32(*v361.i8, 0);
          v454 = (&a1[14] + 12 * v384 + 4 * v383 + 4 * v385);
          v455 = (&a1[14] + 4 * v383 + 4 * v385);
          v456 = v399;
          do
          {
            v457 = vaddq_f32(v453, v454[-1]);
            v458 = vaddq_f32(v453, *v454);
            v459 = vbslq_s8(vcgtq_f32(*v455, v458), v458, *v455);
            v454[-1] = vbslq_s8(vcgtq_f32(v455[-1], v457), v457, v455[-1]);
            *v454 = v459;
            v454 += 2;
            v455 += 2;
            v456 -= 8;
          }

          while (v456);
          if (v399 == v397)
          {
            goto LABEL_352;
          }
        }

        else
        {
          v399 = 0;
        }

        v400 = v397 - v399;
        v401 = 4 * v399;
        v402 = &a1[12] + v399 + v383 + v385;
        v403 = (&a1[12] + 12 * v384 + 4 * v383 + 4 * v385 + v401);
        do
        {
          v404 = *v402++;
          v405 = v404;
          v406 = *v361.i32 + *v403;
          if (v406 >= v404)
          {
            v406 = v405;
          }

          *v403++ = v406;
          --v400;
        }

        while (v400);
      }

LABEL_352:
      if (v379 <= 0)
      {
        goto LABEL_357;
      }

      if (v379 > 0xB)
      {
        v407 = v384 & 0x1FFFFFFFFFFFFFFCLL;
        if ((v384 & 0x1FFFFFFFFFFFFFFCLL) != 0)
        {
          v407 = v384 & 0x3FFFFFFFFFFFFFF8;
          if ((v384 & 0x3FFFFFFFFFFFFFF8) != 0)
          {
            v407 = 0;
            if (-4 * v384 >= 0x20)
            {
              v423 = 0;
              v407 = v379 & 0x7FFFFFF8;
              v424 = 4 * v383 + 4 * v385;
              v425 = a1 + v424;
              v426 = &a1[v384] + v424;
              v427 = a1 + 4 * v384 + v424;
              __asm { FMOV            V1.4S, #-28.0 }

              do
              {
                v431 = &v425[v423];
                *(v431 + 6) = 0uLL;
                *(v431 + 7) = 0uLL;
                v432 = &v426[v423];
                *(v432 + 6) = _Q1;
                *(v432 + 7) = _Q1;
                v433 = &v427[v423];
                v423 += 32;
                *(v433 + 6) = _Q1;
                *(v433 + 7) = _Q1;
              }

              while (32 * ((v379 >> 3) & 0xFFFFFFF) != v423);
              if (v407 == v379)
              {
LABEL_357:
                if (v382 < v378)
                {
                  v411 = v378 - v499;
                  v412 = v382;
                  if ((v378 - v499) <= 0xB)
                  {
                    goto LABEL_359;
                  }

                  v412 = v382;
                  if ((v384 & 0x1FFFFFFFFFFFFFFCLL) == 0)
                  {
                    goto LABEL_359;
                  }

                  v412 = v382;
                  if ((v384 & 0x3FFFFFFFFFFFFFF8) == 0)
                  {
                    goto LABEL_359;
                  }

                  v412 = v382;
                  if (-4 * v384 < 0x20)
                  {
                    goto LABEL_359;
                  }

                  v412 = (v411 & 0xFFFFFFFFFFFFFFF8) + v499;
                  v443 = (&a1[14] + 4 * v499 + 4 * v383 + 4 * v385);
                  __asm { FMOV            V1.4S, #-28.0 }

                  v445 = v411 & 0xFFFFFFFFFFFFFFF8;
                  do
                  {
                    *(v443 - 1) = 0uLL;
                    *v443 = 0uLL;
                    v446 = (v443 + 8 * v384);
                    *(v446 - 1) = _Q1;
                    *v446 = _Q1;
                    v447 = (v443 + 4 * v384);
                    v443 += 2;
                    *(v447 - 1) = _Q1;
                    *v447 = _Q1;
                    v445 -= 8;
                  }

                  while (v445);
                  if (v411 != (v411 & 0xFFFFFFFFFFFFFFF8))
                  {
LABEL_359:
                    v413 = 0;
                    v414 = v378 - v412;
                    v415 = &a1[12] + 4 * v412 + 4 * v383 + 4 * v385;
                    do
                    {
                      *(v415 + 4 * v413) = 0;
                      *(v415 + 8 * v384 + 4 * v413) = -1042284544;
                      *(v415 + 4 * v384 + 4 * v413++) = -1042284544;
                    }

                    while (v414 != v413);
                  }
                }

                if (v379 < 1)
                {
                  goto LABEL_366;
                }

                if (v379 >= 0xC)
                {
                  v416 = v384 & 0x1FFFFFFFFFFFFFFCLL;
                  if ((v384 & 0x1FFFFFFFFFFFFFFCLL) != 0)
                  {
                    v416 = v384 & 0x3FFFFFFFFFFFFFF8;
                    if ((v384 & 0x3FFFFFFFFFFFFFF8) != 0)
                    {
                      v416 = 0;
                      if (-4 * v384 >= 0x20)
                      {
                        v434 = 0;
                        v416 = v379 & 0x7FFFFFF8;
                        v435 = 4 * v378 + 4 * v383 + 4 * v385;
                        v436 = &a1[12] + 4 * v384 + v435;
                        v437 = a1 + v435;
                        v438 = &a1[v384 + 12] + v435;
                        __asm { FMOV            V1.4S, #-28.0 }

                        do
                        {
                          v440 = &v437[v434];
                          *(v440 + 6) = 0uLL;
                          *(v440 + 7) = 0uLL;
                          v441 = (v438 + v434);
                          *v441 = _Q1;
                          v441[1] = _Q1;
                          v442 = (v436 + v434);
                          v434 += 32;
                          *v442 = _Q1;
                          v442[1] = _Q1;
                        }

                        while (32 * ((v379 >> 3) & 0xFFFFFFF) != v434);
                        if (v416 == v379)
                        {
                          goto LABEL_366;
                        }
                      }
                    }
                  }
                }

                else
                {
                  v416 = 0;
                }

                v417 = 0;
                v418 = v379 - v416;
                v419 = &a1[12] + 4 * v416 + 4 * v378 + 4 * v383 + 4 * v385;
                do
                {
                  *(v419 + 4 * v417) = 0;
                  *(v419 + 8 * v384 + 4 * v417) = -1042284544;
                  *(v419 + 4 * v384 + 4 * v417++) = -1042284544;
                }

                while (v418 != v417);
LABEL_366:
                if (v382 < v378)
                {
                  v420 = v378 - v499;
                  if ((v378 - v499) < 0xC)
                  {
                    goto LABEL_368;
                  }

                  if ((v384 & 0x1FFFFFFFFFFFFFFCLL) == 0)
                  {
                    goto LABEL_368;
                  }

                  if ((v384 & 0x3FFFFFFFFFFFFFF8) == 0)
                  {
                    goto LABEL_368;
                  }

                  if (-4 * v384 < 0x20)
                  {
                    goto LABEL_368;
                  }

                  v382 = (v420 & 0xFFFFFFFFFFFFFFF8) + v499;
                  v448 = (&a1[14] + 4 * v499 + 4 * v378 + 4 * v383 + 4 * v385);
                  v449 = (v448 + 4 * v384);
                  v450 = (v448 + 8 * v384);
                  __asm { FMOV            V1.4S, #-28.0 }

                  v452 = v420 & 0xFFFFFFFFFFFFFFF8;
                  do
                  {
                    *(v448 - 1) = 0uLL;
                    *v448 = 0uLL;
                    *(v450 - 1) = _Q1;
                    *v450 = _Q1;
                    v448 += 2;
                    *(v449 - 1) = _Q1;
                    *v449 = _Q1;
                    v449 += 2;
                    v450 += 2;
                    v452 -= 8;
                  }

                  while (v452);
                  if (v420 != (v420 & 0xFFFFFFFFFFFFFFF8))
                  {
LABEL_368:
                    v421 = 0;
                    v422 = &a1[12] + 4 * v382 + 4 * v378 + 4 * v383 + 4 * v385;
                    do
                    {
                      *(v422 + 4 * v421) = 0;
                      *(v422 + 8 * v384 + 4 * v421) = -1042284544;
                      *(v422 + 4 * v384 + 4 * v421++) = -1042284544;
                    }

                    while (v378 - v382 != v421);
                  }
                }

                a1[5].i32[1] = *v23;
                deemphasis(&v513, v380, v381, v377, a1[2].i32[1], v320 + 4, a1 + 11, v481);
                a1[7].i32[0] = 0;
                if ((*v24 + __clz(*v23) - 32) > v494)
                {
                  return 4294967293;
                }

                if (*v471)
                {
                  a1[6].i32[0] = 1;
                }

                return (v508 / a1[2].i32[1]);
              }
            }
          }
        }
      }

      else
      {
        v407 = 0;
      }

      v408 = 0;
      v409 = v379 - v407;
      v410 = &a1[12] + 4 * v407 + 4 * v383 + 4 * v385;
      do
      {
        *(v410 + 4 * v408) = 0;
        *(v410 + 8 * v384 + 4 * v408) = -1042284544;
        *(v410 + 4 * v384 + 4 * v408++) = -1042284544;
      }

      while (v409 != v408);
      goto LABEL_357;
    }

LABEL_46:
    v478 = 0;
    *v24 = v65 - v66 + 32;
    v469 = 1;
    v67 = v65;
    goto LABEL_49;
  }

  return result;
}

void celt_decode_lost(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v6 = v5;
  v7 = v4;
  v8 = v3;
  v9 = 0;
  v393 = *MEMORY[0x277D85DE8];
  v10 = v3[3];
  v390 = 0;
  v391 = 0;
  v388 = 0;
  v389 = 0;
  v11 = *v3;
  v12 = *(*v3 + 4);
  v13 = *(*v3 + 8);
  v371 = v12;
  v14 = *(v11 + 32);
  v15 = v3 + 24;
  v366 = v12;
  v16 = v4;
  v17 = v12 + 2048;
  if (v10 <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = v10;
  }

  v19 = 4 * v17;
  if (v10 < 2)
  {
    goto LABEL_8;
  }

  v9 = v18 & 0x7FFFFFFE;
  v20 = &v3[-v4 + 2072];
  v21 = 8 * v17;
  v22 = &v389;
  v23 = &v391;
  v24 = v9;
  v3 += 24;
  do
  {
    v4 = &v3[v19 / 4];
    v5 = v20 + v19;
    *(v22 - 1) = v20;
    *v22 = v20 + v19;
    v20 += v21;
    *(v23 - 1) = v3;
    *v23 = &v3[v19 / 4];
    v3 = (v3 + v21);
    v22 += 2;
    v23 += 2;
    v24 -= 2;
  }

  while (v24);
  if (v9 != v18)
  {
LABEL_8:
    v25 = v18 - v9;
    v26 = &v388 + v9;
    v27 = &(&v390)[v9];
    v28 = &v8[v9 * v17];
    do
    {
      *v27++ = v28 + 24;
      *v26++ = v28 + 8288 - 4 * v16;
      v28 = (v28 + v19);
      --v25;
    }

    while (v25);
  }

  v29 = v17 * v10;
  v367 = &v15[v29];
  v30 = *(v8 + 6);
  v365 = *(v8 + 14);
  v375 = v8;
  v364 = v18;
  v317 = v7;
  if (v365 <= 39 && !v30 && !*(v8 + 15))
  {
    if (v365)
    {
      v107 = *(v8 + 13);
      v108 = 0.8;
    }

    else
    {
      v392[0].i32[0] = 0;
      pitch_downsample(&v390, &v385, 2048, v10);
      pitch_search(&v387[84], v385.f32, 1328, 620, v392);
      v107 = (720 - v392[0].i32[0]);
      *(v8 + 13) = v107;
      v108 = 1.0;
    }

    v326 = v107;
    v306 = &v285;
    v362 = v16;
    v361 = -v16;
    v109 = MEMORY[0x28223BE20](v107, v4, v5);
    v356 = &v285 - ((v110 + 15) & 0x7FFFFFFF0);
    v112 = MEMORY[0x28223BE20](v109, v356, v111);
    v359 = &v285 - v118;
    v119 = 0;
    v120 = (v116 >> 1);
    v363 = 2048 - v7;
    v357 = 4 * v363;
    v121 = v114 - v112;
    v122 = v371 + v7;
    v355 = (v371 / 2);
    v354 = 2047 - v7;
    v123 = *(v11 + 72);
    v353 = 2046 - v7;
    v352 = 2045 - v7;
    v351 = 2044 - v7;
    v350 = 2043 - v7;
    v349 = 2042 - v7;
    v348 = 2041 - v7;
    v347 = 2040 - v7;
    v346 = 2039 - v7;
    v345 = 2038 - v7;
    v344 = 2037 - v7;
    v343 = 2036 - v7;
    v342 = 2035 - v7;
    v341 = 2034 - v7;
    v340 = 2033 - v7;
    v339 = 2032 - v7;
    v369 = v371 + v7;
    if (v371 + 1 > v369)
    {
      v124 = v371 + 1;
    }

    else
    {
      v124 = v122;
    }

    v125 = v114 - v120;
    v323 = v114 - v116;
    _VF = __OFSUB__(v114 - v116 + v120 - 1, v114 - v116);
    v127 = v114 - 1;
    v324 = v125;
    v128 = v120 - 1 < 0 != _VF || v127 < v125;
    v338 = 2031 - v7;
    _ZF = !v128 && (v120 - 1) >> 32 == 0;
    v314 = xmmword_273BBA760;
    v313 = xmmword_273BBA770;
    v312 = xmmword_273BBA780;
    v311 = xmmword_273BBA790;
    v310 = xmmword_273BBA7A0;
    v336 = 2029 - v7;
    v337 = 2030 - v7;
    v334 = 2027 - v7;
    v335 = 2028 - v7;
    v332 = 2025 - v7;
    v333 = 2026 - v7;
    v331 = 2024 - v7;
    v322 = v121;
    v130 = v121 - v7 + 1024;
    v131 = 4 * (v371 / 2);
    v132 = 4 * v371 - v131;
    v303 = v113 + v132;
    v304 = v123 + v132;
    v133 = v124 - v371;
    v134 = 4 * v7;
    v285 = v117 - v134 + 0x2000;
    v135 = &v8[v29];
    v136 = (v135 + 28);
    v370 = v135 + 23;
    v318 = 0x2000 - v134;
    v308 = 8208 - v134;
    v289 = 4 * v371 - v134 + 8208;
    v137 = 4 * v371 - 16;
    v291 = (v113 + v137);
    v292 = (v123 + v137);
    v302 = v123->u64 + 4 * v371;
    v315 = 4 * v371 - 4;
    v138 = vdupq_n_s32(0xB88637BE);
    v309 = v138;
    v360 = v116;
    v329 = 4 * v116;
    v328 = &v385 - v329;
    v307 = 4 * (v371 + v7);
    v300 = v123 + v131;
    v301 = v113->u64 + 4 * v371;
    v305 = v131;
    v299 = v113 + v131;
    v288 = v123 + v117;
    v325 = (&v285 - 392);
    v139 = !_ZF;
    v321 = v139;
    v358 = (v116 >> 1);
    v374 = (v371 + v7);
    v319 = v122 & 0x7FFFFFF8;
    v320 = v120 & 0x7FFFFFF8;
    v293 = v117;
    v294 = v133 & 0xFFFFFFFFFFFFFFF8;
    v286 = (v133 & 0xFFFFFFFFFFFFFFF8) + v371;
    v287 = v115 & 0x7FFFFFF8;
    v297 = v133;
    v298 = (v371 / 2) & 0x3FFFFFF8;
    v316 = &v386;
    v295 = v123 + 1;
    v296 = &v375;
    v290 = v113 + 1;
    v140 = v367;
    v327 = v123;
    v330 = v130;
    while (1)
    {
      v141 = (&v390)[v119];
      if ((v325 - v141) >= 0x20)
      {
        v143 = (v141 + 4016);
        v144 = 1048;
        v145 = v316;
        do
        {
          v138 = v143[-1];
          v146 = *v143;
          v145[-1] = v138;
          *v145 = v146;
          v143 += 2;
          v145 += 2;
          v144 -= 8;
        }

        while (v144);
      }

      else
      {
        for (i = 0; i != 1048; ++i)
        {
          v138.i32[0] = *&v141[4 * i + 4000];
          v385.i32[i] = v138.i32[0];
        }
      }

      v373 = v119;
      v372 = v136;
      if (v365)
      {
        v147 = 3 * v119;
        goto LABEL_133;
      }

      v148 = v387;
      if (v371)
      {
        v368 = &v285;
        v148 = v392;
        memcpy(v392, v387, sizeof(v392));
        if (v371 >= 1)
        {
          v149 = 0;
          v150 = 0x3FF00000000;
          v151 = v293;
          do
          {
            v152 = v123->f32[v149 / 4];
            v148 = v392;
            *&v392[0].i32[v149 / 4] = v387[0].f32[v149 / 4] * v152;
            *v138.i32 = v152 * *(v387[0].f32 + (v150 >> 30));
            *(v392[0].i32 + (v150 >> 30)) = v138.i32[0];
            v150 -= 0x100000000;
            v149 += 4;
          }

          while (v151 != v149);
        }
      }

      celt_pitch_xcorr_c(v148->f32, v148, &v376, 1000, 25, v138);
      v153 = 0;
      v154 = v148;
      v155 = v148 + 251;
      v156 = 24;
      v157 = 1000;
      v158 = v373;
      v159 = v372;
      do
      {
        v160 = 0.0;
        if (v153 > 0x17)
        {
          goto LABEL_102;
        }

        v161 = 24 - v153;
        if (24 - v153 < 8)
        {
          v162 = v157;
          goto LABEL_106;
        }

        if (-1002 - v153 < (23 - v153))
        {
          v162 = v157;
          do
          {
LABEL_106:
            v160 = v160 + (v148->f32[v162] * v154->f32[v162]);
            ++v162;
          }

          while (v162 != 1024);
          goto LABEL_102;
        }

        v162 = v157;
        if ((23 - v153) >> 32)
        {
          goto LABEL_106;
        }

        v163 = v156 & 0xFFFFFFFFFFFFFFF8;
        v162 = v157 + (v161 & 0xFFFFFFFFFFFFFFF8);
        v164 = v148 + 251;
        v165 = v155;
        do
        {
          v166 = vmulq_f32(v165[-1], v164[-1]);
          v167 = vmulq_f32(*v165, *v164);
          v160 = (((((((v160 + v166.f32[0]) + v166.f32[1]) + v166.f32[2]) + v166.f32[3]) + v167.f32[0]) + v167.f32[1]) + v167.f32[2]) + v167.f32[3];
          v165 += 2;
          v164 += 2;
          v163 -= 8;
        }

        while (v163);
        if (v161 != (v161 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_106;
        }

LABEL_102:
        *(&v376 + v153) = v160 + *(&v376 + v153);
        ++v153;
        ++v157;
        --v156;
        v155 = (v155 + 4);
        v154 = (v154 - 4);
      }

      while (v153 != 25);
      v169 = v377 + (v377 * -0.000064);
      v376 = v376 * 1.0001;
      v168 = v376;
      v377 = v169;
      v378 = vmlaq_f32(v378, v314, vmulq_f32(vmulq_f32(v378, v309), v314));
      v379 = vmlaq_f32(v379, v313, vmulq_f32(vmulq_f32(v379, v309), v313));
      v380 = vmlaq_f32(v380, v312, vmulq_f32(vmulq_f32(v380, v309), v312));
      v381 = vmlaq_f32(v381, v311, vmulq_f32(vmulq_f32(v381, v309), v311));
      v382 = vmlaq_f32(v382, v310, vmulq_f32(vmulq_f32(v382, v309), v310));
      v383 = vmla_f32(v383, 0x41B8000041B00000, vmul_f32(vmul_f32(v383, *v309.f32), 0x41B8000041B00000));
      v384 = v384 + (((v384 * -0.000064) * 24.0) * 24.0);
      v147 = 3 * v158;
      v170 = &v367[24 * v158];
      *v170 = 0u;
      *(v170 + 1) = 0u;
      *(v170 + 2) = 0u;
      *(v170 + 3) = 0u;
      *(v170 + 4) = 0u;
      *(v170 + 5) = 0u;
      if (v168 > 1.0e-10)
      {
        v171 = 0;
        v172 = -(v169 + 0.0);
        v173 = v168 * 0.001;
        v174 = v370;
        v175 = v296;
        v176 = 1;
        while (1)
        {
          v178 = v176 >> 1;
          if (v176 >> 1 <= 1)
          {
            v178 = 1;
          }

          if (v176 == 25)
          {
            goto LABEL_133;
          }

          if (v171)
          {
            break;
          }

          v177 = v172 / v168;
          *v170 = v172 / v168;
LABEL_118:
          v168 = v168 + (-(v177 * v177) * v168);
          ++v176;
          ++v171;
          v175 = (v175 + 4);
          ++v174;
          if (v168 <= v173)
          {
            goto LABEL_133;
          }
        }

        if (v171 <= 7)
        {
          v179 = 0;
          v180 = 0.0;
          goto LABEL_128;
        }

        v181 = v171 & 0xFFFFFFFFFFFFFFF8;
        v179 = v171 & 0xFFFFFFFFFFFFFFF8;
        v180 = 0.0;
        v182 = v175;
        v183 = v159;
        do
        {
          v184 = vrev64q_s32(*v182);
          v185 = vrev64q_s32(v182[-1]);
          v186 = vmulq_f32(v183[-1], vextq_s8(v184, v184, 8uLL));
          v187 = vmulq_f32(*v183, vextq_s8(v185, v185, 8uLL));
          v180 = (((((((v180 + v186.f32[0]) + v186.f32[1]) + v186.f32[2]) + v186.f32[3]) + v187.f32[0]) + v187.f32[1]) + v187.f32[2]) + v187.f32[3];
          v183 += 2;
          v182 -= 2;
          v181 -= 8;
        }

        while (v181);
        if (v171 != v179)
        {
LABEL_128:
          v188 = v171 - v179;
          v189 = &v140[v179];
          do
          {
            v190 = *v189++;
            v180 = v180 + (v190 * *(&v376 + v188--));
          }

          while (v188);
        }

        v191 = 0;
        v192 = 4 * v178;
        v177 = -(v180 + *(&v376 + v171 + 1)) / v168;
        v170[v171] = v177;
        v193 = v174;
        do
        {
          v194 = *&v140[v191 / 4];
          v195 = *v193;
          *&v140[v191 / 4] = v194 + (v177 * *v193);
          *v193-- = v195 + (v177 * v194);
          v191 += 4;
        }

        while (v192 != v191);
        goto LABEL_118;
      }

LABEL_133:
      v196 = v328;
      v368 = &v367[8 * v147];
      v197 = v359;
      celt_fir_c();
      memcpy(v196 + 4192, v197, v329);
      if (v358 < 1)
      {
        v201 = 1.0;
        v200 = 1.0;
        v123 = v327;
        v198 = v326;
      }

      else
      {
        v123 = v327;
        v198 = v326;
        if ((v358 < 8) | v321 & 1)
        {
          v199 = 0;
          v200 = 1.0;
          v201 = 1.0;
        }

        else
        {
          v200 = 1.0;
          v202 = v323;
          v203 = v324;
          v204 = v320;
          v201 = 1.0;
          do
          {
            v205 = (v387 + 4 * v203);
            v206 = vmulq_f32(*v205, *v205);
            v207 = vmulq_f32(v205[1], v205[1]);
            v208 = (v387 + 4 * v202);
            v209 = vmulq_f32(*v208, *v208);
            v210 = vmulq_f32(v208[1], v208[1]);
            v200 = (((((((v200 + v209.f32[0]) + v209.f32[1]) + v209.f32[2]) + v209.f32[3]) + v210.f32[0]) + v210.f32[1]) + v210.f32[2]) + v210.f32[3];
            v201 = (((((((v201 + v206.f32[0]) + v206.f32[1]) + v206.f32[2]) + v206.f32[3]) + v207.f32[0]) + v207.f32[1]) + v207.f32[2]) + v207.f32[3];
            v203 += 8;
            v202 += 8;
            v204 -= 8;
          }

          while (v204);
          v199 = v320;
          if (v320 == v358)
          {
            goto LABEL_142;
          }
        }

        v211 = v358 - v199;
        v212 = v323 + v199;
        v213 = v324 + v199;
        do
        {
          v201 = v201 + (v387[0].f32[v213] * v387[0].f32[v213]);
          v200 = v200 + (v387[0].f32[v212] * v387[0].f32[v212]);
          ++v212;
          ++v213;
          --v211;
        }

        while (v211);
      }

LABEL_142:
      if (v201 >= v200)
      {
        v214 = v200;
      }

      else
      {
        v214 = v201;
      }

      memmove(v141, &v141[4 * v362], v357);
      if (v369 < 1)
      {
        v219 = 0.0;
        v222 = v368;
      }

      else
      {
        v215 = 0;
        v216 = sqrtf(v214 / v200);
        v217 = v108 * v216;
        v218 = &v141[4 * v363];
        v219 = 0.0;
        v220 = v374;
        v221 = v322;
        v222 = v368;
        do
        {
          if (v215 < v198)
          {
            v223 = 0;
          }

          else
          {
            v217 = v216 * v217;
            v223 = v198;
          }

          v224 = v215 - v223;
          *v218++ = v387[0].f32[v224 + v221] * v217;
          v225 = *&v141[4 * v130 + 4 * v224];
          v219 = v219 + (v225 * v225);
          v215 = v224 + 1;
          --v220;
        }

        while (v220);
      }

      v392[0].i32[0] = *&v141[4 * v354];
      v392[0].i32[1] = *&v141[4 * v353];
      v392[0].i32[2] = *&v141[4 * v352];
      v392[0].i32[3] = *&v141[4 * v351];
      v392[1].i32[0] = *&v141[4 * v350];
      v392[1].i32[1] = *&v141[4 * v349];
      v392[1].i32[2] = *&v141[4 * v348];
      v392[1].i32[3] = *&v141[4 * v347];
      v392[2].i32[0] = *&v141[4 * v346];
      v392[2].i32[1] = *&v141[4 * v345];
      v392[2].i32[2] = *&v141[4 * v344];
      v392[2].i32[3] = *&v141[4 * v343];
      v392[3].i32[0] = *&v141[4 * v342];
      v392[3].i32[1] = *&v141[4 * v341];
      v392[3].i32[2] = *&v141[4 * v340];
      v392[3].i32[3] = *&v141[4 * v339];
      v392[4].i32[0] = *&v141[4 * v338];
      v392[4].i32[1] = *&v141[4 * v337];
      v392[4].i32[2] = *&v141[4 * v336];
      v392[4].i32[3] = *&v141[4 * v335];
      v392[5].i32[0] = *&v141[4 * v334];
      v392[5].i32[1] = *&v141[4 * v333];
      v392[5].i32[2] = *&v141[4 * v332];
      v392[5].i32[3] = *&v141[4 * v331];
      v226 = v141 + 0x2000;
      v227 = v374;
      v228 = celt_iir(&v141[4 * v361 + 0x2000], v222, &v141[4 * v361 + 0x2000], v374, 24, v392);
      if (v227 >= 1)
      {
        v236 = v369;
        v237 = v356;
        if (v369 < 8)
        {
          v238 = 0;
          v228.i64[0] = 0;
          goto LABEL_161;
        }

        v239 = &v141[v308];
        v228.i64[0] = 0;
        v240 = v319;
        do
        {
          v229 = vmulq_f32(v239[-1], v239[-1]);
          v231.i32[0] = v229.i32[3];
          v232.i32[0] = v229.i32[2];
          v233.i32[0] = v229.i32[1];
          v230 = vmulq_f32(*v239, *v239);
          v234.i32[0] = v230.i32[3];
          v235.i32[0] = v230.i32[2];
          v228.f32[0] = (((((((v228.f32[0] + v229.f32[0]) + v229.f32[1]) + v229.f32[2]) + v229.f32[3]) + v230.f32[0]) + v230.f32[1]) + v230.f32[2]) + v230.f32[3];
          v239 += 2;
          v240 -= 8;
        }

        while (v240);
        v238 = v319;
        if (v319 != v374)
        {
LABEL_161:
          v241 = v374 - v238;
          v242 = &v141[4 * v238 + v318];
          do
          {
            v243 = *v242++;
            v228.f32[0] = v228.f32[0] + (v243 * v243);
            --v241;
          }

          while (v241);
        }

        if (v219 <= (v228.f32[0] * 0.2))
        {
          bzero(&v141[4 * v363], v307);
          goto LABEL_180;
        }

        goto LABEL_164;
      }

      v228.i64[0] = 0;
      v237 = v356;
      v236 = v369;
      if (v219 <= 0.0)
      {
        goto LABEL_180;
      }

LABEL_164:
      if (v219 >= v228.f32[0])
      {
        goto LABEL_180;
      }

      v244 = sqrtf((v219 + 1.0) / (v228.f32[0] + 1.0));
      v245 = &v141[4 * v363];
      if (v366 < 1)
      {
        goto LABEL_172;
      }

      v229.f32[0] = 1.0 - v244;
      if (v371 <= 7 || v245 < v288 && v123 < &v141[v285])
      {
        v246 = 0;
LABEL_170:
        v247 = v366 - v246;
        v248 = v246;
        v249 = &v141[4 * v246 + v318];
        v250 = &v123->f32[v248];
        do
        {
          v251 = *v250++;
          v231.i32[0] = *v249;
          v230.f32[0] = (1.0 - (v251 * v229.f32[0])) * *v249;
          *v249++ = v230.i32[0];
          --v247;
        }

        while (v247);
        goto LABEL_172;
      }

      v230 = vdupq_lane_s32(*v229.f32, 0);
      v280 = &v141[v308];
      v281 = v287;
      v282 = v295;
      do
      {
        __asm { FMOV            V5.4S, #1.0 }

        v234 = vmlsq_f32(_Q5, v230, v282[-1]);
        v233 = vmlsq_f32(_Q5, v230, *v282);
        v231 = vmulq_f32(v234, v280[-1]);
        v232 = vmulq_f32(v233, *v280);
        v280[-1] = v231;
        *v280 = v232;
        v282 += 2;
        v280 += 2;
        v281 -= 8;
      }

      while (v281);
      v246 = v287;
      if (v287 != v366)
      {
        goto LABEL_170;
      }

LABEL_172:
      if (v317 >= 1)
      {
        v252 = v371;
        if (v297 <= 7)
        {
          goto LABEL_223;
        }

        v253 = &v141[v289];
        v254 = v294;
        do
        {
          v230 = vmulq_n_f32(*v253, v244);
          v253[-1] = vmulq_n_f32(v253[-1], v244);
          *v253 = v230;
          v253 += 2;
          v254 -= 8;
        }

        while (v254);
        v252 = v286;
        if (v297 != v294)
        {
LABEL_223:
          do
          {
            *&v245[4 * v252] = v244 * *&v245[4 * v252];
            ++v252;
          }

          while (v252 < v236);
        }
      }

LABEL_180:
      v228.f32[0] = -v375[18];
      v138 = comb_filter(v237, v141 + 0x2000, *(v375 + 16), *(v375 + 16), v366, *(v375 + 20), *(v375 + 20), 0, v228, v228.f32[0], *v230.i64, *v231.i64, *v232.i64, *v233.i64, *v234.i64, v235, 0);
      v255 = v364;
      v256 = v373;
      v257 = v355;
      v258 = v372;
      if (v371 > 1)
      {
        if (v355 >= 8)
        {
          v259 = 0;
          v261 = &v141[v305 + 0x2000];
          v263 = v226 < v300 && v123 < v261;
          v265 = v226 < v299 && v237 < v261;
          v267 = v226 < v301 && v303 < v261;
          if ((v304 >= v261 || v226 >= v302) && !v263 && !v265 && !v267)
          {
            v269 = (v141 + 8208);
            v271 = v290;
            v270 = v291;
            v272 = v292;
            v273 = v295;
            v274 = v298;
            do
            {
              v138 = v273[-1];
              v275 = vrev64q_s32(*v270);
              v276 = vrev64q_s32(v270[-1]);
              v277 = vrev64q_s32(*v272);
              v278 = vrev64q_s32(v272[-1]);
              v279 = vmlaq_f32(vmulq_f32(vextq_s8(v278, v278, 8uLL), *v271), vextq_s8(v276, v276, 8uLL), *v273);
              v273 += 2;
              v269[-1] = vmlaq_f32(vmulq_f32(vextq_s8(v277, v277, 8uLL), v271[-1]), vextq_s8(v275, v275, 8uLL), v138);
              *v269 = v279;
              v269 += 2;
              v272 -= 2;
              v271 += 2;
              v270 -= 2;
              v274 -= 8;
            }

            while (v274);
            v259 = v298;
            if (v298 == v257)
            {
              goto LABEL_88;
            }
          }
        }

        else
        {
          v259 = 0;
        }

        v260 = v315 - 4 * v259;
        do
        {
          *&v226[4 * v259] = (*(v123->f32 + v260) * *&v237[4 * v259]) + (v123->f32[v259] * *&v237[v260]);
          ++v259;
          v260 -= 4;
        }

        while (v257 != v259);
      }

LABEL_88:
      v119 = v256 + 1;
      v136 = v258 + 96;
      v140 += 24;
      v370 += 24;
      v130 = v330;
      if (v119 == v255)
      {
        v43 = v375;
        goto LABEL_69;
      }
    }
  }

  v368 = (v17 * v10);
  v306 = &v285;
  v366 = 24 * v10;
  v372 = &v367[v366];
  v370 = v13;
  v367 = (2 * v13);
  v31 = v30;
  v32 = *(v8 + 7);
  v374 = v11;
  LODWORD(v369) = *(v11 + 12);
  LODWORD(v373) = v10;
  MEMORY[0x28223BE20](v3, v4, v5);
  v34 = &v285 - v33;
  v35 = 4 * ((v371 >> 1) - v7 + 2048);
  v36 = &v390;
  v38 = v37;
  do
  {
    v39 = *v36++;
    memmove(v39, &v39[4 * v16], v35);
    --v38;
  }

  while (v38);
  if (v32 >= v369)
  {
    v41 = v369;
  }

  else
  {
    v41 = v32;
  }

  if (v31 <= v41)
  {
    v42 = v41;
  }

  else
  {
    v42 = v31;
  }

  v40.i32[0] = 0.5;
  if (!v365)
  {
    *v40.i32 = 1.5;
  }

  v43 = v375;
  v44 = v317;
  v45 = v364;
  v46 = v373;
  v47 = v370;
  if (v31 < v32)
  {
    v48 = 0;
    v49 = 0;
    v50 = v31;
    v51 = &v375[(v364 - 1) * v370 + v368 + v366 + v32];
    v52 = v368 + v366;
    v53 = v32 - v31;
    v56 = &v375[v368 + v366 + v31] < v51 + 12 * v367 && &v375[3 * v367 + v52 + v31] < v51 || v370 < 0;
    v57 = vdupq_lane_s32(v40, 0);
    v58 = &v375[3 * v367 + v52];
    v59 = v58 + v50 * 4 + 112;
    v60 = 4 * v370;
    v61 = &v375[v368 + v366];
    v62 = &v61[v50 + 28];
    v63 = v61 + 24;
    v64 = v58 + 96;
    do
    {
      v65 = v31;
      if (v53 < 8 || v56)
      {
        goto LABEL_39;
      }

      v66 = v62;
      v67 = v59;
      v68 = v53 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v69 = vsubq_f32(v66[-1], v57);
        v70 = vsubq_f32(*v66, v57);
        v71 = vbslq_s8(vcgtq_f32(*v67, v70), *v67, v70);
        v66[-1] = vbslq_s8(vcgtq_f32(v67[-1], v69), v67[-1], v69);
        *v66 = v71;
        v67 += 2;
        v66 += 2;
        v68 -= 8;
      }

      while (v68);
      v65 = (v53 & 0xFFFFFFFFFFFFFFF8) + v31;
      if (v53 != (v53 & 0xFFFFFFFFFFFFFFF8))
      {
LABEL_39:
        v72 = v32 - v65;
        v73 = v65 + v48;
        v74 = &v63[v73];
        v75 = (v64 + v73 * 4);
        do
        {
          v76 = *v75++;
          v77 = v76;
          if (v76 <= (*v74 - *v40.i32))
          {
            v77 = *v74 - *v40.i32;
          }

          *v74++ = v77;
          --v72;
        }

        while (v72);
      }

      ++v49;
      v59 += v60;
      v62 += v60;
      v48 += v47;
    }

    while (v49 != v45);
  }

  v78 = *(v43 + 11);
  if (v46 >= 1 && v41 > v31)
  {
    v79 = 0;
    v80 = 0;
    v81 = *(v14 + 2 * v31);
    v82 = v34 + 16;
    do
    {
      LOWORD(v83) = v81;
      v84 = v31;
      do
      {
        v85 = v83;
        ++v84;
        v83 = *(v14 + 2 * v84);
        v86 = ((v83 - v85) << v6);
        if (v86 < 1)
        {
          continue;
        }

        v87 = v85 << v6;
        v88 = &v34[4 * (v85 << v6) + 4 * v80 * v44];
        v89 = &v34[4 * v79 + 4 * v87];
        v90 = v86;
        do
        {
          v78 = 1664525 * v78 + 1013904223;
          *v89++ = (v78 >> 20);
          --v90;
        }

        while (v90);
        if (v86 < 8)
        {
          v91 = 0;
          v92 = 0.0;
LABEL_58:
          v97 = v86 - v91;
          v98 = &v34[4 * v91 + 4 * v79 + 4 * v87];
          do
          {
            v99 = *v98++;
            v92 = v92 + (v99 * v99);
            --v97;
          }

          while (v97);
          goto LABEL_60;
        }

        v91 = v86 & 0x7FFFFFF8;
        v93 = &v82[4 * v79 + 4 * v87];
        v92 = 0.0;
        v94 = v91;
        do
        {
          v95 = vmulq_f32(v93[-1], v93[-1]);
          v96 = vmulq_f32(*v93, *v93);
          v92 = (((((((v92 + v95.f32[0]) + v95.f32[1]) + v95.f32[2]) + v95.f32[3]) + v96.f32[0]) + v96.f32[1]) + v96.f32[2]) + v96.f32[3];
          v93 += 2;
          v94 -= 8;
        }

        while (v94);
        if (v91 != v86)
        {
          goto LABEL_58;
        }

LABEL_60:
        v100 = 1.0 / sqrtf(v92 + 1.0e-15);
        if (v86 < 8)
        {
          LODWORD(v101) = 0;
LABEL_65:
          v105 = v86 - v101;
          do
          {
            *v88 = v100 * *v88;
            ++v88;
            --v105;
          }

          while (v105);
          continue;
        }

        v101 = v86 & 0x7FFFFFF8;
        v88 += v101;
        v102 = &v82[4 * v79 + 4 * v87];
        v103 = v101;
        do
        {
          v104 = vmulq_n_f32(*v102, v100);
          v102[-1] = vmulq_n_f32(v102[-1], v100);
          *v102 = v104;
          v102 += 2;
          v103 -= 8;
        }

        while (v103);
        if (v101 != v86)
        {
          goto LABEL_65;
        }
      }

      while (v84 != v42);
      ++v80;
      v79 += v44;
    }

    while (v80 != v46);
  }

  *(v43 + 11) = v78;
  celt_synthesis(v374, v34, &v388, v372, v31, v42, v46, v46, 0, v6, *(v43 + 5), 0, *(v43 + 10));
LABEL_69:
  v106 = v365 + (1 << v6);
  if (v106 >= 10000)
  {
    v106 = 10000;
  }

  *(v43 + 14) = v106;
}

__int32 **deemphasis(__int32 **result, float32x2_t *a2, int a3, int a4, int a5, const float *a6, float32x2_t *a7, int a8)
{
  v60[1] = *MEMORY[0x277D85DE8];
  if (a4 == 2 && a5 == 1 && !a8)
  {
    v8 = *a7;
    if (a3 >= 1)
    {
      v9 = *result;
      v10 = result[1];
      v11 = a3;
      v12 = vld1_dup_f32(a6);
      v13 = vdup_n_s32(0xDA24260u);
      do
      {
        v14 = *v9++;
        v15.i32[0] = v14;
        v15.i32[1] = *v10++;
        v16 = vadd_f32(v8, vadd_f32(v15, v13));
        v8 = vmul_f32(v12, v16);
        *a2++ = vmul_f32(v16, 0x3800000038000000);
        --v11;
      }

      while (v11);
    }

    *a7 = v8;
  }

  else
  {
    result = MEMORY[0x28223BE20]();
    v24 = (v60 - v23);
    v26 = *v25;
    if (v20 <= 1)
    {
      if (v18 >= 1)
      {
        v39 = 0;
        if (v19 <= 1)
        {
          v40 = 1;
        }

        else
        {
          v40 = v19;
        }

        do
        {
          v41 = *(v21 + 4 * v39);
          v42 = result[v39];
          v43 = v17;
          v44 = v22;
          do
          {
            v45 = *v42++;
            v46 = v41 + (v45 + 1.0e-30);
            v41 = v26 * v46;
            *v43 = v46 * 0.000030518;
            v43 += v19;
            --v44;
          }

          while (v44);
          *(v21 + 4 * v39++) = v41;
          ++v17;
        }

        while (v39 != v40);
      }
    }

    else
    {
      v27 = v18 / v20;
      if (v18 < 1)
      {
        if (v27 >= 1)
        {
          v47 = 0;
          if (v19 <= 1)
          {
            v48 = 1;
          }

          else
          {
            v48 = v19;
          }

          do
          {
            v49 = (v60 - v23);
            v50 = v17;
            v51 = (v18 / v20);
            do
            {
              *v50 = *v49 * 0.000030518;
              v50 += v19;
              v49 += v20;
              --v51;
            }

            while (v51);
            ++v47;
            ++v17;
          }

          while (v47 != v48);
        }
      }

      else if (v27 <= 0)
      {
        v52 = 0;
        if (v19 <= 1)
        {
          v53 = 1;
        }

        else
        {
          v53 = v19;
        }

        do
        {
          v54 = *(v21 + 4 * v52);
          v55 = result[v52];
          v56 = v24;
          v57 = v22;
          do
          {
            v58 = *v55++;
            v59 = v54 + (v58 + 1.0e-30);
            v54 = v26 * v59;
            *v56++ = v59;
            --v57;
          }

          while (v57);
          *(v21 + 4 * v52++) = v54;
        }

        while (v52 != v53);
      }

      else
      {
        v28 = 0;
        if (v19 <= 1)
        {
          v29 = 1;
        }

        else
        {
          v29 = v19;
        }

        do
        {
          v30 = *(v21 + 4 * v28);
          v31 = result[v28];
          v32 = v24;
          v33 = v22;
          do
          {
            v34 = *v31++;
            v35 = v30 + (v34 + 1.0e-30);
            v30 = v26 * v35;
            *v32++ = v35;
            --v33;
          }

          while (v33);
          *(v21 + 4 * v28) = v30;
          v36 = v24;
          v37 = v17;
          v38 = (v18 / v20);
          do
          {
            *v37 = *v36 * 0.000030518;
            v37 += v19;
            v36 += v20;
            --v38;
          }

          while (v38);
          ++v28;
          ++v17;
        }

        while (v28 != v29);
      }
    }
  }

  return result;
}

void celt_synthesis(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, unsigned int a11, int a12, int a13)
{
  v272 = a6;
  v279 = a4;
  v264 = a2;
  v13 = a1;
  v276 = a12;
  v283 = *MEMORY[0x277D85DE8];
  v265 = *(a1 + 8);
  v14 = MEMORY[0x28223BE20](a11, (*(a1 + 48) << a10), a3);
  v25 = (&v261 - v23);
  v26 = *(v13 + 40);
  v27 = v22 == 0;
  LODWORD(v281) = 1 << v21;
  if (v22)
  {
    v28 = (1 << v21);
  }

  else
  {
    v28 = 1;
  }

  if (v22)
  {
    v29 = v20;
  }

  else
  {
    v29 = v15;
  }

  if (v27)
  {
    v30 = v21;
  }

  else
  {
    v30 = 0;
  }

  v267 = v26 - v30;
  LODWORD(v268) = v24;
  v278 = (&v261 - v23);
  v270 = v16;
  v271 = v13;
  v282 = v28;
  LODWORD(v269) = a13;
  if (v18 != 1 || v19 != 2)
  {
    v273 = v14;
    if (v18 == 2 && v19 == 1)
    {
      v280 = v15;
      v277 = v29;
      v63 = *v16;
      v261 = v24 + (v24 >> 31);
      v64 = v24 / 2;
      v65 = *(v13 + 32);
      v66 = v20 * v281;
      v67 = v281 * *(v65 + 2 * v272);
      LODWORD(v274) = v66;
      v68 = v66 / v14;
      LODWORD(v263) = v68;
      if (v67 < v68)
      {
        v68 = v67;
      }

      if (v14 != 1)
      {
        v67 = v68;
      }

      LODWORD(v262) = v67;
      if (v276)
      {
        v69 = 0;
      }

      else
      {
        v69 = v272;
      }

      if (v276)
      {
        v70 = 0;
      }

      else
      {
        v70 = v17;
      }

      v71 = v70;
      v72 = *(v65 + 2 * v70);
      v73 = v281 * v72;
      v74 = (&v261 - v23);
      v75 = v281 * v72 - 1;
      if (v281 * v72 >= 1)
      {
        bzero(&v261 - v23, 4 * (v281 * v72));
        v74 = &v25->f32[v75 + 1];
      }

      v266 = v63;
      v275 = (v63 + 4 * v64);
      v76 = v272;
      v272 = v69;
      if (v71 < v69)
      {
        v77 = v72;
        v78 = v272;
        v79 = (v264 + 4 * v73);
        v80 = v71;
        do
        {
          v81 = v281 * v77;
          v82 = v80 + 1;
          v83 = *(v65 + 2 * (v80 + 1));
          v84 = v281 * v83;
          v85 = *(v279 + 4 * v80) + *(&eMeans + v80);
          if (v85 > 32.0)
          {
            v85 = 32.0;
          }

          v86 = exp(v85 * 0.693147181);
          if (v84 <= v81 + 1)
          {
            v87 = v81 + 1;
          }

          else
          {
            v87 = v84;
          }

          v88 = (v87 + ~v81);
          if (v88 >= 7)
          {
            v91 = v88 + 1;
            v92 = (v88 + 1) & 0x1FFFFFFF8;
            v89 = &v74[v92];
            v90 = &v79->f32[v92];
            v81 += v92;
            v93 = v79 + 1;
            v94 = (v74 + 4);
            v95 = v92;
            do
            {
              v96 = vmulq_n_f32(*v93, v86);
              v94[-1] = vmulq_n_f32(v93[-1], v86);
              *v94 = v96;
              v93 += 2;
              v94 += 2;
              v95 -= 8;
            }

            while (v95);
            if (v91 == v92)
            {
              goto LABEL_54;
            }
          }

          else
          {
            v89 = v74;
            v90 = v79;
          }

          do
          {
            v97 = *v90++;
            *v89++ = v97 * v86;
            ++v81;
          }

          while (v81 < v84);
LABEL_54:
          v77 = v83;
          v80 = v82;
          v79 = v90;
          v74 = v89;
        }

        while (v82 != v78);
      }

      v169 = v262;
      if (v276)
      {
        v169 = 0;
      }

      bzero(&v278->f32[v169], 4 * (v274 - v169));
      v170 = v281 * *(v65 + 2 * v76);
      v171 = v263;
      if (v170 < v263)
      {
        v171 = v281 * *(v65 + 2 * v76);
      }

      if (v273 != 1)
      {
        v170 = v171;
      }

      v273 = v170;
      v172 = *(v65 + 2 * v71);
      v173 = v281 * v172;
      v174 = v281 * v172 - 1;
      if (v281 * v172 < 1)
      {
        v176 = v275;
        v177 = v272;
        if (v71 >= v272)
        {
          goto LABEL_170;
        }
      }

      else
      {
        v175 = v275;
        bzero(v275, 4 * (v281 * v172));
        v176 = &v175[4 * v174 + 4];
        v177 = v272;
        if (v71 >= v272)
        {
LABEL_170:
          v231 = v273;
          if (v276)
          {
            v231 = 0;
          }

          bzero(&v275[4 * v231], 4 * (v274 - v231));
          v240 = v280;
          v241 = v278;
          v243 = v270;
          v242 = v271;
          v244 = v282;
          v245 = v266;
          if (v280 < 1)
          {
            goto LABEL_179;
          }

          v246 = v261 >> 1;
          if (v280 > 7 && (v278 >= v266 + 4 * (v246 + v280) || v275 >= &v278->i8[4 * v280]))
          {
            v247 = v280 & 0x7FFFFFF8;
            v258 = v278 + 1;
            v259 = (v266 + 4 * v246 + 16);
            v232.i64[0] = 0x3F0000003F000000;
            v232.i64[1] = 0x3F0000003F000000;
            v260 = v247;
            do
            {
              v233 = v258[-1];
              v234 = *v258;
              v235 = vmlaq_f32(vmulq_f32(v259[-1], v232), v232, v233);
              v236 = vmlaq_f32(vmulq_f32(*v259, v232), v232, *v258);
              v258[-1] = v235;
              *v258 = v236;
              v258 += 2;
              v259 += 2;
              v260 -= 8;
            }

            while (v260);
            if (v247 == v240)
            {
LABEL_179:
              v254 = v267;
              v253 = v268;
              if (v244 >= 1)
              {
                v255 = 0;
                v256 = 4 * v277;
                v257 = v244;
                do
                {
                  v232.f32[0] = clt_mdct_backward_c(v242 + 80, v241, *v243 + v255, *(v242 + 72), v253, v254, v244, *v232.i64, *v233.i64, *v234.i64, *v235.i64, v236, v237, v238, v239);
                  LODWORD(v244) = v282;
                  v255 += v256;
                  v241 = (v241 + 4);
                  --v257;
                }

                while (v257);
              }

              return;
            }
          }

          else
          {
            v247 = 0;
          }

          v248 = v240 - v247;
          v249 = 4 * v247;
          v250 = (v245 + v249 + 4 * v246);
          v251 = (v241 + v249);
          v232.i32[0] = 0.5;
          do
          {
            v252 = *v250++;
            v234.i32[0] = *v251;
            v233.f32[0] = (v252 * 0.5) + (*v251 * 0.5);
            *v251++ = v233.i32[0];
            --v248;
          }

          while (v248);
          goto LABEL_179;
        }
      }

      v210 = v279 + 4 * v265;
      v211 = v172;
      v212 = v177;
      v213 = v264 + 4 * v280 + 4 * v173;
      while (1)
      {
        v214 = v281 * v211;
        v215 = v71 + 1;
        v216 = *(v65 + 2 * (v71 + 1));
        v217 = v281 * v216;
        v218 = *(v210 + 4 * v71) + *(&eMeans + v71);
        if (v218 > 32.0)
        {
          v218 = 32.0;
        }

        v219 = exp(v218 * 0.693147181);
        if (v217 <= v214 + 1)
        {
          v220 = v214 + 1;
        }

        else
        {
          v220 = v217;
        }

        v221 = (v220 + ~v214);
        if (v221 >= 7)
        {
          v224 = v221 + 1;
          v225 = (v221 + 1) & 0x1FFFFFFF8;
          v222 = &v176[v225];
          v223 = (v213 + 4 * v225);
          v214 += v225;
          v226 = (v213 + 16);
          v227 = (v176 + 4);
          v228 = v225;
          do
          {
            v229 = vmulq_n_f32(*v226, v219);
            v227[-1] = vmulq_n_f32(v226[-1], v219);
            *v227 = v229;
            v226 += 2;
            v227 += 2;
            v228 -= 8;
          }

          while (v228);
          if (v224 == v225)
          {
            goto LABEL_157;
          }
        }

        else
        {
          v222 = v176;
          v223 = v213;
        }

        do
        {
          v230 = *v223++;
          *v222++ = v230 * v219;
          ++v214;
        }

        while (v214 < v217);
LABEL_157:
        v211 = v216;
        ++v71;
        v213 = v223;
        v176 = v222;
        if (v215 == v212)
        {
          goto LABEL_170;
        }
      }
    }

    if (v28 > 0)
    {
      v120 = 0;
      v262 = v15;
      if (v19 <= 1)
      {
        v121 = 1;
      }

      else
      {
        v121 = v19;
      }

      v266 = v121;
      if (v276)
      {
        v122 = 0;
      }

      else
      {
        v122 = v272;
      }

      if (v276)
      {
        v123 = 0;
      }

      else
      {
        v123 = v17;
      }

      v277 = v123;
      v263 = &v25->i8[4];
      v280 = v122;
      v124 = 4 * v29;
      while (1)
      {
        v125 = *(v13 + 32);
        v126 = *(v13 + 48) * v281;
        v127 = v281 * *(v125 + 2 * v272);
        if (v14 != 1 && v127 >= v126 / v14)
        {
          v127 = v126 / v14;
        }

        LODWORD(v274) = v127;
        LODWORD(v275) = v126;
        v128 = *(v125 + 2 * v277);
        v129 = v281 * v128;
        v130 = v25;
        v131 = v281 * v128 - 1;
        if (v281 * v128 >= 1)
        {
          bzero(v25, 4 * (v281 * v128));
          v130 = &v263[4 * v131];
        }

        if (v277 < v280)
        {
          break;
        }

LABEL_106:
        v153 = v274;
        if (v276)
        {
          v153 = 0;
        }

        v154 = v278;
        bzero(&v278->f32[v153], 4 * (v275 - v153));
        v163 = 0;
        v164 = v282;
        v165 = v282;
        v166 = v270;
        v13 = v271;
        v167 = v267;
        v168 = v268;
        do
        {
          *&v155 = clt_mdct_backward_c(v13 + 80, v154, v166[v120] + v163, *(v13 + 72), v168, v167, v164, v155, v156, v157, v158, v159, v160, v161, v162);
          v164 = v282;
          v163 += v124;
          v154 = (v154 + 4);
          --v165;
        }

        while (v165);
        ++v120;
        v14 = v273;
        v25 = v278;
        if (v120 == v266)
        {
          return;
        }
      }

      v132 = v279 + 4 * v120 * v265;
      v133 = v128;
      v134 = v264 + 4 * v120 * v262 + 4 * v129;
      v135 = v277;
      while (1)
      {
        v136 = v281 * v133;
        v137 = v135 + 1;
        v138 = *(v125 + 2 * (v135 + 1));
        v139 = v281 * v138;
        v140 = *(v132 + 4 * v135) + *(&eMeans + v135);
        if (v140 > 32.0)
        {
          v140 = 32.0;
        }

        v141 = exp(v140 * 0.693147181);
        if (v139 <= v136 + 1)
        {
          v142 = v136 + 1;
        }

        else
        {
          v142 = v139;
        }

        v143 = (v142 + ~v136);
        if (v143 >= 7)
        {
          v146 = v143 + 1;
          v147 = (v143 + 1) & 0x1FFFFFFF8;
          v144 = &v130[v147];
          v145 = (v134 + 4 * v147);
          v136 += v147;
          v148 = (v134 + 16);
          v149 = (v130 + 4);
          v150 = v147;
          do
          {
            v151 = vmulq_n_f32(*v148, v141);
            v149[-1] = vmulq_n_f32(v148[-1], v141);
            *v149 = v151;
            v148 += 2;
            v149 += 2;
            v150 -= 8;
          }

          while (v150);
          if (v146 == v147)
          {
            goto LABEL_93;
          }
        }

        else
        {
          v144 = v130;
          v145 = v134;
        }

        do
        {
          v152 = *v145++;
          *v144++ = v152 * v141;
          ++v136;
        }

        while (v136 < v139);
LABEL_93:
        v133 = v138;
        v135 = v137;
        v134 = v145;
        v130 = v144;
        if (v137 == v280)
        {
          goto LABEL_106;
        }
      }
    }

    v282 = 0;
    if (v19 <= 1)
    {
      v178 = 1;
    }

    else
    {
      v178 = v19;
    }

    v270 = v15;
    v271 = v178;
    v179 = *(v13 + 32);
    LODWORD(v277) = v20 * v281;
    LODWORD(v275) = v281 * *(v179 + 2 * v272);
    if (v276)
    {
      v180 = 0;
    }

    else
    {
      v180 = v272;
    }

    if (v276)
    {
      v181 = 0;
    }

    else
    {
      v181 = v17;
    }

    v274 = v181;
    v182 = *(v179 + 2 * v181);
    LODWORD(v272) = v182;
    v183 = v281 * v182;
    v184 = v180;
    if (v183 <= 0)
    {
      v185 = &v261 - v23;
    }

    else
    {
      v185 = &v25->i8[4 * (v183 - 1) + 4];
    }

    v268 = v185;
    v269 = v264 + 4 * v183;
    while (1)
    {
      v187 = v275;
      if (v14 != 1)
      {
        v187 = v277 / v14;
        if (v275 < v277 / v14)
        {
          v187 = v275;
        }
      }

      LODWORD(v280) = v187;
      if (v274 < v184)
      {
        break;
      }

LABEL_134:
      v186 = v280;
      if (v276)
      {
        v186 = 0;
      }

      bzero(&v278->f32[v186], 4 * (v277 - v186));
      ++v282;
      v14 = v273;
      if (v282 == v271)
      {
        return;
      }
    }

    v188 = v279 + 4 * v282 * v265;
    v189 = v268;
    v190 = (v269 + 4 * v282 * v270);
    v191 = v272;
    v192 = v274;
    while (1)
    {
      v193 = v281 * v191;
      v194 = v192 + 1;
      v195 = *(v179 + 2 * (v192 + 1));
      v196 = v281 * v195;
      v197 = *(v188 + 4 * v192) + *(&eMeans + v192);
      if (v197 > 32.0)
      {
        v197 = 32.0;
      }

      v198 = exp(v197 * 0.693147181);
      if (v196 <= v193 + 1)
      {
        v199 = v193 + 1;
      }

      else
      {
        v199 = v196;
      }

      v200 = (v199 + ~v193);
      if (v200 >= 7)
      {
        v203 = v200 + 1;
        v204 = (v200 + 1) & 0x1FFFFFFF8;
        v201 = &v189[v204];
        v202 = &v190->f32[v204];
        v193 += v204;
        v205 = v190 + 1;
        v206 = (v189 + 4);
        v207 = v204;
        do
        {
          v208 = vmulq_n_f32(*v205, v198);
          v206[-1] = vmulq_n_f32(v205[-1], v198);
          *v206 = v208;
          v205 += 2;
          v206 += 2;
          v207 -= 8;
        }

        while (v207);
        if (v203 == v204)
        {
          goto LABEL_142;
        }
      }

      else
      {
        v201 = v189;
        v202 = v190;
      }

      do
      {
        v209 = *v202++;
        *v201++ = v209 * v198;
        ++v193;
      }

      while (v193 < v196);
LABEL_142:
      v191 = v195;
      v192 = v194;
      v190 = v202;
      v189 = v201;
      if (v194 == v184)
      {
        goto LABEL_134;
      }
    }
  }

  v280 = v15;
  v277 = v29;
  v31 = *(v13 + 32);
  v32 = v20 * v281;
  v33 = v281 * *(v31 + 2 * v272);
  if (v14 != 1 && v33 >= v32 / v14)
  {
    v33 = v32 / v14;
  }

  LODWORD(v274) = v33;
  LODWORD(v275) = v20 * v281;
  if (v276)
  {
    v34 = 0;
  }

  else
  {
    v34 = v272;
  }

  if (v276)
  {
    v35 = 0;
  }

  else
  {
    v35 = v17;
  }

  v36 = v35;
  v37 = *(v31 + 2 * v35);
  v38 = v281 * v37;
  v39 = (&v261 - v23);
  v40 = v281 * v37 - 1;
  if (v281 * v37 >= 1)
  {
    bzero(&v261 - v23, 4 * (v281 * v37));
    v39 = &v25->f32[v40 + 1];
  }

  if (v36 < v34)
  {
    v41 = v37;
    v42 = (v264 + 4 * v38);
    v43 = v34;
    do
    {
      v44 = v281 * v41;
      v45 = v36 + 1;
      v46 = *(v31 + 2 * (v36 + 1));
      v47 = *(v279 + 4 * v36);
      v48 = *(&eMeans + v36);
      v49 = v281 * v46;
      v50 = v47 + v48;
      if (v50 > 32.0)
      {
        v50 = 32.0;
      }

      v51 = exp(v50 * 0.693147181);
      if (v49 <= v44 + 1)
      {
        v52 = v44 + 1;
      }

      else
      {
        v52 = v49;
      }

      v53 = (v52 + ~v44);
      if (v53 >= 7)
      {
        v56 = v53 + 1;
        v57 = (v53 + 1) & 0x1FFFFFFF8;
        v54 = &v39[v57];
        v55 = &v42->f32[v57];
        v44 += v57;
        v58 = v42 + 1;
        v59 = (v39 + 4);
        v60 = v57;
        do
        {
          v61 = vmulq_n_f32(*v58, v51);
          v59[-1] = vmulq_n_f32(v58[-1], v51);
          *v59 = v61;
          v58 += 2;
          v59 += 2;
          v60 -= 8;
        }

        while (v60);
        if (v56 == v57)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v54 = v39;
        v55 = v42;
      }

      do
      {
        v62 = *v55++;
        *v54++ = v62 * v51;
        ++v44;
      }

      while (v44 < v49);
LABEL_25:
      v41 = v46;
      v36 = v45;
      v42 = v55;
      v39 = v54;
    }

    while (v45 != v43);
  }

  v98 = v274;
  if (v276)
  {
    v98 = 0;
  }

  v99 = v278;
  bzero(&v278->f32[v98], 4 * (v275 - v98));
  v100 = v270;
  v101 = v268;
  v102 = (v270[1] + 4 * (v268 / 2));
  memcpy(v102, v99, 4 * v280);
  v111 = v282;
  v112 = v271;
  v113 = v267;
  if (v282 >= 1)
  {
    v114 = 0;
    v281 = v277;
    v115 = 4 * v277;
    v116 = v282;
    do
    {
      *&v103 = clt_mdct_backward_c(v112 + 80, v102, *v100 + v114, *(v112 + 72), v101, v113, v111, v103, v104, v105, v106, v107, v108, v109, v110);
      v111 = v282;
      v114 += v115;
      v102 += 4;
      --v116;
    }

    while (v116);
    v117 = 0;
    v118 = 4 * v281;
    v119 = v282;
    do
    {
      *&v103 = clt_mdct_backward_c(v112 + 80, v99, v100[1] + v117, *(v112 + 72), v101, v113, v111, v103, v104, v105, v106, v107, v108, v109, v110);
      v111 = v282;
      v117 += v118;
      v99 = (v99 + 4);
      --v119;
    }

    while (v119);
  }
}

uint64_t opus_custom_decoder_ctl(_DWORD *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int *a9)
{
  result = 4294967291;
  if (a2 <= 10006)
  {
    if (a2 > 4032)
    {
      switch(a2)
      {
        case 4033:
          if (a9)
          {
            result = 0;
            *a9 = a1[16];
            return result;
          }

          return 0xFFFFFFFFLL;
        case 4046:
          if (a9 <= 1)
          {
            result = 0;
            a1[9] = a9;
            return result;
          }

          return 0xFFFFFFFFLL;
        case 4047:
          if (a9)
          {
            result = 0;
            *a9 = a1[9];
            return result;
          }

          return 0xFFFFFFFFLL;
      }

      return result;
    }

    if (a2 == 4027)
    {
      if (a9)
      {
        result = 0;
        *a9 = a1[2] / a1[5];
        return result;
      }

      return 0xFFFFFFFFLL;
    }

    if (a2 != 4028)
    {
      if (a2 == 4031)
      {
        if (a9)
        {
          result = 0;
          *a9 = a1[11];
          return result;
        }

        return 0xFFFFFFFFLL;
      }

      return result;
    }

    v12 = a1[2];
    v11 = a1[3];
    v13 = *(*a1 + 8);
    v14 = a1;
    bzero(a1 + 11, 32 * v13 + 4 * v11 * (*(*a1 + 4) + 2072) + 100 - 44);
    if (v13 >= 1)
    {
      v15 = (v12 + 2048) * v11;
      v16 = 24 * v11;
      v17 = 2 * v13;
      if (v17 <= 1)
      {
        v18 = 1;
      }

      else
      {
        v18 = v17;
      }

      if (v17 < 8)
      {
        v19 = 0;
      }

      else
      {
        v19 = 0;
        if ((-4 * v17) >= 0x20)
        {
          v19 = v18 & 0x7FFFFFF8;
          v20 = 4 * v15 + 4 * v16;
          v21 = (&v14[2 * v17 + 28] + v20);
          v22 = (&v14[v17 + 28] + v20);
          __asm { FMOV            V0.4S, #-28.0 }

          v28 = v19;
          do
          {
            *(v21 - 1) = _Q0;
            *v21 = _Q0;
            v21 += 2;
            *(v22 - 1) = _Q0;
            *v22 = _Q0;
            v22 += 2;
            v28 -= 8;
          }

          while (v28);
          if (v19 == v18)
          {
            goto LABEL_54;
          }
        }
      }

      v29 = v18 - v19;
      v30 = 4 * v19 + 4 * v15 + 4 * v16;
      v31 = (&v14[v17 + 24] + v30);
      v32 = (&v14[2 * v17 + 24] + v30);
      do
      {
        *v32++ = -1042284544;
        *v31++ = -1042284544;
        --v29;
      }

      while (v29);
    }

LABEL_54:
    result = 0;
    v14[15] = 1;
    return result;
  }

  if (a2 > 10011)
  {
    switch(a2)
    {
      case 10012:
        if (a9 >= 1 && a9 <= *(*a1 + 8))
        {
          result = 0;
          a1[7] = a9;
          return result;
        }

        return 0xFFFFFFFFLL;
      case 10015:
        if (a9)
        {
          result = 0;
          *a9 = *a1;
          return result;
        }

        return 0xFFFFFFFFLL;
      case 10016:
        result = 0;
        a1[8] = a9;
        break;
    }
  }

  else
  {
    switch(a2)
    {
      case 10007:
        if (a9)
        {
          result = 0;
          *a9 = a1[12];
          a1[12] = 0;
          return result;
        }

        return 0xFFFFFFFFLL;
      case 10008:
        if ((a9 - 3) >= 0xFFFFFFFE)
        {
          result = 0;
          a1[4] = a9;
          return result;
        }

        return 0xFFFFFFFFLL;
      case 10010:
        if ((a9 & 0x80000000) == 0 && a9 < *(*a1 + 8))
        {
          result = 0;
          a1[6] = a9;
          return result;
        }

        return 0xFFFFFFFFLL;
    }
  }

  return result;
}

float *celt_preemphasis(float *result, float *a2, int a3, int a4, int a5, float *a6, float *a7, int a8)
{
  v11 = *a6;
  v12 = *a7;
  if (!a8 && a5 == 1 && a6[1] == 0.0)
  {
    if (a3 >= 1)
    {
      v13 = a3;
      do
      {
        v14 = *result * 32768.0;
        *a2++ = v14 - v12;
        v12 = v11 * v14;
        result += a4;
        --v13;
      }

      while (v13);
    }

    goto LABEL_34;
  }

  v15 = (a3 / a5);
  if (a5 != 1)
  {
    v16 = result;
    v17 = a2;
    v18 = a7;
    v19 = a8;
    bzero(a2, 4 * a3);
    a8 = v19;
    result = v16;
    a2 = v17;
    a7 = v18;
  }

  if (v15 >= 1)
  {
    v20 = 4 * a5;
    if (v15 >= 8)
    {
      v21 = 0;
      if (a4 == 1 && a5 == 1)
      {
        v21 = v15 & 0x7FFFFFF8;
        v43 = (result + 4);
        v44 = (a2 + 4);
        v45.i64[0] = 0x4700000047000000;
        v45.i64[1] = 0x4700000047000000;
        v46 = v21;
        do
        {
          v47 = vmulq_f32(*v43, v45);
          v44[-1] = vmulq_f32(v43[-1], v45);
          *v44 = v47;
          v43 += 2;
          v44 += 2;
          v46 -= 8;
        }

        while (v46);
        if (v21 == v15)
        {
LABEL_15:
          if (a8)
          {
            v25 = 0;
            if (v15 < 8)
            {
              goto LABEL_21;
            }

            if (a5 != 1)
            {
              goto LABEL_21;
            }

            v25 = v15 & 0x7FFFFFF8;
            v26 = (a2 + 4);
            v27 = vdupq_n_s32(0x47800000u);
            v28 = vdupq_n_s32(0xC7800000);
            v29 = v25;
            do
            {
              v30 = v26[-1];
              v31 = vcgtq_f32(v30, v27);
              v32 = vcgtq_f32(*v26, v27);
              v33 = vcgtq_f32(v28, v30);
              v34 = vcgtq_f32(v28, *v26);
              v35 = vbslq_s8(vorrq_s8(v34, v32), vbslq_s8(vbicq_s8(v34, v32), v28, v27), *v26);
              v26[-1] = vbslq_s8(vorrq_s8(v33, v31), vbslq_s8(vbicq_s8(v33, v31), v28, v27), v30);
              *v26 = v35;
              v26 += 2;
              v29 -= 8;
            }

            while (v29);
            if (v25 != v15)
            {
LABEL_21:
              v36 = v15 - v25;
              v37 = &a2[v25 * a5];
              do
              {
                v38 = *v37;
                v39 = *v37 > 65536.0 || *v37 < -65536.0;
                if (*v37 < -65536.0 && *v37 <= 65536.0)
                {
                  v40 = -65536.0;
                }

                else
                {
                  v40 = 65536.0;
                }

                if (v39)
                {
                  v38 = v40;
                }

                *v37 = v38;
                v37 = (v37 + v20);
                --v36;
              }

              while (v36);
            }
          }

          goto LABEL_31;
        }
      }
    }

    else
    {
      v21 = 0;
    }

    v22 = v15 - v21;
    v23 = &a2[v21 * a5];
    v24 = &result[v21 * a4];
    do
    {
      *v23 = *v24 * 32768.0;
      v23 = (v23 + v20);
      v24 += a4;
      --v22;
    }

    while (v22);
    goto LABEL_15;
  }

LABEL_31:
  if (a3 >= 1)
  {
    v41 = a3;
    do
    {
      v42 = *a2;
      *a2 = *a2 - v12;
      ++a2;
      v12 = v11 * v42;
      --v41;
    }

    while (v41);
  }

LABEL_34:
  *a7 = v12;
  return result;
}

uint64_t celt_encode_with_ec(uint64_t *a1, float *a2, int a3, uint64_t a4, int a5, uint64_t *a6)
{
  v917 = *MEMORY[0x277D85DE8];
  memset(v913, 0, sizeof(v913));
  v8 = *(a1 + 2);
  v7 = *(a1 + 3);
  v912 = 15;
  v911 = 0.0;
  v910 = 0;
  v908 = 0;
  v906 = 0;
  v905 = 0;
  v9 = *a1;
  v11 = *(*a1 + 4);
  v10 = *(*a1 + 8);
  v12 = *(*a1 + 32);
  v13 = *(a1 + 10);
  v898 = *(a1 + 9);
  v907 = 0.0;
  result = 0xFFFFFFFFLL;
  if (!a2)
  {
    return result;
  }

  if (a5 < 2)
  {
    return result;
  }

  v15 = v9[10];
  if (v15 < 0)
  {
    return result;
  }

  v16 = a2;
  v17 = 0;
  v882 = v10;
  v18 = v898;
  v19 = v13;
  v20 = (a6 + 3);
  v900 = (a6 + 4);
  v21 = (*(a1 + 8) * a3);
  v22 = v15 + 1;
  v23 = 1;
  v24 = 16;
  v25 = &tf_select_table;
  while (v9[12] << v17 != v21)
  {
    ++v17;
    v23 -= 2;
    v24 += 8;
    v25 += 8;
    if (v22 == v17)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v889 = v12;
  if (a6)
  {
    v26 = __clz(*v900);
    v27 = *v900 >> (16 - v26);
    v28 = v27 >> 12;
    v29 = v27 > ec_tell_frac_correction[(v27 >> 12) - 8];
    v30 = v26 + *v20;
    LODWORD(v890) = v30 - 32;
    v31 = (v30 - 28) >> 3;
    v32 = 8 * v30 - v28 - v29 + 111;
  }

  else
  {
    v31 = 0;
    v32 = 360;
    LODWORD(v890) = 1;
  }

  v909 = 0;
  if (a5 >= 1275)
  {
    v33 = 1275;
  }

  else
  {
    v33 = a5;
  }

  v34 = *(a1 + 11);
  v35 = *(a1 + 12);
  v903 = a1;
  v852 = v32;
  v873 = v33 - v31;
  LODWORD(v877) = v31;
  if (v35)
  {
    if (v34 != -1)
    {
      v872 = (v34 * v21 + (*v9 >> 4)) / (*v9 >> 3);
      v36 = (v872 >> 6);
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (v34 == -1)
  {
LABEL_26:
    v872 = 0;
    v36 = (v33 - v31);
    goto LABEL_27;
  }

  v872 = 0;
  v37 = v890;
  if (v890 <= 1)
  {
    v37 = 0;
  }

  v38 = (v37 + v34 * v21 + 4 * *v9) / (8 * *v9) - (*(a1 + 13) != 0);
  if (v33 < v38)
  {
    v38 = v33;
  }

  if (v38 <= 2)
  {
    v33 = 2;
  }

  else
  {
    v33 = v38;
  }

  v36 = (v33 - v31);
LABEL_27:
  v891 = v36;
  v867 = v23;
  v887 = v21;
  v39 = v11 + 1024;
  v40 = v10 * v8;
  v861 = 3 - v17;
  if ((400 * v33) << (3 - v17) >= v34)
  {
    v41 = v34;
  }

  else
  {
    v41 = (400 * v33) << (3 - v17);
  }

  if (v34 == -1)
  {
    v42 = (400 * v33) << (3 - v17);
  }

  else
  {
    v42 = v41;
  }

  LODWORD(v901) = v42;
  if (!a6)
  {
    v913[0] = a4;
    *(&v913[1] + 4) = xmmword_273BBA7F0;
    *(&v913[3] + 4) = xmmword_273B920E0;
    LODWORD(v913[1]) = v33;
    *(&v913[5] + 4) = 0xFFFFFFFFLL;
    a6 = v913;
    v20 = &v913[3];
    v900 = &v913[4];
  }

  v899 = v20;
  v893 = v9;
  v895 = a6;
  v43 = v903 + 252;
  v44 = (v39 * v8);
  v886 = v10;
  v888 = v13;
  v885 = v898;
  v897 = v13;
  v896 = v7;
  LODWORD(v902) = v8;
  v883 = v33;
  v854 = v24;
  if (v872 >= 1 && *(v903 + 14))
  {
    v45 = 2 * (v890 == 1) <= (2 * v872 - *(v903 + 53)) >> 6 ? (2 * v872 - *(v903 + 53)) >> 6 : 2 * (v890 == 1);
    if (v45 < v873)
    {
      v46 = (v45 + v877);
      v47 = *v895;
      v48 = *v895 + v46;
      v878 = (v39 * v8);
      v49 = v10 * v8;
      v18 = memmove((v48 - *(v895 + 3)), (v47 + *(v895 + 2) - *(v895 + 3)), *(v895 + 3));
      v40 = v49;
      v44 = v878;
      v19 = v897;
      *(v895 + 2) = v46;
      LODWORD(v7) = v896;
      v873 = v45;
      v883 = v46;
    }
  }

  v864 = &v846;
  v880 = &v43[4 * v44];
  v50 = 4 * v40;
  LODWORD(v858) = v893[3];
  if (v19 >= v858)
  {
    v51 = v858;
  }

  else
  {
    v51 = v19;
  }

  MEMORY[0x28223BE20](v18, (v887 + v11), v44);
  v892 = &v846 - v59;
  v60 = *(v903 + 57);
  v61 = *(v903 + 8);
  v62 = (v58 - v11) * v7 / v61;
  v63 = 0.0;
  if (v62 < 1)
  {
    v72 = 0.0;
    LODWORD(v70) = v883;
    v71 = v902;
    if (v60 > 0.0)
    {
      goto LABEL_65;
    }

    goto LABEL_63;
  }

  v64 = v16;
  v65 = ((v58 - v11) * v7 / v61);
  v66 = 0.0;
  do
  {
    v67 = *v64++;
    v68 = v67;
    if (v66 <= v67)
    {
      v66 = v68;
    }

    if (v63 >= v68)
    {
      v63 = v68;
    }

    --v65;
  }

  while (v65);
  v69 = -v63;
  if (v66 > v69)
  {
    v69 = v66;
  }

  LODWORD(v70) = v883;
  v71 = v902;
  if (v60 <= v69)
  {
    v72 = 0.0;
    v73 = v16;
    v74 = ((v58 - v11) * v7 / v61);
    v63 = 0.0;
    do
    {
      v75 = *v73++;
      v76 = v75;
      if (v63 <= v75)
      {
        v63 = v76;
      }

      if (v72 >= v76)
      {
        v72 = v76;
      }

      --v74;
    }

    while (v74);
LABEL_63:
    v60 = -v72;
    if (v63 > -v72)
    {
      v60 = v63;
    }
  }

LABEL_65:
  v77 = v57 + v7 * v55;
  LODWORD(v894) = 8 * v70;
  v78 = (v11 * v7 / v61);
  if (v78 < 1)
  {
    v81 = 0.0;
    v80 = 0.0;
  }

  else
  {
    v79 = &v16[v62];
    v80 = 0.0;
    v81 = 0.0;
    do
    {
      v82 = *v79++;
      v83 = v82;
      if (v81 <= v82)
      {
        v81 = v83;
      }

      if (v80 >= v83)
      {
        v80 = v83;
      }

      --v78;
    }

    while (v78);
  }

  v84 = &v43[4 * v11 * v71];
  v879 = v54;
  v868 = &v880[v50];
  v904 = &v880[v50 + v50];
  v855 = v77;
  v865 = v901 - (v56 - 50) * v77;
  v85 = -v80;
  if (v81 <= v85)
  {
    v81 = v85;
  }

  v86 = v903;
  *(v903 + 57) = v81;
  if (v60 <= v81)
  {
    v87 = v81;
  }

  else
  {
    v87 = v60;
  }

  v863 = v50;
  v874 = 1;
  v881 = v52;
  v884 = v84;
  if (v890 == 1)
  {
    v878 = v53;
    v88 = 1.0 / (1 << *(v86 + 16));
    v89 = v895;
    ec_enc_bit_logp(v895, v87 <= v88, 15);
    if (v87 > v88)
    {
      LODWORD(v890) = 1;
      v92 = v867;
      v86 = v903;
      v71 = v902;
      LODWORD(v52) = v881;
      LODWORD(v53) = v878;
    }

    else
    {
      v90 = v899;
      if (v872 < 1)
      {
        v91 = v894;
      }

      else
      {
        if (v70 >= v877 + 2)
        {
          v70 = (v877 + 2);
        }

        else
        {
          v70 = v70;
        }

        v91 = 8 * v70;
        memmove((*v89 + v70 - *(v89 + 3)), (*v89 + *(v89 + 2) - *(v89 + 3)), *(v89 + 3));
        v90 = v899;
        *(v89 + 2) = v70;
        v873 = 2;
        v891 = v70;
        v883 = v70;
      }

      v86 = v903;
      v71 = v902;
      LODWORD(v52) = v881;
      LODWORD(v53) = v878;
      v874 = 0;
      *v90 = v91 - __clz(*v900) + 32;
      LODWORD(v894) = v91;
      LODWORD(v890) = v91;
      v92 = v867;
    }
  }

  else
  {
    v92 = v867;
  }

  v853 = 1 << v17;
  v878 = v53;
  v856 = v7 - v92;
  v93 = &v892[4 * v11];
  v94 = v86 + 49;
  if (v71 <= 1)
  {
    v95 = 1;
  }

  else
  {
    v95 = v71;
  }

  v96 = 4 * v52;
  v901 = v95;
  v97 = v893;
  v98 = v887;
  do
  {
    v100 = v87 > 65536.0 && *(v86 + 5) != 0;
    celt_preemphasis(v16, v93, v98, v71, *(v86 + 8), (v97 + 16), v94, v100);
    v71 = v902;
    v86 = v903;
    ++v94;
    v93 = (v93 + v96);
    ++v16;
    --v95;
  }

  while (v95);
  v914 = 0;
  v101 = 0;
  if (*(v903 + 17))
  {
    v102 = v873 <= 3;
  }

  else
  {
    v102 = 1;
  }

  if (v102)
  {
    v103 = v896;
    v104 = v895;
    v105 = v893;
    v106 = v887;
    v107 = v894;
    v108 = v884;
    if (v873 <= 12 * v896 || v898)
    {
      goto LABEL_114;
    }
  }

  else
  {
    v104 = v895;
    v105 = v893;
    v103 = v896;
    v106 = v887;
    v107 = v894;
    v108 = v884;
    if (v898)
    {
      goto LABEL_114;
    }
  }

  if (((v874 ^ 1) & 1) == 0)
  {
    if (*(v903 + 6))
    {
      v101 = 0;
    }

    else
    {
      v101 = *(v903 + 7) > 4;
    }
  }

LABEL_114:
  v109 = *(v903 + 26);
  v850 = (v903 + 13);
  v875 = v903 + 31;
  v110 = run_prefilter(v903, v892, v108, v902, v106, v109, &v912, &v911, &v914, v101, v873, v903 + 31);
  v112 = v903;
  v113 = v911;
  if (v911 <= 0.4 && *(v903 + 28) <= 0.4 || *v875 && *(v903 + 32) <= 0.3)
  {
    v116 = 1;
  }

  else
  {
    v114 = v912;
    v115 = *(v903 + 27);
    v116 = v115 * 1.26 >= v114;
    if (v115 * 0.79 > v114)
    {
      v116 = 0;
    }
  }

  v851 = v116;
  v117 = v902;
  v849 = v110;
  if (v110)
  {
    ec_enc_bit_logp(v104, 1, 1);
    v118 = v912 + 1;
    v119 = __clz(v912 + 1);
    ec_encode(v895, 27 - v119, 28 - v119, 6u);
    v120 = (-16 << (27 - v119)) + v118;
    v121 = 31 - v119;
    v122 = v895;
    v123 = *(v895 + 4);
    v124 = *(v895 + 5);
    v125 = v124 + 31 - v119;
    if (v125 < 0x21)
    {
      v130 = *(v895 + 5);
      v126 = v899;
    }

    else
    {
      v126 = v899;
      do
      {
        v132 = *(v122 + 2);
        v131 = *(v122 + 3);
        if (v131 + *(v122 + 7) < v132)
        {
          v127 = 0;
          v128 = *v122;
          v129 = v131 + 1;
          *(v122 + 3) = v129;
          *(v128 + v132 - v129) = v123;
        }

        else
        {
          v127 = -1;
        }

        *(v122 + 12) |= v127;
        v123 >>= 8;
        v130 = v124 - 8;
        v102 = v124 <= 15;
        v124 -= 8;
      }

      while (!v102);
      v125 = v121 + v130;
    }

    v133 = (v120 << v130) | v123;
    v134 = *v126 + v121;
    *v126 = v134;
    v135 = v914;
    v136 = v125 + 3;
    if ((v125 + 3) >= 0x21)
    {
      do
      {
        v142 = *(v122 + 2);
        v141 = *(v122 + 3);
        if (v141 + *(v122 + 7) < v142)
        {
          v137 = 0;
          v138 = *v122;
          v139 = v141 + 1;
          *(v122 + 3) = v139;
          *(v138 + v142 - v139) = v133;
        }

        else
        {
          v137 = -1;
        }

        *(v122 + 12) |= v137;
        v133 >>= 8;
        v140 = v125 - 8;
        v102 = v125 <= 15;
        v125 -= 8;
      }

      while (!v102);
      v136 = v140 + 3;
      v134 = *v126;
      LOBYTE(v125) = v140;
    }

    *(v122 + 4) = (v135 << v125) | v133;
    *(v122 + 5) = v136;
    *v126 = v134 + 3;
    v110 = ec_enc_icdf(v122, v109, &tapset_icdf_0, 2);
    v112 = v903;
    v117 = v902;
  }

  else
  {
    v126 = v899;
    if (!v885 && v890 + 16 <= v107)
    {
      v110 = ec_enc_bit_logp(v104, 0, 1);
      v117 = v902;
      v112 = v903;
    }
  }

  v143 = *(v112 + 7);
  if (v143 < 1 || *(v112 + 17))
  {
    v144 = 1;
    v862 = v109;
    if (v17)
    {
      goto LABEL_145;
    }

LABEL_181:
    v145 = 1;
    goto LABEL_182;
  }

  transient_analysis();
  v117 = v902;
  v144 = v110 == 0;
  v862 = v109;
  if (!v17)
  {
    goto LABEL_181;
  }

LABEL_145:
  v145 = (*v126 + __clz(*v900) - 29) > v107;
  if (v145 || v144)
  {
LABEL_182:
    v190 = v107;
    v857 = v145;
    v207 = MEMORY[0x28223BE20](v110, v111, v117);
    v148 = (&v846 - v208);
    v211 = MEMORY[0x28223BE20](v207, v209, v210);
    v876 = (&v846 - ((v212 + 15) & 0x7FFFFFFF0));
    v215 = MEMORY[0x28223BE20](v211, v213, v214);
    v881 = (&v846 - v216);
    v877 = (v882 * v103);
    MEMORY[0x28223BE20](v215, v217, v218);
    v159 = v902;
    v870 = (&v846 - v219);
    LODWORD(v890) = 0;
    LODWORD(v869) = 0;
    LODWORD(v884) = 0;
    v192 = 0;
    v191 = 1;
    goto LABEL_183;
  }

  v146 = MEMORY[0x28223BE20](v110, v111, v117);
  v148 = (&v846 - v147);
  v151 = MEMORY[0x28223BE20](v146, v149, v150);
  v876 = (&v846 - ((v152 + 15) & 0x7FFFFFFF0));
  v155 = MEMORY[0x28223BE20](v151, v153, v154);
  v881 = (&v846 - v156);
  v877 = (v882 * v103);
  MEMORY[0x28223BE20](v155, v157, v158);
  v870 = (&v846 - v161);
  if (v143 < 8)
  {
    v190 = v107;
    LODWORD(v890) = 0;
    v857 = 0;
    v191 = 0;
    LODWORD(v869) = 1;
    LODWORD(v884) = 1;
    v192 = v853;
    goto LABEL_183;
  }

  LODWORD(v844) = *(v160 + 19);
  compute_mdcts(v105, 0, v892, v148, v103, v159, v17, *(v160 + 8));
  v162 = v897;
  v163 = v876;
  if (v51 < 1)
  {
    goto LABEL_167;
  }

  v164 = 0;
  v165 = *(v105 + 32);
  v166 = *(v105 + 8);
  if (v103 <= 1)
  {
    v167 = 1;
  }

  else
  {
    v167 = v103;
  }

  v168 = *v165;
  v169 = v148 + 1;
  v170 = 4 * (*(v105 + 48) << v17);
  v171 = v148;
  while (2)
  {
    v172 = 0;
    v173 = &v163->i8[4 * v164 * v166];
    v174 = v168;
    do
    {
      while (1)
      {
        v175 = v172 + 1;
        v176 = ((v165[v172 + 1] - v174) << v17);
        if (v176 >= 1)
        {
          break;
        }

        v174 = v165[v172 + 1];
        *&v173[4 * v172++] = sqrtf(1.0e-27);
        if (v175 == v51)
        {
          goto LABEL_152;
        }
      }

      v177 = v174 << v17;
      if (v176 < 8)
      {
        v178 = 0;
        v179 = 0.0;
LABEL_161:
        v188 = v176 - v178;
        v189 = 4 * v178 + 4 * v177;
        do
        {
          v179 = v179 + (*(v171->f32 + v189) * *(v171->f32 + v189));
          v189 += 4;
          --v188;
        }

        while (v188);
        goto LABEL_163;
      }

      v178 = v176 & 0x7FFFFFF8;
      v180 = (v169 + 4 * v177);
      v181 = (v171 + 4 * v177);
      v179 = 0.0;
      v182 = v178;
      do
      {
        v183 = *v181;
        v181 += 2;
        v184 = v183;
        v185 = *v180;
        v180 += 2;
        v186 = vmulq_f32(v184, v184);
        v187 = vmulq_f32(v185, v185);
        v179 = (((((((v179 + v186.f32[0]) + v186.f32[1]) + v186.f32[2]) + v186.f32[3]) + v187.f32[0]) + v187.f32[1]) + v187.f32[2]) + v187.f32[3];
        v182 -= 8;
      }

      while (v182);
      if (v178 != v176)
      {
        goto LABEL_161;
      }

LABEL_163:
      v174 = v165[v172 + 1];
      *&v173[4 * v172++] = sqrtf(v179 + 1.0e-27);
    }

    while (v175 != v51);
LABEL_152:
    ++v164;
    v169 = (v169 + v170);
    v171 = (v171 + v170);
    if (v164 != v167)
    {
      continue;
    }

    break;
  }

LABEL_167:
  v193 = v870;
  v194 = v162;
  amp2Log2(v105, v51, v162, v163, v870, v103);
  if (v103 >= 1)
  {
    v196 = 0;
    *v195.i32 = v17;
    v197 = vdupq_lane_s32(v195, 0);
    v198 = v193 + 1;
    v199 = 4 * v886;
    v200.i64[0] = 0x3F0000003F000000;
    v200.i64[1] = 0x3F0000003F000000;
    v159 = v902;
    while (1)
    {
      if (v194 >= 1)
      {
        if (v194 >= 8)
        {
          v202 = v194 & 0x7FFFFFF8;
          v203 = v198;
          do
          {
            v204 = vmlaq_f32(*v203, v200, v197);
            v203[-1] = vmlaq_f32(v203[-1], v200, v197);
            *v203 = v204;
            v203 += 2;
            v202 -= 8;
          }

          while (v202);
          v201 = v194 & 0x7FFFFFF8;
          if (v201 == v194)
          {
            goto LABEL_169;
          }
        }

        else
        {
          v201 = 0;
        }

        v205 = v194 - v201;
        v206 = &v193->f32[v201];
        do
        {
          *v206 = *v206 + (*v195.i32 * 0.5);
          ++v206;
          --v205;
        }

        while (v205);
      }

LABEL_169:
      ++v196;
      v198 = (v198 + v199);
      v193 = (v193 + v199);
      if (v196 == v103)
      {
        v190 = v107;
        v857 = 0;
        v191 = 0;
        LODWORD(v890) = 1;
        LODWORD(v869) = 1;
        LODWORD(v884) = 1;
        v192 = v853;
        v160 = v903;
        goto LABEL_183;
      }
    }
  }

  v190 = v107;
  v857 = 0;
  v191 = 0;
  LODWORD(v890) = 1;
  LODWORD(v869) = 1;
  LODWORD(v884) = 1;
  v192 = v853;
  v160 = v903;
  v159 = v902;
LABEL_183:
  v220 = *(v160 + 8);
  LODWORD(v844) = *(v160 + 19);
  v866 = v192;
  v221 = v159;
  compute_mdcts(v105, v192, v892, v148, v103, v159, v17, v220);
  v223 = v221 == 2 && v103 == 1;
  v224 = v223;
  v860 = v224;
  if (v223)
  {
    v908 = 0;
  }

  v225 = v897;
  v226 = v876;
  if (v51 < 1)
  {
    goto LABEL_210;
  }

  v227 = 0;
  v228 = *(v105 + 32);
  v229 = *(v105 + 8);
  if (v103 <= 1)
  {
    v230 = 1;
  }

  else
  {
    v230 = v103;
  }

  v231 = *v228;
  v232 = v148 + 1;
  v233 = 4 * (*(v105 + 48) << v17);
  v234 = v148;
  while (2)
  {
    v235 = 0;
    v236 = &v226->i8[4 * v227 * v229];
    v237 = v231;
    while (2)
    {
      while (1)
      {
        v238 = v235 + 1;
        v239 = ((v228[v235 + 1] - v237) << v17);
        if (v239 >= 1)
        {
          break;
        }

        v237 = v228[v235 + 1];
        *&v236[4 * v235++] = sqrtf(1.0e-27);
        if (v238 == v51)
        {
          goto LABEL_197;
        }
      }

      v240 = v237 << v17;
      if (v239 < 8)
      {
        v241 = 0;
        v222 = 0;
        goto LABEL_206;
      }

      v241 = v239 & 0x7FFFFFF8;
      v242 = (v232 + 4 * v240);
      v243 = (v234 + 4 * v240);
      v222 = 0;
      v244 = v241;
      do
      {
        v245 = *v243;
        v243 += 2;
        v246 = v245;
        v247 = *v242;
        v242 += 2;
        v248 = vmulq_f32(v246, v246);
        v249 = vmulq_f32(v247, v247);
        *v222.i32 = (((((((*v222.i32 + v248.f32[0]) + v248.f32[1]) + v248.f32[2]) + v248.f32[3]) + v249.f32[0]) + v249.f32[1]) + v249.f32[2]) + v249.f32[3];
        v244 -= 8;
      }

      while (v244);
      if (v241 != v239)
      {
LABEL_206:
        v250 = v239 - v241;
        v251 = 4 * v241 + 4 * v240;
        do
        {
          *v222.i32 = *v222.i32 + (*(v234->f32 + v251) * *(v234->f32 + v251));
          v251 += 4;
          --v250;
        }

        while (v250);
      }

      v237 = v228[v235 + 1];
      *&v236[4 * v235++] = sqrtf(*v222.i32 + 1.0e-27);
      if (v238 != v51)
      {
        continue;
      }

      break;
    }

LABEL_197:
    ++v227;
    v232 = (v232 + v233);
    v234 = (v234 + v233);
    if (v227 != v230)
    {
      continue;
    }

    break;
  }

LABEL_210:
  v252 = *(v903 + 17);
  if (v252 && v225 >= 3)
  {
    *v222.i32 = v226->f32[0] * 0.0001;
    v253 = v225 - 2;
    if ((v225 - 2) >= 8)
    {
      v255 = vdupq_lane_s32(v222, 0);
      v254 = v253 & 0xFFFFFFFFFFFFFFF8 | 2;
      v256 = (v226 + 24);
      v257 = vdupq_n_s32(0x26901D7Du);
      v258 = v253 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v259 = vmaxnmq_f32(vbslq_s8(vcgtq_f32(v255, *v256), *v256, v255), v257);
        v256[-1] = vmaxnmq_f32(vbslq_s8(vcgtq_f32(v255, v256[-1]), v256[-1], v255), v257);
        *v256 = v259;
        v256 += 2;
        v258 -= 8;
      }

      while (v258);
      if (v253 != (v253 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_217;
      }
    }

    else
    {
      v254 = 2;
LABEL_217:
      v260 = v225 - v254;
      v261 = &v226->f32[v254];
      do
      {
        v262 = *v261;
        if (*v261 >= *v222.i32)
        {
          v262 = *v222.i32;
        }

        *v261++ = fmaxf(v262, 1.0e-15);
        --v260;
      }

      while (v260);
    }
  }

  amp2Log2(v105, v51, v225, v226, v881, v103);
  MEMORY[0x28223BE20](v263, v264, v265);
  v859 = v266;
  v871 = (&v846 - ((v266 + 15) & 0x7FFFFFFF0));
  bzero(v871, 4 * v888);
  v270 = v903;
  v271 = v898;
  if (v898 || (v275 = v903[30]) == 0)
  {
    v272 = 0.0;
    v273 = v886;
    if (!v252)
    {
      v276 = 0.0;
      v278 = v895;
      v279 = v897;
      goto LABEL_558;
    }

    v274 = 1;
    goto LABEL_227;
  }

  v273 = v886;
  if (v252)
  {
    v274 = 1;
    v272 = 0.0;
LABEL_227:
    v276 = 0.0;
    v277 = 0.0;
    v278 = v895;
    v279 = v897;
    v280 = v190;
    if (v890)
    {
      goto LABEL_229;
    }

LABEL_228:
    v267 = memcpy(v870, v881, 4 * v877);
    v270 = v903;
    v279 = v897;
    v273 = v886;
    goto LABEL_229;
  }

  v370 = *(v903 + 24);
  if (v370 <= 2)
  {
    v371 = 2;
  }

  else
  {
    v371 = v370;
  }

  v279 = v897;
  if (v103 <= 0)
  {
    v610 = 0.0;
    v611 = NAN;
    goto LABEL_527;
  }

  v372 = 0;
  LODWORD(v269) = 0;
  v373 = *v889;
  v847 = vdup_n_s16(*v889);
  v374 = vdupq_n_s32(v371);
  v375 = (v275 + 16);
  v376 = 4 * v886;
  v267 = (1 - v371);
  v377 = 0.0;
  __asm { FMOV            V6.4S, #0.25 }

  v846 = xmmword_273B90830;
  v381.i64[0] = 0xC0000000C0000000;
  v381.i64[1] = 0xC0000000C0000000;
  v382.i64[0] = 0x3F0000003F000000;
  v382.i64[1] = 0x3F0000003F000000;
  v383.i64[0] = 0x100000001;
  v383.i64[1] = 0x100000001;
  v384.i64[0] = 0x800000008;
  v384.i64[1] = 0x800000008;
  v385.i64[0] = 0x900000009;
  v385.i64[1] = 0x900000009;
  v268 = v275;
  v386 = 0.0;
  v848 = v113;
  while (2)
  {
    if (v370 >= 8)
    {
      v389 = 0uLL;
      v390 = v371 & 0x7FFFFFF8;
      v391 = v269;
      v392 = v375;
      v393 = (v889 + 5);
      v394 = v847;
      v395 = v846;
      do
      {
        v396 = v392[-1];
        v397 = vcgtq_f32(_Q6, v396);
        v398 = vcgtq_f32(_Q6, *v392);
        v399 = vcgtq_f32(v396, v381);
        v400 = vcgtq_f32(*v392, v381);
        v401 = vbslq_s8(vornq_s8(vmvnq_s8(v397), v399), vbslq_s8(vornq_s8(v399, v397), _Q6, v381), v396);
        v402 = vbslq_s8(vornq_s8(vmvnq_s8(v398), v400), vbslq_s8(vornq_s8(v400, v398), _Q6, v381), *v392);
        v403 = vbslq_s8(vcgtzq_f32(v401), vmulq_f32(v401, v382), v401);
        v404 = vbslq_s8(vcgtzq_f32(v402), vmulq_f32(v402, v382), v402);
        *v397.i8 = v393[-1];
        v405 = vext_s8(v394, *v397.i8, 6uLL);
        v406 = *v393;
        v393 += 2;
        v394 = v406;
        *v398.i8 = vext_s8(*v397.i8, v406, 6uLL);
        v407 = vsubl_s16(*v397.i8, v405);
        v408 = vsubl_s16(v406, *v398.i8);
        v409 = vmulq_f32(v403, vcvtq_f32_s32(v407));
        v410 = vmulq_f32(v404, vcvtq_f32_s32(v408));
        v391 = vaddq_s32(v407, v391);
        v389 = vaddq_s32(v408, v389);
        v411 = vsubq_s32(vaddq_s32(v395, v395), v374);
        v412 = vmulq_f32(v403, vcvtq_f32_s32(vaddq_s32(v411, v383)));
        v413 = vmulq_f32(v404, vcvtq_f32_s32(vaddq_s32(v411, v385)));
        v377 = (((((((v377 + v412.f32[0]) + v412.f32[1]) + v412.f32[2]) + v412.f32[3]) + v413.f32[0]) + v413.f32[1]) + v413.f32[2]) + v413.f32[3];
        v386 = (((((((v386 + v409.f32[0]) + v409.f32[1]) + v409.f32[2]) + v409.f32[3]) + v410.f32[0]) + v410.f32[1]) + v410.f32[2]) + v410.f32[3];
        v395 = vaddq_s32(v395, v384);
        v392 += 2;
        v390 -= 8;
      }

      while (v390);
      v269 = vaddvq_s32(vaddq_s32(v389, v391));
      if ((v371 & 0x7FFFFFF8) != v371)
      {
        v388 = v394.i16[3];
        v387 = v371 & 0x7FFFFFF8;
        v113 = v848;
        goto LABEL_312;
      }

      v113 = v848;
    }

    else
    {
      v387 = 0;
      v388 = v373;
LABEL_312:
      v414 = v267 + 2 * v387;
      v415 = v371 - v387;
      v416 = &v889[v387 + 1];
      v417 = &v268->f32[v387];
      do
      {
        v418 = *v417++;
        v419 = v418;
        v420 = v418 >= 0.25;
        v421 = v418 > -2.0 || v420;
        if (v419 <= -2.0)
        {
          v420 = 1;
        }

        if (v421)
        {
          v422 = 0.25;
        }

        else
        {
          v422 = -2.0;
        }

        if (v420)
        {
          v419 = v422;
        }

        if (v419 > 0.0)
        {
          v419 = v419 * 0.5;
        }

        v423 = *v416++;
        v424 = v423 - v388;
        v386 = v386 + (v419 * v424);
        v269 = (v424 + v269);
        v377 = v377 + (v419 * v414);
        v414 += 2;
        v388 = v423;
        --v415;
      }

      while (v415);
    }

    ++v372;
    v375 = (v375 + v376);
    v268 = (v268 + v376);
    if (v372 != v103)
    {
      continue;
    }

    break;
  }

  v610 = v377 * 6.0;
  v611 = (v386 / v269) + 0.2;
  v271 = v898;
  v270 = v903;
LABEL_527:
  v612 = fminf((v610 / (v371 * v103 * (v371 - 1) + v371 * v103 * (v371 - 1) * v371)) * 0.5, 0.031);
  v613 = (v889 + 1);
  v614 = 1;
  do
  {
    v615 = *v613++;
    --v614;
  }

  while (v615 < (v889[v371] + (v889[v371] >> 15)) << 16 >> 17);
  v616 = 0;
  v617 = 0;
  v618 = fmaxf(v612, -0.031);
  v278 = v895;
  v620 = v871;
  while (2)
  {
    v621 = *(v275 + 4 * v616);
    if (v103 == 2)
    {
      v619 = v275 + 4 * v273;
      if (v621 <= *(v619 + 4 * v616))
      {
        v621 = *(v619 + 4 * v616);
      }

      v622 = fminf(v621, 0.0) - (v611 + (v618 * v614));
      if (v622 > 0.25)
      {
LABEL_537:
        v620->f32[v616] = v622 + -0.25;
        ++v617;
      }
    }

    else
    {
      v622 = fminf(v621, 0.0) - (v611 + (v618 * v614));
      if (v622 > 0.25)
      {
        goto LABEL_537;
      }
    }

    ++v616;
    ++v614;
    if (v371 != v616)
    {
      continue;
    }

    break;
  }

  if (v617 < 3)
  {
    goto LABEL_557;
  }

  v611 = v611 + 0.25;
  if (v611 > 0.0)
  {
    bzero(v871, 4 * v371);
    v270 = v903;
    v271 = v898;
    v279 = v897;
    v273 = v886;
    v611 = 0.0;
    v618 = 0.0;
    goto LABEL_557;
  }

  if (v371 > 7)
  {
    v623 = v371 & 0x7FFFFFF8;
    v625 = v871 + 1;
    __asm { FMOV            V2.4S, #-0.25 }

    v627 = v623;
    do
    {
      v628 = vaddq_f32(v625[-1], _Q2);
      v629 = vaddq_f32(*v625, _Q2);
      v625[-1] = vbicq_s8(v628, vcltzq_f32(v628));
      *v625 = vbicq_s8(v629, vcltzq_f32(v629));
      v625 += 2;
      v627 -= 8;
    }

    while (v627);
    if (v371 != v623)
    {
      goto LABEL_553;
    }
  }

  else
  {
    v623 = 0;
LABEL_553:
    v630 = v371 - v623;
    v631 = &v871->f32[v623];
    do
    {
      v632 = *v631 + -0.25;
      if (v632 < 0.0)
      {
        v632 = 0.0;
      }

      *v631++ = v632;
      --v630;
    }

    while (v630);
  }

LABEL_557:
  v276 = v611 + 0.2;
  v272 = v618 * 64.0;
LABEL_558:
  v633 = vcvts_n_f32_u32(v17, 1uLL);
  v634 = 0.0;
  if (v191)
  {
    v633 = 0.0;
  }

  v280 = v190;
  if (v279 > v271)
  {
    v635 = v888 - v271;
    v636 = &v881->f32[v271 + v273];
    v637 = &v881->f32[v271];
    v638 = -10.0;
    do
    {
      v638 = v638 + -1.0;
      if (v638 <= (*v637 - v633))
      {
        v638 = *v637 - v633;
      }

      if (v103 == 2 && v638 <= (*v636 - v633))
      {
        v638 = *v636 - v633;
      }

      v634 = v634 + v638;
      ++v636;
      ++v637;
      --v635;
    }

    while (v635);
  }

  v274 = 0;
  v639 = v634 / (v279 - v271);
  v640 = *(v270 + 62);
  v641 = v639 - v640;
  if (v641 < -1.5)
  {
    v641 = -1.5;
  }

  if (v641 <= 3.0)
  {
    v277 = v641;
  }

  else
  {
    v277 = 3.0;
  }

  *(v270 + 62) = v640 + (v277 * 0.02);
  if ((v890 & 1) == 0)
  {
    goto LABEL_228;
  }

LABEL_229:
  if (!v17)
  {
    v283 = v893;
    goto LABEL_236;
  }

  v281 = *v899 + __clz(*v900) - 29;
  v282 = v869;
  if (v281 > v280)
  {
    v282 = 1;
  }

  if (v282 & 1) != 0 || ((LODWORD(v884) = 0, *(v270 + 7) < 5) ? (v357 = 1) : (v357 = v274), (v358 = v870, (v357) || v885))
  {
    v283 = v893;
    if (v281 > v280)
    {
      goto LABEL_236;
    }

    goto LABEL_234;
  }

  v359 = *v880;
  if (v103 == 1)
  {
    v914 = *v880;
    v360 = 0.0;
    if (v279 >= 2)
    {
      v361 = v279 - 1;
      v362 = v915;
      v363 = v903 + v878 + 64;
      do
      {
        v364 = *v363++;
        v365 = v364;
        v359 = v359 + -1.0;
        if (v359 <= v364)
        {
          v359 = v365;
        }

        *v362++ = v359;
        --v361;
      }

      while (v361);
      goto LABEL_336;
    }

    goto LABEL_360;
  }

  if (v359 <= *&v880[4 * v273])
  {
    v359 = *&v880[4 * v273];
  }

  v914 = LODWORD(v359);
  v360 = 0.0;
  if (v279 >= 2)
  {
    v425 = v279 - 1;
    v426 = v915;
    v427 = v903 + v878 + 64;
    do
    {
      v359 = v359 + -1.0;
      v428 = *v427;
      if (*v427 <= v427[v273])
      {
        v428 = v427[v273];
      }

      if (v359 <= v428)
      {
        v359 = v428;
      }

      *v426++ = v359;
      ++v427;
      --v425;
    }

    while (v425);
LABEL_336:
    v360 = 0.0;
    v429 = 4 * (v279 - 2);
    v430 = *&v915[v429];
    do
    {
      v430 = v430 + -1.0;
      if (*&v915[v429 - 4] > v430)
      {
        v430 = *&v915[v429 - 4];
      }

      *&v915[v429 - 4] = v430;
      v429 -= 4;
    }

    while (v429 != -4);
    if (v279 >= 4)
    {
      v431 = 0;
      v432 = (v888 - 1);
      if (v103 <= 1)
      {
        v433 = 1;
      }

      else
      {
        v433 = v103;
      }

      v434 = v432 - 2;
      v435 = (v432 - 2) & 0xFFFFFFFFFFFFFFF8;
      v268 = v881;
      v436 = &v881[1].u32[2];
      v437 = 4 * v273;
      v267 = &v916;
      v360 = 0.0;
      while (v434 >= 8)
      {
        v269 = (v432 - 2) & 0xFFFFFFFFFFFFFFF8;
        v439 = &v916;
        v440 = v436;
        do
        {
          v441 = vsubq_f32(vbicq_s8(v440[-1], vcltzq_f32(v440[-1])), vbicq_s8(v439[-1], vcltzq_f32(v439[-1])));
          v442 = vsubq_f32(vbicq_s8(*v440, vcltzq_f32(*v440)), vbicq_s8(*v439, vcltzq_f32(*v439)));
          v443 = vbicq_s8(v441, vcltzq_f32(v441));
          v444 = vbicq_s8(v442, vcltzq_f32(v442));
          v360 = (((((((v360 + *v443.i32) + *&v443.i32[1]) + *&v443.i32[2]) + *&v443.i32[3]) + *v444.i32) + *&v444.i32[1]) + *&v444.i32[2]) + *&v444.i32[3];
          v440 += 2;
          v439 += 2;
          v269 -= 8;
        }

        while (v269);
        v438 = v435 | 2;
        if (v434 != v435)
        {
          goto LABEL_351;
        }

LABEL_345:
        ++v431;
        v436 = (v436 + v437);
        v268 = (v268 + v437);
        if (v431 == v433)
        {
          goto LABEL_360;
        }
      }

      v438 = 2;
LABEL_351:
      v269 = v432 - v438;
      v445 = v438;
      v446 = &v915[4 * v438 - 4];
      v447 = &v268->f32[v445];
      do
      {
        v448 = *v447++;
        v449 = v448;
        if (v448 < 0.0)
        {
          v449 = 0.0;
        }

        v450 = *v446++;
        v451 = v450;
        if (v450 < 0.0)
        {
          v451 = 0.0;
        }

        v452 = v449 - v451;
        if (v452 < 0.0)
        {
          v452 = 0.0;
        }

        v360 = v360 + v452;
        --v269;
      }

      while (v269);
      goto LABEL_345;
    }
  }

LABEL_360:
  if ((v360 / ((v279 - 3) * v103)) <= 1.0)
  {
    LODWORD(v884) = 0;
    v283 = v893;
    if (v281 > v280)
    {
      goto LABEL_236;
    }

LABEL_234:
    v267 = ec_enc_bit_logp(v278, v884, 3);
    goto LABEL_236;
  }

  LODWORD(v844) = *(v903 + 19);
  v283 = v893;
  compute_mdcts(v893, v853, v892, v148, v103, v902, v17, *(v903 + 8));
  v453 = v876;
  compute_band_energies(v283, v148, v876, v51, v103, v17);
  amp2Log2(v283, v51, v897, v453, v881, v103);
  v455 = v897;
  v456 = v886;
  if (v103 >= 1)
  {
    v457 = 0;
    v458 = 0;
    *v454.i32 = v17;
    v459 = v897 & 0x7FFFFFF8;
    v460 = vdupq_lane_s32(v454, 0);
    v461 = v358 + 1;
    v462.i64[0] = 0x3F0000003F000000;
    v462.i64[1] = 0x3F0000003F000000;
    do
    {
      if (v455 >= 1)
      {
        if (v455 >= 8)
        {
          v464 = v455 & 0x7FFFFFF8;
          v465 = v461;
          do
          {
            v466 = vmlaq_f32(*v465, v462, v460);
            v465[-1] = vmlaq_f32(v465[-1], v462, v460);
            *v465 = v466;
            v465 += 2;
            v464 -= 8;
          }

          while (v464);
          v463 = v455 & 0x7FFFFFF8;
          if (v459 == v455)
          {
            goto LABEL_365;
          }
        }

        else
        {
          v463 = 0;
        }

        v467 = v455 - v463;
        v468 = &v358->f32[v463 + v457];
        do
        {
          *v468 = *v468 + (*v454.i32 * 0.5);
          ++v468;
          --v467;
        }

        while (v467);
      }

LABEL_365:
      ++v458;
      v461 = (v461 + 4 * v456);
      v457 += v456;
    }

    while (v458 != v103);
  }

  v907 = 0.2;
  v469 = *v899 + __clz(*v900) - 29;
  LODWORD(v884) = 1;
  v866 = v853;
  if (v469 <= v280)
  {
    goto LABEL_234;
  }

LABEL_236:
  v284 = MEMORY[0x28223BE20](v267, v268, v269);
  v288 = &v846 - v287;
  v289 = v876;
  v290 = v891;
  if (v51 >= 1)
  {
    v291 = 0;
    v292 = 0;
    v293 = *(v283 + 32);
    v294 = *(v283 + 8);
    v295 = (*(v283 + 48) << v17);
    if (v103 <= 1)
    {
      v296 = 1;
    }

    else
    {
      v296 = v103;
    }

    v297 = *v293;
    do
    {
      v286 = 0;
      LOWORD(v285) = v297;
      do
      {
        LODWORD(v298) = v285 << v17;
        v284 = v286 + 1;
        LODWORD(v285) = v293[v286 + 1];
        v299 = v285 << v17;
        if (v298 < v285 << v17)
        {
          v300 = 1.0 / (*(v289 + 4 * v292 * v294 + 4 * v286) + 1.0e-27);
          v301 = v298;
          v302 = v299;
          v303 = v299 - v298;
          v298 = v298;
          if (v303 < 8)
          {
            goto LABEL_249;
          }

          v298 = (v303 & 0xFFFFFFFFFFFFFFF8) + v298;
          v304 = 4 * (v291 + v301);
          v305 = (v148 + v304 + 16);
          v306 = &v288[v304 + 16];
          v307 = v303 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v308 = vmulq_n_f32(*v305, v300);
            v306[-1] = vmulq_n_f32(v305[-1], v300);
            *v306 = v308;
            v305 += 2;
            v306 += 2;
            v307 -= 8;
          }

          while (v307);
          if (v303 != (v303 & 0xFFFFFFFFFFFFFFF8))
          {
LABEL_249:
            v309 = v302 - v298;
            v310 = v291 + v298;
            v311 = &v288[v310 * 4];
            v312 = &v148->f32[v310];
            do
            {
              v313 = *v312++;
              *v311++ = v300 * v313;
              --v309;
            }

            while (v309);
          }
        }

        v285 = v285;
        v286 = v284;
      }

      while (v284 != v51);
      ++v292;
      v291 += v295;
    }

    while (v292 != v296);
  }

  v890 = v288;
  if (v290 < 15 * v103 || v898)
  {
    v314 = v283;
    v316 = 0;
  }

  else
  {
    v314 = v283;
    v316 = *(v903 + 7) > 1 && *(v903 + 17) == 0;
  }

  v317 = v884;
  v318 = 4 * v882;
  v319 = MEMORY[0x28223BE20](v284, v285, v286);
  v320 = (v318 + 15) & 0x7FFFFFFF0;
  v323 = MEMORY[0x28223BE20](v319, v321, v322);
  MEMORY[0x28223BE20](v323, v324, v325);
  v327 = v326[16];
  v328 = *(v314 + 64);
  v329 = v326[12];
  v330 = v326[14];
  v882 = &v846 - v320;
  v331 = v891;
  v902 = v332;
  v335 = dynalloc_analysis(v881, v870, v886, v885, v897, v896, v332, v327, v328, v317, v329, v330, v334, v17, v891, &v906, v333, v871, v875, &v846 - v320, (&v846 - v320));
  v869 = v318;
  MEMORY[0x28223BE20](v336, v337, v338);
  v340 = (&v846 - v320);
  v871 = (&v846 - v320);
  if (!v316)
  {
    v344 = v895;
    v368 = v898;
    if (v898 && v905)
    {
      v369 = v859;
      v345 = v314;
      if (v897 >= 1)
      {
        memset_pattern16(v340, &unk_273BA37F0, 4 * v897);
        v345 = v314;
        v368 = v898;
      }

      v343 = 0;
LABEL_298:
      v350 = v896;
      goto LABEL_385;
    }

    v366 = v897;
    v369 = v859;
    v345 = v314;
    if (v885 && v891 <= 14 && *(v903 + 47) != 2)
    {
      v343 = v317;
      v350 = v896;
      if (v897 >= 1)
      {
        bzero(v871, 4 * v897);
        v345 = v314;
        v368 = v898;
        v343 = v317;
      }

      goto LABEL_385;
    }

    v350 = v896;
    if (v897 >= 1)
    {
      if (v897 >= 8)
      {
        v367 = v897 & 0x7FFFFFF8;
        v470 = vdupq_n_s32(v317);
        v471 = v340 + 1;
        v472 = v367;
        do
        {
          v471[-1] = v470;
          *v471 = v470;
          v471 += 2;
          v472 -= 8;
        }

        while (v472);
        if (v367 == v366)
        {
          goto LABEL_384;
        }
      }

      else
      {
        v367 = 0;
      }

      v473 = v366 - v367;
      v474 = &v340->i8[4 * v367];
      do
      {
        *v474 = v317;
        v474 += 4;
        --v473;
      }

      while (v473);
    }

LABEL_384:
    v343 = 0;
    goto LABEL_385;
  }

  if (20480 / v331 >= 78)
  {
    v341 = (20480 / v331 + 2);
  }

  else
  {
    v341 = 80;
  }

  v342 = &v846 - v320;
  v343 = tf_analysis(*(v314 + 32), v51, v317, v340, v341, v890, v887, v17, v908, (&v846 - v320));
  v344 = v895;
  v345 = v314;
  if (v858 >= v888)
  {
    v368 = v898;
    v369 = v859;
    goto LABEL_298;
  }

  v346 = *&v342[4 * v51 - 4];
  v347 = (v897 + ~v51);
  v348 = v51;
  v368 = v898;
  v349 = v342;
  v369 = v859;
  v350 = v896;
  if (v347 < 7)
  {
    goto LABEL_271;
  }

  v351 = v347 + 1;
  v348 = (v351 & 0x1FFFFFFF8) + v51;
  v352 = vdupq_n_s32(v346);
  v353 = &v349[4 * v51 + 16];
  v354 = v351 & 0x1FFFFFFF8;
  do
  {
    v353[-1] = v352;
    *v353 = v352;
    v353 += 2;
    v354 -= 8;
  }

  while (v354);
  if (v351 != (v351 & 0x1FFFFFFF8))
  {
LABEL_271:
    v355 = v888 - v348;
    v356 = &v349[4 * v348];
    do
    {
      *v356++ = v346;
      --v355;
    }

    while (v355);
  }

LABEL_385:
  LODWORD(v892) = v343;
  v475 = MEMORY[0x28223BE20](v345, v368, v339);
  v479 = 0;
  if (v350 <= 1)
  {
    v480 = 1;
  }

  else
  {
    v480 = v350;
  }

  v481 = v888 - v476;
  v482 = 4 * v476 + 4 * v878 + v478 + 252;
  v483 = v482 + 12 * v879;
  v484 = 4 * v886;
  v858 = 4 * v476;
  v485 = &v881->i8[4 * v476];
  v486 = v897;
  do
  {
    if (v476 < v486)
    {
      v487 = 0;
      do
      {
        v488 = *&v485[4 * v487];
        if (vabds_f32(v488, *(v482 + 4 * v487)) < 2.0)
        {
          *&v485[4 * v487] = v488 + (*(v483 + 4 * v487) * -0.25);
        }

        ++v487;
      }

      while (v481 != v487);
    }

    ++v479;
    v483 += v484;
    v482 += v484;
    v485 += v484;
  }

  while (v479 != v480);
  v859 = v480;
  v489 = *(v478 + 16);
  v490 = *(v478 + 28) > 3;
  HIDWORD(v844) = *(v478 + 60);
  LODWORD(v845) = *(v478 + 68);
  LODWORD(v894) = v477;
  v870 = (&v846 - ((v369 + 15) & 0x7FFFFFFF0));
  v491 = quant_coarse_energy(v475, v476, v486, v51, v881, v880, v477, v870, v344, v350, v17, v873, v489, (v478 + 88), v490, SHIDWORD(v844), v845);
  v493 = v898;
  v494 = v897;
  v495 = 8 * *(v344 + 2);
  v496 = *v899 + __clz(*v900) - 32;
  if (v317)
  {
    v497 = 2;
  }

  else
  {
    v497 = 4;
  }

  if (v17)
  {
    v498 = v496 + v497 + 1 > v495;
  }

  else
  {
    v498 = 1;
  }

  v499 = !v498;
  if (v897 <= v898)
  {
    v500 = v499;
    v503 = 0;
  }

  else
  {
    v500 = v499;
    v501 = v495 - v499;
    if (v317)
    {
      v502 = 4;
    }

    else
    {
      v502 = 5;
    }

    if (v496 + v497 <= v501)
    {
      v504 = v871;
      v491 = ec_enc_bit_logp(v344, v871->i32[v898], v497);
      v493 = v898;
      v494 = v897;
      v496 = *v899 + __clz(*v900) - 32;
      v503 = v504->i32[v898];
    }

    else
    {
      v503 = 0;
      v871->i32[v898] = 0;
    }

    if (v494 != v493 + 1)
    {
      v505 = ~v493 + v494;
      v506 = &v871->i8[4 * v493 + 4];
      v507 = v503;
      do
      {
        while (v496 + v502 > v501)
        {
          *v506 = v507;
          v506 += 4;
          if (!--v505)
          {
            goto LABEL_417;
          }
        }

        v491 = ec_enc_bit_logp(v895, *v506 ^ v507, v502);
        v493 = v898;
        v494 = v897;
        v496 = *v899 + __clz(*v900) - 32;
        v508 = *v506;
        v506 += 4;
        v507 = v508;
        v503 |= v508;
        --v505;
      }

      while (v505);
    }
  }

LABEL_417:
  if (v500)
  {
    v509 = v884;
    v510 = &v25[4 * v884 + v503];
    v511 = v895;
    if (*v510 == v510[2])
    {
      v516 = 0;
    }

    else
    {
      v515 = v892;
      v491 = ec_enc_bit_logp(v895, v892, 1);
      v493 = v898;
      v494 = v897;
      v516 = 2 * v515;
    }

    v512 = v903;
    v513 = v894;
    v514 = v896;
    if (v494 > v493)
    {
      goto LABEL_424;
    }
  }

  else
  {
    v516 = 0;
    v512 = v903;
    v511 = v895;
    v509 = v884;
    v513 = v894;
    v514 = v896;
    if (v494 > v493)
    {
LABEL_424:
      v517 = (v516 + 4 * v509);
      v518 = v493;
      if (v481 < 2)
      {
        goto LABEL_428;
      }

      v518 = (v481 & 0xFFFFFFFFFFFFFFFELL) + v493;
      v519 = &v871->i8[4 * v493 + 4];
      v520 = v481 & 0xFFFFFFFFFFFFFFFELL;
      do
      {
        v521 = v25[v517 + *v519];
        *(v519 - 1) = v25[v517 + *(v519 - 1)];
        *v519 = v521;
        v519 += 8;
        v520 -= 2;
      }

      while (v520);
      if (v481 != (v481 & 0xFFFFFFFFFFFFFFFELL))
      {
LABEL_428:
        v522 = v888 - v518;
        v523 = &v871->i8[4 * v518];
        do
        {
          *v523 = v25[*v523 + v517];
          v523 += 4;
          --v522;
        }

        while (v522);
      }
    }
  }

  if ((*v899 + __clz(*v900) - 28) > v513)
  {
    goto LABEL_436;
  }

  if (*(v512 + 17))
  {
    *(v512 + 26) = 0;
    goto LABEL_433;
  }

  if (!v493)
  {
    v609 = *(v512 + 7);
    if (!v866 && v609 >= 3 && v873 >= (10 * v514))
    {
      v524 = spreading_decision(v893, v890, v512 + 23, *(v512 + 21), v512 + 25, v850, v849, v51, v514, v853, v882);
      *(v512 + 21) = v524;
      goto LABEL_435;
    }

    if (v609)
    {
LABEL_433:
      v524 = 2;
      goto LABEL_434;
    }

LABEL_521:
    v524 = 0;
    *(v512 + 21) = 0;
    goto LABEL_435;
  }

  if (!*(v512 + 7))
  {
    goto LABEL_521;
  }

  if (v509)
  {
    goto LABEL_433;
  }

  v524 = 3;
LABEL_434:
  *(v512 + 21) = v524;
LABEL_435:
  v491 = ec_enc_icdf(v511, v524, &spread_icdf, 5);
LABEL_436:
  if (*(v512 + 17))
  {
    v525 = v891 / 3;
    if (v891 > 26)
    {
      v525 = 8;
    }

    *v902 = v525;
  }

  MEMORY[0x28223BE20](v491, v492, v497);
  v528 = &v846 - ((v527 + 15) & 0x7FFFFFFF0);
  v529 = v893[2];
  v530 = v888;
  v531 = v885;
  v532 = v897;
  v533 = v890;
  if (v529 >= 1)
  {
    v534 = *(v893 + 4);
    v535 = *(v893 + 19);
    v536 = *v534;
    if (v529 < 0x10 || ((v537 = v529 * (v514 - v867), v537 + v529 - 1 >= v537) ? (v538 = (v529 - 1) >> 32 == 0) : (v538 = 0), !v538))
    {
      v539 = 0;
      goto LABEL_447;
    }

    v539 = 0;
    v591 = v528 + 4 * v529;
    v592 = v535 + v537;
    v594 = v528 < v592 + v529 && v592 < v591;
    v595 = (v534 + 1) >= v591 || v528 >= &v534[v529 + 1];
    if (!v595 || v594)
    {
LABEL_447:
      v540 = v529 * v856;
      v541 = v534 + 1;
      do
      {
        v542 = v541[v539];
        *(v528 + 4 * v539) = (((v542 - v536) << v17) * v514 * (*(v535 + v540 + v539) + 64)) >> 2;
        LOWORD(v536) = v542;
        ++v539;
      }

      while (v539 < v529);
    }

    else
    {
      v596 = vdupq_n_s16(v536);
      v539 = v529 & 0x7FFFFFF0;
      v597 = vdupq_n_s32(v17);
      v598 = (v534 + 1);
      v599 = v529 * v856;
      v600.i64[0] = 0x4000000040;
      v600.i64[1] = 0x4000000040;
      v601 = v539;
      v602 = v528;
      v603 = vdupq_n_s32(v514);
      do
      {
        v604 = vextq_s8(v596, *v598, 0xEuLL);
        v596 = v598[1];
        v605 = vextq_s8(*v598, v596, 0xEuLL);
        v606 = vsubl_s16(*v598->i8, *v604.i8);
        v607 = vsubl_high_s16(*v598, v604);
        v608 = *(v535 + v599);
        v602[2] = vshrq_n_s32(vmulq_s32(vshlq_u32(vsubl_s16(*v596.i8, *v605.i8), v597), vmulq_s32(v603, vaddq_s32(vqtbl1q_s8(v608, xmmword_273B8E7B0), v600))), 2uLL);
        v602[3] = vshrq_n_s32(vmulq_s32(vshlq_u32(vsubl_high_s16(v596, v605), v597), vmulq_s32(v603, vaddq_s32(vqtbl1q_s8(v608, xmmword_273B8E7A0), v600))), 2uLL);
        *v602 = vshrq_n_s32(vmulq_s32(vshlq_u32(v606, v597), vmulq_s32(v603, vaddq_s32(vqtbl1q_s8(v608, xmmword_273B8E7D0), v600))), 2uLL);
        v602[1] = vshrq_n_s32(vmulq_s32(vshlq_u32(v607, v597), vmulq_s32(v603, vaddq_s32(vqtbl1q_s8(v608, xmmword_273B8E7C0), v600))), 2uLL);
        v602 += 4;
        v598 += 2;
        v599 += 16;
        v601 -= 16;
      }

      while (v601);
      if (v539 != v529)
      {
        LOWORD(v536) = v596.i16[7];
        goto LABEL_447;
      }
    }
  }

  v543 = 8 * v513;
  v544 = __clz(*v900);
  v545 = ((__PAIR64__(8 * (v544 + *v899), ec_tell_frac_correction[(*v900 >> (16 - v544) >> 12) - 8]) - __PAIR64__(*v900 >> (16 - v544) >> 12, *v900 >> (16 - v544))) >> 32) - 248;
  v894 = v528;
  v546 = 0;
  if (v532 > v531)
  {
    v526 = 6;
    v547 = v898;
    v548 = v889;
    LODWORD(v882) = v543;
    do
    {
      while (1)
      {
        v549 = v547 + 1;
        v550 = ((v548[v547 + 1] - v548[v547]) * v514) << v17;
        v551 = 8 * v550;
        if (v550 <= 48)
        {
          v550 = 48;
        }

        v552 = v551 >= v550 ? v550 : v551;
        if (v545 + 8 * v526 < v543 - v546 && *(v528 + 4 * v547) >= 1)
        {
          break;
        }

        v512 = v903;
        v514 = v896;
        v902[v547++] = 0;
        if (v549 == v530)
        {
          goto LABEL_477;
        }
      }

      LODWORD(v892) = v546;
      v553 = v902[v547];
      LODWORD(v891) = v526;
      ec_enc_bit_logp(v511, v553 > 0, v526);
      v554 = __clz(*v900);
      v545 = ((__PAIR64__(8 * (v554 + *v899), ec_tell_frac_correction[(*v900 >> (16 - v554) >> 12) - 8]) - __PAIR64__(*v900 >> (16 - v554) >> 12, *v900 >> (16 - v554))) >> 32) - 248;
      if (v553 < 1)
      {
        v561 = 0;
        v512 = v903;
        v532 = v897;
        v514 = v896;
        v548 = v889;
        v533 = v890;
        v528 = v894;
        v546 = v892;
        v543 = v882;
        v526 = v891;
      }

      else
      {
        v555 = v552 + v892;
        v543 = v882;
        v556 = v882 - (v552 + v892);
        v548 = v889;
        v557 = v891;
        if (v545 + 8 >= v556)
        {
          v561 = v552;
          v528 = v894;
        }

        else
        {
          v528 = v894;
          if (v552 >= *&v894[4 * v547])
          {
            v561 = v552;
          }

          else
          {
            v558 = 2 * v552;
            v559 = 1;
            v560 = v552;
            while (1)
            {
              v561 = v558;
              v562 = v902[v547];
              ec_enc_bit_logp(v895, v559 < v562, 1);
              v563 = __clz(*v900);
              v545 = ((__PAIR64__(8 * (v563 + *v899), ec_tell_frac_correction[(*v900 >> (16 - v563) >> 12) - 8]) - __PAIR64__(*v900 >> (16 - v563) >> 12, *v900 >> (16 - v563))) >> 32) - 248;
              if (v559 >= v562)
              {
                break;
              }

              v556 -= v552;
              v528 = v894;
              if (v545 + 8 < v556)
              {
                v558 = v561 + v552;
                ++v559;
                v560 += v552;
                if (v560 < *&v894[4 * v547])
                {
                  continue;
                }
              }

              v555 = v892 + v561;
              v511 = v895;
              v530 = v888;
              v531 = v885;
              v548 = v889;
              goto LABEL_471;
            }

            v555 = v892 + v560;
            v561 = v560;
            v511 = v895;
            v530 = v888;
            v531 = v885;
            v548 = v889;
            v528 = v894;
LABEL_471:
            v543 = v882;
            v557 = v891;
          }
        }

        if (v557 <= 3)
        {
          v564 = 3;
        }

        else
        {
          v564 = v557;
        }

        v526 = (v564 - 1);
        v546 = v555;
        v512 = v903;
        v532 = v897;
        v514 = v896;
        v533 = v890;
      }

      v902[v547++] = v561;
    }

    while (v549 != v530);
  }

LABEL_477:
  v565 = v872;
  v566 = v865;
  if (v514 != 2)
  {
    goto LABEL_619;
  }

  if (!v17)
  {
    goto LABEL_493;
  }

  v567 = 0;
  v568 = *(v893 + 4);
  LOWORD(v569) = *v568;
  v570 = 1.0e-15;
  v571 = 1.0e-15;
  while (2)
  {
    v572 = v569 << v17;
    v569 = v568[++v567];
    v573 = v569 << v17;
    if (v572 < v569 << v17)
    {
      v526 = v572;
      v574 = v573;
      v528 = v573 - v526;
      if (v528 < 8)
      {
        v575 = v526;
        goto LABEL_487;
      }

      v575 = (v528 & 0xFFFFFFFFFFFFFFF8) + v526;
      v526 = v533 + 4 * v526;
      v576 = v528 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v577 = *(v526 + 16);
        v578 = *(v526 + 4 * v887);
        v579 = *(v526 + 4 * v887 + 16);
        v580 = vaddq_f32(vabsq_f32(*v526), vabsq_f32(v578));
        v581 = vaddq_f32(vabsq_f32(v577), vabsq_f32(v579));
        v582 = vaddq_f32(vabsq_f32(vaddq_f32(*v526, v578)), vabdq_f32(*v526, v578));
        v583 = vaddq_f32(vabsq_f32(vaddq_f32(v577, v579)), vabdq_f32(v577, v579));
        v570 = (((((((v570 + v580.f32[0]) + v580.f32[1]) + v580.f32[2]) + v580.f32[3]) + v581.f32[0]) + v581.f32[1]) + v581.f32[2]) + v581.f32[3];
        v571 = (((((((v571 + v582.f32[0]) + v582.f32[1]) + v582.f32[2]) + v582.f32[3]) + v583.f32[0]) + v583.f32[1]) + v583.f32[2]) + v583.f32[3];
        v526 += 32;
        v576 -= 8;
      }

      while (v576);
      if (v528 != (v528 & 0xFFFFFFFFFFFFFFF8))
      {
LABEL_487:
        v584 = v574 - v575;
        v585 = (v533 + 4 * v575);
        do
        {
          v586 = v585[v887];
          v587 = *v585++;
          v570 = v570 + (fabsf(v587) + fabsf(v586));
          v571 = v571 + (fabsf(v587 + v586) + vabds_f32(v587, v586));
          --v584;
        }

        while (v584);
      }
    }

    if (v567 != 13)
    {
      continue;
    }

    break;
  }

  if (v17 == 1)
  {
    LODWORD(v567) = 5;
  }

  v588 = v568[13] << (v17 + 1);
  v910 = ((v571 * 0.70711) * (v588 + v567)) > (v570 * v588);
LABEL_493:
  v589 = *(v512 + 59);
  if (v865 >= 1000)
  {
    if (v865 >= 0x7D0)
    {
      if (v865 >= 0xBB8)
      {
        if (v865 >= 0xFA0)
        {
          if (v865 >> 3 >= 0x271)
          {
            v624 = v865 >> 4;
            if (v865 >> 4 >= 0x177)
            {
              if (v865 >> 3 >= 0x36B)
              {
                v642 = v865 >> 6;
                if (v865 >> 6 >= 0x7D)
                {
                  if (v865 >> 7 >= 0x7D)
                  {
                    if (v642 >= 0x177)
                    {
                      if (v865 >> 5 >= 0x465)
                      {
                        if (v865 >> 5 >= 0x55F)
                        {
                          if (v624 >= 0xC35)
                          {
                            if (v642 >= 0x36B)
                            {
                              if (v624 >= 0xF23)
                              {
                                if (v865 >= 0x105B8)
                                {
                                  if (v642 >= 0x465)
                                  {
                                    if (v865 >= 0x13498)
                                    {
                                      if (v642 >= 0x55F)
                                      {
                                        if (v865 >= 0x19E10)
                                        {
                                          if (v865 > 0x20B6F)
                                          {
                                            v590 = 21;
                                          }

                                          else
                                          {
                                            v590 = 20;
                                          }
                                        }

                                        else
                                        {
                                          v590 = 19;
                                        }
                                      }

                                      else
                                      {
                                        v590 = 18;
                                      }
                                    }

                                    else
                                    {
                                      v590 = 17;
                                    }
                                  }

                                  else
                                  {
                                    v590 = 16;
                                  }
                                }

                                else
                                {
                                  v590 = 15;
                                }
                              }

                              else
                              {
                                v590 = 14;
                              }
                            }

                            else
                            {
                              v590 = 13;
                            }
                          }

                          else
                          {
                            v590 = 12;
                          }
                        }

                        else
                        {
                          v590 = 11;
                        }
                      }

                      else
                      {
                        v590 = 10;
                      }

                      v512 = v903;
                      v511 = v895;
                      v531 = v885;
                      v532 = v897;
                      v514 = v896;
                      v565 = v872;
                      v566 = v865;
                      v533 = v890;
                    }

                    else
                    {
                      v590 = 9;
                    }
                  }

                  else
                  {
                    v590 = 8;
                  }
                }

                else
                {
                  v590 = 7;
                }
              }

              else
              {
                v590 = 6;
              }
            }

            else
            {
              v590 = 5;
            }
          }

          else
          {
            v590 = 4;
          }
        }

        else
        {
          v590 = 3;
        }
      }

      else
      {
        v590 = 2;
      }
    }

    else
    {
      v590 = 1;
    }
  }

  else
  {
    v590 = 0;
  }

  v643 = (v865 / 1000);
  if (v590 > v589 && (celt_encode_with_ec_intensity_thresholds[v589] + celt_encode_with_ec_intensity_histeresis[v589]) > v643 || v590 < v589 && (celt_encode_with_ec_intensity_thresholds[v589 - 1] - celt_encode_with_ec_intensity_histeresis[v589 - 1]) < v643)
  {
    v590 = v589;
  }

  if (v898 <= v590)
  {
    v644 = v590;
  }

  else
  {
    v644 = v898;
  }

  if (v532 < v644)
  {
    v644 = v532;
  }

  *(v512 + 59) = v644;
LABEL_619:
  if (v545 + 48 <= v543 - v546)
  {
    v648 = v546;
    if (v531 > 0 || *(v512 + 17))
    {
      *(v512 + 58) = 0;
      v649 = 5;
    }

    else
    {
      v649 = alloc_trim_analysis(v893, v533, v881, v532, v17, v514, v887, v875, v907, v272, v512 + 58, *(v512 + 59), v566);
    }

    LODWORD(v892) = v649;
    v528 = ec_enc_icdf(v511, v649, &trim_icdf, 7);
    v650 = __clz(*v900);
    v545 = ((__PAIR64__(8 * (v650 + *v899), ec_tell_frac_correction[(*v900 >> (16 - v650) >> 12) - 8]) - __PAIR64__(*v900 >> (16 - v650) >> 12, *v900 >> (16 - v650))) >> 32) - 248;
    v546 = v648;
    v645 = v898;
    v646 = v861;
    if (v565 >= 1)
    {
      goto LABEL_626;
    }

LABEL_621:
    v647 = v883;
  }

  else
  {
    LODWORD(v892) = 5;
    v645 = v898;
    v646 = v861;
    if (v565 < 1)
    {
      goto LABEL_621;
    }

LABEL_626:
    v651 = v893[10] - v17;
    v652 = 0x4FBu >> v646;
    if (v883 < (0x4FBu >> v646))
    {
      v652 = v883;
    }

    v653 = v565 - 8 * v855;
    if (v645)
    {
      v653 = (v565 - 72 * v514 - 32) & ~((v565 - 72 * v514 - 32) >> 31);
    }

    v654 = *(v512 + 14);
    if (v654)
    {
      v653 += *(v512 + 55) >> v651;
    }

    if (v531)
    {
      v655 = *(v512 + 48);
      v656 = v655 <= 100;
      if (v655 >= 100)
      {
        v657 = 0;
      }

      else
      {
        v657 = 0x60u >> v646;
      }

      v658 = v657 + v653;
      v659 = 0x90u >> v646;
      if (v656)
      {
        v659 = 0;
      }

      v660 = v658 - v659 + ((v907 + -0.25) * 400.0);
      if (v660 <= 400)
      {
        v661 = 400;
      }

      else
      {
        v661 = v660;
      }

      if (v907 > 0.7)
      {
        v660 = v661;
      }

      v662 = ((v546 + v545 + 63) >> 6) + 2;
      if (v662 <= (v546 + v852) >> 6)
      {
        v662 = (v546 + v852) >> 6;
      }
    }

    else
    {
      v663 = *(v512 + 59);
      v664 = *(v893 + 4);
      if (*(v512 + 24))
      {
        v665 = *(v512 + 24);
      }

      else
      {
        v665 = v893[2];
      }

      v666 = *(v664 + 2 * v665);
      if (v514 == 2)
      {
        if (v665 >= v663)
        {
          v667 = *(v512 + 59);
        }

        else
        {
          v667 = v665;
        }

        v666 += *(v664 + 2 * v667);
      }

      v668 = *(v512 + 17);
      v669 = v666 << v17;
      v670 = 8 * (v666 << v17);
      v671 = v653;
      if (*v875)
      {
        v672 = *(v512 + 35);
        v671 = v653;
        if (v672 < 0.4)
        {
          v671 = v653 - ((0.4 - v672) * v670);
        }
      }

      if (v514 == 2)
      {
        if (v665 < v663)
        {
          v663 = v665;
        }

        v673 = (*(v664 + 2 * v663) << v17) - v663;
        v674 = ((v673 * 0.8) / v669) * v671;
        v675 = (fminf(*(v512 + 58), 1.0) + -0.1) * (8 * v673);
        if (v674 >= v675)
        {
          v674 = v675;
        }

        v671 -= v674;
      }

      v676 = v512[30];
      v677 = v906 + (-19 << v17) + v671 + ((v907 + -0.044) * (v906 + (-19 << v17) + v671));
      if (!v668 && *v875)
      {
        v678 = *(v512 + 32) + -0.15;
        if (v678 >= 0.0)
        {
          v679 = v678 + -0.12;
        }

        else
        {
          v679 = -0.12;
        }

        v680 = (v670 * 0.8);
        if (v851)
        {
          v680 = 0;
        }

        v677 += v680 + ((v670 * 1.2) * v679);
      }

      if (v668)
      {
        v681 = 1;
      }

      else
      {
        v681 = v676 == 0;
      }

      v682 = v681;
      v683 = v677 + (v276 * v670);
      if (v677 / 4 > v683)
      {
        v683 = v677 / 4;
      }

      if (v682)
      {
        v684 = v677;
      }

      else
      {
        v684 = v683;
      }

      v685 = (v335 * (8 * v514 * (*(v664 + 2 * v893[2] - 4) << v17)));
      if (v684 >> 2 > v685)
      {
        v685 = v684 >> 2;
      }

      if (v684 >= v685)
      {
        v684 = v685;
      }

      v686 = v682 ^ 1;
      if (!v654)
      {
        v686 = 1;
      }

      if ((v686 & 1) == 0)
      {
        v684 = v653 + ((v684 - v653) * 0.67);
      }

      if (v907 < 0.2 && !v676)
      {
        v687 = 0.0;
        v688 = 96000 - v566;
        if ((96000 - v566) >= 0x7D00)
        {
          v688 = 32000;
        }

        if (v566 <= 96000)
        {
          v687 = v688 * 0.0000031;
        }

        v684 += ((v277 * v687) * v684);
      }

      v660 = 2 * v653;
      if (v660 >= v684)
      {
        v660 = v684;
      }

      v662 = ((v546 + v545 + 63) >> 6) + 2;
    }

    v689 = v660 + v545;
    v690 = (v689 + 32) >> 6;
    if (v662 > v690)
    {
      v690 = v662;
    }

    if (v652 < v690)
    {
      v690 = v652;
    }

    v691 = v689 - v565;
    v692 = v690 << 6;
    if (v874)
    {
      v693 = v690;
    }

    else
    {
      v693 = 2;
    }

    if (v874)
    {
      v694 = v691;
    }

    else
    {
      v694 = 0;
    }

    if (v874)
    {
      v695 = v692;
    }

    else
    {
      v695 = 128;
    }

    v696 = *(v512 + 56);
    if (v696 > 969)
    {
      v697 = 0.001;
    }

    else
    {
      *(v512 + 56) = v696 + 1;
      v697 = 1.0 / (v696 + 21);
    }

    if (v654)
    {
      v698 = *(v512 + 54);
      v699 = (v697 * ((v694 << v651) - (*(v512 + 55) + v698)));
      v700 = *(v512 + 53) + v695 - v565;
      *(v512 + 53) = v700;
      *(v512 + 54) = v698 + v699;
      *(v512 + 55) = -(v698 + v699);
      if (v700 < 0)
      {
        v701 = -v700 >> 6;
        if (!v874)
        {
          v701 = 0;
        }

        v693 += v701;
        *(v512 + 53) = 0;
      }
    }

    if (v652 >= v693)
    {
      v647 = v693;
    }

    else
    {
      v647 = v652;
    }

    v528 = memmove((*v511 + v647 - *(v511 + 3)), (*v511 + *(v511 + 2) - *(v511 + 3)), *(v511 + 3));
    *(v511 + 2) = v647;
    v645 = v898;
  }

  MEMORY[0x28223BE20](v528, v645, v526);
  v705 = MEMORY[0x28223BE20](&v846 - ((v702 + 15) & 0x7FFFFFFF0), v703, v704);
  v708 = MEMORY[0x28223BE20](v705, v706, v707);
  v712 = &v846 - v711;
  v713 = 0;
  v715 = __clz(v714);
  v716 = v714 >> (16 - v715);
  v717 = ec_tell_frac_correction[(v716 >> 12) - 8];
  v883 = v647;
  LODWORD(v889) = v647 << 6;
  v719 = (v647 << 6) - 8 * (v715 + v718) + (v716 >> 12) - (v716 <= v717) + 248;
  v720 = 0;
  if (v17 < 2)
  {
    v721 = v897;
    v722 = v894;
  }

  else
  {
    v721 = v897;
    v722 = v894;
    if (v884)
    {
      v713 = v719 >= v854;
      v720 = 8 * v713;
    }
  }

  v723 = v719 - v720;
  v724 = *v875;
  LODWORD(v891) = v713;
  if (v724)
  {
    if (v566 >= (32000 * v514))
    {
      if (v566 >= (48000 * v514))
      {
        if (v566 >= (60000 * v514))
        {
          if (v566 < (80000 * v514))
          {
            v725 = 19;
          }

          else
          {
            v725 = 20;
          }
        }

        else
        {
          v725 = 18;
        }
      }

      else
      {
        v725 = 16;
      }
    }

    else
    {
      v725 = 13;
    }

    if (*(v512 + 39) > v725)
    {
      v725 = *(v512 + 39);
    }
  }

  else
  {
    v725 = v721 - 1;
  }

  if (*(v512 + 17))
  {
    v725 = 1;
  }

  HIDWORD(v843) = *(v512 + 24);
  v894 = v712;
  v726 = v708;
  v727 = v710;
  v728 = clt_compute_allocation(v893, v709, v721, v902, v722, v892, v512 + 59, &v910, v723, &v909, v710, v708, v712, v514, v17, v511, 1, SHIDWORD(v843), v725);
  v729 = v728;
  v730 = *(v512 + 24);
  v731 = v728;
  if (v730)
  {
    v732 = v730 - 1;
    if (v730 - 1 <= v728)
    {
      v732 = v728;
    }

    if (v730 + 1 < v732)
    {
      v731 = v730 + 1;
    }

    else
    {
      v731 = v732;
    }
  }

  LODWORD(v902) = 8 * v883;
  *(v512 + 24) = v731;
  v733 = v893;
  v734 = quant_fine_energy(v893, v898, v888, v880, v870, v726, v511, v514);
  MEMORY[0x28223BE20](v734, v735, v736);
  if (v514 == 2)
  {
    v738 = v890 + 4 * v887;
  }

  else
  {
    v738 = 0;
  }

  LODWORD(v845) = *(v512 + 18);
  quant_all_bands(1, v733, v885, v897, v890, v738, &v846 - ((v737 + 15) & 0x1FFFFFFF0), v876, v727, v866, *(v512 + 21), v910, v871, v889 - v720, v909, v511, v17, v729, v512 + 20, *(v512 + 7), *(v512 + 19));
  if (v891)
  {
    v739 = *(v512 + 30) < 2;
    v740 = *(v511 + 4);
    v741 = *(v511 + 5);
    v742 = v741 + 1;
    if ((v741 + 1) < 0x21)
    {
      v753 = *(v511 + 5);
      v743 = v888;
      v744 = v885;
      v745 = v897;
      v746 = v898;
      v747 = v880;
      v748 = v726;
      v749 = v894;
    }

    else
    {
      v743 = v888;
      v744 = v885;
      v745 = v897;
      v746 = v898;
      v747 = v880;
      v748 = v726;
      v749 = v894;
      do
      {
        v755 = *(v511 + 2);
        v754 = *(v511 + 3);
        if (v754 + *(v511 + 7) < v755)
        {
          v750 = 0;
          v751 = *v511;
          v752 = v754 + 1;
          *(v511 + 3) = v752;
          *(v751 + v755 - v752) = v740;
        }

        else
        {
          v750 = -1;
        }

        *(v511 + 12) |= v750;
        v740 >>= 8;
        v753 = v741 - 8;
        v102 = v741 <= 15;
        v741 -= 8;
      }

      while (!v102);
      v742 = v753 + 1;
    }

    *(v511 + 4) = (v739 << v753) | v740;
    *(v511 + 5) = v742;
    v756 = *v899 + 1;
    *v899 = v756;
    v757 = v747;
  }

  else
  {
    v756 = *v899;
    v743 = v888;
    v744 = v885;
    v745 = v897;
    v746 = v898;
    v748 = v726;
    v757 = v880;
    v749 = v894;
  }

  v844 = v511;
  v758 = v870;
  quant_energy_finalise(v893, v746, v745, v757, v870, v748, v749, v902 - (v756 + __clz(*v900)) + 32, v844, v896);
  v759 = v879;
  v760 = 4 * v879;
  bzero(&v904[v863], 4 * v879);
  v761 = v758;
  v762 = v898;
  v763 = v897;
  v764 = 0;
  v765 = 0;
  v766 = v512 + 12 * v759 + 4 * v878;
  v767 = &v766[v858 + 268];
  v768 = v886;
  v769 = 4 * v886;
  v770 = &v761[1] + v858;
  v771 = v766 + 252;
  v772.i64[0] = 0x3F0000003F000000;
  v772.i64[1] = 0x3F0000003F000000;
  v773.i64[0] = 0xBF000000BF000000;
  v773.i64[1] = 0xBF000000BF000000;
  v774 = v859;
  do
  {
    if (v763 > v762)
    {
      v775 = v762;
      if (v481 < 8)
      {
        goto LABEL_771;
      }

      v776 = v770;
      v777 = v767;
      v778 = v481 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v779 = v776[-1];
        v780 = vcgtq_f32(v779, v772);
        v781 = vcgtq_f32(*v776, v772);
        v782 = vcgtq_f32(v773, v779);
        v783 = vcgtq_f32(v773, *v776);
        v784 = vbslq_s8(vorrq_s8(v783, v781), vbslq_s8(vbicq_s8(v783, v781), v773, v772), *v776);
        *(v777 - 1) = vbslq_s8(vorrq_s8(v782, v780), vbslq_s8(vbicq_s8(v782, v780), v773, v772), v779);
        *v777 = v784;
        v777 += 2;
        v776 += 2;
        v778 -= 8;
      }

      while (v778);
      v775 = (v481 & 0xFFFFFFFFFFFFFFF8) + v762;
      if (v481 != (v481 & 0xFFFFFFFFFFFFFFF8))
      {
LABEL_771:
        v785 = v743 - v775;
        v786 = v775 + v764;
        v787 = &v771[v786 * 4];
        v788 = &v761->f32[v786];
        do
        {
          v789 = *v788++;
          v790 = v789;
          v791 = v789 < -0.5;
          v792 = v789 <= 0.5;
          v793 = v789 > 0.5 || v791;
          if (v791 && v792)
          {
            v794 = -0.5;
          }

          else
          {
            v794 = 0.5;
          }

          if (v793)
          {
            v790 = v794;
          }

          *v787++ = v790;
          --v785;
        }

        while (v785);
      }
    }

    ++v765;
    v767 += v769;
    v770 += v769;
    v764 += v768;
  }

  while (v765 != v774);
  v795 = v874;
  if (v877 < 1)
  {
    v795 = 1;
  }

  if ((v795 & 1) == 0)
  {
    memset_pattern16(v757, &unk_273BBA7B0, 4 * v877);
    v763 = v897;
    v768 = v886;
  }

  *(v512 + 27) = v912;
  *(v512 + 28) = v113;
  *(v512 + 29) = v862;
  v796 = v879;
  if (v860)
  {
    memcpy(&v757[v769], v757, v769);
    v763 = v897;
    v768 = v886;
  }

  v797 = v868;
  if (v884)
  {
    if (v796 >= 1)
    {
      if (v796 > 0xB && (v868 >= v512 + 4 * v878 + 4 * v796 + 252 || v757 >= v512 + 4 * v878 + 4 * v796 + 4 * v796 + 252))
      {
        v798 = v796 & 0x7FFFFFF8;
        v839 = (v512 + 4 * v878 + 268);
        v840 = (v839 + 4 * v796);
        v841 = v798;
        do
        {
          v842 = vbslq_s8(vcgtq_f32(*v839, *v840), *v840, *v839);
          v840[-1] = vbslq_s8(vcgtq_f32(v839[-1], v840[-1]), v840[-1], v839[-1]);
          *v840 = v842;
          v840 += 2;
          v839 += 2;
          v841 -= 8;
        }

        while (v841);
        if (v798 != v796)
        {
          goto LABEL_794;
        }
      }

      else
      {
        v798 = 0;
LABEL_794:
        v799 = v796 - v798;
        v800 = v512 + v798 + v878 + 63;
        do
        {
          v801 = v800[v796];
          if (v801 >= *v800)
          {
            v801 = *v800;
          }

          v800[v796] = v801;
          ++v800;
          --v799;
        }

        while (v799);
      }
    }
  }

  else
  {
    memcpy(v904, v868, v760);
    memcpy(v868, v757, v760);
    v797 = v868;
    v763 = v897;
    v768 = v886;
  }

  v802 = 0;
  v803 = 0;
  v804 = v768 - v743;
  v805 = (v796 & 0x1FFFFFFFFFFFFFFCLL) == 0;
  if ((v796 & 0x3FFFFFFFFFFFFFF8) == 0)
  {
    v805 = 1;
  }

  v806 = -v760 < 0x20 || v805;
  v807 = v512 + 4 * v878 + v760 + 268;
  v808 = 8 * v796;
  v809 = &v512[v796 + 33] + 4 * v878 + 4;
  v810 = v512 + 4 * v878;
  v811 = v810 + 268;
  v812 = v512 + 4 * v878 + 4 * v743 + 268;
  v813 = (v812 + v760);
  __asm { FMOV            V1.4S, #-28.0 }

  while (2)
  {
    if (v744 >= 1)
    {
      if ((v744 < 8) | v806 & 1)
      {
        v815 = 0;
        goto LABEL_813;
      }

      v816 = v811;
      v817 = v809;
      v818 = v744 & 0x7FFFFFF8;
      v819 = v807;
      do
      {
        *(v816 - 1) = 0uLL;
        *v816 = 0uLL;
        *(v817 - 1) = _Q1;
        *v817 = _Q1;
        *(v819 - 1) = _Q1;
        *v819 = _Q1;
        v819 += 2;
        v817 += 2;
        v816 += 2;
        v818 -= 8;
      }

      while (v818);
      v815 = v744 & 0x7FFFFFF8;
      if (v815 != v744)
      {
LABEL_813:
        v820 = 0;
        v821 = v744 - v815;
        v822 = &v797[4 * v815];
        v823 = &v904[4 * v815];
        v824 = &v810[4 * v815 + 4 * v802];
        do
        {
          v825 = 4 * v820;
          *&v824[4 * v820 + 252] = 0;
          *&v823[v825] = -1042284544;
          *&v822[v825] = -1042284544;
          ++v820;
        }

        while (v821 != v820);
      }
    }

    if (v763 < v768)
    {
      v826 = v743;
      if ((v804 < 8) | v806 & 1)
      {
        goto LABEL_820;
      }

      v827 = v812;
      v828 = v813;
      v829 = v804 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        *(v827 - 1) = 0uLL;
        *v827 = 0uLL;
        v830 = (v827 + v808);
        *(v830 - 1) = _Q1;
        *v830 = _Q1;
        *(v828 - 1) = _Q1;
        *v828 = _Q1;
        v828 += 2;
        v827 += 2;
        v829 -= 8;
      }

      while (v829);
      v826 = (v804 & 0xFFFFFFFFFFFFFFF8) + v743;
      if (v804 != (v804 & 0xFFFFFFFFFFFFFFF8))
      {
LABEL_820:
        v831 = 0;
        v832 = v768 - v826;
        v833 = &v797[4 * v826];
        v834 = &v904[4 * v826];
        v835 = &v810[4 * v826 + 4 * v802];
        do
        {
          v836 = 4 * v831;
          *&v835[4 * v831 + 252] = 0;
          *&v834[v836] = -1042284544;
          *&v833[v836] = -1042284544;
          ++v831;
        }

        while (v832 != v831);
      }
    }

    ++v803;
    v807 += v769;
    v809 += v769;
    v811 = (v811 + v769);
    v797 += v769;
    v904 += v769;
    v802 += v768;
    v813 = (v813 + v769);
    v812 += v769;
    if (v803 != v901)
    {
      continue;
    }

    break;
  }

  if (((v884 == 0) & ~v857) != 0)
  {
    v837 = 0;
  }

  else
  {
    v837 = *(v512 + 30) + 1;
  }

  v838 = v895;
  *(v512 + 30) = v837;
  *(v512 + 20) = *v900;
  ec_enc_done(v838);
  if (*(v838 + 12))
  {
    return 4294967293;
  }

  else
  {
    return v883;
  }
}