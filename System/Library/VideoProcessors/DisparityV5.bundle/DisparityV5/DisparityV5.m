uint64_t sub_29574A8A4()
{

  return fig_log_get_emitter();
}

uint64_t sub_29574A8BC(uint64_t result, unsigned int a2, _DWORD *a3, _DWORD *a4, unsigned int a5, unsigned int a6)
{
  if ((a5 | result | a2))
  {
    v6 = 1;
  }

  else
  {
    v6 = 1;
    v7 = result;
    do
    {
      v8 = a5;
      a5 >>= 1;
      result = v7 >> 1;
      v9 = a2;
      a2 >>= 1;
      v6 *= 2;
      if ((v8 & 2) != 0)
      {
        break;
      }

      if ((v7 & 2) != 0)
      {
        break;
      }

      v7 >>= 1;
    }

    while ((v9 & 2) == 0);
  }

  if ((a6 | result))
  {
    v10 = 1;
  }

  else
  {
    v10 = 1;
    v11 = a6;
    v12 = result;
    do
    {
      a6 = v11 >> 1;
      result = v12 >> 1;
      v10 *= 2;
      v13 = v11 | v12;
      v11 >>= 1;
      v12 >>= 1;
    }

    while ((v13 & 2) == 0);
  }

  if (a2 >= result)
  {
    v14 = result;
  }

  else
  {
    v14 = a2;
  }

  if (v14)
  {
    if (v14 + 1 > 2)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 2;
    }

    v16 = 1;
    v17 = 1;
    v18 = 1;
    do
    {
      if (!(a5 % v16))
      {
        v19 = 1;
        for (i = a6; ; i /= 7u)
        {
          while (1)
          {
            while (1)
            {
              while ((i & 1) == 0 && 2 * v16 * v19 <= result)
              {
                i >>= 1;
                v19 *= 2;
              }

              if (i != 3 * (i / 3) || 3 * v16 * v19 > result)
              {
                break;
              }

              v19 *= 3;
              i /= 3u;
            }

            if (i != 5 * (i / 5) || 5 * v16 * v19 > result)
            {
              break;
            }

            v19 *= 5;
            i /= 5u;
          }

          if (i % 7 || 7 * v16 * v19 > result)
          {
            break;
          }

          v19 *= 7;
        }

        v24 = v17 * v18;
        if (v19 * v16 >= v17 * v18)
        {
          v18 = v16;
        }

        if (v19 * v16 >= v24)
        {
          v17 = v19;
        }
      }

      ++v16;
    }

    while (v16 != v15);
  }

  else
  {
    v18 = 1;
    v17 = 1;
  }

  *a3 = v18 * v6;
  *a4 = v17 * v10;
  return result;
}

double *sub_29574AAA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, double *a7, uint64_t a8)
{
  if (!a1)
  {
    return sub_295765CAC();
  }

  if (!a2)
  {
    return sub_295765C54();
  }

  if (a3 <= 0)
  {
    return sub_295765BFC();
  }

  if (!a4)
  {
    return sub_295765BA4();
  }

  if (!a5)
  {
    return sub_295765B4C();
  }

  if (!a6)
  {
    return sub_295765AF4();
  }

  if (!a7)
  {
    return sub_295765A9C();
  }

  if (a8)
  {
    v441 = 0;
    v440 = 0u;
    v439 = 0u;
    v438 = 0u;
    v437 = 0u;
    v436 = 0u;
    v435 = 0u;
    v434 = 0u;
    v433 = 0u;
    v432 = 0u;
    v431 = 0u;
    v430 = 0u;
    v429 = 0u;
    v428 = 0u;
    memset(v427, 0, sizeof(v427));
    v15 = *(a6 + 144);
    v425[8] = *(a6 + 128);
    v425[9] = v15;
    v425[10] = *(a6 + 160);
    v426 = *(a6 + 176);
    v16 = *(a6 + 80);
    v425[4] = *(a6 + 64);
    v425[5] = v16;
    v17 = *(a6 + 112);
    v425[6] = *(a6 + 96);
    v425[7] = v17;
    v18 = *(a6 + 16);
    v425[0] = *a6;
    v425[1] = v18;
    v19 = *(a6 + 48);
    v425[2] = *(a6 + 32);
    v425[3] = v19;
    result = sub_2957629E8(v425, 1, v427);
    v21.f64[0] = *(a4 + 8);
    v22 = *a5;
    v23.f64[0] = *(a4 + 32);
    v24.f64[0] = *(a4 + 48);
    v25.f64[0] = *(a4 + 80);
    v26.f64[0] = *(a4 + 88);
    v27.f64[0] = *(a5 + 40);
    v28.f64[0] = *a4;
    v28.f64[1] = v22;
    v21.f64[1] = *(a5 + 8);
    v29 = vmulq_f64(v28, v21);
    v30.f64[0] = *(a4 + 96);
    v30.f64[1] = *(a5 + 96);
    v406 = *(a4 + 104);
    v31 = *(a4 + 40) + v406 * v29.f64[0];
    v410 = *(a4 + 120);
    v287 = *(a4 + 112);
    v288 = *(a4 + 128);
    v23.f64[1] = *(a5 + 32);
    v32 = vmlaq_f64(v23, v30, v29);
    v33.f64[0] = v287;
    v283 = *(a5 + 144);
    v284 = *(a5 + 112);
    v33.f64[1] = v284;
    v24.f64[1] = *(a5 + 48);
    v295 = v33;
    v34 = vmlaq_f64(v24, v33, v29);
    v289 = *(a5 + 104);
    v290 = *(a5 + 120);
    v33.f64[0] = v289;
    v33.f64[1] = v290;
    v27.f64[1] = *(a5 + 56);
    v35 = vmlaq_laneq_f64(v27, v33, v29, 1);
    v291 = *(a5 + 128);
    v36 = vmlaq_laneq_f64(*(a5 + 64), v291, v29, 1);
    v285 = *(a4 + 152);
    v286 = *(a4 + 144);
    v33.f64[0] = v286;
    v33.f64[1] = v283;
    v25.f64[1] = *(a5 + 80);
    v294 = v33;
    v37 = vmlaq_f64(v25, v33, v29);
    v38.f64[0] = v285;
    v282 = *(a5 + 152);
    v38.f64[1] = v282;
    v26.f64[1] = *(a5 + 88);
    v39 = vmlaq_f64(v26, v38, v29);
    v419 = vmulq_f64(vzip1q_s64(v37, v39), xmmword_29577A7D0);
    v404 = vmulq_f64(vzip2q_s64(v34, v39), xmmword_29577A800);
    v398 = *(a4 + 56) + v410 * v29.f64[0];
    v417 = v398 * 6.0;
    v403 = vmulq_f64(v35, xmmword_29577A7F0);
    v292 = vmlaq_n_f64(*(a4 + 64), v288, v29.f64[0]);
    v44 = vmulq_f64(v292, xmmword_29577A7E0);
    v414 = v44;
    v402 = vmulq_f64(v36, xmmword_29577A7E0);
    v401 = vmuld_lane_f64(12.0, v37, 1);
    v40 = *(a5 + 16);
    v41.f64[0] = v427[1].f64[0];
    v42 = v427[2].f64[1];
    v43 = *(a4 + 16);
    v413 = -(*a4 * *a4);
    v400 = -(v22 * v22);
    v412 = v31 + v31;
    v44.f64[0] = *(&v429 + 1);
    v397 = v44;
    *&v44.f64[0] = v430;
    *&v45 = *(&v438 + 1);
    v297 = v32;
    *&v47 = *(&v431 + 1);
    *&v46 = v431;
    __asm { FMOV            V6.2D, #1.0 }

    v420 = _Q6;
    v418 = 4.0 * *v34.i64;
    v296 = v30;
    v293 = v38;
    v405 = v34;
    v416 = v37;
    v415 = v39;
    v408 = v35;
    if (a3 > 3)
    {
      v267 = v28;
      v280 = vdupq_laneq_s64(v43, 1);
      v281 = vdupq_lane_s64(v43.i64[0], 0);
      v73 = 0uLL;
      v368 = vdupq_lane_s64(v40.i64[0], 0);
      v367 = vdupq_laneq_s64(v40, 1);
      v366 = vdupq_lane_s64(v32.i64[0], 0);
      v74 = 0uLL;
      v393 = 0u;
      v365 = vdupq_laneq_s64(v32, 1);
      v75 = 0uLL;
      v278 = vdupq_lane_s64(*&v427[2].f64[1], 0);
      v279 = vdupq_lane_s64(*&v427[1].f64[0], 0);
      v364 = vdupq_lane_s64(v428.i64[0], 0);
      v391 = 0u;
      v363 = vdupq_laneq_s64(v428, 1);
      v276 = vdupq_lane_s64(*(a4 + 96), 0);
      v277 = vdupq_lane_s64(v429, 0);
      v76 = 0uLL;
      v389 = 0u;
      v274 = vdupq_lane_s64(*(&v433 + 1), 0);
      v275 = vdupq_lane_s64(*(a5 + 96), 0);
      v362 = vdupq_lane_s64(v435, 0);
      v272 = vdupq_lane_s64(*(&v439 + 1), 0);
      v273 = vdupq_lane_s64(v438, 0);
      v41 = 0uLL;
      v77 = 0uLL;
      v270 = vdupq_lane_s64(*(&v436 + 1), 0);
      v271 = vdupq_lane_s64(v432, 0);
      v78 = 0uLL;
      v268 = vdupq_lane_s64(v441, 0);
      v269 = vdupq_lane_s64(*(&v430 + 1), 0);
      v55 = a3 & 0x7FFFFFFC;
      v79 = (a1 + 32);
      v80 = (a2 + 32);
      v81 = v55;
      v387 = 0u;
      v379 = 0u;
      v385 = 0u;
      v378 = 0u;
      v383 = 0u;
      v377 = 0u;
      v382 = 0u;
      v376 = 0u;
      v381 = 0u;
      v375 = 0u;
      v380 = 0u;
      v374 = 0u;
      v396 = *(a5 + 16);
      v395 = *(a4 + 16);
      v373 = v31;
      v372 = v36;
      v361 = *a4;
      v371 = v45;
      v370 = v46;
      v369 = v47;
      v423 = *a5;
      do
      {
        v356 = v78;
        v357 = v41;
        v358 = v77;
        v359 = v76;
        v421 = v75;
        v360 = v74;
        v82 = v79 - 4;
        v445 = vld2q_f64(v82);
        v83 = v80 - 4;
        v444 = vld2q_f64(v83);
        v84 = vsubq_f64(v445.val[0], v281);
        v85 = vsubq_f64(v445.val[1], v280);
        v354 = vsubq_f64(v444.val[0], v368);
        v353 = vsubq_f64(v444.val[1], v367);
        v86 = vmulq_n_f64(vsqrtq_f64(vmlaq_f64(vmulq_f64(v84, v84), v85, v85)), v361);
        v87 = vmulq_n_f64(vsqrtq_f64(vmlaq_f64(vmulq_f64(v354, v354), v353, v353)), v22);
        v88 = vmulq_f64(v86, v86);
        v89 = vmulq_f64(v88, v86);
        v90 = v88;
        v349 = v88;
        v91 = vmulq_f64(v89, v86);
        v92 = vmulq_f64(v91, v86);
        v93 = v91;
        v347 = v91;
        v94 = vmulq_f64(v92, v86);
        v95 = vmulq_f64(v94, v86);
        v345 = v94;
        v96 = vmulq_f64(v95, v86);
        v97 = vmulq_f64(v96, v86);
        v98 = v96;
        v341 = v96;
        v99 = vmulq_f64(v97, v86);
        v100 = vmulq_f64(v99, v86);
        v340 = v99;
        v101 = vmulq_f64(v100, v86);
        v327 = vmulq_f64(v87, v87);
        v351 = vmulq_f64(v327, v87);
        v102 = vmulq_f64(v351, v87);
        v338 = vmulq_f64(v102, v87);
        v328 = v102;
        v103 = vmulq_f64(v101, v86);
        v343 = v101;
        v339 = vmulq_f64(v103, v86);
        v104 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(v366, v90, v373), v93, v405.f64[0]), v94, v398), v98, v292.f64[0]), v99, v292, 1), v101, v416.f64[0]), v339, v415.f64[0]);
        v321 = vdupq_n_s64(0x3F847AE147AE147BuLL);
        v105 = vdivq_f64(v420, vmlaq_f64(v420, v104, v321));
        v332 = vmulq_f64(v338, v87);
        v337 = vmulq_f64(v332, v87);
        v331 = vmulq_f64(v337, v87);
        v336 = vmulq_f64(v331, v87);
        v330 = vmulq_f64(v336, v87);
        v334 = vmulq_f64(v330, v87);
        v329 = vmulq_f64(v334, v87);
        v335 = vmulq_f64(v329, v87);
        v333 = vmulq_f64(v335, v87);
        v106 = vmlaq_laneq_f64(vmlaq_laneq_f64(vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmlaq_laneq_f64(vmlaq_n_f64(v365, v327, v408.f64[0]), v102, v405, 1), v332, v408, 1), v331, v372.f64[0]), v330, v372, 1), v329, v416, 1), v333, v415, 1);
        v107 = vdivq_f64(v420, vmlaq_f64(v420, v106, v321));
        v314 = vdupq_n_s64(0x4059000000000000uLL);
        v108 = vaddq_f64(v104, v314);
        v313 = vdupq_n_s64(0xC059000000000000);
        v109 = vdivq_f64(v313, vmulq_f64(v108, v108));
        v110 = vmulq_n_f64(vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v86, v412), v89, v418), v92, v417), v95, v414.f64[0]), v97, v414, 1), v100, v419.f64[0]), v103, v419, 1), v413);
        v323 = v109;
        v111 = vdivq_f64(vmulq_f64(vmulq_f64(v110, v84), v109), v86);
        v112 = vdivq_f64(vmulq_f64(vmulq_f64(v110, v85), v109), v86);
        v113 = vsubq_f64(v420, v105);
        v326 = vmlaq_n_f64(vmulq_f64(v105, v445.val[0]), v113, v395.f64[0]);
        v324 = vmlaq_laneq_f64(vmulq_f64(v105, v445.val[1]), v113, v395, 1);
        v325 = vsubq_f64(v420, v107);
        v315 = vmlaq_laneq_f64(vmulq_f64(v107, v444.val[1]), v325, v396, 1);
        v316 = vmlaq_n_f64(vmulq_f64(v107, v444.val[0]), v325, v396.f64[0]);
        v114 = vmlaq_n_f64(vmlaq_n_f64(v364, v315, v427[1].f64[1]), v316, v427[0].f64[0]);
        v115 = vmlaq_laneq_f64(vmlaq_laneq_f64(v363, v315, *(&v427[1] + 8), 1), v316, v427[0], 1);
        v116 = vmulq_f64(v115, v85);
        v320 = vmlaq_f64(vmulq_f64(v116, v111), v114, vmlaq_f64(v113, v84, v111));
        v317 = vmulq_f64(v114, v84);
        v318 = v116;
        v319 = vmlaq_f64(vmulq_f64(v317, v112), v115, vmlaq_f64(v113, v85, v112));
        v442 = vld2q_f64(v79);
        v117 = vsubq_f64(v442.val[0], v281);
        v118 = vsubq_f64(v442.val[1], v280);
        v119 = vmulq_n_f64(vsqrtq_f64(vmlaq_f64(vmulq_f64(v117, v117), v118, v118)), v361);
        v443 = vld2q_f64(v80);
        v309 = vsubq_f64(v443.val[0], v368);
        v308 = vsubq_f64(v443.val[1], v367);
        v120 = vmulq_n_f64(vsqrtq_f64(vmlaq_f64(vmulq_f64(v309, v309), v308, v308)), v423);
        v121 = vmulq_f64(v119, v119);
        v122 = vmulq_f64(v121, v119);
        v299 = v121;
        v300 = vmulq_f64(v122, v119);
        v123 = vmulq_f64(v300, v119);
        v124 = vmulq_f64(v123, v119);
        v125 = vmulq_f64(v124, v119);
        v445.val[1] = vmulq_f64(v125, v119);
        v126 = vmulq_f64(v445.val[1], v119);
        v127 = vmulq_f64(v126, v119);
        v128 = vmulq_f64(v127, v119);
        v129 = vmulq_f64(v128, v119);
        v130 = vmulq_f64(v129, v119);
        v303 = vmulq_f64(v130, v119);
        v131 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(v366, v121, v373), v300, v405.f64[0]), v124, v398), v445.val[1], v292.f64[0]), v127, v292, 1), v129, v416.f64[0]), v303, v415.f64[0]);
        v132 = vmulq_f64(v120, v120);
        v133 = vmulq_f64(v132, v120);
        v444.val[1] = vmulq_f64(v133, v120);
        v306 = vmulq_f64(v444.val[1], v120);
        v307 = v133;
        v134 = vmulq_f64(v306, v120);
        v305 = vmulq_f64(v134, v120);
        v444.val[0] = vmulq_f64(v305, v120);
        v304 = vmulq_f64(v444.val[0], v120);
        v135 = vmulq_f64(v304, v120);
        v136 = vmulq_f64(v135, v120);
        v137 = vmulq_f64(v136, v120);
        v301 = vmulq_f64(v137, v120);
        v302 = v136;
        v298 = vmulq_f64(v301, v120);
        v138 = vmlaq_laneq_f64(vmlaq_laneq_f64(vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmlaq_laneq_f64(vmlaq_n_f64(v365, v132, v408.f64[0]), v444.val[1], v405, 1), v134, v408, 1), v444.val[0], v372.f64[0]), v135, v372, 1), v137, v416, 1), v298, v415, 1);
        v139 = vdivq_f64(v420, vmlaq_f64(v420, v131, v321));
        v445.val[0] = vmulq_f64(v139, v442.val[0]);
        v442.val[0] = vmulq_f64(v139, v442.val[1]);
        v140 = vdivq_f64(v420, vmlaq_f64(v420, v138, v321));
        v141 = vaddq_f64(v131, v314);
        v142 = vdivq_f64(v313, vmulq_f64(v141, v141));
        v143 = vmulq_n_f64(vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v119, v412), v122, v418), v123, v417), v125, v414.f64[0]), v126, v414, 1), v128, v419.f64[0]), v130, v419, 1), v413);
        v144 = vdivq_f64(vmulq_f64(vmulq_f64(v143, v117), v142), v119);
        v145 = vdivq_f64(vmulq_f64(vmulq_f64(v143, v118), v142), v119);
        v146 = vsubq_f64(v420, v139);
        v147 = vsubq_f64(v420, v140);
        v445.val[0] = vmlaq_n_f64(v445.val[0], v146, v395.f64[0]);
        v442.val[0] = vmlaq_laneq_f64(v442.val[0], v146, v395, 1);
        v148 = vmlaq_n_f64(vmulq_f64(v140, v443.val[0]), v147, v396.f64[0]);
        v443.val[0] = vmlaq_laneq_f64(vmulq_f64(v140, v443.val[1]), v147, v396, 1);
        v149 = vmlaq_n_f64(vmlaq_n_f64(v364, v443.val[0], v427[1].f64[1]), v148, v427[0].f64[0]);
        v150 = vmlaq_laneq_f64(vmlaq_laneq_f64(v363, v443.val[0], *(&v427[1] + 8), 1), v148, v427[0], 1);
        v311 = vmulq_f64(v150, v118);
        v322 = vmlaq_f64(vmulq_f64(v311, v144), v149, vmlaq_f64(v146, v117, v144));
        v310 = vmulq_f64(v149, v117);
        v312 = vmlaq_f64(vmulq_f64(v310, v145), v150, vmlaq_f64(v146, v118, v145));
        v151 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(v275, v132, v289), v444.val[1], v284), v134, v290), v444.val[0], v291.f64[0]), v135, v291, 1), v137, v283), v298, v282);
        v152 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmlaq_n_f64(vmulq_n_f64(v87, v403.f64[0]), v351, v404.f64[0]), v338, v403, 1), v337, v402.f64[0]), v336, v402, 1), v334, v401), v335, v404, 1);
        v153 = vaddq_f64(v106, v314);
        v154 = vaddq_f64(v138, v314);
        v352 = vmulq_f64(vmulq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(v276, v299, v406), v300, v287), v124, v410), v445.val[1], v288.f64[0]), v127, v288, 1), v129, v286), v303, v285), v361), v142);
        v155 = vdivq_f64(v313, vmulq_f64(v153, v153));
        v156 = vdivq_f64(v313, vmulq_f64(v154, v154));
        v157 = vmulq_f64(vmulq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(v276, v349, v406), v347, v287), v345, v410), v341, v288.f64[0]), v340, v288, 1), v343, v286), v339, v285), v361), v323);
        v158 = vmulq_f64(vmulq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(v275, v327, v289), v328, v284), v332, v290), v331, v291.f64[0]), v330, v291, 1), v329, v283), v333, v282), v423), v155);
        v159 = vmulq_n_f64(v152, v400);
        v160 = vmulq_f64(vmulq_f64(v159, v354), v155);
        v444.val[0] = vmulq_f64(vmulq_f64(v159, v353), v155);
        v350 = vmulq_f64(vmulq_n_f64(v151, v423), v156);
        v161 = vmulq_n_f64(vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmlaq_n_f64(vmulq_n_f64(v120, v403.f64[0]), v307, v404.f64[0]), v306, v403, 1), v305, v402.f64[0]), v304, v402, 1), v302, v401), v301, v404, 1), v400);
        v162 = vdivq_f64(vmulq_f64(vmulq_f64(v161, v309), v156), v120);
        v163 = vdivq_f64(vmulq_f64(vmulq_f64(v161, v308), v156), v120);
        v164 = vmlaq_n_f64(vmlaq_laneq_f64(v279, v442.val[0], v427[0], 1), v445.val[0], v427[0].f64[0]);
        v444.val[1] = vmlaq_n_f64(vmlaq_laneq_f64(v278, v442.val[0], *(&v427[1] + 8), 1), v445.val[0], v427[1].f64[1]);
        v344 = vmulq_f64(v164, v309);
        v348 = vmlaq_f64(vmulq_f64(v344, v163), vmlaq_f64(v147, v308, v163), v444.val[1]);
        v342 = vmulq_f64(v444.val[1], v308);
        v346 = vmlaq_f64(vmulq_f64(v342, v162), vmlaq_f64(v147, v309, v162), v164);
        v165 = vmlaq_f64(vmlaq_f64(vmlaq_n_f64(vmlaq_laneq_f64(v277, v442.val[0], v428, 1), v445.val[0], *v428.i64), v444.val[1], v443.val[0]), v164, v148);
        v166 = vdivq_f64(v160, v87);
        v167 = vdivq_f64(v444.val[0], v87);
        v444.val[1] = vmlaq_n_f64(vmlaq_laneq_f64(v279, v324, v427[0], 1), v326, v427[0].f64[0]);
        v444.val[0] = vmlaq_n_f64(vmlaq_laneq_f64(v278, v324, *(&v427[1] + 8), 1), v326, v427[1].f64[1]);
        v168 = vmulq_f64(v444.val[1], v354);
        v169 = vmlaq_f64(vmulq_f64(v168, v167), vmlaq_f64(v325, v353, v167), v444.val[0]);
        v170 = vmlaq_f64(vmlaq_n_f64(vmlaq_laneq_f64(v277, v324, v428, 1), v326, *v428.i64), v444.val[0], v315);
        v444.val[0] = vmulq_f64(v444.val[0], v353);
        v171 = vmlaq_f64(vmulq_f64(v444.val[0], v166), vmlaq_f64(v325, v354, v166), v444.val[1]);
        v172 = vmlaq_f64(v170, v444.val[1], v316);
        v444.val[0] = vmulq_f64(v158, vaddq_f64(v168, v444.val[0]));
        v173 = vdupq_n_s64(0x3ECC4BE7CE3F6732uLL);
        v355 = vsqrtq_f64(vmlaq_f64(v173, v172, v172));
        v174 = vdivq_f64(v172, v355);
        v393 = vmlaq_f64(v393, v174, vmlaq_f64(vmlaq_f64(vmlaq_n_f64(vmlaq_n_f64(v270, v324, *&v436), v326, *(&v435 + 1)), vmlaq_n_f64(vmlaq_n_f64(v362, v324, *(&v434 + 1)), v326, *&v434), v315), vmlaq_n_f64(vmlaq_n_f64(v274, v324, *&v433), v326, *(&v432 + 1)), v316));
        v391 = vmlaq_f64(v391, v174, vmlaq_n_f64(vmlaq_n_f64(v269, v315, *&v430), v316, v397.f64[0]));
        v77 = vmlaq_f64(v358, vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v326, *&v370), v324, *&v369), v271), v174);
        v387 = vmlaq_f64(v387, vmulq_f64(v157, vaddq_f64(v317, v318)), v174);
        _Q24 = v369;
        v385 = vmlaq_f64(v385, v174, v320);
        v67 = v370;
        v389 = vmlaq_f64(v389, v174, vaddq_f64(vmlaq_n_f64(vmlaq_f64(vmlaq_n_f64(vmulq_f64(vmlaq_n_f64(vmlaq_n_f64(v273, v324, *(&v437 + 1)), v326, *&v437), v316), v326, *&v440), vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v326, *&v371), v324, *&v439), v272), v315), v324, *(&v440 + 1)), v268));
        v383 = vmlaq_f64(v383, v174, v319);
        v382 = vmlaq_f64(v382, v444.val[0], v174);
        v381 = vmlaq_f64(v381, v174, v171);
        v380 = vmlaq_f64(v380, v174, v169);
        v22 = *a5;
        v66 = v371;
        v442.val[1] = vmlaq_f64(vmlaq_f64(vmlaq_n_f64(vmlaq_n_f64(v270, v442.val[0], *&v436), v445.val[0], *(&v435 + 1)), vmlaq_n_f64(vmlaq_n_f64(v362, v442.val[0], *(&v434 + 1)), v445.val[0], *&v434), v443.val[0]), vmlaq_n_f64(vmlaq_n_f64(v274, v442.val[0], *&v433), v445.val[0], *(&v432 + 1)), v148);
        v444.val[1] = vmlaq_n_f64(vmulq_n_f64(v445.val[0], *&v370), v442.val[0], *&v369);
        v175 = vmlaq_n_f64(vmlaq_f64(vmlaq_n_f64(vmulq_f64(vmlaq_n_f64(vmlaq_n_f64(v273, v442.val[0], *(&v437 + 1)), v445.val[0], *&v437), v148), v445.val[0], *&v440), vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v445.val[0], *&v371), v442.val[0], *&v439), v272), v443.val[0]), v442.val[0], *(&v440 + 1));
        v65 = v397;
        v176 = vsqrtq_f64(vmlaq_f64(v173, v165, v165));
        v177 = vdivq_f64(v165, v176);
        v75 = vmlaq_f64(v421, v177, v442.val[1]);
        v76 = vmlaq_f64(v359, v177, vmlaq_n_f64(vmlaq_n_f64(v269, v443.val[0], *&v430), v148, v397.f64[0]));
        v78 = vmlaq_f64(v356, vaddq_f64(v444.val[1], v271), v177);
        v379 = vmlaq_f64(v379, vmulq_f64(v352, vaddq_f64(v310, v311)), v177);
        v378 = vmlaq_f64(v378, v177, v322);
        v377 = vmlaq_f64(v377, v177, v312);
        v376 = vmlaq_f64(v376, vmulq_f64(v350, vaddq_f64(v344, v342)), v177);
        v375 = vmlaq_f64(v375, v177, v346);
        v41 = vmlaq_f64(v357, v177, vaddq_f64(v175, v268));
        v374 = vmlaq_f64(v374, v177, v348);
        v73 = vaddq_f64(v355, v73);
        v74 = vaddq_f64(v176, v360);
        v80 += 8;
        v79 += 8;
        v81 -= 4;
      }

      while (v81);
      v53 = v372;
      v54 = v373;
      v56 = vaddvq_f64(vaddq_f64(v74, v73));
      v57 = vaddvq_f64(vaddq_f64(v75, v393));
      v62.f64[0] = vaddvq_f64(vaddq_f64(v76, v391));
      v59 = vaddvq_f64(vaddq_f64(v78, v77));
      v63.f64[0] = vaddvq_f64(vaddq_f64(v379, v387));
      v72.f64[0] = vaddvq_f64(vaddq_f64(v378, v385));
      v61.f64[0] = vaddvq_f64(vaddq_f64(v375, v381));
      v72.f64[1] = vaddvq_f64(vaddq_f64(v377, v383));
      v61.f64[1] = vaddvq_f64(vaddq_f64(v374, v380));
      v62.f64[1] = vaddvq_f64(vaddq_f64(v41, v389));
      v63.f64[1] = vaddvq_f64(vaddq_f64(v376, v382));
      v41.f64[0] = v427[1].f64[0];
      v28 = v267;
      v178 = v420;
      *&v44.f64[0] = v430;
      v58 = *(a4 + 16);
      v60 = *(a5 + 16);
      v70 = *(&v440 + 1);
      v69 = v292;
      v71 = v398;
      v42 = v427[2].f64[1];
      v64 = v427[0];
      if (v55 == a3)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v53 = v36;
      v54 = v31;
      v55 = 0;
      v56 = 0.0;
      v57 = 0.0;
      v58 = *(a4 + 16);
      v59 = 0.0;
      v60 = *(a5 + 16);
      v61 = 0uLL;
      v62 = 0uLL;
      v63 = 0uLL;
      v64 = v427[0];
      v65 = v397;
      v66 = v45;
      v67 = v46;
      _Q24 = v47;
      v70 = *(&v440 + 1);
      v69 = v292;
      v71 = v398;
      v72 = 0uLL;
    }

    v179.f64[1] = v408.f64[1];
    v180 = vdupq_lane_s64(*&v408.f64[0], 0);
    v181 = vdupq_lane_s64(*&v53.f64[0], 0);
    *&v182.f64[0] = vdupq_laneq_s64(v69, 1).u64[0];
    *&v183.f64[0] = vdupq_laneq_s64(v288, 1).u64[0];
    v422 = vzip1q_s64(v64, *(&v427[1] + 8));
    v399 = vzip2q_s64(v64, *(&v427[1] + 8));
    v41.f64[1] = v42;
    v44.f64[1] = v70;
    *v180.i64 = v54;
    v394 = v180;
    v179.f64[0] = v71;
    v409 = v179;
    v181.i64[0] = v69.i64[0];
    v392 = v181;
    v182.f64[1] = v53.f64[1];
    v390 = v182;
    v184.f64[0] = *(a4 + 104);
    v184.f64[1] = *(a5 + 104);
    v407 = v184;
    v179.f64[0] = *(a4 + 120);
    v179.f64[1] = *(a5 + 120);
    v411 = v179;
    v386 = vzip2q_s64(v60, v58);
    v384 = vzip1q_s64(v288, v291);
    *&v183.f64[1] = *(a5 + 176) >> 64;
    v388 = v183;
    v185 = (a1 + 16 * v55);
    v186 = (a2 + 16 * v55);
    v187 = a3 - v55;
    do
    {
      v424 = v72;
      v188 = *v185++;
      _Q25 = v188;
      v190 = vsubq_f64(v188, v58);
      v191 = *v186++;
      v192 = vsubq_f64(v191, v60);
      v193 = vzip1q_s64(v190, v192);
      v194 = vzip2q_s64(v190, v192);
      v195 = vmulq_f64(vsqrtq_f64(vmlaq_f64(vmulq_f64(v193, v193), v194, v194)), v28);
      v196 = v67;
      v197 = v65;
      v198 = vmulq_f64(v195, v195);
      v199 = vmulq_f64(v198, v195);
      v200 = v60;
      v201 = vmulq_f64(v199, v195);
      v202 = vmulq_f64(v201, v195);
      v203 = vmulq_f64(v202, v195);
      v204 = vmulq_f64(v203, v195);
      v205 = vmulq_f64(v204, v195);
      v206 = v58;
      v207 = vmulq_f64(v205, v195);
      v208 = vmlaq_f64(v297, v198, v394);
      _Q20 = v66;
      v210 = v28;
      v211 = vmlaq_f64(v296, v198, v407);
      v212 = vmulq_f64(v207, v195);
      v213 = v41;
      v214 = vmulq_f64(v212, v195);
      v215 = _Q24;
      v216 = vmlaq_f64(vmlaq_f64(v208, v201, v405), v203, v409);
      v217 = vmlaq_f64(vmlaq_f64(v211, v201, v295), v203, v411);
      v218 = vmulq_f64(v214, v195);
      v219 = vmulq_f64(v218, v195);
      v220 = vmlaq_f64(vmlaq_f64(v216, v205, v392), v212, v390);
      v221 = vmlaq_f64(vmlaq_f64(v217, v205, v384), v212, v388);
      v222 = vdupq_lane_s64(*&v207.f64[0], 0);
      v222.f64[0] = v204.f64[0];
      v223 = vmlaq_f64(vmulq_f64(v419, vzip1q_s64(v214, v219)), v414, v222);
      v224 = vmulq_f64(v219, v195);
      v225 = vmlaq_f64(vmlaq_f64(v220, v218, v416), v224, v415);
      v226 = vmlaq_f64(v221, v218, v294);
      v227 = vdupq_laneq_s64(v195, 1);
      v207.f64[0] = v204.f64[1];
      v204.f64[0] = v227.f64[0];
      v204.f64[1] = v202.f64[1];
      v228 = vmlaq_f64(vmulq_f64(v402, v207), v403, v204);
      v229 = vaddq_f64(v225, vdupq_n_s64(0x4059000000000000uLL));
      v228.f64[0] = vaddvq_f64(v228);
      v228.f64[1] = vmuld_lane_f64(v401, v214, 1);
      v230 = vdivq_f64(vdupq_n_s64(0xC059000000000000), vmulq_f64(v229, v229));
      v41 = v213;
      v178 = v420;
      v202.f64[0] = vaddvq_f64(v223) + v418 * v199.f64[0] + v417 * v202.f64[0] + v412 * v195.f64[0];
      v231 = vzip2q_s64(v199, v219);
      v232 = vdupq_lane_s64(*&v195.f64[0], 0);
      v233 = vmulq_f64(vmlaq_f64(v226, v224, v293), v210);
      v28 = v210;
      v202.f64[0] = v202.f64[0] * v413;
      _Q27 = vmulq_f64(v233, v230);
      v235 = vmulq_n_f64(v192, vaddvq_f64(vmlaq_f64(v228, v404, v231)) * v400);
      *&v228.f64[0] = *&vmulq_f64(v230, v202);
      v236 = vdivq_f64(vmulq_laneq_f64(v235, v230, 1), v227);
      v237 = vdivq_f64(v420, vmlaq_f64(v420, v225, vdupq_n_s64(0x3F847AE147AE147BuLL)));
      v238 = vextq_s8(v237, v237, 8uLL);
      v239 = vsubq_f64(v420, v238);
      v240 = vmulq_f64(v238, vzip2q_s64(v191, _Q25));
      v241 = vmulq_f64(v238, v191);
      v238.f64[0] = v239.f64[1];
      v242 = vmulq_f64(v238, vzip1q_s64(v206, _Q25));
      v243 = vdivq_f64(vmulq_n_f64(v190, v228.f64[0]), v232);
      _Q28 = vmlaq_f64(v240, v239, v386);
      v245 = vdupq_laneq_s64(v239, 1);
      *&_Q25.f64[0] = *&vaddq_f64(v242, vdupq_laneq_s64(v242, 1));
      v241.f64[0] = vmlaq_f64(v241, v239, v200).f64[0];
      v246 = vmlaq_f64(vdupq_lane_s64(*&v239.f64[0], 0), v192, v236);
      _Q10 = vmlaq_n_f64(vmlaq_n_f64(v428, *(&v427[1] + 8), _Q28.f64[0]), v427[0], v241.f64[0]);
      v248 = vmulq_f64(_Q10, v190);
      v249 = vextq_s8(v248, v248, 8uLL);
      v250 = vmlaq_f64(vmulq_f64(v249, v243), _Q10, vmlaq_f64(v245, v190, v243));
      _Q8 = vmlaq_n_f64(vmlaq_laneq_f64(v41, v399, _Q28, 1), v422, _Q25.f64[0]);
      _Q18 = vmulq_f64(_Q8, v192);
      v253 = vextq_s8(_Q18, _Q18, 8uLL);
      v254 = vmlaq_f64(vmulq_f64(v253, v236), v246, _Q8);
      v255 = vdupq_lane_s64(*&_Q28.f64[0], 0);
      v255.f64[0] = v241.f64[0];
      v242.f64[0] = vaddvq_f64(v242);
      v256 = vmulq_f64(_Q8, v255);
      _D24 = *(&v437 + 1);
      __asm { FMLA            D8, D24, V28.D[1] }

      _Q25.f64[1] = _Q28.f64[1];
      v258 = vmlaq_f64(v256, _Q25, v428);
      v66 = _Q20;
      *&_Q20 = v439;
      __asm { FMLA            D25, D20, V28.D[1] }

      _Q25.f64[0] = (_Q8.f64[0] + v242.f64[0] * *&v437) * v241.f64[0] + *&v440 * v242.f64[0] + (_Q25.f64[0] + *(&v439 + 1)) * _Q28.f64[0];
      _Q8.f64[0] = *(&v430 + 1);
      _Q8.f64[1] = _Q25.f64[0];
      _D24 = *(&v434 + 1);
      __asm { FMLA            D25, D24, V28.D[1] }

      *&v253.f64[0] = v248.i64[0];
      _D24 = v436;
      __asm { FMLA            D10, D24, V28.D[1] }

      _Q24 = v215;
      _Q25.f64[0] = _Q10.f64[0] + v242.f64[0] * *(&v435 + 1) + (_Q25.f64[0] + v242.f64[0] * *&v434) * _Q28.f64[0];
      *&v249.f64[1] = _Q18.i64[1];
      *&_Q10.f64[0] = v433;
      __asm { FMLA            D18, D10, V28.D[1] }

      v60 = v200;
      *_Q18.i64 = _Q25.f64[0] + (*_Q18.i64 + v242.f64[0] * *(&v432 + 1)) * v241.f64[0];
      v261 = vaddq_f64(v253, v249);
      v65 = v197;
      v67 = v196;
      v262 = vmulq_f64(_Q27, v261);
      __asm { FMLA            D27, D24, V28.D[1] }

      v263 = vmlaq_f64(_Q8, _Q28, v44);
      v241.f64[0] = v65.f64[0] * v241.f64[0];
      _Q28.f64[0] = *&v429 + vaddvq_f64(v258);
      *&v241.f64[1] = v441;
      v264 = vaddq_f64(v263, v241);
      v58 = v206;
      v242.f64[0] = sqrt(_Q28.f64[0] * _Q28.f64[0] + 0.00000337320636);
      _Q28.f64[0] = _Q28.f64[0] / v242.f64[0];
      v57 = v57 + _Q28.f64[0] * *_Q18.i64;
      v62 = vmlaq_n_f64(v62, v264, _Q28.f64[0]);
      v59 = v59 + (_Q27.f64[0] + *&v432) * _Q28.f64[0];
      v72 = vmlaq_n_f64(v424, v250, _Q28.f64[0]);
      v63 = vmlaq_n_f64(v63, v262, _Q28.f64[0]);
      v61 = vmlaq_n_f64(v61, v254, _Q28.f64[0]);
      v56 = v242.f64[0] + v56;
      --v187;
    }

    while (v187);
