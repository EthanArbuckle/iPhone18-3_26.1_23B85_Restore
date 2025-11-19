void sub_1AF9CCD40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 104);
  v66[0] = *(a3 + 88);
  v66[1] = v3;
  v67 = *(a3 + 120);
  sub_1AF6B06C0(a2, v66, 0x200000000, &v55);
  if (v55)
  {
    v44 = v62;
    if (v62 >= 1)
    {
      v43 = v59;
      if (v59)
      {
        v4 = 0;
        v42 = v58;
        v5 = v61;
        v41 = v60;
        v6 = *(v60 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v52 = *(v61 + 32);
        v63 = v55;
        v64 = v56;
        v65 = v57;
        v74 = v6;
        do
        {
          v7 = (v42 + 48 * v4);
          v8 = *v7;
          v9 = v7[1];
          v10 = v7[2];
          v11 = *(v7 + 3);
          v53 = *(v7 + 2);
          v13 = *(v7 + 4);
          v12 = *(v7 + 5);
          if (v6)
          {
            v14 = *(v12 + 376);

            os_unfair_lock_lock(v14);
            os_unfair_lock_lock(*(v12 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v52);
          v49 = *(v5 + 64);
          v50 = *(v5 + 48);
          v48 = *(v5 + 80);
          v15 = *(*(*(*(v12 + 40) + 16) + 32) + 16) + 1;
          *(v5 + 48) = ecs_stack_allocator_allocate(*(v5 + 32), 48 * v15, 8);
          *(v5 + 56) = v15;
          *(v5 + 72) = 0;
          *(v5 + 80) = 0;
          *(v5 + 64) = 0;
          v73 = 1;
          v68[0] = v41;
          v68[1] = v12;
          v51 = v12;
          v68[2] = v5;
          v68[3] = v10;
          v68[4] = (v9 - v8 + v10);
          v68[5] = v44;
          v68[6] = v8;
          v68[7] = v9;
          v68[8] = 0;
          v68[9] = 0;
          v69 = 1;
          v70 = v53;
          v71 = v11;
          v72 = v13;
          sub_1AF9C9D18(v68, a3, a1);
          v16 = *(v5 + 48);
          v17 = *(v5 + 64);
          if (!v17)
          {
            v39 = *(v5 + 56);
            v40 = *(v5 + 32);
            goto LABEL_39;
          }

          v54 = *(v5 + 48);
          v47 = v4;
          for (i = 0; i != v17; ++i)
          {
            v20 = (v54 + 48 * i);
            v21 = *v20;
            v22 = v20[4];
            v23 = *(v5 + 72);
            if (v23)
            {
              v24 = v21 == v23;
            }

            else
            {
              v24 = 0;
            }

            if (v24)
            {
              goto LABEL_11;
            }

            v25 = v63;
            if (!v63[11])
            {
              goto LABEL_11;
            }

            v26 = v20[2];
            v27 = v63 + 41;
            v28 = v63[9];
            if (v28 >= 0x10)
            {
              v29 = &v27[v63[8]];
              v30 = v28 >> 4;
              v31 = v63 + 41;
              while (*v29 != v21)
              {
                ++v31;
                v29 += 16;
                if (!--v30)
                {
                  goto LABEL_27;
                }
              }

              v32 = v31[v63[10]];
              v33 = v32 > 5;
              v34 = (1 << v32) & 0x23;
              if (v33 || v34 == 0)
              {
LABEL_11:

                v22(v19);

                continue;
              }
            }

LABEL_27:
            if (swift_conformsToProtocol2() && v26)
            {
              if (sub_1AF5FC8D8(v26))
              {
                goto LABEL_11;
              }

              v36 = v25[9];
              if (v36 < 0x10)
              {
                goto LABEL_11;
              }

              v37 = &v27[v25[8]];
              v38 = 16 * (v36 >> 4);
              while (*v37 != v26)
              {
                v37 += 16;
                v38 -= 16;
                if (!v38)
                {
                  goto LABEL_11;
                }
              }
            }
          }

          v39 = *(v5 + 56);
          v16 = *(v5 + 48);
          v40 = *(v5 + 32);
          if (*(v5 + 64) >= 1)
          {
            swift_arrayDestroy();
          }

          v4 = v47;
LABEL_39:
          v6 = v74;
          ecs_stack_allocator_deallocate(v40, v16, 48 * v39);
          *(v5 + 48) = v50;
          *(v5 + 64) = v49;
          *(v5 + 80) = v48;
          sub_1AF62D29C(v51);
          ecs_stack_allocator_pop_snapshot(v52);
          if (v6)
          {
            os_unfair_lock_unlock(*(v51 + 344));
            os_unfair_lock_unlock(*(v51 + 376));
          }

          ++v4;
        }

        while (v4 != v43);
      }
    }

    sub_1AF9D0594(&v55, &qword_1ED725EA0, &type metadata for QueryResult);
  }
}

uint64_t sub_1AF9CD164(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  swift_retain_n();
  sub_1AF3CBEEC(v3, &v7);

  v23[10] = v17;
  v23[11] = v18;
  v23[12] = v19;
  v24 = v20;
  v23[6] = v13;
  v23[7] = v14;
  v23[8] = v15;
  v23[9] = v16;
  v23[2] = v9;
  v23[3] = v10;
  v23[4] = v11;
  v23[5] = v12;
  v23[0] = v7;
  v23[1] = v8;
  if (sub_1AF9D050C(v23) == 1)
  {
    sub_1AF9CF1B8(v21);
  }

  else
  {
    v21[10] = v17;
    v21[11] = v18;
    v21[12] = v19;
    v22 = v20;
    v21[6] = v13;
    v21[7] = v14;
    v21[8] = v15;
    v21[9] = v16;
    v21[2] = v9;
    v21[3] = v10;
    v21[4] = v11;
    v21[5] = v12;
    v21[0] = v7;
    v21[1] = v8;
  }

  v4 = a1[4];

  sub_1AF68A8E0(a1, v6);
  sub_1AF68873C(v4, v2, v2, a1);
  sub_1AF688940(a1);
}

uint64_t sub_1AF9CD2BC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 40);
  v4 = *(a1 + 88);
  v262 = *(a1 + 72);
  v263 = v4;
  v5 = *(a1 + 120);
  v264 = *(a1 + 104);
  v265 = v5;
  v6 = *(a1 + 24);
  v258 = v2;
  v259 = v6;
  v7 = *(a1 + 56);
  v260 = v3;
  v261 = v7;
  v8 = v258;
  v9 = v3;

  v185 = v9;
  v174 = sub_1AF67D368(v9, v8);
  v172 = v10;
  v12 = v11;
  v196 = v13;
  sub_1AFB943A8();
  v15 = v14;
  v16 = *(&v258 + 1);

  sub_1AF3C9244(v16, v252);
  v207 = v252[1];
  v209 = v252[0];
  v203 = v252[3];
  v205 = v252[2];

  if (v253)
  {
    v17 = -1;
  }

  else
  {
    v17 = 0;
  }

  v18 = vdupq_n_s32(v17);
  v210 = vbslq_s8(v18, xmmword_1AFE20150, v209);
  v208 = vbslq_s8(v18, xmmword_1AFE20160, v207);
  v206 = vbslq_s8(v18, xmmword_1AFE20180, v205);
  v204 = vbslq_s8(v18, xmmword_1AFE201A0, v203);

  v200 = sub_1AF67CACC(&type metadata for LastFrameWorldTransform, &off_1F2529E30, v16);

  v19 = v210;
  v20 = v208;
  v21 = v206;
  v22 = v204;
  if (v12 > v15)
  {
    v19 = v210;
    v20 = v208;
    v21 = v206;
    v22 = v204;
    if (v200)
    {

      sub_1AF3CBE00(v16, v254);
      v186 = v254[0];
      v188 = v254[1];
      v192 = v254[2];
      v201 = v254[3];

      if (v255)
      {
        v23 = -1;
      }

      else
      {
        v23 = 0;
      }

      v24 = vdupq_n_s32(v23);
      v19 = vbslq_s8(v24, xmmword_1AFE20150, v186);
      v20 = vbslq_s8(v24, xmmword_1AFE20160, v188);
      v21 = vbslq_s8(v24, xmmword_1AFE20180, v192);
      v22 = vbslq_s8(v24, xmmword_1AFE201A0, v201);
    }
  }

  v176 = v22;
  v177 = v21;
  v178 = v20;
  v179 = v19;

  sub_1AF3CBEEC(v16, &v211);

  v250[10] = v221;
  v250[11] = v222;
  v250[12] = v223;
  v251 = v224.i8[0];
  v250[6] = v217;
  v250[7] = v218;
  v250[8] = v219;
  v250[9] = v220;
  v250[2] = v213;
  v250[3] = v214;
  v250[4] = v215;
  v250[5] = v216;
  v250[0] = v211;
  v250[1] = v212;
  if (sub_1AF9D050C(v250) == 1)
  {
    v25 = 0;
    v26 = 0.0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 1;
    v36 = xmmword_1AFE20160;
    v37 = 0uLL;
    __asm { FMOV            V4.4S, #1.0 }

    v42 = -1;
    v43 = 1.0;
    v44 = 0.5;
    v45 = 255;
    v46 = 0;
    v47 = 2;
    v48 = 1050253722;
    v49 = -13107;
    v50 = 1045220557;
    v51 = 1086918618;
    v52 = 1086918618;
    v53 = 1;
    v54 = 0;
    v55 = 2;
    v56 = 0;
    v57 = 2;
    v58 = 0;
    v59 = 2;
  }

  else
  {
    v26 = *&v211;
    v35 = BYTE4(v211);
    v247 = *(&v211 + 5);
    v248 = BYTE7(v211);
    v52 = HIDWORD(v211);
    v54 = DWORD2(v211);
    v28 = *(&v212 + 1);
    v27 = v212;
    v55 = v213;
    v29 = BYTE1(v213);
    v53 = BYTE2(v213);
    v246[0] = *(&v213 + 3);
    v30 = v214;
    *(v246 + 5) = *(&v213 + 1);
    v31 = *(&v214 + 1);
    v57 = v215;
    v32 = v216;
    *(v245 + 7) = *(&v215 + 1);
    v245[0] = *(&v215 + 1);
    v33 = *(&v216 + 1);
    v45 = v217;
    v59 = BYTE1(v217);
    v49 = WORD1(v217);
    v44 = *(&v217 + 2);
    v46 = DWORD1(v217);
    v43 = *(&v217 + 3);
    v48 = v218.i32[1];
    v50 = v218.i32[0];
    v51 = v218.i64[1];
    v36 = v219;
    v58 = v220.i32[1];
    v56 = v220.i32[0];
    v42 = v220.u32[2];
    v34 = v220.u32[3];
    v47 = v221.i8[0];
    v244[0] = *(v221.i64 + 1);
    *(v244 + 7) = v221.i64[1];
    _Q4 = v222;
    v37 = v223;
    v25 = v224.i8[0];
  }

  v249 = v35;
  v266 = v26;
  v267 = v35;
  v268 = v247;
  v269 = v248;
  v171 = v54;
  v270 = v54;
  v271 = v52;
  v187 = v27;
  v272 = v27;
  v182 = v28;
  v273 = v28;
  v202 = v55;
  v274 = v55;
  v167 = v29;
  v275 = v29;
  v184 = v53;
  v276 = v53;
  *v277 = v246[0];
  *&v277[5] = *(v246 + 5);
  v158 = v32;
  v159 = v30;
  *&v277[13] = v30;
  *&v277[21] = v31;
  v181 = v57;
  v277[29] = v57;
  *v278 = v245[0];
  *&v278[7] = *(v245 + 7);
  *&v278[15] = v32;
  *&v278[23] = v33;
  v180 = v45;
  v278[31] = v45;
  v160 = v59;
  v278[32] = v59;
  v279 = v49;
  v280 = v46;
  v281 = v44;
  v282 = v43;
  v283 = v50;
  v284 = v48;
  v285 = v51;
  v169 = v37;
  v170 = v36;
  v286 = v36;
  v287 = v56;
  v288 = v58;
  v289 = v42;
  v290 = v34;
  v291 = v47;
  *v292 = v244[0];
  *&v292[7] = *(v244 + 7);
  v168 = _Q4;
  v293 = _Q4;
  v294 = v37;
  v183 = v25;
  v295 = v25;
  *&v60 = sub_1AF9C98A4(v210, v208, v206);
  v166 = v60;
  *&v61 = sub_1AF9C99D8(v210, v208, v206);
  v165 = v61;

  if (v196)
  {
    v62.f32[0] = sub_1AF5AF890(v16);
    v193 = v63;
    v197 = v62;
    v189 = v64;
    v163 = v65;

    v67 = v189;
    v66 = v193;
    v68 = v197;
  }

  else
  {
    sub_1AFB95040(v9, &v256);
    v194 = v256.columns[1];
    v198 = v256.columns[0];
    v190 = v256.columns[2];
    v164 = v256.columns[3];

    if (v257)
    {
      v69 = -1;
    }

    else
    {
      v69 = 0;
    }

    v70 = vdupq_n_s32(v69);
    v71 = vbslq_s8(v70, xmmword_1AFE20150, v198);
    v72 = vbslq_s8(v70, xmmword_1AFE20160, v194);
    v73 = vbslq_s8(v70, xmmword_1AFE20180, v190);
    v74 = vbslq_s8(v70, xmmword_1AFE201A0, v164);
    v68 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v71, v210.f32[0]), v72, *v210.f32, 1), v73, v210, 2), v74, v210, 3);
    v66 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v71, v208.f32[0]), v72, *v208.f32, 1), v73, v208, 2), v74, v208, 3);
    v67 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v71, v206.f32[0]), v72, *v206.f32, 1), v73, v206, 2), v74, v206, 3);
    v163 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v71, v204.f32[0]), v72, *v204.f32, 1), v73, v204, 2), v74, v204, 3);
  }

  v75 = vmulq_f32(v68, v68);
  v76 = vmulq_f32(v66, v66);
  v77 = vmulq_f32(v67, v67);
  v78 = vzip2q_s32(v75, v77);
  v79 = vzip1q_s32(vzip1q_s32(v75, v77), v76);
  v80 = vtrn2q_s32(v75, v76);
  v80.i32[2] = v77.i32[1];
  v81 = vaddq_f32(vzip1q_s32(v78, vdupq_laneq_s32(v76, 2)), vaddq_f32(v79, v80));
  v76.i64[0] = 0x80000000800000;
  v76.i64[1] = 0x80000000800000;
  v82 = vcgeq_f32(v76, v81);
  v81.i32[3] = 0;
  v83 = vrsqrteq_f32(v81);
  v84 = vmulq_f32(v83, vrsqrtsq_f32(v81, vmulq_f32(v83, v83)));
  v85 = v82;
  v85.i32[3] = 0;
  v86 = vbslq_s8(vcltzq_s32(v85), v81, vmulq_f32(v84, vrsqrtsq_f32(v81, vmulq_f32(v84, v84))));
  v87 = vmulq_n_f32(v68, v86.f32[0]);
  v88 = vmulq_lane_f32(v66, *v86.f32, 1);
  v89 = vmulq_laneq_f32(v67, v86, 2);
  v90 = vuzp1q_s32(v89, v89);
  v91 = vuzp1q_s32(v88, v88);
  v92 = v87;
  if (v82.i32[0])
  {
    v93 = vmlaq_f32(vmulq_f32(vextq_s8(v90, v89, 0xCuLL), vnegq_f32(v88)), v89, vextq_s8(v91, v88, 0xCuLL));
    v92 = vextq_s8(vuzp1q_s32(v93, v93), v93, 0xCuLL);
  }

  v94 = vuzp1q_s32(v87, v87);
  v95 = v88;
  if (v82.i32[1])
  {
    v96 = vmlaq_f32(vmulq_f32(vextq_s8(v94, v87, 0xCuLL), vnegq_f32(v89)), v87, vextq_s8(v90, v89, 0xCuLL));
    v95 = vextq_s8(vuzp1q_s32(v96, v96), v96, 0xCuLL);
  }

  if (v82.i32[2])
  {
    v97 = vmlaq_f32(vmulq_f32(vextq_s8(v91, v88, 0xCuLL), vnegq_f32(v87)), v88, vextq_s8(v94, v87, 0xCuLL));
    v89 = vextq_s8(vuzp1q_s32(v97, v97), v97, 0xCuLL);
  }

  v98 = (*v92.i32 + *&v95.i32[1]) + v89.f32[2];
  v195 = v66;
  v199 = v68;
  v191 = v67;
  if (v98 > 0.0)
  {
    v99 = sqrtf(v98 + 1.0);
    *v100.f32 = vsub_f32(*&vzip2q_s32(v95, vuzp1q_s32(v95, v89)), *&vtrn2q_s32(v89, vzip2q_s32(v89, v92)));
    v100.f32[2] = *&v92.i32[1] - *v95.i32;
    v100.f32[3] = v99 * v99;
    v101 = 0.5 / v99;
LABEL_27:
    v102 = vmulq_n_f32(v100, v101);
    goto LABEL_36;
  }

  if (*v92.i32 < *&v95.i32[1] || *v92.i32 < v89.f32[2])
  {
    if (*&v95.i32[1] <= v89.f32[2])
    {
      v122 = vzip2q_s32(v92, v95).u64[0];
      v123 = __PAIR64__(v92.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v89.f32[2] + 1.0) - *v92.i32) - *&v95.i32[1])));
      v124 = vdup_lane_s32(*v95.i8, 0);
      v125 = vsub_f32(*v92.i8, v124);
      v124.i32[0] = v123.i32[0];
      v124.i32[0] = vmul_f32(v123, v124).u32[0];
      v124.i32[1] = v125.i32[1];
      *v100.f32 = vadd_f32(v122, *v89.f32);
      *&v100.u32[2] = v124;
      v101 = 0.5 / v123.f32[0];
      goto LABEL_27;
    }

    v105 = sqrtf(((*&v95.i32[1] + 1.0) - *v92.i32) - v89.f32[2]);
    v109.f32[0] = *&v92.i32[1] + *v95.i32;
    v104 = vzip2q_s32(v92, v95).u64[0];
    v109.f32[1] = v105 * v105;
    *&v109.u32[2] = vext_s8(vadd_f32(*v89.f32, v104), vsub_f32(*v89.f32, v104), 4uLL);
  }

  else
  {
    v105 = sqrtf(((*v92.i32 + 1.0) - *&v95.i32[1]) - v89.f32[2]);
    v109.f32[0] = v105 * v105;
    v106 = *&v92.i32[1] + *v95.i32;
    v107 = vzip2q_s32(v92, v95).u64[0];
    LODWORD(v108) = vadd_f32(v107, *v89.f32).u32[0];
    HIDWORD(v108) = vsub_f32(v107, *&v89).i32[1];
    v109.f32[1] = v106;
    v109.i64[1] = v108;
  }

  v102 = vmulq_n_f32(v109, 0.5 / v105);
LABEL_36:
  v161 = v102;
  v110 = v42 | (v34 << 32);
  v111 = sub_1AF3CBD30(v110);
  v112 = 0uLL;
  v113 = 0uLL;
  v114 = v202;
  v115 = v187;
  v116 = v182;
  if (!v202)
  {
    v117.i64[0] = v187;
    v117.i64[1] = v182;
    v113 = vmaxq_u32(v117, xmmword_1AFE552F0);
  }

  v118 = v184;
  v119 = v183;
  v162 = v110;
  if (v111 == 5)
  {
    LODWORD(v120) = 0;
  }

  else
  {
    if (v111 <= 1u)
    {
      if (v111)
      {
        v121 = xmmword_1AFE20160;
      }

      else
      {
        v121 = xmmword_1AFE20150;
      }
    }

    else if (v111 == 2)
    {
      v121 = xmmword_1AFE20180;
    }

    else if (v111 == 3)
    {
      v121 = xmmword_1AFE201A0;
    }

    else
    {
      v121 = xmmword_1AFE42ED0;
    }

    v120 = HIDWORD(v111);
    v112 = v121;
  }

  v126 = v249;
  v127 = v26;
  if (v249)
  {
    v128 = 0.0;
  }

  else
  {
    v128 = v26;
  }

  if (v202 == 1)
  {
    v129 = v174 - v172;
    if (v187 <= 1)
    {
      v130 = 1;
    }

    else
    {
      v130 = v187;
    }

    if (!v200)
    {
      v131 = 0;
LABEL_66:
      v133 = v115;
      goto LABEL_68;
    }
  }

  else
  {
    v130 = 0;
    v131 = 0;
    v129 = v174 - v172;
    if (!v200)
    {
      goto LABEL_64;
    }
  }

  v173 = v113;
  v175 = v112;
  v132 = sub_1AFB9402C();
  v113 = v173;
  v112 = v175;
  v116 = v182;
  v119 = v183;
  v118 = v184;
  v115 = v187;
  v114 = v202;
  LOBYTE(v131) = v160;
  if (v132 != 2)
  {
    LOBYTE(v131) = 0;
  }

  v131 = v131;
LABEL_64:
  if (v114)
  {
    if (v114 != 1)
    {
      LODWORD(v133) = 0x7FFFFFFF;
      goto LABEL_72;
    }

    goto LABEL_66;
  }

  v134.i64[0] = v115;
  v134.i64[1] = v116;
  v135 = vmaxq_u32(v134, xmmword_1AFE552F0);
  v133 = (v135.i32[0] * v135.i32[1] * v135.i32[2]);
LABEL_68:
  if (v133 >= 0x7FFFFFFF)
  {
    LODWORD(v133) = 0x7FFFFFFF;
  }

LABEL_72:
  *&v136 = vcvt_f32_u32(*v113.i8);
  *(&v136 + 2) = v113.u32[2];
  HIDWORD(v136) = 0;
  v211 = v136;
  v212 = v166;
  v213 = v165;
  *&v214 = __PAIR64__(v52, v171);
  *(&v214 + 1) = __PAIR64__(LODWORD(v43), LODWORD(v44));
  *&v215 = __PAIR64__(v48, v50);
  v216 = v170;
  *&v217 = __PAIR64__(v58, v56);
  v218 = v168;
  v219 = v169;
  v220 = v210;
  v221 = v208;
  v222 = v206;
  v223 = v204;
  v224 = v179;
  v225 = v178;
  v226 = v177;
  v227 = v176;
  v228 = v161;
  v229 = v199;
  v230 = v195;
  v231 = v191;
  v232 = v163;
  v233 = v112;
  v234 = v120;
  v235 = v128;
  v236 = v130;
  v237 = v129;
  v238 = v131;
  v239 = v118 & 1;
  v240 = v119 & 1;
  v241 = v200;
  v242 = v167;
  v243 = v133;
  v137 = *a1;
  if (*a1)
  {
    ObjectType = swift_getObjectType();
    type metadata accessor for emitter_shape_uniforms(0);
    v140 = v139;
    swift_unknownObjectRetain();
    sub_1AF6F4524(&v211, 1, ObjectType, v140, v141, v142, v143, v144);
    v145 = v127;
    if (v202 == 1)
    {
      if ((v187 & 0xFFFFFFFE) != 0)
      {
        v146 = v187;
      }

      else
      {
        v146 = 1;
      }

      v147 = sub_1AF9C6718(v146);
      [v137 setBytes:v147 + 32 length:16 * *(v147 + 16) atIndex:6];
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v145 = v127;
  }

  v148 = sub_1AF8D93C8(v162, &v211, *(a1 + 136), *(a1 + 144));
  if (v137)
  {
    [v137 setTexture:v148 atIndex:0];
  }

  sub_1AF9D0DCC(0, &qword_1ED730B70, &type metadata for FunctionConstant, MEMORY[0x1E69E6F90]);
  v149 = swift_allocObject();
  *(v149 + 16) = xmmword_1AFE4C6A0;
  if (v126)
  {
    v150 = dword_1AFE8C0B4[SLODWORD(v145)];
  }

  else
  {
    v150 = 5;
  }

  v151 = v181;
  *(v149 + 32) = xmmword_1AFE8B900;
  *(v149 + 48) = 0;
  *(v149 + 64) = v150;
  *(v149 + 128) = 14;
  v152 = dword_1AFE8C0CC[v202];
  LOBYTE(v211) = 0;
  *(v149 + 144) = xmmword_1AFE8B910;
  *(v149 + 160) = 0;
  *(v149 + 176) = v152;
  *(v149 + 240) = 14;
  if (v180 > 1)
  {
    if (v180 == 255)
    {
      v153 = -1;
    }

    else
    {
      v153 = v158 + 2;
    }
  }

  else
  {
    v153 = v180 != 0;
  }

  *(v149 + 256) = xmmword_1AFE8B920;
  *(v149 + 272) = 0;
  *(v149 + 288) = v153;
  *(v149 + 352) = 14;
  if (v181 >= 2)
  {
    v151 = v159 + 2;
  }

  *(v149 + 368) = xmmword_1AFE8B930;
  *(v149 + 384) = 0;
  *(v149 + 400) = v151;
  *(v149 + 464) = 14;
  *(v149 + 480) = xmmword_1AFE8B940;
  *(v149 + 496) = 0;
  *(v149 + 512) = v148 != 0;
  *(v149 + 576) = 13;
  v154 = *(v8 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);

  MEMORY[0x1EEE9AC00](v155, v156);
  sub_1AFCBF008(v185, sub_1AF9D0738);

  swift_unknownObjectRelease();
}

