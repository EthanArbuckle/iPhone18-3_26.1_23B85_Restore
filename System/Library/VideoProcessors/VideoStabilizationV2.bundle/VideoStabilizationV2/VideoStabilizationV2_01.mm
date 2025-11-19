uint64_t sbp_gvs_gaussianAverageComputeCorrection(uint64_t a1, uint64_t a2, int a3, char *a4, float a5)
{
  v269 = 0u;
  v270 = 0u;
  v268 = 0;
  v267 = 0;
  v8 = (a1 + 27136);
  v266 = 1;
  v264 = 0u;
  v265 = 0u;
  v262 = 0u;
  v263 = 0u;
  v260 = 0u;
  v261 = 0u;
  [*(a1 + 29400) getSmoothingAnalysisArrays];
  if (v8[1001])
  {
    v9 = *(v8 + 579);
    v10 = *(v8 + 576) + v9 + a2;
    do
    {
      v10 -= v9;
    }

    while (v10 >= v9);
    v11 = (a1 + 29408);
    v241 = v10;
  }

  else
  {
    v241 = 0;
    v11 = 0;
  }

  v12 = *(v262 + 8 * a2);
  v13 = *(v262 + 8 * SDWORD2(v264));
  v14 = (*(&v261 + 1) + 144 * a2);
  v253 = *v14;
  v15 = v14[4];
  v17 = v14[1];
  v16 = v14[2];
  v256 = v14[3];
  v257 = v15;
  v254 = v17;
  v255 = v16;
  v18 = v14[8];
  v20 = v14[5];
  v19 = v14[6];
  v259[1] = v14[7];
  v259[2] = v18;
  v258 = v20;
  v259[0] = v19;
  v238 = *v8;
  v21 = *(a1 + 29400);
  if (v8[3112] == 1)
  {
    v235 = v13;
    v22 = v12;
    *&v250 = 0;
    v248 = 0u;
    v249 = 0u;
    v247 = 0u;
    [v21 getFaceSmoothingArrays];
    v23 = *(v8 + 786);
    if (*(v8 + 781) >= 1.0)
    {
      v24 = *(v8 + 781);
    }

    else
    {
      v24 = 1.0;
    }

    if (*(v8 + 785) <= v23)
    {
      v25 = *(v8 + 785);
    }

    else
    {
      v25 = *(v8 + 786);
    }

    v26 = fminf(fmaxf(((*(v8 + 783) + (((*(v8 + 780) * a5) - *(v8 + 783)) * *(&stru_20.cmd + 12 * a2))) - *(v8 + 783)) / (*(v8 + 784) - *(v8 + 783)), 0.0), 1.0);
    v27 = powf(v26, v24);
    v28 = v25 + ((v27 / (v27 + powf(1.0 - v26, v24))) * (v23 - v25));
    *&v29 = v28;
    v240 = ([*(a1 + 30288) updateBiasTrackingAndFaceCorrectionQuaternionWithFaceSmoothingArrays:&v247 biasTrackingSigma:a2 centerFrameOffset:v29] & 1) != 0 || v28 == *(v8 + 787);
    v12 = v22;
    v21 = *(a1 + 29400);
    v13 = v235;
  }

  else
  {
    v240 = 1;
  }

  v252 = 0;
  v250 = 0u;
  v251 = 0u;
  v248 = 0u;
  v249 = 0u;
  v247 = 0u;
  if (v21)
  {
    [v21 getQuaternionSmoothingArrays];
  }

  *(a1 + 196) = 1065353216;
  if (*v8)
  {
    v30 = &v267;
    if (!*(a1 + 204) && !*(a1 + 392))
    {
      v30 = 0;
    }

    if (v8[1664])
    {
      v31 = &v268;
    }

    else
    {
      v31 = 0;
    }

    v269.f64[0] = GVSComputeGaussianAverageQuaternion(&v247, *(a1 + 176), a2, v238 != 0, v31, v30, a5, *(v8 + 597));
    v269.f64[1] = v32;
    v270.f64[0] = v33;
    v270.f64[1] = v34;
    if (v8[3112] == 1)
    {
      [*(a1 + 30288) faceCorrection];
      v269.f64[0] = GVSApplyFaceCorrectionQuaternionToStabilizedQuaternion(v35, v269.f64[0], v269.f64[1], v270.f64[0], v270.f64[1]);
      v269.f64[1] = v36;
      v270.f64[0] = v37;
      v270.f64[1] = v38;
    }

    if (*(a1 + 29568))
    {
      v269.f64[0] = FigMotionMultiplyQuaternions((v261 + 32 * a2), v269.f64);
      v269.f64[1] = v39;
      v270.f64[0] = v40;
      v270.f64[1] = v41;
    }

    if (*(v8 + 650) > 0.0)
    {
      v245 = 0u;
      v246 = 0u;
      v243 = 0u;
      v244 = 0u;
      v242 = 0u;
      v42 = *(a1 + 29400);
      if (v42)
      {
        [v42 getRollSmoothingArraysForBaseTransform:*(a1 + 176)];
      }

      if (v11)
      {
        v43 = v11[3];
        if (v43)
        {
          v44 = (v43 + 12 * v241);
          *v45.i64 = GVSComputeSmoothedHorizonQuaternion(&v242, a2, fminf((a5 / 30.0) * 4.0, *(v8 + 581)));
          v232 = v45;
          v273 = FigMotionInverseOfQuaternion(&v269);
          v274 = v46;
          v275 = v47;
          v276 = v48;
          v49.i32[0] = GVSRotateVectorByQuaternion(v44, &v273).u32[0];
          v272[0] = v49.f32[0];
          v272[1] = v50;
          v272[2] = v51;
          v236 = v49.f32[0];
          v49.f32[1] = v50;
          v228 = *v49.f32;
          v230 = v51;
          v52 = sqrtf(vaddv_f32(*&vmulq_f32(v49, v49)));
          v53 = 0.0;
          if (v52 > 0.0000001)
          {
            v53 = atan2f(v236, v50) * 0.5;
          }

          v54 = __sincosf_stret(v53);
          v55 = vmulq_n_f32(xmmword_435D0, v54.__sinval);
          v56 = v55;
          v56.i32[3] = LODWORD(v54.__cosval);
          v57 = vmulq_f32(v56, xmmword_433E0);
          v58 = vnegq_f32(v57);
          v59 = vtrn2q_s32(v57, vtrn1q_s32(v57, v58));
          v60 = vmulq_lane_f32(vextq_s8(v57, v58, 8uLL), v228, 1);
          v61 = vrev64q_s32(v57);
          v61.i32[0] = v58.i32[1];
          v61.i32[3] = v58.i32[2];
          v62 = vmlaq_n_f32(vmlaq_n_f32(v60, vextq_s8(v59, v59, 8uLL), v236), v61, v230);
          v63 = vnegq_f32(v62);
          v64 = vtrn2q_s32(v62, vtrn1q_s32(v62, v63));
          v65 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v62, v63, 8uLL), *v55.f32, 1), vextq_s8(v64, v64, 8uLL), v55.f32[0]);
          v66 = vrev64q_s32(v62);
          v66.i32[0] = v63.i32[1];
          v66.i32[3] = v63.i32[2];
          v237 = v56;
          v67 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v62, v56, 3), v66, v55, 2), v65);
          v68 = vmulq_f32(v67, xmmword_435E0);
          if ((v68.f32[2] + vaddv_f32(*v68.f32)) >= 0.0)
          {
            v79 = a5;
            v100 = vaddq_f32(v67, xmmword_435E0);
            v101 = vmulq_f32(v100, v100);
            *&v102 = v101.f32[2] + vaddv_f32(*v101.f32);
            *v101.f32 = vrsqrte_f32(v102);
            *v101.f32 = vmul_f32(*v101.f32, vrsqrts_f32(v102, vmul_f32(*v101.f32, *v101.f32)));
            v103 = vmulq_n_f32(v100, vmul_f32(*v101.f32, vrsqrts_f32(v102, vmul_f32(*v101.f32, *v101.f32))).f32[0]);
            v104 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v103, v103), v103, 0xCuLL), vnegq_f32(v67)), v103, vextq_s8(vuzp1q_s32(v67, v67), v67, 0xCuLL));
            v105 = vextq_s8(vuzp1q_s32(v104, v104), v104, 0xCuLL);
            v106 = vmulq_f32(v67, v103);
            *&v105.i32[3] = v106.f32[2] + vaddv_f32(*v106.f32);
            v231 = v105;
          }

          else
          {
            v70 = vmulq_f32(v67, v67);
            v69 = vaddv_f32(*v70.f32);
            v70.i32[1] = 0;
            *&v71 = v70.f32[2] + v69;
            v72 = vrsqrte_f32(COERCE_UNSIGNED_INT(v70.f32[2] + v69));
            v73 = vmul_f32(v72, vrsqrts_f32(v71, vmul_f32(v72, v72)));
            v74 = vrsqrte_f32(1065353216);
            v75 = vmul_f32(v74, vrsqrts_f32(1065353216, vmul_f32(v74, v74)));
            v76 = vaddq_f32(vmulq_n_f32(v67, vmul_f32(v73, vrsqrts_f32(v71, vmul_f32(v73, v73))).f32[0]), vmulq_n_f32(xmmword_435E0, vmul_f32(v75, vrsqrts_f32(1065353216, vmul_f32(v75, v75))).f32[0]));
            v77 = vmulq_f32(v76, v76);
            v78 = v77.f32[2] + vaddv_f32(*v77.f32);
            if (v78 <= 1.4211e-14)
            {
              v107 = vabsq_f32(v67);
              v108 = v107.f32[1];
              v109 = v107.f32[2];
              if (v107.f32[0] > v107.f32[1] || v107.f32[0] > v107.f32[2])
              {
                v79 = a5;
                v111 = vextq_s8(vuzp1q_s32(v67, v67), v67, 0xCuLL);
                if (v108 <= v109)
                {
                  v112 = vmlaq_f32(vmulq_f32(v67, xmmword_43610), xmmword_435E0, v111);
                }

                else
                {
                  v112 = vmlaq_f32(vmulq_f32(v67, xmmword_43620), xmmword_435D0, v111);
                }
              }

              else
              {
                v79 = a5;
                v112 = vmlaq_f32(vmulq_f32(v67, xmmword_435F0), xmmword_43600, vextq_s8(vuzp1q_s32(v67, v67), v67, 0xCuLL));
              }

              v113 = vextq_s8(vuzp1q_s32(v112, v112), v112, 0xCuLL);
              v114 = vmulq_f32(v112, v112);
              *&v115 = v114.f32[1] + (v114.f32[2] + v114.f32[0]);
              *v114.f32 = vrsqrte_f32(v115);
              *v114.f32 = vmul_f32(*v114.f32, vrsqrts_f32(v115, vmul_f32(*v114.f32, *v114.f32)));
              v99 = vmulq_n_f32(v113, vmul_f32(*v114.f32, vrsqrts_f32(v115, vmul_f32(*v114.f32, *v114.f32))).f32[0]);
              v99.i32[3] = 0;
            }

            else
            {
              v79 = a5;
              v80 = v78;
              v81 = vrsqrte_f32(LODWORD(v78));
              v82 = vmul_f32(v81, vrsqrts_f32(LODWORD(v80), vmul_f32(v81, v81)));
              v83 = vmulq_n_f32(v76, vmul_f32(v82, vrsqrts_f32(LODWORD(v80), vmul_f32(v82, v82))).f32[0]);
              v84 = vaddq_f32(v67, v83);
              v85 = vmulq_f32(v84, v84);
              *&v86 = v85.f32[2] + vaddv_f32(*v85.f32);
              *v85.f32 = vrsqrte_f32(v86);
              *v85.f32 = vmul_f32(*v85.f32, vrsqrts_f32(v86, vmul_f32(*v85.f32, *v85.f32)));
              v87 = vmulq_n_f32(v84, vmul_f32(*v85.f32, vrsqrts_f32(v86, vmul_f32(*v85.f32, *v85.f32))).f32[0]);
              v88 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v87, v87), v87, 0xCuLL), vnegq_f32(v67)), v87, vextq_s8(vuzp1q_s32(v67, v67), v67, 0xCuLL));
              v89 = vmulq_f32(v67, v87);
              v90 = vaddq_f32(v83, xmmword_435E0);
              v91 = vmulq_f32(v90, v90);
              v70.f32[0] = v91.f32[2] + vaddv_f32(*v91.f32);
              *v91.f32 = vrsqrte_f32(*v70.f32);
              *v91.f32 = vmul_f32(*v91.f32, vrsqrts_f32(*v70.f32, vmul_f32(*v91.f32, *v91.f32)));
              v92 = vmulq_n_f32(v90, vmul_f32(*v91.f32, vrsqrts_f32(*v70.f32, vmul_f32(*v91.f32, *v91.f32))).f32[0]);
              v93 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v92, v92), v92, 0xCuLL), vnegq_f32(v83)), v92, vextq_s8(vuzp1q_s32(v83, v83), v83, 0xCuLL));
              v94 = vextq_s8(vuzp1q_s32(v93, v93), v93, 0xCuLL);
              v95 = vmulq_f32(v83, v92);
              v94.f32[3] = v95.f32[2] + vaddv_f32(*v95.f32);
              v96 = vnegq_f32(v94);
              v97 = vtrn2q_s32(v94, vtrn1q_s32(v94, v96));
              v98 = vrev64q_s32(v94);
              v98.i32[0] = v96.i32[1];
              v98.i32[3] = v96.i32[2];
              v99 = vaddq_f32(vmlaq_lane_f32(vmulq_n_f32(v94, v89.f32[2] + vaddv_f32(*v89.f32)), v98, *v88.f32, 1), vmlaq_laneq_f32(vmulq_n_f32(vextq_s8(v94, v96, 8uLL), v88.f32[0]), vextq_s8(v97, v97, 8uLL), v88, 2));
            }

            v231 = v99;
          }

          v116 = vmulq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(v269), v270), xmmword_43630);
          v117 = vnegq_f32(v232);
          v118 = vtrn2q_s32(v232, vtrn1q_s32(v232, v117));
          v119 = vrev64q_s32(v232);
          v119.i32[0] = v117.i32[1];
          v119.i32[3] = v117.i32[2];
          v233 = vaddq_f32(vmlaq_lane_f32(vmulq_laneq_f32(vextq_s8(v232, v117, 8uLL), v116, 2), vextq_s8(v118, v118, 8uLL), *v116.f32, 1), vmlaq_laneq_f32(vmulq_n_f32(v232, v116.f32[0]), v119, v116, 3));
          GVSComputeRollPitchFromGravity(v272);
          v121 = (1.5533 - v120) / 0.50615;
          v122.i64[0] = 0;
          v123 = 1.0;
          v124 = fminf(fmaxf(v121, 0.0), 1.0);
          v125 = vmulq_f32(v233, xmmword_433D0);
          *v125.f32 = vadd_f32(*v125.f32, *&vextq_s8(v125, v125, 8uLL));
          v125.f32[0] = vaddv_f32(*v125.f32);
          v126 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v125, v122)), 0), vnegq_f32(v233), v233);
          v127 = 1.0 - v124;
          v128 = vsubq_f32(xmmword_433D0, v126);
          v129 = vmulq_f32(v128, v128);
          v229 = v126;
          v130 = vaddq_f32(v126, xmmword_433D0);
          v131 = vmulq_f32(v130, v130);
          v132 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v129.i8, *&vextq_s8(v129, v129, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v131.i8, *&vextq_s8(v131, v131, 8uLL)))));
          v133 = v132 + v132;
          _ZF = (v132 + v132) == 0.0;
          v135 = 1.0;
          if (!_ZF)
          {
            v135 = sinf(v133) / v133;
          }

          v136 = v135;
          v137 = vrecpe_f32(LODWORD(v135));
          v138 = vmul_f32(v137, vrecps_f32(LODWORD(v136), v137));
          LODWORD(v139) = vmul_f32(v138, vrecps_f32(LODWORD(v136), v138)).u32[0];
          if ((v133 * v127) != 0.0)
          {
            v226 = v139;
            v138.f32[0] = sinf(v133 * v127);
            v139 = v226;
            v123 = v138.f32[0] / (v133 * v127);
          }

          v138.f32[0] = v127 * (v139 * v123);
          v140 = vdupq_lane_s32(v138, 0);
          v141 = v133 * v124;
          v142 = 1.0;
          if (v141 != 0.0)
          {
            v225 = v140;
            v227 = v139;
            v143 = sinf(v141);
            v140 = v225;
            v139 = v227;
            v142 = v143 / v141;
          }

          v144 = xmmword_433D0;
          v145 = vmlaq_f32(vmulq_n_f32(v229, v124 * (v139 * v142)), xmmword_433D0, v140);
          v146 = vmulq_f32(v145, v145);
          v147 = vadd_f32(*v146.i8, *&vextq_s8(v146, v146, 8uLL));
          a5 = v79;
          if (vaddv_f32(v147) != 0.0)
          {
            v148 = vadd_f32(v147, vdup_lane_s32(v147, 1)).u32[0];
            v149 = vrsqrte_f32(v148);
            v150 = vmul_f32(v149, vrsqrts_f32(v148, vmul_f32(v149, v149)));
            v144 = vmulq_n_f32(v145, vmul_f32(v150, vrsqrts_f32(v148, vmul_f32(v150, v150))).f32[0]);
          }

          v151 = vnegq_f32(v237);
          v152 = vtrn2q_s32(v237, vtrn1q_s32(v237, v151));
          v153 = vrev64q_s32(v237);
          v153.i32[0] = v151.i32[1];
          v153.i32[3] = v151.i32[2];
          v154 = vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v237, v151, 8uLL), *v231.f32, 1), vextq_s8(v152, v152, 8uLL), v231.f32[0]), vmlaq_laneq_f32(vmulq_laneq_f32(v237, v231, 3), v153, v231, 2));
          v155 = vmulq_f32(v154, xmmword_433E0);
          v156 = vnegq_f32(v155);
          v157 = vtrn2q_s32(v155, vtrn1q_s32(v155, v156));
          v158 = vrev64q_s32(v155);
          v158.i32[0] = v156.i32[1];
          v158.i32[3] = v156.i32[2];
          v159 = vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v155, v156, 8uLL), *v144.f32, 1), vextq_s8(v157, v157, 8uLL), v144.f32[0]), vmlaq_laneq_f32(vmulq_laneq_f32(v155, v144, 3), v158, v144, 2));
          _Q2 = vnegq_f32(v159);
          v161 = vtrn2q_s32(v159, vtrn1q_s32(v159, _Q2));
          _Q4 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v159, _Q2, 8uLL), *v154.f32, 1), vextq_s8(v161, v161, 8uLL), v154.f32[0]);
          _Q3 = vrev64q_s32(v159);
          _Q3.i32[0] = _Q2.i32[1];
          _Q3.i32[3] = _Q2.i32[2];
          _Q1 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v159, v154, 3), _Q3, v154, 2), _Q4);
          _Q2.i32[0] = _Q1.i32[1];
          _Q4.i32[0] = _Q1.i32[3];
          v154.f32[0] = vmuls_lane_f32(_Q1.f32[2], _Q1, 3);
          __asm
          {
            FMLA            S3, S2, V1.S[1]
            FMLA            S3, S4, V1.S[3]
          }

          v168 = atan2f((v154.f32[0] + (_Q1.f32[0] * _Q1.f32[1])) + (v154.f32[0] + (_Q1.f32[0] * _Q1.f32[1])), _Q3.f32[0] - (_Q1.f32[0] * _Q1.f32[0]));
          v271[1] = 0;
          v271[2] = 0;
          v169 = __sincos_stret(v168 * 0.5);
          v271[3] = *&v169.__sinval;
          v271[0] = *&v169.__cosval;
          v269.f64[0] = FigMotionMultiplyQuaternions(v269.f64, v271);
          v269.f64[1] = v170;
          v270.f64[0] = v171;
          v270.f64[1] = v172;
        }
      }
    }
  }

  v173 = *(*(&v247 + 1) + 8 * a2);
  v271[0] = vmul_n_f32(v267, *(&v253 + 1));
  if (*(a1 + 176) <= 0)
  {
    if (!*v8)
    {
      goto LABEL_103;
    }

    goto LABEL_106;
  }

  v174 = 0;
  v175 = v12 - v13;
  v176 = vmul_n_f32(vsub_f32(v173, v268), *(&v253 + 1));
  v177 = a1 + 27872;
  v178 = (a1 + 27152);
  do
  {
    if (*(v8 + 507) < 1)
    {
      if (*v8)
      {
        v182 = (*(v260 + 8 * v174) + 32 * a2);
        v183 = &v269;
      }

      else
      {
        v242 = 0u;
        v243 = 0u;
        v242.f64[0] = GVSComputeGaussianAverageQuaternion(&v247, v174, a2, v238 != 0, 0, 0, a5, *(v8 + 597));
        v242.f64[1] = v184;
        v243.f64[0] = v185;
        v243.f64[1] = v186;
        if (v8[3112] == 1)
        {
          [*(a1 + 30288) faceCorrection];
          v242.f64[0] = GVSApplyFaceCorrectionQuaternionToStabilizedQuaternion(v187, v242.f64[0], v242.f64[1], v243.f64[0], v243.f64[1]);
          v242.f64[1] = v188;
          v243.f64[0] = v189;
          v243.f64[1] = v190;
        }

        if (*(a1 + 29568))
        {
          v242.f64[0] = FigMotionMultiplyQuaternions((v261 + 32 * a2), v242.f64);
          v242.f64[1] = v191;
          v243.f64[0] = v192;
          v243.f64[1] = v193;
        }

        v182 = (*(v260 + 8 * v174) + 32 * a2);
        v183 = &v242;
      }

      v181 = FigMotionMultiplyByInverseOfQuaternion(v183->f64, v182);
      *v177 = v181;
      *(v177 + 8) = v194;
      *(v177 + 16) = v195;
      *(v177 + 24) = v196;
    }

    else
    {
      v179 = (*(&v260 + 1) + 32 * a2);
      v180 = v179[1];
      *v177 = *v179;
      *(v177 + 16) = v180;
      v181 = *v177;
    }

    if (v181 < 0.0)
    {
      v240 = 0;
      v197 = -*(v177 + 24);
      *v177 = -v181;
      *(v177 + 8) = vnegq_f64(*(v177 + 8));
      *(v177 + 24) = v197;
    }

    *&v242.f64[0] = v176;
    if (v11)
    {
      *&v242.f64[0] = vadd_f32(v176, *(*(v11[1] + 8 * v241) + 8 * v174));
      v198 = GVSComputeTransformFromCameraMotion(v177, (a1 + 336), &v253, &v242, v271, v178);
      if (v198)
      {
        goto LABEL_111;
      }

      v199 = v11[2];
      v200 = v178;
      if (v199)
      {
        if (([*(v199 + 240 * v241) isValid] & 1) != 0 || (v201 = objc_msgSend(*(v11[2] + 240 * v241 + 8), "isValid"), v200 = v178, v201))
        {
          v202 = GVSCheckDistortedTransformFits(v178, v259 + 1, (a1 + 136), v11[2] + 240 * v241, v175 > 0.2468, &v266);
          if (v202)
          {
            v224 = v202;
            sbp_gvs_gaussianAverageComputeCorrection_cold_1();
            return v224;
          }

          goto LABEL_87;
        }
      }
    }

    else
    {
      v198 = GVSComputeTransformFromCameraMotion(v177, (a1 + 336), &v253, &v242, v271, v178);
      if (v198)
      {
LABEL_111:
        v224 = v198;
        sbp_gvs_gaussianAverageComputeCorrection_cold_2();
        return v224;
      }

      v200 = a1 + 27152 + 36 * v174;
    }

    v203 = limitTransformToOverscan(a1 + 128, v259 + 1, v200, *(&v254 + 1));
    if (v203)
    {
      v224 = v203;
      sbp_gvs_gaussianAverageComputeCorrection_cold_3();
      return v224;
    }

    v266 = *(a1 + 196) >= 1.0;
LABEL_87:
    v204 = *v8;
    v206 = DWORD2(v264) != HIDWORD(v264) && v175 <= 0.295;
    if (*v8 != 0 || v240 || v206)
    {
      v207 = v266;
    }

    else
    {
      v207 = 0;
      v266 = 0;
    }

    if (a3 && !v207)
    {
      break;
    }

    ++v174;
    v178 += 9;
    v177 += 32;
  }

  while (v174 < *(a1 + 176));
  if (v204)
  {
    goto LABEL_106;
  }

LABEL_103:
  v208 = *(a1 + 176) - 1;
  v209 = *(a1 + 176) / 2;
  v242.f64[0] = FigMotionMultiplyQuaternions((*(v260 + 8 * (v208 / 2)) + 32 * a2), (a1 + 27872 + 32 * ((v208 + (v208 >> 31)) >> 1)));
  v242.f64[1] = v210;
  v243.f64[0] = v211;
  v243.f64[1] = v212;
  if (v209 == v208 / 2)
  {
    v269 = v242;
    v270 = v243;
  }

  else
  {
    v273 = FigMotionMultiplyQuaternions((*(v260 + 8 * v209) + 32 * a2), (a1 + 27872 + 32 * v209));
    v274 = v213;
    v275 = v214;
    v276 = v215;
    v269.f64[0] = GVSInterpolateQuaternionsLERP(&v273, &v242, 1, 0, 0.5);
    v269.f64[1] = v216;
    v270.f64[0] = v217;
    v270.f64[1] = v218;
  }

LABEL_106:
  v219 = v270;
  *(a1 + 28096) = v269;
  *(a1 + 28112) = v219;
  *(a1 + 28224) = v268;
  *(a1 + 28232) = v267;
  if (*(*(&v248 + 1) + a2) == 1)
  {
    v242.f64[0] = FigMotionMultiplyByInverseOfQuaternion(v269.f64, (*(v247 + 8 * *(a1 + 176)) + 32 * a2));
    v242.f64[1] = v220;
    v243.f64[0] = v221;
    v243.f64[1] = v222;
    v273 = 0.0;
    GVSComputeTranslationFromCameraMotion(v242.f64, &v273, *(&v253 + 1));
    if (fmaxf(fabsf(*&v273), fabsf(*(&v273 + 1))) > 1.0)
    {
      v266 = 0;
    }
  }

  v224 = 0;
  *a4 = v266;
  return v224;
}

uint64_t limitTransformToOverscan(uint64_t a1, double *a2, uint64_t a3, float a4)
{
  v6 = 1.0;
  if (*(a1 + 40) <= 2u)
  {
    *(a3 + 24) = 0;
    *(a3 + 32) = 1065353216;
  }

  result = GVSFindBestPerspectiveTransform(a3, a2, (a1 + 24), &v6, a4);
  if (result)
  {
    *(a1 + 74) = 1;
  }

  else if (v6 < *(a1 + 68))
  {
    *(a1 + 68) = v6;
  }

  return result;
}

void _runVideoDeghostingRepairOnSingleFrame(void *a1, void *a2, int a3, int a4)
{
  v7 = a1;
  _updateVideoDeghostingGhostInformationLookAhead([v7 ghostInformationLookAheadPointer], a2, a4, a3);
  [v7 setRepairInputSampleBuffer:*(*a2 + 8 * a4)];
  [v7 setRepairInputDetectionResult:*(a2[1] + 24 * a4 + 8)];
  v8 = [v7 repair];

  if (v8)
  {
    _runVideoDeghostingRepairOnSingleFrame_cold_1();
  }
}

