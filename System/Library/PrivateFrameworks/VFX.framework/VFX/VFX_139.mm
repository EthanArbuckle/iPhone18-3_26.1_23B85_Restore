void sub_1AFBAA27C()
{
  if (!qword_1EB643030)
  {
    v0 = type metadata accessor for Query2();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB643030);
    }
  }
}

uint64_t sub_1AFBAA2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1AFBAA358(void *a1, uint64_t a2)
{
  v3 = a1;
  v5 = *a1;
  v4 = a1[1];
  swift_retain_n();
  sub_1AF3D0A74(v4, v233);
  v6 = *v233;
  v8 = v233[2];
  v7 = v233[3];
  v10 = v233[4];
  v9 = v233[5];
  v11 = v234;
  v216 = v5;

  v12 = xmmword_1AFE20160;
  if (v11 == 2)
  {
    v13 = 7.0;
    v228 = 0u;
    LOBYTE(v11) = 1;
    v14 = xmmword_1AFE20160;
  }

  else
  {
    v13 = v6;
    v15.i64[0] = v8;
    v15.i64[1] = v7;
    v228 = v15;
    v14.i64[0] = v10;
    v14.i64[1] = v9;
  }

  v16 = vabsq_f32(v14);
  v17 = v16.f32[0] > 0.00000011921 || v16.f32[1] > 0.00000011921;
  v18 = v17 || v16.f32[2] > 0.00000011921;
  v19 = v216;
  if (v18)
  {
    v20 = vmulq_f32(v14, v14);
    *&v21 = v20.f32[2] + vaddv_f32(*v20.f32);
    *v20.f32 = vrsqrte_f32(v21);
    *v20.f32 = vmul_f32(*v20.f32, vrsqrts_f32(v21, vmul_f32(*v20.f32, *v20.f32)));
    v12 = vmulq_n_f32(v14, vmul_f32(*v20.f32, vrsqrts_f32(v21, vmul_f32(*v20.f32, *v20.f32))).f32[0]);
  }

  v220 = v12;
  if (v11)
  {
    v22 = sub_1AFB371F8(a2);
    if (v22)
    {
      v25 = v22;
      v26 = v23;
      v27 = v220;
      v28 = vmulq_f32(v27, v27);
      v28.f32[0] = v28.f32[2] + vaddv_f32(*v28.f32);
      v29 = vdupq_lane_s32(*v28.f32, 0);
      v29.i32[3] = 0;
      v30 = vrsqrteq_f32(v29);
      v31 = vmulq_f32(v30, vrsqrtsq_f32(v29, vmulq_f32(v30, v30)));
      v32 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v28.f32[0] != 0.0)), 0x1FuLL));
      v32.i32[3] = 0;
      v33 = vbslq_s8(vcltzq_s32(v32), vmulq_f32(v220, vmulq_f32(v31, vrsqrtsq_f32(v29, vmulq_f32(v31, v31)))), v220);
      v27.i32[0] = v33.i32[2];
      v24.i32[0] = 1.0;
      v29.i64[0] = 0x8000000080000000;
      v29.i64[1] = 0x8000000080000000;
      v34 = *vbslq_s8(v29, v24, v27).i32;
      v29.f32[0] = v33.f32[1] / (fabsf(v33.f32[2]) + 1.0);
      v35 = vmuls_lane_f32(v29.f32[0], *v33.f32, 1);
      v36 = -(v33.f32[0] * v29.f32[0]);
      v37 = v33.f32[2] + (v34 * v35);
      v38 = v34 * v36;
      v39 = 1.0 - v35;
      v40 = vmuls_lane_f32(-v34, *v33.f32, 1);
      v41 = v33.f32[2] + (v37 + v39);
      if (v41 <= 0.0)
      {
        if (v37 < v39 || v37 < v33.f32[2])
        {
          if (v39 <= v33.f32[2])
          {
            v50 = sqrtf(((v33.f32[2] + 1.0) - v37) - v39);
            v33.i32[0] = vsubq_f32(v33, v33).u32[0];
            v33.f32[1] = v33.f32[1] + v40;
            v33.f32[2] = v50 * v50;
            v33.f32[3] = v38 - v36;
            v44 = vmulq_n_f32(v33, 0.5 / v50);
          }

          else
          {
            v46 = sqrtf(((v39 + 1.0) - v37) - v33.f32[2]);
            v47.f32[0] = v36 + v38;
            v47.f32[1] = v46 * v46;
            *&v47.u32[2] = vrev64_s32(vadd_f32(*v33.f32, __PAIR64__(LODWORD(v40), v33.u32[0])));
            v44 = vmulq_n_f32(v47, 0.5 / v46);
          }
        }

        else
        {
          v48 = sqrtf(((v37 + 1.0) - v39) - v33.f32[2]);
          v49.f32[0] = v48 * v48;
          v49.f32[1] = v36 + v38;
          *&v49.u32[2] = vsub_f32(__PAIR64__(LODWORD(v40), v33.u32[0]), *v33.f32);
          v44 = vmulq_n_f32(v49, 0.5 / v48);
        }
      }

      else
      {
        v42 = sqrtf(v41 + 1.0);
        v43.f32[0] = v40 - v33.f32[1];
        v43.i32[1] = vaddq_f32(v33, v33).u32[0];
        v43.f32[2] = v38 - v36;
        v43.f32[3] = v42 * v42;
        v44 = vmulq_n_f32(v43, 0.5 / v42);
      }

      v218 = &v216;
      v51 = vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(xmmword_1AFEA0710, *v44.f32, 1), xmmword_1AFEA0720, v44.f32[0]), vmlaq_laneq_f32(vmulq_laneq_f32(xmmword_1AFEA0730, v44, 3), xmmword_1AFEA0740, v44, 2));
      v52 = v228;
      v52.n128_u32[3] = 1.0;
      v53 = vmulq_f32(v51, v51);
      v54 = vmulq_laneq_f32(v51, v51, 3);
      v55 = vmuls_lane_f32(v51.f32[0], *v51.f32, 1);
      v56 = vmuls_lane_f32(v51.f32[1], v51, 2);
      v225 = v51;
      v51.f32[0] = vmuls_lane_f32(v51.f32[0], v51, 2);
      v57.i32[3] = 0;
      v57.f32[0] = (0.5 - v53.f32[1]) - v53.f32[2];
      v57.f32[1] = v55 + v54.f32[2];
      v57.f32[2] = v51.f32[0] - v54.f32[1];
      v53.f32[0] = 0.5 - v53.f32[0];
      v58.i32[3] = 0;
      v58.f32[0] = v55 - v54.f32[2];
      v58.f32[1] = v53.f32[0] - v53.f32[2];
      v58.f32[2] = v56 + v54.f32[0];
      v54.f32[0] = v56 - v54.f32[0];
      v59.i32[3] = 0;
      v59.f32[0] = v51.f32[0] + v54.f32[1];
      v59.i32[1] = v54.i32[0];
      v59.f32[2] = v53.f32[0] - v53.f32[1];
      v229 = vaddq_f32(v58, v58);
      v230 = vaddq_f32(v57, v57);
      v249 = v230;
      v250 = v229;
      v226 = v52;
      v227 = vaddq_f32(v59, v59);
      v251 = v227;
      v252 = v52;
      memset(v257, 0, sizeof(v257));
      v258 = 12;
      ecs_stack_allocator_push_snapshot(*(v22 + 32));
      v60 = *(v26 + 16);
      v61 = 2 * v60;
      v62 = ecs_stack_allocator_allocate(*(v25 + 32), 16 * v60 + 48, 8);
      *v62 = &type metadata for DebugInfoWireframePrimitive;
      v62[1] = &off_1F25604A8;
      v62[2] = &type metadata for WorldTransform;
      v62[3] = &off_1F2529FC0;
      v62[4] = &type metadata for Beamed;
      v62[5] = &off_1F2529FA0;
      if (!v60)
      {
        v64 = 3;
        goto LABEL_33;
      }

      if (v60 <= 0x13)
      {
        goto LABEL_28;
      }

      v63 = 0;
      v199 = 2 * (v60 - 1);
      v64 = 3;
      if (&v62[v199 + 6] < v62 + 6 || &v62[v199 + 7] < v62 + 7 || (v60 - 1) >> 60)
      {
        goto LABEL_29;
      }

      if ((v62 + 6) < v26 + v61 * 8 + 32 && v26 + 32 < &v62[v61 + 6])
      {
LABEL_28:
        v63 = 0;
        v64 = 3;
      }

      else
      {
        v63 = v60 & 0x1FFFFFFFFFFFFFFCLL;
        v64 = v60 | 3;
        v200 = v62 + 10;
        v201 = (v26 + 64);
        v202 = v60 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v204 = *(v201 - 2);
          v203 = *(v201 - 1);
          v206 = *v201;
          v205 = v201[1];
          v201 += 4;
          *(v200 - 2) = v204;
          *(v200 - 1) = v203;
          *v200 = v206;
          v200[1] = v205;
          v200 += 4;
          v202 -= 4;
        }

        while (v202);
        if (v60 == v63)
        {
LABEL_33:
          LOBYTE(v259[0]) = 1;
          sub_1AF63D0A0(v62, v64, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, v25, v257, v230, v229, v227, v226);
          ecs_stack_allocator_pop_snapshot(*(v25 + 32));
          v68 = sub_1AF57EFBC(xmmword_1AFEA0750);
          v259[0] = xmmword_1AFE718B0;
          v260 = 3;
          ecs_stack_allocator_push_snapshot(*(v25 + 32));
          v69 = *(v26 + 16);
          v70 = 2 * v69;
          v71 = ecs_stack_allocator_allocate(*(v25 + 32), 16 * v69 + 64, 8);
          *v71 = &type metadata for DebugInfoWireframePrimitive;
          v71[1] = &off_1F25604A8;
          v71[2] = &type metadata for DebugInfoColor;
          v71[3] = &off_1F2560488;
          v71[4] = &type metadata for WorldTransform;
          v71[5] = &off_1F2529FC0;
          v71[6] = &type metadata for Beamed;
          v71[7] = &off_1F2529FA0;
          if (!v69)
          {
            v73 = 4;
LABEL_40:
            v219 = v3;
            v237[0] = 1;
            v77 = MEMORY[0x1E69E7CC0];
            sub_1AF63D8A8(v71, v73, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, v25, v259, v68, v230, v229, v227, v226);
            ecs_stack_allocator_pop_snapshot(*(v25 + 32));
            v78 = vmulq_f32(v230, v230);
            v79 = vmulq_f32(v227, v227);
            v80 = vadd_f32(vzip1_s32(*v78.i8, *v79.i8), vzip2_s32(*v78.i8, *v79.i8));
            v81 = vextq_s8(v78, v78, 8uLL);
            *v79.i8 = vadd_f32(vzip1_s32(*v81.i8, *&vextq_s8(v79, v79, 8uLL)), v80);
            *v81.i8 = vsqrt_f32(*v79.i8);
            v82 = v79.u32[1];
            v83 = vrsqrte_f32(v79.u32[0]);
            v84 = vmul_f32(v83, vrsqrts_f32(v79.u32[0], vmul_f32(v83, v83)));
            v85 = vmulq_n_f32(v230, vmul_f32(v84, vrsqrts_f32(v79.u32[0], vmul_f32(v84, v84))).f32[0]);
            v85.i32[3] = v230.i32[3];
            v86 = vmulq_f32(v229, v229);
            *&v87 = v86.f32[2] + vaddv_f32(*v86.f32);
            *v86.f32 = vrsqrte_f32(v87);
            *v86.f32 = vmul_f32(*v86.f32, vrsqrts_f32(v87, vmul_f32(*v86.f32, *v86.f32)));
            v88 = vmulq_n_f32(v229, vmul_f32(*v86.f32, vrsqrts_f32(v87, vmul_f32(*v86.f32, *v86.f32))).f32[0]);
            v88.i32[3] = v229.i32[3];
            v249 = v85;
            v250 = v88;
            *v85.f32 = vrsqrte_f32(v82);
            *v85.f32 = vmul_f32(*v85.f32, vrsqrts_f32(v82, vmul_f32(*v85.f32, *v85.f32)));
            v89 = vmulq_n_f32(v227, vmul_f32(*v85.f32, vrsqrts_f32(v82, vmul_f32(*v85.f32, *v85.f32))).f32[0]);
            v89.i32[3] = v227.i32[3];
            v251 = v89;
            sub_1AF6A6ACC(vmaxnmq_f32(vtrn2q_s32(vrev64q_s32(vzip1q_s32(v81, v81)), xmmword_1AFEA0760), xmmword_1AFE20A30));
            v90 = vmulq_f32(v225, xmmword_1AFE21390);
            v91 = vnegq_f32(v90);
            v92 = vtrn2q_s32(v90, vtrn1q_s32(v90, v91));
            v93 = vextq_s8(v92, v92, 8uLL);
            v94 = vmulq_f32(vextq_s8(v90, v91, 8uLL), 0);
            __asm { FMOV            V5.4S, #5.0 }

            v97 = vrev64q_s32(v90);
            v97.i32[0] = v91.i32[1];
            v97.i32[3] = v91.i32[2];
            v98 = vmlaq_f32(vmlaq_f32(v94, _Q5, v93), 0, v97);
            v99 = vnegq_f32(v98);
            v100 = vtrn2q_s32(v98, vtrn1q_s32(v98, v99));
            v101 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v98, v99, 8uLL), v225.n128_u64[0], 1), vextq_s8(v100, v100, 8uLL), v225.n128_f32[0]);
            v102 = vrev64q_s32(v98);
            v102.i32[0] = v99.i32[1];
            v102.i32[3] = v99.i32[2];
            v103 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v98, v225, 3), v102, v225, 2), v101);
            v104 = vmlaq_f32(vmlaq_f32(v94, 0, v93), _Q5, v97);
            v105 = vnegq_f32(v104);
            v106 = vtrn2q_s32(v104, vtrn1q_s32(v104, v105));
            v107 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v104, v105, 8uLL), v225.n128_u64[0], 1), vextq_s8(v106, v106, 8uLL), v225.n128_f32[0]);
            v108 = vrev64q_s32(v104);
            v108.i32[0] = v105.i32[1];
            v108.i32[3] = v105.i32[2];
            v109 = v103.f32[2];
            v221 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v104, v225, 3), v108, v225, 2), v107);
            v110 = v221.f32[2];
            v226 = v249;
            v227 = v103;
            v111 = v252;
            v224 = v251;
            v225 = v250;
            v112 = v228.n128_f32[2];
            v113 = v26 + 32;
            v223 = (v26 + 64);
            v114 = -5;
            while (1)
            {
              v222 = v114;
              v115 = v110 * v114;
              v229 = vmulq_n_f32(v221, v114);
              v116 = -5;
              v117 = v111;
              do
              {
                v230 = v117;
                ecs_stack_allocator_push_snapshot(*(v25 + 32));
                v118 = *(v26 + 16);
                v119 = 2 * v118;
                v120 = ecs_stack_allocator_allocate(*(v25 + 32), 16 * v118 + 48, 8);
                *v120 = &type metadata for DebugInfoWireframePrimitive;
                v120[1] = &off_1F25604A8;
                v120[2] = &type metadata for WorldTransform;
                v120[3] = &off_1F2529FC0;
                v120[4] = &type metadata for Beamed;
                v120[5] = &off_1F2529FA0;
                if (!v118)
                {
                  v128 = 3;
                  goto LABEL_60;
                }

                if (v118 <= 0xF || ((v121 = v120 + 6, v122 = 2 * (v118 - 1), v123 = &v120[v122 + 6], v124 = &v120[v122 + 7], v123 >= (v120 + 6)) ? (_CF = v124 >= (v120 + 7)) : (_CF = 0), _CF ? (_ZF = (v118 - 1) >> 60 == 0) : (_ZF = 0), !_ZF || v121 < v113 + v119 * 8 && v113 < &v121[v119]))
                {
                  v127 = 0;
                  v128 = 3;
LABEL_56:
                  v129 = v118 - v127;
                  v130 = (v113 + 16 * v127);
                  do
                  {
                    v131 = *v130++;
                    *&v120[2 * v128++] = v131;
                    --v129;
                  }

                  while (v129);
                  goto LABEL_60;
                }

                v127 = v118 & 0x1FFFFFFFFFFFFFFCLL;
                v128 = v118 | 3;
                v133 = v120 + 10;
                v134 = v118 & 0x1FFFFFFFFFFFFFFCLL;
                v135 = v223;
                do
                {
                  v137 = *(v135 - 2);
                  v136 = *(v135 - 1);
                  v139 = *v135;
                  v138 = v135[1];
                  v135 += 4;
                  *(v133 - 2) = v137;
                  *(v133 - 1) = v136;
                  *v133 = v139;
                  v133[1] = v138;
                  v133 += 4;
                  v134 -= 4;
                }

                while (v134);
                if (v118 != v127)
                {
                  goto LABEL_56;
                }

LABEL_60:
                v132.n128_u64[0] = vaddq_f32(v229, vaddq_f32(v228, vmulq_n_f32(v227, v116))).u64[0];
                v132.n128_f32[2] = v115 + (v112 + (v109 * v116));
                v132.n128_u32[3] = v230.u32[3];
                v237[0] = 1;
                v230 = v132;
                sub_1AF63D0A0(v120, v128, v77, 1, 0x100000000uLL, v25, v257, v226, v225, v224, v132);
                ecs_stack_allocator_pop_snapshot(*(v25 + 32));
                v111 = v230;
                v117 = v230;
                _ZF = v116++ == 5;
              }

              while (!_ZF);
              v114 = v222 + 1;
              if (v222 == 5)
              {
                sub_1AFB3CAB4(v25);
                v19 = v216;
                v3 = v219;
                goto LABEL_68;
              }
            }
          }

          if (v69 > 0x13)
          {
            v72 = 0;
            v207 = 2 * (v69 - 1);
            v73 = 4;
            if (&v71[v207 + 8] < v71 + 8 || &v71[v207 + 9] < v71 + 9 || (v69 - 1) >> 60)
            {
              goto LABEL_36;
            }

            if ((v71 + 8) >= v26 + v70 * 8 + 32 || v26 + 32 >= &v71[v70 + 8])
            {
              v72 = v69 & 0x1FFFFFFFFFFFFFFCLL;
              v73 = (v69 & 0x1FFFFFFFFFFFFFFCLL) + 4;
              v208 = v71 + 12;
              v209 = (v26 + 64);
              v210 = v69 & 0x1FFFFFFFFFFFFFFCLL;
              do
              {
                v212 = *(v209 - 2);
                v211 = *(v209 - 1);
                v214 = *v209;
                v213 = v209[1];
                v209 += 4;
                *(v208 - 2) = v212;
                *(v208 - 1) = v211;
                *v208 = v214;
                v208[1] = v213;
                v208 += 4;
                v210 -= 4;
              }

              while (v210);
              if (v69 == v72)
              {
                goto LABEL_40;
              }

              goto LABEL_36;
            }
          }

          v72 = 0;
          v73 = 4;
LABEL_36:
          v74 = v69 - v72;
          v75 = (v26 + 16 * v72 + 32);
          do
          {
            v76 = *v75++;
            *&v71[2 * v73++] = v76;
            --v74;
          }

          while (v74);
          goto LABEL_40;
        }
      }

LABEL_29:
      v65 = v60 - v63;
      v66 = (v26 + 16 * v63 + 32);
      do
      {
        v67 = *v66++;
        *&v62[2 * v64++] = v67;
        --v65;
      }

      while (v65);
      goto LABEL_33;
    }
  }

LABEL_68:
  v140 = *(v3 + 13);
  v246 = *(v3 + 11);
  v247 = v140;
  v248 = v3[15];
  sub_1AF829104(v235);
  sub_1AFB93E58();
  v142 = fminf(v13 * v141, 1.0);
  if (v142 < 0.0)
  {
    v143 = 0.0;
  }

  else
  {
    v143 = v142;
  }

  if (v143 > 0.0 && (v244[0] = v235[0], v244[1] = v235[1], v245 = v236, sub_1AF6B06C0(v19, v244, 0x200000000, v237), *v237))
  {
    v222 = v240;
    if (v240 <= 0)
    {
      v251 = *&v237[32];
      v252 = v238;
      v253 = v239;
      v254 = v240;
      v249 = *v237;
      v250 = *&v237[16];
      sub_1AF5DD298(&v249, v232);
      sub_1AFBAA2F8(v235, &qword_1EB641FE8, &type metadata for Position, &off_1F252EE70, sub_1AF5DD590);
    }

    else
    {
      v221.i64[0] = v238.n128_i64[1];
      if (v238.n128_u64[1])
      {
        v219 = *&v237[40];
        v144 = *(&v239 + 1);
        v218 = v239;
        v145 = *(v239 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v229.i64[0] = *(*(&v239 + 1) + 32);
        v241 = *v237;
        v242 = *&v237[8];
        v243 = *&v237[24];
        v232[2] = *&v237[32];
        v232[3] = v238;
        v232[4] = v239;
        v232[5] = v240;
        v232[0] = *v237;
        v232[1] = *&v237[16];
        sub_1AF5DD298(v232, &v249);
        v146 = 0;
        v217 = v145;
        while (1)
        {
          v227.i64[0] = v146;
          v147 = &v219[6 * v146];
          v148 = *v147;
          v149 = v147[1];
          v150 = v147[2];
          v151 = *(v147 + 2);
          v152 = *(v147 + 3);
          v153 = *(v147 + 4);
          v154 = *(v147 + 5);
          if (v145)
          {
            v155 = *(v154 + 376);

            os_unfair_lock_lock(v155);
            os_unfair_lock_lock(*(v154 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v229.i64[0]);
          v156 = v144[3];
          v224 = v144[4];
          v225 = v156;
          v223 = v144[5].n128_u64[0];
          v157 = *(*(*(*(v154 + 40) + 16) + 32) + 16) + 1;
          v144[3].n128_u64[0] = ecs_stack_allocator_allocate(v144[2].n128_i64[0], 48 * v157, 8);
          v144[3].n128_u64[1] = v157;
          v144[4].n128_u64[1] = 0;
          v144[5].n128_u64[0] = 0;
          v144[4].n128_u64[0] = 0;
          v231 = 1;
          v249.i64[0] = v218;
          v226.n128_u64[0] = v154;
          v249.i64[1] = v154;
          v250.i64[0] = v144;
          v250.i64[1] = v150;
          v251.i64[0] = (v149 - v148 + v150);
          v251.i64[1] = v222;
          v252.n128_u64[0] = v148;
          v252.n128_u64[1] = v149;
          v253 = 0uLL;
          LOBYTE(v254) = 1;
          *(&v254 + 1) = v151;
          v255 = v152;
          v256 = v153;
          v158.n128_f32[0] = v143;
          sub_1AFB9BFFC(&v249, v158, v220, v228);
          v159 = v144[3].n128_u64[0];
          v160 = v144[4].n128_u64[0];
          if (!v160)
          {
            v181 = v144[3].n128_u64[1];
            v182 = v144[2].n128_u64[0];
            goto LABEL_109;
          }

          v161 = 0;
          v230.i64[0] = v144[3].n128_i64[0];
          do
          {
            v163 = (v159 + 48 * v161);
            v164 = *v163;
            v165 = v163[4];
            v166 = v144[4].n128_u64[1];
            if (v166)
            {
              v167 = v164 == v166;
            }

            else
            {
              v167 = 0;
            }

            if (v167)
            {
              goto LABEL_82;
            }

            v168 = v241;
            if (!v241[11])
            {
              goto LABEL_82;
            }

            v169 = v163[2];
            v170 = v241 + 41;
            v171 = v241[9];
            if (v171 >= 0x10)
            {
              v172 = &v170[v241[8]];
              v173 = v171 >> 4;
              v174 = v241 + 41;
              while (*v172 != v164)
              {
                ++v174;
                v172 += 16;
                if (!--v173)
                {
                  goto LABEL_98;
                }
              }

              v175 = v174[v241[10]];
              v17 = v175 > 5;
              v176 = (1 << v175) & 0x23;
              if (v17 || v176 == 0)
              {
LABEL_82:

                v165(v162);

                goto LABEL_83;
              }
            }

LABEL_98:
            if (swift_conformsToProtocol2() && v169)
            {
              if (sub_1AF5FC8D8(v169))
              {
                goto LABEL_82;
              }

              v178 = v168[9];
              if (v178 < 0x10)
              {
                goto LABEL_82;
              }

              v179 = &v170[v168[8]];
              v180 = 16 * (v178 >> 4);
              while (*v179 != v169)
              {
                v179 += 16;
                v180 -= 16;
                if (!v180)
                {
                  goto LABEL_82;
                }
              }
            }

LABEL_83:
            ++v161;
            v159 = v230.i64[0];
          }

          while (v161 != v160);
          v181 = v144[3].n128_u64[1];
          v159 = v144[3].n128_u64[0];
          v182 = v144[2].n128_u64[0];
          if (v144[4].n128_i64[0] >= 1)
          {
            swift_arrayDestroy();
          }

LABEL_109:
          v183 = v227.i64[0];
          v184 = v226.n128_u64[0];
          v185 = v223;
          ecs_stack_allocator_deallocate(v182, v159, 48 * v181);
          v186 = v224;
          v144[3] = v225;
          v144[4] = v186;
          v144[5].n128_u64[0] = v185;
          if (*(v144[6].n128_u64[1] + 16))
          {

            sub_1AF62F348(v187, v184);

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v189 = v144[6].n128_u64[1];
            if (isUniquelyReferenced_nonNull_native)
            {
              v190 = v189[2];
              v191 = swift_isUniquelyReferenced_nonNull_native();
              v144[6].n128_u64[1] = v189;
              if ((v191 & 1) == 0)
              {
                v189 = sub_1AF420EA0(0, v190, 1, v189);
                v144[6].n128_u64[1] = v189;
              }

              sub_1AF43A540(0);
              swift_arrayDestroy();
              if (v190)
              {
                v192 = v189[2] - v190;
                memmove(v189 + 4, &v189[9 * v190 + 4], 72 * v192);
                v189[2] = v192;
              }

              v144[6].n128_u64[1] = v189;
            }

            else
            {
              v193 = MEMORY[0x1E69E7CC0];
              if (v189[3] >= 2uLL)
              {
                sub_1AF9D7EF0(0, &qword_1ED7269C0, sub_1AF43A540);
                v193 = swift_allocObject();
                v194 = j__malloc_size_0(v193);
                v193[2] = 0;
                v193[3] = 2 * ((v194 - 32) / 72);
              }

              v144[6].n128_u64[1] = v193;
            }

            if (*(v144[1].n128_u64[0] + OBJC_IVAR____TtC3VFX13EntityManager_currentState) - 1 >= 2)
            {
              v195 = *(v184 + 232);
              v196 = *(v184 + 256);
              if (v195 == v196)
              {
                v197 = *(v184 + 240);
              }

              else
              {
                sub_1AF6497A0(v196, v195);
                v196 = *(v184 + 232);
                v197 = *(v184 + 240);
                if (v197 == v196)
                {
                  v197 = 0;
                  v196 = 0;
                  *(v184 + 232) = 0;
                  *(v184 + 240) = 0;
                }
              }

              *(v184 + 248) = v197;
              *(v184 + 256) = v196;
            }
          }

          ecs_stack_allocator_pop_snapshot(v229.i64[0]);
          v145 = v217;
          if (v217)
          {
            os_unfair_lock_unlock(*(v184 + 344));
            os_unfair_lock_unlock(*(v184 + 376));
          }

          v146 = v183 + 1;
          if (v146 == v221.i64[0])
          {
            goto LABEL_149;
          }
        }
      }

      v251 = *&v237[32];
      v252 = v238.n128_u64[0];
      v253 = v239;
      v254 = v240;
      v249 = *v237;
      v250 = *&v237[16];
      sub_1AF5DD298(&v249, v232);
LABEL_149:

      sub_1AFBAA2F8(v235, &qword_1EB641FE8, &type metadata for Position, &off_1F252EE70, sub_1AF5DD590);
    }

    v215 = MEMORY[0x1E69E6720];
    sub_1AFBAA2F8(v237, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFBABEC0);
    return sub_1AFBAA2F8(v237, &qword_1ED725EA0, &type metadata for QueryResult, v215, sub_1AFBABEC0);
  }

  else
  {
    sub_1AFBAA2F8(v235, &qword_1EB641FE8, &type metadata for Position, &off_1F252EE70, sub_1AF5DD590);
  }
}

uint64_t sub_1AFBAB598(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  swift_retain_n();
  sub_1AF3D0B94(v2, v85);
  v4 = *v85;
  v6 = v85[2];
  v5 = v85[3];

  if (v86)
  {
    v82 = xmmword_1AFE20160;
    v7 = 0.25;
  }

  else
  {
    v7 = v4;
    if (v4 <= 0.0)
    {
    }

    v8.i64[0] = v6;
    v8.i64[1] = v5;
    v82 = v8;
  }

  v9 = *(a1 + 104);
  v98 = *(a1 + 88);
  v99 = v9;
  v100 = *(a1 + 120);
  sub_1AF82917C(v87);
  sub_1AFB93E58();
  v11 = v10;
  v12 = vabsq_f32(v82);
  v13 = 0uLL;
  v14 = v12.f32[0] > 0.00000011921 || v12.f32[1] > 0.00000011921;
  if (v14 || v12.f32[2] > 0.00000011921)
  {
    v16 = vmulq_f32(v82, v82);
    *&v17 = v16.f32[2] + vaddv_f32(*v16.f32);
    *v16.f32 = vrsqrte_f32(v17);
    *v16.f32 = vmul_f32(*v16.f32, vrsqrts_f32(v17, vmul_f32(*v16.f32, *v16.f32)));
    v13 = vmulq_n_f32(v82, vmul_f32(*v16.f32, vrsqrts_f32(v17, vmul_f32(*v16.f32, *v16.f32))).f32[0]);
  }

  v18 = vabsq_f32(v13);
  if ((v18.f32[0] > 0.00000011921 || (v18.f32[1] <= 0.00000011921 ? (v19 = v18.f32[2] > 0.00000011921) : (v19 = 1), v19)) && (v78 = v13, v96[0] = v87[0], v96[1] = v87[1], v97 = v88, sub_1AF6B06C0(v3, v96, 0x200000000, v89), *v89))
  {
    v77 = v92;
    if (v92 <= 0)
    {
      v103 = *&v89[32];
      v104 = v90;
      v105 = v91;
      v106 = v92;
      v101 = *v89;
      v102 = *&v89[16];
      sub_1AF5DD298(&v101, v84);
      sub_1AFBAA2F8(v87, &unk_1EB643038, &type metadata for Velocity, &off_1F2530AF8, sub_1AF5DD590);
    }

    else
    {
      v76 = *(&v90 + 1);
      if (*(&v90 + 1))
      {
        v75 = *&v89[40];
        v20 = *(&v91 + 1);
        v74 = v91;
        v21 = *(v91 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v22 = *(*(&v91 + 1) + 32);
        v93 = *v89;
        v94 = *&v89[8];
        v95 = *&v89[24];
        v84[2] = *&v89[32];
        v84[3] = v90;
        v84[4] = v91;
        v84[5] = v92;
        v84[0] = *v89;
        v84[1] = *&v89[16];
        sub_1AF5DD298(v84, &v101);
        v23 = 0;
        v73 = v21;
        v72 = v22;
        while (1)
        {
          v83 = v23;
          v24 = (v75 + 48 * v23);
          v26 = *v24;
          v25 = v24[1];
          v27 = v24[2];
          v28 = *(v24 + 2);
          v29 = *(v24 + 3);
          v30 = *(v24 + 4);
          v31 = *(v24 + 5);
          if (v21)
          {
            v32 = *(v31 + 376);

            os_unfair_lock_lock(v32);
            os_unfair_lock_lock(*(v31 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v22);
          v80 = *(v20 + 64);
          v81 = *(v20 + 48);
          v79 = *(v20 + 80);
          v33 = *(*(*(*(v31 + 40) + 16) + 32) + 16) + 1;
          *(v20 + 48) = ecs_stack_allocator_allocate(*(v20 + 32), 48 * v33, 8);
          *(v20 + 56) = v33;
          *(v20 + 72) = 0;
          *(v20 + 80) = 0;
          *(v20 + 64) = 0;
          *&v101 = v74;
          *(&v101 + 1) = v31;
          *&v102 = v20;
          *(&v102 + 1) = v27;
          *&v103 = (v25 - v26 + v27);
          *(&v103 + 1) = v77;
          *&v104 = v26;
          *(&v104 + 1) = v25;
          v105 = 0uLL;
          LOBYTE(v106) = 1;
          *(&v106 + 1) = v28;
          v107 = v29;
          v108 = v30;
          sub_1AFB9AF1C(&v101, v78, v11, v7);
          v34 = *(v20 + 48);
          v35 = *(v20 + 64);
          if (!v35)
          {
            v56 = *(v20 + 56);
            v57 = *(v20 + 32);
            v58 = v83;
            goto LABEL_58;
          }

          for (i = 0; i != v35; ++i)
          {
            v38 = (v34 + 48 * i);
            v39 = *v38;
            v40 = v38[4];
            v41 = *(v20 + 72);
            if (v41)
            {
              v42 = v39 == v41;
            }

            else
            {
              v42 = 0;
            }

            if (v42)
            {
              goto LABEL_30;
            }

            v43 = v93;
            if (!v93[11])
            {
              goto LABEL_30;
            }

            v44 = v38[2];
            v45 = v93 + 41;
            v46 = v93[9];
            if (v46 >= 0x10)
            {
              v47 = &v45[v93[8]];
              v48 = v46 >> 4;
              v49 = v93 + 41;
              while (*v47 != v39)
              {
                ++v49;
                v47 += 16;
                if (!--v48)
                {
                  goto LABEL_46;
                }
              }

              v50 = v49[v93[10]];
              v14 = v50 > 5;
              v51 = (1 << v50) & 0x23;
              if (v14 || v51 == 0)
              {
LABEL_30:

                v40(v37);

                continue;
              }
            }

LABEL_46:
            if (swift_conformsToProtocol2() && v44)
            {
              if (sub_1AF5FC8D8(v44))
              {
                goto LABEL_30;
              }

              v53 = v43[9];
              if (v53 < 0x10)
              {
                goto LABEL_30;
              }

              v54 = &v45[v43[8]];
              v55 = 16 * (v53 >> 4);
              while (*v54 != v44)
              {
                v54 += 16;
                v55 -= 16;
                if (!v55)
                {
                  goto LABEL_30;
                }
              }
            }
          }

          v56 = *(v20 + 56);
          v34 = *(v20 + 48);
          v57 = *(v20 + 32);
          v58 = v83;
          if (*(v20 + 64) >= 1)
          {
            swift_arrayDestroy();
          }

          v22 = v72;
LABEL_58:
          ecs_stack_allocator_deallocate(v57, v34, 48 * v56);
          *(v20 + 48) = v81;
          *(v20 + 64) = v80;
          *(v20 + 80) = v79;
          if (*(*(v20 + 104) + 16))
          {

            sub_1AF62F348(v59, v31);

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v61 = *(v20 + 104);
            if (isUniquelyReferenced_nonNull_native)
            {
              v62 = v61[2];
              v63 = swift_isUniquelyReferenced_nonNull_native();
              *(v20 + 104) = v61;
              if ((v63 & 1) == 0)
              {
                v61 = sub_1AF420EA0(0, v62, 1, v61);
                *(v20 + 104) = v61;
              }

              sub_1AF43A540(0);
              swift_arrayDestroy();
              if (v62)
              {
                v64 = v61[2] - v62;
                memmove(v61 + 4, &v61[9 * v62 + 4], 72 * v64);
                v61[2] = v64;
              }

              *(v20 + 104) = v61;
            }

            else
            {
              v65 = MEMORY[0x1E69E7CC0];
              if (v61[3] >= 2uLL)
              {
                sub_1AF9D7EF0(0, &qword_1ED7269C0, sub_1AF43A540);
                v65 = swift_allocObject();
                v66 = j__malloc_size_0(v65);
                v65[2] = 0;
                v65[3] = 2 * ((v66 - 32) / 72);
              }

              *(v20 + 104) = v65;
            }

            if (*(*(v20 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_currentState) - 1 >= 2)
            {
              v67 = *(v31 + 232);
              v68 = *(v31 + 256);
              if (v67 == v68)
              {
                v69 = *(v31 + 240);
              }

              else
              {
                sub_1AF6497A0(v68, v67);
                v68 = *(v31 + 232);
                v69 = *(v31 + 240);
                if (v69 == v68)
                {
                  v69 = 0;
                  v68 = 0;
                  *(v31 + 232) = 0;
                  *(v31 + 240) = 0;
                }
              }

              *(v31 + 248) = v69;
              *(v31 + 256) = v68;
            }
          }

          ecs_stack_allocator_pop_snapshot(v22);
          v21 = v73;
          if (v73)
          {
            os_unfair_lock_unlock(*(v31 + 344));
            os_unfair_lock_unlock(*(v31 + 376));
          }

          v23 = v58 + 1;
          if (v23 == v76)
          {
            goto LABEL_83;
          }
        }
      }

      v103 = *&v89[32];
      v104 = v90;
      v105 = v91;
      v106 = v92;
      v101 = *v89;
      v102 = *&v89[16];
      sub_1AF5DD298(&v101, v84);
LABEL_83:

      sub_1AFBAA2F8(v87, &unk_1EB643038, &type metadata for Velocity, &off_1F2530AF8, sub_1AF5DD590);
    }

    v71 = MEMORY[0x1E69E6720];
    sub_1AFBAA2F8(v89, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFBABEC0);
    return sub_1AFBAA2F8(v89, &qword_1ED725EA0, &type metadata for QueryResult, v71, sub_1AFBABEC0);
  }

  else
  {
    sub_1AFBAA2F8(v87, &unk_1EB643038, &type metadata for Velocity, &off_1F2530AF8, sub_1AF5DD590);
  }
}

uint64_t sub_1AFBABE60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AFBABEC0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for ParticleFlockingAlignOrientation(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 40))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ParticleFlockingAlignOrientation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t initializeWithCopy for ParticleFlockingSolver(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 97) = *(a2 + 97);

  return a1;
}

uint64_t assignWithCopy for ParticleFlockingSolver(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v4;
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 97) = *(a2 + 97);
  *(a1 + 98) = *(a2 + 98);
  return a1;
}

__n128 initializeWithTake for ParticleFlockingSolver(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 95) = *(a2 + 95);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t assignWithTake for ParticleFlockingSolver(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 97) = *(a2 + 97);
  *(a1 + 98) = *(a2 + 98);
  return a1;
}

uint64_t getEnumTagSinglePayload for ParticleFlockingSolver(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 99))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ParticleFlockingSolver(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 98) = 0;
    *(result + 96) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 99) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 99) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ParticleFlockingSpeedControl(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 25))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 6;
  v5 = v3 - 6;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ParticleFlockingSpeedControl(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 5;
    }
  }

  return result;
}