LABEL_16:
    v265 = 1.0 / a3;
    *a7 = v56 * v265;
    *a8 = v57 * v265;
    *(a8 + 8) = v265 * v62.f64[0];
    *(a8 + 16) = vmuld_lane_f64(v265, v62, 1);
    *(a8 + 24) = v59 * v265;
    *(a8 + 32) = v265 * v63.f64[0];
    v266 = vdivq_f64(v178, vdupq_lane_s64(COERCE__INT64(a3), 0));
    *(a8 + 40) = vmulq_f64(v72, v266);
    *(a8 + 56) = vmuld_lane_f64(v265, v63, 1);
    *(a8 + 64) = vmulq_f64(v61, v266);
    return result;
  }

  return sub_295765A44();
}

double *sub_29574C0C0(const double *a1, const double *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, double *a7)
{
  if (!a1)
  {
    return sub_295765CAC();
  }

  if (!a2)
  {
    return sub_295765C54();
  }

  if (a3 <= 0)
  {
    return sub_295765BFC();
  }

  if (!a4)
  {
    return sub_295765BA4();
  }

  if (!a5)
  {
    return sub_295765B4C();
  }

  if (!a6)
  {
    return sub_295765AF4();
  }

  if (a7)
  {
    v160 = 0;
    v158 = 0u;
    v159 = 0u;
    v156 = 0u;
    v157 = 0u;
    v154 = 0u;
    v155 = 0u;
    v152 = 0u;
    v153 = 0u;
    v150 = 0u;
    v151 = 0u;
    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v14 = *(a6 + 144);
    v142[8] = *(a6 + 128);
    v142[9] = v14;
    v142[10] = *(a6 + 160);
    v143 = *(a6 + 176);
    v15 = *(a6 + 80);
    v142[4] = *(a6 + 64);
    v142[5] = v15;
    v16 = *(a6 + 112);
    v142[6] = *(a6 + 96);
    v142[7] = v16;
    v17 = *(a6 + 16);
    v142[0] = *a6;
    v142[1] = v17;
    v18 = *(a6 + 48);
    v142[2] = *(a6 + 32);
    v142[3] = v18;
    result = sub_2957629E8(v142, 0, &v144);
    v7.f64[0] = *(a4 + 16);
    v20 = *(a4 + 24);
    v22.f64[0] = *(a5 + 16);
    v21 = *(a5 + 24);
    v23.f64[0] = *a4;
    v24 = *a5;
    v26.f64[0] = *(a4 + 128);
    v25.f64[0] = *(a4 + 136);
    v27 = *a4 * *(a4 + 8);
    v28 = *(a4 + 40) + *(a4 + 104) * v27;
    v29.f64[0] = *(a4 + 56);
    v30.f64[0] = *(a4 + 48) + *(a4 + 112) * v27;
    v31 = *(a4 + 120) * v27;
    v32.f64[0] = *(a4 + 64);
    v33.f64[0] = *(a4 + 72);
    v34.f64[0] = *(a4 + 80) + *(a4 + 144) * v27;
    v35 = *(a4 + 88) + *(a4 + 152) * v27;
    v36 = *a5 * *(a5 + 8);
    v37 = *(a5 + 40) + *(a5 + 104) * v36;
    v38 = *(a5 + 48) + *(a5 + 112) * v36;
    v29.f64[1] = *(a5 + 56);
    v40.f64[1] = *(a5 + 120) * v36;
    v39 = vaddq_f64(v29, v40);
    v26.f64[1] = *(a5 + 128);
    v40.f64[0] = *(a4 + 32) + *(a4 + 96) * v27;
    v47.f64[1] = v36;
    v25.f64[1] = *(a5 + 136);
    v32.f64[1] = *(a5 + 64);
    v41 = vmlaq_f64(v32, v26, v47);
    v33.f64[1] = *(a5 + 72);
    v42 = vmlaq_f64(v33, v25, v47);
    v43 = *(a5 + 80) + *(a5 + 144) * v36;
    v44 = *(a5 + 88) + *(a5 + 152) * v36;
    v45 = *(a5 + 32) + *(a5 + 96) * v36;
    v47.f64[0] = *(&v144 + 1);
    *&v46.f64[0] = v144;
    v48 = *(&v145 + 1);
    *&v49.f64[0] = v145;
    v51 = *(&v146 + 1);
    v50 = *&v146;
    __asm { FMOV            V25.2D, #1.0 }

    v57 = *&v148;
    if (a3 == 1)
    {
      v58 = 0;
      v59 = 0.0;
    }

    else
    {
      v58 = a3 & 0x7FFFFFFE;
      v140 = vdupq_lane_s64(v20, 0);
      v141 = vdupq_lane_s64(*&v7.f64[0], 0);
      v138 = vdupq_lane_s64(v21, 0);
      v139 = vdupq_lane_s64(*&v22.f64[0], 0);
      v131 = v40.f64[0];
      v132 = v34.f64[0];
      v136 = vdupq_lane_s64(*&v42.f64[0], 0);
      v137 = vdupq_lane_s64(*&v34.f64[0], 0);
      v129 = v43;
      v130 = v45;
      v134 = vdupq_lane_s64(*&v43, 0);
      v135 = vdupq_lane_s64(*&v40.f64[0], 0);
      v133 = v42;
      v60 = vdupq_laneq_s64(v42, 1);
      v61 = vdupq_lane_s64(*&v45, 0);
      v62 = vdupq_lane_s64(v145, 0);
      v63 = vdupq_lane_s64(*(&v146 + 1), 0);
      v64 = v58;
      v65 = a1;
      v66 = a2;
      v67 = vdupq_lane_s64(v148, 0);
      v68 = 0uLL;
      do
      {
        v161 = vld2q_f64(v65);
        v65 += 4;
        v162 = vld2q_f64(v66);
        v66 += 4;
        v69 = vsubq_f64(v161.val[0], v141);
        v70 = vsubq_f64(v161.val[1], v140);
        v71 = vmulq_n_f64(vsqrtq_f64(vmlaq_f64(vmulq_f64(v69, v69), v70, v70)), v23.f64[0]);
        v72 = vsubq_f64(v162.val[0], v139);
        v73 = v23;
        v74 = vsubq_f64(v162.val[1], v138);
        v75 = vmulq_n_f64(vsqrtq_f64(vmlaq_f64(vmulq_f64(v72, v72), v74, v74)), *a5);
        v76 = vmulq_f64(v71, v71);
        v77 = vmulq_f64(v76, v76);
        v78 = v22;
        v79 = v7;
        v80 = vmlaq_f64(v136, v76, vmlaq_n_f64(v137, v76, v35));
        v81 = vmlaq_n_f64(vmlaq_n_f64(v135, v76, v28), v77, v30.f64[0]);
        v82 = vmulq_f64(v76, v77);
        v83 = vmlaq_n_f64(v81, v82, v39.f64[0]);
        v84 = vmulq_f64(v76, v82);
        v85 = vmulq_f64(v76, v84);
        v86 = vmulq_f64(v75, v75);
        v87 = vmlaq_n_f64(v83, v84, v41.f64[0]);
        v88 = vmulq_f64(v86, v86);
        v89 = vmlaq_f64(v87, v85, v80);
        v90 = vmlaq_n_f64(vmlaq_n_f64(v61, v86, v37), v88, v38);
        v91 = vmulq_f64(v86, v88);
        v92 = vmlaq_laneq_f64(v90, v91, v39, 1);
        v93 = vmulq_f64(v86, v91);
        v94 = vmlaq_f64(vmlaq_laneq_f64(v92, v93, v41, 1), vmulq_f64(v86, v93), vmlaq_f64(v60, v86, vmlaq_n_f64(v134, v86, v44)));
        v7 = v79;
        v95 = vdupq_n_s64(0x3F847AE147AE147BuLL);
        v96 = vmlaq_f64(_Q25, v89, v95);
        v97 = vmlaq_f64(_Q25, v94, v95);
        v98 = vdivq_f64(_Q25, v96);
        v99 = vmulq_f64(v98, v161.val[0]);
        v161.val[0] = vmulq_f64(v98, v161.val[1]);
        v161.val[1] = vsubq_f64(_Q25, v98);
        v100 = vdivq_f64(_Q25, v97);
        v101 = vsubq_f64(_Q25, v100);
        v102 = vmlaq_n_f64(v99, v161.val[1], v79.f64[0]);
        v161.val[0] = vmlaq_n_f64(v161.val[0], v161.val[1], *(a4 + 24));
        v161.val[1] = vmulq_f64(v100, v162.val[0]);
        v162.val[0] = vmlaq_f64(vmlaq_n_f64(vmlaq_laneq_f64(v67, v161.val[0], v147, 1), v102, v147.f64[0]), vmlaq_n_f64(vmlaq_n_f64(v63, v161.val[0], *&v146), v102, *(&v145 + 1)), vmlaq_n_f64(vmulq_f64(v100, v162.val[1]), v101, *(a5 + 24)));
        v23 = v73;
        v161.val[1] = vmlaq_n_f64(v161.val[1], v101, v78.f64[0]);
        v22 = v78;
        v162.val[0] = vmlaq_f64(v162.val[0], vmlaq_n_f64(vmlaq_n_f64(v62, v161.val[0], *(&v144 + 1)), v102, *&v144), v161.val[1]);
        v68 = vaddq_f64(vsqrtq_f64(vmlaq_f64(vdupq_n_s64(0x3ECC4BE7CE3F6732uLL), v162.val[0], v162.val[0])), v68);
        v64 -= 2;
      }

      while (v64);
      v59 = vaddvq_f64(v68);
      v34.f64[0] = v132;
      v42 = v133;
      *&v49.f64[0] = v145;
      v40.f64[0] = v131;
      v51 = *(&v146 + 1);
      v57 = *&v148;
      v50 = *&v146;
      v20 = *(a4 + 24);
      v21 = *(a5 + 24);
      v24 = *a5;
      v48 = *(&v145 + 1);
      v43 = v129;
      v45 = v130;
      if (v58 == a3)
      {
        goto LABEL_15;
      }
    }

    v103 = *&v21;
    v104.f64[0] = v7.f64[0];
    v104.f64[1] = v22.f64[0];
    *&v105.f64[0] = v20;
    v105.f64[1] = v103;
    v23.f64[1] = v24;
    v30.f64[1] = v38;
    v34.f64[1] = v43;
    v40.f64[1] = v45;
    v22.f64[1] = v103;
    *&v7.f64[1] = v20;
    v46.f64[1] = v48;
    v47.f64[1] = v50;
    v106 = &a1[2 * v58];
    v49.f64[1] = v51;
    v107 = &a2[2 * v58];
    v108 = a3 - v58;
    do
    {
      v109 = *v106++;
      v110 = v109;
      v111 = *v107++;
      v112 = vsubq_f64(vzip1q_s64(v110, v111), v104);
      v113 = vsubq_f64(vzip2q_s64(v110, v111), v105);
      v114 = vmulq_f64(vsqrtq_f64(vmlaq_f64(vmulq_f64(v112, v112), v113, v113)), v23);
      v115 = vmulq_f64(v114, v114);
      *&v113.f64[0] = *&vmulq_f64(v115, v115);
      v116 = vmuld_lane_f64(v115.f64[1], v115, 1);
      v113.f64[1] = v115.f64[1];
      v117.f64[0] = v28 * v115.f64[0];
      v117.f64[1] = vmuld_lane_f64(v37, v115, 1);
      v118.f64[0] = v115.f64[0];
      v118.f64[1] = v116;
      v119 = vmulq_f64(v113, v118);
      v113.f64[1] = v116;
      v120.f64[0] = v115.f64[0];
      v120.f64[1] = v119.f64[1];
      v121 = vmlaq_f64(vmlaq_f64(vaddq_f64(v40, v117), v113, v30), v119, v39);
      v119.f64[1] = v115.f64[1];
      v113.f64[0] = v35 * v115.f64[0];
      v122 = vmulq_f64(v119, v120);
      v113.f64[1] = vmuld_lane_f64(v44, v115, 1);
      v123 = vmlaq_f64(v42, v115, vaddq_f64(v34, v113));
      v113.f64[0] = v122.f64[0];
      v113.f64[1] = v115.f64[1];
      v115.f64[1] = v122.f64[1];
      v124 = vdivq_f64(_Q25, vmlaq_f64(_Q25, vmlaq_f64(vmlaq_f64(v121, v122, v41), vmulq_f64(v113, v115), v123), vdupq_n_s64(0x3F847AE147AE147BuLL)));
      v125 = vmulq_n_f64(v110, v124.f64[0]);
      v126 = vmulq_laneq_f64(v111, v124, 1);
      v127 = vsubq_f64(_Q25, v124);
      v128 = vmlaq_n_f64(v125, v7, v127.f64[0]);
      v127.f64[0] = vaddvq_f64(vmlaq_f64(vmulq_f64(vmlaq_laneq_f64(v126, v22, v127, 1), vmlaq_n_f64(vmlaq_laneq_f64(v49, v47, v128, 1), v46, v128.f64[0])), v128, v147));
      v59 = sqrt((v57 + v127.f64[0]) * (v57 + v127.f64[0]) + 0.00000337320636) + v59;
      --v108;
    }

    while (v108);
LABEL_15:
    *a7 = v59 / a3;
    return result;
  }

  return sub_295765A9C();
}

uint64_t sub_29574CA8C()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_29574CAC0(uint64_t a1, void *a2)
{
  v26 = a2;
  if (objc_msgSend_status(v26, v2, v3, v4, v5, v6, v7, v8, v9) == 4)
  {
    objc_msgSend_GPUEndTime(v26, v10, v11, v12, v13, v14, v15, v16, v17);
    objc_msgSend_GPUStartTime(v26, v18, v19, v20, v21, v22, v23, v24, v25);
  }

  else
  {
    objc_msgSend_status(v26, v10, v11, v12, v13, v14, v15, v16, v17);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }
}

uint64_t sub_29574CF98()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_29574CFCC(uint64_t a1, void *a2)
{
  v26 = a2;
  if (objc_msgSend_status(v26, v2, v3, v4, v5, v6, v7, v8, v9) == 4)
  {
    objc_msgSend_GPUEndTime(v26, v10, v11, v12, v13, v14, v15, v16, v17);
    objc_msgSend_GPUStartTime(v26, v18, v19, v20, v21, v22, v23, v24, v25);
  }

  else
  {
    objc_msgSend_status(v26, v10, v11, v12, v13, v14, v15, v16, v17);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }
}

float *sub_29574DD98(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, float a9)
{
  v17 = malloc_type_malloc(0x18uLL, 0x10200405AF6BDC9uLL);
  if (a2 < 0)
  {
    sub_29576711C();
  }

  if (a3 < 0)
  {
    sub_2957670F0();
  }

  if (a4 < 0)
  {
    sub_2957670C4();
  }

  if (a5 < 0)
  {
    sub_295767098();
  }

  if (a6 < 0)
  {
    sub_29576706C();
  }

  if (a7 < 0)
  {
    sub_295767040();
  }

  v18 = a2 * a1;
  v19 = (a2 * a1 / 100);
  v20 = a3 * a1;
  v21 = a3 * a1 / 100;
  v110[0] = v19;
  v110[1] = v21;
  v22 = a4 * a1;
  v23 = a4 * a1 / 100;
  v24 = a5 * a1;
  v25 = a5 * a1 / 100;
  v110[2] = v23;
  v110[3] = v25;
  v26 = a6 * a1;
  v27 = a6 * a1 / 100;
  v28 = a7 * a1;
  v29 = a7 * a1 / 100;
  v110[4] = v27;
  v110[5] = v29;
  v30 = v21 + v19 + v23 + v25;
  v31 = v30 + v27 + v29;
  if (v31 <= 0)
  {
    sub_295767014();
  }

  v32 = v17;
  v107 = v24;
  v108 = v22;
  v105 = v28;
  v106 = v26;
  *(v17 + 2) = v31;
  v33 = v30 + v27 + v29;
  *v17 = malloc_type_malloc(3 * v33, 0x100004033FC2DF1uLL);
  *(v32 + 3) = a8;
  if (v18 < 100)
  {
    v39 = 0;
    v37 = v33;
  }

  else
  {
    v34 = 0;
    v35 = 0;
    v36 = 1;
    v37 = v33;
    do
    {
      if (v35 >= *(v32 + 2))
      {
        sub_295766FE8();
      }

      ++v35;
      v38 = (*v32 + v36);
      *(v38 - 1) = 0;
      *v38 = v34 / v19;
      v38[1] = -1;
      v36 += 3;
      v34 += 255;
    }

    while (v19 != v35);
    v39 = v18 / 100;
  }

  if (v20 >= 100)
  {
    v40 = 0;
    v41 = v39;
    v42 = v20 / 100;
    v43 = 3 * v39;
    do
    {
      if (v41 >= *(v32 + 2))
      {
        sub_295766FE8();
      }

      ++v41;
      v44 = *v32 + v43;
      *v44 = -256;
      *(v44 + 2) = ~(v40 / v21);
      v43 += 3;
      v40 += 255;
      --v42;
    }

    while (v42);
    v39 = v41;
  }

  if (v108 >= 100)
  {
    v45 = 0;
    v46 = v39;
    v47 = 3 * v39;
    v48 = v23;
    do
    {
      if (v46 >= *(v32 + 2))
      {
        sub_295766FE8();
      }

      ++v46;
      v49 = *v32 + v47;
      *v49 = v45 / v23;
      *(v49 + 1) = 255;
      v47 += 3;
      v45 += 255;
      --v48;
    }

    while (v48);
    v39 = v46;
  }

  if (v107 >= 100)
  {
    v50 = 0;
    v51 = v39;
    v52 = 3 * v39;
    v53 = v25;
    do
    {
      if (v51 >= *(v32 + 2))
      {
        sub_295766FE8();
      }

      ++v51;
      v54 = *v32 + v52;
      *v54 = -1;
      *(v54 + 1) = ~(v50 / v25);
      v52 += 3;
      v50 += 255;
      --v53;
    }

    while (v53);
    v39 = v51;
  }

  if (v106 >= 100)
  {
    v55 = 0;
    v56 = v39;
    v57 = 3 * v39;
    v58 = v27;
    do
    {
      if (v56 >= *(v32 + 2))
      {
        sub_295766FE8();
      }

      ++v56;
      v59 = *v32 + v57;
      *v59 = 255;
      *(v59 + 2) = v55 / v27;
      v57 += 3;
      v55 += 255;
      --v58;
    }

    while (v58);
    v39 = v56;
  }

  if (v105 >= 100)
  {
    v60 = 0;
    v61 = v39;
    v62 = 3 * v39;
    v63 = v29;
    do
    {
      if (v61 >= *(v32 + 2))
      {
        sub_295766FE8();
      }

      ++v61;
      v64 = *v32 + v62;
      *v64 = ~(v60 / v29);
      *(v64 + 1) = -256;
      v62 += 3;
      v60 += 255;
      --v63;
    }

    while (v63);
  }

  if (a8 < 0 && v37 != 1)
  {
    v65 = 0;
    LODWORD(v66) = v37 >> 1;
    if (v37 >> 1 <= 1)
    {
      v66 = 1;
    }

    else
    {
      v66 = v66;
    }

    v67 = v66 + 2 * v66;
    v68 = 3 * v37 - 3;
    do
    {
      v69 = (*v32 + v65);
      v70 = *v32 + v68;
      v71 = *(v69 + 2);
      v72 = *v69;
      v73 = *(v70 + 2);
      *v69 = *v70;
      *(v69 + 2) = v73;
      *v70 = v72;
      *(v70 + 2) = v71;
      v65 += 3;
      v68 -= 3;
    }

    while (v67 != v65);
  }

  if (a8 >= 0)
  {
    v74 = a8;
  }

  else
  {
    v74 = -a8;
  }

  v75 = v74 - 1;
  LODWORD(v76) = 6 - v74;
  if (a8 < 0)
  {
    v76 = v76;
  }

  else
  {
    v76 = v75;
  }

  if (v76 >= 1)
  {
    v77 = 0;
    v78 = v110;
    do
    {
      v79 = v77;
      v81 = *v78++;
      v80 = v81;
      v77 += v81;
      --v76;
    }

    while (v76);
    if (v77 > 0)
    {
      v82 = *v32;
      v83 = v37 - 1;
      if (v77 != 1)
      {
        v84 = 0;
        v85 = (v82 + 3 * (v77 - 1));
        v86 = v79 + v80 - 2;
        v87 = *v32;
        do
        {
          v88 = *(v87 + 2);
          v89 = *v87;
          v90 = *(v85 + 2);
          *v87 = *v85;
          *(v87 + 2) = v90;
          *v85 = v89;
          *(v85 + 2) = v88;
          v87 = (v87 + 3);
          v85 = (v85 - 3);
          v91 = ++v84 < v86--;
        }

        while (v91);
      }

      if (v77 < v83)
      {
        v92 = (v82 + 3 * v83);
        v93 = (v82 + 3 * v77);
        v94 = v19 + v21 + v23 + v25 + v27 + v29 - 2;
        do
        {
          v95 = *(v93 + 2);
          v96 = *v93;
          v97 = *(v92 + 2);
          *v93 = *v92;
          *(v93 + 2) = v97;
          *v92 = v96;
          *(v92 + 2) = v95;
          v93 = (v93 + 3);
          v92 = (v92 - 3);
          v91 = ++v77 < v94--;
        }

        while (v91);
      }

      if (v37 != 1)
      {
        v98 = 0;
        v99 = (v82 + 3 * (v37 - 1));
        v100 = v19 + v21 + v23 + v25 + v27 + v29 - 2;
        do
        {
          v101 = *(v82 + 2);
          v102 = *v82;
          v103 = *(v99 + 2);
          *v82 = *v99;
          *(v82 + 2) = v103;
          *v99 = v102;
          *(v99 + 2) = v101;
          v82 = (v82 + 3);
          v99 = (v99 - 3);
          v91 = ++v98 < v100--;
        }

        while (v91);
      }
    }
  }

  v32[4] = a9;
  return v32;
}

void sub_29574E390(void ***a1)
{
  if (a1)
  {
    free(**a1);
    free(*a1);
    *a1 = 0;
  }
}

uint64_t sub_29574E3D0(uint64_t a1, int a2, float a3, double a4, double a5, float a6)
{
  if (a3 < 0.0 || a3 > 1.0)
  {
    sub_295767148();
  }

  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (v8 != 0.0)
  {
    v9 = v8 / 6.28318531;
    a3 = v9 + a3;
    v10 = 1.0;
    if (a3 < 0.0)
    {
LABEL_9:
      a3 = a3 + v10;
      goto LABEL_10;
    }

    if (a3 > 1.0)
    {
      v10 = -1.0;
      goto LABEL_9;
    }
  }

LABEL_10:
  v11 = a3 * (v7 - 1);
  v12 = v11;
  v13 = (v11 + 1) % v7;
  *&v14 = v11;
  v15 = v11 - *&v14;
  LOBYTE(v14) = *(*a1 + 3 * v12 + a2);
  LOBYTE(a6) = *(*a1 + 3 * v13 + a2);
  return (((v15 * (LODWORD(a6) / 255.0)) + ((1.0 - v15) * (v14 / 255.0))) * 255.0);
}

uint64_t sub_29574E4B4(uint64_t result, int a2, int a3, float *a4, int a5, int a6, uint64_t a7, int a8, double a9, double a10, double a11, float a12, int a13)
{
  if (a3 >= 1)
  {
    v13 = a4;
    v14 = result;
    v15 = 0;
    v16 = a6;
    v17 = 1.1755e-38;
    v18 = 3.4028e38;
    v19 = a4;
    v20 = a2;
    do
    {
      v21 = a2;
      v22 = v19;
      if (a2 >= 1)
      {
        do
        {
          *&a10 = *v22;
          if (*v22 < v18)
          {
            v18 = *v22;
          }

          if (*&a10 > v17)
          {
            v17 = *v22;
          }

          v22 = (v22 + a6);
          --v21;
        }

        while (v21);
      }

      ++v15;
      v19 = (v19 + a5);
    }

    while (v15 != a3);
    v23 = 0;
    v24 = v17 - v18;
    v35 = a8;
    v25 = (a7 + 1);
    v36 = a3;
    v37 = a5;
    do
    {
      v26 = v13;
      v27 = v25;
      if (a2 >= 1)
      {
        do
        {
          v28 = fmaxf(fminf((*v26 - v18) / v24, 1.0), 0.0);
          *(v27 - 1) = sub_29574E3D0(v14, 0, v28, a10, a11, a12);
          *v27 = sub_29574E3D0(v14, 1, v28, v29, v30, v31);
          result = sub_29574E3D0(v14, 2, v28, v32, v33, v34);
          v27[1] = result;
          v27[2] = -1;
          v27 += a13;
          v26 = (v26 + v16);
          --v20;
        }

        while (v20);
      }

      ++v23;
      v20 = a2;
      v25 += v35;
      v13 = (v13 + v37);
    }

    while (v23 != v36);
  }

  return result;
}

uint64_t sub_29574EBDC()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_29574EC10(uint64_t a1, void *a2)
{
  v26 = a2;
  if (objc_msgSend_status(v26, v2, v3, v4, v5, v6, v7, v8, v9) == 4)
  {
    objc_msgSend_GPUEndTime(v26, v10, v11, v12, v13, v14, v15, v16, v17);
    objc_msgSend_GPUStartTime(v26, v18, v19, v20, v21, v22, v23, v24, v25);
  }

  else
  {
    objc_msgSend_status(v26, v10, v11, v12, v13, v14, v15, v16, v17);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }
}

uint64_t sub_29574EF58()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_29574EF8C(uint64_t a1, void *a2)
{
  v26 = a2;
  if (objc_msgSend_status(v26, v2, v3, v4, v5, v6, v7, v8, v9) == 4)
  {
    objc_msgSend_GPUEndTime(v26, v10, v11, v12, v13, v14, v15, v16, v17);
    objc_msgSend_GPUStartTime(v26, v18, v19, v20, v21, v22, v23, v24, v25);
  }

  else
  {
    objc_msgSend_status(v26, v10, v11, v12, v13, v14, v15, v16, v17);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }
}

uint64_t sub_29574F3AC()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_29574F3E0(uint64_t a1, void *a2)
{
  v26 = a2;
  if (objc_msgSend_status(v26, v2, v3, v4, v5, v6, v7, v8, v9) == 4)
  {
    objc_msgSend_GPUEndTime(v26, v10, v11, v12, v13, v14, v15, v16, v17);
    objc_msgSend_GPUStartTime(v26, v18, v19, v20, v21, v22, v23, v24, v25);
  }

  else
  {
    objc_msgSend_status(v26, v10, v11, v12, v13, v14, v15, v16, v17);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }
}

uint64_t sub_29574F7C0()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_29574F7F4(uint64_t a1, void *a2)
{
  v26 = a2;
  if (objc_msgSend_status(v26, v2, v3, v4, v5, v6, v7, v8, v9) == 4)
  {
    objc_msgSend_GPUEndTime(v26, v10, v11, v12, v13, v14, v15, v16, v17);
    objc_msgSend_GPUStartTime(v26, v18, v19, v20, v21, v22, v23, v24, v25);
  }

  else
  {
    objc_msgSend_status(v26, v10, v11, v12, v13, v14, v15, v16, v17);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }
}

void sub_29574F910(const double *a1, const double *a2, signed int a3, float64x2_t *a4, uint64_t a5, uint64_t a6, _DWORD *a7, double a8)
{
  v16 = malloc_type_malloc(8 * a3, 0x100004000313F17uLL);
  if (v16 && (sub_295762C2C(a1, a2, a3, a4, v16), a3 >= 1))
  {
    v17 = 0;
    v18 = a2 + 1;
    v19 = a1 + 1;
    v20 = v16;
    v21 = a3;
    do
    {
      if (*v20 < a8)
      {
        v22 = 2 * v17;
        *(a5 + 8 * v22) = *(v19 - 1);
        v23 = (16 * v17) | 8;
        *(a5 + v23) = *v19;
        *(a6 + 8 * v22) = *(v18 - 1);
        *(a6 + v23) = *v18;
        ++v17;
      }

      ++v20;
      v18 += 2;
      v19 += 2;
      --v21;
    }

    while (v21);
  }

  else
  {
    v17 = 0;
  }

  *a7 = v17;

  free(v16);
}

float64_t sub_29574FA34(float64x2_t *a1, uint64_t a2, double a3)
{
  v3 = a1->f64[1];
  v4 = a1[1].f64[0];
  v5 = a1[1].f64[1];
  v6 = a1[2].f64[0];
  v7 = a1[2].f64[1];
  v8 = a1[8].f64[1];
  v9 = -(a1->f64[0] * v3);
  v10 = a1->f64[0] * (v5 * v8 - v3 * a1[4].f64[1]) / a3;
  v11 = a1->f64[0] * (v7 * v8 - v3 * a1[6].f64[1]) / a3;
  v12 = a1->f64[0] * v8 / a3;
  v13 = a1[7];
  v14 = vmuld_lane_f64(v6, v13, 1) + v13.f64[0] * v4 + a1->f64[0] * a1[8].f64[0];
  v15 = a1[3];
  v16 = vmlaq_n_f64(vmulq_n_f64(v13, -v5), v15, v3);
  v17 = v10 + v9 * a1[4].f64[0] - v3 * (vmuld_lane_f64(v6, v15, 1) + v15.f64[0] * v4) + v5 * v14;
  v18 = a1[5];
  v19 = v9 * a1[6].f64[0] - v3 * (vmuld_lane_f64(v6, v18, 1) + v18.f64[0] * v4);
  *a2 = v16;
  *(a2 + 16) = v17;
  *(a2 + 24) = vmlaq_n_f64(vmulq_n_f64(v13, -v7), v18, v3);
  *(a2 + 40) = v11 + v19 + v7 * v14;
  result = v12 + v14;
  *(a2 + 48) = vnegq_f64(v13);
  *(a2 + 64) = result;
  return result;
}

double sub_295750D8C(uint64_t *a1, double a2, double a3, double a4, double a5, int32x4_t a6)
{
  v6.i64[0] = *a1;
  v7 = a1[1];
  a6.i64[0] = a1[4];
  v8 = a1[5];
  v6.i64[1] = a1[2];
  v9 = a1[3];
  *&result = vuzp1q_s32(v6, a6).u64[0];
  return result;
}

__n128 sub_295752B28@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, double *a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *(a4 + 144);
  v9 = *(a4 + 160);
  v10 = *(a4 + 112);
  v80 = *(a4 + 128);
  v81 = v8;
  v82 = v9;
  v11 = *(a4 + 80);
  v12 = *(a4 + 96);
  v13 = *(a4 + 48);
  v76 = *(a4 + 64);
  v77 = v11;
  v83 = *(a4 + 176);
  v78 = v12;
  v79 = v10;
  v14 = *(a4 + 16);
  v73[0] = *a4;
  v73[1] = v14;
  v74 = *(a4 + 32);
  v75 = v13;
  v15 = *(a4 + 40);
  v16 = a5[7];
  if (v16 < 0)
  {
    v26 = *(a4 + 40);
  }

  else
  {
    v50 = a5[12];
    v51 = a5[11];
    v48 = a5[8];
    v49 = a5[9];
    v18 = -v16;
    v19 = a3;
    v20 = (a2 + 8);
    v21 = a5[13];
    v22 = (a1 + 8);
    v23 = 1.79769313e308;
    v24 = *(a4 + 40);
    v25 = 1.79769313e308;
    do
    {
      v26 = v15 + v18;
      *(&v74 + 1) = v26;
      sub_29574FA34(v73, v66, 1.79769313e308);
      sub_29574FA34(v73, v59, v49);
      sub_29574FA34(v73, v52, v48);
      if (a3 < 1)
      {
        v28 = 0;
        v27 = 0;
        v38 = 0.0;
      }

      else
      {
        v27 = 0;
        v28 = 0;
        v29 = 0;
        v30 = v19;
        v31 = v22;
        v32 = v20;
        do
        {
          v33 = *(v31 - 1);
          v34 = *v32;
          v32 += 2;
          v35 = (v69 + *v31 * v68 + v67 * v33) / (v72 + *v31 * v71 + v70 * v33);
          v36 = (v62 + *v31 * v61 + v60 * v33) / (v65 + *v31 * v64 + v63 * v33);
          v37 = v35 < v36;
          v29 += (v34 >= v35) ^ v37;
          v28 += v37 ^ (v34 < v36);
          v27 += v37 ^ (v34 < (v55 + *v31 * v54 + v53 * v33) / (v58 + *v31 * v57 + v56 * v33));
          v31 += 2;
          --v30;
        }

        while (v30);
        v38 = v29;
      }

      v39 = v21 * (v27 - v28) + v38 * v51 + v28 * v50;
      if (v39 >= v23)
      {
        if (v39 == v23)
        {
          v40 = v15 - v26;
          if (v15 - v26 < 0.0)
          {
            v40 = -(v15 - v26);
          }

          if (v40 >= v25)
          {
            v26 = v24;
          }

          else
          {
            v25 = v40;
          }
        }

        else
        {
          v26 = v24;
        }

        v39 = v23;
      }

      else if (v15 - v26 >= 0.0)
      {
        v25 = v15 - v26;
      }

      else
      {
        v25 = -(v15 - v26);
      }

      v23 = v39;
      v24 = v26;
    }

    while (v18++ != v16);
  }

  v42 = *(a4 + 144);
  *(a6 + 128) = *(a4 + 128);
  *(a6 + 144) = v42;
  *(a6 + 160) = *(a4 + 160);
  *(a6 + 176) = *(a4 + 176);
  v43 = *(a4 + 80);
  *(a6 + 64) = *(a4 + 64);
  *(a6 + 80) = v43;
  v44 = *(a4 + 112);
  *(a6 + 96) = *(a4 + 96);
  *(a6 + 112) = v44;
  v45 = *(a4 + 16);
  *a6 = *a4;
  *(a6 + 16) = v45;
  result = *(a4 + 32);
  v47 = *(a4 + 48);
  *(a6 + 32) = result;
  *(a6 + 48) = v47;
  *(a6 + 40) = v26;
  return result;
}