uint64_t _runSmartStyleIntegrate(uint64_t a1, CMAttachmentBearerRef target)
{
  v2 = a1;
  rect.origin.x = 0.0;
  rect.origin.y = 0.0;
  __asm { FMOV            V0.2D, #1.0 }

  rect.size = _Q0;
  if (!a1)
  {
    _runSmartStyleIntegrate_cold_13();
    v14 = 0;
    v11 = 0;
LABEL_32:
    v12 = 0;
    v10 = 0;
    goto LABEL_42;
  }

  if (!target)
  {
    _runSmartStyleIntegrate_cold_12();
    v14 = 0;
    v11 = 0;
    v2 = 0;
    goto LABEL_32;
  }

  if (gGMFigKTraceEnabled == 1)
  {
    _runSmartStyleIntegrate_cold_1(target);
  }

  v9 = CMGetAttachment(target, kFigSampleBufferAttachmentKey_AttachedMedia, 0);
  v10 = v9;
  if (v9)
  {
    v11 = [v9 objectForKeyedSubscript:kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingUnstyledThumbnail];

    if (v11)
    {
      v12 = CMGetAttachment(target, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
      if (v12)
      {
        v13 = kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingLearnedCoefficients;
        v14 = [v10 objectForKeyedSubscript:kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingLearnedCoefficients];

        if (!v14)
        {
          _runSmartStyleIntegrate_cold_8();
LABEL_41:
          v11 = 0;
          v2 = 0;
          goto LABEL_42;
        }

        ImageBuffer = CMSampleBufferGetImageBuffer(v11);
        if (ImageBuffer)
        {
          v16 = ImageBuffer;
          v17 = CMSampleBufferGetImageBuffer(v14);
          if (v17)
          {
            v18 = v17;
            v31 = v13;
            v32 = v10;
            v19 = v2 + 28672;
            v20 = *(v2 + 30105);
            v21 = [v12 objectForKeyedSubscript:kFigCaptureSampleBufferMetadata_SmartStyleLearnedRect];

            if (v21 && v20 && !CGRectMakeWithDictionaryRepresentation(v21, &rect))
            {
              _runSmartStyleIntegrate_cold_2();
            }

            v22 = kFigCaptureSampleBufferAttachmentKey_SmartStyleMetalEvent;
            v11 = CMGetAttachment(target, kFigCaptureSampleBufferAttachmentKey_SmartStyleMetalEvent, 0);
            v23 = objc_alloc_init(*(v2 + 30160));
            v14 = v23;
            if (!v23)
            {
              _runSmartStyleIntegrate_cold_5();
              v2 = 0;
              v29 = 4294954510;
LABEL_26:
              v10 = v32;
              goto LABEL_27;
            }

            [v23 setMetalSharedEvent:v11];
            [v14 setInputMetadataDict:v12];
            [v14 setInputUnstyledThumbnailPixelBuffer:v16];
            [v14 setInputStyleCoefficientsPixelBuffer:v18];
            [v14 setPrimaryCaptureRect:{rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];
            if (v20)
            {
              v24 = [*(v2 + 30128) configuration];
              v25 = [v24 styleEngineConfiguration];
              [v25 globalLinearSystemMixFactor];
              [v14 setGlobalLinearSystemMixFactor:?];
            }

            else
            {
              updated = _updateSmartStyleGlobalMixFactor(v2, v12);
              if (updated)
              {
                v29 = updated;
                _runSmartStyleIntegrate_cold_3();
LABEL_46:
                v2 = 0;
                goto LABEL_26;
              }

              LODWORD(v27) = *(v2 + 30212);
              [v14 setGlobalLinearSystemMixFactor:v27];
            }

            [*(v2 + 30128) setInputOutput:v14];
            v28 = [*(v2 + 30128) process];
            if (!v28)
            {
              v2 = [*(v2 + 30128) outputIntegratedStyleCoefficientsTexture];
              if (!*(v19 + 1434))
              {
                _setAttachedMediaToSampleBuffer(target, v31, 0);
              }

              _setAttachedMediaToSampleBuffer(target, kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingIntegratedForwardLearnedCoefficients, v2);
              if (v11)
              {
                CMRemoveAttachment(target, v22);
              }

              v29 = 0;
              goto LABEL_26;
            }

            v29 = v28;
            _runSmartStyleIntegrate_cold_4();
            goto LABEL_46;
          }

          _runSmartStyleIntegrate_cold_6();
        }

        else
        {
          _runSmartStyleIntegrate_cold_7();
        }
      }

      else
      {
        _runSmartStyleIntegrate_cold_9();
      }

      v14 = 0;
      goto LABEL_41;
    }

    _runSmartStyleIntegrate_cold_10();
    v14 = 0;
  }

  else
  {
    _runSmartStyleIntegrate_cold_11();
    v14 = 0;
    v11 = 0;
  }

  v2 = 0;
  v12 = 0;
LABEL_42:
  v29 = 4294954516;
LABEL_27:
  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }

  return v29;
}

uint64_t _runSmartStyleApplyOnUnstabilizedThumbnail(uint64_t a1, CMAttachmentBearerRef target)
{
  memset(&timingArrayOut, 0, sizeof(timingArrayOut));
  destinationBuffer = 0;
  cf = 0;
  if (!a1)
  {
    _runSmartStyleApplyOnUnstabilizedThumbnail_cold_15();
LABEL_38:
    v21 = 0;
    v23 = 0;
    v5 = 0;
    v4 = 0;
LABEL_43:
    PixelBufferFromPool = 4294954516;
    goto LABEL_29;
  }

  if (!target)
  {
    _runSmartStyleApplyOnUnstabilizedThumbnail_cold_14();
    goto LABEL_38;
  }

  if (gGMFigKTraceEnabled == 1)
  {
    _runSmartStyleApplyOnUnstabilizedThumbnail_cold_1(target);
  }

  v4 = CMGetAttachment(target, kFigSampleBufferAttachmentKey_AttachedMedia, 0);
  if (!v4)
  {
    _runSmartStyleApplyOnUnstabilizedThumbnail_cold_13();
    v21 = 0;
    v23 = 0;
    v5 = 0;
    goto LABEL_43;
  }

  v5 = CMGetAttachment(target, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
  if (!v5)
  {
    _runSmartStyleApplyOnUnstabilizedThumbnail_cold_12();
LABEL_42:
    v21 = 0;
    v23 = 0;
    goto LABEL_43;
  }

  v6 = [v4 objectForKeyedSubscript:kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingUnstyledThumbnail];

  if (!v6)
  {
    _runSmartStyleApplyOnUnstabilizedThumbnail_cold_11();
    goto LABEL_42;
  }

  v31 = v5;
  ImageBuffer = CMSampleBufferGetImageBuffer(v6);
  if (!ImageBuffer)
  {
    _runSmartStyleApplyOnUnstabilizedThumbnail_cold_10();
LABEL_47:
    v21 = 0;
    v23 = 0;
    PixelBufferFromPool = 4294954516;
    v5 = v31;
    goto LABEL_29;
  }

  v8 = ImageBuffer;
  v9 = [v4 objectForKeyedSubscript:kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingLearnedCoefficients];

  if (!v9)
  {
    _runSmartStyleApplyOnUnstabilizedThumbnail_cold_9();
    goto LABEL_47;
  }

  v10 = CMSampleBufferGetImageBuffer(v9);
  if (!v10)
  {
    _runSmartStyleApplyOnUnstabilizedThumbnail_cold_8();
    goto LABEL_47;
  }

  v11 = v10;
  v29 = v4;
  if (*(a1 + 25))
  {
    v12 = *(a1 + 27148);
    v13 = v12 | 2;
    if (v12 == 2)
    {
      v14 = 66000;
    }

    else
    {
      v14 = 0;
    }

    if (v13 == 3)
    {
      v15 = 66000;
    }

    else
    {
      v15 = v14;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingStyledThumbnail;
  v17 = [*(a1 + 48) objectForKeyedSubscript:{kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingStyledThumbnail, v29}];
  v18 = [*(a1 + 56) objectForKeyedSubscript:v16];
  PixelBufferFromPool = sbp_gvs_getPixelBufferFromPool(v17, v18, 0, v15, 0, 0, &destinationBuffer);

  if (PixelBufferFromPool)
  {
    _runSmartStyleApplyOnUnstabilizedThumbnail_cold_2();
    v21 = 0;
    v23 = 0;
LABEL_50:
    v4 = v30;
    v5 = v31;
    goto LABEL_29;
  }

  CVBufferPropagateAttachments(v8, destinationBuffer);
  v20 = kFigCaptureSampleBufferAttachmentKey_SmartStyleMetalEvent;
  v21 = CMGetAttachment(target, kFigCaptureSampleBufferAttachmentKey_SmartStyleMetalEvent, 0);
  v22 = objc_alloc_init(*(a1 + 30160));
  v23 = v22;
  if (!v22)
  {
    _runSmartStyleApplyOnUnstabilizedThumbnail_cold_7();
    PixelBufferFromPool = 4294954510;
    goto LABEL_50;
  }

  [v22 setMetalSharedEvent:v21];
  [v23 setInputUnstyledPixelBuffer:v8];
  v5 = v31;
  [v23 setInputMetadataDict:v31];
  [v23 setInputStyleCoefficientsPixelBuffer:v11];
  [v23 setOutputStyledPixelBuffer:destinationBuffer];
  [*(a1 + 30136) setInputOutput:v23];
  v24 = [*(a1 + 30136) process];
  if (v24)
  {
    PixelBufferFromPool = v24;
    _runSmartStyleApplyOnUnstabilizedThumbnail_cold_3();
    v4 = v30;
  }

  else
  {
    v25 = [*(a1 + 30136) finishProcessing];
    if (v25)
    {
      PixelBufferFromPool = v25;
      _runSmartStyleApplyOnUnstabilizedThumbnail_cold_4();
    }

    else
    {
      SampleTimingInfoArray = CMSampleBufferGetSampleTimingInfoArray(v6, 1, &timingArrayOut, 0);
      if (SampleTimingInfoArray)
      {
        PixelBufferFromPool = SampleTimingInfoArray;
        _runSmartStyleApplyOnUnstabilizedThumbnail_cold_5();
      }

      else
      {
        v27 = sbp_internalCreateSampleBufferWithNewPixelBuffer(destinationBuffer, *(a1 + 64), v16, &timingArrayOut, &cf);
        if (v27)
        {
          PixelBufferFromPool = v27;
          _runSmartStyleApplyOnUnstabilizedThumbnail_cold_6();
        }

        else
        {
          _setAttachedMediaToSampleBuffer(target, v16, cf);
          if (v21)
          {
            CMRemoveAttachment(target, v20);
          }

          PixelBufferFromPool = 0;
        }
      }
    }

    v4 = v30;
  }

LABEL_29:
  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (destinationBuffer)
  {
    CFRelease(destinationBuffer);
  }

  return PixelBufferFromPool;
}

uint64_t sbp_gvs_createStabilizedAttachmentsPixelBuffers(uint64_t a1, void *target, opaqueCMSampleBuffer *a3, _OWORD *a4)
{
  v57 = 0;
  v58 = 0;
  if (!a1)
  {
    sbp_gvs_createStabilizedAttachmentsPixelBuffers_cold_10();
LABEL_57:
    PixelBufferFromPool = 4294954516;
    goto LABEL_47;
  }

  if (!target)
  {
    sbp_gvs_createStabilizedAttachmentsPixelBuffers_cold_9();
    goto LABEL_57;
  }

  if (!a3)
  {
    sbp_gvs_createStabilizedAttachmentsPixelBuffers_cold_8();
    goto LABEL_57;
  }

  if (*(a1 + 172))
  {
    sbp_gvs_createStabilizedAttachmentsPixelBuffers_cold_1();
    goto LABEL_57;
  }

  v6 = *(a1 + 128);
  v7 = *(a1 + 132);
  v55 = 0uLL;
  v56.f64[0] = v6;
  v56.f64[1] = v7;
  if (*(a1 + 224))
  {
    *&timingArrayOut.duration.value = *a4;
    ensureValidBufferRectIsCompatibleWithGPU(v6, v7, &timingArrayOut);
    v8.i64[0] = SLODWORD(timingArrayOut.duration.value);
    v8.i64[1] = SHIDWORD(timingArrayOut.duration.value);
    v9 = vcvtq_f64_s64(v8);
    v8.i64[0] = timingArrayOut.duration.timescale;
    v8.i64[1] = timingArrayOut.duration.flags;
    v55 = v9;
    v56 = vcvtq_f64_s64(v8);
  }

  v10 = CMGetAttachment(target, kFigSampleBufferAttachmentKey_AttachedMedia, 0);
  if (!v10)
  {
    PixelBufferFromPool = 0;
    goto LABEL_47;
  }

  v11 = v10;
  ImageBuffer = CMSampleBufferGetImageBuffer(a3);
  if (!ImageBuffer)
  {
    sbp_gvs_createStabilizedAttachmentsPixelBuffers_cold_7(v11);
    goto LABEL_57;
  }

  v13 = ImageBuffer;
  Width = CVPixelBufferGetWidth(ImageBuffer);
  Height = CVPixelBufferGetHeight(v13);
  v54[0] = kFigCaptureStreamMetadataOutputKey_HumanFullBodiesMask;
  v54[1] = kFigCaptureStreamMetadataOutputKey_HumanSkinsMask;
  v54[2] = kFigCaptureStreamMetadataOutputKey_HumanHairMask;
  v54[3] = kFigCaptureStreamMetadataOutputKey_SkyMask;
  v44 = kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingLinearThumbnail;
  v54[4] = kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingLinearThumbnail;
  v16 = [NSArray arrayWithObjects:v54 count:5];
  v17 = [NSMutableArray arrayWithArray:v16];

  if (v17)
  {
    v18 = CMGetAttachment(target, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
    v40 = (a1 + 27148);
    if (*(a1 + 30107))
    {
      v19 = &__kCFBooleanTrue;
    }

    else
    {
      v53[0] = kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingUnstyledThumbnail;
      v53[1] = kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingStyledThumbnail;
      v21 = [NSArray arrayWithObjects:v53 count:2];
      [v17 addObjectsFromArray:v21];

      v19 = &__kCFBooleanFalse;
    }

    v38 = v18;
    [v18 setObject:v19 forKeyedSubscript:kFigVideoStabilizationSampleBufferAttachmentKey_OutputSmartStyleUnstyledEnabled];
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v22 = v11;
    v23 = [v22 countByEnumeratingWithState:&v49 objects:v48 count:16];
    v45 = v17;
    if (v23)
    {
      v24 = v23;
      v25 = *v50;
      key = kCVImageBufferTransferFunctionKey;
      v41 = COERCE_DOUBLE(__PAIR64__(Height, Width));
      v42 = target;
      v43 = v22;
      while (2)
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v50 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v49 + 1) + 8 * i);
          if ([v17 containsObject:v27])
          {
            memset(&timingArrayOut, 0, sizeof(timingArrayOut));
            v28 = [v22 objectForKeyedSubscript:v27];

            v29 = CMSampleBufferGetImageBuffer(v28);
            if (*(a1 + 25))
            {
              if (*v40 == 2)
              {
                v30 = 66000;
              }

              else
              {
                v30 = 0;
              }

              if ((*v40 | 2) == 3)
              {
                v31 = 66000;
              }

              else
              {
                v31 = v30;
              }
            }

            else
            {
              v31 = 0;
            }

            v32 = [*(a1 + 48) objectForKeyedSubscript:v27];
            v33 = [*(a1 + 56) objectForKeyedSubscript:v27];
            PixelBufferFromPool = sbp_gvs_getPixelBufferFromPool(v32, v33, 0, v31, 0, 0, &v58);

            if (PixelBufferFromPool)
            {
              sbp_gvs_createStabilizedAttachmentsPixelBuffers_cold_2();
LABEL_45:
              v22 = v43;
              goto LABEL_46;
            }

            CVBufferPropagateAttachments(v29, v58);
            if ([v27 isEqual:v44])
            {
              CVBufferRemoveAttachment(v58, key);
            }

            v34 = AffineTransformArrayApplyOnAttachment(*(a1 + 88), v42, v27, v58, *(a1 + 27408), &v55, COERCE_DOUBLE(vrev64_s32(*(a1 + 180))), COERCE_DOUBLE(vrev64_s32(*(a1 + 188))), v41);
            if (v34)
            {
              PixelBufferFromPool = v34;
              sbp_gvs_createStabilizedAttachmentsPixelBuffers_cold_3();
              goto LABEL_45;
            }

            SampleTimingInfoArray = CMSampleBufferGetSampleTimingInfoArray(v28, 1, &timingArrayOut, 0);
            if (SampleTimingInfoArray)
            {
              PixelBufferFromPool = SampleTimingInfoArray;
              sbp_gvs_createStabilizedAttachmentsPixelBuffers_cold_4();
              goto LABEL_45;
            }

            v36 = sbp_internalCreateSampleBufferWithNewPixelBuffer(v58, *(a1 + 64), v27, &timingArrayOut, &v57);
            if (v36)
            {
              PixelBufferFromPool = v36;
              sbp_gvs_createStabilizedAttachmentsPixelBuffers_cold_5();
              goto LABEL_45;
            }

            _setAttachedMediaToSampleBuffer(a3, v27, v57);
            _setAttachedMediaToSampleBuffer(v42, v27, 0);
            if (v58)
            {
              CFRelease(v58);
              v58 = 0;
            }

            v17 = v45;
            v22 = v43;
            if (v57)
            {
              CFRelease(v57);
              v57 = 0;
            }
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v49 objects:v48 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }
    }

    PixelBufferFromPool = 0;
LABEL_46:
  }

  else
  {
    sbp_gvs_createStabilizedAttachmentsPixelBuffers_cold_6(v11);
    PixelBufferFromPool = 4294954510;
  }

LABEL_47:
  if (v58)
  {
    CFRelease(v58);
    v58 = 0;
  }

  if (v57)
  {
    CFRelease(v57);
  }

  return PixelBufferFromPool;
}

uint64_t _runSmartStyleReverseLearning(uint64_t a1, const void *a2, void *target)
{
  memset(&timingArrayOut, 0, sizeof(timingArrayOut));
  v30 = 0;
  cf = 0;
  v29 = 0;
  if (!a1)
  {
    _runSmartStyleReverseLearning_cold_13();
LABEL_39:
    PixelBufferFromPool = 4294954516;
    goto LABEL_24;
  }

  if (!a2)
  {
    _runSmartStyleReverseLearning_cold_12();
    goto LABEL_39;
  }

  if (!target)
  {
    _runSmartStyleReverseLearning_cold_11();
    goto LABEL_39;
  }

  if (gGMFigKTraceEnabled == 1)
  {
    _runSmartStyleReverseLearning_cold_1(a2);
  }

  v6 = CMGetAttachment(target, kFigSampleBufferAttachmentKey_AttachedMedia, 0);
  if (!v6)
  {
    _runSmartStyleReverseLearning_cold_10();
    goto LABEL_39;
  }

  v7 = v6;
  v8 = kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingStyledThumbnail;
  v9 = [v6 objectForKeyedSubscript:kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingStyledThumbnail];

  if (!v9)
  {
    _runSmartStyleReverseLearning_cold_9(v7);
    goto LABEL_39;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(v9);
  if (!ImageBuffer)
  {
    _runSmartStyleReverseLearning_cold_8(v7);
    goto LABEL_39;
  }

  v11 = ImageBuffer;
  v12 = kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingUnstyledThumbnail;
  v13 = [v7 objectForKeyedSubscript:kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingUnstyledThumbnail];

  if (!v13)
  {
    _runSmartStyleReverseLearning_cold_7(v7);
    goto LABEL_39;
  }

  v14 = CMSampleBufferGetImageBuffer(v13);
  if (!v14)
  {
    _runSmartStyleReverseLearning_cold_6(v7);
    goto LABEL_39;
  }

  v15 = v14;
  v27 = v8;
  v28 = a2;
  if (*(a1 + 25))
  {
    v16 = *(a1 + 27148);
    v17 = v16 | 2;
    if (v16 == 2)
    {
      v18 = 66000;
    }

    else
    {
      v18 = 0;
    }

    if (v17 == 3)
    {
      v19 = 66000;
    }

    else
    {
      v19 = v18;
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingReverseLearnedCoefficients;
  v21 = [*(a1 + 48) objectForKeyedSubscript:kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingReverseLearnedCoefficients];
  v22 = [*(a1 + 56) objectForKeyedSubscript:v20];
  PixelBufferFromPool = sbp_gvs_getPixelBufferFromPool(v21, v22, 0, v19, 0, 0, &v30);

  if (PixelBufferFromPool)
  {
    _runSmartStyleReverseLearning_cold_2();
  }

  else
  {
    v24 = [*(a1 + 30144) learnTransformFrom:v11 to:v15 outputCoefficients:v30 outputIntegratedCoefficients:&v29];
    if (v24)
    {
      PixelBufferFromPool = v24;
      _runSmartStyleReverseLearning_cold_3();
    }

    else
    {
      SampleTimingInfoArray = CMSampleBufferGetSampleTimingInfoArray(target, 1, &timingArrayOut, 0);
      if (SampleTimingInfoArray)
      {
        PixelBufferFromPool = SampleTimingInfoArray;
        _runSmartStyleReverseLearning_cold_4();
      }

      else
      {
        PixelBufferFromPool = sbp_internalCreateSampleBufferWithNewPixelBuffer(v30, *(a1 + 64), v20, &timingArrayOut, &cf);
        if (PixelBufferFromPool)
        {
          _runSmartStyleReverseLearning_cold_5();
        }

        else
        {
          _setAttachedMediaToSampleBuffer(v28, kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingIntegratedReverseLearnedCoefficients, v29);
          _setAttachedMediaToSampleBuffer(target, v20, cf);
          _setAttachedMediaToSampleBuffer(target, kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingLearnedCoefficients, 0);
          _setAttachedMediaToSampleBuffer(target, v27, 0);
          _setAttachedMediaToSampleBuffer(target, v12, 0);
        }
      }
    }
  }

LABEL_24:
  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  return PixelBufferFromPool;
}

uint64_t sbp_gvs_createStabilizedPixelBuffer(uint64_t a1, CMSampleBufferRef sbuf, int32x4_t *a3, __CVBuffer *a4)
{
  if (!a1)
  {
    sbp_gvs_createStabilizedPixelBuffer_cold_13();
    return 4294954516;
  }

  if (!sbuf)
  {
    sbp_gvs_createStabilizedPixelBuffer_cold_12();
    return 4294954516;
  }

  v5 = a4;
  if (!a4)
  {
    sbp_gvs_createStabilizedPixelBuffer_cold_11();
    return 4294954516;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(sbuf);
  if (!ImageBuffer)
  {
    sbp_gvs_createStabilizedPixelBuffer_cold_10();
    return 4294954516;
  }

  v9 = ImageBuffer;
  v10 = a1 + 27148;
  if (CMGetAttachment(ImageBuffer, @"InputDepthPixelBuffer", 0))
  {
    value[0] = 0;
    if (*(a1 + 25))
    {
      if (*v10 == 2)
      {
        v11 = 66000;
      }

      else
      {
        v11 = 0;
      }

      if ((*v10 | 2) == 3)
      {
        v12 = 66000;
      }

      else
      {
        v12 = v11;
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = [*(a1 + 48) objectForKeyedSubscript:@"OutputBufferDepth"];
    v14 = [*(a1 + 56) objectForKeyedSubscript:@"OutputBufferDepth"];
    PixelBufferFromPool = sbp_gvs_getPixelBufferFromPool(v13, v14, 0, v12, 0, 0, value);

    if (PixelBufferFromPool)
    {
      sbp_gvs_createStabilizedPixelBuffer_cold_1();
      return PixelBufferFromPool;
    }

    CMSetAttachment(v9, @"OutputDepthPixelBuffer", value[0], 0);
    if (value[0])
    {
      CFRelease(value[0]);
    }
  }

  if (!*(a1 + 172) && *(a1 + 30106))
  {
    value[0] = 0;
    if (*(a1 + 25))
    {
      if (*v10 == 2)
      {
        v21 = 66000;
      }

      else
      {
        v21 = 0;
      }

      if ((*v10 | 2) == 3)
      {
        v22 = 66000;
      }

      else
      {
        v22 = v21;
      }
    }

    else
    {
      v22 = 0;
    }

    v62 = kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingDeltaMap;
    v63 = [*(a1 + 48) objectForKeyedSubscript:kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingDeltaMap];
    v64 = [*(a1 + 56) objectForKeyedSubscript:v62];
    PixelBufferFromPool = sbp_gvs_getPixelBufferFromPool(v63, v64, 0, v22, 0, 0, value);

    if (PixelBufferFromPool)
    {
      sbp_gvs_createStabilizedPixelBuffer_cold_2();
      return PixelBufferFromPool;
    }

    CMSetAttachment(v9, @"OutputSmartStyleDeltaMapPixelBuffer", value[0], 0);
    if (value[0])
    {
      CFRelease(value[0]);
    }
  }

  v16 = kFigCaptureSampleBufferAttachmentKey_LowResImageUsedByVideoEncoder;
  v17 = [*(a1 + 48) objectForKeyedSubscript:kFigCaptureSampleBufferAttachmentKey_LowResImageUsedByVideoEncoder];

  if (v17)
  {
    value[0] = 0;
    if (*(a1 + 25))
    {
      v18 = v5;
      if (*v10 == 2)
      {
        v19 = 66000;
      }

      else
      {
        v19 = 0;
      }

      if ((*v10 | 2) == 3)
      {
        v20 = 66000;
      }

      else
      {
        v20 = v19;
      }
    }

    else
    {
      v18 = v5;
      v20 = 0;
    }

    v23 = [*(a1 + 48) objectForKeyedSubscript:v16];
    v24 = [*(a1 + 56) objectForKeyedSubscript:v16];
    PixelBufferFromPool = sbp_gvs_getPixelBufferFromPool(v23, v24, 0, v20, 0, 0, value);

    if (PixelBufferFromPool)
    {
      sbp_gvs_createStabilizedPixelBuffer_cold_3();
      return PixelBufferFromPool;
    }

    CMSetAttachment(v9, @"LowResolutionImageUsedByVideoEncoder", value[0], 0);
    if (value[0])
    {
      CFRelease(value[0]);
    }

    v5 = v18;
  }

  v25 = *(a1 + 172);
  v26 = *(a1 + 27408);
  if ((v25 - 1) >= 2)
  {
    if (v25 != 3 && v25)
    {
      PixelBufferFromPool = 4294954516;
    }

    else
    {
      v27 = *(a1 + 128);
      v28 = *(a1 + 132);
      value[0] = 0;
      value[1] = 0;
      v67.f64[0] = v27;
      v67.f64[1] = v28;
      if (*(a1 + 224))
      {
        v65 = *a3;
        ensureValidBufferRectIsCompatibleWithGPU(v27, v28, &v65);
        v29.i64[0] = v65.i32[0];
        v29.i64[1] = v65.i32[1];
        v30 = vcvtq_f64_s64(v29);
        v29.i64[0] = v65.i32[2];
        v29.i64[1] = v65.i32[3];
        *value = v30;
        v67 = vcvtq_f64_s64(v29);
      }

      if (*(a1 + 29612) && *(a1 + 29656) && *(a1 + 29675) == 1)
      {
        if (gGMFigKTraceEnabled == 1)
        {
          sbp_gvs_createStabilizedPixelBuffer_cold_5(sbuf, a1 + 29656, &v65);
        }

        if ([*(a1 + 29648) computeLTCsCorrection:*(a1 + 29664) forPTS:? shouldShutdown:? skipFrame:?])
        {
          sbp_gvs_createStabilizedPixelBuffer_cold_6();
        }

        if (gGMFigKTraceEnabled == 1)
        {
          kdebug_trace();
        }
      }

      else
      {
        v32 = *(a1 + 29680);
        v33 = __OFSUB__(v32, 1);
        v34 = v32 - 1;
        if (v34 < 0 == v33)
        {
          *(a1 + 29680) = v34;
        }
      }

      v35 = sbp_gvs_transformImageRender(a1, sbuf, v5, value, a1 + 128, v26, *(a1 + 29656));
      if (!v35)
      {
        Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (Mutable)
        {
          v37 = Mutable;
          v38 = kFigCaptureVideoSTFAnalyticsKey_VideoSTFLTMApplied;
          v39 = [NSNumber numberWithBool:*(a1 + 29676)];
          CFDictionarySetValue(v37, v38, v39);

          v40 = kFigCaptureVideoSTFAnalyticsKey_CancellationReason;
          v41 = [NSNumber numberWithInt:*(a1 + 29684)];
          CFDictionarySetValue(v37, v40, v41);

          v42 = kFigCaptureVideoSTFAnalyticsKey_AnalyticsVersion;
          v43 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(a1 + 29648) videoSTFAnalyticsVersion]);
          CFDictionarySetValue(v37, v42, v43);

          if (*(a1 + 29676) == 1)
          {
            v45 = [*(a1 + 29648) getAnalyticsData:*(a1 + 29664)];
            if (v45)
            {
              sbp_gvs_createStabilizedPixelBuffer_cold_8();
            }

            else
            {
              v46 = HIDWORD(v45);
              v47 = v44;
              v48 = kFigCaptureVideoSTFAnalyticsKey_MeanCorrectionLevel;
              v49 = [NSNumber numberWithInt:v46];
              CFDictionarySetValue(v37, v48, v49);

              v50 = kFigCaptureVideoSTFAnalyticsKey_MaxCorrectionLevel;
              LODWORD(v51) = v47;
              v52 = [NSNumber numberWithFloat:v51];
              CFDictionarySetValue(v37, v50, v52);
            }
          }

          CMSetAttachment(sbuf, kFigVideoStabilizationSampleBufferAttachmentKey_VideoSTFAnalytics, v37, 1u);
          CFRelease(v37);
        }

        else
        {
          sbp_gvs_createStabilizedPixelBuffer_cold_9();
        }

        goto LABEL_63;
      }

      PixelBufferFromPool = v35;
      sbp_gvs_createStabilizedPixelBuffer_cold_7();
    }

LABEL_67:
    fig_log_get_emitter();
    FigDebugAssert3();
    return PixelBufferFromPool;
  }

  v31 = sbp_gvs_transformImageRender(a1, sbuf, v5, 0, a1 + 128, *(a1 + 27408), 0);
  if (v31)
  {
    PixelBufferFromPool = v31;
    sbp_gvs_createStabilizedPixelBuffer_cold_4();
    goto LABEL_67;
  }

LABEL_63:
  if (*(v10 + 2628) == 1)
  {
    v53 = CVBufferCopyAttachments(v5, kCVAttachmentMode_ShouldPropagate);
    if (v53)
    {
      v54 = CFAutorelease(v53);
    }

    else
    {
      v54 = 0;
    }

    v55 = kCVImageBufferColorPrimariesKey;
    v56 = CFDictionaryGetValue(v54, kCVImageBufferColorPrimariesKey);
    v57 = kCVImageBufferTransferFunctionKey;
    v58 = CFDictionaryGetValue(v54, kCVImageBufferTransferFunctionKey);
    v59 = kCVImageBufferYCbCrMatrixKey;
    v60 = CFDictionaryGetValue(v54, kCVImageBufferYCbCrMatrixKey);
    CVBufferPropagateAttachments(v9, v5);
    CVBufferSetAttachment(v5, v55, v56, kCVAttachmentMode_ShouldPropagate);
    CVBufferSetAttachment(v5, v57, v58, kCVAttachmentMode_ShouldPropagate);
    CVBufferSetAttachment(v5, v59, v60, kCVAttachmentMode_ShouldPropagate);
  }

  return 0;
}

uint64_t _runSmartStyleReverseLearningAndComputeDeltaMap(uint64_t a1, CMSampleBufferRef sbuf, opaqueCMSampleBuffer *a3)
{
  memset(&timingArrayOut, 0, sizeof(timingArrayOut));
  v26 = 0;
  cf = 0;
  if (!a1)
  {
    _runSmartStyleReverseLearningAndComputeDeltaMap_cold_13();
LABEL_38:
    PixelBufferFromPool = 4294954516;
    goto LABEL_24;
  }

  if (!sbuf)
  {
    _runSmartStyleReverseLearningAndComputeDeltaMap_cold_12();
    goto LABEL_38;
  }

  if (!a3)
  {
    _runSmartStyleReverseLearningAndComputeDeltaMap_cold_11();
    goto LABEL_38;
  }

  if (gGMFigKTraceEnabled == 1)
  {
    _runSmartStyleReverseLearning_cold_1(sbuf);
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(sbuf);
  if (!ImageBuffer)
  {
    _runSmartStyleReverseLearningAndComputeDeltaMap_cold_10();
    goto LABEL_38;
  }

  v7 = ImageBuffer;
  v8 = CMSampleBufferGetImageBuffer(a3);
  if (!v8)
  {
    _runSmartStyleReverseLearningAndComputeDeltaMap_cold_9();
    goto LABEL_38;
  }

  v9 = v8;
  v10 = CMGetAttachment(v7, @"OutputSmartStyleUnstyledPixelBuffer", 0);
  if (!v10)
  {
    _runSmartStyleReverseLearningAndComputeDeltaMap_cold_8();
    goto LABEL_38;
  }

  v11 = v10;
  v12 = CMGetAttachment(v7, @"OutputSmartStyleDeltaMapPixelBuffer", 0);
  if (!v12)
  {
    _runSmartStyleReverseLearningAndComputeDeltaMap_cold_7();
    goto LABEL_38;
  }

  v13 = v12;
  if (*(a1 + 25))
  {
    v14 = *(a1 + 27148);
    v15 = v14 | 2;
    if (v14 == 2)
    {
      v16 = 66000;
    }

    else
    {
      v16 = 0;
    }

    if (v15 == 3)
    {
      v17 = 66000;
    }

    else
    {
      v17 = v16;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingReverseLearnedCoefficients;
  v19 = [*(a1 + 48) objectForKeyedSubscript:{kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingReverseLearnedCoefficients, v26}];
  v20 = [*(a1 + 56) objectForKeyedSubscript:v18];
  PixelBufferFromPool = sbp_gvs_getPixelBufferFromPool(v19, v20, 0, v17, 0, 0, &v26);

  if (PixelBufferFromPool)
  {
    _runSmartStyleReverseLearningAndComputeDeltaMap_cold_2();
  }

  else
  {
    v22 = [*(a1 + 30144) learnTransformFrom:v9 to:v11 outputCoefficients:v26 outputIntegratedCoefficients:0];
    if (v22)
    {
      PixelBufferFromPool = v22;
      _runSmartStyleReverseLearningAndComputeDeltaMap_cold_3();
    }

    else
    {
      SampleTimingInfoArray = CMSampleBufferGetSampleTimingInfoArray(a3, 1, &timingArrayOut, 0);
      if (SampleTimingInfoArray)
      {
        PixelBufferFromPool = SampleTimingInfoArray;
        _runSmartStyleReverseLearningAndComputeDeltaMap_cold_4();
      }

      else
      {
        v24 = sbp_internalCreateSampleBufferWithNewPixelBuffer(v26, *(a1 + 64), v18, &timingArrayOut, &cf);
        if (v24)
        {
          PixelBufferFromPool = v24;
          _runSmartStyleReverseLearningAndComputeDeltaMap_cold_5();
        }

        else
        {
          PixelBufferFromPool = [*(a1 + 30152) computeDeltaMapForSourcePixelBuffer:v11 targetPixelBuffer:v9 coefficients:v26 outputDeltaMapPixelBuffer:v13];
          if (PixelBufferFromPool)
          {
            _runSmartStyleReverseLearningAndComputeDeltaMap_cold_6();
          }

          else
          {
            _setAttachedMediaToSampleBuffer(a3, v18, cf);
            _setAttachedMediaToSampleBuffer(a3, kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingLearnedCoefficients, 0);
            _setAttachedMediaToSampleBuffer(a3, kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingStyledThumbnail, 0);
            _setAttachedMediaToSampleBuffer(a3, kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingUnstyledThumbnail, 0);
          }
        }
      }
    }
  }

LABEL_24:
  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  return PixelBufferFromPool;
}

uint64_t ensureValidBufferRectIsCompatibleWithGPU(uint64_t result, int a2, int32x4_t *a3)
{
  if (!a3)
  {
    return ensureValidBufferRectIsCompatibleWithGPU_cold_1();
  }

  v3 = *a3;
  if ((vmaxv_u16(vmovn_s32(vcgtq_s32(xmmword_43640, *a3))) & 1) != 0 || ((v4 = HIDWORD(*a3), v5 = v3.i32[3] + v3.i32[1], v3.i32[2] + v3.i32[0] >= 1) ? (v6 = v5 < 1) : (v6 = 1), !v6 ? (v7 = v3.i32[3] <= a2) : (v7 = 0), v7 ? (v8 = v3.i32[2] <= result) : (v8 = 0), v8 ? (v9 = v3.i32[2] + v3.i32[0] <= result) : (v9 = 0), v9 ? (v10 = v5 <= a2) : (v10 = 0), v10 ? (v11 = v3.i32[1] < a2) : (v11 = 0), v11 ? (v12 = v3.i32[0] < result) : (v12 = 0), !v12))
  {
    a3->i64[0] = 0;
    a3->i32[2] = result;
    a3->i32[3] = a2;
    return result;
  }

  if ((v3.i8[4] & 1) == 0)
  {
    if ((v3.i8[12] & 1) == 0)
    {
      return result;
    }

    goto LABEL_36;
  }

  v13 = a2 - 1;
  if (v3.i32[1] == a2 - 1)
  {
    v14 = v3.i32[1] - 1;
  }

  else
  {
    v14 = v3.i32[1] + 1;
  }

  if (v14 < a2)
  {
    v13 = v14;
  }

  a3->i32[1] = v13;
  v4 = v5 - v13;
  a3->i32[3] = v4;
  if (v4)
  {
LABEL_36:
    if (v4 <= 0)
    {
      v15 = 0;
    }

    else
    {
      v15 = v4 - 1;
    }

    a3->i32[3] = v15;
  }

  return result;
}

id sbp_gvs_transformImageRender(uint64_t a1, opaqueCMSampleBuffer *a2, __CVBuffer *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v13 = a7;
  v14 = COERCE_DOUBLE(vrev64_s32(*(a5 + 60)));
  v15 = *(a1 + 172);
  if ((v15 - 1) >= 3)
  {
    if (v15)
    {
      v18 = 0;
    }

    else
    {
      v18 = AffineTransformArrayApply(*(a1 + 88), a2, a3, a6, a4, v13, COERCE_DOUBLE(vrev64_s32(*(a5 + 52))), v14);
    }
  }

  else
  {
    v16 = *(a1 + 112);
    ImageBuffer = CMSampleBufferGetImageBuffer(a2);
    v18 = [v16 enqueuePixelBufferForRendering:ImageBuffer inputValidBufferRect:a4 metadata:CMGetAttachment(a2 ltmLUT:kFigCaptureSampleBufferAttachmentKey_MetadataDictionary outputPixelBuffer:0) transformCounts:v13 transforms3x3:a3 transformStrides:{a6, COERCE_DOUBLE(vrev64_s32(*(a5 + 52))), v14}];
  }

  return v18;
}

float invert3x3Matrix(uint64_t a1, float32x4_t *a2)
{
  v4 = 0;
  v5 = 1.0;
  v6 = 0;
  do
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = &v30;
    v11 = a1;
    do
    {
      for (i = 0; i != 3; ++i)
      {
        v10[i] = 0.0;
        if (v7 && v4 != i)
        {
          *(&v30 + 3 * v9 + v8) = *(v11 + 4 * i);
          if (v8 > 0)
          {
            ++v9;
          }

          v8 = v8 < 1;
        }
      }

      ++v7;
      v11 += 12;
      v10 += 3;
    }

    while (v7 != 3);
    *v6.i32 = *v6.i32 + (v5 * (*(a1 + 4 * v4) * ((v30 * v33) - (v31 * v32))));
    v5 = -v5;
    ++v4;
  }

  while (v4 != 3);
  if (*v6.i32 == 0.0)
  {

    puts("\nMATRIX IS NOT INVERSIBLE");
  }

  else
  {
    v27 = v6;
    for (j = 0; j != 3; ++j)
    {
      for (k = 0; k != 3; ++k)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = &v30;
        v20 = a1;
        do
        {
          for (m = 0; m != 3; ++m)
          {
            v19[m] = 0.0;
            if (v16 != j && k != m)
            {
              *(&v30 + 3 * v18 + v17) = *(v20 + 4 * m);
              if (v17 > 0)
              {
                ++v18;
              }

              v17 = v17 < 1;
            }
          }

          ++v16;
          v20 += 12;
          v19 += 3;
        }

        while (v16 != 3);
        v22 = powf(-1.0, (k + j));
        v23 = v22 * ((v30 * v33) - (v31 * v32));
        if (v23 == 0.0)
        {
          v23 = 0.0;
        }

        *&v28[3 * j + k] = v23;
      }
    }

    v24.i32[0] = v28[0];
    v25.i64[0] = __PAIR64__(v28[7], v28[4]);
    v24.i32[1] = *(v28 | 0xC);
    v24.i64[1] = __PAIR64__(v28[1], v28[6]);
    v26 = vdupq_lane_s32(v27, 0);
    v25.i64[1] = __PAIR64__(v28[5], v28[2]);
    *a2 = vdivq_f32(v24, v26);
    a2[1] = vdivq_f32(v25, v26);
    result = v29 / *v27.i32;
    a2[2].f32[0] = v29 / *v27.i32;
  }

  return result;
}

float64x2_t _computeProjectedPoints(float *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v10 = 0;
  v7 = 1;
  do
  {
    v8 = v7;
    GVSComputePerspectiveProjectedPoint(a1, &v10 + 1, &v10, *(a2 + 8 * v6), *(a2 + 8 * v6 + 4));
    v7 = 0;
    result = vcvtq_f64_f32(__PAIR64__(v10, HIDWORD(v10)));
    *(a3 + 16 * v6) = result;
    v6 = 1;
  }

  while ((v8 & 1) != 0);
  return result;
}

uint64_t sbp_gvs_iir_ComputeCorrection(uint64_t a1, uint64_t *a2, double *a3, uint64_t a4, float32x2_t *a5, BOOL *a6, float a7)
{
  FigMotionInterpolateQuaternionsByAngle(a2, a3, a7);
  v24[0] = v12;
  v24[1] = v13;
  v24[2] = v14;
  v24[3] = v15;
  v23[0] = FigMotionMultiplyByInverseOfQuaternion(v24, a2);
  v23[1] = v16;
  v23[2] = v17;
  v23[3] = v18;
  v19 = GVSComputeTransformFromCameraMotion(v23, (a1 + 336), a4, a5, 0, v25);
  if (v19)
  {
    v20 = v19;
    sbp_gvs_iir_ComputeCorrection_cold_1();
LABEL_7:
    v21 = 1;
    goto LABEL_4;
  }

  *(a1 + 196) = 1065353216;
  v20 = limitTransformToOverscan(a1 + 128, (a4 + 104), v25, *(a4 + 20));
  if (v20)
  {
    sbp_gvs_iir_ComputeCorrection_cold_2();
    goto LABEL_7;
  }

  v21 = *(a1 + 196) >= 1.0;
LABEL_4:
  *a6 = v21;
  return v20;
}

id _createNSArray(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  for (i = 0; i != 28; i += 4)
  {
    LODWORD(v3) = *(a1 + i);
    v5 = [NSNumber numberWithFloat:v3];
    [v2 addObject:v5];
  }

  return v2;
}

id OUTLINED_FUNCTION_22()
{

  return [v0 setObject:v1 forKeyedSubscript:?];
}

uint64_t OUTLINED_FUNCTION_24()
{

  return kdebug_trace();
}

Float64 OUTLINED_FUNCTION_32(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, __int128 a11, uint64_t a12)
{
  a9 = a11;
  a10 = a12;

  return CMTimeGetSeconds(&a9);
}

void OUTLINED_FUNCTION_33(int a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{

  _getPresentationTimeStampForSampleBuffer(a1, 0, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t OUTLINED_FUNCTION_42()
{

  return fig_log_get_emitter();
}

uint64_t OUTLINED_FUNCTION_43()
{

  return fig_log_get_emitter();
}

uint64_t GVSComputeTransforms(uint64_t a1, uint64_t a2, uint64_t __n, uint64_t a4, uint64_t a5, _OWORD *__src, float a7, float a8, float a9, double a10, int8x16_t a11)
{
  v11 = __src;
  v42 = __PAIR64__(LODWORD(a10), LODWORD(a9));
  v16 = *(a1 + 40);
  if (*(a1 + 74))
  {
    v17 = xmmword_43600;
    *__src = xmmword_43600;
    __src[1] = xmmword_43600;
    *(__src + 8) = 1065353216;
    v17.i32[0] = *(__n + 20);
    FigMotionApplyDigitalZoomToTransform(1, __src, v17, *a2, *(a2 + 8), a10, a11);
  }

  if (*(a1 + 60) < 1)
  {
    GVSApplyTransformLimit(a1, (__n + 104), v16 < 3, v11, *(__n + 20));
  }

  else
  {
    v18 = *(a1 + 52);
    if (v18 > 0)
    {
      v37 = a2;
      v19 = 0;
      v20 = *(a1 + 12);
      v21 = v20 + *(a1 + 20) - 1;
      v22 = v11;
      v23 = v20;
      do
      {
        if (*(a1 + 74))
        {
          if (v19)
          {
            v24 = *v11;
            v25 = v11[1];
            *(v22 + 32) = *(v11 + 8);
            *v22 = v24;
            *(v22 + 16) = v25;
          }
        }

        else
        {
          if (v23 >= v21)
          {
            v23 = v21;
          }

          v41 = __PAIR64__(LODWORD(a8), LODWORD(a7));
          if (a5)
          {
            v41 = vadd_f32(__PAIR64__(LODWORD(a8), LODWORD(a7)), *(a5 + 8 * v19));
          }

          v26 = ((*(a1 + 48) - 1) * (v23 - v20)) / (*(a1 + 20) + -1.0);
          v27 = a4 + 32 * vcvtms_s32_f32(v26);
          FigMotionInterpolateQuaternionsByAngle(v27, (v27 + 32), v26 - floorf(v26));
          v43[0] = v28;
          v43[1] = v29;
          v43[2] = v30;
          v43[3] = v31;
          GVSComputeTransformFromCameraMotion(v43, v37, __n, &v41, &v42, v22);
        }

        GVSApplyTransformLimit(a1, (__n + 104), v16 < 3, v22, *(__n + 20));
        ++v19;
        v23 += *(a1 + 60);
        v18 = *(a1 + 52);
        v22 += 36;
      }

      while (v19 < v18);
    }

    if (*(a1 + 56) >= 2)
    {
      v32 = 36 * v18;
      v33 = 1;
      do
      {
        memcpy(v11 + 36 * *(a1 + 52) * v33++, v11, v32);
      }

      while (v33 < *(a1 + 56));
    }
  }

  if (*(a1 + 75) && *(a1 + 56) * *(a1 + 52) >= 1)
  {
    v34 = 0;
    v35 = (*(a1 + 16) + 2 * *(a1 + 8));
    do
    {
      FigMotionPostMultiplyScalingTranslationToTransform(v11, -1.0, v35, 1.0, 0.0);
      ++v34;
      v11 = (v11 + 36);
    }

    while (v34 < *(a1 + 56) * *(a1 + 52));
  }

  return 0;
}

float GVSApplyTransformLimit(uint64_t a1, double *a2, int a3, uint64_t a4, float result)
{
  v6 = *(a1 + 24);
  v5 = *(a1 + 28);
  v8 = *(a1 + 32);
  v7 = *(a1 + 36);
  if (a3)
  {
    *(a4 + 24) = 0;
    *(a4 + 32) = 1065353216;
  }

  if (*(a1 + 40) == 4)
  {
    *a4 = 1065353216;
    *(a4 + 12) = 0x3F80000000000000;
    *(a4 + 24) = 0;
    *(a4 + 32) = 1065353216;
  }

  if (*(a1 + 72) && *(a1 + 68) < 1.0)
  {
    v9 = *a2 + (a2[2] + -1.0) * 0.5;
    if (result <= 0.0)
    {
      v10 = 1.0;
    }

    else
    {
      v10 = 1.0 / result;
    }

    v13 = a2[1] + (a2[3] + -1.0) * 0.5;
    v14 = v5 + (v7 + -1.0) * 0.5;
    if (a3)
    {
      *(a4 + 24) = 0;
      *(a4 + 32) = 1065353216;
    }

    v15 = 0;
    v11 = v9;
    v12 = v6 + (v8 + -1.0) * 0.5;
    v16 = v11 - (v10 * v12);
    do
    {
      *(a4 + v15) = *(a1 + 68) * *(a4 + v15);
      v15 += 4;
    }

    while (v15 != 36);
    *a4 = *a4 + ((1.0 - *(a1 + 68)) * v10);
    *(a4 + 8) = *(a4 + 8) + ((1.0 - *(a1 + 68)) * v16);
    v17 = *(a4 + 20);
    *(a4 + 16) = *(a4 + 16) + ((1.0 - *(a1 + 68)) * v10);
    *(a4 + 20) = v17 + ((1.0 - *(a1 + 68)) * (v13 - (v10 * v14)));
    result = *(a4 + 32) + (1.0 - *(a1 + 68));
    *(a4 + 32) = result;
  }

  return result;
}

uint64_t GVSComputeTransformFromCameraMotion(double *a1, float64x2_t *a2, uint64_t a3, float32x2_t *a4, float32x2_t *a5, float *a6)
{
  v8 = 0uLL;
  v9 = 0uLL;
  if (a4)
  {
    v9 = vcvtq_f64_f32(*a4);
  }

  v10 = *(a3 + 4);
  v11 = *a2;
  if (a5)
  {
    v8 = vcvtq_f64_f32(*a5);
  }

  v20 = v10;
  v21 = vaddq_f64(v11, v9);
  v18 = v10;
  v19 = vsubq_f64(v11, v8);
  v16 = v11;
  GVSInverseRotationMatrixFromQuaternion(a1, v17);
  *v12.i64 = FigMotionComputeTransformFromRotation(&v20, &v18, v17, a6);
  v12.i32[0] = *(a3 + 20);
  FigMotionApplyDigitalZoomToTransform(1, a6, v12, v16, *&v16.i64[1], v13, v14);
  return 0;
}

float GVSInverseRotationMatrixFromQuaternion(double *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = v2 + v2;
  v5 = a1[2];
  v6 = a1[3];
  v7 = v5 + v5;
  v8 = v6 + v6;
  *&v2 = v2;
  *&v5 = v5;
  *&v6 = v6;
  *&v6 = *&v6 * v8;
  v9 = 1.0 - (*&v2 * v4);
  v10 = (1.0 - (*&v5 * v7)) - *&v6;
  *(a2 + 32) = v9 - (*&v5 * v7);
  *&v5 = *&v5 * v8;
  *&v3 = v3;
  v11 = v4 * *&v3;
  *(a2 + 16) = v9 - *&v6;
  *(a2 + 20) = *&v5 - v11;
  *&v6 = (*&v2 * v7) + (v8 * *&v3);
  *a2 = v10;
  *(a2 + 4) = (*&v2 * v7) - (v8 * *&v3);
  *&v2 = *&v2 * v8;
  *&v3 = v7 * *&v3;
  *(a2 + 8) = *&v2 + *&v3;
  *(a2 + 12) = LODWORD(v6);
  result = *&v2 - *&v3;
  *(a2 + 24) = result;
  *(a2 + 28) = *&v5 + v11;
  return result;
}

uint64_t GVSComputeTranslationFromCameraMotion(double *a1, float32x2_t *a2, float a3)
{
  GVSInverseRotationMatrixFromQuaternion(a1, v6);
  if (fabsf(v9) <= 0.00000001)
  {
    GVSComputeTranslationFromCameraMotion_cold_1();
    return 4294967291;
  }

  else
  {
    result = 0;
    *a2 = vmul_n_f32(__PAIR64__(v8, v7), a3 / v9);
  }

  return result;
}

float GVSComputePerspectiveProjectedPoint(float *a1, float *a2, float *a3, float a4, float a5)
{
  v5 = (a1[8] + (a1[7] * a5)) + (a1[6] * a4);
  if (fabsf(v5) > 0.00000001)
  {
    v5 = 1.0 / v5;
  }

  *a2 = ((a1[2] + (a1[1] * a5)) + (*a1 * a4)) * v5;
  result = v5 * ((a1[5] + (a1[4] * a5)) + (a1[3] * a4));
  *a3 = result;
  return result;
}

float32_t GVSComputeMinimumZoomFactor(float64x2_t *a1, int32x2_t *a2)
{
  __asm { FMOV            V1.2S, #-1.0 }

  v7 = vdiv_f32(vadd_f32(vcvt_f32_s32(a2[1]), _D1), vadd_f32(vadd_f32(vcvt_f32_f64(*a1), _D1), vdup_n_s32(0xBF804189)));
  if (v7.f32[0] <= v7.f32[1])
  {
    v7.f32[0] = v7.f32[1];
  }

  return v7.f32[0];
}

uint64_t GVSFindBestPerspectiveTransform(float *a1, double *a2, int *a3, float *a4, float a5)
{
  v6 = 0;
  v7 = *a3;
  v8 = a3[1];
  v9 = a3[2];
  v10 = a3[3];
  if (a5 <= 0.0)
  {
    v11 = 1.0;
  }

  else
  {
    v11 = 1.0 / a5;
  }

  v12 = *a2;
  v13 = a2[2];
  v14 = a2[1];
  v15 = a2[3];
  v16 = v7 + (v9 + -1.0) * 0.5;
  v17 = (v12 + ((v13 + -1.0) * 0.5)) - (v11 * v16);
  v18 = v8 + (v10 + -1.0) * 0.5;
  v19 = (v14 + ((v15 + -1.0) * 0.5)) - (v11 * v18);
  v66 = v7;
  v67 = v8;
  v68 = (v7 + v9 - 1);
  v69 = v8;
  v70 = v7;
  v71 = (v8 + v10 - 1);
  v72 = v68;
  v73 = v71;
  v20 = (v14 + v15) + -1.0;
  v21 = a1[6];
  v22 = a1[7];
  v23 = a1[8];
  v24 = a1[1];
  v25 = a1[2];
  v26 = a1[3];
  v27 = a1[4];
  v28 = a1[5];
  v29 = v12 + 0.5;
  v30 = v14 + 0.5;
  v65 = (v12 + v13) + -1.0;
  v31 = v65 + -0.5;
  v32 = *a1 - v11;
  v33 = v23 + -1.0;
  v34 = v20 + -0.5;
  v35 = v27 - v11;
  v36 = 3.4028e38;
  do
  {
    v38 = *(&v66 + v6);
    v37 = *(&v66 + v6 + 4);
    v39 = (v23 + (v22 * v37)) + (v21 * v38);
    if (fabsf(v39) <= 0.00000001)
    {
      v40 = (v23 + (v22 * v37)) + (v21 * v38);
    }

    else
    {
      v40 = 1.0 / v39;
    }

    v41 = ((v25 + (v24 * v37)) + (*a1 * v38)) * v40;
    if (v41 < v29)
    {
      v42 = ((v25 + ((v37 * v24) + (v32 * v38))) - v17) - ((((v37 * v22) + (v21 * v38)) + v33) * v29);
      v43 = -1.0;
      if (fabsf(v42) < 0.00000001)
      {
        goto LABEL_15;
      }

      v44 = v29 - (v38 * v11);
      goto LABEL_14;
    }

    v43 = 1.0;
    if (v41 > v31)
    {
      v42 = ((v25 + ((v37 * v24) + (v32 * v38))) - v17) - ((((v37 * v22) + (v21 * v38)) + v33) * v31);
      v43 = -1.0;
      if (fabsf(v42) >= 0.00000001)
      {
        v44 = v31 - (v38 * v11);
LABEL_14:
        v43 = (v44 - v17) / v42;
      }
    }

LABEL_15:
    v45 = v40 * ((v28 + (v27 * v37)) + (v26 * v38));
    if (v45 >= v30)
    {
      v47 = 1.0;
      if (v45 <= v34)
      {
        goto LABEL_22;
      }

      v46 = ((v28 + ((v37 * v35) + (v26 * v38))) - v19) - ((((v37 * v22) + (v21 * v38)) + v33) * v34);
      v47 = -2.0;
      if (fabsf(v46) < 0.00000001)
      {
        goto LABEL_22;
      }

      v48 = v34 - (v37 * v11);
    }

    else
    {
      v46 = ((v28 + ((v37 * v35) + (v26 * v38))) - v19) - ((((v37 * v22) + (v21 * v38)) + v33) * v30);
      v47 = -2.0;
      if (fabsf(v46) < 0.00000001)
      {
        goto LABEL_22;
      }

      v48 = v30 - (v37 * v11);
    }

    v47 = (v48 - v19) / v46;
LABEL_22:
    if (v43 >= v47)
    {
      v49 = v47;
    }

    else
    {
      v49 = v43;
    }

    if (v36 >= v49)
    {
      v36 = v49;
    }

    v6 += 8;
  }

  while (v6 != 32);
  if (v36 >= 0.0 && v36 <= 1.0)
  {
    if (a4)
    {
      *a4 = v36;
    }

    if (v36 < 1.0)
    {
      for (i = 0; i != 9; ++i)
      {
        a1[i] = v36 * a1[i];
      }

      v53 = 0;
      *a1 = *a1 + ((1.0 - v36) * v11);
      a1[2] = a1[2] + ((1.0 - v36) * v17);
      v54 = a1[5] + ((1.0 - v36) * v19);
      a1[4] = a1[4] + ((1.0 - v36) * v11);
      a1[5] = v54;
      a1[8] = (1.0 - v36) + a1[8];
      v55 = &v67;
      do
      {
        v56 = *(v55 - 1);
        v57 = *v55;
        v58 = (a1[8] + (a1[7] * *v55)) + (a1[6] * v56);
        if (fabsf(v58) <= 0.00000001)
        {
          v59 = (a1[8] + (a1[7] * *v55)) + (a1[6] * v56);
        }

        else
        {
          v59 = 1.0 / v58;
        }

        v60 = ((a1[2] + (a1[1] * v57)) + (*a1 * v56)) * v59;
        v61 = v59 * ((a1[5] + (a1[4] * v57)) + (a1[3] * v56));
        if (v60 < v12 || v60 > v65 || v61 < v14 || v61 > v20)
        {
          fprintf(__stderrp, "Warning! Corner[%d] =(%f ; %f) is still outside of boundary: output position =(%f ; %f)\n", v53, v56, v57, v60, v61);
        }

        ++v53;
        v55 += 2;
      }

      while (v53 != 4);
    }

    return 0;
  }

  else
  {
    fprintf(__stderrp, "Error in LimitPerspectiveTransform, minLimitFactor %f\n", v36);
    return 0xFFFFFFFFLL;
  }
}

float32x2_t GVSRotateVectorByQuaternion(float *a1, uint64_t a2)
{
  v2.f64[0] = *(a2 + 24);
  v2.f64[1] = *a2;
  v3 = *(a2 + 8);
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = vnegq_f64(v3);
  v8 = vmulq_f64(v2, xmmword_43790);
  v9 = vextq_s8(v8, vnegq_f64(v8), 8uLL);
  v10 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v8, v5), v9, v4), vextq_s8(v3, v7, 8uLL), v6);
  v11 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v3, v5), vextq_s8(v7, v3, 8uLL), v4), v9, v6);
  return vcvt_f32_f64(vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v10, *a2), vextq_s8(vnegq_f64(v10), v10, 8uLL), *(a2 + 24)), vmlaq_n_f64(vmulq_n_f64(v11, v3.f64[1]), vextq_s8(v11, vnegq_f64(v11), 8uLL), v3.f64[0])));
}

double GVSInterpolateQuaternionsLERP(uint64_t a1, uint64_t a2, int a3, char *a4, float a5)
{
  v27 = 1.0 - a5;
  v28 = a5;
  v10 = FigMotionQuaternionDotProduct(a1, a2);
  v11 = *a1;
  v12 = *a2;
  if (v10 >= 0.0)
  {
    v13 = v12 * v28 + v11 * v27;
    v14 = vmlaq_n_f64(vmulq_n_f64(*(a2 + 8), v28), *(a1 + 8), v27);
    v15 = *(a1 + 24);
    v16 = *(a2 + 24) * v28;
  }

  else
  {
    v13 = v11 * v27 - v12 * v28;
    v14 = vmlaq_n_f64(vmulq_n_f64(vnegq_f64(*(a2 + 8)), v28), *(a1 + 8), v27);
    v15 = *(a1 + 24);
    v16 = -(*(a2 + 24) * v28);
  }

  *v31 = v13;
  *&v31[8] = v14;
  *&v31[24] = v16 + v15 * v27;
  v17 = FigMotionQuaternionDotProduct(v31, v31);
  if (!a3 && v17 >= 0.5)
  {
    v18 = 0;
    if (!a4)
    {
      return *v31;
    }

    goto LABEL_12;
  }

  if (v17 >= 0.04)
  {
    v25 = 1.0 / sqrt(v17);
    *v31 = vmulq_n_f64(*v31, v25);
    *&v31[16] = vmulq_n_f64(*&v31[16], v25);
  }

  else
  {
    v19 = *(a1 + 16);
    v30[0] = *a1;
    v30[1] = v19;
    v20 = *(a2 + 16);
    v29[0] = *a2;
    v29[1] = v20;
    FigMotionNormalizeQuaternion(v30);
    FigMotionNormalizeQuaternion(v29);
    FigMotionInterpolateQuaternionsByAngle(v30, v29[0].f64, a5);
    *v31 = v21;
    *&v31[8] = v22;
    *&v31[16] = v23;
    *&v31[24] = v24;
  }

  v18 = 1;
  if (a4)
  {
LABEL_12:
    *a4 = v18;
  }

  return *v31;
}

double GVSInterpolateQuatfNLERP(float32x4_t a1, float32x4_t a2, float a3)
{
  v3 = vmulq_f32(a1, a2);
  v4 = vextq_s8(v3, v3, 8uLL);
  *v3.f32 = vadd_f32(*v3.f32, *v4.f32);
  v3.f32[0] = vaddv_f32(*v3.f32);
  v4.i64[0] = 0;
  v5 = vmlaq_n_f32(a1, vsubq_f32(vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v4, v3), 0), vnegq_f32(a2), a2), a1), a3);
  v6 = vmulq_f32(v5, v5);
  v7 = vadd_f32(*v6.i8, *&vextq_s8(v6, v6, 8uLL));
  if (vaddv_f32(v7) == 0.0)
  {
    return *&_PromotedConst_0;
  }

  v9 = vadd_f32(v7, vdup_lane_s32(v7, 1)).u32[0];
  v10 = vrsqrte_f32(v9);
  v11 = vmul_f32(v10, vrsqrts_f32(v9, vmul_f32(v10, v10)));
  *&result = vmulq_n_f32(v5, vmul_f32(v11, vrsqrts_f32(v9, vmul_f32(v11, v11))).f32[0]).u64[0];
  return result;
}

double GVSQuatfFromDeltaRotation(float32x4_t a1, double a2)
{
  v3 = vmulq_f32(a1, a1);
  *&a2 = sqrtf(v3.f32[2] + vaddv_f32(*v3.f32));
  if (*&a2 <= 0.0001)
  {
    v5.i64[0] = 0x3F0000003F000000;
    v5.i64[1] = 0x3F0000003F000000;
    *&result = vmulq_f32(a1, v5).u64[0];
  }

  else
  {
    *&result = vdivq_f32(vmulq_n_f32(a1, __sincosf_stret(*&a2 * 0.5).__sinval), vdupq_lane_s32(*&a2, 0)).u64[0];
  }

  return result;
}

double GVSInterpolateQuatfLERP(BOOL *a1, float32x4_t a2, float32x4_t a3, float a4)
{
  v6 = vmulq_f32(a2, a3);
  v7 = vextq_s8(v6, v6, 8uLL);
  *v6.f32 = vadd_f32(*v6.f32, *v7.f32);
  v6.f32[0] = vaddv_f32(*v6.f32);
  v7.i64[0] = 0;
  v8 = vmlaq_n_f32(a2, vsubq_f32(vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v7, v6), 0), vnegq_f32(a3), a3), a2), a4);
  v9 = vmulq_f32(v8, v8);
  v10 = vadd_f32(*v9.i8, *&vextq_s8(v9, v9, 8uLL));
  v11 = vaddv_f32(v10);
  if (v11 < 0.5)
  {
    if (v11 < 0.04)
    {
      v12 = vmulq_f32(a2, a2);
      v13 = vadd_f32(*v12.i8, *&vextq_s8(v12, v12, 8uLL));
      v14 = xmmword_433D0;
      v15 = xmmword_433D0;
      if (vaddv_f32(v13) != 0.0)
      {
        v16 = vadd_f32(v13, vdup_lane_s32(v13, 1)).u32[0];
        v17 = vrsqrte_f32(v16);
        v18 = vmul_f32(v17, vrsqrts_f32(v16, vmul_f32(v17, v17)));
        v15 = vmulq_n_f32(a2, vmul_f32(v18, vrsqrts_f32(v16, vmul_f32(v18, v18))).f32[0]);
      }

      v19 = vmulq_f32(a3, a3);
      v20 = vadd_f32(*v19.i8, *&vextq_s8(v19, v19, 8uLL));
      if (vaddv_f32(v20) != 0.0)
      {
        v21 = vadd_f32(v20, vdup_lane_s32(v20, 1)).u32[0];
        v22 = vrsqrte_f32(v21);
        v23 = vmul_f32(v22, vrsqrts_f32(v21, vmul_f32(v22, v22)));
        v14 = vmulq_n_f32(a3, vmul_f32(v23, vrsqrts_f32(v21, vmul_f32(v23, v23))).f32[0]);
      }

      v24 = vmulq_f32(v15, v14);
      v25 = vextq_s8(v24, v24, 8uLL);
      *v24.f32 = vadd_f32(*v24.f32, *v25.f32);
      v24.f32[0] = vaddv_f32(*v24.f32);
      v25.i64[0] = 0;
      v26 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v24, v25)), 0), vnegq_f32(v14), v14);
      v27 = 1.0;
      v59 = v15;
      v60 = a4;
      v28 = 1.0 - a4;
      v29 = vsubq_f32(v15, v26);
      v30 = vmulq_f32(v29, v29);
      v58 = v26;
      v31 = vaddq_f32(v15, v26);
      v32 = vmulq_f32(v31, v31);
      v33 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v30.i8, *&vextq_s8(v30, v30, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v32.i8, *&vextq_s8(v32, v32, 8uLL)))));
      v34 = v33 + v33;
      v35 = (v33 + v33) == 0.0;
      v36 = 1.0;
      if (!v35)
      {
        v36 = sinf(v34) / v34;
      }

      v37 = v36;
      v38 = vrecpe_f32(LODWORD(v36));
      v39 = vmul_f32(v38, vrecps_f32(LODWORD(v37), v38));
      LODWORD(v40) = vmul_f32(v39, vrecps_f32(LODWORD(v37), v39)).u32[0];
      if ((v28 * v34) != 0.0)
      {
        v56 = v40;
        v39.f32[0] = sinf(v28 * v34);
        v40 = v56;
        v27 = v39.f32[0] / (v28 * v34);
      }

      v39.f32[0] = v28 * (v40 * v27);
      v41 = vdupq_lane_s32(v39, 0);
      v42 = v60;
      v43 = v34 * v60;
      v44 = 1.0;
      if (v43 != 0.0)
      {
        v55 = v41;
        v57 = v40;
        v45 = sinf(v43);
        v41 = v55;
        v40 = v57;
        v42 = v60;
        v44 = v45 / v43;
      }

      v46 = vmlaq_f32(vmulq_n_f32(v58, (v40 * v44) * v42), v59, v41);
      v47 = vmulq_f32(v46, v46);
      v48 = vadd_f32(*v47.i8, *&vextq_s8(v47, v47, 8uLL));
      if (vaddv_f32(v48) == 0.0)
      {
        v8.i64[0] = 0;
        if (!a1)
        {
          return *v8.i64;
        }
      }

      else
      {
        v52 = vadd_f32(v48, vdup_lane_s32(v48, 1)).u32[0];
        v53 = vrsqrte_f32(v52);
        v54 = vmul_f32(v53, vrsqrts_f32(v52, vmul_f32(v53, v53)));
        v8.i64[0] = vmulq_n_f32(v46, vmul_f32(v54, vrsqrts_f32(v52, vmul_f32(v54, v54))).f32[0]).u64[0];
        if (!a1)
        {
          return *v8.i64;
        }
      }

      goto LABEL_18;
    }

    v49 = vadd_f32(v10, vdup_lane_s32(v10, 1)).u32[0];
    v50 = vrsqrte_f32(v49);
    v8.i64[0] = vmulq_n_f32(v8, vmul_f32(v50, vrsqrts_f32(v49, vmul_f32(v50, v50))).f32[0]).u64[0];
  }

  if (a1)
  {
LABEL_18:
    *a1 = v11 < 0.5;
  }

  return *v8.i64;
}