unint64_t sub_1AFBAC3A0()
{
  result = qword_1EB643048;
  if (!qword_1EB643048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643048);
  }

  return result;
}

uint64_t sub_1AFBAC3F4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1AFBAC650(255, a2, sub_1AF43A0C8, MEMORY[0x1E69E6448], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AFBAC458()
{
  result = qword_1EB643060;
  if (!qword_1EB643060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643060);
  }

  return result;
}

unint64_t sub_1AFBAC4AC()
{
  result = qword_1EB643078;
  if (!qword_1EB643078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643078);
  }

  return result;
}

unint64_t sub_1AFBAC500()
{
  result = qword_1EB643090;
  if (!qword_1EB643090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643090);
  }

  return result;
}

unint64_t sub_1AFBAC554()
{
  result = qword_1EB6430A8;
  if (!qword_1EB6430A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6430A8);
  }

  return result;
}

unint64_t sub_1AFBAC5A8()
{
  result = qword_1EB6430C0;
  if (!qword_1EB6430C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6430C0);
  }

  return result;
}

unint64_t sub_1AFBAC5FC()
{
  result = qword_1EB6430D8;
  if (!qword_1EB6430D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6430D8);
  }

  return result;
}

void sub_1AFBAC650(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1AFBAC72C()
{
  result = qword_1EB6430E8;
  if (!qword_1EB6430E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6430E8);
  }

  return result;
}

unint64_t sub_1AFBAC784()
{
  result = qword_1EB6430F0;
  if (!qword_1EB6430F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6430F0);
  }

  return result;
}

unint64_t sub_1AFBAC7DC()
{
  result = qword_1EB6430F8;
  if (!qword_1EB6430F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6430F8);
  }

  return result;
}

unint64_t sub_1AFBAC834()
{
  result = qword_1EB643100;
  if (!qword_1EB643100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643100);
  }

  return result;
}

unint64_t sub_1AFBAC88C()
{
  result = qword_1EB643108;
  if (!qword_1EB643108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643108);
  }

  return result;
}

unint64_t sub_1AFBAC8E4()
{
  result = qword_1EB643110;
  if (!qword_1EB643110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643110);
  }

  return result;
}

unint64_t sub_1AFBAC93C()
{
  result = qword_1EB643118;
  if (!qword_1EB643118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643118);
  }

  return result;
}

unint64_t sub_1AFBAC994()
{
  result = qword_1EB643120;
  if (!qword_1EB643120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643120);
  }

  return result;
}

unint64_t sub_1AFBAC9EC()
{
  result = qword_1EB643128;
  if (!qword_1EB643128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643128);
  }

  return result;
}

unint64_t sub_1AFBACA44()
{
  result = qword_1EB643130;
  if (!qword_1EB643130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643130);
  }

  return result;
}

unint64_t sub_1AFBACA9C()
{
  result = qword_1EB643138;
  if (!qword_1EB643138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643138);
  }

  return result;
}

unint64_t sub_1AFBACAF4()
{
  result = qword_1EB643140;
  if (!qword_1EB643140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643140);
  }

  return result;
}

unint64_t sub_1AFBACB4C()
{
  result = qword_1EB643148;
  if (!qword_1EB643148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643148);
  }

  return result;
}

unint64_t sub_1AFBACBA4()
{
  result = qword_1EB643150;
  if (!qword_1EB643150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643150);
  }

  return result;
}

unint64_t sub_1AFBACBFC()
{
  result = qword_1EB643158;
  if (!qword_1EB643158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643158);
  }

  return result;
}

unint64_t sub_1AFBACC54()
{
  result = qword_1EB643160;
  if (!qword_1EB643160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643160);
  }

  return result;
}

unint64_t sub_1AFBACCAC()
{
  result = qword_1EB643168;
  if (!qword_1EB643168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643168);
  }

  return result;
}

unint64_t sub_1AFBACD04()
{
  result = qword_1EB643170;
  if (!qword_1EB643170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643170);
  }

  return result;
}

unint64_t sub_1AFBACD5C()
{
  result = qword_1EB643178;
  if (!qword_1EB643178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643178);
  }

  return result;
}

unint64_t sub_1AFBACDB4()
{
  result = qword_1EB643180;
  if (!qword_1EB643180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643180);
  }

  return result;
}

unint64_t sub_1AFBACE0C()
{
  result = qword_1EB643188;
  if (!qword_1EB643188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643188);
  }

  return result;
}

uint64_t sub_1AFBACECC(uint64_t a1)
{
  v2 = sub_1AFBB7D70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFBACF08(uint64_t a1)
{
  v2 = sub_1AFBB7D70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFBACF94(uint64_t a1)
{
  v2 = sub_1AFBB7D1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFBACFD0(uint64_t a1)
{
  v2 = sub_1AFBB7D1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFBAD070(void *a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(void), uint64_t a6, void (*a7)(void))
{
  sub_1AFBB7DC4(0, a4, a5, a6, MEMORY[0x1E69E6F58]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v16 - v13;
  sub_1AF441150(a1, a1[3]);
  a7();
  sub_1AFDFF3F8();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1AFBAD1C4()
{
  sub_1AFDFD038();
}

uint64_t sub_1AFBAD2DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AFBB39C4();
  *a1 = result;
  return result;
}

void sub_1AFBAD30C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1953066341;
  v5 = 0xEB00000000726574;
  v6 = 0x74696D45776F6873;
  if (v2 != 5)
  {
    v6 = 0x6F6C6556776F6873;
    v5 = 0xEC00000079746963;
  }

  v7 = 0xE700000000000000;
  v8 = 0x797469736E6564;
  if (v2 != 3)
  {
    v8 = 0x797469636F6C6576;
    v7 = 0xE800000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x656372756F73;
  if (v2 != 1)
  {
    v9 = 0x737569646172;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_1AFBAD3EC()
{
  v1 = *v0;
  v2 = 1953066341;
  v3 = 0x74696D45776F6873;
  if (v1 != 5)
  {
    v3 = 0x6F6C6556776F6873;
  }

  v4 = 0x797469736E6564;
  if (v1 != 3)
  {
    v4 = 0x797469636F6C6576;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x656372756F73;
  if (v1 != 1)
  {
    v5 = 0x737569646172;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1AFBAD4C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AFBB39C4();
  *a1 = result;
  return result;
}

uint64_t sub_1AFBAD4F0(uint64_t a1)
{
  v2 = sub_1AFBB7A04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFBAD52C(uint64_t a1)
{
  v2 = sub_1AFBB7A04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFBAD568(void *a1)
{
  v3 = v1;
  sub_1AFBB7DC4(0, &qword_1EB6431C0, sub_1AFBB7A04, &type metadata for ParticleFluidSolver2DEmitter.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v12 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AFBB7A04();
  sub_1AFDFF3F8();
  v19 = 0;
  sub_1AFDFE8C8();
  if (!v2)
  {
    v12[1] = *(v3 + 4);
    v18 = 1;
    sub_1AF480018();
    sub_1AFDFE918();
    v17 = 2;
    sub_1AFDFE8E8();
    v16 = 3;
    sub_1AFDFE8E8();
    v15 = 4;
    sub_1AFDFE8E8();
    v14 = 5;
    sub_1AFDFE8C8();
    v13 = 6;
    sub_1AFDFE8C8();
  }

  return (*(v7 + 8))(v10, v6);
}

double sub_1AFBAD800@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AFBB4760(a1, v5);
  if (!v2)
  {
    *a2 = *v5;
    result = *&v5[10];
    *(a2 + 10) = *&v5[10];
  }

  return result;
}

double sub_1AFBAD8B4@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 4) = 0xFFFFFFFFLL;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 12) = result;
  *(a1 + 20) = 1065353216;
  *(a1 + 24) = 1;
  return result;
}

uint64_t sub_1AFBAD918(uint64_t a1)
{
  v2 = sub_1AFBB7E2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFBAD954(uint64_t a1)
{
  v2 = sub_1AFBB7E2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFBAD9E0(uint64_t a1)
{
  v2 = sub_1AFBB7CC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFBADA1C(uint64_t a1)
{
  v2 = sub_1AFBB7CC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AFBADA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1AFBB78E0(0, &qword_1ED72F7D0, sub_1AF47BC54);
  v8 = swift_allocObject();
  *&result = 1;
  *(v8 + 16) = xmmword_1AFE431C0;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  return result;
}

void sub_1AFBADB20()
{
  v0[3] = 0u;
  v0[4] = 0u;
  v0[1] = 0u;
  v0[2] = 0u;
  sub_1AFD67014();
}

void **sub_1AFBADBE4()
{
  sub_1AFD67078(v0[2]);
  sub_1AFD67078(v0[3]);
  sub_1AFD67078(v0[4]);
  sub_1AFD67078(v0[5]);
  sub_1AFD67078(v0[6]);
  sub_1AFD67078(v0[7]);
  sub_1AFD67078(v0[8]);
  sub_1AFD67078(v0[9]);
  return v0;
}

uint64_t sub_1AFBADC3C()
{
  sub_1AFBADBE4();

  return swift_deallocClassInstance();
}

uint64_t sub_1AFBADC94(uint64_t result, unsigned __int8 a2, int8x16_t a3, float a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, __n128 a8)
{
  v12 = vmulq_f32(a5, a5);
  v13 = vmulq_f32(a6, a6);
  v14 = vmulq_f32(a7, a7);
  v15 = vzip2q_s32(v12, v14);
  v16 = vzip1q_s32(vzip1q_s32(v12, v14), v13);
  v17 = vtrn2q_s32(v12, v13);
  v17.i32[2] = v14.i32[1];
  v18 = vaddq_f32(vzip1q_s32(v15, vdupq_laneq_s32(v13, 2)), vaddq_f32(v16, v17));
  v13.i64[0] = 0x80000000800000;
  v13.i64[1] = 0x80000000800000;
  v19 = vcgeq_f32(v13, v18);
  v18.i32[3] = 0;
  v20 = vrsqrteq_f32(v18);
  v21 = vmulq_f32(v20, vrsqrtsq_f32(v18, vmulq_f32(v20, v20)));
  v22 = v19;
  v22.i32[3] = 0;
  v23 = vbslq_s8(vcltzq_s32(v22), v18, vmulq_f32(v21, vrsqrtsq_f32(v18, vmulq_f32(v21, v21))));
  v24 = vmulq_n_f32(a5, v23.f32[0]);
  v25 = vmulq_lane_f32(a6, *v23.f32, 1);
  v26 = vmulq_laneq_f32(a7, v23, 2);
  v27 = vuzp1q_s32(v26, v26);
  v28 = vuzp1q_s32(v25, v25);
  v29 = v24;
  if (v19.i32[0])
  {
    v30 = vmlaq_f32(vmulq_f32(vextq_s8(v27, v26, 0xCuLL), vnegq_f32(v25)), v26, vextq_s8(v28, v25, 0xCuLL));
    v29 = vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL);
  }

  v31 = vuzp1q_s32(v24, v24);
  v32 = v25;
  if (v19.i32[1])
  {
    v33 = vmlaq_f32(vmulq_f32(vextq_s8(v31, v24, 0xCuLL), vnegq_f32(v26)), v24, vextq_s8(v27, v26, 0xCuLL));
    v32 = vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL);
  }

  if (v19.i32[2])
  {
    v34 = vmlaq_f32(vmulq_f32(vextq_s8(v28, v25, 0xCuLL), vnegq_f32(v24)), v25, vextq_s8(v31, v24, 0xCuLL));
    v26 = vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL);
  }

  v35 = (*v29.i32 + *&v32.i32[1]) + v26.f32[2];
  if (v35 > 0.0)
  {
    v36 = sqrtf(v35 + 1.0);
    *v37.f32 = vsub_f32(*&vzip2q_s32(v32, vuzp1q_s32(v32, v26)), *&vtrn2q_s32(v26, vzip2q_s32(v26, v29)));
    v37.f32[2] = *&v29.i32[1] - *v32.i32;
    v37.f32[3] = v36 * v36;
    v38 = 0.5 / v36;
LABEL_9:
    v39 = vmulq_n_f32(v37, v38);
    goto LABEL_18;
  }

  if (*v29.i32 < *&v32.i32[1] || *v29.i32 < v26.f32[2])
  {
    if (*&v32.i32[1] <= v26.f32[2])
    {
      v198 = vzip2q_s32(v29, v32).u64[0];
      v199 = __PAIR64__(v29.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v26.f32[2] + 1.0) - *v29.i32) - *&v32.i32[1])));
      v200 = vdup_lane_s32(*v32.i8, 0);
      v201 = vsub_f32(*v29.i8, v200);
      v200.i32[0] = v199.i32[0];
      v200.i32[0] = vmul_f32(v199, v200).u32[0];
      v200.i32[1] = v201.i32[1];
      *v37.f32 = vadd_f32(v198, *v26.f32);
      *&v37.u32[2] = v200;
      v38 = 0.5 / v199.f32[0];
      goto LABEL_9;
    }

    v42 = sqrtf(((*&v32.i32[1] + 1.0) - *v29.i32) - v26.f32[2]);
    v46.f32[0] = *&v29.i32[1] + *v32.i32;
    v41 = vzip2q_s32(v29, v32).u64[0];
    v46.f32[1] = v42 * v42;
    *&v46.u32[2] = vext_s8(vadd_f32(*v26.f32, v41), vsub_f32(*v26.f32, v41), 4uLL);
  }

  else
  {
    v42 = sqrtf(((*v29.i32 + 1.0) - *&v32.i32[1]) - v26.f32[2]);
    v46.f32[0] = v42 * v42;
    v43 = *&v29.i32[1] + *v32.i32;
    v44 = vzip2q_s32(v29, v32).u64[0];
    LODWORD(v45) = vadd_f32(v44, *v26.f32).u32[0];
    HIDWORD(v45) = vsub_f32(v44, *&v26).i32[1];
    v46.f32[1] = v43;
    v46.i64[1] = v45;
  }

  v39 = vmulq_n_f32(v46, 0.5 / v42);
LABEL_18:
  v511 = v39;
  if (result > 3u)
  {
    v503 = a3;
    if (result <= 5u)
    {
      if (result == 4)
      {
        v47 = sub_1AF42242C(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v49 = *(v47 + 2);
        v48 = *(v47 + 3);
        v50 = v48 >> 1;
        v51 = v49 + 1;
        if (v48 >> 1 <= v49)
        {
          v47 = sub_1AF42242C(v48 > 1, v49 + 1, 1, v47);
          v48 = *(v47 + 3);
          v50 = v48 >> 1;
        }

        v52 = v503;
        v53 = v503.i32[1];
        *(v47 + 2) = v51;
        *&v47[8 * v49 + 32] = v503.i64[0];
        if (v50 < (v49 + 2))
        {
          v405 = sub_1AF42242C(v48 > 1, v49 + 2, 1, v47);
          v53 = v503.i32[1];
          v52 = v503;
          v47 = v405;
        }

        *&v54 = (*v52.i32 + *&v52.i32[2]) * 0.5;
        HIDWORD(v54) = v53;
        *(v47 + 2) = v49 + 2;
        *&v47[8 * v51 + 32] = v54;
        v56 = *(v47 + 2);
        v55 = *(v47 + 3);
        if (v56 >= v55 >> 1)
        {
          v506 = v54;
          v406 = sub_1AF42242C(v55 > 1, v56 + 1, 1, v47);
          v54 = v506;
          v47 = v406;
        }

        *(v47 + 2) = v56 + 1;
        *&v47[8 * v56 + 32] = v54;
        v57 = sub_1AF42458C(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v59 = *(v57 + 2);
        v58 = *(v57 + 3);
        v60 = v58 >> 1;
        v61 = v59 + 1;
        if (v58 >> 1 <= v59)
        {
          v57 = sub_1AF42458C(v58 > 1, v59 + 1, 1, v57);
          v58 = *(v57 + 3);
          v60 = v58 >> 1;
        }

        v62 = v511;
        v63 = vdupq_lane_s32(*v511.f32, 0);
        v64 = vdupq_laneq_s32(v511, 2);
        *(v57 + 2) = v61;
        *&v57[16 * v59 + 32] = vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(xmmword_1AFEA1860, *v511.f32, 1), xmmword_1AFEA1870, v511.f32[0]), vmlaq_laneq_f32(vmulq_laneq_f32(xmmword_1AFE201A0, v511, 3), xmmword_1AFEA1880, v511, 2));
        if (v60 < (v59 + 2))
        {
          v497 = v64;
          v507 = v63;
          v407 = sub_1AF42458C(v58 > 1, v59 + 2, 1, v57);
          v64 = v497;
          v63 = v507;
          v62 = v511;
          v57 = v407;
        }

        *(v57 + 2) = v59 + 2;
        *&v57[16 * v61 + 32] = vaddq_f32(vmlaq_f32(vmulq_lane_f32(xmmword_1AFEA1990, *v62.f32, 1), xmmword_1AFEA19A0, v63), vmlaq_f32(vmulq_laneq_f32(xmmword_1AFEA19B0, v62, 3), xmmword_1AFEA19C0, v64));
        v66 = *(v57 + 2);
        v65 = *(v57 + 3);
        if (v66 >= v65 >> 1)
        {
          v498 = v64;
          v508 = v63;
          v408 = sub_1AF42458C(v65 > 1, v66 + 1, 1, v57);
          v64 = v498;
          v63 = v508;
          v62 = v511;
          v57 = v408;
        }

        v67 = 0;
        *(v57 + 2) = v66 + 1;
        *&v57[16 * v66 + 32] = vaddq_f32(vmlaq_f32(vmulq_lane_f32(xmmword_1AFEA19D0, *v62.f32, 1), xmmword_1AFEA19E0, v63), vmlaq_f32(vmulq_laneq_f32(xmmword_1AFEA19F0, v62, 3), xmmword_1AFEA1A00, v64));
        while (1)
        {
          v69 = *(v8 + 32);
          v513 = *(v8 + 16);
          v514 = v69;
          v70 = *(v8 + 64);
          v515 = *(v8 + 48);
          v516 = v70;
          v71 = *(&v513 + v67);
          if (!v71)
          {
            goto LABEL_243;
          }

          v72 = &v47[8 * v67];
          if (sub_1AFD670B8(*(&v513 + v67), COERCE_FLOAT(*(v72 + 4)), COERCE_FLOAT(HIDWORD(*(v72 + 4))), a4))
          {
            sub_1AFD670BC(v71, COERCE_FLOAT(*(v72 + 4)), COERCE_FLOAT(HIDWORD(*(v72 + 4))), a4);
          }

          sub_1AFD67184(v71, a8);
          sub_1AFD67188(v71, *&v57[16 * v67 + 32]);
          v68 = dword_1AFEA2490[a2];
          sub_1AFD670D8(v71, 0, v68, 0, 0, 0);
          sub_1AFD670D8(v71, 2u, v68, 0, 0, 0);
          sub_1AFD670D8(v71, 1u, v68, 0, 0, 0);
          sub_1AFD670D8(v71, 3u, v68, 0, 0, 0);
          if (++v67 == 3)
          {
            goto LABEL_57;
          }
        }
      }

      v206 = sub_1AF42242C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v208 = *(v206 + 2);
      v207 = *(v206 + 3);
      v209 = v207 >> 1;
      v210 = v208 + 1;
      if (v207 >> 1 <= v208)
      {
        v206 = sub_1AF42242C(v207 > 1, v208 + 1, 1, v206);
        v207 = *(v206 + 3);
        v209 = v207 >> 1;
      }

      *(v206 + 2) = v210;
      v211 = v503;
      *&v206[8 * v208 + 32] = v503.i64[0];
      v212 = v208 + 2;
      if (v209 < (v208 + 2))
      {
        v426 = sub_1AF42242C(v207 > 1, v208 + 2, 1, v206);
        v211 = v503;
        v206 = v426;
      }

      HIDWORD(v213) = v211.i32[1];
      LODWORD(v213) = vextq_s8(v211, v211, 8uLL).u32[0];
      *(v206 + 2) = v212;
      *&v206[8 * v210 + 32] = v213;
      v214 = *(v206 + 3);
      v215 = v208 + 3;
      if ((v208 + 3) > (v214 >> 1))
      {
        v499 = v213;
        v427 = sub_1AF42242C(v214 > 1, v208 + 3, 1, v206);
        v213 = v499;
        v211 = v503;
        v206 = v427;
      }

      *(v206 + 2) = v215;
      *&v206[8 * v212 + 32] = v211.i64[0];
      v216 = *(v206 + 3);
      v492 = a2;
      if ((v208 + 4) > (v216 >> 1))
      {
        v500 = v213;
        v428 = sub_1AF42242C(v216 > 1, v208 + 4, 1, v206);
        v213 = v500;
        v211.i32[2] = v503.i32[2];
        v206 = v428;
      }

      v217 = *&v211.i32[2];
      v218 = v206 + 32;
      *(v206 + 2) = v208 + 4;
      *&v206[8 * v215 + 32] = v213;
      v219 = sub_1AF42250C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v221 = *(v219 + 2);
      v220 = *(v219 + 3);
      v222 = v220 >> 1;
      v223 = v221 + 1;
      if (v220 >> 1 <= v221)
      {
        v219 = sub_1AF42250C(v220 > 1, v221 + 1, 1, v219);
        v220 = *(v219 + 3);
        v222 = v220 >> 1;
      }

      v224 = 0.5;
      v225 = v511;
      v226 = vmulq_f32(v511, xmmword_1AFE21390);
      v227 = vnegq_f32(v226);
      v228 = vtrn2q_s32(v226, vtrn1q_s32(v226, v227));
      v229 = vextq_s8(v228, v228, 8uLL);
      v230 = 0uLL;
      v231 = vmulq_f32(vextq_s8(v226, v227, 8uLL), 0);
      v232 = vmlaq_f32(v231, 0, v229);
      v233 = vrev64q_s32(v226);
      v233.i32[0] = v227.i32[1];
      v233.i32[3] = v227.i32[2];
      v234 = vmlaq_n_f32(v232, v233, v217 * 0.5);
      v235 = vdupq_lane_s32(*v511.f32, 0);
      v236 = vnegq_f32(v234);
      v237 = vtrn2q_s32(v234, vtrn1q_s32(v234, v236));
      v238 = vdupq_laneq_s32(v511, 2);
      v239 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v234, v236, 8uLL), *v511.f32, 1), vextq_s8(v237, v237, 8uLL), v511.f32[0]);
      v240 = vrev64q_s32(v234);
      v240.i32[0] = v236.i32[1];
      v240.i32[3] = v236.i32[2];
      v241 = vaddq_f32(vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v234, v511, 3), v240, v511, 2), v239), a8);
      v241.i32[3] = 0;
      *(v219 + 2) = v223;
      *&v219[16 * v221 + 32] = v241;
      v242 = v221 + 2;
      v243 = *v503.i32;
      v494 = v238;
      v496 = v235;
      if (v222 < (v221 + 2))
      {
        v477 = v229;
        v485 = v231;
        v455 = v232;
        v464 = v233;
        v429 = sub_1AF42250C(v220 > 1, v221 + 2, 1, v219);
        v230 = 0uLL;
        v232 = v455;
        v233 = v464;
        v229 = v477;
        v231 = v485;
        v238 = v494;
        v235 = v496;
        v243 = *v503.i32;
        v225 = v511;
        v224 = 0.5;
        v219 = v429;
      }

      v244 = vmlaq_f32(vmlaq_n_f32(v231, v229, v243 * v224), v230, v233);
      v245 = vnegq_f32(v244);
      v246 = vtrn2q_s32(v244, vtrn1q_s32(v244, v245));
      v247 = vmlaq_f32(vmulq_lane_f32(vextq_s8(v244, v245, 8uLL), *v225.f32, 1), vextq_s8(v246, v246, 8uLL), v235);
      v248 = vrev64q_s32(v244);
      v248.i32[0] = v245.i32[1];
      v248.i32[3] = v245.i32[2];
      v249 = vaddq_f32(vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v244, v225, 3), v248, v238), v247), a8);
      v249.i32[3] = 0;
      *(v219 + 2) = v242;
      *&v219[16 * v223 + 32] = v249;
      v250 = *(v219 + 3);
      v251 = v221 + 3;
      if ((v221 + 3) > (v250 >> 1))
      {
        v478 = v229;
        v486 = v231;
        v456 = v232;
        v465 = v233;
        v430 = sub_1AF42250C(v250 > 1, v221 + 3, 1, v219);
        v232 = v456;
        v233 = v465;
        v229 = v478;
        v231 = v486;
        v238 = v494;
        v235 = v496;
        v243 = *v503.i32;
        v225 = v511;
        v219 = v430;
      }

      v252 = -0.5;
      v253 = vmlaq_n_f32(v232, v233, v217 * -0.5);
      v254 = vnegq_f32(v253);
      v255 = vtrn2q_s32(v253, vtrn1q_s32(v253, v254));
      v256 = vmlaq_f32(vmulq_lane_f32(vextq_s8(v253, v254, 8uLL), *v225.f32, 1), vextq_s8(v255, v255, 8uLL), v235);
      v257 = vrev64q_s32(v253);
      v257.i32[0] = v254.i32[1];
      v257.i32[3] = v254.i32[2];
      v258 = vaddq_f32(vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v253, v225, 3), v257, v238), v256), a8);
      v258.i32[3] = 0;
      *(v219 + 2) = v251;
      *&v219[16 * v242 + 32] = v258;
      v259 = *(v219 + 3);
      if ((v221 + 4) > (v259 >> 1))
      {
        v479 = v229;
        v487 = v231;
        v466 = v233;
        v431 = sub_1AF42250C(v259 > 1, v221 + 4, 1, v219);
        v233 = v466;
        v229 = v479;
        v231 = v487;
        v238 = v494;
        v235 = v496;
        v243 = *v503.i32;
        v225 = v511;
        v252 = -0.5;
        v219 = v431;
      }

      v260 = vmlaq_f32(vmlaq_n_f32(v231, v229, v243 * v252), 0, v233);
      v261 = vnegq_f32(v260);
      v262 = vtrn2q_s32(v260, vtrn1q_s32(v260, v261));
      v263 = vmlaq_f32(vmulq_lane_f32(vextq_s8(v260, v261, 8uLL), *v225.f32, 1), vextq_s8(v262, v262, 8uLL), v235);
      v264 = vrev64q_s32(v260);
      v264.i32[0] = v261.i32[1];
      v264.i32[3] = v261.i32[2];
      v265 = vaddq_f32(vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v260, v225, 3), v264, v238), v263), a8);
      v265.i32[3] = 0;
      *(v219 + 2) = v221 + 4;
      *&v219[16 * v251 + 32] = v265;
      v266 = sub_1AF42458C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v268 = *(v266 + 2);
      v267 = *(v266 + 3);
      v269 = v267 >> 1;
      v270 = v268 + 1;
      if (v267 >> 1 <= v268)
      {
        v266 = sub_1AF42458C(v267 > 1, v268 + 1, 1, v266);
        v267 = *(v266 + 3);
        v269 = v267 >> 1;
      }

      v271 = v511;
      v273 = v494;
      v272 = v496;
      *(v266 + 2) = v270;
      *&v266[16 * v268 + 32] = vaddq_f32(vmlaq_f32(vmulq_lane_f32(xmmword_1AFEA1860, *v511.f32, 1), xmmword_1AFEA1870, v496), vmlaq_f32(vmulq_laneq_f32(xmmword_1AFE201A0, v511, 3), xmmword_1AFEA1880, v494));
      v274 = v268 + 2;
      if (v269 < (v268 + 2))
      {
        v432 = sub_1AF42458C(v267 > 1, v268 + 2, 1, v266);
        v273 = v494;
        v272 = v496;
        v271 = v511;
        v266 = v432;
      }

      *(v266 + 2) = v274;
      *&v266[16 * v270 + 32] = vaddq_f32(vmlaq_f32(vmulq_lane_f32(xmmword_1AFEA1890, *v271.f32, 1), xmmword_1AFEA18A0, v272), vmlaq_f32(vmulq_laneq_f32(xmmword_1AFEA18B0, v271, 3), xmmword_1AFEA18C0, v273));
      v275 = *(v266 + 3);
      v276 = v268 + 3;
      if ((v268 + 3) > (v275 >> 1))
      {
        v433 = sub_1AF42458C(v275 > 1, v268 + 3, 1, v266);
        v273 = v494;
        v272 = v496;
        v271 = v511;
        v266 = v433;
      }

      *(v266 + 2) = v276;
      *&v266[16 * v274 + 32] = vaddq_f32(vmlaq_f32(vmulq_lane_f32(xmmword_1AFEA18D0, *v271.f32, 1), xmmword_1AFEA18E0, v272), vmlaq_f32(vmulq_laneq_f32(xmmword_1AFEA18F0, v271, 3), xmmword_1AFEA1900, v273));
      v277 = *(v266 + 3);
      if ((v268 + 4) > (v277 >> 1))
      {
        v434 = sub_1AF42458C(v277 > 1, v268 + 4, 1, v266);
        v273 = v494;
        v272 = v496;
        v271 = v511;
        v266 = v434;
      }

      v278 = 0;
      *(v266 + 2) = v268 + 4;
      *&v266[16 * v276 + 32] = vaddq_f32(vmlaq_f32(vmulq_lane_f32(xmmword_1AFEA1910, *v271.f32, 1), xmmword_1AFEA1920, v272), vmlaq_f32(vmulq_laneq_f32(xmmword_1AFEA1930, v271, 3), xmmword_1AFEA1940, v273));
      do
      {
        v281 = *(v8 + 32);
        v513 = *(v8 + 16);
        v514 = v281;
        v282 = *(v8 + 64);
        v515 = *(v8 + 48);
        v516 = v282;
        v283 = *(&v513 + v278);
        if (!v283)
        {
          goto LABEL_243;
        }

        if (sub_1AFD670B8(*(&v513 + v278), COERCE_FLOAT(*&v218[8 * v278]), COERCE_FLOAT(HIDWORD(*&v218[8 * v278])), a4))
        {
          sub_1AFD670BC(v283, COERCE_FLOAT(*&v218[8 * v278]), COERCE_FLOAT(HIDWORD(*&v218[8 * v278])), a4);
        }

        v279 = v278 + 1;
        v280 = 16 * v278;
        sub_1AFD67184(v283, *&v219[v280 + 32]);
        sub_1AFD67188(v283, *&v266[v280 + 32]);
        v278 = v279;
      }

      while (v279 != 4);
      v384 = *(v8 + 16);
      if (!v384 || (v385 = *(v8 + 24)) == 0 || (v386 = *(v8 + 32)) == 0 || (v387 = *(v8 + 40)) == 0)
      {
        while (1)
        {
LABEL_243:
          sub_1AFDFE518();
          __break(1u);
        }
      }

      if (v492 <= 2u)
      {
        if (v492)
        {
          if (v492 == 1)
          {
            sub_1AFD670D8(v384, 0, 0, 0, 0, 0);
            sub_1AFD670D8(v384, 2u, 0, 0, 0, 0);
            sub_1AFD670D8(v384, 1u, 0, 0, 0, 0);
            sub_1AFD670D8(v384, 3u, 0, 0, 0, 0);
            sub_1AFD670D8(v385, 0, 0, 0, 0, 0);
            sub_1AFD670D8(v385, 2u, 0, 0, 0, 0);
            sub_1AFD670D8(v385, 1u, 0, 0, 0, 0);
            sub_1AFD670D8(v385, 3u, 0, 0, 0, 0);
            sub_1AFD670D8(v386, 0, 0, 0, 0, 0);
            sub_1AFD670D8(v386, 2u, 0, 0, 0, 0);
            sub_1AFD670D8(v386, 1u, 0, 0, 0, 0);
            sub_1AFD670D8(v386, 3u, 0, 0, 0, 0);
            sub_1AFD670D8(v387, 0, 0, 0, 0, 0);
            sub_1AFD670D8(v387, 2u, 0, 0, 0, 0);
            sub_1AFD670D8(v387, 1u, 0, 0, 0, 0);
            v388 = v387;
            v389 = 0;
          }

          else
          {
            sub_1AFD670D8(v384, 0, 1, 0, 0, 0);
            sub_1AFD670D8(v384, 2u, 1, 0, 0, 0);
            sub_1AFD670D8(v384, 1u, 1, 0, 0, 0);
            sub_1AFD670D8(v384, 3u, 1, 0, 0, 0);
            sub_1AFD670D8(v385, 0, 1, 0, 0, 0);
            sub_1AFD670D8(v385, 2u, 1, 0, 0, 0);
            sub_1AFD670D8(v385, 1u, 1, 0, 0, 0);
            sub_1AFD670D8(v385, 3u, 1, 0, 0, 0);
            sub_1AFD670D8(v386, 0, 1, 0, 0, 0);
            sub_1AFD670D8(v386, 2u, 1, 0, 0, 0);
            sub_1AFD670D8(v386, 1u, 1, 0, 0, 0);
            sub_1AFD670D8(v386, 3u, 1, 0, 0, 0);
            sub_1AFD670D8(v387, 0, 1, 0, 0, 0);
            sub_1AFD670D8(v387, 2u, 1, 0, 0, 0);
            sub_1AFD670D8(v387, 1u, 1, 0, 0, 0);
            v388 = v387;
            v389 = 1;
          }

          goto LABEL_232;
        }
      }

      else
      {
        if (v492 <= 4u)
        {
          if (v492 == 3)
          {
            sub_1AFD670D8(v384, 0, 2, 0, 0, 0);
            sub_1AFD670D8(v384, 2u, 2, 0, 0, 0);
            sub_1AFD670D8(v384, 1u, 2, 0, 0, 0);
            sub_1AFD670D8(v384, 3u, 2, 0, 0, 0);
            sub_1AFD670D8(v385, 0, 2, 0, 0, 0);
            sub_1AFD670D8(v385, 2u, 2, 0, 0, 0);
            sub_1AFD670D8(v385, 1u, 2, 0, 0, 0);
            sub_1AFD670D8(v385, 3u, 2, 0, 0, 0);
            sub_1AFD670D8(v386, 0, 2, 0, 0, 0);
            sub_1AFD670D8(v386, 2u, 2, 0, 0, 0);
            sub_1AFD670D8(v386, 1u, 2, 0, 0, 0);
            sub_1AFD670D8(v386, 3u, 2, 0, 0, 0);
            sub_1AFD670D8(v387, 0, 2, 0, 0, 0);
            sub_1AFD670D8(v387, 2u, 2, 0, 0, 0);
            sub_1AFD670D8(v387, 1u, 2, 0, 0, 0);
            v388 = v387;
            v389 = 2;
LABEL_232:
            v403 = 0;
            v404 = 0;
LABEL_236:
            sub_1AFD670D8(v388, 3u, v389, v403, v404, 0);

            goto LABEL_240;
          }

          sub_1AFD670D8(v384, 0, 0, 0, 0, 0);
          sub_1AFD670D8(v384, 2u, 0, 0, 0, 0);
          sub_1AFD670D8(v384, 1u, 1, v387, 3, 0);
          sub_1AFD670D8(v384, 3u, 1, v385, 1, 0);
          sub_1AFD670D8(v385, 0, 0, 0, 0, 0);
          sub_1AFD670D8(v385, 2u, 0, 0, 0, 0);
          sub_1AFD670D8(v385, 1u, 1, v384, 3, 0);
          sub_1AFD670D8(v385, 3u, 1, v386, 1, 0);
          sub_1AFD670D8(v386, 0, 0, 0, 0, 0);
          sub_1AFD670D8(v386, 2u, 0, 0, 0, 0);
          sub_1AFD670D8(v386, 1u, 1, v385, 3, 0);
          sub_1AFD670D8(v386, 3u, 1, v387, 1, 0);
          sub_1AFD670D8(v387, 0, 0, 0, 0, 0);
          v399 = v387;
          v400 = 0;
LABEL_235:
          sub_1AFD670D8(v399, 2u, v400, 0, 0, 0);
          sub_1AFD670D8(v387, 1u, 1, v386, 3, 0);
          v388 = v387;
          v389 = 1;
          v403 = v384;
          v404 = 1;
          goto LABEL_236;
        }

        if (v492 != 5)
        {
          sub_1AFD670D8(v384, 0, 2, 0, 0, 0);
          sub_1AFD670D8(v384, 2u, 2, 0, 0, 0);
          sub_1AFD670D8(v384, 1u, 1, v387, 3, 0);
          sub_1AFD670D8(v384, 3u, 1, v385, 1, 0);
          sub_1AFD670D8(v385, 0, 2, 0, 0, 0);
          sub_1AFD670D8(v385, 2u, 2, 0, 0, 0);
          sub_1AFD670D8(v385, 1u, 1, v384, 3, 0);
          sub_1AFD670D8(v385, 3u, 1, v386, 1, 0);
          sub_1AFD670D8(v386, 0, 2, 0, 0, 0);
          sub_1AFD670D8(v386, 2u, 2, 0, 0, 0);
          sub_1AFD670D8(v386, 1u, 1, v385, 3, 0);
          sub_1AFD670D8(v386, 3u, 1, v387, 1, 0);
          sub_1AFD670D8(v387, 0, 2, 0, 0, 0);
          v399 = v387;
          v400 = 2;
          goto LABEL_235;
        }
      }

      sub_1AFD670D8(v384, 0, 1, 0, 0, 0);
      sub_1AFD670D8(v384, 2u, 1, 0, 0, 0);
      sub_1AFD670D8(v384, 1u, 1, v387, 3, 0);
      sub_1AFD670D8(v384, 3u, 1, v385, 1, 0);
      sub_1AFD670D8(v385, 0, 1, 0, 0, 0);
      sub_1AFD670D8(v385, 2u, 1, 0, 0, 0);
      sub_1AFD670D8(v385, 1u, 1, v384, 3, 0);
      sub_1AFD670D8(v385, 3u, 1, v386, 1, 0);
      sub_1AFD670D8(v386, 0, 1, 0, 0, 0);
      sub_1AFD670D8(v386, 2u, 1, 0, 0, 0);
      sub_1AFD670D8(v386, 1u, 1, v385, 3, 0);
      sub_1AFD670D8(v386, 3u, 1, v387, 1, 0);
      sub_1AFD670D8(v387, 0, 1, 0, 0, 0);
      v399 = v387;
      v400 = 1;
      goto LABEL_235;
    }

    v490 = *&a3.i32[2];
    v482 = vextq_s8(a3, a3, 8uLL).u32[0];
    v493 = vdupq_lane_s32(*v39.i8, 0);
    v495 = vdupq_laneq_s32(v39, 2);
    if (result == 6)
    {
      v90 = sub_1AF42242C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v92 = *(v90 + 2);
      v91 = *(v90 + 3);
      v93 = v91 >> 1;
      v94 = v92 + 1;
      if (v91 >> 1 <= v92)
      {
        v90 = sub_1AF42242C(v91 > 1, v92 + 1, 1, v90);
        v91 = *(v90 + 3);
        v93 = v91 >> 1;
      }

      v95 = v503.i32[1];
      LODWORD(v96) = v503.i32[0];
      v97 = v503.i64[0];
      *(v90 + 2) = v94;
      *&v90[8 * v92 + 32] = v503.i64[0];
      v98 = v92 + 2;
      v99 = v490;
      if (v93 < (v92 + 2))
      {
        v411 = sub_1AF42242C(v91 > 1, v92 + 2, 1, v90);
        v97 = v503.i64[0];
        LODWORD(v96) = v503.i32[0];
        v99 = v490;
        v95 = v503.i32[1];
        v90 = v411;
      }

      v100 = __PAIR64__(v95, v482);
      *(v90 + 2) = v98;
      *&v90[8 * v94 + 32] = __PAIR64__(v95, v482);
      v101 = *(v90 + 3);
      v102 = v92 + 3;
      if ((v92 + 3) > (v101 >> 1))
      {
        v458 = v97;
        v468 = v96;
        v483 = __PAIR64__(v95, v482);
        v412 = sub_1AF42242C(v101 > 1, v92 + 3, 1, v90);
        LODWORD(v96) = v468;
        v100 = v483;
        v97 = v458;
        v99 = v490;
        v90 = v412;
      }

      *(v90 + 2) = v102;
      *&v90[8 * v98 + 32] = v97;
      v103 = *(v90 + 3);
      v104 = v92 + 4;
      if ((v92 + 4) > (v103 >> 1))
      {
        v469 = v96;
        v484 = v100;
        v413 = sub_1AF42242C(v103 > 1, v92 + 4, 1, v90);
        LODWORD(v96) = v469;
        v100 = v484;
        v99 = v490;
        v90 = v413;
      }

      *(v90 + 2) = v104;
      *&v90[8 * v102 + 32] = v100;
      v105 = *(v90 + 3);
      v106 = v92 + 5;
      if ((v92 + 5) > (v105 >> 1))
      {
        v470 = v96;
        v414 = sub_1AF42242C(v105 > 1, v92 + 5, 1, v90);
        LODWORD(v96) = v470;
        v99 = v490;
        v90 = v414;
      }

      *(&v96 + 1) = v99;
      *(v90 + 2) = v106;
      *&v90[8 * v104 + 32] = v96;
      v107 = *(v90 + 3);
      v108 = v92 + 6;
      if ((v92 + 6) > (v107 >> 1))
      {
        v471 = v96;
        v415 = sub_1AF42242C(v107 > 1, v92 + 6, 1, v90);
        v96 = v471;
        v90 = v415;
      }

      v109 = v90 + 32;
      *(v90 + 2) = v108;
      *&v90[8 * v106 + 32] = v96;
      v110 = sub_1AF42250C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v112 = *(v110 + 2);
      v111 = *(v110 + 3);
      v113 = v111 >> 1;
      v114 = v112 + 1;
      if (v111 >> 1 <= v112)
      {
        v110 = sub_1AF42250C(v111 > 1, v112 + 1, 1, v110);
        v111 = *(v110 + 3);
        v113 = v111 >> 1;
      }

      v115 = v490;
      v116 = v511;
      v117 = vmulq_f32(v511, xmmword_1AFE21390);
      v118 = vnegq_f32(v117);
      v119 = vtrn2q_s32(v117, vtrn1q_s32(v117, v118));
      v120 = vextq_s8(v119, v119, 8uLL);
      v121 = vextq_s8(v117, v118, 8uLL);
      v122 = 0uLL;
      v123 = vmulq_f32(v121, 0);
      v124 = vmlaq_f32(v123, 0, v120);
      v125 = vrev64q_s32(v117);
      v125.i32[0] = v118.i32[1];
      v125.i32[3] = v118.i32[2];
      v126 = vmlaq_n_f32(v124, v125, v490 * 0.5);
      v127 = vnegq_f32(v126);
      v128 = vtrn2q_s32(v126, vtrn1q_s32(v126, v127));
      v129 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v126, v127, 8uLL), *v511.f32, 1), vextq_s8(v128, v128, 8uLL), v511.f32[0]);
      v130 = vrev64q_s32(v126);
      v130.i32[0] = v127.i32[1];
      v130.i32[3] = v127.i32[2];
      v131 = vaddq_f32(vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v126, v511, 3), v130, v511, 2), v129), a8);
      v131.i32[3] = 0;
      *(v110 + 2) = v114;
      *&v110[16 * v112 + 32] = v131;
      v132 = v112 + 2;
      v134 = v495;
      v133 = v503.i64[0];
      v135 = v493;
      if (v113 < (v112 + 2))
      {
        v459 = v121;
        v472 = v120;
        v447 = v123;
        v450 = v125;
        v445 = v124;
        v416 = sub_1AF42250C(v111 > 1, v112 + 2, 1, v110);
        v122 = 0uLL;
        v124 = v445;
        v123 = v447;
        v125 = v450;
        v121 = v459;
        v120 = v472;
        v115 = v490;
        v135 = v493;
        v134 = v495;
        v133 = v503.i64[0];
        v116 = v511;
        v110 = v416;
      }

      v136 = vmlaq_f32(vmlaq_n_f32(v123, v120, *&v133 * 0.5), v122, v125);
      v137 = vnegq_f32(v136);
      v138 = vtrn2q_s32(v136, vtrn1q_s32(v136, v137));
      v139 = vmlaq_f32(vmulq_lane_f32(vextq_s8(v136, v137, 8uLL), *v116.f32, 1), vextq_s8(v138, v138, 8uLL), v135);
      v140 = vrev64q_s32(v136);
      v140.i32[0] = v137.i32[1];
      v140.i32[3] = v137.i32[2];
      v141 = vaddq_f32(vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v136, v116, 3), v140, v134), v139), a8);
      v141.i32[3] = 0;
      *(v110 + 2) = v132;
      *&v110[16 * v114 + 32] = v141;
      v142 = *(v110 + 3);
      v143 = v112 + 3;
      if ((v112 + 3) > (v142 >> 1))
      {
        v460 = v121;
        v473 = v120;
        v448 = v123;
        v451 = v125;
        v446 = v124;
        v417 = sub_1AF42250C(v142 > 1, v112 + 3, 1, v110);
        v124 = v446;
        v123 = v448;
        v125 = v451;
        v121 = v460;
        v120 = v473;
        v115 = v490;
        v135 = v493;
        v134 = v495;
        v133 = v503.i64[0];
        v116 = v511;
        v110 = v417;
      }

      v144 = -0.5;
      v145 = vmlaq_n_f32(v124, v125, v115 * -0.5);
      v146 = vnegq_f32(v145);
      v147 = vtrn2q_s32(v145, vtrn1q_s32(v145, v146));
      v148 = vmlaq_f32(vmulq_lane_f32(vextq_s8(v145, v146, 8uLL), *v116.f32, 1), vextq_s8(v147, v147, 8uLL), v135);
      v149 = vrev64q_s32(v145);
      v149.i32[0] = v146.i32[1];
      v149.i32[3] = v146.i32[2];
      v150 = vaddq_f32(vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v145, v116, 3), v149, v134), v148), a8);
      v150.i32[3] = 0;
      *(v110 + 2) = v143;
      *&v110[16 * v132 + 32] = v150;
      v151 = *(v110 + 3);
      v152 = v112 + 4;
      if ((v112 + 4) > (v151 >> 1))
      {
        v461 = v121;
        v474 = v120;
        v449 = v123;
        v452 = v125;
        v418 = sub_1AF42250C(v151 > 1, v112 + 4, 1, v110);
        v123 = v449;
        v125 = v452;
        v121 = v461;
        v120 = v474;
        v135 = v493;
        v134 = v495;
        v133 = v503.i64[0];
        v116 = v511;
        v144 = -0.5;
        v110 = v418;
      }

      v153 = *(&v133 + 1);
      v154 = 0uLL;
      v155 = vmlaq_f32(vmlaq_n_f32(v123, v120, *&v133 * v144), 0, v125);
      v156 = vnegq_f32(v155);
      v157 = vtrn2q_s32(v155, vtrn1q_s32(v155, v156));
      v158 = vmlaq_f32(vmulq_lane_f32(vextq_s8(v155, v156, 8uLL), *v116.f32, 1), vextq_s8(v157, v157, 8uLL), v135);
      v159 = vrev64q_s32(v155);
      v159.i32[0] = v156.i32[1];
      v159.i32[3] = v156.i32[2];
      v160 = vaddq_f32(vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v155, v116, 3), v159, v134), v158), a8);
      v160.i32[3] = 0;
      *(v110 + 2) = v152;
      *&v110[16 * v143 + 32] = v160;
      v161 = *(v110 + 3);
      v162 = v112 + 5;
      if ((v112 + 5) > (v161 >> 1))
      {
        v462 = v121;
        v475 = v120;
        v453 = v125;
        v419 = sub_1AF42250C(v161 > 1, v112 + 5, 1, v110);
        v154 = 0uLL;
        v125 = v453;
        v121 = v462;
        v120 = v475;
        v135 = v493;
        v134 = v495;
        v116 = v511;
        v110 = v419;
      }

      v163 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v121, v153 * 0.5), v154, v120), v154, v125);
      v164 = vnegq_f32(v163);
      v165 = vtrn2q_s32(v163, vtrn1q_s32(v163, v164));
      v166 = vmlaq_f32(vmulq_lane_f32(vextq_s8(v163, v164, 8uLL), *v116.f32, 1), vextq_s8(v165, v165, 8uLL), v135);
      v167 = vrev64q_s32(v163);
      v167.i32[0] = v164.i32[1];
      v167.i32[3] = v164.i32[2];
      v168 = vaddq_f32(vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v163, v116, 3), v167, v134), v166), a8);
      v168.i32[3] = 0;
      *(v110 + 2) = v162;
      *&v110[16 * v152 + 32] = v168;
      v169 = *(v110 + 3);
      if ((v112 + 6) > (v169 >> 1))
      {
        v463 = v121;
        v476 = v120;
        v454 = v125;
        v420 = sub_1AF42250C(v169 > 1, v112 + 6, 1, v110);
        v125 = v454;
        v121 = v463;
        v120 = v476;
        v135 = v493;
        v134 = v495;
        v116 = v511;
        v110 = v420;
      }

      v170 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v121, v153 * -0.5), 0, v120), 0, v125);
      v171 = vnegq_f32(v170);
      v172 = vtrn2q_s32(v170, vtrn1q_s32(v170, v171));
      v173 = vmlaq_f32(vmulq_lane_f32(vextq_s8(v170, v171, 8uLL), *v116.f32, 1), vextq_s8(v172, v172, 8uLL), v135);
      v174 = vrev64q_s32(v170);
      v174.i32[0] = v171.i32[1];
      v174.i32[3] = v171.i32[2];
      v175 = vaddq_f32(vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v170, v116, 3), v174, v134), v173), a8);
      v175.i32[3] = 0;
      *(v110 + 2) = v112 + 6;
      *&v110[16 * v162 + 32] = v175;
      v176 = sub_1AF42458C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v178 = *(v176 + 2);
      v177 = *(v176 + 3);
      v179 = v177 >> 1;
      v180 = v178 + 1;
      if (v177 >> 1 <= v178)
      {
        v176 = sub_1AF42458C(v177 > 1, v178 + 1, 1, v176);
        v177 = *(v176 + 3);
        v179 = v177 >> 1;
      }

      v181 = v511;
      v183 = v493;
      v182 = v495;
      *(v176 + 2) = v180;
      *&v176[16 * v178 + 32] = vaddq_f32(vmlaq_f32(vmulq_lane_f32(xmmword_1AFEA1860, *v511.f32, 1), xmmword_1AFEA1870, v493), vmlaq_f32(vmulq_laneq_f32(xmmword_1AFE201A0, v511, 3), xmmword_1AFEA1880, v495));
      if (v179 < (v178 + 2))
      {
        v421 = sub_1AF42458C(v177 > 1, v178 + 2, 1, v176);
        v183 = v493;
        v182 = v495;
        v181 = v511;
        v176 = v421;
      }

      *(v176 + 2) = v178 + 2;
      *&v176[16 * v180 + 32] = vaddq_f32(vmlaq_f32(vmulq_lane_f32(xmmword_1AFEA1890, *v181.f32, 1), xmmword_1AFEA18A0, v183), vmlaq_f32(vmulq_laneq_f32(xmmword_1AFEA18B0, v181, 3), xmmword_1AFEA18C0, v182));
      v185 = *(v176 + 2);
      v184 = *(v176 + 3);
      v186 = v184 >> 1;
      v187 = v185 + 1;
      if (v184 >> 1 <= v185)
      {
        v422 = sub_1AF42458C(v184 > 1, v185 + 1, 1, v176);
        v183 = v493;
        v182 = v495;
        v181 = v511;
        v176 = v422;
        v184 = *(v422 + 3);
        v186 = v184 >> 1;
      }

      *(v176 + 2) = v187;
      *&v176[16 * v185 + 32] = vaddq_f32(vmlaq_f32(vmulq_lane_f32(xmmword_1AFEA18D0, *v181.f32, 1), xmmword_1AFEA18E0, v183), vmlaq_f32(vmulq_laneq_f32(xmmword_1AFEA18F0, v181, 3), xmmword_1AFEA1900, v182));
      if (v186 < (v185 + 2))
      {
        v423 = sub_1AF42458C(v184 > 1, v185 + 2, 1, v176);
        v183 = v493;
        v182 = v495;
        v181 = v511;
        v176 = v423;
      }

      *(v176 + 2) = v185 + 2;
      *&v176[16 * v187 + 32] = vaddq_f32(vmlaq_f32(vmulq_lane_f32(xmmword_1AFEA1910, *v181.f32, 1), xmmword_1AFEA1920, v183), vmlaq_f32(vmulq_laneq_f32(xmmword_1AFEA1930, v181, 3), xmmword_1AFEA1940, v182));
      v189 = *(v176 + 2);
      v188 = *(v176 + 3);
      v190 = v188 >> 1;
      v191 = v189 + 1;
      if (v188 >> 1 <= v189)
      {
        v424 = sub_1AF42458C(v188 > 1, v189 + 1, 1, v176);
        v183 = v493;
        v182 = v495;
        v181 = v511;
        v176 = v424;
        v188 = *(v424 + 3);
        v190 = v188 >> 1;
      }

      *(v176 + 2) = v191;
      *&v176[16 * v189 + 32] = vaddq_f32(vmlaq_f32(vmulq_lane_f32(xmmword_1AFEA1950, *v181.f32, 1), xmmword_1AFEA1960, v183), vmlaq_f32(vmulq_laneq_f32(xmmword_1AFEA1970, v181, 3), xmmword_1AFEA1980, v182));
      if (v190 < (v189 + 2))
      {
        v425 = sub_1AF42458C(v188 > 1, v189 + 2, 1, v176);
        v183 = v493;
        v182 = v495;
        v181 = v511;
        v176 = v425;
      }

      v192 = 0;
      *(v176 + 2) = v189 + 2;
      *&v176[16 * v191 + 32] = vaddq_f32(vmlaq_f32(vmulq_lane_f32(xmmword_1AFEA0710, *v181.f32, 1), xmmword_1AFEA0720, v183), vmlaq_f32(vmulq_laneq_f32(xmmword_1AFEA0730, v181, 3), xmmword_1AFEA0740, v182));
      do
      {
        v195 = *(v8 + 32);
        v513 = *(v8 + 16);
        v514 = v195;
        v196 = *(v8 + 64);
        v515 = *(v8 + 48);
        v516 = v196;
        v197 = *(&v513 + v192);
        if (!v197)
        {
          goto LABEL_243;
        }

        if (sub_1AFD670B8(*(&v513 + v192), COERCE_FLOAT(*&v109[8 * v192]), COERCE_FLOAT(HIDWORD(*&v109[8 * v192])), a4))
        {
          sub_1AFD670BC(v197, COERCE_FLOAT(*&v109[8 * v192]), COERCE_FLOAT(HIDWORD(*&v109[8 * v192])), a4);
        }

        v193 = v192 + 1;
        v194 = 16 * v192;
        sub_1AFD67184(v197, *&v110[v194 + 32]);
        sub_1AFD67188(v197, *&v176[v194 + 32]);
        v192 = v193;
      }

      while (v193 != 6);
      v376 = *(v8 + 16);
      if (!v376)
      {
        goto LABEL_243;
      }

      v377 = *(v8 + 24);
      if (!v377)
      {
        goto LABEL_243;
      }

      v378 = *(v8 + 32);
      if (!v378)
      {
        goto LABEL_243;
      }

      v379 = *(v8 + 40);
      if (!v379)
      {
        goto LABEL_243;
      }

      v380 = *(v8 + 48);
      if (!v380)
      {
        goto LABEL_243;
      }

      v381 = *(v8 + 56);
      if (!v381)
      {
        goto LABEL_243;
      }

      if (a2 <= 2u)
      {
        if (a2)
        {
          if (a2 == 1)
          {
            sub_1AFD670D8(v376, 0, 0, 0, 0, 0);
            sub_1AFD670D8(v376, 2u, 0, 0, 0, 0);
            sub_1AFD670D8(v376, 1u, 0, 0, 0, 0);
            sub_1AFD670D8(v376, 3u, 0, 0, 0, 0);
            sub_1AFD670D8(v377, 0, 0, 0, 0, 0);
            sub_1AFD670D8(v377, 2u, 0, 0, 0, 0);
            sub_1AFD670D8(v377, 1u, 0, 0, 0, 0);
            sub_1AFD670D8(v377, 3u, 0, 0, 0, 0);
            sub_1AFD670D8(v378, 0, 0, 0, 0, 0);
            sub_1AFD670D8(v378, 2u, 0, 0, 0, 0);
            sub_1AFD670D8(v378, 1u, 0, 0, 0, 0);
            sub_1AFD670D8(v378, 3u, 0, 0, 0, 0);
            sub_1AFD670D8(v379, 0, 0, 0, 0, 0);
            sub_1AFD670D8(v379, 2u, 0, 0, 0, 0);
            sub_1AFD670D8(v379, 1u, 0, 0, 0, 0);
            sub_1AFD670D8(v379, 3u, 0, 0, 0, 0);
            sub_1AFD670D8(v380, 0, 0, 0, 0, 0);
            sub_1AFD670D8(v380, 2u, 0, 0, 0, 0);
            sub_1AFD670D8(v380, 1u, 0, 0, 0, 0);
            sub_1AFD670D8(v380, 3u, 0, 0, 0, 0);
            sub_1AFD670D8(v381, 0, 0, 0, 0, 0);
            sub_1AFD670D8(v381, 2u, 0, 0, 0, 0);
            sub_1AFD670D8(v381, 1u, 0, 0, 0, 0);
            v382 = v381;
            v383 = 0;
          }

          else
          {
            sub_1AFD670D8(v376, 0, 1, 0, 0, 0);
            sub_1AFD670D8(v376, 2u, 1, 0, 0, 0);
            sub_1AFD670D8(v376, 1u, 1, 0, 0, 0);
            sub_1AFD670D8(v376, 3u, 1, 0, 0, 0);
            sub_1AFD670D8(v377, 0, 1, 0, 0, 0);
            sub_1AFD670D8(v377, 2u, 1, 0, 0, 0);
            sub_1AFD670D8(v377, 1u, 1, 0, 0, 0);
            sub_1AFD670D8(v377, 3u, 1, 0, 0, 0);
            sub_1AFD670D8(v378, 0, 1, 0, 0, 0);
            sub_1AFD670D8(v378, 2u, 1, 0, 0, 0);
            sub_1AFD670D8(v378, 1u, 1, 0, 0, 0);
            sub_1AFD670D8(v378, 3u, 1, 0, 0, 0);
            sub_1AFD670D8(v379, 0, 1, 0, 0, 0);
            sub_1AFD670D8(v379, 2u, 1, 0, 0, 0);
            sub_1AFD670D8(v379, 1u, 1, 0, 0, 0);
            sub_1AFD670D8(v379, 3u, 1, 0, 0, 0);
            sub_1AFD670D8(v380, 0, 1, 0, 0, 0);
            sub_1AFD670D8(v380, 2u, 1, 0, 0, 0);
            sub_1AFD670D8(v380, 1u, 1, 0, 0, 0);
            sub_1AFD670D8(v380, 3u, 1, 0, 0, 0);
            sub_1AFD670D8(v381, 0, 1, 0, 0, 0);
            sub_1AFD670D8(v381, 2u, 1, 0, 0, 0);
            sub_1AFD670D8(v381, 1u, 1, 0, 0, 0);
            v382 = v381;
            v383 = 1;
          }

          goto LABEL_238;
        }
      }

      else if (a2 - 4 >= 3)
      {
        sub_1AFD670D8(v376, 0, 2, 0, 0, 0);
        sub_1AFD670D8(v376, 2u, 2, 0, 0, 0);
        sub_1AFD670D8(v376, 1u, 2, 0, 0, 0);
        sub_1AFD670D8(v376, 3u, 2, 0, 0, 0);
        sub_1AFD670D8(v377, 0, 2, 0, 0, 0);
        sub_1AFD670D8(v377, 2u, 2, 0, 0, 0);
        sub_1AFD670D8(v377, 1u, 2, 0, 0, 0);
        sub_1AFD670D8(v377, 3u, 2, 0, 0, 0);
        sub_1AFD670D8(v378, 0, 2, 0, 0, 0);
        sub_1AFD670D8(v378, 2u, 2, 0, 0, 0);
        sub_1AFD670D8(v378, 1u, 2, 0, 0, 0);
        sub_1AFD670D8(v378, 3u, 2, 0, 0, 0);
        sub_1AFD670D8(v379, 0, 2, 0, 0, 0);
        sub_1AFD670D8(v379, 2u, 2, 0, 0, 0);
        sub_1AFD670D8(v379, 1u, 2, 0, 0, 0);
        sub_1AFD670D8(v379, 3u, 2, 0, 0, 0);
        sub_1AFD670D8(v380, 0, 2, 0, 0, 0);
        sub_1AFD670D8(v380, 2u, 2, 0, 0, 0);
        sub_1AFD670D8(v380, 1u, 2, 0, 0, 0);
        sub_1AFD670D8(v380, 3u, 2, 0, 0, 0);
        sub_1AFD670D8(v381, 0, 2, 0, 0, 0);
        sub_1AFD670D8(v381, 2u, 2, 0, 0, 0);
        sub_1AFD670D8(v381, 1u, 2, 0, 0, 0);
        v382 = v381;
        v383 = 2;
LABEL_238:
        v394 = 0;
        v395 = 0;
        v396 = 0;
        goto LABEL_239;
      }

      sub_1AFD670D8(v376, 0, 1, v380, 2, 0);
      sub_1AFD670D8(v376, 2u, 1, v381, 0, 0);
      sub_1AFD670D8(v376, 1u, 1, v379, 3, 0);
      sub_1AFD670D8(v376, 3u, 1, v377, 1, 0);
      sub_1AFD670D8(v377, 0, 1, v380, 3, 0);
      sub_1AFD670D8(v377, 2u, 1, v381, 3, 1);
      sub_1AFD670D8(v377, 1u, 1, v376, 3, 0);
      sub_1AFD670D8(v377, 3u, 1, v378, 1, 0);
      sub_1AFD670D8(v378, 0, 1, v380, 0, 1);
      sub_1AFD670D8(v378, 2u, 1, v381, 2, 1);
      sub_1AFD670D8(v378, 1u, 1, v377, 3, 0);
      sub_1AFD670D8(v378, 3u, 1, v379, 1, 0);
      sub_1AFD670D8(v379, 0, 1, v380, 1, 1);
      sub_1AFD670D8(v379, 2u, 1, v381, 1, 0);
      sub_1AFD670D8(v379, 1u, 1, v378, 3, 0);
      sub_1AFD670D8(v379, 3u, 1, v376, 1, 0);
      sub_1AFD670D8(v380, 0, 1, v378, 0, 1);
      sub_1AFD670D8(v380, 2u, 1, v376, 0, 0);
      sub_1AFD670D8(v380, 1u, 1, v379, 0, 1);
      sub_1AFD670D8(v380, 3u, 1, v377, 0, 0);
      sub_1AFD670D8(v381, 0, 1, v376, 2, 0);
      sub_1AFD670D8(v381, 2u, 1, v378, 2, 1);
      sub_1AFD670D8(v381, 1u, 1, v379, 2, 0);
      v382 = v381;
      v383 = 1;
      v394 = v377;
      v395 = 2;
      v396 = 1;