uint64_t sub_1AF9CE11C()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1AF9CE1C0(unint64_t a1, uint64_t a2)
{
  v4 = 8 * a2;
  if (a2 <= 0)
  {
    v9 = MEMORY[0x1E69E7CC0];
    if (!a2)
    {
      v12 = 1;
      v7 = MEMORY[0x1E69E7CC0];
      v5 = MEMORY[0x1E69E7CC0];
      v13 = *(MEMORY[0x1E69E7CC0] + 16);
      if (v13)
      {
        goto LABEL_9;
      }

      goto LABEL_107;
    }

    v8 = MEMORY[0x1E69E7CC0] + 32;
    bzero((MEMORY[0x1E69E7CC0] + 32), 4 * a2);
    bzero((v9 + 32), 4 * a2);
    v7 = v9;
    v5 = v9;
    v6 = (v9 + 32);
  }

  else
  {
    v5 = sub_1AFDFD488();
    *(v5 + 16) = a2;
    v6 = (v5 + 32);
    bzero((v5 + 32), 4 * a2);
    v7 = sub_1AFDFD488();
    *(v7 + 16) = a2;
    v8 = v7 + 32;
    bzero((v7 + 32), 4 * a2);
    v9 = sub_1AFDFD488();
    *(v9 + 16) = a2;
  }

  v10 = v9 + 32;
  bzero((v9 + 32), v4);
  if (a2 < 0x18)
  {
    v11 = 0;
    do
    {
LABEL_7:
      v6->f32[v11] = 1.0 / *(&unk_1F24FE8E8 + v11 + 4);
      *(v8 + 4 * v11) = 0;
      *(v10 + 8 * v11++) = a1;
    }

    while (a2 != v11);
    goto LABEL_8;
  }

  v11 = 0;
  v64 = v6->u64 + 4 * a2;
  v65 = v8 + 4 * a2;
  v66 = v9 + v4 + 32;
  v67 = (&unk_1F24FE8E8 + v4 + 32);
  v69 = v6 < v66 && v10 < v64;
  v71 = v6 < v67 && v64 > &xmmword_1F24FE908;
  v73 = v8 < v66 && v10 < v65;
  v75 = v8 < v67 && v65 > &xmmword_1F24FE908;
  v77 = v10 < v67 && v66 > &xmmword_1F24FE908;
  if (v8 < v64 && v6 < v65)
  {
    goto LABEL_7;
  }

  if (v69)
  {
    goto LABEL_7;
  }

  if (v71)
  {
    goto LABEL_7;
  }

  if (v73)
  {
    goto LABEL_7;
  }

  if (v75)
  {
    goto LABEL_7;
  }

  if (v77)
  {
    goto LABEL_7;
  }

  v11 = a2 & 0xFFFFFFFFFFFFFFF8;
  v79 = vdupq_n_s64(a1);
  v80 = v6 + 1;
  v81 = (v9 + 64);
  v82 = (v8 + 16);
  v83 = &xmmword_1F24FE928;
  __asm { FMOV            V1.4S, #1.0 }

  v88 = a2 & 0xFFFFFFFFFFFFFFF8;
  do
  {
    v90 = *(v83 - 2);
    v89 = *(v83 - 1);
    v92 = *v83;
    v91 = v83[1];
    v83 += 4;
    v80[-1] = vdivq_f32(_Q1, vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_s64(v90)), vcvtq_f64_s64(v89)));
    *v80 = vdivq_f32(_Q1, vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_s64(v92)), vcvtq_f64_s64(v91)));
    *(v82 - 1) = 0uLL;
    *v82 = 0uLL;
    v81[-2] = v79;
    v81[-1] = v79;
    *v81 = v79;
    v81[1] = v79;
    v81 += 4;
    v80 += 2;
    v82 += 2;
    v88 -= 8;
  }

  while (v88);
  if (v11 != a2)
  {
    goto LABEL_7;
  }

LABEL_8:
  v12 = 0;
  v13 = *(v9 + 16);
  if (v13)
  {
LABEL_9:
    v14 = v9 + 32;
    v15 = v7 + 32;
    v16 = v5 + 32;
    v17 = 4 * a2 + 32;
    v18 = v7 + v17;
    v19 = v5 + v17;
    v20 = v9 + v4 + 32;
    v21 = &unk_1F24FE8E8 + v4 + 32;
    v23 = v7 + 32 < v19 && v16 < v18;
    if (v15 < v20 && v14 < v18)
    {
      v23 = 1;
    }

    v26 = v15 < v21 && v18 > &xmmword_1F24FE908 || v23;
    if (v16 < v20 && v14 < v19)
    {
      v26 = 1;
    }

    if (v16 < v21 && v19 > &xmmword_1F24FE908)
    {
      v29 = 1;
    }

    else
    {
      v29 = v26;
    }

    if (v14 < v21 && v20 > &xmmword_1F24FE908)
    {
      v29 = 1;
    }

    while (1)
    {
      if (v13 > 3)
      {
        v31 = v13 & 0xFFFFFFFFFFFFFFFCLL;
        v33 = 0uLL;
        v34 = v13 & 0xFFFFFFFFFFFFFFFCLL;
        v35 = (v9 + 48);
        v36 = 0uLL;
        do
        {
          v33 = vaddq_s64(v35[-1], v33);
          v36 = vaddq_s64(*v35, v36);
          v35 += 2;
          v34 -= 4;
        }

        while (v34);
        v32 = vaddvq_s64(vaddq_s64(v36, v33));
        if (v13 == v31)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v31 = 0;
        v32 = 0;
      }

      v37 = v13 - v31;
      v38 = (v14 + 8 * v31);
      do
      {
        v39 = *v38++;
        v32 += v39;
        --v37;
      }

      while (v37);
LABEL_51:
      if (v32 <= 0)
      {
        break;
      }

      if (v12)
      {
        v12 = 1;
      }

      else
      {
        if ((a2 < 0xC) | v29 & 1)
        {
          v40 = 0;
        }

        else
        {
          v41 = a2 & 0xFFFFFFFFFFFFFFFCLL;
          v42 = (v5 + 32);
          v43 = (v7 + 32);
          v44 = &xmmword_1F24FE908;
          v45 = (v9 + 32);
          do
          {
            v47 = *v44;
            v46 = v44[1];
            v44 += 2;
            v48.i64[0] = v45[1].i64[0] / v46.i64[0];
            v48.i64[1] = v45[1].i64[1] / v46.i64[1];
            v49 = v47.i64[1];
            v50 = vcvtq_f64_s64(v47);
            v51 = v45->i64[0] / v47.i64[0] * v47.i64[0];
            v47.i64[0] = v45->i64[0] / v47.i64[0];
            v47.i64[1] = v45->i64[1] / v47.i64[1];
            v52.i64[0] = v51;
            v52.i64[1] = v47.i64[1] * v49;
            v53.i64[0] = v48.i64[0] * v46.i64[0];
            v53.i64[1] = v48.i64[1] * v46.i64[1];
            v54 = *v42;
            *v43 = vaddq_f32(*v43, vmulq_f32(*v42, vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_s64(vsubq_s64(*v45, v52))), vcvtq_f64_s64(vsubq_s64(v45[1], v53)))));
            ++v43;
            *v42++ = vdivq_f32(v54, vcvt_hight_f32_f64(vcvt_f32_f64(v50), vcvtq_f64_s64(v46)));
            *v45 = v47;
            v45[1] = v48;
            v45 += 2;
            v41 -= 4;
          }

          while (v41);
          v40 = a2 & 0xFFFFFFFFFFFFFFFCLL;
          if ((a2 & 0xFFFFFFFFFFFFFFFCLL) == a2)
          {
            goto LABEL_43;
          }
        }

        v55 = 0;
        v56 = a2 - v40;
        v57 = v16 + 4 * v40;
        v58 = v15 + 4 * v40;
        v59 = 8 * v40;
        v60 = &unk_1F24FE8E8 + 8 * v40 + 32;
        v61 = v14 + v59;
        do
        {
          v62 = *(v61 + 8 * v55);
          v63 = *&v60[8 * v55];
          *(v58 + 4 * v55) = *(v58 + 4 * v55) + (*(v57 + 4 * v55) * (v62 % v63));
          *(v57 + 4 * v55) = *(v57 + 4 * v55) / v63;
          *(v61 + 8 * v55++) = v62 / v63;
        }

        while (v56 != v55);
LABEL_43:
        v13 = *(v9 + 16);
        if (!v13)
        {
          break;
        }
      }
    }
  }

LABEL_107:

  return v7;
}

void *sub_1AF9CE6B8()
{
  result = sub_1AF440438(MEMORY[0x1E69E7CC0]);
  qword_1EB6C3480 = result;
  return result;
}

void *sub_1AF9CE6E0()
{
  result = sub_1AF440464(MEMORY[0x1E69E7CC0]);
  qword_1EB6C3488 = result;
  return result;
}

uint64_t sub_1AF9CE708(uint64_t result, void **a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, void *a10, uint64_t a11)
{
  v16 = result;
  if (*(result + 528) > 0 || !*a2)
  {
    v17 = a3[2];
    v60 = result;
    if (v17)
    {
      v18 = a3[3] == a4 && a3[4] == a5;
      if (v18 || (sub_1AFDFEE28() & 1) != 0)
      {
        if (a6)
        {
          v19 = a6;
        }

        else
        {
          v19 = MEMORY[0x1E69E7CC0];
        }

        v20 = a3[5];
        swift_unknownObjectRetain();

        v21 = sub_1AFB7B210(v19, v20);

        v22 = v17;

        if (v21)
        {
          goto LABEL_22;
        }

        swift_unknownObjectRelease();
        v16 = v60;
      }
    }

    v23 = *(v16 + 320);
    v72 = v23;

    if (a6)
    {

      sub_1AF490060(a6);
      v23 = v72;
    }

    sub_1AFDFF308();
    swift_unknownObjectRetain();

    sub_1AF88352C(v66, a4, a5, a8, v23);
    v24 = sub_1AFDFF2E8();
    *&v67 = a4;
    *(&v67 + 1) = a5;
    v68 = 0;
    v69 = a8;
    v70 = v23;
    v71 = v24;
    v22 = sub_1AF73BD84(&v67, 0, a9 & 1, a10);
    v26 = v25;

    swift_unknownObjectRelease();

    if (!v22)
    {
      if (a9)
      {
      }

      sub_1AFDFE218();

      v61 = 0x20676E697373694DLL;
      v62 = 0xEF206C656E72656BLL;
      MEMORY[0x1B2718AE0](a4, a5);
      goto LABEL_65;
    }

    a3[2] = v22;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    a3[3] = a4;
    a3[4] = a5;

    if (a6)
    {
      v27 = a6;
    }

    else
    {
      v27 = MEMORY[0x1E69E7CC0];
    }

    a3[5] = v27;

LABEL_22:
    v28 = a2;
    v29 = *a2;
    if (!*a2)
    {
      return swift_unknownObjectRelease();
    }

    v30 = v22;
    v31 = *(v60 + 424);
    v58 = *(v60 + 432);
    if (v31)
    {
      v32 = *(v60 + 440);
      if (*(v60 + 336))
      {
        v33 = *(v60 + 512);
      }

      else
      {
        LODWORD(v33) = 0;
      }

      ObjectType = swift_getObjectType();
      v35 = *(v60 + 344);
      v36 = (*(v60 + 352) + *(v60 + 368) * v33) | (*(v60 + 368) << 32);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      sub_1AF6F34C4(v35, v36, 0, 4, ObjectType);
      sub_1AF6F353C(v31, v58, v32, 0);
      swift_unknownObjectRelease();
      v28 = a2;
    }

    else
    {
      swift_unknownObjectRetain();
    }

    v37 = v28[1];
    v38 = v28[2];
    v39 = v28[5];

    v40 = sub_1AF67ECF0(v39, v37);

    if (v40 == 2 || (, v41 = sub_1AF3CD0F8(v38), v43 = v42, , (v43 & 1) != 0))
    {
      v41 = 0;
      v44 = 1;
    }

    else
    {
      if ((v40 & 1) == 0)
      {
        v41 = 0;
      }

      v44 = v40 ^ 1;
    }

    v45 = *(a11 + 45);
    if (v45 == 2)
    {
      if (v44)
      {
        if (*(v60 + 120))
        {
          v46 = 0;
          v47 = 0;
          v48 = *(v60 + 128);
          v49 = v58 + 700;
          do
          {
            if (v47 >> 6) < *(v48 + 24) && ((*(*(v48 + 32) + 8 * (v47 >> 6)) >> v47))
            {
              swift_getObjectType();
              [v29 setBuffer:*(v60 + 144) offset:v46 atIndex:0];
              sub_1AF6F46F4(v30, v31, v49);
            }

            ++v47;
            v46 += 4;
            v49 += 12;
          }

          while (v47 != 16);
          goto LABEL_61;
        }

        swift_getObjectType();
        [v29 setBuffer:*(v60 + 144) offset:60 atIndex:0];
        v50 = v58 + 108;
        goto LABEL_59;
      }

      sub_1AF442324(v60, &v61);
      if (v41 == -1)
      {
        v51 = 15;
      }

      else
      {
        v51 = v41;
      }

      swift_getObjectType();
      [v29 setBuffer:v63 offset:4 * v51 atIndex:0];
      sub_1AF58D38C(&v61);
      sub_1AF442324(v60, &v61);
      v52 = v64;
      v53 = v65 + 12 * v41 + 700;
      goto LABEL_57;
    }

    if (v45 == 3)
    {
      if (v44)
      {
        swift_getObjectType();
        [v29 setBuffer:*(v60 + 144) offset:60 atIndex:0];
        v50 = v58 + 96;
LABEL_59:
        v55 = v50;
        v56 = v30;
        v57 = v31;
        goto LABEL_60;
      }

      sub_1AF442324(v60, &v61);
      if (v41 == -1)
      {
        v54 = 15;
      }

      else
      {
        v54 = v41;
      }

      swift_getObjectType();
      [v29 setBuffer:v63 offset:4 * v54 atIndex:0];
      sub_1AF58D38C(&v61);
      sub_1AF442324(v60, &v61);
      v52 = v64;
      v53 = v65 + 12 * v41 + 508;
LABEL_57:
      sub_1AF58D38C(&v61);
      v55 = v53;
      v56 = v30;
      v57 = v52;
LABEL_60:
      sub_1AF6F46F4(v56, v57, v55);
LABEL_61:
      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }

    v61 = 0;
    v62 = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000022, 0x80000001AFF42A20);
    LOBYTE(v72) = v45;
    sub_1AFDFE458();
LABEL_65:
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AF9CEE0C(unint64_t a1)
{
  v3 = sub_1AF6C0D50();
  v4 = v3 * a1;
  result = (v3 * a1) >> 64;
  if (v4 < a1)
  {
    v6 = -a1 % a1;
    if (v6 > v4)
    {
      v7 = v1[2];
      v8 = v1[3];
      v9 = *v1;
      v10 = v1[1];
      do
      {
        v11 = 9 * __ROR8__(5 * v10, 57);
        v12 = v9 ^ v7;
        v13 = v10 ^ v8;
        v7 ^= v9 ^ (v10 << 17);
        v10 ^= v12;
        v9 ^= v13;
        v8 = __ROR8__(v13, 19);
      }

      while (v6 > v11 * a1);
      *v1 = v9;
      v1[1] = v10;
      result = (v11 * a1) >> 64;
      v1[2] = v7;
      v1[3] = v8;
    }
  }

  return result;
}

BOOL sub_1AF9CEE98(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0x100000000) != 0)
  {
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        return (a2 & 0x100000000) != 0 && a2 == 3;
      }

      else if (a1 == 4)
      {
        return (a2 & 0x100000000) != 0 && a2 == 4;
      }

      else
      {
        return (a2 & 0x100000000) != 0 && a2 > 4;
      }
    }

    else if (a1)
    {
      if (a1 == 1)
      {
        return (a2 & 0x100000000) != 0 && a2 == 1;
      }

      else
      {
        return (a2 & 0x100000000) != 0 && a2 == 2;
      }
    }

    else
    {
      return (a2 & 0x100000000) != 0 && !a2;
    }
  }

  else
  {
    if ((a2 & 0x100000000) != 0)
    {
      return 0;
    }

    return *&a1 == *&a2;
  }
}

uint64_t sub_1AF9CEF58(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 != 1)
    {
      if (a1 | a2)
      {
        if (a1 ^ 1 | a2)
        {
          if (a6 != 2 || a4 != 2 || a5)
          {
            return 0;
          }
        }

        else if (a6 != 2 || a4 != 1 || a5)
        {
          return 0;
        }
      }

      else if (a6 != 2 || a5 | a4)
      {
        return 0;
      }

      return 1;
    }

    if (a6 == 1)
    {
      v6 = 0;
      *&v7 = a1;
      *(&v7 + 1) = a2;
      *&v8 = a4;
      *(&v8 + 1) = a5;
      while (1)
      {
        v19 = v7;
        v16 = *(&v19 & 0xFFFFFFFFFFFFFFF3 | (4 * (v6 & 3)));
        v20 = v8;
        v9 = v16 == *(&v20 & 0xFFFFFFFFFFFFFFF3 | (4 * (v6 & 3)));
        result = v9;
        if (v6 == 2)
        {
          break;
        }

        while (1)
        {
          ++v6;
          if (v9)
          {
            break;
          }

          v9 = 0;
          result = 0;
          if (v6 == 2)
          {
            return result;
          }
        }
      }

      return result;
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

  v11 = 0;
  *&v12 = a1;
  *(&v12 + 1) = a2;
  *&v13 = a4;
  *(&v13 + 1) = a5;
  while (1)
  {
    v17 = v12;
    v15 = *(&v17 & 0xFFFFFFFFFFFFFFF3 | (4 * (v11 & 3)));
    v18 = v13;
    v14 = v15 == *(&v18 & 0xFFFFFFFFFFFFFFF3 | (4 * (v11 & 3)));
    result = v14;
    if (v11 == 2)
    {
      break;
    }

    while (1)
    {
      ++v11;
      if (v14)
      {
        break;
      }

      v14 = 0;
      result = 0;
      if (v11 == 2)
      {
        return result;
      }
    }
  }

  return result;
}

BOOL sub_1AF9CF0E0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        return a1 == a4;
      }
    }

    else if (a6 == 2 && !(a5 | a4))
    {
      return 1;
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

  v7 = 0;
  *&v8 = a1;
  *(&v8 + 1) = a2;
  *&v9 = a4;
  *(&v9 + 1) = a5;
  while (1)
  {
    v12 = v8;
    v11 = *(&v12 & 0xFFFFFFFFFFFFFFF3 | (4 * (v7 & 3)));
    v13 = v9;
    v10 = v11 == *(&v13 & 0xFFFFFFFFFFFFFFF3 | (4 * (v7 & 3)));
    result = v10;
    if (v7 == 2)
    {
      break;
    }

    while (1)
    {
      ++v7;
      if (v10)
      {
        break;
      }

      LOBYTE(v10) = 0;
      result = 0;
      if (v7 == 2)
      {
        return result;
      }
    }
  }

  return result;
}

__n128 sub_1AF9CF1B8@<Q0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = 1;
  *(a1 + 8) = 0x40C90FDA00000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 2;
  *(a1 + 34) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 2;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 767;
  *(a1 + 100) = xmmword_1AFE8B950;
  *(a1 + 116) = 1050253722;
  *(a1 + 128) = xmmword_1AFE20160;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0xFFFFFFFFLL;
  *(a1 + 160) = 2;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 176) = result;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  return result;
}

uint64_t sub_1AF9CF244(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 148);
  v4 = *(a2 + 104);
  v3 = *(a2 + 108);
  v6 = *(a2 + 144);
  v5 = *(a2 + 148);
  if (*(a1 + 104) == 0.0 && *(a1 + 108) == 0.0)
  {
    if ((v4 != 0.0 || v3 != 0.0) && (v6 != 0.0 || v5 != 0.0))
    {
      return 1;
    }

    return (*(a1 + 96) != 255) ^ (*(a2 + 96) != 255) | (*(a1 + 208) ^ *(a2 + 208)) & 1u;
  }

  if (*(a1 + 144) != 0.0)
  {
    if ((v4 != 0.0 || v3 != 0.0) && (v6 != 0.0 || v5 != 0.0))
    {
      return (*(a1 + 96) != 255) ^ (*(a2 + 96) != 255) | (*(a1 + 208) ^ *(a2 + 208)) & 1u;
    }

    return 1;
  }

  if (v4 == 0.0 && v3 == 0.0)
  {
    if (v2 == 0.0)
    {
      return (*(a1 + 96) != 255) ^ (*(a2 + 96) != 255) | (*(a1 + 208) ^ *(a2 + 208)) & 1u;
    }

    return 1;
  }

  if (v6 == 0.0)
  {
    if ((v2 != 0.0) != (v5 == 0.0))
    {
      return (*(a1 + 96) != 255) ^ (*(a2 + 96) != 255) | (*(a1 + 208) ^ *(a2 + 208)) & 1u;
    }

    return 1;
  }

  if (v2 == 0.0)
  {
    return 1;
  }

  return (*(a1 + 96) != 255) ^ (*(a2 + 96) != 255) | (*(a1 + 208) ^ *(a2 + 208)) & 1u;
}

uint64_t sub_1AF9CF348()
{
  v0 = sub_1AFDFF118();

  if (v0 >= 0x13)
  {
    return 19;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1AF9CF39C(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF388();
  if (v1)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  sub_1AF448018(v8, v9);
  v3 = sub_1AFDFEAB8();
  if (v3 > 4)
  {
    if (v3 <= 6)
    {
      v6 = 1;
      v5 = 4;
      goto LABEL_13;
    }

    if (v3 == 7)
    {
      sub_1AF448018(v8, v9);
      sub_1AFDFEAA8();
      v6 = 0;
      v5 = v7;
      goto LABEL_13;
    }

    if (v3 == 8)
    {
      v6 = 1;
      v5 = 5;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (v3 >= 5)
  {
LABEL_14:
    sub_1AFDFE2C8();
    swift_allocError();
    sub_1AFDFE288();
    swift_willThrow();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v8);
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v5 = v3;
  v6 = 1;
LABEL_13:
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v8);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  v8[0] = v6;
  return v5 | (v6 << 32);
}

uint64_t sub_1AF9CF550(void *a1)
{
  v3 = a1[3];
  sub_1AF441150(a1, v3);
  sub_1AFDFF388();
  if (!v1)
  {
    v3 = v8;
    sub_1AF448018(v7, v8);
    v4 = sub_1AFDFEAB8();
    if (v4 <= 1)
    {
      if (!v4)
      {
        sub_1AF9D0E1C(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
        sub_1AF448018(v7, v8);
        sub_1AF9D03E8(&qword_1ED72F748);
        sub_1AFDFEAD8();
        v3 = v6;
        goto LABEL_19;
      }

      if (v4 == 1)
      {
        sub_1AF9D0E1C(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
        sub_1AF448018(v7, v8);
        sub_1AF9D03E8(&qword_1ED72F748);
        sub_1AFDFEAD8();
        v3 = v6;
        goto LABEL_19;
      }
    }

    else
    {
      switch(v4)
      {
        case 2:
          v3 = 0;
          goto LABEL_19;
        case 3:
          v3 = 1;
          goto LABEL_19;
        case 4:
          v3 = 2;
LABEL_19:
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v7);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
          return v3;
      }
    }

    sub_1AFDFE2C8();
    swift_allocError();
    sub_1AFDFE288();
    swift_willThrow();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v7);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v3;
}

uint64_t sub_1AF9CF828@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF9D0E1C(0, &qword_1EB633150, sub_1AF9D0D78, &type metadata for EmitterShape.CodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v50 - v9;
  v11 = a1[3];
  v65 = a1;
  sub_1AF441150(a1, v11);
  sub_1AF9D0D78();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v65);
  }

  v64 = v7;
  v66 = 1;
  sub_1AF51E110();
  sub_1AFDFE768();
  v12 = v67;
  v13 = v68;
  LOBYTE(v67) = 3;
  v14 = sub_1AFDFE718();
  v60 = *(&v12 + 1);
  v61 = v12;
  v62 = v13;
  v63 = v14;
  sub_1AF9D0DCC(0, &unk_1EB6338F8, &type metadata for EmitterShape.Direction, MEMORY[0x1E69E6720]);
  v66 = 4;
  sub_1AF9D0E84(&qword_1EB6338F0, sub_1AF51E110);
  sub_1AFDFE768();
  v15 = v67;
  v16 = v68;
  v66 = 5;
  sub_1AF51DE68();
  sub_1AFDFE768();
  v59 = v16;
  v58 = v15;
  v18 = v67;
  v69 = BYTE4(v67);
  sub_1AF48C324();
  v66 = 6;
  v19 = sub_1AF48C3D0(&qword_1ED7231A0);
  sub_1AFDFE768();
  *&v57 = v19;
  v55 = *(&v15 + 1);
  v56 = v18;
  v20 = v67;
  sub_1AF9D0E1C(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  v66 = 7;
  v21 = sub_1AF9D03E8(&qword_1ED72F748);
  sub_1AFDFE768();
  *&v54 = v21;
  v53 = v67;
  v66 = 8;
  sub_1AFDFE768();
  v22 = v67;
  LOBYTE(v67) = 9;
  sub_1AFDFE738();
  v24 = v23;
  v66 = 0;
  sub_1AFDFE6E8();
  if (BYTE8(v67))
  {
    v25 = 6.2832;
  }

  else
  {
    v25 = *(&v67 + 1);
  }

  if (BYTE8(v67))
  {
    v26 = 0.0;
  }

  else
  {
    v26 = *&v67;
  }

  v66 = 2;
  sub_1AF51E1E4();
  sub_1AFDFE6E8();
  v27 = v59;
  v28 = v68;
  if (v68 == 255)
  {
    LOBYTE(v67) = 18;
    v30 = sub_1AFDFE6A8();
    v31 = 100;
    if (v30)
    {
      v32 = 1;
    }

    else
    {
      v31 = 0;
      v32 = 2;
    }

    if (v30 == 2)
    {
      v33 = 0;
    }

    else
    {
      v33 = v31;
    }

    v52 = v33;
    if (v30 == 2)
    {
      v28 = 2;
    }

    else
    {
      v28 = v32;
    }
  }

  else
  {
    v52 = v67;
  }

  v66 = 10;
  sub_1AFDFE768();
  v29 = v67;
  v66 = 11;
  sub_1AF47FEB4();
  sub_1AFDFE768();
  v34 = v67;
  v66 = 12;
  sub_1AF51DBEC();
  sub_1AFDFE6E8();
  if (v67 == 4)
  {
    v35 = 2;
  }

  else
  {
    v35 = v67;
  }

  v66 = 13;
  sub_1AFDFE6E8();
  if (v68)
  {
    __asm { FMOV            V0.4S, #1.0 }
  }

  else
  {
    _Q0 = v67;
  }

  v57 = _Q0;
  v66 = 14;
  sub_1AFDFE6E8();
  v54 = 0u;
  if ((v68 & 1) == 0)
  {
    v54 = v67;
  }

  LOBYTE(v67) = 15;
  v41 = sub_1AFDFE718();
  v66 = 16;
  sub_1AF51D6C8();
  sub_1AFDFE6E8();
  v51 = v67;
  v66 = 17;
  sub_1AF51D5F4();
  sub_1AFDFE6E8();
  v63 &= 1u;
  v42 = v41 & 1;
  if (v51 == 4)
  {
    v43 = 0;
  }

  else
  {
    v43 = v51;
  }

  (*(v64 + 8))(v10, v6);
  if (v67 == 3)
  {
    v44 = 2;
  }

  else
  {
    v44 = v67;
  }

  v45 = v69;
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v65);
  *a2 = v56;
  *(a2 + 4) = v45;
  *(a2 + 8) = v26;
  *(a2 + 12) = v25;
  v46 = *(&v52 + 1);
  *(a2 + 16) = v52;
  *(a2 + 24) = v46;
  *(a2 + 32) = v28;
  *(a2 + 33) = v43;
  *(a2 + 34) = v63;
  v47 = v60;
  *(a2 + 48) = v61;
  *(a2 + 56) = v47;
  *(a2 + 64) = v62;
  v48 = v55;
  *(a2 + 80) = v58;
  *(a2 + 88) = v48;
  *(a2 + 96) = v27;
  *(a2 + 97) = v44;
  *(a2 + 100) = v24;
  *(a2 + 104) = v29;
  *(a2 + 112) = v20;
  *(a2 + 128) = v53;
  *(a2 + 144) = v22;
  *(a2 + 152) = v34;
  *(a2 + 160) = v35;
  v49 = v54;
  *(a2 + 176) = v57;
  *(a2 + 192) = v49;
  *(a2 + 208) = v42;
  return result;
}

unint64_t sub_1AF9D013C(void *a1)
{
  v3 = sub_1AF441150(a1, a1[3]);
  sub_1AFDFF388();
  if (!v1)
  {
    sub_1AF448018(v7, v8);
    v4 = sub_1AFDFEAB8();
    v3 = v4;
    switch(v4)
    {
      case 0:
        goto LABEL_10;
      case 2:
        sub_1AF448018(v7, v8);
        v3 = sub_1AFDFEB08();
        goto LABEL_10;
      case 1:
        sub_1AF9D0E1C(0, &qword_1ED72F730, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7450]);
        sub_1AF448018(v7, v8);
        sub_1AF9D036C(&qword_1EB63EF98);
        sub_1AFDFEAD8();
        v3 = v6;
LABEL_10:
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v7);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
        return v3;
    }

    sub_1AFDFE2C8();
    swift_allocError();
    sub_1AFDFE288();
    swift_willThrow();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v7);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v3;
}

uint64_t sub_1AF9D036C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1AF9D0E1C(255, &qword_1ED72F730, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7450]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AF9D03E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1AF9D0E1C(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF9D0464()
{
  result = qword_1EB633840;
  if (!qword_1EB633840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633840);
  }

  return result;
}

unint64_t sub_1AF9D04B8()
{
  result = qword_1EB631B30;
  if (!qword_1EB631B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB631B30);
  }

  return result;
}