double GVSGetDefaultExtrinsicToIMU(int a1)
{
  result = 0.707106781;
  if (!a1)
  {
    return 0.0;
  }

  return result;
}

uint64_t GVSQuaternionFromRotationMatrix(uint64_t a1, double *a2, int64x2_t a3, __n128 a4, double a5, double a6, int64x2_t a7, double a8, float64x2_t a9)
{
  if (!a1 || !a2)
  {
    GVSQuaternionFromRotationMatrix_cold_2(v50);
    return LODWORD(v50[0]);
  }

  v9 = 0;
  v10 = *a1;
  a3.i64[0] = *(a1 + 16);
  v11 = *(a1 + 24);
  a7.i64[0] = *(a1 + 40);
  a4.n128_u64[0] = *(a1 + 48);
  v12 = *(a1 + 56);
  a9.f64[0] = *(a1 + 64);
  v13 = vzip2q_s64(*a1, v11);
  *&v14.f64[0] = a4.n128_u64[0];
  *&v14.f64[1] = v12;
  v50[0] = vzip1q_s64(*a1, v11);
  v50[1] = a4;
  v50[2] = v13;
  v50[3] = vdupq_lane_s64(v12, 0);
  v50[4] = vzip1q_s64(a3, a7);
  v50[5] = a9;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  do
  {
    v16 = v50[v9];
    v15 = v50[v9 + 1];
    v17 = (&v51 + v9 * 16);
    *v17 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v10, v16.f64[0]), v11, v16, 1), v14, *&v15);
    v17[1] = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(a3, v16.f64[0]), a7, v16, 1), a9, *&v15);
    v9 += 2;
  }

  while (v9 != 6);
  v18 = *&matrix_identity_double3x3.columns[0].f64[2];
  v19 = vabdq_f64(v52, v18);
  v18.f64[0] = 0.000001;
  v20 = vdupq_n_s64(0x3EB0C6F7A0B5ED8DuLL);
  v21 = vandq_s8(vandq_s8(vcgeq_f64(v20, vabdq_f64(v53, *matrix_identity_double3x3.columns[1].f64)), vcgeq_f64(v20, vabdq_f64(v51, *matrix_identity_double3x3.columns[0].f64))), vcgeq_f64(v20, vabdq_f64(v55, *matrix_identity_double3x3.columns[2].f64)));
  if ((v21.i64[0] & v21.i64[1] & vandq_s8(vandq_s8(vcgeq_f64(v18, vabdq_f64(v54, *&matrix_identity_double3x3.columns[1].f64[2])), vcgeq_f64(v18, v19)), vcgeq_f64(v18, vabdq_f64(v56, *&matrix_identity_double3x3.columns[2].f64[2]))).u64[0] & 0x8000000000000000) == 0)
  {
    GVSQuaternionFromRotationMatrix_cold_1(v50);
    return LODWORD(v50[0]);
  }

  v22 = v10.f64[0] + v11.f64[1] + a9.f64[0];
  if (v22 >= 0.0)
  {
    v30 = sqrt(v22 + 1.0);
    v31 = v30 + v30;
    v32 = 1.0 / (v30 + v30);
    v26 = (*a7.i64 - *&v12) * v32;
    v27 = (a4.n128_f64[0] - *a3.i64) * v32;
    v28 = v32 * vsubq_f64(vdupq_laneq_s64(v10, 1), v11).f64[0];
    v29 = v31 * 0.25;
  }

  else if (v10.f64[0] < v11.f64[1] || v10.f64[0] < a9.f64[0])
  {
    v33 = 1.0 - v10.f64[0];
    v34 = v11.f64[1] < a9.f64[0];
    v35 = sqrt(1.0 - v10.f64[0] - v11.f64[1] + a9.f64[0]);
    v36 = v35 + v35;
    v37 = 1.0 / v36;
    v38 = (*a3.i64 + a4.n128_f64[0]) * (1.0 / v36);
    v39 = *a7.i64 + *&v12;
    v40 = v39 * (1.0 / v36);
    v41 = vdupq_laneq_s64(v10, 1);
    v42 = v36 * 0.25;
    v43 = v37 * vsubq_f64(v41, v11).f64[0];
    v44 = sqrt(v11.f64[1] + v33 - a9.f64[0]);
    v45 = v44 + v44;
    v46 = 1.0 / v45 * vaddq_f64(v41, v11).f64[0];
    v47 = v45 * 0.25;
    v48 = v39 * (1.0 / v45);
    v29 = (a4.n128_f64[0] - *a3.i64) * (1.0 / v45);
    if (v34)
    {
      v26 = v38;
    }

    else
    {
      v26 = v46;
    }

    if (v34)
    {
      v27 = v40;
    }

    else
    {
      v27 = v47;
    }

    if (v34)
    {
      v28 = v42;
    }

    else
    {
      v28 = v48;
    }

    if (v34)
    {
      v29 = v43;
    }
  }

  else
  {
    v23 = sqrt(v10.f64[0] + 1.0 - v11.f64[1] - a9.f64[0]);
    v24 = v23 + v23;
    v25 = 1.0 / v24;
    v26 = v24 * 0.25;
    v27 = v25 * vaddq_f64(vdupq_laneq_s64(v10, 1), v11).f64[0];
    v28 = (*a3.i64 + a4.n128_f64[0]) * v25;
    v29 = (*a7.i64 - *&v12) * v25;
  }

  result = 0;
  a2[2] = v27;
  a2[3] = v28;
  *a2 = v29;
  a2[1] = v26;
  return result;
}