LABEL_239:
      sub_1AFD670D8(v382, 3u, v383, v394, v395, v396);

      goto LABEL_240;
    }

    v310 = sub_1AF42242C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v312 = *(v310 + 2);
    v311 = *(v310 + 3);
    v313 = v311 >> 1;
    v314 = v312 + 1;
    if (v311 >> 1 <= v312)
    {
      v310 = sub_1AF42242C(v311 > 1, v312 + 1, 1, v310);
      v311 = *(v310 + 3);
      v313 = v311 >> 1;
    }

    *(v310 + 2) = v314;
    v315 = v503.i64[0];
    *&v310[8 * v312 + 32] = v503.i64[0];
    if (v313 < (v312 + 2))
    {
      v439 = sub_1AF42242C(v311 > 1, v312 + 2, 1, v310);
      v315 = v503.i64[0];
      v310 = v439;
    }

    *(v310 + 2) = v312 + 2;
    *&v310[8 * v314 + 32] = __PAIR64__(HIDWORD(v315), v482);
    v317 = *(v310 + 2);
    v316 = *(v310 + 3);
    if (v317 >= v316 >> 1)
    {
      v440 = sub_1AF42242C(v316 > 1, v317 + 1, 1, v310);
      v315 = v503.i64[0];
      v310 = v440;
    }

    *(v310 + 2) = v317 + 1;
    v318 = v310 + 32;
    *&v310[8 * v317 + 32] = v315;
    v319 = sub_1AF42250C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v321 = v319[1].n128_u64[0];
    v320 = v319[1].n128_u64[1];
    v322 = v320 >> 1;
    v323 = v321 + 1;
    if (v320 >> 1 <= v321)
    {
      v319 = sub_1AF42250C(v320 > 1, v321 + 1, 1, v319);
      v320 = v319[1].n128_u64[1];
      v322 = v320 >> 1;
    }

    v324 = v490;
    v325 = v511;
    v326 = vmulq_f32(v511, xmmword_1AFE21390);
    v327 = vnegq_f32(v326);
    v328 = vtrn2q_s32(v326, vtrn1q_s32(v326, v327));
    v329 = vextq_s8(v328, v328, 8uLL);
    v330 = 0uLL;
    v331 = vmulq_f32(vextq_s8(v326, v327, 8uLL), 0);
    v332 = vmlaq_f32(v331, 0, v329);
    v333 = vrev64q_s32(v326);
    v333.i32[0] = v327.i32[1];
    v333.i32[3] = v327.i32[2];
    v334 = vmlaq_n_f32(v332, v333, v490 * 0.5);
    v335 = vnegq_f32(v334);
    v336 = vtrn2q_s32(v334, vtrn1q_s32(v334, v335));
    v337 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v334, v335, 8uLL), *v511.f32, 1), vextq_s8(v336, v336, 8uLL), v511.f32[0]);
    v338 = vrev64q_s32(v334);
    v338.i32[0] = v335.i32[1];
    v338.i32[3] = v335.i32[2];
    v339 = vaddq_f32(vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v334, v511, 3), v338, v511, 2), v337), a8);
    v339.i32[3] = 0;
    v319[1].n128_u64[0] = v323;
    v319[v321 + 2] = v339;
    v341 = v495;
    v340 = *v503.i32;
    v342 = v493;
    if (v322 < (v321 + 2))
    {
      v480 = v333;
      v488 = v332;
      v457 = v329;
      v467 = v331;
      v441 = sub_1AF42250C(v320 > 1, v321 + 2, 1, v319);
      v330 = 0uLL;
      v329 = v457;
      v331 = v467;
      v333 = v480;
      v332 = v488;
      v324 = v490;
      v342 = v493;
      v341 = v495;
      v340 = *v503.i32;
      v325 = v511;
      v319 = v441;
    }

    v343 = vmlaq_f32(vmlaq_n_f32(v331, v329, v340 * 0.5), v330, v333);
    v344 = vnegq_f32(v343);
    v345 = vtrn2q_s32(v343, vtrn1q_s32(v343, v344));
    v346 = vmlaq_f32(vmulq_lane_f32(vextq_s8(v343, v344, 8uLL), *v325.f32, 1), vextq_s8(v345, v345, 8uLL), v342);
    v347 = vrev64q_s32(v343);
    v347.i32[0] = v344.i32[1];
    v347.i32[3] = v344.i32[2];
    v348 = vaddq_f32(vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v343, v325, 3), v347, v341), v346), a8);
    v348.i32[3] = 0;
    v319[1].n128_u64[0] = v321 + 2;
    v319[v323 + 2] = v348;
    v350 = v319[1].n128_u64[0];
    v349 = v319[1].n128_u64[1];
    if (v350 >= v349 >> 1)
    {
      v481 = v333;
      v489 = v332;
      v442 = sub_1AF42250C(v349 > 1, v350 + 1, 1, v319);
      v333 = v481;
      v332 = v489;
      v324 = v490;
      v342 = v493;
      v341 = v495;
      v325 = v511;
      v319 = v442;
    }

    v351 = vmlaq_n_f32(v332, v333, v324 * -0.5);
    v352 = vnegq_f32(v351);
    v353 = vtrn2q_s32(v351, vtrn1q_s32(v351, v352));
    v354 = vmlaq_f32(vmulq_lane_f32(vextq_s8(v351, v352, 8uLL), *v325.f32, 1), vextq_s8(v353, v353, 8uLL), v342);
    v355 = vrev64q_s32(v351);
    v355.i32[0] = v352.i32[1];
    v355.i32[3] = v352.i32[2];
    v356 = vaddq_f32(vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v351, v325, 3), v355, v341), v354), a8);
    v356.i32[3] = 0;
    v319[1].n128_u64[0] = v350 + 1;
    v319[v350 + 2] = v356;
    v357 = sub_1AF42458C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v359 = v357[1].u64[0];
    v358 = v357[1].u64[1];
    v360 = v358 >> 1;
    v361 = v359 + 1;
    if (v358 >> 1 <= v359)
    {
      v357 = sub_1AF42458C(v358 > 1, v359 + 1, 1, v357);
      v358 = v357[1].u64[1];
      v360 = v358 >> 1;
    }

    v362 = v511;
    v364 = v493;
    v363 = v495;
    v357[1].i64[0] = v361;
    v357[v359 + 2] = vaddq_f32(vmlaq_f32(vmulq_lane_f32(xmmword_1AFEA1860, *v511.f32, 1), xmmword_1AFEA1870, v493), vmlaq_f32(vmulq_laneq_f32(xmmword_1AFE201A0, v511, 3), xmmword_1AFEA1880, v495));
    if (v360 < (v359 + 2))
    {
      v443 = sub_1AF42458C(v358 > 1, v359 + 2, 1, v357);
      v364 = v493;
      v363 = v495;
      v362 = v511;
      v357 = v443;
    }

    v357[1].i64[0] = v359 + 2;
    v357[v361 + 2] = vaddq_f32(vmlaq_f32(vmulq_lane_f32(xmmword_1AFEA1890, *v362.f32, 1), xmmword_1AFEA18A0, v364), vmlaq_f32(vmulq_laneq_f32(xmmword_1AFEA18B0, v362, 3), xmmword_1AFEA18C0, v363));
    v366 = v357[1].u64[0];
    v365 = v357[1].u64[1];
    if (v366 >= v365 >> 1)
    {
      v444 = sub_1AF42458C(v365 > 1, v366 + 1, 1, v357);
      v364 = v493;
      v363 = v495;
      v362 = v511;
      v357 = v444;
    }

    v357[1].i64[0] = v366 + 1;
    v357[v366 + 2] = vaddq_f32(vmlaq_f32(vmulq_lane_f32(xmmword_1AFEA18D0, *v362.f32, 1), xmmword_1AFEA18E0, v364), vmlaq_f32(vmulq_laneq_f32(xmmword_1AFEA18F0, v362, 3), xmmword_1AFEA1900, v363));
    v367 = *(v8 + 16);
    if (!v367)
    {
      goto LABEL_243;
    }

    if (sub_1AFD670B8(*(v8 + 16), COERCE_FLOAT(*v318), COERCE_FLOAT(HIDWORD(*v318)), a4))
    {
      sub_1AFD670BC(v367, COERCE_FLOAT(*v318), COERCE_FLOAT(HIDWORD(*v318)), a4);
    }

    sub_1AFD67184(v367, v319[2]);
    sub_1AFD67188(v367, v357[2]);
    v368 = *(v8 + 24);
    if (!v368)
    {
      goto LABEL_243;
    }

    if (sub_1AFD670B8(*(v8 + 24), COERCE_FLOAT(*(v310 + 5)), COERCE_FLOAT(HIDWORD(*(v310 + 5))), a4))
    {
      sub_1AFD670BC(v368, COERCE_FLOAT(*(v310 + 5)), COERCE_FLOAT(HIDWORD(*(v310 + 5))), a4);
    }

    sub_1AFD67184(v368, v319[3]);
    sub_1AFD67188(v368, v357[3]);
    v369 = *(v8 + 32);
    if (!v369)
    {
      goto LABEL_243;
    }

    if (sub_1AFD670B8(*(v8 + 32), COERCE_FLOAT(*(v310 + 6)), COERCE_FLOAT(HIDWORD(*(v310 + 6))), a4))
    {
      sub_1AFD670BC(v369, COERCE_FLOAT(*(v310 + 6)), COERCE_FLOAT(HIDWORD(*(v310 + 6))), a4);
    }

    sub_1AFD67184(v369, v319[4]);
    sub_1AFD67188(v369, v357[4]);
    v370 = *(v8 + 16);
    if (!v370)
    {
      goto LABEL_243;
    }

    v371 = *(v8 + 24);
    if (!v371)
    {
      goto LABEL_243;
    }

    v372 = *(v8 + 32);
    if (!v372)
    {
      goto LABEL_243;
    }

    if (a2 <= 2u)
    {
      if (a2)
      {
        if (a2 != 1)
        {
          v373 = 1;
          sub_1AFD670D8(v370, 0, 1, 0, 0, 0);
          sub_1AFD670D8(v370, 2u, 1, 0, 0, 0);
          sub_1AFD670D8(v370, 1u, 1, 0, 0, 0);
          sub_1AFD670D8(v370, 3u, 1, 0, 0, 0);
          sub_1AFD670D8(v371, 0, 1, 0, 0, 0);
          sub_1AFD670D8(v371, 2u, 1, 0, 0, 0);
          sub_1AFD670D8(v371, 1u, 1, 0, 0, 0);
          sub_1AFD670D8(v371, 3u, 1, 0, 0, 0);
          sub_1AFD670D8(v372, 0, 1, 0, 0, 0);
          sub_1AFD670D8(v372, 2u, 1, 0, 0, 0);
          v374 = v372;
          v375 = 1;
          goto LABEL_224;
        }

        sub_1AFD670D8(v370, 0, 0, 0, 0, 0);
        sub_1AFD670D8(v370, 2u, 0, 0, 0, 0);
        sub_1AFD670D8(v370, 1u, 0, 0, 0, 0);
        sub_1AFD670D8(v370, 3u, 0, 0, 0, 0);
        sub_1AFD670D8(v371, 0, 0, 0, 0, 0);
        sub_1AFD670D8(v371, 2u, 0, 0, 0, 0);
        sub_1AFD670D8(v371, 1u, 0, 0, 0, 0);
        sub_1AFD670D8(v371, 3u, 0, 0, 0, 0);
        sub_1AFD670D8(v372, 0, 0, 0, 0, 0);
        sub_1AFD670D8(v372, 2u, 0, 0, 0, 0);
        v390 = v372;
        v391 = 0;
        v392 = 0;
        v393 = 0;
LABEL_226:
        sub_1AFD670D8(v390, 1u, v391, v392, v393, 0);
        v373 = 0;
LABEL_230:
        sub_1AFD670D8(v372, 3u, v373, 0, 0, 0);

        goto LABEL_240;
      }
    }

    else
    {
      if (a2 <= 4u)
      {
        if (a2 == 3)
        {
          v373 = 2;
          sub_1AFD670D8(v370, 0, 2, 0, 0, 0);
          sub_1AFD670D8(v370, 2u, 2, 0, 0, 0);
          sub_1AFD670D8(v370, 1u, 2, 0, 0, 0);
          sub_1AFD670D8(v370, 3u, 2, 0, 0, 0);
          sub_1AFD670D8(v371, 0, 2, 0, 0, 0);
          sub_1AFD670D8(v371, 2u, 2, 0, 0, 0);
          sub_1AFD670D8(v371, 1u, 2, 0, 0, 0);
          sub_1AFD670D8(v371, 3u, 2, 0, 0, 0);
          sub_1AFD670D8(v372, 0, 2, 0, 0, 0);
          sub_1AFD670D8(v372, 2u, 2, 0, 0, 0);
          v374 = v372;
          v375 = 2;
LABEL_224:
          v401 = 0;
          v402 = 0;
LABEL_229:
          sub_1AFD670D8(v374, 1u, v375, v401, v402, 0);
          goto LABEL_230;
        }

        sub_1AFD670D8(v370, 0, 0, 0, 0, 0);
        sub_1AFD670D8(v370, 2u, 0, 0, 0, 0);
        sub_1AFD670D8(v370, 1u, 0, 0, 0, 0);
        sub_1AFD670D8(v370, 3u, 1, v371, 1, 0);
        sub_1AFD670D8(v371, 0, 0, 0, 0, 0);
        sub_1AFD670D8(v371, 2u, 0, 0, 0, 0);
        sub_1AFD670D8(v371, 1u, 1, v370, 3, 0);
        sub_1AFD670D8(v371, 3u, 1, v372, 1, 0);
        sub_1AFD670D8(v372, 0, 0, 0, 0, 0);
        sub_1AFD670D8(v372, 2u, 0, 0, 0, 0);
        v390 = v372;
        v391 = 1;
        v392 = v371;
        v393 = 3;
        goto LABEL_226;
      }

      if (a2 != 5)
      {
        v373 = 2;
        sub_1AFD670D8(v370, 0, 2, 0, 0, 0);
        sub_1AFD670D8(v370, 2u, 2, 0, 0, 0);
        sub_1AFD670D8(v370, 1u, 2, 0, 0, 0);
        sub_1AFD670D8(v370, 3u, 1, v371, 1, 0);
        sub_1AFD670D8(v371, 0, 2, 0, 0, 0);
        sub_1AFD670D8(v371, 2u, 2, 0, 0, 0);
        sub_1AFD670D8(v371, 1u, 1, v370, 3, 0);
        sub_1AFD670D8(v371, 3u, 1, v372, 1, 0);
        sub_1AFD670D8(v372, 0, 2, 0, 0, 0);
        v397 = v372;
        v398 = 2;
        goto LABEL_228;
      }
    }

    v373 = 1;
    sub_1AFD670D8(v370, 0, 1, 0, 0, 0);
    sub_1AFD670D8(v370, 2u, 1, 0, 0, 0);
    sub_1AFD670D8(v370, 1u, 1, 0, 0, 0);
    sub_1AFD670D8(v370, 3u, 1, v371, 1, 0);
    sub_1AFD670D8(v371, 0, 1, 0, 0, 0);
    sub_1AFD670D8(v371, 2u, 1, 0, 0, 0);
    sub_1AFD670D8(v371, 1u, 1, v370, 3, 0);
    sub_1AFD670D8(v371, 3u, 1, v372, 1, 0);
    sub_1AFD670D8(v372, 0, 1, 0, 0, 0);
    v397 = v372;
    v398 = 1;