uint64_t sub_1AF9D050C(uint64_t a1)
{
  v1 = *(a1 + 34);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF9D0560(uint64_t a1)
{

  return a1;
}

uint64_t sub_1AF9D0594(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AF9D0DCC(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

float32x2_t sub_1AF9D0614(double _D0)
{
  _S3 = -2.0;
  __asm { FMLA            S5, S3, V0.S[1] }

  v10 = LODWORD(_S5);
  v8.f32[0] = sqrtf(1.0 - (_S5 * _S5)) * __sincosf_stret(*(v1 + 16) + ((*(v1 + 20) - *(v1 + 16)) * *&_D0)).__cosval;
  v8.i32[1] = v10;
  return vmul_f32(v8, 0x3F0000003F000000);
}

float32x2_t sub_1AF9D0698(double a1)
{
  v2 = *(v1 + 16) + (*&a1 * (*(v1 + 20) - *(v1 + 16)));
  v3 = __sincosf_stret((1.0 - *(&a1 + 1)) * 3.1416);
  v4.f32[0] = fmaxf(v3.__sinval, 0.0000001) * __sincosf_stret(v2).__cosval;
  v4.i32[1] = LODWORD(v3.__cosval);
  return vmul_f32(v4, 0x3F0000003F000000);
}

uint64_t destroy for DistributionSampler()
{
}

uint64_t initializeWithCopy for DistributionSampler(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v3;
  v4 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v4;
  v5 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v5;
  v6 = *(a2 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = v6;

  return a1;
}

uint64_t assignWithCopy for DistributionSampler(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a1 = v4;
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 32) = a2[2];
  *(a1 + 48) = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 72) = *(a2 + 9);
  *(a1 + 80) = *(a2 + 10);
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 104) = *(a2 + 13);
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 120) = *(a2 + 15);
  *(a1 + 128) = *(a2 + 16);

  *(a1 + 136) = *(a2 + 17);

  return a1;
}

uint64_t assignWithTake for DistributionSampler(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  v6 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v6;

  *(a1 + 128) = *(a2 + 128);

  return a1;
}

uint64_t getEnumTagSinglePayload for DistributionSampler(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 128);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DistributionSampler(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 128) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 initializeWithCopy for EmitterShape(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for EmitterShape(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 209))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 34);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for EmitterShape(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 208) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 209) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 209) = 0;
    }

    if (a2)
    {
      *(result + 34) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1AF9D0BA4(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1AF9D0DCC(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF9D0C0C()
{
  result = qword_1EB6415E8;
  if (!qword_1EB6415E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6415E8);
  }

  return result;
}

unint64_t sub_1AF9D0CF4()
{
  result = qword_1EB641620;
  if (!qword_1EB641620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641620);
  }

  return result;
}

unint64_t sub_1AF9D0D78()
{
  result = qword_1EB633930;
  if (!qword_1EB633930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633930);
  }

  return result;
}

void sub_1AF9D0DCC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1AF9D0E1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1AF9D0E84(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1AF9D0DCC(255, &unk_1EB6338F8, &type metadata for EmitterShape.Direction, MEMORY[0x1E69E6720]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AF9D0F14()
{
  v2 = MEMORY[0x1E69E7CC0];
  if ((*(v0 + 104) != 0.0 || *(v0 + 108) != 0.0) && (*(v0 + 144) != 0.0 || *(v0 + 148) != 0.0))
  {
    sub_1AF65D974(&type metadata for Velocity, &off_1F2530AF8);
  }

  if (*(v0 + 96) != 255)
  {
    sub_1AF65D974(&type metadata for Orientation, &off_1F252C8A8);
  }

  if (*(v0 + 208))
  {
    sub_1AF65D974(&type metadata for Color, &off_1F252CA88);
  }

  return v2;
}

unint64_t sub_1AF9D0FEC()
{
  result = qword_1EB641648;
  if (!qword_1EB641648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641648);
  }

  return result;
}

unint64_t sub_1AF9D1044()
{
  result = qword_1EB633920;
  if (!qword_1EB633920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633920);
  }

  return result;
}

unint64_t sub_1AF9D109C()
{
  result = qword_1EB633928;
  if (!qword_1EB633928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633928);
  }

  return result;
}

uint64_t sub_1AF9D1138(void *a1, float a2, float a3)
{
  sub_1AF9D1A48(0, &qword_1EB641650, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v13 - v10;
  sub_1AF441150(a1, a1[3]);
  sub_1AF9D19F4();
  sub_1AFDFF3F8();
  v14 = a2;
  v15 = a3;
  sub_1AF48C324();
  sub_1AF48C3D0(&qword_1EB6398A0);
  sub_1AFDFE918();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1AF9D12D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65676E6172 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1AFDFEE28();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1AF9D135C(uint64_t a1)
{
  v2 = sub_1AF9D19F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF9D1398(uint64_t a1)
{
  v2 = sub_1AF9D19F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1AF9D13D4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1AF9D1824(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 4) = v5;
  }
}

double sub_1AF9D143C()
{
  sub_1AF47BBFC();
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_1AFE431C0;
  *(v0 + 32) = &type metadata for ParticleAngle;
  *(v0 + 40) = &off_1F252E0E8;
  return result;
}

double sub_1AF9D1484@<D0>(void *a1@<X8>)
{
  result = 50.1238633;
  *a1 = 0x40490FDAC0490FDALL;
  return result;
}

uint64_t sub_1AF9D14B8(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  v4 = sub_1AF3CC024(v3);
  v6 = v5;

  if (v6)
  {
    v7 = -3.1416;
  }

  else
  {
    v7 = *&v4;
  }

  if (v6)
  {
    v8 = 3.1416;
  }

  else
  {
    v8 = *(&v4 + 1);
  }

  v9 = a1[4];

  sub_1AF68A8E0(a1, v12);
  *&v10 = v7;
  sub_1AF6889C4(v9, v2, a1, v10, v8);
  sub_1AF688940(a1);
}

uint64_t sub_1AF9D159C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 88);
  v30 = *(a1 + 72);
  v31 = v3;
  v4 = *(a1 + 120);
  v32 = *(a1 + 104);
  v33 = v4;
  v5 = *(a1 + 24);
  v26 = v2;
  v27 = v5;
  v6 = *(a1 + 56);
  v28 = *(a1 + 40);
  v29 = v6;
  v7 = v2;

  v8 = sub_1AF3CC024(*(&v7 + 1));
  v10 = v9;

  v12 = *(&v8 + 1);
  v11 = *&v8;
  if (v10)
  {
    v11 = -3.1416;
    v12 = 3.1416;
  }

  *v25 = v11;
  *&v25[1] = v12;
  if (*a1)
  {
    ObjectType = swift_getObjectType();
    type metadata accessor for particle_set_angle_uniforms(0);
    sub_1AF6F4524(v25, 1, ObjectType, v14, v15, v16, v17, v18);
  }

  v19 = *(v7 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
  v20 = v28;

  v21 = v19;

  MEMORY[0x1EEE9AC00](v22, v23);
  sub_1AFCBF008(v20, sub_1AF9D17D4);
}

float sub_1AF9D1824(void *a1)
{
  sub_1AF9D1A48(0, &qword_1EB633120, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v11 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF9D19F4();
  sub_1AFDFF3B8();
  if (!v1)
  {
    sub_1AF48C324();
    sub_1AF48C3D0(&qword_1ED7231A0);
    sub_1AFDFE768();
    (*(v6 + 8))(v9, v5);
    v2 = *&v11[2];
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v2;
}

unint64_t sub_1AF9D19F4()
{
  result = qword_1EB6336A0[0];
  if (!qword_1EB6336A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB6336A0);
  }

  return result;
}

void sub_1AF9D1A48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AF9D19F4();
    v7 = a3(a1, &type metadata for ParticleAngleInit.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1AF9D1AC0()
{
  result = qword_1EB641658;
  if (!qword_1EB641658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641658);
  }

  return result;
}

unint64_t sub_1AF9D1B18()
{
  result = qword_1EB633690;
  if (!qword_1EB633690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633690);
  }

  return result;
}

unint64_t sub_1AF9D1B70()
{
  result = qword_1EB633698;
  if (!qword_1EB633698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633698);
  }

  return result;
}