double sub_295752E10(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, double *a7, double *a8)
{
  v9 = *a4;
  v10 = *(a4 + 16);
  v11 = *(a4 + 48);
  *(a6 + 32) = *(a4 + 32);
  *(a6 + 48) = v11;
  *a6 = v9;
  *(a6 + 16) = v10;
  v12 = *(a4 + 64);
  v13 = *(a4 + 80);
  v14 = *(a4 + 112);
  *(a6 + 96) = *(a4 + 96);
  *(a6 + 112) = v14;
  *(a6 + 64) = v12;
  *(a6 + 80) = v13;
  v15 = *(a4 + 128);
  v16 = *(a4 + 144);
  v17 = *(a4 + 160);
  *(a6 + 176) = *(a4 + 176);
  *(a6 + 144) = v16;
  *(a6 + 160) = v17;
  *(a6 + 128) = v15;
  *a7 = 0.0;
  *a8 = 0.0;
  if (a3 >= 1)
  {
    *v15.i64 = fabs(*(a5 + 48)) + fabs(*(a5 + 56));
    if (*v15.i64 >= 0.1)
    {
      v75 = a7;
      v76 = a8;
      v77 = &v74;
      v23 = vcvtms_u32_f32((*(a5 + 128) * a3) * 0.01) + 1;
      MEMORY[0x2A1C7C4A8](0);
      v25 = &v74 - v24;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v82 = 0uLL;
      if (!sub_295761954(a4, &v92, &v89, &v86, &v83, &v82))
      {
        v27 = 0;
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *v15.f32 = vabs_f32(*v82.f32);
        *v26.i8 = vdup_lane_s32(*v15.f32, 1);
        *v15.f32 = vmvn_s8(vcgt_f32(*v15.f32, *v26.i8));
        v31 = v15.i8[0] & 1;
        v32 = (v15.i8[0] & 1) == 0;
        v15.i32[0] = *(&v82 & 0xFFFFFFFFFFFFFFFBLL | (4 * v31));
        v26.i32[0] = 1.0;
        v33.i64[0] = 0x8000000080000000;
        v33.i64[1] = 0x8000000080000000;
        v15.i64[0] = vbslq_s8(v33, v26, v15).u64[0];
        v34 = v86;
        v35 = v87;
        v36 = v88;
        v37 = v83;
        v38 = v84;
        v39 = v85;
        v40 = *(a5 + 132);
        v41 = -3.4028e38;
        v42 = (&v81 & 0xFFFFFFFFFFFFFFFBLL | (4 * v32));
        v43 = (&v80 | (4 * v32));
        v44 = v76;
        do
        {
          v45 = *(a1 + 16 * v27);
          v46 = (16 * v27) | 8;
          v47 = *(a1 + v46);
          v48 = *(a2 + 16 * v27);
          v49 = *(a2 + v46);
          v50 = vaddq_f32(v36, vmlaq_n_f32(vmulq_n_f32(v34, v45), v35, v47));
          v51 = vdivq_f32(v50, vdupq_laneq_s32(v50, 2));
          v52 = vaddq_f32(v39, vmlaq_n_f32(vmulq_n_f32(v37, v48), v38, v49));
          v81 = vdivq_f32(v52, vdupq_laneq_s32(v52, 2));
          v53 = *(&v81 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v31 & 1)));
          v80 = v51;
          if (vabds_f32(*v42, *v43) <= v40)
          {
            v54 = v15.f32[0] * (v53 - *(&v80 | (4 * v31)));
            if (v54 < 0.0)
            {
              ++v30;
              if (v29 >= v23)
              {
                if (v54 < v41)
                {
                  *&v25[4 * v28] = v54;
                  if (v23)
                  {
                    for (i = 0; i != v23; ++i)
                    {
                      if (*&v25[4 * i] > v54)
                      {
                        v28 = i;
                        v54 = *&v25[4 * i];
                      }
                    }
                  }

                  v41 = v54;
                }
              }

              else
              {
                *&v25[4 * v29] = v54;
                if (v54 > v41)
                {
                  v28 = v29;
                  v41 = v54;
                }

                ++v29;
              }
            }
          }

          ++v27;
        }

        while (v27 != a3);
        *v44 = v30 / a3;
        if (v29 >= v23)
        {
          v56 = *a4 / *(a4 + 8);
          v57 = *(a5 + 48);
          v58 = *(a5 + 56);
          v59 = v56 * v58;
          v60 = -v41;
          if (v41 > -0.0)
          {
            v60 = 0.0;
          }

          v61 = v59 + v57;
          if (v60 >= (v59 + v57))
          {
            v62 = v59 + v57;
          }

          else
          {
            v62 = v60;
          }

          v63 = v57 / v61;
          v64 = *(a4 + 16);
          v65 = *(a4 + 32);
          v66 = *(a4 + 24);
          v67 = *(a4 + 40);
          v68 = vaddq_f32(v88, vmlaq_n_f32(vmulq_n_f32(v86, v64), v87, v65));
          v69 = vaddq_f32(v85, vmlaq_n_f32(vmulq_n_f32(v83, v66), v84, v67));
          v78 = 0u;
          *(&v78 & 0xFFFFFFFFFFFFFFF3 | (4 * (v31 & 3))) = v15.f32[0] * (v63 * v62);
          v70 = vaddq_f32(v78, vdivq_f32(v68, vdupq_laneq_s32(v68, 2)));
          v79 = v78;
          *(&v79 & 0xFFFFFFFFFFFFFFF3 | (4 * (v31 & 3))) = v62 * (v15.f32[0] * (1.0 - v63));
          v15 = vsubq_f32(vdivq_f32(v69, vdupq_laneq_s32(v69, 2)), v79);
          v71 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v92, v70.f32[0]), v93, *v70.f32, 1), v94, v70, 2);
          v71.i64[0] = vdivq_f32(v71, vdupq_laneq_s32(v71, 2)).u64[0];
          v72 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v89, v15.f32[0]), v90, *v15.f32, 1), v91, v15, 2);
          v15.i64[0] = vdivq_f32(v72, vdupq_laneq_s32(v72, 2)).u64[0];
          *(a6 + 16) = v71.f32[0];
          v72.i32[0] = v15.i32[1];
          v15.i32[1] = v71.i32[1];
          *(a6 + 24) = vcvtq_f64_f32(*v15.f32);
          *(a6 + 40) = v72.f32[0];
          *v15.i64 = v62;
          *v75 = v62;
        }
      }
    }
  }

  return *v15.i64;
}

uint64_t sub_2957534E8()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_29575351C(uint64_t a1, void *a2)
{
  v26 = a2;
  if (objc_msgSend_status(v26, v2, v3, v4, v5, v6, v7, v8, v9) == 4)
  {
    objc_msgSend_GPUEndTime(v26, v10, v11, v12, v13, v14, v15, v16, v17);
    objc_msgSend_GPUStartTime(v26, v18, v19, v20, v21, v22, v23, v24, v25);
  }

  else
  {
    objc_msgSend_status(v26, v10, v11, v12, v13, v14, v15, v16, v17);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }
}

uint64_t sub_295753AF4()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_295753B28(uint64_t a1, void *a2)
{
  v26 = a2;
  if (objc_msgSend_status(v26, v2, v3, v4, v5, v6, v7, v8, v9) == 4)
  {
    objc_msgSend_GPUEndTime(v26, v10, v11, v12, v13, v14, v15, v16, v17);
    objc_msgSend_GPUStartTime(v26, v18, v19, v20, v21, v22, v23, v24, v25);
  }

  else
  {
    objc_msgSend_status(v26, v10, v11, v12, v13, v14, v15, v16, v17);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }
}

id sub_2957547E4(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x29EDB8DE8]);
  v17 = objc_msgSend_initWithCapacity_(v2, v3, 8, v4, v5, v6, v7, v8, v9);
  for (i = 0; i != 8; ++i)
  {
    v19 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v10, v11, v12, v13, v14, v15, v16, *(a1 + 4 * i));
    objc_msgSend_setObject_atIndexedSubscript_(v17, v20, v19, i, v21, v22, v23, v24, v25);
  }

  return v17;
}

uint64_t sub_295755F0C(CVPixelBufferRef *a1, int a2, int a3, int a4)
{
  if (a1)
  {
    v7 = *a1;
    if (v7)
    {
      if (CVPixelBufferGetWidth(v7) == a2 && CVPixelBufferGetHeight(*a1) == a3 && CVPixelBufferGetPixelFormatType(*a1) == a4)
      {
        return 1;
      }

      if (*a1)
      {
        CFRelease(*a1);
        *a1 = 0;
      }
    }

    PixelBuffer = CreatePixelBuffer();
    *a1 = PixelBuffer;
    if (PixelBuffer)
    {
      return 1;
    }

    sub_29576B48C();
  }

  else
  {
    sub_29576B504();
  }

  return 0;
}

uint64_t sub_295757980(float64x2_t *a1, double *a2, uint64_t a3, float a4, float a5)
{
  *&v40 = 0;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  if (!a1)
  {
    sub_29576D3F8();
    return 4294954516;
  }

  if (!a2)
  {
    sub_29576D384();
    return 4294954516;
  }

  if (!a3)
  {
    sub_29576D310();
    return 4294954516;
  }

  *&v31 = vcvt_f32_f64(a1[1]);
  *&v32 = __PAIR64__(LODWORD(a5), LODWORD(a4));
  v5 = a1->f64[0];
  v6 = a1->f64[1];
  v7 = a1->f64[0];
  v8 = v6;
  *(&v32 + 2) = v7;
  *(&v40 + 1) = v8;
  *(&v40 + 1) = 0;
  *&v41 = 0;
  *(&v41 + 1) = a4;
  v42 = a5;
  v9 = (a2 + 12);
  v10 = a1 + 6;
  v11 = vdupq_lane_s64(COERCE__INT64(a2[1] * *a2), 0);
  v12 = vdupq_lane_s64(COERCE__INT64(v5 * v6), 0);
  for (i = 32; i != 64; i += 8)
  {
    v14 = v9[-4];
    v15 = *v9++;
    v16 = (&v27 + i);
    v16[-4] = vcvt_f32_f64(vmlaq_f64(v14, v15, v11));
    v17 = v10[-4];
    v18 = *v10++;
    *v16 = vcvt_f32_f64(vmlaq_f64(v17, v18, v12));
  }

  result = 0;
  *(a3 + 240) = v42;
  v20 = v40;
  *(a3 + 192) = v39;
  *(a3 + 208) = v20;
  *(a3 + 224) = v41;
  v21 = v36;
  *(a3 + 128) = v35;
  *(a3 + 144) = v21;
  v22 = v38;
  *(a3 + 160) = v37;
  *(a3 + 176) = v22;
  v23 = v32;
  *(a3 + 64) = v31;
  *(a3 + 80) = v23;
  v24 = v34;
  *(a3 + 96) = v33;
  *(a3 + 112) = v24;
  v25 = v28;
  *a3 = v27;
  *(a3 + 16) = v25;
  v26 = v30;
  *(a3 + 32) = v29;
  *(a3 + 48) = v26;
  return result;
}

uint64_t sub_295757ACC()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_295757B00(uint64_t a1, void *a2)
{
  v26 = a2;
  if (objc_msgSend_status(v26, v2, v3, v4, v5, v6, v7, v8, v9) == 4)
  {
    objc_msgSend_GPUEndTime(v26, v10, v11, v12, v13, v14, v15, v16, v17);
    objc_msgSend_GPUStartTime(v26, v18, v19, v20, v21, v22, v23, v24, v25);
  }

  else
  {
    objc_msgSend_status(v26, v10, v11, v12, v13, v14, v15, v16, v17);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }
}

uint64_t sub_295757BB4()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_295757BE8(uint64_t a1, void *a2)
{
  v26 = a2;
  if (objc_msgSend_status(v26, v2, v3, v4, v5, v6, v7, v8, v9) == 4)
  {
    objc_msgSend_GPUEndTime(v26, v10, v11, v12, v13, v14, v15, v16, v17);
    objc_msgSend_GPUStartTime(v26, v18, v19, v20, v21, v22, v23, v24, v25);
  }

  else
  {
    objc_msgSend_status(v26, v10, v11, v12, v13, v14, v15, v16, v17);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }
}

uint64_t sub_295757C9C()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

uint64_t sub_295757CD0()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_295757D04(uint64_t a1, void *a2)
{
  v26 = a2;
  if (objc_msgSend_status(v26, v2, v3, v4, v5, v6, v7, v8, v9) == 4)
  {
    objc_msgSend_GPUEndTime(v26, v10, v11, v12, v13, v14, v15, v16, v17);
    objc_msgSend_GPUStartTime(v26, v18, v19, v20, v21, v22, v23, v24, v25);
  }

  else
  {
    objc_msgSend_status(v26, v10, v11, v12, v13, v14, v15, v16, v17);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }
}

uint64_t sub_295759370()
{

  return fig_log_get_emitter();
}

FILE *sub_295759628(const char *a1, const char *a2, float a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], a2, @"%s", a5, a6, a7, a8, a9, a3, a1);
  v19 = objc_msgSend_stringByDeletingLastPathComponent(v10, v11, v12, v13, v14, v15, v16, v17, v18);
  v28 = objc_msgSend_defaultManager(MEMORY[0x29EDB9FB8], v20, v21, v22, v23, v24, v25, v26, v27);
  v42 = 0;
  DirectoryAtPath_withIntermediateDirectories_attributes_error = objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v28, v29, v19, 1, 0, &v42, v30, v31, v32);
  v34 = v42;
  if (DirectoryAtPath_withIntermediateDirectories_attributes_error)
  {
    v35 = fopen(a1, "wb");
  }

  else
  {
    if (qword_2A18B9750 != -1)
    {
      sub_29576D92C();
    }

    v36 = qword_2A18B9760;
    if (os_log_type_enabled(qword_2A18B9760, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v39 = v19;
      v40 = 2112;
      v41 = v34;
      _os_log_impl(&dword_295749000, v36, OS_LOG_TYPE_DEFAULT, "Failed to create directory %@. Error: %@", buf, 0x16u);
    }

    v35 = 0;
  }

  return v35;
}

FILE *sub_295759C2C(unsigned int a1, const char *a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9)
{
  v9 = a4;
  v10 = a3;
  v11 = a2;
  result = sub_295759628(a5, a2, a9, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    v14 = result;
    v15 = malloc_type_malloc(3 * a1, 0x100004077774924uLL);
    if (v15)
    {
      v16 = v15;
      fprintf(v14, "P6 %u %u 255\n", a1, v11);
      if (v11)
      {
        for (i = 0; i != v11; ++i)
        {
          v18 = a1;
          v19 = v16;
          for (j = v9; v18; --v18)
          {
            *v19 = *j;
            v19[1] = j[1];
            v19[2] = j[2];
            j += 4;
            v19 += 3;
          }

          fwrite(v16, 3uLL, a1, v14);
          v9 += v10;
        }
      }

      free(v16);
    }

    return fclose(v14);
  }

  return result;
}

uint64_t sub_29575DF84()
{
  qword_2A18B9760 = os_log_create("com.apple.cameracapture", "legacyLog");

  return MEMORY[0x2A1C71028]();
}

CVPixelBufferRef sub_29575E738(size_t a1, const char *a2, OSType a3, float a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  pixelBufferOut = 0;
  v17 = *MEMORY[0x29EDB96D0];
  v18 = MEMORY[0x29EDB8EA0];
  v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], a2, &v18, &v17, 1, a7, a8, a9, a4);
  v13 = CVPixelBufferCreate(0, a1, a2, a3, v12, &pixelBufferOut);
  v14 = pixelBufferOut;
  if (v13)
  {
    v15 = pixelBufferOut == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    CFRelease(pixelBufferOut);
    v14 = 0;
    pixelBufferOut = 0;
  }

  return v14;
}

uint64_t sub_29575F670()
{
  qword_2A18B9768 = os_log_create("com.apple.cameracapture", "legacyLog");

  return MEMORY[0x2A1C71028]();
}

__n64 sub_29575F6F8@<D0>(int a1@<W8>)
{
  result.n64_u32[0] = (a1 + 2 * v2 + 1) / v3;
  result.n64_u32[1] = (v1 + 2 * (v1 / v3 - 2 * (v1 / v3 / v3)) + 1) / v3;
  return result;
}

void sub_29575F728(uint64_t a1)
{
  v4 = *(v1 + 8 * v2);
  *(v1 + 8 * v2) = a1;
}

uint64_t sub_29575F7C8(unsigned int a1, const void *a2, void ***a3)
{
  if (a1 <= 0)
  {
    sub_29576FF18();
LABEL_17:
    v6 = 0;
    v14 = 4294954516;
    goto LABEL_13;
  }

  if (!a2)
  {
    sub_29576FEC0();
    goto LABEL_17;
  }

  if (!a3)
  {
    sub_29576FE68();
    goto LABEL_17;
  }

  v6 = malloc_type_calloc(1uLL, 0xB88uLL, 0x108004012BBBC92uLL);
  if (!v6)
  {
    sub_29576FE10();
LABEL_26:
    v14 = 4294954510;
    goto LABEL_13;
  }

  v7 = malloc_type_malloc(16 * a1, 0x100004000313F17uLL);
  v6[362] = v7;
  if (!v7)
  {
    sub_29576FDB8();
    goto LABEL_26;
  }

  v8 = malloc_type_malloc(16 * a1, 0x100004000313F17uLL);
  v6[363] = v8;
  if (!v8)
  {
    sub_29576FD60();
    goto LABEL_26;
  }

  v9 = malloc_type_malloc(16 * a1, 0x100004000313F17uLL);
  v6[364] = v9;
  if (!v9)
  {
    sub_29576FD08();
    goto LABEL_26;
  }

  v10 = malloc_type_malloc(16 * a1, 0x100004000313F17uLL);
  v6[365] = v10;
  if (!v10)
  {
    sub_29576FCB0();
    goto LABEL_26;
  }

  v11 = malloc_type_malloc(16 * a1, 0x100004000313F17uLL);
  v6[366] = v11;
  if (!v11)
  {
    sub_29576FC58();
    goto LABEL_26;
  }

  v12 = malloc_type_malloc(16 * a1, 0x100004000313F17uLL);
  v6[367] = v12;
  if (!v12)
  {
    sub_29576FC00();
    goto LABEL_26;
  }

  v13 = malloc_type_malloc(8 * a1, 0x100004000313F17uLL);
  v6[368] = v13;
  if (!v13)
  {
    sub_29576FBA8();
    goto LABEL_26;
  }

  *v6 = a1;
  memcpy(v6 + 1, a2, 0x200uLL);
  v14 = 0;
  *a3 = v6;
  v6 = 0;
LABEL_13:
  sub_29575F968(v6);
  return v14;
}

void sub_29575F968(void **a1)
{
  if (a1)
  {
    free(a1[362]);
    free(a1[363]);
    free(a1[364]);
    free(a1[365]);
    free(a1[366]);
    free(a1[367]);
    free(a1[368]);

    free(a1);
  }
}

uint64_t sub_29575F9DC(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    sub_29576FFC8();
    return 4294954516;
  }

  if (!a2)
  {
    sub_29576FF70();
    return 4294954516;
  }

  memcpy((a1 + 8), a2, 0x200uLL);
  return 0;
}

void sub_29575FA1C(uint64_t a1@<X0>, void *a2@<X8>)
{
  bzero(a2, 0x748uLL);
  if (a1)
  {

    memcpy(a2, (a1 + 520), 0x748uLL);
  }
}