LABEL_228:
    sub_1AFD670D8(v397, 2u, v398, 0, 0, 0);
    v374 = v372;
    v375 = 1;
    v401 = v371;
    v402 = 3;
    goto LABEL_229;
  }

  if (result <= 1u)
  {
    if (!result)
    {
      return result;
    }

    v202 = *(v8 + 16);
    if (v202)
    {
      v203 = *&a3.i32[1];
      v505 = *a3.i32;
      if (sub_1AFD670B8(v202, *a3.i32, *&a3.i32[1], a4))
      {
        sub_1AFD670BC(v202, v505, v203, a4);
      }

      sub_1AFD67184(v202, a8);
      sub_1AFD67188(v202, v511);
      if (((1 << a2) & 0x13) != 0)
      {
        sub_1AFD670D8(v202, 0, 0, 0, 0, 0);
        sub_1AFD670D8(v202, 2u, 0, 0, 0, 0);
        sub_1AFD670D8(v202, 1u, 0, 0, 0, 0);
        v204 = v202;
        v205 = 0;
      }

      else if (((1 << a2) & 0x24) != 0)
      {
        sub_1AFD670D8(v202, 0, 1, 0, 0, 0);
        sub_1AFD670D8(v202, 2u, 1, 0, 0, 0);
        sub_1AFD670D8(v202, 1u, 1, 0, 0, 0);
        v204 = v202;
        v205 = 1;
      }

      else
      {
        sub_1AFD670D8(v202, 0, 2, 0, 0, 0);
        sub_1AFD670D8(v202, 2u, 2, 0, 0, 0);
        sub_1AFD670D8(v202, 1u, 2, 0, 0, 0);
        v204 = v202;
        v205 = 2;
      }

      return sub_1AFD670D8(v204, 3u, v205, 0, 0, 0);
    }

    goto LABEL_243;
  }

  v504 = a3;
  if (result != 2)
  {
    v284 = sub_1AF42242C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v286 = *(v284 + 2);
    v285 = *(v284 + 3);
    v287 = v285 >> 1;
    v288 = v286 + 1;
    if (v285 >> 1 <= v286)
    {
      v284 = sub_1AF42242C(v285 > 1, v286 + 1, 1, v284);
      v285 = *(v284 + 3);
      v287 = v285 >> 1;
    }

    v289 = v504;
    LODWORD(v290) = v504.i32[0];
    *(v284 + 2) = v288;
    *&v284[8 * v286 + 32] = v504.i64[0];
    v291 = v286 + 2;
    if (v287 < (v286 + 2))
    {
      v435 = sub_1AF42242C(v285 > 1, v286 + 2, 1, v284);
      LODWORD(v290) = v504.i32[0];
      v289 = v504;
      v284 = v435;
    }

    v292 = v289.i32[2];
    v289.i32[0] = vextq_s8(v289, v289, 8uLL).u32[0];
    *(v284 + 2) = v291;
    *&v284[8 * v288 + 32] = v289.i64[0];
    v293 = *(v284 + 3);
    if ((v286 + 3) > (v293 >> 1))
    {
      v501 = v290;
      v509 = v289.i32[2];
      v436 = sub_1AF42242C(v293 > 1, v286 + 3, 1, v284);
      LODWORD(v290) = v501;
      v292 = v509;
      v284 = v436;
    }

    HIDWORD(v290) = v292;
    *(v284 + 2) = v286 + 3;
    *&v284[8 * v291 + 32] = v290;
    v294 = sub_1AF42458C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v296 = *(v294 + 2);
    v295 = *(v294 + 3);
    v297 = v295 >> 1;
    v298 = v296 + 1;
    if (v295 >> 1 <= v296)
    {
      v294 = sub_1AF42458C(v295 > 1, v296 + 1, 1, v294);
      v295 = *(v294 + 3);
      v297 = v295 >> 1;
    }

    *(v294 + 2) = v298;
    v299 = v511;
    *&v294[16 * v296 + 32] = v511;
    v300 = v296 + 2;
    if (v297 < (v296 + 2))
    {
      v437 = sub_1AF42458C(v295 > 1, v296 + 2, 1, v294);
      v299 = v511;
      v294 = v437;
    }

    v301 = vdupq_lane_s32(*v299.f32, 0);
    v302 = vdupq_laneq_s32(v299, 2);
    *(v294 + 2) = v300;
    *&v294[16 * v298 + 32] = vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(xmmword_1AFEA1A10, *v299.f32, 1), xmmword_1AFEA1A20, v299.f32[0]), vmlaq_laneq_f32(vmulq_laneq_f32(xmmword_1AFEA1A30, v299, 3), xmmword_1AFEA1A40, v299, 2));
    v303 = *(v294 + 3);
    if ((v296 + 3) > (v303 >> 1))
    {
      v502 = v302;
      v510 = v301;
      v438 = sub_1AF42458C(v303 > 1, v296 + 3, 1, v294);
      v302 = v502;
      v301 = v510;
      v299 = v511;
      v294 = v438;
    }

    v304 = 0;
    *(v294 + 2) = v296 + 3;
    *&v294[16 * v300 + 32] = vaddq_f32(vmlaq_f32(vmulq_lane_f32(xmmword_1AFEA0710, *v299.f32, 1), xmmword_1AFEA0720, v301), vmlaq_f32(vmulq_laneq_f32(xmmword_1AFEA0730, v299, 3), xmmword_1AFEA0740, v302));
    while (1)
    {
      v306 = *(v8 + 32);
      v513 = *(v8 + 16);
      v514 = v306;
      v307 = *(v8 + 64);
      v515 = *(v8 + 48);
      v516 = v307;
      v308 = *(&v513 + v304);
      if (!v308)
      {
        goto LABEL_243;
      }

      v309 = &v284[8 * v304];
      if (sub_1AFD670B8(*(&v513 + v304), COERCE_FLOAT(*(v309 + 4)), COERCE_FLOAT(HIDWORD(*(v309 + 4))), a4))
      {
        sub_1AFD670BC(v308, COERCE_FLOAT(*(v309 + 4)), COERCE_FLOAT(HIDWORD(*(v309 + 4))), a4);
      }

      sub_1AFD67184(v308, a8);
      sub_1AFD67188(v308, *&v294[16 * v304 + 32]);
      v305 = dword_1AFEA2490[a2];
      sub_1AFD670D8(v308, 0, v305, 0, 0, 0);
      sub_1AFD670D8(v308, 2u, v305, 0, 0, 0);
      sub_1AFD670D8(v308, 1u, v305, 0, 0, 0);
      sub_1AFD670D8(v308, 3u, v305, 0, 0, 0);
      if (++v304 == 3)
      {
        goto LABEL_57;
      }
    }
  }

  v73 = sub_1AF42242C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v75 = *(v73 + 2);
  v74 = *(v73 + 3);
  v76 = v74 >> 1;
  v77 = v75 + 1;
  if (v74 >> 1 <= v75)
  {
    v73 = sub_1AF42242C(v74 > 1, v75 + 1, 1, v73);
    v74 = *(v73 + 3);
    v76 = v74 >> 1;
  }

  *(v73 + 2) = v77;
  v78 = v504;
  *&v73[8 * v75 + 32] = v504.i64[0];
  if (v76 < (v75 + 2))
  {
    v409 = sub_1AF42242C(v74 > 1, v75 + 2, 1, v73);
    v78 = v504;
    v73 = v409;
  }

  v78.i32[0] = vextq_s8(v78, v78, 8uLL).u32[0];
  *(v73 + 2) = v75 + 2;
  v79 = v73 + 32;
  *&v73[8 * v77 + 32] = v78.i64[0];
  v80 = sub_1AF42458C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v82 = v80[1].u64[0];
  v81 = v80[1].u64[1];
  v83 = v81 >> 1;
  v84 = v82 + 1;
  if (v81 >> 1 <= v82)
  {
    v80 = sub_1AF42458C(v81 > 1, v82 + 1, 1, v80);
    v81 = v80[1].u64[1];
    v83 = v81 >> 1;
  }

  v80[1].i64[0] = v84;
  v85 = v511;
  v80[v82 + 2] = v511;
  if (v83 < (v82 + 2))
  {
    v410 = sub_1AF42458C(v81 > 1, v82 + 2, 1, v80);
    v85 = v511;
    v80 = v410;
  }

  v80[1].i64[0] = v82 + 2;
  v80[v84 + 2] = vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(xmmword_1AFEA1A10, *v85.f32, 1), xmmword_1AFEA1A20, v85.f32[0]), vmlaq_laneq_f32(vmulq_laneq_f32(xmmword_1AFEA1A30, v85, 3), xmmword_1AFEA1A40, v85, 2));
  v86 = *(v8 + 16);
  if (!v86)
  {
    goto LABEL_243;
  }

  if (sub_1AFD670B8(*(v8 + 16), COERCE_FLOAT(*v79), COERCE_FLOAT(HIDWORD(*v79)), a4))
  {
    sub_1AFD670BC(v86, COERCE_FLOAT(*v79), COERCE_FLOAT(HIDWORD(*v79)), a4);
  }

  sub_1AFD67184(v86, a8);
  sub_1AFD67188(v86, v80[2]);
  v87 = dword_1AFEA2490[a2];
  sub_1AFD670D8(v86, 0, v87, 0, 0, 0);
  sub_1AFD670D8(v86, 2u, v87, 0, 0, 0);
  sub_1AFD670D8(v86, 1u, v87, 0, 0, 0);
  sub_1AFD670D8(v86, 3u, v87, 0, 0, 0);
  v88 = *(v8 + 24);
  if (!v88)
  {
    goto LABEL_243;
  }

  if (sub_1AFD670B8(*(v8 + 24), COERCE_FLOAT(*(v73 + 5)), COERCE_FLOAT(HIDWORD(*(v73 + 5))), a4))
  {
    sub_1AFD670BC(v88, COERCE_FLOAT(*(v73 + 5)), COERCE_FLOAT(HIDWORD(*(v73 + 5))), a4);
  }

  sub_1AFD67184(v88, a8);
  sub_1AFD67188(v88, v80[3]);
  v89 = dword_1AFEA2490[a2];
  sub_1AFD670D8(v88, 0, v89, 0, 0, 0);
  sub_1AFD670D8(v88, 2u, v89, 0, 0, 0);
  sub_1AFD670D8(v88, 1u, v89, 0, 0, 0);
  sub_1AFD670D8(v88, 3u, v89, 0, 0, 0);
LABEL_57:

LABEL_240:
}

uint64_t sub_1AFBB1F9C(char a1)
{
  result = 0x766C6F5370657473;
  switch(a1)
  {
    case 1:
      result = 0x6150746365766461;
      break;
    case 2:
      result = 0x7075746573;
      break;
    case 3:
      result = 0x726564726F62;
      break;
    case 4:
      result = 0x636E65756C666E69;
      break;
    case 5:
      result = 0x70537265766C6F73;
      break;
    case 6:
      result = 0x66666F6C6C6166;
      break;
    case 7:
      result = 0x746E65747865;
      break;
    case 8:
      result = 0x657A69536C6C6563;
      break;
    case 9:
      v3 = 0x736F63736976;
      goto LABEL_17;
    case 10:
      v3 = 0x636974726F76;
LABEL_17:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7469000000000000;
      break;
    case 11:
      result = 0x797469636F6C6576;
      break;
    case 12:
      result = 0x64697247776F6873;
      break;
    case 13:
      result = 0x6F6C6556776F6873;
      break;
    case 14:
      result = 0x736E6544776F6873;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    case 16:
      result = 0x49797469736E6564;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1AFBB21A4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1AFBB1F9C(*a1);
  v5 = v4;
  if (v3 == sub_1AFBB1F9C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AFBB222C()
{
  v1 = *v0;
  sub_1AFDFF288();
  sub_1AFBB1F9C(v1);
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFBB2290()
{
  sub_1AFBB1F9C(*v0);
  sub_1AFDFD038();
}

uint64_t sub_1AFBB22E4()
{
  v1 = *v0;
  sub_1AFDFF288();
  sub_1AFBB1F9C(v1);
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFBB2344@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AFBB3970();
  *a1 = result;
  return result;
}

uint64_t sub_1AFBB2374@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AFBB1F9C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1AFBB23BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AFBB3970();
  *a1 = result;
  return result;
}

uint64_t sub_1AFBB23E4(uint64_t a1)
{
  v2 = sub_1AFBB7934();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFBB2420(uint64_t a1)
{
  v2 = sub_1AFBB7934();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFBB245C(void *a1)
{
  v3 = v1;
  sub_1AFBB7DC4(0, &qword_1EB6431A8, sub_1AFBB7934, &type metadata for ParticleFluidSolver2DSolver.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v14 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AFBB7934();
  sub_1AFDFF3F8();
  LOBYTE(v14) = 0;
  sub_1AFDFE8C8();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    sub_1AFDFE8C8();
    LOBYTE(v14) = *(v3 + 10);
    v15 = 2;
    sub_1AF51CE00();
    sub_1AFDFE918();
    LOBYTE(v14) = *(v3 + 11);
    v15 = 3;
    sub_1AF51CD2C();
    sub_1AFDFE918();
    LOBYTE(v14) = 4;
    sub_1AFDFE8E8();
    LOBYTE(v14) = 5;
    sub_1AFDFE8E8();
    LOBYTE(v14) = 6;
    sub_1AFDFE8E8();
    v14 = *(v3 + 32);
    v15 = 7;
    sub_1AFBB7DC4(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    sub_1AFBB7988(&qword_1ED72F758);
    sub_1AFDFE918();
    LOBYTE(v14) = 8;
    sub_1AFDFE8E8();
    LOBYTE(v14) = 9;
    sub_1AFDFE8E8();
    LOBYTE(v14) = 10;
    sub_1AFDFE8E8();
    LOBYTE(v14) = 11;
    sub_1AFDFE8E8();
    LOBYTE(v14) = 12;
    sub_1AFDFE8C8();
    LOBYTE(v14) = 13;
    sub_1AFDFE8C8();
    LOBYTE(v14) = 14;
    sub_1AFDFE8C8();
    v12 = *(v3 + 72);
    LOBYTE(v14) = 15;
    v15 = v12;
    sub_1AFDFE888();
    v13 = *(v3 + 80);
    LOBYTE(v14) = 16;
    v15 = v13;
    sub_1AFDFE888();
  }

  return (*(v7 + 8))(v10, v6);
}

double sub_1AFBB2908@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AFBB3A10(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

double sub_1AFBB2974@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 65793;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 12) = _D0;
  *(a1 + 20) = 0;
  result = 33554440.2;
  *(a1 + 32) = xmmword_1AFE95810;
  *(a1 + 48) = xmmword_1AFE21120;
  *(a1 + 64) = 1;
  *(a1 + 66) = 0;
  *(a1 + 68) = 0;
  *(a1 + 72) = 1;
  *(a1 + 76) = 0;
  *(a1 + 80) = 1;
  return result;
}

void sub_1AFBB29D4(void *a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, uint64_t *a6, float a7, __n128 a8, float a9)
{
  v15 = a1[11];
  v16 = a1[12];
  v17 = a1[13];
  v18 = a1[2];
  v19 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v15, v16, v17, v18);
  v20 = sub_1AF64B110(&type metadata for Velocity, &off_1F2530AF8, v15, v16, v17, v18);
  v24 = v20;
  if (a7 <= 0.0)
  {
    v35 = a8.n128_u32[3];
    *v21.i32 = a8.n128_f32[0] / a2;
    if (a8.n128_f32[0] >= 1.0)
    {
      v60 = a1[6];
      v61 = a1[7];
      v62 = v19;
      v172 = a8.n128_f32[0] / a2;
      switch(a2)
      {
        case 1:
          v126 = v61 - v60;
          if (v61 != v60)
          {
            v127 = (v20 + 16 * v60);
            v128 = (v19 + 16 * v60);
            do
            {
              v129 = *v128++;
              v130 = v129;
              v130.i32[3] = v35;
              v190 = v35;
              *v131.i64 = sub_1AFD6718C(a3, v130);
              *&v132 = vmul_n_f32(*v131.f32, v172);
              *(&v132 + 1) = COERCE_UNSIGNED_INT(vmuls_lane_f32(v172, v131, 2));
              *v127++ = v132;
              v35 = v190;
              --v126;
            }

            while (v126);
          }

          break;
        case 2:
          v109 = v61 - v60;
          if (v61 != v60)
          {
            v110 = (v20 + 16 * v60);
            v111 = (v19 + 16 * v60);
            do
            {
              v112 = *v111;
              v112.i32[3] = v35;
              v189 = v35;
              *v113.i64 = sub_1AFD6718C(a3, v112);
              v166 = v113;
              v114 = *v111++;
              v115 = v114;
              v115.i32[3] = v177;
              *v116.i64 = sub_1AFD6718C(a4, v115);
              v117 = vaddq_f32(v166, v116);
              *&v118 = vmul_n_f32(*v117.f32, v172);
              *(&v118 + 1) = COERCE_UNSIGNED_INT(vmuls_lane_f32(v172, v117, 2));
              *v110++ = v118;
              v35 = v189;
              --v109;
            }

            while (v109);
          }

          break;
        case 3:
          v63 = v61 - v60;
          if (v61 != v60)
          {
            v64 = (v20 + 16 * v60);
            v65 = (v19 + 16 * v60);
            do
            {
              v66 = *v65;
              v66.i32[3] = v35;
              v188 = v35;
              *v67.i64 = sub_1AFD6718C(a3, v66);
              v158 = v67;
              v68 = *v65;
              v68.i32[3] = v168;
              *v69.i64 = sub_1AFD6718C(a4, v68);
              v159 = vaddq_f32(v158, v69);
              v70 = *v65++;
              v71 = v70;
              v71.i32[3] = v177;
              *v72.i64 = sub_1AFD6718C(a5, v71);
              v73 = vaddq_f32(v159, v72);
              *&v74 = vmul_n_f32(*v73.f32, v172);
              *(&v74 + 1) = COERCE_UNSIGNED_INT(vmuls_lane_f32(v172, v73, 2));
              *v64++ = v74;
              v35 = v188;
              --v63;
            }

            while (v63);
          }

          break;
        default:
          for (; v60 != v61; ++v60)
          {
            v144 = v23.i32[3];
            v23 = *(v62 + 16 * v60);
            v23.i32[3] = v144;
            v145 = *a6;
            v146 = *(*a6 + 16);
            if (v146)
            {
              v176 = v23;

              v186 = 0u;
              v147 = 32;
              do
              {
                *v148.f32 = vadd_f32(*v186.f32, COERCE_FLOAT32X2_T(sub_1AFD6718C(*(v145 + v147), v176)));
                v148.f32[2] = v186.f32[2] + v149;
                v148.i32[3] = 0;
                v186 = v148;
                v147 += 8;
                --v146;
              }

              while (v146);

              *v21.i32 = v172;
              v23.i32[3] = v176.i32[3];
              v141 = v186;
            }

            else
            {
              v141 = 0uLL;
            }

            *&v142 = vmuls_lane_f32(*v21.i32, v141, 2);
            *&v143 = vmulq_n_f32(v141, *v21.i32).u64[0];
            *(&v143 + 1) = v142;
            *(v24 + 16 * v60) = v143;
          }

          break;
      }
    }

    else
    {
      v170 = 1.0 - a8.n128_f32[0];
      v36 = a1[6];
      v37 = a1[7];
      v38 = v19;
      switch(a2)
      {
        case 1:
          v119 = v37 - v36;
          if (v37 != v36)
          {
            v167 = vdupq_lane_s32(v21, 0);
            v120 = (v20 + 16 * v36);
            v121 = (v19 + 16 * v36);
            do
            {
              v122 = *v121++;
              v123 = v122;
              v123.i32[3] = v35;
              v180 = v35;
              *v124.i64 = sub_1AFD6718C(a3, v123);
              v125 = vmlaq_f32(vmulq_n_f32(*v120, v170), v167, v124);
              v125.i32[3] = 0;
              *v120++ = v125;
              v35 = v180;
              --v119;
            }

            while (v119);
          }

          break;
        case 2:
          v99 = v37 - v36;
          if (v37 != v36)
          {
            v156 = vdupq_lane_s32(v21, 0);
            v100 = (v20 + 16 * v36);
            v101 = (v19 + 16 * v36);
            do
            {
              v102 = *v101;
              v102.i32[3] = v35;
              v179 = v35;
              *v103.i64 = sub_1AFD6718C(a3, v102);
              v161 = v103;
              v104 = *v101++;
              v105 = v104;
              v105.i32[3] = v168;
              *v106.i64 = sub_1AFD6718C(a4, v105);
              v107 = vmlaq_f32(vmulq_n_f32(*v100, v170), v156, vaddq_f32(v161, v106));
              v107.i32[3] = v187;
              v108 = v107;
              v108.i32[3] = 0;
              *v100++ = v108;
              v35 = v179;
              --v99;
            }

            while (v99);
          }

          break;
        case 3:
          v39 = v37 - v36;
          if (v37 != v36)
          {
            v150 = vdupq_lane_s32(v21, 0);
            v40 = (v20 + 16 * v36);
            v41 = (v19 + 16 * v36);
            do
            {
              v42 = *v41;
              v42.i32[3] = v22;
              v178 = v22;
              *v43.i64 = sub_1AFD6718C(a3, v42);
              v154 = v43;
              v44 = *v41;
              v44.i32[3] = v168;
              *v45.i64 = sub_1AFD6718C(a4, v44);
              v46 = *v41++;
              v47 = v46;
              v47.i32[3] = v163;
              v155 = vaddq_f32(v154, v45);
              *v48.i64 = sub_1AFD6718C(a5, v47);
              v49 = vmlaq_f32(vmulq_n_f32(*v40, v170), v150, vaddq_f32(v155, v48));
              v22 = v178;
              v49.i32[3] = 0;
              *v40++ = v49;
              --v39;
            }

            while (v39);
          }

          break;
        default:
          if (v37 != v36)
          {
            v162 = vdupq_lane_s32(v21, 0);
            do
            {
              v135 = v23.i32[3];
              v23 = *(v38 + 16 * v36);
              v23.i32[3] = v135;
              if (a2)
              {
                v136 = 0uLL;
                v137 = 32;
                v138 = a2;
                v175 = v23;
                do
                {
                  v185 = v136;
                  v139 = sub_1AFD6718C(*(*a6 + v137), v23);
                  v23 = v175;
                  *v133.f32 = vadd_f32(*v185.f32, *&v139);
                  v133.f32[2] = v185.f32[2] + v140;
                  v133.i32[3] = 0;
                  v137 += 8;
                  v136 = v133;
                  --v138;
                }

                while (v138);
              }

              else
              {
                v133 = 0uLL;
              }

              v134 = vmlaq_f32(vmulq_n_f32(*(v24 + 16 * v36), v170), v162, v133);
              v134.i32[3] = 0;
              *(v24 + 16 * v36++) = v134;
            }

            while (v36 != v37);
          }

          break;
      }
    }
  }

  else if (a8.n128_f32[0] >= 1.0)
  {
    v50 = a1[6];
    v51 = a1[7];
    if (a2 == 1)
    {
      v52 = v51 - v50;
      if (v51 != v50)
      {
        v165 = vdupq_lane_s32(a8.n128_u64[0], 0);
        v53 = (v20 + 16 * v50);
        v54 = (v19 + 16 * v50);
        do
        {
          v55 = *v54;
          v55.n128_u32[3] = v22;
          v182 = v55;
          v56 = sub_1AFD67190(a3, 1, v55);
          if (v56 < a7)
          {
            v171 = (1.0 - (v56 * a9)) * (1.0 - (v56 * a9));
            *v57.i64 = sub_1AFD6718C(a3, v182);
            v58 = vmulq_n_f32(v57, v171);
            v58.i32[2] = vmuls_lane_f32(v171, v57, 2);
            v59 = vmlaq_f32(vmulq_n_f32(*v53, 1.0 - v171), v165, v58);
            v59.i32[3] = 0;
            *v53 = v59;
          }

          ++v53;
          ++v54;
          v22 = v182.i32[3];
          --v52;
        }

        while (v52);
      }
    }

    else if (v51 != v50)
    {
      v87 = vdupq_lane_s32(a8.n128_u64[0], 0);
      v160 = v87;
      do
      {
        v89 = *(v19 + 16 * v50);
        v89.n128_u32[3] = v87.n128_u32[3];
        v87 = v89;
        if (a2)
        {
          v174 = 0u;
          v184 = v89;
          v90 = 0.0;
          v91 = 32;
          v92 = a2;
          do
          {
            v93 = *(*a6 + v91);
            v94 = sub_1AFD67190(v93, 1, v87);
            if (v94 < a7)
            {
              v95 = v94;
              *v96.i64 = sub_1AFD6718C(v93, v184);
              v97 = (1.0 - (v95 * a9)) * (1.0 - (v95 * a9));
              v98 = vmuls_lane_f32(v97, v96, 2);
              *v96.f32 = vadd_f32(*v174.f32, vmul_n_f32(*v96.f32, v97));
              v96.i64[1] = COERCE_UNSIGNED_INT(v174.f32[2] + v98);
              v90 = v90 + v97;
              v174 = v96;
            }

            v91 += 8;
            --v92;
            v87 = v184;
          }

          while (v92);
          if (v90 > 0.0)
          {
            if (v90 <= 1.0)
            {
              v88 = vmlaq_f32(vmulq_n_f32(*(v24 + 16 * v50), 1.0 - v90), v160, v174);
              v88.i32[3] = 0;
            }

            else
            {
              v88.i64[0] = vmulq_n_f32(v174, a8.n128_f32[0] / v90).u64[0];
              v88.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(a8.n128_f32[0] / v90, v174, 2));
            }

            *(v24 + 16 * v50) = v88;
            v87.n128_u32[3] = v184.u32[3];
          }
        }

        ++v50;
      }

      while (v50 != v51);
    }
  }

  else
  {
    v25 = a1[6];
    v26 = a1[7];
    if (a2 == 1)
    {
      v27 = v26 - v25;
      if (v26 != v25)
      {
        v157 = vdupq_lane_s32(a8.n128_u64[0], 0);
        v28 = (v20 + 16 * v25);
        v29 = (v19 + 16 * v25);
        do
        {
          v30 = *v29;
          v30.n128_u32[3] = v22;
          v181 = v30;
          v31 = sub_1AFD67190(a3, 1, v30);
          if (v31 < a7)
          {
            v164 = (1.0 - (v31 * a9)) * (1.0 - (v31 * a9));
            *v32.i64 = sub_1AFD6718C(a3, v181);
            v33 = vmulq_n_f32(v32, v164);
            v33.i32[2] = vmuls_lane_f32(v164, v32, 2);
            v34 = vmlaq_f32(vmulq_n_f32(*v28, 1.0 - (v164 * a8.n128_f32[0])), v157, v33);
            v34.i32[3] = 0;
            *v28 = v34;
          }

          ++v28;
          ++v29;
          v22 = v181.i32[3];
          --v27;
        }

        while (v27);
      }
    }

    else if (v26 != v25)
    {
      v75 = vdupq_lane_s32(a8.n128_u64[0], 0);
      v153 = v75;
      do
      {
        v76 = *(v19 + 16 * v25);
        v76.n128_u32[3] = v75.n128_u32[3];
        v75 = v76;
        if (a2)
        {
          v173 = 0u;
          v183 = v76;
          v77 = 0.0;
          v78 = 32;
          v79 = a2;
          do
          {
            v80 = *(*a6 + v78);
            v81 = sub_1AFD67190(v80, 1, v75);
            if (v81 < a7)
            {
              v82 = v81;
              *v83.i64 = sub_1AFD6718C(v80, v183);
              v84 = (1.0 - (v82 * a9)) * (1.0 - (v82 * a9));
              v85 = vmuls_lane_f32(v84, v83, 2);
              *v83.f32 = vadd_f32(*v173.f32, vmul_n_f32(*v83.f32, v84));
              v83.i64[1] = COERCE_UNSIGNED_INT(v173.f32[2] + v85);
              v77 = v77 + v84;
              v173 = v83;
            }

            v78 += 8;
            --v79;
            v75 = v183;
          }

          while (v79);
          if (v77 > 0.0)
          {
            v86 = (v24 + 16 * v25);
            if (v77 > 1.0)
            {
              v75 = vmlaq_n_f32(vmulq_n_f32(*v86, 1.0 - a8.n128_f32[0]), v173, a8.n128_f32[0] / v77);
            }

            else
            {
              v75 = vmlaq_f32(vmulq_n_f32(*v86, 1.0 - (v77 * a8.n128_f32[0])), v153, v173);
            }

            v75.n128_u32[3] = 0;
            *v86 = v75;
            v75.n128_u32[3] = v183.u32[3];
          }
        }

        ++v25;
      }

      while (v25 != v26);
    }
  }
}

uint64_t sub_1AFBB33A4(uint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, float a5)
{
  v9 = a2 * result;
  if (a2 * result < a3)
  {
    v18 = v8;
    v19 = v7;
    v20 = v5;
    v21 = v6;
    v10 = a2 + a2 * result;
    if (v10 >= a3)
    {
      v11 = a3;
    }

    else
    {
      v11 = a2 + a2 * result;
    }

    if (v10 != v9)
    {
      do
      {
        v14 = v9 + 1;
        v15 = a4[2];
        v17[0] = a4[1];
        v17[1] = v15;
        v16 = a4[4];
        v17[2] = a4[3];
        v17[3] = v16;
        result = sub_1AFD670C4(*(v17 + v9), 0, 0, 0, 0, 0, a5);
        v9 = v14;
      }

      while (v11 != v14);
    }
  }

  return result;
}

uint64_t sub_1AFBB3448()
{

  return swift_deallocClassInstance();
}

uint64_t initializeWithCopy for ParticleFluidSolver2DSolver(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 20) = *(a2 + 20);
  v3 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v3;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 65) = *(a2 + 65);
  v4 = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 68) = v4;
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);

  return a1;
}

