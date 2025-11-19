uint64_t sub_2772D64A8(uint64_t result, uint64_t a2, double a3, double a4, double a5, double a6, double a7, __n128 a8, __n128 a9, __n128 a10)
{
  v2784 = *MEMORY[0x277D85DE8];
  if (*(result + 816))
  {
    if (*(result + 832))
    {
      v11 = 0;
    }

    else
    {
      v11 = a2 + 112;
    }
  }

  else
  {
    v11 = 0;
  }

  v2726 = v11;
  if (*(result + 817))
  {
    if (*(result + 832))
    {
      v12 = 0;
    }

    else
    {
      v12 = a2 + 624;
    }
  }

  else
  {
    v12 = 0;
  }

  v2757 = *(result + 1104);
  if (*(result + 1104))
  {
    v13 = 0;
    v14 = *(result + 828);
    v15 = (16 * *(result + 824));
    v16 = *(a2 + 72);
    v2719 = *(a2 + 64);
    v17 = *(v16 + 152);
    v18 = *(v16 + 136);
    v2715 = (*(v16 + 40) + v15 + (8 * v14 * v17));
    v2717 = (*(v16 + 32) + v15 + (v18 * 16 * v14));
    v2718 = result + 848;
    v2700 = 2 * v18;
    v2662 = 3 * v18;
    v2727 = v18;
    v2728 = v17;
    v2677 = 2 * v17;
    v2655 = 4 * v18;
    v2656 = 3 * v17;
    v2716 = 16 * v14;
    v2661 = (16 * v14) >> 1;
    v2654 = 4 * v17;
    v19 = 0uLL;
    v20.i64[0] = 0x10001000100010;
    v20.i64[1] = 0x10001000100010;
    v21.i64[0] = 0x20002000200020;
    v21.i64[1] = 0x20002000200020;
    v2687 = result;
    v2720 = v12;
    v2714 = 16 * *(result + 824);
    while (1)
    {
      v22 = (v2718 + 16 * v13);
      v23 = *(v22 + 15);
      v24 = *(result + 858);
      if (v24 >= 0x103)
      {
        v24 = 259;
      }

      v25 = &word_280A6AB60[40 * v24];
      v26 = v25[v13 + 24];
      v27 = v26 >> 8;
      v28 = *(v25 + v13 + 32);
      v29 = byte_2773B3BA0[v28];
      v30 = byte_2773B3BB0[v28];
      if (v23 == 6)
      {
        break;
      }

      v101 = (v23 - 4);
      v102 = *(v22 + v101 + 8);
      v103 = &v22[2 * v101];
      v104 = *v103;
      v105 = v103[1];
      v106 = *(v2719[v101] + 8 * v102);
      v107 = v105 & 3 | (4 * (v104 & 3u));
      v108 = v104 & 7;
      v109 = v105 & 7;
      v110 = v109 | (16 * v108);
      v111 = *(v106 + 64);
      v112 = *(v106 + 72);
      v113 = *(v106 + 164);
      v114 = *(v106 + 168);
      v115 = *(v106 + 180);
      v116 = *(v106 + 184);
      v117 = *(v106 + 132);
      v118 = *(v106 + 148);
      if (v2757 == 1)
      {
        v119 = v15 + (v104 >> 2);
        v120 = v2716 + (v105 >> 2);
        if (v119 <= -18)
        {
          v119 = -18;
        }

        if (v120 <= -18)
        {
          v120 = -18;
        }

        if (v119 >= v113 + 1)
        {
          v121 = v113 + 1;
        }

        else
        {
          v121 = v119;
        }

        if (v120 >= v117 + 1)
        {
          v122 = v117 + 1;
        }

        else
        {
          v122 = v120;
        }

        v123 = v122 * v114;
        v124 = (v111 + v123 + v121);
        v125 = ((v104 >> 2) & 0xFFFFFFFE) + v15;
        v126 = v2661 + (v105 >> 3);
        if (v125 <= -16)
        {
          v125 = -16;
        }

        if (v126 <= -8)
        {
          v126 = -8;
        }

        if (v125 >= v115 - 2)
        {
          v125 = v115 - 2;
        }

        if (v126 >= v118)
        {
          v126 = v118 - 1;
        }

        v127 = v125;
        v128 = v126 * v116;
        _X27 = (v112 + v125 + v128);
        switch(v105 & 3 | (4 * (v104 & 3)))
        {
          case 1:
            v406 = 0;
            v407 = (v124 - 2 * v114);
            v408 = (v407 + v114 + v114);
            v409 = vzip1q_s8(*(v408 + v114 + v114), v19);
            v410 = vzip1q_s8(*(v408 + v114), v19);
            v411 = vzip1q_s8(*v408, v19);
            v412 = vzip1q_s8(*(v407 + v114), v19);
            v413 = vzip1q_s8(*v407, v19);
            v414 = (v111 + 5 * v114 + v121 + v123 - 2 * v114);
            do
            {
              v415 = v412;
              v412 = v411;
              v411 = v410;
              v410 = v409;
              v409 = vzip1q_s8(*v414, v19);
              v416 = vsubq_s16(vshlq_n_s16(vaddq_s16(v412, v411), 2uLL), vaddq_s16(v415, v410));
              *(&v2758 + v406) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v413, v416), vshlq_n_s16(v416, 2uLL)), vaddq_s16(v409, v20)), 5uLL))), v412);
              v406 += 32;
              v414 = (v414 + v114);
              v413 = v415;
            }

            while (v406 != 512);
            v417 = 0;
            v418 = v124 - 2 * v114;
            v419 = *(v418 + 8);
            v420 = &v418[v114 + 8];
            v421 = (v420 + v114 + v114);
            v422 = vzip1q_s8(*(v421 + v114), v19);
            v423 = vzip1q_s8(*v421, v19);
            v424 = vzip1q_s8(*(v420 + v114), v19);
            v425 = vzip1q_s8(*v420, v19);
            v426 = vzip1q_s8(v419, v19);
            v427 = (v111 + 5 * v114 + v121 + v123 - 2 * v114 + 8);
            v288 = v2727;
            v130 = v2728;
            v289 = v2700;
            do
            {
              a8 = v425;
              v425 = v424;
              v424 = v423;
              v423 = v422;
              v422 = vzip1q_s8(*v427, v19);
              v428 = vsubq_s16(vshlq_n_s16(vaddq_s16(v425, v424), 2uLL), vaddq_s16(a8, v423));
              a10 = vshlq_n_s16(v428, 2uLL);
              v429 = vaddq_s16(vaddq_s16(v426, v428), a10);
              a9 = vaddq_s16(v422, v20);
              *(&v2759 + v417) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(v429, a9), 5uLL))), v425);
              v417 += 32;
              v427 = (v427 + v114);
              v426 = a8;
            }

            while (v417 != 512);
            goto LABEL_291;
          case 2:
            v349 = 0;
            v350 = (v124 - 2 * v114);
            v351 = (v350 + v114 + v114);
            v352 = vzip1q_s8(*(v351 + v114 + v114), v19);
            v353 = vzip1q_s8(*(v351 + v114), v19);
            v354 = vzip1q_s8(*v351, v19);
            v355 = vzip1q_s8(*(v350 + v114), v19);
            v356 = vzip1q_s8(*v350, v19);
            v357 = (v111 + 5 * v114 + v121 + v123 - 2 * v114);
            do
            {
              v358 = v355;
              v355 = v354;
              v354 = v353;
              v353 = v352;
              v359 = &v2758.i8[v349];
              v352 = vzip1q_s8(*v357, v19);
              v360 = vsubq_s16(vshlq_n_s16(vaddq_s16(v355, v354), 2uLL), vaddq_s16(v358, v353));
              *v360.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v356, v360), vshlq_n_s16(v360, 2uLL)), vaddq_s16(v352, v20)), 5uLL));
              v361 = v19.i64[0];
              vst2_s8(v359, v360);
              v349 += 32;
              v357 = (v357 + v114);
              v356 = v358;
            }

            while (v349 != 512);
            v362 = 0;
            v363 = v124 - 2 * v114;
            v364 = *(v363 + 8);
            v365 = &v363[v114 + 8];
            v366 = (v365 + v114 + v114);
            v367 = vzip1q_s8(*(v366 + v114), v19);
            v368 = vzip1q_s8(*v366, v19);
            v369 = vzip1q_s8(*(v365 + v114), v19);
            v370 = vzip1q_s8(*v365, v19);
            v371 = vzip1q_s8(v364, v19);
            v372 = (v111 + 5 * v114 + v121 + v123 - 2 * v114 + 8);
            v288 = v2727;
            v130 = v2728;
            v289 = v2700;
            do
            {
              a8 = v370;
              v370 = v369;
              v369 = v368;
              v368 = v367;
              v373 = &v2759.i8[v362];
              v367 = vzip1q_s8(*v372, v19);
              v374 = vsubq_s16(vshlq_n_s16(vaddq_s16(v370, v369), 2uLL), vaddq_s16(a8, v368));
              a10 = vshlq_n_s16(v374, 2uLL);
              v375 = vaddq_s16(vaddq_s16(v371, v374), a10);
              a9 = vaddq_s16(v367, v20);
              a9.n128_u64[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(v375, a9), 5uLL));
              a10.n128_u64[0] = v19.i64[0];
              vst2_s8(v373, a9);
              v362 += 32;
              v372 = (v372 + v114);
              v371 = a8;
            }

            while (v362 != 512);
            goto LABEL_291;
          case 3:
            v382 = 0;
            v383 = (v124 - 2 * v114);
            v384 = (v383 + v114 + v114);
            v385 = vzip1q_s8(*(v384 + v114 + v114), v19);
            v386 = vzip1q_s8(*(v384 + v114), v19);
            v387 = vzip1q_s8(*v384, v19);
            v388 = vzip1q_s8(*(v383 + v114), v19);
            v389 = vzip1q_s8(*v383, v19);
            v390 = (v111 + 5 * v114 + v121 + v123 - 2 * v114);
            do
            {
              v391 = v388;
              v388 = v387;
              v387 = v386;
              v386 = v385;
              v385 = vzip1q_s8(*v390, v19);
              v392 = vsubq_s16(vshlq_n_s16(vaddq_s16(v388, v387), 2uLL), vaddq_s16(v391, v386));
              *(&v2758 + v382) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v389, v392), vshlq_n_s16(v392, 2uLL)), vaddq_s16(v385, v20)), 5uLL))), v387);
              v382 += 32;
              v390 = (v390 + v114);
              v389 = v391;
            }

            while (v382 != 512);
            v393 = 0;
            v394 = v124 - 2 * v114;
            v395 = *(v394 + 8);
            v396 = &v394[v114 + 8];
            v397 = (v396 + v114 + v114);
            v398 = vzip1q_s8(*(v397 + v114), v19);
            v399 = vzip1q_s8(*v397, v19);
            v400 = vzip1q_s8(*(v396 + v114), v19);
            v401 = vzip1q_s8(*v396, v19);
            v402 = vzip1q_s8(v395, v19);
            v403 = (v111 + 5 * v114 + v121 + v123 - 2 * v114 + 8);
            v288 = v2727;
            v130 = v2728;
            v289 = v2700;
            do
            {
              a8 = v401;
              v401 = v400;
              v400 = v399;
              v399 = v398;
              v398 = vzip1q_s8(*v403, v19);
              v404 = vsubq_s16(vshlq_n_s16(vaddq_s16(v401, v400), 2uLL), vaddq_s16(a8, v399));
              a10 = vshlq_n_s16(v404, 2uLL);
              v405 = vaddq_s16(vaddq_s16(v402, v404), a10);
              a9 = vaddq_s16(v398, v20);
              *(&v2759 + v393) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(v405, a9), 5uLL))), v400);
              v393 += 32;
              v403 = (v403 + v114);
              v402 = a8;
            }

            while (v393 != 512);
            goto LABEL_291;
          case 4:
            v281 = 0;
            v282 = (v124 - 2);
            do
            {
              v283 = *v282;
              v282 = (v282 + v114);
              v284 = vzip1q_s8(vextq_s8(v283, v283, 2uLL), v19);
              v285 = vsubq_s16(vshlq_n_s16(vaddq_s16(v284, vzip1q_s8(vextq_s8(v283, v283, 3uLL), v19)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v283, v283, 1uLL), v19), vzip1q_s8(vextq_s8(v283, v283, 4uLL), v19)));
              *(&v2758 + v281) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v285, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v283, v19), vzip1q_s8(vextq_s8(v283, v283, 5uLL), v19)), v285)), v20), 5uLL))), v284);
              v281 += 32;
            }

            while (v281 != 512);
            v286 = 0;
            v287 = (v124 + 6);
            v288 = v2727;
            v130 = v2728;
            v289 = v2700;
            do
            {
              v290 = *v287;
              v287 = (v287 + v114);
              v291 = vzip1q_s8(vextq_s8(v290, v290, 2uLL), v19);
              v292 = vsubq_s16(vshlq_n_s16(vaddq_s16(v291, vzip1q_s8(vextq_s8(v290, v290, 3uLL), v19)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v290, v290, 1uLL), v19), vzip1q_s8(vextq_s8(v290, v290, 4uLL), v19)));
              *(&v2759 + v286) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v292, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v290, v19), vzip1q_s8(vextq_s8(v290, v290, 5uLL), v19)), v292)), v20), 5uLL))), v291);
              v286 += 32;
            }

            while (v286 != 512);
            goto LABEL_291;
          case 5:
            v376 = v111 + v123 + v121;
            v377 = v108;
            v378 = v125;
            v379 = v114;
            v380 = v110;
            v381 = 2;
            goto LABEL_283;
          case 6:
            v2725 = v125;
            v2712 = v105 & 7 | (16 * (v104 & 7));
            v2736 = v10;
            v2750 = v19;
            v278 = v104 & 7;
            v279 = v105 & 7;
            v280 = v112;
            sub_27729B1B0(v2758.i8, 0x20u, v111 + v123 + v121, v114);
            sub_27729B1B0(v2759.i8, 0x20u, v124 + 8, v114);
            goto LABEL_289;
          case 7:
            v376 = v111 + v123 + v121;
            v377 = v108;
            v378 = v125;
            v379 = v114;
            v380 = v110;
            v381 = 3;
LABEL_283:
            v430 = 2;
            goto LABEL_286;
          case 8:
            v512 = 0;
            v513 = (v124 - 2);
            do
            {
              v514 = &v2758.i8[v512];
              v515 = *v513;
              v513 = (v513 + v114);
              v516 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v515, v515, 2uLL), v19), vzip1q_s8(vextq_s8(v515, v515, 3uLL), v19)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v515, v515, 1uLL), v19), vzip1q_s8(vextq_s8(v515, v515, 4uLL), v19)));
              *v515.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v516, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v515, v19), vzip1q_s8(vextq_s8(v515, v515, 5uLL), v19)), v516)), v20), 5uLL));
              v516.i64[0] = v19.i64[0];
              vst2_s8(v514, v515);
              v512 += 32;
            }

            while (v512 != 512);
            v517 = 0;
            v518 = (v124 + 6);
            v288 = v2727;
            v130 = v2728;
            v289 = v2700;
            do
            {
              v519 = &v2759.i8[v517];
              v520 = *v518;
              v518 = (v518 + v114);
              v521 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v520, v520, 2uLL), v19), vzip1q_s8(vextq_s8(v520, v520, 3uLL), v19)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v520, v520, 1uLL), v19), vzip1q_s8(vextq_s8(v520, v520, 4uLL), v19)));
              *v520.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v521, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v520, v19), vzip1q_s8(vextq_s8(v520, v520, 5uLL), v19)), v521)), v20), 5uLL));
              v521.i64[0] = v19.i64[0];
              vst2_s8(v519, v520);
              v517 += 32;
            }

            while (v517 != 512);
            goto LABEL_291;
          case 9:
            v2725 = v125;
            v2712 = v105 & 7 | (16 * (v104 & 7));
            v2736 = v10;
            v2750 = v19;
            v278 = v104 & 7;
            v279 = v105 & 7;
            v280 = v112;
            sub_27729B614(v2758.i8, 0x20u, v111 + v123 + v121, v114, 16);
            sub_27729B614(v2759.i8, 0x20u, v124 + 8, v114, 16);
            goto LABEL_289;
          case 0xA:
            v2725 = v125;
            v2712 = v105 & 7 | (16 * (v104 & 7));
            v2736 = v10;
            v2750 = v19;
            v278 = v104 & 7;
            v279 = v105 & 7;
            v280 = v112;
            sub_27729B7DC(&v2758, 32, v111 + v123 + v121, v114, 16);
            sub_27729B7DC(&v2759, 32, v124 + 8, v114, 16);
            goto LABEL_289;
          case 0xB:
            v2725 = v125;
            v2712 = v105 & 7 | (16 * (v104 & 7));
            v2736 = v10;
            v2750 = v19;
            v278 = v104 & 7;
            v279 = v105 & 7;
            v280 = v112;
            sub_27729B98C(v2758.i8, 0x20u, v111 + v123 + v121, v114, 16);
            sub_27729B98C(v2759.i8, 0x20u, v124 + 8, v114, 16);
            goto LABEL_289;
          case 0xC:
            v318 = 0;
            v319 = (v124 - 2);
            do
            {
              v320 = *v319;
              v319 = (v319 + v114);
              v321 = vzip1q_s8(vextq_s8(v320, v320, 3uLL), v19);
              v322 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v320, v320, 2uLL), v19), v321), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v320, v320, 1uLL), v19), vzip1q_s8(vextq_s8(v320, v320, 4uLL), v19)));
              *(&v2758 + v318) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v322, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v320, v19), vzip1q_s8(vextq_s8(v320, v320, 5uLL), v19)), v322)), v20), 5uLL))), v321);
              v318 += 32;
            }

            while (v318 != 512);
            v323 = 0;
            v324 = (v124 + 6);
            v288 = v2727;
            v130 = v2728;
            v289 = v2700;
            do
            {
              v325 = *v324;
              v324 = (v324 + v114);
              v326 = vzip1q_s8(vextq_s8(v325, v325, 3uLL), v19);
              v327 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v325, v325, 2uLL), v19), v326), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v325, v325, 1uLL), v19), vzip1q_s8(vextq_s8(v325, v325, 4uLL), v19)));
              *(&v2759 + v323) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v327, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v325, v19), vzip1q_s8(vextq_s8(v325, v325, 5uLL), v19)), v327)), v20), 5uLL))), v326);
              v323 += 32;
            }

            while (v323 != 512);
            goto LABEL_291;
          case 0xD:
            v376 = v111 + v123 + v121;
            v377 = v108;
            v378 = v125;
            v379 = v114;
            v380 = v110;
            v381 = 2;
            goto LABEL_285;
          case 0xE:
            v2725 = v125;
            v2712 = v105 & 7 | (16 * (v104 & 7));
            v2736 = v10;
            v2750 = v19;
            v278 = v104 & 7;
            v279 = v105 & 7;
            v280 = v112;
            sub_27729BBEC(v2758.i8, 0x20u, v111 + v123 + v121, v114);
            sub_27729BBEC(v2759.i8, 0x20u, v124 + 8, v114);
LABEL_289:
            v127 = v2725;
            v110 = v2712;
            v112 = v280;
            v109 = v279;
            v108 = v278;
            goto LABEL_290;
          case 0xF:
            v376 = v111 + v123 + v121;
            v377 = v108;
            v378 = v125;
            v379 = v114;
            v380 = v110;
            v381 = 3;
LABEL_285:
            v430 = 3;
LABEL_286:
            v2736 = v10;
            v2750 = v19;
            sub_27729AF04(v2758.i8, v376, v379, 16, v381, v430);
            v127 = v378;
            v108 = v377;
            v110 = v380;
LABEL_290:
            v21.i64[0] = 0x20002000200020;
            v21.i64[1] = 0x20002000200020;
            v20.i64[0] = 0x10001000100010;
            v20.i64[1] = 0x10001000100010;
            v10 = v2736;
            v19 = v2750;
            v12 = v2720;
            result = v2687;
            v288 = v2727;
            v130 = v2728;
            v289 = v2700;
LABEL_291:
            v431 = 0;
            v432 = v2717;
            v433 = v2726;
            do
            {
              v435 = *(&v2758 + v431);
              v434 = *(&v2758 + v431 + 16);
              v437 = *(&v2760 + v431);
              v436 = v2761[v431 / 0x10];
              if (v2726)
              {
                v438 = *v433;
                a8 = *(v433 + 16);
                a9 = *(v433 + 32);
                a10 = *(v433 + 48);
                v433 += 64;
                v435 = vaddq_s16(v438, v435);
                v434 = vaddq_s16(a8, v434);
                v437 = vaddq_s16(a9, v437);
                v436 = vaddq_s16(a10, v436);
              }

              *v432 = vqmovun_high_s16(vqmovun_s16(v435), v434);
              *(v432 + v288) = vqmovun_high_s16(vqmovun_s16(v437), v436);
              v432 = (v432 + v289);
              v431 += 64;
            }

            while (v431 != 512);
            break;
          default:
            v130 = v2728;
            if (v2726)
            {
              v131 = 0;
              v132 = v2717;
              do
              {
                v133 = *v124;
                v124 = (v124 + v114);
                *v132 = vqmovun_high_s16(vqmovun_s16(vaddq_s16(*(v2726 + v131), vzip1q_s8(v133, v19))), vaddq_s16(*(v2726 + v131 + 16), vzip2q_s8(v133, v19)));
                v132 = (v132 + v2727);
                v131 += 32;
              }

              while (v131 != 512);
            }

            else
            {
              v522 = 16;
              v523 = v2717;
              do
              {
                v524 = *v124;
                v124 = (v124 + v114);
                *v523 = v524;
                v523 = (v523 + v2727);
                --v522;
              }

              while (v522);
            }

            break;
        }

        if (!v110)
        {
          if (v12)
          {
            v462 = 0;
            v463 = v2715;
            do
            {
              v464 = *_X27;
              _X27 = (_X27 + v116);
              *v463 = vqmovun_high_s16(vqmovun_s16(vaddq_s16(*(v12 + v462), vzip1q_s8(v464, v19))), vaddq_s16(*(v12 + v462 + 16), vzip2q_s8(v464, v19)));
              v463 = (v463 + v130);
              v462 += 32;
            }

            while (v462 != 256);
          }

          else
          {
            v509 = 8;
            v510 = v2715;
            do
            {
              v511 = *_X27;
              _X27 = (_X27 + v116);
              *v510 = v511;
              v510 = (v510 + v130);
              --v509;
            }

            while (v509);
          }

          goto LABEL_317;
        }

        v439 = v109 * v108;
        v440 = v19;
        v440.i32[0] = 65537 * (8 - v109) * (8 - v108);
        v441 = v19;
        v441.i32[0] = 65537 * (8 - v109) * v108;
        v442 = v19;
        v442.i32[0] = 65537 * (8 - v108) * v109;
        v443 = v19;
        v443.i32[0] = 65537 * v109 * v108;
        v2776 = vqtbl1q_s8(v440, xmmword_2773B3DF0);
        v2777 = vqtbl1q_s8(v441, xmmword_2773B3DF0);
        v444 = vqtbl1q_s8(v443, xmmword_2773B3DF0);
        v2778 = vqtbl1q_s8(v442, xmmword_2773B3DF0);
        v2779 = v444;
        if (v110 == 64)
        {
          __asm { PRFM            #0, [X27] }

          v466 = 9;
          v461 = v2766;
          do
          {
            v467 = _X27;
            _X27 = (_X27 + v116);
            __asm { PRFM            #0, [X27] }

            v469 = vextq_s8(*v467, *v467, 2uLL);
            v469.i16[7] = v467[1].i16[0];
            v470 = vrhaddq_u8(*v467, v469);
            v469.i64[0] = v19.i64[0];
            v461[3] = vzip2q_s8(v470, v19);
            v461 += 2;
            vst2_s8(v461->i8, *(&v469 - 8));
            --v466;
          }

          while (v466 > 2);
          v471 = vextq_s8(*_X27, *_X27, 2uLL);
          v471.i16[7] = _X27[1].i16[0];
          v460 = vrhaddq_u8(*_X27, v471);
          v453 = v461 + 2;
          v455 = v2677;
LABEL_308:
          v472 = v19.i64[0];
          vst2_s8(v453->i8, v460);
          v461[3] = vzip2q_s8(v460, v19);
        }

        else
        {
          if (v110 == 4)
          {
            _X8 = &_X27->i8[v116];
            __asm { PRFM            #0, [X8] }

            v451 = *_X27;
            v452 = (v112 + v127 + v128);
            v453 = &v2767;
            v454 = 9;
            v455 = v2677;
            do
            {
              _X12 = &v452->i8[2 * v116];
              v452 = (v452 + v116);
              __asm { PRFM            #0, [X12] }

              v458 = *v452;
              v459 = vrhaddq_u8(v451, *v452);
              *v453 = vzip1q_s8(v459, v19);
              v453[1] = vzip2q_s8(v459, v19);
              v453 += 2;
              --v454;
              v451 = v458;
            }

            while (v454 > 2);
            v460 = vrhaddq_u8(v458, *(v452 + v116));
            v461 = v453 - 2;
            goto LABEL_308;
          }

          v473 = 0;
          v474 = v439 - (8 * v108 + 8 * v109) + 64;
          v475 = v19;
          v475.i32[0] = v474 | (v474 << 16);
          v476 = vqtbl1q_s8(v475, xmmword_2773B3DF0);
          v477 = v19;
          v477.i32[0] = (8 * v108 - v439) | ((8 * v108 - v439) << 16);
          v478 = v19;
          v478.i32[0] = (8 * v109 - v439) | ((8 * v109 - v439) << 16);
          v479 = vqtbl1q_s8(v477, xmmword_2773B3DF0);
          v480 = vqtbl1q_s8(v478, xmmword_2773B3DF0);
          v2776 = v476;
          v2777 = v479;
          v2778 = v480;
          _X9 = &_X27->i8[v116];
          __asm { PRFM            #0, [X9] }

          a8.n128_u64[0] = _X27->i64[0];
          v483 = vqtbl1q_s8(a8, xmmword_2773B3E00);
          v483.i16[3] = _X27->i16[4];
          v484 = vzip1q_s8(v483, v19);
          v485 = vzip1q_s8(a8, v19);
          v486 = (v112 + v128 + v127 + v116 + 8);
          _X12 = v112 + v128 + v127 + 2 * v116;
          v455 = v2677;
          do
          {
            __asm { PRFM            #0, [X12] }

            v489 = vmlaq_s16(vmulq_s16(v479, v484), v476, v485);
            v484.i64[0] = *(v486 - 1);
            v485 = vzip1q_s8(v484, v19);
            v490 = vqtbl1q_s8(v484, xmmword_2773B3E00);
            v490.i16[3] = *v486;
            v486 = (v486 + v116);
            v484 = vzip1q_s8(v490, v19);
            *(&v2767 + v473) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v489, v480, v485), v444, v484), v21), 6uLL);
            v473 += 32;
            _X12 += v116;
          }

          while (v473 != 256);
          v491 = 0;
          _X9 = &_X27->i8[v116 + 8];
          __asm { PRFM            #0, [X9] }

          v485.i64[0] = _X27->i64[1];
          v494 = vqtbl1q_s8(v485, xmmword_2773B3E00);
          v494.i16[3] = _X27[1].i16[0];
          a9 = vzip1q_s8(v494, v19);
          a8 = vzip1q_s8(v485, v19);
          v495 = v112 + v127 + v116;
          v496 = v112 + v127 + 2 * v116 + 8;
          do
          {
            _X12 = v496 + v128;
            __asm { PRFM            #0, [X12] }

            v499 = vmlaq_s16(vmulq_s16(v479, a9), v476, a8);
            a9.n128_u64[0] = *(v495 + v128 + 8);
            a8 = vzip1q_s8(a9, v19);
            v500 = vqtbl1q_s8(a9, xmmword_2773B3E00);
            v500.i16[3] = *(v495 + v128 + 16);
            a9 = vzip1q_s8(v500, v19);
            a10 = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v499, v480, a8), v444, a9), v21), 6uLL);
            *(&v2768 + v491) = a10;
            v491 += 32;
            v495 += v116;
            v496 += v116;
          }

          while (v491 != 256);
        }

        v501 = 0;
        v502 = v2715;
        v503 = v12;
        do
        {
          v505 = *(&v2767 + v501);
          v504 = *(&v2767 + v501 + 16);
          v507 = *(&v2769 + v501);
          v506 = v2770[v501 / 0x10];
          if (v12)
          {
            v508 = *v503;
            a8 = *(v503 + 16);
            a9 = *(v503 + 32);
            a10 = *(v503 + 48);
            v503 += 64;
            v505 = vaddq_s16(v508, v505);
            v504 = vaddq_s16(a8, v504);
            v507 = vaddq_s16(a9, v507);
            v506 = vaddq_s16(a10, v506);
          }

          *v502 = vqmovun_high_s16(vqmovun_s16(v505), v504);
          *(v502 + v130) = vqmovun_high_s16(vqmovun_s16(v507), v506);
          v502 = (v502 + v455);
          v501 += 64;
        }

        while (v501 != 256);
        goto LABEL_317;
      }

      v2709 = v105 & 7 | (16 * (v104 & 7));
      v134 = v109 * v108;
      v135 = v19;
      v135.i32[0] = 65537 * (8 - v109) * (8 - v108);
      v136 = v19;
      v136.i32[0] = 65537 * (8 - v109) * v108;
      v137 = xmmword_2773B3DF0;
      v138 = vqtbl1q_s8(v135, xmmword_2773B3DF0);
      v139 = vqtbl1q_s8(v136, xmmword_2773B3DF0);
      v140 = v19;
      v140.i32[0] = 65537 * (8 - v108) * v109;
      v141 = vqtbl1q_s8(v140, xmmword_2773B3DF0);
      v142 = v19;
      v142.i32[0] = 65537 * v109 * v108;
      v143 = vqtbl1q_s8(v142, xmmword_2773B3DF0);
      v2776 = v138;
      v2777 = v139;
      v2778 = v141;
      v2779 = v143;
      switch(v26)
      {
        case 4u:
          v2711 = v104 & 7;
          v2723 = v13;
          v207 = v104 >> 2;
          v208 = v15 + v29 + (v104 >> 2);
          v209 = v2716 + v30 + (v105 >> 2);
          if (v208 <= -18)
          {
            v208 = -18;
          }

          if (v209 <= -18)
          {
            v209 = -18;
          }

          if (v208 >= v113 + 1)
          {
            v210 = v113 + 1;
          }

          else
          {
            v210 = v208;
          }

          if (v209 >= v117 + 1)
          {
            v211 = v117 + 1;
          }

          else
          {
            v211 = v209;
          }

          v212 = (v111 + v210 + v211 * v114);
          v213 = (v207 & 0xFFFFFFFE) + v15 + v29;
          v214 = (v105 >> 3) + ((v2716 + v30) >> 1);
          if (v213 <= -16)
          {
            v213 = -16;
          }

          if (v214 <= -8)
          {
            v214 = -8;
          }

          if (v213 >= v115 - 2)
          {
            v213 = v115 - 2;
          }

          v215 = v112 + v213;
          if (v214 >= v118)
          {
            v214 = v118 - 1;
          }

          v216 = v215 + v214 * v116;
          v217 = v2727;
          v218 = (v2717->i32 + v29 + (v2727 * v30));
          v219 = (v2726 + 2 * v29 + 32 * v30);
          v220 = (v2715->i32 + v29 + (v30 >> 1) * v2728);
          v221 = (v12 + 2 * v29 + 32 * (v30 >> 1));
          v2732 = v10;
          v2746 = v19;
          if (v27 == 8)
          {
            v222 = v105 & 7;
            v223 = &v212[v114];
            switch(v107)
            {
              case 1:
                v1944 = sub_27729F23C(&v2758, v212, v114, v138, v139, *v141.i64, v142, 3.52371676e-294, a8, a9, a10);
                v230 = sub_27729F23C(&v2760, v223, v114, v1944, v1945, v1946, v1947, v1948, v1949, v1950, v1951);
                goto LABEL_1048;
              case 2:
                v1657 = sub_27729F394(&v2758, v212, v114, *v138.i64, v139, v141, *v142.i64, xmmword_2773B3DF0, a8, a9, a10);
                sub_27729F394(&v2760, v223, v114, v1657, v1658, v1659, v1660, v1661, v1662, v1663, v1664);
                goto LABEL_1048;
              case 3:
                v1771 = sub_27729F4D8(&v2758, v212, v114, v138, v139, *v141.i64, v142, 3.52371676e-294, a8, a9, a10);
                v230 = sub_27729F4D8(&v2760, v223, v114, v1771, v1772, v1773, v1774, v1775, v1776, v1777, v1778);
                goto LABEL_1048;
              case 4:
                sub_27729C91C(&v2758, 8u, v212, v114);
                v230 = sub_27729C91C(&v2760, 8u, v223, v114);
                goto LABEL_1048;
              case 5:
                *v2260.i64 = sub_27729CAF0(&v2758, 8u, v212, v114, v138, *v139.i64, *v141.i64, *v142.i64, 3.52371676e-294, a8, a9, a10);
                sub_27729CAF0(&v2760, 8u, v223, v114, v2260, v2261, v2262, v2263, v2264, v2265, v2266, v2267);
                goto LABEL_1048;
              case 6:
                *v2286.i64 = sub_27729CDD0(&v2758, 8u, v212, v114, v138, v139, v141, v142, xmmword_2773B3DF0, a8, a9, a10);
                sub_27729CDD0(&v2760, 8u, v223, v114, v2286, v2287, v2288, v2289, v2290, v2291, v2292, v2293);
                goto LABEL_1048;
              case 7:
                v1903 = sub_27729D274(&v2758, 8u, v212, v114, *v138.i64, *v139.i64, *v141.i64, *v142.i64, 3.52371676e-294, a8.n128_f64[0], a9, a10);
                sub_27729D274(&v2760, 8u, v223, v114, v1903, v1904, v1905, v1906, v1907, v1908, v1909, v1910);
                goto LABEL_1048;
              case 8:
                sub_27729D550(&v2758, 8u, v212, v114);
                v230 = sub_27729D550(&v2760, 8u, v223, v114);
                goto LABEL_1048;
              case 9:
                sub_27729D714(&v2758, 8u, v212, v114);
                sub_27729D714(&v2760, 8u, v223, v114);
                goto LABEL_1048;
              case 10:
                *v2296.i64 = sub_27729F62C(&v2758, v212, v114, v138, v139, v141, v142, xmmword_2773B3DF0, a8, a9, a10);
                sub_27729F62C(&v2760, v223, v114, v2296, v2297, v2298, v2299, v2300, v2301, v2302, v2303);
                goto LABEL_1048;
              case 11:
                sub_27729DE6C(&v2758, 8u, v212, v114);
                sub_27729DE6C(&v2760, 8u, v223, v114);
                goto LABEL_1048;
              case 12:
                sub_27729E5C4(&v2758, 8u, v212, v114);
                v230 = sub_27729E5C4(&v2760, 8u, v223, v114);
                goto LABEL_1048;
              case 13:
                *v2278.i64 = sub_27729E798(&v2758, 8u, v212, v114, v138, *v139.i64, *v141.i64, *v142.i64, 3.52371676e-294, a8, a9, a10);
                sub_27729E798(&v2760, 8u, v223, v114, v2278, v2279, v2280, v2281, v2282, v2283, v2284, v2285);
                goto LABEL_1048;
              case 14:
                *v1522.i64 = sub_27729EA7C(&v2758, 8u, v212, v114, v138, v139, v141, v142, xmmword_2773B3DF0, a8, a9, a10);
                sub_27729EA7C(&v2760, 8u, v223, v114, v1522, v1523, v1524, v1525, v1526, v1527, v1528, v1529);
                goto LABEL_1048;
              case 15:
                v1751 = sub_27729EF20(&v2758, 8u, v212, v114, *v138.i64, *v139.i64, *v141.i64, *v142.i64, 3.52371676e-294, a8.n128_f64[0], a9, a10);
                sub_27729EF20(&v2760, 8u, v223, v114, v1751, v1752, v1753, v1754, v1755, v1756, v1757, v1758);
LABEL_1048:
                v217 = v2727;
                break;
              default:
                v138.i32[0] = *(v212 + v114);
                v139.i32[0] = *(v212 + 2 * v114);
                v141.i32[0] = *v212;
                v142.i32[0] = *(v212 + 3 * v114);
                v224.i64[0] = vzip1q_s8(v141, v19).u64[0];
                v225 = vzip1q_s8(v138, v19);
                v226.i64[0] = vzip1q_s8(v139, v19).u64[0];
                v227 = vzip1q_s8(v142, v19);
                v224.i64[1] = v225.i64[0];
                v226.i64[1] = v227.i64[0];
                v2758 = v224;
                v2759 = v226;
                v225.i32[0] = *v223;
                v226.i32[0] = *(v223 + v114);
                v224.i32[0] = *(v223 + 2 * v114);
                v227.i32[0] = *(v223 + 3 * v114);
                v230.i64[0] = vzip1q_s8(v225, v19).u64[0];
                v228 = vzip1q_s8(v226, v19);
                v231.i64[0] = vzip1q_s8(v224, v19).u64[0];
                v229 = vzip1q_s8(v227, v19);
                v230.i64[1] = v228.i64[0];
                v231.i64[1] = v229.i64[0];
                v2760 = v230;
                v2761[0] = v231;
                break;
            }

            v2304 = 1;
            v2305 = &v2758;
            do
            {
              v2306 = v2304;
              v230.i64[0] = v2305->i64[0];
              v228.i64[0] = v2305->i64[1];
              v231.i64[0] = v2305[1].i64[0];
              v229.i64[0] = v2305[1].i64[1];
              if (v2726)
              {
                v137.i64[0] = *v219;
                a8.n128_u64[0] = v219[4];
                a9.n128_u64[0] = v219[8];
                a10.n128_u64[0] = v219[12];
                v219 += 16;
                v230 = vaddq_s16(v137, v230);
                v228 = vaddq_s16(a8, v228);
                v231 = vaddq_s16(a9, v231);
                v229 = vaddq_s16(a10, v229);
              }

              v2304 = 0;
              v2307 = COERCE_DOUBLE(vqmovun_s16(v230));
              v2308 = COERCE_DOUBLE(vqmovun_s16(v228));
              v2309 = COERCE_DOUBLE(vqmovun_s16(v231));
              v2310 = COERCE_DOUBLE(vqmovun_s16(v229));
              *v218 = LODWORD(v2307);
              *(v218 + v217) = LODWORD(v2308);
              *(v218 + v2700) = LODWORD(v2309);
              *(v218 + v2662) = LODWORD(v2310);
              v218 = (v218 + v2655);
              v2305 += 2;
            }

            while ((v2306 & 1) != 0);
            v2311 = sub_277290798(&v2767, v216, v116, v2711, v222, v2307, v2308, v2309, v2310, v137, a8);
            sub_277290798(&v2768, v216 + (2 * v116), v116, v2711, v222, v2311, v2312, v2313, v2314, v2315, v2316);
            v2319.i64[0] = v2767.i64[1];
            v2318.i64[0] = v2767.i64[0];
            v2321.i64[0] = v2768.i64[1];
            v2320.i64[0] = v2768.i64[0];
            v12 = v2720;
            if (v2720)
            {
              v2317.i64[0] = *v221;
              a8.n128_u64[0] = v221[4];
              a9.n128_u64[0] = v221[8];
              a10.n128_u64[0] = v221[12];
              v2318 = vaddq_s16(v2317, v2318);
              v2319 = vaddq_s16(a8, v2319);
              v2320 = vaddq_s16(a9, v2320);
              v2321 = vaddq_s16(a10, v2321);
            }

            result = v2687;
            LODWORD(v15) = v2714;
            v20.i64[0] = 0x10001000100010;
            v20.i64[1] = 0x10001000100010;
            v21.i64[0] = 0x20002000200020;
            v21.i64[1] = 0x20002000200020;
            *v220 = vqmovun_s16(v2318).u32[0];
            *(v220 + v2728) = vqmovun_s16(v2319).u32[0];
            *(v220 + v2677) = vqmovun_s16(v2320).u32[0];
            *(v220 + v2656) = vqmovun_s16(v2321).u32[0];
            v13 = v2723;
            v10 = v2732;
            v19 = v2746;
LABEL_318:
            if (v2757 == 1)
            {
              return result;
            }

            break;
          }

          switch(v107)
          {
            case 1:
              v253 = sub_27729F23C(&v2758, v212, v114, v138, v139, *v141.i64, v142, 3.52371676e-294, a8, a9, a10);
              goto LABEL_1057;
            case 2:
              sub_27729F394(&v2758, v212, v114, *v138.i64, v139, v141, *v142.i64, xmmword_2773B3DF0, a8, a9, a10);
              goto LABEL_1057;
            case 3:
              v253 = sub_27729F4D8(&v2758, v212, v114, v138, v139, *v141.i64, v142, 3.52371676e-294, a8, a9, a10);
              goto LABEL_1057;
            case 4:
              v253 = sub_27729C91C(&v2758, 8u, v212, v114);
              goto LABEL_1057;
            case 5:
              sub_27729CAF0(&v2758, 8u, v212, v114, v138, *v139.i64, *v141.i64, *v142.i64, 3.52371676e-294, a8, a9, a10);
              goto LABEL_1057;
            case 6:
              sub_27729CDD0(&v2758, 8u, v212, v114, v138, v139, v141, v142, xmmword_2773B3DF0, a8, a9, a10);
              goto LABEL_1057;
            case 7:
              sub_27729D274(&v2758, 8u, v212, v114, *v138.i64, *v139.i64, *v141.i64, *v142.i64, 3.52371676e-294, a8.n128_f64[0], a9, a10);
              goto LABEL_1057;
            case 8:
              v253 = sub_27729D550(&v2758, 8u, v212, v114);
              goto LABEL_1057;
            case 9:
              sub_27729D714(&v2758, 8u, v212, v114);
              goto LABEL_1057;
            case 10:
              sub_27729F62C(&v2758, v212, v114, v138, v139, v141, v142, xmmword_2773B3DF0, a8, a9, a10);
              goto LABEL_1057;
            case 11:
              sub_27729DE6C(&v2758, 8u, v212, v114);
              goto LABEL_1057;
            case 12:
              v253 = sub_27729E5C4(&v2758, 8u, v212, v114);
              goto LABEL_1057;
            case 13:
              sub_27729E798(&v2758, 8u, v212, v114, v138, *v139.i64, *v141.i64, *v142.i64, 3.52371676e-294, a8, a9, a10);
              goto LABEL_1057;
            case 14:
              sub_27729EA7C(&v2758, 8u, v212, v114, v138, v139, v141, v142, xmmword_2773B3DF0, a8, a9, a10);
              goto LABEL_1057;
            case 15:
              sub_27729EF20(&v2758, 8u, v212, v114, *v138.i64, *v139.i64, *v141.i64, *v142.i64, 3.52371676e-294, a8.n128_f64[0], a9, a10);
LABEL_1057:
              v217 = v2727;
              break;
            default:
              v138.i32[0] = *v212;
              v139.i32[0] = *(v212 + v114);
              v141.i32[0] = *(v212 + 2 * v114);
              v142.i32[0] = *(v212 + 3 * v114);
              v253.i64[0] = vzip1q_s8(v138, v19).u64[0];
              v251 = vzip1q_s8(v139, v19);
              v254.i64[0] = vzip1q_s8(v141, v19).u64[0];
              v252 = vzip1q_s8(v142, v19);
              v253.i64[1] = v251.i64[0];
              v254.i64[1] = v252.i64[0];
              v2758 = v253;
              v2759 = v254;
              break;
          }

          v252.i64[0] = v2758.i64[1];
          v254.i64[0] = v2758.i64[0];
          v251.i64[0] = v2759.i64[1];
          v253.i64[0] = v2759.i64[0];
          if (v2726)
          {
            v137.i64[0] = *v219;
            a8.n128_u64[0] = v219[4];
            a9.n128_u64[0] = v219[8];
            a10.n128_u64[0] = v219[12];
            v254 = vaddq_s16(v137, v254);
            v252 = vaddq_s16(a8, v252);
            v253 = vaddq_s16(a9, v253);
            v251 = vaddq_s16(a10, v251);
          }

          LODWORD(v15) = v2714;
          v2322 = COERCE_DOUBLE(vqmovun_s16(v254));
          v2323 = COERCE_DOUBLE(vqmovun_s16(v252));
          *v218 = LODWORD(v2322);
          *(v218 + v217) = LODWORD(v2323);
          v2324 = COERCE_DOUBLE(vqmovun_s16(v253));
          v2325 = COERCE_DOUBLE(vqmovun_s16(v251));
          *(v218 + v2700) = LODWORD(v2324);
          *(v218 + v2662) = LODWORD(v2325);
          sub_277290798(&v2767, v216, v116, v2711, v109, v2324, v2325, v2322, v2323, v137, a8);
          v2328.i64[0] = v2767.i64[1];
          v2329.i64[0] = v2767.i64[0];
          v12 = v2720;
          if (v2720)
          {
            v2326.i64[0] = *v221;
            v2327.i64[0] = v221[4];
            v2329 = vaddq_s16(v2326, v2329);
            v2328 = vaddq_s16(v2327, v2328);
          }

          result = v2687;
          v10 = v2732;
          v19 = v2746;
          v20.i64[0] = 0x10001000100010;
          v20.i64[1] = 0x10001000100010;
          v21.i64[0] = 0x20002000200020;
          v21.i64[1] = 0x20002000200020;
          *v220 = vqmovun_s16(v2329).u32[0];
          *(v220 + v2728) = vqmovun_s16(v2328).u32[0];
          v13 = v2723;
          break;
        case 8u:
          switch(v27)
          {
            case 4u:
              v328 = v13;
              v329 = v104 >> 2;
              v330 = v15 + v29 + (v104 >> 2);
              v331 = v2716 + v30 + (v105 >> 2);
              if (v330 <= -18)
              {
                v330 = -18;
              }

              if (v331 <= -18)
              {
                v331 = -18;
              }

              if (v330 >= v113 + 1)
              {
                v332 = v113 + 1;
              }

              else
              {
                v332 = v330;
              }

              if (v331 >= v117 + 1)
              {
                v333 = v117 + 1;
              }

              else
              {
                v333 = v331;
              }

              v334 = (v111 + v332 + v333 * v114);
              v335 = (v329 & 0xFFFFFFFE) + v15 + v29;
              v336 = (v105 >> 3) + ((v2716 + v30) >> 1);
              if (v335 <= -16)
              {
                v335 = -16;
              }

              if (v336 <= -8)
              {
                v336 = -8;
              }

              if (v335 >= v115 - 2)
              {
                v335 = v115 - 2;
              }

              if (v336 >= v118)
              {
                v336 = v118 - 1;
              }

              v337 = (v112 + v335 + v336 * v116);
              v338 = v2727;
              v339 = &v2717->i8[v29 + (v2727 * v30)];
              v340 = (v2726 + 2 * v29 + 32 * v30);
              v341 = &v2715->i8[v29 + (v30 >> 1) * v2728];
              v342 = (v12 + 2 * v29 + 32 * (v30 >> 1));
              v2738 = v10;
              v2752 = v19;
              switch(v107)
              {
                case 1:
                  sub_27729AC20(&v2758, 0x10u, v334, v114, 4);
                  goto LABEL_1200;
                case 2:
                  sub_27729ACE8(v2758.i8, 0x10u, v334, v114, 4);
                  goto LABEL_1200;
                case 3:
                  sub_27729ADA4(&v2758, 0x10u, v334, v114, 4);
                  goto LABEL_1200;
                case 4:
                  sub_27729C91C(&v2758, 0x10u, v334, v114);
                  sub_27729C91C(&v2758.i64[1], 0x10u, v334->val + 4, v114);
                  goto LABEL_1200;
                case 5:
                  *v2587.i64 = sub_27729CAF0(&v2758, 0x10u, v334, v114, v138, *v139.i64, *v141.i64, *v142.i64, 3.52371676e-294, a8, a9, a10);
                  sub_27729CAF0(&v2758.i64[1], 0x10u, v334->val + 4, v114, v2587, v2588, v2589, v2590, v2591, v2592, v2593, v2594);
                  goto LABEL_1200;
                case 6:
                  *v2603.i64 = sub_27729CDD0(&v2758, 0x10u, v334, v114, v138, v139, v141, v142, xmmword_2773B3DF0, a8, a9, a10);
                  sub_27729CDD0(&v2758.i64[1], 0x10u, v334->val + 4, v114, v2603, v2604, v2605, v2606, v2607, v2608, v2609, v2610);
                  goto LABEL_1200;
                case 7:
                  v2542 = sub_27729D274(&v2758, 0x10u, v334, v114, *v138.i64, *v139.i64, *v141.i64, *v142.i64, 3.52371676e-294, a8.n128_f64[0], a9, a10);
                  sub_27729D274(&v2758.i64[1], 0x10u, v334->val + 4, v114, v2542, v2543, v2544, v2545, v2546, v2547, v2548, v2549);
                  goto LABEL_1200;
                case 8:
                  sub_27729D550(&v2758, 0x10u, v334, v114);
                  sub_27729D550(&v2758.i64[1], 0x10u, v334->val + 4, v114);
                  goto LABEL_1200;
                case 9:
                  sub_27729D714(&v2758, 0x10u, v334, v114);
                  sub_27729D714(&v2758.i64[1], 0x10u, v334->val + 4, v114);
                  goto LABEL_1200;
                case 10:
                  sub_27729B7DC(&v2758, 16, v334, v114, 4);
                  goto LABEL_1200;
                case 11:
                  sub_27729DE6C(&v2758, 0x10u, v334, v114);
                  sub_27729DE6C(&v2758.i64[1], 0x10u, v334->val + 4, v114);
                  goto LABEL_1200;
                case 12:
                  sub_27729E5C4(&v2758, 0x10u, v334, v114);
                  sub_27729E5C4(&v2758.i64[1], 0x10u, v334->val + 4, v114);
                  goto LABEL_1200;
                case 13:
                  *v2595.i64 = sub_27729E798(&v2758, 0x10u, v334, v114, v138, *v139.i64, *v141.i64, *v142.i64, 3.52371676e-294, a8, a9, a10);
                  sub_27729E798(&v2758.i64[1], 0x10u, v334->val + 4, v114, v2595, v2596, v2597, v2598, v2599, v2600, v2601, v2602);
                  goto LABEL_1200;
                case 14:
                  *v2506.i64 = sub_27729EA7C(&v2758, 0x10u, v334, v114, v138, v139, v141, v142, xmmword_2773B3DF0, a8, a9, a10);
                  sub_27729EA7C(&v2758.i64[1], 0x10u, v334->val + 4, v114, v2506, v2507, v2508, v2509, v2510, v2511, v2512, v2513);
                  goto LABEL_1200;
                case 15:
                  v2531 = sub_27729EF20(&v2758, 0x10u, v334, v114, *v138.i64, *v139.i64, *v141.i64, *v142.i64, 3.52371676e-294, a8.n128_f64[0], a9, a10);
                  sub_27729EF20(&v2758.i64[1], 0x10u, v334->val + 4, v114, v2531, v2532, v2533, v2534, v2535, v2536, v2537, v2538);
LABEL_1200:
                  v338 = v2727;
                  v344 = v2700;
                  v345 = v2662;
                  break;
                default:
                  v343 = 0;
                  v344 = v2700;
                  v345 = v2662;
                  do
                  {
                    v346 = &v2758.i8[v343];
                    v347 = *v334;
                    v334 = (v334 + v114);
                    v348 = v19.i64[0];
                    vst2_s8(v346, v347);
                    v343 += 16;
                  }

                  while (v343 != 64);
                  break;
              }

              v2612 = v2758;
              v2613 = v2759;
              v2614 = v2760;
              v2615 = v2761[0];
              if (v2726)
              {
                v2612 = vaddq_s16(*v340, v2758);
                v2613 = vaddq_s16(v340[2], v2759);
                v2614 = vaddq_s16(v340[4], v2760);
                v2615 = vaddq_s16(v340[6], v2761[0]);
              }

              v13 = v328;
              LODWORD(v15) = v2714;
              *v339 = vqmovun_s16(v2612);
              *(v339 + v338) = vqmovun_s16(v2613);
              *(v339 + v344) = vqmovun_s16(v2614);
              *(v339 + v345) = vqmovun_s16(v2615);
              sub_2772906A8(&v2767, v337, v116, &v2776);
              v2616 = v2767;
              v2617 = v2768;
              v12 = v2720;
              if (v2720)
              {
                v2616 = vaddq_s16(*v342, v2767);
                v2617 = vaddq_s16(v342[2], v2768);
              }

              result = v2687;
              v10 = v2738;
              v19 = v2752;
              v20.i64[0] = 0x10001000100010;
              v20.i64[1] = 0x10001000100010;
              v21.i64[0] = 0x20002000200020;
              v21.i64[1] = 0x20002000200020;
              *v341 = vqmovun_s16(v2616);
              *(v341 + v2728) = vqmovun_s16(v2617);
              goto LABEL_318;
            case 8u:
              v2722 = v13;
              v293 = v104 >> 2;
              v294 = v15 + v29 + (v104 >> 2);
              v295 = v2716 + v30 + (v105 >> 2);
              if (v294 <= -18)
              {
                v294 = -18;
              }

              if (v295 <= -18)
              {
                v295 = -18;
              }

              if (v294 >= v113 + 1)
              {
                v296 = v113 + 1;
              }

              else
              {
                v296 = v294;
              }

              if (v295 >= v117 + 1)
              {
                v297 = v117 + 1;
              }

              else
              {
                v297 = v295;
              }

              v298 = (v111 + v296 + v297 * v114);
              v299 = (v293 & 0xFFFFFFFE) + v15 + v29;
              v300 = (v105 >> 3) + ((v2716 + v30) >> 1);
              if (v299 <= -16)
              {
                v301 = -16;
              }

              else
              {
                v301 = (v293 & 0xFFFFFFFE) + v15 + v29;
              }

              if (v300 <= -8)
              {
                v300 = -8;
              }

              v302 = v115 - 2;
              if (v301 >= v115 - 2)
              {
                v301 = v115 - 2;
              }

              v303 = v112 + v301;
              if (v300 >= v118)
              {
                v300 = v118 - 1;
              }

              v304 = v300 * v116;
              v305 = v303 + v304;
              v306 = v2727;
              v307 = v2728;
              v308 = &v2717->i8[v29 + (v2727 * v30)];
              v309 = (v2726 + 2 * v29 + 32 * v30);
              v310 = &v2715->i8[v29 + (v30 >> 1) * v2728];
              v2713 = v12 + 2 * v29 + 32 * (v30 >> 1);
              v2737 = v10;
              v2751 = v19;
              switch(v107)
              {
                case 1:
                  v2530 = v114;
                  v2505 = v112;
                  sub_27729AC20(&v2758, 0x10u, v298, v2530, 8);
                  goto LABEL_1176;
                case 2:
                  v2522 = v114;
                  v2505 = v112;
                  sub_27729ACE8(v2758.i8, 0x10u, v298, v2522, 8);
                  goto LABEL_1176;
                case 3:
                  v2528 = v114;
                  v2505 = v112;
                  sub_27729ADA4(&v2758, 0x10u, v298, v2528, 8);
                  goto LABEL_1176;
                case 4:
                  v2517 = v114;
                  v2505 = v112;
                  sub_27729AE6C(&v2758, 0x10u, v298, v2517, 8);
                  goto LABEL_1176;
                case 5:
                  v2524 = v298;
                  v2525 = v114;
                  v2526 = 2;
                  goto LABEL_1171;
                case 6:
                  v2584 = v114;
                  v2505 = v112;
                  sub_27729BFC4(v2758.i8, 0x10u, v298, v2584);
                  goto LABEL_1176;
                case 7:
                  v2524 = v298;
                  v2525 = v114;
                  v2526 = 3;
LABEL_1171:
                  v2551 = 2;
                  goto LABEL_1175;
                case 8:
                  v2586 = v114;
                  v2505 = v112;
                  sub_27729B588(v2758.i8, 0x10u, v298, v2586, 8, v138);
                  goto LABEL_1176;
                case 9:
                  v2520 = v114;
                  v2505 = v112;
                  sub_27729B614(v2758.i8, 0x10u, v298, v2520, 8);
                  goto LABEL_1176;
                case 10:
                  v2585 = v114;
                  v2505 = v112;
                  sub_27729B7DC(&v2758, 16, v298, v2585, 8);
                  goto LABEL_1176;
                case 11:
                  v2516 = v114;
                  v2505 = v112;
                  sub_27729B98C(v2758.i8, 0x10u, v298, v2516, 8);
                  goto LABEL_1176;
                case 12:
                  v2519 = v114;
                  v2505 = v112;
                  sub_27729BB54(&v2758, 0x10u, v298, v2519, 8);
                  goto LABEL_1176;
                case 13:
                  v2524 = v298;
                  v2525 = v114;
                  v2526 = 2;
                  goto LABEL_1174;
                case 14:
                  v2504 = v114;
                  v2505 = v112;
                  sub_27729C39C(v2758.i8, 0x10u, v298, v2504);
                  goto LABEL_1176;
                case 15:
                  v2524 = v298;
                  v2525 = v114;
                  v2526 = 3;
LABEL_1174:
                  v2551 = 3;
LABEL_1175:
                  v2505 = v112;
                  sub_27729C774(v2758.i8, v2524, v2525, 8, v2526, v2551);
LABEL_1176:
                  v112 = v2505;
                  v21.i64[0] = 0x20002000200020;
                  v21.i64[1] = 0x20002000200020;
                  v20.i64[0] = 0x10001000100010;
                  v20.i64[1] = 0x10001000100010;
                  v10 = v2737;
                  v19 = v2751;
                  v306 = v2727;
                  v307 = v2728;
                  v12 = v2720;
                  result = v2687;
                  v312 = v2700;
                  v313 = v2662;
                  v314 = v2655;
                  break;
                default:
                  v311 = 0;
                  v312 = v2700;
                  v313 = v2662;
                  v314 = v2655;
                  do
                  {
                    v315 = &v2758.i8[v311];
                    v316 = *v298;
                    v298 = (v298 + v114);
                    v317 = v19.i64[0];
                    vst2_s8(v315, v316);
                    v311 += 16;
                  }

                  while (v311 != 128);
                  break;
              }

              v2553 = 1;
              v2554 = &v2758;
              do
              {
                v2555 = v2553;
                v2556 = *v2554;
                v2557 = v2554[1];
                v2558 = v2554[2];
                v2559 = v2554[3];
                if (v2726)
                {
                  v2560 = *v309;
                  v2561 = v309[2];
                  v2562 = v309[4];
                  v2563 = v309[6];
                  v309 += 8;
                  v2556 = vaddq_s16(v2560, v2556);
                  v2557 = vaddq_s16(v2561, v2557);
                  v2558 = vaddq_s16(v2562, v2558);
                  v2559 = vaddq_s16(v2563, v2559);
                }

                v2553 = 0;
                *v308 = vqmovun_s16(v2556);
                *(v308 + v306) = vqmovun_s16(v2557);
                *(v308 + v312) = vqmovun_s16(v2558);
                *(v308 + v313) = vqmovun_s16(v2559);
                v308 = (v308 + v314);
                v2554 += 4;
              }

              while ((v2555 & 1) != 0);
              v2564 = 0;
              _X9 = v305 + v116;
              __asm { PRFM            #0, [X9] }

              v2557.i64[0] = *v305;
              v2567 = vqtbl1q_s8(v2557, xmmword_2773B3E00);
              v2567.i16[3] = *(v305 + 8);
              a9 = vzip1q_s8(v2567, v19);
              v2568 = vzip1q_s8(v2557, v19);
              v2569 = v2776;
              v2570 = v2777;
              v2571 = v2778;
              a8 = v2779;
              v2572 = v299;
              if (v299 <= -16)
              {
                v2572 = -16;
              }

              v2573 = v302;
              if (v2572 < v302)
              {
                v2573 = v2572;
              }

              v2574 = v112 + v116 + v2573;
              v2575 = v112 + v2573 + 2 * v116;
              do
              {
                _X12 = v2575 + v304;
                __asm { PRFM            #0, [X12] }

                v2578 = vmlaq_s16(vmulq_s16(v2570, a9), v2569, v2568);
                a9.n128_u64[0] = *(v2574 + v304);
                v2568 = vzip1q_s8(a9, v19);
                v2579 = vqtbl1q_s8(a9, xmmword_2773B3E00);
                v2579.i16[3] = *(v2574 + v304 + 8);
                a9 = vzip1q_s8(v2579, v19);
                a10 = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v2578, v2571, v2568), a8, a9), v21), 6uLL);
                *(&v2767 + v2564) = a10;
                v2564 += 16;
                v2574 += v116;
                v2575 += v116;
              }

              while (v2564 != 64);
              v2580 = v2767;
              v2581 = v2768;
              v2582 = v2769;
              v2583 = v2770[0];
              LODWORD(v15) = v2714;
              if (v12)
              {
                a8 = *(v2713 + 32);
                a9 = *(v2713 + 64);
                a10 = *(v2713 + 96);
                v2580 = vaddq_s16(*v2713, v2767);
                v2581 = vaddq_s16(a8, v2768);
                v2582 = vaddq_s16(a9, v2769);
                v2583 = vaddq_s16(a10, v2770[0]);
              }

              *v310 = vqmovun_s16(v2580);
              *(v310 + v307) = vqmovun_s16(v2581);
              *(v310 + v2677) = vqmovun_s16(v2582);
              *(v310 + v2656) = vqmovun_s16(v2583);
              goto LABEL_1224;
            case 0x10u:
              v2722 = v13;
              v180 = v104 >> 2;
              v181 = v15 + v29 + (v104 >> 2);
              v182 = v2716 + (v105 >> 2);
              if (v181 <= -18)
              {
                v181 = -18;
              }

              if (v182 <= -18)
              {
                v182 = -18;
              }

              if (v181 >= v113 + 1)
              {
                v183 = v113 + 1;
              }

              else
              {
                v183 = v181;
              }

              if (v182 >= v117 + 1)
              {
                v184 = v117 + 1;
              }

              else
              {
                v184 = v182;
              }

              v185 = (v111 + v183 + v184 * v114);
              v179 = v15 + v29;
              v186 = (v180 & 0xFFFFFFFE) + v15 + v29;
              v187 = v2661 + (v105 >> 3);
              if (v186 <= -16)
              {
                v188 = -16;
              }

              else
              {
                v188 = (v180 & 0xFFFFFFFE) + v15 + v29;
              }

              if (v187 <= -8)
              {
                v187 = -8;
              }

              v189 = v115 - 2;
              if (v188 >= v115 - 2)
              {
                v188 = v115 - 2;
              }

              if (v187 >= v118)
              {
                v187 = v118 - 1;
              }

              v190 = v187 * v116;
              v191 = v112 + v188 + v190;
              v192 = v190;
              v193 = &v2717->i8[v29];
              v194 = (v2726 + 2 * v29);
              v195 = &v2715->i8[v29];
              v196 = v12 + 2 * v29;
              v2731 = v10;
              v2745 = v19;
              v2710 = (v180 & 0xFFFFFFFE) + v179;
              switch(v107)
              {
                case 1:
                  v2552 = v114;
                  v2515 = v112;
                  sub_27729AC20(&v2758, 0x10u, v185, v2552, 16);
                  goto LABEL_1209;
                case 2:
                  v2529 = v114;
                  v2515 = v112;
                  sub_27729ACE8(v2758.i8, 0x10u, v185, v2529, 16);
                  goto LABEL_1209;
                case 3:
                  v2550 = v114;
                  v2515 = v112;
                  sub_27729ADA4(&v2758, 0x10u, v185, v2550, 16);
                  goto LABEL_1209;
                case 4:
                  v2521 = v114;
                  v2515 = v112;
                  sub_27729AE6C(&v2758, 0x10u, v185, v2521, 16);
                  goto LABEL_1209;
                case 5:
                  v2539 = v185;
                  v2540 = v114;
                  v2541 = 2;
                  goto LABEL_1197;
                case 6:
                  v2651 = v114;
                  v2515 = v112;
                  sub_27729B1B0(v2758.i8, 0x10u, v185, v2651);
                  goto LABEL_1209;
                case 7:
                  v2539 = v185;
                  v2540 = v114;
                  v2541 = 3;
LABEL_1197:
                  v2611 = 2;
                  goto LABEL_1208;
                case 8:
                  v2653 = v114;
                  v2515 = v112;
                  sub_27729B588(v2758.i8, 0x10u, v185, v2653, 16, v138);
                  goto LABEL_1209;
                case 9:
                  v2527 = v114;
                  v2515 = v112;
                  sub_27729B614(v2758.i8, 0x10u, v185, v2527, 16);
                  goto LABEL_1209;
                case 10:
                  v2652 = v114;
                  v2515 = v112;
                  sub_27729B7DC(&v2758, 16, v185, v2652, 16);
                  goto LABEL_1209;
                case 11:
                  v2518 = v114;
                  v2515 = v112;
                  sub_27729B98C(v2758.i8, 0x10u, v185, v2518, 16);
                  goto LABEL_1209;
                case 12:
                  v2523 = v114;
                  v2515 = v112;
                  sub_27729BB54(&v2758, 0x10u, v185, v2523, 16);
                  goto LABEL_1209;
                case 13:
                  v2539 = v185;
                  v2540 = v114;
                  v2541 = 2;
                  goto LABEL_1207;
                case 14:
                  v2514 = v114;
                  v2515 = v112;
                  sub_27729BBEC(v2758.i8, 0x10u, v185, v2514);
                  goto LABEL_1209;
                case 15:
                  v2539 = v185;
                  v2540 = v114;
                  v2541 = 3;
LABEL_1207:
                  v2611 = 3;
LABEL_1208:
                  v2515 = v112;
                  sub_27729C774(v2758.i8, v2539, v2540, 16, v2541, v2611);
LABEL_1209:
                  v186 = v2710;
                  v112 = v2515;
                  v21.i64[0] = 0x20002000200020;
                  v21.i64[1] = 0x20002000200020;
                  v20.i64[0] = 0x10001000100010;
                  v20.i64[1] = 0x10001000100010;
                  v10 = v2731;
                  v19 = v2745;
                  v12 = v2720;
                  result = v2687;
                  v198 = v2727;
                  v199 = v2728;
                  v200 = v2700;
                  v201 = v2662;
                  v202 = v2655;
                  v203 = v2654;
                  break;
                default:
                  v197 = 0;
                  v198 = v2727;
                  v199 = v2728;
                  v200 = v2700;
                  v201 = v2662;
                  v202 = v2655;
                  v203 = v2654;
                  do
                  {
                    v204 = &v2758.i8[v197];
                    v205 = *v185;
                    v185 = (v185 + v114);
                    v206 = v19.i64[0];
                    vst2_s8(v204, v205);
                    v197 += 16;
                  }

                  while (v197 != 256);
                  break;
              }

              v2618 = 0;
              do
              {
                v2619 = *(&v2758 + v2618);
                v2620 = *(&v2758 + v2618 + 16);
                v2622 = *(&v2760 + v2618);
                v2621 = v2761[v2618 / 0x10];
                if (v2726)
                {
                  v2623 = *v194;
                  v2624 = v194[2];
                  v2625 = v194[4];
                  v2626 = v194[6];
                  v194 += 8;
                  v2619 = vaddq_s16(v2623, v2619);
                  v2620 = vaddq_s16(v2624, v2620);
                  v2622 = vaddq_s16(v2625, v2622);
                  v2621 = vaddq_s16(v2626, v2621);
                }

                *v193 = vqmovun_s16(v2619);
                *(v193 + v198) = vqmovun_s16(v2620);
                *(v193 + v200) = vqmovun_s16(v2622);
                *(v193 + v201) = vqmovun_s16(v2621);
                v193 = (v193 + v202);
                v2618 += 64;
              }

              while (v2618 != 256);
              v2627 = 0;
              _X9 = v191 + v116;
              __asm { PRFM            #0, [X9] }

              v2619.i64[0] = *v191;
              v2630 = vqtbl1q_s8(v2619, xmmword_2773B3E00);
              v2630.i16[3] = *(v191 + 8);
              a9 = vzip1q_s8(v2630, v19);
              v2631 = vzip1q_s8(v2619, v19);
              v2632 = v2776;
              v2633 = v2777;
              v2634 = v2778;
              a8 = v2779;
              v2635 = v186;
              if (v186 <= -16)
              {
                v2635 = -16;
              }

              v2636 = v189;
              if (v2635 < v189)
              {
                v2636 = v2635;
              }

              v2637 = v112 + v116 + v2636;
              v2638 = v112 + v2636 + 2 * v116;
              do
              {
                _X12 = v2638 + v192;
                __asm { PRFM            #0, [X12] }

                v2641 = vmlaq_s16(vmulq_s16(v2633, a9), v2632, v2631);
                a9.n128_u64[0] = *(v2637 + v192);
                v2631 = vzip1q_s8(a9, v19);
                v2642 = vqtbl1q_s8(a9, xmmword_2773B3E00);
                v2642.i16[3] = *(v2637 + v192 + 8);
                a9 = vzip1q_s8(v2642, v19);
                a10 = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v2641, v2634, v2631), a8, a9), v21), 6uLL);
                *(&v2767 + v2627) = a10;
                v2627 += 16;
                v2637 += v116;
                v2638 += v116;
              }

              while (v2627 != 128);
              v2643 = 1;
              v2644 = &v2767;
              LODWORD(v15) = v2714;
              do
              {
                v2645 = v2643;
                v2646 = *v2644;
                v2647 = v2644[1];
                v2648 = v2644[2];
                v2649 = v2644[3];
                if (v12)
                {
                  v2650 = *v196;
                  a8 = *(v196 + 32);
                  a9 = *(v196 + 64);
                  a10 = *(v196 + 96);
                  v196 += 128;
                  v2646 = vaddq_s16(v2650, v2646);
                  v2647 = vaddq_s16(a8, v2647);
                  v2648 = vaddq_s16(a9, v2648);
                  v2649 = vaddq_s16(a10, v2649);
                }

                v2643 = 0;
                *v195 = vqmovun_s16(v2646);
                *(v195 + v199) = vqmovun_s16(v2647);
                *(v195 + v2677) = vqmovun_s16(v2648);
                *(v195 + v2656) = vqmovun_s16(v2649);
                v195 = (v195 + v203);
                v2644 += 4;
              }

              while ((v2645 & 1) != 0);
LABEL_1224:
              v13 = v2722;
              goto LABEL_318;
          }

          break;
        case 0x10u:
          v2707 = v105 & 7;
          v144 = v104 >> 2;
          v145 = v15 + (v104 >> 2);
          if (v27 == 16)
          {
            v146 = v2716 + (v105 >> 2);
            if (v145 <= -18)
            {
              v145 = -18;
            }

            if (v146 <= -18)
            {
              v146 = -18;
            }

            if (v145 >= v113 + 1)
            {
              v147 = v113 + 1;
            }

            else
            {
              v147 = v145;
            }

            if (v146 >= v117 + 1)
            {
              v148 = v117 + 1;
            }

            else
            {
              v148 = v146;
            }

            v149 = v148 * v114;
            v150 = (v111 + v149 + v147);
            v151 = (v144 & 0xFFFFFFFE) + v15;
            v152 = v2661 + (v105 >> 3);
            if (v151 <= -16)
            {
              v151 = -16;
            }

            if (v152 <= -8)
            {
              v152 = -8;
            }

            if (v151 >= v115 - 2)
            {
              v151 = v115 - 2;
            }

            if (v152 >= v118)
            {
              v152 = v118 - 1;
            }

            v153 = v151;
            v154 = v152 * v116;
            _X24 = (v112 + v151 + v154);
            switch(v105 & 3 | (4 * (v104 & 3)))
            {
              case 1:
                v1983 = 0;
                v1984 = (v150 - 2 * v114);
                v1985 = (v1984 + v114 + v114);
                v1986 = vzip1q_s8(*(v1985 + v114 + v114), v19);
                v1987 = vzip1q_s8(*(v1985 + v114), v19);
                v1988 = vzip1q_s8(*v1985, v19);
                v1989 = vzip1q_s8(*(v1984 + v114), v19);
                v1990 = vzip1q_s8(*v1984, v19);
                v1991 = (v111 + 5 * v114 + v147 + v149 - 2 * v114);
                do
                {
                  v1992 = v1989;
                  v1989 = v1988;
                  v1988 = v1987;
                  v1987 = v1986;
                  v1986 = vzip1q_s8(*v1991, v19);
                  v1993 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1989, v1988), 2uLL), vaddq_s16(v1992, v1987));
                  *(&v2758 + v1983) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1990, v1993), vshlq_n_s16(v1993, 2uLL)), vaddq_s16(v1986, v20)), 5uLL))), v1989);
                  v1983 += 32;
                  v1991 = (v1991 + v114);
                  v1990 = v1992;
                }

                while (v1983 != 512);
                v1994 = 0;
                v1995 = v150 - 2 * v114;
                v1996 = *(v1995 + 8);
                v1997 = &v1995[v114 + 8];
                v1998 = (v1997 + v114 + v114);
                v1999 = vzip1q_s8(*(v1998 + v114), v19);
                v2000 = vzip1q_s8(*v1998, v19);
                v2001 = vzip1q_s8(*(v1997 + v114), v19);
                v2002 = vzip1q_s8(*v1997, v19);
                v137 = vzip1q_s8(v1996, v19);
                v2003 = (v111 + 5 * v114 + v147 + v149 - 2 * v114 + 8);
                v158 = v2727;
                v157 = v2728;
                v159 = v2700;
                v160 = v105 & 7 | (16 * (v104 & 7));
                do
                {
                  a8 = v2002;
                  v2002 = v2001;
                  v2001 = v2000;
                  v2000 = v1999;
                  v1999 = vzip1q_s8(*v2003, v19);
                  v2004 = vsubq_s16(vshlq_n_s16(vaddq_s16(v2002, v2001), 2uLL), vaddq_s16(a8, v2000));
                  a10 = vshlq_n_s16(v2004, 2uLL);
                  v2005 = vaddq_s16(vaddq_s16(v137, v2004), a10);
                  a9 = vaddq_s16(v1999, v20);
                  *(&v2759 + v1994) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(v2005, a9), 5uLL))), v2002);
                  v1994 += 32;
                  v2003 = (v2003 + v114);
                  v137 = a8;
                }

                while (v1994 != 512);
                break;
              case 2:
                v1682 = 0;
                v1683 = (v150 - 2 * v114);
                v1684 = (v1683 + v114 + v114);
                v1685 = vzip1q_s8(*(v1684 + v114 + v114), v19);
                v1686 = vzip1q_s8(*(v1684 + v114), v19);
                v1687 = vzip1q_s8(*v1684, v19);
                v1688 = vzip1q_s8(*(v1683 + v114), v19);
                v1689 = vzip1q_s8(*v1683, v19);
                v1690 = (v111 + 5 * v114 + v147 + v149 - 2 * v114);
                do
                {
                  v1691 = v1688;
                  v1688 = v1687;
                  v1687 = v1686;
                  v1686 = v1685;
                  v1692 = &v2758.i8[v1682];
                  v1685 = vzip1q_s8(*v1690, v19);
                  v1693 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1688, v1687), 2uLL), vaddq_s16(v1691, v1686));
                  *v1693.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1689, v1693), vshlq_n_s16(v1693, 2uLL)), vaddq_s16(v1685, v20)), 5uLL));
                  v1694 = v19.i64[0];
                  vst2_s8(v1692, v1693);
                  v1682 += 32;
                  v1690 = (v1690 + v114);
                  v1689 = v1691;
                }

                while (v1682 != 512);
                v1695 = 0;
                v1696 = v150 - 2 * v114;
                v1697 = *(v1696 + 8);
                v1698 = &v1696[v114 + 8];
                v1699 = (v1698 + v114 + v114);
                v1700 = vzip1q_s8(*(v1699 + v114), v19);
                v1701 = vzip1q_s8(*v1699, v19);
                v1702 = vzip1q_s8(*(v1698 + v114), v19);
                v1703 = vzip1q_s8(*v1698, v19);
                v137 = vzip1q_s8(v1697, v19);
                v1704 = (v111 + 5 * v114 + v147 + v149 - 2 * v114 + 8);
                v158 = v2727;
                v157 = v2728;
                v159 = v2700;
                v160 = v105 & 7 | (16 * (v104 & 7));
                do
                {
                  a8 = v1703;
                  v1703 = v1702;
                  v1702 = v1701;
                  v1701 = v1700;
                  v1705 = &v2759.i8[v1695];
                  v1700 = vzip1q_s8(*v1704, v19);
                  v1706 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1703, v1702), 2uLL), vaddq_s16(a8, v1701));
                  a10 = vshlq_n_s16(v1706, 2uLL);
                  v1707 = vaddq_s16(vaddq_s16(v137, v1706), a10);
                  a9 = vaddq_s16(v1700, v20);
                  a9.n128_u64[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(v1707, a9), 5uLL));
                  a10.n128_u64[0] = v19.i64[0];
                  vst2_s8(v1705, a9);
                  v1695 += 32;
                  v1704 = (v1704 + v114);
                  v137 = a8;
                }

                while (v1695 != 512);
                break;
              case 3:
                v1921 = 0;
                v1922 = (v150 - 2 * v114);
                v1923 = (v1922 + v114 + v114);
                v1924 = vzip1q_s8(*(v1923 + v114 + v114), v19);
                v1925 = vzip1q_s8(*(v1923 + v114), v19);
                v1926 = vzip1q_s8(*v1923, v19);
                v1927 = vzip1q_s8(*(v1922 + v114), v19);
                v1928 = vzip1q_s8(*v1922, v19);
                v1929 = (v111 + 5 * v114 + v147 + v149 - 2 * v114);
                do
                {
                  v1930 = v1927;
                  v1927 = v1926;
                  v1926 = v1925;
                  v1925 = v1924;
                  v1924 = vzip1q_s8(*v1929, v19);
                  v1931 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1927, v1926), 2uLL), vaddq_s16(v1930, v1925));
                  *(&v2758 + v1921) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1928, v1931), vshlq_n_s16(v1931, 2uLL)), vaddq_s16(v1924, v20)), 5uLL))), v1926);
                  v1921 += 32;
                  v1929 = (v1929 + v114);
                  v1928 = v1930;
                }

                while (v1921 != 512);
                v1932 = 0;
                v1933 = v150 - 2 * v114;
                v1934 = *(v1933 + 8);
                v1935 = &v1933[v114 + 8];
                v1936 = (v1935 + v114 + v114);
                v1937 = vzip1q_s8(*(v1936 + v114), v19);
                v1938 = vzip1q_s8(*v1936, v19);
                v1939 = vzip1q_s8(*(v1935 + v114), v19);
                v1940 = vzip1q_s8(*v1935, v19);
                v137 = vzip1q_s8(v1934, v19);
                v1941 = (v111 + 5 * v114 + v147 + v149 - 2 * v114 + 8);
                v158 = v2727;
                v157 = v2728;
                v159 = v2700;
                v160 = v105 & 7 | (16 * (v104 & 7));
                do
                {
                  a8 = v1940;
                  v1940 = v1939;
                  v1939 = v1938;
                  v1938 = v1937;
                  v1937 = vzip1q_s8(*v1941, v19);
                  v1942 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1940, v1939), 2uLL), vaddq_s16(a8, v1938));
                  a10 = vshlq_n_s16(v1942, 2uLL);
                  v1943 = vaddq_s16(vaddq_s16(v137, v1942), a10);
                  a9 = vaddq_s16(v1937, v20);
                  *(&v2759 + v1932) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(v1943, a9), 5uLL))), v1939);
                  v1932 += 32;
                  v1941 = (v1941 + v114);
                  v137 = a8;
                }

                while (v1932 != 512);
                break;
              case 4:
                v1567 = 0;
                v1568 = (v150 - 2);
                do
                {
                  v1569 = *v1568;
                  v1568 = (v1568 + v114);
                  v1570 = vzip1q_s8(vextq_s8(v1569, v1569, 2uLL), v19);
                  v1571 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1570, vzip1q_s8(vextq_s8(v1569, v1569, 3uLL), v19)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1569, v1569, 1uLL), v19), vzip1q_s8(vextq_s8(v1569, v1569, 4uLL), v19)));
                  *(&v2758 + v1567) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1571, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1569, v19), vzip1q_s8(vextq_s8(v1569, v1569, 5uLL), v19)), v1571)), v20), 5uLL))), v1570);
                  v1567 += 32;
                }

                while (v1567 != 512);
                v1572 = 0;
                v1573 = (v150 + 6);
                v158 = v2727;
                v157 = v2728;
                v159 = v2700;
                v160 = v105 & 7 | (16 * (v104 & 7));
                do
                {
                  v1574 = *v1573;
                  v1573 = (v1573 + v114);
                  v1575 = vzip1q_s8(vextq_s8(v1574, v1574, 2uLL), v19);
                  v1576 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1575, vzip1q_s8(vextq_s8(v1574, v1574, 3uLL), v19)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1574, v1574, 1uLL), v19), vzip1q_s8(vextq_s8(v1574, v1574, 4uLL), v19)));
                  v137 = vzip1q_s8(v1574, v19);
                  *(&v2759 + v1572) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1576, 2uLL), vaddq_s16(vaddq_s16(v137, vzip1q_s8(vextq_s8(v1574, v1574, 5uLL), v19)), v1576)), v20), 5uLL))), v1575);
                  v1572 += 32;
                }

                while (v1572 != 512);
                break;
              case 5:
                v1779 = v111 + v149 + v147;
                v1780 = v114;
                v1781 = 2;
                goto LABEL_1042;
              case 6:
                v2741 = v10;
                v2755 = v19;
                v2699 = v134;
                v1530 = v112;
                v2702 = v143;
                sub_27729B1B0(v2758.i8, 0x20u, v111 + v149 + v147, v114);
                sub_27729B1B0(v2759.i8, 0x20u, v150 + 8, v114);
                goto LABEL_1072;
              case 7:
                v1779 = v111 + v149 + v147;
                v1780 = v114;
                v1781 = 3;
LABEL_1042:
                v2294 = 2;
                goto LABEL_1065;
              case 8:
                v2484 = 0;
                v2485 = (v150 - 2);
                do
                {
                  v2486 = &v2758.i8[v2484];
                  v2487 = *v2485;
                  v2485 = (v2485 + v114);
                  v2488 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v2487, v2487, 2uLL), v19), vzip1q_s8(vextq_s8(v2487, v2487, 3uLL), v19)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v2487, v2487, 1uLL), v19), vzip1q_s8(vextq_s8(v2487, v2487, 4uLL), v19)));
                  *v2487.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v2488, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v2487, v19), vzip1q_s8(vextq_s8(v2487, v2487, 5uLL), v19)), v2488)), v20), 5uLL));
                  v2488.i64[0] = v19.i64[0];
                  vst2_s8(v2486, v2487);
                  v2484 += 32;
                }

                while (v2484 != 512);
                v2489 = 0;
                v2490 = (v150 + 6);
                v158 = v2727;
                v157 = v2728;
                v159 = v2700;
                v160 = v105 & 7 | (16 * (v104 & 7));
                do
                {
                  v2491 = &v2759.i8[v2489];
                  v2492 = *v2490;
                  v2490 = (v2490 + v114);
                  v2493 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v2492, v2492, 2uLL), v19), vzip1q_s8(vextq_s8(v2492, v2492, 3uLL), v19)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v2492, v2492, 1uLL), v19), vzip1q_s8(vextq_s8(v2492, v2492, 4uLL), v19)));
                  *v2492.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v2493, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v2492, v19), vzip1q_s8(vextq_s8(v2492, v2492, 5uLL), v19)), v2493)), v20), 5uLL));
                  v2493.i64[0] = v19.i64[0];
                  vst2_s8(v2491, v2492);
                  v2489 += 32;
                }

                while (v2489 != 512);
                break;
              case 9:
                v2741 = v10;
                v2755 = v19;
                v2699 = v134;
                v1530 = v112;
                v2702 = v143;
                sub_27729B614(v2758.i8, 0x20u, v111 + v149 + v147, v114, 16);
                sub_27729B614(v2759.i8, 0x20u, v150 + 8, v114, 16);
                goto LABEL_1072;
              case 0xA:
                v2741 = v10;
                v2755 = v19;
                v2699 = v134;
                v1530 = v112;
                v2702 = v143;
                sub_27729B7DC(&v2758, 32, v111 + v149 + v147, v114, 16);
                sub_27729B7DC(&v2759, 32, v150 + 8, v114, 16);
                goto LABEL_1072;
              case 0xB:
                v2741 = v10;
                v2755 = v19;
                v2699 = v134;
                v1530 = v112;
                v2702 = v143;
                sub_27729B98C(v2758.i8, 0x20u, v111 + v149 + v147, v114, 16);
                sub_27729B98C(v2759.i8, 0x20u, v150 + 8, v114, 16);
                goto LABEL_1072;
              case 0xC:
                v1605 = 0;
                v1606 = (v150 - 2);
                do
                {
                  v1607 = *v1606;
                  v1606 = (v1606 + v114);
                  v1608 = vzip1q_s8(vextq_s8(v1607, v1607, 3uLL), v19);
                  v1609 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1607, v1607, 2uLL), v19), v1608), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1607, v1607, 1uLL), v19), vzip1q_s8(vextq_s8(v1607, v1607, 4uLL), v19)));
                  *(&v2758 + v1605) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1609, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1607, v19), vzip1q_s8(vextq_s8(v1607, v1607, 5uLL), v19)), v1609)), v20), 5uLL))), v1608);
                  v1605 += 32;
                }

                while (v1605 != 512);
                v1610 = 0;
                v1611 = (v150 + 6);
                v158 = v2727;
                v157 = v2728;
                v159 = v2700;
                v160 = v105 & 7 | (16 * (v104 & 7));
                do
                {
                  v1612 = *v1611;
                  v1611 = (v1611 + v114);
                  v1613 = vzip1q_s8(vextq_s8(v1612, v1612, 3uLL), v19);
                  v1614 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1612, v1612, 2uLL), v19), v1613), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1612, v1612, 1uLL), v19), vzip1q_s8(vextq_s8(v1612, v1612, 4uLL), v19)));
                  v137 = vzip1q_s8(v1612, v19);
                  *(&v2759 + v1610) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1614, 2uLL), vaddq_s16(vaddq_s16(v137, vzip1q_s8(vextq_s8(v1612, v1612, 5uLL), v19)), v1614)), v20), 5uLL))), v1613);
                  v1610 += 32;
                }

                while (v1610 != 512);
                break;
              case 0xD:
                v1779 = v111 + v149 + v147;
                v1780 = v114;
                v1781 = 2;
                goto LABEL_1064;
              case 0xE:
                v2741 = v10;
                v2755 = v19;
                v2699 = v134;
                v1530 = v112;
                v2702 = v143;
                sub_27729BBEC(v2758.i8, 0x20u, v111 + v149 + v147, v114);
                sub_27729BBEC(v2759.i8, 0x20u, v150 + 8, v114);
LABEL_1072:
                v143 = v2702;
                v112 = v1530;
                v134 = v2699;
                goto LABEL_1073;
              case 0xF:
                v1779 = v111 + v149 + v147;
                v1780 = v114;
                v1781 = 3;
LABEL_1064:
                v2294 = 3;
LABEL_1065:
                v2741 = v10;
                v2755 = v19;
                v2704 = v143;
                sub_27729AF04(v2758.i8, v1779, v1780, 16, v1781, v2294);
                v143 = v2704;
LABEL_1073:
                v21.i64[0] = 0x20002000200020;
                v21.i64[1] = 0x20002000200020;
                v20.i64[0] = 0x10001000100010;
                v20.i64[1] = 0x10001000100010;
                v10 = v2741;
                v19 = v2755;
                v12 = v2720;
                result = v2687;
                v158 = v2727;
                v157 = v2728;
                v159 = v2700;
                v160 = v2709;
                break;
              default:
                v156 = 0;
                v158 = v2727;
                v157 = v2728;
                v159 = v2700;
                v160 = v105 & 7 | (16 * (v104 & 7));
                do
                {
                  v161 = &v2758.i8[v156];
                  v162 = *v150;
                  v150 = (v150 + v114);
                  v163 = v19.i64[0];
                  vst2_s8(v161, v162);
                  v161 += 16;
                  *v161 = vzip2q_s8(v162, v19);
                  v156 += 32;
                }

                while (v156 != 512);
                break;
            }

            v2330 = 0;
            v2331 = v2717;
            v2332 = v2726;
            do
            {
              v2334 = *(&v2758 + v2330);
              v2333 = *(&v2758 + v2330 + 16);
              v2336 = *(&v2760 + v2330);
              v2335 = v2761[v2330 / 0x10];
              if (v2726)
              {
                v137 = *v2332;
                a8 = *(v2332 + 16);
                a9 = *(v2332 + 32);
                a10 = *(v2332 + 48);
                v2332 += 64;
                v2334 = vaddq_s16(v137, v2334);
                v2333 = vaddq_s16(a8, v2333);
                v2336 = vaddq_s16(a9, v2336);
                v2335 = vaddq_s16(a10, v2335);
              }

              *v2331 = vqmovun_high_s16(vqmovun_s16(v2334), v2333);
              *(v2331 + v158) = vqmovun_high_s16(vqmovun_s16(v2336), v2335);
              v2331 = (v2331 + v159);
              v2330 += 64;
            }

            while (v2330 != 512);
            switch(v160)
            {
              case 64:
                __asm { PRFM            #0, [X24] }

                v2363 = 9;
                v2339 = v2766;
                do
                {
                  v2364 = _X24;
                  _X24 = (_X24 + v116);
                  __asm { PRFM            #0, [X24] }

                  v2366 = vextq_s8(*v2364, *v2364, 2uLL);
                  v2366.i16[7] = v2364[1].i16[0];
                  v2367 = vrhaddq_u8(*v2364, v2366);
                  v2366.i64[0] = v19.i64[0];
                  v2339[3] = vzip2q_s8(v2367, v19);
                  v2339 += 2;
                  vst2_s8(v2339->i8, *(&v2366 - 8));
                  --v2363;
                }

                while (v2363 > 2);
                v2368 = vextq_s8(*_X24, *_X24, 2uLL);
                v2368.i16[7] = _X24[1].i16[0];
                v2369 = vrhaddq_u8(*_X24, v2368);
                i8 = v2339[2].i8;
                v2368.i64[0] = v19.i64[0];
                vst2_s8(i8, *(&v2368 - 8));
                v2345 = vzip2q_s8(v2369, v19);
LABEL_1090:
                v2353 = v2677;
                break;
              case 4:
                _X8 = &_X24->i8[v116];
                __asm { PRFM            #0, [X8] }

                v2350 = *_X24;
                v2351 = (v112 + v153 + v154);
                v2352 = 9;
                v2339 = v2766;
                v2353 = v2677;
                do
                {
                  _X12 = &v2351->i8[2 * v116];
                  v2351 = (v2351 + v116);
                  __asm { PRFM            #0, [X12] }

                  v2356 = *v2351;
                  v2357 = vrhaddq_u8(v2350, *v2351);
                  v2358 = v19.i64[0];
                  v2339[3] = vzip2q_s8(v2357, v19);
                  v2339 += 2;
                  vst2_s8(v2339->i8, v2357);
                  --v2352;
                  v2350 = v2356;
                }

                while (v2352 > 2);
                v2359 = vrhaddq_u8(v2356, *(v2351 + v116));
                v2360 = v2339[2].i8;
                v2361 = v19.i64[0];
                vst2_s8(v2360, v2359);
                v2345 = vzip2q_s8(v2359, v19);
                break;
              case 0:
                __asm { PRFM            #0, [X24] }

                v2338 = 9;
                v2339 = v2766;
                do
                {
                  v2340 = _X24;
                  _X24 = (_X24 + v116);
                  __asm { PRFM            #0, [X24] }

                  v2342 = *v2340;
                  v2339[3] = vzip2q_s8(*v2340, v19);
                  v2339 += 2;
                  v2343 = v19.i64[0];
                  vst2_s8(v2339->i8, v2342);
                  --v2338;
                }

                while (v2338 > 2);
                v2344 = *_X24;
                v2345 = vzip2q_s8(*_X24, v19);
                v2346 = v2339[2].i8;
                v2347 = v19.i64[0];
                vst2_s8(v2346, v2344);
                goto LABEL_1090;
              default:
                v2371 = 0;
                v2372 = v134 - (8 * v108 + 8 * v2707) + 64;
                v2373 = v19;
                v2373.i32[0] = v2372 | (v2372 << 16);
                v2374 = v19;
                v2374.i32[0] = (8 * v108 - v134) | ((8 * v108 - v134) << 16);
                v2375 = vqtbl1q_s8(v2373, xmmword_2773B3DF0);
                v2376 = vqtbl1q_s8(v2374, xmmword_2773B3DF0);
                v2377 = v19;
                v2377.i32[0] = (8 * v2707 - v134) | ((8 * v2707 - v134) << 16);
                v2378 = vqtbl1q_s8(v2377, xmmword_2773B3DF0);
                v2776 = v2375;
                v2777 = v2376;
                v2778 = v2378;
                v2779 = v143;
                _X9 = &_X24->i8[v116];
                __asm { PRFM            #0, [X9] }

                v137.i64[0] = _X24->i64[0];
                v2381 = vqtbl1q_s8(v137, xmmword_2773B3E00);
                v2381.i16[3] = _X24->i16[4];
                v2382 = vzip1q_s8(v2381, v19);
                v2383 = vzip1q_s8(v137, v19);
                v2384 = (v112 + v154 + v153 + v116 + 8);
                _X12 = v112 + v154 + v153 + 2 * v116;
                do
                {
                  __asm { PRFM            #0, [X12] }

                  v2387 = vmlaq_s16(vmulq_s16(v2376, v2382), v2375, v2383);
                  v2382.i64[0] = *(v2384 - 1);
                  v2383 = vzip1q_s8(v2382, v19);
                  v2388 = vqtbl1q_s8(v2382, xmmword_2773B3E00);
                  v2388.i16[3] = *v2384;
                  v2384 = (v2384 + v116);
                  v2382 = vzip1q_s8(v2388, v19);
                  *(&v2767 + v2371) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v2387, v2378, v2383), v143, v2382), v21), 6uLL);
                  v2371 += 32;
                  _X12 += v116;
                }

                while (v2371 != 256);
                v2389 = 0;
                _X9 = &_X24->i8[v116 + 8];
                __asm { PRFM            #0, [X9] }

                v2383.i64[0] = _X24->i64[1];
                v2392 = vqtbl1q_s8(v2383, xmmword_2773B3E00);
                v2392.i16[3] = _X24[1].i16[0];
                a8 = vzip1q_s8(v2392, v19);
                v2393 = vzip1q_s8(v2383, v19);
                v2394 = v112 + v153 + v116;
                v2395 = v112 + v153 + 2 * v116 + 8;
                v2353 = v2677;
                do
                {
                  _X12 = v2395 + v154;
                  __asm { PRFM            #0, [X12] }

                  v2398 = vmlaq_s16(vmulq_s16(v2376, a8), v2375, v2393);
                  a8.n128_u64[0] = *(v2394 + v154 + 8);
                  v2393 = vzip1q_s8(a8, v19);
                  v2399 = vqtbl1q_s8(a8, xmmword_2773B3E00);
                  v2399.i16[3] = *(v2394 + v154 + 16);
                  a8 = vzip1q_s8(v2399, v19);
                  a9 = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v2398, v2378, v2393), v143, a8), v21), 6uLL);
                  *(&v2768 + v2389) = a9;
                  v2389 += 32;
                  v2394 += v116;
                  v2395 += v116;
                }

                while (v2389 != 256);
LABEL_1096:
                v2400 = 0;
                LODWORD(v15) = v2714;
                v2401 = v2715;
                v2402 = v12;
                do
                {
                  v2404 = *(&v2767 + v2400);
                  v2403 = *(&v2767 + v2400 + 16);
                  v2406 = *(&v2769 + v2400);
                  v2405 = v2770[v2400 / 0x10];
                  if (v12)
                  {
                    v2407 = *v2402;
                    a8 = *(v2402 + 16);
                    a9 = *(v2402 + 32);
                    a10 = *(v2402 + 48);
                    v2402 += 64;
                    v2404 = vaddq_s16(v2407, v2404);
                    v2403 = vaddq_s16(a8, v2403);
                    v2406 = vaddq_s16(a9, v2406);
                    v2405 = vaddq_s16(a10, v2405);
                  }

                  *v2401 = vqmovun_high_s16(vqmovun_s16(v2404), v2403);
                  *(v2401 + v157) = vqmovun_high_s16(vqmovun_s16(v2406), v2405);
                  v2401 = (v2401 + v2353);
                  v2400 += 64;
                }

                while (v2400 != 256);
                goto LABEL_318;
            }

            v2339[3] = v2345;
            goto LABEL_1096;
          }

          v2698 = v109 * v108;
          v2724 = v13;
          v255 = v2716 + v30 + (v105 >> 2);
          if (v145 <= -18)
          {
            v145 = -18;
          }

          if (v255 <= -18)
          {
            v255 = -18;
          }

          if (v145 >= v113 + 1)
          {
            v256 = v113 + 1;
          }

          else
          {
            v256 = v145;
          }

          if (v255 >= v117 + 1)
          {
            v257 = v117 + 1;
          }

          else
          {
            v257 = v255;
          }

          v258 = (v111 + v256 + v257 * v114);
          v259 = (v144 & 0xFFFFFFFE) + v15;
          v260 = (v105 >> 3) + ((v2716 + v30) >> 1);
          if (v259 <= -16)
          {
            v259 = -16;
          }

          if (v260 <= -8)
          {
            v260 = -8;
          }

          v261 = v115 - 2;
          if (v259 >= v261)
          {
            v259 = v261;
          }

          if (v260 >= v118)
          {
            v260 = v118 - 1;
          }

          v262 = v259;
          v263 = v260 * v116;
          _X24 = (v112 + v259 + v263);
          v266 = v2727;
          v265 = v2728;
          v267 = (v2717 + (v2727 * v30));
          v268 = v2726 + 32 * v30;
          v269 = v30 >> 1;
          v270 = (v2715 + (v269 * v2728));
          v271 = v12 + 32 * v269;
          switch(v107)
          {
            case 1:
              v2006 = 0;
              v2007 = (v258 - 2 * v114);
              v2008 = (v2007 + v114 + v114);
              v2009 = vzip1q_s8(*(v2008 + v114 + v114), v19);
              v2010 = vzip1q_s8(*(v2008 + v114), v19);
              v2011 = vzip1q_s8(*v2008, v19);
              v2012 = vzip1q_s8(*(v2007 + v114), v19);
              v2013 = vzip1q_s8(*v2007, v19);
              v2014 = (v111 + 5 * v114 + v256 + v114 * v257 - 2 * v114);
              do
              {
                v2015 = v2012;
                v2012 = v2011;
                v2011 = v2010;
                v2010 = v2009;
                v2009 = vzip1q_s8(*v2014, v19);
                v2016 = vsubq_s16(vshlq_n_s16(vaddq_s16(v2012, v2011), 2uLL), vaddq_s16(v2015, v2010));
                *(&v2758 + v2006) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v2013, v2016), vshlq_n_s16(v2016, 2uLL)), vaddq_s16(v2009, v20)), 5uLL))), v2012);
                v2006 += 32;
                v2014 = (v2014 + v114);
                v2013 = v2015;
              }

              while (v2006 != 256);
              v2017 = 0;
              v2018 = v258 - 2 * v114;
              v2019 = *(v2018 + 8);
              v2020 = &v2018[v114 + 8];
              v2021 = (v2020 + v114 + v114);
              v2022 = vzip1q_s8(*(v2021 + v114), v19);
              v2023 = vzip1q_s8(*v2021, v19);
              v2024 = vzip1q_s8(*(v2020 + v114), v19);
              v2025 = vzip1q_s8(*v2020, v19);
              v137 = vzip1q_s8(v2019, v19);
              v2026 = (v111 + 5 * v114 + v256 + v114 * v257 - 2 * v114 + 8);
              v273 = v2700;
              v274 = v2709;
              do
              {
                a8 = v2025;
                v2025 = v2024;
                v2024 = v2023;
                v2023 = v2022;
                v2022 = vzip1q_s8(*v2026, v19);
                v2027 = vsubq_s16(vshlq_n_s16(vaddq_s16(v2025, v2024), 2uLL), vaddq_s16(a8, v2023));
                a10 = vshlq_n_s16(v2027, 2uLL);
                v2028 = vaddq_s16(vaddq_s16(v137, v2027), a10);
                a9 = vaddq_s16(v2022, v20);
                *(&v2759 + v2017) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(v2028, a9), 5uLL))), v2025);
                v2017 += 32;
                v2026 = (v2026 + v114);
                v137 = a8;
              }

              while (v2017 != 256);
              break;
            case 2:
              v1725 = 0;
              v1726 = (v258 - 2 * v114);
              v1727 = (v1726 + v114 + v114);
              v1728 = vzip1q_s8(*(v1727 + v114 + v114), v19);
              v1729 = vzip1q_s8(*(v1727 + v114), v19);
              v1730 = vzip1q_s8(*v1727, v19);
              v1731 = vzip1q_s8(*(v1726 + v114), v19);
              v1732 = vzip1q_s8(*v1726, v19);
              v1733 = (v111 + 5 * v114 + v256 + v114 * v257 - 2 * v114);
              do
              {
                v1734 = v1731;
                v1731 = v1730;
                v1730 = v1729;
                v1729 = v1728;
                v1735 = &v2758.i8[v1725];
                v1728 = vzip1q_s8(*v1733, v19);
                v1736 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1731, v1730), 2uLL), vaddq_s16(v1734, v1729));
                *v1736.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1732, v1736), vshlq_n_s16(v1736, 2uLL)), vaddq_s16(v1728, v20)), 5uLL));
                v1737 = v19.i64[0];
                vst2_s8(v1735, v1736);
                v1725 += 32;
                v1733 = (v1733 + v114);
                v1732 = v1734;
              }

              while (v1725 != 256);
              v1738 = 0;
              v1739 = v258 - 2 * v114;
              v1740 = *(v1739 + 8);
              v1741 = &v1739[v114 + 8];
              v1742 = (v1741 + v114 + v114);
              v1743 = vzip1q_s8(*(v1742 + v114), v19);
              v1744 = vzip1q_s8(*v1742, v19);
              v1745 = vzip1q_s8(*(v1741 + v114), v19);
              v1746 = vzip1q_s8(*v1741, v19);
              v137 = vzip1q_s8(v1740, v19);
              v1747 = (v111 + 5 * v114 + v256 + v114 * v257 - 2 * v114 + 8);
              v273 = v2700;
              v274 = v2709;
              do
              {
                a8 = v1746;
                v1746 = v1745;
                v1745 = v1744;
                v1744 = v1743;
                v1748 = &v2759.i8[v1738];
                v1743 = vzip1q_s8(*v1747, v19);
                v1749 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1746, v1745), 2uLL), vaddq_s16(a8, v1744));
                a10 = vshlq_n_s16(v1749, 2uLL);
                v1750 = vaddq_s16(vaddq_s16(v137, v1749), a10);
                a9 = vaddq_s16(v1743, v20);
                a9.n128_u64[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(v1750, a9), 5uLL));
                a10.n128_u64[0] = v19.i64[0];
                vst2_s8(v1748, a9);
                v1738 += 32;
                v1747 = (v1747 + v114);
                v137 = a8;
              }

              while (v1738 != 256);
              break;
            case 3:
              v1952 = 0;
              v1953 = (v258 - 2 * v114);
              v1954 = (v1953 + v114 + v114);
              v1955 = vzip1q_s8(*(v1954 + v114 + v114), v19);
              v1956 = vzip1q_s8(*(v1954 + v114), v19);
              v1957 = vzip1q_s8(*v1954, v19);
              v1958 = vzip1q_s8(*(v1953 + v114), v19);
              v1959 = vzip1q_s8(*v1953, v19);
              v1960 = (v111 + 5 * v114 + v256 + v114 * v257 - 2 * v114);
              do
              {
                v1961 = v1958;
                v1958 = v1957;
                v1957 = v1956;
                v1956 = v1955;
                v1955 = vzip1q_s8(*v1960, v19);
                v1962 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1958, v1957), 2uLL), vaddq_s16(v1961, v1956));
                *(&v2758 + v1952) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1959, v1962), vshlq_n_s16(v1962, 2uLL)), vaddq_s16(v1955, v20)), 5uLL))), v1957);
                v1952 += 32;
                v1960 = (v1960 + v114);
                v1959 = v1961;
              }

              while (v1952 != 256);
              v1963 = 0;
              v1964 = v258 - 2 * v114;
              v1965 = *(v1964 + 8);
              v1966 = &v1964[v114 + 8];
              v1967 = (v1966 + v114 + v114);
              v1968 = vzip1q_s8(*(v1967 + v114), v19);
              v1969 = vzip1q_s8(*v1967, v19);
              v1970 = vzip1q_s8(*(v1966 + v114), v19);
              v1971 = vzip1q_s8(*v1966, v19);
              v137 = vzip1q_s8(v1965, v19);
              v1972 = (v111 + 5 * v114 + v256 + v114 * v257 - 2 * v114 + 8);
              v273 = v2700;
              v274 = v2709;
              do
              {
                a8 = v1971;
                v1971 = v1970;
                v1970 = v1969;
                v1969 = v1968;
                v1968 = vzip1q_s8(*v1972, v19);
                v1973 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1971, v1970), 2uLL), vaddq_s16(a8, v1969));
                a10 = vshlq_n_s16(v1973, 2uLL);
                v1974 = vaddq_s16(vaddq_s16(v137, v1973), a10);
                a9 = vaddq_s16(v1968, v20);
                *(&v2759 + v1963) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(v1974, a9), 5uLL))), v1970);
                v1963 += 32;
                v1972 = (v1972 + v114);
                v137 = a8;
              }

              while (v1963 != 256);
              break;
            case 4:
              v1595 = 0;
              v1596 = (v258 - 2);
              do
              {
                v1597 = *v1596;
                v1596 = (v1596 + v114);
                v1598 = vzip1q_s8(vextq_s8(v1597, v1597, 2uLL), v19);
                v1599 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1598, vzip1q_s8(vextq_s8(v1597, v1597, 3uLL), v19)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1597, v1597, 1uLL), v19), vzip1q_s8(vextq_s8(v1597, v1597, 4uLL), v19)));
                *(&v2758 + v1595) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1599, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1597, v19), vzip1q_s8(vextq_s8(v1597, v1597, 5uLL), v19)), v1599)), v20), 5uLL))), v1598);
                v1595 += 32;
              }

              while (v1595 != 256);
              v1600 = 0;
              v1601 = (v258 + 6);
              v273 = v2700;
              v274 = v2709;
              do
              {
                v1602 = *v1601;
                v1601 = (v1601 + v114);
                v1603 = vzip1q_s8(vextq_s8(v1602, v1602, 2uLL), v19);
                v1604 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1603, vzip1q_s8(vextq_s8(v1602, v1602, 3uLL), v19)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1602, v1602, 1uLL), v19), vzip1q_s8(vextq_s8(v1602, v1602, 4uLL), v19)));
                v137 = vzip1q_s8(v1602, v19);
                *(&v2759 + v1600) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1604, 2uLL), vaddq_s16(vaddq_s16(v137, vzip1q_s8(vextq_s8(v1602, v1602, 5uLL), v19)), v1604)), v20), 5uLL))), v1603);
                v1600 += 32;
              }

              while (v1600 != 256);
              break;
            case 5:
              v1848 = v111 + v256 + v257 * v114;
              v1849 = v114;
              v2696 = v260 * v116;
              v1850 = v259;
              v1851 = 2;
              goto LABEL_1044;
            case 6:
              v2695 = v260 * v116;
              v2742 = v10;
              v2756 = v19;
              v2693 = v112;
              v2703 = v143;
              v2686 = v259;
              sub_27729BFC4(v2758.i8, 0x20u, v258, v114);
              sub_27729BFC4(v2759.i8, 0x20u, v258 + 8, v114);
              goto LABEL_1102;
            case 7:
              v1848 = v111 + v256 + v257 * v114;
              v1849 = v114;
              v2696 = v260 * v116;
              v1850 = v259;
              v1851 = 3;
LABEL_1044:
              v2295 = 2;
              goto LABEL_1068;
            case 8:
              v2494 = 0;
              v2495 = (v258 - 2);
              do
              {
                v2496 = &v2758.i8[v2494];
                v2497 = *v2495;
                v2495 = (v2495 + v114);
                v2498 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v2497, v2497, 2uLL), v19), vzip1q_s8(vextq_s8(v2497, v2497, 3uLL), v19)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v2497, v2497, 1uLL), v19), vzip1q_s8(vextq_s8(v2497, v2497, 4uLL), v19)));
                *v2497.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v2498, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v2497, v19), vzip1q_s8(vextq_s8(v2497, v2497, 5uLL), v19)), v2498)), v20), 5uLL));
                v2498.i64[0] = v19.i64[0];
                vst2_s8(v2496, v2497);
                v2494 += 32;
              }

              while (v2494 != 256);
              v2499 = 0;
              v2500 = (v258 + 6);
              v273 = v2700;
              v274 = v2709;
              do
              {
                v2501 = &v2759.i8[v2499];
                v2502 = *v2500;
                v2500 = (v2500 + v114);
                v2503 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v2502, v2502, 2uLL), v19), vzip1q_s8(vextq_s8(v2502, v2502, 3uLL), v19)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v2502, v2502, 1uLL), v19), vzip1q_s8(vextq_s8(v2502, v2502, 4uLL), v19)));
                *v2502.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v2503, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v2502, v19), vzip1q_s8(vextq_s8(v2502, v2502, 5uLL), v19)), v2503)), v20), 5uLL));
                v2503.i64[0] = v19.i64[0];
                vst2_s8(v2501, v2502);
                v2499 += 32;
              }

              while (v2499 != 256);
              break;
            case 9:
              v2695 = v260 * v116;
              v2686 = v259;
              v2742 = v10;
              v2756 = v19;
              v2693 = v112;
              v2703 = v143;
              sub_27729B614(v2758.i8, 0x20u, v258, v114, 8);
              sub_27729B614(v2759.i8, 0x20u, v258 + 8, v114, 8);
              goto LABEL_1102;
            case 10:
              v2695 = v260 * v116;
              v2686 = v259;
              v2742 = v10;
              v2756 = v19;
              v2693 = v112;
              v2703 = v143;
              sub_27729B7DC(&v2758, 32, v258, v114, 8);
              sub_27729B7DC(&v2759, 32, v258 + 8, v114, 8);
              goto LABEL_1102;
            case 11:
              v2695 = v260 * v116;
              v2686 = v259;
              v2742 = v10;
              v2756 = v19;
              v2693 = v112;
              v2703 = v143;
              sub_27729B98C(v2758.i8, 0x20u, v258, v114, 8);
              sub_27729B98C(v2759.i8, 0x20u, v258 + 8, v114, 8);
              goto LABEL_1102;
            case 12:
              v1615 = 0;
              v1616 = (v258 - 2);
              do
              {
                v1617 = *v1616;
                v1616 = (v1616 + v114);
                v1618 = vzip1q_s8(vextq_s8(v1617, v1617, 3uLL), v19);
                v1619 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1617, v1617, 2uLL), v19), v1618), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1617, v1617, 1uLL), v19), vzip1q_s8(vextq_s8(v1617, v1617, 4uLL), v19)));
                *(&v2758 + v1615) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1619, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1617, v19), vzip1q_s8(vextq_s8(v1617, v1617, 5uLL), v19)), v1619)), v20), 5uLL))), v1618);
                v1615 += 32;
              }

              while (v1615 != 256);
              v1620 = 0;
              v1621 = (v258 + 6);
              v273 = v2700;
              v274 = v2709;
              do
              {
                v1622 = *v1621;
                v1621 = (v1621 + v114);
                v1623 = vzip1q_s8(vextq_s8(v1622, v1622, 3uLL), v19);
                v1624 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1622, v1622, 2uLL), v19), v1623), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1622, v1622, 1uLL), v19), vzip1q_s8(vextq_s8(v1622, v1622, 4uLL), v19)));
                v137 = vzip1q_s8(v1622, v19);
                *(&v2759 + v1620) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1624, 2uLL), vaddq_s16(vaddq_s16(v137, vzip1q_s8(vextq_s8(v1622, v1622, 5uLL), v19)), v1624)), v20), 5uLL))), v1623);
                v1620 += 32;
              }

              while (v1620 != 256);
              break;
            case 13:
              v1848 = v111 + v256 + v257 * v114;
              v1849 = v114;
              v2696 = v260 * v116;
              v1850 = v259;
              v1851 = 2;
              goto LABEL_1067;
            case 14:
              v2695 = v260 * v116;
              v2742 = v10;
              v2756 = v19;
              v2693 = v112;
              v2703 = v143;
              v2686 = v259;
              sub_27729C39C(v2758.i8, 0x20u, v258, v114);
              sub_27729C39C(v2759.i8, 0x20u, v258 + 8, v114);
LABEL_1102:
              v262 = v2686;
              v112 = v2693;
              v263 = v2695;
              v143 = v2703;
              goto LABEL_1103;
            case 15:
              v1848 = v111 + v256 + v257 * v114;
              v1849 = v114;
              v2696 = v260 * v116;
              v1850 = v259;
              v1851 = 3;
LABEL_1067:
              v2295 = 3;
LABEL_1068:
              v2742 = v10;
              v2756 = v19;
              v2705 = v143;
              sub_27729AF04(v2758.i8, v1848, v1849, 8, v1851, v2295);
              v262 = v1850;
              v263 = v2696;
              v143 = v2705;
LABEL_1103:
              v21.i64[0] = 0x20002000200020;
              v21.i64[1] = 0x20002000200020;
              v20.i64[0] = 0x10001000100010;
              v20.i64[1] = 0x10001000100010;
              v10 = v2742;
              v19 = v2756;
              v266 = v2727;
              v265 = v2728;
              v12 = v2720;
              result = v2687;
              v273 = v2700;
              v274 = v2709;
              break;
            default:
              v272 = 0;
              v273 = v2700;
              v274 = v2709;
              do
              {
                v275 = &v2758.i8[v272];
                v276 = *v258;
                v258 = (v258 + v114);
                v277 = v19.i64[0];
                vst2_s8(v275, v276);
                v275 += 16;
                *v275 = vzip2q_s8(v276, v19);
                v272 += 32;
              }

              while (v272 != 256);
              break;
          }

          v2408 = 0;
          do
          {
            v2410 = *(&v2758 + v2408);
            v2409 = *(&v2758 + v2408 + 16);
            v2412 = *(&v2760 + v2408);
            v2411 = v2761[v2408 / 0x10];
            if (v2726)
            {
              v137 = *v268;
              a8 = *(v268 + 16);
              a9 = *(v268 + 32);
              a10 = *(v268 + 48);
              v268 += 64;
              v2410 = vaddq_s16(v137, v2410);
              v2409 = vaddq_s16(a8, v2409);
              v2412 = vaddq_s16(a9, v2412);
              v2411 = vaddq_s16(a10, v2411);
            }

            *v267 = vqmovun_high_s16(vqmovun_s16(v2410), v2409);
            *(v267 + v266) = vqmovun_high_s16(vqmovun_s16(v2412), v2411);
            v267 = (v267 + v273);
            v2408 += 64;
          }

          while (v2408 != 256);
          if (v274 == 64)
          {
            __asm { PRFM            #0, [X24] }

            v2439 = 5;
            v2415 = v2766;
            v13 = v2724;
            do
            {
              v2440 = _X24;
              _X24 = (_X24 + v116);
              __asm { PRFM            #0, [X24] }

              v2442 = vextq_s8(*v2440, *v2440, 2uLL);
              v2442.i16[7] = v2440[1].i16[0];
              v2443 = vrhaddq_u8(*v2440, v2442);
              v2442.i64[0] = v19.i64[0];
              v2415[3] = vzip2q_s8(v2443, v19);
              v2415 += 2;
              vst2_s8(v2415->i8, *(&v2442 - 8));
              --v2439;
            }

            while (v2439 > 2);
            v2444 = vextq_s8(*_X24, *_X24, 2uLL);
            v2444.i16[7] = _X24[1].i16[0];
            v2445 = vrhaddq_u8(*_X24, v2444);
            v2446 = v2415[2].i8;
            v2444.i64[0] = v19.i64[0];
            vst2_s8(v2446, *(&v2444 - 8));
            v2421 = vzip2q_s8(v2445, v19);
LABEL_1120:
            v2429 = v2677;
          }

          else
          {
            v13 = v2724;
            if (v274 != 4)
            {
              if (!v274)
              {
                __asm { PRFM            #0, [X24] }

                v2414 = 5;
                v2415 = v2766;
                do
                {
                  v2416 = _X24;
                  _X24 = (_X24 + v116);
                  __asm { PRFM            #0, [X24] }

                  v2418 = *v2416;
                  v2415[3] = vzip2q_s8(*v2416, v19);
                  v2415 += 2;
                  v2419 = v19.i64[0];
                  vst2_s8(v2415->i8, v2418);
                  --v2414;
                }

                while (v2414 > 2);
                v2420 = *_X24;
                v2421 = vzip2q_s8(*_X24, v19);
                v2422 = v2415[2].i8;
                v2423 = v19.i64[0];
                vst2_s8(v2422, v2420);
                goto LABEL_1120;
              }

              v2447 = 0;
              v2448 = v2698 - (8 * v108 + 8 * v2707) + 64;
              v2449 = v19;
              v2449.i32[0] = v2448 | (v2448 << 16);
              v2450 = v19;
              v2450.i32[0] = (8 * v108 - v2698) | ((8 * v108 - v2698) << 16);
              v2451 = vqtbl1q_s8(v2449, xmmword_2773B3DF0);
              v2452 = vqtbl1q_s8(v2450, xmmword_2773B3DF0);
              v2453 = v19;
              v2453.i32[0] = (8 * v2707 - v2698) | ((8 * v2707 - v2698) << 16);
              v2454 = vqtbl1q_s8(v2453, xmmword_2773B3DF0);
              v2776 = v2451;
              v2777 = v2452;
              v2778 = v2454;
              v2779 = v143;
              _X9 = &_X24->i8[v116];
              __asm { PRFM            #0, [X9] }

              v137.i64[0] = _X24->i64[0];
              v2457 = vqtbl1q_s8(v137, xmmword_2773B3E00);
              v2457.i16[3] = _X24->i16[4];
              v2458 = vzip1q_s8(v2457, v19);
              v2459 = vzip1q_s8(v137, v19);
              v2460 = (v112 + v263 + v262 + v116 + 8);
              _X12 = v112 + v263 + v262 + 2 * v116;
              do
              {
                __asm { PRFM            #0, [X12] }

                v2463 = vmlaq_s16(vmulq_s16(v2452, v2458), v2451, v2459);
                v2458.i64[0] = *(v2460 - 1);
                v2459 = vzip1q_s8(v2458, v19);
                v2464 = vqtbl1q_s8(v2458, xmmword_2773B3E00);
                v2464.i16[3] = *v2460;
                v2460 = (v2460 + v116);
                v2458 = vzip1q_s8(v2464, v19);
                *(&v2767 + v2447) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v2463, v2454, v2459), v143, v2458), v21), 6uLL);
                v2447 += 32;
                _X12 += v116;
              }

              while (v2447 != 128);
              v2465 = 0;
              _X9 = &_X24->i8[v116 + 8];
              __asm { PRFM            #0, [X9] }

              v2459.i64[0] = _X24->i64[1];
              v2468 = vqtbl1q_s8(v2459, xmmword_2773B3E00);
              v2468.i16[3] = _X24[1].i16[0];
              a8 = vzip1q_s8(v2468, v19);
              v2469 = vzip1q_s8(v2459, v19);
              v2470 = v112 + v262 + v116;
              v2471 = v112 + v262 + 2 * v116 + 8;
              v2429 = v2677;
              do
              {
                _X12 = v2471 + v263;
                __asm { PRFM            #0, [X12] }

                v2474 = vmlaq_s16(vmulq_s16(v2452, a8), v2451, v2469);
                a8.n128_u64[0] = *(v2470 + v263 + 8);
                v2469 = vzip1q_s8(a8, v19);
                v2475 = vqtbl1q_s8(a8, xmmword_2773B3E00);
                v2475.i16[3] = *(v2470 + v263 + 16);
                a8 = vzip1q_s8(v2475, v19);
                a9 = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v2474, v2454, v2469), v143, a8), v21), 6uLL);
                *(&v2768 + v2465) = a9;
                v2465 += 32;
                v2470 += v116;
                v2471 += v116;
              }

              while (v2465 != 128);
LABEL_1126:
              v2476 = 1;
              v2477 = &v2767;
              do
              {
                v2478 = v2476;
                v2480 = *v2477;
                v2479 = v2477[1];
                v2482 = v2477[2];
                v2481 = v2477[3];
                if (v12)
                {
                  v2483 = *v271;
                  a8 = *(v271 + 16);
                  a9 = *(v271 + 32);
                  a10 = *(v271 + 48);
                  v271 += 64;
                  v2480 = vaddq_s16(v2483, v2480);
                  v2479 = vaddq_s16(a8, v2479);
                  v2482 = vaddq_s16(a9, v2482);
                  v2481 = vaddq_s16(a10, v2481);
                }

                v2476 = 0;
                *v270 = vqmovun_high_s16(vqmovun_s16(v2480), v2479);
                *(v270 + v265) = vqmovun_high_s16(vqmovun_s16(v2482), v2481);
                v270 = (v270 + v2429);
                v2477 += 4;
              }

              while ((v2478 & 1) != 0);
LABEL_317:
              LODWORD(v15) = v2714;
              goto LABEL_318;
            }

            _X8 = &_X24->i8[v116];
            __asm { PRFM            #0, [X8] }

            v2426 = *_X24;
            v2427 = (v112 + v262 + v263);
            v2428 = 5;
            v2415 = v2766;
            v2429 = v2677;
            do
            {
              _X12 = &v2427->i8[2 * v116];
              v2427 = (v2427 + v116);
              __asm { PRFM            #0, [X12] }

              v2432 = *v2427;
              v2433 = vrhaddq_u8(v2426, *v2427);
              v2434 = v19.i64[0];
              v2415[3] = vzip2q_s8(v2433, v19);
              v2415 += 2;
              vst2_s8(v2415->i8, v2433);
              --v2428;
              v2426 = v2432;
            }

            while (v2428 > 2);
            v2435 = vrhaddq_u8(v2432, *(v2427 + v116));
            v2436 = v2415[2].i8;
            v2437 = v19.i64[0];
            vst2_s8(v2436, v2435);
            v2421 = vzip2q_s8(v2435, v19);
          }

          v2415[3] = v2421;
          goto LABEL_1126;
      }

LABEL_1023:
      if (++v13 == v2757)
      {
        return result;
      }
    }

    v2721 = v13;
    v31 = *(*v2719 + 8 * *(v22 + 8));
    v32 = *v22;
    v33 = v22[1];
    v34 = *(v2719[1] + 8 * *(v22 + 9));
    v35 = v22[2];
    v36 = v22[3];
    v37 = 8 - (v32 & 7);
    v38 = 8 - (v33 & 7);
    v2694 = v33 & 7;
    v2682 = v32 & 7;
    v2683 = v35 & 7;
    v45 = v19;
    v46 = v19;
    v47 = v19;
    v2672 = v2694 * v2682;
    v39 = v19;
    v40 = 8 - (v36 & 7);
    v2697 = v36 & 7;
    v48 = v19;
    v41 = *(v31 + 164);
    v42 = *(v31 + 132);
    v43 = *(v31 + 148);
    v44 = *(v34 + 164);
    v45.i32[0] = 65537 * v38 * v37;
    v46.i32[0] = 65537 * v38 * v2682;
    v47.i32[0] = 65537 * v37 * v2694;
    v48.i32[0] = 65537 * v40 * (8 - v2683);
    v49 = *(v34 + 132);
    a8 = v19;
    a8.n128_u32[0] = 65537 * v40 * v2683;
    a9 = v19;
    a9.n128_u32[0] = 65537 * (8 - v2683) * v2697;
    v2673 = v2697 * v2683;
    a10 = v19;
    a10.n128_u32[0] = 65537 * v2697 * v2683;
    v50 = *(v34 + 148);
    v51 = v15 + v29;
    v52 = v2716 + v30;
    v53 = v15 + v29 + (v32 >> 2);
    v54 = v2716 + v30 + (v33 >> 2);
    if (v53 <= -18)
    {
      v53 = -18;
    }

    if (v54 <= -18)
    {
      v54 = -18;
    }

    if (v53 >= v41 + 1)
    {
      v55 = v41 + 1;
    }

    else
    {
      v55 = v53;
    }

    if (v54 >= v42 + 1)
    {
      v56 = v42 + 1;
    }

    else
    {
      v56 = v54;
    }

    v57 = v51 + (v35 >> 2);
    v58 = v52 + (v36 >> 2);
    if (v57 <= -18)
    {
      v57 = -18;
    }

    if (v58 <= -18)
    {
      v58 = -18;
    }

    if (v57 >= v44 + 1)
    {
      v59 = v44 + 1;
    }

    else
    {
      v59 = v57;
    }

    if (v58 >= v49 + 1)
    {
      v60 = v49 + 1;
    }

    else
    {
      v60 = v58;
    }

    v61 = ((v32 >> 2) & 0xFFFFFFFE) + v51;
    v62 = (v33 >> 3) + (v52 >> 1);
    v2678 = v61;
    if (v61 <= -16)
    {
      v61 = -16;
    }

    if (v62 <= -8)
    {
      v62 = -8;
    }

    v63 = *(v31 + 180) - 2;
    v2679 = v63;
    if (v61 < v63)
    {
      v63 = v61;
    }

    if (v62 >= v43)
    {
      v64 = v43 - 1;
    }

    else
    {
      v64 = v62;
    }

    v65 = ((v35 >> 2) & 0xFFFFFFFE) + v51;
    v66 = (v36 >> 3) + (v52 >> 1);
    v2680 = v65;
    if (v65 <= -16)
    {
      v65 = -16;
    }

    if (v66 <= -8)
    {
      v66 = -8;
    }

    v67 = *(v34 + 180) - 2;
    v2681 = v67;
    if (v65 < v67)
    {
      v67 = v65;
    }

    if (v66 >= v50)
    {
      v68 = v50 - 1;
    }

    else
    {
      v68 = v66;
    }

    v69 = &v2717->i8[v29 + (v2727 * v30)];
    v70 = v2726 + 2 * v29 + 32 * v30;
    v71 = v30 >> 1;
    v72 = &v2715->i8[v29 + (v71 * v2728)];
    v12 = v2720;
    v73 = *(v31 + 168);
    v74 = v2720 + 2 * v29 + 32 * v71;
    v75 = *(v31 + 184);
    v76.i64[1] = 0x302010003020100;
    v2776 = vqtbl1q_s8(v45, xmmword_2773B3DF0);
    v2777 = vqtbl1q_s8(v46, xmmword_2773B3DF0);
    v77 = v33 & 3 | (4 * (v32 & 3u));
    v78 = *(v31 + 64);
    v79 = *(v31 + 72);
    v2701 = v36 & 3 | (4 * (v35 & 3u));
    v80 = *(v34 + 168);
    v81 = *(v34 + 184);
    v82 = *(v34 + 64);
    v83 = *(v34 + 72);
    v84 = v55;
    v85 = v81;
    v39.i32[0] = 65537 * v2672;
    v86 = vqtbl1q_s8(v39, xmmword_2773B3DF0);
    v2778 = vqtbl1q_s8(v47, xmmword_2773B3DF0);
    v2779 = v86;
    v87 = vqtbl1q_s8(v48, xmmword_2773B3DF0);
    v88 = vqtbl1q_s8(a8, xmmword_2773B3DF0);
    v89 = vqtbl1q_s8(a9, xmmword_2773B3DF0);
    v90 = vqtbl1q_s8(a10, xmmword_2773B3DF0);
    v2780 = v87;
    v2781 = v88;
    v2782 = v89;
    v2783 = v90;
    v91 = v56;
    LODWORD(v71) = v84 + v56 * v73;
    v92 = v78;
    v93 = (v78 + v71);
    v2675 = v60;
    v2676 = v59;
    v2674 = v82;
    v2706 = v80;
    v2708 = (v82 + v59 + v60 * v80);
    v2684 = v79;
    v94 = v64 * v75;
    _X24 = (v79 + v63 + v64 * v75);
    v96 = v68 * v85;
    v97 = (v83 + v67 + v68 * v85);
    if (v26 == 4)
    {
      v2730 = v10;
      v2744 = v19;
      v2690 = v97;
      if (v27 == 8)
      {
        v170 = &v93[v73];
        v2685 = v170;
        switch(v77)
        {
          case 1:
            v691 = sub_27729F23C(&v2758, v93, v73, v87, v88, *v89.i64, v90, *v48.i64, a8, a9, a10);
            v177 = sub_27729F23C(&v2760, v2685, v73, v691, v692, v693, v694, v695, v696, v697, v698);
            goto LABEL_424;
          case 2:
            v573 = sub_27729F394(&v2758, v93, v73, *v87.i64, v88, v89, *v90.i64, v48, a8, a9, a10);
            *v177.i64 = sub_27729F394(&v2760, v2685, v73, v573, v574, v575, v576, v577, v578, v579, v580);
            goto LABEL_424;
          case 3:
            v645 = sub_27729F4D8(&v2758, v93, v73, v87, v88, *v89.i64, v90, *v48.i64, a8, a9, a10);
            v177 = sub_27729F4D8(&v2760, v2685, v73, v645, v646, v647, v648, v649, v650, v651, v652);
            goto LABEL_424;
          case 4:
            sub_27729C91C(&v2758, 8u, v93, v73);
            v177 = sub_27729C91C(&v2760, 8u, v2685, v73);
            goto LABEL_424;
          case 5:
            *v771.i64 = sub_27729CAF0(&v2758, 8u, v93, v73, v87, *v88.i64, *v89.i64, *v90.i64, *v48.i64, a8, a9, a10);
            *v177.i64 = sub_27729CAF0(&v2760, 8u, v2685, v73, v771, v772, v773, v774, v775, v776, v777, v778);
            goto LABEL_424;
          case 6:
            *v787.i64 = sub_27729CDD0(&v2758, 8u, v93, v73, v87, v88, v89, v90, v48, a8, a9, a10);
            *v177.i64 = sub_27729CDD0(&v2760, 8u, v2685, v73, v787, v788, v789, v790, v791, v792, v793, v794);
            goto LABEL_424;
          case 7:
            v659 = sub_27729D274(&v2758, 8u, v93, v73, *v87.i64, *v88.i64, *v89.i64, *v90.i64, *v48.i64, a8.n128_f64[0], a9, a10);
            *v177.i64 = sub_27729D274(&v2760, 8u, v2685, v73, v659, v660, v661, v662, v663, v664, v665, v666);
            goto LABEL_424;
          case 8:
            sub_27729D550(&v2758, 8u, v93, v73);
            v177 = sub_27729D550(&v2760, 8u, v2685, v73);
            goto LABEL_424;
          case 9:
            sub_27729D714(&v2758, 8u, v93, v73);
            *v177.i64 = sub_27729D714(&v2760, 8u, v2685, v73);
            goto LABEL_424;
          case 10:
            *v797.i64 = sub_27729F62C(&v2758, v93, v73, v87, v88, v89, v90, v48, a8, a9, a10);
            *v177.i64 = sub_27729F62C(&v2760, v2685, v73, v797, v798, v799, v800, v801, v802, v803, v804);
            goto LABEL_424;
          case 11:
            sub_27729DE6C(&v2758, 8u, v93, v73);
            *v177.i64 = sub_27729DE6C(&v2760, 8u, v2685, v73);
            goto LABEL_424;
          case 12:
            sub_27729E5C4(&v2758, 8u, v93, v73);
            v177 = sub_27729E5C4(&v2760, 8u, v2685, v73);
            goto LABEL_424;
          case 13:
            *v779.i64 = sub_27729E798(&v2758, 8u, v93, v73, v87, *v88.i64, *v89.i64, *v90.i64, *v48.i64, a8, a9, a10);
            *v177.i64 = sub_27729E798(&v2760, 8u, v2685, v73, v779, v780, v781, v782, v783, v784, v785, v786);
            goto LABEL_424;
          case 14:
            *v525.i64 = sub_27729EA7C(&v2758, 8u, v93, v73, v87, v88, v89, v90, v48, a8, a9, a10);
            *v177.i64 = sub_27729EA7C(&v2760, 8u, v2685, v73, v525, v526, v527, v528, v529, v530, v531, v532);
            goto LABEL_424;
          case 15:
            v637 = sub_27729EF20(&v2758, 8u, v93, v73, *v87.i64, *v88.i64, *v89.i64, *v90.i64, *v48.i64, a8.n128_f64[0], a9, a10);
            *v177.i64 = sub_27729EF20(&v2760, 8u, v2685, v73, v637, v638, v639, v640, v641, v642, v643, v644);
LABEL_424:
            v19 = v2744;
            break;
          default:
            v87.i32[0] = *(v93 + v73);
            v88.i32[0] = *(v93 + 2 * v73);
            v89.i32[0] = *v93;
            v90.i32[0] = *(v93 + 3 * v73);
            v171.i64[0] = vzip1q_s8(v89, v19).u64[0];
            v172 = vzip1q_s8(v87, v19);
            v173.i64[0] = vzip1q_s8(v88, v19).u64[0];
            v174 = vzip1q_s8(v90, v19);
            v171.i64[1] = v172.i64[0];
            v173.i64[1] = v174.i64[0];
            v2758 = v171;
            v2759 = v173;
            v172.i32[0] = *v170;
            v173.i32[0] = *(v170 + v73);
            v171.i32[0] = *(v170 + 2 * v73);
            v174.i32[0] = *(v170 + 3 * v73);
            v177.i64[0] = vzip1q_s8(v172, v19).u64[0];
            v175 = vzip1q_s8(v173, v19);
            v178.i64[0] = vzip1q_s8(v171, v19).u64[0];
            v176 = vzip1q_s8(v174, v19);
            v177.i64[1] = v175.i64[0];
            v178.i64[1] = v176.i64[0];
            v2760 = v177;
            v2761[0] = v178;
            break;
        }

        v805 = &v2708[v2706];
        switch(v2701)
        {
          case 1:
            v853 = sub_27729F23C(&v2762, v2708, v2706, v177, v175, *v178.i64, v176, *v48.i64, a8, a9, a10);
            v811 = sub_27729F23C(&v2764, v805, v2706, v853, v854, v855, v856, v857, v858, v859, v860);
            break;
          case 2:
            v821 = sub_27729F394(&v2762, v2708, v2706, *v177.i64, v175, v178, *v176.i64, v48, a8, a9, a10);
            sub_27729F394(&v2764, v805, v2706, v821, v822, v823, v824, v825, v826, v827, v828);
            break;
          case 3:
            v837 = sub_27729F4D8(&v2762, v2708, v2706, v177, v175, *v178.i64, v176, *v48.i64, a8, a9, a10);
            v811 = sub_27729F4D8(&v2764, v805, v2706, v837, v838, v839, v840, v841, v842, v843, v844);
            break;
          case 4:
            sub_27729C91C(&v2762, 8u, v2708, v2706);
            v811 = sub_27729C91C(&v2764, 8u, v805, v2706);
            break;
          case 5:
            *v861.i64 = sub_27729CAF0(&v2762, 8u, v2708, v2706, v177, *v175.i64, *v178.i64, *v176.i64, *v48.i64, a8, a9, a10);
            sub_27729CAF0(&v2764, 8u, v805, v2706, v861, v862, v863, v864, v865, v866, v867, v868);
            break;
          case 6:
            *v877.i64 = sub_27729CDD0(&v2762, 8u, v2708, v2706, v177, v175, v178, v176, v48, a8, a9, a10);
            sub_27729CDD0(&v2764, 8u, v805, v2706, v877, v878, v879, v880, v881, v882, v883, v884);
            break;
          case 7:
            v845 = sub_27729D274(&v2762, 8u, v2708, v2706, *v177.i64, *v175.i64, *v178.i64, *v176.i64, *v48.i64, a8.n128_f64[0], a9, a10);
            sub_27729D274(&v2764, 8u, v805, v2706, v845, v846, v847, v848, v849, v850, v851, v852);
            break;
          case 8:
            sub_27729D550(&v2762, 8u, v2708, v2706);
            v811 = sub_27729D550(&v2764, 8u, v805, v2706);
            break;
          case 9:
            sub_27729D714(&v2762, 8u, v2708, v2706);
            sub_27729D714(&v2764, 8u, v805, v2706);
            break;
          case 10:
            *v885.i64 = sub_27729F62C(&v2762, v2708, v2706, v177, v175, v178, v176, v48, a8, a9, a10);
            sub_27729F62C(&v2764, v805, v2706, v885, v886, v887, v888, v889, v890, v891, v892);
            break;
          case 11:
            sub_27729DE6C(&v2762, 8u, v2708, v2706);
            sub_27729DE6C(&v2764, 8u, v805, v2706);
            break;
          case 12:
            sub_27729E5C4(&v2762, 8u, v2708, v2706);
            v811 = sub_27729E5C4(&v2764, 8u, v805, v2706);
            break;
          case 13:
            *v869.i64 = sub_27729E798(&v2762, 8u, v2708, v2706, v177, *v175.i64, *v178.i64, *v176.i64, *v48.i64, a8, a9, a10);
            sub_27729E798(&v2764, 8u, v805, v2706, v869, v870, v871, v872, v873, v874, v875, v876);
            break;
          case 14:
            *v813.i64 = sub_27729EA7C(&v2762, 8u, v2708, v2706, v177, v175, v178, v176, v48, a8, a9, a10);
            sub_27729EA7C(&v2764, 8u, v805, v2706, v813, v814, v815, v816, v817, v818, v819, v820);
            break;
          case 15:
            v829 = sub_27729EF20(&v2762, 8u, v2708, v2706, *v177.i64, *v175.i64, *v178.i64, *v176.i64, *v48.i64, a8.n128_f64[0], a9, a10);
            sub_27729EF20(&v2764, 8u, v805, v2706, v829, v830, v831, v832, v833, v834, v835, v836);
            break;
          default:
            v177.i32[0] = *(v2708 + v2706);
            v175.i32[0] = *(v2708 + 2 * v2706);
            v178.i32[0] = *v2708;
            v176.i32[0] = *(v2708 + 3 * v2706);
            v806.i64[0] = vzip1q_s8(v178, v19).u64[0];
            v807 = vzip1q_s8(v177, v19);
            v808.i64[0] = vzip1q_s8(v175, v19).u64[0];
            v809 = vzip1q_s8(v176, v19);
            v806.i64[1] = v807.i64[0];
            v808.i64[1] = v809.i64[0];
            v2762 = v806;
            v2763 = v808;
            v807.i32[0] = *v805;
            v808.i32[0] = *(v805 + v2706);
            v806.i32[0] = *(v805 + 2 * v2706);
            v809.i32[0] = *(v805 + 3 * v2706);
            v811.i64[0] = vzip1q_s8(v807, v19).u64[0];
            v810 = vzip1q_s8(v808, v19);
            v812.i64[0] = vzip1q_s8(v806, v19).u64[0];
            v811.i64[1] = v810.i64[0];
            v812.i64[1] = vzip1q_s8(v809, v19).u64[0];
            v2764 = v811;
            v2765[0] = v812;
            break;
        }

        v896 = 1;
        v897 = &v2758;
        do
        {
          v898 = v896;
          v811.i64[0] = v897->i64[0];
          v810.i64[0] = v897->i64[1];
          v48.i64[0] = v897[1].i64[0];
          a8.n128_u64[0] = v897[1].u64[1];
          v812.i64[0] = v897[32].i64[0];
          a9.n128_u64[0] = v897[32].u64[1];
          a10.n128_u64[0] = v897[33].u64[0];
          v76.i64[0] = v897[33].i64[1];
          v899 = vrhaddq_u16(v811, v812);
          v812 = vrhaddq_u16(v810, a9);
          v810 = vrhaddq_u16(v48, a10);
          v811 = vrhaddq_u16(a8, v76);
          if (v2726)
          {
            v48.i64[0] = *v70;
            a8.n128_u64[0] = *(v70 + 32);
            a9.n128_u64[0] = *(v70 + 64);
            a10.n128_u64[0] = *(v70 + 96);
            v70 += 128;
            v899 = vaddq_s16(v899, v48);
            v812 = vaddq_s16(v812, a8);
            v810 = vaddq_s16(v810, a9);
            v811 = vaddq_s16(v811, a10);
          }

          v896 = 0;
          v897 += 2;
          v900 = COERCE_DOUBLE(vqmovun_s16(v899));
          v901 = COERCE_DOUBLE(vqmovun_s16(v812));
          v902 = COERCE_DOUBLE(vqmovun_s16(v810));
          v69->i32[0] = LODWORD(v900);
          *(v69->i32 + v2727) = LODWORD(v901);
          v903 = COERCE_DOUBLE(vqmovun_s16(v811));
          *(v69->i32 + v2700) = LODWORD(v902);
          *(v69->i32 + v2662) = LODWORD(v903);
          v69 = (v69 + v2655);
        }

        while ((v898 & 1) != 0);
        v904 = sub_277290798(&v2767, _X24, v75, v2682, v2694, v903, v902, v901, v900, v48, a8);
        v910 = sub_277290798(&v2768, _X24->i64 + (2 * v75), v75, v2682, v2694, v904, v905, v906, v907, v908, v909);
        v916 = sub_277290798(&v2772, v2690, v85, v2683, v2697, v910, v911, v912, v913, v914, v915);
        sub_277290798(&v2773, v2690 + (2 * v85), v85, v2683, v2697, v916, v917, v918, v919, v920, v921);
        v923.i64[0] = v2767.i64[1];
        v922.i64[0] = v2767.i64[0];
        a8.n128_u64[0] = v2768.u64[1];
        v924.i64[0] = v2768.i64[0];
        a9.n128_u64[0] = v2772.u64[1];
        v925.i64[0] = v2772.i64[0];
        v926.i64[0] = v2773.i64[1];
        a10.n128_u64[0] = v2773.i64[0];
        v927 = vrhaddq_u16(v922, v925);
        v928 = vrhaddq_u16(v923, a9);
        v929 = vrhaddq_u16(v924, a10);
        v930 = vrhaddq_u16(a8, v926);
        v12 = v2720;
        if (v2720)
        {
          v924.i64[0] = *v74;
          a8.n128_u64[0] = *(v74 + 32);
          a9.n128_u64[0] = *(v74 + 64);
          a10.n128_u64[0] = *(v74 + 96);
          v927 = vaddq_s16(v927, v924);
          v928 = vaddq_s16(v928, a8);
          v929 = vaddq_s16(v929, a9);
          v930 = vaddq_s16(v930, a10);
        }

        result = v2687;
        v20.i64[0] = 0x10001000100010;
        v20.i64[1] = 0x10001000100010;
        v21.i64[0] = 0x20002000200020;
        v21.i64[1] = 0x20002000200020;
        v72->i32[0] = vqmovun_s16(v927).u32[0];
        *(v72->i32 + v2728) = vqmovun_s16(v928).u32[0];
        *(v72->i32 + v2677) = vqmovun_s16(v929).u32[0];
        *(v72->i32 + v2656) = vqmovun_s16(v930).u32[0];
      }

      else
      {
        switch(v77)
        {
          case 1:
            v234 = sub_27729F23C(&v2758, v93, v73, v87, v88, *v89.i64, v90, *v48.i64, a8, a9, a10);
            goto LABEL_442;
          case 2:
            *v234.i64 = sub_27729F394(&v2758, v93, v73, *v87.i64, v88, v89, *v90.i64, v48, a8, a9, a10);
            goto LABEL_442;
          case 3:
            v234 = sub_27729F4D8(&v2758, v93, v73, v87, v88, *v89.i64, v90, *v48.i64, a8, a9, a10);
            goto LABEL_442;
          case 4:
            v234 = sub_27729C91C(&v2758, 8u, v93, v73);
            goto LABEL_442;
          case 5:
            *v234.i64 = sub_27729CAF0(&v2758, 8u, v93, v73, v87, *v88.i64, *v89.i64, *v90.i64, *v48.i64, a8, a9, a10);
            goto LABEL_442;
          case 6:
            *v234.i64 = sub_27729CDD0(&v2758, 8u, v93, v73, v87, v88, v89, v90, v48, a8, a9, a10);
            goto LABEL_442;
          case 7:
            *v234.i64 = sub_27729D274(&v2758, 8u, v93, v73, *v87.i64, *v88.i64, *v89.i64, *v90.i64, *v48.i64, a8.n128_f64[0], a9, a10);
            goto LABEL_442;
          case 8:
            v234 = sub_27729D550(&v2758, 8u, v93, v73);
            goto LABEL_442;
          case 9:
            *v234.i64 = sub_27729D714(&v2758, 8u, v93, v73);
            goto LABEL_442;
          case 10:
            *v234.i64 = sub_27729F62C(&v2758, v93, v73, v87, v88, v89, v90, v48, a8, a9, a10);
            goto LABEL_442;
          case 11:
            *v234.i64 = sub_27729DE6C(&v2758, 8u, v93, v73);
            goto LABEL_442;
          case 12:
            v234 = sub_27729E5C4(&v2758, 8u, v93, v73);
            goto LABEL_442;
          case 13:
            *v234.i64 = sub_27729E798(&v2758, 8u, v93, v73, v87, *v88.i64, *v89.i64, *v90.i64, *v48.i64, a8, a9, a10);
            goto LABEL_442;
          case 14:
            *v234.i64 = sub_27729EA7C(&v2758, 8u, v93, v73, v87, v88, v89, v90, v48, a8, a9, a10);
            goto LABEL_442;
          case 15:
            *v234.i64 = sub_27729EF20(&v2758, 8u, v93, v73, *v87.i64, *v88.i64, *v89.i64, *v90.i64, *v48.i64, a8.n128_f64[0], a9, a10);
LABEL_442:
            v19 = v2744;
            break;
          default:
            v87.i32[0] = *v93;
            v88.i32[0] = *(v93 + v73);
            v89.i32[0] = *(v93 + 2 * v73);
            v90.i32[0] = *(v93 + 3 * v73);
            v234.i64[0] = vzip1q_s8(v87, v19).u64[0];
            v232 = vzip1q_s8(v88, v19);
            v235.i64[0] = vzip1q_s8(v89, v19).u64[0];
            v233 = vzip1q_s8(v90, v19);
            v234.i64[1] = v232.i64[0];
            v235.i64[1] = v233.i64[0];
            v2758 = v234;
            v2759 = v235;
            break;
        }

        switch(v2701)
        {
          case 1:
            v894 = sub_27729F23C(&v2762, v2708, v2706, v234, v232, *v235.i64, v233, *v48.i64, a8, a9, a10);
            break;
          case 2:
            sub_27729F394(&v2762, v2708, v2706, *v234.i64, v232, v235, *v233.i64, v48, a8, a9, a10);
            break;
          case 3:
            v894 = sub_27729F4D8(&v2762, v2708, v2706, v234, v232, *v235.i64, v233, *v48.i64, a8, a9, a10);
            break;
          case 4:
            v894 = sub_27729C91C(&v2762, 8u, v2708, v2706);
            break;
          case 5:
            sub_27729CAF0(&v2762, 8u, v2708, v2706, v234, *v232.i64, *v235.i64, *v233.i64, *v48.i64, a8, a9, a10);
            break;
          case 6:
            sub_27729CDD0(&v2762, 8u, v2708, v2706, v234, v232, v235, v233, v48, a8, a9, a10);
            break;
          case 7:
            sub_27729D274(&v2762, 8u, v2708, v2706, *v234.i64, *v232.i64, *v235.i64, *v233.i64, *v48.i64, a8.n128_f64[0], a9, a10);
            break;
          case 8:
            v894 = sub_27729D550(&v2762, 8u, v2708, v2706);
            break;
          case 9:
            sub_27729D714(&v2762, 8u, v2708, v2706);
            break;
          case 10:
            sub_27729F62C(&v2762, v2708, v2706, v234, v232, v235, v233, v48, a8, a9, a10);
            break;
          case 11:
            sub_27729DE6C(&v2762, 8u, v2708, v2706);
            break;
          case 12:
            v894 = sub_27729E5C4(&v2762, 8u, v2708, v2706);
            break;
          case 13:
            sub_27729E798(&v2762, 8u, v2708, v2706, v234, *v232.i64, *v235.i64, *v233.i64, *v48.i64, a8, a9, a10);
            break;
          case 14:
            sub_27729EA7C(&v2762, 8u, v2708, v2706, v234, v232, v235, v233, v48, a8, a9, a10);
            break;
          case 15:
            sub_27729EF20(&v2762, 8u, v2708, v2706, *v234.i64, *v232.i64, *v235.i64, *v233.i64, *v48.i64, a8.n128_f64[0], a9, a10);
            break;
          default:
            v234.i32[0] = *v2708;
            v232.i32[0] = *(v2708 + v2706);
            v235.i32[0] = *(v2708 + 2 * v2706);
            v233.i32[0] = *(v2708 + 3 * v2706);
            v894.i64[0] = vzip1q_s8(v234, v19).u64[0];
            v893 = vzip1q_s8(v232, v19);
            v895.i64[0] = vzip1q_s8(v235, v19).u64[0];
            v894.i64[1] = v893.i64[0];
            v895.i64[1] = vzip1q_s8(v233, v19).u64[0];
            v2762 = v894;
            v2763 = v895;
            break;
        }

        v893.i64[0] = v2758.i64[1];
        v894.i64[0] = v2758.i64[0];
        a8.n128_u64[0] = v2759.u64[1];
        v48.i64[0] = v2759.i64[0];
        a9.n128_u64[0] = v2762.u64[1];
        v895.i64[0] = v2762.i64[0];
        v76.i64[0] = v2763.i64[1];
        a10.n128_u64[0] = v2763.i64[0];
        v931 = vrhaddq_u16(v894, v895);
        v932 = vrhaddq_u16(v893, a9);
        v933 = vrhaddq_u16(v48, a10);
        v934 = vrhaddq_u16(a8, v76);
        if (v2726)
        {
          v48.i64[0] = *v70;
          a8.n128_u64[0] = *(v70 + 32);
          a9.n128_u64[0] = *(v70 + 64);
          a10.n128_u64[0] = *(v70 + 96);
          v931 = vaddq_s16(v931, v48);
          v932 = vaddq_s16(v932, a8);
          v933 = vaddq_s16(v933, a9);
          v934 = vaddq_s16(v934, a10);
        }

        v935 = COERCE_DOUBLE(vqmovun_s16(v931));
        v936 = COERCE_DOUBLE(vqmovun_s16(v932));
        v69->i32[0] = LODWORD(v935);
        *(v69->i32 + v2727) = LODWORD(v936);
        v937 = COERCE_DOUBLE(vqmovun_s16(v933));
        v938 = COERCE_DOUBLE(vqmovun_s16(v934));
        *(v69->i32 + v2700) = LODWORD(v937);
        *(v69->i32 + v2662) = LODWORD(v938);
        v939 = sub_277290798(&v2767, _X24, v75, v2682, v2694, v937, v938, v936, v935, v48, a8);
        sub_277290798(&v2772, v2690, v85, v2683, v2697, v939, v940, v941, v942, v943, v944);
        v946.i64[0] = v2767.i64[1];
        v945.i64[0] = v2767.i64[0];
        v948.i64[0] = v2772.i64[1];
        v947.i64[0] = v2772.i64[0];
        v949 = vrhaddq_u16(v945, v947);
        v950 = vrhaddq_u16(v946, v948);
        v12 = v2720;
        if (v2720)
        {
          v946.i64[0] = *v74;
          v948.i64[0] = *(v74 + 32);
          v949 = vaddq_s16(v949, v946);
          v950 = vaddq_s16(v950, v948);
        }

        result = v2687;
        v20.i64[0] = 0x10001000100010;
        v20.i64[1] = 0x10001000100010;
        v21.i64[0] = 0x20002000200020;
        v21.i64[1] = 0x20002000200020;
        v72->i32[0] = vqmovun_s16(v949).u32[0];
        *(v72->i32 + v2728) = vqmovun_s16(v950).u32[0];
      }

      v10 = v2730;
      v19 = v2744;
      goto LABEL_1022;
    }

    if (v26 == 8)
    {
      switch(v27)
      {
        case 4u:
          v2692 = v97;
          v2735 = v10;
          v2749 = v19;
          switch(v77)
          {
            case 1:
              v1719 = 0;
              v1720 = (v93 - 2 * v73);
              v1721 = (v1720 + v73 + v73);
              v88 = vzip1q_s8(*(v1721 + v73 + v73), v19);
              v250 = vzip1q_s8(*(v1721 + v73), v19);
              v89 = vzip1q_s8(*v1721, v19);
              v90 = vzip1q_s8(*(v1720 + v73), v19);
              v48 = vzip1q_s8(*v1720, v19);
              v1722 = (v92 + 5 * v73 + v84 + v73 * v91 - 2 * v73);
              v248 = v2701;
              do
              {
                a8 = v90;
                v90 = v89;
                v89 = v250;
                v250 = v88;
                v88 = vzip1q_s8(*v1722, v19);
                v1723 = vsubq_s16(vshlq_n_s16(vaddq_s16(v90, v89), 2uLL), vaddq_s16(a8, v250));
                a10 = vshlq_n_s16(v1723, 2uLL);
                v1724 = vaddq_s16(vaddq_s16(v48, v1723), a10);
                a9 = vaddq_s16(v88, v20);
                *(&v2758 + v1719) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(v1724, a9), 5uLL))), v90);
                v1719 += 16;
                v1722 = (v1722 + v73);
                v48 = a8;
              }

              while (v1719 != 64);
              break;
            case 2:
              v1588 = 0;
              v1589 = (v93 - 2 * v73);
              v1590 = (v1589 + v73 + v73);
              v88 = vzip1q_s8(*(v1590 + v73 + v73), v19);
              v250 = vzip1q_s8(*(v1590 + v73), v19);
              v89 = vzip1q_s8(*v1590, v19);
              v90 = vzip1q_s8(*(v1589 + v73), v19);
              v48 = vzip1q_s8(*v1589, v19);
              v1591 = (v92 + 5 * v73 + v84 + v73 * v91 - 2 * v73);
              v248 = v2701;
              do
              {
                a8 = v90;
                v90 = v89;
                v89 = v250;
                v250 = v88;
                v1592 = &v2758.i8[v1588];
                v88 = vzip1q_s8(*v1591, v19);
                v1593 = vsubq_s16(vshlq_n_s16(vaddq_s16(v90, v89), 2uLL), vaddq_s16(a8, v250));
                a10 = vshlq_n_s16(v1593, 2uLL);
                v1594 = vaddq_s16(vaddq_s16(v48, v1593), a10);
                a9 = vaddq_s16(v88, v20);
                a9.n128_u64[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(v1594, a9), 5uLL));
                a10.n128_u64[0] = v19.i64[0];
                vst2_s8(v1592, a9);
                v1588 += 16;
                v1591 = (v1591 + v73);
                v48 = a8;
              }

              while (v1588 != 64);
              break;
            case 3:
              v1665 = 0;
              v1666 = (v93 - 2 * v73);
              v1667 = (v1666 + v73 + v73);
              v88 = vzip1q_s8(*(v1667 + v73 + v73), v19);
              v250 = vzip1q_s8(*(v1667 + v73), v19);
              v89 = vzip1q_s8(*v1667, v19);
              v90 = vzip1q_s8(*(v1666 + v73), v19);
              v48 = vzip1q_s8(*v1666, v19);
              v1668 = (v92 + 5 * v73 + v84 + v73 * v91 - 2 * v73);
              v248 = v2701;
              do
              {
                a8 = v90;
                v90 = v89;
                v89 = v250;
                v250 = v88;
                v88 = vzip1q_s8(*v1668, v19);
                v1669 = vsubq_s16(vshlq_n_s16(vaddq_s16(v90, v89), 2uLL), vaddq_s16(a8, v250));
                a10 = vshlq_n_s16(v1669, 2uLL);
                v1670 = vaddq_s16(vaddq_s16(v48, v1669), a10);
                a9 = vaddq_s16(v88, v20);
                *(&v2758 + v1665) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(v1670, a9), 5uLL))), v89);
                v1665 += 16;
                v1668 = (v1668 + v73);
                v48 = a8;
              }

              while (v1665 != 64);
              break;
            case 4:
              sub_27729C91C(&v2758, 0x10u, v93, v73);
              v250 = sub_27729C91C(&v2758.i64[1], 0x10u, (v93 + 1), v73);
              goto LABEL_936;
            case 5:
              *v1975.i64 = sub_27729CAF0(&v2758, 0x10u, v93, v73, v87, *v88.i64, *v89.i64, *v90.i64, *v48.i64, a8, a9, a10);
              *v250.i64 = sub_27729CAF0(&v2758.i64[1], 0x10u, (v93 + 1), v73, v1975, v1976, v1977, v1978, v1979, v1980, v1981, v1982);
              goto LABEL_936;
            case 6:
              *v2037.i64 = sub_27729CDD0(&v2758, 0x10u, v93, v73, v87, v88, v89, v90, v48, a8, a9, a10);
              *v250.i64 = sub_27729CDD0(&v2758.i64[1], 0x10u, (v93 + 1), v73, v2037, v2038, v2039, v2040, v2041, v2042, v2043, v2044);
              goto LABEL_936;
            case 7:
              v1674 = sub_27729D274(&v2758, 0x10u, v93, v73, *v87.i64, *v88.i64, *v89.i64, *v90.i64, *v48.i64, a8.n128_f64[0], a9, a10);
              *v250.i64 = sub_27729D274(&v2758.i64[1], 0x10u, (v93 + 1), v73, v1674, v1675, v1676, v1677, v1678, v1679, v1680, v1681);
              goto LABEL_936;
            case 8:
              sub_27729D550(&v2758, 0x10u, v93, v73);
              v250 = sub_27729D550(&v2758.i64[1], 0x10u, (v93 + 1), v73);
              goto LABEL_936;
            case 9:
              sub_27729D714(&v2758, 0x10u, v93, v73);
              *v250.i64 = sub_27729D714(&v2758.i64[1], 0x10u, (v93 + 1), v73);
              goto LABEL_936;
            case 10:
              sub_27729B7DC(&v2758, 16, v93, v73, 4);
              goto LABEL_936;
            case 11:
              sub_27729DE6C(&v2758, 0x10u, v93, v73);
              *v250.i64 = sub_27729DE6C(&v2758.i64[1], 0x10u, (v93 + 1), v73);
              goto LABEL_936;
            case 12:
              sub_27729E5C4(&v2758, 0x10u, v93, v73);
              v250 = sub_27729E5C4(&v2758.i64[1], 0x10u, (v93 + 1), v73);
              goto LABEL_936;
            case 13:
              *v2029.i64 = sub_27729E798(&v2758, 0x10u, v93, v73, v87, *v88.i64, *v89.i64, *v90.i64, *v48.i64, a8, a9, a10);
              *v250.i64 = sub_27729E798(&v2758.i64[1], 0x10u, (v93 + 1), v73, v2029, v2030, v2031, v2032, v2033, v2034, v2035, v2036);
              goto LABEL_936;
            case 14:
              *v1514.i64 = sub_27729EA7C(&v2758, 0x10u, v93, v73, v87, v88, v89, v90, v48, a8, a9, a10);
              *v250.i64 = sub_27729EA7C(&v2758.i64[1], 0x10u, (v93 + 1), v73, v1514, v1515, v1516, v1517, v1518, v1519, v1520, v1521);
              goto LABEL_936;
            case 15:
              v1649 = sub_27729EF20(&v2758, 0x10u, v93, v73, *v87.i64, *v88.i64, *v89.i64, *v90.i64, *v48.i64, a8.n128_f64[0], a9, a10);
              *v250.i64 = sub_27729EF20(&v2758.i64[1], 0x10u, (v93 + 1), v73, v1649, v1650, v1651, v1652, v1653, v1654, v1655, v1656);
LABEL_936:
              v20.i64[0] = 0x10001000100010;
              v20.i64[1] = 0x10001000100010;
              v19 = v2749;
              v248 = v2701;
              break;
            default:
              v247 = 0;
              v248 = v2701;
              do
              {
                v249 = &v2758.i8[v247];
                v250 = *v93;
                v93 = (v93 + v73);
                v88.i64[0] = v19.i64[0];
                vst2_s8(v249, *(&v88 - 8));
                v247 += 16;
              }

              while (v247 != 64);
              break;
          }

          v2046 = v2708;
          switch(v248)
          {
            case 1:
              v2102 = 0;
              v2103 = (v2708 - 2 * v2706);
              v2104 = (v2103 + v2706 + v2706);
              v2105 = vzip1q_s8(*(v2104 + v2706 + v2706), v19);
              v2106 = vzip1q_s8(*(v2104 + v2706), v19);
              v2107 = vzip1q_s8(*v2104, v19);
              v2108 = vzip1q_s8(*(v2103 + v2706), v19);
              v2109 = vzip1q_s8(*v2103, v19);
              v2110 = (v2674 + 5 * v2706 + v2676 + v2706 * v2675 - 2 * v2706);
              v2048 = v2727;
              v2049 = v2700;
              v2050 = v2662;
              do
              {
                v2111 = v2108;
                v2108 = v2107;
                v2107 = v2106;
                v2106 = v2105;
                v2105 = vzip1q_s8(*v2110, v19);
                v2112 = vsubq_s16(vshlq_n_s16(vaddq_s16(v2108, v2107), 2uLL), vaddq_s16(v2111, v2106));
                *(&v2762 + v2102) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v2109, v2112), vshlq_n_s16(v2112, 2uLL)), vaddq_s16(v2105, v20)), 5uLL))), v2108);
                v2102 += 16;
                v2110 = (v2110 + v2706);
                v2109 = v2111;
              }

              while (v2102 != 64);
              break;
            case 2:
              v2062 = 0;
              v2063 = (v2708 - 2 * v2706);
              v2064 = (v2063 + v2706 + v2706);
              v2065 = vzip1q_s8(*(v2064 + v2706 + v2706), v19);
              v2066 = vzip1q_s8(*(v2064 + v2706), v19);
              v2067 = vzip1q_s8(*v2064, v19);
              v2068 = vzip1q_s8(*(v2063 + v2706), v19);
              v2069 = vzip1q_s8(*v2063, v19);
              v2070 = (v2674 + 5 * v2706 + v2676 + v2706 * v2675 - 2 * v2706);
              v2048 = v2727;
              v2049 = v2700;
              v2050 = v2662;
              do
              {
                v2071 = v2068;
                v2068 = v2067;
                v2067 = v2066;
                v2066 = v2065;
                v2072 = &v2762.i8[v2062];
                v2065 = vzip1q_s8(*v2070, v19);
                v2073 = vsubq_s16(vshlq_n_s16(vaddq_s16(v2068, v2067), 2uLL), vaddq_s16(v2071, v2066));
                *v2073.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v2069, v2073), vshlq_n_s16(v2073, 2uLL)), vaddq_s16(v2065, v20)), 5uLL));
                v2074 = v19.i64[0];
                vst2_s8(v2072, v2073);
                v2062 += 16;
                v2070 = (v2070 + v2706);
                v2069 = v2071;
              }

              while (v2062 != 64);
              break;
            case 3:
              v2083 = 0;
              v2084 = (v2708 - 2 * v2706);
              v2085 = (v2084 + v2706 + v2706);
              v2086 = vzip1q_s8(*(v2085 + v2706 + v2706), v19);
              v2087 = vzip1q_s8(*(v2085 + v2706), v19);
              v2088 = vzip1q_s8(*v2085, v19);
              v2089 = vzip1q_s8(*(v2084 + v2706), v19);
              v2090 = vzip1q_s8(*v2084, v19);
              v2091 = (v2674 + 5 * v2706 + v2676 + v2706 * v2675 - 2 * v2706);
              v2048 = v2727;
              v2049 = v2700;
              v2050 = v2662;
              do
              {
                v2092 = v2089;
                v2089 = v2088;
                v2088 = v2087;
                v2087 = v2086;
                v2086 = vzip1q_s8(*v2091, v19);
                v2093 = vsubq_s16(vshlq_n_s16(vaddq_s16(v2089, v2088), 2uLL), vaddq_s16(v2092, v2087));
                *(&v2762 + v2083) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v2090, v2093), vshlq_n_s16(v2093, 2uLL)), vaddq_s16(v2086, v20)), 5uLL))), v2088);
                v2083 += 16;
                v2091 = (v2091 + v2706);
                v2090 = v2092;
              }

              while (v2083 != 64);
              break;
            case 4:
              sub_27729C91C(&v2762, 0x10u, v2708, v2706);
              sub_27729C91C(&v2762.i64[1], 0x10u, (v2708 + 1), v2706);
              goto LABEL_962;
            case 5:
              *v2113.i64 = sub_27729CAF0(&v2762, 0x10u, v2708, v2706, v250, *v88.i64, *v89.i64, *v90.i64, *v48.i64, a8, a9, a10);
              sub_27729CAF0(&v2762.i64[1], 0x10u, (v2708 + 1), v2706, v2113, v2114, v2115, v2116, v2117, v2118, v2119, v2120);
              goto LABEL_962;
            case 6:
              *v2129.i64 = sub_27729CDD0(&v2762, 0x10u, v2708, v2706, v250, v88, v89, v90, v48, a8, a9, a10);
              sub_27729CDD0(&v2762.i64[1], 0x10u, (v2708 + 1), v2706, v2129, v2130, v2131, v2132, v2133, v2134, v2135, v2136);
              goto LABEL_962;
            case 7:
              v2094 = sub_27729D274(&v2762, 0x10u, v2708, v2706, *v250.i64, *v88.i64, *v89.i64, *v90.i64, *v48.i64, a8.n128_f64[0], a9, a10);
              sub_27729D274(&v2762.i64[1], 0x10u, (v2708 + 1), v2706, v2094, v2095, v2096, v2097, v2098, v2099, v2100, v2101);
              goto LABEL_962;
            case 8:
              sub_27729D550(&v2762, 0x10u, v2708, v2706);
              sub_27729D550(&v2762.i64[1], 0x10u, (v2708 + 1), v2706);
              goto LABEL_962;
            case 9:
              sub_27729D714(&v2762, 0x10u, v2708, v2706);
              sub_27729D714(&v2762.i64[1], 0x10u, (v2708 + 1), v2706);
              goto LABEL_962;
            case 10:
              sub_27729B7DC(&v2762, 16, v2708, v2706, 4);
              goto LABEL_962;
            case 11:
              sub_27729DE6C(&v2762, 0x10u, v2708, v2706);
              sub_27729DE6C(&v2762.i64[1], 0x10u, (v2708 + 1), v2706);
              goto LABEL_962;
            case 12:
              sub_27729E5C4(&v2762, 0x10u, v2708, v2706);
              sub_27729E5C4(&v2762.i64[1], 0x10u, (v2708 + 1), v2706);
              goto LABEL_962;
            case 13:
              *v2121.i64 = sub_27729E798(&v2762, 0x10u, v2708, v2706, v250, *v88.i64, *v89.i64, *v90.i64, *v48.i64, a8, a9, a10);
              sub_27729E798(&v2762.i64[1], 0x10u, (v2708 + 1), v2706, v2121, v2122, v2123, v2124, v2125, v2126, v2127, v2128);
              goto LABEL_962;
            case 14:
              *v2054.i64 = sub_27729EA7C(&v2762, 0x10u, v2708, v2706, v250, v88, v89, v90, v48, a8, a9, a10);
              sub_27729EA7C(&v2762.i64[1], 0x10u, (v2708 + 1), v2706, v2054, v2055, v2056, v2057, v2058, v2059, v2060, v2061);
              goto LABEL_962;
            case 15:
              v2075 = sub_27729EF20(&v2762, 0x10u, v2708, v2706, *v250.i64, *v88.i64, *v89.i64, *v90.i64, *v48.i64, a8.n128_f64[0], a9, a10);
              sub_27729EF20(&v2762.i64[1], 0x10u, (v2708 + 1), v2706, v2075, v2076, v2077, v2078, v2079, v2080, v2081, v2082);
LABEL_962:
              v2048 = v2727;
              v2049 = v2700;
              v2050 = v2662;
              break;
            default:
              v2047 = 0;
              v2048 = v2727;
              v2049 = v2700;
              v2050 = v2662;
              do
              {
                v2051 = &v2762.i8[v2047];
                v2052 = *v2046;
                v2046 = (v2046 + v2706);
                v2053 = v19.i64[0];
                vst2_s8(v2051, v2052);
                v2047 += 16;
              }

              while (v2047 != 64);
              break;
          }

          v2137 = vrhaddq_u16(v2758, v2762);
          v2138 = vrhaddq_u16(v2759, v2763);
          v2139 = vrhaddq_u16(v2760, v2764);
          v2140 = vrhaddq_u16(v2761[0], v2765[0]);
          if (v2726)
          {
            v2137 = vaddq_s16(*v70, v2137);
            v2138 = vaddq_s16(*(v70 + 32), v2138);
            v2139 = vaddq_s16(*(v70 + 64), v2139);
            v2140 = vaddq_s16(*(v70 + 96), v2140);
          }

          *v69 = vqmovun_s16(v2137);
          *(v69 + v2048) = vqmovun_s16(v2138);
          *(v69 + v2049) = vqmovun_s16(v2139);
          *(v69 + v2050) = vqmovun_s16(v2140);
          sub_2772906A8(&v2767, _X24, v75, &v2776);
          sub_2772906A8(&v2772, v2692, v85, &v2780);
          v2141 = vrhaddq_u16(v2767, v2772);
          v2142 = vrhaddq_u16(v2768, v2773);
          v12 = v2720;
          if (v2720)
          {
            v2141 = vaddq_s16(*v74, v2141);
            v2142 = vaddq_s16(*(v74 + 32), v2142);
          }

          result = v2687;
          v21.i64[0] = 0x20002000200020;
          v21.i64[1] = 0x20002000200020;
          *v72 = vqmovun_s16(v2141);
          *(v72 + v2728) = vqmovun_s16(v2142);
          v10 = v2735;
          v19 = v2749;
          v20.i64[0] = 0x10001000100010;
          v20.i64[1] = 0x10001000100010;
          break;
        case 8u:
          v2665 = v94;
          v2668 = v83;
          v2671 = v96;
          v2691 = v97;
          v2734 = v10;
          v2748 = v19;
          switch(v77)
          {
            case 1:
              v1638 = 0;
              v1639 = (v93 - 2 * v73);
              v1640 = (v1639 + v73 + v73);
              v1641 = vzip1q_s8(*(v1640 + v73 + v73), v19);
              v1642 = vzip1q_s8(*(v1640 + v73), v19);
              v1643 = vzip1q_s8(*v1640, v19);
              v1644 = vzip1q_s8(*(v1639 + v73), v19);
              v1645 = vzip1q_s8(*v1639, v19);
              v1646 = (v92 + 5 * v73 + v84 + v73 * v91 - 2 * v73);
              v242 = v2701;
              v243 = v2726;
              do
              {
                v1647 = v1644;
                v1644 = v1643;
                v1643 = v1642;
                v1642 = v1641;
                v1641 = vzip1q_s8(*v1646, v19);
                v1648 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1644, v1643), 2uLL), vaddq_s16(v1647, v1642));
                *(&v2758 + v1638) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1645, v1648), vshlq_n_s16(v1648, 2uLL)), vaddq_s16(v1641, v20)), 5uLL))), v1644);
                v1638 += 16;
                v1646 = (v1646 + v73);
                v1645 = v1647;
              }

              while (v1638 != 128);
              break;
            case 2:
              v1546 = 0;
              v1547 = (v93 - 2 * v73);
              v1548 = (v1547 + v73 + v73);
              v1549 = vzip1q_s8(*(v1548 + v73 + v73), v19);
              v1550 = vzip1q_s8(*(v1548 + v73), v19);
              v1551 = vzip1q_s8(*v1548, v19);
              v1552 = vzip1q_s8(*(v1547 + v73), v19);
              v1553 = vzip1q_s8(*v1547, v19);
              v1554 = (v92 + 5 * v73 + v84 + v73 * v91 - 2 * v73);
              v242 = v2701;
              v243 = v2726;
              do
              {
                v1555 = v1552;
                v1552 = v1551;
                v1551 = v1550;
                v1550 = v1549;
                v1556 = &v2758.i8[v1546];
                v1549 = vzip1q_s8(*v1554, v19);
                v1557 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1552, v1551), 2uLL), vaddq_s16(v1555, v1550));
                *v1557.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1553, v1557), vshlq_n_s16(v1557, 2uLL)), vaddq_s16(v1549, v20)), 5uLL));
                v1558 = v19.i64[0];
                vst2_s8(v1556, v1557);
                v1546 += 16;
                v1554 = (v1554 + v73);
                v1553 = v1555;
              }

              while (v1546 != 128);
              break;
            case 3:
              v1577 = 0;
              v1578 = (v93 - 2 * v73);
              v1579 = (v1578 + v73 + v73);
              v1580 = vzip1q_s8(*(v1579 + v73 + v73), v19);
              v1581 = vzip1q_s8(*(v1579 + v73), v19);
              v1582 = vzip1q_s8(*v1579, v19);
              v1583 = vzip1q_s8(*(v1578 + v73), v19);
              v1584 = vzip1q_s8(*v1578, v19);
              v1585 = (v92 + 5 * v73 + v84 + v73 * v91 - 2 * v73);
              v242 = v2701;
              v243 = v2726;
              do
              {
                v1586 = v1583;
                v1583 = v1582;
                v1582 = v1581;
                v1581 = v1580;
                v1580 = vzip1q_s8(*v1585, v19);
                v1587 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1583, v1582), 2uLL), vaddq_s16(v1586, v1581));
                *(&v2758 + v1577) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1584, v1587), vshlq_n_s16(v1587, 2uLL)), vaddq_s16(v1580, v20)), 5uLL))), v1582);
                v1577 += 16;
                v1585 = (v1585 + v73);
                v1584 = v1586;
              }

              while (v1577 != 128);
              break;
            case 4:
              v1531 = 0;
              v1532 = (v93 - 2);
              v242 = v2701;
              v243 = v2726;
              do
              {
                v1533 = *v1532;
                v1532 = (v1532 + v73);
                v1534 = vzip1q_s8(vextq_s8(v1533, v1533, 2uLL), v19);
                v1535 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1534, vzip1q_s8(vextq_s8(v1533, v1533, 3uLL), v19)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1533, v1533, 1uLL), v19), vzip1q_s8(vextq_s8(v1533, v1533, 4uLL), v19)));
                *(&v2758 + v1531) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1535, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1533, v19), vzip1q_s8(vextq_s8(v1533, v1533, 5uLL), v19)), v1535)), v20), 5uLL))), v1534);
                v1531 += 16;
              }

              while (v1531 != 128);
              break;
            case 5:
              v1564 = v93;
              v1565 = v73;
              v1566 = 2;
              goto LABEL_832;
            case 6:
              sub_27729BFC4(v2758.i8, 0x10u, v93, v73);
              goto LABEL_842;
            case 7:
              v1564 = v93;
              v1565 = v73;
              v1566 = 3;
LABEL_832:
              v1759 = 2;
              goto LABEL_841;
            case 8:
              v1911 = 0;
              v1912 = (v93 - 2);
              v242 = v2701;
              v243 = v2726;
              do
              {
                v1913 = &v2758.i8[v1911];
                v1914 = *v1912;
                v1912 = (v1912 + v73);
                v1915 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1914, v1914, 2uLL), v19), vzip1q_s8(vextq_s8(v1914, v1914, 3uLL), v19)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1914, v1914, 1uLL), v19), vzip1q_s8(vextq_s8(v1914, v1914, 4uLL), v19)));
                *v1914.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1915, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1914, v19), vzip1q_s8(vextq_s8(v1914, v1914, 5uLL), v19)), v1915)), v20), 5uLL));
                v1915.i64[0] = v19.i64[0];
                vst2_s8(v1913, v1914);
                v1911 += 16;
              }

              while (v1911 != 128);
              break;
            case 9:
              sub_27729B614(v2758.i8, 0x10u, v93, v73, 8);
              goto LABEL_842;
            case 10:
              sub_27729B7DC(&v2758, 16, v93, v73, 8);
              goto LABEL_842;
            case 11:
              sub_27729B98C(v2758.i8, 0x10u, v93, v73, 8);
              goto LABEL_842;
            case 12:
              v1536 = 0;
              v1537 = (v93 - 2);
              v242 = v2701;
              v243 = v2726;
              do
              {
                v1538 = *v1537;
                v1537 = (v1537 + v73);
                v1539 = vzip1q_s8(vextq_s8(v1538, v1538, 3uLL), v19);
                v1540 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1538, v1538, 2uLL), v19), v1539), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1538, v1538, 1uLL), v19), vzip1q_s8(vextq_s8(v1538, v1538, 4uLL), v19)));
                *(&v2758 + v1536) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1540, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1538, v19), vzip1q_s8(vextq_s8(v1538, v1538, 5uLL), v19)), v1540)), v20), 5uLL))), v1539);
                v1536 += 16;
              }

              while (v1536 != 128);
              break;
            case 13:
              v1564 = v93;
              v1565 = v73;
              v1566 = 2;
              goto LABEL_840;
            case 14:
              sub_27729C39C(v2758.i8, 0x10u, v93, v73);
              goto LABEL_842;
            case 15:
              v1564 = v93;
              v1565 = v73;
              v1566 = 3;
LABEL_840:
              v1759 = 3;
LABEL_841:
              sub_27729C774(v2758.i8, v1564, v1565, 8, v1566, v1759);
LABEL_842:
              v20.i64[0] = 0x10001000100010;
              v20.i64[1] = 0x10001000100010;
              v10 = v2734;
              v19 = v2748;
              v242 = v2701;
              v243 = v2726;
              break;
            default:
              v241 = 0;
              v242 = v2701;
              v243 = v2726;
              do
              {
                v244 = &v2758.i8[v241];
                v245 = *v93;
                v93 = (v93 + v73);
                v246 = v19.i64[0];
                vst2_s8(v244, v245);
                v241 += 16;
              }

              while (v241 != 128);
              break;
          }

          v1782 = v2708;
          switch(v242)
          {
            case 1:
              v1836 = 0;
              v1837 = (v2708 - 2 * v2706);
              v1838 = (v1837 + v2706 + v2706);
              v1839 = vzip1q_s8(*(v1838 + v2706 + v2706), v19);
              v1840 = vzip1q_s8(*(v1838 + v2706), v19);
              v1841 = vzip1q_s8(*v1838, v19);
              v1842 = vzip1q_s8(*(v1837 + v2706), v19);
              v1843 = vzip1q_s8(*v1837, v19);
              v1844 = (v2674 + 5 * v2706 + v2676 + v2706 * v2675 - 2 * v2706);
              v12 = v2720;
              v1784 = v2727;
              v1785 = v2728;
              v1786 = v2700;
              v1787 = v2662;
              v1788 = v2665;
              v1789 = v2655;
              v21.i64[0] = 0x20002000200020;
              v21.i64[1] = 0x20002000200020;
              v1791 = v2668;
              v1790 = v2671;
              v1793 = v2680;
              v1792 = v2681;
              v1795 = v2678;
              v1794 = v2679;
              do
              {
                v1845 = v1842;
                v1842 = v1841;
                v1841 = v1840;
                v1840 = v1839;
                v1839 = vzip1q_s8(*v1844, v19);
                v1846 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1842, v1841), 2uLL), vaddq_s16(v1845, v1840));
                *(&v2762 + v1836) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1843, v1846), vshlq_n_s16(v1846, 2uLL)), vaddq_s16(v1839, v20)), 5uLL))), v1842);
                v1836 += 16;
                v1844 = (v1844 + v2706);
                v1843 = v1845;
              }

              while (v1836 != 128);
              break;
            case 2:
              v1809 = 0;
              v1810 = (v2708 - 2 * v2706);
              v1811 = (v1810 + v2706 + v2706);
              v1812 = vzip1q_s8(*(v1811 + v2706 + v2706), v19);
              v1813 = vzip1q_s8(*(v1811 + v2706), v19);
              v1814 = vzip1q_s8(*v1811, v19);
              v1815 = vzip1q_s8(*(v1810 + v2706), v19);
              v1816 = vzip1q_s8(*v1810, v19);
              v1817 = (v2674 + 5 * v2706 + v2676 + v2706 * v2675 - 2 * v2706);
              v12 = v2720;
              v1784 = v2727;
              v1785 = v2728;
              v1786 = v2700;
              v1787 = v2662;
              v1788 = v2665;
              v1789 = v2655;
              v21.i64[0] = 0x20002000200020;
              v21.i64[1] = 0x20002000200020;
              v1791 = v2668;
              v1790 = v2671;
              v1793 = v2680;
              v1792 = v2681;
              v1795 = v2678;
              v1794 = v2679;
              do
              {
                v1818 = v1815;
                v1815 = v1814;
                v1814 = v1813;
                v1813 = v1812;
                v1819 = &v2762.i8[v1809];
                v1812 = vzip1q_s8(*v1817, v19);
                v1820 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1815, v1814), 2uLL), vaddq_s16(v1818, v1813));
                *v1820.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1816, v1820), vshlq_n_s16(v1820, 2uLL)), vaddq_s16(v1812, v20)), 5uLL));
                v1821 = v19.i64[0];
                vst2_s8(v1819, v1820);
                v1809 += 16;
                v1817 = (v1817 + v2706);
                v1816 = v1818;
              }

              while (v1809 != 128);
              break;
            case 3:
              v1825 = 0;
              v1826 = (v2708 - 2 * v2706);
              v1827 = (v1826 + v2706 + v2706);
              v1828 = vzip1q_s8(*(v1827 + v2706 + v2706), v19);
              v1829 = vzip1q_s8(*(v1827 + v2706), v19);
              v1830 = vzip1q_s8(*v1827, v19);
              v1831 = vzip1q_s8(*(v1826 + v2706), v19);
              v1832 = vzip1q_s8(*v1826, v19);
              v1833 = (v2674 + 5 * v2706 + v2676 + v2706 * v2675 - 2 * v2706);
              v12 = v2720;
              v1784 = v2727;
              v1785 = v2728;
              v1786 = v2700;
              v1787 = v2662;
              v1788 = v2665;
              v1789 = v2655;
              v21.i64[0] = 0x20002000200020;
              v21.i64[1] = 0x20002000200020;
              v1791 = v2668;
              v1790 = v2671;
              v1793 = v2680;
              v1792 = v2681;
              v1795 = v2678;
              v1794 = v2679;
              do
              {
                v1834 = v1831;
                v1831 = v1830;
                v1830 = v1829;
                v1829 = v1828;
                v1828 = vzip1q_s8(*v1833, v19);
                v1835 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1831, v1830), 2uLL), vaddq_s16(v1834, v1829));
                *(&v2762 + v1825) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1832, v1835), vshlq_n_s16(v1835, 2uLL)), vaddq_s16(v1828, v20)), 5uLL))), v1830);
                v1825 += 16;
                v1833 = (v1833 + v2706);
                v1832 = v1834;
              }

              while (v1825 != 128);
              break;
            case 4:
              v1799 = 0;
              v1800 = (v2708 - 2);
              v12 = v2720;
              v1784 = v2727;
              v1785 = v2728;
              v1786 = v2700;
              v1787 = v2662;
              v1788 = v2665;
              v1789 = v2655;
              v21.i64[0] = 0x20002000200020;
              v21.i64[1] = 0x20002000200020;
              v1791 = v2668;
              v1790 = v2671;
              v1793 = v2680;
              v1792 = v2681;
              v1795 = v2678;
              v1794 = v2679;
              do
              {
                v1801 = *v1800;
                v1800 = (v1800 + v2706);
                v1802 = vzip1q_s8(vextq_s8(v1801, v1801, 2uLL), v19);
                v1803 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1802, vzip1q_s8(vextq_s8(v1801, v1801, 3uLL), v19)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1801, v1801, 1uLL), v19), vzip1q_s8(vextq_s8(v1801, v1801, 4uLL), v19)));
                *(&v2762 + v1799) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1803, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1801, v19), vzip1q_s8(vextq_s8(v1801, v1801, 5uLL), v19)), v1803)), v20), 5uLL))), v1802);
                v1799 += 16;
              }

              while (v1799 != 128);
              break;
            case 5:
              v1822 = v2708;
              v1823 = v2706;
              v1824 = 2;
              goto LABEL_868;
            case 6:
              sub_27729BFC4(v2762.i8, 0x10u, v2708, v2706);
              goto LABEL_873;
            case 7:
              v1822 = v2708;
              v1823 = v2706;
              v1824 = 3;
LABEL_868:
              v1847 = 2;
              goto LABEL_872;
            case 8:
              v1916 = 0;
              v1917 = (v2708 - 2);
              v12 = v2720;
              v1784 = v2727;
              v1785 = v2728;
              v1786 = v2700;
              v1787 = v2662;
              v1788 = v2665;
              v1789 = v2655;
              v21.i64[0] = 0x20002000200020;
              v21.i64[1] = 0x20002000200020;
              v1791 = v2668;
              v1790 = v2671;
              v1793 = v2680;
              v1792 = v2681;
              v1795 = v2678;
              v1794 = v2679;
              do
              {
                v1918 = &v2762.i8[v1916];
                v1919 = *v1917;
                v1917 = (v1917 + v2706);
                v1920 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1919, v1919, 2uLL), v19), vzip1q_s8(vextq_s8(v1919, v1919, 3uLL), v19)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1919, v1919, 1uLL), v19), vzip1q_s8(vextq_s8(v1919, v1919, 4uLL), v19)));
                *v1919.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1920, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1919, v19), vzip1q_s8(vextq_s8(v1919, v1919, 5uLL), v19)), v1920)), v20), 5uLL));
                v1920.i64[0] = v19.i64[0];
                vst2_s8(v1918, v1919);
                v1916 += 16;
              }

              while (v1916 != 128);
              break;
            case 9:
              sub_27729B614(v2762.i8, 0x10u, v2708, v2706, 8);
              goto LABEL_873;
            case 10:
              sub_27729B7DC(&v2762, 16, v2708, v2706, 8);
              goto LABEL_873;
            case 11:
              sub_27729B98C(v2762.i8, 0x10u, v2708, v2706, 8);
              goto LABEL_873;
            case 12:
              v1804 = 0;
              v1805 = (v2708 - 2);
              v12 = v2720;
              v1784 = v2727;
              v1785 = v2728;
              v1786 = v2700;
              v1787 = v2662;
              v1788 = v2665;
              v1789 = v2655;
              v21.i64[0] = 0x20002000200020;
              v21.i64[1] = 0x20002000200020;
              v1791 = v2668;
              v1790 = v2671;
              v1793 = v2680;
              v1792 = v2681;
              v1795 = v2678;
              v1794 = v2679;
              do
              {
                v1806 = *v1805;
                v1805 = (v1805 + v2706);
                v1807 = vzip1q_s8(vextq_s8(v1806, v1806, 3uLL), v19);
                v1808 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1806, v1806, 2uLL), v19), v1807), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1806, v1806, 1uLL), v19), vzip1q_s8(vextq_s8(v1806, v1806, 4uLL), v19)));
                *(&v2762 + v1804) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1808, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1806, v19), vzip1q_s8(vextq_s8(v1806, v1806, 5uLL), v19)), v1808)), v20), 5uLL))), v1807);
                v1804 += 16;
              }

              while (v1804 != 128);
              break;
            case 13:
              v1822 = v2708;
              v1823 = v2706;
              v1824 = 2;
              goto LABEL_871;
            case 14:
              sub_27729C39C(v2762.i8, 0x10u, v2708, v2706);
              goto LABEL_873;
            case 15:
              v1822 = v2708;
              v1823 = v2706;
              v1824 = 3;
LABEL_871:
              v1847 = 3;
LABEL_872:
              sub_27729C774(v2762.i8, v1822, v1823, 8, v1824, v1847);
LABEL_873:
              v20.i64[0] = 0x10001000100010;
              v20.i64[1] = 0x10001000100010;
              v10 = v2734;
              v19 = v2748;
              v12 = v2720;
              v1784 = v2727;
              v1785 = v2728;
              v1786 = v2700;
              v1787 = v2662;
              v1788 = v2665;
              v1789 = v2655;
              v21.i64[0] = 0x20002000200020;
              v21.i64[1] = 0x20002000200020;
              v1791 = v2668;
              v1790 = v2671;
              v1793 = v2680;
              v1792 = v2681;
              v1795 = v2678;
              v1794 = v2679;
              break;
            default:
              v1783 = 0;
              v12 = v2720;
              v1784 = v2727;
              v1785 = v2728;
              v1786 = v2700;
              v1787 = v2662;
              v1788 = v2665;
              v1789 = v2655;
              v21.i64[0] = 0x20002000200020;
              v21.i64[1] = 0x20002000200020;
              v1791 = v2668;
              v1790 = v2671;
              v1793 = v2680;
              v1792 = v2681;
              v1795 = v2678;
              v1794 = v2679;
              do
              {
                v1796 = &v2762.i8[v1783];
                v1797 = *v1782;
                v1782 = (v1782 + v2706);
                v1798 = v19.i64[0];
                vst2_s8(v1796, v1797);
                v1783 += 16;
              }

              while (v1783 != 128);
              break;
          }

          v1852 = 1;
          v1853 = &v2758;
          do
          {
            v1854 = v1852;
            v1855 = vrhaddq_u16(*v1853, v1853[32]);
            v1856 = vrhaddq_u16(v1853[1], v1853[33]);
            v1857 = vrhaddq_u16(v1853[2], v1853[34]);
            v1858 = vrhaddq_u16(v1853[3], v1853[35]);
            if (v243)
            {
              v1859 = *v70;
              v1860 = *(v70 + 32);
              v1861 = *(v70 + 64);
              v1862 = *(v70 + 96);
              v70 += 128;
              v1855 = vaddq_s16(v1859, v1855);
              v1856 = vaddq_s16(v1860, v1856);
              v1857 = vaddq_s16(v1861, v1857);
              v1858 = vaddq_s16(v1862, v1858);
            }

            v1852 = 0;
            v1853 += 4;
            *v69 = vqmovun_s16(v1855);
            *(v69 + v1784) = vqmovun_s16(v1856);
            *(v69 + v1786) = vqmovun_s16(v1857);
            *(v69 + v1787) = vqmovun_s16(v1858);
            v69 = (v69 + v1789);
          }

          while ((v1854 & 1) != 0);
          v1863 = 0;
          _X9 = &_X24->i8[v75];
          __asm { PRFM            #0, [X9] }

          v1855.i64[0] = _X24->i64[0];
          v1866 = vqtbl1q_s8(v1855, xmmword_2773B3E00);
          v1866.i16[3] = _X24->i16[4];
          v1867 = vzip1q_s8(v1866, v19);
          v1868 = vzip1q_s8(v1855, v19);
          v1869 = v2776;
          v1870 = v2777;
          v1871 = v2778;
          v1872 = v2779;
          v1873 = v1795;
          if (v1795 <= -16)
          {
            v1873 = -16;
          }

          v1874 = v1794;
          if (v1873 < v1794)
          {
            v1874 = v1873;
          }

          v1875 = v2684 + v75 + v1874;
          v1876 = v2684 + v1874 + 2 * v75;
          do
          {
            _X12 = v1876 + v1788;
            __asm { PRFM            #0, [X12] }

            v1879 = vmlaq_s16(vmulq_s16(v1870, v1867), v1869, v1868);
            v1867.i64[0] = *(v1875 + v1788);
            v1868 = vzip1q_s8(v1867, v19);
            v1880 = vqtbl1q_s8(v1867, xmmword_2773B3E00);
            v1880.i16[3] = *(v1875 + v1788 + 8);
            v1867 = vzip1q_s8(v1880, v19);
            *(&v2767 + v1863) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1879, v1871, v1868), v1872, v1867), v21), 6uLL);
            v1863 += 16;
            v1875 += v75;
            v1876 += v75;
          }

          while (v1863 != 64);
          _X8 = v2691 + v85;
          __asm { PRFM            #0, [X8] }

          v1869.i64[0] = *v2691;
          v1883 = vqtbl1q_s8(v1869, xmmword_2773B3E00);
          v1883.i16[3] = *(v2691 + 4);
          v1884 = vzip1q_s8(v1883, v19);
          v1885 = vzip1q_s8(v1869, v19);
          v1886 = v2780;
          v1887 = v2781;
          v1888 = v2782;
          v1889 = v2783;
          v1890 = v1793;
          if (v1793 <= -16)
          {
            v1890 = -16;
          }

          v1891 = v1792;
          if (v1890 < v1792)
          {
            v1891 = v1890;
          }

          v1892 = v1791 + v85 + v1891;
          v1893 = v1791 + v1891 + 2 * v85;
          v1894 = 256;
          do
          {
            _X12 = v1893 + v1790;
            __asm { PRFM            #0, [X12] }

            v1897 = vmlaq_s16(vmulq_s16(v1887, v1884), v1886, v1885);
            v1884.i64[0] = *(v1892 + v1790);
            v1885 = vzip1q_s8(v1884, v19);
            v1898 = vqtbl1q_s8(v1884, xmmword_2773B3E00);
            v1898.i16[3] = *(v1892 + v1790 + 8);
            v1884 = vzip1q_s8(v1898, v19);
            *(&v2767 + v1894) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1897, v1888, v1885), v1889, v1884), v21), 6uLL);
            v1894 += 16;
            v1892 += v85;
            v1893 += v85;
          }

          while (v1894 != 320);
          a8 = v2770[0];
          a9 = v2774;
          a10 = v2775;
          v1899 = vrhaddq_u16(v2767, v2772);
          v1900 = vrhaddq_u16(v2768, v2773);
          v1901 = vrhaddq_u16(v2769, v2774);
          v1902 = vrhaddq_u16(v2770[0], v2775);
          if (v12)
          {
            a8 = *(v74 + 32);
            a9 = *(v74 + 64);
            a10 = *(v74 + 96);
            v1899 = vaddq_s16(*v74, v1899);
            v1900 = vaddq_s16(a8, v1900);
            v1901 = vaddq_s16(a9, v1901);
            v1902 = vaddq_s16(a10, v1902);
          }

          result = v2687;
          *v72 = vqmovun_s16(v1899);
          *(v72 + v1785) = vqmovun_s16(v1900);
          *(v72 + v2677) = vqmovun_s16(v1901);
          *(v72 + v2656) = vqmovun_s16(v1902);
          break;
        case 0x10u:
          v2664 = v94;
          v2667 = v83;
          v2670 = v96;
          v2689 = v97;
          v2729 = v10;
          v2743 = v19;
          switch(v77)
          {
            case 1:
              v1760 = 0;
              v1761 = (v93 - 2 * v73);
              v1762 = (v1761 + v73 + v73);
              v1763 = vzip1q_s8(*(v1762 + v73 + v73), v19);
              v1764 = vzip1q_s8(*(v1762 + v73), v19);
              v1765 = vzip1q_s8(*v1762, v19);
              v1766 = vzip1q_s8(*(v1761 + v73), v19);
              v1767 = vzip1q_s8(*v1761, v19);
              v1768 = (v92 + 5 * v73 + v84 + v73 * v91 - 2 * v73);
              v165 = v2701;
              v166 = v2726;
              do
              {
                v1769 = v1766;
                v1766 = v1765;
                v1765 = v1764;
                v1764 = v1763;
                v1763 = vzip1q_s8(*v1768, v19);
                v1770 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1766, v1765), 2uLL), vaddq_s16(v1769, v1764));
                *(&v2758 + v1760) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1767, v1770), vshlq_n_s16(v1770, 2uLL)), vaddq_s16(v1763, v20)), 5uLL))), v1766);
                v1760 += 16;
                v1768 = (v1768 + v73);
                v1767 = v1769;
              }

              while (v1760 != 256);
              break;
            case 2:
              v1625 = 0;
              v1626 = (v93 - 2 * v73);
              v1627 = (v1626 + v73 + v73);
              v1628 = vzip1q_s8(*(v1627 + v73 + v73), v19);
              v1629 = vzip1q_s8(*(v1627 + v73), v19);
              v1630 = vzip1q_s8(*v1627, v19);
              v1631 = vzip1q_s8(*(v1626 + v73), v19);
              v1632 = vzip1q_s8(*v1626, v19);
              v1633 = (v92 + 5 * v73 + v84 + v73 * v91 - 2 * v73);
              v165 = v2701;
              v166 = v2726;
              do
              {
                v1634 = v1631;
                v1631 = v1630;
                v1630 = v1629;
                v1629 = v1628;
                v1635 = &v2758.i8[v1625];
                v1628 = vzip1q_s8(*v1633, v19);
                v1636 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1631, v1630), 2uLL), vaddq_s16(v1634, v1629));
                *v1636.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1632, v1636), vshlq_n_s16(v1636, 2uLL)), vaddq_s16(v1628, v20)), 5uLL));
                v1637 = v19.i64[0];
                vst2_s8(v1635, v1636);
                v1625 += 16;
                v1633 = (v1633 + v73);
                v1632 = v1634;
              }

              while (v1625 != 256);
              break;
            case 3:
              v1708 = 0;
              v1709 = (v93 - 2 * v73);
              v1710 = (v1709 + v73 + v73);
              v1711 = vzip1q_s8(*(v1710 + v73 + v73), v19);
              v1712 = vzip1q_s8(*(v1710 + v73), v19);
              v1713 = vzip1q_s8(*v1710, v19);
              v1714 = vzip1q_s8(*(v1709 + v73), v19);
              v1715 = vzip1q_s8(*v1709, v19);
              v1716 = (v92 + 5 * v73 + v84 + v73 * v91 - 2 * v73);
              v165 = v2701;
              v166 = v2726;
              do
              {
                v1717 = v1714;
                v1714 = v1713;
                v1713 = v1712;
                v1712 = v1711;
                v1711 = vzip1q_s8(*v1716, v19);
                v1718 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1714, v1713), 2uLL), vaddq_s16(v1717, v1712));
                *(&v2758 + v1708) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1715, v1718), vshlq_n_s16(v1718, 2uLL)), vaddq_s16(v1711, v20)), 5uLL))), v1713);
                v1708 += 16;
                v1716 = (v1716 + v73);
                v1715 = v1717;
              }

              while (v1708 != 256);
              break;
            case 4:
              v1541 = 0;
              v1542 = (v93 - 2);
              v165 = v2701;
              v166 = v2726;
              do
              {
                v1543 = *v1542;
                v1542 = (v1542 + v73);
                v1544 = vzip1q_s8(vextq_s8(v1543, v1543, 2uLL), v19);
                v1545 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1544, vzip1q_s8(vextq_s8(v1543, v1543, 3uLL), v19)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1543, v1543, 1uLL), v19), vzip1q_s8(vextq_s8(v1543, v1543, 4uLL), v19)));
                *(&v2758 + v1541) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1545, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1543, v19), vzip1q_s8(vextq_s8(v1543, v1543, 5uLL), v19)), v1545)), v20), 5uLL))), v1544);
                v1541 += 16;
              }

              while (v1541 != 256);
              break;
            case 5:
              v1671 = v93;
              v1672 = v73;
              v1673 = 2;
              goto LABEL_933;
            case 6:
              sub_27729B1B0(v2758.i8, 0x10u, v93, v73);
              goto LABEL_971;
            case 7:
              v1671 = v93;
              v1672 = v73;
              v1673 = 3;
LABEL_933:
              v2045 = 2;
              goto LABEL_970;
            case 8:
              v2268 = 0;
              v2269 = (v93 - 2);
              v165 = v2701;
              v166 = v2726;
              do
              {
                v2270 = &v2758.i8[v2268];
                v2271 = *v2269;
                v2269 = (v2269 + v73);
                v2272 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v2271, v2271, 2uLL), v19), vzip1q_s8(vextq_s8(v2271, v2271, 3uLL), v19)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v2271, v2271, 1uLL), v19), vzip1q_s8(vextq_s8(v2271, v2271, 4uLL), v19)));
                *v2271.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v2272, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v2271, v19), vzip1q_s8(vextq_s8(v2271, v2271, 5uLL), v19)), v2272)), v20), 5uLL));
                v2272.i64[0] = v19.i64[0];
                vst2_s8(v2270, v2271);
                v2268 += 16;
              }

              while (v2268 != 256);
              break;
            case 9:
              sub_27729B614(v2758.i8, 0x10u, v93, v73, 16);
              goto LABEL_971;
            case 10:
              sub_27729B7DC(&v2758, 16, v93, v73, 16);
              goto LABEL_971;
            case 11:
              sub_27729B98C(v2758.i8, 0x10u, v93, v73, 16);
              goto LABEL_971;
            case 12:
              v1559 = 0;
              v1560 = (v93 - 2);
              v165 = v2701;
              v166 = v2726;
              do
              {
                v1561 = *v1560;
                v1560 = (v1560 + v73);
                v1562 = vzip1q_s8(vextq_s8(v1561, v1561, 3uLL), v19);
                v1563 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1561, v1561, 2uLL), v19), v1562), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1561, v1561, 1uLL), v19), vzip1q_s8(vextq_s8(v1561, v1561, 4uLL), v19)));
                *(&v2758 + v1559) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1563, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1561, v19), vzip1q_s8(vextq_s8(v1561, v1561, 5uLL), v19)), v1563)), v20), 5uLL))), v1562);
                v1559 += 16;
              }

              while (v1559 != 256);
              break;
            case 13:
              v1671 = v93;
              v1672 = v73;
              v1673 = 2;
              goto LABEL_969;
            case 14:
              sub_27729BBEC(v2758.i8, 0x10u, v93, v73);
              goto LABEL_971;
            case 15:
              v1671 = v93;
              v1672 = v73;
              v1673 = 3;
LABEL_969:
              v2045 = 3;
LABEL_970:
              sub_27729C774(v2758.i8, v1671, v1672, 16, v1673, v2045);
LABEL_971:
              v20.i64[0] = 0x10001000100010;
              v20.i64[1] = 0x10001000100010;
              v10 = v2729;
              v19 = v2743;
              v165 = v2701;
              v166 = v2726;
              break;
            default:
              v164 = 0;
              v165 = v2701;
              v166 = v2726;
              do
              {
                v167 = &v2758.i8[v164];
                v168 = *v93;
                v93 = (v93 + v73);
                v169 = v19.i64[0];
                vst2_s8(v167, v168);
                v164 += 16;
              }

              while (v164 != 256);
              break;
          }

          v2143 = v2708;
          switch(v165)
          {
            case 1:
              v2195 = 0;
              v2196 = (v2708 - 2 * v2706);
              v2197 = (v2196 + v2706 + v2706);
              v2198 = vzip1q_s8(*(v2197 + v2706 + v2706), v19);
              v2199 = vzip1q_s8(*(v2197 + v2706), v19);
              v2200 = vzip1q_s8(*v2197, v19);
              v2201 = vzip1q_s8(*(v2196 + v2706), v19);
              v2202 = vzip1q_s8(*v2196, v19);
              v2203 = (v2674 + 5 * v2706 + v2676 + v2706 * v2675 - 2 * v2706);
              v12 = v2720;
              v2145 = v2727;
              v2146 = v2728;
              v2147 = v2700;
              v2148 = v2662;
              v2149 = v2655;
              v21.i64[0] = 0x20002000200020;
              v21.i64[1] = 0x20002000200020;
              v2151 = v2667;
              v2150 = v2670;
              v2152 = v2664;
              v2154 = v2678;
              v2153 = v2679;
              do
              {
                v2204 = v2201;
                v2201 = v2200;
                v2200 = v2199;
                v2199 = v2198;
                v2198 = vzip1q_s8(*v2203, v19);
                v2205 = vsubq_s16(vshlq_n_s16(vaddq_s16(v2201, v2200), 2uLL), vaddq_s16(v2204, v2199));
                *(&v2762 + v2195) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v2202, v2205), vshlq_n_s16(v2205, 2uLL)), vaddq_s16(v2198, v20)), 5uLL))), v2201);
                v2195 += 16;
                v2203 = (v2203 + v2706);
                v2202 = v2204;
              }

              while (v2195 != 256);
              break;
            case 2:
              v2168 = 0;
              v2169 = (v2708 - 2 * v2706);
              v2170 = (v2169 + v2706 + v2706);
              v2171 = vzip1q_s8(*(v2170 + v2706 + v2706), v19);
              v2172 = vzip1q_s8(*(v2170 + v2706), v19);
              v2173 = vzip1q_s8(*v2170, v19);
              v2174 = vzip1q_s8(*(v2169 + v2706), v19);
              v2175 = vzip1q_s8(*v2169, v19);
              v2176 = (v2674 + 5 * v2706 + v2676 + v2706 * v2675 - 2 * v2706);
              v12 = v2720;
              v2145 = v2727;
              v2146 = v2728;
              v2147 = v2700;
              v2148 = v2662;
              v2149 = v2655;
              v21.i64[0] = 0x20002000200020;
              v21.i64[1] = 0x20002000200020;
              v2151 = v2667;
              v2150 = v2670;
              v2152 = v2664;
              v2154 = v2678;
              v2153 = v2679;
              do
              {
                v2177 = v2174;
                v2174 = v2173;
                v2173 = v2172;
                v2172 = v2171;
                v2178 = &v2762.i8[v2168];
                v2171 = vzip1q_s8(*v2176, v19);
                v2179 = vsubq_s16(vshlq_n_s16(vaddq_s16(v2174, v2173), 2uLL), vaddq_s16(v2177, v2172));
                *v2179.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v2175, v2179), vshlq_n_s16(v2179, 2uLL)), vaddq_s16(v2171, v20)), 5uLL));
                v2180 = v19.i64[0];
                vst2_s8(v2178, v2179);
                v2168 += 16;
                v2176 = (v2176 + v2706);
                v2175 = v2177;
              }

              while (v2168 != 256);
              break;
            case 3:
              v2184 = 0;
              v2185 = (v2708 - 2 * v2706);
              v2186 = (v2185 + v2706 + v2706);
              v2187 = vzip1q_s8(*(v2186 + v2706 + v2706), v19);
              v2188 = vzip1q_s8(*(v2186 + v2706), v19);
              v2189 = vzip1q_s8(*v2186, v19);
              v2190 = vzip1q_s8(*(v2185 + v2706), v19);
              v2191 = vzip1q_s8(*v2185, v19);
              v2192 = (v2674 + 5 * v2706 + v2676 + v2706 * v2675 - 2 * v2706);
              v12 = v2720;
              v2145 = v2727;
              v2146 = v2728;
              v2147 = v2700;
              v2148 = v2662;
              v2149 = v2655;
              v21.i64[0] = 0x20002000200020;
              v21.i64[1] = 0x20002000200020;
              v2151 = v2667;
              v2150 = v2670;
              v2152 = v2664;
              v2154 = v2678;
              v2153 = v2679;
              do
              {
                v2193 = v2190;
                v2190 = v2189;
                v2189 = v2188;
                v2188 = v2187;
                v2187 = vzip1q_s8(*v2192, v19);
                v2194 = vsubq_s16(vshlq_n_s16(vaddq_s16(v2190, v2189), 2uLL), vaddq_s16(v2193, v2188));
                *(&v2762 + v2184) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v2191, v2194), vshlq_n_s16(v2194, 2uLL)), vaddq_s16(v2187, v20)), 5uLL))), v2189);
                v2184 += 16;
                v2192 = (v2192 + v2706);
                v2191 = v2193;
              }

              while (v2184 != 256);
              break;
            case 4:
              v2158 = 0;
              v2159 = (v2708 - 2);
              v12 = v2720;
              v2145 = v2727;
              v2146 = v2728;
              v2147 = v2700;
              v2148 = v2662;
              v2149 = v2655;
              v21.i64[0] = 0x20002000200020;
              v21.i64[1] = 0x20002000200020;
              v2151 = v2667;
              v2150 = v2670;
              v2152 = v2664;
              v2154 = v2678;
              v2153 = v2679;
              do
              {
                v2160 = *v2159;
                v2159 = (v2159 + v2706);
                v2161 = vzip1q_s8(vextq_s8(v2160, v2160, 2uLL), v19);
                v2162 = vsubq_s16(vshlq_n_s16(vaddq_s16(v2161, vzip1q_s8(vextq_s8(v2160, v2160, 3uLL), v19)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v2160, v2160, 1uLL), v19), vzip1q_s8(vextq_s8(v2160, v2160, 4uLL), v19)));
                *(&v2762 + v2158) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v2162, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v2160, v19), vzip1q_s8(vextq_s8(v2160, v2160, 5uLL), v19)), v2162)), v20), 5uLL))), v2161);
                v2158 += 16;
              }

              while (v2158 != 256);
              break;
            case 5:
              v2181 = v2708;
              v2182 = v2706;
              v2183 = 2;
              goto LABEL_997;
            case 6:
              sub_27729B1B0(v2762.i8, 0x10u, v2708, v2706);
              goto LABEL_1001;
            case 7:
              v2181 = v2708;
              v2182 = v2706;
              v2183 = 3;
LABEL_997:
              v2206 = 2;
              goto LABEL_1000;
            case 8:
              v2273 = 0;
              v2274 = (v2708 - 2);
              v12 = v2720;
              v2145 = v2727;
              v2146 = v2728;
              v2147 = v2700;
              v2148 = v2662;
              v2149 = v2655;
              v21.i64[0] = 0x20002000200020;
              v21.i64[1] = 0x20002000200020;
              v2151 = v2667;
              v2150 = v2670;
              v2152 = v2664;
              v2154 = v2678;
              v2153 = v2679;
              do
              {
                v2275 = &v2762.i8[v2273];
                v2276 = *v2274;
                v2274 = (v2274 + v2706);
                v2277 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v2276, v2276, 2uLL), v19), vzip1q_s8(vextq_s8(v2276, v2276, 3uLL), v19)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v2276, v2276, 1uLL), v19), vzip1q_s8(vextq_s8(v2276, v2276, 4uLL), v19)));
                *v2276.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v2277, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v2276, v19), vzip1q_s8(vextq_s8(v2276, v2276, 5uLL), v19)), v2277)), v20), 5uLL));
                v2277.i64[0] = v19.i64[0];
                vst2_s8(v2275, v2276);
                v2273 += 16;
              }

              while (v2273 != 256);
              break;
            case 9:
              sub_27729B614(v2762.i8, 0x10u, v2708, v2706, 16);
              goto LABEL_1001;
            case 10:
              sub_27729B7DC(&v2762, 16, v2708, v2706, 16);
              goto LABEL_1001;
            case 11:
              sub_27729B98C(v2762.i8, 0x10u, v2708, v2706, 16);
              goto LABEL_1001;
            case 12:
              v2163 = 0;
              v2164 = (v2708 - 2);
              v12 = v2720;
              v2145 = v2727;
              v2146 = v2728;
              v2147 = v2700;
              v2148 = v2662;
              v2149 = v2655;
              v21.i64[0] = 0x20002000200020;
              v21.i64[1] = 0x20002000200020;
              v2151 = v2667;
              v2150 = v2670;
              v2152 = v2664;
              v2154 = v2678;
              v2153 = v2679;
              do
              {
                v2165 = *v2164;
                v2164 = (v2164 + v2706);
                v2166 = vzip1q_s8(vextq_s8(v2165, v2165, 3uLL), v19);
                v2167 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v2165, v2165, 2uLL), v19), v2166), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v2165, v2165, 1uLL), v19), vzip1q_s8(vextq_s8(v2165, v2165, 4uLL), v19)));
                *(&v2762 + v2163) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v2167, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v2165, v19), vzip1q_s8(vextq_s8(v2165, v2165, 5uLL), v19)), v2167)), v20), 5uLL))), v2166);
                v2163 += 16;
              }

              while (v2163 != 256);
              break;
            case 13:
              v2181 = v2708;
              v2182 = v2706;
              v2183 = 2;
              goto LABEL_999;
            case 14:
              sub_27729BBEC(v2762.i8, 0x10u, v2708, v2706);
              goto LABEL_1001;
            case 15:
              v2181 = v2708;
              v2182 = v2706;
              v2183 = 3;
LABEL_999:
              v2206 = 3;
LABEL_1000:
              sub_27729C774(v2762.i8, v2181, v2182, 16, v2183, v2206);
LABEL_1001:
              v20.i64[0] = 0x10001000100010;
              v20.i64[1] = 0x10001000100010;
              v10 = v2729;
              v19 = v2743;
              v12 = v2720;
              v2145 = v2727;
              v2146 = v2728;
              v2147 = v2700;
              v2148 = v2662;
              v2149 = v2655;
              v21.i64[0] = 0x20002000200020;
              v21.i64[1] = 0x20002000200020;
              v2151 = v2667;
              v2150 = v2670;
              v2152 = v2664;
              v2154 = v2678;
              v2153 = v2679;
              break;
            default:
              v2144 = 0;
              v12 = v2720;
              v2145 = v2727;
              v2146 = v2728;
              v2147 = v2700;
              v2148 = v2662;
              v2149 = v2655;
              v21.i64[0] = 0x20002000200020;
              v21.i64[1] = 0x20002000200020;
              v2151 = v2667;
              v2150 = v2670;
              v2152 = v2664;
              v2154 = v2678;
              v2153 = v2679;
              do
              {
                v2155 = &v2762.i8[v2144];
                v2156 = *v2143;
                v2143 = (v2143 + v2706);
                v2157 = v19.i64[0];
                vst2_s8(v2155, v2156);
                v2144 += 16;
              }

              while (v2144 != 256);
              break;
          }

          v2207 = 0;
          result = v2687;
          do
          {
            v2208 = vrhaddq_u16(*(&v2758 + v2207), *(&v2762 + v2207));
            v2209 = vrhaddq_u16(*(&v2758 + v2207 + 16), *(&v2763 + v2207));
            v2210 = vrhaddq_u16(*(&v2760 + v2207), *(&v2764 + v2207));
            v2211 = vrhaddq_u16(v2761[v2207 / 0x10], v2765[v2207 / 0x10]);
            if (v166)
            {
              v2212 = *v70;
              v2213 = *(v70 + 32);
              v2214 = *(v70 + 64);
              v2215 = *(v70 + 96);
              v70 += 128;
              v2208 = vaddq_s16(v2212, v2208);
              v2209 = vaddq_s16(v2213, v2209);
              v2210 = vaddq_s16(v2214, v2210);
              v2211 = vaddq_s16(v2215, v2211);
            }

            *v69 = vqmovun_s16(v2208);
            *(v69 + v2145) = vqmovun_s16(v2209);
            *(v69 + v2147) = vqmovun_s16(v2210);
            *(v69 + v2148) = vqmovun_s16(v2211);
            v69 = (v69 + v2149);
            v2207 += 64;
          }

          while (v2207 != 256);
          v2216 = 0;
          _X9 = &_X24->i8[v75];
          __asm { PRFM            #0, [X9] }

          v2208.i64[0] = _X24->i64[0];
          v2219 = vqtbl1q_s8(v2208, xmmword_2773B3E00);
          v2219.i16[3] = _X24->i16[4];
          v2220 = vzip1q_s8(v2219, v19);
          v2221 = vzip1q_s8(v2208, v19);
          v2222 = v2776;
          v2223 = v2777;
          v2224 = v2778;
          v2225 = v2779;
          v2226 = v2154;
          if (v2154 <= -16)
          {
            v2226 = -16;
          }

          v2227 = v2153;
          if (v2226 < v2153)
          {
            v2227 = v2226;
          }

          v2228 = v2684 + v75 + v2227;
          v2229 = v2684 + v2227 + 2 * v75;
          do
          {
            _X12 = v2229 + v2152;
            __asm { PRFM            #0, [X12] }

            v2232 = vmlaq_s16(vmulq_s16(v2223, v2220), v2222, v2221);
            v2220.i64[0] = *(v2228 + v2152);
            v2221 = vzip1q_s8(v2220, v19);
            v2233 = vqtbl1q_s8(v2220, xmmword_2773B3E00);
            v2233.i16[3] = *(v2228 + v2152 + 8);
            v2220 = vzip1q_s8(v2233, v19);
            *(&v2767 + v2216) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v2232, v2224, v2221), v2225, v2220), v21), 6uLL);
            v2216 += 16;
            v2228 += v75;
            v2229 += v75;
          }

          while (v2216 != 128);
          v2234 = 0;
          _X9 = v2689 + v85;
          __asm { PRFM            #0, [X9] }

          v2222.i64[0] = *v2689;
          v2237 = vqtbl1q_s8(v2222, xmmword_2773B3E00);
          v2237.i16[3] = *(v2689 + 4);
          v2238 = vzip1q_s8(v2237, v19);
          v2239 = vzip1q_s8(v2222, v19);
          v2240 = v2780;
          v2241 = v2781;
          v2242 = v2782;
          v2243 = v2783;
          v2244 = v2680;
          if (v2680 <= -16)
          {
            v2244 = -16;
          }

          v2245 = v2681;
          if (v2244 < v2681)
          {
            v2245 = v2244;
          }

          v2246 = v2151 + v85 + v2245;
          v2247 = v2151 + v2245 + 2 * v85;
          do
          {
            _X12 = v2247 + v2150;
            __asm { PRFM            #0, [X12] }

            v2250 = vmlaq_s16(vmulq_s16(v2241, v2238), v2240, v2239);
            v2238.i64[0] = *(v2246 + v2150);
            v2239 = vzip1q_s8(v2238, v19);
            v2251 = vqtbl1q_s8(v2238, xmmword_2773B3E00);
            v2251.i16[3] = *(v2246 + v2150 + 8);
            v2238 = vzip1q_s8(v2251, v19);
            *(&v2772 + v2234) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v2250, v2242, v2239), v2243, v2238), v21), 6uLL);
            v2234 += 16;
            v2246 += v85;
            v2247 += v85;
          }

          while (v2234 != 128);
          v2252 = 1;
          v2253 = &v2772;
          do
          {
            v2254 = v2252;
            a8 = v2253[1];
            a9 = v2253[2];
            a10 = v2253[3];
            v2255 = vrhaddq_u16(v2253[-16], *v2253);
            v2256 = vrhaddq_u16(v2253[-15], a8);
            v2257 = vrhaddq_u16(v2253[-14], a9);
            v2258 = vrhaddq_u16(v2253[-13], a10);
            if (v12)
            {
              v2259 = *v74;
              a8 = *(v74 + 32);
              a9 = *(v74 + 64);
              a10 = *(v74 + 96);
              v74 += 128;
              v2255 = vaddq_s16(v2259, v2255);
              v2256 = vaddq_s16(a8, v2256);
              v2257 = vaddq_s16(a9, v2257);
              v2258 = vaddq_s16(a10, v2258);
            }

            v2252 = 0;
            v2253 += 4;
            *v72 = vqmovun_s16(v2255);
            *(v72 + v2146) = vqmovun_s16(v2256);
            *(v72 + v2677) = vqmovun_s16(v2257);
            *(v72 + v2656) = vqmovun_s16(v2258);
            v72 = (v72 + v2654);
          }

          while ((v2254 & 1) != 0);
          break;
      }

      goto LABEL_1022;
    }

    if (v26 != 16)
    {
LABEL_1022:
      v13 = v2721;
      LODWORD(v15) = v2714;
      goto LABEL_1023;
    }

    v2688 = v97;
    v2666 = v83;
    v2669 = v96;
    v2663 = v94;
    v2659 = v86;
    v2660 = v90;
    v2657 = v2694 & 0xFFFFFF8F | (16 * (v32 & 7));
    v2658 = v2697 & 0xFFFFFF8F | (16 * (v35 & 7));
    if (v27 == 16)
    {
      switch(v77)
      {
        case 1:
          v723 = 0;
          v724 = (v93 - 2 * v73);
          v725 = (v724 + v73 + v73);
          v726 = vzip1q_s8(*(v725 + v73 + v73), v19);
          v727 = vzip1q_s8(*(v725 + v73), v19);
          v728 = vzip1q_s8(*v725, v19);
          v729 = vzip1q_s8(*(v724 + v73), v19);
          v730 = vzip1q_s8(*v724, v19);
          v731 = (v92 + 5 * v73 + v84 + v73 * v91 - 2 * v73);
          do
          {
            v732 = v729;
            v729 = v728;
            v728 = v727;
            v727 = v726;
            v726 = vzip1q_s8(*v731, v19);
            v733 = vsubq_s16(vshlq_n_s16(vaddq_s16(v729, v728), 2uLL), vaddq_s16(v732, v727));
            *(&v2758 + v723) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v730, v733), vshlq_n_s16(v733, 2uLL)), vaddq_s16(v726, v20)), 5uLL))), v729);
            v723 += 32;
            v731 = (v731 + v73);
            v730 = v732;
          }

          while (v723 != 512);
          v734 = 0;
          v735 = v93 - 2 * v73;
          v736 = *(v735 + 8);
          v737 = &v735[v73 + 8];
          v738 = (v737 + v73 + v73);
          v739 = vzip1q_s8(*(v738 + v73), v19);
          v740 = vzip1q_s8(*v738, v19);
          v741 = vzip1q_s8(*(v737 + v73), v19);
          v742 = vzip1q_s8(*v737, v19);
          v743 = vzip1q_s8(v736, v19);
          v744 = (v92 + 5 * v73 + v84 + v73 * v91 - 2 * v73 + 8);
          v99 = v2701;
          do
          {
            v745 = v742;
            v742 = v741;
            v741 = v740;
            v740 = v739;
            v739 = vzip1q_s8(*v744, v19);
            v746 = vsubq_s16(vshlq_n_s16(vaddq_s16(v742, v741), 2uLL), vaddq_s16(v745, v740));
            *(&v2759 + v734) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v743, v746), vshlq_n_s16(v746, 2uLL)), vaddq_s16(v739, v20)), 5uLL))), v742);
            v734 += 32;
            v744 = (v744 + v73);
            v743 = v745;
          }

          while (v734 != 512);
          break;
        case 2:
          v581 = 0;
          v582 = (v93 - 2 * v73);
          v583 = (v582 + v73 + v73);
          v584 = vzip1q_s8(*(v583 + v73 + v73), v19);
          v585 = vzip1q_s8(*(v583 + v73), v19);
          v586 = vzip1q_s8(*v583, v19);
          v587 = vzip1q_s8(*(v582 + v73), v19);
          v588 = vzip1q_s8(*v582, v19);
          v589 = (v92 + 5 * v73 + v84 + v73 * v91 - 2 * v73);
          do
          {
            v590 = v587;
            v587 = v586;
            v586 = v585;
            v585 = v584;
            v591 = &v2758.i8[v581];
            v584 = vzip1q_s8(*v589, v19);
            v592 = vsubq_s16(vshlq_n_s16(vaddq_s16(v587, v586), 2uLL), vaddq_s16(v590, v585));
            *v592.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v588, v592), vshlq_n_s16(v592, 2uLL)), vaddq_s16(v584, v20)), 5uLL));
            v593 = v19.i64[0];
            vst2_s8(v591, v592);
            v581 += 32;
            v589 = (v589 + v73);
            v588 = v590;
          }

          while (v581 != 512);
          v594 = 0;
          v595 = v93 - 2 * v73;
          v596 = *(v595 + 8);
          v597 = &v595[v73 + 8];
          v598 = (v597 + v73 + v73);
          v599 = vzip1q_s8(*(v598 + v73), v19);
          v600 = vzip1q_s8(*v598, v19);
          v601 = vzip1q_s8(*(v597 + v73), v19);
          v602 = vzip1q_s8(*v597, v19);
          v603 = vzip1q_s8(v596, v19);
          v604 = (v92 + 5 * v73 + v84 + v73 * v91 - 2 * v73 + 8);
          v99 = v2701;
          do
          {
            v605 = v602;
            v602 = v601;
            v601 = v600;
            v600 = v599;
            v606 = &v2759.i8[v594];
            v599 = vzip1q_s8(*v604, v19);
            v607 = vsubq_s16(vshlq_n_s16(vaddq_s16(v602, v601), 2uLL), vaddq_s16(v605, v600));
            *v607.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v603, v607), vshlq_n_s16(v607, 2uLL)), vaddq_s16(v599, v20)), 5uLL));
            v608 = v19.i64[0];
            vst2_s8(v606, v607);
            v594 += 32;
            v604 = (v604 + v73);
            v603 = v605;
          }

          while (v594 != 512);
          break;
        case 3:
          v667 = 0;
          v668 = (v93 - 2 * v73);
          v669 = (v668 + v73 + v73);
          v670 = vzip1q_s8(*(v669 + v73 + v73), v19);
          v671 = vzip1q_s8(*(v669 + v73), v19);
          v672 = vzip1q_s8(*v669, v19);
          v673 = vzip1q_s8(*(v668 + v73), v19);
          v674 = vzip1q_s8(*v668, v19);
          v675 = (v92 + 5 * v73 + v84 + v73 * v91 - 2 * v73);
          do
          {
            v676 = v673;
            v673 = v672;
            v672 = v671;
            v671 = v670;
            v670 = vzip1q_s8(*v675, v19);
            v677 = vsubq_s16(vshlq_n_s16(vaddq_s16(v673, v672), 2uLL), vaddq_s16(v676, v671));
            *(&v2758 + v667) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v674, v677), vshlq_n_s16(v677, 2uLL)), vaddq_s16(v670, v20)), 5uLL))), v672);
            v667 += 32;
            v675 = (v675 + v73);
            v674 = v676;
          }

          while (v667 != 512);
          v678 = 0;
          v679 = v93 - 2 * v73;
          v680 = *(v679 + 8);
          v681 = &v679[v73 + 8];
          v682 = (v681 + v73 + v73);
          v683 = vzip1q_s8(*(v682 + v73), v19);
          v684 = vzip1q_s8(*v682, v19);
          v685 = vzip1q_s8(*(v681 + v73), v19);
          v686 = vzip1q_s8(*v681, v19);
          v687 = vzip1q_s8(v680, v19);
          v688 = (v92 + 5 * v73 + v84 + v73 * v91 - 2 * v73 + 8);
          v99 = v2701;
          do
          {
            v689 = v686;
            v686 = v685;
            v685 = v684;
            v684 = v683;
            v683 = vzip1q_s8(*v688, v19);
            v690 = vsubq_s16(vshlq_n_s16(vaddq_s16(v686, v685), 2uLL), vaddq_s16(v689, v684));
            *(&v2759 + v678) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v687, v690), vshlq_n_s16(v690, 2uLL)), vaddq_s16(v683, v20)), 5uLL))), v685);
            v678 += 32;
            v688 = (v688 + v73);
            v687 = v689;
          }

          while (v678 != 512);
          break;
        case 4:
          v533 = 0;
          v534 = (v93 - 2);
          do
          {
            v535 = *v534;
            v534 = (v534 + v73);
            v536 = vzip1q_s8(vextq_s8(v535, v535, 2uLL), v19);
            v537 = vsubq_s16(vshlq_n_s16(vaddq_s16(v536, vzip1q_s8(vextq_s8(v535, v535, 3uLL), v19)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v535, v535, 1uLL), v19), vzip1q_s8(vextq_s8(v535, v535, 4uLL), v19)));
            *(&v2758 + v533) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v537, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v535, v19), vzip1q_s8(vextq_s8(v535, v535, 5uLL), v19)), v537)), v20), 5uLL))), v536);
            v533 += 32;
          }

          while (v533 != 512);
          v538 = 0;
          v539 = (v93 + 6);
          v99 = v2701;
          do
          {
            v540 = *v539;
            v539 = (v539 + v73);
            v541 = vzip1q_s8(vextq_s8(v540, v540, 2uLL), v19);
            v542 = vsubq_s16(vshlq_n_s16(vaddq_s16(v541, vzip1q_s8(vextq_s8(v540, v540, 3uLL), v19)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v540, v540, 1uLL), v19), vzip1q_s8(vextq_s8(v540, v540, 4uLL), v19)));
            *(&v2759 + v538) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v542, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v540, v19), vzip1q_s8(vextq_s8(v540, v540, 5uLL), v19)), v542)), v20), 5uLL))), v541);
            v538 += 32;
          }

          while (v538 != 512);
          break;
        case 5:
          v653 = v93;
          v654 = v73;
          v655 = 2;
          goto LABEL_418;
        case 6:
          v2739 = v10;
          v2753 = v19;
          sub_27729B1B0(v2758.i8, 0x20u, v93, v73);
          sub_27729B1B0(v2759.i8, 0x20u, (v93 + 2), v73);
          goto LABEL_477;
        case 7:
          v653 = v93;
          v654 = v73;
          v655 = 3;
LABEL_418:
          v795 = 2;
          goto LABEL_476;
        case 8:
          v1474 = 0;
          v1475 = (v93 - 2);
          do
          {
            v1476 = &v2758.i8[v1474];
            v1477 = *v1475;
            v1475 = (v1475 + v73);
            v1478 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1477, v1477, 2uLL), v19), vzip1q_s8(vextq_s8(v1477, v1477, 3uLL), v19)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1477, v1477, 1uLL), v19), vzip1q_s8(vextq_s8(v1477, v1477, 4uLL), v19)));
            *v1477.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1478, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1477, v19), vzip1q_s8(vextq_s8(v1477, v1477, 5uLL), v19)), v1478)), v20), 5uLL));
            v1478.i64[0] = v19.i64[0];
            vst2_s8(v1476, v1477);
            v1474 += 32;
          }

          while (v1474 != 512);
          v1479 = 0;
          v1480 = (v93 + 6);
          v99 = v2701;
          do
          {
            v1481 = &v2759.i8[v1479];
            v1482 = *v1480;
            v1480 = (v1480 + v73);
            v1483 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1482, v1482, 2uLL), v19), vzip1q_s8(vextq_s8(v1482, v1482, 3uLL), v19)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1482, v1482, 1uLL), v19), vzip1q_s8(vextq_s8(v1482, v1482, 4uLL), v19)));
            *v1482.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1483, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1482, v19), vzip1q_s8(vextq_s8(v1482, v1482, 5uLL), v19)), v1483)), v20), 5uLL));
            v1483.i64[0] = v19.i64[0];
            vst2_s8(v1481, v1482);
            v1479 += 32;
          }

          while (v1479 != 512);
          break;
        case 9:
          v2739 = v10;
          v2753 = v19;
          sub_27729B614(v2758.i8, 0x20u, v93, v73, 16);
          sub_27729B614(v2759.i8, 0x20u, (v93 + 2), v73, 16);
          goto LABEL_477;
        case 10:
          v2739 = v10;
          v2753 = v19;
          sub_27729B7DC(&v2758, 32, v93, v73, 16);
          sub_27729B7DC(&v2759, 32, (v93 + 2), v73, 16);
          goto LABEL_477;
        case 11:
          v2739 = v10;
          v2753 = v19;
          sub_27729B98C(v2758.i8, 0x20u, v93, v73, 16);
          sub_27729B98C(v2759.i8, 0x20u, (v93 + 2), v73, 16);
          goto LABEL_477;
        case 12:
          v553 = 0;
          v554 = (v93 - 2);
          do
          {
            v555 = *v554;
            v554 = (v554 + v73);
            v556 = vzip1q_s8(vextq_s8(v555, v555, 3uLL), v19);
            v557 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v555, v555, 2uLL), v19), v556), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v555, v555, 1uLL), v19), vzip1q_s8(vextq_s8(v555, v555, 4uLL), v19)));
            *(&v2758 + v553) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v557, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v555, v19), vzip1q_s8(vextq_s8(v555, v555, 5uLL), v19)), v557)), v20), 5uLL))), v556);
            v553 += 32;
          }

          while (v553 != 512);
          v558 = 0;
          v559 = (v93 + 6);
          v99 = v2701;
          do
          {
            v560 = *v559;
            v559 = (v559 + v73);
            v561 = vzip1q_s8(vextq_s8(v560, v560, 3uLL), v19);
            v562 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v560, v560, 2uLL), v19), v561), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v560, v560, 1uLL), v19), vzip1q_s8(vextq_s8(v560, v560, 4uLL), v19)));
            *(&v2759 + v558) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v562, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v560, v19), vzip1q_s8(vextq_s8(v560, v560, 5uLL), v19)), v562)), v20), 5uLL))), v561);
            v558 += 32;
          }

          while (v558 != 512);
          break;
        case 13:
          v653 = v93;
          v654 = v73;
          v655 = 2;
          goto LABEL_475;
        case 14:
          v2739 = v10;
          v2753 = v19;
          sub_27729BBEC(v2758.i8, 0x20u, v93, v73);
          sub_27729BBEC(v2759.i8, 0x20u, (v93 + 2), v73);
          goto LABEL_477;
        case 15:
          v653 = v93;
          v654 = v73;
          v655 = 3;
LABEL_475:
          v795 = 3;
LABEL_476:
          v2739 = v10;
          v2753 = v19;
          sub_27729AF04(v2758.i8, v653, v654, 16, v655, v795);
LABEL_477:
          v20.i64[0] = 0x10001000100010;
          v20.i64[1] = 0x10001000100010;
          v10 = v2739;
          v19 = v2753;
          v99 = v2701;
          break;
        default:
          v98 = 0;
          v99 = v2701;
          do
          {
            v100 = &v2758.i8[v98];
            v10 = *v93;
            v93 = (v93 + v73);
            vst2_s8(v100, v10);
            v100 += 16;
            *v100 = vzip2q_s8(v10, v19);
            v98 += 32;
          }

          while (v98 != 512);
          break;
      }

      v951 = v2708;
      switch(v99)
      {
        case 1:
          v1042 = 0;
          v1043 = (v2708 - 2 * v2706);
          v1044 = (v1043 + v2706 + v2706);
          v1045 = vzip1q_s8(*(v1044 + v2706 + v2706), v19);
          v1046 = vzip1q_s8(*(v1044 + v2706), v19);
          v1047 = vzip1q_s8(*v1044, v19);
          v1048 = vzip1q_s8(*(v1043 + v2706), v19);
          v1049 = vzip1q_s8(*v1043, v19);
          v1050 = (v2674 + 5 * v2706 + v2676 + v2706 * v2675 - 2 * v2706);
          do
          {
            v1051 = v1048;
            v1048 = v1047;
            v1047 = v1046;
            v1046 = v1045;
            v1045 = vzip1q_s8(*v1050, v19);
            v1052 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1048, v1047), 2uLL), vaddq_s16(v1051, v1046));
            *(&v2762 + v1042) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1049, v1052), vshlq_n_s16(v1052, 2uLL)), vaddq_s16(v1045, v20)), 5uLL))), v1048);
            v1042 += 32;
            v1050 = (v1050 + v2706);
            v1049 = v1051;
          }

          while (v1042 != 512);
          v1053 = 0;
          v1054 = v2708 - 2 * v2706;
          v1055 = *(v1054 + 8);
          v1056 = &v1054[v2706 + 8];
          v1057 = (v1056 + v2706 + v2706);
          v1058 = vzip1q_s8(*(v1057 + v2706), v19);
          v1059 = vzip1q_s8(*v1057, v19);
          v1060 = vzip1q_s8(*(v1056 + v2706), v19);
          v1061 = vzip1q_s8(*v1056, v19);
          v1062 = vzip1q_s8(v1055, v19);
          v1063 = (v2674 + 5 * v2706 + v2676 + v2706 * v2675 - 2 * v2706 + 8);
          v12 = v2720;
          v953 = v2727;
          v954 = v2728;
          v955 = v2700;
          v956 = &v2772;
          v21.i64[0] = 0x20002000200020;
          v21.i64[1] = 0x20002000200020;
          _X4 = v2688;
          v958 = v2666;
          v959 = v2669;
          v960 = v2663;
          v962 = v2659;
          v961 = v2660;
          v963 = v2726;
          do
          {
            v1064 = v1061;
            v1061 = v1060;
            v1060 = v1059;
            v1059 = v1058;
            v1058 = vzip1q_s8(*v1063, v19);
            v1065 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1061, v1060), 2uLL), vaddq_s16(v1064, v1059));
            *(&v2763 + v1053) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1062, v1065), vshlq_n_s16(v1065, 2uLL)), vaddq_s16(v1058, v20)), 5uLL))), v1061);
            v1053 += 32;
            v1063 = (v1063 + v2706);
            v1062 = v1064;
          }

          while (v1053 != 512);
          break;
        case 2:
          v987 = 0;
          v988 = (v2708 - 2 * v2706);
          v989 = (v988 + v2706 + v2706);
          v990 = vzip1q_s8(*(v989 + v2706 + v2706), v19);
          v991 = vzip1q_s8(*(v989 + v2706), v19);
          v992 = vzip1q_s8(*v989, v19);
          v993 = vzip1q_s8(*(v988 + v2706), v19);
          v994 = vzip1q_s8(*v988, v19);
          v995 = (v2674 + 5 * v2706 + v2676 + v2706 * v2675 - 2 * v2706);
          do
          {
            v996 = v993;
            v993 = v992;
            v992 = v991;
            v991 = v990;
            v997 = &v2762.i8[v987];
            v990 = vzip1q_s8(*v995, v19);
            v998 = vsubq_s16(vshlq_n_s16(vaddq_s16(v993, v992), 2uLL), vaddq_s16(v996, v991));
            *v998.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v994, v998), vshlq_n_s16(v998, 2uLL)), vaddq_s16(v990, v20)), 5uLL));
            v999 = v19.i64[0];
            vst2_s8(v997, v998);
            v987 += 32;
            v995 = (v995 + v2706);
            v994 = v996;
          }

          while (v987 != 512);
          v1000 = 0;
          v1001 = v2708 - 2 * v2706;
          v1002 = *(v1001 + 8);
          v1003 = &v1001[v2706 + 8];
          v1004 = (v1003 + v2706 + v2706);
          v1005 = vzip1q_s8(*(v1004 + v2706), v19);
          v1006 = vzip1q_s8(*v1004, v19);
          v1007 = vzip1q_s8(*(v1003 + v2706), v19);
          v1008 = vzip1q_s8(*v1003, v19);
          v1009 = vzip1q_s8(v1002, v19);
          v1010 = (v2674 + 5 * v2706 + v2676 + v2706 * v2675 - 2 * v2706 + 8);
          v12 = v2720;
          v953 = v2727;
          v954 = v2728;
          v955 = v2700;
          v956 = &v2772;
          v21.i64[0] = 0x20002000200020;
          v21.i64[1] = 0x20002000200020;
          _X4 = v2688;
          v958 = v2666;
          v959 = v2669;
          v960 = v2663;
          v962 = v2659;
          v961 = v2660;
          v963 = v2726;
          do
          {
            v1011 = v1008;
            v1008 = v1007;
            v1007 = v1006;
            v1006 = v1005;
            v1012 = &v2763.i8[v1000];
            v1005 = vzip1q_s8(*v1010, v19);
            v1013 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1008, v1007), 2uLL), vaddq_s16(v1011, v1006));
            *v1013.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1009, v1013), vshlq_n_s16(v1013, 2uLL)), vaddq_s16(v1005, v20)), 5uLL));
            v1014 = v19.i64[0];
            vst2_s8(v1012, v1013);
            v1000 += 32;
            v1010 = (v1010 + v2706);
            v1009 = v1011;
          }

          while (v1000 != 512);
          break;
        case 3:
          v1018 = 0;
          v1019 = (v2708 - 2 * v2706);
          v1020 = (v1019 + v2706 + v2706);
          v1021 = vzip1q_s8(*(v1020 + v2706 + v2706), v19);
          v1022 = vzip1q_s8(*(v1020 + v2706), v19);
          v1023 = vzip1q_s8(*v1020, v19);
          v1024 = vzip1q_s8(*(v1019 + v2706), v19);
          v1025 = vzip1q_s8(*v1019, v19);
          v1026 = (v2674 + 5 * v2706 + v2676 + v2706 * v2675 - 2 * v2706);
          do
          {
            v1027 = v1024;
            v1024 = v1023;
            v1023 = v1022;
            v1022 = v1021;
            v1021 = vzip1q_s8(*v1026, v19);
            v1028 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1024, v1023), 2uLL), vaddq_s16(v1027, v1022));
            *(&v2762 + v1018) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1025, v1028), vshlq_n_s16(v1028, 2uLL)), vaddq_s16(v1021, v20)), 5uLL))), v1023);
            v1018 += 32;
            v1026 = (v1026 + v2706);
            v1025 = v1027;
          }

          while (v1018 != 512);
          v1029 = 0;
          v1030 = v2708 - 2 * v2706;
          v1031 = *(v1030 + 8);
          v1032 = &v1030[v2706 + 8];
          v1033 = (v1032 + v2706 + v2706);
          v1034 = vzip1q_s8(*(v1033 + v2706), v19);
          v1035 = vzip1q_s8(*v1033, v19);
          v1036 = vzip1q_s8(*(v1032 + v2706), v19);
          v1037 = vzip1q_s8(*v1032, v19);
          v1038 = vzip1q_s8(v1031, v19);
          v1039 = (v2674 + 5 * v2706 + v2676 + v2706 * v2675 - 2 * v2706 + 8);
          v12 = v2720;
          v953 = v2727;
          v954 = v2728;
          v955 = v2700;
          v956 = &v2772;
          v21.i64[0] = 0x20002000200020;
          v21.i64[1] = 0x20002000200020;
          _X4 = v2688;
          v958 = v2666;
          v959 = v2669;
          v960 = v2663;
          v962 = v2659;
          v961 = v2660;
          v963 = v2726;
          do
          {
            v1040 = v1037;
            v1037 = v1036;
            v1036 = v1035;
            v1035 = v1034;
            v1034 = vzip1q_s8(*v1039, v19);
            v1041 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1037, v1036), 2uLL), vaddq_s16(v1040, v1035));
            *(&v2763 + v1029) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1038, v1041), vshlq_n_s16(v1041, 2uLL)), vaddq_s16(v1034, v20)), 5uLL))), v1036);
            v1029 += 32;
            v1039 = (v1039 + v2706);
            v1038 = v1040;
          }

          while (v1029 != 512);
          break;
        case 4:
          v967 = 0;
          v968 = (v2708 - 2);
          do
          {
            v969 = *v968;
            v968 = (v968 + v2706);
            v970 = vzip1q_s8(vextq_s8(v969, v969, 2uLL), v19);
            v971 = vsubq_s16(vshlq_n_s16(vaddq_s16(v970, vzip1q_s8(vextq_s8(v969, v969, 3uLL), v19)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v969, v969, 1uLL), v19), vzip1q_s8(vextq_s8(v969, v969, 4uLL), v19)));
            *(&v2762 + v967) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v971, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v969, v19), vzip1q_s8(vextq_s8(v969, v969, 5uLL), v19)), v971)), v20), 5uLL))), v970);
            v967 += 32;
          }

          while (v967 != 512);
          v972 = 0;
          v973 = (v2708 + 6);
          v12 = v2720;
          v953 = v2727;
          v954 = v2728;
          v955 = v2700;
          v956 = &v2772;
          v21.i64[0] = 0x20002000200020;
          v21.i64[1] = 0x20002000200020;
          _X4 = v2688;
          v958 = v2666;
          v959 = v2669;
          v960 = v2663;
          v962 = v2659;
          v961 = v2660;
          v963 = v2726;
          do
          {
            v974 = *v973;
            v973 = (v973 + v2706);
            v975 = vzip1q_s8(vextq_s8(v974, v974, 2uLL), v19);
            v976 = vsubq_s16(vshlq_n_s16(vaddq_s16(v975, vzip1q_s8(vextq_s8(v974, v974, 3uLL), v19)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v974, v974, 1uLL), v19), vzip1q_s8(vextq_s8(v974, v974, 4uLL), v19)));
            *(&v2763 + v972) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v976, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v974, v19), vzip1q_s8(vextq_s8(v974, v974, 5uLL), v19)), v976)), v20), 5uLL))), v975);
            v972 += 32;
          }

          while (v972 != 512);
          break;
        case 5:
          v1015 = v2708;
          v1016 = v2706;
          v1017 = 2;
          goto LABEL_513;
        case 6:
          v2740 = v10;
          v2754 = v19;
          sub_27729B1B0(v2762.i8, 0x20u, v2708, v2706);
          sub_27729B1B0(v2763.i8, 0x20u, (v2708 + 2), v2706);
          goto LABEL_557;
        case 7:
          v1015 = v2708;
          v1016 = v2706;
          v1017 = 3;
LABEL_513:
          v1066 = 2;
          goto LABEL_556;
        case 8:
          v1494 = 0;
          v1495 = (v2708 - 2);
          do
          {
            v1496 = &v2762.i8[v1494];
            v1497 = *v1495;
            v1495 = (v1495 + v2706);
            v1498 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1497, v1497, 2uLL), v19), vzip1q_s8(vextq_s8(v1497, v1497, 3uLL), v19)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1497, v1497, 1uLL), v19), vzip1q_s8(vextq_s8(v1497, v1497, 4uLL), v19)));
            *v1497.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1498, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1497, v19), vzip1q_s8(vextq_s8(v1497, v1497, 5uLL), v19)), v1498)), v20), 5uLL));
            v1498.i64[0] = v19.i64[0];
            vst2_s8(v1496, v1497);
            v1494 += 32;
          }

          while (v1494 != 512);
          v1499 = 0;
          v1500 = (v2708 + 6);
          v12 = v2720;
          v953 = v2727;
          v954 = v2728;
          v955 = v2700;
          v956 = &v2772;
          v21.i64[0] = 0x20002000200020;
          v21.i64[1] = 0x20002000200020;
          _X4 = v2688;
          v958 = v2666;
          v959 = v2669;
          v960 = v2663;
          v962 = v2659;
          v961 = v2660;
          v963 = v2726;
          do
          {
            v1501 = &v2763.i8[v1499];
            v1502 = *v1500;
            v1500 = (v1500 + v2706);
            v1503 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1502, v1502, 2uLL), v19), vzip1q_s8(vextq_s8(v1502, v1502, 3uLL), v19)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1502, v1502, 1uLL), v19), vzip1q_s8(vextq_s8(v1502, v1502, 4uLL), v19)));
            *v1502.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1503, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1502, v19), vzip1q_s8(vextq_s8(v1502, v1502, 5uLL), v19)), v1503)), v20), 5uLL));
            v1503.i64[0] = v19.i64[0];
            vst2_s8(v1501, v1502);
            v1499 += 32;
          }

          while (v1499 != 512);
          break;
        case 9:
          v2740 = v10;
          v2754 = v19;
          sub_27729B614(v2762.i8, 0x20u, v2708, v2706, 16);
          sub_27729B614(v2763.i8, 0x20u, (v2708 + 2), v2706, 16);
          goto LABEL_557;
        case 10:
          v2740 = v10;
          v2754 = v19;
          sub_27729B7DC(&v2762, 32, v2708, v2706, 16);
          sub_27729B7DC(&v2763, 32, (v2708 + 2), v2706, 16);
          goto LABEL_557;
        case 11:
          v2740 = v10;
          v2754 = v19;
          sub_27729B98C(v2762.i8, 0x20u, v2708, v2706, 16);
          sub_27729B98C(v2763.i8, 0x20u, (v2708 + 2), v2706, 16);
          goto LABEL_557;
        case 12:
          v977 = 0;
          v978 = (v2708 - 2);
          do
          {
            v979 = *v978;
            v978 = (v978 + v2706);
            v980 = vzip1q_s8(vextq_s8(v979, v979, 3uLL), v19);
            v981 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v979, v979, 2uLL), v19), v980), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v979, v979, 1uLL), v19), vzip1q_s8(vextq_s8(v979, v979, 4uLL), v19)));
            *(&v2762 + v977) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v981, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v979, v19), vzip1q_s8(vextq_s8(v979, v979, 5uLL), v19)), v981)), v20), 5uLL))), v980);
            v977 += 32;
          }

          while (v977 != 512);
          v982 = 0;
          v983 = (v2708 + 6);
          v12 = v2720;
          v953 = v2727;
          v954 = v2728;
          v955 = v2700;
          v956 = &v2772;
          v21.i64[0] = 0x20002000200020;
          v21.i64[1] = 0x20002000200020;
          _X4 = v2688;
          v958 = v2666;
          v959 = v2669;
          v960 = v2663;
          v962 = v2659;
          v961 = v2660;
          v963 = v2726;
          do
          {
            v984 = *v983;
            v983 = (v983 + v2706);
            v985 = vzip1q_s8(vextq_s8(v984, v984, 3uLL), v19);
            v986 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v984, v984, 2uLL), v19), v985), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v984, v984, 1uLL), v19), vzip1q_s8(vextq_s8(v984, v984, 4uLL), v19)));
            *(&v2763 + v982) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v986, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v984, v19), vzip1q_s8(vextq_s8(v984, v984, 5uLL), v19)), v986)), v20), 5uLL))), v985);
            v982 += 32;
          }

          while (v982 != 512);
          break;
        case 13:
          v1015 = v2708;
          v1016 = v2706;
          v1017 = 2;
          goto LABEL_555;
        case 14:
          v2740 = v10;
          v2754 = v19;
          sub_27729BBEC(v2762.i8, 0x20u, v2708, v2706);
          sub_27729BBEC(v2763.i8, 0x20u, (v2708 + 2), v2706);
          goto LABEL_557;
        case 15:
          v1015 = v2708;
          v1016 = v2706;
          v1017 = 3;
LABEL_555:
          v1066 = 3;
LABEL_556:
          v2740 = v10;
          v2754 = v19;
          sub_27729AF04(v2762.i8, v1015, v1016, 16, v1017, v1066);
LABEL_557:
          v20.i64[0] = 0x10001000100010;
          v20.i64[1] = 0x10001000100010;
          v10 = v2740;
          v19 = v2754;
          v12 = v2720;
          v953 = v2727;
          v954 = v2728;
          v955 = v2700;
          v956 = &v2772;
          v21.i64[0] = 0x20002000200020;
          v21.i64[1] = 0x20002000200020;
          _X4 = v2688;
          v958 = v2666;
          v959 = v2669;
          v960 = v2663;
          v962 = v2659;
          v961 = v2660;
          v963 = v2726;
          break;
        default:
          v952 = 0;
          v12 = v2720;
          v953 = v2727;
          v954 = v2728;
          v955 = v2700;
          v956 = &v2772;
          v21.i64[0] = 0x20002000200020;
          v21.i64[1] = 0x20002000200020;
          _X4 = v2688;
          v958 = v2666;
          v959 = v2669;
          v960 = v2663;
          v962 = v2659;
          v961 = v2660;
          v963 = v2726;
          do
          {
            v964 = &v2762.i8[v952];
            v965 = *v951;
            v951 = (v951 + v2706);
            v966 = v19.i64[0];
            vst2_s8(v964, v965);
            v964 += 16;
            *v964 = vzip2q_s8(v965, v19);
            v952 += 32;
          }

          while (v952 != 512);
          break;
      }

      v1183 = 0;
      do
      {
        v1184 = v2761[v1183 / 0x10];
        v1185 = vrhaddq_u16(*(&v2758 + v1183), *(&v2762 + v1183));
        v1186 = vrhaddq_u16(*(&v2758 + v1183 + 16), *(&v2763 + v1183));
        v1187 = vrhaddq_u16(*(&v2760 + v1183), *(&v2764 + v1183));
        v1188 = vrhaddq_u16(v1184, v2765[v1183 / 0x10]);
        if (v963)
        {
          v1184 = *v70;
          v1189 = *(v70 + 16);
          v1190 = *(v70 + 32);
          v1191 = *(v70 + 48);
          v70 += 64;
          v1185 = vaddq_s16(v1184, v1185);
          v1186 = vaddq_s16(v1189, v1186);
          v1187 = vaddq_s16(v1190, v1187);
          v1188 = vaddq_s16(v1191, v1188);
        }

        *v69->i8 = vqmovun_high_s16(vqmovun_s16(v1185), v1186);
        *&v69->i8[v953] = vqmovun_high_s16(vqmovun_s16(v1187), v1188);
        v69 = (v69 + v955);
        v1183 += 64;
      }

      while (v1183 != 512);
      if (v2657 == 64)
      {
        __asm { PRFM            #0, [X24] }

        v1216 = 9;
        v1194 = v2766;
        do
        {
          v1217 = _X24;
          _X24 = (_X24 + v75);
          __asm { PRFM            #0, [X24] }

          v1219 = vextq_s8(*v1217, *v1217, 2uLL);
          v1219.i16[7] = v1217[1].i16[0];
          v1220 = vrhaddq_u8(*v1217, v1219);
          v1219.i64[0] = v19.i64[0];
          v1194[3] = vzip2q_s8(v1220, v19);
          v1194 += 2;
          vst2_s8(v1194->i8, *(&v1219 - 8));
          --v1216;
        }

        while (v1216 > 2);
        v1221 = vextq_s8(*_X24, *_X24, 2uLL);
        v1221.i16[7] = _X24[1].i16[0];
        v1214 = vrhaddq_u8(*_X24, v1221);
      }

      else
      {
        if (v2657 != 4)
        {
          if (v2657)
          {
            v1224 = 0;
            v1225 = v2672 - (8 * v2682 + 8 * v2694) + 64;
            v1226 = v19;
            v1226.i32[0] = v1225 | (v1225 << 16);
            v1227 = vqtbl1q_s8(v1226, xmmword_2773B3DF0);
            v1228 = v19;
            v1228.i32[0] = (8 * v2682 - v2672) | ((8 * v2682 - v2672) << 16);
            v1229 = vqtbl1q_s8(v1228, xmmword_2773B3DF0);
            v1230 = v19;
            v1230.i32[0] = (8 * v2694 - v2672) | ((8 * v2694 - v2672) << 16);
            v1231 = vqtbl1q_s8(v1230, xmmword_2773B3DF0);
            v2776 = v1227;
            v2777 = v1229;
            v2778 = v1231;
            v2779 = v962;
            _X9 = &_X24->i8[v75];
            __asm { PRFM            #0, [X9] }

            v1184.i64[0] = _X24->i64[0];
            v1234 = vqtbl1q_s8(v1184, xmmword_2773B3E00);
            v1234.i16[3] = _X24->i16[4];
            v1235 = vzip1q_s8(v1234, v19);
            v1236 = vzip1q_s8(v1184, v19);
            v1237 = v2678;
            if (v2678 <= -16)
            {
              v1237 = -16;
            }

            if (v1237 >= v2679)
            {
              v1238 = v2679;
            }

            else
            {
              v1238 = v1237;
            }

            v1239 = (v2684 + v75 + v960 + v1238 + 8);
            _X14 = v2684 + v960 + v1238 + 2 * v75;
            do
            {
              __asm { PRFM            #0, [X14] }

              v1242 = vmlaq_s16(vmulq_s16(v1229, v1235), v1227, v1236);
              v1235.i64[0] = *(v1239 - 1);
              v1236 = vzip1q_s8(v1235, v19);
              v1243 = vqtbl1q_s8(v1235, xmmword_2773B3E00);
              v1243.i16[3] = *v1239;
              v1239 = (v1239 + v75);
              v1235 = vzip1q_s8(v1243, v19);
              *(&v2767 + v1224) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1242, v1231, v1236), v962, v1235), v21), 6uLL);
              v1224 += 32;
              _X14 += v75;
            }

            while (v1224 != 256);
            v1244 = 0;
            _X10 = &_X24->i8[v75 + 8];
            __asm { PRFM            #0, [X10] }

            v1236.i64[0] = _X24->i64[1];
            v1247 = vqtbl1q_s8(v1236, xmmword_2773B3E00);
            v1247.i16[3] = _X24[1].i16[0];
            v1248 = vzip1q_s8(v1247, v19);
            v1184 = vzip1q_s8(v1236, v19);
            if (v1237 >= v2679)
            {
              v1249 = v2679;
            }

            else
            {
              v1249 = v1237;
            }

            v1250 = v2684 + v75 + v1249;
            v1251 = v2684 + 2 * v75 + v1249 + 8;
            do
            {
              _X12 = v1251 + v960;
              __asm { PRFM            #0, [X12] }

              v1254 = vmlaq_s16(vmulq_s16(v1229, v1248), v1227, v1184);
              v1248.i64[0] = *(v1250 + v960 + 8);
              v1184 = vzip1q_s8(v1248, v19);
              v1255 = vqtbl1q_s8(v1248, xmmword_2773B3E00);
              v1255.i16[3] = *(v1250 + v960 + 16);
              v1248 = vzip1q_s8(v1255, v19);
              *(&v2768 + v1244) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1254, v1231, v1184), v962, v1248), v21), 6uLL);
              v1244 += 32;
              v1250 += v75;
              v1251 += v75;
            }

            while (v1244 != 256);
LABEL_592:
            if (v2658 == 64)
            {
              __asm { PRFM            #0, [X4] }

              v1280 = 9;
              v1258 = v2771;
              do
              {
                v1281 = _X4;
                _X4 = (_X4 + v85);
                __asm { PRFM            #0, [X4] }

                v1283 = vextq_s8(*v1281, *v1281, 2uLL);
                v1283.i16[7] = v1281[1].i16[0];
                v1284 = vrhaddq_u8(*v1281, v1283);
                v1283.i64[0] = v19.i64[0];
                v1258[3] = vzip2q_s8(v1284, v19);
                v1258 += 2;
                vst2_s8(v1258->i8, *(&v1283 - 8));
                --v1280;
              }

              while (v1280 > 2);
              v1285 = vextq_s8(*_X4, *_X4, 2uLL);
              v1285.i16[7] = _X4[1].i16[0];
              v1278 = vrhaddq_u8(*_X4, v1285);
            }

            else
            {
              if (v2658 != 4)
              {
                if (v2658)
                {
                  v1288 = 0;
                  v1289 = v2673 - (8 * v2683 + 8 * v2697) + 64;
                  v1290 = v19;
                  v1290.i32[0] = v1289 | (v1289 << 16);
                  v1291 = vqtbl1q_s8(v1290, xmmword_2773B3DF0);
                  v1292 = v19;
                  v1292.i32[0] = (8 * v2683 - v2673) | ((8 * v2683 - v2673) << 16);
                  v1293 = vqtbl1q_s8(v1292, xmmword_2773B3DF0);
                  v1294 = v19;
                  v1294.i32[0] = (8 * v2697 - v2673) | ((8 * v2697 - v2673) << 16);
                  v1295 = vqtbl1q_s8(v1294, xmmword_2773B3DF0);
                  v2780 = v1291;
                  v2781 = v1293;
                  v2782 = v1295;
                  v2783 = v961;
                  _X9 = &v2688->i8[v85];
                  __asm { PRFM            #0, [X9] }

                  v1184.i64[0] = v2688->i64[0];
                  v1298 = vqtbl1q_s8(v1184, xmmword_2773B3E00);
                  v1298.i16[3] = v2688->i16[4];
                  v1299 = vzip1q_s8(v1298, v19);
                  v1300 = vzip1q_s8(v1184, v19);
                  v1301 = v2680;
                  if (v2680 <= -16)
                  {
                    v1301 = -16;
                  }

                  if (v1301 >= v2681)
                  {
                    v1302 = v2681;
                  }

                  else
                  {
                    v1302 = v1301;
                  }

                  v1303 = v958 + v85 + v1302;
                  v1304 = v958 + v1302 + 2 * v85;
                  do
                  {
                    _X16 = v1304 + v959;
                    __asm { PRFM            #0, [X16] }

                    v1307 = vmlaq_s16(vmulq_s16(v1293, v1299), v1291, v1300);
                    v1299.i64[0] = *(v1303 + v959);
                    v1300 = vzip1q_s8(v1299, v19);
                    v1308 = vqtbl1q_s8(v1299, xmmword_2773B3E00);
                    v1308.i16[3] = *(v1303 + v959 + 8);
                    v1299 = vzip1q_s8(v1308, v19);
                    *(&v2772 + v1288) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1307, v1295, v1300), v961, v1299), v21), 6uLL);
                    v1288 += 32;
                    v1303 += v85;
                    v1304 += v85;
                  }

                  while (v1288 != 256);
                  v1309 = 0;
                  _X10 = &v2688->i8[v85 + 8];
                  __asm { PRFM            #0, [X10] }

                  v1300.i64[0] = v2688->i64[1];
                  v1312 = vqtbl1q_s8(v1300, xmmword_2773B3E00);
                  v1312.i16[3] = v2688[1].i16[0];
                  v1313 = vzip1q_s8(v1312, v19);
                  v1314 = vzip1q_s8(v1300, v19);
                  if (v1301 >= v2681)
                  {
                    v1315 = v2681;
                  }

                  else
                  {
                    v1315 = v1301;
                  }

                  v1316 = v958 + v85 + v1315;
                  v1317 = v958 + 2 * v85 + v1315 + 8;
                  result = v2687;
                  do
                  {
                    _X12 = v1317 + v959;
                    __asm { PRFM            #0, [X12] }

                    v1320 = vmlaq_s16(vmulq_s16(v1293, v1313), v1291, v1314);
                    v1313.i64[0] = *(v1316 + v959 + 8);
                    v1314 = vzip1q_s8(v1313, v19);
                    v1321 = vqtbl1q_s8(v1313, xmmword_2773B3E00);
                    v1321.i16[3] = *(v1316 + v959 + 16);
                    v1313 = vzip1q_s8(v1321, v19);
                    *(&v2773 + v1309) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1320, v1295, v1314), v961, v1313), v21), 6uLL);
                    v1309 += 32;
                    v1316 += v85;
                    v1317 += v85;
                  }

                  while (v1309 != 256);
                  goto LABEL_622;
                }

                __asm { PRFM            #0, [X4] }

                v1257 = 9;
                v1258 = v2771;
                do
                {
                  v1259 = _X4;
                  _X4 = (_X4 + v85);
                  __asm { PRFM            #0, [X4] }

                  v1261 = *v1259;
                  v1258[3] = vzip2q_s8(*v1259, v19);
                  v1258 += 2;
                  v1262 = v19.i64[0];
                  vst2_s8(v1258->i8, v1261);
                  --v1257;
                }

                while (v1257 > 2);
                v1263 = *_X4;
                v1264 = vzip2q_s8(*_X4, v19);
                v1265 = v1258[2].i8;
                v1266 = v19.i64[0];
                vst2_s8(v1265, v1263);
LABEL_609:
                result = v2687;
                v1258[3] = v1264;
LABEL_622:
                v1322 = 4;
                do
                {
                  a8 = v956[1];
                  a9 = v956[2];
                  a10 = v956[3];
                  v1323 = vrhaddq_u16(v956[-16], *v956);
                  v1324 = vrhaddq_u16(v956[-15], a8);
                  v1325 = vrhaddq_u16(v956[-14], a9);
                  v1326 = vrhaddq_u16(v956[-13], a10);
                  if (v12)
                  {
                    v1327 = *v74;
                    a8 = *(v74 + 16);
                    a9 = *(v74 + 32);
                    a10 = *(v74 + 48);
                    v74 += 64;
                    v1323 = vaddq_s16(v1327, v1323);
                    v1324 = vaddq_s16(a8, v1324);
                    v1325 = vaddq_s16(a9, v1325);
                    v1326 = vaddq_s16(a10, v1326);
                  }

                  v956 += 4;
                  *v72->i8 = vqmovun_high_s16(vqmovun_s16(v1323), v1324);
                  *&v72->i8[v954] = vqmovun_high_s16(vqmovun_s16(v1325), v1326);
                  v72 = (v72 + v2677);
                  --v1322;
                }

                while (v1322);
                goto LABEL_1022;
              }

              _X8 = &v2688->i8[v85];
              __asm { PRFM            #0, [X8] }

              v1269 = *v2688;
              v1270 = v2680;
              if (v2680 <= -16)
              {
                v1270 = -16;
              }

              if (v1270 >= v2681)
              {
                v1270 = v2681;
              }

              v1271 = (v958 + v959 + v1270);
              v1272 = 9;
              v1258 = v2771;
              do
              {
                _X12 = &v1271->i8[2 * v85];
                v1271 = (v1271 + v85);
                __asm { PRFM            #0, [X12] }

                v1275 = *v1271;
                v1276 = vrhaddq_u8(v1269, *v1271);
                v1277 = v19.i64[0];
                v1258[3] = vzip2q_s8(v1276, v19);
                v1258 += 2;
                vst2_s8(v1258->i8, v1276);
                --v1272;
                v1269 = v1275;
              }

              while (v1272 > 2);
              v1278 = vrhaddq_u8(v1275, *(v1271 + v85));
            }

            v1286 = v1258[2].i8;
            v1287 = v19.i64[0];
            vst2_s8(v1286, v1278);
            v1264 = vzip2q_s8(v1278, v19);
            goto LABEL_609;
          }

          __asm { PRFM            #0, [X24] }

          v1193 = 9;
          v1194 = v2766;
          do
          {
            v1195 = _X24;
            _X24 = (_X24 + v75);
            __asm { PRFM            #0, [X24] }

            v1197 = *v1195;
            v1194[3] = vzip2q_s8(*v1195, v19);
            v1194 += 2;
            v1198 = v19.i64[0];
            vst2_s8(v1194->i8, v1197);
            --v1193;
          }

          while (v1193 > 2);
          v1199 = *_X24;
          v1200 = vzip2q_s8(*_X24, v19);
          v1201 = v1194[2].i8;
          v1202 = v19.i64[0];
          vst2_s8(v1201, v1199);
LABEL_579:
          v1194[3] = v1200;
          goto LABEL_592;
        }

        _X8 = &_X24->i8[v75];
        __asm { PRFM            #0, [X8] }

        v1205 = *_X24;
        v1206 = v2678;
        if (v2678 <= -16)
        {
          v1206 = -16;
        }

        if (v1206 >= v2679)
        {
          v1206 = v2679;
        }

        v1207 = (v2684 + v960 + v1206);
        v1208 = 9;
        v1194 = v2766;
        do
        {
          _X12 = &v1207->i8[2 * v75];
          v1207 = (v1207 + v75);
          __asm { PRFM            #0, [X12] }

          v1211 = *v1207;
          v1212 = vrhaddq_u8(v1205, *v1207);
          v1213 = v19.i64[0];
          v1194[3] = vzip2q_s8(v1212, v19);
          v1194 += 2;
          vst2_s8(v1194->i8, v1212);
          --v1208;
          v1205 = v1211;
        }

        while (v1208 > 2);
        v1214 = vrhaddq_u8(v1211, *(v1207 + v75));
      }

      v1222 = v1194[2].i8;
      v1223 = v19.i64[0];
      vst2_s8(v1222, v1214);
      v1200 = vzip2q_s8(v1214, v19);
      goto LABEL_579;
    }

    v2733 = v10;
    v2747 = v19;
    switch(v77)
    {
      case 1:
        v747 = 0;
        v748 = (v93 - 2 * v73);
        v749 = (v748 + v73 + v73);
        v750 = vzip1q_s8(*(v749 + v73 + v73), v19);
        v751 = vzip1q_s8(*(v749 + v73), v19);
        v752 = vzip1q_s8(*v749, v19);
        v753 = vzip1q_s8(*(v748 + v73), v19);
        v754 = vzip1q_s8(*v748, v19);
        v755 = (v92 + 5 * v73 + v84 + v73 * v91 - 2 * v73);
        do
        {
          v756 = v753;
          v753 = v752;
          v752 = v751;
          v751 = v750;
          v750 = vzip1q_s8(*v755, v19);
          v757 = vsubq_s16(vshlq_n_s16(vaddq_s16(v753, v752), 2uLL), vaddq_s16(v756, v751));
          *(&v2758 + v747) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v754, v757), vshlq_n_s16(v757, 2uLL)), vaddq_s16(v750, v20)), 5uLL))), v753);
          v747 += 32;
          v755 = (v755 + v73);
          v754 = v756;
        }

        while (v747 != 256);
        v758 = 0;
        v759 = v93 - 2 * v73;
        v760 = *(v759 + 8);
        v761 = &v759[v73 + 8];
        v762 = (v761 + v73 + v73);
        v763 = vzip1q_s8(*(v762 + v73), v19);
        v764 = vzip1q_s8(*v762, v19);
        v765 = vzip1q_s8(*(v761 + v73), v19);
        v766 = vzip1q_s8(*v761, v19);
        v767 = vzip1q_s8(v760, v19);
        v768 = (v92 + 5 * v73 + v84 + v73 * v91 - 2 * v73 + 8);
        v237 = v2701;
        do
        {
          v769 = v766;
          v766 = v765;
          v765 = v764;
          v764 = v763;
          v763 = vzip1q_s8(*v768, v19);
          v770 = vsubq_s16(vshlq_n_s16(vaddq_s16(v766, v765), 2uLL), vaddq_s16(v769, v764));
          *(&v2759 + v758) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v767, v770), vshlq_n_s16(v770, 2uLL)), vaddq_s16(v763, v20)), 5uLL))), v766);
          v758 += 32;
          v768 = (v768 + v73);
          v767 = v769;
        }

        while (v758 != 256);
        break;
      case 2:
        v609 = 0;
        v610 = (v93 - 2 * v73);
        v611 = (v610 + v73 + v73);
        v612 = vzip1q_s8(*(v611 + v73 + v73), v19);
        v613 = vzip1q_s8(*(v611 + v73), v19);
        v614 = vzip1q_s8(*v611, v19);
        v615 = vzip1q_s8(*(v610 + v73), v19);
        v616 = vzip1q_s8(*v610, v19);
        v617 = (v92 + 5 * v73 + v84 + v73 * v91 - 2 * v73);
        do
        {
          v618 = v615;
          v615 = v614;
          v614 = v613;
          v613 = v612;
          v619 = &v2758.i8[v609];
          v612 = vzip1q_s8(*v617, v19);
          v620 = vsubq_s16(vshlq_n_s16(vaddq_s16(v615, v614), 2uLL), vaddq_s16(v618, v613));
          *v620.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v616, v620), vshlq_n_s16(v620, 2uLL)), vaddq_s16(v612, v20)), 5uLL));
          v621 = v19.i64[0];
          vst2_s8(v619, v620);
          v609 += 32;
          v617 = (v617 + v73);
          v616 = v618;
        }

        while (v609 != 256);
        v622 = 0;
        v623 = v93 - 2 * v73;
        v624 = *(v623 + 8);
        v625 = &v623[v73 + 8];
        v626 = (v625 + v73 + v73);
        v627 = vzip1q_s8(*(v626 + v73), v19);
        v628 = vzip1q_s8(*v626, v19);
        v629 = vzip1q_s8(*(v625 + v73), v19);
        v630 = vzip1q_s8(*v625, v19);
        v631 = vzip1q_s8(v624, v19);
        v632 = (v92 + 5 * v73 + v84 + v73 * v91 - 2 * v73 + 8);
        v237 = v2701;
        do
        {
          v633 = v630;
          v630 = v629;
          v629 = v628;
          v628 = v627;
          v634 = &v2759.i8[v622];
          v627 = vzip1q_s8(*v632, v19);
          v635 = vsubq_s16(vshlq_n_s16(vaddq_s16(v630, v629), 2uLL), vaddq_s16(v633, v628));
          *v635.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v631, v635), vshlq_n_s16(v635, 2uLL)), vaddq_s16(v627, v20)), 5uLL));
          v636 = v19.i64[0];
          vst2_s8(v634, v635);
          v622 += 32;
          v632 = (v632 + v73);
          v631 = v633;
        }

        while (v622 != 256);
        break;
      case 3:
        v699 = 0;
        v700 = (v93 - 2 * v73);
        v701 = (v700 + v73 + v73);
        v702 = vzip1q_s8(*(v701 + v73 + v73), v19);
        v703 = vzip1q_s8(*(v701 + v73), v19);
        v704 = vzip1q_s8(*v701, v19);
        v705 = vzip1q_s8(*(v700 + v73), v19);
        v706 = vzip1q_s8(*v700, v19);
        v707 = (v92 + 5 * v73 + v84 + v73 * v91 - 2 * v73);
        do
        {
          v708 = v705;
          v705 = v704;
          v704 = v703;
          v703 = v702;
          v702 = vzip1q_s8(*v707, v19);
          v709 = vsubq_s16(vshlq_n_s16(vaddq_s16(v705, v704), 2uLL), vaddq_s16(v708, v703));
          *(&v2758 + v699) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v706, v709), vshlq_n_s16(v709, 2uLL)), vaddq_s16(v702, v20)), 5uLL))), v704);
          v699 += 32;
          v707 = (v707 + v73);
          v706 = v708;
        }

        while (v699 != 256);
        v710 = 0;
        v711 = v93 - 2 * v73;
        v712 = *(v711 + 8);
        v713 = &v711[v73 + 8];
        v714 = (v713 + v73 + v73);
        v715 = vzip1q_s8(*(v714 + v73), v19);
        v716 = vzip1q_s8(*v714, v19);
        v717 = vzip1q_s8(*(v713 + v73), v19);
        v718 = vzip1q_s8(*v713, v19);
        v719 = vzip1q_s8(v712, v19);
        v720 = (v92 + 5 * v73 + v84 + v73 * v91 - 2 * v73 + 8);
        v237 = v2701;
        do
        {
          v721 = v718;
          v718 = v717;
          v717 = v716;
          v716 = v715;
          v715 = vzip1q_s8(*v720, v19);
          v722 = vsubq_s16(vshlq_n_s16(vaddq_s16(v718, v717), 2uLL), vaddq_s16(v721, v716));
          *(&v2759 + v710) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v719, v722), vshlq_n_s16(v722, 2uLL)), vaddq_s16(v715, v20)), 5uLL))), v717);
          v710 += 32;
          v720 = (v720 + v73);
          v719 = v721;
        }

        while (v710 != 256);
        break;
      case 4:
        v543 = 0;
        v544 = (v93 - 2);
        do
        {
          v545 = *v544;
          v544 = (v544 + v73);
          v546 = vzip1q_s8(vextq_s8(v545, v545, 2uLL), v19);
          v547 = vsubq_s16(vshlq_n_s16(vaddq_s16(v546, vzip1q_s8(vextq_s8(v545, v545, 3uLL), v19)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v545, v545, 1uLL), v19), vzip1q_s8(vextq_s8(v545, v545, 4uLL), v19)));
          *(&v2758 + v543) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v547, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v545, v19), vzip1q_s8(vextq_s8(v545, v545, 5uLL), v19)), v547)), v20), 5uLL))), v546);
          v543 += 32;
        }

        while (v543 != 256);
        v548 = 0;
        v549 = (v93 + 6);
        v237 = v2701;
        do
        {
          v550 = *v549;
          v549 = (v549 + v73);
          v551 = vzip1q_s8(vextq_s8(v550, v550, 2uLL), v19);
          v552 = vsubq_s16(vshlq_n_s16(vaddq_s16(v551, vzip1q_s8(vextq_s8(v550, v550, 3uLL), v19)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v550, v550, 1uLL), v19), vzip1q_s8(vextq_s8(v550, v550, 4uLL), v19)));
          *(&v2759 + v548) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v552, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v550, v19), vzip1q_s8(vextq_s8(v550, v550, 5uLL), v19)), v552)), v20), 5uLL))), v551);
          v548 += 32;
        }

        while (v548 != 256);
        break;
      case 5:
        v656 = v93;
        v657 = v73;
        v658 = 2;
        goto LABEL_420;
      case 6:
        sub_27729BFC4(v2758.i8, 0x20u, v93, v73);
        sub_27729BFC4(v2759.i8, 0x20u, (v93 + 2), v73);
        goto LABEL_517;
      case 7:
        v656 = v93;
        v657 = v73;
        v658 = 3;
LABEL_420:
        v796 = 2;
        goto LABEL_516;
      case 8:
        v1484 = 0;
        v1485 = (v93 - 2);
        do
        {
          v1486 = &v2758.i8[v1484];
          v1487 = *v1485;
          v1485 = (v1485 + v73);
          v1488 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1487, v1487, 2uLL), v19), vzip1q_s8(vextq_s8(v1487, v1487, 3uLL), v19)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1487, v1487, 1uLL), v19), vzip1q_s8(vextq_s8(v1487, v1487, 4uLL), v19)));
          *v1487.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1488, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1487, v19), vzip1q_s8(vextq_s8(v1487, v1487, 5uLL), v19)), v1488)), v20), 5uLL));
          v1488.i64[0] = v19.i64[0];
          vst2_s8(v1486, v1487);
          v1484 += 32;
        }

        while (v1484 != 256);
        v1489 = 0;
        v1490 = (v93 + 6);
        v237 = v2701;
        do
        {
          v1491 = &v2759.i8[v1489];
          v1492 = *v1490;
          v1490 = (v1490 + v73);
          v1493 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1492, v1492, 2uLL), v19), vzip1q_s8(vextq_s8(v1492, v1492, 3uLL), v19)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1492, v1492, 1uLL), v19), vzip1q_s8(vextq_s8(v1492, v1492, 4uLL), v19)));
          *v1492.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1493, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1492, v19), vzip1q_s8(vextq_s8(v1492, v1492, 5uLL), v19)), v1493)), v20), 5uLL));
          v1493.i64[0] = v19.i64[0];
          vst2_s8(v1491, v1492);
          v1489 += 32;
        }

        while (v1489 != 256);
        break;
      case 9:
        sub_27729B614(v2758.i8, 0x20u, v93, v73, 8);
        sub_27729B614(v2759.i8, 0x20u, (v93 + 2), v73, 8);
        goto LABEL_517;
      case 10:
        sub_27729B7DC(&v2758, 32, v93, v73, 8);
        sub_27729B7DC(&v2759, 32, (v93 + 2), v73, 8);
        goto LABEL_517;
      case 11:
        sub_27729B98C(v2758.i8, 0x20u, v93, v73, 8);
        sub_27729B98C(v2759.i8, 0x20u, (v93 + 2), v73, 8);
        goto LABEL_517;
      case 12:
        v563 = 0;
        v564 = (v93 - 2);
        do
        {
          v565 = *v564;
          v564 = (v564 + v73);
          v566 = vzip1q_s8(vextq_s8(v565, v565, 3uLL), v19);
          v567 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v565, v565, 2uLL), v19), v566), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v565, v565, 1uLL), v19), vzip1q_s8(vextq_s8(v565, v565, 4uLL), v19)));
          *(&v2758 + v563) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v567, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v565, v19), vzip1q_s8(vextq_s8(v565, v565, 5uLL), v19)), v567)), v20), 5uLL))), v566);
          v563 += 32;
        }

        while (v563 != 256);
        v568 = 0;
        v569 = (v93 + 6);
        v237 = v2701;
        do
        {
          v570 = *v569;
          v569 = (v569 + v73);
          v571 = vzip1q_s8(vextq_s8(v570, v570, 3uLL), v19);
          v572 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v570, v570, 2uLL), v19), v571), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v570, v570, 1uLL), v19), vzip1q_s8(vextq_s8(v570, v570, 4uLL), v19)));
          *(&v2759 + v568) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v572, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v570, v19), vzip1q_s8(vextq_s8(v570, v570, 5uLL), v19)), v572)), v20), 5uLL))), v571);
          v568 += 32;
        }

        while (v568 != 256);
        break;
      case 13:
        v656 = v93;
        v657 = v73;
        v658 = 2;
        goto LABEL_515;
      case 14:
        sub_27729C39C(v2758.i8, 0x20u, v93, v73);
        sub_27729C39C(v2759.i8, 0x20u, (v93 + 2), v73);
        goto LABEL_517;
      case 15:
        v656 = v93;
        v657 = v73;
        v658 = 3;
LABEL_515:
        v796 = 3;
LABEL_516:
        sub_27729AF04(v2758.i8, v656, v657, 8, v658, v796);
LABEL_517:
        v20.i64[0] = 0x10001000100010;
        v20.i64[1] = 0x10001000100010;
        v10 = v2733;
        v19 = v2747;
        v237 = v2701;
        break;
      default:
        v236 = 0;
        v237 = v2701;
        do
        {
          v238 = &v2758.i8[v236];
          v239 = *v93;
          v93 = (v93 + v73);
          v240 = v19.i64[0];
          vst2_s8(v238, v239);
          v238 += 16;
          *v238 = vzip2q_s8(v239, v19);
          v236 += 32;
        }

        while (v236 != 256);
        break;
    }

    v1067 = v2708;
    switch(v237)
    {
      case 1:
        v1158 = 0;
        v1159 = (v2708 - 2 * v2706);
        v1160 = (v1159 + v2706 + v2706);
        v1161 = vzip1q_s8(*(v1160 + v2706 + v2706), v19);
        v1162 = vzip1q_s8(*(v1160 + v2706), v19);
        v1163 = vzip1q_s8(*v1160, v19);
        v1164 = vzip1q_s8(*(v1159 + v2706), v19);
        v1165 = vzip1q_s8(*v1159, v19);
        v1166 = (v2674 + 5 * v2706 + v2676 + v2706 * v2675 - 2 * v2706);
        do
        {
          v1167 = v1164;
          v1164 = v1163;
          v1163 = v1162;
          v1162 = v1161;
          v1161 = vzip1q_s8(*v1166, v19);
          v1168 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1164, v1163), 2uLL), vaddq_s16(v1167, v1162));
          *(&v2762 + v1158) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1165, v1168), vshlq_n_s16(v1168, 2uLL)), vaddq_s16(v1161, v20)), 5uLL))), v1164);
          v1158 += 32;
          v1166 = (v1166 + v2706);
          v1165 = v1167;
        }

        while (v1158 != 256);
        v1169 = 0;
        v1170 = v2708 - 2 * v2706;
        v1171 = *(v1170 + 8);
        v1172 = &v1170[v2706 + 8];
        v1173 = (v1172 + v2706 + v2706);
        v1174 = vzip1q_s8(*(v1173 + v2706), v19);
        v1175 = vzip1q_s8(*v1173, v19);
        v1176 = vzip1q_s8(*(v1172 + v2706), v19);
        v1177 = vzip1q_s8(*v1172, v19);
        v1178 = vzip1q_s8(v1171, v19);
        v1179 = (v2674 + 5 * v2706 + v2676 + v2706 * v2675 - 2 * v2706 + 8);
        v12 = v2720;
        v1069 = v2727;
        v1070 = v2728;
        v1071 = v2700;
        v1072 = &v2772;
        v21.i64[0] = 0x20002000200020;
        v21.i64[1] = 0x20002000200020;
        _X4 = v2688;
        v1074 = v2666;
        v1075 = v2669;
        v1076 = v2663;
        v1078 = v2659;
        v1077 = v2660;
        v1079 = v2726;
        do
        {
          v1180 = v1177;
          v1177 = v1176;
          v1176 = v1175;
          v1175 = v1174;
          v1174 = vzip1q_s8(*v1179, v19);
          v1181 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1177, v1176), 2uLL), vaddq_s16(v1180, v1175));
          *(&v2763 + v1169) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1178, v1181), vshlq_n_s16(v1181, 2uLL)), vaddq_s16(v1174, v20)), 5uLL))), v1177);
          v1169 += 32;
          v1179 = (v1179 + v2706);
          v1178 = v1180;
        }

        while (v1169 != 256);
        break;
      case 2:
        v1103 = 0;
        v1104 = (v2708 - 2 * v2706);
        v1105 = (v1104 + v2706 + v2706);
        v1106 = vzip1q_s8(*(v1105 + v2706 + v2706), v19);
        v1107 = vzip1q_s8(*(v1105 + v2706), v19);
        v1108 = vzip1q_s8(*v1105, v19);
        v1109 = vzip1q_s8(*(v1104 + v2706), v19);
        v1110 = vzip1q_s8(*v1104, v19);
        v1111 = (v2674 + 5 * v2706 + v2676 + v2706 * v2675 - 2 * v2706);
        do
        {
          v1112 = v1109;
          v1109 = v1108;
          v1108 = v1107;
          v1107 = v1106;
          v1113 = &v2762.i8[v1103];
          v1106 = vzip1q_s8(*v1111, v19);
          v1114 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1109, v1108), 2uLL), vaddq_s16(v1112, v1107));
          *v1114.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1110, v1114), vshlq_n_s16(v1114, 2uLL)), vaddq_s16(v1106, v20)), 5uLL));
          v1115 = v19.i64[0];
          vst2_s8(v1113, v1114);
          v1103 += 32;
          v1111 = (v1111 + v2706);
          v1110 = v1112;
        }

        while (v1103 != 256);
        v1116 = 0;
        v1117 = v2708 - 2 * v2706;
        v1118 = *(v1117 + 8);
        v1119 = &v1117[v2706 + 8];
        v1120 = (v1119 + v2706 + v2706);
        v1121 = vzip1q_s8(*(v1120 + v2706), v19);
        v1122 = vzip1q_s8(*v1120, v19);
        v1123 = vzip1q_s8(*(v1119 + v2706), v19);
        v1124 = vzip1q_s8(*v1119, v19);
        v1125 = vzip1q_s8(v1118, v19);
        v1126 = (v2674 + 5 * v2706 + v2676 + v2706 * v2675 - 2 * v2706 + 8);
        v12 = v2720;
        v1069 = v2727;
        v1070 = v2728;
        v1071 = v2700;
        v1072 = &v2772;
        v21.i64[0] = 0x20002000200020;
        v21.i64[1] = 0x20002000200020;
        _X4 = v2688;
        v1074 = v2666;
        v1075 = v2669;
        v1076 = v2663;
        v1078 = v2659;
        v1077 = v2660;
        v1079 = v2726;
        do
        {
          v1127 = v1124;
          v1124 = v1123;
          v1123 = v1122;
          v1122 = v1121;
          v1128 = &v2763.i8[v1116];
          v1121 = vzip1q_s8(*v1126, v19);
          v1129 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1124, v1123), 2uLL), vaddq_s16(v1127, v1122));
          *v1129.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1125, v1129), vshlq_n_s16(v1129, 2uLL)), vaddq_s16(v1121, v20)), 5uLL));
          v1130 = v19.i64[0];
          vst2_s8(v1128, v1129);
          v1116 += 32;
          v1126 = (v1126 + v2706);
          v1125 = v1127;
        }

        while (v1116 != 256);
        break;
      case 3:
        v1134 = 0;
        v1135 = (v2708 - 2 * v2706);
        v1136 = (v1135 + v2706 + v2706);
        v1137 = vzip1q_s8(*(v1136 + v2706 + v2706), v19);
        v1138 = vzip1q_s8(*(v1136 + v2706), v19);
        v1139 = vzip1q_s8(*v1136, v19);
        v1140 = vzip1q_s8(*(v1135 + v2706), v19);
        v1141 = vzip1q_s8(*v1135, v19);
        v1142 = (v2674 + 5 * v2706 + v2676 + v2706 * v2675 - 2 * v2706);
        do
        {
          v1143 = v1140;
          v1140 = v1139;
          v1139 = v1138;
          v1138 = v1137;
          v1137 = vzip1q_s8(*v1142, v19);
          v1144 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1140, v1139), 2uLL), vaddq_s16(v1143, v1138));
          *(&v2762 + v1134) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1141, v1144), vshlq_n_s16(v1144, 2uLL)), vaddq_s16(v1137, v20)), 5uLL))), v1139);
          v1134 += 32;
          v1142 = (v1142 + v2706);
          v1141 = v1143;
        }

        while (v1134 != 256);
        v1145 = 0;
        v1146 = v2708 - 2 * v2706;
        v1147 = *(v1146 + 8);
        v1148 = &v1146[v2706 + 8];
        v1149 = (v1148 + v2706 + v2706);
        v1150 = vzip1q_s8(*(v1149 + v2706), v19);
        v1151 = vzip1q_s8(*v1149, v19);
        v1152 = vzip1q_s8(*(v1148 + v2706), v19);
        v1153 = vzip1q_s8(*v1148, v19);
        v1154 = vzip1q_s8(v1147, v19);
        v1155 = (v2674 + 5 * v2706 + v2676 + v2706 * v2675 - 2 * v2706 + 8);
        v12 = v2720;
        v1069 = v2727;
        v1070 = v2728;
        v1071 = v2700;
        v1072 = &v2772;
        v21.i64[0] = 0x20002000200020;
        v21.i64[1] = 0x20002000200020;
        _X4 = v2688;
        v1074 = v2666;
        v1075 = v2669;
        v1076 = v2663;
        v1078 = v2659;
        v1077 = v2660;
        v1079 = v2726;
        do
        {
          v1156 = v1153;
          v1153 = v1152;
          v1152 = v1151;
          v1151 = v1150;
          v1150 = vzip1q_s8(*v1155, v19);
          v1157 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1153, v1152), 2uLL), vaddq_s16(v1156, v1151));
          *(&v2763 + v1145) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1154, v1157), vshlq_n_s16(v1157, 2uLL)), vaddq_s16(v1150, v20)), 5uLL))), v1152);
          v1145 += 32;
          v1155 = (v1155 + v2706);
          v1154 = v1156;
        }

        while (v1145 != 256);
        break;
      case 4:
        v1083 = 0;
        v1084 = (v2708 - 2);
        do
        {
          v1085 = *v1084;
          v1084 = (v1084 + v2706);
          v1086 = vzip1q_s8(vextq_s8(v1085, v1085, 2uLL), v19);
          v1087 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1086, vzip1q_s8(vextq_s8(v1085, v1085, 3uLL), v19)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1085, v1085, 1uLL), v19), vzip1q_s8(vextq_s8(v1085, v1085, 4uLL), v19)));
          *(&v2762 + v1083) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1087, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1085, v19), vzip1q_s8(vextq_s8(v1085, v1085, 5uLL), v19)), v1087)), v20), 5uLL))), v1086);
          v1083 += 32;
        }

        while (v1083 != 256);
        v1088 = 0;
        v1089 = (v2708 + 6);
        v12 = v2720;
        v1069 = v2727;
        v1070 = v2728;
        v1071 = v2700;
        v1072 = &v2772;
        v21.i64[0] = 0x20002000200020;
        v21.i64[1] = 0x20002000200020;
        _X4 = v2688;
        v1074 = v2666;
        v1075 = v2669;
        v1076 = v2663;
        v1078 = v2659;
        v1077 = v2660;
        v1079 = v2726;
        do
        {
          v1090 = *v1089;
          v1089 = (v1089 + v2706);
          v1091 = vzip1q_s8(vextq_s8(v1090, v1090, 2uLL), v19);
          v1092 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1091, vzip1q_s8(vextq_s8(v1090, v1090, 3uLL), v19)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1090, v1090, 1uLL), v19), vzip1q_s8(vextq_s8(v1090, v1090, 4uLL), v19)));
          *(&v2763 + v1088) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1092, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1090, v19), vzip1q_s8(vextq_s8(v1090, v1090, 5uLL), v19)), v1092)), v20), 5uLL))), v1091);
          v1088 += 32;
        }

        while (v1088 != 256);
        break;
      case 5:
        v1131 = v2708;
        v1132 = v2706;
        v1133 = 2;
        goto LABEL_553;
      case 6:
        sub_27729BFC4(v2762.i8, 0x20u, v2708, v2706);
        sub_27729BFC4(v2763.i8, 0x20u, (v2708 + 2), v2706);
        goto LABEL_630;
      case 7:
        v1131 = v2708;
        v1132 = v2706;
        v1133 = 3;
LABEL_553:
        v1182 = 2;
        goto LABEL_629;
      case 8:
        v1504 = 0;
        v1505 = (v2708 - 2);
        do
        {
          v1506 = &v2762.i8[v1504];
          v1507 = *v1505;
          v1505 = (v1505 + v2706);
          v1508 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1507, v1507, 2uLL), v19), vzip1q_s8(vextq_s8(v1507, v1507, 3uLL), v19)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1507, v1507, 1uLL), v19), vzip1q_s8(vextq_s8(v1507, v1507, 4uLL), v19)));
          *v1507.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1508, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1507, v19), vzip1q_s8(vextq_s8(v1507, v1507, 5uLL), v19)), v1508)), v20), 5uLL));
          v1508.i64[0] = v19.i64[0];
          vst2_s8(v1506, v1507);
          v1504 += 32;
        }

        while (v1504 != 256);
        v1509 = 0;
        v1510 = (v2708 + 6);
        v12 = v2720;
        v1069 = v2727;
        v1070 = v2728;
        v1071 = v2700;
        v1072 = &v2772;
        v21.i64[0] = 0x20002000200020;
        v21.i64[1] = 0x20002000200020;
        _X4 = v2688;
        v1074 = v2666;
        v1075 = v2669;
        v1076 = v2663;
        v1078 = v2659;
        v1077 = v2660;
        v1079 = v2726;
        do
        {
          v1511 = &v2763.i8[v1509];
          v1512 = *v1510;
          v1510 = (v1510 + v2706);
          v1513 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1512, v1512, 2uLL), v19), vzip1q_s8(vextq_s8(v1512, v1512, 3uLL), v19)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1512, v1512, 1uLL), v19), vzip1q_s8(vextq_s8(v1512, v1512, 4uLL), v19)));
          *v1512.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1513, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1512, v19), vzip1q_s8(vextq_s8(v1512, v1512, 5uLL), v19)), v1513)), v20), 5uLL));
          v1513.i64[0] = v19.i64[0];
          vst2_s8(v1511, v1512);
          v1509 += 32;
        }

        while (v1509 != 256);
        break;
      case 9:
        sub_27729B614(v2762.i8, 0x20u, v2708, v2706, 8);
        sub_27729B614(v2763.i8, 0x20u, (v2708 + 2), v2706, 8);
        goto LABEL_630;
      case 10:
        sub_27729B7DC(&v2762, 32, v2708, v2706, 8);
        sub_27729B7DC(&v2763, 32, (v2708 + 2), v2706, 8);
        goto LABEL_630;
      case 11:
        sub_27729B98C(v2762.i8, 0x20u, v2708, v2706, 8);
        sub_27729B98C(v2763.i8, 0x20u, (v2708 + 2), v2706, 8);
        goto LABEL_630;
      case 12:
        v1093 = 0;
        v1094 = (v2708 - 2);
        do
        {
          v1095 = *v1094;
          v1094 = (v1094 + v2706);
          v1096 = vzip1q_s8(vextq_s8(v1095, v1095, 3uLL), v19);
          v1097 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1095, v1095, 2uLL), v19), v1096), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1095, v1095, 1uLL), v19), vzip1q_s8(vextq_s8(v1095, v1095, 4uLL), v19)));
          *(&v2762 + v1093) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1097, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1095, v19), vzip1q_s8(vextq_s8(v1095, v1095, 5uLL), v19)), v1097)), v20), 5uLL))), v1096);
          v1093 += 32;
        }

        while (v1093 != 256);
        v1098 = 0;
        v1099 = (v2708 + 6);
        v12 = v2720;
        v1069 = v2727;
        v1070 = v2728;
        v1071 = v2700;
        v1072 = &v2772;
        v21.i64[0] = 0x20002000200020;
        v21.i64[1] = 0x20002000200020;
        _X4 = v2688;
        v1074 = v2666;
        v1075 = v2669;
        v1076 = v2663;
        v1078 = v2659;
        v1077 = v2660;
        v1079 = v2726;
        do
        {
          v1100 = *v1099;
          v1099 = (v1099 + v2706);
          v1101 = vzip1q_s8(vextq_s8(v1100, v1100, 3uLL), v19);
          v1102 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1100, v1100, 2uLL), v19), v1101), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1100, v1100, 1uLL), v19), vzip1q_s8(vextq_s8(v1100, v1100, 4uLL), v19)));
          *(&v2763 + v1098) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1102, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1100, v19), vzip1q_s8(vextq_s8(v1100, v1100, 5uLL), v19)), v1102)), v20), 5uLL))), v1101);
          v1098 += 32;
        }

        while (v1098 != 256);
        break;
      case 13:
        v1131 = v2708;
        v1132 = v2706;
        v1133 = 2;
        goto LABEL_628;
      case 14:
        sub_27729C39C(v2762.i8, 0x20u, v2708, v2706);
        sub_27729C39C(v2763.i8, 0x20u, (v2708 + 2), v2706);
        goto LABEL_630;
      case 15:
        v1131 = v2708;
        v1132 = v2706;
        v1133 = 3;
LABEL_628:
        v1182 = 3;
LABEL_629:
        sub_27729AF04(v2762.i8, v1131, v1132, 8, v1133, v1182);
LABEL_630:
        v20.i64[0] = 0x10001000100010;
        v20.i64[1] = 0x10001000100010;
        v10 = v2733;
        v19 = v2747;
        v12 = v2720;
        v1069 = v2727;
        v1070 = v2728;
        v1071 = v2700;
        v1072 = &v2772;
        v21.i64[0] = 0x20002000200020;
        v21.i64[1] = 0x20002000200020;
        _X4 = v2688;
        v1074 = v2666;
        v1075 = v2669;
        v1076 = v2663;
        v1078 = v2659;
        v1077 = v2660;
        v1079 = v2726;
        break;
      default:
        v1068 = 0;
        v12 = v2720;
        v1069 = v2727;
        v1070 = v2728;
        v1071 = v2700;
        v1072 = &v2772;
        v21.i64[0] = 0x20002000200020;
        v21.i64[1] = 0x20002000200020;
        _X4 = v2688;
        v1074 = v2666;
        v1075 = v2669;
        v1076 = v2663;
        v1078 = v2659;
        v1077 = v2660;
        v1079 = v2726;
        do
        {
          v1080 = &v2762.i8[v1068];
          v1081 = *v1067;
          v1067 = (v1067 + v2706);
          v1082 = v19.i64[0];
          vst2_s8(v1080, v1081);
          v1080 += 16;
          *v1080 = vzip2q_s8(v1081, v19);
          v1068 += 32;
        }

        while (v1068 != 256);
        break;
    }

    v1328 = 0;
    do
    {
      v1329 = v2761[v1328 / 0x10];
      v1330 = vrhaddq_u16(*(&v2758 + v1328), *(&v2762 + v1328));
      v1331 = vrhaddq_u16(*(&v2758 + v1328 + 16), *(&v2763 + v1328));
      v1332 = vrhaddq_u16(*(&v2760 + v1328), *(&v2764 + v1328));
      v1333 = vrhaddq_u16(v1329, v2765[v1328 / 0x10]);
      if (v1079)
      {
        v1329 = *v70;
        v1334 = *(v70 + 16);
        v1335 = *(v70 + 32);
        v1336 = *(v70 + 48);
        v70 += 64;
        v1330 = vaddq_s16(v1329, v1330);
        v1331 = vaddq_s16(v1334, v1331);
        v1332 = vaddq_s16(v1335, v1332);
        v1333 = vaddq_s16(v1336, v1333);
      }

      *v69->i8 = vqmovun_high_s16(vqmovun_s16(v1330), v1331);
      *&v69->i8[v1069] = vqmovun_high_s16(vqmovun_s16(v1332), v1333);
      v69 = (v69 + v1071);
      v1328 += 64;
    }

    while (v1328 != 256);
    if (v2657 == 64)
    {
      __asm { PRFM            #0, [X24] }

      v1361 = 5;
      v1339 = v2766;
      do
      {
        v1362 = _X24;
        _X24 = (_X24 + v75);
        __asm { PRFM            #0, [X24] }

        v1364 = vextq_s8(*v1362, *v1362, 2uLL);
        v1364.i16[7] = v1362[1].i16[0];
        v1365 = vrhaddq_u8(*v1362, v1364);
        v1364.i64[0] = v19.i64[0];
        v1339[3] = vzip2q_s8(v1365, v19);
        v1339 += 2;
        vst2_s8(v1339->i8, *(&v1364 - 8));
        --v1361;
      }

      while (v1361 > 2);
      v1366 = vextq_s8(*_X24, *_X24, 2uLL);
      v1366.i16[7] = _X24[1].i16[0];
      v1359 = vrhaddq_u8(*_X24, v1366);
    }

    else
    {
      if (v2657 != 4)
      {
        if (v2657)
        {
          v1369 = 0;
          v1370 = v2672 - (8 * v2682 + 8 * v2694) + 64;
          v1371 = v19;
          v1371.i32[0] = v1370 | (v1370 << 16);
          v1372 = vqtbl1q_s8(v1371, xmmword_2773B3DF0);
          v1373 = v19;
          v1373.i32[0] = (8 * v2682 - v2672) | ((8 * v2682 - v2672) << 16);
          v1374 = vqtbl1q_s8(v1373, xmmword_2773B3DF0);
          v1375 = v19;
          v1375.i32[0] = (8 * v2694 - v2672) | ((8 * v2694 - v2672) << 16);
          v1376 = vqtbl1q_s8(v1375, xmmword_2773B3DF0);
          v2776 = v1372;
          v2777 = v1374;
          v2778 = v1376;
          v2779 = v1078;
          _X9 = &_X24->i8[v75];
          __asm { PRFM            #0, [X9] }

          v1329.i64[0] = _X24->i64[0];
          v1379 = vqtbl1q_s8(v1329, xmmword_2773B3E00);
          v1379.i16[3] = _X24->i16[4];
          v1380 = vzip1q_s8(v1379, v19);
          v1381 = vzip1q_s8(v1329, v19);
          v1382 = v2678;
          if (v2678 <= -16)
          {
            v1382 = -16;
          }

          if (v1382 >= v2679)
          {
            v1383 = v2679;
          }

          else
          {
            v1383 = v1382;
          }

          v1384 = (v2684 + v75 + v1076 + v1383 + 8);
          _X14 = v2684 + v1076 + v1383 + 2 * v75;
          do
          {
            __asm { PRFM            #0, [X14] }

            v1387 = vmlaq_s16(vmulq_s16(v1374, v1380), v1372, v1381);
            v1380.i64[0] = *(v1384 - 1);
            v1381 = vzip1q_s8(v1380, v19);
            v1388 = vqtbl1q_s8(v1380, xmmword_2773B3E00);
            v1388.i16[3] = *v1384;
            v1384 = (v1384 + v75);
            v1380 = vzip1q_s8(v1388, v19);
            *(&v2767 + v1369) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1387, v1376, v1381), v1078, v1380), v21), 6uLL);
            v1369 += 32;
            _X14 += v75;
          }

          while (v1369 != 128);
          v1389 = 0;
          _X10 = &_X24->i8[v75 + 8];
          __asm { PRFM            #0, [X10] }

          v1381.i64[0] = _X24->i64[1];
          v1392 = vqtbl1q_s8(v1381, xmmword_2773B3E00);
          v1392.i16[3] = _X24[1].i16[0];
          v1393 = vzip1q_s8(v1392, v19);
          v1329 = vzip1q_s8(v1381, v19);
          if (v1382 >= v2679)
          {
            v1394 = v2679;
          }

          else
          {
            v1394 = v1382;
          }

          v1395 = v2684 + v75 + v1394;
          v1396 = v2684 + 2 * v75 + v1394 + 8;
          do
          {
            _X12 = v1396 + v1076;
            __asm { PRFM            #0, [X12] }

            v1399 = vmlaq_s16(vmulq_s16(v1374, v1393), v1372, v1329);
            v1393.i64[0] = *(v1395 + v1076 + 8);
            v1329 = vzip1q_s8(v1393, v19);
            v1400 = vqtbl1q_s8(v1393, xmmword_2773B3E00);
            v1400.i16[3] = *(v1395 + v1076 + 16);
            v1393 = vzip1q_s8(v1400, v19);
            *(&v2768 + v1389) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1399, v1376, v1329), v1078, v1393), v21), 6uLL);
            v1389 += 32;
            v1395 += v75;
            v1396 += v75;
          }

          while (v1389 != 128);
LABEL_665:
          if (v2658 == 64)
          {
            __asm { PRFM            #0, [X4] }

            v1425 = 5;
            v1403 = v2771;
            do
            {
              v1426 = _X4;
              _X4 = (_X4 + v85);
              __asm { PRFM            #0, [X4] }

              v1428 = vextq_s8(*v1426, *v1426, 2uLL);
              v1428.i16[7] = v1426[1].i16[0];
              v1429 = vrhaddq_u8(*v1426, v1428);
              v1428.i64[0] = v19.i64[0];
              v1403[3] = vzip2q_s8(v1429, v19);
              v1403 += 2;
              vst2_s8(v1403->i8, *(&v1428 - 8));
              --v1425;
            }

            while (v1425 > 2);
            v1430 = vextq_s8(*_X4, *_X4, 2uLL);
            v1430.i16[7] = _X4[1].i16[0];
            v1423 = vrhaddq_u8(*_X4, v1430);
          }

          else
          {
            if (v2658 != 4)
            {
              if (v2658)
              {
                v1433 = 0;
                v1434 = v2673 - (8 * v2683 + 8 * v2697) + 64;
                v1435 = v19;
                v1435.i32[0] = v1434 | (v1434 << 16);
                v1436 = vqtbl1q_s8(v1435, xmmword_2773B3DF0);
                v1437 = v19;
                v1437.i32[0] = (8 * v2683 - v2673) | ((8 * v2683 - v2673) << 16);
                v1438 = vqtbl1q_s8(v1437, xmmword_2773B3DF0);
                v1439 = v19;
                v1439.i32[0] = (8 * v2697 - v2673) | ((8 * v2697 - v2673) << 16);
                v1440 = vqtbl1q_s8(v1439, xmmword_2773B3DF0);
                v2780 = v1436;
                v2781 = v1438;
                v2782 = v1440;
                v2783 = v1077;
                _X9 = &v2688->i8[v85];
                __asm { PRFM            #0, [X9] }

                v1329.i64[0] = v2688->i64[0];
                v1443 = vqtbl1q_s8(v1329, xmmword_2773B3E00);
                v1443.i16[3] = v2688->i16[4];
                v1444 = vzip1q_s8(v1443, v19);
                v1445 = vzip1q_s8(v1329, v19);
                v1446 = v2680;
                if (v2680 <= -16)
                {
                  v1446 = -16;
                }

                if (v1446 >= v2681)
                {
                  v1447 = v2681;
                }

                else
                {
                  v1447 = v1446;
                }

                v1448 = v1074 + v85 + v1447;
                v1449 = v1074 + v1447 + 2 * v85;
                do
                {
                  _X16 = v1449 + v1075;
                  __asm { PRFM            #0, [X16] }

                  v1452 = vmlaq_s16(vmulq_s16(v1438, v1444), v1436, v1445);
                  v1444.i64[0] = *(v1448 + v1075);
                  v1445 = vzip1q_s8(v1444, v19);
                  v1453 = vqtbl1q_s8(v1444, xmmword_2773B3E00);
                  v1453.i16[3] = *(v1448 + v1075 + 8);
                  v1444 = vzip1q_s8(v1453, v19);
                  *(&v2772 + v1433) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1452, v1440, v1445), v1077, v1444), v21), 6uLL);
                  v1433 += 32;
                  v1448 += v85;
                  v1449 += v85;
                }

                while (v1433 != 128);
                v1454 = 0;
                _X10 = &v2688->i8[v85 + 8];
                __asm { PRFM            #0, [X10] }

                v1445.i64[0] = v2688->i64[1];
                v1457 = vqtbl1q_s8(v1445, xmmword_2773B3E00);
                v1457.i16[3] = v2688[1].i16[0];
                v1458 = vzip1q_s8(v1457, v19);
                v1459 = vzip1q_s8(v1445, v19);
                if (v1446 >= v2681)
                {
                  v1460 = v2681;
                }

                else
                {
                  v1460 = v1446;
                }

                v1461 = v1074 + v85 + v1460;
                v1462 = v1074 + 2 * v85 + v1460 + 8;
                result = v2687;
                do
                {
                  _X12 = v1462 + v1075;
                  __asm { PRFM            #0, [X12] }

                  v1465 = vmlaq_s16(vmulq_s16(v1438, v1458), v1436, v1459);
                  v1458.i64[0] = *(v1461 + v1075 + 8);
                  v1459 = vzip1q_s8(v1458, v19);
                  v1466 = vqtbl1q_s8(v1458, xmmword_2773B3E00);
                  v1466.i16[3] = *(v1461 + v1075 + 16);
                  v1458 = vzip1q_s8(v1466, v19);
                  *(&v2773 + v1454) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1465, v1440, v1459), v1077, v1458), v21), 6uLL);
                  v1454 += 32;
                  v1461 += v85;
                  v1462 += v85;
                }

                while (v1454 != 128);
                goto LABEL_695;
              }

              __asm { PRFM            #0, [X4] }

              v1402 = 5;
              v1403 = v2771;
              do
              {
                v1404 = _X4;
                _X4 = (_X4 + v85);
                __asm { PRFM            #0, [X4] }

                v1406 = *v1404;
                v1403[3] = vzip2q_s8(*v1404, v19);
                v1403 += 2;
                v1407 = v19.i64[0];
                vst2_s8(v1403->i8, v1406);
                --v1402;
              }

              while (v1402 > 2);
              v1408 = *_X4;
              v1409 = vzip2q_s8(*_X4, v19);
              v1410 = v1403[2].i8;
              v1411 = v19.i64[0];
              vst2_s8(v1410, v1408);
LABEL_682:
              result = v2687;
              v1403[3] = v1409;
LABEL_695:
              v1467 = 1;
              do
              {
                v1468 = v1467;
                a8 = v1072[1];
                a9 = v1072[2];
                a10 = v1072[3];
                v1469 = vrhaddq_u16(v1072[-16], *v1072);
                v1470 = vrhaddq_u16(v1072[-15], a8);
                v1471 = vrhaddq_u16(v1072[-14], a9);
                v1472 = vrhaddq_u16(v1072[-13], a10);
                if (v12)
                {
                  v1473 = *v74;
                  a8 = *(v74 + 16);
                  a9 = *(v74 + 32);
                  a10 = *(v74 + 48);
                  v74 += 64;
                  v1469 = vaddq_s16(v1473, v1469);
                  v1470 = vaddq_s16(a8, v1470);
                  v1471 = vaddq_s16(a9, v1471);
                  v1472 = vaddq_s16(a10, v1472);
                }

                v1467 = 0;
                v1072 += 4;
                *v72->i8 = vqmovun_high_s16(vqmovun_s16(v1469), v1470);
                *&v72->i8[v1070] = vqmovun_high_s16(vqmovun_s16(v1471), v1472);
                v72 = (v72 + v2677);
              }

              while ((v1468 & 1) != 0);
              goto LABEL_1022;
            }

            _X8 = &v2688->i8[v85];
            __asm { PRFM            #0, [X8] }

            v1414 = *v2688;
            v1415 = v2680;
            if (v2680 <= -16)
            {
              v1415 = -16;
            }

            if (v1415 >= v2681)
            {
              v1415 = v2681;
            }

            v1416 = (v1074 + v1075 + v1415);
            v1417 = 5;
            v1403 = v2771;
            do
            {
              _X12 = &v1416->i8[2 * v85];
              v1416 = (v1416 + v85);
              __asm { PRFM            #0, [X12] }

              v1420 = *v1416;
              v1421 = vrhaddq_u8(v1414, *v1416);
              v1422 = v19.i64[0];
              v1403[3] = vzip2q_s8(v1421, v19);
              v1403 += 2;
              vst2_s8(v1403->i8, v1421);
              --v1417;
              v1414 = v1420;
            }

            while (v1417 > 2);
            v1423 = vrhaddq_u8(v1420, *(v1416 + v85));
          }

          v1431 = v1403[2].i8;
          v1432 = v19.i64[0];
          vst2_s8(v1431, v1423);
          v1409 = vzip2q_s8(v1423, v19);
          goto LABEL_682;
        }

        __asm { PRFM            #0, [X24] }

        v1338 = 5;
        v1339 = v2766;
        do
        {
          v1340 = _X24;
          _X24 = (_X24 + v75);
          __asm { PRFM            #0, [X24] }

          v1342 = *v1340;
          v1339[3] = vzip2q_s8(*v1340, v19);
          v1339 += 2;
          v1343 = v19.i64[0];
          vst2_s8(v1339->i8, v1342);
          --v1338;
        }

        while (v1338 > 2);
        v1344 = *_X24;
        v1345 = vzip2q_s8(*_X24, v19);
        v1346 = v1339[2].i8;
        v1347 = v19.i64[0];
        vst2_s8(v1346, v1344);
LABEL_652:
        v1339[3] = v1345;
        goto LABEL_665;
      }

      _X8 = &_X24->i8[v75];
      __asm { PRFM            #0, [X8] }

      v1350 = *_X24;
      v1351 = v2678;
      if (v2678 <= -16)
      {
        v1351 = -16;
      }

      if (v1351 >= v2679)
      {
        v1351 = v2679;
      }

      v1352 = (v2684 + v1076 + v1351);
      v1353 = 5;
      v1339 = v2766;
      do
      {
        _X12 = &v1352->i8[2 * v75];
        v1352 = (v1352 + v75);
        __asm { PRFM            #0, [X12] }

        v1356 = *v1352;
        v1357 = vrhaddq_u8(v1350, *v1352);
        v1358 = v19.i64[0];
        v1339[3] = vzip2q_s8(v1357, v19);
        v1339 += 2;
        vst2_s8(v1339->i8, v1357);
        --v1353;
        v1350 = v1356;
      }

      while (v1353 > 2);
      v1359 = vrhaddq_u8(v1356, *(v1352 + v75));
    }

    v1367 = v1339[2].i8;
    v1368 = v19.i64[0];
    vst2_s8(v1367, v1359);
    v1345 = vzip2q_s8(v1359, v19);
    goto LABEL_652;
  }

  return result;
}

void sub_2772E17FC(uint64_t a1, __n128 *a2, double a3, double a4, double a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  v11 = a2;
  v2837 = *MEMORY[0x277D85DE8];
  v12 = a2[4].n128_i64[1];
  v13 = *(v12 + 136);
  v14 = *(v12 + 152);
  if (*v12)
  {
    v15 = 5;
  }

  else
  {
    v15 = 4;
  }

  if (*v12)
  {
    v16 = 4;
  }

  else
  {
    v16 = 3;
  }

  if (a2[1].n128_u8[5])
  {
    v17 = *(v12 + 152);
  }

  else
  {
    v17 = 0;
  }

  if (a2[1].n128_u8[5])
  {
    v18 = *(v12 + 136);
  }

  else
  {
    v18 = 0;
  }

  if (*(a1 + 816))
  {
    if (*(a1 + 832))
    {
      v19 = 0;
    }

    else
    {
      v19 = a2 + 7;
    }
  }

  else
  {
    v19 = 0;
  }

  if (*(a1 + 817))
  {
    if (*(a1 + 832))
    {
      v20 = 0;
    }

    else
    {
      v20 = a2 + 39;
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = *(a1 + 1104);
  if (*(a1 + 1104))
  {
    v22 = 0;
    v23 = (16 * *(a1 + 824));
    v24 = *(a1 + 828);
    v2736 = 16 * *(a1 + 824);
    v2739 = (*(v12 + 40) + v23 + v17 + ((v24 << v16) * v14));
    v2740 = (*(v12 + 32) + v23 + v18 + ((v24 << v15) * v13));
    v2753 = a1 + 848;
    v2738 = 16 * v24;
    v2724 = 2 * v14;
    v2725 = 2 * v13;
    v2731 = 2 * v13;
    v2705 = 6 * v13;
    v2729 = 4 * v13;
    v2730 = 2 * v14;
    v2699 = 8 * v13;
    v2723 = 4 * v14;
    v2809 = a2[4].n128_u64[0];
    v2700 = 6 * v14;
    v2704 = (16 * v24) >> 1;
    v25 = 0uLL;
    v26.i64[0] = 0x10001000100010;
    v26.i64[1] = 0x10001000100010;
    v27.i64[0] = 0x20002000200020;
    v27.i64[1] = 0x20002000200020;
    v2697 = 8 * v14;
    v2757 = v20;
    v2737 = *(a1 + 1104);
    v2752 = v19;
    while (1)
    {
      v28 = (v2753 + 16 * v22);
      v29 = *(v28 + 15);
      v30 = *(a1 + 858);
      if (v30 >= 0x103)
      {
        v30 = 259;
      }

      v31 = &word_280A6AB60[40 * v30];
      v32 = v31[v22 + 24];
      v33 = v32 >> 8;
      v34 = *(v31 + v22 + 32);
      v35 = byte_2773B3BA0[v34];
      v36 = byte_2773B3BB0[v34];
      v2810 = v22;
      if (v29 == 6)
      {
        break;
      }

      v40 = (v29 - 4);
      v41 = *(v2809[v40] + 8 * *(v28 + v40 + 8));
      if (v11[1].n128_u8[4])
      {
        v42 = *(v41 + 37);
        if (v11[1].n128_u8[5])
        {
          v43 = 2 * (v42 == 0);
        }

        else if (*(v41 + 37))
        {
          v43 = -2;
        }

        else
        {
          v43 = 0;
        }
      }

      else
      {
        v43 = 0;
        v42 = *(v41 + 37);
      }

      v52 = *(v41 + 64);
      v51 = *(v41 + 72);
      v53 = *(v41 + 168);
      if (v42)
      {
        v54 = *(v41 + 184);
        v52 += v53;
        v51 += v54;
      }

      else
      {
        LODWORD(v54) = *(v41 + 184);
      }

      v55 = &v28[2 * v40];
      v56 = *v55;
      v57 = v55[1];
      v58 = v57 & 3 | (4 * (v56 & 3u));
      v59 = v56 & 7;
      v60 = (v43 + v55[1]);
      v61 = (v43 + *(v55 + 2)) & 7;
      v62 = v61 | (16 * v59);
      v63 = 2 * v53;
      v64 = 2 * v54;
      v65 = *(v41 + 164);
      v66 = *(v41 + 180);
      v67 = *(v41 + 132);
      v68 = *(v41 + 148);
      if (v21 == 1)
      {
        v69 = v2736 + (v56 >> 2);
        v70 = v2738 + (v57 >> 2);
        if (v69 <= -18)
        {
          v69 = -18;
        }

        if (v70 <= -18)
        {
          v70 = -18;
        }

        if (v69 >= v65 + 1)
        {
          v71 = v65 + 1;
        }

        else
        {
          v71 = v69;
        }

        if (v70 >= v67 + 1)
        {
          v72 = v67 + 1;
        }

        else
        {
          v72 = v70;
        }

        v73 = v72 * v63;
        v74 = (v52 + v73 + v71);
        v75 = ((v56 >> 2) & 0xFFFFFFFE) + v2736;
        v76 = v2704 + (v60 >> 3);
        if (v75 <= -16)
        {
          v75 = -16;
        }

        if (v76 <= -8)
        {
          v76 = -8;
        }

        if (v75 >= v66 - 2)
        {
          v75 = v66 - 2;
        }

        if (v76 >= v68)
        {
          v76 = v68 - 1;
        }

        v77 = v75;
        v78 = v76 * v64;
        v79 = v78;
        _X25 = (v51 + v75 + v78);
        switch(v57 & 3 | (4 * (v56 & 3)))
        {
          case 1:
            v415 = 0;
            v416 = 4 * v53;
            v417 = (v74 + v63 - v416);
            v418 = (v417 + v63);
            v419 = (v418 + v63);
            v420 = vzip1q_s8(*(v419 + v63), v25);
            v421 = vzip1q_s8(*v419, v25);
            v422 = vzip1q_s8(*v418, v25);
            v423 = vzip1q_s8(*v417, v25);
            v424 = vzip1q_s8(*(v74 - v416), v25);
            v425 = 5 * v63;
            v426 = (v52 + v425 + v71 + v73 - v416);
            do
            {
              v427 = v423;
              v423 = v422;
              v422 = v421;
              v421 = v420;
              v420 = vzip1q_s8(*v426, v25);
              v428 = vsubq_s16(vshlq_n_s16(vaddq_s16(v423, v422), 2uLL), vaddq_s16(v427, v421));
              *(&v2811 + v415) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v424, v428), vshlq_n_s16(v428, 2uLL)), vaddq_s16(v420, v26)), 5uLL))), v423);
              v415 += 32;
              v426 = (v426 + v63);
              v424 = v427;
            }

            while (v415 != 512);
            v429 = 0;
            v430 = (v74 + v63 - v416 + 8);
            v431 = (v430 + v63 + v63);
            v432 = vzip1q_s8(*(v431 + v63), v25);
            v433 = vzip1q_s8(*v431, v25);
            v434 = vzip1q_s8(*(v430 + v63), v25);
            v435 = vzip1q_s8(*v430, v25);
            a7 = vzip1q_s8(*(v74 - v416 + 8), v25);
            v436 = (v52 + v425 + v71 + v73 - v416 + 8);
            v302 = v2725;
            v81 = v2723;
            do
            {
              a8 = v435;
              v435 = v434;
              v434 = v433;
              v433 = v432;
              v432 = vzip1q_s8(*v436, v25);
              v437 = vsubq_s16(vshlq_n_s16(vaddq_s16(v435, v434), 2uLL), vaddq_s16(a8, v433));
              a10 = vshlq_n_s16(v437, 2uLL);
              v438 = vaddq_s16(vaddq_s16(a7, v437), a10);
              a9 = vaddq_s16(v432, v26);
              *(&v2812 + v429) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(v438, a9), 5uLL))), v435);
              v429 += 32;
              v436 = (v436 + v63);
              a7 = a8;
            }

            while (v429 != 512);
            goto LABEL_336;
          case 2:
            v361 = 0;
            v362 = 4 * v53;
            v363 = (v74 + v63 - v362);
            v364 = (v363 + v63);
            v365 = (v364 + v63);
            v366 = vzip1q_s8(*(v365 + v63), v25);
            v367 = vzip1q_s8(*v365, v25);
            v368 = vzip1q_s8(*v364, v25);
            v369 = vzip1q_s8(*v363, v25);
            v370 = vzip1q_s8(*(v74 - v362), v25);
            v371 = 5 * v63;
            v372 = (v52 + v371 + v71 + v73 - v362);
            do
            {
              v373 = v369;
              v369 = v368;
              v368 = v367;
              v367 = v366;
              v374 = &v2811.i8[v361];
              v366 = vzip1q_s8(*v372, v25);
              v375 = vsubq_s16(vshlq_n_s16(vaddq_s16(v369, v368), 2uLL), vaddq_s16(v373, v367));
              *v375.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v370, v375), vshlq_n_s16(v375, 2uLL)), vaddq_s16(v366, v26)), 5uLL));
              v376 = v25.i64[0];
              vst2_s8(v374, v375);
              v361 += 32;
              v372 = (v372 + v63);
              v370 = v373;
            }

            while (v361 != 512);
            v377 = 0;
            v378 = (v74 + v63 - v362 + 8);
            v379 = (v378 + v63 + v63);
            v380 = vzip1q_s8(*(v379 + v63), v25);
            v381 = vzip1q_s8(*v379, v25);
            v382 = vzip1q_s8(*(v378 + v63), v25);
            v383 = vzip1q_s8(*v378, v25);
            a7 = vzip1q_s8(*(v74 - v362 + 8), v25);
            v384 = (v52 + v371 + v71 + v73 - v362 + 8);
            v302 = v2725;
            v81 = v2723;
            do
            {
              a8 = v383;
              v383 = v382;
              v382 = v381;
              v381 = v380;
              v385 = &v2812.i8[v377];
              v380 = vzip1q_s8(*v384, v25);
              v386 = vsubq_s16(vshlq_n_s16(vaddq_s16(v383, v382), 2uLL), vaddq_s16(a8, v381));
              a10 = vshlq_n_s16(v386, 2uLL);
              v387 = vaddq_s16(vaddq_s16(a7, v386), a10);
              a9 = vaddq_s16(v380, v26);
              a9.n128_u64[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(v387, a9), 5uLL));
              a10.n128_u64[0] = v25.i64[0];
              vst2_s8(v385, a9);
              v377 += 32;
              v384 = (v384 + v63);
              a7 = a8;
            }

            while (v377 != 512);
            goto LABEL_336;
          case 3:
            v391 = 0;
            v392 = 4 * v53;
            v393 = (v74 + v63 - v392);
            v394 = (v393 + v63);
            v395 = (v394 + v63);
            v396 = vzip1q_s8(*(v395 + v63), v25);
            v397 = vzip1q_s8(*v395, v25);
            v398 = vzip1q_s8(*v394, v25);
            v399 = vzip1q_s8(*v393, v25);
            v400 = vzip1q_s8(*(v74 - v392), v25);
            v401 = 5 * v63;
            v402 = (v52 + v401 + v71 + v73 - v392);
            do
            {
              v403 = v399;
              v399 = v398;
              v398 = v397;
              v397 = v396;
              v396 = vzip1q_s8(*v402, v25);
              v404 = vsubq_s16(vshlq_n_s16(vaddq_s16(v399, v398), 2uLL), vaddq_s16(v403, v397));
              *(&v2811 + v391) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v400, v404), vshlq_n_s16(v404, 2uLL)), vaddq_s16(v396, v26)), 5uLL))), v398);
              v391 += 32;
              v402 = (v402 + v63);
              v400 = v403;
            }

            while (v391 != 512);
            v405 = 0;
            v406 = (v74 + v63 - v392 + 8);
            v407 = (v406 + v63 + v63);
            v408 = vzip1q_s8(*(v407 + v63), v25);
            v409 = vzip1q_s8(*v407, v25);
            v410 = vzip1q_s8(*(v406 + v63), v25);
            v411 = vzip1q_s8(*v406, v25);
            a7 = vzip1q_s8(*(v74 - v392 + 8), v25);
            v412 = (v52 + v401 + v71 + v73 - v392 + 8);
            v302 = v2725;
            v81 = v2723;
            do
            {
              a8 = v411;
              v411 = v410;
              v410 = v409;
              v409 = v408;
              v408 = vzip1q_s8(*v412, v25);
              v413 = vsubq_s16(vshlq_n_s16(vaddq_s16(v411, v410), 2uLL), vaddq_s16(a8, v409));
              a10 = vshlq_n_s16(v413, 2uLL);
              v414 = vaddq_s16(vaddq_s16(a7, v413), a10);
              a9 = vaddq_s16(v408, v26);
              *(&v2812 + v405) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(v414, a9), 5uLL))), v410);
              v405 += 32;
              v412 = (v412 + v63);
              a7 = a8;
            }

            while (v405 != 512);
            goto LABEL_336;
          case 4:
            v295 = 0;
            v296 = (v74 - 2);
            do
            {
              v297 = *v296;
              v296 = (v296 + v63);
              v298 = vzip1q_s8(vextq_s8(v297, v297, 2uLL), v25);
              v299 = vsubq_s16(vshlq_n_s16(vaddq_s16(v298, vzip1q_s8(vextq_s8(v297, v297, 3uLL), v25)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v297, v297, 1uLL), v25), vzip1q_s8(vextq_s8(v297, v297, 4uLL), v25)));
              *(&v2811 + v295) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v299, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v297, v25), vzip1q_s8(vextq_s8(v297, v297, 5uLL), v25)), v299)), v26), 5uLL))), v298);
              v295 += 32;
            }

            while (v295 != 512);
            v300 = 0;
            v301 = (v74 + 6);
            v302 = v2725;
            v81 = v2723;
            do
            {
              v303 = *v301;
              v301 = (v301 + v63);
              v304 = vzip1q_s8(vextq_s8(v303, v303, 2uLL), v25);
              v305 = vsubq_s16(vshlq_n_s16(vaddq_s16(v304, vzip1q_s8(vextq_s8(v303, v303, 3uLL), v25)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v303, v303, 1uLL), v25), vzip1q_s8(vextq_s8(v303, v303, 4uLL), v25)));
              a7 = vzip1q_s8(v303, v25);
              *(&v2812 + v300) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v305, 2uLL), vaddq_s16(vaddq_s16(a7, vzip1q_s8(vextq_s8(v303, v303, 5uLL), v25)), v305)), v26), 5uLL))), v304);
              v300 += 32;
            }

            while (v300 != 512);
            goto LABEL_336;
          case 5:
            v388 = v52 + v73 + v71;
            v389 = 2 * v53;
            v390 = 2;
            goto LABEL_328;
          case 6:
            v2788 = v10;
            v2802 = v25;
            v2780 = v56 & 7;
            v291 = v60 & 7 | (16 * v2780);
            v292 = v75;
            v293 = v78;
            v294 = v51;
            sub_27729B1B0(v2811.i8, 0x20u, v52 + v73 + v71, 2 * v53);
            sub_27729B1B0(v2812.i8, 0x20u, v74 + 8, v63);
            goto LABEL_334;
          case 7:
            v388 = v52 + v73 + v71;
            v389 = 2 * v53;
            v390 = 3;
LABEL_328:
            v439 = 2;
            goto LABEL_331;
          case 8:
            v514 = 0;
            v515 = (v74 - 2);
            do
            {
              v516 = &v2811.i8[v514];
              v517 = *v515;
              v515 = (v515 + v63);
              v518 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v517, v517, 2uLL), v25), vzip1q_s8(vextq_s8(v517, v517, 3uLL), v25)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v517, v517, 1uLL), v25), vzip1q_s8(vextq_s8(v517, v517, 4uLL), v25)));
              *v517.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v518, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v517, v25), vzip1q_s8(vextq_s8(v517, v517, 5uLL), v25)), v518)), v26), 5uLL));
              v518.i64[0] = v25.i64[0];
              vst2_s8(v516, v517);
              v514 += 32;
            }

            while (v514 != 512);
            v519 = 0;
            v520 = (v74 + 6);
            v302 = v2725;
            v81 = v2723;
            do
            {
              v521 = &v2812.i8[v519];
              v522 = *v520;
              v520 = (v520 + v63);
              v523 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v522, v522, 2uLL), v25), vzip1q_s8(vextq_s8(v522, v522, 3uLL), v25)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v522, v522, 1uLL), v25), vzip1q_s8(vextq_s8(v522, v522, 4uLL), v25)));
              *v522.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v523, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v522, v25), vzip1q_s8(vextq_s8(v522, v522, 5uLL), v25)), v523)), v26), 5uLL));
              v523.i64[0] = v25.i64[0];
              vst2_s8(v521, v522);
              v519 += 32;
            }

            while (v519 != 512);
            goto LABEL_336;
          case 9:
            v2788 = v10;
            v2802 = v25;
            v2780 = v56 & 7;
            v291 = v60 & 7 | (16 * v2780);
            v292 = v75;
            v293 = v78;
            v294 = v51;
            sub_27729B614(v2811.i8, 0x20u, v52 + v73 + v71, 2 * v53, 16);
            sub_27729B614(v2812.i8, 0x20u, v74 + 8, v63, 16);
            goto LABEL_334;
          case 0xA:
            v2788 = v10;
            v2802 = v25;
            v2780 = v56 & 7;
            v291 = v60 & 7 | (16 * v2780);
            v292 = v75;
            v293 = v78;
            v294 = v51;
            sub_27729B7DC(&v2811, 32, v52 + v73 + v71, 2 * v53, 16);
            sub_27729B7DC(&v2812, 32, v74 + 8, v63, 16);
            goto LABEL_334;
          case 0xB:
            v2788 = v10;
            v2802 = v25;
            v2780 = v56 & 7;
            v291 = v60 & 7 | (16 * v2780);
            v292 = v75;
            v293 = v78;
            v294 = v51;
            sub_27729B98C(v2811.i8, 0x20u, v52 + v73 + v71, 2 * v53, 16);
            sub_27729B98C(v2812.i8, 0x20u, v74 + 8, v63, 16);
            goto LABEL_334;
          case 0xC:
            v331 = 0;
            v332 = (v74 - 2);
            do
            {
              v333 = *v332;
              v332 = (v332 + v63);
              v334 = vzip1q_s8(vextq_s8(v333, v333, 3uLL), v25);
              v335 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v333, v333, 2uLL), v25), v334), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v333, v333, 1uLL), v25), vzip1q_s8(vextq_s8(v333, v333, 4uLL), v25)));
              *(&v2811 + v331) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v335, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v333, v25), vzip1q_s8(vextq_s8(v333, v333, 5uLL), v25)), v335)), v26), 5uLL))), v334);
              v331 += 32;
            }

            while (v331 != 512);
            v336 = 0;
            v337 = (v74 + 6);
            v302 = v2725;
            v81 = v2723;
            do
            {
              v338 = *v337;
              v337 = (v337 + v63);
              v339 = vzip1q_s8(vextq_s8(v338, v338, 3uLL), v25);
              v340 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v338, v338, 2uLL), v25), v339), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v338, v338, 1uLL), v25), vzip1q_s8(vextq_s8(v338, v338, 4uLL), v25)));
              a7 = vzip1q_s8(v338, v25);
              *(&v2812 + v336) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v340, 2uLL), vaddq_s16(vaddq_s16(a7, vzip1q_s8(vextq_s8(v338, v338, 5uLL), v25)), v340)), v26), 5uLL))), v339);
              v336 += 32;
            }

            while (v336 != 512);
            goto LABEL_336;
          case 0xD:
            v388 = v52 + v73 + v71;
            v389 = 2 * v53;
            v390 = 2;
            goto LABEL_330;
          case 0xE:
            v2788 = v10;
            v2802 = v25;
            v2780 = v56 & 7;
            v291 = v60 & 7 | (16 * v2780);
            v292 = v75;
            v293 = v78;
            v294 = v51;
            sub_27729BBEC(v2811.i8, 0x20u, v52 + v73 + v71, 2 * v53);
            sub_27729BBEC(v2812.i8, 0x20u, v74 + 8, v63);
LABEL_334:
            v51 = v294;
            v79 = v293;
            v77 = v292;
            v62 = v291;
            v59 = v2780;
            goto LABEL_335;
          case 0xF:
            v388 = v52 + v73 + v71;
            v389 = 2 * v53;
            v390 = 3;
LABEL_330:
            v439 = 3;
LABEL_331:
            v2788 = v10;
            v2802 = v25;
            v440 = v51;
            sub_27729AF04(v2811.i8, v388, v389, 16, v390, v439);
            v51 = v440;
LABEL_335:
            v27.i64[0] = 0x20002000200020;
            v27.i64[1] = 0x20002000200020;
            v26.i64[0] = 0x10001000100010;
            v26.i64[1] = 0x10001000100010;
            v10 = v2788;
            v25 = v2802;
            v20 = v2757;
            v302 = v2725;
            v81 = v2723;
LABEL_336:
            v441 = 0;
            v442 = v2740;
            v443 = v19;
            do
            {
              v445 = *(&v2811 + v441);
              v444 = *(&v2811 + v441 + 16);
              v447 = *(&v2813 + v441);
              v446 = v2814[v441 / 0x10];
              if (v19)
              {
                a7 = *v443;
                a8 = v443[1];
                a9 = v443[2];
                a10 = v443[3];
                v443 += 4;
                v445 = vaddq_s16(a7, v445);
                v444 = vaddq_s16(a8, v444);
                v447 = vaddq_s16(a9, v447);
                v446 = vaddq_s16(a10, v446);
              }

              a6 = vqmovun_high_s16(vqmovun_s16(v445), v444);
              *v442 = a6;
              *(v442 + v302) = vqmovun_high_s16(vqmovun_s16(v447), v446);
              v442 = (v442 + v2729);
              v441 += 64;
            }

            while (v441 != 512);
            break;
          default:
            v81 = v2723;
            if (v19)
            {
              v82 = 0;
              v83 = v2740;
              do
              {
                v84 = *v74;
                v74 = (v74 + v63);
                a6 = vzip1q_s8(v84, v25);
                *v83 = vqmovun_high_s16(vqmovun_s16(vaddq_s16(v19[v82], a6)), vaddq_s16(v19[v82 + 1], vzip2q_s8(v84, v25)));
                v83 = (v83 + v2731);
                v82 += 2;
              }

              while ((v82 * 16) != 512);
            }

            else
            {
              v524 = 16;
              v525 = v2740;
              do
              {
                v526 = *v74;
                v74 = (v74 + v63);
                *v525 = v526;
                v525 = (v525 + v2731);
                --v524;
              }

              while (v524);
            }

            break;
        }

        if (v62)
        {
          v448 = v61 * v59;
          v449 = v61 * v59 - (8 * v59 + 8 * v61) + 64;
          v450 = v25;
          v450.i32[0] = v449 | (v449 << 16);
          a7 = xmmword_2773B3DF0;
          v451 = vqtbl1q_s8(v450, xmmword_2773B3DF0);
          v452 = v25;
          v452.i32[0] = (8 * v59 - v448) | ((8 * v59 - v448) << 16);
          v453 = v25;
          v453.i32[0] = (8 * v61 - v448) | ((8 * v61 - v448) << 16);
          v454 = vqtbl1q_s8(v452, xmmword_2773B3DF0);
          v455 = vqtbl1q_s8(v453, xmmword_2773B3DF0);
          v456 = v25;
          v456.i32[0] = 65537 * v61 * v59;
          v2829 = v451;
          v2830 = v454;
          v457 = vqtbl1q_s8(v456, xmmword_2773B3DF0);
          v2831 = v455;
          v2832 = v457;
          v11 = a2;
          if (v62 == 64)
          {
            __asm { PRFM            #0, [X25] }

            v478 = 9;
            v473 = v2819;
            do
            {
              v479 = _X25;
              _X25 = (_X25 + v64);
              __asm { PRFM            #0, [X25] }

              v481 = vextq_s8(*v479, *v479, 2uLL);
              v481.i16[7] = v479[1].i16[0];
              v482 = vrhaddq_u8(*v479, v481);
              v481.i64[0] = v25.i64[0];
              v473[3] = vzip2q_s8(v482, v25);
              v473 += 2;
              vst2_s8(v473->i8, *(&v481 - 8));
              --v478;
            }

            while (v478 > 2);
            v483 = vextq_s8(*_X25, *_X25, 2uLL);
            v483.i16[7] = _X25[1].i16[0];
            v472 = vrhaddq_u8(*_X25, v483);
            v466 = v473 + 2;
LABEL_353:
            v484 = v25.i64[0];
            vst2_s8(v466->i8, v472);
            v473[3] = vzip2q_s8(v472, v25);
          }

          else
          {
            _X10 = &_X25->i8[v64];
            if (v62 == 4)
            {
              __asm { PRFM            #0, [X10] }

              v464 = *_X25;
              v465 = (v51 + v77 + v79);
              v466 = &v2820;
              for (i = 9; i > 2; --i)
              {
                _X13 = &v465->i8[2 * v64];
                v465 = (v465 + v64);
                __asm { PRFM            #0, [X13] }

                v470 = *v465;
                v471 = vrhaddq_u8(v464, *v465);
                *v466 = vzip1q_s8(v471, v25);
                v466[1] = vzip2q_s8(v471, v25);
                v466 += 2;
                v464 = v470;
              }

              v472 = vrhaddq_u8(v470, *(v465 + v64));
              v473 = v466 - 2;
              goto LABEL_353;
            }

            v485 = 0;
            v2830 = v454;
            v2832 = v457;
            __asm { PRFM            #0, [X10] }

            a8.n128_u64[0] = _X25->i64[0];
            a7 = xmmword_2773B3E00;
            v487 = vqtbl1q_s8(a8, xmmword_2773B3E00);
            v487.i16[3] = _X25->i16[4];
            v488 = vzip1q_s8(v487, v25);
            v489 = vzip1q_s8(a8, v25);
            v490 = (v51 + v77 + v79 + v64 + 8);
            _X13 = v51 + v77 + v79 + 2 * v64;
            do
            {
              __asm { PRFM            #0, [X13] }

              v493 = vmlaq_s16(vmulq_s16(v454, v488), v451, v489);
              v488.i64[0] = *(v490 - 1);
              v489 = vzip1q_s8(v488, v25);
              v494 = vqtbl1q_s8(v488, xmmword_2773B3E00);
              v494.i16[3] = *v490;
              v490 = (v490 + v64);
              v488 = vzip1q_s8(v494, v25);
              *(&v2820 + v485) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v493, v455, v489), v457, v488), v27), 6uLL);
              v485 += 32;
              _X13 += v64;
            }

            while (v485 != 256);
            v495 = 0;
            _X10 = &_X25->i64[1] + v64;
            __asm { PRFM            #0, [X10] }

            v489.i64[0] = _X25->i64[1];
            v498 = vqtbl1q_s8(v489, xmmword_2773B3E00);
            v498.i16[3] = _X25[1].i16[0];
            a9 = vzip1q_s8(v498, v25);
            a8 = vzip1q_s8(v489, v25);
            v499 = v51 + v77 + v79;
            do
            {
              _X11 = v499 + 2 * v64 + 8;
              v499 += v64;
              __asm { PRFM            #0, [X11] }

              v502 = vmlaq_s16(vmulq_s16(v454, a9), v451, a8);
              a9.n128_u64[0] = *(v499 + 8);
              a8 = vzip1q_s8(a9, v25);
              v503 = vqtbl1q_s8(a9, xmmword_2773B3E00);
              v503.i16[3] = *(v499 + 16);
              a9 = vzip1q_s8(v503, v25);
              a10 = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v502, v455, a8), v457, a9), v27), 6uLL);
              *(&v2821 + v495) = a10;
              v495 += 32;
            }

            while (v495 != 256);
          }

          v504 = 0;
          v505 = v2739;
          v506 = v20;
          do
          {
            v508 = *(&v2820 + v504);
            v507 = *(&v2820 + v504 + 16);
            v510 = *(&v2822 + v504);
            v509 = v2823[v504 / 0x10];
            if (v20)
            {
              a7 = *v506;
              a8 = v506[1];
              a9 = v506[2];
              a10 = v506[3];
              v506 += 4;
              v508 = vaddq_s16(a7, v508);
              v507 = vaddq_s16(a8, v507);
              v510 = vaddq_s16(a9, v510);
              v509 = vaddq_s16(a10, v509);
            }

            a6 = vqmovun_high_s16(vqmovun_s16(v508), v507);
            *v505 = a6;
            *(v505 + v2730) = vqmovun_high_s16(vqmovun_s16(v510), v509);
            v505 = (v505 + v81);
            v504 += 64;
          }

          while (v504 != 256);
        }

        else
        {
          v11 = a2;
          if (v20)
          {
            v474 = 0;
            v475 = v2739;
            do
            {
              v476 = *_X25;
              _X25 = (_X25 + v64);
              a6 = vzip1q_s8(v476, v25);
              *v475 = vqmovun_high_s16(vqmovun_s16(vaddq_s16(v20[v474], a6)), vaddq_s16(v20[v474 + 1], vzip2q_s8(v476, v25)));
              v475 = (v475 + v2730);
              v474 += 2;
            }

            while ((v474 * 16) != 256);
          }

          else
          {
            v511 = 8;
            v512 = v2739;
            do
            {
              v513 = *_X25;
              _X25 = (_X25 + v64);
              *v512 = v513;
              v512 = (v512 + v2730);
              --v511;
            }

            while (v511);
          }
        }

        v21 = v2737;
        goto LABEL_363;
      }

      v2777 = v51;
      v85 = v61 * v59;
      v86 = v61 * v59 - (8 * v59 + 8 * v61) + 64;
      v87 = v25;
      v87.i32[0] = v86 | (v86 << 16);
      v88 = v25;
      v88.i32[0] = (8 * v59 - v85) | ((8 * v59 - v85) << 16);
      v89 = xmmword_2773B3DF0;
      v90 = vqtbl1q_s8(v87, xmmword_2773B3DF0);
      v91 = vqtbl1q_s8(v88, xmmword_2773B3DF0);
      v92 = v25;
      v92.i32[0] = (8 * v61 - v85) | ((8 * v61 - v85) << 16);
      v93 = vqtbl1q_s8(v92, xmmword_2773B3DF0);
      v94 = v25;
      v94.i32[0] = 65537 * v61 * v59;
      v95 = vqtbl1q_s8(v94, xmmword_2773B3DF0);
      v2829 = v90;
      v2830 = v91;
      v2831 = v93;
      v2832 = v95;
      switch(v32)
      {
        case 4u:
          v226 = v56 >> 2;
          v227 = v2736 + v35 + (v56 >> 2);
          v228 = v2738 + v36 + (v57 >> 2);
          if (v227 <= -18)
          {
            v227 = -18;
          }

          if (v228 <= -18)
          {
            v228 = -18;
          }

          if (v227 >= v65 + 1)
          {
            v229 = v65 + 1;
          }

          else
          {
            v229 = v227;
          }

          if (v228 >= v67 + 1)
          {
            v230 = v67 + 1;
          }

          else
          {
            v230 = v228;
          }

          v231 = (v52 + v229 + v230 * v63);
          v232 = (v226 & 0xFFFFFFFE) + v2736 + v35;
          v233 = (v60 >> 3) + ((v2738 + v36) >> 1);
          if (v232 <= -16)
          {
            v232 = -16;
          }

          if (v233 <= -8)
          {
            v233 = -8;
          }

          if (v232 >= v66 - 2)
          {
            v232 = v66 - 2;
          }

          v234 = v2777 + v232;
          if (v233 >= v68)
          {
            v233 = v68 - 1;
          }

          v235 = 2 * v54;
          v2779 = v234 + v233 * v64;
          v236 = (v2740 + v35 + (v2725 * v36));
          v237 = (v19[2 * v36].n128_u64 + 2 * v35);
          v238 = (v2739 + v35 + (v36 >> 1) * v2724);
          v2760 = (v20[2 * (v36 >> 1)].n128_u64 + 2 * v35);
          v2784 = v10;
          v2798 = v25;
          if (v33 == 8)
          {
            v239 = &v231[2 * v53];
            switch(v58)
            {
              case 1:
                v2019 = sub_27729F23C(&v2811, v231, 2 * v53, v94, v88, 3.52371676e-294, a6, a7.n128_f64[0], a8, a9, a10);
                v248 = sub_27729F23C(&v2813, v239, v63, v2019, v2020, v2021, v2022, v2023, v2024, v2025, v2026);
                goto LABEL_1090;
              case 2:
                v1721 = sub_27729F394(&v2811, v231, 2 * v53, *v94.i64, v88, xmmword_2773B3DF0, a6.n128_f64[0], a7, a8, a9, a10);
                sub_27729F394(&v2813, v239, v63, v1721, v1722, v1723, v1724, v1725, v1726, v1727, v1728);
                goto LABEL_1090;
              case 3:
                v1847 = sub_27729F4D8(&v2811, v231, 2 * v53, v94, v88, 3.52371676e-294, a6, a7.n128_f64[0], a8, a9, a10);
                v248 = sub_27729F4D8(&v2813, v239, v63, v1847, v1848, v1849, v1850, v1851, v1852, v1853, v1854);
                goto LABEL_1090;
              case 4:
                sub_27729C91C(&v2811, 8u, v231, 2 * v53);
                v248 = sub_27729C91C(&v2813, 8u, v239, v63);
                goto LABEL_1090;
              case 5:
                *v2356.i64 = sub_27729CAF0(&v2811, 8u, v231, 2 * v53, v94, *v88.i64, 3.52371676e-294, a6.n128_f64[0], a7.n128_f64[0], a8, a9, a10);
                sub_27729CAF0(&v2813, 8u, v239, v63, v2356, v2357, v2358, v2359, v2360, v2361, v2362, v2363);
                goto LABEL_1090;
              case 6:
                *v2382.i64 = sub_27729CDD0(&v2811, 8u, v231, 2 * v53, v94, v88, xmmword_2773B3DF0, a6, a7, a8, a9, a10);
                sub_27729CDD0(&v2813, 8u, v239, v63, v2382, v2383, v2384, v2385, v2386, v2387, v2388, v2389);
                goto LABEL_1090;
              case 7:
                v1977 = sub_27729D274(&v2811, 8u, v231, 2 * v53, *v94.i64, *v88.i64, 3.52371676e-294, a6.n128_f64[0], a7.n128_f64[0], a8.n128_f64[0], a9, a10);
                sub_27729D274(&v2813, 8u, v239, v63, v1977, v1978, v1979, v1980, v1981, v1982, v1983, v1984);
                goto LABEL_1090;
              case 8:
                sub_27729D550(&v2811, 8u, v231, 2 * v53);
                v248 = sub_27729D550(&v2813, 8u, v239, v63);
                goto LABEL_1090;
              case 9:
                sub_27729D714(&v2811, 8u, v231, 2 * v53);
                sub_27729D714(&v2813, 8u, v239, v63);
                goto LABEL_1090;
              case 10:
                *v2392.i64 = sub_27729F62C(&v2811, v231, 2 * v53, v94, v88, xmmword_2773B3DF0, a6, a7, a8, a9, a10);
                sub_27729F62C(&v2813, v239, v63, v2392, v2393, v2394, v2395, v2396, v2397, v2398, v2399);
                goto LABEL_1090;
              case 11:
                sub_27729DE6C(&v2811, 8u, v231, 2 * v53);
                sub_27729DE6C(&v2813, 8u, v239, v63);
                goto LABEL_1090;
              case 12:
                sub_27729E5C4(&v2811, 8u, v231, 2 * v53);
                v248 = sub_27729E5C4(&v2813, 8u, v239, v63);
                goto LABEL_1090;
              case 13:
                *v2374.i64 = sub_27729E798(&v2811, 8u, v231, 2 * v53, v94, *v88.i64, 3.52371676e-294, a6.n128_f64[0], a7.n128_f64[0], a8, a9, a10);
                sub_27729E798(&v2813, 8u, v239, v63, v2374, v2375, v2376, v2377, v2378, v2379, v2380, v2381);
                goto LABEL_1090;
              case 14:
                *v1577.i64 = sub_27729EA7C(&v2811, 8u, v231, 2 * v53, v94, v88, xmmword_2773B3DF0, a6, a7, a8, a9, a10);
                sub_27729EA7C(&v2813, 8u, v239, v63, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584);
                goto LABEL_1090;
              case 15:
                v1825 = sub_27729EF20(&v2811, 8u, v231, 2 * v53, *v94.i64, *v88.i64, 3.52371676e-294, a6.n128_f64[0], a7.n128_f64[0], a8.n128_f64[0], a9, a10);
                sub_27729EF20(&v2813, 8u, v239, v63, v1825, v1826, v1827, v1828, v1829, v1830, v1831, v1832);
LABEL_1090:
                v235 = 2 * v54;
                break;
              default:
                v240 = v53;
                v241 = 6 * v53;
                v94.i32[0] = *(v231 + v63);
                v88.i32[0] = v231[v240];
                v89.i32[0] = *v231;
                a6.n128_u32[0] = *(v231 + v241);
                v242.i64[0] = vzip1q_s8(v89, v25).u64[0];
                v243 = vzip1q_s8(v94, v25);
                v244.i64[0] = vzip1q_s8(v88, v25).u64[0];
                v245 = vzip1q_s8(a6, v25);
                v242.i64[1] = v243.i64[0];
                v244.i64[1] = v245.i64[0];
                v2811 = v242;
                v2812 = v244;
                v243.i32[0] = *v239;
                v244.i32[0] = *(v239 + v63);
                v242.i32[0] = v239[v240];
                v245.i32[0] = *(v239 + v241);
                v248.i64[0] = vzip1q_s8(v243, v25).u64[0];
                v246 = vzip1q_s8(v244, v25);
                v249.i64[0] = vzip1q_s8(v242, v25).u64[0];
                v247 = vzip1q_s8(v245, v25);
                v248.i64[1] = v246.i64[0];
                v249.i64[1] = v247.i64[0];
                v2813 = v248;
                v2814[0] = v249;
                break;
            }

            v2400 = 1;
            v2401 = &v2811;
            v11 = a2;
            do
            {
              v2402 = v2400;
              v248.i64[0] = v2401->i64[0];
              v246.i64[0] = v2401->i64[1];
              v249.i64[0] = v2401[1].i64[0];
              v247.i64[0] = v2401[1].i64[1];
              if (v19)
              {
                a7.n128_u64[0] = *v237;
                a8.n128_u64[0] = v237[4];
                a9.n128_u64[0] = v237[8];
                a10.n128_u64[0] = v237[12];
                v237 += 16;
                v248 = vaddq_s16(a7, v248);
                v246 = vaddq_s16(a8, v246);
                v249 = vaddq_s16(a9, v249);
                v247 = vaddq_s16(a10, v247);
              }

              v2400 = 0;
              v2403 = COERCE_DOUBLE(vqmovun_s16(v248));
              v2404 = COERCE_DOUBLE(vqmovun_s16(v246));
              v2405 = COERCE_DOUBLE(vqmovun_s16(v249));
              v2406 = COERCE_DOUBLE(vqmovun_s16(v247));
              v236->n128_u32[0] = LODWORD(v2403);
              *(v236->n128_u32 + v2731) = LODWORD(v2404);
              v236->n128_u32[v2729 / 4] = LODWORD(v2405);
              *(v236->n128_u32 + v2705) = LODWORD(v2406);
              v236 = (v236 + v2699);
              v2401 += 2;
            }

            while ((v2402 & 1) != 0);
            v2407 = v235;
            v2408 = sub_277290798(&v2820, v2779, v235, v59, v61, v2403, v2404, v2405, v2406, a7, a8);
            sub_277290798(&v2821, v2779 + (4 * v54), v2407, v59, v61, v2408, v2409, v2410, v2411, v2412, v2413);
            a6.n128_u64[0] = v2820.u64[1];
            v2414.i64[0] = v2820.i64[0];
            v2416.i64[0] = v2821.n128_i64[1];
            v2415.i64[0] = v2821.n128_u64[0];
            v20 = v2757;
            if (v2757)
            {
              a7.n128_u64[0] = *v2760;
              a8.n128_u64[0] = v2760[4];
              a9.n128_u64[0] = v2760[8];
              a10.n128_u64[0] = v2760[12];
              v2414 = vaddq_s16(a7, v2414);
              a6 = vaddq_s16(a8, a6);
              v2415 = vaddq_s16(a9, v2415);
              v2416 = vaddq_s16(a10, v2416);
            }

            v21 = v2737;
            v26.i64[0] = 0x10001000100010;
            v26.i64[1] = 0x10001000100010;
            v27.i64[0] = 0x20002000200020;
            v27.i64[1] = 0x20002000200020;
            a6.n128_u64[0] = vqmovun_s16(a6);
            v238->n128_u32[0] = vqmovun_s16(v2414).u32[0];
            *(v238->n128_u32 + v2724) = a6.n128_u32[0];
            v238->n128_u32[v2723 / 4] = vqmovun_s16(v2415).u32[0];
            *(v238->n128_u32 + v2700) = vqmovun_s16(v2416).u32[0];
            v10 = v2784;
            v25 = v2798;
LABEL_363:
            if (v21 == 1)
            {
              return;
            }

            break;
          }

          switch(v58)
          {
            case 1:
              v270 = sub_27729F23C(&v2811, v231, 2 * v53, v94, v88, 3.52371676e-294, a6, a7.n128_f64[0], a8, a9, a10);
              goto LABEL_1099;
            case 2:
              sub_27729F394(&v2811, v231, 2 * v53, *v94.i64, v88, xmmword_2773B3DF0, a6.n128_f64[0], a7, a8, a9, a10);
              goto LABEL_1099;
            case 3:
              v270 = sub_27729F4D8(&v2811, v231, 2 * v53, v94, v88, 3.52371676e-294, a6, a7.n128_f64[0], a8, a9, a10);
              goto LABEL_1099;
            case 4:
              v270 = sub_27729C91C(&v2811, 8u, v231, 2 * v53);
              goto LABEL_1099;
            case 5:
              sub_27729CAF0(&v2811, 8u, v231, 2 * v53, v94, *v88.i64, 3.52371676e-294, a6.n128_f64[0], a7.n128_f64[0], a8, a9, a10);
              goto LABEL_1099;
            case 6:
              sub_27729CDD0(&v2811, 8u, v231, 2 * v53, v94, v88, xmmword_2773B3DF0, a6, a7, a8, a9, a10);
              goto LABEL_1099;
            case 7:
              sub_27729D274(&v2811, 8u, v231, 2 * v53, *v94.i64, *v88.i64, 3.52371676e-294, a6.n128_f64[0], a7.n128_f64[0], a8.n128_f64[0], a9, a10);
              goto LABEL_1099;
            case 8:
              v270 = sub_27729D550(&v2811, 8u, v231, 2 * v53);
              goto LABEL_1099;
            case 9:
              sub_27729D714(&v2811, 8u, v231, 2 * v53);
              goto LABEL_1099;
            case 10:
              sub_27729F62C(&v2811, v231, 2 * v53, v94, v88, xmmword_2773B3DF0, a6, a7, a8, a9, a10);
              goto LABEL_1099;
            case 11:
              sub_27729DE6C(&v2811, 8u, v231, 2 * v53);
              goto LABEL_1099;
            case 12:
              v270 = sub_27729E5C4(&v2811, 8u, v231, 2 * v53);
              goto LABEL_1099;
            case 13:
              sub_27729E798(&v2811, 8u, v231, 2 * v53, v94, *v88.i64, 3.52371676e-294, a6.n128_f64[0], a7.n128_f64[0], a8, a9, a10);
              goto LABEL_1099;
            case 14:
              sub_27729EA7C(&v2811, 8u, v231, 2 * v53, v94, v88, xmmword_2773B3DF0, a6, a7, a8, a9, a10);
              goto LABEL_1099;
            case 15:
              sub_27729EF20(&v2811, 8u, v231, 2 * v53, *v94.i64, *v88.i64, 3.52371676e-294, a6.n128_f64[0], a7.n128_f64[0], a8.n128_f64[0], a9, a10);
LABEL_1099:
              v235 = 2 * v54;
              break;
            default:
              v94.i32[0] = *v231;
              v88.i32[0] = *(v231 + v63);
              v89.i32[0] = v231[v53];
              a6.n128_u32[0] = *(v231 + 6 * v53);
              v270.i64[0] = vzip1q_s8(v94, v25).u64[0];
              v268 = vzip1q_s8(v88, v25);
              v271.i64[0] = vzip1q_s8(v89, v25).u64[0];
              v269 = vzip1q_s8(a6, v25);
              v270.i64[1] = v268.i64[0];
              v271.i64[1] = v269.i64[0];
              v2811 = v270;
              v2812 = v271;
              break;
          }

          v269.i64[0] = v2811.i64[1];
          v271.i64[0] = v2811.i64[0];
          v268.i64[0] = v2812.i64[1];
          v270.i64[0] = v2812.i64[0];
          if (v19)
          {
            a7.n128_u64[0] = *v237;
            a8.n128_u64[0] = v237[4];
            a9.n128_u64[0] = v237[8];
            a10.n128_u64[0] = v237[12];
            v271 = vaddq_s16(a7, v271);
            v269 = vaddq_s16(a8, v269);
            v270 = vaddq_s16(a9, v270);
            v268 = vaddq_s16(a10, v268);
          }

          v2417 = COERCE_DOUBLE(vqmovun_s16(v271));
          v2418 = COERCE_DOUBLE(vqmovun_s16(v269));
          v236->n128_u32[0] = LODWORD(v2417);
          *(v236->n128_u32 + v2731) = LODWORD(v2418);
          v2419 = COERCE_DOUBLE(vqmovun_s16(v270));
          v2420 = COERCE_DOUBLE(vqmovun_s16(v268));
          v236->n128_u32[v2729 / 4] = LODWORD(v2419);
          *(v236->n128_u32 + v2705) = LODWORD(v2420);
          sub_277290798(&v2820, v2779, v235, v59, v61, v2419, v2420, v2417, v2418, a7, a8);
          v2422.i64[0] = v2820.i64[1];
          v2423.i64[0] = v2820.i64[0];
          v20 = v2757;
          if (v2757)
          {
            v2421.i64[0] = *v2760;
            a6.n128_u64[0] = v2760[4];
            v2423 = vaddq_s16(v2421, v2423);
            v2422 = vaddq_s16(a6, v2422);
          }

          v21 = v2737;
          v10 = v2784;
          v25 = v2798;
          v26.i64[0] = 0x10001000100010;
          v26.i64[1] = 0x10001000100010;
          v27.i64[0] = 0x20002000200020;
          v27.i64[1] = 0x20002000200020;
          v238->n128_u32[0] = vqmovun_s16(v2423).u32[0];
          *(v238->n128_u32 + v2724) = vqmovun_s16(v2422).u32[0];
          break;
        case 8u:
          v201 = 2 * v54;
          switch(v33)
          {
            case 4u:
              v341 = v56 >> 2;
              v342 = v2736 + v35 + (v56 >> 2);
              v343 = v2738 + v36 + (v57 >> 2);
              if (v342 <= -18)
              {
                v342 = -18;
              }

              if (v343 <= -18)
              {
                v343 = -18;
              }

              if (v342 >= v65 + 1)
              {
                v344 = v65 + 1;
              }

              else
              {
                v344 = v342;
              }

              if (v343 >= v67 + 1)
              {
                v345 = v67 + 1;
              }

              else
              {
                v345 = v343;
              }

              v346 = (v52 + v344 + v345 * v63);
              v347 = (v341 & 0xFFFFFFFE) + v2736 + v35;
              v348 = (v60 >> 3) + ((v2738 + v36) >> 1);
              if (v347 <= -16)
              {
                v347 = -16;
              }

              if (v348 <= -8)
              {
                v348 = -8;
              }

              if (v347 >= v66 - 2)
              {
                v347 = v66 - 2;
              }

              if (v348 >= v68)
              {
                v348 = v68 - 1;
              }

              v349 = (v2777 + v347 + v348 * v64);
              v350 = (v2740 + v35 + (v2725 * v36));
              v351 = (&v19[2 * v36] + 2 * v35);
              v352 = (v2739 + v35 + (v36 >> 1) * v2724);
              v353 = &v20[2 * (v36 >> 1)] + 2 * v35;
              v2790 = v10;
              v2804 = v25;
              switch(v58)
              {
                case 1:
                  sub_27729AC20(&v2811, 0x10u, v346, v63, 4);
                  goto LABEL_1241;
                case 2:
                  sub_27729ACE8(v2811.i8, 0x10u, v346, v63, 4);
                  goto LABEL_1241;
                case 3:
                  sub_27729ADA4(&v2811, 0x10u, v346, v63, 4);
                  goto LABEL_1241;
                case 4:
                  sub_27729C91C(&v2811, 0x10u, v346, v63);
                  sub_27729C91C(&v2811.i64[1], 0x10u, v346->val + 4, v63);
                  goto LABEL_1241;
                case 5:
                  *v2638.i64 = sub_27729CAF0(&v2811, 0x10u, v346, v63, v94, *v88.i64, 3.52371676e-294, a6.n128_f64[0], a7.n128_f64[0], a8, a9, a10);
                  sub_27729CAF0(&v2811.i64[1], 0x10u, v346->val + 4, v63, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645);
                  goto LABEL_1241;
                case 6:
                  *v2654.i64 = sub_27729CDD0(&v2811, 0x10u, v346, v63, v94, v88, xmmword_2773B3DF0, a6, a7, a8, a9, a10);
                  sub_27729CDD0(&v2811.i64[1], 0x10u, v346->val + 4, v63, v2654, v2655, v2656, v2657, v2658, v2659, v2660, v2661);
                  goto LABEL_1241;
                case 7:
                  v2602 = sub_27729D274(&v2811, 0x10u, v346, v63, *v94.i64, *v88.i64, 3.52371676e-294, a6.n128_f64[0], a7.n128_f64[0], a8.n128_f64[0], a9, a10);
                  sub_27729D274(&v2811.i64[1], 0x10u, v346->val + 4, v63, v2602, v2603, v2604, v2605, v2606, v2607, v2608, v2609);
                  goto LABEL_1241;
                case 8:
                  sub_27729D550(&v2811, 0x10u, v346, v63);
                  sub_27729D550(&v2811.i64[1], 0x10u, v346->val + 4, v63);
                  goto LABEL_1241;
                case 9:
                  sub_27729D714(&v2811, 0x10u, v346, v63);
                  sub_27729D714(&v2811.i64[1], 0x10u, v346->val + 4, v63);
                  goto LABEL_1241;
                case 10:
                  sub_27729B7DC(&v2811, 16, v346, v63, 4);
                  goto LABEL_1241;
                case 11:
                  sub_27729DE6C(&v2811, 0x10u, v346, v63);
                  sub_27729DE6C(&v2811.i64[1], 0x10u, v346->val + 4, v63);
                  goto LABEL_1241;
                case 12:
                  sub_27729E5C4(&v2811, 0x10u, v346, v63);
                  sub_27729E5C4(&v2811.i64[1], 0x10u, v346->val + 4, v63);
                  goto LABEL_1241;
                case 13:
                  *v2646.i64 = sub_27729E798(&v2811, 0x10u, v346, v63, v94, *v88.i64, 3.52371676e-294, a6.n128_f64[0], a7.n128_f64[0], a8, a9, a10);
                  sub_27729E798(&v2811.i64[1], 0x10u, v346->val + 4, v63, v2646, v2647, v2648, v2649, v2650, v2651, v2652, v2653);
                  goto LABEL_1241;
                case 14:
                  *v2580.i64 = sub_27729EA7C(&v2811, 0x10u, v346, v63, v94, v88, xmmword_2773B3DF0, a6, a7, a8, a9, a10);
                  sub_27729EA7C(&v2811.i64[1], 0x10u, v346->val + 4, v63, v2580, v2581, v2582, v2583, v2584, v2585, v2586, v2587);
                  goto LABEL_1241;
                case 15:
                  v2591 = sub_27729EF20(&v2811, 0x10u, v346, v63, *v94.i64, *v88.i64, 3.52371676e-294, a6.n128_f64[0], a7.n128_f64[0], a8.n128_f64[0], a9, a10);
                  sub_27729EF20(&v2811.i64[1], 0x10u, v346->val + 4, v63, v2591, v2592, v2593, v2594, v2595, v2596, v2597, v2598);
LABEL_1241:
                  v201 = v64;
                  v355 = v2725;
                  v356 = v2729;
                  v357 = v2705;
                  break;
                default:
                  v354 = 0;
                  v355 = v2725;
                  v356 = v2729;
                  v357 = v2705;
                  do
                  {
                    v358 = &v2811.i8[v354];
                    v359 = *v346;
                    v346 = (v346 + v63);
                    v360 = v25.i64[0];
                    vst2_s8(v358, v359);
                    v354 += 16;
                  }

                  while (v354 != 64);
                  break;
              }

              v2663 = v2811;
              v2664 = v2812;
              v2665 = v2813;
              v2666 = v2814[0];
              if (v19)
              {
                v2663 = vaddq_s16(*v351, v2811);
                v2664 = vaddq_s16(v351[2], v2812);
                v2665 = vaddq_s16(v351[4], v2813);
                v2666 = vaddq_s16(v351[6], v2814[0]);
              }

              v21 = v2737;
              *v350 = vqmovun_s16(v2663);
              *(v350 + v355) = vqmovun_s16(v2664);
              *(v350 + v356) = vqmovun_s16(v2665);
              *(v350 + v357) = vqmovun_s16(v2666);
              sub_2772906A8(&v2820, v349, v201, &v2829);
              v2667 = v2820;
              v2668 = v2821;
              v20 = v2757;
              if (v2757)
              {
                a6 = *(v353 + 32);
                v2667 = vaddq_s16(*v353, v2820);
                v2668 = vaddq_s16(a6, v2821);
              }

              v11 = a2;
              v10 = v2790;
              v25 = v2804;
              v26.i64[0] = 0x10001000100010;
              v26.i64[1] = 0x10001000100010;
              v27.i64[0] = 0x20002000200020;
              v27.i64[1] = 0x20002000200020;
              *v352 = vqmovun_s16(v2667);
              *(v352 + v2724) = vqmovun_s16(v2668);
              goto LABEL_363;
            case 8u:
              v306 = v56 >> 2;
              v307 = v2736 + v35 + (v56 >> 2);
              v308 = v2738 + v36 + (v57 >> 2);
              if (v307 <= -18)
              {
                v307 = -18;
              }

              if (v308 <= -18)
              {
                v308 = -18;
              }

              if (v307 >= v65 + 1)
              {
                v309 = v65 + 1;
              }

              else
              {
                v309 = v307;
              }

              if (v308 >= v67 + 1)
              {
                v310 = v67 + 1;
              }

              else
              {
                v310 = v308;
              }

              v311 = (v52 + v309 + v310 * v63);
              v312 = (v306 & 0xFFFFFFFE) + v2736 + v35;
              v313 = (v60 >> 3) + ((v2738 + v36) >> 1);
              if (v312 <= -16)
              {
                v314 = -16;
              }

              else
              {
                v314 = (v306 & 0xFFFFFFFE) + v2736 + v35;
              }

              if (v313 <= -8)
              {
                v313 = -8;
              }

              v315 = v66 - 2;
              if (v314 >= v66 - 2)
              {
                v314 = v66 - 2;
              }

              v316 = v2777 + v314;
              if (v313 >= v68)
              {
                v313 = v68 - 1;
              }

              v317 = v313 * v64;
              v318 = v316 + v317;
              v319 = (v2740 + v35 + (v2725 * v36));
              v320 = (&v19[2 * v36] + 2 * v35);
              v321 = (v2739 + v35 + (v36 >> 1) * v2724);
              v322 = &v20[2 * (v36 >> 1)] + 2 * v35;
              v2789 = v10;
              v2803 = v25;
              v2761 = v317;
              switch(v58)
              {
                case 1:
                  sub_27729AC20(&v2811, 0x10u, v311, v63, 8);
                  goto LABEL_1217;
                case 2:
                  sub_27729ACE8(v2811.i8, 0x10u, v311, v63, 8);
                  goto LABEL_1217;
                case 3:
                  sub_27729ADA4(&v2811, 0x10u, v311, v63, 8);
                  goto LABEL_1217;
                case 4:
                  sub_27729AE6C(&v2811, 0x10u, v311, v63, 8);
                  goto LABEL_1217;
                case 5:
                  v2588 = v311;
                  v2589 = v63;
                  v2590 = 2;
                  goto LABEL_1212;
                case 6:
                  sub_27729BFC4(v2811.i8, 0x10u, v311, v63);
                  goto LABEL_1217;
                case 7:
                  v2588 = v311;
                  v2589 = v63;
                  v2590 = 3;
LABEL_1212:
                  v2610 = 2;
                  goto LABEL_1216;
                case 8:
                  sub_27729B588(v2811.i8, 0x10u, v311, v63, 8, v94);
                  goto LABEL_1217;
                case 9:
                  sub_27729B614(v2811.i8, 0x10u, v311, v63, 8);
                  goto LABEL_1217;
                case 10:
                  sub_27729B7DC(&v2811, 16, v311, v63, 8);
                  goto LABEL_1217;
                case 11:
                  sub_27729B98C(v2811.i8, 0x10u, v311, v63, 8);
                  goto LABEL_1217;
                case 12:
                  sub_27729BB54(&v2811, 0x10u, v311, v63, 8);
                  goto LABEL_1217;
                case 13:
                  v2588 = v311;
                  v2589 = v63;
                  v2590 = 2;
                  goto LABEL_1215;
                case 14:
                  sub_27729C39C(v2811.i8, 0x10u, v311, v63);
                  goto LABEL_1217;
                case 15:
                  v2588 = v311;
                  v2589 = v63;
                  v2590 = 3;
LABEL_1215:
                  v2610 = 3;
LABEL_1216:
                  sub_27729C774(v2811.i8, v2588, v2589, 8, v2590, v2610);
LABEL_1217:
                  v20 = v2757;
                  v317 = v2761;
                  v201 = v64;
                  v27.i64[0] = 0x20002000200020;
                  v27.i64[1] = 0x20002000200020;
                  v26.i64[0] = 0x10001000100010;
                  v26.i64[1] = 0x10001000100010;
                  v10 = v2789;
                  v25 = v2803;
                  v324 = v2725;
                  v325 = v2729;
                  v326 = v2705;
                  v327 = v2699;
                  break;
                default:
                  v323 = 0;
                  v324 = v2725;
                  v325 = v2729;
                  v326 = v2705;
                  v327 = v2699;
                  do
                  {
                    v328 = &v2811.i8[v323];
                    v329 = *v311;
                    v311 = (v311 + v63);
                    v330 = v25.i64[0];
                    vst2_s8(v328, v329);
                    v323 += 16;
                  }

                  while (v323 != 128);
                  break;
              }

              v2611 = 1;
              v2612 = &v2811;
              do
              {
                v2613 = v2611;
                v2614 = *v2612;
                v2615 = v2612[1];
                v2616 = v2612[2];
                v2617 = v2612[3];
                if (v19)
                {
                  v2618 = *v320;
                  v2619 = v320[2];
                  v2620 = v320[4];
                  v2621 = v320[6];
                  v320 += 8;
                  v2614 = vaddq_s16(v2618, v2614);
                  v2615 = vaddq_s16(v2619, v2615);
                  v2616 = vaddq_s16(v2620, v2616);
                  v2617 = vaddq_s16(v2621, v2617);
                }

                v2611 = 0;
                *v319 = vqmovun_s16(v2614);
                *(v319 + v324) = vqmovun_s16(v2615);
                *(v319 + v325) = vqmovun_s16(v2616);
                *(v319 + v326) = vqmovun_s16(v2617);
                v319 = (v319 + v327);
                v2612 += 4;
              }

              while ((v2613 & 1) != 0);
              v2622 = 0;
              _X9 = v318 + v201;
              __asm { PRFM            #0, [X9] }

              v2615.i64[0] = *v318;
              v2625 = vqtbl1q_s8(v2615, xmmword_2773B3E00);
              v2625.i16[3] = *(v318 + 8);
              a9 = vzip1q_s8(v2625, v25);
              a7 = vzip1q_s8(v2615, v25);
              v2626 = v2829;
              v2627 = v2830;
              v2628 = v2831;
              a8 = v2832;
              v2629 = v312;
              if (v312 <= -16)
              {
                v2629 = -16;
              }

              if (v2629 >= v315)
              {
                v2629 = v315;
              }

              v2630 = v2777 + v317 + v2629;
              do
              {
                _X12 = v2630 + 2 * v201;
                v2630 += v201;
                __asm { PRFM            #0, [X12] }

                v2633 = vmlaq_s16(vmulq_s16(v2627, a9), v2626, a7);
                a9.n128_u64[0] = *v2630;
                a7 = vzip1q_s8(a9, v25);
                v2634 = vqtbl1q_s8(a9, xmmword_2773B3E00);
                v2634.i16[3] = *(v2630 + 8);
                a9 = vzip1q_s8(v2634, v25);
                a10 = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v2633, v2628, a7), a8, a9), v27), 6uLL);
                *(&v2820 + v2622) = a10;
                v2622 += 16;
              }

              while (v2622 != 64);
              v2635 = v2820;
              a6 = v2821;
              v2636 = v2822;
              v2637 = v2823[0];
              v11 = a2;
              v21 = v2737;
              if (v20)
              {
                a7 = *v322;
                a8 = *(v322 + 32);
                a9 = *(v322 + 64);
                a10 = *(v322 + 96);
                v2635 = vaddq_s16(*v322, v2820);
                a6 = vaddq_s16(a8, v2821);
                v2636 = vaddq_s16(a9, v2822);
                v2637 = vaddq_s16(a10, v2823[0]);
              }

              a6.n128_u64[0] = vqmovun_s16(a6);
              *v321 = vqmovun_s16(v2635);
              *(v321 + v2724) = a6.n128_u64[0];
              *(v321 + v2723) = vqmovun_s16(v2636);
              *(v321 + v2700) = vqmovun_s16(v2637);
              goto LABEL_363;
            case 0x10u:
              v202 = v2736 + v35 + (v56 >> 2);
              v203 = v2738 + (v57 >> 2);
              if (v202 <= -18)
              {
                v202 = -18;
              }

              if (v203 <= -18)
              {
                v203 = -18;
              }

              if (v202 >= v65 + 1)
              {
                v204 = v65 + 1;
              }

              else
              {
                v204 = v202;
              }

              if (v203 >= v67 + 1)
              {
                v205 = v67 + 1;
              }

              else
              {
                v205 = v203;
              }

              v206 = (v52 + v204 + v205 * v63);
              v207 = ((v56 >> 2) & 0xFFFFFFFE) + v2736 + v35;
              v208 = v2704 + (v60 >> 3);
              if (v207 <= -16)
              {
                v209 = -16;
              }

              else
              {
                v209 = ((v56 >> 2) & 0xFFFFFFFE) + v2736 + v35;
              }

              if (v208 <= -8)
              {
                v208 = -8;
              }

              v210 = v66 - 2;
              if (v209 >= v66 - 2)
              {
                v209 = v66 - 2;
              }

              if (v208 >= v68)
              {
                v208 = v68 - 1;
              }

              v211 = v208 * v64;
              v212 = v2777 + v209 + v211;
              v213 = v211;
              v214 = (v2740 + v35);
              v215 = (v19 + 2 * v35);
              v216 = (v2739 + v35);
              v217 = (v20 + 2 * v35);
              v2783 = v10;
              v2797 = v25;
              v2759 = v211;
              switch(v58)
              {
                case 1:
                  sub_27729AC20(&v2811, 0x10u, v206, v63, 16);
                  goto LABEL_1250;
                case 2:
                  sub_27729ACE8(v2811.i8, 0x10u, v206, v63, 16);
                  goto LABEL_1250;
                case 3:
                  sub_27729ADA4(&v2811, 0x10u, v206, v63, 16);
                  goto LABEL_1250;
                case 4:
                  sub_27729AE6C(&v2811, 0x10u, v206, v63, 16);
                  goto LABEL_1250;
                case 5:
                  v2599 = v206;
                  v2600 = v63;
                  v2601 = 2;
                  goto LABEL_1238;
                case 6:
                  sub_27729B1B0(v2811.i8, 0x10u, v206, v63);
                  goto LABEL_1250;
                case 7:
                  v2599 = v206;
                  v2600 = v63;
                  v2601 = 3;
LABEL_1238:
                  v2662 = 2;
                  goto LABEL_1249;
                case 8:
                  sub_27729B588(v2811.i8, 0x10u, v206, v63, 16, v94);
                  goto LABEL_1250;
                case 9:
                  sub_27729B614(v2811.i8, 0x10u, v206, v63, 16);
                  goto LABEL_1250;
                case 10:
                  sub_27729B7DC(&v2811, 16, v206, v63, 16);
                  goto LABEL_1250;
                case 11:
                  sub_27729B98C(v2811.i8, 0x10u, v206, v63, 16);
                  goto LABEL_1250;
                case 12:
                  sub_27729BB54(&v2811, 0x10u, v206, v63, 16);
                  goto LABEL_1250;
                case 13:
                  v2599 = v206;
                  v2600 = v63;
                  v2601 = 2;
                  goto LABEL_1248;
                case 14:
                  sub_27729BBEC(v2811.i8, 0x10u, v206, v63);
                  goto LABEL_1250;
                case 15:
                  v2599 = v206;
                  v2600 = v63;
                  v2601 = 3;
LABEL_1248:
                  v2662 = 3;
LABEL_1249:
                  sub_27729C774(v2811.i8, v2599, v2600, 16, v2601, v2662);
LABEL_1250:
                  v20 = v2757;
                  v213 = v2759;
                  v201 = v64;
                  v27.i64[0] = 0x20002000200020;
                  v27.i64[1] = 0x20002000200020;
                  v26.i64[0] = 0x10001000100010;
                  v26.i64[1] = 0x10001000100010;
                  v10 = v2783;
                  v25 = v2797;
                  v219 = v2725;
                  v220 = v2729;
                  v221 = v2705;
                  v222 = v2699;
                  break;
                default:
                  v218 = 0;
                  v219 = v2725;
                  v220 = v2729;
                  v221 = v2705;
                  v222 = v2699;
                  do
                  {
                    v223 = &v2811.i8[v218];
                    v224 = *v206;
                    v206 = (v206 + v63);
                    v225 = v25.i64[0];
                    vst2_s8(v223, v224);
                    v218 += 16;
                  }

                  while (v218 != 256);
                  break;
              }

              v2669 = 0;
              do
              {
                v2670 = *(&v2811 + v2669);
                v2671 = *(&v2811 + v2669 + 16);
                v2673 = *(&v2813 + v2669);
                v2672 = v2814[v2669 / 0x10];
                if (v19)
                {
                  v2674 = *v215;
                  v2675 = v215[2];
                  v2676 = v215[4];
                  v2677 = v215[6];
                  v215 += 8;
                  v2670 = vaddq_s16(v2674, v2670);
                  v2671 = vaddq_s16(v2675, v2671);
                  v2673 = vaddq_s16(v2676, v2673);
                  v2672 = vaddq_s16(v2677, v2672);
                }

                *v214 = vqmovun_s16(v2670);
                *(v214 + v219) = vqmovun_s16(v2671);
                *(v214 + v220) = vqmovun_s16(v2673);
                *(v214 + v221) = vqmovun_s16(v2672);
                v214 = (v214 + v222);
                v2669 += 64;
              }

              while (v2669 != 256);
              v2678 = 0;
              _X9 = v212 + v201;
              __asm { PRFM            #0, [X9] }

              v2670.i64[0] = *v212;
              v2681 = vqtbl1q_s8(v2670, xmmword_2773B3E00);
              v2681.i16[3] = *(v212 + 8);
              a9 = vzip1q_s8(v2681, v25);
              a7 = vzip1q_s8(v2670, v25);
              v2682 = v2829;
              v2683 = v2830;
              v2684 = v2831;
              a8 = v2832;
              v2685 = v207;
              if (v207 <= -16)
              {
                v2685 = -16;
              }

              if (v2685 >= v210)
              {
                v2685 = v210;
              }

              v2686 = v2777 + v213 + v2685;
              do
              {
                _X12 = v2686 + 2 * v201;
                v2686 += v201;
                __asm { PRFM            #0, [X12] }

                v2689 = vmlaq_s16(vmulq_s16(v2683, a9), v2682, a7);
                a9.n128_u64[0] = *v2686;
                a7 = vzip1q_s8(a9, v25);
                v2690 = vqtbl1q_s8(a9, xmmword_2773B3E00);
                v2690.i16[3] = *(v2686 + 8);
                a9 = vzip1q_s8(v2690, v25);
                a10 = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v2689, v2684, a7), a8, a9), v27), 6uLL);
                *(&v2820 + v2678) = a10;
                v2678 += 16;
              }

              while (v2678 != 128);
              v2691 = 1;
              v2692 = &v2820;
              v11 = a2;
              v21 = v2737;
              do
              {
                v2693 = v2691;
                v2694 = *v2692;
                v2695 = v2692[1];
                v2696 = v2692[2];
                a6 = v2692[3];
                if (v20)
                {
                  a7 = *v217;
                  a8 = v217[2];
                  a9 = v217[4];
                  a10 = v217[6];
                  v217 += 8;
                  v2694 = vaddq_s16(a7, v2694);
                  v2695 = vaddq_s16(a8, v2695);
                  v2696 = vaddq_s16(a9, v2696);
                  a6 = vaddq_s16(a10, a6);
                }

                v2691 = 0;
                a6.n128_u64[0] = vqmovun_s16(a6);
                *v216 = vqmovun_s16(v2694);
                *(v216 + v2730) = vqmovun_s16(v2695);
                *(v216 + v2723) = vqmovun_s16(v2696);
                *(v216 + v2700) = a6.n128_u64[0];
                v216 = (v216 + v2697);
                v2692 += 4;
              }

              while ((v2693 & 1) != 0);
              goto LABEL_363;
          }

          break;
        case 0x10u:
          v96 = 2 * v54;
          v97 = v56 >> 2;
          v98 = v2736 + (v56 >> 2);
          if (v33 == 16)
          {
            v99 = v2738 + (v57 >> 2);
            if (v98 <= -18)
            {
              v100 = -18;
            }

            else
            {
              v100 = v2736 + (v56 >> 2);
            }

            if (v99 <= -18)
            {
              v99 = -18;
            }

            if (v100 >= v65 + 1)
            {
              v101 = v65 + 1;
            }

            else
            {
              v101 = v100;
            }

            if (v99 >= v67 + 1)
            {
              v102 = v67 + 1;
            }

            else
            {
              v102 = v99;
            }

            v103 = v102 * v63;
            v104 = (v52 + v103 + v101);
            v105 = (v97 & 0xFFFFFFFE) + v2736;
            v106 = v2704 + (v60 >> 3);
            if (v105 <= -16)
            {
              v105 = -16;
            }

            if (v106 <= -8)
            {
              v106 = -8;
            }

            if (v105 >= v66 - 2)
            {
              v105 = v66 - 2;
            }

            if (v106 >= v68)
            {
              v106 = v68 - 1;
            }

            v107 = v105;
            v108 = v106 * v64;
            _X21 = (v2777 + v105 + v108);
            switch(v57 & 3 | (4 * (v56 & 3)))
            {
              case 1:
                v2061 = 0;
                v2062 = 4 * v53;
                v2063 = (v104 + v63 - v2062);
                v2064 = (v2063 + v63);
                v2065 = (v2064 + v63);
                v2066 = vzip1q_s8(*(v2065 + v63), v25);
                v2067 = vzip1q_s8(*v2065, v25);
                v2068 = vzip1q_s8(*v2064, v25);
                v2069 = vzip1q_s8(*v2063, v25);
                v2070 = vzip1q_s8(*(v104 - v2062), v25);
                v2071 = 5 * v63;
                v2072 = (v52 + v2071 + v101 + v103 - v2062);
                do
                {
                  v2073 = v2069;
                  v2069 = v2068;
                  v2068 = v2067;
                  v2067 = v2066;
                  v2066 = vzip1q_s8(*v2072, v25);
                  v2074 = vsubq_s16(vshlq_n_s16(vaddq_s16(v2069, v2068), 2uLL), vaddq_s16(v2073, v2067));
                  *(&v2811 + v2061) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v2070, v2074), vshlq_n_s16(v2074, 2uLL)), vaddq_s16(v2066, v26)), 5uLL))), v2069);
                  v2061 += 32;
                  v2072 = (v2072 + v63);
                  v2070 = v2073;
                }

                while (v2061 != 512);
                v2075 = 0;
                v2076 = (v104 + v63 - v2062 + 8);
                v2077 = (v2076 + v63 + v63);
                v2078 = vzip1q_s8(*(v2077 + v63), v25);
                v2079 = vzip1q_s8(*v2077, v25);
                v2080 = vzip1q_s8(*(v2076 + v63), v25);
                v2081 = vzip1q_s8(*v2076, v25);
                a7 = vzip1q_s8(*(v104 - v2062 + 8), v25);
                v2082 = (v52 + v2071 + v101 + v103 - v2062 + 8);
                v111 = v2725;
                v112 = v2723;
                do
                {
                  a8 = v2081;
                  v2081 = v2080;
                  v2080 = v2079;
                  v2079 = v2078;
                  v2078 = vzip1q_s8(*v2082, v25);
                  v2083 = vsubq_s16(vshlq_n_s16(vaddq_s16(v2081, v2080), 2uLL), vaddq_s16(a8, v2079));
                  a10 = vshlq_n_s16(v2083, 2uLL);
                  v2084 = vaddq_s16(vaddq_s16(a7, v2083), a10);
                  a9 = vaddq_s16(v2078, v26);
                  *(&v2812 + v2075) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(v2084, a9), 5uLL))), v2081);
                  v2075 += 32;
                  v2082 = (v2082 + v63);
                  a7 = a8;
                }

                while (v2075 != 512);
                break;
              case 2:
                v1748 = 0;
                v1749 = 4 * v53;
                v1750 = (v104 + v63 - v1749);
                v1751 = (v1750 + v63);
                v1752 = (v1751 + v63);
                v1753 = vzip1q_s8(*(v1752 + v63), v25);
                v1754 = vzip1q_s8(*v1752, v25);
                v1755 = vzip1q_s8(*v1751, v25);
                v1756 = vzip1q_s8(*v1750, v25);
                v1757 = vzip1q_s8(*(v104 - v1749), v25);
                v1758 = 5 * v63;
                v1759 = (v52 + v1758 + v101 + v103 - v1749);
                do
                {
                  v1760 = v1756;
                  v1756 = v1755;
                  v1755 = v1754;
                  v1754 = v1753;
                  v1761 = &v2811.i8[v1748];
                  v1753 = vzip1q_s8(*v1759, v25);
                  v1762 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1756, v1755), 2uLL), vaddq_s16(v1760, v1754));
                  *v1762.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1757, v1762), vshlq_n_s16(v1762, 2uLL)), vaddq_s16(v1753, v26)), 5uLL));
                  v1763 = v25.i64[0];
                  vst2_s8(v1761, v1762);
                  v1748 += 32;
                  v1759 = (v1759 + v63);
                  v1757 = v1760;
                }

                while (v1748 != 512);
                v1764 = 0;
                v1765 = (v104 + v63 - v1749 + 8);
                v1766 = (v1765 + v63 + v63);
                v1767 = vzip1q_s8(*(v1766 + v63), v25);
                v1768 = vzip1q_s8(*v1766, v25);
                v1769 = vzip1q_s8(*(v1765 + v63), v25);
                v1770 = vzip1q_s8(*v1765, v25);
                a7 = vzip1q_s8(*(v104 - v1749 + 8), v25);
                v1771 = (v52 + v1758 + v101 + v103 - v1749 + 8);
                v111 = v2725;
                v112 = v2723;
                do
                {
                  a8 = v1770;
                  v1770 = v1769;
                  v1769 = v1768;
                  v1768 = v1767;
                  v1772 = &v2812.i8[v1764];
                  v1767 = vzip1q_s8(*v1771, v25);
                  v1773 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1770, v1769), 2uLL), vaddq_s16(a8, v1768));
                  a10 = vshlq_n_s16(v1773, 2uLL);
                  v1774 = vaddq_s16(vaddq_s16(a7, v1773), a10);
                  a9 = vaddq_s16(v1767, v26);
                  a9.n128_u64[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(v1774, a9), 5uLL));
                  a10.n128_u64[0] = v25.i64[0];
                  vst2_s8(v1772, a9);
                  v1764 += 32;
                  v1771 = (v1771 + v63);
                  a7 = a8;
                }

                while (v1764 != 512);
                break;
              case 3:
                v1995 = 0;
                v1996 = 4 * v53;
                v1997 = (v104 + v63 - v1996);
                v1998 = (v1997 + v63);
                v1999 = (v1998 + v63);
                v2000 = vzip1q_s8(*(v1999 + v63), v25);
                v2001 = vzip1q_s8(*v1999, v25);
                v2002 = vzip1q_s8(*v1998, v25);
                v2003 = vzip1q_s8(*v1997, v25);
                v2004 = vzip1q_s8(*(v104 - v1996), v25);
                v2005 = 5 * v63;
                v2006 = (v52 + v2005 + v101 + v103 - v1996);
                do
                {
                  v2007 = v2003;
                  v2003 = v2002;
                  v2002 = v2001;
                  v2001 = v2000;
                  v2000 = vzip1q_s8(*v2006, v25);
                  v2008 = vsubq_s16(vshlq_n_s16(vaddq_s16(v2003, v2002), 2uLL), vaddq_s16(v2007, v2001));
                  *(&v2811 + v1995) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v2004, v2008), vshlq_n_s16(v2008, 2uLL)), vaddq_s16(v2000, v26)), 5uLL))), v2002);
                  v1995 += 32;
                  v2006 = (v2006 + v63);
                  v2004 = v2007;
                }

                while (v1995 != 512);
                v2009 = 0;
                v2010 = (v104 + v63 - v1996 + 8);
                v2011 = (v2010 + v63 + v63);
                v2012 = vzip1q_s8(*(v2011 + v63), v25);
                v2013 = vzip1q_s8(*v2011, v25);
                v2014 = vzip1q_s8(*(v2010 + v63), v25);
                v2015 = vzip1q_s8(*v2010, v25);
                a7 = vzip1q_s8(*(v104 - v1996 + 8), v25);
                v2016 = (v52 + v2005 + v101 + v103 - v1996 + 8);
                v111 = v2725;
                v112 = v2723;
                do
                {
                  a8 = v2015;
                  v2015 = v2014;
                  v2014 = v2013;
                  v2013 = v2012;
                  v2012 = vzip1q_s8(*v2016, v25);
                  v2017 = vsubq_s16(vshlq_n_s16(vaddq_s16(v2015, v2014), 2uLL), vaddq_s16(a8, v2013));
                  a10 = vshlq_n_s16(v2017, 2uLL);
                  v2018 = vaddq_s16(vaddq_s16(a7, v2017), a10);
                  a9 = vaddq_s16(v2012, v26);
                  *(&v2812 + v2009) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(v2018, a9), 5uLL))), v2014);
                  v2009 += 32;
                  v2016 = (v2016 + v63);
                  a7 = a8;
                }

                while (v2009 != 512);
                break;
              case 4:
                v1623 = 0;
                v1624 = (v104 - 2);
                do
                {
                  v1625 = *v1624;
                  v1624 = (v1624 + v63);
                  v1626 = vzip1q_s8(vextq_s8(v1625, v1625, 2uLL), v25);
                  v1627 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1626, vzip1q_s8(vextq_s8(v1625, v1625, 3uLL), v25)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1625, v1625, 1uLL), v25), vzip1q_s8(vextq_s8(v1625, v1625, 4uLL), v25)));
                  *(&v2811 + v1623) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1627, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1625, v25), vzip1q_s8(vextq_s8(v1625, v1625, 5uLL), v25)), v1627)), v26), 5uLL))), v1626);
                  v1623 += 32;
                }

                while (v1623 != 512);
                v1628 = 0;
                v1629 = (v104 + 6);
                v111 = v2725;
                v112 = v2723;
                do
                {
                  v1630 = *v1629;
                  v1629 = (v1629 + v63);
                  v1631 = vzip1q_s8(vextq_s8(v1630, v1630, 2uLL), v25);
                  v1632 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1631, vzip1q_s8(vextq_s8(v1630, v1630, 3uLL), v25)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1630, v1630, 1uLL), v25), vzip1q_s8(vextq_s8(v1630, v1630, 4uLL), v25)));
                  a7 = vzip1q_s8(v1630, v25);
                  *(&v2812 + v1628) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1632, 2uLL), vaddq_s16(vaddq_s16(a7, vzip1q_s8(vextq_s8(v1630, v1630, 5uLL), v25)), v1632)), v26), 5uLL))), v1631);
                  v1628 += 32;
                }

                while (v1628 != 512);
                break;
              case 5:
                v1855 = v52 + v103 + v101;
                v1856 = 2 * v53;
                v1857 = 2;
                goto LABEL_1084;
              case 6:
                v2793 = v10;
                v2807 = v25;
                v2774 = v90;
                v2755 = v91;
                v2747 = v95;
                v2750 = v93;
                sub_27729B1B0(v2811.i8, 0x20u, v52 + v103 + v101, 2 * v53);
                sub_27729B1B0(v2812.i8, 0x20u, v104 + 8, v63);
                goto LABEL_1108;
              case 7:
                v1855 = v52 + v103 + v101;
                v1856 = 2 * v53;
                v1857 = 3;
LABEL_1084:
                v2390 = 2;
                goto LABEL_1107;
              case 8:
                v2560 = 0;
                v2561 = (v104 - 2);
                do
                {
                  v2562 = &v2811.i8[v2560];
                  v2563 = *v2561;
                  v2561 = (v2561 + v63);
                  v2564 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v2563, v2563, 2uLL), v25), vzip1q_s8(vextq_s8(v2563, v2563, 3uLL), v25)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v2563, v2563, 1uLL), v25), vzip1q_s8(vextq_s8(v2563, v2563, 4uLL), v25)));
                  *v2563.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v2564, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v2563, v25), vzip1q_s8(vextq_s8(v2563, v2563, 5uLL), v25)), v2564)), v26), 5uLL));
                  v2564.i64[0] = v25.i64[0];
                  vst2_s8(v2562, v2563);
                  v2560 += 32;
                }

                while (v2560 != 512);
                v2565 = 0;
                v2566 = (v104 + 6);
                v111 = v2725;
                v112 = v2723;
                do
                {
                  v2567 = &v2812.i8[v2565];
                  v2568 = *v2566;
                  v2566 = (v2566 + v63);
                  v2569 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v2568, v2568, 2uLL), v25), vzip1q_s8(vextq_s8(v2568, v2568, 3uLL), v25)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v2568, v2568, 1uLL), v25), vzip1q_s8(vextq_s8(v2568, v2568, 4uLL), v25)));
                  *v2568.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v2569, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v2568, v25), vzip1q_s8(vextq_s8(v2568, v2568, 5uLL), v25)), v2569)), v26), 5uLL));
                  v2569.i64[0] = v25.i64[0];
                  vst2_s8(v2567, v2568);
                  v2565 += 32;
                }

                while (v2565 != 512);
                break;
              case 9:
                v2793 = v10;
                v2807 = v25;
                v2774 = v90;
                v2755 = v91;
                v2747 = v95;
                v2750 = v93;
                sub_27729B614(v2811.i8, 0x20u, v52 + v103 + v101, 2 * v53, 16);
                sub_27729B614(v2812.i8, 0x20u, v104 + 8, v63, 16);
                goto LABEL_1108;
              case 0xA:
                v2793 = v10;
                v2807 = v25;
                v2774 = v90;
                v2755 = v91;
                v2747 = v95;
                v2750 = v93;
                sub_27729B7DC(&v2811, 32, v52 + v103 + v101, 2 * v53, 16);
                sub_27729B7DC(&v2812, 32, v104 + 8, v63, 16);
                goto LABEL_1108;
              case 0xB:
                v2793 = v10;
                v2807 = v25;
                v2774 = v90;
                v2755 = v91;
                v2747 = v95;
                v2750 = v93;
                sub_27729B98C(v2811.i8, 0x20u, v52 + v103 + v101, 2 * v53, 16);
                sub_27729B98C(v2812.i8, 0x20u, v104 + 8, v63, 16);
                goto LABEL_1108;
              case 0xC:
                v1665 = 0;
                v1666 = (v104 - 2);
                do
                {
                  v1667 = *v1666;
                  v1666 = (v1666 + v63);
                  v1668 = vzip1q_s8(vextq_s8(v1667, v1667, 3uLL), v25);
                  v1669 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1667, v1667, 2uLL), v25), v1668), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1667, v1667, 1uLL), v25), vzip1q_s8(vextq_s8(v1667, v1667, 4uLL), v25)));
                  *(&v2811 + v1665) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1669, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1667, v25), vzip1q_s8(vextq_s8(v1667, v1667, 5uLL), v25)), v1669)), v26), 5uLL))), v1668);
                  v1665 += 32;
                }

                while (v1665 != 512);
                v1670 = 0;
                v1671 = (v104 + 6);
                v111 = v2725;
                v112 = v2723;
                do
                {
                  v1672 = *v1671;
                  v1671 = (v1671 + v63);
                  v1673 = vzip1q_s8(vextq_s8(v1672, v1672, 3uLL), v25);
                  v1674 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1672, v1672, 2uLL), v25), v1673), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1672, v1672, 1uLL), v25), vzip1q_s8(vextq_s8(v1672, v1672, 4uLL), v25)));
                  a7 = vzip1q_s8(v1672, v25);
                  *(&v2812 + v1670) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1674, 2uLL), vaddq_s16(vaddq_s16(a7, vzip1q_s8(vextq_s8(v1672, v1672, 5uLL), v25)), v1674)), v26), 5uLL))), v1673);
                  v1670 += 32;
                }

                while (v1670 != 512);
                break;
              case 0xD:
                v1855 = v52 + v103 + v101;
                v1856 = 2 * v53;
                v1857 = 2;
                goto LABEL_1106;
              case 0xE:
                v2793 = v10;
                v2807 = v25;
                v2774 = v90;
                v2755 = v91;
                v2747 = v95;
                v2750 = v93;
                sub_27729BBEC(v2811.i8, 0x20u, v52 + v103 + v101, 2 * v53);
                sub_27729BBEC(v2812.i8, 0x20u, v104 + 8, v63);
                goto LABEL_1108;
              case 0xF:
                v1855 = v52 + v103 + v101;
                v1856 = 2 * v53;
                v1857 = 3;
LABEL_1106:
                v2390 = 3;
LABEL_1107:
                v2793 = v10;
                v2807 = v25;
                v2774 = v90;
                v2755 = v91;
                v2747 = v95;
                v2750 = v93;
                sub_27729AF04(v2811.i8, v1855, v1856, 16, v1857, v2390);
LABEL_1108:
                v95 = v2747;
                v93 = v2750;
                v91 = v2755;
                v90 = v2774;
                v96 = 2 * v54;
                v27.i64[0] = 0x20002000200020;
                v27.i64[1] = 0x20002000200020;
                v26.i64[0] = 0x10001000100010;
                v26.i64[1] = 0x10001000100010;
                v10 = v2793;
                v25 = v2807;
                v20 = v2757;
                v111 = v2725;
                v112 = v2723;
                break;
              default:
                v110 = 0;
                v111 = v2725;
                v112 = v2723;
                do
                {
                  v113 = &v2811.i8[v110];
                  v114 = *v104;
                  v104 = (v104 + v63);
                  v115 = v25.i64[0];
                  vst2_s8(v113, v114);
                  v113 += 16;
                  *v113 = vzip2q_s8(v114, v25);
                  v110 += 32;
                }

                while (v110 != 512);
                break;
            }

            v2424 = 0;
            v2425 = v2740;
            v2426 = v19;
            do
            {
              v2428 = *(&v2811 + v2424);
              v2427 = *(&v2811 + v2424 + 16);
              v2430 = *(&v2813 + v2424);
              v2429 = v2814[v2424 / 0x10];
              if (v19)
              {
                a7 = *v2426;
                a8 = v2426[1];
                a9 = v2426[2];
                a10 = v2426[3];
                v2426 += 4;
                v2428 = vaddq_s16(a7, v2428);
                v2427 = vaddq_s16(a8, v2427);
                v2430 = vaddq_s16(a9, v2430);
                v2429 = vaddq_s16(a10, v2429);
              }

              v2431 = vqmovun_high_s16(vqmovun_s16(v2428), v2427);
              v2432 = vqmovun_high_s16(vqmovun_s16(v2430), v2429);
              *v2425 = v2431;
              *(v2425 + v111) = v2432;
              v2425 = (v2425 + v2729);
              v2424 += 64;
            }

            while (v2424 != 512);
            if (v62 == 64)
            {
              __asm { PRFM            #0, [X21] }

              v2456 = 9;
              v2435 = v2819;
              do
              {
                v2457 = _X21;
                _X21 = (_X21 + v96);
                __asm { PRFM            #0, [X21] }

                v2459 = vextq_s8(*v2457, *v2457, 2uLL);
                v2459.i16[7] = v2457[1].i16[0];
                v2460 = vrhaddq_u8(*v2457, v2459);
                v2459.i64[0] = v25.i64[0];
                v2435[3] = vzip2q_s8(v2460, v25);
                v2435 += 2;
                vst2_s8(v2435->i8, *(&v2459 - 8));
                --v2456;
              }

              while (v2456 > 2);
              v2461 = vextq_s8(*_X21, *_X21, 2uLL);
              v2461.i16[7] = _X21[1].i16[0];
              v2454 = vrhaddq_u8(*_X21, v2461);
            }

            else
            {
              if (v62 != 4)
              {
                if (v62)
                {
                  v2464 = 0;
                  v2829 = v90;
                  v2830 = v91;
                  v2831 = v93;
                  v2832 = v95;
                  _X10 = &_X21->i8[v96];
                  __asm { PRFM            #0, [X10] }

                  v2432.i64[0] = _X21->i64[0];
                  v2467 = vqtbl1q_s8(v2432, xmmword_2773B3E00);
                  v2467.i16[3] = _X21->i16[4];
                  v2468 = vzip1q_s8(v2467, v25);
                  v2469 = vzip1q_s8(v2432, v25);
                  v2470 = (v2777 + v107 + v108 + v96 + 8);
                  _X13 = v2777 + v107 + v108 + 2 * v96;
                  do
                  {
                    __asm { PRFM            #0, [X13] }

                    v2473 = vmlaq_s16(vmulq_s16(v91, v2468), v90, v2469);
                    v2468.i64[0] = *(v2470 - 1);
                    v2469 = vzip1q_s8(v2468, v25);
                    v2474 = vqtbl1q_s8(v2468, xmmword_2773B3E00);
                    v2474.i16[3] = *v2470;
                    v2470 = (v2470 + v96);
                    v2468 = vzip1q_s8(v2474, v25);
                    *(&v2820 + v2464) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v2473, v93, v2469), v95, v2468), v27), 6uLL);
                    v2464 += 32;
                    _X13 += v96;
                  }

                  while (v2464 != 256);
                  v2475 = 0;
                  _X10 = &_X21->i64[1] + v96;
                  __asm { PRFM            #0, [X10] }

                  v2469.i64[0] = _X21->i64[1];
                  v2478 = vqtbl1q_s8(v2469, xmmword_2773B3E00);
                  v2478.i16[3] = _X21[1].i16[0];
                  v2479 = vzip1q_s8(v2478, v25);
                  v2480 = vzip1q_s8(v2469, v25);
                  v2481 = v2777 + v107 + v108;
                  v11 = a2;
                  v21 = v2737;
                  do
                  {
                    _X11 = v2481 + 2 * v96 + 8;
                    v2481 += v96;
                    __asm { PRFM            #0, [X11] }

                    v2484 = vmlaq_s16(vmulq_s16(v91, v2479), v90, v2480);
                    v2479.i64[0] = *(v2481 + 8);
                    v2480 = vzip1q_s8(v2479, v25);
                    v2485 = vqtbl1q_s8(v2479, xmmword_2773B3E00);
                    v2485.i16[3] = *(v2481 + 16);
                    v2479 = vzip1q_s8(v2485, v25);
                    *(&v2821 + v2475) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v2484, v93, v2480), v95, v2479), v27), 6uLL);
                    v2475 += 32;
                  }

                  while (v2475 != 256);
                }

                else
                {
                  __asm { PRFM            #0, [X21] }

                  v2434 = 9;
                  v2435 = v2819;
                  do
                  {
                    v2436 = _X21;
                    _X21 = (_X21 + v96);
                    __asm { PRFM            #0, [X21] }

                    v2438 = *v2436;
                    v2435[3] = vzip2q_s8(*v2436, v25);
                    v2435 += 2;
                    v2439 = v25.i64[0];
                    vst2_s8(v2435->i8, v2438);
                    --v2434;
                  }

                  while (v2434 > 2);
                  v2440 = *_X21;
                  v2441 = vzip2q_s8(*_X21, v25);
                  i8 = v2435[2].i8;
                  v2443 = v25.i64[0];
                  vst2_s8(i8, v2440);
LABEL_1126:
                  v11 = a2;
                  v21 = v2737;
                  v2435[3] = v2441;
                }

                v2486 = 0;
                v2487 = v2739;
                v2488 = v20;
                do
                {
                  v2490 = *(&v2820 + v2486);
                  v2489 = *(&v2820 + v2486 + 16);
                  v2492 = *(&v2822 + v2486);
                  v2491 = v2823[v2486 / 0x10];
                  if (v20)
                  {
                    a7 = *v2488;
                    a8 = v2488[1];
                    a9 = v2488[2];
                    a10 = v2488[3];
                    v2488 += 4;
                    v2490 = vaddq_s16(a7, v2490);
                    v2489 = vaddq_s16(a8, v2489);
                    v2492 = vaddq_s16(a9, v2492);
                    v2491 = vaddq_s16(a10, v2491);
                  }

                  a6 = vqmovun_high_s16(vqmovun_s16(v2490), v2489);
                  *v2487 = a6;
                  *(v2487 + v2730) = vqmovun_high_s16(vqmovun_s16(v2492), v2491);
                  v2487 = (v2487 + v112);
                  v2486 += 64;
                }

                while (v2486 != 256);
                goto LABEL_363;
              }

              _X8 = &_X21->i8[v96];
              __asm { PRFM            #0, [X8] }

              v2446 = *_X21;
              v2447 = (v2777 + v107 + v108);
              v2448 = 9;
              v2435 = v2819;
              do
              {
                _X13 = &v2447->i8[2 * v96];
                v2447 = (v2447 + v96);
                __asm { PRFM            #0, [X13] }

                v2451 = *v2447;
                v2452 = vrhaddq_u8(v2446, *v2447);
                v2453 = v25.i64[0];
                v2435[3] = vzip2q_s8(v2452, v25);
                v2435 += 2;
                vst2_s8(v2435->i8, v2452);
                --v2448;
                v2446 = v2451;
              }

              while (v2448 > 2);
              v2454 = vrhaddq_u8(v2451, *(v2447 + v96));
            }

            v2462 = v2435[2].i8;
            v2463 = v25.i64[0];
            vst2_s8(v2462, v2454);
            v2441 = vzip2q_s8(v2454, v25);
            goto LABEL_1126;
          }

          v272 = v2738 + v36 + (v57 >> 2);
          if (v98 <= -18)
          {
            v98 = -18;
          }

          if (v272 <= -18)
          {
            v272 = -18;
          }

          if (v98 >= v65 + 1)
          {
            v273 = v65 + 1;
          }

          else
          {
            v273 = v98;
          }

          if (v272 >= v67 + 1)
          {
            v274 = v67 + 1;
          }

          else
          {
            v274 = v272;
          }

          v275 = (v52 + v273 + v274 * v63);
          v276 = (v97 & 0xFFFFFFFE) + v2736;
          v277 = (v60 >> 3) + ((v2738 + v36) >> 1);
          if (v276 <= -16)
          {
            v276 = -16;
          }

          if (v277 <= -8)
          {
            v277 = -8;
          }

          if (v276 >= v66 - 2)
          {
            v276 = v66 - 2;
          }

          if (v277 >= v68)
          {
            v277 = v68 - 1;
          }

          v278 = v276;
          v279 = v277 * v64;
          _X25 = (v2777 + v276 + v279);
          v281 = (v2740 + (v2725 * v36));
          v282 = &v19[2 * v36];
          v283 = (v2739 + (v36 >> 1) * v2724);
          v284 = &v20[2 * (v36 >> 1)];
          switch(v58)
          {
            case 1:
              v2085 = 0;
              v2086 = (v275 - 4 * v53);
              v2087 = (v2086 + v63);
              v2088 = (v2087 + v63);
              v2089 = (v2088 + v63);
              v2090 = vzip1q_s8(*(v2089 + v63), v25);
              v2091 = vzip1q_s8(*v2089, v25);
              v2092 = vzip1q_s8(*v2088, v25);
              v2093 = vzip1q_s8(*v2087, v25);
              v2094 = vzip1q_s8(*v2086, v25);
              v2095 = 5 * v63;
              v2096 = (v52 + v2095 + v273 + 2 * v53 * v274 - 4 * v53);
              do
              {
                v2097 = v2093;
                v2093 = v2092;
                v2092 = v2091;
                v2091 = v2090;
                v2090 = vzip1q_s8(*v2096, v25);
                v2098 = vsubq_s16(vshlq_n_s16(vaddq_s16(v2093, v2092), 2uLL), vaddq_s16(v2097, v2091));
                *(&v2811 + v2085) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v2094, v2098), vshlq_n_s16(v2098, 2uLL)), vaddq_s16(v2090, v26)), 5uLL))), v2093);
                v2085 += 32;
                v2096 = (v2096 + v63);
                v2094 = v2097;
              }

              while (v2085 != 256);
              v2099 = 0;
              v2100 = v275 - 4 * v53;
              v2101 = *(v2100 + 8);
              v2102 = &v2100[v63 + 8];
              v2103 = (v2102 + v63 + v63);
              v2104 = vzip1q_s8(*(v2103 + v63), v25);
              v2105 = vzip1q_s8(*v2103, v25);
              v2106 = vzip1q_s8(*(v2102 + v63), v25);
              v2107 = vzip1q_s8(*v2102, v25);
              a7 = vzip1q_s8(v2101, v25);
              v2108 = (v52 + v2095 + v273 + 2 * v53 * v274 - 4 * v53 + 8);
              v286 = v2729;
              v287 = v2723;
              do
              {
                a8 = v2107;
                v2107 = v2106;
                v2106 = v2105;
                v2105 = v2104;
                v2104 = vzip1q_s8(*v2108, v25);
                v2109 = vsubq_s16(vshlq_n_s16(vaddq_s16(v2107, v2106), 2uLL), vaddq_s16(a8, v2105));
                a10 = vshlq_n_s16(v2109, 2uLL);
                v2110 = vaddq_s16(vaddq_s16(a7, v2109), a10);
                a9 = vaddq_s16(v2104, v26);
                *(&v2812 + v2099) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(v2110, a9), 5uLL))), v2107);
                v2099 += 32;
                v2108 = (v2108 + v63);
                a7 = a8;
              }

              while (v2099 != 256);
              break;
            case 2:
              v1796 = 0;
              v1797 = (v275 - 4 * v53);
              v1798 = (v1797 + v63);
              v1799 = (v1798 + v63);
              v1800 = (v1799 + v63);
              v1801 = vzip1q_s8(*(v1800 + v63), v25);
              v1802 = vzip1q_s8(*v1800, v25);
              v1803 = vzip1q_s8(*v1799, v25);
              v1804 = vzip1q_s8(*v1798, v25);
              v1805 = vzip1q_s8(*v1797, v25);
              v1806 = 5 * v63;
              v1807 = (v52 + v1806 + v273 + 2 * v53 * v274 - 4 * v53);
              do
              {
                v1808 = v1804;
                v1804 = v1803;
                v1803 = v1802;
                v1802 = v1801;
                v1809 = &v2811.i8[v1796];
                v1801 = vzip1q_s8(*v1807, v25);
                v1810 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1804, v1803), 2uLL), vaddq_s16(v1808, v1802));
                *v1810.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1805, v1810), vshlq_n_s16(v1810, 2uLL)), vaddq_s16(v1801, v26)), 5uLL));
                v1811 = v25.i64[0];
                vst2_s8(v1809, v1810);
                v1796 += 32;
                v1807 = (v1807 + v63);
                v1805 = v1808;
              }

              while (v1796 != 256);
              v1812 = 0;
              v1813 = v275 - 4 * v53;
              v1814 = *(v1813 + 8);
              v1815 = &v1813[v63 + 8];
              v1816 = (v1815 + v63 + v63);
              v1817 = vzip1q_s8(*(v1816 + v63), v25);
              v1818 = vzip1q_s8(*v1816, v25);
              v1819 = vzip1q_s8(*(v1815 + v63), v25);
              v1820 = vzip1q_s8(*v1815, v25);
              a7 = vzip1q_s8(v1814, v25);
              v1821 = (v52 + v1806 + v273 + 2 * v53 * v274 - 4 * v53 + 8);
              v286 = v2729;
              v287 = v2723;
              do
              {
                a8 = v1820;
                v1820 = v1819;
                v1819 = v1818;
                v1818 = v1817;
                v1822 = &v2812.i8[v1812];
                v1817 = vzip1q_s8(*v1821, v25);
                v1823 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1820, v1819), 2uLL), vaddq_s16(a8, v1818));
                a10 = vshlq_n_s16(v1823, 2uLL);
                v1824 = vaddq_s16(vaddq_s16(a7, v1823), a10);
                a9 = vaddq_s16(v1817, v26);
                a9.n128_u64[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(v1824, a9), 5uLL));
                a10.n128_u64[0] = v25.i64[0];
                vst2_s8(v1822, a9);
                v1812 += 32;
                v1821 = (v1821 + v63);
                a7 = a8;
              }

              while (v1812 != 256);
              break;
            case 3:
              v2027 = 0;
              v2028 = (v275 - 4 * v53);
              v2029 = (v2028 + v63);
              v2030 = (v2029 + v63);
              v2031 = (v2030 + v63);
              v2032 = vzip1q_s8(*(v2031 + v63), v25);
              v2033 = vzip1q_s8(*v2031, v25);
              v2034 = vzip1q_s8(*v2030, v25);
              v2035 = vzip1q_s8(*v2029, v25);
              v2036 = vzip1q_s8(*v2028, v25);
              v2037 = 5 * v63;
              v2038 = (v52 + v2037 + v273 + 2 * v53 * v274 - 4 * v53);
              do
              {
                v2039 = v2035;
                v2035 = v2034;
                v2034 = v2033;
                v2033 = v2032;
                v2032 = vzip1q_s8(*v2038, v25);
                v2040 = vsubq_s16(vshlq_n_s16(vaddq_s16(v2035, v2034), 2uLL), vaddq_s16(v2039, v2033));
                *(&v2811 + v2027) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v2036, v2040), vshlq_n_s16(v2040, 2uLL)), vaddq_s16(v2032, v26)), 5uLL))), v2034);
                v2027 += 32;
                v2038 = (v2038 + v63);
                v2036 = v2039;
              }

              while (v2027 != 256);
              v2041 = 0;
              v2042 = v275 - 4 * v53;
              v2043 = *(v2042 + 8);
              v2044 = &v2042[v63 + 8];
              v2045 = (v2044 + v63 + v63);
              v2046 = vzip1q_s8(*(v2045 + v63), v25);
              v2047 = vzip1q_s8(*v2045, v25);
              v2048 = vzip1q_s8(*(v2044 + v63), v25);
              v2049 = vzip1q_s8(*v2044, v25);
              a7 = vzip1q_s8(v2043, v25);
              v2050 = (v52 + v2037 + v273 + 2 * v53 * v274 - 4 * v53 + 8);
              v286 = v2729;
              v287 = v2723;
              do
              {
                a8 = v2049;
                v2049 = v2048;
                v2048 = v2047;
                v2047 = v2046;
                v2046 = vzip1q_s8(*v2050, v25);
                v2051 = vsubq_s16(vshlq_n_s16(vaddq_s16(v2049, v2048), 2uLL), vaddq_s16(a8, v2047));
                a10 = vshlq_n_s16(v2051, 2uLL);
                v2052 = vaddq_s16(vaddq_s16(a7, v2051), a10);
                a9 = vaddq_s16(v2046, v26);
                *(&v2812 + v2041) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(v2052, a9), 5uLL))), v2048);
                v2041 += 32;
                v2050 = (v2050 + v63);
                a7 = a8;
              }

              while (v2041 != 256);
              break;
            case 4:
              v1655 = 0;
              v1656 = (v275 - 2);
              do
              {
                v1657 = *v1656;
                v1656 = (v1656 + v63);
                v1658 = vzip1q_s8(vextq_s8(v1657, v1657, 2uLL), v25);
                v1659 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1658, vzip1q_s8(vextq_s8(v1657, v1657, 3uLL), v25)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1657, v1657, 1uLL), v25), vzip1q_s8(vextq_s8(v1657, v1657, 4uLL), v25)));
                *(&v2811 + v1655) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1659, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1657, v25), vzip1q_s8(vextq_s8(v1657, v1657, 5uLL), v25)), v1659)), v26), 5uLL))), v1658);
                v1655 += 32;
              }

              while (v1655 != 256);
              v1660 = 0;
              v1661 = (v275 + 6);
              v286 = v2729;
              v287 = v2723;
              do
              {
                v1662 = *v1661;
                v1661 = (v1661 + v63);
                v1663 = vzip1q_s8(vextq_s8(v1662, v1662, 2uLL), v25);
                v1664 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1663, vzip1q_s8(vextq_s8(v1662, v1662, 3uLL), v25)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1662, v1662, 1uLL), v25), vzip1q_s8(vextq_s8(v1662, v1662, 4uLL), v25)));
                a7 = vzip1q_s8(v1662, v25);
                *(&v2812 + v1660) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1664, 2uLL), vaddq_s16(vaddq_s16(a7, vzip1q_s8(vextq_s8(v1662, v1662, 5uLL), v25)), v1664)), v26), 5uLL))), v1663);
                v1660 += 32;
              }

              while (v1660 != 256);
              break;
            case 5:
              v1926 = v52 + v273 + v274 * v63;
              v1927 = 2 * v53;
              v1928 = v276;
              v1929 = v277 * v64;
              v1930 = 2;
              goto LABEL_1086;
            case 6:
              v2745 = v276;
              v2794 = v10;
              v2808 = v25;
              v2775 = v90;
              v2756 = v91;
              v2748 = v95;
              v2751 = v93;
              v2742 = v277 * v64;
              sub_27729BFC4(v2811.i8, 0x20u, v52 + v273 + v274 * v63, 2 * v53);
              sub_27729BFC4(v2812.i8, 0x20u, v275 + 8, v63);
              goto LABEL_1143;
            case 7:
              v1926 = v52 + v273 + v274 * v63;
              v1927 = 2 * v53;
              v1928 = v276;
              v1929 = v277 * v64;
              v1930 = 3;
LABEL_1086:
              v2391 = 2;
              goto LABEL_1138;
            case 8:
              v2570 = 0;
              v2571 = (v275 - 2);
              do
              {
                v2572 = &v2811.i8[v2570];
                v2573 = *v2571;
                v2571 = (v2571 + v63);
                v2574 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v2573, v2573, 2uLL), v25), vzip1q_s8(vextq_s8(v2573, v2573, 3uLL), v25)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v2573, v2573, 1uLL), v25), vzip1q_s8(vextq_s8(v2573, v2573, 4uLL), v25)));
                *v2573.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v2574, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v2573, v25), vzip1q_s8(vextq_s8(v2573, v2573, 5uLL), v25)), v2574)), v26), 5uLL));
                v2574.i64[0] = v25.i64[0];
                vst2_s8(v2572, v2573);
                v2570 += 32;
              }

              while (v2570 != 256);
              v2575 = 0;
              v2576 = (v275 + 6);
              v286 = v2729;
              v287 = v2723;
              do
              {
                v2577 = &v2812.i8[v2575];
                v2578 = *v2576;
                v2576 = (v2576 + v63);
                v2579 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v2578, v2578, 2uLL), v25), vzip1q_s8(vextq_s8(v2578, v2578, 3uLL), v25)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v2578, v2578, 1uLL), v25), vzip1q_s8(vextq_s8(v2578, v2578, 4uLL), v25)));
                *v2578.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v2579, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v2578, v25), vzip1q_s8(vextq_s8(v2578, v2578, 5uLL), v25)), v2579)), v26), 5uLL));
                v2579.i64[0] = v25.i64[0];
                vst2_s8(v2577, v2578);
                v2575 += 32;
              }

              while (v2575 != 256);
              break;
            case 9:
              v2742 = v277 * v64;
              v2745 = v276;
              v2794 = v10;
              v2808 = v25;
              v2775 = v90;
              v2756 = v91;
              v2748 = v95;
              v2751 = v93;
              sub_27729B614(v2811.i8, 0x20u, v52 + v273 + v274 * v63, 2 * v53, 8);
              sub_27729B614(v2812.i8, 0x20u, v275 + 8, v63, 8);
              goto LABEL_1143;
            case 10:
              v2742 = v277 * v64;
              v2745 = v276;
              v2794 = v10;
              v2808 = v25;
              v2775 = v90;
              v2756 = v91;
              v2748 = v95;
              v2751 = v93;
              sub_27729B7DC(&v2811, 32, v52 + v273 + v274 * v63, 2 * v53, 8);
              sub_27729B7DC(&v2812, 32, v275 + 8, v63, 8);
              goto LABEL_1143;
            case 11:
              v2742 = v277 * v64;
              v2745 = v276;
              v2794 = v10;
              v2808 = v25;
              v2775 = v90;
              v2756 = v91;
              v2748 = v95;
              v2751 = v93;
              sub_27729B98C(v2811.i8, 0x20u, v52 + v273 + v274 * v63, 2 * v53, 8);
              sub_27729B98C(v2812.i8, 0x20u, v275 + 8, v63, 8);
              goto LABEL_1143;
            case 12:
              v1675 = 0;
              v1676 = (v275 - 2);
              do
              {
                v1677 = *v1676;
                v1676 = (v1676 + v63);
                v1678 = vzip1q_s8(vextq_s8(v1677, v1677, 3uLL), v25);
                v1679 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1677, v1677, 2uLL), v25), v1678), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1677, v1677, 1uLL), v25), vzip1q_s8(vextq_s8(v1677, v1677, 4uLL), v25)));
                *(&v2811 + v1675) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1679, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1677, v25), vzip1q_s8(vextq_s8(v1677, v1677, 5uLL), v25)), v1679)), v26), 5uLL))), v1678);
                v1675 += 32;
              }

              while (v1675 != 256);
              v1680 = 0;
              v1681 = (v275 + 6);
              v286 = v2729;
              v287 = v2723;
              do
              {
                v1682 = *v1681;
                v1681 = (v1681 + v63);
                v1683 = vzip1q_s8(vextq_s8(v1682, v1682, 3uLL), v25);
                v1684 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1682, v1682, 2uLL), v25), v1683), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1682, v1682, 1uLL), v25), vzip1q_s8(vextq_s8(v1682, v1682, 4uLL), v25)));
                a7 = vzip1q_s8(v1682, v25);
                *(&v2812 + v1680) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1684, 2uLL), vaddq_s16(vaddq_s16(a7, vzip1q_s8(vextq_s8(v1682, v1682, 5uLL), v25)), v1684)), v26), 5uLL))), v1683);
                v1680 += 32;
              }

              while (v1680 != 256);
              break;
            case 13:
              v1926 = v52 + v273 + v274 * v63;
              v1927 = 2 * v53;
              v1928 = v276;
              v1929 = v277 * v64;
              v1930 = 2;
              goto LABEL_1137;
            case 14:
              v2745 = v276;
              v2794 = v10;
              v2808 = v25;
              v2775 = v90;
              v2756 = v91;
              v2748 = v95;
              v2751 = v93;
              v2742 = v277 * v64;
              sub_27729C39C(v2811.i8, 0x20u, v52 + v273 + v274 * v63, 2 * v53);
              sub_27729C39C(v2812.i8, 0x20u, v275 + 8, v63);
LABEL_1143:
              v279 = v2742;
              v278 = v2745;
              goto LABEL_1144;
            case 15:
              v1926 = v52 + v273 + v274 * v63;
              v1927 = 2 * v53;
              v1928 = v276;
              v1929 = v277 * v64;
              v1930 = 3;
LABEL_1137:
              v2391 = 3;
LABEL_1138:
              v2794 = v10;
              v2808 = v25;
              v2775 = v90;
              v2756 = v91;
              v2748 = v95;
              v2751 = v93;
              sub_27729AF04(v2811.i8, v1926, v1927, 8, v1930, v2391);
              v279 = v1929;
              v278 = v1928;
LABEL_1144:
              v95 = v2748;
              v93 = v2751;
              v91 = v2756;
              v90 = v2775;
              v96 = v64;
              v27.i64[0] = 0x20002000200020;
              v27.i64[1] = 0x20002000200020;
              v26.i64[0] = 0x10001000100010;
              v26.i64[1] = 0x10001000100010;
              v10 = v2794;
              v25 = v2808;
              v20 = v2757;
              v286 = v2729;
              v287 = v2723;
              break;
            default:
              v285 = 0;
              v286 = v2729;
              v287 = v2723;
              do
              {
                v288 = &v2811.i8[v285];
                v289 = *v275;
                v275 = (v275 + v63);
                v290 = v25.i64[0];
                vst2_s8(v288, v289);
                v288 += 16;
                *v288 = vzip2q_s8(v289, v25);
                v285 += 32;
              }

              while (v285 != 256);
              break;
          }

          v2493 = 0;
          do
          {
            v2495 = *(&v2811 + v2493);
            v2494 = *(&v2811 + v2493 + 16);
            v2497 = *(&v2813 + v2493);
            v2496 = v2814[v2493 / 0x10];
            if (v19)
            {
              a7 = *v282;
              a8 = v282[1];
              a9 = v282[2];
              a10 = v282[3];
              v282 += 4;
              v2495 = vaddq_s16(a7, v2495);
              v2494 = vaddq_s16(a8, v2494);
              v2497 = vaddq_s16(a9, v2497);
              v2496 = vaddq_s16(a10, v2496);
            }

            v2498 = vqmovun_high_s16(vqmovun_s16(v2495), v2494);
            v2499 = vqmovun_high_s16(vqmovun_s16(v2497), v2496);
            *v281 = v2498;
            *(v281 + v2731) = v2499;
            v281 = (v281 + v286);
            v2493 += 64;
          }

          while (v2493 != 256);
          if (v62 == 64)
          {
            __asm { PRFM            #0, [X25] }

            v2523 = 5;
            v2502 = v2819;
            do
            {
              v2524 = _X25;
              _X25 = (_X25 + v96);
              __asm { PRFM            #0, [X25] }

              v2526 = vextq_s8(*v2524, *v2524, 2uLL);
              v2526.i16[7] = v2524[1].i16[0];
              v2527 = vrhaddq_u8(*v2524, v2526);
              v2526.i64[0] = v25.i64[0];
              v2502[3] = vzip2q_s8(v2527, v25);
              v2502 += 2;
              vst2_s8(v2502->i8, *(&v2526 - 8));
              --v2523;
            }

            while (v2523 > 2);
            v2528 = vextq_s8(*_X25, *_X25, 2uLL);
            v2528.i16[7] = _X25[1].i16[0];
            v2521 = vrhaddq_u8(*_X25, v2528);
          }

          else
          {
            if (v62 != 4)
            {
              if (v62)
              {
                v2531 = 0;
                v2829 = v90;
                v2830 = v91;
                v2831 = v93;
                v2832 = v95;
                _X10 = &_X25->i8[v96];
                __asm { PRFM            #0, [X10] }

                v2499.i64[0] = _X25->i64[0];
                v2534 = vqtbl1q_s8(v2499, xmmword_2773B3E00);
                v2534.i16[3] = _X25->i16[4];
                v2535 = vzip1q_s8(v2534, v25);
                v2536 = vzip1q_s8(v2499, v25);
                v2537 = (v2777 + v278 + v279 + v96 + 8);
                _X13 = v2777 + v278 + v279 + 2 * v96;
                do
                {
                  __asm { PRFM            #0, [X13] }

                  v2540 = vmlaq_s16(vmulq_s16(v91, v2535), v90, v2536);
                  v2535.i64[0] = *(v2537 - 1);
                  v2536 = vzip1q_s8(v2535, v25);
                  v2541 = vqtbl1q_s8(v2535, xmmword_2773B3E00);
                  v2541.i16[3] = *v2537;
                  v2537 = (v2537 + v96);
                  v2535 = vzip1q_s8(v2541, v25);
                  *(&v2820 + v2531) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v2540, v93, v2536), v95, v2535), v27), 6uLL);
                  v2531 += 32;
                  _X13 += v96;
                }

                while (v2531 != 128);
                v2542 = 0;
                _X10 = &_X25->i64[1] + v96;
                __asm { PRFM            #0, [X10] }

                v2536.i64[0] = _X25->i64[1];
                v2545 = vqtbl1q_s8(v2536, xmmword_2773B3E00);
                v2545.i16[3] = _X25[1].i16[0];
                v2546 = vzip1q_s8(v2545, v25);
                v2547 = vzip1q_s8(v2536, v25);
                v2548 = v2777 + v278 + v279;
                v21 = v2737;
                do
                {
                  _X11 = v2548 + 2 * v96 + 8;
                  v2548 += v96;
                  __asm { PRFM            #0, [X11] }

                  v2551 = vmlaq_s16(vmulq_s16(v91, v2546), v90, v2547);
                  v2546.i64[0] = *(v2548 + 8);
                  v2547 = vzip1q_s8(v2546, v25);
                  v2552 = vqtbl1q_s8(v2546, xmmword_2773B3E00);
                  v2552.i16[3] = *(v2548 + 16);
                  v2546 = vzip1q_s8(v2552, v25);
                  *(&v2821 + v2542) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v2551, v93, v2547), v95, v2546), v27), 6uLL);
                  v2542 += 32;
                }

                while (v2542 != 128);
              }

              else
              {
                __asm { PRFM            #0, [X25] }

                v2501 = 5;
                v2502 = v2819;
                do
                {
                  v2503 = _X25;
                  _X25 = (_X25 + v96);
                  __asm { PRFM            #0, [X25] }

                  v2505 = *v2503;
                  v2502[3] = vzip2q_s8(*v2503, v25);
                  v2502 += 2;
                  v2506 = v25.i64[0];
                  vst2_s8(v2502->i8, v2505);
                  --v2501;
                }

                while (v2501 > 2);
                v2507 = *_X25;
                v2508 = vzip2q_s8(*_X25, v25);
                v2509 = v2502[2].i8;
                v2510 = v25.i64[0];
                vst2_s8(v2509, v2507);
LABEL_1162:
                v21 = v2737;
                v2502[3] = v2508;
              }

              v2553 = 1;
              v2554 = &v2820;
              do
              {
                v2555 = v2553;
                v2557 = *v2554;
                v2556 = v2554[1];
                v2559 = v2554[2];
                v2558 = v2554[3];
                if (v20)
                {
                  a7 = *v284;
                  a8 = v284[1];
                  a9 = v284[2];
                  a10 = v284[3];
                  v284 += 4;
                  v2557 = vaddq_s16(a7, v2557);
                  v2556 = vaddq_s16(a8, v2556);
                  v2559 = vaddq_s16(a9, v2559);
                  v2558 = vaddq_s16(a10, v2558);
                }

                v2553 = 0;
                a6 = vqmovun_high_s16(vqmovun_s16(v2557), v2556);
                *v283 = a6;
                *(v283 + v2730) = vqmovun_high_s16(vqmovun_s16(v2559), v2558);
                v283 = (v283 + v287);
                v2554 += 4;
              }

              while ((v2555 & 1) != 0);
              v11 = a2;
              goto LABEL_363;
            }

            _X8 = &_X25->i8[v96];
            __asm { PRFM            #0, [X8] }

            v2513 = *_X25;
            v2514 = (v2777 + v278 + v279);
            v2515 = 5;
            v2502 = v2819;
            do
            {
              _X13 = &v2514->i8[2 * v96];
              v2514 = (v2514 + v96);
              __asm { PRFM            #0, [X13] }

              v2518 = *v2514;
              v2519 = vrhaddq_u8(v2513, *v2514);
              v2520 = v25.i64[0];
              v2502[3] = vzip2q_s8(v2519, v25);
              v2502 += 2;
              vst2_s8(v2502->i8, v2519);
              --v2515;
              v2513 = v2518;
            }

            while (v2515 > 2);
            v2521 = vrhaddq_u8(v2518, *(v2514 + v96));
          }

          v2529 = v2502[2].i8;
          v2530 = v25.i64[0];
          vst2_s8(v2529, v2521);
          v2508 = vzip2q_s8(v2521, v25);
          goto LABEL_1162;
      }

LABEL_1065:
      v22 = v2810 + 1;
      if (v2810 + 1 == v21)
      {
        return;
      }
    }

    v37 = *(*v2809 + 8 * *(v28 + 8));
    v2741 = v32 >> 8;
    if (v11[1].n128_u8[4])
    {
      v38 = *(v37 + 37);
      if (v11[1].n128_u8[5])
      {
        v39 = 2 * (v38 == 0);
      }

      else if (*(v37 + 37))
      {
        v39 = -2;
      }

      else
      {
        v39 = 0;
      }
    }

    else
    {
      v39 = 0;
      v38 = *(v37 + 37);
    }

    v44 = *(v37 + 64);
    v45 = *(v37 + 72);
    v46 = *(v37 + 168);
    if (v38)
    {
      v47 = *(v37 + 184);
      v44 += v46;
      v45 += v47;
    }

    else
    {
      LODWORD(v47) = *(v37 + 184);
    }

    v2758 = v45;
    v48 = *(v2809[1] + 8 * *(v28 + 9));
    v2746 = v44;
    v2743 = v32;
    if (v11[1].n128_u8[4])
    {
      v49 = *(v48 + 37);
      if (v11[1].n128_u8[5])
      {
        v50 = 2 * (v49 == 0);
      }

      else if (*(v48 + 37))
      {
        v50 = -2;
      }

      else
      {
        v50 = 0;
      }
    }

    else
    {
      v50 = 0;
      v49 = *(v48 + 37);
    }

    v116 = *v28;
    v117 = v28[1];
    v118 = v116 & 7;
    v119 = (v39 + v28[1]);
    v120 = (v39 + *(v28 + 2)) & 7;
    v2717 = *(v37 + 168);
    v2749 = 2 * v46;
    v2711 = v47;
    v2778 = 2 * v47;
    v121 = *(v37 + 164);
    v122 = *(v37 + 180);
    v123 = *(v37 + 132);
    v124 = *(v37 + 148);
    v125 = v28[2];
    v126 = v28[3];
    v127 = v50 + v28[3];
    v2754 = v125 & 7;
    v128 = v127;
    v129 = v127 & 7;
    v130 = *(v48 + 64);
    v131 = *(v48 + 72);
    v132 = *(v48 + 168);
    if (v49)
    {
      v133 = *(v48 + 184);
      v130 += v132;
      v131 += v133;
    }

    else
    {
      LODWORD(v133) = *(v48 + 184);
    }

    v2713 = v133;
    v134 = v117 & 3 | (4 * (v116 & 3u));
    v2732 = v126 & 3 | (4 * (v125 & 3u));
    v2726 = *(v48 + 168);
    v135 = 2 * v132;
    v136 = 2 * v133;
    v2727 = v119 & 7;
    v2722 = v116 & 7;
    v137 = v25;
    v138 = v25;
    v139 = v25;
    v2706 = v120 * v118;
    v140 = v25;
    v137.i32[0] = 65537 * (8 - v120) * (8 - v118);
    v138.i32[0] = 65537 * (8 - v120) * v118;
    a9 = xmmword_2773B3DF0;
    v139.i32[0] = 65537 * v120 * (8 - v118);
    v140.i32[0] = 65537 * v120 * v118;
    v2829 = vqtbl1q_s8(v137, xmmword_2773B3DF0);
    v2830 = vqtbl1q_s8(v138, xmmword_2773B3DF0);
    v2728 = v129;
    v141 = v25;
    v142 = v25;
    a7 = v25;
    v2707 = v129 * v2754;
    a8 = v25;
    v143 = v2736 + v35;
    v144 = v2738 + v36;
    v145 = v2738 + v36 + (v117 >> 2);
    if (v2736 + v35 + (v116 >> 2) <= -18)
    {
      v146 = -18;
    }

    else
    {
      v146 = v2736 + v35 + (v116 >> 2);
    }

    if (v145 <= -18)
    {
      v147 = -18;
    }

    else
    {
      v147 = v145;
    }

    v148 = *(v48 + 164);
    a7.n128_u32[0] = 65537 * v129 * (8 - v2754);
    v149 = *(v48 + 180);
    if (v146 >= v121 + 1)
    {
      v150 = v121 + 1;
    }

    else
    {
      v150 = v146;
    }

    if (v147 >= v123 + 1)
    {
      v151 = v123 + 1;
    }

    else
    {
      v151 = v147;
    }

    v152 = v143 + (v125 >> 2);
    v153 = v144 + (v126 >> 2);
    if (v152 <= -18)
    {
      v152 = -18;
    }

    if (v153 <= -18)
    {
      v153 = -18;
    }

    v154 = *(v48 + 132);
    v155 = *(v48 + 148);
    a10 = vqtbl1q_s8(v140, xmmword_2773B3DF0);
    v2831 = vqtbl1q_s8(v139, xmmword_2773B3DF0);
    v2832 = a10;
    v141.i32[0] = 65537 * (8 - v129) * (8 - v2754);
    v156 = vqtbl1q_s8(v141, xmmword_2773B3DF0);
    v142.i32[0] = 65537 * (8 - v129) * v2754;
    v157 = vqtbl1q_s8(v142, xmmword_2773B3DF0);
    v158 = vqtbl1q_s8(a7, xmmword_2773B3DF0);
    a8.n128_u32[0] = 65537 * v129 * v2754;
    a6 = vqtbl1q_s8(a8, xmmword_2773B3DF0);
    v2833 = v156;
    v2834 = v157;
    v2835 = v158;
    v2836 = a6;
    if (v152 >= v148 + 1)
    {
      v159 = v148 + 1;
    }

    else
    {
      v159 = v152;
    }

    if (v153 >= v154 + 1)
    {
      v160 = v154 + 1;
    }

    else
    {
      v160 = v153;
    }

    v161 = ((v116 >> 2) & 0xFFFFFFFE) + v143;
    v162 = (v119 >> 3) + (v144 >> 1);
    v2721 = v161;
    if (v161 <= -16)
    {
      v161 = -16;
    }

    if (v162 <= -8)
    {
      v163 = -8;
    }

    else
    {
      v163 = v162;
    }

    v164 = v122 - 2;
    v2718 = v122 - 2;
    if (v161 < v122 - 2)
    {
      v164 = v161;
    }

    if (v163 >= v124)
    {
      v165 = v124 - 1;
    }

    else
    {
      v165 = v163;
    }

    v166 = ((v125 >> 2) & 0xFFFFFFFE) + v143;
    v167 = (v128 >> 3) + (v144 >> 1);
    v2719 = v166;
    if (v166 <= -16)
    {
      v166 = -16;
    }

    if (v167 <= -8)
    {
      v167 = -8;
    }

    v168 = &v2752[2 * v36] + 2 * v35;
    v169 = v36 >> 1;
    v2720 = v149 - 2;
    if (v166 >= v149 - 2)
    {
      v166 = v149 - 2;
    }

    v170 = v167 < v155;
    v20 = v2757;
    v171 = v155 - 1;
    v172 = &v2757[2 * v169] + 2 * v35;
    if (v170)
    {
      v171 = v167;
    }

    v173 = (v2740 + v35 + (v2725 * v36));
    v2708 = v151;
    v2709 = v160;
    v174 = (v2739 + v35 + (v169 * v2724));
    v2733 = v135;
    v2734 = v136;
    v2710 = v159;
    v175 = v165 * v2778;
    v176 = (v2746 + v150 + v151 * v2749);
    v177 = (v130 + v159 + v160 * v135);
    _X20 = (v2758 + v164 + v165 * v2778);
    v179 = v171 * v136;
    _X28 = (v131 + v166 + v179);
    v181 = v2743;
    if (v2743 == 4)
    {
      v2782 = v10;
      v2796 = v25;
      if (v2741 == 8)
      {
        v191 = 2 * v2717;
        v192 = &v176[2 * v2717];
        v19 = v2752;
        switch(v134)
        {
          case 1:
            v717 = v176;
            v718 = &v176[v191];
            v2767 = v177;
            v719 = sub_27729F23C(&v2811, v717, v2749, v156, v157, *v158.i64, a6, a7.n128_f64[0], a8, xmmword_2773B3DF0, a10);
            v199 = sub_27729F23C(&v2813, v718, v2749, v719, v720, v721, v722, v723, v724, v725, v726);
            goto LABEL_467;
          case 2:
            v584 = v176;
            v585 = &v176[v191];
            v2767 = v177;
            v586 = sub_27729F394(&v2811, v584, v2749, *v156.i64, v157, v158, a6.n128_f64[0], a7, a8, xmmword_2773B3DF0, a10);
            *v199.i64 = sub_27729F394(&v2813, v585, v2749, v586, v587, v588, v589, v590, v591, v592, v593);
            goto LABEL_467;
          case 3:
            v665 = v176;
            v666 = &v176[v191];
            v2767 = v177;
            v667 = sub_27729F4D8(&v2811, v665, v2749, v156, v157, *v158.i64, a6, a7.n128_f64[0], a8, xmmword_2773B3DF0, a10);
            v199 = sub_27729F4D8(&v2813, v666, v2749, v667, v668, v669, v670, v671, v672, v673, v674);
            goto LABEL_467;
          case 4:
            v2764 = &v176[v191];
            v541 = v176;
            v528 = v177;
            sub_27729C91C(&v2811, 8u, v541, v2749);
            v199 = sub_27729C91C(&v2813, 8u, v2764, v2749);
            goto LABEL_470;
          case 5:
            v2770 = &v176[v191];
            v808 = v176;
            v528 = v177;
            *v809.i64 = sub_27729CAF0(&v2811, 8u, v808, v2749, v156, *v157.i64, *v158.i64, a6.n128_f64[0], a7.n128_f64[0], a8, xmmword_2773B3DF0, a10);
            *v199.i64 = sub_27729CAF0(&v2813, 8u, v2770, v2749, v809, v810, v811, v812, v813, v814, v815, v816);
            goto LABEL_470;
          case 6:
            v2772 = &v176[v191];
            v826 = v176;
            v528 = v177;
            *v827.i64 = sub_27729CDD0(&v2811, 8u, v826, v2749, v156, v157, v158, a6, a7, a8, xmmword_2773B3DF0, a10);
            *v199.i64 = sub_27729CDD0(&v2813, 8u, v2772, v2749, v827, v828, v829, v830, v831, v832, v833, v834);
            goto LABEL_470;
          case 7:
            v2769 = &v176[v191];
            v681 = v176;
            v528 = v177;
            v682 = sub_27729D274(&v2811, 8u, v681, v2749, *v156.i64, *v157.i64, *v158.i64, a6.n128_f64[0], a7.n128_f64[0], a8.n128_f64[0], xmmword_2773B3DF0, a10);
            *v199.i64 = sub_27729D274(&v2813, 8u, v2769, v2749, v682, v683, v684, v685, v686, v687, v688, v689);
            goto LABEL_470;
          case 8:
            v2773 = &v176[v191];
            v847 = v176;
            v528 = v177;
            sub_27729D550(&v2811, 8u, v847, v2749);
            v199 = sub_27729D550(&v2813, 8u, v2773, v2749);
            goto LABEL_470;
          case 9:
            v2766 = &v176[v191];
            v563 = v176;
            v528 = v177;
            sub_27729D714(&v2811, 8u, v563, v2749);
            *v199.i64 = sub_27729D714(&v2813, 8u, v2766, v2749);
            goto LABEL_470;
          case 10:
            v837 = v176;
            v838 = &v176[v191];
            v2767 = v177;
            *v839.i64 = sub_27729F62C(&v2811, v837, v2749, v156, v157, v158, a6, a7, a8, xmmword_2773B3DF0, a10);
            *v199.i64 = sub_27729F62C(&v2813, v838, v2749, v839, v840, v841, v842, v843, v844, v845, v846);
LABEL_467:
            v177 = v2767;
            goto LABEL_471;
          case 11:
            v2763 = &v176[v191];
            v540 = v176;
            v528 = v177;
            sub_27729DE6C(&v2811, 8u, v540, v2749);
            *v199.i64 = sub_27729DE6C(&v2813, 8u, v2763, v2749);
            goto LABEL_470;
          case 12:
            v2765 = &v176[v191];
            v542 = v176;
            v528 = v177;
            sub_27729E5C4(&v2811, 8u, v542, v2749);
            v199 = sub_27729E5C4(&v2813, 8u, v2765, v2749);
            goto LABEL_470;
          case 13:
            v2771 = &v176[v191];
            v817 = v176;
            v528 = v177;
            *v818.i64 = sub_27729E798(&v2811, 8u, v817, v2749, v156, *v157.i64, *v158.i64, a6.n128_f64[0], a7.n128_f64[0], a8, xmmword_2773B3DF0, a10);
            *v199.i64 = sub_27729E798(&v2813, 8u, v2771, v2749, v818, v819, v820, v821, v822, v823, v824, v825);
            goto LABEL_470;
          case 14:
            v2762 = &v176[v191];
            v527 = v176;
            v528 = v177;
            *v529.i64 = sub_27729EA7C(&v2811, 8u, v527, v2749, v156, v157, v158, a6, a7, a8, xmmword_2773B3DF0, a10);
            *v199.i64 = sub_27729EA7C(&v2813, 8u, v2762, v2749, v529, v530, v531, v532, v533, v534, v535, v536);
            goto LABEL_470;
          case 15:
            v2768 = &v176[v191];
            v656 = v176;
            v528 = v177;
            v657 = sub_27729EF20(&v2811, 8u, v656, v2749, *v156.i64, *v157.i64, *v158.i64, a6.n128_f64[0], a7.n128_f64[0], a8.n128_f64[0], xmmword_2773B3DF0, a10);
            *v199.i64 = sub_27729EF20(&v2813, 8u, v2768, v2749, v657, v658, v659, v660, v661, v662, v663, v664);
LABEL_470:
            v177 = v528;
LABEL_471:
            v10.i64[1] = v2782.i64[1];
            v25 = v2796;
            break;
          default:
            v156.i32[0] = *(v176 + v2749);
            v157.i32[0] = v176[v2717];
            v158.i32[0] = *v176;
            a6.n128_u32[0] = *(v176 + 6 * v2717);
            v193.i64[0] = vzip1q_s8(v158, v25).u64[0];
            v194 = vzip1q_s8(v156, v25);
            v195.i64[0] = vzip1q_s8(v157, v25).u64[0];
            v196 = vzip1q_s8(a6, v25);
            v193.i64[1] = v194.i64[0];
            v195.i64[1] = v196.i64[0];
            v2811 = v193;
            v2812 = v195;
            v194.i32[0] = *v192;
            v195.i32[0] = *(v192 + v2749);
            v193.i32[0] = v192[v2717];
            v196.i32[0] = *(v192 + 6 * v2717);
            v199.i64[0] = vzip1q_s8(v194, v25).u64[0];
            v197 = vzip1q_s8(v195, v25);
            v200.i64[0] = vzip1q_s8(v193, v25).u64[0];
            v198 = vzip1q_s8(v196, v25);
            v199.i64[1] = v197.i64[0];
            v200.i64[1] = v198.i64[0];
            v2813 = v199;
            v2814[0] = v200;
            break;
        }

        v848 = &v177[2 * v2726];
        switch(v2732)
        {
          case 1:
            v896 = sub_27729F23C(&v2815, v177, v135, v199, v197, *v200.i64, v198, a7.n128_f64[0], a8, a9, a10);
            v854 = sub_27729F23C(&v2817, v848, v135, v896, v897, v898, v899, v900, v901, v902, v903);
            break;
          case 2:
            v864 = sub_27729F394(&v2815, v177, v135, *v199.i64, v197, v200, *v198.i64, a7, a8, a9, a10);
            sub_27729F394(&v2817, v848, v135, v864, v865, v866, v867, v868, v869, v870, v871);
            break;
          case 3:
            v880 = sub_27729F4D8(&v2815, v177, v135, v199, v197, *v200.i64, v198, a7.n128_f64[0], a8, a9, a10);
            v854 = sub_27729F4D8(&v2817, v848, v135, v880, v881, v882, v883, v884, v885, v886, v887);
            break;
          case 4:
            sub_27729C91C(&v2815, 8u, v177, v135);
            v854 = sub_27729C91C(&v2817, 8u, v848, v135);
            break;
          case 5:
            *v904.i64 = sub_27729CAF0(&v2815, 8u, v177, v135, v199, *v197.i64, *v200.i64, *v198.i64, a7.n128_f64[0], a8, a9, a10);
            sub_27729CAF0(&v2817, 8u, v848, v135, v904, v905, v906, v907, v908, v909, v910, v911);
            break;
          case 6:
            *v920.i64 = sub_27729CDD0(&v2815, 8u, v177, v135, v199, v197, v200, v198, a7, a8, a9, a10);
            sub_27729CDD0(&v2817, 8u, v848, v135, v920, v921, v922, v923, v924, v925, v926, v927);
            break;
          case 7:
            v888 = sub_27729D274(&v2815, 8u, v177, v135, *v199.i64, *v197.i64, *v200.i64, *v198.i64, a7.n128_f64[0], a8.n128_f64[0], a9, a10);
            sub_27729D274(&v2817, 8u, v848, v135, v888, v889, v890, v891, v892, v893, v894, v895);
            break;
          case 8:
            sub_27729D550(&v2815, 8u, v177, v135);
            v854 = sub_27729D550(&v2817, 8u, v848, v135);
            break;
          case 9:
            sub_27729D714(&v2815, 8u, v177, v135);
            sub_27729D714(&v2817, 8u, v848, v135);
            break;
          case 10:
            *v928.i64 = sub_27729F62C(&v2815, v177, v135, v199, v197, v200, v198, a7, a8, a9, a10);
            sub_27729F62C(&v2817, v848, v135, v928, v929, v930, v931, v932, v933, v934, v935);
            break;
          case 11:
            sub_27729DE6C(&v2815, 8u, v177, v135);
            sub_27729DE6C(&v2817, 8u, v848, v135);
            break;
          case 12:
            sub_27729E5C4(&v2815, 8u, v177, v135);
            v854 = sub_27729E5C4(&v2817, 8u, v848, v135);
            break;
          case 13:
            *v912.i64 = sub_27729E798(&v2815, 8u, v177, v135, v199, *v197.i64, *v200.i64, *v198.i64, a7.n128_f64[0], a8, a9, a10);
            sub_27729E798(&v2817, 8u, v848, v135, v912, v913, v914, v915, v916, v917, v918, v919);
            break;
          case 14:
            *v856.i64 = sub_27729EA7C(&v2815, 8u, v177, v135, v199, v197, v200, v198, a7, a8, a9, a10);
            sub_27729EA7C(&v2817, 8u, v848, v135, v856, v857, v858, v859, v860, v861, v862, v863);
            break;
          case 15:
            v872 = sub_27729EF20(&v2815, 8u, v177, v135, *v199.i64, *v197.i64, *v200.i64, *v198.i64, a7.n128_f64[0], a8.n128_f64[0], a9, a10);
            sub_27729EF20(&v2817, 8u, v848, v135, v872, v873, v874, v875, v876, v877, v878, v879);
            break;
          default:
            v199.i32[0] = *(v177 + v135);
            v197.i32[0] = v177[v2726];
            v200.i32[0] = *v177;
            v198.i32[0] = *(v177 + 6 * v2726);
            v849.i64[0] = vzip1q_s8(v200, v25).u64[0];
            v850 = vzip1q_s8(v199, v25);
            v851.i64[0] = vzip1q_s8(v197, v25).u64[0];
            v852 = vzip1q_s8(v198, v25);
            v849.i64[1] = v850.i64[0];
            v851.i64[1] = v852.i64[0];
            v2815 = v849;
            v2816 = v851;
            v850.i32[0] = *v848;
            v851.i32[0] = *(v848 + v135);
            v849.i32[0] = v848[v2726];
            v852.i32[0] = *(v848 + 6 * v2726);
            v854.i64[0] = vzip1q_s8(v850, v25).u64[0];
            v853 = vzip1q_s8(v851, v25);
            v855.i64[0] = vzip1q_s8(v849, v25).u64[0];
            v854.i64[1] = v853.i64[0];
            v855.i64[1] = vzip1q_s8(v852, v25).u64[0];
            v2817 = v854;
            v2818[0] = v855;
            break;
        }

        v939 = 1;
        v940 = &v2811;
        do
        {
          v941 = v939;
          v854.i64[0] = v940->i64[0];
          v853.i64[0] = v940->i64[1];
          a7.n128_u64[0] = v940[1].u64[0];
          a8.n128_u64[0] = v940[1].u64[1];
          v855.i64[0] = v940[32].i64[0];
          a9.n128_u64[0] = v940[32].u64[1];
          a10.n128_u64[0] = v940[33].u64[0];
          v10.i64[0] = v940[33].i64[1];
          v942 = vrhaddq_u16(v854, v855);
          v855 = vrhaddq_u16(v853, a9);
          v853 = vrhaddq_u16(a7, a10);
          v854 = vrhaddq_u16(a8, v10);
          if (v2752)
          {
            a7.n128_u64[0] = *v168;
            a8.n128_u64[0] = *(v168 + 32);
            a9.n128_u64[0] = *(v168 + 64);
            a10.n128_u64[0] = *(v168 + 96);
            v168 += 128;
            v942 = vaddq_s16(v942, a7);
            v855 = vaddq_s16(v855, a8);
            v853 = vaddq_s16(v853, a9);
            v854 = vaddq_s16(v854, a10);
          }

          v939 = 0;
          v940 += 2;
          v943 = COERCE_DOUBLE(vqmovun_s16(v942));
          v944 = COERCE_DOUBLE(vqmovun_s16(v855));
          v945 = COERCE_DOUBLE(vqmovun_s16(v853));
          v173->i32[0] = LODWORD(v943);
          *(v173->i32 + v2731) = LODWORD(v944);
          v946 = COERCE_DOUBLE(vqmovun_s16(v854));
          v173->i32[v2729 / 4] = LODWORD(v945);
          *(v173->i32 + v2705) = LODWORD(v946);
          v173 = (v173 + v2699);
        }

        while ((v941 & 1) != 0);
        v947 = sub_277290798(&v2820, _X20, v2778, v2722, v2727, v946, v945, v944, v943, a7, a8);
        v953 = sub_277290798(&v2821, _X20->i64 + (4 * v2711), v2778, v2722, v2727, v947, v948, v949, v950, v951, v952);
        v959 = sub_277290798(&v2825, _X28, v2734, v2754, v2728, v953, v954, v955, v956, v957, v958);
        sub_277290798(&v2826, _X28->i64 + (4 * v2713), v2734, v2754, v2728, v959, v960, v961, v962, v963, v964);
        v966.i64[0] = v2820.i64[1];
        v965.i64[0] = v2820.i64[0];
        a8.n128_u64[0] = v2821.n128_u64[1];
        a7.n128_u64[0] = v2821.n128_u64[0];
        a9.n128_u64[0] = v2825.u64[1];
        v967.i64[0] = v2825.i64[0];
        v968.i64[0] = v2826.i64[1];
        a10.n128_u64[0] = v2826.i64[0];
        a6 = vrhaddq_u16(v965, v967);
        v969 = vrhaddq_u16(v966, a9);
        v970 = vrhaddq_u16(a7, a10);
        v971 = vrhaddq_u16(a8, v968);
        v20 = v2757;
        if (v2757)
        {
          a7.n128_u64[0] = *v172;
          a8.n128_u64[0] = *(v172 + 32);
          a9.n128_u64[0] = *(v172 + 64);
          a10.n128_u64[0] = *(v172 + 96);
          a6 = vaddq_s16(a6, a7);
          v969 = vaddq_s16(v969, a8);
          v970 = vaddq_s16(v970, a9);
          v971 = vaddq_s16(v971, a10);
        }

        v26.i64[0] = 0x10001000100010;
        v26.i64[1] = 0x10001000100010;
        v27.i64[0] = 0x20002000200020;
        v27.i64[1] = 0x20002000200020;
        a6.n128_u64[0] = vqmovun_s16(a6);
        v174->i32[0] = a6.n128_u32[0];
        *(v174->i32 + v2724) = vqmovun_s16(v969).u32[0];
        v174->i32[v2723 / 4] = vqmovun_s16(v970).u32[0];
        *(v174->i32 + v2700) = vqmovun_s16(v971).u32[0];
        v10 = v2782;
        v25 = v2796;
      }

      else
      {
        v19 = v2752;
        switch(v134)
        {
          case 1:
            v537 = v177;
            v252 = sub_27729F23C(&v2811, v176, v2749, v156, v157, *v158.i64, a6, a7.n128_f64[0], a8, xmmword_2773B3DF0, a10);
            goto LABEL_489;
          case 2:
            v537 = v177;
            *v252.i64 = sub_27729F394(&v2811, v176, v2749, *v156.i64, v157, v158, a6.n128_f64[0], a7, a8, xmmword_2773B3DF0, a10);
            goto LABEL_489;
          case 3:
            v537 = v177;
            v252 = sub_27729F4D8(&v2811, v176, v2749, v156, v157, *v158.i64, a6, a7.n128_f64[0], a8, xmmword_2773B3DF0, a10);
            goto LABEL_489;
          case 4:
            v537 = v177;
            v252 = sub_27729C91C(&v2811, 8u, v176, v2749);
            goto LABEL_489;
          case 5:
            v537 = v177;
            *v252.i64 = sub_27729CAF0(&v2811, 8u, v176, v2749, v156, *v157.i64, *v158.i64, a6.n128_f64[0], a7.n128_f64[0], a8, xmmword_2773B3DF0, a10);
            goto LABEL_489;
          case 6:
            v537 = v177;
            *v252.i64 = sub_27729CDD0(&v2811, 8u, v176, v2749, v156, v157, v158, a6, a7, a8, xmmword_2773B3DF0, a10);
            goto LABEL_489;
          case 7:
            v537 = v177;
            *v252.i64 = sub_27729D274(&v2811, 8u, v176, v2749, *v156.i64, *v157.i64, *v158.i64, a6.n128_f64[0], a7.n128_f64[0], a8.n128_f64[0], xmmword_2773B3DF0, a10);
            goto LABEL_489;
          case 8:
            v537 = v177;
            v252 = sub_27729D550(&v2811, 8u, v176, v2749);
            goto LABEL_489;
          case 9:
            v537 = v177;
            *v252.i64 = sub_27729D714(&v2811, 8u, v176, v2749);
            goto LABEL_489;
          case 10:
            v537 = v177;
            *v252.i64 = sub_27729F62C(&v2811, v176, v2749, v156, v157, v158, a6, a7, a8, xmmword_2773B3DF0, a10);
            goto LABEL_489;
          case 11:
            v537 = v177;
            *v252.i64 = sub_27729DE6C(&v2811, 8u, v176, v2749);
            goto LABEL_489;
          case 12:
            v537 = v177;
            v252 = sub_27729E5C4(&v2811, 8u, v176, v2749);
            goto LABEL_489;
          case 13:
            v537 = v177;
            *v252.i64 = sub_27729E798(&v2811, 8u, v176, v2749, v156, *v157.i64, *v158.i64, a6.n128_f64[0], a7.n128_f64[0], a8, xmmword_2773B3DF0, a10);
            goto LABEL_489;
          case 14:
            v537 = v177;
            *v252.i64 = sub_27729EA7C(&v2811, 8u, v176, v2749, v156, v157, v158, a6, a7, a8, xmmword_2773B3DF0, a10);
            goto LABEL_489;
          case 15:
            v537 = v177;
            *v252.i64 = sub_27729EF20(&v2811, 8u, v176, v2749, *v156.i64, *v157.i64, *v158.i64, a6.n128_f64[0], a7.n128_f64[0], a8.n128_f64[0], xmmword_2773B3DF0, a10);
LABEL_489:
            v177 = v537;
            v10.i64[1] = v2782.i64[1];
            v25 = v2796;
            break;
          default:
            v156.i32[0] = *v176;
            v157.i32[0] = *(v176 + v2749);
            v158.i32[0] = v176[v2717];
            a6.n128_u32[0] = *(v176 + 6 * v2717);
            v252.i64[0] = vzip1q_s8(v156, v25).u64[0];
            v250 = vzip1q_s8(v157, v25);
            v253.i64[0] = vzip1q_s8(v158, v25).u64[0];
            v251 = vzip1q_s8(a6, v25);
            v252.i64[1] = v250.i64[0];
            v253.i64[1] = v251.i64[0];
            v2811 = v252;
            v2812 = v253;
            break;
        }

        switch(v2732)
        {
          case 1:
            v937 = sub_27729F23C(&v2815, v177, v2733, v252, v250, *v253.i64, v251, a7.n128_f64[0], a8, a9, a10);
            break;
          case 2:
            sub_27729F394(&v2815, v177, v2733, *v252.i64, v250, v253, *v251.i64, a7, a8, a9, a10);
            break;
          case 3:
            v937 = sub_27729F4D8(&v2815, v177, v2733, v252, v250, *v253.i64, v251, a7.n128_f64[0], a8, a9, a10);
            break;
          case 4:
            v937 = sub_27729C91C(&v2815, 8u, v177, v2733);
            break;
          case 5:
            sub_27729CAF0(&v2815, 8u, v177, v2733, v252, *v250.i64, *v253.i64, *v251.i64, a7.n128_f64[0], a8, a9, a10);
            break;
          case 6:
            sub_27729CDD0(&v2815, 8u, v177, v2733, v252, v250, v253, v251, a7, a8, a9, a10);
            break;
          case 7:
            sub_27729D274(&v2815, 8u, v177, v2733, *v252.i64, *v250.i64, *v253.i64, *v251.i64, a7.n128_f64[0], a8.n128_f64[0], a9, a10);
            break;
          case 8:
            v937 = sub_27729D550(&v2815, 8u, v177, v2733);
            break;
          case 9:
            sub_27729D714(&v2815, 8u, v177, v2733);
            break;
          case 10:
            sub_27729F62C(&v2815, v177, v2733, v252, v250, v253, v251, a7, a8, a9, a10);
            break;
          case 11:
            sub_27729DE6C(&v2815, 8u, v177, v2733);
            break;
          case 12:
            v937 = sub_27729E5C4(&v2815, 8u, v177, v2733);
            break;
          case 13:
            sub_27729E798(&v2815, 8u, v177, v2733, v252, *v250.i64, *v253.i64, *v251.i64, a7.n128_f64[0], a8, a9, a10);
            break;
          case 14:
            sub_27729EA7C(&v2815, 8u, v177, v2733, v252, v250, v253, v251, a7, a8, a9, a10);
            break;
          case 15:
            sub_27729EF20(&v2815, 8u, v177, v2733, *v252.i64, *v250.i64, *v253.i64, *v251.i64, a7.n128_f64[0], a8.n128_f64[0], a9, a10);
            break;
          default:
            v252.i32[0] = *v177;
            v250.i32[0] = *(v177 + v2733);
            v253.i32[0] = v177[v2726];
            v251.i32[0] = *(v177 + 6 * v2726);
            v937.i64[0] = vzip1q_s8(v252, v25).u64[0];
            v936 = vzip1q_s8(v250, v25);
            v938.i64[0] = vzip1q_s8(v253, v25).u64[0];
            v937.i64[1] = v936.i64[0];
            v938.i64[1] = vzip1q_s8(v251, v25).u64[0];
            v2815 = v937;
            v2816 = v938;
            break;
        }

        v936.i64[0] = v2811.i64[1];
        v937.i64[0] = v2811.i64[0];
        a8.n128_u64[0] = v2812.u64[1];
        a7.n128_u64[0] = v2812.i64[0];
        a9.n128_u64[0] = v2815.u64[1];
        v938.i64[0] = v2815.i64[0];
        v10.i64[0] = v2816.i64[1];
        a10.n128_u64[0] = v2816.i64[0];
        v972 = vrhaddq_u16(v937, v938);
        v973 = vrhaddq_u16(v936, a9);
        v974 = vrhaddq_u16(a7, a10);
        v975 = vrhaddq_u16(a8, v10);
        if (v2752)
        {
          a7.n128_u64[0] = *v168;
          a8.n128_u64[0] = *(v168 + 32);
          a9.n128_u64[0] = *(v168 + 64);
          a10.n128_u64[0] = *(v168 + 96);
          v972 = vaddq_s16(v972, a7);
          v973 = vaddq_s16(v973, a8);
          v974 = vaddq_s16(v974, a9);
          v975 = vaddq_s16(v975, a10);
        }

        v976 = COERCE_DOUBLE(vqmovun_s16(v972));
        v977 = COERCE_DOUBLE(vqmovun_s16(v973));
        v173->i32[0] = LODWORD(v976);
        *(v173->i32 + v2731) = LODWORD(v977);
        v978 = COERCE_DOUBLE(vqmovun_s16(v974));
        v979 = COERCE_DOUBLE(vqmovun_s16(v975));
        v173->i32[v2729 / 4] = LODWORD(v978);
        *(v173->i32 + v2705) = LODWORD(v979);
        v980 = sub_277290798(&v2820, _X20, v2778, v2722, v2727, v978, v979, v977, v976, a7, a8);
        sub_277290798(&v2825, _X28, v2734, v2754, v2728, v980, v981, v982, v983, v984, v985);
        v987.i64[0] = v2820.i64[1];
        v986.i64[0] = v2820.i64[0];
        a6.n128_u64[0] = v2825.u64[1];
        v988.i64[0] = v2825.i64[0];
        v989 = vrhaddq_u16(v986, v988);
        v990 = vrhaddq_u16(v987, a6);
        v20 = v2757;
        if (v2757)
        {
          v987.i64[0] = *v172;
          a6.n128_u64[0] = *(v172 + 32);
          v989 = vaddq_s16(v989, v987);
          v990 = vaddq_s16(v990, a6);
        }

        v10 = v2782;
        v25 = v2796;
        v26.i64[0] = 0x10001000100010;
        v26.i64[1] = 0x10001000100010;
        v27.i64[0] = 0x20002000200020;
        v27.i64[1] = 0x20002000200020;
        v174->i32[0] = vqmovun_s16(v989).u32[0];
        *(v174->i32 + v2724) = vqmovun_s16(v990).u32[0];
      }

      goto LABEL_1064;
    }

    v2744 = v130;
    v182 = v179;
    if (v181 == 8)
    {
      if (v2741 == 4)
      {
        v19 = v2752;
        v2787 = v10;
        v2801 = v25;
        switch(v134)
        {
          case 1:
            v1788 = 0;
            v1789 = &v176[-v2717];
            v1790 = (v1789 + v2749);
            v1791 = (v1790 + v2749);
            v1792 = (v1791 + v2749);
            v157 = vzip1q_s8(*(v1792 + v2749), v25);
            v267 = vzip1q_s8(*v1792, v25);
            v158 = vzip1q_s8(*v1791, v25);
            a6 = vzip1q_s8(*v1790, v25);
            a7 = vzip1q_s8(*v1789, v25);
            v1793 = (v2746 + 5 * v2749 + v150 + 2 * v2717 * v2708 - 4 * v2717);
            v265 = v2732;
            do
            {
              a8 = a6;
              a6 = v158;
              v158 = v267;
              v267 = v157;
              v157 = vzip1q_s8(*v1793, v25);
              v1794 = vsubq_s16(vshlq_n_s16(vaddq_s16(a6, v158), 2uLL), vaddq_s16(a8, v267));
              a10 = vshlq_n_s16(v1794, 2uLL);
              v1795 = vaddq_s16(vaddq_s16(a7, v1794), a10);
              a9 = vaddq_s16(v157, v26);
              *(&v2811 + v1788) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(v1795, a9), 5uLL))), a6);
              v1788 += 16;
              v1793 = (v1793 + v2749);
              a7 = a8;
            }

            while (v1788 != 64);
            break;
          case 2:
            v1646 = 0;
            v1647 = &v176[-v2717];
            v1648 = (v1647 + v2749);
            v1649 = (v1648 + v2749);
            v1650 = (v1649 + v2749);
            v158 = vzip1q_s8(*(v1650 + v2749), v25);
            v267 = vzip1q_s8(*v1650, v25);
            v157 = vzip1q_s8(*v1649, v25);
            a6 = vzip1q_s8(*v1648, v25);
            a7 = vzip1q_s8(*v1647, v25);
            v1651 = (v2746 + 5 * v2749 + v150 + 2 * v2717 * v2708 - 4 * v2717);
            v265 = v2732;
            do
            {
              a8 = a6;
              a6 = v157;
              v157 = v267;
              v267 = v158;
              v1652 = &v2811.i8[v1646];
              v158 = vzip1q_s8(*v1651, v25);
              v1653 = vsubq_s16(vshlq_n_s16(vaddq_s16(a6, v157), 2uLL), vaddq_s16(a8, v267));
              a10 = vshlq_n_s16(v1653, 2uLL);
              v1654 = vaddq_s16(vaddq_s16(a7, v1653), a10);
              a9 = vaddq_s16(v158, v26);
              a9.n128_u64[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(v1654, a9), 5uLL));
              a10.n128_u64[0] = v25.i64[0];
              vst2_s8(v1652, a9);
              v1646 += 16;
              v1651 = (v1651 + v2749);
              a7 = a8;
            }

            while (v1646 != 64);
            break;
          case 3:
            v1729 = 0;
            v1730 = &v176[-v2717];
            v1731 = (v1730 + v2749);
            v1732 = (v1731 + v2749);
            v1733 = (v1732 + v2749);
            v157 = vzip1q_s8(*(v1733 + v2749), v25);
            v267 = vzip1q_s8(*v1733, v25);
            v158 = vzip1q_s8(*v1732, v25);
            a6 = vzip1q_s8(*v1731, v25);
            a7 = vzip1q_s8(*v1730, v25);
            v1734 = (v2746 + 5 * v2749 + v150 + 2 * v2717 * v2708 - 4 * v2717);
            v265 = v2732;
            do
            {
              a8 = a6;
              a6 = v158;
              v158 = v267;
              v267 = v157;
              v157 = vzip1q_s8(*v1734, v25);
              v1735 = vsubq_s16(vshlq_n_s16(vaddq_s16(a6, v158), 2uLL), vaddq_s16(a8, v267));
              a10 = vshlq_n_s16(v1735, 2uLL);
              v1736 = vaddq_s16(vaddq_s16(a7, v1735), a10);
              a9 = vaddq_s16(v157, v26);
              *(&v2811 + v1729) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(v1736, a9), 5uLL))), v158);
              v1729 += 16;
              v1734 = (v1734 + v2749);
              a7 = a8;
            }

            while (v1729 != 64);
            break;
          case 4:
            v1567 = v177;
            sub_27729C91C(&v2811, 0x10u, v176, v2749);
            v267 = sub_27729C91C(&v2811.i64[1], 0x10u, (v176 + 1), v2749);
            goto LABEL_978;
          case 5:
            v1567 = v177;
            *v2053.i64 = sub_27729CAF0(&v2811, 0x10u, v176, v2749, v156, *v157.i64, *v158.i64, a6.n128_f64[0], a7.n128_f64[0], a8, xmmword_2773B3DF0, a10);
            *v267.i64 = sub_27729CAF0(&v2811.i64[1], 0x10u, (v176 + 1), v2749, v2053, v2054, v2055, v2056, v2057, v2058, v2059, v2060);
            goto LABEL_978;
          case 6:
            v1567 = v177;
            *v2119.i64 = sub_27729CDD0(&v2811, 0x10u, v176, v2749, v156, v157, v158, a6, a7, a8, xmmword_2773B3DF0, a10);
            *v267.i64 = sub_27729CDD0(&v2811.i64[1], 0x10u, (v176 + 1), v2749, v2119, v2120, v2121, v2122, v2123, v2124, v2125, v2126);
            goto LABEL_978;
          case 7:
            v1567 = v177;
            v1740 = sub_27729D274(&v2811, 0x10u, v176, v2749, *v156.i64, *v157.i64, *v158.i64, a6.n128_f64[0], a7.n128_f64[0], a8.n128_f64[0], xmmword_2773B3DF0, a10);
            *v267.i64 = sub_27729D274(&v2811.i64[1], 0x10u, (v176 + 1), v2749, v1740, v1741, v1742, v1743, v1744, v1745, v1746, v1747);
            goto LABEL_978;
          case 8:
            v1567 = v177;
            sub_27729D550(&v2811, 0x10u, v176, v2749);
            v267 = sub_27729D550(&v2811.i64[1], 0x10u, (v176 + 1), v2749);
            goto LABEL_978;
          case 9:
            v1567 = v177;
            sub_27729D714(&v2811, 0x10u, v176, v2749);
            *v267.i64 = sub_27729D714(&v2811.i64[1], 0x10u, (v176 + 1), v2749);
            goto LABEL_978;
          case 10:
            v1567 = v177;
            sub_27729B7DC(&v2811, 16, v176, v2749, 4);
            goto LABEL_978;
          case 11:
            v1567 = v177;
            sub_27729DE6C(&v2811, 0x10u, v176, v2749);
            *v267.i64 = sub_27729DE6C(&v2811.i64[1], 0x10u, (v176 + 1), v2749);
            goto LABEL_978;
          case 12:
            v1567 = v177;
            sub_27729E5C4(&v2811, 0x10u, v176, v2749);
            v267 = sub_27729E5C4(&v2811.i64[1], 0x10u, (v176 + 1), v2749);
            goto LABEL_978;
          case 13:
            v1567 = v177;
            *v2111.i64 = sub_27729E798(&v2811, 0x10u, v176, v2749, v156, *v157.i64, *v158.i64, a6.n128_f64[0], a7.n128_f64[0], a8, xmmword_2773B3DF0, a10);
            *v267.i64 = sub_27729E798(&v2811.i64[1], 0x10u, (v176 + 1), v2749, v2111, v2112, v2113, v2114, v2115, v2116, v2117, v2118);
            goto LABEL_978;
          case 14:
            v1567 = v177;
            *v1568.i64 = sub_27729EA7C(&v2811, 0x10u, v176, v2749, v156, v157, v158, a6, a7, a8, xmmword_2773B3DF0, a10);
            *v267.i64 = sub_27729EA7C(&v2811.i64[1], 0x10u, (v176 + 1), v2749, v1568, v1569, v1570, v1571, v1572, v1573, v1574, v1575);
            goto LABEL_978;
          case 15:
            v1567 = v177;
            v1713 = sub_27729EF20(&v2811, 0x10u, v176, v2749, *v156.i64, *v157.i64, *v158.i64, a6.n128_f64[0], a7.n128_f64[0], a8.n128_f64[0], xmmword_2773B3DF0, a10);
            *v267.i64 = sub_27729EF20(&v2811.i64[1], 0x10u, (v176 + 1), v2749, v1713, v1714, v1715, v1716, v1717, v1718, v1719, v1720);
LABEL_978:
            v177 = v1567;
            v26.i64[0] = 0x10001000100010;
            v26.i64[1] = 0x10001000100010;
            v25 = v2801;
            v265 = v2732;
            break;
          default:
            v264 = 0;
            v265 = v2732;
            do
            {
              v266 = &v2811.i8[v264];
              v267 = *v176;
              v176 = (v176 + v2749);
              v157.i64[0] = v25.i64[0];
              vst2_s8(v266, *(&v157 - 8));
              v264 += 16;
            }

            while (v264 != 64);
            break;
        }

        switch(v265)
        {
          case 1:
            v2194 = 0;
            v2195 = &v177[-v2726];
            v2196 = (v2195 + v2733);
            v2197 = (v2196 + v2733);
            v2198 = (v2197 + v2733);
            v2199 = vzip1q_s8(*(v2198 + v2733), v25);
            v2200 = vzip1q_s8(*v2198, v25);
            v2201 = vzip1q_s8(*v2197, v25);
            v2202 = vzip1q_s8(*v2196, v25);
            v2203 = vzip1q_s8(*v2195, v25);
            v2204 = (v2744 + 5 * v2733 + v2710 + 2 * v2726 * v2709 - 4 * v2726);
            v2129 = v2725;
            v2130 = v2729;
            v2131 = v2705;
            do
            {
              v2205 = v2202;
              v2202 = v2201;
              v2201 = v2200;
              v2200 = v2199;
              v2199 = vzip1q_s8(*v2204, v25);
              v2206 = vsubq_s16(vshlq_n_s16(vaddq_s16(v2202, v2201), 2uLL), vaddq_s16(v2205, v2200));
              *(&v2815 + v2194) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v2203, v2206), vshlq_n_s16(v2206, 2uLL)), vaddq_s16(v2199, v26)), 5uLL))), v2202);
              v2194 += 16;
              v2204 = (v2204 + v2733);
              v2203 = v2205;
            }

            while (v2194 != 64);
            break;
          case 2:
            v2148 = 0;
            v2149 = &v177[-v2726];
            v2150 = (v2149 + v2733);
            v2151 = (v2150 + v2733);
            v2152 = (v2151 + v2733);
            v2153 = vzip1q_s8(*(v2152 + v2733), v25);
            v2154 = vzip1q_s8(*v2152, v25);
            v2155 = vzip1q_s8(*v2151, v25);
            v2156 = vzip1q_s8(*v2150, v25);
            v2157 = vzip1q_s8(*v2149, v25);
            v2158 = (v2744 + 5 * v2733 + v2710 + 2 * v2726 * v2709 - 4 * v2726);
            v2129 = v2725;
            v2130 = v2729;
            v2131 = v2705;
            do
            {
              v2159 = v2156;
              v2156 = v2155;
              v2155 = v2154;
              v2154 = v2153;
              v2160 = &v2815.i8[v2148];
              v2153 = vzip1q_s8(*v2158, v25);
              v2161 = vsubq_s16(vshlq_n_s16(vaddq_s16(v2156, v2155), 2uLL), vaddq_s16(v2159, v2154));
              *v2161.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v2157, v2161), vshlq_n_s16(v2161, 2uLL)), vaddq_s16(v2153, v26)), 5uLL));
              v2162 = v25.i64[0];
              vst2_s8(v2160, v2161);
              v2148 += 16;
              v2158 = (v2158 + v2733);
              v2157 = v2159;
            }

            while (v2148 != 64);
            break;
          case 3:
            v2172 = 0;
            v2173 = &v177[-v2726];
            v2174 = (v2173 + v2733);
            v2175 = (v2174 + v2733);
            v2176 = (v2175 + v2733);
            v2177 = vzip1q_s8(*(v2176 + v2733), v25);
            v2178 = vzip1q_s8(*v2176, v25);
            v2179 = vzip1q_s8(*v2175, v25);
            v2180 = vzip1q_s8(*v2174, v25);
            v2181 = vzip1q_s8(*v2173, v25);
            v2182 = (v2744 + 5 * v2733 + v2710 + 2 * v2726 * v2709 - 4 * v2726);
            v2129 = v2725;
            v2130 = v2729;
            v2131 = v2705;
            do
            {
              v2183 = v2180;
              v2180 = v2179;
              v2179 = v2178;
              v2178 = v2177;
              v2177 = vzip1q_s8(*v2182, v25);
              v2184 = vsubq_s16(vshlq_n_s16(vaddq_s16(v2180, v2179), 2uLL), vaddq_s16(v2183, v2178));
              *(&v2815 + v2172) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v2181, v2184), vshlq_n_s16(v2184, 2uLL)), vaddq_s16(v2177, v26)), 5uLL))), v2179);
              v2172 += 16;
              v2182 = (v2182 + v2733);
              v2181 = v2183;
            }

            while (v2172 != 64);
            break;
          case 4:
            v2145 = v177;
            sub_27729C91C(&v2815, 0x10u, v177, v2733);
            sub_27729C91C(&v2815.i64[1], 0x10u, (v2145 + 1), v2733);
            goto LABEL_1004;
          case 5:
            v2207 = v177;
            *v2208.i64 = sub_27729CAF0(&v2815, 0x10u, v177, v2733, v267, *v157.i64, *v158.i64, a6.n128_f64[0], a7.n128_f64[0], a8, a9, a10);
            sub_27729CAF0(&v2815.i64[1], 0x10u, (v2207 + 1), v2733, v2208, v2209, v2210, v2211, v2212, v2213, v2214, v2215);
            goto LABEL_1004;
          case 6:
            v2225 = v177;
            *v2226.i64 = sub_27729CDD0(&v2815, 0x10u, v177, v2733, v267, v157, v158, a6, a7, a8, a9, a10);
            sub_27729CDD0(&v2815.i64[1], 0x10u, (v2225 + 1), v2733, v2226, v2227, v2228, v2229, v2230, v2231, v2232, v2233);
            goto LABEL_1004;
          case 7:
            v2185 = v177;
            v2186 = sub_27729D274(&v2815, 0x10u, v177, v2733, *v267.i64, *v157.i64, *v158.i64, a6.n128_f64[0], a7.n128_f64[0], a8.n128_f64[0], a9, a10);
            sub_27729D274(&v2815.i64[1], 0x10u, (v2185 + 1), v2733, v2186, v2187, v2188, v2189, v2190, v2191, v2192, v2193);
            goto LABEL_1004;
          case 8:
            v2234 = v177;
            sub_27729D550(&v2815, 0x10u, v177, v2733);
            sub_27729D550(&v2815.i64[1], 0x10u, (v2234 + 1), v2733);
            goto LABEL_1004;
          case 9:
            v2147 = v177;
            sub_27729D714(&v2815, 0x10u, v177, v2733);
            sub_27729D714(&v2815.i64[1], 0x10u, (v2147 + 1), v2733);
            goto LABEL_1004;
          case 10:
            sub_27729B7DC(&v2815, 16, v177, v2733, 4);
            goto LABEL_1004;
          case 11:
            v2144 = v177;
            sub_27729DE6C(&v2815, 0x10u, v177, v2733);
            sub_27729DE6C(&v2815.i64[1], 0x10u, (v2144 + 1), v2733);
            goto LABEL_1004;
          case 12:
            v2146 = v177;
            sub_27729E5C4(&v2815, 0x10u, v177, v2733);
            sub_27729E5C4(&v2815.i64[1], 0x10u, (v2146 + 1), v2733);
            goto LABEL_1004;
          case 13:
            v2216 = v177;
            *v2217.i64 = sub_27729E798(&v2815, 0x10u, v177, v2733, v267, *v157.i64, *v158.i64, a6.n128_f64[0], a7.n128_f64[0], a8, a9, a10);
            sub_27729E798(&v2815.i64[1], 0x10u, (v2216 + 1), v2733, v2217, v2218, v2219, v2220, v2221, v2222, v2223, v2224);
            goto LABEL_1004;
          case 14:
            v2135 = v177;
            *v2136.i64 = sub_27729EA7C(&v2815, 0x10u, v177, v2733, v267, v157, v158, a6, a7, a8, a9, a10);
            sub_27729EA7C(&v2815.i64[1], 0x10u, (v2135 + 1), v2733, v2136, v2137, v2138, v2139, v2140, v2141, v2142, v2143);
            goto LABEL_1004;
          case 15:
            v2163 = v177;
            v2164 = sub_27729EF20(&v2815, 0x10u, v177, v2733, *v267.i64, *v157.i64, *v158.i64, a6.n128_f64[0], a7.n128_f64[0], a8.n128_f64[0], a9, a10);
            sub_27729EF20(&v2815.i64[1], 0x10u, (v2163 + 1), v2733, v2164, v2165, v2166, v2167, v2168, v2169, v2170, v2171);
LABEL_1004:
            v2129 = v2725;
            v2130 = v2729;
            v2131 = v2705;
            break;
          default:
            v2128 = 0;
            v2129 = v2725;
            v2130 = v2729;
            v2131 = v2705;
            do
            {
              v2132 = &v2815.i8[v2128];
              v2133 = *v177;
              v177 = (v177 + v2733);
              v2134 = v25.i64[0];
              vst2_s8(v2132, v2133);
              v2128 += 16;
            }

            while (v2128 != 64);
            break;
        }

        v2235 = vrhaddq_u16(v2811, v2815);
        v2236 = vrhaddq_u16(v2812, v2816);
        v2237 = vrhaddq_u16(v2813, v2817);
        v2238 = vrhaddq_u16(v2814[0], v2818[0]);
        if (v2752)
        {
          v2235 = vaddq_s16(*v168, v2235);
          v2236 = vaddq_s16(*(v168 + 32), v2236);
          v2237 = vaddq_s16(*(v168 + 64), v2237);
          v2238 = vaddq_s16(*(v168 + 96), v2238);
        }

        *v173 = vqmovun_s16(v2235);
        *(v173 + v2129) = vqmovun_s16(v2236);
        *(v173 + v2130) = vqmovun_s16(v2237);
        *(v173 + v2131) = vqmovun_s16(v2238);
        sub_2772906A8(&v2820, _X20, v2778, &v2829);
        sub_2772906A8(&v2825, _X28, v2734, &v2833);
        a6 = v2826;
        v2239 = vrhaddq_u16(v2820, v2825);
        v2240 = vrhaddq_u16(v2821, v2826);
        v20 = v2757;
        if (v2757)
        {
          a6 = *(v172 + 32);
          v2239 = vaddq_s16(*v172, v2239);
          v2240 = vaddq_s16(a6, v2240);
        }

        v27.i64[0] = 0x20002000200020;
        v27.i64[1] = 0x20002000200020;
        *v174 = vqmovun_s16(v2239);
        *(v174 + v2724) = vqmovun_s16(v2240);
        v10 = v2787;
        v25 = v2801;
        v26.i64[0] = 0x10001000100010;
        v26.i64[1] = 0x10001000100010;
      }

      else
      {
        v19 = v2752;
        if (v2741 == 8)
        {
          v2716 = v175;
          v2786 = v10;
          v2800 = v25;
          switch(v134)
          {
            case 1:
              v1700 = 0;
              v1701 = &v176[-v2717];
              v1702 = (v1701 + v2749);
              v1703 = (v1702 + v2749);
              v1704 = (v1703 + v2749);
              v1705 = vzip1q_s8(*(v1704 + v2749), v25);
              v1706 = vzip1q_s8(*v1704, v25);
              v1707 = vzip1q_s8(*v1703, v25);
              v1708 = vzip1q_s8(*v1702, v25);
              v1709 = vzip1q_s8(*v1701, v25);
              v1710 = (v2746 + 5 * v2749 + v150 + 2 * v2717 * v2708 - 4 * v2717);
              v260 = v2732;
              do
              {
                v1711 = v1708;
                v1708 = v1707;
                v1707 = v1706;
                v1706 = v1705;
                v1705 = vzip1q_s8(*v1710, v25);
                v1712 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1708, v1707), 2uLL), vaddq_s16(v1711, v1706));
                *(&v2811 + v1700) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1709, v1712), vshlq_n_s16(v1712, 2uLL)), vaddq_s16(v1705, v26)), 5uLL))), v1708);
                v1700 += 16;
                v1710 = (v1710 + v2749);
                v1709 = v1711;
              }

              while (v1700 != 128);
              break;
            case 2:
              v1600 = 0;
              v1601 = &v176[-v2717];
              v1602 = (v1601 + v2749);
              v1603 = (v1602 + v2749);
              v1604 = (v1603 + v2749);
              v1605 = vzip1q_s8(*(v1604 + v2749), v25);
              v1606 = vzip1q_s8(*v1604, v25);
              v1607 = vzip1q_s8(*v1603, v25);
              v1608 = vzip1q_s8(*v1602, v25);
              v1609 = vzip1q_s8(*v1601, v25);
              v1610 = (v2746 + 5 * v2749 + v150 + 2 * v2717 * v2708 - 4 * v2717);
              v260 = v2732;
              do
              {
                v1611 = v1608;
                v1608 = v1607;
                v1607 = v1606;
                v1606 = v1605;
                v1612 = &v2811.i8[v1600];
                v1605 = vzip1q_s8(*v1610, v25);
                v1613 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1608, v1607), 2uLL), vaddq_s16(v1611, v1606));
                *v1613.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1609, v1613), vshlq_n_s16(v1613, 2uLL)), vaddq_s16(v1605, v26)), 5uLL));
                v1614 = v25.i64[0];
                vst2_s8(v1612, v1613);
                v1600 += 16;
                v1610 = (v1610 + v2749);
                v1609 = v1611;
              }

              while (v1600 != 128);
              break;
            case 3:
              v1633 = 0;
              v1634 = &v176[-v2717];
              v1635 = (v1634 + v2749);
              v1636 = (v1635 + v2749);
              v1637 = (v1636 + v2749);
              v1638 = vzip1q_s8(*(v1637 + v2749), v25);
              v1639 = vzip1q_s8(*v1637, v25);
              v1640 = vzip1q_s8(*v1636, v25);
              v1641 = vzip1q_s8(*v1635, v25);
              v1642 = vzip1q_s8(*v1634, v25);
              v1643 = (v2746 + 5 * v2749 + v150 + 2 * v2717 * v2708 - 4 * v2717);
              v260 = v2732;
              do
              {
                v1644 = v1641;
                v1641 = v1640;
                v1640 = v1639;
                v1639 = v1638;
                v1638 = vzip1q_s8(*v1643, v25);
                v1645 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1641, v1640), 2uLL), vaddq_s16(v1644, v1639));
                *(&v2811 + v1633) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1642, v1645), vshlq_n_s16(v1645, 2uLL)), vaddq_s16(v1638, v26)), 5uLL))), v1640);
                v1633 += 16;
                v1643 = (v1643 + v2749);
                v1642 = v1644;
              }

              while (v1633 != 128);
              break;
            case 4:
              v1585 = 0;
              v1586 = (v176 - 2);
              v260 = v2732;
              do
              {
                v1587 = *v1586;
                v1586 = (v1586 + v2749);
                v1588 = vzip1q_s8(vextq_s8(v1587, v1587, 2uLL), v25);
                v1589 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1588, vzip1q_s8(vextq_s8(v1587, v1587, 3uLL), v25)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1587, v1587, 1uLL), v25), vzip1q_s8(vextq_s8(v1587, v1587, 4uLL), v25)));
                *(&v2811 + v1585) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1589, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1587, v25), vzip1q_s8(vextq_s8(v1587, v1587, 5uLL), v25)), v1589)), v26), 5uLL))), v1588);
                v1585 += 16;
              }

              while (v1585 != 128);
              break;
            case 5:
              v1620 = v2746 + v150 + v151 * v2749;
              v1621 = v2749;
              v1622 = 2;
              goto LABEL_874;
            case 6:
              v1566 = v177;
              sub_27729BFC4(v2811.i8, 0x10u, v2746 + v150 + v151 * v2749, v2749);
              goto LABEL_884;
            case 7:
              v1620 = v2746 + v150 + v151 * v2749;
              v1621 = v2749;
              v1622 = 3;
LABEL_874:
              v1833 = 2;
              goto LABEL_883;
            case 8:
              v1985 = 0;
              v1986 = (v176 - 2);
              v260 = v2732;
              do
              {
                v1987 = &v2811.i8[v1985];
                v1988 = *v1986;
                v1986 = (v1986 + v2749);
                v1989 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1988, v1988, 2uLL), v25), vzip1q_s8(vextq_s8(v1988, v1988, 3uLL), v25)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1988, v1988, 1uLL), v25), vzip1q_s8(vextq_s8(v1988, v1988, 4uLL), v25)));
                *v1988.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1989, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1988, v25), vzip1q_s8(vextq_s8(v1988, v1988, 5uLL), v25)), v1989)), v26), 5uLL));
                v1989.i64[0] = v25.i64[0];
                vst2_s8(v1987, v1988);
                v1985 += 16;
              }

              while (v1985 != 128);
              break;
            case 9:
              v1566 = v177;
              sub_27729B614(v2811.i8, 0x10u, v2746 + v150 + v151 * v2749, v2749, 8);
              goto LABEL_884;
            case 10:
              v1566 = v177;
              sub_27729B7DC(&v2811, 16, v2746 + v150 + v151 * v2749, v2749, 8);
              goto LABEL_884;
            case 11:
              v1566 = v177;
              sub_27729B98C(v2811.i8, 0x10u, v2746 + v150 + v151 * v2749, v2749, 8);
              goto LABEL_884;
            case 12:
              v1590 = 0;
              v1591 = (v176 - 2);
              v260 = v2732;
              do
              {
                v1592 = *v1591;
                v1591 = (v1591 + v2749);
                v1593 = vzip1q_s8(vextq_s8(v1592, v1592, 3uLL), v25);
                v1594 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1592, v1592, 2uLL), v25), v1593), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1592, v1592, 1uLL), v25), vzip1q_s8(vextq_s8(v1592, v1592, 4uLL), v25)));
                *(&v2811 + v1590) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1594, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1592, v25), vzip1q_s8(vextq_s8(v1592, v1592, 5uLL), v25)), v1594)), v26), 5uLL))), v1593);
                v1590 += 16;
              }

              while (v1590 != 128);
              break;
            case 13:
              v1620 = v2746 + v150 + v151 * v2749;
              v1621 = v2749;
              v1622 = 2;
              goto LABEL_882;
            case 14:
              v1566 = v177;
              sub_27729C39C(v2811.i8, 0x10u, v2746 + v150 + v151 * v2749, v2749);
              goto LABEL_884;
            case 15:
              v1620 = v2746 + v150 + v151 * v2749;
              v1621 = v2749;
              v1622 = 3;
LABEL_882:
              v1833 = 3;
LABEL_883:
              v1566 = v177;
              sub_27729C774(v2811.i8, v1620, v1621, 8, v1622, v1833);
LABEL_884:
              v177 = v1566;
              v26.i64[0] = 0x10001000100010;
              v26.i64[1] = 0x10001000100010;
              v10 = v2786;
              v25 = v2800;
              v260 = v2732;
              break;
            default:
              v259 = 0;
              v260 = v2732;
              do
              {
                v261 = &v2811.i8[v259];
                v262 = *v176;
                v176 = (v176 + v2749);
                v263 = v25.i64[0];
                vst2_s8(v261, v262);
                v259 += 16;
              }

              while (v259 != 128);
              break;
          }

          switch(v260)
          {
            case 1:
              v1912 = 0;
              v1913 = &v177[-v2726];
              v1914 = (v1913 + v2733);
              v1915 = (v1914 + v2733);
              v1916 = (v1915 + v2733);
              v1917 = vzip1q_s8(*(v1916 + v2733), v25);
              v1918 = vzip1q_s8(*v1916, v25);
              v1919 = vzip1q_s8(*v1915, v25);
              v1920 = vzip1q_s8(*v1914, v25);
              v1921 = vzip1q_s8(*v1913, v25);
              v1922 = (v2744 + 5 * v2733 + v2710 + 2 * v2726 * v2709 - 4 * v2726);
              v20 = v2757;
              v1859 = v2758;
              v1860 = v2725;
              v1861 = v2729;
              v1862 = v2705;
              v1863 = v2699;
              v1864 = v2723;
              v1865 = v2700;
              v27.i64[0] = 0x20002000200020;
              v27.i64[1] = 0x20002000200020;
              v1866 = v2720;
              v1867 = v2716;
              do
              {
                v1923 = v1920;
                v1920 = v1919;
                v1919 = v1918;
                v1918 = v1917;
                v1917 = vzip1q_s8(*v1922, v25);
                v1924 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1920, v1919), 2uLL), vaddq_s16(v1923, v1918));
                *(&v2815 + v1912) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1921, v1924), vshlq_n_s16(v1924, 2uLL)), vaddq_s16(v1917, v26)), 5uLL))), v1920);
                v1912 += 16;
                v1922 = (v1922 + v2733);
                v1921 = v1923;
              }

              while (v1912 != 128);
              break;
            case 2:
              v1881 = 0;
              v1882 = &v177[-v2726];
              v1883 = (v1882 + v2733);
              v1884 = (v1883 + v2733);
              v1885 = (v1884 + v2733);
              v1886 = vzip1q_s8(*(v1885 + v2733), v25);
              v1887 = vzip1q_s8(*v1885, v25);
              v1888 = vzip1q_s8(*v1884, v25);
              v1889 = vzip1q_s8(*v1883, v25);
              v1890 = vzip1q_s8(*v1882, v25);
              v1891 = (v2744 + 5 * v2733 + v2710 + 2 * v2726 * v2709 - 4 * v2726);
              v20 = v2757;
              v1859 = v2758;
              v1860 = v2725;
              v1861 = v2729;
              v1862 = v2705;
              v1863 = v2699;
              v1864 = v2723;
              v1865 = v2700;
              v27.i64[0] = 0x20002000200020;
              v27.i64[1] = 0x20002000200020;
              v1866 = v2720;
              v1867 = v2716;
              do
              {
                v1892 = v1889;
                v1889 = v1888;
                v1888 = v1887;
                v1887 = v1886;
                v1893 = &v2815.i8[v1881];
                v1886 = vzip1q_s8(*v1891, v25);
                v1894 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1889, v1888), 2uLL), vaddq_s16(v1892, v1887));
                *v1894.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1890, v1894), vshlq_n_s16(v1894, 2uLL)), vaddq_s16(v1886, v26)), 5uLL));
                v1895 = v25.i64[0];
                vst2_s8(v1893, v1894);
                v1881 += 16;
                v1891 = (v1891 + v2733);
                v1890 = v1892;
              }

              while (v1881 != 128);
              break;
            case 3:
              v1899 = 0;
              v1900 = &v177[-v2726];
              v1901 = (v1900 + v2733);
              v1902 = (v1901 + v2733);
              v1903 = (v1902 + v2733);
              v1904 = vzip1q_s8(*(v1903 + v2733), v25);
              v1905 = vzip1q_s8(*v1903, v25);
              v1906 = vzip1q_s8(*v1902, v25);
              v1907 = vzip1q_s8(*v1901, v25);
              v1908 = vzip1q_s8(*v1900, v25);
              v1909 = (v2744 + 5 * v2733 + v2710 + 2 * v2726 * v2709 - 4 * v2726);
              v20 = v2757;
              v1859 = v2758;
              v1860 = v2725;
              v1861 = v2729;
              v1862 = v2705;
              v1863 = v2699;
              v1864 = v2723;
              v1865 = v2700;
              v27.i64[0] = 0x20002000200020;
              v27.i64[1] = 0x20002000200020;
              v1866 = v2720;
              v1867 = v2716;
              do
              {
                v1910 = v1907;
                v1907 = v1906;
                v1906 = v1905;
                v1905 = v1904;
                v1904 = vzip1q_s8(*v1909, v25);
                v1911 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1907, v1906), 2uLL), vaddq_s16(v1910, v1905));
                *(&v2815 + v1899) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1908, v1911), vshlq_n_s16(v1911, 2uLL)), vaddq_s16(v1904, v26)), 5uLL))), v1906);
                v1899 += 16;
                v1909 = (v1909 + v2733);
                v1908 = v1910;
              }

              while (v1899 != 128);
              break;
            case 4:
              v1871 = 0;
              v1872 = (v177 - 2);
              v20 = v2757;
              v1859 = v2758;
              v1860 = v2725;
              v1861 = v2729;
              v1862 = v2705;
              v1863 = v2699;
              v1864 = v2723;
              v1865 = v2700;
              v27.i64[0] = 0x20002000200020;
              v27.i64[1] = 0x20002000200020;
              v1866 = v2720;
              v1867 = v2716;
              do
              {
                v1873 = *v1872;
                v1872 = (v1872 + v2733);
                v1874 = vzip1q_s8(vextq_s8(v1873, v1873, 2uLL), v25);
                v1875 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1874, vzip1q_s8(vextq_s8(v1873, v1873, 3uLL), v25)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1873, v1873, 1uLL), v25), vzip1q_s8(vextq_s8(v1873, v1873, 4uLL), v25)));
                *(&v2815 + v1871) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1875, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1873, v25), vzip1q_s8(vextq_s8(v1873, v1873, 5uLL), v25)), v1875)), v26), 5uLL))), v1874);
                v1871 += 16;
              }

              while (v1871 != 128);
              break;
            case 5:
              v1896 = v177;
              v1897 = v2733;
              v1898 = 2;
              goto LABEL_910;
            case 6:
              sub_27729BFC4(v2815.i8, 0x10u, v177, v2733);
              goto LABEL_915;
            case 7:
              v1896 = v177;
              v1897 = v2733;
              v1898 = 3;
LABEL_910:
              v1925 = 2;
              goto LABEL_914;
            case 8:
              v1990 = 0;
              v1991 = (v177 - 2);
              v20 = v2757;
              v1859 = v2758;
              v1860 = v2725;
              v1861 = v2729;
              v1862 = v2705;
              v1863 = v2699;
              v1864 = v2723;
              v1865 = v2700;
              v27.i64[0] = 0x20002000200020;
              v27.i64[1] = 0x20002000200020;
              v1866 = v2720;
              v1867 = v2716;
              do
              {
                v1992 = &v2815.i8[v1990];
                v1993 = *v1991;
                v1991 = (v1991 + v2733);
                v1994 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1993, v1993, 2uLL), v25), vzip1q_s8(vextq_s8(v1993, v1993, 3uLL), v25)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1993, v1993, 1uLL), v25), vzip1q_s8(vextq_s8(v1993, v1993, 4uLL), v25)));
                *v1993.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1994, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1993, v25), vzip1q_s8(vextq_s8(v1993, v1993, 5uLL), v25)), v1994)), v26), 5uLL));
                v1994.i64[0] = v25.i64[0];
                vst2_s8(v1992, v1993);
                v1990 += 16;
              }

              while (v1990 != 128);
              break;
            case 9:
              sub_27729B614(v2815.i8, 0x10u, v177, v2733, 8);
              goto LABEL_915;
            case 10:
              sub_27729B7DC(&v2815, 16, v177, v2733, 8);
              goto LABEL_915;
            case 11:
              sub_27729B98C(v2815.i8, 0x10u, v177, v2733, 8);
              goto LABEL_915;
            case 12:
              v1876 = 0;
              v1877 = (v177 - 2);
              v20 = v2757;
              v1859 = v2758;
              v1860 = v2725;
              v1861 = v2729;
              v1862 = v2705;
              v1863 = v2699;
              v1864 = v2723;
              v1865 = v2700;
              v27.i64[0] = 0x20002000200020;
              v27.i64[1] = 0x20002000200020;
              v1866 = v2720;
              v1867 = v2716;
              do
              {
                v1878 = *v1877;
                v1877 = (v1877 + v2733);
                v1879 = vzip1q_s8(vextq_s8(v1878, v1878, 3uLL), v25);
                v1880 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1878, v1878, 2uLL), v25), v1879), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1878, v1878, 1uLL), v25), vzip1q_s8(vextq_s8(v1878, v1878, 4uLL), v25)));
                *(&v2815 + v1876) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1880, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1878, v25), vzip1q_s8(vextq_s8(v1878, v1878, 5uLL), v25)), v1880)), v26), 5uLL))), v1879);
                v1876 += 16;
              }

              while (v1876 != 128);
              break;
            case 13:
              v1896 = v177;
              v1897 = v2733;
              v1898 = 2;
              goto LABEL_913;
            case 14:
              sub_27729C39C(v2815.i8, 0x10u, v177, v2733);
              goto LABEL_915;
            case 15:
              v1896 = v177;
              v1897 = v2733;
              v1898 = 3;
LABEL_913:
              v1925 = 3;
LABEL_914:
              sub_27729C774(v2815.i8, v1896, v1897, 8, v1898, v1925);
LABEL_915:
              v26.i64[0] = 0x10001000100010;
              v26.i64[1] = 0x10001000100010;
              v10 = v2786;
              v25 = v2800;
              v20 = v2757;
              v1859 = v2758;
              v1860 = v2725;
              v1861 = v2729;
              v1862 = v2705;
              v1863 = v2699;
              v1864 = v2723;
              v1865 = v2700;
              v27.i64[0] = 0x20002000200020;
              v27.i64[1] = 0x20002000200020;
              v1866 = v2720;
              v1867 = v2716;
              break;
            default:
              v1858 = 0;
              v20 = v2757;
              v1859 = v2758;
              v1860 = v2725;
              v1861 = v2729;
              v1862 = v2705;
              v1863 = v2699;
              v1864 = v2723;
              v1865 = v2700;
              v27.i64[0] = 0x20002000200020;
              v27.i64[1] = 0x20002000200020;
              v1866 = v2720;
              v1867 = v2716;
              do
              {
                v1868 = &v2815.i8[v1858];
                v1869 = *v177;
                v177 = (v177 + v2733);
                v1870 = v25.i64[0];
                vst2_s8(v1868, v1869);
                v1858 += 16;
              }

              while (v1858 != 128);
              break;
          }

          v1931 = 1;
          v1932 = &v2811;
          do
          {
            v1933 = v1931;
            v1934 = vrhaddq_u16(*v1932, v1932[32]);
            v1935 = vrhaddq_u16(v1932[1], v1932[33]);
            v1936 = vrhaddq_u16(v1932[2], v1932[34]);
            v1937 = vrhaddq_u16(v1932[3], v1932[35]);
            if (v2752)
            {
              v1938 = *v168;
              v1939 = *(v168 + 32);
              v1940 = *(v168 + 64);
              v1941 = *(v168 + 96);
              v168 += 128;
              v1934 = vaddq_s16(v1938, v1934);
              v1935 = vaddq_s16(v1939, v1935);
              v1936 = vaddq_s16(v1940, v1936);
              v1937 = vaddq_s16(v1941, v1937);
            }

            v1931 = 0;
            v1932 += 4;
            *v173 = vqmovun_s16(v1934);
            *(v173 + v1860) = vqmovun_s16(v1935);
            *(v173 + v1861) = vqmovun_s16(v1936);
            *(v173 + v1862) = vqmovun_s16(v1937);
            v173 = (v173 + v1863);
          }

          while ((v1933 & 1) != 0);
          v1942 = 0;
          _X9 = &_X20->i8[v2778];
          __asm { PRFM            #0, [X9] }

          v1934.i64[0] = _X20->i64[0];
          v1945 = vqtbl1q_s8(v1934, xmmword_2773B3E00);
          v1945.i16[3] = _X20->i16[4];
          v1946 = vzip1q_s8(v1945, v25);
          v1947 = vzip1q_s8(v1934, v25);
          v1948 = v2829;
          v1949 = v2830;
          v1950 = v2831;
          v1951 = v2832;
          v1952 = v2721;
          if (v2721 <= -16)
          {
            v1952 = -16;
          }

          if (v1952 >= v2718)
          {
            v1952 = v2718;
          }

          v1953 = v1859 + v1867 + v1952;
          do
          {
            _X12 = v1953 + 2 * v2778;
            v1953 += v2778;
            __asm { PRFM            #0, [X12] }

            v1956 = vmlaq_s16(vmulq_s16(v1949, v1946), v1948, v1947);
            v1946.i64[0] = *v1953;
            v1947 = vzip1q_s8(v1946, v25);
            v1957 = vqtbl1q_s8(v1946, xmmword_2773B3E00);
            v1957.i16[3] = *(v1953 + 8);
            v1946 = vzip1q_s8(v1957, v25);
            *(&v2820 + v1942) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1956, v1950, v1947), v1951, v1946), v27), 6uLL);
            v1942 += 16;
          }

          while (v1942 != 64);
          _X9 = &_X28->i8[v2734];
          __asm { PRFM            #0, [X9] }

          v1948.i64[0] = _X28->i64[0];
          v1960 = vqtbl1q_s8(v1948, xmmword_2773B3E00);
          v1960.i16[3] = _X28->i16[4];
          v1961 = vzip1q_s8(v1960, v25);
          v1962 = vzip1q_s8(v1948, v25);
          v1963 = v2833;
          v1964 = v2834;
          v1965 = v2835;
          v1966 = v2836;
          v1967 = v2719;
          if (v2719 <= -16)
          {
            v1967 = -16;
          }

          if (v1967 >= v1866)
          {
            v1967 = v1866;
          }

          v1968 = v131 + v182 + v1967;
          v1969 = 256;
          do
          {
            _X12 = v1968 + 2 * v2734;
            v1968 += v2734;
            __asm { PRFM            #0, [X12] }

            v1972 = vmlaq_s16(vmulq_s16(v1964, v1961), v1963, v1962);
            v1961.i64[0] = *v1968;
            v1962 = vzip1q_s8(v1961, v25);
            v1973 = vqtbl1q_s8(v1961, xmmword_2773B3E00);
            v1973.i16[3] = *(v1968 + 8);
            v1961 = vzip1q_s8(v1973, v25);
            *(&v2820 + v1969) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1972, v1965, v1962), v1966, v1961), v27), 6uLL);
            v1969 += 16;
          }

          while (v1969 != 320);
          a7 = v2822;
          a8 = v2823[0];
          a9 = v2827;
          a10 = v2828;
          v1974 = vrhaddq_u16(v2820, v2825);
          a6 = vrhaddq_u16(v2821, v2826);
          v1975 = vrhaddq_u16(v2822, v2827);
          v1976 = vrhaddq_u16(v2823[0], v2828);
          if (v2757)
          {
            a7 = *v172;
            a8 = *(v172 + 32);
            a9 = *(v172 + 64);
            a10 = *(v172 + 96);
            v1974 = vaddq_s16(*v172, v1974);
            a6 = vaddq_s16(a8, a6);
            v1975 = vaddq_s16(a9, v1975);
            v1976 = vaddq_s16(a10, v1976);
          }

          a6.n128_u64[0] = vqmovun_s16(a6);
          *v174 = vqmovun_s16(v1974);
          *(v174 + v2724) = a6.n128_u64[0];
          *(v174 + v1864) = vqmovun_s16(v1975);
          *(v174 + v1865) = vqmovun_s16(v1976);
        }

        else if (v2741 == 16)
        {
          v2715 = v175;
          v2781 = v10;
          v2795 = v25;
          switch(v134)
          {
            case 1:
              v1834 = 0;
              v1835 = &v176[-v2717];
              v1836 = (v1835 + v2749);
              v1837 = (v1836 + v2749);
              v1838 = (v1837 + v2749);
              v1839 = vzip1q_s8(*(v1838 + v2749), v25);
              v1840 = vzip1q_s8(*v1838, v25);
              v1841 = vzip1q_s8(*v1837, v25);
              v1842 = vzip1q_s8(*v1836, v25);
              v1843 = vzip1q_s8(*v1835, v25);
              v1844 = (v2746 + 5 * v2749 + v150 + 2 * v2717 * v2708 - 4 * v2717);
              v187 = v2732;
              do
              {
                v1845 = v1842;
                v1842 = v1841;
                v1841 = v1840;
                v1840 = v1839;
                v1839 = vzip1q_s8(*v1844, v25);
                v1846 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1842, v1841), 2uLL), vaddq_s16(v1845, v1840));
                *(&v2811 + v1834) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1843, v1846), vshlq_n_s16(v1846, 2uLL)), vaddq_s16(v1839, v26)), 5uLL))), v1842);
                v1834 += 16;
                v1844 = (v1844 + v2749);
                v1843 = v1845;
              }

              while (v1834 != 256);
              break;
            case 2:
              v1685 = 0;
              v1686 = &v176[-v2717];
              v1687 = (v1686 + v2749);
              v1688 = (v1687 + v2749);
              v1689 = (v1688 + v2749);
              v1690 = vzip1q_s8(*(v1689 + v2749), v25);
              v1691 = vzip1q_s8(*v1689, v25);
              v1692 = vzip1q_s8(*v1688, v25);
              v1693 = vzip1q_s8(*v1687, v25);
              v1694 = vzip1q_s8(*v1686, v25);
              v1695 = (v2746 + 5 * v2749 + v150 + 2 * v2717 * v2708 - 4 * v2717);
              v187 = v2732;
              do
              {
                v1696 = v1693;
                v1693 = v1692;
                v1692 = v1691;
                v1691 = v1690;
                v1697 = &v2811.i8[v1685];
                v1690 = vzip1q_s8(*v1695, v25);
                v1698 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1693, v1692), 2uLL), vaddq_s16(v1696, v1691));
                *v1698.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1694, v1698), vshlq_n_s16(v1698, 2uLL)), vaddq_s16(v1690, v26)), 5uLL));
                v1699 = v25.i64[0];
                vst2_s8(v1697, v1698);
                v1685 += 16;
                v1695 = (v1695 + v2749);
                v1694 = v1696;
              }

              while (v1685 != 256);
              break;
            case 3:
              v1775 = 0;
              v1776 = &v176[-v2717];
              v1777 = (v1776 + v2749);
              v1778 = (v1777 + v2749);
              v1779 = (v1778 + v2749);
              v1780 = vzip1q_s8(*(v1779 + v2749), v25);
              v1781 = vzip1q_s8(*v1779, v25);
              v1782 = vzip1q_s8(*v1778, v25);
              v1783 = vzip1q_s8(*v1777, v25);
              v1784 = vzip1q_s8(*v1776, v25);
              v1785 = (v2746 + 5 * v2749 + v150 + 2 * v2717 * v2708 - 4 * v2717);
              v187 = v2732;
              do
              {
                v1786 = v1783;
                v1783 = v1782;
                v1782 = v1781;
                v1781 = v1780;
                v1780 = vzip1q_s8(*v1785, v25);
                v1787 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1783, v1782), 2uLL), vaddq_s16(v1786, v1781));
                *(&v2811 + v1775) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1784, v1787), vshlq_n_s16(v1787, 2uLL)), vaddq_s16(v1780, v26)), 5uLL))), v1782);
                v1775 += 16;
                v1785 = (v1785 + v2749);
                v1784 = v1786;
              }

              while (v1775 != 256);
              break;
            case 4:
              v1595 = 0;
              v1596 = (v176 - 2);
              v187 = v2732;
              do
              {
                v1597 = *v1596;
                v1596 = (v1596 + v2749);
                v1598 = vzip1q_s8(vextq_s8(v1597, v1597, 2uLL), v25);
                v1599 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1598, vzip1q_s8(vextq_s8(v1597, v1597, 3uLL), v25)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1597, v1597, 1uLL), v25), vzip1q_s8(vextq_s8(v1597, v1597, 4uLL), v25)));
                *(&v2811 + v1595) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1599, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1597, v25), vzip1q_s8(vextq_s8(v1597, v1597, 5uLL), v25)), v1599)), v26), 5uLL))), v1598);
                v1595 += 16;
              }

              while (v1595 != 256);
              break;
            case 5:
              v1737 = v2746 + v150 + v151 * v2749;
              v1738 = v2749;
              v1739 = 2;
              goto LABEL_975;
            case 6:
              v1576 = v177;
              sub_27729B1B0(v2811.i8, 0x10u, v2746 + v150 + v151 * v2749, v2749);
              goto LABEL_1013;
            case 7:
              v1737 = v2746 + v150 + v151 * v2749;
              v1738 = v2749;
              v1739 = 3;
LABEL_975:
              v2127 = 2;
              goto LABEL_1012;
            case 8:
              v2364 = 0;
              v2365 = (v176 - 2);
              v187 = v2732;
              do
              {
                v2366 = &v2811.i8[v2364];
                v2367 = *v2365;
                v2365 = (v2365 + v2749);
                v2368 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v2367, v2367, 2uLL), v25), vzip1q_s8(vextq_s8(v2367, v2367, 3uLL), v25)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v2367, v2367, 1uLL), v25), vzip1q_s8(vextq_s8(v2367, v2367, 4uLL), v25)));
                *v2367.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v2368, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v2367, v25), vzip1q_s8(vextq_s8(v2367, v2367, 5uLL), v25)), v2368)), v26), 5uLL));
                v2368.i64[0] = v25.i64[0];
                vst2_s8(v2366, v2367);
                v2364 += 16;
              }

              while (v2364 != 256);
              break;
            case 9:
              v1576 = v177;
              sub_27729B614(v2811.i8, 0x10u, v2746 + v150 + v151 * v2749, v2749, 16);
              goto LABEL_1013;
            case 10:
              v1576 = v177;
              sub_27729B7DC(&v2811, 16, v2746 + v150 + v151 * v2749, v2749, 16);
              goto LABEL_1013;
            case 11:
              v1576 = v177;
              sub_27729B98C(v2811.i8, 0x10u, v2746 + v150 + v151 * v2749, v2749, 16);
              goto LABEL_1013;
            case 12:
              v1615 = 0;
              v1616 = (v176 - 2);
              v187 = v2732;
              do
              {
                v1617 = *v1616;
                v1616 = (v1616 + v2749);
                v1618 = vzip1q_s8(vextq_s8(v1617, v1617, 3uLL), v25);
                v1619 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1617, v1617, 2uLL), v25), v1618), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1617, v1617, 1uLL), v25), vzip1q_s8(vextq_s8(v1617, v1617, 4uLL), v25)));
                *(&v2811 + v1615) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1619, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1617, v25), vzip1q_s8(vextq_s8(v1617, v1617, 5uLL), v25)), v1619)), v26), 5uLL))), v1618);
                v1615 += 16;
              }

              while (v1615 != 256);
              break;
            case 13:
              v1737 = v2746 + v150 + v151 * v2749;
              v1738 = v2749;
              v1739 = 2;
              goto LABEL_1011;
            case 14:
              v1576 = v177;
              sub_27729BBEC(v2811.i8, 0x10u, v2746 + v150 + v151 * v2749, v2749);
              goto LABEL_1013;
            case 15:
              v1737 = v2746 + v150 + v151 * v2749;
              v1738 = v2749;
              v1739 = 3;
LABEL_1011:
              v2127 = 3;
LABEL_1012:
              v1576 = v177;
              sub_27729C774(v2811.i8, v1737, v1738, 16, v1739, v2127);
LABEL_1013:
              v177 = v1576;
              v26.i64[0] = 0x10001000100010;
              v26.i64[1] = 0x10001000100010;
              v10 = v2781;
              v25 = v2795;
              v187 = v2732;
              break;
            default:
              v186 = 0;
              v187 = v2732;
              do
              {
                v188 = &v2811.i8[v186];
                v189 = *v176;
                v176 = (v176 + v2749);
                v190 = v25.i64[0];
                vst2_s8(v188, v189);
                v186 += 16;
              }

              while (v186 != 256);
              break;
          }

          switch(v187)
          {
            case 1:
              v2295 = 0;
              v2296 = &v177[-v2726];
              v2297 = (v2296 + v2733);
              v2298 = (v2297 + v2733);
              v2299 = (v2298 + v2733);
              v2300 = vzip1q_s8(*(v2299 + v2733), v25);
              v2301 = vzip1q_s8(*v2299, v25);
              v2302 = vzip1q_s8(*v2298, v25);
              v2303 = vzip1q_s8(*v2297, v25);
              v2304 = vzip1q_s8(*v2296, v25);
              v2305 = (v2744 + 5 * v2733 + v2710 + 2 * v2726 * v2709 - 4 * v2726);
              v20 = v2757;
              v2243 = v2758;
              v2244 = v2725;
              v2245 = v2729;
              v2246 = v2705;
              v2247 = v2699;
              v27.i64[0] = 0x20002000200020;
              v27.i64[1] = 0x20002000200020;
              v2242 = v2734;
              v2248 = v2718;
              v2249 = v2719;
              v2250 = v2715;
              do
              {
                v2306 = v2303;
                v2303 = v2302;
                v2302 = v2301;
                v2301 = v2300;
                v2300 = vzip1q_s8(*v2305, v25);
                v2307 = vsubq_s16(vshlq_n_s16(vaddq_s16(v2303, v2302), 2uLL), vaddq_s16(v2306, v2301));
                *(&v2815 + v2295) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v2304, v2307), vshlq_n_s16(v2307, 2uLL)), vaddq_s16(v2300, v26)), 5uLL))), v2303);
                v2295 += 16;
                v2305 = (v2305 + v2733);
                v2304 = v2306;
              }

              while (v2295 != 256);
              break;
            case 2:
              v2264 = 0;
              v2265 = &v177[-v2726];
              v2266 = (v2265 + v2733);
              v2267 = (v2266 + v2733);
              v2268 = (v2267 + v2733);
              v2269 = vzip1q_s8(*(v2268 + v2733), v25);
              v2270 = vzip1q_s8(*v2268, v25);
              v2271 = vzip1q_s8(*v2267, v25);
              v2272 = vzip1q_s8(*v2266, v25);
              v2273 = vzip1q_s8(*v2265, v25);
              v2274 = (v2744 + 5 * v2733 + v2710 + 2 * v2726 * v2709 - 4 * v2726);
              v20 = v2757;
              v2243 = v2758;
              v2244 = v2725;
              v2245 = v2729;
              v2246 = v2705;
              v2247 = v2699;
              v27.i64[0] = 0x20002000200020;
              v27.i64[1] = 0x20002000200020;
              v2242 = v2734;
              v2248 = v2718;
              v2249 = v2719;
              v2250 = v2715;
              do
              {
                v2275 = v2272;
                v2272 = v2271;
                v2271 = v2270;
                v2270 = v2269;
                v2276 = &v2815.i8[v2264];
                v2269 = vzip1q_s8(*v2274, v25);
                v2277 = vsubq_s16(vshlq_n_s16(vaddq_s16(v2272, v2271), 2uLL), vaddq_s16(v2275, v2270));
                *v2277.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v2273, v2277), vshlq_n_s16(v2277, 2uLL)), vaddq_s16(v2269, v26)), 5uLL));
                v2278 = v25.i64[0];
                vst2_s8(v2276, v2277);
                v2264 += 16;
                v2274 = (v2274 + v2733);
                v2273 = v2275;
              }

              while (v2264 != 256);
              break;
            case 3:
              v2282 = 0;
              v2283 = &v177[-v2726];
              v2284 = (v2283 + v2733);
              v2285 = (v2284 + v2733);
              v2286 = (v2285 + v2733);
              v2287 = vzip1q_s8(*(v2286 + v2733), v25);
              v2288 = vzip1q_s8(*v2286, v25);
              v2289 = vzip1q_s8(*v2285, v25);
              v2290 = vzip1q_s8(*v2284, v25);
              v2291 = vzip1q_s8(*v2283, v25);
              v2292 = (v2744 + 5 * v2733 + v2710 + 2 * v2726 * v2709 - 4 * v2726);
              v20 = v2757;
              v2243 = v2758;
              v2244 = v2725;
              v2245 = v2729;
              v2246 = v2705;
              v2247 = v2699;
              v27.i64[0] = 0x20002000200020;
              v27.i64[1] = 0x20002000200020;
              v2242 = v2734;
              v2248 = v2718;
              v2249 = v2719;
              v2250 = v2715;
              do
              {
                v2293 = v2290;
                v2290 = v2289;
                v2289 = v2288;
                v2288 = v2287;
                v2287 = vzip1q_s8(*v2292, v25);
                v2294 = vsubq_s16(vshlq_n_s16(vaddq_s16(v2290, v2289), 2uLL), vaddq_s16(v2293, v2288));
                *(&v2815 + v2282) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v2291, v2294), vshlq_n_s16(v2294, 2uLL)), vaddq_s16(v2287, v26)), 5uLL))), v2289);
                v2282 += 16;
                v2292 = (v2292 + v2733);
                v2291 = v2293;
              }

              while (v2282 != 256);
              break;
            case 4:
              v2254 = 0;
              v2255 = (v177 - 2);
              v2242 = v2734;
              v20 = v2757;
              v2243 = v2758;
              v2244 = v2725;
              v2245 = v2729;
              v2246 = v2705;
              v2247 = v2699;
              v27.i64[0] = 0x20002000200020;
              v27.i64[1] = 0x20002000200020;
              v2248 = v2718;
              v2249 = v2719;
              v2250 = v2715;
              do
              {
                v2256 = *v2255;
                v2255 = (v2255 + v2733);
                v2257 = vzip1q_s8(vextq_s8(v2256, v2256, 2uLL), v25);
                v2258 = vsubq_s16(vshlq_n_s16(vaddq_s16(v2257, vzip1q_s8(vextq_s8(v2256, v2256, 3uLL), v25)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v2256, v2256, 1uLL), v25), vzip1q_s8(vextq_s8(v2256, v2256, 4uLL), v25)));
                *(&v2815 + v2254) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v2258, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v2256, v25), vzip1q_s8(vextq_s8(v2256, v2256, 5uLL), v25)), v2258)), v26), 5uLL))), v2257);
                v2254 += 16;
              }

              while (v2254 != 256);
              break;
            case 5:
              v2279 = v177;
              v2280 = v2733;
              v2281 = 2;
              goto LABEL_1039;
            case 6:
              sub_27729B1B0(v2815.i8, 0x10u, v177, v2733);
              goto LABEL_1043;
            case 7:
              v2279 = v177;
              v2280 = v2733;
              v2281 = 3;
LABEL_1039:
              v2308 = 2;
              goto LABEL_1042;
            case 8:
              v2369 = 0;
              v2370 = (v177 - 2);
              v2242 = v2734;
              v20 = v2757;
              v2243 = v2758;
              v2244 = v2725;
              v2245 = v2729;
              v2246 = v2705;
              v2247 = v2699;
              v27.i64[0] = 0x20002000200020;
              v27.i64[1] = 0x20002000200020;
              v2248 = v2718;
              v2249 = v2719;
              v2250 = v2715;
              do
              {
                v2371 = &v2815.i8[v2369];
                v2372 = *v2370;
                v2370 = (v2370 + v2733);
                v2373 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v2372, v2372, 2uLL), v25), vzip1q_s8(vextq_s8(v2372, v2372, 3uLL), v25)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v2372, v2372, 1uLL), v25), vzip1q_s8(vextq_s8(v2372, v2372, 4uLL), v25)));
                *v2372.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v2373, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v2372, v25), vzip1q_s8(vextq_s8(v2372, v2372, 5uLL), v25)), v2373)), v26), 5uLL));
                v2373.i64[0] = v25.i64[0];
                vst2_s8(v2371, v2372);
                v2369 += 16;
              }

              while (v2369 != 256);
              break;
            case 9:
              sub_27729B614(v2815.i8, 0x10u, v177, v2733, 16);
              goto LABEL_1043;
            case 10:
              sub_27729B7DC(&v2815, 16, v177, v2733, 16);
              goto LABEL_1043;
            case 11:
              sub_27729B98C(v2815.i8, 0x10u, v177, v2733, 16);
              goto LABEL_1043;
            case 12:
              v2259 = 0;
              v2260 = (v177 - 2);
              v2242 = v2734;
              v20 = v2757;
              v2243 = v2758;
              v2244 = v2725;
              v2245 = v2729;
              v2246 = v2705;
              v2247 = v2699;
              v27.i64[0] = 0x20002000200020;
              v27.i64[1] = 0x20002000200020;
              v2248 = v2718;
              v2249 = v2719;
              v2250 = v2715;
              do
              {
                v2261 = *v2260;
                v2260 = (v2260 + v2733);
                v2262 = vzip1q_s8(vextq_s8(v2261, v2261, 3uLL), v25);
                v2263 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v2261, v2261, 2uLL), v25), v2262), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v2261, v2261, 1uLL), v25), vzip1q_s8(vextq_s8(v2261, v2261, 4uLL), v25)));
                *(&v2815 + v2259) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v2263, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v2261, v25), vzip1q_s8(vextq_s8(v2261, v2261, 5uLL), v25)), v2263)), v26), 5uLL))), v2262);
                v2259 += 16;
              }

              while (v2259 != 256);
              break;
            case 13:
              v2279 = v177;
              v2280 = v2733;
              v2281 = 2;
              goto LABEL_1041;
            case 14:
              sub_27729BBEC(v2815.i8, 0x10u, v177, v2733);
              goto LABEL_1043;
            case 15:
              v2279 = v177;
              v2280 = v2733;
              v2281 = 3;
LABEL_1041:
              v2308 = 3;
LABEL_1042:
              sub_27729C774(v2815.i8, v2279, v2280, 16, v2281, v2308);
LABEL_1043:
              v26.i64[0] = 0x10001000100010;
              v26.i64[1] = 0x10001000100010;
              v10 = v2781;
              v25 = v2795;
              v20 = v2757;
              v2243 = v2758;
              v2244 = v2725;
              v2245 = v2729;
              v2246 = v2705;
              v2247 = v2699;
              v27.i64[0] = 0x20002000200020;
              v27.i64[1] = 0x20002000200020;
              v2242 = v2734;
              v2248 = v2718;
              v2249 = v2719;
              v2250 = v2715;
              break;
            default:
              v2241 = 0;
              v2242 = v2734;
              v20 = v2757;
              v2243 = v2758;
              v2244 = v2725;
              v2245 = v2729;
              v2246 = v2705;
              v2247 = v2699;
              v27.i64[0] = 0x20002000200020;
              v27.i64[1] = 0x20002000200020;
              v2248 = v2718;
              v2249 = v2719;
              v2250 = v2715;
              do
              {
                v2251 = &v2815.i8[v2241];
                v2252 = *v177;
                v177 = (v177 + v2733);
                v2253 = v25.i64[0];
                vst2_s8(v2251, v2252);
                v2241 += 16;
              }

              while (v2241 != 256);
              break;
          }

          v2309 = 0;
          do
          {
            v2310 = vrhaddq_u16(*(&v2811 + v2309), *(&v2815 + v2309));
            v2311 = vrhaddq_u16(*(&v2811 + v2309 + 16), *(&v2816 + v2309));
            v2312 = vrhaddq_u16(*(&v2813 + v2309), *(&v2817 + v2309));
            v2313 = vrhaddq_u16(v2814[v2309 / 0x10], v2818[v2309 / 0x10]);
            if (v2752)
            {
              v2314 = *v168;
              v2315 = *(v168 + 32);
              v2316 = *(v168 + 64);
              v2317 = *(v168 + 96);
              v168 += 128;
              v2310 = vaddq_s16(v2314, v2310);
              v2311 = vaddq_s16(v2315, v2311);
              v2312 = vaddq_s16(v2316, v2312);
              v2313 = vaddq_s16(v2317, v2313);
            }

            *v173 = vqmovun_s16(v2310);
            *(v173 + v2244) = vqmovun_s16(v2311);
            *(v173 + v2245) = vqmovun_s16(v2312);
            *(v173 + v2246) = vqmovun_s16(v2313);
            v173 = (v173 + v2247);
            v2309 += 64;
          }

          while (v2309 != 256);
          v2318 = 0;
          _X9 = &_X20->i8[v2778];
          __asm { PRFM            #0, [X9] }

          v2310.i64[0] = _X20->i64[0];
          v2321 = vqtbl1q_s8(v2310, xmmword_2773B3E00);
          v2321.i16[3] = _X20->i16[4];
          v2322 = vzip1q_s8(v2321, v25);
          v2323 = vzip1q_s8(v2310, v25);
          v2324 = v2829;
          v2325 = v2830;
          v2326 = v2831;
          v2327 = v2832;
          v2328 = v2721;
          if (v2721 <= -16)
          {
            v2328 = -16;
          }

          if (v2328 >= v2248)
          {
            v2328 = v2248;
          }

          v2329 = v2243 + v2250 + v2328;
          do
          {
            _X12 = v2329 + 2 * v2778;
            v2329 += v2778;
            __asm { PRFM            #0, [X12] }

            v2332 = vmlaq_s16(vmulq_s16(v2325, v2322), v2324, v2323);
            v2322.i64[0] = *v2329;
            v2323 = vzip1q_s8(v2322, v25);
            v2333 = vqtbl1q_s8(v2322, xmmword_2773B3E00);
            v2333.i16[3] = *(v2329 + 8);
            v2322 = vzip1q_s8(v2333, v25);
            *(&v2820 + v2318) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v2332, v2326, v2323), v2327, v2322), v27), 6uLL);
            v2318 += 16;
          }

          while (v2318 != 128);
          v2334 = 0;
          _X9 = &_X28->i8[v2242];
          __asm { PRFM            #0, [X9] }

          v2324.i64[0] = _X28->i64[0];
          v2337 = vqtbl1q_s8(v2324, xmmword_2773B3E00);
          v2337.i16[3] = _X28->i16[4];
          v2338 = vzip1q_s8(v2337, v25);
          v2339 = vzip1q_s8(v2324, v25);
          v2340 = v2833;
          v2341 = v2834;
          v2342 = v2835;
          v2343 = v2836;
          v2344 = v2249;
          if (v2249 <= -16)
          {
            v2344 = -16;
          }

          if (v2344 >= v2720)
          {
            v2344 = v2720;
          }

          v2345 = v131 + v182 + v2344;
          do
          {
            _X12 = v2345 + 2 * v2242;
            v2345 += v2242;
            __asm { PRFM            #0, [X12] }

            v2348 = vmlaq_s16(vmulq_s16(v2341, v2338), v2340, v2339);
            v2338.i64[0] = *v2345;
            v2339 = vzip1q_s8(v2338, v25);
            v2349 = vqtbl1q_s8(v2338, xmmword_2773B3E00);
            v2349.i16[3] = *(v2345 + 8);
            v2338 = vzip1q_s8(v2349, v25);
            *(&v2825 + v2334) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v2348, v2342, v2339), v2343, v2338), v27), 6uLL);
            v2334 += 16;
          }

          while (v2334 != 128);
          v2350 = 1;
          v2351 = &v2825;
          do
          {
            v2352 = v2350;
            a7 = v2351[-13];
            a8 = v2351[1];
            a9 = v2351[2];
            a10 = v2351[3];
            v2353 = vrhaddq_u16(v2351[-16], *v2351);
            v2354 = vrhaddq_u16(v2351[-15], a8);
            a6 = vrhaddq_u16(v2351[-14], a9);
            v2355 = vrhaddq_u16(a7, a10);
            if (v2757)
            {
              a7 = *v172;
              a8 = *(v172 + 32);
              a9 = *(v172 + 64);
              a10 = *(v172 + 96);
              v172 += 128;
              v2353 = vaddq_s16(a7, v2353);
              v2354 = vaddq_s16(a8, v2354);
              a6 = vaddq_s16(a9, a6);
              v2355 = vaddq_s16(a10, v2355);
            }

            v2350 = 0;
            v2351 += 4;
            a6.n128_u64[0] = vqmovun_s16(a6);
            *v174 = vqmovun_s16(v2353);
            *(v174 + v2730) = vqmovun_s16(v2354);
            *(v174 + v2723) = a6.n128_u64[0];
            *(v174 + v2700) = vqmovun_s16(v2355);
            v174 = (v174 + v2697);
          }

          while ((v2352 & 1) != 0);
        }
      }

      goto LABEL_1064;
    }

    v19 = v2752;
    if (v181 != 16)
    {
LABEL_1064:
      v11 = a2;
      v21 = v2737;
      goto LABEL_1065;
    }

    v2698 = v179;
    v2714 = v175;
    v2702 = a10;
    v2703 = a6;
    v2712 = v129 & 0xFFFFFF8F | (16 * (v125 & 7));
    v2701 = v2727 & 0xFFFFFF8F | (16 * (v116 & 7));
    if (v2741 == 16)
    {
      switch(v134)
      {
        case 1:
          v754 = 0;
          v755 = &v176[-v2717];
          v756 = (v755 + v2749);
          v757 = (v756 + v2749);
          v758 = (v757 + v2749);
          v759 = vzip1q_s8(*(v758 + v2749), v25);
          v760 = vzip1q_s8(*v758, v25);
          v761 = vzip1q_s8(*v757, v25);
          v762 = vzip1q_s8(*v756, v25);
          v763 = vzip1q_s8(*v755, v25);
          v764 = 5 * v2749;
          v765 = (v2746 + v764 + v150 + 2 * v2717 * v2708 - 4 * v2717);
          do
          {
            v766 = v762;
            v762 = v761;
            v761 = v760;
            v760 = v759;
            v759 = vzip1q_s8(*v765, v25);
            v767 = vsubq_s16(vshlq_n_s16(vaddq_s16(v762, v761), 2uLL), vaddq_s16(v766, v760));
            *(&v2811 + v754) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v763, v767), vshlq_n_s16(v767, 2uLL)), vaddq_s16(v759, v26)), 5uLL))), v762);
            v754 += 32;
            v765 = (v765 + v2749);
            v763 = v766;
          }

          while (v754 != 512);
          v768 = 0;
          v769 = &v176[-v2717];
          v770 = *(v769 + 2);
          v771 = (v769 + v2749 + 8);
          v772 = (v771 + v2749 + v2749);
          v773 = vzip1q_s8(*(v772 + v2749), v25);
          v774 = vzip1q_s8(*v772, v25);
          v775 = vzip1q_s8(*(v771 + v2749), v25);
          v776 = vzip1q_s8(*v771, v25);
          v777 = vzip1q_s8(v770, v25);
          v778 = (v2746 + v764 + v150 + 2 * v2717 * v2708 - 4 * v2717 + 8);
          v184 = v2732;
          do
          {
            v779 = v776;
            v776 = v775;
            v775 = v774;
            v774 = v773;
            v773 = vzip1q_s8(*v778, v25);
            v780 = vsubq_s16(vshlq_n_s16(vaddq_s16(v776, v775), 2uLL), vaddq_s16(v779, v774));
            *(&v2812 + v768) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v777, v780), vshlq_n_s16(v780, 2uLL)), vaddq_s16(v773, v26)), 5uLL))), v776);
            v768 += 32;
            v778 = (v778 + v2749);
            v777 = v779;
          }

          while (v768 != 512);
          break;
        case 2:
          v594 = 0;
          v595 = &v176[-v2717];
          v596 = (v595 + v2749);
          v597 = (v596 + v2749);
          v598 = (v597 + v2749);
          v599 = vzip1q_s8(*(v598 + v2749), v25);
          v600 = vzip1q_s8(*v598, v25);
          v601 = vzip1q_s8(*v597, v25);
          v602 = vzip1q_s8(*v596, v25);
          v603 = vzip1q_s8(*v595, v25);
          v604 = 5 * v2749;
          v605 = (v2746 + v604 + v150 + 2 * v2717 * v2708 - 4 * v2717);
          do
          {
            v606 = v602;
            v602 = v601;
            v601 = v600;
            v600 = v599;
            v607 = &v2811.i8[v594];
            v599 = vzip1q_s8(*v605, v25);
            v608 = vsubq_s16(vshlq_n_s16(vaddq_s16(v602, v601), 2uLL), vaddq_s16(v606, v600));
            *v608.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v603, v608), vshlq_n_s16(v608, 2uLL)), vaddq_s16(v599, v26)), 5uLL));
            v609 = v25.i64[0];
            vst2_s8(v607, v608);
            v594 += 32;
            v605 = (v605 + v2749);
            v603 = v606;
          }

          while (v594 != 512);
          v610 = 0;
          v611 = &v176[-v2717];
          v612 = *(v611 + 2);
          v613 = (v611 + v2749 + 8);
          v614 = (v613 + v2749 + v2749);
          v615 = vzip1q_s8(*(v614 + v2749), v25);
          v616 = vzip1q_s8(*v614, v25);
          v617 = vzip1q_s8(*(v613 + v2749), v25);
          v618 = vzip1q_s8(*v613, v25);
          v619 = vzip1q_s8(v612, v25);
          v620 = (v2746 + v604 + v150 + 2 * v2717 * v2708 - 4 * v2717 + 8);
          v184 = v2732;
          do
          {
            v621 = v618;
            v618 = v617;
            v617 = v616;
            v616 = v615;
            v622 = &v2812.i8[v610];
            v615 = vzip1q_s8(*v620, v25);
            v623 = vsubq_s16(vshlq_n_s16(vaddq_s16(v618, v617), 2uLL), vaddq_s16(v621, v616));
            *v623.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v619, v623), vshlq_n_s16(v623, 2uLL)), vaddq_s16(v615, v26)), 5uLL));
            v624 = v25.i64[0];
            vst2_s8(v622, v623);
            v610 += 32;
            v620 = (v620 + v2749);
            v619 = v621;
          }

          while (v610 != 512);
          break;
        case 3:
          v690 = 0;
          v691 = &v176[-v2717];
          v692 = (v691 + v2749);
          v693 = (v692 + v2749);
          v694 = (v693 + v2749);
          v695 = vzip1q_s8(*(v694 + v2749), v25);
          v696 = vzip1q_s8(*v694, v25);
          v697 = vzip1q_s8(*v693, v25);
          v698 = vzip1q_s8(*v692, v25);
          v699 = vzip1q_s8(*v691, v25);
          v700 = 5 * v2749;
          v701 = (v2746 + v700 + v150 + 2 * v2717 * v2708 - 4 * v2717);
          do
          {
            v702 = v698;
            v698 = v697;
            v697 = v696;
            v696 = v695;
            v695 = vzip1q_s8(*v701, v25);
            v703 = vsubq_s16(vshlq_n_s16(vaddq_s16(v698, v697), 2uLL), vaddq_s16(v702, v696));
            *(&v2811 + v690) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v699, v703), vshlq_n_s16(v703, 2uLL)), vaddq_s16(v695, v26)), 5uLL))), v697);
            v690 += 32;
            v701 = (v701 + v2749);
            v699 = v702;
          }

          while (v690 != 512);
          v704 = 0;
          v705 = &v176[-v2717];
          v706 = *(v705 + 2);
          v707 = (v705 + v2749 + 8);
          v708 = (v707 + v2749 + v2749);
          v709 = vzip1q_s8(*(v708 + v2749), v25);
          v710 = vzip1q_s8(*v708, v25);
          v711 = vzip1q_s8(*(v707 + v2749), v25);
          v712 = vzip1q_s8(*v707, v25);
          v713 = vzip1q_s8(v706, v25);
          v714 = (v2746 + v700 + v150 + 2 * v2717 * v2708 - 4 * v2717 + 8);
          v184 = v2732;
          do
          {
            v715 = v712;
            v712 = v711;
            v711 = v710;
            v710 = v709;
            v709 = vzip1q_s8(*v714, v25);
            v716 = vsubq_s16(vshlq_n_s16(vaddq_s16(v712, v711), 2uLL), vaddq_s16(v715, v710));
            *(&v2812 + v704) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v713, v716), vshlq_n_s16(v716, 2uLL)), vaddq_s16(v709, v26)), 5uLL))), v711);
            v704 += 32;
            v714 = (v714 + v2749);
            v713 = v715;
          }

          while (v704 != 512);
          break;
        case 4:
          v543 = 0;
          v544 = (v176 - 2);
          do
          {
            v545 = *v544;
            v544 = (v544 + v2749);
            v546 = vzip1q_s8(vextq_s8(v545, v545, 2uLL), v25);
            v547 = vsubq_s16(vshlq_n_s16(vaddq_s16(v546, vzip1q_s8(vextq_s8(v545, v545, 3uLL), v25)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v545, v545, 1uLL), v25), vzip1q_s8(vextq_s8(v545, v545, 4uLL), v25)));
            *(&v2811 + v543) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v547, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v545, v25), vzip1q_s8(vextq_s8(v545, v545, 5uLL), v25)), v547)), v26), 5uLL))), v546);
            v543 += 32;
          }

          while (v543 != 512);
          v548 = 0;
          v549 = (v176 + 6);
          v184 = v2732;
          do
          {
            v550 = *v549;
            v549 = (v549 + v2749);
            v551 = vzip1q_s8(vextq_s8(v550, v550, 2uLL), v25);
            v552 = vsubq_s16(vshlq_n_s16(vaddq_s16(v551, vzip1q_s8(vextq_s8(v550, v550, 3uLL), v25)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v550, v550, 1uLL), v25), vzip1q_s8(vextq_s8(v550, v550, 4uLL), v25)));
            *(&v2812 + v548) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v552, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v550, v25), vzip1q_s8(vextq_s8(v550, v550, 5uLL), v25)), v552)), v26), 5uLL))), v551);
            v548 += 32;
          }

          while (v548 != 512);
          break;
        case 5:
          v675 = v2746 + v150 + v151 * v2749;
          v676 = v2749;
          v677 = 2;
          goto LABEL_463;
        case 6:
          v2791 = v10;
          v2805 = v25;
          v538 = v177;
          sub_27729B1B0(v2811.i8, 0x20u, v176, v2749);
          sub_27729B1B0(v2812.i8, 0x20u, (v176 + 2), v2749);
          goto LABEL_523;
        case 7:
          v675 = v2746 + v150 + v151 * v2749;
          v676 = v2749;
          v677 = 3;
LABEL_463:
          v835 = 2;
          goto LABEL_522;
        case 8:
          v1526 = 0;
          v1527 = (v176 - 2);
          do
          {
            v1528 = &v2811.i8[v1526];
            v1529 = *v1527;
            v1527 = (v1527 + v2749);
            v1530 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1529, v1529, 2uLL), v25), vzip1q_s8(vextq_s8(v1529, v1529, 3uLL), v25)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1529, v1529, 1uLL), v25), vzip1q_s8(vextq_s8(v1529, v1529, 4uLL), v25)));
            *v1529.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1530, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1529, v25), vzip1q_s8(vextq_s8(v1529, v1529, 5uLL), v25)), v1530)), v26), 5uLL));
            v1530.i64[0] = v25.i64[0];
            vst2_s8(v1528, v1529);
            v1526 += 32;
          }

          while (v1526 != 512);
          v1531 = 0;
          v1532 = (v176 + 6);
          v184 = v2732;
          do
          {
            v1533 = &v2812.i8[v1531];
            v1534 = *v1532;
            v1532 = (v1532 + v2749);
            v1535 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1534, v1534, 2uLL), v25), vzip1q_s8(vextq_s8(v1534, v1534, 3uLL), v25)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1534, v1534, 1uLL), v25), vzip1q_s8(vextq_s8(v1534, v1534, 4uLL), v25)));
            *v1534.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1535, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1534, v25), vzip1q_s8(vextq_s8(v1534, v1534, 5uLL), v25)), v1535)), v26), 5uLL));
            v1535.i64[0] = v25.i64[0];
            vst2_s8(v1533, v1534);
            v1531 += 32;
          }

          while (v1531 != 512);
          break;
        case 9:
          v2791 = v10;
          v2805 = v25;
          v538 = v177;
          sub_27729B614(v2811.i8, 0x20u, v176, v2749, 16);
          sub_27729B614(v2812.i8, 0x20u, (v176 + 2), v2749, 16);
          goto LABEL_523;
        case 10:
          v2791 = v10;
          v2805 = v25;
          v538 = v177;
          sub_27729B7DC(&v2811, 32, v176, v2749, 16);
          sub_27729B7DC(&v2812, 32, (v176 + 2), v2749, 16);
          goto LABEL_523;
        case 11:
          v2791 = v10;
          v2805 = v25;
          v538 = v177;
          sub_27729B98C(v2811.i8, 0x20u, v176, v2749, 16);
          sub_27729B98C(v2812.i8, 0x20u, (v176 + 2), v2749, 16);
          goto LABEL_523;
        case 12:
          v564 = 0;
          v565 = (v176 - 2);
          do
          {
            v566 = *v565;
            v565 = (v565 + v2749);
            v567 = vzip1q_s8(vextq_s8(v566, v566, 3uLL), v25);
            v568 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v566, v566, 2uLL), v25), v567), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v566, v566, 1uLL), v25), vzip1q_s8(vextq_s8(v566, v566, 4uLL), v25)));
            *(&v2811 + v564) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v568, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v566, v25), vzip1q_s8(vextq_s8(v566, v566, 5uLL), v25)), v568)), v26), 5uLL))), v567);
            v564 += 32;
          }

          while (v564 != 512);
          v569 = 0;
          v570 = (v176 + 6);
          v184 = v2732;
          do
          {
            v571 = *v570;
            v570 = (v570 + v2749);
            v572 = vzip1q_s8(vextq_s8(v571, v571, 3uLL), v25);
            v573 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v571, v571, 2uLL), v25), v572), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v571, v571, 1uLL), v25), vzip1q_s8(vextq_s8(v571, v571, 4uLL), v25)));
            *(&v2812 + v569) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v573, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v571, v25), vzip1q_s8(vextq_s8(v571, v571, 5uLL), v25)), v573)), v26), 5uLL))), v572);
            v569 += 32;
          }

          while (v569 != 512);
          break;
        case 13:
          v675 = v2746 + v150 + v151 * v2749;
          v676 = v2749;
          v677 = 2;
          goto LABEL_521;
        case 14:
          v2791 = v10;
          v2805 = v25;
          v538 = v177;
          sub_27729BBEC(v2811.i8, 0x20u, v176, v2749);
          sub_27729BBEC(v2812.i8, 0x20u, (v176 + 2), v2749);
          goto LABEL_523;
        case 15:
          v675 = v2746 + v150 + v151 * v2749;
          v676 = v2749;
          v677 = 3;
LABEL_521:
          v835 = 3;
LABEL_522:
          v2791 = v10;
          v2805 = v25;
          v538 = v177;
          sub_27729AF04(v2811.i8, v675, v676, 16, v677, v835);
LABEL_523:
          v177 = v538;
          v26.i64[0] = 0x10001000100010;
          v26.i64[1] = 0x10001000100010;
          v10 = v2791;
          v25 = v2805;
          v184 = v2732;
          break;
        default:
          v183 = 0;
          v184 = v2732;
          do
          {
            v185 = &v2811.i8[v183];
            v10 = *v176;
            v176 = (v176 + v2749);
            vst2_s8(v185, v10);
            v185 += 16;
            *v185 = vzip2q_s8(v10, v25);
            v183 += 32;
          }

          while (v183 != 512);
          break;
      }

      switch(v184)
      {
        case 1:
          v1086 = 0;
          v1087 = &v177[-v2726];
          v1088 = (v1087 + v2733);
          v1089 = (v1088 + v2733);
          v1090 = (v1089 + v2733);
          v1091 = vzip1q_s8(*(v1090 + v2733), v25);
          v1092 = vzip1q_s8(*v1090, v25);
          v1093 = vzip1q_s8(*v1089, v25);
          v1094 = vzip1q_s8(*v1088, v25);
          v1095 = vzip1q_s8(*v1087, v25);
          v1096 = 5 * v2733;
          v1097 = (v2744 + v1096 + v2710 + 2 * v2726 * v2709 - 4 * v2726);
          do
          {
            v1098 = v1094;
            v1094 = v1093;
            v1093 = v1092;
            v1092 = v1091;
            v1091 = vzip1q_s8(*v1097, v25);
            v1099 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1094, v1093), 2uLL), vaddq_s16(v1098, v1092));
            *(&v2815 + v1086) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1095, v1099), vshlq_n_s16(v1099, 2uLL)), vaddq_s16(v1091, v26)), 5uLL))), v1094);
            v1086 += 32;
            v1097 = (v1097 + v2733);
            v1095 = v1098;
          }

          while (v1086 != 512);
          v1100 = 0;
          v1101 = &v177[-v2726];
          v1102 = *(v1101 + 2);
          v1103 = (v1101 + v2733 + 8);
          v1104 = (v1103 + v2733 + v2733);
          v1105 = vzip1q_s8(*(v1104 + v2733), v25);
          v1106 = vzip1q_s8(*v1104, v25);
          v1107 = vzip1q_s8(*(v1103 + v2733), v25);
          v1108 = vzip1q_s8(*v1103, v25);
          v1109 = vzip1q_s8(v1102, v25);
          v1110 = (v2744 + v1096 + v2710 + 2 * v2726 * v2709 - 4 * v2726 + 8);
          v20 = v2757;
          v992 = v2758;
          v993 = v2725;
          v994 = v2729;
          v27.i64[0] = 0x20002000200020;
          v27.i64[1] = 0x20002000200020;
          v996 = v2702;
          v995 = v2703;
          v997 = v2712;
          v998 = v2701;
          do
          {
            v1111 = v1108;
            v1108 = v1107;
            v1107 = v1106;
            v1106 = v1105;
            v1105 = vzip1q_s8(*v1110, v25);
            v1112 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1108, v1107), 2uLL), vaddq_s16(v1111, v1106));
            *(&v2816 + v1100) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1109, v1112), vshlq_n_s16(v1112, 2uLL)), vaddq_s16(v1105, v26)), 5uLL))), v1108);
            v1100 += 32;
            v1110 = (v1110 + v2733);
            v1109 = v1111;
          }

          while (v1100 != 512);
          break;
        case 2:
          v1025 = 0;
          v1026 = &v177[-v2726];
          v1027 = (v1026 + v2733);
          v1028 = (v1027 + v2733);
          v1029 = (v1028 + v2733);
          v1030 = vzip1q_s8(*(v1029 + v2733), v25);
          v1031 = vzip1q_s8(*v1029, v25);
          v1032 = vzip1q_s8(*v1028, v25);
          v1033 = vzip1q_s8(*v1027, v25);
          v1034 = vzip1q_s8(*v1026, v25);
          v1035 = 5 * v2733;
          v1036 = (v2744 + v1035 + v2710 + 2 * v2726 * v2709 - 4 * v2726);
          do
          {
            v1037 = v1033;
            v1033 = v1032;
            v1032 = v1031;
            v1031 = v1030;
            v1038 = &v2815.i8[v1025];
            v1030 = vzip1q_s8(*v1036, v25);
            v1039 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1033, v1032), 2uLL), vaddq_s16(v1037, v1031));
            *v1039.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1034, v1039), vshlq_n_s16(v1039, 2uLL)), vaddq_s16(v1030, v26)), 5uLL));
            v1040 = v25.i64[0];
            vst2_s8(v1038, v1039);
            v1025 += 32;
            v1036 = (v1036 + v2733);
            v1034 = v1037;
          }

          while (v1025 != 512);
          v1041 = 0;
          v1042 = &v177[-v2726];
          v1043 = *(v1042 + 2);
          v1044 = (v1042 + v2733 + 8);
          v1045 = (v1044 + v2733 + v2733);
          v1046 = vzip1q_s8(*(v1045 + v2733), v25);
          v1047 = vzip1q_s8(*v1045, v25);
          v1048 = vzip1q_s8(*(v1044 + v2733), v25);
          v1049 = vzip1q_s8(*v1044, v25);
          v1050 = vzip1q_s8(v1043, v25);
          v1051 = (v2744 + v1035 + v2710 + 2 * v2726 * v2709 - 4 * v2726 + 8);
          v20 = v2757;
          v992 = v2758;
          v993 = v2725;
          v994 = v2729;
          v27.i64[0] = 0x20002000200020;
          v27.i64[1] = 0x20002000200020;
          v996 = v2702;
          v995 = v2703;
          v997 = v2712;
          v998 = v2701;
          do
          {
            v1052 = v1049;
            v1049 = v1048;
            v1048 = v1047;
            v1047 = v1046;
            v1053 = &v2816.i8[v1041];
            v1046 = vzip1q_s8(*v1051, v25);
            v1054 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1049, v1048), 2uLL), vaddq_s16(v1052, v1047));
            *v1054.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1050, v1054), vshlq_n_s16(v1054, 2uLL)), vaddq_s16(v1046, v26)), 5uLL));
            v1055 = v25.i64[0];
            vst2_s8(v1053, v1054);
            v1041 += 32;
            v1051 = (v1051 + v2733);
            v1050 = v1052;
          }

          while (v1041 != 512);
          break;
        case 3:
          v1059 = 0;
          v1060 = &v177[-v2726];
          v1061 = (v1060 + v2733);
          v1062 = (v1061 + v2733);
          v1063 = (v1062 + v2733);
          v1064 = vzip1q_s8(*(v1063 + v2733), v25);
          v1065 = vzip1q_s8(*v1063, v25);
          v1066 = vzip1q_s8(*v1062, v25);
          v1067 = vzip1q_s8(*v1061, v25);
          v1068 = vzip1q_s8(*v1060, v25);
          v1069 = 5 * v2733;
          v1070 = (v2744 + v1069 + v2710 + 2 * v2726 * v2709 - 4 * v2726);
          do
          {
            v1071 = v1067;
            v1067 = v1066;
            v1066 = v1065;
            v1065 = v1064;
            v1064 = vzip1q_s8(*v1070, v25);
            v1072 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1067, v1066), 2uLL), vaddq_s16(v1071, v1065));
            *(&v2815 + v1059) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1068, v1072), vshlq_n_s16(v1072, 2uLL)), vaddq_s16(v1064, v26)), 5uLL))), v1066);
            v1059 += 32;
            v1070 = (v1070 + v2733);
            v1068 = v1071;
          }

          while (v1059 != 512);
          v1073 = 0;
          v1074 = &v177[-v2726];
          v1075 = *(v1074 + 2);
          v1076 = (v1074 + v2733 + 8);
          v1077 = (v1076 + v2733 + v2733);
          v1078 = vzip1q_s8(*(v1077 + v2733), v25);
          v1079 = vzip1q_s8(*v1077, v25);
          v1080 = vzip1q_s8(*(v1076 + v2733), v25);
          v1081 = vzip1q_s8(*v1076, v25);
          v1082 = vzip1q_s8(v1075, v25);
          v1083 = (v2744 + v1069 + v2710 + 2 * v2726 * v2709 - 4 * v2726 + 8);
          v20 = v2757;
          v992 = v2758;
          v993 = v2725;
          v994 = v2729;
          v27.i64[0] = 0x20002000200020;
          v27.i64[1] = 0x20002000200020;
          v996 = v2702;
          v995 = v2703;
          v997 = v2712;
          v998 = v2701;
          do
          {
            v1084 = v1081;
            v1081 = v1080;
            v1080 = v1079;
            v1079 = v1078;
            v1078 = vzip1q_s8(*v1083, v25);
            v1085 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1081, v1080), 2uLL), vaddq_s16(v1084, v1079));
            *(&v2816 + v1073) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1082, v1085), vshlq_n_s16(v1085, 2uLL)), vaddq_s16(v1078, v26)), 5uLL))), v1080);
            v1073 += 32;
            v1083 = (v1083 + v2733);
            v1082 = v1084;
          }

          while (v1073 != 512);
          break;
        case 4:
          v1004 = 0;
          v1005 = (v177 - 2);
          do
          {
            v1006 = *v1005;
            v1005 = (v1005 + v2733);
            v1007 = vzip1q_s8(vextq_s8(v1006, v1006, 2uLL), v25);
            v1008 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1007, vzip1q_s8(vextq_s8(v1006, v1006, 3uLL), v25)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1006, v1006, 1uLL), v25), vzip1q_s8(vextq_s8(v1006, v1006, 4uLL), v25)));
            *(&v2815 + v1004) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1008, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1006, v25), vzip1q_s8(vextq_s8(v1006, v1006, 5uLL), v25)), v1008)), v26), 5uLL))), v1007);
            v1004 += 32;
          }

          while (v1004 != 512);
          v1009 = 0;
          v1010 = (v177 + 6);
          v20 = v2757;
          v992 = v2758;
          v993 = v2725;
          v994 = v2729;
          v27.i64[0] = 0x20002000200020;
          v27.i64[1] = 0x20002000200020;
          v996 = v2702;
          v995 = v2703;
          v997 = v2712;
          v998 = v2701;
          do
          {
            v1011 = *v1010;
            v1010 = (v1010 + v2733);
            v1012 = vzip1q_s8(vextq_s8(v1011, v1011, 2uLL), v25);
            v1013 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1012, vzip1q_s8(vextq_s8(v1011, v1011, 3uLL), v25)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1011, v1011, 1uLL), v25), vzip1q_s8(vextq_s8(v1011, v1011, 4uLL), v25)));
            *(&v2816 + v1009) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1013, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1011, v25), vzip1q_s8(vextq_s8(v1011, v1011, 5uLL), v25)), v1013)), v26), 5uLL))), v1012);
            v1009 += 32;
          }

          while (v1009 != 512);
          break;
        case 5:
          v1056 = v177;
          v1057 = v2733;
          v1058 = 2;
          goto LABEL_559;
        case 6:
          v2792 = v10;
          v2806 = v25;
          v1522 = v177;
          sub_27729B1B0(v2815.i8, 0x20u, v177, v2733);
          sub_27729B1B0(v2816.i8, 0x20u, (v1522 + 2), v2733);
          goto LABEL_603;
        case 7:
          v1056 = v177;
          v1057 = v2733;
          v1058 = 3;
LABEL_559:
          v1113 = 2;
          goto LABEL_602;
        case 8:
          v1546 = 0;
          v1547 = (v177 - 2);
          do
          {
            v1548 = &v2815.i8[v1546];
            v1549 = *v1547;
            v1547 = (v1547 + v2733);
            v1550 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1549, v1549, 2uLL), v25), vzip1q_s8(vextq_s8(v1549, v1549, 3uLL), v25)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1549, v1549, 1uLL), v25), vzip1q_s8(vextq_s8(v1549, v1549, 4uLL), v25)));
            *v1549.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1550, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1549, v25), vzip1q_s8(vextq_s8(v1549, v1549, 5uLL), v25)), v1550)), v26), 5uLL));
            v1550.i64[0] = v25.i64[0];
            vst2_s8(v1548, v1549);
            v1546 += 32;
          }

          while (v1546 != 512);
          v1551 = 0;
          v1552 = (v177 + 6);
          v20 = v2757;
          v992 = v2758;
          v993 = v2725;
          v994 = v2729;
          v27.i64[0] = 0x20002000200020;
          v27.i64[1] = 0x20002000200020;
          v996 = v2702;
          v995 = v2703;
          v997 = v2712;
          v998 = v2701;
          do
          {
            v1553 = &v2816.i8[v1551];
            v1554 = *v1552;
            v1552 = (v1552 + v2733);
            v1555 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1554, v1554, 2uLL), v25), vzip1q_s8(vextq_s8(v1554, v1554, 3uLL), v25)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1554, v1554, 1uLL), v25), vzip1q_s8(vextq_s8(v1554, v1554, 4uLL), v25)));
            *v1554.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1555, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1554, v25), vzip1q_s8(vextq_s8(v1554, v1554, 5uLL), v25)), v1555)), v26), 5uLL));
            v1555.i64[0] = v25.i64[0];
            vst2_s8(v1553, v1554);
            v1551 += 32;
          }

          while (v1551 != 512);
          break;
        case 9:
          v2792 = v10;
          v2806 = v25;
          v1024 = v177;
          sub_27729B614(v2815.i8, 0x20u, v177, v2733, 16);
          sub_27729B614(v2816.i8, 0x20u, (v1024 + 2), v2733, 16);
          goto LABEL_603;
        case 10:
          v2792 = v10;
          v2806 = v25;
          v1524 = v177;
          sub_27729B7DC(&v2815, 32, v177, v2733, 16);
          sub_27729B7DC(&v2816, 32, (v1524 + 2), v2733, 16);
          goto LABEL_603;
        case 11:
          v2792 = v10;
          v2806 = v25;
          v1003 = v177;
          sub_27729B98C(v2815.i8, 0x20u, v177, v2733, 16);
          sub_27729B98C(v2816.i8, 0x20u, (v1003 + 2), v2733, 16);
          goto LABEL_603;
        case 12:
          v1014 = 0;
          v1015 = (v177 - 2);
          do
          {
            v1016 = *v1015;
            v1015 = (v1015 + v2733);
            v1017 = vzip1q_s8(vextq_s8(v1016, v1016, 3uLL), v25);
            v1018 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1016, v1016, 2uLL), v25), v1017), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1016, v1016, 1uLL), v25), vzip1q_s8(vextq_s8(v1016, v1016, 4uLL), v25)));
            *(&v2815 + v1014) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1018, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1016, v25), vzip1q_s8(vextq_s8(v1016, v1016, 5uLL), v25)), v1018)), v26), 5uLL))), v1017);
            v1014 += 32;
          }

          while (v1014 != 512);
          v1019 = 0;
          v1020 = (v177 + 6);
          v20 = v2757;
          v992 = v2758;
          v993 = v2725;
          v994 = v2729;
          v27.i64[0] = 0x20002000200020;
          v27.i64[1] = 0x20002000200020;
          v996 = v2702;
          v995 = v2703;
          v997 = v2712;
          v998 = v2701;
          do
          {
            v1021 = *v1020;
            v1020 = (v1020 + v2733);
            v1022 = vzip1q_s8(vextq_s8(v1021, v1021, 3uLL), v25);
            v1023 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1021, v1021, 2uLL), v25), v1022), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1021, v1021, 1uLL), v25), vzip1q_s8(vextq_s8(v1021, v1021, 4uLL), v25)));
            *(&v2816 + v1019) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1023, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1021, v25), vzip1q_s8(vextq_s8(v1021, v1021, 5uLL), v25)), v1023)), v26), 5uLL))), v1022);
            v1019 += 32;
          }

          while (v1019 != 512);
          break;
        case 13:
          v1056 = v177;
          v1057 = v2733;
          v1058 = 2;
          goto LABEL_601;
        case 14:
          v2792 = v10;
          v2806 = v25;
          v1002 = v177;
          sub_27729BBEC(v2815.i8, 0x20u, v177, v2733);
          sub_27729BBEC(v2816.i8, 0x20u, (v1002 + 2), v2733);
          goto LABEL_603;
        case 15:
          v1056 = v177;
          v1057 = v2733;
          v1058 = 3;
LABEL_601:
          v1113 = 3;
LABEL_602:
          v2792 = v10;
          v2806 = v25;
          sub_27729AF04(v2815.i8, v1056, v1057, 16, v1058, v1113);
LABEL_603:
          v26.i64[0] = 0x10001000100010;
          v26.i64[1] = 0x10001000100010;
          v10 = v2792;
          v25 = v2806;
          v20 = v2757;
          v992 = v2758;
          v993 = v2725;
          v994 = v2729;
          v27.i64[0] = 0x20002000200020;
          v27.i64[1] = 0x20002000200020;
          v996 = v2702;
          v995 = v2703;
          v997 = v2712;
          v998 = v2701;
          break;
        default:
          v991 = 0;
          v20 = v2757;
          v992 = v2758;
          v993 = v2725;
          v994 = v2729;
          v27.i64[0] = 0x20002000200020;
          v27.i64[1] = 0x20002000200020;
          v996 = v2702;
          v995 = v2703;
          v997 = v2712;
          v998 = v2701;
          do
          {
            v999 = &v2815.i8[v991];
            v1000 = *v177;
            v177 = (v177 + v2733);
            v1001 = v25.i64[0];
            vst2_s8(v999, v1000);
            v999 += 16;
            *v999 = vzip2q_s8(v1000, v25);
            v991 += 32;
          }

          while (v991 != 512);
          break;
      }

      v1237 = 0;
      do
      {
        v1238 = v2814[v1237 / 0x10];
        v1239 = vrhaddq_u16(*(&v2811 + v1237), *(&v2815 + v1237));
        v1240 = vrhaddq_u16(*(&v2811 + v1237 + 16), *(&v2816 + v1237));
        v1241 = vrhaddq_u16(*(&v2813 + v1237), *(&v2817 + v1237));
        v1242 = vrhaddq_u16(v1238, v2818[v1237 / 0x10]);
        if (v2752)
        {
          v1238 = *v168;
          v1243 = *(v168 + 16);
          v1244 = *(v168 + 32);
          v1245 = *(v168 + 48);
          v168 += 64;
          v1239 = vaddq_s16(v1238, v1239);
          v1240 = vaddq_s16(v1243, v1240);
          v1241 = vaddq_s16(v1244, v1241);
          v1242 = vaddq_s16(v1245, v1242);
        }

        *v173->i8 = vqmovun_high_s16(vqmovun_s16(v1239), v1240);
        *&v173->i8[v993] = vqmovun_high_s16(vqmovun_s16(v1241), v1242);
        v173 = (v173 + v994);
        v1237 += 64;
      }

      while (v1237 != 512);
      if (v998 == 64)
      {
        __asm { PRFM            #0, [X20] }

        v1271 = 9;
        v1249 = v2819;
        v1246 = v2723;
        do
        {
          v1272 = _X20;
          _X20 = (_X20 + v2778);
          __asm { PRFM            #0, [X20] }

          v1274 = vextq_s8(*v1272, *v1272, 2uLL);
          v1274.i16[7] = v1272[1].i16[0];
          v1275 = vrhaddq_u8(*v1272, v1274);
          v1274.i64[0] = v25.i64[0];
          v1249[3] = vzip2q_s8(v1275, v25);
          v1249 += 2;
          vst2_s8(v1249->i8, *(&v1274 - 8));
          --v1271;
        }

        while (v1271 > 2);
        v1276 = vextq_s8(*_X20, *_X20, 2uLL);
        v1276.i16[7] = _X20[1].i16[0];
        v1269 = vrhaddq_u8(*_X20, v1276);
      }

      else
      {
        v1246 = v2723;
        if (v998 != 4)
        {
          if (v998)
          {
            v1279 = 0;
            v1280 = v2706 - (8 * v2722 + 8 * v2727) + 64;
            v1281 = v25;
            v1281.i32[0] = v1280 | (v1280 << 16);
            v1282 = vqtbl1q_s8(v1281, xmmword_2773B3DF0);
            v1283 = v25;
            v1283.i32[0] = (8 * v2722 - v2706) | ((8 * v2722 - v2706) << 16);
            v1284 = vqtbl1q_s8(v1283, xmmword_2773B3DF0);
            v1285 = v25;
            v1285.i32[0] = (8 * v2727 - v2706) | ((8 * v2727 - v2706) << 16);
            v1286 = vqtbl1q_s8(v1285, xmmword_2773B3DF0);
            v2829 = v1282;
            v2830 = v1284;
            v2831 = v1286;
            v2832 = v996;
            _X10 = &_X20->i8[v2778];
            __asm { PRFM            #0, [X10] }

            v1238.i64[0] = _X20->i64[0];
            v1289 = vqtbl1q_s8(v1238, xmmword_2773B3E00);
            v1289.i16[3] = _X20->i16[4];
            v1290 = vzip1q_s8(v1289, v25);
            v1291 = vzip1q_s8(v1238, v25);
            v1292 = v2721;
            if (v2721 <= -16)
            {
              v1292 = -16;
            }

            if (v1292 >= v2718)
            {
              v1293 = v2718;
            }

            else
            {
              v1293 = v1292;
            }

            v1294 = v1293 + v2714;
            v1295 = (v992 + v1294 + v2778 + 8);
            _X15 = v992 + v1294 + 2 * v2778;
            do
            {
              __asm { PRFM            #0, [X15] }

              v1298 = vmlaq_s16(vmulq_s16(v1284, v1290), v1282, v1291);
              v1290.i64[0] = *(v1295 - 1);
              v1291 = vzip1q_s8(v1290, v25);
              v1299 = vqtbl1q_s8(v1290, xmmword_2773B3E00);
              v1299.i16[3] = *v1295;
              v1295 = (v1295 + v2778);
              v1290 = vzip1q_s8(v1299, v25);
              *(&v2820 + v1279) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1298, v1286, v1291), v996, v1290), v27), 6uLL);
              v1279 += 32;
              _X15 += v2778;
            }

            while (v1279 != 256);
            v1300 = 0;
            _X11 = &_X20->i64[1] + v2778;
            __asm { PRFM            #0, [X11] }

            v1291.i64[0] = _X20->i64[1];
            v1303 = vqtbl1q_s8(v1291, xmmword_2773B3E00);
            v1303.i16[3] = _X20[1].i16[0];
            v1304 = vzip1q_s8(v1303, v25);
            v1238 = vzip1q_s8(v1291, v25);
            if (v1292 >= v2718)
            {
              v1292 = v2718;
            }

            v1305 = v992 + v2714 + v1292;
            do
            {
              _X12 = v1305 + 2 * v2778 + 8;
              v1305 += v2778;
              __asm { PRFM            #0, [X12] }

              v1308 = vmlaq_s16(vmulq_s16(v1284, v1304), v1282, v1238);
              v1304.i64[0] = *(v1305 + 8);
              v1238 = vzip1q_s8(v1304, v25);
              v1309 = vqtbl1q_s8(v1304, xmmword_2773B3E00);
              v1309.i16[3] = *(v1305 + 16);
              v1304 = vzip1q_s8(v1309, v25);
              *(&v2821 + v1300) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1308, v1286, v1238), v996, v1304), v27), 6uLL);
              v1300 += 32;
            }

            while (v1300 != 256);
LABEL_637:
            if (v997 == 64)
            {
              __asm { PRFM            #0, [X28] }

              v1334 = 9;
              v1312 = v2824;
              do
              {
                v1335 = _X28;
                _X28 = (_X28 + v2734);
                __asm { PRFM            #0, [X28] }

                v1337 = vextq_s8(*v1335, *v1335, 2uLL);
                v1337.i16[7] = v1335[1].i16[0];
                v1338 = vrhaddq_u8(*v1335, v1337);
                v1337.i64[0] = v25.i64[0];
                v1312[3] = vzip2q_s8(v1338, v25);
                v1312 += 2;
                vst2_s8(v1312->i8, *(&v1337 - 8));
                --v1334;
              }

              while (v1334 > 2);
              v1339 = vextq_s8(*_X28, *_X28, 2uLL);
              v1339.i16[7] = _X28[1].i16[0];
              v1332 = vrhaddq_u8(*_X28, v1339);
            }

            else
            {
              if (v997 != 4)
              {
                if (v997)
                {
                  v1342 = 0;
                  v1343 = v2707 - (8 * v2754 + 8 * v2728) + 64;
                  v1344 = v25;
                  v1344.i32[0] = v1343 | (v1343 << 16);
                  v1345 = vqtbl1q_s8(v1344, xmmword_2773B3DF0);
                  v1346 = v25;
                  v1346.i32[0] = (8 * v2754 - v2707) | ((8 * v2754 - v2707) << 16);
                  v1347 = vqtbl1q_s8(v1346, xmmword_2773B3DF0);
                  v1348 = v25;
                  v1348.i32[0] = (8 * v2728 - v2707) | ((8 * v2728 - v2707) << 16);
                  v1349 = vqtbl1q_s8(v1348, xmmword_2773B3DF0);
                  v2833 = v1345;
                  v2834 = v1347;
                  v2835 = v1349;
                  v2836 = v995;
                  _X8 = &_X28->i8[v2734];
                  __asm { PRFM            #0, [X8] }

                  v1238.i64[0] = _X28->i64[0];
                  v1352 = vqtbl1q_s8(v1238, xmmword_2773B3E00);
                  v1353 = -16;
                  if (v2719 > -16)
                  {
                    v1353 = v2719;
                  }

                  if (v1353 >= v2720)
                  {
                    v1354 = v2720;
                  }

                  else
                  {
                    v1354 = v1353;
                  }

                  v1355 = v131 + v2698 + v1354;
                  v1352.i16[3] = _X28->i16[4];
                  v1356 = vzip1q_s8(v1352, v25);
                  v1357 = vzip1q_s8(v1238, v25);
                  do
                  {
                    _X15 = v1355 + 2 * v2734;
                    v1355 += v2734;
                    __asm { PRFM            #0, [X15] }

                    v1360 = vmlaq_s16(vmulq_s16(v1347, v1356), v1345, v1357);
                    v1356.i64[0] = *v1355;
                    v1357 = vzip1q_s8(v1356, v25);
                    v1361 = vqtbl1q_s8(v1356, xmmword_2773B3E00);
                    v1361.i16[3] = *(v1355 + 8);
                    v1356 = vzip1q_s8(v1361, v25);
                    *(&v2825 + v1342) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1360, v1349, v1357), v995, v1356), v27), 6uLL);
                    v1342 += 32;
                  }

                  while (v1342 != 256);
                  v1362 = 0;
                  _X11 = &_X28->i64[1] + v2734;
                  __asm { PRFM            #0, [X11] }

                  v1357.i64[0] = _X28->i64[1];
                  v1365 = vqtbl1q_s8(v1357, xmmword_2773B3E00);
                  v1365.i16[3] = _X28[1].i16[0];
                  v1366 = vzip1q_s8(v1365, v25);
                  v1367 = vzip1q_s8(v1357, v25);
                  if (v1353 >= v2720)
                  {
                    v1353 = v2720;
                  }

                  v1368 = v131 + v2698 + v1353;
                  do
                  {
                    _X12 = v1368 + 2 * v2734 + 8;
                    v1368 += v2734;
                    __asm { PRFM            #0, [X12] }

                    v1371 = vmlaq_s16(vmulq_s16(v1347, v1366), v1345, v1367);
                    v1366.i64[0] = *(v1368 + 8);
                    v1367 = vzip1q_s8(v1366, v25);
                    v1372 = vqtbl1q_s8(v1366, xmmword_2773B3E00);
                    v1372.i16[3] = *(v1368 + 16);
                    v1366 = vzip1q_s8(v1372, v25);
                    *(&v2826 + v1362) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1371, v1349, v1367), v995, v1366), v27), 6uLL);
                    v1362 += 32;
                  }

                  while (v1362 != 256);
                  goto LABEL_666;
                }

                __asm { PRFM            #0, [X28] }

                v1311 = 9;
                v1312 = v2824;
                do
                {
                  v1313 = _X28;
                  _X28 = (_X28 + v2734);
                  __asm { PRFM            #0, [X28] }

                  v1315 = *v1313;
                  v1312[3] = vzip2q_s8(*v1313, v25);
                  v1312 += 2;
                  v1316 = v25.i64[0];
                  vst2_s8(v1312->i8, v1315);
                  --v1311;
                }

                while (v1311 > 2);
                v1317 = *_X28;
                v1318 = vzip2q_s8(*_X28, v25);
                v1319 = v1312[2].i8;
                v1320 = v25.i64[0];
                vst2_s8(v1319, v1317);
LABEL_654:
                v1312[3] = v1318;
LABEL_666:
                v1373 = 4;
                v1374 = &v2825;
                do
                {
                  a7 = v1374[-13];
                  a8 = v1374[1];
                  a9 = v1374[2];
                  a10 = v1374[3];
                  v1375 = vrhaddq_u16(v1374[-16], *v1374);
                  v1376 = vrhaddq_u16(v1374[-15], a8);
                  v1377 = vrhaddq_u16(v1374[-14], a9);
                  v1378 = vrhaddq_u16(a7, a10);
                  if (v2757)
                  {
                    a7 = *v172;
                    a8 = *(v172 + 16);
                    a9 = *(v172 + 32);
                    a10 = *(v172 + 48);
                    v172 += 64;
                    v1375 = vaddq_s16(a7, v1375);
                    v1376 = vaddq_s16(a8, v1376);
                    v1377 = vaddq_s16(a9, v1377);
                    v1378 = vaddq_s16(a10, v1378);
                  }

                  v1374 += 4;
                  a6 = vqmovun_high_s16(vqmovun_s16(v1375), v1376);
                  *v174->i8 = a6;
                  *&v174->i8[v2730] = vqmovun_high_s16(vqmovun_s16(v1377), v1378);
                  v174 = (v174 + v1246);
                  --v1373;
                }

                while (v1373);
                goto LABEL_1064;
              }

              _X8 = &_X28->i8[v2734];
              __asm { PRFM            #0, [X8] }

              v1323 = *_X28;
              v1324 = v2719;
              if (v2719 <= -16)
              {
                v1324 = -16;
              }

              if (v1324 >= v2720)
              {
                v1324 = v2720;
              }

              v1325 = (v131 + v2698 + v1324);
              v1326 = 9;
              v1312 = v2824;
              do
              {
                _X13 = &v1325->i8[2 * v2734];
                v1325 = (v1325 + v2734);
                __asm { PRFM            #0, [X13] }

                v1329 = *v1325;
                v1330 = vrhaddq_u8(v1323, *v1325);
                v1331 = v25.i64[0];
                v1312[3] = vzip2q_s8(v1330, v25);
                v1312 += 2;
                vst2_s8(v1312->i8, v1330);
                --v1326;
                v1323 = v1329;
              }

              while (v1326 > 2);
              v1332 = vrhaddq_u8(v1329, *(v1325 + v2734));
            }

            v1340 = v1312[2].i8;
            v1341 = v25.i64[0];
            vst2_s8(v1340, v1332);
            v1318 = vzip2q_s8(v1332, v25);
            goto LABEL_654;
          }

          __asm { PRFM            #0, [X20] }

          v1248 = 9;
          v1249 = v2819;
          do
          {
            v1250 = _X20;
            _X20 = (_X20 + v2778);
            __asm { PRFM            #0, [X20] }

            v1252 = *v1250;
            v1249[3] = vzip2q_s8(*v1250, v25);
            v1249 += 2;
            v1253 = v25.i64[0];
            vst2_s8(v1249->i8, v1252);
            --v1248;
          }

          while (v1248 > 2);
          v1254 = *_X20;
          v1255 = vzip2q_s8(*_X20, v25);
          v1256 = v1249[2].i8;
          v1257 = v25.i64[0];
          vst2_s8(v1256, v1254);
LABEL_625:
          v1249[3] = v1255;
          goto LABEL_637;
        }

        _X8 = &_X20->i8[v2778];
        __asm { PRFM            #0, [X8] }

        v1260 = *_X20;
        v1261 = v2721;
        if (v2721 <= -16)
        {
          v1261 = -16;
        }

        if (v1261 >= v2718)
        {
          v1261 = v2718;
        }

        v1262 = (v992 + v2714 + v1261);
        v1263 = 9;
        v1249 = v2819;
        do
        {
          _X13 = &v1262->i8[2 * v2778];
          v1262 = (v1262 + v2778);
          __asm { PRFM            #0, [X13] }

          v1266 = *v1262;
          v1267 = vrhaddq_u8(v1260, *v1262);
          v1268 = v25.i64[0];
          v1249[3] = vzip2q_s8(v1267, v25);
          v1249 += 2;
          vst2_s8(v1249->i8, v1267);
          --v1263;
          v1260 = v1266;
        }

        while (v1263 > 2);
        v1269 = vrhaddq_u8(v1266, *(v1262 + v2778));
      }

      v1277 = v1249[2].i8;
      v1278 = v25.i64[0];
      vst2_s8(v1277, v1269);
      v1255 = vzip2q_s8(v1269, v25);
      goto LABEL_625;
    }

    v2785 = v10;
    v2799 = v25;
    switch(v134)
    {
      case 1:
        v781 = 0;
        v782 = &v176[-v2717];
        v783 = (v782 + v2749);
        v784 = (v783 + v2749);
        v785 = (v784 + v2749);
        v786 = vzip1q_s8(*(v785 + v2749), v25);
        v787 = vzip1q_s8(*v785, v25);
        v788 = vzip1q_s8(*v784, v25);
        v789 = vzip1q_s8(*v783, v25);
        v790 = vzip1q_s8(*v782, v25);
        v791 = 5 * v2749;
        v792 = (v2746 + v791 + v150 + 2 * v2717 * v2708 - 4 * v2717);
        do
        {
          v793 = v789;
          v789 = v788;
          v788 = v787;
          v787 = v786;
          v786 = vzip1q_s8(*v792, v25);
          v794 = vsubq_s16(vshlq_n_s16(vaddq_s16(v789, v788), 2uLL), vaddq_s16(v793, v787));
          *(&v2811 + v781) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v790, v794), vshlq_n_s16(v794, 2uLL)), vaddq_s16(v786, v26)), 5uLL))), v789);
          v781 += 32;
          v792 = (v792 + v2749);
          v790 = v793;
        }

        while (v781 != 256);
        v795 = 0;
        v796 = &v176[-v2717];
        v797 = *(v796 + 2);
        v798 = (v796 + v2749 + 8);
        v799 = (v798 + v2749 + v2749);
        v800 = vzip1q_s8(*(v799 + v2749), v25);
        v801 = vzip1q_s8(*v799, v25);
        v802 = vzip1q_s8(*(v798 + v2749), v25);
        v803 = vzip1q_s8(*v798, v25);
        v804 = vzip1q_s8(v797, v25);
        v805 = (v2746 + v791 + v150 + 2 * v2717 * v2708 - 4 * v2717 + 8);
        v255 = v2732;
        do
        {
          v806 = v803;
          v803 = v802;
          v802 = v801;
          v801 = v800;
          v800 = vzip1q_s8(*v805, v25);
          v807 = vsubq_s16(vshlq_n_s16(vaddq_s16(v803, v802), 2uLL), vaddq_s16(v806, v801));
          *(&v2812 + v795) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v804, v807), vshlq_n_s16(v807, 2uLL)), vaddq_s16(v800, v26)), 5uLL))), v803);
          v795 += 32;
          v805 = (v805 + v2749);
          v804 = v806;
        }

        while (v795 != 256);
        break;
      case 2:
        v625 = 0;
        v626 = &v176[-v2717];
        v627 = (v626 + v2749);
        v628 = (v627 + v2749);
        v629 = (v628 + v2749);
        v630 = vzip1q_s8(*(v629 + v2749), v25);
        v631 = vzip1q_s8(*v629, v25);
        v632 = vzip1q_s8(*v628, v25);
        v633 = vzip1q_s8(*v627, v25);
        v634 = vzip1q_s8(*v626, v25);
        v635 = 5 * v2749;
        v636 = (v2746 + v635 + v150 + 2 * v2717 * v2708 - 4 * v2717);
        do
        {
          v637 = v633;
          v633 = v632;
          v632 = v631;
          v631 = v630;
          v638 = &v2811.i8[v625];
          v630 = vzip1q_s8(*v636, v25);
          v639 = vsubq_s16(vshlq_n_s16(vaddq_s16(v633, v632), 2uLL), vaddq_s16(v637, v631));
          *v639.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v634, v639), vshlq_n_s16(v639, 2uLL)), vaddq_s16(v630, v26)), 5uLL));
          v640 = v25.i64[0];
          vst2_s8(v638, v639);
          v625 += 32;
          v636 = (v636 + v2749);
          v634 = v637;
        }

        while (v625 != 256);
        v641 = 0;
        v642 = &v176[-v2717];
        v643 = *(v642 + 2);
        v644 = (v642 + v2749 + 8);
        v645 = (v644 + v2749 + v2749);
        v646 = vzip1q_s8(*(v645 + v2749), v25);
        v647 = vzip1q_s8(*v645, v25);
        v648 = vzip1q_s8(*(v644 + v2749), v25);
        v649 = vzip1q_s8(*v644, v25);
        v650 = vzip1q_s8(v643, v25);
        v651 = (v2746 + v635 + v150 + 2 * v2717 * v2708 - 4 * v2717 + 8);
        v255 = v2732;
        do
        {
          v652 = v649;
          v649 = v648;
          v648 = v647;
          v647 = v646;
          v653 = &v2812.i8[v641];
          v646 = vzip1q_s8(*v651, v25);
          v654 = vsubq_s16(vshlq_n_s16(vaddq_s16(v649, v648), 2uLL), vaddq_s16(v652, v647));
          *v654.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v650, v654), vshlq_n_s16(v654, 2uLL)), vaddq_s16(v646, v26)), 5uLL));
          v655 = v25.i64[0];
          vst2_s8(v653, v654);
          v641 += 32;
          v651 = (v651 + v2749);
          v650 = v652;
        }

        while (v641 != 256);
        break;
      case 3:
        v727 = 0;
        v728 = &v176[-v2717];
        v729 = (v728 + v2749);
        v730 = (v729 + v2749);
        v731 = (v730 + v2749);
        v732 = vzip1q_s8(*(v731 + v2749), v25);
        v733 = vzip1q_s8(*v731, v25);
        v734 = vzip1q_s8(*v730, v25);
        v735 = vzip1q_s8(*v729, v25);
        v736 = vzip1q_s8(*v728, v25);
        v737 = 5 * v2749;
        v738 = (v2746 + v737 + v150 + 2 * v2717 * v2708 - 4 * v2717);
        do
        {
          v739 = v735;
          v735 = v734;
          v734 = v733;
          v733 = v732;
          v732 = vzip1q_s8(*v738, v25);
          v740 = vsubq_s16(vshlq_n_s16(vaddq_s16(v735, v734), 2uLL), vaddq_s16(v739, v733));
          *(&v2811 + v727) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v736, v740), vshlq_n_s16(v740, 2uLL)), vaddq_s16(v732, v26)), 5uLL))), v734);
          v727 += 32;
          v738 = (v738 + v2749);
          v736 = v739;
        }

        while (v727 != 256);
        v741 = 0;
        v742 = &v176[-v2717];
        v743 = *(v742 + 2);
        v744 = (v742 + v2749 + 8);
        v745 = (v744 + v2749 + v2749);
        v746 = vzip1q_s8(*(v745 + v2749), v25);
        v747 = vzip1q_s8(*v745, v25);
        v748 = vzip1q_s8(*(v744 + v2749), v25);
        v749 = vzip1q_s8(*v744, v25);
        v750 = vzip1q_s8(v743, v25);
        v751 = (v2746 + v737 + v150 + 2 * v2717 * v2708 - 4 * v2717 + 8);
        v255 = v2732;
        do
        {
          v752 = v749;
          v749 = v748;
          v748 = v747;
          v747 = v746;
          v746 = vzip1q_s8(*v751, v25);
          v753 = vsubq_s16(vshlq_n_s16(vaddq_s16(v749, v748), 2uLL), vaddq_s16(v752, v747));
          *(&v2812 + v741) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v750, v753), vshlq_n_s16(v753, 2uLL)), vaddq_s16(v746, v26)), 5uLL))), v748);
          v741 += 32;
          v751 = (v751 + v2749);
          v750 = v752;
        }

        while (v741 != 256);
        break;
      case 4:
        v553 = 0;
        v554 = (v176 - 2);
        do
        {
          v555 = *v554;
          v554 = (v554 + v2749);
          v556 = vzip1q_s8(vextq_s8(v555, v555, 2uLL), v25);
          v557 = vsubq_s16(vshlq_n_s16(vaddq_s16(v556, vzip1q_s8(vextq_s8(v555, v555, 3uLL), v25)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v555, v555, 1uLL), v25), vzip1q_s8(vextq_s8(v555, v555, 4uLL), v25)));
          *(&v2811 + v553) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v557, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v555, v25), vzip1q_s8(vextq_s8(v555, v555, 5uLL), v25)), v557)), v26), 5uLL))), v556);
          v553 += 32;
        }

        while (v553 != 256);
        v558 = 0;
        v559 = (v176 + 6);
        v255 = v2732;
        do
        {
          v560 = *v559;
          v559 = (v559 + v2749);
          v561 = vzip1q_s8(vextq_s8(v560, v560, 2uLL), v25);
          v562 = vsubq_s16(vshlq_n_s16(vaddq_s16(v561, vzip1q_s8(vextq_s8(v560, v560, 3uLL), v25)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v560, v560, 1uLL), v25), vzip1q_s8(vextq_s8(v560, v560, 4uLL), v25)));
          *(&v2812 + v558) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v562, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v560, v25), vzip1q_s8(vextq_s8(v560, v560, 5uLL), v25)), v562)), v26), 5uLL))), v561);
          v558 += 32;
        }

        while (v558 != 256);
        break;
      case 5:
        v678 = v2746 + v150 + v151 * v2749;
        v679 = v2749;
        v680 = 2;
        goto LABEL_465;
      case 6:
        v539 = v177;
        sub_27729BFC4(v2811.i8, 0x20u, v176, v2749);
        sub_27729BFC4(v2812.i8, 0x20u, (v176 + 2), v2749);
        goto LABEL_563;
      case 7:
        v678 = v2746 + v150 + v151 * v2749;
        v679 = v2749;
        v680 = 3;
LABEL_465:
        v836 = 2;
        goto LABEL_562;
      case 8:
        v1536 = 0;
        v1537 = (v176 - 2);
        do
        {
          v1538 = &v2811.i8[v1536];
          v1539 = *v1537;
          v1537 = (v1537 + v2749);
          v1540 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1539, v1539, 2uLL), v25), vzip1q_s8(vextq_s8(v1539, v1539, 3uLL), v25)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1539, v1539, 1uLL), v25), vzip1q_s8(vextq_s8(v1539, v1539, 4uLL), v25)));
          *v1539.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1540, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1539, v25), vzip1q_s8(vextq_s8(v1539, v1539, 5uLL), v25)), v1540)), v26), 5uLL));
          v1540.i64[0] = v25.i64[0];
          vst2_s8(v1538, v1539);
          v1536 += 32;
        }

        while (v1536 != 256);
        v1541 = 0;
        v1542 = (v176 + 6);
        v255 = v2732;
        do
        {
          v1543 = &v2812.i8[v1541];
          v1544 = *v1542;
          v1542 = (v1542 + v2749);
          v1545 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1544, v1544, 2uLL), v25), vzip1q_s8(vextq_s8(v1544, v1544, 3uLL), v25)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1544, v1544, 1uLL), v25), vzip1q_s8(vextq_s8(v1544, v1544, 4uLL), v25)));
          *v1544.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1545, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1544, v25), vzip1q_s8(vextq_s8(v1544, v1544, 5uLL), v25)), v1545)), v26), 5uLL));
          v1545.i64[0] = v25.i64[0];
          vst2_s8(v1543, v1544);
          v1541 += 32;
        }

        while (v1541 != 256);
        break;
      case 9:
        v539 = v177;
        sub_27729B614(v2811.i8, 0x20u, v176, v2749, 8);
        sub_27729B614(v2812.i8, 0x20u, (v176 + 2), v2749, 8);
        goto LABEL_563;
      case 10:
        v539 = v177;
        sub_27729B7DC(&v2811, 32, v176, v2749, 8);
        sub_27729B7DC(&v2812, 32, (v176 + 2), v2749, 8);
        goto LABEL_563;
      case 11:
        v539 = v177;
        sub_27729B98C(v2811.i8, 0x20u, v176, v2749, 8);
        sub_27729B98C(v2812.i8, 0x20u, (v176 + 2), v2749, 8);
        goto LABEL_563;
      case 12:
        v574 = 0;
        v575 = (v176 - 2);
        do
        {
          v576 = *v575;
          v575 = (v575 + v2749);
          v577 = vzip1q_s8(vextq_s8(v576, v576, 3uLL), v25);
          v578 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v576, v576, 2uLL), v25), v577), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v576, v576, 1uLL), v25), vzip1q_s8(vextq_s8(v576, v576, 4uLL), v25)));
          *(&v2811 + v574) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v578, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v576, v25), vzip1q_s8(vextq_s8(v576, v576, 5uLL), v25)), v578)), v26), 5uLL))), v577);
          v574 += 32;
        }

        while (v574 != 256);
        v579 = 0;
        v580 = (v176 + 6);
        v255 = v2732;
        do
        {
          v581 = *v580;
          v580 = (v580 + v2749);
          v582 = vzip1q_s8(vextq_s8(v581, v581, 3uLL), v25);
          v583 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v581, v581, 2uLL), v25), v582), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v581, v581, 1uLL), v25), vzip1q_s8(vextq_s8(v581, v581, 4uLL), v25)));
          *(&v2812 + v579) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v583, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v581, v25), vzip1q_s8(vextq_s8(v581, v581, 5uLL), v25)), v583)), v26), 5uLL))), v582);
          v579 += 32;
        }

        while (v579 != 256);
        break;
      case 13:
        v678 = v2746 + v150 + v151 * v2749;
        v679 = v2749;
        v680 = 2;
        goto LABEL_561;
      case 14:
        v539 = v177;
        sub_27729C39C(v2811.i8, 0x20u, v176, v2749);
        sub_27729C39C(v2812.i8, 0x20u, (v176 + 2), v2749);
        goto LABEL_563;
      case 15:
        v678 = v2746 + v150 + v151 * v2749;
        v679 = v2749;
        v680 = 3;
LABEL_561:
        v836 = 3;
LABEL_562:
        v539 = v177;
        sub_27729AF04(v2811.i8, v678, v679, 8, v680, v836);
LABEL_563:
        v177 = v539;
        v26.i64[0] = 0x10001000100010;
        v26.i64[1] = 0x10001000100010;
        v10 = v2785;
        v25 = v2799;
        v255 = v2732;
        break;
      default:
        v254 = 0;
        v255 = v2732;
        do
        {
          v256 = &v2811.i8[v254];
          v257 = *v176;
          v176 = (v176 + v2749);
          v258 = v25.i64[0];
          vst2_s8(v256, v257);
          v256 += 16;
          *v256 = vzip2q_s8(v257, v25);
          v254 += 32;
        }

        while (v254 != 256);
        break;
    }

    switch(v255)
    {
      case 1:
        v1209 = 0;
        v1210 = &v177[-v2726];
        v1211 = (v1210 + v2733);
        v1212 = (v1211 + v2733);
        v1213 = (v1212 + v2733);
        v1214 = vzip1q_s8(*(v1213 + v2733), v25);
        v1215 = vzip1q_s8(*v1213, v25);
        v1216 = vzip1q_s8(*v1212, v25);
        v1217 = vzip1q_s8(*v1211, v25);
        v1218 = vzip1q_s8(*v1210, v25);
        v1219 = 5 * v2733;
        v1220 = (v2744 + v1219 + v2710 + 2 * v2726 * v2709 - 4 * v2726);
        do
        {
          v1221 = v1217;
          v1217 = v1216;
          v1216 = v1215;
          v1215 = v1214;
          v1214 = vzip1q_s8(*v1220, v25);
          v1222 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1217, v1216), 2uLL), vaddq_s16(v1221, v1215));
          *(&v2815 + v1209) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1218, v1222), vshlq_n_s16(v1222, 2uLL)), vaddq_s16(v1214, v26)), 5uLL))), v1217);
          v1209 += 32;
          v1220 = (v1220 + v2733);
          v1218 = v1221;
        }

        while (v1209 != 256);
        v1223 = 0;
        v1224 = &v177[-v2726];
        v1225 = *(v1224 + 2);
        v1226 = (v1224 + v2733 + 8);
        v1227 = (v1226 + v2733 + v2733);
        v1228 = vzip1q_s8(*(v1227 + v2733), v25);
        v1229 = vzip1q_s8(*v1227, v25);
        v1230 = vzip1q_s8(*(v1226 + v2733), v25);
        v1231 = vzip1q_s8(*v1226, v25);
        v1232 = vzip1q_s8(v1225, v25);
        v1233 = (v2744 + v1219 + v2710 + 2 * v2726 * v2709 - 4 * v2726 + 8);
        v20 = v2757;
        v1115 = v2758;
        v1116 = v2725;
        v1117 = v2729;
        v27.i64[0] = 0x20002000200020;
        v27.i64[1] = 0x20002000200020;
        v1119 = v2702;
        v1118 = v2703;
        v1120 = v2712;
        v1121 = v2701;
        do
        {
          v1234 = v1231;
          v1231 = v1230;
          v1230 = v1229;
          v1229 = v1228;
          v1228 = vzip1q_s8(*v1233, v25);
          v1235 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1231, v1230), 2uLL), vaddq_s16(v1234, v1229));
          *(&v2816 + v1223) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1232, v1235), vshlq_n_s16(v1235, 2uLL)), vaddq_s16(v1228, v26)), 5uLL))), v1231);
          v1223 += 32;
          v1233 = (v1233 + v2733);
          v1232 = v1234;
        }

        while (v1223 != 256);
        break;
      case 2:
        v1148 = 0;
        v1149 = &v177[-v2726];
        v1150 = (v1149 + v2733);
        v1151 = (v1150 + v2733);
        v1152 = (v1151 + v2733);
        v1153 = vzip1q_s8(*(v1152 + v2733), v25);
        v1154 = vzip1q_s8(*v1152, v25);
        v1155 = vzip1q_s8(*v1151, v25);
        v1156 = vzip1q_s8(*v1150, v25);
        v1157 = vzip1q_s8(*v1149, v25);
        v1158 = 5 * v2733;
        v1159 = (v2744 + v1158 + v2710 + 2 * v2726 * v2709 - 4 * v2726);
        do
        {
          v1160 = v1156;
          v1156 = v1155;
          v1155 = v1154;
          v1154 = v1153;
          v1161 = &v2815.i8[v1148];
          v1153 = vzip1q_s8(*v1159, v25);
          v1162 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1156, v1155), 2uLL), vaddq_s16(v1160, v1154));
          *v1162.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1157, v1162), vshlq_n_s16(v1162, 2uLL)), vaddq_s16(v1153, v26)), 5uLL));
          v1163 = v25.i64[0];
          vst2_s8(v1161, v1162);
          v1148 += 32;
          v1159 = (v1159 + v2733);
          v1157 = v1160;
        }

        while (v1148 != 256);
        v1164 = 0;
        v1165 = &v177[-v2726];
        v1166 = *(v1165 + 2);
        v1167 = (v1165 + v2733 + 8);
        v1168 = (v1167 + v2733 + v2733);
        v1169 = vzip1q_s8(*(v1168 + v2733), v25);
        v1170 = vzip1q_s8(*v1168, v25);
        v1171 = vzip1q_s8(*(v1167 + v2733), v25);
        v1172 = vzip1q_s8(*v1167, v25);
        v1173 = vzip1q_s8(v1166, v25);
        v1174 = (v2744 + v1158 + v2710 + 2 * v2726 * v2709 - 4 * v2726 + 8);
        v20 = v2757;
        v1115 = v2758;
        v1116 = v2725;
        v1117 = v2729;
        v27.i64[0] = 0x20002000200020;
        v27.i64[1] = 0x20002000200020;
        v1119 = v2702;
        v1118 = v2703;
        v1120 = v2712;
        v1121 = v2701;
        do
        {
          v1175 = v1172;
          v1172 = v1171;
          v1171 = v1170;
          v1170 = v1169;
          v1176 = &v2816.i8[v1164];
          v1169 = vzip1q_s8(*v1174, v25);
          v1177 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1172, v1171), 2uLL), vaddq_s16(v1175, v1170));
          *v1177.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1173, v1177), vshlq_n_s16(v1177, 2uLL)), vaddq_s16(v1169, v26)), 5uLL));
          v1178 = v25.i64[0];
          vst2_s8(v1176, v1177);
          v1164 += 32;
          v1174 = (v1174 + v2733);
          v1173 = v1175;
        }

        while (v1164 != 256);
        break;
      case 3:
        v1182 = 0;
        v1183 = &v177[-v2726];
        v1184 = (v1183 + v2733);
        v1185 = (v1184 + v2733);
        v1186 = (v1185 + v2733);
        v1187 = vzip1q_s8(*(v1186 + v2733), v25);
        v1188 = vzip1q_s8(*v1186, v25);
        v1189 = vzip1q_s8(*v1185, v25);
        v1190 = vzip1q_s8(*v1184, v25);
        v1191 = vzip1q_s8(*v1183, v25);
        v1192 = 5 * v2733;
        v1193 = (v2744 + v1192 + v2710 + 2 * v2726 * v2709 - 4 * v2726);
        do
        {
          v1194 = v1190;
          v1190 = v1189;
          v1189 = v1188;
          v1188 = v1187;
          v1187 = vzip1q_s8(*v1193, v25);
          v1195 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1190, v1189), 2uLL), vaddq_s16(v1194, v1188));
          *(&v2815 + v1182) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1191, v1195), vshlq_n_s16(v1195, 2uLL)), vaddq_s16(v1187, v26)), 5uLL))), v1189);
          v1182 += 32;
          v1193 = (v1193 + v2733);
          v1191 = v1194;
        }

        while (v1182 != 256);
        v1196 = 0;
        v1197 = &v177[-v2726];
        v1198 = *(v1197 + 2);
        v1199 = (v1197 + v2733 + 8);
        v1200 = (v1199 + v2733 + v2733);
        v1201 = vzip1q_s8(*(v1200 + v2733), v25);
        v1202 = vzip1q_s8(*v1200, v25);
        v1203 = vzip1q_s8(*(v1199 + v2733), v25);
        v1204 = vzip1q_s8(*v1199, v25);
        v1205 = vzip1q_s8(v1198, v25);
        v1206 = (v2744 + v1192 + v2710 + 2 * v2726 * v2709 - 4 * v2726 + 8);
        v20 = v2757;
        v1115 = v2758;
        v1116 = v2725;
        v1117 = v2729;
        v27.i64[0] = 0x20002000200020;
        v27.i64[1] = 0x20002000200020;
        v1119 = v2702;
        v1118 = v2703;
        v1120 = v2712;
        v1121 = v2701;
        do
        {
          v1207 = v1204;
          v1204 = v1203;
          v1203 = v1202;
          v1202 = v1201;
          v1201 = vzip1q_s8(*v1206, v25);
          v1208 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1204, v1203), 2uLL), vaddq_s16(v1207, v1202));
          *(&v2816 + v1196) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1205, v1208), vshlq_n_s16(v1208, 2uLL)), vaddq_s16(v1201, v26)), 5uLL))), v1203);
          v1196 += 32;
          v1206 = (v1206 + v2733);
          v1205 = v1207;
        }

        while (v1196 != 256);
        break;
      case 4:
        v1127 = 0;
        v1128 = (v177 - 2);
        do
        {
          v1129 = *v1128;
          v1128 = (v1128 + v2733);
          v1130 = vzip1q_s8(vextq_s8(v1129, v1129, 2uLL), v25);
          v1131 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1130, vzip1q_s8(vextq_s8(v1129, v1129, 3uLL), v25)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1129, v1129, 1uLL), v25), vzip1q_s8(vextq_s8(v1129, v1129, 4uLL), v25)));
          *(&v2815 + v1127) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1131, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1129, v25), vzip1q_s8(vextq_s8(v1129, v1129, 5uLL), v25)), v1131)), v26), 5uLL))), v1130);
          v1127 += 32;
        }

        while (v1127 != 256);
        v1132 = 0;
        v1133 = (v177 + 6);
        v20 = v2757;
        v1115 = v2758;
        v1116 = v2725;
        v1117 = v2729;
        v27.i64[0] = 0x20002000200020;
        v27.i64[1] = 0x20002000200020;
        v1119 = v2702;
        v1118 = v2703;
        v1120 = v2712;
        v1121 = v2701;
        do
        {
          v1134 = *v1133;
          v1133 = (v1133 + v2733);
          v1135 = vzip1q_s8(vextq_s8(v1134, v1134, 2uLL), v25);
          v1136 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1135, vzip1q_s8(vextq_s8(v1134, v1134, 3uLL), v25)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1134, v1134, 1uLL), v25), vzip1q_s8(vextq_s8(v1134, v1134, 4uLL), v25)));
          *(&v2816 + v1132) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1136, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1134, v25), vzip1q_s8(vextq_s8(v1134, v1134, 5uLL), v25)), v1136)), v26), 5uLL))), v1135);
          v1132 += 32;
        }

        while (v1132 != 256);
        break;
      case 5:
        v1179 = v177;
        v1180 = v2733;
        v1181 = 2;
        goto LABEL_599;
      case 6:
        v1523 = v177;
        sub_27729BFC4(v2815.i8, 0x20u, v177, v2733);
        sub_27729BFC4(v2816.i8, 0x20u, (v1523 + 2), v2733);
        goto LABEL_674;
      case 7:
        v1179 = v177;
        v1180 = v2733;
        v1181 = 3;
LABEL_599:
        v1236 = 2;
        goto LABEL_673;
      case 8:
        v1556 = 0;
        v1557 = (v177 - 2);
        do
        {
          v1558 = &v2815.i8[v1556];
          v1559 = *v1557;
          v1557 = (v1557 + v2733);
          v1560 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1559, v1559, 2uLL), v25), vzip1q_s8(vextq_s8(v1559, v1559, 3uLL), v25)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1559, v1559, 1uLL), v25), vzip1q_s8(vextq_s8(v1559, v1559, 4uLL), v25)));
          *v1559.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1560, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1559, v25), vzip1q_s8(vextq_s8(v1559, v1559, 5uLL), v25)), v1560)), v26), 5uLL));
          v1560.i64[0] = v25.i64[0];
          vst2_s8(v1558, v1559);
          v1556 += 32;
        }

        while (v1556 != 256);
        v1561 = 0;
        v1562 = (v177 + 6);
        v20 = v2757;
        v1115 = v2758;
        v1116 = v2725;
        v1117 = v2729;
        v27.i64[0] = 0x20002000200020;
        v27.i64[1] = 0x20002000200020;
        v1119 = v2702;
        v1118 = v2703;
        v1120 = v2712;
        v1121 = v2701;
        do
        {
          v1563 = &v2816.i8[v1561];
          v1564 = *v1562;
          v1562 = (v1562 + v2733);
          v1565 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1564, v1564, 2uLL), v25), vzip1q_s8(vextq_s8(v1564, v1564, 3uLL), v25)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1564, v1564, 1uLL), v25), vzip1q_s8(vextq_s8(v1564, v1564, 4uLL), v25)));
          *v1564.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1565, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1564, v25), vzip1q_s8(vextq_s8(v1564, v1564, 5uLL), v25)), v1565)), v26), 5uLL));
          v1565.i64[0] = v25.i64[0];
          vst2_s8(v1563, v1564);
          v1561 += 32;
        }

        while (v1561 != 256);
        break;
      case 9:
        v1147 = v177;
        sub_27729B614(v2815.i8, 0x20u, v177, v2733, 8);
        sub_27729B614(v2816.i8, 0x20u, (v1147 + 2), v2733, 8);
        goto LABEL_674;
      case 10:
        v1525 = v177;
        sub_27729B7DC(&v2815, 32, v177, v2733, 8);
        sub_27729B7DC(&v2816, 32, (v1525 + 2), v2733, 8);
        goto LABEL_674;
      case 11:
        v1126 = v177;
        sub_27729B98C(v2815.i8, 0x20u, v177, v2733, 8);
        sub_27729B98C(v2816.i8, 0x20u, (v1126 + 2), v2733, 8);
        goto LABEL_674;
      case 12:
        v1137 = 0;
        v1138 = (v177 - 2);
        do
        {
          v1139 = *v1138;
          v1138 = (v1138 + v2733);
          v1140 = vzip1q_s8(vextq_s8(v1139, v1139, 3uLL), v25);
          v1141 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1139, v1139, 2uLL), v25), v1140), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1139, v1139, 1uLL), v25), vzip1q_s8(vextq_s8(v1139, v1139, 4uLL), v25)));
          *(&v2815 + v1137) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1141, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1139, v25), vzip1q_s8(vextq_s8(v1139, v1139, 5uLL), v25)), v1141)), v26), 5uLL))), v1140);
          v1137 += 32;
        }

        while (v1137 != 256);
        v1142 = 0;
        v1143 = (v177 + 6);
        v20 = v2757;
        v1115 = v2758;
        v1116 = v2725;
        v1117 = v2729;
        v27.i64[0] = 0x20002000200020;
        v27.i64[1] = 0x20002000200020;
        v1119 = v2702;
        v1118 = v2703;
        v1120 = v2712;
        v1121 = v2701;
        do
        {
          v1144 = *v1143;
          v1143 = (v1143 + v2733);
          v1145 = vzip1q_s8(vextq_s8(v1144, v1144, 3uLL), v25);
          v1146 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1144, v1144, 2uLL), v25), v1145), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1144, v1144, 1uLL), v25), vzip1q_s8(vextq_s8(v1144, v1144, 4uLL), v25)));
          *(&v2816 + v1142) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1146, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1144, v25), vzip1q_s8(vextq_s8(v1144, v1144, 5uLL), v25)), v1146)), v26), 5uLL))), v1145);
          v1142 += 32;
        }

        while (v1142 != 256);
        break;
      case 13:
        v1179 = v177;
        v1180 = v2733;
        v1181 = 2;
        goto LABEL_672;
      case 14:
        v1125 = v177;
        sub_27729C39C(v2815.i8, 0x20u, v177, v2733);
        sub_27729C39C(v2816.i8, 0x20u, (v1125 + 2), v2733);
        goto LABEL_674;
      case 15:
        v1179 = v177;
        v1180 = v2733;
        v1181 = 3;
LABEL_672:
        v1236 = 3;
LABEL_673:
        sub_27729AF04(v2815.i8, v1179, v1180, 8, v1181, v1236);
LABEL_674:
        v26.i64[0] = 0x10001000100010;
        v26.i64[1] = 0x10001000100010;
        v10 = v2785;
        v25 = v2799;
        v20 = v2757;
        v1115 = v2758;
        v1116 = v2725;
        v1117 = v2729;
        v27.i64[0] = 0x20002000200020;
        v27.i64[1] = 0x20002000200020;
        v1119 = v2702;
        v1118 = v2703;
        v1120 = v2712;
        v1121 = v2701;
        break;
      default:
        v1114 = 0;
        v20 = v2757;
        v1115 = v2758;
        v1116 = v2725;
        v1117 = v2729;
        v27.i64[0] = 0x20002000200020;
        v27.i64[1] = 0x20002000200020;
        v1119 = v2702;
        v1118 = v2703;
        v1120 = v2712;
        v1121 = v2701;
        do
        {
          v1122 = &v2815.i8[v1114];
          v1123 = *v177;
          v177 = (v177 + v2733);
          v1124 = v25.i64[0];
          vst2_s8(v1122, v1123);
          v1122 += 16;
          *v1122 = vzip2q_s8(v1123, v25);
          v1114 += 32;
        }

        while (v1114 != 256);
        break;
    }

    v1379 = 0;
    do
    {
      v1380 = v2814[v1379 / 0x10];
      v1381 = vrhaddq_u16(*(&v2811 + v1379), *(&v2815 + v1379));
      v1382 = vrhaddq_u16(*(&v2811 + v1379 + 16), *(&v2816 + v1379));
      v1383 = vrhaddq_u16(*(&v2813 + v1379), *(&v2817 + v1379));
      v1384 = vrhaddq_u16(v1380, v2818[v1379 / 0x10]);
      if (v2752)
      {
        v1380 = *v168;
        v1385 = *(v168 + 16);
        v1386 = *(v168 + 32);
        v1387 = *(v168 + 48);
        v168 += 64;
        v1381 = vaddq_s16(v1380, v1381);
        v1382 = vaddq_s16(v1385, v1382);
        v1383 = vaddq_s16(v1386, v1383);
        v1384 = vaddq_s16(v1387, v1384);
      }

      *v173->i8 = vqmovun_high_s16(vqmovun_s16(v1381), v1382);
      *&v173->i8[v1116] = vqmovun_high_s16(vqmovun_s16(v1383), v1384);
      v173 = (v173 + v1117);
      v1379 += 64;
    }

    while (v1379 != 256);
    if (v1121 == 64)
    {
      __asm { PRFM            #0, [X20] }

      v1413 = 5;
      v1391 = v2819;
      v1388 = v2723;
      do
      {
        v1414 = _X20;
        _X20 = (_X20 + v2778);
        __asm { PRFM            #0, [X20] }

        v1416 = vextq_s8(*v1414, *v1414, 2uLL);
        v1416.i16[7] = v1414[1].i16[0];
        v1417 = vrhaddq_u8(*v1414, v1416);
        v1416.i64[0] = v25.i64[0];
        v1391[3] = vzip2q_s8(v1417, v25);
        v1391 += 2;
        vst2_s8(v1391->i8, *(&v1416 - 8));
        --v1413;
      }

      while (v1413 > 2);
      v1418 = vextq_s8(*_X20, *_X20, 2uLL);
      v1418.i16[7] = _X20[1].i16[0];
      v1411 = vrhaddq_u8(*_X20, v1418);
    }

    else
    {
      v1388 = v2723;
      if (v1121 != 4)
      {
        if (v1121)
        {
          v1421 = 0;
          v1422 = v2706 - (8 * v2722 + 8 * v2727) + 64;
          v1423 = v25;
          v1423.i32[0] = v1422 | (v1422 << 16);
          v1424 = vqtbl1q_s8(v1423, xmmword_2773B3DF0);
          v1425 = v25;
          v1425.i32[0] = (8 * v2722 - v2706) | ((8 * v2722 - v2706) << 16);
          v1426 = vqtbl1q_s8(v1425, xmmword_2773B3DF0);
          v1427 = v25;
          v1427.i32[0] = (8 * v2727 - v2706) | ((8 * v2727 - v2706) << 16);
          v1428 = vqtbl1q_s8(v1427, xmmword_2773B3DF0);
          v2829 = v1424;
          v2830 = v1426;
          v2831 = v1428;
          v2832 = v1119;
          _X10 = &_X20->i8[v2778];
          __asm { PRFM            #0, [X10] }

          v1380.i64[0] = _X20->i64[0];
          v1431 = vqtbl1q_s8(v1380, xmmword_2773B3E00);
          v1431.i16[3] = _X20->i16[4];
          v1432 = vzip1q_s8(v1431, v25);
          v1433 = vzip1q_s8(v1380, v25);
          v1434 = v2721;
          if (v2721 <= -16)
          {
            v1434 = -16;
          }

          if (v1434 >= v2718)
          {
            v1435 = v2718;
          }

          else
          {
            v1435 = v1434;
          }

          v1436 = v1435 + v2714;
          v1437 = (v1115 + v1436 + v2778 + 8);
          _X15 = v1115 + v1436 + 2 * v2778;
          do
          {
            __asm { PRFM            #0, [X15] }

            v1440 = vmlaq_s16(vmulq_s16(v1426, v1432), v1424, v1433);
            v1432.i64[0] = *(v1437 - 1);
            v1433 = vzip1q_s8(v1432, v25);
            v1441 = vqtbl1q_s8(v1432, xmmword_2773B3E00);
            v1441.i16[3] = *v1437;
            v1437 = (v1437 + v2778);
            v1432 = vzip1q_s8(v1441, v25);
            *(&v2820 + v1421) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1440, v1428, v1433), v1119, v1432), v27), 6uLL);
            v1421 += 32;
            _X15 += v2778;
          }

          while (v1421 != 128);
          v1442 = 0;
          _X11 = &_X20->i64[1] + v2778;
          __asm { PRFM            #0, [X11] }

          v1433.i64[0] = _X20->i64[1];
          v1445 = vqtbl1q_s8(v1433, xmmword_2773B3E00);
          v1445.i16[3] = _X20[1].i16[0];
          v1446 = vzip1q_s8(v1445, v25);
          v1380 = vzip1q_s8(v1433, v25);
          if (v1434 >= v2718)
          {
            v1434 = v2718;
          }

          v1447 = v1115 + v2714 + v1434;
          do
          {
            _X12 = v1447 + 2 * v2778 + 8;
            v1447 += v2778;
            __asm { PRFM            #0, [X12] }

            v1450 = vmlaq_s16(vmulq_s16(v1426, v1446), v1424, v1380);
            v1446.i64[0] = *(v1447 + 8);
            v1380 = vzip1q_s8(v1446, v25);
            v1451 = vqtbl1q_s8(v1446, xmmword_2773B3E00);
            v1451.i16[3] = *(v1447 + 16);
            v1446 = vzip1q_s8(v1451, v25);
            *(&v2821 + v1442) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1450, v1428, v1380), v1119, v1446), v27), 6uLL);
            v1442 += 32;
          }

          while (v1442 != 128);
LABEL_708:
          if (v1120 == 64)
          {
            __asm { PRFM            #0, [X28] }

            v1476 = 5;
            v1454 = v2824;
            do
            {
              v1477 = _X28;
              _X28 = (_X28 + v2734);
              __asm { PRFM            #0, [X28] }

              v1479 = vextq_s8(*v1477, *v1477, 2uLL);
              v1479.i16[7] = v1477[1].i16[0];
              v1480 = vrhaddq_u8(*v1477, v1479);
              v1479.i64[0] = v25.i64[0];
              v1454[3] = vzip2q_s8(v1480, v25);
              v1454 += 2;
              vst2_s8(v1454->i8, *(&v1479 - 8));
              --v1476;
            }

            while (v1476 > 2);
            v1481 = vextq_s8(*_X28, *_X28, 2uLL);
            v1481.i16[7] = _X28[1].i16[0];
            v1474 = vrhaddq_u8(*_X28, v1481);
          }

          else
          {
            if (v1120 != 4)
            {
              if (v1120)
              {
                v1484 = 0;
                v1485 = v2707 - (8 * v2754 + 8 * v2728) + 64;
                v1486 = v25;
                v1486.i32[0] = v1485 | (v1485 << 16);
                v1487 = vqtbl1q_s8(v1486, xmmword_2773B3DF0);
                v1488 = v25;
                v1488.i32[0] = (8 * v2754 - v2707) | ((8 * v2754 - v2707) << 16);
                v1489 = vqtbl1q_s8(v1488, xmmword_2773B3DF0);
                v1490 = v25;
                v1490.i32[0] = (8 * v2728 - v2707) | ((8 * v2728 - v2707) << 16);
                v1491 = vqtbl1q_s8(v1490, xmmword_2773B3DF0);
                v2833 = v1487;
                v2834 = v1489;
                v2835 = v1491;
                v2836 = v1118;
                _X8 = &_X28->i8[v2734];
                __asm { PRFM            #0, [X8] }

                v1380.i64[0] = _X28->i64[0];
                v1494 = vqtbl1q_s8(v1380, xmmword_2773B3E00);
                v1495 = -16;
                if (v2719 > -16)
                {
                  v1495 = v2719;
                }

                if (v1495 >= v2720)
                {
                  v1496 = v2720;
                }

                else
                {
                  v1496 = v1495;
                }

                v1497 = v131 + v2698 + v1496;
                v1494.i16[3] = _X28->i16[4];
                v1498 = vzip1q_s8(v1494, v25);
                v1499 = vzip1q_s8(v1380, v25);
                do
                {
                  _X15 = v1497 + 2 * v2734;
                  v1497 += v2734;
                  __asm { PRFM            #0, [X15] }

                  v1502 = vmlaq_s16(vmulq_s16(v1489, v1498), v1487, v1499);
                  v1498.i64[0] = *v1497;
                  v1499 = vzip1q_s8(v1498, v25);
                  v1503 = vqtbl1q_s8(v1498, xmmword_2773B3E00);
                  v1503.i16[3] = *(v1497 + 8);
                  v1498 = vzip1q_s8(v1503, v25);
                  *(&v2825 + v1484) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1502, v1491, v1499), v1118, v1498), v27), 6uLL);
                  v1484 += 32;
                }

                while (v1484 != 128);
                v1504 = 0;
                _X11 = &_X28->i64[1] + v2734;
                __asm { PRFM            #0, [X11] }

                v1499.i64[0] = _X28->i64[1];
                v1507 = vqtbl1q_s8(v1499, xmmword_2773B3E00);
                v1507.i16[3] = _X28[1].i16[0];
                v1508 = vzip1q_s8(v1507, v25);
                v1509 = vzip1q_s8(v1499, v25);
                if (v1495 >= v2720)
                {
                  v1495 = v2720;
                }

                v1510 = v131 + v2698 + v1495;
                do
                {
                  _X12 = v1510 + 2 * v2734 + 8;
                  v1510 += v2734;
                  __asm { PRFM            #0, [X12] }

                  v1513 = vmlaq_s16(vmulq_s16(v1489, v1508), v1487, v1509);
                  v1508.i64[0] = *(v1510 + 8);
                  v1509 = vzip1q_s8(v1508, v25);
                  v1514 = vqtbl1q_s8(v1508, xmmword_2773B3E00);
                  v1514.i16[3] = *(v1510 + 16);
                  v1508 = vzip1q_s8(v1514, v25);
                  *(&v2826 + v1504) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1513, v1491, v1509), v1118, v1508), v27), 6uLL);
                  v1504 += 32;
                }

                while (v1504 != 128);
                goto LABEL_737;
              }

              __asm { PRFM            #0, [X28] }

              v1453 = 5;
              v1454 = v2824;
              do
              {
                v1455 = _X28;
                _X28 = (_X28 + v2734);
                __asm { PRFM            #0, [X28] }

                v1457 = *v1455;
                v1454[3] = vzip2q_s8(*v1455, v25);
                v1454 += 2;
                v1458 = v25.i64[0];
                vst2_s8(v1454->i8, v1457);
                --v1453;
              }

              while (v1453 > 2);
              v1459 = *_X28;
              v1460 = vzip2q_s8(*_X28, v25);
              v1461 = v1454[2].i8;
              v1462 = v25.i64[0];
              vst2_s8(v1461, v1459);
LABEL_725:
              v1454[3] = v1460;
LABEL_737:
              v1515 = 1;
              v1516 = &v2825;
              do
              {
                v1517 = v1515;
                a7 = v1516[-13];
                a8 = v1516[1];
                a9 = v1516[2];
                a10 = v1516[3];
                v1518 = vrhaddq_u16(v1516[-16], *v1516);
                v1519 = vrhaddq_u16(v1516[-15], a8);
                v1520 = vrhaddq_u16(v1516[-14], a9);
                v1521 = vrhaddq_u16(a7, a10);
                if (v2757)
                {
                  a7 = *v172;
                  a8 = *(v172 + 16);
                  a9 = *(v172 + 32);
                  a10 = *(v172 + 48);
                  v172 += 64;
                  v1518 = vaddq_s16(a7, v1518);
                  v1519 = vaddq_s16(a8, v1519);
                  v1520 = vaddq_s16(a9, v1520);
                  v1521 = vaddq_s16(a10, v1521);
                }

                v1515 = 0;
                v1516 += 4;
                a6 = vqmovun_high_s16(vqmovun_s16(v1518), v1519);
                *v174->i8 = a6;
                *&v174->i8[v2730] = vqmovun_high_s16(vqmovun_s16(v1520), v1521);
                v174 = (v174 + v1388);
              }

              while ((v1517 & 1) != 0);
              goto LABEL_1064;
            }

            _X8 = &_X28->i8[v2734];
            __asm { PRFM            #0, [X8] }

            v1465 = *_X28;
            v1466 = v2719;
            if (v2719 <= -16)
            {
              v1466 = -16;
            }

            if (v1466 >= v2720)
            {
              v1466 = v2720;
            }

            v1467 = (v131 + v2698 + v1466);
            v1468 = 5;
            v1454 = v2824;
            do
            {
              _X13 = &v1467->i8[2 * v2734];
              v1467 = (v1467 + v2734);
              __asm { PRFM            #0, [X13] }

              v1471 = *v1467;
              v1472 = vrhaddq_u8(v1465, *v1467);
              v1473 = v25.i64[0];
              v1454[3] = vzip2q_s8(v1472, v25);
              v1454 += 2;
              vst2_s8(v1454->i8, v1472);
              --v1468;
              v1465 = v1471;
            }

            while (v1468 > 2);
            v1474 = vrhaddq_u8(v1471, *(v1467 + v2734));
          }

          v1482 = v1454[2].i8;
          v1483 = v25.i64[0];
          vst2_s8(v1482, v1474);
          v1460 = vzip2q_s8(v1474, v25);
          goto LABEL_725;
        }

        __asm { PRFM            #0, [X20] }

        v1390 = 5;
        v1391 = v2819;
        do
        {
          v1392 = _X20;
          _X20 = (_X20 + v2778);
          __asm { PRFM            #0, [X20] }

          v1394 = *v1392;
          v1391[3] = vzip2q_s8(*v1392, v25);
          v1391 += 2;
          v1395 = v25.i64[0];
          vst2_s8(v1391->i8, v1394);
          --v1390;
        }

        while (v1390 > 2);
        v1396 = *_X20;
        v1397 = vzip2q_s8(*_X20, v25);
        v1398 = v1391[2].i8;
        v1399 = v25.i64[0];
        vst2_s8(v1398, v1396);
LABEL_696:
        v1391[3] = v1397;
        goto LABEL_708;
      }

      _X8 = &_X20->i8[v2778];
      __asm { PRFM            #0, [X8] }

      v1402 = *_X20;
      v1403 = v2721;
      if (v2721 <= -16)
      {
        v1403 = -16;
      }

      if (v1403 >= v2718)
      {
        v1403 = v2718;
      }

      v1404 = (v1115 + v2714 + v1403);
      v1405 = 5;
      v1391 = v2819;
      do
      {
        _X13 = &v1404->i8[2 * v2778];
        v1404 = (v1404 + v2778);
        __asm { PRFM            #0, [X13] }

        v1408 = *v1404;
        v1409 = vrhaddq_u8(v1402, *v1404);
        v1410 = v25.i64[0];
        v1391[3] = vzip2q_s8(v1409, v25);
        v1391 += 2;
        vst2_s8(v1391->i8, v1409);
        --v1405;
        v1402 = v1408;
      }

      while (v1405 > 2);
      v1411 = vrhaddq_u8(v1408, *(v1404 + v2778));
    }

    v1419 = v1391[2].i8;
    v1420 = v25.i64[0];
    vst2_s8(v1419, v1411);
    v1397 = vzip2q_s8(v1411, v25);
    goto LABEL_696;
  }
}