uint64_t sub_29575FA78(uint64_t a1, uint64_t a2, uint64_t a3, int a4, __int128 *a5, uint64_t a6, uint64_t a7)
{
  if (!a1)
  {
    sub_29577081C();
    return 4294954516;
  }

  if (!a2)
  {
    sub_2957707C4();
    return 4294954516;
  }

  if (!a3)
  {
    sub_29577076C();
    return 4294954516;
  }

  if (a4 <= 0)
  {
    sub_295770714();
    return 4294954516;
  }

  if (*a1 < a4)
  {
    sub_2957706BC();
    return 4294954516;
  }

  if (!a5)
  {
    sub_295770664();
    return 4294954516;
  }

  if (!a6)
  {
    sub_29577060C();
    return 4294954516;
  }

  if (!a7)
  {
    sub_2957705B4();
    return 4294954516;
  }

  if (fabs(*(a7 + 168)) <= 0.00001)
  {
    sub_295770554();
    return 4294954516;
  }

  if (fabs(*(a7 + 176)) <= 0.00001)
  {
    sub_2957704F4();
    return 4294954516;
  }

  v149 = *a5;
  if (fabs(*a5) <= 0.00000001)
  {
    sub_295770494();
    return 4294954516;
  }

  v148 = *a6;
  if (fabs(*a6) <= 0.00000001)
  {
    sub_295770434();
    return 4294954516;
  }

  v147 = *(a5 + 8);
  v14 = *(a5 + 3);
  v15 = a5[5];
  v16 = a5[7];
  v239 = a5[6];
  v240 = v16;
  v17 = a5[7];
  v18 = a5[9];
  v241 = a5[8];
  v242 = v18;
  v19 = a5[3];
  v235 = a5[2];
  v236 = v19;
  v20 = a5[5];
  v21 = a5[2];
  v22 = a5[3];
  v237 = a5[4];
  v238 = v20;
  v145 = *(a6 + 8);
  v146 = *(a6 + 24);
  v23 = *(a6 + 112);
  v24 = *(a6 + 128);
  v25 = v24;
  v234 = *(a6 + 144);
  v233 = v24;
  v26 = *(a6 + 96);
  v27 = *(a6 + 80);
  v232 = *(a6 + 112);
  v231 = v26;
  v28 = *(a6 + 48);
  v29 = *(a6 + 64);
  v30 = v29;
  v230 = *(a6 + 80);
  v229 = v29;
  v31 = *(a6 + 32);
  v32 = v31;
  v228 = *(a6 + 48);
  v227 = v31;
  v33 = *a7;
  v34 = *(a7 + 16);
  v226 = *(a7 + 32);
  v35 = *a7;
  v225 = v34;
  v224 = v33;
  v36 = *(a7 + 48);
  v153 = *(a7 + 56);
  v38 = *(a7 + 128);
  v37 = *(a7 + 144);
  v39 = v37;
  v222 = *(a7 + 160);
  v221 = v37;
  v40 = *a5;
  *&v212[16] = a5[1];
  *v212 = v40;
  v41 = *(a7 + 64);
  v216 = v15;
  v215 = v237;
  v42 = *(a7 + 80);
  v43 = *(a7 + 88);
  v214 = v22;
  v213 = v21;
  v220 = a5[9];
  v219 = v241;
  v218 = v17;
  v217 = v239;
  v151 = *(a7 + 96);
  v152 = v41;
  v208 = v26;
  v209 = v23;
  v44 = *(a6 + 144);
  v210 = v25;
  v211 = v44;
  v45 = *(a7 + 112);
  v46 = *(a7 + 120);
  v204 = v32;
  v205 = v28;
  v206 = v30;
  v207 = v27;
  v47 = *(a6 + 16);
  *v203 = *a6;
  *&v203[16] = v47;
  v150 = *(a7 + 128);
  v223 = *(a7 + 176);
  v199 = v38;
  v200 = v39;
  v201 = *(a7 + 160);
  v202 = *(a7 + 176);
  v48 = *(a7 + 80);
  v195 = *(a7 + 64);
  v196 = v48;
  v49 = *(a7 + 112);
  v197 = *(a7 + 96);
  v198 = v49;
  v191 = v35;
  v192 = v34;
  v50 = *(a7 + 48);
  v51 = *(a1 + 152);
  v193 = *(a7 + 32);
  v194 = v50;
  if (v51 > 0.0 && *(a1 + 2384) == 1)
  {
    sub_29576096C(a1, v212, v203, &v191, v51);
  }

  v52 = sub_295760D0C(a1, a2, a3, a4, v212, v203, &v191);
  if (v52)
  {
    v117 = v52;
    sub_295770020();
    return v117;
  }

  if (fabs(*(&v201 + 1)) <= 0.00001)
  {
    sub_2957703D4();
    return 4294954516;
  }

  if (fabs(v202) <= 0.00001)
  {
    sub_295770374();
    return 4294954516;
  }

  if (fabs(*v212) <= 0.00000001)
  {
    sub_295770314();
    return 4294954516;
  }

  if (fabs(*v203) <= 0.00000001)
  {
    sub_2957702B4();
    return 4294954516;
  }

  if ((*(a1 + 1868) & 1) == 0)
  {
    sub_295770078(a1, &v312);
    v115 = v312;
    goto LABEL_38;
  }

  v141 = *v212;
  v143 = *v203;
  v53 = (a1 + 2584);
  v320 = v199;
  v321 = v200;
  v322 = v201;
  v323 = v202;
  v316 = v195;
  v317 = v196;
  v318 = v197;
  v319 = v198;
  v312 = v191;
  v313 = v192;
  v314 = v193;
  v315 = v194;
  sub_29576109C(&v312, &v179);
  v312 = v224;
  v313 = v225;
  v314 = v226;
  *&v315 = v36;
  *(&v315 + 1) = v153;
  v316 = v152;
  *&v317 = v42;
  *(&v317 + 1) = v43;
  v318 = v151;
  *&v319 = v45;
  *(&v319 + 1) = v46;
  v323 = v223;
  v322 = v222;
  v320 = v150;
  v321 = v221;
  v54 = v243;
  sub_29576109C(&v312, v243);
  v55 = 0;
  v56 = 1;
  do
  {
    v57 = v56;
    v58 = *&v244[8 * v55 + 8];
    *v54 = -*v54;
    *&v244[8 * v55 + 8] = -v58;
    *&v244[8 * v55 + 24] = -*&v244[8 * v55 + 24];
    v54 = v244;
    v55 = 1;
    v56 = 0;
  }

  while ((v57 & 1) != 0);
  v140 = v36;
  v59 = 0;
  v60 = &v179;
  v61 = v243;
  v62 = 1;
  v63 = v141;
  do
  {
    *(&v180 + v59) = *&v244[8 * v59 + 8] + *(&v180 + v59);
    v64 = v62;
    v65 = *v61;
    *(&v181 + v59) = *&v244[8 * v59 + 24] + *(&v181 + v59);
    *v60 = v65 + *v60;
    v61 = v244;
    v60 = &v179 + 1;
    v59 = 1;
    v62 = 0;
  }

  while ((v64 & 1) != 0);
  v142 = v14;
  v66 = vsubq_f64(vmulq_n_f64(*&v212[8], v63), vmulq_n_f64(v147, v149));
  v67 = v63 * *&v212[24] - v149 * v14;
  v68 = vsubq_f64(vmulq_n_f64(*&v203[8], v143), vmulq_n_f64(v145, v148));
  v69 = v143 * *&v203[24] - v148 * v146;
  v70 = (a1 + 2392);
  if (*(a1 + 2384))
  {
    v139 = v66;
    v144 = v68;
    v71 = *(a1 + 2536);
    v72 = *(a1 + 2504);
    v163 = *(a1 + 2520);
    v164 = v71;
    v73 = *(a1 + 2536);
    v165 = *(a1 + 2552);
    v74 = *(a1 + 2472);
    v75 = *(a1 + 2440);
    v159 = *(a1 + 2456);
    v160 = v74;
    v76 = *(a1 + 2472);
    v77 = *(a1 + 2504);
    v161 = *(a1 + 2488);
    v162 = v77;
    v78 = *(a1 + 2408);
    v156[0] = *v70;
    v156[1] = v78;
    v79 = *(a1 + 2440);
    v80 = *v70;
    v81 = *(a1 + 2408);
    v157 = *(a1 + 2424);
    v158 = v79;
    v154[8] = v187;
    v154[9] = v188;
    v154[10] = v189;
    v154[4] = v183;
    v154[5] = v184;
    v154[6] = v185;
    v154[7] = v186;
    v154[0] = v179;
    v154[1] = v180;
    v154[2] = v181;
    v154[3] = v182;
    v320 = v163;
    v321 = v73;
    v322 = *(a1 + 2552);
    v316 = v159;
    v317 = v76;
    v318 = v161;
    v319 = v72;
    v312 = v80;
    v313 = v81;
    v314 = v157;
    v315 = v75;
    v308 = v187;
    v309 = v188;
    v310 = v189;
    v304 = v183;
    v305 = v184;
    v306 = v185;
    v307 = v186;
    v82 = *(a1 + 148);
    v83 = *(a1 + 144);
    v166 = *(a1 + 2568);
    v155 = v190;
    v300 = v179;
    v301 = v180;
    v167 = 0u;
    v168 = 0u;
    v169 = 0u;
    v170 = 0u;
    v171 = 0u;
    v172 = 0u;
    v173 = 0u;
    v174 = 0u;
    v175 = 0u;
    v176 = 0u;
    v177 = 0u;
    v178 = 0;
    v323 = *(a1 + 2568);
    v311 = v190;
    v302 = v181;
    v303 = v182;
    sub_2957623E4(&v312, &v300, &v167, v83);
    v323 = 0.0;
    v322 = 0u;
    v321 = 0u;
    v320 = 0u;
    v319 = 0u;
    v318 = 0u;
    v317 = 0u;
    v316 = 0u;
    v315 = 0u;
    v314 = 0u;
    v313 = 0u;
    v312 = 0u;
    v311 = 0.0;
    v310 = 0u;
    v309 = 0u;
    v308 = 0u;
    v307 = 0u;
    v306 = 0u;
    v305 = 0u;
    v304 = 0u;
    v303 = 0u;
    v302 = 0u;
    v301 = 0u;
    v300 = 0u;
    v299 = 0;
    v298 = 0u;
    v297 = 0u;
    v296 = 0u;
    v295 = 0u;
    v294 = 0u;
    v293 = 0u;
    v292 = 0u;
    v291 = 0u;
    v290 = 0u;
    v289 = 0u;
    v288 = 0u;
    *v84.i32 = v140;
    v287 = 0u;
    v286 = 0u;
    *v85.i32 = v153;
    v86.i64[1] = *&v152.f64[1];
    *v86.i8 = vcvt_f32_f64(v152);
    *&v87 = v42;
    v285 = 0u;
    v284 = 0u;
    *&v88 = v43;
    *&v89 = v45;
    v283.columns[1] = 0;
    v283.columns[0] = 0;
    *&v90 = v46;
    v91.i64[1] = *&v150.f64[1];
    *v91.i8 = vcvt_f32_f64(v150);
    v92 = vzip1q_s32(v86, v91);
    v282.columns[1] = 0;
    v282.columns[0] = 0;
    v93 = vzip2q_s32(vcvt_hight_f32_f64(*&v151.f64[0], v151), 0);
    v84.i32[1] = v87;
    v84.i32[2] = v89;
    v85.i32[1] = v88;
    v85.i32[2] = v90;
    v137 = v85;
    v138 = v84;
    v135 = vzip2q_s32(v92, v93);
    v136 = vzip1q_s32(v92, v93);
    if (AdaptiveCorrection_computeVerticalBaselineTransform(&v284, &v283, &v282))
    {
      sub_2957700F4();
    }

    else if (AdaptiveCorrection_rotateCalModel(v156, &v312, v284, v285, v286, v287, v283.columns[0], v283.columns[1], v282.columns[0], v282.columns[1]))
    {
      sub_29577014C();
    }

    else if (AdaptiveCorrection_rotateCalModel(v154, &v300, v284, v285, v286, v287, v283.columns[0], v283.columns[1], v282.columns[0], v282.columns[1]))
    {
      sub_2957701A4();
    }

    else
    {
      v281 = 0;
      v280 = 0u;
      v279 = 0u;
      v278 = 0u;
      v277 = 0u;
      v276 = 0u;
      v275 = 0u;
      v274 = 0u;
      v273 = 0u;
      v272 = 0u;
      memset(v271, 0, sizeof(v271));
      v267 = v320;
      v268 = v321;
      v269 = v322;
      v270 = v323;
      v263 = v316;
      v264 = v317;
      v265 = v318;
      v266 = v319;
      v259 = v312;
      v260 = v313;
      v261 = v314;
      v262 = v315;
      v255 = v308;
      v256 = v309;
      v257 = v310;
      v258 = v311;
      v251 = v304;
      v252 = v305;
      v253 = v306;
      v254 = v307;
      v247 = v300;
      v248 = v301;
      v249 = v302;
      v250 = v303;
      sub_2957623E4(&v259, &v247, v271, v83);
      v259 = 0u;
      v260 = 0u;
      v261 = 0u;
      v262 = 0u;
      v263 = 0u;
      v264 = 0u;
      v265 = 0u;
      v266 = 0u;
      v267 = 0u;
      v268 = 0u;
      v269 = 0u;
      v270 = 0.0;
      v255 = v320;
      v256 = v321;
      v257 = v322;
      v258 = v323;
      v251 = v316;
      v252 = v317;
      v253 = v318;
      v254 = v319;
      v247 = v312;
      v248 = v313;
      v249 = v314;
      v250 = v315;
      v245[8] = v308;
      v245[9] = v309;
      v245[10] = v310;
      v246 = v311;
      v245[4] = v304;
      v245[5] = v305;
      v245[6] = v306;
      v245[7] = v307;
      v245[0] = v300;
      v245[1] = v301;
      v245[2] = v302;
      v245[3] = v303;
      sub_2957623E4(&v247, v245, &v259, v82);
      v272 = v261;
      v94 = __invert_f2(v283);
      v95 = __invert_f2(v282);
      if (AdaptiveCorrection_rotateCalModel(v271, &v288, v138, v137, v136, v135, v94.columns[0], v94.columns[1], v95.columns[0], v95.columns[1]))
      {
        sub_2957701FC();
      }

      else
      {
        v168 = v289;
        v169 = v290;
      }
    }

    v96 = v176;
    *(a1 + 2520) = v175;
    *(a1 + 2536) = v96;
    *(a1 + 2552) = v177;
    *(a1 + 2568) = v178;
    v97 = v172;
    *(a1 + 2456) = v171;
    *(a1 + 2472) = v97;
    v98 = v174;
    *(a1 + 2488) = v173;
    *(a1 + 2504) = v98;
    v99 = v168;
    *v70 = v167;
    *(a1 + 2408) = v99;
    v100 = v170;
    *(a1 + 2424) = v169;
    *(a1 + 2440) = v100;
    v101 = *(a1 + 144);
    *&v100 = v67 * (1.0 - v101) + *(a1 + 2600) * v101;
    *v53 = vaddq_f64(vmulq_n_f64(v139, 1.0 - v101), vmulq_n_f64(*v53, v101));
    *(a1 + 2600) = v100;
    *&v100 = v69 * (1.0 - v101) + *(a1 + 2760) * v101;
    *(a1 + 2744) = vaddq_f64(vmulq_n_f64(v144, 1.0 - v101), vmulq_n_f64(*(a1 + 2744), v101));
    *(a1 + 2760) = v100;
    if ((*(a1 + 2384) & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v102 = v188;
    *(a1 + 2520) = v187;
    *(a1 + 2536) = v102;
    *(a1 + 2552) = v189;
    *(a1 + 2568) = v190;
    v103 = v184;
    *(a1 + 2456) = v183;
    *(a1 + 2472) = v103;
    v104 = v186;
    *(a1 + 2488) = v185;
    *(a1 + 2504) = v104;
    v105 = v180;
    *v70 = v179;
    *(a1 + 2408) = v105;
    v106 = v182;
    *(a1 + 2424) = v181;
    *(a1 + 2440) = v106;
    *(a1 + 2576) = 0x3FF0000000000000;
    *v53 = v66;
    *(a1 + 2600) = v67;
    v107 = v218;
    *(a1 + 2672) = v217;
    *(a1 + 2688) = v107;
    v108 = v220;
    *(a1 + 2704) = v219;
    *(a1 + 2720) = v108;
    v109 = v214;
    *(a1 + 2608) = v213;
    *(a1 + 2624) = v109;
    v110 = v216;
    *(a1 + 2640) = v215;
    *(a1 + 2656) = v110;
    *(a1 + 2736) = 0x3FF0000000000000;
    *(a1 + 2744) = v68;
    *(a1 + 2760) = v69;
    v111 = v209;
    *(a1 + 2832) = v208;
    *(a1 + 2848) = v111;
    v112 = v211;
    *(a1 + 2864) = v210;
    *(a1 + 2880) = v112;
    v113 = v205;
    *(a1 + 2768) = v204;
    *(a1 + 2784) = v113;
    v114 = v207;
    *(a1 + 2800) = v206;
    *(a1 + 2816) = v114;
    *(a1 + 2384) = 1;
  }

  if (*(a1 + 144) == 0.0 && *(a1 + 148) > 0.0)
  {
    v115 = 1;
    v36 = v140;
    v14 = v142;
LABEL_38:
    v191 = v224;
    v192 = v225;
    v193 = v226;
    *&v194 = v36;
    *(&v194 + 1) = v153;
    v195 = v152;
    *&v196 = v42;
    *(&v196 + 1) = v43;
    v197 = v151;
    *&v198 = v45;
    *(&v198 + 1) = v46;
    v202 = v223;
    v201 = v222;
    v199 = v150;
    v200 = v221;
    *&v212[8] = v147;
    *v212 = v149;
    *&v212[24] = v14;
    v220 = v242;
    v219 = v241;
    v218 = v240;
    v217 = v239;
    v216 = v238;
    v215 = v237;
    v214 = v236;
    v213 = v235;
    *&v203[8] = v145;
    *v203 = v148;
    *&v203[24] = v146;
    v207 = v230;
    v206 = v229;
    v205 = v228;
    v204 = v227;
    v211 = v234;
    v210 = v233;
    v209 = v232;
    v208 = v231;
    if (v115)
    {
      v116 = sub_29576096C(a1, v212, v203, &v191, 1.0);
      if (v116)
      {
        v117 = v116;
        sub_295770254();
        return v117;
      }
    }
  }

LABEL_40:
  v117 = 0;
  *(a7 + 176) = v202;
  v118 = v198;
  *(a7 + 96) = v197;
  *(a7 + 112) = v118;
  v119 = v196;
  *(a7 + 64) = v195;
  *(a7 + 80) = v119;
  v120 = v201;
  v121 = v199;
  *(a7 + 144) = v200;
  *(a7 + 160) = v120;
  *(a7 + 128) = v121;
  v122 = v192;
  *a7 = v191;
  *(a7 + 16) = v122;
  v123 = v194;
  *(a7 + 32) = v193;
  *(a7 + 48) = v123;
  v124 = *&v212[16];
  *a5 = *v212;
  a5[1] = v124;
  v125 = v216;
  a5[4] = v215;
  a5[5] = v125;
  v126 = v214;
  a5[2] = v213;
  a5[3] = v126;
  v127 = v220;
  a5[8] = v219;
  a5[9] = v127;
  v128 = v218;
  a5[6] = v217;
  a5[7] = v128;
  v129 = *&v203[16];
  *a6 = *v203;
  *(a6 + 16) = v129;
  v130 = v207;
  *(a6 + 64) = v206;
  *(a6 + 80) = v130;
  v131 = v205;
  *(a6 + 32) = v204;
  *(a6 + 48) = v131;
  v132 = v211;
  *(a6 + 128) = v210;
  *(a6 + 144) = v132;
  v133 = v209;
  *(a6 + 96) = v208;
  *(a6 + 112) = v133;
  return v117;
}

uint64_t sub_29576096C(uint64_t a1, uint64_t a2, uint64_t a3, double *a4, double a5)
{
  if (!a1)
  {
    sub_295770B54();
    return 4294954516;
  }

  if ((*(a1 + 2384) & 1) == 0)
  {
    sub_295770874();
    return 4294954516;
  }

  if (!a2)
  {
    sub_295770AFC();
    return 4294954516;
  }

  if (!a3)
  {
    sub_295770AA4();
    return 4294954516;
  }

  if (!a4)
  {
    sub_295770A4C();
    return 4294954516;
  }

  if (fabs(a4[21]) <= 0.00001)
  {
    sub_2957709EC();
    return 4294954516;
  }

  if (fabs(a4[22]) <= 0.00001)
  {
    sub_29577098C();
    return 4294954516;
  }

  if (fabs(*a2) <= 0.00000001)
  {
    sub_29577092C();
    return 4294954516;
  }

  if (fabs(*a3) <= 0.00000001)
  {
    sub_2957708CC();
    return 4294954516;
  }

  v5 = 0;
  v63 = *(a1 + 2568);
  v6 = *(a1 + 2536);
  v60 = *(a1 + 2520);
  v61 = v6;
  v62 = *(a1 + 2552);
  v7 = *(a1 + 2472);
  v56 = *(a1 + 2456);
  v57 = v7;
  v8 = *(a1 + 2504);
  v58 = *(a1 + 2488);
  v59 = v8;
  v9 = *(a1 + 2408);
  v52 = *(a1 + 2392);
  v53 = v9;
  v10 = *(a1 + 2440);
  v11 = &v64;
  v12 = 1;
  v54 = *(a1 + 2424);
  v55 = v10;
  do
  {
    v13 = a4[v5 + 21];
    v66 = v54;
    v67 = v55;
    v70 = v58;
    v71 = v59;
    v68 = v56;
    v69 = v57;
    v75 = v63;
    v73 = v61;
    v74 = v62;
    v72 = v60;
    v64 = v52;
    v65 = v53;
    v14 = *(&v74 + v5 + 1) / v13;
    v15 = *v11 * v14;
    *(&v65 + v5) = v14 * *(&v65 + v5);
    v16 = v12;
    *(&v66 + v5) = v14 * *(&v66 + v5);
    *v11 = v15;
    *(&v74 + v5 + 1) = v13;
    v60 = v72;
    v61 = v73;
    v62 = v74;
    v63 = v75;
    v56 = v68;
    v57 = v69;
    v58 = v70;
    v59 = v71;
    v52 = v64;
    v53 = v65;
    v54 = v66;
    v55 = v67;
    v11 = &v64 + 1;
    v5 = 1;
    v12 = 0;
  }

  while ((v16 & 1) != 0);
  v17 = 0;
  v18 = &v52;
  v19 = 1;
  do
  {
    v20 = v19;
    v21 = *(&v53 + v17);
    *v18 = *v18 * a5;
    *(&v53 + v17) = v21 * a5;
    *(&v54 + v17) = *(&v54 + v17) * a5;
    v18 = &v52 + 1;
    v17 = 1;
    v19 = 0;
  }

  while ((v20 & 1) != 0);
  v22 = 0;
  v23 = *(a4 + 9);
  v48 = *(a4 + 8);
  v49 = v23;
  v50 = *(a4 + 10);
  v51 = *(a4 + 22);
  v24 = *(a4 + 5);
  v44 = *(a4 + 4);
  v45 = v24;
  v25 = *(a4 + 7);
  v46 = *(a4 + 6);
  v47 = v25;
  v26 = *(a4 + 1);
  v40 = *a4;
  v41 = v26;
  v27 = *(a4 + 3);
  v28 = &v40;
  v29 = &v52;
  v30 = 1;
  v42 = *(a4 + 2);
  v43 = v27;
  do
  {
    *(&v41 + v22) = *(&v53 + v22) + *(&v41 + v22);
    v31 = v30;
    v32 = *v29;
    *(&v42 + v22) = *(&v54 + v22) + *(&v42 + v22);
    *v28 = v32 + *v28;
    v28 = &v40 + 1;
    v29 = &v52 + 1;
    v22 = 1;
    v30 = 0;
  }

  while ((v31 & 1) != 0);
  v33 = 0;
  *(a4 + 22) = v51;
  v34 = v47;
  *(a4 + 6) = v46;
  *(a4 + 7) = v34;
  v35 = v45;
  *(a4 + 4) = v44;
  *(a4 + 5) = v35;
  v36 = v50;
  *(a4 + 9) = v49;
  *(a4 + 10) = v36;
  *(a4 + 8) = v48;
  v37 = v41;
  *a4 = v40;
  *(a4 + 1) = v37;
  v38 = v43;
  *(a4 + 2) = v42;
  *(a4 + 3) = v38;
  *&v35 = *(a1 + 2576) / *a2;
  *&v38 = *(a1 + 2600) * *&v35 * a5 + *(a2 + 24);
  *(a2 + 8) = vaddq_f64(*(a2 + 8), vmulq_n_f64(vmulq_n_f64(*(a1 + 2584), *&v35), a5));
  *(a2 + 24) = v38;
  *&v35 = *(a1 + 2736) / *a3;
  *&v38 = *(a1 + 2760) * *&v35 * a5 + *(a3 + 24);
  *(a3 + 8) = vaddq_f64(*(a3 + 8), vmulq_n_f64(vmulq_n_f64(*(a1 + 2744), *&v35), a5));
  *(a3 + 24) = v38;
  return v33;
}

uint64_t sub_295760D0C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a1)
  {
    sub_295771024();
    return 4294954516;
  }

  if (!a2)
  {
    sub_295770FCC();
    return 4294954516;
  }

  if (!a3)
  {
    sub_295770F74();
    return 4294954516;
  }

  if (a4 <= 0)
  {
    sub_295770F1C();
    return 4294954516;
  }

  if (*a1 < a4)
  {
    sub_295770EC4();
    return 4294954516;
  }

  if (!a5)
  {
    sub_295770E6C();
    return 4294954516;
  }

  if (!a6)
  {
    sub_295770E14();
    return 4294954516;
  }

  if (!a7)
  {
    sub_295770DBC();
    return 4294954516;
  }

  v96 = 0;
  memset(v95, 0, sizeof(v95));
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v69 = 0;
  v70 = 0;
  v67 = 0;
  v68 = 0;
  v14 = *(a7 + 48);
  v15 = *(a7 + 64);
  *&v14.f64[0] = vcvt_f32_f64(v14);
  *&v15.f64[0] = vcvt_f32_f64(v15);
  v16 = *(a7 + 80);
  *&v16.f64[0] = vcvt_f32_f64(v16);
  v17 = *(a7 + 112);
  v18 = *(a7 + 128);
  *&v17.f64[0] = vcvt_f32_f64(v17);
  *&v18.f64[0] = vcvt_f32_f64(v18);
  v19 = vzip1q_s32(v14, v17);
  v20 = vzip1q_s32(v15, v18);
  v21 = vzip2q_s32(vcvt_hight_f32_f64(*(a7 + 96), *(a7 + 96)), 0);
  v65 = vzip1q_s32(v19, v16);
  v66 = vzip1q_s32(v20, v21);
  v63 = vzip2q_s32(v19, vdupq_lane_s32(*&v16.f64[0], 1));
  v64 = vzip2q_s32(v20, v21);
  v22 = AdaptiveCorrection_computeVerticalBaselineTransform(&v71, &v69, &v67);
  if (v22)
  {
    v43 = v22;
    sub_295770BAC();
  }

  else
  {
    v23 = AdaptiveCorrection_rotateCalModel(a7, v95, v71, v72, v73, v74, v69, v70, v67, v68);
    if (v23)
    {
      v43 = v23;
      sub_295770C04();
    }

    else
    {
      v24 = *(a5 + 96);
      v25 = *(a5 + 128);
      v26 = *(a5 + 144);
      v92 = *(a5 + 112);
      v93 = v25;
      v94 = v26;
      v27 = *(a5 + 32);
      v28 = *(a5 + 64);
      v29 = *(a5 + 80);
      v88 = *(a5 + 48);
      v89 = v28;
      v90 = v29;
      v91 = v24;
      v30 = *(a5 + 16);
      v85 = *a5;
      v86 = v30;
      *&v24 = *(a5 + 16);
      *v30.f64 = *(a5 + 24);
      v86 = vcvtq_f64_f32(vmla_n_f32(vmul_n_f32(v69, *&v24), v70, *v30.f64));
      v87 = v27;
      v31 = *(a6 + 96);
      v32 = *(a6 + 128);
      v33 = *(a6 + 144);
      v82 = *(a6 + 112);
      v83 = v32;
      v84 = v33;
      v34 = *(a6 + 32);
      v35 = *(a6 + 64);
      v36 = *(a6 + 80);
      v78 = *(a6 + 48);
      v79 = v35;
      v80 = v36;
      v81 = v31;
      v37 = *(a6 + 16);
      v75 = *a6;
      v76 = v37;
      *&v31 = *(a6 + 16);
      *&v32 = *(a6 + 24);
      v76 = vcvtq_f64_f32(vmla_n_f32(vmul_n_f32(v67, *&v31), v68, *&v32));
      v77 = v34;
      v38 = AdaptiveCorrection_transformPointsWithMatrix(a2, a4, *(a1 + 2896), v69, v70);
      if (v38)
      {
        v43 = v38;
        sub_295770C5C();
      }

      else
      {
        v39 = AdaptiveCorrection_transformPointsWithMatrix(a3, a4, *(a1 + 2904), v67, v68);
        if (v39)
        {
          v43 = v39;
          sub_295770CB4();
        }

        else
        {
          v40 = sub_29576EF94(a1, *(a1 + 2896), *(a1 + 2904), a4, &v85, &v75, v95);
          if (v40)
          {
            v43 = v40;
            sub_295770D0C();
          }

          else
          {
            v97.columns[0] = v69;
            v97.columns[1] = v70;
            v41 = __invert_f2(v97);
            v98.columns[0] = v67;
            v98.columns[1] = v68;
            v42 = __invert_f2(v98);
            v43 = AdaptiveCorrection_rotateCalModel(v95, a7, v65, v63, v66, v64, v41.columns[0], v41.columns[1], v42.columns[0], v42.columns[1]);
            if (v43)
            {
              sub_295770D64();
            }

            else
            {
              v99.columns[0] = v69;
              v99.columns[1] = v70;
              v44 = __invert_f2(v99);
              v45 = v91;
              v46 = v93;
              v47 = v94;
              *(a5 + 112) = v92;
              *(a5 + 128) = v46;
              *(a5 + 144) = v47;
              v48 = v87;
              v49 = v89;
              v50 = v90;
              *(a5 + 48) = v88;
              *(a5 + 64) = v49;
              *(a5 + 80) = v50;
              *(a5 + 96) = v45;
              v51 = v86;
              *a5 = v85;
              *(a5 + 16) = v51;
              *&v45 = v86.f64[0];
              v52 = vmul_n_f32(v44.columns[0], *&v45);
              *&v45 = v86.f64[1];
              *(a5 + 16) = vcvtq_f64_f32(vmla_n_f32(v52, v44.columns[1], *&v45));
              *(a5 + 32) = v48;
              v100.columns[0] = v67;
              v100.columns[1] = v68;
              v53 = __invert_f2(v100);
              v54 = v81;
              v55 = v83;
              v56 = v84;
              *(a6 + 112) = v82;
              *(a6 + 128) = v55;
              *(a6 + 144) = v56;
              v57 = v77;
              v58 = v79;
              v59 = v80;
              *(a6 + 48) = v78;
              *(a6 + 64) = v58;
              *(a6 + 80) = v59;
              *(a6 + 96) = v54;
              v60 = v76;
              *a6 = v75;
              *(a6 + 16) = v60;
              *&v54 = v76.f64[0];
              v61 = vmul_n_f32(v53.columns[0], *&v54);
              *&v54 = v76.f64[1];
              *(a6 + 16) = vcvtq_f64_f32(vmla_n_f32(v61, v53.columns[1], *&v54));
              *(a6 + 32) = v57;
            }
          }
        }
      }
    }
  }

  return v43;
}

__n128 sub_29576109C@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = 0;
  v3 = &v22;
  v4 = 1;
  do
  {
    v5 = a1[3];
    v24 = a1[2];
    v25 = v5;
    v6 = a1[7];
    v28 = a1[6];
    v29 = v6;
    v7 = a1[5];
    v26 = a1[4];
    v27 = v7;
    v33 = *(a1 + 22);
    v8 = a1[10];
    v31 = a1[9];
    v32 = v8;
    v30 = a1[8];
    v9 = a1[1];
    v22 = *a1;
    v23 = v9;
    *&v9 = *(&v32 + v2 + 1);
    *&v8 = *&v9 * *v3;
    *(&v23 + v2) = *&v9 * *(&v23 + v2);
    v10 = v4;
    *(&v24 + v2) = *&v9 * *(&v24 + v2);
    *v3 = v8;
    *(&v32 + v2 + 1) = 0x3FF0000000000000;
    v42 = v30;
    v43 = v31;
    v44 = v32;
    v45 = v33;
    v38 = v26;
    v39 = v27;
    v40 = v28;
    v41 = v29;
    v34 = v22;
    v35 = v23;
    v36 = v24;
    v37 = v25;
    v11 = v31;
    a1[8] = v30;
    a1[9] = v11;
    a1[10] = v44;
    *(a1 + 22) = v45;
    v12 = v39;
    a1[4] = v38;
    a1[5] = v12;
    v13 = v41;
    a1[6] = v40;
    a1[7] = v13;
    v14 = v35;
    *a1 = v34;
    a1[1] = v14;
    v15 = v37;
    v3 = &v22 + 1;
    v2 = 1;
    a1[2] = v36;
    a1[3] = v15;
    v4 = 0;
  }

  while ((v10 & 1) != 0);
  v16 = a1[9];
  *(a2 + 128) = a1[8];
  *(a2 + 144) = v16;
  *(a2 + 160) = a1[10];
  *(a2 + 176) = *(a1 + 22);
  v17 = a1[5];
  *(a2 + 64) = a1[4];
  *(a2 + 80) = v17;
  v18 = a1[7];
  *(a2 + 96) = a1[6];
  *(a2 + 112) = v18;
  v19 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v19;
  result = a1[2];
  v21 = a1[3];
  *(a2 + 32) = result;
  *(a2 + 48) = v21;
  return result;
}