uint64_t assignWithCopy for ParticleFluidSolver2DSolver(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  *(a1 + 10) = *(a2 + 10);
  *(a1 + 11) = *(a2 + 11);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 65) = *(a2 + 65);
  *(a1 + 66) = *(a2 + 66);
  v4 = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 68) = v4;
  v5 = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 76) = v5;
  return a1;
}

__n128 initializeWithTake for ParticleFluidSolver2DSolver(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t assignWithTake for ParticleFluidSolver2DSolver(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  *(a1 + 10) = *(a2 + 10);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 20) = *(a2 + 20);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 65) = *(a2 + 65);
  *(a1 + 66) = *(a2 + 66);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t getEnumTagSinglePayload for ParticleFluidSolver2DSolver(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 81))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ParticleFluidSolver2DSolver(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 initializeWithCopy for ParticleFluidSolver2DEmitter(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ParticleFluidSolver2DEmitter(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[26])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ParticleFluidSolver2DEmitter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1AFBB3878()
{
  v0 = swift_allocObject();
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v11 = qword_1ED73B840;
  v12 = 0;
  v13 = 2;
  v14 = 0;
  v15 = 2;
  v16 = 0;
  sub_1AF8290DC(v5);
  v1 = v5[1];
  *(v0 + 16) = v5[0];
  *(v0 + 32) = v1;
  *(v0 + 48) = v6;
  sub_1AF5C90C0(v7);
  v2 = v7[1];
  *(v0 + 56) = v7[0];
  *(v0 + 72) = v2;
  *(v0 + 88) = v8;
  sub_1AF5C90E4(v9);
  v3 = v9[1];
  *(v0 + 96) = v9[0];
  *(v0 + 112) = v3;
  *(v0 + 128) = v10;
  return v0;
}

uint64_t sub_1AFBB3970()
{
  v0 = sub_1AFDFF118();

  if (v0 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AFBB39C4()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AFBB3A10@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  sub_1AFBB7DC4(0, &qword_1EB643198, sub_1AFBB7934, &type metadata for ParticleFluidSolver2DSolver.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v44 - v8;
  v72 = 1;
  v69 = 1;
  v10 = a1[3];
  v54 = a1;
  sub_1AF441150(a1, v10);
  sub_1AFBB7934();
  sub_1AFDFF3B8();
  if (v2)
  {
    v57 = 0;
    v58 = 65793;
    __asm { FMOV            V0.2S, #1.0 }

    v59 = _D0;
    v60 = 0;
    v61 = xmmword_1AFE95810;
    v62 = xmmword_1AFE21120;
    v63 = 1;
    v64 = 0;
    v65 = 0;
    v66 = v72;
    v67 = 0;
    v68 = v69;
    sub_1AF598838(&v57);
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v54);
  }

  else
  {
    v16 = v53;
    LOBYTE(v55) = 0;
    v17 = sub_1AFDFE718() & 1;
    LOBYTE(v55) = 1;
    v19 = v9;
    v20 = v5;
    v21 = sub_1AFDFE718() & 1;
    v56 = 2;
    sub_1AF51CDAC();
    sub_1AFDFE768();
    v52 = v21;
    v22 = v55;
    v56 = 3;
    sub_1AF51CCD8();
    sub_1AFDFE768();
    v51 = v22;
    v23 = v55;
    LOBYTE(v55) = 4;
    sub_1AFDFE738();
    v25 = v24;
    LOBYTE(v55) = 5;
    v26 = sub_1AFDFE6C8();
    if ((v26 & 0x100000000) != 0)
    {
      v27 = 1.0;
    }

    else
    {
      v27 = *&v26;
    }

    LOBYTE(v55) = 6;
    sub_1AFDFE738();
    v29 = v28;
    v50 = v23;
    sub_1AFBB7DC4(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    v56 = 7;
    sub_1AFBB7988(&qword_1ED72F748);
    sub_1AFDFE768();
    v49 = v55;
    LOBYTE(v55) = 8;
    sub_1AFDFE738();
    v31 = v30;
    LOBYTE(v55) = 9;
    v32 = v20;
    v33 = v19;
    sub_1AFDFE738();
    v35 = v34;
    LOBYTE(v55) = 10;
    sub_1AFDFE738();
    v37 = v36;
    LOBYTE(v55) = 11;
    sub_1AFDFE738();
    v39 = v38;
    LOBYTE(v55) = 12;
    LOBYTE(v48) = sub_1AFDFE718() & 1;
    v48 = v48;
    LOBYTE(v55) = 13;
    LOBYTE(v47) = sub_1AFDFE718() & 1;
    v47 = v47;
    LOBYTE(v55) = 14;
    LOBYTE(v46) = sub_1AFDFE718() & 1;
    v46 = v46;
    v72 = 1;
    LOBYTE(v55) = 15;
    v45 = sub_1AFDFE6C8();
    if ((v45 & 0x100000000) != 0)
    {
      v45 = 0;
    }

    else
    {
      v72 = 0;
    }

    v69 = 1;
    LOBYTE(v55) = 16;
    v40 = sub_1AFDFE6C8();
    (*(v6 + 8))(v33, v32);
    if ((v40 & 0x100000000) != 0)
    {
      LODWORD(v40) = 0;
    }

    else
    {
      v69 = 0;
    }

    v41 = v72;
    v42 = v69;
    result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v54);
    *v16 = 0;
    *(v16 + 8) = v17;
    *(v16 + 9) = v52;
    *(v16 + 10) = v51;
    *(v16 + 11) = v50;
    *(v16 + 12) = v25;
    *(v16 + 16) = v27;
    *(v16 + 20) = v29;
    *(v16 + 32) = v49;
    *(v16 + 48) = v31;
    *(v16 + 52) = v35;
    *(v16 + 56) = v37;
    *(v16 + 60) = v39;
    *(v16 + 64) = v48;
    *(v16 + 65) = v47;
    *(v16 + 66) = v46;
    *(v16 + 68) = v45;
    *(v16 + 72) = v41;
    v43 = v70;
    *(v16 + 75) = v71;
    *(v16 + 73) = v43;
    *(v16 + 76) = v40;
    *(v16 + 80) = v42;
  }

  return result;
}

uint64_t sub_1AFBB4760@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24[0] = a2;
  sub_1AFBB7DC4(0, &qword_1EB6431B0, sub_1AFBB7A04, &type metadata for ParticleFluidSolver2DEmitter.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v24 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AFBB7A04();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v10 = v6;
  v11 = v24[0];
  v31 = 0;
  v12 = v5;
  v13 = sub_1AFDFE718();
  v30 = 1;
  sub_1AF47FEB4();
  sub_1AFDFE768();
  v14 = v10;
  v15 = v24[1];
  v29 = 2;
  sub_1AFDFE738();
  v17 = v16;
  v28 = 3;
  sub_1AFDFE738();
  v19 = v18;
  v27 = 4;
  sub_1AFDFE738();
  v21 = v20;
  v26 = 5;
  LOBYTE(v10) = sub_1AFDFE718();
  v25 = 6;
  v22 = sub_1AFDFE718();
  (*(v14 + 8))(v9, v12);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *v11 = v13 & 1;
  *(v11 + 4) = v15;
  *(v11 + 12) = v17;
  *(v11 + 16) = v19;
  *(v11 + 20) = v21;
  *(v11 + 24) = v10 & 1;
  *(v11 + 25) = v22 & 1;
  return result;
}

uint64_t sub_1AFBB4A98(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *a3;
  if (*a3)
  {
    v5 = result;
    v6 = *(a3 + 10);
    if (*(a3 + 10) > 3u)
    {
      v7 = 6;
      if (v6 != 6)
      {
        v7 = 3;
      }

      v8 = 3;
      if (v6 != 4)
      {
        v8 = 4;
      }

      if (*(a3 + 10) <= 5u)
      {
        v6 = v8;
      }

      else
      {
        v6 = v7;
      }
    }

    else if (*(a3 + 10) > 1u)
    {
      if (v6 == 2)
      {
        v6 = 2;
      }

      else
      {
        v6 = 3;
      }
    }

    else if (!*(a3 + 10))
    {
      return result;
    }

    v73 = *(v3 + 24);
    v74 = *(v3 + 16);
    v72 = *(v3 + 32);
    v9 = MEMORY[0x1E69E7CC0];
    v81 = MEMORY[0x1E69E7CC0];
    sub_1AF4431E0(a3, &v93);
    v10 = v9;
    v11 = 0;
    do
    {
      v12 = *(v3 + 32);
      v93 = *(v3 + 16);
      v94 = v12;
      v13 = *(v3 + 64);
      v95 = *(v3 + 48);
      v96 = v13;
      v14 = *(&v93 + v11);
      v15 = v10;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v10 = v15;
      }

      else
      {
        v10 = sub_1AF427ED0(0, *(v15 + 2) + 1, 1, v15);
      }

      v17 = *(v10 + 2);
      v16 = *(v10 + 3);
      if (v17 >= v16 >> 1)
      {
        v10 = sub_1AF427ED0(v16 > 1, v17 + 1, 1, v10);
      }

      ++v11;
      *(v10 + 2) = v17 + 1;
      *&v10[8 * v17 + 32] = v14;
    }

    while (v6 != v11);
    v81 = v10;
    v18 = a3;
    v19 = *(a3 + 12);
    v20 = 1.0;
    if (v19 < 1.0)
    {
      v21 = cosf(fmaxf(v19, 0.0) * 3.1416);
      v18 = a3;
      v19 = (0.5 - (v21 * 0.5)) * ((0.5 - (v21 * 0.5)) * (0.5 - (v21 * 0.5)));
    }

    v22 = *(v18 + 20);
    if (v22 > 0.0)
    {
      v20 = 1.0 / v22;
    }

    v23 = v5;
    v24 = v18;
    sub_1AF6B06C0(a2, v23, 0x200000000, &v82);
    if (v82)
    {
      v71 = v89;
      if (v89 > 0)
      {
        v70 = v86;
        if (v86)
        {
          v68 = v85;
          v25 = v88;
          v67 = v87;
          v26 = *(v87 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
          v80 = *(v88 + 32);
          v90 = v82;
          v91 = v83;
          v92 = v84;
          v27 = 0;
          v66 = v26;
          v69 = v6;
          do
          {
            v28 = (v68 + 48 * v27);
            v29 = *v28;
            v30 = v28[1];
            v31 = v28[2];
            v32 = *(v28 + 2);
            v33 = *(v28 + 3);
            v34 = *(v28 + 4);
            v35 = *(v28 + 5);
            if (v26)
            {
              v36 = *(v35 + 376);

              os_unfair_lock_lock(v36);
              os_unfair_lock_lock(*(v35 + 344));
            }

            else
            {
            }

            ecs_stack_allocator_push_snapshot(v80);
            v77 = *(v25 + 64);
            v78 = *(v25 + 48);
            v76 = *(v25 + 80);
            v37 = *(*(*(*(v35 + 40) + 16) + 32) + 16) + 1;
            *(v25 + 48) = ecs_stack_allocator_allocate(*(v25 + 32), 48 * v37, 8);
            *(v25 + 56) = v37;
            *(v25 + 72) = 0;
            *(v25 + 80) = 0;
            *(v25 + 64) = 0;
            *&v93 = v67;
            *(&v93 + 1) = v35;
            v79 = v35;
            *&v94 = v25;
            *(&v94 + 1) = v31;
            *&v95 = (v30 - v29 + v31);
            *(&v95 + 1) = v71;
            *&v96 = v29;
            *(&v96 + 1) = v30;
            v97 = 0;
            v98 = 0;
            v99 = 1;
            v100 = v32;
            v101 = v33;
            v102 = v34;
            v38.n128_f32[0] = v19;
            sub_1AFBB29D4(&v93, v69, v74, v73, v72, &v81, v22, v38, v20);
            v39 = *(v25 + 48);
            v40 = *(v25 + 64);
            if (!v40)
            {
              v62 = *(v25 + 56);
              v63 = *(v25 + 32);
              goto LABEL_66;
            }

            v75 = v27;
            for (i = 0; i != v40; ++i)
            {
              v43 = (v39 + 48 * i);
              v44 = *v43;
              v45 = v43[4];
              v46 = *(v25 + 72);
              if (v46)
              {
                v47 = v44 == v46;
              }

              else
              {
                v47 = 0;
              }

              if (v47)
              {
                goto LABEL_38;
              }

              v48 = v90;
              if (!v90[11])
              {
                goto LABEL_38;
              }

              v49 = v43[2];
              v50 = v90 + 41;
              v51 = v90[9];
              if (v51 >= 0x10)
              {
                v52 = &v50[v90[8]];
                v53 = v51 >> 4;
                v54 = v90 + 41;
                while (*v52 != v44)
                {
                  ++v54;
                  v52 += 16;
                  if (!--v53)
                  {
                    goto LABEL_54;
                  }
                }

                v55 = v54[v90[10]];
                v56 = v55 > 5;
                v57 = (1 << v55) & 0x23;
                if (v56 || v57 == 0)
                {
LABEL_38:

                  v45(v42);

                  continue;
                }
              }

LABEL_54:
              if (swift_conformsToProtocol2() && v49)
              {
                if (sub_1AF5FC8D8(v49))
                {
                  goto LABEL_38;
                }

                v59 = v48[9];
                if (v59 < 0x10)
                {
                  goto LABEL_38;
                }

                v60 = &v50[v48[8]];
                v61 = 16 * (v59 >> 4);
                while (*v60 != v49)
                {
                  v60 += 16;
                  v61 -= 16;
                  if (!v61)
                  {
                    goto LABEL_38;
                  }
                }
              }
            }

            v62 = *(v25 + 56);
            v39 = *(v25 + 48);
            v63 = *(v25 + 32);
            if (*(v25 + 64) >= 1)
            {
              swift_arrayDestroy();
            }

            v27 = v75;
LABEL_66:
            ecs_stack_allocator_deallocate(v63, v39, 48 * v62);
            *(v25 + 48) = v78;
            *(v25 + 64) = v77;
            *(v25 + 80) = v76;
            sub_1AF62D29C(v79);
            ecs_stack_allocator_pop_snapshot(v80);
            v26 = v66;
            if (v66)
            {
              os_unfair_lock_unlock(*(v79 + 344));
              os_unfair_lock_unlock(*(v79 + 376));
            }

            ++v27;
          }

          while (v27 != v70);
        }

        sub_1AF598838(a3);
        sub_1AF5D1564(&v82);
      }

      sub_1AF5D1564(&v82);
      v64 = a3;
    }

    else
    {
      v64 = v24;
    }

    sub_1AF598838(v64);
  }

  return result;
}

void sub_1AFBB503C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 72);
  v50[0] = *(v1 + 56);
  v50[1] = v4;
  v51 = *(v1 + 88);
  sub_1AF6B06C0(a1, v50, 0x200000000, &v29);
  v23 = v29;
  if (v29)
  {
    v5 = v32;
    v6 = v33;
    v7 = v35;
    v37 = v30;
    v38 = v31;
    v21 = v36;
    v22 = v34;
    if (v36 > 0 && v33)
    {
      v8 = *(v35 + 32);
      v9 = *(v34 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);

      sub_1AF5D15C0(&v29, v45);
      v10 = (v5 + 24);
      v18 = v9;
      v19 = v2;
      v20 = a1;
      do
      {
        v28 = v6;
        v11 = *(v10 - 6);
        v12 = *(v10 - 4);
        v26 = *v10;
        v27 = *(v10 - 1);
        v13 = v10[2];
        v24 = *(v10 - 5);
        v25 = v10[1];
        if (v9)
        {
          v14 = *(v13 + 376);

          os_unfair_lock_lock(v14);
          os_unfair_lock_lock(*(v13 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v8);
        v15 = *(v7 + 64);
        v43[0] = *(v7 + 48);
        v43[1] = v15;
        v44 = *(v7 + 80);
        v16 = *(v7 + 32);
        v17 = *(*(*(*(v13 + 40) + 16) + 32) + 16) + 1;

        *(v7 + 48) = ecs_stack_allocator_allocate(v16, 48 * v17, 8);
        *(v7 + 56) = v17;
        *(v7 + 72) = 0;
        *(v7 + 80) = 0;
        *(v7 + 64) = 0;

        LOBYTE(v39) = 1;
        v45[0] = v22;
        v45[1] = v13;
        v45[2] = v7;
        v45[3] = v12;
        v45[4] = (v24 - v11 + v12);
        v45[5] = v21;
        v45[6] = v11;
        v45[7] = v24;
        v45[8] = 0;
        v45[9] = 0;
        v46 = 1;
        v47 = v27;
        v48 = v26;
        v49 = v25;

        sub_1AFD2A9A8(v45, v19, v20);

        v40 = v23;
        v41 = v37;
        v42 = v38;
        sub_1AF630994(v7, &v40, v43);
        sub_1AF62D29C(v13);
        ecs_stack_allocator_pop_snapshot(v8);
        v9 = v18;
        if (v18)
        {
          os_unfair_lock_unlock(*(v13 + 344));
          os_unfair_lock_unlock(*(v13 + 376));
        }

        v10 += 6;
        v6 = v28 - 1;
      }

      while (v28 != 1);
      sub_1AF5D1564(&v29);
      sub_1AF5D1564(&v29);
    }

    else
    {
      sub_1AF5D1564(&v29);
    }
  }
}

uint64_t sub_1AFBB5380(uint64_t *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = 0;
  v5 = *a1;

  sub_1AFA3F3D0(&v321);
  v6 = v3[1];
  sub_1AF3C9244(v6, &v327);
  v7 = v327;
  v8 = v328;
  v9 = v329;
  v10 = v330;
  if (v331)
  {
    v11 = -1;
  }

  else
  {
    v11 = 0;
  }

  v12 = v321.i64[0];
  if (!v321.i64[0])
  {
    v291 = v327;
    v292 = v328;
    v293 = v329;
    v294 = v330;
    sub_1AF6817D4(v6, v5);
    v12 = v321.i64[0];
    if (!v321.i64[0])
    {
      goto LABEL_188;
    }

    v9 = v293;
    v10 = v294;
    v7 = v291;
    v8 = v292;
  }

  if (*(v5 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 8) == 1 && *(v5 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 16) == 0)
  {
    v20 = v12[2];

    sub_1AFD670C8(v20);
    sub_1AFD670CC(v20);
    v21 = v12[3];
    sub_1AFD670C8(v21);
    sub_1AFD670CC(v21);
    v22 = v12[4];
    sub_1AFD670C8(v22);
    sub_1AFD670CC(v22);
    v23 = v12[5];
    sub_1AFD670C8(v23);
    sub_1AFD670CC(v23);
    v24 = v12[6];
    sub_1AFD670C8(v24);
    sub_1AFD670CC(v24);
    v25 = v12[7];
    sub_1AFD670C8(v25);
    sub_1AFD670CC(v25);
    v26 = v12[8];
    sub_1AFD670C8(v26);
    sub_1AFD670CC(v26);
    v27 = v12[9];
    sub_1AFD670C8(v27);
    sub_1AFD670CC(v27);
    goto LABEL_187;
  }

  v14 = vdupq_n_s32(v11);
  v258 = xmmword_1AFE20150;
  v294 = vbslq_s8(v14, xmmword_1AFE20150, v7);
  v257 = xmmword_1AFE20160;
  v293 = vbslq_s8(v14, xmmword_1AFE20160, v8);
  v256 = xmmword_1AFE20180;
  v292 = vbslq_s8(v14, xmmword_1AFE20180, v9);
  v255 = xmmword_1AFE201A0;
  v291 = vbslq_s8(v14, xmmword_1AFE201A0, v10);
  v15 = v321.u8[10];
  v290 = v323;
  v16 = *&v324;
  v17 = v321.u8[11];

  sub_1AFBADC94(v15, v17, v290, v16, v294, v293, v292, v291);
  if (v15 > 3)
  {
    if (v15 > 5)
    {
      if (v15 == 6)
      {
        if ((v321.i8[8] & 1) == 0)
        {
          goto LABEL_184;
        }

        v18 = 0;
        v251 = 0;
        v249 = 0;
        v19 = 6;
        goto LABEL_30;
      }
    }

    else if (v15 != 4)
    {
      if ((v321.i8[8] & 1) == 0)
      {
        goto LABEL_184;
      }

      v18 = 0;
      v251 = 0;
      v249 = 1;
      v19 = 4;
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      if ((v321.i8[8] & 1) == 0)
      {
        goto LABEL_184;
      }

      v18 = 0;
      v249 = 0;
      v251 = 1;
      v19 = 2;
      goto LABEL_30;
    }

LABEL_28:
    if ((v321.i8[8] & 1) == 0)
    {
      goto LABEL_184;
    }

    v18 = 0;
    v251 = 0;
    v249 = 0x100000000;
    v19 = 3;
    goto LABEL_30;
  }

  if (!v15)
  {
LABEL_187:

LABEL_188:

    goto LABEL_189;
  }

  if (v321.u8[8] != 1)
  {
    goto LABEL_184;
  }

  v251 = 0;
  v249 = 0;
  v18 = 1;
  v19 = 1;
LABEL_30:
  v252 = v3;
  sub_1AFB93E58();
  v29 = v28;
  sub_1AFD670C0(v12[2]);
  v250 = v18;
  if ((v18 & 1) == 0)
  {
    sub_1AFD670C0(v12[3]);
    if ((v251 & 1) == 0)
    {
      sub_1AFD670C0(v12[4]);
      if ((v249 & 0x100000000) == 0)
      {
        sub_1AFD670C0(v12[5]);
        if ((v249 & 1) == 0)
        {
          sub_1AFD670C0(v12[6]);
          sub_1AFD670C0(v12[7]);
        }
      }
    }
  }

  v30 = 0;
  v31 = *(&v324 + 4);
  v32 = *(&v324 + 3);
  do
  {
    v33 = v30 + 1;
    v34 = *(v12 + 2);
    *v346 = *(v12 + 1);
    *&v346[16] = v34;
    v35 = *(v12 + 4);
    *&v346[32] = *(v12 + 3);
    v347 = v35;
    v36 = *&v346[8 * v30];
    sub_1AFD670DC(v36, *&v31);
    sub_1AFD6710C(v36, 0.0);
    sub_1AFD670F4(v36, *(&v31 + 1));
    sub_1AFD67124(v36, v32);
    sub_1AFD6713C(v36, 0.02);
    sub_1AFD67154(v36, 0.75);
    sub_1AFD6716C(v36, 0.333);
    v30 = v33;
  }

  while (v19 != v33);
  v37 = fminf(v29, 0.033333);
  v38 = *(v2 + 32);
  v381[0] = *(v2 + 16);
  v381[1] = v38;
  v382 = *(v2 + 48);
  v270 = OBJC_IVAR____TtC3VFX13EntityManager_queryManager;
  sub_1AF6B06C0(v5, v381, 0x200000000, v332);
  if (*&v332[0])
  {
    if (v335 <= 0 || (v259 = *(&v333 + 1)) == 0)
    {
      sub_1AF5D1564(v332);
      goto LABEL_173;
    }

    v269 = v5;
    v254 = *(&v332[2] + 1);
    v262 = *(v334 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v263 = *(&v334 + 1);
    v261 = *(*(&v334 + 1) + 32);
    v350 = *&v332[0];
    v351 = *(v332 + 8);
    v352 = *(&v332[1] + 8);
    v317 = v332[2];
    v318 = v333;
    v319 = v334;
    v320 = v335;
    v315 = v332[0];
    v316 = v332[1];
    sub_1AF5DD298(&v315, v346);
    v39 = 0;
    v40 = 8 * v19;
    __asm { FMOV            V0.4S, #1.0 }

    v267 = _Q0;
    v268 = xmmword_1AFE431C0;
    v253 = v19;
    while (1)
    {
      v260 = v39;
      v45 = (v254 + 48 * v39);
      v280 = *v45;
      v271 = v45[1];
      v46 = *(v45 + 3);
      v272 = *(v45 + 2);
      v47 = *(v45 + 5);
      v278 = *(v45 + 4);
      if (v262)
      {
        v48 = *(v47 + 376);
        v49 = v47;

        os_unfair_lock_lock(v48);
        os_unfair_lock_lock(*(v49 + 344));
      }

      else
      {
        v49 = v47;
      }

      ecs_stack_allocator_push_snapshot(v261);
      v50 = v263;
      v51 = *(v263 + 4);
      v363[0] = *(v263 + 3);
      v363[1] = v51;
      v364 = v263[10];
      v52 = *(*(*(*(v49 + 40) + 16) + 32) + 16) + 1;
      v263[6] = ecs_stack_allocator_allocate(v263[4], 48 * v52, 8);
      v50[7] = v52;
      v50[9] = 0;
      v50[10] = 0;
      v50[8] = 0;
      v53 = v46;
      v54 = v278;
      v276 = v49;
      v55 = sub_1AF64B110(&type metadata for ParticleFluidSolver2DEmitter, &off_1F2565B90, v272, v53, v278, v50);
      v277 = 32;
      v279 = v55;
      if (v272)
      {
        if (v278)
        {
          v289 = v4;
          v56 = 0;
          do
          {
            v57 = v55 + 28 * v56;
            if (*v57 == 1)
            {
              v58 = *(v57 + 4) == -1 && *(v57 + 8) == 0;
              v280 = v56;
              if (v58)
              {
                v116 = v272[v56];
                v117 = *(v276 + 4);
                v118 = *(v276 + 5);
                v308 = v276[112];
                v120 = *(v276 + 5);
                v119 = *(v276 + 6);
                v306 = v118;
                v307 = v119;
                v121 = *(v276 + 4);
                v304 = *(v276 + 3);
                v305 = v117;
                v122 = *(v276 + 6);
                v301 = v120;
                v302 = v122;
                v303 = v276[112];
                v299 = *(v276 + 3);
                v300 = v121;
                v123 = sub_1AF64FB24(&type metadata for WorldTransform);
                v125 = v124;
                v311 = v301;
                v312 = v302;
                LOBYTE(v313) = v303;
                v309 = v299;
                v310 = v300;

                sub_1AF5DD36C(&v304, &v295);
                sub_1AF5DD3C8(&v309);
                if (v125)
                {

                  v126 = xmmword_1AFE201A0;
                  v127 = xmmword_1AFE20180;
                  v128 = xmmword_1AFE20160;
                  v129 = xmmword_1AFE20150;
                }

                else
                {
                  v130 = *(v276 + 16);

                  v131 = (v130 + v123 + (v116 << 6));
                  v129 = *v131;
                  v128 = v131[1];
                  v127 = v131[2];
                  v126 = v131[3];
                }

                v132 = vmulq_f32(v129, v129);
                *&v133 = v132.f32[2] + vaddv_f32(*v132.f32);
                *v132.f32 = vrsqrte_f32(v133);
                *v132.f32 = vmul_f32(*v132.f32, vrsqrts_f32(v133, vmul_f32(*v132.f32, *v132.f32)));
                v134 = vmulq_n_f32(v129, vmul_f32(*v132.f32, vrsqrts_f32(v133, vmul_f32(*v132.f32, *v132.f32))).f32[0]);
                v134.i32[3] = v129.i32[3];
                v135 = vmulq_f32(v128, v128);
                *&v136 = v135.f32[2] + vaddv_f32(*v135.f32);
                *v135.f32 = vrsqrte_f32(v136);
                *v135.f32 = vmul_f32(*v135.f32, vrsqrts_f32(v136, vmul_f32(*v135.f32, *v135.f32)));
                v137 = vmulq_n_f32(v128, vmul_f32(*v135.f32, vrsqrts_f32(v136, vmul_f32(*v135.f32, *v135.f32))).f32[0]);
                v137.i32[3] = v128.i32[3];
                v138 = vmulq_f32(v127, v127);
                *&v139 = v138.f32[2] + vaddv_f32(*v138.f32);
                *v138.f32 = vrsqrte_f32(v139);
                *v138.f32 = vmul_f32(*v138.f32, vrsqrts_f32(v139, vmul_f32(*v138.f32, *v138.f32)));
                v140 = vmulq_n_f32(v127, vmul_f32(*v138.f32, vrsqrts_f32(v139, vmul_f32(*v138.f32, *v138.f32))).f32[0]);
                v140.i32[3] = v127.i32[3];
                v299 = v134;
                v300 = v137;
                v301 = v140;
                v302 = v126;
                v141 = v267;
                v141.i32[3] = v273.i32[3];
                v290 = v141;
                sub_1AF6A6ACC(v141);
                v142 = 0;
                v143 = v302;
                v144 = vmlaq_f32(vmlaq_n_f32(vmulq_f32(v301, 0), v300, *(v57 + 20)), 0, v299);
                v144.i32[3] = v274.n128_i32[3];
                v291 = v144;
                v143.i32[3] = v275.i32[3];
                v293 = v143;
                do
                {
                  v145 = *(v12 + 2);
                  v295 = *(v12 + 1);
                  v296 = v145;
                  v146 = *(v12 + 4);
                  v297 = *(v12 + 3);
                  v298 = v146;
                  v147 = v295.i64[v142 / 8];
                  sub_1AFD670D0(v147, 1, v293, *(v57 + 12), v291, v37);
                  sub_1AFD670D4(v147, 1, v293, *(v57 + 12), *(v57 + 16), v37);
                  v142 += 8;
                }

                while (v40 != v142);
                v274 = v291;
                v275 = v293;
                v273 = v290;
              }

              else
              {
                if (qword_1ED72D720 != -1)
                {
                  swift_once();
                }

                v367 = qword_1ED73B840;
                v368 = 0;
                v369 = 2;
                v370 = 0;
                v371 = 2;
                v372 = 0;
                sub_1AF8D6AD0(1, 1, 1, v336);
                sub_1AFA1CF6C();
                v59 = swift_allocObject();
                *(v59 + 16) = v268;
                v60 = *(v57 + 4);
                *(v59 + 56) = &type metadata for EmitterReference;
                *(v59 + 64) = &off_1F2563D20;
                *(v59 + 32) = v60;
                v61 = v59 + 32;
                sub_1AF5FDBF0(v337);
                sub_1AFBB780C(v336, sub_1AFBB777C);
                swift_setDeallocating();
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v61);
                swift_deallocClassInstance();
                v359[0] = v337[0];
                v359[1] = v337[1];
                v360 = v338;
                sub_1AF6B06C0(v269, v359, 0x200000000, v339);
                if (*&v339[0])
                {
                  if (v342 >= 1 && (v284 = *(&v340 + 1)) != 0)
                  {
                    v283 = *(&v339[2] + 1);
                    v62 = *(&v341 + 1);
                    v63 = *(v341 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
                    v64 = *(*(&v341 + 1) + 32);
                    v356 = *&v339[0];
                    v357 = *(v339 + 8);
                    v358 = *(&v339[1] + 8);
                    v311 = v339[2];
                    v312 = v340;
                    v313 = v341;
                    v314 = v342;
                    v309 = v339[0];
                    v310 = v339[1];
                    sub_1AF5DD298(&v309, &v304);
                    v65 = 0;
                    v282 = v63;
                    v285 = v62;
                    v281 = v64;
                    do
                    {
                      v66 = (v283 + 48 * v65);
                      v67 = *v66;
                      v291.n128_u64[0] = v66[1];
                      v68 = *(v66 + 3);
                      v286 = *(v66 + 2);
                      v287 = v65;
                      v288 = v68;
                      v69 = *(v66 + 5);
                      v293.i64[0] = *(v66 + 4);
                      if (v63)
                      {
                        v70 = *(v69 + 376);

                        os_unfair_lock_lock(v70);
                        os_unfair_lock_lock(*(v69 + 344));
                      }

                      else
                      {
                      }

                      ecs_stack_allocator_push_snapshot(v64);
                      v71 = *(v62 + 4);
                      v365[0] = *(v62 + 3);
                      v365[1] = v71;
                      v366 = v62[10];
                      v72 = *(*(*(*(v69 + 40) + 16) + 32) + 16);
                      v290.i64[0] = v62[4];
                      v73 = v69;
                      v74 = v72 + 1;
                      v75 = v62;
                      v76 = 48 * (v72 + 1);

                      v75[6] = ecs_stack_allocator_allocate(v290.i64[0], v76, 8);
                      v75[7] = v74;
                      v75[9] = 0;
                      v75[10] = 0;
                      v75[8] = 0;

                      v290.i64[0] = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v286, v288, v293.i64[0], v75);
                      v77 = sub_1AF64B110(&type metadata for Scale1, &off_1F252F788, v286, v288, v293.i64[0], v75);
                      v78 = v288;
                      v288 = v73;
                      v79 = sub_1AF64B110(&type metadata for Velocity, &off_1F2530AF8, v286, v78, v293.i64[0], v75);
                      if (v67 == v291.n128_u32[0])
                      {
                        v80 = v294;
                      }

                      else
                      {
                        v81 = v79;
                        v80.n128_u32[3] = v294.u32[3];
                        do
                        {
                          v82 = 0;
                          v83 = v80.n128_u32[3];
                          v80 = *(v290.i64[0] + 16 * v67);
                          v80.n128_u32[3] = v83;
                          v84 = *(v57 + 12) * *(v77 + 4 * v67);
                          v85 = *(v57 + 20);
                          v86 = *(v81 + 16 * v67);
                          v87.i64[0] = vmulq_n_f32(v86, v85).u64[0];
                          v87.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(v85, v86, 2));
                          v293 = v87;
                          v294 = v80;
                          do
                          {
                            v88 = *(v12 + 2);
                            v304 = *(v12 + 1);
                            v305 = v88;
                            v89 = *(v12 + 4);
                            v306 = *(v12 + 3);
                            v307 = v89;
                            v90 = *(&v304 + v82);
                            sub_1AFD670D0(v90, 1, v80, v84, v293, v37);
                            sub_1AFD670D4(v90, 1, v294, v84, *(v57 + 16), v37);
                            v80 = v294;
                            v82 += 8;
                          }

                          while (v40 != v82);
                          ++v67;
                        }

                        while (v67 != v291.n128_u64[0]);
                      }

                      v294 = v80;
                      v62 = v285;
                      sub_1AF630994(v285, &v356, v365);
                      v91 = v288;
                      if (*(v285[13] + 16))
                      {

                        sub_1AF62F348(v92, v288);

                        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                        v94 = v285[13];
                        if (isUniquelyReferenced_nonNull_native)
                        {
                          v95 = v94[2];
                          v96 = swift_isUniquelyReferenced_nonNull_native();
                          v285[13] = v94;
                          if ((v96 & 1) == 0)
                          {
                            v94 = sub_1AF420EA0(0, v95, 1, v94);
                            v62[13] = v94;
                          }

                          sub_1AF43A540(0);
                          swift_arrayDestroy();
                          if (v95)
                          {
                            v97 = v94[2] - v95;
                            memmove(v94 + 4, &v94[9 * v95 + 4], 72 * v97);
                            v94[2] = v97;
                          }

                          v62[13] = v94;
                        }

                        else
                        {
                          v98 = MEMORY[0x1E69E7CC0];
                          if (v94[3] >= 2uLL)
                          {
                            sub_1AFBB78E0(0, &qword_1ED7269C0, sub_1AF43A540);
                            v98 = swift_allocObject();
                            v99 = j__malloc_size_0(v98);
                            v98[2] = 0;
                            v98[3] = 2 * ((v99 - 32) / 72);
                          }

                          v62[13] = v98;
                        }

                        if (*(v62[2] + OBJC_IVAR____TtC3VFX13EntityManager_currentState) - 1 >= 2)
                        {
                          v100 = *(v91 + 256);
                          if (*(v91 + 232) == v100)
                          {
                            v101 = *(v91 + 240);
                          }

                          else
                          {
                            v290.i64[0] = *(v91 + 232);
                            v286 = (v91 + 232);
                            v291.n128_u64[0] = v100;
                            v102 = *(v91 + 48);
                            v103 = *(v91 + 64);
                            v308 = *(v91 + 112);
                            v104 = *(v91 + 96);
                            v306 = *(v91 + 80);
                            v307 = v104;
                            v304 = v102;
                            v305 = v103;
                            v105 = *(&v102 + 1);
                            v106 = v91;
                            v107 = *(*(&v102 + 1) + 16);
                            if (v107)
                            {
                              v293.i64[0] = *(v106 + 128);
                              sub_1AF5DD36C(&v304, &v299);

                              v271 = v105;
                              v108 = v105 + 56;
                              do
                              {
                                sub_1AF640BC8();
                                v108 += 40;
                                --v107;
                              }

                              while (v107);

                              sub_1AF5DD3C8(&v304);
                              v62 = v285;
                              v106 = v288;
                            }

                            v91 = v106;
                            if ((*(v106 + 184) & 1) == 0)
                            {
                              v109 = *(v106 + 168);
                              v293.i64[0] = *(v106 + 176);
                              v110 = *(v106 + 16);
                              v111 = *(v110 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);

                              os_unfair_lock_lock(v111);

                              sub_1AF649938(v291.n128_u64[0], v290.i64[0], v109);

                              v112 = *(v110 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);

                              os_unfair_lock_unlock(v112);
                              v62 = v285;
                            }

                            v113 = *(v91 + 192);
                            if (v113)
                            {
                              v114 = *(v91 + 208);
                              v293.i64[0] = *(v91 + 216);
                              sub_1AF75D364(v291.n128_i64[0], v290.i64[0], v113);
                              sub_1AF75D364(v291.n128_i64[0], v290.i64[0], v114);
                            }

                            v100 = *(v91 + 232);
                            v101 = *(v91 + 240);
                            if (v101 == v100)
                            {
                              v101 = 0;
                              v100 = 0;
                              v115 = v286;
                              *v286 = 0;
                              v115[1] = 0;
                            }
                          }

                          *(v91 + 248) = v101;
                          *(v91 + 256) = v100;
                        }
                      }

                      v64 = v281;
                      ecs_stack_allocator_pop_snapshot(v281);
                      v63 = v282;
                      if (v282)
                      {
                        os_unfair_lock_unlock(*(v91 + 344));
                        os_unfair_lock_unlock(*(v91 + 376));
                      }

                      v65 = v287 + 1;
                    }

                    while (v287 + 1 != v284);
                    sub_1AFBB780C(v337, sub_1AFBB777C);
                    sub_1AF5D1564(v339);
                  }

                  else
                  {
                    sub_1AFBB780C(v337, sub_1AFBB777C);
                  }

                  sub_1AF5D1564(v339);
                }

                else
                {
                  sub_1AFBB780C(v337, sub_1AFBB777C);
                }
              }

              v54 = v278;
              v55 = v279;
              v56 = v280;
            }

            ++v56;
          }

          while (v56 != v54);
LABEL_168:
          v4 = v289;
          v19 = v253;
        }
      }

      else
      {
        v148 = v280;
        v149 = v271;
        if (v280 != v271)
        {
          v289 = v4;
          do
          {
            v150 = v55 + 28 * v148;
            if (*v150 == 1)
            {
              v280 = v148;
              if (*(v150 + 4) == -1 && *(v150 + 8) == 0)
              {
                v208 = *(v276 + 4);
                v209 = *(v276 + 5);
                v308 = v276[112];
                v211 = *(v276 + 5);
                v210 = *(v276 + 6);
                v306 = v209;
                v307 = v210;
                v212 = *(v276 + 4);
                v304 = *(v276 + 3);
                v305 = v208;
                v213 = *(v276 + 6);
                v301 = v211;
                v302 = v213;
                v303 = v276[112];
                v299 = *(v276 + 3);
                v300 = v212;
                v214 = sub_1AF64FB24(&type metadata for WorldTransform);
                v216 = v215;
                v311 = v301;
                v312 = v302;
                LOBYTE(v313) = v303;
                v309 = v299;
                v310 = v300;

                sub_1AF5DD36C(&v304, &v295);
                sub_1AF5DD3C8(&v309);
                if (v216)
                {

                  v217 = v257;
                  v218 = v258;
                  v219 = v255;
                  v220 = v256;
                }

                else
                {
                  v221 = *(v276 + 16);

                  v222 = (v221 + v214 + (v280 << 6));
                  v218 = *v222;
                  v217 = v222[1];
                  v220 = v222[2];
                  v219 = v222[3];
                }

                v223 = vmulq_f32(v218, v218);
                *&v224 = v223.f32[2] + vaddv_f32(*v223.f32);
                *v223.f32 = vrsqrte_f32(v224);
                *v223.f32 = vmul_f32(*v223.f32, vrsqrts_f32(v224, vmul_f32(*v223.f32, *v223.f32)));
                v225 = vmulq_n_f32(v218, vmul_f32(*v223.f32, vrsqrts_f32(v224, vmul_f32(*v223.f32, *v223.f32))).f32[0]);
                v225.i32[3] = v218.i32[3];
                v226 = vmulq_f32(v217, v217);
                *&v227 = v226.f32[2] + vaddv_f32(*v226.f32);
                *v226.f32 = vrsqrte_f32(v227);
                *v226.f32 = vmul_f32(*v226.f32, vrsqrts_f32(v227, vmul_f32(*v226.f32, *v226.f32)));
                v228 = vmulq_n_f32(v217, vmul_f32(*v226.f32, vrsqrts_f32(v227, vmul_f32(*v226.f32, *v226.f32))).f32[0]);
                v228.i32[3] = v217.i32[3];
                v229 = vmulq_f32(v220, v220);
                *&v230 = v229.f32[2] + vaddv_f32(*v229.f32);
                *v229.f32 = vrsqrte_f32(v230);
                *v229.f32 = vmul_f32(*v229.f32, vrsqrts_f32(v230, vmul_f32(*v229.f32, *v229.f32)));
                v231 = vmulq_n_f32(v220, vmul_f32(*v229.f32, vrsqrts_f32(v230, vmul_f32(*v229.f32, *v229.f32))).f32[0]);
                v231.i32[3] = v220.i32[3];
                v299 = v225;
                v300 = v228;
                v301 = v231;
                v302 = v219;
                v232 = v267;
                v232.i32[3] = v264.i32[3];
                v290 = v232;
                sub_1AF6A6ACC(v232);
                v233 = 0;
                v234 = v302;
                v235 = vmlaq_f32(vmlaq_n_f32(vmulq_f32(v301, 0), v300, *(v150 + 20)), 0, v299);
                v235.i32[3] = v265.n128_i32[3];
                v291 = v235;
                v234.i32[3] = v266.i32[3];
                v293 = v234;
                do
                {
                  v236 = *(v12 + 2);
                  v295 = *(v12 + 1);
                  v296 = v236;
                  v237 = *(v12 + 4);
                  v297 = *(v12 + 3);
                  v298 = v237;
                  v238 = v295.i64[v233 / 8];
                  sub_1AFD670D0(v238, 1, v293, *(v150 + 12), v291, v37);
                  sub_1AFD670D4(v238, 1, v293, *(v150 + 12), *(v150 + 16), v37);
                  v233 += 8;
                }

                while (v40 != v233);
                v265 = v291;
                v266 = v293;
                v264 = v290;
              }

              else
              {
                if (qword_1ED72D720 != -1)
                {
                  swift_once();
                }

                v375 = qword_1ED73B840;
                v376 = 0;
                v377 = 2;
                v378 = 0;
                v379 = 2;
                v380 = 0;
                sub_1AF8D6AD0(1, 1, 1, v343);
                sub_1AFA1CF6C();
                v152 = swift_allocObject();
                *(v152 + 16) = v268;
                v153 = *(v150 + 4);
                *(v152 + 56) = &type metadata for EmitterReference;
                *(v152 + 64) = &off_1F2563D20;
                *(v152 + 32) = v153;
                v154 = v152 + 32;
                sub_1AF5FDBF0(v344);
                sub_1AFBB780C(v343, sub_1AFBB777C);
                swift_setDeallocating();
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v154);
                swift_deallocClassInstance();
                v361[0] = v344[0];
                v361[1] = v344[1];
                v362 = v345;
                sub_1AF6B06C0(v269, v361, 0x200000000, v346);
                if (*v346)
                {
                  if (v349 >= 1 && (v284 = *(&v347 + 1)) != 0)
                  {
                    v283 = *&v346[40];
                    v155 = *(&v348 + 1);
                    v156 = *(v348 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
                    v157 = *(*(&v348 + 1) + 32);
                    v353 = *v346;
                    v354 = *&v346[8];
                    v355 = *&v346[24];
                    v311 = *&v346[32];
                    v312 = v347;
                    v313 = v348;
                    v314 = v349;
                    v309 = *v346;
                    v310 = *&v346[16];
                    sub_1AF5DD298(&v309, &v304);
                    v158 = 0;
                    v282 = v156;
                    v285 = v155;
                    v281 = v157;
                    do
                    {
                      v159 = (v283 + 48 * v158);
                      v160 = *v159;
                      v291.n128_u64[0] = v159[1];
                      v161 = *(v159 + 3);
                      v286 = *(v159 + 2);
                      v287 = v158;
                      v288 = v161;
                      v162 = *(v159 + 5);
                      v293.i64[0] = *(v159 + 4);
                      if (v156)
                      {
                        v163 = *(v162 + 376);

                        os_unfair_lock_lock(v163);
                        os_unfair_lock_lock(*(v162 + 344));
                      }

                      else
                      {
                      }

                      ecs_stack_allocator_push_snapshot(v157);
                      v164 = *(v155 + 4);
                      v373[0] = *(v155 + 3);
                      v373[1] = v164;
                      v374 = v155[10];
                      v165 = *(*(*(*(v162 + 40) + 16) + 32) + 16);
                      v290.i64[0] = v155[4];
                      v166 = v162;
                      v167 = v165 + 1;
                      v168 = v155;
                      v169 = 48 * (v165 + 1);

                      v168[6] = ecs_stack_allocator_allocate(v290.i64[0], v169, 8);
                      v168[7] = v167;
                      v168[9] = 0;
                      v168[10] = 0;
                      v168[8] = 0;

                      v290.i64[0] = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v286, v288, v293.i64[0], v168);
                      v170 = sub_1AF64B110(&type metadata for Scale1, &off_1F252F788, v286, v288, v293.i64[0], v168);
                      v171 = v288;
                      v288 = v166;
                      v172 = sub_1AF64B110(&type metadata for Velocity, &off_1F2530AF8, v286, v171, v293.i64[0], v168);
                      if (v160 == v291.n128_u32[0])
                      {
                        v173 = v292;
                      }

                      else
                      {
                        v174 = v172;
                        v173.n128_u32[3] = v292.u32[3];
                        do
                        {
                          v175 = 0;
                          v176 = v173.n128_u32[3];
                          v173 = *(v290.i64[0] + 16 * v160);
                          v173.n128_u32[3] = v176;
                          v177 = *(v150 + 12) * *(v170 + 4 * v160);
                          v178 = *(v150 + 20);
                          v179 = *(v174 + 16 * v160);
                          v180.i64[0] = vmulq_n_f32(v179, v178).u64[0];
                          v180.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(v178, v179, 2));
                          v292 = v173;
                          v293 = v180;
                          do
                          {
                            v181 = *(v12 + 2);
                            v304 = *(v12 + 1);
                            v305 = v181;
                            v182 = *(v12 + 4);
                            v306 = *(v12 + 3);
                            v307 = v182;
                            v183 = *(&v304 + v175);
                            sub_1AFD670D0(v183, 1, v173, v177, v293, v37);
                            sub_1AFD670D4(v183, 1, v292, v177, *(v150 + 16), v37);
                            v173 = v292;
                            v175 += 8;
                          }

                          while (v40 != v175);
                          ++v160;
                        }

                        while (v160 != v291.n128_u64[0]);
                      }

                      v292 = v173;
                      v155 = v285;
                      sub_1AF630994(v285, &v353, v373);
                      v184 = v288;
                      if (*(v285[13] + 16))
                      {

                        sub_1AF62F348(v185, v288);

                        v186 = swift_isUniquelyReferenced_nonNull_native();
                        v187 = v285[13];
                        if (v186)
                        {
                          v188 = v187[2];
                          v189 = swift_isUniquelyReferenced_nonNull_native();
                          v285[13] = v187;
                          if ((v189 & 1) == 0)
                          {
                            v187 = sub_1AF420EA0(0, v188, 1, v187);
                            v155[13] = v187;
                          }

                          sub_1AF43A540(0);
                          swift_arrayDestroy();
                          if (v188)
                          {
                            v190 = v187[2] - v188;
                            memmove(v187 + 4, &v187[9 * v188 + 4], 72 * v190);
                            v187[2] = v190;
                          }

                          v155[13] = v187;
                        }

                        else
                        {
                          v191 = MEMORY[0x1E69E7CC0];
                          if (v187[3] >= 2uLL)
                          {
                            sub_1AFBB78E0(0, &qword_1ED7269C0, sub_1AF43A540);
                            v191 = swift_allocObject();
                            v192 = j__malloc_size_0(v191);
                            v191[2] = 0;
                            v191[3] = 2 * ((v192 - 32) / 72);
                          }

                          v155[13] = v191;
                        }

                        if (*(v155[2] + OBJC_IVAR____TtC3VFX13EntityManager_currentState) - 1 >= 2)
                        {
                          v193 = *(v184 + 256);
                          if (*(v184 + 232) == v193)
                          {
                            v194 = *(v184 + 240);
                          }

                          else
                          {
                            v290.i64[0] = *(v184 + 232);
                            v286 = (v184 + 232);
                            v291.n128_u64[0] = v193;
                            v195 = *(v184 + 48);
                            v196 = *(v184 + 64);
                            v308 = *(v184 + 112);
                            v197 = *(v184 + 96);
                            v306 = *(v184 + 80);
                            v307 = v197;
                            v304 = v195;
                            v305 = v196;
                            v198 = *(&v195 + 1);
                            v199 = *(*(&v195 + 1) + 16);
                            if (v199)
                            {
                              v293.i64[0] = *(v184 + 128);
                              sub_1AF5DD36C(&v304, &v299);

                              v278 = v198;
                              v200 = v198 + 56;
                              do
                              {
                                sub_1AF640BC8();
                                v200 += 40;
                                --v199;
                              }

                              while (v199);

                              sub_1AF5DD3C8(&v304);
                              v155 = v285;
                              v184 = v288;
                            }

                            if ((*(v184 + 184) & 1) == 0)
                            {
                              v201 = *(v184 + 168);
                              v293.i64[0] = *(v184 + 176);
                              v202 = *(v184 + 16);
                              v203 = *(v202 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);

                              os_unfair_lock_lock(v203);

                              sub_1AF649938(v291.n128_u64[0], v290.i64[0], v201);

                              v204 = *(v202 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);

                              os_unfair_lock_unlock(v204);
                              v155 = v285;
                            }

                            v205 = *(v184 + 192);
                            if (v205)
                            {
                              v206 = *(v184 + 208);
                              v293.i64[0] = *(v184 + 216);
                              sub_1AF75D364(v291.n128_i64[0], v290.i64[0], v205);
                              sub_1AF75D364(v291.n128_i64[0], v290.i64[0], v206);
                            }

                            v193 = *(v184 + 232);
                            v194 = *(v184 + 240);
                            if (v194 == v193)
                            {
                              v194 = 0;
                              v193 = 0;
                              v207 = v286;
                              *v286 = 0;
                              v207[1] = 0;
                            }
                          }

                          *(v184 + 248) = v194;
                          *(v184 + 256) = v193;
                        }
                      }

                      v157 = v281;
                      ecs_stack_allocator_pop_snapshot(v281);
                      v156 = v282;
                      if (v282)
                      {
                        os_unfair_lock_unlock(*(v184 + 344));
                        os_unfair_lock_unlock(*(v184 + 376));
                      }

                      v158 = v287 + 1;
                    }

                    while (v287 + 1 != v284);
                    sub_1AFBB780C(v344, sub_1AFBB777C);
                    sub_1AF5D1564(v346);
                  }

                  else
                  {
                    sub_1AFBB780C(v344, sub_1AFBB777C);
                  }

                  sub_1AF5D1564(v346);
                }

                else
                {
                  sub_1AFBB780C(v344, sub_1AFBB777C);
                }
              }

              v55 = v279;
              v148 = v280;
              v149 = v271;
            }

            ++v148;
          }

          while (v148 != v149);
          goto LABEL_168;
        }
      }

      sub_1AF630994(v263, &v350, v363);
      sub_1AF62D29C(v276);
      ecs_stack_allocator_pop_snapshot(v261);
      if (v262)
      {
        os_unfair_lock_unlock(*(v276 + 43));
        os_unfair_lock_unlock(*(v276 + 47));
      }

      v39 = v260 + 1;
      if (v260 + 1 == v259)
      {
        sub_1AF5D1564(v332);
        sub_1AF5D1564(v332);
        v5 = v269;
        break;
      }
    }
  }

LABEL_173:
  if (v322.f32[0] > 0.0)
  {
    v239 = v37 * v322.f32[0];
    v240 = sub_1AF615168();
    MEMORY[0x1EEE9AC00](v240, v241);
    v247[2] = 1;
    v247[3] = v19;
    v247[4] = v12;
    v248 = v239;
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    if (qword_1ED731058 != -1)
    {
      swift_once();
    }

    v242 = swift_allocObject();
    *(v242 + 16) = sub_1AFBB786C;
    *(v242 + 24) = v247;
    v243 = swift_allocObject();
    *(v243 + 16) = sub_1AFBB787C;
    *(v243 + 24) = v242;
    MEMORY[0x1EEE9AC00](v243, v244);

    sub_1AFDFDAE8();

    swift_isEscapingClosureAtFileLocation();
  }

  j_nullsub_106_12();
  v3 = v252;
  if ((v250 & 1) == 0)
  {
    j_nullsub_106_12();
    if ((v251 & 1) == 0)
    {
      j_nullsub_106_12();
      if ((v249 & 0x100000000) == 0)
      {
        j_nullsub_106_12();
        if ((v249 & 1) == 0)
        {
          j_nullsub_106_12();
          j_nullsub_106_12();
        }
      }
    }
  }

LABEL_184:
  if (v321.u8[9] != 1 || v321.f32[3] <= 0.0)
  {
    goto LABEL_187;
  }

  v245 = *(v3 + 13);
  v304 = *(v3 + 11);
  v305 = v245;
  *&v306 = v3[15];
  sub_1AF5C9174(&v295);
  v299 = v295;
  v300 = v296;
  v301.i64[0] = v297;
  v317 = v323;
  v318 = v324;
  v319 = v325;
  LOBYTE(v320) = v326;
  v315 = v321;
  v316 = v322;

  sub_1AFBB4A98(&v299, v5, &v315);

  sub_1AFBB780C(&v295, sub_1AFA0D2A0);
  sub_1AFBB780C(&v295, sub_1AFA0D2A0);
LABEL_189:
  v311 = v323;
  v312 = v324;
  v313 = v325;
  LOBYTE(v314) = v326;
  v309 = v321;
  v310 = v322;
  return sub_1AF598838(&v309);
}

uint64_t sub_1AFBB71D0(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[1];

  sub_1AF3D0664(v3, v47);

  if (v47[0] == 2)
  {
    v4 = 0;
    LODWORD(v5) = -1;
  }

  else if ((v47[0] & 1) == 0 || (v4 = *&v47[8], v5 = HIDWORD(*v47), (*&v47[24] & 0x100) == 0) && (v47[24] & 1) == 0)
  {
  }

  if (v5 == -1 && !v4)
  {
    sub_1AF3C9244(v3, v47);
    if (v49)
    {
      v6 = -1;
    }

    else
    {
      v6 = 0;
    }

    v7 = vdupq_n_s32(v6);
    v8 = vbslq_s8(v7, xmmword_1AFE20150, *v47);
    v9 = vbslq_s8(v7, xmmword_1AFE20160, *&v47[16]);
    v10 = vbslq_s8(v7, xmmword_1AFE20180, *&v47[32]);
    v11 = vbslq_s8(v7, xmmword_1AFE201A0, v48);
    v12 = vmulq_f32(v8, v8);
    *&v13 = v12.f32[2] + vaddv_f32(*v12.f32);
    *v12.f32 = vrsqrte_f32(v13);
    *v12.f32 = vmul_f32(*v12.f32, vrsqrts_f32(v13, vmul_f32(*v12.f32, *v12.f32)));
    v14 = vmulq_n_f32(v8, vmul_f32(*v12.f32, vrsqrts_f32(v13, vmul_f32(*v12.f32, *v12.f32))).f32[0]);
    v14.i32[3] = v8.i32[3];
    v15 = vmulq_f32(v9, v9);
    v8.f32[0] = v15.f32[2] + vaddv_f32(*v15.f32);
    *v15.f32 = vrsqrte_f32(v8.u32[0]);
    *v15.f32 = vmul_f32(*v15.f32, vrsqrts_f32(v8.u32[0], vmul_f32(*v15.f32, *v15.f32)));
    v16 = vmulq_n_f32(v9, vmul_f32(*v15.f32, vrsqrts_f32(v8.u32[0], vmul_f32(*v15.f32, *v15.f32))).f32[0]);
    v16.i32[3] = v9.i32[3];
    v38 = v14;
    v39 = v16;
    v17 = vmulq_f32(v10, v10);
    *v7.i32 = v17.f32[2] + vaddv_f32(*v17.f32);
    *v17.f32 = vrsqrte_f32(v7.u32[0]);
    *v17.f32 = vmul_f32(*v17.f32, vrsqrts_f32(v7.u32[0], vmul_f32(*v17.f32, *v17.f32)));
    v18 = vmulq_n_f32(v10, vmul_f32(*v17.f32, vrsqrts_f32(v7.u32[0], vmul_f32(*v17.f32, *v17.f32))).f32[0]);
    v18.i32[3] = v10.i32[3];
    v40 = v18;
    v41 = v11;
    sub_1AF6A6ACC(xmmword_1AFE208C0);
  }

  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v53 = qword_1ED73B840;
  v54 = 0;
  v55 = 2;
  v56 = 0;
  v57 = 2;
  v58 = 0;
  sub_1AF8D6AD0(1, 1, 1, v44);
  sub_1AFA1CF6C();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1AFE431C0;
  *(v20 + 56) = &type metadata for EmitterReference;
  *(v20 + 64) = &off_1F2563D20;
  *(v20 + 32) = v5;
  v21 = v20 + 32;
  *(v20 + 36) = v4;
  sub_1AF5FDBF0(v45);
  sub_1AFBB780C(v44, sub_1AFBB777C);
  swift_setDeallocating();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v21);
  swift_deallocClassInstance();
  v51[0] = v45[0];
  v51[1] = v45[1];
  v52 = v46;
  sub_1AF6B06C0(v2, v51, 0x200000000, v47);
  if (!*v47)
  {
    sub_1AFBB780C(v45, sub_1AFBB777C);
  }

  if (v50 <= 0)
  {
    v40 = *&v47[32];
    v41 = v48;
    v42 = v49;
    v43 = v50;
    v38 = *v47;
    v39 = *&v47[16];
    sub_1AF5DD298(&v38, &v35);
    sub_1AFBB780C(v45, sub_1AFBB777C);

    sub_1AF5D1564(v47);
  }

  else
  {
    v22 = v48.i64[1];
    if (v48.i64[1])
    {
      v23 = *(&v49 + 1);
      v34 = *(*(&v49 + 1) + 32);
      v24 = *(v49 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v35 = *v47;
      v36 = *&v47[8];
      v37 = *&v47[24];
      v25 = (*&v47[40] + 40);
      v33 = v24;
      do
      {
        v26 = *(v25 - 3);
        v27 = *(v25 - 2);
        v29 = *(v25 - 1);
        v28 = *v25;
        if (v24)
        {
          v30 = *(v28 + 376);

          os_unfair_lock_lock(v30);
          os_unfair_lock_lock(*(v28 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v34);
        v31 = v23[4];
        v38 = v23[3];
        v39 = v31;
        v40.i64[0] = v23[5].i64[0];
        v32 = *(*(*(*(v28 + 40) + 16) + 32) + 16) + 1;
        v23[3].i64[0] = ecs_stack_allocator_allocate(v23[2].i64[0], 48 * v32, 8);
        v23[3].i64[1] = v32;
        v23[4].i64[1] = 0;
        v23[5].i64[0] = 0;
        v23[4].i64[0] = 0;
        sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v26, v27, v29, v23);
        sub_1AF64B110(&type metadata for Scale1, &off_1F252F788, v26, v27, v29, v23);
        sub_1AF64B110(&type metadata for Velocity, &off_1F2530AF8, v26, v27, v29, v23);
        sub_1AF630994(v23, &v35, &v38);
        sub_1AF62D29C(v28);
        ecs_stack_allocator_pop_snapshot(v34);
        v24 = v33;
        if (v33)
        {
          os_unfair_lock_unlock(*(v28 + 344));
          os_unfair_lock_unlock(*(v28 + 376));
        }

        v25 += 6;
        --v22;
      }

      while (v22);
    }

    sub_1AFBB780C(v45, sub_1AFBB777C);
  }

  return sub_1AF5D1564(v47);
}

void sub_1AFBB777C()
{
  if (!qword_1EB643190)
  {
    v0 = type metadata accessor for Query3();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB643190);
    }
  }
}

uint64_t sub_1AFBB780C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AFBB78E0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1AFDFEA18();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1AFBB7934()
{
  result = qword_1EB6431A0;
  if (!qword_1EB6431A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6431A0);
  }

  return result;
}

