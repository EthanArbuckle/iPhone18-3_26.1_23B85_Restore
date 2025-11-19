void sub_2772ED0D8(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, __n128 a9, __n128 a10, __n128 a11)
{
  v2912 = *MEMORY[0x277D85DE8];
  v12 = *(a1 + 216);
  v13 = *(v12 + 168);
  v14 = *(v12 + 184);
  if (*(v12 + 32))
  {
    v15 = 5;
  }

  else
  {
    v15 = 4;
  }

  if (*(v12 + 32))
  {
    v16 = 4;
  }

  else
  {
    v16 = 3;
  }

  if (*(a1 + 30))
  {
    v17 = *(v12 + 184);
  }

  else
  {
    v17 = 0;
  }

  if (*(a1 + 30))
  {
    v18 = *(v12 + 168);
  }

  else
  {
    v18 = 0;
  }

  v2825 = *(a1 + 48);
  LODWORD(v19) = *(v2825 + 272);
  if (*(v2825 + 272))
  {
    v20 = a3;
    v21 = a2;
    v22 = a1;
    v23 = 0;
    v24 = *(a1 + 4);
    v25 = (16 * *a1);
    v2791 = 16 * *a1;
    v2793 = (*(v12 + 72) + v25 + v17 + ((v24 << v16) * v14));
    v2794 = (*(v12 + 64) + v25 + v18 + ((v24 << v15) * v13));
    v2766 = a1 + 224;
    v2792 = 16 * v24;
    v2783 = 2 * v14;
    v2784 = 2 * v13;
    v2789 = 2 * v13;
    v2788 = 4 * v13;
    v2761 = 6 * v13;
    v2755 = 8 * v13;
    v2775 = 4 * v14;
    v2824 = *(*(a1 + 176) + 112);
    v2754 = 6 * v14;
    v2759 = (16 * v24) >> 1;
    v26 = 0uLL;
    v27.i64[0] = 0x10001000100010;
    v27.i64[1] = 0x10001000100010;
    v28.i64[0] = 0x20002000200020;
    v28.i64[1] = 0x20002000200020;
    v2753 = 8 * v14;
    v2850 = *(v2825 + 272);
    while (1)
    {
      v29 = (v2825 + 16 + 16 * v23);
      v30 = v29[15];
      v31 = *(v2825 + 26);
      if (v31 >= 0x103)
      {
        v31 = 259;
      }

      v32 = &word_280A6AB60[40 * v31];
      v33 = v32[v23 + 24];
      v34 = v33 >> 8;
      v35 = *(v32 + v23 + 32);
      v36 = byte_2773B3BA0[v35];
      v37 = byte_2773B3BB0[v35];
      v38 = (v2824 + 16 * v23);
      if (v30 == 6)
      {
        break;
      }

      v42 = (v30 - 4);
      v43 = *(*(v2766 + 8 * v42) + 8 * v29[v42 + 8]);
      if (*(v22 + 29))
      {
        v44 = *(v43 + 37);
        if (*(v22 + 30))
        {
          v45 = 2 * (v44 == 0);
        }

        else if (*(v43 + 37))
        {
          v45 = -2;
        }

        else
        {
          v45 = 0;
        }
      }

      else
      {
        v45 = 0;
        v44 = *(v43 + 37);
      }

      v54 = *(v43 + 64);
      v55 = *(v43 + 72);
      v56 = *(v43 + 168);
      if (v44)
      {
        v57 = *(v43 + 184);
        v54 += v56;
        v55 += v57;
      }

      else
      {
        LODWORD(v57) = *(v43 + 184);
      }

      v58 = &v38[2 * v42];
      v59 = *v58;
      v60 = v58[1];
      v61 = v60 & 3 | (4 * (v59 & 3u));
      v62 = v59 & 7;
      v63 = (v45 + v58[1]);
      v64 = (v45 + *(v58 + 2)) & 7;
      v65 = v64 | (16 * v62);
      v66 = 2 * v56;
      v67 = 2 * v57;
      v68 = *(v43 + 164);
      v69 = *(v43 + 180);
      v70 = *(v43 + 132);
      v71 = *(v43 + 148);
      if (v19 == 1)
      {
        v2826 = v59 & 7;
        v2879 = v23;
        v72 = v2791 + (v59 >> 2);
        v73 = v2792 + (v60 >> 2);
        if (v72 <= -18)
        {
          v72 = -18;
        }

        if (v73 <= -18)
        {
          v73 = -18;
        }

        if (v72 >= v68 + 1)
        {
          v74 = v68 + 1;
        }

        else
        {
          v74 = v72;
        }

        if (v73 >= v70 + 1)
        {
          v75 = v70 + 1;
        }

        else
        {
          v75 = v73;
        }

        v76 = v75 * v66;
        v77 = (v54 + v76 + v74);
        v78 = ((v59 >> 2) & 0xFFFFFFFE) + v2791;
        v79 = v2759 + (v63 >> 3);
        if (v78 <= -16)
        {
          v78 = -16;
        }

        if (v79 <= -8)
        {
          v79 = -8;
        }

        if (v78 >= v69 - 2)
        {
          v78 = v69 - 2;
        }

        if (v79 >= v71)
        {
          v79 = v71 - 1;
        }

        v80 = v78;
        v2832 = v55;
        v81 = v79 * v67;
        _X22 = (v55 + v78 + v81);
        switch(v61)
        {
          case 1:
            v428 = 0;
            v429 = 4 * v56;
            v430 = (v77 + v66 - v429);
            v431 = (v430 + v66);
            v432 = (v431 + v66);
            v433 = vzip1q_s8(*(v432 + v66), v26);
            v434 = vzip1q_s8(*v432, v26);
            v435 = vzip1q_s8(*v431, v26);
            v436 = vzip1q_s8(*v430, v26);
            v437 = vzip1q_s8(*(v77 - v429), v26);
            v438 = 5 * v66;
            v439 = (v54 + v438 + v74 + v76 - v429);
            do
            {
              v440 = v436;
              v436 = v435;
              v435 = v434;
              v434 = v433;
              v433 = vzip1q_s8(*v439, v26);
              v441 = vsubq_s16(vshlq_n_s16(vaddq_s16(v436, v435), 2uLL), vaddq_s16(v440, v434));
              *(&v2886 + v428) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v437, v441), vshlq_n_s16(v441, 2uLL)), vaddq_s16(v433, v27)), 5uLL))), v436);
              v428 += 32;
              v439 = (v439 + v66);
              v437 = v440;
            }

            while (v428 != 512);
            v442 = 0;
            v443 = (v77 + v66 - v429 + 8);
            v444 = (v443 + v66 + v66);
            v445 = vzip1q_s8(*(v444 + v66), v26);
            v446 = vzip1q_s8(*v444, v26);
            v447 = vzip1q_s8(*(v443 + v66), v26);
            v448 = vzip1q_s8(*v443, v26);
            v449 = vzip1q_s8(*(v77 - v429 + 8), v26);
            v450 = (v54 + v438 + v74 + v76 - v429 + 8);
            v83 = v2783;
            v308 = v2784;
            v309 = v2788;
            do
            {
              a9 = v448;
              v448 = v447;
              v447 = v446;
              v446 = v445;
              v445 = vzip1q_s8(*v450, v26);
              v451 = vsubq_s16(vshlq_n_s16(vaddq_s16(v448, v447), 2uLL), vaddq_s16(a9, v446));
              a11 = vshlq_n_s16(v451, 2uLL);
              v452 = vaddq_s16(vaddq_s16(v449, v451), a11);
              a10 = vaddq_s16(v445, v27);
              *(&v2887 + v442) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(v452, a10), 5uLL))), v448);
              v442 += 32;
              v450 = (v450 + v66);
              v449 = a9;
            }

            while (v442 != 512);
            goto LABEL_326;
          case 2:
            v371 = 0;
            v372 = 4 * v56;
            v373 = (v77 + v66 - v372);
            v374 = (v373 + v66);
            v375 = (v374 + v66);
            v376 = vzip1q_s8(*(v375 + v66), v26);
            v377 = vzip1q_s8(*v375, v26);
            v378 = vzip1q_s8(*v374, v26);
            v379 = vzip1q_s8(*v373, v26);
            v380 = vzip1q_s8(*(v77 - v372), v26);
            v381 = 5 * v66;
            v382 = (v54 + v381 + v74 + v76 - v372);
            do
            {
              v383 = v379;
              v379 = v378;
              v378 = v377;
              v377 = v376;
              v384 = &v2886.i8[v371];
              v376 = vzip1q_s8(*v382, v26);
              v385 = vsubq_s16(vshlq_n_s16(vaddq_s16(v379, v378), 2uLL), vaddq_s16(v383, v377));
              v385.val[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v380, v385), vshlq_n_s16(v385, 2uLL)), vaddq_s16(v376, v27)), 5uLL));
              v386 = v26.i64[0];
              vst2_s8(v384, v385);
              v371 += 32;
              v382 = (v382 + v66);
              v380 = v383;
            }

            while (v371 != 512);
            v387 = 0;
            v388 = (v77 + v66 - v372 + 8);
            v389 = (v388 + v66 + v66);
            v390 = vzip1q_s8(*(v389 + v66), v26);
            v391 = vzip1q_s8(*v389, v26);
            v392 = vzip1q_s8(*(v388 + v66), v26);
            v393 = vzip1q_s8(*v388, v26);
            v394 = vzip1q_s8(*(v77 - v372 + 8), v26);
            v395 = (v54 + v381 + v74 + v76 - v372 + 8);
            v83 = v2783;
            v308 = v2784;
            v309 = v2788;
            do
            {
              a9 = v393;
              v393 = v392;
              v392 = v391;
              v391 = v390;
              v396 = &v2887.i8[v387];
              v390 = vzip1q_s8(*v395, v26);
              v397 = vsubq_s16(vshlq_n_s16(vaddq_s16(v393, v392), 2uLL), vaddq_s16(a9, v391));
              a11 = vshlq_n_s16(v397, 2uLL);
              v398 = vaddq_s16(vaddq_s16(v394, v397), a11);
              a10 = vaddq_s16(v390, v27);
              a10.n128_u64[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(v398, a10), 5uLL));
              a11.n128_u64[0] = v26.i64[0];
              vst2_s8(v396, a10);
              v387 += 32;
              v395 = (v395 + v66);
              v394 = a9;
            }

            while (v387 != 512);
            goto LABEL_326;
          case 3:
            v403 = 0;
            v404 = 4 * v56;
            v405 = (v77 + v66 - v404);
            v406 = (v405 + v66);
            v407 = (v406 + v66);
            v408 = vzip1q_s8(*(v407 + v66), v26);
            v409 = vzip1q_s8(*v407, v26);
            v410 = vzip1q_s8(*v406, v26);
            v411 = vzip1q_s8(*v405, v26);
            v412 = vzip1q_s8(*(v77 - v404), v26);
            v413 = 5 * v66;
            v414 = (v54 + v413 + v74 + v76 - v404);
            do
            {
              v415 = v411;
              v411 = v410;
              v410 = v409;
              v409 = v408;
              v408 = vzip1q_s8(*v414, v26);
              v416 = vsubq_s16(vshlq_n_s16(vaddq_s16(v411, v410), 2uLL), vaddq_s16(v415, v409));
              *(&v2886 + v403) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v412, v416), vshlq_n_s16(v416, 2uLL)), vaddq_s16(v408, v27)), 5uLL))), v410);
              v403 += 32;
              v414 = (v414 + v66);
              v412 = v415;
            }

            while (v403 != 512);
            v417 = 0;
            v418 = (v77 + v66 - v404 + 8);
            v419 = (v418 + v66 + v66);
            v420 = vzip1q_s8(*(v419 + v66), v26);
            v421 = vzip1q_s8(*v419, v26);
            v422 = vzip1q_s8(*(v418 + v66), v26);
            v423 = vzip1q_s8(*v418, v26);
            v424 = vzip1q_s8(*(v77 - v404 + 8), v26);
            v425 = (v54 + v413 + v74 + v76 - v404 + 8);
            v83 = v2783;
            v308 = v2784;
            v309 = v2788;
            do
            {
              a9 = v423;
              v423 = v422;
              v422 = v421;
              v421 = v420;
              v420 = vzip1q_s8(*v425, v26);
              v426 = vsubq_s16(vshlq_n_s16(vaddq_s16(v423, v422), 2uLL), vaddq_s16(a9, v421));
              a11 = vshlq_n_s16(v426, 2uLL);
              v427 = vaddq_s16(vaddq_s16(v424, v426), a11);
              a10 = vaddq_s16(v420, v27);
              *(&v2887 + v417) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(v427, a10), 5uLL))), v422);
              v417 += 32;
              v425 = (v425 + v66);
              v424 = a9;
            }

            while (v417 != 512);
            goto LABEL_326;
          case 4:
            v301 = 0;
            v302 = (v77 - 2);
            do
            {
              v303 = *v302;
              v302 = (v302 + v66);
              v304 = vzip1q_s8(vextq_s8(v303, v303, 2uLL), v26);
              v305 = vsubq_s16(vshlq_n_s16(vaddq_s16(v304, vzip1q_s8(vextq_s8(v303, v303, 3uLL), v26)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v303, v303, 1uLL), v26), vzip1q_s8(vextq_s8(v303, v303, 4uLL), v26)));
              *(&v2886 + v301) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v305, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v303, v26), vzip1q_s8(vextq_s8(v303, v303, 5uLL), v26)), v305)), v27), 5uLL))), v304);
              v301 += 32;
            }

            while (v301 != 512);
            v306 = 0;
            v307 = (v77 + 6);
            v83 = v2783;
            v308 = v2784;
            v309 = v2788;
            do
            {
              v310 = *v307;
              v307 = (v307 + v66);
              v311 = vzip1q_s8(vextq_s8(v310, v310, 2uLL), v26);
              v312 = vsubq_s16(vshlq_n_s16(vaddq_s16(v311, vzip1q_s8(vextq_s8(v310, v310, 3uLL), v26)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v310, v310, 1uLL), v26), vzip1q_s8(vextq_s8(v310, v310, 4uLL), v26)));
              *(&v2887 + v306) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v312, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v310, v26), vzip1q_s8(vextq_s8(v310, v310, 5uLL), v26)), v312)), v27), 5uLL))), v311);
              v306 += 32;
            }

            while (v306 != 512);
            goto LABEL_326;
          case 5:
            v399 = v54 + v76 + v74;
            v400 = 2 * v56;
            v401 = v78;
            v402 = 2;
            goto LABEL_318;
          case 6:
            v300 = v78;
            v2858 = v11;
            v2872 = v26;
            sub_27729B1B0(v2886.i8, 0x20u, v54 + v76 + v74, 2 * v56);
            sub_27729B1B0(v2887.i8, 0x20u, v77 + 8, v66);
            goto LABEL_324;
          case 7:
            v399 = v54 + v76 + v74;
            v400 = 2 * v56;
            v401 = v78;
            v402 = 3;
LABEL_318:
            v453 = 2;
            goto LABEL_321;
          case 8:
            v531 = 0;
            v532 = (v77 - 2);
            do
            {
              v533 = &v2886.i8[v531];
              v534 = *v532;
              v532 = (v532 + v66);
              v535 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v534, v534, 2uLL), v26), vzip1q_s8(vextq_s8(v534, v534, 3uLL), v26)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v534, v534, 1uLL), v26), vzip1q_s8(vextq_s8(v534, v534, 4uLL), v26)));
              *v534.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v535, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v534, v26), vzip1q_s8(vextq_s8(v534, v534, 5uLL), v26)), v535)), v27), 5uLL));
              v535.i64[0] = v26.i64[0];
              vst2_s8(v533, v534);
              v531 += 32;
            }

            while (v531 != 512);
            v536 = 0;
            v537 = (v77 + 6);
            v83 = v2783;
            v308 = v2784;
            v309 = v2788;
            do
            {
              v538 = &v2887.i8[v536];
              v539 = *v537;
              v537 = (v537 + v66);
              v540 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v539, v539, 2uLL), v26), vzip1q_s8(vextq_s8(v539, v539, 3uLL), v26)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v539, v539, 1uLL), v26), vzip1q_s8(vextq_s8(v539, v539, 4uLL), v26)));
              *v539.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v540, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v539, v26), vzip1q_s8(vextq_s8(v539, v539, 5uLL), v26)), v540)), v27), 5uLL));
              v540.i64[0] = v26.i64[0];
              vst2_s8(v538, v539);
              v536 += 32;
            }

            while (v536 != 512);
            goto LABEL_326;
          case 9:
            v300 = v78;
            v2858 = v11;
            v2872 = v26;
            sub_27729B614(v2886.i8, 0x20u, v54 + v76 + v74, 2 * v56, 16);
            sub_27729B614(v2887.i8, 0x20u, v77 + 8, v66, 16);
            goto LABEL_324;
          case 10:
            v300 = v78;
            v2858 = v11;
            v2872 = v26;
            sub_27729B7DC(&v2886, 32, v54 + v76 + v74, 2 * v56, 16);
            sub_27729B7DC(&v2887, 32, v77 + 8, v66, 16);
            goto LABEL_324;
          case 11:
            v300 = v78;
            v2858 = v11;
            v2872 = v26;
            sub_27729B98C(v2886.i8, 0x20u, v54 + v76 + v74, 2 * v56, 16);
            sub_27729B98C(v2887.i8, 0x20u, v77 + 8, v66, 16);
            goto LABEL_324;
          case 12:
            v341 = 0;
            v342 = (v77 - 2);
            do
            {
              v343 = *v342;
              v342 = (v342 + v66);
              v344 = vzip1q_s8(vextq_s8(v343, v343, 3uLL), v26);
              v345 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v343, v343, 2uLL), v26), v344), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v343, v343, 1uLL), v26), vzip1q_s8(vextq_s8(v343, v343, 4uLL), v26)));
              *(&v2886 + v341) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v345, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v343, v26), vzip1q_s8(vextq_s8(v343, v343, 5uLL), v26)), v345)), v27), 5uLL))), v344);
              v341 += 32;
            }

            while (v341 != 512);
            v346 = 0;
            v347 = (v77 + 6);
            v83 = v2783;
            v308 = v2784;
            v309 = v2788;
            do
            {
              v348 = *v347;
              v347 = (v347 + v66);
              v349 = vzip1q_s8(vextq_s8(v348, v348, 3uLL), v26);
              v350 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v348, v348, 2uLL), v26), v349), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v348, v348, 1uLL), v26), vzip1q_s8(vextq_s8(v348, v348, 4uLL), v26)));
              *(&v2887 + v346) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v350, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v348, v26), vzip1q_s8(vextq_s8(v348, v348, 5uLL), v26)), v350)), v27), 5uLL))), v349);
              v346 += 32;
            }

            while (v346 != 512);
            goto LABEL_326;
          case 13:
            v399 = v54 + v76 + v74;
            v400 = 2 * v56;
            v401 = v78;
            v402 = 2;
            goto LABEL_320;
          case 14:
            v300 = v78;
            v2858 = v11;
            v2872 = v26;
            sub_27729BBEC(v2886.i8, 0x20u, v54 + v76 + v74, 2 * v56);
            sub_27729BBEC(v2887.i8, 0x20u, v77 + 8, v66);
LABEL_324:
            v80 = v300;
            goto LABEL_325;
          case 15:
            v399 = v54 + v76 + v74;
            v400 = 2 * v56;
            v401 = v78;
            v402 = 3;
LABEL_320:
            v453 = 3;
LABEL_321:
            v2858 = v11;
            v2872 = v26;
            sub_27729AF04(v2886.i8, v399, v400, 16, v402, v453);
            v80 = v401;
LABEL_325:
            v28.i64[0] = 0x20002000200020;
            v28.i64[1] = 0x20002000200020;
            v27.i64[0] = 0x10001000100010;
            v27.i64[1] = 0x10001000100010;
            v11 = v2858;
            v26 = v2872;
            v20 = a3;
            v83 = v2783;
            v308 = v2784;
            v309 = v2788;
LABEL_326:
            v454 = 0;
            v455 = v2794;
            v456 = v21;
            do
            {
              v458 = *(&v2886 + v454);
              v457 = *(&v2886 + v454 + 16);
              v460 = *(&v2888 + v454);
              v459 = v2889[v454 / 0x10];
              if (v21)
              {
                v461 = *v456;
                a9 = *(v456 + 16);
                a10 = *(v456 + 32);
                a11 = *(v456 + 48);
                v456 += 64;
                v458 = vaddq_s16(v461, v458);
                v457 = vaddq_s16(a9, v457);
                v460 = vaddq_s16(a10, v460);
                v459 = vaddq_s16(a11, v459);
              }

              *v455 = vqmovun_high_s16(vqmovun_s16(v458), v457);
              *(v455 + v308) = vqmovun_high_s16(vqmovun_s16(v460), v459);
              v455 = (v455 + v309);
              v454 += 64;
            }

            while (v454 != 512);
            break;
          default:
            v83 = v2783;
            if (v21)
            {
              v84 = 0;
              v85 = v2794;
              do
              {
                v86 = *v77;
                v77 = (v77 + v66);
                *v85 = vqmovun_high_s16(vqmovun_s16(vaddq_s16(*(v21 + v84), vzip1q_s8(v86, v26))), vaddq_s16(*(v21 + v84 + 16), vzip2q_s8(v86, v26)));
                v85 = (v85 + v2789);
                v84 += 32;
              }

              while (v84 != 512);
            }

            else
            {
              v541 = 16;
              v542 = v2794;
              do
              {
                v543 = *v77;
                v77 = (v77 + v66);
                *v542 = v543;
                v542 = (v542 + v2789);
                --v541;
              }

              while (v541);
            }

            break;
        }

        if (!v65)
        {
          v23 = v2879;
          if (v20)
          {
            v484 = 0;
            v485 = v2793;
            v19 = v2850;
            do
            {
              v486 = *_X22;
              _X22 = (_X22 + v67);
              *v485 = vqmovun_high_s16(vqmovun_s16(vaddq_s16(*(v20 + v484), vzip1q_s8(v486, v26))), vaddq_s16(*(v20 + v484 + 16), vzip2q_s8(v486, v26)));
              v485 = (v485 + v83);
              v484 += 32;
            }

            while (v484 != 256);
          }

          else
          {
            v528 = 8;
            v529 = v2793;
            v19 = v2850;
            do
            {
              v530 = *_X22;
              _X22 = (_X22 + v67);
              *v529 = v530;
              v529 = (v529 + v83);
              --v528;
            }

            while (v528);
          }

          goto LABEL_352;
        }

        v462 = v64 * v2826;
        v463 = v26;
        v463.i32[0] = 65537 * (8 - v64) * (8 - v2826);
        v464 = v26;
        v464.i32[0] = 65537 * (8 - v64) * v2826;
        v465 = v26;
        v465.i32[0] = 65537 * v64 * (8 - v2826);
        v466 = v26;
        v466.i32[0] = 65537 * v64 * v2826;
        v2904 = vqtbl1q_s8(v463, xmmword_2773B3DF0);
        v2905 = vqtbl1q_s8(v464, xmmword_2773B3DF0);
        v467 = vqtbl1q_s8(v466, xmmword_2773B3DF0);
        v2906 = vqtbl1q_s8(v465, xmmword_2773B3DF0);
        v2907 = v467;
        v23 = v2879;
        if (v65 == 64)
        {
          __asm { PRFM            #0, [X22] }

          v488 = 9;
          v483 = v2894;
          do
          {
            v489 = _X22;
            _X22 = (_X22 + v67);
            __asm { PRFM            #0, [X22] }

            v491 = vextq_s8(*v489, *v489, 2uLL);
            v491.i16[7] = v489[1].i16[0];
            v492 = vrhaddq_u8(*v489, v491);
            v491.i64[0] = v26.i64[0];
            v483[3] = vzip2q_s8(v492, v26);
            v483 += 2;
            vst2_s8(v483->i8, *(&v491 - 8));
            --v488;
          }

          while (v488 > 2);
          v493 = vextq_s8(*_X22, *_X22, 2uLL);
          v493.i16[7] = _X22[1].i16[0];
          v482 = vrhaddq_u8(*_X22, v493);
          v476 = v483 + 2;
          v19 = v2850;
LABEL_343:
          v494 = v26.i64[0];
          vst2_s8(v476->i8, v482);
          v483[3] = vzip2q_s8(v482, v26);
        }

        else
        {
          _X10 = &_X22->i8[v67];
          if (v65 == 4)
          {
            __asm { PRFM            #0, [X10] }

            v474 = *_X22;
            v475 = (v2832 + v80 + v81);
            v476 = &v2895;
            for (i = 9; i > 2; --i)
            {
              _X13 = &v475->i8[2 * v67];
              v475 = (v475 + v67);
              __asm { PRFM            #0, [X13] }

              v480 = *v475;
              v481 = vrhaddq_u8(v474, *v475);
              *v476 = vzip1q_s8(v481, v26);
              v476[1] = vzip2q_s8(v481, v26);
              v476 += 2;
              v474 = v480;
            }

            v482 = vrhaddq_u8(v480, *(v475 + v67));
            v483 = v476 - 2;
            v19 = v2850;
            goto LABEL_343;
          }

          v495 = 0;
          v496 = v26;
          v496.i32[0] = (v462 - (8 * v2826 + 8 * v64) + 64) | ((v462 - (8 * v2826 + 8 * v64) + 64) << 16);
          v497 = vqtbl1q_s8(v496, xmmword_2773B3DF0);
          v498 = v26;
          v498.i32[0] = (8 * v2826 - v462) | ((8 * v2826 - v462) << 16);
          v499 = v26;
          v499.i32[0] = (8 * v64 - v462) | ((8 * v64 - v462) << 16);
          v500 = vqtbl1q_s8(v498, xmmword_2773B3DF0);
          v501 = vqtbl1q_s8(v499, xmmword_2773B3DF0);
          v2904 = v497;
          v2905 = v500;
          v2906 = v501;
          __asm { PRFM            #0, [X10] }

          a9.n128_u64[0] = _X22->i64[0];
          v503 = vqtbl1q_s8(a9, xmmword_2773B3E00);
          v503.i16[3] = _X22->i16[4];
          v504 = vzip1q_s8(v503, v26);
          v505 = vzip1q_s8(a9, v26);
          v506 = (v2832 + v80 + v81 + v67 + 8);
          _X13 = v2832 + v80 + v81 + 2 * v67;
          do
          {
            __asm { PRFM            #0, [X13] }

            v509 = vmlaq_s16(vmulq_s16(v500, v504), v497, v505);
            v504.i64[0] = *(v506 - 1);
            v505 = vzip1q_s8(v504, v26);
            v510 = vqtbl1q_s8(v504, xmmword_2773B3E00);
            v510.i16[3] = *v506;
            v506 = (v506 + v67);
            v504 = vzip1q_s8(v510, v26);
            *(&v2895 + v495) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v509, v501, v505), v467, v504), v28), 6uLL);
            v495 += 32;
            _X13 += v67;
          }

          while (v495 != 256);
          v511 = 0;
          _X10 = &_X22->i64[1] + v67;
          __asm { PRFM            #0, [X10] }

          v505.i64[0] = _X22->i64[1];
          v514 = vqtbl1q_s8(v505, xmmword_2773B3E00);
          v514.i16[3] = _X22[1].i16[0];
          a10 = vzip1q_s8(v514, v26);
          a9 = vzip1q_s8(v505, v26);
          v515 = v2832 + v80 + v81;
          v19 = v2850;
          do
          {
            _X11 = v515 + 2 * v67 + 8;
            v515 += v67;
            __asm { PRFM            #0, [X11] }

            v518 = vmlaq_s16(vmulq_s16(v500, a10), v497, a9);
            a10.n128_u64[0] = *(v515 + 8);
            a9 = vzip1q_s8(a10, v26);
            v519 = vqtbl1q_s8(a10, xmmword_2773B3E00);
            v519.i16[3] = *(v515 + 16);
            a10 = vzip1q_s8(v519, v26);
            a11 = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v518, v501, a9), v467, a10), v28), 6uLL);
            *(&v2896 + v511) = a11;
            v511 += 32;
          }

          while (v511 != 256);
        }

        v520 = 0;
        v521 = v2793;
        v522 = v20;
        do
        {
          v524 = *(&v2895 + v520);
          v523 = *(&v2895 + v520 + 16);
          v526 = *(&v2897 + v520);
          v525 = v2898[v520 / 0x10];
          if (v20)
          {
            v527 = *v522;
            a9 = *(v522 + 16);
            a10 = *(v522 + 32);
            a11 = *(v522 + 48);
            v522 += 64;
            v524 = vaddq_s16(v527, v524);
            v523 = vaddq_s16(a9, v523);
            v526 = vaddq_s16(a10, v526);
            v525 = vaddq_s16(a11, v525);
          }

          *v521 = vqmovun_high_s16(vqmovun_s16(v524), v523);
          *(v521 + v83) = vqmovun_high_s16(vqmovun_s16(v526), v525);
          v521 = (v521 + v2775);
          v520 += 64;
        }

        while (v520 != 256);
        goto LABEL_352;
      }

      v2848 = 2 * v57;
      v87 = v26;
      v87.i32[0] = 65537 * (8 - v64) * (8 - v62);
      v88 = v26;
      v88.i32[0] = 65537 * (8 - v64) * v62;
      v89 = xmmword_2773B3DF0;
      v90 = vqtbl1q_s8(v87, xmmword_2773B3DF0);
      v91 = vqtbl1q_s8(v88, xmmword_2773B3DF0);
      v92 = v26;
      v92.i32[0] = 65537 * v64 * (8 - v62);
      v93 = vqtbl1q_s8(v92, xmmword_2773B3DF0);
      v2821 = v64 * v62;
      v94 = v26;
      v94.i32[0] = 65537 * v64 * v62;
      v95 = vqtbl1q_s8(v94, xmmword_2773B3DF0);
      v2904 = v90;
      v2905 = v91;
      v2906 = v93;
      v2907 = v95;
      if (v33 == 4)
      {
        v233 = v59 >> 2;
        v234 = v2791 + v36 + (v59 >> 2);
        v235 = v2792 + v37 + (v60 >> 2);
        if (v234 <= -18)
        {
          v234 = -18;
        }

        if (v235 <= -18)
        {
          v235 = -18;
        }

        if (v234 >= v68 + 1)
        {
          v236 = v68 + 1;
        }

        else
        {
          v236 = v234;
        }

        if (v235 >= v70 + 1)
        {
          v237 = v70 + 1;
        }

        else
        {
          v237 = v235;
        }

        v238 = (v54 + v236 + v237 * v66);
        v239 = (v233 & 0xFFFFFFFE) + v2791 + v36;
        v240 = (v63 >> 3) + ((v2792 + v37) >> 1);
        if (v239 <= -16)
        {
          v239 = -16;
        }

        if (v240 <= -8)
        {
          v240 = -8;
        }

        if (v239 >= v69 - 2)
        {
          v239 = v69 - 2;
        }

        v241 = v55 + v239;
        if (v240 >= v71)
        {
          v240 = v71 - 1;
        }

        v242 = 2 * v57;
        v243 = v241 + v240 * v2848;
        v244 = (v2794->i32 + v36 + (v2784 * v37));
        v245 = (v21 + 2 * v36 + 32 * v37);
        v246 = (v2793->i32 + v36 + (v37 >> 1) * v2783);
        v2835 = (v20 + 2 * v36 + 32 * (v37 >> 1));
        v2854 = v11;
        v2868 = v26;
        if (v34 == 8)
        {
          v2883 = v23;
          v247 = &v238[2 * v56];
          v2829 = v62;
          switch(v61)
          {
            case 1:
              v2053 = sub_27729F23C(&v2886, v238, 2 * v56, v90, v91, *v93.i64, v94, 3.52371676e-294, a9, a10, a11);
              v256 = sub_27729F23C(&v2888, v247, v66, v2053, v2054, v2055, v2056, v2057, v2058, v2059, v2060);
              goto LABEL_1082;
            case 2:
              v1754 = sub_27729F394(&v2886, v238, 2 * v56, *v90.i64, v91, v93, *v94.i64, xmmword_2773B3DF0, a9, a10, a11);
              sub_27729F394(&v2888, v247, v66, v1754, v1755, v1756, v1757, v1758, v1759, v1760, v1761);
              goto LABEL_1082;
            case 3:
              v1880 = sub_27729F4D8(&v2886, v238, 2 * v56, v90, v91, *v93.i64, v94, 3.52371676e-294, a9, a10, a11);
              v256 = sub_27729F4D8(&v2888, v247, v66, v1880, v1881, v1882, v1883, v1884, v1885, v1886, v1887);
              goto LABEL_1082;
            case 4:
              sub_27729C91C(&v2886, 8u, v238, 2 * v56);
              v256 = sub_27729C91C(&v2888, 8u, v247, v66);
              goto LABEL_1082;
            case 5:
              *v2393.i64 = sub_27729CAF0(&v2886, 8u, v238, 2 * v56, v90, *v91.i64, *v93.i64, *v94.i64, 3.52371676e-294, a9, a10, a11);
              sub_27729CAF0(&v2888, 8u, v247, v66, v2393, v2394, v2395, v2396, v2397, v2398, v2399, v2400);
              goto LABEL_1082;
            case 6:
              *v2419.i64 = sub_27729CDD0(&v2886, 8u, v238, 2 * v56, v90, v91, v93, v94, xmmword_2773B3DF0, a9, a10, a11);
              sub_27729CDD0(&v2888, 8u, v247, v66, v2419, v2420, v2421, v2422, v2423, v2424, v2425, v2426);
              goto LABEL_1082;
            case 7:
              v2011 = sub_27729D274(&v2886, 8u, v238, 2 * v56, *v90.i64, *v91.i64, *v93.i64, *v94.i64, 3.52371676e-294, a9.n128_f64[0], a10, a11);
              sub_27729D274(&v2888, 8u, v247, v66, v2011, v2012, v2013, v2014, v2015, v2016, v2017, v2018);
              goto LABEL_1082;
            case 8:
              sub_27729D550(&v2886, 8u, v238, 2 * v56);
              v256 = sub_27729D550(&v2888, 8u, v247, v66);
              goto LABEL_1082;
            case 9:
              sub_27729D714(&v2886, 8u, v238, 2 * v56);
              sub_27729D714(&v2888, 8u, v247, v66);
              goto LABEL_1082;
            case 10:
              *v2429.i64 = sub_27729F62C(&v2886, v238, 2 * v56, v90, v91, v93, v94, xmmword_2773B3DF0, a9, a10, a11);
              sub_27729F62C(&v2888, v247, v66, v2429, v2430, v2431, v2432, v2433, v2434, v2435, v2436);
              goto LABEL_1082;
            case 11:
              sub_27729DE6C(&v2886, 8u, v238, 2 * v56);
              sub_27729DE6C(&v2888, 8u, v247, v66);
              goto LABEL_1082;
            case 12:
              sub_27729E5C4(&v2886, 8u, v238, 2 * v56);
              v256 = sub_27729E5C4(&v2888, 8u, v247, v66);
              goto LABEL_1082;
            case 13:
              *v2411.i64 = sub_27729E798(&v2886, 8u, v238, 2 * v56, v90, *v91.i64, *v93.i64, *v94.i64, 3.52371676e-294, a9, a10, a11);
              sub_27729E798(&v2888, 8u, v247, v66, v2411, v2412, v2413, v2414, v2415, v2416, v2417, v2418);
              goto LABEL_1082;
            case 14:
              *v1608.i64 = sub_27729EA7C(&v2886, 8u, v238, 2 * v56, v90, v91, v93, v94, xmmword_2773B3DF0, a9, a10, a11);
              sub_27729EA7C(&v2888, 8u, v247, v66, v1608, v1609, v1610, v1611, v1612, v1613, v1614, v1615);
              goto LABEL_1082;
            case 15:
              v1858 = sub_27729EF20(&v2886, 8u, v238, 2 * v56, *v90.i64, *v91.i64, *v93.i64, *v94.i64, 3.52371676e-294, a9.n128_f64[0], a10, a11);
              sub_27729EF20(&v2888, 8u, v247, v66, v1858, v1859, v1860, v1861, v1862, v1863, v1864, v1865);
LABEL_1082:
              v242 = 2 * v57;
              break;
            default:
              v248 = v56;
              v249 = 6 * v56;
              v90.i32[0] = *(v238 + v66);
              v91.i32[0] = v238[v248];
              v93.i32[0] = *v238;
              v94.i32[0] = *(v238 + v249);
              v250.i64[0] = vzip1q_s8(v93, v26).u64[0];
              v251 = vzip1q_s8(v90, v26);
              v252.i64[0] = vzip1q_s8(v91, v26).u64[0];
              v253 = vzip1q_s8(v94, v26);
              v250.i64[1] = v251.i64[0];
              v252.i64[1] = v253.i64[0];
              v2886 = v250;
              v2887 = v252;
              v251.i32[0] = *v247;
              v252.i32[0] = *(v247 + v66);
              v250.i32[0] = v247[v248];
              v253.i32[0] = *(v247 + v249);
              v256.i64[0] = vzip1q_s8(v251, v26).u64[0];
              v254 = vzip1q_s8(v252, v26);
              v257.i64[0] = vzip1q_s8(v250, v26).u64[0];
              v255 = vzip1q_s8(v253, v26);
              v256.i64[1] = v254.i64[0];
              v257.i64[1] = v255.i64[0];
              v2888 = v256;
              v2889[0] = v257;
              break;
          }

          v2437 = 1;
          v2438 = &v2886;
          v23 = v2883;
          do
          {
            v2439 = v2437;
            v256.i64[0] = v2438->i64[0];
            v254.i64[0] = v2438->i64[1];
            v257.i64[0] = v2438[1].i64[0];
            v255.i64[0] = v2438[1].i64[1];
            if (v21)
            {
              v89.i64[0] = *v245;
              a9.n128_u64[0] = v245[4];
              a10.n128_u64[0] = v245[8];
              a11.n128_u64[0] = v245[12];
              v245 += 16;
              v256 = vaddq_s16(v89, v256);
              v254 = vaddq_s16(a9, v254);
              v257 = vaddq_s16(a10, v257);
              v255 = vaddq_s16(a11, v255);
            }

            v2437 = 0;
            v2440 = COERCE_DOUBLE(vqmovun_s16(v256));
            v2441 = COERCE_DOUBLE(vqmovun_s16(v254));
            v2442 = COERCE_DOUBLE(vqmovun_s16(v257));
            v2443 = COERCE_DOUBLE(vqmovun_s16(v255));
            *v244 = LODWORD(v2440);
            *(v244 + v2789) = LODWORD(v2441);
            v244[v2788 / 4] = LODWORD(v2442);
            *(v244 + v2761) = LODWORD(v2443);
            v244 = (v244 + v2755);
            v2438 += 2;
          }

          while ((v2439 & 1) != 0);
          v2444 = v242;
          v2445 = sub_277290798(&v2895, v243, v242, v2829, v64, v2440, v2441, v2442, v2443, v89, a9);
          sub_277290798(&v2896, v243 + (4 * v57), v2444, v2829, v64, v2445, v2446, v2447, v2448, v2449, v2450);
          v2453.i64[0] = v2895.i64[1];
          v2452.i64[0] = v2895.i64[0];
          v2455.i64[0] = v2896.i64[1];
          v2454.i64[0] = v2896.i64[0];
          v20 = a3;
          if (a3)
          {
            v2451.i64[0] = *v2835;
            a9.n128_u64[0] = v2835[4];
            a10.n128_u64[0] = v2835[8];
            a11.n128_u64[0] = v2835[12];
            v2452 = vaddq_s16(v2451, v2452);
            v2453 = vaddq_s16(a9, v2453);
            v2454 = vaddq_s16(a10, v2454);
            v2455 = vaddq_s16(a11, v2455);
          }

          v22 = a1;
          v27.i64[0] = 0x10001000100010;
          v27.i64[1] = 0x10001000100010;
          v28.i64[0] = 0x20002000200020;
          v28.i64[1] = 0x20002000200020;
          v19 = v2850;
          *v246 = vqmovun_s16(v2452).u32[0];
          *(v246 + v2783) = vqmovun_s16(v2453).u32[0];
          v246[v2775 / 4] = vqmovun_s16(v2454).u32[0];
          *(v246 + v2754) = vqmovun_s16(v2455).u32[0];
          v11 = v2854;
          v26 = v2868;
LABEL_352:
          if (v19 == 1)
          {
            return;
          }

          goto LABEL_1057;
        }

        switch(v61)
        {
          case 1:
            v1616 = v62;
            v278 = sub_27729F23C(&v2886, v238, 2 * v56, v90, v91, *v93.i64, v94, 3.52371676e-294, a9, a10, a11);
            goto LABEL_1091;
          case 2:
            v1616 = v62;
            sub_27729F394(&v2886, v238, 2 * v56, *v90.i64, v91, v93, *v94.i64, xmmword_2773B3DF0, a9, a10, a11);
            goto LABEL_1091;
          case 3:
            v1616 = v62;
            v278 = sub_27729F4D8(&v2886, v238, 2 * v56, v90, v91, *v93.i64, v94, 3.52371676e-294, a9, a10, a11);
            goto LABEL_1091;
          case 4:
            v1616 = v62;
            v278 = sub_27729C91C(&v2886, 8u, v238, 2 * v56);
            goto LABEL_1091;
          case 5:
            v1616 = v62;
            sub_27729CAF0(&v2886, 8u, v238, 2 * v56, v90, *v91.i64, *v93.i64, *v94.i64, 3.52371676e-294, a9, a10, a11);
            goto LABEL_1091;
          case 6:
            v1616 = v62;
            sub_27729CDD0(&v2886, 8u, v238, 2 * v56, v90, v91, v93, v94, xmmword_2773B3DF0, a9, a10, a11);
            goto LABEL_1091;
          case 7:
            v1616 = v62;
            sub_27729D274(&v2886, 8u, v238, 2 * v56, *v90.i64, *v91.i64, *v93.i64, *v94.i64, 3.52371676e-294, a9.n128_f64[0], a10, a11);
            goto LABEL_1091;
          case 8:
            v1616 = v62;
            v278 = sub_27729D550(&v2886, 8u, v238, 2 * v56);
            goto LABEL_1091;
          case 9:
            v1616 = v62;
            sub_27729D714(&v2886, 8u, v238, 2 * v56);
            goto LABEL_1091;
          case 10:
            v1616 = v62;
            sub_27729F62C(&v2886, v238, 2 * v56, v90, v91, v93, v94, xmmword_2773B3DF0, a9, a10, a11);
            goto LABEL_1091;
          case 11:
            v1616 = v62;
            sub_27729DE6C(&v2886, 8u, v238, 2 * v56);
            goto LABEL_1091;
          case 12:
            v1616 = v62;
            v278 = sub_27729E5C4(&v2886, 8u, v238, 2 * v56);
            goto LABEL_1091;
          case 13:
            v1616 = v62;
            sub_27729E798(&v2886, 8u, v238, 2 * v56, v90, *v91.i64, *v93.i64, *v94.i64, 3.52371676e-294, a9, a10, a11);
            goto LABEL_1091;
          case 14:
            v1616 = v62;
            sub_27729EA7C(&v2886, 8u, v238, 2 * v56, v90, v91, v93, v94, xmmword_2773B3DF0, a9, a10, a11);
            goto LABEL_1091;
          case 15:
            v1616 = v62;
            sub_27729EF20(&v2886, 8u, v238, 2 * v56, *v90.i64, *v91.i64, *v93.i64, *v94.i64, 3.52371676e-294, a9.n128_f64[0], a10, a11);
LABEL_1091:
            v62 = v1616;
            v242 = 2 * v57;
            break;
          default:
            v90.i32[0] = *v238;
            v91.i32[0] = *(v238 + v66);
            v93.i32[0] = v238[v56];
            v94.i32[0] = *(v238 + 6 * v56);
            v278.i64[0] = vzip1q_s8(v90, v26).u64[0];
            v276 = vzip1q_s8(v91, v26);
            v279.i64[0] = vzip1q_s8(v93, v26).u64[0];
            v277 = vzip1q_s8(v94, v26);
            v278.i64[1] = v276.i64[0];
            v279.i64[1] = v277.i64[0];
            v2886 = v278;
            v2887 = v279;
            break;
        }

        v277.i64[0] = v2886.i64[1];
        v279.i64[0] = v2886.i64[0];
        v276.i64[0] = v2887.i64[1];
        v278.i64[0] = v2887.i64[0];
        if (v21)
        {
          v89.i64[0] = *v245;
          a9.n128_u64[0] = v245[4];
          a10.n128_u64[0] = v245[8];
          a11.n128_u64[0] = v245[12];
          v279 = vaddq_s16(v89, v279);
          v277 = vaddq_s16(a9, v277);
          v278 = vaddq_s16(a10, v278);
          v276 = vaddq_s16(a11, v276);
        }

        v22 = a1;
        v2456 = COERCE_DOUBLE(vqmovun_s16(v279));
        v2457 = COERCE_DOUBLE(vqmovun_s16(v277));
        *v244 = LODWORD(v2456);
        *(v244 + v2789) = LODWORD(v2457);
        v2458 = COERCE_DOUBLE(vqmovun_s16(v278));
        v2459 = COERCE_DOUBLE(vqmovun_s16(v276));
        v244[v2788 / 4] = LODWORD(v2458);
        *(v244 + v2761) = LODWORD(v2459);
        sub_277290798(&v2895, v243, v242, v62, v64, v2458, v2459, v2456, v2457, v89, a9);
        v2462.i64[0] = v2895.i64[1];
        v2463.i64[0] = v2895.i64[0];
        v20 = a3;
        if (a3)
        {
          v2460.i64[0] = *v2835;
          v2461.i64[0] = v2835[4];
          v2463 = vaddq_s16(v2460, v2463);
          v2462 = vaddq_s16(v2461, v2462);
        }

        v11 = v2854;
        v26 = v2868;
        v27.i64[0] = 0x10001000100010;
        v27.i64[1] = 0x10001000100010;
        v28.i64[0] = 0x20002000200020;
        v28.i64[1] = 0x20002000200020;
        v19 = v2850;
        *v246 = vqmovun_s16(v2463).u32[0];
        *(v246 + v2783) = vqmovun_s16(v2462).u32[0];
      }

      else
      {
        v96 = 2 * v57;
        if (v33 == 8)
        {
          if (v34 == 4)
          {
            v2885 = v23;
            v351 = v59 >> 2;
            v352 = v2791 + v36 + (v59 >> 2);
            v353 = v2792 + v37 + (v60 >> 2);
            if (v352 <= -18)
            {
              v352 = -18;
            }

            if (v353 <= -18)
            {
              v353 = -18;
            }

            if (v352 >= v68 + 1)
            {
              v354 = v68 + 1;
            }

            else
            {
              v354 = v352;
            }

            if (v353 >= v70 + 1)
            {
              v355 = v70 + 1;
            }

            else
            {
              v355 = v353;
            }

            v356 = (v54 + v354 + v355 * v66);
            v357 = (v351 & 0xFFFFFFFE) + v2791 + v36;
            v358 = (v63 >> 3) + ((v2792 + v37) >> 1);
            if (v357 <= -16)
            {
              v357 = -16;
            }

            if (v358 <= -8)
            {
              v358 = -8;
            }

            if (v357 >= v69 - 2)
            {
              v357 = v69 - 2;
            }

            if (v358 >= v71)
            {
              v358 = v71 - 1;
            }

            v359 = (v55 + v357 + v358 * v2848);
            v360 = &v2794->i8[v36 + (v2784 * v37)];
            v361 = (v21 + 2 * v36 + 32 * v37);
            v362 = &v2793->i8[v36 + (v37 >> 1) * v2783];
            v363 = (v20 + 2 * v36 + 32 * (v37 >> 1));
            v2860 = v11;
            v2874 = v26;
            switch(v61)
            {
              case 1:
                sub_27729AC20(&v2886, 0x10u, v356, v66, 4);
                goto LABEL_1234;
              case 2:
                sub_27729ACE8(v2886.i8, 0x10u, v356, v66, 4);
                goto LABEL_1234;
              case 3:
                sub_27729ADA4(&v2886, 0x10u, v356, v66, 4);
                goto LABEL_1234;
              case 4:
                sub_27729C91C(&v2886, 0x10u, v356, v66);
                sub_27729C91C(&v2886.i64[1], 0x10u, v356->val + 4, v66);
                goto LABEL_1234;
              case 5:
                *v2691.i64 = sub_27729CAF0(&v2886, 0x10u, v356, v66, v90, *v91.i64, *v93.i64, *v94.i64, 3.52371676e-294, a9, a10, a11);
                sub_27729CAF0(&v2886.i64[1], 0x10u, v356->val + 4, v66, v2691, v2692, v2693, v2694, v2695, v2696, v2697, v2698);
                goto LABEL_1234;
              case 6:
                *v2707.i64 = sub_27729CDD0(&v2886, 0x10u, v356, v66, v90, v91, v93, v94, xmmword_2773B3DF0, a9, a10, a11);
                sub_27729CDD0(&v2886.i64[1], 0x10u, v356->val + 4, v66, v2707, v2708, v2709, v2710, v2711, v2712, v2713, v2714);
                goto LABEL_1234;
              case 7:
                v2653 = sub_27729D274(&v2886, 0x10u, v356, v66, *v90.i64, *v91.i64, *v93.i64, *v94.i64, 3.52371676e-294, a9.n128_f64[0], a10, a11);
                sub_27729D274(&v2886.i64[1], 0x10u, v356->val + 4, v66, v2653, v2654, v2655, v2656, v2657, v2658, v2659, v2660);
                goto LABEL_1234;
              case 8:
                sub_27729D550(&v2886, 0x10u, v356, v66);
                sub_27729D550(&v2886.i64[1], 0x10u, v356->val + 4, v66);
                goto LABEL_1234;
              case 9:
                sub_27729D714(&v2886, 0x10u, v356, v66);
                sub_27729D714(&v2886.i64[1], 0x10u, v356->val + 4, v66);
                goto LABEL_1234;
              case 10:
                sub_27729B7DC(&v2886, 16, v356, v66, 4);
                goto LABEL_1234;
              case 11:
                sub_27729DE6C(&v2886, 0x10u, v356, v66);
                sub_27729DE6C(&v2886.i64[1], 0x10u, v356->val + 4, v66);
                goto LABEL_1234;
              case 12:
                sub_27729E5C4(&v2886, 0x10u, v356, v66);
                sub_27729E5C4(&v2886.i64[1], 0x10u, v356->val + 4, v66);
                goto LABEL_1234;
              case 13:
                *v2699.i64 = sub_27729E798(&v2886, 0x10u, v356, v66, v90, *v91.i64, *v93.i64, *v94.i64, 3.52371676e-294, a9, a10, a11);
                sub_27729E798(&v2886.i64[1], 0x10u, v356->val + 4, v66, v2699, v2700, v2701, v2702, v2703, v2704, v2705, v2706);
                goto LABEL_1234;
              case 14:
                *v2631.i64 = sub_27729EA7C(&v2886, 0x10u, v356, v66, v90, v91, v93, v94, xmmword_2773B3DF0, a9, a10, a11);
                sub_27729EA7C(&v2886.i64[1], 0x10u, v356->val + 4, v66, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638);
                goto LABEL_1234;
              case 15:
                v2642 = sub_27729EF20(&v2886, 0x10u, v356, v66, *v90.i64, *v91.i64, *v93.i64, *v94.i64, 3.52371676e-294, a9.n128_f64[0], a10, a11);
                sub_27729EF20(&v2886.i64[1], 0x10u, v356->val + 4, v66, v2642, v2643, v2644, v2645, v2646, v2647, v2648, v2649);
LABEL_1234:
                v96 = v2848;
                v365 = v2784;
                v366 = v2788;
                v367 = v2761;
                break;
              default:
                v364 = 0;
                v365 = v2784;
                v366 = v2788;
                v367 = v2761;
                do
                {
                  v368 = &v2886.i8[v364];
                  v369 = *v356;
                  v356 = (v356 + v66);
                  v370 = v26.i64[0];
                  vst2_s8(v368, v369);
                  v364 += 16;
                }

                while (v364 != 64);
                break;
            }

            v2716 = v2886;
            v2717 = v2887;
            v2718 = v2888;
            v2719 = v2889[0];
            if (v21)
            {
              v2716 = vaddq_s16(*v361, v2886);
              v2717 = vaddq_s16(v361[2], v2887);
              v2718 = vaddq_s16(v361[4], v2888);
              v2719 = vaddq_s16(v361[6], v2889[0]);
            }

            v22 = a1;
            *v360 = vqmovun_s16(v2716);
            *(v360 + v365) = vqmovun_s16(v2717);
            *(v360 + v366) = vqmovun_s16(v2718);
            *(v360 + v367) = vqmovun_s16(v2719);
            sub_2772906A8(&v2895, v359, v96, &v2904);
            v2720 = v2895;
            v2721 = v2896;
            v20 = a3;
            if (a3)
            {
              v2720 = vaddq_s16(*v363, v2895);
              v2721 = vaddq_s16(v363[2], v2896);
            }

            v23 = v2885;
            v11 = v2860;
            v26 = v2874;
            v27.i64[0] = 0x10001000100010;
            v27.i64[1] = 0x10001000100010;
            v28.i64[0] = 0x20002000200020;
            v28.i64[1] = 0x20002000200020;
            v19 = v2850;
            *v362 = vqmovun_s16(v2720);
            *(v362 + v2783) = vqmovun_s16(v2721);
            goto LABEL_352;
          }

          v19 = v2850;
          if (v34 == 8)
          {
            v2884 = v23;
            v313 = v59 >> 2;
            v314 = v2791 + v36 + (v59 >> 2);
            v315 = v2792 + v37 + (v60 >> 2);
            if (v314 <= -18)
            {
              v314 = -18;
            }

            if (v315 <= -18)
            {
              v315 = -18;
            }

            if (v314 >= v68 + 1)
            {
              v316 = v68 + 1;
            }

            else
            {
              v316 = v314;
            }

            if (v315 >= v70 + 1)
            {
              v317 = v70 + 1;
            }

            else
            {
              v317 = v315;
            }

            v318 = (v54 + v316 + v317 * v66);
            v319 = v55;
            v320 = (v313 & 0xFFFFFFFE) + v2791 + v36;
            v321 = (v63 >> 3) + ((v2792 + v37) >> 1);
            if (v320 <= -16)
            {
              v322 = -16;
            }

            else
            {
              v322 = (v313 & 0xFFFFFFFE) + v2791 + v36;
            }

            if (v321 <= -8)
            {
              v321 = -8;
            }

            v323 = v69 - 2;
            if (v322 >= v69 - 2)
            {
              v322 = v69 - 2;
            }

            v2836 = v319;
            v324 = v319 + v322;
            if (v321 >= v71)
            {
              v321 = v71 - 1;
            }

            v325 = v321 * v2848;
            v326 = v324 + v325;
            v327 = &v2794->i8[v36 + (v2784 * v37)];
            v328 = (v21 + 2 * v36 + 32 * v37);
            v329 = &v2793->i8[v36 + (v37 >> 1) * v2783];
            v330 = v20 + 2 * v36 + 32 * (v37 >> 1);
            v2859 = v11;
            v2873 = v26;
            switch(v61)
            {
              case 1:
                sub_27729AC20(&v2886, 0x10u, v318, v66, 8);
                goto LABEL_1210;
              case 2:
                sub_27729ACE8(v2886.i8, 0x10u, v318, v66, 8);
                goto LABEL_1210;
              case 3:
                sub_27729ADA4(&v2886, 0x10u, v318, v66, 8);
                goto LABEL_1210;
              case 4:
                sub_27729AE6C(&v2886, 0x10u, v318, v66, 8);
                goto LABEL_1210;
              case 5:
                v2639 = v318;
                v2640 = v66;
                v2641 = 2;
                goto LABEL_1205;
              case 6:
                sub_27729BFC4(v2886.i8, 0x10u, v318, v66);
                goto LABEL_1210;
              case 7:
                v2639 = v318;
                v2640 = v66;
                v2641 = 3;
LABEL_1205:
                v2661 = 2;
                goto LABEL_1209;
              case 8:
                sub_27729B588(v2886.i8, 0x10u, v318, v66, 8, v90);
                goto LABEL_1210;
              case 9:
                sub_27729B614(v2886.i8, 0x10u, v318, v66, 8);
                goto LABEL_1210;
              case 10:
                sub_27729B7DC(&v2886, 16, v318, v66, 8);
                goto LABEL_1210;
              case 11:
                sub_27729B98C(v2886.i8, 0x10u, v318, v66, 8);
                goto LABEL_1210;
              case 12:
                sub_27729BB54(&v2886, 0x10u, v318, v66, 8);
                goto LABEL_1210;
              case 13:
                v2639 = v318;
                v2640 = v66;
                v2641 = 2;
                goto LABEL_1208;
              case 14:
                sub_27729C39C(v2886.i8, 0x10u, v318, v66);
                goto LABEL_1210;
              case 15:
                v2639 = v318;
                v2640 = v66;
                v2641 = 3;
LABEL_1208:
                v2661 = 3;
LABEL_1209:
                sub_27729C774(v2886.i8, v2639, v2640, 8, v2641, v2661);
LABEL_1210:
                v96 = v2848;
                v28.i64[0] = 0x20002000200020;
                v28.i64[1] = 0x20002000200020;
                v27.i64[0] = 0x10001000100010;
                v27.i64[1] = 0x10001000100010;
                v11 = v2859;
                v26 = v2873;
                v20 = a3;
                v333 = v2783;
                v332 = v2784;
                v334 = v2788;
                v335 = v2761;
                v337 = v2754;
                v336 = v2755;
                break;
              default:
                v331 = 0;
                v333 = v2783;
                v332 = v2784;
                v334 = v2788;
                v335 = v2761;
                v337 = v2754;
                v336 = v2755;
                do
                {
                  v338 = &v2886.i8[v331];
                  v339 = *v318;
                  v318 = (v318 + v66);
                  v340 = v26.i64[0];
                  vst2_s8(v338, v339);
                  v331 += 16;
                }

                while (v331 != 128);
                break;
            }

            v2662 = 1;
            v2663 = &v2886;
            do
            {
              v2664 = v2662;
              v2665 = *v2663;
              v2666 = v2663[1];
              v2667 = v2663[2];
              v2668 = v2663[3];
              if (v21)
              {
                v2669 = *v328;
                v2670 = v328[2];
                v2671 = v328[4];
                v2672 = v328[6];
                v328 += 8;
                v2665 = vaddq_s16(v2669, v2665);
                v2666 = vaddq_s16(v2670, v2666);
                v2667 = vaddq_s16(v2671, v2667);
                v2668 = vaddq_s16(v2672, v2668);
              }

              v2662 = 0;
              *v327 = vqmovun_s16(v2665);
              *(v327 + v332) = vqmovun_s16(v2666);
              *(v327 + v334) = vqmovun_s16(v2667);
              *(v327 + v335) = vqmovun_s16(v2668);
              v327 = (v327 + v336);
              v2663 += 4;
            }

            while ((v2664 & 1) != 0);
            v2673 = 0;
            _X9 = v326 + v96;
            __asm { PRFM            #0, [X9] }

            v2666.i64[0] = *v326;
            v2676 = vqtbl1q_s8(v2666, xmmword_2773B3E00);
            v2676.i16[3] = *(v326 + 8);
            a10 = vzip1q_s8(v2676, v26);
            v2677 = vzip1q_s8(v2666, v26);
            v2678 = v2904;
            v2679 = v2905;
            v2680 = v2906;
            a9 = v2907;
            v2681 = v320;
            if (v320 <= -16)
            {
              v2681 = -16;
            }

            if (v2681 >= v323)
            {
              v2681 = v323;
            }

            v2682 = v2836 + v325 + v2681;
            do
            {
              _X12 = v2682 + 2 * v96;
              v2682 += v96;
              __asm { PRFM            #0, [X12] }

              v2685 = vmlaq_s16(vmulq_s16(v2679, a10), v2678, v2677);
              a10.n128_u64[0] = *v2682;
              v2677 = vzip1q_s8(a10, v26);
              v2686 = vqtbl1q_s8(a10, xmmword_2773B3E00);
              v2686.i16[3] = *(v2682 + 8);
              a10 = vzip1q_s8(v2686, v26);
              a11 = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v2685, v2680, v2677), a9, a10), v28), 6uLL);
              *(&v2895 + v2673) = a11;
              v2673 += 16;
            }

            while (v2673 != 64);
            v2687 = v2895;
            v2688 = v2896;
            v2689 = v2897;
            v2690 = v2898[0];
            v22 = a1;
            v19 = v2850;
            v23 = v2884;
            if (v20)
            {
              a9 = *(v330 + 32);
              a10 = *(v330 + 64);
              a11 = *(v330 + 96);
              v2687 = vaddq_s16(*v330, v2895);
              v2688 = vaddq_s16(a9, v2896);
              v2689 = vaddq_s16(a10, v2897);
              v2690 = vaddq_s16(a11, v2898[0]);
            }

            *v329 = vqmovun_s16(v2687);
            *(v329 + v333) = vqmovun_s16(v2688);
            *(v329 + v2775) = vqmovun_s16(v2689);
            *(v329 + v337) = vqmovun_s16(v2690);
            goto LABEL_352;
          }

          if (v34 == 16)
          {
            v2882 = v23;
            v206 = v2791 + v36 + (v59 >> 2);
            v207 = v2792 + (v60 >> 2);
            if (v206 <= -18)
            {
              v206 = -18;
            }

            if (v207 <= -18)
            {
              v207 = -18;
            }

            if (v206 >= v68 + 1)
            {
              v208 = v68 + 1;
            }

            else
            {
              v208 = v206;
            }

            if (v207 >= v70 + 1)
            {
              v209 = v70 + 1;
            }

            else
            {
              v209 = v207;
            }

            v210 = (v54 + v208 + v209 * v66);
            v211 = v55;
            v212 = ((v59 >> 2) & 0xFFFFFFFE) + v2791 + v36;
            v213 = v2759 + (v63 >> 3);
            if (v212 <= -16)
            {
              v214 = -16;
            }

            else
            {
              v214 = ((v59 >> 2) & 0xFFFFFFFE) + v2791 + v36;
            }

            if (v213 <= -8)
            {
              v213 = -8;
            }

            v215 = v69 - 2;
            if (v214 >= v69 - 2)
            {
              v214 = v69 - 2;
            }

            if (v213 >= v71)
            {
              v213 = v71 - 1;
            }

            v2834 = v211;
            v216 = v213 * v2848;
            v217 = v211 + v214 + v216;
            v218 = v216;
            v219 = &v2794->i8[v36];
            v220 = (v21 + 2 * v36);
            v221 = &v2793->i8[v36];
            v222 = v20 + 2 * v36;
            v2853 = v11;
            v2867 = v26;
            switch(v61)
            {
              case 1:
                sub_27729AC20(&v2886, 0x10u, v210, v66, 16);
                goto LABEL_1243;
              case 2:
                sub_27729ACE8(v2886.i8, 0x10u, v210, v66, 16);
                goto LABEL_1243;
              case 3:
                sub_27729ADA4(&v2886, 0x10u, v210, v66, 16);
                goto LABEL_1243;
              case 4:
                sub_27729AE6C(&v2886, 0x10u, v210, v66, 16);
                goto LABEL_1243;
              case 5:
                v2650 = v210;
                v2651 = v66;
                v2652 = 2;
                goto LABEL_1231;
              case 6:
                sub_27729B1B0(v2886.i8, 0x10u, v210, v66);
                goto LABEL_1243;
              case 7:
                v2650 = v210;
                v2651 = v66;
                v2652 = 3;
LABEL_1231:
                v2715 = 2;
                goto LABEL_1242;
              case 8:
                sub_27729B588(v2886.i8, 0x10u, v210, v66, 16, v90);
                goto LABEL_1243;
              case 9:
                sub_27729B614(v2886.i8, 0x10u, v210, v66, 16);
                goto LABEL_1243;
              case 10:
                sub_27729B7DC(&v2886, 16, v210, v66, 16);
                goto LABEL_1243;
              case 11:
                sub_27729B98C(v2886.i8, 0x10u, v210, v66, 16);
                goto LABEL_1243;
              case 12:
                sub_27729BB54(&v2886, 0x10u, v210, v66, 16);
                goto LABEL_1243;
              case 13:
                v2650 = v210;
                v2651 = v66;
                v2652 = 2;
                goto LABEL_1241;
              case 14:
                sub_27729BBEC(v2886.i8, 0x10u, v210, v66);
                goto LABEL_1243;
              case 15:
                v2650 = v210;
                v2651 = v66;
                v2652 = 3;
LABEL_1241:
                v2715 = 3;
LABEL_1242:
                sub_27729C774(v2886.i8, v2650, v2651, 16, v2652, v2715);
LABEL_1243:
                v96 = v2848;
                v28.i64[0] = 0x20002000200020;
                v28.i64[1] = 0x20002000200020;
                v27.i64[0] = 0x10001000100010;
                v27.i64[1] = 0x10001000100010;
                v11 = v2853;
                v26 = v2867;
                v20 = a3;
                v225 = v2783;
                v224 = v2784;
                v226 = v2788;
                v227 = v2761;
                v229 = v2754;
                v228 = v2755;
                break;
              default:
                v223 = 0;
                v225 = v2783;
                v224 = v2784;
                v226 = v2788;
                v227 = v2761;
                v229 = v2754;
                v228 = v2755;
                do
                {
                  v230 = &v2886.i8[v223];
                  v231 = *v210;
                  v210 = (v210 + v66);
                  v232 = v26.i64[0];
                  vst2_s8(v230, v231);
                  v223 += 16;
                }

                while (v223 != 256);
                break;
            }

            v2722 = 0;
            do
            {
              v2723 = *(&v2886 + v2722);
              v2724 = *(&v2886 + v2722 + 16);
              v2726 = *(&v2888 + v2722);
              v2725 = v2889[v2722 / 0x10];
              if (v21)
              {
                v2727 = *v220;
                v2728 = v220[2];
                v2729 = v220[4];
                v2730 = v220[6];
                v220 += 8;
                v2723 = vaddq_s16(v2727, v2723);
                v2724 = vaddq_s16(v2728, v2724);
                v2726 = vaddq_s16(v2729, v2726);
                v2725 = vaddq_s16(v2730, v2725);
              }

              *v219 = vqmovun_s16(v2723);
              *(v219 + v224) = vqmovun_s16(v2724);
              *(v219 + v226) = vqmovun_s16(v2726);
              *(v219 + v227) = vqmovun_s16(v2725);
              v219 = (v219 + v228);
              v2722 += 64;
            }

            while (v2722 != 256);
            v2731 = 0;
            _X9 = v217 + v96;
            __asm { PRFM            #0, [X9] }

            v2723.i64[0] = *v217;
            v2734 = vqtbl1q_s8(v2723, xmmword_2773B3E00);
            v2734.i16[3] = *(v217 + 8);
            a10 = vzip1q_s8(v2734, v26);
            v2735 = vzip1q_s8(v2723, v26);
            v2736 = v2904;
            v2737 = v2905;
            v2738 = v2906;
            a9 = v2907;
            v2739 = v212;
            if (v212 <= -16)
            {
              v2739 = -16;
            }

            if (v2739 >= v215)
            {
              v2739 = v215;
            }

            v2740 = v2834 + v218 + v2739;
            do
            {
              _X12 = v2740 + 2 * v96;
              v2740 += v96;
              __asm { PRFM            #0, [X12] }

              v2743 = vmlaq_s16(vmulq_s16(v2737, a10), v2736, v2735);
              a10.n128_u64[0] = *v2740;
              v2735 = vzip1q_s8(a10, v26);
              v2744 = vqtbl1q_s8(a10, xmmword_2773B3E00);
              v2744.i16[3] = *(v2740 + 8);
              a10 = vzip1q_s8(v2744, v26);
              a11 = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v2743, v2738, v2735), a9, a10), v28), 6uLL);
              *(&v2895 + v2731) = a11;
              v2731 += 16;
            }

            while (v2731 != 128);
            v2745 = 1;
            v2746 = &v2895;
            v22 = a1;
            v19 = v2850;
            v23 = v2882;
            do
            {
              v2747 = v2745;
              v2748 = *v2746;
              v2749 = v2746[1];
              v2750 = v2746[2];
              v2751 = v2746[3];
              if (v20)
              {
                v2752 = *v222;
                a9 = *(v222 + 32);
                a10 = *(v222 + 64);
                a11 = *(v222 + 96);
                v222 += 128;
                v2748 = vaddq_s16(v2752, v2748);
                v2749 = vaddq_s16(a9, v2749);
                v2750 = vaddq_s16(a10, v2750);
                v2751 = vaddq_s16(a11, v2751);
              }

              v2745 = 0;
              *v221 = vqmovun_s16(v2748);
              *(v221 + v225) = vqmovun_s16(v2749);
              *(v221 + v2775) = vqmovun_s16(v2750);
              *(v221 + v229) = vqmovun_s16(v2751);
              v221 = (v221 + v2753);
              v2746 += 4;
            }

            while ((v2747 & 1) != 0);
            goto LABEL_352;
          }
        }

        else
        {
          v19 = v2850;
          if (v33 == 16)
          {
            v2827 = v59 & 7;
            v2880 = v23;
            v97 = v59 >> 2;
            v98 = v2791 + (v59 >> 2);
            v2833 = v55;
            if (v34 == 16)
            {
              v99 = v2792 + (v60 >> 2);
              if (v98 <= -18)
              {
                v100 = -18;
              }

              else
              {
                v100 = v2791 + (v59 >> 2);
              }

              if (v99 <= -18)
              {
                v99 = -18;
              }

              if (v100 >= v68 + 1)
              {
                v101 = v68 + 1;
              }

              else
              {
                v101 = v100;
              }

              if (v99 >= v70 + 1)
              {
                v102 = v70 + 1;
              }

              else
              {
                v102 = v99;
              }

              v103 = v102 * v66;
              v104 = (v54 + v103 + v101);
              v105 = (v97 & 0xFFFFFFFE) + v2791;
              v106 = v2759 + (v63 >> 3);
              if (v105 <= -16)
              {
                v105 = -16;
              }

              if (v106 <= -8)
              {
                v106 = -8;
              }

              if (v105 >= v69 - 2)
              {
                v105 = v69 - 2;
              }

              if (v106 >= v71)
              {
                v106 = v71 - 1;
              }

              v107 = v105;
              v108 = v55 + v105;
              v109 = v106 * v2848;
              _X19 = (v108 + v109);
              switch(v61)
              {
                case 1:
                  v2095 = 0;
                  v2096 = 4 * v56;
                  v2097 = (v104 + v66 - v2096);
                  v2098 = (v2097 + v66);
                  v2099 = (v2098 + v66);
                  v2100 = vzip1q_s8(*(v2099 + v66), v26);
                  v2101 = vzip1q_s8(*v2099, v26);
                  v2102 = vzip1q_s8(*v2098, v26);
                  v2103 = vzip1q_s8(*v2097, v26);
                  v2104 = vzip1q_s8(*(v104 - v2096), v26);
                  v2105 = 5 * v66;
                  v2106 = (v54 + v2105 + v101 + v103 - v2096);
                  do
                  {
                    v2107 = v2103;
                    v2103 = v2102;
                    v2102 = v2101;
                    v2101 = v2100;
                    v2100 = vzip1q_s8(*v2106, v26);
                    v2108 = vsubq_s16(vshlq_n_s16(vaddq_s16(v2103, v2102), 2uLL), vaddq_s16(v2107, v2101));
                    *(&v2886 + v2095) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v2104, v2108), vshlq_n_s16(v2108, 2uLL)), vaddq_s16(v2100, v27)), 5uLL))), v2103);
                    v2095 += 32;
                    v2106 = (v2106 + v66);
                    v2104 = v2107;
                  }

                  while (v2095 != 512);
                  v2109 = 0;
                  v2110 = (v104 + v66 - v2096 + 8);
                  v2111 = (v2110 + v66 + v66);
                  v2112 = vzip1q_s8(*(v2111 + v66), v26);
                  v2113 = vzip1q_s8(*v2111, v26);
                  v2114 = vzip1q_s8(*(v2110 + v66), v26);
                  v2115 = vzip1q_s8(*v2110, v26);
                  v89 = vzip1q_s8(*(v104 - v2096 + 8), v26);
                  v2116 = (v54 + v2105 + v101 + v103 - v2096 + 8);
                  v113 = v2783;
                  v112 = v2784;
                  v114 = v2788;
                  do
                  {
                    a9 = v2115;
                    v2115 = v2114;
                    v2114 = v2113;
                    v2113 = v2112;
                    v2112 = vzip1q_s8(*v2116, v26);
                    v2117 = vsubq_s16(vshlq_n_s16(vaddq_s16(v2115, v2114), 2uLL), vaddq_s16(a9, v2113));
                    a11 = vshlq_n_s16(v2117, 2uLL);
                    v2118 = vaddq_s16(vaddq_s16(v89, v2117), a11);
                    a10 = vaddq_s16(v2112, v27);
                    *(&v2887 + v2109) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(v2118, a10), 5uLL))), v2115);
                    v2109 += 32;
                    v2116 = (v2116 + v66);
                    v89 = a9;
                  }

                  while (v2109 != 512);
                  break;
                case 2:
                  v1781 = 0;
                  v1782 = 4 * v56;
                  v1783 = (v104 + v66 - v1782);
                  v1784 = (v1783 + v66);
                  v1785 = (v1784 + v66);
                  v1786 = vzip1q_s8(*(v1785 + v66), v26);
                  v1787 = vzip1q_s8(*v1785, v26);
                  v1788 = vzip1q_s8(*v1784, v26);
                  v1789 = vzip1q_s8(*v1783, v26);
                  v1790 = vzip1q_s8(*(v104 - v1782), v26);
                  v1791 = 5 * v66;
                  v1792 = (v54 + v1791 + v101 + v103 - v1782);
                  do
                  {
                    v1793 = v1789;
                    v1789 = v1788;
                    v1788 = v1787;
                    v1787 = v1786;
                    v1794 = &v2886.i8[v1781];
                    v1786 = vzip1q_s8(*v1792, v26);
                    v1795 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1789, v1788), 2uLL), vaddq_s16(v1793, v1787));
                    v1795.val[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1790, v1795), vshlq_n_s16(v1795, 2uLL)), vaddq_s16(v1786, v27)), 5uLL));
                    v1796 = v26.i64[0];
                    vst2_s8(v1794, v1795);
                    v1781 += 32;
                    v1792 = (v1792 + v66);
                    v1790 = v1793;
                  }

                  while (v1781 != 512);
                  v1797 = 0;
                  v1798 = (v104 + v66 - v1782 + 8);
                  v1799 = (v1798 + v66 + v66);
                  v1800 = vzip1q_s8(*(v1799 + v66), v26);
                  v1801 = vzip1q_s8(*v1799, v26);
                  v1802 = vzip1q_s8(*(v1798 + v66), v26);
                  v1803 = vzip1q_s8(*v1798, v26);
                  v89 = vzip1q_s8(*(v104 - v1782 + 8), v26);
                  v1804 = (v54 + v1791 + v101 + v103 - v1782 + 8);
                  v113 = v2783;
                  v112 = v2784;
                  v114 = v2788;
                  do
                  {
                    a9 = v1803;
                    v1803 = v1802;
                    v1802 = v1801;
                    v1801 = v1800;
                    v1805 = &v2887.i8[v1797];
                    v1800 = vzip1q_s8(*v1804, v26);
                    v1806 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1803, v1802), 2uLL), vaddq_s16(a9, v1801));
                    a11 = vshlq_n_s16(v1806, 2uLL);
                    v1807 = vaddq_s16(vaddq_s16(v89, v1806), a11);
                    a10 = vaddq_s16(v1800, v27);
                    a10.n128_u64[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(v1807, a10), 5uLL));
                    a11.n128_u64[0] = v26.i64[0];
                    vst2_s8(v1805, a10);
                    v1797 += 32;
                    v1804 = (v1804 + v66);
                    v89 = a9;
                  }

                  while (v1797 != 512);
                  break;
                case 3:
                  v2029 = 0;
                  v2030 = 4 * v56;
                  v2031 = (v104 + v66 - v2030);
                  v2032 = (v2031 + v66);
                  v2033 = (v2032 + v66);
                  v2034 = vzip1q_s8(*(v2033 + v66), v26);
                  v2035 = vzip1q_s8(*v2033, v26);
                  v2036 = vzip1q_s8(*v2032, v26);
                  v2037 = vzip1q_s8(*v2031, v26);
                  v2038 = vzip1q_s8(*(v104 - v2030), v26);
                  v2039 = 5 * v66;
                  v2040 = (v54 + v2039 + v101 + v103 - v2030);
                  do
                  {
                    v2041 = v2037;
                    v2037 = v2036;
                    v2036 = v2035;
                    v2035 = v2034;
                    v2034 = vzip1q_s8(*v2040, v26);
                    v2042 = vsubq_s16(vshlq_n_s16(vaddq_s16(v2037, v2036), 2uLL), vaddq_s16(v2041, v2035));
                    *(&v2886 + v2029) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v2038, v2042), vshlq_n_s16(v2042, 2uLL)), vaddq_s16(v2034, v27)), 5uLL))), v2036);
                    v2029 += 32;
                    v2040 = (v2040 + v66);
                    v2038 = v2041;
                  }

                  while (v2029 != 512);
                  v2043 = 0;
                  v2044 = (v104 + v66 - v2030 + 8);
                  v2045 = (v2044 + v66 + v66);
                  v2046 = vzip1q_s8(*(v2045 + v66), v26);
                  v2047 = vzip1q_s8(*v2045, v26);
                  v2048 = vzip1q_s8(*(v2044 + v66), v26);
                  v2049 = vzip1q_s8(*v2044, v26);
                  v89 = vzip1q_s8(*(v104 - v2030 + 8), v26);
                  v2050 = (v54 + v2039 + v101 + v103 - v2030 + 8);
                  v113 = v2783;
                  v112 = v2784;
                  v114 = v2788;
                  do
                  {
                    a9 = v2049;
                    v2049 = v2048;
                    v2048 = v2047;
                    v2047 = v2046;
                    v2046 = vzip1q_s8(*v2050, v26);
                    v2051 = vsubq_s16(vshlq_n_s16(vaddq_s16(v2049, v2048), 2uLL), vaddq_s16(a9, v2047));
                    a11 = vshlq_n_s16(v2051, 2uLL);
                    v2052 = vaddq_s16(vaddq_s16(v89, v2051), a11);
                    a10 = vaddq_s16(v2046, v27);
                    *(&v2887 + v2043) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(v2052, a10), 5uLL))), v2048);
                    v2043 += 32;
                    v2050 = (v2050 + v66);
                    v89 = a9;
                  }

                  while (v2043 != 512);
                  break;
                case 4:
                  v1656 = 0;
                  v1657 = (v104 - 2);
                  do
                  {
                    v1658 = *v1657;
                    v1657 = (v1657 + v66);
                    v1659 = vzip1q_s8(vextq_s8(v1658, v1658, 2uLL), v26);
                    v1660 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1659, vzip1q_s8(vextq_s8(v1658, v1658, 3uLL), v26)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1658, v1658, 1uLL), v26), vzip1q_s8(vextq_s8(v1658, v1658, 4uLL), v26)));
                    *(&v2886 + v1656) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1660, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1658, v26), vzip1q_s8(vextq_s8(v1658, v1658, 5uLL), v26)), v1660)), v27), 5uLL))), v1659);
                    v1656 += 32;
                  }

                  while (v1656 != 512);
                  v1661 = 0;
                  v1662 = (v104 + 6);
                  v113 = v2783;
                  v112 = v2784;
                  v114 = v2788;
                  do
                  {
                    v1663 = *v1662;
                    v1662 = (v1662 + v66);
                    v1664 = vzip1q_s8(vextq_s8(v1663, v1663, 2uLL), v26);
                    v1665 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1664, vzip1q_s8(vextq_s8(v1663, v1663, 3uLL), v26)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1663, v1663, 1uLL), v26), vzip1q_s8(vextq_s8(v1663, v1663, 4uLL), v26)));
                    v89 = vzip1q_s8(v1663, v26);
                    *(&v2887 + v1661) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1665, 2uLL), vaddq_s16(vaddq_s16(v89, vzip1q_s8(vextq_s8(v1663, v1663, 5uLL), v26)), v1665)), v27), 5uLL))), v1664);
                    v1661 += 32;
                  }

                  while (v1661 != 512);
                  break;
                case 5:
                  v1888 = v54 + v103 + v101;
                  v1889 = 2 * v56;
                  v1890 = v107;
                  v1891 = 2;
                  goto LABEL_1076;
                case 6:
                  v1617 = v107;
                  v2863 = v11;
                  v2877 = v26;
                  v2819 = v95;
                  sub_27729B1B0(v2886.i8, 0x20u, v54 + v103 + v101, 2 * v56);
                  sub_27729B1B0(v2887.i8, 0x20u, v104 + 8, v66);
                  goto LABEL_1106;
                case 7:
                  v1888 = v54 + v103 + v101;
                  v1889 = 2 * v56;
                  v1890 = v107;
                  v1891 = 3;
LABEL_1076:
                  v2427 = 2;
                  goto LABEL_1099;
                case 8:
                  v2611 = 0;
                  v2612 = (v104 - 2);
                  do
                  {
                    v2613 = &v2886.i8[v2611];
                    v2614 = *v2612;
                    v2612 = (v2612 + v66);
                    v2615 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v2614, v2614, 2uLL), v26), vzip1q_s8(vextq_s8(v2614, v2614, 3uLL), v26)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v2614, v2614, 1uLL), v26), vzip1q_s8(vextq_s8(v2614, v2614, 4uLL), v26)));
                    *v2614.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v2615, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v2614, v26), vzip1q_s8(vextq_s8(v2614, v2614, 5uLL), v26)), v2615)), v27), 5uLL));
                    v2615.i64[0] = v26.i64[0];
                    vst2_s8(v2613, v2614);
                    v2611 += 32;
                  }

                  while (v2611 != 512);
                  v2616 = 0;
                  v2617 = (v104 + 6);
                  v113 = v2783;
                  v112 = v2784;
                  v114 = v2788;
                  do
                  {
                    v2618 = &v2887.i8[v2616];
                    v2619 = *v2617;
                    v2617 = (v2617 + v66);
                    v2620 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v2619, v2619, 2uLL), v26), vzip1q_s8(vextq_s8(v2619, v2619, 3uLL), v26)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v2619, v2619, 1uLL), v26), vzip1q_s8(vextq_s8(v2619, v2619, 4uLL), v26)));
                    *v2619.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v2620, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v2619, v26), vzip1q_s8(vextq_s8(v2619, v2619, 5uLL), v26)), v2620)), v27), 5uLL));
                    v2620.i64[0] = v26.i64[0];
                    vst2_s8(v2618, v2619);
                    v2616 += 32;
                  }

                  while (v2616 != 512);
                  break;
                case 9:
                  v1617 = v107;
                  v2863 = v11;
                  v2877 = v26;
                  v2819 = v95;
                  sub_27729B614(v2886.i8, 0x20u, v54 + v103 + v101, 2 * v56, 16);
                  sub_27729B614(v2887.i8, 0x20u, v104 + 8, v66, 16);
                  goto LABEL_1106;
                case 10:
                  v1617 = v107;
                  v2863 = v11;
                  v2877 = v26;
                  v2819 = v95;
                  sub_27729B7DC(&v2886, 32, v54 + v103 + v101, 2 * v56, 16);
                  sub_27729B7DC(&v2887, 32, v104 + 8, v66, 16);
                  goto LABEL_1106;
                case 11:
                  v1617 = v107;
                  v2863 = v11;
                  v2877 = v26;
                  v2819 = v95;
                  sub_27729B98C(v2886.i8, 0x20u, v54 + v103 + v101, 2 * v56, 16);
                  sub_27729B98C(v2887.i8, 0x20u, v104 + 8, v66, 16);
                  goto LABEL_1106;
                case 12:
                  v1698 = 0;
                  v1699 = (v104 - 2);
                  do
                  {
                    v1700 = *v1699;
                    v1699 = (v1699 + v66);
                    v1701 = vzip1q_s8(vextq_s8(v1700, v1700, 3uLL), v26);
                    v1702 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1700, v1700, 2uLL), v26), v1701), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1700, v1700, 1uLL), v26), vzip1q_s8(vextq_s8(v1700, v1700, 4uLL), v26)));
                    *(&v2886 + v1698) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1702, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1700, v26), vzip1q_s8(vextq_s8(v1700, v1700, 5uLL), v26)), v1702)), v27), 5uLL))), v1701);
                    v1698 += 32;
                  }

                  while (v1698 != 512);
                  v1703 = 0;
                  v1704 = (v104 + 6);
                  v113 = v2783;
                  v112 = v2784;
                  v114 = v2788;
                  do
                  {
                    v1705 = *v1704;
                    v1704 = (v1704 + v66);
                    v1706 = vzip1q_s8(vextq_s8(v1705, v1705, 3uLL), v26);
                    v1707 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1705, v1705, 2uLL), v26), v1706), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1705, v1705, 1uLL), v26), vzip1q_s8(vextq_s8(v1705, v1705, 4uLL), v26)));
                    v89 = vzip1q_s8(v1705, v26);
                    *(&v2887 + v1703) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1707, 2uLL), vaddq_s16(vaddq_s16(v89, vzip1q_s8(vextq_s8(v1705, v1705, 5uLL), v26)), v1707)), v27), 5uLL))), v1706);
                    v1703 += 32;
                  }

                  while (v1703 != 512);
                  break;
                case 13:
                  v1888 = v54 + v103 + v101;
                  v1889 = 2 * v56;
                  v1890 = v107;
                  v1891 = 2;
                  goto LABEL_1098;
                case 14:
                  v1617 = v107;
                  v2863 = v11;
                  v2877 = v26;
                  v2819 = v95;
                  sub_27729BBEC(v2886.i8, 0x20u, v54 + v103 + v101, 2 * v56);
                  sub_27729BBEC(v2887.i8, 0x20u, v104 + 8, v66);
LABEL_1106:
                  v107 = v1617;
                  goto LABEL_1107;
                case 15:
                  v1888 = v54 + v103 + v101;
                  v1889 = 2 * v56;
                  v1890 = v107;
                  v1891 = 3;
LABEL_1098:
                  v2427 = 3;
LABEL_1099:
                  v2863 = v11;
                  v2877 = v26;
                  v2819 = v95;
                  sub_27729AF04(v2886.i8, v1888, v1889, 16, v1891, v2427);
                  v107 = v1890;
LABEL_1107:
                  v95 = v2819;
                  v96 = 2 * v57;
                  v28.i64[0] = 0x20002000200020;
                  v28.i64[1] = 0x20002000200020;
                  v27.i64[0] = 0x10001000100010;
                  v27.i64[1] = 0x10001000100010;
                  v11 = v2863;
                  v26 = v2877;
                  v20 = a3;
                  v113 = v2783;
                  v112 = v2784;
                  v114 = v2788;
                  break;
                default:
                  v111 = 0;
                  v113 = v2783;
                  v112 = v2784;
                  v114 = v2788;
                  do
                  {
                    v115 = &v2886.i8[v111];
                    v116 = *v104;
                    v104 = (v104 + v66);
                    v117 = v26.i64[0];
                    vst2_s8(v115, v116);
                    v115 += 16;
                    *v115 = vzip2q_s8(v116, v26);
                    v111 += 32;
                  }

                  while (v111 != 512);
                  break;
              }

              v2465 = 0;
              v2466 = v2794;
              v2467 = v21;
              v23 = v2880;
              do
              {
                v2469 = *(&v2886 + v2465);
                v2468 = *(&v2886 + v2465 + 16);
                v2471 = *(&v2888 + v2465);
                v2470 = v2889[v2465 / 0x10];
                if (v21)
                {
                  v89 = *v2467;
                  a9 = *(v2467 + 16);
                  a10 = *(v2467 + 32);
                  a11 = *(v2467 + 48);
                  v2467 += 64;
                  v2469 = vaddq_s16(v89, v2469);
                  v2468 = vaddq_s16(a9, v2468);
                  v2471 = vaddq_s16(a10, v2471);
                  v2470 = vaddq_s16(a11, v2470);
                }

                *v2466 = vqmovun_high_s16(vqmovun_s16(v2469), v2468);
                *(v2466 + v112) = vqmovun_high_s16(vqmovun_s16(v2471), v2470);
                v2466 = (v2466 + v114);
                v2465 += 64;
              }

              while (v2465 != 512);
              if (v65 == 64)
              {
                __asm { PRFM            #0, [X19] }

                v2495 = 9;
                v2474 = v2894;
                do
                {
                  v2496 = _X19;
                  _X19 = (_X19 + v96);
                  __asm { PRFM            #0, [X19] }

                  v2498 = vextq_s8(*v2496, *v2496, 2uLL);
                  v2498.i16[7] = v2496[1].i16[0];
                  v2499 = vrhaddq_u8(*v2496, v2498);
                  v2498.i64[0] = v26.i64[0];
                  v2474[3] = vzip2q_s8(v2499, v26);
                  v2474 += 2;
                  vst2_s8(v2474->i8, *(&v2498 - 8));
                  --v2495;
                }

                while (v2495 > 2);
                v2500 = vextq_s8(*_X19, *_X19, 2uLL);
                v2500.i16[7] = _X19[1].i16[0];
                v2493 = vrhaddq_u8(*_X19, v2500);
              }

              else
              {
                if (v65 != 4)
                {
                  if (v65)
                  {
                    v2503 = 0;
                    v2504 = v2821 - (8 * v2827 + 8 * v64) + 64;
                    v2505 = v26;
                    v2505.i32[0] = v2504 | (v2504 << 16);
                    v2506 = vqtbl1q_s8(v2505, xmmword_2773B3DF0);
                    v2507 = v26;
                    v2507.i32[0] = (8 * v2827 - v2821) | ((8 * v2827 - v2821) << 16);
                    v2508 = vqtbl1q_s8(v2507, xmmword_2773B3DF0);
                    v2509 = v26;
                    v2509.i32[0] = (8 * v64 - v2821) | ((8 * v64 - v2821) << 16);
                    v2510 = vqtbl1q_s8(v2509, xmmword_2773B3DF0);
                    v2904 = v2506;
                    v2905 = v2508;
                    v2906 = v2510;
                    v2907 = v95;
                    _X10 = &_X19->i8[v96];
                    __asm { PRFM            #0, [X10] }

                    v89.i64[0] = _X19->i64[0];
                    v2513 = vqtbl1q_s8(v89, xmmword_2773B3E00);
                    v2513.i16[3] = _X19->i16[4];
                    v2514 = vzip1q_s8(v2513, v26);
                    v2515 = vzip1q_s8(v89, v26);
                    v2516 = (v2833 + v107 + v109 + v96 + 8);
                    _X13 = v2833 + v107 + v109 + 2 * v96;
                    do
                    {
                      __asm { PRFM            #0, [X13] }

                      v2519 = vmlaq_s16(vmulq_s16(v2508, v2514), v2506, v2515);
                      v2514.i64[0] = *(v2516 - 1);
                      v2515 = vzip1q_s8(v2514, v26);
                      v2520 = vqtbl1q_s8(v2514, xmmword_2773B3E00);
                      v2520.i16[3] = *v2516;
                      v2516 = (v2516 + v96);
                      v2514 = vzip1q_s8(v2520, v26);
                      *(&v2895 + v2503) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v2519, v2510, v2515), v95, v2514), v28), 6uLL);
                      v2503 += 32;
                      _X13 += v96;
                    }

                    while (v2503 != 256);
                    v2521 = 0;
                    _X10 = &_X19->i64[1] + v96;
                    __asm { PRFM            #0, [X10] }

                    v2515.i64[0] = _X19->i64[1];
                    v2524 = vqtbl1q_s8(v2515, xmmword_2773B3E00);
                    v2524.i16[3] = _X19[1].i16[0];
                    a9 = vzip1q_s8(v2524, v26);
                    v2525 = vzip1q_s8(v2515, v26);
                    v2526 = v2833 + v107 + v109;
                    v19 = v2850;
                    do
                    {
                      _X11 = v2526 + 2 * v96 + 8;
                      v2526 += v96;
                      __asm { PRFM            #0, [X11] }

                      v2529 = vmlaq_s16(vmulq_s16(v2508, a9), v2506, v2525);
                      a9.n128_u64[0] = *(v2526 + 8);
                      v2525 = vzip1q_s8(a9, v26);
                      v2530 = vqtbl1q_s8(a9, xmmword_2773B3E00);
                      v2530.i16[3] = *(v2526 + 16);
                      a9 = vzip1q_s8(v2530, v26);
                      a10 = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v2529, v2510, v2525), v95, a9), v28), 6uLL);
                      *(&v2896 + v2521) = a10;
                      v2521 += 32;
                    }

                    while (v2521 != 256);
                  }

                  else
                  {
                    __asm { PRFM            #0, [X19] }

                    v2473 = 9;
                    v2474 = v2894;
                    do
                    {
                      v2475 = _X19;
                      _X19 = (_X19 + v96);
                      __asm { PRFM            #0, [X19] }

                      v2477 = *v2475;
                      v2474[3] = vzip2q_s8(*v2475, v26);
                      v2474 += 2;
                      v2478 = v26.i64[0];
                      vst2_s8(v2474->i8, v2477);
                      --v2473;
                    }

                    while (v2473 > 2);
                    v2479 = *_X19;
                    v2480 = vzip2q_s8(*_X19, v26);
                    i8 = v2474[2].i8;
                    v2482 = v26.i64[0];
                    vst2_s8(i8, v2479);
LABEL_1125:
                    v19 = v2850;
                    v2474[3] = v2480;
                  }

                  v2531 = 0;
                  v2532 = v2793;
                  v2533 = v20;
                  do
                  {
                    v2535 = *(&v2895 + v2531);
                    v2534 = *(&v2895 + v2531 + 16);
                    v2537 = *(&v2897 + v2531);
                    v2536 = v2898[v2531 / 0x10];
                    if (v20)
                    {
                      v2538 = *v2533;
                      a9 = *(v2533 + 16);
                      a10 = *(v2533 + 32);
                      a11 = *(v2533 + 48);
                      v2533 += 64;
                      v2535 = vaddq_s16(v2538, v2535);
                      v2534 = vaddq_s16(a9, v2534);
                      v2537 = vaddq_s16(a10, v2537);
                      v2536 = vaddq_s16(a11, v2536);
                    }

                    *v2532 = vqmovun_high_s16(vqmovun_s16(v2535), v2534);
                    *(v2532 + v113) = vqmovun_high_s16(vqmovun_s16(v2537), v2536);
                    v2532 = (v2532 + v2775);
                    v2531 += 64;
                  }

                  while (v2531 != 256);
                  goto LABEL_352;
                }

                _X8 = &_X19->i8[v96];
                __asm { PRFM            #0, [X8] }

                v2485 = *_X19;
                v2486 = (v2833 + v107 + v109);
                v2487 = 9;
                v2474 = v2894;
                do
                {
                  _X13 = &v2486->i8[2 * v96];
                  v2486 = (v2486 + v96);
                  __asm { PRFM            #0, [X13] }

                  v2490 = *v2486;
                  v2491 = vrhaddq_u8(v2485, *v2486);
                  v2492 = v26.i64[0];
                  v2474[3] = vzip2q_s8(v2491, v26);
                  v2474 += 2;
                  vst2_s8(v2474->i8, v2491);
                  --v2487;
                  v2485 = v2490;
                }

                while (v2487 > 2);
                v2493 = vrhaddq_u8(v2490, *(v2486 + v96));
              }

              v2501 = v2474[2].i8;
              v2502 = v26.i64[0];
              vst2_s8(v2501, v2493);
              v2480 = vzip2q_s8(v2493, v26);
              goto LABEL_1125;
            }

            v280 = v2792 + v37 + (v60 >> 2);
            if (v98 <= -18)
            {
              v98 = -18;
            }

            if (v280 <= -18)
            {
              v280 = -18;
            }

            if (v98 >= v68 + 1)
            {
              v281 = v68 + 1;
            }

            else
            {
              v281 = v98;
            }

            if (v280 >= v70 + 1)
            {
              v282 = v70 + 1;
            }

            else
            {
              v282 = v280;
            }

            v283 = (v54 + v281 + v282 * v66);
            v284 = (v97 & 0xFFFFFFFE) + v2791;
            v285 = (v63 >> 3) + ((v2792 + v37) >> 1);
            if (v284 <= -16)
            {
              v284 = -16;
            }

            if (v285 <= -8)
            {
              v285 = -8;
            }

            if (v284 >= v69 - 2)
            {
              v284 = v69 - 2;
            }

            if (v285 >= v71)
            {
              v285 = v71 - 1;
            }

            v286 = v284;
            v287 = v285 * v2848;
            _X19 = (v55 + v284 + v287);
            v289 = (v2794 + (v2784 * v37));
            v290 = v21 + 32 * v37;
            v291 = (v2793 + (v37 >> 1) * v2783);
            v292 = v20 + 32 * (v37 >> 1);
            switch(v61)
            {
              case 1:
                v2119 = 0;
                v2120 = (v283 - 4 * v56);
                v2121 = (v2120 + v66);
                v2122 = (v2121 + v66);
                v2123 = (v2122 + v66);
                v2124 = vzip1q_s8(*(v2123 + v66), v26);
                v2125 = vzip1q_s8(*v2123, v26);
                v2126 = vzip1q_s8(*v2122, v26);
                v2127 = vzip1q_s8(*v2121, v26);
                v2128 = vzip1q_s8(*v2120, v26);
                v2129 = 5 * v66;
                v2130 = (v54 + v2129 + v281 + 2 * v56 * v282 - 4 * v56);
                do
                {
                  v2131 = v2127;
                  v2127 = v2126;
                  v2126 = v2125;
                  v2125 = v2124;
                  v2124 = vzip1q_s8(*v2130, v26);
                  v2132 = vsubq_s16(vshlq_n_s16(vaddq_s16(v2127, v2126), 2uLL), vaddq_s16(v2131, v2125));
                  *(&v2886 + v2119) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v2128, v2132), vshlq_n_s16(v2132, 2uLL)), vaddq_s16(v2124, v27)), 5uLL))), v2127);
                  v2119 += 32;
                  v2130 = (v2130 + v66);
                  v2128 = v2131;
                }

                while (v2119 != 256);
                v2133 = 0;
                v2134 = v283 - 4 * v56;
                v2135 = *(v2134 + 8);
                v2136 = &v2134[v66 + 8];
                v2137 = (v2136 + v66 + v66);
                v2138 = vzip1q_s8(*(v2137 + v66), v26);
                v2139 = vzip1q_s8(*v2137, v26);
                v2140 = vzip1q_s8(*(v2136 + v66), v26);
                v2141 = vzip1q_s8(*v2136, v26);
                v89 = vzip1q_s8(v2135, v26);
                v2142 = (v54 + v2129 + v281 + 2 * v56 * v282 - 4 * v56 + 8);
                v295 = v2783;
                v294 = v2784;
                v296 = v2788;
                do
                {
                  a9 = v2141;
                  v2141 = v2140;
                  v2140 = v2139;
                  v2139 = v2138;
                  v2138 = vzip1q_s8(*v2142, v26);
                  v2143 = vsubq_s16(vshlq_n_s16(vaddq_s16(v2141, v2140), 2uLL), vaddq_s16(a9, v2139));
                  a11 = vshlq_n_s16(v2143, 2uLL);
                  v2144 = vaddq_s16(vaddq_s16(v89, v2143), a11);
                  a10 = vaddq_s16(v2138, v27);
                  *(&v2887 + v2133) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(v2144, a10), 5uLL))), v2141);
                  v2133 += 32;
                  v2142 = (v2142 + v66);
                  v89 = a9;
                }

                while (v2133 != 256);
                break;
              case 2:
                v1829 = 0;
                v1830 = (v283 - 4 * v56);
                v1831 = (v1830 + v66);
                v1832 = (v1831 + v66);
                v1833 = (v1832 + v66);
                v1834 = vzip1q_s8(*(v1833 + v66), v26);
                v1835 = vzip1q_s8(*v1833, v26);
                v1836 = vzip1q_s8(*v1832, v26);
                v1837 = vzip1q_s8(*v1831, v26);
                v1838 = vzip1q_s8(*v1830, v26);
                v1839 = 5 * v66;
                v1840 = (v54 + v1839 + v281 + 2 * v56 * v282 - 4 * v56);
                do
                {
                  v1841 = v1837;
                  v1837 = v1836;
                  v1836 = v1835;
                  v1835 = v1834;
                  v1842 = &v2886.i8[v1829];
                  v1834 = vzip1q_s8(*v1840, v26);
                  v1843 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1837, v1836), 2uLL), vaddq_s16(v1841, v1835));
                  v1843.val[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1838, v1843), vshlq_n_s16(v1843, 2uLL)), vaddq_s16(v1834, v27)), 5uLL));
                  v1844 = v26.i64[0];
                  vst2_s8(v1842, v1843);
                  v1829 += 32;
                  v1840 = (v1840 + v66);
                  v1838 = v1841;
                }

                while (v1829 != 256);
                v1845 = 0;
                v1846 = v283 - 4 * v56;
                v1847 = *(v1846 + 8);
                v1848 = &v1846[v66 + 8];
                v1849 = (v1848 + v66 + v66);
                v1850 = vzip1q_s8(*(v1849 + v66), v26);
                v1851 = vzip1q_s8(*v1849, v26);
                v1852 = vzip1q_s8(*(v1848 + v66), v26);
                v1853 = vzip1q_s8(*v1848, v26);
                v89 = vzip1q_s8(v1847, v26);
                v1854 = (v54 + v1839 + v281 + 2 * v56 * v282 - 4 * v56 + 8);
                v295 = v2783;
                v294 = v2784;
                v296 = v2788;
                do
                {
                  a9 = v1853;
                  v1853 = v1852;
                  v1852 = v1851;
                  v1851 = v1850;
                  v1855 = &v2887.i8[v1845];
                  v1850 = vzip1q_s8(*v1854, v26);
                  v1856 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1853, v1852), 2uLL), vaddq_s16(a9, v1851));
                  a11 = vshlq_n_s16(v1856, 2uLL);
                  v1857 = vaddq_s16(vaddq_s16(v89, v1856), a11);
                  a10 = vaddq_s16(v1850, v27);
                  a10.n128_u64[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(v1857, a10), 5uLL));
                  a11.n128_u64[0] = v26.i64[0];
                  vst2_s8(v1855, a10);
                  v1845 += 32;
                  v1854 = (v1854 + v66);
                  v89 = a9;
                }

                while (v1845 != 256);
                break;
              case 3:
                v2061 = 0;
                v2062 = (v283 - 4 * v56);
                v2063 = (v2062 + v66);
                v2064 = (v2063 + v66);
                v2065 = (v2064 + v66);
                v2066 = vzip1q_s8(*(v2065 + v66), v26);
                v2067 = vzip1q_s8(*v2065, v26);
                v2068 = vzip1q_s8(*v2064, v26);
                v2069 = vzip1q_s8(*v2063, v26);
                v2070 = vzip1q_s8(*v2062, v26);
                v2071 = 5 * v66;
                v2072 = (v54 + v2071 + v281 + 2 * v56 * v282 - 4 * v56);
                do
                {
                  v2073 = v2069;
                  v2069 = v2068;
                  v2068 = v2067;
                  v2067 = v2066;
                  v2066 = vzip1q_s8(*v2072, v26);
                  v2074 = vsubq_s16(vshlq_n_s16(vaddq_s16(v2069, v2068), 2uLL), vaddq_s16(v2073, v2067));
                  *(&v2886 + v2061) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v2070, v2074), vshlq_n_s16(v2074, 2uLL)), vaddq_s16(v2066, v27)), 5uLL))), v2068);
                  v2061 += 32;
                  v2072 = (v2072 + v66);
                  v2070 = v2073;
                }

                while (v2061 != 256);
                v2075 = 0;
                v2076 = v283 - 4 * v56;
                v2077 = *(v2076 + 8);
                v2078 = &v2076[v66 + 8];
                v2079 = (v2078 + v66 + v66);
                v2080 = vzip1q_s8(*(v2079 + v66), v26);
                v2081 = vzip1q_s8(*v2079, v26);
                v2082 = vzip1q_s8(*(v2078 + v66), v26);
                v2083 = vzip1q_s8(*v2078, v26);
                v89 = vzip1q_s8(v2077, v26);
                v2084 = (v54 + v2071 + v281 + 2 * v56 * v282 - 4 * v56 + 8);
                v295 = v2783;
                v294 = v2784;
                v296 = v2788;
                do
                {
                  a9 = v2083;
                  v2083 = v2082;
                  v2082 = v2081;
                  v2081 = v2080;
                  v2080 = vzip1q_s8(*v2084, v26);
                  v2085 = vsubq_s16(vshlq_n_s16(vaddq_s16(v2083, v2082), 2uLL), vaddq_s16(a9, v2081));
                  a11 = vshlq_n_s16(v2085, 2uLL);
                  v2086 = vaddq_s16(vaddq_s16(v89, v2085), a11);
                  a10 = vaddq_s16(v2080, v27);
                  *(&v2887 + v2075) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(v2086, a10), 5uLL))), v2082);
                  v2075 += 32;
                  v2084 = (v2084 + v66);
                  v89 = a9;
                }

                while (v2075 != 256);
                break;
              case 4:
                v1688 = 0;
                v1689 = (v283 - 2);
                do
                {
                  v1690 = *v1689;
                  v1689 = (v1689 + v66);
                  v1691 = vzip1q_s8(vextq_s8(v1690, v1690, 2uLL), v26);
                  v1692 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1691, vzip1q_s8(vextq_s8(v1690, v1690, 3uLL), v26)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1690, v1690, 1uLL), v26), vzip1q_s8(vextq_s8(v1690, v1690, 4uLL), v26)));
                  *(&v2886 + v1688) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1692, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1690, v26), vzip1q_s8(vextq_s8(v1690, v1690, 5uLL), v26)), v1692)), v27), 5uLL))), v1691);
                  v1688 += 32;
                }

                while (v1688 != 256);
                v1693 = 0;
                v1694 = (v283 + 6);
                v295 = v2783;
                v294 = v2784;
                v296 = v2788;
                do
                {
                  v1695 = *v1694;
                  v1694 = (v1694 + v66);
                  v1696 = vzip1q_s8(vextq_s8(v1695, v1695, 2uLL), v26);
                  v1697 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1696, vzip1q_s8(vextq_s8(v1695, v1695, 3uLL), v26)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1695, v1695, 1uLL), v26), vzip1q_s8(vextq_s8(v1695, v1695, 4uLL), v26)));
                  v89 = vzip1q_s8(v1695, v26);
                  *(&v2887 + v1693) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1697, 2uLL), vaddq_s16(vaddq_s16(v89, vzip1q_s8(vextq_s8(v1695, v1695, 5uLL), v26)), v1697)), v27), 5uLL))), v1696);
                  v1693 += 32;
                }

                while (v1693 != 256);
                break;
              case 5:
                v1960 = v54 + v281 + v282 * v66;
                v1961 = 2 * v56;
                v1962 = v284;
                v1963 = 2;
                goto LABEL_1078;
              case 6:
                v2864 = v11;
                v2878 = v26;
                v2820 = v95;
                v2802 = v285 * v2848;
                v2805 = v284;
                sub_27729BFC4(v2886.i8, 0x20u, v54 + v281 + v282 * v66, 2 * v56);
                sub_27729BFC4(v2887.i8, 0x20u, v283 + 8, v66);
                goto LABEL_1136;
              case 7:
                v1960 = v54 + v281 + v282 * v66;
                v1961 = 2 * v56;
                v1962 = v284;
                v1963 = 3;
LABEL_1078:
                v2428 = 2;
                goto LABEL_1102;
              case 8:
                v2621 = 0;
                v2622 = (v283 - 2);
                do
                {
                  v2623 = &v2886.i8[v2621];
                  v2624 = *v2622;
                  v2622 = (v2622 + v66);
                  v2625 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v2624, v2624, 2uLL), v26), vzip1q_s8(vextq_s8(v2624, v2624, 3uLL), v26)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v2624, v2624, 1uLL), v26), vzip1q_s8(vextq_s8(v2624, v2624, 4uLL), v26)));
                  *v2624.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v2625, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v2624, v26), vzip1q_s8(vextq_s8(v2624, v2624, 5uLL), v26)), v2625)), v27), 5uLL));
                  v2625.i64[0] = v26.i64[0];
                  vst2_s8(v2623, v2624);
                  v2621 += 32;
                }

                while (v2621 != 256);
                v2626 = 0;
                v2627 = (v283 + 6);
                v295 = v2783;
                v294 = v2784;
                v296 = v2788;
                do
                {
                  v2628 = &v2887.i8[v2626];
                  v2629 = *v2627;
                  v2627 = (v2627 + v66);
                  v2630 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v2629, v2629, 2uLL), v26), vzip1q_s8(vextq_s8(v2629, v2629, 3uLL), v26)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v2629, v2629, 1uLL), v26), vzip1q_s8(vextq_s8(v2629, v2629, 4uLL), v26)));
                  *v2629.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v2630, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v2629, v26), vzip1q_s8(vextq_s8(v2629, v2629, 5uLL), v26)), v2630)), v27), 5uLL));
                  v2630.i64[0] = v26.i64[0];
                  vst2_s8(v2628, v2629);
                  v2626 += 32;
                }

                while (v2626 != 256);
                break;
              case 9:
                v2805 = v284;
                v2864 = v11;
                v2878 = v26;
                v2820 = v95;
                v2802 = v285 * v2848;
                sub_27729B614(v2886.i8, 0x20u, v54 + v281 + v282 * v66, 2 * v56, 8);
                sub_27729B614(v2887.i8, 0x20u, v283 + 8, v66, 8);
                goto LABEL_1136;
              case 10:
                v2805 = v284;
                v2864 = v11;
                v2878 = v26;
                v2820 = v95;
                v2802 = v285 * v2848;
                sub_27729B7DC(&v2886, 32, v54 + v281 + v282 * v66, 2 * v56, 8);
                sub_27729B7DC(&v2887, 32, v283 + 8, v66, 8);
                goto LABEL_1136;
              case 11:
                v2805 = v284;
                v2864 = v11;
                v2878 = v26;
                v2820 = v95;
                v2802 = v285 * v2848;
                sub_27729B98C(v2886.i8, 0x20u, v54 + v281 + v282 * v66, 2 * v56, 8);
                sub_27729B98C(v2887.i8, 0x20u, v283 + 8, v66, 8);
                goto LABEL_1136;
              case 12:
                v1708 = 0;
                v1709 = (v283 - 2);
                do
                {
                  v1710 = *v1709;
                  v1709 = (v1709 + v66);
                  v1711 = vzip1q_s8(vextq_s8(v1710, v1710, 3uLL), v26);
                  v1712 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1710, v1710, 2uLL), v26), v1711), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1710, v1710, 1uLL), v26), vzip1q_s8(vextq_s8(v1710, v1710, 4uLL), v26)));
                  *(&v2886 + v1708) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1712, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1710, v26), vzip1q_s8(vextq_s8(v1710, v1710, 5uLL), v26)), v1712)), v27), 5uLL))), v1711);
                  v1708 += 32;
                }

                while (v1708 != 256);
                v1713 = 0;
                v1714 = (v283 + 6);
                v295 = v2783;
                v294 = v2784;
                v296 = v2788;
                do
                {
                  v1715 = *v1714;
                  v1714 = (v1714 + v66);
                  v1716 = vzip1q_s8(vextq_s8(v1715, v1715, 3uLL), v26);
                  v1717 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1715, v1715, 2uLL), v26), v1716), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1715, v1715, 1uLL), v26), vzip1q_s8(vextq_s8(v1715, v1715, 4uLL), v26)));
                  v89 = vzip1q_s8(v1715, v26);
                  *(&v2887 + v1713) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1717, 2uLL), vaddq_s16(vaddq_s16(v89, vzip1q_s8(vextq_s8(v1715, v1715, 5uLL), v26)), v1717)), v27), 5uLL))), v1716);
                  v1713 += 32;
                }

                while (v1713 != 256);
                break;
              case 13:
                v1960 = v54 + v281 + v282 * v66;
                v1961 = 2 * v56;
                v1962 = v284;
                v1963 = 2;
                goto LABEL_1101;
              case 14:
                v2864 = v11;
                v2878 = v26;
                v2820 = v95;
                v2802 = v285 * v2848;
                v2805 = v284;
                sub_27729C39C(v2886.i8, 0x20u, v54 + v281 + v282 * v66, 2 * v56);
                sub_27729C39C(v2887.i8, 0x20u, v283 + 8, v66);
LABEL_1136:
                v287 = v2802;
                v286 = v2805;
                goto LABEL_1137;
              case 15:
                v1960 = v54 + v281 + v282 * v66;
                v1961 = 2 * v56;
                v1962 = v284;
                v1963 = 3;
LABEL_1101:
                v2428 = 3;
LABEL_1102:
                v2864 = v11;
                v2878 = v26;
                v2820 = v95;
                v2464 = v285 * v2848;
                sub_27729AF04(v2886.i8, v1960, v1961, 8, v1963, v2428);
                v287 = v2464;
                v286 = v1962;
LABEL_1137:
                v95 = v2820;
                v96 = v2848;
                v28.i64[0] = 0x20002000200020;
                v28.i64[1] = 0x20002000200020;
                v27.i64[0] = 0x10001000100010;
                v27.i64[1] = 0x10001000100010;
                v11 = v2864;
                v26 = v2878;
                v20 = a3;
                v295 = v2783;
                v294 = v2784;
                v296 = v2788;
                break;
              default:
                v293 = 0;
                v295 = v2783;
                v294 = v2784;
                v296 = v2788;
                do
                {
                  v297 = &v2886.i8[v293];
                  v298 = *v283;
                  v283 = (v283 + v66);
                  v299 = v26.i64[0];
                  vst2_s8(v297, v298);
                  v297 += 16;
                  *v297 = vzip2q_s8(v298, v26);
                  v293 += 32;
                }

                while (v293 != 256);
                break;
            }

            v2539 = 0;
            v23 = v2880;
            do
            {
              v2541 = *(&v2886 + v2539);
              v2540 = *(&v2886 + v2539 + 16);
              v2543 = *(&v2888 + v2539);
              v2542 = v2889[v2539 / 0x10];
              if (v21)
              {
                v89 = *v290;
                a9 = *(v290 + 16);
                a10 = *(v290 + 32);
                a11 = *(v290 + 48);
                v290 += 64;
                v2541 = vaddq_s16(v89, v2541);
                v2540 = vaddq_s16(a9, v2540);
                v2543 = vaddq_s16(a10, v2543);
                v2542 = vaddq_s16(a11, v2542);
              }

              *v289 = vqmovun_high_s16(vqmovun_s16(v2541), v2540);
              *(v289 + v294) = vqmovun_high_s16(vqmovun_s16(v2543), v2542);
              v289 = (v289 + v296);
              v2539 += 64;
            }

            while (v2539 != 256);
            if (v65 == 64)
            {
              __asm { PRFM            #0, [X19] }

              v2567 = 5;
              v2546 = v2894;
              v22 = a1;
              do
              {
                v2568 = _X19;
                _X19 = (_X19 + v96);
                __asm { PRFM            #0, [X19] }

                v2570 = vextq_s8(*v2568, *v2568, 2uLL);
                v2570.i16[7] = v2568[1].i16[0];
                v2571 = vrhaddq_u8(*v2568, v2570);
                v2570.i64[0] = v26.i64[0];
                v2546[3] = vzip2q_s8(v2571, v26);
                v2546 += 2;
                vst2_s8(v2546->i8, *(&v2570 - 8));
                --v2567;
              }

              while (v2567 > 2);
              v2572 = vextq_s8(*_X19, *_X19, 2uLL);
              v2572.i16[7] = _X19[1].i16[0];
              v2565 = vrhaddq_u8(*_X19, v2572);
            }

            else
            {
              v22 = a1;
              if (v65 != 4)
              {
                if (v65)
                {
                  v2575 = 0;
                  v2576 = v2821 - (8 * v2827 + 8 * v64) + 64;
                  v2577 = v26;
                  v2577.i32[0] = v2576 | (v2576 << 16);
                  v2578 = vqtbl1q_s8(v2577, xmmword_2773B3DF0);
                  v2579 = v26;
                  v2579.i32[0] = (8 * v2827 - v2821) | ((8 * v2827 - v2821) << 16);
                  v2580 = vqtbl1q_s8(v2579, xmmword_2773B3DF0);
                  v2581 = v26;
                  v2581.i32[0] = (8 * v64 - v2821) | ((8 * v64 - v2821) << 16);
                  v2582 = vqtbl1q_s8(v2581, xmmword_2773B3DF0);
                  v2904 = v2578;
                  v2905 = v2580;
                  v2906 = v2582;
                  v2907 = v95;
                  _X10 = &_X19->i8[v96];
                  __asm { PRFM            #0, [X10] }

                  v89.i64[0] = _X19->i64[0];
                  v2585 = vqtbl1q_s8(v89, xmmword_2773B3E00);
                  v2585.i16[3] = _X19->i16[4];
                  v2586 = vzip1q_s8(v2585, v26);
                  v2587 = vzip1q_s8(v89, v26);
                  v2588 = (v2833 + v286 + v287 + v96 + 8);
                  _X13 = v2833 + v286 + v287 + 2 * v96;
                  do
                  {
                    __asm { PRFM            #0, [X13] }

                    v2591 = vmlaq_s16(vmulq_s16(v2580, v2586), v2578, v2587);
                    v2586.i64[0] = *(v2588 - 1);
                    v2587 = vzip1q_s8(v2586, v26);
                    v2592 = vqtbl1q_s8(v2586, xmmword_2773B3E00);
                    v2592.i16[3] = *v2588;
                    v2588 = (v2588 + v96);
                    v2586 = vzip1q_s8(v2592, v26);
                    *(&v2895 + v2575) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v2591, v2582, v2587), v95, v2586), v28), 6uLL);
                    v2575 += 32;
                    _X13 += v96;
                  }

                  while (v2575 != 128);
                  v2593 = 0;
                  _X10 = &_X19->i64[1] + v96;
                  __asm { PRFM            #0, [X10] }

                  v2587.i64[0] = _X19->i64[1];
                  v2596 = vqtbl1q_s8(v2587, xmmword_2773B3E00);
                  v2596.i16[3] = _X19[1].i16[0];
                  a9 = vzip1q_s8(v2596, v26);
                  v2597 = vzip1q_s8(v2587, v26);
                  v2598 = v2833 + v286 + v287;
                  do
                  {
                    _X11 = v2598 + 2 * v96 + 8;
                    v2598 += v96;
                    __asm { PRFM            #0, [X11] }

                    v2601 = vmlaq_s16(vmulq_s16(v2580, a9), v2578, v2597);
                    a9.n128_u64[0] = *(v2598 + 8);
                    v2597 = vzip1q_s8(a9, v26);
                    v2602 = vqtbl1q_s8(a9, xmmword_2773B3E00);
                    v2602.i16[3] = *(v2598 + 16);
                    a9 = vzip1q_s8(v2602, v26);
                    a10 = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v2601, v2582, v2597), v95, a9), v28), 6uLL);
                    *(&v2896 + v2593) = a10;
                    v2593 += 32;
                  }

                  while (v2593 != 128);
                }

                else
                {
                  __asm { PRFM            #0, [X19] }

                  v2545 = 5;
                  v2546 = v2894;
                  do
                  {
                    v2547 = _X19;
                    _X19 = (_X19 + v96);
                    __asm { PRFM            #0, [X19] }

                    v2549 = *v2547;
                    v2546[3] = vzip2q_s8(*v2547, v26);
                    v2546 += 2;
                    v2550 = v26.i64[0];
                    vst2_s8(v2546->i8, v2549);
                    --v2545;
                  }

                  while (v2545 > 2);
                  v2551 = *_X19;
                  v2552 = vzip2q_s8(*_X19, v26);
                  v2553 = v2546[2].i8;
                  v2554 = v26.i64[0];
                  vst2_s8(v2553, v2551);
LABEL_1155:
                  v2546[3] = v2552;
                }

                v2603 = 1;
                v2604 = &v2895;
                do
                {
                  v2605 = v2603;
                  v2607 = *v2604;
                  v2606 = v2604[1];
                  v2609 = v2604[2];
                  v2608 = v2604[3];
                  if (v20)
                  {
                    v2610 = *v292;
                    a9 = *(v292 + 16);
                    a10 = *(v292 + 32);
                    a11 = *(v292 + 48);
                    v292 += 64;
                    v2607 = vaddq_s16(v2610, v2607);
                    v2606 = vaddq_s16(a9, v2606);
                    v2609 = vaddq_s16(a10, v2609);
                    v2608 = vaddq_s16(a11, v2608);
                  }

                  v2603 = 0;
                  *v291 = vqmovun_high_s16(vqmovun_s16(v2607), v2606);
                  *(v291 + v295) = vqmovun_high_s16(vqmovun_s16(v2609), v2608);
                  v291 = (v291 + v2775);
                  v2604 += 4;
                }

                while ((v2605 & 1) != 0);
                v19 = v2850;
                goto LABEL_352;
              }

              _X8 = &_X19->i8[v96];
              __asm { PRFM            #0, [X8] }

              v2557 = *_X19;
              v2558 = (v2833 + v286 + v287);
              v2559 = 5;
              v2546 = v2894;
              do
              {
                _X13 = &v2558->i8[2 * v96];
                v2558 = (v2558 + v96);
                __asm { PRFM            #0, [X13] }

                v2562 = *v2558;
                v2563 = vrhaddq_u8(v2557, *v2558);
                v2564 = v26.i64[0];
                v2546[3] = vzip2q_s8(v2563, v26);
                v2546 += 2;
                vst2_s8(v2546->i8, v2563);
                --v2559;
                v2557 = v2562;
              }

              while (v2559 > 2);
              v2565 = vrhaddq_u8(v2562, *(v2558 + v96));
            }

            v2573 = v2546[2].i8;
            v2574 = v26.i64[0];
            vst2_s8(v2573, v2565);
            v2552 = vzip2q_s8(v2565, v26);
            goto LABEL_1155;
          }
        }
      }

LABEL_1057:
      if (++v23 == v19)
      {
        return;
      }
    }

    v39 = *(*(v22 + 224) + 8 * v29[8]);
    v2795 = v33 >> 8;
    if (*(v22 + 29))
    {
      v40 = *(v39 + 37);
      if (*(v22 + 30))
      {
        v41 = 2 * (v40 == 0);
      }

      else if (*(v39 + 37))
      {
        v41 = -2;
      }

      else
      {
        v41 = 0;
      }
    }

    else
    {
      v41 = 0;
      v40 = *(v39 + 37);
    }

    v46 = *(v39 + 64);
    v47 = *(v39 + 72);
    v48 = *(v39 + 168);
    if (v40)
    {
      v49 = *(v39 + 184);
      v46 += v48;
      v47 += v49;
    }

    else
    {
      LODWORD(v49) = *(v39 + 184);
    }

    v2831 = v47;
    v50 = *(*(v22 + 232) + 8 * v29[9]);
    v2806 = v46;
    if (*(v22 + 29))
    {
      v51 = *(v50 + 37);
      v52 = v37;
      if (*(v22 + 30))
      {
        v53 = 2 * (v51 == 0);
      }

      else if (*(v50 + 37))
      {
        v53 = -2;
      }

      else
      {
        v53 = 0;
      }
    }

    else
    {
      v52 = v37;
      v53 = 0;
      v51 = *(v50 + 37);
    }

    v118 = *v38;
    v119 = v38[1];
    v120 = v118 & 7;
    v121 = (v41 + v38[1]);
    v122 = (v41 + *(v38 + 2)) & 7;
    v2776 = *(v39 + 168);
    v2822 = 2 * v48;
    v2849 = 2 * v49;
    v123 = *(v39 + 164);
    v2800 = *(v39 + 180);
    v124 = *(v39 + 132);
    v125 = *(v39 + 148);
    v126 = v38[2];
    v127 = v38[3];
    v128 = v53 + v38[3];
    v2828 = v126 & 7;
    v129 = v128;
    v130 = v128 & 7;
    v131 = *(v50 + 64);
    v132 = *(v50 + 72);
    v133 = *(v50 + 168);
    v2881 = v23;
    v2767 = v49;
    v2803 = v33;
    if (v51)
    {
      v134 = *(v50 + 184);
      v131 += v133;
      v132 += v134;
    }

    else
    {
      LODWORD(v134) = *(v50 + 184);
    }

    v2771 = v134;
    v135 = v119 & 3 | (4 * (v118 & 3u));
    v2790 = v127 & 3 | (4 * (v126 & 3u));
    v2781 = *(v50 + 168);
    v136 = 2 * v133;
    v137 = 2 * v134;
    v2786 = v121 & 7;
    v2782 = v118 & 7;
    v138 = v26;
    v139 = v26;
    v140 = v26;
    v2762 = v122 * v120;
    v141 = v26;
    v138.i32[0] = 65537 * (8 - v122) * (8 - v120);
    v139.i32[0] = 65537 * (8 - v122) * v120;
    a10 = xmmword_2773B3DF0;
    v140.i32[0] = 65537 * v122 * (8 - v120);
    v141.i32[0] = 65537 * v122 * v120;
    v2904 = vqtbl1q_s8(v138, xmmword_2773B3DF0);
    v2905 = vqtbl1q_s8(v139, xmmword_2773B3DF0);
    v2787 = v130;
    v142 = v26;
    v143 = v26;
    v144 = v26;
    v2763 = v130 * v2828;
    a9 = v26;
    v145 = v2791 + v36;
    v146 = v52;
    v147 = v2792 + v52;
    v148 = v2792 + v52 + (v119 >> 2);
    if (v2791 + v36 + (v118 >> 2) <= -18)
    {
      v149 = -18;
    }

    else
    {
      v149 = v2791 + v36 + (v118 >> 2);
    }

    if (v148 <= -18)
    {
      v150 = -18;
    }

    else
    {
      v150 = v148;
    }

    v151 = *(v50 + 164);
    v144.i32[0] = 65537 * v130 * (8 - v2828);
    v152 = *(v50 + 180);
    if (v149 >= v123 + 1)
    {
      v153 = v123 + 1;
    }

    else
    {
      v153 = v149;
    }

    if (v150 >= v124 + 1)
    {
      v154 = v124 + 1;
    }

    else
    {
      v154 = v150;
    }

    v155 = v145 + (v126 >> 2);
    v156 = v147 + (v127 >> 2);
    if (v155 <= -18)
    {
      v155 = -18;
    }

    if (v156 <= -18)
    {
      v156 = -18;
    }

    v157 = *(v50 + 132);
    v158 = *(v50 + 148);
    a11 = vqtbl1q_s8(v141, xmmword_2773B3DF0);
    v2906 = vqtbl1q_s8(v140, xmmword_2773B3DF0);
    v2907 = a11;
    v142.i32[0] = 65537 * (8 - v130) * (8 - v2828);
    v159 = vqtbl1q_s8(v142, xmmword_2773B3DF0);
    v143.i32[0] = 65537 * (8 - v130) * v2828;
    v160 = vqtbl1q_s8(v143, xmmword_2773B3DF0);
    v161 = vqtbl1q_s8(v144, xmmword_2773B3DF0);
    a9.n128_u32[0] = 65537 * v130 * v2828;
    v162 = vqtbl1q_s8(a9, xmmword_2773B3DF0);
    v2908 = v159;
    v2909 = v160;
    v2910 = v161;
    v2911 = v162;
    if (v155 >= v151 + 1)
    {
      v163 = v151 + 1;
    }

    else
    {
      v163 = v155;
    }

    if (v156 >= v157 + 1)
    {
      v164 = v157 + 1;
    }

    else
    {
      v164 = v156;
    }

    v165 = ((v118 >> 2) & 0xFFFFFFFE) + v145;
    v166 = (v121 >> 3) + (v147 >> 1);
    v2778 = v165;
    if (v165 <= -16)
    {
      v165 = -16;
    }

    if (v166 <= -8)
    {
      v167 = -8;
    }

    else
    {
      v167 = v166;
    }

    v168 = v2800 - 2;
    v2777 = v2800 - 2;
    if (v165 < v2800 - 2)
    {
      v168 = v165;
    }

    if (v167 >= v125)
    {
      v169 = v125 - 1;
    }

    else
    {
      v169 = v167;
    }

    v170 = ((v126 >> 2) & 0xFFFFFFFE) + v145;
    v171 = (v129 >> 3) + (v147 >> 1);
    v2779 = v170;
    if (v170 <= -16)
    {
      v170 = -16;
    }

    if (v171 <= -8)
    {
      v171 = -8;
    }

    v172 = a2 + 2 * v36 + 32 * v146;
    v173 = v146 >> 1;
    v2780 = v152 - 2;
    if (v170 >= v152 - 2)
    {
      v170 = v152 - 2;
    }

    v174 = v171 < v158;
    v20 = a3;
    v175 = v158 - 1;
    v176 = a3 + 2 * v36 + 32 * v173;
    if (v174)
    {
      v175 = v171;
    }

    v177 = &v2794->i8[v36 + (v2784 * v146)];
    v2764 = v164;
    v178 = &v2793->i8[v36 + (v173 * v2783)];
    v2765 = v163;
    v179 = v169 * v2849;
    v180 = (v2806 + v153 + v154 * v2822);
    v181 = (v131 + v163 + v164 * v136);
    _X24 = (v2831 + v168 + v169 * v2849);
    v2801 = v137;
    v183 = v175 * v137;
    _X26 = (v132 + v170 + v183);
    v185 = v2803;
    if (v2803 == 4)
    {
      v2852 = v11;
      v2866 = v26;
      if (v2795 == 8)
      {
        v196 = 2 * v2776;
        v197 = &v180[2 * v2776];
        v21 = a2;
        switch(v135)
        {
          case 1:
            v734 = v180;
            v735 = &v180[v196];
            v2798 = v181;
            v736 = sub_27729F23C(&v2886, v734, v2822, v159, v160, *v161.i64, v162, *v144.i64, a9, xmmword_2773B3DF0, a11);
            v204 = sub_27729F23C(&v2888, v735, v2822, v736, v737, v738, v739, v740, v741, v742, v743);
            goto LABEL_456;
          case 2:
            v599 = v180;
            v600 = &v180[v196];
            v2798 = v181;
            v601 = sub_27729F394(&v2886, v599, v2822, *v159.i64, v160, v161, *v162.i64, v144, a9, xmmword_2773B3DF0, a11);
            *v204.i64 = sub_27729F394(&v2888, v600, v2822, v601, v602, v603, v604, v605, v606, v607, v608);
            goto LABEL_456;
          case 3:
            v680 = v180;
            v681 = &v180[v196];
            v2798 = v181;
            v682 = sub_27729F4D8(&v2886, v680, v2822, v159, v160, *v161.i64, v162, *v144.i64, a9, xmmword_2773B3DF0, a11);
            v204 = sub_27729F4D8(&v2888, v681, v2822, v682, v683, v684, v685, v686, v687, v688, v689);
            goto LABEL_456;
          case 4:
            v2839 = &v180[v196];
            v556 = v180;
            v545 = v181;
            sub_27729C91C(&v2886, 8u, v556, v2822);
            v204 = sub_27729C91C(&v2888, 8u, v2839, v2822);
            goto LABEL_459;
          case 5:
            v2844 = &v180[v196];
            v825 = v180;
            v545 = v181;
            *v826.i64 = sub_27729CAF0(&v2886, 8u, v825, v2822, v159, *v160.i64, *v161.i64, *v162.i64, *v144.i64, a9, xmmword_2773B3DF0, a11);
            *v204.i64 = sub_27729CAF0(&v2888, 8u, v2844, v2822, v826, v827, v828, v829, v830, v831, v832, v833);
            goto LABEL_459;
          case 6:
            v2846 = &v180[v196];
            v843 = v180;
            v545 = v181;
            *v844.i64 = sub_27729CDD0(&v2886, 8u, v843, v2822, v159, v160, v161, v162, v144, a9, xmmword_2773B3DF0, a11);
            *v204.i64 = sub_27729CDD0(&v2888, 8u, v2846, v2822, v844, v845, v846, v847, v848, v849, v850, v851);
            goto LABEL_459;
          case 7:
            v2843 = &v180[v196];
            v698 = v180;
            v545 = v181;
            v699 = sub_27729D274(&v2886, 8u, v698, v2822, *v159.i64, *v160.i64, *v161.i64, *v162.i64, *v144.i64, a9.n128_f64[0], xmmword_2773B3DF0, a11);
            *v204.i64 = sub_27729D274(&v2888, 8u, v2843, v2822, v699, v700, v701, v702, v703, v704, v705, v706);
            goto LABEL_459;
          case 8:
            v2847 = &v180[v196];
            v864 = v180;
            v545 = v181;
            sub_27729D550(&v2886, 8u, v864, v2822);
            v204 = sub_27729D550(&v2888, 8u, v2847, v2822);
            goto LABEL_459;
          case 9:
            v2841 = &v180[v196];
            v578 = v180;
            v545 = v181;
            sub_27729D714(&v2886, 8u, v578, v2822);
            *v204.i64 = sub_27729D714(&v2888, 8u, v2841, v2822);
            goto LABEL_459;
          case 10:
            v854 = v180;
            v855 = &v180[v196];
            v2798 = v181;
            *v856.i64 = sub_27729F62C(&v2886, v854, v2822, v159, v160, v161, v162, v144, a9, xmmword_2773B3DF0, a11);
            *v204.i64 = sub_27729F62C(&v2888, v855, v2822, v856, v857, v858, v859, v860, v861, v862, v863);
LABEL_456:
            v181 = v2798;
            goto LABEL_460;
          case 11:
            v2838 = &v180[v196];
            v555 = v180;
            v545 = v181;
            sub_27729DE6C(&v2886, 8u, v555, v2822);
            *v204.i64 = sub_27729DE6C(&v2888, 8u, v2838, v2822);
            goto LABEL_459;
          case 12:
            v2840 = &v180[v196];
            v557 = v180;
            v545 = v181;
            sub_27729E5C4(&v2886, 8u, v557, v2822);
            v204 = sub_27729E5C4(&v2888, 8u, v2840, v2822);
            goto LABEL_459;
          case 13:
            v2845 = &v180[v196];
            v834 = v180;
            v545 = v181;
            *v835.i64 = sub_27729E798(&v2886, 8u, v834, v2822, v159, *v160.i64, *v161.i64, *v162.i64, *v144.i64, a9, xmmword_2773B3DF0, a11);
            *v204.i64 = sub_27729E798(&v2888, 8u, v2845, v2822, v835, v836, v837, v838, v839, v840, v841, v842);
            goto LABEL_459;
          case 14:
            v2837 = &v180[v196];
            v544 = v180;
            v545 = v181;
            *v546.i64 = sub_27729EA7C(&v2886, 8u, v544, v2822, v159, v160, v161, v162, v144, a9, xmmword_2773B3DF0, a11);
            *v204.i64 = sub_27729EA7C(&v2888, 8u, v2837, v2822, v546, v547, v548, v549, v550, v551, v552, v553);
            goto LABEL_459;
          case 15:
            v2842 = &v180[v196];
            v671 = v180;
            v545 = v181;
            v672 = sub_27729EF20(&v2886, 8u, v671, v2822, *v159.i64, *v160.i64, *v161.i64, *v162.i64, *v144.i64, a9.n128_f64[0], xmmword_2773B3DF0, a11);
            *v204.i64 = sub_27729EF20(&v2888, 8u, v2842, v2822, v672, v673, v674, v675, v676, v677, v678, v679);
LABEL_459:
            v181 = v545;
LABEL_460:
            v11.i64[1] = v2852.i64[1];
            v26 = v2866;
            break;
          default:
            v159.i32[0] = *(v180 + v2822);
            v160.i32[0] = v180[v2776];
            v161.i32[0] = *v180;
            v162.i32[0] = *(v180 + 6 * v2776);
            v198.i64[0] = vzip1q_s8(v161, v26).u64[0];
            v199 = vzip1q_s8(v159, v26);
            v200.i64[0] = vzip1q_s8(v160, v26).u64[0];
            v201 = vzip1q_s8(v162, v26);
            v198.i64[1] = v199.i64[0];
            v200.i64[1] = v201.i64[0];
            v2886 = v198;
            v2887 = v200;
            v199.i32[0] = *v197;
            v200.i32[0] = *(v197 + v2822);
            v198.i32[0] = v197[v2776];
            v201.i32[0] = *(v197 + 6 * v2776);
            v204.i64[0] = vzip1q_s8(v199, v26).u64[0];
            v202 = vzip1q_s8(v200, v26);
            v205.i64[0] = vzip1q_s8(v198, v26).u64[0];
            v203 = vzip1q_s8(v201, v26);
            v204.i64[1] = v202.i64[0];
            v205.i64[1] = v203.i64[0];
            v2888 = v204;
            v2889[0] = v205;
            break;
        }

        v865 = &v181[2 * v2781];
        switch(v2790)
        {
          case 1:
            v913 = sub_27729F23C(&v2890, v181, v136, v204, v202, *v205.i64, v203, *v144.i64, a9, a10, a11);
            v871 = sub_27729F23C(&v2892, v865, v136, v913, v914, v915, v916, v917, v918, v919, v920);
            break;
          case 2:
            v881 = sub_27729F394(&v2890, v181, v136, *v204.i64, v202, v205, *v203.i64, v144, a9, a10, a11);
            sub_27729F394(&v2892, v865, v136, v881, v882, v883, v884, v885, v886, v887, v888);
            break;
          case 3:
            v897 = sub_27729F4D8(&v2890, v181, v136, v204, v202, *v205.i64, v203, *v144.i64, a9, a10, a11);
            v871 = sub_27729F4D8(&v2892, v865, v136, v897, v898, v899, v900, v901, v902, v903, v904);
            break;
          case 4:
            sub_27729C91C(&v2890, 8u, v181, v136);
            v871 = sub_27729C91C(&v2892, 8u, v865, v136);
            break;
          case 5:
            *v921.i64 = sub_27729CAF0(&v2890, 8u, v181, v136, v204, *v202.i64, *v205.i64, *v203.i64, *v144.i64, a9, a10, a11);
            sub_27729CAF0(&v2892, 8u, v865, v136, v921, v922, v923, v924, v925, v926, v927, v928);
            break;
          case 6:
            *v937.i64 = sub_27729CDD0(&v2890, 8u, v181, v136, v204, v202, v205, v203, v144, a9, a10, a11);
            sub_27729CDD0(&v2892, 8u, v865, v136, v937, v938, v939, v940, v941, v942, v943, v944);
            break;
          case 7:
            v905 = sub_27729D274(&v2890, 8u, v181, v136, *v204.i64, *v202.i64, *v205.i64, *v203.i64, *v144.i64, a9.n128_f64[0], a10, a11);
            sub_27729D274(&v2892, 8u, v865, v136, v905, v906, v907, v908, v909, v910, v911, v912);
            break;
          case 8:
            sub_27729D550(&v2890, 8u, v181, v136);
            v871 = sub_27729D550(&v2892, 8u, v865, v136);
            break;
          case 9:
            sub_27729D714(&v2890, 8u, v181, v136);
            sub_27729D714(&v2892, 8u, v865, v136);
            break;
          case 10:
            *v945.i64 = sub_27729F62C(&v2890, v181, v136, v204, v202, v205, v203, v144, a9, a10, a11);
            sub_27729F62C(&v2892, v865, v136, v945, v946, v947, v948, v949, v950, v951, v952);
            break;
          case 11:
            sub_27729DE6C(&v2890, 8u, v181, v136);
            sub_27729DE6C(&v2892, 8u, v865, v136);
            break;
          case 12:
            sub_27729E5C4(&v2890, 8u, v181, v136);
            v871 = sub_27729E5C4(&v2892, 8u, v865, v136);
            break;
          case 13:
            *v929.i64 = sub_27729E798(&v2890, 8u, v181, v136, v204, *v202.i64, *v205.i64, *v203.i64, *v144.i64, a9, a10, a11);
            sub_27729E798(&v2892, 8u, v865, v136, v929, v930, v931, v932, v933, v934, v935, v936);
            break;
          case 14:
            *v873.i64 = sub_27729EA7C(&v2890, 8u, v181, v136, v204, v202, v205, v203, v144, a9, a10, a11);
            sub_27729EA7C(&v2892, 8u, v865, v136, v873, v874, v875, v876, v877, v878, v879, v880);
            break;
          case 15:
            v889 = sub_27729EF20(&v2890, 8u, v181, v136, *v204.i64, *v202.i64, *v205.i64, *v203.i64, *v144.i64, a9.n128_f64[0], a10, a11);
            sub_27729EF20(&v2892, 8u, v865, v136, v889, v890, v891, v892, v893, v894, v895, v896);
            break;
          default:
            v204.i32[0] = *(v181 + v136);
            v202.i32[0] = v181[v2781];
            v205.i32[0] = *v181;
            v203.i32[0] = *(v181 + 6 * v2781);
            v866.i64[0] = vzip1q_s8(v205, v26).u64[0];
            v867 = vzip1q_s8(v204, v26);
            v868.i64[0] = vzip1q_s8(v202, v26).u64[0];
            v869 = vzip1q_s8(v203, v26);
            v866.i64[1] = v867.i64[0];
            v868.i64[1] = v869.i64[0];
            v2890 = v866;
            v2891 = v868;
            v867.i32[0] = *v865;
            v868.i32[0] = *(v865 + v136);
            v866.i32[0] = v865[v2781];
            v869.i32[0] = *(v865 + 6 * v2781);
            v871.i64[0] = vzip1q_s8(v867, v26).u64[0];
            v870 = vzip1q_s8(v868, v26);
            v872.i64[0] = vzip1q_s8(v866, v26).u64[0];
            v871.i64[1] = v870.i64[0];
            v872.i64[1] = vzip1q_s8(v869, v26).u64[0];
            v2892 = v871;
            v2893[0] = v872;
            break;
        }

        v956 = 1;
        v957 = &v2886;
        do
        {
          v958 = v956;
          v871.i64[0] = v957->i64[0];
          v870.i64[0] = v957->i64[1];
          v144.i64[0] = v957[1].i64[0];
          a9.n128_u64[0] = v957[1].u64[1];
          v872.i64[0] = v957[32].i64[0];
          a10.n128_u64[0] = v957[32].u64[1];
          a11.n128_u64[0] = v957[33].u64[0];
          v11.i64[0] = v957[33].i64[1];
          v959 = vrhaddq_u16(v871, v872);
          v872 = vrhaddq_u16(v870, a10);
          v870 = vrhaddq_u16(v144, a11);
          v871 = vrhaddq_u16(a9, v11);
          if (a2)
          {
            v144.i64[0] = *v172;
            a9.n128_u64[0] = *(v172 + 32);
            a10.n128_u64[0] = *(v172 + 64);
            a11.n128_u64[0] = *(v172 + 96);
            v172 += 128;
            v959 = vaddq_s16(v959, v144);
            v872 = vaddq_s16(v872, a9);
            v870 = vaddq_s16(v870, a10);
            v871 = vaddq_s16(v871, a11);
          }

          v956 = 0;
          v957 += 2;
          v960 = COERCE_DOUBLE(vqmovun_s16(v959));
          v961 = COERCE_DOUBLE(vqmovun_s16(v872));
          v962 = COERCE_DOUBLE(vqmovun_s16(v870));
          v177->i32[0] = LODWORD(v960);
          *(v177->i32 + v2789) = LODWORD(v961);
          v963 = COERCE_DOUBLE(vqmovun_s16(v871));
          v177->i32[v2788 / 4] = LODWORD(v962);
          *(v177->i32 + v2761) = LODWORD(v963);
          v177 = (v177 + v2755);
        }

        while ((v958 & 1) != 0);
        v964 = sub_277290798(&v2895, _X24, v2849, v2782, v2786, v963, v962, v961, v960, v144, a9);
        v970 = sub_277290798(&v2896, _X24->i64 + (4 * v2767), v2849, v2782, v2786, v964, v965, v966, v967, v968, v969);
        v976 = sub_277290798(&v2900, _X26, v2801, v2828, v2787, v970, v971, v972, v973, v974, v975);
        sub_277290798(&v2901, _X26->i64 + (4 * v2771), v2801, v2828, v2787, v976, v977, v978, v979, v980, v981);
        v983.i64[0] = v2895.i64[1];
        v982.i64[0] = v2895.i64[0];
        a9.n128_u64[0] = v2896.u64[1];
        v984.i64[0] = v2896.i64[0];
        a10.n128_u64[0] = v2900.u64[1];
        v985.i64[0] = v2900.i64[0];
        v986.i64[0] = v2901.i64[1];
        a11.n128_u64[0] = v2901.i64[0];
        v987 = vrhaddq_u16(v982, v985);
        v988 = vrhaddq_u16(v983, a10);
        v989 = vrhaddq_u16(v984, a11);
        v990 = vrhaddq_u16(a9, v986);
        v20 = a3;
        if (a3)
        {
          v984.i64[0] = *v176;
          a9.n128_u64[0] = *(v176 + 32);
          a10.n128_u64[0] = *(v176 + 64);
          a11.n128_u64[0] = *(v176 + 96);
          v987 = vaddq_s16(v987, v984);
          v988 = vaddq_s16(v988, a9);
          v989 = vaddq_s16(v989, a10);
          v990 = vaddq_s16(v990, a11);
        }

        v19 = v2850;
        v27.i64[0] = 0x10001000100010;
        v27.i64[1] = 0x10001000100010;
        v28.i64[0] = 0x20002000200020;
        v28.i64[1] = 0x20002000200020;
        v178->i32[0] = vqmovun_s16(v987).u32[0];
        *(v178->i32 + v2783) = vqmovun_s16(v988).u32[0];
        v178->i32[v2775 / 4] = vqmovun_s16(v989).u32[0];
        *(v178->i32 + v2754) = vqmovun_s16(v990).u32[0];
        v11 = v2852;
        v26 = v2866;
      }

      else
      {
        v21 = a2;
        switch(v135)
        {
          case 1:
            v554 = v181;
            v260 = sub_27729F23C(&v2886, (v2806 + v153 + v154 * v2822), v2822, v159, v160, *v161.i64, v162, *v144.i64, a9, xmmword_2773B3DF0, a11);
            goto LABEL_478;
          case 2:
            v554 = v181;
            *v260.i64 = sub_27729F394(&v2886, (v2806 + v153 + v154 * v2822), v2822, *v159.i64, v160, v161, *v162.i64, v144, a9, xmmword_2773B3DF0, a11);
            goto LABEL_478;
          case 3:
            v554 = v181;
            v260 = sub_27729F4D8(&v2886, (v2806 + v153 + v154 * v2822), v2822, v159, v160, *v161.i64, v162, *v144.i64, a9, xmmword_2773B3DF0, a11);
            goto LABEL_478;
          case 4:
            v554 = v181;
            v260 = sub_27729C91C(&v2886, 8u, v2806 + v153 + v154 * v2822, v2822);
            goto LABEL_478;
          case 5:
            v554 = v181;
            *v260.i64 = sub_27729CAF0(&v2886, 8u, v2806 + v153 + v154 * v2822, v2822, v159, *v160.i64, *v161.i64, *v162.i64, *v144.i64, a9, xmmword_2773B3DF0, a11);
            goto LABEL_478;
          case 6:
            v554 = v181;
            *v260.i64 = sub_27729CDD0(&v2886, 8u, v2806 + v153 + v154 * v2822, v2822, v159, v160, v161, v162, v144, a9, xmmword_2773B3DF0, a11);
            goto LABEL_478;
          case 7:
            v554 = v181;
            *v260.i64 = sub_27729D274(&v2886, 8u, v2806 + v153 + v154 * v2822, v2822, *v159.i64, *v160.i64, *v161.i64, *v162.i64, *v144.i64, a9.n128_f64[0], xmmword_2773B3DF0, a11);
            goto LABEL_478;
          case 8:
            v554 = v181;
            v260 = sub_27729D550(&v2886, 8u, v2806 + v153 + v154 * v2822, v2822);
            goto LABEL_478;
          case 9:
            v554 = v181;
            *v260.i64 = sub_27729D714(&v2886, 8u, v2806 + v153 + v154 * v2822, v2822);
            goto LABEL_478;
          case 10:
            v554 = v181;
            *v260.i64 = sub_27729F62C(&v2886, v2806 + v153 + v154 * v2822, v2822, v159, v160, v161, v162, v144, a9, xmmword_2773B3DF0, a11);
            goto LABEL_478;
          case 11:
            v554 = v181;
            *v260.i64 = sub_27729DE6C(&v2886, 8u, v2806 + v153 + v154 * v2822, v2822);
            goto LABEL_478;
          case 12:
            v554 = v181;
            v260 = sub_27729E5C4(&v2886, 8u, v2806 + v153 + v154 * v2822, v2822);
            goto LABEL_478;
          case 13:
            v554 = v181;
            *v260.i64 = sub_27729E798(&v2886, 8u, v2806 + v153 + v154 * v2822, v2822, v159, *v160.i64, *v161.i64, *v162.i64, *v144.i64, a9, xmmword_2773B3DF0, a11);
            goto LABEL_478;
          case 14:
            v554 = v181;
            *v260.i64 = sub_27729EA7C(&v2886, 8u, v2806 + v153 + v154 * v2822, v2822, v159, v160, v161, v162, v144, a9, xmmword_2773B3DF0, a11);
            goto LABEL_478;
          case 15:
            v554 = v181;
            *v260.i64 = sub_27729EF20(&v2886, 8u, v2806 + v153 + v154 * v2822, v2822, *v159.i64, *v160.i64, *v161.i64, *v162.i64, *v144.i64, a9.n128_f64[0], xmmword_2773B3DF0, a11);
LABEL_478:
            v181 = v554;
            v11.i64[1] = v2852.i64[1];
            v26 = v2866;
            break;
          default:
            v159.i32[0] = *v180;
            v160.i32[0] = *(v180 + v2822);
            v161.i32[0] = v180[v2776];
            v162.i32[0] = *(v180 + 6 * v2776);
            v260.i64[0] = vzip1q_s8(v159, v26).u64[0];
            v258 = vzip1q_s8(v160, v26);
            v261.i64[0] = vzip1q_s8(v161, v26).u64[0];
            v259 = vzip1q_s8(v162, v26);
            v260.i64[1] = v258.i64[0];
            v261.i64[1] = v259.i64[0];
            v2886 = v260;
            v2887 = v261;
            break;
        }

        switch(v2790)
        {
          case 1:
            v954 = sub_27729F23C(&v2890, v181, v136, v260, v258, *v261.i64, v259, *v144.i64, a9, a10, a11);
            break;
          case 2:
            sub_27729F394(&v2890, v181, v136, *v260.i64, v258, v261, *v259.i64, v144, a9, a10, a11);
            break;
          case 3:
            v954 = sub_27729F4D8(&v2890, v181, v136, v260, v258, *v261.i64, v259, *v144.i64, a9, a10, a11);
            break;
          case 4:
            v954 = sub_27729C91C(&v2890, 8u, v181, v136);
            break;
          case 5:
            sub_27729CAF0(&v2890, 8u, v181, v136, v260, *v258.i64, *v261.i64, *v259.i64, *v144.i64, a9, a10, a11);
            break;
          case 6:
            sub_27729CDD0(&v2890, 8u, v181, v136, v260, v258, v261, v259, v144, a9, a10, a11);
            break;
          case 7:
            sub_27729D274(&v2890, 8u, v181, v136, *v260.i64, *v258.i64, *v261.i64, *v259.i64, *v144.i64, a9.n128_f64[0], a10, a11);
            break;
          case 8:
            v954 = sub_27729D550(&v2890, 8u, v181, v136);
            break;
          case 9:
            sub_27729D714(&v2890, 8u, v181, v136);
            break;
          case 10:
            sub_27729F62C(&v2890, v181, v136, v260, v258, v261, v259, v144, a9, a10, a11);
            break;
          case 11:
            sub_27729DE6C(&v2890, 8u, v181, v136);
            break;
          case 12:
            v954 = sub_27729E5C4(&v2890, 8u, v181, v136);
            break;
          case 13:
            sub_27729E798(&v2890, 8u, v181, v136, v260, *v258.i64, *v261.i64, *v259.i64, *v144.i64, a9, a10, a11);
            break;
          case 14:
            sub_27729EA7C(&v2890, 8u, v181, v136, v260, v258, v261, v259, v144, a9, a10, a11);
            break;
          case 15:
            sub_27729EF20(&v2890, 8u, v181, v136, *v260.i64, *v258.i64, *v261.i64, *v259.i64, *v144.i64, a9.n128_f64[0], a10, a11);
            break;
          default:
            v260.i32[0] = *v181;
            v258.i32[0] = *(v181 + v136);
            v261.i32[0] = v181[v2781];
            v259.i32[0] = *(v181 + 6 * v2781);
            v954.i64[0] = vzip1q_s8(v260, v26).u64[0];
            v953 = vzip1q_s8(v258, v26);
            v955.i64[0] = vzip1q_s8(v261, v26).u64[0];
            v954.i64[1] = v953.i64[0];
            v955.i64[1] = vzip1q_s8(v259, v26).u64[0];
            v2890 = v954;
            v2891 = v955;
            break;
        }

        v953.i64[0] = v2886.i64[1];
        v954.i64[0] = v2886.i64[0];
        a9.n128_u64[0] = v2887.u64[1];
        v144.i64[0] = v2887.i64[0];
        a10.n128_u64[0] = v2890.u64[1];
        v955.i64[0] = v2890.i64[0];
        v11.i64[0] = v2891.i64[1];
        a11.n128_u64[0] = v2891.i64[0];
        v991 = vrhaddq_u16(v954, v955);
        v992 = vrhaddq_u16(v953, a10);
        v993 = vrhaddq_u16(v144, a11);
        v994 = vrhaddq_u16(a9, v11);
        if (a2)
        {
          v144.i64[0] = *v172;
          a9.n128_u64[0] = *(v172 + 32);
          a10.n128_u64[0] = *(v172 + 64);
          a11.n128_u64[0] = *(v172 + 96);
          v991 = vaddq_s16(v991, v144);
          v992 = vaddq_s16(v992, a9);
          v993 = vaddq_s16(v993, a10);
          v994 = vaddq_s16(v994, a11);
        }

        v995 = COERCE_DOUBLE(vqmovun_s16(v991));
        v996 = COERCE_DOUBLE(vqmovun_s16(v992));
        v177->i32[0] = LODWORD(v995);
        *(v177->i32 + v2789) = LODWORD(v996);
        v997 = COERCE_DOUBLE(vqmovun_s16(v993));
        v998 = COERCE_DOUBLE(vqmovun_s16(v994));
        v177->i32[v2788 / 4] = LODWORD(v997);
        *(v177->i32 + v2761) = LODWORD(v998);
        v999 = sub_277290798(&v2895, _X24, v2849, v2782, v2786, v997, v998, v996, v995, v144, a9);
        sub_277290798(&v2900, _X26, v2801, v2828, v2787, v999, v1000, v1001, v1002, v1003, v1004);
        v1006.i64[0] = v2895.i64[1];
        v1005.i64[0] = v2895.i64[0];
        v1008.i64[0] = v2900.i64[1];
        v1007.i64[0] = v2900.i64[0];
        v1009 = vrhaddq_u16(v1005, v1007);
        v1010 = vrhaddq_u16(v1006, v1008);
        v20 = a3;
        if (a3)
        {
          v1006.i64[0] = *v176;
          v1008.i64[0] = *(v176 + 32);
          v1009 = vaddq_s16(v1009, v1006);
          v1010 = vaddq_s16(v1010, v1008);
        }

        v11 = v2852;
        v26 = v2866;
        v27.i64[0] = 0x10001000100010;
        v27.i64[1] = 0x10001000100010;
        v28.i64[0] = 0x20002000200020;
        v28.i64[1] = 0x20002000200020;
        v19 = v2850;
        v178->i32[0] = vqmovun_s16(v1009).u32[0];
        *(v178->i32 + v2783) = vqmovun_s16(v1010).u32[0];
      }

      goto LABEL_1056;
    }

    v186 = v132;
    v2804 = v131;
    if (v185 == 8)
    {
      v19 = v2850;
      if (v2795 == 4)
      {
        v21 = a2;
        v2857 = v11;
        v2871 = v26;
        switch(v135)
        {
          case 1:
            v1821 = 0;
            v1822 = &v180[-v2776];
            v1823 = (v1822 + v2822);
            v1824 = (v1823 + v2822);
            v1825 = (v1824 + v2822);
            v160 = vzip1q_s8(*(v1825 + v2822), v26);
            v275 = vzip1q_s8(*v1825, v26);
            v161 = vzip1q_s8(*v1824, v26);
            v162 = vzip1q_s8(*v1823, v26);
            v144 = vzip1q_s8(*v1822, v26);
            v1826 = (v2806 + 5 * v2822 + v153 + 2 * v2776 * v154 - 4 * v2776);
            v273 = v2790;
            do
            {
              a9 = v162;
              v162 = v161;
              v161 = v275;
              v275 = v160;
              v160 = vzip1q_s8(*v1826, v26);
              v1827 = vsubq_s16(vshlq_n_s16(vaddq_s16(v162, v161), 2uLL), vaddq_s16(a9, v275));
              a11 = vshlq_n_s16(v1827, 2uLL);
              v1828 = vaddq_s16(vaddq_s16(v144, v1827), a11);
              a10 = vaddq_s16(v160, v27);
              *(&v2886 + v1821) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(v1828, a10), 5uLL))), v162);
              v1821 += 16;
              v1826 = (v1826 + v2822);
              v144 = a9;
            }

            while (v1821 != 64);
            break;
          case 2:
            v1679 = 0;
            v1680 = &v180[-v2776];
            v1681 = (v1680 + v2822);
            v1682 = (v1681 + v2822);
            v1683 = (v1682 + v2822);
            v161 = vzip1q_s8(*(v1683 + v2822), v26);
            v275 = vzip1q_s8(*v1683, v26);
            v160 = vzip1q_s8(*v1682, v26);
            v162 = vzip1q_s8(*v1681, v26);
            v144 = vzip1q_s8(*v1680, v26);
            v1684 = (v2806 + 5 * v2822 + v153 + 2 * v2776 * v154 - 4 * v2776);
            v273 = v2790;
            do
            {
              a9 = v162;
              v162 = v160;
              v160 = v275;
              v275 = v161;
              v1685 = &v2886.i8[v1679];
              v161 = vzip1q_s8(*v1684, v26);
              v1686 = vsubq_s16(vshlq_n_s16(vaddq_s16(v162, v160), 2uLL), vaddq_s16(a9, v275));
              a11 = vshlq_n_s16(v1686, 2uLL);
              v1687 = vaddq_s16(vaddq_s16(v144, v1686), a11);
              a10 = vaddq_s16(v161, v27);
              a10.n128_u64[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(v1687, a10), 5uLL));
              a11.n128_u64[0] = v26.i64[0];
              vst2_s8(v1685, a10);
              v1679 += 16;
              v1684 = (v1684 + v2822);
              v144 = a9;
            }

            while (v1679 != 64);
            break;
          case 3:
            v1762 = 0;
            v1763 = &v180[-v2776];
            v1764 = (v1763 + v2822);
            v1765 = (v1764 + v2822);
            v1766 = (v1765 + v2822);
            v160 = vzip1q_s8(*(v1766 + v2822), v26);
            v275 = vzip1q_s8(*v1766, v26);
            v161 = vzip1q_s8(*v1765, v26);
            v162 = vzip1q_s8(*v1764, v26);
            v144 = vzip1q_s8(*v1763, v26);
            v1767 = (v2806 + 5 * v2822 + v153 + 2 * v2776 * v154 - 4 * v2776);
            v273 = v2790;
            do
            {
              a9 = v162;
              v162 = v161;
              v161 = v275;
              v275 = v160;
              v160 = vzip1q_s8(*v1767, v26);
              v1768 = vsubq_s16(vshlq_n_s16(vaddq_s16(v162, v161), 2uLL), vaddq_s16(a9, v275));
              a11 = vshlq_n_s16(v1768, 2uLL);
              v1769 = vaddq_s16(vaddq_s16(v144, v1768), a11);
              a10 = vaddq_s16(v160, v27);
              *(&v2886 + v1762) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(v1769, a10), 5uLL))), v161);
              v1762 += 16;
              v1767 = (v1767 + v2822);
              v144 = a9;
            }

            while (v1762 != 64);
            break;
          case 4:
            v2799 = v181;
            sub_27729C91C(&v2886, 0x10u, v180, v2822);
            v275 = sub_27729C91C(&v2886.i64[1], 0x10u, (v180 + 1), v2822);
            goto LABEL_969;
          case 5:
            v2799 = v181;
            *v2087.i64 = sub_27729CAF0(&v2886, 0x10u, v180, v2822, v159, *v160.i64, *v161.i64, *v162.i64, *v144.i64, a9, xmmword_2773B3DF0, a11);
            *v275.i64 = sub_27729CAF0(&v2886.i64[1], 0x10u, (v180 + 1), v2822, v2087, v2088, v2089, v2090, v2091, v2092, v2093, v2094);
            goto LABEL_969;
          case 6:
            v2799 = v181;
            *v2153.i64 = sub_27729CDD0(&v2886, 0x10u, v180, v2822, v159, v160, v161, v162, v144, a9, xmmword_2773B3DF0, a11);
            *v275.i64 = sub_27729CDD0(&v2886.i64[1], 0x10u, (v180 + 1), v2822, v2153, v2154, v2155, v2156, v2157, v2158, v2159, v2160);
            goto LABEL_969;
          case 7:
            v2799 = v181;
            v1773 = sub_27729D274(&v2886, 0x10u, v180, v2822, *v159.i64, *v160.i64, *v161.i64, *v162.i64, *v144.i64, a9.n128_f64[0], xmmword_2773B3DF0, a11);
            *v275.i64 = sub_27729D274(&v2886.i64[1], 0x10u, (v180 + 1), v2822, v1773, v1774, v1775, v1776, v1777, v1778, v1779, v1780);
            goto LABEL_969;
          case 8:
            v2799 = v181;
            sub_27729D550(&v2886, 0x10u, v180, v2822);
            v275 = sub_27729D550(&v2886.i64[1], 0x10u, (v180 + 1), v2822);
            goto LABEL_969;
          case 9:
            v2799 = v181;
            sub_27729D714(&v2886, 0x10u, v180, v2822);
            *v275.i64 = sub_27729D714(&v2886.i64[1], 0x10u, (v180 + 1), v2822);
            goto LABEL_969;
          case 10:
            v2162 = v181;
            sub_27729B7DC(&v2886, 16, v2806 + v153 + v154 * v2822, v2822, 4);
            v181 = v2162;
            goto LABEL_970;
          case 11:
            v2799 = v181;
            sub_27729DE6C(&v2886, 0x10u, v180, v2822);
            *v275.i64 = sub_27729DE6C(&v2886.i64[1], 0x10u, (v180 + 1), v2822);
            goto LABEL_969;
          case 12:
            v2799 = v181;
            sub_27729E5C4(&v2886, 0x10u, v180, v2822);
            v275 = sub_27729E5C4(&v2886.i64[1], 0x10u, (v180 + 1), v2822);
            goto LABEL_969;
          case 13:
            v2799 = v181;
            *v2145.i64 = sub_27729E798(&v2886, 0x10u, v180, v2822, v159, *v160.i64, *v161.i64, *v162.i64, *v144.i64, a9, xmmword_2773B3DF0, a11);
            *v275.i64 = sub_27729E798(&v2886.i64[1], 0x10u, (v180 + 1), v2822, v2145, v2146, v2147, v2148, v2149, v2150, v2151, v2152);
            goto LABEL_969;
          case 14:
            v2799 = v181;
            *v1599.i64 = sub_27729EA7C(&v2886, 0x10u, v180, v2822, v159, v160, v161, v162, v144, a9, xmmword_2773B3DF0, a11);
            *v275.i64 = sub_27729EA7C(&v2886.i64[1], 0x10u, (v180 + 1), v2822, v1599, v1600, v1601, v1602, v1603, v1604, v1605, v1606);
            goto LABEL_969;
          case 15:
            v2799 = v181;
            v1746 = sub_27729EF20(&v2886, 0x10u, v180, v2822, *v159.i64, *v160.i64, *v161.i64, *v162.i64, *v144.i64, a9.n128_f64[0], xmmword_2773B3DF0, a11);
            *v275.i64 = sub_27729EF20(&v2886.i64[1], 0x10u, (v180 + 1), v2822, v1746, v1747, v1748, v1749, v1750, v1751, v1752, v1753);
LABEL_969:
            v181 = v2799;
LABEL_970:
            v27.i64[0] = 0x10001000100010;
            v27.i64[1] = 0x10001000100010;
            v26 = v2871;
            v273 = v2790;
            break;
          default:
            v272 = 0;
            v273 = v2790;
            do
            {
              v274 = &v2886.i8[v272];
              v275 = *v180;
              v180 = (v180 + v2822);
              v160.i64[0] = v26.i64[0];
              vst2_s8(v274, *(&v160 - 8));
              v272 += 16;
            }

            while (v272 != 64);
            break;
        }

        switch(v273)
        {
          case 1:
            v2229 = 0;
            v2230 = &v181[-v2781];
            v2231 = (v2230 + v136);
            v2232 = (v2231 + v136);
            v2233 = (v2232 + v136);
            v2234 = vzip1q_s8(*(v2233 + v136), v26);
            v2235 = vzip1q_s8(*v2233, v26);
            v2236 = vzip1q_s8(*v2232, v26);
            v2237 = vzip1q_s8(*v2231, v26);
            v2238 = vzip1q_s8(*v2230, v26);
            v2239 = (v2804 + 5 * v136 + v2765 + 2 * v2781 * v2764 - 4 * v2781);
            v2164 = v2784;
            v2165 = v2788;
            v2166 = v2761;
            do
            {
              v2240 = v2237;
              v2237 = v2236;
              v2236 = v2235;
              v2235 = v2234;
              v2234 = vzip1q_s8(*v2239, v26);
              v2241 = vsubq_s16(vshlq_n_s16(vaddq_s16(v2237, v2236), 2uLL), vaddq_s16(v2240, v2235));
              *(&v2890 + v2229) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v2238, v2241), vshlq_n_s16(v2241, 2uLL)), vaddq_s16(v2234, v27)), 5uLL))), v2237);
              v2229 += 16;
              v2239 = (v2239 + v136);
              v2238 = v2240;
            }

            while (v2229 != 64);
            break;
          case 2:
            v2183 = 0;
            v2184 = &v181[-v2781];
            v2185 = (v2184 + v136);
            v2186 = (v2185 + v136);
            v2187 = (v2186 + v136);
            v2188 = vzip1q_s8(*(v2187 + v136), v26);
            v2189 = vzip1q_s8(*v2187, v26);
            v2190 = vzip1q_s8(*v2186, v26);
            v2191 = vzip1q_s8(*v2185, v26);
            v2192 = vzip1q_s8(*v2184, v26);
            v2193 = (v2804 + 5 * v136 + v2765 + 2 * v2781 * v2764 - 4 * v2781);
            v2164 = v2784;
            v2165 = v2788;
            v2166 = v2761;
            do
            {
              v2194 = v2191;
              v2191 = v2190;
              v2190 = v2189;
              v2189 = v2188;
              v2195 = &v2890.i8[v2183];
              v2188 = vzip1q_s8(*v2193, v26);
              v2196 = vsubq_s16(vshlq_n_s16(vaddq_s16(v2191, v2190), 2uLL), vaddq_s16(v2194, v2189));
              v2196.val[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v2192, v2196), vshlq_n_s16(v2196, 2uLL)), vaddq_s16(v2188, v27)), 5uLL));
              v2197 = v26.i64[0];
              vst2_s8(v2195, v2196);
              v2183 += 16;
              v2193 = (v2193 + v136);
              v2192 = v2194;
            }

            while (v2183 != 64);
            break;
          case 3:
            v2207 = 0;
            v2208 = &v181[-v2781];
            v2209 = (v2208 + v136);
            v2210 = (v2209 + v136);
            v2211 = (v2210 + v136);
            v2212 = vzip1q_s8(*(v2211 + v136), v26);
            v2213 = vzip1q_s8(*v2211, v26);
            v2214 = vzip1q_s8(*v2210, v26);
            v2215 = vzip1q_s8(*v2209, v26);
            v2216 = vzip1q_s8(*v2208, v26);
            v2217 = (v2804 + 5 * v136 + v2765 + 2 * v2781 * v2764 - 4 * v2781);
            v2164 = v2784;
            v2165 = v2788;
            v2166 = v2761;
            do
            {
              v2218 = v2215;
              v2215 = v2214;
              v2214 = v2213;
              v2213 = v2212;
              v2212 = vzip1q_s8(*v2217, v26);
              v2219 = vsubq_s16(vshlq_n_s16(vaddq_s16(v2215, v2214), 2uLL), vaddq_s16(v2218, v2213));
              *(&v2890 + v2207) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v2216, v2219), vshlq_n_s16(v2219, 2uLL)), vaddq_s16(v2212, v27)), 5uLL))), v2214);
              v2207 += 16;
              v2217 = (v2217 + v136);
              v2216 = v2218;
            }

            while (v2207 != 64);
            break;
          case 4:
            v2180 = v181;
            sub_27729C91C(&v2890, 0x10u, v181, v136);
            sub_27729C91C(&v2890.i64[1], 0x10u, (v2180 + 1), v136);
            goto LABEL_996;
          case 5:
            v2242 = v181;
            *v2243.i64 = sub_27729CAF0(&v2890, 0x10u, v181, v136, v275, *v160.i64, *v161.i64, *v162.i64, *v144.i64, a9, a10, a11);
            sub_27729CAF0(&v2890.i64[1], 0x10u, (v2242 + 1), v136, v2243, v2244, v2245, v2246, v2247, v2248, v2249, v2250);
            goto LABEL_996;
          case 6:
            v2260 = v181;
            *v2261.i64 = sub_27729CDD0(&v2890, 0x10u, v181, v136, v275, v160, v161, v162, v144, a9, a10, a11);
            sub_27729CDD0(&v2890.i64[1], 0x10u, (v2260 + 1), v136, v2261, v2262, v2263, v2264, v2265, v2266, v2267, v2268);
            goto LABEL_996;
          case 7:
            v2220 = v181;
            v2221 = sub_27729D274(&v2890, 0x10u, v181, v136, *v275.i64, *v160.i64, *v161.i64, *v162.i64, *v144.i64, a9.n128_f64[0], a10, a11);
            sub_27729D274(&v2890.i64[1], 0x10u, (v2220 + 1), v136, v2221, v2222, v2223, v2224, v2225, v2226, v2227, v2228);
            goto LABEL_996;
          case 8:
            v2269 = v181;
            sub_27729D550(&v2890, 0x10u, v181, v136);
            sub_27729D550(&v2890.i64[1], 0x10u, (v2269 + 1), v136);
            goto LABEL_996;
          case 9:
            v2182 = v181;
            sub_27729D714(&v2890, 0x10u, v181, v136);
            sub_27729D714(&v2890.i64[1], 0x10u, (v2182 + 1), v136);
            goto LABEL_996;
          case 10:
            sub_27729B7DC(&v2890, 16, v181, v136, 4);
            goto LABEL_996;
          case 11:
            v2179 = v181;
            sub_27729DE6C(&v2890, 0x10u, v181, v136);
            sub_27729DE6C(&v2890.i64[1], 0x10u, (v2179 + 1), v136);
            goto LABEL_996;
          case 12:
            v2181 = v181;
            sub_27729E5C4(&v2890, 0x10u, v181, v136);
            sub_27729E5C4(&v2890.i64[1], 0x10u, (v2181 + 1), v136);
            goto LABEL_996;
          case 13:
            v2251 = v181;
            *v2252.i64 = sub_27729E798(&v2890, 0x10u, v181, v136, v275, *v160.i64, *v161.i64, *v162.i64, *v144.i64, a9, a10, a11);
            sub_27729E798(&v2890.i64[1], 0x10u, (v2251 + 1), v136, v2252, v2253, v2254, v2255, v2256, v2257, v2258, v2259);
            goto LABEL_996;
          case 14:
            v2170 = v181;
            *v2171.i64 = sub_27729EA7C(&v2890, 0x10u, v181, v136, v275, v160, v161, v162, v144, a9, a10, a11);
            sub_27729EA7C(&v2890.i64[1], 0x10u, (v2170 + 1), v136, v2171, v2172, v2173, v2174, v2175, v2176, v2177, v2178);
            goto LABEL_996;
          case 15:
            v2198 = v181;
            v2199 = sub_27729EF20(&v2890, 0x10u, v181, v136, *v275.i64, *v160.i64, *v161.i64, *v162.i64, *v144.i64, a9.n128_f64[0], a10, a11);
            sub_27729EF20(&v2890.i64[1], 0x10u, (v2198 + 1), v136, v2199, v2200, v2201, v2202, v2203, v2204, v2205, v2206);
LABEL_996:
            v2164 = v2784;
            v2165 = v2788;
            v2166 = v2761;
            break;
          default:
            v2163 = 0;
            v2164 = v2784;
            v2165 = v2788;
            v2166 = v2761;
            do
            {
              v2167 = &v2890.i8[v2163];
              v2168 = *v181;
              v181 = (v181 + v136);
              v2169 = v26.i64[0];
              vst2_s8(v2167, v2168);
              v2163 += 16;
            }

            while (v2163 != 64);
            break;
        }

        v2270 = vrhaddq_u16(v2886, v2890);
        v2271 = vrhaddq_u16(v2887, v2891);
        v2272 = vrhaddq_u16(v2888, v2892);
        v2273 = vrhaddq_u16(v2889[0], v2893[0]);
        if (a2)
        {
          v2270 = vaddq_s16(*v172, v2270);
          v2271 = vaddq_s16(*(v172 + 32), v2271);
          v2272 = vaddq_s16(*(v172 + 64), v2272);
          v2273 = vaddq_s16(*(v172 + 96), v2273);
        }

        *v177 = vqmovun_s16(v2270);
        *(v177 + v2164) = vqmovun_s16(v2271);
        *(v177 + v2165) = vqmovun_s16(v2272);
        *(v177 + v2166) = vqmovun_s16(v2273);
        sub_2772906A8(&v2895, _X24, v2849, &v2904);
        sub_2772906A8(&v2900, _X26, v2801, &v2908);
        v2274 = vrhaddq_u16(v2895, v2900);
        v2275 = vrhaddq_u16(v2896, v2901);
        v20 = a3;
        if (a3)
        {
          v2274 = vaddq_s16(*v176, v2274);
          v2275 = vaddq_s16(*(v176 + 32), v2275);
        }

        v28.i64[0] = 0x20002000200020;
        v28.i64[1] = 0x20002000200020;
        v19 = v2850;
        *v178 = vqmovun_s16(v2274);
        *(v178 + v2783) = vqmovun_s16(v2275);
        v11 = v2857;
        v26 = v2871;
        v27.i64[0] = 0x10001000100010;
        v27.i64[1] = 0x10001000100010;
      }

      else
      {
        v21 = a2;
        if (v2795 == 8)
        {
          v2770 = v183;
          v2774 = v179;
          v2856 = v11;
          v2870 = v26;
          switch(v135)
          {
            case 1:
              v1733 = 0;
              v1734 = &v180[-v2776];
              v1735 = (v1734 + v2822);
              v1736 = (v1735 + v2822);
              v1737 = (v1736 + v2822);
              v1738 = vzip1q_s8(*(v1737 + v2822), v26);
              v1739 = vzip1q_s8(*v1737, v26);
              v1740 = vzip1q_s8(*v1736, v26);
              v1741 = vzip1q_s8(*v1735, v26);
              v1742 = vzip1q_s8(*v1734, v26);
              v1743 = (v2806 + 5 * v2822 + v153 + 2 * v2776 * v154 - 4 * v2776);
              v268 = v2790;
              do
              {
                v1744 = v1741;
                v1741 = v1740;
                v1740 = v1739;
                v1739 = v1738;
                v1738 = vzip1q_s8(*v1743, v26);
                v1745 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1741, v1740), 2uLL), vaddq_s16(v1744, v1739));
                *(&v2886 + v1733) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1742, v1745), vshlq_n_s16(v1745, 2uLL)), vaddq_s16(v1738, v27)), 5uLL))), v1741);
                v1733 += 16;
                v1743 = (v1743 + v2822);
                v1742 = v1744;
              }

              while (v1733 != 128);
              break;
            case 2:
              v1633 = 0;
              v1634 = &v180[-v2776];
              v1635 = (v1634 + v2822);
              v1636 = (v1635 + v2822);
              v1637 = (v1636 + v2822);
              v1638 = vzip1q_s8(*(v1637 + v2822), v26);
              v1639 = vzip1q_s8(*v1637, v26);
              v1640 = vzip1q_s8(*v1636, v26);
              v1641 = vzip1q_s8(*v1635, v26);
              v1642 = vzip1q_s8(*v1634, v26);
              v1643 = (v2806 + 5 * v2822 + v153 + 2 * v2776 * v154 - 4 * v2776);
              v268 = v2790;
              do
              {
                v1644 = v1641;
                v1641 = v1640;
                v1640 = v1639;
                v1639 = v1638;
                v1645 = &v2886.i8[v1633];
                v1638 = vzip1q_s8(*v1643, v26);
                v1646 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1641, v1640), 2uLL), vaddq_s16(v1644, v1639));
                v1646.val[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1642, v1646), vshlq_n_s16(v1646, 2uLL)), vaddq_s16(v1638, v27)), 5uLL));
                v1647 = v26.i64[0];
                vst2_s8(v1645, v1646);
                v1633 += 16;
                v1643 = (v1643 + v2822);
                v1642 = v1644;
              }

              while (v1633 != 128);
              break;
            case 3:
              v1666 = 0;
              v1667 = &v180[-v2776];
              v1668 = (v1667 + v2822);
              v1669 = (v1668 + v2822);
              v1670 = (v1669 + v2822);
              v1671 = vzip1q_s8(*(v1670 + v2822), v26);
              v1672 = vzip1q_s8(*v1670, v26);
              v1673 = vzip1q_s8(*v1669, v26);
              v1674 = vzip1q_s8(*v1668, v26);
              v1675 = vzip1q_s8(*v1667, v26);
              v1676 = (v2806 + 5 * v2822 + v153 + 2 * v2776 * v154 - 4 * v2776);
              v268 = v2790;
              do
              {
                v1677 = v1674;
                v1674 = v1673;
                v1673 = v1672;
                v1672 = v1671;
                v1671 = vzip1q_s8(*v1676, v26);
                v1678 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1674, v1673), 2uLL), vaddq_s16(v1677, v1672));
                *(&v2886 + v1666) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1675, v1678), vshlq_n_s16(v1678, 2uLL)), vaddq_s16(v1671, v27)), 5uLL))), v1673);
                v1666 += 16;
                v1676 = (v1676 + v2822);
                v1675 = v1677;
              }

              while (v1666 != 128);
              break;
            case 4:
              v1618 = 0;
              v1619 = (v180 - 2);
              v268 = v2790;
              do
              {
                v1620 = *v1619;
                v1619 = (v1619 + v2822);
                v1621 = vzip1q_s8(vextq_s8(v1620, v1620, 2uLL), v26);
                v1622 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1621, vzip1q_s8(vextq_s8(v1620, v1620, 3uLL), v26)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1620, v1620, 1uLL), v26), vzip1q_s8(vextq_s8(v1620, v1620, 4uLL), v26)));
                *(&v2886 + v1618) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1622, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1620, v26), vzip1q_s8(vextq_s8(v1620, v1620, 5uLL), v26)), v1622)), v27), 5uLL))), v1621);
                v1618 += 16;
              }

              while (v1618 != 128);
              break;
            case 5:
              v1653 = v2806 + v153 + v154 * v2822;
              v1654 = v2822;
              v1598 = v181;
              v1655 = 2;
              goto LABEL_865;
            case 6:
              v1598 = v181;
              sub_27729BFC4(v2886.i8, 0x10u, v2806 + v153 + v154 * v2822, v2822);
              goto LABEL_875;
            case 7:
              v1653 = v2806 + v153 + v154 * v2822;
              v1654 = v2822;
              v1598 = v181;
              v1655 = 3;
LABEL_865:
              v1866 = 2;
              goto LABEL_874;
            case 8:
              v2019 = 0;
              v2020 = (v180 - 2);
              v268 = v2790;
              do
              {
                v2021 = &v2886.i8[v2019];
                v2022 = *v2020;
                v2020 = (v2020 + v2822);
                v2023 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v2022, v2022, 2uLL), v26), vzip1q_s8(vextq_s8(v2022, v2022, 3uLL), v26)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v2022, v2022, 1uLL), v26), vzip1q_s8(vextq_s8(v2022, v2022, 4uLL), v26)));
                *v2022.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v2023, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v2022, v26), vzip1q_s8(vextq_s8(v2022, v2022, 5uLL), v26)), v2023)), v27), 5uLL));
                v2023.i64[0] = v26.i64[0];
                vst2_s8(v2021, v2022);
                v2019 += 16;
              }

              while (v2019 != 128);
              break;
            case 9:
              v1598 = v181;
              sub_27729B614(v2886.i8, 0x10u, v2806 + v153 + v154 * v2822, v2822, 8);
              goto LABEL_875;
            case 10:
              v1598 = v181;
              sub_27729B7DC(&v2886, 16, v2806 + v153 + v154 * v2822, v2822, 8);
              goto LABEL_875;
            case 11:
              v1598 = v181;
              sub_27729B98C(v2886.i8, 0x10u, v2806 + v153 + v154 * v2822, v2822, 8);
              goto LABEL_875;
            case 12:
              v1623 = 0;
              v1624 = (v180 - 2);
              v268 = v2790;
              do
              {
                v1625 = *v1624;
                v1624 = (v1624 + v2822);
                v1626 = vzip1q_s8(vextq_s8(v1625, v1625, 3uLL), v26);
                v1627 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1625, v1625, 2uLL), v26), v1626), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1625, v1625, 1uLL), v26), vzip1q_s8(vextq_s8(v1625, v1625, 4uLL), v26)));
                *(&v2886 + v1623) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1627, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1625, v26), vzip1q_s8(vextq_s8(v1625, v1625, 5uLL), v26)), v1627)), v27), 5uLL))), v1626);
                v1623 += 16;
              }

              while (v1623 != 128);
              break;
            case 13:
              v1653 = v2806 + v153 + v154 * v2822;
              v1654 = v2822;
              v1598 = v181;
              v1655 = 2;
              goto LABEL_873;
            case 14:
              v1598 = v181;
              sub_27729C39C(v2886.i8, 0x10u, v2806 + v153 + v154 * v2822, v2822);
              goto LABEL_875;
            case 15:
              v1653 = v2806 + v153 + v154 * v2822;
              v1654 = v2822;
              v1598 = v181;
              v1655 = 3;
LABEL_873:
              v1866 = 3;
LABEL_874:
              sub_27729C774(v2886.i8, v1653, v1654, 8, v1655, v1866);
LABEL_875:
              v181 = v1598;
              v27.i64[0] = 0x10001000100010;
              v27.i64[1] = 0x10001000100010;
              v11 = v2856;
              v26 = v2870;
              v268 = v2790;
              break;
            default:
              v267 = 0;
              v268 = v2790;
              do
              {
                v269 = &v2886.i8[v267];
                v270 = *v180;
                v180 = (v180 + v2822);
                v271 = v26.i64[0];
                vst2_s8(v269, v270);
                v267 += 16;
              }

              while (v267 != 128);
              break;
          }

          switch(v268)
          {
            case 1:
              v1946 = 0;
              v1947 = &v181[-v2781];
              v1948 = (v1947 + v136);
              v1949 = (v1948 + v136);
              v1950 = (v1949 + v136);
              v1951 = vzip1q_s8(*(v1950 + v136), v26);
              v1952 = vzip1q_s8(*v1950, v26);
              v1953 = vzip1q_s8(*v1949, v26);
              v1954 = vzip1q_s8(*v1948, v26);
              v1955 = vzip1q_s8(*v1947, v26);
              v1899 = v2801;
              v1956 = (v2804 + 5 * v136 + v2765 + 2 * v2781 * v2764 - 4 * v2781);
              v20 = a3;
              v1893 = v2831;
              v1895 = v2783;
              v1894 = v2784;
              v1896 = v2788;
              v1897 = v2761;
              v1898 = v2755;
              v28.i64[0] = 0x20002000200020;
              v28.i64[1] = 0x20002000200020;
              v19 = v2850;
              v1900 = v2774;
              v1901 = v2777;
              do
              {
                v1957 = v1954;
                v1954 = v1953;
                v1953 = v1952;
                v1952 = v1951;
                v1951 = vzip1q_s8(*v1956, v26);
                v1958 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1954, v1953), 2uLL), vaddq_s16(v1957, v1952));
                *(&v2890 + v1946) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1955, v1958), vshlq_n_s16(v1958, 2uLL)), vaddq_s16(v1951, v27)), 5uLL))), v1954);
                v1946 += 16;
                v1956 = (v1956 + v136);
                v1955 = v1957;
              }

              while (v1946 != 128);
              break;
            case 2:
              v1915 = 0;
              v1916 = &v181[-v2781];
              v1917 = (v1916 + v136);
              v1918 = (v1917 + v136);
              v1919 = (v1918 + v136);
              v1920 = vzip1q_s8(*(v1919 + v136), v26);
              v1921 = vzip1q_s8(*v1919, v26);
              v1922 = vzip1q_s8(*v1918, v26);
              v1923 = vzip1q_s8(*v1917, v26);
              v1924 = vzip1q_s8(*v1916, v26);
              v1899 = v2801;
              v1925 = (v2804 + 5 * v136 + v2765 + 2 * v2781 * v2764 - 4 * v2781);
              v20 = a3;
              v1893 = v2831;
              v1895 = v2783;
              v1894 = v2784;
              v1896 = v2788;
              v1897 = v2761;
              v1898 = v2755;
              v28.i64[0] = 0x20002000200020;
              v28.i64[1] = 0x20002000200020;
              v19 = v2850;
              v1900 = v2774;
              v1901 = v2777;
              do
              {
                v1926 = v1923;
                v1923 = v1922;
                v1922 = v1921;
                v1921 = v1920;
                v1927 = &v2890.i8[v1915];
                v1920 = vzip1q_s8(*v1925, v26);
                v1928 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1923, v1922), 2uLL), vaddq_s16(v1926, v1921));
                v1928.val[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1924, v1928), vshlq_n_s16(v1928, 2uLL)), vaddq_s16(v1920, v27)), 5uLL));
                v1929 = v26.i64[0];
                vst2_s8(v1927, v1928);
                v1915 += 16;
                v1925 = (v1925 + v136);
                v1924 = v1926;
              }

              while (v1915 != 128);
              break;
            case 3:
              v1933 = 0;
              v1934 = &v181[-v2781];
              v1935 = (v1934 + v136);
              v1936 = (v1935 + v136);
              v1937 = (v1936 + v136);
              v1938 = vzip1q_s8(*(v1937 + v136), v26);
              v1939 = vzip1q_s8(*v1937, v26);
              v1940 = vzip1q_s8(*v1936, v26);
              v1941 = vzip1q_s8(*v1935, v26);
              v1942 = vzip1q_s8(*v1934, v26);
              v1899 = v2801;
              v1943 = (v2804 + 5 * v136 + v2765 + 2 * v2781 * v2764 - 4 * v2781);
              v20 = a3;
              v1893 = v2831;
              v1895 = v2783;
              v1894 = v2784;
              v1896 = v2788;
              v1897 = v2761;
              v1898 = v2755;
              v28.i64[0] = 0x20002000200020;
              v28.i64[1] = 0x20002000200020;
              v19 = v2850;
              v1900 = v2774;
              v1901 = v2777;
              do
              {
                v1944 = v1941;
                v1941 = v1940;
                v1940 = v1939;
                v1939 = v1938;
                v1938 = vzip1q_s8(*v1943, v26);
                v1945 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1941, v1940), 2uLL), vaddq_s16(v1944, v1939));
                *(&v2890 + v1933) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1942, v1945), vshlq_n_s16(v1945, 2uLL)), vaddq_s16(v1938, v27)), 5uLL))), v1940);
                v1933 += 16;
                v1943 = (v1943 + v136);
                v1942 = v1944;
              }

              while (v1933 != 128);
              break;
            case 4:
              v1905 = 0;
              v1906 = (v181 - 2);
              v20 = a3;
              v1893 = v2831;
              v1895 = v2783;
              v1894 = v2784;
              v1896 = v2788;
              v1897 = v2761;
              v1898 = v2755;
              v28.i64[0] = 0x20002000200020;
              v28.i64[1] = 0x20002000200020;
              v19 = v2850;
              v1899 = v2801;
              v1900 = v2774;
              v1901 = v2777;
              do
              {
                v1907 = *v1906;
                v1906 = (v1906 + v136);
                v1908 = vzip1q_s8(vextq_s8(v1907, v1907, 2uLL), v26);
                v1909 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1908, vzip1q_s8(vextq_s8(v1907, v1907, 3uLL), v26)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1907, v1907, 1uLL), v26), vzip1q_s8(vextq_s8(v1907, v1907, 4uLL), v26)));
                *(&v2890 + v1905) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1909, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1907, v26), vzip1q_s8(vextq_s8(v1907, v1907, 5uLL), v26)), v1909)), v27), 5uLL))), v1908);
                v1905 += 16;
              }

              while (v1905 != 128);
              break;
            case 5:
              v1930 = v181;
              v1931 = v136;
              v1932 = 2;
              goto LABEL_901;
            case 6:
              sub_27729BFC4(v2890.i8, 0x10u, v181, v136);
              goto LABEL_906;
            case 7:
              v1930 = v181;
              v1931 = v136;
              v1932 = 3;
LABEL_901:
              v1959 = 2;
              goto LABEL_905;
            case 8:
              v2024 = 0;
              v2025 = (v181 - 2);
              v20 = a3;
              v1893 = v2831;
              v1895 = v2783;
              v1894 = v2784;
              v1896 = v2788;
              v1897 = v2761;
              v1898 = v2755;
              v28.i64[0] = 0x20002000200020;
              v28.i64[1] = 0x20002000200020;
              v19 = v2850;
              v1899 = v2801;
              v1900 = v2774;
              v1901 = v2777;
              do
              {
                v2026 = &v2890.i8[v2024];
                v2027 = *v2025;
                v2025 = (v2025 + v136);
                v2028 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v2027, v2027, 2uLL), v26), vzip1q_s8(vextq_s8(v2027, v2027, 3uLL), v26)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v2027, v2027, 1uLL), v26), vzip1q_s8(vextq_s8(v2027, v2027, 4uLL), v26)));
                *v2027.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v2028, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v2027, v26), vzip1q_s8(vextq_s8(v2027, v2027, 5uLL), v26)), v2028)), v27), 5uLL));
                v2028.i64[0] = v26.i64[0];
                vst2_s8(v2026, v2027);
                v2024 += 16;
              }

              while (v2024 != 128);
              break;
            case 9:
              sub_27729B614(v2890.i8, 0x10u, v181, v136, 8);
              goto LABEL_906;
            case 10:
              sub_27729B7DC(&v2890, 16, v181, v136, 8);
              goto LABEL_906;
            case 11:
              sub_27729B98C(v2890.i8, 0x10u, v181, v136, 8);
              goto LABEL_906;
            case 12:
              v1910 = 0;
              v1911 = (v181 - 2);
              v20 = a3;
              v1893 = v2831;
              v1895 = v2783;
              v1894 = v2784;
              v1896 = v2788;
              v1897 = v2761;
              v1898 = v2755;
              v28.i64[0] = 0x20002000200020;
              v28.i64[1] = 0x20002000200020;
              v19 = v2850;
              v1899 = v2801;
              v1900 = v2774;
              v1901 = v2777;
              do
              {
                v1912 = *v1911;
                v1911 = (v1911 + v136);
                v1913 = vzip1q_s8(vextq_s8(v1912, v1912, 3uLL), v26);
                v1914 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1912, v1912, 2uLL), v26), v1913), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1912, v1912, 1uLL), v26), vzip1q_s8(vextq_s8(v1912, v1912, 4uLL), v26)));
                *(&v2890 + v1910) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1914, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1912, v26), vzip1q_s8(vextq_s8(v1912, v1912, 5uLL), v26)), v1914)), v27), 5uLL))), v1913);
                v1910 += 16;
              }

              while (v1910 != 128);
              break;
            case 13:
              v1930 = v181;
              v1931 = v136;
              v1932 = 2;
              goto LABEL_904;
            case 14:
              sub_27729C39C(v2890.i8, 0x10u, v181, v136);
              goto LABEL_906;
            case 15:
              v1930 = v181;
              v1931 = v136;
              v1932 = 3;
LABEL_904:
              v1959 = 3;
LABEL_905:
              sub_27729C774(v2890.i8, v1930, v1931, 8, v1932, v1959);
LABEL_906:
              v27.i64[0] = 0x10001000100010;
              v27.i64[1] = 0x10001000100010;
              v11 = v2856;
              v26 = v2870;
              v20 = a3;
              v1893 = v2831;
              v1895 = v2783;
              v1894 = v2784;
              v1896 = v2788;
              v1897 = v2761;
              v1898 = v2755;
              v28.i64[0] = 0x20002000200020;
              v28.i64[1] = 0x20002000200020;
              v19 = v2850;
              v1899 = v2801;
              v1900 = v2774;
              v1901 = v2777;
              break;
            default:
              v1892 = 0;
              v20 = a3;
              v1893 = v2831;
              v1895 = v2783;
              v1894 = v2784;
              v1896 = v2788;
              v1897 = v2761;
              v1898 = v2755;
              v28.i64[0] = 0x20002000200020;
              v28.i64[1] = 0x20002000200020;
              v19 = v2850;
              v1899 = v2801;
              v1900 = v2774;
              v1901 = v2777;
              do
              {
                v1902 = &v2890.i8[v1892];
                v1903 = *v181;
                v181 = (v181 + v136);
                v1904 = v26.i64[0];
                vst2_s8(v1902, v1903);
                v1892 += 16;
              }

              while (v1892 != 128);
              break;
          }

          v1964 = 1;
          v1965 = &v2886;
          do
          {
            v1966 = v1964;
            v1967 = vrhaddq_u16(*v1965, v1965[32]);
            v1968 = vrhaddq_u16(v1965[1], v1965[33]);
            v1969 = vrhaddq_u16(v1965[2], v1965[34]);
            v1970 = vrhaddq_u16(v1965[3], v1965[35]);
            if (a2)
            {
              v1971 = *v172;
              v1972 = *(v172 + 32);
              v1973 = *(v172 + 64);
              v1974 = *(v172 + 96);
              v172 += 128;
              v1967 = vaddq_s16(v1971, v1967);
              v1968 = vaddq_s16(v1972, v1968);
              v1969 = vaddq_s16(v1973, v1969);
              v1970 = vaddq_s16(v1974, v1970);
            }

            v1964 = 0;
            v1965 += 4;
            *v177 = vqmovun_s16(v1967);
            *(v177 + v1894) = vqmovun_s16(v1968);
            *(v177 + v1896) = vqmovun_s16(v1969);
            *(v177 + v1897) = vqmovun_s16(v1970);
            v177 = (v177 + v1898);
          }

          while ((v1966 & 1) != 0);
          v1975 = 0;
          _X9 = &_X24->i8[v2849];
          __asm { PRFM            #0, [X9] }

          v1967.i64[0] = _X24->i64[0];
          v1978 = vqtbl1q_s8(v1967, xmmword_2773B3E00);
          v1978.i16[3] = _X24->i16[4];
          v1979 = vzip1q_s8(v1978, v26);
          v1980 = vzip1q_s8(v1967, v26);
          v1981 = v2904;
          v1982 = v2905;
          v1983 = v2906;
          v1984 = v2907;
          v1985 = v2778;
          if (v2778 <= -16)
          {
            v1985 = -16;
          }

          if (v1985 >= v1901)
          {
            v1985 = v1901;
          }

          v1986 = v1893 + v1900 + v1985;
          do
          {
            _X12 = v1986 + 2 * v2849;
            v1986 += v2849;
            __asm { PRFM            #0, [X12] }

            v1989 = vmlaq_s16(vmulq_s16(v1982, v1979), v1981, v1980);
            v1979.i64[0] = *v1986;
            v1980 = vzip1q_s8(v1979, v26);
            v1990 = vqtbl1q_s8(v1979, xmmword_2773B3E00);
            v1990.i16[3] = *(v1986 + 8);
            v1979 = vzip1q_s8(v1990, v26);
            *(&v2895 + v1975) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1989, v1983, v1980), v1984, v1979), v28), 6uLL);
            v1975 += 16;
          }

          while (v1975 != 64);
          _X9 = &_X26->i8[v1899];
          __asm { PRFM            #0, [X9] }

          v1981.i64[0] = _X26->i64[0];
          v1993 = vqtbl1q_s8(v1981, xmmword_2773B3E00);
          v1993.i16[3] = _X26->i16[4];
          v1994 = vzip1q_s8(v1993, v26);
          v1995 = vzip1q_s8(v1981, v26);
          v1996 = v2908;
          v1997 = v2909;
          v1998 = v2910;
          v1999 = v2911;
          v2000 = v2779;
          if (v2779 <= -16)
          {
            v2000 = -16;
          }

          if (v2000 >= v2780)
          {
            v2000 = v2780;
          }

          v2001 = v132 + v2770 + v2000;
          v2002 = 256;
          do
          {
            _X12 = v2001 + 2 * v1899;
            v2001 += v1899;
            __asm { PRFM            #0, [X12] }

            v2005 = vmlaq_s16(vmulq_s16(v1997, v1994), v1996, v1995);
            v1994.i64[0] = *v2001;
            v1995 = vzip1q_s8(v1994, v26);
            v2006 = vqtbl1q_s8(v1994, xmmword_2773B3E00);
            v2006.i16[3] = *(v2001 + 8);
            v1994 = vzip1q_s8(v2006, v26);
            *(&v2895 + v2002) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v2005, v1998, v1995), v1999, v1994), v28), 6uLL);
            v2002 += 16;
          }

          while (v2002 != 320);
          a9 = v2898[0];
          a10 = v2902;
          a11 = v2903;
          v2007 = vrhaddq_u16(v2895, v2900);
          v2008 = vrhaddq_u16(v2896, v2901);
          v2009 = vrhaddq_u16(v2897, v2902);
          v2010 = vrhaddq_u16(v2898[0], v2903);
          if (v20)
          {
            a9 = *(v176 + 32);
            a10 = *(v176 + 64);
            a11 = *(v176 + 96);
            v2007 = vaddq_s16(*v176, v2007);
            v2008 = vaddq_s16(a9, v2008);
            v2009 = vaddq_s16(a10, v2009);
            v2010 = vaddq_s16(a11, v2010);
          }

          *v178 = vqmovun_s16(v2007);
          *(v178 + v1895) = vqmovun_s16(v2008);
          *(v178 + v2775) = vqmovun_s16(v2009);
          *(v178 + v2754) = vqmovun_s16(v2010);
        }

        else if (v2795 == 16)
        {
          v2769 = v183;
          v2773 = v179;
          v2851 = v11;
          v2865 = v26;
          switch(v135)
          {
            case 1:
              v1867 = 0;
              v1868 = &v180[-v2776];
              v1869 = (v1868 + v2822);
              v1870 = (v1869 + v2822);
              v1871 = (v1870 + v2822);
              v1872 = vzip1q_s8(*(v1871 + v2822), v26);
              v1873 = vzip1q_s8(*v1871, v26);
              v1874 = vzip1q_s8(*v1870, v26);
              v1875 = vzip1q_s8(*v1869, v26);
              v1876 = vzip1q_s8(*v1868, v26);
              v1877 = (v2806 + 5 * v2822 + v153 + 2 * v2776 * v154 - 4 * v2776);
              v192 = v2790;
              do
              {
                v1878 = v1875;
                v1875 = v1874;
                v1874 = v1873;
                v1873 = v1872;
                v1872 = vzip1q_s8(*v1877, v26);
                v1879 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1875, v1874), 2uLL), vaddq_s16(v1878, v1873));
                *(&v2886 + v1867) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1876, v1879), vshlq_n_s16(v1879, 2uLL)), vaddq_s16(v1872, v27)), 5uLL))), v1875);
                v1867 += 16;
                v1877 = (v1877 + v2822);
                v1876 = v1878;
              }

              while (v1867 != 256);
              break;
            case 2:
              v1718 = 0;
              v1719 = &v180[-v2776];
              v1720 = (v1719 + v2822);
              v1721 = (v1720 + v2822);
              v1722 = (v1721 + v2822);
              v1723 = vzip1q_s8(*(v1722 + v2822), v26);
              v1724 = vzip1q_s8(*v1722, v26);
              v1725 = vzip1q_s8(*v1721, v26);
              v1726 = vzip1q_s8(*v1720, v26);
              v1727 = vzip1q_s8(*v1719, v26);
              v1728 = (v2806 + 5 * v2822 + v153 + 2 * v2776 * v154 - 4 * v2776);
              v192 = v2790;
              do
              {
                v1729 = v1726;
                v1726 = v1725;
                v1725 = v1724;
                v1724 = v1723;
                v1730 = &v2886.i8[v1718];
                v1723 = vzip1q_s8(*v1728, v26);
                v1731 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1726, v1725), 2uLL), vaddq_s16(v1729, v1724));
                v1731.val[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1727, v1731), vshlq_n_s16(v1731, 2uLL)), vaddq_s16(v1723, v27)), 5uLL));
                v1732 = v26.i64[0];
                vst2_s8(v1730, v1731);
                v1718 += 16;
                v1728 = (v1728 + v2822);
                v1727 = v1729;
              }

              while (v1718 != 256);
              break;
            case 3:
              v1808 = 0;
              v1809 = &v180[-v2776];
              v1810 = (v1809 + v2822);
              v1811 = (v1810 + v2822);
              v1812 = (v1811 + v2822);
              v1813 = vzip1q_s8(*(v1812 + v2822), v26);
              v1814 = vzip1q_s8(*v1812, v26);
              v1815 = vzip1q_s8(*v1811, v26);
              v1816 = vzip1q_s8(*v1810, v26);
              v1817 = vzip1q_s8(*v1809, v26);
              v1818 = (v2806 + 5 * v2822 + v153 + 2 * v2776 * v154 - 4 * v2776);
              v192 = v2790;
              do
              {
                v1819 = v1816;
                v1816 = v1815;
                v1815 = v1814;
                v1814 = v1813;
                v1813 = vzip1q_s8(*v1818, v26);
                v1820 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1816, v1815), 2uLL), vaddq_s16(v1819, v1814));
                *(&v2886 + v1808) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1817, v1820), vshlq_n_s16(v1820, 2uLL)), vaddq_s16(v1813, v27)), 5uLL))), v1815);
                v1808 += 16;
                v1818 = (v1818 + v2822);
                v1817 = v1819;
              }

              while (v1808 != 256);
              break;
            case 4:
              v1628 = 0;
              v1629 = (v180 - 2);
              v192 = v2790;
              do
              {
                v1630 = *v1629;
                v1629 = (v1629 + v2822);
                v1631 = vzip1q_s8(vextq_s8(v1630, v1630, 2uLL), v26);
                v1632 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1631, vzip1q_s8(vextq_s8(v1630, v1630, 3uLL), v26)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1630, v1630, 1uLL), v26), vzip1q_s8(vextq_s8(v1630, v1630, 4uLL), v26)));
                *(&v2886 + v1628) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1632, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1630, v26), vzip1q_s8(vextq_s8(v1630, v1630, 5uLL), v26)), v1632)), v27), 5uLL))), v1631);
                v1628 += 16;
              }

              while (v1628 != 256);
              break;
            case 5:
              v1770 = v2806 + v153 + v154 * v2822;
              v1771 = v2822;
              v1607 = v181;
              v1772 = 2;
              goto LABEL_966;
            case 6:
              v1607 = v181;
              sub_27729B1B0(v2886.i8, 0x10u, v2806 + v153 + v154 * v2822, v2822);
              goto LABEL_1005;
            case 7:
              v1770 = v2806 + v153 + v154 * v2822;
              v1771 = v2822;
              v1607 = v181;
              v1772 = 3;
LABEL_966:
              v2161 = 2;
              goto LABEL_1004;
            case 8:
              v2401 = 0;
              v2402 = (v180 - 2);
              v192 = v2790;
              do
              {
                v2403 = &v2886.i8[v2401];
                v2404 = *v2402;
                v2402 = (v2402 + v2822);
                v2405 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v2404, v2404, 2uLL), v26), vzip1q_s8(vextq_s8(v2404, v2404, 3uLL), v26)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v2404, v2404, 1uLL), v26), vzip1q_s8(vextq_s8(v2404, v2404, 4uLL), v26)));
                *v2404.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v2405, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v2404, v26), vzip1q_s8(vextq_s8(v2404, v2404, 5uLL), v26)), v2405)), v27), 5uLL));
                v2405.i64[0] = v26.i64[0];
                vst2_s8(v2403, v2404);
                v2401 += 16;
              }

              while (v2401 != 256);
              break;
            case 9:
              v1607 = v181;
              sub_27729B614(v2886.i8, 0x10u, v2806 + v153 + v154 * v2822, v2822, 16);
              goto LABEL_1005;
            case 10:
              v1607 = v181;
              sub_27729B7DC(&v2886, 16, v2806 + v153 + v154 * v2822, v2822, 16);
              goto LABEL_1005;
            case 11:
              v1607 = v181;
              sub_27729B98C(v2886.i8, 0x10u, v2806 + v153 + v154 * v2822, v2822, 16);
              goto LABEL_1005;
            case 12:
              v1648 = 0;
              v1649 = (v180 - 2);
              v192 = v2790;
              do
              {
                v1650 = *v1649;
                v1649 = (v1649 + v2822);
                v1651 = vzip1q_s8(vextq_s8(v1650, v1650, 3uLL), v26);
                v1652 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1650, v1650, 2uLL), v26), v1651), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1650, v1650, 1uLL), v26), vzip1q_s8(vextq_s8(v1650, v1650, 4uLL), v26)));
                *(&v2886 + v1648) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1652, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1650, v26), vzip1q_s8(vextq_s8(v1650, v1650, 5uLL), v26)), v1652)), v27), 5uLL))), v1651);
                v1648 += 16;
              }

              while (v1648 != 256);
              break;
            case 13:
              v1770 = v2806 + v153 + v154 * v2822;
              v1771 = v2822;
              v1607 = v181;
              v1772 = 2;
              goto LABEL_1003;
            case 14:
              v1607 = v181;
              sub_27729BBEC(v2886.i8, 0x10u, v2806 + v153 + v154 * v2822, v2822);
              goto LABEL_1005;
            case 15:
              v1770 = v2806 + v153 + v154 * v2822;
              v1771 = v2822;
              v1607 = v181;
              v1772 = 3;
LABEL_1003:
              v2161 = 3;
LABEL_1004:
              sub_27729C774(v2886.i8, v1770, v1771, 16, v1772, v2161);
LABEL_1005:
              v181 = v1607;
              v27.i64[0] = 0x10001000100010;
              v27.i64[1] = 0x10001000100010;
              v11 = v2851;
              v26 = v2865;
              v192 = v2790;
              break;
            default:
              v191 = 0;
              v192 = v2790;
              do
              {
                v193 = &v2886.i8[v191];
                v194 = *v180;
                v180 = (v180 + v2822);
                v195 = v26.i64[0];
                vst2_s8(v193, v194);
                v191 += 16;
              }

              while (v191 != 256);
              break;
          }

          switch(v192)
          {
            case 1:
              v2330 = 0;
              v2331 = &v181[-v2781];
              v2332 = (v2331 + v136);
              v2333 = (v2332 + v136);
              v2334 = (v2333 + v136);
              v2335 = vzip1q_s8(*(v2334 + v136), v26);
              v2336 = vzip1q_s8(*v2334, v26);
              v2337 = vzip1q_s8(*v2333, v26);
              v2338 = vzip1q_s8(*v2332, v26);
              v2339 = vzip1q_s8(*v2331, v26);
              v2283 = v2801;
              v2340 = (v2804 + 5 * v136 + v2765 + 2 * v2781 * v2764 - 4 * v2781);
              v20 = a3;
              v2277 = v2831;
              v2279 = v2783;
              v2278 = v2784;
              v2280 = v2788;
              v2281 = v2761;
              v2282 = v2755;
              v28.i64[0] = 0x20002000200020;
              v28.i64[1] = 0x20002000200020;
              v19 = v2850;
              v2284 = v2773;
              v2285 = v2777;
              do
              {
                v2341 = v2338;
                v2338 = v2337;
                v2337 = v2336;
                v2336 = v2335;
                v2335 = vzip1q_s8(*v2340, v26);
                v2342 = vsubq_s16(vshlq_n_s16(vaddq_s16(v2338, v2337), 2uLL), vaddq_s16(v2341, v2336));
                *(&v2890 + v2330) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v2339, v2342), vshlq_n_s16(v2342, 2uLL)), vaddq_s16(v2335, v27)), 5uLL))), v2338);
                v2330 += 16;
                v2340 = (v2340 + v136);
                v2339 = v2341;
              }

              while (v2330 != 256);
              break;
            case 2:
              v2299 = 0;
              v2300 = &v181[-v2781];
              v2301 = (v2300 + v136);
              v2302 = (v2301 + v136);
              v2303 = (v2302 + v136);
              v2304 = vzip1q_s8(*(v2303 + v136), v26);
              v2305 = vzip1q_s8(*v2303, v26);
              v2306 = vzip1q_s8(*v2302, v26);
              v2307 = vzip1q_s8(*v2301, v26);
              v2308 = vzip1q_s8(*v2300, v26);
              v2283 = v2801;
              v2309 = (v2804 + 5 * v136 + v2765 + 2 * v2781 * v2764 - 4 * v2781);
              v20 = a3;
              v2277 = v2831;
              v2279 = v2783;
              v2278 = v2784;
              v2280 = v2788;
              v2281 = v2761;
              v2282 = v2755;
              v28.i64[0] = 0x20002000200020;
              v28.i64[1] = 0x20002000200020;
              v19 = v2850;
              v2284 = v2773;
              v2285 = v2777;
              do
              {
                v2310 = v2307;
                v2307 = v2306;
                v2306 = v2305;
                v2305 = v2304;
                v2311 = &v2890.i8[v2299];
                v2304 = vzip1q_s8(*v2309, v26);
                v2312 = vsubq_s16(vshlq_n_s16(vaddq_s16(v2307, v2306), 2uLL), vaddq_s16(v2310, v2305));
                v2312.val[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v2308, v2312), vshlq_n_s16(v2312, 2uLL)), vaddq_s16(v2304, v27)), 5uLL));
                v2313 = v26.i64[0];
                vst2_s8(v2311, v2312);
                v2299 += 16;
                v2309 = (v2309 + v136);
                v2308 = v2310;
              }

              while (v2299 != 256);
              break;
            case 3:
              v2317 = 0;
              v2318 = &v181[-v2781];
              v2319 = (v2318 + v136);
              v2320 = (v2319 + v136);
              v2321 = (v2320 + v136);
              v2322 = vzip1q_s8(*(v2321 + v136), v26);
              v2323 = vzip1q_s8(*v2321, v26);
              v2324 = vzip1q_s8(*v2320, v26);
              v2325 = vzip1q_s8(*v2319, v26);
              v2326 = vzip1q_s8(*v2318, v26);
              v2283 = v2801;
              v2327 = (v2804 + 5 * v136 + v2765 + 2 * v2781 * v2764 - 4 * v2781);
              v20 = a3;
              v2277 = v2831;
              v2279 = v2783;
              v2278 = v2784;
              v2280 = v2788;
              v2281 = v2761;
              v2282 = v2755;
              v28.i64[0] = 0x20002000200020;
              v28.i64[1] = 0x20002000200020;
              v19 = v2850;
              v2284 = v2773;
              v2285 = v2777;
              do
              {
                v2328 = v2325;
                v2325 = v2324;
                v2324 = v2323;
                v2323 = v2322;
                v2322 = vzip1q_s8(*v2327, v26);
                v2329 = vsubq_s16(vshlq_n_s16(vaddq_s16(v2325, v2324), 2uLL), vaddq_s16(v2328, v2323));
                *(&v2890 + v2317) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v2326, v2329), vshlq_n_s16(v2329, 2uLL)), vaddq_s16(v2322, v27)), 5uLL))), v2324);
                v2317 += 16;
                v2327 = (v2327 + v136);
                v2326 = v2328;
              }

              while (v2317 != 256);
              break;
            case 4:
              v2289 = 0;
              v2290 = (v181 - 2);
              v20 = a3;
              v2277 = v2831;
              v2279 = v2783;
              v2278 = v2784;
              v2280 = v2788;
              v2281 = v2761;
              v2282 = v2755;
              v28.i64[0] = 0x20002000200020;
              v28.i64[1] = 0x20002000200020;
              v19 = v2850;
              v2283 = v2801;
              v2284 = v2773;
              v2285 = v2777;
              do
              {
                v2291 = *v2290;
                v2290 = (v2290 + v136);
                v2292 = vzip1q_s8(vextq_s8(v2291, v2291, 2uLL), v26);
                v2293 = vsubq_s16(vshlq_n_s16(vaddq_s16(v2292, vzip1q_s8(vextq_s8(v2291, v2291, 3uLL), v26)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v2291, v2291, 1uLL), v26), vzip1q_s8(vextq_s8(v2291, v2291, 4uLL), v26)));
                *(&v2890 + v2289) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v2293, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v2291, v26), vzip1q_s8(vextq_s8(v2291, v2291, 5uLL), v26)), v2293)), v27), 5uLL))), v2292);
                v2289 += 16;
              }

              while (v2289 != 256);
              break;
            case 5:
              v2314 = v181;
              v2315 = v136;
              v2316 = 2;
              goto LABEL_1031;
            case 6:
              sub_27729B1B0(v2890.i8, 0x10u, v181, v136);
              goto LABEL_1035;
            case 7:
              v2314 = v181;
              v2315 = v136;
              v2316 = 3;
LABEL_1031:
              v2343 = 2;
              goto LABEL_1034;
            case 8:
              v2406 = 0;
              v2407 = (v181 - 2);
              v20 = a3;
              v2277 = v2831;
              v2279 = v2783;
              v2278 = v2784;
              v2280 = v2788;
              v2281 = v2761;
              v2282 = v2755;
              v28.i64[0] = 0x20002000200020;
              v28.i64[1] = 0x20002000200020;
              v19 = v2850;
              v2283 = v2801;
              v2284 = v2773;
              v2285 = v2777;
              do
              {
                v2408 = &v2890.i8[v2406];
                v2409 = *v2407;
                v2407 = (v2407 + v136);
                v2410 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v2409, v2409, 2uLL), v26), vzip1q_s8(vextq_s8(v2409, v2409, 3uLL), v26)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v2409, v2409, 1uLL), v26), vzip1q_s8(vextq_s8(v2409, v2409, 4uLL), v26)));
                *v2409.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v2410, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v2409, v26), vzip1q_s8(vextq_s8(v2409, v2409, 5uLL), v26)), v2410)), v27), 5uLL));
                v2410.i64[0] = v26.i64[0];
                vst2_s8(v2408, v2409);
                v2406 += 16;
              }

              while (v2406 != 256);
              break;
            case 9:
              sub_27729B614(v2890.i8, 0x10u, v181, v136, 16);
              goto LABEL_1035;
            case 10:
              sub_27729B7DC(&v2890, 16, v181, v136, 16);
              goto LABEL_1035;
            case 11:
              sub_27729B98C(v2890.i8, 0x10u, v181, v136, 16);
              goto LABEL_1035;
            case 12:
              v2294 = 0;
              v2295 = (v181 - 2);
              v20 = a3;
              v2277 = v2831;
              v2279 = v2783;
              v2278 = v2784;
              v2280 = v2788;
              v2281 = v2761;
              v2282 = v2755;
              v28.i64[0] = 0x20002000200020;
              v28.i64[1] = 0x20002000200020;
              v19 = v2850;
              v2283 = v2801;
              v2284 = v2773;
              v2285 = v2777;
              do
              {
                v2296 = *v2295;
                v2295 = (v2295 + v136);
                v2297 = vzip1q_s8(vextq_s8(v2296, v2296, 3uLL), v26);
                v2298 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v2296, v2296, 2uLL), v26), v2297), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v2296, v2296, 1uLL), v26), vzip1q_s8(vextq_s8(v2296, v2296, 4uLL), v26)));
                *(&v2890 + v2294) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v2298, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v2296, v26), vzip1q_s8(vextq_s8(v2296, v2296, 5uLL), v26)), v2298)), v27), 5uLL))), v2297);
                v2294 += 16;
              }

              while (v2294 != 256);
              break;
            case 13:
              v2314 = v181;
              v2315 = v136;
              v2316 = 2;
              goto LABEL_1033;
            case 14:
              sub_27729BBEC(v2890.i8, 0x10u, v181, v136);
              goto LABEL_1035;
            case 15:
              v2314 = v181;
              v2315 = v136;
              v2316 = 3;
LABEL_1033:
              v2343 = 3;
LABEL_1034:
              sub_27729C774(v2890.i8, v2314, v2315, 16, v2316, v2343);
LABEL_1035:
              v27.i64[0] = 0x10001000100010;
              v27.i64[1] = 0x10001000100010;
              v11 = v2851;
              v26 = v2865;
              v20 = a3;
              v2277 = v2831;
              v2279 = v2783;
              v2278 = v2784;
              v2280 = v2788;
              v2281 = v2761;
              v2282 = v2755;
              v28.i64[0] = 0x20002000200020;
              v28.i64[1] = 0x20002000200020;
              v19 = v2850;
              v2283 = v2801;
              v2284 = v2773;
              v2285 = v2777;
              break;
            default:
              v2276 = 0;
              v20 = a3;
              v2277 = v2831;
              v2279 = v2783;
              v2278 = v2784;
              v2280 = v2788;
              v2281 = v2761;
              v2282 = v2755;
              v28.i64[0] = 0x20002000200020;
              v28.i64[1] = 0x20002000200020;
              v19 = v2850;
              v2283 = v2801;
              v2284 = v2773;
              v2285 = v2777;
              do
              {
                v2286 = &v2890.i8[v2276];
                v2287 = *v181;
                v181 = (v181 + v136);
                v2288 = v26.i64[0];
                vst2_s8(v2286, v2287);
                v2276 += 16;
              }

              while (v2276 != 256);
              break;
          }

          v2344 = 0;
          do
          {
            v2345 = vrhaddq_u16(*(&v2886 + v2344), *(&v2890 + v2344));
            v2346 = vrhaddq_u16(*(&v2886 + v2344 + 16), *(&v2891 + v2344));
            v2347 = vrhaddq_u16(*(&v2888 + v2344), *(&v2892 + v2344));
            v2348 = vrhaddq_u16(v2889[v2344 / 0x10], v2893[v2344 / 0x10]);
            if (a2)
            {
              v2349 = *v172;
              v2350 = *(v172 + 32);
              v2351 = *(v172 + 64);
              v2352 = *(v172 + 96);
              v172 += 128;
              v2345 = vaddq_s16(v2349, v2345);
              v2346 = vaddq_s16(v2350, v2346);
              v2347 = vaddq_s16(v2351, v2347);
              v2348 = vaddq_s16(v2352, v2348);
            }

            *v177 = vqmovun_s16(v2345);
            *(v177 + v2278) = vqmovun_s16(v2346);
            *(v177 + v2280) = vqmovun_s16(v2347);
            *(v177 + v2281) = vqmovun_s16(v2348);
            v177 = (v177 + v2282);
            v2344 += 64;
          }

          while (v2344 != 256);
          v2353 = 0;
          _X9 = &_X24->i8[v2849];
          __asm { PRFM            #0, [X9] }

          v2345.i64[0] = _X24->i64[0];
          v2356 = vqtbl1q_s8(v2345, xmmword_2773B3E00);
          v2356.i16[3] = _X24->i16[4];
          v2357 = vzip1q_s8(v2356, v26);
          v2358 = vzip1q_s8(v2345, v26);
          v2359 = v2904;
          v2360 = v2905;
          v2361 = v2906;
          v2362 = v2907;
          v2363 = v2778;
          if (v2778 <= -16)
          {
            v2363 = -16;
          }

          if (v2363 >= v2285)
          {
            v2363 = v2285;
          }

          v2364 = v2277 + v2284 + v2363;
          do
          {
            _X12 = v2364 + 2 * v2849;
            v2364 += v2849;
            __asm { PRFM            #0, [X12] }

            v2367 = vmlaq_s16(vmulq_s16(v2360, v2357), v2359, v2358);
            v2357.i64[0] = *v2364;
            v2358 = vzip1q_s8(v2357, v26);
            v2368 = vqtbl1q_s8(v2357, xmmword_2773B3E00);
            v2368.i16[3] = *(v2364 + 8);
            v2357 = vzip1q_s8(v2368, v26);
            *(&v2895 + v2353) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v2367, v2361, v2358), v2362, v2357), v28), 6uLL);
            v2353 += 16;
          }

          while (v2353 != 128);
          v2369 = 0;
          _X9 = &_X26->i8[v2283];
          __asm { PRFM            #0, [X9] }

          v2359.i64[0] = _X26->i64[0];
          v2372 = vqtbl1q_s8(v2359, xmmword_2773B3E00);
          v2372.i16[3] = _X26->i16[4];
          v2373 = vzip1q_s8(v2372, v26);
          v2374 = vzip1q_s8(v2359, v26);
          v2375 = v2908;
          v2376 = v2909;
          v2377 = v2910;
          v2378 = v2911;
          v2379 = v2779;
          if (v2779 <= -16)
          {
            v2379 = -16;
          }

          if (v2379 >= v2780)
          {
            v2379 = v2780;
          }

          v2380 = v132 + v2769 + v2379;
          do
          {
            _X12 = v2380 + 2 * v2283;
            v2380 += v2283;
            __asm { PRFM            #0, [X12] }

            v2383 = vmlaq_s16(vmulq_s16(v2376, v2373), v2375, v2374);
            v2373.i64[0] = *v2380;
            v2374 = vzip1q_s8(v2373, v26);
            v2384 = vqtbl1q_s8(v2373, xmmword_2773B3E00);
            v2384.i16[3] = *(v2380 + 8);
            v2373 = vzip1q_s8(v2384, v26);
            *(&v2900 + v2369) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v2383, v2377, v2374), v2378, v2373), v28), 6uLL);
            v2369 += 16;
          }

          while (v2369 != 128);
          v2385 = 1;
          v2386 = &v2900;
          do
          {
            v2387 = v2385;
            a9 = v2386[1];
            a10 = v2386[2];
            a11 = v2386[3];
            v2388 = vrhaddq_u16(v2386[-16], *v2386);
            v2389 = vrhaddq_u16(v2386[-15], a9);
            v2390 = vrhaddq_u16(v2386[-14], a10);
            v2391 = vrhaddq_u16(v2386[-13], a11);
            if (v20)
            {
              v2392 = *v176;
              a9 = *(v176 + 32);
              a10 = *(v176 + 64);
              a11 = *(v176 + 96);
              v176 += 128;
              v2388 = vaddq_s16(v2392, v2388);
              v2389 = vaddq_s16(a9, v2389);
              v2390 = vaddq_s16(a10, v2390);
              v2391 = vaddq_s16(a11, v2391);
            }

            v2385 = 0;
            v2386 += 4;
            *v178 = vqmovun_s16(v2388);
            *(v178 + v2279) = vqmovun_s16(v2389);
            *(v178 + v2775) = vqmovun_s16(v2390);
            *(v178 + v2754) = vqmovun_s16(v2391);
            v178 = (v178 + v2753);
          }

          while ((v2387 & 1) != 0);
        }
      }

      goto LABEL_1056;
    }

    v19 = v2850;
    v21 = a2;
    if (v185 != 16)
    {
LABEL_1056:
      v22 = a1;
      v23 = v2881;
      goto LABEL_1057;
    }

    v187 = v2787 & 0xFFFFFF8F | (16 * (v126 & 7));
    v2760 = v186;
    v2768 = v183;
    v2772 = v179;
    v2757 = a11;
    v2758 = v162;
    v2756 = v2786 & 0xFFFFFF8F | (16 * (v118 & 7));
    if (v2795 == 16)
    {
      switch(v135)
      {
        case 1:
          v771 = 0;
          v772 = &v180[-v2776];
          v773 = (v772 + v2822);
          v774 = (v773 + v2822);
          v775 = (v774 + v2822);
          v776 = vzip1q_s8(*(v775 + v2822), v26);
          v777 = vzip1q_s8(*v775, v26);
          v778 = vzip1q_s8(*v774, v26);
          v779 = vzip1q_s8(*v773, v26);
          v780 = vzip1q_s8(*v772, v26);
          v781 = 5 * v2822;
          v782 = (v2806 + v781 + v153 + 2 * v2776 * v154 - 4 * v2776);
          do
          {
            v783 = v779;
            v779 = v778;
            v778 = v777;
            v777 = v776;
            v776 = vzip1q_s8(*v782, v26);
            v784 = vsubq_s16(vshlq_n_s16(vaddq_s16(v779, v778), 2uLL), vaddq_s16(v783, v777));
            *(&v2886 + v771) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v780, v784), vshlq_n_s16(v784, 2uLL)), vaddq_s16(v776, v27)), 5uLL))), v779);
            v771 += 32;
            v782 = (v782 + v2822);
            v780 = v783;
          }

          while (v771 != 512);
          v785 = 0;
          v786 = &v180[-v2776];
          v787 = *(v786 + 2);
          v788 = (v786 + v2822 + 8);
          v789 = (v788 + v2822 + v2822);
          v790 = vzip1q_s8(*(v789 + v2822), v26);
          v791 = vzip1q_s8(*v789, v26);
          v792 = vzip1q_s8(*(v788 + v2822), v26);
          v793 = vzip1q_s8(*v788, v26);
          v794 = vzip1q_s8(v787, v26);
          v795 = (v2806 + v781 + v153 + 2 * v2776 * v154 - 4 * v2776 + 8);
          v189 = v2790;
          do
          {
            v796 = v793;
            v793 = v792;
            v792 = v791;
            v791 = v790;
            v790 = vzip1q_s8(*v795, v26);
            v797 = vsubq_s16(vshlq_n_s16(vaddq_s16(v793, v792), 2uLL), vaddq_s16(v796, v791));
            *(&v2887 + v785) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v794, v797), vshlq_n_s16(v797, 2uLL)), vaddq_s16(v790, v27)), 5uLL))), v793);
            v785 += 32;
            v795 = (v795 + v2822);
            v794 = v796;
          }

          while (v785 != 512);
          break;
        case 2:
          v609 = 0;
          v610 = &v180[-v2776];
          v611 = (v610 + v2822);
          v612 = (v611 + v2822);
          v613 = (v612 + v2822);
          v614 = vzip1q_s8(*(v613 + v2822), v26);
          v615 = vzip1q_s8(*v613, v26);
          v616 = vzip1q_s8(*v612, v26);
          v617 = vzip1q_s8(*v611, v26);
          v618 = vzip1q_s8(*v610, v26);
          v619 = 5 * v2822;
          v620 = (v2806 + v619 + v153 + 2 * v2776 * v154 - 4 * v2776);
          do
          {
            v621 = v617;
            v617 = v616;
            v616 = v615;
            v615 = v614;
            v622 = &v2886.i8[v609];
            v614 = vzip1q_s8(*v620, v26);
            v623 = vsubq_s16(vshlq_n_s16(vaddq_s16(v617, v616), 2uLL), vaddq_s16(v621, v615));
            v623.val[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v618, v623), vshlq_n_s16(v623, 2uLL)), vaddq_s16(v614, v27)), 5uLL));
            v624 = v26.i64[0];
            vst2_s8(v622, v623);
            v609 += 32;
            v620 = (v620 + v2822);
            v618 = v621;
          }

          while (v609 != 512);
          v625 = 0;
          v626 = &v180[-v2776];
          v627 = *(v626 + 2);
          v628 = (v626 + v2822 + 8);
          v629 = (v628 + v2822 + v2822);
          v630 = vzip1q_s8(*(v629 + v2822), v26);
          v631 = vzip1q_s8(*v629, v26);
          v632 = vzip1q_s8(*(v628 + v2822), v26);
          v633 = vzip1q_s8(*v628, v26);
          v634 = vzip1q_s8(v627, v26);
          v635 = (v2806 + v619 + v153 + 2 * v2776 * v154 - 4 * v2776 + 8);
          v189 = v2790;
          do
          {
            v636 = v633;
            v633 = v632;
            v632 = v631;
            v631 = v630;
            v637 = &v2887.i8[v625];
            v630 = vzip1q_s8(*v635, v26);
            v638 = vsubq_s16(vshlq_n_s16(vaddq_s16(v633, v632), 2uLL), vaddq_s16(v636, v631));
            v638.val[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v634, v638), vshlq_n_s16(v638, 2uLL)), vaddq_s16(v630, v27)), 5uLL));
            v639 = v26.i64[0];
            vst2_s8(v637, v638);
            v625 += 32;
            v635 = (v635 + v2822);
            v634 = v636;
          }

          while (v625 != 512);
          break;
        case 3:
          v707 = 0;
          v708 = &v180[-v2776];
          v709 = (v708 + v2822);
          v710 = (v709 + v2822);
          v711 = (v710 + v2822);
          v712 = vzip1q_s8(*(v711 + v2822), v26);
          v713 = vzip1q_s8(*v711, v26);
          v714 = vzip1q_s8(*v710, v26);
          v715 = vzip1q_s8(*v709, v26);
          v716 = vzip1q_s8(*v708, v26);
          v717 = 5 * v2822;
          v718 = (v2806 + v717 + v153 + 2 * v2776 * v154 - 4 * v2776);
          do
          {
            v719 = v715;
            v715 = v714;
            v714 = v713;
            v713 = v712;
            v712 = vzip1q_s8(*v718, v26);
            v720 = vsubq_s16(vshlq_n_s16(vaddq_s16(v715, v714), 2uLL), vaddq_s16(v719, v713));
            *(&v2886 + v707) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v716, v720), vshlq_n_s16(v720, 2uLL)), vaddq_s16(v712, v27)), 5uLL))), v714);
            v707 += 32;
            v718 = (v718 + v2822);
            v716 = v719;
          }

          while (v707 != 512);
          v721 = 0;
          v722 = &v180[-v2776];
          v723 = *(v722 + 2);
          v724 = (v722 + v2822 + 8);
          v725 = (v724 + v2822 + v2822);
          v726 = vzip1q_s8(*(v725 + v2822), v26);
          v727 = vzip1q_s8(*v725, v26);
          v728 = vzip1q_s8(*(v724 + v2822), v26);
          v729 = vzip1q_s8(*v724, v26);
          v730 = vzip1q_s8(v723, v26);
          v731 = (v2806 + v717 + v153 + 2 * v2776 * v154 - 4 * v2776 + 8);
          v189 = v2790;
          do
          {
            v732 = v729;
            v729 = v728;
            v728 = v727;
            v727 = v726;
            v726 = vzip1q_s8(*v731, v26);
            v733 = vsubq_s16(vshlq_n_s16(vaddq_s16(v729, v728), 2uLL), vaddq_s16(v732, v727));
            *(&v2887 + v721) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v730, v733), vshlq_n_s16(v733, 2uLL)), vaddq_s16(v726, v27)), 5uLL))), v728);
            v721 += 32;
            v731 = (v731 + v2822);
            v730 = v732;
          }

          while (v721 != 512);
          break;
        case 4:
          v558 = 0;
          v559 = (v180 - 2);
          do
          {
            v560 = *v559;
            v559 = (v559 + v2822);
            v561 = vzip1q_s8(vextq_s8(v560, v560, 2uLL), v26);
            v562 = vsubq_s16(vshlq_n_s16(vaddq_s16(v561, vzip1q_s8(vextq_s8(v560, v560, 3uLL), v26)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v560, v560, 1uLL), v26), vzip1q_s8(vextq_s8(v560, v560, 4uLL), v26)));
            *(&v2886 + v558) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v562, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v560, v26), vzip1q_s8(vextq_s8(v560, v560, 5uLL), v26)), v562)), v27), 5uLL))), v561);
            v558 += 32;
          }

          while (v558 != 512);
          v563 = 0;
          v564 = (v180 + 6);
          v189 = v2790;
          do
          {
            v565 = *v564;
            v564 = (v564 + v2822);
            v566 = vzip1q_s8(vextq_s8(v565, v565, 2uLL), v26);
            v567 = vsubq_s16(vshlq_n_s16(vaddq_s16(v566, vzip1q_s8(vextq_s8(v565, v565, 3uLL), v26)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v565, v565, 1uLL), v26), vzip1q_s8(vextq_s8(v565, v565, 4uLL), v26)));
            *(&v2887 + v563) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v567, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v565, v26), vzip1q_s8(vextq_s8(v565, v565, 5uLL), v26)), v567)), v27), 5uLL))), v566);
            v563 += 32;
          }

          while (v563 != 512);
          break;
        case 5:
          v690 = v2806 + v153 + v154 * v2822;
          v691 = v2822;
          v692 = v181;
          v693 = 2;
          goto LABEL_452;
        case 6:
          v2807 = v2787 & 0xFFFFFF8F | (16 * (v126 & 7));
          v2796 = v181;
          v2861 = v11;
          v2875 = v26;
          sub_27729B1B0(v2886.i8, 0x20u, v180, v2822);
          sub_27729B1B0(v2887.i8, 0x20u, (v180 + 2), v2822);
          goto LABEL_518;
        case 7:
          v690 = v2806 + v153 + v154 * v2822;
          v691 = v2822;
          v692 = v181;
          v693 = 3;
LABEL_452:
          v852 = 2;
          goto LABEL_511;
        case 8:
          v1558 = 0;
          v1559 = (v180 - 2);
          do
          {
            v1560 = &v2886.i8[v1558];
            v1561 = *v1559;
            v1559 = (v1559 + v2822);
            v1562 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1561, v1561, 2uLL), v26), vzip1q_s8(vextq_s8(v1561, v1561, 3uLL), v26)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1561, v1561, 1uLL), v26), vzip1q_s8(vextq_s8(v1561, v1561, 4uLL), v26)));
            *v1561.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1562, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1561, v26), vzip1q_s8(vextq_s8(v1561, v1561, 5uLL), v26)), v1562)), v27), 5uLL));
            v1562.i64[0] = v26.i64[0];
            vst2_s8(v1560, v1561);
            v1558 += 32;
          }

          while (v1558 != 512);
          v1563 = 0;
          v1564 = (v180 + 6);
          v189 = v2790;
          do
          {
            v1565 = &v2887.i8[v1563];
            v1566 = *v1564;
            v1564 = (v1564 + v2822);
            v1567 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1566, v1566, 2uLL), v26), vzip1q_s8(vextq_s8(v1566, v1566, 3uLL), v26)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1566, v1566, 1uLL), v26), vzip1q_s8(vextq_s8(v1566, v1566, 4uLL), v26)));
            *v1566.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1567, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1566, v26), vzip1q_s8(vextq_s8(v1566, v1566, 5uLL), v26)), v1567)), v27), 5uLL));
            v1567.i64[0] = v26.i64[0];
            vst2_s8(v1565, v1566);
            v1563 += 32;
          }

          while (v1563 != 512);
          break;
        case 9:
          v2807 = v2787 & 0xFFFFFF8F | (16 * (v126 & 7));
          v2796 = v181;
          v2861 = v11;
          v2875 = v26;
          sub_27729B614(v2886.i8, 0x20u, v180, v2822, 16);
          sub_27729B614(v2887.i8, 0x20u, (v180 + 2), v2822, 16);
          goto LABEL_518;
        case 10:
          v2807 = v2787 & 0xFFFFFF8F | (16 * (v126 & 7));
          v2796 = v181;
          v2861 = v11;
          v2875 = v26;
          sub_27729B7DC(&v2886, 32, v180, v2822, 16);
          sub_27729B7DC(&v2887, 32, (v180 + 2), v2822, 16);
          goto LABEL_518;
        case 11:
          v2807 = v2787 & 0xFFFFFF8F | (16 * (v126 & 7));
          v2796 = v181;
          v2861 = v11;
          v2875 = v26;
          sub_27729B98C(v2886.i8, 0x20u, v180, v2822, 16);
          sub_27729B98C(v2887.i8, 0x20u, (v180 + 2), v2822, 16);
          goto LABEL_518;
        case 12:
          v579 = 0;
          v580 = (v180 - 2);
          do
          {
            v581 = *v580;
            v580 = (v580 + v2822);
            v582 = vzip1q_s8(vextq_s8(v581, v581, 3uLL), v26);
            v583 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v581, v581, 2uLL), v26), v582), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v581, v581, 1uLL), v26), vzip1q_s8(vextq_s8(v581, v581, 4uLL), v26)));
            *(&v2886 + v579) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v583, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v581, v26), vzip1q_s8(vextq_s8(v581, v581, 5uLL), v26)), v583)), v27), 5uLL))), v582);
            v579 += 32;
          }

          while (v579 != 512);
          v584 = 0;
          v585 = (v180 + 6);
          v189 = v2790;
          do
          {
            v586 = *v585;
            v585 = (v585 + v2822);
            v587 = vzip1q_s8(vextq_s8(v586, v586, 3uLL), v26);
            v588 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v586, v586, 2uLL), v26), v587), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v586, v586, 1uLL), v26), vzip1q_s8(vextq_s8(v586, v586, 4uLL), v26)));
            *(&v2887 + v584) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v588, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v586, v26), vzip1q_s8(vextq_s8(v586, v586, 5uLL), v26)), v588)), v27), 5uLL))), v587);
            v584 += 32;
          }

          while (v584 != 512);
          break;
        case 13:
          v690 = v2806 + v153 + v154 * v2822;
          v691 = v2822;
          v692 = v181;
          v693 = 2;
          goto LABEL_510;
        case 14:
          v2807 = v2787 & 0xFFFFFF8F | (16 * (v126 & 7));
          v2796 = v181;
          v2861 = v11;
          v2875 = v26;
          sub_27729BBEC(v2886.i8, 0x20u, v180, v2822);
          sub_27729BBEC(v2887.i8, 0x20u, (v180 + 2), v2822);
LABEL_518:
          v181 = v2796;
          v187 = v2807;
          goto LABEL_519;
        case 15:
          v690 = v2806 + v153 + v154 * v2822;
          v691 = v2822;
          v692 = v181;
          v693 = 3;
LABEL_510:
          v852 = 3;
LABEL_511:
          v2861 = v11;
          v2875 = v26;
          sub_27729AF04(v2886.i8, v690, v691, 16, v693, v852);
          v181 = v692;
LABEL_519:
          v27.i64[0] = 0x10001000100010;
          v27.i64[1] = 0x10001000100010;
          v11 = v2861;
          v26 = v2875;
          v189 = v2790;
          break;
        default:
          v188 = 0;
          v189 = v2790;
          do
          {
            v190 = &v2886.i8[v188];
            v11 = *v180;
            v180 = (v180 + v2822);
            vst2_s8(v190, v11);
            v190 += 16;
            *v190 = vzip2q_s8(v11, v26);
            v188 += 32;
          }

          while (v188 != 512);
          break;
      }

      switch(v189)
      {
        case 1:
          v1110 = 0;
          v1111 = &v181[-v2781];
          v1112 = (v1111 + v136);
          v1113 = (v1112 + v136);
          v1114 = (v1113 + v136);
          v1115 = vzip1q_s8(*(v1114 + v136), v26);
          v1116 = vzip1q_s8(*v1114, v26);
          v1117 = vzip1q_s8(*v1113, v26);
          v1118 = vzip1q_s8(*v1112, v26);
          v1119 = vzip1q_s8(*v1111, v26);
          v1120 = 5 * v136;
          v1121 = (v2804 + v1120 + v2765 + 2 * v2781 * v2764 - 4 * v2781);
          do
          {
            v1122 = v1118;
            v1118 = v1117;
            v1117 = v1116;
            v1116 = v1115;
            v1115 = vzip1q_s8(*v1121, v26);
            v1123 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1118, v1117), 2uLL), vaddq_s16(v1122, v1116));
            *(&v2890 + v1110) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1119, v1123), vshlq_n_s16(v1123, 2uLL)), vaddq_s16(v1115, v27)), 5uLL))), v1118);
            v1110 += 32;
            v1121 = (v1121 + v136);
            v1119 = v1122;
          }

          while (v1110 != 512);
          v1124 = 0;
          v1125 = &v181[-v2781];
          v1126 = *(v1125 + 2);
          v1127 = (v1125 + v136 + 8);
          v1128 = (v1127 + v136 + v136);
          v1129 = vzip1q_s8(*(v1128 + v136), v26);
          v1130 = vzip1q_s8(*v1128, v26);
          v1131 = vzip1q_s8(*(v1127 + v136), v26);
          v1132 = vzip1q_s8(*v1127, v26);
          v1133 = vzip1q_s8(v1126, v26);
          v1016 = v2801;
          v1134 = (v2804 + v1120 + v2765 + 2 * v2781 * v2764 - 4 * v2781 + 8);
          v20 = a3;
          v1012 = v2831;
          v1014 = v2783;
          v1013 = v2784;
          v1015 = v2788;
          v28.i64[0] = 0x20002000200020;
          v28.i64[1] = 0x20002000200020;
          v19 = v2850;
          v1017 = v2772;
          v1019 = v2757;
          v1018 = v2758;
          do
          {
            v1135 = v1132;
            v1132 = v1131;
            v1131 = v1130;
            v1130 = v1129;
            v1129 = vzip1q_s8(*v1134, v26);
            v1136 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1132, v1131), 2uLL), vaddq_s16(v1135, v1130));
            *(&v2891 + v1124) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1133, v1136), vshlq_n_s16(v1136, 2uLL)), vaddq_s16(v1129, v27)), 5uLL))), v1132);
            v1124 += 32;
            v1134 = (v1134 + v136);
            v1133 = v1135;
          }

          while (v1124 != 512);
          break;
        case 2:
          v1049 = 0;
          v1050 = &v181[-v2781];
          v1051 = (v1050 + v136);
          v1052 = (v1051 + v136);
          v1053 = (v1052 + v136);
          v1054 = vzip1q_s8(*(v1053 + v136), v26);
          v1055 = vzip1q_s8(*v1053, v26);
          v1056 = vzip1q_s8(*v1052, v26);
          v1057 = vzip1q_s8(*v1051, v26);
          v1058 = vzip1q_s8(*v1050, v26);
          v1059 = 5 * v136;
          v1060 = (v2804 + v1059 + v2765 + 2 * v2781 * v2764 - 4 * v2781);
          do
          {
            v1061 = v1057;
            v1057 = v1056;
            v1056 = v1055;
            v1055 = v1054;
            v1062 = &v2890.i8[v1049];
            v1054 = vzip1q_s8(*v1060, v26);
            v1063 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1057, v1056), 2uLL), vaddq_s16(v1061, v1055));
            v1063.val[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1058, v1063), vshlq_n_s16(v1063, 2uLL)), vaddq_s16(v1054, v27)), 5uLL));
            v1064 = v26.i64[0];
            vst2_s8(v1062, v1063);
            v1049 += 32;
            v1060 = (v1060 + v136);
            v1058 = v1061;
          }

          while (v1049 != 512);
          v1065 = 0;
          v1066 = &v181[-v2781];
          v1067 = *(v1066 + 2);
          v1068 = (v1066 + v136 + 8);
          v1069 = (v1068 + v136 + v136);
          v1070 = vzip1q_s8(*(v1069 + v136), v26);
          v1071 = vzip1q_s8(*v1069, v26);
          v1072 = vzip1q_s8(*(v1068 + v136), v26);
          v1073 = vzip1q_s8(*v1068, v26);
          v1074 = vzip1q_s8(v1067, v26);
          v1016 = v2801;
          v1075 = (v2804 + v1059 + v2765 + 2 * v2781 * v2764 - 4 * v2781 + 8);
          v20 = a3;
          v1012 = v2831;
          v1014 = v2783;
          v1013 = v2784;
          v1015 = v2788;
          v28.i64[0] = 0x20002000200020;
          v28.i64[1] = 0x20002000200020;
          v19 = v2850;
          v1017 = v2772;
          v1019 = v2757;
          v1018 = v2758;
          do
          {
            v1076 = v1073;
            v1073 = v1072;
            v1072 = v1071;
            v1071 = v1070;
            v1077 = &v2891.i8[v1065];
            v1070 = vzip1q_s8(*v1075, v26);
            v1078 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1073, v1072), 2uLL), vaddq_s16(v1076, v1071));
            v1078.val[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1074, v1078), vshlq_n_s16(v1078, 2uLL)), vaddq_s16(v1070, v27)), 5uLL));
            v1079 = v26.i64[0];
            vst2_s8(v1077, v1078);
            v1065 += 32;
            v1075 = (v1075 + v136);
            v1074 = v1076;
          }

          while (v1065 != 512);
          break;
        case 3:
          v1083 = 0;
          v1084 = &v181[-v2781];
          v1085 = (v1084 + v136);
          v1086 = (v1085 + v136);
          v1087 = (v1086 + v136);
          v1088 = vzip1q_s8(*(v1087 + v136), v26);
          v1089 = vzip1q_s8(*v1087, v26);
          v1090 = vzip1q_s8(*v1086, v26);
          v1091 = vzip1q_s8(*v1085, v26);
          v1092 = vzip1q_s8(*v1084, v26);
          v1093 = 5 * v136;
          v1094 = (v2804 + v1093 + v2765 + 2 * v2781 * v2764 - 4 * v2781);
          do
          {
            v1095 = v1091;
            v1091 = v1090;
            v1090 = v1089;
            v1089 = v1088;
            v1088 = vzip1q_s8(*v1094, v26);
            v1096 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1091, v1090), 2uLL), vaddq_s16(v1095, v1089));
            *(&v2890 + v1083) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1092, v1096), vshlq_n_s16(v1096, 2uLL)), vaddq_s16(v1088, v27)), 5uLL))), v1090);
            v1083 += 32;
            v1094 = (v1094 + v136);
            v1092 = v1095;
          }

          while (v1083 != 512);
          v1097 = 0;
          v1098 = &v181[-v2781];
          v1099 = *(v1098 + 2);
          v1100 = (v1098 + v136 + 8);
          v1101 = (v1100 + v136 + v136);
          v1102 = vzip1q_s8(*(v1101 + v136), v26);
          v1103 = vzip1q_s8(*v1101, v26);
          v1104 = vzip1q_s8(*(v1100 + v136), v26);
          v1105 = vzip1q_s8(*v1100, v26);
          v1106 = vzip1q_s8(v1099, v26);
          v1016 = v2801;
          v1107 = (v2804 + v1093 + v2765 + 2 * v2781 * v2764 - 4 * v2781 + 8);
          v20 = a3;
          v1012 = v2831;
          v1014 = v2783;
          v1013 = v2784;
          v1015 = v2788;
          v28.i64[0] = 0x20002000200020;
          v28.i64[1] = 0x20002000200020;
          v19 = v2850;
          v1017 = v2772;
          v1019 = v2757;
          v1018 = v2758;
          do
          {
            v1108 = v1105;
            v1105 = v1104;
            v1104 = v1103;
            v1103 = v1102;
            v1102 = vzip1q_s8(*v1107, v26);
            v1109 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1105, v1104), 2uLL), vaddq_s16(v1108, v1103));
            *(&v2891 + v1097) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1106, v1109), vshlq_n_s16(v1109, 2uLL)), vaddq_s16(v1102, v27)), 5uLL))), v1104);
            v1097 += 32;
            v1107 = (v1107 + v136);
            v1106 = v1108;
          }

          while (v1097 != 512);
          break;
        case 4:
          v1027 = 0;
          v1028 = (v181 - 2);
          do
          {
            v1029 = *v1028;
            v1028 = (v1028 + v136);
            v1030 = vzip1q_s8(vextq_s8(v1029, v1029, 2uLL), v26);
            v1031 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1030, vzip1q_s8(vextq_s8(v1029, v1029, 3uLL), v26)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1029, v1029, 1uLL), v26), vzip1q_s8(vextq_s8(v1029, v1029, 4uLL), v26)));
            *(&v2890 + v1027) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1031, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1029, v26), vzip1q_s8(vextq_s8(v1029, v1029, 5uLL), v26)), v1031)), v27), 5uLL))), v1030);
            v1027 += 32;
          }

          while (v1027 != 512);
          v1032 = 0;
          v1033 = (v181 + 6);
          v20 = a3;
          v1012 = v2831;
          v1014 = v2783;
          v1013 = v2784;
          v1015 = v2788;
          v28.i64[0] = 0x20002000200020;
          v28.i64[1] = 0x20002000200020;
          v19 = v2850;
          v1016 = v2801;
          v1017 = v2772;
          v1019 = v2757;
          v1018 = v2758;
          do
          {
            v1034 = *v1033;
            v1033 = (v1033 + v136);
            v1035 = vzip1q_s8(vextq_s8(v1034, v1034, 2uLL), v26);
            v1036 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1035, vzip1q_s8(vextq_s8(v1034, v1034, 3uLL), v26)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1034, v1034, 1uLL), v26), vzip1q_s8(vextq_s8(v1034, v1034, 4uLL), v26)));
            *(&v2891 + v1032) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1036, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1034, v26), vzip1q_s8(vextq_s8(v1034, v1034, 5uLL), v26)), v1036)), v27), 5uLL))), v1035);
            v1032 += 32;
          }

          while (v1032 != 512);
          break;
        case 5:
          v1080 = v181;
          v1081 = v136;
          v1082 = 2;
          goto LABEL_555;
        case 6:
          v2812 = v187;
          v1280 = v181;
          v2862 = v11;
          v2876 = v26;
          sub_27729B1B0(v2890.i8, 0x20u, v181, v136);
          v1281 = (v1280 + 2);
          v187 = v2812;
          sub_27729B1B0(v2891.i8, 0x20u, v1281, v136);
          goto LABEL_559;
        case 7:
          v1080 = v181;
          v1081 = v136;
          v1082 = 3;
LABEL_555:
          v1137 = 2;
          goto LABEL_558;
        case 8:
          v1578 = 0;
          v1579 = (v181 - 2);
          do
          {
            v1580 = &v2890.i8[v1578];
            v1581 = *v1579;
            v1579 = (v1579 + v136);
            v1582 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1581, v1581, 2uLL), v26), vzip1q_s8(vextq_s8(v1581, v1581, 3uLL), v26)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1581, v1581, 1uLL), v26), vzip1q_s8(vextq_s8(v1581, v1581, 4uLL), v26)));
            *v1581.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1582, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1581, v26), vzip1q_s8(vextq_s8(v1581, v1581, 5uLL), v26)), v1582)), v27), 5uLL));
            v1582.i64[0] = v26.i64[0];
            vst2_s8(v1580, v1581);
            v1578 += 32;
          }

          while (v1578 != 512);
          v1583 = 0;
          v1584 = (v181 + 6);
          v20 = a3;
          v1012 = v2831;
          v1014 = v2783;
          v1013 = v2784;
          v1015 = v2788;
          v28.i64[0] = 0x20002000200020;
          v28.i64[1] = 0x20002000200020;
          v19 = v2850;
          v1016 = v2801;
          v1017 = v2772;
          v1019 = v2757;
          v1018 = v2758;
          do
          {
            v1585 = &v2891.i8[v1583];
            v1586 = *v1584;
            v1584 = (v1584 + v136);
            v1587 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1586, v1586, 2uLL), v26), vzip1q_s8(vextq_s8(v1586, v1586, 3uLL), v26)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1586, v1586, 1uLL), v26), vzip1q_s8(vextq_s8(v1586, v1586, 4uLL), v26)));
            *v1586.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1587, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1586, v26), vzip1q_s8(vextq_s8(v1586, v1586, 5uLL), v26)), v1587)), v27), 5uLL));
            v1587.i64[0] = v26.i64[0];
            vst2_s8(v1585, v1586);
            v1583 += 32;
          }

          while (v1583 != 512);
          break;
        case 9:
          v2811 = v187;
          v1047 = v181;
          v2862 = v11;
          v2876 = v26;
          sub_27729B614(v2890.i8, 0x20u, v181, v136, 16);
          v1048 = (v1047 + 2);
          v187 = v2811;
          sub_27729B614(v2891.i8, 0x20u, v1048, v136, 16);
          goto LABEL_559;
        case 10:
          v2817 = v187;
          v1554 = v181;
          v2862 = v11;
          v2876 = v26;
          sub_27729B7DC(&v2890, 32, v181, v136, 16);
          v1555 = (v1554 + 2);
          v187 = v2817;
          sub_27729B7DC(&v2891, 32, v1555, v136, 16);
          goto LABEL_559;
        case 11:
          v2810 = v187;
          v1025 = v181;
          v2862 = v11;
          v2876 = v26;
          sub_27729B98C(v2890.i8, 0x20u, v181, v136, 16);
          v1026 = (v1025 + 2);
          v187 = v2810;
          sub_27729B98C(v2891.i8, 0x20u, v1026, v136, 16);
          goto LABEL_559;
        case 12:
          v1037 = 0;
          v1038 = (v181 - 2);
          do
          {
            v1039 = *v1038;
            v1038 = (v1038 + v136);
            v1040 = vzip1q_s8(vextq_s8(v1039, v1039, 3uLL), v26);
            v1041 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1039, v1039, 2uLL), v26), v1040), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1039, v1039, 1uLL), v26), vzip1q_s8(vextq_s8(v1039, v1039, 4uLL), v26)));
            *(&v2890 + v1037) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1041, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1039, v26), vzip1q_s8(vextq_s8(v1039, v1039, 5uLL), v26)), v1041)), v27), 5uLL))), v1040);
            v1037 += 32;
          }

          while (v1037 != 512);
          v1042 = 0;
          v1043 = (v181 + 6);
          v20 = a3;
          v1012 = v2831;
          v1014 = v2783;
          v1013 = v2784;
          v1015 = v2788;
          v28.i64[0] = 0x20002000200020;
          v28.i64[1] = 0x20002000200020;
          v19 = v2850;
          v1016 = v2801;
          v1017 = v2772;
          v1019 = v2757;
          v1018 = v2758;
          do
          {
            v1044 = *v1043;
            v1043 = (v1043 + v136);
            v1045 = vzip1q_s8(vextq_s8(v1044, v1044, 3uLL), v26);
            v1046 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1044, v1044, 2uLL), v26), v1045), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1044, v1044, 1uLL), v26), vzip1q_s8(vextq_s8(v1044, v1044, 4uLL), v26)));
            *(&v2891 + v1042) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1046, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1044, v26), vzip1q_s8(vextq_s8(v1044, v1044, 5uLL), v26)), v1046)), v27), 5uLL))), v1045);
            v1042 += 32;
          }

          while (v1042 != 512);
          break;
        case 13:
          v1080 = v181;
          v1081 = v136;
          v1082 = 2;
          goto LABEL_557;
        case 14:
          v2809 = v187;
          v1023 = v181;
          v2862 = v11;
          v2876 = v26;
          sub_27729BBEC(v2890.i8, 0x20u, v181, v136);
          v1024 = (v1023 + 2);
          v187 = v2809;
          sub_27729BBEC(v2891.i8, 0x20u, v1024, v136);
          goto LABEL_559;
        case 15:
          v1080 = v181;
          v1081 = v136;
          v1082 = 3;
LABEL_557:
          v1137 = 3;
LABEL_558:
          v2862 = v11;
          v2876 = v26;
          sub_27729AF04(v2890.i8, v1080, v1081, 16, v1082, v1137);
LABEL_559:
          v27.i64[0] = 0x10001000100010;
          v27.i64[1] = 0x10001000100010;
          v11 = v2862;
          v26 = v2876;
          v20 = a3;
          v1012 = v2831;
          v1014 = v2783;
          v1013 = v2784;
          v1015 = v2788;
          v28.i64[0] = 0x20002000200020;
          v28.i64[1] = 0x20002000200020;
          v19 = v2850;
          v1016 = v2801;
          v1017 = v2772;
          v1019 = v2757;
          v1018 = v2758;
          break;
        default:
          v1011 = 0;
          v20 = a3;
          v1012 = v2831;
          v1014 = v2783;
          v1013 = v2784;
          v1015 = v2788;
          v28.i64[0] = 0x20002000200020;
          v28.i64[1] = 0x20002000200020;
          v19 = v2850;
          v1016 = v2801;
          v1017 = v2772;
          v1019 = v2757;
          v1018 = v2758;
          do
          {
            v1020 = &v2890.i8[v1011];
            v1021 = *v181;
            v181 = (v181 + v136);
            v1022 = v26.i64[0];
            vst2_s8(v1020, v1021);
            v1020 += 16;
            *v1020 = vzip2q_s8(v1021, v26);
            v1011 += 32;
          }

          while (v1011 != 512);
          break;
      }

      v1138 = 0;
      do
      {
        v1139 = v2889[v1138 / 0x10];
        v1140 = vrhaddq_u16(*(&v2886 + v1138), *(&v2890 + v1138));
        v1141 = vrhaddq_u16(*(&v2886 + v1138 + 16), *(&v2891 + v1138));
        v1142 = vrhaddq_u16(*(&v2888 + v1138), *(&v2892 + v1138));
        v1143 = vrhaddq_u16(v1139, v2893[v1138 / 0x10]);
        if (a2)
        {
          v1139 = *v172;
          v1144 = *(v172 + 16);
          v1145 = *(v172 + 32);
          v1146 = *(v172 + 48);
          v172 += 64;
          v1140 = vaddq_s16(v1139, v1140);
          v1141 = vaddq_s16(v1144, v1141);
          v1142 = vaddq_s16(v1145, v1142);
          v1143 = vaddq_s16(v1146, v1143);
        }

        *v177->i8 = vqmovun_high_s16(vqmovun_s16(v1140), v1141);
        *&v177->i8[v1013] = vqmovun_high_s16(vqmovun_s16(v1142), v1143);
        v177 = (v177 + v1015);
        v1138 += 64;
      }

      while (v1138 != 512);
      if (v2756 == 64)
      {
        __asm { PRFM            #0, [X24] }

        v1171 = 9;
        v1149 = v2894;
        do
        {
          v1172 = _X24;
          _X24 = (_X24 + v2849);
          __asm { PRFM            #0, [X24] }

          v1174 = vextq_s8(*v1172, *v1172, 2uLL);
          v1174.i16[7] = v1172[1].i16[0];
          v1175 = vrhaddq_u8(*v1172, v1174);
          v1174.i64[0] = v26.i64[0];
          v1149[3] = vzip2q_s8(v1175, v26);
          v1149 += 2;
          vst2_s8(v1149->i8, *(&v1174 - 8));
          --v1171;
        }

        while (v1171 > 2);
        v1176 = vextq_s8(*_X24, *_X24, 2uLL);
        v1176.i16[7] = _X24[1].i16[0];
        v1169 = vrhaddq_u8(*_X24, v1176);
      }

      else
      {
        if (v2756 != 4)
        {
          if (v2756)
          {
            v1179 = 0;
            v1180 = v2762 - (8 * v2782 + 8 * v2786) + 64;
            v1181 = v26;
            v1181.i32[0] = v1180 | (v1180 << 16);
            v1182 = vqtbl1q_s8(v1181, xmmword_2773B3DF0);
            v1183 = v26;
            v1183.i32[0] = (8 * v2782 - v2762) | ((8 * v2782 - v2762) << 16);
            v1184 = vqtbl1q_s8(v1183, xmmword_2773B3DF0);
            v1185 = v26;
            v1185.i32[0] = (8 * v2786 - v2762) | ((8 * v2786 - v2762) << 16);
            v1186 = vqtbl1q_s8(v1185, xmmword_2773B3DF0);
            v2904 = v1182;
            v2905 = v1184;
            v2906 = v1186;
            v2907 = v1019;
            _X10 = &_X24->i8[v2849];
            __asm { PRFM            #0, [X10] }

            v1139.i64[0] = _X24->i64[0];
            v1189 = vqtbl1q_s8(v1139, xmmword_2773B3E00);
            v1189.i16[3] = _X24->i16[4];
            v1190 = vzip1q_s8(v1189, v26);
            v1191 = vzip1q_s8(v1139, v26);
            v1192 = v2778;
            if (v2778 <= -16)
            {
              v1192 = -16;
            }

            if (v1192 >= v2777)
            {
              v1193 = v2777;
            }

            else
            {
              v1193 = v1192;
            }

            v1194 = v1193 + v1017;
            v1195 = (v1012 + v1194 + v2849 + 8);
            _X15 = v1012 + v1194 + 2 * v2849;
            do
            {
              __asm { PRFM            #0, [X15] }

              v1198 = vmlaq_s16(vmulq_s16(v1184, v1190), v1182, v1191);
              v1190.i64[0] = *(v1195 - 1);
              v1191 = vzip1q_s8(v1190, v26);
              v1199 = vqtbl1q_s8(v1190, xmmword_2773B3E00);
              v1199.i16[3] = *v1195;
              v1195 = (v1195 + v2849);
              v1190 = vzip1q_s8(v1199, v26);
              *(&v2895 + v1179) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1198, v1186, v1191), v1019, v1190), v28), 6uLL);
              v1179 += 32;
              _X15 += v2849;
            }

            while (v1179 != 256);
            v1200 = 0;
            _X11 = &_X24->i64[1] + v2849;
            __asm { PRFM            #0, [X11] }

            v1191.i64[0] = _X24->i64[1];
            v1203 = vqtbl1q_s8(v1191, xmmword_2773B3E00);
            v1203.i16[3] = _X24[1].i16[0];
            v1204 = vzip1q_s8(v1203, v26);
            v1139 = vzip1q_s8(v1191, v26);
            if (v1192 >= v2777)
            {
              v1192 = v2777;
            }

            v1205 = v1012 + v1017 + v1192;
            do
            {
              _X12 = v1205 + 2 * v2849 + 8;
              v1205 += v2849;
              __asm { PRFM            #0, [X12] }

              v1208 = vmlaq_s16(vmulq_s16(v1184, v1204), v1182, v1139);
              v1204.i64[0] = *(v1205 + 8);
              v1139 = vzip1q_s8(v1204, v26);
              v1209 = vqtbl1q_s8(v1204, xmmword_2773B3E00);
              v1209.i16[3] = *(v1205 + 16);
              v1204 = vzip1q_s8(v1209, v26);
              *(&v2896 + v1200) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1208, v1186, v1139), v1019, v1204), v28), 6uLL);
              v1200 += 32;
            }

            while (v1200 != 256);
LABEL_593:
            if (v187 == 64)
            {
              __asm { PRFM            #0, [X26] }

              v1234 = 9;
              v1212 = v2899;
              do
              {
                v1235 = _X26;
                _X26 = (_X26 + v1016);
                __asm { PRFM            #0, [X26] }

                v1237 = vextq_s8(*v1235, *v1235, 2uLL);
                v1237.i16[7] = v1235[1].i16[0];
                v1238 = vrhaddq_u8(*v1235, v1237);
                v1237.i64[0] = v26.i64[0];
                v1212[3] = vzip2q_s8(v1238, v26);
                v1212 += 2;
                vst2_s8(v1212->i8, *(&v1237 - 8));
                --v1234;
              }

              while (v1234 > 2);
              v1239 = vextq_s8(*_X26, *_X26, 2uLL);
              v1239.i16[7] = _X26[1].i16[0];
              v1232 = vrhaddq_u8(*_X26, v1239);
            }

            else
            {
              if (v187 != 4)
              {
                if (v187)
                {
                  v1242 = 0;
                  v1243 = v2763 - (8 * v2828 + 8 * v2787) + 64;
                  v1244 = v26;
                  v1244.i32[0] = v1243 | (v1243 << 16);
                  v1245 = vqtbl1q_s8(v1244, xmmword_2773B3DF0);
                  v1246 = v26;
                  v1246.i32[0] = (8 * v2828 - v2763) | ((8 * v2828 - v2763) << 16);
                  v1247 = vqtbl1q_s8(v1246, xmmword_2773B3DF0);
                  v1248 = v26;
                  v1248.i32[0] = (8 * v2787 - v2763) | ((8 * v2787 - v2763) << 16);
                  v1249 = vqtbl1q_s8(v1248, xmmword_2773B3DF0);
                  v2908 = v1245;
                  v2909 = v1247;
                  v2910 = v1249;
                  v2911 = v1018;
                  _X8 = &_X26->i8[v1016];
                  __asm { PRFM            #0, [X8] }

                  v1139.i64[0] = _X26->i64[0];
                  v1252 = vqtbl1q_s8(v1139, xmmword_2773B3E00);
                  v1253 = -16;
                  if (v2779 > -16)
                  {
                    v1253 = v2779;
                  }

                  if (v1253 >= v2780)
                  {
                    v1254 = v2780;
                  }

                  else
                  {
                    v1254 = v1253;
                  }

                  v1255 = v2760 + v2768 + v1254;
                  v1252.i16[3] = _X26->i16[4];
                  v1256 = vzip1q_s8(v1252, v26);
                  v1257 = vzip1q_s8(v1139, v26);
                  do
                  {
                    _X15 = v1255 + 2 * v1016;
                    v1255 += v1016;
                    __asm { PRFM            #0, [X15] }

                    v1260 = vmlaq_s16(vmulq_s16(v1247, v1256), v1245, v1257);
                    v1256.i64[0] = *v1255;
                    v1257 = vzip1q_s8(v1256, v26);
                    v1261 = vqtbl1q_s8(v1256, xmmword_2773B3E00);
                    v1261.i16[3] = *(v1255 + 8);
                    v1256 = vzip1q_s8(v1261, v26);
                    *(&v2900 + v1242) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1260, v1249, v1257), v1018, v1256), v28), 6uLL);
                    v1242 += 32;
                  }

                  while (v1242 != 256);
                  v1262 = 0;
                  _X11 = &_X26->i64[1] + v1016;
                  __asm { PRFM            #0, [X11] }

                  v1257.i64[0] = _X26->i64[1];
                  v1265 = vqtbl1q_s8(v1257, xmmword_2773B3E00);
                  v1265.i16[3] = _X26[1].i16[0];
                  v1266 = vzip1q_s8(v1265, v26);
                  v1267 = vzip1q_s8(v1257, v26);
                  if (v1253 >= v2780)
                  {
                    v1253 = v2780;
                  }

                  v1268 = v2760 + v2768 + v1253;
                  do
                  {
                    _X12 = v1268 + 2 * v1016 + 8;
                    v1268 += v1016;
                    __asm { PRFM            #0, [X12] }

                    v1271 = vmlaq_s16(vmulq_s16(v1247, v1266), v1245, v1267);
                    v1266.i64[0] = *(v1268 + 8);
                    v1267 = vzip1q_s8(v1266, v26);
                    v1272 = vqtbl1q_s8(v1266, xmmword_2773B3E00);
                    v1272.i16[3] = *(v1268 + 16);
                    v1266 = vzip1q_s8(v1272, v26);
                    *(&v2901 + v1262) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1271, v1249, v1267), v1018, v1266), v28), 6uLL);
                    v1262 += 32;
                  }

                  while (v1262 != 256);
                  goto LABEL_622;
                }

                __asm { PRFM            #0, [X26] }

                v1211 = 9;
                v1212 = v2899;
                do
                {
                  v1213 = _X26;
                  _X26 = (_X26 + v1016);
                  __asm { PRFM            #0, [X26] }

                  v1215 = *v1213;
                  v1212[3] = vzip2q_s8(*v1213, v26);
                  v1212 += 2;
                  v1216 = v26.i64[0];
                  vst2_s8(v1212->i8, v1215);
                  --v1211;
                }

                while (v1211 > 2);
                v1217 = *_X26;
                v1218 = vzip2q_s8(*_X26, v26);
                v1219 = v1212[2].i8;
                v1220 = v26.i64[0];
                vst2_s8(v1219, v1217);
LABEL_610:
                v1212[3] = v1218;
LABEL_622:
                v1273 = 4;
                v1274 = &v2900;
                do
                {
                  a9 = v1274[1];
                  a10 = v1274[2];
                  a11 = v1274[3];
                  v1275 = vrhaddq_u16(v1274[-16], *v1274);
                  v1276 = vrhaddq_u16(v1274[-15], a9);
                  v1277 = vrhaddq_u16(v1274[-14], a10);
                  v1278 = vrhaddq_u16(v1274[-13], a11);
                  if (v20)
                  {
                    v1279 = *v176;
                    a9 = *(v176 + 16);
                    a10 = *(v176 + 32);
                    a11 = *(v176 + 48);
                    v176 += 64;
                    v1275 = vaddq_s16(v1279, v1275);
                    v1276 = vaddq_s16(a9, v1276);
                    v1277 = vaddq_s16(a10, v1277);
                    v1278 = vaddq_s16(a11, v1278);
                  }

                  v1274 += 4;
                  *v178->i8 = vqmovun_high_s16(vqmovun_s16(v1275), v1276);
                  *&v178->i8[v1014] = vqmovun_high_s16(vqmovun_s16(v1277), v1278);
                  v178 = (v178 + v2775);
                  --v1273;
                }

                while (v1273);
                goto LABEL_1056;
              }

              _X8 = &_X26->i8[v1016];
              __asm { PRFM            #0, [X8] }

              v1223 = *_X26;
              v1224 = v2779;
              if (v2779 <= -16)
              {
                v1224 = -16;
              }

              if (v1224 >= v2780)
              {
                v1224 = v2780;
              }

              v1225 = (v2760 + v2768 + v1224);
              v1226 = 9;
              v1212 = v2899;
              do
              {
                _X13 = &v1225->i8[2 * v1016];
                v1225 = (v1225 + v1016);
                __asm { PRFM            #0, [X13] }

                v1229 = *v1225;
                v1230 = vrhaddq_u8(v1223, *v1225);
                v1231 = v26.i64[0];
                v1212[3] = vzip2q_s8(v1230, v26);
                v1212 += 2;
                vst2_s8(v1212->i8, v1230);
                --v1226;
                v1223 = v1229;
              }

              while (v1226 > 2);
              v1232 = vrhaddq_u8(v1229, *(v1225 + v1016));
            }

            v1240 = v1212[2].i8;
            v1241 = v26.i64[0];
            vst2_s8(v1240, v1232);
            v1218 = vzip2q_s8(v1232, v26);
            goto LABEL_610;
          }

          __asm { PRFM            #0, [X24] }

          v1148 = 9;
          v1149 = v2894;
          do
          {
            v1150 = _X24;
            _X24 = (_X24 + v2849);
            __asm { PRFM            #0, [X24] }

            v1152 = *v1150;
            v1149[3] = vzip2q_s8(*v1150, v26);
            v1149 += 2;
            v1153 = v26.i64[0];
            vst2_s8(v1149->i8, v1152);
            --v1148;
          }

          while (v1148 > 2);
          v1154 = *_X24;
          v1155 = vzip2q_s8(*_X24, v26);
          v1156 = v1149[2].i8;
          v1157 = v26.i64[0];
          vst2_s8(v1156, v1154);
LABEL_581:
          v1149[3] = v1155;
          goto LABEL_593;
        }

        _X8 = &_X24->i8[v2849];
        __asm { PRFM            #0, [X8] }

        v1160 = *_X24;
        v1161 = v2778;
        if (v2778 <= -16)
        {
          v1161 = -16;
        }

        if (v1161 >= v2777)
        {
          v1161 = v2777;
        }

        v1162 = (v1012 + v1017 + v1161);
        v1163 = 9;
        v1149 = v2894;
        do
        {
          _X13 = &v1162->i8[2 * v2849];
          v1162 = (v1162 + v2849);
          __asm { PRFM            #0, [X13] }

          v1166 = *v1162;
          v1167 = vrhaddq_u8(v1160, *v1162);
          v1168 = v26.i64[0];
          v1149[3] = vzip2q_s8(v1167, v26);
          v1149 += 2;
          vst2_s8(v1149->i8, v1167);
          --v1163;
          v1160 = v1166;
        }

        while (v1163 > 2);
        v1169 = vrhaddq_u8(v1166, *(v1162 + v2849));
      }

      v1177 = v1149[2].i8;
      v1178 = v26.i64[0];
      vst2_s8(v1177, v1169);
      v1155 = vzip2q_s8(v1169, v26);
      goto LABEL_581;
    }

    v2855 = v11;
    v2869 = v26;
    switch(v135)
    {
      case 1:
        v798 = 0;
        v799 = &v180[-v2776];
        v800 = (v799 + v2822);
        v801 = (v800 + v2822);
        v802 = (v801 + v2822);
        v803 = vzip1q_s8(*(v802 + v2822), v26);
        v804 = vzip1q_s8(*v802, v26);
        v805 = vzip1q_s8(*v801, v26);
        v806 = vzip1q_s8(*v800, v26);
        v807 = vzip1q_s8(*v799, v26);
        v808 = 5 * v2822;
        v809 = (v2806 + v808 + v153 + 2 * v2776 * v154 - 4 * v2776);
        do
        {
          v810 = v806;
          v806 = v805;
          v805 = v804;
          v804 = v803;
          v803 = vzip1q_s8(*v809, v26);
          v811 = vsubq_s16(vshlq_n_s16(vaddq_s16(v806, v805), 2uLL), vaddq_s16(v810, v804));
          *(&v2886 + v798) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v807, v811), vshlq_n_s16(v811, 2uLL)), vaddq_s16(v803, v27)), 5uLL))), v806);
          v798 += 32;
          v809 = (v809 + v2822);
          v807 = v810;
        }

        while (v798 != 256);
        v812 = 0;
        v813 = &v180[-v2776];
        v814 = *(v813 + 2);
        v815 = (v813 + v2822 + 8);
        v816 = (v815 + v2822 + v2822);
        v817 = vzip1q_s8(*(v816 + v2822), v26);
        v818 = vzip1q_s8(*v816, v26);
        v819 = vzip1q_s8(*(v815 + v2822), v26);
        v820 = vzip1q_s8(*v815, v26);
        v821 = vzip1q_s8(v814, v26);
        v822 = (v2806 + v808 + v153 + 2 * v2776 * v154 - 4 * v2776 + 8);
        v263 = v2790;
        do
        {
          v823 = v820;
          v820 = v819;
          v819 = v818;
          v818 = v817;
          v817 = vzip1q_s8(*v822, v26);
          v824 = vsubq_s16(vshlq_n_s16(vaddq_s16(v820, v819), 2uLL), vaddq_s16(v823, v818));
          *(&v2887 + v812) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v821, v824), vshlq_n_s16(v824, 2uLL)), vaddq_s16(v817, v27)), 5uLL))), v820);
          v812 += 32;
          v822 = (v822 + v2822);
          v821 = v823;
        }

        while (v812 != 256);
        break;
      case 2:
        v640 = 0;
        v641 = &v180[-v2776];
        v642 = (v641 + v2822);
        v643 = (v642 + v2822);
        v644 = (v643 + v2822);
        v645 = vzip1q_s8(*(v644 + v2822), v26);
        v646 = vzip1q_s8(*v644, v26);
        v647 = vzip1q_s8(*v643, v26);
        v648 = vzip1q_s8(*v642, v26);
        v649 = vzip1q_s8(*v641, v26);
        v650 = 5 * v2822;
        v651 = (v2806 + v650 + v153 + 2 * v2776 * v154 - 4 * v2776);
        do
        {
          v652 = v648;
          v648 = v647;
          v647 = v646;
          v646 = v645;
          v653 = &v2886.i8[v640];
          v645 = vzip1q_s8(*v651, v26);
          v654 = vsubq_s16(vshlq_n_s16(vaddq_s16(v648, v647), 2uLL), vaddq_s16(v652, v646));
          v654.val[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v649, v654), vshlq_n_s16(v654, 2uLL)), vaddq_s16(v645, v27)), 5uLL));
          v655 = v26.i64[0];
          vst2_s8(v653, v654);
          v640 += 32;
          v651 = (v651 + v2822);
          v649 = v652;
        }

        while (v640 != 256);
        v656 = 0;
        v657 = &v180[-v2776];
        v658 = *(v657 + 2);
        v659 = (v657 + v2822 + 8);
        v660 = (v659 + v2822 + v2822);
        v661 = vzip1q_s8(*(v660 + v2822), v26);
        v662 = vzip1q_s8(*v660, v26);
        v663 = vzip1q_s8(*(v659 + v2822), v26);
        v664 = vzip1q_s8(*v659, v26);
        v665 = vzip1q_s8(v658, v26);
        v666 = (v2806 + v650 + v153 + 2 * v2776 * v154 - 4 * v2776 + 8);
        v263 = v2790;
        do
        {
          v667 = v664;
          v664 = v663;
          v663 = v662;
          v662 = v661;
          v668 = &v2887.i8[v656];
          v661 = vzip1q_s8(*v666, v26);
          v669 = vsubq_s16(vshlq_n_s16(vaddq_s16(v664, v663), 2uLL), vaddq_s16(v667, v662));
          v669.val[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v665, v669), vshlq_n_s16(v669, 2uLL)), vaddq_s16(v661, v27)), 5uLL));
          v670 = v26.i64[0];
          vst2_s8(v668, v669);
          v656 += 32;
          v666 = (v666 + v2822);
          v665 = v667;
        }

        while (v656 != 256);
        break;
      case 3:
        v744 = 0;
        v745 = &v180[-v2776];
        v746 = (v745 + v2822);
        v747 = (v746 + v2822);
        v748 = (v747 + v2822);
        v749 = vzip1q_s8(*(v748 + v2822), v26);
        v750 = vzip1q_s8(*v748, v26);
        v751 = vzip1q_s8(*v747, v26);
        v752 = vzip1q_s8(*v746, v26);
        v753 = vzip1q_s8(*v745, v26);
        v754 = 5 * v2822;
        v755 = (v2806 + v754 + v153 + 2 * v2776 * v154 - 4 * v2776);
        do
        {
          v756 = v752;
          v752 = v751;
          v751 = v750;
          v750 = v749;
          v749 = vzip1q_s8(*v755, v26);
          v757 = vsubq_s16(vshlq_n_s16(vaddq_s16(v752, v751), 2uLL), vaddq_s16(v756, v750));
          *(&v2886 + v744) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v753, v757), vshlq_n_s16(v757, 2uLL)), vaddq_s16(v749, v27)), 5uLL))), v751);
          v744 += 32;
          v755 = (v755 + v2822);
          v753 = v756;
        }

        while (v744 != 256);
        v758 = 0;
        v759 = &v180[-v2776];
        v760 = *(v759 + 2);
        v761 = (v759 + v2822 + 8);
        v762 = (v761 + v2822 + v2822);
        v763 = vzip1q_s8(*(v762 + v2822), v26);
        v764 = vzip1q_s8(*v762, v26);
        v765 = vzip1q_s8(*(v761 + v2822), v26);
        v766 = vzip1q_s8(*v761, v26);
        v767 = vzip1q_s8(v760, v26);
        v768 = (v2806 + v754 + v153 + 2 * v2776 * v154 - 4 * v2776 + 8);
        v263 = v2790;
        do
        {
          v769 = v766;
          v766 = v765;
          v765 = v764;
          v764 = v763;
          v763 = vzip1q_s8(*v768, v26);
          v770 = vsubq_s16(vshlq_n_s16(vaddq_s16(v766, v765), 2uLL), vaddq_s16(v769, v764));
          *(&v2887 + v758) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v767, v770), vshlq_n_s16(v770, 2uLL)), vaddq_s16(v763, v27)), 5uLL))), v765);
          v758 += 32;
          v768 = (v768 + v2822);
          v767 = v769;
        }

        while (v758 != 256);
        break;
      case 4:
        v568 = 0;
        v569 = (v180 - 2);
        do
        {
          v570 = *v569;
          v569 = (v569 + v2822);
          v571 = vzip1q_s8(vextq_s8(v570, v570, 2uLL), v26);
          v572 = vsubq_s16(vshlq_n_s16(vaddq_s16(v571, vzip1q_s8(vextq_s8(v570, v570, 3uLL), v26)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v570, v570, 1uLL), v26), vzip1q_s8(vextq_s8(v570, v570, 4uLL), v26)));
          *(&v2886 + v568) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v572, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v570, v26), vzip1q_s8(vextq_s8(v570, v570, 5uLL), v26)), v572)), v27), 5uLL))), v571);
          v568 += 32;
        }

        while (v568 != 256);
        v573 = 0;
        v574 = (v180 + 6);
        v263 = v2790;
        do
        {
          v575 = *v574;
          v574 = (v574 + v2822);
          v576 = vzip1q_s8(vextq_s8(v575, v575, 2uLL), v26);
          v577 = vsubq_s16(vshlq_n_s16(vaddq_s16(v576, vzip1q_s8(vextq_s8(v575, v575, 3uLL), v26)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v575, v575, 1uLL), v26), vzip1q_s8(vextq_s8(v575, v575, 4uLL), v26)));
          *(&v2887 + v573) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v577, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v575, v26), vzip1q_s8(vextq_s8(v575, v575, 5uLL), v26)), v577)), v27), 5uLL))), v576);
          v573 += 32;
        }

        while (v573 != 256);
        break;
      case 5:
        v694 = v2806 + v153 + v154 * v2822;
        v695 = v2822;
        v696 = v181;
        v697 = 2;
        goto LABEL_454;
      case 6:
        v2808 = v2787 & 0xFFFFFF8F | (16 * (v126 & 7));
        v2797 = v181;
        sub_27729BFC4(v2886.i8, 0x20u, v180, v2822);
        sub_27729BFC4(v2887.i8, 0x20u, (v180 + 2), v2822);
        goto LABEL_629;
      case 7:
        v694 = v2806 + v153 + v154 * v2822;
        v695 = v2822;
        v696 = v181;
        v697 = 3;
LABEL_454:
        v853 = 2;
        goto LABEL_514;
      case 8:
        v1568 = 0;
        v1569 = (v180 - 2);
        do
        {
          v1570 = &v2886.i8[v1568];
          v1571 = *v1569;
          v1569 = (v1569 + v2822);
          v1572 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1571, v1571, 2uLL), v26), vzip1q_s8(vextq_s8(v1571, v1571, 3uLL), v26)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1571, v1571, 1uLL), v26), vzip1q_s8(vextq_s8(v1571, v1571, 4uLL), v26)));
          *v1571.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1572, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1571, v26), vzip1q_s8(vextq_s8(v1571, v1571, 5uLL), v26)), v1572)), v27), 5uLL));
          v1572.i64[0] = v26.i64[0];
          vst2_s8(v1570, v1571);
          v1568 += 32;
        }

        while (v1568 != 256);
        v1573 = 0;
        v1574 = (v180 + 6);
        v263 = v2790;
        do
        {
          v1575 = &v2887.i8[v1573];
          v1576 = *v1574;
          v1574 = (v1574 + v2822);
          v1577 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1576, v1576, 2uLL), v26), vzip1q_s8(vextq_s8(v1576, v1576, 3uLL), v26)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1576, v1576, 1uLL), v26), vzip1q_s8(vextq_s8(v1576, v1576, 4uLL), v26)));
          *v1576.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1577, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1576, v26), vzip1q_s8(vextq_s8(v1576, v1576, 5uLL), v26)), v1577)), v27), 5uLL));
          v1577.i64[0] = v26.i64[0];
          vst2_s8(v1575, v1576);
          v1573 += 32;
        }

        while (v1573 != 256);
        break;
      case 9:
        v2808 = v2787 & 0xFFFFFF8F | (16 * (v126 & 7));
        v2797 = v181;
        sub_27729B614(v2886.i8, 0x20u, v180, v2822, 8);
        sub_27729B614(v2887.i8, 0x20u, (v180 + 2), v2822, 8);
        goto LABEL_629;
      case 10:
        v2808 = v2787 & 0xFFFFFF8F | (16 * (v126 & 7));
        v2797 = v181;
        sub_27729B7DC(&v2886, 32, v180, v2822, 8);
        sub_27729B7DC(&v2887, 32, (v180 + 2), v2822, 8);
        goto LABEL_629;
      case 11:
        v2808 = v2787 & 0xFFFFFF8F | (16 * (v126 & 7));
        v2797 = v181;
        sub_27729B98C(v2886.i8, 0x20u, v180, v2822, 8);
        sub_27729B98C(v2887.i8, 0x20u, (v180 + 2), v2822, 8);
        goto LABEL_629;
      case 12:
        v589 = 0;
        v590 = (v180 - 2);
        do
        {
          v591 = *v590;
          v590 = (v590 + v2822);
          v592 = vzip1q_s8(vextq_s8(v591, v591, 3uLL), v26);
          v593 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v591, v591, 2uLL), v26), v592), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v591, v591, 1uLL), v26), vzip1q_s8(vextq_s8(v591, v591, 4uLL), v26)));
          *(&v2886 + v589) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v593, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v591, v26), vzip1q_s8(vextq_s8(v591, v591, 5uLL), v26)), v593)), v27), 5uLL))), v592);
          v589 += 32;
        }

        while (v589 != 256);
        v594 = 0;
        v595 = (v180 + 6);
        v263 = v2790;
        do
        {
          v596 = *v595;
          v595 = (v595 + v2822);
          v597 = vzip1q_s8(vextq_s8(v596, v596, 3uLL), v26);
          v598 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v596, v596, 2uLL), v26), v597), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v596, v596, 1uLL), v26), vzip1q_s8(vextq_s8(v596, v596, 4uLL), v26)));
          *(&v2887 + v594) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v598, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v596, v26), vzip1q_s8(vextq_s8(v596, v596, 5uLL), v26)), v598)), v27), 5uLL))), v597);
          v594 += 32;
        }

        while (v594 != 256);
        break;
      case 13:
        v694 = v2806 + v153 + v154 * v2822;
        v695 = v2822;
        v696 = v181;
        v697 = 2;
        goto LABEL_513;
      case 14:
        v2808 = v2787 & 0xFFFFFF8F | (16 * (v126 & 7));
        v2797 = v181;
        sub_27729C39C(v2886.i8, 0x20u, v180, v2822);
        sub_27729C39C(v2887.i8, 0x20u, (v180 + 2), v2822);
LABEL_629:
        v181 = v2797;
        v187 = v2808;
        goto LABEL_630;
      case 15:
        v694 = v2806 + v153 + v154 * v2822;
        v695 = v2822;
        v696 = v181;
        v697 = 3;
LABEL_513:
        v853 = 3;
LABEL_514:
        sub_27729AF04(v2886.i8, v694, v695, 8, v697, v853);
        v181 = v696;
LABEL_630:
        v27.i64[0] = 0x10001000100010;
        v27.i64[1] = 0x10001000100010;
        v11 = v2855;
        v26 = v2869;
        v263 = v2790;
        break;
      default:
        v262 = 0;
        v263 = v2790;
        do
        {
          v264 = &v2886.i8[v262];
          v265 = *v180;
          v180 = (v180 + v2822);
          v266 = v26.i64[0];
          vst2_s8(v264, v265);
          v264 += 16;
          *v264 = vzip2q_s8(v265, v26);
          v262 += 32;
        }

        while (v262 != 256);
        break;
    }

    switch(v263)
    {
      case 1:
        v1381 = 0;
        v1382 = &v181[-v2781];
        v1383 = (v1382 + v136);
        v1384 = (v1383 + v136);
        v1385 = (v1384 + v136);
        v1386 = vzip1q_s8(*(v1385 + v136), v26);
        v1387 = vzip1q_s8(*v1385, v26);
        v1388 = vzip1q_s8(*v1384, v26);
        v1389 = vzip1q_s8(*v1383, v26);
        v1390 = vzip1q_s8(*v1382, v26);
        v1391 = 5 * v136;
        v1392 = (v2804 + v1391 + v2765 + 2 * v2781 * v2764 - 4 * v2781);
        do
        {
          v1393 = v1389;
          v1389 = v1388;
          v1388 = v1387;
          v1387 = v1386;
          v1386 = vzip1q_s8(*v1392, v26);
          v1394 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1389, v1388), 2uLL), vaddq_s16(v1393, v1387));
          *(&v2890 + v1381) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1390, v1394), vshlq_n_s16(v1394, 2uLL)), vaddq_s16(v1386, v27)), 5uLL))), v1389);
          v1381 += 32;
          v1392 = (v1392 + v136);
          v1390 = v1393;
        }

        while (v1381 != 256);
        v1395 = 0;
        v1396 = &v181[-v2781];
        v1397 = *(v1396 + 2);
        v1398 = (v1396 + v136 + 8);
        v1399 = (v1398 + v136 + v136);
        v1400 = vzip1q_s8(*(v1399 + v136), v26);
        v1401 = vzip1q_s8(*v1399, v26);
        v1402 = vzip1q_s8(*(v1398 + v136), v26);
        v1403 = vzip1q_s8(*v1398, v26);
        v1404 = vzip1q_s8(v1397, v26);
        v1287 = v2801;
        v1405 = (v2804 + v1391 + v2765 + 2 * v2781 * v2764 - 4 * v2781 + 8);
        v20 = a3;
        v1283 = v2831;
        v1285 = v2783;
        v1284 = v2784;
        v1286 = v2788;
        v28.i64[0] = 0x20002000200020;
        v28.i64[1] = 0x20002000200020;
        v19 = v2850;
        v1288 = v2772;
        v1290 = v2757;
        v1289 = v2758;
        do
        {
          v1406 = v1403;
          v1403 = v1402;
          v1402 = v1401;
          v1401 = v1400;
          v1400 = vzip1q_s8(*v1405, v26);
          v1407 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1403, v1402), 2uLL), vaddq_s16(v1406, v1401));
          *(&v2891 + v1395) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1404, v1407), vshlq_n_s16(v1407, 2uLL)), vaddq_s16(v1400, v27)), 5uLL))), v1403);
          v1395 += 32;
          v1405 = (v1405 + v136);
          v1404 = v1406;
        }

        while (v1395 != 256);
        break;
      case 2:
        v1320 = 0;
        v1321 = &v181[-v2781];
        v1322 = (v1321 + v136);
        v1323 = (v1322 + v136);
        v1324 = (v1323 + v136);
        v1325 = vzip1q_s8(*(v1324 + v136), v26);
        v1326 = vzip1q_s8(*v1324, v26);
        v1327 = vzip1q_s8(*v1323, v26);
        v1328 = vzip1q_s8(*v1322, v26);
        v1329 = vzip1q_s8(*v1321, v26);
        v1330 = 5 * v136;
        v1331 = (v2804 + v1330 + v2765 + 2 * v2781 * v2764 - 4 * v2781);
        do
        {
          v1332 = v1328;
          v1328 = v1327;
          v1327 = v1326;
          v1326 = v1325;
          v1333 = &v2890.i8[v1320];
          v1325 = vzip1q_s8(*v1331, v26);
          v1334 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1328, v1327), 2uLL), vaddq_s16(v1332, v1326));
          v1334.val[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1329, v1334), vshlq_n_s16(v1334, 2uLL)), vaddq_s16(v1325, v27)), 5uLL));
          v1335 = v26.i64[0];
          vst2_s8(v1333, v1334);
          v1320 += 32;
          v1331 = (v1331 + v136);
          v1329 = v1332;
        }

        while (v1320 != 256);
        v1336 = 0;
        v1337 = &v181[-v2781];
        v1338 = *(v1337 + 2);
        v1339 = (v1337 + v136 + 8);
        v1340 = (v1339 + v136 + v136);
        v1341 = vzip1q_s8(*(v1340 + v136), v26);
        v1342 = vzip1q_s8(*v1340, v26);
        v1343 = vzip1q_s8(*(v1339 + v136), v26);
        v1344 = vzip1q_s8(*v1339, v26);
        v1345 = vzip1q_s8(v1338, v26);
        v1287 = v2801;
        v1346 = (v2804 + v1330 + v2765 + 2 * v2781 * v2764 - 4 * v2781 + 8);
        v20 = a3;
        v1283 = v2831;
        v1285 = v2783;
        v1284 = v2784;
        v1286 = v2788;
        v28.i64[0] = 0x20002000200020;
        v28.i64[1] = 0x20002000200020;
        v19 = v2850;
        v1288 = v2772;
        v1290 = v2757;
        v1289 = v2758;
        do
        {
          v1347 = v1344;
          v1344 = v1343;
          v1343 = v1342;
          v1342 = v1341;
          v1348 = &v2891.i8[v1336];
          v1341 = vzip1q_s8(*v1346, v26);
          v1349 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1344, v1343), 2uLL), vaddq_s16(v1347, v1342));
          v1349.val[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1345, v1349), vshlq_n_s16(v1349, 2uLL)), vaddq_s16(v1341, v27)), 5uLL));
          v1350 = v26.i64[0];
          vst2_s8(v1348, v1349);
          v1336 += 32;
          v1346 = (v1346 + v136);
          v1345 = v1347;
        }

        while (v1336 != 256);
        break;
      case 3:
        v1354 = 0;
        v1355 = &v181[-v2781];
        v1356 = (v1355 + v136);
        v1357 = (v1356 + v136);
        v1358 = (v1357 + v136);
        v1359 = vzip1q_s8(*(v1358 + v136), v26);
        v1360 = vzip1q_s8(*v1358, v26);
        v1361 = vzip1q_s8(*v1357, v26);
        v1362 = vzip1q_s8(*v1356, v26);
        v1363 = vzip1q_s8(*v1355, v26);
        v1364 = 5 * v136;
        v1365 = (v2804 + v1364 + v2765 + 2 * v2781 * v2764 - 4 * v2781);
        do
        {
          v1366 = v1362;
          v1362 = v1361;
          v1361 = v1360;
          v1360 = v1359;
          v1359 = vzip1q_s8(*v1365, v26);
          v1367 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1362, v1361), 2uLL), vaddq_s16(v1366, v1360));
          *(&v2890 + v1354) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1363, v1367), vshlq_n_s16(v1367, 2uLL)), vaddq_s16(v1359, v27)), 5uLL))), v1361);
          v1354 += 32;
          v1365 = (v1365 + v136);
          v1363 = v1366;
        }

        while (v1354 != 256);
        v1368 = 0;
        v1369 = &v181[-v2781];
        v1370 = *(v1369 + 2);
        v1371 = (v1369 + v136 + 8);
        v1372 = (v1371 + v136 + v136);
        v1373 = vzip1q_s8(*(v1372 + v136), v26);
        v1374 = vzip1q_s8(*v1372, v26);
        v1375 = vzip1q_s8(*(v1371 + v136), v26);
        v1376 = vzip1q_s8(*v1371, v26);
        v1377 = vzip1q_s8(v1370, v26);
        v1287 = v2801;
        v1378 = (v2804 + v1364 + v2765 + 2 * v2781 * v2764 - 4 * v2781 + 8);
        v20 = a3;
        v1283 = v2831;
        v1285 = v2783;
        v1284 = v2784;
        v1286 = v2788;
        v28.i64[0] = 0x20002000200020;
        v28.i64[1] = 0x20002000200020;
        v19 = v2850;
        v1288 = v2772;
        v1290 = v2757;
        v1289 = v2758;
        do
        {
          v1379 = v1376;
          v1376 = v1375;
          v1375 = v1374;
          v1374 = v1373;
          v1373 = vzip1q_s8(*v1378, v26);
          v1380 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1376, v1375), 2uLL), vaddq_s16(v1379, v1374));
          *(&v2891 + v1368) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1377, v1380), vshlq_n_s16(v1380, 2uLL)), vaddq_s16(v1373, v27)), 5uLL))), v1375);
          v1368 += 32;
          v1378 = (v1378 + v136);
          v1377 = v1379;
        }

        while (v1368 != 256);
        break;
      case 4:
        v1298 = 0;
        v1299 = (v181 - 2);
        do
        {
          v1300 = *v1299;
          v1299 = (v1299 + v136);
          v1301 = vzip1q_s8(vextq_s8(v1300, v1300, 2uLL), v26);
          v1302 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1301, vzip1q_s8(vextq_s8(v1300, v1300, 3uLL), v26)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1300, v1300, 1uLL), v26), vzip1q_s8(vextq_s8(v1300, v1300, 4uLL), v26)));
          *(&v2890 + v1298) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1302, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1300, v26), vzip1q_s8(vextq_s8(v1300, v1300, 5uLL), v26)), v1302)), v27), 5uLL))), v1301);
          v1298 += 32;
        }

        while (v1298 != 256);
        v1303 = 0;
        v1304 = (v181 + 6);
        v20 = a3;
        v1283 = v2831;
        v1285 = v2783;
        v1284 = v2784;
        v1286 = v2788;
        v28.i64[0] = 0x20002000200020;
        v28.i64[1] = 0x20002000200020;
        v19 = v2850;
        v1287 = v2801;
        v1288 = v2772;
        v1290 = v2757;
        v1289 = v2758;
        do
        {
          v1305 = *v1304;
          v1304 = (v1304 + v136);
          v1306 = vzip1q_s8(vextq_s8(v1305, v1305, 2uLL), v26);
          v1307 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1306, vzip1q_s8(vextq_s8(v1305, v1305, 3uLL), v26)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1305, v1305, 1uLL), v26), vzip1q_s8(vextq_s8(v1305, v1305, 4uLL), v26)));
          *(&v2891 + v1303) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1307, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1305, v26), vzip1q_s8(vextq_s8(v1305, v1305, 5uLL), v26)), v1307)), v27), 5uLL))), v1306);
          v1303 += 32;
        }

        while (v1303 != 256);
        break;
      case 5:
        v1351 = v181;
        v1352 = v136;
        v1353 = 2;
        goto LABEL_666;
      case 6:
        v2816 = v187;
        v1552 = v181;
        sub_27729BFC4(v2890.i8, 0x20u, v181, v136);
        v1553 = (v1552 + 2);
        v187 = v2816;
        sub_27729BFC4(v2891.i8, 0x20u, v1553, v136);
        goto LABEL_670;
      case 7:
        v1351 = v181;
        v1352 = v136;
        v1353 = 3;
LABEL_666:
        v1408 = 2;
        goto LABEL_669;
      case 8:
        v1588 = 0;
        v1589 = (v181 - 2);
        do
        {
          v1590 = &v2890.i8[v1588];
          v1591 = *v1589;
          v1589 = (v1589 + v136);
          v1592 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1591, v1591, 2uLL), v26), vzip1q_s8(vextq_s8(v1591, v1591, 3uLL), v26)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1591, v1591, 1uLL), v26), vzip1q_s8(vextq_s8(v1591, v1591, 4uLL), v26)));
          *v1591.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1592, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1591, v26), vzip1q_s8(vextq_s8(v1591, v1591, 5uLL), v26)), v1592)), v27), 5uLL));
          v1592.i64[0] = v26.i64[0];
          vst2_s8(v1590, v1591);
          v1588 += 32;
        }

        while (v1588 != 256);
        v1593 = 0;
        v1594 = (v181 + 6);
        v20 = a3;
        v1283 = v2831;
        v1285 = v2783;
        v1284 = v2784;
        v1286 = v2788;
        v28.i64[0] = 0x20002000200020;
        v28.i64[1] = 0x20002000200020;
        v19 = v2850;
        v1287 = v2801;
        v1288 = v2772;
        v1290 = v2757;
        v1289 = v2758;
        do
        {
          v1595 = &v2891.i8[v1593];
          v1596 = *v1594;
          v1594 = (v1594 + v136);
          v1597 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1596, v1596, 2uLL), v26), vzip1q_s8(vextq_s8(v1596, v1596, 3uLL), v26)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1596, v1596, 1uLL), v26), vzip1q_s8(vextq_s8(v1596, v1596, 4uLL), v26)));
          *v1596.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1597, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1596, v26), vzip1q_s8(vextq_s8(v1596, v1596, 5uLL), v26)), v1597)), v27), 5uLL));
          v1597.i64[0] = v26.i64[0];
          vst2_s8(v1595, v1596);
          v1593 += 32;
        }

        while (v1593 != 256);
        break;
      case 9:
        v2815 = v187;
        v1318 = v181;
        sub_27729B614(v2890.i8, 0x20u, v181, v136, 8);
        v1319 = (v1318 + 2);
        v187 = v2815;
        sub_27729B614(v2891.i8, 0x20u, v1319, v136, 8);
        goto LABEL_670;
      case 10:
        v2818 = v187;
        v1556 = v181;
        sub_27729B7DC(&v2890, 32, v181, v136, 8);
        v1557 = (v1556 + 2);
        v187 = v2818;
        sub_27729B7DC(&v2891, 32, v1557, v136, 8);
        goto LABEL_670;
      case 11:
        v2814 = v187;
        v1296 = v181;
        sub_27729B98C(v2890.i8, 0x20u, v181, v136, 8);
        v1297 = (v1296 + 2);
        v187 = v2814;
        sub_27729B98C(v2891.i8, 0x20u, v1297, v136, 8);
        goto LABEL_670;
      case 12:
        v1308 = 0;
        v1309 = (v181 - 2);
        do
        {
          v1310 = *v1309;
          v1309 = (v1309 + v136);
          v1311 = vzip1q_s8(vextq_s8(v1310, v1310, 3uLL), v26);
          v1312 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1310, v1310, 2uLL), v26), v1311), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1310, v1310, 1uLL), v26), vzip1q_s8(vextq_s8(v1310, v1310, 4uLL), v26)));
          *(&v2890 + v1308) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1312, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1310, v26), vzip1q_s8(vextq_s8(v1310, v1310, 5uLL), v26)), v1312)), v27), 5uLL))), v1311);
          v1308 += 32;
        }

        while (v1308 != 256);
        v1313 = 0;
        v1314 = (v181 + 6);
        v20 = a3;
        v1283 = v2831;
        v1285 = v2783;
        v1284 = v2784;
        v1286 = v2788;
        v28.i64[0] = 0x20002000200020;
        v28.i64[1] = 0x20002000200020;
        v19 = v2850;
        v1287 = v2801;
        v1288 = v2772;
        v1290 = v2757;
        v1289 = v2758;
        do
        {
          v1315 = *v1314;
          v1314 = (v1314 + v136);
          v1316 = vzip1q_s8(vextq_s8(v1315, v1315, 3uLL), v26);
          v1317 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1315, v1315, 2uLL), v26), v1316), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1315, v1315, 1uLL), v26), vzip1q_s8(vextq_s8(v1315, v1315, 4uLL), v26)));
          *(&v2891 + v1313) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1317, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1315, v26), vzip1q_s8(vextq_s8(v1315, v1315, 5uLL), v26)), v1317)), v27), 5uLL))), v1316);
          v1313 += 32;
        }

        while (v1313 != 256);
        break;
      case 13:
        v1351 = v181;
        v1352 = v136;
        v1353 = 2;
        goto LABEL_668;
      case 14:
        v2813 = v187;
        v1294 = v181;
        sub_27729C39C(v2890.i8, 0x20u, v181, v136);
        v1295 = (v1294 + 2);
        v187 = v2813;
        sub_27729C39C(v2891.i8, 0x20u, v1295, v136);
        goto LABEL_670;
      case 15:
        v1351 = v181;
        v1352 = v136;
        v1353 = 3;
LABEL_668:
        v1408 = 3;
LABEL_669:
        sub_27729AF04(v2890.i8, v1351, v1352, 8, v1353, v1408);
LABEL_670:
        v27.i64[0] = 0x10001000100010;
        v27.i64[1] = 0x10001000100010;
        v11 = v2855;
        v26 = v2869;
        v20 = a3;
        v1283 = v2831;
        v1285 = v2783;
        v1284 = v2784;
        v1286 = v2788;
        v28.i64[0] = 0x20002000200020;
        v28.i64[1] = 0x20002000200020;
        v19 = v2850;
        v1287 = v2801;
        v1288 = v2772;
        v1290 = v2757;
        v1289 = v2758;
        break;
      default:
        v1282 = 0;
        v20 = a3;
        v1283 = v2831;
        v1285 = v2783;
        v1284 = v2784;
        v1286 = v2788;
        v28.i64[0] = 0x20002000200020;
        v28.i64[1] = 0x20002000200020;
        v19 = v2850;
        v1287 = v2801;
        v1288 = v2772;
        v1290 = v2757;
        v1289 = v2758;
        do
        {
          v1291 = &v2890.i8[v1282];
          v1292 = *v181;
          v181 = (v181 + v136);
          v1293 = v26.i64[0];
          vst2_s8(v1291, v1292);
          v1291 += 16;
          *v1291 = vzip2q_s8(v1292, v26);
          v1282 += 32;
        }

        while (v1282 != 256);
        break;
    }

    v1409 = 0;
    do
    {
      v1410 = v2889[v1409 / 0x10];
      v1411 = vrhaddq_u16(*(&v2886 + v1409), *(&v2890 + v1409));
      v1412 = vrhaddq_u16(*(&v2886 + v1409 + 16), *(&v2891 + v1409));
      v1413 = vrhaddq_u16(*(&v2888 + v1409), *(&v2892 + v1409));
      v1414 = vrhaddq_u16(v1410, v2893[v1409 / 0x10]);
      if (a2)
      {
        v1410 = *v172;
        v1415 = *(v172 + 16);
        v1416 = *(v172 + 32);
        v1417 = *(v172 + 48);
        v172 += 64;
        v1411 = vaddq_s16(v1410, v1411);
        v1412 = vaddq_s16(v1415, v1412);
        v1413 = vaddq_s16(v1416, v1413);
        v1414 = vaddq_s16(v1417, v1414);
      }

      *v177->i8 = vqmovun_high_s16(vqmovun_s16(v1411), v1412);
      *&v177->i8[v1284] = vqmovun_high_s16(vqmovun_s16(v1413), v1414);
      v177 = (v177 + v1286);
      v1409 += 64;
    }

    while (v1409 != 256);
    if (v2756 == 64)
    {
      __asm { PRFM            #0, [X24] }

      v1442 = 5;
      v1420 = v2894;
      do
      {
        v1443 = _X24;
        _X24 = (_X24 + v2849);
        __asm { PRFM            #0, [X24] }

        v1445 = vextq_s8(*v1443, *v1443, 2uLL);
        v1445.i16[7] = v1443[1].i16[0];
        v1446 = vrhaddq_u8(*v1443, v1445);
        v1445.i64[0] = v26.i64[0];
        v1420[3] = vzip2q_s8(v1446, v26);
        v1420 += 2;
        vst2_s8(v1420->i8, *(&v1445 - 8));
        --v1442;
      }

      while (v1442 > 2);
      v1447 = vextq_s8(*_X24, *_X24, 2uLL);
      v1447.i16[7] = _X24[1].i16[0];
      v1440 = vrhaddq_u8(*_X24, v1447);
    }

    else
    {
      if (v2756 != 4)
      {
        if (v2756)
        {
          v1450 = 0;
          v1451 = v2762 - (8 * v2782 + 8 * v2786) + 64;
          v1452 = v26;
          v1452.i32[0] = v1451 | (v1451 << 16);
          v1453 = vqtbl1q_s8(v1452, xmmword_2773B3DF0);
          v1454 = v26;
          v1454.i32[0] = (8 * v2782 - v2762) | ((8 * v2782 - v2762) << 16);
          v1455 = vqtbl1q_s8(v1454, xmmword_2773B3DF0);
          v1456 = v26;
          v1456.i32[0] = (8 * v2786 - v2762) | ((8 * v2786 - v2762) << 16);
          v1457 = vqtbl1q_s8(v1456, xmmword_2773B3DF0);
          v2904 = v1453;
          v2905 = v1455;
          v2906 = v1457;
          v2907 = v1290;
          _X10 = &_X24->i8[v2849];
          __asm { PRFM            #0, [X10] }

          v1410.i64[0] = _X24->i64[0];
          v1460 = vqtbl1q_s8(v1410, xmmword_2773B3E00);
          v1460.i16[3] = _X24->i16[4];
          v1461 = vzip1q_s8(v1460, v26);
          v1462 = vzip1q_s8(v1410, v26);
          v1463 = v2778;
          if (v2778 <= -16)
          {
            v1463 = -16;
          }

          if (v1463 >= v2777)
          {
            v1464 = v2777;
          }

          else
          {
            v1464 = v1463;
          }

          v1465 = v1464 + v1288;
          v1466 = (v1283 + v1465 + v2849 + 8);
          _X15 = v1283 + v1465 + 2 * v2849;
          do
          {
            __asm { PRFM            #0, [X15] }

            v1469 = vmlaq_s16(vmulq_s16(v1455, v1461), v1453, v1462);
            v1461.i64[0] = *(v1466 - 1);
            v1462 = vzip1q_s8(v1461, v26);
            v1470 = vqtbl1q_s8(v1461, xmmword_2773B3E00);
            v1470.i16[3] = *v1466;
            v1466 = (v1466 + v2849);
            v1461 = vzip1q_s8(v1470, v26);
            *(&v2895 + v1450) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1469, v1457, v1462), v1290, v1461), v28), 6uLL);
            v1450 += 32;
            _X15 += v2849;
          }

          while (v1450 != 128);
          v1471 = 0;
          _X11 = &_X24->i64[1] + v2849;
          __asm { PRFM            #0, [X11] }

          v1462.i64[0] = _X24->i64[1];
          v1474 = vqtbl1q_s8(v1462, xmmword_2773B3E00);
          v1474.i16[3] = _X24[1].i16[0];
          v1475 = vzip1q_s8(v1474, v26);
          v1410 = vzip1q_s8(v1462, v26);
          if (v1463 >= v2777)
          {
            v1463 = v2777;
          }

          v1476 = v1283 + v1288 + v1463;
          do
          {
            _X12 = v1476 + 2 * v2849 + 8;
            v1476 += v2849;
            __asm { PRFM            #0, [X12] }

            v1479 = vmlaq_s16(vmulq_s16(v1455, v1475), v1453, v1410);
            v1475.i64[0] = *(v1476 + 8);
            v1410 = vzip1q_s8(v1475, v26);
            v1480 = vqtbl1q_s8(v1475, xmmword_2773B3E00);
            v1480.i16[3] = *(v1476 + 16);
            v1475 = vzip1q_s8(v1480, v26);
            *(&v2896 + v1471) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1479, v1457, v1410), v1290, v1475), v28), 6uLL);
            v1471 += 32;
          }

          while (v1471 != 128);
LABEL_704:
          if (v187 == 64)
          {
            __asm { PRFM            #0, [X26] }

            v1505 = 5;
            v1483 = v2899;
            do
            {
              v1506 = _X26;
              _X26 = (_X26 + v1287);
              __asm { PRFM            #0, [X26] }

              v1508 = vextq_s8(*v1506, *v1506, 2uLL);
              v1508.i16[7] = v1506[1].i16[0];
              v1509 = vrhaddq_u8(*v1506, v1508);
              v1508.i64[0] = v26.i64[0];
              v1483[3] = vzip2q_s8(v1509, v26);
              v1483 += 2;
              vst2_s8(v1483->i8, *(&v1508 - 8));
              --v1505;
            }

            while (v1505 > 2);
            v1510 = vextq_s8(*_X26, *_X26, 2uLL);
            v1510.i16[7] = _X26[1].i16[0];
            v1503 = vrhaddq_u8(*_X26, v1510);
          }

          else
          {
            if (v187 != 4)
            {
              if (v187)
              {
                v1513 = 0;
                v1514 = v2763 - (8 * v2828 + 8 * v2787) + 64;
                v1515 = v26;
                v1515.i32[0] = v1514 | (v1514 << 16);
                v1516 = vqtbl1q_s8(v1515, xmmword_2773B3DF0);
                v1517 = v26;
                v1517.i32[0] = (8 * v2828 - v2763) | ((8 * v2828 - v2763) << 16);
                v1518 = vqtbl1q_s8(v1517, xmmword_2773B3DF0);
                v1519 = v26;
                v1519.i32[0] = (8 * v2787 - v2763) | ((8 * v2787 - v2763) << 16);
                v1520 = vqtbl1q_s8(v1519, xmmword_2773B3DF0);
                v2908 = v1516;
                v2909 = v1518;
                v2910 = v1520;
                v2911 = v1289;
                _X8 = &_X26->i8[v1287];
                __asm { PRFM            #0, [X8] }

                v1410.i64[0] = _X26->i64[0];
                v1523 = vqtbl1q_s8(v1410, xmmword_2773B3E00);
                v1524 = -16;
                if (v2779 > -16)
                {
                  v1524 = v2779;
                }

                if (v1524 >= v2780)
                {
                  v1525 = v2780;
                }

                else
                {
                  v1525 = v1524;
                }

                v1526 = v2760 + v2768 + v1525;
                v1523.i16[3] = _X26->i16[4];
                v1527 = vzip1q_s8(v1523, v26);
                v1528 = vzip1q_s8(v1410, v26);
                do
                {
                  _X15 = v1526 + 2 * v1287;
                  v1526 += v1287;
                  __asm { PRFM            #0, [X15] }

                  v1531 = vmlaq_s16(vmulq_s16(v1518, v1527), v1516, v1528);
                  v1527.i64[0] = *v1526;
                  v1528 = vzip1q_s8(v1527, v26);
                  v1532 = vqtbl1q_s8(v1527, xmmword_2773B3E00);
                  v1532.i16[3] = *(v1526 + 8);
                  v1527 = vzip1q_s8(v1532, v26);
                  *(&v2900 + v1513) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1531, v1520, v1528), v1289, v1527), v28), 6uLL);
                  v1513 += 32;
                }

                while (v1513 != 128);
                v1533 = 0;
                _X11 = &_X26->i64[1] + v1287;
                __asm { PRFM            #0, [X11] }

                v1528.i64[0] = _X26->i64[1];
                v1536 = vqtbl1q_s8(v1528, xmmword_2773B3E00);
                v1536.i16[3] = _X26[1].i16[0];
                v1537 = vzip1q_s8(v1536, v26);
                v1538 = vzip1q_s8(v1528, v26);
                if (v1524 >= v2780)
                {
                  v1524 = v2780;
                }

                v1539 = v2760 + v2768 + v1524;
                do
                {
                  _X12 = v1539 + 2 * v1287 + 8;
                  v1539 += v1287;
                  __asm { PRFM            #0, [X12] }

                  v1542 = vmlaq_s16(vmulq_s16(v1518, v1537), v1516, v1538);
                  v1537.i64[0] = *(v1539 + 8);
                  v1538 = vzip1q_s8(v1537, v26);
                  v1543 = vqtbl1q_s8(v1537, xmmword_2773B3E00);
                  v1543.i16[3] = *(v1539 + 16);
                  v1537 = vzip1q_s8(v1543, v26);
                  *(&v2901 + v1533) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1542, v1520, v1538), v1289, v1537), v28), 6uLL);
                  v1533 += 32;
                }

                while (v1533 != 128);
                goto LABEL_733;
              }

              __asm { PRFM            #0, [X26] }

              v1482 = 5;
              v1483 = v2899;
              do
              {
                v1484 = _X26;
                _X26 = (_X26 + v1287);
                __asm { PRFM            #0, [X26] }

                v1486 = *v1484;
                v1483[3] = vzip2q_s8(*v1484, v26);
                v1483 += 2;
                v1487 = v26.i64[0];
                vst2_s8(v1483->i8, v1486);
                --v1482;
              }

              while (v1482 > 2);
              v1488 = *_X26;
              v1489 = vzip2q_s8(*_X26, v26);
              v1490 = v1483[2].i8;
              v1491 = v26.i64[0];
              vst2_s8(v1490, v1488);
LABEL_721:
              v1483[3] = v1489;
LABEL_733:
              v1544 = 1;
              v1545 = &v2900;
              do
              {
                v1546 = v1544;
                a9 = v1545[1];
                a10 = v1545[2];
                a11 = v1545[3];
                v1547 = vrhaddq_u16(v1545[-16], *v1545);
                v1548 = vrhaddq_u16(v1545[-15], a9);
                v1549 = vrhaddq_u16(v1545[-14], a10);
                v1550 = vrhaddq_u16(v1545[-13], a11);
                if (v20)
                {
                  v1551 = *v176;
                  a9 = *(v176 + 16);
                  a10 = *(v176 + 32);
                  a11 = *(v176 + 48);
                  v176 += 64;
                  v1547 = vaddq_s16(v1551, v1547);
                  v1548 = vaddq_s16(a9, v1548);
                  v1549 = vaddq_s16(a10, v1549);
                  v1550 = vaddq_s16(a11, v1550);
                }

                v1544 = 0;
                v1545 += 4;
                *v178->i8 = vqmovun_high_s16(vqmovun_s16(v1547), v1548);
                *&v178->i8[v1285] = vqmovun_high_s16(vqmovun_s16(v1549), v1550);
                v178 = (v178 + v2775);
              }

              while ((v1546 & 1) != 0);
              goto LABEL_1056;
            }

            _X8 = &_X26->i8[v1287];
            __asm { PRFM            #0, [X8] }

            v1494 = *_X26;
            v1495 = v2779;
            if (v2779 <= -16)
            {
              v1495 = -16;
            }

            if (v1495 >= v2780)
            {
              v1495 = v2780;
            }

            v1496 = (v2760 + v2768 + v1495);
            v1497 = 5;
            v1483 = v2899;
            do
            {
              _X13 = &v1496->i8[2 * v1287];
              v1496 = (v1496 + v1287);
              __asm { PRFM            #0, [X13] }

              v1500 = *v1496;
              v1501 = vrhaddq_u8(v1494, *v1496);
              v1502 = v26.i64[0];
              v1483[3] = vzip2q_s8(v1501, v26);
              v1483 += 2;
              vst2_s8(v1483->i8, v1501);
              --v1497;
              v1494 = v1500;
            }

            while (v1497 > 2);
            v1503 = vrhaddq_u8(v1500, *(v1496 + v1287));
          }

          v1511 = v1483[2].i8;
          v1512 = v26.i64[0];
          vst2_s8(v1511, v1503);
          v1489 = vzip2q_s8(v1503, v26);
          goto LABEL_721;
        }

        __asm { PRFM            #0, [X24] }

        v1419 = 5;
        v1420 = v2894;
        do
        {
          v1421 = _X24;
          _X24 = (_X24 + v2849);
          __asm { PRFM            #0, [X24] }

          v1423 = *v1421;
          v1420[3] = vzip2q_s8(*v1421, v26);
          v1420 += 2;
          v1424 = v26.i64[0];
          vst2_s8(v1420->i8, v1423);
          --v1419;
        }

        while (v1419 > 2);
        v1425 = *_X24;
        v1426 = vzip2q_s8(*_X24, v26);
        v1427 = v1420[2].i8;
        v1428 = v26.i64[0];
        vst2_s8(v1427, v1425);
LABEL_692:
        v1420[3] = v1426;
        goto LABEL_704;
      }

      _X8 = &_X24->i8[v2849];
      __asm { PRFM            #0, [X8] }

      v1431 = *_X24;
      v1432 = v2778;
      if (v2778 <= -16)
      {
        v1432 = -16;
      }

      if (v1432 >= v2777)
      {
        v1432 = v2777;
      }

      v1433 = (v1283 + v1288 + v1432);
      v1434 = 5;
      v1420 = v2894;
      do
      {
        _X13 = &v1433->i8[2 * v2849];
        v1433 = (v1433 + v2849);
        __asm { PRFM            #0, [X13] }

        v1437 = *v1433;
        v1438 = vrhaddq_u8(v1431, *v1433);
        v1439 = v26.i64[0];
        v1420[3] = vzip2q_s8(v1438, v26);
        v1420 += 2;
        vst2_s8(v1420->i8, v1438);
        --v1434;
        v1431 = v1437;
      }

      while (v1434 > 2);
      v1440 = vrhaddq_u8(v1437, *(v1433 + v2849));
    }

    v1448 = v1420[2].i8;
    v1449 = v26.i64[0];
    vst2_s8(v1448, v1440);
    v1426 = vzip2q_s8(v1440, v26);
    goto LABEL_692;
  }
}

void sub_2772F8B24(uint64_t a1, int16x8_t *a2, uint64_t a3, double a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, int8x16_t a9, int16x8_t a10, int16x8_t a11)
{
  v2286 = *MEMORY[0x277D85DE8];
  v12 = *(a1 + 216);
  v13 = *(v12 + 168);
  v14 = *(v12 + 184);
  if (*(v12 + 32))
  {
    v15 = 5;
  }

  else
  {
    v15 = 4;
  }

  if (*(v12 + 32))
  {
    v16 = 4;
  }

  else
  {
    v16 = 3;
  }

  if (*(a1 + 30))
  {
    v17 = *(v12 + 184);
  }

  else
  {
    v17 = 0;
  }

  if (*(a1 + 30))
  {
    v18 = *(v12 + 168);
  }

  else
  {
    v18 = 0;
  }

  v2241 = *(a1 + 48);
  v2260 = *(v2241 + 272);
  if (*(v2241 + 272))
  {
    v19 = a1;
    v20 = 0;
    v21 = *(a1 + 4);
    v22 = (16 * *a1);
    v2232 = (*(v12 + 72) + v22 + v17 + ((v21 << v16) * v14));
    v2233 = v22;
    v2231 = (*(v12 + 64) + v22 + v18 + ((v21 << v15) * v13));
    v2238 = *(*(v19 + 176) + 112);
    v2203 = v19 + 224;
    v2230 = 16 * v21;
    v2188 = (16 * v21) >> 1;
    v2256 = 2 * v14;
    v2257 = 2 * v13;
    v23 = xmmword_2773B3DF0;
    v24 = 0uLL;
    v25.i64[0] = 0x10001000100010;
    v25.i64[1] = 0x10001000100010;
    v2259 = v19;
    while (1)
    {
      v2264 = v20;
      v26 = (v2241 + 16 + 16 * v20);
      v27 = v26[15];
      v28 = *(v2241 + 26);
      if (v28 >= 0x103)
      {
        v28 = 259;
      }

      v29 = &word_280A6AB60[40 * v28];
      v30 = v29[v20 + 24];
      v31 = v30 >> 8;
      v32 = *(v29 + v20 + 32);
      v33 = byte_2773B3BA0[v32];
      v34 = byte_2773B3BB0[v32];
      v35 = (v2238 + 16 * v20);
      v2262 = v11;
      v2263 = v24;
      if (v27 == 6)
      {
        v36 = *(*(v19 + 224) + 8 * v26[8]);
        v2226 = v30 >> 8;
        if (*(v19 + 29))
        {
          v37 = *(v36 + 37);
          if (*(v19 + 30))
          {
            v38 = 2 * (v37 == 0);
          }

          else if (*(v36 + 37))
          {
            v38 = -2;
          }

          else
          {
            v38 = 0;
          }
        }

        else
        {
          v38 = 0;
          v37 = *(v36 + 37);
        }

        v44 = *(v36 + 64);
        v43 = *(v36 + 72);
        v45 = *(v36 + 168);
        if (v37)
        {
          v46 = *(v36 + 184);
          v44 += v45;
          v43 += v46;
        }

        else
        {
          LODWORD(v46) = *(v36 + 184);
        }

        v2239 = v44;
        v2244 = v43;
        v47 = *(*(v19 + 232) + 8 * v26[9]);
        v2236 = v30;
        if (*(v19 + 29))
        {
          v48 = *(v47 + 37);
          if (*(v19 + 30))
          {
            v49 = 2 * (v48 == 0);
          }

          else if (*(v47 + 37))
          {
            v49 = -2;
          }

          else
          {
            v49 = 0;
          }
        }

        else
        {
          v49 = 0;
          v48 = *(v47 + 37);
        }

        v106 = *v35;
        v107 = v35[1];
        v108 = v106 & 7;
        v109 = (v38 + v35[1]);
        v110 = (v38 + *(v35 + 2)) & 7;
        v2209 = *(v36 + 168);
        v2250 = 2 * v45;
        v2204 = v46;
        v2253 = 2 * v46;
        v111 = *(v36 + 164);
        v2234 = *(v36 + 180);
        v112 = *(v36 + 132);
        v113 = *(v36 + 148);
        v114 = v35[2];
        v115 = v35[3];
        v2243 = v114 & 7;
        v116 = (v49 + v115);
        v2248 = (v49 + v115) & 7;
        v117 = *(v47 + 64);
        v118 = *(v47 + 72);
        v119 = *(v47 + 168);
        v120 = v34;
        if (v48)
        {
          v121 = *(v47 + 184);
          v117 += v119;
          v118 += v121;
        }

        else
        {
          LODWORD(v121) = *(v47 + 184);
        }

        v2210 = v121;
        v2225 = v107 & 3 | (4 * (v106 & 3u));
        v2223 = v115 & 3 | (4 * (v114 & 3u));
        v2215 = *(v47 + 168);
        v122 = 2 * v119;
        v123 = 2 * v121;
        v2222 = v109 & 7;
        v2216 = v106 & 7;
        v124 = v24;
        v125 = v24;
        v126 = v24;
        v2200 = v110 * v108;
        v127 = v24;
        v128 = *(v47 + 164);
        v129 = *(v47 + 180);
        v130 = *(v47 + 132);
        v131 = *(v47 + 148);
        v124.i32[0] = 65537 * (8 - v110) * (8 - v108);
        a8 = xmmword_2773B3DF0;
        v125.i32[0] = 65537 * (8 - v110) * v108;
        v126.i32[0] = 65537 * v110 * (8 - v108);
        v127.i32[0] = 65537 * v110 * v108;
        a9 = vqtbl1q_s8(v127, xmmword_2773B3DF0);
        v2278 = vqtbl1q_s8(v124, xmmword_2773B3DF0);
        v2279 = vqtbl1q_s8(v125, xmmword_2773B3DF0);
        v2280 = vqtbl1q_s8(v126, xmmword_2773B3DF0);
        v2281 = a9;
        v132 = v24;
        v132.i32[0] = 65537 * (8 - v2248) * (8 - v2243);
        v23 = vqtbl1q_s8(v132, xmmword_2773B3DF0);
        v133 = v24;
        v133.i32[0] = 65537 * (8 - v2248) * v2243;
        a5 = vqtbl1q_s8(v133, xmmword_2773B3DF0);
        v134 = v24;
        v134.i32[0] = 65537 * v2248 * (8 - v2243);
        a6 = vqtbl1q_s8(v134, xmmword_2773B3DF0);
        v135 = v24;
        v135.i32[0] = 65537 * v2248 * v2243;
        a7 = vqtbl1q_s8(v135, xmmword_2773B3DF0);
        v2282 = v23;
        v2283 = a5;
        v2284 = a6;
        v2285 = a7;
        v136 = v2233 + v33;
        v137 = v2230 + v34;
        v138 = v2233 + v33 + (v106 >> 2);
        v139 = v2230 + v34 + (v107 >> 2);
        if (v138 <= -18)
        {
          v138 = -18;
        }

        if (v139 <= -18)
        {
          v139 = -18;
        }

        if (v138 >= v111 + 1)
        {
          v138 = v111 + 1;
        }

        if (v139 >= v112 + 1)
        {
          v139 = v112 + 1;
        }

        v140 = v136 + (v114 >> 2);
        v141 = v137 + (v115 >> 2);
        if (v140 <= -18)
        {
          v140 = -18;
        }

        if (v141 <= -18)
        {
          v141 = -18;
        }

        if (v140 >= v128 + 1)
        {
          v142 = v128 + 1;
        }

        else
        {
          v142 = v140;
        }

        if (v141 >= v130 + 1)
        {
          v141 = v130 + 1;
        }

        v2224 = v122;
        v2201 = v141;
        v2202 = v142;
        v143 = v142 + v141 * v122;
        v144 = ((v106 >> 2) & 0xFFFFFFFE) + v136;
        v145 = (v109 >> 3) + (v137 >> 1);
        v2214 = v144;
        if (v144 <= -16)
        {
          v144 = -16;
        }

        if (v145 <= -8)
        {
          v145 = -8;
        }

        v146 = v2234 - 2;
        if (v144 >= v2234 - 2)
        {
          v147 = v2234 - 2;
        }

        else
        {
          v147 = v144;
        }

        if (v145 >= v113)
        {
          v148 = v113 - 1;
        }

        else
        {
          v148 = v145;
        }

        v149 = v148 * v2253;
        v150 = ((v114 >> 2) & 0xFFFFFFFE) + v136;
        v151 = v120 >> 1;
        v152 = (v116 >> 3) + (v137 >> 1);
        if (v150 <= -16)
        {
          v153 = -16;
        }

        else
        {
          v153 = v150;
        }

        if (v152 <= -8)
        {
          v152 = -8;
        }

        v154 = (v2239 + v138 + v139 * v2250);
        v155 = v129 - 2;
        v2208 = v117;
        v156 = (v117 + v143);
        if (v153 >= v129 - 2)
        {
          v157 = v129 - 2;
        }

        else
        {
          v157 = v153;
        }

        _X20 = (v2244 + v147 + v149);
        if (v152 >= v131)
        {
          v152 = v131 - 1;
        }

        v159 = (a2[2 * v120].i64 + 2 * v33);
        v2235 = v123;
        v160 = v152 * v123;
        _X25 = (v118 + v157 + v152 * v123);
        v162 = (a3 + 2 * v33 + 32 * v151);
        switch(v2236)
        {
          case 4:
            v2246 = (a3 + 2 * v33 + 32 * v151);
            v2219 = (v151 * v2256);
            if (v2226 == 8)
            {
              v2198 = (v2257 * v120);
              v171 = &v154[2 * v2209];
              switch(v2225)
              {
                case 1:
                  v701 = sub_27729F23C(&v2265, v154, v2250, v23, a5, *a6.i64, a7, 3.52371676e-294, a9, a10, a11);
                  v178 = sub_27729F23C(&v2267, v171, v2250, v701, v702, v703, v704, v705, v706, v707, v708);
                  goto LABEL_461;
                case 2:
                  v524 = sub_27729F394(&v2265, v154, v2250, *v23.i64, a5, a6, *a7.i64, xmmword_2773B3DF0, a9, a10, a11);
                  *v178.i64 = sub_27729F394(&v2267, v171, v2250, v524, v525, v526, v527, v528, v529, v530, v531);
                  goto LABEL_461;
                case 3:
                  v625 = sub_27729F4D8(&v2265, v154, v2250, v23, a5, *a6.i64, a7, 3.52371676e-294, a9, a10, a11);
                  v178 = sub_27729F4D8(&v2267, v171, v2250, v625, v626, v627, v628, v629, v630, v631, v632);
                  goto LABEL_461;
                case 4:
                  sub_27729C91C(&v2265, 8u, v154, v2250);
                  v178 = sub_27729C91C(&v2267, 8u, v171, v2250);
                  goto LABEL_461;
                case 5:
                  *v806.i64 = sub_27729CAF0(&v2265, 8u, v154, v2250, v23, *a5.i64, *a6.i64, *a7.i64, 3.52371676e-294, a9, a10, a11);
                  *v178.i64 = sub_27729CAF0(&v2267, 8u, v171, v2250, v806, v807, v808, v809, v810, v811, v812, v813);
                  goto LABEL_461;
                case 6:
                  *v822.i64 = sub_27729CDD0(&v2265, 8u, v154, v2250, v23, a5, a6, a7, xmmword_2773B3DF0, a9, a10, a11);
                  *v178.i64 = sub_27729CDD0(&v2267, 8u, v171, v2250, v822, v823, v824, v825, v826, v827, v828, v829);
                  goto LABEL_461;
                case 7:
                  v644 = sub_27729D274(&v2265, 8u, v154, v2250, *v23.i64, *a5.i64, *a6.i64, *a7.i64, 3.52371676e-294, *a9.i64, a10, a11);
                  *v178.i64 = sub_27729D274(&v2267, 8u, v171, v2250, v644, v645, v646, v647, v648, v649, v650, v651);
                  goto LABEL_461;
                case 8:
                  sub_27729D550(&v2265, 8u, v154, v2250);
                  v178 = sub_27729D550(&v2267, 8u, v171, v2250);
                  goto LABEL_461;
                case 9:
                  sub_27729D714(&v2265, 8u, v154, v2250);
                  *v178.i64 = sub_27729D714(&v2267, 8u, v171, v2250);
                  goto LABEL_461;
                case 10:
                  *v833.i64 = sub_27729F62C(&v2265, v154, v2250, v23, a5, a6, a7, xmmword_2773B3DF0, a9, a10, a11);
                  *v178.i64 = sub_27729F62C(&v2267, v171, v2250, v833, v834, v835, v836, v837, v838, v839, v840);
                  goto LABEL_461;
                case 11:
                  sub_27729DE6C(&v2265, 8u, v154, v2250);
                  *v178.i64 = sub_27729DE6C(&v2267, 8u, v171, v2250);
                  goto LABEL_461;
                case 12:
                  sub_27729E5C4(&v2265, 8u, v154, v2250);
                  v178 = sub_27729E5C4(&v2267, 8u, v171, v2250);
                  goto LABEL_461;
                case 13:
                  *v814.i64 = sub_27729E798(&v2265, 8u, v154, v2250, v23, *a5.i64, *a6.i64, *a7.i64, 3.52371676e-294, a9, a10, a11);
                  *v178.i64 = sub_27729E798(&v2267, 8u, v171, v2250, v814, v815, v816, v817, v818, v819, v820, v821);
                  goto LABEL_461;
                case 14:
                  *v458.i64 = sub_27729EA7C(&v2265, 8u, v154, v2250, v23, a5, a6, a7, xmmword_2773B3DF0, a9, a10, a11);
                  *v178.i64 = sub_27729EA7C(&v2267, 8u, v171, v2250, v458, v459, v460, v461, v462, v463, v464, v465);
                  goto LABEL_461;
                case 15:
                  v617 = sub_27729EF20(&v2265, 8u, v154, v2250, *v23.i64, *a5.i64, *a6.i64, *a7.i64, 3.52371676e-294, *a9.i64, a10, a11);
                  *v178.i64 = sub_27729EF20(&v2267, 8u, v171, v2250, v617, v618, v619, v620, v621, v622, v623, v624);
LABEL_461:
                  v24 = v2263;
                  break;
                default:
                  v23.i32[0] = *(v154 + v2250);
                  a5.i32[0] = v154[v2209];
                  a6.i32[0] = *v154;
                  a7.i32[0] = *(v154 + 6 * v2209);
                  v172.i64[0] = vzip1q_s8(a6, v24).u64[0];
                  v173 = vzip1q_s8(v23, v24);
                  v174.i64[0] = vzip1q_s8(a5, v24).u64[0];
                  v175 = vzip1q_s8(a7, v24);
                  v172.i64[1] = v173.i64[0];
                  v174.i64[1] = v175.i64[0];
                  v2265 = v172;
                  v2266 = v174;
                  v173.i32[0] = *v171;
                  v174.i32[0] = *(v171 + v2250);
                  v172.i32[0] = v171[v2209];
                  v175.i32[0] = *(v171 + 6 * v2209);
                  v178.i64[0] = vzip1q_s8(v173, v24).u64[0];
                  v176 = vzip1q_s8(v174, v24);
                  v179.i64[0] = vzip1q_s8(v172, v24).u64[0];
                  v177 = vzip1q_s8(v175, v24);
                  v178.i64[1] = v176.i64[0];
                  v179.i64[1] = v177.i64[0];
                  v2267 = v178;
                  v2268 = v179;
                  break;
              }

              v841 = &v156[2 * v2215];
              switch(v2223)
              {
                case 1:
                  v890 = sub_27729F23C(&v2269, v156, v2224, v178, v176, *v179.i64, v177, *a8.i64, a9, a10, a11);
                  v848 = sub_27729F23C(v2271, v841, v2224, v890, v891, v892, v893, v894, v895, v896, v897);
                  break;
                case 2:
                  v858 = sub_27729F394(&v2269, v156, v2224, *v178.i64, v176, v179, *v177.i64, a8, a9, a10, a11);
                  *v848.i64 = sub_27729F394(v2271, v841, v2224, v858, v859, v860, v861, v862, v863, v864, v865);
                  break;
                case 3:
                  v874 = sub_27729F4D8(&v2269, v156, v2224, v178, v176, *v179.i64, v177, *a8.i64, a9, a10, a11);
                  v848 = sub_27729F4D8(v2271, v841, v2224, v874, v875, v876, v877, v878, v879, v880, v881);
                  break;
                case 4:
                  sub_27729C91C(&v2269, 8u, v156, v2224);
                  v848 = sub_27729C91C(v2271, 8u, v841, v2224);
                  break;
                case 5:
                  *v898.i64 = sub_27729CAF0(&v2269, 8u, v156, v2224, v178, *v176.i64, *v179.i64, *v177.i64, *a8.i64, a9, a10, a11);
                  *v848.i64 = sub_27729CAF0(v2271, 8u, v841, v2224, v898, v899, v900, v901, v902, v903, v904, v905);
                  break;
                case 6:
                  *v914.i64 = sub_27729CDD0(&v2269, 8u, v156, v2224, v178, v176, v179, v177, a8, a9, a10, a11);
                  *v848.i64 = sub_27729CDD0(v2271, 8u, v841, v2224, v914, v915, v916, v917, v918, v919, v920, v921);
                  break;
                case 7:
                  v882 = sub_27729D274(&v2269, 8u, v156, v2224, *v178.i64, *v176.i64, *v179.i64, *v177.i64, *a8.i64, *a9.i64, a10, a11);
                  *v848.i64 = sub_27729D274(v2271, 8u, v841, v2224, v882, v883, v884, v885, v886, v887, v888, v889);
                  break;
                case 8:
                  sub_27729D550(&v2269, 8u, v156, v2224);
                  v848 = sub_27729D550(v2271, 8u, v841, v2224);
                  break;
                case 9:
                  sub_27729D714(&v2269, 8u, v156, v2224);
                  *v848.i64 = sub_27729D714(v2271, 8u, v841, v2224);
                  break;
                case 10:
                  *v922.i64 = sub_27729F62C(&v2269, v156, v2224, v178, v176, v179, v177, a8, a9, a10, a11);
                  *v848.i64 = sub_27729F62C(v2271, v841, v2224, v922, v923, v924, v925, v926, v927, v928, v929);
                  break;
                case 11:
                  sub_27729DE6C(&v2269, 8u, v156, v2224);
                  *v848.i64 = sub_27729DE6C(v2271, 8u, v841, v2224);
                  break;
                case 12:
                  sub_27729E5C4(&v2269, 8u, v156, v2224);
                  v848 = sub_27729E5C4(v2271, 8u, v841, v2224);
                  break;
                case 13:
                  *v906.i64 = sub_27729E798(&v2269, 8u, v156, v2224, v178, *v176.i64, *v179.i64, *v177.i64, *a8.i64, a9, a10, a11);
                  *v848.i64 = sub_27729E798(v2271, 8u, v841, v2224, v906, v907, v908, v909, v910, v911, v912, v913);
                  break;
                case 14:
                  *v850.i64 = sub_27729EA7C(&v2269, 8u, v156, v2224, v178, v176, v179, v177, a8, a9, a10, a11);
                  *v848.i64 = sub_27729EA7C(v2271, 8u, v841, v2224, v850, v851, v852, v853, v854, v855, v856, v857);
                  break;
                case 15:
                  v866 = sub_27729EF20(&v2269, 8u, v156, v2224, *v178.i64, *v176.i64, *v179.i64, *v177.i64, *a8.i64, *a9.i64, a10, a11);
                  *v848.i64 = sub_27729EF20(v2271, 8u, v841, v2224, v866, v867, v868, v869, v870, v871, v872, v873);
                  break;
                default:
                  v178.i32[0] = *(v156 + v2224);
                  v176.i32[0] = v156[v2215];
                  v179.i32[0] = *v156;
                  v177.i32[0] = *(v156 + 6 * v2215);
                  v842.i64[0] = vzip1q_s8(v179, v24).u64[0];
                  v843 = vzip1q_s8(v178, v24);
                  v844.i64[0] = vzip1q_s8(v176, v24).u64[0];
                  v845 = vzip1q_s8(v177, v24);
                  v842.i64[1] = v843.i64[0];
                  v844.i64[1] = v845.i64[0];
                  v2269 = v842;
                  v2270 = v844;
                  v843.i32[0] = *v841;
                  v844.i32[0] = *(v841 + v2224);
                  v842.i32[0] = v841[v2215];
                  v845.i32[0] = *(v841 + 6 * v2215);
                  v848.i64[0] = vzip1q_s8(v843, v24).u64[0];
                  v846 = vzip1q_s8(v844, v24);
                  v849.i64[0] = vzip1q_s8(v842, v24).u64[0];
                  v847 = vzip1q_s8(v845, v24);
                  v848.i64[1] = v846.i64[0];
                  v849.i64[1] = v847.i64[0];
                  v2271[0] = v848;
                  v2271[1] = v849;
                  break;
              }

              sub_2772930A4(&v2265, &v2269, (v2231->i32 + v33 + v2198), v2257, a2, v159, 2, v2259, v848, v846, v849, v847, a8, a9, a10, a11, v2264);
              v941 = sub_277290798(v2273, _X20, v2253, v2216, v2222, v935, v936, v937, v938, v939, v940);
              v947 = sub_277290798(v2274, _X20->i64 + (4 * v2204), v2253, v2216, v2222, v941, v942, v943, v944, v945, v946);
              v953 = sub_277290798(v2276, _X25, v2235, v2243, v2248, v947, v948, v949, v950, v951, v952);
              *v959.i64 = sub_277290798(v2277, _X25->i64 + (4 * v2210), v2235, v2243, v2248, v953, v954, v955, v956, v957, v958);
              *v23.i64 = sub_2772934B0(v2273, v2276, (v2232->i32 + v33 + v2219), v2256, a3, v2246, v2259, v2264, v959, v960, v961, v962, v963, v964, v965, v966);
            }

            else
            {
              v222 = (v2257 * v120);
              switch(v2225)
              {
                case 1:
                  v225 = sub_27729F23C(&v2265, v154, v2250, v23, a5, *a6.i64, a7, 3.52371676e-294, a9, a10, a11);
                  goto LABEL_479;
                case 2:
                  *v225.i64 = sub_27729F394(&v2265, v154, v2250, *v23.i64, a5, a6, *a7.i64, xmmword_2773B3DF0, a9, a10, a11);
                  goto LABEL_479;
                case 3:
                  v225 = sub_27729F4D8(&v2265, v154, v2250, v23, a5, *a6.i64, a7, 3.52371676e-294, a9, a10, a11);
                  goto LABEL_479;
                case 4:
                  v225 = sub_27729C91C(&v2265, 8u, v154, v2250);
                  goto LABEL_479;
                case 5:
                  *v225.i64 = sub_27729CAF0(&v2265, 8u, v154, v2250, v23, *a5.i64, *a6.i64, *a7.i64, 3.52371676e-294, a9, a10, a11);
                  goto LABEL_479;
                case 6:
                  *v225.i64 = sub_27729CDD0(&v2265, 8u, v154, v2250, v23, a5, a6, a7, xmmword_2773B3DF0, a9, a10, a11);
                  goto LABEL_479;
                case 7:
                  *v225.i64 = sub_27729D274(&v2265, 8u, v154, v2250, *v23.i64, *a5.i64, *a6.i64, *a7.i64, 3.52371676e-294, *a9.i64, a10, a11);
                  goto LABEL_479;
                case 8:
                  v225 = sub_27729D550(&v2265, 8u, v154, v2250);
                  goto LABEL_479;
                case 9:
                  *v225.i64 = sub_27729D714(&v2265, 8u, v154, v2250);
                  goto LABEL_479;
                case 10:
                  *v225.i64 = sub_27729F62C(&v2265, v154, v2250, v23, a5, a6, a7, xmmword_2773B3DF0, a9, a10, a11);
                  goto LABEL_479;
                case 11:
                  *v225.i64 = sub_27729DE6C(&v2265, 8u, v154, v2250);
                  goto LABEL_479;
                case 12:
                  v225 = sub_27729E5C4(&v2265, 8u, v154, v2250);
                  goto LABEL_479;
                case 13:
                  *v225.i64 = sub_27729E798(&v2265, 8u, v154, v2250, v23, *a5.i64, *a6.i64, *a7.i64, 3.52371676e-294, a9, a10, a11);
                  goto LABEL_479;
                case 14:
                  *v225.i64 = sub_27729EA7C(&v2265, 8u, v154, v2250, v23, a5, a6, a7, xmmword_2773B3DF0, a9, a10, a11);
                  goto LABEL_479;
                case 15:
                  *v225.i64 = sub_27729EF20(&v2265, 8u, v154, v2250, *v23.i64, *a5.i64, *a6.i64, *a7.i64, 3.52371676e-294, *a9.i64, a10, a11);
LABEL_479:
                  v24 = v2263;
                  break;
                default:
                  v23.i32[0] = *v154;
                  a5.i32[0] = *(v154 + v2250);
                  a6.i32[0] = v154[v2209];
                  a7.i32[0] = *(v154 + 6 * v2209);
                  v225.i64[0] = vzip1q_s8(v23, v24).u64[0];
                  v223 = vzip1q_s8(a5, v24);
                  v226.i64[0] = vzip1q_s8(a6, v24).u64[0];
                  v224 = vzip1q_s8(a7, v24);
                  v225.i64[1] = v223.i64[0];
                  v226.i64[1] = v224.i64[0];
                  v2265 = v225;
                  v2266 = v226;
                  break;
              }

              switch(v2223)
              {
                case 1:
                  v930 = &v2232->i8[v33];
                  v933 = sub_27729F23C(&v2269, v156, v2224, v225, v223, *v226.i64, v224, *a8.i64, a9, a10, a11);
                  break;
                case 2:
                  v930 = &v2232->i8[v33];
                  *v933.i64 = sub_27729F394(&v2269, v156, v2224, *v225.i64, v223, v226, *v224.i64, a8, a9, a10, a11);
                  break;
                case 3:
                  v930 = &v2232->i8[v33];
                  v933 = sub_27729F4D8(&v2269, v156, v2224, v225, v223, *v226.i64, v224, *a8.i64, a9, a10, a11);
                  break;
                case 4:
                  v930 = &v2232->i8[v33];
                  v933 = sub_27729C91C(&v2269, 8u, v156, v2224);
                  break;
                case 5:
                  v930 = &v2232->i8[v33];
                  *v933.i64 = sub_27729CAF0(&v2269, 8u, v156, v2224, v225, *v223.i64, *v226.i64, *v224.i64, *a8.i64, a9, a10, a11);
                  break;
                case 6:
                  v930 = &v2232->i8[v33];
                  *v933.i64 = sub_27729CDD0(&v2269, 8u, v156, v2224, v225, v223, v226, v224, a8, a9, a10, a11);
                  break;
                case 7:
                  v930 = &v2232->i8[v33];
                  *v933.i64 = sub_27729D274(&v2269, 8u, v156, v2224, *v225.i64, *v223.i64, *v226.i64, *v224.i64, *a8.i64, *a9.i64, a10, a11);
                  break;
                case 8:
                  v930 = &v2232->i8[v33];
                  v933 = sub_27729D550(&v2269, 8u, v156, v2224);
                  break;
                case 9:
                  v930 = &v2232->i8[v33];
                  *v933.i64 = sub_27729D714(&v2269, 8u, v156, v2224);
                  break;
                case 10:
                  v930 = &v2232->i8[v33];
                  *v933.i64 = sub_27729F62C(&v2269, v156, v2224, v225, v223, v226, v224, a8, a9, a10, a11);
                  break;
                case 11:
                  v930 = &v2232->i8[v33];
                  *v933.i64 = sub_27729DE6C(&v2269, 8u, v156, v2224);
                  break;
                case 12:
                  v930 = &v2232->i8[v33];
                  v933 = sub_27729E5C4(&v2269, 8u, v156, v2224);
                  break;
                case 13:
                  v930 = &v2232->i8[v33];
                  *v933.i64 = sub_27729E798(&v2269, 8u, v156, v2224, v225, *v223.i64, *v226.i64, *v224.i64, *a8.i64, a9, a10, a11);
                  break;
                case 14:
                  v930 = &v2232->i8[v33];
                  *v933.i64 = sub_27729EA7C(&v2269, 8u, v156, v2224, v225, v223, v226, v224, a8, a9, a10, a11);
                  break;
                case 15:
                  v930 = &v2232->i8[v33];
                  *v933.i64 = sub_27729EF20(&v2269, 8u, v156, v2224, *v225.i64, *v223.i64, *v226.i64, *v224.i64, *a8.i64, *a9.i64, a10, a11);
                  break;
                default:
                  v930 = &v2232->i8[v33];
                  v225.i32[0] = *v156;
                  v223.i32[0] = *(v156 + v2224);
                  v226.i32[0] = v156[v2215];
                  v224.i32[0] = *(v156 + 6 * v2215);
                  v933.i64[0] = vzip1q_s8(v225, v24).u64[0];
                  v931 = vzip1q_s8(v223, v24);
                  v934.i64[0] = vzip1q_s8(v226, v24).u64[0];
                  v932 = vzip1q_s8(v224, v24);
                  v933.i64[1] = v931.i64[0];
                  v934.i64[1] = v932.i64[0];
                  v2269 = v933;
                  v2270 = v934;
                  break;
              }

              sub_2772930A4(&v2265, &v2269, (v2231->i32 + v33 + v222), v2257, a2, v159, 1, v2259, v933, v931, v934, v932, a8, a9, a10, a11, v2264);
              v973 = sub_277290798(v2273, _X20, v2253, v2216, v2222, v967, v968, v969, v970, v971, v972);
              *v979.i64 = sub_277290798(v2276, _X25, v2235, v2243, v2248, v973, v974, v975, v976, v977, v978);
              *v23.i8 = sub_2772938EC(v2273, v2276, &v930[v2219], v2256, a3, v2246, v2259, v2264, v979, v980, v981, v982, v983, v984, v985);
            }

            v11 = v2262;
            v24 = v2263;
            goto LABEL_987;
          case 8:
            switch(v2226)
            {
              case 4u:
                v237 = (v2257 * v120);
                v2229 = (&a2[2 * v120] + 2 * v33);
                v2221 = (v151 * v2256);
                switch(v2225)
                {
                  case 1:
                    v1676 = 0;
                    v1677 = &v154[-v2209];
                    v1678 = (v1677 + v2250);
                    v1679 = (v1678 + v2250);
                    v1680 = (v1679 + v2250);
                    a5 = vzip1q_s8(*(v1680 + v2250), v24);
                    v241 = vzip1q_s8(*v1680, v24);
                    a6 = vzip1q_s8(*v1679, v24);
                    a7 = vzip1q_s8(*v1678, v24);
                    a8 = vzip1q_s8(*v1677, v24);
                    v1681 = (v2239 + 5 * v2250 + v138 + 2 * v2209 * v139 - 4 * v2209);
                    v239 = v2223;
                    do
                    {
                      a9 = a7;
                      a7 = a6;
                      a6 = v241;
                      v241 = a5;
                      a5 = vzip1q_s8(*v1681, v24);
                      v1682 = vsubq_s16(vshlq_n_s16(vaddq_s16(a7, a6), 2uLL), vaddq_s16(a9, v241));
                      a11 = vshlq_n_s16(v1682, 2uLL);
                      v1683 = vaddq_s16(vaddq_s16(a8, v1682), a11);
                      a10 = vaddq_s16(a5, v25);
                      *(&v2265 + v1676) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(v1683, a10), 5uLL))), a7);
                      v1676 += 16;
                      v1681 = (v1681 + v2250);
                      a8 = a9;
                    }

                    while (v1676 != 64);
                    break;
                  case 2:
                    v1600 = 0;
                    v1601 = &v154[-v2209];
                    v1602 = (v1601 + v2250);
                    v1603 = (v1602 + v2250);
                    v1604 = (v1603 + v2250);
                    a6 = vzip1q_s8(*(v1604 + v2250), v24);
                    v241 = vzip1q_s8(*v1604, v24);
                    a5 = vzip1q_s8(*v1603, v24);
                    a7 = vzip1q_s8(*v1602, v24);
                    a8 = vzip1q_s8(*v1601, v24);
                    v1605 = (v2239 + 5 * v2250 + v138 + 2 * v2209 * v139 - 4 * v2209);
                    v239 = v2223;
                    do
                    {
                      a9 = a7;
                      a7 = a5;
                      a5 = v241;
                      v241 = a6;
                      v1606 = &v2265.i8[v1600];
                      a6 = vzip1q_s8(*v1605, v24);
                      v1607 = vsubq_s16(vshlq_n_s16(vaddq_s16(a7, a5), 2uLL), vaddq_s16(a9, v241));
                      a11 = vshlq_n_s16(v1607, 2uLL);
                      v1608 = vaddq_s16(vaddq_s16(a8, v1607), a11);
                      a10 = vaddq_s16(a6, v25);
                      *a10.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(v1608, a10), 5uLL));
                      a11.i64[0] = v24.i64[0];
                      vst2_s8(v1606, a10);
                      v1600 += 16;
                      v1605 = (v1605 + v2250);
                      a8 = a9;
                    }

                    while (v1600 != 64);
                    break;
                  case 3:
                    v1647 = 0;
                    v1648 = &v154[-v2209];
                    v1649 = (v1648 + v2250);
                    v1650 = (v1649 + v2250);
                    v1651 = (v1650 + v2250);
                    a5 = vzip1q_s8(*(v1651 + v2250), v24);
                    v241 = vzip1q_s8(*v1651, v24);
                    a6 = vzip1q_s8(*v1650, v24);
                    a7 = vzip1q_s8(*v1649, v24);
                    a8 = vzip1q_s8(*v1648, v24);
                    v1652 = (v2239 + 5 * v2250 + v138 + 2 * v2209 * v139 - 4 * v2209);
                    v239 = v2223;
                    do
                    {
                      a9 = a7;
                      a7 = a6;
                      a6 = v241;
                      v241 = a5;
                      a5 = vzip1q_s8(*v1652, v24);
                      v1653 = vsubq_s16(vshlq_n_s16(vaddq_s16(a7, a6), 2uLL), vaddq_s16(a9, v241));
                      a11 = vshlq_n_s16(v1653, 2uLL);
                      v1654 = vaddq_s16(vaddq_s16(a8, v1653), a11);
                      a10 = vaddq_s16(a5, v25);
                      *(&v2265 + v1647) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(v1654, a10), 5uLL))), a6);
                      v1647 += 16;
                      v1652 = (v1652 + v2250);
                      a8 = a9;
                    }

                    while (v1647 != 64);
                    break;
                  case 4:
                    sub_27729C91C(&v2265, 0x10u, v154, v2250);
                    v241 = sub_27729C91C(&v2265.i64[1], 0x10u, (v154 + 1), v2250);
                    goto LABEL_913;
                  case 5:
                    *v1811.i64 = sub_27729CAF0(&v2265, 0x10u, v154, v2250, v23, *a5.i64, *a6.i64, *a7.i64, 3.52371676e-294, a9, a10, a11);
                    *v241.i64 = sub_27729CAF0(&v2265.i64[1], 0x10u, (v154 + 1), v2250, v1811, v1812, v1813, v1814, v1815, v1816, v1817, v1818);
                    goto LABEL_913;
                  case 6:
                    *v1827.i64 = sub_27729CDD0(&v2265, 0x10u, v154, v2250, v23, a5, a6, a7, xmmword_2773B3DF0, a9, a10, a11);
                    *v241.i64 = sub_27729CDD0(&v2265.i64[1], 0x10u, (v154 + 1), v2250, v1827, v1828, v1829, v1830, v1831, v1832, v1833, v1834);
                    goto LABEL_913;
                  case 7:
                    v1658 = sub_27729D274(&v2265, 0x10u, v154, v2250, *v23.i64, *a5.i64, *a6.i64, *a7.i64, 3.52371676e-294, *a9.i64, a10, a11);
                    *v241.i64 = sub_27729D274(&v2265.i64[1], 0x10u, (v154 + 1), v2250, v1658, v1659, v1660, v1661, v1662, v1663, v1664, v1665);
                    goto LABEL_913;
                  case 8:
                    sub_27729D550(&v2265, 0x10u, v154, v2250);
                    v241 = sub_27729D550(&v2265.i64[1], 0x10u, (v154 + 1), v2250);
                    goto LABEL_913;
                  case 9:
                    sub_27729D714(&v2265, 0x10u, v154, v2250);
                    *v241.i64 = sub_27729D714(&v2265.i64[1], 0x10u, (v154 + 1), v2250);
                    goto LABEL_913;
                  case 10:
                    sub_27729B7DC(&v2265, 16, v154, v2250, 4);
                    goto LABEL_913;
                  case 11:
                    sub_27729DE6C(&v2265, 0x10u, v154, v2250);
                    *v241.i64 = sub_27729DE6C(&v2265.i64[1], 0x10u, (v154 + 1), v2250);
                    goto LABEL_913;
                  case 12:
                    sub_27729E5C4(&v2265, 0x10u, v154, v2250);
                    v241 = sub_27729E5C4(&v2265.i64[1], 0x10u, (v154 + 1), v2250);
                    goto LABEL_913;
                  case 13:
                    *v1819.i64 = sub_27729E798(&v2265, 0x10u, v154, v2250, v23, *a5.i64, *a6.i64, *a7.i64, 3.52371676e-294, a9, a10, a11);
                    *v241.i64 = sub_27729E798(&v2265.i64[1], 0x10u, (v154 + 1), v2250, v1819, v1820, v1821, v1822, v1823, v1824, v1825, v1826);
                    goto LABEL_913;
                  case 14:
                    *v1542.i64 = sub_27729EA7C(&v2265, 0x10u, v154, v2250, v23, a5, a6, a7, xmmword_2773B3DF0, a9, a10, a11);
                    *v241.i64 = sub_27729EA7C(&v2265.i64[1], 0x10u, (v154 + 1), v2250, v1542, v1543, v1544, v1545, v1546, v1547, v1548, v1549);
                    goto LABEL_913;
                  case 15:
                    v1631 = sub_27729EF20(&v2265, 0x10u, v154, v2250, *v23.i64, *a5.i64, *a6.i64, *a7.i64, 3.52371676e-294, *a9.i64, a10, a11);
                    *v241.i64 = sub_27729EF20(&v2265.i64[1], 0x10u, (v154 + 1), v2250, v1631, v1632, v1633, v1634, v1635, v1636, v1637, v1638);
LABEL_913:
                    v25.i64[0] = 0x10001000100010;
                    v25.i64[1] = 0x10001000100010;
                    v24 = v2263;
                    v239 = v2223;
                    break;
                  default:
                    v238 = 0;
                    v239 = v2223;
                    do
                    {
                      v240 = &v2265.i8[v238];
                      v241 = *v154;
                      v154 = (v154 + v2250);
                      a5.i64[0] = v24.i64[0];
                      vst2_s8(v240, *(&a5 - 8));
                      v238 += 16;
                    }

                    while (v238 != 64);
                    break;
                }

                switch(v239)
                {
                  case 1:
                    v1882 = 0;
                    v1883 = &v156[-v2215];
                    v1884 = (v1883 + v2224);
                    v1885 = (v1884 + v2224);
                    v1886 = (v1885 + v2224);
                    v1839 = vzip1q_s8(*(v1886 + v2224), v24);
                    v1838 = vzip1q_s8(*v1886, v24);
                    a6 = vzip1q_s8(*v1885, v24);
                    a7 = vzip1q_s8(*v1884, v24);
                    a8 = vzip1q_s8(*v1883, v24);
                    v1887 = (v2208 + 5 * v2224 + v2202 + 2 * v2215 * v2201 - 4 * v2215);
                    do
                    {
                      a9 = a7;
                      a7 = a6;
                      a6 = v1838;
                      v1838 = v1839;
                      v1839 = vzip1q_s8(*v1887, v24);
                      v1888 = vsubq_s16(vshlq_n_s16(vaddq_s16(a7, a6), 2uLL), vaddq_s16(a9, v1838));
                      v1889 = vaddq_s16(vaddq_s16(a8, v1888), vshlq_n_s16(v1888, 2uLL));
                      a10 = vaddq_s16(v1839, v25);
                      *(&v2269 + v1882) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(v1889, a10), 5uLL))), a7);
                      v1882 += 16;
                      v1887 = (v1887 + v2224);
                      a8 = a9;
                    }

                    while (v1882 != 64);
                    break;
                  case 2:
                    v1848 = 0;
                    v1849 = &v156[-v2215];
                    v1850 = (v1849 + v2224);
                    v1851 = (v1850 + v2224);
                    v1852 = (v1851 + v2224);
                    a6 = vzip1q_s8(*(v1852 + v2224), v24);
                    v1838 = vzip1q_s8(*v1852, v24);
                    v1839 = vzip1q_s8(*v1851, v24);
                    a7 = vzip1q_s8(*v1850, v24);
                    a8 = vzip1q_s8(*v1849, v24);
                    v1853 = (v2208 + 5 * v2224 + v2202 + 2 * v2215 * v2201 - 4 * v2215);
                    do
                    {
                      a9 = a7;
                      a7 = v1839;
                      v1839 = v1838;
                      v1838 = a6;
                      v1854 = &v2269.i8[v1848];
                      a6 = vzip1q_s8(*v1853, v24);
                      v1855 = vsubq_s16(vshlq_n_s16(vaddq_s16(a7, v1839), 2uLL), vaddq_s16(a9, v1838));
                      v1856 = vaddq_s16(vaddq_s16(a8, v1855), vshlq_n_s16(v1855, 2uLL));
                      a10 = vaddq_s16(a6, v25);
                      *a10.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(v1856, a10), 5uLL));
                      v1857 = v24.i64[0];
                      vst2_s8(v1854, a10);
                      v1848 += 16;
                      v1853 = (v1853 + v2224);
                      a8 = a9;
                    }

                    while (v1848 != 64);
                    break;
                  case 3:
                    v1866 = 0;
                    v1867 = &v156[-v2215];
                    v1868 = (v1867 + v2224);
                    v1869 = (v1868 + v2224);
                    v1870 = (v1869 + v2224);
                    v1839 = vzip1q_s8(*(v1870 + v2224), v24);
                    v1838 = vzip1q_s8(*v1870, v24);
                    a6 = vzip1q_s8(*v1869, v24);
                    a7 = vzip1q_s8(*v1868, v24);
                    a8 = vzip1q_s8(*v1867, v24);
                    v1871 = (v2208 + 5 * v2224 + v2202 + 2 * v2215 * v2201 - 4 * v2215);
                    do
                    {
                      a9 = a7;
                      a7 = a6;
                      a6 = v1838;
                      v1838 = v1839;
                      v1839 = vzip1q_s8(*v1871, v24);
                      v1872 = vsubq_s16(vshlq_n_s16(vaddq_s16(a7, a6), 2uLL), vaddq_s16(a9, v1838));
                      v1873 = vaddq_s16(vaddq_s16(a8, v1872), vshlq_n_s16(v1872, 2uLL));
                      a10 = vaddq_s16(v1839, v25);
                      *(&v2269 + v1866) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(v1873, a10), 5uLL))), a6);
                      v1866 += 16;
                      v1871 = (v1871 + v2224);
                      a8 = a9;
                    }

                    while (v1866 != 64);
                    break;
                  case 4:
                    sub_27729C91C(&v2269, 0x10u, v156, v2224);
                    v1838 = sub_27729C91C(&v2269.i64[1], 0x10u, (v156 + 1), v2224);
                    break;
                  case 5:
                    *v1890.i64 = sub_27729CAF0(&v2269, 0x10u, v156, v2224, v241, *a5.i64, *a6.i64, *a7.i64, *a8.i64, a9, a10, a11);
                    *v1838.i64 = sub_27729CAF0(&v2269.i64[1], 0x10u, (v156 + 1), v2224, v1890, v1891, v1892, v1893, v1894, v1895, v1896, v1897);
                    break;
                  case 6:
                    *v1906.i64 = sub_27729CDD0(&v2269, 0x10u, v156, v2224, v241, a5, a6, a7, a8, a9, a10, a11);
                    *v1838.i64 = sub_27729CDD0(&v2269.i64[1], 0x10u, (v156 + 1), v2224, v1906, v1907, v1908, v1909, v1910, v1911, v1912, v1913);
                    break;
                  case 7:
                    v1874 = sub_27729D274(&v2269, 0x10u, v156, v2224, *v241.i64, *a5.i64, *a6.i64, *a7.i64, *a8.i64, *a9.i64, a10, a11);
                    *v1838.i64 = sub_27729D274(&v2269.i64[1], 0x10u, (v156 + 1), v2224, v1874, v1875, v1876, v1877, v1878, v1879, v1880, v1881);
                    break;
                  case 8:
                    sub_27729D550(&v2269, 0x10u, v156, v2224);
                    v1838 = sub_27729D550(&v2269.i64[1], 0x10u, (v156 + 1), v2224);
                    break;
                  case 9:
                    sub_27729D714(&v2269, 0x10u, v156, v2224);
                    *v1838.i64 = sub_27729D714(&v2269.i64[1], 0x10u, (v156 + 1), v2224);
                    break;
                  case 10:
                    sub_27729B7DC(&v2269, 16, v156, v2224, 4);
                    break;
                  case 11:
                    sub_27729DE6C(&v2269, 0x10u, v156, v2224);
                    *v1838.i64 = sub_27729DE6C(&v2269.i64[1], 0x10u, (v156 + 1), v2224);
                    break;
                  case 12:
                    sub_27729E5C4(&v2269, 0x10u, v156, v2224);
                    v1838 = sub_27729E5C4(&v2269.i64[1], 0x10u, (v156 + 1), v2224);
                    break;
                  case 13:
                    *v1898.i64 = sub_27729E798(&v2269, 0x10u, v156, v2224, v241, *a5.i64, *a6.i64, *a7.i64, *a8.i64, a9, a10, a11);
                    *v1838.i64 = sub_27729E798(&v2269.i64[1], 0x10u, (v156 + 1), v2224, v1898, v1899, v1900, v1901, v1902, v1903, v1904, v1905);
                    break;
                  case 14:
                    *v1840.i64 = sub_27729EA7C(&v2269, 0x10u, v156, v2224, v241, a5, a6, a7, a8, a9, a10, a11);
                    *v1838.i64 = sub_27729EA7C(&v2269.i64[1], 0x10u, (v156 + 1), v2224, v1840, v1841, v1842, v1843, v1844, v1845, v1846, v1847);
                    break;
                  case 15:
                    v1858 = sub_27729EF20(&v2269, 0x10u, v156, v2224, *v241.i64, *a5.i64, *a6.i64, *a7.i64, *a8.i64, *a9.i64, a10, a11);
                    *v1838.i64 = sub_27729EF20(&v2269.i64[1], 0x10u, (v156 + 1), v2224, v1858, v1859, v1860, v1861, v1862, v1863, v1864, v1865);
                    break;
                  default:
                    v1836 = 0;
                    do
                    {
                      v1837 = &v2269.i8[v1836];
                      v1838 = *v156;
                      v156 = (v156 + v2224);
                      v1839.i64[0] = v24.i64[0];
                      vst2_s8(v1837, v1838);
                      v1836 += 16;
                    }

                    while (v1836 != 64);
                    break;
                }

                sub_277292664(&v2265, &v2269, &v2231->i8[v33 + v237], v2257, a2, v2229, 1, v2259, v1838, *v1839.i64, *a6.i64, a7, *a8.i64, *a9.i64, a10, v2264);
                sub_2772906A8(v2273, _X20, v2253, &v2278);
                v1914 = sub_2772906A8(v2276, _X25, v2235, &v2282);
                *v23.i8 = sub_277292EC4(v2273, v2276, &v2232->i8[v33 + v2221], v2256, a3, v162, v2259, v2264, v1914, v1915, v1916, v1917);
                v25.i64[0] = 0x10001000100010;
                v25.i64[1] = 0x10001000100010;
                v11 = v2262;
                v24 = v2263;
                goto LABEL_988;
              case 8u:
                v2207 = v149;
                v2191 = v155;
                v2213 = v160;
                v2194 = v118;
                v2199 = (v2257 * v120);
                v2228 = (&a2[2 * v120] + 2 * v33);
                v2220 = (v151 * v2256);
                switch(v2225)
                {
                  case 1:
                    v1621 = 0;
                    v1622 = &v154[-v2209];
                    v1623 = (v1622 + v2250);
                    v1624 = (v1623 + v2250);
                    v1625 = (v1624 + v2250);
                    v1626 = vzip1q_s8(*(v1625 + v2250), v24);
                    v1627 = vzip1q_s8(*v1625, v24);
                    a6 = vzip1q_s8(*v1624, v24);
                    a7 = vzip1q_s8(*v1623, v24);
                    a8 = vzip1q_s8(*v1622, v24);
                    v1628 = (v2239 + 5 * v2250 + v138 + 2 * v2209 * v139 - 4 * v2209);
                    v233 = v2223;
                    do
                    {
                      a9 = a7;
                      a7 = a6;
                      a6 = v1627;
                      v1627 = v1626;
                      v1626 = vzip1q_s8(*v1628, v24);
                      v1629 = vsubq_s16(vshlq_n_s16(vaddq_s16(a7, a6), 2uLL), vaddq_s16(a9, v1627));
                      v1630 = vaddq_s16(vaddq_s16(a8, v1629), vshlq_n_s16(v1629, 2uLL));
                      a10 = vaddq_s16(v1626, v25);
                      *(&v2265 + v1621) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(v1630, a10), 5uLL))), a7);
                      v1621 += 16;
                      v1628 = (v1628 + v2250);
                      a8 = a9;
                    }

                    while (v1621 != 128);
                    break;
                  case 2:
                    v1571 = 0;
                    v1572 = &v154[-v2209];
                    v1573 = (v1572 + v2250);
                    v1574 = (v1573 + v2250);
                    v1575 = (v1574 + v2250);
                    a6 = vzip1q_s8(*(v1575 + v2250), v24);
                    v1576 = vzip1q_s8(*v1575, v24);
                    v1577 = vzip1q_s8(*v1574, v24);
                    a7 = vzip1q_s8(*v1573, v24);
                    a8 = vzip1q_s8(*v1572, v24);
                    v1578 = (v2239 + 5 * v2250 + v138 + 2 * v2209 * v139 - 4 * v2209);
                    v233 = v2223;
                    do
                    {
                      a9 = a7;
                      a7 = v1577;
                      v1577 = v1576;
                      v1576 = a6;
                      v1579 = &v2265.i8[v1571];
                      a6 = vzip1q_s8(*v1578, v24);
                      v1580 = vsubq_s16(vshlq_n_s16(vaddq_s16(a7, v1577), 2uLL), vaddq_s16(a9, v1576));
                      v1581 = vaddq_s16(vaddq_s16(a8, v1580), vshlq_n_s16(v1580, 2uLL));
                      a10 = vaddq_s16(a6, v25);
                      *a10.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(v1581, a10), 5uLL));
                      v1582 = v24.i64[0];
                      vst2_s8(v1579, a10);
                      v1571 += 16;
                      v1578 = (v1578 + v2250);
                      a8 = a9;
                    }

                    while (v1571 != 128);
                    break;
                  case 3:
                    v1590 = 0;
                    v1591 = &v154[-v2209];
                    v1592 = (v1591 + v2250);
                    v1593 = (v1592 + v2250);
                    v1594 = (v1593 + v2250);
                    v1595 = vzip1q_s8(*(v1594 + v2250), v24);
                    v1596 = vzip1q_s8(*v1594, v24);
                    a6 = vzip1q_s8(*v1593, v24);
                    a7 = vzip1q_s8(*v1592, v24);
                    a8 = vzip1q_s8(*v1591, v24);
                    v1597 = (v2239 + 5 * v2250 + v138 + 2 * v2209 * v139 - 4 * v2209);
                    v233 = v2223;
                    do
                    {
                      a9 = a7;
                      a7 = a6;
                      a6 = v1596;
                      v1596 = v1595;
                      v1595 = vzip1q_s8(*v1597, v24);
                      v1598 = vsubq_s16(vshlq_n_s16(vaddq_s16(a7, a6), 2uLL), vaddq_s16(a9, v1596));
                      v1599 = vaddq_s16(vaddq_s16(a8, v1598), vshlq_n_s16(v1598, 2uLL));
                      a10 = vaddq_s16(v1595, v25);
                      *(&v2265 + v1590) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(v1599, a10), 5uLL))), a6);
                      v1590 += 16;
                      v1597 = (v1597 + v2250);
                      a8 = a9;
                    }

                    while (v1590 != 128);
                    break;
                  case 4:
                    v1559 = 0;
                    v1560 = (v154 - 2);
                    v233 = v2223;
                    do
                    {
                      v1561 = *v1560;
                      v1560 = (v1560 + v2250);
                      v1562 = vzip1q_s8(vextq_s8(v1561, v1561, 2uLL), v24);
                      a6 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1562, vzip1q_s8(vextq_s8(v1561, v1561, 3uLL), v24)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1561, v1561, 1uLL), v24), vzip1q_s8(vextq_s8(v1561, v1561, 4uLL), v24)));
                      a7 = vshlq_n_s16(a6, 2uLL);
                      a8 = vzip1q_s8(v1561, v24);
                      *(&v2265 + v1559) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(a7, vaddq_s16(vaddq_s16(a8, vzip1q_s8(vextq_s8(v1561, v1561, 5uLL), v24)), a6)), v25), 5uLL))), v1562);
                      v1559 += 16;
                    }

                    while (v1559 != 128);
                    break;
                  case 5:
                    v1587 = v2239 + v138 + v139 * v2250;
                    v1588 = v2250;
                    v1589 = 2;
                    goto LABEL_840;
                  case 6:
                    sub_27729BFC4(v2265.i8, 0x10u, v154, v2250);
                    goto LABEL_849;
                  case 7:
                    v1587 = v2239 + v138 + v139 * v2250;
                    v1588 = v2250;
                    v1589 = 3;
LABEL_840:
                    v1692 = 2;
                    goto LABEL_848;
                  case 8:
                    v1794 = 0;
                    v1795 = (v154 - 2);
                    v233 = v2223;
                    do
                    {
                      v1796 = &v2265.i8[v1794];
                      v1797 = *v1795;
                      v1795 = (v1795 + v2250);
                      v1798 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1797, v1797, 2uLL), v24), vzip1q_s8(vextq_s8(v1797, v1797, 3uLL), v24)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1797, v1797, 1uLL), v24), vzip1q_s8(vextq_s8(v1797, v1797, 4uLL), v24)));
                      a6 = vshlq_n_s16(v1798, 2uLL);
                      a7 = vzip1q_s8(v1797, v24);
                      *v1797.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(a6, vaddq_s16(vaddq_s16(a7, vzip1q_s8(vextq_s8(v1797, v1797, 5uLL), v24)), v1798)), v25), 5uLL));
                      v1798.i64[0] = v24.i64[0];
                      vst2_s8(v1796, v1797);
                      v1794 += 16;
                    }

                    while (v1794 != 128);
                    break;
                  case 9:
                    sub_27729B614(v2265.i8, 0x10u, v154, v2250, 8);
                    goto LABEL_849;
                  case 10:
                    sub_27729B7DC(&v2265, 16, v154, v2250, 8);
                    goto LABEL_849;
                  case 11:
                    sub_27729B98C(v2265.i8, 0x10u, v154, v2250, 8);
                    goto LABEL_849;
                  case 12:
                    v1563 = 0;
                    v1564 = (v154 - 2);
                    v233 = v2223;
                    do
                    {
                      v1565 = *v1564;
                      v1564 = (v1564 + v2250);
                      a6 = vzip1q_s8(vextq_s8(v1565, v1565, 3uLL), v24);
                      v1566 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1565, v1565, 2uLL), v24), a6), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1565, v1565, 1uLL), v24), vzip1q_s8(vextq_s8(v1565, v1565, 4uLL), v24)));
                      a7 = vshlq_n_s16(v1566, 2uLL);
                      a8 = vzip1q_s8(v1565, v24);
                      *(&v2265 + v1563) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(a7, vaddq_s16(vaddq_s16(a8, vzip1q_s8(vextq_s8(v1565, v1565, 5uLL), v24)), v1566)), v25), 5uLL))), a6);
                      v1563 += 16;
                    }

                    while (v1563 != 128);
                    break;
                  case 13:
                    v1587 = v2239 + v138 + v139 * v2250;
                    v1588 = v2250;
                    v1589 = 2;
                    goto LABEL_847;
                  case 14:
                    sub_27729C39C(v2265.i8, 0x10u, v154, v2250);
                    goto LABEL_849;
                  case 15:
                    v1587 = v2239 + v138 + v139 * v2250;
                    v1588 = v2250;
                    v1589 = 3;
LABEL_847:
                    v1692 = 3;
LABEL_848:
                    sub_27729C774(v2265.i8, v1587, v1588, 8, v1589, v1692);
LABEL_849:
                    v25.i64[0] = 0x10001000100010;
                    v25.i64[1] = 0x10001000100010;
                    v24 = v2263;
                    v233 = v2223;
                    break;
                  default:
                    v232 = 0;
                    v233 = v2223;
                    do
                    {
                      v234 = &v2265.i8[v232];
                      v235 = *v154;
                      v154 = (v154 + v2250);
                      v236 = v24.i64[0];
                      vst2_s8(v234, v235);
                      v232 += 16;
                    }

                    while (v232 != 128);
                    break;
                }

                switch(v233)
                {
                  case 1:
                    v1711 = &v2232->i8[v33];
                    v1743 = 0;
                    v1744 = &v156[-v2215];
                    v1745 = (v1744 + v2224);
                    v1746 = (v1745 + v2224);
                    v1747 = (v1746 + v2224);
                    v1715 = vzip1q_s8(*(v1747 + v2224), v24);
                    v1714 = vzip1q_s8(*v1747, v24);
                    a6 = vzip1q_s8(*v1746, v24);
                    a7 = vzip1q_s8(*v1745, v24);
                    a8 = vzip1q_s8(*v1744, v24);
                    v1748 = (v2208 + 5 * v2224 + v2202 + 2 * v2215 * v2201 - 4 * v2215);
                    do
                    {
                      a9 = a7;
                      a7 = a6;
                      a6 = v1714;
                      v1714 = v1715;
                      v1715 = vzip1q_s8(*v1748, v24);
                      v1749 = vsubq_s16(vshlq_n_s16(vaddq_s16(a7, a6), 2uLL), vaddq_s16(a9, v1714));
                      v1750 = vaddq_s16(vaddq_s16(a8, v1749), vshlq_n_s16(v1749, 2uLL));
                      a10 = vaddq_s16(v1715, v25);
                      *(&v2269 + v1743) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(v1750, a10), 5uLL))), a7);
                      v1743 += 16;
                      v1748 = (v1748 + v2224);
                      a8 = a9;
                    }

                    while (v1743 != 128);
                    break;
                  case 2:
                    v1711 = &v2232->i8[v33];
                    v1722 = 0;
                    v1723 = &v156[-v2215];
                    v1724 = (v1723 + v2224);
                    v1725 = (v1724 + v2224);
                    v1726 = (v1725 + v2224);
                    a6 = vzip1q_s8(*(v1726 + v2224), v24);
                    v1714 = vzip1q_s8(*v1726, v24);
                    v1715 = vzip1q_s8(*v1725, v24);
                    a7 = vzip1q_s8(*v1724, v24);
                    a8 = vzip1q_s8(*v1723, v24);
                    v1727 = (v2208 + 5 * v2224 + v2202 + 2 * v2215 * v2201 - 4 * v2215);
                    do
                    {
                      a9 = a7;
                      a7 = v1715;
                      v1715 = v1714;
                      v1714 = a6;
                      v1728 = &v2269.i8[v1722];
                      a6 = vzip1q_s8(*v1727, v24);
                      v1729 = vsubq_s16(vshlq_n_s16(vaddq_s16(a7, v1715), 2uLL), vaddq_s16(a9, v1714));
                      v1730 = vaddq_s16(vaddq_s16(a8, v1729), vshlq_n_s16(v1729, 2uLL));
                      a10 = vaddq_s16(a6, v25);
                      *a10.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(v1730, a10), 5uLL));
                      v1731 = v24.i64[0];
                      vst2_s8(v1728, a10);
                      v1722 += 16;
                      v1727 = (v1727 + v2224);
                      a8 = a9;
                    }

                    while (v1722 != 128);
                    break;
                  case 3:
                    v1711 = &v2232->i8[v33];
                    v1735 = 0;
                    v1736 = &v156[-v2215];
                    v1737 = (v1736 + v2224);
                    v1738 = (v1737 + v2224);
                    v1739 = (v1738 + v2224);
                    v1715 = vzip1q_s8(*(v1739 + v2224), v24);
                    v1714 = vzip1q_s8(*v1739, v24);
                    a6 = vzip1q_s8(*v1738, v24);
                    a7 = vzip1q_s8(*v1737, v24);
                    a8 = vzip1q_s8(*v1736, v24);
                    v1740 = (v2208 + 5 * v2224 + v2202 + 2 * v2215 * v2201 - 4 * v2215);
                    do
                    {
                      a9 = a7;
                      a7 = a6;
                      a6 = v1714;
                      v1714 = v1715;
                      v1715 = vzip1q_s8(*v1740, v24);
                      v1741 = vsubq_s16(vshlq_n_s16(vaddq_s16(a7, a6), 2uLL), vaddq_s16(a9, v1714));
                      v1742 = vaddq_s16(vaddq_s16(a8, v1741), vshlq_n_s16(v1741, 2uLL));
                      a10 = vaddq_s16(v1715, v25);
                      *(&v2269 + v1735) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(v1742, a10), 5uLL))), a6);
                      v1735 += 16;
                      v1740 = (v1740 + v2224);
                      a8 = a9;
                    }

                    while (v1735 != 128);
                    break;
                  case 4:
                    v1711 = &v2232->i8[v33];
                    v1716 = 0;
                    v1717 = (v156 - 2);
                    do
                    {
                      v1718 = *v1717;
                      v1717 = (v1717 + v2224);
                      v1715 = vzip1q_s8(vextq_s8(v1718, v1718, 2uLL), v24);
                      a6 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1715, vzip1q_s8(vextq_s8(v1718, v1718, 3uLL), v24)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1718, v1718, 1uLL), v24), vzip1q_s8(vextq_s8(v1718, v1718, 4uLL), v24)));
                      a7 = vshlq_n_s16(a6, 2uLL);
                      a8 = vzip1q_s8(v1718, v24);
                      v1714 = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(a7, vaddq_s16(vaddq_s16(a8, vzip1q_s8(vextq_s8(v1718, v1718, 5uLL), v24)), a6)), v25), 5uLL))), v1715);
                      *(&v2269 + v1716) = v1714;
                      v1716 += 16;
                    }

                    while (v1716 != 128);
                    break;
                  case 5:
                    v1711 = &v2232->i8[v33];
                    v1732 = v156;
                    v1733 = v2224;
                    v1734 = 2;
                    goto LABEL_875;
                  case 6:
                    v1711 = &v2232->i8[v33];
                    sub_27729BFC4(v2269.i8, 0x10u, v156, v2224);
                    break;
                  case 7:
                    v1711 = &v2232->i8[v33];
                    v1732 = v156;
                    v1733 = v2224;
                    v1734 = 3;
LABEL_875:
                    v1751 = 2;
                    goto LABEL_878;
                  case 8:
                    v1711 = &v2232->i8[v33];
                    v1799 = 0;
                    v1800 = (v156 - 2);
                    do
                    {
                      v1801 = &v2269.i8[v1799];
                      v1802 = *v1800;
                      v1800 = (v1800 + v2224);
                      v1715 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1802, v1802, 2uLL), v24), vzip1q_s8(vextq_s8(v1802, v1802, 3uLL), v24)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1802, v1802, 1uLL), v24), vzip1q_s8(vextq_s8(v1802, v1802, 4uLL), v24)));
                      a6 = vshlq_n_s16(v1715, 2uLL);
                      a7 = vzip1q_s8(v1802, v24);
                      v1714 = vshrq_n_s16(vaddq_s16(vaddq_s16(a6, vaddq_s16(vaddq_s16(a7, vzip1q_s8(vextq_s8(v1802, v1802, 5uLL), v24)), v1715)), v25), 5uLL);
                      *v1714.i8 = vqmovun_s16(v1714);
                      v1715.i64[0] = v24.i64[0];
                      vst2_s8(v1801, v1714);
                      v1799 += 16;
                    }

                    while (v1799 != 128);
                    break;
                  case 9:
                    v1711 = &v2232->i8[v33];
                    sub_27729B614(v2269.i8, 0x10u, v156, v2224, 8);
                    break;
                  case 10:
                    v1711 = &v2232->i8[v33];
                    sub_27729B7DC(&v2269, 16, v156, v2224, 8);
                    break;
                  case 11:
                    v1711 = &v2232->i8[v33];
                    sub_27729B98C(v2269.i8, 0x10u, v156, v2224, 8);
                    break;
                  case 12:
                    v1711 = &v2232->i8[v33];
                    v1719 = 0;
                    v1720 = (v156 - 2);
                    do
                    {
                      v1721 = *v1720;
                      v1720 = (v1720 + v2224);
                      a6 = vzip1q_s8(vextq_s8(v1721, v1721, 3uLL), v24);
                      v1715 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1721, v1721, 2uLL), v24), a6), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1721, v1721, 1uLL), v24), vzip1q_s8(vextq_s8(v1721, v1721, 4uLL), v24)));
                      a7 = vshlq_n_s16(v1715, 2uLL);
                      a8 = vzip1q_s8(v1721, v24);
                      v1714 = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(a7, vaddq_s16(vaddq_s16(a8, vzip1q_s8(vextq_s8(v1721, v1721, 5uLL), v24)), v1715)), v25), 5uLL))), a6);
                      *(&v2269 + v1719) = v1714;
                      v1719 += 16;
                    }

                    while (v1719 != 128);
                    break;
                  case 13:
                    v1711 = &v2232->i8[v33];
                    v1732 = v156;
                    v1733 = v2224;
                    v1734 = 2;
                    goto LABEL_877;
                  case 14:
                    v1711 = &v2232->i8[v33];
                    sub_27729C39C(v2269.i8, 0x10u, v156, v2224);
                    break;
                  case 15:
                    v1711 = &v2232->i8[v33];
                    v1732 = v156;
                    v1733 = v2224;
                    v1734 = 3;
LABEL_877:
                    v1751 = 3;
LABEL_878:
                    sub_27729C774(v2269.i8, v1732, v1733, 8, v1734, v1751);
                    break;
                  default:
                    v1711 = &v2232->i8[v33];
                    v1712 = 0;
                    do
                    {
                      v1713 = &v2269.i8[v1712];
                      v1714 = *v156;
                      v156 = (v156 + v2224);
                      v1715.i64[0] = v24.i64[0];
                      vst2_s8(v1713, v1714);
                      v1712 += 16;
                    }

                    while (v1712 != 128);
                    break;
                }

                sub_277292664(&v2265, &v2269, &v2231->i8[v33 + v2199], v2257, a2, v2228, 2, v2259, v1714, *v1715.i64, *a6.i64, a7, *a8.i64, *a9.i64, a10, v2264);
                v1752 = 0;
                _X9 = &_X20->i8[v2253];
                __asm { PRFM            #0, [X9] }

                v1755.i64[0] = _X20->i64[0];
                v1756 = vqtbl1q_s8(v1755, xmmword_2773B3E00);
                v1756.i16[3] = _X20->i16[4];
                v1757 = vzip1q_s8(v1756, v2263);
                v1758 = vzip1q_s8(v1755, v2263);
                v1759 = v2278;
                v1760 = v2279;
                v1761 = v2280;
                v1762 = v2281;
                v1763 = v2214;
                if (v2214 <= -16)
                {
                  v1763 = -16;
                }

                if (v1763 >= v146)
                {
                  v1763 = v146;
                }

                v1764 = v2244 + v2207 + v1763;
                v1765.i64[0] = 0x20002000200020;
                v1765.i64[1] = 0x20002000200020;
                do
                {
                  _X12 = v1764 + 2 * v2253;
                  v1764 += v2253;
                  __asm { PRFM            #0, [X12] }

                  v1768 = vmlaq_s16(vmulq_s16(v1760, v1757), v1759, v1758);
                  v1757.i64[0] = *v1764;
                  v1758 = vzip1q_s8(v1757, v2263);
                  v1769 = vqtbl1q_s8(v1757, xmmword_2773B3E00);
                  v1769.i16[3] = *(v1764 + 8);
                  v1757 = vzip1q_s8(v1769, v2263);
                  v2273[v1752++] = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1768, v1761, v1758), v1762, v1757), v1765), 6uLL);
                }

                while ((v1752 * 16) != 64);
                _X9 = &_X25->i8[v2235];
                __asm { PRFM            #0, [X9] }

                v1759.i64[0] = _X25->i64[0];
                v1772 = vqtbl1q_s8(v1759, xmmword_2773B3E00);
                v1772.i16[3] = _X25->i16[4];
                v1773 = vzip1q_s8(v1772, v2263);
                v1774 = vzip1q_s8(v1759, v2263);
                v1775 = v2282;
                v1776 = v2283;
                v1777 = v2284;
                v1778 = v2285;
                v1779 = v150;
                if (v150 <= -16)
                {
                  v1779 = -16;
                }

                if (v1779 >= v2191)
                {
                  v1779 = v2191;
                }

                v1780 = v2194 + v2213 + v1779;
                v1781 = 16;
                do
                {
                  _X12 = v1780 + 2 * v2235;
                  v1780 += v2235;
                  __asm { PRFM            #0, [X12] }

                  v1784 = vmlaq_s16(vmulq_s16(v1776, v1773), v1775, v1774);
                  v1773.i64[0] = *v1780;
                  v1774 = vzip1q_s8(v1773, v2263);
                  v1785 = vqtbl1q_s8(v1773, xmmword_2773B3E00);
                  v1785.i16[3] = *(v1780 + 8);
                  v1773 = vzip1q_s8(v1785, v2263);
                  v2273[v1781++] = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1784, v1777, v1774), v1778, v1773), v1765), 6uLL);
                }

                while ((v1781 * 16) != 320);
                sub_277292A5C(v2273, v2276, &v1711[v2220], v2256, a3, v162, 1, v2259, xmmword_2773B3E00, *v1775.i64, v1776, v1777, v2264);
                goto LABEL_986;
              case 0x10u:
                v2206 = v149;
                v2190 = v155;
                v2212 = v160;
                v2193 = v118;
                v2197 = (v2257 * v120);
                v2227 = (&a2[2 * v120] + 2 * v33);
                v2218 = (v151 * v2256);
                switch(v2225)
                {
                  case 1:
                    v1693 = 0;
                    v1694 = &v154[-v2209];
                    v1695 = (v1694 + v2250);
                    v1696 = (v1695 + v2250);
                    v1697 = (v1696 + v2250);
                    v1698 = vzip1q_s8(*(v1697 + v2250), v24);
                    v1699 = vzip1q_s8(*v1697, v24);
                    a6 = vzip1q_s8(*v1696, v24);
                    a7 = vzip1q_s8(*v1695, v24);
                    a8 = vzip1q_s8(*v1694, v24);
                    v1700 = (v2239 + 5 * v2250 + v138 + 2 * v2209 * v139 - 4 * v2209);
                    v167 = v2223;
                    do
                    {
                      a9 = a7;
                      a7 = a6;
                      a6 = v1699;
                      v1699 = v1698;
                      v1698 = vzip1q_s8(*v1700, v24);
                      v1701 = vsubq_s16(vshlq_n_s16(vaddq_s16(a7, a6), 2uLL), vaddq_s16(a9, v1699));
                      v1702 = vaddq_s16(vaddq_s16(a8, v1701), vshlq_n_s16(v1701, 2uLL));
                      a10 = vaddq_s16(v1698, v25);
                      *(&v2265 + v1693) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(v1702, a10), 5uLL))), a7);
                      v1693 += 16;
                      v1700 = (v1700 + v2250);
                      a8 = a9;
                    }

                    while (v1693 != 256);
                    break;
                  case 2:
                    v1609 = 0;
                    v1610 = &v154[-v2209];
                    v1611 = (v1610 + v2250);
                    v1612 = (v1611 + v2250);
                    v1613 = (v1612 + v2250);
                    a6 = vzip1q_s8(*(v1613 + v2250), v24);
                    v1614 = vzip1q_s8(*v1613, v24);
                    v1615 = vzip1q_s8(*v1612, v24);
                    a7 = vzip1q_s8(*v1611, v24);
                    a8 = vzip1q_s8(*v1610, v24);
                    v1616 = (v2239 + 5 * v2250 + v138 + 2 * v2209 * v139 - 4 * v2209);
                    v167 = v2223;
                    do
                    {
                      a9 = a7;
                      a7 = v1615;
                      v1615 = v1614;
                      v1614 = a6;
                      v1617 = &v2265.i8[v1609];
                      a6 = vzip1q_s8(*v1616, v24);
                      v1618 = vsubq_s16(vshlq_n_s16(vaddq_s16(a7, v1615), 2uLL), vaddq_s16(a9, v1614));
                      v1619 = vaddq_s16(vaddq_s16(a8, v1618), vshlq_n_s16(v1618, 2uLL));
                      a10 = vaddq_s16(a6, v25);
                      *a10.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(v1619, a10), 5uLL));
                      v1620 = v24.i64[0];
                      vst2_s8(v1617, a10);
                      v1609 += 16;
                      v1616 = (v1616 + v2250);
                      a8 = a9;
                    }

                    while (v1609 != 256);
                    break;
                  case 3:
                    v1666 = 0;
                    v1667 = &v154[-v2209];
                    v1668 = (v1667 + v2250);
                    v1669 = (v1668 + v2250);
                    v1670 = (v1669 + v2250);
                    v1671 = vzip1q_s8(*(v1670 + v2250), v24);
                    v1672 = vzip1q_s8(*v1670, v24);
                    a6 = vzip1q_s8(*v1669, v24);
                    a7 = vzip1q_s8(*v1668, v24);
                    a8 = vzip1q_s8(*v1667, v24);
                    v1673 = (v2239 + 5 * v2250 + v138 + 2 * v2209 * v139 - 4 * v2209);
                    v167 = v2223;
                    do
                    {
                      a9 = a7;
                      a7 = a6;
                      a6 = v1672;
                      v1672 = v1671;
                      v1671 = vzip1q_s8(*v1673, v24);
                      v1674 = vsubq_s16(vshlq_n_s16(vaddq_s16(a7, a6), 2uLL), vaddq_s16(a9, v1672));
                      v1675 = vaddq_s16(vaddq_s16(a8, v1674), vshlq_n_s16(v1674, 2uLL));
                      a10 = vaddq_s16(v1671, v25);
                      *(&v2265 + v1666) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(v1675, a10), 5uLL))), a6);
                      v1666 += 16;
                      v1673 = (v1673 + v2250);
                      a8 = a9;
                    }

                    while (v1666 != 256);
                    break;
                  case 4:
                    v1567 = 0;
                    v1568 = (v154 - 2);
                    v167 = v2223;
                    do
                    {
                      v1569 = *v1568;
                      v1568 = (v1568 + v2250);
                      v1570 = vzip1q_s8(vextq_s8(v1569, v1569, 2uLL), v24);
                      a6 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1570, vzip1q_s8(vextq_s8(v1569, v1569, 3uLL), v24)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1569, v1569, 1uLL), v24), vzip1q_s8(vextq_s8(v1569, v1569, 4uLL), v24)));
                      a7 = vshlq_n_s16(a6, 2uLL);
                      a8 = vzip1q_s8(v1569, v24);
                      *(&v2265 + v1567) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(a7, vaddq_s16(vaddq_s16(a8, vzip1q_s8(vextq_s8(v1569, v1569, 5uLL), v24)), a6)), v25), 5uLL))), v1570);
                      v1567 += 16;
                    }

                    while (v1567 != 256);
                    break;
                  case 5:
                    v1655 = v2239 + v138 + v139 * v2250;
                    v1656 = v2250;
                    v1657 = 2;
                    goto LABEL_910;
                  case 6:
                    sub_27729B1B0(v2265.i8, 0x10u, v154, v2250);
                    goto LABEL_943;
                  case 7:
                    v1655 = v2239 + v138 + v139 * v2250;
                    v1656 = v2250;
                    v1657 = 3;
LABEL_910:
                    v1835 = 2;
                    goto LABEL_942;
                  case 8:
                    v2001 = 0;
                    v2002 = (v154 - 2);
                    v167 = v2223;
                    do
                    {
                      v2003 = &v2265.i8[v2001];
                      v2004 = *v2002;
                      v2002 = (v2002 + v2250);
                      v2005 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v2004, v2004, 2uLL), v24), vzip1q_s8(vextq_s8(v2004, v2004, 3uLL), v24)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v2004, v2004, 1uLL), v24), vzip1q_s8(vextq_s8(v2004, v2004, 4uLL), v24)));
                      a6 = vshlq_n_s16(v2005, 2uLL);
                      a7 = vzip1q_s8(v2004, v24);
                      *v2004.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(a6, vaddq_s16(vaddq_s16(a7, vzip1q_s8(vextq_s8(v2004, v2004, 5uLL), v24)), v2005)), v25), 5uLL));
                      v2005.i64[0] = v24.i64[0];
                      vst2_s8(v2003, v2004);
                      v2001 += 16;
                    }

                    while (v2001 != 256);
                    break;
                  case 9:
                    sub_27729B614(v2265.i8, 0x10u, v154, v2250, 16);
                    goto LABEL_943;
                  case 10:
                    sub_27729B7DC(&v2265, 16, v154, v2250, 16);
                    goto LABEL_943;
                  case 11:
                    sub_27729B98C(v2265.i8, 0x10u, v154, v2250, 16);
                    goto LABEL_943;
                  case 12:
                    v1583 = 0;
                    v1584 = (v154 - 2);
                    v167 = v2223;
                    do
                    {
                      v1585 = *v1584;
                      v1584 = (v1584 + v2250);
                      a6 = vzip1q_s8(vextq_s8(v1585, v1585, 3uLL), v24);
                      v1586 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1585, v1585, 2uLL), v24), a6), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1585, v1585, 1uLL), v24), vzip1q_s8(vextq_s8(v1585, v1585, 4uLL), v24)));
                      a7 = vshlq_n_s16(v1586, 2uLL);
                      a8 = vzip1q_s8(v1585, v24);
                      *(&v2265 + v1583) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(a7, vaddq_s16(vaddq_s16(a8, vzip1q_s8(vextq_s8(v1585, v1585, 5uLL), v24)), v1586)), v25), 5uLL))), a6);
                      v1583 += 16;
                    }

                    while (v1583 != 256);
                    break;
                  case 13:
                    v1655 = v2239 + v138 + v139 * v2250;
                    v1656 = v2250;
                    v1657 = 2;
                    goto LABEL_941;
                  case 14:
                    sub_27729BBEC(v2265.i8, 0x10u, v154, v2250);
                    goto LABEL_943;
                  case 15:
                    v1655 = v2239 + v138 + v139 * v2250;
                    v1656 = v2250;
                    v1657 = 3;
LABEL_941:
                    v1835 = 3;
LABEL_942:
                    sub_27729C774(v2265.i8, v1655, v1656, 16, v1657, v1835);
LABEL_943:
                    v25.i64[0] = 0x10001000100010;
                    v25.i64[1] = 0x10001000100010;
                    v24 = v2263;
                    v167 = v2223;
                    break;
                  default:
                    v166 = 0;
                    v167 = v2223;
                    do
                    {
                      v168 = &v2265.i8[v166];
                      v169 = *v154;
                      v154 = (v154 + v2250);
                      v170 = v24.i64[0];
                      vst2_s8(v168, v169);
                      v166 += 16;
                    }

                    while (v166 != 256);
                    break;
                }

                switch(v167)
                {
                  case 1:
                    v1918 = &v2232->i8[v33];
                    v1950 = 0;
                    v1951 = &v156[-v2215];
                    v1952 = (v1951 + v2224);
                    v1953 = (v1952 + v2224);
                    v1954 = (v1953 + v2224);
                    v1922 = vzip1q_s8(*(v1954 + v2224), v24);
                    v1921 = vzip1q_s8(*v1954, v24);
                    a6 = vzip1q_s8(*v1953, v24);
                    a7 = vzip1q_s8(*v1952, v24);
                    a8 = vzip1q_s8(*v1951, v24);
                    v1955 = (v2208 + 5 * v2224 + v2202 + 2 * v2215 * v2201 - 4 * v2215);
                    do
                    {
                      a9 = a7;
                      a7 = a6;
                      a6 = v1921;
                      v1921 = v1922;
                      v1922 = vzip1q_s8(*v1955, v24);
                      v1956 = vsubq_s16(vshlq_n_s16(vaddq_s16(a7, a6), 2uLL), vaddq_s16(a9, v1921));
                      v1957 = vaddq_s16(vaddq_s16(a8, v1956), vshlq_n_s16(v1956, 2uLL));
                      a10 = vaddq_s16(v1922, v25);
                      *(&v2269 + v1950) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(v1957, a10), 5uLL))), a7);
                      v1950 += 16;
                      v1955 = (v1955 + v2224);
                      a8 = a9;
                    }

                    while (v1950 != 256);
                    break;
                  case 2:
                    v1918 = &v2232->i8[v33];
                    v1929 = 0;
                    v1930 = &v156[-v2215];
                    v1931 = (v1930 + v2224);
                    v1932 = (v1931 + v2224);
                    v1933 = (v1932 + v2224);
                    a6 = vzip1q_s8(*(v1933 + v2224), v24);
                    v1921 = vzip1q_s8(*v1933, v24);
                    v1922 = vzip1q_s8(*v1932, v24);
                    a7 = vzip1q_s8(*v1931, v24);
                    a8 = vzip1q_s8(*v1930, v24);
                    v1934 = (v2208 + 5 * v2224 + v2202 + 2 * v2215 * v2201 - 4 * v2215);
                    do
                    {
                      a9 = a7;
                      a7 = v1922;
                      v1922 = v1921;
                      v1921 = a6;
                      v1935 = &v2269.i8[v1929];
                      a6 = vzip1q_s8(*v1934, v24);
                      v1936 = vsubq_s16(vshlq_n_s16(vaddq_s16(a7, v1922), 2uLL), vaddq_s16(a9, v1921));
                      v1937 = vaddq_s16(vaddq_s16(a8, v1936), vshlq_n_s16(v1936, 2uLL));
                      a10 = vaddq_s16(a6, v25);
                      *a10.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(v1937, a10), 5uLL));
                      v1938 = v24.i64[0];
                      vst2_s8(v1935, a10);
                      v1929 += 16;
                      v1934 = (v1934 + v2224);
                      a8 = a9;
                    }

                    while (v1929 != 256);
                    break;
                  case 3:
                    v1918 = &v2232->i8[v33];
                    v1942 = 0;
                    v1943 = &v156[-v2215];
                    v1944 = (v1943 + v2224);
                    v1945 = (v1944 + v2224);
                    v1946 = (v1945 + v2224);
                    v1922 = vzip1q_s8(*(v1946 + v2224), v24);
                    v1921 = vzip1q_s8(*v1946, v24);
                    a6 = vzip1q_s8(*v1945, v24);
                    a7 = vzip1q_s8(*v1944, v24);
                    a8 = vzip1q_s8(*v1943, v24);
                    v1947 = (v2208 + 5 * v2224 + v2202 + 2 * v2215 * v2201 - 4 * v2215);
                    do
                    {
                      a9 = a7;
                      a7 = a6;
                      a6 = v1921;
                      v1921 = v1922;
                      v1922 = vzip1q_s8(*v1947, v24);
                      v1948 = vsubq_s16(vshlq_n_s16(vaddq_s16(a7, a6), 2uLL), vaddq_s16(a9, v1921));
                      v1949 = vaddq_s16(vaddq_s16(a8, v1948), vshlq_n_s16(v1948, 2uLL));
                      a10 = vaddq_s16(v1922, v25);
                      *(&v2269 + v1942) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(v1949, a10), 5uLL))), a6);
                      v1942 += 16;
                      v1947 = (v1947 + v2224);
                      a8 = a9;
                    }

                    while (v1942 != 256);
                    break;
                  case 4:
                    v1918 = &v2232->i8[v33];
                    v1923 = 0;
                    v1924 = (v156 - 2);
                    do
                    {
                      v1925 = *v1924;
                      v1924 = (v1924 + v2224);
                      v1922 = vzip1q_s8(vextq_s8(v1925, v1925, 2uLL), v24);
                      a6 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1922, vzip1q_s8(vextq_s8(v1925, v1925, 3uLL), v24)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1925, v1925, 1uLL), v24), vzip1q_s8(vextq_s8(v1925, v1925, 4uLL), v24)));
                      a7 = vshlq_n_s16(a6, 2uLL);
                      a8 = vzip1q_s8(v1925, v24);
                      v1921 = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(a7, vaddq_s16(vaddq_s16(a8, vzip1q_s8(vextq_s8(v1925, v1925, 5uLL), v24)), a6)), v25), 5uLL))), v1922);
                      *(&v2269 + v1923) = v1921;
                      v1923 += 16;
                    }

                    while (v1923 != 256);
                    break;
                  case 5:
                    v1918 = &v2232->i8[v33];
                    v1939 = v156;
                    v1940 = v2224;
                    v1941 = 2;
                    goto LABEL_969;
                  case 6:
                    v1918 = &v2232->i8[v33];
                    sub_27729B1B0(v2269.i8, 0x10u, v156, v2224);
                    break;
                  case 7:
                    v1918 = &v2232->i8[v33];
                    v1939 = v156;
                    v1940 = v2224;
                    v1941 = 3;
LABEL_969:
                    v1958 = 2;
                    goto LABEL_972;
                  case 8:
                    v1918 = &v2232->i8[v33];
                    v2006 = 0;
                    v2007 = (v156 - 2);
                    do
                    {
                      v2008 = &v2269.i8[v2006];
                      v2009 = *v2007;
                      v2007 = (v2007 + v2224);
                      v1922 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v2009, v2009, 2uLL), v24), vzip1q_s8(vextq_s8(v2009, v2009, 3uLL), v24)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v2009, v2009, 1uLL), v24), vzip1q_s8(vextq_s8(v2009, v2009, 4uLL), v24)));
                      a6 = vshlq_n_s16(v1922, 2uLL);
                      a7 = vzip1q_s8(v2009, v24);
                      v1921 = vshrq_n_s16(vaddq_s16(vaddq_s16(a6, vaddq_s16(vaddq_s16(a7, vzip1q_s8(vextq_s8(v2009, v2009, 5uLL), v24)), v1922)), v25), 5uLL);
                      *v1921.i8 = vqmovun_s16(v1921);
                      v1922.i64[0] = v24.i64[0];
                      vst2_s8(v2008, v1921);
                      v2006 += 16;
                    }

                    while (v2006 != 256);
                    break;
                  case 9:
                    v1918 = &v2232->i8[v33];
                    sub_27729B614(v2269.i8, 0x10u, v156, v2224, 16);
                    break;
                  case 10:
                    v1918 = &v2232->i8[v33];
                    sub_27729B7DC(&v2269, 16, v156, v2224, 16);
                    break;
                  case 11:
                    v1918 = &v2232->i8[v33];
                    sub_27729B98C(v2269.i8, 0x10u, v156, v2224, 16);
                    break;
                  case 12:
                    v1918 = &v2232->i8[v33];
                    v1926 = 0;
                    v1927 = (v156 - 2);
                    do
                    {
                      v1928 = *v1927;
                      v1927 = (v1927 + v2224);
                      a6 = vzip1q_s8(vextq_s8(v1928, v1928, 3uLL), v24);
                      v1922 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1928, v1928, 2uLL), v24), a6), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1928, v1928, 1uLL), v24), vzip1q_s8(vextq_s8(v1928, v1928, 4uLL), v24)));
                      a7 = vshlq_n_s16(v1922, 2uLL);
                      a8 = vzip1q_s8(v1928, v24);
                      v1921 = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(a7, vaddq_s16(vaddq_s16(a8, vzip1q_s8(vextq_s8(v1928, v1928, 5uLL), v24)), v1922)), v25), 5uLL))), a6);
                      *(&v2269 + v1926) = v1921;
                      v1926 += 16;
                    }

                    while (v1926 != 256);
                    break;
                  case 13:
                    v1918 = &v2232->i8[v33];
                    v1939 = v156;
                    v1940 = v2224;
                    v1941 = 2;
                    goto LABEL_971;
                  case 14:
                    v1918 = &v2232->i8[v33];
                    sub_27729BBEC(v2269.i8, 0x10u, v156, v2224);
                    break;
                  case 15:
                    v1918 = &v2232->i8[v33];
                    v1939 = v156;
                    v1940 = v2224;
                    v1941 = 3;
LABEL_971:
                    v1958 = 3;
LABEL_972:
                    sub_27729C774(v2269.i8, v1939, v1940, 16, v1941, v1958);
                    break;
                  default:
                    v1918 = &v2232->i8[v33];
                    v1919 = 0;
                    do
                    {
                      v1920 = &v2269.i8[v1919];
                      v1921 = *v156;
                      v156 = (v156 + v2224);
                      v1922.i64[0] = v24.i64[0];
                      vst2_s8(v1920, v1921);
                      v1919 += 16;
                    }

                    while (v1919 != 256);
                    break;
                }

                sub_277292664(&v2265, &v2269, &v2231->i8[v33 + v2197], v2257, a2, v2227, 4, v2259, v1921, *v1922.i64, *a6.i64, a7, *a8.i64, *a9.i64, a10, v2264);
                v1959 = 0;
                _X9 = &_X20->i8[v2253];
                __asm { PRFM            #0, [X9] }

                v1962.i64[0] = _X20->i64[0];
                v1963 = vqtbl1q_s8(v1962, xmmword_2773B3E00);
                v1963.i16[3] = _X20->i16[4];
                v1964 = vzip1q_s8(v1963, v2263);
                v1965 = vzip1q_s8(v1962, v2263);
                v1966 = v2278;
                v1967 = v2279;
                v1968 = v2280;
                v1969 = v2281;
                v1970 = v2214;
                if (v2214 <= -16)
                {
                  v1970 = -16;
                }

                if (v1970 >= v146)
                {
                  v1970 = v146;
                }

                v1971 = v2244 + v2206 + v1970;
                v1972.i64[0] = 0x20002000200020;
                v1972.i64[1] = 0x20002000200020;
                do
                {
                  _X12 = v1971 + 2 * v2253;
                  v1971 += v2253;
                  __asm { PRFM            #0, [X12] }

                  v1975 = vmlaq_s16(vmulq_s16(v1967, v1964), v1966, v1965);
                  v1964.i64[0] = *v1971;
                  v1965 = vzip1q_s8(v1964, v2263);
                  v1976 = vqtbl1q_s8(v1964, xmmword_2773B3E00);
                  v1976.i16[3] = *(v1971 + 8);
                  v1964 = vzip1q_s8(v1976, v2263);
                  v2273[v1959++] = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1975, v1968, v1965), v1969, v1964), v1972), 6uLL);
                }

                while ((v1959 * 16) != 128);
                _X9 = &_X25->i8[v2235];
                __asm { PRFM            #0, [X9] }

                v1966.i64[0] = _X25->i64[0];
                v1979 = vqtbl1q_s8(v1966, xmmword_2773B3E00);
                v1979.i16[3] = _X25->i16[4];
                v1980 = vzip1q_s8(v1979, v2263);
                v1981 = vzip1q_s8(v1966, v2263);
                v1982 = v2282;
                v1983 = v2283;
                v1984 = v2284;
                v1985 = v2285;
                v1986 = v150;
                if (v150 <= -16)
                {
                  v1986 = -16;
                }

                if (v1986 >= v2190)
                {
                  v1986 = v2190;
                }

                v1987 = v2193 + v2212 + v1986;
                v1988 = 16;
                do
                {
                  _X12 = v1987 + 2 * v2235;
                  v1987 += v2235;
                  __asm { PRFM            #0, [X12] }

                  v1991 = vmlaq_s16(vmulq_s16(v1983, v1980), v1982, v1981);
                  v1980.i64[0] = *v1987;
                  v1981 = vzip1q_s8(v1980, v2263);
                  v1992 = vqtbl1q_s8(v1980, xmmword_2773B3E00);
                  v1992.i16[3] = *(v1987 + 8);
                  v1980 = vzip1q_s8(v1992, v2263);
                  v2273[v1988++] = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1991, v1984, v1981), v1985, v1980), v1972), 6uLL);
                }

                while ((v1988 * 16) != 384);
                sub_277292A5C(v2273, v2276, &v1918[v2218], v2256, a3, v162, 2, v2259, xmmword_2773B3E00, *v1982.i64, v1983, v1984, v2264);
                goto LABEL_986;
            }

            break;
          case 16:
            v2195 = &v2232->i8[v33];
            v2196 = (v2257 * v120);
            v2217 = (v151 * v2256);
            v2205 = v149;
            v2192 = v118;
            v2211 = v160;
            v2189 = v155;
            v2187 = a7;
            v2186 = v2248 & 0xFFFFFF8F | (16 * (v114 & 7));
            v2184 = a9;
            v2185 = v110 & 0xFFFFFF8F | (16 * (v106 & 7));
            if (v2226 == 16)
            {
              switch(v2225)
              {
                case 1:
                  v758 = 0;
                  v759 = -1 * v2209;
                  v760 = &v154[-v2209];
                  v761 = (v760 + v2250);
                  v762 = (v761 + v2250);
                  v763 = (v762 + v2250);
                  v764 = vzip1q_s8(*(v763 + v2250), v24);
                  v765 = vzip1q_s8(*v763, v24);
                  v766 = vzip1q_s8(*v762, v24);
                  v767 = vzip1q_s8(*v761, v24);
                  v768 = vzip1q_s8(*v760, v24);
                  v769 = 5 * v2250;
                  v770 = (v2239 + v769 + v138 + 2 * v2209 * v139 - 4 * v2209);
                  do
                  {
                    v771 = v767;
                    v767 = v766;
                    v766 = v765;
                    v765 = v764;
                    v764 = vzip1q_s8(*v770, v24);
                    v772 = vsubq_s16(vshlq_n_s16(vaddq_s16(v767, v766), 2uLL), vaddq_s16(v771, v765));
                    *(&v2265 + v758) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v768, v772), vshlq_n_s16(v772, 2uLL)), vaddq_s16(v764, v25)), 5uLL))), v767);
                    v758 += 32;
                    v770 = (v770 + v2250);
                    v768 = v771;
                  }

                  while (v758 != 512);
                  v773 = 0;
                  v774 = (&v154[v759 + 2] + v2250);
                  v775 = (v774 + v2250 + v2250);
                  v776 = vzip1q_s8(*(v775 + v2250), v24);
                  v777 = vzip1q_s8(*v775, v24);
                  v778 = vzip1q_s8(*(v774 + v2250), v24);
                  a7 = vzip1q_s8(*v774, v24);
                  a8 = vzip1q_s8(*&v154[v759 + 2], v24);
                  v779 = (v2239 + v769 + v138 + 2 * v2209 * v139 - 4 * v2209 + 8);
                  v164 = v2223;
                  do
                  {
                    a9 = a7;
                    a7 = v778;
                    v778 = v777;
                    v777 = v776;
                    v776 = vzip1q_s8(*v779, v24);
                    v780 = vsubq_s16(vshlq_n_s16(vaddq_s16(a7, v778), 2uLL), vaddq_s16(a9, v777));
                    v781 = vaddq_s16(vaddq_s16(a8, v780), vshlq_n_s16(v780, 2uLL));
                    a10 = vaddq_s16(v776, v25);
                    *(&v2266 + v773) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(v781, a10), 5uLL))), a7);
                    v773 += 32;
                    v779 = (v779 + v2250);
                    a8 = a9;
                  }

                  while (v773 != 512);
                  break;
                case 2:
                  v561 = 0;
                  v562 = -1 * v2209;
                  v563 = &v154[-v2209];
                  v564 = (v563 + v2250);
                  v565 = (v564 + v2250);
                  v566 = (v565 + v2250);
                  v567 = vzip1q_s8(*(v566 + v2250), v24);
                  v568 = vzip1q_s8(*v566, v24);
                  v569 = vzip1q_s8(*v565, v24);
                  v570 = vzip1q_s8(*v564, v24);
                  v571 = vzip1q_s8(*v563, v24);
                  v572 = 5 * v2250;
                  v573 = (v2239 + v572 + v138 + 2 * v2209 * v139 - 4 * v2209);
                  do
                  {
                    v574 = v570;
                    v570 = v569;
                    v569 = v568;
                    v568 = v567;
                    v575 = &v2265.i8[v561];
                    v567 = vzip1q_s8(*v573, v24);
                    v576 = vsubq_s16(vshlq_n_s16(vaddq_s16(v570, v569), 2uLL), vaddq_s16(v574, v568));
                    v576.val[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v571, v576), vshlq_n_s16(v576, 2uLL)), vaddq_s16(v567, v25)), 5uLL));
                    v577 = v24.i64[0];
                    vst2_s8(v575, v576);
                    v561 += 32;
                    v573 = (v573 + v2250);
                    v571 = v574;
                  }

                  while (v561 != 512);
                  v578 = 0;
                  v579 = (&v154[v562 + 2] + v2250);
                  v580 = (v579 + v2250 + v2250);
                  v581 = vzip1q_s8(*(v580 + v2250), v24);
                  v582 = vzip1q_s8(*v580, v24);
                  v583 = vzip1q_s8(*(v579 + v2250), v24);
                  a7 = vzip1q_s8(*v579, v24);
                  a8 = vzip1q_s8(*&v154[v562 + 2], v24);
                  v584 = (v2239 + v572 + v138 + 2 * v2209 * v139 - 4 * v2209 + 8);
                  v164 = v2223;
                  do
                  {
                    a9 = a7;
                    a7 = v583;
                    v583 = v582;
                    v582 = v581;
                    v585 = &v2266.i8[v578];
                    v581 = vzip1q_s8(*v584, v24);
                    v586 = vsubq_s16(vshlq_n_s16(vaddq_s16(a7, v583), 2uLL), vaddq_s16(a9, v582));
                    v587 = vaddq_s16(vaddq_s16(a8, v586), vshlq_n_s16(v586, 2uLL));
                    a10 = vaddq_s16(v581, v25);
                    *a10.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(v587, a10), 5uLL));
                    v588 = v24.i64[0];
                    vst2_s8(v585, a10);
                    v578 += 32;
                    v584 = (v584 + v2250);
                    a8 = a9;
                  }

                  while (v578 != 512);
                  break;
                case 3:
                  v677 = 0;
                  v678 = -1 * v2209;
                  v679 = &v154[-v2209];
                  v680 = (v679 + v2250);
                  v681 = (v680 + v2250);
                  v682 = (v681 + v2250);
                  v683 = vzip1q_s8(*(v682 + v2250), v24);
                  v684 = vzip1q_s8(*v682, v24);
                  v685 = vzip1q_s8(*v681, v24);
                  v686 = vzip1q_s8(*v680, v24);
                  v687 = vzip1q_s8(*v679, v24);
                  v688 = 5 * v2250;
                  v689 = (v2239 + v688 + v138 + 2 * v2209 * v139 - 4 * v2209);
                  do
                  {
                    v690 = v686;
                    v686 = v685;
                    v685 = v684;
                    v684 = v683;
                    v683 = vzip1q_s8(*v689, v24);
                    v691 = vsubq_s16(vshlq_n_s16(vaddq_s16(v686, v685), 2uLL), vaddq_s16(v690, v684));
                    *(&v2265 + v677) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v687, v691), vshlq_n_s16(v691, 2uLL)), vaddq_s16(v683, v25)), 5uLL))), v685);
                    v677 += 32;
                    v689 = (v689 + v2250);
                    v687 = v690;
                  }

                  while (v677 != 512);
                  v692 = 0;
                  v693 = (&v154[v678 + 2] + v2250);
                  v694 = (v693 + v2250 + v2250);
                  v695 = vzip1q_s8(*(v694 + v2250), v24);
                  v696 = vzip1q_s8(*v694, v24);
                  v697 = vzip1q_s8(*(v693 + v2250), v24);
                  a7 = vzip1q_s8(*v693, v24);
                  a8 = vzip1q_s8(*&v154[v678 + 2], v24);
                  v698 = (v2239 + v688 + v138 + 2 * v2209 * v139 - 4 * v2209 + 8);
                  v164 = v2223;
                  do
                  {
                    a9 = a7;
                    a7 = v697;
                    v697 = v696;
                    v696 = v695;
                    v695 = vzip1q_s8(*v698, v24);
                    v699 = vsubq_s16(vshlq_n_s16(vaddq_s16(a7, v697), 2uLL), vaddq_s16(a9, v696));
                    v700 = vaddq_s16(vaddq_s16(a8, v699), vshlq_n_s16(v699, 2uLL));
                    a10 = vaddq_s16(v695, v25);
                    *(&v2266 + v692) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(v700, a10), 5uLL))), v697);
                    v692 += 32;
                    v698 = (v698 + v2250);
                    a8 = a9;
                  }

                  while (v692 != 512);
                  break;
                case 4:
                  v475 = 0;
                  v476 = (v154 - 2);
                  do
                  {
                    v477 = *v476;
                    v476 = (v476 + v2250);
                    v478 = vzip1q_s8(vextq_s8(v477, v477, 2uLL), v24);
                    v479 = vsubq_s16(vshlq_n_s16(vaddq_s16(v478, vzip1q_s8(vextq_s8(v477, v477, 3uLL), v24)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v477, v477, 1uLL), v24), vzip1q_s8(vextq_s8(v477, v477, 4uLL), v24)));
                    *(&v2265 + v475) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v479, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v477, v24), vzip1q_s8(vextq_s8(v477, v477, 5uLL), v24)), v479)), v25), 5uLL))), v478);
                    v475 += 32;
                  }

                  while (v475 != 512);
                  v480 = 0;
                  v481 = (v154 + 6);
                  v164 = v2223;
                  do
                  {
                    v482 = *v481;
                    v481 = (v481 + v2250);
                    v483 = vzip1q_s8(vextq_s8(v482, v482, 2uLL), v24);
                    v484 = vsubq_s16(vshlq_n_s16(vaddq_s16(v483, vzip1q_s8(vextq_s8(v482, v482, 3uLL), v24)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v482, v482, 1uLL), v24), vzip1q_s8(vextq_s8(v482, v482, 4uLL), v24)));
                    a7 = vshlq_n_s16(v484, 2uLL);
                    a8 = vzip1q_s8(v482, v24);
                    *(&v2266 + v480) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(a7, vaddq_s16(vaddq_s16(a8, vzip1q_s8(vextq_s8(v482, v482, 5uLL), v24)), v484)), v25), 5uLL))), v483);
                    v480 += 32;
                  }

                  while (v480 != 512);
                  break;
                case 5:
                  v638 = v2239 + v138 + v139 * v2250;
                  v639 = v2250;
                  v640 = 2;
                  goto LABEL_455;
                case 6:
                  sub_27729B1B0(v2265.i8, 0x20u, v154, v2250);
                  sub_27729B1B0(v2266.i8, 0x20u, (v154 + 2), v2250);
                  goto LABEL_507;
                case 7:
                  v638 = v2239 + v138 + v139 * v2250;
                  v639 = v2250;
                  v640 = 3;
LABEL_455:
                  v831 = 2;
                  goto LABEL_506;
                case 8:
                  v1500 = 0;
                  v1501 = (v154 - 2);
                  do
                  {
                    v1502 = &v2265.i8[v1500];
                    v1503 = *v1501;
                    v1501 = (v1501 + v2250);
                    v1504 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1503, v1503, 2uLL), v24), vzip1q_s8(vextq_s8(v1503, v1503, 3uLL), v24)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1503, v1503, 1uLL), v24), vzip1q_s8(vextq_s8(v1503, v1503, 4uLL), v24)));
                    *v1503.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1504, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1503, v24), vzip1q_s8(vextq_s8(v1503, v1503, 5uLL), v24)), v1504)), v25), 5uLL));
                    v1504.i64[0] = v24.i64[0];
                    vst2_s8(v1502, v1503);
                    v1500 += 32;
                  }

                  while (v1500 != 512);
                  v1505 = 0;
                  v1506 = (v154 + 6);
                  v164 = v2223;
                  do
                  {
                    v1507 = &v2266.i8[v1505];
                    v1508 = *v1506;
                    v1506 = (v1506 + v2250);
                    v1509 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1508, v1508, 2uLL), v24), vzip1q_s8(vextq_s8(v1508, v1508, 3uLL), v24)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1508, v1508, 1uLL), v24), vzip1q_s8(vextq_s8(v1508, v1508, 4uLL), v24)));
                    a7 = vzip1q_s8(v1508, v24);
                    *v1508.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1509, 2uLL), vaddq_s16(vaddq_s16(a7, vzip1q_s8(vextq_s8(v1508, v1508, 5uLL), v24)), v1509)), v25), 5uLL));
                    v1509.i64[0] = v24.i64[0];
                    vst2_s8(v1507, v1508);
                    v1505 += 32;
                  }

                  while (v1505 != 512);
                  break;
                case 9:
                  sub_27729B614(v2265.i8, 0x20u, v154, v2250, 16);
                  sub_27729B614(v2266.i8, 0x20u, (v154 + 2), v2250, 16);
                  goto LABEL_507;
                case 10:
                  sub_27729B7DC(&v2265, 32, v154, v2250, 16);
                  sub_27729B7DC(&v2266, 32, (v154 + 2), v2250, 16);
                  goto LABEL_507;
                case 11:
                  sub_27729B98C(v2265.i8, 0x20u, v154, v2250, 16);
                  sub_27729B98C(v2266.i8, 0x20u, (v154 + 2), v2250, 16);
                  goto LABEL_507;
                case 12:
                  v504 = 0;
                  v505 = (v154 - 2);
                  do
                  {
                    v506 = *v505;
                    v505 = (v505 + v2250);
                    v507 = vzip1q_s8(vextq_s8(v506, v506, 3uLL), v24);
                    v508 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v506, v506, 2uLL), v24), v507), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v506, v506, 1uLL), v24), vzip1q_s8(vextq_s8(v506, v506, 4uLL), v24)));
                    *(&v2265 + v504) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v508, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v506, v24), vzip1q_s8(vextq_s8(v506, v506, 5uLL), v24)), v508)), v25), 5uLL))), v507);
                    v504 += 32;
                  }

                  while (v504 != 512);
                  v509 = 0;
                  v510 = (v154 + 6);
                  v164 = v2223;
                  do
                  {
                    v511 = *v510;
                    v510 = (v510 + v2250);
                    v512 = vzip1q_s8(vextq_s8(v511, v511, 3uLL), v24);
                    v513 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v511, v511, 2uLL), v24), v512), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v511, v511, 1uLL), v24), vzip1q_s8(vextq_s8(v511, v511, 4uLL), v24)));
                    a7 = vshlq_n_s16(v513, 2uLL);
                    a8 = vzip1q_s8(v511, v24);
                    *(&v2266 + v509) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(a7, vaddq_s16(vaddq_s16(a8, vzip1q_s8(vextq_s8(v511, v511, 5uLL), v24)), v513)), v25), 5uLL))), v512);
                    v509 += 32;
                  }

                  while (v509 != 512);
                  break;
                case 13:
                  v638 = v2239 + v138 + v139 * v2250;
                  v639 = v2250;
                  v640 = 2;
                  goto LABEL_505;
                case 14:
                  sub_27729BBEC(v2265.i8, 0x20u, v154, v2250);
                  sub_27729BBEC(v2266.i8, 0x20u, (v154 + 2), v2250);
                  goto LABEL_507;
                case 15:
                  v638 = v2239 + v138 + v139 * v2250;
                  v639 = v2250;
                  v640 = 3;
LABEL_505:
                  v831 = 3;
LABEL_506:
                  sub_27729AF04(v2265.i8, v638, v639, 16, v640, v831);
LABEL_507:
                  v25.i64[0] = 0x10001000100010;
                  v25.i64[1] = 0x10001000100010;
                  v11 = v2262;
                  v24 = v2263;
                  v164 = v2223;
                  break;
                default:
                  v163 = 0;
                  v164 = v2223;
                  do
                  {
                    v165 = &v2265.i8[v163];
                    v11 = *v154;
                    v154 = (v154 + v2250);
                    vst2_s8(v165, v11);
                    v165 += 16;
                    *v165 = vzip2q_s8(v11, v24);
                    v163 += 32;
                  }

                  while (v163 != 512);
                  break;
              }

              v2262 = v11;
              v2263 = v24;
              switch(v164)
              {
                case 1:
                  v1062 = 0;
                  v1063 = &v156[-v2215];
                  v1064 = (v1063 + v2224);
                  v1065 = (v1064 + v2224);
                  v1066 = (v1065 + v2224);
                  v1067 = vzip1q_s8(*(v1066 + v2224), v24);
                  v1068 = vzip1q_s8(*v1066, v24);
                  v1069 = vzip1q_s8(*v1065, v24);
                  v1070 = vzip1q_s8(*v1064, v24);
                  v1071 = vzip1q_s8(*v1063, v24);
                  v1072 = 5 * v2224;
                  v1073 = (v2208 + v1072 + v2202 + 2 * v2215 * v2201 - 4 * v2215);
                  do
                  {
                    v1074 = v1070;
                    v1070 = v1069;
                    v1069 = v1068;
                    v1068 = v1067;
                    v1067 = vzip1q_s8(*v1073, v24);
                    v1075 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1070, v1069), 2uLL), vaddq_s16(v1074, v1068));
                    *(&v2269 + v1062) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1071, v1075), vshlq_n_s16(v1075, 2uLL)), vaddq_s16(v1067, v25)), 5uLL))), v1070);
                    v1062 += 32;
                    v1073 = (v1073 + v2224);
                    v1071 = v1074;
                  }

                  while (v1062 != 512);
                  v1076 = 0;
                  v1077 = &v156[-v2215];
                  v1078 = *(v1077 + 2);
                  v1079 = (v1077 + v2224 + 8);
                  v1080 = (v1079 + v2224 + v2224);
                  v994 = vzip1q_s8(*(v1080 + v2224), v24);
                  v992 = vzip1q_s8(*v1080, v24);
                  v993 = vzip1q_s8(*(v1079 + v2224), v24);
                  a7 = vzip1q_s8(*v1079, v24);
                  a8 = vzip1q_s8(v1078, v24);
                  v988 = &v2231->i8[v33];
                  v1081 = (v2208 + v1072 + v2202 + 2 * v2215 * v2201 - 4 * v2215 + 8);
                  v987 = v159;
                  v989 = v2196;
                  v990 = v2264;
                  do
                  {
                    a9 = a7;
                    a7 = v993;
                    v993 = v992;
                    v992 = v994;
                    v994 = vzip1q_s8(*v1081, v24);
                    v1082 = vsubq_s16(vshlq_n_s16(vaddq_s16(a7, v993), 2uLL), vaddq_s16(a9, v992));
                    v1083 = vaddq_s16(vaddq_s16(a8, v1082), vshlq_n_s16(v1082, 2uLL));
                    a10 = vaddq_s16(v994, v25);
                    *(&v2270 + v1076) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(v1083, a10), 5uLL))), a7);
                    v1076 += 32;
                    v1081 = (v1081 + v2224);
                    a8 = a9;
                  }

                  while (v1076 != 512);
                  break;
                case 2:
                  v1011 = 0;
                  v1012 = &v156[-v2215];
                  v1013 = (v1012 + v2224);
                  v1014 = (v1013 + v2224);
                  v1015 = (v1014 + v2224);
                  v1016 = vzip1q_s8(*(v1015 + v2224), v24);
                  v1017 = vzip1q_s8(*v1015, v24);
                  v1018 = vzip1q_s8(*v1014, v24);
                  v1019 = vzip1q_s8(*v1013, v24);
                  v1020 = vzip1q_s8(*v1012, v24);
                  v1021 = 5 * v2224;
                  v1022 = (v2208 + v1021 + v2202 + 2 * v2215 * v2201 - 4 * v2215);
                  do
                  {
                    v1023 = v1019;
                    v1019 = v1018;
                    v1018 = v1017;
                    v1017 = v1016;
                    v1024 = &v2269.i8[v1011];
                    v1016 = vzip1q_s8(*v1022, v24);
                    v1025 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1019, v1018), 2uLL), vaddq_s16(v1023, v1017));
                    v1025.val[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1020, v1025), vshlq_n_s16(v1025, 2uLL)), vaddq_s16(v1016, v25)), 5uLL));
                    v1026 = v24.i64[0];
                    vst2_s8(v1024, v1025);
                    v1011 += 32;
                    v1022 = (v1022 + v2224);
                    v1020 = v1023;
                  }

                  while (v1011 != 512);
                  v1027 = 0;
                  v1028 = &v156[-v2215];
                  v1029 = *(v1028 + 2);
                  v1030 = (v1028 + v2224 + 8);
                  v1031 = (v1030 + v2224 + v2224);
                  v993 = vzip1q_s8(*(v1031 + v2224), v24);
                  v992 = vzip1q_s8(*v1031, v24);
                  v994 = vzip1q_s8(*(v1030 + v2224), v24);
                  a7 = vzip1q_s8(*v1030, v24);
                  a8 = vzip1q_s8(v1029, v24);
                  v988 = &v2231->i8[v33];
                  v1032 = (v2208 + v1021 + v2202 + 2 * v2215 * v2201 - 4 * v2215 + 8);
                  v987 = v159;
                  v989 = v2196;
                  v990 = v2264;
                  do
                  {
                    a9 = a7;
                    a7 = v994;
                    v994 = v992;
                    v992 = v993;
                    v1033 = &v2270.i8[v1027];
                    v993 = vzip1q_s8(*v1032, v24);
                    v1034 = vsubq_s16(vshlq_n_s16(vaddq_s16(a7, v994), 2uLL), vaddq_s16(a9, v992));
                    v1035 = vaddq_s16(vaddq_s16(a8, v1034), vshlq_n_s16(v1034, 2uLL));
                    a10 = vaddq_s16(v993, v25);
                    *a10.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(v1035, a10), 5uLL));
                    v1036 = v24.i64[0];
                    vst2_s8(v1033, a10);
                    v1027 += 32;
                    v1032 = (v1032 + v2224);
                    a8 = a9;
                  }

                  while (v1027 != 512);
                  break;
                case 3:
                  v1040 = 0;
                  v1041 = &v156[-v2215];
                  v1042 = (v1041 + v2224);
                  v1043 = (v1042 + v2224);
                  v1044 = (v1043 + v2224);
                  v1045 = vzip1q_s8(*(v1044 + v2224), v24);
                  v1046 = vzip1q_s8(*v1044, v24);
                  v1047 = vzip1q_s8(*v1043, v24);
                  v1048 = vzip1q_s8(*v1042, v24);
                  v1049 = vzip1q_s8(*v1041, v24);
                  v1050 = 5 * v2224;
                  v1051 = (v2208 + v1050 + v2202 + 2 * v2215 * v2201 - 4 * v2215);
                  do
                  {
                    v1052 = v1048;
                    v1048 = v1047;
                    v1047 = v1046;
                    v1046 = v1045;
                    v1045 = vzip1q_s8(*v1051, v24);
                    v1053 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1048, v1047), 2uLL), vaddq_s16(v1052, v1046));
                    *(&v2269 + v1040) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1049, v1053), vshlq_n_s16(v1053, 2uLL)), vaddq_s16(v1045, v25)), 5uLL))), v1047);
                    v1040 += 32;
                    v1051 = (v1051 + v2224);
                    v1049 = v1052;
                  }

                  while (v1040 != 512);
                  v1054 = 0;
                  v1055 = &v156[-v2215];
                  v1056 = *(v1055 + 2);
                  v1057 = (v1055 + v2224 + 8);
                  v1058 = (v1057 + v2224 + v2224);
                  v994 = vzip1q_s8(*(v1058 + v2224), v24);
                  v992 = vzip1q_s8(*v1058, v24);
                  v993 = vzip1q_s8(*(v1057 + v2224), v24);
                  a7 = vzip1q_s8(*v1057, v24);
                  a8 = vzip1q_s8(v1056, v24);
                  v988 = &v2231->i8[v33];
                  v1059 = (v2208 + v1050 + v2202 + 2 * v2215 * v2201 - 4 * v2215 + 8);
                  v987 = v159;
                  v989 = v2196;
                  v990 = v2264;
                  do
                  {
                    a9 = a7;
                    a7 = v993;
                    v993 = v992;
                    v992 = v994;
                    v994 = vzip1q_s8(*v1059, v24);
                    v1060 = vsubq_s16(vshlq_n_s16(vaddq_s16(a7, v993), 2uLL), vaddq_s16(a9, v992));
                    v1061 = vaddq_s16(vaddq_s16(a8, v1060), vshlq_n_s16(v1060, 2uLL));
                    a10 = vaddq_s16(v994, v25);
                    *(&v2270 + v1054) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(v1061, a10), 5uLL))), v993);
                    v1054 += 32;
                    v1059 = (v1059 + v2224);
                    a8 = a9;
                  }

                  while (v1054 != 512);
                  break;
                case 4:
                  v995 = 0;
                  v996 = (v156 - 2);
                  do
                  {
                    v997 = *v996;
                    v996 = (v996 + v2224);
                    v998 = vzip1q_s8(vextq_s8(v997, v997, 2uLL), v24);
                    v999 = vsubq_s16(vshlq_n_s16(vaddq_s16(v998, vzip1q_s8(vextq_s8(v997, v997, 3uLL), v24)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v997, v997, 1uLL), v24), vzip1q_s8(vextq_s8(v997, v997, 4uLL), v24)));
                    *(&v2269 + v995) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v999, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v997, v24), vzip1q_s8(vextq_s8(v997, v997, 5uLL), v24)), v999)), v25), 5uLL))), v998);
                    v995 += 32;
                  }

                  while (v995 != 512);
                  v1000 = 0;
                  v1001 = (v156 + 6);
                  v987 = v159;
                  v988 = &v2231->i8[v33];
                  v989 = v2196;
                  v990 = v2264;
                  do
                  {
                    v1002 = *v1001;
                    v1001 = (v1001 + v2224);
                    v994 = vzip1q_s8(vextq_s8(v1002, v1002, 2uLL), v24);
                    v993 = vsubq_s16(vshlq_n_s16(vaddq_s16(v994, vzip1q_s8(vextq_s8(v1002, v1002, 3uLL), v24)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1002, v1002, 1uLL), v24), vzip1q_s8(vextq_s8(v1002, v1002, 4uLL), v24)));
                    a7 = vshlq_n_s16(v993, 2uLL);
                    a8 = vzip1q_s8(v1002, v24);
                    v992 = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(a7, vaddq_s16(vaddq_s16(a8, vzip1q_s8(vextq_s8(v1002, v1002, 5uLL), v24)), v993)), v25), 5uLL))), v994);
                    *(&v2270 + v1000) = v992;
                    v1000 += 32;
                  }

                  while (v1000 != 512);
                  break;
                case 5:
                  v1037 = v156;
                  v1038 = v2224;
                  v1039 = 2;
                  goto LABEL_543;
                case 6:
                  sub_27729B1B0(v2269.i8, 0x20u, v156, v2224);
                  sub_27729B1B0(v2270.i8, 0x20u, (v156 + 2), v2224);
                  goto LABEL_587;
                case 7:
                  v1037 = v156;
                  v1038 = v2224;
                  v1039 = 3;
LABEL_543:
                  v1084 = 2;
                  goto LABEL_586;
                case 8:
                  v1520 = 0;
                  v1521 = (v156 - 2);
                  do
                  {
                    v1522 = &v2269.i8[v1520];
                    v1523 = *v1521;
                    v1521 = (v1521 + v2224);
                    v1524 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1523, v1523, 2uLL), v24), vzip1q_s8(vextq_s8(v1523, v1523, 3uLL), v24)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1523, v1523, 1uLL), v24), vzip1q_s8(vextq_s8(v1523, v1523, 4uLL), v24)));
                    *v1523.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1524, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1523, v24), vzip1q_s8(vextq_s8(v1523, v1523, 5uLL), v24)), v1524)), v25), 5uLL));
                    v1524.i64[0] = v24.i64[0];
                    vst2_s8(v1522, v1523);
                    v1520 += 32;
                  }

                  while (v1520 != 512);
                  v1525 = 0;
                  v1526 = (v156 + 6);
                  v987 = v159;
                  v988 = &v2231->i8[v33];
                  v989 = v2196;
                  v990 = v2264;
                  do
                  {
                    v1527 = &v2270.i8[v1525];
                    v1528 = *v1526;
                    v1526 = (v1526 + v2224);
                    v994 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1528, v1528, 2uLL), v24), vzip1q_s8(vextq_s8(v1528, v1528, 3uLL), v24)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1528, v1528, 1uLL), v24), vzip1q_s8(vextq_s8(v1528, v1528, 4uLL), v24)));
                    v993 = vshlq_n_s16(v994, 2uLL);
                    a7 = vzip1q_s8(v1528, v24);
                    v992 = vshrq_n_s16(vaddq_s16(vaddq_s16(v993, vaddq_s16(vaddq_s16(a7, vzip1q_s8(vextq_s8(v1528, v1528, 5uLL), v24)), v994)), v25), 5uLL);
                    *v992.i8 = vqmovun_s16(v992);
                    v994.i64[0] = v24.i64[0];
                    vst2_s8(v1527, v992);
                    v1525 += 32;
                  }

                  while (v1525 != 512);
                  break;
                case 9:
                  sub_27729B614(v2269.i8, 0x20u, v156, v2224, 16);
                  sub_27729B614(v2270.i8, 0x20u, (v156 + 2), v2224, 16);
                  goto LABEL_587;
                case 10:
                  sub_27729B7DC(&v2269, 32, v156, v2224, 16);
                  sub_27729B7DC(&v2270, 32, (v156 + 2), v2224, 16);
                  goto LABEL_587;
                case 11:
                  sub_27729B98C(v2269.i8, 0x20u, v156, v2224, 16);
                  sub_27729B98C(v2270.i8, 0x20u, (v156 + 2), v2224, 16);
                  goto LABEL_587;
                case 12:
                  v1003 = 0;
                  v1004 = (v156 - 2);
                  do
                  {
                    v1005 = *v1004;
                    v1004 = (v1004 + v2224);
                    v1006 = vzip1q_s8(vextq_s8(v1005, v1005, 3uLL), v24);
                    v1007 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1005, v1005, 2uLL), v24), v1006), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1005, v1005, 1uLL), v24), vzip1q_s8(vextq_s8(v1005, v1005, 4uLL), v24)));
                    *(&v2269 + v1003) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1007, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1005, v24), vzip1q_s8(vextq_s8(v1005, v1005, 5uLL), v24)), v1007)), v25), 5uLL))), v1006);
                    v1003 += 32;
                  }

                  while (v1003 != 512);
                  v1008 = 0;
                  v1009 = (v156 + 6);
                  v987 = v159;
                  v988 = &v2231->i8[v33];
                  v989 = v2196;
                  v990 = v2264;
                  do
                  {
                    v1010 = *v1009;
                    v1009 = (v1009 + v2224);
                    v993 = vzip1q_s8(vextq_s8(v1010, v1010, 3uLL), v24);
                    v994 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1010, v1010, 2uLL), v24), v993), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1010, v1010, 1uLL), v24), vzip1q_s8(vextq_s8(v1010, v1010, 4uLL), v24)));
                    a7 = vshlq_n_s16(v994, 2uLL);
                    a8 = vzip1q_s8(v1010, v24);
                    v992 = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(a7, vaddq_s16(vaddq_s16(a8, vzip1q_s8(vextq_s8(v1010, v1010, 5uLL), v24)), v994)), v25), 5uLL))), v993);
                    *(&v2270 + v1008) = v992;
                    v1008 += 32;
                  }

                  while (v1008 != 512);
                  break;
                case 13:
                  v1037 = v156;
                  v1038 = v2224;
                  v1039 = 2;
                  goto LABEL_585;
                case 14:
                  sub_27729BBEC(v2269.i8, 0x20u, v156, v2224);
                  sub_27729BBEC(v2270.i8, 0x20u, (v156 + 2), v2224);
                  goto LABEL_587;
                case 15:
                  v1037 = v156;
                  v1038 = v2224;
                  v1039 = 3;
LABEL_585:
                  v1084 = 3;
LABEL_586:
                  sub_27729AF04(v2269.i8, v1037, v1038, 16, v1039, v1084);
LABEL_587:
                  v987 = v159;
                  v988 = &v2231->i8[v33];
                  v989 = v2196;
                  v990 = v2264;
                  break;
                default:
                  v986 = 0;
                  v987 = v159;
                  v988 = &v2231->i8[v33];
                  v989 = v2196;
                  v990 = v2264;
                  do
                  {
                    v991 = &v2269.i8[v986];
                    v992 = *v156;
                    v156 = (v156 + v2224);
                    v993 = vzip2q_s8(v992, v24);
                    v994.i64[0] = v24.i64[0];
                    vst2_s8(v991, v992);
                    v991 += 16;
                    *v991 = v993;
                    v986 += 32;
                  }

                  while (v986 != 512);
                  break;
              }

              sub_277291E64(&v2265, &v2269, &v988[v989], v2257, a2, v987, 8, v2259, v992, *v994.i64, *v993.i64, a7, *a8.i64, *a9.i64, a10, v990);
              if (v2185 == 64)
              {
                __asm { PRFM            #0, [X20] }

                v1214 = 9;
                v1193 = v2272;
                v1186 = v2192;
                v1190 = v2263;
                v1187.i64[0] = 0x20002000200020;
                v1187.i64[1] = 0x20002000200020;
                v1188 = v2189;
                v1189 = v2187;
                do
                {
                  v1215 = _X20;
                  _X20 = (_X20 + v2253);
                  __asm { PRFM            #0, [X20] }

                  v1217 = vextq_s8(*v1215, *v1215, 2uLL);
                  v1217.i16[7] = v1215[1].i16[0];
                  v1218 = vrhaddq_u8(*v1215, v1217);
                  v1217.i64[0] = v2263.i64[0];
                  v1193[3] = vzip2q_s8(v1218, v2263);
                  v1193 += 2;
                  vst2_s8(v1193->i8, *(&v1217 - 8));
                  --v1214;
                }

                while (v1214 > 2);
                v1219 = vextq_s8(*_X20, *_X20, 2uLL);
                v1219.i16[7] = _X20[1].i16[0];
                v1212 = vrhaddq_u8(*_X20, v1219);
              }

              else
              {
                v1186 = v2192;
                v1187.i64[0] = 0x20002000200020;
                v1187.i64[1] = 0x20002000200020;
                v1188 = v2189;
                v1189 = v2187;
                if (v2185 != 4)
                {
                  v1190 = v2263;
                  if (v2185)
                  {
                    v1223 = 0;
                    v1224 = v2200 - (8 * v2216 + 8 * v2222) + 64;
                    v1225 = v2263;
                    v1225.i32[0] = v1224 | (v1224 << 16);
                    v1226 = vqtbl1q_s8(v1225, xmmword_2773B3DF0);
                    v1227 = v2263;
                    v1227.i32[0] = (8 * v2216 - v2200) | ((8 * v2216 - v2200) << 16);
                    v1228 = vqtbl1q_s8(v1227, xmmword_2773B3DF0);
                    v1229 = v2263;
                    v1229.i32[0] = (8 * v2222 - v2200) | ((8 * v2222 - v2200) << 16);
                    v1230 = vqtbl1q_s8(v1229, xmmword_2773B3DF0);
                    v2278 = v1226;
                    v2279 = v1228;
                    v2280 = v1230;
                    v2281 = v2184;
                    _X10 = &_X20->i8[v2253];
                    __asm { PRFM            #0, [X10] }

                    v1185.i64[0] = _X20->i64[0];
                    v1184 = xmmword_2773B3E00;
                    v1233 = vqtbl1q_s8(v1185, xmmword_2773B3E00);
                    v1233.i16[3] = _X20->i16[4];
                    v1234 = vzip1q_s8(v1233, v2263);
                    v1235 = vzip1q_s8(v1185, v2263);
                    v1236 = v2214;
                    if (v2214 <= -16)
                    {
                      v1236 = -16;
                    }

                    if (v1236 >= v146)
                    {
                      v1237 = v146;
                    }

                    else
                    {
                      v1237 = v1236;
                    }

                    v1238 = v1237 + v2205;
                    v1239 = (v2244 + v1238 + v2253 + 8);
                    _X15 = v2244 + v1238 + 2 * v2253;
                    do
                    {
                      __asm { PRFM            #0, [X15] }

                      v1242 = vmlaq_s16(vmulq_s16(v1228, v1234), v1226, v1235);
                      v1234.i64[0] = *(v1239 - 1);
                      v1235 = vzip1q_s8(v1234, v2263);
                      v1243 = vqtbl1q_s8(v1234, xmmword_2773B3E00);
                      v1243.i16[3] = *v1239;
                      v1239 = (v1239 + v2253);
                      v1234 = vzip1q_s8(v1243, v2263);
                      v2273[v1223] = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1242, v1230, v1235), v2184, v1234), v1187), 6uLL);
                      v1223 += 2;
                      _X15 += v2253;
                    }

                    while ((v1223 * 16) != 256);
                    v1244 = 0;
                    _X11 = &_X20->i64[1] + v2253;
                    __asm { PRFM            #0, [X11] }

                    v1235.i64[0] = _X20->i64[1];
                    v1247 = vqtbl1q_s8(v1235, xmmword_2773B3E00);
                    v1247.i16[3] = _X20[1].i16[0];
                    v1248 = vzip1q_s8(v1247, v2263);
                    v1185 = vzip1q_s8(v1235, v2263);
                    if (v1236 >= v146)
                    {
                      v1236 = v146;
                    }

                    v1249 = v2244 + v2205 + v1236;
                    v1222 = v2248 * v2243;
                    do
                    {
                      _X12 = v1249 + 2 * v2253 + 8;
                      v1249 += v2253;
                      __asm { PRFM            #0, [X12] }

                      v1252 = vmlaq_s16(vmulq_s16(v1228, v1248), v1226, v1185);
                      v1248.i64[0] = *(v1249 + 8);
                      v1185 = vzip1q_s8(v1248, v2263);
                      v1253 = vqtbl1q_s8(v1248, xmmword_2773B3E00);
                      v1253.i16[3] = *(v1249 + 16);
                      v1248 = vzip1q_s8(v1253, v2263);
                      v2274[v1244] = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1252, v1230, v1185), v2184, v1248), v1187), 6uLL);
                      v1244 += 2;
                    }

                    while ((v1244 * 16) != 256);
LABEL_617:
                    if (v2186 == 64)
                    {
                      __asm { PRFM            #0, [X25] }

                      v1276 = 9;
                      v1256 = v2275;
                      do
                      {
                        v1277 = _X25;
                        _X25 = (_X25 + v2235);
                        __asm { PRFM            #0, [X25] }

                        v1279 = vextq_s8(*v1277, *v1277, 2uLL);
                        v1279.i16[7] = v1277[1].i16[0];
                        v1280 = vrhaddq_u8(*v1277, v1279);
                        v1279.i64[0] = v1190.i64[0];
                        v1260 = vzip2q_s8(v1280, v1190);
                        v1256[3] = v1260;
                        v1256 += 2;
                        vst2_s8(v1256->i8, *(&v1279 - 8));
                        --v1276;
                      }

                      while (v1276 > 2);
                      v1281 = vextq_s8(*_X25, *_X25, 2uLL);
                      v1281.i16[7] = _X25[1].i16[0];
                      v1274 = vrhaddq_u8(*_X25, v1281);
                    }

                    else
                    {
                      if (v2186 != 4)
                      {
                        if (v2186)
                        {
                          v1283 = 0;
                          v1284 = v1222 - (8 * v2243 + 8 * v2248) + 64;
                          v1285 = v1190;
                          v1285.i32[0] = v1284 | (v1284 << 16);
                          v1263 = vqtbl1q_s8(v1285, xmmword_2773B3DF0);
                          v1286 = v1190;
                          v1286.i32[0] = (8 * v2243 - v1222) | ((8 * v2243 - v1222) << 16);
                          v1262 = vqtbl1q_s8(v1286, xmmword_2773B3DF0);
                          v1287 = v1190;
                          v1287.i32[0] = (8 * v2248 - v1222) | ((8 * v2248 - v1222) << 16);
                          v1260 = vqtbl1q_s8(v1287, xmmword_2773B3DF0);
                          v2282 = v1263;
                          v2283 = v1262;
                          v2284 = v1260;
                          v2285 = v1189;
                          _X8 = &_X25->i8[v2235];
                          __asm { PRFM            #0, [X8] }

                          v1185.i64[0] = _X25->i64[0];
                          v1184 = xmmword_2773B3E00;
                          v1290 = vqtbl1q_s8(v1185, xmmword_2773B3E00);
                          v1291 = -16;
                          if (v150 > -16)
                          {
                            v1291 = v150;
                          }

                          if (v1291 >= v1188)
                          {
                            v1292 = v1188;
                          }

                          else
                          {
                            v1292 = v1291;
                          }

                          v1293 = v1186 + v2211 + v1292;
                          v1290.i16[3] = _X25->i16[4];
                          v1294 = vzip1q_s8(v1290, v1190);
                          v1295 = vzip1q_s8(v1185, v1190);
                          do
                          {
                            _X15 = v1293 + 2 * v2235;
                            v1293 += v2235;
                            __asm { PRFM            #0, [X15] }

                            v1298 = vmlaq_s16(vmulq_s16(v1262, v1294), v1263, v1295);
                            v1294.i64[0] = *v1293;
                            v1295 = vzip1q_s8(v1294, v1190);
                            v1299 = vqtbl1q_s8(v1294, xmmword_2773B3E00);
                            v1299.i16[3] = *(v1293 + 8);
                            v1294 = vzip1q_s8(v1299, v1190);
                            v2276[v1283] = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1298, v1260, v1295), v1189, v1294), v1187), 6uLL);
                            v1283 += 2;
                          }

                          while ((v1283 * 16) != 256);
                          v1300 = 0;
                          _X11 = &_X25->i64[1] + v2235;
                          __asm { PRFM            #0, [X11] }

                          v1295.i64[0] = _X25->i64[1];
                          v1303 = vqtbl1q_s8(v1295, xmmword_2773B3E00);
                          v1303.i16[3] = _X25[1].i16[0];
                          v1304 = vzip1q_s8(v1303, v1190);
                          v1305 = vzip1q_s8(v1295, v1190);
                          if (v1291 >= v1188)
                          {
                            v1291 = v1188;
                          }

                          v1306 = v1186 + v2211 + v1291;
                          do
                          {
                            _X12 = v1306 + 2 * v2235 + 8;
                            v1306 += v2235;
                            __asm { PRFM            #0, [X12] }

                            v1309 = vmlaq_s16(vmulq_s16(v1262, v1304), v1263, v1305);
                            v1304.i64[0] = *(v1306 + 8);
                            v1305 = vzip1q_s8(v1304, v1190);
                            v1310 = vqtbl1q_s8(v1304, xmmword_2773B3E00);
                            v1310.i16[3] = *(v1306 + 16);
                            v1304 = vzip1q_s8(v1310, v1190);
                            v2277[v1300] = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1309, v1260, v1305), v1189, v1304), v1187), 6uLL);
                            v1300 += 2;
                          }

                          while ((v1300 * 16) != 256);
                          goto LABEL_646;
                        }

                        __asm { PRFM            #0, [X25] }

                        v1255 = 9;
                        v1256 = v2275;
                        do
                        {
                          v1257 = _X25;
                          _X25 = (_X25 + v2235);
                          __asm { PRFM            #0, [X25] }

                          v1259 = *v1257;
                          v1260 = vzip2q_s8(*v1257, v1190);
                          v1256[3] = v1260;
                          v1256 += 2;
                          v1261 = v1190.i64[0];
                          vst2_s8(v1256->i8, v1259);
                          --v1255;
                        }

                        while (v1255 > 2);
                        v1262 = *_X25;
                        v1263 = vzip2q_s8(*_X25, v1190);
                        i8 = v1256[2].i8;
                        v1260.i64[0] = v1190.i64[0];
                        vst2_s8(i8, *(&v1260 - 8));
LABEL_634:
                        v1256[3] = v1263;
LABEL_646:
                        sub_27729222C(v2273, v2276, &v2195[v2217], v2256, a3, v162, 4, v2259, v1263, *v1262.i64, v1260, v1184, v990);
LABEL_986:
                        v11 = v2262;
                        v24 = v2263;
LABEL_987:
                        v25.i64[0] = 0x10001000100010;
                        v25.i64[1] = 0x10001000100010;
                        break;
                      }

                      _X8 = &_X25->i8[v2235];
                      __asm { PRFM            #0, [X8] }

                      v1267 = *_X25;
                      v1268 = v150;
                      if (v150 <= -16)
                      {
                        v1268 = -16;
                      }

                      if (v1268 >= v1188)
                      {
                        v1268 = v1188;
                      }

                      v1269 = (v1186 + v2211 + v1268);
                      v1270 = 9;
                      v1256 = v2275;
                      do
                      {
                        _X13 = &v1269->i8[2 * v2235];
                        v1269 = (v1269 + v2235);
                        __asm { PRFM            #0, [X13] }

                        v1273 = *v1269;
                        v1260 = vrhaddq_u8(v1267, *v1269);
                        v1184.i64[0] = v1190.i64[0];
                        v1256[3] = vzip2q_s8(v1260, v1190);
                        v1256 += 2;
                        vst2_s8(v1256->i8, *(&v1184 - 8));
                        --v1270;
                        v1267 = v1273;
                      }

                      while (v1270 > 2);
                      v1274 = vrhaddq_u8(v1273, *(v1269 + v2235));
                    }

                    v1282 = v1256[2].i8;
                    v1262.i64[0] = v1190.i64[0];
                    vst2_s8(v1282, *(&v1262 - 8));
                    v1263 = vzip2q_s8(v1274, v1190);
                    goto LABEL_634;
                  }

                  __asm { PRFM            #0, [X20] }

                  v1192 = 9;
                  v1193 = v2272;
                  do
                  {
                    v1194 = _X20;
                    _X20 = (_X20 + v2253);
                    __asm { PRFM            #0, [X20] }

                    v1196 = *v1194;
                    v1193[3] = vzip2q_s8(*v1194, v2263);
                    v1193 += 2;
                    v1197 = v2263.i64[0];
                    vst2_s8(v1193->i8, v1196);
                    --v1192;
                  }

                  while (v1192 > 2);
                  v1198 = *_X20;
                  v1199 = vzip2q_s8(*_X20, v2263);
                  v1200 = v1193[2].i8;
                  v1201 = v2263.i64[0];
                  vst2_s8(v1200, v1198);
LABEL_605:
                  v1222 = v2248 * v2243;
                  v1193[3] = v1199;
                  goto LABEL_617;
                }

                _X8 = &_X20->i8[v2253];
                __asm { PRFM            #0, [X8] }

                v1204 = *_X20;
                v1205 = v2214;
                if (v2214 <= -16)
                {
                  v1205 = -16;
                }

                if (v1205 >= v146)
                {
                  v1205 = v146;
                }

                v1206 = (v2244 + v2205 + v1205);
                v1207 = 9;
                v1193 = v2272;
                v1190 = v2263;
                do
                {
                  _X13 = &v1206->i8[2 * v2253];
                  v1206 = (v1206 + v2253);
                  __asm { PRFM            #0, [X13] }

                  v1210 = *v1206;
                  v1211 = vrhaddq_u8(v1204, *v1206);
                  v1184.i64[0] = v2263.i64[0];
                  v1193[3] = vzip2q_s8(v1211, v2263);
                  v1193 += 2;
                  vst2_s8(v1193->i8, *(&v1184 - 8));
                  --v1207;
                  v1204 = v1210;
                }

                while (v1207 > 2);
                v1212 = vrhaddq_u8(v1210, *(v1206 + v2253));
              }

              v1220 = v1193[2].i8;
              v1221 = v1190.i64[0];
              vst2_s8(v1220, v1212);
              v1199 = vzip2q_s8(v1212, v1190);
              goto LABEL_605;
            }

            switch(v2225)
            {
              case 1:
                v782 = 0;
                v783 = -1 * v2209;
                v784 = &v154[-v2209];
                v785 = (v784 + v2250);
                v786 = (v785 + v2250);
                v787 = (v786 + v2250);
                v788 = vzip1q_s8(*(v787 + v2250), v24);
                v789 = vzip1q_s8(*v787, v24);
                v790 = vzip1q_s8(*v786, v24);
                v791 = vzip1q_s8(*v785, v24);
                v792 = vzip1q_s8(*v784, v24);
                v793 = 5 * v2250;
                v794 = (v2239 + v793 + v138 + 2 * v2209 * v139 - 4 * v2209);
                do
                {
                  v795 = v791;
                  v791 = v790;
                  v790 = v789;
                  v789 = v788;
                  v788 = vzip1q_s8(*v794, v24);
                  v796 = vsubq_s16(vshlq_n_s16(vaddq_s16(v791, v790), 2uLL), vaddq_s16(v795, v789));
                  *(&v2265 + v782) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v792, v796), vshlq_n_s16(v796, 2uLL)), vaddq_s16(v788, v25)), 5uLL))), v791);
                  v782 += 32;
                  v794 = (v794 + v2250);
                  v792 = v795;
                }

                while (v782 != 256);
                v797 = 0;
                v798 = (&v154[v783 + 2] + v2250);
                v799 = (v798 + v2250 + v2250);
                v800 = vzip1q_s8(*(v799 + v2250), v24);
                v801 = vzip1q_s8(*v799, v24);
                v802 = vzip1q_s8(*(v798 + v2250), v24);
                a7 = vzip1q_s8(*v798, v24);
                a8 = vzip1q_s8(*&v154[v783 + 2], v24);
                v803 = (v2239 + v793 + v138 + 2 * v2209 * v139 - 4 * v2209 + 8);
                v228 = v2223;
                do
                {
                  a9 = a7;
                  a7 = v802;
                  v802 = v801;
                  v801 = v800;
                  v800 = vzip1q_s8(*v803, v24);
                  v804 = vsubq_s16(vshlq_n_s16(vaddq_s16(a7, v802), 2uLL), vaddq_s16(a9, v801));
                  v805 = vaddq_s16(vaddq_s16(a8, v804), vshlq_n_s16(v804, 2uLL));
                  a10 = vaddq_s16(v800, v25);
                  *(&v2266 + v797) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(v805, a10), 5uLL))), a7);
                  v797 += 32;
                  v803 = (v803 + v2250);
                  a8 = a9;
                }

                while (v797 != 256);
                break;
              case 2:
                v589 = 0;
                v590 = -1 * v2209;
                v591 = &v154[-v2209];
                v592 = (v591 + v2250);
                v593 = (v592 + v2250);
                v594 = (v593 + v2250);
                v595 = vzip1q_s8(*(v594 + v2250), v24);
                v596 = vzip1q_s8(*v594, v24);
                v597 = vzip1q_s8(*v593, v24);
                v598 = vzip1q_s8(*v592, v24);
                v599 = vzip1q_s8(*v591, v24);
                v600 = 5 * v2250;
                v601 = (v2239 + v600 + v138 + 2 * v2209 * v139 - 4 * v2209);
                do
                {
                  v602 = v598;
                  v598 = v597;
                  v597 = v596;
                  v596 = v595;
                  v603 = &v2265.i8[v589];
                  v595 = vzip1q_s8(*v601, v24);
                  v604 = vsubq_s16(vshlq_n_s16(vaddq_s16(v598, v597), 2uLL), vaddq_s16(v602, v596));
                  v604.val[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v599, v604), vshlq_n_s16(v604, 2uLL)), vaddq_s16(v595, v25)), 5uLL));
                  v605 = v24.i64[0];
                  vst2_s8(v603, v604);
                  v589 += 32;
                  v601 = (v601 + v2250);
                  v599 = v602;
                }

                while (v589 != 256);
                v606 = 0;
                v607 = (&v154[v590 + 2] + v2250);
                v608 = (v607 + v2250 + v2250);
                v609 = vzip1q_s8(*(v608 + v2250), v24);
                v610 = vzip1q_s8(*v608, v24);
                v611 = vzip1q_s8(*(v607 + v2250), v24);
                a7 = vzip1q_s8(*v607, v24);
                a8 = vzip1q_s8(*&v154[v590 + 2], v24);
                v612 = (v2239 + v600 + v138 + 2 * v2209 * v139 - 4 * v2209 + 8);
                v228 = v2223;
                do
                {
                  a9 = a7;
                  a7 = v611;
                  v611 = v610;
                  v610 = v609;
                  v613 = &v2266.i8[v606];
                  v609 = vzip1q_s8(*v612, v24);
                  v614 = vsubq_s16(vshlq_n_s16(vaddq_s16(a7, v611), 2uLL), vaddq_s16(a9, v610));
                  v615 = vaddq_s16(vaddq_s16(a8, v614), vshlq_n_s16(v614, 2uLL));
                  a10 = vaddq_s16(v609, v25);
                  *a10.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(v615, a10), 5uLL));
                  v616 = v24.i64[0];
                  vst2_s8(v613, a10);
                  v606 += 32;
                  v612 = (v612 + v2250);
                  a8 = a9;
                }

                while (v606 != 256);
                break;
              case 3:
                v709 = 0;
                v710 = -1 * v2209;
                v711 = &v154[-v2209];
                v712 = (v711 + v2250);
                v713 = (v712 + v2250);
                v714 = (v713 + v2250);
                v715 = vzip1q_s8(*(v714 + v2250), v24);
                v716 = vzip1q_s8(*v714, v24);
                v717 = vzip1q_s8(*v713, v24);
                v718 = vzip1q_s8(*v712, v24);
                v719 = vzip1q_s8(*v711, v24);
                v720 = 5 * v2250;
                v721 = (v2239 + v720 + v138 + 2 * v2209 * v139 - 4 * v2209);
                do
                {
                  v722 = v718;
                  v718 = v717;
                  v717 = v716;
                  v716 = v715;
                  v715 = vzip1q_s8(*v721, v24);
                  v723 = vsubq_s16(vshlq_n_s16(vaddq_s16(v718, v717), 2uLL), vaddq_s16(v722, v716));
                  *(&v2265 + v709) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v719, v723), vshlq_n_s16(v723, 2uLL)), vaddq_s16(v715, v25)), 5uLL))), v717);
                  v709 += 32;
                  v721 = (v721 + v2250);
                  v719 = v722;
                }

                while (v709 != 256);
                v724 = 0;
                v725 = (&v154[v710 + 2] + v2250);
                v726 = (v725 + v2250 + v2250);
                v727 = vzip1q_s8(*(v726 + v2250), v24);
                v728 = vzip1q_s8(*v726, v24);
                v729 = vzip1q_s8(*(v725 + v2250), v24);
                a7 = vzip1q_s8(*v725, v24);
                a8 = vzip1q_s8(*&v154[v710 + 2], v24);
                v730 = (v2239 + v720 + v138 + 2 * v2209 * v139 - 4 * v2209 + 8);
                v228 = v2223;
                do
                {
                  a9 = a7;
                  a7 = v729;
                  v729 = v728;
                  v728 = v727;
                  v727 = vzip1q_s8(*v730, v24);
                  v731 = vsubq_s16(vshlq_n_s16(vaddq_s16(a7, v729), 2uLL), vaddq_s16(a9, v728));
                  v732 = vaddq_s16(vaddq_s16(a8, v731), vshlq_n_s16(v731, 2uLL));
                  a10 = vaddq_s16(v727, v25);
                  *(&v2266 + v724) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(v732, a10), 5uLL))), v729);
                  v724 += 32;
                  v730 = (v730 + v2250);
                  a8 = a9;
                }

                while (v724 != 256);
                break;
              case 4:
                v485 = 0;
                v486 = (v154 - 2);
                do
                {
                  v487 = *v486;
                  v486 = (v486 + v2250);
                  v488 = vzip1q_s8(vextq_s8(v487, v487, 2uLL), v24);
                  v489 = vsubq_s16(vshlq_n_s16(vaddq_s16(v488, vzip1q_s8(vextq_s8(v487, v487, 3uLL), v24)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v487, v487, 1uLL), v24), vzip1q_s8(vextq_s8(v487, v487, 4uLL), v24)));
                  *(&v2265 + v485) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v489, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v487, v24), vzip1q_s8(vextq_s8(v487, v487, 5uLL), v24)), v489)), v25), 5uLL))), v488);
                  v485 += 32;
                }

                while (v485 != 256);
                v490 = 0;
                v491 = (v154 + 6);
                v228 = v2223;
                do
                {
                  v492 = *v491;
                  v491 = (v491 + v2250);
                  v493 = vzip1q_s8(vextq_s8(v492, v492, 2uLL), v24);
                  v494 = vsubq_s16(vshlq_n_s16(vaddq_s16(v493, vzip1q_s8(vextq_s8(v492, v492, 3uLL), v24)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v492, v492, 1uLL), v24), vzip1q_s8(vextq_s8(v492, v492, 4uLL), v24)));
                  a7 = vshlq_n_s16(v494, 2uLL);
                  a8 = vzip1q_s8(v492, v24);
                  *(&v2266 + v490) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(a7, vaddq_s16(vaddq_s16(a8, vzip1q_s8(vextq_s8(v492, v492, 5uLL), v24)), v494)), v25), 5uLL))), v493);
                  v490 += 32;
                }

                while (v490 != 256);
                break;
              case 5:
                v641 = v2239 + v138 + v139 * v2250;
                v642 = v2250;
                v643 = 2;
                goto LABEL_457;
              case 6:
                sub_27729BFC4(v2265.i8, 0x20u, v154, v2250);
                sub_27729BFC4(v2266.i8, 0x20u, (v154 + 2), v2250);
                goto LABEL_547;
              case 7:
                v641 = v2239 + v138 + v139 * v2250;
                v642 = v2250;
                v643 = 3;
LABEL_457:
                v832 = 2;
                goto LABEL_546;
              case 8:
                v1510 = 0;
                v1511 = (v154 - 2);
                do
                {
                  v1512 = &v2265.i8[v1510];
                  v1513 = *v1511;
                  v1511 = (v1511 + v2250);
                  v1514 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1513, v1513, 2uLL), v24), vzip1q_s8(vextq_s8(v1513, v1513, 3uLL), v24)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1513, v1513, 1uLL), v24), vzip1q_s8(vextq_s8(v1513, v1513, 4uLL), v24)));
                  *v1513.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1514, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1513, v24), vzip1q_s8(vextq_s8(v1513, v1513, 5uLL), v24)), v1514)), v25), 5uLL));
                  v1514.i64[0] = v24.i64[0];
                  vst2_s8(v1512, v1513);
                  v1510 += 32;
                }

                while (v1510 != 256);
                v1515 = 0;
                v1516 = (v154 + 6);
                v228 = v2223;
                do
                {
                  v1517 = &v2266.i8[v1515];
                  v1518 = *v1516;
                  v1516 = (v1516 + v2250);
                  v1519 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1518, v1518, 2uLL), v24), vzip1q_s8(vextq_s8(v1518, v1518, 3uLL), v24)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1518, v1518, 1uLL), v24), vzip1q_s8(vextq_s8(v1518, v1518, 4uLL), v24)));
                  a7 = vzip1q_s8(v1518, v24);
                  *v1518.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1519, 2uLL), vaddq_s16(vaddq_s16(a7, vzip1q_s8(vextq_s8(v1518, v1518, 5uLL), v24)), v1519)), v25), 5uLL));
                  v1519.i64[0] = v24.i64[0];
                  vst2_s8(v1517, v1518);
                  v1515 += 32;
                }

                while (v1515 != 256);
                break;
              case 9:
                sub_27729B614(v2265.i8, 0x20u, v154, v2250, 8);
                sub_27729B614(v2266.i8, 0x20u, (v154 + 2), v2250, 8);
                goto LABEL_547;
              case 10:
                sub_27729B7DC(&v2265, 32, v154, v2250, 8);
                sub_27729B7DC(&v2266, 32, (v154 + 2), v2250, 8);
                goto LABEL_547;
              case 11:
                sub_27729B98C(v2265.i8, 0x20u, v154, v2250, 8);
                sub_27729B98C(v2266.i8, 0x20u, (v154 + 2), v2250, 8);
                goto LABEL_547;
              case 12:
                v514 = 0;
                v515 = (v154 - 2);
                do
                {
                  v516 = *v515;
                  v515 = (v515 + v2250);
                  v517 = vzip1q_s8(vextq_s8(v516, v516, 3uLL), v24);
                  v518 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v516, v516, 2uLL), v24), v517), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v516, v516, 1uLL), v24), vzip1q_s8(vextq_s8(v516, v516, 4uLL), v24)));
                  *(&v2265 + v514) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v518, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v516, v24), vzip1q_s8(vextq_s8(v516, v516, 5uLL), v24)), v518)), v25), 5uLL))), v517);
                  v514 += 32;
                }

                while (v514 != 256);
                v519 = 0;
                v520 = (v154 + 6);
                v228 = v2223;
                do
                {
                  v521 = *v520;
                  v520 = (v520 + v2250);
                  v522 = vzip1q_s8(vextq_s8(v521, v521, 3uLL), v24);
                  v523 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v521, v521, 2uLL), v24), v522), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v521, v521, 1uLL), v24), vzip1q_s8(vextq_s8(v521, v521, 4uLL), v24)));
                  a7 = vshlq_n_s16(v523, 2uLL);
                  a8 = vzip1q_s8(v521, v24);
                  *(&v2266 + v519) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(a7, vaddq_s16(vaddq_s16(a8, vzip1q_s8(vextq_s8(v521, v521, 5uLL), v24)), v523)), v25), 5uLL))), v522);
                  v519 += 32;
                }

                while (v519 != 256);
                break;
              case 13:
                v641 = v2239 + v138 + v139 * v2250;
                v642 = v2250;
                v643 = 2;
                goto LABEL_545;
              case 14:
                sub_27729C39C(v2265.i8, 0x20u, v154, v2250);
                sub_27729C39C(v2266.i8, 0x20u, (v154 + 2), v2250);
                goto LABEL_547;
              case 15:
                v641 = v2239 + v138 + v139 * v2250;
                v642 = v2250;
                v643 = 3;
LABEL_545:
                v832 = 3;
LABEL_546:
                sub_27729AF04(v2265.i8, v641, v642, 8, v643, v832);
LABEL_547:
                v25.i64[0] = 0x10001000100010;
                v25.i64[1] = 0x10001000100010;
                v24 = v2263;
                v228 = v2223;
                break;
              default:
                v227 = 0;
                v228 = v2223;
                do
                {
                  v229 = &v2265.i8[v227];
                  v230 = *v154;
                  v154 = (v154 + v2250);
                  v231 = v24.i64[0];
                  vst2_s8(v229, v230);
                  v229 += 16;
                  *v229 = vzip2q_s8(v230, v24);
                  v227 += 32;
                }

                while (v227 != 256);
                break;
            }

            switch(v228)
            {
              case 1:
                v1161 = 0;
                v1162 = &v156[-v2215];
                v1163 = (v1162 + v2224);
                v1164 = (v1163 + v2224);
                v1165 = (v1164 + v2224);
                v1166 = vzip1q_s8(*(v1165 + v2224), v24);
                v1167 = vzip1q_s8(*v1165, v24);
                v1168 = vzip1q_s8(*v1164, v24);
                v1169 = vzip1q_s8(*v1163, v24);
                v1170 = vzip1q_s8(*v1162, v24);
                v1171 = 5 * v2224;
                v1172 = (v2208 + v1171 + v2202 + 2 * v2215 * v2201 - 4 * v2215);
                do
                {
                  v1173 = v1169;
                  v1169 = v1168;
                  v1168 = v1167;
                  v1167 = v1166;
                  v1166 = vzip1q_s8(*v1172, v24);
                  v1174 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1169, v1168), 2uLL), vaddq_s16(v1173, v1167));
                  *(&v2269 + v1161) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1170, v1174), vshlq_n_s16(v1174, 2uLL)), vaddq_s16(v1166, v25)), 5uLL))), v1169);
                  v1161 += 32;
                  v1172 = (v1172 + v2224);
                  v1170 = v1173;
                }

                while (v1161 != 256);
                v1175 = 0;
                v1176 = &v156[-v2215];
                v1177 = *(v1176 + 2);
                v1178 = (v1176 + v2224 + 8);
                v1179 = (v1178 + v2224 + v2224);
                v1093 = vzip1q_s8(*(v1179 + v2224), v24);
                v1091 = vzip1q_s8(*v1179, v24);
                v1092 = vzip1q_s8(*(v1178 + v2224), v24);
                a7 = vzip1q_s8(*v1178, v24);
                a8 = vzip1q_s8(v1177, v24);
                v1087 = &v2231->i8[v33];
                v1180 = (v2208 + v1171 + v2202 + 2 * v2215 * v2201 - 4 * v2215 + 8);
                v1086 = v159;
                v1088 = v2196;
                v1089 = v2264;
                do
                {
                  a9 = a7;
                  a7 = v1092;
                  v1092 = v1091;
                  v1091 = v1093;
                  v1093 = vzip1q_s8(*v1180, v24);
                  v1181 = vsubq_s16(vshlq_n_s16(vaddq_s16(a7, v1092), 2uLL), vaddq_s16(a9, v1091));
                  v1182 = vaddq_s16(vaddq_s16(a8, v1181), vshlq_n_s16(v1181, 2uLL));
                  a10 = vaddq_s16(v1093, v25);
                  *(&v2270 + v1175) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(v1182, a10), 5uLL))), a7);
                  v1175 += 32;
                  v1180 = (v1180 + v2224);
                  a8 = a9;
                }

                while (v1175 != 256);
                break;
              case 2:
                v1110 = 0;
                v1111 = &v156[-v2215];
                v1112 = (v1111 + v2224);
                v1113 = (v1112 + v2224);
                v1114 = (v1113 + v2224);
                v1115 = vzip1q_s8(*(v1114 + v2224), v24);
                v1116 = vzip1q_s8(*v1114, v24);
                v1117 = vzip1q_s8(*v1113, v24);
                v1118 = vzip1q_s8(*v1112, v24);
                v1119 = vzip1q_s8(*v1111, v24);
                v1120 = 5 * v2224;
                v1121 = (v2208 + v1120 + v2202 + 2 * v2215 * v2201 - 4 * v2215);
                do
                {
                  v1122 = v1118;
                  v1118 = v1117;
                  v1117 = v1116;
                  v1116 = v1115;
                  v1123 = &v2269.i8[v1110];
                  v1115 = vzip1q_s8(*v1121, v24);
                  v1124 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1118, v1117), 2uLL), vaddq_s16(v1122, v1116));
                  v1124.val[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1119, v1124), vshlq_n_s16(v1124, 2uLL)), vaddq_s16(v1115, v25)), 5uLL));
                  v1125 = v24.i64[0];
                  vst2_s8(v1123, v1124);
                  v1110 += 32;
                  v1121 = (v1121 + v2224);
                  v1119 = v1122;
                }

                while (v1110 != 256);
                v1126 = 0;
                v1127 = &v156[-v2215];
                v1128 = *(v1127 + 2);
                v1129 = (v1127 + v2224 + 8);
                v1130 = (v1129 + v2224 + v2224);
                v1092 = vzip1q_s8(*(v1130 + v2224), v24);
                v1091 = vzip1q_s8(*v1130, v24);
                v1093 = vzip1q_s8(*(v1129 + v2224), v24);
                a7 = vzip1q_s8(*v1129, v24);
                a8 = vzip1q_s8(v1128, v24);
                v1087 = &v2231->i8[v33];
                v1131 = (v2208 + v1120 + v2202 + 2 * v2215 * v2201 - 4 * v2215 + 8);
                v1086 = v159;
                v1088 = v2196;
                v1089 = v2264;
                do
                {
                  a9 = a7;
                  a7 = v1093;
                  v1093 = v1091;
                  v1091 = v1092;
                  v1132 = &v2270.i8[v1126];
                  v1092 = vzip1q_s8(*v1131, v24);
                  v1133 = vsubq_s16(vshlq_n_s16(vaddq_s16(a7, v1093), 2uLL), vaddq_s16(a9, v1091));
                  v1134 = vaddq_s16(vaddq_s16(a8, v1133), vshlq_n_s16(v1133, 2uLL));
                  a10 = vaddq_s16(v1092, v25);
                  *a10.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(v1134, a10), 5uLL));
                  v1135 = v24.i64[0];
                  vst2_s8(v1132, a10);
                  v1126 += 32;
                  v1131 = (v1131 + v2224);
                  a8 = a9;
                }

                while (v1126 != 256);
                break;
              case 3:
                v1139 = 0;
                v1140 = &v156[-v2215];
                v1141 = (v1140 + v2224);
                v1142 = (v1141 + v2224);
                v1143 = (v1142 + v2224);
                v1144 = vzip1q_s8(*(v1143 + v2224), v24);
                v1145 = vzip1q_s8(*v1143, v24);
                v1146 = vzip1q_s8(*v1142, v24);
                v1147 = vzip1q_s8(*v1141, v24);
                v1148 = vzip1q_s8(*v1140, v24);
                v1149 = 5 * v2224;
                v1150 = (v2208 + v1149 + v2202 + 2 * v2215 * v2201 - 4 * v2215);
                do
                {
                  v1151 = v1147;
                  v1147 = v1146;
                  v1146 = v1145;
                  v1145 = v1144;
                  v1144 = vzip1q_s8(*v1150, v24);
                  v1152 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1147, v1146), 2uLL), vaddq_s16(v1151, v1145));
                  *(&v2269 + v1139) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1148, v1152), vshlq_n_s16(v1152, 2uLL)), vaddq_s16(v1144, v25)), 5uLL))), v1146);
                  v1139 += 32;
                  v1150 = (v1150 + v2224);
                  v1148 = v1151;
                }

                while (v1139 != 256);
                v1153 = 0;
                v1154 = &v156[-v2215];
                v1155 = *(v1154 + 2);
                v1156 = (v1154 + v2224 + 8);
                v1157 = (v1156 + v2224 + v2224);
                v1093 = vzip1q_s8(*(v1157 + v2224), v24);
                v1091 = vzip1q_s8(*v1157, v24);
                v1092 = vzip1q_s8(*(v1156 + v2224), v24);
                a7 = vzip1q_s8(*v1156, v24);
                a8 = vzip1q_s8(v1155, v24);
                v1087 = &v2231->i8[v33];
                v1158 = (v2208 + v1149 + v2202 + 2 * v2215 * v2201 - 4 * v2215 + 8);
                v1086 = v159;
                v1088 = v2196;
                v1089 = v2264;
                do
                {
                  a9 = a7;
                  a7 = v1092;
                  v1092 = v1091;
                  v1091 = v1093;
                  v1093 = vzip1q_s8(*v1158, v24);
                  v1159 = vsubq_s16(vshlq_n_s16(vaddq_s16(a7, v1092), 2uLL), vaddq_s16(a9, v1091));
                  v1160 = vaddq_s16(vaddq_s16(a8, v1159), vshlq_n_s16(v1159, 2uLL));
                  a10 = vaddq_s16(v1093, v25);
                  *(&v2270 + v1153) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(v1160, a10), 5uLL))), v1092);
                  v1153 += 32;
                  v1158 = (v1158 + v2224);
                  a8 = a9;
                }

                while (v1153 != 256);
                break;
              case 4:
                v1094 = 0;
                v1095 = (v156 - 2);
                do
                {
                  v1096 = *v1095;
                  v1095 = (v1095 + v2224);
                  v1097 = vzip1q_s8(vextq_s8(v1096, v1096, 2uLL), v24);
                  v1098 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1097, vzip1q_s8(vextq_s8(v1096, v1096, 3uLL), v24)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1096, v1096, 1uLL), v24), vzip1q_s8(vextq_s8(v1096, v1096, 4uLL), v24)));
                  *(&v2269 + v1094) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1098, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1096, v24), vzip1q_s8(vextq_s8(v1096, v1096, 5uLL), v24)), v1098)), v25), 5uLL))), v1097);
                  v1094 += 32;
                }

                while (v1094 != 256);
                v1099 = 0;
                v1100 = (v156 + 6);
                v1086 = v159;
                v1087 = &v2231->i8[v33];
                v1088 = v2196;
                v1089 = v2264;
                do
                {
                  v1101 = *v1100;
                  v1100 = (v1100 + v2224);
                  v1093 = vzip1q_s8(vextq_s8(v1101, v1101, 2uLL), v24);
                  v1092 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1093, vzip1q_s8(vextq_s8(v1101, v1101, 3uLL), v24)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1101, v1101, 1uLL), v24), vzip1q_s8(vextq_s8(v1101, v1101, 4uLL), v24)));
                  a7 = vshlq_n_s16(v1092, 2uLL);
                  a8 = vzip1q_s8(v1101, v24);
                  v1091 = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(a7, vaddq_s16(vaddq_s16(a8, vzip1q_s8(vextq_s8(v1101, v1101, 5uLL), v24)), v1092)), v25), 5uLL))), v1093);
                  *(&v2270 + v1099) = v1091;
                  v1099 += 32;
                }

                while (v1099 != 256);
                break;
              case 5:
                v1136 = v156;
                v1137 = v2224;
                v1138 = 2;
                goto LABEL_583;
              case 6:
                sub_27729BFC4(v2269.i8, 0x20u, v156, v2224);
                sub_27729BFC4(v2270.i8, 0x20u, (v156 + 2), v2224);
                goto LABEL_650;
              case 7:
                v1136 = v156;
                v1137 = v2224;
                v1138 = 3;
LABEL_583:
                v1183 = 2;
                goto LABEL_649;
              case 8:
                v1529 = 0;
                v1530 = (v156 - 2);
                do
                {
                  v1531 = &v2269.i8[v1529];
                  v1532 = *v1530;
                  v1530 = (v1530 + v2224);
                  v1533 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1532, v1532, 2uLL), v24), vzip1q_s8(vextq_s8(v1532, v1532, 3uLL), v24)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1532, v1532, 1uLL), v24), vzip1q_s8(vextq_s8(v1532, v1532, 4uLL), v24)));
                  *v1532.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1533, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1532, v24), vzip1q_s8(vextq_s8(v1532, v1532, 5uLL), v24)), v1533)), v25), 5uLL));
                  v1533.i64[0] = v24.i64[0];
                  vst2_s8(v1531, v1532);
                  v1529 += 32;
                }

                while (v1529 != 256);
                v1534 = 0;
                v1535 = (v156 + 6);
                v1086 = v159;
                v1087 = &v2231->i8[v33];
                v1088 = v2196;
                v1089 = v2264;
                do
                {
                  v1536 = &v2270.i8[v1534];
                  v1537 = *v1535;
                  v1535 = (v1535 + v2224);
                  v1093 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1537, v1537, 2uLL), v24), vzip1q_s8(vextq_s8(v1537, v1537, 3uLL), v24)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1537, v1537, 1uLL), v24), vzip1q_s8(vextq_s8(v1537, v1537, 4uLL), v24)));
                  v1092 = vshlq_n_s16(v1093, 2uLL);
                  a7 = vzip1q_s8(v1537, v24);
                  v1091 = vshrq_n_s16(vaddq_s16(vaddq_s16(v1092, vaddq_s16(vaddq_s16(a7, vzip1q_s8(vextq_s8(v1537, v1537, 5uLL), v24)), v1093)), v25), 5uLL);
                  *v1091.i8 = vqmovun_s16(v1091);
                  v1093.i64[0] = v24.i64[0];
                  vst2_s8(v1536, v1091);
                  v1534 += 32;
                }

                while (v1534 != 256);
                break;
              case 9:
                sub_27729B614(v2269.i8, 0x20u, v156, v2224, 8);
                sub_27729B614(v2270.i8, 0x20u, (v156 + 2), v2224, 8);
                goto LABEL_650;
              case 10:
                sub_27729B7DC(&v2269, 32, v156, v2224, 8);
                sub_27729B7DC(&v2270, 32, (v156 + 2), v2224, 8);
                goto LABEL_650;
              case 11:
                sub_27729B98C(v2269.i8, 0x20u, v156, v2224, 8);
                sub_27729B98C(v2270.i8, 0x20u, (v156 + 2), v2224, 8);
                goto LABEL_650;
              case 12:
                v1102 = 0;
                v1103 = (v156 - 2);
                do
                {
                  v1104 = *v1103;
                  v1103 = (v1103 + v2224);
                  v1105 = vzip1q_s8(vextq_s8(v1104, v1104, 3uLL), v24);
                  v1106 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1104, v1104, 2uLL), v24), v1105), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1104, v1104, 1uLL), v24), vzip1q_s8(vextq_s8(v1104, v1104, 4uLL), v24)));
                  *(&v2269 + v1102) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1106, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1104, v24), vzip1q_s8(vextq_s8(v1104, v1104, 5uLL), v24)), v1106)), v25), 5uLL))), v1105);
                  v1102 += 32;
                }

                while (v1102 != 256);
                v1107 = 0;
                v1108 = (v156 + 6);
                v1086 = v159;
                v1087 = &v2231->i8[v33];
                v1088 = v2196;
                v1089 = v2264;
                do
                {
                  v1109 = *v1108;
                  v1108 = (v1108 + v2224);
                  v1092 = vzip1q_s8(vextq_s8(v1109, v1109, 3uLL), v24);
                  v1093 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1109, v1109, 2uLL), v24), v1092), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1109, v1109, 1uLL), v24), vzip1q_s8(vextq_s8(v1109, v1109, 4uLL), v24)));
                  a7 = vshlq_n_s16(v1093, 2uLL);
                  a8 = vzip1q_s8(v1109, v24);
                  v1091 = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(a7, vaddq_s16(vaddq_s16(a8, vzip1q_s8(vextq_s8(v1109, v1109, 5uLL), v24)), v1093)), v25), 5uLL))), v1092);
                  *(&v2270 + v1107) = v1091;
                  v1107 += 32;
                }

                while (v1107 != 256);
                break;
              case 13:
                v1136 = v156;
                v1137 = v2224;
                v1138 = 2;
                goto LABEL_648;
              case 14:
                sub_27729C39C(v2269.i8, 0x20u, v156, v2224);
                sub_27729C39C(v2270.i8, 0x20u, (v156 + 2), v2224);
                goto LABEL_650;
              case 15:
                v1136 = v156;
                v1137 = v2224;
                v1138 = 3;
LABEL_648:
                v1183 = 3;
LABEL_649:
                sub_27729AF04(v2269.i8, v1136, v1137, 8, v1138, v1183);
LABEL_650:
                v1086 = v159;
                v1087 = &v2231->i8[v33];
                v1088 = v2196;
                v1089 = v2264;
                break;
              default:
                v1085 = 0;
                v1086 = v159;
                v1087 = &v2231->i8[v33];
                v1088 = v2196;
                v1089 = v2264;
                do
                {
                  v1090 = &v2269.i8[v1085];
                  v1091 = *v156;
                  v156 = (v156 + v2224);
                  v1092 = vzip2q_s8(v1091, v24);
                  v1093.i64[0] = v24.i64[0];
                  vst2_s8(v1090, v1091);
                  v1090 += 16;
                  *v1090 = v1092;
                  v1085 += 32;
                }

                while (v1085 != 256);
                break;
            }

            sub_277291E64(&v2265, &v2269, &v1087[v1088], v2257, a2, v1086, 4, v2259, v1091, *v1093.i64, *v1092.i64, a7, *a8.i64, *a9.i64, a10, v1089);
            if (v2185 == 64)
            {
              __asm { PRFM            #0, [X20] }

              v1341 = 5;
              v1320 = v2272;
              v1313 = v2192;
              v1317 = v2263;
              v1314.i64[0] = 0x20002000200020;
              v1314.i64[1] = 0x20002000200020;
              v1315 = v2189;
              v1316 = v2187;
              do
              {
                v1342 = _X20;
                _X20 = (_X20 + v2253);
                __asm { PRFM            #0, [X20] }

                v1344 = vextq_s8(*v1342, *v1342, 2uLL);
                v1344.i16[7] = v1342[1].i16[0];
                v1345 = vrhaddq_u8(*v1342, v1344);
                v1344.i64[0] = v2263.i64[0];
                v1320[3] = vzip2q_s8(v1345, v2263);
                v1320 += 2;
                vst2_s8(v1320->i8, *(&v1344 - 8));
                --v1341;
              }

              while (v1341 > 2);
              v1346 = vextq_s8(*_X20, *_X20, 2uLL);
              v1346.i16[7] = _X20[1].i16[0];
              v1339 = vrhaddq_u8(*_X20, v1346);
            }

            else
            {
              v1313 = v2192;
              v1314.i64[0] = 0x20002000200020;
              v1314.i64[1] = 0x20002000200020;
              v1315 = v2189;
              v1316 = v2187;
              if (v2185 != 4)
              {
                v1317 = v2263;
                if (v2185)
                {
                  v1350 = 0;
                  v1351 = v2200 - (8 * v2216 + 8 * v2222) + 64;
                  v1352 = v2263;
                  v1352.i32[0] = v1351 | (v1351 << 16);
                  v1353 = vqtbl1q_s8(v1352, xmmword_2773B3DF0);
                  v1354 = v2263;
                  v1354.i32[0] = (8 * v2216 - v2200) | ((8 * v2216 - v2200) << 16);
                  v1355 = vqtbl1q_s8(v1354, xmmword_2773B3DF0);
                  v1356 = v2263;
                  v1356.i32[0] = (8 * v2222 - v2200) | ((8 * v2222 - v2200) << 16);
                  v1357 = vqtbl1q_s8(v1356, xmmword_2773B3DF0);
                  v2278 = v1353;
                  v2279 = v1355;
                  v2280 = v1357;
                  v2281 = v2184;
                  _X10 = &_X20->i8[v2253];
                  __asm { PRFM            #0, [X10] }

                  v1312.i64[0] = _X20->i64[0];
                  v1311 = xmmword_2773B3E00;
                  v1360 = vqtbl1q_s8(v1312, xmmword_2773B3E00);
                  v1360.i16[3] = _X20->i16[4];
                  v1361 = vzip1q_s8(v1360, v2263);
                  v1362 = vzip1q_s8(v1312, v2263);
                  v1363 = v2214;
                  if (v2214 <= -16)
                  {
                    v1363 = -16;
                  }

                  if (v1363 >= v146)
                  {
                    v1364 = v146;
                  }

                  else
                  {
                    v1364 = v1363;
                  }

                  v1365 = v1364 + v2205;
                  v1366 = (v2244 + v1365 + v2253 + 8);
                  _X15 = v2244 + v1365 + 2 * v2253;
                  do
                  {
                    __asm { PRFM            #0, [X15] }

                    v1369 = vmlaq_s16(vmulq_s16(v1355, v1361), v1353, v1362);
                    v1361.i64[0] = *(v1366 - 1);
                    v1362 = vzip1q_s8(v1361, v2263);
                    v1370 = vqtbl1q_s8(v1361, xmmword_2773B3E00);
                    v1370.i16[3] = *v1366;
                    v1366 = (v1366 + v2253);
                    v1361 = vzip1q_s8(v1370, v2263);
                    v2273[v1350] = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1369, v1357, v1362), v2184, v1361), v1314), 6uLL);
                    v1350 += 2;
                    _X15 += v2253;
                  }

                  while ((v1350 * 16) != 128);
                  v1371 = 0;
                  _X11 = &_X20->i64[1] + v2253;
                  __asm { PRFM            #0, [X11] }

                  v1362.i64[0] = _X20->i64[1];
                  v1374 = vqtbl1q_s8(v1362, xmmword_2773B3E00);
                  v1374.i16[3] = _X20[1].i16[0];
                  v1375 = vzip1q_s8(v1374, v2263);
                  v1312 = vzip1q_s8(v1362, v2263);
                  if (v1363 >= v146)
                  {
                    v1363 = v146;
                  }

                  v1376 = v2244 + v2205 + v1363;
                  v1349 = v2248 * v2243;
                  do
                  {
                    _X12 = v1376 + 2 * v2253 + 8;
                    v1376 += v2253;
                    __asm { PRFM            #0, [X12] }

                    v1379 = vmlaq_s16(vmulq_s16(v1355, v1375), v1353, v1312);
                    v1375.i64[0] = *(v1376 + 8);
                    v1312 = vzip1q_s8(v1375, v2263);
                    v1380 = vqtbl1q_s8(v1375, xmmword_2773B3E00);
                    v1380.i16[3] = *(v1376 + 16);
                    v1375 = vzip1q_s8(v1380, v2263);
                    v2274[v1371] = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1379, v1357, v1312), v2184, v1375), v1314), 6uLL);
                    v1371 += 2;
                  }

                  while ((v1371 * 16) != 128);
LABEL_680:
                  if (v2186 == 64)
                  {
                    __asm { PRFM            #0, [X25] }

                    v1403 = 5;
                    v1383 = v2275;
                    do
                    {
                      v1404 = _X25;
                      _X25 = (_X25 + v2235);
                      __asm { PRFM            #0, [X25] }

                      v1406 = vextq_s8(*v1404, *v1404, 2uLL);
                      v1406.i16[7] = v1404[1].i16[0];
                      v1407 = vrhaddq_u8(*v1404, v1406);
                      v1406.i64[0] = v1317.i64[0];
                      v1387 = vzip2q_s8(v1407, v1317);
                      v1383[3] = v1387;
                      v1383 += 2;
                      vst2_s8(v1383->i8, *(&v1406 - 8));
                      --v1403;
                    }

                    while (v1403 > 2);
                    v1408 = vextq_s8(*_X25, *_X25, 2uLL);
                    v1408.i16[7] = _X25[1].i16[0];
                    v1401 = vrhaddq_u8(*_X25, v1408);
                  }

                  else
                  {
                    if (v2186 != 4)
                    {
                      if (v2186)
                      {
                        v1410 = 0;
                        v1411 = v1349 - (8 * v2243 + 8 * v2248) + 64;
                        v1412 = v1317;
                        v1412.i32[0] = v1411 | (v1411 << 16);
                        v1390 = vqtbl1q_s8(v1412, xmmword_2773B3DF0);
                        v1413 = v1317;
                        v1413.i32[0] = (8 * v2243 - v1349) | ((8 * v2243 - v1349) << 16);
                        v1389 = vqtbl1q_s8(v1413, xmmword_2773B3DF0);
                        v1414 = v1317;
                        v1414.i32[0] = (8 * v2248 - v1349) | ((8 * v2248 - v1349) << 16);
                        v1387 = vqtbl1q_s8(v1414, xmmword_2773B3DF0);
                        v2282 = v1390;
                        v2283 = v1389;
                        v2284 = v1387;
                        v2285 = v1316;
                        _X8 = &_X25->i8[v2235];
                        __asm { PRFM            #0, [X8] }

                        v1312.i64[0] = _X25->i64[0];
                        v1311 = xmmword_2773B3E00;
                        v1417 = vqtbl1q_s8(v1312, xmmword_2773B3E00);
                        v1418 = -16;
                        if (v150 > -16)
                        {
                          v1418 = v150;
                        }

                        if (v1418 >= v1315)
                        {
                          v1419 = v1315;
                        }

                        else
                        {
                          v1419 = v1418;
                        }

                        v1420 = v1313 + v2211 + v1419;
                        v1417.i16[3] = _X25->i16[4];
                        v1421 = vzip1q_s8(v1417, v1317);
                        v1422 = vzip1q_s8(v1312, v1317);
                        do
                        {
                          _X15 = v1420 + 2 * v2235;
                          v1420 += v2235;
                          __asm { PRFM            #0, [X15] }

                          v1425 = vmlaq_s16(vmulq_s16(v1389, v1421), v1390, v1422);
                          v1421.i64[0] = *v1420;
                          v1422 = vzip1q_s8(v1421, v1317);
                          v1426 = vqtbl1q_s8(v1421, xmmword_2773B3E00);
                          v1426.i16[3] = *(v1420 + 8);
                          v1421 = vzip1q_s8(v1426, v1317);
                          v2276[v1410] = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1425, v1387, v1422), v1316, v1421), v1314), 6uLL);
                          v1410 += 2;
                        }

                        while ((v1410 * 16) != 128);
                        v1427 = 0;
                        _X11 = &_X25->i64[1] + v2235;
                        __asm { PRFM            #0, [X11] }

                        v1422.i64[0] = _X25->i64[1];
                        v1430 = vqtbl1q_s8(v1422, xmmword_2773B3E00);
                        v1430.i16[3] = _X25[1].i16[0];
                        v1431 = vzip1q_s8(v1430, v1317);
                        v1432 = vzip1q_s8(v1422, v1317);
                        if (v1418 >= v1315)
                        {
                          v1418 = v1315;
                        }

                        v1433 = v1313 + v2211 + v1418;
                        do
                        {
                          _X12 = v1433 + 2 * v2235 + 8;
                          v1433 += v2235;
                          __asm { PRFM            #0, [X12] }

                          v1436 = vmlaq_s16(vmulq_s16(v1389, v1431), v1390, v1432);
                          v1431.i64[0] = *(v1433 + 8);
                          v1432 = vzip1q_s8(v1431, v1317);
                          v1437 = vqtbl1q_s8(v1431, xmmword_2773B3E00);
                          v1437.i16[3] = *(v1433 + 16);
                          v1431 = vzip1q_s8(v1437, v1317);
                          v2277[v1427] = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1436, v1387, v1432), v1316, v1431), v1314), 6uLL);
                          v1427 += 2;
                        }

                        while ((v1427 * 16) != 128);
                        goto LABEL_709;
                      }

                      __asm { PRFM            #0, [X25] }

                      v1382 = 5;
                      v1383 = v2275;
                      do
                      {
                        v1384 = _X25;
                        _X25 = (_X25 + v2235);
                        __asm { PRFM            #0, [X25] }

                        v1386 = *v1384;
                        v1387 = vzip2q_s8(*v1384, v1317);
                        v1383[3] = v1387;
                        v1383 += 2;
                        v1388 = v1317.i64[0];
                        vst2_s8(v1383->i8, v1386);
                        --v1382;
                      }

                      while (v1382 > 2);
                      v1389 = *_X25;
                      v1390 = vzip2q_s8(*_X25, v1317);
                      v1391 = v1383[2].i8;
                      v1387.i64[0] = v1317.i64[0];
                      vst2_s8(v1391, *(&v1387 - 8));
LABEL_697:
                      v1383[3] = v1390;
LABEL_709:
                      sub_27729222C(v2273, v2276, &v2195[v2217], v2256, a3, v162, 2, v2259, v1390, *v1389.i64, v1387, v1311, v1089);
                      goto LABEL_986;
                    }

                    _X8 = &_X25->i8[v2235];
                    __asm { PRFM            #0, [X8] }

                    v1394 = *_X25;
                    v1395 = v150;
                    if (v150 <= -16)
                    {
                      v1395 = -16;
                    }

                    if (v1395 >= v1315)
                    {
                      v1395 = v1315;
                    }

                    v1396 = (v1313 + v2211 + v1395);
                    v1397 = 5;
                    v1383 = v2275;
                    do
                    {
                      _X13 = &v1396->i8[2 * v2235];
                      v1396 = (v1396 + v2235);
                      __asm { PRFM            #0, [X13] }

                      v1400 = *v1396;
                      v1387 = vrhaddq_u8(v1394, *v1396);
                      v1311.i64[0] = v1317.i64[0];
                      v1383[3] = vzip2q_s8(v1387, v1317);
                      v1383 += 2;
                      vst2_s8(v1383->i8, *(&v1311 - 8));
                      --v1397;
                      v1394 = v1400;
                    }

                    while (v1397 > 2);
                    v1401 = vrhaddq_u8(v1400, *(v1396 + v2235));
                  }

                  v1409 = v1383[2].i8;
                  v1389.i64[0] = v1317.i64[0];
                  vst2_s8(v1409, *(&v1389 - 8));
                  v1390 = vzip2q_s8(v1401, v1317);
                  goto LABEL_697;
                }

                __asm { PRFM            #0, [X20] }

                v1319 = 5;
                v1320 = v2272;
                do
                {
                  v1321 = _X20;
                  _X20 = (_X20 + v2253);
                  __asm { PRFM            #0, [X20] }

                  v1323 = *v1321;
                  v1320[3] = vzip2q_s8(*v1321, v2263);
                  v1320 += 2;
                  v1324 = v2263.i64[0];
                  vst2_s8(v1320->i8, v1323);
                  --v1319;
                }

                while (v1319 > 2);
                v1325 = *_X20;
                v1326 = vzip2q_s8(*_X20, v2263);
                v1327 = v1320[2].i8;
                v1328 = v2263.i64[0];
                vst2_s8(v1327, v1325);
LABEL_668:
                v1349 = v2248 * v2243;
                v1320[3] = v1326;
                goto LABEL_680;
              }

              _X8 = &_X20->i8[v2253];
              __asm { PRFM            #0, [X8] }

              v1331 = *_X20;
              v1332 = v2214;
              if (v2214 <= -16)
              {
                v1332 = -16;
              }

              if (v1332 >= v146)
              {
                v1332 = v146;
              }

              v1333 = (v2244 + v2205 + v1332);
              v1334 = 5;
              v1320 = v2272;
              v1317 = v2263;
              do
              {
                _X13 = &v1333->i8[2 * v2253];
                v1333 = (v1333 + v2253);
                __asm { PRFM            #0, [X13] }

                v1337 = *v1333;
                v1338 = vrhaddq_u8(v1331, *v1333);
                v1311.i64[0] = v2263.i64[0];
                v1320[3] = vzip2q_s8(v1338, v2263);
                v1320 += 2;
                vst2_s8(v1320->i8, *(&v1311 - 8));
                --v1334;
                v1331 = v1337;
              }

              while (v1334 > 2);
              v1339 = vrhaddq_u8(v1337, *(v1333 + v2253));
            }

            v1347 = v1320[2].i8;
            v1348 = v1317.i64[0];
            vst2_s8(v1347, v1339);
            v1326 = vzip2q_s8(v1339, v1317);
            goto LABEL_668;
        }

LABEL_988:
        v19 = v2259;
        goto LABEL_989;
      }

      v39 = (v27 - 4);
      v40 = *(*(v2203 + 8 * v39) + 8 * v26[v39 + 8]);
      if (*(v19 + 29))
      {
        v41 = *(v40 + 37);
        if (*(v19 + 30))
        {
          v42 = 2 * (v41 == 0);
        }

        else
        {
          v42 = *(v40 + 37) ? -2 : 0;
        }
      }

      else
      {
        v42 = 0;
        v41 = *(v40 + 37);
      }

      v50 = *(v40 + 64);
      v51 = *(v40 + 72);
      v52 = *(v40 + 168);
      if (v41)
      {
        v53 = *(v40 + 184);
        v50 += v52;
        v51 += v53;
      }

      else
      {
        LODWORD(v53) = *(v40 + 184);
      }

      v54 = &v35[2 * v39];
      v55 = *v54;
      v56 = v54[1];
      v57 = v56 & 3 | (4 * (v55 & 3u));
      v58 = v55 & 7;
      v59 = (v42 + v54[1]);
      v60 = (v42 + *(v54 + 2)) & 7;
      v61 = v60 | (16 * v58);
      v62 = 2 * v52;
      v63 = 2 * v53;
      v64 = *(v40 + 164);
      v65 = *(v40 + 180);
      v66 = *(v40 + 132);
      v67 = *(v40 + 148);
      if (v2260 == 1)
      {
        break;
      }

      v83 = v60 * v58;
      v84 = v24;
      v84.i32[0] = 65537 * (8 - v60) * (8 - v58);
      v85 = v24;
      v85.i32[0] = 65537 * (8 - v60) * v58;
      v86 = v24;
      v86.i32[0] = 65537 * v60 * (8 - v58);
      v87 = v24;
      v87.i32[0] = 65537 * v60 * v58;
      a8 = xmmword_2773B3DF0;
      v23 = vqtbl1q_s8(v84, xmmword_2773B3DF0);
      a5 = vqtbl1q_s8(v85, xmmword_2773B3DF0);
      a6 = vqtbl1q_s8(v86, xmmword_2773B3DF0);
      a7 = vqtbl1q_s8(v87, xmmword_2773B3DF0);
      v2278 = v23;
      v2279 = a5;
      v2280 = a6;
      v2281 = a7;
      if (v30 == 4)
      {
        v196 = v55 >> 2;
        v197 = v2233 + v33 + (v55 >> 2);
        v198 = v2230 + v34 + (v56 >> 2);
        if (v197 <= -18)
        {
          v197 = -18;
        }

        if (v198 <= -18)
        {
          v198 = -18;
        }

        if (v197 >= v64 + 1)
        {
          v199 = v64 + 1;
        }

        else
        {
          v199 = v197;
        }

        if (v198 >= v66 + 1)
        {
          v200 = v66 + 1;
        }

        else
        {
          v200 = v198;
        }

        v201 = (v50 + v199 + v200 * v62);
        v202 = (v196 & 0xFFFFFFFE) + v2233 + v33;
        v203 = (v59 >> 3) + ((v2230 + v34) >> 1);
        if (v202 <= -16)
        {
          v202 = -16;
        }

        if (v203 <= -8)
        {
          v203 = -8;
        }

        if (v202 >= v65 - 2)
        {
          v202 = v65 - 2;
        }

        v204 = v51 + v202;
        v205 = &v2231->i8[v33];
        if (v203 >= v67)
        {
          v203 = v67 - 1;
        }

        v206 = v204 + v203 * v63;
        v207 = (v2257 * v34);
        v208 = (a2[2 * v34].i64 + 2 * v33);
        v209 = &v2232->i8[v33];
        v210 = (a3 + 2 * v33 + 32 * (v34 >> 1));
        v2254 = v208;
        if (v31 == 8)
        {
          v2251 = v209;
          v211 = &v201[2 * v52];
          switch(v57)
          {
            case 1:
              v1803 = sub_27729F23C(&v2265, v201, 2 * v52, v23, a5, *a6.i64, a7, 3.52371676e-294, a9, a10, a11);
              v220 = sub_27729F23C(&v2267, v211, v62, v1803, v1804, v1805, v1806, v1807, v1808, v1809, v1810);
              goto LABEL_1010;
            case 2:
              v1639 = sub_27729F394(&v2265, v201, 2 * v52, *v23.i64, a5, a6, *a7.i64, xmmword_2773B3DF0, a9, a10, a11);
              *v220.i64 = sub_27729F394(&v2267, v211, v62, v1639, v1640, v1641, v1642, v1643, v1644, v1645, v1646);
              goto LABEL_1010;
            case 3:
              v1703 = sub_27729F4D8(&v2265, v201, 2 * v52, v23, a5, *a6.i64, a7, 3.52371676e-294, a9, a10, a11);
              v220 = sub_27729F4D8(&v2267, v211, v62, v1703, v1704, v1705, v1706, v1707, v1708, v1709, v1710);
              goto LABEL_1010;
            case 4:
              sub_27729C91C(&v2265, 8u, v201, 2 * v52);
              v220 = sub_27729C91C(&v2267, 8u, v211, v62);
              goto LABEL_1010;
            case 5:
              *v1993.i64 = sub_27729CAF0(&v2265, 8u, v201, 2 * v52, v23, *a5.i64, *a6.i64, *a7.i64, 3.52371676e-294, a9, a10, a11);
              *v220.i64 = sub_27729CAF0(&v2267, 8u, v211, v62, v1993, v1994, v1995, v1996, v1997, v1998, v1999, v2000);
              goto LABEL_1010;
            case 6:
              *v2018.i64 = sub_27729CDD0(&v2265, 8u, v201, 2 * v52, v23, a5, a6, a7, xmmword_2773B3DF0, a9, a10, a11);
              *v220.i64 = sub_27729CDD0(&v2267, 8u, v211, v62, v2018, v2019, v2020, v2021, v2022, v2023, v2024, v2025);
              goto LABEL_1010;
            case 7:
              v1786 = sub_27729D274(&v2265, 8u, v201, 2 * v52, *v23.i64, *a5.i64, *a6.i64, *a7.i64, 3.52371676e-294, *a9.i64, a10, a11);
              *v220.i64 = sub_27729D274(&v2267, 8u, v211, v62, v1786, v1787, v1788, v1789, v1790, v1791, v1792, v1793);
              goto LABEL_1010;
            case 8:
              sub_27729D550(&v2265, 8u, v201, 2 * v52);
              v220 = sub_27729D550(&v2267, 8u, v211, v62);
              goto LABEL_1010;
            case 9:
              sub_27729D714(&v2265, 8u, v201, 2 * v52);
              *v220.i64 = sub_27729D714(&v2267, 8u, v211, v62);
              goto LABEL_1010;
            case 10:
              *v2026.i64 = sub_27729F62C(&v2265, v201, 2 * v52, v23, a5, a6, a7, xmmword_2773B3DF0, a9, a10, a11);
              *v220.i64 = sub_27729F62C(&v2267, v211, v62, v2026, v2027, v2028, v2029, v2030, v2031, v2032, v2033);
              goto LABEL_1010;
            case 11:
              sub_27729DE6C(&v2265, 8u, v201, 2 * v52);
              *v220.i64 = sub_27729DE6C(&v2267, 8u, v211, v62);
              goto LABEL_1010;
            case 12:
              sub_27729E5C4(&v2265, 8u, v201, 2 * v52);
              v220 = sub_27729E5C4(&v2267, 8u, v211, v62);
              goto LABEL_1010;
            case 13:
              *v2010.i64 = sub_27729E798(&v2265, 8u, v201, 2 * v52, v23, *a5.i64, *a6.i64, *a7.i64, 3.52371676e-294, a9, a10, a11);
              *v220.i64 = sub_27729E798(&v2267, 8u, v211, v62, v2010, v2011, v2012, v2013, v2014, v2015, v2016, v2017);
              goto LABEL_1010;
            case 14:
              *v1550.i64 = sub_27729EA7C(&v2265, 8u, v201, 2 * v52, v23, a5, a6, a7, xmmword_2773B3DF0, a9, a10, a11);
              *v220.i64 = sub_27729EA7C(&v2267, 8u, v211, v62, v1550, v1551, v1552, v1553, v1554, v1555, v1556, v1557);
              goto LABEL_1010;
            case 15:
              v1684 = sub_27729EF20(&v2265, 8u, v201, 2 * v52, *v23.i64, *a5.i64, *a6.i64, *a7.i64, 3.52371676e-294, *a9.i64, a10, a11);
              *v220.i64 = sub_27729EF20(&v2267, 8u, v211, v62, v1684, v1685, v1686, v1687, v1688, v1689, v1690, v1691);
LABEL_1010:
              v207 = (v2257 * v34);
              v208 = v2254;
              break;
            default:
              v212 = v52;
              v213 = 6 * v52;
              v23.i32[0] = *(v201 + v62);
              a5.i32[0] = v201[v212];
              a6.i32[0] = *v201;
              a7.i32[0] = *(v201 + v213);
              v214.i64[0] = vzip1q_s8(a6, v24).u64[0];
              v215 = vzip1q_s8(v23, v24);
              v216.i64[0] = vzip1q_s8(a5, v24).u64[0];
              v217 = vzip1q_s8(a7, v24);
              v214.i64[1] = v215.i64[0];
              v216.i64[1] = v217.i64[0];
              v2265 = v214;
              v2266 = v216;
              v215.i32[0] = *v211;
              v216.i32[0] = *(v211 + v62);
              v214.i32[0] = v211[v212];
              v217.i32[0] = *(v211 + v213);
              v220.i64[0] = vzip1q_s8(v215, v24).u64[0];
              v218 = vzip1q_s8(v216, v24);
              v221.i64[0] = vzip1q_s8(v214, v24).u64[0];
              v219 = vzip1q_s8(v217, v24);
              v220.i64[1] = v218.i64[0];
              v221.i64[1] = v219.i64[0];
              v2267 = v220;
              v2268 = v221;
              break;
          }

          sub_277294814(&v2265, &v205[v207], v2257, a2, v208, 2, v2259, v2264, v220, v218, v221, v219, a8, a9, a10, a11);
          v2040 = sub_277290798(v2273, v206, 2 * v53, v58, v60, v2034, v2035, v2036, v2037, v2038, v2039);
          v2041 = (4 * v53);
          v19 = v2259;
          *v2047.i64 = sub_277290798(v2274, v206 + v2041, v63, v58, v60, v2040, v2042, v2043, v2044, v2045, v2046);
          *v23.i64 = sub_2772949FC(v2273, &v2251[(v34 >> 1) * v2256], v2256, a3, v210, v2259, v2264, v2047, v2048, v2049, v2050, v2051, v2052, v2053, v2054);
        }

        else
        {
          v19 = v2259;
          switch(v57)
          {
            case 1:
              v1558 = (v2257 * v34);
              v244 = sub_27729F23C(&v2265, v201, 2 * v52, v23, a5, *a6.i64, a7, 3.52371676e-294, a9, a10, a11);
              goto LABEL_1013;
            case 2:
              v1558 = (v2257 * v34);
              *v244.i64 = sub_27729F394(&v2265, v201, 2 * v52, *v23.i64, a5, a6, *a7.i64, xmmword_2773B3DF0, a9, a10, a11);
              goto LABEL_1013;
            case 3:
              v1558 = (v2257 * v34);
              v244 = sub_27729F4D8(&v2265, v201, 2 * v52, v23, a5, *a6.i64, a7, 3.52371676e-294, a9, a10, a11);
              goto LABEL_1013;
            case 4:
              v1558 = (v2257 * v34);
              v244 = sub_27729C91C(&v2265, 8u, v201, 2 * v52);
              goto LABEL_1013;
            case 5:
              v1558 = (v2257 * v34);
              *v244.i64 = sub_27729CAF0(&v2265, 8u, v201, 2 * v52, v23, *a5.i64, *a6.i64, *a7.i64, 3.52371676e-294, a9, a10, a11);
              goto LABEL_1013;
            case 6:
              v1558 = (v2257 * v34);
              *v244.i64 = sub_27729CDD0(&v2265, 8u, v201, 2 * v52, v23, a5, a6, a7, xmmword_2773B3DF0, a9, a10, a11);
              goto LABEL_1013;
            case 7:
              v1558 = (v2257 * v34);
              *v244.i64 = sub_27729D274(&v2265, 8u, v201, 2 * v52, *v23.i64, *a5.i64, *a6.i64, *a7.i64, 3.52371676e-294, *a9.i64, a10, a11);
              goto LABEL_1013;
            case 8:
              v1558 = (v2257 * v34);
              v244 = sub_27729D550(&v2265, 8u, v201, 2 * v52);
              goto LABEL_1013;
            case 9:
              v1558 = (v2257 * v34);
              *v244.i64 = sub_27729D714(&v2265, 8u, v201, 2 * v52);
              goto LABEL_1013;
            case 10:
              v1558 = (v2257 * v34);
              *v244.i64 = sub_27729F62C(&v2265, v201, 2 * v52, v23, a5, a6, a7, xmmword_2773B3DF0, a9, a10, a11);
              goto LABEL_1013;
            case 11:
              v1558 = (v2257 * v34);
              *v244.i64 = sub_27729DE6C(&v2265, 8u, v201, 2 * v52);
              goto LABEL_1013;
            case 12:
              v1558 = (v2257 * v34);
              v244 = sub_27729E5C4(&v2265, 8u, v201, 2 * v52);
              goto LABEL_1013;
            case 13:
              v1558 = (v2257 * v34);
              *v244.i64 = sub_27729E798(&v2265, 8u, v201, 2 * v52, v23, *a5.i64, *a6.i64, *a7.i64, 3.52371676e-294, a9, a10, a11);
              goto LABEL_1013;
            case 14:
              v1558 = (v2257 * v34);
              *v244.i64 = sub_27729EA7C(&v2265, 8u, v201, 2 * v52, v23, a5, a6, a7, xmmword_2773B3DF0, a9, a10, a11);
              goto LABEL_1013;
            case 15:
              v1558 = (v2257 * v34);
              *v244.i64 = sub_27729EF20(&v2265, 8u, v201, 2 * v52, *v23.i64, *a5.i64, *a6.i64, *a7.i64, 3.52371676e-294, *a9.i64, a10, a11);
LABEL_1013:
              v207 = v1558;
              v208 = v2254;
              break;
            default:
              v23.i32[0] = *v201;
              a5.i32[0] = *(v201 + v62);
              a6.i32[0] = v201[v52];
              a7.i32[0] = *(v201 + 6 * v52);
              v244.i64[0] = vzip1q_s8(v23, v24).u64[0];
              v242 = vzip1q_s8(a5, v24);
              v245.i64[0] = vzip1q_s8(a6, v24).u64[0];
              v243 = vzip1q_s8(a7, v24);
              v244.i64[1] = v242.i64[0];
              v245.i64[1] = v243.i64[0];
              v2265 = v244;
              v2266 = v245;
              break;
          }

          sub_277294814(&v2265, &v205[v207], v2257, a2, v208, 1, v2259, v2264, v244, v242, v245, v243, a8, a9, a10, a11);
          *v2061.i64 = sub_277290798(v2273, v206, v63, v58, v60, v2055, v2056, v2057, v2058, v2059, v2060);
          *v23.i8 = sub_277294BB8(v2273, &v209[(v34 >> 1) * v2256], v2256, a3, v210, v2259, v2264, v2061, v2062, v2063, v2064, v2065, v2066);
        }

        v11 = v2262;
        v24 = v2263;
        v25.i64[0] = 0x10001000100010;
        v25.i64[1] = 0x10001000100010;
        goto LABEL_989;
      }

      if (v30 == 8)
      {
        v19 = v2259;
        switch(v31)
        {
          case 4u:
            v285 = v55 >> 2;
            v286 = v2233 + v33 + (v55 >> 2);
            v287 = v2230 + v34 + (v56 >> 2);
            if (v286 <= -18)
            {
              v286 = -18;
            }

            if (v287 <= -18)
            {
              v287 = -18;
            }

            if (v286 >= v64 + 1)
            {
              v288 = v64 + 1;
            }

            else
            {
              v288 = v286;
            }

            if (v287 >= v66 + 1)
            {
              v289 = v66 + 1;
            }

            else
            {
              v289 = v287;
            }

            v290 = (v50 + v288 + v289 * v62);
            v291 = (v285 & 0xFFFFFFFE) + v2233 + v33;
            v292 = (v59 >> 3) + ((v2230 + v34) >> 1);
            if (v291 <= -16)
            {
              v291 = -16;
            }

            if (v292 <= -8)
            {
              v292 = -8;
            }

            if (v291 >= v65 - 2)
            {
              v291 = v65 - 2;
            }

            if (v292 >= v67)
            {
              v292 = v67 - 1;
            }

            v293 = (v51 + v291 + v292 * v63);
            v294 = &v2231->i8[v33];
            v295 = a2[2 * v34].i64 + 2 * v33;
            v296 = &v2232->i8[v33];
            v297 = (a3 + 2 * v33 + 32 * (v34 >> 1));
            switch(v57)
            {
              case 1:
                sub_27729AC20(&v2265, 0x10u, v290, v62, 4);
                break;
              case 2:
                sub_27729ACE8(v2265.i8, 0x10u, v290, v62, 4);
                break;
              case 3:
                sub_27729ADA4(&v2265, 0x10u, v290, v62, 4);
                break;
              case 4:
                sub_27729C91C(&v2265, 0x10u, v290, v62);
                v300 = sub_27729C91C(&v2265.i64[1], 0x10u, v290->i64 + 4, v62);
                break;
              case 5:
                *v2139.i64 = sub_27729CAF0(&v2265, 0x10u, v290, v62, v23, *a5.i64, *a6.i64, *a7.i64, 3.52371676e-294, a9, a10, a11);
                *v300.i64 = sub_27729CAF0(&v2265.i64[1], 0x10u, v290->i64 + 4, v62, v2139, v2140, v2141, v2142, v2143, v2144, v2145, v2146);
                break;
              case 6:
                *v2155.i64 = sub_27729CDD0(&v2265, 0x10u, v290, v62, v23, a5, a6, a7, xmmword_2773B3DF0, a9, a10, a11);
                *v300.i64 = sub_27729CDD0(&v2265.i64[1], 0x10u, v290->i64 + 4, v62, v2155, v2156, v2157, v2158, v2159, v2160, v2161, v2162);
                break;
              case 7:
                v2101 = sub_27729D274(&v2265, 0x10u, v290, v62, *v23.i64, *a5.i64, *a6.i64, *a7.i64, 3.52371676e-294, *a9.i64, a10, a11);
                *v300.i64 = sub_27729D274(&v2265.i64[1], 0x10u, v290->i64 + 4, v62, v2101, v2102, v2103, v2104, v2105, v2106, v2107, v2108);
                break;
              case 8:
                sub_27729D550(&v2265, 0x10u, v290, v62);
                v300 = sub_27729D550(&v2265.i64[1], 0x10u, v290->i64 + 4, v62);
                break;
              case 9:
                sub_27729D714(&v2265, 0x10u, v290, v62);
                *v300.i64 = sub_27729D714(&v2265.i64[1], 0x10u, v290->i64 + 4, v62);
                break;
              case 10:
                sub_27729B7DC(&v2265, 16, v290, v62, 4);
                break;
              case 11:
                sub_27729DE6C(&v2265, 0x10u, v290, v62);
                *v300.i64 = sub_27729DE6C(&v2265.i64[1], 0x10u, v290->i64 + 4, v62);
                break;
              case 12:
                sub_27729E5C4(&v2265, 0x10u, v290, v62);
                v300 = sub_27729E5C4(&v2265.i64[1], 0x10u, v290->i64 + 4, v62);
                break;
              case 13:
                *v2147.i64 = sub_27729E798(&v2265, 0x10u, v290, v62, v23, *a5.i64, *a6.i64, *a7.i64, 3.52371676e-294, a9, a10, a11);
                *v300.i64 = sub_27729E798(&v2265.i64[1], 0x10u, v290->i64 + 4, v62, v2147, v2148, v2149, v2150, v2151, v2152, v2153, v2154);
                break;
              case 14:
                *v2072.i64 = sub_27729EA7C(&v2265, 0x10u, v290, v62, v23, a5, a6, a7, xmmword_2773B3DF0, a9, a10, a11);
                *v300.i64 = sub_27729EA7C(&v2265.i64[1], 0x10u, v290->i64 + 4, v62, v2072, v2073, v2074, v2075, v2076, v2077, v2078, v2079);
                break;
              case 15:
                v2090 = sub_27729EF20(&v2265, 0x10u, v290, v62, *v23.i64, *a5.i64, *a6.i64, *a7.i64, 3.52371676e-294, *a9.i64, a10, a11);
                *v300.i64 = sub_27729EF20(&v2265.i64[1], 0x10u, v290->i64 + 4, v62, v2090, v2091, v2092, v2093, v2094, v2095, v2096, v2097);
                break;
              default:
                v298 = 0;
                do
                {
                  v299 = &v2265.i8[v298];
                  v300 = *v290;
                  v290 = (v290 + v62);
                  a5.i64[0] = v24.i64[0];
                  vst2_s8(v299, *(&a5 - 8));
                  v298 += 16;
                }

                while (v298 != 64);
                break;
            }

            v2164 = v295;
            v19 = v2259;
            sub_277294318(&v2265, &v294[(v2257 * v34)], v2257, a2, v2164, 1, v2259, v2264, v300, a5, a6);
            v2165 = sub_2772906A8(v2273, v293, v63, &v2278);
            *v23.i8 = sub_2772946CC(v2273, &v296[(v34 >> 1) * v2256], v2256, a3, v297, v2259, v2264, v2165, v2166, v2167, v2168, v2169);
            goto LABEL_737;
          case 8u:
            v258 = v55 >> 2;
            v259 = v2233 + v33 + (v55 >> 2);
            v260 = v2230 + v34 + (v56 >> 2);
            if (v259 <= -18)
            {
              v259 = -18;
            }

            if (v260 <= -18)
            {
              v260 = -18;
            }

            if (v259 >= v64 + 1)
            {
              v261 = v64 + 1;
            }

            else
            {
              v261 = v259;
            }

            if (v260 >= v66 + 1)
            {
              v262 = v66 + 1;
            }

            else
            {
              v262 = v260;
            }

            v263 = (v50 + v261 + v262 * v62);
            v264 = (v258 & 0xFFFFFFFE) + v2233 + v33;
            v265 = (v59 >> 3) + ((v2230 + v34) >> 1);
            if (v264 <= -16)
            {
              v266 = -16;
            }

            else
            {
              v266 = (v258 & 0xFFFFFFFE) + v2233 + v33;
            }

            if (v265 <= -8)
            {
              v265 = -8;
            }

            v267 = v65 - 2;
            if (v266 >= v65 - 2)
            {
              v266 = v65 - 2;
            }

            v268 = v51 + v266;
            if (v265 >= v67)
            {
              v265 = v67 - 1;
            }

            v269 = v268 + v265 * v63;
            v270 = &v2231->i8[v33];
            v271 = a2[2 * v34].i64 + 2 * v33;
            v2255 = &v2232->i8[v33];
            v2249 = v265 * v63;
            v272 = a3 + 2 * v33 + 32 * (v34 >> 1);
            switch(v57)
            {
              case 1:
                v2089 = v62;
                v2071 = v270;
                sub_27729AC20(&v2265, 0x10u, v263, v2089, 8);
                goto LABEL_1054;
              case 2:
                v2084 = v62;
                v2071 = v270;
                sub_27729ACE8(v2265.i8, 0x10u, v263, v2084, 8);
                goto LABEL_1054;
              case 3:
                v2088 = v62;
                v2071 = v270;
                sub_27729ADA4(&v2265, 0x10u, v263, v2088, 8);
                goto LABEL_1054;
              case 4:
                v2081 = v62;
                v2071 = v270;
                sub_27729AE6C(&v2265, 0x10u, v263, v2081, 8);
                goto LABEL_1054;
              case 5:
                v2085 = v263;
                v2086 = v62;
                v2087 = 2;
                goto LABEL_1049;
              case 6:
                v2136 = v62;
                v2071 = v270;
                sub_27729BFC4(v2265.i8, 0x10u, v263, v2136);
                goto LABEL_1054;
              case 7:
                v2085 = v263;
                v2086 = v62;
                v2087 = 3;
LABEL_1049:
                v2109 = 2;
                goto LABEL_1053;
              case 8:
                v2138 = v62;
                v2071 = v270;
                sub_27729B588(v2265.i8, 0x10u, v263, v2138, 8, v23);
                goto LABEL_1054;
              case 9:
                v2083 = v62;
                v2071 = v270;
                sub_27729B614(v2265.i8, 0x10u, v263, v2083, 8);
                goto LABEL_1054;
              case 10:
                v2137 = v62;
                v2071 = v270;
                sub_27729B7DC(&v2265, 16, v263, v2137, 8);
                goto LABEL_1054;
              case 11:
                v2080 = v62;
                v2071 = v270;
                sub_27729B98C(v2265.i8, 0x10u, v263, v2080, 8);
                goto LABEL_1054;
              case 12:
                v2082 = v62;
                v2071 = v270;
                sub_27729BB54(&v2265, 0x10u, v263, v2082, 8);
                goto LABEL_1054;
              case 13:
                v2085 = v263;
                v2086 = v62;
                v2087 = 2;
                goto LABEL_1052;
              case 14:
                v2070 = v62;
                v2071 = v270;
                sub_27729C39C(v2265.i8, 0x10u, v263, v2070);
                goto LABEL_1054;
              case 15:
                v2085 = v263;
                v2086 = v62;
                v2087 = 3;
LABEL_1052:
                v2109 = 3;
LABEL_1053:
                v2071 = v270;
                sub_27729C774(v2265.i8, v2085, v2086, 8, v2087, v2109);
LABEL_1054:
                v270 = v2071;
                break;
              default:
                v273 = 0;
                do
                {
                  v274 = &v2265.i8[v273];
                  v275 = *v263;
                  v263 = (v263 + v62);
                  a5.i64[0] = v24.i64[0];
                  vst2_s8(v274, *(&a5 - 8));
                  v273 += 16;
                }

                while (v273 != 128);
                break;
            }

            v2110 = v271;
            v19 = v2259;
            v2111 = v2264;
            sub_277294318(&v2265, &v270[(v2257 * v34)], v2257, a2, v2110, 2, v2259, v2264, v275, a5, a6);
            v2112 = 0;
            _X9 = v269 + v63;
            __asm { PRFM            #0, [X9] }

            v2115.i64[0] = *v269;
            v2116 = xmmword_2773B3E00;
            v2117 = vqtbl1q_s8(v2115, xmmword_2773B3E00);
            v2117.i16[3] = *(v269 + 8);
            v2118 = vzip1q_s8(v2117, v2263);
            v2119 = vzip1q_s8(v2115, v2263);
            v2120 = v2278;
            v2121 = v2279;
            v2122 = v2280;
            v2123 = v2281;
            v2124 = v264;
            if (v264 <= -16)
            {
              v2124 = -16;
            }

            if (v2124 >= v267)
            {
              v2124 = v267;
            }

            v2125 = v51 + v2249 + v2124;
            v2126.i64[0] = 0x20002000200020;
            v2126.i64[1] = 0x20002000200020;
            do
            {
              _X12 = v2125 + 2 * v63;
              v2125 += v63;
              __asm { PRFM            #0, [X12] }

              v2129 = vmlaq_s16(vmulq_s16(v2121, v2118), v2120, v2119);
              v2118.i64[0] = *v2125;
              v2119 = vzip1q_s8(v2118, v2263);
              v2130 = vqtbl1q_s8(v2118, xmmword_2773B3E00);
              v2130.i16[3] = *(v2125 + 8);
              v2118 = vzip1q_s8(v2130, v2263);
              v2273[v2112++] = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v2129, v2122, v2119), v2123, v2118), v2126), 6uLL);
            }

            while ((v2112 * 16) != 64);
            v2131 = &v2255[(v34 >> 1) * v2256];
            v2132 = v2256;
            v2133 = a3;
            v2134 = v272;
            v2135 = 1;
LABEL_1083:
            sub_2772944F0(v2273, v2131, v2132, v2133, v2134, v2135, v19, v2111, v2116, *v2120.i64, v2121, v2122, v2119);
LABEL_737:
            v11 = v2262;
            v24 = v2263;
            v25.i64[0] = 0x10001000100010;
            v25.i64[1] = 0x10001000100010;
LABEL_738:
            if (v2260 == 1)
            {
              return;
            }

            break;
          case 0x10u:
            v180 = v55 >> 2;
            v181 = v2233 + v33 + (v55 >> 2);
            v182 = v2230 + (v56 >> 2);
            if (v181 <= -18)
            {
              v181 = -18;
            }

            if (v182 <= -18)
            {
              v182 = -18;
            }

            if (v181 >= v64 + 1)
            {
              v183 = v64 + 1;
            }

            else
            {
              v183 = v181;
            }

            if (v182 >= v66 + 1)
            {
              v184 = v66 + 1;
            }

            else
            {
              v184 = v182;
            }

            v185 = (v50 + v183 + v184 * v62);
            v186 = (v180 & 0xFFFFFFFE) + v2233 + v33;
            v187 = v2188 + (v59 >> 3);
            if (v186 <= -16)
            {
              v188 = -16;
            }

            else
            {
              v188 = (v180 & 0xFFFFFFFE) + v2233 + v33;
            }

            if (v187 <= -8)
            {
              v187 = -8;
            }

            v189 = v65 - 2;
            if (v188 >= v65 - 2)
            {
              v188 = v65 - 2;
            }

            if (v187 >= v67)
            {
              v187 = v67 - 1;
            }

            v190 = v187 * v63;
            v191 = v51 + v188 + v190;
            v192 = v190;
            switch(v57)
            {
              case 1:
                sub_27729AC20(&v2265, 0x10u, v185, v62, 16);
                break;
              case 2:
                sub_27729ACE8(v2265.i8, 0x10u, v185, v62, 16);
                break;
              case 3:
                sub_27729ADA4(&v2265, 0x10u, v185, v62, 16);
                break;
              case 4:
                sub_27729AE6C(&v2265, 0x10u, v185, v62, 16);
                break;
              case 5:
                v2098 = v185;
                v2099 = v62;
                v2100 = 2;
                goto LABEL_1069;
              case 6:
                sub_27729B1B0(v2265.i8, 0x10u, v185, v62);
                break;
              case 7:
                v2098 = v185;
                v2099 = v62;
                v2100 = 3;
LABEL_1069:
                v2163 = 2;
                goto LABEL_1075;
              case 8:
                sub_27729B588(v2265.i8, 0x10u, v185, v62, 16, v23);
                break;
              case 9:
                sub_27729B614(v2265.i8, 0x10u, v185, v62, 16);
                break;
              case 10:
                sub_27729B7DC(&v2265, 16, v185, v62, 16);
                break;
              case 11:
                sub_27729B98C(v2265.i8, 0x10u, v185, v62, 16);
                break;
              case 12:
                sub_27729BB54(&v2265, 0x10u, v185, v62, 16);
                break;
              case 13:
                v2098 = v185;
                v2099 = v62;
                v2100 = 2;
                goto LABEL_1074;
              case 14:
                sub_27729BBEC(v2265.i8, 0x10u, v185, v62);
                break;
              case 15:
                v2098 = v185;
                v2099 = v62;
                v2100 = 3;
LABEL_1074:
                v2163 = 3;
LABEL_1075:
                sub_27729C774(v2265.i8, v2098, v2099, 16, v2100, v2163);
                break;
              default:
                v193 = 0;
                do
                {
                  v194 = &v2265.i8[v193];
                  v195 = *v185;
                  v185 = (v185 + v62);
                  a5.i64[0] = v24.i64[0];
                  vst2_s8(v194, *(&a5 - 8));
                  v193 += 16;
                }

                while (v193 != 256);
                break;
            }

            v2111 = v2264;
            sub_277294318(&v2265, &v2231->i8[v33], v2257, a2, (a2 + 2 * v33), 4, v2259, v2264, v195, a5, a6);
            v2170 = 0;
            _X9 = v191 + v63;
            __asm { PRFM            #0, [X9] }

            v2173.i64[0] = *v191;
            v2116 = xmmword_2773B3E00;
            v2174 = vqtbl1q_s8(v2173, xmmword_2773B3E00);
            v2174.i16[3] = *(v191 + 8);
            v2175 = vzip1q_s8(v2174, v2263);
            v2119 = vzip1q_s8(v2173, v2263);
            v2120 = v2278;
            v2121 = v2279;
            v2122 = v2280;
            v2176 = v2281;
            v2177 = v186;
            if (v186 <= -16)
            {
              v2177 = -16;
            }

            if (v2177 >= v189)
            {
              v2177 = v189;
            }

            v2178 = v51 + v192 + v2177;
            v2179.i64[0] = 0x20002000200020;
            v2179.i64[1] = 0x20002000200020;
            do
            {
              _X12 = v2178 + 2 * v63;
              v2178 += v63;
              __asm { PRFM            #0, [X12] }

              v2182 = vmlaq_s16(vmulq_s16(v2121, v2175), v2120, v2119);
              v2175.i64[0] = *v2178;
              v2119 = vzip1q_s8(v2175, v2263);
              v2183 = vqtbl1q_s8(v2175, xmmword_2773B3E00);
              v2183.i16[3] = *(v2178 + 8);
              v2175 = vzip1q_s8(v2183, v2263);
              v2273[v2170++] = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v2182, v2122, v2119), v2176, v2175), v2179), 6uLL);
            }

            while ((v2170 * 16) != 128);
            v2131 = &v2232->i8[v33];
            v2134 = (a3 + 2 * v33);
            v2132 = v2256;
            v2133 = a3;
            v2135 = 2;
            v19 = v2259;
            goto LABEL_1083;
        }
      }

      else
      {
        v19 = v2259;
        if (v30 == 16)
        {
          v88 = v55 >> 2;
          v89 = v2233 + (v55 >> 2);
          v90 = v2230 + v34 + (v56 >> 2);
          if (v89 <= -18)
          {
            v89 = -18;
          }

          if (v90 <= -18)
          {
            v90 = -18;
          }

          if (v89 >= v64 + 1)
          {
            v91 = v64 + 1;
          }

          else
          {
            v91 = v89;
          }

          if (v90 >= v66 + 1)
          {
            v92 = v66 + 1;
          }

          else
          {
            v92 = v90;
          }

          v93 = v91 + v92 * v62;
          v94 = (v50 + v93);
          v95 = (v88 & 0xFFFFFFFE) + v2233;
          v96 = (v59 >> 3) + ((v2230 + v34) >> 1);
          if (v95 <= -16)
          {
            v95 = -16;
          }

          if (v96 <= -8)
          {
            v96 = -8;
          }

          v97 = v65 - 2;
          if (v95 >= v97)
          {
            v95 = v97;
          }

          if (v96 >= v67)
          {
            v96 = v67 - 1;
          }

          v2245 = v96 * v63;
          v2247 = v95;
          _X24 = (v51 + v95 + v2245);
          v99 = (v2257 * v34);
          v100 = &a2[2 * v34];
          v2242 = a7;
          switch(v57)
          {
            case 1:
              v733 = 0;
              v734 = v62;
              v735 = (v94 - 4 * v52);
              v736 = (v735 + v62);
              v737 = (v736 + v62);
              v738 = (v737 + v62);
              v739 = vzip1q_s8(*(v738 + v62), v24);
              v740 = vzip1q_s8(*v738, v24);
              v741 = vzip1q_s8(*v737, v24);
              v742 = vzip1q_s8(*v736, v24);
              v743 = vzip1q_s8(*v735, v24);
              v744 = 5 * v62;
              v745 = (v50 + v744 + v91 + 2 * v52 * v92 - 4 * v52);
              do
              {
                v746 = v742;
                v742 = v741;
                v741 = v740;
                v740 = v739;
                v739 = vzip1q_s8(*v745, v24);
                v747 = vsubq_s16(vshlq_n_s16(vaddq_s16(v742, v741), 2uLL), vaddq_s16(v746, v740));
                *(&v2265 + v733) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v743, v747), vshlq_n_s16(v747, 2uLL)), vaddq_s16(v739, v25)), 5uLL))), v742);
                v733 += 32;
                v745 = (v745 + v62);
                v743 = v746;
              }

              while (v733 != 256);
              v748 = 0;
              v749 = v94 - 4 * v52;
              v750 = *(v749 + 8);
              v751 = &v749[v62 + 8];
              v752 = (v751 + v62 + v62);
              a5 = vzip1q_s8(*(v752 + v62), v24);
              v104 = vzip1q_s8(*v752, v24);
              v105 = vzip1q_s8(*(v751 + v62), v24);
              v753 = vzip1q_s8(*v751, v24);
              v754 = vzip1q_s8(v750, v24);
              v755 = (v50 + v744 + v91 + 2 * v52 * v92 - 4 * v52 + 8);
              v81 = v2264;
              do
              {
                v756 = v753;
                v753 = v105;
                v105 = v104;
                v104 = a5;
                a5 = vzip1q_s8(*v755, v24);
                v757 = vsubq_s16(vshlq_n_s16(vaddq_s16(v753, v105), 2uLL), vaddq_s16(v756, v104));
                *(&v2266 + v748) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v754, v757), vshlq_n_s16(v757, 2uLL)), vaddq_s16(a5, v25)), 5uLL))), v753);
                v748 += 32;
                v755 = (v755 + v734);
                v754 = v756;
              }

              while (v748 != 256);
              break;
            case 2:
              v532 = 0;
              v533 = v62;
              v534 = (v94 - 4 * v52);
              v535 = (v534 + v62);
              v536 = (v535 + v62);
              v537 = (v536 + v62);
              v538 = vzip1q_s8(*(v537 + v62), v24);
              v539 = vzip1q_s8(*v537, v24);
              v540 = vzip1q_s8(*v536, v24);
              v541 = vzip1q_s8(*v535, v24);
              v542 = vzip1q_s8(*v534, v24);
              v543 = 5 * v62;
              v544 = (v50 + v543 + v91 + 2 * v52 * v92 - 4 * v52);
              do
              {
                v545 = v541;
                v541 = v540;
                v540 = v539;
                v539 = v538;
                v546 = &v2265.i8[v532];
                v538 = vzip1q_s8(*v544, v24);
                v547 = vsubq_s16(vshlq_n_s16(vaddq_s16(v541, v540), 2uLL), vaddq_s16(v545, v539));
                v547.val[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v542, v547), vshlq_n_s16(v547, 2uLL)), vaddq_s16(v538, v25)), 5uLL));
                v548 = v24.i64[0];
                vst2_s8(v546, v547);
                v532 += 32;
                v544 = (v544 + v62);
                v542 = v545;
              }

              while (v532 != 256);
              v549 = 0;
              v550 = v94 - 4 * v52;
              v551 = *(v550 + 8);
              v552 = &v550[v62 + 8];
              v553 = (v552 + v62 + v62);
              v105 = vzip1q_s8(*(v553 + v62), v24);
              v104 = vzip1q_s8(*v553, v24);
              a5 = vzip1q_s8(*(v552 + v62), v24);
              v554 = vzip1q_s8(*v552, v24);
              v555 = vzip1q_s8(v551, v24);
              v556 = (v50 + v543 + v91 + 2 * v52 * v92 - 4 * v52 + 8);
              v81 = v2264;
              do
              {
                v557 = v554;
                v554 = a5;
                a5 = v104;
                v104 = v105;
                v558 = &v2266.i8[v549];
                v105 = vzip1q_s8(*v556, v24);
                v559 = vsubq_s16(vshlq_n_s16(vaddq_s16(v554, a5), 2uLL), vaddq_s16(v557, v104));
                v559.val[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v555, v559), vshlq_n_s16(v559, 2uLL)), vaddq_s16(v105, v25)), 5uLL));
                v560 = v24.i64[0];
                vst2_s8(v558, v559);
                v549 += 32;
                v556 = (v556 + v533);
                v555 = v557;
              }

              while (v549 != 256);
              break;
            case 3:
              v652 = 0;
              v653 = v62;
              v654 = (v94 - 4 * v52);
              v655 = (v654 + v62);
              v656 = (v655 + v62);
              v657 = (v656 + v62);
              v658 = vzip1q_s8(*(v657 + v62), v24);
              v659 = vzip1q_s8(*v657, v24);
              v660 = vzip1q_s8(*v656, v24);
              v661 = vzip1q_s8(*v655, v24);
              v662 = vzip1q_s8(*v654, v24);
              v663 = 5 * v62;
              v664 = (v50 + v663 + v91 + 2 * v52 * v92 - 4 * v52);
              do
              {
                v665 = v661;
                v661 = v660;
                v660 = v659;
                v659 = v658;
                v658 = vzip1q_s8(*v664, v24);
                v666 = vsubq_s16(vshlq_n_s16(vaddq_s16(v661, v660), 2uLL), vaddq_s16(v665, v659));
                *(&v2265 + v652) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v662, v666), vshlq_n_s16(v666, 2uLL)), vaddq_s16(v658, v25)), 5uLL))), v660);
                v652 += 32;
                v664 = (v664 + v62);
                v662 = v665;
              }

              while (v652 != 256);
              v667 = 0;
              v668 = v94 - 4 * v52;
              v669 = *(v668 + 8);
              v670 = &v668[v62 + 8];
              v671 = (v670 + v62 + v62);
              a5 = vzip1q_s8(*(v671 + v62), v24);
              v104 = vzip1q_s8(*v671, v24);
              v105 = vzip1q_s8(*(v670 + v62), v24);
              v672 = vzip1q_s8(*v670, v24);
              v673 = vzip1q_s8(v669, v24);
              v674 = (v50 + v663 + v91 + 2 * v52 * v92 - 4 * v52 + 8);
              v81 = v2264;
              do
              {
                v675 = v672;
                v672 = v105;
                v105 = v104;
                v104 = a5;
                a5 = vzip1q_s8(*v674, v24);
                v676 = vsubq_s16(vshlq_n_s16(vaddq_s16(v672, v105), 2uLL), vaddq_s16(v675, v104));
                *(&v2266 + v667) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v673, v676), vshlq_n_s16(v676, 2uLL)), vaddq_s16(a5, v25)), 5uLL))), v105);
                v667 += 32;
                v674 = (v674 + v653);
                v673 = v675;
              }

              while (v667 != 256);
              break;
            case 4:
              v466 = 0;
              v467 = (v94 - 2);
              v468 = v62;
              do
              {
                v469 = *v467;
                v467 = (v467 + v62);
                v470 = vzip1q_s8(vextq_s8(v469, v469, 2uLL), v24);
                v471 = vsubq_s16(vshlq_n_s16(vaddq_s16(v470, vzip1q_s8(vextq_s8(v469, v469, 3uLL), v24)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v469, v469, 1uLL), v24), vzip1q_s8(vextq_s8(v469, v469, 4uLL), v24)));
                *(&v2265 + v466) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v471, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v469, v24), vzip1q_s8(vextq_s8(v469, v469, 5uLL), v24)), v471)), v25), 5uLL))), v470);
                v466 += 32;
              }

              while (v466 != 256);
              v472 = 0;
              v473 = (v94 + 6);
              v81 = v2264;
              do
              {
                v474 = *v473;
                v473 = (v473 + v468);
                a5 = vzip1q_s8(vextq_s8(v474, v474, 2uLL), v24);
                v105 = vsubq_s16(vshlq_n_s16(vaddq_s16(a5, vzip1q_s8(vextq_s8(v474, v474, 3uLL), v24)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v474, v474, 1uLL), v24), vzip1q_s8(vextq_s8(v474, v474, 4uLL), v24)));
                v104 = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v105, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v474, v24), vzip1q_s8(vextq_s8(v474, v474, 5uLL), v24)), v105)), v25), 5uLL))), a5);
                *(&v2266 + v472) = v104;
                v472 += 32;
              }

              while (v472 != 256);
              break;
            case 5:
              v633 = v50 + v93;
              v634 = 2 * v52;
              v635 = (v2257 * v34);
              v636 = &a2[2 * v34];
              v637 = 2;
              goto LABEL_453;
            case 6:
              v2237 = (v2257 * v34);
              v2240 = &a2[2 * v34];
              sub_27729BFC4(v2265.i8, 0x20u, v94, 2 * v52);
              sub_27729BFC4(v2266.i8, 0x20u, v94 + 8, v62);
              goto LABEL_716;
            case 7:
              v633 = v50 + v93;
              v634 = 2 * v52;
              v635 = (v2257 * v34);
              v636 = &a2[2 * v34];
              v637 = 3;
LABEL_453:
              v830 = 2;
              goto LABEL_503;
            case 8:
              v1490 = 0;
              v1491 = (v94 - 2);
              v1492 = v62;
              do
              {
                v1493 = &v2265.i8[v1490];
                v1494 = *v1491;
                v1491 = (v1491 + v62);
                v1495 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1494, v1494, 2uLL), v24), vzip1q_s8(vextq_s8(v1494, v1494, 3uLL), v24)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1494, v1494, 1uLL), v24), vzip1q_s8(vextq_s8(v1494, v1494, 4uLL), v24)));
                *v1494.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1495, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1494, v24), vzip1q_s8(vextq_s8(v1494, v1494, 5uLL), v24)), v1495)), v25), 5uLL));
                v1495.i64[0] = v24.i64[0];
                vst2_s8(v1493, v1494);
                v1490 += 32;
              }

              while (v1490 != 256);
              v1496 = 0;
              v1497 = (v94 + 6);
              v81 = v2264;
              do
              {
                v1498 = &v2266.i8[v1496];
                v1499 = *v1497;
                v1497 = (v1497 + v1492);
                a5 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1499, v1499, 2uLL), v24), vzip1q_s8(vextq_s8(v1499, v1499, 3uLL), v24)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1499, v1499, 1uLL), v24), vzip1q_s8(vextq_s8(v1499, v1499, 4uLL), v24)));
                v105 = vshlq_n_s16(a5, 2uLL);
                v104 = vshrq_n_s16(vaddq_s16(vaddq_s16(v105, vaddq_s16(vaddq_s16(vzip1q_s8(v1499, v24), vzip1q_s8(vextq_s8(v1499, v1499, 5uLL), v24)), a5)), v25), 5uLL);
                *v104.i8 = vqmovun_s16(v104);
                a5.i64[0] = v24.i64[0];
                vst2_s8(v1498, *(&a5 - 8));
                v1496 += 32;
              }

              while (v1496 != 256);
              break;
            case 9:
              v2237 = (v2257 * v34);
              v2240 = &a2[2 * v34];
              sub_27729B614(v2265.i8, 0x20u, v94, 2 * v52, 8);
              sub_27729B614(v2266.i8, 0x20u, v94 + 8, v62, 8);
              goto LABEL_716;
            case 10:
              v2237 = (v2257 * v34);
              v2240 = &a2[2 * v34];
              sub_27729B7DC(&v2265, 32, v94, 2 * v52, 8);
              sub_27729B7DC(&v2266, 32, v94 + 8, v62, 8);
              goto LABEL_716;
            case 11:
              v2237 = (v2257 * v34);
              v2240 = &a2[2 * v34];
              sub_27729B98C(v2265.i8, 0x20u, v94, 2 * v52, 8);
              sub_27729B98C(v2266.i8, 0x20u, v94 + 8, v62, 8);
              goto LABEL_716;
            case 12:
              v495 = 0;
              v496 = (v94 - 2);
              v497 = v62;
              do
              {
                v498 = *v496;
                v496 = (v496 + v62);
                v499 = vzip1q_s8(vextq_s8(v498, v498, 3uLL), v24);
                v500 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v498, v498, 2uLL), v24), v499), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v498, v498, 1uLL), v24), vzip1q_s8(vextq_s8(v498, v498, 4uLL), v24)));
                *(&v2265 + v495) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v500, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v498, v24), vzip1q_s8(vextq_s8(v498, v498, 5uLL), v24)), v500)), v25), 5uLL))), v499);
                v495 += 32;
              }

              while (v495 != 256);
              v501 = 0;
              v502 = (v94 + 6);
              v81 = v2264;
              do
              {
                v503 = *v502;
                v502 = (v502 + v497);
                v105 = vzip1q_s8(vextq_s8(v503, v503, 3uLL), v24);
                a5 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v503, v503, 2uLL), v24), v105), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v503, v503, 1uLL), v24), vzip1q_s8(vextq_s8(v503, v503, 4uLL), v24)));
                v104 = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(a5, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v503, v24), vzip1q_s8(vextq_s8(v503, v503, 5uLL), v24)), a5)), v25), 5uLL))), v105);
                *(&v2266 + v501) = v104;
                v501 += 32;
              }

              while (v501 != 256);
              break;
            case 13:
              v633 = v50 + v93;
              v634 = 2 * v52;
              v635 = (v2257 * v34);
              v636 = &a2[2 * v34];
              v637 = 2;
              goto LABEL_502;
            case 14:
              v2237 = (v2257 * v34);
              v2240 = &a2[2 * v34];
              sub_27729C39C(v2265.i8, 0x20u, v94, 2 * v52);
              sub_27729C39C(v2266.i8, 0x20u, v94 + 8, v62);
LABEL_716:
              v99 = v2237;
              v100 = v2240;
              goto LABEL_717;
            case 15:
              v633 = v50 + v93;
              v634 = 2 * v52;
              v635 = (v2257 * v34);
              v636 = &a2[2 * v34];
              v637 = 3;
LABEL_502:
              v830 = 3;
LABEL_503:
              sub_27729AF04(v2265.i8, v633, v634, 8, v637, v830);
              v99 = v635;
              v100 = v636;
LABEL_717:
              v81 = v2264;
              break;
            default:
              v101 = 0;
              v102 = v62;
              v81 = v2264;
              do
              {
                v103 = &v2265.i8[v101];
                v104 = *v94;
                v94 = (v94 + v102);
                v105 = vzip2q_s8(v104, v24);
                a5.i64[0] = v24.i64[0];
                vst2_s8(v103, *(&a5 - 8));
                v103 += 16;
                *v103 = v105;
                v101 += 32;
              }

              while (v101 != 256);
              break;
          }

          v19 = v2259;
          sub_277293D30(&v2265, (v2231 + v99), v2257, a2, v100, 4, v2259, v81, v104, a5, v105);
          if (v61 == 64)
          {
            __asm { PRFM            #0, [X24] }

            v1457 = 5;
            v1441 = v2272;
            v384 = v2262;
            v381 = v2263;
            do
            {
              v1458 = _X24;
              _X24 = (_X24 + v63);
              __asm { PRFM            #0, [X24] }

              v1460 = vextq_s8(*v1458, *v1458, 2uLL);
              v1460.i16[7] = v1458[1].i16[0];
              v1461 = vrhaddq_u8(*v1458, v1460);
              v1460.i64[0] = v2263.i64[0];
              v400 = vzip2q_s8(v1461, v2263);
              v1441[3] = v400;
              v1441 += 2;
              vst2_s8(v1441->i8, *(&v1460 - 8));
              --v1457;
            }

            while (v1457 > 2);
            v412 = vextq_s8(*_X24, *_X24, 2uLL);
            v412.i16[7] = _X24[1].i16[0];
            v1462 = vrhaddq_u8(*_X24, v412);
            v1463 = v1441[2].i8;
            v412.i64[0] = v2263.i64[0];
            vst2_s8(v1463, *(&v412 - 8));
            v385 = vzip2q_s8(v1462, v2263);
          }

          else
          {
            v1438.i64[0] = 0x20002000200020;
            v1438.i64[1] = 0x20002000200020;
            if (v61 != 4)
            {
              if (!v61)
              {
                __asm { PRFM            #0, [X24] }

                v1440 = 5;
                v1441 = v2272;
                do
                {
                  v1442 = _X24;
                  _X24 = (_X24 + v63);
                  __asm { PRFM            #0, [X24] }

                  v1444 = *v1442;
                  v400 = vzip2q_s8(*v1442, v2263);
                  v1441[3] = v400;
                  v1441 += 2;
                  v1445 = v2263.i64[0];
                  vst2_s8(v1441->i8, v1444);
                  --v1440;
                }

                while (v1440 > 2);
                v412 = *_X24;
                v385 = vzip2q_s8(*_X24, v2263);
                v1446 = v1441[2].i8;
                v400.i64[0] = v2263.i64[0];
                vst2_s8(v1446, *(&v400 - 8));
                goto LABEL_730;
              }

              v1465 = 0;
              v1466 = v83 - (8 * v58 + 8 * v60) + 64;
              v1467 = v2263;
              v1467.i32[0] = v1466 | (v1466 << 16);
              v385 = vqtbl1q_s8(v1467, xmmword_2773B3DF0);
              v1468 = v2263;
              v1468.i32[0] = (8 * v58 - v83) | ((8 * v58 - v83) << 16);
              v412 = vqtbl1q_s8(v1468, xmmword_2773B3DF0);
              v1469 = v2263;
              v1469.i32[0] = (8 * v60 - v83) | ((8 * v60 - v83) << 16);
              v400 = vqtbl1q_s8(v1469, xmmword_2773B3DF0);
              v2278 = v385;
              v2279 = v412;
              v2280 = v400;
              v2281 = v2242;
              _X10 = &_X24->i8[v63];
              __asm { PRFM            #0, [X10] }

              v381.i64[0] = _X24->i64[0];
              v384 = xmmword_2773B3E00;
              v1472 = vqtbl1q_s8(v381, xmmword_2773B3E00);
              v1472.i16[3] = _X24->i16[4];
              v1473 = vzip1q_s8(v1472, v2263);
              v1474 = vzip1q_s8(v381, v2263);
              v1475 = (v51 + v2247 + v2245 + v63 + 8);
              _X13 = v51 + v2247 + v2245 + 2 * v63;
              do
              {
                __asm { PRFM            #0, [X13] }

                v1478 = vmlaq_s16(vmulq_s16(v412, v1473), v385, v1474);
                v1473.i64[0] = *(v1475 - 1);
                v1474 = vzip1q_s8(v1473, v2263);
                v1479 = vqtbl1q_s8(v1473, xmmword_2773B3E00);
                v1479.i16[3] = *v1475;
                v1475 = (v1475 + v63);
                v1473 = vzip1q_s8(v1479, v2263);
                v2273[v1465] = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1478, v400, v1474), v2242, v1473), v1438), 6uLL);
                v1465 += 2;
                _X13 += v63;
              }

              while ((v1465 * 16) != 128);
              v1480 = 0;
              _X10 = &_X24->i64[1] + v63;
              __asm { PRFM            #0, [X10] }

              v1474.i64[0] = _X24->i64[1];
              v1483 = vqtbl1q_s8(v1474, xmmword_2773B3E00);
              v1483.i16[3] = _X24[1].i16[0];
              v1484 = vzip1q_s8(v1483, v2263);
              v381 = vzip1q_s8(v1474, v2263);
              v1485 = v51 + v2247 + v2245;
              v1464 = (v34 >> 1) * v2256;
              v440 = (a3 + 32 * (v34 >> 1));
              do
              {
                _X11 = v1485 + 2 * v63 + 8;
                v1485 += v63;
                __asm { PRFM            #0, [X11] }

                v1488 = vmlaq_s16(vmulq_s16(v412, v1484), v385, v381);
                v1484.i64[0] = *(v1485 + 8);
                v381 = vzip1q_s8(v1484, v2263);
                v1489 = vqtbl1q_s8(v1484, xmmword_2773B3E00);
                v1489.i16[3] = *(v1485 + 16);
                v1484 = vzip1q_s8(v1489, v2263);
                v2274[v1480] = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1488, v400, v381), v2242, v1484), v1438), 6uLL);
                v1480 += 2;
              }

              while ((v1480 * 16) != 128);
LABEL_735:
              v437 = (v2232 + v1464);
              v438 = v2256;
              v439 = a3;
              v441 = 2;
LABEL_736:
              sub_277294160(v2273, v437, v438, v439, v440, v441, v19, v81, v385, *v412.i64, v400, v384, v381);
              goto LABEL_737;
            }

            _X8 = &_X24->i8[v63];
            __asm { PRFM            #0, [X8] }

            v1449 = *_X24;
            v1450 = (v51 + v2247 + v2245);
            v1451 = 5;
            v1441 = v2272;
            v381 = v2262;
            do
            {
              _X13 = &v1450->i8[2 * v63];
              v1450 = (v1450 + v63);
              __asm { PRFM            #0, [X13] }

              v412 = *v1450;
              v400 = vrhaddq_u8(v1449, *v1450);
              v384.i64[0] = v2263.i64[0];
              v1441[3] = vzip2q_s8(v400, v2263);
              v1441 += 2;
              vst2_s8(v1441->i8, *(&v384 - 8));
              --v1451;
              v1449 = v412;
            }

            while (v1451 > 2);
            v1454 = vrhaddq_u8(v412, *(v1450 + v63));
            v1455 = v1441[2].i8;
            v412.i64[0] = v2263.i64[0];
            vst2_s8(v1455, *(&v412 - 8));
            v385 = vzip2q_s8(v1454, v2263);
          }

LABEL_730:
          v1464 = (v34 >> 1) * v2256;
          v440 = (a3 + 32 * (v34 >> 1));
          v1441[3] = v385;
          goto LABEL_735;
        }
      }

LABEL_989:
      v20 = v2264 + 1;
      if (v2264 + 1 == v2260)
      {
        return;
      }
    }

    v68 = v2233 + (v55 >> 2);
    v69 = v2230 + (v56 >> 2);
    if (v68 <= -18)
    {
      v68 = -18;
    }

    if (v69 <= -18)
    {
      v69 = -18;
    }

    if (v68 >= v64 + 1)
    {
      v70 = v64 + 1;
    }

    else
    {
      v70 = v68;
    }

    if (v69 >= v66 + 1)
    {
      v71 = v66 + 1;
    }

    else
    {
      v71 = v69;
    }

    v72 = v71 * v62;
    v73 = (v50 + v72 + v70);
    v74 = ((v55 >> 2) & 0xFFFFFFFE) + v2233;
    v75 = v2188 + (v59 >> 3);
    if (v74 <= -16)
    {
      v74 = -16;
    }

    if (v75 <= -8)
    {
      v75 = -8;
    }

    if (v74 >= v65 - 2)
    {
      v74 = v65 - 2;
    }

    if (v75 >= v67)
    {
      v75 = v67 - 1;
    }

    v2252 = v74;
    v76 = v75 * v63;
    _X24 = (v51 + v74 + v76);
    switch(v56 & 3 | (4 * (v55 & 3)))
    {
      case 1:
        v354 = 0;
        v355 = v62;
        v356 = 4 * v52;
        v357 = (v73 + v62 - v356);
        v358 = (v357 + v62);
        v359 = (v358 + v62);
        v360 = vzip1q_s8(*(v359 + v62), v24);
        v361 = vzip1q_s8(*v359, v24);
        v362 = vzip1q_s8(*v358, v24);
        v363 = vzip1q_s8(*v357, v24);
        v364 = vzip1q_s8(*&v73->i8[-v356], v24);
        v365 = 5 * v62;
        v366 = (v50 + v365 + v70 + v72 - v356);
        do
        {
          v367 = v363;
          v363 = v362;
          v362 = v361;
          v361 = v360;
          v360 = vzip1q_s8(*v366, v24);
          v368 = vsubq_s16(vshlq_n_s16(vaddq_s16(v363, v362), 2uLL), vaddq_s16(v367, v361));
          *(&v2265 + v354) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v364, v368), vshlq_n_s16(v368, 2uLL)), vaddq_s16(v360, v25)), 5uLL))), v363);
          v354 += 32;
          v366 = (v366 + v62);
          v364 = v367;
        }

        while (v354 != 512);
        v369 = 0;
        v370 = (&v73[1] + v62 - v356);
        v371 = (v370 + v62 + v62);
        v247 = vzip1q_s8(*(v371 + v62), v24);
        v246 = vzip1q_s8(*v371, v24);
        v248 = vzip1q_s8(*(v370 + v62), v24);
        v372 = vzip1q_s8(*v370, v24);
        v373 = vzip1q_s8(*&v73[1].i8[-v356], v24);
        v374 = (v50 + v365 + v70 + v72 - v356 + 8);
        v81 = v2264;
        do
        {
          v375 = v372;
          v372 = v248;
          v248 = v246;
          v246 = v247;
          v247 = vzip1q_s8(*v374, v24);
          v376 = vsubq_s16(vshlq_n_s16(vaddq_s16(v372, v248), 2uLL), vaddq_s16(v375, v246));
          *(&v2266 + v369) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v373, v376), vshlq_n_s16(v376, 2uLL)), vaddq_s16(v247, v25)), 5uLL))), v372);
          v369 += 32;
          v374 = (v374 + v355);
          v373 = v375;
        }

        while (v369 != 512);
        goto LABEL_296;
      case 2:
        v301 = 0;
        v302 = v62;
        v303 = 4 * v52;
        v304 = (v73 + v62 - v303);
        v305 = (v304 + v62);
        v306 = (v305 + v62);
        v307 = vzip1q_s8(*(v306 + v62), v24);
        v308 = vzip1q_s8(*v306, v24);
        v309 = vzip1q_s8(*v305, v24);
        v310 = vzip1q_s8(*v304, v24);
        v311 = vzip1q_s8(*&v73->i8[-v303], v24);
        v312 = 5 * v62;
        v313 = (v50 + v312 + v70 + v72 - v303);
        do
        {
          v314 = v310;
          v310 = v309;
          v309 = v308;
          v308 = v307;
          v315 = &v2265.i8[v301];
          v307 = vzip1q_s8(*v313, v24);
          v316 = vsubq_s16(vshlq_n_s16(vaddq_s16(v310, v309), 2uLL), vaddq_s16(v314, v308));
          v316.val[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v311, v316), vshlq_n_s16(v316, 2uLL)), vaddq_s16(v307, v25)), 5uLL));
          v317 = v24.i64[0];
          vst2_s8(v315, v316);
          v301 += 32;
          v313 = (v313 + v62);
          v311 = v314;
        }

        while (v301 != 512);
        v318 = 0;
        v319 = (&v73[1] + v62 - v303);
        v320 = (v319 + v62 + v62);
        v248 = vzip1q_s8(*(v320 + v62), v24);
        v246 = vzip1q_s8(*v320, v24);
        v247 = vzip1q_s8(*(v319 + v62), v24);
        v321 = vzip1q_s8(*v319, v24);
        v322 = vzip1q_s8(*&v73[1].i8[-v303], v24);
        v323 = (v50 + v312 + v70 + v72 - v303 + 8);
        v81 = v2264;
        do
        {
          v324 = v321;
          v321 = v247;
          v247 = v246;
          v246 = v248;
          v325 = &v2266.i8[v318];
          v248 = vzip1q_s8(*v323, v24);
          v326 = vsubq_s16(vshlq_n_s16(vaddq_s16(v321, v247), 2uLL), vaddq_s16(v324, v246));
          v326.val[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v322, v326), vshlq_n_s16(v326, 2uLL)), vaddq_s16(v248, v25)), 5uLL));
          v327 = v24.i64[0];
          vst2_s8(v325, v326);
          v318 += 32;
          v323 = (v323 + v302);
          v322 = v324;
        }

        while (v318 != 512);
        goto LABEL_296;
      case 3:
        v331 = 0;
        v332 = v62;
        v333 = 4 * v52;
        v334 = (v73 + v62 - v333);
        v335 = (v334 + v62);
        v336 = (v335 + v62);
        v337 = vzip1q_s8(*(v336 + v62), v24);
        v338 = vzip1q_s8(*v336, v24);
        v339 = vzip1q_s8(*v335, v24);
        v340 = vzip1q_s8(*v334, v24);
        v341 = vzip1q_s8(*&v73->i8[-v333], v24);
        v342 = 5 * v62;
        v343 = (v50 + v342 + v70 + v72 - v333);
        do
        {
          v344 = v340;
          v340 = v339;
          v339 = v338;
          v338 = v337;
          v337 = vzip1q_s8(*v343, v24);
          v345 = vsubq_s16(vshlq_n_s16(vaddq_s16(v340, v339), 2uLL), vaddq_s16(v344, v338));
          *(&v2265 + v331) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v341, v345), vshlq_n_s16(v345, 2uLL)), vaddq_s16(v337, v25)), 5uLL))), v339);
          v331 += 32;
          v343 = (v343 + v62);
          v341 = v344;
        }

        while (v331 != 512);
        v346 = 0;
        v347 = (&v73[1] + v62 - v333);
        v348 = (v347 + v62 + v62);
        v247 = vzip1q_s8(*(v348 + v62), v24);
        v246 = vzip1q_s8(*v348, v24);
        v248 = vzip1q_s8(*(v347 + v62), v24);
        v349 = vzip1q_s8(*v347, v24);
        v350 = vzip1q_s8(*&v73[1].i8[-v333], v24);
        v351 = (v50 + v342 + v70 + v72 - v333 + 8);
        v81 = v2264;
        do
        {
          v352 = v349;
          v349 = v248;
          v248 = v246;
          v246 = v247;
          v247 = vzip1q_s8(*v351, v24);
          v353 = vsubq_s16(vshlq_n_s16(vaddq_s16(v349, v248), 2uLL), vaddq_s16(v352, v246));
          *(&v2266 + v346) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v350, v353), vshlq_n_s16(v353, 2uLL)), vaddq_s16(v247, v25)), 5uLL))), v248);
          v346 += 32;
          v351 = (v351 + v332);
          v350 = v352;
        }

        while (v346 != 512);
        goto LABEL_296;
      case 4:
        v249 = 0;
        v250 = (&v73[-1] + 6);
        v251 = v62;
        do
        {
          v252 = *v250;
          v250 = (v250 + v62);
          v253 = vzip1q_s8(vextq_s8(v252, v252, 2uLL), v24);
          v254 = vsubq_s16(vshlq_n_s16(vaddq_s16(v253, vzip1q_s8(vextq_s8(v252, v252, 3uLL), v24)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v252, v252, 1uLL), v24), vzip1q_s8(vextq_s8(v252, v252, 4uLL), v24)));
          *(&v2265 + v249) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v254, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v252, v24), vzip1q_s8(vextq_s8(v252, v252, 5uLL), v24)), v254)), v25), 5uLL))), v253);
          v249 += 32;
        }

        while (v249 != 512);
        v255 = 0;
        v256 = (v73 + 6);
        v81 = v2264;
        do
        {
          v257 = *v256;
          v256 = (v256 + v251);
          v247 = vzip1q_s8(vextq_s8(v257, v257, 2uLL), v24);
          v248 = vsubq_s16(vshlq_n_s16(vaddq_s16(v247, vzip1q_s8(vextq_s8(v257, v257, 3uLL), v24)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v257, v257, 1uLL), v24), vzip1q_s8(vextq_s8(v257, v257, 4uLL), v24)));
          v246 = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v248, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v257, v24), vzip1q_s8(vextq_s8(v257, v257, 5uLL), v24)), v248)), v25), 5uLL))), v247);
          *(&v2266 + v255) = v246;
          v255 += 32;
        }

        while (v255 != 512);
        goto LABEL_296;
      case 5:
        v328 = v50 + v72 + v70;
        v329 = 2 * v52;
        v330 = 2;
        goto LABEL_291;
      case 6:
        sub_27729B1B0(v2265.i8, 0x20u, v50 + v72 + v70, 2 * v52);
        sub_27729B1B0(v2266.i8, 0x20u, &v73[1], v62);
        goto LABEL_295;
      case 7:
        v328 = v50 + v72 + v70;
        v329 = 2 * v52;
        v330 = 3;
LABEL_291:
        v377 = 2;
        goto LABEL_294;
      case 8:
        v442 = 0;
        v443 = (&v73[-1] + 6);
        v444 = v62;
        do
        {
          v445 = &v2265.i8[v442];
          v446 = *v443;
          v443 = (v443 + v62);
          v447 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v446, v446, 2uLL), v24), vzip1q_s8(vextq_s8(v446, v446, 3uLL), v24)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v446, v446, 1uLL), v24), vzip1q_s8(vextq_s8(v446, v446, 4uLL), v24)));
          *v446.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v447, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v446, v24), vzip1q_s8(vextq_s8(v446, v446, 5uLL), v24)), v447)), v25), 5uLL));
          v447.i64[0] = v24.i64[0];
          vst2_s8(v445, v446);
          v442 += 32;
        }

        while (v442 != 512);
        v448 = 0;
        v449 = (v73 + 6);
        v81 = v2264;
        do
        {
          v450 = &v2266.i8[v448];
          v451 = *v449;
          v449 = (v449 + v444);
          v247 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v451, v451, 2uLL), v24), vzip1q_s8(vextq_s8(v451, v451, 3uLL), v24)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v451, v451, 1uLL), v24), vzip1q_s8(vextq_s8(v451, v451, 4uLL), v24)));
          v248 = vshlq_n_s16(v247, 2uLL);
          v246 = vshrq_n_s16(vaddq_s16(vaddq_s16(v248, vaddq_s16(vaddq_s16(vzip1q_s8(v451, v24), vzip1q_s8(vextq_s8(v451, v451, 5uLL), v24)), v247)), v25), 5uLL);
          *v246.i8 = vqmovun_s16(v246);
          v247.i64[0] = v24.i64[0];
          vst2_s8(v450, v246);
          v448 += 32;
        }

        while (v448 != 512);
        goto LABEL_296;
      case 9:
        sub_27729B614(v2265.i8, 0x20u, v50 + v72 + v70, 2 * v52, 16);
        sub_27729B614(v2266.i8, 0x20u, &v73[1], v62, 16);
        goto LABEL_295;
      case 0xA:
        sub_27729B7DC(&v2265, 32, v50 + v72 + v70, 2 * v52, 16);
        sub_27729B7DC(&v2266, 32, &v73[1], v62, 16);
        goto LABEL_295;
      case 0xB:
        sub_27729B98C(v2265.i8, 0x20u, v50 + v72 + v70, 2 * v52, 16);
        sub_27729B98C(v2266.i8, 0x20u, &v73[1], v62, 16);
        goto LABEL_295;
      case 0xC:
        v276 = 0;
        v277 = (&v73[-1] + 6);
        v278 = v62;
        do
        {
          v279 = *v277;
          v277 = (v277 + v62);
          v280 = vzip1q_s8(vextq_s8(v279, v279, 3uLL), v24);
          v281 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v279, v279, 2uLL), v24), v280), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v279, v279, 1uLL), v24), vzip1q_s8(vextq_s8(v279, v279, 4uLL), v24)));
          *(&v2265 + v276) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v281, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v279, v24), vzip1q_s8(vextq_s8(v279, v279, 5uLL), v24)), v281)), v25), 5uLL))), v280);
          v276 += 32;
        }

        while (v276 != 512);
        v282 = 0;
        v283 = (v73 + 6);
        v81 = v2264;
        do
        {
          v284 = *v283;
          v283 = (v283 + v278);
          v248 = vzip1q_s8(vextq_s8(v284, v284, 3uLL), v24);
          v247 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v284, v284, 2uLL), v24), v248), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v284, v284, 1uLL), v24), vzip1q_s8(vextq_s8(v284, v284, 4uLL), v24)));
          v246 = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v247, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v284, v24), vzip1q_s8(vextq_s8(v284, v284, 5uLL), v24)), v247)), v25), 5uLL))), v248);
          *(&v2266 + v282) = v246;
          v282 += 32;
        }

        while (v282 != 512);
        goto LABEL_296;
      case 0xD:
        v328 = v50 + v72 + v70;
        v329 = 2 * v52;
        v330 = 2;
        goto LABEL_293;
      case 0xE:
        sub_27729BBEC(v2265.i8, 0x20u, v50 + v72 + v70, 2 * v52);
        sub_27729BBEC(v2266.i8, 0x20u, &v73[1], v62);
        goto LABEL_295;
      case 0xF:
        v328 = v50 + v72 + v70;
        v329 = 2 * v52;
        v330 = 3;
LABEL_293:
        v377 = 3;
LABEL_294:
        sub_27729AF04(v2265.i8, v328, v329, 16, v330, v377);
LABEL_295:
        v81 = v2264;
LABEL_296:
        sub_277293D30(&v2265, v2231, v2257, a2, a2, 8, v2259, v81, v246, v247, v248);
        goto LABEL_297;
      default:
        v78 = *(v2259 + 48);
        v79 = *(v78 + 356);
        if (a2)
        {
          if (v79 == 1 || *(v78 + 360) == 1)
          {
            v80 = v62;
            v81 = v2264;
            sub_277293BFC(v73, v80, v2231, v2257, a2, v2259, v2264, *v23.i64, a5, *a6.i64, a7);
LABEL_297:
            v11 = v2262;
            v24 = v2263;
            v378.i64[0] = 0x20002000200020;
            v378.i64[1] = 0x20002000200020;
            goto LABEL_298;
          }

          v1538 = 0;
          v1539 = v62;
          v1540 = v2231;
          v81 = v2264;
          v378.i64[0] = 0x20002000200020;
          v378.i64[1] = 0x20002000200020;
          do
          {
            v1541 = *v73->i8;
            v73 = (v73 + v1539);
            a7 = vzip1q_s8(v1541, v24);
            a6 = vzip2q_s8(v1541, v24);
            a5 = vaddq_s16(a2[v1538 + 1], a6);
            v82 = vqmovun_high_s16(vqmovun_s16(vaddq_s16(a2[v1538], a7)), a5);
            *v1540 = v82;
            v1540 = (v1540 + v2257);
            v1538 += 2;
          }

          while ((v1538 * 16) != 512);
        }

        else
        {
          if (v79 == 1 || *(v78 + 360) == 1)
          {
            v457 = v62;
            v81 = v2264;
            sub_277293ADC(v73, v457, v2231, v2257, v2259, v2264, v23, *a5.i64, *a6.i64, *a7.i64, a8);
            goto LABEL_297;
          }

          v2067 = v62;
          v2068 = 16;
          v2069 = v2231;
          v81 = v2264;
          v378.i64[0] = 0x20002000200020;
          v378.i64[1] = 0x20002000200020;
          do
          {
            v82 = *v73->i8;
            v73 = (v73 + v2067);
            *v2069 = v82;
            v2069 = (v2069 + v2257);
            --v2068;
          }

          while (v2068);
        }

LABEL_298:
        if (!v61)
        {
          v19 = v2259;
          v403 = *(v2259 + 48);
          v404 = *(v403 + 356);
          if (a3)
          {
            if (v404 == 1 || *(v403 + 360) == 1)
            {
              sub_277294018(_X24, v63, v2232, v2256, a3, v2259, v81, v82, *a5.i64, a6, a7, a8);
              goto LABEL_737;
            }

            v452 = 0;
            v453 = v2232;
            v25.i64[0] = 0x10001000100010;
            v25.i64[1] = 0x10001000100010;
            do
            {
              v454 = *_X24->i8;
              _X24 = (_X24 + v63);
              a7 = vzip1q_s8(v454, v24);
              a6 = vzip2q_s8(v454, v24);
              a5 = vaddq_s16(*(a3 + v452 + 16), a6);
              v23 = vqmovun_high_s16(vqmovun_s16(vaddq_s16(*(a3 + v452), a7)), a5);
              *v453 = v23;
              v453 = (v453 + v2256);
              v452 += 32;
            }

            while (v452 != 256);
          }

          else
          {
            if (v404 == 1 || *(v403 + 360) == 1)
            {
              sub_277293EE4(_X24, v63, v2232, v2256, v2259, v81, v82, *a5.i64, a6, a7, a8);
              goto LABEL_737;
            }

            v455 = 8;
            v456 = v2232;
            v25.i64[0] = 0x10001000100010;
            v25.i64[1] = 0x10001000100010;
            do
            {
              v23 = *_X24->i8;
              _X24 = (_X24 + v63);
              *v456 = v23;
              v456 = (v456 + v2256);
              --v455;
            }

            while (v455);
          }

          goto LABEL_738;
        }

        v379 = v60 * v58;
        v380 = v24;
        v380.i32[0] = 65537 * (8 - v60) * (8 - v58);
        v381 = xmmword_2773B3DF0;
        v382 = v24;
        v382.i32[0] = 65537 * (8 - v60) * v58;
        v383 = v24;
        v383.i32[0] = 65537 * v60 * (8 - v58);
        v384 = v24;
        v384.i32[0] = 65537 * v60 * v58;
        v2278 = vqtbl1q_s8(v380, xmmword_2773B3DF0);
        v2279 = vqtbl1q_s8(v382, xmmword_2773B3DF0);
        v385 = vqtbl1q_s8(v384, xmmword_2773B3DF0);
        v2280 = vqtbl1q_s8(v383, xmmword_2773B3DF0);
        v2281 = v385;
        if (v61 == 64)
        {
          __asm { PRFM            #0, [X24] }

          v406 = 9;
          v402 = v2272;
          do
          {
            v407 = _X24;
            _X24 = (_X24 + v63);
            __asm { PRFM            #0, [X24] }

            v409 = vextq_s8(*v407, *v407, 2uLL);
            v409.i16[7] = v407[1].i16[0];
            v410 = vrhaddq_u8(*v407, v409);
            v409.i64[0] = v24.i64[0];
            v400 = vzip2q_s8(v410, v24);
            v402[3] = v400;
            v402 += 2;
            vst2_s8(v402->i8, *(&v409 - 8));
            --v406;
          }

          while (v406 > 2);
          v411 = vextq_s8(*_X24->i8, *_X24->i8, 2uLL);
          v411.i16[7] = _X24[2].i16[0];
          v401 = vrhaddq_u8(*_X24->i8, v411);
          v394 = v402 + 2;
        }

        else
        {
          _X10 = _X24 + v63;
          if (v61 != 4)
          {
            v413 = 0;
            v414 = v24;
            v414.i32[0] = (v379 - (8 * v58 + 8 * v60) + 64) | ((v379 - (8 * v58 + 8 * v60) + 64) << 16);
            v412 = vqtbl1q_s8(v414, xmmword_2773B3DF0);
            v415 = v24;
            v415.i32[0] = (8 * v58 - v379) | ((8 * v58 - v379) << 16);
            v416 = v24;
            v416.i32[0] = (8 * v60 - v379) | ((8 * v60 - v379) << 16);
            v400 = vqtbl1q_s8(v415, xmmword_2773B3DF0);
            v384 = vqtbl1q_s8(v416, xmmword_2773B3DF0);
            v2278 = v412;
            v2279 = v400;
            v2280 = v384;
            __asm { PRFM            #0, [X10] }

            *a9.i8 = *_X24;
            v381 = xmmword_2773B3E00;
            v418 = vqtbl1q_s8(a9, xmmword_2773B3E00);
            v418.i16[3] = _X24[1].i16[0];
            v419 = vzip1q_s8(v418, v24);
            v420 = vzip1q_s8(a9, v24);
            v421 = (v51 + v2252 + v76 + v63 + 8);
            _X13 = v51 + v2252 + v76 + 2 * v63;
            do
            {
              __asm { PRFM            #0, [X13] }

              v424 = vmlaq_s16(vmulq_s16(v400, v419), v412, v420);
              v419.i64[0] = *(v421 - 1);
              v420 = vzip1q_s8(v419, v24);
              v425 = vqtbl1q_s8(v419, xmmword_2773B3E00);
              v425.i16[3] = *v421;
              v421 = (v421 + v63);
              v419 = vzip1q_s8(v425, v24);
              v2273[v413] = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v424, v384, v420), v385, v419), v378), 6uLL);
              v413 += 2;
              _X13 += v63;
            }

            while ((v413 * 16) != 256);
            v426 = 0;
            _X10 = &_X24[1] + v63;
            __asm { PRFM            #0, [X10] }

            *v420.i8 = _X24[1];
            v429 = vqtbl1q_s8(v420, xmmword_2773B3E00);
            v429.i16[3] = _X24[2].i16[0];
            v430 = vzip1q_s8(v429, v24);
            v431 = vzip1q_s8(v420, v24);
            v432 = v51 + v2252 + v76;
            v19 = v2259;
            do
            {
              _X11 = v432 + 2 * v63 + 8;
              v432 += v63;
              __asm { PRFM            #0, [X11] }

              v435 = vmlaq_s16(vmulq_s16(v400, v430), v412, v431);
              v430.i64[0] = *(v432 + 8);
              v431 = vzip1q_s8(v430, v24);
              v436 = vqtbl1q_s8(v430, xmmword_2773B3E00);
              v436.i16[3] = *(v432 + 16);
              v430 = vzip1q_s8(v436, v24);
              v2274[v426] = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v435, v384, v431), v385, v430), v378), 6uLL);
              v426 += 2;
            }

            while ((v426 * 16) != 256);
            goto LABEL_316;
          }

          __asm { PRFM            #0, [X10] }

          v392 = *_X24->i8;
          v393 = (v51 + v2252 + v76);
          v394 = v2273;
          for (i = 9; i > 2; --i)
          {
            _X13 = &v393->i8[2 * v63];
            v393 = (v393 + v63);
            __asm { PRFM            #0, [X13] }

            v398 = *v393;
            v399 = vrhaddq_u8(v392, *v393);
            v400 = vzip1q_s8(v399, v24);
            *v394 = v400;
            v394[1] = vzip2q_s8(v399, v24);
            v394 += 2;
            v392 = v398;
          }

          v401 = vrhaddq_u8(v398, *(v393 + v63));
          v402 = v394 - 2;
        }

        v19 = v2259;
        v412.i64[0] = v24.i64[0];
        vst2_s8(v394->i8, v401);
        v385 = vzip2q_s8(v401, v24);
        v402[3] = v385;
LABEL_316:
        v437 = v2232;
        v438 = v2256;
        v439 = a3;
        v440 = a3;
        v441 = 4;
        goto LABEL_736;
    }
  }
}