uint64_t AdaptiveCorrection_rotateCalModel(__int128 *a1, uint64_t a2, int8x16_t a3, int8x16_t a4, int8x16_t a5, int8x16_t a6, float32x2_t a7, float32x2_t a8, float32x2_t a9, float32x2_t a10)
{
  if (!a1)
  {
    sub_29577128C();
    return 4294954516;
  }

  if (!a2)
  {
    sub_295771234();
    return 4294954516;
  }

  result = 0;
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[3];
  *(a2 + 32) = a1[2];
  *(a2 + 48) = v14;
  *a2 = v12;
  *(a2 + 16) = v13;
  v15 = a1[4];
  v16 = a1[5];
  v17 = a1[7];
  *(a2 + 96) = a1[6];
  *(a2 + 112) = v17;
  *(a2 + 64) = v15;
  *(a2 + 80) = v16;
  v18 = a1[8];
  v19 = a1[9];
  v20 = a1[10];
  *(a2 + 176) = *(a1 + 22);
  *(a2 + 144) = v19;
  *(a2 + 160) = v20;
  *(a2 + 128) = v18;
  *&v18 = *(a1 + 2);
  *&v20 = *(a1 + 4);
  v21 = vmla_n_f32(vmul_n_f32(a7, *&v18), a8, *&v20);
  v22 = *(a1 + 3);
  *&v18 = *(a1 + 5);
  v23 = vmla_n_f32(vmul_n_f32(a9, v22), a10, *&v18);
  *(a2 + 16) = vcvtq_f64_f32(vzip1_s32(v21, v23));
  *(a2 + 32) = vcvtq_f64_f32(vzip2_s32(v21, v23));
  *(a2 + 48) = vcvtq_f64_f32(vzip1_s32(*a3.i8, *a4.i8));
  *(a2 + 64) = vcvtq_f64_f32(vzip1_s32(*a5.i8, *a6.i8));
  *(a2 + 80) = vcvtq_f64_f32(vzip2_s32(*a3.i8, *a4.i8));
  *(a2 + 96) = vcvtq_f64_f32(vzip2_s32(*a5.i8, *a6.i8));
  *(a2 + 112) = vcvtq_f64_f32(vzip1_s32(*&vextq_s8(a3, a3, 8uLL), *&vextq_s8(a4, a4, 8uLL)));
  *(a2 + 128) = vcvtq_f64_f32(vzip1_s32(*&vextq_s8(a5, a5, 8uLL), *&vextq_s8(a6, a6, 8uLL)));
  return result;
}

uint64_t AdaptiveCorrection_transformPointsWithMatrix(uint64_t a1, int a2, float64x2_t *a3, float32x2_t a4, float32x2_t a5)
{
  if (!a1)
  {
    sub_29577133C();
    return 4294954516;
  }

  if (!a3)
  {
    sub_2957712E4();
    return 4294954516;
  }

  if (a2 >= 1)
  {
    v5 = a2;
    v6 = (a1 + 8);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      *a3++ = vcvtq_f64_f32(vmla_n_f32(vmul_n_f32(a4, v7), a5, v8));
      v6 += 2;
      --v5;
    }

    while (v5);
  }

  return 0;
}

double sub_29576166C@<D0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0;
  *(a3 + 1) = 1;
  v4 = *(a1 + 16);
  *(a3 + 8) = a4;
  *(a3 + 16) = v4;
  v5 = *(a1 + 24);
  *(a3 + 24) = v5;
  v6 = *(a1 + 40);
  *&v7 = *(a1 + 56);
  *(&v7 + 1) = v4;
  *(a3 + 40) = v6;
  *(a3 + 72) = v5;
  *(a3 + 56) = v7;
  *(a3 + 88) = v6;
  *(a3 + 96) = *(a1 + 80);
  result = *(a1 + 120);
  *(a3 + 104) = result;
  *(a3 + 112) = a2;
  *(a3 + 116) = 1000;
  *a3 = 1;
  return result;
}

double *sub_2957616DC@<X0>(double *result@<X0>, double *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a4 + 144);
  *(a5 + 128) = *(a4 + 128);
  *(a5 + 144) = v5;
  *(a5 + 160) = *(a4 + 160);
  *(a5 + 176) = *(a4 + 176);
  v6 = *(a4 + 80);
  *(a5 + 64) = *(a4 + 64);
  *(a5 + 80) = v6;
  v7 = *(a4 + 112);
  *(a5 + 96) = *(a4 + 96);
  *(a5 + 112) = v7;
  v8 = *(a4 + 16);
  *a5 = *a4;
  *(a5 + 16) = v8;
  v9 = *(a4 + 48);
  *(a5 + 32) = *(a4 + 32);
  *(a5 + 48) = v9;
  if (a3 < 1)
  {
    v14 = 0.0;
    v13 = 0.0;
    v12 = 0.0;
    v11 = 0.0;
  }

  else
  {
    v10 = a3;
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    do
    {
      v15 = *result;
      result += 2;
      v16 = v15;
      v17 = *a2;
      a2 += 2;
      v14 = v14 + v16 * v17;
      v11 = v11 + v16;
      v12 = v12 + v17;
      v13 = v13 + v17 * v17;
      --v10;
    }

    while (v10);
  }

  v18 = v13 * a3 - v12 * v12;
  if (v18 <= 0.0)
  {
    return sub_295771444();
  }

  v19 = (a3 * v14 - v11 * v12) / v18;
  if (v19 <= 0.0)
  {
    return sub_2957713EC();
  }

  v20 = *(a4 + 8);
  v22 = *(a4 + 16);
  v21 = *(a4 + 24);
  v23 = *(a4 + 64);
  v24 = *(a4 + 128);
  *(a5 + 8) = *a4 / v19;
  if (v24 <= 0.0)
  {
    return sub_295771394();
  }

  *(a5 + 24) = v21 - (v21 - v20 * (v23 / v24)) + (v22 - (v13 * v11 - v14 * v12) / v18) / v19;
  return result;
}

uint64_t sub_295761800(float64x2_t *a1, int a2, float64x2_t *a3, float64x2_t *a4)
{
  if (!a1)
  {
    sub_2957715A4();
    return 4294954516;
  }

  if (a2 <= 0)
  {
    sub_29577154C();
    return 4294954516;
  }

  if (!a3)
  {
    sub_2957714F4();
    return 4294954516;
  }

  if (!a4)
  {
    sub_29577149C();
    return 4294954516;
  }

  v4 = 0;
  memset(v11, 0, sizeof(v11));
  v5 = a3 + 6;
  v6 = a3->f64[0];
  v7 = vdupq_lane_s64(COERCE__INT64(a3->f64[1] * a3->f64[0]), 0);
  do
  {
    v8 = v5[-4];
    v9 = *v5++;
    v11[v4++] = vmlaq_f64(v8, v9, v7);
  }

  while (v4 != 4);
  v7.f64[0] = a3[1].f64[0];
  sub_2957618A4(a1, a2, v11, a4, v7, a3[1].f64[1], v6);
  return 0;
}

float64x2_t *sub_2957618A4(float64x2_t *result, int a2, double *a3, float64x2_t *a4, float64x2_t a5, float64_t a6, double a7)
{
  if (a2 >= 1)
  {
    v7 = *a3;
    v8 = a3[1];
    v9 = a3[2];
    v10 = a3[3];
    v11 = a3[4];
    v12 = a3[5];
    v13 = a2;
    v14 = a3[6];
    v15 = a3[7];
    a5.f64[1] = a6;
    do
    {
      v16 = *result++;
      v17 = vsubq_f64(v16, a5);
      v18 = sqrt(COERCE_DOUBLE(*&vmulq_f64(v17, v17).f64[1]) + v17.f64[0] * v17.f64[0]);
      v19 = v18 * a7 * (v18 * a7);
      v20 = v19 * (v19 * v19);
      v21 = (v7 + v8 * v19 + v9 * (v19 * v19) + v10 * v20 + v11 * (v19 * v19 * (v19 * v19)) + v12 * (v19 * v19 * v20) + v14 * (v20 * v20) + v15 * (v19 * v19 * (v19 * v19) * v20)) / 100.0 + 1.0;
      if (v21 <= 0.0)
      {
        v22 = 1.0;
      }

      else
      {
        v22 = 1.0 / v21;
      }

      *a4++ = vaddq_f64(vmulq_n_f64(v17, v22), a5);
      --v13;
    }

    while (v13);
  }

  return result;
}

uint64_t sub_295761954(uint64_t a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, float32x4_t *a6)
{
  if (!a1)
  {
    sub_2957718DC();
    return 4294954516;
  }

  if (!a2)
  {
    sub_295771884();
    return 4294954516;
  }

  if (!a3)
  {
    sub_29577182C();
    return 4294954516;
  }

  if (!a4)
  {
    sub_2957717D4();
    return 4294954516;
  }

  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v113.i32[2] = 0;
  v113.i64[0] = 0;
  result = sub_2957620D0(a1, &v126, &v123, &v120, &v113, &v117, &v114);
  v12 = v120;
  v13 = v121;
  v14 = v122;
  v15 = vzip1q_s32(v120, v122);
  v16 = vzip1q_s32(v121, 0);
  v17 = vtrn2q_s32(v120, v121);
  v17.i32[2] = v122.i32[1];
  v18 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vzip1q_s32(v15, v16), v113.f32[0]), v17, *v113.f32, 1), vzip1q_s32(vzip2q_s32(v120, v122), vdupq_laneq_s32(v121, 2)), v113, 2);
  v19 = vmulq_f32(v18, v18);
  *&v20 = v19.f32[2] + vaddv_f32(*v19.f32);
  v21 = vrsqrte_f32(v20);
  v22 = vmul_f32(v21, vrsqrts_f32(v20, vmul_f32(v21, v21)));
  v23 = vmulq_n_f32(vnegq_f32(v18), vmul_f32(v22, vrsqrts_f32(v20, vmul_f32(v22, v22))).f32[0]);
  v24 = vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL);
  v25 = vmlaq_f32(vmulq_f32(v24, xmmword_29577B570), xmmword_29577A8A0, v23);
  v26 = vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL);
  v27 = vmulq_f32(v25, v25);
  *&v28 = v27.f32[1] + (v27.f32[2] + v27.f32[0]);
  *v27.f32 = vrsqrte_f32(v28);
  *v27.f32 = vmul_f32(*v27.f32, vrsqrts_f32(v28, vmul_f32(*v27.f32, *v27.f32)));
  v29 = vmulq_n_f32(v26, vmul_f32(*v27.f32, vrsqrts_f32(v28, vmul_f32(*v27.f32, *v27.f32))).f32[0]);
  v30 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL), vnegq_f32(v23)), v29, v24);
  v31 = vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL);
  v32 = vmulq_f32(v30, v30);
  v19.f32[0] = *&v32.i32[1] + (*&v32.i32[2] + *v32.i32);
  *v32.i8 = vrsqrte_f32(v19.u32[0]);
  *v32.i8 = vmul_f32(*v32.i8, vrsqrts_f32(v19.u32[0], vmul_f32(*v32.i8, *v32.i8)));
  v33 = vmulq_n_f32(v31, vmul_f32(*v32.i8, vrsqrts_f32(v19.u32[0], vmul_f32(*v32.i8, *v32.i8))).f32[0]);
  v31.i32[0] = 1.0;
  v32.i64[0] = 0x8000000080000000;
  v32.i64[1] = 0x8000000080000000;
  v34 = vbslq_s8(v32, v31, v23);
  v35 = vmulq_n_f32(v23, *v34.i32);
  v34.i32[0] = v29.i32[1];
  v36 = vmulq_n_f32(v29, *vbslq_s8(v32, v31, v34).i32);
  v29.i32[0] = v33.i32[2];
  v37 = vmulq_n_f32(v33, *vbslq_s8(v32, v31, v29).i32);
  v38 = vzip1q_s32(v35, v37);
  v39 = vzip1q_s32(v36, 0);
  v40 = vtrn2q_s32(v35, v36);
  v40.i32[2] = v37.i32[1];
  v41 = vaddq_f32(vzip1q_s32(vzip2q_s32(v35, v37), vdupq_laneq_s32(v36, 2)), vmlaq_f32(vmulq_f32(vzip1q_s32(v38, v39), 0), 0, v40));
  if (v41.f32[2] <= 0.0)
  {
    sub_29577177C();
    return 4294954516;
  }

  v42 = 0;
  v43 = vzip1q_s32(v120, v121);
  v43.i32[2] = v122.i32[0];
  v44 = vzip2q_s32(v15, v16);
  v45 = vzip2q_s32(v120, v121);
  v45.i32[2] = v122.i32[2];
  v46 = vzip1q_s32(v35, v36);
  v46.i32[2] = v37.i32[0];
  v47 = vzip2q_s32(v38, v39);
  v48 = vzip2q_s32(v35, v36);
  v48.i32[2] = v37.i32[2];
  v49 = vzip1q_s32(v46, v48);
  v50 = vzip1q_s32(v47, 0);
  v51 = vdupq_lane_s32(*v37.i8, 1);
  v52 = vzip2q_s32(v49, v50);
  v53 = vdupq_laneq_s32(v41, 2);
  v54 = vdivq_f32(v41, v53);
  v53.f32[0] = -*v54.i32;
  v55 = vdupq_lane_s32(*v53.f32, 0);
  __asm { FMOV            V29.4S, #1.0 }

  v60.i64[1] = _Q29.i64[1];
  v60.i64[0] = v54.i64[0];
  v61 = v117;
  v62 = v118;
  v63 = v119;
  v129 = v117;
  v130 = v118;
  v131 = v119;
  v132 = 0uLL;
  v133 = 0uLL;
  v134 = 0uLL;
  do
  {
    *(&v132 + v42 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_29577A8A0, COERCE_FLOAT(*(&v129 + v42 * 4))), xmmword_29577A890, *&v129.f32[v42], 1), v60, *(&v129 + v42 * 4), 2);
    v42 += 4;
  }

  while (v42 != 12);
  v64 = 0;
  v65 = vzip1q_s32(v49, v50);
  v66 = vzip2q_s32(v46, vuzp1q_s32(v46, v51));
  v66.i32[2] = v48.i32[2];
  v67 = vzip2q_s32(v55, _Q29);
  v129 = v132;
  v130 = v133;
  v131 = v134;
  v132 = 0u;
  v133 = 0u;
  v134 = 0u;
  do
  {
    *(&v132 + v64 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v65, COERCE_FLOAT(*(&v129 + v64 * 4))), v52, *&v129.f32[v64], 1), v66, *(&v129 + v64 * 4), 2);
    v64 += 4;
  }

  while (v64 != 12);
  v68 = 0;
  v70 = v132;
  v69 = v133;
  v71 = v134;
  v72 = v126;
  v73 = v127;
  v74 = v128;
  v129 = v132;
  v130 = v133;
  v131 = v134;
  v132 = 0u;
  v133 = 0u;
  v134 = 0u;
  do
  {
    *(&v132 + v68 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v72, COERCE_FLOAT(*(&v129 + v68 * 4))), v73, *&v129.f32[v68], 1), v74, *(&v129 + v68 * 4), 2);
    v68 += 4;
  }

  while (v68 != 12);
  v75 = 0;
  v77 = v132;
  v76 = v133;
  v78 = v134;
  v129 = v70;
  v130 = v69;
  v131 = v71;
  v132 = 0u;
  v133 = 0u;
  v134 = 0u;
  do
  {
    *(&v132 + v75 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, COERCE_FLOAT(*(&v129 + v75 * 4))), v13, *&v129.f32[v75], 1), v14, *(&v129 + v75 * 4), 2);
    v75 += 4;
  }

  while (v75 != 12);
  v79 = 0;
  v80 = v76;
  v80.i32[3] = 0;
  *v54.i32 = -*&v54.i32[1];
  v81 = vzip1q_s32(v67, v54);
  v82 = v123;
  v83 = v124;
  v84 = v125;
  v129 = v132;
  v130 = v133;
  v131 = v134;
  v132 = 0u;
  v133 = 0u;
  v134 = 0u;
  do
  {
    *(&v132 + v79 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v82, COERCE_FLOAT(*(&v129 + v79 * 4))), v83, *&v129.f32[v79], 1), v84, *(&v129 + v79 * 4), 2);
    v79 += 4;
  }

  while (v79 != 12);
  v85 = 0;
  v86 = v77;
  v86.i32[3] = 0;
  v87 = v132;
  v88 = v133;
  v89 = v134;
  v129 = v61;
  v130 = v62;
  v131 = v63;
  v132 = 0u;
  v133 = 0u;
  v134 = 0u;
  do
  {
    *(&v132 + v85 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v46, COERCE_FLOAT(*(&v129 + v85 * 4))), v47, *&v129.f32[v85], 1), v48, *(&v129 + v85 * 4), 2);
    v85 += 4;
  }

  while (v85 != 12);
  v90 = 0;
  v91 = v78;
  v91.i32[3] = 0;
  v92 = v88;
  v92.i32[3] = 0;
  v129 = v132;
  v130 = v133;
  v131 = v134;
  v132 = 0u;
  v133 = 0u;
  v134 = 0u;
  do
  {
    *(&v132 + v90 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_29577A8A0, COERCE_FLOAT(*(&v129 + v90 * 4))), xmmword_29577A890, *&v129.f32[v90], 1), v81, *(&v129 + v90 * 4), 2);
    v90 += 4;
  }

  while (v90 != 12);
  v93 = 0;
  v94 = v87;
  v94.i32[3] = 0;
  v129 = v132;
  v130 = v133;
  v131 = v134;
  v132 = 0u;
  v133 = 0u;
  v134 = 0u;
  do
  {
    *(&v132 + v93 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v72, COERCE_FLOAT(*(&v129 + v93 * 4))), v73, *&v129.f32[v93], 1), v74, *(&v129 + v93 * 4), 2);
    v93 += 4;
  }

  while (v93 != 12);
  v95 = vaddq_f32(v78, vmlaq_f32(vmulq_f32(v77, 0), 0, v76));
  if (v95.f32[2] <= 0.01 || v95.f32[2] >= 100.0)
  {
    sub_29577171C();
    return 4294954516;
  }

  v97 = vaddq_f32(v89, vmlaq_f32(vmulq_f32(v87, 0), 0, v88));
  if (v97.f32[2] <= 0.01 || v97.f32[2] >= 100.0)
  {
    sub_2957716BC();
    return 4294954516;
  }

  v99 = v132;
  v100 = v133;
  v101 = v134;
  v102 = vaddq_f32(v134, vmlaq_f32(vmulq_f32(v132, 0), 0, v133));
  if (v102.f32[2] <= 0.01 || v102.f32[2] >= 100.0)
  {
    sub_29577165C();
    return 4294954516;
  }

  if (a5)
  {
    v104 = 0;
    v129 = v114;
    v130 = v115;
    v131 = v116;
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    do
    {
      *(&v132 + v104 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v43, COERCE_FLOAT(*(&v129 + v104 * 4))), v44, *&v129.f32[v104], 1), v45, *(&v129 + v104 * 4), 2);
      v104 += 4;
    }

    while (v104 != 12);
    v105 = 0;
    v129 = v132;
    v130 = v133;
    v131 = v134;
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    do
    {
      *(&v132 + v105 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v46, COERCE_FLOAT(*(&v129 + v105 * 4))), v47, *&v129.f32[v105], 1), v48, *(&v129 + v105 * 4), 2);
      v105 += 4;
    }

    while (v105 != 12);
    v106 = 0;
    v129 = v132;
    v130 = v133;
    v131 = v134;
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    do
    {
      *(&v132 + v106 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_29577A8A0, COERCE_FLOAT(*(&v129 + v106 * 4))), xmmword_29577A890, *&v129.f32[v106], 1), v81, *(&v129 + v106 * 4), 2);
      v106 += 4;
    }

    while (v106 != 12);
    v107 = 0;
    v129 = v132;
    v130 = v133;
    v131 = v134;
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    do
    {
      *(&v132 + v107 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v72, COERCE_FLOAT(*(&v129 + v107 * 4))), v73, *&v129.f32[v107], 1), v74, *(&v129 + v107 * 4), 2);
      v107 += 4;
    }

    while (v107 != 12);
    v109 = v132;
    v108 = v133;
    v110 = v134;
    v111 = vaddq_f32(v134, vmlaq_f32(vmulq_f32(v132, 0), 0, v133));
    if (v111.f32[2] <= 0.01 || v111.f32[2] >= 100.0)
    {
      sub_2957715FC();
      return 4294954516;
    }

    v110.i32[3] = 0;
    v108.i32[3] = 0;
    v109.i32[3] = 0;
    *a5 = v109;
    a5[1] = v108;
    a5[2] = v110;
  }

  v89.i32[3] = 0;
  v99.i32[3] = 0;
  v100.i32[3] = 0;
  v101.i32[3] = 0;
  *a2 = v86;
  a2[1] = v80;
  a2[2] = v91;
  *a3 = v94;
  a3[1] = v92;
  a3[2] = v89;
  *a4 = v99;
  a4[1] = v100;
  a4[2] = v101;
  if (a6)
  {
    *a6 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v46, v18.f32[0]), v47, *v18.f32, 1), v48, v18, 2);
  }

  return result;
}

uint64_t sub_2957620D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float32x4_t *a5, uint64_t a6, uint64_t a7)
{
  if (!a1)
  {
    sub_295771A8C();
    return 4294954516;
  }

  if (a2)
  {
    *&v7 = *a1;
    *&v8 = *(a1 + 16);
    LODWORD(v9) = 0;
    HIDWORD(v9) = v7;
    v10 = *(a1 + 32);
    *(&v8 + 1) = v10;
    *(a2 + 8) = 0;
    *a2 = v7;
    *(a2 + 24) = 0;
    *(a2 + 16) = v9;
    *(a2 + 40) = 1065353216;
    *(a2 + 32) = v8;
  }

  if (a3)
  {
    *&v11 = *(a1 + 8);
    *&v12 = *(a1 + 24);
    LODWORD(v13) = 0;
    HIDWORD(v13) = v11;
    v14 = *(a1 + 40);
    *(&v12 + 1) = v14;
    *(a3 + 8) = 0;
    *a3 = v11;
    *(a3 + 24) = 0;
    *(a3 + 16) = v13;
    *(a3 + 40) = 1065353216;
    *(a3 + 32) = v12;
  }

  if (a4)
  {
    v15 = 0;
    v24 = *(a1 + 48);
    v16 = vcvt_f32_f64(v24);
    v24.f32[0] = *(a1 + 64);
    v17 = *(a1 + 80);
    v18 = *(a1 + 96);
    v19 = *(a1 + 112);
    *&v19.f64[0] = vcvt_f32_f64(v19);
    v20 = *(a1 + 128);
    *v21.i8 = vzip2_s32(v16, *&v19.f64[0]);
    v21.i64[1] = v21.i64[0];
    v22 = vuzp1q_s32(vcvt_hight_f32_f64(v16, v17), v19);
    v24.f32[1] = v18;
    v23 = vzip2q_s32(v21, vdupq_lane_s32(vcvt_f32_f64(v17), 1));
    v24.f32[2] = v20;
    v44 = xmmword_29577B580;
    v45 = xmmword_29577B590;
    v46 = xmmword_29577A870;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    do
    {
      *(&v47 + v15) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, COERCE_FLOAT(*(&v44 + v15))), v23, *(&v44 + v15), 1), v24, *(&v44 + v15), 2);
      v15 += 16;
    }

    while (v15 != 48);
    v25 = 0;
    v44 = v47;
    v45 = v48;
    v46 = v49;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    do
    {
      *(&v47 + v25) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_29577B580, COERCE_FLOAT(*(&v44 + v25))), xmmword_29577B590, *(&v44 + v25), 1), xmmword_29577A870, *(&v44 + v25), 2);
      v25 += 16;
    }

    while (v25 != 48);
    v26 = v47;
    v27 = v48;
    v28 = v49;
    *(a4 + 8) = DWORD2(v47);
    *(a4 + 24) = DWORD2(v27);
    *a4 = v26;
    *(a4 + 16) = v27;
    *(a4 + 40) = DWORD2(v28);
    *(a4 + 32) = v28;
  }

  if (a5)
  {
    v29 = *(a1 + 72);
    v30 = *(a1 + 104);
    v31 = *(a1 + 136);
    *a5 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(xmmword_29577B580, v29), xmmword_29577B590, v30), xmmword_29577A870, v31);
  }

  if (a6)
  {
    v32 = *a1;
    if (v32 > 0.0)
    {
      v33 = *(a1 + 32);
      v34 = *(a1 + 16);
      *&v35 = -v34 / v32;
      LODWORD(v36) = 0;
      *(&v36 + 1) = 1.0 / v32;
      *(&v35 + 1) = -v33 / v32;
      *(a6 + 8) = 0;
      *a6 = COERCE_UNSIGNED_INT(1.0 / v32);
      *(a6 + 24) = 0;
      *(a6 + 16) = v36;
      *(a6 + 40) = 1065353216;
      *(a6 + 32) = v35;
      goto LABEL_17;
    }

    sub_295771934();
    return 4294954516;
  }

LABEL_17:
  if (!a7)
  {
    return 0;
  }

  v37 = *(a1 + 8);
  if (v37 <= 0.0)
  {
    sub_2957719E0();
    return 4294954516;
  }

  v38 = 0;
  v39 = *(a1 + 40);
  v40 = *(a1 + 24);
  *&v41 = -v40 / v37;
  LODWORD(v42) = 0;
  *(&v42 + 1) = 1.0 / v37;
  *(&v41 + 1) = -v39 / v37;
  *(a7 + 40) = 1065353216;
  *(a7 + 8) = 0;
  *a7 = COERCE_UNSIGNED_INT(1.0 / v37);
  *(a7 + 24) = 0;
  *(a7 + 16) = v42;
  *(a7 + 32) = v41;
  return v38;
}

double sub_2957623E4@<D0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v4 = 0;
  v5 = a1[9];
  v85 = a1[8];
  v86 = v5;
  v87 = a1[10];
  v88 = *(a1 + 22);
  v6 = a1[5];
  v81 = a1[4];
  v82 = v6;
  v7 = a1[7];
  v83 = a1[6];
  v84 = v7;
  v8 = a1[1];
  v77 = *a1;
  v78 = v8;
  v9 = &v77;
  v10 = a1[3];
  v11 = 1;
  v79 = a1[2];
  v80 = v10;
  do
  {
    v12 = v11;
    v13 = *(&v78 + v4);
    *v9 = *v9 * a4;
    *(&v78 + v4) = v13 * a4;
    *(&v79 + v4) = *(&v79 + v4) * a4;
    v9 = &v77 + 1;
    v4 = 1;
    v11 = 0;
  }

  while ((v12 & 1) != 0);
  v14 = 0;
  v15 = &v65;
  v16 = v84;
  a1[6] = v83;
  a1[7] = v16;
  v17 = v82;
  a1[4] = v81;
  a1[5] = v17;
  *(a1 + 22) = v88;
  v18 = v87;
  a1[9] = v86;
  a1[10] = v18;
  a1[8] = v85;
  v19 = v78;
  *a1 = v77;
  a1[1] = v19;
  v20 = v80;
  a1[2] = v79;
  a1[3] = v20;
  v21 = 1.0 - a4;
  v22 = a2[9];
  v73 = a2[8];
  v74 = v22;
  v75 = a2[10];
  v76 = *(a2 + 22);
  v23 = a2[5];
  v69 = a2[4];
  v70 = v23;
  v24 = a2[7];
  v71 = a2[6];
  v72 = v24;
  v25 = a2[1];
  v65 = *a2;
  v66 = v25;
  v26 = a2[3];
  v27 = 1;
  v67 = a2[2];
  v68 = v26;
  do
  {
    v28 = v27;
    v29 = *(&v66 + v14);
    *v15 = v21 * *v15;
    *(&v66 + v14) = v21 * v29;
    *(&v67 + v14) = v21 * *(&v67 + v14);
    v15 = &v65 + 1;
    v14 = 1;
    v27 = 0;
  }

  while ((v28 & 1) != 0);
  v30 = 0;
  v31 = v74;
  a2[8] = v73;
  a2[9] = v31;
  a2[10] = v75;
  *(a2 + 22) = v76;
  v32 = v70;
  a2[4] = v69;
  a2[5] = v32;
  v33 = v72;
  a2[6] = v71;
  a2[7] = v33;
  v34 = v66;
  *a2 = v65;
  a2[1] = v34;
  v35 = v68;
  a2[2] = v67;
  a2[3] = v35;
  v36 = a1[9];
  v61 = a1[8];
  v62 = v36;
  v63 = a1[10];
  v64 = *(a1 + 22);
  v37 = a1[5];
  v57 = a1[4];
  v58 = v37;
  v38 = a1[7];
  v59 = a1[6];
  v60 = v38;
  v39 = a1[1];
  v53 = *a1;
  v54 = v39;
  v40 = a1[2];
  v41 = a1[3];
  v42 = &v53;
  v43 = &v65;
  v44 = 1;
  v55 = v40;
  v56 = v41;
  do
  {
    *(&v54 + v30) = *(&v66 + v30) + *(&v54 + v30);
    v45 = v44;
    v46 = *v43;
    *(&v55 + v30) = *(&v67 + v30) + *(&v55 + v30);
    *v42 = v46 + *v42;
    v43 = &v65 + 1;
    v42 = &v53 + 1;
    v30 = 1;
    v44 = 0;
  }

  while ((v45 & 1) != 0);
  v47 = v62;
  *(a3 + 128) = v61;
  *(a3 + 144) = v47;
  *(a3 + 160) = v63;
  *(a3 + 176) = v64;
  v48 = v58;
  *(a3 + 64) = v57;
  *(a3 + 80) = v48;
  v49 = v60;
  *(a3 + 96) = v59;
  *(a3 + 112) = v49;
  v50 = v54;
  *a3 = v53;
  *(a3 + 16) = v50;
  result = *&v55;
  v52 = v56;
  *(a3 + 32) = v55;
  *(a3 + 48) = v52;
  return result;
}

void *sub_29576267C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char __src)
{

  return memcpy(v40, &__src, 0xB8uLL);
}

void *sub_2957626D8(void *a1)
{

  return memcpy(a1, v1, 0xB8uLL);
}

void *sub_2957626F0()
{

  return malloc_type_malloc(v0, v1);
}

double sub_29576283C(void *a1, uint64_t a2, double *a3)
{
  if (a1 && a2 && a3)
  {
    v5 = MEMORY[0x29EDBA0F8];
    v6 = a1;
    objc_msgSend_stringWithUTF8String_(v5, v7, a2, v8, v9, v10, v11, v12, v13);
    Float32IfPresent = FigCFDictionaryGetFloat32IfPresent();

    if (Float32IfPresent)
    {
      result = 0.0;
      *a3 = 0.0;
    }
  }

  return result;
}

float sub_2957628D8(void *a1, uint64_t a2, _DWORD *a3)
{
  if (a1 && a2 && a3)
  {
    v5 = MEMORY[0x29EDBA0F8];
    v6 = a1;
    objc_msgSend_stringWithUTF8String_(v5, v7, a2, v8, v9, v10, v11, v12, v13);
    Float32IfPresent = FigCFDictionaryGetFloat32IfPresent();

    if (Float32IfPresent)
    {
      result = 0.0;
      *a3 = 0;
    }
  }

  return result;
}