void GVSComputeRollPitchFromGravity(float *a1)
{
  if (a1)
  {
    v1 = *a1;
    v2 = a1[1];
    v3 = a1[2];
    v4 = sqrtf(((v2 * v2) + (v1 * v1)) + (v3 * v3));
    if (v4 > 0.99 && asinf(fabsf(v3 / v4)) < 1.5533)
    {
      atan2f(v1, v2);
    }
  }
}

uint64_t GVSExtractMetadataFromTopToBottomRows(const __CFDictionary *a1, int *a2, void *a3, uint64_t a4, uint64_t a5, int32x2_t *a6, uint64_t a7, double *a8, uint64_t a9, float32x2_t *a10, float32x2_t *a11, uint64_t a12, int a13)
{
  v19 = a3;
  v196 = v19;
  if (!a6)
  {
    GVSExtractMetadataFromTopToBottomRows_cold_22(&buffer);
    goto LABEL_217;
  }

  v209 = a2;
  if (!a2)
  {
    GVSExtractMetadataFromTopToBottomRows_cold_21(&buffer);
    goto LABEL_217;
  }

  if (!a1)
  {
    GVSExtractMetadataFromTopToBottomRows_cold_20(&buffer);
    goto LABEL_217;
  }

  if (!a7)
  {
    GVSExtractMetadataFromTopToBottomRows_cold_19(&buffer);
    goto LABEL_217;
  }

  v200 = a2 + 2048;
  v20 = v19;
  valuePtr = 0;
  v223 = 0;
  v222 = 0;
  v221 = 0;
  *a7 = 0u;
  *(a7 + 16) = 0u;
  *(a7 + 32) = 0u;
  *(a7 + 48) = 0u;
  *(a7 + 64) = 0u;
  *(a7 + 80) = 0u;
  *(a7 + 96) = 0u;
  *(a7 + 112) = 0u;
  *(a7 + 128) = 0u;
  *(a7 + 88) = 0;
  *(a7 + 96) = 0;
  size = CGRectZero.size;
  origin = CGRectZero.origin;
  buffer.origin = CGRectZero.origin;
  buffer.size = size;
  if (FigCFDictionaryGetCGRectIfPresent())
  {
    v21 = llround(buffer.origin.y);
    *(a7 + 88) = llround(buffer.origin.x);
    *(a7 + 92) = v21;
    v22 = llround(buffer.size.height);
    *(a7 + 96) = llround(buffer.size.width);
    *(a7 + 100) = v22;
  }

  *(a7 + 104) = origin;
  *(a7 + 120) = size;
  FigCFDictionaryGetCGRectIfPresent();
  *(a7 + 20) = 1065353216;
  FigCFDictionaryGetFloatIfPresent();
  v195 = (a7 + 20);
  *(a7 + 12) = CFDictionaryContainsKey(a1, kFigCaptureStreamMetadata_SphereMode);
  Value = CFDictionaryGetValue(a1, kFigCaptureStreamMetadata_CurrentFocusPosition);
  theDict = a1;
  v205 = a7;
  v215 = a4;
  v198 = a5;
  v201 = v20;
  if (!Value)
  {
    GVSExtractMetadataFromTopToBottomRows_cold_8(&buffer);
LABEL_212:
    x_low = LODWORD(buffer.origin.x);
LABEL_213:

    if (!x_low)
    {
      goto LABEL_72;
    }

LABEL_209:
    GVSExtractMetadataFromTopToBottomRows_cold_10();
    goto LABEL_194;
  }

  CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
  *a7 = valuePtr;
  FigCFDictionaryGetFloatIfPresent();
  v24 = CFDictionaryGetValue(a1, kFigCaptureStreamMetadata_ExposureTime);
  if (!v24)
  {
    GVSExtractMetadataFromTopToBottomRows_cold_7(&buffer);
    goto LABEL_212;
  }

  CFNumberGetValue(v24, kCFNumberFloat64Type, &v223);
  *(a7 + 48) = v223;
  v25 = CFDictionaryGetValue(a1, kFigCaptureStreamMetadata_FrameRollingShutterSkew);
  if (!v25)
  {
    v25 = CFDictionaryGetValue(a1, kFigCaptureStreamMetadata_RollingShutterSkew);
    if (!v25)
    {
      GVSExtractMetadataFromTopToBottomRows_cold_6(&buffer);
      goto LABEL_212;
    }
  }

  CFNumberGetValue(v25, kCFNumberSInt32Type, &v222);
  *(a7 + 56) = v222 / 1000000.0;
  v26 = CFDictionaryGetValue(a1, kFigMotionAttachmentsSampleBufferProcessorMetadata_FramePTSSeconds);
  if (!v26)
  {
    GVSExtractMetadataFromTopToBottomRows_cold_5(&buffer);
LABEL_206:
    x_low = LODWORD(buffer.origin.x);
    goto LABEL_213;
  }

  CFNumberGetValue(v26, kCFNumberDoubleType, &v221);
  *(a7 + 32) = v221;
  v27 = &kFigMotionAttachmentsSampleBufferProcessorMetadata_MotionData;
  if (*(a2 + 10260))
  {
    v27 = &kFigMotionAttachmentsSampleBufferProcessorMetadata_MotionAttachmentsISPMotionData;
  }

  v28 = CFDictionaryGetValue(a1, *v27);
  if (!v28)
  {
    GVSExtractMetadataFromTopToBottomRows_cold_4(&buffer);
    goto LABEL_206;
  }

  v29 = v28;
  v30 = CFDictionaryGetValue(v28, kFigMotionAttachmentsSampleBufferProcessorMetadata_FusedMotion);
  v197 = a6;
  if (v30)
  {
    v31 = v30;
    v32 = CFDictionaryContainsKey(v29, kFigMotionAttachmentsSampleBufferProcessorMetadata_GroupDelayCompensationApplied);
    v33 = v20;
    Count = CFArrayGetCount(v31);
    if (v32)
    {
      v35 = *(a2 + 1281);
    }

    else
    {
      v35 = *(a2 + 1281) + -0.005;
    }

    if (Count >= 1)
    {
      v36 = 0;
      v37 = a2 + 2;
      v211 = a2 + 514;
      v38 = Count & 0x7FFFFFFF;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v31, v36);
        if (!ValueAtIndex)
        {
          goto LABEL_31;
        }

        v40 = ValueAtIndex;
        v41 = CFArrayGetCount(ValueAtIndex);
        if (v41 < 1)
        {
          goto LABEL_31;
        }

        v42 = *v209;
        v43 = &v37[2 * v42];
        if (!FigCFArrayGetDoubleAtIndex())
        {
          goto LABEL_31;
        }

        *v43 = v35 + *v43;
        v44 = CFArrayGetValueAtIndex(v40, 2);
        if (!v44)
        {
          goto LABEL_31;
        }

        v45 = v44;
        v228.length = CFDataGetLength(v44);
        v46 = &v211[8 * v42];
        v228.location = 0;
        CFDataGetBytes(v45, v228, v46);
        if (!v33)
        {
          goto LABEL_30;
        }

        v47 = [v33 extractGravityData];
        if (v41 < 4 || !v47)
        {
          goto LABEL_30;
        }

        v48 = CFArrayGetValueAtIndex(v40, 3);
        if (v48)
        {
          break;
        }

LABEL_31:
        if (v38 == ++v36)
        {
          goto LABEL_32;
        }
      }

      v49 = v48;
      LODWORD(buffer.origin.y) = 0;
      buffer.origin.x = 0.0;
      v229.length = CFDataGetLength(v48);
      v229.location = 0;
      CFDataGetBytes(v49, v229, &buffer);
      [v33 pushSample:&buffer withPose:v46 atTime:*v43];
LABEL_30:
      *v209 = (*v209 + 1);
      goto LABEL_31;
    }

LABEL_32:

    a6 = v197;
    a1 = theDict;
    a7 = v205;
    a4 = v215;
    v20 = v201;
  }

  if (a4)
  {
    v50 = CFDictionaryGetValue(a1, kFigMotionAttachmentsSampleBufferProcessorMetadata_MotionAttachmentsISPHallData);
    if (v50)
    {
      v51 = v50;
      rect2 = *(v215 + 16420);
      v52 = CFArrayGetCount(v50);
      if (v52 > 2)
      {
        GVSExtractMetadataFromTopToBottomRows_cold_2(&buffer);
LABEL_196:
        x_low = LODWORD(buffer.origin.x);
        if (LODWORD(buffer.origin.x))
        {
          GVSExtractMetadataFromTopToBottomRows_cold_9();
          v20 = v201;
LABEL_208:

          goto LABEL_209;
        }
      }

      else if (v52 >= 1)
      {
        v53 = 0;
        v54 = v215 + 16416;
        v55 = v215 + 16424;
        v56 = v52 & 0x7FFFFFFF;
        v206 = vdupq_lane_s64(COERCE__INT64(1.0 - rect2), 0);
        v202 = v56;
        v203 = v51;
        do
        {
          v57 = CFArrayGetValueAtIndex(v51, v53);
          if (v57)
          {
            v58 = v57;
            v225 = 0;
            v59 = CFArrayGetValueAtIndex(v57, 0);
            if (v59)
            {
              CFNumberGetValue(v59, kCFNumberIntType, &v225);
            }

            v60 = v225;
            if (v225 > 1)
            {
              GVSExtractMetadataFromTopToBottomRows_cold_1(&v225, &buffer);
              goto LABEL_196;
            }

            v61 = CFArrayGetValueAtIndex(v58, 1);
            if (v61)
            {
              v62 = v61;
              v63 = CFArrayGetCount(v61);
              if (v63 >= 1)
              {
                v64 = 0;
                v65 = v215 + 8 + (v60 << 12);
                v66 = v63 & 0x7FFFFFFF;
                do
                {
                  buffer.origin.x = 0.0;
                  *v226 = 0;
                  v67 = CFArrayGetValueAtIndex(v62, v64);
                  v68 = CFArrayGetValueAtIndex(v67, 0);
                  v69 = CFArrayGetValueAtIndex(v67, 1);
                  if (v68)
                  {
                    v70 = v69;
                    if (v69)
                    {
                      if (CFDataGetLength(v69) == 8)
                      {
                        CFNumberGetValue(v68, kCFNumberDoubleType, &buffer);
                        v230.location = 0;
                        v230.length = 8;
                        CFDataGetBytes(v70, v230, v226);
                        v71 = v225;
                        v72 = *(v215 + 4 * v225);
                        *(v215 + 4 * v225) = (v72 + 1) & 0x1FF;
                        *(v65 + 8 * v72) = buffer.origin.x + *(v215 + 16408);
                        if (*(v54 + v71))
                        {
                          if (!*(v215 + 16418))
                          {
                            *(v55 + 8 * v71) = *v226;
                          }

                          *(v54 + v71) = 0;
                        }

                        v73 = v215 + 8200 + (v71 << 12);
                        if (*(v215 + 16418))
                        {
                          *(v73 + 8 * v72) = *v226;
                        }

                        else
                        {
                          v74 = *v226;
                          *(v73 + 8 * v72) = vsub_f32(*v226, *(v55 + 8 * v71));
                          *(v55 + 8 * v71) = vcvt_f32_f64(vmlaq_f64(vcvtq_f64_f32(vmul_n_f32(*(v55 + 8 * v71), rect2)), v206, vcvtq_f64_f32(v74)));
                        }
                      }
                    }
                  }

                  ++v64;
                }

                while (v66 != v64);
              }

              v56 = v202;
              v51 = v203;
            }
          }

          ++v53;
        }

        while (v53 != v56);
      }
    }

    a1 = theDict;
    v75 = CFDictionaryGetValue(theDict, kFigMotionAttachmentsSampleBufferProcessorMetadata_SphereScalingFactor);
    if (v75)
    {
      a7 = v205;
      CFNumberGetValue(v75, kCFNumberFloatType, (v205 + 16));
      a6 = v197;
      a4 = v215;
    }

    else
    {
      v76 = CFDictionaryGetValue(theDict, kFigMotionAttachmentsSampleBufferProcessorMetadata_ScalingFactor);
      a6 = v197;
      a7 = v205;
      a4 = v215;
      if (v76)
      {
        LODWORD(buffer.origin.x) = 0;
        CFNumberGetValue(v76, kCFNumberFloatType, &buffer);
        *(v205 + 16) = *&buffer.origin.x / 1.5;
      }

      else
      {
        *(v205 + 16) = 1065353216;
      }
    }

    v20 = v201;
  }

  v77 = CFDictionaryGetValue(a1, kFigCaptureStreamMetadata_PortType);
  if (v77)
  {
    v78 = portIndexFromPortType(v77, (a7 + 136));
    if (v78)
    {
      x_low = v78;
      GVSExtractMetadataFromTopToBottomRows_cold_3();
      goto LABEL_208;
    }
  }

  if (FigCFDictionaryGetInt32IfPresent())
  {
    v79 = *(a7 + 140);
  }

  else
  {
    v79 = 1;
  }

  a5 = v198;
  if (v79 <= 1)
  {
    v79 = 1;
  }

  *(a7 + 140) = v79;