uint64_t sub_1AF9D1BC4(void *a1, float a2, float a3)
{
  sub_1AF9D2400(0, &qword_1EB641660, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v13 - v10;
  sub_1AF441150(a1, a1[3]);
  sub_1AF9D23AC();
  sub_1AFDFF3F8();
  v14 = a2;
  v15 = a3;
  sub_1AF48C324();
  sub_1AF48C3D0(&qword_1EB6398A0);
  sub_1AFDFE918();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1AF9D1D50(uint64_t a1)
{
  v2 = sub_1AF9D23AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF9D1D8C(uint64_t a1)
{
  v2 = sub_1AF9D23AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1AF9D1DC8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1AF9D21DC(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 4) = v5;
  }
}

double sub_1AF9D1E30()
{
  sub_1AF47BBFC();
  v0 = swift_allocObject();
  *&result = 2;
  *(v0 + 16) = xmmword_1AFE4C620;
  *(v0 + 32) = &type metadata for ParticleAngle;
  *(v0 + 40) = &off_1F252E0E8;
  *(v0 + 48) = &type metadata for ParticleAngleVelocity;
  *(v0 + 56) = &off_1F252E048;
  return result;
}

uint64_t sub_1AF9D1EB0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  v4 = sub_1AF3CC0F8(v3);
  v6 = v5;

  if (v6)
  {
    v7 = -3.1416;
  }

  else
  {
    v7 = *&v4;
  }

  if (v6)
  {
    v8 = 3.1416;
  }

  else
  {
    v8 = *(&v4 + 1);
  }

  v9 = a1[4];

  sub_1AF68A8E0(a1, v12);
  *&v10 = v7;
  sub_1AF6889EC(v9, v2, a1, v10, v8);
  sub_1AF688940(a1);
}

uint64_t sub_1AF9D1F94(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 88);
  v30 = *(a1 + 72);
  v31 = v3;
  v4 = *(a1 + 120);
  v32 = *(a1 + 104);
  v33 = v4;
  v5 = *(a1 + 24);
  v26 = v2;
  v27 = v5;
  v6 = *(a1 + 56);
  v28 = *(a1 + 40);
  v29 = v6;
  v7 = v2;

  v8 = sub_1AF3CC0F8(*(&v7 + 1));
  v10 = v9;

  v12 = *(&v8 + 1);
  v11 = *&v8;
  if (v10)
  {
    v11 = -3.1416;
    v12 = 3.1416;
  }

  *v25 = v11;
  *&v25[1] = v12;
  if (*a1)
  {
    ObjectType = swift_getObjectType();
    type metadata accessor for particle_set_angle_velocity_uniforms(0);
    sub_1AF6F4524(v25, 1, ObjectType, v14, v15, v16, v17, v18);
  }

  v19 = *(v7 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
  v20 = v28;

  v21 = v19;

  MEMORY[0x1EEE9AC00](v22, v23);
  sub_1AFCBF008(v20, sub_1AF9D17D4);
}

float sub_1AF9D21DC(void *a1)
{
  sub_1AF9D2400(0, &qword_1EB6330E0, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v11 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF9D23AC();
  sub_1AFDFF3B8();
  if (!v1)
  {
    sub_1AF48C324();
    sub_1AF48C3D0(&qword_1ED7231A0);
    sub_1AFDFE768();
    (*(v6 + 8))(v9, v5);
    v2 = *&v11[2];
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v2;
}

unint64_t sub_1AF9D23AC()
{
  result = qword_1EB633468;
  if (!qword_1EB633468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633468);
  }

  return result;
}

void sub_1AF9D2400(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AF9D23AC();
    v7 = a3(a1, &type metadata for ParticleAngleVelocityInit.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1AF9D2478()
{
  result = qword_1EB641668;
  if (!qword_1EB641668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641668);
  }

  return result;
}

unint64_t sub_1AF9D24D0()
{
  result = qword_1EB633458;
  if (!qword_1EB633458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633458);
  }

  return result;
}

unint64_t sub_1AF9D2528()
{
  result = qword_1EB633460;
  if (!qword_1EB633460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633460);
  }

  return result;
}

uint64_t sub_1AF9D257C(void *a1)
{
  v3 = v1;
  sub_1AF9D3798(0, &qword_1EB641670, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF9D3744();
  sub_1AFDFF3F8();
  v13 = *v3;
  HIBYTE(v12) = 0;
  sub_1AF48C324();
  sub_1AF48C3D0(&qword_1EB6398A0);
  sub_1AFDFE918();
  if (!v2)
  {
    v13 = v3[1];
    HIBYTE(v12) = 1;
    sub_1AFDFE918();
    v13 = v3[2];
    HIBYTE(v12) = 2;
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1AF9D2770(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1AFDFEE28();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1AF9D27F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF9D33CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF9D2820(uint64_t a1)
{
  v2 = sub_1AF9D3744();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF9D285C(uint64_t a1)
{
  v2 = sub_1AF9D3744();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AF9D2898@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF9D34E4(a1, &v5);
  if (!v2)
  {
    result = *&v5;
    *a2 = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

double sub_1AF9D2914()
{
  sub_1AF47BBFC();
  v0 = swift_allocObject();
  *&result = 2;
  *(v0 + 16) = xmmword_1AFE4C620;
  *(v0 + 32) = &type metadata for Orientation;
  *(v0 + 40) = &off_1F252C8A8;
  *(v0 + 48) = &type metadata for AngularVelocity;
  *(v0 + 56) = &off_1F2530A48;
  return result;
}

double sub_1AF9D2970@<D0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1AFE8C580;
  result = 50.1238633;
  *(a1 + 16) = 0x40490FDAC0490FDALL;
  return result;
}

void sub_1AF9D298C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *(a3 + 104);
  v46[0] = *(a3 + 88);
  v46[1] = v6;
  v47 = *(a3 + 120);
  sub_1AF6B06C0(a2, v46, 0x200000000, &v30);
  v24 = v30;
  if (v30)
  {
    v7 = v34;
    v8 = v36;
    v38 = v31;
    v39 = v32;
    v22 = v37;
    v23 = v35;
    if (v37 >= 1 && v34)
    {
      v9 = *(v35 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v10 = *(v36 + 32);
      v11 = (v33 + 24);
      v21 = v9;
      while (1)
      {
        v55 = v5;
        v12 = *(v11 - 6);
        v13 = *(v11 - 5);
        v14 = *(v11 - 4);
        v28 = *v11;
        v29 = *(v11 - 1);
        v15 = v11[2];
        v27 = v11[1];
        if (v9)
        {
          v16 = *(v15 + 376);

          os_unfair_lock_lock(v16);
          os_unfair_lock_lock(*(v15 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v10);
        v17 = *(v8 + 64);
        v48[0] = *(v8 + 48);
        v48[1] = v17;
        v49 = *(v8 + 80);
        v18 = v10;
        v19 = *(*(*(*(v15 + 40) + 16) + 32) + 16) + 1;
        *(v8 + 48) = ecs_stack_allocator_allocate(*(v8 + 32), 48 * v19, 8);
        *(v8 + 56) = v19;
        *(v8 + 72) = 0;
        *(v8 + 80) = 0;
        *(v8 + 64) = 0;
        LOBYTE(v43) = 1;
        v50[0] = v23;
        v50[1] = v15;
        v50[2] = v8;
        v50[3] = v14;
        v50[4] = (v13 - v12 + v14);
        v50[5] = v22;
        v50[6] = v12;
        v50[7] = v13;
        v50[8] = 0;
        v50[9] = 0;
        v51 = 1;
        v52 = v29;
        v53 = v28;
        v54 = v27;
        v20 = v55;
        sub_1AF9D2C34(v50, a4, a1);
        if (v20)
        {
          break;
        }

        v40 = v24;
        v41 = v38;
        v42 = v39;
        sub_1AF630994(v8, &v40, v48);
        v5 = 0;
        sub_1AF62D29C(v15);
        ecs_stack_allocator_pop_snapshot(v18);
        v10 = v18;
        v9 = v21;
        if (v21)
        {
          os_unfair_lock_unlock(*(v15 + 344));
          os_unfair_lock_unlock(*(v15 + 376));
        }

        v11 += 6;
        if (!--v7)
        {
          goto LABEL_12;
        }
      }

      v43 = v24;
      v44 = v38;
      v45 = v39;
      sub_1AF630994(v8, &v43, v48);
      sub_1AF62D29C(v15);
      ecs_stack_allocator_pop_snapshot(v18);
      os_unfair_lock_unlock(*(v15 + 344));
      os_unfair_lock_unlock(*(v15 + 376));
      __break(1u);
    }

    else
    {
LABEL_12:
      sub_1AF5D1564(&v30);
    }
  }
}

void sub_1AF9D2C34(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1AF64B110(&type metadata for AngularVelocity, &off_1F2530A48, *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 16));
  v11.i32[0] = *a2;
  v10 = *(a2 + 4);
  if (*a2 == v10 && *(a2 + 8) == *(a2 + 12) && (v12 = *(a2 + 16), v12 == *(a2 + 20)))
  {
    v13 = v11;
    v13.i32[1] = *(a2 + 8);
    v13.i32[2] = *(a2 + 16);
    v14 = vabsq_f32(v13);
    *v9.i32 = fmaxf(fmaxf(v14.f32[0], v14.f32[2]), v14.f32[1]);
    v15 = 0uLL;
    if (*v9.i32 > 0.00000011921)
    {
      v11.i32[1] = *(a2 + 8);
      *v8.f32 = vdiv_f32(*v11.f32, vdup_lane_s32(v9, 0));
      v8.f32[2] = v12 / *v9.i32;
      v16.i64[0] = 0x3F0000003F000000;
      v16.i64[1] = 0x3F0000003F000000;
      v17 = vmulq_f32(v8, v16);
      v17.i32[3] = 0;
      xa = v17;
      v18 = v6;
      v83 = *v9.i32;
      v80 = _simd_cos_f4(v17);
      _Q0 = _simd_sin_f4(xa);
      _D2 = vextq_s8(v80, v80, 8uLL).u64[0];
      v21 = vmul_f32(*v80.i8, vext_s8(*_Q0.f32, _D2, 4uLL));
      v22 = vdup_laneq_s32(_Q0, 2);
      v22.f32[0] = -*v80.i32;
      v23.i32[0] = vextq_s8(_Q0, _Q0, 8uLL).u32[0];
      v23.i32[1] = _Q0.i32[0];
      v24 = vmul_f32(vzip2_s32(*_Q0.f32, *v80.i8), v23);
      *v25.f32 = vmla_f32(vmul_f32(v24, v22), vrev64_s32(v21), vzip1_s32(*_Q0.f32, _D2));
      *_D2.i32 = vmuls_lane_f32(*v80.i32, *v80.i8, 1);
      __asm { FMLA            S4, S2, V0.S[2] }

      v24.f32[0] = vmuls_n_f32(_Q0.f32[0], v24.f32[0]) + (*v80.i32 * *&v21.i32[1]);
      v25.i32[2] = _S4;
      v31 = vmulq_f32(v25, v25);
      v31.f32[0] = v31.f32[2] + vaddv_f32(*v31.f32);
      v32 = vrsqrte_f32(v31.u32[0]);
      v33 = vmul_f32(v32, vrsqrts_f32(v31.u32[0], vmul_f32(v32, v32)));
      v81 = vmulq_n_f32(v25, vmul_f32(v33, vrsqrts_f32(v31.u32[0], vmul_f32(v33, v33))).f32[0]);
      v34 = atan2f(sqrtf(v31.f32[0]), v24.f32[0]);
      v15 = v81;
      v6 = v18;
      v15.f32[3] = v83 * (v34 + v34);
    }

    v35 = *(a1 + 48);
    v36 = *(a1 + 56) - v35;
    if (v36)
    {
      v37 = (v6 + 16 * v35);
      do
      {
        *v37++ = v15;
        --v36;
      }

      while (v36);
    }
  }

  else
  {
    v38 = *(a1 + 48);
    v39 = *(a1 + 56);
    v40 = v39 - v38;
    if (v39 != v38)
    {
      v41 = v10 - v11.f32[0];
      v42 = *(a2 + 8);
      v43 = *(a2 + 12) - v42;
      v44 = *(a2 + 16);
      v45 = *(a2 + 20) - v44;
      v46 = (v6 + 16 * v38);
      x = *a2;
      do
      {
        v48 = a3[1];
        v47 = a3[2];
        v49 = a3[3] ^ v48;
        v50 = a3[4] ^ v47;
        v51 = v49 ^ v47;
        v52 = v50 ^ v48;
        v7.f32[0] = v11.f32[0] + (v41 * vcvts_n_f32_u64((9 * ((((5 * v47) >> 32) >> 25) | (640 * v47))) & 0xFFFFFF, 0x18uLL));
        v53 = v49 ^ (v47 << 17) ^ v52;
        v54 = __ROR8__(v50, 19);
        v55 = v53 ^ v51;
        v56 = v51 ^ v54 ^ v52;
        v57 = v42 + (v43 * vcvts_n_f32_u64((9 * ((((5 * v51) >> 32) >> 25) | (640 * v51))) & 0xFFFFFF, 0x18uLL));
        v58 = v53 ^ (v51 << 17) ^ v56;
        v59 = v55 ^ __ROR8__(v51 ^ v54, 19);
        a3[1] = v59 ^ v56;
        a3[2] = v58 ^ v55;
        a3[3] = v58 ^ (v55 << 17);
        a3[4] = __ROR8__(v59, 19);
        v60 = v44 + (v45 * vcvts_n_f32_u64((9 * ((((5 * v55) >> 32) >> 25) | (640 * v55))) & 0xFFFFFFLL, 0x18uLL));
        v61 = v7;
        v61.f32[1] = v57;
        v61.f32[2] = v60;
        v62 = vabsq_f32(v61);
        v63 = fmaxf(fmaxf(v62.f32[0], v62.f32[2]), v62.f32[1]);
        v64 = 0uLL;
        if (v63 > 0.00000011921)
        {
          v7.f32[0] = v7.f32[0] / v63;
          v7.f32[1] = v57 / v63;
          v7.f32[2] = v60 / v63;
          v65.i64[0] = 0x3F0000003F000000;
          v65.i64[1] = 0x3F0000003F000000;
          v66 = vmulq_f32(v7, v65);
          v66.i32[3] = 0;
          v82 = v66;
          v84 = _simd_cos_f4(v66);
          _Q0 = _simd_sin_f4(v82);
          _D2 = vextq_s8(v84, v84, 8uLL).u64[0];
          v69 = vmul_f32(*v84.f32, vext_s8(*_Q0.f32, _D2, 4uLL));
          v70 = vdup_laneq_s32(_Q0, 2);
          v70.f32[0] = -v84.f32[0];
          v71.i32[0] = vextq_s8(_Q0, _Q0, 8uLL).u32[0];
          v71.i32[1] = _Q0.i32[0];
          v72 = vmul_f32(vzip2_s32(*_Q0.f32, *v84.f32), v71);
          *v73.f32 = vmla_f32(vmul_f32(v72, v70), vrev64_s32(v69), vzip1_s32(*_Q0.f32, _D2));
          *_D2.i32 = vmuls_lane_f32(v84.f32[0], *v84.f32, 1);
          __asm { FMLA            S4, S2, V0.S[2] }

          v72.f32[0] = vmuls_n_f32(_Q0.f32[0], v72.f32[0]) + (v84.f32[0] * *&v69.i32[1]);
          v73.i32[2] = _S4;
          v75 = vmulq_f32(v73, v73);
          v75.f32[0] = v75.f32[2] + vaddv_f32(*v75.f32);
          v76 = vrsqrte_f32(v75.u32[0]);
          v77 = vmul_f32(v76, vrsqrts_f32(v75.u32[0], vmul_f32(v76, v76)));
          v85 = vmulq_n_f32(v73, vmul_f32(v77, vrsqrts_f32(v75.u32[0], vmul_f32(v77, v77))).f32[0]);
          v7.f32[0] = atan2f(sqrtf(v75.f32[0]), v72.f32[0]);
          v64 = v85;
          v11.i32[0] = x;
          v64.f32[3] = v63 * (v7.f32[0] + v7.f32[0]);
        }

        *v46++ = v64;
        --v40;
      }

      while (v40);
    }
  }
}

uint64_t sub_1AF9D3064(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  swift_retain_n();
  v4 = sub_1AF3CC1CC(v3);
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = HIDWORD(v6);
  v12 = HIDWORD(v8);
  if (v10)
  {
    v13 = -1068953638;
  }

  else
  {
    v13 = v8;
  }

  if (v10)
  {
    LODWORD(v12) = 1078530010;
    v14 = -1068953638;
  }

  else
  {
    v14 = v6;
  }

  if (v10)
  {
    LODWORD(v11) = 1078530010;
    v15 = -1068953638;
  }

  else
  {
    v15 = v4;
  }

  if (v10)
  {
    v16 = 1078530010;
  }

  else
  {
    v16 = HIDWORD(v4);
  }

  v20[0] = v15;
  v20[1] = v16;
  v20[2] = v14;
  v20[3] = v11;
  v20[4] = v13;
  v20[5] = v12;
  v17 = a1[4];

  sub_1AF68A8E0(a1, v19);
  sub_1AF688C0C(v17, v2, v2, a1, v20);
  sub_1AF688940(a1);
}

uint64_t sub_1AF9D3170(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 88);
  v36 = *(a1 + 72);
  v37 = v3;
  v4 = *(a1 + 120);
  v38 = *(a1 + 104);
  v39 = v4;
  v5 = *(a1 + 24);
  v32 = v2;
  v33 = v5;
  v6 = *(a1 + 56);
  v34 = *(a1 + 40);
  v35 = v6;
  v8 = *(&v2 + 1);
  v7 = v2;

  v9 = sub_1AF3CC1CC(v8);
  v11 = v10;
  v13 = v12;
  v15 = v14;

  if (v15)
  {
    LODWORD(v16) = 1078530010;
    LODWORD(v13) = -1068953638;
    LODWORD(v11) = -1068953638;
    LODWORD(v17) = 1078530010;
    LODWORD(v9) = -1068953638;
    LODWORD(v18) = 1078530010;
  }

  else
  {
    v18 = HIDWORD(v9);
    v17 = HIDWORD(v11);
    v16 = HIDWORD(v13);
  }

  v31[0] = v9;
  v31[1] = v18;
  v31[2] = v11;
  v31[3] = v17;
  v31[4] = v13;
  v31[5] = v16;
  if (*a1)
  {
    ObjectType = swift_getObjectType();
    type metadata accessor for particle_set_angular_velocity_uniforms(0);
    sub_1AF6F4524(v31, 1, ObjectType, v20, v21, v22, v23, v24);
  }

  v25 = *(v7 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
  v26 = v34;

  v27 = v25;

  MEMORY[0x1EEE9AC00](v28, v29);
  sub_1AFCBF008(v26, sub_1AF9D17D4);
}

uint64_t sub_1AF9D33CC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x65676E615278 && a2 == 0xE600000000000000;
  if (v3 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65676E615279 && a2 == 0xE600000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65676E61527ALL && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1AFDFEE28();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1AF9D34E4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1AF9D3798(0, &qword_1EB6330D0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF9D3744();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  sub_1AF48C324();
  HIBYTE(v15) = 0;
  sub_1AF48C3D0(&qword_1ED7231A0);
  sub_1AFDFE768();
  v11 = v16;
  HIBYTE(v15) = 1;
  sub_1AFDFE768();
  v12 = v16;
  HIBYTE(v15) = 2;
  sub_1AFDFE768();
  (*(v7 + 8))(v10, v6);
  v13 = v16;
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *a2 = v11;
  a2[1] = v12;
  a2[2] = v13;
  return result;
}

unint64_t sub_1AF9D3744()
{
  result = qword_1EB633418;
  if (!qword_1EB633418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633418);
  }

  return result;
}

void sub_1AF9D3798(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AF9D3744();
    v7 = a3(a1, &type metadata for ParticleAngularVelocityInit.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1AF9D3810()
{
  result = qword_1EB641678;
  if (!qword_1EB641678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641678);
  }

  return result;
}

unint64_t sub_1AF9D3868()
{
  result = qword_1EB633408;
  if (!qword_1EB633408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633408);
  }

  return result;
}

unint64_t sub_1AF9D38C0()
{
  result = qword_1EB633410;
  if (!qword_1EB633410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633410);
  }

  return result;
}

char *sub_1AF9D3914(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  v4 = sub_1AF41FDF8(0, v2, 0, MEMORY[0x1E69E7CC0]);
  v5 = sub_1AF41FDF8(0, v2, 0, v3);
  if (v2)
  {
    v6 = (a1 + 36);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      v10 = *(v4 + 2);
      v9 = *(v4 + 3);
      if (v10 >= v9 >> 1)
      {
        v4 = sub_1AF41FDF8(v9 > 1, v10 + 1, 1, v4);
      }

      *(v4 + 2) = v10 + 1;
      *&v4[4 * v10 + 32] = v8;
      v12 = *(v5 + 2);
      v11 = *(v5 + 3);
      if (v12 >= v11 >> 1)
      {
        v5 = sub_1AF41FDF8(v11 > 1, v12 + 1, 1, v5);
      }

      *(v5 + 2) = v12 + 1;
      *&v5[4 * v12 + 32] = v7;
      v6 += 2;
      --v2;
    }

    while (v2);
  }

  return v4;
}

char *sub_1AF9D3A24(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  v4 = sub_1AF42053C(0, v2, 0, MEMORY[0x1E69E7CC0]);
  v5 = sub_1AF41FDF8(0, v2, 0, v3);
  if (v2)
  {
    v6 = (a1 + 48);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      v10 = *(v4 + 2);
      v9 = *(v4 + 3);
      if (v10 >= v9 >> 1)
      {
        v15 = *(v6 - 1);
        v13 = sub_1AF42053C(v9 > 1, v10 + 1, 1, v4);
        v7 = v15;
        v4 = v13;
      }

      *(v4 + 2) = v10 + 1;
      *&v4[16 * v10 + 32] = v7;
      v12 = *(v5 + 2);
      v11 = *(v5 + 3);
      if (v12 >= v11 >> 1)
      {
        v5 = sub_1AF41FDF8(v11 > 1, v12 + 1, 1, v5);
      }

      *(v5 + 2) = v12 + 1;
      *&v5[4 * v12 + 32] = v8;
      v6 += 8;
      --v2;
    }

    while (v2);
  }

  return v4;
}

char *sub_1AF9D3B48(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  v4 = sub_1AF420C34(0, v2, 0, MEMORY[0x1E69E7CC0]);
  v5 = sub_1AF426490(0, v2, 0, v3);
  if (v2)
  {
    v6 = a1 + 64;
    do
    {
      v7 = *(v6 - 32);
      v8 = *(v6 - 24);
      v9 = *(v6 - 16);
      v10 = *v6;
      v24 = *(v6 + 8);
      v25 = v9;
      v11 = *(v6 + 24);
      v23 = *(v6 + 32);
      v13 = *(v4 + 2);
      v12 = *(v4 + 3);
      v14 = *(v6 + 48);
      v22 = *(v6 + 40);
      if (v13 >= v12 >> 1)
      {
        v21 = *(v6 - 32);
        v19 = sub_1AF420C34(v12 > 1, v13 + 1, 1, v4);
        v9 = v25;
        v4 = v19;
        v7 = v21;
      }

      *(v4 + 2) = v13 + 1;
      v15 = &v4[40 * v13];
      *(v15 + 4) = v7;
      v15[40] = v8;
      *(v15 + 3) = v9;
      v15[64] = v10;
      sub_1AF443EE0(v7);
      sub_1AF444224(v25);
      v17 = *(v5 + 2);
      v16 = *(v5 + 3);
      if (v17 >= v16 >> 1)
      {
        v5 = sub_1AF426490(v16 > 1, v17 + 1, 1, v5);
      }

      *(v5 + 2) = v17 + 1;
      v18 = &v5[48 * v17];
      *(v18 + 2) = v24;
      v6 += 88;
      *(v18 + 6) = v11;
      v18[56] = v23;
      *(v18 + 8) = v22;
      *(v18 + 9) = v14;
      sub_1AF442064(v24);

      --v2;
    }

    while (v2);
  }

  return v4;
}

char *sub_1AF9D3CF4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  v4 = sub_1AF4265B0(0, v2, 0, MEMORY[0x1E69E7CC0]);
  v5 = sub_1AF420C48(0, v2, 0, v3);
  if (v2)
  {
    v6 = (a1 + 96);
    do
    {
      v7 = *(v6 - 3);
      v24 = *(v6 - 4);
      v25 = v7;
      v26[0] = *(v6 - 2);
      *(v26 + 9) = *(v6 - 23);
      v8 = v6[3];
      v29 = v6[2];
      v30 = v8;
      v31 = *(v6 + 64);
      v9 = v6[1];
      v27 = *v6;
      v28 = v9;
      sub_1AF8A9E80(&v24, &v23);
      v11 = *(v4 + 2);
      v10 = *(v4 + 3);
      if (v11 >= v10 >> 1)
      {
        v4 = sub_1AF4265B0(v10 > 1, v11 + 1, 1, v4);
      }

      *(v4 + 2) = v11 + 1;
      v12 = &v4[64 * v11];
      v13 = v24;
      v14 = v25;
      v15 = v26[0];
      *(v12 + 73) = *(v26 + 9);
      *(v12 + 3) = v14;
      *(v12 + 4) = v15;
      *(v12 + 2) = v13;
      v17 = *(v5 + 2);
      v16 = *(v5 + 3);
      if (v17 >= v16 >> 1)
      {
        v5 = sub_1AF420C48(v16 > 1, v17 + 1, 1, v5);
      }

      *(v5 + 2) = v17 + 1;
      v18 = &v5[80 * v17];
      *(v18 + 2) = v27;
      v19 = v28;
      v20 = v29;
      v21 = v30;
      v18[96] = v31;
      *(v18 + 4) = v20;
      *(v18 + 5) = v21;
      *(v18 + 3) = v19;
      v6 += 9;
      --v2;
    }

    while (v2);
  }

  return v4;
}

uint64_t sub_1AF9D3E88(void *a1)
{
  v3 = v1;
  sub_1AF9D6868(0, &qword_1EB641690, sub_1AF9D6744, &type metadata for ParticleColorInit.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF9D6744();
  sub_1AFDFF3F8();
  *&v12 = *v3;
  v14 = 0;
  sub_1AF9D68D0();
  sub_1AFDFE918();
  if (!v2)
  {
    LODWORD(v12) = *(v3 + 8);
    BYTE4(v12) = *(v3 + 12);
    v14 = 1;
    sub_1AF51DF90();
    sub_1AFDFE918();
    LOBYTE(v12) = 2;
    sub_1AFDFE8E8();
    LOBYTE(v12) = 3;
    sub_1AFDFE8C8();
    v12 = *(v3 + 32);
    v14 = 4;
    sub_1AF9D6868(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    sub_1AF9D67EC(&qword_1ED72F710);
    sub_1AFDFE918();
    v12 = *(v3 + 48);
    v13 = *(v3 + 64);
    v14 = 5;
    sub_1AF80BC20();
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1AF9D4198()
{
  v1 = *v0;
  v2 = 0x7469736F706D6F63;
  v3 = 0x4173746365666661;
  v4 = 0x65756C6176;
  if (v1 != 4)
  {
    v4 = 1886216562;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1701080941;
  if (v1 != 1)
  {
    v5 = 0x7469736E65746E69;
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

uint64_t sub_1AF9D4254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF9D4F88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF9D427C(uint64_t a1)
{
  v2 = sub_1AF9D6744();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF9D42B8(uint64_t a1)
{
  v2 = sub_1AF9D6744();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1AF9D42F4@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF9D53F0(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

double sub_1AF9D4378()
{
  sub_1AF9D6924(0, &qword_1ED72F7D0, sub_1AF47BC54);
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_1AFE431C0;
  *(v0 + 32) = &type metadata for Color;
  *(v0 + 40) = &off_1F252CA88;
  return result;
}

__n128 sub_1AF9D43DC@<Q0>(uint64_t a1@<X8>)
{
  sub_1AF9D4E90(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5;
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

void sub_1AF9D4424(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a3 + 104);
  v69[0] = *(a3 + 88);
  v69[1] = v6;
  v70 = *(a3 + 120);
  sub_1AF6B06C0(a2, v69, 0x200000000, &v58);
  if (v58)
  {
    v47 = v65;
    if (v65 >= 1)
    {
      v46 = v62;
      if (v62)
      {
        v7 = 0;
        v45 = v61;
        v8 = v64;
        v44 = v63;
        v9 = *(v63 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v55 = *(v64 + 32);
        v66 = v58;
        v67 = v59;
        v68 = v60;
        v77 = v9;
        do
        {
          v10 = (v45 + 48 * v7);
          v11 = *v10;
          v12 = v10[1];
          v13 = v10[2];
          v14 = *(v10 + 3);
          v56 = *(v10 + 2);
          v16 = *(v10 + 4);
          v15 = *(v10 + 5);
          if (v9)
          {
            v17 = *(v15 + 376);

            os_unfair_lock_lock(v17);
            os_unfair_lock_lock(*(v15 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v55);
          v52 = *(v8 + 64);
          v53 = *(v8 + 48);
          v51 = *(v8 + 80);
          v18 = *(*(*(*(v15 + 40) + 16) + 32) + 16) + 1;
          *(v8 + 48) = ecs_stack_allocator_allocate(*(v8 + 32), 48 * v18, 8);
          *(v8 + 56) = v18;
          *(v8 + 72) = 0;
          *(v8 + 80) = 0;
          *(v8 + 64) = 0;
          v76 = 1;
          v71[0] = v44;
          v71[1] = v15;
          v54 = v15;
          v71[2] = v8;
          v71[3] = v13;
          v71[4] = (v12 - v11 + v13);
          v71[5] = v47;
          v71[6] = v11;
          v71[7] = v12;
          v71[8] = 0;
          v71[9] = 0;
          v72 = 1;
          v73 = v56;
          v74 = v14;
          v75 = v16;
          sub_1AF9D5D10(v71, a1, a6);
          v19 = *(v8 + 48);
          v20 = *(v8 + 64);
          if (!v20)
          {
            v42 = *(v8 + 56);
            v43 = *(v8 + 32);
            goto LABEL_39;
          }

          v57 = *(v8 + 48);
          v50 = v7;
          for (i = 0; i != v20; ++i)
          {
            v23 = (v57 + 48 * i);
            v24 = *v23;
            v25 = v23[4];
            v26 = *(v8 + 72);
            if (v26)
            {
              v27 = v24 == v26;
            }

            else
            {
              v27 = 0;
            }

            if (v27)
            {
              goto LABEL_11;
            }

            v28 = v66;
            if (!v66[11])
            {
              goto LABEL_11;
            }

            v29 = v23[2];
            v30 = v66 + 41;
            v31 = v66[9];
            if (v31 >= 0x10)
            {
              v32 = &v30[v66[8]];
              v33 = v31 >> 4;
              v34 = v66 + 41;
              while (*v32 != v24)
              {
                ++v34;
                v32 += 16;
                if (!--v33)
                {
                  goto LABEL_27;
                }
              }

              v35 = v34[v66[10]];
              v36 = v35 > 5;
              v37 = (1 << v35) & 0x23;
              if (v36 || v37 == 0)
              {
LABEL_11:

                v25(v22);

                continue;
              }
            }

LABEL_27:
            if (swift_conformsToProtocol2() && v29)
            {
              if (sub_1AF5FC8D8(v29))
              {
                goto LABEL_11;
              }

              v39 = v28[9];
              if (v39 < 0x10)
              {
                goto LABEL_11;
              }

              v40 = &v30[v28[8]];
              v41 = 16 * (v39 >> 4);
              while (*v40 != v29)
              {
                v40 += 16;
                v41 -= 16;
                if (!v41)
                {
                  goto LABEL_11;
                }
              }
            }
          }

          v42 = *(v8 + 56);
          v19 = *(v8 + 48);
          v43 = *(v8 + 32);
          if (*(v8 + 64) >= 1)
          {
            swift_arrayDestroy();
          }

          v7 = v50;
LABEL_39:
          v9 = v77;
          ecs_stack_allocator_deallocate(v43, v19, 48 * v42);
          *(v8 + 48) = v53;
          *(v8 + 64) = v52;
          *(v8 + 80) = v51;
          sub_1AF62D29C(v54);
          ecs_stack_allocator_pop_snapshot(v55);
          if (v9)
          {
            os_unfair_lock_unlock(*(v54 + 344));
            os_unfair_lock_unlock(*(v54 + 376));
          }

          ++v7;
        }

        while (v7 != v46);
      }
    }

    sub_1AF9D637C(&v58, &qword_1ED725EA0, &type metadata for QueryResult);
  }
}

uint64_t sub_1AF9D4860(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 88);
  v46 = *(a1 + 72);
  v47 = v3;
  v4 = *(a1 + 120);
  v48 = *(a1 + 104);
  v49 = v4;
  v5 = *(a1 + 24);
  v42 = v2;
  v43 = v5;
  v6 = *(a1 + 56);
  v44 = *(a1 + 40);
  v45 = v6;
  v7 = v2;

  sub_1AF3CC2D0(*(&v42 + 1), &v37);

  if (v40)
  {
    v54 = v39;
    v55 = v40;
    v56 = v41;
    v52 = v37;
    v53 = v38;
  }

  else
  {
    sub_1AF9D4E90(&v52);
  }

  v50[2] = v54;
  v50[3] = v55;
  v51 = v56;
  v50[0] = v52;
  v50[1] = v53;
  v32 = v54;
  v33 = DWORD1(v52);
  v34 = v52;
  v35 = v53 | 0x3F80000000000000;
  v36 = BYTE4(v53);
  v8 = v44;

  sub_1AF4422C8(&v52, &v37);
  v31 = v8;
  sub_1AF688C38(v8, v7, v50, &v32, v7, v9, v10);

  sub_1AF58CDA0(&v52);
  v11 = DWORD2(v52);
  v12 = BYTE12(v52);
  if (BYTE12(v52) == 1 && !DWORD2(v52))
  {
    sub_1AF58CDA0(&v52);
    v13 = *a1;
LABEL_11:
    v37 = v32;
    LODWORD(v38) = v33;
    BYTE4(v38) = v34;
    *(&v38 + 1) = v35;
    LOBYTE(v39) = v36;
    if (v13)
    {
      ObjectType = swift_getObjectType();
      type metadata accessor for particle_set_color_uniforms(0);
      sub_1AF6F4524(&v37, 1, ObjectType, v18, v19, v20, v21, v22);
    }

    sub_1AF9D66F4(0, &qword_1ED730B70, &type metadata for FunctionConstant, MEMORY[0x1E69E6F90]);
    v23 = swift_allocObject();
    if (v12)
    {
      v24 = v11;
    }

    else
    {
      v24 = 3;
    }

    *(v23 + 16) = xmmword_1AFE431C0;
    *(v23 + 32) = xmmword_1AFE8C7E0;
    *(v23 + 48) = 0;
    *(v23 + 64) = v24;
    *(v23 + 128) = 14;
    v30 = *(v7 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);

    MEMORY[0x1EEE9AC00](v25, v26);
    sub_1AFCBF008(v31, sub_1AF9D17D4);
  }

  v14 = v55;
  v15 = v56;

  v16 = sub_1AF8B47E4(v14, *(&v14 + 1), v15);

  if (v16)
  {
    v13 = *a1;
    if (*a1)
    {
      [*a1 setTexture:v16 atIndex:0];
    }

    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v28 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v29 = v28;
    swift_once();
    v28 = v29;
  }

  *&v37 = 0;
  sub_1AF0D4F18(v28, &v37, 0x20676E697373696DLL, 0xEC000000706D6172);
}

uint64_t sub_1AF9D4D04(void *a1, uint64_t a2)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3D8();
  sub_1AF448018(v4, v5);
  if ((a2 & 0x100000000) != 0)
  {
    sub_1AFDFEEE8();
  }

  else
  {
    sub_1AFDFEF08();
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v4);
}

uint64_t sub_1AF9D4E28@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF9D5190(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 4) = BYTE4(result) & 1;
  }

  return result;
}

__n128 sub_1AF9D4E90@<Q0>(uint64_t a1@<X8>)
{
  sub_1AF9D6924(0, &qword_1EB633A48, sub_1AF43A11C);
  v2 = swift_allocObject();
  __asm { FMOV            V1.4S, #1.0 }

  v13 = _Q1;
  *(v2 + 16) = xmmword_1AFE4C620;
  *(v2 + 32) = _Q1;
  *(v2 + 48) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = 1065353216;
  v8 = sub_1AF3C3D64(v2);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v9 = sub_1AF9D3A24(v8);
  v11 = v10;

  *a1 = 0;
  *(a1 + 4) = 1065353216;
  *(a1 + 12) = 1;
  *(a1 + 16) = 1065353216;
  *(a1 + 20) = 1;
  result = v13;
  *(a1 + 32) = v13;
  *(a1 + 48) = v9;
  *(a1 + 56) = v11;
  *(a1 + 64) = 1;
  return result;
}

uint64_t sub_1AF9D4F88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7469736F706D6F63 && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701080941 && a2 == 0xE400000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7469736E65746E69 && a2 == 0xE900000000000079 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4173746365666661 && a2 == 0xEC0000006168706CLL || (sub_1AFDFEE28() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1886216562 && a2 == 0xE400000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1AFDFEE28();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1AF9D5190(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF398();
  if (v1)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  sub_1AF441150(v9, v9[3]);
  v5 = sub_1AFDFEE38();
  v6 = v4;
  v7 = v5 == 0x746E6174736E6F63 && v4 == 0xE800000000000000;
  if (v7 || (sub_1AFDFEE28() & 1) != 0)
  {

    v8 = 0;
  }

  else if (v5 == 0x6D6F646E6172 && v6 == 0xE600000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    v8 = 1;
  }

  else
  {
    if ((v5 != 0x6E556D6F646E6172 || v6 != 0xED00006D726F6669) && (sub_1AFDFEE28() & 1) == 0)
    {
      sub_1AFDFE2C8();
      swift_allocError();
      sub_1AFDFE278();
      swift_willThrow();

      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v9);
      return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    }

    v8 = 2;
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v9);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  LOBYTE(v9[0]) = 1;
  return v8 | 0x100000000;
}

uint64_t sub_1AF9D53F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  sub_1AF9D6868(0, &qword_1EB633B08, sub_1AF9D6744, &type metadata for ParticleColorInit.CodingKeys, MEMORY[0x1E69E6F48]);
  v33 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v30 - v7;
  v54 = 1;
  sub_1AF9D6924(0, &qword_1EB633A48, sub_1AF43A11C);
  v9 = swift_allocObject();
  __asm { FMOV            V1.4S, #1.0 }

  *(v9 + 16) = xmmword_1AFE4C620;
  *(v9 + 32) = _Q1;
  v34 = _Q1;
  *(v9 + 48) = 0;
  *(v9 + 64) = 0;
  *(v9 + 72) = 0;
  *(v9 + 80) = 1065353216;
  v15 = sub_1AF3C3D64(v9);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v57 = sub_1AF9D3A24(v15);
  v17 = v16;

  sub_1AF441150(a1, a1[3]);
  sub_1AF9D6744();
  sub_1AFDFF3B8();
  if (v2)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    LOBYTE(v43) = 0;
    *(&v43 + 1) = v55;
    BYTE3(v43) = v56;
    *(&v43 + 4) = COERCE_UNSIGNED_INT(1.0);
    BYTE12(v43) = v54;
    *(&v43 + 13) = v52;
    HIBYTE(v43) = v53;
    v44 = 1.0;
    v45 = 1;
    *&v46[7] = *&v51[7];
    *v46 = *v51;
    v47 = v34;
    v48 = v57;
    v49 = v17;
    v50 = 1;
    return sub_1AF58CDA0(&v43);
  }

  else
  {
    v31 = v5;
    v18 = v32;
    LOBYTE(v35) = 0;
    sub_1AF9D6798();
    sub_1AFDFE768();
    v19 = v43;
    v20 = DWORD1(v43);
    LOBYTE(v35) = 1;
    sub_1AF51DF3C();
    sub_1AFDFE768();
    v21 = v43;
    v54 = BYTE4(v43);
    LOBYTE(v43) = 2;
    sub_1AFDFE738();
    v23 = v22;
    LOBYTE(v43) = 3;
    v24 = sub_1AFDFE718() & 1;
    sub_1AF9D6868(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    LOBYTE(v35) = 4;
    sub_1AF9D67EC(&qword_1ED72F6F0);
    sub_1AFDFE768();
    v34 = v43;
    v40 = 5;
    sub_1AF80A7AC();
    sub_1AFDFE768();
    (*(v31 + 8))(v8, v33);

    v25 = *(&v41 + 1);
    v57 = v41;
    LODWORD(v33) = v42;
    LOBYTE(v35) = v19;
    *(&v35 + 1) = v55;
    BYTE3(v35) = v56;
    *(&v35 + 4) = __PAIR64__(v21, v20);
    v26 = v54;
    BYTE12(v35) = v54;
    *(&v35 + 13) = v52;
    HIBYTE(v35) = v53;
    *&v36 = v23;
    BYTE4(v36) = v24;
    *(&v36 + 5) = *v51;
    HIDWORD(v36) = *&v51[7];
    v37 = v34;
    v38 = v41;
    v39 = v42;
    sub_1AF4422C8(&v35, &v43);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    LOBYTE(v43) = v19;
    *(&v43 + 1) = v55;
    BYTE3(v43) = v56;
    *(&v43 + 4) = __PAIR64__(v21, v20);
    BYTE12(v43) = v26;
    *(&v43 + 13) = v52;
    HIBYTE(v43) = v53;
    v44 = v23;
    v45 = v24;
    *v46 = *v51;
    *&v46[7] = *&v51[7];
    v47 = v34;
    v48 = v57;
    v49 = v25;
    v50 = v33;
    result = sub_1AF58CDA0(&v43);
    v28 = v38;
    *(v18 + 32) = v37;
    *(v18 + 48) = v28;
    *(v18 + 64) = v39;
    v29 = v36;
    *v18 = v35;
    *(v18 + 16) = v29;
  }

  return result;
}

void sub_1AF9D5AA8(float a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v42 = *MEMORY[0x1E69E9840];
  sub_1AF8B4B2C(*(a3 + 6), *(a3 + 7), a3[64], v36);
  if (v38)
  {
    v39[0] = v36[0];
    v39[1] = v36[1];
    v39[2] = v36[2];
    v40 = v37;
    v41 = v38;
    sub_1AF44222C(v39, &v28);
    sub_1AF4783C0(v39, 1, 1, &v28);
    if (v30 == 1 || (v32 = v28, v33 = v29, v34 = v30, v35 = v31, v9 = *(a4 + 48), v10 = *(a4 + 56), v11 = v10 - v9, v10 == v9))
    {
LABEL_4:
      sub_1AF9D637C(v36, &unk_1ED725420, &type metadata for TextureCPURuntime);
      return;
    }

    v25 = *(a3 + 4);
    v12 = a3[20];
    v13 = (a5 + 16 * v9);
    while (1)
    {
      *v17.i64 = v34(&v32, a1);
      *v18.f32 = vmul_n_f32(*v17.f32, v25);
      v19 = vmuls_lane_f32(v25, v17, 2);
      v15.i64[0] = v18.i64[0];
      v15.f32[2] = v19;
      v20 = *a3;
      v21 = *(a3 + 1);
      if (v12)
      {
        if (*a3 > 1u)
        {
          v22 = v27;
          if (v20 == 2)
          {
            v18.i64[1] = __PAIR64__(v17.u32[3], LODWORD(v19));
            v14 = vmulq_f32(vmulq_n_f32(v18, v21), *v13);
          }

          else
          {
            v15.i32[3] = v17.i32[3];
            v14 = vmlaq_n_f32(*v13, vsubq_f32(v15, *v13), v21);
          }
        }

        else
        {
          v22 = v27;
          v18.i64[1] = __PAIR64__(v17.u32[3], LODWORD(v19));
          if (*a3)
          {
            v14 = vaddq_f32(vmulq_n_f32(v18, v21), *v13);
          }

          else
          {
            v14 = vmulq_n_f32(v18, v21);
          }
        }

        *v13 = v14;
        v15 = v26;
        v16 = v22;
        goto LABEL_9;
      }

      v15.i32[3] = v26.i32[3];
      v23 = *v13;
      v16 = *v13;
      v16.i32[3] = v27.i32[3];
      if (*a3 > 1u)
      {
        if (v20 != 2)
        {
          v18 = vmlaq_n_f32(v23, vsubq_f32(v15, v16), v21);
          goto LABEL_25;
        }

        *v18.f32 = vmul_f32(vmul_n_f32(*v18.f32, v21), *v23.f32);
        v24 = vmuls_lane_f32(v19 * v21, v23, 2);
      }

      else if (*a3)
      {
        *v18.f32 = vadd_f32(vmul_n_f32(*v18.f32, v21), *v23.f32);
        v24 = (v19 * v21) + v23.f32[2];
      }

      else
      {
        *v18.f32 = vmul_n_f32(*v18.f32, v21);
        v24 = v19 * v21;
      }

      v18.f32[2] = v24;
LABEL_25:
      v18.i32[3] = HIDWORD(*v13);
      *v13 = v18;
LABEL_9:
      ++v13;
      v26 = v15;
      v27 = v16;
      if (!--v11)
      {
        goto LABEL_4;
      }
    }
  }
}

void sub_1AF9D5D10(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v77 = *MEMORY[0x1E69E9840];
  v8 = sub_1AF64B110(&type metadata for Color, &off_1F252CA88, *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 16));
  v11 = *(v3 + 2);
  if ((v3[12] & 1) == 0)
  {
    *v10.i64 = v11;
    *v9.i64 = *(*a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 48) / v11;
    *v9.i32 = *v9.i64;
    *v10.i32 = *v9.i32 - truncf(*v9.i32);
    v15.i64[0] = 0x8000000080000000;
    v15.i64[1] = 0x8000000080000000;
    v9.i32[0] = vbslq_s8(v15, v10, v9).u32[0];
LABEL_20:

    sub_1AF9D5AA8(*v9.i32, a3, v3, a1, v8);
    return;
  }

  if (v11 != 0.0)
  {
    if (LODWORD(v11) == 1)
    {
      sub_1AF8B4B2C(*(v3 + 6), *(v3 + 7), v3[64], v71);
      if (!v73)
      {
        return;
      }

      v74[0] = v71[0];
      v74[1] = v71[1];
      v74[2] = v71[2];
      v75 = v72;
      v76 = v73;
      sub_1AF44222C(v74, &v63);
      sub_1AF4783C0(v74, 1, 1, &v63);
      if (v65 == 1 || (v67 = v63, v68 = v64, v69 = v65, v70 = v66, v12 = *(a1 + 48), v13 = *(a1 + 56), v14 = v13 - v12, v13 == v12))
      {
        sub_1AF9D637C(v71, &unk_1ED725420, &type metadata for TextureCPURuntime);
        return;
      }

      v40 = a2[3];
      v41 = a2[4];
      v43 = a2[1];
      v42 = a2[2];
      v60 = v4[4];
      v44 = (v8 + 16 * v12);
      v45 = *(v4 + 20);
      while (1)
      {
        *v52.i64 = v69(&v67, vcvts_n_f32_u64((9 * ((((5 * v42) >> 32) >> 25) | (640 * v42))) & 0xFFFFFF, 0x18uLL));
        *v53.f32 = vmul_n_f32(*v52.f32, v60);
        v54 = vmuls_lane_f32(v60, v52, 2);
        v47.i64[0] = v53.i64[0];
        v47.f32[2] = v54;
        v55 = *v4;
        v56 = v4[1];
        if (v45)
        {
          if (*v4 > 1u)
          {
            v57 = v62;
            if (v55 == 2)
            {
              v53.i64[1] = __PAIR64__(v52.u32[3], LODWORD(v54));
              v46 = vmulq_f32(vmulq_n_f32(v53, v56), *v44);
            }

            else
            {
              v47.i32[3] = v52.i32[3];
              v46 = vmlaq_n_f32(*v44, vsubq_f32(v47, *v44), v56);
            }
          }

          else
          {
            v57 = v62;
            v53.i64[1] = __PAIR64__(v52.u32[3], LODWORD(v54));
            if (*v4)
            {
              v46 = vaddq_f32(vmulq_n_f32(v53, v56), *v44);
            }

            else
            {
              v46 = vmulq_n_f32(v53, v56);
            }
          }

          *v44 = v46;
          v47 = v61;
          v48 = v57;
          goto LABEL_37;
        }

        v47.i32[3] = v61.i32[3];
        v58 = *v44;
        v48 = *v44;
        v48.i32[3] = v62.i32[3];
        if (*v4 > 1u)
        {
          if (v55 != 2)
          {
            v53 = vmlaq_n_f32(v58, vsubq_f32(v47, v48), v56);
            goto LABEL_53;
          }

          *v53.f32 = vmul_f32(vmul_n_f32(*v53.f32, v56), *v58.f32);
          v59 = vmuls_lane_f32(v54 * v56, v58, 2);
        }

        else if (*v4)
        {
          *v53.f32 = vadd_f32(vmul_n_f32(*v53.f32, v56), *v58.f32);
          v59 = (v54 * v56) + v58.f32[2];
        }

        else
        {
          *v53.f32 = vmul_n_f32(*v53.f32, v56);
          v59 = v54 * v56;
        }

        v53.f32[2] = v59;
LABEL_53:
        v53.i32[3] = HIDWORD(*v44);
        *v44 = v53;
LABEL_37:
        v49 = v42 << 17;
        v50 = v43 ^ v40;
        v51 = v42 ^ v41;
        v42 ^= v43 ^ v40;
        v43 ^= v51;
        v40 = v50 ^ v49;
        v41 = __ROR8__(v51, 19);
        ++v44;
        v61 = v47;
        v62 = v48;
        if (!--v14)
        {
          sub_1AF9D637C(v71, &unk_1ED725420, &type metadata for TextureCPURuntime);
          a2[1] = v43;
          a2[2] = v42;
          a2[3] = v40;
          a2[4] = v41;
          return;
        }
      }
    }

    *v9.i32 = vcvts_n_f32_u64(sub_1AF6C0D50() & 0xFFFFFF, 0x18uLL);
    goto LABEL_20;
  }

  *v16.i64 = sub_1AF6DCDAC(*(v3 + 2));
  v19 = *(v3 + 4);
  *v20.f32 = vmul_n_f32(*v16.f32, v19);
  v21 = vmuls_lane_f32(v19, v16, 2);
  v22 = v20;
  v22.f32[2] = v21;
  v23 = *(a1 + 48);
  v24 = *(a1 + 56) - v23;
  if ((v3[20] & 1) == 0)
  {
    if (!v24)
    {
      return;
    }

    v30 = *v3;
    v17.i32[0] = *(v3 + 1);
    v31 = vdupq_lane_s32(v17, 0);
    v32 = vmul_f32(*v20.f32, *v31.f32);
    v33 = v21 * *v17.i32;
    *v34.f32 = v32;
    v34.i64[1] = LODWORD(v33);
    for (i = (v8 + 16 * v23); ; ++i)
    {
      v37 = v18.i32[3];
      v38 = *i;
      v18 = *i;
      v18.i32[3] = v37;
      if (v30 > 1)
      {
        if (v30 == 2)
        {
          *v36.f32 = vmul_f32(v32, *v38.f32);
          v39 = vmuls_lane_f32(v33, v38, 2);
LABEL_33:
          v36.f32[2] = v39;
          goto LABEL_26;
        }

        v36 = vmlaq_f32(v38, v31, vsubq_f32(v22, v18));
      }

      else
      {
        if (v30)
        {
          *v36.f32 = vadd_f32(v32, *v38.f32);
          v39 = v33 + v38.f32[2];
          goto LABEL_33;
        }

        v36 = v34;
      }

LABEL_26:
      v36.i32[3] = HIDWORD(*i);
      *i = v36;
      if (!--v24)
      {
        return;
      }
    }
  }

  if (v24)
  {
    v22.i32[3] = v16.i32[3];
    v25 = *v3;
    v17.i32[0] = *(v3 + 1);
    v26 = vdupq_lane_s32(v17, 0);
    v20.i64[1] = __PAIR64__(v16.u32[3], LODWORD(v21));
    v27 = vmulq_n_f32(v20, *v17.i32);
    v28 = (v8 + 16 * v23);
    do
    {
      if (v25 > 1)
      {
        if (v25 == 2)
        {
          v29 = vmulq_f32(v27, *v28);
        }

        else
        {
          v29 = vmlaq_f32(*v28, v26, vsubq_f32(v22, *v28));
        }
      }

      else
      {
        v29 = v27;
        if (v25)
        {
          v29 = vaddq_f32(v27, *v28);
        }
      }

      *v28++ = v29;
      --v24;
    }

    while (v24);
  }
}

uint64_t sub_1AF9D6214(uint64_t a1)
{

  v2 = *(a1 + 8);

  sub_1AF3CC2D0(v2, v6);

  if (v7)
  {
    v16 = v6[2];
    v17 = v7;
    v18 = v8;
    v14 = v6[0];
    v15 = v6[1];
  }

  else
  {
    sub_1AF9D4E90(&v14);
  }

  v12 = v17;
  v13 = v18;
  v10 = v15;
  v11 = v16;
  v9 = v14;
  MEMORY[0x1EEE9AC00](*(a1 + 32), v3);
  sub_1AFCBF008(v4, sub_1AF9D6354);
  sub_1AF58CDA0(&v14);
}

uint64_t sub_1AF9D637C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AF9D66F4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t destroy for ParticleColorInit()
{
}

uint64_t initializeWithCopy for ParticleColorInit(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 32) = *(a2 + 32);
  v3 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v3;
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

uint64_t assignWithCopy for ParticleColorInit(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  v4 = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t assignWithTake for ParticleColorInit(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t getEnumTagSinglePayload for ParticleColorInit(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ParticleColorInit(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1AF9D6678()
{
  result = qword_1EB641680;
  if (!qword_1EB641680)
  {
    sub_1AF9D66F4(255, &qword_1EB641688, &type metadata for ParticleColorInit.Mode, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641680);
  }

  return result;
}

void sub_1AF9D66F4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1AF9D6744()
{
  result = qword_1EB6341B0;
  if (!qword_1EB6341B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6341B0);
  }

  return result;
}

unint64_t sub_1AF9D6798()
{
  result = qword_1EB634388;
  if (!qword_1EB634388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB634388);
  }

  return result;
}

uint64_t sub_1AF9D67EC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1AF9D6868(255, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1AF9D6868(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1AF9D68D0()
{
  result = qword_1EB641698;
  if (!qword_1EB641698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641698);
  }

  return result;
}

void sub_1AF9D6924(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_1AF9D698C()
{
  result = qword_1EB6416A0[0];
  if (!qword_1EB6416A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB6416A0);
  }

  return result;
}

unint64_t sub_1AF9D69E4()
{
  result = qword_1EB6341A0;
  if (!qword_1EB6341A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6341A0);
  }

  return result;
}

unint64_t sub_1AF9D6A3C()
{
  result = qword_1EB6341A8;
  if (!qword_1EB6341A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6341A8);
  }

  return result;
}

double sub_1AF9D6A90@<D0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1AFE21180;
  result = 0.0078125;
  *(a1 + 16) = 0x3F80000000000000;
  return result;
}

void sub_1AF9D6AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 104);
  v54[0] = *(a3 + 88);
  v54[1] = v5;
  v55 = *(a3 + 120);
  sub_1AF6B06C0(a2, v54, 0x200000000, &v38);
  v32 = v38;
  if (v38)
  {
    v6 = v42;
    v7 = v44;
    v46 = v39;
    v47 = v40;
    v30 = v45;
    v31 = v43;
    if (v45 >= 1 && v42)
    {
      v63 = *(v44 + 32);
      v37 = *(v43 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v8 = (v41 + 24);
      while (1)
      {
        v35 = v6;
        v36 = v4;
        v10 = *(v8 - 6);
        v9 = *(v8 - 5);
        v11 = *(v8 - 4);
        v12 = *v8;
        v34 = *(v8 - 1);
        v13 = v8[1];
        v14 = v8[2];
        if (v37)
        {
          v15 = *(v14 + 376);

          os_unfair_lock_lock(v15);
          os_unfair_lock_lock(*(v14 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v63);
        v16 = *(v7 + 64);
        v56[0] = *(v7 + 48);
        v56[1] = v16;
        v57 = *(v7 + 80);
        v17 = *(*(*(*(v14 + 40) + 16) + 32) + 16) + 1;
        *(v7 + 48) = ecs_stack_allocator_allocate(*(v7 + 32), 48 * v17, 8);
        *(v7 + 56) = v17;
        *(v7 + 72) = 0;
        *(v7 + 80) = 0;
        *(v7 + 64) = 0;
        LOBYTE(v51) = 1;
        v58[0] = v31;
        v58[1] = v14;
        v58[2] = v7;
        v58[3] = v11;
        v58[4] = (v9 - v10 + v11);
        v58[5] = v30;
        v58[6] = v10;
        v58[7] = v9;
        v58[8] = 0;
        v58[9] = 0;
        v59 = 1;
        v60 = v34;
        v61 = v12;
        v62 = v13;
        v18 = type metadata accessor for ParticleFloat3Init();
        sub_1AF9D7B94(v58, (a1 + 8), v18);
        if (v36)
        {
          break;
        }

        v48 = v32;
        v49 = v46;
        v50 = v47;
        sub_1AF630994(v7, &v48, v56);
        v4 = 0;
        if (*(*(v7 + 104) + 16))
        {

          sub_1AF62F348(v19, v14);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v21 = *(v7 + 104);
          if (isUniquelyReferenced_nonNull_native)
          {
            v22 = v21[2];
            v23 = swift_isUniquelyReferenced_nonNull_native();
            *(v7 + 104) = v21;
            if ((v23 & 1) == 0)
            {
              v21 = sub_1AF420EA0(0, v22, 1, v21);
              *(v7 + 104) = v21;
            }

            sub_1AF43A540(0);
            swift_arrayDestroy();
            if (v22)
            {
              v24 = v21[2] - v22;
              memmove(v21 + 4, &v21[9 * v22 + 4], 72 * v24);
              v21[2] = v24;
            }

            *(v7 + 104) = v21;
          }

          else
          {
            v25 = MEMORY[0x1E69E7CC0];
            if (v21[3] >= 2uLL)
            {
              sub_1AF9D7EF0(0, &qword_1ED7269C0, sub_1AF43A540);
              v25 = swift_allocObject();
              v26 = j__malloc_size_0(v25);
              v25[2] = 0;
              v25[3] = 2 * ((v26 - 32) / 72);
            }

            *(v7 + 104) = v25;
          }

          if (*(*(v7 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_currentState) - 1 >= 2)
          {
            v27 = *(v14 + 232);
            v28 = *(v14 + 256);
            if (v27 == v28)
            {
              v29 = *(v14 + 240);
            }

            else
            {
              sub_1AF6497A0(v28, v27);
              v28 = *(v14 + 232);
              v29 = *(v14 + 240);
              if (v29 == v28)
              {
                v29 = 0;
                v28 = 0;
                *(v14 + 232) = 0;
                *(v14 + 240) = 0;
              }
            }

            *(v14 + 248) = v29;
            *(v14 + 256) = v28;
          }
        }

        ecs_stack_allocator_pop_snapshot(v63);
        if (v37)
        {
          os_unfair_lock_unlock(*(v14 + 344));
          os_unfair_lock_unlock(*(v14 + 376));
        }

        v8 += 6;
        v6 = v35 - 1;
        if (v35 == 1)
        {
          goto LABEL_28;
        }
      }

      v51 = v32;
      v52 = v46;
      v53 = v47;
      sub_1AF630994(v7, &v51, v56);
      sub_1AF62D29C(v14);
      ecs_stack_allocator_pop_snapshot(v63);
      os_unfair_lock_unlock(*(v14 + 344));
      os_unfair_lock_unlock(*(v14 + 376));
      __break(1u);
    }

    else
    {
LABEL_28:
      sub_1AF5D1564(&v38);
    }
  }
}

uint64_t sub_1AF9D6F80(unsigned __int8 a1)
{
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](a1);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF9D6FE0(void *a1)
{
  v2 = v1;
  type metadata accessor for ParticleFloat3Init.CodingKeys();
  swift_getWitnessTable();
  v4 = sub_1AFDFE9A8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3F8();
  v13 = *v2;
  v12 = 0;
  sub_1AF48C324();
  sub_1AF48C3D0(&qword_1EB6398A0);
  v9 = v11;
  sub_1AFDFE918();
  if (!v9)
  {
    v13 = v2[1];
    v12 = 1;
    sub_1AFDFE918();
    v13 = v2[2];
    v12 = 2;
    sub_1AFDFE918();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1AF9D71F4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v16 = a2;
  type metadata accessor for ParticleFloat3Init.CodingKeys();
  swift_getWitnessTable();
  v4 = sub_1AFDFE818();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v15 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v9 = v5;
  v10 = v16;
  sub_1AF48C324();
  v17 = 0;
  sub_1AF48C3D0(&qword_1ED7231A0);
  sub_1AFDFE768();
  v11 = v18;
  v17 = 1;
  sub_1AFDFE768();
  v12 = v18;
  v17 = 2;
  sub_1AFDFE768();
  (*(v9 + 8))(v8, v4);
  v13 = v18;
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *v10 = v11;
  v10[1] = v12;
  v10[2] = v13;
  return result;
}

uint64_t sub_1AF9D7484()
{
  swift_getWitnessTable();

  return sub_1AF609060();
}

uint64_t sub_1AF9D7508()
{
  sub_1AFDFF288();
  sub_1AF0FBD18(v2, *v0);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF9D755C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF9D33CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF9D758C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1AF9D75E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

double sub_1AF9D7634@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF9D71F4(a1, &v5);
  if (!v2)
  {
    result = *&v5;
    *a2 = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

double sub_1AF9D76C8@<D0>(uint64_t a1@<X8>)
{
  sub_1AF9D6A90(&v3);
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_1AF9D7734(uint64_t a1)
{
  v2 = type metadata accessor for ParticleFloat3Init();
  v3 = *(a1 + 88);
  v24 = *(a1 + 72);
  v25 = v3;
  v4 = *(a1 + 120);
  v26 = *(a1 + 104);
  v27 = v4;
  v5 = *(a1 + 24);
  v20 = *(a1 + 8);
  v21 = v5;
  v6 = *(a1 + 56);
  v22 = *(a1 + 40);
  v23 = v6;
  sub_1AFB941E8(v2, &off_1F254D3D8, &v17);
  v16 = v17;
  v7 = v18;
  v8 = sub_1AF9D7D2C();
  v17 = v16;
  v18 = v7;
  v19 = v8;
  if (*a1)
  {
    ObjectType = swift_getObjectType();
    type metadata accessor for particle_set_float3_generic_uniforms(0);
    sub_1AF6F4524(&v17, 1, ObjectType, v10, v11, v12, v13, v14);
  }

  return sub_1AFB9457C(0xD00000000000001BLL, 0x80000001AFF42DD0, 0, a1);
}

uint64_t sub_1AF9D78C0()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1AF9D78F0()
{
  sub_1AF9D78C0();

  return swift_deallocClassInstance();
}

const char *sub_1AF9D7978()
{
  if (swift_dynamicCastMetatype())
  {
    return "SetLinearFactor.CPU";
  }

  if (swift_dynamicCastMetatype())
  {
    return "SetAngularFactor.CPU";
  }

  if (swift_dynamicCastMetatype())
  {
    return "SetTargetPosition.CPU";
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

const char *sub_1AF9D7A54()
{
  if (swift_dynamicCastMetatype())
  {
    return "SetLinearFactor.GPU";
  }

  if (swift_dynamicCastMetatype())
  {
    return "SetAngularFactor.GPU";
  }

  if (swift_dynamicCastMetatype())
  {
    return "SetTargetPosition.GPU";
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

double sub_1AF9D7B30(uint64_t a1, uint64_t a2)
{
  sub_1AF9D7EF0(0, &qword_1ED72F7D0, sub_1AF47BC54);
  v4 = swift_allocObject();
  *&result = 1;
  *(v4 + 16) = xmmword_1AFE431C0;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  return result;
}

uint64_t sub_1AF9D7B94(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  sub_1AF6AF8AC(*(a3 + 16), *(a3 + 16), *(a3 + 24));
  result = sub_1AFDFDE78();
  v8 = *v4;
  v9 = v4[1];
  if (*v4 == v9 && v4[2] == v4[3] && v4[4] == v4[5])
  {
    v10 = *(a1 + 48);
    v11 = *(a1 + 56) - v10;
    if (v11)
    {
      *&v12 = *v4;
      *(&v12 + 1) = v4[2];
      *(&v12 + 1) = *(v4 + 4);
      v13 = (result + 16 * v10);
      do
      {
        *v13++ = v12;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v14 = *(a1 + 48);
    v15 = *(a1 + 56) - v14;
    if (v15)
    {
      v16 = a2[2];
      v17 = a2[3];
      v18 = *a2;
      v19 = a2[1];
      v20 = v9 - v8;
      v21 = v4[2];
      v22 = v4[3] - v21;
      v23 = v4[4];
      v24 = v4[5] - v23;
      v25 = (result + 16 * v14);
      do
      {
        v26 = v18 ^ v16;
        v27 = v19 ^ v17;
        v28 = v26 ^ v19;
        v29 = vcvts_n_f32_u64((9 * ((((5 * v19) >> 32) >> 25) | (640 * v19))) & 0xFFFFFF, 0x18uLL);
        v30 = v18 ^ v27;
        v31 = v26 ^ (v19 << 17) ^ v30;
        v32 = v31 ^ v28;
        v33 = __ROR8__(v27, 19);
        v34 = v28 ^ v33 ^ v30;
        v35 = v31 ^ (v28 << 17) ^ v34;
        v36 = __ROR8__(v28 ^ v33, 19);
        v19 = v35 ^ v32;
        v18 = v32 ^ v36 ^ v34;
        v16 = v35 ^ (v32 << 17);
        HIDWORD(v37) = 0;
        *&v37 = v8 + (v20 * v29);
        *(&v37 + 1) = v21 + (v22 * vcvts_n_f32_u64((9 * ((((5 * v28) >> 32) >> 25) | (640 * v28))) & 0xFFFFFF, 0x18uLL));
        v17 = __ROR8__(v32 ^ v36, 19);
        *(&v37 + 2) = v23 + (v24 * vcvts_n_f32_u64((9 * ((((5 * v32) >> 32) >> 25) | (640 * v32))) & 0xFFFFFFLL, 0x18uLL));
        *v25++ = v37;
        --v15;
      }

      while (v15);
      *a2 = v18;
      a2[1] = v19;
      a2[2] = v16;
      a2[3] = v17;
    }
  }

  return result;
}

uint64_t sub_1AF9D7D2C()
{
  if (swift_dynamicCastMetatype())
  {
    return 28;
  }

  if (swift_dynamicCastMetatype())
  {
    return 29;
  }

  if (swift_dynamicCastMetatype())
  {
    return 14;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF9D7DEC(uint64_t a1)
{

  v2 = type metadata accessor for ParticleFloat3Init();
  sub_1AFB941E8(v2, &off_1F254D3D8, v4);
  sub_1AFCBF008(*(a1 + 32), sub_1AF9D7EB4);
}

void sub_1AF9D7EF0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1AF9D7FC8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65676E6172 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1AFDFEE28();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1AF9D803C(void *a1, float a2, float a3)
{
  type metadata accessor for ParticleFloatInit.CodingKeys();
  swift_getWitnessTable();
  v6 = sub_1AFDFE9A8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v12 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3F8();
  v13 = a2;
  v14 = a3;
  sub_1AF48C324();
  sub_1AF48C3D0(&qword_1EB6398A0);
  sub_1AFDFE918();
  return (*(v7 + 8))(v10, v6);
}

float sub_1AF9D81E0(void *a1)
{
  type metadata accessor for ParticleFloatInit.CodingKeys();
  swift_getWitnessTable();
  v4 = sub_1AFDFE818();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v10 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3B8();
  if (!v1)
  {
    sub_1AF48C324();
    sub_1AF48C3D0(&qword_1ED7231A0);
    sub_1AFDFE768();
    (*(v5 + 8))(v8, v4);
    v2 = v11;
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v2;
}

uint64_t sub_1AF9D83C8()
{
  swift_getWitnessTable();

  return sub_1AF609060();
}

uint64_t sub_1AF9D8434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF9D7FC8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1AF9D8468@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF171634();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1AF9D8498(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1AF9D84EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

void sub_1AF9D8540(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1AF9D81E0(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 4) = v5;
  }
}

double sub_1AF9D8598@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  sub_1AF9D7F98(*(a1 + 16));
  __asm { FMOV            V0.2S, #1.0 }

  *a2 = result;
  return result;
}

const char *sub_1AF9D864C()
{
  if (swift_dynamicCastMetatype())
  {
    return "SetParticleAngle.CPU";
  }

  if (swift_dynamicCastMetatype())
  {
    return "SetParticleAngleVelocity.CPU";
  }

  if (swift_dynamicCastMetatype())
  {
    return "SetParticleTextureFrame.CPU";
  }

  return "Unsupported";
}

uint64_t sub_1AF9D86E8()
{
  v0 = type metadata accessor for ParticleFloatInit();
  sub_1AFB941E8(v0, &off_1F254D670, &v2);
  return sub_1AFB94680();
}

uint64_t sub_1AF9D87D4(void *a1, __n128 a2, __n128 a3)
{
  v12 = a3;
  v13 = a2;
  sub_1AF9DAC70(0, &qword_1EB6419B8, sub_1AF9DAB4C, &type metadata for GrowEmitterRuntime.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF9DAB4C();
  sub_1AFDFF3F8();
  v14 = v13;
  v15 = 0;
  sub_1AF9DAC70(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  sub_1AF9DABA0(&qword_1ED72F758);
  sub_1AFDFE918();
  if (!v3)
  {
    v14.n128_u8[0] = 1;
    sub_1AFDFE8F8();
    v14 = v12;
    v15 = 2;
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1AF9D8A10(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x746E756F63;
  if (v2 != 1)
  {
    v4 = 0x614D6D6F646E6172;
    v3 = 0xED00007269446E69;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 7498084;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x746E756F63;
  if (*a2 != 1)
  {
    v8 = 0x614D6D6F646E6172;
    v7 = 0xED00007269446E69;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7498084;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1AFDFEE28();
  }

  return v11 & 1;
}

uint64_t sub_1AF9D8B1C()
{
  v1 = 0x746E756F63;
  if (*v0 != 1)
  {
    v1 = 0x614D6D6F646E6172;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7498084;
  }
}

uint64_t sub_1AF9D8B78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF9D9964(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF9D8BA0(uint64_t a1)
{
  v2 = sub_1AF9DAB4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF9D8BDC(uint64_t a1)
{
  v2 = sub_1AF9DAB4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF9D8C18@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF9DA340(a1);
  if (!v2)
  {
    *a2 = v5;
    *(a2 + 16) = result;
    *(a2 + 32) = v6;
  }

  return result;
}

double sub_1AF9D8C70@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  result = 0.0078125;
  *(a1 + 32) = xmmword_1AFE20160;
  return result;
}

void sub_1AF9D8C88(void *a1, uint64_t a2, uint64_t a3, float32x4_t *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v104 = *MEMORY[0x1E69E9840];
  v9 = *(a3 + 104);
  v74[0] = *(a3 + 88);
  v74[1] = v9;
  v75 = *(a3 + 120);
  sub_1AF6B06C0(a2, v74, 0x200000000, &v81);
  v64 = v81;
  if (!v81)
  {
    return;
  }

  v63 = v84;
  v10 = v87;
  v92 = v82;
  v93 = v83;
  v62 = v88;
  if (v88 < 1 || !v85)
  {
LABEL_39:
    sub_1AF5D1564(&v81);
    return;
  }

  v11 = 0;
  v65 = v86;
  v70 = *(v86 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v12 = *(a3 + 8);
  v13 = *(a3 + 12);
  v15 = v12 == 0xFFFFFFFFLL && v13 == 0;
  v60 = v15;
  v69 = *(v87 + 32);
  v66 = a4->u8[0];
  v56 = v12;
  v57 = *(a3 + 12);
  v52 = v12 | (v13 << 32);
  v61 = v85;
  while (1)
  {
    v67 = v11;
    v68 = v7;
    v16 = (v63 + 48 * v11);
    v18 = *v16;
    v17 = v16[1];
    v19 = v16[2];
    v20 = *(v16 + 2);
    v21 = *(v16 + 3);
    v23 = *(v16 + 4);
    v22 = *(v16 + 5);
    if (v70)
    {
      v24 = *(v22 + 376);

      os_unfair_lock_lock(v24);
      os_unfair_lock_lock(*(v22 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v69);
    v25 = *(v10 + 64);
    v94[0] = *(v10 + 48);
    v94[1] = v25;
    v95 = *(v10 + 80);
    v26 = *(*(*(*(v22 + 40) + 16) + 32) + 16) + 1;
    *(v10 + 48) = ecs_stack_allocator_allocate(*(v10 + 32), 48 * v26, 8);
    *(v10 + 56) = v26;
    *(v10 + 72) = 0;
    *(v10 + 80) = 0;
    *(v10 + 64) = 0;
    LOBYTE(v76[0]) = 1;
    v96[0] = v65;
    v96[1] = v22;
    v96[2] = v10;
    v96[3] = v19;
    v96[4] = (v17 - v18 + v19);
    v96[5] = v62;
    v96[6] = v18;
    v96[7] = v17;
    v96[8] = 0;
    v96[9] = 0;
    v97 = 1;
    v98 = v20;
    v99 = v21;
    v100 = v23;
    v27 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v20, v21, v23, v10);
    v28 = sub_1AF64B110(&type metadata for Orientation, &off_1F252C8A8, v20, v21, v23, v10);
    memset(v76, 0, sizeof(v76));
    v77 = 0;
    v78 = 1;
    v79 = 0;
    v80 = 0;
    if (v66 != 2)
    {
      sub_1AF74F2D4(a5, a6, v66, 3, 0, v89);
      if (!v91)
      {
        goto LABEL_19;
      }

      v101[0] = v89[0];
      v101[1] = v89[1];
      v101[2] = v89[2];
      v102 = v90;
      v103 = v91;
      swift_unknownObjectRelease();
      sub_1AF478ACC(v101, 2, 1, v76);
    }

    if (!v60 && (v56 & 0x80000000) == 0)
    {
      v30 = (v65 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
      if (*(v65 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) > v56)
      {
        v31 = a4[2].f32[0];
        v32 = (*v30 + 12 * v56);
        if (v57 == -1 || v32[2] == v57)
        {
          v33 = *(v32 + 2);
          v34 = *(*(v65 + 144) + 8 * *v32 + 32);
          if (*(v34 + 232) <= v33 && *(v34 + 240) > v33)
          {
            break;
          }
        }
      }
    }

LABEL_19:
    v29 = v68;
LABEL_20:
    v71 = v64;
    v72 = v92;
    v73 = v93;
    sub_1AF630994(v10, &v71, v94);
    v7 = v29;
    sub_1AF62D29C(v22);
    ecs_stack_allocator_pop_snapshot(v69);
    if (v70)
    {
      os_unfair_lock_unlock(*(v22 + 344));
      os_unfair_lock_unlock(*(v22 + 376));
    }

    v11 = v67 + 1;
    if (v67 + 1 == v61)
    {
      goto LABEL_39;
    }
  }

  v53 = v27;
  v51 = OBJC_IVAR____TtC3VFX13EntityManager_commandQueues;
  v35 = **(v65 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  v36 = *(v34 + 344);

  os_unfair_lock_lock(v36);
  ecs_stack_allocator_push_snapshot(*(v35 + 32));
  if (sub_1AF657F68(&type metadata for GrowEmitterRuntime))
  {
  }

  else
  {
    v38 = *(v35 + 32);

    v39 = ecs_stack_allocator_allocate(v38, 8, 8);
    *v39 = v33;
    sub_1AF648EC4(&type metadata for GrowEmitterRuntime, &off_1F254D8E0, v39, 1, 1, **(v65 + v51));
  }

  if (v30[1] > v56)
  {
    v40 = (*v30 + 12 * v56);
    v41 = *(v40 + 2);
    if (v57 == -1 || v40[2] == v57)
    {
      *v37.i32 = v31 + 0.000000001;
      v42 = vdupq_lane_s32(v37, 0);
      v42.i32[3] = 0;
      v43 = *(*(v65 + 144) + 8 * *v40 + 32);
      v44 = *(v43 + 48);
      v45 = (v44 + 32);
      v46 = *(v44 + 16) + 1;
      while (--v46)
      {
        v47 = v45 + 5;
        v48 = *v45;
        v45 += 5;
        if (v48 == &type metadata for GrowEmitterRuntime)
        {
          v29 = v68;
          sub_1AF9D9CE8(&(*(v47 - 2))[3 * v41] + *(v43 + 128), v96, a4, a1, v76, v53, v28, v52, v42);
          v49 = v68;
          if (v68)
          {
            goto LABEL_42;
          }

          ecs_stack_allocator_pop_snapshot(*(v35 + 32));
          os_unfair_lock_unlock(*(v34 + 344));

          goto LABEL_20;
        }
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v50 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v50);

  v49 = 0xD000000000000010;
  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFE8D060);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  sub_1AFDFE518();
  __break(1u);
LABEL_42:

  os_unfair_lock_unlock(*(v34 + 344));
  __break(1u);
}

uint64_t sub_1AF9D93AC(void *a1)
{
  v3 = v1;
  sub_1AF9DAC70(0, &qword_1EB6419D0, sub_1AF9DAC1C, &type metadata for ParticleGrowEmitter.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF9DAC1C();
  sub_1AFDFF3F8();
  LOBYTE(v12) = *v3;
  v13 = 0;
  sub_1AF51D07C();
  sub_1AFDFE918();
  if (!v2)
  {
    v12 = *(v3 + 16);
    v13 = 1;
    sub_1AF9DAC70(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    sub_1AF9DABA0(&qword_1ED72F758);
    sub_1AFDFE918();
    LOBYTE(v12) = 2;
    sub_1AFDFE8E8();
    LOBYTE(v12) = 3;
    sub_1AFDFE8E8();
    LOBYTE(v12) = 4;
    sub_1AFDFE8E8();
    LOBYTE(v12) = 5;
    sub_1AFDFE8F8();
    LOBYTE(v12) = 6;
    sub_1AFDFE8E8();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1AF9D96BC()
{
  v1 = *v0;
  v2 = 0x6573696F6ELL;
  v3 = 0xD000000000000010;
  if (v1 != 5)
  {
    v3 = 0x676E654C70657473;
  }

  v4 = 0x746E496573696F6ELL;
  if (v1 != 3)
  {
    v4 = 0x6163536573696F6ELL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x7269446E69616DLL;
  if (v1 != 1)
  {
    v5 = 0x537269446E69616DLL;
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

uint64_t sub_1AF9D97BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF9D9A80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF9D97E4(uint64_t a1)
{
  v2 = sub_1AF9DAC1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF9D9820(uint64_t a1)
{
  v2 = sub_1AF9DAC1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AF9D985C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AF9DA5D4(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    a2[2] = v7[0];
    result = *(v7 + 12);
    *(a2 + 44) = *(v7 + 12);
  }

  return result;
}

double sub_1AF9D98E0()
{
  sub_1AF47BBFC();
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_1AFE431C0;
  *(v0 + 32) = &type metadata for Orientation;
  *(v0 + 40) = &off_1F252C8A8;
  return result;
}

double sub_1AF9D9928@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 16) = xmmword_1AFE20160;
  result = 524288.124;
  *(a1 + 32) = 0x412000003F800000;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = 500;
  *(a1 + 56) = 1036831949;
  return result;
}

uint64_t sub_1AF9D9964(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7498084 && a2 == 0xE300000000000000;
  if (v3 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E756F63 && a2 == 0xE500000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614D6D6F646E6172 && a2 == 0xED00007269446E69)
  {

    return 2;
  }

  else
  {
    v6 = sub_1AFDFEE28();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1AF9D9A80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6573696F6ELL && a2 == 0xE500000000000000;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7269446E69616DLL && a2 == 0xE700000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x537269446E69616DLL && a2 == 0xED00006461657270 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E496573696F6ELL && a2 == 0xEE00797469736E65 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6163536573696F6ELL && a2 == 0xEA0000000000656CLL || (sub_1AFDFEE28() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001AFF29640 == a2 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x676E654C70657473 && a2 == 0xEA00000000006874)
  {

    return 6;
  }

  else
  {
    v6 = sub_1AFDFEE28();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_1AF9D9CE8(unint64_t result, uint64_t a2, float32x4_t *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, float32x4_t a9)
{
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  if (v10 != v11)
  {
    v13 = result;
    v108 = *result;
    v14 = *(result + 16);
    v106 = a3->u8[0];
    v105 = a3[2].f32[1];
    v104 = a3[3].f32[2];
    v9.i32[0] = 1.0;
    v15 = a3[3].i64[0];
    v96 = a6;
    v97 = a7;
    v95 = *(a2 + 56);
    do
    {
      v16 = 0;
      v17 = v11 - v10;
      v99 = v10;
      v18 = a7 + 16 * v10;
      v19 = a6 + 16 * v10;
      while (1)
      {
        if (v106 == 2)
        {
          v21 = a4[1];
          v20 = a4[2];
          v22 = a4[3] ^ v21;
          v23 = a4[4] ^ v20;
          v24 = v22 ^ v20;
          v25 = v23 ^ v21;
          v26 = vcvts_n_f32_u64((9 * ((((5 * v20) >> 32) >> 25) | (640 * v20))) & 0xFFFFFF, 0x18uLL);
          v27 = v25 ^ v22 ^ (v20 << 17);
          v28 = __ROR8__(v23, 19);
          v29 = v27 ^ v24;
          v30 = v24 ^ v28 ^ v25;
          v31 = v27 ^ (v24 << 17) ^ v30;
          v32 = v29 ^ __ROR8__(v24 ^ v28, 19);
          a4[1] = v32 ^ v30;
          a4[2] = v31 ^ v29;
          a4[3] = v31 ^ (v29 << 17);
          a4[4] = __ROR8__(v32, 19);
          v33.i32[3] = 0;
          v33.f32[0] = v26 + -0.5;
          v33.f32[1] = vcvts_n_f32_u64((9 * ((((5 * v24) >> 32) >> 25) | (640 * v24))) & 0xFFFFFF, 0x18uLL) + -0.5;
          v33.f32[2] = vcvts_n_f32_u64((9 * ((((5 * v29) >> 32) >> 25) | (640 * v29))) & 0xFFFFFFLL, 0x18uLL) + -0.5;
        }

        else
        {
          v34 = a3[2].f32[2];
          v35 = vmuls_lane_f32(v34, v108, 2);
          v36 = vmulq_f32(vmulq_n_f32(v108, v34), vdupq_n_s32(0x3DCCCCCDu));
          v36.n128_f32[2] = v35 * 0.1;
          v33 = (*(a5 + 72))(v36);
          v9.i32[0] = 1.0;
          v33.i32[3] = v102;
        }

        v37 = vabsq_f32(v33);
        v38 = v37.f32[0] > 0.00000011921 || v37.f32[1] > 0.00000011921;
        if (v38 || v37.f32[2] > 0.00000011921)
        {
          v40 = vmulq_f32(v33, v33);
          *&v41 = v40.f32[2] + vaddv_f32(*v40.f32);
          *v40.f32 = vrsqrte_f32(v41);
          *v40.f32 = vmul_f32(*v40.f32, vrsqrts_f32(v41, vmul_f32(*v40.f32, *v40.f32)));
          v42 = vmulq_n_f32(v33, vmul_f32(*v40.f32, vrsqrts_f32(v41, vmul_f32(*v40.f32, *v40.f32))).f32[0]);
          v42.i32[3] = v103;
        }

        else
        {
          v42 = xmmword_1AFE20160;
        }

        v43 = vaddq_f32(v13[2], vmulq_n_f32(v42, v105));
        v43.f32[2] = COERCE_FLOAT(v13[2].i64[1]) + vmuls_lane_f32(v105, v42, 2);
        v44 = vmulq_f32(v43, v43);
        *&v45 = v44.f32[2] + vaddv_f32(*v44.f32);
        *v44.f32 = vrsqrte_f32(v45);
        *v44.f32 = vmul_f32(*v44.f32, vrsqrts_f32(v45, vmul_f32(*v44.f32, *v44.f32)));
        v46 = vmulq_n_f32(v43, vmul_f32(*v44.f32, vrsqrts_f32(v45, vmul_f32(*v44.f32, *v44.f32))).f32[0]);
        v47 = vmuls_lane_f32(v104, v46, 2);
        *v46.f32 = vadd_f32(*v108.f32, vmul_n_f32(*v46.f32, v104));
        v46.f32[2] = v108.f32[2] + v47;
        v46.i32[3] = 0;
        v108 = v46;
        v46.i32[3] = v9.i32[0];
        *(v19 + 16 * v16) = v46;
        v48 = vmulq_f32(v42, v42);
        v48.f32[0] = v48.f32[2] + vaddv_f32(*v48.f32);
        v49 = vdupq_lane_s32(*v48.f32, 0);
        v49.i32[3] = 0;
        v50 = vrsqrteq_f32(v49);
        v51 = vmulq_f32(v50, vrsqrtsq_f32(v49, vmulq_f32(v50, v50)));
        v52 = vmulq_f32(v51, v51);
        v53 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v48.f32[0] != 0.0)), 0x1FuLL));
        v53.i32[3] = 0;
        v54 = vbslq_s8(vcltzq_s32(v53), vmulq_f32(v42, vmulq_f32(v51, vrsqrtsq_f32(v49, v52))), v42);
        v52.i32[0] = v54.i32[2];
        v53.i64[0] = 0x8000000080000000;
        v53.i64[1] = 0x8000000080000000;
        v53.i32[0] = vbslq_s8(v53, v9, v52).i32[0];
        v49.f32[0] = v54.f32[1] / (fabsf(v54.f32[2]) + *v9.i32);
        v55 = vmuls_lane_f32(v49.f32[0], *v54.f32, 1);
        v56 = -(v54.f32[0] * v49.f32[0]);
        v57 = v54.f32[2] + (*v53.i32 * v55);
        v58 = *v53.i32 * v56;
        v59 = *v9.i32 - v55;
        v60 = vmuls_lane_f32(-*v53.i32, *v54.f32, 1);
        v61 = v54.f32[2] + (v57 + v59);
        if (v61 <= 0.0)
        {
          if (v57 < v59 || v57 < v54.f32[2])
          {
            if (v59 <= v54.f32[2])
            {
              v70 = sqrtf(((v54.f32[2] + *v9.i32) - v57) - v59);
              v54.i32[0] = vsubq_f32(v54, v54).u32[0];
              v54.f32[1] = v54.f32[1] + v60;
              v54.f32[2] = v70 * v70;
              v54.f32[3] = v58 - v56;
              v64 = vmulq_n_f32(v54, 0.5 / v70);
            }

            else
            {
              v66 = sqrtf(((v59 + *v9.i32) - v57) - v54.f32[2]);
              v67.f32[0] = v56 + v58;
              v67.f32[1] = v66 * v66;
              *&v67.u32[2] = vrev64_s32(vadd_f32(*v54.f32, __PAIR64__(LODWORD(v60), v54.u32[0])));
              v64 = vmulq_n_f32(v67, 0.5 / v66);
            }
          }

          else
          {
            v68 = sqrtf(((v57 + *v9.i32) - v59) - v54.f32[2]);
            v69.f32[0] = v68 * v68;
            v69.f32[1] = v56 + v58;
            *&v69.u32[2] = vsub_f32(__PAIR64__(LODWORD(v60), v54.u32[0]), *v54.f32);
            v64 = vmulq_n_f32(v69, 0.5 / v68);
          }
        }

        else
        {
          v62 = sqrtf(v61 + *v9.i32);
          v63.f32[0] = v60 - v54.f32[1];
          v63.i32[1] = vaddq_f32(v54, v54).u32[0];
          v63.f32[2] = v58 - v56;
          v63.f32[3] = v62 * v62;
          v64 = vmulq_n_f32(v63, 0.5 / v62);
        }

        *(v18 + 16 * v16) = v64;
        result = sub_1AF3C9244(a8, v109);
        if (v110)
        {
          v9.i32[0] = 1.0;
        }

        else
        {
          v71 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v109[3], v109[2], *(v19 + 16 * v16), 2), v109[1], *(v19 + 16 * v16), 1), v109[0], COERCE_FLOAT(*(v19 + 16 * v16)));
          v9.i32[0] = 1.0;
          v71.i32[3] = 1.0;
          *(v19 + 16 * v16) = v71;
        }

        if (v15 < v14 + v16 + 1)
        {
          break;
        }

        if (v17 == ++v16)
        {
          v93 = v14 + v16;
          goto LABEL_33;
        }
      }

      v14 = 0;
      v93 = 0;
      v73 = a4[1];
      v72 = a4[2];
      v74 = a4[3] ^ v73;
      v75 = a4[4] ^ v72;
      v76 = v74 ^ v72;
      v77 = v75 ^ v73;
      v71.f32[0] = vcvts_n_f32_u64((9 * ((((5 * v72) >> 32) >> 25) | (640 * v72))) & 0xFFFFFF, 0x18uLL);
      v78 = v77 ^ v74 ^ (v72 << 17);
      v79 = __ROR8__(v75, 19);
      v80 = v78 ^ v76;
      v81 = v76 ^ v79 ^ v77;
      v82 = v78 ^ (v76 << 17) ^ v81;
      v83 = v80 ^ __ROR8__(v76 ^ v79, 19);
      a4[1] = v83 ^ v81;
      a4[2] = v82 ^ v80;
      v71.i32[1] = vcvts_n_f32_u64((9 * ((((5 * v76) >> 32) >> 25) | (640 * v76))) & 0xFFFFFF, 0x18uLL);
      a4[3] = v82 ^ (v80 << 17);
      a4[4] = __ROR8__(v83, 19);
      v71.i32[2] = vcvts_n_f32_u64((9 * ((((5 * v80) >> 32) >> 25) | (640 * v80))) & 0xFFFFFF, 0x18uLL);
      __asm { FMOV            V1.4S, #-1.0 }

      v88.i64[0] = 0x4000000040000000;
      v88.i64[1] = 0x4000000040000000;
      v89 = vmlaq_f32(a3[1], a9, vsubq_f32(vmlaq_f32(_Q1, v88, v71), a3[1]));
      v90 = vmulq_f32(v89, v89);
      *&v91 = v90.f32[2] + vaddv_f32(*v90.f32);
      *v90.f32 = vrsqrte_f32(v91);
      *v90.f32 = vmul_f32(*v90.f32, vrsqrts_f32(v91, vmul_f32(*v90.f32, *v90.f32)));
      v92 = vmulq_n_f32(v89, vmul_f32(*v90.f32, vrsqrts_f32(v91, vmul_f32(*v90.f32, *v90.f32))).f32[0]);
      v92.i32[3] = v94;
      v13[2] = v92;
      v11 = v95;
      v10 = v99 + v16 + 1;
      v108 = 0u;
      a6 = v96;
      a7 = v97;
    }

    while (~v99 + v95 != v16);
LABEL_33:
    v13[1].i64[0] = v93;
    *v13 = v108;
  }

  return result;
}

uint64_t sub_1AF9DA340(void *a1)
{
  sub_1AF9DAC70(0, &qword_1EB6419A8, sub_1AF9DAB4C, &type metadata for GrowEmitterRuntime.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v11 - v7;
  v9 = a1[4];
  sub_1AF441150(a1, a1[3]);
  sub_1AF9DAB4C();
  sub_1AFDFF3B8();
  if (!v1)
  {
    sub_1AF9DAC70(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    v13 = 0;
    sub_1AF9DABA0(&qword_1ED72F748);
    sub_1AFDFE768();
    v11[1] = v12;
    LOBYTE(v12) = 1;
    v9 = sub_1AFDFE748();
    v13 = 2;
    sub_1AFDFE768();
    (*(v5 + 8))(v8, v4);
    v11[0] = v12;
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v9;
}

uint64_t sub_1AF9DA5D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  sub_1AF9DAC70(0, &qword_1EB6419C0, sub_1AF9DAC1C, &type metadata for ParticleGrowEmitter.CodingKeys, MEMORY[0x1E69E6F48]);
  v27 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v25 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF9DAC1C();
  v9 = v8;
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v10 = v5;
  v11 = v26;
  v29 = 0;
  sub_1AF51D028();
  v12 = v27;
  v13 = v9;
  sub_1AFDFE768();
  v14 = v28;
  sub_1AF9DAC70(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  v29 = 1;
  sub_1AF9DABA0(&qword_1ED72F748);
  sub_1AFDFE768();
  v25 = v28;
  LOBYTE(v28) = 2;
  sub_1AFDFE738();
  v16 = v15;
  LOBYTE(v28) = 3;
  sub_1AFDFE738();
  v18 = v17;
  LOBYTE(v28) = 4;
  sub_1AFDFE738();
  v20 = v19;
  LOBYTE(v28) = 5;
  v21 = sub_1AFDFE748();
  LOBYTE(v28) = 6;
  sub_1AFDFE738();
  v23 = v22;
  (*(v10 + 8))(v13, v12);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *v11 = v14;
  *(v11 + 16) = v25;
  *(v11 + 32) = v16;
  *(v11 + 36) = v18;
  *(v11 + 40) = v20;
  *(v11 + 48) = v21;
  *(v11 + 56) = v23;
  return result;
}

uint64_t sub_1AF9DA928(uint64_t a1)
{
  v2 = *(a1 + 8);

  sub_1AF3CC3F4(v2, v12);

  v4 = v12[0];
  if (v12[0] == 3)
  {
    v4 = 0;
    v5 = 0x412000003F800000;
    v6 = xmmword_1AFE20160;
    v7 = 1.0;
    v8 = 1036831949;
    v9 = 500;
  }

  else
  {
    v6 = v13;
    v5 = v14;
    v7 = v15;
    v9 = v16;
    v8 = v17;
  }

  v18 = v4;
  v19 = v6;
  v20 = v5;
  v21 = v7;
  v22 = v9;
  v23 = v8;
  MEMORY[0x1EEE9AC00](*(a1 + 32), v3);
  return sub_1AFCBF008(v10, sub_1AF9DAA50);
}

__n128 initializeWithCopy for ParticleGrowEmitter(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ParticleGrowEmitter(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[60])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ParticleGrowEmitter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 60) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 60) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1AF9DAB4C()
{
  result = qword_1EB6419B0;
  if (!qword_1EB6419B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6419B0);
  }

  return result;
}

uint64_t sub_1AF9DABA0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1AF9DAC70(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF9DAC1C()
{
  result = qword_1EB6419C8;
  if (!qword_1EB6419C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6419C8);
  }

  return result;
}

void sub_1AF9DAC70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1AF9DACFC()
{
  result = qword_1EB6419D8;
  if (!qword_1EB6419D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6419D8);
  }

  return result;
}

unint64_t sub_1AF9DAD54()
{
  result = qword_1EB6419E0;
  if (!qword_1EB6419E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6419E0);
  }

  return result;
}

unint64_t sub_1AF9DADAC()
{
  result = qword_1EB6419E8;
  if (!qword_1EB6419E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6419E8);
  }

  return result;
}

unint64_t sub_1AF9DAE04()
{
  result = qword_1EB6419F0;
  if (!qword_1EB6419F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6419F0);
  }

  return result;
}

unint64_t sub_1AF9DAE5C()
{
  result = qword_1EB6419F8;
  if (!qword_1EB6419F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6419F8);
  }

  return result;
}

unint64_t sub_1AF9DAEB4()
{
  result = qword_1EB641A00;
  if (!qword_1EB641A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641A00);
  }

  return result;
}

double sub_1AF9DAF28()
{
  sub_1AF9D7EF0(0, &qword_1ED72F7D0, sub_1AF47BC54);
  v0 = swift_allocObject();
  *&result = 2;
  *(v0 + 16) = xmmword_1AFE4C620;
  *(v0 + 32) = &type metadata for ParticleAge;
  *(v0 + 40) = &off_1F252CBE8;
  *(v0 + 48) = &type metadata for ParticleLifetime;
  *(v0 + 56) = &off_1F252CB38;
  return result;
}

double sub_1AF9DAFA0@<D0>(uint64_t a1@<X8>)
{
  __asm { FMOV            V0.2S, #1.0 }

  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_1AF9DAFB0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 0x65676E6172;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0x80000001AFF234C0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0x65676E6172;
  }

  if (*a2)
  {
    v6 = 0x80000001AFF234C0;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AF9DB058()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF9DB0DC()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF9DB14C()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF9DB1CC@<X0>(char *a1@<X8>)
{
  v2 = sub_1AFDFE638();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1AF9DB22C(unint64_t *a1@<X8>)
{
  v2 = 0x80000001AFF234C0;
  v3 = 0x65676E6172;
  if (*v1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_1AF9DB26C()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x65676E6172;
  }
}

uint64_t sub_1AF9DB2A8@<X0>(char *a1@<X8>)
{
  v2 = sub_1AFDFE638();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1AF9DB30C(uint64_t a1)
{
  v2 = sub_1AF9DC418();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF9DB348(uint64_t a1)
{
  v2 = sub_1AF9DC418();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF9DB384(void *a1, float a2, float a3)
{
  sub_1AF9DC46C(0, &qword_1EB641A08, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v14[-v11];
  sub_1AF441150(a1, a1[3]);
  sub_1AF9DC418();
  sub_1AFDFF3F8();
  v15 = a2;
  v16 = a3;
  v14[7] = 0;
  sub_1AF48C324();
  sub_1AF48C3D0(&qword_1EB6398A0);
  sub_1AFDFE918();
  if (!v3)
  {
    v14[6] = 1;
    sub_1AFDFE8C8();
  }

  return (*(v9 + 8))(v12, v8);
}

void sub_1AF9DB540(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1AF9DC214(a1);
  if (!v2)
  {
    *a2 = v5;
    *(a2 + 4) = v6;
    *(a2 + 8) = v4 & 1;
  }
}

uint64_t sub_1AF9DB594(void *a1, float a2, float a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = *(a5 + 32);
  v83[0] = *(a5 + 16);
  v83[1] = v9;
  v84 = *(a5 + 48);

  sub_1AF6B06C0(v10, v83, 0x200000000, v76);

  v12 = *v76;
  if (*v76)
  {
    v69 = *&v76[40];
    v13 = *(&v77 + 1);
    v15 = v78;
    v14 = v79;
    sub_1AFB93E58();
    if (v14 > 0 && v13)
    {
      v17 = *(*(&v15 + 1) + 32);
      v72 = *(v15 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v80 = v12;
      v81 = *&v76[8];
      v82 = *&v76[24];
      v18 = -(v16 * (1.0 / a2)) / v14;
      v75[2] = *&v76[32];
      v75[3] = v77;
      v75[4] = v78;
      v75[5] = v79;
      v75[0] = *v76;
      v75[1] = *&v76[16];
      sub_1AF5DD298(v75, v73);
      v19 = 0;
      v20 = 0.0;
      __asm { FMOV            V0.4S, #1.0 }

      v64 = _Q0;
      v65 = vdupq_n_s32(0x4479FFFFu);
      v67 = v17;
      v68 = v13;
      while (1)
      {
        v70 = v19;
        v71 = v6;
        v26 = (v69 + 48 * v19);
        v28 = *v26;
        v27 = v26[1];
        v29 = *(v26 + 2);
        v30 = *(v26 + 3);
        v31 = *(v26 + 4);
        v32 = *(v26 + 5);
        if (v72)
        {
          v33 = *(v32 + 376);

          os_unfair_lock_lock(v33);
          os_unfair_lock_lock(*(v32 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v17);
        v34 = *(*(&v15 + 1) + 64);
        v73[0] = *(*(&v15 + 1) + 48);
        v73[1] = v34;
        v74 = *(*(&v15 + 1) + 80);
        v35 = *(*(*(*(v15 + 40) + 16) + 32) + 16) + 1;
        *(*(&v15 + 1) + 48) = ecs_stack_allocator_allocate(*(*(&v15 + 1) + 32), 48 * v35, 8);
        *(*(&v15 + 1) + 56) = v35;
        *(*(&v15 + 1) + 72) = 0uLL;
        *(*(&v15 + 1) + 64) = 0;
        v36 = sub_1AF64B110(&type metadata for ParticleLifetime, &off_1F252CB38, v29, v30, v31, *(&v15 + 1));
        v37 = sub_1AF64B110(&type metadata for ParticleAge, &off_1F252CBE8, v29, v30, v31, *(&v15 + 1));
        if (a2 != a3)
        {
          v38 = v71;
          v39 = v68;
          if (v28 != v27)
          {
            v44 = a1[3];
            v45 = a1[4];
            v46 = a1[1];
            v47 = a1[2];
            v48 = v27 - v28;
            v49 = (v37 + 4 * v28);
            v50 = (v36 + 4 * v28);
            do
            {
              v51 = ((a3 - a2) * vcvts_n_f32_u64((9 * ((((5 * v47) >> 32) >> 25) | (640 * v47))) & 0xFFFFFF, 0x18uLL)) + a2;
              if (v51 <= 0.001)
              {
                v51 = 0.001;
              }

              v52 = v46 ^ v44;
              v53 = v47 ^ v45;
              v44 ^= v46 ^ (v47 << 17);
              v47 ^= v52;
              v46 ^= v53;
              v45 = __ROR8__(v53, 19);
              *v50++ = 1.0 / v51;
              *v49++ = v20;
              v20 = v18 + v20;
              --v48;
            }

            while (v48);
            a1[1] = v46;
            a1[2] = v47;
            a1[3] = v44;
            a1[4] = v45;
          }

LABEL_24:
          v43 = v70;
          goto LABEL_25;
        }

        v38 = v71;
        v39 = v68;
        if (a2 == 0.0)
        {
          if (v28 == v27)
          {
            goto LABEL_24;
          }

          v40 = v27 - v28;
          if ((v27 - v28) < 8 || (v37 - v36) <= 0x1F)
          {
            v42 = v28;
            v43 = v70;
LABEL_33:
            v60 = v27 - v42;
            v61 = 4 * v42;
            v62 = (v37 + 4 * v42);
            v63 = (v36 + v61);
            do
            {
              *v63++ = 1148846079;
              *v62++ = 1065353216;
              --v60;
            }

            while (v60);
            goto LABEL_25;
          }

          v42 = (v40 & 0xFFFFFFFFFFFFFFF8) + v28;
          v57 = (v36 + 4 * v28 + 16);
          v58 = (v37 + 4 * v28 + 16);
          v59 = v40 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v57[-1] = v65;
            *v57 = v65;
            v57 += 2;
            *(v58 - 1) = v64;
            *v58 = v64;
            v58 += 2;
            v59 -= 8;
          }

          while (v59);
          v43 = v70;
          if (v40 != (v40 & 0xFFFFFFFFFFFFFFF8))
          {
            goto LABEL_33;
          }
        }

        else
        {
          if (v28 == v27)
          {
            goto LABEL_24;
          }

          v54 = v27 - v28;
          v55 = (v37 + 4 * v28);
          v56 = (v36 + 4 * v28);
          v43 = v70;
          do
          {
            *v56++ = 1.0 / a2;
            *v55++ = v20;
            v20 = v18 + v20;
            --v54;
          }

          while (v54);
        }

LABEL_25:
        sub_1AF630994(*(&v15 + 1), &v80, v73);
        v6 = v38;
        sub_1AF62D29C(v15);
        v17 = v67;
        ecs_stack_allocator_pop_snapshot(v67);
        if (v72)
        {
          os_unfair_lock_unlock(*(v32 + 344));
          os_unfair_lock_unlock(*(v32 + 376));
        }

        v19 = v43 + 1;
        if (v19 == v39)
        {
          sub_1AF5D1564(v76);
          return sub_1AF5D1564(v76);
        }
      }
    }

    return sub_1AF5D1564(v76);
  }

  return result;
}

uint64_t sub_1AF9DB9F4(void *a1, float a2, float a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = *(a5 + 72);
  v69[0] = *(a5 + 56);
  v69[1] = v10;
  v70 = *(a5 + 88);

  sub_1AF6B06C0(v11, v69, 0x200000000, v62);

  if (*v62)
  {
    if (v65 > 0)
    {
      v54 = *(&v63 + 1);
      if (*(&v63 + 1))
      {
        v52 = a1;
        v53 = *&v62[40];
        v13 = *(&v64 + 1);
        v58 = *(v64 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v57 = *(*(&v64 + 1) + 32);
        v66 = *v62;
        v67 = *&v62[8];
        v68 = *&v62[24];
        v61[2] = *&v62[32];
        v61[3] = v63;
        v61[4] = v64;
        v61[5] = v65;
        v61[0] = *v62;
        v61[1] = *&v62[16];
        sub_1AF5DD298(v61, v59);
        v14 = 0;
        v15 = a3 - a2;
        while (1)
        {
          v16 = (v53 + 48 * v14);
          v56 = *v16;
          v55 = v16[1];
          v18 = *(v16 + 2);
          v17 = *(v16 + 3);
          v19 = *(v16 + 4);
          v20 = *(v16 + 5);
          if (v58)
          {
            v21 = *(v20 + 376);

            os_unfair_lock_lock(v21);
            os_unfair_lock_lock(*(v20 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v57);
          v22 = *(v13 + 64);
          v59[0] = *(v13 + 48);
          v59[1] = v22;
          v60 = *(v13 + 80);
          v23 = *(*(*(*(v20 + 40) + 16) + 32) + 16) + 1;
          *(v13 + 48) = ecs_stack_allocator_allocate(*(v13 + 32), 48 * v23, 8);
          *(v13 + 56) = v23;
          *(v13 + 72) = 0;
          *(v13 + 80) = 0;
          *(v13 + 64) = 0;
          v24 = sub_1AF64B110(&type metadata for ParticleLifetime, &off_1F252CB38, v18, v17, v19, v13);
          if (v18)
          {
            v25 = v6;
            if (v19)
            {
              v26 = v52;
              v27 = v52[3];
              v28 = v52[4];
              v29 = v52[1];
              v30 = v52[2];
              do
              {
                v31 = (v15 * vcvts_n_f32_u64((9 * ((((5 * v30) >> 32) >> 25) | (640 * v30))) & 0xFFFFFF, 0x18uLL)) + a2;
                if (v31 <= 0.001)
                {
                  v31 = 0.001;
                }

                v32 = v29 ^ v27;
                v33 = v30 ^ v28;
                v34 = v32 ^ v30;
                v29 ^= v33;
                v28 = __ROR8__(v33, 19);
                v27 = v32 ^ (v30 << 17);
                *v24++ = 1.0 / v31;
                v30 = v34;
                --v19;
              }

              while (v19);
LABEL_22:
              v26[1] = v29;
              v26[2] = v34;
              v26[3] = v27;
              v26[4] = v28;
            }
          }

          else
          {
            if (v56 != v55)
            {
              v26 = v52;
              v27 = v52[3];
              v28 = v52[4];
              v35 = v55 - v56;
              v36 = &v24[v56];
              v29 = v52[1];
              v37 = v52[2];
              v25 = v6;
              do
              {
                v38 = (v15 * vcvts_n_f32_u64((9 * ((((5 * v37) >> 32) >> 25) | (640 * v37))) & 0xFFFFFF, 0x18uLL)) + a2;
                if (v38 <= 0.001)
                {
                  v38 = 0.001;
                }

                v39 = v29 ^ v27;
                v40 = v37 ^ v28;
                v34 = v39 ^ v37;
                v29 ^= v40;
                v28 = __ROR8__(v40, 19);
                v27 = v39 ^ (v37 << 17);
                *v36++ = 1.0 / v38;
                v37 = v34;
                --v35;
              }

              while (v35);
              goto LABEL_22;
            }

            v25 = v6;
          }

          sub_1AF630994(v13, &v66, v59);
          v6 = v25;
          if (*(*(v13 + 104) + 16))
          {

            sub_1AF62F348(v41, v20);

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v43 = *(v13 + 104);
            if (isUniquelyReferenced_nonNull_native)
            {
              v44 = v43[2];
              v45 = swift_isUniquelyReferenced_nonNull_native();
              *(v13 + 104) = v43;
              if ((v45 & 1) == 0)
              {
                v43 = sub_1AF420EA0(0, v44, 1, v43);
                *(v13 + 104) = v43;
              }

              sub_1AF43A540(0);
              swift_arrayDestroy();
              if (v44)
              {
                v46 = v43[2] - v44;
                memmove(v43 + 4, &v43[9 * v44 + 4], 72 * v46);
                v43[2] = v46;
              }

              *(v13 + 104) = v43;
            }

            else
            {
              v47 = MEMORY[0x1E69E7CC0];
              if (v43[3] >= 2uLL)
              {
                sub_1AF9D7EF0(0, &qword_1ED7269C0, sub_1AF43A540);
                v47 = swift_allocObject();
                v48 = j__malloc_size_0(v47);
                v47[2] = 0;
                v47[3] = 2 * ((v48 - 32) / 72);
              }

              *(v13 + 104) = v47;
            }

            if (*(*(v13 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_currentState) - 1 >= 2)
            {
              v49 = *(v20 + 232);
              v50 = *(v20 + 256);
              if (v49 == v50)
              {
                v51 = *(v20 + 240);
              }

              else
              {
                sub_1AF6497A0(v50, v49);
                v50 = *(v20 + 232);
                v51 = *(v20 + 240);
                if (v51 == v50)
                {
                  v51 = 0;
                  v50 = 0;
                  *(v20 + 232) = 0;
                  *(v20 + 240) = 0;
                }
              }

              *(v20 + 248) = v51;
              *(v20 + 256) = v50;
            }
          }

          ecs_stack_allocator_pop_snapshot(v57);
          if (v58)
          {
            os_unfair_lock_unlock(*(v20 + 344));
            os_unfair_lock_unlock(*(v20 + 376));
          }

          if (++v14 == v54)
          {
            sub_1AF5D1564(v62);
            return sub_1AF5D1564(v62);
          }
        }
      }
    }

    return sub_1AF5D1564(v62);
  }

  return result;
}

uint64_t sub_1AF9DBF34(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 104);
  v11 = *(a1 + 88);
  v12 = v3;
  v13 = *(a1 + 120);
  sub_1AF5C91E0(v7);
  v4 = v7[1];
  *(v2 + 16) = v7[0];
  *(v2 + 32) = v4;
  *(v2 + 48) = v8;
  sub_1AF829140(v9);
  sub_1AF688940(a1);
  v5 = v9[1];
  *(v2 + 56) = v9[0];
  *(v2 + 72) = v5;
  *(v2 + 88) = v10;
  return v2;
}

uint64_t sub_1AF9DBFF0(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 88);
  v30 = *(a1 + 72);
  v31 = v3;
  v4 = *(a1 + 120);
  v32 = *(a1 + 104);
  v33 = v4;
  v5 = *(a1 + 24);
  v26 = v2;
  v27 = v5;
  v6 = *(a1 + 56);
  v28 = *(a1 + 40);
  v29 = v6;
  v7 = v2;

  v8 = sub_1AF3CC4F4(*(&v7 + 1));
  v10 = v9;

  v12 = *(&v8 + 1);
  v11 = *&v8;
  if (v10 == 2)
  {
    v11 = 1.0;
    v12 = 1.0;
  }

  *v25 = v11;
  *&v25[1] = v12;
  if (*a1)
  {
    ObjectType = swift_getObjectType();
    type metadata accessor for particle_set_life_uniforms(0);
    sub_1AF6F4524(v25, 1, ObjectType, v14, v15, v16, v17, v18);
  }

  v19 = *(v7 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
  v20 = v28;

  v21 = v19;

  MEMORY[0x1EEE9AC00](v22, v23);
  sub_1AFCBF008(v20, sub_1AF9D17D4);
}

float sub_1AF9DC214(void *a1)
{
  sub_1AF9DC46C(0, &qword_1EB633B18, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v11[-v8];
  sub_1AF441150(a1, a1[3]);
  sub_1AF9DC418();
  sub_1AFDFF3B8();
  if (!v1)
  {
    sub_1AF48C324();
    v11[7] = 0;
    sub_1AF48C3D0(&qword_1ED7231A0);
    sub_1AFDFE768();
    v2 = v12;
    v11[6] = 1;
    sub_1AFDFE6A8();
    (*(v6 + 8))(v9, v5);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v2;
}

unint64_t sub_1AF9DC418()
{
  result = qword_1EB634208;
  if (!qword_1EB634208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB634208);
  }

  return result;
}

void sub_1AF9DC46C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AF9DC418();
    v7 = a3(a1, &type metadata for ParticleLifeInit.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1AF9DC4D0(uint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v5 = a1[1];

  v6 = sub_1AF3CC4F4(v5);
  v8 = v7;
  v9 = v7;

  v10 = 1.0;
  if (v9 == 2)
  {
    goto LABEL_2;
  }

  v10 = *&v6;
  if ((v8 & 1) == 0)
  {
    if (*&v6 != *(&v6 + 1))
    {
      v89 = a1[4];

      sub_1AF68A8E0(a1, v113);

      sub_1AF688EC8(v89, v4, a1, v2);
      goto LABEL_86;
    }

    if (*&v6 != 0.0)
    {
LABEL_2:
      v11 = *(v2 + 72);
      v120 = *(v2 + 56);
      v121 = v11;
      v122 = *(v2 + 88);

      sub_1AF6B06C0(v12, &v120, 0x200000000, v113);

      if (!*v113)
      {
        return result;
      }

      if (v116 > 0)
      {
        v99 = *(&v114 + 1);
        if (*(&v114 + 1))
        {
          v97 = *&v113[40];
          v14 = *(&v115 + 1);
          v103 = *(v115 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
          v101 = *(*(&v115 + 1) + 32);
          v117 = *v113;
          v118 = *&v113[8];
          v119 = *&v113[24];
          v109 = *&v113[32];
          v110 = v114;
          v111 = v115;
          v112 = v116;
          v107 = *v113;
          v108 = *&v113[16];
          sub_1AF5DD298(&v107, &v104);
          v15 = 0;
          v16.i32[0] = 981668463;
          if (v10 > 0.001)
          {
            *v16.i32 = v10;
          }

          *v16.i32 = 1.0 / *v16.i32;
          v95 = v16.i32[0];
          v93 = vdupq_lane_s32(v16, 0);
          while (1)
          {
            v17 = (v97 + 48 * v15);
            v18 = *v17;
            v19 = v17[1];
            v21 = *(v17 + 2);
            v20 = *(v17 + 3);
            v23 = *(v17 + 4);
            v22 = *(v17 + 5);
            if (v103)
            {
              v24 = *(v22 + 376);

              os_unfair_lock_lock(v24);
              os_unfair_lock_lock(*(v22 + 344));
            }

            else
            {
            }

            ecs_stack_allocator_push_snapshot(v101);
            v25 = *(v14 + 64);
            v104 = *(v14 + 48);
            v105 = v25;
            v106 = *(v14 + 80);
            v26 = *(*(*(*(v22 + 40) + 16) + 32) + 16) + 1;
            *(v14 + 48) = ecs_stack_allocator_allocate(*(v14 + 32), 48 * v26, 8);
            *(v14 + 56) = v26;
            *(v14 + 72) = 0;
            *(v14 + 80) = 0;
            *(v14 + 64) = 0;
            v27 = sub_1AF64B110(&type metadata for ParticleLifetime, &off_1F252CB38, v21, v20, v23, v14);
            if (v21)
            {
              if (v23)
              {
                if (v23 > 7)
                {
                  v28 = v23 & 0xFFFFFFFFFFFFFFF8;
                  v31 = (v27 + 16);
                  v32 = v23 & 0xFFFFFFFFFFFFFFF8;
                  do
                  {
                    v31[-1] = v93;
                    *v31 = v93;
                    v31 += 2;
                    v32 -= 8;
                  }

                  while (v32);
                  if (v23 == v28)
                  {
                    goto LABEL_30;
                  }
                }

                else
                {
                  v28 = 0;
                }

                v33 = v23 - v28;
                v34 = (v27 + 4 * v28);
                do
                {
                  *v34++ = v95;
                  --v33;
                }

                while (v33);
              }
            }

            else if (v18 != v19)
            {
              v29 = v19 - v18;
              if ((v19 - v18) > 7)
              {
                v30 = (v29 & 0xFFFFFFFFFFFFFFF8) + v18;
                v35 = (v27 + 4 * v18 + 16);
                v36 = v29 & 0xFFFFFFFFFFFFFFF8;
                do
                {
                  v35[-1] = v93;
                  *v35 = v93;
                  v35 += 2;
                  v36 -= 8;
                }

                while (v36);
                if (v29 == (v29 & 0xFFFFFFFFFFFFFFF8))
                {
                  goto LABEL_30;
                }
              }

              else
              {
                v30 = v18;
              }

              v37 = v19 - v30;
              v38 = (v27 + 4 * v30);
              do
              {
                *v38++ = v95;
                --v37;
              }

              while (v37);
            }

LABEL_30:
            sub_1AF630994(v14, &v117, &v104);
            if (*(*(v14 + 104) + 16))
            {

              sub_1AF62F348(v39, v22);

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v41 = *(v14 + 104);
              if (isUniquelyReferenced_nonNull_native)
              {
                v42 = v41[2];
                v43 = swift_isUniquelyReferenced_nonNull_native();
                *(v14 + 104) = v41;
                if ((v43 & 1) == 0)
                {
                  v41 = sub_1AF420EA0(0, v42, 1, v41);
                  *(v14 + 104) = v41;
                }

                sub_1AF43A540(0);
                swift_arrayDestroy();
                if (v42)
                {
                  v44 = v41[2] - v42;
                  memmove(v41 + 4, &v41[9 * v42 + 4], 72 * v44);
                  v41[2] = v44;
                }

                *(v14 + 104) = v41;
              }

              else
              {
                v45 = MEMORY[0x1E69E7CC0];
                if (v41[3] >= 2uLL)
                {
                  sub_1AF9D7EF0(0, &qword_1ED7269C0, sub_1AF43A540);
                  v45 = swift_allocObject();
                  v46 = j__malloc_size_0(v45);
                  v45[2] = 0;
                  v45[3] = 2 * ((v46 - 32) / 72);
                }

                *(v14 + 104) = v45;
              }

              if (*(*(v14 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_currentState) - 1 >= 2)
              {
                v47 = *(v22 + 232);
                v48 = *(v22 + 256);
                if (v47 == v48)
                {
                  v49 = *(v22 + 240);
                }

                else
                {
                  sub_1AF6497A0(v48, v47);
                  v48 = *(v22 + 232);
                  v49 = *(v22 + 240);
                  if (v49 == v48)
                  {
                    v49 = 0;
                    v48 = 0;
                    *(v22 + 232) = 0;
                    *(v22 + 240) = 0;
                  }
                }

                *(v22 + 248) = v49;
                *(v22 + 256) = v48;
              }
            }

            ecs_stack_allocator_pop_snapshot(v101);
            if (v103)
            {
              os_unfair_lock_unlock(*(v22 + 344));
              os_unfair_lock_unlock(*(v22 + 376));
            }

            if (++v15 == v99)
            {
              goto LABEL_83;
            }
          }
        }
      }

      return sub_1AF5D1564(v113);
    }

    v51 = *(v2 + 32);
    v120 = *(v2 + 16);
    v121 = v51;
    v122 = *(v2 + 48);

    sub_1AF6B06C0(v52, &v120, 0x200000000, v113);

    if (!*v113)
    {
      return result;
    }

    if (v116 <= 0)
    {
      return sub_1AF5D1564(v113);
    }

    v96 = *(&v114 + 1);
    if (!*(&v114 + 1))
    {
      return sub_1AF5D1564(v113);
    }

    v94 = *&v113[40];
    v53 = *(&v115 + 1);
    v54 = *(v115 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v102 = *(*(&v115 + 1) + 32);
    v117 = *v113;
    v118 = *&v113[8];
    v119 = *&v113[24];
    v109 = *&v113[32];
    v110 = v114;
    v111 = v115;
    v112 = v116;
    v107 = *v113;
    v108 = *&v113[16];
    sub_1AF5DD298(&v107, &v104);
    v55 = 0;
    __asm { FMOV            V0.4S, #1.0 }

    v90 = _Q0;
    v91 = vdupq_n_s32(0x4479FFFFu);
    v92 = v54;
    while (1)
    {
      v61 = (v94 + 48 * v55);
      v98 = *v61;
      v100 = v61[1];
      v62 = *(v61 + 2);
      v63 = *(v61 + 3);
      v64 = *(v61 + 4);
      v65 = *(v61 + 5);
      if (v54)
      {
        v66 = *(v65 + 376);

        os_unfair_lock_lock(v66);
        os_unfair_lock_lock(*(v65 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v102);
      v67 = *(v53 + 64);
      v104 = *(v53 + 48);
      v105 = v67;
      v106 = *(v53 + 80);
      v68 = *(*(*(*(v65 + 40) + 16) + 32) + 16) + 1;
      *(v53 + 48) = ecs_stack_allocator_allocate(*(v53 + 32), 48 * v68, 8);
      *(v53 + 56) = v68;
      *(v53 + 72) = 0;
      *(v53 + 80) = 0;
      *(v53 + 64) = 0;
      v69 = sub_1AF64B110(&type metadata for ParticleLifetime, &off_1F252CB38, v62, v63, v64, v53);
      v70 = sub_1AF64B110(&type metadata for ParticleAge, &off_1F252CBE8, v62, v63, v64, v53);
      if (v62)
      {
        if (v64)
        {
          v71 = 0;
          if (v64 < 8)
          {
            goto LABEL_67;
          }

          if ((v70 - v69) <= 0x1F)
          {
            goto LABEL_67;
          }

          v71 = v64 & 0xFFFFFFFFFFFFFFF8;
          v72 = (v69 + 16);
          v73 = (v70 + 16);
          v74 = v64 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v72[-1] = v91;
            *v72 = v91;
            v72 += 2;
            *(v73 - 1) = v90;
            *v73 = v90;
            v73 += 2;
            v74 -= 8;
          }

          while (v74);
          if (v64 != v71)
          {
LABEL_67:
            v75 = v64 - v71;
            v76 = 4 * v71;
            v77 = (v70 + 4 * v71);
            v78 = (v69 + v76);
            do
            {
              *v78++ = 1148846079;
              *v77++ = 1065353216;
              --v75;
            }

            while (v75);
          }
        }

        goto LABEL_81;
      }

      if (v98 != v100)
      {
        v79 = v100 - v98;
        if ((v100 - v98) >= 8 && (v70 - v69) > 0x1F)
        {
          v81 = (v79 & 0xFFFFFFFFFFFFFFF8) + v98;
          v82 = (v69 + 4 * v98 + 16);
          v83 = (v70 + 4 * v98 + 16);
          v84 = v79 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v82[-1] = v91;
            *v82 = v91;
            v82 += 2;
            *(v83 - 1) = v90;
            *v83 = v90;
            v83 += 2;
            v84 -= 8;
          }

          while (v84);
          if (v79 == (v79 & 0xFFFFFFFFFFFFFFF8))
          {
            goto LABEL_81;
          }
        }

        else
        {
          v81 = v98;
        }

        v85 = v100 - v81;
        v86 = 4 * v81;
        v87 = (v70 + 4 * v81);
        v88 = (v69 + v86);
        do
        {
          *v88++ = 1148846079;
          *v87++ = 1065353216;
          --v85;
        }

        while (v85);
      }

LABEL_81:
      sub_1AF630994(v53, &v117, &v104);
      sub_1AF62D29C(v65);
      ecs_stack_allocator_pop_snapshot(v102);
      v54 = v92;
      if (v92)
      {
        os_unfair_lock_unlock(*(v65 + 344));
        os_unfair_lock_unlock(*(v65 + 376));
      }

      if (++v55 == v96)
      {
LABEL_83:
        sub_1AF5D1564(v113);
        return sub_1AF5D1564(v113);
      }
    }
  }

  v50 = a1[4];

  sub_1AF68A8E0(a1, v113);

  sub_1AF688E9C(v50, v4, a1, v2);
LABEL_86:

  sub_1AF688940(a1);
}

unint64_t sub_1AF9DCDD8()
{
  result = qword_1EB641A10;
  if (!qword_1EB641A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641A10);
  }

  return result;
}

unint64_t sub_1AF9DCE30()
{
  result = qword_1EB6341F8;
  if (!qword_1EB6341F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6341F8);
  }

  return result;
}

unint64_t sub_1AF9DCE88()
{
  result = qword_1EB634200;
  if (!qword_1EB634200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB634200);
  }

  return result;
}

uint64_t sub_1AF9DCEDC(float a1, float a2)
{
  v4 = a2 - a1;
  do
  {
    result = sub_1AF6C0D50();
  }

  while (((v4 * vcvts_n_f32_u64(result & 0xFFFFFF, 0x18uLL)) + a1) == a2);
  return result;
}

uint64_t sub_1AF9DCF34(void *a1, float a2, float a3)
{
  sub_1AF9DDA70(0, &qword_1EB641A18, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v13 - v10;
  sub_1AF441150(a1, a1[3]);
  sub_1AF9DDA1C();
  sub_1AFDFF3F8();
  v14 = a2;
  v15 = a3;
  sub_1AF48C324();
  sub_1AF48C3D0(&qword_1EB6398A0);
  sub_1AFDFE918();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1AF9DD0C0(uint64_t a1)
{
  v2 = sub_1AF9DDA1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF9DD0FC(uint64_t a1)
{
  v2 = sub_1AF9DDA1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1AF9DD138(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1AF9DD84C(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 4) = v5;
  }
}

double sub_1AF9DD1A0()
{
  sub_1AF47BBFC();
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_1AFE431C0;
  *(v0 + 32) = &type metadata for Mass;
  *(v0 + 40) = &off_1F252DF08;
  return result;
}

void sub_1AF9DD1E8(float a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = *(a5 + 104);
  v51[0] = *(a5 + 88);
  v51[1] = v9;
  v52 = *(a5 + 120);
  sub_1AF6B06C0(a4, v51, 0x200000000, &v40);
  if (v40)
  {
    if (v47 >= 1)
    {
      v35 = v44;
      if (v44)
      {
        v10 = 0;
        v34 = v43;
        v11 = v46;
        v12 = *(v46 + 32);
        v38 = *(v45 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v48 = v40;
        v13.i32[1] = DWORD1(v42);
        v49 = v41;
        v50 = v42;
        if (a1 > 0.001)
        {
          *v13.i32 = a1;
        }

        else
        {
          *v13.i32 = 0.001;
        }

        *v13.i32 = 1.0 / *v13.i32;
        v39 = v13.i32[0];
        v32 = vdupq_lane_s32(v13, 0);
        v33 = v12;
        do
        {
          v36 = v6;
          v14 = (v34 + 48 * v10);
          v15 = *v14;
          v16 = v14[1];
          v17 = *(v14 + 3);
          v37 = *(v14 + 2);
          v18 = *(v14 + 4);
          v19 = *(v14 + 5);
          if (v38)
          {
            v20 = *(v19 + 376);

            os_unfair_lock_lock(v20);
            os_unfair_lock_lock(*(v19 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v12);
          v21 = *(v11 + 64);
          v53[0] = *(v11 + 48);
          v53[1] = v21;
          v54 = *(v11 + 80);
          v22 = *(*(*(*(v19 + 40) + 16) + 32) + 16) + 1;
          *(v11 + 48) = ecs_stack_allocator_allocate(*(v11 + 32), 48 * v22, 8);
          *(v11 + 56) = v22;
          *(v11 + 72) = 0;
          *(v11 + 80) = 0;
          *(v11 + 64) = 0;
          v23 = sub_1AF64B110(&type metadata for Mass, &off_1F252DF08, v37, v17, v18, v11);
          v24 = v23;
          if (a1 != a2)
          {
            if (v15 != v16)
            {
              do
              {
                do
                {
                  v27 = ((a2 - a1) * vcvts_n_f32_u64(sub_1AF6C0D50() & 0xFFFFFF, 0x18uLL)) + a1;
                }

                while (v27 == a2);
                if (v27 <= 0.001)
                {
                  v27 = 0.001;
                }

                *(v24 + 4 * v15++) = 1.0 / v27;
              }

              while (v15 != v16);
            }

            goto LABEL_27;
          }

          if (v15 != v16)
          {
            v25 = v16 - v15;
            if ((v16 - v15) <= 7)
            {
              v26 = v15;
LABEL_25:
              v30 = v16 - v26;
              v31 = (v23 + 4 * v26);
              do
              {
                *v31++ = v39;
                --v30;
              }

              while (v30);
              goto LABEL_27;
            }

            v26 = (v25 & 0xFFFFFFFFFFFFFFF8) + v15;
            v28 = (v23 + 4 * v15 + 16);
            v29 = v25 & 0xFFFFFFFFFFFFFFF8;
            do
            {
              v28[-1] = v32;
              *v28 = v32;
              v28 += 2;
              v29 -= 8;
            }

            while (v29);
            if (v25 != (v25 & 0xFFFFFFFFFFFFFFF8))
            {
              goto LABEL_25;
            }
          }

LABEL_27:
          sub_1AF630994(v11, &v48, v53);
          v6 = v36;
          sub_1AF62D29C(v19);
          v12 = v33;
          ecs_stack_allocator_pop_snapshot(v33);
          if (v38)
          {
            os_unfair_lock_unlock(*(v19 + 344));
            os_unfair_lock_unlock(*(v19 + 376));
          }

          ++v10;
        }

        while (v10 != v35);
      }
    }

    sub_1AF5D1564(&v40);
  }
}

uint64_t sub_1AF9DD53C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  swift_retain_n();
  v4 = sub_1AF3CC5D0(v3);
  v6 = v5;

  if (v6)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = *&v4;
  }

  if (v6)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = *(&v4 + 1);
  }

  v9 = a1[4];

  sub_1AF68A8E0(a1, v11);
  sub_1AF6890F8(v9, v2, v2, a1, v7, v8);
  sub_1AF688940(a1);
}

uint64_t sub_1AF9DD618(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 88);
  v30 = *(a1 + 72);
  v31 = v3;
  v4 = *(a1 + 120);
  v32 = *(a1 + 104);
  v33 = v4;
  v5 = *(a1 + 24);
  v26 = v2;
  v27 = v5;
  v6 = *(a1 + 56);
  v28 = *(a1 + 40);
  v29 = v6;
  v7 = v2;

  v8 = sub_1AF3CC5D0(*(&v7 + 1));
  v10 = v9;

  v12 = *(&v8 + 1);
  v11 = *&v8;
  if (v10)
  {
    v11 = 1.0;
    v12 = 1.0;
  }

  *v25 = v11;
  *&v25[1] = v12;
  if (*a1)
  {
    ObjectType = swift_getObjectType();
    type metadata accessor for particle_set_mass_uniforms(0);
    sub_1AF6F4524(v25, 1, ObjectType, v14, v15, v16, v17, v18);
  }

  v19 = *(v7 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
  v20 = v28;

  v21 = v19;

  MEMORY[0x1EEE9AC00](v22, v23);
  sub_1AFCBF008(v20, sub_1AF9D17D4);
}

float sub_1AF9DD84C(void *a1)
{
  sub_1AF9DDA70(0, &unk_1EB630AD8, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v11 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF9DDA1C();
  sub_1AFDFF3B8();
  if (!v1)
  {
    sub_1AF48C324();
    sub_1AF48C3D0(&qword_1ED7231A0);
    sub_1AFDFE768();
    (*(v6 + 8))(v9, v5);
    v2 = *&v11[2];
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v2;
}

unint64_t sub_1AF9DDA1C()
{
  result = qword_1EB631D70;
  if (!qword_1EB631D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB631D70);
  }

  return result;
}

void sub_1AF9DDA70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AF9DDA1C();
    v7 = a3(a1, &type metadata for ParticleMassInit.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1AF9DDAE8()
{
  result = qword_1EB641A20;
  if (!qword_1EB641A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641A20);
  }

  return result;
}

unint64_t sub_1AF9DDB40()
{
  result = qword_1EB631D60;
  if (!qword_1EB631D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB631D60);
  }

  return result;
}

unint64_t sub_1AF9DDB98()
{
  result = qword_1EB631D68;
  if (!qword_1EB631D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB631D68);
  }

  return result;
}

uint64_t sub_1AF9DDBEC(void *a1)
{
  v3 = v1;
  sub_1AF9DEA90(0, &qword_1EB641A28, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF9DEA3C();
  sub_1AFDFF3F8();
  v13 = *v3;
  HIBYTE(v12) = 0;
  sub_1AF48C324();
  sub_1AF48C3D0(&qword_1EB6398A0);
  sub_1AFDFE918();
  if (!v2)
  {
    v13 = v3[1];
    HIBYTE(v12) = 1;
    sub_1AFDFE918();
    v13 = v3[2];
    HIBYTE(v12) = 2;
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1AF9DDDE0(uint64_t a1)
{
  v2 = sub_1AF9DEA3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF9DDE1C(uint64_t a1)
{
  v2 = sub_1AF9DEA3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AF9DDE58@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF9DE7DC(a1, &v5);
  if (!v2)
  {
    result = *&v5;
    *a2 = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

void sub_1AF9DDED4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *(a3 + 104);
  v46[0] = *(a3 + 88);
  v46[1] = v6;
  v47 = *(a3 + 120);
  sub_1AF6B06C0(a2, v46, 0x200000000, &v30);
  v24 = v30;
  if (v30)
  {
    v7 = v34;
    v8 = v36;
    v38 = v31;
    v39 = v32;
    v22 = v37;
    v23 = v35;
    if (v37 >= 1 && v34)
    {
      v9 = *(v35 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v10 = *(v36 + 32);
      v11 = (v33 + 24);
      v21 = v9;
      while (1)
      {
        v55 = v5;
        v12 = *(v11 - 6);
        v13 = *(v11 - 5);
        v14 = *(v11 - 4);
        v28 = *v11;
        v29 = *(v11 - 1);
        v15 = v11[2];
        v27 = v11[1];
        if (v9)
        {
          v16 = *(v15 + 376);

          os_unfair_lock_lock(v16);
          os_unfair_lock_lock(*(v15 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v10);
        v17 = *(v8 + 64);
        v48[0] = *(v8 + 48);
        v48[1] = v17;
        v49 = *(v8 + 80);
        v18 = v10;
        v19 = *(*(*(*(v15 + 40) + 16) + 32) + 16) + 1;
        *(v8 + 48) = ecs_stack_allocator_allocate(*(v8 + 32), 48 * v19, 8);
        *(v8 + 56) = v19;
        *(v8 + 72) = 0;
        *(v8 + 80) = 0;
        *(v8 + 64) = 0;
        LOBYTE(v43) = 1;
        v50[0] = v23;
        v50[1] = v15;
        v50[2] = v8;
        v50[3] = v14;
        v50[4] = (v13 - v12 + v14);
        v50[5] = v22;
        v50[6] = v12;
        v50[7] = v13;
        v50[8] = 0;
        v50[9] = 0;
        v51 = 1;
        v52 = v29;
        v53 = v28;
        v54 = v27;
        v20 = v55;
        sub_1AF9DE17C(v50, a4, a1);
        if (v20)
        {
          break;
        }

        v40 = v24;
        v41 = v38;
        v42 = v39;
        sub_1AF630994(v8, &v40, v48);
        v5 = 0;
        sub_1AF62D29C(v15);
        ecs_stack_allocator_pop_snapshot(v18);
        v10 = v18;
        v9 = v21;
        if (v21)
        {
          os_unfair_lock_unlock(*(v15 + 344));
          os_unfair_lock_unlock(*(v15 + 376));
        }

        v11 += 6;
        if (!--v7)
        {
          goto LABEL_12;
        }
      }

      v43 = v24;
      v44 = v38;
      v45 = v39;
      sub_1AF630994(v8, &v43, v48);
      sub_1AF62D29C(v15);
      ecs_stack_allocator_pop_snapshot(v18);
      os_unfair_lock_unlock(*(v15 + 344));
      os_unfair_lock_unlock(*(v15 + 376));
      __break(1u);
    }

    else
    {
LABEL_12:
      sub_1AF5D1564(&v30);
    }
  }
}

void sub_1AF9DE17C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1AF64B110(&type metadata for Orientation, &off_1F252C8A8, *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 16));
  v8.i32[0] = *a2;
  v7.i32[0] = *(a2 + 4);
  if (*a2 == v7.f32[0] && *(a2 + 8) == *(a2 + 12) && *(a2 + 16) == *(a2 + 20))
  {
    v8.i32[1] = *(a2 + 8);
    v8.i32[2] = *(a2 + 16);
    v9.i64[0] = 0x3F0000003F000000;
    v9.i64[1] = 0x3F0000003F000000;
    v10 = vmulq_f32(v8, v9);
    v10.i32[3] = 0;
    x = v10;
    v11 = v6;
    v54 = _simd_cos_f4(v10);
    v12 = _simd_sin_f4(x);
    v13 = *(a1 + 48);
    v14 = *(a1 + 56) - v13;
    if (v14)
    {
      v15 = v54;
      v16 = vextq_s8(v15, v15, 4uLL);
      v17 = vzip2q_s32(vzip1q_s32(v54, v12), v12);
      v17.f32[3] = -v12.f32[0];
      v18 = v12;
      v18.i32[3] = v12.i32[1];
      v19 = vmulq_f32(vzip1q_s32(vrev64q_s32(v54), v54), vextq_s8(vzip1q_s32(v16, v12), v16, 8uLL));
      v20 = vtrn1q_s32(vextq_s8(v12, v12, 8uLL), v54);
      v20.f32[1] = -*v54.i32;
      v21 = vmlaq_f32(vrev64q_s32(vmulq_f32(vmulq_f32(v18, v17), v20)), vtrn1q_s32(v12, vextq_s8(v15, v15, 8uLL)), v19);
      v22 = (v11 + 16 * v13);
      do
      {
        *v22++ = v21;
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    v23 = *(a1 + 48);
    v24 = *(a1 + 56);
    v25 = v24 - v23;
    if (v24 != v23)
    {
      v26 = v7.f32[0] - v8.f32[0];
      v27 = *(a2 + 8);
      v28 = *(a2 + 12) - v27;
      v29 = *(a2 + 16);
      v30 = *(a2 + 20) - v29;
      v31 = (v6 + 16 * v23);
      v53 = *a2;
      do
      {
        v33 = a3[1];
        v32 = a3[2];
        v34 = a3[3] ^ v33;
        v35 = a3[4] ^ v32;
        v36 = v34 ^ v32;
        v37 = v35 ^ v33;
        v7.f32[0] = v8.f32[0] + (v26 * vcvts_n_f32_u64((9 * ((((5 * v32) >> 32) >> 25) | (640 * v32))) & 0xFFFFFF, 0x18uLL));
        v38 = v34 ^ (v32 << 17) ^ v37;
        v39 = __ROR8__(v35, 19);
        v40 = v38 ^ v36;
        v41 = v36 ^ v39 ^ v37;
        v42 = v38 ^ (v36 << 17) ^ v41;
        v43 = __ROR8__(v36 ^ v39, 19);
        a3[1] = v40 ^ v43 ^ v41;
        a3[2] = v42 ^ v40;
        a3[3] = v42 ^ (v40 << 17);
        a3[4] = __ROR8__(v40 ^ v43, 19);
        v7.f32[1] = v27 + (v28 * vcvts_n_f32_u64((9 * ((((5 * v36) >> 32) >> 25) | (640 * v36))) & 0xFFFFFF, 0x18uLL));
        v7.f32[2] = v29 + (v30 * vcvts_n_f32_u64((9 * ((((5 * v40) >> 32) >> 25) | (640 * v40))) & 0xFFFFFF, 0x18uLL));
        v44.i64[0] = 0x3F0000003F000000;
        v44.i64[1] = 0x3F0000003F000000;
        v45 = vmulq_f32(v7, v44);
        v45.i32[3] = 0;
        v55 = v45;
        xa = _simd_cos_f4(v45);
        v46 = _simd_sin_f4(v55);
        v47 = vextq_s8(xa, xa, 4uLL);
        v48 = vmulq_f32(vzip1q_s32(vrev64q_s32(xa), xa), vextq_s8(vzip1q_s32(v47, v46), v47, 8uLL));
        v8 = vzip2q_s32(vzip1q_s32(xa, v46), v46);
        v8.f32[3] = -v46.f32[0];
        v49 = vextq_s8(v46, v46, 8uLL);
        v50 = vtrn1q_s32(v46, vextq_s8(xa, xa, 8uLL));
        v46.i32[3] = v46.i32[1];
        v51 = vmulq_f32(v46, v8);
        v8.i32[0] = v53;
        v52 = vtrn1q_s32(v49, xa);
        v52.f32[1] = -*xa.i32;
        v7 = vmlaq_f32(vrev64q_s32(vmulq_f32(v51, v52)), v50, v48);
        *v31++ = v7;
        --v25;
      }

      while (v25);
    }
  }
}

uint64_t sub_1AF9DE464(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  swift_retain_n();
  v4 = sub_1AF3CC6A4(v3);
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = HIDWORD(v6);
  v12 = HIDWORD(v8);
  if (v10)
  {
    v13 = -1068953638;
  }

  else
  {
    v13 = v8;
  }

  if (v10)
  {
    LODWORD(v12) = 1078530010;
    v14 = -1068953638;
  }

  else
  {
    v14 = v6;
  }

  if (v10)
  {
    LODWORD(v11) = 1078530010;
    v15 = -1068953638;
  }

  else
  {
    v15 = v4;
  }

  if (v10)
  {
    v16 = 1078530010;
  }

  else
  {
    v16 = HIDWORD(v4);
  }

  v20[0] = v15;
  v20[1] = v16;
  v20[2] = v14;
  v20[3] = v11;
  v20[4] = v13;
  v20[5] = v12;
  v17 = a1[4];

  sub_1AF68A8E0(a1, v19);
  sub_1AF6892F8(v17, v2, v2, a1, v20);
  sub_1AF688940(a1);
}

uint64_t sub_1AF9DE570(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 88);
  v36 = *(a1 + 72);
  v37 = v3;
  v4 = *(a1 + 120);
  v38 = *(a1 + 104);
  v39 = v4;
  v5 = *(a1 + 24);
  v32 = v2;
  v33 = v5;
  v6 = *(a1 + 56);
  v34 = *(a1 + 40);
  v35 = v6;
  v8 = *(&v2 + 1);
  v7 = v2;

  v9 = sub_1AF3CC6A4(v8);
  v11 = v10;
  v13 = v12;
  v15 = v14;

  if (v15)
  {
    LODWORD(v16) = 1078530010;
    LODWORD(v13) = -1068953638;
    LODWORD(v11) = -1068953638;
    LODWORD(v17) = 1078530010;
    LODWORD(v9) = -1068953638;
    LODWORD(v18) = 1078530010;
  }

  else
  {
    v18 = HIDWORD(v9);
    v17 = HIDWORD(v11);
    v16 = HIDWORD(v13);
  }

  v31[0] = v9;
  v31[1] = v18;
  v31[2] = v11;
  v31[3] = v17;
  v31[4] = v13;
  v31[5] = v16;
  if (*a1)
  {
    ObjectType = swift_getObjectType();
    type metadata accessor for particle_set_orientation_uniforms(0);
    sub_1AF6F4524(v31, 1, ObjectType, v20, v21, v22, v23, v24);
  }

  v25 = *(v7 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
  v26 = v34;

  v27 = v25;

  MEMORY[0x1EEE9AC00](v28, v29);
  sub_1AFCBF008(v26, sub_1AF9D17D4);
}

uint64_t sub_1AF9DE7DC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1AF9DEA90(0, &qword_1EB6330E8, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF9DEA3C();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  sub_1AF48C324();
  HIBYTE(v15) = 0;
  sub_1AF48C3D0(&qword_1ED7231A0);
  sub_1AFDFE768();
  v11 = v16;
  HIBYTE(v15) = 1;
  sub_1AFDFE768();
  v12 = v16;
  HIBYTE(v15) = 2;
  sub_1AFDFE768();
  (*(v7 + 8))(v10, v6);
  v13 = v16;
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *a2 = v11;
  a2[1] = v12;
  a2[2] = v13;
  return result;
}

unint64_t sub_1AF9DEA3C()
{
  result = qword_1EB633528;
  if (!qword_1EB633528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633528);
  }

  return result;
}

void sub_1AF9DEA90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AF9DEA3C();
    v7 = a3(a1, &type metadata for ParticleOrientationInit.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1AF9DEB08()
{
  result = qword_1EB641A30;
  if (!qword_1EB641A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641A30);
  }

  return result;
}

unint64_t sub_1AF9DEB60()
{
  result = qword_1EB633518;
  if (!qword_1EB633518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633518);
  }

  return result;
}

unint64_t sub_1AF9DEBB8()
{
  result = qword_1EB633520;
  if (!qword_1EB633520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633520);
  }

  return result;
}

uint64_t sub_1AF9DEC0C(void *a1)
{
  v3 = v1;
  sub_1AF9DFA64(0, &qword_1EB641A38, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF9DFA10();
  sub_1AFDFF3F8();
  v13 = *v3;
  HIBYTE(v12) = 0;
  sub_1AF48C324();
  sub_1AF48C3D0(&qword_1EB6398A0);
  sub_1AFDFE918();
  if (!v2)
  {
    v13 = v3[1];
    HIBYTE(v12) = 1;
    sub_1AFDFE918();
    v13 = v3[2];
    HIBYTE(v12) = 2;
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1AF9DEE00(uint64_t a1)
{
  v2 = sub_1AF9DFA10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF9DEE3C(uint64_t a1)
{
  v2 = sub_1AF9DFA10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AF9DEE78@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF9DF7B0(a1, &v5);
  if (!v2)
  {
    result = *&v5;
    *a2 = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

double sub_1AF9DEEF4()
{
  sub_1AF47BBFC();
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_1AFE431C0;
  *(v0 + 32) = &type metadata for ParticlePivot;
  *(v0 + 40) = &off_1F252D968;
  return result;
}

__n128 sub_1AF9DEF3C@<Q0>(__n128 *a1@<X8>)
{
  result.n128_u64[0] = 0x3F0000003F000000;
  result.n128_u64[1] = 0x3F0000003F000000;
  *a1 = result;
  a1[1].n128_u64[0] = 0x3F0000003F000000;
  return result;
}

void sub_1AF9DEF50(void *a1, uint64_t a2, uint64_t a3, float *a4, _DWORD *a5)
{
  v6 = v5;
  v7 = *(a3 + 104);
  v47[0] = *(a3 + 88);
  v47[1] = v7;
  v48 = *(a3 + 120);
  sub_1AF6B06C0(a2, v47, 0x200000000, &v31);
  v24 = v31;
  if (v31)
  {
    v8 = v35;
    v9 = v37;
    v39 = v32;
    v40 = v33;
    v22 = v38;
    v23 = v36;
    if (v38 >= 1 && v35)
    {
      v10 = *(v36 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v11 = *(v37 + 32);
      v12 = (v34 + 24);
      v21 = v10;
      while (1)
      {
        v56 = v6;
        v13 = *(v12 - 6);
        v14 = *(v12 - 5);
        v15 = *(v12 - 4);
        v29 = *v12;
        v30 = *(v12 - 1);
        v16 = v12[2];
        v28 = v12[1];
        if (v10)
        {
          v17 = *(v16 + 376);

          os_unfair_lock_lock(v17);
          os_unfair_lock_lock(*(v16 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v11);
        v18 = *(v9 + 64);
        v49[0] = *(v9 + 48);
        v49[1] = v18;
        v50 = *(v9 + 80);
        v19 = *(*(*(*(v16 + 40) + 16) + 32) + 16) + 1;
        *(v9 + 48) = ecs_stack_allocator_allocate(*(v9 + 32), 48 * v19, 8);
        *(v9 + 56) = v19;
        *(v9 + 72) = 0;
        *(v9 + 80) = 0;
        *(v9 + 64) = 0;
        LOBYTE(v44) = 1;
        v51[0] = v23;
        v51[1] = v16;
        v51[2] = v9;
        v51[3] = v15;
        v51[4] = (v14 - v13 + v15);
        v51[5] = v22;
        v51[6] = v13;
        v51[7] = v14;
        v51[8] = 0;
        v51[9] = 0;
        v52 = 1;
        v53 = v30;
        v54 = v29;
        v55 = v28;
        v20 = v56;
        sub_1AF9DF1F4(v51, a4, a5, a1);
        if (v20)
        {
          break;
        }

        v41 = v24;
        v42 = v39;
        v43 = v40;
        sub_1AF630994(v9, &v41, v49);
        v6 = 0;
        sub_1AF62D29C(v16);
        ecs_stack_allocator_pop_snapshot(v11);
        v10 = v21;
        if (v21)
        {
          os_unfair_lock_unlock(*(v16 + 344));
          os_unfair_lock_unlock(*(v16 + 376));
        }

        v12 += 6;
        if (!--v8)
        {
          goto LABEL_12;
        }
      }

      v44 = v24;
      v45 = v39;
      v46 = v40;
      sub_1AF630994(v9, &v44, v49);
      sub_1AF62D29C(v16);
      ecs_stack_allocator_pop_snapshot(v11);
      os_unfair_lock_unlock(*(v16 + 344));
      os_unfair_lock_unlock(*(v16 + 376));
      __break(1u);
    }

    else
    {
LABEL_12:
      sub_1AF5D1564(&v31);
    }
  }
}