double *sub_2957629E8@<X0>(double *result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 248) = 0u;
  *(a3 + 232) = 0u;
  *(a3 + 216) = 0u;
  *(a3 + 200) = 0u;
  *(a3 + 184) = 0u;
  *(a3 + 168) = 0u;
  *(a3 + 152) = 0u;
  *(a3 + 136) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 72) = 0u;
  v4 = *result;
  v3 = result[1];
  v6 = result[2];
  v5 = result[3];
  v8 = result[4];
  v7 = result[5];
  v9 = 1.0 / *result;
  v10 = 1.0 / v3;
  v11 = v5 * (1.0 / v3);
  v12 = v7 * (1.0 / v3);
  v13 = result[6];
  v14 = result[7];
  v15 = result[10];
  v16 = result[11];
  v17 = result[14];
  v18 = result[15];
  v19 = result[8];
  v20 = result[9];
  v21 = result[12];
  v22 = result[13];
  v24 = result[16];
  v23 = result[17];
  v25 = -(v23 * v15 - v22 * v17);
  v26 = -(v23 * v16 - v22 * v18);
  v27 = -(v23 * v21 - v22 * v24);
  v28 = -(v20 * v17 - v23 * v13);
  v29 = -(v20 * v18 - v23 * v14);
  v30 = -(v20 * v24 - v23 * v19);
  v31 = -(v22 * v13 - v20 * v15);
  v32 = -(v22 * v14 - v20 * v16);
  v33 = -(v9 * v25);
  v34 = -(v9 * v28);
  v35 = -(v9 * v26);
  v36 = -(v9 * v29);
  v37 = v27 + v26 * (v8 * v9) + v25 * (v6 * v9);
  v38 = v30 + v29 * (v8 * v9) + v28 * (v6 * v9);
  *a3 = -(1.0 / v3 * v33);
  *(a3 + 8) = -(1.0 / v3 * v35);
  *(a3 + 16) = -(1.0 / v3 * v37);
  *(a3 + 24) = -(1.0 / v3 * v34);
  *(a3 + 32) = -(1.0 / v3 * v36);
  *(a3 + 40) = -(1.0 / v3 * v38);
  *(a3 + 48) = v33 * v11 - (v31 * v9 - v34 * v12);
  *(a3 + 56) = v35 * v11 - (v32 * v9 - v36 * v12);
  *(a3 + 64) = v32 * (v8 * v9) - (v22 * v19 - v20 * v21) + v31 * (v6 * v9) + v38 * v12 + v37 * v11;
  if (a2)
  {
    v39 = v25 * -v10;
    v40 = v26 * -v10;
    v41 = v28 * -v10;
    v42 = v29 * -v10;
    v43 = v31 + v28 * v12 + v25 * v11;
    v44 = v32 + v29 * v12 + v26 * v11;
    v45 = 1.0 / (v4 * v4);
    v46 = -(v6 * v45);
    v47 = -(v8 * v45);
    v48 = 1.0 / (v3 * v3);
    v49 = -(v5 * v48);
    v50 = -(v7 * v48);
    *(a3 + 72) = v39 * v9;
    *(a3 + 80) = v41 * v9;
    *(a3 + 120) = v39 * v45;
    *(a3 + 128) = v40 * v45;
    *(a3 + 136) = v40 * v47 + v39 * v46;
    *(a3 + 144) = v41 * v45;
    *(a3 + 152) = v42 * v45;
    *(a3 + 160) = v42 * v47 + v41 * v46;
    *(a3 + 168) = v43 * v45;
    *(a3 + 176) = v44 * v45;
    *(a3 + 88) = v43 * v9;
    *(a3 + 96) = v33 * v10;
    *(a3 + 104) = v35 * v10;
    *(a3 + 112) = v37 * v10;
    *(a3 + 184) = v44 * v47 + v43 * v46;
    *(a3 + 192) = v33 * v48;
    *(a3 + 200) = v35 * v48;
    *(a3 + 208) = v37 * v48;
    *(a3 + 216) = v34 * v48;
    *(a3 + 224) = v36 * v48;
    *(a3 + 232) = v38 * v48;
    *(a3 + 240) = v34 * v50 + v33 * v49;
    *(a3 + 248) = v36 * v50 + v35 * v49;
    *(a3 + 256) = v38 * v50 + v37 * v49;
  }

  return result;
}

const double *sub_295762C2C(const double *result, const double *a2, unsigned int a3, float64x2_t *a4, float64x2_t *a5)
{
  if (a3 >= 1)
  {
    v5.f64[0] = a4[4].f64[1];
    v6.f64[0] = a4[6].f64[1];
    v7 = 1.0 / a4->f64[0];
    v8 = -v7;
    v9 = a4[1].f64[0] * v7;
    _D7 = a4[2].f64[0] * v7;
    v11 = 1.0 / a4->f64[1];
    v12 = -v11;
    v13 = a4[1].f64[1] * v11;
    _D16 = a4[2].f64[1] * v11;
    v15 = a4[3];
    v16 = a4[5];
    v17 = a4[7];
    v18 = a4[8];
    v19.f64[1] = a4[3].f64[1];
    v20 = vmulq_laneq_f64(v15, v18, 1);
    v15.f64[1] = v6.f64[0];
    v19.f64[0] = v6.f64[0];
    _Q20 = vmlsq_f64(vmulq_n_f64(v16, v5.f64[0]), v15, v19);
    v22 = vmulq_n_f64(_Q20, v8);
    v6.f64[1] = a4[4].f64[0];
    v23 = vmlsq_lane_f64(v20, v17, v5.f64[0], 0);
    v5.f64[1] = a4[6].f64[0];
    v24 = vmulq_f64(v18, v5);
    *&v25.f64[0] = vdupq_laneq_s64(v18, 1).u64[0];
    v25.f64[1] = a4[5].f64[1];
    v16.f64[1] = a4[8].f64[1];
    v26 = vmlsq_f64(vmulq_n_f64(v17, v6.f64[0]), v16, v25);
    v27 = vmulq_n_f64(v26, v8);
    v28 = vmulq_n_f64(v23, v8);
    _Q2 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_f64(vnegq_f64(vextq_s8(v24, v24, 8uLL)), v18, v6), vzip2q_s64(v26, v23), _D7), vzip1q_s64(v26, v23), v9);
    v30 = vmlaq_n_f64(vmlaq_n_f64(v22, v28, _D16), v27, v13);
    __asm
    {
      FMLA            D17, D7, V20.D[1]
      FMLA            D3, D16, V2.D[1]
    }

    v37 = _D3 + v13 * _Q2.f64[0];
    if (a3 == 1)
    {
      v38 = 0;
LABEL_4:
      v39 = vzip1q_s64(v27, v28);
      v40 = vzip2q_s64(v27, v28);
      v41 = &a2[2 * v38];
      v42 = &result[2 * v38];
      v43 = &a5->f64[v38];
      v44 = a3 - v38;
      do
      {
        v45 = *v42++;
        v46 = v45;
        v47 = *v41++;
        v48 = vmulq_n_f64(vmlaq_laneq_f64(vmlaq_n_f64(_Q2, v39, v46.f64[0]), v40, v46, 1), v12);
        v46.f64[0] = vaddvq_f64(vmlaq_f64(vmulq_f64(v48, v47), v46, v30));
        *v43++ = sqrt((v37 + v46.f64[0]) * (v37 + v46.f64[0]) / vaddvq_f64(vmulq_f64(v48, v48)) + 0.00155346992);
        --v44;
      }

      while (v44);
      return result;
    }

    v38 = 0;
    v49 = &a5->f64[a3];
    v51 = &a2[2 * a3] > a5 && v49 > a2;
    if (v49 > result && &result[2 * a3] > a5)
    {
      goto LABEL_4;
    }

    if (v51)
    {
      goto LABEL_4;
    }

    v53 = vdupq_lane_s64(*&_Q2.f64[0], 0);
    v38 = a3 & 0x7FFFFFFE;
    v54 = vdupq_laneq_s64(_Q2, 1);
    v55 = vdupq_lane_s64(*&v37, 0);
    v56 = vdupq_n_s64(0x3F5973B9A04DB73CuLL);
    v57 = v38;
    v58 = a5;
    v59 = result;
    v60 = a2;
    do
    {
      v64 = vld2q_f64(v59);
      v59 += 4;
      v65 = vld2q_f64(v60);
      v60 += 4;
      v61 = vmulq_n_f64(vmlaq_laneq_f64(vmlaq_n_f64(v53, v64.val[0], v27.f64[0]), v64.val[1], v27, 1), v12);
      v62 = vmulq_n_f64(vmlaq_laneq_f64(vmlaq_n_f64(v54, v64.val[0], v28.f64[0]), v64.val[1], v28, 1), v12);
      v63 = vmlaq_f64(vmlaq_f64(vmlaq_laneq_f64(vmlaq_n_f64(v55, v64.val[0], v30.f64[0]), v64.val[1], v30, 1), v61, v65.val[0]), v62, v65.val[1]);
      *v58++ = vsqrtq_f64(vaddq_f64(vdivq_f64(vmulq_f64(v63, v63), vmlaq_f64(vmulq_f64(v61, v61), v62, v62)), v56));
      v57 -= 2;
    }

    while (v57);
    if (v38 != a3)
    {
      goto LABEL_4;
    }
  }

  return result;
}

double sub_295762E50(uint64_t a1, uint64_t a2, int a3, float64x2_t *a4, double *a5)
{
  if (a3 < 1)
  {
    result = 0.0 / a3;
    *a5 = result;
    return result;
  }

  v5.f64[0] = a4[4].f64[1];
  v6.f64[0] = a4[6].f64[1];
  v7 = 1.0 / a4->f64[0];
  v8 = -v7;
  v9 = a4[1].f64[0] * v7;
  _D7 = a4[2].f64[0] * v7;
  v11 = 1.0 / a4->f64[1];
  v12 = -v11;
  v13 = a4[1].f64[1] * v11;
  _D16 = a4[2].f64[1] * v11;
  v15 = a4[3];
  v16 = a4[5];
  v17 = a4[7];
  v18 = a4[8];
  v19.f64[1] = a4[3].f64[1];
  v20 = vmulq_laneq_f64(v15, v18, 1);
  v15.f64[1] = v6.f64[0];
  v19.f64[0] = v6.f64[0];
  _Q20 = vmlsq_f64(vmulq_n_f64(v16, v5.f64[0]), v15, v19);
  v22 = vmulq_n_f64(_Q20, v8);
  v6.f64[1] = a4[4].f64[0];
  v23 = vmlsq_lane_f64(v20, v17, v5.f64[0], 0);
  v5.f64[1] = a4[6].f64[0];
  v24 = vmulq_f64(v18, v5);
  *&v25.f64[0] = vdupq_laneq_s64(v18, 1).u64[0];
  v25.f64[1] = a4[5].f64[1];
  v16.f64[1] = a4[8].f64[1];
  v26 = vmlsq_f64(vmulq_n_f64(v17, v6.f64[0]), v16, v25);
  v27 = vmulq_n_f64(v26, v8);
  v28 = vmulq_n_f64(v23, v8);
  _Q2 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_f64(vnegq_f64(vextq_s8(v24, v24, 8uLL)), v18, v6), vzip2q_s64(v26, v23), _D7), vzip1q_s64(v26, v23), v9);
  v30 = vmlaq_n_f64(vmlaq_n_f64(v22, v28, _D16), v27, v13);
  __asm
  {
    FMLA            D17, D7, V20.D[1]
    FMLA            D3, D16, V2.D[1]
  }

  v37 = _D3 + v13 * _Q2.f64[0];
  if (a3 > 3)
  {
    v38 = a3 & 0x7FFFFFFC;
    v41 = vdupq_lane_s64(*&_Q2.f64[0], 0);
    v42 = vdupq_laneq_s64(_Q2, 1);
    v43 = (a1 + 32);
    v44 = vdupq_lane_s64(*&v37, 0);
    v45 = (a2 + 32);
    v46 = 0uLL;
    v47 = vdupq_n_s64(0x3F5973B9A04DB73CuLL);
    v48 = v38;
    v49 = 0uLL;
    do
    {
      v67 = vld2q_f64(v43);
      v50 = v43 - 4;
      v68 = vld2q_f64(v50);
      v69 = vld2q_f64(v45);
      v51 = v45 - 4;
      v70 = vld2q_f64(v51);
      v52 = vmulq_n_f64(vmlaq_laneq_f64(vmlaq_n_f64(v41, v67.val[0], v27.f64[0]), v67.val[1], v27, 1), v12);
      v53 = vmulq_n_f64(vmlaq_laneq_f64(vmlaq_n_f64(v41, v68.val[0], v27.f64[0]), v68.val[1], v27, 1), v12);
      v54 = vmulq_n_f64(vmlaq_laneq_f64(vmlaq_n_f64(v42, v67.val[0], v28.f64[0]), v67.val[1], v28, 1), v12);
      v55 = vmulq_n_f64(vmlaq_laneq_f64(vmlaq_n_f64(v42, v68.val[0], v28.f64[0]), v68.val[1], v28, 1), v12);
      v56 = vmlaq_f64(vmlaq_f64(vmlaq_laneq_f64(vmlaq_n_f64(v44, v68.val[0], v30.f64[0]), v68.val[1], v30, 1), v53, v70.val[0]), v55, v70.val[1]);
      v57 = vmlaq_f64(vmlaq_f64(vmlaq_laneq_f64(vmlaq_n_f64(v44, v67.val[0], v30.f64[0]), v67.val[1], v30, 1), v52, v69.val[0]), v54, v69.val[1]);
      v46 = vaddq_f64(vsqrtq_f64(vaddq_f64(vdivq_f64(vmulq_f64(v56, v56), vmlaq_f64(vmulq_f64(v53, v53), v55, v55)), v47)), v46);
      v49 = vaddq_f64(vsqrtq_f64(vaddq_f64(vdivq_f64(vmulq_f64(v57, v57), vmlaq_f64(vmulq_f64(v52, v52), v54, v54)), v47)), v49);
      v45 += 8;
      v43 += 8;
      v48 -= 4;
    }

    while (v48);
    v39 = vaddvq_f64(vaddq_f64(v49, v46));
    if (v38 == a3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v38 = 0;
    v39 = 0.0;
  }

  v58 = vzip1q_s64(v27, v28);
  v59 = vzip2q_s64(v27, v28);
  v60 = (a2 + 16 * v38);
  v61 = (a1 + 16 * v38);
  v62 = a3 - v38;
  do
  {
    v63 = *v61++;
    v64 = v63;
    v65 = vmulq_n_f64(vmlaq_laneq_f64(vmlaq_n_f64(_Q2, v58, v63.f64[0]), v59, v63, 1), v12);
    v66 = *v60++;
    v64.f64[0] = vaddvq_f64(vmlaq_f64(vmulq_f64(v65, v66), v64, v30));
    v39 = sqrt((v37 + v64.f64[0]) * (v37 + v64.f64[0]) / vaddvq_f64(vmulq_f64(v65, v65)) + 0.00155346992) + v39;
    --v62;
  }

  while (v62);
LABEL_10:
  result = v39 / a3;
  *a5 = result;
  return result;
}

double sub_2957630E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double *a5, double *a6)
{
  v186 = 0;
  v185 = 0u;
  v184 = 0u;
  v183 = 0u;
  v182 = 0u;
  v181 = 0u;
  v180 = 0u;
  v179 = 0u;
  v178 = 0u;
  v177 = 0u;
  v176 = 0u;
  memset(v175, 0, sizeof(v175));
  v174 = 0u;
  v173 = 0u;
  v171 = 0u;
  v172 = 0u;
  v14 = *(a4 + 144);
  v169[8] = *(a4 + 128);
  v169[9] = v14;
  v169[10] = *(a4 + 160);
  v170 = *(a4 + 176);
  v15 = *(a4 + 80);
  v169[4] = *(a4 + 64);
  v169[5] = v15;
  v16 = *(a4 + 112);
  v169[6] = *(a4 + 96);
  v169[7] = v16;
  v17 = *(a4 + 16);
  v169[0] = *a4;
  v169[1] = v17;
  v18 = *(a4 + 48);
  v169[2] = *(a4 + 32);
  v169[3] = v18;
  sub_2957629E8(v169, 1, &v171);
  if (a3 < 1)
  {
    v40 = 0.0;
    v39 = 0.0;
    v38 = 0.0;
    v37 = 0.0;
    v36 = 0.0;
    goto LABEL_10;
  }

  v24 = *(&v171 + 1);
  *&v25.f64[0] = v171;
  v26 = *&v172;
  v27.f64[0] = *(&v173 + 1);
  v28 = *&v173;
  v29 = v174;
  *&v22 = v175[1].i64[1];
  *&_Q14 = *(&v176 + 1);
  *&v6 = v176;
  *&v20 = *(&v177 + 1);
  *&v19 = v177;
  *&_Q23 = v178;
  *&v23 = v179;
  *&v30.f64[0] = v182;
  v32.f64[0] = *(&v183 + 1);
  v31 = *&v183;
  v33.f64[0] = *(&v184 + 1);
  v34 = *&v184;
  *&v8 = v186;
  if (a3 <= 3)
  {
    v35 = 0;
    v36 = 0.0;
    v37 = 0.0;
    v38 = 0.0;
    v39 = 0.0;
    v40 = 0.0;
LABEL_8:
    v87.f64[0] = *(&v172 + 1);
    v87.f64[1] = v24;
    v166 = v87;
    v25.f64[1] = v28;
    v27.f64[1] = v26;
    v32.f64[1] = *(&v182 + 1);
    v168 = vextq_s8(*(v175 + 8), *(v175 + 8), 8uLL);
    v30.f64[1] = v34;
    v88 = (a2 + 16 * v35);
    v33.f64[1] = v31;
    v89 = (a1 + 16 * v35);
    v90 = a3 - v35;
    do
    {
      v91 = *v88++;
      _Q5 = v91;
      v93 = vmulq_f64(*(v175 + 8), v91);
      v94 = *v89++;
      _V3.D[1] = v94.f64[1];
      v96 = vmulq_f64(v25, v94);
      _Q16 = vaddq_f64(vmlaq_f64(vextq_s8(v96, v96, 8uLL), v166, v94), v27);
      v98 = *v175[0].i64 + vaddvq_f64(vmlaq_f64(vmulq_f64(vextq_s8(_Q16, _Q16, 8uLL), _Q5), v29, v94));
      _D20 = _Q16.f64[1];
      v100 = v27;
      v101 = v19;
      __asm { FMLA            D21, D20, V16.D[1] }

      v107 = v98 * v98 / _D21;
      v93.f64[0] = vaddvq_f64(v93) + *&v22;
      v108 = v20;
      __asm { FMLA            D22, D23, V3.D[1] }

      v110 = v8;
      v111 = v22;
      v112 = _Q23;
      v113 = v23;
      v114 = _Q14;
      v115 = v6;
      v116 = v29;
      _D10 = *(&v179 + 1);
      __asm { FMLA            D23, D10, V3.D[1] }

      _D23 = _D23 + *&v180;
      v120 = v30;
      v121 = vmulq_f64(v30, v94);
      v122 = vaddq_f64(vmlaq_f64(vextq_s8(v121, v121, 8uLL), v32, v94), v33);
      v123 = v33;
      v124 = v32;
      v125 = v98 / _D21;
      v93.f64[0] = v93.f64[0] - vaddvq_f64(vmulq_f64(v168, _Q16)) * v125;
      v126 = vmulq_f64(vextq_s8(v122, v122, 8uLL), _Q5);
      __asm { FMLA            D25, D23, V5.D[1] }

      _Q5.f64[0] = vmuld_lane_f64(_D22 + *(&v178 + 1), _Q16, 1);
      _D22 = v181;
      __asm { FMLA            D25, D22, V3.D[1] }

      v130 = _D25 + *(&v181 + 1);
      v32 = v124;
      v33 = v123;
      _Q5.f64[0] = v130 - (_Q5.f64[0] + _D23 * _Q16.f64[0]) * v125;
      v131 = vmulq_f64(v122, _Q16);
      v30 = v120;
      v29 = v116;
      v6 = v115;
      _Q14 = v114;
      v23 = v113;
      __asm { FMLA            D22, D14, V3.D[1] }

      _Q23 = v112;
      v22 = v111;
      v8 = v110;
      v133 = vaddvq_f64(v131);
      v131.f64[0] = vaddvq_f64(vmlaq_f64(v126, v185, v94));
      v19 = v101;
      v27 = v100;
      v134 = *&v110 + v131.f64[0] - v133 * v125;
      v131.f64[0] = sqrt(v107 + 0.00155346992);
      v135 = v125 / v131.f64[0];
      v37 = v37 + v135 * v93.f64[0];
      v93.f64[0] = _D22 + *&v19;
      v20 = v108;
      v38 = v38 + v93.f64[0] * v135;
      v39 = v39 + _Q5.f64[0] * v135;
      v40 = v40 + v134 * v135;
      v36 = v131.f64[0] + v36;
      --v90;
    }

    while (v90);
    goto LABEL_10;
  }

  v141 = v22;
  v151 = vdupq_lane_s64(*(&v173 + 1), 0);
  v152 = vdupq_lane_s64(v172, 0);
  v41 = 0uLL;
  v42 = 0uLL;
  v140 = v19;
  v149 = vdupq_lane_s64(v177, 0);
  v150 = vdupq_lane_s64(v175[0].i64[0], 0);
  v43 = 0uLL;
  v147 = vdupq_lane_s64(v180, 0);
  v148 = vdupq_lane_s64(*(&v178 + 1), 0);
  v145 = vdupq_lane_s64(*(&v184 + 1), 0);
  v146 = vdupq_lane_s64(v183, 0);
  v143 = vdupq_lane_s64(*(&v181 + 1), 0);
  v144 = vdupq_lane_s64(v175[1].i64[1], 0);
  v139 = v8;
  v142 = vdupq_lane_s64(v186, 0);
  v44 = 0uLL;
  v35 = a3 & 0x7FFFFFFC;
  v45 = (a1 + 32);
  v46 = (a2 + 32);
  v47 = v35;
  v155 = v20;
  v156 = v23;
  v48 = 0uLL;
  v49 = 0uLL;
  v154 = _Q23;
  v50 = 0uLL;
  v51 = 0uLL;
  v52 = 0uLL;
  v53 = 0uLL;
  v153 = v6;
  do
  {
    v160 = v49;
    v161 = v52;
    v162 = v50;
    v167 = v48;
    v163 = v44;
    v164 = v43;
    v165 = v42;
    v188 = vld2q_f64(v45);
    v54 = v45 - 4;
    v187 = vld2q_f64(v54);
    v55 = v46 - 4;
    v189 = vld2q_f64(v55);
    v190 = vld2q_f64(v46);
    v56 = vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v188.val[0], v25.f64[0]), v188.val[1], v24), v152);
    v57 = vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v187.val[0], v25.f64[0]), v187.val[1], v24), v152);
    v58 = vmlaq_n_f64(vmulq_n_f64(v187.val[0], *(&v172 + 1)), v187.val[1], v28);
    v59 = vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v188.val[0], *(&v172 + 1)), v188.val[1], v28), v151);
    v60 = vaddq_f64(v58, v151);
    v61 = vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v187.val[0], *&v156), v187.val[1], *(&v179 + 1)), v147);
    v158 = vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v187.val[0], *&v155), v187.val[1], *&v154), v148);
    v159 = vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v188.val[0], *&v156), v188.val[1], *(&v179 + 1)), v147);
    v62 = vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v187.val[0], *&v182), v187.val[1], *(&v182 + 1)), v146);
    v157 = vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v188.val[0], *&v182), v188.val[1], *(&v182 + 1)), v146);
    v63 = vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v187.val[0], *(&v183 + 1)), v187.val[1], v34), v145);
    v25 = vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v188.val[0], *(&v183 + 1)), v188.val[1], v34), v145);
    v64 = vmlaq_f64(vmlaq_n_f64(vmulq_f64(v56, v190.val[0]), v188.val[0], v174.f64[0]), v59, v190.val[1]);
    v65 = vmlaq_laneq_f64(vmulq_n_f64(v189.val[0], *&v175[0].i64[1]), v189.val[1], *(v175 + 8), 1);
    v66 = vmlaq_laneq_f64(vmulq_n_f64(v190.val[0], *&v175[0].i64[1]), v190.val[1], *(v175 + 8), 1);
    v67 = vmlaq_f64(vmlaq_n_f64(vmulq_f64(v57, v189.val[0]), v187.val[0], v174.f64[0]), v60, v189.val[1]);
    v68 = vmlaq_f64(vmlaq_n_f64(vmulq_f64(v158, v189.val[0]), v187.val[0], *(&v180 + 1)), v61, v189.val[1]);
    v69 = vmlaq_f64(vmlaq_n_f64(vmulq_f64(v62, v189.val[0]), v187.val[0], v185.f64[0]), v63, v189.val[1]);
    v70 = vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v188.val[0], *&v155), v188.val[1], *&v154), v148);
    v189.val[1] = vmlaq_f64(vmlaq_n_f64(vmulq_f64(v70, v190.val[0]), v188.val[0], *(&v180 + 1)), v159, v190.val[1]);
    v189.val[0] = vmlaq_f64(vmlaq_n_f64(vmulq_f64(v157, v190.val[0]), v188.val[0], v185.f64[0]), v25, v190.val[1]);
    v190.val[0] = vmlaq_n_f64(vmulq_n_f64(v187.val[0], *&v153), v187.val[1], *(&v176 + 1));
    v71 = vmlaq_n_f64(v68, v187.val[1], *&v181);
    v72 = vmlaq_laneq_f64(v69, v187.val[1], v185, 1);
    v73 = vmlaq_laneq_f64(v64, v188.val[1], v174, 1);
    v187.val[0] = vmlaq_n_f64(vmulq_n_f64(v188.val[0], *&v153), v188.val[1], *(&v176 + 1));
    v187.val[1] = vaddq_f64(vmlaq_laneq_f64(v67, v187.val[1], v174, 1), v150);
    v189.val[1] = vmlaq_n_f64(v189.val[1], v188.val[1], *&v181);
    v189.val[0] = vmlaq_laneq_f64(v189.val[0], v188.val[1], v185, 1);
    v74 = vmlaq_f64(vmulq_f64(v57, v57), v60, v60);
    v188.val[0] = vdivq_f64(vmulq_f64(v187.val[1], v187.val[1]), v74);
    v187.val[1] = vdivq_f64(v187.val[1], v74);
    v188.val[1] = vmlsq_f64(vaddq_f64(v65, v144), vmlaq_laneq_f64(vmulq_n_f64(v57, *&v175[0].i64[1]), v60, *(v175 + 8), 1), v187.val[1]);
    v75 = vmlsq_f64(vaddq_f64(v71, v143), vmlaq_f64(vmulq_f64(v158, v57), v61, v60), v187.val[1]);
    v76 = vmlsq_f64(vaddq_f64(v72, v142), vmlaq_f64(vmulq_f64(v62, v57), v63, v60), v187.val[1]);
    v77 = vdupq_n_s64(0x3F5973B9A04DB73CuLL);
    v78 = vsqrtq_f64(vaddq_f64(v188.val[0], v77));
    v187.val[1] = vdivq_f64(v187.val[1], v78);
    v43 = vmlaq_f64(v164, v187.val[1], v188.val[1]);
    v48 = vmlaq_f64(v167, vaddq_f64(v190.val[0], v149), v187.val[1]);
    v50 = vmlaq_f64(v162, v75, v187.val[1]);
    v79 = vaddq_f64(v73, v150);
    v52 = vmlaq_f64(v161, v76, v187.val[1]);
    v187.val[1] = vmlaq_f64(vmulq_f64(v56, v56), v59, v59);
    v80 = vdivq_f64(vmulq_f64(v79, v79), v187.val[1]);
    v187.val[1] = vdivq_f64(v79, v187.val[1]);
    v81 = vmlaq_f64(vmulq_f64(v70, v56), v159, v59);
    v82 = vmlaq_f64(vmulq_f64(v157, v56), v25, v59);
    v83 = vmlsq_f64(vaddq_f64(v66, v144), vmlaq_laneq_f64(vmulq_n_f64(v56, *&v175[0].i64[1]), v59, *(v175 + 8), 1), v187.val[1]);
    v84 = vmlsq_f64(vaddq_f64(v189.val[1], v143), v81, v187.val[1]);
    v85 = vmlsq_f64(vaddq_f64(v189.val[0], v142), v82, v187.val[1]);
    v86 = vsqrtq_f64(vaddq_f64(v80, v77));
    v187.val[1] = vdivq_f64(v187.val[1], v86);
    v44 = vmlaq_f64(v163, v187.val[1], v83);
    v28 = *&v173;
    *&v25.f64[0] = v171;
    v49 = vmlaq_f64(v160, vaddq_f64(v187.val[0], v149), v187.val[1]);
    v51 = vmlaq_f64(v51, v84, v187.val[1]);
    v53 = vmlaq_f64(v53, v85, v187.val[1]);
    v41 = vaddq_f64(v78, v41);
    v34 = *&v184;
    v24 = *(&v171 + 1);
    v42 = vaddq_f64(v86, v165);
    v46 += 8;
    v45 += 8;
    v47 -= 4;
  }

  while (v47);
  v36 = vaddvq_f64(vaddq_f64(v42, v41));
  v37 = vaddvq_f64(vaddq_f64(v44, v43));
  v38 = vaddvq_f64(vaddq_f64(v49, v48));
  v39 = vaddvq_f64(vaddq_f64(v51, v50));
  v40 = vaddvq_f64(vaddq_f64(v53, v52));
  v22 = v141;
  v27.f64[0] = *(&v173 + 1);
  v29 = v174;
  v6 = v153;
  *&v30.f64[0] = v182;
  v19 = v140;
  _Q23 = v154;
  v20 = v155;
  v23 = v156;
  v32.f64[0] = *(&v183 + 1);
  v26 = *&v172;
  v8 = v139;
  v31 = *&v183;
  if (v35 != a3)
  {
    goto LABEL_8;
  }

LABEL_10:
  v136 = 1.0 / a3;
  *a5 = v36 * v136;
  *a6 = v37 * v136;
  a6[1] = v38 * v136;
  v137 = v39 * v136;
  result = v40 * v136;
  a6[2] = v137;
  a6[3] = result;
  return result;
}