LABEL_72:
  v219 = 0;
  v220 = 0;
  if (*(a7 + 88) == 0)
  {
    v80 = a6->i32[0];
    v81 = a6->i32[1];
    *(a7 + 96) = a6->i32[0];
    *(a7 + 100) = v81;
  }

  else
  {
    v80 = *(a7 + 96);
    v81 = *(a7 + 100);
  }

  v82 = *(a7 + 88);
  v83 = *(a7 + 92);
  v84 = v80;
  v85 = v81;
  if (CGRectIsEmpty(*(a7 + 104)) || (v234.origin.x = v82, v234.origin.y = v83, v234.size.width = v84, v234.size.height = v85, v231 = CGRectIntersection(*(a7 + 104), v234), *(a7 + 104) = v231, CGRectIsNull(v231)))
  {
    *(a7 + 104) = v82;
    *(a7 + 112) = v83;
    *(a7 + 120) = v84;
    *(a7 + 128) = v85;
  }

  else
  {
    v82 = *(a7 + 104);
    v83 = *(a7 + 112);
    v84 = *(a7 + 120);
    v85 = *(a7 + 128);
  }

  v232.origin.x = v82;
  v232.origin.y = v83;
  v232.size.width = v84;
  v232.size.height = v85;
  if (CGRectIsEmpty(v232))
  {
    v87.i64[0] = a6->i32[0];
    v87.i64[1] = HIDWORD(*a6);
    v86 = vcvtq_f64_s64(v87);
    *(a7 + 104) = 0;
    *(a7 + 112) = 0;
    *(a7 + 120) = v86;
  }

  if (*(a7 + 136) == 4)
  {
    v88 = kFigCaptureSampleBufferMetadata_ImageCircle;
    if (CFDictionaryContainsKey(a1, kFigCaptureSampleBufferMetadata_ImageCircle))
    {
      v89 = *a6;
      if (CFDictionaryContainsKey(a1, v88))
      {
        if (CFDictionaryGetValue(a1, v88))
        {
          memset(&buffer, 0, 16);
          if (FigCFDictionaryGetCGPointIfPresent())
          {
            memset(v226, 0, sizeof(v226));
            if (FigCFDictionaryGetCGSizeIfPresent())
            {
              v94 = vcvt_f32_s32(v89);
              v95 = vmul_f32(v94, vcvt_f32_f64(buffer.origin));
              *&v96 = vaddv_f32(vmul_f32(v94, vcvt_f32_f64(*v226))) * 0.5;
              if (a6[9].i8[5])
              {
                memset(v226, 0, sizeof(v226));
                v97 = CFDictionaryGetValue(a1, kFigVideoStabilizationSampleBufferProcessorMetadata_InputFrameCropOffset);
                if (v97)
                {
                  CGPointMakeWithDictionaryRepresentation(v97, v226);
                }

                v99 = v95;
                v100 = vcvt_f32_s32(*(a7 + 88));
                *v98.i8 = vcvt_f32_s32(*(a7 + 96));
                v102 = a6[1];
                v101 = a6[2];
                v103.i64[0] = v101.i32[0];
                v103.i64[1] = v101.i32[1];
                v104 = vcvtq_f64_s64(v103);
                v103.i64[0] = v102.i32[0];
                v103.i64[1] = v102.i32[1];
                __asm { FMOV            V5.2D, #0.5 }

                v110 = vdivq_f64(v104, vdupq_lane_s64(COERCE__INT64(*(a7 + 20)), 0));
                v111 = vmlsq_f64(vaddq_f64(*v226, vmlaq_f64(vcvtq_f64_s64(v103), _Q5, v104)), _Q5, v110);
                height = v110.height;
                if (v110.width < v110.height)
                {
                  v113 = 1;
                }

                else
                {
                  v113 = 2;
                }

                v212 = v111;
                buffer.origin = v111;
                buffer.size = v110;
                rect2a = v110.width;
                if (GVSConfineRectToCircle(v99, v96, v113, &buffer, v100, v98, v110.width, v104.f64[0], v111.x, _Q5.f64[0]))
                {
                  fig_log_get_emitter();
                  FigDebugAssert3();
                  x = buffer.origin.x;
                  y = buffer.origin.y;
                  v116 = buffer.size.height;
                  width = buffer.size.width;
                }

                else
                {
                  v235.origin.x = v212.x;
                  x = buffer.origin.x;
                  y = buffer.origin.y;
                  v116 = buffer.size.height;
                  width = buffer.size.width;
                  v235.origin.y = v212.y;
                  v235.size.width = rect2a;
                  v235.size.height = height;
                  if (!CGRectContainsRect(buffer, v235))
                  {
                    v116 = height;
                    width = rect2a;
                    y = v212.y;
                    x = v212.x;
                  }
                }

                v118 = llround(x);
                v119 = llround(y);
                *(a7 + 88) = v118;
                *(a7 + 92) = v119;
                v120 = llround(width);
                v121 = llround(v116);
                *(a7 + 96) = v120;
                *(a7 + 100) = v121;
                v236.origin.x = v118;
                v236.origin.y = v119;
                buffer.origin.x = v118;
                buffer.origin.y = v119;
                v236.size.width = v120;
                v236.size.height = v121;
                buffer.size.width = v120;
                buffer.size.height = v121;
                v233 = CGRectIntersection(*(a7 + 104), v236);
                *(a7 + 104) = v233;
                if (CGRectIsNull(v233))
                {
                  HIDWORD(v86.f64[0]) = HIDWORD(buffer.origin.x);
                  v122 = buffer.size;
                  *(a7 + 104) = buffer.origin;
                  *(a7 + 120) = v122;
                }
              }

              else
              {
                v123 = *(a7 + 120);
                *&v123.f64[0] = vcvt_f32_f64(v123);
                if (GVSConfineRectToCircle(v95, v96, 0, (a7 + 104), vcvt_f32_f64(*(a7 + 104)), v123, v90, v91, v92, v93))
                {
                  GVSExtractMetadataFromTopToBottomRows_cold_11();
                }
              }

              goto LABEL_100;
            }

            GVSExtractMetadataFromTopToBottomRows_cold_12();
          }

          else
          {
            GVSExtractMetadataFromTopToBottomRows_cold_13();
          }
        }

        else
        {
          GVSExtractMetadataFromTopToBottomRows_cold_14();
        }
      }

      GVSExtractMetadataFromTopToBottomRows_cold_15(&v223);
      x_low = v223;
      goto LABEL_194;
    }
  }

LABEL_100:
  if (a6[9].i8[4])
  {
    v124 = CFDictionaryGetValue(a1, kFigVideoStabilizationSampleBufferProcessorMetadata_InputFrameCropOffset);
    if (v124)
    {
      memset(&buffer, 0, 16);
      CGPointMakeWithDictionaryRepresentation(v124, &buffer.origin);
      v125.i64[0] = a6->i32[0];
      v125.i64[1] = HIDWORD(*a6);
      *&v86.f64[0] = vcvt_f32_f64(vmulq_f64(buffer.origin, vcvtq_f64_s64(v125)));
      *(a7 + 24) = v86.f64[0];
    }
  }

  LODWORD(v86.f64[0]) = *v195;
  if (a6[9].i8[0])
  {
    v126 = vcvt_f32_s32(a6[4]);
    v127 = vcvt_f32_f64(*(a7 + 120));
    __asm { FMOV            V3.2S, #-1.0 }

    v129 = vadd_f32(v126, _D3);
    v130 = vadd_f32(v127, _D3);
    v131 = vdiv_f32(v129, vadd_f32(v130, vdup_n_s32(0xBF804189)));
    if (v131.f32[0] <= v131.f32[1])
    {
      v131.f32[0] = v131.f32[1];
    }

    if (*v86.f64 < v131.f32[0])
    {
      *v195 = v131.i32[0];
      LODWORD(v86.f64[0]) = v131.i32[0];
    }

    v132 = vsub_f32(vmla_f32(vcvt_f32_f64(*(a7 + 104)), 0x3F0000003F000000, v130), vmla_f32(vcvt_f32_s32(a6[3]), 0x3F0000003F000000, v129));
    v133 = vmul_f32(vsub_f32(v127, vdiv_f32(v126, vdup_lane_s32(*&v86.f64[0], 0))), 0x3F0000003F000000);
    __asm { FMOV            V2.2S, #0.75 }

    v135 = vmaxnm_f32(vmla_f32(0xBF000000BF000000, _D2, v133), 0);
    v136 = vminnm_f32(vmaxnm_f32(*(a7 + 24), vsub_f32(v132, v135)), vadd_f32(v135, v132));
    *(a7 + 24) = v136;
    v137 = v136.f32[1];
  }

  else
  {
    v137 = *(a7 + 28);
  }

  v138 = a6[2].i32[1];
  v139 = v138;
  if (*v86.f64 <= 0.0)
  {
    *v86.f64 = 1.0;
  }

  v140 = v139 / *v86.f64;
  v141 = *(a7 + 48);
  v142 = *(a7 + 56) / *(a7 + 100);
  v143 = *(a7 + 32) + v142 * ((v137 + ((vcvts_n_f32_s32(v138, 1uLL) + a6[1].i32[1]) - (v140 * 0.5))) - *(a7 + 92));
  *(a7 + 40) = v143;
  v144 = v142 * v140;
  v145 = v143 - v141 * 0.5;
  v146 = v145 + v144 * ((v138 + -1.0) / v138 * 0.5);
  *(a7 + 64) = v144;
  *(a7 + 72) = v146;
  v147 = *(a5 + 40);
  v217 = *(a5 + 24);
  v218 = v147;
  v148 = 0;
  if (*(a5 + 56) == 1)
  {
    v149 = CFDictionaryGetValue(a1, kFigCaptureStreamMetadata_PortType);
    v150 = [*(a5 + 64) objectForKeyedSubscript:v149];
    v151 = v150;
    if (v150 && [v150 length] == stru_20.segname)
    {
      v152 = [v151 bytes];
      *&v217 = FigMotionMultiplyQuaternions(&v217, v152);
      *(&v217 + 1) = v153;
      *&v218 = v154;
      *(&v218 + 1) = v155;
      LODWORD(v223) = 1065353216;
      FigCFDictionaryGetFloatIfPresent();
      v156 = *(a7 + 140);
      v157 = *a6;
      v213 = CGPointZero;
      buffer.origin = CGPointZero;
      if (FigMotionComputeRawSensorCenterInBuffer(a1, v157, v156, v156, &buffer))
      {
        v158 = *(a7 + 16);
        v148 = vmul_n_f32(*(v152 + 32), v158);
        v159 = v198;
      }

      else
      {
        v158 = *(a7 + 16);
        v160 = vmla_n_f32(vcvt_f32_f64(buffer.origin), *(v152 + 32), v158);
        v159 = v198;
        v148 = vsub_f32(v160, vcvt_f32_f64(*v198));
      }

      if ((*(v159 + 57) & 1) == 0)
      {
        v161 = *a6;
        *v226 = v213;
        if (!FigMotionComputeOpticalCenterInBuffer(a1, v161, v156, v156, 0, v226, v158 / *&v223))
        {
          v148 = vcvt_f32_f64(vsubq_f64(*v226, *v159));
        }
      }
    }

    v20 = v201;
  }

  if (a10)
  {
    *a10 = v148;
  }

  v162 = v144 + v145;
  GVSComputeMotionBlur(v209, a4, a7, &v217, (a7 + 80));
  v163 = a8;
  if (a8)
  {
    if (a13 == 1)
    {
      FigMotionComputeQuaternionForTimeStamp(v209, a8, v200 + 2066, v146);
      if (*(v200 + 2066))
      {
        v164 = 1;
        goto LABEL_133;
      }

      GVSExtractMetadataFromTopToBottomRows_cold_18(&buffer);
LABEL_217:
      x_low = LODWORD(buffer.origin.x);
      goto LABEL_194;
    }

    LOBYTE(buffer.origin.x) = 0;
    *(v200 + 2066) = 1;
    if (a13 >= 1)
    {
      v165 = 0;
      v166 = a8;
      do
      {
        FigMotionComputeQuaternionForTimeStamp(v209, v166, &buffer, v145 + v165 * ((v162 - v145) / (a13 + -1.0)));
        *(v200 + 2066) &= LOBYTE(buffer.origin.x);
        ++v165;
        v166 += 4;
      }

      while (a13 != v165);
    }

    FigMotionComputeQuaternionForTimeStamp(v209, &a8[4 * a13], &buffer, v146);
    *(v200 + 2066) &= LOBYTE(buffer.origin.x);
    if ((a13 & 0x80000000) == 0)
    {
      v164 = a13 + 1;
LABEL_133:
      v167 = v164;
      do
      {
        *v163 = FigMotionMultiplyQuaternions(v163, &v217);
        *(v163 + 1) = v168;
        *(v163 + 2) = v169;
        *(v163 + 3) = v170;
        v163 += 4;
        --v167;
      }

      while (v167);
    }
  }

  v171 = a11;
  if (a9)
  {
    if (v20 && (v172 = [v20 extractGravityData], a8) && v172)
    {
      [v20 computeGravity:a9 forTimestamp:v146];
    }

    else
    {
      *a9 = 0;
      *(a9 + 8) = 0;
    }
  }

  v216 = 0;
  if (a12)
  {
    v173 = *a12;
    v174 = *(v205 + 136);
    FigMotionStashQuadraBinningFactor(theDict, a12);
    FigMotionUpdateBaseZoomFactorAdjustment(theDict, a12);
    if ((v173 & 2) != 0 && v174 != *(a12 + 444))
    {
      *v226 = 0;
      LODWORD(v223) = 0;
      if (!FigCFDictionaryGetFloat32IfPresent() || !FigCFDictionaryGetFloat32IfPresent())
      {
        FigGetUpTime();
        v192 = FigHostTimeToNanoseconds();
        if (!low_freq_error_logging_last_log || (v192 - low_freq_error_logging_last_log) >= 0x3B9ACA00)
        {
          if (low_freq_error_logging_filtered)
          {
            low_freq_error_logging_filtered = 0;
          }

          low_freq_error_logging_last_log = v192;
          if ((v173 & 4) == 0)
          {
            goto LABEL_163;
          }

          goto LABEL_148;
        }

        ++low_freq_error_logging_filtered;
        if ((v173 & 4) != 0)
        {
LABEL_148:
          v177 = *(a12 + 444);
          if (v174 != v177)
          {
            v178 = *(a12 + 448);
            if (v174 != v178)
            {
              v179 = 0;
              v180 = BravoCurrentToReferenceMapping[3 * v177 + v174];
              if (v177 == 2 && v178 != 2)
              {
                LODWORD(buffer.origin.x) = 4;
                FigCFDictionaryGetInt32IfPresent();
                v179 = LODWORD(buffer.origin.x) != 4;
              }

              v181 = v174 == 2 || v179;
              FigMotionComputeParallaxShift(*(a12 + 48 * v180 + 120), *(a12 + 48 * v180 + 136), *(v205 + 16), theDict, a12, v174, v181, a12 + 452);
              *(a12 + 528) = *(v205 + 16);
            }

            if ((*(a12 + 520) & 1) == 0)
            {
              LODWORD(v175) = *(a12 + 456);
              v182.f32[0] = FigMotionAdjustParallaxShiftForScalingFactor(*(a12 + 452), v175, *(a12 + 528), *(v205 + 16));
              v182.i32[1] = v183;
              v216 = vadd_f32(v216, v182);
            }
          }

          if (v174 != *(a12 + 448))
          {
            FigMotionClearFocalLengthData(a12);
            if (v174 == *(a12 + 444))
            {
              *(a12 + 452) = 0;
            }
          }

          FigMotionStashFocalLengthData(theDict, a12);
        }

LABEL_163:
        x_low = 0;
        *(a12 + 448) = v174;
        v185 = v215;
        if (!v215 || !a11)
        {
          goto LABEL_194;
        }

        v186 = vadd_f32(v148, v216);
        v187 = v205;
        if (!*(v205 + 12))
        {
          goto LABEL_185;
        }

        goto LABEL_170;
      }

      *&buffer.origin.x = vcvt_f32_f64(*v198);
      v176 = FigMotionComputeBravoTranslation(*v226, *&v223, theDict, a12, v174, &buffer, &v216);
      if (v176)
      {
        x_low = v176;
        GVSExtractMetadataFromTopToBottomRows_cold_16();
        goto LABEL_194;
      }
    }

    if ((v173 & 4) != 0)
    {
      goto LABEL_148;
    }

    goto LABEL_163;
  }

  x_low = 0;
  v185 = v215;
  if (!v215 || !a11)
  {
    goto LABEL_194;
  }

  v186 = vadd_f32(v148, 0);
  v187 = v205;
  if (!*(v205 + 12))
  {
    if (*(v198 + 56) != 1)
    {
      bzero(a11, 8 * a6[6].i32[1]);
LABEL_193:
      x_low = 0;
      goto LABEL_194;
    }

LABEL_185:
    v193 = a6[6].u32[1];
    if (v193 >= 1)
    {
      do
      {
        *v171++ = v186;
        --v193;
      }

      while (v193);
    }

    goto LABEL_193;
  }

LABEL_170:
  if (a13 != 1)
  {
    if (a6[6].i32[1] >= 1)
    {
      v188 = 0;
      v189 = 0;
      v190 = v139;
      do
      {
        if (v189 >= v138 - 1)
        {
          v191 = v138 - 1;
        }

        else
        {
          v191 = v189;
        }

        FigMotionComputeLensMovementForTimeStamp(v185, v171, *(v187 + 136), v145 + (v162 - v145) * v191 / v190, *(v187 + 16));
        *v171 = vadd_f32(v186, *v171);
        ++v171;
        ++v188;
        v189 = a6[7].i32[1] + v191;
      }

      while (v188 < a6[6].i32[1]);
    }

    goto LABEL_193;
  }

  x_low = FigMotionComputeLensMovementForTimeStamp(v185, a11, *(v187 + 136), v146, *(v187 + 16));
  if (x_low)
  {
    GVSExtractMetadataFromTopToBottomRows_cold_17();
  }

  else
  {
    *a11 = vadd_f32(v186, *a11);
  }

LABEL_194:

  return x_low;
}

uint64_t GVSComputeMotionBlur(uint64_t a1, uint64_t a2, uint64_t a3, double *a4, void *a5)
{
  if (!a5)
  {
    GVSComputeMotionBlur_cold_6(&v27);
    return v27.u32[0];
  }

  if (!a1)
  {
    GVSComputeMotionBlur_cold_5(&v27);
    return v27.u32[0];
  }

  if (!a3)
  {
    GVSComputeMotionBlur_cold_4(&v27);
    return v27.u32[0];
  }

  if (!a4)
  {
    GVSComputeMotionBlur_cold_3(&v27);
    return v27.u32[0];
  }

  *a5 = 0;
  v10 = *(a3 + 72);
  v11 = *(a3 + 48) * 0.5;
  v12 = v10 - v11;
  v13 = v10 + v11;
  v35 = 1;
  v34 = 1;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  FigMotionComputeQuaternionForTimeStamp(a1, &v32, &v35, v10 - v11);
  FigMotionComputeQuaternionForTimeStamp(a1, &v30, &v34, v13);
  if (v35 && v34)
  {
    *&v32 = FigMotionMultiplyQuaternions(&v32, a4);
    *(&v32 + 1) = v14;
    *&v33 = v15;
    *(&v33 + 1) = v16;
    *&v30 = FigMotionMultiplyQuaternions(&v30, a4);
    *(&v30 + 1) = v17;
    *&v31 = v18;
    *(&v31 + 1) = v19;
    v29 = 0;
    v28[0] = FigMotionMultiplyByInverseOfQuaternion(&v30, &v32);
    v28[1] = v20;
    v28[2] = v21;
    v28[3] = v22;
    v23 = GVSComputeTranslationFromCameraMotion(v28, &v29, *(a3 + 4));
    if (v23)
    {
      v24 = v23;
      GVSComputeMotionBlur_cold_1();
    }

    else
    {
      if (a2 && *(a3 + 12))
      {
        v26 = 0;
        v27 = 0;
        FigMotionComputeLensMovementForTimeStamp(a2, &v27, *(a3 + 136), v12, *(a3 + 16));
        FigMotionComputeLensMovementForTimeStamp(a2, &v26, *(a3 + 136), v13, *(a3 + 16));
        v29 = vsub_f32(v29, vsub_f32(v26, v27));
      }

      v24 = 0;
      *a5 = v29;
    }
  }

  else
  {
    GVSComputeMotionBlur_cold_2();
    return 0xFFFFFFFFLL;
  }

  return v24;
}

uint64_t GVSExtractCameraGeometryFromCameraInfoByPortType(void *a1, void *a2)
{
  v3 = a1;
  v4 = +[NSMutableDictionary dictionary];
  v5 = v4;
  v43 = v3;
  if (!v3)
  {
    GVSExtractCameraGeometryFromCameraInfoByPortType_cold_6(v44);
LABEL_36:
    v29 = v44[0];
    goto LABEL_33;
  }

  if (!a2)
  {
    GVSExtractCameraGeometryFromCameraInfoByPortType_cold_5(v44);
    goto LABEL_36;
  }

  v35 = a2;
  v42 = v4;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = [v3 allKeys];
  v6 = [obj countByEnumeratingWithState:&v50 objects:v49 count:16];
  if (!v6)
  {
    v29 = 0;
    goto LABEL_28;
  }

  v7 = v6;
  v40 = kFigCaptureCameraInfoKey_PixelSize;
  v41 = *v51;
  v39 = kFigCaptureCameraInfoKey_OpticalCenterOffsetInPhysicalSensorDimensions;
  v36 = kFigCaptureCameraInfoKey_OpticalCenterOffset;
  v38 = kFigCaptureCameraInfoKey_CameraPoseMatrix;
  do
  {
    v8 = 0;
    do
    {
      if (*v51 != v41)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v50 + 1) + 8 * v8);
      v10 = [v43 objectForKeyedSubscript:v9];
      v11 = [v10 objectForKeyedSubscript:v40];
      if (!v11)
      {
        GVSExtractCameraGeometryFromCameraInfoByPortType_cold_4();
LABEL_31:

        v29 = 4294954516;
LABEL_32:
        v5 = v42;

        goto LABEL_33;
      }

      v12 = v11;
      v13 = [v10 objectForKeyedSubscript:v39];
      if (!v13)
      {
        v13 = [v10 objectForKeyedSubscript:v36];
        if (!v13)
        {
          GVSExtractCameraGeometryFromCameraInfoByPortType_cold_3(v12);
          goto LABEL_31;
        }
      }

      v14 = v13;
      point.x = 0.0;
      point.y = 0.0;
      CGPointMakeWithDictionaryRepresentation(v13, &point);
      v15 = [v10 objectForKeyedSubscript:v38];
      v16 = v15;
      if (!v15)
      {
        GVSExtractCameraGeometryFromCameraInfoByPortType_cold_2();
LABEL_24:
        v30 = 0;
        v29 = 4294954516;
        goto LABEL_19;
      }

      if ([v15 length] != &stru_20.segname[8])
      {
        GVSExtractCameraGeometryFromCameraInfoByPortType_cold_1();
        goto LABEL_24;
      }

      v17 = [v16 bytes];
      v47 = 0;
      v45 = 0u;
      v46 = 0u;
      v18 = vcvt_f32_f64(point);
      [v12 floatValue];
      v26 = 0;
      v47 = vmul_n_f32(v18, *v19.i32);
      v27 = v44;
      do
      {
        for (i = 0; i != 3; ++i)
        {
          *v19.i64 = v17[i];
          *&v27[2 * i] = v19.i64[0];
        }

        ++v26;
        v17 += 4;
        v27 += 6;
      }

      while (v26 != 3);
      v29 = GVSQuaternionFromRotationMatrix(v44, &v45, v19, v20, v21, v22, v23, v24, v25);
      v30 = v29 == 0;
      if (!v29)
      {
        *(&v46 + 1) = -*(&v46 + 1);
        v31 = [[NSData alloc] initWithBytes:&v45 length:40];
        [v42 setObject:v31 forKeyedSubscript:v9];
      }

LABEL_19:

      if (!v30)
      {
        goto LABEL_32;
      }

      v8 = v8 + 1;
    }

    while (v8 != v7);
    v32 = [obj countByEnumeratingWithState:&v50 objects:v49 count:16];
    v7 = v32;
  }

  while (v32);
LABEL_28:

  v5 = v42;
  v33 = v42;
  *v35 = v42;
LABEL_33:

  return v29;
}

float32x2_t GVSComputeOverscanUsage(int32x2_t *a1, float64x2_t *a2, uint64_t a3)
{
  v3 = 0;
  v4 = a1[3];
  v5 = a1[4];
  v6 = v29;
  v28 = v4.i32[0];
  v29[0] = v4.i32[1];
  v7 = vcvt_f32_s32(vadd_s32(vadd_s32(v4, v5), -1));
  v29[1] = *v7.i32;
  v29[2] = v29[0];
  v29[3] = v28;
  v30 = vrev64_s32(v7);
  v31 = v7.i32[1];
  v8 = a1[6].i32[1];
  v9 = (a1[7].i32[0] - 1) * v8;
  v27[0] = 0;
  v27[1] = v9;
  v27[2] = v8 - 1;
  v27[3] = v8 - 1 + v9;
  v10 = vcvt_f32_f64(*a2);
  __asm { FMOV            V2.2S, #-1.0 }

  v16 = vadd_f32(vadd_f32(v10, vcvt_f32_f64(a2[1])), _D2);
  result = vneg_f32(0x80000000800000);
  do
  {
    v18 = a3 + 36 * v27[v3];
    v19 = *(v6 - 1);
    v20 = (*(v18 + 32) + (*(v18 + 28) * *v6)) + (*(v18 + 24) * v19);
    v21.i32[0] = *v18;
    v24.i32[0] = *(v18 + 4);
    v22.i32[0] = *(v18 + 8);
    v23 = (v18 + 12);
    v24.i32[1] = *(v18 + 16);
    v25 = (v18 + 20);
    if (fabsf(v20) > 0.00000001)
    {
      v20 = 1.0 / v20;
    }

    v22.i32[1] = *v25;
    v21.i32[1] = *v23;
    v26 = vmul_n_f32(vmla_n_f32(vmla_n_f32(v22, v24, *v6), v21, v19), v20);
    result = vminnm_f32(result, vminnm_f32(vmaxnm_f32(vsub_f32(v26, v10), 0), vmaxnm_f32(vsub_f32(v16, v26), 0)));
    v6 += 2;
    ++v3;
  }

  while (v3 != 4);
  return result;
}

uint64_t GVSConfineRectToCircle(uint64_t a1, int a2, int a3, float64x2_t *a4, float32x2_t a5, int32x4_t a6, double a7, double a8, double a9, double a10)
{
  v10 = vsub_f32(a5, a1);
  v11.i32[0] = 0;
  v11.i32[1] = a6.i32[0];
  v11.i64[1] = a6.u32[0];
  v12 = vzip1q_s32(a6, a6);
  v12.i64[0] = 0;
  v13 = vaddq_f32(v11, vdupq_lane_s32(v10, 0));
  v14 = vaddq_f32(v12, vdupq_lane_s32(v10, 1));
  v15 = vabsq_f32(v13);
  v16 = vabsq_f32(v14);
  if (a3 == 2)
  {
    if (vminvq_f32(v15) < *&a2)
    {
      *&a10 = *&a2 * *&a2;
      v16 = vminnmq_f32(vsqrtq_f32(vmlsq_f32(vdupq_lane_s32(*&a10, 0), v15, v15)), v16);
      goto LABEL_9;
    }

    GVSConfineRectToCircle_cold_1();
    return 4294954516;
  }

  if (a3 != 1)
  {
    if (*&a2 > 0.0)
    {
      v17 = vmlaq_f32(vmulq_f32(v14, v14), v13, v13);
      v18 = vrsqrteq_f32(v17);
      v19 = vmulq_f32(v18, vrsqrtsq_f32(v17, vmulq_f32(v18, v18)));
      v20 = vmulq_n_f32(vmulq_f32(v19, vrsqrtsq_f32(v17, vmulq_f32(v19, v19))), *&a2);
      __asm { FMOV            V6.4S, #1.0 }

      v26 = vminnmq_f32(v20, _Q6);
      v15 = vmulq_f32(v15, v26);
      v16 = vmulq_f32(v16, v26);
      goto LABEL_9;
    }

    GVSConfineRectToCircle_cold_3();
    return 4294954516;
  }

  if (vminvq_f32(v16) >= *&a2)
  {
    GVSConfineRectToCircle_cold_2();
    return 4294954516;
  }

  *&a10 = *&a2 * *&a2;
  v15 = vminnmq_f32(vsqrtq_f32(vmlsq_f32(vdupq_lane_s32(*&a10, 0), v16, v16)), v15);
LABEL_9:
  v27 = 0;
  v28.i64[0] = 0x8000000080000000;
  v28.i64[1] = 0x8000000080000000;
  v29 = vabsq_f32(v15);
  v30 = vorrq_s8(vandq_s8(v13, v28), v29);
  v29.i32[0] = a1;
  v31 = vaddq_f32(vdupq_lane_s32(*v29.i8, 0), v30);
  v32 = vaddq_f32(vdupq_lane_s32(a1, 1), vorrq_s8(vandq_s8(v14, v28), vabsq_f32(v16)));
  v33 = vextq_s8(v32, v32, 8uLL).u64[0];
  v29.i64[0] = vextq_s8(v31, v31, 8uLL).u64[0];
  *v28.i8 = vzip2_s32(*v29.i8, *v32.i8);
  v29.i32[1] = v33.i32[1];
  *v32.i8 = vmaxnm_f32(vzip1_s32(*v31.i8, *v32.i8), *v28.i8);
  *a4 = vcvtq_f64_f32(*v32.i8);
  a4[1] = vcvtq_f64_f32(vsub_f32(vminnm_f32(vext_s8(*v31.i8, v33, 4uLL), *v29.i8), *v32.i8));
  return v27;
}

affineGPUMetal *AffineTransformContextAlloc(void *a1)
{
  v1 = a1;
  v2 = [NSBundle bundleWithPath:@"/System/Library/VideoProcessors/VideoStabilizationV2.bundle"];
  if (!v2)
  {
    AffineTransformContextAlloc_cold_3();
LABEL_8:
    v6 = 0;
    goto LABEL_5;
  }

  v3 = [[FigMetalContext alloc] initWithbundle:v2 andOptionalCommandQueue:v1];
  if (!v3)
  {
    AffineTransformContextAlloc_cold_2();
    goto LABEL_8;
  }

  v4 = v3;
  v5 = [[affineGPUMetal alloc] initWithMetalContext:v3];
  v6 = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  else
  {
    AffineTransformContextAlloc_cold_1(v4);
  }

LABEL_5:

  return v6;
}

uint64_t AffineTransformArrayApply(void *a1, opaqueCMSampleBuffer *a2, __CVBuffer *a3, uint64_t a4, uint64_t a5, void *a6, double a7, double a8)
{
  v15 = a6;
  v16 = a1;
  ImageBuffer = CMSampleBufferGetImageBuffer(a2);
  v18 = CMGetAttachment(a2, @"MetadataDictionary", 0);
  v19 = v18;
  if (v18)
  {
    v20 = [v18 objectForKeyedSubscript:@"QuadraBinningFactor"];
    v21 = v20 != 0;

    WidthOfPlane = CVPixelBufferGetWidthOfPlane(ImageBuffer, 0);
    v28 = COERCE_DOUBLE(__PAIR64__(CVPixelBufferGetHeightOfPlane(ImageBuffer, 0), WidthOfPlane));
    v23 = CVPixelBufferGetWidthOfPlane(a3, 0);
    v24 = [v16 setTransformsArray:a4 transforms3x3:a5 transformStrides:v21 inputSize:a7 outputSize:a8 pixelBufferValidRect:v28 isQuadraSensor:{COERCE_DOUBLE(__PAIR64__(CVPixelBufferGetHeightOfPlane(a3, 0), v23))}];
    if (v24)
    {
      AffineTransformArrayApply_cold_1();
    }

    else
    {
      v25 = [v16 renderWithSampleBuffer:a2 pixelBufferValidRect:a5 ltmLUT:v15 outputPixelBuffer:a3 isAttachmentRendering:0];
      if (v25)
      {
        v27 = v25;
        AffineTransformArrayApply_cold_2();
        v24 = v27;
      }
    }
  }

  else
  {
    AffineTransformArrayApply_cold_3();
    v24 = 4294954516;
  }

  return v24;
}

uint64_t AffineTransformArrayApplyOnAttachmentPixelBuffer(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, double a7, double a8, double a9, double a10)
{
  v19 = a6;
  v20 = a1;
  if (v19)
  {
    v21 = [v19 objectForKeyedSubscript:@"QuadraBinningFactor"];
    v22 = v21 != 0;

    v23 = [v20 setTransformsArray:a4 transforms3x3:a5 transformStrides:v22 inputSize:a9 outputSize:a10 pixelBufferValidRect:a7 isQuadraSensor:a8];
    if (v23)
    {
      v24 = v23;
      AffineTransformArrayApplyOnAttachmentPixelBuffer_cold_1();
    }

    else
    {
      v24 = [v20 renderWithPixelBuffer:a2 metadata:v19 pixelBufferValidRect:a5 ltmLUT:0 outputPixelBuffer:a3 isAttachmentRendering:1];
    }
  }

  else
  {
    AffineTransformArrayApplyOnAttachmentPixelBuffer_cold_2();
    v24 = 4294954516;
  }

  return v24;
}

uint64_t AffineTransformArrayApplyOnAttachment(void *a1, opaqueCMSampleBuffer *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9)
{
  v16 = a3;
  v17 = a1;
  ImageBuffer = CMSampleBufferGetImageBuffer(a2);
  v19 = ImageBuffer;
  if (!ImageBuffer)
  {
    AffineTransformArrayApplyOnAttachment_cold_7();
    goto LABEL_13;
  }

  WidthOfPlane = CVPixelBufferGetWidthOfPlane(ImageBuffer, 0);
  v21 = __PAIR64__(CVPixelBufferGetHeightOfPlane(v19, 0), WidthOfPlane);
  v22.i64[0] = v21;
  *&v22.i64[1] = a9;
  if (vmaxv_u16(vmovn_s32(vceqzq_s32(v22))))
  {
    AffineTransformArrayApplyOnAttachment_cold_1();
    v19 = 0;
LABEL_13:
    v28 = 0;
LABEL_14:
    v30 = 4294954516;
    goto LABEL_9;
  }

  v32 = *&v21;
  v23 = CMGetAttachment(a2, @"MetadataDictionary", 0);
  v19 = v23;
  if (!v23)
  {
    AffineTransformArrayApplyOnAttachment_cold_6();
    goto LABEL_13;
  }

  v24 = [(__CVBuffer *)v23 objectForKeyedSubscript:@"QuadraBinningFactor"];
  v25 = v24 != 0;

  v26 = [v17 setTransformsArray:a5 transforms3x3:a6 transformStrides:v25 inputSize:a7 outputSize:a8 pixelBufferValidRect:v32 isQuadraSensor:a9];
  if (v26)
  {
    v30 = v26;
    AffineTransformArrayApplyOnAttachment_cold_2();
    v28 = 0;
    goto LABEL_9;
  }

  v27 = CMGetAttachment(a2, kFigSampleBufferAttachmentKey_AttachedMedia, 0);
  v28 = v27;
  if (!v27)
  {
    AffineTransformArrayApplyOnAttachment_cold_5();
    goto LABEL_14;
  }

  v29 = [v27 objectForKeyedSubscript:v16];

  if (!v29)
  {
    AffineTransformArrayApplyOnAttachment_cold_4();
    goto LABEL_14;
  }

  CMSetAttachment(v29, @"AttachmentName", v16, 1u);
  v30 = [v17 renderWithSampleBuffer:v29 pixelBufferValidRect:a6 ltmLUT:0 outputPixelBuffer:a4 isAttachmentRendering:1];
  if (v30)
  {
    AffineTransformArrayApplyOnAttachment_cold_3();
  }

LABEL_9:

  return v30;
}

void AffineTransformFinish(void *a1)
{
  v1 = a1;
  [v1 finish];
  [v1 resetFirstFrameParameters];
}

void AffineTransformContextRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

id AffineTransformGetBlurBuffersDimensions(void *a1, int a2, int a3, int *a4, int *a5)
{
  result = [a1 getBlurBuffersDecimationFactor];
  *a4 = a2 / result;
  *a5 = a3 / result;
  return result;
}

void __destructor_8_AB8s8n2_s8_AE(uint64_t a1)
{
  v2 = *(a1 + 16);
}

void __117__affineGPUMetal_renderWithPixelBuffer_metadata_pixelBufferValidRect_ltmLUT_outputPixelBuffer_isAttachmentRendering___block_invoke(id a1, MTLCommandBuffer *a2)
{
  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }
}

void __117__affineGPUMetal_renderWithPixelBuffer_metadata_pixelBufferValidRect_ltmLUT_outputPixelBuffer_isAttachmentRendering___block_invoke_2(id a1, MTLCommandBuffer *a2)
{
  v2 = a2;
  if ([(MTLCommandBuffer *)v2 status]== &dword_4)
  {
    [(MTLCommandBuffer *)v2 GPUEndTime];
    [(MTLCommandBuffer *)v2 GPUStartTime];
  }

  else
  {
    [(MTLCommandBuffer *)v2 status];
  }

  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }
}

void __77__affineGPUMetal__renderBlurInputTextures_inputTexturesCount_outputTextures___block_invoke(id a1, MTLCommandBuffer *a2)
{
  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }
}

void __77__affineGPUMetal__renderBlurInputTextures_inputTexturesCount_outputTextures___block_invoke_2(id a1, MTLCommandBuffer *a2)
{
  v2 = a2;
  if ([(MTLCommandBuffer *)v2 status]== &dword_4)
  {
    [(MTLCommandBuffer *)v2 GPUEndTime];
    [(MTLCommandBuffer *)v2 GPUStartTime];
  }

  else
  {
    [(MTLCommandBuffer *)v2 status];
  }

  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }
}

void __87__affineGPUMetal__blurDeltaMapBordersFromStyledPixelBuffer_withUnstyledPixelBuffer_to___block_invoke(id a1, MTLCommandBuffer *a2)
{
  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }
}

void __87__affineGPUMetal__blurDeltaMapBordersFromStyledPixelBuffer_withUnstyledPixelBuffer_to___block_invoke_2(id a1, MTLCommandBuffer *a2)
{
  v2 = a2;
  if ([(MTLCommandBuffer *)v2 status]== &dword_4)
  {
    [(MTLCommandBuffer *)v2 GPUEndTime];
    [(MTLCommandBuffer *)v2 GPUStartTime];
  }

  else
  {
    [(MTLCommandBuffer *)v2 status];
  }

  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }
}

void sub_1E0E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, id a48, id a49, char a50)
{
  for (i = 24; i != -24; i -= 24)
  {
    __destructor_8_AB8s8n2_s8_AE((&a41 + i));
  }

  for (j = 48; j != -24; j -= 24)
  {
    __destructor_8_AB8s8n2_s8_AE((&a50 + j));
  }

  _Unwind_Resume(a1);
}