uint64_t sub_1AFBB7988(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1AFBB7DC4(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AFBB7A04()
{
  result = qword_1EB6431B8;
  if (!qword_1EB6431B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6431B8);
  }

  return result;
}

unint64_t sub_1AFBB7ABC()
{
  result = qword_1EB6431C8;
  if (!qword_1EB6431C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6431C8);
  }

  return result;
}

unint64_t sub_1AFBB7B14()
{
  result = qword_1EB6431D0;
  if (!qword_1EB6431D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6431D0);
  }

  return result;
}

unint64_t sub_1AFBB7B6C()
{
  result = qword_1EB6431D8;
  if (!qword_1EB6431D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6431D8);
  }

  return result;
}

unint64_t sub_1AFBB7BC4()
{
  result = qword_1EB6431E0;
  if (!qword_1EB6431E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6431E0);
  }

  return result;
}

unint64_t sub_1AFBB7C1C()
{
  result = qword_1EB6431E8;
  if (!qword_1EB6431E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6431E8);
  }

  return result;
}

unint64_t sub_1AFBB7C74()
{
  result = qword_1EB6431F0;
  if (!qword_1EB6431F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6431F0);
  }

  return result;
}

unint64_t sub_1AFBB7CC8()
{
  result = qword_1EB643200;
  if (!qword_1EB643200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643200);
  }

  return result;
}

unint64_t sub_1AFBB7D1C()
{
  result = qword_1EB643210;
  if (!qword_1EB643210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643210);
  }

  return result;
}

unint64_t sub_1AFBB7D70()
{
  result = qword_1EB643220;
  if (!qword_1EB643220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643220);
  }

  return result;
}

void sub_1AFBB7DC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1AFBB7E2C()
{
  result = qword_1EB643230;
  if (!qword_1EB643230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643230);
  }

  return result;
}

unint64_t sub_1AFBB7EC4()
{
  result = qword_1EB643238;
  if (!qword_1EB643238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643238);
  }

  return result;
}

unint64_t sub_1AFBB7F1C()
{
  result = qword_1EB643240;
  if (!qword_1EB643240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643240);
  }

  return result;
}

unint64_t sub_1AFBB7F74()
{
  result = qword_1EB643248;
  if (!qword_1EB643248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643248);
  }

  return result;
}

unint64_t sub_1AFBB7FCC()
{
  result = qword_1EB643250;
  if (!qword_1EB643250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643250);
  }

  return result;
}

unint64_t sub_1AFBB8024()
{
  result = qword_1EB643258;
  if (!qword_1EB643258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643258);
  }

  return result;
}

unint64_t sub_1AFBB807C()
{
  result = qword_1EB643260;
  if (!qword_1EB643260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643260);
  }

  return result;
}

unint64_t sub_1AFBB80D4()
{
  result = qword_1EB643268;
  if (!qword_1EB643268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643268);
  }

  return result;
}

unint64_t sub_1AFBB812C()
{
  result = qword_1EB643270;
  if (!qword_1EB643270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643270);
  }

  return result;
}

uint64_t sub_1AFBB8180(uint64_t a1, int a2, void *a3)
{
  v4 = v3;
  sub_1AFDFF308();

  sub_1AFDFD038();
  MEMORY[0x1B271ACB0](0);
  MEMORY[0x1B271ACB0](0);
  v7 = sub_1AFDFF2E8();
  *&v188 = 0xD00000000000001CLL;
  *(&v188 + 1) = 0x80000001AFF4A570;
  v189 = 0;
  v190 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v191 = MEMORY[0x1E69E7CC0];
  v192 = v7;
  v9 = sub_1AF73BD84(&v188, 0, a2, a3);

  swift_unknownObjectRelease();
  v4[79] = v9;
  sub_1AFDFF308();
  sub_1AFDFD038();
  MEMORY[0x1B271ACB0](0);
  MEMORY[0x1B271ACB0](0);
  *&v183 = 0xD000000000000015;
  *(&v183 + 1) = 0x80000001AFF4A590;
  v184 = 0;
  v185 = 0;
  v186 = v8;
  v187 = sub_1AFDFF2E8();
  v11 = sub_1AF73BD84(&v183, 0, a2, a3);

  swift_unknownObjectRelease();
  v4[80] = v11;
  sub_1AFDFF308();
  sub_1AFDFD038();
  MEMORY[0x1B271ACB0](0);
  MEMORY[0x1B271ACB0](0);
  *&v178 = 0xD00000000000001DLL;
  *(&v178 + 1) = 0x80000001AFF4A5B0;
  v179 = 0;
  v180 = 0;
  v181 = v8;
  v182 = sub_1AFDFF2E8();
  v13 = sub_1AF73BD84(&v178, 0, a2, a3);

  swift_unknownObjectRelease();
  v4[81] = v13;
  sub_1AFDFF308();
  sub_1AFDFD038();
  MEMORY[0x1B271ACB0](0);
  MEMORY[0x1B271ACB0](0);
  *&v173 = 0xD00000000000001ALL;
  *(&v173 + 1) = 0x80000001AFF4A5D0;
  v175 = 0;
  v174 = 0;
  v176 = v8;
  v177 = sub_1AFDFF2E8();
  v15 = sub_1AF73BD84(&v173, 0, a2, a3);

  swift_unknownObjectRelease();
  v4[82] = v15;
  sub_1AFDFF308();
  sub_1AFDFD038();
  MEMORY[0x1B271ACB0](0);
  MEMORY[0x1B271ACB0](0);
  *&v168 = 0xD000000000000020;
  *(&v168 + 1) = 0x80000001AFF4A5F0;
  v170 = 0;
  v169 = 0;
  v171 = v8;
  v172 = sub_1AFDFF2E8();
  v17 = sub_1AF73BD84(&v168, 0, a2, a3);

  swift_unknownObjectRelease();
  v4[83] = v17;
  sub_1AFDFF308();
  sub_1AFDFD038();
  MEMORY[0x1B271ACB0](0);
  MEMORY[0x1B271ACB0](0);
  *&v163 = 0xD000000000000018;
  *(&v163 + 1) = 0x80000001AFF4A620;
  v165 = 0;
  v164 = 0;
  v166 = v8;
  v167 = sub_1AFDFF2E8();
  v19 = sub_1AF73BD84(&v163, 0, a2, a3);

  swift_unknownObjectRelease();
  v4[88] = v19;
  sub_1AFDFF308();
  sub_1AFDFD038();
  MEMORY[0x1B271ACB0](0);
  MEMORY[0x1B271ACB0](0);
  *&v158 = 0xD000000000000015;
  *(&v158 + 1) = 0x80000001AFF4A640;
  v160 = 0;
  v159 = 0;
  v161 = v8;
  v162 = sub_1AFDFF2E8();
  v21 = sub_1AF73BD84(&v158, 0, a2, a3);

  swift_unknownObjectRelease();
  v4[89] = v21;
  sub_1AFDFF308();
  sub_1AFDFD038();
  MEMORY[0x1B271ACB0](0);
  MEMORY[0x1B271ACB0](0);
  *&v153 = 0xD000000000000015;
  *(&v153 + 1) = 0x80000001AFF4A660;
  v155 = 0;
  v154 = 0;
  v156 = v8;
  v157 = sub_1AFDFF2E8();
  v23 = sub_1AF73BD84(&v153, 0, a2, a3);

  swift_unknownObjectRelease();
  v4[91] = v23;
  sub_1AFDFF308();
  sub_1AFDFD038();
  MEMORY[0x1B271ACB0](0);
  MEMORY[0x1B271ACB0](0);
  *&v148 = 0xD000000000000015;
  *(&v148 + 1) = 0x80000001AFF4A680;
  v150 = 0;
  v149 = 0;
  v151 = v8;
  v152 = sub_1AFDFF2E8();
  v25 = sub_1AF73BD84(&v148, 0, a2, a3);

  swift_unknownObjectRelease();
  v4[92] = v25;
  sub_1AFDFF308();
  sub_1AFDFD038();
  MEMORY[0x1B271ACB0](0);
  MEMORY[0x1B271ACB0](0);
  *&v143 = 0xD00000000000001DLL;
  *(&v143 + 1) = 0x80000001AFF4A6A0;
  v145 = 0;
  v144 = 0;
  v146 = v8;
  v147 = sub_1AFDFF2E8();
  v27 = sub_1AF73BD84(&v143, 0, a2, a3);

  swift_unknownObjectRelease();
  v4[93] = v27;
  sub_1AFDFF308();
  sub_1AFDFD038();
  MEMORY[0x1B271ACB0](0);
  MEMORY[0x1B271ACB0](0);
  *&v138 = 0xD000000000000015;
  *(&v138 + 1) = 0x80000001AFF4A6C0;
  v140 = 0;
  v139 = 0;
  v141 = v8;
  v142 = sub_1AFDFF2E8();
  v29 = sub_1AF73BD84(&v138, 0, a2, a3);

  swift_unknownObjectRelease();
  v4[94] = v29;
  sub_1AFDFF308();
  sub_1AFDFD038();
  MEMORY[0x1B271ACB0](0);
  MEMORY[0x1B271ACB0](0);
  *&v133 = 0xD00000000000001DLL;
  *(&v133 + 1) = 0x80000001AFF4A6E0;
  v135 = 0;
  v134 = 0;
  v136 = v8;
  v137 = sub_1AFDFF2E8();
  v31 = sub_1AF73BD84(&v133, 0, a2, a3);

  swift_unknownObjectRelease();
  v4[95] = v31;
  sub_1AFDFF308();
  sub_1AFDFD038();
  MEMORY[0x1B271ACB0](0);
  MEMORY[0x1B271ACB0](0);
  *&v128 = 0xD000000000000010;
  *(&v128 + 1) = 0x80000001AFF4A700;
  v130 = 0;
  v129 = 0;
  v131 = v8;
  v132 = sub_1AFDFF2E8();
  v33 = sub_1AF73BD84(&v128, 0, a2, a3);

  swift_unknownObjectRelease();
  v4[96] = v33;
  sub_1AFDFF308();
  sub_1AFDFD038();
  MEMORY[0x1B271ACB0](0);
  MEMORY[0x1B271ACB0](0);
  *&v123 = 0xD00000000000001DLL;
  *(&v123 + 1) = 0x80000001AFF4A720;
  v125 = 0;
  v124 = 0;
  v126 = v8;
  v127 = sub_1AFDFF2E8();
  v35 = sub_1AF73BD84(&v123, 0, a2, a3);

  swift_unknownObjectRelease();
  v4[97] = v35;
  sub_1AFDFF308();
  sub_1AFDFD038();
  MEMORY[0x1B271ACB0](0);
  MEMORY[0x1B271ACB0](0);
  *&v118 = 0xD000000000000014;
  *(&v118 + 1) = 0x80000001AFF4A740;
  v119 = 0;
  v120 = 0;
  v121 = v8;
  v122 = sub_1AFDFF2E8();
  v37 = sub_1AF73BD84(&v118, 0, a2, a3);

  swift_unknownObjectRelease();
  v4[84] = v37;
  sub_1AFDFF308();
  sub_1AFDFD038();
  MEMORY[0x1B271ACB0](0);
  MEMORY[0x1B271ACB0](0);
  *&v113 = 0xD000000000000015;
  *(&v113 + 1) = 0x80000001AFF4A760;
  v114 = 0;
  v115 = 0;
  v116 = v8;
  v117 = sub_1AFDFF2E8();
  v39 = sub_1AF73BD84(&v113, 0, a2, a3);

  swift_unknownObjectRelease();
  v4[85] = v39;
  sub_1AFDFF308();
  sub_1AFDFD038();
  MEMORY[0x1B271ACB0](0);
  MEMORY[0x1B271ACB0](0);
  *&v108 = 0xD00000000000001BLL;
  *(&v108 + 1) = 0x80000001AFF4A780;
  v109 = 0;
  v110 = 0;
  v111 = v8;
  v112 = sub_1AFDFF2E8();
  v41 = sub_1AF73BD84(&v108, 0, a2, a3);

  swift_unknownObjectRelease();
  v4[86] = v41;
  sub_1AFDFF308();
  sub_1AFDFD038();
  MEMORY[0x1B271ACB0](0);
  MEMORY[0x1B271ACB0](0);
  *&v103 = 0xD00000000000002FLL;
  *(&v103 + 1) = 0x80000001AFF4A7A0;
  v104 = 0;
  v105 = 0;
  v106 = v8;
  v107 = sub_1AFDFF2E8();
  v43 = sub_1AF73BD84(&v103, 0, a2, a3);

  swift_unknownObjectRelease();
  v4[87] = v43;
  sub_1AFDFF308();
  sub_1AFDFD038();
  MEMORY[0x1B271ACB0](0);
  MEMORY[0x1B271ACB0](0);
  *&v98 = 0xD00000000000001CLL;
  *(&v98 + 1) = 0x80000001AFF4A7D0;
  v99 = 0;
  v100 = 0;
  v101 = v8;
  v102 = sub_1AFDFF2E8();
  v45 = sub_1AF73BD84(&v98, 0, a2, a3);

  swift_unknownObjectRelease();
  v4[90] = v45;
  sub_1AFDFF308();
  sub_1AFDFD038();
  MEMORY[0x1B271ACB0](0);
  MEMORY[0x1B271ACB0](0);
  strcpy(&v93, "cull_particles");
  HIBYTE(v93) = -18;
  v94 = 0;
  v95 = 0;
  v96 = v8;
  v97 = sub_1AFDFF2E8();
  v47 = sub_1AF73BD84(&v93, 0, a2, a3);

  swift_unknownObjectRelease();
  v4[98] = v47;
  sub_1AFDFF308();
  sub_1AFDFD038();
  MEMORY[0x1B271ACB0](0);
  MEMORY[0x1B271ACB0](0);
  *&v88 = 0xD000000000000014;
  *(&v88 + 1) = 0x80000001AFF4A7F0;
  v89 = 0;
  v90 = 0;
  v91 = v8;
  v92 = sub_1AFDFF2E8();
  v49 = sub_1AF73BD84(&v88, 0, a2, a3);

  swift_unknownObjectRelease();
  v4[99] = v49;
  sub_1AFDFF308();
  sub_1AFDFD038();
  MEMORY[0x1B271ACB0](0);
  MEMORY[0x1B271ACB0](0);
  strcpy(&v83, "generate_keys");
  HIWORD(v83) = -4864;
  v84 = 0;
  v85 = 0;
  v86 = v8;
  v87 = sub_1AFDFF2E8();
  v51 = sub_1AF73BD84(&v83, 0, a2, a3);

  swift_unknownObjectRelease();
  v4[100] = v51;
  sub_1AFDFF308();
  sub_1AFDFD038();
  MEMORY[0x1B271ACB0](0);
  MEMORY[0x1B271ACB0](0);
  *&v78 = 0xD000000000000016;
  *(&v78 + 1) = 0x80000001AFF4A810;
  v79 = 0;
  v80 = 0;
  v81 = v8;
  v82 = sub_1AFDFF2E8();
  v53 = sub_1AF73BD84(&v78, 0, a2, a3);

  swift_unknownObjectRelease();
  v4[101] = v53;
  sub_1AFDFF308();
  sub_1AFDFD038();
  MEMORY[0x1B271ACB0](0);
  MEMORY[0x1B271ACB0](0);
  *&v73 = 0xD000000000000011;
  *(&v73 + 1) = 0x80000001AFF4A830;
  v74 = 0;
  v75 = 0;
  v76 = v8;
  v77 = sub_1AFDFF2E8();
  v55 = sub_1AF73BD84(&v73, 0, a2, a3);

  swift_unknownObjectRelease();
  v4[102] = v55;
  sub_1AFDFF308();
  sub_1AFDFD038();
  MEMORY[0x1B271ACB0](0);
  MEMORY[0x1B271ACB0](0);
  *&v68 = 0xD000000000000012;
  *(&v68 + 1) = 0x80000001AFF4A850;
  v69 = 0;
  v70 = 0;
  v71 = v8;
  v72 = sub_1AFDFF2E8();
  v57 = sub_1AF73BD84(&v68, 0, a2, a3);

  swift_unknownObjectRelease();
  v4[103] = v57;
  sub_1AFDFF308();
  sub_1AFDFD038();
  MEMORY[0x1B271ACB0](0);
  MEMORY[0x1B271ACB0](0);
  *&v63 = 0xD000000000000012;
  *(&v63 + 1) = 0x80000001AFF4A870;
  v64 = 0;
  v65 = 0;
  v66 = v8;
  v67 = sub_1AFDFF2E8();
  v59 = sub_1AF73BD84(&v63, 0, a2, a3);
  v61 = v60;

  result = swift_unknownObjectRelease();
  v4[104] = v59;
  return result;
}

