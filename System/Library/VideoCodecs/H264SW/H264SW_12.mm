void sub_277350914(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, __n128 a9, __n128 a10, __n128 a11)
{
  v2796 = *MEMORY[0x277D85DE8];
  v2731 = *(a1 + 48);
  v12 = *(v2731 + 272);
  if (*(v2731 + 272))
  {
    v13 = a3;
    v15 = 0;
    v16 = *(a1 + 4);
    v17 = (16 * *a1);
    v18 = *(a1 + 216);
    v19 = *(v18 + 168);
    v2724 = (*(v18 + 64) + v17 + (v19 * 16 * v16));
    v20 = *(v18 + 184);
    v2722 = (*(v18 + 72) + v17 + (8 * v16 * v20));
    v2706 = 2 * v19;
    v2670 = 3 * v19;
    v2740 = v19;
    v2741 = v20;
    v2663 = 4 * v19;
    v2686 = a1 + 224;
    v2694 = 2 * v20;
    v2723 = 16 * v16;
    v2669 = (16 * v16) >> 1;
    v2662 = 4 * v20;
    v2730 = *(*(a1 + 176) + 112);
    v2664 = 3 * v20;
    v21 = 0uLL;
    v22.i64[0] = 0x10001000100010;
    v22.i64[1] = 0x10001000100010;
    v23.i64[0] = 0x20002000200020;
    v23.i64[1] = 0x20002000200020;
    v2701 = *(v2731 + 272);
    v2721 = 16 * *a1;
    while (1)
    {
      v24 = (v2731 + 16 + 16 * v15);
      v25 = v24[15];
      v26 = *(v2731 + 26);
      if (v26 >= 0x103)
      {
        v26 = 259;
      }

      v27 = &word_280A6AB60[40 * v26];
      v28 = v27[v15 + 24];
      v29 = v28 >> 8;
      v30 = *(v27 + v15 + 32);
      v31 = byte_2773B3BA0[v30];
      v32 = byte_2773B3BB0[v30];
      v33 = (v2730 + 16 * v15);
      if (v25 == 6)
      {
        break;
      }

      v105 = (v25 - 4);
      v106 = &v33[2 * v105];
      v107 = *v106;
      v108 = v106[1];
      v109 = *(*(v2686 + 8 * v105) + 8 * v24[v105 + 8]);
      v110 = v108 & 3 | (4 * (v107 & 3u));
      v111 = v107 & 7;
      v112 = v108 & 7;
      v113 = v112 | (16 * v111);
      v115 = *(v109 + 64);
      v114 = *(v109 + 72);
      v116 = *(v109 + 164);
      v117 = *(v109 + 168);
      v118 = *(v109 + 180);
      v119 = *(v109 + 184);
      v120 = *(v109 + 132);
      v121 = *(v109 + 148);
      if (v12 == 1)
      {
        v122 = v17 + (v107 >> 2);
        v123 = v2723 + (v108 >> 2);
        if (v122 <= -18)
        {
          v122 = -18;
        }

        if (v123 <= -18)
        {
          v123 = -18;
        }

        if (v122 >= v116 + 1)
        {
          v124 = v116 + 1;
        }

        else
        {
          v124 = v122;
        }

        if (v123 >= v120 + 1)
        {
          v125 = v120 + 1;
        }

        else
        {
          v125 = v123;
        }

        v126 = v125 * v117;
        v127 = (v115 + v126 + v124);
        v128 = ((v107 >> 2) & 0xFFFFFFFE) + v17;
        v129 = v2669 + (v108 >> 3);
        if (v128 <= -16)
        {
          v128 = -16;
        }

        if (v129 <= -8)
        {
          v129 = -8;
        }

        if (v128 >= v118 - 2)
        {
          v128 = v118 - 2;
        }

        if (v129 >= v121)
        {
          v129 = v121 - 1;
        }

        v130 = v128;
        v131 = v129 * v119;
        _X26 = (v114 + v128 + v131);
        switch(v110)
        {
          case 1:
            v418 = 0;
            v419 = (v127 - 2 * v117);
            v420 = (v419 + v117 + v117);
            v421 = vzip1q_s8(*(v420 + v117 + v117), v21);
            v422 = vzip1q_s8(*(v420 + v117), v21);
            v423 = vzip1q_s8(*v420, v21);
            v424 = vzip1q_s8(*(v419 + v117), v21);
            v425 = vzip1q_s8(*v419, v21);
            v426 = (v115 + 5 * v117 + v124 + v126 - 2 * v117);
            do
            {
              v427 = v424;
              v424 = v423;
              v423 = v422;
              v422 = v421;
              v421 = vzip1q_s8(*v426, v21);
              v428 = vsubq_s16(vshlq_n_s16(vaddq_s16(v424, v423), 2uLL), vaddq_s16(v427, v422));
              *(&v2770 + v418) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v425, v428), vshlq_n_s16(v428, 2uLL)), vaddq_s16(v421, v22)), 5uLL))), v424);
              v418 += 32;
              v426 = (v426 + v117);
              v425 = v427;
            }

            while (v418 != 512);
            v429 = 0;
            v430 = v127 - 2 * v117;
            v431 = *(v430 + 8);
            v432 = &v430[v117 + 8];
            v433 = (v432 + v117 + v117);
            v434 = vzip1q_s8(*(v433 + v117), v21);
            v435 = vzip1q_s8(*v433, v21);
            v436 = vzip1q_s8(*(v432 + v117), v21);
            v437 = vzip1q_s8(*v432, v21);
            v438 = vzip1q_s8(v431, v21);
            v439 = (v115 + 5 * v117 + v124 + v126 - 2 * v117 + 8);
            v301 = v2740;
            v133 = v2741;
            v302 = v2706;
            v134 = v2694;
            do
            {
              a9 = v437;
              v437 = v436;
              v436 = v435;
              v435 = v434;
              v434 = vzip1q_s8(*v439, v21);
              v440 = vsubq_s16(vshlq_n_s16(vaddq_s16(v437, v436), 2uLL), vaddq_s16(a9, v435));
              a11 = vshlq_n_s16(v440, 2uLL);
              v441 = vaddq_s16(vaddq_s16(v438, v440), a11);
              a10 = vaddq_s16(v434, v22);
              *(&v2771 + v429) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(v441, a10), 5uLL))), v437);
              v429 += 32;
              v439 = (v439 + v117);
              v438 = a9;
            }

            while (v429 != 512);
            goto LABEL_281;
          case 2:
            v363 = 0;
            v364 = (v127 - 2 * v117);
            v365 = (v364 + v117 + v117);
            v366 = vzip1q_s8(*(v365 + v117 + v117), v21);
            v367 = vzip1q_s8(*(v365 + v117), v21);
            v368 = vzip1q_s8(*v365, v21);
            v369 = vzip1q_s8(*(v364 + v117), v21);
            v370 = vzip1q_s8(*v364, v21);
            v371 = (v115 + 5 * v117 + v124 + v126 - 2 * v117);
            do
            {
              v372 = v369;
              v369 = v368;
              v368 = v367;
              v367 = v366;
              v373 = &v2770.i8[v363];
              v366 = vzip1q_s8(*v371, v21);
              v374 = vsubq_s16(vshlq_n_s16(vaddq_s16(v369, v368), 2uLL), vaddq_s16(v372, v367));
              v374.val[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v370, v374), vshlq_n_s16(v374, 2uLL)), vaddq_s16(v366, v22)), 5uLL));
              v375 = v21.i64[0];
              vst2_s8(v373, v374);
              v363 += 32;
              v371 = (v371 + v117);
              v370 = v372;
            }

            while (v363 != 512);
            v376 = 0;
            v377 = v127 - 2 * v117;
            v378 = *(v377 + 8);
            v379 = &v377[v117 + 8];
            v380 = (v379 + v117 + v117);
            v381 = vzip1q_s8(*(v380 + v117), v21);
            v382 = vzip1q_s8(*v380, v21);
            v383 = vzip1q_s8(*(v379 + v117), v21);
            v384 = vzip1q_s8(*v379, v21);
            v385 = vzip1q_s8(v378, v21);
            v386 = (v115 + 5 * v117 + v124 + v126 - 2 * v117 + 8);
            v301 = v2740;
            v133 = v2741;
            v302 = v2706;
            v134 = v2694;
            do
            {
              a9 = v384;
              v384 = v383;
              v383 = v382;
              v382 = v381;
              v387 = &v2771.i8[v376];
              v381 = vzip1q_s8(*v386, v21);
              v388 = vsubq_s16(vshlq_n_s16(vaddq_s16(v384, v383), 2uLL), vaddq_s16(a9, v382));
              a11 = vshlq_n_s16(v388, 2uLL);
              v389 = vaddq_s16(vaddq_s16(v385, v388), a11);
              a10 = vaddq_s16(v381, v22);
              a10.n128_u64[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(v389, a10), 5uLL));
              a11.n128_u64[0] = v21.i64[0];
              vst2_s8(v387, a10);
              v376 += 32;
              v386 = (v386 + v117);
              v385 = a9;
            }

            while (v376 != 512);
            goto LABEL_281;
          case 3:
            v394 = 0;
            v395 = (v127 - 2 * v117);
            v396 = (v395 + v117 + v117);
            v397 = vzip1q_s8(*(v396 + v117 + v117), v21);
            v398 = vzip1q_s8(*(v396 + v117), v21);
            v399 = vzip1q_s8(*v396, v21);
            v400 = vzip1q_s8(*(v395 + v117), v21);
            v401 = vzip1q_s8(*v395, v21);
            v402 = (v115 + 5 * v117 + v124 + v126 - 2 * v117);
            do
            {
              v403 = v400;
              v400 = v399;
              v399 = v398;
              v398 = v397;
              v397 = vzip1q_s8(*v402, v21);
              v404 = vsubq_s16(vshlq_n_s16(vaddq_s16(v400, v399), 2uLL), vaddq_s16(v403, v398));
              *(&v2770 + v394) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v401, v404), vshlq_n_s16(v404, 2uLL)), vaddq_s16(v397, v22)), 5uLL))), v399);
              v394 += 32;
              v402 = (v402 + v117);
              v401 = v403;
            }

            while (v394 != 512);
            v405 = 0;
            v406 = v127 - 2 * v117;
            v407 = *(v406 + 8);
            v408 = &v406[v117 + 8];
            v409 = (v408 + v117 + v117);
            v410 = vzip1q_s8(*(v409 + v117), v21);
            v411 = vzip1q_s8(*v409, v21);
            v412 = vzip1q_s8(*(v408 + v117), v21);
            v413 = vzip1q_s8(*v408, v21);
            v414 = vzip1q_s8(v407, v21);
            v415 = (v115 + 5 * v117 + v124 + v126 - 2 * v117 + 8);
            v301 = v2740;
            v133 = v2741;
            v302 = v2706;
            v134 = v2694;
            do
            {
              a9 = v413;
              v413 = v412;
              v412 = v411;
              v411 = v410;
              v410 = vzip1q_s8(*v415, v21);
              v416 = vsubq_s16(vshlq_n_s16(vaddq_s16(v413, v412), 2uLL), vaddq_s16(a9, v411));
              a11 = vshlq_n_s16(v416, 2uLL);
              v417 = vaddq_s16(vaddq_s16(v414, v416), a11);
              a10 = vaddq_s16(v410, v22);
              *(&v2771 + v405) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(v417, a10), 5uLL))), v412);
              v405 += 32;
              v415 = (v415 + v117);
              v414 = a9;
            }

            while (v405 != 512);
            goto LABEL_281;
          case 4:
            v294 = 0;
            v295 = (v127 - 2);
            do
            {
              v296 = *v295;
              v295 = (v295 + v117);
              v297 = vzip1q_s8(vextq_s8(v296, v296, 2uLL), v21);
              v298 = vsubq_s16(vshlq_n_s16(vaddq_s16(v297, vzip1q_s8(vextq_s8(v296, v296, 3uLL), v21)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v296, v296, 1uLL), v21), vzip1q_s8(vextq_s8(v296, v296, 4uLL), v21)));
              *(&v2770 + v294) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v298, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v296, v21), vzip1q_s8(vextq_s8(v296, v296, 5uLL), v21)), v298)), v22), 5uLL))), v297);
              v294 += 32;
            }

            while (v294 != 512);
            v299 = 0;
            v300 = (v127 + 6);
            v301 = v2740;
            v133 = v2741;
            v302 = v2706;
            v134 = v2694;
            do
            {
              v303 = *v300;
              v300 = (v300 + v117);
              v304 = vzip1q_s8(vextq_s8(v303, v303, 2uLL), v21);
              v305 = vsubq_s16(vshlq_n_s16(vaddq_s16(v304, vzip1q_s8(vextq_s8(v303, v303, 3uLL), v21)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v303, v303, 1uLL), v21), vzip1q_s8(vextq_s8(v303, v303, 4uLL), v21)));
              *(&v2771 + v299) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v305, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v303, v21), vzip1q_s8(vextq_s8(v303, v303, 5uLL), v21)), v305)), v22), 5uLL))), v304);
              v299 += 32;
            }

            while (v299 != 512);
            goto LABEL_281;
          case 5:
            v2738 = v128;
            v390 = v115 + v126 + v124;
            v391 = v112 | (16 * v111);
            v392 = v117;
            v393 = 2;
            goto LABEL_273;
          case 6:
            v2736 = v128;
            v2728 = v112 | (16 * v111);
            v2749 = v11;
            v2763 = v21;
            v291 = v111;
            v292 = v108 & 7;
            v293 = v114;
            sub_27729B1B0(v2770.i8, 0x20u, v115 + v126 + v124, v117);
            sub_27729B1B0(v2771.i8, 0x20u, v127 + 8, v117);
            goto LABEL_279;
          case 7:
            v2738 = v128;
            v390 = v115 + v126 + v124;
            v391 = v112 | (16 * v111);
            v392 = v117;
            v393 = 3;
LABEL_273:
            v442 = 2;
            goto LABEL_276;
          case 8:
            v527 = 0;
            v528 = (v127 - 2);
            do
            {
              v529 = &v2770.i8[v527];
              v530 = *v528;
              v528 = (v528 + v117);
              v531 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v530, v530, 2uLL), v21), vzip1q_s8(vextq_s8(v530, v530, 3uLL), v21)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v530, v530, 1uLL), v21), vzip1q_s8(vextq_s8(v530, v530, 4uLL), v21)));
              *v530.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v531, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v530, v21), vzip1q_s8(vextq_s8(v530, v530, 5uLL), v21)), v531)), v22), 5uLL));
              v531.i64[0] = v21.i64[0];
              vst2_s8(v529, v530);
              v527 += 32;
            }

            while (v527 != 512);
            v532 = 0;
            v533 = (v127 + 6);
            v301 = v2740;
            v133 = v2741;
            v302 = v2706;
            v134 = v2694;
            do
            {
              v534 = &v2771.i8[v532];
              v535 = *v533;
              v533 = (v533 + v117);
              v536 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v535, v535, 2uLL), v21), vzip1q_s8(vextq_s8(v535, v535, 3uLL), v21)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v535, v535, 1uLL), v21), vzip1q_s8(vextq_s8(v535, v535, 4uLL), v21)));
              *v535.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v536, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v535, v21), vzip1q_s8(vextq_s8(v535, v535, 5uLL), v21)), v536)), v22), 5uLL));
              v536.i64[0] = v21.i64[0];
              vst2_s8(v534, v535);
              v532 += 32;
            }

            while (v532 != 512);
            goto LABEL_281;
          case 9:
            v2736 = v128;
            v2728 = v112 | (16 * v111);
            v2749 = v11;
            v2763 = v21;
            v291 = v111;
            v292 = v108 & 7;
            v293 = v114;
            sub_27729B614(v2770.i8, 0x20u, v115 + v126 + v124, v117, 16);
            sub_27729B614(v2771.i8, 0x20u, v127 + 8, v117, 16);
            goto LABEL_279;
          case 10:
            v2736 = v128;
            v2728 = v112 | (16 * v111);
            v2749 = v11;
            v2763 = v21;
            v291 = v111;
            v292 = v108 & 7;
            v293 = v114;
            sub_27729B7DC(&v2770, 32, v115 + v126 + v124, v117, 16);
            sub_27729B7DC(&v2771, 32, v127 + 8, v117, 16);
            goto LABEL_279;
          case 11:
            v2736 = v128;
            v2728 = v112 | (16 * v111);
            v2749 = v11;
            v2763 = v21;
            v291 = v111;
            v292 = v108 & 7;
            v293 = v114;
            sub_27729B98C(v2770.i8, 0x20u, v115 + v126 + v124, v117, 16);
            sub_27729B98C(v2771.i8, 0x20u, v127 + 8, v117, 16);
            goto LABEL_279;
          case 12:
            v332 = 0;
            v333 = (v127 - 2);
            do
            {
              v334 = *v333;
              v333 = (v333 + v117);
              v335 = vzip1q_s8(vextq_s8(v334, v334, 3uLL), v21);
              v336 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v334, v334, 2uLL), v21), v335), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v334, v334, 1uLL), v21), vzip1q_s8(vextq_s8(v334, v334, 4uLL), v21)));
              *(&v2770 + v332) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v336, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v334, v21), vzip1q_s8(vextq_s8(v334, v334, 5uLL), v21)), v336)), v22), 5uLL))), v335);
              v332 += 32;
            }

            while (v332 != 512);
            v337 = 0;
            v338 = (v127 + 6);
            v301 = v2740;
            v133 = v2741;
            v302 = v2706;
            v134 = v2694;
            do
            {
              v339 = *v338;
              v338 = (v338 + v117);
              v340 = vzip1q_s8(vextq_s8(v339, v339, 3uLL), v21);
              v341 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v339, v339, 2uLL), v21), v340), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v339, v339, 1uLL), v21), vzip1q_s8(vextq_s8(v339, v339, 4uLL), v21)));
              *(&v2771 + v337) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v341, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v339, v21), vzip1q_s8(vextq_s8(v339, v339, 5uLL), v21)), v341)), v22), 5uLL))), v340);
              v337 += 32;
            }

            while (v337 != 512);
            goto LABEL_281;
          case 13:
            v2738 = v128;
            v390 = v115 + v126 + v124;
            v391 = v112 | (16 * v111);
            v392 = v117;
            v393 = 2;
            goto LABEL_275;
          case 14:
            v2736 = v128;
            v2728 = v112 | (16 * v111);
            v2749 = v11;
            v2763 = v21;
            v291 = v111;
            v292 = v108 & 7;
            v293 = v114;
            sub_27729BBEC(v2770.i8, 0x20u, v115 + v126 + v124, v117);
            sub_27729BBEC(v2771.i8, 0x20u, v127 + 8, v117);
LABEL_279:
            v130 = v2736;
            v113 = v2728;
            v114 = v293;
            v112 = v292;
            v111 = v291;
            v12 = v2701;
            goto LABEL_280;
          case 15:
            v2738 = v128;
            v390 = v115 + v126 + v124;
            v391 = v112 | (16 * v111);
            v392 = v117;
            v393 = 3;
LABEL_275:
            v442 = 3;
LABEL_276:
            v2749 = v11;
            v2763 = v21;
            v443 = v12;
            v444 = v111;
            v445 = v108 & 7;
            v446 = v114;
            sub_27729AF04(v2770.i8, v390, v392, 16, v393, v442);
            v130 = v2738;
            v113 = v391;
            v114 = v446;
            v112 = v445;
            v111 = v444;
            v12 = v443;
LABEL_280:
            v23.i64[0] = 0x20002000200020;
            v23.i64[1] = 0x20002000200020;
            v22.i64[0] = 0x10001000100010;
            v22.i64[1] = 0x10001000100010;
            v11 = v2749;
            v21 = v2763;
            v134 = v2694;
            v13 = a3;
            v301 = v2740;
            v133 = v2741;
            v302 = v2706;
LABEL_281:
            v447 = 0;
            v448 = v2724;
            v449 = a2;
            do
            {
              v451 = *(&v2770 + v447);
              v450 = *(&v2770 + v447 + 16);
              v453 = *(&v2772 + v447);
              v452 = v2773[v447 / 0x10];
              if (a2)
              {
                v454 = *v449;
                a9 = *(v449 + 16);
                a10 = *(v449 + 32);
                a11 = *(v449 + 48);
                v449 += 64;
                v451 = vaddq_s16(v454, v451);
                v450 = vaddq_s16(a9, v450);
                v453 = vaddq_s16(a10, v453);
                v452 = vaddq_s16(a11, v452);
              }

              *v448 = vqmovun_high_s16(vqmovun_s16(v451), v450);
              *(v448 + v301) = vqmovun_high_s16(vqmovun_s16(v453), v452);
              v448 = (v448 + v302);
              v447 += 64;
            }

            while (v447 != 512);
            break;
          default:
            v133 = v2741;
            v134 = v2694;
            if (a2)
            {
              v135 = 0;
              v136 = v2724;
              do
              {
                v137 = *v127;
                v127 = (v127 + v117);
                *v136 = vqmovun_high_s16(vqmovun_s16(vaddq_s16(*(a2 + v135), vzip1q_s8(v137, v21))), vaddq_s16(*(a2 + v135 + 16), vzip2q_s8(v137, v21)));
                v136 = (v136 + v2740);
                v135 += 32;
              }

              while (v135 != 512);
            }

            else
            {
              v537 = 16;
              v538 = v2724;
              do
              {
                v539 = *v127;
                v127 = (v127 + v117);
                *v538 = v539;
                v538 = (v538 + v2740);
                --v537;
              }

              while (v537);
            }

            break;
        }

        if (!v113)
        {
          if (v13)
          {
            v477 = 0;
            v478 = v2722;
            do
            {
              v479 = *_X26;
              _X26 = (_X26 + v119);
              *v478 = vqmovun_high_s16(vqmovun_s16(vaddq_s16(*(v13 + v477), vzip1q_s8(v479, v21))), vaddq_s16(*(v13 + v477 + 16), vzip2q_s8(v479, v21)));
              v478 = (v478 + v133);
              v477 += 32;
            }

            while (v477 != 256);
          }

          else
          {
            v524 = 8;
            v525 = v2722;
            do
            {
              v526 = *_X26;
              _X26 = (_X26 + v119);
              *v525 = v526;
              v525 = (v525 + v133);
              --v524;
            }

            while (v524);
          }

          goto LABEL_307;
        }

        v455 = v112 * v111;
        v456 = v21;
        v456.i32[0] = 65537 * (8 - v112) * (8 - v111);
        v457 = v21;
        v457.i32[0] = 65537 * (8 - v112) * v111;
        v458 = v21;
        v458.i32[0] = 65537 * (8 - v111) * v112;
        v459 = v21;
        v459.i32[0] = 65537 * v112 * v111;
        v2788 = vqtbl1q_s8(v456, xmmword_2773B3DF0);
        v2789 = vqtbl1q_s8(v457, xmmword_2773B3DF0);
        v460 = vqtbl1q_s8(v459, xmmword_2773B3DF0);
        v2790 = vqtbl1q_s8(v458, xmmword_2773B3DF0);
        v2791 = v460;
        if (v113 == 64)
        {
          __asm { PRFM            #0, [X26] }

          v481 = 9;
          v476 = v2778;
          do
          {
            v482 = _X26;
            _X26 = (_X26 + v119);
            __asm { PRFM            #0, [X26] }

            v484 = vextq_s8(*v482, *v482, 2uLL);
            v484.i16[7] = v482[1].i16[0];
            v485 = vrhaddq_u8(*v482, v484);
            v484.i64[0] = v21.i64[0];
            v476[3] = vzip2q_s8(v485, v21);
            v476 += 2;
            vst2_s8(v476->i8, *(&v484 - 8));
            --v481;
          }

          while (v481 > 2);
          v486 = vextq_s8(*_X26, *_X26, 2uLL);
          v486.i16[7] = _X26[1].i16[0];
          v475 = vrhaddq_u8(*_X26, v486);
          v469 = v476 + 2;
LABEL_298:
          v487 = v21.i64[0];
          vst2_s8(v469->i8, v475);
          v476[3] = vzip2q_s8(v475, v21);
        }

        else
        {
          if (v113 == 4)
          {
            _X8 = &_X26->i8[v119];
            __asm { PRFM            #0, [X8] }

            v467 = *_X26;
            v468 = (v114 + v130 + v131);
            v469 = &v2779;
            for (i = 9; i > 2; --i)
            {
              _X12 = &v468->i8[2 * v119];
              v468 = (v468 + v119);
              __asm { PRFM            #0, [X12] }

              v473 = *v468;
              v474 = vrhaddq_u8(v467, *v468);
              *v469 = vzip1q_s8(v474, v21);
              v469[1] = vzip2q_s8(v474, v21);
              v469 += 2;
              v467 = v473;
            }

            v475 = vrhaddq_u8(v473, *(v468 + v119));
            v476 = v469 - 2;
            goto LABEL_298;
          }

          v488 = 0;
          v489 = v455 - (8 * v111 + 8 * v112) + 64;
          v490 = v21;
          v490.i32[0] = v489 | (v489 << 16);
          v491 = vqtbl1q_s8(v490, xmmword_2773B3DF0);
          v492 = v21;
          v492.i32[0] = (8 * v111 - v455) | ((8 * v111 - v455) << 16);
          v493 = v21;
          v493.i32[0] = (8 * v112 - v455) | ((8 * v112 - v455) << 16);
          v494 = vqtbl1q_s8(v492, xmmword_2773B3DF0);
          v495 = vqtbl1q_s8(v493, xmmword_2773B3DF0);
          v2788 = v491;
          v2789 = v494;
          v2790 = v495;
          _X9 = &_X26->i8[v119];
          __asm { PRFM            #0, [X9] }

          a9.n128_u64[0] = _X26->i64[0];
          v498 = vqtbl1q_s8(a9, xmmword_2773B3E00);
          v498.i16[3] = _X26->i16[4];
          v499 = vzip1q_s8(v498, v21);
          v500 = vzip1q_s8(a9, v21);
          v501 = (v114 + v131 + v130 + v119 + 8);
          _X12 = v114 + v131 + v130 + 2 * v119;
          do
          {
            __asm { PRFM            #0, [X12] }

            v504 = vmlaq_s16(vmulq_s16(v494, v499), v491, v500);
            v499.i64[0] = *(v501 - 1);
            v500 = vzip1q_s8(v499, v21);
            v505 = vqtbl1q_s8(v499, xmmword_2773B3E00);
            v505.i16[3] = *v501;
            v501 = (v501 + v119);
            v499 = vzip1q_s8(v505, v21);
            *(&v2779 + v488) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v504, v495, v500), v460, v499), v23), 6uLL);
            v488 += 32;
            _X12 += v119;
          }

          while (v488 != 256);
          v506 = 0;
          _X9 = &_X26->i8[v119 + 8];
          __asm { PRFM            #0, [X9] }

          v500.i64[0] = _X26->i64[1];
          v509 = vqtbl1q_s8(v500, xmmword_2773B3E00);
          v509.i16[3] = _X26[1].i16[0];
          a10 = vzip1q_s8(v509, v21);
          a9 = vzip1q_s8(v500, v21);
          v510 = v114 + v130 + v119;
          v511 = v114 + v130 + 2 * v119 + 8;
          do
          {
            _X12 = v511 + v131;
            __asm { PRFM            #0, [X12] }

            v514 = vmlaq_s16(vmulq_s16(v494, a10), v491, a9);
            a10.n128_u64[0] = *(v510 + v131 + 8);
            a9 = vzip1q_s8(a10, v21);
            v515 = vqtbl1q_s8(a10, xmmword_2773B3E00);
            v515.i16[3] = *(v510 + v131 + 16);
            a10 = vzip1q_s8(v515, v21);
            a11 = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v514, v495, a9), v460, a10), v23), 6uLL);
            *(&v2780 + v506) = a11;
            v506 += 32;
            v510 += v119;
            v511 += v119;
          }

          while (v506 != 256);
        }

        v516 = 0;
        v517 = v2722;
        v518 = v13;
        do
        {
          v520 = *(&v2779 + v516);
          v519 = *(&v2779 + v516 + 16);
          v522 = *(&v2781 + v516);
          v521 = v2782[v516 / 0x10];
          if (v13)
          {
            v523 = *v518;
            a9 = *(v518 + 16);
            a10 = *(v518 + 32);
            a11 = *(v518 + 48);
            v518 += 64;
            v520 = vaddq_s16(v523, v520);
            v519 = vaddq_s16(a9, v519);
            v522 = vaddq_s16(a10, v522);
            v521 = vaddq_s16(a11, v521);
          }

          *v517 = vqmovun_high_s16(vqmovun_s16(v520), v519);
          *(v517 + v133) = vqmovun_high_s16(vqmovun_s16(v522), v521);
          v517 = (v517 + v134);
          v516 += 64;
        }

        while (v516 != 256);
        goto LABEL_307;
      }

      v2726 = v108 & 7 | (16 * (v107 & 7));
      v138 = v112 * v111;
      v139 = v21;
      v139.i32[0] = 65537 * (8 - v112) * (8 - v111);
      v140 = v21;
      v140.i32[0] = 65537 * (8 - v112) * v111;
      v141 = xmmword_2773B3DF0;
      v142 = vqtbl1q_s8(v139, xmmword_2773B3DF0);
      v143 = vqtbl1q_s8(v140, xmmword_2773B3DF0);
      v144 = v21;
      v144.i32[0] = 65537 * (8 - v111) * v112;
      v145 = vqtbl1q_s8(v144, xmmword_2773B3DF0);
      v146 = v21;
      v146.i32[0] = 65537 * v112 * v111;
      v147 = vqtbl1q_s8(v146, xmmword_2773B3DF0);
      v2788 = v142;
      v2789 = v143;
      v2790 = v145;
      v2791 = v147;
      switch(v28)
      {
        case 4u:
          v215 = v107 & 7;
          v2720 = v108 & 7;
          v2734 = v15;
          v216 = v107 >> 2;
          v217 = v17 + v31 + (v107 >> 2);
          v218 = v2723 + v32 + (v108 >> 2);
          if (v217 <= -18)
          {
            v217 = -18;
          }

          if (v218 <= -18)
          {
            v218 = -18;
          }

          if (v217 >= v116 + 1)
          {
            v219 = v116 + 1;
          }

          else
          {
            v219 = v217;
          }

          if (v218 >= v120 + 1)
          {
            v220 = v120 + 1;
          }

          else
          {
            v220 = v218;
          }

          v221 = (v115 + v219 + v220 * v117);
          v222 = (v216 & 0xFFFFFFFE) + v17 + v31;
          v223 = (v108 >> 3) + ((v2723 + v32) >> 1);
          if (v222 <= -16)
          {
            v222 = -16;
          }

          if (v223 <= -8)
          {
            v223 = -8;
          }

          if (v222 >= v118 - 2)
          {
            v222 = v118 - 2;
          }

          v224 = v114 + v222;
          if (v223 >= v121)
          {
            v223 = v121 - 1;
          }

          v225 = v224 + v223 * v119;
          v226 = v2740;
          v227 = (v2724->i32 + v31 + (v2740 * v32));
          v228 = (a2 + 2 * v31 + 32 * v32);
          v229 = (v2722->i32 + v31 + (v32 >> 1) * v2741);
          v230 = (v13 + 2 * v31 + 32 * (v32 >> 1));
          v2745 = v11;
          v2759 = v21;
          if (v29 == 8)
          {
            v231 = &v221[v117];
            switch(v110)
            {
              case 1:
                v1957 = sub_27729F23C(&v2770, v221, v117, v142, v143, *v145.i64, v146, 3.52371676e-294, a9, a10, a11);
                v238 = sub_27729F23C(&v2772, v231, v117, v1957, v1958, v1959, v1960, v1961, v1962, v1963, v1964);
                goto LABEL_1038;
              case 2:
                v1672 = sub_27729F394(&v2770, v221, v117, *v142.i64, v143, v145, *v146.i64, xmmword_2773B3DF0, a9, a10, a11);
                sub_27729F394(&v2772, v231, v117, v1672, v1673, v1674, v1675, v1676, v1677, v1678, v1679);
                goto LABEL_1038;
              case 3:
                v1786 = sub_27729F4D8(&v2770, v221, v117, v142, v143, *v145.i64, v146, 3.52371676e-294, a9, a10, a11);
                v238 = sub_27729F4D8(&v2772, v231, v117, v1786, v1787, v1788, v1789, v1790, v1791, v1792, v1793);
                goto LABEL_1038;
              case 4:
                sub_27729C91C(&v2770, 8u, v221, v117);
                v238 = sub_27729C91C(&v2772, 8u, v231, v117);
                goto LABEL_1038;
              case 5:
                *v2271.i64 = sub_27729CAF0(&v2770, 8u, v221, v117, v142, *v143.i64, *v145.i64, *v146.i64, 3.52371676e-294, a9, a10, a11);
                sub_27729CAF0(&v2772, 8u, v231, v117, v2271, v2272, v2273, v2274, v2275, v2276, v2277, v2278);
                goto LABEL_1038;
              case 6:
                *v2297.i64 = sub_27729CDD0(&v2770, 8u, v221, v117, v142, v143, v145, v146, xmmword_2773B3DF0, a9, a10, a11);
                sub_27729CDD0(&v2772, 8u, v231, v117, v2297, v2298, v2299, v2300, v2301, v2302, v2303, v2304);
                goto LABEL_1038;
              case 7:
                v1916 = sub_27729D274(&v2770, 8u, v221, v117, *v142.i64, *v143.i64, *v145.i64, *v146.i64, 3.52371676e-294, a9.n128_f64[0], a10, a11);
                sub_27729D274(&v2772, 8u, v231, v117, v1916, v1917, v1918, v1919, v1920, v1921, v1922, v1923);
                goto LABEL_1038;
              case 8:
                sub_27729D550(&v2770, 8u, v221, v117);
                v238 = sub_27729D550(&v2772, 8u, v231, v117);
                goto LABEL_1038;
              case 9:
                sub_27729D714(&v2770, 8u, v221, v117);
                sub_27729D714(&v2772, 8u, v231, v117);
                goto LABEL_1038;
              case 10:
                *v2307.i64 = sub_27729F62C(&v2770, v221, v117, v142, v143, v145, v146, xmmword_2773B3DF0, a9, a10, a11);
                sub_27729F62C(&v2772, v231, v117, v2307, v2308, v2309, v2310, v2311, v2312, v2313, v2314);
                goto LABEL_1038;
              case 11:
                sub_27729DE6C(&v2770, 8u, v221, v117);
                sub_27729DE6C(&v2772, 8u, v231, v117);
                goto LABEL_1038;
              case 12:
                sub_27729E5C4(&v2770, 8u, v221, v117);
                v238 = sub_27729E5C4(&v2772, 8u, v231, v117);
                goto LABEL_1038;
              case 13:
                *v2289.i64 = sub_27729E798(&v2770, 8u, v221, v117, v142, *v143.i64, *v145.i64, *v146.i64, 3.52371676e-294, a9, a10, a11);
                sub_27729E798(&v2772, 8u, v231, v117, v2289, v2290, v2291, v2292, v2293, v2294, v2295, v2296);
                goto LABEL_1038;
              case 14:
                *v1537.i64 = sub_27729EA7C(&v2770, 8u, v221, v117, v142, v143, v145, v146, xmmword_2773B3DF0, a9, a10, a11);
                sub_27729EA7C(&v2772, 8u, v231, v117, v1537, v1538, v1539, v1540, v1541, v1542, v1543, v1544);
                goto LABEL_1038;
              case 15:
                v1766 = sub_27729EF20(&v2770, 8u, v221, v117, *v142.i64, *v143.i64, *v145.i64, *v146.i64, 3.52371676e-294, a9.n128_f64[0], a10, a11);
                sub_27729EF20(&v2772, 8u, v231, v117, v1766, v1767, v1768, v1769, v1770, v1771, v1772, v1773);
LABEL_1038:
                v226 = v2740;
                break;
              default:
                v142.i32[0] = *(v221 + v117);
                v143.i32[0] = *(v221 + 2 * v117);
                v145.i32[0] = *v221;
                v146.i32[0] = *(v221 + 3 * v117);
                v232.i64[0] = vzip1q_s8(v145, v21).u64[0];
                v233 = vzip1q_s8(v142, v21);
                v234.i64[0] = vzip1q_s8(v143, v21).u64[0];
                v235 = vzip1q_s8(v146, v21);
                v232.i64[1] = v233.i64[0];
                v234.i64[1] = v235.i64[0];
                v2770 = v232;
                v2771 = v234;
                v233.i32[0] = *v231;
                v234.i32[0] = *(v231 + v117);
                v232.i32[0] = *(v231 + 2 * v117);
                v235.i32[0] = *(v231 + 3 * v117);
                v238.i64[0] = vzip1q_s8(v233, v21).u64[0];
                v236 = vzip1q_s8(v234, v21);
                v239.i64[0] = vzip1q_s8(v232, v21).u64[0];
                v237 = vzip1q_s8(v235, v21);
                v238.i64[1] = v236.i64[0];
                v239.i64[1] = v237.i64[0];
                v2772 = v238;
                v2773[0] = v239;
                break;
            }

            v2315 = 1;
            v2316 = &v2770;
            LODWORD(v17) = v2721;
            do
            {
              v2317 = v2315;
              v238.i64[0] = v2316->i64[0];
              v236.i64[0] = v2316->i64[1];
              v239.i64[0] = v2316[1].i64[0];
              v237.i64[0] = v2316[1].i64[1];
              if (a2)
              {
                v141.i64[0] = *v228;
                a9.n128_u64[0] = v228[4];
                a10.n128_u64[0] = v228[8];
                a11.n128_u64[0] = v228[12];
                v228 += 16;
                v238 = vaddq_s16(v141, v238);
                v236 = vaddq_s16(a9, v236);
                v239 = vaddq_s16(a10, v239);
                v237 = vaddq_s16(a11, v237);
              }

              v2315 = 0;
              v2318 = COERCE_DOUBLE(vqmovun_s16(v238));
              v2319 = COERCE_DOUBLE(vqmovun_s16(v236));
              v2320 = COERCE_DOUBLE(vqmovun_s16(v239));
              v2321 = COERCE_DOUBLE(vqmovun_s16(v237));
              *v227 = LODWORD(v2318);
              *(v227 + v226) = LODWORD(v2319);
              *(v227 + v2706) = LODWORD(v2320);
              *(v227 + v2670) = LODWORD(v2321);
              v227 = (v227 + v2663);
              v2316 += 2;
            }

            while ((v2317 & 1) != 0);
            v2322 = sub_277290798(&v2779, v225, v119, v215, v2720, v2318, v2319, v2320, v2321, v141, a9);
            sub_277290798(&v2780, v225 + (2 * v119), v119, v215, v2720, v2322, v2323, v2324, v2325, v2326, v2327);
            v2330.i64[0] = v2779.i64[1];
            v2329.i64[0] = v2779.i64[0];
            v2332.i64[0] = v2780.i64[1];
            v2331.i64[0] = v2780.i64[0];
            v13 = a3;
            if (a3)
            {
              v2328.i64[0] = *v230;
              a9.n128_u64[0] = v230[4];
              a10.n128_u64[0] = v230[8];
              a11.n128_u64[0] = v230[12];
              v2329 = vaddq_s16(v2328, v2329);
              v2330 = vaddq_s16(a9, v2330);
              v2331 = vaddq_s16(a10, v2331);
              v2332 = vaddq_s16(a11, v2332);
            }

            v12 = v2701;
            v15 = v2734;
            v22.i64[0] = 0x10001000100010;
            v22.i64[1] = 0x10001000100010;
            v23.i64[0] = 0x20002000200020;
            v23.i64[1] = 0x20002000200020;
            *v229 = vqmovun_s16(v2329).u32[0];
            *(v229 + v2741) = vqmovun_s16(v2330).u32[0];
            *(v229 + v2694) = vqmovun_s16(v2331).u32[0];
            *(v229 + v2664) = vqmovun_s16(v2332).u32[0];
            v11 = v2745;
            v21 = v2759;
LABEL_308:
            if (v12 == 1)
            {
              return;
            }

            break;
          }

          switch(v110)
          {
            case 1:
              v266 = sub_27729F23C(&v2770, v221, v117, v142, v143, *v145.i64, v146, 3.52371676e-294, a9, a10, a11);
              goto LABEL_1047;
            case 2:
              sub_27729F394(&v2770, v221, v117, *v142.i64, v143, v145, *v146.i64, xmmword_2773B3DF0, a9, a10, a11);
              goto LABEL_1047;
            case 3:
              v266 = sub_27729F4D8(&v2770, v221, v117, v142, v143, *v145.i64, v146, 3.52371676e-294, a9, a10, a11);
              goto LABEL_1047;
            case 4:
              v266 = sub_27729C91C(&v2770, 8u, v221, v117);
              goto LABEL_1047;
            case 5:
              sub_27729CAF0(&v2770, 8u, v221, v117, v142, *v143.i64, *v145.i64, *v146.i64, 3.52371676e-294, a9, a10, a11);
              goto LABEL_1047;
            case 6:
              sub_27729CDD0(&v2770, 8u, v221, v117, v142, v143, v145, v146, xmmword_2773B3DF0, a9, a10, a11);
              goto LABEL_1047;
            case 7:
              sub_27729D274(&v2770, 8u, v221, v117, *v142.i64, *v143.i64, *v145.i64, *v146.i64, 3.52371676e-294, a9.n128_f64[0], a10, a11);
              goto LABEL_1047;
            case 8:
              v266 = sub_27729D550(&v2770, 8u, v221, v117);
              goto LABEL_1047;
            case 9:
              sub_27729D714(&v2770, 8u, v221, v117);
              goto LABEL_1047;
            case 10:
              sub_27729F62C(&v2770, v221, v117, v142, v143, v145, v146, xmmword_2773B3DF0, a9, a10, a11);
              goto LABEL_1047;
            case 11:
              sub_27729DE6C(&v2770, 8u, v221, v117);
              goto LABEL_1047;
            case 12:
              v266 = sub_27729E5C4(&v2770, 8u, v221, v117);
              goto LABEL_1047;
            case 13:
              sub_27729E798(&v2770, 8u, v221, v117, v142, *v143.i64, *v145.i64, *v146.i64, 3.52371676e-294, a9, a10, a11);
              goto LABEL_1047;
            case 14:
              sub_27729EA7C(&v2770, 8u, v221, v117, v142, v143, v145, v146, xmmword_2773B3DF0, a9, a10, a11);
              goto LABEL_1047;
            case 15:
              sub_27729EF20(&v2770, 8u, v221, v117, *v142.i64, *v143.i64, *v145.i64, *v146.i64, 3.52371676e-294, a9.n128_f64[0], a10, a11);
LABEL_1047:
              v226 = v2740;
              break;
            default:
              v142.i32[0] = *v221;
              v143.i32[0] = *(v221 + v117);
              v145.i32[0] = *(v221 + 2 * v117);
              v146.i32[0] = *(v221 + 3 * v117);
              v266.i64[0] = vzip1q_s8(v142, v21).u64[0];
              v264 = vzip1q_s8(v143, v21);
              v267.i64[0] = vzip1q_s8(v145, v21).u64[0];
              v265 = vzip1q_s8(v146, v21);
              v266.i64[1] = v264.i64[0];
              v267.i64[1] = v265.i64[0];
              v2770 = v266;
              v2771 = v267;
              break;
          }

          v265.i64[0] = v2770.i64[1];
          v267.i64[0] = v2770.i64[0];
          v264.i64[0] = v2771.i64[1];
          v266.i64[0] = v2771.i64[0];
          if (a2)
          {
            v141.i64[0] = *v228;
            a9.n128_u64[0] = v228[4];
            a10.n128_u64[0] = v228[8];
            a11.n128_u64[0] = v228[12];
            v267 = vaddq_s16(v141, v267);
            v265 = vaddq_s16(a9, v265);
            v266 = vaddq_s16(a10, v266);
            v264 = vaddq_s16(a11, v264);
          }

          v15 = v2734;
          v2333 = COERCE_DOUBLE(vqmovun_s16(v267));
          v2334 = COERCE_DOUBLE(vqmovun_s16(v265));
          *v227 = LODWORD(v2333);
          *(v227 + v226) = LODWORD(v2334);
          v2335 = COERCE_DOUBLE(vqmovun_s16(v266));
          v2336 = COERCE_DOUBLE(vqmovun_s16(v264));
          *(v227 + v2706) = LODWORD(v2335);
          *(v227 + v2670) = LODWORD(v2336);
          sub_277290798(&v2779, v225, v119, v215, v2720, v2335, v2336, v2333, v2334, v141, a9);
          v2339.i64[0] = v2779.i64[1];
          v2340.i64[0] = v2779.i64[0];
          v13 = a3;
          if (a3)
          {
            v2337.i64[0] = *v230;
            v2338.i64[0] = v230[4];
            v2340 = vaddq_s16(v2337, v2340);
            v2339 = vaddq_s16(v2338, v2339);
          }

          v12 = v2701;
          v11 = v2745;
          v21 = v2759;
          v22.i64[0] = 0x10001000100010;
          v22.i64[1] = 0x10001000100010;
          v23.i64[0] = 0x20002000200020;
          v23.i64[1] = 0x20002000200020;
          *v229 = vqmovun_s16(v2340).u32[0];
          *(v229 + v2741) = vqmovun_s16(v2339).u32[0];
          break;
        case 8u:
          switch(v29)
          {
            case 4u:
              v342 = v15;
              v343 = v107 >> 2;
              v344 = v17 + v31 + (v107 >> 2);
              v345 = v2723 + v32 + (v108 >> 2);
              if (v344 <= -18)
              {
                v344 = -18;
              }

              if (v345 <= -18)
              {
                v345 = -18;
              }

              if (v344 >= v116 + 1)
              {
                v346 = v116 + 1;
              }

              else
              {
                v346 = v344;
              }

              if (v345 >= v120 + 1)
              {
                v347 = v120 + 1;
              }

              else
              {
                v347 = v345;
              }

              v348 = (v115 + v346 + v347 * v117);
              v349 = (v343 & 0xFFFFFFFE) + v17 + v31;
              v350 = (v108 >> 3) + ((v2723 + v32) >> 1);
              if (v349 <= -16)
              {
                v349 = -16;
              }

              if (v350 <= -8)
              {
                v350 = -8;
              }

              if (v349 >= v118 - 2)
              {
                v349 = v118 - 2;
              }

              if (v350 >= v121)
              {
                v350 = v121 - 1;
              }

              v351 = (v114 + v349 + v350 * v119);
              v352 = v2740;
              v353 = &v2724->i8[v31 + (v2740 * v32)];
              v354 = (a2 + 2 * v31 + 32 * v32);
              v355 = &v2722->i8[v31 + (v32 >> 1) * v2741];
              v356 = (v13 + 2 * v31 + 32 * (v32 >> 1));
              v2751 = v11;
              v2765 = v21;
              switch(v110)
              {
                case 1:
                  sub_27729AC20(&v2770, 0x10u, v348, v117, 4);
                  goto LABEL_1190;
                case 2:
                  sub_27729ACE8(v2770.i8, 0x10u, v348, v117, 4);
                  goto LABEL_1190;
                case 3:
                  sub_27729ADA4(&v2770, 0x10u, v348, v117, 4);
                  goto LABEL_1190;
                case 4:
                  sub_27729C91C(&v2770, 0x10u, v348, v117);
                  sub_27729C91C(&v2770.i64[1], 0x10u, v348->val + 4, v117);
                  goto LABEL_1190;
                case 5:
                  *v2595.i64 = sub_27729CAF0(&v2770, 0x10u, v348, v117, v142, *v143.i64, *v145.i64, *v146.i64, 3.52371676e-294, a9, a10, a11);
                  sub_27729CAF0(&v2770.i64[1], 0x10u, v348->val + 4, v117, v2595, v2596, v2597, v2598, v2599, v2600, v2601, v2602);
                  goto LABEL_1190;
                case 6:
                  *v2611.i64 = sub_27729CDD0(&v2770, 0x10u, v348, v117, v142, v143, v145, v146, xmmword_2773B3DF0, a9, a10, a11);
                  sub_27729CDD0(&v2770.i64[1], 0x10u, v348->val + 4, v117, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618);
                  goto LABEL_1190;
                case 7:
                  v2550 = sub_27729D274(&v2770, 0x10u, v348, v117, *v142.i64, *v143.i64, *v145.i64, *v146.i64, 3.52371676e-294, a9.n128_f64[0], a10, a11);
                  sub_27729D274(&v2770.i64[1], 0x10u, v348->val + 4, v117, v2550, v2551, v2552, v2553, v2554, v2555, v2556, v2557);
                  goto LABEL_1190;
                case 8:
                  sub_27729D550(&v2770, 0x10u, v348, v117);
                  sub_27729D550(&v2770.i64[1], 0x10u, v348->val + 4, v117);
                  goto LABEL_1190;
                case 9:
                  sub_27729D714(&v2770, 0x10u, v348, v117);
                  sub_27729D714(&v2770.i64[1], 0x10u, v348->val + 4, v117);
                  goto LABEL_1190;
                case 10:
                  sub_27729B7DC(&v2770, 16, v348, v117, 4);
                  goto LABEL_1190;
                case 11:
                  sub_27729DE6C(&v2770, 0x10u, v348, v117);
                  sub_27729DE6C(&v2770.i64[1], 0x10u, v348->val + 4, v117);
                  goto LABEL_1190;
                case 12:
                  sub_27729E5C4(&v2770, 0x10u, v348, v117);
                  sub_27729E5C4(&v2770.i64[1], 0x10u, v348->val + 4, v117);
                  goto LABEL_1190;
                case 13:
                  *v2603.i64 = sub_27729E798(&v2770, 0x10u, v348, v117, v142, *v143.i64, *v145.i64, *v146.i64, 3.52371676e-294, a9, a10, a11);
                  sub_27729E798(&v2770.i64[1], 0x10u, v348->val + 4, v117, v2603, v2604, v2605, v2606, v2607, v2608, v2609, v2610);
                  goto LABEL_1190;
                case 14:
                  *v2514.i64 = sub_27729EA7C(&v2770, 0x10u, v348, v117, v142, v143, v145, v146, xmmword_2773B3DF0, a9, a10, a11);
                  sub_27729EA7C(&v2770.i64[1], 0x10u, v348->val + 4, v117, v2514, v2515, v2516, v2517, v2518, v2519, v2520, v2521);
                  goto LABEL_1190;
                case 15:
                  v2539 = sub_27729EF20(&v2770, 0x10u, v348, v117, *v142.i64, *v143.i64, *v145.i64, *v146.i64, 3.52371676e-294, a9.n128_f64[0], a10, a11);
                  sub_27729EF20(&v2770.i64[1], 0x10u, v348->val + 4, v117, v2539, v2540, v2541, v2542, v2543, v2544, v2545, v2546);
LABEL_1190:
                  v352 = v2740;
                  v358 = v2706;
                  v359 = v2670;
                  break;
                default:
                  v357 = 0;
                  v358 = v2706;
                  v359 = v2670;
                  do
                  {
                    v360 = &v2770.i8[v357];
                    v361 = *v348;
                    v348 = (v348 + v117);
                    v362 = v21.i64[0];
                    vst2_s8(v360, v361);
                    v357 += 16;
                  }

                  while (v357 != 64);
                  break;
              }

              v2620 = v2770;
              v2621 = v2771;
              v2622 = v2772;
              v2623 = v2773[0];
              if (a2)
              {
                v2620 = vaddq_s16(*v354, v2770);
                v2621 = vaddq_s16(v354[2], v2771);
                v2622 = vaddq_s16(v354[4], v2772);
                v2623 = vaddq_s16(v354[6], v2773[0]);
              }

              v15 = v342;
              *v353 = vqmovun_s16(v2620);
              *(v353 + v352) = vqmovun_s16(v2621);
              *(v353 + v358) = vqmovun_s16(v2622);
              *(v353 + v359) = vqmovun_s16(v2623);
              sub_2772906A8(&v2779, v351, v119, &v2788);
              v2624 = v2779;
              v2625 = v2780;
              v13 = a3;
              if (a3)
              {
                v2624 = vaddq_s16(*v356, v2779);
                v2625 = vaddq_s16(v356[2], v2780);
              }

              v12 = v2701;
              LODWORD(v17) = v2721;
              v11 = v2751;
              v21 = v2765;
              v22.i64[0] = 0x10001000100010;
              v22.i64[1] = 0x10001000100010;
              v23.i64[0] = 0x20002000200020;
              v23.i64[1] = 0x20002000200020;
              *v355 = vqmovun_s16(v2624);
              *(v355 + v2741) = vqmovun_s16(v2625);
              goto LABEL_308;
            case 8u:
              v2737 = v15;
              v306 = v107 >> 2;
              v307 = v17 + v31 + (v107 >> 2);
              v308 = v2723 + v32 + (v108 >> 2);
              if (v307 <= -18)
              {
                v307 = -18;
              }

              if (v308 <= -18)
              {
                v308 = -18;
              }

              if (v307 >= v116 + 1)
              {
                v309 = v116 + 1;
              }

              else
              {
                v309 = v307;
              }

              if (v308 >= v120 + 1)
              {
                v310 = v120 + 1;
              }

              else
              {
                v310 = v308;
              }

              v311 = (v115 + v309 + v310 * v117);
              v312 = (v306 & 0xFFFFFFFE) + v17 + v31;
              v313 = (v108 >> 3) + ((v2723 + v32) >> 1);
              if (v312 <= -16)
              {
                v314 = -16;
              }

              else
              {
                v314 = (v306 & 0xFFFFFFFE) + v17 + v31;
              }

              if (v313 <= -8)
              {
                v313 = -8;
              }

              v315 = v118 - 2;
              if (v314 >= v118 - 2)
              {
                v314 = v118 - 2;
              }

              v316 = v114 + v314;
              if (v313 >= v121)
              {
                v313 = v121 - 1;
              }

              v317 = v313 * v119;
              v318 = v316 + v317;
              v319 = v2740;
              v320 = v2741;
              v321 = &v2724->i8[v31 + (v2740 * v32)];
              v322 = (a2 + 2 * v31 + 32 * v32);
              v323 = &v2722->i8[v31 + (v32 >> 1) * v2741];
              v2729 = v13 + 2 * v31 + 32 * (v32 >> 1);
              v2750 = v11;
              v2764 = v21;
              switch(v110)
              {
                case 1:
                  v2538 = v117;
                  v2513 = v114;
                  sub_27729AC20(&v2770, 0x10u, v311, v2538, 8);
                  goto LABEL_1166;
                case 2:
                  v2530 = v117;
                  v2513 = v114;
                  sub_27729ACE8(v2770.i8, 0x10u, v311, v2530, 8);
                  goto LABEL_1166;
                case 3:
                  v2536 = v117;
                  v2513 = v114;
                  sub_27729ADA4(&v2770, 0x10u, v311, v2536, 8);
                  goto LABEL_1166;
                case 4:
                  v2525 = v117;
                  v2513 = v114;
                  sub_27729AE6C(&v2770, 0x10u, v311, v2525, 8);
                  goto LABEL_1166;
                case 5:
                  v2532 = v311;
                  v2533 = v117;
                  v2534 = 2;
                  goto LABEL_1161;
                case 6:
                  v2592 = v117;
                  v2513 = v114;
                  sub_27729BFC4(v2770.i8, 0x10u, v311, v2592);
                  goto LABEL_1166;
                case 7:
                  v2532 = v311;
                  v2533 = v117;
                  v2534 = 3;
LABEL_1161:
                  v2559 = 2;
                  goto LABEL_1165;
                case 8:
                  v2594 = v117;
                  v2513 = v114;
                  sub_27729B588(v2770.i8, 0x10u, v311, v2594, 8, v142);
                  goto LABEL_1166;
                case 9:
                  v2528 = v117;
                  v2513 = v114;
                  sub_27729B614(v2770.i8, 0x10u, v311, v2528, 8);
                  goto LABEL_1166;
                case 10:
                  v2593 = v117;
                  v2513 = v114;
                  sub_27729B7DC(&v2770, 16, v311, v2593, 8);
                  goto LABEL_1166;
                case 11:
                  v2524 = v117;
                  v2513 = v114;
                  sub_27729B98C(v2770.i8, 0x10u, v311, v2524, 8);
                  goto LABEL_1166;
                case 12:
                  v2527 = v117;
                  v2513 = v114;
                  sub_27729BB54(&v2770, 0x10u, v311, v2527, 8);
                  goto LABEL_1166;
                case 13:
                  v2532 = v311;
                  v2533 = v117;
                  v2534 = 2;
                  goto LABEL_1164;
                case 14:
                  v2512 = v117;
                  v2513 = v114;
                  sub_27729C39C(v2770.i8, 0x10u, v311, v2512);
                  goto LABEL_1166;
                case 15:
                  v2532 = v311;
                  v2533 = v117;
                  v2534 = 3;
LABEL_1164:
                  v2559 = 3;
LABEL_1165:
                  v2513 = v114;
                  sub_27729C774(v2770.i8, v2532, v2533, 8, v2534, v2559);
LABEL_1166:
                  v114 = v2513;
                  v23.i64[0] = 0x20002000200020;
                  v23.i64[1] = 0x20002000200020;
                  v22.i64[0] = 0x10001000100010;
                  v22.i64[1] = 0x10001000100010;
                  v11 = v2750;
                  v21 = v2764;
                  v319 = v2740;
                  v320 = v2741;
                  v328 = v2694;
                  v13 = a3;
                  v325 = v2706;
                  v326 = v2670;
                  v327 = v2663;
                  break;
                default:
                  v324 = 0;
                  v325 = v2706;
                  v326 = v2670;
                  v327 = v2663;
                  v328 = v2694;
                  do
                  {
                    v329 = &v2770.i8[v324];
                    v330 = *v311;
                    v311 = (v311 + v117);
                    v331 = v21.i64[0];
                    vst2_s8(v329, v330);
                    v324 += 16;
                  }

                  while (v324 != 128);
                  break;
              }

              v2561 = 1;
              v2562 = &v2770;
              do
              {
                v2563 = v2561;
                v2564 = *v2562;
                v2565 = v2562[1];
                v2566 = v2562[2];
                v2567 = v2562[3];
                if (a2)
                {
                  v2568 = *v322;
                  v2569 = v322[2];
                  v2570 = v322[4];
                  v2571 = v322[6];
                  v322 += 8;
                  v2564 = vaddq_s16(v2568, v2564);
                  v2565 = vaddq_s16(v2569, v2565);
                  v2566 = vaddq_s16(v2570, v2566);
                  v2567 = vaddq_s16(v2571, v2567);
                }

                v2561 = 0;
                *v321 = vqmovun_s16(v2564);
                *(v321 + v319) = vqmovun_s16(v2565);
                *(v321 + v325) = vqmovun_s16(v2566);
                *(v321 + v326) = vqmovun_s16(v2567);
                v321 = (v321 + v327);
                v2562 += 4;
              }

              while ((v2563 & 1) != 0);
              v2572 = 0;
              _X9 = v318 + v119;
              __asm { PRFM            #0, [X9] }

              v2565.i64[0] = *v318;
              v2575 = vqtbl1q_s8(v2565, xmmword_2773B3E00);
              v2575.i16[3] = *(v318 + 8);
              a10 = vzip1q_s8(v2575, v21);
              v2576 = vzip1q_s8(v2565, v21);
              v2577 = v2788;
              v2578 = v2789;
              v2579 = v2790;
              a9 = v2791;
              v2580 = v312;
              if (v312 <= -16)
              {
                v2580 = -16;
              }

              v2581 = v315;
              if (v2580 < v315)
              {
                v2581 = v2580;
              }

              v2582 = v114 + v119 + v2581;
              v2583 = v114 + v2581 + 2 * v119;
              do
              {
                _X12 = v2583 + v317;
                __asm { PRFM            #0, [X12] }

                v2586 = vmlaq_s16(vmulq_s16(v2578, a10), v2577, v2576);
                a10.n128_u64[0] = *(v2582 + v317);
                v2576 = vzip1q_s8(a10, v21);
                v2587 = vqtbl1q_s8(a10, xmmword_2773B3E00);
                v2587.i16[3] = *(v2582 + v317 + 8);
                a10 = vzip1q_s8(v2587, v21);
                a11 = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v2586, v2579, v2576), a9, a10), v23), 6uLL);
                *(&v2779 + v2572) = a11;
                v2572 += 16;
                v2582 += v119;
                v2583 += v119;
              }

              while (v2572 != 64);
              v2588 = v2779;
              v2589 = v2780;
              v2590 = v2781;
              v2591 = v2782[0];
              v15 = v2737;
              LODWORD(v17) = v2721;
              if (v13)
              {
                a9 = *(v2729 + 32);
                a10 = *(v2729 + 64);
                a11 = *(v2729 + 96);
                v2588 = vaddq_s16(*v2729, v2779);
                v2589 = vaddq_s16(a9, v2780);
                v2590 = vaddq_s16(a10, v2781);
                v2591 = vaddq_s16(a11, v2782[0]);
              }

              v12 = v2701;
              *v323 = vqmovun_s16(v2588);
              *(v323 + v320) = vqmovun_s16(v2589);
              *(v323 + v328) = vqmovun_s16(v2590);
              *(v323 + v2664) = vqmovun_s16(v2591);
              goto LABEL_308;
            case 0x10u:
              v2733 = v15;
              v187 = v107 >> 2;
              v188 = v17 + v31 + (v107 >> 2);
              v189 = v2723 + (v108 >> 2);
              if (v188 <= -18)
              {
                v188 = -18;
              }

              if (v189 <= -18)
              {
                v189 = -18;
              }

              if (v188 >= v116 + 1)
              {
                v190 = v116 + 1;
              }

              else
              {
                v190 = v188;
              }

              if (v189 >= v120 + 1)
              {
                v191 = v120 + 1;
              }

              else
              {
                v191 = v189;
              }

              v192 = (v115 + v190 + v191 * v117);
              v186 = v17 + v31;
              v193 = (v187 & 0xFFFFFFFE) + v17 + v31;
              v194 = v2669 + (v108 >> 3);
              if (v193 <= -16)
              {
                v195 = -16;
              }

              else
              {
                v195 = (v187 & 0xFFFFFFFE) + v17 + v31;
              }

              if (v194 <= -8)
              {
                v194 = -8;
              }

              v196 = v118 - 2;
              if (v195 >= v118 - 2)
              {
                v195 = v118 - 2;
              }

              if (v194 >= v121)
              {
                v194 = v121 - 1;
              }

              v197 = v194 * v119;
              v198 = v114 + v195 + v197;
              v199 = v197;
              v200 = &v2724->i8[v31];
              v201 = (a2 + 2 * v31);
              v202 = &v2722->i8[v31];
              v203 = v13 + 2 * v31;
              v2744 = v11;
              v2758 = v21;
              v2727 = (v187 & 0xFFFFFFFE) + v186;
              switch(v110)
              {
                case 1:
                  v2560 = v117;
                  v2523 = v114;
                  sub_27729AC20(&v2770, 0x10u, v192, v2560, 16);
                  goto LABEL_1199;
                case 2:
                  v2537 = v117;
                  v2523 = v114;
                  sub_27729ACE8(v2770.i8, 0x10u, v192, v2537, 16);
                  goto LABEL_1199;
                case 3:
                  v2558 = v117;
                  v2523 = v114;
                  sub_27729ADA4(&v2770, 0x10u, v192, v2558, 16);
                  goto LABEL_1199;
                case 4:
                  v2529 = v117;
                  v2523 = v114;
                  sub_27729AE6C(&v2770, 0x10u, v192, v2529, 16);
                  goto LABEL_1199;
                case 5:
                  v2547 = v192;
                  v2548 = v117;
                  v2549 = 2;
                  goto LABEL_1187;
                case 6:
                  v2659 = v117;
                  v2523 = v114;
                  sub_27729B1B0(v2770.i8, 0x10u, v192, v2659);
                  goto LABEL_1199;
                case 7:
                  v2547 = v192;
                  v2548 = v117;
                  v2549 = 3;
LABEL_1187:
                  v2619 = 2;
                  goto LABEL_1198;
                case 8:
                  v2661 = v117;
                  v2523 = v114;
                  sub_27729B588(v2770.i8, 0x10u, v192, v2661, 16, v142);
                  goto LABEL_1199;
                case 9:
                  v2535 = v117;
                  v2523 = v114;
                  sub_27729B614(v2770.i8, 0x10u, v192, v2535, 16);
                  goto LABEL_1199;
                case 10:
                  v2660 = v117;
                  v2523 = v114;
                  sub_27729B7DC(&v2770, 16, v192, v2660, 16);
                  goto LABEL_1199;
                case 11:
                  v2526 = v117;
                  v2523 = v114;
                  sub_27729B98C(v2770.i8, 0x10u, v192, v2526, 16);
                  goto LABEL_1199;
                case 12:
                  v2531 = v117;
                  v2523 = v114;
                  sub_27729BB54(&v2770, 0x10u, v192, v2531, 16);
                  goto LABEL_1199;
                case 13:
                  v2547 = v192;
                  v2548 = v117;
                  v2549 = 2;
                  goto LABEL_1197;
                case 14:
                  v2522 = v117;
                  v2523 = v114;
                  sub_27729BBEC(v2770.i8, 0x10u, v192, v2522);
                  goto LABEL_1199;
                case 15:
                  v2547 = v192;
                  v2548 = v117;
                  v2549 = 3;
LABEL_1197:
                  v2619 = 3;
LABEL_1198:
                  v2523 = v114;
                  sub_27729C774(v2770.i8, v2547, v2548, 16, v2549, v2619);
LABEL_1199:
                  v193 = v2727;
                  v114 = v2523;
                  v23.i64[0] = 0x20002000200020;
                  v23.i64[1] = 0x20002000200020;
                  v22.i64[0] = 0x10001000100010;
                  v22.i64[1] = 0x10001000100010;
                  v11 = v2744;
                  v21 = v2758;
                  v210 = v2694;
                  v13 = a3;
                  v205 = v2740;
                  v206 = v2741;
                  v207 = v2706;
                  v208 = v2670;
                  v209 = v2663;
                  v211 = v2662;
                  break;
                default:
                  v204 = 0;
                  v205 = v2740;
                  v206 = v2741;
                  v207 = v2706;
                  v208 = v2670;
                  v209 = v2663;
                  v210 = v2694;
                  v211 = v2662;
                  do
                  {
                    v212 = &v2770.i8[v204];
                    v213 = *v192;
                    v192 = (v192 + v117);
                    v214 = v21.i64[0];
                    vst2_s8(v212, v213);
                    v204 += 16;
                  }

                  while (v204 != 256);
                  break;
              }

              v2626 = 0;
              do
              {
                v2627 = *(&v2770 + v2626);
                v2628 = *(&v2770 + v2626 + 16);
                v2630 = *(&v2772 + v2626);
                v2629 = v2773[v2626 / 0x10];
                if (a2)
                {
                  v2631 = *v201;
                  v2632 = v201[2];
                  v2633 = v201[4];
                  v2634 = v201[6];
                  v201 += 8;
                  v2627 = vaddq_s16(v2631, v2627);
                  v2628 = vaddq_s16(v2632, v2628);
                  v2630 = vaddq_s16(v2633, v2630);
                  v2629 = vaddq_s16(v2634, v2629);
                }

                *v200 = vqmovun_s16(v2627);
                *(v200 + v205) = vqmovun_s16(v2628);
                *(v200 + v207) = vqmovun_s16(v2630);
                *(v200 + v208) = vqmovun_s16(v2629);
                v200 = (v200 + v209);
                v2626 += 64;
              }

              while (v2626 != 256);
              v2635 = 0;
              _X9 = v198 + v119;
              __asm { PRFM            #0, [X9] }

              v2627.i64[0] = *v198;
              v2638 = vqtbl1q_s8(v2627, xmmword_2773B3E00);
              v2638.i16[3] = *(v198 + 8);
              a10 = vzip1q_s8(v2638, v21);
              v2639 = vzip1q_s8(v2627, v21);
              v2640 = v2788;
              v2641 = v2789;
              v2642 = v2790;
              a9 = v2791;
              v2643 = v193;
              if (v193 <= -16)
              {
                v2643 = -16;
              }

              v2644 = v196;
              if (v2643 < v196)
              {
                v2644 = v2643;
              }

              v2645 = v114 + v119 + v2644;
              v2646 = v114 + v2644 + 2 * v119;
              do
              {
                _X12 = v2646 + v199;
                __asm { PRFM            #0, [X12] }

                v2649 = vmlaq_s16(vmulq_s16(v2641, a10), v2640, v2639);
                a10.n128_u64[0] = *(v2645 + v199);
                v2639 = vzip1q_s8(a10, v21);
                v2650 = vqtbl1q_s8(a10, xmmword_2773B3E00);
                v2650.i16[3] = *(v2645 + v199 + 8);
                a10 = vzip1q_s8(v2650, v21);
                a11 = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v2649, v2642, v2639), a9, a10), v23), 6uLL);
                *(&v2779 + v2635) = a11;
                v2635 += 16;
                v2645 += v119;
                v2646 += v119;
              }

              while (v2635 != 128);
              v2651 = 1;
              v2652 = &v2779;
              v15 = v2733;
              LODWORD(v17) = v2721;
              do
              {
                v2653 = v2651;
                v2654 = *v2652;
                v2655 = v2652[1];
                v2656 = v2652[2];
                v2657 = v2652[3];
                if (v13)
                {
                  v2658 = *v203;
                  a9 = *(v203 + 32);
                  a10 = *(v203 + 64);
                  a11 = *(v203 + 96);
                  v203 += 128;
                  v2654 = vaddq_s16(v2658, v2654);
                  v2655 = vaddq_s16(a9, v2655);
                  v2656 = vaddq_s16(a10, v2656);
                  v2657 = vaddq_s16(a11, v2657);
                }

                v2651 = 0;
                *v202 = vqmovun_s16(v2654);
                *(v202 + v206) = vqmovun_s16(v2655);
                *(v202 + v210) = vqmovun_s16(v2656);
                *(v202 + v2664) = vqmovun_s16(v2657);
                v202 = (v202 + v211);
                v2652 += 4;
              }

              while ((v2653 & 1) != 0);
              v12 = v2701;
              goto LABEL_308;
          }

          break;
        case 0x10u:
          v2719 = v108 & 7;
          v148 = v107 >> 2;
          v149 = v17 + (v107 >> 2);
          if (v29 == 16)
          {
            v150 = v2723 + (v108 >> 2);
            if (v149 <= -18)
            {
              v149 = -18;
            }

            if (v150 <= -18)
            {
              v150 = -18;
            }

            if (v149 >= v116 + 1)
            {
              v151 = v116 + 1;
            }

            else
            {
              v151 = v149;
            }

            if (v150 >= v120 + 1)
            {
              v152 = v120 + 1;
            }

            else
            {
              v152 = v150;
            }

            v153 = v152 * v117;
            v154 = (v115 + v153 + v151);
            v155 = (v148 & 0xFFFFFFFE) + v17;
            v156 = v2669 + (v108 >> 3);
            if (v155 <= -16)
            {
              v155 = -16;
            }

            if (v156 <= -8)
            {
              v156 = -8;
            }

            if (v155 >= v118 - 2)
            {
              v155 = v118 - 2;
            }

            if (v156 >= v121)
            {
              v156 = v121 - 1;
            }

            v157 = v155;
            v158 = v156 * v119;
            _X19 = (v114 + v155 + v158);
            switch(v108 & 3 | (4 * (v107 & 3)))
            {
              case 1:
                v1996 = 0;
                v1997 = (v154 - 2 * v117);
                v1998 = (v1997 + v117 + v117);
                v1999 = vzip1q_s8(*(v1998 + v117 + v117), v21);
                v2000 = vzip1q_s8(*(v1998 + v117), v21);
                v2001 = vzip1q_s8(*v1998, v21);
                v2002 = vzip1q_s8(*(v1997 + v117), v21);
                v2003 = vzip1q_s8(*v1997, v21);
                v2004 = (v115 + 5 * v117 + v151 + v153 - 2 * v117);
                do
                {
                  v2005 = v2002;
                  v2002 = v2001;
                  v2001 = v2000;
                  v2000 = v1999;
                  v1999 = vzip1q_s8(*v2004, v21);
                  v2006 = vsubq_s16(vshlq_n_s16(vaddq_s16(v2002, v2001), 2uLL), vaddq_s16(v2005, v2000));
                  *(&v2770 + v1996) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v2003, v2006), vshlq_n_s16(v2006, 2uLL)), vaddq_s16(v1999, v22)), 5uLL))), v2002);
                  v1996 += 32;
                  v2004 = (v2004 + v117);
                  v2003 = v2005;
                }

                while (v1996 != 512);
                v2007 = 0;
                v2008 = v154 - 2 * v117;
                v2009 = *(v2008 + 8);
                v2010 = &v2008[v117 + 8];
                v2011 = (v2010 + v117 + v117);
                v2012 = vzip1q_s8(*(v2011 + v117), v21);
                v2013 = vzip1q_s8(*v2011, v21);
                v2014 = vzip1q_s8(*(v2010 + v117), v21);
                v2015 = vzip1q_s8(*v2010, v21);
                v141 = vzip1q_s8(v2009, v21);
                v2016 = (v115 + 5 * v117 + v151 + v153 - 2 * v117 + 8);
                v161 = v2740;
                v162 = v2741;
                v163 = v2706;
                v164 = v2694;
                v165 = v108 & 7 | (16 * (v107 & 7));
                do
                {
                  a9 = v2015;
                  v2015 = v2014;
                  v2014 = v2013;
                  v2013 = v2012;
                  v2012 = vzip1q_s8(*v2016, v21);
                  v2017 = vsubq_s16(vshlq_n_s16(vaddq_s16(v2015, v2014), 2uLL), vaddq_s16(a9, v2013));
                  a11 = vshlq_n_s16(v2017, 2uLL);
                  v2018 = vaddq_s16(vaddq_s16(v141, v2017), a11);
                  a10 = vaddq_s16(v2012, v22);
                  *(&v2771 + v2007) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(v2018, a10), 5uLL))), v2015);
                  v2007 += 32;
                  v2016 = (v2016 + v117);
                  v141 = a9;
                }

                while (v2007 != 512);
                break;
              case 2:
                v1697 = 0;
                v1698 = (v154 - 2 * v117);
                v1699 = (v1698 + v117 + v117);
                v1700 = vzip1q_s8(*(v1699 + v117 + v117), v21);
                v1701 = vzip1q_s8(*(v1699 + v117), v21);
                v1702 = vzip1q_s8(*v1699, v21);
                v1703 = vzip1q_s8(*(v1698 + v117), v21);
                v1704 = vzip1q_s8(*v1698, v21);
                v1705 = (v115 + 5 * v117 + v151 + v153 - 2 * v117);
                do
                {
                  v1706 = v1703;
                  v1703 = v1702;
                  v1702 = v1701;
                  v1701 = v1700;
                  v1707 = &v2770.i8[v1697];
                  v1700 = vzip1q_s8(*v1705, v21);
                  v1708 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1703, v1702), 2uLL), vaddq_s16(v1706, v1701));
                  v1708.val[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1704, v1708), vshlq_n_s16(v1708, 2uLL)), vaddq_s16(v1700, v22)), 5uLL));
                  v1709 = v21.i64[0];
                  vst2_s8(v1707, v1708);
                  v1697 += 32;
                  v1705 = (v1705 + v117);
                  v1704 = v1706;
                }

                while (v1697 != 512);
                v1710 = 0;
                v1711 = v154 - 2 * v117;
                v1712 = *(v1711 + 8);
                v1713 = &v1711[v117 + 8];
                v1714 = (v1713 + v117 + v117);
                v1715 = vzip1q_s8(*(v1714 + v117), v21);
                v1716 = vzip1q_s8(*v1714, v21);
                v1717 = vzip1q_s8(*(v1713 + v117), v21);
                v1718 = vzip1q_s8(*v1713, v21);
                v141 = vzip1q_s8(v1712, v21);
                v1719 = (v115 + 5 * v117 + v151 + v153 - 2 * v117 + 8);
                v161 = v2740;
                v162 = v2741;
                v163 = v2706;
                v164 = v2694;
                v165 = v108 & 7 | (16 * (v107 & 7));
                do
                {
                  a9 = v1718;
                  v1718 = v1717;
                  v1717 = v1716;
                  v1716 = v1715;
                  v1720 = &v2771.i8[v1710];
                  v1715 = vzip1q_s8(*v1719, v21);
                  v1721 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1718, v1717), 2uLL), vaddq_s16(a9, v1716));
                  a11 = vshlq_n_s16(v1721, 2uLL);
                  v1722 = vaddq_s16(vaddq_s16(v141, v1721), a11);
                  a10 = vaddq_s16(v1715, v22);
                  a10.n128_u64[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(v1722, a10), 5uLL));
                  a11.n128_u64[0] = v21.i64[0];
                  vst2_s8(v1720, a10);
                  v1710 += 32;
                  v1719 = (v1719 + v117);
                  v141 = a9;
                }

                while (v1710 != 512);
                break;
              case 3:
                v1934 = 0;
                v1935 = (v154 - 2 * v117);
                v1936 = (v1935 + v117 + v117);
                v1937 = vzip1q_s8(*(v1936 + v117 + v117), v21);
                v1938 = vzip1q_s8(*(v1936 + v117), v21);
                v1939 = vzip1q_s8(*v1936, v21);
                v1940 = vzip1q_s8(*(v1935 + v117), v21);
                v1941 = vzip1q_s8(*v1935, v21);
                v1942 = (v115 + 5 * v117 + v151 + v153 - 2 * v117);
                do
                {
                  v1943 = v1940;
                  v1940 = v1939;
                  v1939 = v1938;
                  v1938 = v1937;
                  v1937 = vzip1q_s8(*v1942, v21);
                  v1944 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1940, v1939), 2uLL), vaddq_s16(v1943, v1938));
                  *(&v2770 + v1934) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1941, v1944), vshlq_n_s16(v1944, 2uLL)), vaddq_s16(v1937, v22)), 5uLL))), v1939);
                  v1934 += 32;
                  v1942 = (v1942 + v117);
                  v1941 = v1943;
                }

                while (v1934 != 512);
                v1945 = 0;
                v1946 = v154 - 2 * v117;
                v1947 = *(v1946 + 8);
                v1948 = &v1946[v117 + 8];
                v1949 = (v1948 + v117 + v117);
                v1950 = vzip1q_s8(*(v1949 + v117), v21);
                v1951 = vzip1q_s8(*v1949, v21);
                v1952 = vzip1q_s8(*(v1948 + v117), v21);
                v1953 = vzip1q_s8(*v1948, v21);
                v141 = vzip1q_s8(v1947, v21);
                v1954 = (v115 + 5 * v117 + v151 + v153 - 2 * v117 + 8);
                v161 = v2740;
                v162 = v2741;
                v163 = v2706;
                v164 = v2694;
                v165 = v108 & 7 | (16 * (v107 & 7));
                do
                {
                  a9 = v1953;
                  v1953 = v1952;
                  v1952 = v1951;
                  v1951 = v1950;
                  v1950 = vzip1q_s8(*v1954, v21);
                  v1955 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1953, v1952), 2uLL), vaddq_s16(a9, v1951));
                  a11 = vshlq_n_s16(v1955, 2uLL);
                  v1956 = vaddq_s16(vaddq_s16(v141, v1955), a11);
                  a10 = vaddq_s16(v1950, v22);
                  *(&v2771 + v1945) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(v1956, a10), 5uLL))), v1952);
                  v1945 += 32;
                  v1954 = (v1954 + v117);
                  v141 = a9;
                }

                while (v1945 != 512);
                break;
              case 4:
                v1582 = 0;
                v1583 = (v154 - 2);
                do
                {
                  v1584 = *v1583;
                  v1583 = (v1583 + v117);
                  v1585 = vzip1q_s8(vextq_s8(v1584, v1584, 2uLL), v21);
                  v1586 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1585, vzip1q_s8(vextq_s8(v1584, v1584, 3uLL), v21)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1584, v1584, 1uLL), v21), vzip1q_s8(vextq_s8(v1584, v1584, 4uLL), v21)));
                  *(&v2770 + v1582) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1586, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1584, v21), vzip1q_s8(vextq_s8(v1584, v1584, 5uLL), v21)), v1586)), v22), 5uLL))), v1585);
                  v1582 += 32;
                }

                while (v1582 != 512);
                v1587 = 0;
                v1588 = (v154 + 6);
                v161 = v2740;
                v162 = v2741;
                v163 = v2706;
                v164 = v2694;
                v165 = v108 & 7 | (16 * (v107 & 7));
                do
                {
                  v1589 = *v1588;
                  v1588 = (v1588 + v117);
                  v1590 = vzip1q_s8(vextq_s8(v1589, v1589, 2uLL), v21);
                  v1591 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1590, vzip1q_s8(vextq_s8(v1589, v1589, 3uLL), v21)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1589, v1589, 1uLL), v21), vzip1q_s8(vextq_s8(v1589, v1589, 4uLL), v21)));
                  v141 = vzip1q_s8(v1589, v21);
                  *(&v2771 + v1587) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1591, 2uLL), vaddq_s16(vaddq_s16(v141, vzip1q_s8(vextq_s8(v1589, v1589, 5uLL), v21)), v1591)), v22), 5uLL))), v1590);
                  v1587 += 32;
                }

                while (v1587 != 512);
                break;
              case 5:
                v1794 = v115 + v153 + v151;
                v1795 = v155;
                v1796 = v117;
                v1797 = 2;
                goto LABEL_1032;
              case 6:
                v2739 = v155;
                v2754 = v11;
                v2768 = v21;
                v2712 = v138;
                v1545 = v114;
                v2714 = v147;
                sub_27729B1B0(v2770.i8, 0x20u, v115 + v153 + v151, v117);
                sub_27729B1B0(v2771.i8, 0x20u, v154 + 8, v117);
                goto LABEL_1062;
              case 7:
                v1794 = v115 + v153 + v151;
                v1795 = v155;
                v1796 = v117;
                v1797 = 3;
LABEL_1032:
                v2305 = 2;
                goto LABEL_1055;
              case 8:
                v2492 = 0;
                v2493 = (v154 - 2);
                do
                {
                  v2494 = &v2770.i8[v2492];
                  v2495 = *v2493;
                  v2493 = (v2493 + v117);
                  v2496 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v2495, v2495, 2uLL), v21), vzip1q_s8(vextq_s8(v2495, v2495, 3uLL), v21)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v2495, v2495, 1uLL), v21), vzip1q_s8(vextq_s8(v2495, v2495, 4uLL), v21)));
                  *v2495.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v2496, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v2495, v21), vzip1q_s8(vextq_s8(v2495, v2495, 5uLL), v21)), v2496)), v22), 5uLL));
                  v2496.i64[0] = v21.i64[0];
                  vst2_s8(v2494, v2495);
                  v2492 += 32;
                }

                while (v2492 != 512);
                v2497 = 0;
                v2498 = (v154 + 6);
                v161 = v2740;
                v162 = v2741;
                v163 = v2706;
                v164 = v2694;
                v165 = v108 & 7 | (16 * (v107 & 7));
                do
                {
                  v2499 = &v2771.i8[v2497];
                  v2500 = *v2498;
                  v2498 = (v2498 + v117);
                  v2501 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v2500, v2500, 2uLL), v21), vzip1q_s8(vextq_s8(v2500, v2500, 3uLL), v21)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v2500, v2500, 1uLL), v21), vzip1q_s8(vextq_s8(v2500, v2500, 4uLL), v21)));
                  *v2500.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v2501, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v2500, v21), vzip1q_s8(vextq_s8(v2500, v2500, 5uLL), v21)), v2501)), v22), 5uLL));
                  v2501.i64[0] = v21.i64[0];
                  vst2_s8(v2499, v2500);
                  v2497 += 32;
                }

                while (v2497 != 512);
                break;
              case 9:
                v2739 = v155;
                v2754 = v11;
                v2768 = v21;
                v2712 = v138;
                v1545 = v114;
                v2714 = v147;
                sub_27729B614(v2770.i8, 0x20u, v115 + v153 + v151, v117, 16);
                sub_27729B614(v2771.i8, 0x20u, v154 + 8, v117, 16);
                goto LABEL_1062;
              case 0xA:
                v2739 = v155;
                v2754 = v11;
                v2768 = v21;
                v2712 = v138;
                v1545 = v114;
                v2714 = v147;
                sub_27729B7DC(&v2770, 32, v115 + v153 + v151, v117, 16);
                sub_27729B7DC(&v2771, 32, v154 + 8, v117, 16);
                goto LABEL_1062;
              case 0xB:
                v2739 = v155;
                v2754 = v11;
                v2768 = v21;
                v2712 = v138;
                v1545 = v114;
                v2714 = v147;
                sub_27729B98C(v2770.i8, 0x20u, v115 + v153 + v151, v117, 16);
                sub_27729B98C(v2771.i8, 0x20u, v154 + 8, v117, 16);
                goto LABEL_1062;
              case 0xC:
                v1620 = 0;
                v1621 = (v154 - 2);
                do
                {
                  v1622 = *v1621;
                  v1621 = (v1621 + v117);
                  v1623 = vzip1q_s8(vextq_s8(v1622, v1622, 3uLL), v21);
                  v1624 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1622, v1622, 2uLL), v21), v1623), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1622, v1622, 1uLL), v21), vzip1q_s8(vextq_s8(v1622, v1622, 4uLL), v21)));
                  *(&v2770 + v1620) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1624, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1622, v21), vzip1q_s8(vextq_s8(v1622, v1622, 5uLL), v21)), v1624)), v22), 5uLL))), v1623);
                  v1620 += 32;
                }

                while (v1620 != 512);
                v1625 = 0;
                v1626 = (v154 + 6);
                v161 = v2740;
                v162 = v2741;
                v163 = v2706;
                v164 = v2694;
                v165 = v108 & 7 | (16 * (v107 & 7));
                do
                {
                  v1627 = *v1626;
                  v1626 = (v1626 + v117);
                  v1628 = vzip1q_s8(vextq_s8(v1627, v1627, 3uLL), v21);
                  v1629 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1627, v1627, 2uLL), v21), v1628), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1627, v1627, 1uLL), v21), vzip1q_s8(vextq_s8(v1627, v1627, 4uLL), v21)));
                  v141 = vzip1q_s8(v1627, v21);
                  *(&v2771 + v1625) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1629, 2uLL), vaddq_s16(vaddq_s16(v141, vzip1q_s8(vextq_s8(v1627, v1627, 5uLL), v21)), v1629)), v22), 5uLL))), v1628);
                  v1625 += 32;
                }

                while (v1625 != 512);
                break;
              case 0xD:
                v1794 = v115 + v153 + v151;
                v1795 = v155;
                v1796 = v117;
                v1797 = 2;
                goto LABEL_1054;
              case 0xE:
                v2739 = v155;
                v2754 = v11;
                v2768 = v21;
                v2712 = v138;
                v1545 = v114;
                v2714 = v147;
                sub_27729BBEC(v2770.i8, 0x20u, v115 + v153 + v151, v117);
                sub_27729BBEC(v2771.i8, 0x20u, v154 + 8, v117);
LABEL_1062:
                v157 = v2739;
                v147 = v2714;
                v114 = v1545;
                v138 = v2712;
                goto LABEL_1063;
              case 0xF:
                v1794 = v115 + v153 + v151;
                v1795 = v155;
                v1796 = v117;
                v1797 = 3;
LABEL_1054:
                v2305 = 3;
LABEL_1055:
                v2754 = v11;
                v2768 = v21;
                v2341 = v114;
                v2716 = v147;
                sub_27729AF04(v2770.i8, v1794, v1796, 16, v1797, v2305);
                v157 = v1795;
                v147 = v2716;
                v114 = v2341;
LABEL_1063:
                v23.i64[0] = 0x20002000200020;
                v23.i64[1] = 0x20002000200020;
                v22.i64[0] = 0x10001000100010;
                v22.i64[1] = 0x10001000100010;
                v11 = v2754;
                v21 = v2768;
                v164 = v2694;
                v13 = a3;
                v161 = v2740;
                v162 = v2741;
                v163 = v2706;
                v165 = v2726;
                break;
              default:
                v160 = 0;
                v161 = v2740;
                v162 = v2741;
                v163 = v2706;
                v164 = v2694;
                v165 = v108 & 7 | (16 * (v107 & 7));
                do
                {
                  v166 = &v2770.i8[v160];
                  v167 = *v154;
                  v154 = (v154 + v117);
                  v168 = v21.i64[0];
                  vst2_s8(v166, v167);
                  v166 += 16;
                  *v166 = vzip2q_s8(v167, v21);
                  v160 += 32;
                }

                while (v160 != 512);
                break;
            }

            v2343 = 0;
            v2344 = v2724;
            v2345 = a2;
            do
            {
              v2347 = *(&v2770 + v2343);
              v2346 = *(&v2770 + v2343 + 16);
              v2349 = *(&v2772 + v2343);
              v2348 = v2773[v2343 / 0x10];
              if (a2)
              {
                v141 = *v2345;
                a9 = *(v2345 + 16);
                a10 = *(v2345 + 32);
                a11 = *(v2345 + 48);
                v2345 += 64;
                v2347 = vaddq_s16(v141, v2347);
                v2346 = vaddq_s16(a9, v2346);
                v2349 = vaddq_s16(a10, v2349);
                v2348 = vaddq_s16(a11, v2348);
              }

              *v2344 = vqmovun_high_s16(vqmovun_s16(v2347), v2346);
              *(v2344 + v161) = vqmovun_high_s16(vqmovun_s16(v2349), v2348);
              v2344 = (v2344 + v163);
              v2343 += 64;
            }

            while (v2343 != 512);
            if (v165 == 64)
            {
              __asm { PRFM            #0, [X19] }

              v2373 = 9;
              v2352 = v2778;
              do
              {
                v2374 = _X19;
                _X19 = (_X19 + v119);
                __asm { PRFM            #0, [X19] }

                v2376 = vextq_s8(*v2374, *v2374, 2uLL);
                v2376.i16[7] = v2374[1].i16[0];
                v2377 = vrhaddq_u8(*v2374, v2376);
                v2376.i64[0] = v21.i64[0];
                v2352[3] = vzip2q_s8(v2377, v21);
                v2352 += 2;
                vst2_s8(v2352->i8, *(&v2376 - 8));
                --v2373;
              }

              while (v2373 > 2);
              v2378 = vextq_s8(*_X19, *_X19, 2uLL);
              v2378.i16[7] = _X19[1].i16[0];
              v2371 = vrhaddq_u8(*_X19, v2378);
            }

            else
            {
              if (v165 != 4)
              {
                if (v165)
                {
                  v2381 = 0;
                  v2382 = v138 - (8 * v111 + 8 * v2719) + 64;
                  v2383 = v21;
                  v2383.i32[0] = v2382 | (v2382 << 16);
                  v2384 = v21;
                  v2384.i32[0] = (8 * v111 - v138) | ((8 * v111 - v138) << 16);
                  v2385 = vqtbl1q_s8(v2383, xmmword_2773B3DF0);
                  v2386 = vqtbl1q_s8(v2384, xmmword_2773B3DF0);
                  v2387 = v21;
                  v2387.i32[0] = (8 * v2719 - v138) | ((8 * v2719 - v138) << 16);
                  v2388 = vqtbl1q_s8(v2387, xmmword_2773B3DF0);
                  v2788 = v2385;
                  v2789 = v2386;
                  v2790 = v2388;
                  v2791 = v147;
                  _X9 = &_X19->i8[v119];
                  __asm { PRFM            #0, [X9] }

                  v141.i64[0] = _X19->i64[0];
                  v2391 = vqtbl1q_s8(v141, xmmword_2773B3E00);
                  v2391.i16[3] = _X19->i16[4];
                  v2392 = vzip1q_s8(v2391, v21);
                  v2393 = vzip1q_s8(v141, v21);
                  v2394 = (v114 + v158 + v157 + v119 + 8);
                  _X12 = v114 + v158 + v157 + 2 * v119;
                  do
                  {
                    __asm { PRFM            #0, [X12] }

                    v2397 = vmlaq_s16(vmulq_s16(v2386, v2392), v2385, v2393);
                    v2392.i64[0] = *(v2394 - 1);
                    v2393 = vzip1q_s8(v2392, v21);
                    v2398 = vqtbl1q_s8(v2392, xmmword_2773B3E00);
                    v2398.i16[3] = *v2394;
                    v2394 = (v2394 + v119);
                    v2392 = vzip1q_s8(v2398, v21);
                    *(&v2779 + v2381) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v2397, v2388, v2393), v147, v2392), v23), 6uLL);
                    v2381 += 32;
                    _X12 += v119;
                  }

                  while (v2381 != 256);
                  v2399 = 0;
                  _X9 = &_X19->i8[v119 + 8];
                  __asm { PRFM            #0, [X9] }

                  v2393.i64[0] = _X19->i64[1];
                  v2402 = vqtbl1q_s8(v2393, xmmword_2773B3E00);
                  v2402.i16[3] = _X19[1].i16[0];
                  a9 = vzip1q_s8(v2402, v21);
                  v2403 = vzip1q_s8(v2393, v21);
                  v2404 = v114 + v157 + v119;
                  v2405 = v114 + v157 + 2 * v119 + 8;
                  do
                  {
                    _X12 = v2405 + v158;
                    __asm { PRFM            #0, [X12] }

                    v2408 = vmlaq_s16(vmulq_s16(v2386, a9), v2385, v2403);
                    a9.n128_u64[0] = *(v2404 + v158 + 8);
                    v2403 = vzip1q_s8(a9, v21);
                    v2409 = vqtbl1q_s8(a9, xmmword_2773B3E00);
                    v2409.i16[3] = *(v2404 + v158 + 16);
                    a9 = vzip1q_s8(v2409, v21);
                    a10 = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v2408, v2388, v2403), v147, a9), v23), 6uLL);
                    *(&v2780 + v2399) = a10;
                    v2399 += 32;
                    v2404 += v119;
                    v2405 += v119;
                  }

                  while (v2399 != 256);
                }

                else
                {
                  __asm { PRFM            #0, [X19] }

                  v2351 = 9;
                  v2352 = v2778;
                  do
                  {
                    v2353 = _X19;
                    _X19 = (_X19 + v119);
                    __asm { PRFM            #0, [X19] }

                    v2355 = *v2353;
                    v2352[3] = vzip2q_s8(*v2353, v21);
                    v2352 += 2;
                    v2356 = v21.i64[0];
                    vst2_s8(v2352->i8, v2355);
                    --v2351;
                  }

                  while (v2351 > 2);
                  v2357 = *_X19;
                  v2358 = vzip2q_s8(*_X19, v21);
                  i8 = v2352[2].i8;
                  v2360 = v21.i64[0];
                  vst2_s8(i8, v2357);
LABEL_1081:
                  v2352[3] = v2358;
                }

                v2410 = 0;
                LODWORD(v17) = v2721;
                v2411 = v2722;
                v2412 = v13;
                do
                {
                  v2414 = *(&v2779 + v2410);
                  v2413 = *(&v2779 + v2410 + 16);
                  v2416 = *(&v2781 + v2410);
                  v2415 = v2782[v2410 / 0x10];
                  if (v13)
                  {
                    v2417 = *v2412;
                    a9 = *(v2412 + 16);
                    a10 = *(v2412 + 32);
                    a11 = *(v2412 + 48);
                    v2412 += 64;
                    v2414 = vaddq_s16(v2417, v2414);
                    v2413 = vaddq_s16(a9, v2413);
                    v2416 = vaddq_s16(a10, v2416);
                    v2415 = vaddq_s16(a11, v2415);
                  }

                  *v2411 = vqmovun_high_s16(vqmovun_s16(v2414), v2413);
                  *(v2411 + v162) = vqmovun_high_s16(vqmovun_s16(v2416), v2415);
                  v2411 = (v2411 + v164);
                  v2410 += 64;
                }

                while (v2410 != 256);
                goto LABEL_308;
              }

              _X8 = &_X19->i8[v119];
              __asm { PRFM            #0, [X8] }

              v2363 = *_X19;
              v2364 = (v114 + v157 + v158);
              v2365 = 9;
              v2352 = v2778;
              do
              {
                _X12 = &v2364->i8[2 * v119];
                v2364 = (v2364 + v119);
                __asm { PRFM            #0, [X12] }

                v2368 = *v2364;
                v2369 = vrhaddq_u8(v2363, *v2364);
                v2370 = v21.i64[0];
                v2352[3] = vzip2q_s8(v2369, v21);
                v2352 += 2;
                vst2_s8(v2352->i8, v2369);
                --v2365;
                v2363 = v2368;
              }

              while (v2365 > 2);
              v2371 = vrhaddq_u8(v2368, *(v2364 + v119));
            }

            v2379 = v2352[2].i8;
            v2380 = v21.i64[0];
            vst2_s8(v2379, v2371);
            v2358 = vzip2q_s8(v2371, v21);
            goto LABEL_1081;
          }

          v2711 = v112 * v111;
          v2735 = v15;
          v268 = v2723 + v32 + (v108 >> 2);
          if (v149 <= -18)
          {
            v149 = -18;
          }

          if (v268 <= -18)
          {
            v268 = -18;
          }

          if (v149 >= v116 + 1)
          {
            v269 = v116 + 1;
          }

          else
          {
            v269 = v149;
          }

          if (v268 >= v120 + 1)
          {
            v270 = v120 + 1;
          }

          else
          {
            v270 = v268;
          }

          v271 = (v115 + v269 + v270 * v117);
          v272 = (v148 & 0xFFFFFFFE) + v17;
          v273 = (v108 >> 3) + ((v2723 + v32) >> 1);
          if (v272 <= -16)
          {
            v272 = -16;
          }

          if (v273 <= -8)
          {
            v273 = -8;
          }

          v274 = v118 - 2;
          if (v272 >= v274)
          {
            v272 = v274;
          }

          if (v273 >= v121)
          {
            v273 = v121 - 1;
          }

          v275 = v272;
          v276 = v273 * v119;
          _X19 = (v114 + v272 + v276);
          v278 = v2740;
          v279 = v2741;
          v280 = (v2724 + (v2740 * v32));
          v281 = a2 + 32 * v32;
          v282 = v32 >> 1;
          v283 = (v2722 + (v282 * v2741));
          v284 = v13 + 32 * v282;
          switch(v110)
          {
            case 1:
              v2019 = 0;
              v2020 = (v271 - 2 * v117);
              v2021 = (v2020 + v117 + v117);
              v2022 = vzip1q_s8(*(v2021 + v117 + v117), v21);
              v2023 = vzip1q_s8(*(v2021 + v117), v21);
              v2024 = vzip1q_s8(*v2021, v21);
              v2025 = vzip1q_s8(*(v2020 + v117), v21);
              v2026 = vzip1q_s8(*v2020, v21);
              v2027 = (v115 + 5 * v117 + v269 + v117 * v270 - 2 * v117);
              do
              {
                v2028 = v2025;
                v2025 = v2024;
                v2024 = v2023;
                v2023 = v2022;
                v2022 = vzip1q_s8(*v2027, v21);
                v2029 = vsubq_s16(vshlq_n_s16(vaddq_s16(v2025, v2024), 2uLL), vaddq_s16(v2028, v2023));
                *(&v2770 + v2019) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v2026, v2029), vshlq_n_s16(v2029, 2uLL)), vaddq_s16(v2022, v22)), 5uLL))), v2025);
                v2019 += 32;
                v2027 = (v2027 + v117);
                v2026 = v2028;
              }

              while (v2019 != 256);
              v2030 = 0;
              v2031 = v271 - 2 * v117;
              v2032 = *(v2031 + 8);
              v2033 = &v2031[v117 + 8];
              v2034 = (v2033 + v117 + v117);
              v2035 = vzip1q_s8(*(v2034 + v117), v21);
              v2036 = vzip1q_s8(*v2034, v21);
              v2037 = vzip1q_s8(*(v2033 + v117), v21);
              v2038 = vzip1q_s8(*v2033, v21);
              v141 = vzip1q_s8(v2032, v21);
              v2039 = (v115 + 5 * v117 + v269 + v117 * v270 - 2 * v117 + 8);
              v286 = v2706;
              v287 = v2726;
              do
              {
                a9 = v2038;
                v2038 = v2037;
                v2037 = v2036;
                v2036 = v2035;
                v2035 = vzip1q_s8(*v2039, v21);
                v2040 = vsubq_s16(vshlq_n_s16(vaddq_s16(v2038, v2037), 2uLL), vaddq_s16(a9, v2036));
                a11 = vshlq_n_s16(v2040, 2uLL);
                v2041 = vaddq_s16(vaddq_s16(v141, v2040), a11);
                a10 = vaddq_s16(v2035, v22);
                *(&v2771 + v2030) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(v2041, a10), 5uLL))), v2038);
                v2030 += 32;
                v2039 = (v2039 + v117);
                v141 = a9;
              }

              while (v2030 != 256);
              break;
            case 2:
              v1740 = 0;
              v1741 = (v271 - 2 * v117);
              v1742 = (v1741 + v117 + v117);
              v1743 = vzip1q_s8(*(v1742 + v117 + v117), v21);
              v1744 = vzip1q_s8(*(v1742 + v117), v21);
              v1745 = vzip1q_s8(*v1742, v21);
              v1746 = vzip1q_s8(*(v1741 + v117), v21);
              v1747 = vzip1q_s8(*v1741, v21);
              v1748 = (v115 + 5 * v117 + v269 + v117 * v270 - 2 * v117);
              do
              {
                v1749 = v1746;
                v1746 = v1745;
                v1745 = v1744;
                v1744 = v1743;
                v1750 = &v2770.i8[v1740];
                v1743 = vzip1q_s8(*v1748, v21);
                v1751 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1746, v1745), 2uLL), vaddq_s16(v1749, v1744));
                v1751.val[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1747, v1751), vshlq_n_s16(v1751, 2uLL)), vaddq_s16(v1743, v22)), 5uLL));
                v1752 = v21.i64[0];
                vst2_s8(v1750, v1751);
                v1740 += 32;
                v1748 = (v1748 + v117);
                v1747 = v1749;
              }

              while (v1740 != 256);
              v1753 = 0;
              v1754 = v271 - 2 * v117;
              v1755 = *(v1754 + 8);
              v1756 = &v1754[v117 + 8];
              v1757 = (v1756 + v117 + v117);
              v1758 = vzip1q_s8(*(v1757 + v117), v21);
              v1759 = vzip1q_s8(*v1757, v21);
              v1760 = vzip1q_s8(*(v1756 + v117), v21);
              v1761 = vzip1q_s8(*v1756, v21);
              v141 = vzip1q_s8(v1755, v21);
              v1762 = (v115 + 5 * v117 + v269 + v117 * v270 - 2 * v117 + 8);
              v286 = v2706;
              v287 = v2726;
              do
              {
                a9 = v1761;
                v1761 = v1760;
                v1760 = v1759;
                v1759 = v1758;
                v1763 = &v2771.i8[v1753];
                v1758 = vzip1q_s8(*v1762, v21);
                v1764 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1761, v1760), 2uLL), vaddq_s16(a9, v1759));
                a11 = vshlq_n_s16(v1764, 2uLL);
                v1765 = vaddq_s16(vaddq_s16(v141, v1764), a11);
                a10 = vaddq_s16(v1758, v22);
                a10.n128_u64[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(v1765, a10), 5uLL));
                a11.n128_u64[0] = v21.i64[0];
                vst2_s8(v1763, a10);
                v1753 += 32;
                v1762 = (v1762 + v117);
                v141 = a9;
              }

              while (v1753 != 256);
              break;
            case 3:
              v1965 = 0;
              v1966 = (v271 - 2 * v117);
              v1967 = (v1966 + v117 + v117);
              v1968 = vzip1q_s8(*(v1967 + v117 + v117), v21);
              v1969 = vzip1q_s8(*(v1967 + v117), v21);
              v1970 = vzip1q_s8(*v1967, v21);
              v1971 = vzip1q_s8(*(v1966 + v117), v21);
              v1972 = vzip1q_s8(*v1966, v21);
              v1973 = (v115 + 5 * v117 + v269 + v117 * v270 - 2 * v117);
              do
              {
                v1974 = v1971;
                v1971 = v1970;
                v1970 = v1969;
                v1969 = v1968;
                v1968 = vzip1q_s8(*v1973, v21);
                v1975 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1971, v1970), 2uLL), vaddq_s16(v1974, v1969));
                *(&v2770 + v1965) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1972, v1975), vshlq_n_s16(v1975, 2uLL)), vaddq_s16(v1968, v22)), 5uLL))), v1970);
                v1965 += 32;
                v1973 = (v1973 + v117);
                v1972 = v1974;
              }

              while (v1965 != 256);
              v1976 = 0;
              v1977 = v271 - 2 * v117;
              v1978 = *(v1977 + 8);
              v1979 = &v1977[v117 + 8];
              v1980 = (v1979 + v117 + v117);
              v1981 = vzip1q_s8(*(v1980 + v117), v21);
              v1982 = vzip1q_s8(*v1980, v21);
              v1983 = vzip1q_s8(*(v1979 + v117), v21);
              v1984 = vzip1q_s8(*v1979, v21);
              v141 = vzip1q_s8(v1978, v21);
              v1985 = (v115 + 5 * v117 + v269 + v117 * v270 - 2 * v117 + 8);
              v286 = v2706;
              v287 = v2726;
              do
              {
                a9 = v1984;
                v1984 = v1983;
                v1983 = v1982;
                v1982 = v1981;
                v1981 = vzip1q_s8(*v1985, v21);
                v1986 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1984, v1983), 2uLL), vaddq_s16(a9, v1982));
                a11 = vshlq_n_s16(v1986, 2uLL);
                v1987 = vaddq_s16(vaddq_s16(v141, v1986), a11);
                a10 = vaddq_s16(v1981, v22);
                *(&v2771 + v1976) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(v1987, a10), 5uLL))), v1983);
                v1976 += 32;
                v1985 = (v1985 + v117);
                v141 = a9;
              }

              while (v1976 != 256);
              break;
            case 4:
              v1610 = 0;
              v1611 = (v271 - 2);
              do
              {
                v1612 = *v1611;
                v1611 = (v1611 + v117);
                v1613 = vzip1q_s8(vextq_s8(v1612, v1612, 2uLL), v21);
                v1614 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1613, vzip1q_s8(vextq_s8(v1612, v1612, 3uLL), v21)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1612, v1612, 1uLL), v21), vzip1q_s8(vextq_s8(v1612, v1612, 4uLL), v21)));
                *(&v2770 + v1610) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1614, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1612, v21), vzip1q_s8(vextq_s8(v1612, v1612, 5uLL), v21)), v1614)), v22), 5uLL))), v1613);
                v1610 += 32;
              }

              while (v1610 != 256);
              v1615 = 0;
              v1616 = (v271 + 6);
              v286 = v2706;
              v287 = v2726;
              do
              {
                v1617 = *v1616;
                v1616 = (v1616 + v117);
                v1618 = vzip1q_s8(vextq_s8(v1617, v1617, 2uLL), v21);
                v1619 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1618, vzip1q_s8(vextq_s8(v1617, v1617, 3uLL), v21)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1617, v1617, 1uLL), v21), vzip1q_s8(vextq_s8(v1617, v1617, 4uLL), v21)));
                v141 = vzip1q_s8(v1617, v21);
                *(&v2771 + v1615) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1619, 2uLL), vaddq_s16(vaddq_s16(v141, vzip1q_s8(vextq_s8(v1617, v1617, 5uLL), v21)), v1619)), v22), 5uLL))), v1618);
                v1615 += 32;
              }

              while (v1615 != 256);
              break;
            case 5:
              v1861 = v115 + v269 + v270 * v117;
              v2709 = v273 * v119;
              v1862 = v117;
              v1863 = v272;
              v1864 = 2;
              goto LABEL_1034;
            case 6:
              v2708 = v273 * v119;
              v2703 = v272;
              v2755 = v11;
              v2769 = v21;
              v2705 = v114;
              v2715 = v147;
              sub_27729BFC4(v2770.i8, 0x20u, v271, v117);
              sub_27729BFC4(v2771.i8, 0x20u, v271 + 8, v117);
              goto LABEL_1092;
            case 7:
              v1861 = v115 + v269 + v270 * v117;
              v2709 = v273 * v119;
              v1862 = v117;
              v1863 = v272;
              v1864 = 3;
LABEL_1034:
              v2306 = 2;
              goto LABEL_1058;
            case 8:
              v2502 = 0;
              v2503 = (v271 - 2);
              do
              {
                v2504 = &v2770.i8[v2502];
                v2505 = *v2503;
                v2503 = (v2503 + v117);
                v2506 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v2505, v2505, 2uLL), v21), vzip1q_s8(vextq_s8(v2505, v2505, 3uLL), v21)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v2505, v2505, 1uLL), v21), vzip1q_s8(vextq_s8(v2505, v2505, 4uLL), v21)));
                *v2505.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v2506, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v2505, v21), vzip1q_s8(vextq_s8(v2505, v2505, 5uLL), v21)), v2506)), v22), 5uLL));
                v2506.i64[0] = v21.i64[0];
                vst2_s8(v2504, v2505);
                v2502 += 32;
              }

              while (v2502 != 256);
              v2507 = 0;
              v2508 = (v271 + 6);
              v286 = v2706;
              v287 = v2726;
              do
              {
                v2509 = &v2771.i8[v2507];
                v2510 = *v2508;
                v2508 = (v2508 + v117);
                v2511 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v2510, v2510, 2uLL), v21), vzip1q_s8(vextq_s8(v2510, v2510, 3uLL), v21)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v2510, v2510, 1uLL), v21), vzip1q_s8(vextq_s8(v2510, v2510, 4uLL), v21)));
                *v2510.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v2511, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v2510, v21), vzip1q_s8(vextq_s8(v2510, v2510, 5uLL), v21)), v2511)), v22), 5uLL));
                v2511.i64[0] = v21.i64[0];
                vst2_s8(v2509, v2510);
                v2507 += 32;
              }

              while (v2507 != 256);
              break;
            case 9:
              v2708 = v273 * v119;
              v2703 = v272;
              v2755 = v11;
              v2769 = v21;
              v2705 = v114;
              v2715 = v147;
              sub_27729B614(v2770.i8, 0x20u, v271, v117, 8);
              sub_27729B614(v2771.i8, 0x20u, v271 + 8, v117, 8);
              goto LABEL_1092;
            case 10:
              v2708 = v273 * v119;
              v2703 = v272;
              v2755 = v11;
              v2769 = v21;
              v2705 = v114;
              v2715 = v147;
              sub_27729B7DC(&v2770, 32, v271, v117, 8);
              sub_27729B7DC(&v2771, 32, v271 + 8, v117, 8);
              goto LABEL_1092;
            case 11:
              v2708 = v273 * v119;
              v2703 = v272;
              v2755 = v11;
              v2769 = v21;
              v2705 = v114;
              v2715 = v147;
              sub_27729B98C(v2770.i8, 0x20u, v271, v117, 8);
              sub_27729B98C(v2771.i8, 0x20u, v271 + 8, v117, 8);
              goto LABEL_1092;
            case 12:
              v1630 = 0;
              v1631 = (v271 - 2);
              do
              {
                v1632 = *v1631;
                v1631 = (v1631 + v117);
                v1633 = vzip1q_s8(vextq_s8(v1632, v1632, 3uLL), v21);
                v1634 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1632, v1632, 2uLL), v21), v1633), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1632, v1632, 1uLL), v21), vzip1q_s8(vextq_s8(v1632, v1632, 4uLL), v21)));
                *(&v2770 + v1630) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1634, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1632, v21), vzip1q_s8(vextq_s8(v1632, v1632, 5uLL), v21)), v1634)), v22), 5uLL))), v1633);
                v1630 += 32;
              }

              while (v1630 != 256);
              v1635 = 0;
              v1636 = (v271 + 6);
              v286 = v2706;
              v287 = v2726;
              do
              {
                v1637 = *v1636;
                v1636 = (v1636 + v117);
                v1638 = vzip1q_s8(vextq_s8(v1637, v1637, 3uLL), v21);
                v1639 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1637, v1637, 2uLL), v21), v1638), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1637, v1637, 1uLL), v21), vzip1q_s8(vextq_s8(v1637, v1637, 4uLL), v21)));
                v141 = vzip1q_s8(v1637, v21);
                *(&v2771 + v1635) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1639, 2uLL), vaddq_s16(vaddq_s16(v141, vzip1q_s8(vextq_s8(v1637, v1637, 5uLL), v21)), v1639)), v22), 5uLL))), v1638);
                v1635 += 32;
              }

              while (v1635 != 256);
              break;
            case 13:
              v1861 = v115 + v269 + v270 * v117;
              v2709 = v273 * v119;
              v1862 = v117;
              v1863 = v272;
              v1864 = 2;
              goto LABEL_1057;
            case 14:
              v2708 = v273 * v119;
              v2703 = v272;
              v2755 = v11;
              v2769 = v21;
              v2705 = v114;
              v2715 = v147;
              sub_27729C39C(v2770.i8, 0x20u, v271, v117);
              sub_27729C39C(v2771.i8, 0x20u, v271 + 8, v117);
LABEL_1092:
              v275 = v2703;
              v114 = v2705;
              v276 = v2708;
              v147 = v2715;
              goto LABEL_1093;
            case 15:
              v1861 = v115 + v269 + v270 * v117;
              v2709 = v273 * v119;
              v1862 = v117;
              v1863 = v272;
              v1864 = 3;
LABEL_1057:
              v2306 = 3;
LABEL_1058:
              v2755 = v11;
              v2769 = v21;
              v2342 = v114;
              v2717 = v147;
              sub_27729AF04(v2770.i8, v1861, v1862, 8, v1864, v2306);
              v275 = v1863;
              v276 = v2709;
              v147 = v2717;
              v114 = v2342;
LABEL_1093:
              v23.i64[0] = 0x20002000200020;
              v23.i64[1] = 0x20002000200020;
              v22.i64[0] = 0x10001000100010;
              v22.i64[1] = 0x10001000100010;
              v11 = v2755;
              v21 = v2769;
              v278 = v2740;
              v279 = v2741;
              v13 = a3;
              v286 = v2706;
              v287 = v2726;
              break;
            default:
              v285 = 0;
              v286 = v2706;
              v287 = v2726;
              do
              {
                v288 = &v2770.i8[v285];
                v289 = *v271;
                v271 = (v271 + v117);
                v290 = v21.i64[0];
                vst2_s8(v288, v289);
                v288 += 16;
                *v288 = vzip2q_s8(v289, v21);
                v285 += 32;
              }

              while (v285 != 256);
              break;
          }

          v2418 = 0;
          do
          {
            v2420 = *(&v2770 + v2418);
            v2419 = *(&v2770 + v2418 + 16);
            v2422 = *(&v2772 + v2418);
            v2421 = v2773[v2418 / 0x10];
            if (a2)
            {
              v141 = *v281;
              a9 = *(v281 + 16);
              a10 = *(v281 + 32);
              a11 = *(v281 + 48);
              v281 += 64;
              v2420 = vaddq_s16(v141, v2420);
              v2419 = vaddq_s16(a9, v2419);
              v2422 = vaddq_s16(a10, v2422);
              v2421 = vaddq_s16(a11, v2421);
            }

            *v280 = vqmovun_high_s16(vqmovun_s16(v2420), v2419);
            *(v280 + v278) = vqmovun_high_s16(vqmovun_s16(v2422), v2421);
            v280 = (v280 + v286);
            v2418 += 64;
          }

          while (v2418 != 256);
          if (v287 == 64)
          {
            __asm { PRFM            #0, [X19] }

            v2447 = 5;
            v2426 = v2778;
            v12 = v2701;
            v15 = v2735;
            v2423 = v2694;
            do
            {
              v2448 = _X19;
              _X19 = (_X19 + v119);
              __asm { PRFM            #0, [X19] }

              v2450 = vextq_s8(*v2448, *v2448, 2uLL);
              v2450.i16[7] = v2448[1].i16[0];
              v2451 = vrhaddq_u8(*v2448, v2450);
              v2450.i64[0] = v21.i64[0];
              v2426[3] = vzip2q_s8(v2451, v21);
              v2426 += 2;
              vst2_s8(v2426->i8, *(&v2450 - 8));
              --v2447;
            }

            while (v2447 > 2);
            v2452 = vextq_s8(*_X19, *_X19, 2uLL);
            v2452.i16[7] = _X19[1].i16[0];
            v2445 = vrhaddq_u8(*_X19, v2452);
          }

          else
          {
            v12 = v2701;
            v15 = v2735;
            v2423 = v2694;
            if (v287 != 4)
            {
              if (v287)
              {
                v2455 = 0;
                v2456 = v2711 - (8 * v111 + 8 * v2719) + 64;
                v2457 = v21;
                v2457.i32[0] = v2456 | (v2456 << 16);
                v2458 = v21;
                v2458.i32[0] = (8 * v111 - v2711) | ((8 * v111 - v2711) << 16);
                v2459 = vqtbl1q_s8(v2457, xmmword_2773B3DF0);
                v2460 = vqtbl1q_s8(v2458, xmmword_2773B3DF0);
                v2461 = v21;
                v2461.i32[0] = (8 * v2719 - v2711) | ((8 * v2719 - v2711) << 16);
                v2462 = vqtbl1q_s8(v2461, xmmword_2773B3DF0);
                v2788 = v2459;
                v2789 = v2460;
                v2790 = v2462;
                v2791 = v147;
                _X9 = &_X19->i8[v119];
                __asm { PRFM            #0, [X9] }

                v141.i64[0] = _X19->i64[0];
                v2465 = vqtbl1q_s8(v141, xmmword_2773B3E00);
                v2465.i16[3] = _X19->i16[4];
                v2466 = vzip1q_s8(v2465, v21);
                v2467 = vzip1q_s8(v141, v21);
                v2468 = (v114 + v276 + v275 + v119 + 8);
                _X12 = v114 + v276 + v275 + 2 * v119;
                do
                {
                  __asm { PRFM            #0, [X12] }

                  v2471 = vmlaq_s16(vmulq_s16(v2460, v2466), v2459, v2467);
                  v2466.i64[0] = *(v2468 - 1);
                  v2467 = vzip1q_s8(v2466, v21);
                  v2472 = vqtbl1q_s8(v2466, xmmword_2773B3E00);
                  v2472.i16[3] = *v2468;
                  v2468 = (v2468 + v119);
                  v2466 = vzip1q_s8(v2472, v21);
                  *(&v2779 + v2455) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v2471, v2462, v2467), v147, v2466), v23), 6uLL);
                  v2455 += 32;
                  _X12 += v119;
                }

                while (v2455 != 128);
                v2473 = 0;
                _X9 = &_X19->i8[v119 + 8];
                __asm { PRFM            #0, [X9] }

                v2467.i64[0] = _X19->i64[1];
                v2476 = vqtbl1q_s8(v2467, xmmword_2773B3E00);
                v2476.i16[3] = _X19[1].i16[0];
                a9 = vzip1q_s8(v2476, v21);
                v2477 = vzip1q_s8(v2467, v21);
                v2478 = v114 + v275 + v119;
                v2479 = v114 + v275 + 2 * v119 + 8;
                do
                {
                  _X12 = v2479 + v276;
                  __asm { PRFM            #0, [X12] }

                  v2482 = vmlaq_s16(vmulq_s16(v2460, a9), v2459, v2477);
                  a9.n128_u64[0] = *(v2478 + v276 + 8);
                  v2477 = vzip1q_s8(a9, v21);
                  v2483 = vqtbl1q_s8(a9, xmmword_2773B3E00);
                  v2483.i16[3] = *(v2478 + v276 + 16);
                  a9 = vzip1q_s8(v2483, v21);
                  a10 = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v2482, v2462, v2477), v147, a9), v23), 6uLL);
                  *(&v2780 + v2473) = a10;
                  v2473 += 32;
                  v2478 += v119;
                  v2479 += v119;
                }

                while (v2473 != 128);
              }

              else
              {
                __asm { PRFM            #0, [X19] }

                v2425 = 5;
                v2426 = v2778;
                do
                {
                  v2427 = _X19;
                  _X19 = (_X19 + v119);
                  __asm { PRFM            #0, [X19] }

                  v2429 = *v2427;
                  v2426[3] = vzip2q_s8(*v2427, v21);
                  v2426 += 2;
                  v2430 = v21.i64[0];
                  vst2_s8(v2426->i8, v2429);
                  --v2425;
                }

                while (v2425 > 2);
                v2431 = *_X19;
                v2432 = vzip2q_s8(*_X19, v21);
                v2433 = v2426[2].i8;
                v2434 = v21.i64[0];
                vst2_s8(v2433, v2431);
LABEL_1111:
                v2426[3] = v2432;
              }

              v2484 = 1;
              v2485 = &v2779;
              do
              {
                v2486 = v2484;
                v2488 = *v2485;
                v2487 = v2485[1];
                v2490 = v2485[2];
                v2489 = v2485[3];
                if (v13)
                {
                  v2491 = *v284;
                  a9 = *(v284 + 16);
                  a10 = *(v284 + 32);
                  a11 = *(v284 + 48);
                  v284 += 64;
                  v2488 = vaddq_s16(v2491, v2488);
                  v2487 = vaddq_s16(a9, v2487);
                  v2490 = vaddq_s16(a10, v2490);
                  v2489 = vaddq_s16(a11, v2489);
                }

                v2484 = 0;
                *v283 = vqmovun_high_s16(vqmovun_s16(v2488), v2487);
                *(v283 + v279) = vqmovun_high_s16(vqmovun_s16(v2490), v2489);
                v283 = (v283 + v2423);
                v2485 += 4;
              }

              while ((v2486 & 1) != 0);
LABEL_307:
              LODWORD(v17) = v2721;
              goto LABEL_308;
            }

            _X8 = &_X19->i8[v119];
            __asm { PRFM            #0, [X8] }

            v2437 = *_X19;
            v2438 = (v114 + v275 + v276);
            v2439 = 5;
            v2426 = v2778;
            do
            {
              _X12 = &v2438->i8[2 * v119];
              v2438 = (v2438 + v119);
              __asm { PRFM            #0, [X12] }

              v2442 = *v2438;
              v2443 = vrhaddq_u8(v2437, *v2438);
              v2444 = v21.i64[0];
              v2426[3] = vzip2q_s8(v2443, v21);
              v2426 += 2;
              vst2_s8(v2426->i8, v2443);
              --v2439;
              v2437 = v2442;
            }

            while (v2439 > 2);
            v2445 = vrhaddq_u8(v2442, *(v2438 + v119));
          }

          v2453 = v2426[2].i8;
          v2454 = v21.i64[0];
          vst2_s8(v2453, v2445);
          v2432 = vzip2q_s8(v2445, v21);
          goto LABEL_1111;
      }

LABEL_1013:
      if (++v15 == v12)
      {
        return;
      }
    }

    v2725 = v28 >> 8;
    v2732 = v15;
    v34 = *(*(a1 + 224) + 8 * v24[8]);
    v35 = *v33;
    v36 = v33[1];
    v37 = *(*(a1 + 232) + 8 * v24[9]);
    v38 = v33[2];
    v39 = v33[3];
    v40 = 8 - (v35 & 7);
    v41 = 8 - (v36 & 7);
    v2702 = v36 & 7;
    v2692 = v35 & 7;
    v49 = v21;
    v50 = v21;
    v51 = v21;
    v2678 = v2702 * v2692;
    v42 = v21;
    v43 = 8 - (v38 & 7);
    v44 = 8 - (v39 & 7);
    v2704 = v39 & 7;
    v2693 = v38 & 7;
    v52 = v21;
    v45 = *(v34 + 164);
    v46 = *(v34 + 132);
    v47 = *(v34 + 148);
    v48 = *(v37 + 164);
    v49.i32[0] = 65537 * v41 * v40;
    v50.i32[0] = 65537 * v41 * v2692;
    v51.i32[0] = 65537 * v40 * v2702;
    v52.i32[0] = 65537 * v44 * v43;
    v53 = *(v37 + 132);
    a9 = v21;
    a9.n128_u32[0] = 65537 * v44 * v2693;
    a10 = v21;
    a10.n128_u32[0] = 65537 * v43 * v2704;
    v2679 = v2704 * v2693;
    a11 = v21;
    a11.n128_u32[0] = 65537 * v2704 * v2693;
    v54 = *(v37 + 148);
    v55 = v17 + v31;
    v56 = v2723 + v32;
    v57 = v17 + v31 + (v35 >> 2);
    v58 = v2723 + v32 + (v36 >> 2);
    if (v57 <= -18)
    {
      v57 = -18;
    }

    if (v58 <= -18)
    {
      v58 = -18;
    }

    v59 = a2;
    if (v57 >= v45 + 1)
    {
      v60 = v45 + 1;
    }

    else
    {
      v60 = v57;
    }

    if (v58 >= v46 + 1)
    {
      v61 = v46 + 1;
    }

    else
    {
      v61 = v58;
    }

    v62 = v55 + (v38 >> 2);
    v63 = v56 + (v39 >> 2);
    if (v62 <= -18)
    {
      v62 = -18;
    }

    if (v63 <= -18)
    {
      v63 = -18;
    }

    if (v62 >= v48 + 1)
    {
      v64 = v48 + 1;
    }

    else
    {
      v64 = v62;
    }

    if (v63 >= v53 + 1)
    {
      v65 = v53 + 1;
    }

    else
    {
      v65 = v63;
    }

    v66 = ((v35 >> 2) & 0xFFFFFFFE) + v55;
    v67 = (v36 >> 3) + (v56 >> 1);
    v2689 = v66;
    if (v66 <= -16)
    {
      v66 = -16;
    }

    if (v67 <= -8)
    {
      v67 = -8;
    }

    v68 = *(v34 + 180) - 2;
    v2690 = v68;
    if (v66 < v68)
    {
      v68 = v66;
    }

    if (v67 >= v47)
    {
      v69 = v47 - 1;
    }

    else
    {
      v69 = v67;
    }

    v70 = ((v38 >> 2) & 0xFFFFFFFE) + v55;
    v71 = (v39 >> 3) + (v56 >> 1);
    v2691 = v70;
    if (v70 <= -16)
    {
      v70 = -16;
    }

    if (v71 <= -8)
    {
      v71 = -8;
    }

    v72 = *(v37 + 180) - 2;
    v2688 = v72;
    if (v70 < v72)
    {
      v72 = v70;
    }

    if (v71 >= v54)
    {
      v73 = v54 - 1;
    }

    else
    {
      v73 = v71;
    }

    v74 = &v2724->i8[v31 + (v2740 * v32)];
    v75 = v59;
    v76 = v59 + 2 * v31 + 32 * v32;
    v77 = v32 >> 1;
    v78 = &v2722->i8[v31 + (v77 * v2741)];
    v79 = *(v34 + 168);
    v80 = v13;
    v81 = v13 + 2 * v31 + 32 * v77;
    v82 = *(v34 + 184);
    v83.i64[1] = 0x302010003020100;
    v2788 = vqtbl1q_s8(v49, xmmword_2773B3DF0);
    v2789 = vqtbl1q_s8(v50, xmmword_2773B3DF0);
    v84 = v36 & 3 | (4 * (v35 & 3u));
    v86 = *(v34 + 64);
    v85 = *(v34 + 72);
    v2707 = v39 & 3 | (4 * (v38 & 3u));
    v87 = *(v37 + 168);
    v88 = *(v37 + 184);
    v89 = *(v37 + 64);
    v90 = *(v37 + 72);
    v42.i32[0] = 65537 * v2678;
    v91 = vqtbl1q_s8(v42, xmmword_2773B3DF0);
    v2790 = vqtbl1q_s8(v51, xmmword_2773B3DF0);
    v2791 = v91;
    v92 = vqtbl1q_s8(v52, xmmword_2773B3DF0);
    v93 = vqtbl1q_s8(a9, xmmword_2773B3DF0);
    v94 = vqtbl1q_s8(a10, xmmword_2773B3DF0);
    v95 = vqtbl1q_s8(a11, xmmword_2773B3DF0);
    v2792 = v92;
    v2793 = v93;
    v2794 = v94;
    v2795 = v95;
    v2681 = v60;
    v2682 = v61;
    v96 = (v86 + v60 + v61 * v79);
    v2710 = v88;
    v2713 = v87;
    v2684 = v65;
    v2685 = v64;
    v2683 = v89;
    v2718 = (v89 + v64 + v65 * v87);
    _X27 = (v85 + v68 + v69 * v82);
    v98 = v73 * v88;
    if (v28 == 4)
    {
      v2743 = v11;
      v2757 = v21;
      v2698 = v90 + v72 + v98;
      if (v2725 == 8)
      {
        v177 = &v96[v79];
        a2 = v75;
        switch(v84)
        {
          case 1:
            v706 = sub_27729F23C(&v2770, v96, v79, v92, v93, *v94.i64, v95, *v52.i64, a9, a10, a11);
            v184 = sub_27729F23C(&v2772, &v96[v79], v79, v706, v707, v708, v709, v710, v711, v712, v713);
            goto LABEL_414;
          case 2:
            v588 = sub_27729F394(&v2770, v96, v79, *v92.i64, v93, v94, *v95.i64, v52, a9, a10, a11);
            *v184.i64 = sub_27729F394(&v2772, &v96[v79], v79, v588, v589, v590, v591, v592, v593, v594, v595);
            goto LABEL_414;
          case 3:
            v660 = sub_27729F4D8(&v2770, v96, v79, v92, v93, *v94.i64, v95, *v52.i64, a9, a10, a11);
            v184 = sub_27729F4D8(&v2772, &v96[v79], v79, v660, v661, v662, v663, v664, v665, v666, v667);
            goto LABEL_414;
          case 4:
            sub_27729C91C(&v2770, 8u, v96, v79);
            v184 = sub_27729C91C(&v2772, 8u, &v96[v79], v79);
            goto LABEL_414;
          case 5:
            *v786.i64 = sub_27729CAF0(&v2770, 8u, v96, v79, v92, *v93.i64, *v94.i64, *v95.i64, *v52.i64, a9, a10, a11);
            *v184.i64 = sub_27729CAF0(&v2772, 8u, &v96[v79], v79, v786, v787, v788, v789, v790, v791, v792, v793);
            goto LABEL_414;
          case 6:
            *v802.i64 = sub_27729CDD0(&v2770, 8u, v96, v79, v92, v93, v94, v95, v52, a9, a10, a11);
            *v184.i64 = sub_27729CDD0(&v2772, 8u, &v96[v79], v79, v802, v803, v804, v805, v806, v807, v808, v809);
            goto LABEL_414;
          case 7:
            v674 = sub_27729D274(&v2770, 8u, v96, v79, *v92.i64, *v93.i64, *v94.i64, *v95.i64, *v52.i64, a9.n128_f64[0], a10, a11);
            *v184.i64 = sub_27729D274(&v2772, 8u, &v96[v79], v79, v674, v675, v676, v677, v678, v679, v680, v681);
            goto LABEL_414;
          case 8:
            sub_27729D550(&v2770, 8u, v96, v79);
            v184 = sub_27729D550(&v2772, 8u, &v96[v79], v79);
            goto LABEL_414;
          case 9:
            sub_27729D714(&v2770, 8u, v96, v79);
            *v184.i64 = sub_27729D714(&v2772, 8u, &v96[v79], v79);
            goto LABEL_414;
          case 10:
            *v812.i64 = sub_27729F62C(&v2770, v96, v79, v92, v93, v94, v95, v52, a9, a10, a11);
            *v184.i64 = sub_27729F62C(&v2772, &v96[v79], v79, v812, v813, v814, v815, v816, v817, v818, v819);
            goto LABEL_414;
          case 11:
            sub_27729DE6C(&v2770, 8u, v96, v79);
            *v184.i64 = sub_27729DE6C(&v2772, 8u, &v96[v79], v79);
            goto LABEL_414;
          case 12:
            sub_27729E5C4(&v2770, 8u, v96, v79);
            v184 = sub_27729E5C4(&v2772, 8u, &v96[v79], v79);
            goto LABEL_414;
          case 13:
            *v794.i64 = sub_27729E798(&v2770, 8u, v96, v79, v92, *v93.i64, *v94.i64, *v95.i64, *v52.i64, a9, a10, a11);
            *v184.i64 = sub_27729E798(&v2772, 8u, &v96[v79], v79, v794, v795, v796, v797, v798, v799, v800, v801);
            goto LABEL_414;
          case 14:
            *v540.i64 = sub_27729EA7C(&v2770, 8u, v96, v79, v92, v93, v94, v95, v52, a9, a10, a11);
            *v184.i64 = sub_27729EA7C(&v2772, 8u, &v96[v79], v79, v540, v541, v542, v543, v544, v545, v546, v547);
            goto LABEL_414;
          case 15:
            v652 = sub_27729EF20(&v2770, 8u, v96, v79, *v92.i64, *v93.i64, *v94.i64, *v95.i64, *v52.i64, a9.n128_f64[0], a10, a11);
            *v184.i64 = sub_27729EF20(&v2772, 8u, &v96[v79], v79, v652, v653, v654, v655, v656, v657, v658, v659);
LABEL_414:
            v21 = v2757;
            break;
          default:
            v92.i32[0] = *(v96 + v79);
            v93.i32[0] = *(v96 + 2 * v79);
            v94.i32[0] = *v96;
            v95.i32[0] = *(v96 + 3 * v79);
            v178.i64[0] = vzip1q_s8(v94, v21).u64[0];
            v179 = vzip1q_s8(v92, v21);
            v180.i64[0] = vzip1q_s8(v93, v21).u64[0];
            v181 = vzip1q_s8(v95, v21);
            v178.i64[1] = v179.i64[0];
            v180.i64[1] = v181.i64[0];
            v2770 = v178;
            v2771 = v180;
            v179.i32[0] = *v177;
            v180.i32[0] = *(v177 + v79);
            v178.i32[0] = *(v177 + 2 * v79);
            v181.i32[0] = *(v177 + 3 * v79);
            v184.i64[0] = vzip1q_s8(v179, v21).u64[0];
            v182 = vzip1q_s8(v180, v21);
            v185.i64[0] = vzip1q_s8(v178, v21).u64[0];
            v183 = vzip1q_s8(v181, v21);
            v184.i64[1] = v182.i64[0];
            v185.i64[1] = v183.i64[0];
            v2772 = v184;
            v2773[0] = v185;
            break;
        }

        v820 = &v2718[v2713];
        switch(v2707)
        {
          case 1:
            v868 = sub_27729F23C(&v2774, v2718, v2713, v184, v182, *v185.i64, v183, *v52.i64, a9, a10, a11);
            v826 = sub_27729F23C(&v2776, v820, v2713, v868, v869, v870, v871, v872, v873, v874, v875);
            break;
          case 2:
            v836 = sub_27729F394(&v2774, v2718, v2713, *v184.i64, v182, v185, *v183.i64, v52, a9, a10, a11);
            sub_27729F394(&v2776, v820, v2713, v836, v837, v838, v839, v840, v841, v842, v843);
            break;
          case 3:
            v852 = sub_27729F4D8(&v2774, v2718, v2713, v184, v182, *v185.i64, v183, *v52.i64, a9, a10, a11);
            v826 = sub_27729F4D8(&v2776, v820, v2713, v852, v853, v854, v855, v856, v857, v858, v859);
            break;
          case 4:
            sub_27729C91C(&v2774, 8u, v2718, v2713);
            v826 = sub_27729C91C(&v2776, 8u, v820, v2713);
            break;
          case 5:
            *v876.i64 = sub_27729CAF0(&v2774, 8u, v2718, v2713, v184, *v182.i64, *v185.i64, *v183.i64, *v52.i64, a9, a10, a11);
            sub_27729CAF0(&v2776, 8u, v820, v2713, v876, v877, v878, v879, v880, v881, v882, v883);
            break;
          case 6:
            *v892.i64 = sub_27729CDD0(&v2774, 8u, v2718, v2713, v184, v182, v185, v183, v52, a9, a10, a11);
            sub_27729CDD0(&v2776, 8u, v820, v2713, v892, v893, v894, v895, v896, v897, v898, v899);
            break;
          case 7:
            v860 = sub_27729D274(&v2774, 8u, v2718, v2713, *v184.i64, *v182.i64, *v185.i64, *v183.i64, *v52.i64, a9.n128_f64[0], a10, a11);
            sub_27729D274(&v2776, 8u, v820, v2713, v860, v861, v862, v863, v864, v865, v866, v867);
            break;
          case 8:
            sub_27729D550(&v2774, 8u, v2718, v2713);
            v826 = sub_27729D550(&v2776, 8u, v820, v2713);
            break;
          case 9:
            sub_27729D714(&v2774, 8u, v2718, v2713);
            sub_27729D714(&v2776, 8u, v820, v2713);
            break;
          case 10:
            *v900.i64 = sub_27729F62C(&v2774, v2718, v2713, v184, v182, v185, v183, v52, a9, a10, a11);
            sub_27729F62C(&v2776, v820, v2713, v900, v901, v902, v903, v904, v905, v906, v907);
            break;
          case 11:
            sub_27729DE6C(&v2774, 8u, v2718, v2713);
            sub_27729DE6C(&v2776, 8u, v820, v2713);
            break;
          case 12:
            sub_27729E5C4(&v2774, 8u, v2718, v2713);
            v826 = sub_27729E5C4(&v2776, 8u, v820, v2713);
            break;
          case 13:
            *v884.i64 = sub_27729E798(&v2774, 8u, v2718, v2713, v184, *v182.i64, *v185.i64, *v183.i64, *v52.i64, a9, a10, a11);
            sub_27729E798(&v2776, 8u, v820, v2713, v884, v885, v886, v887, v888, v889, v890, v891);
            break;
          case 14:
            *v828.i64 = sub_27729EA7C(&v2774, 8u, v2718, v2713, v184, v182, v185, v183, v52, a9, a10, a11);
            sub_27729EA7C(&v2776, 8u, v820, v2713, v828, v829, v830, v831, v832, v833, v834, v835);
            break;
          case 15:
            v844 = sub_27729EF20(&v2774, 8u, v2718, v2713, *v184.i64, *v182.i64, *v185.i64, *v183.i64, *v52.i64, a9.n128_f64[0], a10, a11);
            sub_27729EF20(&v2776, 8u, v820, v2713, v844, v845, v846, v847, v848, v849, v850, v851);
            break;
          default:
            v184.i32[0] = *(v2718 + v2713);
            v182.i32[0] = *(v2718 + 2 * v2713);
            v185.i32[0] = *v2718;
            v183.i32[0] = *(v2718 + 3 * v2713);
            v821.i64[0] = vzip1q_s8(v185, v21).u64[0];
            v822 = vzip1q_s8(v184, v21);
            v823.i64[0] = vzip1q_s8(v182, v21).u64[0];
            v824 = vzip1q_s8(v183, v21);
            v821.i64[1] = v822.i64[0];
            v823.i64[1] = v824.i64[0];
            v2774 = v821;
            v2775 = v823;
            v822.i32[0] = *v820;
            v823.i32[0] = *(v820 + v2713);
            v821.i32[0] = *(v820 + 2 * v2713);
            v824.i32[0] = *(v820 + 3 * v2713);
            v826.i64[0] = vzip1q_s8(v822, v21).u64[0];
            v825 = vzip1q_s8(v823, v21);
            v827.i64[0] = vzip1q_s8(v821, v21).u64[0];
            v826.i64[1] = v825.i64[0];
            v827.i64[1] = vzip1q_s8(v824, v21).u64[0];
            v2776 = v826;
            v2777[0] = v827;
            break;
        }

        v911 = 1;
        v912 = &v2770;
        do
        {
          v913 = v911;
          v826.i64[0] = v912->i64[0];
          v825.i64[0] = v912->i64[1];
          v52.i64[0] = v912[1].i64[0];
          a9.n128_u64[0] = v912[1].u64[1];
          v827.i64[0] = v912[32].i64[0];
          a10.n128_u64[0] = v912[32].u64[1];
          a11.n128_u64[0] = v912[33].u64[0];
          v83.i64[0] = v912[33].i64[1];
          v914 = vrhaddq_u16(v826, v827);
          v827 = vrhaddq_u16(v825, a10);
          v825 = vrhaddq_u16(v52, a11);
          v826 = vrhaddq_u16(a9, v83);
          if (a2)
          {
            v52.i64[0] = *v76;
            a9.n128_u64[0] = *(v76 + 32);
            a10.n128_u64[0] = *(v76 + 64);
            a11.n128_u64[0] = *(v76 + 96);
            v76 += 128;
            v914 = vaddq_s16(v914, v52);
            v827 = vaddq_s16(v827, a9);
            v825 = vaddq_s16(v825, a10);
            v826 = vaddq_s16(v826, a11);
          }

          v911 = 0;
          v912 += 2;
          v915 = COERCE_DOUBLE(vqmovun_s16(v914));
          v916 = COERCE_DOUBLE(vqmovun_s16(v827));
          v917 = COERCE_DOUBLE(vqmovun_s16(v825));
          v74->i32[0] = LODWORD(v915);
          *(v74->i32 + v2740) = LODWORD(v916);
          v918 = COERCE_DOUBLE(vqmovun_s16(v826));
          *(v74->i32 + v2706) = LODWORD(v917);
          *(v74->i32 + v2670) = LODWORD(v918);
          v74 = (v74 + v2663);
        }

        while ((v913 & 1) != 0);
        v919 = sub_277290798(&v2779, _X27, v82, v2692, v2702, v918, v917, v916, v915, v52, a9);
        v925 = sub_277290798(&v2780, _X27->i64 + (2 * v82), v82, v2692, v2702, v919, v920, v921, v922, v923, v924);
        v931 = sub_277290798(&v2784, v2698, v2710, v2693, v2704, v925, v926, v927, v928, v929, v930);
        sub_277290798(&v2785, v2698 + (2 * v2710), v2710, v2693, v2704, v931, v932, v933, v934, v935, v936);
        v938.i64[0] = v2779.i64[1];
        v937.i64[0] = v2779.i64[0];
        a9.n128_u64[0] = v2780.u64[1];
        v939.i64[0] = v2780.i64[0];
        a10.n128_u64[0] = v2784.u64[1];
        v940.i64[0] = v2784.i64[0];
        v941.i64[0] = v2785.i64[1];
        a11.n128_u64[0] = v2785.i64[0];
        v942 = vrhaddq_u16(v937, v940);
        v943 = vrhaddq_u16(v938, a10);
        v944 = vrhaddq_u16(v939, a11);
        v945 = vrhaddq_u16(a9, v941);
        v13 = a3;
        if (a3)
        {
          v939.i64[0] = *v81;
          a9.n128_u64[0] = *(v81 + 32);
          a10.n128_u64[0] = *(v81 + 64);
          a11.n128_u64[0] = *(v81 + 96);
          v942 = vaddq_s16(v942, v939);
          v943 = vaddq_s16(v943, a9);
          v944 = vaddq_s16(v944, a10);
          v945 = vaddq_s16(v945, a11);
        }

        v22.i64[0] = 0x10001000100010;
        v22.i64[1] = 0x10001000100010;
        v23.i64[0] = 0x20002000200020;
        v23.i64[1] = 0x20002000200020;
        v78->i32[0] = vqmovun_s16(v942).u32[0];
        *(v78->i32 + v2741) = vqmovun_s16(v943).u32[0];
        *(v78->i32 + v2694) = vqmovun_s16(v944).u32[0];
        *(v78->i32 + v2664) = vqmovun_s16(v945).u32[0];
      }

      else
      {
        a2 = v75;
        switch(v84)
        {
          case 1:
            v242 = sub_27729F23C(&v2770, v96, v79, v92, v93, *v94.i64, v95, *v52.i64, a9, a10, a11);
            goto LABEL_432;
          case 2:
            *v242.i64 = sub_27729F394(&v2770, v96, v79, *v92.i64, v93, v94, *v95.i64, v52, a9, a10, a11);
            goto LABEL_432;
          case 3:
            v242 = sub_27729F4D8(&v2770, v96, v79, v92, v93, *v94.i64, v95, *v52.i64, a9, a10, a11);
            goto LABEL_432;
          case 4:
            v242 = sub_27729C91C(&v2770, 8u, v96, v79);
            goto LABEL_432;
          case 5:
            *v242.i64 = sub_27729CAF0(&v2770, 8u, v96, v79, v92, *v93.i64, *v94.i64, *v95.i64, *v52.i64, a9, a10, a11);
            goto LABEL_432;
          case 6:
            *v242.i64 = sub_27729CDD0(&v2770, 8u, v96, v79, v92, v93, v94, v95, v52, a9, a10, a11);
            goto LABEL_432;
          case 7:
            *v242.i64 = sub_27729D274(&v2770, 8u, v96, v79, *v92.i64, *v93.i64, *v94.i64, *v95.i64, *v52.i64, a9.n128_f64[0], a10, a11);
            goto LABEL_432;
          case 8:
            v242 = sub_27729D550(&v2770, 8u, v96, v79);
            goto LABEL_432;
          case 9:
            *v242.i64 = sub_27729D714(&v2770, 8u, v96, v79);
            goto LABEL_432;
          case 10:
            *v242.i64 = sub_27729F62C(&v2770, v96, v79, v92, v93, v94, v95, v52, a9, a10, a11);
            goto LABEL_432;
          case 11:
            *v242.i64 = sub_27729DE6C(&v2770, 8u, v96, v79);
            goto LABEL_432;
          case 12:
            v242 = sub_27729E5C4(&v2770, 8u, v96, v79);
            goto LABEL_432;
          case 13:
            *v242.i64 = sub_27729E798(&v2770, 8u, v96, v79, v92, *v93.i64, *v94.i64, *v95.i64, *v52.i64, a9, a10, a11);
            goto LABEL_432;
          case 14:
            *v242.i64 = sub_27729EA7C(&v2770, 8u, v96, v79, v92, v93, v94, v95, v52, a9, a10, a11);
            goto LABEL_432;
          case 15:
            *v242.i64 = sub_27729EF20(&v2770, 8u, v96, v79, *v92.i64, *v93.i64, *v94.i64, *v95.i64, *v52.i64, a9.n128_f64[0], a10, a11);
LABEL_432:
            v21 = v2757;
            break;
          default:
            v92.i32[0] = *v96;
            v93.i32[0] = *(v96 + v79);
            v94.i32[0] = *(v96 + 2 * v79);
            v95.i32[0] = *(v96 + 3 * v79);
            v242.i64[0] = vzip1q_s8(v92, v21).u64[0];
            v240 = vzip1q_s8(v93, v21);
            v243.i64[0] = vzip1q_s8(v94, v21).u64[0];
            v241 = vzip1q_s8(v95, v21);
            v242.i64[1] = v240.i64[0];
            v243.i64[1] = v241.i64[0];
            v2770 = v242;
            v2771 = v243;
            break;
        }

        switch(v2707)
        {
          case 1:
            v909 = sub_27729F23C(&v2774, v2718, v2713, v242, v240, *v243.i64, v241, *v52.i64, a9, a10, a11);
            break;
          case 2:
            sub_27729F394(&v2774, v2718, v2713, *v242.i64, v240, v243, *v241.i64, v52, a9, a10, a11);
            break;
          case 3:
            v909 = sub_27729F4D8(&v2774, v2718, v2713, v242, v240, *v243.i64, v241, *v52.i64, a9, a10, a11);
            break;
          case 4:
            v909 = sub_27729C91C(&v2774, 8u, v2718, v2713);
            break;
          case 5:
            sub_27729CAF0(&v2774, 8u, v2718, v2713, v242, *v240.i64, *v243.i64, *v241.i64, *v52.i64, a9, a10, a11);
            break;
          case 6:
            sub_27729CDD0(&v2774, 8u, v2718, v2713, v242, v240, v243, v241, v52, a9, a10, a11);
            break;
          case 7:
            sub_27729D274(&v2774, 8u, v2718, v2713, *v242.i64, *v240.i64, *v243.i64, *v241.i64, *v52.i64, a9.n128_f64[0], a10, a11);
            break;
          case 8:
            v909 = sub_27729D550(&v2774, 8u, v2718, v2713);
            break;
          case 9:
            sub_27729D714(&v2774, 8u, v2718, v2713);
            break;
          case 10:
            sub_27729F62C(&v2774, v2718, v2713, v242, v240, v243, v241, v52, a9, a10, a11);
            break;
          case 11:
            sub_27729DE6C(&v2774, 8u, v2718, v2713);
            break;
          case 12:
            v909 = sub_27729E5C4(&v2774, 8u, v2718, v2713);
            break;
          case 13:
            sub_27729E798(&v2774, 8u, v2718, v2713, v242, *v240.i64, *v243.i64, *v241.i64, *v52.i64, a9, a10, a11);
            break;
          case 14:
            sub_27729EA7C(&v2774, 8u, v2718, v2713, v242, v240, v243, v241, v52, a9, a10, a11);
            break;
          case 15:
            sub_27729EF20(&v2774, 8u, v2718, v2713, *v242.i64, *v240.i64, *v243.i64, *v241.i64, *v52.i64, a9.n128_f64[0], a10, a11);
            break;
          default:
            v242.i32[0] = *v2718;
            v240.i32[0] = *(v2718 + v2713);
            v243.i32[0] = *(v2718 + 2 * v2713);
            v241.i32[0] = *(v2718 + 3 * v2713);
            v909.i64[0] = vzip1q_s8(v242, v21).u64[0];
            v908 = vzip1q_s8(v240, v21);
            v910.i64[0] = vzip1q_s8(v243, v21).u64[0];
            v909.i64[1] = v908.i64[0];
            v910.i64[1] = vzip1q_s8(v241, v21).u64[0];
            v2774 = v909;
            v2775 = v910;
            break;
        }

        v908.i64[0] = v2770.i64[1];
        v909.i64[0] = v2770.i64[0];
        a9.n128_u64[0] = v2771.u64[1];
        v52.i64[0] = v2771.i64[0];
        a10.n128_u64[0] = v2774.u64[1];
        v910.i64[0] = v2774.i64[0];
        v83.i64[0] = v2775.i64[1];
        a11.n128_u64[0] = v2775.i64[0];
        v946 = vrhaddq_u16(v909, v910);
        v947 = vrhaddq_u16(v908, a10);
        v948 = vrhaddq_u16(v52, a11);
        v949 = vrhaddq_u16(a9, v83);
        if (a2)
        {
          v52.i64[0] = *v76;
          a9.n128_u64[0] = *(v76 + 32);
          a10.n128_u64[0] = *(v76 + 64);
          a11.n128_u64[0] = *(v76 + 96);
          v946 = vaddq_s16(v946, v52);
          v947 = vaddq_s16(v947, a9);
          v948 = vaddq_s16(v948, a10);
          v949 = vaddq_s16(v949, a11);
        }

        v950 = COERCE_DOUBLE(vqmovun_s16(v946));
        v951 = COERCE_DOUBLE(vqmovun_s16(v947));
        v74->i32[0] = LODWORD(v950);
        *(v74->i32 + v2740) = LODWORD(v951);
        v952 = COERCE_DOUBLE(vqmovun_s16(v948));
        v953 = COERCE_DOUBLE(vqmovun_s16(v949));
        *(v74->i32 + v2706) = LODWORD(v952);
        *(v74->i32 + v2670) = LODWORD(v953);
        v954 = sub_277290798(&v2779, _X27, v82, v2692, v2702, v952, v953, v951, v950, v52, a9);
        sub_277290798(&v2784, v2698, v2710, v2693, v2704, v954, v955, v956, v957, v958, v959);
        v961.i64[0] = v2779.i64[1];
        v960.i64[0] = v2779.i64[0];
        v963.i64[0] = v2784.i64[1];
        v962.i64[0] = v2784.i64[0];
        v964 = vrhaddq_u16(v960, v962);
        v965 = vrhaddq_u16(v961, v963);
        v13 = a3;
        if (a3)
        {
          v961.i64[0] = *v81;
          v963.i64[0] = *(v81 + 32);
          v964 = vaddq_s16(v964, v961);
          v965 = vaddq_s16(v965, v963);
        }

        v22.i64[0] = 0x10001000100010;
        v22.i64[1] = 0x10001000100010;
        v23.i64[0] = 0x20002000200020;
        v23.i64[1] = 0x20002000200020;
        v78->i32[0] = vqmovun_s16(v964).u32[0];
        *(v78->i32 + v2741) = vqmovun_s16(v965).u32[0];
      }

      v11 = v2743;
      v21 = v2757;
      goto LABEL_1012;
    }

    v2677 = v69 * v82;
    v2680 = v85;
    if (v28 == 8)
    {
      if (v2725 == 4)
      {
        v2700 = (v90 + v72 + v98);
        a2 = v75;
        v2748 = v11;
        v2762 = v21;
        switch(v84)
        {
          case 1:
            v1734 = 0;
            v1735 = (v96 - 2 * v79);
            v1736 = (v1735 + v79 + v79);
            v93 = vzip1q_s8(*(v1736 + v79 + v79), v21);
            v263 = vzip1q_s8(*(v1736 + v79), v21);
            v94 = vzip1q_s8(*v1736, v21);
            v95 = vzip1q_s8(*(v1735 + v79), v21);
            v52 = vzip1q_s8(*v1735, v21);
            v1737 = (v86 + 5 * v79 + v2681 + v79 * v2682 - 2 * v79);
            v259 = v2718;
            v260 = v2707;
            v261 = v88;
            do
            {
              a9 = v95;
              v95 = v94;
              v94 = v263;
              v263 = v93;
              v93 = vzip1q_s8(*v1737, v21);
              v1738 = vsubq_s16(vshlq_n_s16(vaddq_s16(v95, v94), 2uLL), vaddq_s16(a9, v263));
              a11 = vshlq_n_s16(v1738, 2uLL);
              v1739 = vaddq_s16(vaddq_s16(v52, v1738), a11);
              a10 = vaddq_s16(v93, v22);
              *(&v2770 + v1734) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(v1739, a10), 5uLL))), v95);
              v1734 += 16;
              v1737 = (v1737 + v79);
              v52 = a9;
            }

            while (v1734 != 64);
            break;
          case 2:
            v1603 = 0;
            v1604 = (v96 - 2 * v79);
            v1605 = (v1604 + v79 + v79);
            v93 = vzip1q_s8(*(v1605 + v79 + v79), v21);
            v263 = vzip1q_s8(*(v1605 + v79), v21);
            v94 = vzip1q_s8(*v1605, v21);
            v95 = vzip1q_s8(*(v1604 + v79), v21);
            v52 = vzip1q_s8(*v1604, v21);
            v1606 = (v86 + 5 * v79 + v2681 + v79 * v2682 - 2 * v79);
            v259 = v2718;
            v260 = v2707;
            v261 = v88;
            do
            {
              a9 = v95;
              v95 = v94;
              v94 = v263;
              v263 = v93;
              v1607 = &v2770.i8[v1603];
              v93 = vzip1q_s8(*v1606, v21);
              v1608 = vsubq_s16(vshlq_n_s16(vaddq_s16(v95, v94), 2uLL), vaddq_s16(a9, v263));
              a11 = vshlq_n_s16(v1608, 2uLL);
              v1609 = vaddq_s16(vaddq_s16(v52, v1608), a11);
              a10 = vaddq_s16(v93, v22);
              a10.n128_u64[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(v1609, a10), 5uLL));
              a11.n128_u64[0] = v21.i64[0];
              vst2_s8(v1607, a10);
              v1603 += 16;
              v1606 = (v1606 + v79);
              v52 = a9;
            }

            while (v1603 != 64);
            break;
          case 3:
            v1680 = 0;
            v1681 = (v96 - 2 * v79);
            v1682 = (v1681 + v79 + v79);
            v93 = vzip1q_s8(*(v1682 + v79 + v79), v21);
            v263 = vzip1q_s8(*(v1682 + v79), v21);
            v94 = vzip1q_s8(*v1682, v21);
            v95 = vzip1q_s8(*(v1681 + v79), v21);
            v52 = vzip1q_s8(*v1681, v21);
            v1683 = (v86 + 5 * v79 + v2681 + v79 * v2682 - 2 * v79);
            v259 = v2718;
            v260 = v2707;
            v261 = v88;
            do
            {
              a9 = v95;
              v95 = v94;
              v94 = v263;
              v263 = v93;
              v93 = vzip1q_s8(*v1683, v21);
              v1684 = vsubq_s16(vshlq_n_s16(vaddq_s16(v95, v94), 2uLL), vaddq_s16(a9, v263));
              a11 = vshlq_n_s16(v1684, 2uLL);
              v1685 = vaddq_s16(vaddq_s16(v52, v1684), a11);
              a10 = vaddq_s16(v93, v22);
              *(&v2770 + v1680) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(v1685, a10), 5uLL))), v94);
              v1680 += 16;
              v1683 = (v1683 + v79);
              v52 = a9;
            }

            while (v1680 != 64);
            break;
          case 4:
            sub_27729C91C(&v2770, 0x10u, v96, v79);
            v263 = sub_27729C91C(&v2770.i64[1], 0x10u, (v96 + 1), v79);
            goto LABEL_926;
          case 5:
            *v1988.i64 = sub_27729CAF0(&v2770, 0x10u, v96, v79, v92, *v93.i64, *v94.i64, *v95.i64, *v52.i64, a9, a10, a11);
            *v263.i64 = sub_27729CAF0(&v2770.i64[1], 0x10u, (v96 + 1), v79, v1988, v1989, v1990, v1991, v1992, v1993, v1994, v1995);
            goto LABEL_926;
          case 6:
            *v2050.i64 = sub_27729CDD0(&v2770, 0x10u, v96, v79, v92, v93, v94, v95, v52, a9, a10, a11);
            *v263.i64 = sub_27729CDD0(&v2770.i64[1], 0x10u, (v96 + 1), v79, v2050, v2051, v2052, v2053, v2054, v2055, v2056, v2057);
            goto LABEL_926;
          case 7:
            v1689 = sub_27729D274(&v2770, 0x10u, v96, v79, *v92.i64, *v93.i64, *v94.i64, *v95.i64, *v52.i64, a9.n128_f64[0], a10, a11);
            *v263.i64 = sub_27729D274(&v2770.i64[1], 0x10u, (v96 + 1), v79, v1689, v1690, v1691, v1692, v1693, v1694, v1695, v1696);
            goto LABEL_926;
          case 8:
            sub_27729D550(&v2770, 0x10u, v96, v79);
            v263 = sub_27729D550(&v2770.i64[1], 0x10u, (v96 + 1), v79);
            goto LABEL_926;
          case 9:
            sub_27729D714(&v2770, 0x10u, v96, v79);
            *v263.i64 = sub_27729D714(&v2770.i64[1], 0x10u, (v96 + 1), v79);
            goto LABEL_926;
          case 10:
            sub_27729B7DC(&v2770, 16, v96, v79, 4);
            goto LABEL_926;
          case 11:
            sub_27729DE6C(&v2770, 0x10u, v96, v79);
            *v263.i64 = sub_27729DE6C(&v2770.i64[1], 0x10u, (v96 + 1), v79);
            goto LABEL_926;
          case 12:
            sub_27729E5C4(&v2770, 0x10u, v96, v79);
            v263 = sub_27729E5C4(&v2770.i64[1], 0x10u, (v96 + 1), v79);
            goto LABEL_926;
          case 13:
            *v2042.i64 = sub_27729E798(&v2770, 0x10u, v96, v79, v92, *v93.i64, *v94.i64, *v95.i64, *v52.i64, a9, a10, a11);
            *v263.i64 = sub_27729E798(&v2770.i64[1], 0x10u, (v96 + 1), v79, v2042, v2043, v2044, v2045, v2046, v2047, v2048, v2049);
            goto LABEL_926;
          case 14:
            *v1529.i64 = sub_27729EA7C(&v2770, 0x10u, v96, v79, v92, v93, v94, v95, v52, a9, a10, a11);
            *v263.i64 = sub_27729EA7C(&v2770.i64[1], 0x10u, (v96 + 1), v79, v1529, v1530, v1531, v1532, v1533, v1534, v1535, v1536);
            goto LABEL_926;
          case 15:
            v1664 = sub_27729EF20(&v2770, 0x10u, v96, v79, *v92.i64, *v93.i64, *v94.i64, *v95.i64, *v52.i64, a9.n128_f64[0], a10, a11);
            *v263.i64 = sub_27729EF20(&v2770.i64[1], 0x10u, (v96 + 1), v79, v1664, v1665, v1666, v1667, v1668, v1669, v1670, v1671);
LABEL_926:
            v22.i64[0] = 0x10001000100010;
            v22.i64[1] = 0x10001000100010;
            v21 = v2762;
            v259 = v2718;
            v260 = v2707;
            v261 = v2710;
            break;
          default:
            v258 = 0;
            v259 = v2718;
            v260 = v2707;
            v261 = v88;
            do
            {
              v262 = &v2770.i8[v258];
              v263 = *v96;
              v96 = (v96 + v79);
              v93.i64[0] = v21.i64[0];
              vst2_s8(v262, *(&v93 - 8));
              v258 += 16;
            }

            while (v258 != 64);
            break;
        }

        switch(v260)
        {
          case 1:
            v2114 = 0;
            v2115 = (v259 - 2 * v2713);
            v2116 = (v2115 + v2713 + v2713);
            v2117 = vzip1q_s8(*(v2116 + v2713 + v2713), v21);
            v2118 = vzip1q_s8(*(v2116 + v2713), v21);
            v2119 = vzip1q_s8(*v2116, v21);
            v2120 = vzip1q_s8(*(v2115 + v2713), v21);
            v2121 = vzip1q_s8(*v2115, v21);
            v2122 = (v2683 + 5 * v2713 + v2685 + v2713 * v2684 - 2 * v2713);
            v2060 = v2740;
            v2061 = v2706;
            v2062 = v2670;
            do
            {
              v2123 = v2120;
              v2120 = v2119;
              v2119 = v2118;
              v2118 = v2117;
              v2117 = vzip1q_s8(*v2122, v21);
              v2124 = vsubq_s16(vshlq_n_s16(vaddq_s16(v2120, v2119), 2uLL), vaddq_s16(v2123, v2118));
              *(&v2774 + v2114) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v2121, v2124), vshlq_n_s16(v2124, 2uLL)), vaddq_s16(v2117, v22)), 5uLL))), v2120);
              v2114 += 16;
              v2122 = (v2122 + v2713);
              v2121 = v2123;
            }

            while (v2114 != 64);
            break;
          case 2:
            v2074 = 0;
            v2075 = (v259 - 2 * v2713);
            v2076 = (v2075 + v2713 + v2713);
            v2077 = vzip1q_s8(*(v2076 + v2713 + v2713), v21);
            v2078 = vzip1q_s8(*(v2076 + v2713), v21);
            v2079 = vzip1q_s8(*v2076, v21);
            v2080 = vzip1q_s8(*(v2075 + v2713), v21);
            v2081 = vzip1q_s8(*v2075, v21);
            v2082 = (v2683 + 5 * v2713 + v2685 + v2713 * v2684 - 2 * v2713);
            v2060 = v2740;
            v2061 = v2706;
            v2062 = v2670;
            do
            {
              v2083 = v2080;
              v2080 = v2079;
              v2079 = v2078;
              v2078 = v2077;
              v2084 = &v2774.i8[v2074];
              v2077 = vzip1q_s8(*v2082, v21);
              v2085 = vsubq_s16(vshlq_n_s16(vaddq_s16(v2080, v2079), 2uLL), vaddq_s16(v2083, v2078));
              v2085.val[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v2081, v2085), vshlq_n_s16(v2085, 2uLL)), vaddq_s16(v2077, v22)), 5uLL));
              v2086 = v21.i64[0];
              vst2_s8(v2084, v2085);
              v2074 += 16;
              v2082 = (v2082 + v2713);
              v2081 = v2083;
            }

            while (v2074 != 64);
            break;
          case 3:
            v2095 = 0;
            v2096 = (v259 - 2 * v2713);
            v2097 = (v2096 + v2713 + v2713);
            v2098 = vzip1q_s8(*(v2097 + v2713 + v2713), v21);
            v2099 = vzip1q_s8(*(v2097 + v2713), v21);
            v2100 = vzip1q_s8(*v2097, v21);
            v2101 = vzip1q_s8(*(v2096 + v2713), v21);
            v2102 = vzip1q_s8(*v2096, v21);
            v2103 = (v2683 + 5 * v2713 + v2685 + v2713 * v2684 - 2 * v2713);
            v2060 = v2740;
            v2061 = v2706;
            v2062 = v2670;
            do
            {
              v2104 = v2101;
              v2101 = v2100;
              v2100 = v2099;
              v2099 = v2098;
              v2098 = vzip1q_s8(*v2103, v21);
              v2105 = vsubq_s16(vshlq_n_s16(vaddq_s16(v2101, v2100), 2uLL), vaddq_s16(v2104, v2099));
              *(&v2774 + v2095) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v2102, v2105), vshlq_n_s16(v2105, 2uLL)), vaddq_s16(v2098, v22)), 5uLL))), v2100);
              v2095 += 16;
              v2103 = (v2103 + v2713);
              v2102 = v2104;
            }

            while (v2095 != 64);
            break;
          case 4:
            sub_27729C91C(&v2774, 0x10u, v259, v2713);
            sub_27729C91C(&v2774.i64[1], 0x10u, (v2718 + 1), v2713);
            goto LABEL_952;
          case 5:
            *v2125.i64 = sub_27729CAF0(&v2774, 0x10u, v259, v2713, v263, *v93.i64, *v94.i64, *v95.i64, *v52.i64, a9, a10, a11);
            sub_27729CAF0(&v2774.i64[1], 0x10u, (v2718 + 1), v2713, v2125, v2126, v2127, v2128, v2129, v2130, v2131, v2132);
            goto LABEL_952;
          case 6:
            *v2141.i64 = sub_27729CDD0(&v2774, 0x10u, v259, v2713, v263, v93, v94, v95, v52, a9, a10, a11);
            sub_27729CDD0(&v2774.i64[1], 0x10u, (v2718 + 1), v2713, v2141, v2142, v2143, v2144, v2145, v2146, v2147, v2148);
            goto LABEL_952;
          case 7:
            v2106 = sub_27729D274(&v2774, 0x10u, v259, v2713, *v263.i64, *v93.i64, *v94.i64, *v95.i64, *v52.i64, a9.n128_f64[0], a10, a11);
            sub_27729D274(&v2774.i64[1], 0x10u, (v2718 + 1), v2713, v2106, v2107, v2108, v2109, v2110, v2111, v2112, v2113);
            goto LABEL_952;
          case 8:
            sub_27729D550(&v2774, 0x10u, v259, v2713);
            sub_27729D550(&v2774.i64[1], 0x10u, (v2718 + 1), v2713);
            goto LABEL_952;
          case 9:
            sub_27729D714(&v2774, 0x10u, v259, v2713);
            sub_27729D714(&v2774.i64[1], 0x10u, (v2718 + 1), v2713);
            goto LABEL_952;
          case 10:
            sub_27729B7DC(&v2774, 16, v259, v2713, 4);
            goto LABEL_952;
          case 11:
            sub_27729DE6C(&v2774, 0x10u, v259, v2713);
            sub_27729DE6C(&v2774.i64[1], 0x10u, (v2718 + 1), v2713);
            goto LABEL_952;
          case 12:
            sub_27729E5C4(&v2774, 0x10u, v259, v2713);
            sub_27729E5C4(&v2774.i64[1], 0x10u, (v2718 + 1), v2713);
            goto LABEL_952;
          case 13:
            *v2133.i64 = sub_27729E798(&v2774, 0x10u, v259, v2713, v263, *v93.i64, *v94.i64, *v95.i64, *v52.i64, a9, a10, a11);
            sub_27729E798(&v2774.i64[1], 0x10u, (v2718 + 1), v2713, v2133, v2134, v2135, v2136, v2137, v2138, v2139, v2140);
            goto LABEL_952;
          case 14:
            *v2066.i64 = sub_27729EA7C(&v2774, 0x10u, v259, v2713, v263, v93, v94, v95, v52, a9, a10, a11);
            sub_27729EA7C(&v2774.i64[1], 0x10u, (v2718 + 1), v2713, v2066, v2067, v2068, v2069, v2070, v2071, v2072, v2073);
            goto LABEL_952;
          case 15:
            v2087 = sub_27729EF20(&v2774, 0x10u, v259, v2713, *v263.i64, *v93.i64, *v94.i64, *v95.i64, *v52.i64, a9.n128_f64[0], a10, a11);
            sub_27729EF20(&v2774.i64[1], 0x10u, (v2718 + 1), v2713, v2087, v2088, v2089, v2090, v2091, v2092, v2093, v2094);
LABEL_952:
            v2060 = v2740;
            v2061 = v2706;
            v2062 = v2670;
            break;
          default:
            v2059 = 0;
            v2060 = v2740;
            v2061 = v2706;
            v2062 = v2670;
            do
            {
              v2063 = &v2774.i8[v2059];
              v2064 = *v259;
              v259 = (v259 + v2713);
              v2065 = v21.i64[0];
              vst2_s8(v2063, v2064);
              v2059 += 16;
            }

            while (v2059 != 64);
            break;
        }

        v2149 = vrhaddq_u16(v2770, v2774);
        v2150 = vrhaddq_u16(v2771, v2775);
        v2151 = vrhaddq_u16(v2772, v2776);
        v2152 = vrhaddq_u16(v2773[0], v2777[0]);
        if (a2)
        {
          v2149 = vaddq_s16(*v76, v2149);
          v2150 = vaddq_s16(*(v76 + 32), v2150);
          v2151 = vaddq_s16(*(v76 + 64), v2151);
          v2152 = vaddq_s16(*(v76 + 96), v2152);
        }

        *v74 = vqmovun_s16(v2149);
        *(v74 + v2060) = vqmovun_s16(v2150);
        *(v74 + v2061) = vqmovun_s16(v2151);
        *(v74 + v2062) = vqmovun_s16(v2152);
        sub_2772906A8(&v2779, _X27, v82, &v2788);
        sub_2772906A8(&v2784, v2700, v261, &v2792);
        v2153 = vrhaddq_u16(v2779, v2784);
        v2154 = vrhaddq_u16(v2780, v2785);
        v13 = a3;
        if (a3)
        {
          v2153 = vaddq_s16(*v81, v2153);
          v2154 = vaddq_s16(*(v81 + 32), v2154);
        }

        v23.i64[0] = 0x20002000200020;
        v23.i64[1] = 0x20002000200020;
        *v78 = vqmovun_s16(v2153);
        *(v78 + v2741) = vqmovun_s16(v2154);
        v11 = v2748;
        v21 = v2762;
        v22.i64[0] = 0x10001000100010;
        v22.i64[1] = 0x10001000100010;
      }

      else
      {
        v169 = v86;
        a2 = v75;
        if (v2725 == 8)
        {
          v2673 = v90;
          v2676 = v98;
          v2699 = v90 + v72 + v98;
          v2747 = v11;
          v2761 = v21;
          switch(v84)
          {
            case 1:
              v1653 = 0;
              v1654 = (v96 - 2 * v79);
              v1655 = (v1654 + v79 + v79);
              v1656 = vzip1q_s8(*(v1655 + v79 + v79), v21);
              v1657 = vzip1q_s8(*(v1655 + v79), v21);
              v1658 = vzip1q_s8(*v1655, v21);
              v1659 = vzip1q_s8(*(v1654 + v79), v21);
              v1660 = vzip1q_s8(*v1654, v21);
              v1661 = (v86 + 5 * v79 + v2681 + v79 * v2682 - 2 * v79);
              v252 = v2718;
              v253 = v2707;
              v254 = v2710;
              do
              {
                v1662 = v1659;
                v1659 = v1658;
                v1658 = v1657;
                v1657 = v1656;
                v1656 = vzip1q_s8(*v1661, v21);
                v1663 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1659, v1658), 2uLL), vaddq_s16(v1662, v1657));
                *(&v2770 + v1653) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1660, v1663), vshlq_n_s16(v1663, 2uLL)), vaddq_s16(v1656, v22)), 5uLL))), v1659);
                v1653 += 16;
                v1661 = (v1661 + v79);
                v1660 = v1662;
              }

              while (v1653 != 128);
              break;
            case 2:
              v1561 = 0;
              v1562 = (v96 - 2 * v79);
              v1563 = (v1562 + v79 + v79);
              v1564 = vzip1q_s8(*(v1563 + v79 + v79), v21);
              v1565 = vzip1q_s8(*(v1563 + v79), v21);
              v1566 = vzip1q_s8(*v1563, v21);
              v1567 = vzip1q_s8(*(v1562 + v79), v21);
              v1568 = vzip1q_s8(*v1562, v21);
              v1569 = (v86 + 5 * v79 + v2681 + v79 * v2682 - 2 * v79);
              v252 = v2718;
              v253 = v2707;
              v254 = v2710;
              do
              {
                v1570 = v1567;
                v1567 = v1566;
                v1566 = v1565;
                v1565 = v1564;
                v1571 = &v2770.i8[v1561];
                v1564 = vzip1q_s8(*v1569, v21);
                v1572 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1567, v1566), 2uLL), vaddq_s16(v1570, v1565));
                v1572.val[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1568, v1572), vshlq_n_s16(v1572, 2uLL)), vaddq_s16(v1564, v22)), 5uLL));
                v1573 = v21.i64[0];
                vst2_s8(v1571, v1572);
                v1561 += 16;
                v1569 = (v1569 + v79);
                v1568 = v1570;
              }

              while (v1561 != 128);
              break;
            case 3:
              v1592 = 0;
              v1593 = (v96 - 2 * v79);
              v1594 = (v1593 + v79 + v79);
              v1595 = vzip1q_s8(*(v1594 + v79 + v79), v21);
              v1596 = vzip1q_s8(*(v1594 + v79), v21);
              v1597 = vzip1q_s8(*v1594, v21);
              v1598 = vzip1q_s8(*(v1593 + v79), v21);
              v1599 = vzip1q_s8(*v1593, v21);
              v1600 = (v86 + 5 * v79 + v2681 + v79 * v2682 - 2 * v79);
              v252 = v2718;
              v253 = v2707;
              v254 = v2710;
              do
              {
                v1601 = v1598;
                v1598 = v1597;
                v1597 = v1596;
                v1596 = v1595;
                v1595 = vzip1q_s8(*v1600, v21);
                v1602 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1598, v1597), 2uLL), vaddq_s16(v1601, v1596));
                *(&v2770 + v1592) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1599, v1602), vshlq_n_s16(v1602, 2uLL)), vaddq_s16(v1595, v22)), 5uLL))), v1597);
                v1592 += 16;
                v1600 = (v1600 + v79);
                v1599 = v1601;
              }

              while (v1592 != 128);
              break;
            case 4:
              v1546 = 0;
              v1547 = (v96 - 2);
              v252 = v2718;
              v253 = v2707;
              v254 = v2710;
              do
              {
                v1548 = *v1547;
                v1547 = (v1547 + v79);
                v1549 = vzip1q_s8(vextq_s8(v1548, v1548, 2uLL), v21);
                v1550 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1549, vzip1q_s8(vextq_s8(v1548, v1548, 3uLL), v21)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1548, v1548, 1uLL), v21), vzip1q_s8(vextq_s8(v1548, v1548, 4uLL), v21)));
                *(&v2770 + v1546) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1550, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1548, v21), vzip1q_s8(vextq_s8(v1548, v1548, 5uLL), v21)), v1550)), v22), 5uLL))), v1549);
                v1546 += 16;
              }

              while (v1546 != 128);
              break;
            case 5:
              v1579 = v96;
              v1580 = v79;
              v1581 = 2;
              goto LABEL_822;
            case 6:
              sub_27729BFC4(v2770.i8, 0x10u, v96, v79);
              goto LABEL_832;
            case 7:
              v1579 = v96;
              v1580 = v79;
              v1581 = 3;
LABEL_822:
              v1774 = 2;
              goto LABEL_831;
            case 8:
              v1924 = 0;
              v1925 = (v96 - 2);
              v252 = v2718;
              v253 = v2707;
              v254 = v2710;
              do
              {
                v1926 = &v2770.i8[v1924];
                v1927 = *v1925;
                v1925 = (v1925 + v79);
                v1928 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1927, v1927, 2uLL), v21), vzip1q_s8(vextq_s8(v1927, v1927, 3uLL), v21)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1927, v1927, 1uLL), v21), vzip1q_s8(vextq_s8(v1927, v1927, 4uLL), v21)));
                *v1927.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1928, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1927, v21), vzip1q_s8(vextq_s8(v1927, v1927, 5uLL), v21)), v1928)), v22), 5uLL));
                v1928.i64[0] = v21.i64[0];
                vst2_s8(v1926, v1927);
                v1924 += 16;
              }

              while (v1924 != 128);
              break;
            case 9:
              sub_27729B614(v2770.i8, 0x10u, v96, v79, 8);
              goto LABEL_832;
            case 10:
              sub_27729B7DC(&v2770, 16, v96, v79, 8);
              goto LABEL_832;
            case 11:
              sub_27729B98C(v2770.i8, 0x10u, v96, v79, 8);
              goto LABEL_832;
            case 12:
              v1551 = 0;
              v1552 = (v96 - 2);
              v252 = v2718;
              v253 = v2707;
              v254 = v2710;
              do
              {
                v1553 = *v1552;
                v1552 = (v1552 + v79);
                v1554 = vzip1q_s8(vextq_s8(v1553, v1553, 3uLL), v21);
                v1555 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1553, v1553, 2uLL), v21), v1554), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1553, v1553, 1uLL), v21), vzip1q_s8(vextq_s8(v1553, v1553, 4uLL), v21)));
                *(&v2770 + v1551) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1555, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1553, v21), vzip1q_s8(vextq_s8(v1553, v1553, 5uLL), v21)), v1555)), v22), 5uLL))), v1554);
                v1551 += 16;
              }

              while (v1551 != 128);
              break;
            case 13:
              v1579 = v96;
              v1580 = v79;
              v1581 = 2;
              goto LABEL_830;
            case 14:
              sub_27729C39C(v2770.i8, 0x10u, v96, v79);
              goto LABEL_832;
            case 15:
              v1579 = v96;
              v1580 = v79;
              v1581 = 3;
LABEL_830:
              v1774 = 3;
LABEL_831:
              sub_27729C774(v2770.i8, v1579, v1580, 8, v1581, v1774);
LABEL_832:
              v22.i64[0] = 0x10001000100010;
              v22.i64[1] = 0x10001000100010;
              v11 = v2747;
              v21 = v2761;
              v252 = v2718;
              v253 = v2707;
              v254 = v2710;
              break;
            default:
              v251 = 0;
              v252 = v2718;
              v253 = v2707;
              v254 = v2710;
              do
              {
                v255 = &v2770.i8[v251];
                v256 = *v96;
                v96 = (v96 + v79);
                v257 = v21.i64[0];
                vst2_s8(v255, v256);
                v251 += 16;
              }

              while (v251 != 128);
              break;
          }

          switch(v253)
          {
            case 1:
              v1849 = 0;
              v1850 = (v252 - 2 * v2713);
              v1851 = (v1850 + v2713 + v2713);
              v1852 = vzip1q_s8(*(v1851 + v2713 + v2713), v21);
              v1853 = vzip1q_s8(*(v1851 + v2713), v21);
              v1854 = vzip1q_s8(*v1851, v21);
              v1855 = vzip1q_s8(*(v1850 + v2713), v21);
              v1856 = vzip1q_s8(*v1850, v21);
              v1857 = (v2683 + 5 * v2713 + v2685 + v2713 * v2684 - 2 * v2713);
              v1799 = v2694;
              v13 = a3;
              v1800 = v2740;
              v1801 = v2741;
              v1802 = v2706;
              v1804 = v2670;
              v1803 = v2673;
              v1805 = v2663;
              v23.i64[0] = 0x20002000200020;
              v23.i64[1] = 0x20002000200020;
              v1806 = v2699;
              v1807 = v2676;
              v1808 = v2688;
              do
              {
                v1858 = v1855;
                v1855 = v1854;
                v1854 = v1853;
                v1853 = v1852;
                v1852 = vzip1q_s8(*v1857, v21);
                v1859 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1855, v1854), 2uLL), vaddq_s16(v1858, v1853));
                *(&v2774 + v1849) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1856, v1859), vshlq_n_s16(v1859, 2uLL)), vaddq_s16(v1852, v22)), 5uLL))), v1855);
                v1849 += 16;
                v1857 = (v1857 + v2713);
                v1856 = v1858;
              }

              while (v1849 != 128);
              break;
            case 2:
              v1822 = 0;
              v1823 = (v252 - 2 * v2713);
              v1824 = (v1823 + v2713 + v2713);
              v1825 = vzip1q_s8(*(v1824 + v2713 + v2713), v21);
              v1826 = vzip1q_s8(*(v1824 + v2713), v21);
              v1827 = vzip1q_s8(*v1824, v21);
              v1828 = vzip1q_s8(*(v1823 + v2713), v21);
              v1829 = vzip1q_s8(*v1823, v21);
              v1830 = (v2683 + 5 * v2713 + v2685 + v2713 * v2684 - 2 * v2713);
              v1799 = v2694;
              v13 = a3;
              v1800 = v2740;
              v1801 = v2741;
              v1802 = v2706;
              v1804 = v2670;
              v1803 = v2673;
              v1805 = v2663;
              v23.i64[0] = 0x20002000200020;
              v23.i64[1] = 0x20002000200020;
              v1806 = v2699;
              v1807 = v2676;
              v1808 = v2688;
              do
              {
                v1831 = v1828;
                v1828 = v1827;
                v1827 = v1826;
                v1826 = v1825;
                v1832 = &v2774.i8[v1822];
                v1825 = vzip1q_s8(*v1830, v21);
                v1833 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1828, v1827), 2uLL), vaddq_s16(v1831, v1826));
                v1833.val[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1829, v1833), vshlq_n_s16(v1833, 2uLL)), vaddq_s16(v1825, v22)), 5uLL));
                v1834 = v21.i64[0];
                vst2_s8(v1832, v1833);
                v1822 += 16;
                v1830 = (v1830 + v2713);
                v1829 = v1831;
              }

              while (v1822 != 128);
              break;
            case 3:
              v1838 = 0;
              v1839 = (v252 - 2 * v2713);
              v1840 = (v1839 + v2713 + v2713);
              v1841 = vzip1q_s8(*(v1840 + v2713 + v2713), v21);
              v1842 = vzip1q_s8(*(v1840 + v2713), v21);
              v1843 = vzip1q_s8(*v1840, v21);
              v1844 = vzip1q_s8(*(v1839 + v2713), v21);
              v1845 = vzip1q_s8(*v1839, v21);
              v1846 = (v2683 + 5 * v2713 + v2685 + v2713 * v2684 - 2 * v2713);
              v1799 = v2694;
              v13 = a3;
              v1800 = v2740;
              v1801 = v2741;
              v1802 = v2706;
              v1804 = v2670;
              v1803 = v2673;
              v1805 = v2663;
              v23.i64[0] = 0x20002000200020;
              v23.i64[1] = 0x20002000200020;
              v1806 = v2699;
              v1807 = v2676;
              v1808 = v2688;
              do
              {
                v1847 = v1844;
                v1844 = v1843;
                v1843 = v1842;
                v1842 = v1841;
                v1841 = vzip1q_s8(*v1846, v21);
                v1848 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1844, v1843), 2uLL), vaddq_s16(v1847, v1842));
                *(&v2774 + v1838) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1845, v1848), vshlq_n_s16(v1848, 2uLL)), vaddq_s16(v1841, v22)), 5uLL))), v1843);
                v1838 += 16;
                v1846 = (v1846 + v2713);
                v1845 = v1847;
              }

              while (v1838 != 128);
              break;
            case 4:
              v1812 = 0;
              v1813 = (&v252[-1].val[1] + 6);
              v1799 = v2694;
              v13 = a3;
              v1800 = v2740;
              v1801 = v2741;
              v1802 = v2706;
              v1804 = v2670;
              v1803 = v2673;
              v1805 = v2663;
              v23.i64[0] = 0x20002000200020;
              v23.i64[1] = 0x20002000200020;
              v1806 = v2699;
              v1807 = v2676;
              v1808 = v2688;
              do
              {
                v1814 = *v1813;
                v1813 = (v1813 + v2713);
                v1815 = vzip1q_s8(vextq_s8(v1814, v1814, 2uLL), v21);
                v1816 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1815, vzip1q_s8(vextq_s8(v1814, v1814, 3uLL), v21)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1814, v1814, 1uLL), v21), vzip1q_s8(vextq_s8(v1814, v1814, 4uLL), v21)));
                *(&v2774 + v1812) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1816, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1814, v21), vzip1q_s8(vextq_s8(v1814, v1814, 5uLL), v21)), v1816)), v22), 5uLL))), v1815);
                v1812 += 16;
              }

              while (v1812 != 128);
              break;
            case 5:
              v1835 = v252;
              v1836 = v2713;
              v1837 = 2;
              goto LABEL_858;
            case 6:
              sub_27729BFC4(v2774.i8, 0x10u, v252, v2713);
              goto LABEL_863;
            case 7:
              v1835 = v252;
              v1836 = v2713;
              v1837 = 3;
LABEL_858:
              v1860 = 2;
              goto LABEL_862;
            case 8:
              v1929 = 0;
              v1930 = (&v252[-1].val[1] + 6);
              v1799 = v2694;
              v13 = a3;
              v1800 = v2740;
              v1801 = v2741;
              v1802 = v2706;
              v1804 = v2670;
              v1803 = v2673;
              v1805 = v2663;
              v23.i64[0] = 0x20002000200020;
              v23.i64[1] = 0x20002000200020;
              v1806 = v2699;
              v1807 = v2676;
              v1808 = v2688;
              do
              {
                v1931 = &v2774.i8[v1929];
                v1932 = *v1930;
                v1930 = (v1930 + v2713);
                v1933 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1932, v1932, 2uLL), v21), vzip1q_s8(vextq_s8(v1932, v1932, 3uLL), v21)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1932, v1932, 1uLL), v21), vzip1q_s8(vextq_s8(v1932, v1932, 4uLL), v21)));
                *v1932.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1933, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1932, v21), vzip1q_s8(vextq_s8(v1932, v1932, 5uLL), v21)), v1933)), v22), 5uLL));
                v1933.i64[0] = v21.i64[0];
                vst2_s8(v1931, v1932);
                v1929 += 16;
              }

              while (v1929 != 128);
              break;
            case 9:
              sub_27729B614(v2774.i8, 0x10u, v252, v2713, 8);
              goto LABEL_863;
            case 10:
              sub_27729B7DC(&v2774, 16, v252, v2713, 8);
              goto LABEL_863;
            case 11:
              sub_27729B98C(v2774.i8, 0x10u, v252, v2713, 8);
              goto LABEL_863;
            case 12:
              v1817 = 0;
              v1818 = (&v252[-1].val[1] + 6);
              v1799 = v2694;
              v13 = a3;
              v1800 = v2740;
              v1801 = v2741;
              v1802 = v2706;
              v1804 = v2670;
              v1803 = v2673;
              v1805 = v2663;
              v23.i64[0] = 0x20002000200020;
              v23.i64[1] = 0x20002000200020;
              v1806 = v2699;
              v1807 = v2676;
              v1808 = v2688;
              do
              {
                v1819 = *v1818;
                v1818 = (v1818 + v2713);
                v1820 = vzip1q_s8(vextq_s8(v1819, v1819, 3uLL), v21);
                v1821 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1819, v1819, 2uLL), v21), v1820), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1819, v1819, 1uLL), v21), vzip1q_s8(vextq_s8(v1819, v1819, 4uLL), v21)));
                *(&v2774 + v1817) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1821, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1819, v21), vzip1q_s8(vextq_s8(v1819, v1819, 5uLL), v21)), v1821)), v22), 5uLL))), v1820);
                v1817 += 16;
              }

              while (v1817 != 128);
              break;
            case 13:
              v1835 = v252;
              v1836 = v2713;
              v1837 = 2;
              goto LABEL_861;
            case 14:
              sub_27729C39C(v2774.i8, 0x10u, v252, v2713);
              goto LABEL_863;
            case 15:
              v1835 = v252;
              v1836 = v2713;
              v1837 = 3;
LABEL_861:
              v1860 = 3;
LABEL_862:
              sub_27729C774(v2774.i8, v1835, v1836, 8, v1837, v1860);
LABEL_863:
              v22.i64[0] = 0x10001000100010;
              v22.i64[1] = 0x10001000100010;
              v11 = v2747;
              v21 = v2761;
              v1799 = v2694;
              v13 = a3;
              v1800 = v2740;
              v1801 = v2741;
              v1802 = v2706;
              v1804 = v2670;
              v1803 = v2673;
              v1805 = v2663;
              v23.i64[0] = 0x20002000200020;
              v23.i64[1] = 0x20002000200020;
              v1806 = v2699;
              v1807 = v2676;
              v1808 = v2688;
              break;
            default:
              v1798 = 0;
              v1799 = v2694;
              v13 = a3;
              v1800 = v2740;
              v1801 = v2741;
              v1802 = v2706;
              v1804 = v2670;
              v1803 = v2673;
              v1805 = v2663;
              v23.i64[0] = 0x20002000200020;
              v23.i64[1] = 0x20002000200020;
              v1806 = v2699;
              v1807 = v2676;
              v1808 = v2688;
              do
              {
                v1809 = &v2774.i8[v1798];
                v1810 = *v252;
                v252 = (v252 + v2713);
                v1811 = v21.i64[0];
                vst2_s8(v1809, v1810);
                v1798 += 16;
              }

              while (v1798 != 128);
              break;
          }

          v1865 = 1;
          v1866 = &v2770;
          do
          {
            v1867 = v1865;
            v1868 = vrhaddq_u16(*v1866, v1866[32]);
            v1869 = vrhaddq_u16(v1866[1], v1866[33]);
            v1870 = vrhaddq_u16(v1866[2], v1866[34]);
            v1871 = vrhaddq_u16(v1866[3], v1866[35]);
            if (a2)
            {
              v1872 = *v76;
              v1873 = *(v76 + 32);
              v1874 = *(v76 + 64);
              v1875 = *(v76 + 96);
              v76 += 128;
              v1868 = vaddq_s16(v1872, v1868);
              v1869 = vaddq_s16(v1873, v1869);
              v1870 = vaddq_s16(v1874, v1870);
              v1871 = vaddq_s16(v1875, v1871);
            }

            v1865 = 0;
            v1866 += 4;
            *v74 = vqmovun_s16(v1868);
            *(v74 + v1800) = vqmovun_s16(v1869);
            *(v74 + v1802) = vqmovun_s16(v1870);
            *(v74 + v1804) = vqmovun_s16(v1871);
            v74 = (v74 + v1805);
          }

          while ((v1867 & 1) != 0);
          v1876 = 0;
          _X9 = &_X27->i8[v82];
          __asm { PRFM            #0, [X9] }

          v1868.i64[0] = _X27->i64[0];
          v1879 = vqtbl1q_s8(v1868, xmmword_2773B3E00);
          v1879.i16[3] = _X27->i16[4];
          v1880 = vzip1q_s8(v1879, v21);
          v1881 = vzip1q_s8(v1868, v21);
          v1882 = v2788;
          v1883 = v2789;
          v1884 = v2790;
          v1885 = v2791;
          v1886 = v2689;
          if (v2689 <= -16)
          {
            v1886 = -16;
          }

          v1887 = v2690;
          if (v1886 < v2690)
          {
            v1887 = v1886;
          }

          v1888 = v2680 + v82 + v1887;
          v1889 = v2680 + v1887 + 2 * v82;
          do
          {
            _X12 = v1889 + v2677;
            __asm { PRFM            #0, [X12] }

            v1892 = vmlaq_s16(vmulq_s16(v1883, v1880), v1882, v1881);
            v1880.i64[0] = *(v1888 + v2677);
            v1881 = vzip1q_s8(v1880, v21);
            v1893 = vqtbl1q_s8(v1880, xmmword_2773B3E00);
            v1893.i16[3] = *(v1888 + v2677 + 8);
            v1880 = vzip1q_s8(v1893, v21);
            *(&v2779 + v1876) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1892, v1884, v1881), v1885, v1880), v23), 6uLL);
            v1876 += 16;
            v1888 += v82;
            v1889 += v82;
          }

          while (v1876 != 64);
          _X8 = v1806 + v254;
          __asm { PRFM            #0, [X8] }

          v1882.i64[0] = *v1806;
          v1896 = vqtbl1q_s8(v1882, xmmword_2773B3E00);
          v1896.i16[3] = *(v1806 + 8);
          v1897 = vzip1q_s8(v1896, v21);
          v1898 = vzip1q_s8(v1882, v21);
          v1899 = v2792;
          v1900 = v2793;
          v1901 = v2794;
          v1902 = v2795;
          v1903 = v2691;
          if (v2691 <= -16)
          {
            v1903 = -16;
          }

          v1904 = v1808;
          if (v1903 < v1808)
          {
            v1904 = v1903;
          }

          v1905 = v1803 + v254 + v1904;
          v1906 = v1803 + v1904 + 2 * v254;
          v1907 = 256;
          do
          {
            _X12 = v1906 + v1807;
            __asm { PRFM            #0, [X12] }

            v1910 = vmlaq_s16(vmulq_s16(v1900, v1897), v1899, v1898);
            v1897.i64[0] = *(v1905 + v1807);
            v1898 = vzip1q_s8(v1897, v21);
            v1911 = vqtbl1q_s8(v1897, xmmword_2773B3E00);
            v1911.i16[3] = *(v1905 + v1807 + 8);
            v1897 = vzip1q_s8(v1911, v21);
            *(&v2779 + v1907) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1910, v1901, v1898), v1902, v1897), v23), 6uLL);
            v1907 += 16;
            v1905 += v254;
            v1906 += v254;
          }

          while (v1907 != 320);
          a9 = v2782[0];
          a10 = v2786;
          a11 = v2787;
          v1912 = vrhaddq_u16(v2779, v2784);
          v1913 = vrhaddq_u16(v2780, v2785);
          v1914 = vrhaddq_u16(v2781, v2786);
          v1915 = vrhaddq_u16(v2782[0], v2787);
          if (v13)
          {
            a9 = *(v81 + 32);
            a10 = *(v81 + 64);
            a11 = *(v81 + 96);
            v1912 = vaddq_s16(*v81, v1912);
            v1913 = vaddq_s16(a9, v1913);
            v1914 = vaddq_s16(a10, v1914);
            v1915 = vaddq_s16(a11, v1915);
          }

          *v78 = vqmovun_s16(v1912);
          *(v78 + v1801) = vqmovun_s16(v1913);
          *(v78 + v1799) = vqmovun_s16(v1914);
          *(v78 + v2664) = vqmovun_s16(v1915);
        }

        else
        {
          v13 = v80;
          if (v2725 == 16)
          {
            v2672 = v90;
            v2675 = v98;
            v2697 = v90 + v72 + v98;
            v2742 = v11;
            v2756 = v21;
            switch(v84)
            {
              case 1:
                v1775 = 0;
                v1776 = (v96 - 2 * v79);
                v1777 = (v1776 + v79 + v79);
                v1778 = vzip1q_s8(*(v1777 + v79 + v79), v21);
                v1779 = vzip1q_s8(*(v1777 + v79), v21);
                v1780 = vzip1q_s8(*v1777, v21);
                v1781 = vzip1q_s8(*(v1776 + v79), v21);
                v1782 = vzip1q_s8(*v1776, v21);
                v1783 = (v169 + 5 * v79 + v2681 + v79 * v2682 - 2 * v79);
                v171 = v2718;
                v172 = v2707;
                v173 = v2710;
                do
                {
                  v1784 = v1781;
                  v1781 = v1780;
                  v1780 = v1779;
                  v1779 = v1778;
                  v1778 = vzip1q_s8(*v1783, v21);
                  v1785 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1781, v1780), 2uLL), vaddq_s16(v1784, v1779));
                  *(&v2770 + v1775) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1782, v1785), vshlq_n_s16(v1785, 2uLL)), vaddq_s16(v1778, v22)), 5uLL))), v1781);
                  v1775 += 16;
                  v1783 = (v1783 + v79);
                  v1782 = v1784;
                }

                while (v1775 != 256);
                break;
              case 2:
                v1640 = 0;
                v1641 = (v96 - 2 * v79);
                v1642 = (v1641 + v79 + v79);
                v1643 = vzip1q_s8(*(v1642 + v79 + v79), v21);
                v1644 = vzip1q_s8(*(v1642 + v79), v21);
                v1645 = vzip1q_s8(*v1642, v21);
                v1646 = vzip1q_s8(*(v1641 + v79), v21);
                v1647 = vzip1q_s8(*v1641, v21);
                v1648 = (v169 + 5 * v79 + v2681 + v79 * v2682 - 2 * v79);
                v171 = v2718;
                v172 = v2707;
                v173 = v2710;
                do
                {
                  v1649 = v1646;
                  v1646 = v1645;
                  v1645 = v1644;
                  v1644 = v1643;
                  v1650 = &v2770.i8[v1640];
                  v1643 = vzip1q_s8(*v1648, v21);
                  v1651 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1646, v1645), 2uLL), vaddq_s16(v1649, v1644));
                  v1651.val[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1647, v1651), vshlq_n_s16(v1651, 2uLL)), vaddq_s16(v1643, v22)), 5uLL));
                  v1652 = v21.i64[0];
                  vst2_s8(v1650, v1651);
                  v1640 += 16;
                  v1648 = (v1648 + v79);
                  v1647 = v1649;
                }

                while (v1640 != 256);
                break;
              case 3:
                v1723 = 0;
                v1724 = (v96 - 2 * v79);
                v1725 = (v1724 + v79 + v79);
                v1726 = vzip1q_s8(*(v1725 + v79 + v79), v21);
                v1727 = vzip1q_s8(*(v1725 + v79), v21);
                v1728 = vzip1q_s8(*v1725, v21);
                v1729 = vzip1q_s8(*(v1724 + v79), v21);
                v1730 = vzip1q_s8(*v1724, v21);
                v1731 = (v169 + 5 * v79 + v2681 + v79 * v2682 - 2 * v79);
                v171 = v2718;
                v172 = v2707;
                v173 = v2710;
                do
                {
                  v1732 = v1729;
                  v1729 = v1728;
                  v1728 = v1727;
                  v1727 = v1726;
                  v1726 = vzip1q_s8(*v1731, v21);
                  v1733 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1729, v1728), 2uLL), vaddq_s16(v1732, v1727));
                  *(&v2770 + v1723) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1730, v1733), vshlq_n_s16(v1733, 2uLL)), vaddq_s16(v1726, v22)), 5uLL))), v1728);
                  v1723 += 16;
                  v1731 = (v1731 + v79);
                  v1730 = v1732;
                }

                while (v1723 != 256);
                break;
              case 4:
                v1556 = 0;
                v1557 = (v96 - 2);
                v171 = v2718;
                v172 = v2707;
                v173 = v2710;
                do
                {
                  v1558 = *v1557;
                  v1557 = (v1557 + v79);
                  v1559 = vzip1q_s8(vextq_s8(v1558, v1558, 2uLL), v21);
                  v1560 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1559, vzip1q_s8(vextq_s8(v1558, v1558, 3uLL), v21)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1558, v1558, 1uLL), v21), vzip1q_s8(vextq_s8(v1558, v1558, 4uLL), v21)));
                  *(&v2770 + v1556) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1560, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1558, v21), vzip1q_s8(vextq_s8(v1558, v1558, 5uLL), v21)), v1560)), v22), 5uLL))), v1559);
                  v1556 += 16;
                }

                while (v1556 != 256);
                break;
              case 5:
                v1686 = v96;
                v1687 = v79;
                v1688 = 2;
                goto LABEL_923;
              case 6:
                sub_27729B1B0(v2770.i8, 0x10u, v96, v79);
                goto LABEL_961;
              case 7:
                v1686 = v96;
                v1687 = v79;
                v1688 = 3;
LABEL_923:
                v2058 = 2;
                goto LABEL_960;
              case 8:
                v2279 = 0;
                v2280 = (v96 - 2);
                v171 = v2718;
                v172 = v2707;
                v173 = v2710;
                do
                {
                  v2281 = &v2770.i8[v2279];
                  v2282 = *v2280;
                  v2280 = (v2280 + v79);
                  v2283 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v2282, v2282, 2uLL), v21), vzip1q_s8(vextq_s8(v2282, v2282, 3uLL), v21)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v2282, v2282, 1uLL), v21), vzip1q_s8(vextq_s8(v2282, v2282, 4uLL), v21)));
                  *v2282.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v2283, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v2282, v21), vzip1q_s8(vextq_s8(v2282, v2282, 5uLL), v21)), v2283)), v22), 5uLL));
                  v2283.i64[0] = v21.i64[0];
                  vst2_s8(v2281, v2282);
                  v2279 += 16;
                }

                while (v2279 != 256);
                break;
              case 9:
                sub_27729B614(v2770.i8, 0x10u, v96, v79, 16);
                goto LABEL_961;
              case 10:
                sub_27729B7DC(&v2770, 16, v96, v79, 16);
                goto LABEL_961;
              case 11:
                sub_27729B98C(v2770.i8, 0x10u, v96, v79, 16);
                goto LABEL_961;
              case 12:
                v1574 = 0;
                v1575 = (v96 - 2);
                v171 = v2718;
                v172 = v2707;
                v173 = v2710;
                do
                {
                  v1576 = *v1575;
                  v1575 = (v1575 + v79);
                  v1577 = vzip1q_s8(vextq_s8(v1576, v1576, 3uLL), v21);
                  v1578 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1576, v1576, 2uLL), v21), v1577), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1576, v1576, 1uLL), v21), vzip1q_s8(vextq_s8(v1576, v1576, 4uLL), v21)));
                  *(&v2770 + v1574) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1578, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1576, v21), vzip1q_s8(vextq_s8(v1576, v1576, 5uLL), v21)), v1578)), v22), 5uLL))), v1577);
                  v1574 += 16;
                }

                while (v1574 != 256);
                break;
              case 13:
                v1686 = v96;
                v1687 = v79;
                v1688 = 2;
                goto LABEL_959;
              case 14:
                sub_27729BBEC(v2770.i8, 0x10u, v96, v79);
                goto LABEL_961;
              case 15:
                v1686 = v96;
                v1687 = v79;
                v1688 = 3;
LABEL_959:
                v2058 = 3;
LABEL_960:
                sub_27729C774(v2770.i8, v1686, v1687, 16, v1688, v2058);
LABEL_961:
                v22.i64[0] = 0x10001000100010;
                v22.i64[1] = 0x10001000100010;
                v11 = v2742;
                v21 = v2756;
                v171 = v2718;
                v172 = v2707;
                v173 = v2710;
                break;
              default:
                v170 = 0;
                v171 = v2718;
                v172 = v2707;
                v173 = v2710;
                do
                {
                  v174 = &v2770.i8[v170];
                  v175 = *v96;
                  v96 = (v96 + v79);
                  v176 = v21.i64[0];
                  vst2_s8(v174, v175);
                  v170 += 16;
                }

                while (v170 != 256);
                break;
            }

            switch(v172)
            {
              case 1:
                v2206 = 0;
                v2207 = (v171 - 2 * v2713);
                v2208 = (v2207 + v2713 + v2713);
                v2209 = vzip1q_s8(*(v2208 + v2713 + v2713), v21);
                v2210 = vzip1q_s8(*(v2208 + v2713), v21);
                v2211 = vzip1q_s8(*v2208, v21);
                v2212 = vzip1q_s8(*(v2207 + v2713), v21);
                v2213 = vzip1q_s8(*v2207, v21);
                v2214 = (v2683 + 5 * v2713 + v2685 + v2713 * v2684 - 2 * v2713);
                v2156 = v2694;
                v13 = a3;
                v2157 = v2740;
                v2158 = v2741;
                v2159 = v2706;
                v2160 = v2670;
                v2161 = v2663;
                v2162 = v2662;
                v23.i64[0] = 0x20002000200020;
                v23.i64[1] = 0x20002000200020;
                v2163 = v2697;
                v2165 = v2672;
                v2164 = v2675;
                do
                {
                  v2215 = v2212;
                  v2212 = v2211;
                  v2211 = v2210;
                  v2210 = v2209;
                  v2209 = vzip1q_s8(*v2214, v21);
                  v2216 = vsubq_s16(vshlq_n_s16(vaddq_s16(v2212, v2211), 2uLL), vaddq_s16(v2215, v2210));
                  *(&v2774 + v2206) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v2213, v2216), vshlq_n_s16(v2216, 2uLL)), vaddq_s16(v2209, v22)), 5uLL))), v2212);
                  v2206 += 16;
                  v2214 = (v2214 + v2713);
                  v2213 = v2215;
                }

                while (v2206 != 256);
                break;
              case 2:
                v2179 = 0;
                v2180 = (v171 - 2 * v2713);
                v2181 = (v2180 + v2713 + v2713);
                v2182 = vzip1q_s8(*(v2181 + v2713 + v2713), v21);
                v2183 = vzip1q_s8(*(v2181 + v2713), v21);
                v2184 = vzip1q_s8(*v2181, v21);
                v2185 = vzip1q_s8(*(v2180 + v2713), v21);
                v2186 = vzip1q_s8(*v2180, v21);
                v2187 = (v2683 + 5 * v2713 + v2685 + v2713 * v2684 - 2 * v2713);
                v2156 = v2694;
                v13 = a3;
                v2157 = v2740;
                v2158 = v2741;
                v2159 = v2706;
                v2160 = v2670;
                v2161 = v2663;
                v2162 = v2662;
                v23.i64[0] = 0x20002000200020;
                v23.i64[1] = 0x20002000200020;
                v2163 = v2697;
                v2165 = v2672;
                v2164 = v2675;
                do
                {
                  v2188 = v2185;
                  v2185 = v2184;
                  v2184 = v2183;
                  v2183 = v2182;
                  v2189 = &v2774.i8[v2179];
                  v2182 = vzip1q_s8(*v2187, v21);
                  v2190 = vsubq_s16(vshlq_n_s16(vaddq_s16(v2185, v2184), 2uLL), vaddq_s16(v2188, v2183));
                  v2190.val[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v2186, v2190), vshlq_n_s16(v2190, 2uLL)), vaddq_s16(v2182, v22)), 5uLL));
                  v2191 = v21.i64[0];
                  vst2_s8(v2189, v2190);
                  v2179 += 16;
                  v2187 = (v2187 + v2713);
                  v2186 = v2188;
                }

                while (v2179 != 256);
                break;
              case 3:
                v2195 = 0;
                v2196 = (v171 - 2 * v2713);
                v2197 = (v2196 + v2713 + v2713);
                v2198 = vzip1q_s8(*(v2197 + v2713 + v2713), v21);
                v2199 = vzip1q_s8(*(v2197 + v2713), v21);
                v2200 = vzip1q_s8(*v2197, v21);
                v2201 = vzip1q_s8(*(v2196 + v2713), v21);
                v2202 = vzip1q_s8(*v2196, v21);
                v2203 = (v2683 + 5 * v2713 + v2685 + v2713 * v2684 - 2 * v2713);
                v2156 = v2694;
                v13 = a3;
                v2157 = v2740;
                v2158 = v2741;
                v2159 = v2706;
                v2160 = v2670;
                v2161 = v2663;
                v2162 = v2662;
                v23.i64[0] = 0x20002000200020;
                v23.i64[1] = 0x20002000200020;
                v2163 = v2697;
                v2165 = v2672;
                v2164 = v2675;
                do
                {
                  v2204 = v2201;
                  v2201 = v2200;
                  v2200 = v2199;
                  v2199 = v2198;
                  v2198 = vzip1q_s8(*v2203, v21);
                  v2205 = vsubq_s16(vshlq_n_s16(vaddq_s16(v2201, v2200), 2uLL), vaddq_s16(v2204, v2199));
                  *(&v2774 + v2195) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v2202, v2205), vshlq_n_s16(v2205, 2uLL)), vaddq_s16(v2198, v22)), 5uLL))), v2200);
                  v2195 += 16;
                  v2203 = (v2203 + v2713);
                  v2202 = v2204;
                }

                while (v2195 != 256);
                break;
              case 4:
                v2169 = 0;
                v2170 = (&v171[-1].val[1] + 6);
                v2156 = v2694;
                v13 = a3;
                v2157 = v2740;
                v2158 = v2741;
                v2159 = v2706;
                v2160 = v2670;
                v2161 = v2663;
                v2162 = v2662;
                v23.i64[0] = 0x20002000200020;
                v23.i64[1] = 0x20002000200020;
                v2163 = v2697;
                v2165 = v2672;
                v2164 = v2675;
                do
                {
                  v2171 = *v2170;
                  v2170 = (v2170 + v2713);
                  v2172 = vzip1q_s8(vextq_s8(v2171, v2171, 2uLL), v21);
                  v2173 = vsubq_s16(vshlq_n_s16(vaddq_s16(v2172, vzip1q_s8(vextq_s8(v2171, v2171, 3uLL), v21)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v2171, v2171, 1uLL), v21), vzip1q_s8(vextq_s8(v2171, v2171, 4uLL), v21)));
                  *(&v2774 + v2169) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v2173, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v2171, v21), vzip1q_s8(vextq_s8(v2171, v2171, 5uLL), v21)), v2173)), v22), 5uLL))), v2172);
                  v2169 += 16;
                }

                while (v2169 != 256);
                break;
              case 5:
                v2192 = v171;
                v2193 = v2713;
                v2194 = 2;
                goto LABEL_987;
              case 6:
                sub_27729B1B0(v2774.i8, 0x10u, v171, v2713);
                goto LABEL_991;
              case 7:
                v2192 = v171;
                v2193 = v2713;
                v2194 = 3;
LABEL_987:
                v2217 = 2;
                goto LABEL_990;
              case 8:
                v2284 = 0;
                v2285 = (&v171[-1].val[1] + 6);
                v2156 = v2694;
                v13 = a3;
                v2157 = v2740;
                v2158 = v2741;
                v2159 = v2706;
                v2160 = v2670;
                v2161 = v2663;
                v2162 = v2662;
                v23.i64[0] = 0x20002000200020;
                v23.i64[1] = 0x20002000200020;
                v2163 = v2697;
                v2165 = v2672;
                v2164 = v2675;
                do
                {
                  v2286 = &v2774.i8[v2284];
                  v2287 = *v2285;
                  v2285 = (v2285 + v2713);
                  v2288 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v2287, v2287, 2uLL), v21), vzip1q_s8(vextq_s8(v2287, v2287, 3uLL), v21)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v2287, v2287, 1uLL), v21), vzip1q_s8(vextq_s8(v2287, v2287, 4uLL), v21)));
                  *v2287.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v2288, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v2287, v21), vzip1q_s8(vextq_s8(v2287, v2287, 5uLL), v21)), v2288)), v22), 5uLL));
                  v2288.i64[0] = v21.i64[0];
                  vst2_s8(v2286, v2287);
                  v2284 += 16;
                }

                while (v2284 != 256);
                break;
              case 9:
                sub_27729B614(v2774.i8, 0x10u, v171, v2713, 16);
                goto LABEL_991;
              case 10:
                sub_27729B7DC(&v2774, 16, v171, v2713, 16);
                goto LABEL_991;
              case 11:
                sub_27729B98C(v2774.i8, 0x10u, v171, v2713, 16);
                goto LABEL_991;
              case 12:
                v2174 = 0;
                v2175 = (&v171[-1].val[1] + 6);
                v2156 = v2694;
                v13 = a3;
                v2157 = v2740;
                v2158 = v2741;
                v2159 = v2706;
                v2160 = v2670;
                v2161 = v2663;
                v2162 = v2662;
                v23.i64[0] = 0x20002000200020;
                v23.i64[1] = 0x20002000200020;
                v2163 = v2697;
                v2165 = v2672;
                v2164 = v2675;
                do
                {
                  v2176 = *v2175;
                  v2175 = (v2175 + v2713);
                  v2177 = vzip1q_s8(vextq_s8(v2176, v2176, 3uLL), v21);
                  v2178 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v2176, v2176, 2uLL), v21), v2177), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v2176, v2176, 1uLL), v21), vzip1q_s8(vextq_s8(v2176, v2176, 4uLL), v21)));
                  *(&v2774 + v2174) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v2178, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v2176, v21), vzip1q_s8(vextq_s8(v2176, v2176, 5uLL), v21)), v2178)), v22), 5uLL))), v2177);
                  v2174 += 16;
                }

                while (v2174 != 256);
                break;
              case 13:
                v2192 = v171;
                v2193 = v2713;
                v2194 = 2;
                goto LABEL_989;
              case 14:
                sub_27729BBEC(v2774.i8, 0x10u, v171, v2713);
                goto LABEL_991;
              case 15:
                v2192 = v171;
                v2193 = v2713;
                v2194 = 3;
LABEL_989:
                v2217 = 3;
LABEL_990:
                sub_27729C774(v2774.i8, v2192, v2193, 16, v2194, v2217);
LABEL_991:
                v22.i64[0] = 0x10001000100010;
                v22.i64[1] = 0x10001000100010;
                v11 = v2742;
                v21 = v2756;
                v2156 = v2694;
                v13 = a3;
                v2157 = v2740;
                v2158 = v2741;
                v2159 = v2706;
                v2160 = v2670;
                v2161 = v2663;
                v2162 = v2662;
                v23.i64[0] = 0x20002000200020;
                v23.i64[1] = 0x20002000200020;
                v2163 = v2697;
                v2165 = v2672;
                v2164 = v2675;
                break;
              default:
                v2155 = 0;
                v2156 = v2694;
                v13 = a3;
                v2157 = v2740;
                v2158 = v2741;
                v2159 = v2706;
                v2160 = v2670;
                v2161 = v2663;
                v2162 = v2662;
                v23.i64[0] = 0x20002000200020;
                v23.i64[1] = 0x20002000200020;
                v2163 = v2697;
                v2165 = v2672;
                v2164 = v2675;
                do
                {
                  v2166 = &v2774.i8[v2155];
                  v2167 = *v171;
                  v171 = (v171 + v2713);
                  v2168 = v21.i64[0];
                  vst2_s8(v2166, v2167);
                  v2155 += 16;
                }

                while (v2155 != 256);
                break;
            }

            v2218 = 0;
            do
            {
              v2219 = vrhaddq_u16(*(&v2770 + v2218), *(&v2774 + v2218));
              v2220 = vrhaddq_u16(*(&v2770 + v2218 + 16), *(&v2775 + v2218));
              v2221 = vrhaddq_u16(*(&v2772 + v2218), *(&v2776 + v2218));
              v2222 = vrhaddq_u16(v2773[v2218 / 0x10], v2777[v2218 / 0x10]);
              if (a2)
              {
                v2223 = *v76;
                v2224 = *(v76 + 32);
                v2225 = *(v76 + 64);
                v2226 = *(v76 + 96);
                v76 += 128;
                v2219 = vaddq_s16(v2223, v2219);
                v2220 = vaddq_s16(v2224, v2220);
                v2221 = vaddq_s16(v2225, v2221);
                v2222 = vaddq_s16(v2226, v2222);
              }

              *v74 = vqmovun_s16(v2219);
              *(v74 + v2157) = vqmovun_s16(v2220);
              *(v74 + v2159) = vqmovun_s16(v2221);
              *(v74 + v2160) = vqmovun_s16(v2222);
              v74 = (v74 + v2161);
              v2218 += 64;
            }

            while (v2218 != 256);
            v2227 = 0;
            _X9 = &_X27->i8[v82];
            __asm { PRFM            #0, [X9] }

            v2219.i64[0] = _X27->i64[0];
            v2230 = vqtbl1q_s8(v2219, xmmword_2773B3E00);
            v2230.i16[3] = _X27->i16[4];
            v2231 = vzip1q_s8(v2230, v21);
            v2232 = vzip1q_s8(v2219, v21);
            v2233 = v2788;
            v2234 = v2789;
            v2235 = v2790;
            v2236 = v2791;
            v2237 = v2689;
            if (v2689 <= -16)
            {
              v2237 = -16;
            }

            v2238 = v2690;
            if (v2237 < v2690)
            {
              v2238 = v2237;
            }

            v2239 = v2680 + v82 + v2238;
            v2240 = v2680 + v2238 + 2 * v82;
            do
            {
              _X12 = v2240 + v2677;
              __asm { PRFM            #0, [X12] }

              v2243 = vmlaq_s16(vmulq_s16(v2234, v2231), v2233, v2232);
              v2231.i64[0] = *(v2239 + v2677);
              v2232 = vzip1q_s8(v2231, v21);
              v2244 = vqtbl1q_s8(v2231, xmmword_2773B3E00);
              v2244.i16[3] = *(v2239 + v2677 + 8);
              v2231 = vzip1q_s8(v2244, v21);
              *(&v2779 + v2227) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v2243, v2235, v2232), v2236, v2231), v23), 6uLL);
              v2227 += 16;
              v2239 += v82;
              v2240 += v82;
            }

            while (v2227 != 128);
            v2245 = 0;
            _X9 = v2163 + v173;
            __asm { PRFM            #0, [X9] }

            v2233.i64[0] = *v2163;
            v2248 = vqtbl1q_s8(v2233, xmmword_2773B3E00);
            v2248.i16[3] = *(v2163 + 8);
            v2249 = vzip1q_s8(v2248, v21);
            v2250 = vzip1q_s8(v2233, v21);
            v2251 = v2792;
            v2252 = v2793;
            v2253 = v2794;
            v2254 = v2795;
            v2255 = v2691;
            if (v2691 <= -16)
            {
              v2255 = -16;
            }

            v2256 = v2688;
            if (v2255 < v2688)
            {
              v2256 = v2255;
            }

            v2257 = v2165 + v173 + v2256;
            v2258 = v2165 + v2256 + 2 * v173;
            do
            {
              _X12 = v2258 + v2164;
              __asm { PRFM            #0, [X12] }

              v2261 = vmlaq_s16(vmulq_s16(v2252, v2249), v2251, v2250);
              v2249.i64[0] = *(v2257 + v2164);
              v2250 = vzip1q_s8(v2249, v21);
              v2262 = vqtbl1q_s8(v2249, xmmword_2773B3E00);
              v2262.i16[3] = *(v2257 + v2164 + 8);
              v2249 = vzip1q_s8(v2262, v21);
              *(&v2784 + v2245) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v2261, v2253, v2250), v2254, v2249), v23), 6uLL);
              v2245 += 16;
              v2257 += v173;
              v2258 += v173;
            }

            while (v2245 != 128);
            v2263 = 1;
            v2264 = &v2784;
            do
            {
              v2265 = v2263;
              a9 = v2264[1];
              a10 = v2264[2];
              a11 = v2264[3];
              v2266 = vrhaddq_u16(v2264[-16], *v2264);
              v2267 = vrhaddq_u16(v2264[-15], a9);
              v2268 = vrhaddq_u16(v2264[-14], a10);
              v2269 = vrhaddq_u16(v2264[-13], a11);
              if (v13)
              {
                v2270 = *v81;
                a9 = *(v81 + 32);
                a10 = *(v81 + 64);
                a11 = *(v81 + 96);
                v81 += 128;
                v2266 = vaddq_s16(v2270, v2266);
                v2267 = vaddq_s16(a9, v2267);
                v2268 = vaddq_s16(a10, v2268);
                v2269 = vaddq_s16(a11, v2269);
              }

              v2263 = 0;
              v2264 += 4;
              *v78 = vqmovun_s16(v2266);
              *(v78 + v2158) = vqmovun_s16(v2267);
              *(v78 + v2156) = vqmovun_s16(v2268);
              *(v78 + v2664) = vqmovun_s16(v2269);
              v78 = (v78 + v2162);
            }

            while ((v2265 & 1) != 0);
          }
        }
      }

      goto LABEL_1012;
    }

    v99 = v86;
    a2 = v75;
    v13 = v80;
    if (v28 != 16)
    {
LABEL_1012:
      v12 = v2701;
      v15 = v2732;
      LODWORD(v17) = v2721;
      goto LABEL_1013;
    }

    v2696 = (v90 + v72 + v98);
    v2671 = v90;
    v2674 = v98;
    v2667 = v91;
    v2668 = v95;
    v2665 = v2702 & 0xFFFFFF8F | (16 * (v35 & 7));
    v2666 = v2704 & 0xFFFFFF8F | (16 * (v38 & 7));
    if (v2725 == 16)
    {
      switch(v84)
      {
        case 1:
          v738 = 0;
          v739 = (v96 - 2 * v79);
          v740 = (v739 + v79 + v79);
          v741 = vzip1q_s8(*(v740 + v79 + v79), v21);
          v742 = vzip1q_s8(*(v740 + v79), v21);
          v743 = vzip1q_s8(*v740, v21);
          v744 = vzip1q_s8(*(v739 + v79), v21);
          v745 = vzip1q_s8(*v739, v21);
          v746 = (v99 + 5 * v79 + v2681 + v79 * v2682 - 2 * v79);
          do
          {
            v747 = v744;
            v744 = v743;
            v743 = v742;
            v742 = v741;
            v741 = vzip1q_s8(*v746, v21);
            v748 = vsubq_s16(vshlq_n_s16(vaddq_s16(v744, v743), 2uLL), vaddq_s16(v747, v742));
            *(&v2770 + v738) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v745, v748), vshlq_n_s16(v748, 2uLL)), vaddq_s16(v741, v22)), 5uLL))), v744);
            v738 += 32;
            v746 = (v746 + v79);
            v745 = v747;
          }

          while (v738 != 512);
          v749 = 0;
          v750 = v96 - 2 * v79;
          v751 = *(v750 + 8);
          v752 = &v750[v79 + 8];
          v753 = (v752 + v79 + v79);
          v754 = vzip1q_s8(*(v753 + v79), v21);
          v755 = vzip1q_s8(*v753, v21);
          v756 = vzip1q_s8(*(v752 + v79), v21);
          v757 = vzip1q_s8(*v752, v21);
          v758 = vzip1q_s8(v751, v21);
          v759 = (v99 + 5 * v79 + v2681 + v79 * v2682 - 2 * v79 + 8);
          v101 = v2718;
          v102 = v2707;
          v103 = v2710;
          do
          {
            v760 = v757;
            v757 = v756;
            v756 = v755;
            v755 = v754;
            v754 = vzip1q_s8(*v759, v21);
            v761 = vsubq_s16(vshlq_n_s16(vaddq_s16(v757, v756), 2uLL), vaddq_s16(v760, v755));
            *(&v2771 + v749) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v758, v761), vshlq_n_s16(v761, 2uLL)), vaddq_s16(v754, v22)), 5uLL))), v757);
            v749 += 32;
            v759 = (v759 + v79);
            v758 = v760;
          }

          while (v749 != 512);
          break;
        case 2:
          v596 = 0;
          v597 = (v96 - 2 * v79);
          v598 = (v597 + v79 + v79);
          v599 = vzip1q_s8(*(v598 + v79 + v79), v21);
          v600 = vzip1q_s8(*(v598 + v79), v21);
          v601 = vzip1q_s8(*v598, v21);
          v602 = vzip1q_s8(*(v597 + v79), v21);
          v603 = vzip1q_s8(*v597, v21);
          v604 = (v99 + 5 * v79 + v2681 + v79 * v2682 - 2 * v79);
          do
          {
            v605 = v602;
            v602 = v601;
            v601 = v600;
            v600 = v599;
            v606 = &v2770.i8[v596];
            v599 = vzip1q_s8(*v604, v21);
            v607 = vsubq_s16(vshlq_n_s16(vaddq_s16(v602, v601), 2uLL), vaddq_s16(v605, v600));
            v607.val[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v603, v607), vshlq_n_s16(v607, 2uLL)), vaddq_s16(v599, v22)), 5uLL));
            v608 = v21.i64[0];
            vst2_s8(v606, v607);
            v596 += 32;
            v604 = (v604 + v79);
            v603 = v605;
          }

          while (v596 != 512);
          v609 = 0;
          v610 = v96 - 2 * v79;
          v611 = *(v610 + 8);
          v612 = &v610[v79 + 8];
          v613 = (v612 + v79 + v79);
          v614 = vzip1q_s8(*(v613 + v79), v21);
          v615 = vzip1q_s8(*v613, v21);
          v616 = vzip1q_s8(*(v612 + v79), v21);
          v617 = vzip1q_s8(*v612, v21);
          v618 = vzip1q_s8(v611, v21);
          v619 = (v99 + 5 * v79 + v2681 + v79 * v2682 - 2 * v79 + 8);
          v101 = v2718;
          v102 = v2707;
          v103 = v2710;
          do
          {
            v620 = v617;
            v617 = v616;
            v616 = v615;
            v615 = v614;
            v621 = &v2771.i8[v609];
            v614 = vzip1q_s8(*v619, v21);
            v622 = vsubq_s16(vshlq_n_s16(vaddq_s16(v617, v616), 2uLL), vaddq_s16(v620, v615));
            v622.val[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v618, v622), vshlq_n_s16(v622, 2uLL)), vaddq_s16(v614, v22)), 5uLL));
            v623 = v21.i64[0];
            vst2_s8(v621, v622);
            v609 += 32;
            v619 = (v619 + v79);
            v618 = v620;
          }

          while (v609 != 512);
          break;
        case 3:
          v682 = 0;
          v683 = (v96 - 2 * v79);
          v684 = (v683 + v79 + v79);
          v685 = vzip1q_s8(*(v684 + v79 + v79), v21);
          v686 = vzip1q_s8(*(v684 + v79), v21);
          v687 = vzip1q_s8(*v684, v21);
          v688 = vzip1q_s8(*(v683 + v79), v21);
          v689 = vzip1q_s8(*v683, v21);
          v690 = (v99 + 5 * v79 + v2681 + v79 * v2682 - 2 * v79);
          do
          {
            v691 = v688;
            v688 = v687;
            v687 = v686;
            v686 = v685;
            v685 = vzip1q_s8(*v690, v21);
            v692 = vsubq_s16(vshlq_n_s16(vaddq_s16(v688, v687), 2uLL), vaddq_s16(v691, v686));
            *(&v2770 + v682) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v689, v692), vshlq_n_s16(v692, 2uLL)), vaddq_s16(v685, v22)), 5uLL))), v687);
            v682 += 32;
            v690 = (v690 + v79);
            v689 = v691;
          }

          while (v682 != 512);
          v693 = 0;
          v694 = v96 - 2 * v79;
          v695 = *(v694 + 8);
          v696 = &v694[v79 + 8];
          v697 = (v696 + v79 + v79);
          v698 = vzip1q_s8(*(v697 + v79), v21);
          v699 = vzip1q_s8(*v697, v21);
          v700 = vzip1q_s8(*(v696 + v79), v21);
          v701 = vzip1q_s8(*v696, v21);
          v702 = vzip1q_s8(v695, v21);
          v703 = (v99 + 5 * v79 + v2681 + v79 * v2682 - 2 * v79 + 8);
          v101 = v2718;
          v102 = v2707;
          v103 = v2710;
          do
          {
            v704 = v701;
            v701 = v700;
            v700 = v699;
            v699 = v698;
            v698 = vzip1q_s8(*v703, v21);
            v705 = vsubq_s16(vshlq_n_s16(vaddq_s16(v701, v700), 2uLL), vaddq_s16(v704, v699));
            *(&v2771 + v693) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v702, v705), vshlq_n_s16(v705, 2uLL)), vaddq_s16(v698, v22)), 5uLL))), v700);
            v693 += 32;
            v703 = (v703 + v79);
            v702 = v704;
          }

          while (v693 != 512);
          break;
        case 4:
          v548 = 0;
          v549 = (v96 - 2);
          do
          {
            v550 = *v549;
            v549 = (v549 + v79);
            v551 = vzip1q_s8(vextq_s8(v550, v550, 2uLL), v21);
            v552 = vsubq_s16(vshlq_n_s16(vaddq_s16(v551, vzip1q_s8(vextq_s8(v550, v550, 3uLL), v21)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v550, v550, 1uLL), v21), vzip1q_s8(vextq_s8(v550, v550, 4uLL), v21)));
            *(&v2770 + v548) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v552, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v550, v21), vzip1q_s8(vextq_s8(v550, v550, 5uLL), v21)), v552)), v22), 5uLL))), v551);
            v548 += 32;
          }

          while (v548 != 512);
          v553 = 0;
          v554 = (v96 + 6);
          v101 = v2718;
          v102 = v2707;
          v103 = v2710;
          do
          {
            v555 = *v554;
            v554 = (v554 + v79);
            v556 = vzip1q_s8(vextq_s8(v555, v555, 2uLL), v21);
            v557 = vsubq_s16(vshlq_n_s16(vaddq_s16(v556, vzip1q_s8(vextq_s8(v555, v555, 3uLL), v21)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v555, v555, 1uLL), v21), vzip1q_s8(vextq_s8(v555, v555, 4uLL), v21)));
            *(&v2771 + v553) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v557, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v555, v21), vzip1q_s8(vextq_s8(v555, v555, 5uLL), v21)), v557)), v22), 5uLL))), v556);
            v553 += 32;
          }

          while (v553 != 512);
          break;
        case 5:
          v668 = v96;
          v669 = v79;
          v670 = 2;
          goto LABEL_408;
        case 6:
          v2752 = v11;
          v2766 = v21;
          sub_27729B1B0(v2770.i8, 0x20u, v96, v79);
          sub_27729B1B0(v2771.i8, 0x20u, (v96 + 2), v79);
          goto LABEL_467;
        case 7:
          v668 = v96;
          v669 = v79;
          v670 = 3;
LABEL_408:
          v810 = 2;
          goto LABEL_466;
        case 8:
          v1489 = 0;
          v1490 = (v96 - 2);
          do
          {
            v1491 = &v2770.i8[v1489];
            v1492 = *v1490;
            v1490 = (v1490 + v79);
            v1493 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1492, v1492, 2uLL), v21), vzip1q_s8(vextq_s8(v1492, v1492, 3uLL), v21)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1492, v1492, 1uLL), v21), vzip1q_s8(vextq_s8(v1492, v1492, 4uLL), v21)));
            *v1492.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1493, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1492, v21), vzip1q_s8(vextq_s8(v1492, v1492, 5uLL), v21)), v1493)), v22), 5uLL));
            v1493.i64[0] = v21.i64[0];
            vst2_s8(v1491, v1492);
            v1489 += 32;
          }

          while (v1489 != 512);
          v1494 = 0;
          v1495 = (v96 + 6);
          v101 = v2718;
          v102 = v2707;
          v103 = v2710;
          do
          {
            v1496 = &v2771.i8[v1494];
            v1497 = *v1495;
            v1495 = (v1495 + v79);
            v1498 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1497, v1497, 2uLL), v21), vzip1q_s8(vextq_s8(v1497, v1497, 3uLL), v21)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1497, v1497, 1uLL), v21), vzip1q_s8(vextq_s8(v1497, v1497, 4uLL), v21)));
            *v1497.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1498, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1497, v21), vzip1q_s8(vextq_s8(v1497, v1497, 5uLL), v21)), v1498)), v22), 5uLL));
            v1498.i64[0] = v21.i64[0];
            vst2_s8(v1496, v1497);
            v1494 += 32;
          }

          while (v1494 != 512);
          break;
        case 9:
          v2752 = v11;
          v2766 = v21;
          sub_27729B614(v2770.i8, 0x20u, v96, v79, 16);
          sub_27729B614(v2771.i8, 0x20u, (v96 + 2), v79, 16);
          goto LABEL_467;
        case 10:
          v2752 = v11;
          v2766 = v21;
          sub_27729B7DC(&v2770, 32, v96, v79, 16);
          sub_27729B7DC(&v2771, 32, (v96 + 2), v79, 16);
          goto LABEL_467;
        case 11:
          v2752 = v11;
          v2766 = v21;
          sub_27729B98C(v2770.i8, 0x20u, v96, v79, 16);
          sub_27729B98C(v2771.i8, 0x20u, (v96 + 2), v79, 16);
          goto LABEL_467;
        case 12:
          v568 = 0;
          v569 = (v96 - 2);
          do
          {
            v570 = *v569;
            v569 = (v569 + v79);
            v571 = vzip1q_s8(vextq_s8(v570, v570, 3uLL), v21);
            v572 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v570, v570, 2uLL), v21), v571), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v570, v570, 1uLL), v21), vzip1q_s8(vextq_s8(v570, v570, 4uLL), v21)));
            *(&v2770 + v568) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v572, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v570, v21), vzip1q_s8(vextq_s8(v570, v570, 5uLL), v21)), v572)), v22), 5uLL))), v571);
            v568 += 32;
          }

          while (v568 != 512);
          v573 = 0;
          v574 = (v96 + 6);
          v101 = v2718;
          v102 = v2707;
          v103 = v2710;
          do
          {
            v575 = *v574;
            v574 = (v574 + v79);
            v576 = vzip1q_s8(vextq_s8(v575, v575, 3uLL), v21);
            v577 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v575, v575, 2uLL), v21), v576), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v575, v575, 1uLL), v21), vzip1q_s8(vextq_s8(v575, v575, 4uLL), v21)));
            *(&v2771 + v573) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v577, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v575, v21), vzip1q_s8(vextq_s8(v575, v575, 5uLL), v21)), v577)), v22), 5uLL))), v576);
            v573 += 32;
          }

          while (v573 != 512);
          break;
        case 13:
          v668 = v96;
          v669 = v79;
          v670 = 2;
          goto LABEL_465;
        case 14:
          v2752 = v11;
          v2766 = v21;
          sub_27729BBEC(v2770.i8, 0x20u, v96, v79);
          sub_27729BBEC(v2771.i8, 0x20u, (v96 + 2), v79);
          goto LABEL_467;
        case 15:
          v668 = v96;
          v669 = v79;
          v670 = 3;
LABEL_465:
          v810 = 3;
LABEL_466:
          v2752 = v11;
          v2766 = v21;
          sub_27729AF04(v2770.i8, v668, v669, 16, v670, v810);
LABEL_467:
          v22.i64[0] = 0x10001000100010;
          v22.i64[1] = 0x10001000100010;
          v11 = v2752;
          v21 = v2766;
          v101 = v2718;
          v102 = v2707;
          v103 = v2710;
          break;
        default:
          v100 = 0;
          v101 = v2718;
          v102 = v2707;
          v103 = v2710;
          do
          {
            v104 = &v2770.i8[v100];
            v11 = *v96;
            v96 = (v96 + v79);
            vst2_s8(v104, v11);
            v104 += 16;
            *v104 = vzip2q_s8(v11, v21);
            v100 += 32;
          }

          while (v100 != 512);
          break;
      }

      switch(v102)
      {
        case 1:
          v1054 = 0;
          v1055 = (v101 - 2 * v2713);
          v1056 = (v1055 + v2713 + v2713);
          v1057 = vzip1q_s8(*(v1056 + v2713 + v2713), v21);
          v1058 = vzip1q_s8(*(v1056 + v2713), v21);
          v1059 = vzip1q_s8(*v1056, v21);
          v1060 = vzip1q_s8(*(v1055 + v2713), v21);
          v1061 = vzip1q_s8(*v1055, v21);
          v1062 = (v2683 + 5 * v2713 + v2685 + v2713 * v2684 - 2 * v2713);
          do
          {
            v1063 = v1060;
            v1060 = v1059;
            v1059 = v1058;
            v1058 = v1057;
            v1057 = vzip1q_s8(*v1062, v21);
            v1064 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1060, v1059), 2uLL), vaddq_s16(v1063, v1058));
            *(&v2774 + v1054) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1061, v1064), vshlq_n_s16(v1064, 2uLL)), vaddq_s16(v1057, v22)), 5uLL))), v1060);
            v1054 += 32;
            v1062 = (v1062 + v2713);
            v1061 = v1063;
          }

          while (v1054 != 512);
          v1065 = 0;
          v1066 = v101 - 2 * v2713;
          v1067 = *(v1066 + 8);
          v1068 = &v1066[v2713 + 8];
          v1069 = (v1068 + v2713 + v2713);
          v1070 = vzip1q_s8(*(v1069 + v2713), v21);
          v1071 = vzip1q_s8(*v1069, v21);
          v1072 = vzip1q_s8(*(v1068 + v2713), v21);
          v1073 = vzip1q_s8(*v1068, v21);
          v1074 = vzip1q_s8(v1067, v21);
          v1075 = (v2683 + 5 * v2713 + v2685 + v2713 * v2684 - 2 * v2713 + 8);
          v967 = v2694;
          v13 = a3;
          v968 = v2740;
          v969 = v2741;
          v970 = v2706;
          v23.i64[0] = 0x20002000200020;
          v23.i64[1] = 0x20002000200020;
          _X3 = v2696;
          v973 = v2671;
          v972 = v2674;
          v975 = v2667;
          v974 = v2668;
          do
          {
            v1076 = v1073;
            v1073 = v1072;
            v1072 = v1071;
            v1071 = v1070;
            v1070 = vzip1q_s8(*v1075, v21);
            v1077 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1073, v1072), 2uLL), vaddq_s16(v1076, v1071));
            *(&v2775 + v1065) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1074, v1077), vshlq_n_s16(v1077, 2uLL)), vaddq_s16(v1070, v22)), 5uLL))), v1073);
            v1065 += 32;
            v1075 = (v1075 + v2713);
            v1074 = v1076;
          }

          while (v1065 != 512);
          break;
        case 2:
          v999 = 0;
          v1000 = (v101 - 2 * v2713);
          v1001 = (v1000 + v2713 + v2713);
          v1002 = vzip1q_s8(*(v1001 + v2713 + v2713), v21);
          v1003 = vzip1q_s8(*(v1001 + v2713), v21);
          v1004 = vzip1q_s8(*v1001, v21);
          v1005 = vzip1q_s8(*(v1000 + v2713), v21);
          v1006 = vzip1q_s8(*v1000, v21);
          v1007 = (v2683 + 5 * v2713 + v2685 + v2713 * v2684 - 2 * v2713);
          do
          {
            v1008 = v1005;
            v1005 = v1004;
            v1004 = v1003;
            v1003 = v1002;
            v1009 = &v2774.i8[v999];
            v1002 = vzip1q_s8(*v1007, v21);
            v1010 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1005, v1004), 2uLL), vaddq_s16(v1008, v1003));
            v1010.val[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1006, v1010), vshlq_n_s16(v1010, 2uLL)), vaddq_s16(v1002, v22)), 5uLL));
            v1011 = v21.i64[0];
            vst2_s8(v1009, v1010);
            v999 += 32;
            v1007 = (v1007 + v2713);
            v1006 = v1008;
          }

          while (v999 != 512);
          v1012 = 0;
          v1013 = v101 - 2 * v2713;
          v1014 = *(v1013 + 8);
          v1015 = &v1013[v2713 + 8];
          v1016 = (v1015 + v2713 + v2713);
          v1017 = vzip1q_s8(*(v1016 + v2713), v21);
          v1018 = vzip1q_s8(*v1016, v21);
          v1019 = vzip1q_s8(*(v1015 + v2713), v21);
          v1020 = vzip1q_s8(*v1015, v21);
          v1021 = vzip1q_s8(v1014, v21);
          v1022 = (v2683 + 5 * v2713 + v2685 + v2713 * v2684 - 2 * v2713 + 8);
          v967 = v2694;
          v13 = a3;
          v968 = v2740;
          v969 = v2741;
          v970 = v2706;
          v23.i64[0] = 0x20002000200020;
          v23.i64[1] = 0x20002000200020;
          _X3 = v2696;
          v973 = v2671;
          v972 = v2674;
          v975 = v2667;
          v974 = v2668;
          do
          {
            v1023 = v1020;
            v1020 = v1019;
            v1019 = v1018;
            v1018 = v1017;
            v1024 = &v2775.i8[v1012];
            v1017 = vzip1q_s8(*v1022, v21);
            v1025 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1020, v1019), 2uLL), vaddq_s16(v1023, v1018));
            v1025.val[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1021, v1025), vshlq_n_s16(v1025, 2uLL)), vaddq_s16(v1017, v22)), 5uLL));
            v1026 = v21.i64[0];
            vst2_s8(v1024, v1025);
            v1012 += 32;
            v1022 = (v1022 + v2713);
            v1021 = v1023;
          }

          while (v1012 != 512);
          break;
        case 3:
          v1030 = 0;
          v1031 = (v101 - 2 * v2713);
          v1032 = (v1031 + v2713 + v2713);
          v1033 = vzip1q_s8(*(v1032 + v2713 + v2713), v21);
          v1034 = vzip1q_s8(*(v1032 + v2713), v21);
          v1035 = vzip1q_s8(*v1032, v21);
          v1036 = vzip1q_s8(*(v1031 + v2713), v21);
          v1037 = vzip1q_s8(*v1031, v21);
          v1038 = (v2683 + 5 * v2713 + v2685 + v2713 * v2684 - 2 * v2713);
          do
          {
            v1039 = v1036;
            v1036 = v1035;
            v1035 = v1034;
            v1034 = v1033;
            v1033 = vzip1q_s8(*v1038, v21);
            v1040 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1036, v1035), 2uLL), vaddq_s16(v1039, v1034));
            *(&v2774 + v1030) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1037, v1040), vshlq_n_s16(v1040, 2uLL)), vaddq_s16(v1033, v22)), 5uLL))), v1035);
            v1030 += 32;
            v1038 = (v1038 + v2713);
            v1037 = v1039;
          }

          while (v1030 != 512);
          v1041 = 0;
          v1042 = v101 - 2 * v2713;
          v1043 = *(v1042 + 8);
          v1044 = &v1042[v2713 + 8];
          v1045 = (v1044 + v2713 + v2713);
          v1046 = vzip1q_s8(*(v1045 + v2713), v21);
          v1047 = vzip1q_s8(*v1045, v21);
          v1048 = vzip1q_s8(*(v1044 + v2713), v21);
          v1049 = vzip1q_s8(*v1044, v21);
          v1050 = vzip1q_s8(v1043, v21);
          v1051 = (v2683 + 5 * v2713 + v2685 + v2713 * v2684 - 2 * v2713 + 8);
          v967 = v2694;
          v13 = a3;
          v968 = v2740;
          v969 = v2741;
          v970 = v2706;
          v23.i64[0] = 0x20002000200020;
          v23.i64[1] = 0x20002000200020;
          _X3 = v2696;
          v973 = v2671;
          v972 = v2674;
          v975 = v2667;
          v974 = v2668;
          do
          {
            v1052 = v1049;
            v1049 = v1048;
            v1048 = v1047;
            v1047 = v1046;
            v1046 = vzip1q_s8(*v1051, v21);
            v1053 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1049, v1048), 2uLL), vaddq_s16(v1052, v1047));
            *(&v2775 + v1041) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1050, v1053), vshlq_n_s16(v1053, 2uLL)), vaddq_s16(v1046, v22)), 5uLL))), v1048);
            v1041 += 32;
            v1051 = (v1051 + v2713);
            v1050 = v1052;
          }

          while (v1041 != 512);
          break;
        case 4:
          v979 = 0;
          v980 = (v101 - 2);
          do
          {
            v981 = *v980;
            v980 = (v980 + v2713);
            v982 = vzip1q_s8(vextq_s8(v981, v981, 2uLL), v21);
            v983 = vsubq_s16(vshlq_n_s16(vaddq_s16(v982, vzip1q_s8(vextq_s8(v981, v981, 3uLL), v21)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v981, v981, 1uLL), v21), vzip1q_s8(vextq_s8(v981, v981, 4uLL), v21)));
            *(&v2774 + v979) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v983, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v981, v21), vzip1q_s8(vextq_s8(v981, v981, 5uLL), v21)), v983)), v22), 5uLL))), v982);
            v979 += 32;
          }

          while (v979 != 512);
          v984 = 0;
          v985 = (v101 + 6);
          v967 = v2694;
          v13 = a3;
          v968 = v2740;
          v969 = v2741;
          v970 = v2706;
          v23.i64[0] = 0x20002000200020;
          v23.i64[1] = 0x20002000200020;
          _X3 = v2696;
          v973 = v2671;
          v972 = v2674;
          v975 = v2667;
          v974 = v2668;
          do
          {
            v986 = *v985;
            v985 = (v985 + v2713);
            v987 = vzip1q_s8(vextq_s8(v986, v986, 2uLL), v21);
            v988 = vsubq_s16(vshlq_n_s16(vaddq_s16(v987, vzip1q_s8(vextq_s8(v986, v986, 3uLL), v21)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v986, v986, 1uLL), v21), vzip1q_s8(vextq_s8(v986, v986, 4uLL), v21)));
            *(&v2775 + v984) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v988, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v986, v21), vzip1q_s8(vextq_s8(v986, v986, 5uLL), v21)), v988)), v22), 5uLL))), v987);
            v984 += 32;
          }

          while (v984 != 512);
          break;
        case 5:
          v1027 = v101;
          v1028 = v2713;
          v1029 = 2;
          goto LABEL_503;
        case 6:
          v2753 = v11;
          v2767 = v21;
          sub_27729B1B0(v2774.i8, 0x20u, v101, v2713);
          sub_27729B1B0(v2775.i8, 0x20u, (v2718 + 2), v2713);
          goto LABEL_547;
        case 7:
          v1027 = v101;
          v1028 = v2713;
          v1029 = 3;
LABEL_503:
          v1078 = 2;
          goto LABEL_546;
        case 8:
          v1509 = 0;
          v1510 = (v101 - 2);
          do
          {
            v1511 = &v2774.i8[v1509];
            v1512 = *v1510;
            v1510 = (v1510 + v2713);
            v1513 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1512, v1512, 2uLL), v21), vzip1q_s8(vextq_s8(v1512, v1512, 3uLL), v21)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1512, v1512, 1uLL), v21), vzip1q_s8(vextq_s8(v1512, v1512, 4uLL), v21)));
            *v1512.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1513, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1512, v21), vzip1q_s8(vextq_s8(v1512, v1512, 5uLL), v21)), v1513)), v22), 5uLL));
            v1513.i64[0] = v21.i64[0];
            vst2_s8(v1511, v1512);
            v1509 += 32;
          }

          while (v1509 != 512);
          v1514 = 0;
          v1515 = (v101 + 6);
          v967 = v2694;
          v13 = a3;
          v968 = v2740;
          v969 = v2741;
          v970 = v2706;
          v23.i64[0] = 0x20002000200020;
          v23.i64[1] = 0x20002000200020;
          _X3 = v2696;
          v973 = v2671;
          v972 = v2674;
          v975 = v2667;
          v974 = v2668;
          do
          {
            v1516 = &v2775.i8[v1514];
            v1517 = *v1515;
            v1515 = (v1515 + v2713);
            v1518 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1517, v1517, 2uLL), v21), vzip1q_s8(vextq_s8(v1517, v1517, 3uLL), v21)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1517, v1517, 1uLL), v21), vzip1q_s8(vextq_s8(v1517, v1517, 4uLL), v21)));
            *v1517.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1518, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1517, v21), vzip1q_s8(vextq_s8(v1517, v1517, 5uLL), v21)), v1518)), v22), 5uLL));
            v1518.i64[0] = v21.i64[0];
            vst2_s8(v1516, v1517);
            v1514 += 32;
          }

          while (v1514 != 512);
          break;
        case 9:
          v2753 = v11;
          v2767 = v21;
          sub_27729B614(v2774.i8, 0x20u, v101, v2713, 16);
          sub_27729B614(v2775.i8, 0x20u, (v2718 + 2), v2713, 16);
          goto LABEL_547;
        case 10:
          v2753 = v11;
          v2767 = v21;
          sub_27729B7DC(&v2774, 32, v101, v2713, 16);
          sub_27729B7DC(&v2775, 32, (v2718 + 2), v2713, 16);
          goto LABEL_547;
        case 11:
          v2753 = v11;
          v2767 = v21;
          sub_27729B98C(v2774.i8, 0x20u, v101, v2713, 16);
          sub_27729B98C(v2775.i8, 0x20u, (v2718 + 2), v2713, 16);
          goto LABEL_547;
        case 12:
          v989 = 0;
          v990 = (v101 - 2);
          do
          {
            v991 = *v990;
            v990 = (v990 + v2713);
            v992 = vzip1q_s8(vextq_s8(v991, v991, 3uLL), v21);
            v993 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v991, v991, 2uLL), v21), v992), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v991, v991, 1uLL), v21), vzip1q_s8(vextq_s8(v991, v991, 4uLL), v21)));
            *(&v2774 + v989) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v993, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v991, v21), vzip1q_s8(vextq_s8(v991, v991, 5uLL), v21)), v993)), v22), 5uLL))), v992);
            v989 += 32;
          }

          while (v989 != 512);
          v994 = 0;
          v995 = (v101 + 6);
          v967 = v2694;
          v13 = a3;
          v968 = v2740;
          v969 = v2741;
          v970 = v2706;
          v23.i64[0] = 0x20002000200020;
          v23.i64[1] = 0x20002000200020;
          _X3 = v2696;
          v973 = v2671;
          v972 = v2674;
          v975 = v2667;
          v974 = v2668;
          do
          {
            v996 = *v995;
            v995 = (v995 + v2713);
            v997 = vzip1q_s8(vextq_s8(v996, v996, 3uLL), v21);
            v998 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v996, v996, 2uLL), v21), v997), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v996, v996, 1uLL), v21), vzip1q_s8(vextq_s8(v996, v996, 4uLL), v21)));
            *(&v2775 + v994) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v998, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v996, v21), vzip1q_s8(vextq_s8(v996, v996, 5uLL), v21)), v998)), v22), 5uLL))), v997);
            v994 += 32;
          }

          while (v994 != 512);
          break;
        case 13:
          v1027 = v101;
          v1028 = v2713;
          v1029 = 2;
          goto LABEL_545;
        case 14:
          v2753 = v11;
          v2767 = v21;
          sub_27729BBEC(v2774.i8, 0x20u, v101, v2713);
          sub_27729BBEC(v2775.i8, 0x20u, (v2718 + 2), v2713);
          goto LABEL_547;
        case 15:
          v1027 = v101;
          v1028 = v2713;
          v1029 = 3;
LABEL_545:
          v1078 = 3;
LABEL_546:
          v2753 = v11;
          v2767 = v21;
          sub_27729AF04(v2774.i8, v1027, v1028, 16, v1029, v1078);
LABEL_547:
          v22.i64[0] = 0x10001000100010;
          v22.i64[1] = 0x10001000100010;
          v11 = v2753;
          v21 = v2767;
          v967 = v2694;
          v13 = a3;
          v968 = v2740;
          v969 = v2741;
          v970 = v2706;
          v23.i64[0] = 0x20002000200020;
          v23.i64[1] = 0x20002000200020;
          _X3 = v2696;
          v973 = v2671;
          v972 = v2674;
          v975 = v2667;
          v974 = v2668;
          break;
        default:
          v966 = 0;
          v967 = v2694;
          v13 = a3;
          v968 = v2740;
          v969 = v2741;
          v970 = v2706;
          v23.i64[0] = 0x20002000200020;
          v23.i64[1] = 0x20002000200020;
          _X3 = v2696;
          v973 = v2671;
          v972 = v2674;
          v975 = v2667;
          v974 = v2668;
          do
          {
            v976 = &v2774.i8[v966];
            v977 = *v101;
            v101 = (v101 + v2713);
            v978 = v21.i64[0];
            vst2_s8(v976, v977);
            v976 += 16;
            *v976 = vzip2q_s8(v977, v21);
            v966 += 32;
          }

          while (v966 != 512);
          break;
      }

      v1192 = 0;
      do
      {
        v1193 = v2773[v1192 / 0x10];
        v1194 = vrhaddq_u16(*(&v2770 + v1192), *(&v2774 + v1192));
        v1195 = vrhaddq_u16(*(&v2770 + v1192 + 16), *(&v2775 + v1192));
        v1196 = vrhaddq_u16(*(&v2772 + v1192), *(&v2776 + v1192));
        v1197 = vrhaddq_u16(v1193, v2777[v1192 / 0x10]);
        if (a2)
        {
          v1193 = *v76;
          v1198 = *(v76 + 16);
          v1199 = *(v76 + 32);
          v1200 = *(v76 + 48);
          v76 += 64;
          v1194 = vaddq_s16(v1193, v1194);
          v1195 = vaddq_s16(v1198, v1195);
          v1196 = vaddq_s16(v1199, v1196);
          v1197 = vaddq_s16(v1200, v1197);
        }

        *v74->i8 = vqmovun_high_s16(vqmovun_s16(v1194), v1195);
        *&v74->i8[v968] = vqmovun_high_s16(vqmovun_s16(v1196), v1197);
        v74 = (v74 + v970);
        v1192 += 64;
      }

      while (v1192 != 512);
      if (v2665 == 64)
      {
        __asm { PRFM            #0, [X27] }

        v1225 = 9;
        v1203 = v2778;
        do
        {
          v1226 = _X27;
          _X27 = (_X27 + v82);
          __asm { PRFM            #0, [X27] }

          v1228 = vextq_s8(*v1226, *v1226, 2uLL);
          v1228.i16[7] = v1226[1].i16[0];
          v1229 = vrhaddq_u8(*v1226, v1228);
          v1228.i64[0] = v21.i64[0];
          v1203[3] = vzip2q_s8(v1229, v21);
          v1203 += 2;
          vst2_s8(v1203->i8, *(&v1228 - 8));
          --v1225;
        }

        while (v1225 > 2);
        v1230 = vextq_s8(*_X27, *_X27, 2uLL);
        v1230.i16[7] = _X27[1].i16[0];
        v1223 = vrhaddq_u8(*_X27, v1230);
      }

      else
      {
        if (v2665 != 4)
        {
          if (v2665)
          {
            v1233 = v973;
            v1234 = 0;
            v1235 = v2678 - (8 * v2692 + 8 * v2702) + 64;
            v1236 = v21;
            v1236.i32[0] = v1235 | (v1235 << 16);
            v1237 = vqtbl1q_s8(v1236, xmmword_2773B3DF0);
            v1238 = v21;
            v1238.i32[0] = (8 * v2692 - v2678) | ((8 * v2692 - v2678) << 16);
            v1239 = vqtbl1q_s8(v1238, xmmword_2773B3DF0);
            v1240 = v21;
            v1240.i32[0] = (8 * v2702 - v2678) | ((8 * v2702 - v2678) << 16);
            v1241 = vqtbl1q_s8(v1240, xmmword_2773B3DF0);
            v2788 = v1237;
            v2789 = v1239;
            v2790 = v1241;
            v2791 = v975;
            _X9 = &_X27->i8[v82];
            __asm { PRFM            #0, [X9] }

            v1193.i64[0] = _X27->i64[0];
            v1244 = vqtbl1q_s8(v1193, xmmword_2773B3E00);
            v1244.i16[3] = _X27->i16[4];
            v1245 = vzip1q_s8(v1244, v21);
            v1246 = vzip1q_s8(v1193, v21);
            v1247 = v2689;
            if (v2689 <= -16)
            {
              v1247 = -16;
            }

            if (v1247 >= v2690)
            {
              v1248 = v2690;
            }

            else
            {
              v1248 = v1247;
            }

            v1249 = (v2680 + v82 + v2677 + v1248 + 8);
            _X14 = v2680 + v2677 + v1248 + 2 * v82;
            do
            {
              __asm { PRFM            #0, [X14] }

              v1252 = vmlaq_s16(vmulq_s16(v1239, v1245), v1237, v1246);
              v1245.i64[0] = *(v1249 - 1);
              v1246 = vzip1q_s8(v1245, v21);
              v1253 = vqtbl1q_s8(v1245, xmmword_2773B3E00);
              v1253.i16[3] = *v1249;
              v1249 = (v1249 + v82);
              v1245 = vzip1q_s8(v1253, v21);
              *(&v2779 + v1234) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1252, v1241, v1246), v975, v1245), v23), 6uLL);
              v1234 += 32;
              _X14 += v82;
            }

            while (v1234 != 256);
            v1254 = 0;
            _X10 = &_X27->i8[v82 + 8];
            __asm { PRFM            #0, [X10] }

            v1246.i64[0] = _X27->i64[1];
            v1257 = vqtbl1q_s8(v1246, xmmword_2773B3E00);
            v1257.i16[3] = _X27[1].i16[0];
            v1258 = vzip1q_s8(v1257, v21);
            v1193 = vzip1q_s8(v1246, v21);
            if (v1247 >= v2690)
            {
              v1259 = v2690;
            }

            else
            {
              v1259 = v1247;
            }

            v1260 = v2680 + v82 + v1259;
            v1261 = v2680 + 2 * v82 + v1259 + 8;
            v973 = v1233;
            do
            {
              _X12 = v1261 + v2677;
              __asm { PRFM            #0, [X12] }

              v1264 = vmlaq_s16(vmulq_s16(v1239, v1258), v1237, v1193);
              v1258.i64[0] = *(v1260 + v2677 + 8);
              v1193 = vzip1q_s8(v1258, v21);
              v1265 = vqtbl1q_s8(v1258, xmmword_2773B3E00);
              v1265.i16[3] = *(v1260 + v2677 + 16);
              v1258 = vzip1q_s8(v1265, v21);
              *(&v2780 + v1254) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1264, v1241, v1193), v975, v1258), v23), 6uLL);
              v1254 += 32;
              v1260 += v82;
              v1261 += v82;
            }

            while (v1254 != 256);
LABEL_582:
            if (v2666 == 64)
            {
              __asm { PRFM            #0, [X3] }

              v1290 = 9;
              v1268 = v2783;
              do
              {
                v1291 = _X3;
                _X3 = (_X3 + v103);
                __asm { PRFM            #0, [X3] }

                v1293 = vextq_s8(*v1291, *v1291, 2uLL);
                v1293.i16[7] = v1291[1].i16[0];
                v1294 = vrhaddq_u8(*v1291, v1293);
                v1293.i64[0] = v21.i64[0];
                v1268[3] = vzip2q_s8(v1294, v21);
                v1268 += 2;
                vst2_s8(v1268->i8, *(&v1293 - 8));
                --v1290;
              }

              while (v1290 > 2);
              v1295 = vextq_s8(*_X3, *_X3, 2uLL);
              v1295.i16[7] = _X3[1].i16[0];
              v1288 = vrhaddq_u8(*_X3, v1295);
            }

            else
            {
              if (v2666 != 4)
              {
                if (v2666)
                {
                  v1298 = 0;
                  v1299 = v2679 - (8 * v2693 + 8 * v2704) + 64;
                  v1300 = v21;
                  v1300.i32[0] = v1299 | (v1299 << 16);
                  v1301 = vqtbl1q_s8(v1300, xmmword_2773B3DF0);
                  v1302 = v21;
                  v1302.i32[0] = (8 * v2693 - v2679) | ((8 * v2693 - v2679) << 16);
                  v1303 = vqtbl1q_s8(v1302, xmmword_2773B3DF0);
                  v1304 = v21;
                  v1304.i32[0] = (8 * v2704 - v2679) | ((8 * v2704 - v2679) << 16);
                  v1305 = vqtbl1q_s8(v1304, xmmword_2773B3DF0);
                  v2792 = v1301;
                  v2793 = v1303;
                  v2794 = v1305;
                  v2795 = v974;
                  _X9 = &_X3->i8[v103];
                  __asm { PRFM            #0, [X9] }

                  v1193.i64[0] = _X3->i64[0];
                  v1308 = vqtbl1q_s8(v1193, xmmword_2773B3E00);
                  v1308.i16[3] = _X3->i16[4];
                  v1309 = vzip1q_s8(v1308, v21);
                  v1310 = vzip1q_s8(v1193, v21);
                  v1311 = v2691;
                  if (v2691 <= -16)
                  {
                    v1311 = -16;
                  }

                  if (v1311 >= v2688)
                  {
                    v1312 = v2688;
                  }

                  else
                  {
                    v1312 = v1311;
                  }

                  v1313 = v973;
                  v1314 = v973 + v103 + v1312;
                  v1315 = v1313 + v1312 + 2 * v103;
                  do
                  {
                    _X16 = v1315 + v972;
                    __asm { PRFM            #0, [X16] }

                    v1318 = vmlaq_s16(vmulq_s16(v1303, v1309), v1301, v1310);
                    v1309.i64[0] = *(v1314 + v972);
                    v1310 = vzip1q_s8(v1309, v21);
                    v1319 = vqtbl1q_s8(v1309, xmmword_2773B3E00);
                    v1319.i16[3] = *(v1314 + v972 + 8);
                    v1309 = vzip1q_s8(v1319, v21);
                    *(&v2784 + v1298) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1318, v1305, v1310), v974, v1309), v23), 6uLL);
                    v1298 += 32;
                    v1314 += v103;
                    v1315 += v103;
                  }

                  while (v1298 != 256);
                  v1320 = 0;
                  _X10 = &_X3->i8[v103 + 8];
                  __asm { PRFM            #0, [X10] }

                  v1310.i64[0] = _X3->i64[1];
                  v1323 = vqtbl1q_s8(v1310, xmmword_2773B3E00);
                  v1323.i16[3] = _X3[1].i16[0];
                  v1324 = vzip1q_s8(v1323, v21);
                  v1325 = vzip1q_s8(v1310, v21);
                  if (v1311 >= v2688)
                  {
                    v1326 = v2688;
                  }

                  else
                  {
                    v1326 = v1311;
                  }

                  v1327 = v1313 + v103 + v1326;
                  v1328 = v1313 + 2 * v103 + v1326 + 8;
                  do
                  {
                    _X12 = v1328 + v972;
                    __asm { PRFM            #0, [X12] }

                    v1331 = vmlaq_s16(vmulq_s16(v1303, v1324), v1301, v1325);
                    v1324.i64[0] = *(v1327 + v972 + 8);
                    v1325 = vzip1q_s8(v1324, v21);
                    v1332 = vqtbl1q_s8(v1324, xmmword_2773B3E00);
                    v1332.i16[3] = *(v1327 + v972 + 16);
                    v1324 = vzip1q_s8(v1332, v21);
                    *(&v2785 + v1320) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1331, v1305, v1325), v974, v1324), v23), 6uLL);
                    v1320 += 32;
                    v1327 += v103;
                    v1328 += v103;
                  }

                  while (v1320 != 256);
                  goto LABEL_612;
                }

                __asm { PRFM            #0, [X3] }

                v1267 = 9;
                v1268 = v2783;
                do
                {
                  v1269 = _X3;
                  _X3 = (_X3 + v103);
                  __asm { PRFM            #0, [X3] }

                  v1271 = *v1269;
                  v1268[3] = vzip2q_s8(*v1269, v21);
                  v1268 += 2;
                  v1272 = v21.i64[0];
                  vst2_s8(v1268->i8, v1271);
                  --v1267;
                }

                while (v1267 > 2);
                v1273 = *_X3;
                v1274 = vzip2q_s8(*_X3, v21);
                v1275 = v1268[2].i8;
                v1276 = v21.i64[0];
                vst2_s8(v1275, v1273);
LABEL_599:
                v1268[3] = v1274;
LABEL_612:
                v1333 = 4;
                v1334 = &v2784;
                do
                {
                  a9 = v1334[1];
                  a10 = v1334[2];
                  a11 = v1334[3];
                  v1335 = vrhaddq_u16(v1334[-16], *v1334);
                  v1336 = vrhaddq_u16(v1334[-15], a9);
                  v1337 = vrhaddq_u16(v1334[-14], a10);
                  v1338 = vrhaddq_u16(v1334[-13], a11);
                  if (v13)
                  {
                    v1339 = *v81;
                    a9 = *(v81 + 16);
                    a10 = *(v81 + 32);
                    a11 = *(v81 + 48);
                    v81 += 64;
                    v1335 = vaddq_s16(v1339, v1335);
                    v1336 = vaddq_s16(a9, v1336);
                    v1337 = vaddq_s16(a10, v1337);
                    v1338 = vaddq_s16(a11, v1338);
                  }

                  v1334 += 4;
                  *v78->i8 = vqmovun_high_s16(vqmovun_s16(v1335), v1336);
                  *&v78->i8[v969] = vqmovun_high_s16(vqmovun_s16(v1337), v1338);
                  v78 = (v78 + v967);
                  --v1333;
                }

                while (v1333);
                goto LABEL_1012;
              }

              _X8 = &_X3->i8[v103];
              __asm { PRFM            #0, [X8] }

              v1279 = *_X3;
              v1280 = v2691;
              if (v2691 <= -16)
              {
                v1280 = -16;
              }

              if (v1280 >= v2688)
              {
                v1280 = v2688;
              }

              v1281 = (v973 + v972 + v1280);
              v1282 = 9;
              v1268 = v2783;
              do
              {
                _X12 = &v1281->i8[2 * v103];
                v1281 = (v1281 + v103);
                __asm { PRFM            #0, [X12] }

                v1285 = *v1281;
                v1286 = vrhaddq_u8(v1279, *v1281);
                v1287 = v21.i64[0];
                v1268[3] = vzip2q_s8(v1286, v21);
                v1268 += 2;
                vst2_s8(v1268->i8, v1286);
                --v1282;
                v1279 = v1285;
              }

              while (v1282 > 2);
              v1288 = vrhaddq_u8(v1285, *(v1281 + v103));
            }

            v1296 = v1268[2].i8;
            v1297 = v21.i64[0];
            vst2_s8(v1296, v1288);
            v1274 = vzip2q_s8(v1288, v21);
            goto LABEL_599;
          }

          __asm { PRFM            #0, [X27] }

          v1202 = 9;
          v1203 = v2778;
          do
          {
            v1204 = _X27;
            _X27 = (_X27 + v82);
            __asm { PRFM            #0, [X27] }

            v1206 = *v1204;
            v1203[3] = vzip2q_s8(*v1204, v21);
            v1203 += 2;
            v1207 = v21.i64[0];
            vst2_s8(v1203->i8, v1206);
            --v1202;
          }

          while (v1202 > 2);
          v1208 = *_X27;
          v1209 = vzip2q_s8(*_X27, v21);
          v1210 = v1203[2].i8;
          v1211 = v21.i64[0];
          vst2_s8(v1210, v1208);
LABEL_569:
          v1203[3] = v1209;
          goto LABEL_582;
        }

        _X8 = &_X27->i8[v82];
        __asm { PRFM            #0, [X8] }

        v1214 = *_X27;
        v1215 = v2689;
        if (v2689 <= -16)
        {
          v1215 = -16;
        }

        if (v1215 >= v2690)
        {
          v1215 = v2690;
        }

        v1216 = (v2680 + v2677 + v1215);
        v1217 = 9;
        v1203 = v2778;
        do
        {
          _X12 = &v1216->i8[2 * v82];
          v1216 = (v1216 + v82);
          __asm { PRFM            #0, [X12] }

          v1220 = *v1216;
          v1221 = vrhaddq_u8(v1214, *v1216);
          v1222 = v21.i64[0];
          v1203[3] = vzip2q_s8(v1221, v21);
          v1203 += 2;
          vst2_s8(v1203->i8, v1221);
          --v1217;
          v1214 = v1220;
        }

        while (v1217 > 2);
        v1223 = vrhaddq_u8(v1220, *(v1216 + v82));
      }

      v1231 = v1203[2].i8;
      v1232 = v21.i64[0];
      vst2_s8(v1231, v1223);
      v1209 = vzip2q_s8(v1223, v21);
      goto LABEL_569;
    }

    v2746 = v11;
    v2760 = v21;
    switch(v84)
    {
      case 1:
        v762 = 0;
        v763 = (v96 - 2 * v79);
        v764 = (v763 + v79 + v79);
        v765 = vzip1q_s8(*(v764 + v79 + v79), v21);
        v766 = vzip1q_s8(*(v764 + v79), v21);
        v767 = vzip1q_s8(*v764, v21);
        v768 = vzip1q_s8(*(v763 + v79), v21);
        v769 = vzip1q_s8(*v763, v21);
        v770 = (v99 + 5 * v79 + v2681 + v79 * v2682 - 2 * v79);
        do
        {
          v771 = v768;
          v768 = v767;
          v767 = v766;
          v766 = v765;
          v765 = vzip1q_s8(*v770, v21);
          v772 = vsubq_s16(vshlq_n_s16(vaddq_s16(v768, v767), 2uLL), vaddq_s16(v771, v766));
          *(&v2770 + v762) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v769, v772), vshlq_n_s16(v772, 2uLL)), vaddq_s16(v765, v22)), 5uLL))), v768);
          v762 += 32;
          v770 = (v770 + v79);
          v769 = v771;
        }

        while (v762 != 256);
        v773 = 0;
        v774 = v96 - 2 * v79;
        v775 = *(v774 + 8);
        v776 = &v774[v79 + 8];
        v777 = (v776 + v79 + v79);
        v778 = vzip1q_s8(*(v777 + v79), v21);
        v779 = vzip1q_s8(*v777, v21);
        v780 = vzip1q_s8(*(v776 + v79), v21);
        v781 = vzip1q_s8(*v776, v21);
        v782 = vzip1q_s8(v775, v21);
        v783 = (v99 + 5 * v79 + v2681 + v79 * v2682 - 2 * v79 + 8);
        v245 = v2718;
        v246 = v2707;
        v247 = v2710;
        do
        {
          v784 = v781;
          v781 = v780;
          v780 = v779;
          v779 = v778;
          v778 = vzip1q_s8(*v783, v21);
          v785 = vsubq_s16(vshlq_n_s16(vaddq_s16(v781, v780), 2uLL), vaddq_s16(v784, v779));
          *(&v2771 + v773) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v782, v785), vshlq_n_s16(v785, 2uLL)), vaddq_s16(v778, v22)), 5uLL))), v781);
          v773 += 32;
          v783 = (v783 + v79);
          v782 = v784;
        }

        while (v773 != 256);
        break;
      case 2:
        v624 = 0;
        v625 = (v96 - 2 * v79);
        v626 = (v625 + v79 + v79);
        v627 = vzip1q_s8(*(v626 + v79 + v79), v21);
        v628 = vzip1q_s8(*(v626 + v79), v21);
        v629 = vzip1q_s8(*v626, v21);
        v630 = vzip1q_s8(*(v625 + v79), v21);
        v631 = vzip1q_s8(*v625, v21);
        v632 = (v99 + 5 * v79 + v2681 + v79 * v2682 - 2 * v79);
        do
        {
          v633 = v630;
          v630 = v629;
          v629 = v628;
          v628 = v627;
          v634 = &v2770.i8[v624];
          v627 = vzip1q_s8(*v632, v21);
          v635 = vsubq_s16(vshlq_n_s16(vaddq_s16(v630, v629), 2uLL), vaddq_s16(v633, v628));
          v635.val[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v631, v635), vshlq_n_s16(v635, 2uLL)), vaddq_s16(v627, v22)), 5uLL));
          v636 = v21.i64[0];
          vst2_s8(v634, v635);
          v624 += 32;
          v632 = (v632 + v79);
          v631 = v633;
        }

        while (v624 != 256);
        v637 = 0;
        v638 = v96 - 2 * v79;
        v639 = *(v638 + 8);
        v640 = &v638[v79 + 8];
        v641 = (v640 + v79 + v79);
        v642 = vzip1q_s8(*(v641 + v79), v21);
        v643 = vzip1q_s8(*v641, v21);
        v644 = vzip1q_s8(*(v640 + v79), v21);
        v645 = vzip1q_s8(*v640, v21);
        v646 = vzip1q_s8(v639, v21);
        v647 = (v99 + 5 * v79 + v2681 + v79 * v2682 - 2 * v79 + 8);
        v245 = v2718;
        v246 = v2707;
        v247 = v2710;
        do
        {
          v648 = v645;
          v645 = v644;
          v644 = v643;
          v643 = v642;
          v649 = &v2771.i8[v637];
          v642 = vzip1q_s8(*v647, v21);
          v650 = vsubq_s16(vshlq_n_s16(vaddq_s16(v645, v644), 2uLL), vaddq_s16(v648, v643));
          v650.val[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v646, v650), vshlq_n_s16(v650, 2uLL)), vaddq_s16(v642, v22)), 5uLL));
          v651 = v21.i64[0];
          vst2_s8(v649, v650);
          v637 += 32;
          v647 = (v647 + v79);
          v646 = v648;
        }

        while (v637 != 256);
        break;
      case 3:
        v714 = 0;
        v715 = (v96 - 2 * v79);
        v716 = (v715 + v79 + v79);
        v717 = vzip1q_s8(*(v716 + v79 + v79), v21);
        v718 = vzip1q_s8(*(v716 + v79), v21);
        v719 = vzip1q_s8(*v716, v21);
        v720 = vzip1q_s8(*(v715 + v79), v21);
        v721 = vzip1q_s8(*v715, v21);
        v722 = (v99 + 5 * v79 + v2681 + v79 * v2682 - 2 * v79);
        do
        {
          v723 = v720;
          v720 = v719;
          v719 = v718;
          v718 = v717;
          v717 = vzip1q_s8(*v722, v21);
          v724 = vsubq_s16(vshlq_n_s16(vaddq_s16(v720, v719), 2uLL), vaddq_s16(v723, v718));
          *(&v2770 + v714) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v721, v724), vshlq_n_s16(v724, 2uLL)), vaddq_s16(v717, v22)), 5uLL))), v719);
          v714 += 32;
          v722 = (v722 + v79);
          v721 = v723;
        }

        while (v714 != 256);
        v725 = 0;
        v726 = v96 - 2 * v79;
        v727 = *(v726 + 8);
        v728 = &v726[v79 + 8];
        v729 = (v728 + v79 + v79);
        v730 = vzip1q_s8(*(v729 + v79), v21);
        v731 = vzip1q_s8(*v729, v21);
        v732 = vzip1q_s8(*(v728 + v79), v21);
        v733 = vzip1q_s8(*v728, v21);
        v734 = vzip1q_s8(v727, v21);
        v735 = (v99 + 5 * v79 + v2681 + v79 * v2682 - 2 * v79 + 8);
        v245 = v2718;
        v246 = v2707;
        v247 = v2710;
        do
        {
          v736 = v733;
          v733 = v732;
          v732 = v731;
          v731 = v730;
          v730 = vzip1q_s8(*v735, v21);
          v737 = vsubq_s16(vshlq_n_s16(vaddq_s16(v733, v732), 2uLL), vaddq_s16(v736, v731));
          *(&v2771 + v725) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v734, v737), vshlq_n_s16(v737, 2uLL)), vaddq_s16(v730, v22)), 5uLL))), v732);
          v725 += 32;
          v735 = (v735 + v79);
          v734 = v736;
        }

        while (v725 != 256);
        break;
      case 4:
        v558 = 0;
        v559 = (v96 - 2);
        do
        {
          v560 = *v559;
          v559 = (v559 + v79);
          v561 = vzip1q_s8(vextq_s8(v560, v560, 2uLL), v21);
          v562 = vsubq_s16(vshlq_n_s16(vaddq_s16(v561, vzip1q_s8(vextq_s8(v560, v560, 3uLL), v21)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v560, v560, 1uLL), v21), vzip1q_s8(vextq_s8(v560, v560, 4uLL), v21)));
          *(&v2770 + v558) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v562, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v560, v21), vzip1q_s8(vextq_s8(v560, v560, 5uLL), v21)), v562)), v22), 5uLL))), v561);
          v558 += 32;
        }

        while (v558 != 256);
        v563 = 0;
        v564 = (v96 + 6);
        v245 = v2718;
        v246 = v2707;
        v247 = v2710;
        do
        {
          v565 = *v564;
          v564 = (v564 + v79);
          v566 = vzip1q_s8(vextq_s8(v565, v565, 2uLL), v21);
          v567 = vsubq_s16(vshlq_n_s16(vaddq_s16(v566, vzip1q_s8(vextq_s8(v565, v565, 3uLL), v21)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v565, v565, 1uLL), v21), vzip1q_s8(vextq_s8(v565, v565, 4uLL), v21)));
          *(&v2771 + v563) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v567, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v565, v21), vzip1q_s8(vextq_s8(v565, v565, 5uLL), v21)), v567)), v22), 5uLL))), v566);
          v563 += 32;
        }

        while (v563 != 256);
        break;
      case 5:
        v671 = v96;
        v672 = v79;
        v673 = 2;
        goto LABEL_410;
      case 6:
        sub_27729BFC4(v2770.i8, 0x20u, v96, v79);
        sub_27729BFC4(v2771.i8, 0x20u, (v96 + 2), v79);
        goto LABEL_507;
      case 7:
        v671 = v96;
        v672 = v79;
        v673 = 3;
LABEL_410:
        v811 = 2;
        goto LABEL_506;
      case 8:
        v1499 = 0;
        v1500 = (v96 - 2);
        do
        {
          v1501 = &v2770.i8[v1499];
          v1502 = *v1500;
          v1500 = (v1500 + v79);
          v1503 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1502, v1502, 2uLL), v21), vzip1q_s8(vextq_s8(v1502, v1502, 3uLL), v21)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1502, v1502, 1uLL), v21), vzip1q_s8(vextq_s8(v1502, v1502, 4uLL), v21)));
          *v1502.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1503, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1502, v21), vzip1q_s8(vextq_s8(v1502, v1502, 5uLL), v21)), v1503)), v22), 5uLL));
          v1503.i64[0] = v21.i64[0];
          vst2_s8(v1501, v1502);
          v1499 += 32;
        }

        while (v1499 != 256);
        v1504 = 0;
        v1505 = (v96 + 6);
        v245 = v2718;
        v246 = v2707;
        v247 = v2710;
        do
        {
          v1506 = &v2771.i8[v1504];
          v1507 = *v1505;
          v1505 = (v1505 + v79);
          v1508 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1507, v1507, 2uLL), v21), vzip1q_s8(vextq_s8(v1507, v1507, 3uLL), v21)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1507, v1507, 1uLL), v21), vzip1q_s8(vextq_s8(v1507, v1507, 4uLL), v21)));
          *v1507.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1508, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1507, v21), vzip1q_s8(vextq_s8(v1507, v1507, 5uLL), v21)), v1508)), v22), 5uLL));
          v1508.i64[0] = v21.i64[0];
          vst2_s8(v1506, v1507);
          v1504 += 32;
        }

        while (v1504 != 256);
        break;
      case 9:
        sub_27729B614(v2770.i8, 0x20u, v96, v79, 8);
        sub_27729B614(v2771.i8, 0x20u, (v96 + 2), v79, 8);
        goto LABEL_507;
      case 10:
        sub_27729B7DC(&v2770, 32, v96, v79, 8);
        sub_27729B7DC(&v2771, 32, (v96 + 2), v79, 8);
        goto LABEL_507;
      case 11:
        sub_27729B98C(v2770.i8, 0x20u, v96, v79, 8);
        sub_27729B98C(v2771.i8, 0x20u, (v96 + 2), v79, 8);
        goto LABEL_507;
      case 12:
        v578 = 0;
        v579 = (v96 - 2);
        do
        {
          v580 = *v579;
          v579 = (v579 + v79);
          v581 = vzip1q_s8(vextq_s8(v580, v580, 3uLL), v21);
          v582 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v580, v580, 2uLL), v21), v581), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v580, v580, 1uLL), v21), vzip1q_s8(vextq_s8(v580, v580, 4uLL), v21)));
          *(&v2770 + v578) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v582, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v580, v21), vzip1q_s8(vextq_s8(v580, v580, 5uLL), v21)), v582)), v22), 5uLL))), v581);
          v578 += 32;
        }

        while (v578 != 256);
        v583 = 0;
        v584 = (v96 + 6);
        v245 = v2718;
        v246 = v2707;
        v247 = v2710;
        do
        {
          v585 = *v584;
          v584 = (v584 + v79);
          v586 = vzip1q_s8(vextq_s8(v585, v585, 3uLL), v21);
          v587 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v585, v585, 2uLL), v21), v586), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v585, v585, 1uLL), v21), vzip1q_s8(vextq_s8(v585, v585, 4uLL), v21)));
          *(&v2771 + v583) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v587, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v585, v21), vzip1q_s8(vextq_s8(v585, v585, 5uLL), v21)), v587)), v22), 5uLL))), v586);
          v583 += 32;
        }

        while (v583 != 256);
        break;
      case 13:
        v671 = v96;
        v672 = v79;
        v673 = 2;
        goto LABEL_505;
      case 14:
        sub_27729C39C(v2770.i8, 0x20u, v96, v79);
        sub_27729C39C(v2771.i8, 0x20u, (v96 + 2), v79);
        goto LABEL_507;
      case 15:
        v671 = v96;
        v672 = v79;
        v673 = 3;
LABEL_505:
        v811 = 3;
LABEL_506:
        sub_27729AF04(v2770.i8, v671, v672, 8, v673, v811);
LABEL_507:
        v22.i64[0] = 0x10001000100010;
        v22.i64[1] = 0x10001000100010;
        v11 = v2746;
        v21 = v2760;
        v245 = v2718;
        v246 = v2707;
        v247 = v2710;
        break;
      default:
        v244 = 0;
        v245 = v2718;
        v246 = v2707;
        v247 = v2710;
        do
        {
          v248 = &v2770.i8[v244];
          v249 = *v96;
          v96 = (v96 + v79);
          v250 = v21.i64[0];
          vst2_s8(v248, v249);
          v248 += 16;
          *v248 = vzip2q_s8(v249, v21);
          v244 += 32;
        }

        while (v244 != 256);
        break;
    }

    switch(v246)
    {
      case 1:
        v1167 = 0;
        v1168 = (v245 - 2 * v2713);
        v1169 = (v1168 + v2713 + v2713);
        v1170 = vzip1q_s8(*(v1169 + v2713 + v2713), v21);
        v1171 = vzip1q_s8(*(v1169 + v2713), v21);
        v1172 = vzip1q_s8(*v1169, v21);
        v1173 = vzip1q_s8(*(v1168 + v2713), v21);
        v1174 = vzip1q_s8(*v1168, v21);
        v1175 = (v2683 + 5 * v2713 + v2685 + v2713 * v2684 - 2 * v2713);
        do
        {
          v1176 = v1173;
          v1173 = v1172;
          v1172 = v1171;
          v1171 = v1170;
          v1170 = vzip1q_s8(*v1175, v21);
          v1177 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1173, v1172), 2uLL), vaddq_s16(v1176, v1171));
          *(&v2774 + v1167) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1174, v1177), vshlq_n_s16(v1177, 2uLL)), vaddq_s16(v1170, v22)), 5uLL))), v1173);
          v1167 += 32;
          v1175 = (v1175 + v2713);
          v1174 = v1176;
        }

        while (v1167 != 256);
        v1178 = 0;
        v1179 = v245 - 2 * v2713;
        v1180 = *(v1179 + 8);
        v1181 = &v1179[v2713 + 8];
        v1182 = (v1181 + v2713 + v2713);
        v1183 = vzip1q_s8(*(v1182 + v2713), v21);
        v1184 = vzip1q_s8(*v1182, v21);
        v1185 = vzip1q_s8(*(v1181 + v2713), v21);
        v1186 = vzip1q_s8(*v1181, v21);
        v1187 = vzip1q_s8(v1180, v21);
        v1188 = (v2683 + 5 * v2713 + v2685 + v2713 * v2684 - 2 * v2713 + 8);
        v1080 = v2694;
        v13 = a3;
        v1081 = v2740;
        v1082 = v2741;
        v1083 = v2706;
        v23.i64[0] = 0x20002000200020;
        v23.i64[1] = 0x20002000200020;
        _X3 = v2696;
        v1086 = v2671;
        v1085 = v2674;
        v1088 = v2667;
        v1087 = v2668;
        do
        {
          v1189 = v1186;
          v1186 = v1185;
          v1185 = v1184;
          v1184 = v1183;
          v1183 = vzip1q_s8(*v1188, v21);
          v1190 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1186, v1185), 2uLL), vaddq_s16(v1189, v1184));
          *(&v2775 + v1178) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1187, v1190), vshlq_n_s16(v1190, 2uLL)), vaddq_s16(v1183, v22)), 5uLL))), v1186);
          v1178 += 32;
          v1188 = (v1188 + v2713);
          v1187 = v1189;
        }

        while (v1178 != 256);
        break;
      case 2:
        v1112 = 0;
        v1113 = (v245 - 2 * v2713);
        v1114 = (v1113 + v2713 + v2713);
        v1115 = vzip1q_s8(*(v1114 + v2713 + v2713), v21);
        v1116 = vzip1q_s8(*(v1114 + v2713), v21);
        v1117 = vzip1q_s8(*v1114, v21);
        v1118 = vzip1q_s8(*(v1113 + v2713), v21);
        v1119 = vzip1q_s8(*v1113, v21);
        v1120 = (v2683 + 5 * v2713 + v2685 + v2713 * v2684 - 2 * v2713);
        do
        {
          v1121 = v1118;
          v1118 = v1117;
          v1117 = v1116;
          v1116 = v1115;
          v1122 = &v2774.i8[v1112];
          v1115 = vzip1q_s8(*v1120, v21);
          v1123 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1118, v1117), 2uLL), vaddq_s16(v1121, v1116));
          v1123.val[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1119, v1123), vshlq_n_s16(v1123, 2uLL)), vaddq_s16(v1115, v22)), 5uLL));
          v1124 = v21.i64[0];
          vst2_s8(v1122, v1123);
          v1112 += 32;
          v1120 = (v1120 + v2713);
          v1119 = v1121;
        }

        while (v1112 != 256);
        v1125 = 0;
        v1126 = v245 - 2 * v2713;
        v1127 = *(v1126 + 8);
        v1128 = &v1126[v2713 + 8];
        v1129 = (v1128 + v2713 + v2713);
        v1130 = vzip1q_s8(*(v1129 + v2713), v21);
        v1131 = vzip1q_s8(*v1129, v21);
        v1132 = vzip1q_s8(*(v1128 + v2713), v21);
        v1133 = vzip1q_s8(*v1128, v21);
        v1134 = vzip1q_s8(v1127, v21);
        v1135 = (v2683 + 5 * v2713 + v2685 + v2713 * v2684 - 2 * v2713 + 8);
        v1080 = v2694;
        v13 = a3;
        v1081 = v2740;
        v1082 = v2741;
        v1083 = v2706;
        v23.i64[0] = 0x20002000200020;
        v23.i64[1] = 0x20002000200020;
        _X3 = v2696;
        v1086 = v2671;
        v1085 = v2674;
        v1088 = v2667;
        v1087 = v2668;
        do
        {
          v1136 = v1133;
          v1133 = v1132;
          v1132 = v1131;
          v1131 = v1130;
          v1137 = &v2775.i8[v1125];
          v1130 = vzip1q_s8(*v1135, v21);
          v1138 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1133, v1132), 2uLL), vaddq_s16(v1136, v1131));
          v1138.val[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1134, v1138), vshlq_n_s16(v1138, 2uLL)), vaddq_s16(v1130, v22)), 5uLL));
          v1139 = v21.i64[0];
          vst2_s8(v1137, v1138);
          v1125 += 32;
          v1135 = (v1135 + v2713);
          v1134 = v1136;
        }

        while (v1125 != 256);
        break;
      case 3:
        v1143 = 0;
        v1144 = (v245 - 2 * v2713);
        v1145 = (v1144 + v2713 + v2713);
        v1146 = vzip1q_s8(*(v1145 + v2713 + v2713), v21);
        v1147 = vzip1q_s8(*(v1145 + v2713), v21);
        v1148 = vzip1q_s8(*v1145, v21);
        v1149 = vzip1q_s8(*(v1144 + v2713), v21);
        v1150 = vzip1q_s8(*v1144, v21);
        v1151 = (v2683 + 5 * v2713 + v2685 + v2713 * v2684 - 2 * v2713);
        do
        {
          v1152 = v1149;
          v1149 = v1148;
          v1148 = v1147;
          v1147 = v1146;
          v1146 = vzip1q_s8(*v1151, v21);
          v1153 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1149, v1148), 2uLL), vaddq_s16(v1152, v1147));
          *(&v2774 + v1143) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1150, v1153), vshlq_n_s16(v1153, 2uLL)), vaddq_s16(v1146, v22)), 5uLL))), v1148);
          v1143 += 32;
          v1151 = (v1151 + v2713);
          v1150 = v1152;
        }

        while (v1143 != 256);
        v1154 = 0;
        v1155 = v245 - 2 * v2713;
        v1156 = *(v1155 + 8);
        v1157 = &v1155[v2713 + 8];
        v1158 = (v1157 + v2713 + v2713);
        v1159 = vzip1q_s8(*(v1158 + v2713), v21);
        v1160 = vzip1q_s8(*v1158, v21);
        v1161 = vzip1q_s8(*(v1157 + v2713), v21);
        v1162 = vzip1q_s8(*v1157, v21);
        v1163 = vzip1q_s8(v1156, v21);
        v1164 = (v2683 + 5 * v2713 + v2685 + v2713 * v2684 - 2 * v2713 + 8);
        v1080 = v2694;
        v13 = a3;
        v1081 = v2740;
        v1082 = v2741;
        v1083 = v2706;
        v23.i64[0] = 0x20002000200020;
        v23.i64[1] = 0x20002000200020;
        _X3 = v2696;
        v1086 = v2671;
        v1085 = v2674;
        v1088 = v2667;
        v1087 = v2668;
        do
        {
          v1165 = v1162;
          v1162 = v1161;
          v1161 = v1160;
          v1160 = v1159;
          v1159 = vzip1q_s8(*v1164, v21);
          v1166 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1162, v1161), 2uLL), vaddq_s16(v1165, v1160));
          *(&v2775 + v1154) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1163, v1166), vshlq_n_s16(v1166, 2uLL)), vaddq_s16(v1159, v22)), 5uLL))), v1161);
          v1154 += 32;
          v1164 = (v1164 + v2713);
          v1163 = v1165;
        }

        while (v1154 != 256);
        break;
      case 4:
        v1092 = 0;
        v1093 = (v245 - 2);
        do
        {
          v1094 = *v1093;
          v1093 = (v1093 + v2713);
          v1095 = vzip1q_s8(vextq_s8(v1094, v1094, 2uLL), v21);
          v1096 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1095, vzip1q_s8(vextq_s8(v1094, v1094, 3uLL), v21)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1094, v1094, 1uLL), v21), vzip1q_s8(vextq_s8(v1094, v1094, 4uLL), v21)));
          *(&v2774 + v1092) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1096, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1094, v21), vzip1q_s8(vextq_s8(v1094, v1094, 5uLL), v21)), v1096)), v22), 5uLL))), v1095);
          v1092 += 32;
        }

        while (v1092 != 256);
        v1097 = 0;
        v1098 = (v245 + 6);
        v1080 = v2694;
        v13 = a3;
        v1081 = v2740;
        v1082 = v2741;
        v1083 = v2706;
        v23.i64[0] = 0x20002000200020;
        v23.i64[1] = 0x20002000200020;
        _X3 = v2696;
        v1086 = v2671;
        v1085 = v2674;
        v1088 = v2667;
        v1087 = v2668;
        do
        {
          v1099 = *v1098;
          v1098 = (v1098 + v2713);
          v1100 = vzip1q_s8(vextq_s8(v1099, v1099, 2uLL), v21);
          v1101 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1100, vzip1q_s8(vextq_s8(v1099, v1099, 3uLL), v21)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1099, v1099, 1uLL), v21), vzip1q_s8(vextq_s8(v1099, v1099, 4uLL), v21)));
          *(&v2775 + v1097) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1101, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1099, v21), vzip1q_s8(vextq_s8(v1099, v1099, 5uLL), v21)), v1101)), v22), 5uLL))), v1100);
          v1097 += 32;
        }

        while (v1097 != 256);
        break;
      case 5:
        v1140 = v245;
        v1141 = v2713;
        v1142 = 2;
        goto LABEL_543;
      case 6:
        sub_27729BFC4(v2774.i8, 0x20u, v245, v2713);
        sub_27729BFC4(v2775.i8, 0x20u, (v2718 + 2), v2713);
        goto LABEL_620;
      case 7:
        v1140 = v245;
        v1141 = v2713;
        v1142 = 3;
LABEL_543:
        v1191 = 2;
        goto LABEL_619;
      case 8:
        v1519 = 0;
        v1520 = (v245 - 2);
        do
        {
          v1521 = &v2774.i8[v1519];
          v1522 = *v1520;
          v1520 = (v1520 + v2713);
          v1523 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1522, v1522, 2uLL), v21), vzip1q_s8(vextq_s8(v1522, v1522, 3uLL), v21)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1522, v1522, 1uLL), v21), vzip1q_s8(vextq_s8(v1522, v1522, 4uLL), v21)));
          *v1522.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1523, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1522, v21), vzip1q_s8(vextq_s8(v1522, v1522, 5uLL), v21)), v1523)), v22), 5uLL));
          v1523.i64[0] = v21.i64[0];
          vst2_s8(v1521, v1522);
          v1519 += 32;
        }

        while (v1519 != 256);
        v1524 = 0;
        v1525 = (v245 + 6);
        v1080 = v2694;
        v13 = a3;
        v1081 = v2740;
        v1082 = v2741;
        v1083 = v2706;
        v23.i64[0] = 0x20002000200020;
        v23.i64[1] = 0x20002000200020;
        _X3 = v2696;
        v1086 = v2671;
        v1085 = v2674;
        v1088 = v2667;
        v1087 = v2668;
        do
        {
          v1526 = &v2775.i8[v1524];
          v1527 = *v1525;
          v1525 = (v1525 + v2713);
          v1528 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1527, v1527, 2uLL), v21), vzip1q_s8(vextq_s8(v1527, v1527, 3uLL), v21)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1527, v1527, 1uLL), v21), vzip1q_s8(vextq_s8(v1527, v1527, 4uLL), v21)));
          *v1527.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1528, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1527, v21), vzip1q_s8(vextq_s8(v1527, v1527, 5uLL), v21)), v1528)), v22), 5uLL));
          v1528.i64[0] = v21.i64[0];
          vst2_s8(v1526, v1527);
          v1524 += 32;
        }

        while (v1524 != 256);
        break;
      case 9:
        sub_27729B614(v2774.i8, 0x20u, v245, v2713, 8);
        sub_27729B614(v2775.i8, 0x20u, (v2718 + 2), v2713, 8);
        goto LABEL_620;
      case 10:
        sub_27729B7DC(&v2774, 32, v245, v2713, 8);
        sub_27729B7DC(&v2775, 32, (v2718 + 2), v2713, 8);
        goto LABEL_620;
      case 11:
        sub_27729B98C(v2774.i8, 0x20u, v245, v2713, 8);
        sub_27729B98C(v2775.i8, 0x20u, (v2718 + 2), v2713, 8);
        goto LABEL_620;
      case 12:
        v1102 = 0;
        v1103 = (v245 - 2);
        do
        {
          v1104 = *v1103;
          v1103 = (v1103 + v2713);
          v1105 = vzip1q_s8(vextq_s8(v1104, v1104, 3uLL), v21);
          v1106 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1104, v1104, 2uLL), v21), v1105), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1104, v1104, 1uLL), v21), vzip1q_s8(vextq_s8(v1104, v1104, 4uLL), v21)));
          *(&v2774 + v1102) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1106, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1104, v21), vzip1q_s8(vextq_s8(v1104, v1104, 5uLL), v21)), v1106)), v22), 5uLL))), v1105);
          v1102 += 32;
        }

        while (v1102 != 256);
        v1107 = 0;
        v1108 = (v245 + 6);
        v1080 = v2694;
        v13 = a3;
        v1081 = v2740;
        v1082 = v2741;
        v1083 = v2706;
        v23.i64[0] = 0x20002000200020;
        v23.i64[1] = 0x20002000200020;
        _X3 = v2696;
        v1086 = v2671;
        v1085 = v2674;
        v1088 = v2667;
        v1087 = v2668;
        do
        {
          v1109 = *v1108;
          v1108 = (v1108 + v2713);
          v1110 = vzip1q_s8(vextq_s8(v1109, v1109, 3uLL), v21);
          v1111 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1109, v1109, 2uLL), v21), v1110), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1109, v1109, 1uLL), v21), vzip1q_s8(vextq_s8(v1109, v1109, 4uLL), v21)));
          *(&v2775 + v1107) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1111, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1109, v21), vzip1q_s8(vextq_s8(v1109, v1109, 5uLL), v21)), v1111)), v22), 5uLL))), v1110);
          v1107 += 32;
        }

        while (v1107 != 256);
        break;
      case 13:
        v1140 = v245;
        v1141 = v2713;
        v1142 = 2;
        goto LABEL_618;
      case 14:
        sub_27729C39C(v2774.i8, 0x20u, v245, v2713);
        sub_27729C39C(v2775.i8, 0x20u, (v2718 + 2), v2713);
        goto LABEL_620;
      case 15:
        v1140 = v245;
        v1141 = v2713;
        v1142 = 3;
LABEL_618:
        v1191 = 3;
LABEL_619:
        sub_27729AF04(v2774.i8, v1140, v1141, 8, v1142, v1191);
LABEL_620:
        v22.i64[0] = 0x10001000100010;
        v22.i64[1] = 0x10001000100010;
        v11 = v2746;
        v21 = v2760;
        v1080 = v2694;
        v13 = a3;
        v1081 = v2740;
        v1082 = v2741;
        v1083 = v2706;
        v23.i64[0] = 0x20002000200020;
        v23.i64[1] = 0x20002000200020;
        _X3 = v2696;
        v1086 = v2671;
        v1085 = v2674;
        v1088 = v2667;
        v1087 = v2668;
        break;
      default:
        v1079 = 0;
        v1080 = v2694;
        v13 = a3;
        v1081 = v2740;
        v1082 = v2741;
        v1083 = v2706;
        v23.i64[0] = 0x20002000200020;
        v23.i64[1] = 0x20002000200020;
        _X3 = v2696;
        v1086 = v2671;
        v1085 = v2674;
        v1088 = v2667;
        v1087 = v2668;
        do
        {
          v1089 = &v2774.i8[v1079];
          v1090 = *v245;
          v245 = (v245 + v2713);
          v1091 = v21.i64[0];
          vst2_s8(v1089, v1090);
          v1089 += 16;
          *v1089 = vzip2q_s8(v1090, v21);
          v1079 += 32;
        }

        while (v1079 != 256);
        break;
    }

    v1340 = 0;
    do
    {
      v1341 = v2773[v1340 / 0x10];
      v1342 = vrhaddq_u16(*(&v2770 + v1340), *(&v2774 + v1340));
      v1343 = vrhaddq_u16(*(&v2770 + v1340 + 16), *(&v2775 + v1340));
      v1344 = vrhaddq_u16(*(&v2772 + v1340), *(&v2776 + v1340));
      v1345 = vrhaddq_u16(v1341, v2777[v1340 / 0x10]);
      if (a2)
      {
        v1341 = *v76;
        v1346 = *(v76 + 16);
        v1347 = *(v76 + 32);
        v1348 = *(v76 + 48);
        v76 += 64;
        v1342 = vaddq_s16(v1341, v1342);
        v1343 = vaddq_s16(v1346, v1343);
        v1344 = vaddq_s16(v1347, v1344);
        v1345 = vaddq_s16(v1348, v1345);
      }

      *v74->i8 = vqmovun_high_s16(vqmovun_s16(v1342), v1343);
      *&v74->i8[v1081] = vqmovun_high_s16(vqmovun_s16(v1344), v1345);
      v74 = (v74 + v1083);
      v1340 += 64;
    }

    while (v1340 != 256);
    if (v2665 == 64)
    {
      __asm { PRFM            #0, [X27] }

      v1373 = 5;
      v1351 = v2778;
      do
      {
        v1374 = _X27;
        _X27 = (_X27 + v82);
        __asm { PRFM            #0, [X27] }

        v1376 = vextq_s8(*v1374, *v1374, 2uLL);
        v1376.i16[7] = v1374[1].i16[0];
        v1377 = vrhaddq_u8(*v1374, v1376);
        v1376.i64[0] = v21.i64[0];
        v1351[3] = vzip2q_s8(v1377, v21);
        v1351 += 2;
        vst2_s8(v1351->i8, *(&v1376 - 8));
        --v1373;
      }

      while (v1373 > 2);
      v1378 = vextq_s8(*_X27, *_X27, 2uLL);
      v1378.i16[7] = _X27[1].i16[0];
      v1371 = vrhaddq_u8(*_X27, v1378);
    }

    else
    {
      if (v2665 != 4)
      {
        if (v2665)
        {
          v1381 = v1086;
          v1382 = 0;
          v1383 = v2678 - (8 * v2692 + 8 * v2702) + 64;
          v1384 = v21;
          v1384.i32[0] = v1383 | (v1383 << 16);
          v1385 = vqtbl1q_s8(v1384, xmmword_2773B3DF0);
          v1386 = v21;
          v1386.i32[0] = (8 * v2692 - v2678) | ((8 * v2692 - v2678) << 16);
          v1387 = vqtbl1q_s8(v1386, xmmword_2773B3DF0);
          v1388 = v21;
          v1388.i32[0] = (8 * v2702 - v2678) | ((8 * v2702 - v2678) << 16);
          v1389 = vqtbl1q_s8(v1388, xmmword_2773B3DF0);
          v2788 = v1385;
          v2789 = v1387;
          v2790 = v1389;
          v2791 = v1088;
          _X9 = &_X27->i8[v82];
          __asm { PRFM            #0, [X9] }

          v1341.i64[0] = _X27->i64[0];
          v1392 = vqtbl1q_s8(v1341, xmmword_2773B3E00);
          v1392.i16[3] = _X27->i16[4];
          v1393 = vzip1q_s8(v1392, v21);
          v1394 = vzip1q_s8(v1341, v21);
          v1395 = v2689;
          if (v2689 <= -16)
          {
            v1395 = -16;
          }

          if (v1395 >= v2690)
          {
            v1396 = v2690;
          }

          else
          {
            v1396 = v1395;
          }

          v1397 = (v2680 + v82 + v2677 + v1396 + 8);
          _X14 = v2680 + v2677 + v1396 + 2 * v82;
          do
          {
            __asm { PRFM            #0, [X14] }

            v1400 = vmlaq_s16(vmulq_s16(v1387, v1393), v1385, v1394);
            v1393.i64[0] = *(v1397 - 1);
            v1394 = vzip1q_s8(v1393, v21);
            v1401 = vqtbl1q_s8(v1393, xmmword_2773B3E00);
            v1401.i16[3] = *v1397;
            v1397 = (v1397 + v82);
            v1393 = vzip1q_s8(v1401, v21);
            *(&v2779 + v1382) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1400, v1389, v1394), v1088, v1393), v23), 6uLL);
            v1382 += 32;
            _X14 += v82;
          }

          while (v1382 != 128);
          v1402 = 0;
          _X10 = &_X27->i8[v82 + 8];
          __asm { PRFM            #0, [X10] }

          v1394.i64[0] = _X27->i64[1];
          v1405 = vqtbl1q_s8(v1394, xmmword_2773B3E00);
          v1405.i16[3] = _X27[1].i16[0];
          v1406 = vzip1q_s8(v1405, v21);
          v1341 = vzip1q_s8(v1394, v21);
          if (v1395 >= v2690)
          {
            v1407 = v2690;
          }

          else
          {
            v1407 = v1395;
          }

          v1408 = v2680 + v82 + v1407;
          v1409 = v2680 + 2 * v82 + v1407 + 8;
          v1086 = v1381;
          do
          {
            _X12 = v1409 + v2677;
            __asm { PRFM            #0, [X12] }

            v1412 = vmlaq_s16(vmulq_s16(v1387, v1406), v1385, v1341);
            v1406.i64[0] = *(v1408 + v2677 + 8);
            v1341 = vzip1q_s8(v1406, v21);
            v1413 = vqtbl1q_s8(v1406, xmmword_2773B3E00);
            v1413.i16[3] = *(v1408 + v2677 + 16);
            v1406 = vzip1q_s8(v1413, v21);
            *(&v2780 + v1402) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1412, v1389, v1341), v1088, v1406), v23), 6uLL);
            v1402 += 32;
            v1408 += v82;
            v1409 += v82;
          }

          while (v1402 != 128);
LABEL_655:
          if (v2666 == 64)
          {
            __asm { PRFM            #0, [X3] }

            v1438 = 5;
            v1416 = v2783;
            do
            {
              v1439 = _X3;
              _X3 = (_X3 + v247);
              __asm { PRFM            #0, [X3] }

              v1441 = vextq_s8(*v1439, *v1439, 2uLL);
              v1441.i16[7] = v1439[1].i16[0];
              v1442 = vrhaddq_u8(*v1439, v1441);
              v1441.i64[0] = v21.i64[0];
              v1416[3] = vzip2q_s8(v1442, v21);
              v1416 += 2;
              vst2_s8(v1416->i8, *(&v1441 - 8));
              --v1438;
            }

            while (v1438 > 2);
            v1443 = vextq_s8(*_X3, *_X3, 2uLL);
            v1443.i16[7] = _X3[1].i16[0];
            v1436 = vrhaddq_u8(*_X3, v1443);
          }

          else
          {
            if (v2666 != 4)
            {
              if (v2666)
              {
                v1446 = 0;
                v1447 = v2679 - (8 * v2693 + 8 * v2704) + 64;
                v1448 = v21;
                v1448.i32[0] = v1447 | (v1447 << 16);
                v1449 = vqtbl1q_s8(v1448, xmmword_2773B3DF0);
                v1450 = v21;
                v1450.i32[0] = (8 * v2693 - v2679) | ((8 * v2693 - v2679) << 16);
                v1451 = vqtbl1q_s8(v1450, xmmword_2773B3DF0);
                v1452 = v21;
                v1452.i32[0] = (8 * v2704 - v2679) | ((8 * v2704 - v2679) << 16);
                v1453 = vqtbl1q_s8(v1452, xmmword_2773B3DF0);
                v2792 = v1449;
                v2793 = v1451;
                v2794 = v1453;
                v2795 = v1087;
                _X9 = &_X3->i8[v247];
                __asm { PRFM            #0, [X9] }

                v1341.i64[0] = _X3->i64[0];
                v1456 = vqtbl1q_s8(v1341, xmmword_2773B3E00);
                v1456.i16[3] = _X3->i16[4];
                v1457 = vzip1q_s8(v1456, v21);
                v1458 = vzip1q_s8(v1341, v21);
                v1459 = v2691;
                if (v2691 <= -16)
                {
                  v1459 = -16;
                }

                if (v1459 >= v2688)
                {
                  v1460 = v2688;
                }

                else
                {
                  v1460 = v1459;
                }

                v1461 = v1086;
                v1462 = v1086 + v247 + v1460;
                v1463 = v1461 + v1460 + 2 * v247;
                do
                {
                  _X16 = v1463 + v1085;
                  __asm { PRFM            #0, [X16] }

                  v1466 = vmlaq_s16(vmulq_s16(v1451, v1457), v1449, v1458);
                  v1457.i64[0] = *(v1462 + v1085);
                  v1458 = vzip1q_s8(v1457, v21);
                  v1467 = vqtbl1q_s8(v1457, xmmword_2773B3E00);
                  v1467.i16[3] = *(v1462 + v1085 + 8);
                  v1457 = vzip1q_s8(v1467, v21);
                  *(&v2784 + v1446) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1466, v1453, v1458), v1087, v1457), v23), 6uLL);
                  v1446 += 32;
                  v1462 += v247;
                  v1463 += v247;
                }

                while (v1446 != 128);
                v1468 = 0;
                _X10 = &_X3->i8[v247 + 8];
                __asm { PRFM            #0, [X10] }

                v1458.i64[0] = _X3->i64[1];
                v1471 = vqtbl1q_s8(v1458, xmmword_2773B3E00);
                v1471.i16[3] = _X3[1].i16[0];
                v1472 = vzip1q_s8(v1471, v21);
                v1473 = vzip1q_s8(v1458, v21);
                if (v1459 >= v2688)
                {
                  v1474 = v2688;
                }

                else
                {
                  v1474 = v1459;
                }

                v1475 = v1461 + v247 + v1474;
                v1476 = v1461 + 2 * v247 + v1474 + 8;
                do
                {
                  _X12 = v1476 + v1085;
                  __asm { PRFM            #0, [X12] }

                  v1479 = vmlaq_s16(vmulq_s16(v1451, v1472), v1449, v1473);
                  v1472.i64[0] = *(v1475 + v1085 + 8);
                  v1473 = vzip1q_s8(v1472, v21);
                  v1480 = vqtbl1q_s8(v1472, xmmword_2773B3E00);
                  v1480.i16[3] = *(v1475 + v1085 + 16);
                  v1472 = vzip1q_s8(v1480, v21);
                  *(&v2785 + v1468) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1479, v1453, v1473), v1087, v1472), v23), 6uLL);
                  v1468 += 32;
                  v1475 += v247;
                  v1476 += v247;
                }

                while (v1468 != 128);
                goto LABEL_685;
              }

              __asm { PRFM            #0, [X3] }

              v1415 = 5;
              v1416 = v2783;
              do
              {
                v1417 = _X3;
                _X3 = (_X3 + v247);
                __asm { PRFM            #0, [X3] }

                v1419 = *v1417;
                v1416[3] = vzip2q_s8(*v1417, v21);
                v1416 += 2;
                v1420 = v21.i64[0];
                vst2_s8(v1416->i8, v1419);
                --v1415;
              }

              while (v1415 > 2);
              v1421 = *_X3;
              v1422 = vzip2q_s8(*_X3, v21);
              v1423 = v1416[2].i8;
              v1424 = v21.i64[0];
              vst2_s8(v1423, v1421);
LABEL_672:
              v1416[3] = v1422;
LABEL_685:
              v1481 = 1;
              v1482 = &v2784;
              do
              {
                v1483 = v1481;
                a9 = v1482[1];
                a10 = v1482[2];
                a11 = v1482[3];
                v1484 = vrhaddq_u16(v1482[-16], *v1482);
                v1485 = vrhaddq_u16(v1482[-15], a9);
                v1486 = vrhaddq_u16(v1482[-14], a10);
                v1487 = vrhaddq_u16(v1482[-13], a11);
                if (v13)
                {
                  v1488 = *v81;
                  a9 = *(v81 + 16);
                  a10 = *(v81 + 32);
                  a11 = *(v81 + 48);
                  v81 += 64;
                  v1484 = vaddq_s16(v1488, v1484);
                  v1485 = vaddq_s16(a9, v1485);
                  v1486 = vaddq_s16(a10, v1486);
                  v1487 = vaddq_s16(a11, v1487);
                }

                v1481 = 0;
                v1482 += 4;
                *v78->i8 = vqmovun_high_s16(vqmovun_s16(v1484), v1485);
                *&v78->i8[v1082] = vqmovun_high_s16(vqmovun_s16(v1486), v1487);
                v78 = (v78 + v1080);
              }

              while ((v1483 & 1) != 0);
              goto LABEL_1012;
            }

            _X8 = &_X3->i8[v247];
            __asm { PRFM            #0, [X8] }

            v1427 = *_X3;
            v1428 = v2691;
            if (v2691 <= -16)
            {
              v1428 = -16;
            }

            if (v1428 >= v2688)
            {
              v1428 = v2688;
            }

            v1429 = (v1086 + v1085 + v1428);
            v1430 = 5;
            v1416 = v2783;
            do
            {
              _X12 = &v1429->i8[2 * v247];
              v1429 = (v1429 + v247);
              __asm { PRFM            #0, [X12] }

              v1433 = *v1429;
              v1434 = vrhaddq_u8(v1427, *v1429);
              v1435 = v21.i64[0];
              v1416[3] = vzip2q_s8(v1434, v21);
              v1416 += 2;
              vst2_s8(v1416->i8, v1434);
              --v1430;
              v1427 = v1433;
            }

            while (v1430 > 2);
            v1436 = vrhaddq_u8(v1433, *(v1429 + v247));
          }

          v1444 = v1416[2].i8;
          v1445 = v21.i64[0];
          vst2_s8(v1444, v1436);
          v1422 = vzip2q_s8(v1436, v21);
          goto LABEL_672;
        }

        __asm { PRFM            #0, [X27] }

        v1350 = 5;
        v1351 = v2778;
        do
        {
          v1352 = _X27;
          _X27 = (_X27 + v82);
          __asm { PRFM            #0, [X27] }

          v1354 = *v1352;
          v1351[3] = vzip2q_s8(*v1352, v21);
          v1351 += 2;
          v1355 = v21.i64[0];
          vst2_s8(v1351->i8, v1354);
          --v1350;
        }

        while (v1350 > 2);
        v1356 = *_X27;
        v1357 = vzip2q_s8(*_X27, v21);
        v1358 = v1351[2].i8;
        v1359 = v21.i64[0];
        vst2_s8(v1358, v1356);
LABEL_642:
        v1351[3] = v1357;
        goto LABEL_655;
      }

      _X8 = &_X27->i8[v82];
      __asm { PRFM            #0, [X8] }

      v1362 = *_X27;
      v1363 = v2689;
      if (v2689 <= -16)
      {
        v1363 = -16;
      }

      if (v1363 >= v2690)
      {
        v1363 = v2690;
      }

      v1364 = (v2680 + v2677 + v1363);
      v1365 = 5;
      v1351 = v2778;
      do
      {
        _X12 = &v1364->i8[2 * v82];
        v1364 = (v1364 + v82);
        __asm { PRFM            #0, [X12] }

        v1368 = *v1364;
        v1369 = vrhaddq_u8(v1362, *v1364);
        v1370 = v21.i64[0];
        v1351[3] = vzip2q_s8(v1369, v21);
        v1351 += 2;
        vst2_s8(v1351->i8, v1369);
        --v1365;
        v1362 = v1368;
      }

      while (v1365 > 2);
      v1371 = vrhaddq_u8(v1368, *(v1364 + v82));
    }

    v1379 = v1351[2].i8;
    v1380 = v21.i64[0];
    vst2_s8(v1379, v1371);
    v1357 = vzip2q_s8(v1371, v21);
    goto LABEL_642;
  }
}

uint64_t sub_27735BB54(int *a1, int16x8_t *a2, int a3, int a4, int a5, int a6, double a7, double a8, double a9, int8x16_t a10)
{
  v10 = *(a1 + 27);
  v12 = *a1;
  v11 = a1[1];
  if (*(a1 + 31))
  {
    if (*(a1 + 29) && *(v10 + 1363))
    {
      v13 = *(v10 + 184);
      v14 = 2 * v13;
      v15 = *(v10 + 32);
      v16 = *(v10 + 72) + (16 * v12);
      v17 = (v16 + (8 * v11 * v13));
      if (v15)
      {
        v17 = (v16 + (16 * v11 * v13));
        v18 = 4;
      }

      else
      {
        v18 = 3;
      }

      v19 = (v16 + v13 + ((v11 << v18) * v13));
      if (!*(a1 + 30))
      {
        v19 = v17;
      }
    }

    else
    {
      v20 = *(v10 + 184);
      v21 = a1[4];
      v22 = *(v10 + 72) + 16 * v20 * (v21 / (2 * a1[5])) + ((8 * (v21 % (2 * a1[5]))) & 0xFFFFFFF0);
      if (v21)
      {
        v23 = v20;
      }

      else
      {
        v23 = 0;
      }

      v24 = (v22 + v23);
      if (v21)
      {
        v25 = (8 * v20);
      }

      else
      {
        v25 = 0;
      }

      v19 = (v22 + v25);
      if (*(a1 + 31) == 1)
      {
        v14 = v20;
      }

      else
      {
        v19 = v24;
        v14 = 2 * v20;
      }
    }

    result = 4294958327;
    if (a6 > 1)
    {
      if (a6 == 2)
      {
        v162 = 0;
        v163 = (v19 - v14);
        v164 = vmovl_high_u8(*v163);
        v165 = vmovl_u8(*v163->i8);
        v166.i64[0] = 0xFF00FF00FF00FFLL;
        v166.i64[1] = 0xFF00FF00FF00FFLL;
        do
        {
          *v19 = vuzp1q_s8(vminq_s16(vmaxq_s16(vaddq_s16(a2[v162], v165), 0), v166), vminq_s16(vmaxq_s16(vaddq_s16(a2[v162 + 1], v164), 0), v166));
          v19 = (v19 + v14);
          v162 += 2;
        }

        while ((v162 * 16) != 256);
      }

      else
      {
        if (a6 != 3)
        {
          return result;
        }

        v39 = 0;
        v40 = &v19[-1].u8[-v14 + 14];
        v41 = (v19 - v14);
        v42 = &v19[-1].u16[2 * v14 + 7];
        v43 = 65468 * *v40 + 65485 * v41->u8[0] + 65502 * v41->u8[2] + 65519 * v41->u8[4] + 17 * v41->u8[8] + 34 * v41->u8[10] + 51 * v41->u8[12] + 68 * v41->u8[14];
        v44 = *(v42 + v14);
        v45 = v42[v14];
        v46 = *(v42 + 3 * v14);
        v47 = bswap32(*(&v19[-1].u16[7] - v14));
        v48 = HIWORD(v47);
        v49 = bswap32(v19[-1].u16[7]);
        v50 = bswap32(*(&v19[-1].u16[7] + v14));
        v51 = bswap32(v19[-1].u16[v14 + 7]);
        LODWORD(v42) = bswap32(*v42);
        v52 = bswap32(v44);
        v53 = bswap32(v45);
        v54 = bswap32(v46);
        v55 = 65468 * v40[1] + 65485 * v41->u8[1] + 65502 * v41->u8[3] + 65519 * v41->u8[5] + 17 * v41->u8[9] + 34 * v41->u8[11] + 51 * v41->u8[13] + 68 * v41->u8[15];
        LODWORD(v41) = HIBYTE(v54) - HIBYTE(v47);
        v56 = HIWORD(v50);
        v57 = (17 * ((v42 >> 24) - HIBYTE(v51)) + 34 * (HIBYTE(v52) - HIBYTE(v50)) + 51 * (HIBYTE(v53) - HIBYTE(v49)) + 68 * v41 + 16);
        LODWORD(v41) = (17 * (BYTE2(v42) - BYTE2(v51)) + 34 * (BYTE2(v52) - v56) + 51 * (BYTE2(v53) - BYTE2(v49)) + 68 * (BYTE2(v54) - v48) + 16);
        v58 = (v43 << 16) + 0x100000;
        v59 = (v55 << 16) + 0x100000;
        v60 = &v19->i8[7 * v14];
        v61 = &v19->i8[-v14];
        LOWORD(v52) = 16 * (v61[14] + *(v60 - 2));
        LOWORD(v61) = 16 * (v61[15] + *(v60 - 1));
        v62 = 16;
        LODWORD(v63) = 16 - (v57 >> 5);
        HIDWORD(v63) = 16 - (v41 >> 5);
        v64.i16[0] = v52 + (v58 >> 21);
        v64.i16[1] = v61 + (v59 >> 21);
        v64.i16[2] = v52 + 2 * (v58 >> 21);
        v64.i16[3] = v61 + 2 * (v59 >> 21);
        v64.i16[4] = 3 * (v58 >> 21) + v52;
        v64.i16[5] = 3 * (v59 >> 21) + v61;
        v64.i16[6] = v52 + 4 * (v58 >> 21);
        v64.i16[7] = v61 + 4 * (v59 >> 21);
        v77.i16[0] = -3 * (v58 >> 21) + v52;
        v77.i16[1] = -3 * (v59 >> 21) + v61;
        v77.i16[2] = v52 - 2 * (v58 >> 21);
        v77.i16[3] = v61 - 2 * (v59 >> 21);
        v65.i32[0] = 2 * (v57 >> 5);
        v66 = (v65.i32[0] + 16);
        v77.i16[4] = v52 - (v58 >> 21);
        LODWORD(v67) = (v57 >> 5) + 16;
        v68.i32[0] = v57 >> 5;
        v69 = 4 * (v57 >> 5);
        v68.i32[1] = v41 >> 5;
        v77.i16[5] = v61 - (v59 >> 21);
        v65.i32[1] = 2 * (v41 >> 5);
        v70 = vsub_s32(0x1000000010, v65);
        v71 = vmla_s32(0x1000000010, v68, vdup_n_s32(0xFFFDu));
        v77.i16[6] = v52;
        LODWORD(v72) = (v41 >> 5) + 16;
        v73 = (2 * (v41 >> 5) + 16);
        v74 = (v66 + (v57 >> 5));
        v75 = (v73 + (v41 >> 5));
        v76 = (v69 + 16);
        v77.i16[7] = v61;
        v78 = (4 * v68.i32[1] + 16);
        v79.i64[0] = 0xFF00FF00FF00FFLL;
        v79.i64[1] = 0xFF00FF00FF00FFLL;
        v80 = 16;
        do
        {
          v201.val[1] = vdupq_lane_s16(v71, 2);
          v201.val[0] = vdupq_lane_s16(v71, 0);
          v71 = v70;
          v70 = v63;
          v63 = __PAIR64__(v62, v80);
          v62 = v72;
          v72 = v73;
          v73 = v75;
          v75 = v78;
          v80 = v67;
          v67 = v66;
          v201.val[0] = vqtbl2q_s8(v201, xmmword_2773B4220);
          v201.val[1] = vaddq_s16(v201.val[0], v64);
          v201.val[0] = vshrq_n_s16(vaddq_s16(v201.val[0], v77), 5uLL);
          v201.val[1] = vshrq_n_s16(v201.val[1], 5uLL);
          v81 = vcgtq_s16(v201.val[1], v79);
          v82 = vandq_s8(v201.val[0], vcgezq_s16(v201.val[0]));
          v201.val[0] = vcgtq_s16(v201.val[0], v79);
          v66 = v74;
          v74 = v76;
          *v19 = vuzp1q_s8(vminq_s16(vmaxq_s16(vaddq_s16(a2[v39], vorrq_s8((*v201.val & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)), vbicq_s8((*&v82 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)), v201.val[0]))), 0), v79), vminq_s16(vmaxq_s16(vaddq_s16(a2[v39 + 1], vorrq_s8((*&v81 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)), vbicq_s8((*&vandq_s8(v201.val[1], vcgezq_s16(v201.val[1])) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)), v81))), 0), v79));
          v19 = (v19 + v14);
          v39 += 2;
          v78 = v72;
          v76 = v67;
        }

        while ((v39 * 16) != 256);
      }
    }

    else if (a6)
    {
      if (a6 != 1)
      {
        return result;
      }

      v27 = 0;
      v28.i64[0] = 0xFF00FF00FF00FFLL;
      v28.i64[1] = 0xFF00FF00FF00FFLL;
      do
      {
        a10.i8[0] = v19[-1].i8[14];
        a10.i8[4] = v19[-1].i8[15];
        v29 = vdup_lane_s8(*a10.i8, 4);
        *v30.i8 = vdup_lane_s8(*a10.i8, 0);
        v30.u64[1] = v29;
        *v30.i8 = vqtbl1_s8(v30, 0xF060D040B020900);
        a10 = vuzp1q_s8(vminq_s16(vmaxq_s16(vaddw_u8(a2[v27], *v30.i8), 0), v28), vminq_s16(vmaxq_s16(vaddw_u8(a2[v27 + 1], *v30.i8), 0), v28));
        *v19 = a10;
        v19 = (v19 + v14);
        v27 += 2;
      }

      while ((v27 * 16) != 256);
    }

    else
    {
      if (a3 >= 1)
      {
        v114 = v14;
      }

      else
      {
        v114 = 0;
      }

      v115 = v19 - v114;
      v116 = &v19[-1].u16[7];
      v117 = &v19[-1].u16[2 * v14 + 7];
      v118 = v14;
      v119 = 3 * v14;
      v120 = 0x80008000800080;
      v121 = 1;
      do
      {
        v122 = v120;
        v123 = 0x80008000800080;
        v120 = 0x80008000800080;
        if (a4 | a3)
        {
          v124 = bswap32(*v116);
          v125.i32[0] = HIBYTE(v124);
          v126 = bswap32(*(v116 + v14));
          v125.i32[1] = BYTE2(v124);
          v127.i32[0] = HIBYTE(v126);
          v127.i32[1] = BYTE2(v126);
          v128 = bswap32(*v117);
          v129.i32[0] = HIBYTE(v128);
          v130 = bswap32(*(v117 + v14));
          v129.i32[1] = BYTE2(v128);
          v131.i32[0] = HIBYTE(v130);
          v131.i32[1] = BYTE2(v130);
          v132 = bswap32(v116[v118]);
          v133.i32[0] = HIBYTE(v132);
          v134 = bswap32(*(v116 + v119));
          v133.i32[1] = BYTE2(v132);
          v135.i32[0] = HIBYTE(v134);
          v135.i32[1] = BYTE2(v134);
          v136 = bswap32(v117[v118]);
          v137 = vadd_s32(v129, v131);
          v131.i32[0] = HIBYTE(v136);
          v138 = bswap32(*(v117 + v119));
          v131.i32[1] = BYTE2(v136);
          v139 = *v115 + v115[2] + v115[4] + v115[6] + 2;
          v140 = v115[8] + v115[10] + v115[12] + v115[14] + 2;
          v141 = v115[1] + v115[3] + v115[5] + v115[7] + 2;
          v142 = v115[9] + v115[11] + v115[13] + v115[15] + 2;
          v143 = vadd_s32(vadd_s32(vadd_s32(v125, v127), vadd_s32(v133, v135)), 0x200000002);
          v125.i32[0] = HIBYTE(v138);
          v125.i32[1] = BYTE2(v138);
          v144 = vadd_s32(vadd_s32(v137, vadd_s32(v131, v125)), 0x200000002);
          v123 = vshr_n_u16(vuzp1_s16(v144, v144), 2uLL);
          if (a3 >= 1 && a4)
          {
            v120.i16[0] = (v143.i16[0] + v139) >> 3;
            v120.i16[1] = (v143.i16[2] + v141) >> 3;
            v120.i16[2] = v140 >> 2;
            v120.i16[3] = v142 >> 2;
            v123.i16[2] = (v144.i16[0] + v140) >> 3;
            v123.i16[3] = (v144.i16[2] + v142) >> 3;
          }

          else
          {
            v145 = vcltz_s16(vshl_n_s16(vdup_n_s16(a4 == 0), 0xFuLL));
            v146.i16[0] = v139 >> 2;
            v146.i16[1] = v141 >> 2;
            v146.i16[2] = v140 >> 2;
            v146.i16[3] = v142 >> 2;
            v123 = vbsl_s8(v145, v146, v123);
            v120 = vbsl_s8(v145, v146, vshr_n_u16(vuzp1_s16(v143, v143), 2uLL));
          }
        }

        v147 = a4 == a5;
        v148 = v121 & v147;
        if ((v121 & v147) != 0)
        {
          v149 = -1;
        }

        else
        {
          v149 = 0;
        }

        if (v148)
        {
          break;
        }

        v150 = v121 ^ 1;
        a4 = a5;
        v121 = 0;
      }

      while ((v150 & 1) == 0);
      v151 = vbsl_s8(vdup_n_s16(v149), v120, v122);
      v152 = 1;
      v153.i64[0] = 0xFF00FF00FF00FFLL;
      v153.i64[1] = 0xFF00FF00FF00FFLL;
      do
      {
        v154 = v152;
        v155 = vdupq_lane_s32(v151, 1);
        v156 = vdupq_lane_s32(v151, 0);
        v157 = 1;
        do
        {
          v158 = v157;
          v159 = vuzp1q_s8(vminq_s16(vmaxq_s16(vaddq_s16(a2[2], v156), 0), v153), vminq_s16(vmaxq_s16(vaddq_s16(a2[3], v155), 0), v153));
          v160 = *a2;
          v161 = a2[1];
          a2 += 4;
          *v19 = vuzp1q_s8(vminq_s16(vmaxq_s16(vaddq_s16(v160, v156), 0), v153), vminq_s16(vmaxq_s16(vaddq_s16(v161, v155), 0), v153));
          *(v19 + v14) = v159;
          v19 = (v19 + v118 * 2);
          v157 = 0;
        }

        while ((v158 & 1) != 0);
        v152 = 0;
        v151 = v123;
      }

      while ((v154 & 1) != 0);
    }
  }

  else
  {
    if (*(a1 + 29) && *(v10 + 1363))
    {
      v31 = *(v10 + 184);
      LODWORD(v32) = 2 * v31;
      v33 = *(v10 + 32);
      v34 = *(v10 + 72) + (16 * v12);
      v35 = 16 * v11 * v31;
      if (v33)
      {
        v36 = 4;
      }

      else
      {
        v35 = 8 * v11 * v31;
        v36 = 3;
      }

      v37 = v34 + (v11 << v36) * v31;
      if (*(a1 + 30))
      {
        v38 = v31;
      }

      else
      {
        v38 = v35;
      }

      if (*(a1 + 30))
      {
        v34 = v37;
      }
    }

    else
    {
      LODWORD(v32) = *(v10 + 184);
      v34 = *(v10 + 72) + (16 * v12);
      v38 = 8 * v11 * v32;
    }

    v83 = (v34 + v38);
    result = 4294958327;
    if (a6 > 1)
    {
      if (a6 == 2)
      {
        v188 = 0;
        v189 = (v83 - v32);
        v190 = vzip1q_s8(*v189, 0);
        v191 = vzip2q_s8(*v189, 0);
        do
        {
          *v83 = vqmovun_high_s16(vqmovun_s16(vaddq_s16(a2[v188], v190)), vaddq_s16(a2[v188 + 1], v191));
          v83 = (v83 + v32);
          v188 += 2;
        }

        while ((v188 * 16) != 256);
      }

      else
      {
        if (a6 != 3)
        {
          return result;
        }

        v86 = 0;
        v87 = vqtbl1q_s8(*(v83 - v32), xmmword_2773B4370);
        v87.i16[0] = *(&v83[-1].i16[7] - v32);
        v88 = vqtbl1q_s8(vqtbl1q_s8(vsubq_s16(vzip2q_s8(v87, 0), vzip1q_s8(vqtbl1q_s8(v87, xmmword_2773B4380), 0)), xmmword_2773B4390), xmmword_2773B43A0);
        v89 = vpaddq_s32(vmull_s16(*v88.i8, 0x22001100220011), vmull_s16(*&vextq_s8(v88, v88, 8uLL), 0x44003300440033));
        v90.i64[0] = 0x1000000010;
        v90.i64[1] = 0x1000000010;
        v91 = vqtbl1q_s8(vqtbl1q_s8(vshrq_n_s32(vaddq_s32(vaddq_s32(v89, v90), vextq_s8(v89, 0, 8uLL)), 5uLL), xmmword_2773B43B0), xmmword_2773B3DF0);
        v92 = &v83[-1].u8[v32 + 14];
        v93 = *v92;
        v94 = v92[1];
        v95 = &v92[v32];
        v96 = *v95;
        v97 = v95[1];
        v98 = &v95[(2 * v32)];
        v99 = *v98;
        v100 = v98[1];
        v101 = &v98[v32];
        v102 = *v101;
        v103 = v101[1];
        v104 = &v101[v32];
        v105 = vdupq_n_s32((34816 * (v100 - v97 + 2 * (v103 - v94) + 3 * (v104[1] - v83[-1].u8[15]) + 4 * (v104[v32 + 1] - v83[-1].u8[-v32 + 15])) + 0x8000) & 0xFFFF0000 | ((17 * (v99 - v96 + 2 * (v102 - v93) + 3 * (*v104 - v83[-1].u8[14]) + 4 * (v104[v32] - v83[-1].u8[-v32 + 14])) + 16) >> 5));
        v106.i64[0] = 0x2000200020002;
        v106.i64[1] = 0x2000200020002;
        v107 = vmlaq_s16(vdupq_n_s32((16 * (v83->u8[-v32 + 14] + v83->u8[8 * v32 - v32 - 2])) | ((v83->u8[-v32 + 15] + v83->u8[8 * v32 - v32 - 1]) << 20)), v105, v106);
        v106.i64[0] = 0x10001000100010;
        v106.i64[1] = 0x10001000100010;
        v108 = vaddq_s16(v107, v106);
        v109 = vmlaq_s16(v108, v91, xmmword_2773B3D30);
        v110 = vmlaq_s16(v108, v91, xmmword_2773B3D40);
        v111.i64[0] = 0xFF00FF00FF00FFLL;
        v111.i64[1] = 0xFF00FF00FF00FFLL;
        do
        {
          v112 = vshrq_n_s16(v109, 5uLL);
          v109 = vaddq_s16(v109, v105);
          v113 = vshrq_n_s16(v110, 5uLL);
          v110 = vaddq_s16(v110, v105);
          *v83 = vqmovun_high_s16(vqmovun_s16(vaddq_s16(a2[v86], vmaxq_s16(vminq_s16(v112, v111), 0))), vaddq_s16(a2[v86 + 1], vmaxq_s16(vminq_s16(v113, v111), 0)));
          v83 = (v83 + v32);
          v86 += 2;
        }

        while ((v86 * 16) != 256);
      }
    }

    else if (a6)
    {
      if (a6 != 1)
      {
        return result;
      }

      v84 = 0;
      do
      {
        v85 = vqtbl1q_s8(((v83[-1].u16[7] | (v83[-1].u16[7] << 8)) & 0xFF00FFLL), xmmword_2773B3DF0);
        *v83 = vqmovun_high_s16(vqmovun_s16(vaddq_s16(a2[v84], v85)), vaddq_s16(a2[v84 + 1], v85));
        v83 = (v83 + v32);
        v84 += 2;
      }

      while ((v84 * 16) != 256);
    }

    else
    {
      if (a4 | a3)
      {
        if (a3 >= 1)
        {
          v167 = v32;
        }

        else
        {
          v167 = 0;
        }

        v168 = (v83 - v167);
        v169 = (&v83[-1].i16[7] + (4 * v32));
        v170 = (2 * v32);
        v171 = (3 * v32);
        v172 = *v168;
        v173 = (&v83[-1].i16[7] + v170);
        v174 = (&v83[-1].i16[7] + v171);
        v175 = (v169 + v32);
        v176 = (v169 + v170);
        v178.i16[4] = *v169;
        v177 = (v169 + v171);
        v32 = v32;
        v179 = *&v172 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
        v180 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8((*&v172 & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00)))));
        v172.i16[0] = v83[-1].i16[7];
        v172.i16[1] = *(&v83[-1].i16[7] + v32);
        v172.i16[2] = *v173;
        v172.i16[3] = *v174;
        v172.i16[4] = v178.u8[8];
        v172.i16[5] = *v175;
        v172.i16[6] = *v176;
        v172.i16[7] = *v177;
        v181 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(v172)));
        v178.i16[0] = v83[-1].i16[7] & 0xFF00;
        v178.i16[1] = *(&v83[-1].i16[7] + v32) & 0xFF00;
        v178.i16[2] = *v173 & 0xFF00;
        v178.i16[3] = *v174 & 0xFF00;
        v178.i16[4] &= 0xFF00u;
        v178.i16[5] = *v175 & 0xFF00;
        v178.i16[6] = *v176 & 0xFF00;
        v178.i16[7] = *v177 & 0xFF00;
        v182 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(v178)));
        v183 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(v179))), xmmword_2773B43C0);
        v184 = vaddq_s32(v180, xmmword_2773B43C0);
        v185 = vaddq_s32(v181, xmmword_2773B43C0);
        v186 = vaddq_s32(v182, xmmword_2773B43C0);
        if (a3 >= 1 && a4)
        {
          v187 = vorrq_s8(vshrq_n_u16(vorrq_s8(vextq_s8(0, vzip2q_s16(v185, v186), 8uLL), vextq_s8(0, vzip2q_s16(v183, v184), 0xCuLL)), 2uLL), vshrq_n_u16(vqtbl1q_s8(vorrq_s8(vextq_s8(0, vaddq_s32(v186, v184), 0xEuLL), vaddq_s32(v185, v183)), xmmword_2773B4230), 3uLL));
        }

        else
        {
          if (a4)
          {
            v192 = vorrq_s8(vextq_s8(0, v186, 0xEuLL), v185);
            v193 = xmmword_2773B43E0;
          }

          else
          {
            v192 = vorrq_s8(vextq_s8(0, v184, 0xEuLL), v183);
            v193 = xmmword_2773B43D0;
          }

          v187 = vshrq_n_u16(vqtbl1q_s8(v192, v193), 2uLL);
        }
      }

      else
      {
        v170 = (2 * v32);
        v187.i64[0] = 0x80008000800080;
        v187.i64[1] = 0x80008000800080;
        v32 = v32;
      }

      v194 = 1;
      do
      {
        v195 = v194;
        v196 = vqtbl1q_s8(v187, xmmword_2773B3DF0);
        v197 = vqtbl1q_s8(v187, xmmword_2773B43F0);
        v198 = 1;
        do
        {
          v199 = v198;
          v200 = vqmovun_high_s16(vqmovun_s16(vaddq_s16(a2[2], v196)), vaddq_s16(a2[3], v197));
          *v83 = vqmovun_high_s16(vqmovun_s16(vaddq_s16(*a2, v196)), vaddq_s16(a2[1], v197));
          *(v83 + v32) = v200;
          a2 += 4;
          v83 = (v83 + v170);
          v198 = 0;
        }

        while ((v199 & 1) != 0);
        v194 = 0;
        v187 = vqtbl1q_s8(v187, xmmword_2773B4400);
      }

      while ((v195 & 1) != 0);
    }
  }

  return 0;
}

int *sub_27735C928(int *result, uint64_t a2)
{
  v238 = *MEMORY[0x277D85DE8];
  v10 = *(result + 27);
  v12 = *result;
  v11 = result[1];
  if (*(result + 29) && *(v10 + 1363))
  {
    v13 = v10 + 504;
    v14 = *(v10 + 168);
    v15 = 2 * v14;
    v16 = *(v10 + 32);
    v17 = *(v10 + 64) + (16 * v12);
    if (*(result + 30))
    {
      if (v16)
      {
        v18 = 5;
      }

      else
      {
        v18 = 4;
      }

      v19 = ((v11 << v18) * v14);
      v17 += v14;
      goto LABEL_21;
    }

    v20 = v11 * v14;
    if (v16)
    {
      v19 = (32 * v20);
LABEL_21:
      v25 = v17 + v19;
      goto LABEL_22;
    }

LABEL_20:
    v19 = (16 * v20);
    goto LABEL_21;
  }

  v13 = v10 + 440;
  v15 = *(v10 + 168);
  if (*(result + 31) == 1)
  {
    v21 = result[4];
    v17 = *(v10 + 64) + 32 * v15 * (v21 / (2 * result[5])) + ((8 * (v21 % (2 * result[5]))) & 0xFFFFFFF0);
    if (v21)
    {
      v19 = 16 * v15;
    }

    else
    {
      v19 = 0;
    }

    goto LABEL_21;
  }

  if (!*(result + 31))
  {
    v17 = *(v10 + 64) + (16 * v12);
    v20 = v11 * v15;
    goto LABEL_20;
  }

  v22 = result[4];
  v23 = *(v10 + 64) + 32 * v15 * (v22 / (2 * result[5])) + ((8 * (v22 % (2 * result[5]))) & 0xFFFFFFF0);
  if (v22)
  {
    v24 = *(v10 + 168);
  }

  else
  {
    v24 = 0;
  }

  v25 = v23 + v24;
  v13 = v10 + 504;
  v15 *= 2;
LABEL_22:
  v26 = *(*(result + 5) + 52);
  v27 = *(result + 21);
  v28 = *(result + 22) + 32;
  v30 = *(result + 16);
  v29 = *(result + 17);
  v32 = *(result + 18);
  v31 = *(result + 19);
  v236 = 0;
  v237 = 0;
  v234 = v28;
  v235 = 0;
  if (v30)
  {
    v33 = 48;
    if (!v30[64])
    {
      v33 = 32;
    }

    v235 = &v30[v33];
    v34 = 1;
    if (v29)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v34 = 0;
    if (v29)
    {
LABEL_26:
      if (v29[64])
      {
        v35 = v29 + 48;
      }

      else
      {
        v35 = v29 + 32;
      }

      v236 = v35;
      v36 = 1;
      goto LABEL_32;
    }
  }

  v36 = 0;
  v236 = 0;
LABEL_32:
  v37 = v32 != 0;
  v38 = v31 != 0;
  if (v27)
  {
    if (*(v27 + 64))
    {
      v39 = v27 + 48;
    }

    else
    {
      v39 = v27 + 32;
    }

    v237 = v39;
  }

  else
  {
    v237 = 0;
  }

  v40 = *(result + 6);
  if (!*(v40 + 4))
  {
    goto LABEL_59;
  }

  if (!v30)
  {
    v34 = 0;
    if (v29)
    {
      goto LABEL_47;
    }

    goto LABEL_42;
  }

  if (v30[48] != 34)
  {
    v34 = 1;
    if (v29)
    {
      goto LABEL_47;
    }

LABEL_42:
    v36 = 0;
    if (v32)
    {
      goto LABEL_43;
    }

LABEL_49:
    v37 = 0;
    if (!v31)
    {
      goto LABEL_45;
    }

LABEL_50:
    v38 = *(v31 + 48) != 34 || *(v31 + 32) != 34;
    goto LABEL_59;
  }

  v34 = v30[32] != 34;
  if (!v29)
  {
    goto LABEL_42;
  }

LABEL_47:
  if (v29[48] == 34)
  {
    v36 = v29[32] != 34;
    if (!v32)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v36 = 1;
    if (!v32)
    {
      goto LABEL_49;
    }
  }

LABEL_43:
  if (*(v32 + 48) != 34)
  {
    v37 = 1;
    if (!v31)
    {
      goto LABEL_45;
    }

    goto LABEL_50;
  }

  v37 = *(v32 + 32) != 34;
  if (v31)
  {
    goto LABEL_50;
  }

LABEL_45:
  v38 = 0;
LABEL_59:
  v41 = (2 * v37) | (4 * v36) | (8 * v34) | v38;
  v42 = &byte_280A6AA70;
  if (v30 && (*(result + 185) & 1) != 0)
  {
    v43 = *(result + 31);
    if (v43 != 2 || v30[144])
    {
      if (v43 == 1 && v30[144] == 1)
      {
        v42 = &unk_280A6AB08;
        if ((result[4] & 1) == 0)
        {
          v42 = &unk_280A6AAD8;
        }
      }
    }

    else
    {
      v42 = &unk_280A6AAA8;
    }
  }

  v44 = 0;
  v45 = v42 + 16;
  v46 = 2 * v15;
  v47 = 3 * v15;
  v48 = (&unk_2773B4980 + 4 * v41);
  v49.i64[0] = -1;
  v49.i64[1] = -1;
  v50 = vshrq_n_u16(v49, 0xFuLL);
  v51 = vaddq_s16(v50, v50);
  v52 = vdupq_n_s64(0xFFFFFFF0uLL);
  v53 = vdupq_n_s64(0xFFFFFFF8uLL);
  v54.i64[0] = 0x1000100010001;
  v54.i64[1] = 0x1000100010001;
  v55 = vaddq_s16(v54, v54);
  v56 = vdupq_n_s64(0xFFFFFFD0uLL);
  do
  {
    v57 = v45[v44 - 16];
    if (v30 && v44 >= 8 && *(result + 31) == 2 && !v30[144])
    {
      v58 = !(v57 & 1) | (2 * !(v57 & 1));
    }

    else
    {
      v58 = !(v57 & 1);
    }

    v59 = v45[v44];
    v60 = *(&v234 + (~(2 * v59) & 2));
    v61 = *(&v234 + v58);
    if (v60)
    {
      v62 = v61 == 0;
    }

    else
    {
      v62 = 1;
    }

    if (v62 || (v63 = *(v61 + ((v57 >> 1) & 0xF)), v64 = *(v60 + ((v59 >> 1) & 0xF)), (*(*(result + 6) + 4) & ((v64 | v63) >> 5) & 1) != 0))
    {
      v65 = 2;
    }

    else
    {
      v65 = (((v63 & 0xF) - (v64 & 0xF)) & (((v63 & 0xF) - (v64 & 0xF)) >> 31)) + (v64 & 0xF);
    }

    v67 = *v48;
    v48 += 16;
    v66 = v67;
    v68 = *(v40 + v44 + 310);
    if (v65 <= v68)
    {
      ++v68;
    }

    v69 = v68 & (*(v40 + v44 + 290) - 1) | v65 & -*(v40 + v44 + 290);
    *(v28 + v44) = v69;
    v70 = (v25 + *(v13 + 4 * v44));
    if (v69 <= 3)
    {
      if (v69 <= 1)
      {
        if (v69)
        {
          if (v69 != 1)
          {
            goto LABEL_219;
          }

          if (v26)
          {
            v80 = (a2 + 2 * byte_2773B4D80[v44]);
            v81 = v70 - v66;
            v82 = *v81 | (*v81 << 8);
            v83 = v81[v15] | (v81[v15] << 8);
            v2.i64[0] = *v80;
            v3.i64[0] = v80[4];
            v4.i32[0] = v82 | (v82 << 16);
            v4 = vzip1q_s8(v4, 0);
            v5.i32[0] = v83 | (v83 << 16);
            v5 = vzip1q_s8(v5, 0);
            v84 = vaddq_s16(v2, v4);
            v85 = vaddq_s16(v3, v5);
            *v84.i8 = vqmovun_s16(v84);
            *v85.i8 = vqmovun_s16(v85);
            *v70 = v84.i32[0];
            *(v70 + v15) = v85.i32[0];
            v86 = v81[v46] | (v81[v46] << 8);
            LODWORD(v81) = v81[v47] | (v81[v47] << 8);
            v84.i32[0] = v86 | (v86 << 16);
            v85.i32[0] = v81 | (v81 << 16);
            v4.i64[0] = v80[8];
            v5.i64[0] = v80[12];
            v2 = vaddq_s16(v4, vzip1q_s8(v84, 0));
            v3 = vaddq_s16(v5, vzip1q_s8(v85, 0));
            goto LABEL_160;
          }

          v116 = v70 - v66;
          v117 = *v116 | (*v116 << 8);
          v118 = v116[v15] | (v116[v15] << 8);
          *v70 = v117 | (v117 << 16);
          *(v70 + v15) = v118 | (v118 << 16);
          v119 = v116[v46] | (v116[v46] << 8);
          LODWORD(v116) = v116[v47] | (v116[v47] << 8);
          v120 = v116 | (v116 << 16);
          *(v70 + v46) = v119 | (v119 << 16);
          goto LABEL_212;
        }

        v94 = BYTE1(v66);
        if (v26)
        {
          v95 = (a2 + 2 * byte_2773B4D80[v44]);
          v2.i64[0] = *v95;
          v3.i64[0] = v95[4];
          v4.i64[0] = v95[8];
          v5.i64[0] = v95[12];
          LODWORD(v6) = *(v70 - v94 * v15);
LABEL_193:
          v6 = vzip1q_s8(v6, 0);
          v2 = vaddq_s16(v2, v6);
          v3 = vaddq_s16(v3, v6);
          v4 = vaddq_s16(v4, v6);
          v5 = vaddq_s16(v5, v6);
          *v70 = vqmovun_s16(v2).u32[0];
          *(v70 + v15) = vqmovun_s16(v3).u32[0];
          *v2.i8 = vqmovun_s16(v4);
          *v3.i8 = vqmovun_s16(v5);
          goto LABEL_194;
        }

        v120 = *(v70 - v94 * v15);
LABEL_211:
        *v70 = v120;
        *(v70 + v15) = v120;
        *(v70 + v46) = v120;
LABEL_212:
        *(v70 + v47) = v120;
        goto LABEL_219;
      }

      if (v69 != 2)
      {
        if ((v66 & 0xFF00) != 0)
        {
          v87 = -v15;
        }

        else
        {
          v87 = 0;
        }

        if (v26)
        {
          v88 = *(v70 + v87);
          if ((v66 & 0xFF0000) != 0)
          {
            v89 = *(v70 - v15 + 4);
          }

          else
          {
            v89 = v88 & 0xFF000000 | ((v88 & 0xFF000000) >> 8) & 0xFFFF0000 | ((v88 & 0xFF000000 | ((v88 & 0xFF000000) >> 8)) >> 16);
          }

          v142 = (a2 + 2 * byte_2773B4D80[v44]);
          v3.i32[0] = v89;
          v143 = vzip1q_s8(vorrq_s8(vextq_s8(0, v3, 0xCuLL), v88), 0);
          v144 = vaddq_s16(v51, vqtbl1q_s8(vextq_s8(v143, 0, 4uLL), xmmword_2773B4240));
          v145 = vaddq_s16(v144, vaddq_s16(vextq_s8(vaddq_s16(v143, v143), 0, 2uLL), v143));
          v146 = vshrq_n_u16(v145, 2uLL);
          v144.i64[0] = *v142;
          v5.i64[0] = v142[4];
          *&v6 = v142[8];
          v7.i64[0] = v142[12];
          v4 = vsraq_n_u16(v144, v145, 2uLL);
          v2 = vaddq_s16(v5, vextq_s8(v146, 0, 2uLL));
          v5 = vaddq_s16(v6, vextq_s8(v146, 0, 4uLL));
          v3 = vaddq_s16(v7, vextq_s8(v146, 0, 6uLL));
          *v4.i8 = vqmovun_s16(v4);
          *v70 = v4.i32[0];
          *(v70 + v15) = vqmovun_s16(v2).u32[0];
          *v2.i8 = vqmovun_s16(v5);
          goto LABEL_161;
        }

        v121 = *(v70 + v87);
        if ((v66 & 0xFF0000) != 0)
        {
          v122 = *(v70 - v15 + 4);
        }

        else
        {
          v122 = v121 & 0xFF000000 | ((v121 & 0xFF000000) >> 8) & 0xFFFF0000 | ((v121 & 0xFF000000 | ((v121 & 0xFF000000) >> 8)) >> 16);
        }

        v3.i32[0] = v122;
        v171 = vzip1q_s8(vorrq_s8(vextq_s8(0, v3, 0xCuLL), v121), 0);
        v3 = vextq_s8(vaddq_s16(v171, v171), 0, 2uLL);
        v172 = vshrq_n_u16(vaddq_s16(vaddq_s16(v51, vqtbl1q_s8(vextq_s8(v171, 0, 4uLL), xmmword_2773B4240)), vaddq_s16(v3, v171)), 2uLL);
        *v3.i8 = vqmovun_s16(v172);
        v4 = vextq_s8(v172, 0, 2uLL);
        *v4.i8 = vqmovun_s16(v4);
        v5 = vextq_s8(v172, 0, 4uLL);
        *v5.i8 = vqmovun_s16(v5);
        *v70 = v3.i32[0];
        *(v70 + v15) = v4.i32[0];
        v2 = vextq_s8(v172, 0, 6uLL);
LABEL_183:
        *v2.i8 = vqmovun_s16(v2);
        *(v70 + v46) = v5.i32[0];
LABEL_218:
        *(v70 + v47) = v2.i32[0];
        goto LABEL_219;
      }

      v96 = v66;
      v97 = BYTE1(v66);
      if (v26)
      {
        if (v96)
        {
          v98 = *(v70 - 1);
          v99 = *(v70 + v15 - 1);
          v100 = *(v70 + v46 - 1);
          v101 = *(v70 + v47 - 1);
          if (v97)
          {
            v2.i32[0] = *(v70 - v15);
            v2 = vmovl_u16(*&vmovl_u8(*v2.i8));
            v102 = (vaddvq_s32(v2) + v101 + v100 + v99 + v98 + 4) >> 3;
LABEL_192:
            v201 = (a2 + 2 * byte_2773B4D80[v44]);
            v2.i64[0] = *v201;
            v3.i64[0] = v201[4];
            v4.i64[0] = v201[8];
            v5.i64[0] = v201[12];
            v6 = v102 | (v102 << 8) | ((v102 | (v102 << 8)) << 16);
            goto LABEL_193;
          }

          v148 = v98 + v99 + v100 + v101;
        }

        else
        {
          if (!v97)
          {
            v102 = 128;
            goto LABEL_192;
          }

          v2.i32[0] = *(v70 - v15);
          v2 = vmovl_u8(*v2.i8);
          v2.i16[0] = vaddv_s16(*v2.i8);
          v148 = v2.i32[0];
        }

        v102 = (v148 + 2) >> 2;
        goto LABEL_192;
      }

      if (v96)
      {
        v125 = *(v70 - 1);
        v126 = *(v70 + v15 - 1);
        v127 = *(v70 + v46 - 1);
        v128 = *(v70 + v47 - 1);
        if (v97)
        {
          v2.i32[0] = *(v70 - v15);
          v2 = vmovl_u16(*&vmovl_u8(*v2.i8));
          v129 = (vaddvq_s32(v2) + v128 + v127 + v126 + v125 + 4) >> 3;
LABEL_210:
          v120 = v129 | (v129 << 8) | ((v129 | (v129 << 8)) << 16);
          goto LABEL_211;
        }

        v174 = v125 + v126 + v127 + v128;
      }

      else
      {
        if (!v97)
        {
          v129 = 128;
          goto LABEL_210;
        }

        v2.i32[0] = *(v70 - v15);
        v2 = vmovl_u8(*v2.i8);
        v2.i16[0] = vaddv_s16(*v2.i8);
        v174 = v2.i32[0];
      }

      v129 = (v174 + 2) >> 2;
      goto LABEL_210;
    }

    if (v69 <= 5)
    {
      if (v69 != 4)
      {
        v90 = v66;
        v91 = BYTE1(v66);
        if (v26)
        {
          if (v90)
          {
            if (v91)
            {
              v92 = *(v70 - v15);
              v93 = v92 | (*(v70 - v15 - 1) << 8);
            }

            else
            {
              v92 = *v70;
              v93 = *v70 | (*v70 << 8);
            }

            v161 = *(v70 - 1) | (*(v70 + v15 - 1) << 8);
            v162 = v70 + v46 - 1;
          }

          else
          {
            if (v91)
            {
              v92 = *(v70 - v15);
              v93 = v92 | (v92 << 8);
              v147 = *v70;
            }

            else
            {
              v92 = *v70;
              v147 = *v70;
              v93 = v147 | (v147 << 8);
            }

            v161 = v147 | (*(v70 + v15) << 8);
            v162 = v70 + v46;
          }

          v187 = v92;
          v188 = vdupq_n_s64(0xFFFFFFF8uLL);
          v189 = (a2 + 2 * byte_2773B4D80[v44]);
          v190 = vorrq_s8(vshlq_n_s64(v187, 8uLL), vshlq_u64(v93, v188));
          v191 = vorrq_s8(vshlq_n_s64((v161 | (*v162 << 16)), 0x10uLL), v93);
          v192 = vzip1q_s8(vshlq_u64(v190, v188), 0);
          v7 = vdupq_n_s64(0xFFFFFFF0uLL);
          v193 = vaddq_s16(v192, vzip1q_s8(v190, 0));
          v194 = vaddq_s16(v193, v54);
          v9 = vshrq_n_u16(v194, 1uLL);
          v6 = vaddq_s16(v55, v192);
          v195 = vshrq_n_u16(vaddq_s16(vaddq_s16(v6, v193), vzip1q_s8(vshlq_u64(v190, v7), 0)), 2uLL);
          v196 = vzip1q_s8(vshlq_u64(v191, v188), 0);
          v197 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(v55, vzip1q_s8(v191, 0)), vzip1q_s8(vshlq_u64(v191, v7), 0)), vaddq_s16(v196, v196)), 2uLL);
          v198 = vextq_s8(0, v9, 0xEuLL);
          v199 = vorrq_s8(v198, vshlq_u64(vshlq_n_s64(v197, 0x20uLL), vdupq_n_s64(0xFFFFFFD0uLL)));
          v200 = vextq_s8(vdupq_lane_s32(*&vqtbl1q_s8(v197, xmmword_2773B4480), 0), v195, 0xCuLL);
          v195.i64[0] = *v189;
          v198.i64[0] = v189[4];
          *&v6 = v189[8];
          v7.i64[0] = v189[12];
          v3 = vsraq_n_u16(v195, v194, 1uLL);
          v8 = vextq_s8(v200, 0, 2uLL);
          v5 = vaddq_s16(v8, v198);
          v4 = vaddq_s16(v6, v199);
          v2 = vaddq_s16(v7, v200);
          v3.i32[0] = vqmovun_s16(v3).u32[0];
        }

        else
        {
          if (v90)
          {
            if (v91)
            {
              v123 = *(v70 - v15);
              v124 = v123 | (*(v70 - v15 - 1) << 8);
            }

            else
            {
              v123 = *v70;
              v124 = *v70 | (*v70 << 8);
            }

            v185 = *(v70 - 1) | (*(v70 + v15 - 1) << 8);
            v186 = v70 + v46 - 1;
          }

          else
          {
            if (v91)
            {
              v123 = *(v70 - v15);
              v124 = v123 | (v123 << 8);
              v173 = *v70;
            }

            else
            {
              v123 = *v70;
              v173 = *v70;
              v124 = v173 | (v173 << 8);
            }

            v185 = v173 | (*(v70 + v15) << 8);
            v186 = v70 + v46;
          }

          v219 = vdupq_n_s64(0xFFFFFFF8uLL);
          v220 = vorrq_s8(vshlq_n_s64(v123, 8uLL), vshlq_u64(v124, v219));
          v221 = vorrq_s8(vshlq_n_s64((v185 | (*v186 << 16)), 0x10uLL), v124);
          v222 = vzip1q_s8(vshlq_u64(v220, v219), 0);
          v7 = vdupq_n_s64(0xFFFFFFF0uLL);
          v223 = vaddq_s16(v222, vzip1q_s8(v220, 0));
          v8 = vshrq_n_u16(vaddq_s16(v223, v54), 1uLL);
          v6 = vaddq_s16(v55, v222);
          v3 = vshrq_n_u16(vaddq_s16(vaddq_s16(v6, v223), vzip1q_s8(vshlq_u64(v220, v7), 0)), 2uLL);
          v224 = vzip1q_s8(vshlq_u64(v221, v219), 0);
          v225 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(v55, vzip1q_s8(v221, 0)), vzip1q_s8(vshlq_u64(v221, v7), 0)), vaddq_s16(v224, v224)), 2uLL);
          v4 = vorrq_s8(vextq_s8(0, v8, 0xEuLL), vshlq_u64(vshlq_n_s64(v225, 0x20uLL), v56));
          v2 = vextq_s8(vdupq_lane_s32(*&vqtbl1q_s8(v225, xmmword_2773B4480), 0), v3, 0xCuLL);
          v3.i32[0] = vqmovun_s16(v8).u32[0];
          v5 = vextq_s8(v2, 0, 2uLL);
        }

        *v5.i8 = vqmovun_s16(v5);
        *v70 = v3.i32[0];
        *(v70 + v15) = v5.i32[0];
        *v3.i8 = vqmovun_s16(v4);
        goto LABEL_217;
      }

      v109 = v66;
      v110 = BYTE1(v66);
      if (v26)
      {
        if (v109)
        {
          if (v110)
          {
            v111 = *(v70 - v15);
            v112 = *(v70 - v15 - 1);
          }

          else
          {
            v111 = *v70;
            v112 = *v70;
          }

          v153 = *(v70 + v47 - 1) | (*(v70 + v46 - 1) << 8) | (*(v70 + v15 - 1) << 16);
          v154 = *(v70 - 1);
        }

        else if (v110)
        {
          v111 = *(v70 - v15);
          v112 = v111;
          v153 = *(v70 + v47) | (*(v70 + v46) << 8) | (*(v70 + v15) << 16);
          v154 = *v70;
        }

        else
        {
          v154 = *v70;
          v112 = *v70;
          v153 = *(v70 + v47) | (*(v70 + v46) << 8) | (*(v70 + v15) << 16);
          v111 = *v70;
        }

        v163 = (a2 + 2 * byte_2773B4D80[v44]);
        v164 = v153 | (v154 << 24);
        v165 = vorrq_s8(vshlq_n_s64(v111, 8uLL), v112);
        v166 = vdupq_n_s64(0xFFFFFFF0uLL);
        v167 = vzip1q_s8(vqtbl1q_s8(vorrq_s8(vshlq_u64(v164, v166), vshlq_n_s64(v165, 0x10uLL)), xmmword_2773B3E30), 0);
        v168 = vshlq_u64(v164, vdupq_n_s64(0xFFFFFFF8uLL));
        v169 = vzip1q_s8(vorrq_s8(v168, vshlq_n_s64(v165, 0x18uLL)), 0);
        v6 = vaddq_s16(v169, v169);
        v2 = vaddq_s16(vaddq_s16(v6, v167), vaddq_s16(v51, vzip1q_s8(vorrq_s8(vshlq_n_s64(vshlq_u64(v165, v166), 0x20uLL), v164), 0)));
        v170 = vshrq_n_u16(v2, 2uLL);
        v167.i64[0] = v163[4];
        *&v6 = v163[8];
        v168.i64[0] = v163[12];
        v4 = vaddq_s16(*v163, vextq_s8(v170, 0, 6uLL));
        v8 = vextq_s8(v170, 0, 4uLL);
        v5 = vaddq_s16(v167, v8);
        v3 = vaddq_s16(v6, vextq_s8(v170, 0, 2uLL));
        v7 = vsraq_n_u16(v168, v2, 2uLL);
        v2.i32[0] = vqmovun_s16(v4).u32[0];
        *v4.i8 = vqmovun_s16(v5);
        *v70 = v2.i32[0];
        *(v70 + v15) = v4.i32[0];
        *v2.i8 = vqmovun_s16(v3);
        *v3.i8 = vqmovun_s16(v7);
        goto LABEL_194;
      }

      if (v109)
      {
        if (v110)
        {
          v134 = *(v70 - v15);
          v135 = *(v70 - v15 - 1);
        }

        else
        {
          v134 = *v70;
          v135 = *v70;
        }

        v179 = *(v70 + v47 - 1) | (*(v70 + v46 - 1) << 8) | (*(v70 + v15 - 1) << 16);
        v180 = *(v70 - 1);
      }

      else if (v110)
      {
        v134 = *(v70 - v15);
        v135 = v134;
        v179 = *(v70 + v47) | (*(v70 + v46) << 8) | (*(v70 + v15) << 16);
        v180 = *v70;
      }

      else
      {
        v180 = *v70;
        v135 = *v70;
        v179 = *(v70 + v47) | (*(v70 + v46) << 8) | (*(v70 + v15) << 16);
        v134 = *v70;
      }

      v216 = v179 | (v180 << 24);
      v217 = vorrq_s8(vshlq_n_s64(v134, 8uLL), v135);
      v6 = vshlq_u64(v216, v53);
      v218 = vzip1q_s8(vorrq_s8(v6, vshlq_n_s64(v217, 0x18uLL)), 0);
      v2 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(v218, v218), vzip1q_s8(vqtbl1q_s8(vorrq_s8(vshlq_u64(v216, v52), vshlq_n_s64(v217, 0x10uLL)), xmmword_2773B3E30), 0)), vaddq_s16(v51, vzip1q_s8(vorrq_s8(vshlq_n_s64(vshlq_u64(v217, v52), 0x20uLL), v216), 0))), 2uLL);
      v3 = vextq_s8(v2, 0, 6uLL);
      v3.i32[0] = vqmovun_s16(v3).u32[0];
      v4 = vextq_s8(v2, 0, 4uLL);
      *v4.i8 = vqmovun_s16(v4);
      v5 = vextq_s8(v2, 0, 2uLL);
      goto LABEL_203;
    }

    switch(v69)
    {
      case 6:
        v103 = v66;
        v104 = BYTE1(v66);
        if (v26)
        {
          if (v103)
          {
            if (v104)
            {
              v105 = *(v70 - v15);
              v106 = *(v70 - 1);
              v107 = (*(v70 + v46 - 1) << 16) | (*(v70 + v15 - 1) << 8) | (*(v70 + v47 - 1) << 24) | v106;
              v108 = v106 | (*(v70 - v15 - 1) << 8);
LABEL_199:
              v202 = v105;
              v203 = (a2 + 2 * byte_2773B4D80[v44]);
              v204 = vdupq_n_s64(0xFFFFFFF8uLL);
              v205 = vorrq_s8(vshlq_n_s64(v107, 8uLL), vshlq_u64(v108, v204));
              v206 = vorrq_s8(vshlq_n_s64(v202, 0x10uLL), v108);
              v207 = vzip1q_s8(vshlq_u64(v205, v204), 0);
              v7 = vdupq_n_s64(0xFFFFFFF0uLL);
              v208 = vaddq_s16(v207, vzip1q_s8(v205, 0));
              v8 = vshrq_n_u16(vaddq_s16(v208, v54), 1uLL);
              v6 = vaddq_s16(v55, v207);
              v209 = vshrq_n_u16(vaddq_s16(vaddq_s16(v6, v208), vzip1q_s8(vshlq_u64(v205, v7), 0)), 2uLL);
              v210 = vzip1q_s8(vshlq_u64(v206, v204), 0);
              v211 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(v55, vzip1q_s8(v206, 0)), vzip1q_s8(vshlq_u64(v206, v7), 0)), vaddq_s16(v210, v210)), 2uLL);
              v212 = vorrq_s8(vshlq_n_s64(v211, 0x10uLL), vshlq_u64(vshlq_n_s64(v8, 0x30uLL), vdupq_n_s64(0xFFFFFFD0uLL)));
              v213 = vzip1q_s32(vqtbl1q_s8(v8, xmmword_2773B4450), 0);
              v214 = vqtbl1q_s8(vorrq_s8(vqtbl1q_s8(vextq_s8(vextq_s8(0, v209, 6uLL), 0, 8uLL), xmmword_2773B4440), vorrq_s8(vshrq_n_u32(vextq_s8(0, v211, 2uLL), 0x10uLL), v213)), xmmword_2773B4460);
              v209.i64[1] = 0xF0E0D0C0B0A0908;
              v215 = vqtbl1q_s8(v214, xmmword_2773B4470);
              v209.i64[0] = *v203;
              v213.i64[0] = v203[4];
              *&v6 = v203[8];
              v7.i64[0] = v203[12];
              v3 = vaddq_s16(v209, v212);
              v4 = vaddq_s16(v213, vdupq_laneq_s64(v215, 1));
              v5 = vaddq_s16(v6, vextq_s8(v215, 0, 4uLL));
              v2 = vaddq_s16(v7, v215);
              v3.i32[0] = vqmovun_s16(v3).u32[0];
              *v4.i8 = vqmovun_s16(v4);
LABEL_203:
              *v70 = v3.i32[0];
              *(v70 + v15) = v4.i32[0];
LABEL_216:
              *v3.i8 = vqmovun_s16(v5);
LABEL_217:
              *v2.i8 = vqmovun_s16(v2);
              *(v70 + v46) = v3.i32[0];
              goto LABEL_218;
            }

            v105 = *v70;
            v149 = *(v70 - 1);
            v150 = *(v70 + v15 - 1);
            v151 = *(v70 + v46 - 1) << 16;
            v152 = *(v70 + v47 - 1);
LABEL_167:
            v107 = v151 | (v150 << 8) | (v152 << 24) | v149;
          }

          else
          {
            if (v104)
            {
              v105 = *(v70 - v15);
              v149 = *v70;
              v150 = *(v70 + v15);
              v151 = *(v70 + v46) << 16;
              v152 = *(v70 + v47);
              goto LABEL_167;
            }

            v105 = *v70;
            v149 = *v70;
            v107 = (*(v70 + v46) << 16) | (*(v70 + v15) << 8) | (*(v70 + v47) << 24) | v149;
          }

          v108 = v149 & 0xFFFF00FF | (v105 << 8);
          goto LABEL_199;
        }

        if (v103)
        {
          if (v104)
          {
            v130 = *(v70 - v15);
            v131 = *(v70 - 1);
            v132 = (*(v70 + v46 - 1) << 16) | (*(v70 + v15 - 1) << 8) | (*(v70 + v47 - 1) << 24) | v131;
            v133 = v131 | (*(v70 - v15 - 1) << 8);
LABEL_215:
            v226 = vdupq_n_s64(0xFFFFFFF8uLL);
            v227 = vorrq_s8(vshlq_n_s64(v132, 8uLL), vshlq_u64(v133, v226));
            v228 = vorrq_s8(vshlq_n_s64(v130, 0x10uLL), v133);
            v229 = vzip1q_s8(vshlq_u64(v227, v226), 0);
            v7 = vdupq_n_s64(0xFFFFFFF0uLL);
            v230 = vaddq_s16(v229, vzip1q_s8(v227, 0));
            v8 = vshrq_n_u16(vaddq_s16(v230, v54), 1uLL);
            v6 = vaddq_s16(v55, v229);
            v231 = vshrq_n_u16(vaddq_s16(vaddq_s16(v6, v230), vzip1q_s8(vshlq_u64(v227, v7), 0)), 2uLL);
            v232 = vzip1q_s8(vshlq_u64(v228, v226), 0);
            v233 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(v55, vzip1q_s8(v228, 0)), vzip1q_s8(vshlq_u64(v228, v7), 0)), vaddq_s16(v232, v232)), 2uLL);
            v4 = vorrq_s8(vshlq_n_s64(v233, 0x10uLL), vshlq_u64(vshlq_n_s64(v8, 0x30uLL), vdupq_n_s64(0xFFFFFFD0uLL)));
            v2 = vqtbl1q_s8(vqtbl1q_s8(vorrq_s8(vqtbl1q_s8(vextq_s8(vextq_s8(0, v231, 6uLL), 0, 8uLL), xmmword_2773B4440), vorrq_s8(vshrq_n_u32(vextq_s8(0, v233, 2uLL), 0x10uLL), vzip1q_s32(vqtbl1q_s8(v8, xmmword_2773B4450), 0))), xmmword_2773B4460), xmmword_2773B4470);
            v3 = vdupq_laneq_s64(v2, 1);
            *v4.i8 = vqmovun_s16(v4);
            v5 = vextq_s8(v2, 0, 4uLL);
            *v70 = v4.i32[0];
            *(v70 + v15) = vqmovun_s16(v3).u32[0];
            goto LABEL_216;
          }

          v130 = *v70;
          v175 = *(v70 - 1);
          v176 = *(v70 + v15 - 1);
          v177 = *(v70 + v46 - 1) << 16;
          v178 = *(v70 + v47 - 1);
LABEL_196:
          v132 = v177 | (v176 << 8) | (v178 << 24) | v175;
        }

        else
        {
          if (v104)
          {
            v130 = *(v70 - v15);
            v175 = *v70;
            v176 = *(v70 + v15);
            v177 = *(v70 + v46) << 16;
            v178 = *(v70 + v47);
            goto LABEL_196;
          }

          v130 = *v70;
          v175 = *v70;
          v132 = (*(v70 + v46) << 16) | (*(v70 + v15) << 8) | (*(v70 + v47) << 24) | v175;
        }

        v133 = v175 & 0xFFFF00FF | (v130 << 8);
        goto LABEL_215;
      case 7:
        if ((v66 & 0xFF00) != 0)
        {
          v113 = -v15;
        }

        else
        {
          v113 = 0;
        }

        if (v26)
        {
          v114 = *(v70 + v113);
          if ((v66 & 0xFF0000) != 0)
          {
            v115 = *(v70 - v15 + 4);
          }

          else
          {
            v115 = v114 & 0xFF000000 | ((v114 & 0xFF000000) >> 8) & 0xFFFF0000 | ((v114 & 0xFF000000 | ((v114 & 0xFF000000) >> 8)) >> 16);
          }

          v155 = (a2 + 2 * byte_2773B4D80[v44]);
          v3.i32[0] = v115;
          v156 = vzip1q_s8(vorrq_s8(vextq_s8(0, v3, 0xCuLL), v114), 0);
          v157 = vextq_s8(v156, 0, 2uLL);
          v158 = vaddq_s16(v157, v156);
          v5 = vaddq_s16(v158, v54);
          v6 = vshrq_n_u16(v5, 1uLL);
          v159 = vaddq_s16(vaddq_s16(vaddq_s16(v55, v157), vextq_s8(v156, 0, 4uLL)), v158);
          v160 = vshrq_n_u16(v159, 2uLL);
          v158.i64[0] = *v155;
          v7.i64[0] = v155[4];
          v8.i64[0] = v155[8];
          v9.i64[0] = v155[12];
          v4 = vsraq_n_u16(v158, v5, 1uLL);
          v7 = vsraq_n_u16(v7, v159, 2uLL);
          v2 = vaddq_s16(v8, vextq_s8(v6, 0, 2uLL));
          v3 = vaddq_s16(v9, vextq_s8(v160, 0, 2uLL));
          *v4.i8 = vqmovun_s16(v4);
          *v5.i8 = vqmovun_s16(v7);
          *v70 = v4.i32[0];
          *(v70 + v15) = v5.i32[0];
LABEL_160:
          *v2.i8 = vqmovun_s16(v2);
LABEL_161:
          *v3.i8 = vqmovun_s16(v3);
LABEL_194:
          *(v70 + v46) = v2.i32[0];
          *(v70 + v47) = v3.i32[0];
          break;
        }

        v140 = *(v70 + v113);
        if ((v66 & 0xFF0000) != 0)
        {
          v141 = *(v70 - v15 + 4);
        }

        else
        {
          v141 = v140 & 0xFF000000 | ((v140 & 0xFF000000) >> 8) & 0xFFFF0000 | ((v140 & 0xFF000000 | ((v140 & 0xFF000000) >> 8)) >> 16);
        }

        v3.i32[0] = v141;
        v181 = vzip1q_s8(vorrq_s8(vextq_s8(0, v3, 0xCuLL), v140), 0);
        v182 = vextq_s8(v181, 0, 2uLL);
        v4 = vaddq_s16(v182, v181);
        v183 = vshrq_n_u16(vaddq_s16(v4, v54), 1uLL);
        v3 = vaddq_s16(v55, v182);
        v184 = vshrq_n_u16(vaddq_s16(vaddq_s16(v3, vextq_s8(v181, 0, 4uLL)), v4), 2uLL);
        *v3.i8 = vqmovun_s16(v183);
        *v4.i8 = vqmovun_s16(v184);
        v5 = vextq_s8(v183, 0, 2uLL);
        *v5.i8 = vqmovun_s16(v5);
        *v70 = v3.i32[0];
        *(v70 + v15) = v4.i32[0];
        v2 = vextq_s8(v184, 0, 2uLL);
        goto LABEL_183;
      case 8:
        if (v26)
        {
          v71 = *(v70 - v66) | (*(v70 + v15 - v66) << 8) | (*(v70 + v46 - v66) << 16) | (*(v70 + v47 - v66) << 24);
          v72 = (a2 + 2 * byte_2773B4D80[v44]);
          v73 = vzip1q_s8(v71, 0);
          v74 = vextq_s8(v73, 0, 2uLL);
          v75 = vaddq_s16(v74, v73);
          v76 = vqtbl1q_s8(vextq_s8(v73, 0, 4uLL), xmmword_2773B4250);
          v6 = vshrq_n_u16(vaddq_s16(v75, v54), 1uLL);
          v77 = vqtbl1q_s8(v73, xmmword_2773B4430);
          v78 = vzip1q_s16(v6, vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(v55, v74), v76), v75), 2uLL));
          v79 = vextq_s8(vdupq_laneq_s32(v78, 2), v77, 0xCuLL);
          v76.i64[0] = *v72;
          *&v6 = v72[4];
          v7.i64[0] = v72[8];
          v8.i64[0] = v72[12];
          v5 = vaddq_s16(v78, v76);
          v3 = vaddq_s16(v6, vextq_s8(v78, 0, 4uLL));
          v4 = vaddq_s16(v7, v79);
          v2 = vaddq_s16(v8, v77);
          *v5.i8 = vqmovun_s16(v5);
        }

        else
        {
          v136 = vzip1q_s8((*(v70 - v66) | (*(v70 + v15 - v66) << 8) | (*(v70 + v46 - v66) << 16) | (*(v70 + v47 - v66) << 24)), 0);
          v137 = vextq_s8(v136, 0, 2uLL);
          v138 = vaddq_s16(v137, v136);
          v5 = vqtbl1q_s8(vextq_s8(v136, 0, 4uLL), xmmword_2773B4250);
          v6 = vshrq_n_u16(vaddq_s16(v138, v54), 1uLL);
          v2 = vqtbl1q_s8(v136, xmmword_2773B4430);
          v139 = vzip1q_s16(v6, vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(v55, v137), v5), v138), 2uLL));
          v4 = vextq_s8(vdupq_laneq_s32(v139, 2), v2, 0xCuLL);
          *v5.i8 = vqmovun_s16(v139);
          v3 = vextq_s8(v139, 0, 4uLL);
        }

        *v3.i8 = vqmovun_s16(v3);
        *v4.i8 = vqmovun_s16(v4);
        *v70 = v5.i32[0];
        *(v70 + v15) = v3.i32[0];
        *v2.i8 = vqmovun_s16(v2);
        *(v70 + v46) = v4.i32[0];
        *(v70 + v47) = v2.i32[0];
        break;
    }

LABEL_219:
    ++v44;
  }

  while (v44 != 16);
  return result;
}