void __copy_assignment_8_8_t0w4_AB8s8n2_s8_AE(_DWORD *a1, _DWORD *a2)
{
  v2 = (a2 + 2);
  *a1 = *a2;
  v3 = (a1 + 2);
  v4 = 16;
  do
  {
    v5 = *v2++;
    objc_storeStrong(v3++, v5);
    v4 -= 8;
  }

  while (v4);
}

void sub_1F9B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void __43__affineGPUMetal__addCommandBufferHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[593] |= [v4 status] != &dword_4;
  }
}

void sub_206BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _ispCallbackHandler(void *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = a1;
  *(v7 + 26) = a2;
  v16 = v7;
  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
    v7 = v16;
  }

  if (!a2 && a3 >= 1 && a4)
  {
    v8 = a3;
    v9 = (a4 + 8);
    do
    {
      if ([*(v7 + 4) containsObject:*(v9 - 1)])
      {
        CVPixelBufferGetTypeID();
        CFGetTypeID(*v9);
      }

      v9 += 2;
      --v8;
      v7 = v16;
    }

    while (v8);
  }

  dispatch_semaphore_wait(*(v7 + 12), 0xFFFFFFFFFFFFFFFFLL);
  dispatch_semaphore_signal(*(v16 + 10));
  --*(v16 + 28);
  dispatch_semaphore_signal(*(v16 + 12));
  if (a4)
  {
    v10 = *(a4 + 8);
    if (a3 >= 2)
    {
      v11 = kFigCaptureISPProcessingSessionOutputID_PrimaryScalerLowRes;
      v12 = (a4 + 24);
      v13 = a3 - 1;
      while (![*(v12 - 1) isEqual:v11])
      {
        v12 += 2;
        if (!--v13)
        {
          goto LABEL_18;
        }
      }

      CMSetAttachment(v10, @"LowResolutionImageUsedByVideoEncoder", *v12, 0);
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_18:
  WeakRetained = objc_loadWeakRetained(v16 + 21);

  if (WeakRetained)
  {
    v15 = objc_loadWeakRetained(v16 + 21);
    [v15 didCompleteRenderingOfBuffer:v10 withStatus:a2];
  }

  else
  {
    dispatch_semaphore_signal(*(v16 + 11));
  }
}

__int128 *_mapTransform2TileCoordinates(__int128 *result, int a2, int a3, int a4, int a5, uint64_t a6)
{
  v6 = *result;
  v7 = result[1];
  *(a6 + 32) = *(result + 8);
  *a6 = v6;
  *(a6 + 16) = v7;
  v8 = result + 2;
  v9 = (a6 + 8);
  v10 = -3;
  do
  {
    v11 = (*(v8 - 1) * a5) + (*(v8 - 2) * a4);
    v12 = *v8;
    v8 += 3;
    *v9 = v12 + v11;
    v9 += 3;
    v10 += 3;
  }

  while (v10 < 6);
  v13 = 3;
  v14 = a6;
  do
  {
    *v14 = *v14 - (v14[6] * a2);
    ++v14;
    --v13;
  }

  while (v13);
  v15 = (a6 + 12);
  v16 = 3;
  do
  {
    *v15 = *v15 - (v15[3] * a3);
    ++v15;
    --v16;
  }

  while (v16);
  return result;
}

float *_updateTileBoundingBox(float *result, uint64_t a2, _WORD *a3)
{
  v3 = 0;
  v4 = result[6];
  v5 = result[7];
  v6 = result[8];
  v7 = *result;
  v8 = result[1];
  v9 = result[2];
  v10 = result[3];
  v11 = result[4];
  v12 = result[5];
  LOWORD(v13) = *a3;
  LOWORD(v14) = a3[1];
  LOWORD(v15) = a3[2];
  LOWORD(v16) = a3[3];
  do
  {
    v17 = *(&v22 + v3);
    v18 = *(&v22 + v3 + 2);
    v19 = (v6 + ((v5 * v18) + (v4 * v17)));
    if (fabs(v19) > 0.00000001)
    {
      v19 = 1.0 / v19;
    }

    v20 = v19 * (v9 + ((v8 * v18) + (v7 * v17)));
    if (v20 < v13)
    {
      v13 = v20;
      *a3 = v20;
    }

    if (v20 > v14)
    {
      v14 = (v20 + 1.0);
      a3[1] = v14;
    }

    v21 = v19 * (v12 + ((v11 * v18) + (v10 * v17)));
    if (v21 < v15)
    {
      v15 = v21;
      a3[2] = v21;
    }

    if (v21 > v16)
    {
      v16 = (v21 + 1.0);
      a3[3] = v16;
    }

    v3 += 4;
  }

  while (v3 != 16);
  return result;
}

uint64_t portIndexFromPortType(const void *a1, int *a2)
{
  if (!a1)
  {
    portIndexFromPortType_cold_2(&v7);
    return v7;
  }

  if (!a2)
  {
    portIndexFromPortType_cold_1(&v6);
    return v6;
  }

  if (CFEqual(a1, kFigCapturePortType_BackFacingCamera))
  {
    result = 0;
    *a2 = 0;
    return result;
  }

  if (CFEqual(a1, kFigCapturePortType_BackFacingTelephotoCamera))
  {
    result = 0;
    v5 = 1;
LABEL_17:
    *a2 = v5;
    return result;
  }

  if (CFEqual(a1, kFigCapturePortType_BackFacingSuperWideCamera))
  {
    result = 0;
    v5 = 2;
    goto LABEL_17;
  }

  if (CFEqual(a1, kFigCapturePortType_FrontFacingCamera))
  {
    result = 0;
    v5 = 3;
    goto LABEL_17;
  }

  if (CFEqual(a1, kFigCapturePortType_FrontFacingSuperWideCamera))
  {
    result = 0;
    v5 = 4;
    goto LABEL_17;
  }

  if (CFEqual(a1, kFigCapturePortType_FrontFacingInfraredCamera))
  {
    result = 0;
    v5 = 5;
    goto LABEL_17;
  }

  if (CFEqual(a1, kFigCapturePortType_BackFacingSparseTimeOfFlightCamera))
  {
    result = 0;
    v5 = 6;
    goto LABEL_17;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t bravoTransitionCameraIndexFromPortType(const void *a1, int *a2)
{
  if (!a1)
  {
    bravoTransitionCameraIndexFromPortType_cold_2(&v7);
    return v7;
  }

  if (!a2)
  {
    bravoTransitionCameraIndexFromPortType_cold_1(&v6);
    return v6;
  }

  if (CFEqual(a1, kFigCapturePortType_BackFacingCamera))
  {
    result = 0;
    *a2 = 0;
    return result;
  }

  if (CFEqual(a1, kFigCapturePortType_BackFacingTelephotoCamera))
  {
    result = 0;
    v5 = 1;
LABEL_9:
    *a2 = v5;
    return result;
  }

  if (CFEqual(a1, kFigCapturePortType_BackFacingSuperWideCamera))
  {
    result = 0;
    v5 = 2;
    goto LABEL_9;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

void FigMotionQuaternionFromDeltaRotation(float *a1)
{
  v1 = sqrtf(((a1[1] * a1[1]) + (*a1 * *a1)) + (a1[2] * a1[2]));
  if (v1 > 1.0e-10)
  {
    __sincos_stret(v1 * 0.5);
  }
}

uint64_t FigMotionComputeLensPositionScalingFactor(const __CFDictionary *a1, int width, uint64_t a3, int a4, uint64_t a5, float *a6)
{
  if (!a1)
  {
    FigMotionComputeLensPositionScalingFactor_cold_5(&v17);
    return LODWORD(v17.x);
  }

  if (!a6)
  {
    FigMotionComputeLensPositionScalingFactor_cold_4(&v17);
    return LODWORD(v17.x);
  }

  size = CGRectZero.size;
  origin = CGRectZero.origin;
  v19 = CGRectZero.origin;
  v20 = size;
  SensorValidCropRect = FigMotionGetSensorValidCropRect(a1);
  if (SensorValidCropRect)
  {
    v13 = SensorValidCropRect;
    FigMotionComputeLensPositionScalingFactor_cold_1();
    return v13;
  }

  if (CFDictionaryContainsKey(a1, kFigCaptureStreamMetadata_ValidBufferRect))
  {
    v17 = origin;
    v18 = size;
    FigCFDictionaryGetCGRectIfPresent();
    if (size.height > 0.0 && v18.width > 0.0)
    {
      width = v18.width;
    }
  }

  v12 = v20.width;
  if (v12 <= 0.0)
  {
    FigMotionComputeLensPositionScalingFactor_cold_3(&v17);
    return LODWORD(v17.x);
  }

  if (a4 <= 0)
  {
    FigMotionComputeLensPositionScalingFactor_cold_2(&v17);
    return LODWORD(v17.x);
  }

  v13 = 0;
  *a6 = width / (a4 * v12);
  return v13;
}

uint64_t FigMotionGetSensorValidCropRect(const __CFDictionary *a1)
{
  if (CFDictionaryContainsKey(a1, kFigCaptureStreamMetadata_SensorRawValidBufferRect))
  {
    if (!FigCFDictionaryGetCGRectIfPresent())
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (CFDictionaryContainsKey(a1, kFigCaptureStreamMetadata_TotalSensorCropRect))
  {
    if (!FigCFDictionaryGetCGRectIfPresent())
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (CFDictionaryContainsKey(a1, kFigCaptureStreamMetadata_RawCropRect) && FigCFDictionaryGetCGRectIfPresent())
  {
    return 0;
  }

LABEL_10:
  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t FigMotionGetISPHallData(const __CFData *a1, uint64_t a2, int *a3, int a4)
{
  Length = CFDataGetLength(a1);
  if (Length <= 7)
  {
    FigMotionGetISPHallData_cold_3(&time);
  }

  else
  {
    v9 = Length;
    BytePtr = CFDataGetBytePtr(a1);
    if (*BytePtr >= 2u)
    {
      FigMotionGetISPHallData_cold_2(&time);
    }

    else
    {
      v11 = 16;
      if (*BytePtr == 1)
      {
        v11 = 24;
      }

      if (v9 == v11 * *(BytePtr + 1) + 8)
      {
        if (a3)
        {
          goto LABEL_7;
        }

LABEL_26:
        FigMotionGetISPHallData_cold_4(&time);
        return LODWORD(time.value);
      }

      FigMotionGetISPHallData_cold_1(&time);
    }
  }

  value_low = LODWORD(time.value);
  if (LODWORD(time.value))
  {
    fig_log_get_emitter();
    FigDebugAssert3();
    return value_low;
  }

  BytePtr = 0;
  if (!a3)
  {
    goto LABEL_26;
  }

LABEL_7:
  v12 = *(BytePtr + 1);
  if (v12 >= a4)
  {
    v12 = a4;
  }

  *a3 = v12;
  if (*BytePtr == 1)
  {
    if (v12 >= 1)
    {
      v18 = 0;
      v19 = (BytePtr + 16);
      v20 = (a2 + 12);
      do
      {
        v21 = FigHostTimeToNanoseconds();
        CMTimeMake(&time, v21, 1000000000);
        *(v20 - 3) = CMTimeGetSeconds(&time);
        *(v20 - 1) = *v19 * 0.0039062;
        *v20 = v19[1] * 0.0039062;
        v20[1] = v19[2] * 0.0039062;
        v20[2] = v19[3] * 0.0039062;
        ++v18;
        v19 += 6;
        v20 += 6;
      }

      while (v18 < *a3);
    }
  }

  else
  {
    if (*BytePtr)
    {
      return 4294954515;
    }

    if (v12 >= 1)
    {
      v13 = 0;
      v14 = (a2 + 16);
      v15 = (BytePtr + 20);
      do
      {
        v16 = FigHostTimeToNanoseconds();
        CMTimeMake(&time, v16, 1000000000);
        *(v14 - 2) = CMTimeGetSeconds(&time);
        *(v14 - 2) = *(v15 - 1) * 0.0039062;
        v17 = *v15;
        v15 += 4;
        *(v14 - 1) = v17 * 0.0039062;
        *v14 = 0.0;
        v14 += 3;
        ++v13;
      }

      while (v13 < *a3);
    }
  }

  return 0;
}

uint64_t FigMotionClearFocalLengthData(uint64_t a1)
{
  if (a1)
  {
    memset_pattern16((a1 + 484), &unk_43A70, 0xCuLL);
    memset_pattern16((a1 + 496), &unk_43A70, 0xCuLL);
    memset_pattern16((a1 + 508), &unk_43A70, 0xCuLL);
    return 0;
  }

  else
  {
    FigMotionClearFocalLengthData_cold_1(&v3);
    return v3;
  }
}

uint64_t FigMotionStashQuadraBinningFactor(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    FigCFDictionaryGetInt32IfPresent();
    return 0;
  }

  else
  {
    FigMotionStashQuadraBinningFactor_cold_1(&v3);
    return v3;
  }
}

uint64_t FigMotionStashFocalLengthData(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    FigCFDictionaryGetFloatIfPresent();
    FigCFDictionaryGetFloatIfPresent();
    FigCFDictionaryGetFloatIfPresent();
    return 0;
  }

  else
  {
    FigMotionStashFocalLengthData_cold_1(&v3);
    return v3;
  }
}

uint64_t FigMotionUpdateBaseZoomFactorAdjustment(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    FigCFDictionaryGetFloatIfPresent();
    return 0;
  }

  else
  {
    FigMotionUpdateBaseZoomFactorAdjustment_cold_1(&v3);
    return v3;
  }
}

uint64_t FigMotionComputeBravoTranslation(float a1, float a2, uint64_t a3, uint64_t a4, int a5, float32x2_t *a6, float32x2_t *a7)
{
  _S8 = a1;
  v36 = 0.0;
  if (!FigCFDictionaryGetFloatIfPresent())
  {
    if (!FigCFDictionaryGetFloatIfPresent() && !FigCFDictionaryGetFloatIfPresent())
    {
      FigMotionComputeBravoTranslation_cold_1(&v37);
      return v37;
    }

    v36 = 0.0 * a2;
  }

  v14 = *(a4 + 444);
  v35 = *(a4 + 4 + 8 * v14);
  _D1 = *(a4 + 4 + 8 * a5);
  v16 = BravoCurrentToReferenceMapping_0[3 * v14 + a5];
  v17 = (*(a4 + 4 * v16 + 80) * *(a4 + 40 + 4 * a5)) / *(a4 + 40 + 4 * v14);
  v18 = (*(a4 + 64 + 4 * a5) * _S8) / *(a4 + 64 + 4 * v14);
  v19 = COERCE_FLOAT(*a6) + (v17 * (v18 * *&v35));
  v20 = COERCE_FLOAT(HIDWORD(*a6)) - (COERCE_FLOAT(HIDWORD(*a6)) + (v17 * (v18 * *(&v35 + 1))));
  __asm { FMLA            S4, S8, V1.S[1] }

  v34.f32[0] = COERCE_FLOAT(*a6) + (_S8 * *&_D1);
  v34.i32[1] = _S4;
  v26 = a4 + 48 * v16;
  v27 = COERCE_FLOAT(*a6) - v19;
  *v13.i32 = ((v20 * *(v26 + 144)) + (*(v26 + 140) * v27)) + (*(v26 + 148) * v36);
  v28 = 0;
  if (fabsf(*v13.i32) > 0.00000001 && v36 > 0.00000001)
  {
    v30.i32[0] = *(v26 + 108);
    v31.i32[0] = *(v26 + 112);
    v29 = (v26 + 108);
    v32.i32[0] = v29[2];
    v31.i32[1] = v29[5];
    v30.i32[1] = v29[4];
    v32.i32[1] = v29[6];
    v28 = vsub_f32(vadd_f32(v34, vdiv_f32(vmul_n_f32(vmla_n_f32(vmla_n_f32(vmul_n_f32(v31, v20), v30, v27), v32, v36), v36), vdup_lane_s32(v13, 0))), *a6);
  }

  result = 0;
  *a7 = v28;
  return result;
}

void FigMotionComputeQuaternionForTimeStamp(uint64_t a1, void *a2, char *a3, double a4)
{
  v8 = a1 + 0x2000;
  v9 = *(a1 + 10257) == 0;
  if (a2)
  {
    *a2 = 0x3FF0000000000000;
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 0;
  }

  v10 = 0;
  v11 = flt_439E0[v9];
  v12 = a1 + 8;
  v13 = 1.0;
  v14 = -1;
  do
  {
    v15 = *(v12 + 8 * v10) - a4;
    v16 = fabsf(v15);
    if (v13 > v16)
    {
      v13 = v16;
      v14 = v10;
    }

    ++v10;
  }

  while (v10 != 256);
  if (v13 > v11 && !*(a1 + 10256))
  {
    low_freq_error_logging();
  }

  if (v14 != -1)
  {
    v17 = *(v12 + 8 * v14);
    if (v17 >= a4)
    {
      v23 = (v14 - 1);
      if (v14 + 255 <= 0)
      {
        v23 = -(1 - v14);
      }

      v21 = v23;
      v20 = *(v12 + 8 * v14);
      v17 = *(v12 + 8 * v23);
      v19 = v14;
    }

    else
    {
      if (v14 + 1 <= 0)
      {
        v18 = --(v14 + 1);
      }

      else
      {
        v18 = (v14 + 1);
      }

      v19 = v18;
      v20 = *(v12 + 8 * v18);
      v21 = v14;
    }

    v24 = vabdd_f64(v20, a4);
    v25 = v11;
    v27 = v20 >= a4 && v24 <= v25 && v17 <= a4;
    v28 = vabdd_f64(v17, a4);
    if (v27 && v28 <= v25)
    {
      if (vabdd_f64(v20, v17) > 0.000001)
      {
        v33 = (a4 - v17) / (v20 - v17);
        FigMotionInterpolateQuaternionsByAngle(a1 + 2056 + 32 * v21, (a1 + 2056 + 32 * v19), v33);
        *a2 = v34;
        a2[1] = v35;
        a2[2] = v36;
        a2[3] = v37;
        goto LABEL_34;
      }

      v30 = a1 + 32 * v21;
    }

    else
    {
      v30 = a1 + 32 * v14;
    }

    v31 = (v30 + 2056);
    v32 = v31[1];
    *a2 = *v31;
    *(a2 + 1) = v32;
LABEL_34:
    v22 = 1;
    goto LABEL_35;
  }

  if (!*(v8 + 2064))
  {
    low_freq_error_logging();
  }

  v22 = 0;
LABEL_35:
  *a3 = v22;
}

float64_t FigMotionMultiplyByInverseOfQuaternion(double *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = vnegq_f64(*(a2 + 1));
  v5 = -*(a2 + 3);
  return FigMotionMultiplyQuaternions(&v3, a1);
}

uint64_t FigMotionInitializeQuaternion(void *a1)
{
  if (!a1)
  {
    return 4294954516;
  }

  result = 0;
  *a1 = 0x3FF0000000000000;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  return result;
}

uint64_t low_freq_error_logging()
{
  FigGetUpTime();
  result = FigHostTimeToNanoseconds();
  if (low_freq_error_logging_last_log_0)
  {
    v1 = (result - low_freq_error_logging_last_log_0) >= 0x3B9ACA00;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    if (low_freq_error_logging_filtered_0)
    {
      low_freq_error_logging_filtered_0 = 0;
    }

    low_freq_error_logging_last_log_0 = result;
  }

  else
  {
    ++low_freq_error_logging_filtered_0;
  }

  return result;
}

void FigMotionInterpolateQuaternionsByAngle(uint64_t a1, double *a2, float a3)
{
  v18 = *a1;
  v19 = vnegq_f64(*(a1 + 8));
  v20 = -*(a1 + 24);
  v5 = FigMotionMultiplyQuaternions(&v18, a2);
  v8 = v7;
  v10 = v9;
  if (fabs(v5) <= 1.0)
  {
    v11 = v6;
    v12 = acos(v5);
    v13 = sin(v12);
    v14 = a3;
    v15 = v12 * v14;
    if (v13 <= 0.00000001)
    {
      cosval = cos(v15);
    }

    else
    {
      v16 = __sincos_stret(v15);
      cosval = v16.__cosval;
      v14 = v16.__sinval / v13;
    }

    v18 = cosval;
    v19.f64[0] = v8 * v14;
    v19.f64[1] = v10 * v14;
    v20 = v11 * v14;
    FigMotionMultiplyQuaternions(a1, &v18);
  }
}

uint64_t FigMotionComputeLensMovementAndSagForTimeStamp(uint64_t a1, float32x2_t *a2, float32x2_t *a3, int a4, double a5, float a6)
{
  *a2 = 0;
  if (a3)
  {
    *a3 = 0;
  }

  v8 = 0;
  v9 = a1 + (a4 << 12);
  v10 = v9 + 8;
  v11 = 1.0;
  v12 = -1;
  do
  {
    v13 = *(v10 + 8 * v8) - a5;
    v14 = fabsf(v13);
    if (v11 > v14)
    {
      v11 = v14;
      v12 = v8;
    }

    ++v8;
  }

  while (v8 != 512);
  if (v12 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v38 = v6;
  v39 = v7;
  v15 = *(a1 + 8 * a4 + 16392);
  if (!a3 || v15)
  {
    v16 = v9 + 8200;
    v17 = v12;
    v18 = *(v10 + 8 * v12);
    if (v18 >= a5)
    {
      v27 = v12 + 511;
      v20 = -v27 < 0;
      v28 = -v27 & 0x1FF;
      v29 = v27 & 0x1FF;
      if (v20)
      {
        v30 = v29;
      }

      else
      {
        v30 = -v28;
      }

      v25 = v30;
      v24 = v18;
      v18 = *(v10 + 8 * v30);
      v23 = v17;
    }

    else
    {
      v19 = v12 + 1;
      v20 = -v19 < 0;
      v21 = -v19 & 0x1FF;
      v22 = v19 & 0x1FF;
      if (!v20)
      {
        v22 = -v21;
      }

      v23 = v22;
      v24 = *(v10 + 8 * v22);
      v25 = v17;
    }

    if (v24 >= a5 && (vabdd_f64(v24, a5) <= 0.00200000009 ? (v31 = v18 <= a5) : (v31 = 0), v31 && vabdd_f64(v18, a5) <= 0.00200000009))
    {
      if (vabdd_f64(v24, v18) > 0.000001)
      {
        v34 = v24 - v18;
        v35 = (a5 - v18) / v34;
        v36 = vmla_n_f32(vmul_n_f32(*(v16 + 8 * v23), v35), *(v16 + 8 * v25), 1.0 - v35);
        *a2 = v36;
        if (a3)
        {
          *&v34 = 1.0 - v35;
          *a3 = vmla_f32(vmul_n_f32(*(v15 + 8 * v23), v35), vdup_lane_s32(*&v34, 0), *(v15 + 8 * v25));
          goto LABEL_29;
        }

        goto LABEL_36;
      }

      v32 = *(v16 + 8 * v25);
      *a2 = v32;
      if (a3)
      {
        v33 = *(v15 + 8 * v25);
        goto LABEL_28;
      }
    }

    else
    {
      v32 = *(v16 + 8 * v17);
      *a2 = v32;
      if (a3)
      {
        v33 = *(v15 + 8 * v17);
LABEL_28:
        *a3 = v33;
LABEL_29:
        result = 0;
        *a2 = vmul_n_f32(*a2, a6);
        *a3 = vmul_n_f32(*a3, a6);
        return result;
      }
    }

    v36 = v32;
LABEL_36:
    result = 0;
    *a2 = vmul_n_f32(v36, a6);
    return result;
  }

  FigMotionComputeLensMovementAndSagForTimeStamp_cold_1(&v37);
  return v37;
}

double FigMotionPreMultiplyScalingTranslationToTransform(uint64_t a1, int8x16_t a2, int32x4_t a3, float a4, float a5, int8x16_t a6)
{
  a6.i32[0] = *(a1 + 24);
  v6 = a3;
  *&v6.i32[1] = a5;
  v7 = vzip1q_s32(v6, v6);
  v7.i32[2] = a3.i32[0];
  v8 = a2;
  *&v8.i32[1] = a4;
  v9 = vzip1q_s32(v8, v8);
  v9.i32[2] = a2.i32[0];
  a2.i64[0] = *(a1 + 28);
  v10 = vextq_s8(vextq_s8(a6, a6, 4uLL), a2, 0xCuLL);
  v10.i32[3] = v10.i32[0];
  *a1 = vmlaq_f32(vmulq_f32(v10, v7), *a1, v9);
  *a2.i8 = vmla_n_f32(vmul_n_f32(*a2.i8, a5), *(a1 + 16), a4);
  *(a1 + 16) = a2.i64[0];
  return *a2.i64;
}

float FigMotionPostMultiplyScalingTranslationToTransform(float *a1, float a2, float a3, float a4, float a5)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[6];
  v10 = a1[7];
  v11 = (a1[2] + (a5 * v6)) + (a3 * *a1);
  v12 = (a1[5] + (a5 * v8)) + (a3 * v7);
  a1[8] = (a1[8] + (a5 * v10)) + (a3 * v9);
  v13 = v5 * a2;
  a1[2] = v11;
  a1[3] = v7 * a2;
  result = v9 * a2;
  *a1 = v13;
  a1[1] = v6 * a4;
  a1[4] = v8 * a4;
  a1[5] = v12;
  a1[6] = result;
  a1[7] = v10 * a4;
  return result;
}

double FigMotionApplyDigitalZoomToTransform(int a1, float *a2, int8x16_t a3, int32x4_t a4, double a5, double a6, int8x16_t a7)
{
  if (*a3.i32 > 0.0)
  {
    *a7.i32 = 1.0 / *a3.i32;
    if (a1)
    {
      v7 = 1.0 / *a3.i32;
    }

    else
    {
      v7 = *a3.i32;
    }

    v8 = *a4.i64;
    *a4.i32 = (1.0 - v7) * v8;
    v9 = a5;
    v10 = (1.0 - v7) * v9;
    if (a1)
    {
      *a3.i32 = FigMotionPostMultiplyScalingTranslationToTransform(a2, 1.0 / *a3.i32, *a4.i32, *a7.i32, v10);
    }

    else
    {
      *a3.i64 = FigMotionPreMultiplyScalingTranslationToTransform(a2, a3, a4, *a3.i32, v10, a7);
    }
  }

  return *a3.i64;
}

double FigMotionComputeTransformFromRotation(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v6 = *a3;
  v7 = a3[1];
  *(a4 + 32) = *(a3 + 8);
  *a4 = v6;
  *(a4 + 16) = v7;
  *&v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  FigMotionPostMultiplyScalingTranslationToTransform(a4, 1.0 / *a2, -*&v7 / *a2, 1.0 / *a2, -v8 / *a2);
  v10.i32[0] = *a1;
  v11.i64[0] = *(a1 + 8);
  *v11.i32 = *v11.i64;
  v12 = *(a1 + 16);
  v13 = *a1;

  return FigMotionPreMultiplyScalingTranslationToTransform(a4, v10, v11, v13, v12, v9);
}

double FigMotionAdjustBravoDataForReferenceCamera(uint64_t a1)
{
  if (a1)
  {
    if ((*a1 & 6) != 0)
    {
      _computeExtrinsicMatrixBetweenCamera(a1, 0, 6, 2);
      _computeExtrinsicMatrixBetweenCamera(a1, 5, 4, 2);
      _invertExtrinsicMatrixStoredInBravoData(a1, 2, 1);
      _computeExtrinsicMatrixBetweenCamera(a1, 1, 6, 4);
      _invertExtrinsicMatrixStoredInBravoData(a1, 0, 1);
      _invertExtrinsicMatrixStoredInBravoData(a1, 0, 2);
      result = 0.0;
      *(a1 + 396) = 0u;
      *(a1 + 412) = 0u;
      *(a1 + 428) = 0u;
      *(a1 + 396) = 1065353216;
      *(a1 + 416) = 1065353216;
      *(a1 + 436) = 1065353216;
    }
  }

  return result;
}

uint64_t _computeExtrinsicMatrixBetweenCamera(uint64_t a1, int a2, int a3, int a4)
{
  v4 = 0;
  v5 = a1 + 108;
  v6 = (a1 + 108 + 48 * a3);
  v7 = (a1 + 108 + 48 * a4);
  v8 = v34;
  v9 = v33;
  v10 = v6;
  v11 = v7;
  do
  {
    v12 = 0;
    v13 = v9;
    do
    {
      *&v8[8 * v12] = v10[v12];
      *v13 = v11[v12];
      v13 += 3;
      ++v12;
    }

    while (v12 != 3);
    ++v4;
    v8 += 24;
    ++v9;
    v11 += 4;
    v10 += 4;
  }

  while (v4 != 3);
  v14 = 0;
  v15 = v33;
  do
  {
    v16 = 0;
    v17 = v34;
    do
    {
      v18 = 0;
      v19 = 0.0;
      v20 = v17;
      do
      {
        v21 = *v20;
        v20 += 3;
        v19 = v19 + *&v15[v18] * v21;
        v18 += 8;
      }

      while (v18 != 24);
      *&v32[6 * v14 + 3 + 2 * v16++] = v19;
      ++v17;
    }

    while (v16 != 3);
    ++v14;
    v15 += 24;
  }

  while (v14 != 3);
  v22 = 0;
  v23 = 0;
  v24 = v6[7] - v7[7];
  v25 = v5 + 48 * a2;
  v32[0] = v6[3] - v7[3];
  v32[1] = v24;
  v32[2] = v6[11] - v7[11];
  v26 = v25;
  do
  {
    v27 = 0;
    v28 = (4 * v23) | 3;
    *(v25 + 4 * v28) = 0;
    result = v22;
    do
    {
      v30 = *(&v32[3] + result);
      *(v26 + v27 * 4) = v30;
      v31 = *(v25 + 4 * v28) + *&v33[result] * v32[v27];
      *(v25 + 4 * v28) = v31;
      ++v27;
      result += 8;
    }

    while (v27 != 3);
    ++v23;
    v22 += 24;
    v26 += 16;
  }

  while (v23 != 3);
  return result;
}

float _invertExtrinsicMatrixStoredInBravoData(uint64_t a1, int a2, int a3)
{
  v3 = 0;
  v4 = BravoCurrentToReferenceMapping_0[3 * a3 + a2];
  v5 = (a1 + 108 + 48 * BravoCurrentToReferenceMapping_0[3 * a2 + a3]);
  do
  {
    *(a1 + 108 + 48 * v4 + v3 * 4) = v5[dword_43A1C[v3]];
    ++v3;
  }

  while (v3 != 12);
  v6 = (a1 + 48 * v4 + 120);
  v7 = 3;
  do
  {
    result = -(((*(v6 - 2) * v5[7]) + (*(v6 - 3) * v5[3])) + (*(v6 - 1) * v5[11]));
    *v6 = result;
    v6 += 4;
    --v7;
  }

  while (v7);
  return result;
}

uint64_t FigMotionGetBravoDataFromDictionary(const __CFDictionary *a1, uint64_t a2)
{
  if (a1 && a2)
  {
    Value = CFDictionaryGetValue(a1, kFigCapturePortType_BackFacingCamera);
    if (Value)
    {
      v5 = Value;
      v6 = CFDictionaryGetValue(a1, kFigCapturePortType_BackFacingTelephotoCamera);
      v7 = CFDictionaryGetValue(a1, kFigCapturePortType_BackFacingSuperWideCamera);
      if (v6 | v7)
      {
        v8 = v7;
        memset_pattern16((a2 + 28), &unk_43A60, 0xCuLL);
        memset_pattern16((a2 + 40), &unk_43A60, 0xCuLL);
        *(a2 + 64) = 0x100000001;
        *(a2 + 72) = 1;
        v9 = a2 + 108;
        v10 = 80;
        do
        {
          *(a2 + v10) = 1065353216;
          *v9 = 0uLL;
          *(v9 + 16) = 0uLL;
          *(v9 + 32) = 0uLL;
          *v9 = 1065353216;
          v10 += 4;
          *(v9 + 20) = 1065353216;
          *(v9 + 40) = 1065353216;
          v9 += 48;
        }

        while (v10 != 108);
        if (v6 && (v11 = FigMotionExtractCameraInfo(v6, a2, 1u, 2), v11))
        {
          v17 = v11;
          FigMotionGetBravoDataFromDictionary_cold_1();
        }

        else if (v8 && (v12 = FigMotionExtractCameraInfo(v8, a2, 2u, 4), v12))
        {
          v17 = v12;
          FigMotionGetBravoDataFromDictionary_cold_2();
        }

        else
        {
          CameraInfo = FigMotionExtractCameraInfo(v5, a2, 0, 6);
          if (CameraInfo)
          {
            v17 = CameraInfo;
            FigMotionGetBravoDataFromDictionary_cold_3();
          }

          else
          {
            for (i = 0; i != 3; ++i)
            {
              v15 = 0;
              v16 = dword_43A4C[i];
              do
              {
                *(a2 + 80 + 4 * BravoCurrentToReferenceMapping_0[3 * v16 + dword_43A4C[v15]]) = *(a2 + 28 + 4 * dword_43A4C[v15]) / *(a2 + 28 + 4 * v16);
                ++v15;
              }

              while (v15 != 3);
            }

            return 0;
          }
        }
      }

      else
      {
        FigMotionGetBravoDataFromDictionary_cold_4(&v19);
        return v19;
      }
    }

    else
    {
      FigMotionGetBravoDataFromDictionary_cold_5(&v20);
      return v20;
    }
  }

  else
  {
    FigMotionGetBravoDataFromDictionary_cold_6(&v21);
    return v21;
  }

  return v17;
}

uint64_t FigMotionExtractCameraInfo(const __CFDictionary *a1, uint64_t a2, unsigned int a3, int a4)
{
  v7 = a3;
  if (a1)
  {
    if (FigCFDictionaryGetFloatIfPresent())
    {
      v8 = 0.0;
      if (0.0 <= 1.0e-10)
      {
        v8 = 1.0;
      }

      *(a2 + 28 + 4 * v7) = v8;
      goto LABEL_6;
    }

    FigMotionExtractCameraInfo_cold_1(&point);
  }

  else
  {
    FigMotionExtractCameraInfo_cold_2(&point);
  }

  x_low = LODWORD(point.x);
  if (LODWORD(point.x))
  {
    goto LABEL_28;
  }

LABEL_6:
  Value = CFDictionaryGetValue(a1, kFigCaptureCameraInfoKey_CameraViewMatrix);
  if (Value)
  {
    v10 = Value;
    if (CFDataGetLength(Value) == 48)
    {
      v21.location = 0;
      v21.length = 48;
      CFDataGetBytes(v10, v21, (a2 + 48 * a4 + 108));
      goto LABEL_9;
    }

    FigMotionExtractCameraInfo_cold_3(&point);
  }

  else
  {
    FigMotionExtractCameraInfo_cold_4(&point);
  }

  x_low = LODWORD(point.x);
  if (LODWORD(point.x))
  {
LABEL_28:
    fig_log_get_emitter();
    FigDebugAssert3();
    return x_low;
  }

LABEL_9:
  v11 = a2 + 64;
  if (a1)
  {
    if (FigCFDictionaryGetFloatIfPresent())
    {
      x_low = 0;
      *(a2 + 52 + 4 * v7) = 0;
      *(v11 + 4 * v7) = 1;
      goto LABEL_12;
    }

    FigMotionExtractCameraInfo_cold_5(&point);
  }

  else
  {
    FigMotionExtractCameraInfo_cold_6(&point);
  }

  x_low = LODWORD(point.x);
LABEL_12:
  v13 = kFigCaptureCameraInfoKey_OpticalCenterOffsetInPhysicalSensorDimensions;
  if (CFDictionaryContainsKey(a1, kFigCaptureCameraInfoKey_OpticalCenterOffsetInPhysicalSensorDimensions))
  {
    v14 = CFDictionaryGetValue(a1, v13);
    if (v14)
    {
      v15 = a2 + 8 * v7;
      point = CGPointZero;
      CGPointMakeWithDictionaryRepresentation(v14, &point);
      v16 = point;
LABEL_17:
      *(v15 + 4) = vcvt_f32_f64(v16);
      goto LABEL_18;
    }

    FigMotionExtractCameraInfo_cold_7();
  }

  else
  {
    v17 = *(v11 + 4 * v7);
    v18 = CFDictionaryGetValue(a1, kFigCaptureCameraInfoKey_OpticalCenterOffset);
    if (v18)
    {
      v15 = a2 + 8 * v7;
      point = CGPointZero;
      CGPointMakeWithDictionaryRepresentation(v18, &point);
      v16 = vmulq_n_f64(point, v17);
      goto LABEL_17;
    }

    FigMotionExtractCameraInfo_cold_8();
  }

LABEL_18:
  if (x_low)
  {
    FigMotionExtractCameraInfo_cold_9();
  }

  return x_low;
}

float64_t FigMotionMultiplyQuaternions(double *a1, double *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  v6 = a1[2];
  v7 = a1[3];
  v9 = a2[2];
  v8 = a2[3];
  v10 = *a2 * v7 + *a1 * v8 + v3 * v9 - v6 * v4;
  v13 = *a2 * v6 + *a1 * v9 + v7 * v4 - v3 * v8;
  v14 = v10;
  v12.f64[0] = v2 * v5 - v3 * v4 - v6 * v9 - v7 * v8;
  v12.f64[1] = v3 * v5 + v2 * v4 + v6 * v8 - v7 * v9;
  FigMotionNormalizeQuaternion(&v12);
  return v12.f64[0];
}

uint64_t FigMotionNormalizeQuaternion(float64x2_t *a1)
{
  if (a1)
  {
    _Q1 = a1[1];
    _D3 = _Q1.f64[1];
    __asm { FMLA            D2, D3, V1.D[1] }

    v8 = sqrt(_D2);
    if (v8 <= 0.00000001)
    {
      FigMotionNormalizeQuaternion_cold_1(&v12);
      return v12;
    }

    else
    {
      v9 = 0;
      v10 = 1.0 / v8;
      *a1 = vmulq_n_f64(*a1, v10);
      a1[1] = vmulq_n_f64(_Q1, v10);
    }
  }

  else
  {
    FigMotionNormalizeQuaternion_cold_2(&v13);
    return v13;
  }

  return v9;
}

uint64_t FigMotionComputeAverageSpherePosition()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v24 = 0;
  valuePtr = 0.0;
  Value = CFDictionaryGetValue(v0, kFigCaptureStreamMetadata_ExposureTime);
  if (!Value)
  {
    FigMotionComputeAverageSpherePosition_cold_3(v25);
    return LODWORD(v25[0]);
  }

  CFNumberGetValue(Value, kCFNumberFloat64Type, &valuePtr);
  v7 = CFDictionaryGetValue(v5, kFigCaptureStreamMetadata_FrameRollingShutterSkew);
  if (!v7)
  {
    FigMotionComputeAverageSpherePosition_cold_2(v25);
    return LODWORD(v25[0]);
  }

  CFNumberGetValue(v7, kCFNumberSInt32Type, &v24);
  v8 = v24;
  v9 = valuePtr;
  *v2 = 0;
  v27 = 0;
  *v2 = 0;
  v10 = CFDictionaryGetValue(v5, kFigCaptureStreamMetadata_ISPHallData);
  if (v10)
  {
    ISPHallData = FigMotionGetISPHallData(v10, v25, &v27, 510);
    if (ISPHallData)
    {
      v21 = ISPHallData;
      FigMotionComputeAverageSpherePosition_cold_1();
      return v21;
    }

    v12 = v27;
    if (v27 >= 1)
    {
      v13 = 0;
      v14 = v4 + v9 * -0.5;
      v15 = v8 / 1000000.0 + v14;
      v16 = &v26;
      v17 = v27;
      do
      {
        v18 = *&v16[-1];
        if (v18 >= v14 && v18 <= v15)
        {
          *v2 = vadd_f32(*v16, *v2);
          ++v13;
        }

        v16 += 3;
        --v17;
      }

      while (v17);
      if (v13)
      {
        *&v15 = v13;
        *v2 = vdiv_f32(*v2, vdup_lane_s32(*&v15, 0));
      }

      else
      {
        v20 = v12 - 1;
        if (*v25 > v15)
        {
          v20 = 0;
        }

        *v2 = v25[3 * v20 + 1];
        low_freq_error_logging();
      }
    }
  }

  return 0;
}

float FigMotionAdjustParallaxShiftForScalingFactor(float result, double a2, float a3, float a4)
{
  if (a3 > 0.0 && vabds_f32(a3, a4) > 0.001)
  {
    return result * (a4 / a3);
  }

  return result;
}

uint64_t FigMotionAdjustPointForSphereMovement(uint64_t a1, float64x2_t *a2, float a3, float a4)
{
  if (a1)
  {
    v7 = FigMotionComputeAverageSpherePosition();
    if (v7)
    {
      FigMotionAdjustPointForSphereMovement_cold_1();
    }

    else
    {
      *a2 = vaddq_f64(*a2, vcvtq_f64_f32(vmul_n_f32(0, a3 * a4)));
    }
  }

  else
  {
    FigMotionAdjustPointForSphereMovement_cold_2(&v9);
    return v9;
  }

  return v7;
}

uint64_t FigMotionMapPointFromRawToBuffer(const __CFDictionary *a1, uint64_t a2, int a3, int a4, float64x2_t *a5, float64_t a6, float64_t a7, float a8)
{
  if (a1 && a5)
  {
    size = CGRectZero.size;
    origin = CGRectZero.origin;
    v31 = CGRectZero.origin;
    SensorValidCropRect = FigMotionGetSensorValidCropRect(a1);
    if (SensorValidCropRect)
    {
      FigMotionMapPointFromRawToBuffer_cold_1();
    }

    else
    {
      FigCFDictionaryGetCGRectIfPresent();
      v33.origin = origin;
      v33.size = size;
      v34.origin.x = CGRectZero.origin.x;
      v34.origin.y = CGRectZero.origin.y;
      v34.size.width = CGRectZero.size.width;
      v34.size.height = CGRectZero.size.height;
      if (CGRectEqualToRect(v33, v34))
      {
        v14 = -1;
      }

      else
      {
        v14 = 0;
      }

      v15 = vdupq_n_s64(v14);
      v16.i64[0] = a2;
      v16.i64[1] = SHIDWORD(a2);
      v17 = vbslq_s8(v15, vcvtq_f64_s64(v16), size);
      __asm { FMOV            V1.2D, #-1.0 }

      v16.i64[0] = a3;
      v16.i64[1] = a4;
      __asm { FMOV            V5.2D, #0.5 }

      v24 = vmlaq_f64(vbicq_s8(origin, v15), _Q5, vaddq_f64(v17, _Q1));
      v25 = vmlaq_f64(v31, _Q5, vaddq_f64(size, _Q1));
      _Q5.f64[0] = a6;
      _Q5.f64[1] = a7;
      *a5 = vmlaq_f64(v24, vcvtq_f64_s64(v16), vmulq_n_f64(vsubq_f64(_Q5, v25), a8));
    }
  }

  else
  {
    FigMotionMapPointFromRawToBuffer_cold_2(&v32);
    return v32;
  }

  return SensorValidCropRect;
}

uint64_t FigMotionComputeRawSensorCenterInBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 && a5)
  {
    FigCFDictionaryGetIntIfPresent();
    FigMotionComputeRawSensorCenterInBuffer_cold_2(&v6);
  }

  else
  {
    FigMotionComputeRawSensorCenterInBuffer_cold_3(&v6);
  }

  return v6;
}

uint64_t FigMotionComputeParallaxShift(float a1, float a2, float a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v27 = NAN;
  if (a5)
  {
    v14 = *(a5 + 524);
  }

  else
  {
    v14 = 0.0;
  }

  *a8 = 0;
  FloatIfPresent = FigCFDictionaryGetFloatIfPresent();
  v16 = FigCFDictionaryGetFloatIfPresent();
  result = FigCFDictionaryGetFloatIfPresent();
  if (v16)
  {
    v18 = FloatIfPresent == 0;
  }

  else
  {
    v18 = 1;
  }

  v20 = v18 || a7 != 0;
  if (a5 && (v20 & 1) != 0)
  {
    v21 = a5 + 4 * *(a5 + 448);
    v22 = *(v21 + 484);
    v27 = *(v21 + 496);
    v23 = 1.0;
  }

  else
  {
    v23 = 1.0;
    v22 = NAN;
  }

  v24 = v22 + -10.0;
  v25 = 0.0;
  if (v27 > 0.0 && v24 > v27)
  {
    v25 = ((v23 * NAN) * a3) / fmaxf(((v24 * v27) / (v24 - v27)) / 1000.0, v14);
  }

  *a8 = v25 * a1;
  *(a8 + 4) = v25 * a2;
  return result;
}

uint64_t FigMotionHardwareAvailable()
{
  v4 = 0u;
  v5 = 0u;
  *__big = 0u;
  v3 = 0u;
  v1 = 64;
  if ((FigMotionHardwareAvailable_checked & 1) == 0)
  {
    FigMotionHardwareAvailable_available = 1;
    if (!sysctlbyname("hw.model", __big, &v1, 0, 0) && strnstr(__big, "DEV", 0x40uLL))
    {
      FigMotionHardwareAvailable_available = 0;
    }

    FigMotionHardwareAvailable_checked = 1;
  }

  return FigMotionHardwareAvailable_available;
}

uint64_t GVSApplyDistortionToTransforms(int32x2_t *a1, id *a2, uint64_t a3)
{
  if (!a1 || !a2 || !a3)
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_0_1();
    FigDebugAssert3();
    OUTLINED_FUNCTION_2();
    v34 = FigSignalErrorAtGM();
    v7 = 0;
    v5 = 0;
    goto LABEL_22;
  }

  v5 = *a2;
  v6 = a2[1];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 isValid];
    if (v5)
    {
LABEL_6:
      v9 = [v5 isValid];
      goto LABEL_9;
    }
  }

  else
  {
    v8 = 0;
    if (v5)
    {
      goto LABEL_6;
    }
  }

  v9 = 0;
LABEL_9:
  if ((v8 | v9))
  {
    [v7 distortionCenter];
    v40 = v10;
    [v7 distortionCenter];
    v36 = v11;
    [v5 distortionCenter];
    v37 = v12;
    [v5 distortionCenter];
    v14 = a1[7].i32[0];
    if (v14 >= 1)
    {
      v15 = 0;
      v16 = 0;
      v17 = vadd_s32(vadd_s32(a1[1], a1[2]), -1);
      v18 = v40;
      *(&v19 + 1) = *(&v37 + 1);
      v20 = v13;
      v21 = a1[6].i32[1];
      v38 = HIDWORD(*&a1[1]);
      v22 = a1[1];
      do
      {
        if (v21 >= 1)
        {
          v23 = 0;
          v24 = __PAIR64__(v38, v22);
          v25 = (a3 + 36 * v16);
          do
          {
            *&v19 = vmin_s32(v24, v17);
            v41 = v19;
            if (v8)
            {
              [v7 computeInverseScalingAtPoint:COERCE_DOUBLE(vcvt_f32_s32(*&v19))];
              *v26.i64 = v18;
              FigMotionApplyDigitalZoomToTransform(1, v25, v27, v26, v36, v28, v29);
              v19 = v41;
            }

            if (v9)
            {
              v42 = SDWORD1(v19);
              v43 = v19;
              GVSComputePerspectiveProjectedPoint(v25, &v43, &v42, v19, SDWORD1(v19));
              [v5 computeScalingAtPoint:{COERCE_DOUBLE(__PAIR64__(LODWORD(v42), LODWORD(v43)))}];
              *v30.i64 = *&v37;
              FigMotionApplyDigitalZoomToTransform(0, v25, v31, v30, v20, v32, v33);
              v19 = v41;
            }

            ++v23;
            v21 = a1[6].i32[1];
            v24.i32[0] = v19;
            v24.i32[1] = a1[7].i32[1] + DWORD1(v19);
            v25 += 9;
            ++v16;
          }

          while (v23 < v21);
          v14 = a1[7].i32[0];
          v22 = v19;
        }

        ++v15;
        v22 += a1[8].u32[0];
      }

      while (v15 < v14);
    }
  }

  v34 = 0;
LABEL_22:

  return v34;
}

void GVSExtractGDCPolynomialFromCameraInfoByPortType_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  FigDebugAssert3();
  OUTLINED_FUNCTION_5();
  *v2 = FigSignalErrorAtGM();
}