uint64_t sub_1AFBB908C(_DWORD *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, char a9)
{
  v12 = a3;
  v14 = *(a6 + 16);
  MinConstantBufferAlignment = CFXGPUDeviceGetMinConstantBufferAlignment(v14, a2, a3, a4);
  v16 = (MinConstantBufferAlignment + 991) & -MinConstantBufferAlignment;
  v20 = CFXGPUDeviceGetMinConstantBufferAlignment(v14, v17, v18, v19);
  bzero(a1, (v20 + 279) & -v20);
  *a1 = 0;
  *(a1 + 2) = 0;
  *(a1 + 3) = v16;
  if (a5)
  {
    v21 = a5;
  }

  else
  {
    v21 = v16;
  }

  if (sub_1AF776050(0x1Au, v12) & 1) != 0 && (a7)
  {
    v66 = a8;
    a1[62] = v16;
    a1[63] = 0x40000;
    v25 = CFXGPUDeviceGetMinConstantBufferAlignment(v14, v22, v23, v24);
    v29 = 4 * a4 - 1;
    v30 = v29 + v16;
    v31 = (v29 + v16 + v25) & -v25;
    if (a5)
    {
      a1[64] = v31;
      a1[65] = 0x40000;
      v21 = a5;
    }

    else
    {
      v32 = CFXGPUDeviceGetMinConstantBufferAlignment(v14, v26, v27, v28);
      v33 = (v30 + v32) & -v32;
      a1[64] = v31;
      a1[65] = 0x40000;
      v37 = CFXGPUDeviceGetMinConstantBufferAlignment(v14, v34, v35, v36);
      v21 = (v29 + v37 + v33) & -v37;
    }

    v38 = CFXGPUDeviceGetMinConstantBufferAlignment(v14, v26, v27, v28);
    v16 = (v29 + v31 + v38) & -v38;
    a8 = v66;
  }

  if (a9 & 1) == 0 && (a7)
  {
    a1[66] = v16;
    a1[67] = 0x40000;
    v39 = 4 * a8;
    v40 = CFXGPUDeviceGetMinConstantBufferAlignment(v14, v22, v23, v24);
    v44 = (v39 + v40 + 0xFFFFFFFF + v16) & -v40;
    if (a5)
    {
      a1[68] = (v39 + v40 - 1 + v16) & -v40;
      a1[69] = 0x40000;
    }

    else
    {
      v45 = CFXGPUDeviceGetMinConstantBufferAlignment(v14, v41, v42, v43);
      v46 = (v39 + v21 + v45 - 1) & -v45;
      a1[68] = v44;
      a1[69] = 0x40000;
      v50 = CFXGPUDeviceGetMinConstantBufferAlignment(v14, v47, v48, v49);
      v21 = (v46 + 4 * a4 + v50 - 1) & -v50;
    }

    CFXGPUDeviceGetMinConstantBufferAlignment(v14, v41, v42, v43);
  }

  for (; v12; v21 = (v21 + v60 * a4 + v64 - 1) & -v64)
  {
    v51 = __clz(__rbit64(v12));
    v52 = sub_1AFB79288(v51);
    if (v52 == 28)
    {
      break;
    }

    v53 = v52;
    v54 = ((1 << v51) & v12) != 0 ? ~(1 << v51) : -1;
    v12 &= v54;
    v55 = sub_1AFB79138(v52);
    v56 = sub_1AFB79124(v53);
    v57 = word_1AFEA2586[v53];
    v58 = sub_1AF64118C(v55);
    v59 = &a1[2 * v56];
    *v59 = v21;
    *(v59 + 2) = v57;
    *(v59 + 3) = v58;
    v60 = sub_1AF64118C(v55);
    v64 = CFXGPUDeviceGetMinConstantBufferAlignment(v14, v61, v62, v63);
  }

  return v21;
}

uint64_t sub_1AFBB9330(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2[79];
  swift_getObjectType();
  swift_unknownObjectRetain();
  LODWORD(v6) = sub_1AF471B10();
  v7 = *(a3 + 248);
  DWORD1(v6) = v8;
  *(&v6 + 1) = v9;
  v16 = v6;
  v10 = CFXBufferAllocatorPerFrameAllocateWithBytes(v7, &v16, 0x10uLL);
  LODWORD(a3) = v11;
  ObjectType = swift_getObjectType();
  sub_1AF6F34C4(v10, a3, 0, 1, ObjectType);
  v14 = a2[53];
  v13 = a2[54];
  sub_1AF6F34C4(v14, v13, 0, 6, ObjectType);
  sub_1AF6F458C(v14, v13 + 96, 0, 7);
  sub_1AF6F466C(v5);
  return swift_unknownObjectRelease();
}

uint64_t sub_1AFBB9464(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5, uint64_t a6)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    [swift_unknownObjectRetain() storageMode];
    swift_unknownObjectRelease();
    v12 = [swift_unknownObjectRetain() contents];
    v13 = a3;
    LODWORD(v12) = *&v12[a4];
    v14 = swift_allocObject();
    swift_weakInit();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = a5;
    *(v15 + 32) = a6;
    *(v15 + 40) = v12;
    v16 = v11 + OBJC_IVAR____TtC3VFX13EntityManager_nextFrameBlocksLock;
    v17 = *(v11 + OBJC_IVAR____TtC3VFX13EntityManager_nextFrameBlocksLock + 24);

    os_unfair_lock_lock(v17);
    v18 = swift_allocObject();
    *(v18 + 16) = sub_1AFBBD7EC;
    *(v18 + 24) = v15;
    v19 = OBJC_IVAR____TtC3VFX13EntityManager_nextFrameBlocks;
    v20 = *(v11 + OBJC_IVAR____TtC3VFX13EntityManager_nextFrameBlocks);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v11 + v19) = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_1AF4221DC(0, v20[2] + 1, 1, v20);
      *(v11 + v19) = v20;
    }

    v23 = v20[2];
    v22 = v20[3];
    if (v23 >= v22 >> 1)
    {
      v20 = sub_1AF4221DC(v22 > 1, v23 + 1, 1, v20);
    }

    v20[2] = v23 + 1;
    v24 = &v20[2 * v23];
    v24[4] = sub_1AF464154;
    v24[5] = v18;
    *(v11 + v19) = v20;
    os_unfair_lock_unlock(*(v16 + 24));
  }

  return result;
}

uint64_t sub_1AFBB967C(uint64_t a1, unint64_t a2, uint64_t a3, unsigned int a4)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a2 != 0xFFFFFFFF && (a2 & 0x80000000) == 0 && a2 < *(result + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      v8 = (*(result + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a2);
      v9 = *(v8 + 2);
      if (HIDWORD(a2) == 0xFFFFFFFF || v8[2] == HIDWORD(a2))
      {
        v10 = *(*(result + 144) + 8 * *v8 + 32);
        v11 = *(v10 + 48);
        v12 = (v11 + 32);
        v13 = *(v11 + 16) + 1;
        while (--v13)
        {
          v14 = v12 + 5;
          v15 = *v12;
          v12 += 5;
          if (v15 == &type metadata for EmitterRuntime)
          {
            if (*(result + OBJC_IVAR____TtC3VFX13EntityManager_clock + 8) >= a3)
            {
              v16 = &(*(v14 - 2))[53 * v9] + *(v10 + 128);
              *(v16 + 528) -= a4;
            }

            break;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AFBB97B4(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = &type metadata for Color;
    v5 = &type metadata for TransientOriginScale;
    do
    {
      v6 = __clz(__rbit64(v3));
      if (((1 << v6) & v3) != 0)
      {
        v7 = ~(1 << v6);
      }

      else
      {
        v7 = -1;
      }

      v8 = sub_1AFB79288(v6);
      if (v8 == 28)
      {
        break;
      }

      v9 = sub_1AFB79138(v8);
      if (v9 != v4 || (v14 = *(a2 + 16), v15 = *(v14 + 128), !*(v15 + 16)) || (v16 = v4, v17 = v5, v18 = v9, v19 = sub_1AF449CB8(&type metadata for TransientOriginColor), v9 = v18, v5 = v17, v4 = v16, (v20 & 1) == 0) || *(*(v14 + 24) + 16 * *(*(v15 + 56) + 8 * v19) + 32) != &type metadata for TransientOriginColor)
      {
        if (v9 != &type metadata for Scale3 && v9 != &type metadata for Scale1 && v9 != &type metadata for Scale2)
        {
          continue;
        }

        v10 = *(a2 + 16);
        v11 = *(v10 + 128);
        if (!*(v11 + 16))
        {
          continue;
        }

        v12 = sub_1AF449CB8(v5);
        if ((v13 & 1) == 0 || *(*(v10 + 24) + 16 * *(*(v11 + 56) + 8 * v12) + 32) != v5)
        {
          continue;
        }
      }

      return 1;
      v3 &= v7;
    }

    while (v3);
    return 0;
  }

  return result;
}

uint64_t sub_1AFBB9954(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = result;

    sub_1AFB93E58();
    v7 = v6;
    v8 = *(v5 + 32);

    sub_1AF68A8E0(v5, v9);
    sub_1AF689A84(v8, a2, a3, a2, v5, v7);
    sub_1AF688940(v5);
  }

  return result;
}

uint64_t sub_1AFBB9A1C(uint64_t result)
{
  if (*(result + 448) >= 1)
  {
    v2 = result;
    result = swift_weakLoadStrong();
    if (result)
    {
      v3 = result;

      v5 = sub_1AFB7A4DC(v4);
      if (sub_1AFBB97B4(v5, v3))
      {

        v6 = sub_1AF6F4158();
        if (v1)
        {
          result = swift_unexpectedError();
          __break(1u);
        }

        else
        {
          v7 = v6;
          swift_unknownObjectRetain();
          v8 = sub_1AFDFCEC8();
          [v7 pushDebugGroup_];

          sub_1AF6F3BD8();
          sub_1AFBBD824(v7, v2);
          swift_unknownObjectRelease();
          [v7 popDebugGroup];

          return swift_unknownObjectRelease();
        }
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_1AFBB9B7C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(result + 32);
    MEMORY[0x1EEE9AC00](result, a2);

    sub_1AFCBF008(v3, sub_1AFBBD7FC);
  }

  return result;
}

uint64_t sub_1AFBB9C58()
{
  sub_1AF0FB8EC(*(v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_1AFBB9CB4()
{
  result = swift_allocObject();
  *(result + 16) = "ParticleGPUDownload";
  *(result + 24) = 19;
  *(result + 32) = 2;
  *(result + 40) = 0;
  *(result + 48) = 0;
  return result;
}

uint64_t sub_1AFBB9CF4(uint64_t a1, unint64_t a2, uint64_t a3, uint32x4_t *a4, uint64_t a5, uint64_t a6)
{
  v212 = *MEMORY[0x1E69E9840];
  v12 = sub_1AFDFEDC8();
  v185 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v18 = &v169 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5)
  {
    v19 = 1 << -__clz(a5 - 1);
  }

  else
  {
    v19 = 1;
  }

  if (a5 + 4095 <= 0)
  {
    v20 = -(-(a5 + 4095) & 0xFFF);
  }

  else
  {
    v20 = (a5 + 4095) & 0xFFF;
  }

  if (a5 + 4095 - v20 < v19)
  {
    v19 = a5 + 4095 - v20;
  }

  v186 = v19;
  v182 = a6;
  v21 = *(a6 + 16);
  MinConstantBufferAlignment = CFXGPUDeviceGetMinConstantBufferAlignment(v21, v14, v15, v16);
  v26 = a4[36].u8[0];
  v27.i32[0] = a4[36].i32[1];
  v28 = a4[37];
  v174 = MinConstantBufferAlignment;
  v177 = a4;
  v176 = v27;
  v187 = v28;
  if (v26 != 1)
  {
    v38 = a3;
    v39 = 0;
    v175 = 0u;
    goto LABEL_48;
  }

  if (a2 == 0xFFFFFFFF || (a2 & 0x80000000) != 0 || a2 >= *(a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) || (v29 = (*(a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a2), v30 = *(v29 + 2), HIDWORD(a2) != 0xFFFFFFFF) && v29[2] != HIDWORD(a2))
  {
LABEL_99:
    v193 = 0;
    v194 = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v168 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v168);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF2EA30);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    sub_1AFDFE518();
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    goto LABEL_100;
  }

  v31 = *(*(a1 + 144) + 8 * *v29 + 32);
  v32 = *(v31 + 48);
  v33 = (v32 + 32);
  v34 = *(v32 + 16) + 1;
  do
  {
    if (!--v34)
    {
      goto LABEL_99;
    }

    v35 = v33 + 5;
    v36 = *v33;
    v33 += 5;
  }

  while (v36 != &type metadata for EmitterDescription);
  v37 = *(v35 - 2) + 104 * v30 + *(v31 + 128);
  if (*(v37 + 72) == 1)
  {
    if ((*(v37 + 58) & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_23:

    goto LABEL_45;
  }

  if (*(v37 + 58))
  {
    goto LABEL_23;
  }

  if (!*(v37 + 48))
  {
    sub_1AF3CCD70(a2, v209);
    goto LABEL_26;
  }

LABEL_25:
  sub_1AF3C99B4(a2, v209);
LABEL_26:
  v41 = v209[0];
  v40 = v209[1];
  if (v211)
  {
    v40 = 0x3F80000000000000;
    v42 = -1;
  }

  else
  {
    v42 = 0;
  }

  v43 = vbslq_s8(vdupq_n_s32(v42), xmmword_1AFE52680, v210);
  v44 = vcltzq_f32(v43);
  if (v211)
  {
    v41 = 0;
  }

  if ((v44.i32[2] | v44.i32[1] | v44.i32[0]) < 0)
  {
LABEL_43:
    v41 = 0;
    v46 = 0x3F0000003F000000;
    v40 = 0x3F80000000000000;
    v47 = 1056964608;
    goto LABEL_44;
  }

  v45 = 0;
  v47 = v43.i64[1];
  v46 = v43.i64[0];
  v48 = 0uLL;
  while (1)
  {
    v190 = xmmword_1AFEA24B0;
    v49 = *(&v190 & 0xFFFFFFFFFFFFFFF3 | (4 * (v45 & 3)));
    v191 = v43;
    if (v49 >= *(&v191 & 0xFFFFFFFFFFFFFFF3 | (4 * (v45 & 3))))
    {
      break;
    }

    v188 = v48;
    *(&v188 & 0xFFFFFFFFFFFFFFF3 | (4 * (v45 & 3))) = -1;
    v48 = v188;
    if (v45 == 2)
    {
      goto LABEL_38;
    }

LABEL_37:
    ++v45;
  }

  v189 = v48;
  *(&v189 & 0xFFFFFFFFFFFFFFF3 | (4 * (v45 & 3))) = 0;
  v48 = v189;
  if (v45 != 2)
  {
    goto LABEL_37;
  }

LABEL_38:
  v50 = v48;
  if (SDWORD1(v48) < v48)
  {
    v50 = DWORD1(v48);
  }

  if (SDWORD2(v48) < v50)
  {
    v50 = DWORD2(v48);
  }

  if (v50 < 0)
  {
    goto LABEL_43;
  }

LABEL_44:
  v51.i64[0] = v41;
  v51.i64[1] = v40;
  v52.i64[0] = v46;
  v52.i64[1] = v47;
  v53 = vsubq_f32(vaddq_f32(v51, v52), vsubq_f32(v51, v52));
  v54.n128_u64[0] = vdivq_f32(v53, vdupq_lane_s32(*v176.i8, 0)).u64[0];
  v54.n128_f32[2] = v53.f32[2] / *v176.i32;
  v54.n128_u32[3] = 0;
  v184 = v54;
  (*(v185 + 104))(v18, *MEMORY[0x1E69E7020], v12);

  sub_1AF5F4384(v18, v184);
  v55 = v187;
  v55.i32[3] = 0;
  v56.i64[0] = 0x100000001;
  v56.i64[1] = 0x100000001;
  v57.i64[0] = vaddq_s32(v57, v56).u64[0];
  v57.i64[1] = (v57.i32[2] + 1);
  v187 = vminq_u32(v55, v57);
LABEL_45:
  v58 = 0uLL;
  if ((a4[3].i8[1] & 1) == 0)
  {
    sub_1AF3C9244(a2, v207);
    v58 = v208;
  }

  v175 = v58;
  v38 = a3;

  v59 = v187;
  a4[38] = v187;
  v39 = (v59.i32[0] * v59.i32[1] * v59.i32[2]);
LABEL_48:
  v60 = v26;
  v61 = v26 ^ 1;
  v62 = CFXGPUDeviceGetMinConstantBufferAlignment(v21, v23, v24, v25);
  v63 = (v62 + 279) & -v62;
  v64 = v186;
  *&v171 = 4 * v186;
  v184.n128_u64[0] = v21;
  v172 = CFXGPUDeviceGetMinConstantBufferAlignment(v21, v65, v66, v67);
  v68 = v182;
  v69 = *(v182 + 248);
  CFXBufferAllocatorPerFrameAllocateWithLength(v69, v63);
  v181 = v70;
  v179 = v71;
  v72 = sub_1AF6F2CC8(v70, v71);
  v73 = v38;
  v75 = sub_1AFBB908C(v72, v74, v38, v64, 0, v68, 1, v39, v61);
  v183 = v69;
  v185 = v63;
  CFXBufferAllocatorPerFrameAllocateWithLength(v69, v63);
  v180 = v76;
  v178 = v77;
  v78 = sub_1AF6F2CC8(v76, v77);
  v80 = sub_1AFBB908C(v78, v79, v73, v64, v75, v68, 1, v39, v61);
  if ((sub_1AF776050(0x1Au, v73) & 1) == 0)
  {
    v173 = 0;
    v170 = 0;
    LODWORD(v83) = v186;
    v81 = v60;
    v84 = v177;
    v82 = v187;
    goto LABEL_52;
  }

  v81 = v60;
  v82 = v187;
  if (v177[43])
  {
    v173 = 0;
    v170 = 0;
    LODWORD(v83) = v186;
    v84 = v177;
    goto LABEL_52;
  }

  v83 = v186;
  v84 = v177;
  if (!v177[53])
  {
    v86 = v171;
    CFXBufferAllocatorPerFrameAllocateWithLength(v183, v171);
    v173 = v153;
    v170 = v154;
    v155 = sub_1AF6F2CC8(v153, v154);
    v85 = v172;
    if (v83)
    {
      if (v83 < 8)
      {
        LODWORD(v156) = 0;
        v157 = v83;
LABEL_93:
        v82 = v187;
        do
        {
          *&v155[4 * v157 - 4] = v156;
          LODWORD(v156) = v156 + 1;
          --v157;
        }

        while (v157);
        goto LABEL_53;
      }

      v156 = v83 & 0xFFFFFFFFFFFFFFF8;
      v157 = v83 & 7;
      v158 = &v155[4 * v83 - 16];
      v159 = xmmword_1AFE202E0;
      v160.i64[0] = 0x400000004;
      v160.i64[1] = 0x400000004;
      v161.i64[0] = 0x800000008;
      v161.i64[1] = 0x800000008;
      v162 = v83 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v163 = vrev64q_s32(v159);
        v164 = vrev64q_s32(vaddq_s32(v159, v160));
        v158[-1] = vextq_s8(v164, v164, 8uLL);
        *v158 = vextq_s8(v163, v163, 8uLL);
        v159 = vaddq_s32(v159, v161);
        v158 -= 2;
        v162 -= 8;
      }

      while (v162);
      if (v83 != v156)
      {
        goto LABEL_93;
      }
    }

    v82 = v187;
    goto LABEL_53;
  }

  v173 = 0;
  v170 = 0;
LABEL_52:
  v85 = v172;
  v86 = v171;
LABEL_53:
  if (v81)
  {
    LODWORD(v87) = 1;
    DWORD1(v87) = v82.i32[0];
    *(&v87 + 1) = (v82.i32[0] * v82.i32[1]);
    v171 = v87;
    v187 = v82;
  }

  else
  {
    v82.i64[0] = 0;
    v176 = v82;
    v175 = 0u;
    v187 = 0u;
    v171 = 0u;
  }

  v172 = v86 + v85 - 1;
  v88 = -v85;
  bzero(v197, 0x364uLL);
  memset(v199, 0, sizeof(v199));
  v203 = 0;
  v204 = 0;
  v193 = 0;
  v194 = 0;
  v195 = 0;
  v196 = v83;
  v197[217] = v83;
  v198 = v81;
  v200 = v187;
  v201 = v175;
  v202 = v176.i32[0];
  v206 = 0u;
  v205 = v171;
  v176.i64[0] = CFXBufferAllocatorPerFrameAllocateWithBytes(v183, &v193, 0x3E0uLL);
  *&v175 = v89;
  v90 = v184.n128_u64[0];
  v187.i64[0] = 2 * v185;
  BufferWithLength = CFXGPUDeviceCreateBufferWithLength(v184.n128_i64[0], (2 * v185), 32);
  if (BufferWithLength)
  {
    v92 = BufferWithLength;
    v93 = sub_1AFDFCEC8();
    [v92 0x1FB6776F8];

    v94 = v80;
  }

  else
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v193 = 0;
    v194 = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF290F0);
    MEMORY[0x1B2718AE0](0x656C636974726170, 0xEE00726564616548);
    MEMORY[0x1B2718AE0](0x6E656C20666F2022, 0xEC00000020687467);
    v192 = v187.i64[0];
    v95 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v95);

    MEMORY[0x1B2718AE0](0x706F206874697720, 0xEE0020736E6F6974);
    v192 = 32;
    type metadata accessor for MTLResourceOptions(0);
    sub_1AFDFE458();
    v97 = v193;
    v96 = v194;
    v98 = sub_1AFDFDA08();
    v94 = v80;
    if (qword_1ED731058 != -1)
    {
      v165 = v98;
      swift_once();
      v98 = v165;
    }

    v193 = 0;
    sub_1AF0D4F18(v98, &v193, v97, v96);

    v92 = 0;
    v187.i64[0] = 0;
    v90 = v184.n128_u64[0];
  }

  v99 = (v172 & v88);
  v100 = CFXGPUDeviceCreateBufferWithLength(v90, v94, 32);
  if (v100)
  {
    v101 = v100;
    v102 = sub_1AFDFCEC8();
    [v101 setLabel_];
  }

  else
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v193 = 0;
    v194 = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF290F0);
    MEMORY[0x1B2718AE0](0x656C636974726170, 0xEC00000061746144);
    MEMORY[0x1B2718AE0](0x6E656C20666F2022, 0xEC00000020687467);
    v192 = v94;
    v103 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v103);

    MEMORY[0x1B2718AE0](0x706F206874697720, 0xEE0020736E6F6974);
    v192 = 32;
    type metadata accessor for MTLResourceOptions(0);
    sub_1AFDFE458();
    v105 = v193;
    v104 = v194;
    v106 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v166 = v106;
      swift_once();
      v106 = v166;
    }

    v193 = 0;
    sub_1AF0D4F18(v106, &v193, v105, v104);

    v101 = 0;
    v94 = 0;
    v90 = v184.n128_u64[0];
  }

  v107 = CFXGPUDeviceCreateBufferWithLength(v90, v99, 32);
  v184.n128_u64[0] = v92;
  v172 = v101;
  if (v107)
  {
    v108 = v107;
    v109 = sub_1AFDFCEC8();
    [v108 setLabel_];
  }

  else
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v193 = 0;
    v194 = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF290F0);
    MEMORY[0x1B2718AE0](0x656C636974726170, 0xEF73656369646E49);
    MEMORY[0x1B2718AE0](0x6E656C20666F2022, 0xEC00000020687467);
    v192 = v99;
    v110 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v110);

    MEMORY[0x1B2718AE0](0x706F206874697720, 0xEE0020736E6F6974);
    v192 = 32;
    type metadata accessor for MTLResourceOptions(0);
    sub_1AFDFE458();
    v112 = v193;
    v111 = v194;
    v113 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v167 = v113;
      swift_once();
      v113 = v167;
    }

    v193 = 0;
    sub_1AF0D4F18(v113, &v193, v112, v111);

    v108 = 0;
    v99 = 0;
  }

  v114 = v94;
  swift_unknownObjectRelease();
  v84[61] = v108;
  v84[62] = 0;
  v84[63] = v99;

  v115 = sub_1AF6F3F0C();
  v182 = 0;
  v116 = v115;
  swift_getObjectType();
  v117 = sub_1AFDFCEC8();
  [v116 pushDebugGroup_];

  sub_1AF6F3BD8();
  swift_unknownObjectRelease();
  v118 = v181;
  v119 = v179;
  v120 = v184.n128_u64[0];
  sub_1AF471F2C(v181, v179, v184.n128_i64[0], 0, v187.i64[0], 0);
  sub_1AF471E80(v180, v178, v120, v185, 0);
  v121 = v172;
  sub_1AF471F2C(v176.i64[0], v175, v172, 0, v94, 0);
  v122 = v173;
  if (v173)
  {
    v123 = sub_1AF6F2CC8(v118, v119);
    sub_1AF471E80(v122, v170, v121, *(v123 + 64), 0);
  }

  [v116 popDebugGroup];

  swift_unknownObjectRelease();
  v124 = v177;
  if (v177[56] >= 1 && v177[66] >= 1 && (v125 = v177[43]) != 0 && (v126 = v177[53]) != 0)
  {
    *&v175 = v114;
    v127 = v177[45];
    v176.i64[0] = v177[44];
    v128 = v177[55];
    *&v171 = v177[54];
    v169 = v127;
    v170 = v128;
    v129 = v177[89];

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v173 = v129;
    swift_unknownObjectRetain();
    v130 = v182;
    v131 = sub_1AF6F4158();
    if (!v130)
    {
      v132 = v131;
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      v134 = sub_1AFDFCEC8();
      [v132 pushDebugGroup_];

      sub_1AF6F3BD8();
      swift_unknownObjectRelease();
      sub_1AF6F353C(v125, v176.i64[0], v169, 0);
      v182 = v125;
      v135 = v186;
      LODWORD(v193) = v186;
      sub_1AF6F3558(&v193, 1, ObjectType, MEMORY[0x1E69E7668], v136, v137, v138, v139);
      sub_1AF6F463C(v184.n128_i64[0], 0, v187.i64[0], 0);
      sub_1AF6F463C(v126, v171, v170, 0);
      sub_1AF6F463C(v121, 0, v175, 0);
      v140 = v173;
      sub_1AF6F4798(v173, v135);
      *&v171 = v126;
      v141 = v185;
      [v132 setBufferOffset:v176.i64[0] + v185 atIndex:6];
      [v132 setBufferOffset:v141 atIndex:7];
      v142 = v135;
      v114 = v175;
      sub_1AF6F4798(v140, v142);
      [v132 popDebugGroup];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      goto LABEL_85;
    }

LABEL_100:
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
LABEL_85:
    v143 = v178;
    v144 = v121;
    v145 = HIDWORD(v178);
    v146 = v179;
    v147 = HIDWORD(v179);
    v148 = (v174 + 991) & -v174;
    swift_unknownObjectRelease();
    v124[43] = v184.n128_u64[0];
    v124[44] = 0;
    v149 = v185;
    v124[45] = v187.i64[0];
    v124[46] = v149;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v124[53] = v144;
    v124[54] = 0;
    v124[55] = v114;
    v150 = v181;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v124[47] = v150;
    v124[48] = v146;
    v124[49] = v147;
    v151 = v180;
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
    v124[50] = v151;
    v124[51] = v143;
    v124[52] = v145;
    result = swift_unknownObjectRelease();
    v124[58] = v144;
    v124[59] = 0;
    v124[60] = v148;
    v124[56] = v186;
  }

  return result;
}

uint64_t sub_1AFBBAFA0(uint64_t result, uint64_t a2, float a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = *(result + 488);
  if (v3)
  {
    v5 = result;
    v6 = *(result + 504);
    v33 = *(result + 512);
    v7 = *(result + 496);
    v8 = *(result + 120);
    v9 = *(a2 + 248);
    *v39 = a3;
    BYTE4(v39[0]) = v8;
    swift_unknownObjectRetain();
    v10 = CFXBufferAllocatorPerFrameAllocateWithBytes(v9, v39, 8uLL);
    v12 = v11;

    v13 = sub_1AF6F4158();
    v34 = v12;
    v35 = v10;
    v36 = v6;
    v37 = v7;
    v38 = v3;
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v15 = sub_1AFDFCEC8();
    [v13 pushDebugGroup_];

    sub_1AF6F3BD8();
    swift_unknownObjectRelease();
    v16 = v5[83];
    sub_1AF442324(v5, v39);
    v17 = v44;
    if (v44)
    {
      v18 = v45;
      v19 = v46;
      v20 = v41;
      if (v40)
      {
        v21 = v47;
      }

      else
      {
        v21 = 0;
      }

      v22 = v42 + v43 * v21;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      sub_1AF6F34C4(v20, v22, 0, 4, ObjectType);
      sub_1AF6F353C(v17, v18, v19, 0);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRetain();
    }

    sub_1AF58D38C(v39);
    sub_1AF6F466C(v16);
    sub_1AFBB9330(v13, v5, a2);
    v23 = v5[84];
    if (v23)
    {
      v25 = v5[53];
      v24 = v5[54];
      v26 = v5[55];
      sub_1AF442324(v5, v39);
      v27 = v41;
      v28 = v42 + v43 * (1 - v33);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      sub_1AF58D38C(v39);
      sub_1AF6F34C4(v27, v28, 0, 4, ObjectType);
      sub_1AF6F353C(v25, v24, v26, 0);
      sub_1AF6F34C4(v35, v34, 0, 1, ObjectType);
      sub_1AF6F353C(v38, v37, v36, 0);
      sub_1AF442324(v5, v39);
      v29 = v44;
      v30 = v45 + 96;
      sub_1AF58D38C(v39);
      sub_1AF6F46F4(v23, v29, v30);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v31 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v32 = v31;
        swift_once();
        v31 = v32;
      }

      v39[0] = 0;
      sub_1AF0D4F18(v31, v39, 0xD00000000000003ALL, 0x80000001AFF4A530);
    }

    swift_unknownObjectRelease();
    [v13 popDebugGroup];
    swift_unknownObjectRelease();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1AFBBB398(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8)
{
  v77 = *MEMORY[0x1E69E9840];
  v12 = *(a2 + 248);
  v13 = *(a1 + 704);
  v14 = *(a1 + 520);
  *(a1 + 520) = sub_1AF6C0D50();
  result = swift_weakLoadStrong();
  if (result)
  {
    v44 = v14;
    v16 = sub_1AFBF1718(&type metadata for Color);
    v47 = a3;
    v17 = sub_1AFBF1718(&type metadata for Scale1) || sub_1AFBF1718(&type metadata for Scale2) || sub_1AFBF1718(&type metadata for Scale3) != 0;
    v54 = v12;
    swift_unknownObjectRetain();

    v18 = sub_1AF6F4158();
    v48 = a4;
    v46 = HIDWORD(a4);
    v19 = v16 != 0;
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v21 = sub_1AFDFCEC8();
    [v18 pushDebugGroup_];

    v45 = sub_1AF6F3BD8();
    memset(v55, 0, 67);
    v22 = *(a1 + 112);
    swift_getObjectType();
    v49 = v13;
    v23 = sub_1AF471B10();
    v24 = *(a1 + 120);
    if (v24)
    {
      v25 = *(a1 + 136);
      *(v55 + 3) = v25[2];
      *(&v55[1] + 3) = v25[3];
      *(&v55[2] + 3) = v25[4];
      *(&v55[3] + 3) = v25[5];
    }

    HIWORD(v57) = 0;
    *(&v57 + 2) = 0;
    aBlock = __PAIR64__(v44, v22);
    LOBYTE(v57) = v19;
    BYTE1(v57) = v17;
    v58 = a5;
    v59 = a6;
    v60 = a7;
    v61 = a8;
    v62 = v23;
    v63 = v24;
    v65 = v55[1];
    v66 = v55[2];
    *v67 = v55[3];
    *&v67[15] = *(&v55[3] + 15);
    v64 = v55[0];
    v68 = 0;
    v26 = CFXBufferAllocatorPerFrameAllocateWithBytes(v54, &aBlock, 0xA0uLL);
    v28 = v27;
    sub_1AF442324(a1, &aBlock);
    v29 = v73;
    if (v73)
    {
      v30 = v75;
      v31 = v70;
      v32 = v74;
      if (v69)
      {
        v33 = v76;
      }

      else
      {
        v33 = 0;
      }

      v34 = v71 + v72 * v33;
      swift_unknownObjectRetain();
      sub_1AF6F34C4(v31, v34, 0, 4, ObjectType);
      sub_1AF6F353C(v29, v32, v30, 0);
      swift_unknownObjectRelease();
    }

    sub_1AF58D38C(&aBlock);
    sub_1AF6F34C4(v26, v28, 0, 1, ObjectType);
    v35 = *(v47 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 8);
    CFXBufferAllocatorPerFrameAllocateWithLength(*(a2 + 248), 4);
    v37 = v36;
    v39 = v38;
    v40 = HIDWORD(v38);
    sub_1AF6F34C4(v36, v38, 0, 6, ObjectType);
    sub_1AF6F466C(v49);
    v41 = swift_allocObject();
    swift_weakInit();
    v42 = swift_allocObject();
    *(v42 + 16) = v41;
    *(v42 + 24) = v37;
    *(v42 + 32) = v39;
    *(v42 + 36) = v40;
    *(v42 + 40) = v48;
    *(v42 + 44) = v46;
    *(v42 + 48) = v35;
    v59.n128_u64[0] = sub_1AFBBD7C4;
    v59.n128_u64[1] = v42;
    aBlock = MEMORY[0x1E69E9820];
    v57 = 1107296256;
    v58.n128_u64[0] = sub_1AF719CC4;
    v58.n128_u64[1] = &unk_1F24E6258;
    v43 = _Block_copy(&aBlock);

    [v45 addCompletedHandler_];
    swift_unknownObjectRelease();
    _Block_release(v43);
    [v18 popDebugGroup];

    swift_unknownObjectRelease();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1AFBBB850(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = *(a2 + 680);
  if (v4)
  {
    v6 = *(a2 + 424);
    v7 = *(a2 + 432);
    v8 = *(a2 + 440);
    ObjectType = swift_getObjectType();
    sub_1AF442324(a2, v24);
    v10 = v26;
    v11 = v28 - v28 * *(a2 + 512) + v27;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_1AF58D38C(v24);
    sub_1AF6F34C4(v10, v11, 0, 4, ObjectType);
    sub_1AF6F353C(v6, v7, v8, 0);
    sub_1AF442324(a2, v24);
    v12 = v26;
    if (v25)
    {
      v13 = v29;
    }

    else
    {
      v13 = 0;
    }

    v14 = v27 + v28 * v13;
    sub_1AF58D38C(v24);
    sub_1AF6F34C4(v12, v14, 0, 6, ObjectType);
    v15 = swift_unknownObjectRetain();
    sub_1AF6F463C(v15, v7, v8, 0);
    swift_unknownObjectRelease();
    v16 = *(a2 + 496);
    v17 = *(a2 + 504);
    v18 = swift_unknownObjectRetain();
    sub_1AF6F463C(v18, v16, v17, 0);
    swift_unknownObjectRelease();
    sub_1AF6F46F4(v4, a3, a4);
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v20 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v21 = v20;
      swift_once();
      v20 = v21;
    }

    v24[0] = 0;
    return sub_1AF0D4F18(v20, v24, 0xD00000000000002BLL, 0x80000001AFF4A500);
  }
}

uint64_t sub_1AFBBBA8C(uint64_t a1)
{
  v2 = *(a1 + 424);
  v3 = *(a1 + 432);

  v4 = v3 + 96;
  v5 = sub_1AF6F4158();
  swift_unknownObjectRetain();
  v6 = sub_1AFDFCEC8();
  [v5 pushDebugGroup_];

  sub_1AF6F3BD8();
  sub_1AFBBB850(v5, a1, v2, v4);
  swift_unknownObjectRelease();
  [v5 popDebugGroup];

  return swift_unknownObjectRelease();
}

uint64_t sub_1AFBBBB98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 688);
  if (v2)
  {
    sub_1AF442324(a2, v27);
    v4 = v32;
    if (v32)
    {
      v6 = v33;
      v5 = v34;
      v7 = v28;
      v8 = v35;
      ObjectType = swift_getObjectType();
      v10 = v29;
      if (v7)
      {
        v11 = v8;
      }

      else
      {
        v11 = 0;
      }

      v12 = v30 + v31 * v11;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      sub_1AF6F34C4(v10, v12, 0, 4, ObjectType);
      sub_1AF6F353C(v4, v6, v5, 0);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRetain();
    }

    sub_1AF58D38C(v27);
    v15 = *(*(a2 + 136) + 16);
    if (v15)
    {
      v16 = 0;
      v17 = 700;
      v18 = MEMORY[0x1E69E72F0];
      do
      {
        if (*(*(a2 + 136) + 4 * v16 + 32))
        {
          sub_1AF442324(a2, v27);
          v19 = v32;
          v20 = v17 + v33;
          sub_1AF58D38C(v27);
          v21 = swift_getObjectType();
          LODWORD(v27[0]) = v16;
          sub_1AF6F4524(v27, 0, v21, v18, v22, v23, v24, v25);
          sub_1AF6F46F4(v2, v19, v20);
        }

        ++v16;
        v17 += 12;
      }

      while (v15 != v16);
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v13 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v26 = v13;
      swift_once();
      v13 = v26;
    }

    v27[0] = 0;
    return sub_1AF0D4F18(v13, v27, 0xD000000000000035, 0x80000001AFF4A4A0);
  }
}