void *sub_295763E40(void (*a1)(double *, uint64_t, double *, double *), void (*a2)(double *, uint64_t, double *), uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, double *a8, void *a9, uint64_t a10)
{
  v10 = a5;
  v137 = 0;
  v136 = 0;
  memset(v135, 0, sizeof(v135));
  v11 = &unk_29577B680;
  memset(&__src[2], 0, 48);
  if (a8)
  {
    v11 = a8;
  }

  memset(__src, 0, 32);
  if (a5 >= 11)
  {
    sub_295773560();
    goto LABEL_138;
  }

  if (a5 <= 0)
  {
    sub_295773508();
    goto LABEL_138;
  }

  v12 = *(v11 + 2);
  if (v12 >= 11)
  {
    sub_2957734B0();
    goto LABEL_138;
  }

  v113 = *(v11 + 2);
  if (v12 <= 0)
  {
    sub_295773458();
LABEL_138:
    v99 = 0;
    v100 = 0;
    v102 = 0.0;
    v22 = 0.0;
    result = memcpy(a9, __src, 8 * a5);
    if (a10)
    {
      goto LABEL_132;
    }

    return result;
  }

  v13 = a7;
  v15 = 0;
  v110 = *(v11 + 14);
  v118 = *(v11 + 18);
  v16 = v11[5];
  v108 = v11[6];
  v17 = v11[2];
  v18 = v11[3];
  v19 = a5;
  v20 = v11[4];
  v104 = v20;
  v105 = *v11;
  do
  {
    *(v135 + v15) = fmax(fmin(*(a4 + v15), *(a7 + v15)), *(a6 + v15));
    v15 += 8;
  }

  while (8 * a5 != v15);
  v138 = 0.0;
  v21 = v11[8];
  a1(v135, a3, &v138, v133);
  v22 = v138;
  __memcpy_chk();
  v103 = v113 - 1;
  v23 = vdupq_n_s64(v113 - 1);
  v24 = v113 + 1;
  v25 = vmovn_s64(vcgeq_u64(v23, xmmword_29577B630));
  if (v25.i8[0])
  {
    *v131 = v22;
    v26 = v24 & 0xFFFFFFFE;
    if ((v25.i8[4] & 1) == 0)
    {
LABEL_11:
      if (v26 == 2)
      {
        goto LABEL_37;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v26 = v24 & 0xFFFFFFFE;
    if ((v25.i8[4] & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *&v131[1] = v22;
  if (v26 == 2)
  {
    goto LABEL_37;
  }

LABEL_15:
  v27 = vmovn_s64(vcgtq_u64(v23, xmmword_29577B640));
  if (v27.i8[0])
  {
    *&v131[2] = v22;
    if ((v27.i8[4] & 1) == 0)
    {
LABEL_17:
      if (v26 == 4)
      {
        goto LABEL_37;
      }

      goto LABEL_21;
    }
  }

  else if ((v27.i8[4] & 1) == 0)
  {
    goto LABEL_17;
  }

  *v132 = v22;
  if (v26 == 4)
  {
    goto LABEL_37;
  }

LABEL_21:
  v28 = vmovn_s64(vcgtq_u64(v23, xmmword_29577B650));
  if ((v28.i8[0] & 1) == 0)
  {
    if ((v28.i8[4] & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_26:
    *&v132[2] = v22;
    if (v26 == 6)
    {
      goto LABEL_37;
    }

    goto LABEL_27;
  }

  *&v132[1] = v22;
  if (v28.i8[4])
  {
    goto LABEL_26;
  }

LABEL_23:
  if (v26 == 6)
  {
    goto LABEL_37;
  }

LABEL_27:
  v29 = vmovn_s64(vcgtq_u64(v23, xmmword_29577B660));
  if (v29.i8[0])
  {
    *&v132[3] = v22;
    if ((v29.i8[4] & 1) == 0)
    {
LABEL_29:
      if (v26 == 8)
      {
        goto LABEL_37;
      }

LABEL_33:
      v30 = vmovn_s64(vcgtq_u64(v23, xmmword_29577B670));
      if (v30.i8[0])
      {
        *&v132[5] = v22;
      }

      if (v30.i8[4])
      {
        *&v132[6] = v22;
      }

      goto LABEL_37;
    }
  }

  else if ((v29.i8[4] & 1) == 0)
  {
    goto LABEL_29;
  }

  *&v132[4] = v22;
  if (v26 != 8)
  {
    goto LABEL_33;
  }

LABEL_37:
  v102 = v22;
  if (v110 < 1)
  {
    v99 = 0;
    goto LABEL_131;
  }

  v114 = 0;
  v106 = v10 - 1;
  v111 = v106 & 0xFFFFFFFFFFFFFFFCLL;
  v107 = v13;
  do
  {
    v31 = 0;
    v130 = 0.0;
    do
    {
      v139[v31] = *(v135 + v31) - v133[v31];
      ++v31;
    }

    while (v19 != v31);
    for (i = 0; i != v19; ++i)
    {
      v139[i] = fmax(fmin(v139[i], *(v13 + 8 * i)), *(a6 + 8 * i));
    }

    for (j = 0; j != v19; ++j)
    {
      v139[j] = v139[j] - *(v135 + j);
    }

    for (k = 0; k != v19; ++k)
    {
      v139[k] = fabs(v139[k]);
    }

    v35 = v139[0];
    if (v10 != 1)
    {
      if (v10 < 5)
      {
        v36 = 1;
LABEL_54:
        v41 = v19 - v36;
        v42 = &v139[v36];
        do
        {
          v43 = *v42++;
          v35 = fmax(v43, v35);
          --v41;
        }

        while (v41);
        goto LABEL_56;
      }

      v37 = vdupq_lane_s64(*&v139[0], 0);
      v38 = v106 & 0xFFFFFFFFFFFFFFFCLL;
      v39 = &v140;
      v40 = v37;
      do
      {
        v37 = vmaxnmq_f64(v39[-1], v37);
        v40 = vmaxnmq_f64(*v39, v40);
        v39 += 2;
        v38 -= 4;
      }

      while (v38);
      v35 = vmaxnmvq_f64(vmaxnmq_f64(v37, v40));
      v36 = v111 | 1;
      if (v106 != v111)
      {
        goto LABEL_54;
      }
    }

LABEL_56:
    if (v35 <= v108)
    {
      v99 = v114;
      goto LABEL_131;
    }

    for (m = 0; m != v19; ++m)
    {
      *&v127[8 * m + 56] = v133[m] * v21;
    }

    for (n = 0; n != v19; ++n)
    {
      *&v127[8 * n + 56] = *(v135 + n) - *&v127[8 * n + 56];
    }

    for (ii = 0; ii != v19; ++ii)
    {
      *&v127[8 * ii + 56] = fmax(fmin(*&v127[8 * ii + 56], *(v13 + 8 * ii)), *(a6 + 8 * ii));
    }

    for (jj = 0; jj != v19; ++jj)
    {
      *&v127[8 * jj + 56] = *&v127[8 * jj + 56] - *(v135 + jj);
    }

    v48 = *v131;
    if (v113 != 1)
    {
      if (v113 < 5)
      {
        v49 = 1;
LABEL_71:
        v54 = v113 - v49;
        v55 = &v131[v49];
        do
        {
          v56 = *v55++;
          v48 = fmax(v56, v48);
          --v54;
        }

        while (v54);
        goto LABEL_73;
      }

      v50 = vdupq_lane_s64(v131[0], 0);
      v51 = v103 & 0xFFFFFFFFFFFFFFFCLL;
      v52 = v132;
      v53 = v50;
      do
      {
        v50 = vmaxnmq_f64(v52[-1], v50);
        v53 = vmaxnmq_f64(*v52, v53);
        v52 += 2;
        v51 -= 4;
      }

      while (v51);
      v48 = vmaxnmvq_f64(vmaxnmq_f64(v50, v53));
      v49 = v103 & 0xFFFFFFFFFFFFFFFCLL | 1;
      if (v103 != (v103 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_71;
      }
    }

LABEL_73:
    for (kk = 0; kk != v19; ++kk)
    {
      v126[kk] = *&v127[8 * kk + 56] * v133[kk];
    }

    v58 = v126[0];
    if (v10 != 1)
    {
      if (v10 < 5)
      {
        v59 = 1;
LABEL_81:
        v64 = v19 - v59;
        v65 = &v126[v59];
        do
        {
          v66 = *v65++;
          v58 = v66 + v58;
          --v64;
        }

        while (v64);
        goto LABEL_83;
      }

      v60 = 0uLL;
      v61 = *&v126[0];
      v62 = v106 & 0xFFFFFFFFFFFFFFFCLL;
      v63 = v127;
      do
      {
        v61 = vaddq_f64(v63[-1], v61);
        v60 = vaddq_f64(*v63, v60);
        v63 += 2;
        v62 -= 4;
      }

      while (v62);
      v58 = vaddvq_f64(vaddq_f64(v60, v61));
      v59 = v111 | 1;
      if (v106 != v111)
      {
        goto LABEL_81;
      }
    }

LABEL_83:
    if (v118 < 1)
    {
      v70 = 1.0;
    }

    else
    {
      v67 = 0;
      v68 = v58 * v105;
      v69 = v58 * -0.5;
      v70 = 1.0;
      v116 = v58;
      v117 = v48;
      do
      {
        v71 = 0;
        v121 = 0.0;
        do
        {
          v139[v71] = *&v127[8 * v71 + 56] * v70;
          ++v71;
        }

        while (v19 != v71);
        for (mm = 0; mm != v19; ++mm)
        {
          v120[mm] = v139[mm] + *(v135 + mm);
        }

        a2(v120, a3, &v121);
        if (v121 <= v117 + v68 * v70)
        {
          break;
        }

        v73 = v70 * v70 * v69 / (v121 - (v138 + v116 * v70));
        v70 = (v17 > v73) | (v73 > v70 * v18) ? v70 * 0.5 : v70 * v70 * v69 / (v121 - (v138 + v116 * v70));
        ++v67;
      }

      while (v67 != v118);
    }

    for (nn = 0; nn != v19; ++nn)
    {
      v129[nn] = *&v127[8 * nn + 56] * v70;
    }

    for (i1 = 0; i1 != v19; ++i1)
    {
      v129[i1] = *(v135 + i1) + v129[i1];
    }

    a1(v129, a3, &v130, v128);
    for (i2 = 0; i2 != v19; ++i2)
    {
      *&v125[8 * i2 + 136] = v129[i2] - *(v135 + i2);
    }

    for (i3 = 0; i3 != v19; ++i3)
    {
      *&v125[8 * i3 + 56] = v128[i3] - v133[i3];
    }

    for (i4 = 0; i4 != v19; ++i4)
    {
      v122[i4] = *&v125[8 * i4 + 56] * *&v125[8 * i4 + 136];
    }

    v79 = v122[0];
    if (a5 != 1)
    {
      if (a5 < 5)
      {
        v80 = 1;
LABEL_112:
        v85 = v19 - v80;
        v86 = &v122[v80];
        do
        {
          v87 = *v86++;
          v79 = v87 + v79;
          --v85;
        }

        while (v85);
        goto LABEL_114;
      }

      v81 = 0uLL;
      v82 = *&v122[0];
      v83 = v106 & 0xFFFFFFFFFFFFFFFCLL;
      v84 = &v123;
      do
      {
        v82 = vaddq_f64(v84[-1], v82);
        v81 = vaddq_f64(*v84, v81);
        v84 += 2;
        v83 -= 4;
      }

      while (v83);
      v79 = vaddvq_f64(vaddq_f64(v81, v82));
      v80 = v111 | 1;
      if (v106 != v111)
      {
        goto LABEL_112;
      }
    }

LABEL_114:
    v21 = v16;
    if (v79 <= 0.0)
    {
      goto LABEL_126;
    }

    for (i5 = 0; i5 != v19; ++i5)
    {
      v124[i5] = *&v125[8 * i5 + 136] * *&v125[8 * i5 + 136];
    }

    v89 = v124[0];
    if (a5 != 1)
    {
      if (a5 >= 5)
      {
        v91 = 0uLL;
        v92 = *&v124[0];
        v93 = v106 & 0xFFFFFFFFFFFFFFFCLL;
        v94 = v125;
        do
        {
          v92 = vaddq_f64(v94[-1], v92);
          v91 = vaddq_f64(*v94, v91);
          v94 += 2;
          v93 -= 4;
        }

        while (v93);
        v89 = vaddvq_f64(vaddq_f64(v91, v92));
        v90 = v111 | 1;
        if (v106 == v111)
        {
          goto LABEL_125;
        }
      }

      else
      {
        v90 = 1;
      }

      v95 = v19 - v90;
      v96 = &v124[v90];
      do
      {
        v97 = *v96++;
        v89 = v97 + v89;
        --v95;
      }

      while (v95);
    }

LABEL_125:
    v21 = fmax(v104, fmin(v89 / v79, v16));
LABEL_126:
    __memcpy_chk();
    v98 = v130;
    v138 = v130;
    __memcpy_chk();
    *&v131[++v114 % v113] = v98;
    if (v98 < v22)
    {
      __memcpy_chk();
      v22 = v98;
    }

    v13 = v107;
    v10 = a5;
  }

  while (v114 != v110);
  v99 = v110;
LABEL_131:
  v100 = v99 < v110;
  result = memcpy(a9, __src, 8 * a5);
  if (a10)
  {
LABEL_132:
    *a10 = v99;
    *(a10 + 4) = v100;
    *(a10 + 5) = v136;
    *(a10 + 7) = v137;
    *(a10 + 8) = v102;
    *(a10 + 16) = v22;
  }

  return result;
}

__n128 sub_295764888@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = *(a4 + 144);
  *(a7 + 128) = *(a4 + 128);
  *(a7 + 144) = v9;
  *(a7 + 160) = *(a4 + 160);
  *(a7 + 176) = *(a4 + 176);
  v10 = *(a4 + 80);
  *(a7 + 64) = *(a4 + 64);
  *(a7 + 80) = v10;
  v11 = *(a4 + 112);
  *(a7 + 96) = *(a4 + 96);
  *(a7 + 112) = v11;
  v12 = *(a4 + 16);
  *a7 = *a4;
  *(a7 + 16) = v12;
  v13 = *(a4 + 48);
  *(a7 + 32) = *(a4 + 32);
  *(a7 + 48) = v13;
  *&v13 = *(a4 + 24);
  v29[0] = *(a4 + 16);
  *&v29[1] = v13;
  v14 = *(a4 + 8);
  v30 = *a4;
  v31 = v14;
  v15 = *(a5 + 32);
  v16 = *(a5 + 40);
  v28[0] = v29[0] - v15;
  v28[1] = *&v13 - v16;
  v17 = *(a5 + 16);
  v18 = *(a5 + 24);
  v28[2] = v30 - v17;
  v28[3] = v14 - v18;
  v27[0] = v15 + v29[0];
  v27[1] = v16 + *&v13;
  v27[2] = v17 + v30;
  v27[3] = v18 + v14;
  v25 = 0u;
  v24[0] = a1;
  v24[1] = a2;
  v24[2] = a3;
  v24[3] = a4;
  v22 = xmmword_29577B700;
  v23 = unk_29577B710;
  v21[1] = xmmword_29577B6E0;
  v21[2] = unk_29577B6F0;
  v21[0] = xmmword_29577B6D0;
  *&v22 = *(a5 + 104);
  v19 = *(a5 + 116);
  DWORD2(v22) = *(a5 + 112);
  DWORD2(v23) = v19;
  sub_295763E40(sub_2957649D8, sub_295764A54, v24, v29, 4, v28, v27, v21, v26, a6);
  *(a6 + 4) = 1;
  result = v26[0];
  *a7 = v26[1];
  *(a7 + 16) = result;
  return result;
}

double sub_2957649D8(__int128 *a1, uint64_t a2, double *a3, double *a4)
{
  v4 = *(a2 + 24);
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[1];
  v16 = *v4;
  v17 = v7;
  v18 = v5;
  v19 = v6;
  v8 = v4[4];
  v9 = v4[5];
  v10 = v4[7];
  v22 = v4[6];
  v23 = v10;
  v20 = v8;
  v21 = v9;
  v11 = v4[8];
  v12 = v4[9];
  v13 = v4[10];
  v27 = *(v4 + 22);
  v25 = v12;
  v26 = v13;
  v24 = v11;
  v14 = *a1;
  v16 = a1[1];
  v17 = v14;
  return sub_2957630E0(*a2, *(a2 + 8), *(a2 + 16), &v16, a3, a4);
}

double sub_295764A54(__int128 *a1, uint64_t a2, double *a3)
{
  v3 = *(a2 + 24);
  v4 = *(v3 + 32);
  v5 = *(v3 + 48);
  v6 = *(v3 + 16);
  v15 = *v3;
  v16 = v6;
  v17 = v4;
  v18 = v5;
  v7 = *(v3 + 64);
  v8 = *(v3 + 80);
  v9 = *(v3 + 112);
  v21 = *(v3 + 96);
  v22 = v9;
  v19 = v7;
  v20 = v8;
  v10 = *(v3 + 128);
  v11 = *(v3 + 144);
  v12 = *(v3 + 160);
  v26 = *(v3 + 176);
  v24 = v11;
  v25 = v12;
  v23 = v10;
  v13 = *a1;
  v15 = a1[1];
  v16 = v13;
  return sub_295762E50(*a2, *(a2 + 8), *(a2 + 16), &v15, a3);
}

uint64_t sub_295764ACC(uint64_t a1, uint64_t a2, unsigned int a3, double *a4, double *a5, double *a6, uint64_t a7, uint64_t a8)
{
  v12 = a6[1];
  v14 = a6[2];
  v13 = a6[3];
  v44[0] = *a6;
  v44[1] = v14;
  v44[2] = v12;
  v44[3] = v13;
  v15 = a4[2];
  v45 = a4[1];
  v46 = v15;
  v17 = a5[1];
  v16 = a5[2];
  v47 = a4[3];
  v48 = v17;
  v18 = a5[3];
  v49 = v16;
  v50 = v18;
  v19 = *(a7 + 16);
  v20 = *(a7 + 24);
  v21 = *(a7 + 32);
  v22 = *(a7 + 40);
  v43[0] = v44[0] - v19;
  v43[1] = v14 - v21;
  v43[2] = v12 - v20;
  v43[3] = v13 - v22;
  v23 = *(a7 + 64);
  v24 = *(a7 + 72);
  v25 = *(a7 + 80);
  v26 = *(a7 + 88);
  v43[4] = v45 - v23;
  v43[5] = v15 - v25;
  v43[6] = v47 - v25;
  v43[7] = v17 - v24;
  v43[8] = v16 - v26;
  v43[9] = v18 - v26;
  v42[0] = v19 + v44[0];
  v42[1] = v21 + v14;
  v42[2] = v20 + v12;
  v42[3] = v22 + v13;
  v42[4] = v23 + v45;
  v42[5] = v25 + v15;
  v42[6] = v25 + v47;
  v42[7] = v24 + v17;
  v42[8] = v26 + v16;
  v42[9] = v26 + v18;
  v34[0] = a1;
  v34[1] = a2;
  v34[3] = a6;
  v34[2] = a3;
  v34[4] = a4;
  v34[5] = a5;
  v32 = xmmword_29577B700;
  v33 = unk_29577B710;
  v31[1] = xmmword_29577B6E0;
  v31[2] = unk_29577B6F0;
  v31[0] = xmmword_29577B6D0;
  *&v32 = *(a7 + 104);
  v27 = *(a7 + 116);
  DWORD2(v32) = *(a7 + 112);
  DWORD2(v33) = v27;
  sub_295763E40(sub_295764C94, sub_295764DAC, v34, v44, 10, v43, v42, v31, &v35, a8);
  v28 = v37;
  *a6 = v35;
  *(a6 + 1) = vextq_s8(v36, v36, 8uLL);
  *(a6 + 3) = v28;
  *(a4 + 1) = v38;
  v29 = v41;
  *(a4 + 3) = v39;
  *(a5 + 1) = v40;
  *(a8 + 4) = 1;
  *(a5 + 3) = v29;
  return 0;
}

double *sub_295764C94(uint64_t a1, uint64_t a2, double *a3, uint64_t a4)
{
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v7 = *(v4 + 32);
  v8 = *(v4 + 48);
  v9 = *(v4 + 16);
  *v49 = *v4;
  *&v49[16] = v9;
  v50 = v7;
  v51 = v8;
  v10 = *(v4 + 64);
  v11 = *(v4 + 80);
  v12 = *(v4 + 112);
  v54 = *(v4 + 96);
  v55 = v12;
  v52 = v10;
  v53 = v11;
  v13 = *(v4 + 128);
  v14 = *(v4 + 144);
  v15 = *(v4 + 160);
  v59 = *(v4 + 176);
  v57 = v14;
  v58 = v15;
  v56 = v13;
  *&v13 = *a1;
  *&v49[8] = vextq_s8(*(a1 + 8), *(a1 + 8), 8uLL);
  *&v14 = *(a1 + 24);
  *v49 = v13;
  *&v49[24] = v14;
  v16 = v5[1];
  *v40 = *v5;
  *&v40[16] = v16;
  v18 = v5[8];
  v17 = v5[9];
  v19 = v5[7];
  v45 = v5[6];
  v46 = v19;
  v47 = v18;
  v48 = v17;
  v21 = v5[4];
  v20 = v5[5];
  v22 = v5[3];
  v41 = v5[2];
  v42 = v22;
  v43 = v21;
  v44 = v20;
  *&v40[8] = *(a1 + 32);
  *&v40[24] = *(a1 + 48);
  v23 = v6[1];
  *v31 = *v6;
  *&v31[16] = v23;
  v25 = v6[8];
  v24 = v6[9];
  v26 = v6[7];
  v36 = v6[6];
  v37 = v26;
  v38 = v25;
  v39 = v24;
  v28 = v6[4];
  v27 = v6[5];
  v29 = v6[3];
  v32 = v6[2];
  v33 = v29;
  v34 = v28;
  v35 = v27;
  *&v31[8] = *(a1 + 56);
  *&v31[24] = *(a1 + 72);
  return sub_29574AAA8(*a2, *(a2 + 8), *(a2 + 16), v40, v31, v49, a3, a4);
}

double *sub_295764DAC(uint64_t a1, uint64_t a2, double *a3)
{
  v3 = *(a2 + 24);
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(v3 + 32);
  v7 = *(v3 + 48);
  v8 = *(v3 + 16);
  *v48 = *v3;
  *&v48[16] = v8;
  v49 = v6;
  v50 = v7;
  v9 = *(v3 + 64);
  v10 = *(v3 + 80);
  v11 = *(v3 + 112);
  v53 = *(v3 + 96);
  v54 = v11;
  v51 = v9;
  v52 = v10;
  v12 = *(v3 + 128);
  v13 = *(v3 + 144);
  v14 = *(v3 + 160);
  v58 = *(v3 + 176);
  v56 = v13;
  v57 = v14;
  v55 = v12;
  *&v12 = *a1;
  *&v48[8] = vextq_s8(*(a1 + 8), *(a1 + 8), 8uLL);
  *&v13 = *(a1 + 24);
  *v48 = v12;
  *&v48[24] = v13;
  v15 = v4[1];
  *v39 = *v4;
  *&v39[16] = v15;
  v17 = v4[8];
  v16 = v4[9];
  v18 = v4[7];
  v44 = v4[6];
  v45 = v18;
  v46 = v17;
  v47 = v16;
  v20 = v4[4];
  v19 = v4[5];
  v21 = v4[3];
  v40 = v4[2];
  v41 = v21;
  v42 = v20;
  v43 = v19;
  *&v39[8] = *(a1 + 32);
  *&v39[24] = *(a1 + 48);
  v22 = v5[1];
  *v30 = *v5;
  *&v30[16] = v22;
  v24 = v5[8];
  v23 = v5[9];
  v25 = v5[7];
  v35 = v5[6];
  v36 = v25;
  v37 = v24;
  v38 = v23;
  v27 = v5[4];
  v26 = v5[5];
  v28 = v5[3];
  v31 = v5[2];
  v32 = v28;
  v33 = v27;
  v34 = v26;
  *&v30[8] = *(a1 + 56);
  *&v30[24] = *(a1 + 72);
  return sub_29574C0C0(*a2, *(a2 + 8), *(a2 + 16), v39, v30, v48, a3);
}

uint64_t sub_295764F4C()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_295764FC4()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576503C()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_2957650B4()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576512C()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_2957651A4()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576521C()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_295765294()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576530C()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_295765384()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_2957653FC()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_295765474()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_2957654EC()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_295765564()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_2957655DC()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_295765654()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_2957656CC()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_295765744()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_2957657BC()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_295765834(_DWORD *a1)
{
  sub_29574A8A4();
  sub_29574A890();
  FigDebugAssert3();
  sub_29574A8A4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2957658E4(_DWORD *a1)
{
  sub_29574A8A4();
  sub_29574A890();
  FigDebugAssert3();
  sub_29574A8A4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295765994(_DWORD *a1)
{
  sub_29574A8A4();
  sub_29574A890();
  FigDebugAssert3();
  sub_29574A8A4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295765A44()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_295765A9C()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_295765AF4()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_295765B4C()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_295765BA4()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_295765BFC()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_295765C54()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_295765CAC()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

void sub_295765D04(uint64_t a1, void *a2)
{
  fig_log_get_emitter();
  FigDebugAssert3();
}

uint64_t sub_295765DA0()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_295765E18(_DWORD *a1)
{
  sub_29574A8A4();
  sub_29574A890();
  FigDebugAssert3();
  sub_29574A8A4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295765EC8()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_295765F40(_DWORD *a1)
{
  sub_29574A8A4();
  sub_29574A890();
  FigDebugAssert3();
  sub_29574A8A4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295765FF0()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_295766068()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_2957660E0(_DWORD *a1)
{
  sub_29574A8A4();
  sub_29574A890();
  FigDebugAssert3();
  sub_29574A8A4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295766190()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_295766208()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_295766280()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_2957662F8()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

void sub_295766370(void *a1, void *a2, void *a3)
{
  fig_log_get_emitter();
  sub_29574A878();
  FigDebugAssert3();
}

void sub_295766418(void *a1)
{
  fig_log_get_emitter();
  sub_29574A878();
  FigDebugAssert3();
}

void sub_2957664A8(void *a1)
{
  fig_log_get_emitter();
  sub_29574A878();
  FigDebugAssert3();
}

void sub_295766538(void *a1)
{
  fig_log_get_emitter();
  sub_29574A878();
  FigDebugAssert3();
}

uint64_t sub_2957665C8()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

void sub_295766640(void *a1)
{
  fig_log_get_emitter();
  sub_29574A878();
  FigDebugAssert3();
}

uint64_t sub_2957666D0()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_295766748()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_2957667C0()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_295766838()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_2957668B0()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_295766928()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_2957669A0()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_295766A18()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_295766A90()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_295766B08()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

void sub_295766B80(void *a1)
{
  fig_log_get_emitter();
  sub_29574A878();
  FigDebugAssert3();
}

void sub_295766C10(void *a1)
{
  fig_log_get_emitter();
  sub_29574A878();
  FigDebugAssert3();
}

uint64_t sub_295766CA0()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_295766D18()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_295766D90()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_295766E08()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_295766E80()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_295766EF8()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_295766F70()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_295767174()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_2957671EC()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_295767264()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_2957672DC()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_295767354()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_2957673CC()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_295767444()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_2957674BC()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_295767534()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_2957675AC()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_295767624()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576769C()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_295767714()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576778C()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_295767804()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576787C()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_2957678F4()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576796C()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_2957679E4()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_295767A5C()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_295767AD4()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_295767B4C()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_295767BC4()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

void sub_295767C3C(void *a1, void *a2, void *a3, void *a4)
{
  fig_log_get_emitter();
  sub_29574A878();
  FigDebugAssert3();
}

void sub_295767CE4(void *a1, void *a2, void *a3)
{
  fig_log_get_emitter();
  sub_29574A878();
  FigDebugAssert3();
}

void sub_295767D8C(void *a1, void *a2)
{
  fig_log_get_emitter();
  sub_29574A878();
  FigDebugAssert3();
}

void sub_295767E24(void *a1)
{
  fig_log_get_emitter();
  sub_29574A878();
  FigDebugAssert3();
}

uint64_t sub_295767EB4()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_295767F2C()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_295767FA4()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576801C()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

void sub_295768094(void *a1, void *a2, void *a3)
{
  fig_log_get_emitter();
  sub_29574A878();
  FigDebugAssert3();
}

void sub_29576812C(void *a1, void *a2)
{
  fig_log_get_emitter();
  sub_29574A878();
  FigDebugAssert3();
}

void sub_2957681BC(void *a1)
{
  fig_log_get_emitter();
  sub_29574A878();
  FigDebugAssert3();
}

uint64_t sub_29576824C()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_2957682C4()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576833C()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_2957683B4()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576842C()
{
  fig_log_get_emitter();
  sub_295752B10();
  return FigDebugAssert3();
}

uint64_t sub_2957684A8()
{
  fig_log_get_emitter();
  sub_295752B10();
  return FigDebugAssert3();
}

uint64_t sub_295768524(uint64_t a1, _DWORD *a2)
{
  sub_29574A8A4();
  sub_29574A890();
  FigDebugAssert3();
  sub_29574A8A4();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t sub_2957685D0(_DWORD *a1)
{
  sub_29574A8A4();
  sub_29574A890();
  FigDebugAssert3();
  sub_29574A8A4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29576867C(_DWORD *a1)
{
  sub_29574A8A4();
  sub_29574A890();
  FigDebugAssert3();
  sub_29574A8A4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295768728(_DWORD *a1)
{
  sub_29574A8A4();
  sub_29574A890();
  FigDebugAssert3();
  sub_29574A8A4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2957687D4(_DWORD *a1)
{
  sub_29574A8A4();
  sub_29574A890();
  FigDebugAssert3();
  sub_29574A8A4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295768880(_DWORD *a1)
{
  sub_29574A8A4();
  sub_29574A890();
  FigDebugAssert3();
  sub_29574A8A4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29576892C(_DWORD *a1)
{
  sub_29574A8A4();
  sub_29574A890();
  FigDebugAssert3();
  sub_29574A8A4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2957689D8(_DWORD *a1)
{
  sub_29574A8A4();
  sub_29574A890();
  FigDebugAssert3();
  sub_29574A8A4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295768A84(_DWORD *a1)
{
  sub_29574A8A4();
  sub_29574A890();
  FigDebugAssert3();
  sub_29574A8A4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295768B30(_DWORD *a1)
{
  sub_29574A8A4();
  sub_29574A890();
  FigDebugAssert3();
  sub_29574A8A4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295768BDC(_DWORD *a1)
{
  sub_29574A8A4();
  sub_29574A890();
  FigDebugAssert3();
  sub_29574A8A4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295768C88(_DWORD *a1)
{
  sub_29574A8A4();
  sub_29574A890();
  FigDebugAssert3();
  sub_29574A8A4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295768D34(_DWORD *a1)
{
  sub_29574A8A4();
  sub_29574A890();
  FigDebugAssert3();
  sub_29574A8A4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sub_295768DE0(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  fig_log_get_emitter();
  FigDebugAssert3();
  fig_log_get_emitter();
  *a4 = FigSignalErrorAtGM();
}

uint64_t sub_295768EB8(_DWORD *a1)
{
  sub_29574A8A4();
  sub_29574A890();
  FigDebugAssert3();
  sub_29574A8A4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295768F64(_DWORD *a1)
{
  sub_29574A8A4();
  sub_29574A890();
  FigDebugAssert3();
  sub_29574A8A4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295769010()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_295769084()
{
  fig_log_get_emitter();
  sub_295752B10();
  return FigDebugAssert3();
}

uint64_t sub_2957690FC()
{
  fig_log_get_emitter();
  sub_295752B10();
  return FigDebugAssert3();
}

uint64_t sub_295769178()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_2957691EC()
{
  fig_log_get_emitter();
  sub_295752B10();
  return FigDebugAssert3();
}

uint64_t sub_295769264()
{
  fig_log_get_emitter();
  sub_295752B10();
  return FigDebugAssert3();
}

uint64_t sub_2957692E0()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

void sub_295769354(void *a1)
{
  fig_log_get_emitter();
  sub_29574A878();
  FigDebugAssert3();
}

void sub_2957693E4(void *a1)
{
  fig_log_get_emitter();
  sub_29574A878();
  FigDebugAssert3();
}

uint64_t sub_295769474()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

void sub_2957694EC(void *a1)
{
  fig_log_get_emitter();
  sub_29574A878();
  FigDebugAssert3();
}

void sub_29576957C(void *a1)
{
  fig_log_get_emitter();
  sub_29574A878();
  FigDebugAssert3();
}

uint64_t sub_29576960C()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_295769684()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_2957696FC()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_295769774()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_2957697EC()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_295769864()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_2957698DC()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_295769954()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_2957699C8()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_295769A3C()
{
  fig_log_get_emitter();
  sub_295752B10();
  return FigDebugAssert3();
}

uint64_t sub_295769AB8()
{
  fig_log_get_emitter();
  sub_295752B10();
  return FigDebugAssert3();
}

uint64_t sub_295769B34()
{
  fig_log_get_emitter();
  sub_295752B10();
  return FigDebugAssert3();
}

uint64_t sub_295769BB0()
{
  fig_log_get_emitter();
  sub_295752B10();
  return FigDebugAssert3();
}

uint64_t sub_295769C2C()
{
  fig_log_get_emitter();
  sub_295752B10();
  return FigDebugAssert3();
}

uint64_t sub_295769CA8()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_295769D20()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_295769D98()
{
  fig_log_get_emitter();
  sub_295752B10();
  return FigDebugAssert3();
}

uint64_t sub_295769E10()
{
  fig_log_get_emitter();
  sub_295752B10();
  return FigDebugAssert3();
}

uint64_t sub_295769E88()
{
  fig_log_get_emitter();
  sub_295752B10();
  return FigDebugAssert3();
}

uint64_t sub_295769F00()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_295769F78()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_295769FF0()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576A064()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576A0D8()
{
  fig_log_get_emitter();
  sub_295752B10();
  return FigDebugAssert3();
}

uint64_t sub_29576A150()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576A360(void *a1)
{
  sub_29574A8A4();
  sub_29574A890();
  FigDebugAssert3();

  sub_29574A8A4();
  return FigSignalErrorAtGM();
}

uint64_t sub_29576A40C(void *a1)
{
  sub_29574A8A4();
  sub_29574A890();
  FigDebugAssert3();

  sub_29574A8A4();
  return FigSignalErrorAtGM();
}

uint64_t sub_29576A4B8(void *a1)
{
  sub_29574A8A4();
  sub_29574A890();
  FigDebugAssert3();

  sub_29574A8A4();

  return FigSignalErrorAtGM();
}

uint64_t sub_29576A638()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576A6B0()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576A728()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576A7A0()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576A818()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576A890()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576A908()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576A980()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

void sub_29576A9F4(uint64_t a1, void *a2, void *a3)
{
  fig_log_get_emitter();
  sub_295759350();
  FigDebugAssert3();
}

uint64_t sub_29576AA8C()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576AB04()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576AB7C()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576ABF4()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576AC6C()
{
  fig_log_get_emitter();
  sub_295759350();
  return FigDebugAssert3();
}

void sub_29576ACEC(uint64_t a1, void *a2)
{
  fig_log_get_emitter();
  sub_295759350();
  FigDebugAssert3();
}

uint64_t sub_29576AD84()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576ADFC()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576AE74()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576AEEC()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576AF64()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576AFDC()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576B054()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576B0CC()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576B144()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576B1BC()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576B234()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576B2AC()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576B324()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576B39C()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576B414()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576B48C()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576B504()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576B57C()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576B5F4()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576B66C()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576B6E4()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576B75C()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576B7D4()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576B84C()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576B8C4()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576B93C()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576B9B4()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576BA2C()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576BAA4()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576BB1C()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576BB94()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576BC0C()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576BC84()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576BCFC()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576BD74()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576BDEC()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576BE64()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576BEDC()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576BF54()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576BFCC()
{
  sub_295759370();
  sub_29574A890();
  FigDebugAssert3();
  sub_295759370();
  sub_295759364();

  return FigSignalErrorAtGM();
}

uint64_t sub_29576C07C()
{
  sub_295759370();
  sub_29574A890();
  FigDebugAssert3();
  sub_295759370();
  sub_295759364();

  return FigSignalErrorAtGM();
}

uint64_t sub_29576C12C()
{
  sub_295759370();
  sub_29574A890();
  FigDebugAssert3();
  sub_295759370();
  sub_295759364();

  return FigSignalErrorAtGM();
}

uint64_t sub_29576C1DC()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576C254()
{
  fig_log_get_emitter();
  sub_295759350();
  return FigDebugAssert3();
}

uint64_t sub_29576C2D4()
{
  fig_log_get_emitter();
  sub_295759350();
  return FigDebugAssert3();
}

uint64_t sub_29576C354()
{
  fig_log_get_emitter();
  sub_295759350();
  return FigDebugAssert3();
}

uint64_t sub_29576C3D4()
{
  fig_log_get_emitter();
  sub_295759350();
  return FigDebugAssert3();
}

uint64_t sub_29576C454()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576C4CC()
{
  fig_log_get_emitter();
  sub_295759350();
  return FigDebugAssert3();
}

uint64_t sub_29576C548()
{
  fig_log_get_emitter();
  sub_295759350();
  return FigDebugAssert3();
}

uint64_t sub_29576C5C4()
{
  fig_log_get_emitter();
  sub_295759350();
  return FigDebugAssert3();
}

uint64_t sub_29576C640()
{
  fig_log_get_emitter();
  sub_295759350();
  return FigDebugAssert3();
}

uint64_t sub_29576C6BC()
{
  fig_log_get_emitter();
  sub_295759350();
  return FigDebugAssert3();
}

uint64_t sub_29576C738()
{
  fig_log_get_emitter();
  sub_295759350();
  return FigDebugAssert3();
}

uint64_t sub_29576C7B4()
{
  fig_log_get_emitter();
  sub_295759350();
  return FigDebugAssert3();
}

uint64_t sub_29576C830()
{
  fig_log_get_emitter();
  sub_295759350();
  return FigDebugAssert3();
}

uint64_t sub_29576C8B0()
{
  fig_log_get_emitter();
  sub_295759350();
  return FigDebugAssert3();
}

uint64_t sub_29576C92C()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576C9A4()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576CA1C()
{
  sub_295759370();
  sub_29574A890();
  FigDebugAssert3();
  sub_295759370();
  sub_295759364();
  return FigSignalErrorAtGM();
}

uint64_t sub_29576CAC0()
{
  fig_log_get_emitter();
  sub_295759350();
  return FigDebugAssert3();
}

uint64_t sub_29576CB40()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576CBB8()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576CC30()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576CCA8()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576CD20()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576CD98()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576CE10()
{
  sub_295759370();
  sub_29574A890();
  FigDebugAssert3();
  sub_295759370();
  sub_295759364();
  return FigSignalErrorAtGM();
}

uint64_t sub_29576CEB4()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576CF2C()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576CFA4()
{
  sub_295759370();
  sub_29574A890();
  FigDebugAssert3();
  sub_295759370();
  sub_295759364();
  return FigSignalErrorAtGM();
}

uint64_t sub_29576D048()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576D0C0()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576D138()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576D1B0()
{
  sub_295759370();
  sub_29574A890();
  FigDebugAssert3();
  sub_295759370();
  sub_295759364();

  return FigSignalErrorAtGM();
}

uint64_t sub_29576D260()
{
  sub_295759370();
  sub_29574A890();
  FigDebugAssert3();
  sub_295759370();
  sub_295759364();

  return FigSignalErrorAtGM();
}

uint64_t sub_29576D310()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576D384()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576D3F8()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576D46C()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576D4E4()
{
  fig_log_get_emitter();
  sub_295759350();
  return FigDebugAssert3();
}

uint64_t sub_29576D564()
{
  fig_log_get_emitter();
  sub_295759350();
  return FigDebugAssert3();
}

uint64_t sub_29576D5E4()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576D65C()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576D6D4()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576D74C()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576D7C4()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576D83C()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576D8B4()
{
  fig_log_get_emitter();
  sub_29574A878();
  return FigDebugAssert3();
}

uint64_t sub_29576EB28(_DWORD *a1)
{
  sub_29575F6D8();
  sub_29574C6A0();
  FigDebugAssert3();
  sub_29575F6C8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29576EBB0(_DWORD *a1)
{
  sub_29575F6D8();
  sub_29574C6A0();
  FigDebugAssert3();
  sub_29575F6C8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29576EC38(_DWORD *a1)
{
  sub_29575F6D8();
  sub_29574C6A0();
  FigDebugAssert3();
  sub_29575F6C8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29576ECC0(_DWORD *a1)
{
  sub_29575F6D8();
  sub_29574C6A0();
  FigDebugAssert3();
  sub_29575F6C8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29576ED48(_DWORD *a1)
{
  sub_29575F6D8();
  sub_29574C6A0();
  FigDebugAssert3();
  sub_29575F6C8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29576EDD0(_DWORD *a1)
{
  sub_29575F6D8();
  sub_29574C6A0();
  FigDebugAssert3();
  sub_29575F6C8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29576EE58(_DWORD *a1)
{
  sub_29575F6D8();
  sub_29574C6A0();
  FigDebugAssert3();
  sub_29575F6C8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29576EEE0(_DWORD *a1)
{
  sub_29575F6D8();
  sub_29574C6A0();
  FigDebugAssert3();
  sub_29575F6C8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29576EF94(uint64_t a1, float64x2_t *a2, float64x2_t *a3, int a4, float64x2_t *a5, float64x2_t *a6, float64x2_t *a7)
{
  if (!a1 || !a2 || !a3 || a4 <= 0 || *a1 < a4 || !a5 || !a6 || !a7)
  {
    sub_29574C690();
    sub_29574C6A0();
    FigDebugAssert3();
    return 4294954516;
  }

  bzero((a1 + 520), 0x748uLL);
  v14 = sub_295761800(a2, a4, a5, *(a1 + 2912));
  if (v14 || (v14 = sub_295761800(a3, a4, a6, *(a1 + 2920)), v14))
  {
    v32 = v14;
    sub_295762658();
    sub_29574C6A0();
    goto LABEL_29;
  }

  AdaptiveCorrection_fullCorrection(*(a1 + 2912), *(a1 + 2920), a4, a7, a1 + 8, a1 + 520, __src);
  memcpy(a7, __src, 0xB8uLL);
  if ((*(a1 + 400) & 1) == 0)
  {
    memset(__dst, 0, 104);
    v16 = *(a1 + 24);
    *&__dst[8] = *(a1 + 16);
    *&__dst[16] = v16;
    v17 = *(a1 + 32);
    v18 = *(a1 + 48);
    *&__dst[24] = *(a1 + 32);
    *&__dst[32] = *(&v17 + 1);
    *&v19 = *(a1 + 64);
    *(&v19 + 1) = v16;
    *&__dst[40] = v18;
    *&__dst[72] = v17;
    *&__dst[56] = v19;
    *&__dst[88] = v18;
    *&__dst[96] = *(a1 + 88);
    *&__dst[104] = *(a1 + 128);
    *&__dst[112] = 0x3E800000064;
    *__dst = 257;
    memcpy((a1 + 1528), a5, 0xA0uLL);
    memcpy((a1 + 1688), a6, 0xA0uLL);
LABEL_15:
    sub_295762C2C(*(a1 + 2912), *(a1 + 2920), a4, a7, *(a1 + 2944));
    v20 = 0;
    v21 = *(a1 + 2944);
    v22 = *&__dst[8];
    v23 = &a3->f64[1];
    v24 = &a2->f64[1];
    v25 = a4;
    do
    {
      if (*v21 < v22)
      {
        v26 = *(a1 + 2928);
        v27 = 2 * v20;
        *(v26 + 8 * v27) = *(v24 - 1);
        v28 = (16 * v20) | 8;
        *(v26 + v28) = *v24;
        v29 = *(a1 + 2936);
        *(v29 + 8 * v27) = *(v23 - 1);
        *(v29 + v28) = *v23;
        ++v20;
      }

      ++v21;
      v23 += 2;
      v24 += 2;
      --v25;
    }

    while (v25);
    *(a1 + 1848) = v20;
    if (v20 < *&__dst[96])
    {
      return 0;
    }

    *(a1 + 1852) = 1;
    v35 = 0;
    v36 = 0;
    v34 = 0;
    v30 = sub_295764ACC(*(a1 + 2928), *(a1 + 2936), v20, a5->f64, a6->f64, a7->f64, __dst, &v34);
    if (!v30)
    {
      v31 = v36;
      *(a1 + 1856) = v35;
      *(a1 + 1864) = v34;
      *(a1 + 1868) = BYTE4(v34);
      *(a1 + 1872) = v31;
      goto LABEL_22;
    }

    v32 = v30;
    sub_295762658();
    sub_29574C6A0();
LABEL_29:
    FigDebugAssert3();
    return v32;
  }

  memcpy(__dst, (a1 + 400), sizeof(__dst));
  v15 = __dst[1];
  memcpy((a1 + 1528), a5, 0xA0uLL);
  memcpy((a1 + 1688), a6, 0xA0uLL);
  if (v15)
  {
    goto LABEL_15;
  }

  *(a1 + 1868) = 1;
  *(a1 + 1852) = 1;
LABEL_22:
  memcpy((a1 + 1880), a7, 0xB8uLL);
  memcpy((a1 + 2064), a5, 0xA0uLL);
  memcpy((a1 + 2224), a6, 0xA0uLL);
  return 0;
}

void AdaptiveCorrection_fullCorrection(const double *a1@<X0>, const double *a2@<X1>, signed int a3@<W2>, const void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, float64x2_t *a7@<X8>)
{
  v104 = a2;
  __src[0] = 0;
  LOBYTE(__src[1]) = 0;
  bzero(v127, 0xBAuLL);
  v126 = 0;
  v125 = 0;
  bzero(v124, 0xB8uLL);
  bzero(v123, 0xBBuLL);
  v122 = 0;
  v121 = 0;
  bzero(v120, 0xB8uLL);
  bzero(v119, 0x358uLL);
  if (*(a5 + 152) == 1)
  {
    memcpy(__dst, (a5 + 152), 0x78uLL);
    v19 = __dst[12];
  }

  else
  {
    *&v20 = *a5;
    memset(__dst, 0, 104);
    v21 = *(a5 + 16);
    *(&v20 + 1) = v21;
    *&__dst[3] = *(a5 + 24);
    *&__dst[1] = v20;
    *&__dst[5] = *(a5 + 40);
    *&v22 = *(a5 + 56);
    *(&v22 + 1) = v21;
    *&__dst[9] = *&__dst[3];
    *&__dst[7] = v22;
    __dst[11] = __dst[5];
    v19 = *(a5 + 80);
    LODWORD(__dst[12]) = v19;
    __dst[13] = *(a5 + 120);
    __dst[14] = 0x3E800000032;
    LOWORD(__dst[0]) = 257;
  }

  v118 = 0;
  memcpy(a7, a4, 0xB8uLL);
  memcpy(&__src[1] + 1, a4, 0xB8uLL);
  v23 = 0.0;
  if (v19 > a3)
  {
    v50 = 0;
    v49 = 0;
    v90 = 0;
    v99 = 0;
    v100 = 0;
    v91 = 0;
    v51 = 0;
    sub_295762698();
    v25 = 0;
    v24 = 0;
    sub_2957626A8();
    goto LABEL_24;
  }

  v96 = v7;
  v24 = sub_2957626F0();
  v25 = sub_2957626F0();
  HIDWORD(v118) = 0;
  sub_29574F910(a1, v104, a3, a7, v24, v25, &v118 + 1, *&__dst[1]);
  HIDWORD(v100) = HIDWORD(v118);
  if (SHIDWORD(v118) < SLODWORD(__dst[12]))
  {
    v50 = 0;
    v49 = 0;
    v91 = 0;
    LOBYTE(v100) = 0;
    v99 = 0;
    v51 = 0;
    sub_295762698();
    sub_2957626A8();
    v90 = 1;
    goto LABEL_24;
  }

  if (*(a5 + 112) == 1)
  {
    v26 = sub_2957616DC(v24, v25, SHIDWORD(v118), a7, v116);
    sub_29576267C(v26, v27, v28, v29, v30, v31, v32, v33, v92, v94, v7, v98, v100, v101, v104, v106, v107, v108, v109, *&v110, v111[0], v111[1], v111[2], v111[3], v111[4], v111[5], v111[6], v111[7], v111[8], v111[9], v111[10], v111[11], v111[12], v111[13], v111[14], v112, v113, v114, v115, v116[0]);
    sub_2957626D8(&v127[2]);
    LODWORD(v100) = 1;
  }

  else
  {
    LODWORD(v100) = 0;
  }

  v102 = v25;
  v113 = 0;
  v114 = 0;
  v115 = 0;
  v34 = a3;
  if (BYTE1(__dst[0]) == 1)
  {
    sub_295764888(v24, v102, HIDWORD(v118), a7, __dst, &v113, v116);
    sub_29576267C(v35, v36, v37, v38, v39, v40, v41, v42, v92, v94, v96, v98, v100, v102, v104, v106, v107, v108, v109, *&v110, v111[0], v111[1], v111[2], v111[3], v111[4], v111[5], v111[6], v111[7], v111[8], v111[9], v111[10], v111[11], v111[12], v111[13], v111[14], v112, v113, v114, v115, v116[0]);
    LODWORD(v99) = BYTE4(v113);
    HIDWORD(v99) = v113;
    v10 = v114;
    v9 = v115;
  }

  else
  {
    v99 = 1;
    BYTE4(v113) = 1;
    v9 = 0;
    v10 = 0;
  }

  v43 = v24;
  sub_2957626D8(v124);
  if (*(a5 + 272) == 1)
  {
    memcpy(v111, (a5 + 272), sizeof(v111));
    v44 = v111[1];
    v45 = v111[12];
  }

  else
  {
    memset(v111, 0, 104);
    v44 = *(a5 + 8);
    v46 = *(a5 + 16);
    v111[1] = v44;
    v111[2] = v46;
    v47 = *(a5 + 24);
    v111[3] = *(a5 + 24);
    v111[4] = *(&v47 + 1);
    *&v111[5] = *(a5 + 40);
    *&v48 = *(a5 + 56);
    *(&v48 + 1) = v46;
    *&v111[9] = v47;
    *&v111[7] = v48;
    v111[11] = v111[5];
    v45 = *(a5 + 80);
    LODWORD(v111[12]) = v45;
    v111[13] = *(a5 + 120);
    v111[14] = 0x3E800000032;
    LOWORD(v111[0]) = 257;
  }

  v49 = sub_2957626F0();
  v50 = sub_2957626F0();
  LODWORD(v118) = 0;
  sub_29574F910(a1, v104, v34, a7, v49, v50, &v118, *&v44);
  v51 = v118;
  if (v118 < v45)
  {
    sub_295762698();
    v90 = 1;
    v8 = 0;
    v11 = 0;
    v91 = 1;
    v12 = 0;
    v24 = v43;
    a3 = v34;
LABEL_31:
    v25 = v102;
    goto LABEL_24;
  }

  v109 = 0xBFF0000000000000;
  v110 = -1.0;
  v24 = v43;
  if (*(a5 + 128) <= 0.0)
  {
    v68 = sub_2957626C0();
    sub_295752B28(v68, v69, v70, v71, v72, v73);
    sub_29576267C(v74, v75, v76, v77, v78, v79, v80, v81, v92, v94, v96, v99, v100, v102, v104, v106, v107, v108, v109, *&v110, v111[0], v111[1], v111[2], v111[3], v111[4], v111[5], v111[6], v111[7], v111[8], v111[9], v111[10], v111[11], v111[12], v111[13], v111[14], v112, v113, v114, v115, v116[0]);
    v8 = -1.0;
    v23 = -1.0;
    a3 = v34;
    goto LABEL_20;
  }

  bzero(v116, 0xB8uLL);
  v52 = sub_2957626C0();
  sub_295752E10(v52, v53, v54, v55, v56, v57, v58, v59);
  a3 = v34;
  if (v67)
  {
    sub_295762658();
    FigDebugAssert3();
    LODWORD(v104) = 0;
    LOBYTE(v96) = 0;
    v90 = 1;
    v91 = 1;
    v8 = 0;
    v11 = 0;
    LOBYTE(a7) = 1;
    v12 = 0;
    goto LABEL_31;
  }

  sub_29576267C(0, v60, v61, v62, v63, v64, v65, v66, v92, v94, v96, v99, v100, v102, v104, v106, v107, v108, v109, *&v110, v111[0], v111[1], v111[2], v111[3], v111[4], v111[5], v111[6], v111[7], v111[8], v111[9], v111[10], v111[11], v111[12], v111[13], v111[14], v112, v113, v114, v115, v116[0]);
  v8 = v109;
  v23 = v110;
LABEL_20:
  v25 = v103;
  sub_2957626D8(&v123[3]);
  v107 = 0;
  v108 = 0;
  v106 = 0;
  if (BYTE1(v111[0]) == 1)
  {
    sub_295764888(v49, v50, v118, a7, v111, &v106, v116);
    sub_29576267C(v82, v83, v84, v85, v86, v87, v88, v89, v93, v95, v97, v99, v100, v103, v105, v106, v107, v108, v109, *&v110, v111[0], v111[1], v111[2], v111[3], v111[4], v111[5], v111[6], v111[7], v111[8], v111[9], v111[10], v111[11], v111[12], v111[13], v111[14], v112, v113, v114, v115, v116[0]);
    LODWORD(v104) = v106;
    LOBYTE(v96) = BYTE4(v106);
    v11 = v107;
    v12 = v108;
  }

  else
  {
    LODWORD(v104) = 0;
    LOBYTE(v96) = 1;
    v12 = 0;
    v11 = 0;
  }

  sub_2957626D8(v120);
  v90 = 1;
  v91 = 1;
  LOBYTE(a7) = 1;
LABEL_24:
  free(v24);
  free(v25);
  free(v49);
  free(v50);
  if (a6)
  {
    *a6 = a3;
    *(a6 + 4) = v90;
    memcpy((a6 + 5), __src, 0xBBuLL);
    *(a6 + 192) = HIDWORD(v100);
    *(a6 + 196) = v91;
    *(a6 + 197) = v100;
    memcpy((a6 + 198), v127, 0xBAuLL);
    *(a6 + 384) = v10;
    *(a6 + 392) = HIDWORD(v99);
    *(a6 + 396) = v99;
    *(a6 + 397) = v125;
    *(a6 + 399) = v126;
    *(a6 + 400) = v9;
    memcpy((a6 + 408), v124, 0xB8uLL);
    *(a6 + 592) = v51;
    *(a6 + 596) = a7;
    memcpy((a6 + 597), v123, 0xBBuLL);
    *(a6 + 784) = v23;
    *(a6 + 792) = v8;
    *(a6 + 800) = v11;
    *(a6 + 808) = v104;
    *(a6 + 812) = v96;
    *(a6 + 813) = v121;
    *(a6 + 815) = v122;
    *(a6 + 816) = v12;
    memcpy((a6 + 824), v120, 0xB8uLL);
    memcpy((a6 + 1008), v119, 0x358uLL);
  }
}

uint64_t sub_29576FBA8()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_29576FC00()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_29576FC58()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_29576FCB0()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_29576FD08()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_29576FD60()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_29576FDB8()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_29576FE10()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_29576FE68()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_29576FEC0()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_29576FF18()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_29576FF70()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_29576FFC8()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_295770020()
{
  sub_295762658();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_295770078(uint64_t a1, _BYTE *a2)
{
  sub_29574C690();
  result = FigDebugAssert3();
  *a2 = *(a1 + 2384) & 1;
  return result;
}

uint64_t sub_2957700F4()
{
  sub_295762658();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_29577014C()
{
  sub_295762658();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_2957701A4()
{
  sub_295762658();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_2957701FC()
{
  sub_295762658();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_2957705B4()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_29577060C()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_295770664()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_2957706BC()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_295770714()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_29577076C()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_2957707C4()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_29577081C()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_295770874()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_295770A4C()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_295770AA4()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_295770AFC()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_295770B54()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_295770BAC()
{
  sub_295762658();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_295770C04()
{
  sub_295762658();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_295770C5C()
{
  sub_295762658();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_295770CB4()
{
  sub_295762658();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_295770D0C()
{
  sub_295762658();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_295770D64()
{
  sub_295762658();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_295770DBC()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_295770E14()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_295770E6C()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_295770EC4()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_295770F1C()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_295770F74()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_295770FCC()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_295771024()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_29577107C()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_2957710D4()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_29577112C()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_295771184()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_2957711DC()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_295771234()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_29577128C()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_2957712E4()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_29577133C()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_295771394()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_2957713EC()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_295771444()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_29577149C()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_2957714F4()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_29577154C()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_2957715A4()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_29577177C()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_2957717D4()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_29577182C()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_295771884()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_2957718DC()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_295771934()
{
  sub_295762668();
  FigDebugAssert3();
  sub_295762668();
  return FigDebugAssert3();
}

uint64_t sub_2957719E0()
{
  sub_295762668();
  FigDebugAssert3();
  sub_295762668();
  return FigDebugAssert3();
}

uint64_t sub_295772098(void *a1, const char *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9)
{
  v10 = sub_295772FE4(a1, a2, a9, a3, a4, a5, a6, a7, a8);
  v19 = v10;
  if (v10)
  {
    objc_msgSend_floatValue(v10, v11, v12, v13, v14, v15, v16, v17, v18);
    v20 = 0;
    *a3 = v21;
  }

  else
  {
    v20 = 4294954516;
  }

  return v20;
}

uint64_t sub_2957720F0(void *a1, const char *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9)
{
  v10 = sub_295772FE4(a1, a2, a9, a3, a4, a5, a6, a7, a8);
  v19 = v10;
  if (v10)
  {
    v20 = 0;
    *a3 = objc_msgSend_integerValue(v10, v11, v12, v13, v14, v15, v16, v17, v18);
  }

  else
  {
    v20 = 4294954516;
  }

  return v20;
}

uint64_t sub_2957726B4(void *a1, const char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9)
{
  v10 = sub_295772FE4(a1, a2, a9, a3, a4, a5, a6, a7, a8);
  v19 = v10;
  if (v10)
  {
    objc_msgSend_doubleValue(v10, v11, v12, v13, v14, v15, v16, v17, v18);
    v20 = 0;
    *a3 = v21;
  }

  else
  {
    v20 = 4294954516;
  }

  return v20;
}

void sub_29577270C(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v266 = a2;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0;
  sub_29576166C(a1, a3, a4, a5);
  *a4 = 0;
  v16 = sub_295763E10(v9, @"isPassEnabled", v10, v11, v12, v13, v14, v15, v266);
  v25 = sub_2957720F0(v16, v17, v18, v19, v20, v21, v22, v23, v24);
  if (!v25)
  {
    sub_295763E34();
    *(a4 + 1) = v32;
  }

  v33 = sub_295763E10(v25, @"epErrorLimitWidePix", v26, v27, v28, v29, v30, v31, v267);
  v42 = sub_2957726B4(v33, v34, v35, v36, v37, v38, v39, v40, v41);
  if (!v42)
  {
    *(a4 + 8) = 0;
  }

  v49 = sub_295763E10(v42, @"rangePFL_T", v43, v44, v45, v46, v47, v48, v268);
  v58 = sub_2957726B4(v49, v50, v51, v52, v53, v54, v55, v56, v57);
  if (!v58)
  {
    *(a4 + 16) = 0;
  }

  v65 = sub_295763E10(v58, @"rangePFL_W", v59, v60, v61, v62, v63, v64, v269);
  v74 = sub_2957726B4(v65, v66, v67, v68, v69, v70, v71, v72, v73);
  if (!v74)
  {
    *(a4 + 24) = 0;
  }

  v81 = sub_295763E10(v74, @"rangeOCxT", v75, v76, v77, v78, v79, v80, v270);
  v90 = sub_2957726B4(v81, v82, v83, v84, v85, v86, v87, v88, v89);
  if (!v90)
  {
    *(a4 + 32) = 0;
  }

  v97 = sub_295763E10(v90, @"rangeOCxW", v91, v92, v93, v94, v95, v96, v271);
  v106 = sub_2957726B4(v97, v98, v99, v100, v101, v102, v103, v104, v105);
  if (!v106)
  {
    *(a4 + 40) = 0;
  }

  v113 = sub_295763E10(v106, @"rangeOCyT", v107, v108, v109, v110, v111, v112, v272);
  v122 = sub_2957726B4(v113, v114, v115, v116, v117, v118, v119, v120, v121);
  if (!v122)
  {
    *(a4 + 48) = 0;
  }

  v129 = sub_295763E10(v122, @"rangeOCyW", v123, v124, v125, v126, v127, v128, v273);
  v138 = sub_2957726B4(v129, v130, v131, v132, v133, v134, v135, v136, v137);
  if (!v138)
  {
    *(a4 + 56) = 0;
  }

  v145 = sub_295763E10(v138, @"rangePFL_T_dist", v139, v140, v141, v142, v143, v144, v274);
  v154 = sub_2957726B4(v145, v146, v147, v148, v149, v150, v151, v152, v153);
  if (!v154)
  {
    *(a4 + 64) = 0;
  }

  v161 = sub_295763E10(v154, @"rangePFL_W_dist", v155, v156, v157, v158, v159, v160, v275);
  v170 = sub_2957726B4(v161, v162, v163, v164, v165, v166, v167, v168, v169);
  if (!v170)
  {
    *(a4 + 72) = 0;
  }

  v177 = sub_295763E10(v170, @"rangeOCxT_dist", v171, v172, v173, v174, v175, v176, v276);
  v186 = sub_2957726B4(v177, v178, v179, v180, v181, v182, v183, v184, v185);
  if (!v186)
  {
    *(a4 + 80) = 0;
  }

  v193 = sub_295763E10(v186, @"rangeOCxW_dist", v187, v188, v189, v190, v191, v192, v277);
  v202 = sub_2957726B4(v193, v194, v195, v196, v197, v198, v199, v200, v201);
  if (!v202)
  {
    *(a4 + 88) = 0;
  }

  v209 = sub_295763E10(v202, @"minPointsForAdjustment", v203, v204, v205, v206, v207, v208, v278);
  v218 = sub_2957720F0(v209, v210, v211, v212, v213, v214, v215, v216, v217);
  if (!v218)
  {
    *(a4 + 96) = 0;
  }

  v225 = sub_295763E10(v218, @"spgEpsilon", v219, v220, v221, v222, v223, v224, v279);
  v234 = sub_2957726B4(v225, v226, v227, v228, v229, v230, v231, v232, v233);
  if (!v234)
  {
    *(a4 + 104) = 0;
  }

  v241 = sub_295763E10(v234, @"spgMaxIterations", v235, v236, v237, v238, v239, v240, v280);
  v250 = sub_2957720F0(v241, v242, v243, v244, v245, v246, v247, v248, v249);
  if (!v250)
  {
    *(a4 + 112) = 0;
  }

  v257 = sub_295763E10(v250, @"spgMaxAlphaIterations", v251, v252, v253, v254, v255, v256, v281);
  if (!sub_2957720F0(v257, v258, v259, v260, v261, v262, v263, v264, v265))
  {
    *(a4 + 116) = 0;
  }

  *a4 = 1;
}

void *sub_295772FE4(void *a1, const char *a2, float a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = objc_msgSend_valueForKey_(a1, a2, a2, a5, a6, a7, a8, a9, a3);
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
      if (objc_msgSend_count(v10, v11, v12, v13, v14, v15, v16, v17, v18) < 1)
      {
        v26 = 0;
        v9 = v10;
      }

      else
      {
        v9 = objc_msgSend_objectAtIndexedSubscript_(v10, v19, 0, v20, v21, v22, v23, v24, v25);

        v26 = v9;
      }
    }

    else
    {
      v26 = v9;
    }
  }

  else
  {
    v26 = 0;
  }

  v27 = v26;

  return v26;
}

uint64_t sub_295773098()
{
  fig_log_get_emitter();
  sub_295752B10();
  return FigDebugAssert3();
}

uint64_t sub_295773110()
{
  fig_log_get_emitter();
  sub_295752B10();
  return FigDebugAssert3();
}

uint64_t sub_295773188()
{
  fig_log_get_emitter();
  sub_295752B10();
  return FigDebugAssert3();
}

uint64_t sub_295773200()
{
  fig_log_get_emitter();
  sub_295752B10();
  return FigDebugAssert3();
}

uint64_t sub_295773278()
{
  fig_log_get_emitter();
  sub_295752B10();
  return FigDebugAssert3();
}

uint64_t sub_2957732F0()
{
  fig_log_get_emitter();
  sub_295752B10();
  return FigDebugAssert3();
}

uint64_t sub_295773368()
{
  fig_log_get_emitter();
  sub_295752B10();
  return FigDebugAssert3();
}

uint64_t sub_2957733E0()
{
  fig_log_get_emitter();
  sub_295752B10();
  return FigDebugAssert3();
}

uint64_t sub_295773458()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_2957734B0()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_295773508()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

uint64_t sub_295773560()
{
  sub_29574C690();
  sub_29574C6A0();
  return FigDebugAssert3();
}

simd_float3x3 __invert_f3(simd_float3x3 a1)
{
  MEMORY[0x2A1C76640](a1.columns[0], a1.columns[1], a1.columns[2]);
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}