void GVSExtractGDCPolynomialFromCameraInfoByPortType_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  FigDebugAssert3();
  OUTLINED_FUNCTION_5();
  *v2 = FigSignalErrorAtGM();
}

uint64_t GVSExtractGDCPolynomialFromCameraInfoByPortType_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t GVSExtractGDCPolynomialFromCameraInfoByPortType_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t GVSExtractGDCPolynomialFromCameraInfoByPortType_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t GVSExtractGDCPolynomialFromCameraInfoByPortType_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t GVSCheckDistortedTransformFits_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t GVSEstimatePaddingForDistortedTransformFits_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t GVSEstimatePaddingForDistortedTransformFits_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t GVSComputeGaussianAverageQuaternion_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t GVSComputeGaussianAverageQuaternion_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t GVSComputeSmoothedHorizonQuaternion_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t GVSComputeSmoothedHorizonQuaternion_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t GVSComputeSmoothRamp_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t GVSComputeSmoothedDigitalZoomFactor_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t GVSComputeSmoothedDigitalZoomFactor_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t GVSComputeDilatedTotalZoomFactor_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t GVSComputeDilatedTotalZoomFactor_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t GVSComputeSmoothedDilatedDigitalZoomFactor_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t GVSComputeSmoothedDilatedDigitalZoomFactor_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t GVSComputeSmoothedFaceQuaternion_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t GVSComputeSmoothedFaceQuaternion_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t sbp_gvs_finishPendingProcessing(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 24))
  {
    return 0;
  }

  v3 = DerivedStorage;
  v4 = DerivedStorage + 28672;
  *(DerivedStorage + 25) = 1;
  v5 = *(DerivedStorage + 29392);
  v6 = v5 - 1;
  if (v5 < 1)
  {
    StabilizedSampleBuffer = 0;
LABEL_46:
    v51 = *(v3 + 88);
    if (v51)
    {
      AffineTransformFinish(v51);
      [*(v3 + 30144) forceMetalCachesFlush];
      [*(v3 + 30152) forceMetalCachesFlush];
    }

    v52 = *(v3 + 112);
    if (v52)
    {
      [v52 finishProcessing];
    }

    v53 = *(v3 + 30064);
    if (v53)
    {
      [v53 finishProcessing];
    }

    v54 = *(v3 + 30128);
    if (v54)
    {
      [v54 finishProcessing];
    }

    v55 = *(v3 + 30136);
    if (v55)
    {
      [v55 finishProcessing];
    }

    if (*(v3 + 8))
    {
      sbp_emitPendingFrames(a1, 0, 0);
    }

    if (*(v4 + 720))
    {
      v56 = *(v4 + 724);
      if (v56 >= 1)
      {
        for (i = 0; i < v56; ++i)
        {
          v58 = *(*(v3 + 29368) + 8 * i);
          if (v58)
          {
            CFRelease(v58);
            *(*(v3 + 29368) + 8 * i) = 0;
            v56 = *(v4 + 724);
          }
        }
      }
    }

    _resetFirstFrameParameters(v3);
    *(v3 + 25) = 0;
    v59 = *(v3 + 29696);
    if (v59)
    {
      fclose(v59);
      *(v3 + 29696) = 0;
    }

    return StabilizedSampleBuffer;
  }

  else
  {
    v7 = 0;
    v115 = DerivedStorage + 29824;
    v8 = DerivedStorage + 30024;
    v109 = kFigCaptureVideoStabilizationOverscanAnalyticsKey_AverageLuxValue;
    v9 = DerivedStorage + 29992;
    v119 = kFigCaptureVideoStabilizationOverscanAnalyticsKey_PortIndex;
    v105 = kFigCaptureVideoStabilizationOverscanAnalyticsKey_OverscanArray;
    key = kFigVideoStabilizationSampleBufferAttachmentKey_OverscanAnalytics;
    v103 = kFigCaptureVideoDeghostingStatisticsKey_Enabled;
    v102 = kFigCaptureVideoDeghostingStatisticsKey_Version;
    v101 = kFigCaptureVideoDeghostingStatisticsKey_AverageGhostArea;
    v100 = kFigCaptureVideoDeghostingStatisticsKey_AverageGhostCount;
    v99 = kFigCaptureVideoDeghostingStatisticsKey_OpticalCenterOffsetMag;
    v98 = kFigCaptureVideoDeghostingStatisticsKey_OpticalCenterOffsetX;
    v97 = kFigCaptureVideoDeghostingStatisticsKey_OpticalCenterOffsetY;
    v96 = kFigCaptureVideoDeghostingStatisticsKey_OpticalCenterEstConfidence;
    v95 = kFigCaptureVideoDeghostingStatisticsKey_LightweightDetector1Precision;
    v94 = kFigCaptureVideoDeghostingStatisticsKey_LightweightDetector1Recall;
    v93 = kFigCaptureVideoDeghostingStatisticsKey_LightweightDetector2Precision;
    v92 = kFigCaptureVideoDeghostingStatisticsKey_LightweightDetector2Recall;
    v91 = kFigCaptureVideoDeghostingStatisticsKey_LightweightDetector3Precision;
    v90 = kFigCaptureVideoDeghostingStatisticsKey_LightweightDetector3Recall;
    v89 = kFigCaptureVideoDeghostingStatisticsKey_LightweightDetector4Precision;
    v88 = kFigCaptureVideoDeghostingStatisticsKey_LightweightDetector4Recall;
    v87 = kFigCaptureVideoDeghostingStatisticsKey_LightweightDetector5Precision;
    v86 = kFigCaptureVideoDeghostingStatisticsKey_LightweightDetector5Recall;
    v85 = kFigCaptureVideoDeghostingSampleBufferAttachmentKey_VideoDeghostingStatistics;
    v108 = a1;
    v107 = *(DerivedStorage + 29392);
    v106 = DerivedStorage + 28672;
    v112 = v5 - 1;
    while (1)
    {
      cf = 0;
      if (([*(v3 + 29400) centerIndex] & 0x80000000) != 0)
      {
        break;
      }

      v118 = v7;
      v10 = [*(v3 + 29400) centerIndex];
      if (v10 >= [*(v3 + 29400) size])
      {
        break;
      }

      StabilizedSampleBuffer = sbp_gvs_gaussianAverageGetStabilizedSampleBuffer(v3, &cf);
      v11 = v118;
      if (v118 == v6)
      {
        v12 = 0;
        v13 = 0;
        v14 = v115;
        do
        {
          if (*(v8 + 4 * v12))
          {
            v15 = 0;
            v16 = 0;
            do
            {
              v16 = (*(v14 + v15) + v16);
              v15 += 4;
            }

            while (v15 != 28);
            if (v16 >= 1)
            {
              for (j = 0; j != 28; j += 4)
              {
                *(v14 + j) = *(v14 + j) / v16;
              }

              v13 += v16;
            }
          }

          ++v12;
          v14 += 28;
        }

        while (v12 != 6);
        if (v13 >= 1)
        {
          v18 = 0;
          v19 = v13;
          do
          {
            *(v9 + v18) = *(v9 + v18) / v19;
            v18 += 4;
          }

          while (v18 != 28);
          *(v4 + 1348) = *(v4 + 1348) / v19;
        }

        v20 = cf;
        v21 = +[NSMutableDictionary dictionary];
        if (v21)
        {
          target = v20;
          v22 = v21;
          v113 = _createNSArray(v3 + 29992);
          [v22 setObject:? forKeyedSubscript:?];
          v23 = [NSNumber numberWithUnsignedInt:*(v4 + 1348)];
          [v22 setObject:v23 forKeyedSubscript:v109];

          v24 = +[NSMutableArray array];
          if (v24)
          {
            v25 = 0;
            v26 = v115;
            do
            {
              v27 = *(v8 + v25);
              if (v27)
              {
                v28 = +[NSMutableDictionary dictionary];
                if (v28)
                {
                  v29 = (v27 >> 16);
                  v30 = [NSNumber numberWithInt:v27];
                  [v28 setObject:v30 forKeyedSubscript:v119];

                  v31 = [NSNumber numberWithInt:v29];
                  [OUTLINED_FUNCTION_39() setObject:? forKeyedSubscript:?];

                  v32 = _createNSArray(v26);
                  [OUTLINED_FUNCTION_39() setObject:? forKeyedSubscript:?];
                  [v24 addObject:v28];
                }
              }

              v25 += 4;
              v26 += 28;
            }

            while (v25 != 24);
            v4 = v106;
            a1 = v108;
            v5 = v107;
            if ([v24 count])
            {
              [v22 setObject:v24 forKeyedSubscript:v105];
              CMSetAttachment(target, key, v22, 1u);
            }
          }

          v11 = v118;
          v21 = v22;
        }

        v33 = *(v3 + 30064);
        v34 = 30092;
        if (v33 == *(v3 + 30072))
        {
          v34 = 30088;
        }

        v6 = v112;
        if (*(v3 + v34) == 3 && v33 == *(v3 + 30080) && *(v4 + 1376) == 1)
        {
          if (v33)
          {
            v35 = cf;
            [v33 statistics];
            v36 = v123;
            if (v123 != 0.0)
            {
              v37 = v122;
              v38 = v124;
              v79 = v126;
              v81 = v125;
              v39 = v128;
              v40 = v131;
              v61 = v132;
              v63 = v133;
              v41 = v134;
              v65 = v135;
              v67 = v130;
              v69 = v136;
              v42 = v137;
              v70 = v138;
              v72 = v129;
              v74 = v139;
              v75 = v127;
              v43 = v140;
              v77 = v141;
              v78 = v142;
              v121[0] = v103;
              v116 = [NSNumber numberWithBool:*(v4 + 1376)];
              v122 = *&v116;
              v121[1] = v102;
              [NSNumber numberWithInt:3];
              v114 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              v123 = v114;
              v121[2] = v101;
              targeta = [NSNumber numberWithDouble:v37];
              v124 = *&targeta;
              v121[3] = v100;
              v84 = [NSNumber numberWithDouble:v36];
              v125 = *&v84;
              v121[4] = v99;
              v83 = [NSNumber numberWithDouble:v38];
              v126 = *&v83;
              v121[5] = v98;
              v82 = [NSNumber numberWithDouble:v81];
              v127 = *&v82;
              v121[6] = v97;
              [NSNumber numberWithDouble:v79];
              v80 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              v128 = v80;
              v121[7] = v96;
              [NSNumber numberWithDouble:v75];
              v76 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              v129 = v76;
              v121[8] = v95;
              [NSNumber numberWithDouble:v39 / (v39 + v72)];
              v73 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              v130 = v73;
              v121[9] = v94;
              [NSNumber numberWithDouble:v39 / (v39 + v67)];
              v68 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              v131 = v68;
              v121[10] = v93;
              [NSNumber numberWithDouble:v40 / (v40 + v61)];
              v62 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              v132 = v62;
              v121[11] = v92;
              [NSNumber numberWithDouble:v40 / (v40 + v63)];
              v64 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              v133 = v64;
              v121[12] = v91;
              [NSNumber numberWithDouble:v41 / (v41 + v65)];
              v66 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              v134 = v66;
              v121[13] = v90;
              [NSNumber numberWithDouble:v41 / (v41 + v69)];
              v44 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              v135 = v44;
              v121[14] = v89;
              [NSNumber numberWithDouble:v42 / (v42 + v70)];
              v71 = v35;
              v45 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              v136 = v45;
              v121[15] = v88;
              [NSNumber numberWithDouble:v42 / (v42 + v74)];
              v46 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              v137 = v46;
              v121[16] = v87;
              [NSNumber numberWithDouble:v43 / (v43 + v77)];
              v47 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              v138 = v47;
              v121[17] = v86;
              [NSNumber numberWithDouble:v43 / (v43 + v78)];
              v48 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              v139 = v48;
              v49 = [NSDictionary dictionaryWithObjects:&v122 forKeys:v121 count:18];

              v11 = v118;
              v5 = v107;

              a1 = v108;
              CMSetAttachment(v71, v85, v49, 1u);

              v6 = v112;
            }
          }
        }
      }

      v50 = cf;
      if (*(v3 + 8))
      {
        sbp_emitPendingFrames(a1, StabilizedSampleBuffer, cf);
        StabilizedSampleBuffer = 0;
        v50 = cf;
      }

      if (v50)
      {
        CFRelease(v50);
      }

      ++*(v3 + 36);
      v7 = v11 + 1;
      if (v7 == v5)
      {
        goto LABEL_46;
      }
    }

    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_23();
    FigDebugAssert3();
    OUTLINED_FUNCTION_42();
    return FigSignalErrorAtGM();
  }
}