uint64_t sub_1AFBBBDD8(uint64_t a1)
{
  if (*(a1 + 120) == 1)
  {

    v2 = sub_1AF6F4158();
    swift_unknownObjectRetain();
    v3 = sub_1AFDFCEC8();
    [v2 pushDebugGroup_];

    sub_1AF6F3BD8();
    sub_1AFBBBB98(v2, a1);
    swift_unknownObjectRelease();
    [v2 popDebugGroup];

    return swift_unknownObjectRelease();
  }

  else
  {
    v6 = *(a1 + 424);
    v5 = *(a1 + 432);

    v7 = sub_1AF6F4158();
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v9 = sub_1AFDFCEC8();
    [v7 pushDebugGroup_];

    sub_1AF6F3BD8();
    v10 = *(a1 + 688);
    if (v10)
    {
      v11 = v5 + 108;
      sub_1AF442324(a1, v27);
      v12 = v32;
      if (v32)
      {
        v26 = v34;
        v13 = v29;
        v14 = v5 + 108;
        v15 = v6;
        v16 = v33;
        if (v28)
        {
          v17 = v35;
        }

        else
        {
          v17 = 0;
        }

        v18 = v30 + v31 * v17;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        sub_1AF6F34C4(v13, v18, 0, 4, ObjectType);
        v19 = v16;
        v6 = v15;
        v11 = v14;
        sub_1AF6F353C(v12, v19, v26, 0);
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRetain();
      }

      sub_1AF58D38C(v27);
      LODWORD(v27[0]) = -1;
      sub_1AF6F4524(v27, 0, ObjectType, MEMORY[0x1E69E72F0], v21, v22, v23, v24);
      sub_1AF6F46F4(v10, v6, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v20 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v25 = v20;
        swift_once();
        v20 = v25;
      }

      v27[0] = 0;
      sub_1AF0D4F18(v20, v27, 0xD000000000000035, 0x80000001AFF4A4A0);
    }

    swift_unknownObjectRelease();
    [v7 popDebugGroup];

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_1AFBBC160(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float a6)
{
  v349 = *MEMORY[0x1E69E9840];
  v7 = *(*a2 + 16);
  if (!v7)
  {
    goto LABEL_26;
  }

  v9 = 0;
  v10 = *a2 + 32;
  v11 = (a5 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v12 = 0;
  v320 = a5;
  do
  {
    v13 = (v10 + 8 * v9);
    v14 = *v13;
    v15 = v13[1];
    v16 = v14 == -1 && v15 == 0;
    if (!v16 && (v14 & 0x80000000) == 0 && v11[1] > v14)
    {
      v17 = (*v11 + 12 * v14);
      if (v15 == -1 || v17[2] == v15)
      {
        v19 = *(*(*(a5 + 144) + 8 * *v17 + 32) + 48);
        v20 = (v19 + 32);
        v21 = *(v19 + 16) + 1;
        while (--v21)
        {
          v22 = *v20;
          v20 += 5;
          if (v22 == &type metadata for ParticleSubSpawn.State)
          {
            sub_1AF3D0D90(v14 | (v15 << 32), &v326);
            if (v333 != 2 && v331 > 0)
            {
              ++v12;
            }

            a5 = v320;
            break;
          }
        }
      }
    }

    ++v9;
  }

  while (v9 != v7);
  if (v12 < 1)
  {
LABEL_26:

    return sub_1AFBBBDD8(a3);
  }

  CFXBufferAllocatorPerFrameAllocateWithLength(*(a4 + 248), 144 * v12);
  v24 = v23;
  v26 = v25;
  v27 = [swift_unknownObjectRetain() storageMode];
  swift_unknownObjectRelease();
  v313 = a3;
  v302 = v12;
  if (v27 == 2)
  {
    v289 = 0;
  }

  else
  {
    v29 = [swift_unknownObjectRetain() 0x1FAD4C978];
    v30 = v24;
    v289 = &v29[v26];
  }

  v315 = 0;
  v309 = 0;
  v311 = 0;
  v307 = 0;
  v31 = 0;
  v300 = 0;
  v32 = 0;
  v297 = v26;
  v298 = v24;
  v33 = v320;
  do
  {
    v34 = (v10 + 8 * v32);
    v35 = v34[1];
    v36 = *v34;
    v37 = v36 == -1 && v35 == 0;
    if (!v37 && (v36 & 0x80000000) == 0 && v11[1] > v36)
    {
      v38 = (*v11 + 12 * v36);
      if (v35 == -1 || v38[2] == v35)
      {
        v40 = *(v38 + 2);
        v41 = *v38;
        v42 = *(v33 + 144) + 32;
        v43 = *(v42 + 8 * v41);
        v44 = *(v43 + 48);
        v45 = (v44 + 32);
        v46 = *(v44 + 16) + 1;
        do
        {
          if (!--v46)
          {
            goto LABEL_32;
          }

          v47 = v45 + 5;
          v48 = *v45;
          v45 += 5;
        }

        while (v48 != &type metadata for ParticleSubSpawn.State);
        v49 = (&(*(v47 - 2))[4 * v40].Kind + *(v43 + 128));
        v50 = v49[3];
        v52 = *v49;
        v51 = v49[1];
        v324 = v49[2];
        v325 = v50;
        v322 = v52;
        v323 = v51;
        v53 = *(v42 + 8 * v41);
        v54 = *(v53 + 48);
        v55 = (v54 + 32);
        v56 = *(v54 + 16) + 1;
        do
        {
          if (!--v56)
          {
            goto LABEL_32;
          }

          v57 = v55 + 5;
          v58 = *v55;
          v55 += 5;
        }

        while (v58 != &type metadata for ParticleSubSpawn);
        v303 = v31;
        v59 = (*(v57 - 2) + 24 * v40 + *(v53 + 128));
        v60 = v59[1];
        v61 = *v59;
        v279 = *(v59 + 12);
        v292 = *(v59 + 13);
        v282 = *(v59 + 14);
        v285 = *(v59 + 15);
        v62 = v59[4];
        v290 = *(v59 + 20);
        sub_1AF3D0D90(v36 | (v35 << 32), &v326);
        if (v333 == 2)
        {
          v33 = v320;
          v31 = v303;
          goto LABEL_32;
        }

        if (v331 < 1)
        {
          v33 = v320;
          v31 = v303;
          goto LABEL_32;
        }

        v275 = v330;
        v63 = v61 == -1 && v60 == 0;
        v33 = v320;
        v277 = v332;
        if (v63 || (v61 & 0x80000000) != 0 || v11[1] <= v61 || (v60 != -1 ? (v64 = *(*v11 + 12 * v61 + 8) == v60) : (v64 = 1), !v64))
        {
          sub_1AF44323C(&v322, &v326);
          v69 = v315;
          v70 = v303;
          v71 = v285;
          v72 = v282;
          v73 = v279;
        }

        else
        {
          sub_1AF44323C(&v322, &v326);
          sub_1AFB95040(a1, &v342);
          v266 = v342.columns[0];
          v270 = v342.columns[2];
          v272 = v342.columns[1];
          v273 = v342.columns[3];
          sub_1AFB95C50(v61 | (v60 << 32), &v344);
          v66 = v344;
          v65 = v345;
          v68 = v346;
          v67 = v347;
          if ((v343 & 1) == 0)
          {
            v69 = v315;
            v70 = v303;
            v71 = v285;
            v72 = v282;
            v73 = v279;
            if (v348)
            {
              v66 = v266;
              v68 = v270;
              v65 = v272;
              v67 = v273;
            }

            else
            {
              v66 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v266, v344.f32[0]), v272, *v344.f32, 1), v270, v344, 2), v273, v344, 3);
              v65 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v266, v345.f32[0]), v272, *v345.f32, 1), v270, v345, 2), v273, v345, 3);
              v68 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v266, v346.f32[0]), v272, *v346.f32, 1), v270, v346, 2), v273, v346, 3);
              v67 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v266, v347.f32[0]), v272, *v347.f32, 1), v270, v347, 2), v273, v347, 3);
            }

            v33 = v320;
            goto LABEL_68;
          }

          v33 = v320;
          v69 = v315;
          v70 = v303;
          v71 = v285;
          v72 = v282;
          v73 = v279;
          if ((v348 & 1) == 0)
          {
LABEL_68:
            v74 = *(v322 + 16);
            *&v289[144 * v300 + 80] = v62;
            v75 = v73 && *(&v323 + 1) && *(*(&v323 + 1) + 16) != 0;
            v274 = v67;
            v283 = v65;
            v286 = v68;
            v280 = v66;
            v271 = v75;
            if (v323)
            {
              v76 = *(v323 + 16) != 0;
              if (v72)
              {
                v77 = *(&v322 + 1);
                if (*(&v322 + 1))
                {
LABEL_75:
                  v78 = *(v77 + 16) != 0;
                  if ((v71 & 1) == 0)
                  {
                    goto LABEL_91;
                  }

LABEL_82:
                  v79 = v324;
                  if (v324)
                  {
LABEL_83:
                    v262 = v78;
                    v264 = v76;
                    v80 = v69;
                    v267 = v74;

                    sub_1AFBBD770(&v322);
                    v81 = *(v79 + 16);

                    v82 = v81 != 0;
                    if (v11[1] > v36)
                    {
                      v33 = v320;
                      v70 = v303;
                      v83 = v277;
                      v84 = v280;
                      v85 = v267;
                      v86 = v274;
                      v88 = v283;
                      v87 = v286;
LABEL_94:
                      v92 = &v289[144 * v300];
                      v93 = v271;
                      v89 = v264;
                      v90 = v262;
                      goto LABEL_109;
                    }

                    LODWORD(v94) = 0;
                    v95 = 1;
                    v33 = v320;
                    v70 = v303;
                    v96 = v275;
                    v97 = v292;
                    v98 = v290;
                    v83 = v277;
                    v84 = v280;
                    v85 = v267;
                    v86 = v274;
                    v88 = v283;
                    v87 = v286;
LABEL_100:
                    v92 = &v289[144 * v300];
                    v93 = v271;
                    v89 = v264;
                    v90 = v262;
                    goto LABEL_129;
                  }

LABEL_90:
                  v70 = v303;
LABEL_91:
                  v262 = v78;
                  v264 = v76;
                  v316 = v69;
                  v91 = v74;
                  sub_1AFBBD770(&v322);
                  if (v36 != -1)
                  {
                    v83 = v277;
                    v84 = v280;
                    v86 = v274;
                    v88 = v283;
                    v87 = v286;
                    if (v11[1] > v36)
                    {
                      v82 = 0;
                      v85 = v91;
                      v80 = v316;
                      goto LABEL_94;
                    }

                    goto LABEL_99;
                  }

                  v83 = v277;
                  v84 = v280;
                  v86 = v274;
                  v88 = v283;
                  v87 = v286;
                  if (!v35)
                  {
LABEL_99:
                    LODWORD(v94) = 0;
                    v82 = 0;
                    v95 = 1;
                    v96 = v275;
                    v97 = v292;
                    v98 = v290;
                    v85 = v91;
                    v80 = v316;
                    goto LABEL_100;
                  }

                  v85 = v91;
                  v92 = &v289[144 * v300];
                  v93 = v271;
                  v89 = v264;
                  v90 = v262;
                  if (v11[1] > v36)
                  {
                    v82 = 0;
                    v80 = v316;
                    goto LABEL_109;
                  }

                  LODWORD(v94) = 0;
                  v82 = 0;
LABEL_128:
                  v95 = 1;
                  v96 = v275;
                  v97 = v292;
                  v98 = v290;
                  v80 = v316;
                  goto LABEL_129;
                }
              }
            }

            else
            {
              if ((v72 & 1) == 0)
              {
                if (v71)
                {
                  v78 = 0;
                  v76 = 0;
                  v79 = v324;
                  if (v324)
                  {
                    goto LABEL_83;
                  }

                  goto LABEL_90;
                }

                v80 = v69;
                v269 = v74;
                sub_1AFBBD770(&v322);
                if (v36 == -1)
                {
                  v83 = v277;
                  v84 = v280;
                  v88 = v283;
                  v87 = v286;
                  if (v35)
                  {
                    v85 = v269;
                    v86 = v274;
                    v92 = &v289[144 * v300];
                    v93 = v271;
                    if (v11[1] <= v36)
                    {
                      LODWORD(v94) = 0;
                      v82 = 0;
                      v90 = 0;
                      v89 = 0;
                      goto LABEL_112;
                    }

                    v82 = 0;
                    v90 = 0;
                    v89 = 0;
                    goto LABEL_109;
                  }
                }

                else
                {
                  v83 = v277;
                  v84 = v280;
                  v88 = v283;
                  v87 = v286;
                  if (v11[1] > v36)
                  {
                    v82 = 0;
                    v90 = 0;
                    v89 = 0;
                    v85 = v269;
                    goto LABEL_108;
                  }
                }

                LODWORD(v94) = 0;
                v82 = 0;
                v90 = 0;
                v89 = 0;
                v95 = 1;
                v96 = v275;
                v97 = v292;
                v98 = v290;
                v85 = v269;
LABEL_126:
                v86 = v274;
                v92 = &v289[144 * v300];
                v93 = v271;
                goto LABEL_129;
              }

              v76 = 0;
              v77 = *(&v322 + 1);
              if (*(&v322 + 1))
              {
                goto LABEL_75;
              }
            }

            if (v71)
            {
              v78 = 0;
              goto LABEL_82;
            }

            v316 = v69;
            v268 = v74;
            sub_1AFBBD770(&v322);
            if (v36 == -1)
            {
              v83 = v277;
              v84 = v280;
              v88 = v283;
              v87 = v286;
              v89 = v76;
              if (v35)
              {
                v85 = v268;
                v86 = v274;
                v92 = &v289[144 * v300];
                v93 = v271;
                if (v11[1] <= v36)
                {
                  LODWORD(v94) = 0;
                  v82 = 0;
                  v90 = 0;
                  goto LABEL_128;
                }

                v82 = 0;
                v90 = 0;
                v80 = v316;
LABEL_109:
                v99 = (*v11 + 12 * v36);
                v100 = *(v99 + 2);
                if (v35 != -1 && v99[2] != v35)
                {
                  LODWORD(v94) = 0;
LABEL_112:
                  v95 = 1;
                  v96 = v275;
                  v97 = v292;
                  v98 = v290;
                  goto LABEL_129;
                }

                v101 = *(*(v33 + 144) + 8 * *v99 + 32);
                v102 = *(v101 + 48);
                v103 = (v102 + 32);
                v104 = *(v102 + 16) + 1;
                v96 = v275;
                v97 = v292;
                v98 = v290;
                while (--v104)
                {
                  v105 = v103 + 5;
                  v106 = *v103;
                  v103 += 5;
                  if (v106 == &type metadata for ParticleSpawnID)
                  {
                    v95 = 0;
                    v94 = *(&(*(v105 - 2))->Kind + 8 * v100 + *(v101 + 128));
                    goto LABEL_129;
                  }
                }

                LODWORD(v94) = 0;
                v95 = 1;
LABEL_129:
                v107 = vmulq_f32(v84, v84);
                v108 = vmulq_f32(v88, v88);
                v109 = vmulq_f32(v87, v87);
                v110 = vzip2q_s32(v107, v109);
                v111 = vzip1q_s32(vzip1q_s32(v107, v109), v108);
                v112 = vtrn2q_s32(v107, v108);
                v112.i32[2] = v109.i32[1];
                v113 = vaddq_f32(vzip1q_s32(v110, vdupq_laneq_s32(v108, 2)), vaddq_f32(v111, v112));
                v108.i64[0] = 0x80000000800000;
                v108.i64[1] = 0x80000000800000;
                v114 = vcgeq_f32(v108, v113);
                v113.i32[3] = 0;
                v115 = vrsqrteq_f32(v113);
                v116 = vmulq_f32(v115, vrsqrtsq_f32(v113, vmulq_f32(v115, v115)));
                v117 = v114;
                v117.i32[3] = 0;
                v118 = vbslq_s8(vcltzq_s32(v117), v113, vmulq_f32(v116, vrsqrtsq_f32(v113, vmulq_f32(v116, v116))));
                v119 = vmulq_n_f32(v84, v118.f32[0]);
                v120 = vmulq_lane_f32(v88, *v118.f32, 1);
                v121 = vmulq_laneq_f32(v87, v118, 2);
                v122 = vuzp1q_s32(v121, v121);
                v123 = vuzp1q_s32(v120, v120);
                v124 = v119;
                if (v114.i32[0])
                {
                  v125 = vmlaq_f32(vmulq_f32(vextq_s8(v122, v121, 0xCuLL), vnegq_f32(v120)), v121, vextq_s8(v123, v120, 0xCuLL));
                  v124 = vextq_s8(vuzp1q_s32(v125, v125), v125, 0xCuLL);
                }

                v126 = vuzp1q_s32(v119, v119);
                v127 = v120;
                if (v114.i32[1])
                {
                  v128 = vmlaq_f32(vmulq_f32(vextq_s8(v126, v119, 0xCuLL), vnegq_f32(v121)), v119, vextq_s8(v122, v121, 0xCuLL));
                  v127 = vextq_s8(vuzp1q_s32(v128, v128), v128, 0xCuLL);
                }

                if (v114.i32[2])
                {
                  v129 = vmlaq_f32(vmulq_f32(vextq_s8(v123, v120, 0xCuLL), vnegq_f32(v119)), v120, vextq_s8(v126, v119, 0xCuLL));
                  v121 = vextq_s8(vuzp1q_s32(v129, v129), v129, 0xCuLL);
                }

                v130 = (*v124.i32 + *&v127.i32[1]) + v121.f32[2];
                if (v130 > 0.0)
                {
                  v131 = sqrtf(v130 + 1.0);
                  *v132.f32 = vsub_f32(*&vzip2q_s32(v127, vuzp1q_s32(v127, v121)), *&vtrn2q_s32(v121, vzip2q_s32(v121, v124)));
                  v132.f32[2] = *&v124.i32[1] - *v127.i32;
                  v132.f32[3] = v131 * v131;
                  v133 = 0.5 / v131;
LABEL_137:
                  v134 = vmulq_n_f32(v132, v133);
                  goto LABEL_146;
                }

                if (*v124.i32 < *&v127.i32[1] || *v124.i32 < v121.f32[2])
                {
                  if (*&v127.i32[1] <= v121.f32[2])
                  {
                    v145 = vzip2q_s32(v124, v127).u64[0];
                    v146 = __PAIR64__(v124.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v121.f32[2] + 1.0) - *v124.i32) - *&v127.i32[1])));
                    v147 = vdup_lane_s32(*v127.i8, 0);
                    *v132.f32 = vadd_f32(v145, *v121.f32);
                    v148 = vsub_f32(*v124.i8, v147);
                    v147.i32[0] = v146.i32[0];
                    v147.i32[0] = vmul_f32(v146, v147).u32[0];
                    v147.i32[1] = v148.i32[1];
                    *&v132.u32[2] = v147;
                    v133 = 0.5 / v146.f32[0];
                    goto LABEL_137;
                  }

                  v137 = sqrtf(((*&v127.i32[1] + 1.0) - *v124.i32) - v121.f32[2]);
                  v141.f32[0] = *&v124.i32[1] + *v127.i32;
                  v136 = vzip2q_s32(v124, v127).u64[0];
                  v141.f32[1] = v137 * v137;
                  *&v141.u32[2] = vext_s8(vadd_f32(*v121.f32, v136), vsub_f32(*v121.f32, v136), 4uLL);
                }

                else
                {
                  v137 = sqrtf(((*v124.i32 + 1.0) - *&v127.i32[1]) - v121.f32[2]);
                  v141.f32[0] = v137 * v137;
                  v138 = *&v124.i32[1] + *v127.i32;
                  v139 = vzip2q_s32(v124, v127).u64[0];
                  LODWORD(v140) = vadd_f32(v139, *v121.f32).u32[0];
                  HIDWORD(v140) = vsub_f32(v139, *&v121).i32[1];
                  v141.f32[1] = v138;
                  v141.i64[1] = v140;
                }

                v134 = vmulq_n_f32(v141, 0.5 / v137);
LABEL_146:
                *v92 = v84;
                *(v92 + 1) = v88;
                *(v92 + 2) = v87;
                *(v92 + 3) = v86;
                *(v92 + 4) = v134;
                *(v92 + 20) = v62;
                v92[84] = v93;
                v92[85] = v89;
                v92[86] = v97 & v89;
                v92[87] = v90;
                v92[88] = v82;
                v92[89] = v98 == 2;
                *(v92 + 6) = v83;
                *(v92 + 28) = v85;
                *(v92 + 29) = v70;
                *(v92 + 30) = v307;
                *(v92 + 31) = v309;
                *(v92 + 32) = v311;
                *(v92 + 33) = v80;
                *(v92 + 34) = v96;
                if (v95)
                {
                  *(v92 + 35) = -1;
                  if (!v93)
                  {
                    goto LABEL_151;
                  }
                }

                else
                {
                  *(v92 + 35) = v94;
                  if (!v93)
                  {
LABEL_151:
                    v31 = v85 + v70;
                    if (v89)
                    {
                      v142 = v85;
                    }

                    else
                    {
                      v142 = 0;
                    }

                    v309 += v142;
                    if (v90)
                    {
                      v143 = v85;
                    }

                    else
                    {
                      v143 = 0;
                    }

                    v311 += v143;
                    if (v82)
                    {
                      v144 = v85;
                    }

                    else
                    {
                      v144 = 0;
                    }

                    v315 = v144 + v80;
                    ++v300;
                    goto LABEL_32;
                  }
                }

                v307 += v85;
                goto LABEL_151;
              }
            }

            else
            {
              v83 = v277;
              v84 = v280;
              v88 = v283;
              v87 = v286;
              v89 = v76;
              if (v11[1] > v36)
              {
                v82 = 0;
                v90 = 0;
                v85 = v268;
                v80 = v316;
LABEL_108:
                v86 = v274;
                v92 = &v289[144 * v300];
                v93 = v271;
                goto LABEL_109;
              }
            }

            LODWORD(v94) = 0;
            v82 = 0;
            v90 = 0;
            v95 = 1;
            v96 = v275;
            v97 = v292;
            v98 = v290;
            v85 = v268;
            v80 = v316;
            goto LABEL_126;
          }
        }

        v66 = xmmword_1AFE20150;
        v65 = xmmword_1AFE20160;
        v68 = xmmword_1AFE20180;
        v67 = xmmword_1AFE201A0;
        goto LABEL_68;
      }
    }

LABEL_32:
    ++v32;
  }

  while (v32 != v7);
  v149 = *(a4 + 248);
  CFXBufferAllocatorPerFrameAllocateWithLength(v149, 16 * v31);
  v151 = v150;
  v153 = v152;
  v154 = [swift_unknownObjectRetain() storageMode];
  swift_unknownObjectRelease();
  v295 = v151;
  if (v154 == 2)
  {
    v284 = 0;
  }

  else
  {
    v155 = [swift_unknownObjectRetain() contents];
    v156 = v151;
    v284 = &v155[v153];
  }

  CFXBufferAllocatorPerFrameAllocateWithLength(v149, 16 * v307);
  v301 = v157;
  v306 = v158;
  CFXBufferAllocatorPerFrameAllocateWithLength(v149, 16 * v309);
  v299 = v159;
  v308 = v160;
  CFXBufferAllocatorPerFrameAllocateWithLength(v149, 16 * v311);
  v304 = v161;
  v310 = v162;
  CFXBufferAllocatorPerFrameAllocateWithLength(v149, 16 * v315);
  v317 = v163;
  v312 = v164;
  CFXBufferAllocatorPerFrameAllocateWithLength(v149, 4 * v313[14]);
  v166 = v165;
  v168 = v167;
  v169 = [swift_unknownObjectRetain() storageMode];
  swift_unknownObjectRelease();
  v170 = v302;
  v296 = v149;
  v293 = v166;
  v294 = v153;
  if (v169 == 2)
  {
    v281 = 0;
  }

  else
  {
    v171 = [swift_unknownObjectRetain() contents];
    v172 = v166;
    v281 = &v171[v168];
  }

  v173 = 0;
  v174 = 0;
  v175 = 0;
  v176 = v320;
  v291 = v168;
  do
  {
    v177 = (v10 + 8 * v175);
    v179 = *v177;
    v178 = v177[1];
    v180 = v179 == -1 && v178 == 0;
    if (!v180 && (v179 & 0x80000000) == 0 && v11[1] > v179)
    {
      v181 = (*v11 + 12 * v179);
      if (v178 == -1 || v181[2] == v178)
      {
        v183 = *(v181 + 2);
        v184 = *v181;
        v185 = *(v176 + 144) + 32;
        v186 = *(v185 + 8 * v184);
        v187 = *(v186 + 48);
        v188 = (v187 + 32);
        v189 = *(v187 + 16) + 1;
        while (--v189)
        {
          v190 = v188 + 5;
          v191 = *v188;
          v188 += 5;
          if (v191 == &type metadata for ParticleSubSpawn.State)
          {
            v192 = (&(*(v190 - 2))[4 * v183].Kind + *(v186 + 128));
            v193 = v192[3];
            v195 = *v192;
            v194 = v192[1];
            v328 = v192[2];
            v329 = v193;
            v326 = v195;
            v327 = v194;
            v196 = *(v185 + 8 * v184);
            v197 = *(v196 + 48);
            v198 = (v197 + 32);
            v199 = *(v197 + 16) + 1;
            while (--v199)
            {
              v200 = v198 + 5;
              v201 = *v198;
              v198 += 5;
              if (v201 == &type metadata for ParticleSpawnState)
              {
                if (*(&(*(v200 - 2))[8 * v183 + 5].Kind + *(v196 + 128)) > 0)
                {
                  v202 = *(v326 + 16);
                  v203 = &v289[144 * v174];
                  v204 = *(v203 + 30);
                  v261 = *(v203 + 32);
                  v263 = *(v203 + 33);
                  v265 = *(v203 + 31);
                  if (v202)
                  {
                    v205 = (v326 + 32);
                    v206 = &v284[16 * *(v203 + 29)];
                    v207 = *(v326 + 16);
                    v208 = v301;
                    do
                    {
                      v209 = *v205++;
                      *v206 = v209;
                      v206 += 16;
                      --v207;
                    }

                    while (v207);
                  }

                  else
                  {
                    v208 = v301;
                  }

                  v210 = *(&v327 + 1);
                  v287 = &v289[144 * v174];
                  v276 = v174;
                  v278 = v173;
                  if (*(&v327 + 1) && (v203[84] & 1) != 0)
                  {
                    v260 = v204;
                    swift_unknownObjectRetain();
                    sub_1AF44323C(&v326, &v322);

                    v211 = [v208 storageMode];
                    swift_unknownObjectRelease();
                    if (v211 != 2)
                    {
                      v212 = [swift_unknownObjectRetain() contents];
                      v213 = v208;
                      if (v202)
                      {
                        v214 = &v212[16 * v260 + v306];
                        v215 = 32;
                        v216 = v202;
                        do
                        {
                          *v214 = *(v210 + v215);
                          v214 += 16;
                          v215 += 16;
                          --v216;
                        }

                        while (v216);
                      }
                    }
                  }

                  else
                  {
                    sub_1AF44323C(&v326, &v322);
                  }

                  v217 = v317;
                  v218 = v327;
                  v219 = v304;
                  v220 = v287;
                  if (v327 && *(v327 + 16))
                  {
                    swift_unknownObjectRetain();

                    v221 = [v299 storageMode];
                    swift_unknownObjectRelease();
                    if (v221 == 2 || (v222 = [swift_unknownObjectRetain() contents], v223 = v299, !v202))
                    {
                      v217 = v317;
                    }

                    else
                    {
                      v224 = (v218 + 32);
                      v225 = &v222[16 * v265 + v308];
                      v226 = v202;
                      v217 = v317;
                      do
                      {
                        v227 = *v224++;
                        *v225 = v227;
                        v225 += 16;
                        --v226;
                      }

                      while (v226);
                    }

                    v219 = v304;
                    v220 = v287;
                  }

                  v228 = *(&v326 + 1);
                  if (*(&v326 + 1) && v220[87] == 1)
                  {
                    swift_unknownObjectRetain();

                    v229 = [v219 storageMode];
                    swift_unknownObjectRelease();
                    if (v229 == 2 || (v230 = [swift_unknownObjectRetain() contents], v231 = v219, !v202))
                    {
                      v217 = v317;
                    }

                    else
                    {
                      v232 = (v228 + 32);
                      v233 = &v230[16 * v261 + v310];
                      v234 = v202;
                      v217 = v317;
                      do
                      {
                        v235 = *v232++;
                        *v233 = v235;
                        v233 += 16;
                        --v234;
                      }

                      while (v234);
                    }

                    v220 = v287;
                  }

                  v236 = v328;
                  if (v328 && v220[88] == 1)
                  {
                    swift_unknownObjectRetain();

                    v237 = [v217 storageMode];
                    swift_unknownObjectRelease();
                    v16 = v237 == 2;
                    v176 = v320;
                    if (!v16)
                    {
                      v288 = [swift_unknownObjectRetain() contents];
                      v238 = v217;
                      if (v202)
                      {
                        v239 = (v236 + 32);
                        v240 = &v288[16 * v263 + v312];
                        do
                        {
                          v241 = *v239++;
                          *v240 = v241;
                          v240 += 16;
                          --v202;
                        }

                        while (v202);
                      }
                    }
                  }

                  else
                  {
                    v176 = v320;
                  }

                  v242 = *(*(&v329 + 1) + 16);
                  v170 = v302;
                  if (v242)
                  {
                    memcpy(&v281[4 * v278], (*(&v329 + 1) + 32), 4 * v242);
                    sub_1AFBBD770(&v326);
                    v173 = v242 + v278;
                  }

                  else
                  {
                    sub_1AFBBD770(&v326);
                    v173 = v278;
                  }

                  v174 = v276 + 1;
                }

                goto LABEL_173;
              }
            }

            break;
          }
        }
      }
    }

LABEL_173:
    ++v175;
  }

  while (v175 != v7);
  v243 = *(a4 + 248);
  *&v326 = __PAIR64__(v170, LODWORD(a6));
  v244 = CFXBufferAllocatorPerFrameAllocateWithBytes(v243, &v326, 8uLL);
  v321 = v245;
  v247 = v313[53];
  v246 = v313[54];

  v248 = sub_1AF6F4158();
  v319 = v246 + 108;
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  v250 = sub_1AFDFCEC8();
  [v248 pushDebugGroup_];

  sub_1AF6F3BD8();
  swift_unknownObjectRelease();
  v251 = v313[87];
  sub_1AF442324(v313, &v326);
  v252 = v338;
  if (v338)
  {
    v314 = v340;
    v253 = v335;
    v254 = v244;
    v255 = v247;
    v256 = v339;
    if (v334)
    {
      v257 = v341;
    }

    else
    {
      v257 = 0;
    }

    v258 = v336 + v337 * v257;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_1AF6F34C4(v253, v258, 0, 4, ObjectType);
    v259 = v256;
    v247 = v255;
    v244 = v254;
    sub_1AF6F353C(v252, v259, v314, 0);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRetain();
  }

  sub_1AF58D38C(&v326);
  sub_1AF6F34C4(v295, v294, 0, 6, ObjectType);
  sub_1AF6F458C(v301, v306, 0, 7);
  sub_1AF6F458C(v299, v308, 0, 8);
  sub_1AF6F458C(v304, v310, 0, 9);
  sub_1AF6F458C(v317, v312, 0, 10);
  sub_1AF6F458C(v298, v297, 0, 11);
  sub_1AF6F458C(v293, v291, 0, 12);
  sub_1AF6F34C4(v244, v321, 0, 1, ObjectType);
  sub_1AF6F46F4(v251, v247, v319);
  swift_unknownObjectRelease();
  [v248 popDebugGroup];

  return swift_unknownObjectRelease();
}