void *_loadAndConfigureVideoDeghosting(void *a1, void *a2, void *a3, uint64_t a4, unsigned int *a5)
{
  v9 = a1;
  v26 = a2;
  v10 = a3;
  v11 = [v10 objectForKeyedSubscript:@"Version"];
  *a5 = [v11 intValue];

  v12 = [NSString stringWithFormat:@"%@V%d", @"VideoDeghosting", *a5];
  if (a4 < 1 || SHIDWORD(a4) <= 0)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM();
    v16 = 0;
    v14 = 0;
    v15 = 0;
    v23 = 0;
    v20 = 0;
LABEL_17:
    v21 = v26;
    goto LABEL_12;
  }

  v14 = [NSString stringWithFormat:@"%@/%@.bundle", @"/System/Library/VideoProcessors", v12];
  v15 = [NSString stringWithFormat:@"CMI%@V%d", @"VideoDeghosting", *a5];
  v16 = [NSBundle bundleWithPath:v14];
  if (!v16)
  {
    v17 = [NSString stringWithFormat:@"./%@.bundle", v12];
    v18 = [NSBundle bundleWithPath:v17];
    if (!v18)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_15();
      FigDebugAssert3();

      fig_log_get_emitter();
      OUTLINED_FUNCTION_39();
      FigDebugAssert3();
      fig_log_get_emitter();
      FigSignalErrorAtGM();
      v16 = 0;
      v23 = 0;
      v20 = 0;
      goto LABEL_17;
    }

    v16 = v18;
  }

  v27 = 0;
  v19 = [v16 loadAndReturnError:&v27];
  v20 = v27;
  if (!v19)
  {
    v23 = 0;
    goto LABEL_17;
  }

  v21 = v26;
  v22 = [objc_alloc(NSClassFromString(v15)) initWithCommandQueue:v26 imageDimensions:a4 tuningParameters:v10];
  v23 = v22;
  if (!v22 || [v22 prepareToProcess:0])
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_37();
    FigSignalErrorAtGM();
  }

  else
  {
    [v23 setCameraInfoByPortType:v9];
  }

LABEL_12:
  v24 = v23;

  return v23;
}

uint64_t sbp_setCameraExtrinsicAlignment(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 length] == &stru_20.fileoff)
  {
    v4 = [v3 bytes];
    v14 = 0u;
    v15 = 0u;
    v11 = GVSQuaternionFromRotationMatrix(v4, &v14, 0, v5, v6, v7, v8, v9, v10);
    if (!v11)
    {
      v12 = v15;
      *(a1 + 360) = v14;
      *(a1 + 376) = v12;
      *(a1 + 329) = 1;
    }
  }

  else
  {
    fig_log_get_emitter();
    v11 = FigSignalErrorAtGM();
  }

  return v11;
}

void _getPresentationTimeStampForSampleBuffer(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_41();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  *&v21->value = *&kCMTimeInvalid.value;
  v21->epoch = kCMTimeInvalid.epoch;
  if (v19)
  {
    v24 = kFigCaptureSampleBufferAttachmentKey_OriginalPresentationTimeStamp;
    v33 = v23;
    v25 = OUTLINED_FUNCTION_29();
    v27 = CMGetAttachment(v25, v26, 0);
    v28 = v33;
    if (!v28)
    {
      v28 = CMGetAttachment(v19, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
    }

    v29 = [v28 objectForKeyedSubscript:v24];

    if (v29)
    {
      v30 = [v28 objectForKeyedSubscript:v24];
      CMTimeMakeFromDictionary(v21, v30);
    }

    else if (v27)
    {
      CMTimeMakeFromDictionary(v21, v27);
    }

    else
    {
      CMSampleBufferGetPresentationTimeStamp(v21, v19);
    }
  }

  OUTLINED_FUNCTION_40();
}

id _shouldBypassSmartStyle(const void *a1)
{
  if (!a1)
  {
    v3 = 0;
    v2 = 0;
    goto LABEL_13;
  }

  v1 = CMGetAttachment(a1, kFigSampleBufferAttachmentKey_AttachedMedia, 0);
  v2 = v1;
  if (!v1)
  {
    v3 = 0;
    goto LABEL_13;
  }

  v3 = [v1 objectForKeyedSubscript:kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingLearnedCoefficients];

  if (!v3)
  {
LABEL_13:
    v7 = &dword_0 + 1;
    goto LABEL_10;
  }

  v4 = CMGetAttachment(v3, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
  v3 = v4;
  if (v4)
  {
    v5 = [v4 objectForKeyedSubscript:kFigCaptureSampleBufferMetadata_SmartStyleRenderingBypassedOverride];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 BOOLValue];
    }

    else
    {
      v8 = [v3 objectForKeyedSubscript:kFigCaptureSampleBufferMetadata_SmartStyleIsIdentityCoefficients];
      v7 = [v8 BOOLValue];
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_10:

  return v7;
}

uint64_t _runSmartStyleFilterForwardLearning(uint64_t a1, void *a2)
{
  memset(&timingArrayOut, 0, sizeof(timingArrayOut));
  v46 = 0;
  cf = 0;
  if (!a1 || !a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_7();
    FigDebugAssert3();
    v13 = 0;
LABEL_53:
    PixelBufferFromPool = 4294954516;
    goto LABEL_38;
  }

  v5 = (a1 + 27148);
  if (!*(a1 + 30108))
  {
    v13 = 0;
    goto LABEL_51;
  }

  OUTLINED_FUNCTION_38();
  if (v18)
  {
    _getPresentationTimeStampForSampleBuffer(a2, 0, v6, v7, v8, v9, v10, v11, v42, v43, v44, *v45, *&v45[8], *&v45[16], v46, cf, timingArrayOut.duration.value, *&timingArrayOut.duration.timescale);
    time = *v45;
    CMTimeGetSeconds(&time);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_24();
  }

  v12 = CMGetAttachment(a2, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
  v13 = v12;
  if (!v12)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_7();
    FigDebugAssert3();
    goto LABEL_53;
  }

  v14 = kFigCaptureSampleBufferMetadata_SmartStyleLearnedCoefficientsAreFiltered;
  v15 = [v12 objectForKeyedSubscript:kFigCaptureSampleBufferMetadata_SmartStyleLearnedCoefficientsAreFiltered];
  v16 = [v15 BOOLValue];

  if (v16)
  {
LABEL_51:
    PixelBufferFromPool = 0;
    goto LABEL_38;
  }

  v17 = *v5;
  if (!*v5)
  {
    v24 = _enqueueCoefficientsForSmartStyleFilterForwardLearning(a1, a2);
    if (v24)
    {
LABEL_47:
      PixelBufferFromPool = v24;
      fig_log_get_emitter();
      OUTLINED_FUNCTION_9();
      goto LABEL_48;
    }

    v26 = 3;
LABEL_25:
    if (*(a1 + 25))
    {
      if (*v5 == 2)
      {
        v27 = 66000;
      }

      else
      {
        v27 = 0;
      }

      if ((*v5 | 2) == 3)
      {
        v28 = 66000;
      }

      else
      {
        v28 = v27;
      }
    }

    else
    {
      v28 = 0;
    }

    v29 = kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingLearnedCoefficients;
    v30 = [*(a1 + 48) objectForKeyedSubscript:kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingLearnedCoefficients];
    v31 = [*(a1 + 56) objectForKeyedSubscript:v29];
    PixelBufferFromPool = sbp_gvs_getPixelBufferFromPool(v30, v31, 0, v28, 0, 0, &v46);

    if (PixelBufferFromPool)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_9();
      FigDebugAssert3();
      goto LABEL_38;
    }

    v33 = [*(a1 + 30136) utilities];
    _getPresentationTimeStampForSampleBuffer(a2, v13, v34, v35, v36, v37, v38, v39, v42, v43, v2, *v45, *&v45[8], *&v45[16], v46, cf, timingArrayOut.duration.value, *&timingArrayOut.duration.timescale);
    PixelBufferFromPool = [v33 filterCoefficientsForFrameWithMetadata:v13 pts:&time filterType:v26 toPixelBuffer:v46];

    if (!PixelBufferFromPool)
    {
      SampleTimingInfoArray = CMSampleBufferGetSampleTimingInfoArray(a2, 1, &timingArrayOut, 0);
      if (SampleTimingInfoArray)
      {
        PixelBufferFromPool = SampleTimingInfoArray;
        fig_log_get_emitter();
        OUTLINED_FUNCTION_9();
        goto LABEL_48;
      }

      PixelBufferFromPool = sbp_internalCreateSampleBufferWithNewPixelBuffer(v46, *(a1 + 64), v29, &timingArrayOut, &cf);
      if (!PixelBufferFromPool)
      {
        [v13 setObject:&__kCFBooleanTrue forKeyedSubscript:v14];
        _setAttachedMediaToSampleBuffer(a2, v29, cf);
        goto LABEL_38;
      }
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_9();
LABEL_48:
    FigDebugAssert3();
    goto LABEL_38;
  }

  v18 = v17 == 5 || v17 == 2;
  if (!v18 || (v19 = *(a1 + 30192)) == 0)
  {
LABEL_22:
    v26 = 1;
    goto LABEL_25;
  }

  Count = CFArrayGetCount(v19);
  if (Count < 1)
  {
LABEL_20:
    v25 = *(a1 + 30192);
    if (v25)
    {
      CFRelease(v25);
      *(a1 + 30192) = 0;
    }

    goto LABEL_22;
  }

  v21 = 0;
  v22 = Count & 0x7FFFFFFF;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 30192), v21);
    if (!ValueAtIndex)
    {
      break;
    }

    v24 = _enqueueCoefficientsForSmartStyleFilterForwardLearningFromCoefficientsSampleBuffer(a1, ValueAtIndex, v13);
    if (v24)
    {
      goto LABEL_47;
    }

    if (v22 == ++v21)
    {
      goto LABEL_20;
    }
  }

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  PixelBufferFromPool = FigSignalErrorAtGM();
LABEL_38:
  OUTLINED_FUNCTION_38();
  if (v18)
  {
    OUTLINED_FUNCTION_24();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v46)
  {
    CFRelease(v46);
  }

  return PixelBufferFromPool;
}

uint64_t _runSmartStyleApplyOnUnstabilizedImage(uint64_t a1, void *a2)
{
  v4 = v3;
  if (!a1 || !a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_6();
    FigDebugAssert3();
    OUTLINED_FUNCTION_31();
    v16 = 0;
LABEL_34:
    v39 = 0;
LABEL_36:
    v31 = 4294954516;
    goto LABEL_23;
  }

  v7 = a1 + 28672;
  OUTLINED_FUNCTION_38();
  if (v14)
  {
    _getPresentationTimeStampForSampleBuffer(a2, 0, v8, v9, v10, v11, v12, v13, v33, v34, v35, v36, v38, v40, v42, v43, time.value, *&time.timescale);
    time = v41;
    CMTimeGetSeconds(&time);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_24();
  }

  if (!*(v7 + 1432))
  {
    OUTLINED_FUNCTION_31();
    v16 = 0;
LABEL_31:
    v39 = 0;
    v31 = 0;
    goto LABEL_23;
  }

  v15 = CMGetAttachment(a2, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
  v16 = v15;
  if (!v15)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_6();
    FigDebugAssert3();
    v2 = 0;
LABEL_33:
    v4 = 0;
    goto LABEL_34;
  }

  v17 = kFigCaptureSampleBufferMetadata_SmartStyleAppliedOnThisFrame;
  v18 = [v15 objectForKeyedSubscript:kFigCaptureSampleBufferMetadata_SmartStyleAppliedOnThisFrame];
  v2 = [v18 BOOLValue];

  if (v2)
  {
    OUTLINED_FUNCTION_31();
    goto LABEL_31;
  }

  v2 = CMGetAttachment(a2, kFigSampleBufferAttachmentKey_AttachedMedia, 0);
  if (!v2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_6();
    FigDebugAssert3();
    goto LABEL_33;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(a2);
  v39 = v2;
  if (!ImageBuffer || (v20 = ImageBuffer, [v2 objectForKeyedSubscript:kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingUnstyledThumbnail], v21 = objc_claimAutoreleasedReturnValue(), v21, !v21))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_6();
    FigDebugAssert3();
    OUTLINED_FUNCTION_31();
    goto LABEL_36;
  }

  v37 = v16;
  v22 = CMSampleBufferGetImageBuffer(v21);
  if (!v22 || (v23 = v22, [v2 objectForKeyedSubscript:kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingLearnedCoefficients], v24 = objc_claimAutoreleasedReturnValue(), v24, !v24) || (v25 = CMSampleBufferGetImageBuffer(v24)) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_6();
    FigDebugAssert3();
    OUTLINED_FUNCTION_31();
    v31 = 4294954516;
LABEL_39:
    v16 = v37;
    goto LABEL_23;
  }

  v26 = v25;
  v27 = kFigCaptureSampleBufferAttachmentKey_SmartStyleMetalEvent;
  v2 = CMGetAttachment(a2, kFigCaptureSampleBufferAttachmentKey_SmartStyleMetalEvent, 0);
  v28 = objc_alloc_init(*(a1 + 30160));
  v4 = v28;
  if (!v28)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_7();
    FigDebugAssert3();
    v31 = 4294954510;
    goto LABEL_39;
  }

  [v28 setMetalSharedEvent:v2];
  [v4 setInputUnstyledPixelBuffer:v20];
  [v4 setInputUnstyledThumbnailPixelBuffer:v23];
  v16 = v37;
  [v4 setInputMetadataDict:v37];
  [v4 setInputStyleCoefficientsPixelBuffer:v26];
  [v4 setOutputStyledPixelBuffer:v20];
  updated = _updateSmartStyleGlobalMixFactor(a1, v37);
  if (updated || (LODWORD(v30) = *(v7 + 1540), [v4 setGlobalLinearSystemMixFactor:v30], objc_msgSend(*(a1 + 30136), "setInputOutput:", v4), updated = objc_msgSend(*(a1 + 30136), "process"), updated) || (updated = objc_msgSend(*(a1 + 30136), "finishProcessing"), updated) || (objc_msgSend(v37, "setObject:forKeyedSubscript:", &__kCFBooleanTrue, v17), !*(v7 + 1434)) && (updated = _removeSmartStyleAttachments(a1, a2), updated))
  {
    v31 = updated;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_9();
    FigDebugAssert3();
  }

  else
  {
    if (v2)
    {
      CMRemoveAttachment(a2, v27);
    }

    v31 = 0;
  }

LABEL_23:
  OUTLINED_FUNCTION_38();
  if (v14)
  {
    OUTLINED_FUNCTION_24();
  }

  return v31;
}

void sbp_gvs_extractDistortionData(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, float64x2_t a6)
{
  v10 = a1;
  v11 = a2;
  v12 = a4;
  v13 = v12;
  if (!a5 || !v10 || !v11 || !a3 || !v12)
  {
    OUTLINED_FUNCTION_17();
    fig_log_get_emitter();
    OUTLINED_FUNCTION_18();
    FigDebugAssert3();
    OUTLINED_FUNCTION_17();
    fig_log_get_emitter();
    FigSignalErrorAtGM();
    v22 = 0;
    v19 = 0;
    v14 = 0;
    goto LABEL_37;
  }

  v14 = [v11 objectForKeyedSubscript:kFigCaptureStreamMetadata_PortType];
  *(a5 + 208) = 0;
  *(a5 + 224) = 0;
  *(a5 + 232) = 0;
  v15 = [v13 allKeys];
  v16 = [v15 containsObject:v14];

  if (!v16 || !*a5 && !*(a5 + 8))
  {
LABEL_40:
    v22 = 0;
    v19 = 0;
    goto LABEL_37;
  }

  if (([v14 isEqualToString:kFigCapturePortType_BackFacingSuperWideCamera] & 1) != 0 || objc_msgSend(v14, "isEqualToString:", kFigCapturePortType_FrontFacingSuperWideCamera))
  {
    *v17.i32 = (*(a3 + 96) * 12.0) / 2464.0;
    *(a5 + 224) = vdupq_lane_s32(v17, 0);
    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  memset(v46, 0, 32);
  memset(v45, 0, sizeof(v45));
  if (GVSExtractGDCPolynomialFromCameraInfoByPortType(v10, v11, v45))
  {
    fig_log_get_emitter();
    FigDebugAssert3();
    goto LABEL_40;
  }

  v19 = [v11 objectForKeyedSubscript:kFigMotionAttachmentsSampleBufferProcessorMetadata_SphereScalingFactor];
  [v19 floatValue];
  if (v19 && (v21 = v20, v20 > 0.0))
  {
    v22 = [v11 objectForKeyedSubscript:kFigMotionAttachmentsSampleBufferProcessorMetadata_ScalingFactor];
    [v22 floatValue];
    if (v22 && (v24 = v23, v23 > 0.0))
    {
      v41 = v18;
      v25 = v13;
      v26 = v10;
      v27 = 0.001 / v21;
      v28 = v25;
      v29 = [v25 objectForKeyedSubscript:v14];
      v30 = [v29 unsignedIntValue];

      v32 = *(a5 + 8);
      if (v32 && (v30 & 2) != 0)
      {
        v33 = *(a3 + 20);
        if (v33 <= 0.0)
        {
          *&v31 = 0.001 / v21;
        }

        else
        {
          *&v31 = v27 / v33;
        }

        [v32 updateWithCoefficients:v45 pixelSizeMm:v31 center:COERCE_DOUBLE(vcvt_f32_f64(a6))];
      }

      v10 = v26;
      if (*a5 && (v30 & 1) != 0)
      {
        v44 = 0uLL;
        v34 = v21 / v24;
        v35 = [v11 objectForKeyedSubscript:kFigCaptureStreamMetadata_QuadraBinningFactor];
        v36 = [v35 intValue];

        if (v36 <= 1)
        {
          v37 = 1;
        }

        else
        {
          v37 = v36;
        }

        if (FigMotionComputeOpticalCenterInBuffer(v11, *(a3 + 96), v37, v37, 1, &v44, v34))
        {
          v38 = a6;
          v44 = a6;
        }

        else
        {
          v38 = v44;
        }

        v39 = COERCE_DOUBLE(vcvt_f32_f64(v38));
        *v38.f64 = v27;
        [*a5 updateWithCoefficients:v46 pixelSizeMm:v38.f64[0] center:v39];
        v10 = v26;
        v13 = v28;
        if (v41)
        {
          v40 = objc_alloc_init(GVSDistortionModelEven14);
          [(GVSDistortionModelEven14 *)v40 updateWithCoefficients:v45 pixelSizeMm:COERCE_DOUBLE(__PAIR64__(HIDWORD(v44.f64[0]) center:LODWORD(v27))), COERCE_DOUBLE(vcvt_f32_f64(v44))];
          v43 = 0uLL;
          if (!GVSEstimatePaddingForDistortedTransformFits(v40, (a3 + 104), &v43))
          {
            *(a5 + 224) = v43;
          }
        }
      }

      else
      {
        v13 = v28;
      }
    }

    else
    {
      OUTLINED_FUNCTION_43();
      FigDebugAssert3();
      OUTLINED_FUNCTION_43();
      FigSignalErrorAtGM();
    }
  }

  else
  {
    OUTLINED_FUNCTION_43();
    FigDebugAssert3();
    OUTLINED_FUNCTION_43();
    FigSignalErrorAtGM();
    v22 = 0;
  }

LABEL_37:
}

uint64_t _enqueueCoefficientsForSmartStyleFilterForwardLearningFromCoefficientsSampleBuffer(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = CMGetAttachment(a2, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
  v46[1] = 0;
  v47 = 0;
  _getPresentationTimeStampForSampleBuffer(a2, v6, v7, v8, v9, v10, v11, v12, v37, v40, time2.value, *&time2.timescale, time2.epoch, v44, time1.value, *&time1.timescale, time1.epoch, 0);
  ImageBuffer = CMSampleBufferGetImageBuffer(a2);
  if (ImageBuffer)
  {
    v21 = ImageBuffer;
    OUTLINED_FUNCTION_36(ImageBuffer, v14, v15, v16, v17, v18, v19, v20, v38, v41, time2.value, *&time2.timescale, time2.epoch, v44, time1.value, *&time1.timescale, time1.epoch, *v46);
    time2 = *(a1 + 30216);
    if (CMTimeCompare(&time1, &time2) < 1)
    {
      v33 = 0;
    }

    else
    {
      v22 = CMGetAttachment(a2, kFigCaptureSampleBufferAttachmentKey_SmartStyleCoefficientStyle, 0);
      v23 = [*(a1 + 30136) utilities];
      *&v31 = OUTLINED_FUNCTION_36(v23, v24, v25, v26, v27, v28, v29, v30, v39, v42, time2.value, *&time2.timescale, time2.epoch, v44, time1.value, *&time1.timescale, time1.epoch, *v46).n128_u64[0];
      v33 = [v32 enqueueCoefficientsForFiltering:v21 withMetadata:v5 pts:&time1 learnedStyle:{v22, v31}];

      if (v33)
      {
        fig_log_get_emitter();
        FigDebugAssert3();
      }

      else
      {
        v34 = *(a1 + 30176);
        if ((v34 + 1) < *(a1 + 30172))
        {
          v35 = v34 + 1;
        }

        else
        {
          v35 = *(a1 + 30172);
        }

        *(a1 + 30176) = v35;
        *(a1 + 30216) = *v46;
        *(a1 + 30232) = v47;
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_7();
    FigDebugAssert3();
    v33 = 4294954516;
  }

  return v33;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_0();
  return FigDebugAssert3();
}

void FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_2(void *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_5(uint64_t a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_6(uint64_t a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_8(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_9(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_10(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_11(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_12(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_13(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_14(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_15(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_16(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_17(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_18(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_19(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_20()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_15();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  return FigSignalErrorAtGM();
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_21()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_15();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  return FigSignalErrorAtGM();
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_22(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_23(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_24(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_25(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_26(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_27()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_0();
  return FigDebugAssert3();
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_28(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_29(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_30(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_31(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_32()
{
  OUTLINED_FUNCTION_21();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_0();
  FigDebugAssert3();
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_33()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_4_0();
  return FigDebugAssert3();
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_34()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_4_0();
  return FigDebugAssert3();
}

void FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_35()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_17();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_26();
  FigDebugAssert3();
  OUTLINED_FUNCTION_17();
  fig_log_get_emitter();
  *v0 = FigSignalErrorAtGM();
  OUTLINED_FUNCTION_40();
}

BOOL FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_36()
{
  OUTLINED_FUNCTION_21();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_15();
  FigDebugAssert3();
  v2 = *v1;
  *v0 = *v1;
  return v2 == 0;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_37()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_4_0();
  return FigDebugAssert3();
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_38()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_4_0();
  return FigDebugAssert3();
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_39()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_4_0();
  return FigDebugAssert3();
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_40()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_4_0();
  return FigDebugAssert3();
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_41()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_4_0();
  return FigDebugAssert3();
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_42()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_4_0();
  return FigDebugAssert3();
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_43()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_4_0();
  return FigDebugAssert3();
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_44()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_4_0();
  return FigDebugAssert3();
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_45()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_4_0();
  return FigDebugAssert3();
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_46()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_0();
  return FigDebugAssert3();
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_47()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_0();
  return FigDebugAssert3();
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_48()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_4_0();
  return FigDebugAssert3();
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_49(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_50()
{
  OUTLINED_FUNCTION_21();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_0();
  FigDebugAssert3();
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_51()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_0();
  return FigDebugAssert3();
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_52()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_0();
  return FigDebugAssert3();
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_53()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_0();
  return FigDebugAssert3();
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_54()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_0();
  return FigDebugAssert3();
}

void FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_55(void *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_56()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_57()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_58(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_59()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_0();
  return FigDebugAssert3();
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_60()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_61()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_62()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_0();
  return FigDebugAssert3();
}

void FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_63()
{
  OUTLINED_FUNCTION_41();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_17();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_25();
  FigDebugAssert3();
  OUTLINED_FUNCTION_17();
  fig_log_get_emitter();
  *v1 = FigSignalErrorAtGM();

  OUTLINED_FUNCTION_40();
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_64(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_65()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_66(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_67(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_68(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_69(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_setProperty_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_setProperty_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_setProperty_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_0();
  return FigDebugAssert3();
}

uint64_t sbp_gvs_setProperty_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_setProperty_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_setProperty_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_setProperty_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_setProperty_cold_8()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_0();
  return FigDebugAssert3();
}

uint64_t sbp_gvs_setProperty_cold_9(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_setProperty_cold_10(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_setProperty_cold_11(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_setProperty_cold_12(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_setProperty_cold_13()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_0();
  return FigDebugAssert3();
}

uint64_t sbp_gvs_setProperty_cold_14(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_setProperty_cold_15(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_processSampleBuffer_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_processSampleBuffer_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_15();
  return FigDebugAssert3();
}

uint64_t sbp_gvs_processSampleBuffer_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t sbp_gvs_processSampleBuffer_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_processSampleBuffer_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_processSampleBuffer_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_processSampleBuffer_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_processSampleBuffer_cold_8()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_0();
  return FigDebugAssert3();
}

uint64_t sbp_gvs_processSampleBuffer_cold_9()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t sbp_gvs_processSampleBuffer_cold_10()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_0();
  return FigDebugAssert3();
}

uint64_t sbp_gvs_processSampleBuffer_cold_11(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_processSampleBuffer_cold_12(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_processSampleBuffer_cold_13()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_0();
  return FigDebugAssert3();
}

uint64_t sbp_gvs_processSampleBuffer_cold_14(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_processSampleBuffer_cold_15(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_processSampleBuffer_cold_16(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_processSampleBuffer_cold_17(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sbp_gvs_processSampleBuffer_cold_18()
{
  OUTLINED_FUNCTION_41();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_17();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_25();
  FigDebugAssert3();
  OUTLINED_FUNCTION_17();
  fig_log_get_emitter();
  *v1 = FigSignalErrorAtGM();

  OUTLINED_FUNCTION_40();
}

uint64_t sbp_gvs_processSampleBuffer_cold_19()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t sbp_gvs_processSampleBuffer_cold_20()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_15();
  return FigDebugAssert3();
}

uint64_t sbp_gvs_processSampleBuffer_cold_21()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_0();
  return FigDebugAssert3();
}

void sbp_gvs_processSampleBuffer_cold_22()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_19();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_8();
  FigDebugAssert3();
  if (*v3)
  {
    CFRelease(*v3);
  }

  *v1 = v2;
  *v0 = 0;
  OUTLINED_FUNCTION_40();
}

uint64_t sbp_gvs_processSampleBuffer_cold_23()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_0();
  return FigDebugAssert3();
}

uint64_t sbp_gvs_processSampleBuffer_cold_24(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_processSampleBuffer_cold_25(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_processSampleBuffer_cold_26(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_processSampleBuffer_cold_27(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_processSampleBuffer_cold_28()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_0();
  return FigDebugAssert3();
}

uint64_t sbp_gvs_processSampleBuffer_cold_29()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t sbp_gvs_processSampleBuffer_cold_30()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_15();
  return FigDebugAssert3();
}

uint64_t sbp_gvs_processSampleBuffer_cold_31()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_30();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_30();
  return FigDebugAssert3();
}

void sbp_gvs_processSampleBuffer_cold_32(void *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
}

uint64_t sbp_gvs_processSampleBuffer_cold_33()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t sbp_gvs_processSampleBuffer_cold_34()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_0();
  return FigDebugAssert3();
}

uint64_t sbp_gvs_processSampleBuffer_cold_35()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_15();
  return FigDebugAssert3();
}

uint64_t sbp_gvs_processSampleBuffer_cold_36()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_15();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  return FigSignalErrorAtGM();
}

uint64_t sbp_gvs_processSampleBuffer_cold_37()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_15();
  return FigDebugAssert3();
}

void sbp_gvs_processSampleBuffer_cold_38(uint64_t a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_15();
  FigDebugAssert3();
  sbp_ltm_deallocateLtcCorrectionTexture(a1);
}

void sbp_gvs_processSampleBuffer_cold_39()
{
  OUTLINED_FUNCTION_21();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  FigDebugAssert3();
  sbp_ltm_deallocateLtcCorrectionTexture(v0);
}

uint64_t sbp_gvs_processSampleBuffer_cold_40()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_0();
  return FigDebugAssert3();
}

uint64_t sbp_gvs_processSampleBuffer_cold_41()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_15();
  return FigDebugAssert3();
}

uint64_t sbp_gvs_processSampleBuffer_cold_42()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_0();
  return FigDebugAssert3();
}

uint64_t sbp_gvs_processSampleBuffer_cold_43()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t sbp_gvs_processSampleBuffer_cold_44()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_0();
  return FigDebugAssert3();
}

uint64_t sbp_gvs_processSampleBuffer_cold_45()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_0();
  return FigDebugAssert3();
}

void sbp_gvs_processSampleBuffer_cold_46()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_19();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_8();
  FigDebugAssert3();
  if (*v3)
  {
    CFRelease(*v3);
  }

  *v1 = v2;
  *v0 = 0;
  OUTLINED_FUNCTION_40();
}

uint64_t sbp_gvs_processSampleBuffer_cold_47()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_0();
  return FigDebugAssert3();
}

uint64_t sbp_gvs_processSampleBuffer_cold_48()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_0();
  return FigDebugAssert3();
}

uint64_t sbp_gvs_processSampleBuffer_cold_49()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_5_0();
  return FigDebugAssert3();
}

void sbp_gvs_processSampleBuffer_cold_50()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_17();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_26();
  FigDebugAssert3();
  OUTLINED_FUNCTION_17();
  fig_log_get_emitter();
  v0 = FigSignalErrorAtGM();
  OUTLINED_FUNCTION_34(v0);
  OUTLINED_FUNCTION_40();
}

uint64_t sbp_gvs_processSampleBuffer_cold_51()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_35();
  return FigDebugAssert3();
}

uint64_t sbp_gvs_processSampleBuffer_cold_52()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_0();
  return FigDebugAssert3();
}

void sbp_gvs_processSampleBuffer_cold_53()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_19();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_8();
  FigDebugAssert3();
  if (*v3)
  {
    CFRelease(*v3);
  }

  *v1 = v2;
  *v0 = 0;
  OUTLINED_FUNCTION_40();
}

uint64_t sbp_gvs_processSampleBuffer_cold_54()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_0();
  return FigDebugAssert3();
}

uint64_t sbp_gvs_processSampleBuffer_cold_55(uint64_t a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t sbp_gvs_processSampleBuffer_cold_56(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_processSampleBuffer_cold_57()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t sbp_enableLongPressMode_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_0();
  return FigDebugAssert3();
}

uint64_t sbp_enableLongPressMode_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sbp_enableLongPressMode_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sbp_enableP3ToBT2020Conversion_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sbp_configureOverscanParameters_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sbp_configureOverscanParameters_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sbp_configureOverscanParameters_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sbp_configureOverscanParameters_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sbp_configureOverscanParameters_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sbp_configureOverscanParameters_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sbp_configureOverscanParameters_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sbp_configureOverscanParameters_cold_8(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sbp_configureOverscanParameters_cold_9(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sbp_configureOverscanParameters_cold_10(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _getMetadataDictionary_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t _getFrameRateConversionStatus_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t sbp_gvs_cinematicAddMetadataToQuaternionAndSphereRingBuffers_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_0();
  return FigDebugAssert3();
}

uint64_t sbp_gvs_cinematicAddMetadataToQuaternionAndSphereRingBuffers_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sbp_ltm_checkPerVideoDisablement_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _setAttachedMediaToSampleBuffer_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t _setAttachedMediaToSampleBuffer_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t _runVideoDeghostingDetection_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_15();
  return FigDebugAssert3();
}