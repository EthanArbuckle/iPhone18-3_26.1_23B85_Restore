void sub_277317BF4(uint64_t a1, __n128 *a2, double a3, double a4, double a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  v11 = a1;
  v2296 = *MEMORY[0x277D85DE8];
  if (*(a1 + 816))
  {
    if (*(a1 + 832))
    {
      v12 = 0;
    }

    else
    {
      v12 = a2 + 7;
    }
  }

  else
  {
    v12 = 0;
  }

  v2254 = v12;
  if (*(a1 + 817))
  {
    if (*(a1 + 832))
    {
      v13 = 0;
    }

    else
    {
      v13 = a2 + 39;
    }

    v2252 = v13;
  }

  else
  {
    v2252 = 0;
  }

  v2265 = *(a1 + 1104);
  if (*(a1 + 1104))
  {
    v14 = 0;
    v15 = *(a1 + 828);
    v16 = (16 * *(a1 + 824));
    v17 = a2[4].n128_i64[1];
    v2255 = a2[4].n128_u64[0];
    v18 = *(v17 + 152);
    v19 = *(v17 + 136);
    v2234 = 16 * *(a1 + 824);
    v2235 = (*(v17 + 32) + v16 + (v19 * 16 * v15));
    v2233 = (*(v17 + 40) + v16 + (8 * v15 * v18));
    v2242 = a1 + 848;
    v2212 = 2 * v19;
    v2253 = v19;
    v2182 = 4 * v19;
    v2199 = 3 * v19;
    v2209 = 2 * v18;
    v2196 = (16 * v15) >> 1;
    v2251 = v18;
    v2179 = 4 * v18;
    v2243 = 16 * v15;
    v2238 = (16 * v15) | 0xF;
    v2183 = 3 * v18;
    v20 = 0uLL;
    v21.i64[0] = 0x20002000200020;
    v21.i64[1] = 0x20002000200020;
    v22.i64[0] = 0x10001000100010;
    v22.i64[1] = 0x10001000100010;
    while (1)
    {
      v23 = (v2242 + 16 * v14);
      v24 = *(v23 + 15);
      v25 = *(v11 + 858);
      if (v25 >= 0x103)
      {
        v25 = 259;
      }

      v26 = &word_280A6AB60[40 * v25];
      v27 = v26[v14 + 24];
      v2258 = v27 >> 8;
      v2264 = v14;
      v28 = *(v26 + v14 + 32);
      v29 = byte_2773B3BA0[v28];
      v2256 = byte_2773B3BB0[v28];
      v2266 = v10;
      v2268 = v20;
      if (v24 == 6)
      {
        break;
      }

      v35 = (v24 - 4);
      v36 = *(v2255[v35] + 8 * *(v23 + v35 + 8));
      if (!v36)
      {
        return;
      }

      v37 = &v23[2 * v35];
      v38 = *v37;
      v39 = v37[1];
      v40 = v2243 + (v39 >> 2);
      v41 = v40 + 15;
      if (v40 < -15)
      {
        v41 = v40 + 30;
      }

      v42 = v41 >> 4;
      if (v42 < 0)
      {
        v43 = -1;
      }

      else
      {
        v43 = v42;
      }

      if (*(v36 + 12) <= v43)
      {
        v44 = byte_2773B3BA0[v28];
        sub_2773B1C78(*(v36 + 16));
        while (*(v36 + 12) <= v43)
        {
          sub_2773B1D28(*(v36 + 24), *(v36 + 16));
        }

        sub_2773B1C84(*(v36 + 16));
        v10 = v2266;
        v20 = v2268;
        v21.i64[0] = 0x20002000200020;
        v21.i64[1] = 0x20002000200020;
        v22.i64[0] = 0x10001000100010;
        v22.i64[1] = 0x10001000100010;
        v29 = v44;
      }

      v57 = v27;
      v58 = v39 & 3 | (4 * (v38 & 3u));
      v59 = v38 & 7;
      v60 = v39 & 7;
      v61 = v60 | (16 * v59);
      v62 = *(v36 + 64);
      v63 = *(v36 + 72);
      v64 = *(v36 + 164);
      v65 = *(v36 + 168);
      v66 = *(v36 + 180);
      v67 = *(v36 + 184);
      v68 = *(v36 + 132);
      v69 = *(v36 + 148);
      if (v2265 == 1)
      {
        v70 = v38 >> 2;
        v71 = v2234 + (v38 >> 2);
        if (v71 <= -18)
        {
          v71 = -18;
        }

        if (v40 <= -18)
        {
          v72 = -18;
        }

        else
        {
          v72 = v2243 + (v39 >> 2);
        }

        if (v71 >= v64 + 1)
        {
          v73 = v64 + 1;
        }

        else
        {
          v73 = v71;
        }

        if (v72 >= v68 + 1)
        {
          v74 = v68 + 1;
        }

        else
        {
          v74 = v72;
        }

        v75 = v74 * v65;
        v76 = (v62 + v75 + v73);
        v77 = (v70 & 0xFFFFFFFE) + v2234;
        v78 = v2196 + (v39 >> 3);
        if (v77 <= -16)
        {
          v77 = -16;
        }

        if (v78 <= -8)
        {
          v78 = -8;
        }

        v79 = v66 - 2;
        if (v77 < v79)
        {
          v79 = v77;
        }

        if (v78 >= v69)
        {
          v80 = v69 - 1;
        }

        else
        {
          v80 = v78;
        }

        v81 = v79;
        v82 = v80 * v67;
        _X26 = (v63 + v79 + v82);
        switch(v58)
        {
          case 1:
            v415 = 0;
            v416 = (v76 - 2 * v65);
            v417 = (v416 + v65 + v65);
            v418 = vzip1q_s8(*(v417 + v65 + v65), v20);
            v419 = vzip1q_s8(*(v417 + v65), v20);
            v420 = vzip1q_s8(*v417, v20);
            v421 = vzip1q_s8(*(v416 + v65), v20);
            v422 = vzip1q_s8(*v416, v20);
            v423 = (v62 + 5 * v65 + v73 + v75 - 2 * v65);
            do
            {
              v424 = v421;
              v421 = v420;
              v420 = v419;
              v419 = v418;
              v418 = vzip1q_s8(*v423, v20);
              v425 = vsubq_s16(vshlq_n_s16(vaddq_s16(v421, v420), 2uLL), vaddq_s16(v424, v419));
              *(&v2270 + v415) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v422, v425), vshlq_n_s16(v425, 2uLL)), vaddq_s16(v418, v22)), 5uLL))), v421);
              v415 += 32;
              v423 = (v423 + v65);
              v422 = v424;
            }

            while (v415 != 512);
            v426 = 0;
            v427 = v76 - 2 * v65;
            v428 = *(v427 + 8);
            v429 = &v427[v65 + 8];
            v430 = (v429 + v65 + v65);
            v431 = vzip1q_s8(*(v430 + v65), v20);
            v432 = vzip1q_s8(*v430, v20);
            v433 = vzip1q_s8(*(v429 + v65), v20);
            v434 = vzip1q_s8(*v429, v20);
            a7 = vzip1q_s8(v428, v20);
            v435 = (v62 + 5 * v65 + v73 + v75 - 2 * v65 + 8);
            v302 = v2253;
            v301 = v2254;
            v303 = v2212;
            do
            {
              a8 = v434;
              v434 = v433;
              v433 = v432;
              v432 = v431;
              v431 = vzip1q_s8(*v435, v20);
              v436 = vsubq_s16(vshlq_n_s16(vaddq_s16(v434, v433), 2uLL), vaddq_s16(a8, v432));
              a10 = vshlq_n_s16(v436, 2uLL);
              v437 = vaddq_s16(vaddq_s16(a7, v436), a10);
              a9 = vaddq_s16(v431, v22);
              *(&v2271 + v426) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(v437, a9), 5uLL))), v434);
              v426 += 32;
              v435 = (v435 + v65);
              a7 = a8;
            }

            while (v426 != 512);
            goto LABEL_326;
          case 2:
            v362 = 0;
            v363 = (v76 - 2 * v65);
            v364 = (v363 + v65 + v65);
            v365 = vzip1q_s8(*(v364 + v65 + v65), v20);
            v366 = vzip1q_s8(*(v364 + v65), v20);
            v367 = vzip1q_s8(*v364, v20);
            v368 = vzip1q_s8(*(v363 + v65), v20);
            v369 = vzip1q_s8(*v363, v20);
            v370 = (v62 + 5 * v65 + v73 + v75 - 2 * v65);
            do
            {
              v371 = v368;
              v368 = v367;
              v367 = v366;
              v366 = v365;
              v372 = &v2270.i8[v362];
              v365 = vzip1q_s8(*v370, v20);
              v373 = vsubq_s16(vshlq_n_s16(vaddq_s16(v368, v367), 2uLL), vaddq_s16(v371, v366));
              v373.val[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v369, v373), vshlq_n_s16(v373, 2uLL)), vaddq_s16(v365, v22)), 5uLL));
              v374 = v20.i64[0];
              vst2_s8(v372, v373);
              v362 += 32;
              v370 = (v370 + v65);
              v369 = v371;
            }

            while (v362 != 512);
            v375 = 0;
            v376 = v76 - 2 * v65;
            v377 = *(v376 + 8);
            v378 = &v376[v65 + 8];
            v379 = (v378 + v65 + v65);
            v380 = vzip1q_s8(*(v379 + v65), v20);
            v381 = vzip1q_s8(*v379, v20);
            v382 = vzip1q_s8(*(v378 + v65), v20);
            v383 = vzip1q_s8(*v378, v20);
            a7 = vzip1q_s8(v377, v20);
            v384 = (v62 + 5 * v65 + v73 + v75 - 2 * v65 + 8);
            v302 = v2253;
            v301 = v2254;
            v303 = v2212;
            do
            {
              a8 = v383;
              v383 = v382;
              v382 = v381;
              v381 = v380;
              v385 = &v2271.i8[v375];
              v380 = vzip1q_s8(*v384, v20);
              v386 = vsubq_s16(vshlq_n_s16(vaddq_s16(v383, v382), 2uLL), vaddq_s16(a8, v381));
              a10 = vshlq_n_s16(v386, 2uLL);
              v387 = vaddq_s16(vaddq_s16(a7, v386), a10);
              a9 = vaddq_s16(v380, v22);
              a9.n128_u64[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(v387, a9), 5uLL));
              a10.n128_u64[0] = v20.i64[0];
              vst2_s8(v385, a9);
              v375 += 32;
              v384 = (v384 + v65);
              a7 = a8;
            }

            while (v375 != 512);
            goto LABEL_326;
          case 3:
            v392 = 0;
            v393 = (v76 - 2 * v65);
            v394 = (v393 + v65 + v65);
            v395 = vzip1q_s8(*(v394 + v65 + v65), v20);
            v396 = vzip1q_s8(*(v394 + v65), v20);
            v397 = vzip1q_s8(*v394, v20);
            v398 = vzip1q_s8(*(v393 + v65), v20);
            v399 = vzip1q_s8(*v393, v20);
            v400 = (v62 + 5 * v65 + v73 + v75 - 2 * v65);
            do
            {
              v401 = v398;
              v398 = v397;
              v397 = v396;
              v396 = v395;
              v395 = vzip1q_s8(*v400, v20);
              v402 = vsubq_s16(vshlq_n_s16(vaddq_s16(v398, v397), 2uLL), vaddq_s16(v401, v396));
              *(&v2270 + v392) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v399, v402), vshlq_n_s16(v402, 2uLL)), vaddq_s16(v395, v22)), 5uLL))), v397);
              v392 += 32;
              v400 = (v400 + v65);
              v399 = v401;
            }

            while (v392 != 512);
            v403 = 0;
            v404 = v76 - 2 * v65;
            v405 = *(v404 + 8);
            v406 = &v404[v65 + 8];
            v407 = (v406 + v65 + v65);
            v408 = vzip1q_s8(*(v407 + v65), v20);
            v409 = vzip1q_s8(*v407, v20);
            v410 = vzip1q_s8(*(v406 + v65), v20);
            v411 = vzip1q_s8(*v406, v20);
            a7 = vzip1q_s8(v405, v20);
            v412 = (v62 + 5 * v65 + v73 + v75 - 2 * v65 + 8);
            v302 = v2253;
            v301 = v2254;
            v303 = v2212;
            do
            {
              a8 = v411;
              v411 = v410;
              v410 = v409;
              v409 = v408;
              v408 = vzip1q_s8(*v412, v20);
              v413 = vsubq_s16(vshlq_n_s16(vaddq_s16(v411, v410), 2uLL), vaddq_s16(a8, v409));
              a10 = vshlq_n_s16(v413, 2uLL);
              v414 = vaddq_s16(vaddq_s16(a7, v413), a10);
              a9 = vaddq_s16(v408, v22);
              *(&v2271 + v403) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(v414, a9), 5uLL))), v410);
              v403 += 32;
              v412 = (v412 + v65);
              a7 = a8;
            }

            while (v403 != 512);
            goto LABEL_326;
          case 4:
            v294 = 0;
            v295 = (v76 - 2);
            do
            {
              v296 = *v295;
              v295 = (v295 + v65);
              v297 = vzip1q_s8(vextq_s8(v296, v296, 2uLL), v20);
              v298 = vsubq_s16(vshlq_n_s16(vaddq_s16(v297, vzip1q_s8(vextq_s8(v296, v296, 3uLL), v20)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v296, v296, 1uLL), v20), vzip1q_s8(vextq_s8(v296, v296, 4uLL), v20)));
              *(&v2270 + v294) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v298, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v296, v20), vzip1q_s8(vextq_s8(v296, v296, 5uLL), v20)), v298)), v22), 5uLL))), v297);
              v294 += 32;
            }

            while (v294 != 512);
            v299 = 0;
            v300 = (v76 + 6);
            v302 = v2253;
            v301 = v2254;
            v303 = v2212;
            do
            {
              v304 = *v300;
              v300 = (v300 + v65);
              v305 = vzip1q_s8(vextq_s8(v304, v304, 2uLL), v20);
              v306 = vsubq_s16(vshlq_n_s16(vaddq_s16(v305, vzip1q_s8(vextq_s8(v304, v304, 3uLL), v20)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v304, v304, 1uLL), v20), vzip1q_s8(vextq_s8(v304, v304, 4uLL), v20)));
              a7 = vzip1q_s8(v304, v20);
              *(&v2271 + v299) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v306, 2uLL), vaddq_s16(vaddq_s16(a7, vzip1q_s8(vextq_s8(v304, v304, 5uLL), v20)), v306)), v22), 5uLL))), v305);
              v299 += 32;
            }

            while (v299 != 512);
            goto LABEL_326;
          case 5:
            v388 = v62 + v75 + v73;
            v389 = v60 | (16 * v59);
            v390 = v65;
            v391 = 2;
            goto LABEL_317;
          case 6:
            v2250 = v63;
            v289 = v59;
            v290 = v79;
            v291 = v61;
            sub_27729B1B0(v2270.i8, 0x20u, v62 + v75 + v73, v65);
            sub_27729B1B0(v2271.i8, 0x20u, v76 + 8, v65);
            goto LABEL_322;
          case 7:
            v388 = v62 + v75 + v73;
            v389 = v60 | (16 * v59);
            v390 = v65;
            v391 = 3;
LABEL_317:
            v438 = 2;
            goto LABEL_320;
          case 8:
            v516 = 0;
            v517 = (v76 - 2);
            do
            {
              v518 = &v2270.i8[v516];
              v519 = *v517;
              v517 = (v517 + v65);
              v520 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v519, v519, 2uLL), v20), vzip1q_s8(vextq_s8(v519, v519, 3uLL), v20)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v519, v519, 1uLL), v20), vzip1q_s8(vextq_s8(v519, v519, 4uLL), v20)));
              *v519.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v520, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v519, v20), vzip1q_s8(vextq_s8(v519, v519, 5uLL), v20)), v520)), v22), 5uLL));
              v520.i64[0] = v20.i64[0];
              vst2_s8(v518, v519);
              v516 += 32;
            }

            while (v516 != 512);
            v521 = 0;
            v522 = (v76 + 6);
            v302 = v2253;
            v301 = v2254;
            v303 = v2212;
            do
            {
              v523 = &v2271.i8[v521];
              v524 = *v522;
              v522 = (v522 + v65);
              v525 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v524, v524, 2uLL), v20), vzip1q_s8(vextq_s8(v524, v524, 3uLL), v20)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v524, v524, 1uLL), v20), vzip1q_s8(vextq_s8(v524, v524, 4uLL), v20)));
              *v524.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v525, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v524, v20), vzip1q_s8(vextq_s8(v524, v524, 5uLL), v20)), v525)), v22), 5uLL));
              v525.i64[0] = v20.i64[0];
              vst2_s8(v523, v524);
              v521 += 32;
            }

            while (v521 != 512);
            goto LABEL_326;
          case 9:
            v2260 = v59;
            v292 = v79;
            v293 = v61;
            sub_27729B614(v2270.i8, 0x20u, v62 + v75 + v73, v65, 16);
            sub_27729B614(v2271.i8, 0x20u, v76 + 8, v65, 16);
            goto LABEL_324;
          case 10:
            v2260 = v59;
            v292 = v79;
            v293 = v61;
            sub_27729B7DC(&v2270, 32, v62 + v75 + v73, v65, 16);
            sub_27729B7DC(&v2271, 32, v76 + 8, v65, 16);
            goto LABEL_324;
          case 11:
            v2260 = v59;
            v292 = v79;
            v293 = v61;
            sub_27729B98C(v2270.i8, 0x20u, v62 + v75 + v73, v65, 16);
            sub_27729B98C(v2271.i8, 0x20u, v76 + 8, v65, 16);
LABEL_324:
            v61 = v293;
            v81 = v292;
            v59 = v2260;
            goto LABEL_325;
          case 12:
            v334 = 0;
            v335 = (v76 - 2);
            do
            {
              v336 = *v335;
              v335 = (v335 + v65);
              v337 = vzip1q_s8(vextq_s8(v336, v336, 3uLL), v20);
              v338 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v336, v336, 2uLL), v20), v337), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v336, v336, 1uLL), v20), vzip1q_s8(vextq_s8(v336, v336, 4uLL), v20)));
              *(&v2270 + v334) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v338, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v336, v20), vzip1q_s8(vextq_s8(v336, v336, 5uLL), v20)), v338)), v22), 5uLL))), v337);
              v334 += 32;
            }

            while (v334 != 512);
            v339 = 0;
            v340 = (v76 + 6);
            v302 = v2253;
            v301 = v2254;
            v303 = v2212;
            do
            {
              v341 = *v340;
              v340 = (v340 + v65);
              v342 = vzip1q_s8(vextq_s8(v341, v341, 3uLL), v20);
              v343 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v341, v341, 2uLL), v20), v342), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v341, v341, 1uLL), v20), vzip1q_s8(vextq_s8(v341, v341, 4uLL), v20)));
              a7 = vzip1q_s8(v341, v20);
              *(&v2271 + v339) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v343, 2uLL), vaddq_s16(vaddq_s16(a7, vzip1q_s8(vextq_s8(v341, v341, 5uLL), v20)), v343)), v22), 5uLL))), v342);
              v339 += 32;
            }

            while (v339 != 512);
            goto LABEL_326;
          case 13:
            v388 = v62 + v75 + v73;
            v389 = v60 | (16 * v59);
            v390 = v65;
            v391 = 2;
            goto LABEL_319;
          case 14:
            v2250 = v63;
            v289 = v59;
            v290 = v79;
            v291 = v61;
            sub_27729BBEC(v2270.i8, 0x20u, v62 + v75 + v73, v65);
            sub_27729BBEC(v2271.i8, 0x20u, v76 + 8, v65);
LABEL_322:
            v61 = v291;
            v81 = v290;
            v59 = v289;
            v63 = v2250;
            goto LABEL_325;
          case 15:
            v388 = v62 + v75 + v73;
            v389 = v60 | (16 * v59);
            v390 = v65;
            v391 = 3;
LABEL_319:
            v438 = 3;
LABEL_320:
            sub_27729AF04(v2270.i8, v388, v390, 16, v391, v438);
            v61 = v389;
LABEL_325:
            v22.i64[0] = 0x10001000100010;
            v22.i64[1] = 0x10001000100010;
            v21.i64[0] = 0x20002000200020;
            v21.i64[1] = 0x20002000200020;
            v10 = v2266;
            v20 = v2268;
            v302 = v2253;
            v301 = v2254;
            v303 = v2212;
LABEL_326:
            v439 = 0;
            v440 = v2235;
            v441 = v301;
            do
            {
              v443 = *(&v2270 + v439);
              v442 = *(&v2270 + v439 + 16);
              v445 = *(&v2272 + v439);
              v444 = v2273[v439 / 0x10];
              if (v301)
              {
                a7 = *v441;
                a8 = v441[1];
                a9 = v441[2];
                a10 = v441[3];
                v441 += 4;
                v443 = vaddq_s16(a7, v443);
                v442 = vaddq_s16(a8, v442);
                v445 = vaddq_s16(a9, v445);
                v444 = vaddq_s16(a10, v444);
              }

              a6 = vqmovun_high_s16(vqmovun_s16(v443), v442);
              *v440 = a6;
              *(v440 + v302) = vqmovun_high_s16(vqmovun_s16(v445), v444);
              v440 = (v440 + v303);
              v439 += 64;
            }

            while (v439 != 512);
            break;
          default:
            if (v2254)
            {
              v84 = 0;
              v85 = v2235;
              do
              {
                v86 = *v76;
                v76 = (v76 + v65);
                a6 = vzip1q_s8(v86, v20);
                *v85 = vqmovun_high_s16(vqmovun_s16(vaddq_s16(v2254[v84], a6)), vaddq_s16(v2254[v84 + 1], vzip2q_s8(v86, v20)));
                v85 = (v85 + v2253);
                v84 += 2;
              }

              while ((v84 * 16) != 512);
            }

            else
            {
              v526 = 16;
              v527 = v2235;
              do
              {
                v528 = *v76;
                v76 = (v76 + v65);
                *v527 = v528;
                v527 = (v527 + v2253);
                --v526;
              }

              while (v526);
            }

            break;
        }

        if (v61)
        {
          v446 = v60 * v59;
          v447 = v60 * v59 - (8 * v59 + 8 * v60) + 64;
          v448 = v20;
          v448.i32[0] = v447 | (v447 << 16);
          a7 = xmmword_2773B3DF0;
          v449 = vqtbl1q_s8(v448, xmmword_2773B3DF0);
          v450 = v20;
          v450.i32[0] = (8 * v59 - v446) | ((8 * v59 - v446) << 16);
          v451 = v20;
          v451.i32[0] = (8 * v60 - v446) | ((8 * v60 - v446) << 16);
          v452 = vqtbl1q_s8(v450, xmmword_2773B3DF0);
          v453 = vqtbl1q_s8(v451, xmmword_2773B3DF0);
          v454 = v20;
          v454.i32[0] = 65537 * v60 * v59;
          v2288 = v449;
          v2289 = v452;
          v455 = vqtbl1q_s8(v454, xmmword_2773B3DF0);
          v2290 = v453;
          v2291 = v455;
          if (v61 == 64)
          {
            __asm { PRFM            #0, [X26] }

            v476 = 9;
            v471 = v2278;
            do
            {
              v477 = _X26;
              _X26 = (_X26 + v67);
              __asm { PRFM            #0, [X26] }

              v479 = vextq_s8(*v477, *v477, 2uLL);
              v479.i16[7] = v477[1].i16[0];
              v480 = vrhaddq_u8(*v477, v479);
              v479.i64[0] = v20.i64[0];
              v471[3] = vzip2q_s8(v480, v20);
              v471 += 2;
              vst2_s8(v471->i8, *(&v479 - 8));
              --v476;
            }

            while (v476 > 2);
            v481 = vextq_s8(*_X26, *_X26, 2uLL);
            v481.i16[7] = _X26[1].i16[0];
            v470 = vrhaddq_u8(*_X26, v481);
            v464 = v471 + 2;
LABEL_343:
            v483 = v2251;
            v482 = v2252;
            v484 = v20.i64[0];
            vst2_s8(v464->i8, v470);
            v471[3] = vzip2q_s8(v470, v20);
          }

          else
          {
            if (v61 == 4)
            {
              _X8 = &_X26->i8[v67];
              __asm { PRFM            #0, [X8] }

              v462 = *_X26;
              v463 = (v63 + v81 + v82);
              v464 = &v2279;
              for (i = 9; i > 2; --i)
              {
                _X12 = &v463->i8[2 * v67];
                v463 = (v463 + v67);
                __asm { PRFM            #0, [X12] }

                v468 = *v463;
                v469 = vrhaddq_u8(v462, *v463);
                *v464 = vzip1q_s8(v469, v20);
                v464[1] = vzip2q_s8(v469, v20);
                v464 += 2;
                v462 = v468;
              }

              v470 = vrhaddq_u8(v468, *(v463 + v67));
              v471 = v464 - 2;
              goto LABEL_343;
            }

            v485 = 0;
            v2289 = v452;
            v2291 = v455;
            _X9 = &_X26->i8[v67];
            __asm { PRFM            #0, [X9] }

            a8.n128_u64[0] = _X26->i64[0];
            a7 = xmmword_2773B3E00;
            v488 = vqtbl1q_s8(a8, xmmword_2773B3E00);
            v488.i16[3] = _X26->i16[4];
            v489 = vzip1q_s8(v488, v20);
            v490 = vzip1q_s8(a8, v20);
            v491 = (v63 + v82 + v81 + v67 + 8);
            _X12 = v63 + v82 + v81 + 2 * v67;
            do
            {
              __asm { PRFM            #0, [X12] }

              v494 = vmlaq_s16(vmulq_s16(v452, v489), v449, v490);
              v489.i64[0] = *(v491 - 1);
              v490 = vzip1q_s8(v489, v20);
              v495 = vqtbl1q_s8(v489, xmmword_2773B3E00);
              v495.i16[3] = *v491;
              v491 = (v491 + v67);
              v489 = vzip1q_s8(v495, v20);
              *(&v2279 + v485) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v494, v453, v490), v455, v489), v21), 6uLL);
              v485 += 32;
              _X12 += v67;
            }

            while (v485 != 256);
            v496 = 0;
            _X9 = &_X26->i8[v67 + 8];
            __asm { PRFM            #0, [X9] }

            v490.i64[0] = _X26->i64[1];
            v499 = vqtbl1q_s8(v490, xmmword_2773B3E00);
            v499.i16[3] = _X26[1].i16[0];
            a9 = vzip1q_s8(v499, v20);
            a8 = vzip1q_s8(v490, v20);
            v500 = v63 + v81 + v67;
            v501 = v63 + v81 + 2 * v67 + 8;
            v483 = v2251;
            v482 = v2252;
            do
            {
              _X12 = v501 + v82;
              __asm { PRFM            #0, [X12] }

              v504 = vmlaq_s16(vmulq_s16(v452, a9), v449, a8);
              a9.n128_u64[0] = *(v500 + v82 + 8);
              a8 = vzip1q_s8(a9, v20);
              v505 = vqtbl1q_s8(a9, xmmword_2773B3E00);
              v505.i16[3] = *(v500 + v82 + 16);
              a9 = vzip1q_s8(v505, v20);
              a10 = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v504, v453, a8), v455, a9), v21), 6uLL);
              *(&v2280 + v496) = a10;
              v496 += 32;
              v500 += v67;
              v501 += v67;
            }

            while (v496 != 256);
          }

          v506 = 0;
          v507 = v2233;
          v508 = v482;
          do
          {
            v510 = *(&v2279 + v506);
            v509 = *(&v2279 + v506 + 16);
            v512 = *(&v2281 + v506);
            v511 = v2282[v506 / 0x10];
            if (v482)
            {
              a7 = *v508;
              a8 = v508[1];
              a9 = v508[2];
              a10 = v508[3];
              v508 += 4;
              v510 = vaddq_s16(a7, v510);
              v509 = vaddq_s16(a8, v509);
              v512 = vaddq_s16(a9, v512);
              v511 = vaddq_s16(a10, v511);
            }

            a6 = vqmovun_high_s16(vqmovun_s16(v510), v509);
            *v507 = a6;
            *(v507 + v483) = vqmovun_high_s16(vqmovun_s16(v512), v511);
            v507 = (v507 + v2209);
            v506 += 64;
          }

          while (v506 != 256);
        }

        else if (v2252)
        {
          v472 = 0;
          v473 = v2233;
          do
          {
            v474 = *_X26;
            _X26 = (_X26 + v67);
            a6 = vzip1q_s8(v474, v20);
            *v473 = vqmovun_high_s16(vqmovun_s16(vaddq_s16(v2252[v472], a6)), vaddq_s16(v2252[v472 + 1], vzip2q_s8(v474, v20)));
            v473 = (v473 + v2251);
            v472 += 2;
          }

          while ((v472 * 16) != 256);
        }

        else
        {
          v513 = 8;
          v514 = v2233;
          do
          {
            v515 = *_X26;
            _X26 = (_X26 + v67);
            *v514 = v515;
            v514 = (v514 + v2251);
            --v513;
          }

          while (v513);
        }

LABEL_352:
        if (v2265 == 1)
        {
          return;
        }

        goto LABEL_1059;
      }

      v87 = v39 >> 2;
      v88 = v60 * v59;
      v89 = v60 * v59 - (8 * v59 + 8 * v60) + 64;
      v90 = v20;
      v90.i32[0] = v89 | (v89 << 16);
      v91 = v20;
      v91.i32[0] = (8 * v59 - v88) | ((8 * v59 - v88) << 16);
      v92 = vqtbl1q_s8(v90, xmmword_2773B3DF0);
      v93 = vqtbl1q_s8(v91, xmmword_2773B3DF0);
      v94 = v20;
      v94.i32[0] = (8 * v60 - v88) | ((8 * v60 - v88) << 16);
      v95 = vqtbl1q_s8(v94, xmmword_2773B3DF0);
      v96 = v20;
      v96.i32[0] = 65537 * v60 * v59;
      v97 = vqtbl1q_s8(v96, xmmword_2773B3DF0);
      v2288 = v92;
      v2289 = v93;
      v2290 = v95;
      v2291 = v97;
      switch(v57)
      {
        case 4:
          v215 = v2234 + v29 + (v38 >> 2);
          v216 = v87 + v2243 + v2256;
          if (v215 <= -18)
          {
            v215 = -18;
          }

          if (v216 <= -18)
          {
            v216 = -18;
          }

          if (v215 >= v64 + 1)
          {
            v217 = v64 + 1;
          }

          else
          {
            v217 = v215;
          }

          if (v216 >= v68 + 1)
          {
            v218 = v68 + 1;
          }

          else
          {
            v218 = v216;
          }

          v219 = (v62 + v217 + v218 * v65);
          v220 = ((v38 >> 2) & 0xFFFFFFFE) + v2234 + v29;
          v221 = (v39 >> 3) + ((v2243 + v2256) >> 1);
          if (v220 <= -16)
          {
            v220 = -16;
          }

          if (v221 <= -8)
          {
            v221 = -8;
          }

          if (v220 >= v66 - 2)
          {
            v220 = v66 - 2;
          }

          v222 = v63 + v220;
          if (v221 >= v69)
          {
            v221 = v69 - 1;
          }

          v2249 = v222 + v221 * v67;
          v223 = (v2235 + v29 + (v2253 * v2256));
          v224 = (&v2254[2 * v2256] + 2 * v29);
          v225 = (v2233 + v29 + (v2256 >> 1) * v2251);
          v226 = (v2252[2 * (v2256 >> 1)].n128_u64 + 2 * v29);
          if (v2258 == 8)
          {
            v227 = &v219[v65];
            switch(v58)
            {
              case 1:
                v1580 = sub_27729F23C(&v2270, v219, v65, v96, v91, 3.52371676e-294, a6, a7.n128_f64[0], a8, a9, a10);
                v232 = sub_27729F23C(&v2272, v227, v65, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587);
                break;
              case 2:
                v1540 = sub_27729F394(&v2270, v219, v65, *v96.i64, v91, xmmword_2773B3DF0, a6.n128_f64[0], a7, a8, a9, a10);
                sub_27729F394(&v2272, v227, v65, v1540, v1541, v1542, v1543, v1544, v1545, v1546, v1547);
                break;
              case 3:
                v1556 = sub_27729F4D8(&v2270, v219, v65, v96, v91, 3.52371676e-294, a6, a7.n128_f64[0], a8, a9, a10);
                v232 = sub_27729F4D8(&v2272, v227, v65, v1556, v1557, v1558, v1559, v1560, v1561, v1562, v1563);
                break;
              case 4:
                sub_27729C91C(&v2270, 8u, v219, v65);
                v232 = sub_27729C91C(&v2272, 8u, v227, v65);
                break;
              case 5:
                *v1588.i64 = sub_27729CAF0(&v2270, 8u, v219, v65, v96, *v91.i64, 3.52371676e-294, a6.n128_f64[0], a7.n128_f64[0], a8, a9, a10);
                sub_27729CAF0(&v2272, 8u, v227, v65, v1588, v1589, v1590, v1591, v1592, v1593, v1594, v1595);
                break;
              case 6:
                *v1604.i64 = sub_27729CDD0(&v2270, 8u, v219, v65, v96, v91, xmmword_2773B3DF0, a6, a7, a8, a9, a10);
                sub_27729CDD0(&v2272, 8u, v227, v65, v1604, v1605, v1606, v1607, v1608, v1609, v1610, v1611);
                break;
              case 7:
                v1572 = sub_27729D274(&v2270, 8u, v219, v65, *v96.i64, *v91.i64, 3.52371676e-294, a6.n128_f64[0], a7.n128_f64[0], a8.n128_f64[0], a9, a10);
                sub_27729D274(&v2272, 8u, v227, v65, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579);
                break;
              case 8:
                sub_27729D550(&v2270, 8u, v219, v65);
                v232 = sub_27729D550(&v2272, 8u, v227, v65);
                break;
              case 9:
                sub_27729D714(&v2270, 8u, v219, v65);
                sub_27729D714(&v2272, 8u, v227, v65);
                break;
              case 10:
                *v1614.i64 = sub_27729F62C(&v2270, v219, v65, v96, v91, xmmword_2773B3DF0, a6, a7, a8, a9, a10);
                sub_27729F62C(&v2272, v227, v65, v1614, v1615, v1616, v1617, v1618, v1619, v1620, v1621);
                break;
              case 11:
                sub_27729DE6C(&v2270, 8u, v219, v65);
                sub_27729DE6C(&v2272, 8u, v227, v65);
                break;
              case 12:
                sub_27729E5C4(&v2270, 8u, v219, v65);
                v232 = sub_27729E5C4(&v2272, 8u, v227, v65);
                break;
              case 13:
                *v1596.i64 = sub_27729E798(&v2270, 8u, v219, v65, v96, *v91.i64, 3.52371676e-294, a6.n128_f64[0], a7.n128_f64[0], a8, a9, a10);
                sub_27729E798(&v2272, 8u, v227, v65, v1596, v1597, v1598, v1599, v1600, v1601, v1602, v1603);
                break;
              case 14:
                *v1531.i64 = sub_27729EA7C(&v2270, 8u, v219, v65, v96, v91, xmmword_2773B3DF0, a6, a7, a8, a9, a10);
                sub_27729EA7C(&v2272, 8u, v227, v65, v1531, v1532, v1533, v1534, v1535, v1536, v1537, v1538);
                break;
              case 15:
                v1548 = sub_27729EF20(&v2270, 8u, v219, v65, *v96.i64, *v91.i64, 3.52371676e-294, a6.n128_f64[0], a7.n128_f64[0], a8.n128_f64[0], a9, a10);
                sub_27729EF20(&v2272, 8u, v227, v65, v1548, v1549, v1550, v1551, v1552, v1553, v1554, v1555);
                break;
              default:
                *v228.i64 = sub_27729F200(&v2270, v219, v65, v96, v91, xmmword_2773B3DF0, a6);
                sub_27729F200(&v2272, v227, v65, v228, v229, v230, v231);
                break;
            }

            v1622 = 1;
            v1623 = &v2270;
            v11 = a1;
            do
            {
              v1624 = v1622;
              v232.i64[0] = v1623->i64[0];
              v233.i64[0] = v1623->i64[1];
              v234.i64[0] = v1623[1].i64[0];
              v235.i64[0] = v1623[1].i64[1];
              if (v2254)
              {
                v236.i64[0] = *v224;
                v237.i64[0] = v224[4];
                v238.i64[0] = v224[8];
                v239.i64[0] = v224[12];
                v224 += 16;
                v232 = vaddq_s16(v236, v232);
                v233 = vaddq_s16(v237, v233);
                v234 = vaddq_s16(v238, v234);
                v235 = vaddq_s16(v239, v235);
              }

              v1622 = 0;
              v1625 = COERCE_DOUBLE(vqmovun_s16(v232));
              v1626 = COERCE_DOUBLE(vqmovun_s16(v233));
              v1627 = COERCE_DOUBLE(vqmovun_s16(v234));
              v1628 = COERCE_DOUBLE(vqmovun_s16(v235));
              v223->n128_u32[0] = LODWORD(v1625);
              *(v223->n128_u32 + v2253) = LODWORD(v1626);
              *(v223->n128_u32 + v2212) = LODWORD(v1627);
              *(v223->n128_u32 + v2199) = LODWORD(v1628);
              v223 = (v223 + v2182);
              v1623 += 2;
            }

            while ((v1624 & 1) != 0);
            v1629 = sub_277290798(&v2279, v2249, v67, v59, v60, v1625, v1626, v1627, v1628, v236, v237);
            sub_277290798(&v2280, v2249 + (2 * v67), v67, v59, v60, v1629, v1630, v1631, v1632, v1633, v1634);
            a6.n128_u64[0] = v2279.u64[1];
            v1635.i64[0] = v2279.i64[0];
            v1637.i64[0] = v2280.n128_i64[1];
            v1636.i64[0] = v2280.n128_u64[0];
            if (v2252)
            {
              a7.n128_u64[0] = *v226;
              a8.n128_u64[0] = v226[4];
              a9.n128_u64[0] = v226[8];
              a10.n128_u64[0] = v226[12];
              v1635 = vaddq_s16(a7, v1635);
              a6 = vaddq_s16(a8, a6);
              v1636 = vaddq_s16(a9, v1636);
              v1637 = vaddq_s16(a10, v1637);
            }

            v10 = v2266;
            v20 = v2268;
            v21.i64[0] = 0x20002000200020;
            v21.i64[1] = 0x20002000200020;
            v22.i64[0] = 0x10001000100010;
            v22.i64[1] = 0x10001000100010;
            a6.n128_u64[0] = vqmovun_s16(a6);
            v225->n128_u32[0] = vqmovun_s16(v1635).u32[0];
            *(v225->n128_u32 + v2251) = a6.n128_u32[0];
            *(v225->n128_u32 + v2209) = vqmovun_s16(v1636).u32[0];
            *(v225->n128_u32 + v2183) = vqmovun_s16(v1637).u32[0];
            goto LABEL_352;
          }

          switch(v58)
          {
            case 1:
              v250 = sub_27729F23C(&v2270, v219, v65, v96, v91, 3.52371676e-294, a6, a7.n128_f64[0], a8, a9, a10);
              break;
            case 2:
              sub_27729F394(&v2270, v219, v65, *v96.i64, v91, xmmword_2773B3DF0, a6.n128_f64[0], a7, a8, a9, a10);
              break;
            case 3:
              v250 = sub_27729F4D8(&v2270, v219, v65, v96, v91, 3.52371676e-294, a6, a7.n128_f64[0], a8, a9, a10);
              break;
            case 4:
              v250 = sub_27729C91C(&v2270, 8u, v219, v65);
              break;
            case 5:
              sub_27729CAF0(&v2270, 8u, v219, v65, v96, *v91.i64, 3.52371676e-294, a6.n128_f64[0], a7.n128_f64[0], a8, a9, a10);
              break;
            case 6:
              sub_27729CDD0(&v2270, 8u, v219, v65, v96, v91, xmmword_2773B3DF0, a6, a7, a8, a9, a10);
              break;
            case 7:
              sub_27729D274(&v2270, 8u, v219, v65, *v96.i64, *v91.i64, 3.52371676e-294, a6.n128_f64[0], a7.n128_f64[0], a8.n128_f64[0], a9, a10);
              break;
            case 8:
              v250 = sub_27729D550(&v2270, 8u, v219, v65);
              break;
            case 9:
              sub_27729D714(&v2270, 8u, v219, v65);
              break;
            case 10:
              sub_27729F62C(&v2270, v219, v65, v96, v91, xmmword_2773B3DF0, a6, a7, a8, a9, a10);
              break;
            case 11:
              sub_27729DE6C(&v2270, 8u, v219, v65);
              break;
            case 12:
              v250 = sub_27729E5C4(&v2270, 8u, v219, v65);
              break;
            case 13:
              sub_27729E798(&v2270, 8u, v219, v65, v96, *v91.i64, 3.52371676e-294, a6.n128_f64[0], a7.n128_f64[0], a8, a9, a10);
              break;
            case 14:
              sub_27729EA7C(&v2270, 8u, v219, v65, v96, v91, xmmword_2773B3DF0, a6, a7, a8, a9, a10);
              break;
            case 15:
              sub_27729EF20(&v2270, 8u, v219, v65, *v96.i64, *v91.i64, 3.52371676e-294, a6.n128_f64[0], a7.n128_f64[0], a8.n128_f64[0], a9, a10);
              break;
            default:
              sub_27729F200(&v2270, v219, v65, v96, v91, xmmword_2773B3DF0, a6);
              break;
          }

          v253.i64[0] = v2270.i64[1];
          v252.i64[0] = v2270.i64[0];
          v251.i64[0] = v2271.i64[1];
          v250.i64[0] = v2271.i64[0];
          if (v2254)
          {
            v254.i64[0] = *v224;
            v255.i64[0] = v224[4];
            v256.i64[0] = v224[8];
            v257.i64[0] = v224[12];
            v252 = vaddq_s16(v254, v252);
            v253 = vaddq_s16(v255, v253);
            v250 = vaddq_s16(v256, v250);
            v251 = vaddq_s16(v257, v251);
          }

          v1638 = COERCE_DOUBLE(vqmovun_s16(v252));
          v1639 = COERCE_DOUBLE(vqmovun_s16(v253));
          v223->n128_u32[0] = LODWORD(v1638);
          *(v223->n128_u32 + v2253) = LODWORD(v1639);
          v1640 = COERCE_DOUBLE(vqmovun_s16(v250));
          v1641 = COERCE_DOUBLE(vqmovun_s16(v251));
          *(v223->n128_u32 + v2212) = LODWORD(v1640);
          *(v223->n128_u32 + v2199) = LODWORD(v1641);
          sub_277290798(&v2279, v2249, v67, v59, v60, v1640, v1641, v1638, v1639, v254, v255);
          v1643.i64[0] = v2279.i64[1];
          v1644.i64[0] = v2279.i64[0];
          if (v2252)
          {
            v1642.i64[0] = *v226;
            a6.n128_u64[0] = v226[4];
            v1644 = vaddq_s16(v1642, v1644);
            v1643 = vaddq_s16(a6, v1643);
          }

          v10 = v2266;
          v20 = v2268;
          v21.i64[0] = 0x20002000200020;
          v21.i64[1] = 0x20002000200020;
          v22.i64[0] = 0x10001000100010;
          v22.i64[1] = 0x10001000100010;
          v225->n128_u32[0] = vqmovun_s16(v1644).u32[0];
          *(v225->n128_u32 + v2251) = vqmovun_s16(v1643).u32[0];
          break;
        case 8:
          switch(v2258)
          {
            case 4u:
              v344 = v2234 + v29 + (v38 >> 2);
              v345 = v87 + v2243 + v2256;
              if (v344 <= -18)
              {
                v344 = -18;
              }

              if (v345 <= -18)
              {
                v345 = -18;
              }

              if (v344 >= v64 + 1)
              {
                v346 = v64 + 1;
              }

              else
              {
                v346 = v344;
              }

              if (v345 >= v68 + 1)
              {
                v347 = v68 + 1;
              }

              else
              {
                v347 = v345;
              }

              v348 = (v62 + v346 + v347 * v65);
              v349 = ((v38 >> 2) & 0xFFFFFFFE) + v2234 + v29;
              v350 = (v39 >> 3) + ((v2243 + v2256) >> 1);
              if (v349 <= -16)
              {
                v349 = -16;
              }

              if (v350 <= -8)
              {
                v350 = -8;
              }

              if (v349 >= v66 - 2)
              {
                v349 = v66 - 2;
              }

              if (v350 >= v69)
              {
                v350 = v69 - 1;
              }

              v351 = (v63 + v349 + v350 * v67);
              v352 = (v2235 + v29 + (v2253 * v2256));
              v353 = (&v2254[2 * v2256] + 2 * v29);
              v354 = (v2233 + v29 + (v2256 >> 1) * v2251);
              v355 = &v2252[2 * (v2256 >> 1)] + 2 * v29;
              switch(v58)
              {
                case 1:
                  sub_27729AC20(&v2270, 0x10u, v348, v65, 4);
                  goto LABEL_1126;
                case 2:
                  sub_27729ACE8(v2270.i8, 0x10u, v348, v65, 4);
                  goto LABEL_1126;
                case 3:
                  sub_27729ADA4(&v2270, 0x10u, v348, v65, 4);
                  goto LABEL_1126;
                case 4:
                  sub_27729C91C(&v2270, 0x10u, v348, v65);
                  sub_27729C91C(&v2270.i64[1], 0x10u, v348->val + 4, v65);
                  goto LABEL_1126;
                case 5:
                  *v2118.i64 = sub_27729CAF0(&v2270, 0x10u, v348, v65, v96, *v91.i64, 3.52371676e-294, a6.n128_f64[0], a7.n128_f64[0], a8, a9, a10);
                  sub_27729CAF0(&v2270.i64[1], 0x10u, v348->val + 4, v65, v2118, v2119, v2120, v2121, v2122, v2123, v2124, v2125);
                  goto LABEL_1126;
                case 6:
                  *v2134.i64 = sub_27729CDD0(&v2270, 0x10u, v348, v65, v96, v91, xmmword_2773B3DF0, a6, a7, a8, a9, a10);
                  sub_27729CDD0(&v2270.i64[1], 0x10u, v348->val + 4, v65, v2134, v2135, v2136, v2137, v2138, v2139, v2140, v2141);
                  goto LABEL_1126;
                case 7:
                  v2080 = sub_27729D274(&v2270, 0x10u, v348, v65, *v96.i64, *v91.i64, 3.52371676e-294, a6.n128_f64[0], a7.n128_f64[0], a8.n128_f64[0], a9, a10);
                  sub_27729D274(&v2270.i64[1], 0x10u, v348->val + 4, v65, v2080, v2081, v2082, v2083, v2084, v2085, v2086, v2087);
                  goto LABEL_1126;
                case 8:
                  sub_27729D550(&v2270, 0x10u, v348, v65);
                  sub_27729D550(&v2270.i64[1], 0x10u, v348->val + 4, v65);
                  goto LABEL_1126;
                case 9:
                  sub_27729D714(&v2270, 0x10u, v348, v65);
                  sub_27729D714(&v2270.i64[1], 0x10u, v348->val + 4, v65);
                  goto LABEL_1126;
                case 10:
                  sub_27729B7DC(&v2270, 16, v348, v65, 4);
                  goto LABEL_1126;
                case 11:
                  sub_27729DE6C(&v2270, 0x10u, v348, v65);
                  sub_27729DE6C(&v2270.i64[1], 0x10u, v348->val + 4, v65);
                  goto LABEL_1126;
                case 12:
                  sub_27729E5C4(&v2270, 0x10u, v348, v65);
                  sub_27729E5C4(&v2270.i64[1], 0x10u, v348->val + 4, v65);
                  goto LABEL_1126;
                case 13:
                  *v2126.i64 = sub_27729E798(&v2270, 0x10u, v348, v65, v96, *v91.i64, 3.52371676e-294, a6.n128_f64[0], a7.n128_f64[0], a8, a9, a10);
                  sub_27729E798(&v2270.i64[1], 0x10u, v348->val + 4, v65, v2126, v2127, v2128, v2129, v2130, v2131, v2132, v2133);
                  goto LABEL_1126;
                case 14:
                  *v2058.i64 = sub_27729EA7C(&v2270, 0x10u, v348, v65, v96, v91, xmmword_2773B3DF0, a6, a7, a8, a9, a10);
                  sub_27729EA7C(&v2270.i64[1], 0x10u, v348->val + 4, v65, v2058, v2059, v2060, v2061, v2062, v2063, v2064, v2065);
                  goto LABEL_1126;
                case 15:
                  v2069 = sub_27729EF20(&v2270, 0x10u, v348, v65, *v96.i64, *v91.i64, 3.52371676e-294, a6.n128_f64[0], a7.n128_f64[0], a8.n128_f64[0], a9, a10);
                  sub_27729EF20(&v2270.i64[1], 0x10u, v348->val + 4, v65, v2069, v2070, v2071, v2072, v2073, v2074, v2075, v2076);
LABEL_1126:
                  v357 = v2253;
                  v358 = v2212;
                  break;
                default:
                  v356 = 0;
                  v357 = v2253;
                  v358 = v2212;
                  do
                  {
                    v359 = &v2270.i8[v356];
                    v360 = *v348;
                    v348 = (v348 + v65);
                    v361 = v20.i64[0];
                    vst2_s8(v359, v360);
                    v356 += 16;
                  }

                  while (v356 != 64);
                  break;
              }

              v2143 = v2270;
              v2144 = v2271;
              v2145 = v2272;
              v2146 = v2273[0];
              if (v2254)
              {
                v2143 = vaddq_s16(*v353, v2270);
                v2144 = vaddq_s16(v353[2], v2271);
                v2145 = vaddq_s16(v353[4], v2272);
                v2146 = vaddq_s16(v353[6], v2273[0]);
              }

              *v352 = vqmovun_s16(v2143);
              *(v352 + v357) = vqmovun_s16(v2144);
              *(v352 + v358) = vqmovun_s16(v2145);
              *(v352 + v2199) = vqmovun_s16(v2146);
              sub_2772906A8(&v2279, v351, v67, &v2288);
              v2147 = v2279;
              v2148 = v2280;
              if (v2252)
              {
                a6 = *(v355 + 32);
                v2147 = vaddq_s16(*v355, v2279);
                v2148 = vaddq_s16(a6, v2280);
              }

              v11 = a1;
              v10 = v2266;
              v20 = v2268;
              v21.i64[0] = 0x20002000200020;
              v21.i64[1] = 0x20002000200020;
              v22.i64[0] = 0x10001000100010;
              v22.i64[1] = 0x10001000100010;
              *v354 = vqmovun_s16(v2147);
              *(v354 + v2251) = vqmovun_s16(v2148);
              goto LABEL_352;
            case 8u:
              v307 = v2234 + v29;
              v308 = v38 >> 2;
              v309 = v2234 + v29 + (v38 >> 2);
              v310 = v87 + v2243 + v2256;
              if (v309 <= -18)
              {
                v309 = -18;
              }

              if (v310 <= -18)
              {
                v310 = -18;
              }

              if (v309 >= v64 + 1)
              {
                v311 = v64 + 1;
              }

              else
              {
                v311 = v309;
              }

              if (v310 >= v68 + 1)
              {
                v312 = v68 + 1;
              }

              else
              {
                v312 = v310;
              }

              v313 = (v62 + v311 + v312 * v65);
              v314 = (v308 & 0xFFFFFFFE) + v307;
              v315 = (v39 >> 3) + ((v2243 + v2256) >> 1);
              if (v314 <= -16)
              {
                v316 = -16;
              }

              else
              {
                v316 = (v308 & 0xFFFFFFFE) + v307;
              }

              if (v315 <= -8)
              {
                v315 = -8;
              }

              v317 = v66 - 2;
              if (v316 >= v66 - 2)
              {
                v316 = v66 - 2;
              }

              v318 = v63;
              v319 = v63 + v316;
              if (v315 >= v69)
              {
                v315 = v69 - 1;
              }

              v320 = v315 * v67;
              v321 = v319 + v320;
              v322 = (v2235 + v29 + (v2253 * v2256));
              v323 = (&v2254[2 * v2256] + 2 * v29);
              v324 = (v2233 + v29 + (v2256 >> 1) * v2251);
              v325 = &v2252[2 * (v2256 >> 1)] + 2 * v29;
              v2261 = (v308 & 0xFFFFFFFE) + v307;
              switch(v58)
              {
                case 1:
                  sub_27729AC20(&v2270, 0x10u, v313, v65, 8);
                  goto LABEL_1102;
                case 2:
                  sub_27729ACE8(v2270.i8, 0x10u, v313, v65, 8);
                  goto LABEL_1102;
                case 3:
                  sub_27729ADA4(&v2270, 0x10u, v313, v65, 8);
                  goto LABEL_1102;
                case 4:
                  sub_27729AE6C(&v2270, 0x10u, v313, v65, 8);
                  goto LABEL_1102;
                case 5:
                  v2066 = v313;
                  v2067 = v65;
                  v2068 = 2;
                  goto LABEL_1097;
                case 6:
                  sub_27729BFC4(v2270.i8, 0x10u, v313, v65);
                  goto LABEL_1102;
                case 7:
                  v2066 = v313;
                  v2067 = v65;
                  v2068 = 3;
LABEL_1097:
                  v2088 = 2;
                  goto LABEL_1101;
                case 8:
                  sub_27729B588(v2270.i8, 0x10u, v313, v65, 8, v96);
                  goto LABEL_1102;
                case 9:
                  sub_27729B614(v2270.i8, 0x10u, v313, v65, 8);
                  goto LABEL_1102;
                case 10:
                  sub_27729B7DC(&v2270, 16, v313, v65, 8);
                  goto LABEL_1102;
                case 11:
                  sub_27729B98C(v2270.i8, 0x10u, v313, v65, 8);
                  goto LABEL_1102;
                case 12:
                  sub_27729BB54(&v2270, 0x10u, v313, v65, 8);
                  goto LABEL_1102;
                case 13:
                  v2066 = v313;
                  v2067 = v65;
                  v2068 = 2;
                  goto LABEL_1100;
                case 14:
                  sub_27729C39C(v2270.i8, 0x10u, v313, v65);
                  goto LABEL_1102;
                case 15:
                  v2066 = v313;
                  v2067 = v65;
                  v2068 = 3;
LABEL_1100:
                  v2088 = 3;
LABEL_1101:
                  sub_27729C774(v2270.i8, v2066, v2067, 8, v2068, v2088);
LABEL_1102:
                  v314 = v2261;
                  v22.i64[0] = 0x10001000100010;
                  v22.i64[1] = 0x10001000100010;
                  v21.i64[0] = 0x20002000200020;
                  v21.i64[1] = 0x20002000200020;
                  v10 = v2266;
                  v20 = v2268;
                  v328 = v2253;
                  v327 = v2254;
                  v329 = v2212;
                  v330 = v2182;
                  break;
                default:
                  v326 = 0;
                  v328 = v2253;
                  v327 = v2254;
                  v329 = v2212;
                  v330 = v2182;
                  do
                  {
                    v331 = &v2270.i8[v326];
                    v332 = *v313;
                    v313 = (v313 + v65);
                    v333 = v20.i64[0];
                    vst2_s8(v331, v332);
                    v326 += 16;
                  }

                  while (v326 != 128);
                  break;
              }

              v2089 = 1;
              v2090 = &v2270;
              do
              {
                v2091 = v2089;
                v2092 = *v2090;
                v2093 = v2090[1];
                v2094 = v2090[2];
                v2095 = v2090[3];
                if (v327)
                {
                  v2096 = *v323;
                  v2097 = v323[2];
                  v2098 = v323[4];
                  v2099 = v323[6];
                  v323 += 8;
                  v2092 = vaddq_s16(v2096, v2092);
                  v2093 = vaddq_s16(v2097, v2093);
                  v2094 = vaddq_s16(v2098, v2094);
                  v2095 = vaddq_s16(v2099, v2095);
                }

                v2089 = 0;
                *v322 = vqmovun_s16(v2092);
                *(v322 + v328) = vqmovun_s16(v2093);
                *(v322 + v329) = vqmovun_s16(v2094);
                *(v322 + v2199) = vqmovun_s16(v2095);
                v322 = (v322 + v330);
                v2090 += 4;
              }

              while ((v2091 & 1) != 0);
              v2100 = 0;
              _X9 = v321 + v67;
              __asm { PRFM            #0, [X9] }

              v2093.i64[0] = *v321;
              v2103 = vqtbl1q_s8(v2093, xmmword_2773B3E00);
              v2103.i16[3] = *(v321 + 8);
              a9 = vzip1q_s8(v2103, v20);
              a7 = vzip1q_s8(v2093, v20);
              v2104 = v2288;
              v2105 = v2289;
              v2106 = v2290;
              a8 = v2291;
              v2107 = v314;
              if (v314 <= -16)
              {
                v2107 = -16;
              }

              v2108 = v317;
              if (v2107 < v317)
              {
                v2108 = v2107;
              }

              v2109 = v318 + v67 + v2108;
              v2110 = v318 + v2108 + 2 * v67;
              do
              {
                _X12 = v2110 + v320;
                __asm { PRFM            #0, [X12] }

                v2113 = vmlaq_s16(vmulq_s16(v2105, a9), v2104, a7);
                a9.n128_u64[0] = *(v2109 + v320);
                a7 = vzip1q_s8(a9, v20);
                v2114 = vqtbl1q_s8(a9, xmmword_2773B3E00);
                v2114.i16[3] = *(v2109 + v320 + 8);
                a9 = vzip1q_s8(v2114, v20);
                a10 = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v2113, v2106, a7), a8, a9), v21), 6uLL);
                *(&v2279 + v2100) = a10;
                v2100 += 16;
                v2109 += v67;
                v2110 += v67;
              }

              while (v2100 != 64);
              v2115 = v2279;
              a6 = v2280;
              v2116 = v2281;
              v2117 = v2282[0];
              if (v2252)
              {
                a7 = *v325;
                a8 = *(v325 + 32);
                a9 = *(v325 + 64);
                a10 = *(v325 + 96);
                v2115 = vaddq_s16(*v325, v2279);
                a6 = vaddq_s16(a8, v2280);
                v2116 = vaddq_s16(a9, v2281);
                v2117 = vaddq_s16(a10, v2282[0]);
              }

              v11 = a1;
              a6.n128_u64[0] = vqmovun_s16(a6);
              *v324 = vqmovun_s16(v2115);
              *(v324 + v2251) = a6.n128_u64[0];
              *(v324 + v2209) = vqmovun_s16(v2116);
              *(v324 + v2183) = vqmovun_s16(v2117);
              goto LABEL_352;
            case 0x10u:
              v189 = v2234 + v29;
              v190 = v38 >> 2;
              v191 = v2234 + v29 + (v38 >> 2);
              if (v191 <= -18)
              {
                v191 = -18;
              }

              if (v40 <= -18)
              {
                v192 = -18;
              }

              else
              {
                v192 = v2243 + (v39 >> 2);
              }

              if (v191 >= v64 + 1)
              {
                v193 = v64 + 1;
              }

              else
              {
                v193 = v191;
              }

              if (v192 >= v68 + 1)
              {
                v194 = v68 + 1;
              }

              else
              {
                v194 = v192;
              }

              v195 = (v62 + v193 + v194 * v65);
              v196 = (v190 & 0xFFFFFFFE) + v189;
              v197 = v2196 + (v39 >> 3);
              if (v196 <= -16)
              {
                v198 = -16;
              }

              else
              {
                v198 = (v190 & 0xFFFFFFFE) + v189;
              }

              if (v197 <= -8)
              {
                v197 = -8;
              }

              v199 = v66 - 2;
              if (v198 >= v66 - 2)
              {
                v198 = v66 - 2;
              }

              if (v197 >= v69)
              {
                v197 = v69 - 1;
              }

              v2248 = v63;
              v200 = v197 * v67;
              v201 = v63 + v198 + v200;
              v202 = v200;
              v203 = (v2235 + v29);
              v204 = (v2254 + 2 * v29);
              v205 = (v2233 + v29);
              v206 = (v2252 + 2 * v29);
              v2259 = (v190 & 0xFFFFFFFE) + v189;
              switch(v58)
              {
                case 1:
                  sub_27729AC20(&v2270, 0x10u, v195, v65, 16);
                  goto LABEL_1135;
                case 2:
                  sub_27729ACE8(v2270.i8, 0x10u, v195, v65, 16);
                  goto LABEL_1135;
                case 3:
                  sub_27729ADA4(&v2270, 0x10u, v195, v65, 16);
                  goto LABEL_1135;
                case 4:
                  sub_27729AE6C(&v2270, 0x10u, v195, v65, 16);
                  goto LABEL_1135;
                case 5:
                  v2077 = v195;
                  v2078 = v65;
                  v2079 = 2;
                  goto LABEL_1123;
                case 6:
                  sub_27729B1B0(v2270.i8, 0x10u, v195, v65);
                  goto LABEL_1135;
                case 7:
                  v2077 = v195;
                  v2078 = v65;
                  v2079 = 3;
LABEL_1123:
                  v2142 = 2;
                  goto LABEL_1134;
                case 8:
                  sub_27729B588(v2270.i8, 0x10u, v195, v65, 16, v96);
                  goto LABEL_1135;
                case 9:
                  sub_27729B614(v2270.i8, 0x10u, v195, v65, 16);
                  goto LABEL_1135;
                case 10:
                  sub_27729B7DC(&v2270, 16, v195, v65, 16);
                  goto LABEL_1135;
                case 11:
                  sub_27729B98C(v2270.i8, 0x10u, v195, v65, 16);
                  goto LABEL_1135;
                case 12:
                  sub_27729BB54(&v2270, 0x10u, v195, v65, 16);
                  goto LABEL_1135;
                case 13:
                  v2077 = v195;
                  v2078 = v65;
                  v2079 = 2;
                  goto LABEL_1133;
                case 14:
                  sub_27729BBEC(v2270.i8, 0x10u, v195, v65);
                  goto LABEL_1135;
                case 15:
                  v2077 = v195;
                  v2078 = v65;
                  v2079 = 3;
LABEL_1133:
                  v2142 = 3;
LABEL_1134:
                  sub_27729C774(v2270.i8, v2077, v2078, 16, v2079, v2142);
LABEL_1135:
                  v196 = v2259;
                  v22.i64[0] = 0x10001000100010;
                  v22.i64[1] = 0x10001000100010;
                  v21.i64[0] = 0x20002000200020;
                  v21.i64[1] = 0x20002000200020;
                  v10 = v2266;
                  v20 = v2268;
                  v209 = v2253;
                  v208 = v2254;
                  v210 = v2212;
                  v211 = v2182;
                  break;
                default:
                  v207 = 0;
                  v209 = v2253;
                  v208 = v2254;
                  v210 = v2212;
                  v211 = v2182;
                  do
                  {
                    v212 = &v2270.i8[v207];
                    v213 = *v195;
                    v195 = (v195 + v65);
                    v214 = v20.i64[0];
                    vst2_s8(v212, v213);
                    v207 += 16;
                  }

                  while (v207 != 256);
                  break;
              }

              v2149 = 0;
              do
              {
                v2150 = *(&v2270 + v2149);
                v2151 = *(&v2270 + v2149 + 16);
                v2153 = *(&v2272 + v2149);
                v2152 = v2273[v2149 / 0x10];
                if (v208)
                {
                  v2154 = *v204;
                  v2155 = v204[2];
                  v2156 = v204[4];
                  v2157 = v204[6];
                  v204 += 8;
                  v2150 = vaddq_s16(v2154, v2150);
                  v2151 = vaddq_s16(v2155, v2151);
                  v2153 = vaddq_s16(v2156, v2153);
                  v2152 = vaddq_s16(v2157, v2152);
                }

                *v203 = vqmovun_s16(v2150);
                *(v203 + v209) = vqmovun_s16(v2151);
                *(v203 + v210) = vqmovun_s16(v2153);
                *(v203 + v2199) = vqmovun_s16(v2152);
                v203 = (v203 + v211);
                v2149 += 64;
              }

              while (v2149 != 256);
              v2158 = 0;
              _X9 = v201 + v67;
              __asm { PRFM            #0, [X9] }

              v2150.i64[0] = *v201;
              v2161 = vqtbl1q_s8(v2150, xmmword_2773B3E00);
              v2161.i16[3] = *(v201 + 8);
              a9 = vzip1q_s8(v2161, v20);
              a7 = vzip1q_s8(v2150, v20);
              v2162 = v2288;
              v2163 = v2289;
              v2164 = v2290;
              a8 = v2291;
              v2165 = v196;
              if (v196 <= -16)
              {
                v2165 = -16;
              }

              v2166 = v199;
              if (v2165 < v199)
              {
                v2166 = v2165;
              }

              v2167 = v2248 + v67 + v2166;
              v2168 = v2248 + v2166 + 2 * v67;
              do
              {
                _X12 = v2168 + v202;
                __asm { PRFM            #0, [X12] }

                v2171 = vmlaq_s16(vmulq_s16(v2163, a9), v2162, a7);
                a9.n128_u64[0] = *(v2167 + v202);
                a7 = vzip1q_s8(a9, v20);
                v2172 = vqtbl1q_s8(a9, xmmword_2773B3E00);
                v2172.i16[3] = *(v2167 + v202 + 8);
                a9 = vzip1q_s8(v2172, v20);
                a10 = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v2171, v2164, a7), a8, a9), v21), 6uLL);
                *(&v2279 + v2158) = a10;
                v2158 += 16;
                v2167 += v67;
                v2168 += v67;
              }

              while (v2158 != 128);
              v2173 = 1;
              v2174 = &v2279;
              do
              {
                v2175 = v2173;
                v2176 = *v2174;
                v2177 = v2174[1];
                v2178 = v2174[2];
                a6 = v2174[3];
                if (v2252)
                {
                  a7 = *v206;
                  a8 = v206[2];
                  a9 = v206[4];
                  a10 = v206[6];
                  v206 += 8;
                  v2176 = vaddq_s16(a7, v2176);
                  v2177 = vaddq_s16(a8, v2177);
                  v2178 = vaddq_s16(a9, v2178);
                  a6 = vaddq_s16(a10, a6);
                }

                v2173 = 0;
                a6.n128_u64[0] = vqmovun_s16(a6);
                *v205 = vqmovun_s16(v2176);
                *(v205 + v2251) = vqmovun_s16(v2177);
                *(v205 + v2209) = vqmovun_s16(v2178);
                *(v205 + v2183) = a6.n128_u64[0];
                v205 = (v205 + v2179);
                v2174 += 4;
              }

              while ((v2175 & 1) != 0);
              goto LABEL_352;
          }

          break;
        case 16:
          v98 = v38 >> 2;
          v99 = v2234 + (v38 >> 2);
          v2247 = v63;
          v2244 = v92;
          v2240 = v93;
          v2237 = v95;
          v2229 = v97;
          if (v2258 == 16)
          {
            if (v99 <= -18)
            {
              v100 = -18;
            }

            else
            {
              v100 = v2234 + (v38 >> 2);
            }

            if (v40 <= -18)
            {
              v101 = -18;
            }

            else
            {
              v101 = v2243 + (v39 >> 2);
            }

            if (v100 >= v64 + 1)
            {
              v102 = v64 + 1;
            }

            else
            {
              v102 = v100;
            }

            if (v101 >= v68 + 1)
            {
              v103 = v68 + 1;
            }

            else
            {
              v103 = v101;
            }

            v104 = (v62 + v102 + v103 * v65);
            v105 = (v98 & 0xFFFFFFFE) + v2234;
            v106 = v2196 + (v39 >> 3);
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

            if (v106 >= v69)
            {
              v106 = v69 - 1;
            }

            v107 = v105;
            v108 = v106 * v67;
            _X22 = (v63 + v105 + v108);
            switch(v58)
            {
              case 1:
                v2263 = v61;
                sub_27729AC20(&v2270, 0x20u, v104, v65, 16);
                sub_27729AC20(&v2271, 0x20u, &v104->i64[1], v65, 16);
                goto LABEL_839;
              case 2:
                v2263 = v61;
                sub_27729ACE8(v2270.i8, 0x20u, v104, v65, 16);
                sub_27729ACE8(v2271.i8, 0x20u, &v104->i64[1], v65, 16);
                goto LABEL_839;
              case 3:
                v2263 = v61;
                sub_27729ADA4(&v2270, 0x20u, v104, v65, 16);
                sub_27729ADA4(&v2271, 0x20u, &v104->i64[1], v65, 16);
                goto LABEL_839;
              case 4:
                v2263 = v61;
                sub_27729AE6C(&v2270, 0x20u, v104, v65, 16);
                sub_27729AE6C(&v2271, 0x20u, &v104->i64[1], v65, 16);
                goto LABEL_839;
              case 5:
                v1564 = v104;
                v1565 = v61;
                v1566 = v65;
                v1567 = 2;
                goto LABEL_808;
              case 6:
                v1539 = v61;
                sub_27729B1B0(v2270.i8, 0x20u, v104, v65);
                sub_27729B1B0(v2271.i8, 0x20u, &v104->i64[1], v65);
                goto LABEL_834;
              case 7:
                v1564 = v104;
                v1565 = v61;
                v1566 = v65;
                v1567 = 3;
LABEL_808:
                v1612 = 2;
                goto LABEL_829;
              case 8:
                v2263 = v61;
                sub_27729B588(v2270.i8, 0x20u, v104, v65, 16, v96);
                sub_27729B588(v2271.i8, 0x20u, &v104->i64[1], v65, 16, v1645);
                goto LABEL_839;
              case 9:
                v2263 = v61;
                sub_27729B614(v2270.i8, 0x20u, v104, v65, 16);
                sub_27729B614(v2271.i8, 0x20u, &v104->i64[1], v65, 16);
                goto LABEL_839;
              case 10:
                v2263 = v61;
                sub_27729B7DC(&v2270, 32, v104, v65, 16);
                sub_27729B7DC(&v2271, 32, &v104->i64[1], v65, 16);
                goto LABEL_839;
              case 11:
                v2263 = v61;
                sub_27729B98C(v2270.i8, 0x20u, v104, v65, 16);
                sub_27729B98C(v2271.i8, 0x20u, &v104->i64[1], v65, 16);
                goto LABEL_839;
              case 12:
                v2263 = v61;
                sub_27729BB54(&v2270, 0x20u, v104, v65, 16);
                sub_27729BB54(&v2271, 0x20u, &v104->i64[1], v65, 16);
LABEL_839:
                v97 = v2229;
                v95 = v2237;
                v93 = v2240;
                v92 = v2244;
                v61 = v2263;
                goto LABEL_840;
              case 13:
                v1564 = v104;
                v1565 = v61;
                v1566 = v65;
                v1567 = 2;
                goto LABEL_828;
              case 14:
                v1539 = v61;
                sub_27729BBEC(v2270.i8, 0x20u, v104, v65);
                sub_27729BBEC(v2271.i8, 0x20u, &v104->i64[1], v65);
LABEL_834:
                v97 = v2229;
                v95 = v2237;
                v93 = v2240;
                v92 = v2244;
                v61 = v1539;
                goto LABEL_840;
              case 15:
                v1564 = v104;
                v1565 = v61;
                v1566 = v65;
                v1567 = 3;
LABEL_828:
                v1612 = 3;
LABEL_829:
                sub_27729AF04(v2270.i8, v1564, v1566, 16, v1567, v1612);
                v97 = v2229;
                v95 = v2237;
                v93 = v2240;
                v92 = v2244;
                v61 = v1565;
LABEL_840:
                v22.i64[0] = 0x10001000100010;
                v22.i64[1] = 0x10001000100010;
                v21.i64[0] = 0x20002000200020;
                v21.i64[1] = 0x20002000200020;
                v10 = v2266;
                v20 = v2268;
                v111 = v2252;
                v112 = v2253;
                v113 = v2212;
                break;
              default:
                v110 = 0;
                v111 = v2252;
                v112 = v2253;
                v113 = v2212;
                do
                {
                  v114 = &v2270.i8[v110];
                  v115 = *v104;
                  v104 = (v104 + v65);
                  v116 = v20.i64[0];
                  vst2_s8(v114, v115);
                  v114 += 16;
                  *v114 = vzip2q_s8(v115, v20);
                  v110 += 32;
                }

                while (v110 != 512);
                break;
            }

            v1646 = 0;
            v1647 = v2235;
            v1648 = v2254;
            do
            {
              v1650 = *(&v2270 + v1646);
              v1649 = *(&v2270 + v1646 + 16);
              v1652 = *(&v2272 + v1646);
              v1651 = v2273[v1646 / 0x10];
              if (v2254)
              {
                a7 = *v1648;
                a8 = v1648[1];
                a9 = v1648[2];
                a10 = v1648[3];
                v1648 += 4;
                v1650 = vaddq_s16(a7, v1650);
                v1649 = vaddq_s16(a8, v1649);
                v1652 = vaddq_s16(a9, v1652);
                v1651 = vaddq_s16(a10, v1651);
              }

              v1653 = vqmovun_high_s16(vqmovun_s16(v1650), v1649);
              v1654 = vqmovun_high_s16(vqmovun_s16(v1652), v1651);
              *v1647 = v1653;
              *(v1647 + v112) = v1654;
              v1647 = (v1647 + v113);
              v1646 += 64;
            }

            while (v1646 != 512);
            if (v61 == 64)
            {
              __asm { PRFM            #0, [X22] }

              v1678 = 9;
              v1657 = v2278;
              do
              {
                v1679 = _X22;
                _X22 = (_X22 + v67);
                __asm { PRFM            #0, [X22] }

                v1681 = vextq_s8(*v1679, *v1679, 2uLL);
                v1681.i16[7] = v1679[1].i16[0];
                v1682 = vrhaddq_u8(*v1679, v1681);
                v1681.i64[0] = v20.i64[0];
                v1657[3] = vzip2q_s8(v1682, v20);
                v1657 += 2;
                vst2_s8(v1657->i8, *(&v1681 - 8));
                --v1678;
              }

              while (v1678 > 2);
              v1683 = vextq_s8(*_X22, *_X22, 2uLL);
              v1683.i16[7] = _X22[1].i16[0];
              v1676 = vrhaddq_u8(*_X22, v1683);
            }

            else
            {
              if (v61 != 4)
              {
                if (v61)
                {
                  v1686 = 0;
                  v2288 = v92;
                  v2289 = v93;
                  v2290 = v95;
                  v2291 = v97;
                  _X9 = &_X22->i8[v67];
                  __asm { PRFM            #0, [X9] }

                  v1654.i64[0] = _X22->i64[0];
                  v1689 = vqtbl1q_s8(v1654, xmmword_2773B3E00);
                  v1689.i16[3] = _X22->i16[4];
                  v1690 = vzip1q_s8(v1689, v20);
                  v1691 = vzip1q_s8(v1654, v20);
                  v1692 = (v63 + v108 + v107 + v67 + 8);
                  _X12 = v63 + v108 + v107 + 2 * v67;
                  do
                  {
                    __asm { PRFM            #0, [X12] }

                    v1695 = vmlaq_s16(vmulq_s16(v93, v1690), v92, v1691);
                    v1690.i64[0] = *(v1692 - 1);
                    v1691 = vzip1q_s8(v1690, v20);
                    v1696 = vqtbl1q_s8(v1690, xmmword_2773B3E00);
                    v1696.i16[3] = *v1692;
                    v1692 = (v1692 + v67);
                    v1690 = vzip1q_s8(v1696, v20);
                    *(&v2279 + v1686) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1695, v95, v1691), v97, v1690), v21), 6uLL);
                    v1686 += 32;
                    _X12 += v67;
                  }

                  while (v1686 != 256);
                  v1697 = 0;
                  _X9 = &_X22->i8[v67 + 8];
                  __asm { PRFM            #0, [X9] }

                  v1691.i64[0] = _X22->i64[1];
                  v1700 = vqtbl1q_s8(v1691, xmmword_2773B3E00);
                  v1700.i16[3] = _X22[1].i16[0];
                  v1701 = vzip1q_s8(v1700, v20);
                  v1702 = vzip1q_s8(v1691, v20);
                  v1703 = v63 + v107 + v67;
                  v1704 = v63 + v107 + 2 * v67 + 8;
                  v11 = a1;
                  do
                  {
                    _X12 = v1704 + v108;
                    __asm { PRFM            #0, [X12] }

                    v1707 = vmlaq_s16(vmulq_s16(v93, v1701), v92, v1702);
                    v1701.i64[0] = *(v1703 + v108 + 8);
                    v1702 = vzip1q_s8(v1701, v20);
                    v1708 = vqtbl1q_s8(v1701, xmmword_2773B3E00);
                    v1708.i16[3] = *(v1703 + v108 + 16);
                    v1701 = vzip1q_s8(v1708, v20);
                    *(&v2280 + v1697) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1707, v95, v1702), v97, v1701), v21), 6uLL);
                    v1697 += 32;
                    v1703 += v67;
                    v1704 += v67;
                  }

                  while (v1697 != 256);
                }

                else
                {
                  __asm { PRFM            #0, [X22] }

                  v1656 = 9;
                  v1657 = v2278;
                  do
                  {
                    v1658 = _X22;
                    _X22 = (_X22 + v67);
                    __asm { PRFM            #0, [X22] }

                    v1660 = *v1658;
                    v1657[3] = vzip2q_s8(*v1658, v20);
                    v1657 += 2;
                    v1661 = v20.i64[0];
                    vst2_s8(v1657->i8, v1660);
                    --v1656;
                  }

                  while (v1656 > 2);
                  v1662 = *_X22;
                  v1663 = vzip2q_s8(*_X22, v20);
                  i8 = v1657[2].i8;
                  v1665 = v20.i64[0];
                  vst2_s8(i8, v1662);
LABEL_858:
                  v11 = a1;
                  v1657[3] = v1663;
                }

                v1709 = 0;
                v1710 = v2233;
                v1711 = v111;
                do
                {
                  v1713 = *(&v2279 + v1709);
                  v1712 = *(&v2279 + v1709 + 16);
                  v1715 = *(&v2281 + v1709);
                  v1714 = v2282[v1709 / 0x10];
                  if (v111)
                  {
                    a7 = *v1711;
                    a8 = v1711[1];
                    a9 = v1711[2];
                    a10 = v1711[3];
                    v1711 += 4;
                    v1713 = vaddq_s16(a7, v1713);
                    v1712 = vaddq_s16(a8, v1712);
                    v1715 = vaddq_s16(a9, v1715);
                    v1714 = vaddq_s16(a10, v1714);
                  }

                  a6 = vqmovun_high_s16(vqmovun_s16(v1713), v1712);
                  *v1710 = a6;
                  *(v1710 + v2251) = vqmovun_high_s16(vqmovun_s16(v1715), v1714);
                  v1710 = (v1710 + v2209);
                  v1709 += 64;
                }

                while (v1709 != 256);
                goto LABEL_352;
              }

              _X8 = &_X22->i8[v67];
              __asm { PRFM            #0, [X8] }

              v1668 = *_X22;
              v1669 = (v63 + v107 + v108);
              v1670 = 9;
              v1657 = v2278;
              do
              {
                _X12 = &v1669->i8[2 * v67];
                v1669 = (v1669 + v67);
                __asm { PRFM            #0, [X12] }

                v1673 = *v1669;
                v1674 = vrhaddq_u8(v1668, *v1669);
                v1675 = v20.i64[0];
                v1657[3] = vzip2q_s8(v1674, v20);
                v1657 += 2;
                vst2_s8(v1657->i8, v1674);
                --v1670;
                v1668 = v1673;
              }

              while (v1670 > 2);
              v1676 = vrhaddq_u8(v1673, *(v1669 + v67));
            }

            v1684 = v1657[2].i8;
            v1685 = v20.i64[0];
            vst2_s8(v1684, v1676);
            v1663 = vzip2q_s8(v1676, v20);
            goto LABEL_858;
          }

          v258 = v87 + v2243 + v2256;
          if (v99 <= -18)
          {
            v99 = -18;
          }

          if (v258 <= -18)
          {
            v258 = -18;
          }

          if (v99 >= v64 + 1)
          {
            v259 = v64 + 1;
          }

          else
          {
            v259 = v99;
          }

          if (v258 >= v68 + 1)
          {
            v260 = v68 + 1;
          }

          else
          {
            v260 = v258;
          }

          v261 = (v62 + v259 + v260 * v65);
          v262 = (v98 & 0xFFFFFFFE) + v2234;
          v263 = (v39 >> 3) + ((v2243 + v2256) >> 1);
          if (v262 <= -16)
          {
            v262 = -16;
          }

          if (v263 <= -8)
          {
            v263 = -8;
          }

          if (v262 >= v66 - 2)
          {
            v262 = v66 - 2;
          }

          if (v263 >= v69)
          {
            v263 = v69 - 1;
          }

          v2227 = v262;
          v264 = v263 * v67;
          _X24 = (v63 + v262 + v264);
          v266 = (v2235 + (v2253 * v2256));
          v267 = &v2254[2 * v2256];
          v268 = (v2233 + (v2256 >> 1) * v2251);
          v269 = &v2252[2 * (v2256 >> 1)];
          switch(v58)
          {
            case 1:
              v2262 = v61;
              sub_27729AC20(&v2270, 0x20u, v261, v65, 8);
              sub_27729AC20(&v2271, 0x20u, &v261->i64[1], v65, 8);
              goto LABEL_869;
            case 2:
              v2262 = v61;
              sub_27729ACE8(v2270.i8, 0x20u, v261, v65, 8);
              sub_27729ACE8(v2271.i8, 0x20u, &v261->i64[1], v65, 8);
              goto LABEL_869;
            case 3:
              v2262 = v61;
              sub_27729ADA4(&v2270, 0x20u, v261, v65, 8);
              sub_27729ADA4(&v2271, 0x20u, &v261->i64[1], v65, 8);
              goto LABEL_869;
            case 4:
              v2262 = v61;
              sub_27729AE6C(&v2270, 0x20u, v261, v65, 8);
              sub_27729AE6C(&v2271, 0x20u, &v261->i64[1], v65, 8);
              goto LABEL_869;
            case 5:
              v1568 = v261;
              v1569 = v61;
              v1570 = v65;
              v1571 = 2;
              goto LABEL_810;
            case 6:
              v2262 = v61;
              sub_27729BFC4(v2270.i8, 0x20u, v261, v65);
              sub_27729BFC4(v2271.i8, 0x20u, &v261->i64[1], v65);
              goto LABEL_869;
            case 7:
              v1568 = v261;
              v1569 = v61;
              v1570 = v65;
              v1571 = 3;
LABEL_810:
              v1613 = 2;
              goto LABEL_832;
            case 8:
              v2262 = v61;
              sub_27729B588(v2270.i8, 0x20u, v261, v65, 8, v96);
              sub_27729B588(v2271.i8, 0x20u, &v261->i64[1], v65, 8, v1716);
              goto LABEL_869;
            case 9:
              v2262 = v61;
              sub_27729B614(v2270.i8, 0x20u, v261, v65, 8);
              sub_27729B614(v2271.i8, 0x20u, &v261->i64[1], v65, 8);
              goto LABEL_869;
            case 10:
              v2262 = v61;
              sub_27729B7DC(&v2270, 32, v261, v65, 8);
              sub_27729B7DC(&v2271, 32, &v261->i64[1], v65, 8);
              goto LABEL_869;
            case 11:
              v2262 = v61;
              sub_27729B98C(v2270.i8, 0x20u, v261, v65, 8);
              sub_27729B98C(v2271.i8, 0x20u, &v261->i64[1], v65, 8);
              goto LABEL_869;
            case 12:
              v2262 = v61;
              sub_27729BB54(&v2270, 0x20u, v261, v65, 8);
              sub_27729BB54(&v2271, 0x20u, &v261->i64[1], v65, 8);
              goto LABEL_869;
            case 13:
              v1568 = v261;
              v1569 = v61;
              v1570 = v65;
              v1571 = 2;
              goto LABEL_831;
            case 14:
              v2262 = v61;
              sub_27729C39C(v2270.i8, 0x20u, v261, v65);
              sub_27729C39C(v2271.i8, 0x20u, &v261->i64[1], v65);
LABEL_869:
              v97 = v2229;
              v95 = v2237;
              v93 = v2240;
              v92 = v2244;
              v61 = v2262;
              goto LABEL_870;
            case 15:
              v1568 = v261;
              v1569 = v61;
              v1570 = v65;
              v1571 = 3;
LABEL_831:
              v1613 = 3;
LABEL_832:
              sub_27729AF04(v2270.i8, v1568, v1570, 8, v1571, v1613);
              v97 = v2229;
              v95 = v2237;
              v93 = v2240;
              v92 = v2244;
              v61 = v1569;
LABEL_870:
              v22.i64[0] = 0x10001000100010;
              v22.i64[1] = 0x10001000100010;
              v21.i64[0] = 0x20002000200020;
              v21.i64[1] = 0x20002000200020;
              v10 = v2266;
              v20 = v2268;
              v272 = v2253;
              v271 = v2254;
              v273 = v2212;
              break;
            default:
              v270 = 0;
              v272 = v2253;
              v271 = v2254;
              v273 = v2212;
              do
              {
                v274 = &v2270.i8[v270];
                v275 = *v261;
                v261 = (v261 + v65);
                v276 = v20.i64[0];
                vst2_s8(v274, v275);
                v274 += 16;
                *v274 = vzip2q_s8(v275, v20);
                v270 += 32;
              }

              while (v270 != 256);
              break;
          }

          v1717 = 0;
          do
          {
            v1719 = *(&v2270 + v1717);
            v1718 = *(&v2270 + v1717 + 16);
            v1721 = *(&v2272 + v1717);
            v1720 = v2273[v1717 / 0x10];
            if (v271)
            {
              a7 = *v267;
              a8 = v267[1];
              a9 = v267[2];
              a10 = v267[3];
              v267 += 4;
              v1719 = vaddq_s16(a7, v1719);
              v1718 = vaddq_s16(a8, v1718);
              v1721 = vaddq_s16(a9, v1721);
              v1720 = vaddq_s16(a10, v1720);
            }

            v1722 = vqmovun_high_s16(vqmovun_s16(v1719), v1718);
            v1723 = vqmovun_high_s16(vqmovun_s16(v1721), v1720);
            *v266 = v1722;
            *(v266 + v272) = v1723;
            v266 = (v266 + v273);
            v1717 += 64;
          }

          while (v1717 != 256);
          if (v61 == 64)
          {
            __asm { PRFM            #0, [X24] }

            v1749 = 5;
            v1728 = v2278;
            v1725 = v2251;
            v1724 = v2252;
            do
            {
              v1750 = _X24;
              _X24 = (_X24 + v67);
              __asm { PRFM            #0, [X24] }

              v1752 = vextq_s8(*v1750, *v1750, 2uLL);
              v1752.i16[7] = v1750[1].i16[0];
              v1753 = vrhaddq_u8(*v1750, v1752);
              v1752.i64[0] = v20.i64[0];
              v1728[3] = vzip2q_s8(v1753, v20);
              v1728 += 2;
              vst2_s8(v1728->i8, *(&v1752 - 8));
              --v1749;
            }

            while (v1749 > 2);
            v1754 = vextq_s8(*_X24, *_X24, 2uLL);
            v1754.i16[7] = _X24[1].i16[0];
            v1747 = vrhaddq_u8(*_X24, v1754);
          }

          else
          {
            v1725 = v2251;
            v1724 = v2252;
            if (v61 != 4)
            {
              if (v61)
              {
                v1757 = 0;
                v2288 = v92;
                v2289 = v93;
                v2290 = v95;
                v2291 = v97;
                _X9 = &_X24->i8[v67];
                __asm { PRFM            #0, [X9] }

                v1723.i64[0] = _X24->i64[0];
                v1760 = vqtbl1q_s8(v1723, xmmword_2773B3E00);
                v1760.i16[3] = _X24->i16[4];
                v1761 = vzip1q_s8(v1760, v20);
                v1762 = vzip1q_s8(v1723, v20);
                v1763 = (v2247 + v264 + v2227 + v67 + 8);
                _X12 = v2247 + v264 + v2227 + 2 * v67;
                do
                {
                  __asm { PRFM            #0, [X12] }

                  v1766 = vmlaq_s16(vmulq_s16(v93, v1761), v92, v1762);
                  v1761.i64[0] = *(v1763 - 1);
                  v1762 = vzip1q_s8(v1761, v20);
                  v1767 = vqtbl1q_s8(v1761, xmmword_2773B3E00);
                  v1767.i16[3] = *v1763;
                  v1763 = (v1763 + v67);
                  v1761 = vzip1q_s8(v1767, v20);
                  *(&v2279 + v1757) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1766, v95, v1762), v97, v1761), v21), 6uLL);
                  v1757 += 32;
                  _X12 += v67;
                }

                while (v1757 != 128);
                v1768 = 0;
                _X9 = &_X24->i8[v67 + 8];
                __asm { PRFM            #0, [X9] }

                v1762.i64[0] = _X24->i64[1];
                v1771 = vqtbl1q_s8(v1762, xmmword_2773B3E00);
                v1771.i16[3] = _X24[1].i16[0];
                v1772 = vzip1q_s8(v1771, v20);
                v1773 = vzip1q_s8(v1762, v20);
                v1774 = v2247 + v2227 + v67;
                v1775 = v2247 + v2227 + 2 * v67 + 8;
                v11 = a1;
                do
                {
                  _X12 = v1775 + v264;
                  __asm { PRFM            #0, [X12] }

                  v1778 = vmlaq_s16(vmulq_s16(v93, v1772), v92, v1773);
                  v1772.i64[0] = *(v1774 + v264 + 8);
                  v1773 = vzip1q_s8(v1772, v20);
                  v1779 = vqtbl1q_s8(v1772, xmmword_2773B3E00);
                  v1779.i16[3] = *(v1774 + v264 + 16);
                  v1772 = vzip1q_s8(v1779, v20);
                  *(&v2280 + v1768) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1778, v95, v1773), v97, v1772), v21), 6uLL);
                  v1768 += 32;
                  v1774 += v67;
                  v1775 += v67;
                }

                while (v1768 != 128);
              }

              else
              {
                __asm { PRFM            #0, [X24] }

                v1727 = 5;
                v1728 = v2278;
                do
                {
                  v1729 = _X24;
                  _X24 = (_X24 + v67);
                  __asm { PRFM            #0, [X24] }

                  v1731 = *v1729;
                  v1728[3] = vzip2q_s8(*v1729, v20);
                  v1728 += 2;
                  v1732 = v20.i64[0];
                  vst2_s8(v1728->i8, v1731);
                  --v1727;
                }

                while (v1727 > 2);
                v1733 = *_X24;
                v1734 = vzip2q_s8(*_X24, v20);
                v1735 = v1728[2].i8;
                v1736 = v20.i64[0];
                vst2_s8(v1735, v1733);
LABEL_888:
                v11 = a1;
                v1728[3] = v1734;
              }

              v1780 = 1;
              v1781 = &v2279;
              do
              {
                v1782 = v1780;
                v1784 = *v1781;
                v1783 = v1781[1];
                v1786 = v1781[2];
                v1785 = v1781[3];
                if (v1724)
                {
                  a7 = *v269;
                  a8 = v269[1];
                  a9 = v269[2];
                  a10 = v269[3];
                  v269 += 4;
                  v1784 = vaddq_s16(a7, v1784);
                  v1783 = vaddq_s16(a8, v1783);
                  v1786 = vaddq_s16(a9, v1786);
                  v1785 = vaddq_s16(a10, v1785);
                }

                v1780 = 0;
                a6 = vqmovun_high_s16(vqmovun_s16(v1784), v1783);
                *v268 = a6;
                *(v268 + v1725) = vqmovun_high_s16(vqmovun_s16(v1786), v1785);
                v268 = (v268 + v2209);
                v1781 += 4;
              }

              while ((v1782 & 1) != 0);
              goto LABEL_352;
            }

            _X8 = &_X24->i8[v67];
            __asm { PRFM            #0, [X8] }

            v1739 = *_X24;
            v1740 = (v2247 + v2227 + v264);
            v1741 = 5;
            v1728 = v2278;
            do
            {
              _X12 = &v1740->i8[2 * v67];
              v1740 = (v1740 + v67);
              __asm { PRFM            #0, [X12] }

              v1744 = *v1740;
              v1745 = vrhaddq_u8(v1739, *v1740);
              v1746 = v20.i64[0];
              v1728[3] = vzip2q_s8(v1745, v20);
              v1728 += 2;
              vst2_s8(v1728->i8, v1745);
              --v1741;
              v1739 = v1744;
            }

            while (v1741 > 2);
            v1747 = vrhaddq_u8(v1744, *(v1740 + v67));
          }

          v1755 = v1728[2].i8;
          v1756 = v20.i64[0];
          vst2_s8(v1755, v1747);
          v1734 = vzip2q_s8(v1747, v20);
          goto LABEL_888;
      }

LABEL_1059:
      v14 = v2264 + 1;
      if (v2264 + 1 == v2265)
      {
        return;
      }
    }

    v30 = *(*v2255 + 8 * *(v23 + 8));
    if (!v30)
    {
      return;
    }

    v31 = *v23;
    v32 = v23[1];
    if ((v2238 + (v32 >> 2)) / 16 < 0)
    {
      v33 = -1;
    }

    else
    {
      v33 = (v2238 + (v32 >> 2)) / 16;
    }

    if (*(v30 + 12) <= v33)
    {
      v34 = byte_2773B3BA0[v28];
      sub_2773B1C78(*(v30 + 16));
      while (*(v30 + 12) <= v33)
      {
        sub_2773B1D28(*(v30 + 24), *(v30 + 16));
      }

      sub_2773B1C84(*(v30 + 16));
      v10 = v2266;
      v20 = v2268;
      v21.i64[0] = 0x20002000200020;
      v21.i64[1] = 0x20002000200020;
      v22.i64[0] = 0x10001000100010;
      v22.i64[1] = 0x10001000100010;
      v29 = v34;
    }

    v45 = *(v2255[1] + 8 * *(v23 + 9));
    if (!v45)
    {
      return;
    }

    v2228 = v27;
    v46 = v32 >> 2;
    v47 = v31 & 7;
    v48 = v32 & 7;
    v49 = *(v30 + 72);
    v2236 = *(v30 + 64);
    v2246 = *(v30 + 168);
    v2217 = *(v30 + 164);
    v50 = *(v30 + 184);
    v2219 = *(v30 + 180);
    v2215 = *(v30 + 132);
    v2225 = *(v30 + 148);
    v2239 = v23[2];
    v51 = v23[3];
    v52 = v51 >> 2;
    if ((v2238 + (v51 >> 2)) / 16 < 0)
    {
      v53 = -1;
    }

    else
    {
      v53 = (v2238 + (v51 >> 2)) / 16;
    }

    v2213 = v31;
    if (*(v45 + 12) <= v53)
    {
      v54 = v29;
      v55 = *(v30 + 72);
      v56 = *(v30 + 184);
      sub_2773B1C78(*(v45 + 16));
      while (*(v45 + 12) <= v53)
      {
        sub_2773B1D28(*(v45 + 24), *(v45 + 16));
      }

      sub_2773B1C84(*(v45 + 16));
      v10 = v2266;
      v20 = v2268;
      v21.i64[0] = 0x20002000200020;
      v21.i64[1] = 0x20002000200020;
      v22.i64[0] = 0x10001000100010;
      v22.i64[1] = 0x10001000100010;
      v50 = v56;
      v49 = v55;
      v48 = v32 & 7;
      v29 = v54;
      v31 = v2213;
      v46 = v32 >> 2;
      v52 = v51 >> 2;
    }

    v2245 = v50;
    v117 = v32 & 3 | (4 * (v31 & 3u));
    v2211 = v51 & 3 | (4 * (v2239 & 3u));
    v118 = v2239 & 7;
    v119 = v51 & 7;
    v120 = v20;
    v121 = v20;
    v122 = v20;
    v2207 = v48 * v47;
    v123 = v20;
    v124 = *(v45 + 64);
    v125 = *(v45 + 72);
    v126 = *(v45 + 164);
    v127 = *(v45 + 168);
    v120.i32[0] = 65537 * (8 - v48) * (8 - v47);
    v128 = *(v45 + 180);
    v129 = *(v45 + 184);
    v121.i32[0] = 65537 * (8 - v48) * v47;
    a9 = xmmword_2773B3DF0;
    v2288 = vqtbl1q_s8(v120, xmmword_2773B3DF0);
    v2289 = vqtbl1q_s8(v121, xmmword_2773B3DF0);
    v130 = v20;
    v131 = v20;
    a7 = v20;
    a7.n128_u32[0] = 65537 * (8 - v118) * v119;
    v2208 = v119 * v118;
    a8 = v20;
    v132 = v2234 + v29;
    v133 = v2243 + v2256;
    v134 = v2234 + v29 + (v31 >> 2);
    v135 = v46 + v2243 + v2256;
    if (v134 <= -18)
    {
      v134 = -18;
    }

    if (v135 <= -18)
    {
      v135 = -18;
    }

    v136 = v31 >> 2;
    if (v134 >= v2217 + 1)
    {
      v134 = v2217 + 1;
    }

    if (v135 >= v2215 + 1)
    {
      v135 = v2215 + 1;
    }

    v137 = v52 + v133;
    if (v132 + (v2239 >> 2) <= -18)
    {
      v138 = -18;
    }

    else
    {
      v138 = v132 + (v2239 >> 2);
    }

    if (v137 <= -18)
    {
      v137 = -18;
    }

    v139 = *(v45 + 132);
    v140 = *(v45 + 148);
    v122.i32[0] = 65537 * (8 - v47) * v48;
    v123.i32[0] = 65537 * v48 * v47;
    a10 = vqtbl1q_s8(v123, xmmword_2773B3DF0);
    v2290 = vqtbl1q_s8(v122, xmmword_2773B3DF0);
    v2291 = a10;
    v130.i32[0] = 65537 * (8 - v119) * (8 - v118);
    v141 = vqtbl1q_s8(v130, xmmword_2773B3DF0);
    v131.i32[0] = 65537 * (8 - v119) * v118;
    v142 = vqtbl1q_s8(v131, xmmword_2773B3DF0);
    v143 = vqtbl1q_s8(a7, xmmword_2773B3DF0);
    a8.n128_u32[0] = 65537 * (v51 & 7) * (v2239 & 7);
    a6 = vqtbl1q_s8(a8, xmmword_2773B3DF0);
    if (v138 >= v126 + 1)
    {
      v144 = v126 + 1;
    }

    else
    {
      v144 = v138;
    }

    if (v137 >= v139 + 1)
    {
      v145 = v139 + 1;
    }

    else
    {
      v145 = v137;
    }

    v146 = (v136 & 0xFFFFFFFE) + v132;
    v2216 = v146;
    if (v146 <= -16)
    {
      v146 = -16;
    }

    v2292 = v141;
    v2293 = v142;
    if ((v32 >> 3) + (v133 >> 1) <= -8)
    {
      v147 = -8;
    }

    else
    {
      v147 = (v32 >> 3) + (v133 >> 1);
    }

    v148 = v2219 - 2;
    v2294 = v143;
    v2295 = a6;
    v2218 = v2219 - 2;
    if (v146 < v2219 - 2)
    {
      v148 = v146;
    }

    v149 = v2225 - 1;
    if (v147 < v2225)
    {
      v149 = v147;
    }

    v150 = ((v2239 >> 2) & 0xFFFFFFFE) + v132;
    v151 = (v51 >> 3) + (v133 >> 1);
    if (v150 <= -16)
    {
      v152 = -16;
    }

    else
    {
      v152 = ((v2239 >> 2) & 0xFFFFFFFE) + v132;
    }

    if (v151 <= -8)
    {
      v151 = -8;
    }

    v153 = v128 - 2;
    v2226 = (&v2254[2 * v2256] + 2 * v29);
    v154 = v2256 >> 1;
    if (v152 >= v153)
    {
      v152 = v153;
    }

    v155 = v151 < v140;
    v156 = v140 - 1;
    v157 = &v2252[2 * v154] + 2 * v29;
    if (v155)
    {
      v156 = v151;
    }

    v158 = (v2235 + v29 + (v2253 * v2256));
    v159 = (v2233 + v29 + (v154 * v2251));
    v2205 = v144;
    v160 = v127;
    v161 = v144 + v145 * v127;
    v162 = v125;
    v163 = v49;
    v165 = (v2236 + v134 + v135 * v2246);
    v2206 = v124;
    v2257 = (v124 + v161);
    _X24 = (v49 + v148 + v149 * v2245);
    v167 = v156 * v129;
    if (v2228 == 4)
    {
      v2203 = (&v2252[2 * v154] + 2 * v29);
      v2222 = v162 + v152 + v167;
      v2198 = v119;
      v2201 = v2239 & 7;
      if (v2258 != 8)
      {
        switch(v117)
        {
          case 1:
            v242 = sub_27729F23C(&v2270, v165, v2246, v141, v142, *v143.i64, a6, a7.n128_f64[0], a8, xmmword_2773B3DF0, a10);
            goto LABEL_476;
          case 2:
            *v242.i64 = sub_27729F394(&v2270, v165, v2246, *v141.i64, v142, v143, a6.n128_f64[0], a7, a8, xmmword_2773B3DF0, a10);
            goto LABEL_476;
          case 3:
            v242 = sub_27729F4D8(&v2270, v165, v2246, v141, v142, *v143.i64, a6, a7.n128_f64[0], a8, xmmword_2773B3DF0, a10);
            goto LABEL_476;
          case 4:
            v242 = sub_27729C91C(&v2270, 8u, v165, v2246);
            goto LABEL_476;
          case 5:
            *v242.i64 = sub_27729CAF0(&v2270, 8u, v165, v2246, v141, *v142.i64, *v143.i64, a6.n128_f64[0], a7.n128_f64[0], a8, xmmword_2773B3DF0, a10);
            goto LABEL_476;
          case 6:
            *v242.i64 = sub_27729CDD0(&v2270, 8u, v165, v2246, v141, v142, v143, a6, a7, a8, xmmword_2773B3DF0, a10);
            goto LABEL_476;
          case 7:
            *v242.i64 = sub_27729D274(&v2270, 8u, v165, v2246, *v141.i64, *v142.i64, *v143.i64, a6.n128_f64[0], a7.n128_f64[0], a8.n128_f64[0], xmmword_2773B3DF0, a10);
            goto LABEL_476;
          case 8:
            v242 = sub_27729D550(&v2270, 8u, v165, v2246);
            goto LABEL_476;
          case 9:
            *v242.i64 = sub_27729D714(&v2270, 8u, v165, v2246);
            goto LABEL_476;
          case 10:
            *v242.i64 = sub_27729F62C(&v2270, v165, v2246, v141, v142, v143, a6, a7, a8, xmmword_2773B3DF0, a10);
            goto LABEL_476;
          case 11:
            *v242.i64 = sub_27729DE6C(&v2270, 8u, v165, v2246);
            goto LABEL_476;
          case 12:
            v242 = sub_27729E5C4(&v2270, 8u, v165, v2246);
            goto LABEL_476;
          case 13:
            *v242.i64 = sub_27729E798(&v2270, 8u, v165, v2246, v141, *v142.i64, *v143.i64, a6.n128_f64[0], a7.n128_f64[0], a8, xmmword_2773B3DF0, a10);
            goto LABEL_476;
          case 14:
            *v242.i64 = sub_27729EA7C(&v2270, 8u, v165, v2246, v141, v142, v143, a6, a7, a8, xmmword_2773B3DF0, a10);
            goto LABEL_476;
          case 15:
            *v242.i64 = sub_27729EF20(&v2270, 8u, v165, v2246, *v141.i64, *v142.i64, *v143.i64, a6.n128_f64[0], a7.n128_f64[0], a8.n128_f64[0], xmmword_2773B3DF0, a10);
LABEL_476:
            v10.i64[1] = v2266.i64[1];
            v20 = v2268;
            break;
          default:
            v141.i32[0] = *v165;
            v142.i32[0] = *(v165 + v2246);
            v143.i32[0] = *(v165 + 2 * v2246);
            a6.n128_u32[0] = *(v165 + 3 * v2246);
            v242.i64[0] = vzip1q_s8(v141, v20).u64[0];
            v240 = vzip1q_s8(v142, v20);
            v243.i64[0] = vzip1q_s8(v143, v20).u64[0];
            v241 = vzip1q_s8(a6, v20);
            v242.i64[1] = v240.i64[0];
            v243.i64[1] = v241.i64[0];
            v2270 = v242;
            v2271 = v243;
            break;
        }

        switch(v2211)
        {
          case 1:
            v899 = sub_27729F23C(&v2274, v2257, v160, v242, v240, *v243.i64, v241, a7.n128_f64[0], a8, a9, a10);
            break;
          case 2:
            sub_27729F394(&v2274, v2257, v160, *v242.i64, v240, v243, *v241.i64, a7, a8, a9, a10);
            break;
          case 3:
            v899 = sub_27729F4D8(&v2274, v2257, v160, v242, v240, *v243.i64, v241, a7.n128_f64[0], a8, a9, a10);
            break;
          case 4:
            v899 = sub_27729C91C(&v2274, 8u, v2257, v160);
            break;
          case 5:
            sub_27729CAF0(&v2274, 8u, v2257, v160, v242, *v240.i64, *v243.i64, *v241.i64, a7.n128_f64[0], a8, a9, a10);
            break;
          case 6:
            sub_27729CDD0(&v2274, 8u, v2257, v160, v242, v240, v243, v241, a7, a8, a9, a10);
            break;
          case 7:
            sub_27729D274(&v2274, 8u, v2257, v160, *v242.i64, *v240.i64, *v243.i64, *v241.i64, a7.n128_f64[0], a8.n128_f64[0], a9, a10);
            break;
          case 8:
            v899 = sub_27729D550(&v2274, 8u, v2257, v160);
            break;
          case 9:
            sub_27729D714(&v2274, 8u, v2257, v160);
            break;
          case 10:
            sub_27729F62C(&v2274, v2257, v160, v242, v240, v243, v241, a7, a8, a9, a10);
            break;
          case 11:
            sub_27729DE6C(&v2274, 8u, v2257, v160);
            break;
          case 12:
            v899 = sub_27729E5C4(&v2274, 8u, v2257, v160);
            break;
          case 13:
            sub_27729E798(&v2274, 8u, v2257, v160, v242, *v240.i64, *v243.i64, *v241.i64, a7.n128_f64[0], a8, a9, a10);
            break;
          case 14:
            sub_27729EA7C(&v2274, 8u, v2257, v160, v242, v240, v243, v241, a7, a8, a9, a10);
            break;
          case 15:
            sub_27729EF20(&v2274, 8u, v2257, v160, *v242.i64, *v240.i64, *v243.i64, *v241.i64, a7.n128_f64[0], a8.n128_f64[0], a9, a10);
            break;
          default:
            v242.i32[0] = *v2257;
            v240.i32[0] = *(v2257 + v160);
            v243.i32[0] = *(v2257 + 2 * v160);
            v241.i32[0] = *(v2257 + 3 * v160);
            v899.i64[0] = vzip1q_s8(v242, v20).u64[0];
            v898 = vzip1q_s8(v240, v20);
            v900.i64[0] = vzip1q_s8(v243, v20).u64[0];
            v899.i64[1] = v898.i64[0];
            v900.i64[1] = vzip1q_s8(v241, v20).u64[0];
            v2274 = v899;
            v2275 = v900;
            break;
        }

        v898.i64[0] = v2270.i64[1];
        v899.i64[0] = v2270.i64[0];
        a8.n128_u64[0] = v2271.u64[1];
        a7.n128_u64[0] = v2271.i64[0];
        a9.n128_u64[0] = v2274.u64[1];
        v900.i64[0] = v2274.i64[0];
        v10.i64[0] = v2275.i64[1];
        a10.n128_u64[0] = v2275.i64[0];
        v935 = vrhaddq_u16(v899, v900);
        v936 = vrhaddq_u16(v898, a9);
        v937 = vrhaddq_u16(a7, a10);
        v938 = vrhaddq_u16(a8, v10);
        if (v2254)
        {
          a7.n128_u64[0] = v2226->i64[0];
          a8.n128_u64[0] = v2226[2].u64[0];
          a9.n128_u64[0] = v2226[4].u64[0];
          a10.n128_u64[0] = v2226[6].u64[0];
          v935 = vaddq_s16(v935, a7);
          v936 = vaddq_s16(v936, a8);
          v937 = vaddq_s16(v937, a9);
          v938 = vaddq_s16(v938, a10);
        }

        v939 = COERCE_DOUBLE(vqmovun_s16(v935));
        v940 = COERCE_DOUBLE(vqmovun_s16(v936));
        v158->i32[0] = LODWORD(v939);
        *(v158->i32 + v2253) = LODWORD(v940);
        v941 = COERCE_DOUBLE(vqmovun_s16(v937));
        v942 = COERCE_DOUBLE(vqmovun_s16(v938));
        *(v158->i32 + v2212) = LODWORD(v941);
        *(v158->i32 + v2199) = LODWORD(v942);
        v943 = sub_277290798(&v2279, _X24, v2245, v47, v48, v941, v942, v940, v939, a7, a8);
        sub_277290798(&v2284, v2222, v129, v2201, v2198, v943, v944, v945, v946, v947, v948);
        v950.i64[0] = v2279.i64[1];
        v949.i64[0] = v2279.i64[0];
        a6.n128_u64[0] = v2284.u64[1];
        v951.i64[0] = v2284.i64[0];
        v952 = vrhaddq_u16(v949, v951);
        v953 = vrhaddq_u16(v950, a6);
        if (v2252)
        {
          v950.i64[0] = *v2203;
          a6.n128_u64[0] = v2203[4];
          v952 = vaddq_s16(v952, v950);
          v953 = vaddq_s16(v953, a6);
        }

        v10 = v2266;
        v20 = v2268;
        v21.i64[0] = 0x20002000200020;
        v21.i64[1] = 0x20002000200020;
        v22.i64[0] = 0x10001000100010;
        v22.i64[1] = 0x10001000100010;
        v159->n128_u32[0] = vqmovun_s16(v952).u32[0];
        *(v159->n128_u32 + v2251) = vqmovun_s16(v953).u32[0];
        goto LABEL_1058;
      }

      v180 = &v165[v2246];
      switch(v117)
      {
        case 1:
          v529 = v160;
          v696 = sub_27729F23C(&v2270, v165, v2246, v141, v142, *v143.i64, a6, a7.n128_f64[0], a8, xmmword_2773B3DF0, a10);
          v187 = sub_27729F23C(&v2272, v180, v2246, v696, v697, v698, v699, v700, v701, v702, v703);
          goto LABEL_458;
        case 2:
          v529 = v160;
          v578 = sub_27729F394(&v2270, v165, v2246, *v141.i64, v142, v143, a6.n128_f64[0], a7, a8, xmmword_2773B3DF0, a10);
          *v187.i64 = sub_27729F394(&v2272, v180, v2246, v578, v579, v580, v581, v582, v583, v584, v585);
          goto LABEL_458;
        case 3:
          v529 = v160;
          v650 = sub_27729F4D8(&v2270, v165, v2246, v141, v142, *v143.i64, a6, a7.n128_f64[0], a8, xmmword_2773B3DF0, a10);
          v187 = sub_27729F4D8(&v2272, v180, v2246, v650, v651, v652, v653, v654, v655, v656, v657);
          goto LABEL_458;
        case 4:
          v529 = v160;
          sub_27729C91C(&v2270, 8u, v165, v2246);
          v187 = sub_27729C91C(&v2272, 8u, v180, v2246);
          goto LABEL_458;
        case 5:
          v529 = v160;
          *v776.i64 = sub_27729CAF0(&v2270, 8u, v165, v2246, v141, *v142.i64, *v143.i64, a6.n128_f64[0], a7.n128_f64[0], a8, xmmword_2773B3DF0, a10);
          *v187.i64 = sub_27729CAF0(&v2272, 8u, v180, v2246, v776, v777, v778, v779, v780, v781, v782, v783);
          goto LABEL_458;
        case 6:
          v529 = v160;
          *v792.i64 = sub_27729CDD0(&v2270, 8u, v165, v2246, v141, v142, v143, a6, a7, a8, xmmword_2773B3DF0, a10);
          *v187.i64 = sub_27729CDD0(&v2272, 8u, v180, v2246, v792, v793, v794, v795, v796, v797, v798, v799);
          goto LABEL_458;
        case 7:
          v529 = v160;
          v664 = sub_27729D274(&v2270, 8u, v165, v2246, *v141.i64, *v142.i64, *v143.i64, a6.n128_f64[0], a7.n128_f64[0], a8.n128_f64[0], xmmword_2773B3DF0, a10);
          *v187.i64 = sub_27729D274(&v2272, 8u, v180, v2246, v664, v665, v666, v667, v668, v669, v670, v671);
          goto LABEL_458;
        case 8:
          v529 = v160;
          sub_27729D550(&v2270, 8u, v165, v2246);
          v187 = sub_27729D550(&v2272, 8u, v180, v2246);
          goto LABEL_458;
        case 9:
          v529 = v160;
          sub_27729D714(&v2270, 8u, v165, v2246);
          *v187.i64 = sub_27729D714(&v2272, 8u, v180, v2246);
          goto LABEL_458;
        case 10:
          v529 = v160;
          *v802.i64 = sub_27729F62C(&v2270, v165, v2246, v141, v142, v143, a6, a7, a8, xmmword_2773B3DF0, a10);
          *v187.i64 = sub_27729F62C(&v2272, v180, v2246, v802, v803, v804, v805, v806, v807, v808, v809);
          goto LABEL_458;
        case 11:
          v529 = v160;
          sub_27729DE6C(&v2270, 8u, v165, v2246);
          *v187.i64 = sub_27729DE6C(&v2272, 8u, v180, v2246);
          goto LABEL_458;
        case 12:
          v529 = v160;
          sub_27729E5C4(&v2270, 8u, v165, v2246);
          v187 = sub_27729E5C4(&v2272, 8u, v180, v2246);
          goto LABEL_458;
        case 13:
          v529 = v160;
          *v784.i64 = sub_27729E798(&v2270, 8u, v165, v2246, v141, *v142.i64, *v143.i64, a6.n128_f64[0], a7.n128_f64[0], a8, xmmword_2773B3DF0, a10);
          *v187.i64 = sub_27729E798(&v2272, 8u, v180, v2246, v784, v785, v786, v787, v788, v789, v790, v791);
          goto LABEL_458;
        case 14:
          v529 = v160;
          *v530.i64 = sub_27729EA7C(&v2270, 8u, v165, v2246, v141, v142, v143, a6, a7, a8, xmmword_2773B3DF0, a10);
          *v187.i64 = sub_27729EA7C(&v2272, 8u, v180, v2246, v530, v531, v532, v533, v534, v535, v536, v537);
          goto LABEL_458;
        case 15:
          v529 = v160;
          v642 = sub_27729EF20(&v2270, 8u, v165, v2246, *v141.i64, *v142.i64, *v143.i64, a6.n128_f64[0], a7.n128_f64[0], a8.n128_f64[0], xmmword_2773B3DF0, a10);
          *v187.i64 = sub_27729EF20(&v2272, 8u, v180, v2246, v642, v643, v644, v645, v646, v647, v648, v649);
LABEL_458:
          v160 = v529;
          v10.i64[1] = v2266.i64[1];
          v20 = v2268;
          break;
        default:
          v141.i32[0] = *(v165 + v2246);
          v142.i32[0] = *(v165 + 2 * v2246);
          v143.i32[0] = *v165;
          a6.n128_u32[0] = *(v165 + 3 * v2246);
          v181.i64[0] = vzip1q_s8(v143, v20).u64[0];
          v182 = vzip1q_s8(v141, v20);
          v183.i64[0] = vzip1q_s8(v142, v20).u64[0];
          v184 = vzip1q_s8(a6, v20);
          v181.i64[1] = v182.i64[0];
          v183.i64[1] = v184.i64[0];
          v2270 = v181;
          v2271 = v183;
          v182.i32[0] = *v180;
          v183.i32[0] = *(v180 + v2246);
          v181.i32[0] = *(v180 + 2 * v2246);
          v184.i32[0] = *(v180 + 3 * v2246);
          v187.i64[0] = vzip1q_s8(v182, v20).u64[0];
          v185 = vzip1q_s8(v183, v20);
          v188.i64[0] = vzip1q_s8(v181, v20).u64[0];
          v186 = vzip1q_s8(v184, v20);
          v187.i64[1] = v185.i64[0];
          v188.i64[1] = v186.i64[0];
          v2272 = v187;
          v2273[0] = v188;
          break;
      }

      v810 = &v2257[v160];
      switch(v2211)
      {
        case 1:
          v858 = sub_27729F23C(&v2274, v2257, v160, v187, v185, *v188.i64, v186, a7.n128_f64[0], a8, a9, a10);
          v816 = sub_27729F23C(&v2276, v810, v160, v858, v859, v860, v861, v862, v863, v864, v865);
          break;
        case 2:
          v826 = sub_27729F394(&v2274, v2257, v160, *v187.i64, v185, v188, *v186.i64, a7, a8, a9, a10);
          sub_27729F394(&v2276, v810, v160, v826, v827, v828, v829, v830, v831, v832, v833);
          break;
        case 3:
          v842 = sub_27729F4D8(&v2274, v2257, v160, v187, v185, *v188.i64, v186, a7.n128_f64[0], a8, a9, a10);
          v816 = sub_27729F4D8(&v2276, v810, v160, v842, v843, v844, v845, v846, v847, v848, v849);
          break;
        case 4:
          sub_27729C91C(&v2274, 8u, v2257, v160);
          v816 = sub_27729C91C(&v2276, 8u, v810, v160);
          break;
        case 5:
          *v866.i64 = sub_27729CAF0(&v2274, 8u, v2257, v160, v187, *v185.i64, *v188.i64, *v186.i64, a7.n128_f64[0], a8, a9, a10);
          sub_27729CAF0(&v2276, 8u, v810, v160, v866, v867, v868, v869, v870, v871, v872, v873);
          break;
        case 6:
          *v882.i64 = sub_27729CDD0(&v2274, 8u, v2257, v160, v187, v185, v188, v186, a7, a8, a9, a10);
          sub_27729CDD0(&v2276, 8u, v810, v160, v882, v883, v884, v885, v886, v887, v888, v889);
          break;
        case 7:
          v850 = sub_27729D274(&v2274, 8u, v2257, v160, *v187.i64, *v185.i64, *v188.i64, *v186.i64, a7.n128_f64[0], a8.n128_f64[0], a9, a10);
          sub_27729D274(&v2276, 8u, v810, v160, v850, v851, v852, v853, v854, v855, v856, v857);
          break;
        case 8:
          sub_27729D550(&v2274, 8u, v2257, v160);
          v816 = sub_27729D550(&v2276, 8u, v810, v160);
          break;
        case 9:
          sub_27729D714(&v2274, 8u, v2257, v160);
          sub_27729D714(&v2276, 8u, v810, v160);
          break;
        case 10:
          *v890.i64 = sub_27729F62C(&v2274, v2257, v160, v187, v185, v188, v186, a7, a8, a9, a10);
          sub_27729F62C(&v2276, v810, v160, v890, v891, v892, v893, v894, v895, v896, v897);
          break;
        case 11:
          sub_27729DE6C(&v2274, 8u, v2257, v160);
          sub_27729DE6C(&v2276, 8u, v810, v160);
          break;
        case 12:
          sub_27729E5C4(&v2274, 8u, v2257, v160);
          v816 = sub_27729E5C4(&v2276, 8u, v810, v160);
          break;
        case 13:
          *v874.i64 = sub_27729E798(&v2274, 8u, v2257, v160, v187, *v185.i64, *v188.i64, *v186.i64, a7.n128_f64[0], a8, a9, a10);
          sub_27729E798(&v2276, 8u, v810, v160, v874, v875, v876, v877, v878, v879, v880, v881);
          break;
        case 14:
          *v818.i64 = sub_27729EA7C(&v2274, 8u, v2257, v160, v187, v185, v188, v186, a7, a8, a9, a10);
          sub_27729EA7C(&v2276, 8u, v810, v160, v818, v819, v820, v821, v822, v823, v824, v825);
          break;
        case 15:
          v834 = sub_27729EF20(&v2274, 8u, v2257, v160, *v187.i64, *v185.i64, *v188.i64, *v186.i64, a7.n128_f64[0], a8.n128_f64[0], a9, a10);
          sub_27729EF20(&v2276, 8u, v810, v160, v834, v835, v836, v837, v838, v839, v840, v841);
          break;
        default:
          v187.i32[0] = *(v2257 + v160);
          v185.i32[0] = *(v2257 + 2 * v160);
          v188.i32[0] = *v2257;
          v186.i32[0] = *(v2257 + 3 * v160);
          v811.i64[0] = vzip1q_s8(v188, v20).u64[0];
          v812 = vzip1q_s8(v187, v20);
          v813.i64[0] = vzip1q_s8(v185, v20).u64[0];
          v814 = vzip1q_s8(v186, v20);
          v811.i64[1] = v812.i64[0];
          v813.i64[1] = v814.i64[0];
          v2274 = v811;
          v2275 = v813;
          v812.i32[0] = *v810;
          v813.i32[0] = *(v810 + v160);
          v811.i32[0] = *(v810 + 2 * v160);
          v814.i32[0] = *(v810 + 3 * v160);
          v816.i64[0] = vzip1q_s8(v812, v20).u64[0];
          v815 = vzip1q_s8(v813, v20);
          v817.i64[0] = vzip1q_s8(v811, v20).u64[0];
          v816.i64[1] = v815.i64[0];
          v817.i64[1] = vzip1q_s8(v814, v20).u64[0];
          v2276 = v816;
          v2277[0] = v817;
          break;
      }

      v901 = 1;
      v902 = &v2270;
      v903 = v2226;
      do
      {
        v904 = v901;
        v816.i64[0] = v902->i64[0];
        v815.i64[0] = v902->i64[1];
        a7.n128_u64[0] = v902[1].u64[0];
        a8.n128_u64[0] = v902[1].u64[1];
        v817.i64[0] = v902[32].i64[0];
        a9.n128_u64[0] = v902[32].u64[1];
        a10.n128_u64[0] = v902[33].u64[0];
        v10.i64[0] = v902[33].i64[1];
        v905 = vrhaddq_u16(v816, v817);
        v817 = vrhaddq_u16(v815, a9);
        v815 = vrhaddq_u16(a7, a10);
        v816 = vrhaddq_u16(a8, v10);
        if (v2254)
        {
          a7.n128_u64[0] = *v903;
          a8.n128_u64[0] = v903[4];
          a9.n128_u64[0] = v903[8];
          a10.n128_u64[0] = v903[12];
          v903 += 16;
          v905 = vaddq_s16(v905, a7);
          v817 = vaddq_s16(v817, a8);
          v815 = vaddq_s16(v815, a9);
          v816 = vaddq_s16(v816, a10);
        }

        v901 = 0;
        v902 += 2;
        v906 = COERCE_DOUBLE(vqmovun_s16(v905));
        v907 = COERCE_DOUBLE(vqmovun_s16(v817));
        v908 = COERCE_DOUBLE(vqmovun_s16(v815));
        v158->i32[0] = LODWORD(v906);
        *(v158->i32 + v2253) = LODWORD(v907);
        v909 = COERCE_DOUBLE(vqmovun_s16(v816));
        *(v158->i32 + v2212) = LODWORD(v908);
        *(v158->i32 + v2199) = LODWORD(v909);
        v158 = (v158 + v2182);
      }

      while ((v904 & 1) != 0);
      v910 = sub_277290798(&v2279, _X24, v2245, v47, v48, v909, v908, v907, v906, a7, a8);
      v916 = sub_277290798(&v2280, _X24->i64 + (2 * v2245), v2245, v47, v48, v910, v911, v912, v913, v914, v915);
      v922 = sub_277290798(&v2284, v2222, v129, v2201, v2198, v916, v917, v918, v919, v920, v921);
      sub_277290798(&v2285, v2222 + (2 * v129), v129, v2201, v2198, v922, v923, v924, v925, v926, v927);
      v929.i64[0] = v2279.i64[1];
      v928.i64[0] = v2279.i64[0];
      a8.n128_u64[0] = v2280.n128_u64[1];
      a7.n128_u64[0] = v2280.n128_u64[0];
      a9.n128_u64[0] = v2284.u64[1];
      v930.i64[0] = v2284.i64[0];
      v931.i64[0] = v2285.i64[1];
      a10.n128_u64[0] = v2285.i64[0];
      a6 = vrhaddq_u16(v928, v930);
      v932 = vrhaddq_u16(v929, a9);
      v933 = vrhaddq_u16(a7, a10);
      v934 = vrhaddq_u16(a8, v931);
      if (v2252)
      {
        a7.n128_u64[0] = *v2203;
        a8.n128_u64[0] = v2203[4];
        a9.n128_u64[0] = v2203[8];
        a10.n128_u64[0] = v2203[12];
        a6 = vaddq_s16(a6, a7);
        v932 = vaddq_s16(v932, a8);
        v933 = vaddq_s16(v933, a9);
        v934 = vaddq_s16(v934, a10);
      }

      v21.i64[0] = 0x20002000200020;
      v21.i64[1] = 0x20002000200020;
      v22.i64[0] = 0x10001000100010;
      v22.i64[1] = 0x10001000100010;
      a6.n128_u64[0] = vqmovun_s16(a6);
      v159->n128_u32[0] = a6.n128_u32[0];
      *(v159->n128_u32 + v2251) = vqmovun_s16(v932).u32[0];
      *(v159->n128_u32 + v2209) = vqmovun_s16(v933).u32[0];
      *(v159->n128_u32 + v2183) = vqmovun_s16(v934).u32[0];
    }

    else
    {
      v164 = v149 * v2245;
      if (v2228 != 8)
      {
        if (v2228 == 16)
        {
          v2202 = v157;
          v2220 = (v162 + v152 + v156 * v129);
          v2230 = v167;
          v2187 = v153;
          v2190 = v162;
          v2197 = v119;
          v2200 = v2239 & 7;
          v2184 = v150;
          v2193 = v164;
          v2180 = a10;
          v2181 = a6;
          v2241 = v119 & 0xFFFFFF8F | (16 * v2200);
          v2214 = v48 & 0xFFFFFF8F | (16 * (v2213 & 7));
          if (v2258 == 16)
          {
            switch(v117)
            {
              case 1:
                v728 = 0;
                v729 = (v165 - 2 * v2246);
                v730 = (v729 + v2246 + v2246);
                v731 = vzip1q_s8(*(v730 + v2246 + v2246), v20);
                v732 = vzip1q_s8(*(v730 + v2246), v20);
                v733 = vzip1q_s8(*v730, v20);
                v734 = vzip1q_s8(*(v729 + v2246), v20);
                v735 = vzip1q_s8(*v729, v20);
                v736 = (v2236 + 5 * v2246 + v134 + v2246 * v135 - 2 * v2246);
                do
                {
                  v737 = v734;
                  v734 = v733;
                  v733 = v732;
                  v732 = v731;
                  v731 = vzip1q_s8(*v736, v20);
                  v738 = vsubq_s16(vshlq_n_s16(vaddq_s16(v734, v733), 2uLL), vaddq_s16(v737, v732));
                  *(&v2270 + v728) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v735, v738), vshlq_n_s16(v738, 2uLL)), vaddq_s16(v731, v22)), 5uLL))), v734);
                  v728 += 32;
                  v736 = (v736 + v2246);
                  v735 = v737;
                }

                while (v728 != 512);
                v739 = 0;
                v740 = v165 - 2 * v2246;
                v741 = *(v740 + 8);
                v742 = &v740[v2246 + 8];
                v743 = (v742 + v2246 + v2246);
                v744 = vzip1q_s8(*(v743 + v2246), v20);
                v745 = vzip1q_s8(*v743, v20);
                v746 = vzip1q_s8(*(v742 + v2246), v20);
                v747 = vzip1q_s8(*v742, v20);
                v748 = vzip1q_s8(v741, v20);
                v749 = (v2236 + 5 * v2246 + v134 + v2246 * v135 - 2 * v2246 + 8);
                v169 = v2257;
                v170 = v2211;
                do
                {
                  v750 = v747;
                  v747 = v746;
                  v746 = v745;
                  v745 = v744;
                  v744 = vzip1q_s8(*v749, v20);
                  v751 = vsubq_s16(vshlq_n_s16(vaddq_s16(v747, v746), 2uLL), vaddq_s16(v750, v745));
                  *(&v2271 + v739) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v748, v751), vshlq_n_s16(v751, 2uLL)), vaddq_s16(v744, v22)), 5uLL))), v747);
                  v739 += 32;
                  v749 = (v749 + v2246);
                  v748 = v750;
                }

                while (v739 != 512);
                break;
              case 2:
                v586 = 0;
                v587 = (v165 - 2 * v2246);
                v588 = (v587 + v2246 + v2246);
                v589 = vzip1q_s8(*(v588 + v2246 + v2246), v20);
                v590 = vzip1q_s8(*(v588 + v2246), v20);
                v591 = vzip1q_s8(*v588, v20);
                v592 = vzip1q_s8(*(v587 + v2246), v20);
                v593 = vzip1q_s8(*v587, v20);
                v594 = (v2236 + 5 * v2246 + v134 + v2246 * v135 - 2 * v2246);
                do
                {
                  v595 = v592;
                  v592 = v591;
                  v591 = v590;
                  v590 = v589;
                  v596 = &v2270.i8[v586];
                  v589 = vzip1q_s8(*v594, v20);
                  v597 = vsubq_s16(vshlq_n_s16(vaddq_s16(v592, v591), 2uLL), vaddq_s16(v595, v590));
                  v597.val[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v593, v597), vshlq_n_s16(v597, 2uLL)), vaddq_s16(v589, v22)), 5uLL));
                  v598 = v20.i64[0];
                  vst2_s8(v596, v597);
                  v586 += 32;
                  v594 = (v594 + v2246);
                  v593 = v595;
                }

                while (v586 != 512);
                v599 = 0;
                v600 = v165 - 2 * v2246;
                v601 = *(v600 + 8);
                v602 = &v600[v2246 + 8];
                v603 = (v602 + v2246 + v2246);
                v604 = vzip1q_s8(*(v603 + v2246), v20);
                v605 = vzip1q_s8(*v603, v20);
                v606 = vzip1q_s8(*(v602 + v2246), v20);
                v607 = vzip1q_s8(*v602, v20);
                v608 = vzip1q_s8(v601, v20);
                v609 = (v2236 + 5 * v2246 + v134 + v2246 * v135 - 2 * v2246 + 8);
                v169 = v2257;
                v170 = v2211;
                do
                {
                  v610 = v607;
                  v607 = v606;
                  v606 = v605;
                  v605 = v604;
                  v611 = &v2271.i8[v599];
                  v604 = vzip1q_s8(*v609, v20);
                  v612 = vsubq_s16(vshlq_n_s16(vaddq_s16(v607, v606), 2uLL), vaddq_s16(v610, v605));
                  v612.val[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v608, v612), vshlq_n_s16(v612, 2uLL)), vaddq_s16(v604, v22)), 5uLL));
                  v613 = v20.i64[0];
                  vst2_s8(v611, v612);
                  v599 += 32;
                  v609 = (v609 + v2246);
                  v608 = v610;
                }

                while (v599 != 512);
                break;
              case 3:
                v672 = 0;
                v673 = (v165 - 2 * v2246);
                v674 = (v673 + v2246 + v2246);
                v675 = vzip1q_s8(*(v674 + v2246 + v2246), v20);
                v676 = vzip1q_s8(*(v674 + v2246), v20);
                v677 = vzip1q_s8(*v674, v20);
                v678 = vzip1q_s8(*(v673 + v2246), v20);
                v679 = vzip1q_s8(*v673, v20);
                v680 = (v2236 + 5 * v2246 + v134 + v2246 * v135 - 2 * v2246);
                do
                {
                  v681 = v678;
                  v678 = v677;
                  v677 = v676;
                  v676 = v675;
                  v675 = vzip1q_s8(*v680, v20);
                  v682 = vsubq_s16(vshlq_n_s16(vaddq_s16(v678, v677), 2uLL), vaddq_s16(v681, v676));
                  *(&v2270 + v672) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v679, v682), vshlq_n_s16(v682, 2uLL)), vaddq_s16(v675, v22)), 5uLL))), v677);
                  v672 += 32;
                  v680 = (v680 + v2246);
                  v679 = v681;
                }

                while (v672 != 512);
                v683 = 0;
                v684 = v165 - 2 * v2246;
                v685 = *(v684 + 8);
                v686 = &v684[v2246 + 8];
                v687 = (v686 + v2246 + v2246);
                v688 = vzip1q_s8(*(v687 + v2246), v20);
                v689 = vzip1q_s8(*v687, v20);
                v690 = vzip1q_s8(*(v686 + v2246), v20);
                v691 = vzip1q_s8(*v686, v20);
                v692 = vzip1q_s8(v685, v20);
                v693 = (v2236 + 5 * v2246 + v134 + v2246 * v135 - 2 * v2246 + 8);
                v169 = v2257;
                v170 = v2211;
                do
                {
                  v694 = v691;
                  v691 = v690;
                  v690 = v689;
                  v689 = v688;
                  v688 = vzip1q_s8(*v693, v20);
                  v695 = vsubq_s16(vshlq_n_s16(vaddq_s16(v691, v690), 2uLL), vaddq_s16(v694, v689));
                  *(&v2271 + v683) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v692, v695), vshlq_n_s16(v695, 2uLL)), vaddq_s16(v688, v22)), 5uLL))), v690);
                  v683 += 32;
                  v693 = (v693 + v2246);
                  v692 = v694;
                }

                while (v683 != 512);
                break;
              case 4:
                v538 = 0;
                v539 = (v165 - 2);
                do
                {
                  v540 = *v539;
                  v539 = (v539 + v2246);
                  v541 = vzip1q_s8(vextq_s8(v540, v540, 2uLL), v20);
                  v542 = vsubq_s16(vshlq_n_s16(vaddq_s16(v541, vzip1q_s8(vextq_s8(v540, v540, 3uLL), v20)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v540, v540, 1uLL), v20), vzip1q_s8(vextq_s8(v540, v540, 4uLL), v20)));
                  *(&v2270 + v538) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v542, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v540, v20), vzip1q_s8(vextq_s8(v540, v540, 5uLL), v20)), v542)), v22), 5uLL))), v541);
                  v538 += 32;
                }

                while (v538 != 512);
                v543 = 0;
                v544 = (v165 + 6);
                v169 = v2257;
                v170 = v2211;
                do
                {
                  v545 = *v544;
                  v544 = (v544 + v2246);
                  v546 = vzip1q_s8(vextq_s8(v545, v545, 2uLL), v20);
                  v547 = vsubq_s16(vshlq_n_s16(vaddq_s16(v546, vzip1q_s8(vextq_s8(v545, v545, 3uLL), v20)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v545, v545, 1uLL), v20), vzip1q_s8(vextq_s8(v545, v545, 4uLL), v20)));
                  *(&v2271 + v543) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v547, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v545, v20), vzip1q_s8(vextq_s8(v545, v545, 5uLL), v20)), v547)), v22), 5uLL))), v546);
                  v543 += 32;
                }

                while (v543 != 512);
                break;
              case 5:
                v658 = v2236 + v134 + v135 * v2246;
                v659 = v2246;
                v660 = 2;
                goto LABEL_452;
              case 6:
                sub_27729B1B0(v2270.i8, 0x20u, v2236 + v134 + v135 * v2246, v2246);
                sub_27729B1B0(v2271.i8, 0x20u, (v165 + 2), v2246);
                goto LABEL_510;
              case 7:
                v658 = v2236 + v134 + v135 * v2246;
                v659 = v2246;
                v660 = 3;
LABEL_452:
                v800 = 2;
                goto LABEL_509;
              case 8:
                v1491 = 0;
                v1492 = (v165 - 2);
                do
                {
                  v1493 = &v2270.i8[v1491];
                  v1494 = *v1492;
                  v1492 = (v1492 + v2246);
                  v1495 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1494, v1494, 2uLL), v20), vzip1q_s8(vextq_s8(v1494, v1494, 3uLL), v20)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1494, v1494, 1uLL), v20), vzip1q_s8(vextq_s8(v1494, v1494, 4uLL), v20)));
                  *v1494.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1495, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1494, v20), vzip1q_s8(vextq_s8(v1494, v1494, 5uLL), v20)), v1495)), v22), 5uLL));
                  v1495.i64[0] = v20.i64[0];
                  vst2_s8(v1493, v1494);
                  v1491 += 32;
                }

                while (v1491 != 512);
                v1496 = 0;
                v1497 = (v165 + 6);
                v169 = v2257;
                v170 = v2211;
                do
                {
                  v1498 = &v2271.i8[v1496];
                  v1499 = *v1497;
                  v1497 = (v1497 + v2246);
                  v1500 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1499, v1499, 2uLL), v20), vzip1q_s8(vextq_s8(v1499, v1499, 3uLL), v20)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1499, v1499, 1uLL), v20), vzip1q_s8(vextq_s8(v1499, v1499, 4uLL), v20)));
                  *v1499.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1500, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1499, v20), vzip1q_s8(vextq_s8(v1499, v1499, 5uLL), v20)), v1500)), v22), 5uLL));
                  v1500.i64[0] = v20.i64[0];
                  vst2_s8(v1498, v1499);
                  v1496 += 32;
                }

                while (v1496 != 512);
                break;
              case 9:
                sub_27729B614(v2270.i8, 0x20u, v2236 + v134 + v135 * v2246, v2246, 16);
                sub_27729B614(v2271.i8, 0x20u, (v165 + 2), v2246, 16);
                goto LABEL_510;
              case 10:
                sub_27729B7DC(&v2270, 32, v2236 + v134 + v135 * v2246, v2246, 16);
                sub_27729B7DC(&v2271, 32, (v165 + 2), v2246, 16);
                goto LABEL_510;
              case 11:
                sub_27729B98C(v2270.i8, 0x20u, v2236 + v134 + v135 * v2246, v2246, 16);
                sub_27729B98C(v2271.i8, 0x20u, (v165 + 2), v2246, 16);
                goto LABEL_510;
              case 12:
                v558 = 0;
                v559 = (v165 - 2);
                do
                {
                  v560 = *v559;
                  v559 = (v559 + v2246);
                  v561 = vzip1q_s8(vextq_s8(v560, v560, 3uLL), v20);
                  v562 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v560, v560, 2uLL), v20), v561), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v560, v560, 1uLL), v20), vzip1q_s8(vextq_s8(v560, v560, 4uLL), v20)));
                  *(&v2270 + v558) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v562, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v560, v20), vzip1q_s8(vextq_s8(v560, v560, 5uLL), v20)), v562)), v22), 5uLL))), v561);
                  v558 += 32;
                }

                while (v558 != 512);
                v563 = 0;
                v564 = (v165 + 6);
                v169 = v2257;
                v170 = v2211;
                do
                {
                  v565 = *v564;
                  v564 = (v564 + v2246);
                  v566 = vzip1q_s8(vextq_s8(v565, v565, 3uLL), v20);
                  v567 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v565, v565, 2uLL), v20), v566), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v565, v565, 1uLL), v20), vzip1q_s8(vextq_s8(v565, v565, 4uLL), v20)));
                  *(&v2271 + v563) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v567, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v565, v20), vzip1q_s8(vextq_s8(v565, v565, 5uLL), v20)), v567)), v22), 5uLL))), v566);
                  v563 += 32;
                }

                while (v563 != 512);
                break;
              case 13:
                v658 = v2236 + v134 + v135 * v2246;
                v659 = v2246;
                v660 = 2;
                goto LABEL_508;
              case 14:
                sub_27729BBEC(v2270.i8, 0x20u, v2236 + v134 + v135 * v2246, v2246);
                sub_27729BBEC(v2271.i8, 0x20u, (v165 + 2), v2246);
                goto LABEL_510;
              case 15:
                v658 = v2236 + v134 + v135 * v2246;
                v659 = v2246;
                v660 = 3;
LABEL_508:
                v800 = 3;
LABEL_509:
                sub_27729AF04(v2270.i8, v658, v659, 16, v660, v800);
LABEL_510:
                v22.i64[0] = 0x10001000100010;
                v22.i64[1] = 0x10001000100010;
                v10 = v2266;
                v20 = v2268;
                v169 = v2257;
                v170 = v2211;
                break;
              default:
                v168 = 0;
                v169 = v2257;
                v170 = v2211;
                do
                {
                  v171 = &v2270.i8[v168];
                  v10 = *v165;
                  v165 = (v165 + v2246);
                  vst2_s8(v171, v10);
                  v171 += 16;
                  *v171 = vzip2q_s8(v10, v20);
                  v168 += 32;
                }

                while (v168 != 512);
                break;
            }

            switch(v170)
            {
              case 1:
                v1048 = 0;
                v1049 = (v169 - 2 * v160);
                v1050 = (v1049 + v160 + v160);
                v1051 = vzip1q_s8(*(v1050 + v160 + v160), v20);
                v1052 = vzip1q_s8(*(v1050 + v160), v20);
                v1053 = vzip1q_s8(*v1050, v20);
                v1054 = vzip1q_s8(*(v1049 + v160), v20);
                v1055 = vzip1q_s8(*v1049, v20);
                v1056 = (v2206 + 5 * v160 + v2205 + v160 * v145 - 2 * v160);
                do
                {
                  v1057 = v1054;
                  v1054 = v1053;
                  v1053 = v1052;
                  v1052 = v1051;
                  v1051 = vzip1q_s8(*v1056, v20);
                  v1058 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1054, v1053), 2uLL), vaddq_s16(v1057, v1052));
                  *(&v2274 + v1048) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1055, v1058), vshlq_n_s16(v1058, 2uLL)), vaddq_s16(v1051, v22)), 5uLL))), v1054);
                  v1048 += 32;
                  v1056 = (v1056 + v160);
                  v1055 = v1057;
                }

                while (v1048 != 512);
                v1059 = 0;
                v1060 = v169 - 2 * v160;
                v1061 = *(v1060 + 8);
                v1062 = &v1060[v160 + 8];
                v1063 = (v1062 + v160 + v160);
                v1064 = vzip1q_s8(*(v1063 + v160), v20);
                v1065 = vzip1q_s8(*v1063, v20);
                v1066 = vzip1q_s8(*(v1062 + v160), v20);
                v1067 = vzip1q_s8(*v1062, v20);
                v1068 = vzip1q_s8(v1061, v20);
                v1069 = (v2206 + 5 * v160 + v2205 + v160 * v145 - 2 * v160 + 8);
                v956 = v2253;
                v955 = v2254;
                v957 = v2212;
                v21.i64[0] = 0x20002000200020;
                v21.i64[1] = 0x20002000200020;
                v958 = v2202;
                _X4 = v2220;
                v960 = v2245;
                v961 = v2230;
                v962 = v2200;
                v963 = v163;
                v965 = v2180;
                v964 = v2181;
                v966 = v2252;
                do
                {
                  v1070 = v1067;
                  v1067 = v1066;
                  v1066 = v1065;
                  v1065 = v1064;
                  v1064 = vzip1q_s8(*v1069, v20);
                  v1071 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1067, v1066), 2uLL), vaddq_s16(v1070, v1065));
                  *(&v2275 + v1059) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1068, v1071), vshlq_n_s16(v1071, 2uLL)), vaddq_s16(v1064, v22)), 5uLL))), v1067);
                  v1059 += 32;
                  v1069 = (v1069 + v160);
                  v1068 = v1070;
                }

                while (v1059 != 512);
                break;
              case 2:
                v993 = 0;
                v994 = (v169 - 2 * v160);
                v995 = (v994 + v160 + v160);
                v996 = vzip1q_s8(*(v995 + v160 + v160), v20);
                v997 = vzip1q_s8(*(v995 + v160), v20);
                v998 = vzip1q_s8(*v995, v20);
                v999 = vzip1q_s8(*(v994 + v160), v20);
                v1000 = vzip1q_s8(*v994, v20);
                v1001 = (v2206 + 5 * v160 + v2205 + v160 * v145 - 2 * v160);
                do
                {
                  v1002 = v999;
                  v999 = v998;
                  v998 = v997;
                  v997 = v996;
                  v1003 = &v2274.i8[v993];
                  v996 = vzip1q_s8(*v1001, v20);
                  v1004 = vsubq_s16(vshlq_n_s16(vaddq_s16(v999, v998), 2uLL), vaddq_s16(v1002, v997));
                  v1004.val[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1000, v1004), vshlq_n_s16(v1004, 2uLL)), vaddq_s16(v996, v22)), 5uLL));
                  v1005 = v20.i64[0];
                  vst2_s8(v1003, v1004);
                  v993 += 32;
                  v1001 = (v1001 + v160);
                  v1000 = v1002;
                }

                while (v993 != 512);
                v1006 = 0;
                v1007 = v169 - 2 * v160;
                v1008 = *(v1007 + 8);
                v1009 = &v1007[v160 + 8];
                v1010 = (v1009 + v160 + v160);
                v1011 = vzip1q_s8(*(v1010 + v160), v20);
                v1012 = vzip1q_s8(*v1010, v20);
                v1013 = vzip1q_s8(*(v1009 + v160), v20);
                v1014 = vzip1q_s8(*v1009, v20);
                v1015 = vzip1q_s8(v1008, v20);
                v1016 = (v2206 + 5 * v160 + v2205 + v160 * v145 - 2 * v160 + 8);
                v956 = v2253;
                v955 = v2254;
                v957 = v2212;
                v21.i64[0] = 0x20002000200020;
                v21.i64[1] = 0x20002000200020;
                v958 = v2202;
                _X4 = v2220;
                v960 = v2245;
                v961 = v2230;
                v962 = v2200;
                v963 = v163;
                v965 = v2180;
                v964 = v2181;
                v966 = v2252;
                do
                {
                  v1017 = v1014;
                  v1014 = v1013;
                  v1013 = v1012;
                  v1012 = v1011;
                  v1018 = &v2275.i8[v1006];
                  v1011 = vzip1q_s8(*v1016, v20);
                  v1019 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1014, v1013), 2uLL), vaddq_s16(v1017, v1012));
                  v1019.val[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1015, v1019), vshlq_n_s16(v1019, 2uLL)), vaddq_s16(v1011, v22)), 5uLL));
                  v1020 = v20.i64[0];
                  vst2_s8(v1018, v1019);
                  v1006 += 32;
                  v1016 = (v1016 + v160);
                  v1015 = v1017;
                }

                while (v1006 != 512);
                break;
              case 3:
                v1024 = 0;
                v1025 = (v169 - 2 * v160);
                v1026 = (v1025 + v160 + v160);
                v1027 = vzip1q_s8(*(v1026 + v160 + v160), v20);
                v1028 = vzip1q_s8(*(v1026 + v160), v20);
                v1029 = vzip1q_s8(*v1026, v20);
                v1030 = vzip1q_s8(*(v1025 + v160), v20);
                v1031 = vzip1q_s8(*v1025, v20);
                v1032 = (v2206 + 5 * v160 + v2205 + v160 * v145 - 2 * v160);
                do
                {
                  v1033 = v1030;
                  v1030 = v1029;
                  v1029 = v1028;
                  v1028 = v1027;
                  v1027 = vzip1q_s8(*v1032, v20);
                  v1034 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1030, v1029), 2uLL), vaddq_s16(v1033, v1028));
                  *(&v2274 + v1024) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1031, v1034), vshlq_n_s16(v1034, 2uLL)), vaddq_s16(v1027, v22)), 5uLL))), v1029);
                  v1024 += 32;
                  v1032 = (v1032 + v160);
                  v1031 = v1033;
                }

                while (v1024 != 512);
                v1035 = 0;
                v1036 = v169 - 2 * v160;
                v1037 = *(v1036 + 8);
                v1038 = &v1036[v160 + 8];
                v1039 = (v1038 + v160 + v160);
                v1040 = vzip1q_s8(*(v1039 + v160), v20);
                v1041 = vzip1q_s8(*v1039, v20);
                v1042 = vzip1q_s8(*(v1038 + v160), v20);
                v1043 = vzip1q_s8(*v1038, v20);
                v1044 = vzip1q_s8(v1037, v20);
                v1045 = (v2206 + 5 * v160 + v2205 + v160 * v145 - 2 * v160 + 8);
                v956 = v2253;
                v955 = v2254;
                v957 = v2212;
                v21.i64[0] = 0x20002000200020;
                v21.i64[1] = 0x20002000200020;
                v958 = v2202;
                _X4 = v2220;
                v960 = v2245;
                v961 = v2230;
                v962 = v2200;
                v963 = v163;
                v965 = v2180;
                v964 = v2181;
                v966 = v2252;
                do
                {
                  v1046 = v1043;
                  v1043 = v1042;
                  v1042 = v1041;
                  v1041 = v1040;
                  v1040 = vzip1q_s8(*v1045, v20);
                  v1047 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1043, v1042), 2uLL), vaddq_s16(v1046, v1041));
                  *(&v2275 + v1035) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1044, v1047), vshlq_n_s16(v1047, 2uLL)), vaddq_s16(v1040, v22)), 5uLL))), v1042);
                  v1035 += 32;
                  v1045 = (v1045 + v160);
                  v1044 = v1046;
                }

                while (v1035 != 512);
                break;
              case 4:
                v972 = 0;
                v973 = (v169 - 2);
                do
                {
                  v974 = *v973;
                  v973 = (v973 + v160);
                  v975 = vzip1q_s8(vextq_s8(v974, v974, 2uLL), v20);
                  v976 = vsubq_s16(vshlq_n_s16(vaddq_s16(v975, vzip1q_s8(vextq_s8(v974, v974, 3uLL), v20)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v974, v974, 1uLL), v20), vzip1q_s8(vextq_s8(v974, v974, 4uLL), v20)));
                  *(&v2274 + v972) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v976, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v974, v20), vzip1q_s8(vextq_s8(v974, v974, 5uLL), v20)), v976)), v22), 5uLL))), v975);
                  v972 += 32;
                }

                while (v972 != 512);
                v977 = 0;
                v978 = (v169 + 6);
                v956 = v2253;
                v955 = v2254;
                v957 = v2212;
                v21.i64[0] = 0x20002000200020;
                v21.i64[1] = 0x20002000200020;
                v958 = v2202;
                _X4 = v2220;
                v960 = v2245;
                v961 = v2230;
                v962 = v2200;
                v963 = v163;
                v965 = v2180;
                v964 = v2181;
                v966 = v2252;
                do
                {
                  v979 = *v978;
                  v978 = (v978 + v160);
                  v980 = vzip1q_s8(vextq_s8(v979, v979, 2uLL), v20);
                  v981 = vsubq_s16(vshlq_n_s16(vaddq_s16(v980, vzip1q_s8(vextq_s8(v979, v979, 3uLL), v20)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v979, v979, 1uLL), v20), vzip1q_s8(vextq_s8(v979, v979, 4uLL), v20)));
                  *(&v2275 + v977) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v981, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v979, v20), vzip1q_s8(vextq_s8(v979, v979, 5uLL), v20)), v981)), v22), 5uLL))), v980);
                  v977 += 32;
                }

                while (v977 != 512);
                break;
              case 5:
                v1021 = v169;
                v1022 = v160;
                v1023 = 2;
                goto LABEL_546;
              case 6:
                v2267 = v10;
                v2269 = v20;
                v1487 = v169;
                sub_27729B1B0(v2274.i8, 0x20u, v169, v160);
                sub_27729B1B0(v2275.i8, 0x20u, (v1487 + 2), v160);
                goto LABEL_590;
              case 7:
                v1021 = v169;
                v1022 = v160;
                v1023 = 3;
LABEL_546:
                v1072 = 2;
                goto LABEL_589;
              case 8:
                v1511 = 0;
                v1512 = (v169 - 2);
                do
                {
                  v1513 = &v2274.i8[v1511];
                  v1514 = *v1512;
                  v1512 = (v1512 + v160);
                  v1515 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1514, v1514, 2uLL), v20), vzip1q_s8(vextq_s8(v1514, v1514, 3uLL), v20)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1514, v1514, 1uLL), v20), vzip1q_s8(vextq_s8(v1514, v1514, 4uLL), v20)));
                  *v1514.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1515, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1514, v20), vzip1q_s8(vextq_s8(v1514, v1514, 5uLL), v20)), v1515)), v22), 5uLL));
                  v1515.i64[0] = v20.i64[0];
                  vst2_s8(v1513, v1514);
                  v1511 += 32;
                }

                while (v1511 != 512);
                v1516 = 0;
                v1517 = (v169 + 6);
                v956 = v2253;
                v955 = v2254;
                v957 = v2212;
                v21.i64[0] = 0x20002000200020;
                v21.i64[1] = 0x20002000200020;
                v958 = v2202;
                _X4 = v2220;
                v960 = v2245;
                v961 = v2230;
                v962 = v2200;
                v963 = v163;
                v965 = v2180;
                v964 = v2181;
                v966 = v2252;
                do
                {
                  v1518 = &v2275.i8[v1516];
                  v1519 = *v1517;
                  v1517 = (v1517 + v160);
                  v1520 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1519, v1519, 2uLL), v20), vzip1q_s8(vextq_s8(v1519, v1519, 3uLL), v20)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1519, v1519, 1uLL), v20), vzip1q_s8(vextq_s8(v1519, v1519, 4uLL), v20)));
                  *v1519.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1520, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1519, v20), vzip1q_s8(vextq_s8(v1519, v1519, 5uLL), v20)), v1520)), v22), 5uLL));
                  v1520.i64[0] = v20.i64[0];
                  vst2_s8(v1518, v1519);
                  v1516 += 32;
                }

                while (v1516 != 512);
                break;
              case 9:
                v2267 = v10;
                v2269 = v20;
                v992 = v169;
                sub_27729B614(v2274.i8, 0x20u, v169, v160, 16);
                sub_27729B614(v2275.i8, 0x20u, (v992 + 2), v160, 16);
                goto LABEL_590;
              case 10:
                v2267 = v10;
                v2269 = v20;
                v1489 = v169;
                sub_27729B7DC(&v2274, 32, v169, v160, 16);
                sub_27729B7DC(&v2275, 32, (v1489 + 2), v160, 16);
                goto LABEL_590;
              case 11:
                v2267 = v10;
                v2269 = v20;
                v971 = v169;
                sub_27729B98C(v2274.i8, 0x20u, v169, v160, 16);
                sub_27729B98C(v2275.i8, 0x20u, (v971 + 2), v160, 16);
                goto LABEL_590;
              case 12:
                v982 = 0;
                v983 = (v169 - 2);
                do
                {
                  v984 = *v983;
                  v983 = (v983 + v160);
                  v985 = vzip1q_s8(vextq_s8(v984, v984, 3uLL), v20);
                  v986 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v984, v984, 2uLL), v20), v985), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v984, v984, 1uLL), v20), vzip1q_s8(vextq_s8(v984, v984, 4uLL), v20)));
                  *(&v2274 + v982) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v986, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v984, v20), vzip1q_s8(vextq_s8(v984, v984, 5uLL), v20)), v986)), v22), 5uLL))), v985);
                  v982 += 32;
                }

                while (v982 != 512);
                v987 = 0;
                v988 = (v169 + 6);
                v956 = v2253;
                v955 = v2254;
                v957 = v2212;
                v21.i64[0] = 0x20002000200020;
                v21.i64[1] = 0x20002000200020;
                v958 = v2202;
                _X4 = v2220;
                v960 = v2245;
                v961 = v2230;
                v962 = v2200;
                v963 = v163;
                v965 = v2180;
                v964 = v2181;
                v966 = v2252;
                do
                {
                  v989 = *v988;
                  v988 = (v988 + v160);
                  v990 = vzip1q_s8(vextq_s8(v989, v989, 3uLL), v20);
                  v991 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v989, v989, 2uLL), v20), v990), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v989, v989, 1uLL), v20), vzip1q_s8(vextq_s8(v989, v989, 4uLL), v20)));
                  *(&v2275 + v987) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v991, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v989, v20), vzip1q_s8(vextq_s8(v989, v989, 5uLL), v20)), v991)), v22), 5uLL))), v990);
                  v987 += 32;
                }

                while (v987 != 512);
                break;
              case 13:
                v1021 = v169;
                v1022 = v160;
                v1023 = 2;
                goto LABEL_588;
              case 14:
                v2267 = v10;
                v2269 = v20;
                v970 = v169;
                sub_27729BBEC(v2274.i8, 0x20u, v169, v160);
                sub_27729BBEC(v2275.i8, 0x20u, (v970 + 2), v160);
                goto LABEL_590;
              case 15:
                v1021 = v169;
                v1022 = v160;
                v1023 = 3;
LABEL_588:
                v1072 = 3;
LABEL_589:
                v2267 = v10;
                v2269 = v20;
                sub_27729AF04(v2274.i8, v1021, v1022, 16, v1023, v1072);
LABEL_590:
                v22.i64[0] = 0x10001000100010;
                v22.i64[1] = 0x10001000100010;
                v10 = v2267;
                v20 = v2269;
                v956 = v2253;
                v955 = v2254;
                v957 = v2212;
                v21.i64[0] = 0x20002000200020;
                v21.i64[1] = 0x20002000200020;
                v958 = v2202;
                _X4 = v2220;
                v960 = v2245;
                v961 = v2230;
                v962 = v2200;
                v963 = v163;
                v965 = v2180;
                v964 = v2181;
                v966 = v2252;
                break;
              default:
                v954 = 0;
                v956 = v2253;
                v955 = v2254;
                v957 = v2212;
                v21.i64[0] = 0x20002000200020;
                v21.i64[1] = 0x20002000200020;
                v958 = v2202;
                _X4 = v2220;
                v960 = v2245;
                v961 = v2230;
                v962 = v2200;
                v963 = v163;
                v965 = v2180;
                v964 = v2181;
                v966 = v2252;
                do
                {
                  v967 = &v2274.i8[v954];
                  v968 = *v169;
                  v169 = (v169 + v160);
                  v969 = v20.i64[0];
                  vst2_s8(v967, v968);
                  v967 += 16;
                  *v967 = vzip2q_s8(v968, v20);
                  v954 += 32;
                }

                while (v954 != 512);
                break;
            }

            v1192 = 0;
            v1193 = v2226;
            do
            {
              v1194 = v2273[v1192 / 0x10];
              v1195 = vrhaddq_u16(*(&v2270 + v1192), *(&v2274 + v1192));
              v1196 = vrhaddq_u16(*(&v2270 + v1192 + 16), *(&v2275 + v1192));
              v1197 = vrhaddq_u16(*(&v2272 + v1192), *(&v2276 + v1192));
              v1198 = vrhaddq_u16(v1194, v2277[v1192 / 0x10]);
              if (v955)
              {
                v1194 = *v1193;
                v1199 = v1193[1];
                v1200 = v1193[2];
                v1201 = v1193[3];
                v1193 += 4;
                v1195 = vaddq_s16(v1194, v1195);
                v1196 = vaddq_s16(v1199, v1196);
                v1197 = vaddq_s16(v1200, v1197);
                v1198 = vaddq_s16(v1201, v1198);
              }

              *v158 = vqmovun_high_s16(vqmovun_s16(v1195), v1196);
              *(v158 + v956) = vqmovun_high_s16(vqmovun_s16(v1197), v1198);
              v158 = (v158 + v957);
              v1192 += 64;
            }

            while (v1192 != 512);
            if (v2214 == 64)
            {
              __asm { PRFM            #0, [X24] }

              v1227 = 9;
              v1205 = v2278;
              v1202 = v2209;
              do
              {
                v1228 = _X24;
                _X24 = (_X24 + v960);
                __asm { PRFM            #0, [X24] }

                v1230 = vextq_s8(*v1228, *v1228, 2uLL);
                v1230.i16[7] = v1228[1].i16[0];
                v1231 = vrhaddq_u8(*v1228, v1230);
                v1230.i64[0] = v20.i64[0];
                v1205[3] = vzip2q_s8(v1231, v20);
                v1205 += 2;
                vst2_s8(v1205->i8, *(&v1230 - 8));
                --v1227;
              }

              while (v1227 > 2);
              v1232 = vextq_s8(*_X24, *_X24, 2uLL);
              v1232.i16[7] = _X24[1].i16[0];
              v1225 = vrhaddq_u8(*_X24, v1232);
            }

            else
            {
              v1202 = v2209;
              if (v2214 != 4)
              {
                if (v2214)
                {
                  v1235 = 0;
                  v1236 = v2207 - (8 * v47 + 8 * v48) + 64;
                  v1237 = v20;
                  v1237.i32[0] = v1236 | (v1236 << 16);
                  v1238 = vqtbl1q_s8(v1237, xmmword_2773B3DF0);
                  v1239 = v20;
                  v1239.i32[0] = (8 * v47 - v2207) | ((8 * v47 - v2207) << 16);
                  v1240 = vqtbl1q_s8(v1239, xmmword_2773B3DF0);
                  v1241 = v20;
                  v1241.i32[0] = (8 * v48 - v2207) | ((8 * v48 - v2207) << 16);
                  v1242 = vqtbl1q_s8(v1241, xmmword_2773B3DF0);
                  v2288 = v1238;
                  v2289 = v1240;
                  v2290 = v1242;
                  v2291 = v965;
                  _X9 = &_X24->i8[v960];
                  __asm { PRFM            #0, [X9] }

                  v1194.i64[0] = _X24->i64[0];
                  v1245 = vqtbl1q_s8(v1194, xmmword_2773B3E00);
                  v1245.i16[3] = _X24->i16[4];
                  v1246 = vzip1q_s8(v1245, v20);
                  v1247 = vzip1q_s8(v1194, v20);
                  v1248 = v2216;
                  if (v2216 <= -16)
                  {
                    v1248 = -16;
                  }

                  if (v1248 >= v2218)
                  {
                    v1249 = v2218;
                  }

                  else
                  {
                    v1249 = v1248;
                  }

                  v1250 = (v963 + v960 + v2193 + v1249 + 8);
                  _X14 = v963 + v2193 + v1249 + 2 * v960;
                  do
                  {
                    __asm { PRFM            #0, [X14] }

                    v1253 = vmlaq_s16(vmulq_s16(v1240, v1246), v1238, v1247);
                    v1246.i64[0] = *(v1250 - 1);
                    v1247 = vzip1q_s8(v1246, v20);
                    v1254 = vqtbl1q_s8(v1246, xmmword_2773B3E00);
                    v1254.i16[3] = *v1250;
                    v1250 = (v1250 + v960);
                    v1246 = vzip1q_s8(v1254, v20);
                    *(&v2279 + v1235) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1253, v1242, v1247), v965, v1246), v21), 6uLL);
                    v1235 += 32;
                    _X14 += v960;
                  }

                  while (v1235 != 256);
                  v1255 = 0;
                  _X10 = &_X24->i8[v960 + 8];
                  __asm { PRFM            #0, [X10] }

                  v1247.i64[0] = _X24->i64[1];
                  v1258 = vqtbl1q_s8(v1247, xmmword_2773B3E00);
                  v1258.i16[3] = _X24[1].i16[0];
                  v1259 = vzip1q_s8(v1258, v20);
                  v1194 = vzip1q_s8(v1247, v20);
                  if (v1248 >= v2218)
                  {
                    v1260 = v2218;
                  }

                  else
                  {
                    v1260 = v1248;
                  }

                  v1261 = v963 + v960 + v1260;
                  v1262 = v963 + 2 * v960 + v1260 + 8;
                  do
                  {
                    _X12 = v1262 + v2193;
                    __asm { PRFM            #0, [X12] }

                    v1265 = vmlaq_s16(vmulq_s16(v1240, v1259), v1238, v1194);
                    v1259.i64[0] = *(v1261 + v2193 + 8);
                    v1194 = vzip1q_s8(v1259, v20);
                    v1266 = vqtbl1q_s8(v1259, xmmword_2773B3E00);
                    v1266.i16[3] = *(v1261 + v2193 + 16);
                    v1259 = vzip1q_s8(v1266, v20);
                    *(&v2280 + v1255) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1265, v1242, v1194), v965, v1259), v21), 6uLL);
                    v1255 += 32;
                    v1261 += v960;
                    v1262 += v960;
                  }

                  while (v1255 != 256);
LABEL_625:
                  if (v2241 == 64)
                  {
                    __asm { PRFM            #0, [X4] }

                    v1291 = 9;
                    v1269 = v2283;
                    do
                    {
                      v1292 = _X4;
                      _X4 = (_X4 + v129);
                      __asm { PRFM            #0, [X4] }

                      v1294 = vextq_s8(*v1292, *v1292, 2uLL);
                      v1294.i16[7] = v1292[1].i16[0];
                      v1295 = vrhaddq_u8(*v1292, v1294);
                      v1294.i64[0] = v20.i64[0];
                      v1269[3] = vzip2q_s8(v1295, v20);
                      v1269 += 2;
                      vst2_s8(v1269->i8, *(&v1294 - 8));
                      --v1291;
                    }

                    while (v1291 > 2);
                    v1296 = vextq_s8(*_X4, *_X4, 2uLL);
                    v1296.i16[7] = _X4[1].i16[0];
                    v1289 = vrhaddq_u8(*_X4, v1296);
                  }

                  else
                  {
                    if (v2241 != 4)
                    {
                      if (v2241)
                      {
                        v1299 = 0;
                        v1300 = v2208 - (8 * v962 + 8 * v2197) + 64;
                        v1301 = v20;
                        v1301.i32[0] = v1300 | (v1300 << 16);
                        v1302 = vqtbl1q_s8(v1301, xmmword_2773B3DF0);
                        v1303 = v20;
                        v1303.i32[0] = (8 * v962 - v2208) | ((8 * v962 - v2208) << 16);
                        v1304 = vqtbl1q_s8(v1303, xmmword_2773B3DF0);
                        v1305 = v20;
                        v1305.i32[0] = (8 * v2197 - v2208) | ((8 * v2197 - v2208) << 16);
                        v1306 = vqtbl1q_s8(v1305, xmmword_2773B3DF0);
                        v2292 = v1302;
                        v2293 = v1304;
                        v2294 = v1306;
                        v2295 = v964;
                        _X9 = &_X4->i8[v129];
                        __asm { PRFM            #0, [X9] }

                        v1194.i64[0] = _X4->i64[0];
                        v1309 = vqtbl1q_s8(v1194, xmmword_2773B3E00);
                        v1309.i16[3] = _X4->i16[4];
                        v1310 = vzip1q_s8(v1309, v20);
                        v1311 = vzip1q_s8(v1194, v20);
                        v1312 = v2184;
                        if (v2184 <= -16)
                        {
                          v1312 = -16;
                        }

                        if (v1312 >= v2187)
                        {
                          v1313 = v2187;
                        }

                        else
                        {
                          v1313 = v1312;
                        }

                        v1314 = v2190 + v129 + v1313;
                        v1315 = v2190 + v1313 + 2 * v129;
                        do
                        {
                          _X16 = v1315 + v961;
                          __asm { PRFM            #0, [X16] }

                          v1318 = vmlaq_s16(vmulq_s16(v1304, v1310), v1302, v1311);
                          v1310.i64[0] = *(v1314 + v961);
                          v1311 = vzip1q_s8(v1310, v20);
                          v1319 = vqtbl1q_s8(v1310, xmmword_2773B3E00);
                          v1319.i16[3] = *(v1314 + v961 + 8);
                          v1310 = vzip1q_s8(v1319, v20);
                          *(&v2284 + v1299) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1318, v1306, v1311), v964, v1310), v21), 6uLL);
                          v1299 += 32;
                          v1314 += v129;
                          v1315 += v129;
                        }

                        while (v1299 != 256);
                        v1320 = 0;
                        _X10 = &_X4->i8[v129 + 8];
                        __asm { PRFM            #0, [X10] }

                        v1311.i64[0] = _X4->i64[1];
                        v1323 = vqtbl1q_s8(v1311, xmmword_2773B3E00);
                        v1323.i16[3] = _X4[1].i16[0];
                        v1324 = vzip1q_s8(v1323, v20);
                        v1325 = vzip1q_s8(v1311, v20);
                        if (v1312 >= v2187)
                        {
                          v1326 = v2187;
                        }

                        else
                        {
                          v1326 = v1312;
                        }

                        v1327 = v2190 + v129 + v1326;
                        v1328 = v2190 + 2 * v129 + v1326 + 8;
                        do
                        {
                          _X12 = v1328 + v961;
                          __asm { PRFM            #0, [X12] }

                          v1331 = vmlaq_s16(vmulq_s16(v1304, v1324), v1302, v1325);
                          v1324.i64[0] = *(v1327 + v961 + 8);
                          v1325 = vzip1q_s8(v1324, v20);
                          v1332 = vqtbl1q_s8(v1324, xmmword_2773B3E00);
                          v1332.i16[3] = *(v1327 + v961 + 16);
                          v1324 = vzip1q_s8(v1332, v20);
                          *(&v2285 + v1320) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1331, v1306, v1325), v964, v1324), v21), 6uLL);
                          v1320 += 32;
                          v1327 += v129;
                          v1328 += v129;
                        }

                        while (v1320 != 256);
                        goto LABEL_655;
                      }

                      __asm { PRFM            #0, [X4] }

                      v1268 = 9;
                      v1269 = v2283;
                      do
                      {
                        v1270 = _X4;
                        _X4 = (_X4 + v129);
                        __asm { PRFM            #0, [X4] }

                        v1272 = *v1270;
                        v1269[3] = vzip2q_s8(*v1270, v20);
                        v1269 += 2;
                        v1273 = v20.i64[0];
                        vst2_s8(v1269->i8, v1272);
                        --v1268;
                      }

                      while (v1268 > 2);
                      v1274 = *_X4;
                      v1275 = vzip2q_s8(*_X4, v20);
                      v1276 = v1269[2].i8;
                      v1277 = v20.i64[0];
                      vst2_s8(v1276, v1274);
LABEL_642:
                      v1269[3] = v1275;
LABEL_655:
                      v1333 = 4;
                      v1334 = &v2284;
                      do
                      {
                        a7 = v1334[-13];
                        a8 = v1334[1];
                        a9 = v1334[2];
                        a10 = v1334[3];
                        v1335 = vrhaddq_u16(v1334[-16], *v1334);
                        v1336 = vrhaddq_u16(v1334[-15], a8);
                        v1337 = vrhaddq_u16(v1334[-14], a9);
                        v1338 = vrhaddq_u16(a7, a10);
                        if (v966)
                        {
                          a7 = *v958;
                          a8 = v958[1];
                          a9 = v958[2];
                          a10 = v958[3];
                          v958 += 4;
                          v1335 = vaddq_s16(a7, v1335);
                          v1336 = vaddq_s16(a8, v1336);
                          v1337 = vaddq_s16(a9, v1337);
                          v1338 = vaddq_s16(a10, v1338);
                        }

                        v1334 += 4;
                        a6 = vqmovun_high_s16(vqmovun_s16(v1335), v1336);
                        *v159 = a6;
                        *(v159 + v2251) = vqmovun_high_s16(vqmovun_s16(v1337), v1338);
                        v159 = (v159 + v1202);
                        --v1333;
                      }

                      while (v1333);
                      goto LABEL_1058;
                    }

                    _X8 = &_X4->i8[v129];
                    __asm { PRFM            #0, [X8] }

                    v1280 = *_X4;
                    v1281 = v2184;
                    if (v2184 <= -16)
                    {
                      v1281 = -16;
                    }

                    if (v1281 >= v2187)
                    {
                      v1281 = v2187;
                    }

                    v1282 = (v2190 + v961 + v1281);
                    v1283 = 9;
                    v1269 = v2283;
                    do
                    {
                      _X12 = &v1282->i8[2 * v129];
                      v1282 = (v1282 + v129);
                      __asm { PRFM            #0, [X12] }

                      v1286 = *v1282;
                      v1287 = vrhaddq_u8(v1280, *v1282);
                      v1288 = v20.i64[0];
                      v1269[3] = vzip2q_s8(v1287, v20);
                      v1269 += 2;
                      vst2_s8(v1269->i8, v1287);
                      --v1283;
                      v1280 = v1286;
                    }

                    while (v1283 > 2);
                    v1289 = vrhaddq_u8(v1286, *(v1282 + v129));
                  }

                  v1297 = v1269[2].i8;
                  v1298 = v20.i64[0];
                  vst2_s8(v1297, v1289);
                  v1275 = vzip2q_s8(v1289, v20);
                  goto LABEL_642;
                }

                __asm { PRFM            #0, [X24] }

                v1204 = 9;
                v1205 = v2278;
                do
                {
                  v1206 = _X24;
                  _X24 = (_X24 + v960);
                  __asm { PRFM            #0, [X24] }

                  v1208 = *v1206;
                  v1205[3] = vzip2q_s8(*v1206, v20);
                  v1205 += 2;
                  v1209 = v20.i64[0];
                  vst2_s8(v1205->i8, v1208);
                  --v1204;
                }

                while (v1204 > 2);
                v1210 = *_X24;
                v1211 = vzip2q_s8(*_X24, v20);
                v1212 = v1205[2].i8;
                v1213 = v20.i64[0];
                vst2_s8(v1212, v1210);
LABEL_612:
                v1205[3] = v1211;
                goto LABEL_625;
              }

              _X8 = &_X24->i8[v960];
              __asm { PRFM            #0, [X8] }

              v1216 = *_X24;
              v1217 = v2216;
              if (v2216 <= -16)
              {
                v1217 = -16;
              }

              if (v1217 >= v2218)
              {
                v1217 = v2218;
              }

              v1218 = (v963 + v2193 + v1217);
              v1219 = 9;
              v1205 = v2278;
              do
              {
                _X12 = &v1218->i8[2 * v960];
                v1218 = (v1218 + v960);
                __asm { PRFM            #0, [X12] }

                v1222 = *v1218;
                v1223 = vrhaddq_u8(v1216, *v1218);
                v1224 = v20.i64[0];
                v1205[3] = vzip2q_s8(v1223, v20);
                v1205 += 2;
                vst2_s8(v1205->i8, v1223);
                --v1219;
                v1216 = v1222;
              }

              while (v1219 > 2);
              v1225 = vrhaddq_u8(v1222, *(v1218 + v960));
            }

            v1233 = v1205[2].i8;
            v1234 = v20.i64[0];
            vst2_s8(v1233, v1225);
            v1211 = vzip2q_s8(v1225, v20);
            goto LABEL_612;
          }

          switch(v117)
          {
            case 1:
              v752 = 0;
              v753 = (v165 - 2 * v2246);
              v754 = (v753 + v2246 + v2246);
              v755 = vzip1q_s8(*(v754 + v2246 + v2246), v20);
              v756 = vzip1q_s8(*(v754 + v2246), v20);
              v757 = vzip1q_s8(*v754, v20);
              v758 = vzip1q_s8(*(v753 + v2246), v20);
              v759 = vzip1q_s8(*v753, v20);
              v760 = (v2236 + 5 * v2246 + v134 + v2246 * v135 - 2 * v2246);
              do
              {
                v761 = v758;
                v758 = v757;
                v757 = v756;
                v756 = v755;
                v755 = vzip1q_s8(*v760, v20);
                v762 = vsubq_s16(vshlq_n_s16(vaddq_s16(v758, v757), 2uLL), vaddq_s16(v761, v756));
                *(&v2270 + v752) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v759, v762), vshlq_n_s16(v762, 2uLL)), vaddq_s16(v755, v22)), 5uLL))), v758);
                v752 += 32;
                v760 = (v760 + v2246);
                v759 = v761;
              }

              while (v752 != 256);
              v763 = 0;
              v764 = v165 - 2 * v2246;
              v765 = *(v764 + 8);
              v766 = &v764[v2246 + 8];
              v767 = (v766 + v2246 + v2246);
              v768 = vzip1q_s8(*(v767 + v2246), v20);
              v769 = vzip1q_s8(*v767, v20);
              v770 = vzip1q_s8(*(v766 + v2246), v20);
              v771 = vzip1q_s8(*v766, v20);
              v772 = vzip1q_s8(v765, v20);
              v773 = (v2236 + 5 * v2246 + v134 + v2246 * v135 - 2 * v2246 + 8);
              v245 = v2257;
              v246 = v2211;
              do
              {
                v774 = v771;
                v771 = v770;
                v770 = v769;
                v769 = v768;
                v768 = vzip1q_s8(*v773, v20);
                v775 = vsubq_s16(vshlq_n_s16(vaddq_s16(v771, v770), 2uLL), vaddq_s16(v774, v769));
                *(&v2271 + v763) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v772, v775), vshlq_n_s16(v775, 2uLL)), vaddq_s16(v768, v22)), 5uLL))), v771);
                v763 += 32;
                v773 = (v773 + v2246);
                v772 = v774;
              }

              while (v763 != 256);
              break;
            case 2:
              v614 = 0;
              v615 = (v165 - 2 * v2246);
              v616 = (v615 + v2246 + v2246);
              v617 = vzip1q_s8(*(v616 + v2246 + v2246), v20);
              v618 = vzip1q_s8(*(v616 + v2246), v20);
              v619 = vzip1q_s8(*v616, v20);
              v620 = vzip1q_s8(*(v615 + v2246), v20);
              v621 = vzip1q_s8(*v615, v20);
              v622 = (v2236 + 5 * v2246 + v134 + v2246 * v135 - 2 * v2246);
              do
              {
                v623 = v620;
                v620 = v619;
                v619 = v618;
                v618 = v617;
                v624 = &v2270.i8[v614];
                v617 = vzip1q_s8(*v622, v20);
                v625 = vsubq_s16(vshlq_n_s16(vaddq_s16(v620, v619), 2uLL), vaddq_s16(v623, v618));
                v625.val[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v621, v625), vshlq_n_s16(v625, 2uLL)), vaddq_s16(v617, v22)), 5uLL));
                v626 = v20.i64[0];
                vst2_s8(v624, v625);
                v614 += 32;
                v622 = (v622 + v2246);
                v621 = v623;
              }

              while (v614 != 256);
              v627 = 0;
              v628 = v165 - 2 * v2246;
              v629 = *(v628 + 8);
              v630 = &v628[v2246 + 8];
              v631 = (v630 + v2246 + v2246);
              v632 = vzip1q_s8(*(v631 + v2246), v20);
              v633 = vzip1q_s8(*v631, v20);
              v634 = vzip1q_s8(*(v630 + v2246), v20);
              v635 = vzip1q_s8(*v630, v20);
              v636 = vzip1q_s8(v629, v20);
              v637 = (v2236 + 5 * v2246 + v134 + v2246 * v135 - 2 * v2246 + 8);
              v245 = v2257;
              v246 = v2211;
              do
              {
                v638 = v635;
                v635 = v634;
                v634 = v633;
                v633 = v632;
                v639 = &v2271.i8[v627];
                v632 = vzip1q_s8(*v637, v20);
                v640 = vsubq_s16(vshlq_n_s16(vaddq_s16(v635, v634), 2uLL), vaddq_s16(v638, v633));
                v640.val[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v636, v640), vshlq_n_s16(v640, 2uLL)), vaddq_s16(v632, v22)), 5uLL));
                v641 = v20.i64[0];
                vst2_s8(v639, v640);
                v627 += 32;
                v637 = (v637 + v2246);
                v636 = v638;
              }

              while (v627 != 256);
              break;
            case 3:
              v704 = 0;
              v705 = (v165 - 2 * v2246);
              v706 = (v705 + v2246 + v2246);
              v707 = vzip1q_s8(*(v706 + v2246 + v2246), v20);
              v708 = vzip1q_s8(*(v706 + v2246), v20);
              v709 = vzip1q_s8(*v706, v20);
              v710 = vzip1q_s8(*(v705 + v2246), v20);
              v711 = vzip1q_s8(*v705, v20);
              v712 = (v2236 + 5 * v2246 + v134 + v2246 * v135 - 2 * v2246);
              do
              {
                v713 = v710;
                v710 = v709;
                v709 = v708;
                v708 = v707;
                v707 = vzip1q_s8(*v712, v20);
                v714 = vsubq_s16(vshlq_n_s16(vaddq_s16(v710, v709), 2uLL), vaddq_s16(v713, v708));
                *(&v2270 + v704) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v711, v714), vshlq_n_s16(v714, 2uLL)), vaddq_s16(v707, v22)), 5uLL))), v709);
                v704 += 32;
                v712 = (v712 + v2246);
                v711 = v713;
              }

              while (v704 != 256);
              v715 = 0;
              v716 = v165 - 2 * v2246;
              v717 = *(v716 + 8);
              v718 = &v716[v2246 + 8];
              v719 = (v718 + v2246 + v2246);
              v720 = vzip1q_s8(*(v719 + v2246), v20);
              v721 = vzip1q_s8(*v719, v20);
              v722 = vzip1q_s8(*(v718 + v2246), v20);
              v723 = vzip1q_s8(*v718, v20);
              v724 = vzip1q_s8(v717, v20);
              v725 = (v2236 + 5 * v2246 + v134 + v2246 * v135 - 2 * v2246 + 8);
              v245 = v2257;
              v246 = v2211;
              do
              {
                v726 = v723;
                v723 = v722;
                v722 = v721;
                v721 = v720;
                v720 = vzip1q_s8(*v725, v20);
                v727 = vsubq_s16(vshlq_n_s16(vaddq_s16(v723, v722), 2uLL), vaddq_s16(v726, v721));
                *(&v2271 + v715) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v724, v727), vshlq_n_s16(v727, 2uLL)), vaddq_s16(v720, v22)), 5uLL))), v722);
                v715 += 32;
                v725 = (v725 + v2246);
                v724 = v726;
              }

              while (v715 != 256);
              break;
            case 4:
              v548 = 0;
              v549 = (v165 - 2);
              do
              {
                v550 = *v549;
                v549 = (v549 + v2246);
                v551 = vzip1q_s8(vextq_s8(v550, v550, 2uLL), v20);
                v552 = vsubq_s16(vshlq_n_s16(vaddq_s16(v551, vzip1q_s8(vextq_s8(v550, v550, 3uLL), v20)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v550, v550, 1uLL), v20), vzip1q_s8(vextq_s8(v550, v550, 4uLL), v20)));
                *(&v2270 + v548) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v552, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v550, v20), vzip1q_s8(vextq_s8(v550, v550, 5uLL), v20)), v552)), v22), 5uLL))), v551);
                v548 += 32;
              }

              while (v548 != 256);
              v553 = 0;
              v554 = (v165 + 6);
              v245 = v2257;
              v246 = v2211;
              do
              {
                v555 = *v554;
                v554 = (v554 + v2246);
                v556 = vzip1q_s8(vextq_s8(v555, v555, 2uLL), v20);
                v557 = vsubq_s16(vshlq_n_s16(vaddq_s16(v556, vzip1q_s8(vextq_s8(v555, v555, 3uLL), v20)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v555, v555, 1uLL), v20), vzip1q_s8(vextq_s8(v555, v555, 4uLL), v20)));
                *(&v2271 + v553) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v557, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v555, v20), vzip1q_s8(vextq_s8(v555, v555, 5uLL), v20)), v557)), v22), 5uLL))), v556);
                v553 += 32;
              }

              while (v553 != 256);
              break;
            case 5:
              v661 = v2236 + v134 + v135 * v2246;
              v662 = v2246;
              v663 = 2;
              goto LABEL_454;
            case 6:
              sub_27729BFC4(v2270.i8, 0x20u, v2236 + v134 + v135 * v2246, v2246);
              sub_27729BFC4(v2271.i8, 0x20u, (v165 + 2), v2246);
              goto LABEL_550;
            case 7:
              v661 = v2236 + v134 + v135 * v2246;
              v662 = v2246;
              v663 = 3;
LABEL_454:
              v801 = 2;
              goto LABEL_549;
            case 8:
              v1501 = 0;
              v1502 = (v165 - 2);
              do
              {
                v1503 = &v2270.i8[v1501];
                v1504 = *v1502;
                v1502 = (v1502 + v2246);
                v1505 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1504, v1504, 2uLL), v20), vzip1q_s8(vextq_s8(v1504, v1504, 3uLL), v20)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1504, v1504, 1uLL), v20), vzip1q_s8(vextq_s8(v1504, v1504, 4uLL), v20)));
                *v1504.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1505, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1504, v20), vzip1q_s8(vextq_s8(v1504, v1504, 5uLL), v20)), v1505)), v22), 5uLL));
                v1505.i64[0] = v20.i64[0];
                vst2_s8(v1503, v1504);
                v1501 += 32;
              }

              while (v1501 != 256);
              v1506 = 0;
              v1507 = (v165 + 6);
              v245 = v2257;
              v246 = v2211;
              do
              {
                v1508 = &v2271.i8[v1506];
                v1509 = *v1507;
                v1507 = (v1507 + v2246);
                v1510 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1509, v1509, 2uLL), v20), vzip1q_s8(vextq_s8(v1509, v1509, 3uLL), v20)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1509, v1509, 1uLL), v20), vzip1q_s8(vextq_s8(v1509, v1509, 4uLL), v20)));
                *v1509.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1510, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1509, v20), vzip1q_s8(vextq_s8(v1509, v1509, 5uLL), v20)), v1510)), v22), 5uLL));
                v1510.i64[0] = v20.i64[0];
                vst2_s8(v1508, v1509);
                v1506 += 32;
              }

              while (v1506 != 256);
              break;
            case 9:
              sub_27729B614(v2270.i8, 0x20u, v2236 + v134 + v135 * v2246, v2246, 8);
              sub_27729B614(v2271.i8, 0x20u, (v165 + 2), v2246, 8);
              goto LABEL_550;
            case 10:
              sub_27729B7DC(&v2270, 32, v2236 + v134 + v135 * v2246, v2246, 8);
              sub_27729B7DC(&v2271, 32, (v165 + 2), v2246, 8);
              goto LABEL_550;
            case 11:
              sub_27729B98C(v2270.i8, 0x20u, v2236 + v134 + v135 * v2246, v2246, 8);
              sub_27729B98C(v2271.i8, 0x20u, (v165 + 2), v2246, 8);
              goto LABEL_550;
            case 12:
              v568 = 0;
              v569 = (v165 - 2);
              do
              {
                v570 = *v569;
                v569 = (v569 + v2246);
                v571 = vzip1q_s8(vextq_s8(v570, v570, 3uLL), v20);
                v572 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v570, v570, 2uLL), v20), v571), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v570, v570, 1uLL), v20), vzip1q_s8(vextq_s8(v570, v570, 4uLL), v20)));
                *(&v2270 + v568) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v572, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v570, v20), vzip1q_s8(vextq_s8(v570, v570, 5uLL), v20)), v572)), v22), 5uLL))), v571);
                v568 += 32;
              }

              while (v568 != 256);
              v573 = 0;
              v574 = (v165 + 6);
              v245 = v2257;
              v246 = v2211;
              do
              {
                v575 = *v574;
                v574 = (v574 + v2246);
                v576 = vzip1q_s8(vextq_s8(v575, v575, 3uLL), v20);
                v577 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v575, v575, 2uLL), v20), v576), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v575, v575, 1uLL), v20), vzip1q_s8(vextq_s8(v575, v575, 4uLL), v20)));
                *(&v2271 + v573) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v577, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v575, v20), vzip1q_s8(vextq_s8(v575, v575, 5uLL), v20)), v577)), v22), 5uLL))), v576);
                v573 += 32;
              }

              while (v573 != 256);
              break;
            case 13:
              v661 = v2236 + v134 + v135 * v2246;
              v662 = v2246;
              v663 = 2;
              goto LABEL_548;
            case 14:
              sub_27729C39C(v2270.i8, 0x20u, v2236 + v134 + v135 * v2246, v2246);
              sub_27729C39C(v2271.i8, 0x20u, (v165 + 2), v2246);
              goto LABEL_550;
            case 15:
              v661 = v2236 + v134 + v135 * v2246;
              v662 = v2246;
              v663 = 3;
LABEL_548:
              v801 = 3;
LABEL_549:
              sub_27729AF04(v2270.i8, v661, v662, 8, v663, v801);
LABEL_550:
              v22.i64[0] = 0x10001000100010;
              v22.i64[1] = 0x10001000100010;
              v10 = v2266;
              v20 = v2268;
              v245 = v2257;
              v246 = v2211;
              break;
            default:
              v244 = 0;
              v245 = v2257;
              v246 = v2211;
              do
              {
                v247 = &v2270.i8[v244];
                v248 = *v165;
                v165 = (v165 + v2246);
                v249 = v20.i64[0];
                vst2_s8(v247, v248);
                v247 += 16;
                *v247 = vzip2q_s8(v248, v20);
                v244 += 32;
              }

              while (v244 != 256);
              break;
          }

          switch(v246)
          {
            case 1:
              v1167 = 0;
              v1168 = (v245 - 2 * v160);
              v1169 = (v1168 + v160 + v160);
              v1170 = vzip1q_s8(*(v1169 + v160 + v160), v20);
              v1171 = vzip1q_s8(*(v1169 + v160), v20);
              v1172 = vzip1q_s8(*v1169, v20);
              v1173 = vzip1q_s8(*(v1168 + v160), v20);
              v1174 = vzip1q_s8(*v1168, v20);
              v1175 = (v2206 + 5 * v160 + v2205 + v160 * v145 - 2 * v160);
              do
              {
                v1176 = v1173;
                v1173 = v1172;
                v1172 = v1171;
                v1171 = v1170;
                v1170 = vzip1q_s8(*v1175, v20);
                v1177 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1173, v1172), 2uLL), vaddq_s16(v1176, v1171));
                *(&v2274 + v1167) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1174, v1177), vshlq_n_s16(v1177, 2uLL)), vaddq_s16(v1170, v22)), 5uLL))), v1173);
                v1167 += 32;
                v1175 = (v1175 + v160);
                v1174 = v1176;
              }

              while (v1167 != 256);
              v1178 = 0;
              v1179 = v245 - 2 * v160;
              v1180 = *(v1179 + 8);
              v1181 = &v1179[v160 + 8];
              v1182 = (v1181 + v160 + v160);
              v1183 = vzip1q_s8(*(v1182 + v160), v20);
              v1184 = vzip1q_s8(*v1182, v20);
              v1185 = vzip1q_s8(*(v1181 + v160), v20);
              v1186 = vzip1q_s8(*v1181, v20);
              v1187 = vzip1q_s8(v1180, v20);
              v1188 = (v2206 + 5 * v160 + v2205 + v160 * v145 - 2 * v160 + 8);
              v1075 = v2253;
              v1074 = v2254;
              v1076 = v2212;
              v21.i64[0] = 0x20002000200020;
              v21.i64[1] = 0x20002000200020;
              v1077 = v2202;
              _X4 = v2220;
              v1079 = v2245;
              v1080 = v2230;
              v1081 = v2200;
              v1082 = v163;
              v1084 = v2180;
              v1083 = v2181;
              v1085 = v2252;
              do
              {
                v1189 = v1186;
                v1186 = v1185;
                v1185 = v1184;
                v1184 = v1183;
                v1183 = vzip1q_s8(*v1188, v20);
                v1190 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1186, v1185), 2uLL), vaddq_s16(v1189, v1184));
                *(&v2275 + v1178) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1187, v1190), vshlq_n_s16(v1190, 2uLL)), vaddq_s16(v1183, v22)), 5uLL))), v1186);
                v1178 += 32;
                v1188 = (v1188 + v160);
                v1187 = v1189;
              }

              while (v1178 != 256);
              break;
            case 2:
              v1112 = 0;
              v1113 = (v245 - 2 * v160);
              v1114 = (v1113 + v160 + v160);
              v1115 = vzip1q_s8(*(v1114 + v160 + v160), v20);
              v1116 = vzip1q_s8(*(v1114 + v160), v20);
              v1117 = vzip1q_s8(*v1114, v20);
              v1118 = vzip1q_s8(*(v1113 + v160), v20);
              v1119 = vzip1q_s8(*v1113, v20);
              v1120 = (v2206 + 5 * v160 + v2205 + v160 * v145 - 2 * v160);
              do
              {
                v1121 = v1118;
                v1118 = v1117;
                v1117 = v1116;
                v1116 = v1115;
                v1122 = &v2274.i8[v1112];
                v1115 = vzip1q_s8(*v1120, v20);
                v1123 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1118, v1117), 2uLL), vaddq_s16(v1121, v1116));
                v1123.val[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1119, v1123), vshlq_n_s16(v1123, 2uLL)), vaddq_s16(v1115, v22)), 5uLL));
                v1124 = v20.i64[0];
                vst2_s8(v1122, v1123);
                v1112 += 32;
                v1120 = (v1120 + v160);
                v1119 = v1121;
              }

              while (v1112 != 256);
              v1125 = 0;
              v1126 = v245 - 2 * v160;
              v1127 = *(v1126 + 8);
              v1128 = &v1126[v160 + 8];
              v1129 = (v1128 + v160 + v160);
              v1130 = vzip1q_s8(*(v1129 + v160), v20);
              v1131 = vzip1q_s8(*v1129, v20);
              v1132 = vzip1q_s8(*(v1128 + v160), v20);
              v1133 = vzip1q_s8(*v1128, v20);
              v1134 = vzip1q_s8(v1127, v20);
              v1135 = (v2206 + 5 * v160 + v2205 + v160 * v145 - 2 * v160 + 8);
              v1075 = v2253;
              v1074 = v2254;
              v1076 = v2212;
              v21.i64[0] = 0x20002000200020;
              v21.i64[1] = 0x20002000200020;
              v1077 = v2202;
              _X4 = v2220;
              v1079 = v2245;
              v1080 = v2230;
              v1081 = v2200;
              v1082 = v163;
              v1084 = v2180;
              v1083 = v2181;
              v1085 = v2252;
              do
              {
                v1136 = v1133;
                v1133 = v1132;
                v1132 = v1131;
                v1131 = v1130;
                v1137 = &v2275.i8[v1125];
                v1130 = vzip1q_s8(*v1135, v20);
                v1138 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1133, v1132), 2uLL), vaddq_s16(v1136, v1131));
                v1138.val[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1134, v1138), vshlq_n_s16(v1138, 2uLL)), vaddq_s16(v1130, v22)), 5uLL));
                v1139 = v20.i64[0];
                vst2_s8(v1137, v1138);
                v1125 += 32;
                v1135 = (v1135 + v160);
                v1134 = v1136;
              }

              while (v1125 != 256);
              break;
            case 3:
              v1143 = 0;
              v1144 = (v245 - 2 * v160);
              v1145 = (v1144 + v160 + v160);
              v1146 = vzip1q_s8(*(v1145 + v160 + v160), v20);
              v1147 = vzip1q_s8(*(v1145 + v160), v20);
              v1148 = vzip1q_s8(*v1145, v20);
              v1149 = vzip1q_s8(*(v1144 + v160), v20);
              v1150 = vzip1q_s8(*v1144, v20);
              v1151 = (v2206 + 5 * v160 + v2205 + v160 * v145 - 2 * v160);
              do
              {
                v1152 = v1149;
                v1149 = v1148;
                v1148 = v1147;
                v1147 = v1146;
                v1146 = vzip1q_s8(*v1151, v20);
                v1153 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1149, v1148), 2uLL), vaddq_s16(v1152, v1147));
                *(&v2274 + v1143) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1150, v1153), vshlq_n_s16(v1153, 2uLL)), vaddq_s16(v1146, v22)), 5uLL))), v1148);
                v1143 += 32;
                v1151 = (v1151 + v160);
                v1150 = v1152;
              }

              while (v1143 != 256);
              v1154 = 0;
              v1155 = v245 - 2 * v160;
              v1156 = *(v1155 + 8);
              v1157 = &v1155[v160 + 8];
              v1158 = (v1157 + v160 + v160);
              v1159 = vzip1q_s8(*(v1158 + v160), v20);
              v1160 = vzip1q_s8(*v1158, v20);
              v1161 = vzip1q_s8(*(v1157 + v160), v20);
              v1162 = vzip1q_s8(*v1157, v20);
              v1163 = vzip1q_s8(v1156, v20);
              v1164 = (v2206 + 5 * v160 + v2205 + v160 * v145 - 2 * v160 + 8);
              v1075 = v2253;
              v1074 = v2254;
              v1076 = v2212;
              v21.i64[0] = 0x20002000200020;
              v21.i64[1] = 0x20002000200020;
              v1077 = v2202;
              _X4 = v2220;
              v1079 = v2245;
              v1080 = v2230;
              v1081 = v2200;
              v1082 = v163;
              v1084 = v2180;
              v1083 = v2181;
              v1085 = v2252;
              do
              {
                v1165 = v1162;
                v1162 = v1161;
                v1161 = v1160;
                v1160 = v1159;
                v1159 = vzip1q_s8(*v1164, v20);
                v1166 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1162, v1161), 2uLL), vaddq_s16(v1165, v1160));
                *(&v2275 + v1154) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1163, v1166), vshlq_n_s16(v1166, 2uLL)), vaddq_s16(v1159, v22)), 5uLL))), v1161);
                v1154 += 32;
                v1164 = (v1164 + v160);
                v1163 = v1165;
              }

              while (v1154 != 256);
              break;
            case 4:
              v1091 = 0;
              v1092 = (v245 - 2);
              do
              {
                v1093 = *v1092;
                v1092 = (v1092 + v160);
                v1094 = vzip1q_s8(vextq_s8(v1093, v1093, 2uLL), v20);
                v1095 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1094, vzip1q_s8(vextq_s8(v1093, v1093, 3uLL), v20)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1093, v1093, 1uLL), v20), vzip1q_s8(vextq_s8(v1093, v1093, 4uLL), v20)));
                *(&v2274 + v1091) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1095, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1093, v20), vzip1q_s8(vextq_s8(v1093, v1093, 5uLL), v20)), v1095)), v22), 5uLL))), v1094);
                v1091 += 32;
              }

              while (v1091 != 256);
              v1096 = 0;
              v1097 = (v245 + 6);
              v1075 = v2253;
              v1074 = v2254;
              v1076 = v2212;
              v21.i64[0] = 0x20002000200020;
              v21.i64[1] = 0x20002000200020;
              v1077 = v2202;
              _X4 = v2220;
              v1079 = v2245;
              v1080 = v2230;
              v1081 = v2200;
              v1082 = v163;
              v1084 = v2180;
              v1083 = v2181;
              v1085 = v2252;
              do
              {
                v1098 = *v1097;
                v1097 = (v1097 + v160);
                v1099 = vzip1q_s8(vextq_s8(v1098, v1098, 2uLL), v20);
                v1100 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1099, vzip1q_s8(vextq_s8(v1098, v1098, 3uLL), v20)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1098, v1098, 1uLL), v20), vzip1q_s8(vextq_s8(v1098, v1098, 4uLL), v20)));
                *(&v2275 + v1096) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1100, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1098, v20), vzip1q_s8(vextq_s8(v1098, v1098, 5uLL), v20)), v1100)), v22), 5uLL))), v1099);
                v1096 += 32;
              }

              while (v1096 != 256);
              break;
            case 5:
              v1140 = v245;
              v1141 = v160;
              v1142 = 2;
              goto LABEL_586;
            case 6:
              v1488 = v245;
              sub_27729BFC4(v2274.i8, 0x20u, v245, v160);
              sub_27729BFC4(v2275.i8, 0x20u, (v1488 + 2), v160);
              goto LABEL_663;
            case 7:
              v1140 = v245;
              v1141 = v160;
              v1142 = 3;
LABEL_586:
              v1191 = 2;
              goto LABEL_662;
            case 8:
              v1521 = 0;
              v1522 = (v245 - 2);
              do
              {
                v1523 = &v2274.i8[v1521];
                v1524 = *v1522;
                v1522 = (v1522 + v160);
                v1525 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1524, v1524, 2uLL), v20), vzip1q_s8(vextq_s8(v1524, v1524, 3uLL), v20)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1524, v1524, 1uLL), v20), vzip1q_s8(vextq_s8(v1524, v1524, 4uLL), v20)));
                *v1524.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1525, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1524, v20), vzip1q_s8(vextq_s8(v1524, v1524, 5uLL), v20)), v1525)), v22), 5uLL));
                v1525.i64[0] = v20.i64[0];
                vst2_s8(v1523, v1524);
                v1521 += 32;
              }

              while (v1521 != 256);
              v1526 = 0;
              v1527 = (v245 + 6);
              v1075 = v2253;
              v1074 = v2254;
              v1076 = v2212;
              v21.i64[0] = 0x20002000200020;
              v21.i64[1] = 0x20002000200020;
              v1077 = v2202;
              _X4 = v2220;
              v1079 = v2245;
              v1080 = v2230;
              v1081 = v2200;
              v1082 = v163;
              v1084 = v2180;
              v1083 = v2181;
              v1085 = v2252;
              do
              {
                v1528 = &v2275.i8[v1526];
                v1529 = *v1527;
                v1527 = (v1527 + v160);
                v1530 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1529, v1529, 2uLL), v20), vzip1q_s8(vextq_s8(v1529, v1529, 3uLL), v20)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1529, v1529, 1uLL), v20), vzip1q_s8(vextq_s8(v1529, v1529, 4uLL), v20)));
                *v1529.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1530, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1529, v20), vzip1q_s8(vextq_s8(v1529, v1529, 5uLL), v20)), v1530)), v22), 5uLL));
                v1530.i64[0] = v20.i64[0];
                vst2_s8(v1528, v1529);
                v1526 += 32;
              }

              while (v1526 != 256);
              break;
            case 9:
              v1111 = v245;
              sub_27729B614(v2274.i8, 0x20u, v245, v160, 8);
              sub_27729B614(v2275.i8, 0x20u, (v1111 + 2), v160, 8);
              goto LABEL_663;
            case 10:
              v1490 = v245;
              sub_27729B7DC(&v2274, 32, v245, v160, 8);
              sub_27729B7DC(&v2275, 32, (v1490 + 2), v160, 8);
              goto LABEL_663;
            case 11:
              v1090 = v245;
              sub_27729B98C(v2274.i8, 0x20u, v245, v160, 8);
              sub_27729B98C(v2275.i8, 0x20u, (v1090 + 2), v160, 8);
              goto LABEL_663;
            case 12:
              v1101 = 0;
              v1102 = (v245 - 2);
              do
              {
                v1103 = *v1102;
                v1102 = (v1102 + v160);
                v1104 = vzip1q_s8(vextq_s8(v1103, v1103, 3uLL), v20);
                v1105 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1103, v1103, 2uLL), v20), v1104), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1103, v1103, 1uLL), v20), vzip1q_s8(vextq_s8(v1103, v1103, 4uLL), v20)));
                *(&v2274 + v1101) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1105, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1103, v20), vzip1q_s8(vextq_s8(v1103, v1103, 5uLL), v20)), v1105)), v22), 5uLL))), v1104);
                v1101 += 32;
              }

              while (v1101 != 256);
              v1106 = 0;
              v1107 = (v245 + 6);
              v1075 = v2253;
              v1074 = v2254;
              v1076 = v2212;
              v21.i64[0] = 0x20002000200020;
              v21.i64[1] = 0x20002000200020;
              v1077 = v2202;
              _X4 = v2220;
              v1079 = v2245;
              v1080 = v2230;
              v1081 = v2200;
              v1082 = v163;
              v1084 = v2180;
              v1083 = v2181;
              v1085 = v2252;
              do
              {
                v1108 = *v1107;
                v1107 = (v1107 + v160);
                v1109 = vzip1q_s8(vextq_s8(v1108, v1108, 3uLL), v20);
                v1110 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1108, v1108, 2uLL), v20), v1109), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1108, v1108, 1uLL), v20), vzip1q_s8(vextq_s8(v1108, v1108, 4uLL), v20)));
                *(&v2275 + v1106) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1110, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1108, v20), vzip1q_s8(vextq_s8(v1108, v1108, 5uLL), v20)), v1110)), v22), 5uLL))), v1109);
                v1106 += 32;
              }

              while (v1106 != 256);
              break;
            case 13:
              v1140 = v245;
              v1141 = v160;
              v1142 = 2;
              goto LABEL_661;
            case 14:
              v1089 = v245;
              sub_27729C39C(v2274.i8, 0x20u, v245, v160);
              sub_27729C39C(v2275.i8, 0x20u, (v1089 + 2), v160);
              goto LABEL_663;
            case 15:
              v1140 = v245;
              v1141 = v160;
              v1142 = 3;
LABEL_661:
              v1191 = 3;
LABEL_662:
              sub_27729AF04(v2274.i8, v1140, v1141, 8, v1142, v1191);
LABEL_663:
              v22.i64[0] = 0x10001000100010;
              v22.i64[1] = 0x10001000100010;
              v10 = v2266;
              v20 = v2268;
              v1075 = v2253;
              v1074 = v2254;
              v1076 = v2212;
              v21.i64[0] = 0x20002000200020;
              v21.i64[1] = 0x20002000200020;
              v1077 = v2202;
              _X4 = v2220;
              v1079 = v2245;
              v1080 = v2230;
              v1081 = v2200;
              v1082 = v163;
              v1084 = v2180;
              v1083 = v2181;
              v1085 = v2252;
              break;
            default:
              v1073 = 0;
              v1075 = v2253;
              v1074 = v2254;
              v1076 = v2212;
              v21.i64[0] = 0x20002000200020;
              v21.i64[1] = 0x20002000200020;
              v1077 = v2202;
              _X4 = v2220;
              v1079 = v2245;
              v1080 = v2230;
              v1081 = v2200;
              v1082 = v163;
              v1084 = v2180;
              v1083 = v2181;
              v1085 = v2252;
              do
              {
                v1086 = &v2274.i8[v1073];
                v1087 = *v245;
                v245 = (v245 + v160);
                v1088 = v20.i64[0];
                vst2_s8(v1086, v1087);
                v1086 += 16;
                *v1086 = vzip2q_s8(v1087, v20);
                v1073 += 32;
              }

              while (v1073 != 256);
              break;
          }

          v1339 = 0;
          v1340 = v2226;
          do
          {
            v1341 = v2273[v1339 / 0x10];
            v1342 = vrhaddq_u16(*(&v2270 + v1339), *(&v2274 + v1339));
            v1343 = vrhaddq_u16(*(&v2270 + v1339 + 16), *(&v2275 + v1339));
            v1344 = vrhaddq_u16(*(&v2272 + v1339), *(&v2276 + v1339));
            v1345 = vrhaddq_u16(v1341, v2277[v1339 / 0x10]);
            if (v1074)
            {
              v1341 = *v1340;
              v1346 = v1340[1];
              v1347 = v1340[2];
              v1348 = v1340[3];
              v1340 += 4;
              v1342 = vaddq_s16(v1341, v1342);
              v1343 = vaddq_s16(v1346, v1343);
              v1344 = vaddq_s16(v1347, v1344);
              v1345 = vaddq_s16(v1348, v1345);
            }

            *v158 = vqmovun_high_s16(vqmovun_s16(v1342), v1343);
            *(v158 + v1075) = vqmovun_high_s16(vqmovun_s16(v1344), v1345);
            v158 = (v158 + v1076);
            v1339 += 64;
          }

          while (v1339 != 256);
          if (v2214 == 64)
          {
            __asm { PRFM            #0, [X24] }

            v1374 = 5;
            v1352 = v2278;
            v1349 = v2209;
            do
            {
              v1375 = _X24;
              _X24 = (_X24 + v1079);
              __asm { PRFM            #0, [X24] }

              v1377 = vextq_s8(*v1375, *v1375, 2uLL);
              v1377.i16[7] = v1375[1].i16[0];
              v1378 = vrhaddq_u8(*v1375, v1377);
              v1377.i64[0] = v20.i64[0];
              v1352[3] = vzip2q_s8(v1378, v20);
              v1352 += 2;
              vst2_s8(v1352->i8, *(&v1377 - 8));
              --v1374;
            }

            while (v1374 > 2);
            v1379 = vextq_s8(*_X24, *_X24, 2uLL);
            v1379.i16[7] = _X24[1].i16[0];
            v1372 = vrhaddq_u8(*_X24, v1379);
          }

          else
          {
            v1349 = v2209;
            if (v2214 != 4)
            {
              if (v2214)
              {
                v1382 = 0;
                v1383 = v2207 - (8 * v47 + 8 * v48) + 64;
                v1384 = v20;
                v1384.i32[0] = v1383 | (v1383 << 16);
                v1385 = vqtbl1q_s8(v1384, xmmword_2773B3DF0);
                v1386 = v20;
                v1386.i32[0] = (8 * v47 - v2207) | ((8 * v47 - v2207) << 16);
                v1387 = vqtbl1q_s8(v1386, xmmword_2773B3DF0);
                v1388 = v20;
                v1388.i32[0] = (8 * v48 - v2207) | ((8 * v48 - v2207) << 16);
                v1389 = vqtbl1q_s8(v1388, xmmword_2773B3DF0);
                v2288 = v1385;
                v2289 = v1387;
                v2290 = v1389;
                v2291 = v1084;
                _X9 = &_X24->i8[v1079];
                __asm { PRFM            #0, [X9] }

                v1341.i64[0] = _X24->i64[0];
                v1392 = vqtbl1q_s8(v1341, xmmword_2773B3E00);
                v1392.i16[3] = _X24->i16[4];
                v1393 = vzip1q_s8(v1392, v20);
                v1394 = vzip1q_s8(v1341, v20);
                v1395 = v2216;
                if (v2216 <= -16)
                {
                  v1395 = -16;
                }

                if (v1395 >= v2218)
                {
                  v1396 = v2218;
                }

                else
                {
                  v1396 = v1395;
                }

                v1397 = (v1082 + v1079 + v2193 + v1396 + 8);
                _X14 = v1082 + v2193 + v1396 + 2 * v1079;
                do
                {
                  __asm { PRFM            #0, [X14] }

                  v1400 = vmlaq_s16(vmulq_s16(v1387, v1393), v1385, v1394);
                  v1393.i64[0] = *(v1397 - 1);
                  v1394 = vzip1q_s8(v1393, v20);
                  v1401 = vqtbl1q_s8(v1393, xmmword_2773B3E00);
                  v1401.i16[3] = *v1397;
                  v1397 = (v1397 + v1079);
                  v1393 = vzip1q_s8(v1401, v20);
                  *(&v2279 + v1382) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1400, v1389, v1394), v1084, v1393), v21), 6uLL);
                  v1382 += 32;
                  _X14 += v1079;
                }

                while (v1382 != 128);
                v1402 = 0;
                _X10 = &_X24->i8[v1079 + 8];
                __asm { PRFM            #0, [X10] }

                v1394.i64[0] = _X24->i64[1];
                v1405 = vqtbl1q_s8(v1394, xmmword_2773B3E00);
                v1405.i16[3] = _X24[1].i16[0];
                v1406 = vzip1q_s8(v1405, v20);
                v1341 = vzip1q_s8(v1394, v20);
                if (v1395 >= v2218)
                {
                  v1407 = v2218;
                }

                else
                {
                  v1407 = v1395;
                }

                v1408 = v1082 + v1079 + v1407;
                v1409 = v1082 + 2 * v1079 + v1407 + 8;
                do
                {
                  _X12 = v1409 + v2193;
                  __asm { PRFM            #0, [X12] }

                  v1412 = vmlaq_s16(vmulq_s16(v1387, v1406), v1385, v1341);
                  v1406.i64[0] = *(v1408 + v2193 + 8);
                  v1341 = vzip1q_s8(v1406, v20);
                  v1413 = vqtbl1q_s8(v1406, xmmword_2773B3E00);
                  v1413.i16[3] = *(v1408 + v2193 + 16);
                  v1406 = vzip1q_s8(v1413, v20);
                  *(&v2280 + v1402) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1412, v1389, v1341), v1084, v1406), v21), 6uLL);
                  v1402 += 32;
                  v1408 += v1079;
                  v1409 += v1079;
                }

                while (v1402 != 128);
LABEL_698:
                if (v2241 == 64)
                {
                  __asm { PRFM            #0, [X4] }

                  v1438 = 5;
                  v1416 = v2283;
                  do
                  {
                    v1439 = _X4;
                    _X4 = (_X4 + v129);
                    __asm { PRFM            #0, [X4] }

                    v1441 = vextq_s8(*v1439, *v1439, 2uLL);
                    v1441.i16[7] = v1439[1].i16[0];
                    v1442 = vrhaddq_u8(*v1439, v1441);
                    v1441.i64[0] = v20.i64[0];
                    v1416[3] = vzip2q_s8(v1442, v20);
                    v1416 += 2;
                    vst2_s8(v1416->i8, *(&v1441 - 8));
                    --v1438;
                  }

                  while (v1438 > 2);
                  v1443 = vextq_s8(*_X4, *_X4, 2uLL);
                  v1443.i16[7] = _X4[1].i16[0];
                  v1436 = vrhaddq_u8(*_X4, v1443);
                }

                else
                {
                  if (v2241 != 4)
                  {
                    if (v2241)
                    {
                      v1446 = 0;
                      v1447 = v2208 - (8 * v1081 + 8 * v2197) + 64;
                      v1448 = v20;
                      v1448.i32[0] = v1447 | (v1447 << 16);
                      v1449 = vqtbl1q_s8(v1448, xmmword_2773B3DF0);
                      v1450 = v20;
                      v1450.i32[0] = (8 * v1081 - v2208) | ((8 * v1081 - v2208) << 16);
                      v1451 = vqtbl1q_s8(v1450, xmmword_2773B3DF0);
                      v1452 = v20;
                      v1452.i32[0] = (8 * v2197 - v2208) | ((8 * v2197 - v2208) << 16);
                      v1453 = vqtbl1q_s8(v1452, xmmword_2773B3DF0);
                      v2292 = v1449;
                      v2293 = v1451;
                      v2294 = v1453;
                      v2295 = v1083;
                      _X9 = &_X4->i8[v129];
                      __asm { PRFM            #0, [X9] }

                      v1341.i64[0] = _X4->i64[0];
                      v1456 = vqtbl1q_s8(v1341, xmmword_2773B3E00);
                      v1456.i16[3] = _X4->i16[4];
                      v1457 = vzip1q_s8(v1456, v20);
                      v1458 = vzip1q_s8(v1341, v20);
                      v1459 = v2184;
                      if (v2184 <= -16)
                      {
                        v1459 = -16;
                      }

                      if (v1459 >= v2187)
                      {
                        v1460 = v2187;
                      }

                      else
                      {
                        v1460 = v1459;
                      }

                      v1461 = v2190 + v129 + v1460;
                      v1462 = v2190 + v1460 + 2 * v129;
                      do
                      {
                        _X16 = v1462 + v1080;
                        __asm { PRFM            #0, [X16] }

                        v1465 = vmlaq_s16(vmulq_s16(v1451, v1457), v1449, v1458);
                        v1457.i64[0] = *(v1461 + v1080);
                        v1458 = vzip1q_s8(v1457, v20);
                        v1466 = vqtbl1q_s8(v1457, xmmword_2773B3E00);
                        v1466.i16[3] = *(v1461 + v1080 + 8);
                        v1457 = vzip1q_s8(v1466, v20);
                        *(&v2284 + v1446) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1465, v1453, v1458), v1083, v1457), v21), 6uLL);
                        v1446 += 32;
                        v1461 += v129;
                        v1462 += v129;
                      }

                      while (v1446 != 128);
                      v1467 = 0;
                      _X10 = &_X4->i8[v129 + 8];
                      __asm { PRFM            #0, [X10] }

                      v1458.i64[0] = _X4->i64[1];
                      v1470 = vqtbl1q_s8(v1458, xmmword_2773B3E00);
                      v1470.i16[3] = _X4[1].i16[0];
                      v1471 = vzip1q_s8(v1470, v20);
                      v1472 = vzip1q_s8(v1458, v20);
                      if (v1459 >= v2187)
                      {
                        v1473 = v2187;
                      }

                      else
                      {
                        v1473 = v1459;
                      }

                      v1474 = v2190 + v129 + v1473;
                      v1475 = v2190 + 2 * v129 + v1473 + 8;
                      do
                      {
                        _X12 = v1475 + v1080;
                        __asm { PRFM            #0, [X12] }

                        v1478 = vmlaq_s16(vmulq_s16(v1451, v1471), v1449, v1472);
                        v1471.i64[0] = *(v1474 + v1080 + 8);
                        v1472 = vzip1q_s8(v1471, v20);
                        v1479 = vqtbl1q_s8(v1471, xmmword_2773B3E00);
                        v1479.i16[3] = *(v1474 + v1080 + 16);
                        v1471 = vzip1q_s8(v1479, v20);
                        *(&v2285 + v1467) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1478, v1453, v1472), v1083, v1471), v21), 6uLL);
                        v1467 += 32;
                        v1474 += v129;
                        v1475 += v129;
                      }

                      while (v1467 != 128);
                      goto LABEL_728;
                    }

                    __asm { PRFM            #0, [X4] }

                    v1415 = 5;
                    v1416 = v2283;
                    do
                    {
                      v1417 = _X4;
                      _X4 = (_X4 + v129);
                      __asm { PRFM            #0, [X4] }

                      v1419 = *v1417;
                      v1416[3] = vzip2q_s8(*v1417, v20);
                      v1416 += 2;
                      v1420 = v20.i64[0];
                      vst2_s8(v1416->i8, v1419);
                      --v1415;
                    }

                    while (v1415 > 2);
                    v1421 = *_X4;
                    v1422 = vzip2q_s8(*_X4, v20);
                    v1423 = v1416[2].i8;
                    v1424 = v20.i64[0];
                    vst2_s8(v1423, v1421);
LABEL_715:
                    v1416[3] = v1422;
LABEL_728:
                    v1480 = 1;
                    v1481 = &v2284;
                    do
                    {
                      v1482 = v1480;
                      a7 = v1481[-13];
                      a8 = v1481[1];
                      a9 = v1481[2];
                      a10 = v1481[3];
                      v1483 = vrhaddq_u16(v1481[-16], *v1481);
                      v1484 = vrhaddq_u16(v1481[-15], a8);
                      v1485 = vrhaddq_u16(v1481[-14], a9);
                      v1486 = vrhaddq_u16(a7, a10);
                      if (v1085)
                      {
                        a7 = *v1077;
                        a8 = v1077[1];
                        a9 = v1077[2];
                        a10 = v1077[3];
                        v1077 += 4;
                        v1483 = vaddq_s16(a7, v1483);
                        v1484 = vaddq_s16(a8, v1484);
                        v1485 = vaddq_s16(a9, v1485);
                        v1486 = vaddq_s16(a10, v1486);
                      }

                      v1480 = 0;
                      v1481 += 4;
                      a6 = vqmovun_high_s16(vqmovun_s16(v1483), v1484);
                      *v159 = a6;
                      *(v159 + v2251) = vqmovun_high_s16(vqmovun_s16(v1485), v1486);
                      v159 = (v159 + v1349);
                    }

                    while ((v1482 & 1) != 0);
                    goto LABEL_1058;
                  }

                  _X8 = &_X4->i8[v129];
                  __asm { PRFM            #0, [X8] }

                  v1427 = *_X4;
                  v1428 = v2184;
                  if (v2184 <= -16)
                  {
                    v1428 = -16;
                  }

                  if (v1428 >= v2187)
                  {
                    v1428 = v2187;
                  }

                  v1429 = (v2190 + v1080 + v1428);
                  v1430 = 5;
                  v1416 = v2283;
                  do
                  {
                    _X12 = &v1429->i8[2 * v129];
                    v1429 = (v1429 + v129);
                    __asm { PRFM            #0, [X12] }

                    v1433 = *v1429;
                    v1434 = vrhaddq_u8(v1427, *v1429);
                    v1435 = v20.i64[0];
                    v1416[3] = vzip2q_s8(v1434, v20);
                    v1416 += 2;
                    vst2_s8(v1416->i8, v1434);
                    --v1430;
                    v1427 = v1433;
                  }

                  while (v1430 > 2);
                  v1436 = vrhaddq_u8(v1433, *(v1429 + v129));
                }

                v1444 = v1416[2].i8;
                v1445 = v20.i64[0];
                vst2_s8(v1444, v1436);
                v1422 = vzip2q_s8(v1436, v20);
                goto LABEL_715;
              }

              __asm { PRFM            #0, [X24] }

              v1351 = 5;
              v1352 = v2278;
              do
              {
                v1353 = _X24;
                _X24 = (_X24 + v1079);
                __asm { PRFM            #0, [X24] }

                v1355 = *v1353;
                v1352[3] = vzip2q_s8(*v1353, v20);
                v1352 += 2;
                v1356 = v20.i64[0];
                vst2_s8(v1352->i8, v1355);
                --v1351;
              }

              while (v1351 > 2);
              v1357 = *_X24;
              v1358 = vzip2q_s8(*_X24, v20);
              v1359 = v1352[2].i8;
              v1360 = v20.i64[0];
              vst2_s8(v1359, v1357);
LABEL_685:
              v1352[3] = v1358;
              goto LABEL_698;
            }

            _X8 = &_X24->i8[v1079];
            __asm { PRFM            #0, [X8] }

            v1363 = *_X24;
            v1364 = v2216;
            if (v2216 <= -16)
            {
              v1364 = -16;
            }

            if (v1364 >= v2218)
            {
              v1364 = v2218;
            }

            v1365 = (v1082 + v2193 + v1364);
            v1366 = 5;
            v1352 = v2278;
            do
            {
              _X12 = &v1365->i8[2 * v1079];
              v1365 = (v1365 + v1079);
              __asm { PRFM            #0, [X12] }

              v1369 = *v1365;
              v1370 = vrhaddq_u8(v1363, *v1365);
              v1371 = v20.i64[0];
              v1352[3] = vzip2q_s8(v1370, v20);
              v1352 += 2;
              vst2_s8(v1352->i8, v1370);
              --v1366;
              v1363 = v1369;
            }

            while (v1366 > 2);
            v1372 = vrhaddq_u8(v1369, *(v1365 + v1079));
          }

          v1380 = v1352[2].i8;
          v1381 = v20.i64[0];
          vst2_s8(v1380, v1372);
          v1358 = vzip2q_s8(v1372, v20);
          goto LABEL_685;
        }

LABEL_1058:
        v11 = a1;
        goto LABEL_1059;
      }

      if (v2258 != 4)
      {
        if (v2258 == 8)
        {
          v2186 = v150;
          v2189 = v153;
          v2195 = v164;
          v2192 = v162;
          v2232 = v167;
          v2223 = v162 + v152 + v156 * v129;
          v277 = v157;
          switch(v117)
          {
            case 1:
              sub_27729AC20(&v2270, 0x10u, v2236 + v134 + v135 * v2246, v2246, 8);
              goto LABEL_933;
            case 2:
              sub_27729ACE8(v2270.i8, 0x10u, v2236 + v134 + v135 * v2246, v2246, 8);
              goto LABEL_933;
            case 3:
              sub_27729ADA4(&v2270, 0x10u, v2236 + v134 + v135 * v2246, v2246, 8);
              goto LABEL_933;
            case 4:
              sub_27729AE6C(&v2270, 0x10u, v2236 + v134 + v135 * v2246, v2246, 8);
              goto LABEL_933;
            case 5:
              v1796 = v2236 + v134 + v135 * v2246;
              v1797 = v2246;
              v1798 = 2;
              goto LABEL_928;
            case 6:
              sub_27729BFC4(v2270.i8, 0x10u, v2236 + v134 + v135 * v2246, v2246);
              goto LABEL_933;
            case 7:
              v1796 = v2236 + v134 + v135 * v2246;
              v1797 = v2246;
              v1798 = 3;
LABEL_928:
              v1818 = 2;
              goto LABEL_932;
            case 8:
              sub_27729B588(v2270.i8, 0x10u, v2236 + v134 + v135 * v2246, v2246, 8, v141);
              goto LABEL_933;
            case 9:
              sub_27729B614(v2270.i8, 0x10u, v2236 + v134 + v135 * v2246, v2246, 8);
              goto LABEL_933;
            case 10:
              sub_27729B7DC(&v2270, 16, v2236 + v134 + v135 * v2246, v2246, 8);
              goto LABEL_933;
            case 11:
              sub_27729B98C(v2270.i8, 0x10u, v2236 + v134 + v135 * v2246, v2246, 8);
              goto LABEL_933;
            case 12:
              sub_27729BB54(&v2270, 0x10u, v2236 + v134 + v135 * v2246, v2246, 8);
              goto LABEL_933;
            case 13:
              v1796 = v2236 + v134 + v135 * v2246;
              v1797 = v2246;
              v1798 = 2;
              goto LABEL_931;
            case 14:
              sub_27729C39C(v2270.i8, 0x10u, v2236 + v134 + v135 * v2246, v2246);
              goto LABEL_933;
            case 15:
              v1796 = v2236 + v134 + v135 * v2246;
              v1797 = v2246;
              v1798 = 3;
LABEL_931:
              v1818 = 3;
LABEL_932:
              sub_27729C774(v2270.i8, v1796, v1797, 8, v1798, v1818);
LABEL_933:
              v10 = v2266;
              v20 = v2268;
              v279 = v2257;
              v280 = v2211;
              break;
            default:
              v278 = 0;
              v279 = v2257;
              v280 = v2211;
              do
              {
                v281 = &v2270.i8[v278];
                v282 = *v165;
                v165 = (v165 + v2246);
                v283 = v20.i64[0];
                vst2_s8(v281, v282);
                v278 += 16;
              }

              while (v278 != 128);
              break;
          }

          switch(v280)
          {
            case 1:
              sub_27729AC20(&v2274, 0x10u, v279, v160, 8);
              goto LABEL_953;
            case 2:
              sub_27729ACE8(v2274.i8, 0x10u, v279, v160, 8);
              goto LABEL_953;
            case 3:
              sub_27729ADA4(&v2274, 0x10u, v279, v160, 8);
              goto LABEL_953;
            case 4:
              sub_27729AE6C(&v2274, 0x10u, v279, v160, 8);
              goto LABEL_953;
            case 5:
              v1835 = v279;
              v1836 = v160;
              v1837 = 2;
              goto LABEL_949;
            case 6:
              sub_27729BFC4(v2274.i8, 0x10u, v279, v160);
              goto LABEL_953;
            case 7:
              v1835 = v279;
              v1836 = v160;
              v1837 = 3;
LABEL_949:
              v1838 = 2;
              goto LABEL_952;
            case 8:
              sub_27729B588(v2274.i8, 0x10u, v279, v160, 8, v282);
              goto LABEL_953;
            case 9:
              sub_27729B614(v2274.i8, 0x10u, v279, v160, 8);
              goto LABEL_953;
            case 10:
              sub_27729B7DC(&v2274, 16, v279, v160, 8);
              goto LABEL_953;
            case 11:
              sub_27729B98C(v2274.i8, 0x10u, v279, v160, 8);
              goto LABEL_953;
            case 12:
              sub_27729BB54(&v2274, 0x10u, v279, v160, 8);
              goto LABEL_953;
            case 13:
              v1835 = v279;
              v1836 = v160;
              v1837 = 2;
              goto LABEL_951;
            case 14:
              sub_27729C39C(v2274.i8, 0x10u, v279, v160);
              goto LABEL_953;
            case 15:
              v1835 = v279;
              v1836 = v160;
              v1837 = 3;
LABEL_951:
              v1838 = 3;
LABEL_952:
              sub_27729C774(v2274.i8, v1835, v1836, 8, v1837, v1838);
LABEL_953:
              v10 = v2266;
              v20 = v2268;
              v1821 = v2253;
              v1820 = v2254;
              v1822 = v2212;
              v1823 = v2182;
              v21.i64[0] = 0x20002000200020;
              v21.i64[1] = 0x20002000200020;
              v22.i64[0] = 0x10001000100010;
              v22.i64[1] = 0x10001000100010;
              v1824 = v2218;
              v1825 = v2223;
              v1826 = v2245;
              v1827 = v2232;
              v1828 = v2192;
              v1829 = v163;
              v1830 = v2216;
              v1831 = v2252;
              break;
            default:
              v1819 = 0;
              v1821 = v2253;
              v1820 = v2254;
              v1822 = v2212;
              v1823 = v2182;
              v21.i64[0] = 0x20002000200020;
              v21.i64[1] = 0x20002000200020;
              v22.i64[0] = 0x10001000100010;
              v22.i64[1] = 0x10001000100010;
              v1824 = v2218;
              v1825 = v2223;
              v1826 = v2245;
              v1827 = v2232;
              v1828 = v2192;
              v1829 = v163;
              v1830 = v2216;
              v1831 = v2252;
              do
              {
                v1832 = &v2274.i8[v1819];
                v1833 = *v279;
                v279 = (v279 + v160);
                v1834 = v20.i64[0];
                vst2_s8(v1832, v1833);
                v1819 += 16;
              }

              while (v1819 != 128);
              break;
          }

          v1839 = 1;
          v1840 = &v2270;
          v1841 = v2226;
          do
          {
            v1842 = v1839;
            v1843 = vrhaddq_u16(*v1840, v1840[32]);
            v1844 = vrhaddq_u16(v1840[1], v1840[33]);
            v1845 = vrhaddq_u16(v1840[2], v1840[34]);
            v1846 = vrhaddq_u16(v1840[3], v1840[35]);
            if (v1820)
            {
              v1847 = *v1841;
              v1848 = v1841[2];
              v1849 = v1841[4];
              v1850 = v1841[6];
              v1841 += 8;
              v1843 = vaddq_s16(v1847, v1843);
              v1844 = vaddq_s16(v1848, v1844);
              v1845 = vaddq_s16(v1849, v1845);
              v1846 = vaddq_s16(v1850, v1846);
            }

            v1839 = 0;
            v1840 += 4;
            *v158->i8 = vqmovun_s16(v1843);
            *&v158->i8[v1821] = vqmovun_s16(v1844);
            *&v158->i8[v1822] = vqmovun_s16(v1845);
            *&v158->i8[v2199] = vqmovun_s16(v1846);
            v158 = (v158 + v1823);
          }

          while ((v1842 & 1) != 0);
          v1851 = 0;
          _X9 = &_X24->i8[v1826];
          __asm { PRFM            #0, [X9] }

          v1843.i64[0] = _X24->i64[0];
          v1854 = vqtbl1q_s8(v1843, xmmword_2773B3E00);
          v1854.i16[3] = _X24->i16[4];
          v1855 = vzip1q_s8(v1854, v20);
          v1856 = vzip1q_s8(v1843, v20);
          v1857 = v2288;
          v1858 = v2289;
          v1859 = v2290;
          v1860 = v2291;
          v1861 = v1830;
          if (v1830 <= -16)
          {
            v1861 = -16;
          }

          v1862 = v1824;
          if (v1861 < v1824)
          {
            v1862 = v1861;
          }

          v1863 = v1829 + v1826 + v1862;
          v1864 = v1829 + v1862 + 2 * v1826;
          do
          {
            _X12 = v1864 + v2195;
            __asm { PRFM            #0, [X12] }

            v1867 = vmlaq_s16(vmulq_s16(v1858, v1855), v1857, v1856);
            v1855.i64[0] = *(v1863 + v2195);
            v1856 = vzip1q_s8(v1855, v20);
            v1868 = vqtbl1q_s8(v1855, xmmword_2773B3E00);
            v1868.i16[3] = *(v1863 + v2195 + 8);
            v1855 = vzip1q_s8(v1868, v20);
            *(&v2279 + v1851) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1867, v1859, v1856), v1860, v1855), v21), 6uLL);
            v1851 += 16;
            v1863 += v1826;
            v1864 += v1826;
          }

          while (v1851 != 64);
          _X8 = v1825 + v129;
          __asm { PRFM            #0, [X8] }

          v1857.i64[0] = *v1825;
          v1871 = vqtbl1q_s8(v1857, xmmword_2773B3E00);
          v1871.i16[3] = *(v1825 + 8);
          v1872 = vzip1q_s8(v1871, v20);
          v1873 = vzip1q_s8(v1857, v20);
          v1874 = v2292;
          v1875 = v2293;
          v1876 = v2294;
          v1877 = v2295;
          v1878 = v2186;
          if (v2186 <= -16)
          {
            v1878 = -16;
          }

          v1879 = v2189;
          if (v1878 < v2189)
          {
            v1879 = v1878;
          }

          v1880 = v1828 + v129 + v1879;
          v1881 = v1828 + v1879 + 2 * v129;
          v1882 = 256;
          do
          {
            _X12 = v1881 + v1827;
            __asm { PRFM            #0, [X12] }

            v1885 = vmlaq_s16(vmulq_s16(v1875, v1872), v1874, v1873);
            v1872.i64[0] = *(v1880 + v1827);
            v1873 = vzip1q_s8(v1872, v20);
            v1886 = vqtbl1q_s8(v1872, xmmword_2773B3E00);
            v1886.i16[3] = *(v1880 + v1827 + 8);
            v1872 = vzip1q_s8(v1886, v20);
            *(&v2279 + v1882) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1885, v1876, v1873), v1877, v1872), v21), 6uLL);
            v1882 += 16;
            v1880 += v129;
            v1881 += v129;
          }

          while (v1882 != 320);
          a7 = v2281;
          a8 = v2282[0];
          a9 = v2286;
          a10 = v2287;
          v1887 = vrhaddq_u16(v2279, v2284);
          a6 = vrhaddq_u16(v2280, v2285);
          v1888 = vrhaddq_u16(v2281, v2286);
          v1889 = vrhaddq_u16(v2282[0], v2287);
          if (v1831)
          {
            a7 = *v277;
            a8 = *(v277 + 32);
            a9 = *(v277 + 64);
            a10 = *(v277 + 96);
            v1887 = vaddq_s16(*v277, v1887);
            a6 = vaddq_s16(a8, a6);
            v1888 = vaddq_s16(a9, v1888);
            v1889 = vaddq_s16(a10, v1889);
          }

          a6.n128_u64[0] = vqmovun_s16(a6);
          v159->n128_u64[0] = vqmovun_s16(v1887);
          *(v159->n128_u64 + v2251) = a6.n128_u64[0];
          *(v159->n128_u64 + v2209) = vqmovun_s16(v1888);
          *(v159->n128_u64 + v2183) = vqmovun_s16(v1889);
        }

        else if (v2258 == 16)
        {
          v2185 = v150;
          v2188 = v153;
          v2194 = v164;
          v2191 = v162;
          v2231 = v167;
          v2221 = v162 + v152 + v156 * v129;
          v172 = v157;
          switch(v117)
          {
            case 1:
              sub_27729AC20(&v2270, 0x10u, v2236 + v134 + v135 * v2246, v2246, 16);
              goto LABEL_1017;
            case 2:
              sub_27729ACE8(v2270.i8, 0x10u, v2236 + v134 + v135 * v2246, v2246, 16);
              goto LABEL_1017;
            case 3:
              sub_27729ADA4(&v2270, 0x10u, v2236 + v134 + v135 * v2246, v2246, 16);
              goto LABEL_1017;
            case 4:
              sub_27729AE6C(&v2270, 0x10u, v2236 + v134 + v135 * v2246, v2246, 16);
              goto LABEL_1017;
            case 5:
              v1807 = v2236 + v134 + v135 * v2246;
              v1808 = v2246;
              v1809 = 2;
              goto LABEL_983;
            case 6:
              sub_27729B1B0(v2270.i8, 0x10u, v2236 + v134 + v135 * v2246, v2246);
              goto LABEL_1017;
            case 7:
              v1807 = v2236 + v134 + v135 * v2246;
              v1808 = v2246;
              v1809 = 3;
LABEL_983:
              v1914 = 2;
              goto LABEL_1016;
            case 8:
              sub_27729B588(v2270.i8, 0x10u, v2236 + v134 + v135 * v2246, v2246, 16, v141);
              goto LABEL_1017;
            case 9:
              sub_27729B614(v2270.i8, 0x10u, v2236 + v134 + v135 * v2246, v2246, 16);
              goto LABEL_1017;
            case 10:
              sub_27729B7DC(&v2270, 16, v2236 + v134 + v135 * v2246, v2246, 16);
              goto LABEL_1017;
            case 11:
              sub_27729B98C(v2270.i8, 0x10u, v2236 + v134 + v135 * v2246, v2246, 16);
              goto LABEL_1017;
            case 12:
              sub_27729BB54(&v2270, 0x10u, v2236 + v134 + v135 * v2246, v2246, 16);
              goto LABEL_1017;
            case 13:
              v1807 = v2236 + v134 + v135 * v2246;
              v1808 = v2246;
              v1809 = 2;
              goto LABEL_1015;
            case 14:
              sub_27729BBEC(v2270.i8, 0x10u, v2236 + v134 + v135 * v2246, v2246);
              goto LABEL_1017;
            case 15:
              v1807 = v2236 + v134 + v135 * v2246;
              v1808 = v2246;
              v1809 = 3;
LABEL_1015:
              v1914 = 3;
LABEL_1016:
              sub_27729C774(v2270.i8, v1807, v1808, 16, v1809, v1914);
LABEL_1017:
              v10 = v2266;
              v20 = v2268;
              v174 = v2199;
              v175 = v2257;
              v176 = v2211;
              break;
            default:
              v173 = 0;
              v174 = v2199;
              v175 = v2257;
              v176 = v2211;
              do
              {
                v177 = &v2270.i8[v173];
                v178 = *v165;
                v165 = (v165 + v2246);
                v179 = v20.i64[0];
                vst2_s8(v177, v178);
                v173 += 16;
              }

              while (v173 != 256);
              break;
          }

          switch(v176)
          {
            case 1:
              sub_27729AC20(&v2274, 0x10u, v175, v160, 16);
              goto LABEL_1037;
            case 2:
              sub_27729ACE8(v2274.i8, 0x10u, v175, v160, 16);
              goto LABEL_1037;
            case 3:
              sub_27729ADA4(&v2274, 0x10u, v175, v160, 16);
              goto LABEL_1037;
            case 4:
              sub_27729AE6C(&v2274, 0x10u, v175, v160, 16);
              goto LABEL_1037;
            case 5:
              v2002 = v175;
              v2003 = v160;
              v2004 = 2;
              goto LABEL_1033;
            case 6:
              sub_27729B1B0(v2274.i8, 0x10u, v175, v160);
              goto LABEL_1037;
            case 7:
              v2002 = v175;
              v2003 = v160;
              v2004 = 3;
LABEL_1033:
              v2005 = 2;
              goto LABEL_1036;
            case 8:
              sub_27729B588(v2274.i8, 0x10u, v175, v160, 16, v178);
              goto LABEL_1037;
            case 9:
              sub_27729B614(v2274.i8, 0x10u, v175, v160, 16);
              goto LABEL_1037;
            case 10:
              sub_27729B7DC(&v2274, 16, v175, v160, 16);
              goto LABEL_1037;
            case 11:
              sub_27729B98C(v2274.i8, 0x10u, v175, v160, 16);
              goto LABEL_1037;
            case 12:
              sub_27729BB54(&v2274, 0x10u, v175, v160, 16);
              goto LABEL_1037;
            case 13:
              v2002 = v175;
              v2003 = v160;
              v2004 = 2;
              goto LABEL_1035;
            case 14:
              sub_27729BBEC(v2274.i8, 0x10u, v175, v160);
              goto LABEL_1037;
            case 15:
              v2002 = v175;
              v2003 = v160;
              v2004 = 3;
LABEL_1035:
              v2005 = 3;
LABEL_1036:
              sub_27729C774(v2274.i8, v2002, v2003, 16, v2004, v2005);
LABEL_1037:
              v10 = v2266;
              v20 = v2268;
              v1988 = v2253;
              v1987 = v2254;
              v1989 = v2212;
              v1990 = v2182;
              v21.i64[0] = 0x20002000200020;
              v21.i64[1] = 0x20002000200020;
              v22.i64[0] = 0x10001000100010;
              v22.i64[1] = 0x10001000100010;
              v1991 = v2218;
              v1992 = v2221;
              v1993 = v2245;
              v1994 = v2231;
              v1995 = v2191;
              v1996 = v163;
              v1997 = v2216;
              v1998 = v2252;
              break;
            default:
              v1986 = 0;
              v1988 = v2253;
              v1987 = v2254;
              v1989 = v2212;
              v1990 = v2182;
              v21.i64[0] = 0x20002000200020;
              v21.i64[1] = 0x20002000200020;
              v22.i64[0] = 0x10001000100010;
              v22.i64[1] = 0x10001000100010;
              v1991 = v2218;
              v1992 = v2221;
              v1993 = v2245;
              v1994 = v2231;
              v1995 = v2191;
              v1996 = v163;
              v1997 = v2216;
              v1998 = v2252;
              do
              {
                v1999 = &v2274.i8[v1986];
                v2000 = *v175;
                v175 = (v175 + v160);
                v2001 = v20.i64[0];
                vst2_s8(v1999, v2000);
                v1986 += 16;
              }

              while (v1986 != 256);
              break;
          }

          v2006 = 0;
          v2007 = v2226;
          do
          {
            v2008 = vrhaddq_u16(*(&v2270 + v2006), *(&v2274 + v2006));
            v2009 = vrhaddq_u16(*(&v2270 + v2006 + 16), *(&v2275 + v2006));
            v2010 = vrhaddq_u16(*(&v2272 + v2006), *(&v2276 + v2006));
            v2011 = vrhaddq_u16(v2273[v2006 / 0x10], v2277[v2006 / 0x10]);
            if (v1987)
            {
              v2012 = *v2007;
              v2013 = v2007[2];
              v2014 = v2007[4];
              v2015 = v2007[6];
              v2007 += 8;
              v2008 = vaddq_s16(v2012, v2008);
              v2009 = vaddq_s16(v2013, v2009);
              v2010 = vaddq_s16(v2014, v2010);
              v2011 = vaddq_s16(v2015, v2011);
            }

            *v158->i8 = vqmovun_s16(v2008);
            *&v158->i8[v1988] = vqmovun_s16(v2009);
            *&v158->i8[v1989] = vqmovun_s16(v2010);
            *&v158->i8[v174] = vqmovun_s16(v2011);
            v158 = (v158 + v1990);
            v2006 += 64;
          }

          while (v2006 != 256);
          v2016 = 0;
          _X9 = &_X24->i8[v1993];
          __asm { PRFM            #0, [X9] }

          v2008.i64[0] = _X24->i64[0];
          v2019 = vqtbl1q_s8(v2008, xmmword_2773B3E00);
          v2019.i16[3] = _X24->i16[4];
          v2020 = vzip1q_s8(v2019, v20);
          v2021 = vzip1q_s8(v2008, v20);
          v2022 = v2288;
          v2023 = v2289;
          v2024 = v2290;
          v2025 = v2291;
          v2026 = v1997;
          if (v1997 <= -16)
          {
            v2026 = -16;
          }

          v2027 = v1991;
          if (v2026 < v1991)
          {
            v2027 = v2026;
          }

          v2028 = v1996 + v1993 + v2027;
          v2029 = v1996 + v2027 + 2 * v1993;
          do
          {
            _X12 = v2029 + v2194;
            __asm { PRFM            #0, [X12] }

            v2032 = vmlaq_s16(vmulq_s16(v2023, v2020), v2022, v2021);
            v2020.i64[0] = *(v2028 + v2194);
            v2021 = vzip1q_s8(v2020, v20);
            v2033 = vqtbl1q_s8(v2020, xmmword_2773B3E00);
            v2033.i16[3] = *(v2028 + v2194 + 8);
            v2020 = vzip1q_s8(v2033, v20);
            *(&v2279 + v2016) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v2032, v2024, v2021), v2025, v2020), v21), 6uLL);
            v2016 += 16;
            v2028 += v1993;
            v2029 += v1993;
          }

          while (v2016 != 128);
          v2034 = 0;
          _X9 = v1992 + v129;
          __asm { PRFM            #0, [X9] }

          v2022.i64[0] = *v1992;
          v2037 = vqtbl1q_s8(v2022, xmmword_2773B3E00);
          v2037.i16[3] = *(v1992 + 8);
          v2038 = vzip1q_s8(v2037, v20);
          v2039 = vzip1q_s8(v2022, v20);
          v2040 = v2292;
          v2041 = v2293;
          v2042 = v2294;
          v2043 = v2295;
          v2044 = v2185;
          if (v2185 <= -16)
          {
            v2044 = -16;
          }

          v2045 = v2188;
          if (v2044 < v2188)
          {
            v2045 = v2044;
          }

          v2046 = v1995 + v129 + v2045;
          v2047 = v1995 + v2045 + 2 * v129;
          do
          {
            _X12 = v2047 + v1994;
            __asm { PRFM            #0, [X12] }

            v2050 = vmlaq_s16(vmulq_s16(v2041, v2038), v2040, v2039);
            v2038.i64[0] = *(v2046 + v1994);
            v2039 = vzip1q_s8(v2038, v20);
            v2051 = vqtbl1q_s8(v2038, xmmword_2773B3E00);
            v2051.i16[3] = *(v2046 + v1994 + 8);
            v2038 = vzip1q_s8(v2051, v20);
            *(&v2284 + v2034) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v2050, v2042, v2039), v2043, v2038), v21), 6uLL);
            v2034 += 16;
            v2046 += v129;
            v2047 += v129;
          }

          while (v2034 != 128);
          v2052 = 1;
          v2053 = &v2284;
          do
          {
            v2054 = v2052;
            a7 = v2053[-13];
            a8 = v2053[1];
            a9 = v2053[2];
            a10 = v2053[3];
            v2055 = vrhaddq_u16(v2053[-16], *v2053);
            v2056 = vrhaddq_u16(v2053[-15], a8);
            a6 = vrhaddq_u16(v2053[-14], a9);
            v2057 = vrhaddq_u16(a7, a10);
            if (v1998)
            {
              a7 = *v172;
              a8 = v172[2];
              a9 = v172[4];
              a10 = v172[6];
              v172 += 8;
              v2055 = vaddq_s16(a7, v2055);
              v2056 = vaddq_s16(a8, v2056);
              a6 = vaddq_s16(a9, a6);
              v2057 = vaddq_s16(a10, v2057);
            }

            v2052 = 0;
            v2053 += 4;
            a6.n128_u64[0] = vqmovun_s16(a6);
            v159->n128_u64[0] = vqmovun_s16(v2055);
            *(v159->n128_u64 + v2251) = vqmovun_s16(v2056);
            *(v159->n128_u64 + v2209) = a6.n128_u64[0];
            *(v159->n128_u64 + v2183) = vqmovun_s16(v2057);
            v159 = (v159 + v2179);
          }

          while ((v2054 & 1) != 0);
        }

        goto LABEL_1058;
      }

      v2224 = (v162 + v152 + v156 * v129);
      v2204 = v157;
      switch(v117)
      {
        case 1:
          sub_27729AC20(&v2270, 0x10u, v2236 + v134 + v135 * v2246, v2246, 4);
          goto LABEL_987;
        case 2:
          sub_27729ACE8(v2270.i8, 0x10u, v2236 + v134 + v135 * v2246, v2246, 4);
          goto LABEL_987;
        case 3:
          sub_27729ADA4(&v2270, 0x10u, v2236 + v134 + v135 * v2246, v2246, 4);
          goto LABEL_987;
        case 4:
          v1787 = v160;
          sub_27729C91C(&v2270, 0x10u, v2236 + v134 + v135 * v2246, v2246);
          v288 = sub_27729C91C(&v2270.i64[1], 0x10u, (v165 + 1), v2246);
          goto LABEL_986;
        case 5:
          v1787 = v160;
          *v1890.i64 = sub_27729CAF0(&v2270, 0x10u, v2236 + v134 + v135 * v2246, v2246, v141, *v142.i64, *v143.i64, a6.n128_f64[0], a7.n128_f64[0], a8, xmmword_2773B3DF0, a10);
          *v288.i64 = sub_27729CAF0(&v2270.i64[1], 0x10u, (v165 + 1), v2246, v1890, v1891, v1892, v1893, v1894, v1895, v1896, v1897);
          goto LABEL_986;
        case 6:
          v1787 = v160;
          *v1906.i64 = sub_27729CDD0(&v2270, 0x10u, v2236 + v134 + v135 * v2246, v2246, v141, v142, v143, a6, a7, a8, xmmword_2773B3DF0, a10);
          *v288.i64 = sub_27729CDD0(&v2270.i64[1], 0x10u, (v165 + 1), v2246, v1906, v1907, v1908, v1909, v1910, v1911, v1912, v1913);
          goto LABEL_986;
        case 7:
          v1787 = v160;
          v1810 = sub_27729D274(&v2270, 0x10u, v2236 + v134 + v135 * v2246, v2246, *v141.i64, *v142.i64, *v143.i64, a6.n128_f64[0], a7.n128_f64[0], a8.n128_f64[0], xmmword_2773B3DF0, a10);
          *v288.i64 = sub_27729D274(&v2270.i64[1], 0x10u, (v165 + 1), v2246, v1810, v1811, v1812, v1813, v1814, v1815, v1816, v1817);
          goto LABEL_986;
        case 8:
          v1787 = v160;
          sub_27729D550(&v2270, 0x10u, v2236 + v134 + v135 * v2246, v2246);
          v288 = sub_27729D550(&v2270.i64[1], 0x10u, (v165 + 1), v2246);
          goto LABEL_986;
        case 9:
          v1787 = v160;
          sub_27729D714(&v2270, 0x10u, v2236 + v134 + v135 * v2246, v2246);
          *v288.i64 = sub_27729D714(&v2270.i64[1], 0x10u, (v165 + 1), v2246);
          goto LABEL_986;
        case 10:
          sub_27729B7DC(&v2270, 16, v2236 + v134 + v135 * v2246, v2246, 4);
          goto LABEL_987;
        case 11:
          v1787 = v160;
          sub_27729DE6C(&v2270, 0x10u, v2236 + v134 + v135 * v2246, v2246);
          *v288.i64 = sub_27729DE6C(&v2270.i64[1], 0x10u, (v165 + 1), v2246);
          goto LABEL_986;
        case 12:
          v1787 = v160;
          sub_27729E5C4(&v2270, 0x10u, v2236 + v134 + v135 * v2246, v2246);
          v288 = sub_27729E5C4(&v2270.i64[1], 0x10u, (v165 + 1), v2246);
          goto LABEL_986;
        case 13:
          v1787 = v160;
          *v1898.i64 = sub_27729E798(&v2270, 0x10u, v2236 + v134 + v135 * v2246, v2246, v141, *v142.i64, *v143.i64, a6.n128_f64[0], a7.n128_f64[0], a8, xmmword_2773B3DF0, a10);
          *v288.i64 = sub_27729E798(&v2270.i64[1], 0x10u, (v165 + 1), v2246, v1898, v1899, v1900, v1901, v1902, v1903, v1904, v1905);
          goto LABEL_986;
        case 14:
          v1787 = v160;
          *v1788.i64 = sub_27729EA7C(&v2270, 0x10u, v2236 + v134 + v135 * v2246, v2246, v141, v142, v143, a6, a7, a8, xmmword_2773B3DF0, a10);
          *v288.i64 = sub_27729EA7C(&v2270.i64[1], 0x10u, (v165 + 1), v2246, v1788, v1789, v1790, v1791, v1792, v1793, v1794, v1795);
          goto LABEL_986;
        case 15:
          v1787 = v160;
          v1799 = sub_27729EF20(&v2270, 0x10u, v2236 + v134 + v135 * v2246, v2246, *v141.i64, *v142.i64, *v143.i64, a6.n128_f64[0], a7.n128_f64[0], a8.n128_f64[0], xmmword_2773B3DF0, a10);
          *v288.i64 = sub_27729EF20(&v2270.i64[1], 0x10u, (v165 + 1), v2246, v1799, v1800, v1801, v1802, v1803, v1804, v1805, v1806);
LABEL_986:
          v160 = v1787;
LABEL_987:
          v20.i64[0] = v2268.i64[0];
          v285 = v2257;
          v286 = v2211;
          break;
        default:
          v284 = 0;
          v285 = v2257;
          v286 = v2211;
          do
          {
            v287 = &v2270.i8[v284];
            v288 = *v165;
            v165 = (v165 + v2246);
            v142.i64[0] = v20.i64[0];
            vst2_s8(v287, *(&v142 - 8));
            v284 += 16;
          }

          while (v284 != 64);
          break;
      }

      switch(v286)
      {
        case 1:
          sub_27729AC20(&v2274, 0x10u, v285, v160, 4);
          goto LABEL_1007;
        case 2:
          sub_27729ACE8(v2274.i8, 0x10u, v285, v160, 4);
          goto LABEL_1007;
        case 3:
          sub_27729ADA4(&v2274, 0x10u, v285, v160, 4);
          goto LABEL_1007;
        case 4:
          v1931 = v285;
          sub_27729C91C(&v2274, 0x10u, v285, v160);
          sub_27729C91C(&v2274.i64[1], 0x10u, v1931->val + 4, v160);
          goto LABEL_1007;
        case 5:
          v1952 = v285;
          *v1953.i64 = sub_27729CAF0(&v2274, 0x10u, v285, v160, v288, *v142.i64, *v143.i64, a6.n128_f64[0], a7.n128_f64[0], a8, a9, a10);
          sub_27729CAF0(&v2274.i64[1], 0x10u, v1952->val + 4, v160, v1953, v1954, v1955, v1956, v1957, v1958, v1959, v1960);
          goto LABEL_1007;
        case 6:
          v1970 = v285;
          *v1971.i64 = sub_27729CDD0(&v2274, 0x10u, v285, v160, v288, v142, v143, a6, a7, a8, a9, a10);
          sub_27729CDD0(&v2274.i64[1], 0x10u, v1970->val + 4, v160, v1971, v1972, v1973, v1974, v1975, v1976, v1977, v1978);
          goto LABEL_1007;
        case 7:
          v1943 = v285;
          v1944 = sub_27729D274(&v2274, 0x10u, v285, v160, *v288.i64, *v142.i64, *v143.i64, a6.n128_f64[0], a7.n128_f64[0], a8.n128_f64[0], a9, a10);
          sub_27729D274(&v2274.i64[1], 0x10u, v1943->val + 4, v160, v1944, v1945, v1946, v1947, v1948, v1949, v1950, v1951);
          goto LABEL_1007;
        case 8:
          v1979 = v285;
          sub_27729D550(&v2274, 0x10u, v285, v160);
          sub_27729D550(&v2274.i64[1], 0x10u, v1979->val + 4, v160);
          goto LABEL_1007;
        case 9:
          v1933 = v285;
          sub_27729D714(&v2274, 0x10u, v285, v160);
          sub_27729D714(&v2274.i64[1], 0x10u, v1933->val + 4, v160);
          goto LABEL_1007;
        case 10:
          sub_27729B7DC(&v2274, 16, v285, v160, 4);
          goto LABEL_1007;
        case 11:
          v1930 = v285;
          sub_27729DE6C(&v2274, 0x10u, v285, v160);
          sub_27729DE6C(&v2274.i64[1], 0x10u, v1930->val + 4, v160);
          goto LABEL_1007;
        case 12:
          v1932 = v285;
          sub_27729E5C4(&v2274, 0x10u, v285, v160);
          sub_27729E5C4(&v2274.i64[1], 0x10u, v1932->val + 4, v160);
          goto LABEL_1007;
        case 13:
          v1961 = v285;
          *v1962.i64 = sub_27729E798(&v2274, 0x10u, v285, v160, v288, *v142.i64, *v143.i64, a6.n128_f64[0], a7.n128_f64[0], a8, a9, a10);
          sub_27729E798(&v2274.i64[1], 0x10u, v1961->val + 4, v160, v1962, v1963, v1964, v1965, v1966, v1967, v1968, v1969);
          goto LABEL_1007;
        case 14:
          v1921 = v285;
          *v1922.i64 = sub_27729EA7C(&v2274, 0x10u, v285, v160, v288, v142, v143, a6, a7, a8, a9, a10);
          sub_27729EA7C(&v2274.i64[1], 0x10u, v1921->val + 4, v160, v1922, v1923, v1924, v1925, v1926, v1927, v1928, v1929);
          goto LABEL_1007;
        case 15:
          v1934 = v285;
          v1935 = sub_27729EF20(&v2274, 0x10u, v285, v160, *v288.i64, *v142.i64, *v143.i64, a6.n128_f64[0], a7.n128_f64[0], a8.n128_f64[0], a9, a10);
          sub_27729EF20(&v2274.i64[1], 0x10u, v1934->val + 4, v160, v1935, v1936, v1937, v1938, v1939, v1940, v1941, v1942);
LABEL_1007:
          v1916 = v2253;
          v1917 = v2212;
          break;
        default:
          v1915 = 0;
          v1916 = v2253;
          v1917 = v2212;
          do
          {
            v1918 = &v2274.i8[v1915];
            v1919 = *v285;
            v285 = (v285 + v160);
            v1920 = v20.i64[0];
            vst2_s8(v1918, v1919);
            v1915 += 16;
          }

          while (v1915 != 64);
          break;
      }

      v1980 = vrhaddq_u16(v2270, v2274);
      v1981 = vrhaddq_u16(v2271, v2275);
      v1982 = vrhaddq_u16(v2272, v2276);
      v1983 = vrhaddq_u16(v2273[0], v2277[0]);
      if (v2254)
      {
        v1980 = vaddq_s16(*v2226, v1980);
        v1981 = vaddq_s16(v2226[2], v1981);
        v1982 = vaddq_s16(v2226[4], v1982);
        v1983 = vaddq_s16(v2226[6], v1983);
      }

      *v158->i8 = vqmovun_s16(v1980);
      *&v158->i8[v1916] = vqmovun_s16(v1981);
      *&v158->i8[v1917] = vqmovun_s16(v1982);
      *&v158->i8[v2199] = vqmovun_s16(v1983);
      sub_2772906A8(&v2279, _X24, v2245, &v2288);
      sub_2772906A8(&v2284, v2224, v129, &v2292);
      a6 = v2285;
      v1984 = vrhaddq_u16(v2279, v2284);
      v1985 = vrhaddq_u16(v2280, v2285);
      if (v2252)
      {
        a6 = *(v2204 + 32);
        v1984 = vaddq_s16(*v2204, v1984);
        v1985 = vaddq_s16(a6, v1985);
      }

      v21.i64[0] = 0x20002000200020;
      v21.i64[1] = 0x20002000200020;
      v22.i64[0] = 0x10001000100010;
      v22.i64[1] = 0x10001000100010;
      v159->n128_u64[0] = vqmovun_s16(v1984);
      *(v159->n128_u64 + v2251) = vqmovun_s16(v1985);
    }

    v10 = v2266;
    v20 = v2268;
    goto LABEL_1058;
  }
}

void sub_277320FFC(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, __n128 a8, __n128 a9, __n128 a10)
{
  v11 = a2;
  v12 = a1;
  v2464 = *MEMORY[0x277D85DE8];
  v13 = *(a2 + 72);
  if (*v13)
  {
    v14 = 5;
  }

  else
  {
    v14 = 4;
  }

  if (*v13)
  {
    v15 = 4;
  }

  else
  {
    v15 = 3;
  }

  v2425 = *(v13 + 136);
  if (*(a2 + 21))
  {
    v16 = *(v13 + 136);
  }

  else
  {
    v16 = 0;
  }

  if (*(a1 + 816))
  {
    if (*(a1 + 832))
    {
      v17 = 0;
    }

    else
    {
      v17 = a2 + 112;
    }
  }

  else
  {
    v17 = 0;
  }

  v2423 = v17;
  if (*(a1 + 817))
  {
    if (*(a1 + 832))
    {
      v18 = 0;
    }

    else
    {
      v18 = a2 + 624;
    }

    v2422 = v18;
  }

  else
  {
    v2422 = 0;
  }

  v2432 = *(a1 + 1104);
  if (*(a1 + 1104))
  {
    v19 = 0;
    v20 = (16 * *(a1 + 824));
    v21 = v2425 << v14;
    v22 = *(a1 + 828);
    v2399 = 16 * *(a1 + 824);
    v2395 = (*(v13 + 40) + v20 + v16 + ((v22 << v15) * *(v13 + 152)));
    v2421 = (*(v13 + 32) + v20 + v16 + (v21 * v22));
    v23 = *(v13 + 132);
    v2410 = a1 + 848;
    v2416 = 16 * v22;
    v2397 = v23 + 1;
    v2396 = *(v13 + 100) + 1;
    v2424 = *(a2 + 64);
    v2398 = *(v13 + 116);
    v2417 = 2 * v2425;
    v24 = 4 * v2425;
    v2369 = 6 * v2425;
    v2363 = 2 * v2425;
    v2353 = (16 * v22) >> 1;
    v2409 = (16 * v22) | 0xF;
    v2418 = v23 - 2;
    v25 = xmmword_2773B3DF0;
    v26 = 0uLL;
    v27.i64[0] = 0x20002000200020;
    v27.i64[1] = 0x20002000200020;
    v28.i64[0] = 0x10001000100010;
    v28.i64[1] = 0x10001000100010;
    v2420 = (2 * v2425);
    v2362 = 2 * v2417;
    v2364 = 2 * v2417 + 8;
    v2346 = 5 * v2417 - v24;
    v2347 = (4 * v2425);
    v2344 = 2 * v2425;
    v2345 = v2346 + 8;
    v2349 = -1 * v2425;
    v2431 = v24;
    while (1)
    {
      v29 = (v2410 + 16 * v19);
      v30 = *(v29 + 15);
      v31 = *(v12 + 858);
      if (v31 >= 0x103)
      {
        v31 = 259;
      }

      v32 = &word_280A6AB60[40 * v31];
      v33 = v32[v19 + 24];
      v2426 = v33 >> 8;
      v2433 = v19;
      v34 = *(v32 + v19 + 32);
      v35 = byte_2773B3BA0[v34];
      v36 = byte_2773B3BB0[v34];
      v2434 = v10;
      v2436 = v26;
      if (v30 == 6)
      {
        break;
      }

      v41 = (v30 - 4);
      v42 = *(v2424[v41] + 8 * *(v29 + v41 + 8));
      if (!v42)
      {
        return;
      }

      v43 = &v29[2 * v41];
      v44 = *v43;
      v45 = v43[1];
      v46 = v2416 + (v45 >> 2);
      v47 = v46 + 15;
      if (v46 < -15)
      {
        v47 = v46 + 30;
      }

      v48 = v47 >> 4;
      if (v48 < 0)
      {
        v49 = -1;
      }

      else
      {
        v49 = v48;
      }

      if (*(v42 + 12) <= v49)
      {
        sub_2773B1C78(*(v42 + 16));
        while (*(v42 + 12) <= v49)
        {
          sub_2773B1D28(*(v42 + 24), *(v42 + 16));
        }

        sub_2773B1C84(*(v42 + 16));
        v24 = 4 * v2425;
        v10 = v2434;
        v26 = v2436;
        v27.i64[0] = 0x20002000200020;
        v27.i64[1] = 0x20002000200020;
        v28.i64[0] = 0x10001000100010;
        v28.i64[1] = 0x10001000100010;
      }

      if (*(v11 + 20))
      {
        v53 = *(v42 + 37);
        v54 = v33;
        if (*(v11 + 21))
        {
          v55 = 2 * (v53 == 0);
        }

        else if (*(v42 + 37))
        {
          v55 = -2;
        }

        else
        {
          v55 = 0;
        }
      }

      else
      {
        v54 = v33;
        v55 = 0;
        v53 = *(v42 + 37);
      }

      v75 = v45 & 3;
      v76 = v75 | (4 * (v44 & 3u));
      v77 = v44 & 7;
      v78 = (v55 + v45);
      v79 = (v55 + v45) & 7;
      v80 = v79 | (16 * v77);
      v82 = *(v42 + 64);
      v81 = *(v42 + 72);
      if (v53)
      {
        v83 = v2425;
      }

      else
      {
        v83 = 0;
      }

      v84 = v81 + v83;
      v85 = v82 + v83;
      if (v2432 == 1)
      {
        v86 = v44 >> 2;
        v87 = v2399 + (v44 >> 2);
        if (v87 <= -18)
        {
          v87 = -18;
        }

        if (v46 <= -18)
        {
          v88 = -18;
        }

        else
        {
          v88 = v2416 + (v45 >> 2);
        }

        if (v87 >= v2397)
        {
          v87 = v2397;
        }

        if (v88 >= v2396)
        {
          v88 = v2396;
        }

        v89 = v88 * v2420;
        v90 = v85 + v89 + v87;
        v91 = (v86 & 0xFFFFFFFE) + v2399;
        v92 = v2353 + (v78 >> 3);
        if (v91 <= -16)
        {
          v91 = -16;
        }

        if (v92 <= -8)
        {
          v92 = -8;
        }

        if (v91 >= v2418)
        {
          v91 = v2418;
        }

        if (v92 >= v2398)
        {
          v92 = v2398 - 1;
        }

        v2427 = v91;
        v93 = v92 * v2420;
        _X28 = (v84 + v91 + v93);
        switch(v76)
        {
          case 1:
            v431 = 0;
            v100 = 2 * v2425;
            v432 = (v90 + v2349 * 4 + v2417);
            v433 = (v432 + v2417 + v2417);
            v434 = vzip1q_s8(*(v433 + v2417), v26);
            v435 = vzip1q_s8(*v433, v26);
            v436 = vzip1q_s8(*(v432 + v2417), v26);
            v437 = vzip1q_s8(*v432, v26);
            v438 = vzip1q_s8(*(v90 + v2349 * 4), v26);
            v439 = (v82 + v2346 + v83 + v87 + v89);
            do
            {
              v440 = v437;
              v437 = v436;
              v436 = v435;
              v435 = v434;
              v434 = vzip1q_s8(*v439, v26);
              v441 = vsubq_s16(vshlq_n_s16(vaddq_s16(v437, v436), 2uLL), vaddq_s16(v440, v435));
              *(&v2438 + v431) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v438, v441), vshlq_n_s16(v441, 2uLL)), vaddq_s16(v434, v28)), 5uLL))), v437);
              v431 += 32;
              v439 = (v439 + v2417);
              v438 = v440;
            }

            while (v431 != 512);
            v442 = 0;
            v443 = (v90 + v2349 * 4 + 8 + v2417);
            v444 = (v443 + v2417 + v2417);
            v445 = vzip1q_s8(*(v444 + v2417), v26);
            v446 = vzip1q_s8(*v444, v26);
            v447 = vzip1q_s8(*(v443 + v2417), v26);
            v448 = vzip1q_s8(*v443, v26);
            v449 = vzip1q_s8(*(v90 + v2349 * 4 + 8), v26);
            v450 = (v82 + v2345 + v83 + v87 + v89);
            v313 = v2423;
            v95 = v2395;
            do
            {
              a8 = v448;
              v448 = v447;
              v447 = v446;
              v446 = v445;
              v445 = vzip1q_s8(*v450, v26);
              v451 = vsubq_s16(vshlq_n_s16(vaddq_s16(v448, v447), 2uLL), vaddq_s16(a8, v446));
              a10 = vshlq_n_s16(v451, 2uLL);
              v452 = vaddq_s16(vaddq_s16(v449, v451), a10);
              a9 = vaddq_s16(v445, v28);
              *(&v2439 + v442) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(v452, a9), 5uLL))), v448);
              v442 += 32;
              v450 = (v450 + v2417);
              v449 = a8;
            }

            while (v442 != 512);
            goto LABEL_355;
          case 2:
            v378 = 0;
            v100 = 2 * v2425;
            v379 = (v90 + v2349 * 4 + v2417);
            v380 = (v379 + v2417 + v2417);
            v381 = vzip1q_s8(*(v380 + v2417), v26);
            v382 = vzip1q_s8(*v380, v26);
            v383 = vzip1q_s8(*(v379 + v2417), v26);
            v384 = vzip1q_s8(*v379, v26);
            v385 = vzip1q_s8(*(v90 + v2349 * 4), v26);
            v386 = (v82 + v2346 + v83 + v87 + v89);
            do
            {
              v387 = v384;
              v384 = v383;
              v383 = v382;
              v382 = v381;
              v388 = &v2438.i8[v378];
              v381 = vzip1q_s8(*v386, v26);
              v389 = vsubq_s16(vshlq_n_s16(vaddq_s16(v384, v383), 2uLL), vaddq_s16(v387, v382));
              *v389.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v385, v389), vshlq_n_s16(v389, 2uLL)), vaddq_s16(v381, v28)), 5uLL));
              v390 = v26.i64[0];
              vst2_s8(v388, v389);
              v378 += 32;
              v386 = (v386 + v2417);
              v385 = v387;
            }

            while (v378 != 512);
            v391 = 0;
            v392 = (v90 + v2349 * 4 + 8 + v2417);
            v393 = (v392 + v2417 + v2417);
            v394 = vzip1q_s8(*(v393 + v2417), v26);
            v395 = vzip1q_s8(*v393, v26);
            v396 = vzip1q_s8(*(v392 + v2417), v26);
            v397 = vzip1q_s8(*v392, v26);
            v398 = vzip1q_s8(*(v90 + v2349 * 4 + 8), v26);
            v399 = (v82 + v2345 + v83 + v87 + v89);
            v313 = v2423;
            v95 = v2395;
            do
            {
              a8 = v397;
              v397 = v396;
              v396 = v395;
              v395 = v394;
              v400 = &v2439.i8[v391];
              v394 = vzip1q_s8(*v399, v26);
              v401 = vsubq_s16(vshlq_n_s16(vaddq_s16(v397, v396), 2uLL), vaddq_s16(a8, v395));
              a10 = vshlq_n_s16(v401, 2uLL);
              v402 = vaddq_s16(vaddq_s16(v398, v401), a10);
              a9 = vaddq_s16(v394, v28);
              a9.n128_u64[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(v402, a9), 5uLL));
              a10.n128_u64[0] = v26.i64[0];
              vst2_s8(v400, a9);
              v391 += 32;
              v399 = (v399 + v2417);
              v398 = a8;
            }

            while (v391 != 512);
            goto LABEL_355;
          case 3:
            v409 = 0;
            v100 = 2 * v2425;
            v410 = (v90 + v2349 * 4 + v2417);
            v411 = (v410 + v2417 + v2417);
            v412 = vzip1q_s8(*(v411 + v2417), v26);
            v413 = vzip1q_s8(*v411, v26);
            v414 = vzip1q_s8(*(v410 + v2417), v26);
            v415 = vzip1q_s8(*v410, v26);
            v416 = vzip1q_s8(*(v90 + v2349 * 4), v26);
            v417 = (v82 + v2346 + v83 + v87 + v89);
            do
            {
              v418 = v415;
              v415 = v414;
              v414 = v413;
              v413 = v412;
              v412 = vzip1q_s8(*v417, v26);
              v419 = vsubq_s16(vshlq_n_s16(vaddq_s16(v415, v414), 2uLL), vaddq_s16(v418, v413));
              *(&v2438 + v409) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v416, v419), vshlq_n_s16(v419, 2uLL)), vaddq_s16(v412, v28)), 5uLL))), v414);
              v409 += 32;
              v417 = (v417 + v2417);
              v416 = v418;
            }

            while (v409 != 512);
            v420 = 0;
            v421 = (v90 + v2349 * 4 + 8 + v2417);
            v422 = (v421 + v2417 + v2417);
            v423 = vzip1q_s8(*(v422 + v2417), v26);
            v424 = vzip1q_s8(*v422, v26);
            v425 = vzip1q_s8(*(v421 + v2417), v26);
            v426 = vzip1q_s8(*v421, v26);
            v427 = vzip1q_s8(*(v90 + v2349 * 4 + 8), v26);
            v428 = (v82 + v2345 + v83 + v87 + v89);
            v313 = v2423;
            v95 = v2395;
            do
            {
              a8 = v426;
              v426 = v425;
              v425 = v424;
              v424 = v423;
              v423 = vzip1q_s8(*v428, v26);
              v429 = vsubq_s16(vshlq_n_s16(vaddq_s16(v426, v425), 2uLL), vaddq_s16(a8, v424));
              a10 = vshlq_n_s16(v429, 2uLL);
              v430 = vaddq_s16(vaddq_s16(v427, v429), a10);
              a9 = vaddq_s16(v423, v28);
              *(&v2439 + v420) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(v430, a9), 5uLL))), v425);
              v420 += 32;
              v428 = (v428 + v2417);
              v427 = a8;
            }

            while (v420 != 512);
            goto LABEL_355;
          case 4:
            v306 = 0;
            v307 = (v90 - 2);
            v100 = 2 * v2425;
            do
            {
              v308 = *v307;
              v307 = (v307 + v2417);
              v309 = vzip1q_s8(vextq_s8(v308, v308, 2uLL), v26);
              v310 = vsubq_s16(vshlq_n_s16(vaddq_s16(v309, vzip1q_s8(vextq_s8(v308, v308, 3uLL), v26)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v308, v308, 1uLL), v26), vzip1q_s8(vextq_s8(v308, v308, 4uLL), v26)));
              *(&v2438 + v306) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v310, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v308, v26), vzip1q_s8(vextq_s8(v308, v308, 5uLL), v26)), v310)), v28), 5uLL))), v309);
              v306 += 32;
            }

            while (v306 != 512);
            v311 = 0;
            v312 = (v90 + 6);
            v313 = v2423;
            v95 = v2395;
            do
            {
              v314 = *v312;
              v312 = (v312 + v2417);
              v315 = vzip1q_s8(vextq_s8(v314, v314, 2uLL), v26);
              v316 = vsubq_s16(vshlq_n_s16(vaddq_s16(v315, vzip1q_s8(vextq_s8(v314, v314, 3uLL), v26)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v314, v314, 1uLL), v26), vzip1q_s8(vextq_s8(v314, v314, 4uLL), v26)));
              *(&v2439 + v311) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v316, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v314, v26), vzip1q_s8(vextq_s8(v314, v314, 5uLL), v26)), v316)), v28), 5uLL))), v315);
              v311 += 32;
            }

            while (v311 != 512);
            goto LABEL_355;
          case 5:
            v403 = v92 * v2420;
            v404 = v90;
            v405 = v79;
            v406 = 2 * v2425;
            v407 = *(v42 + 72);
            v408 = 2;
            goto LABEL_345;
          case 6:
            v2406 = v92 * v2420;
            v2392 = v77;
            v2414 = v79;
            v301 = *(v42 + 72);
            v302 = v79 | (16 * v77);
            v303 = v83;
            sub_27729B1B0(v2438.i8, 0x20u, v90, v2420);
            sub_27729B1B0(v2439.i8, 0x20u, v90 + 8, v2420);
            goto LABEL_350;
          case 7:
            v403 = v92 * v2420;
            v404 = v90;
            v405 = v79;
            v406 = 2 * v2425;
            v407 = *(v42 + 72);
            v408 = 3;
LABEL_345:
            v453 = v83;
            v454 = 2;
            goto LABEL_348;
          case 8:
            v527 = 0;
            v528 = (v90 - 2);
            v100 = 2 * v2425;
            do
            {
              v529 = &v2438.i8[v527];
              v530 = *v528;
              v528 = (v528 + v2417);
              v531 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v530, v530, 2uLL), v26), vzip1q_s8(vextq_s8(v530, v530, 3uLL), v26)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v530, v530, 1uLL), v26), vzip1q_s8(vextq_s8(v530, v530, 4uLL), v26)));
              *v530.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v531, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v530, v26), vzip1q_s8(vextq_s8(v530, v530, 5uLL), v26)), v531)), v28), 5uLL));
              v531.i64[0] = v26.i64[0];
              vst2_s8(v529, v530);
              v527 += 32;
            }

            while (v527 != 512);
            v532 = 0;
            v533 = (v90 + 6);
            v313 = v2423;
            v95 = v2395;
            do
            {
              v534 = &v2439.i8[v532];
              v535 = *v533;
              v533 = (v533 + v2417);
              v536 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v535, v535, 2uLL), v26), vzip1q_s8(vextq_s8(v535, v535, 3uLL), v26)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v535, v535, 1uLL), v26), vzip1q_s8(vextq_s8(v535, v535, 4uLL), v26)));
              *v535.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v536, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v535, v26), vzip1q_s8(vextq_s8(v535, v535, 5uLL), v26)), v536)), v28), 5uLL));
              v536.i64[0] = v26.i64[0];
              vst2_s8(v534, v535);
              v532 += 32;
            }

            while (v532 != 512);
            goto LABEL_355;
          case 9:
            v2407 = v92 * v2420;
            v2392 = v77;
            v2414 = v79;
            v304 = *(v42 + 72);
            v305 = v83;
            sub_27729B614(v2438.i8, 0x20u, v90, v2420, 16);
            sub_27729B614(v2439.i8, 0x20u, v90 + 8, v2420, 16);
            goto LABEL_352;
          case 10:
            v2407 = v92 * v2420;
            v2392 = v77;
            v2414 = v79;
            v304 = *(v42 + 72);
            v305 = v83;
            sub_27729B7DC(&v2438, 32, v90, v2420, 16);
            sub_27729B7DC(&v2439, 32, v90 + 8, v2420, 16);
            goto LABEL_352;
          case 11:
            v2407 = v92 * v2420;
            v2392 = v77;
            v2414 = v79;
            v304 = *(v42 + 72);
            v305 = v83;
            sub_27729B98C(v2438.i8, 0x20u, v90, v2420, 16);
            sub_27729B98C(v2439.i8, 0x20u, v90 + 8, v2420, 16);
LABEL_352:
            v93 = v2407;
            v83 = v305;
            v81 = v304;
            goto LABEL_353;
          case 12:
            v340 = 0;
            v341 = (v90 - 2);
            v100 = 2 * v2425;
            do
            {
              v342 = *v341;
              v341 = (v341 + v2417);
              v343 = vzip1q_s8(vextq_s8(v342, v342, 3uLL), v26);
              v344 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v342, v342, 2uLL), v26), v343), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v342, v342, 1uLL), v26), vzip1q_s8(vextq_s8(v342, v342, 4uLL), v26)));
              *(&v2438 + v340) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v344, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v342, v26), vzip1q_s8(vextq_s8(v342, v342, 5uLL), v26)), v344)), v28), 5uLL))), v343);
              v340 += 32;
            }

            while (v340 != 512);
            v345 = 0;
            v346 = (v90 + 6);
            v313 = v2423;
            v95 = v2395;
            do
            {
              v347 = *v346;
              v346 = (v346 + v2417);
              v348 = vzip1q_s8(vextq_s8(v347, v347, 3uLL), v26);
              v349 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v347, v347, 2uLL), v26), v348), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v347, v347, 1uLL), v26), vzip1q_s8(vextq_s8(v347, v347, 4uLL), v26)));
              *(&v2439 + v345) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v349, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v347, v26), vzip1q_s8(vextq_s8(v347, v347, 5uLL), v26)), v349)), v28), 5uLL))), v348);
              v345 += 32;
            }

            while (v345 != 512);
            goto LABEL_355;
          case 13:
            v403 = v92 * v2420;
            v404 = v90;
            v405 = v79;
            v406 = 2 * v2425;
            v407 = *(v42 + 72);
            v408 = 2;
            goto LABEL_347;
          case 14:
            v2406 = v92 * v2420;
            v2392 = v77;
            v2414 = v79;
            v301 = *(v42 + 72);
            v302 = v79 | (16 * v77);
            v303 = v83;
            sub_27729BBEC(v2438.i8, 0x20u, v90, v2420);
            sub_27729BBEC(v2439.i8, 0x20u, v90 + 8, v2420);
LABEL_350:
            v93 = v2406;
            v83 = v303;
            v80 = v302;
            v81 = v301;
LABEL_353:
            v77 = v2392;
            v79 = v2414;
            goto LABEL_354;
          case 15:
            v403 = v92 * v2420;
            v404 = v90;
            v405 = v79;
            v406 = 2 * v2425;
            v407 = *(v42 + 72);
            v408 = 3;
LABEL_347:
            v453 = v83;
            v454 = 3;
LABEL_348:
            sub_27729AF04(v2438.i8, v404, v406, 16, v408, v454);
            v93 = v403;
            v83 = v453;
            v81 = v407;
            v79 = v405;
LABEL_354:
            v28.i64[0] = 0x10001000100010;
            v28.i64[1] = 0x10001000100010;
            v27.i64[0] = 0x20002000200020;
            v27.i64[1] = 0x20002000200020;
            v10 = v2434;
            v26 = v2436;
            v24 = 4 * v2425;
            v313 = v2423;
            v95 = v2395;
            v100 = 2 * v2425;
LABEL_355:
            v455 = 0;
            v456 = v2421;
            v457 = v313;
            v96 = 2 * v2417 + 8;
            do
            {
              v459 = *(&v2438 + v455);
              v458 = *(&v2438 + v455 + 16);
              v461 = *(&v2440 + v455);
              v460 = v2441[v455 / 0x10];
              if (v313)
              {
                v462 = *v457;
                a8 = *(v457 + 16);
                a9 = *(v457 + 32);
                a10 = *(v457 + 48);
                v457 += 64;
                v459 = vaddq_s16(v462, v459);
                v458 = vaddq_s16(a8, v458);
                v461 = vaddq_s16(a9, v461);
                v460 = vaddq_s16(a10, v460);
              }

              *v456 = vqmovun_high_s16(vqmovun_s16(v459), v458);
              *(v456 + v100) = vqmovun_high_s16(vqmovun_s16(v461), v460);
              v456 = (v456 + v24);
              v455 += 64;
            }

            while (v455 != 512);
            break;
          default:
            v95 = v2395;
            v96 = 2 * v2417 + 8;
            v97 = 0;
            if (v2423)
            {
              v98 = 0;
              v99 = v82 + v83 + v87 + v89;
              v100 = 2 * v2425;
              do
              {
                *(v2421 + v98) = vqmovun_high_s16(vqmovun_s16(vaddq_s16(*(v2423 + v97), vzip1q_s8(*(v99 + v98), v26))), vaddq_s16(*(v2423 + v97 + 16), vzip2q_s8(*(v99 + v98), v26)));
                v98 += v2420;
                v97 += 32;
              }

              while (v97 != 512);
            }

            else
            {
              v537 = v82 + v83 + v87 + v89;
              v538 = 16;
              v100 = 2 * v2425;
              do
              {
                *(v2421 + v97) = *(v537 + v97);
                v97 += v2420;
                --v538;
              }

              while (v538);
            }

            break;
        }

        if (v80)
        {
          v463 = v79 * v77;
          v464 = v79 * v77 - (8 * v77 + 8 * v79) + 64;
          v465 = v26;
          v465.i32[0] = v464 | (v464 << 16);
          v466 = vqtbl1q_s8(v465, xmmword_2773B3DF0);
          v467 = v26;
          v467.i32[0] = (8 * v77 - v463) | ((8 * v77 - v463) << 16);
          v468 = v26;
          v468.i32[0] = (8 * v79 - v463) | ((8 * v79 - v463) << 16);
          v469 = vqtbl1q_s8(v467, xmmword_2773B3DF0);
          v470 = vqtbl1q_s8(v468, xmmword_2773B3DF0);
          v471 = v26;
          v471.i32[0] = 65537 * v79 * v77;
          v2456 = v466;
          v2457 = v469;
          v472 = vqtbl1q_s8(v471, xmmword_2773B3DF0);
          v2458 = v470;
          v2459 = v472;
          if (v80 == 64)
          {
            __asm { PRFM            #0, [X28] }

            v492 = 9;
            v486 = v2446;
            do
            {
              v493 = _X28;
              _X28 = (_X28 + v100);
              __asm { PRFM            #0, [X28] }

              v495 = vextq_s8(*v493, *v493, 2uLL);
              v495.i16[7] = v493[1].i16[0];
              v496 = vrhaddq_u8(*v493, v495);
              v495.i64[0] = v26.i64[0];
              v486[3] = vzip2q_s8(v496, v26);
              v486 += 2;
              vst2_s8(v486->i8, *(&v495 - 8));
              --v492;
            }

            while (v492 > 2);
            v497 = vextq_s8(*_X28, *_X28, 2uLL);
            v497.i16[7] = _X28[1].i16[0];
            v485 = vrhaddq_u8(*_X28, v497);
            v479 = v486 + 2;
LABEL_372:
            v12 = a1;
            v498 = v26.i64[0];
            vst2_s8(v479->i8, v485);
            v486[3] = vzip2q_s8(v485, v26);
          }

          else
          {
            if (v80 == 4)
            {
              _X8 = &_X28->i8[v100];
              __asm { PRFM            #0, [X8] }

              v477 = *_X28;
              v478 = (v81 + v93 + v83 + v2427);
              v479 = &v2447;
              for (i = 9; i > 2; --i)
              {
                _X11 = &v478->i8[v2362];
                v478 = (v478 + v100);
                __asm { PRFM            #0, [X11] }

                v483 = *v478;
                v484 = vrhaddq_u8(v477, *v478);
                *v479 = vzip1q_s8(v484, v26);
                v479[1] = vzip2q_s8(v484, v26);
                v479 += 2;
                v477 = v483;
              }

              v485 = vrhaddq_u8(v483, *(v478 + v100));
              v486 = v479 - 2;
              goto LABEL_372;
            }

            v499 = 0;
            v2457 = v469;
            v2459 = v472;
            _X9 = &_X28->i8[v100];
            __asm { PRFM            #0, [X9] }

            a8.n128_u64[0] = _X28->i64[0];
            v502 = vqtbl1q_s8(a8, xmmword_2773B3E00);
            v502.i16[3] = _X28->i16[4];
            v503 = v81 + v93 + v83 + v2427;
            v504 = vzip1q_s8(v502, v26);
            v505 = vzip1q_s8(a8, v26);
            do
            {
              _X11 = v503 + v2362;
              v503 += v100;
              __asm { PRFM            #0, [X11] }

              v508 = vmlaq_s16(vmulq_s16(v469, v504), v466, v505);
              v504.i64[0] = *v503;
              v505 = vzip1q_s8(v504, v26);
              v509 = vqtbl1q_s8(v504, xmmword_2773B3E00);
              v509.i16[3] = *(v503 + 8);
              v504 = vzip1q_s8(v509, v26);
              *(&v2447 + v499) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v508, v470, v505), v472, v504), v27), 6uLL);
              v499 += 32;
            }

            while (v499 != 256);
            v510 = 0;
            _X9 = &_X28->i8[v100 + 8];
            __asm { PRFM            #0, [X9] }

            v505.i64[0] = _X28->i64[1];
            v513 = vqtbl1q_s8(v505, xmmword_2773B3E00);
            v513.i16[3] = _X28[1].i16[0];
            a9 = vzip1q_s8(v513, v26);
            a8 = vzip1q_s8(v505, v26);
            v514 = v81 + v93 + v83 + v2427;
            v12 = a1;
            do
            {
              _X10 = v514 + v96;
              v514 += v100;
              __asm { PRFM            #0, [X10] }

              v517 = vmlaq_s16(vmulq_s16(v469, a9), v466, a8);
              a9.n128_u64[0] = *(v514 + 8);
              a8 = vzip1q_s8(a9, v26);
              v518 = vqtbl1q_s8(a9, xmmword_2773B3E00);
              v518.i16[3] = *(v514 + 16);
              a9 = vzip1q_s8(v518, v26);
              a10 = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v517, v470, a8), v472, a9), v27), 6uLL);
              *(&v2448 + v510) = a10;
              v510 += 32;
            }

            while (v510 != 256);
          }

          v519 = 0;
          v520 = v95;
          v521 = v2422;
          do
          {
            v523 = *(&v2447 + v519);
            v522 = *(&v2447 + v519 + 16);
            v524 = *(&v2449 + v519);
            v25 = v2450[v519 / 0x10];
            if (v2422)
            {
              v525 = *v521;
              a8 = *(v521 + 16);
              a9 = *(v521 + 32);
              a10 = *(v521 + 48);
              v521 += 64;
              v523 = vaddq_s16(v525, v523);
              v522 = vaddq_s16(a8, v522);
              v524 = vaddq_s16(a9, v524);
              v25 = vaddq_s16(a10, v25);
            }

            *v520 = vqmovun_high_s16(vqmovun_s16(v523), v522);
            *(v520 + v100) = vqmovun_high_s16(vqmovun_s16(v524), v25);
            v520 = (v520 + v24);
            v519 += 64;
          }

          while (v519 != 256);
        }

        else
        {
          v487 = 0;
          if (v2422)
          {
            v488 = 0;
            v12 = a1;
            do
            {
              v489 = *(v81 + v93 + v83 + v2427 + v488);
              v490 = vzip1q_s8(v489, v26);
              v25 = vaddq_s16(*(v2422 + v487 + 16), vzip2q_s8(v489, v26));
              *(v95 + v488) = vqmovun_high_s16(vqmovun_s16(vaddq_s16(*(v2422 + v487), v490)), v25);
              v488 += v2420;
              v487 += 32;
            }

            while (v487 != 256);
          }

          else
          {
            v526 = 8;
            v12 = a1;
            do
            {
              v25 = *(v81 + v93 + v83 + v2427 + v487);
              *(v95 + v487) = v25;
              v487 += v2420;
              --v526;
            }

            while (v526);
          }
        }

LABEL_381:
        v11 = a2;
LABEL_382:
        if (v2432 == 1)
        {
          return;
        }

        goto LABEL_1086;
      }

      v101 = v45 >> 2;
      if (v54 == 4)
      {
        v206 = v12;
        v207 = v11;
        v208 = v79 * v77 - (8 * v77 + 8 * v79) + 64;
        v209 = v26;
        v209.i32[0] = v208 | (v208 << 16);
        v210 = vqtbl1q_s8(v209, xmmword_2773B3DF0);
        v211 = v26;
        v211.i32[0] = (8 * v77 - v79 * v77) | ((8 * v77 - v79 * v77) << 16);
        v212 = vqtbl1q_s8(v211, xmmword_2773B3DF0);
        v213 = v26;
        v213.i32[0] = (8 * v79 - v79 * v77) | ((8 * v79 - v79 * v77) << 16);
        v214 = vqtbl1q_s8(v213, xmmword_2773B3DF0);
        v215 = v26;
        v216 = v2399 + v35 + (v44 >> 2);
        v217 = v101 + v2416 + v36;
        if (v216 <= -18)
        {
          v216 = -18;
        }

        if (v217 <= -18)
        {
          v217 = -18;
        }

        if (v216 >= v2397)
        {
          v216 = v2397;
        }

        if (v217 >= v2396)
        {
          v217 = v2396;
        }

        v218 = (v85 + v216 + v217 * v2420);
        v219 = ((v44 >> 2) & 0xFFFFFFFE) + v2399 + v35;
        v220 = (v78 >> 3) + ((v2416 + v36) >> 1);
        if (v219 <= -16)
        {
          v219 = -16;
        }

        if (v220 <= -8)
        {
          v220 = -8;
        }

        if (v219 >= v2418)
        {
          v219 = v2418;
        }

        v221 = v84 + v219;
        v215.i32[0] = 65537 * v79 * v77;
        v222 = vqtbl1q_s8(v215, xmmword_2773B3DF0);
        v2456 = v210;
        v2457 = v212;
        v2458 = v214;
        v2459 = v222;
        v223 = v2398 - 1;
        if (v220 < v2398)
        {
          v223 = v220;
        }

        v2403 = v221 + v2417 * v223;
        v224 = (v2421->i32 + v35 + (v2420 * v36));
        v225 = (v2423 + 2 * v35 + 32 * v36);
        v226 = (v2395->i32 + v35 + (v36 >> 1) * v2420);
        v227 = (v2422 + 2 * v35 + 32 * (v36 >> 1));
        if (v2426 == 8)
        {
          v228 = v207;
          v2412 = v78 & 7;
          v12 = v206;
          switch(v76)
          {
            case 1:
              v1736 = sub_27729F23C(&v2438, v218, v2420, v210, v212, *v214.i64, v222, 3.52371676e-294, a8, a9, a10);
              v233 = sub_27729F23C(&v2440, &v218[v2363], v2420, v1736, v1737, v1738, v1739, v1740, v1741, v1742, v1743);
              break;
            case 2:
              v1568 = sub_27729F394(&v2438, v218, v2420, *v210.i64, v212, v214, *v222.i64, xmmword_2773B3DF0, a8, a9, a10);
              sub_27729F394(&v2440, &v218[v2363], v2420, v1568, v1569, v1570, v1571, v1572, v1573, v1574, v1575);
              break;
            case 3:
              v1596 = sub_27729F4D8(&v2438, v218, v2420, v210, v212, *v214.i64, v222, 3.52371676e-294, a8, a9, a10);
              v233 = sub_27729F4D8(&v2440, &v218[v2363], v2420, v1596, v1597, v1598, v1599, v1600, v1601, v1602, v1603);
              break;
            case 4:
              sub_27729C91C(&v2438, 8u, v218, v2420);
              v233 = sub_27729C91C(&v2440, 8u, &v218[v2363], v2420);
              break;
            case 5:
              *v1956.i64 = sub_27729CAF0(&v2438, 8u, v218, v2420, v210, *v212.i64, *v214.i64, *v222.i64, 3.52371676e-294, a8, a9, a10);
              sub_27729CAF0(&v2440, 8u, &v218[v2363], v2420, v1956, v1957, v1958, v1959, v1960, v1961, v1962, v1963);
              break;
            case 6:
              *v1972.i64 = sub_27729CDD0(&v2438, 8u, v218, v2420, v210, v212, v214, v222, xmmword_2773B3DF0, a8, a9, a10);
              sub_27729CDD0(&v2440, 8u, &v218[v2363], v2420, v1972, v1973, v1974, v1975, v1976, v1977, v1978, v1979);
              break;
            case 7:
              v1728 = sub_27729D274(&v2438, 8u, v218, v2420, *v210.i64, *v212.i64, *v214.i64, *v222.i64, 3.52371676e-294, a8.n128_f64[0], a9, a10);
              sub_27729D274(&v2440, 8u, &v218[v2363], v2420, v1728, v1729, v1730, v1731, v1732, v1733, v1734, v1735);
              break;
            case 8:
              sub_27729D550(&v2438, 8u, v218, v2420);
              v233 = sub_27729D550(&v2440, 8u, &v218[v2363], v2420);
              break;
            case 9:
              sub_27729D714(&v2438, 8u, v218, v2420);
              sub_27729D714(&v2440, 8u, &v218[v2363], v2420);
              break;
            case 10:
              *v1984.i64 = sub_27729F62C(&v2438, v218, v2420, v210, v212, v214, v222, xmmword_2773B3DF0, a8, a9, a10);
              sub_27729F62C(&v2440, &v218[v2363], v2420, v1984, v1985, v1986, v1987, v1988, v1989, v1990, v1991);
              break;
            case 11:
              sub_27729DE6C(&v2438, 8u, v218, v2420);
              sub_27729DE6C(&v2440, 8u, &v218[v2363], v2420);
              break;
            case 12:
              sub_27729E5C4(&v2438, 8u, v218, v2420);
              v233 = sub_27729E5C4(&v2440, 8u, &v218[v2363], v2420);
              break;
            case 13:
              *v1964.i64 = sub_27729E798(&v2438, 8u, v218, v2420, v210, *v212.i64, *v214.i64, *v222.i64, 3.52371676e-294, a8, a9, a10);
              sub_27729E798(&v2440, 8u, &v218[v2363], v2420, v1964, v1965, v1966, v1967, v1968, v1969, v1970, v1971);
              break;
            case 14:
              *v1543.i64 = sub_27729EA7C(&v2438, 8u, v218, v2420, v210, v212, v214, v222, xmmword_2773B3DF0, a8, a9, a10);
              sub_27729EA7C(&v2440, 8u, &v218[v2363], v2420, v1543, v1544, v1545, v1546, v1547, v1548, v1549, v1550);
              break;
            case 15:
              v1587 = sub_27729EF20(&v2438, 8u, v218, v2420, *v210.i64, *v212.i64, *v214.i64, *v222.i64, 3.52371676e-294, a8.n128_f64[0], a9, a10);
              sub_27729EF20(&v2440, 8u, &v218[v2363], v2420, v1587, v1588, v1589, v1590, v1591, v1592, v1593, v1594);
              break;
            default:
              *v229.i64 = sub_27729F200(&v2438, v218, v2420, v210, v212, v214, v222);
              sub_27729F200(&v2440, &v218[v2363], v2420, v229, v230, v231, v232);
              break;
          }

          v1992 = 1;
          v1993 = &v2438;
          do
          {
            v1994 = v1992;
            v233.i64[0] = v1993->i64[0];
            v234.i64[0] = v1993->i64[1];
            v235.i64[0] = v1993[1].i64[0];
            v236.i64[0] = v1993[1].i64[1];
            if (v2423)
            {
              v237.i64[0] = *v225;
              v238.i64[0] = v225[4];
              v239.i64[0] = v225[8];
              v240.i64[0] = v225[12];
              v225 += 16;
              v233 = vaddq_s16(v237, v233);
              v234 = vaddq_s16(v238, v234);
              v235 = vaddq_s16(v239, v235);
              v236 = vaddq_s16(v240, v236);
            }

            v1992 = 0;
            v1995 = COERCE_DOUBLE(vqmovun_s16(v233));
            v1996 = COERCE_DOUBLE(vqmovun_s16(v234));
            v1997 = COERCE_DOUBLE(vqmovun_s16(v235));
            v1998 = COERCE_DOUBLE(vqmovun_s16(v236));
            *v224 = LODWORD(v1995);
            *(v224 + v2417) = LODWORD(v1996);
            *(v224 + v2431) = LODWORD(v1997);
            *(v224 + v2369) = LODWORD(v1998);
            v224 = (v224 + v2363 * 4);
            v1993 += 2;
          }

          while ((v1994 & 1) != 0);
          v1999 = sub_277290798(&v2447, v2403, v2420, v77, v2412, v1995, v1996, v1997, v1998, v237, v238);
          sub_277290798(&v2448, v2403 + v2347, v2420, v77, v2412, v1999, v2000, v2001, v2002, v2003, v2004);
          v2007.i64[0] = v2447.i64[1];
          v2006.i64[0] = v2447.i64[0];
          v2008.i64[0] = v2448.i64[1];
          v25.i64[0] = v2448.i64[0];
          if (v2422)
          {
            v2005.i64[0] = *v227;
            a8.n128_u64[0] = v227[4];
            a9.n128_u64[0] = v227[8];
            a10.n128_u64[0] = v227[12];
            v2006 = vaddq_s16(v2005, v2006);
            v2007 = vaddq_s16(a8, v2007);
            v25 = vaddq_s16(a9, v25);
            v2008 = vaddq_s16(a10, v2008);
          }

          v24 = 4 * v2425;
          v10 = v2434;
          v26 = v2436;
          v27.i64[0] = 0x20002000200020;
          v27.i64[1] = 0x20002000200020;
          v28.i64[0] = 0x10001000100010;
          v28.i64[1] = 0x10001000100010;
          *v226 = vqmovun_s16(v2006).u32[0];
          *(v226 + v2417) = vqmovun_s16(v2007).u32[0];
          *v25.i8 = vqmovun_s16(v25);
          *(v226 + v2431) = v25.i32[0];
          *(v226 + v2369) = vqmovun_s16(v2008).u32[0];
          v11 = v228;
          goto LABEL_382;
        }

        v277 = v78 & 7;
        switch(v76)
        {
          case 1:
            v278 = sub_27729F23C(&v2438, v218, v2420, v210, v212, *v214.i64, v222, 3.52371676e-294, a8, a9, a10);
            break;
          case 2:
            sub_27729F394(&v2438, v218, v2420, *v210.i64, v212, v214, *v222.i64, xmmword_2773B3DF0, a8, a9, a10);
            break;
          case 3:
            v278 = sub_27729F4D8(&v2438, v218, v2420, v210, v212, *v214.i64, v222, 3.52371676e-294, a8, a9, a10);
            break;
          case 4:
            v278 = sub_27729C91C(&v2438, 8u, v218, v2420);
            break;
          case 5:
            sub_27729CAF0(&v2438, 8u, v218, v2420, v210, *v212.i64, *v214.i64, *v222.i64, 3.52371676e-294, a8, a9, a10);
            break;
          case 6:
            sub_27729CDD0(&v2438, 8u, v218, v2420, v210, v212, v214, v222, xmmword_2773B3DF0, a8, a9, a10);
            break;
          case 7:
            sub_27729D274(&v2438, 8u, v218, v2420, *v210.i64, *v212.i64, *v214.i64, *v222.i64, 3.52371676e-294, a8.n128_f64[0], a9, a10);
            break;
          case 8:
            v278 = sub_27729D550(&v2438, 8u, v218, v2420);
            break;
          case 9:
            sub_27729D714(&v2438, 8u, v218, v2420);
            break;
          case 10:
            sub_27729F62C(&v2438, v218, v2420, v210, v212, v214, v222, xmmword_2773B3DF0, a8, a9, a10);
            break;
          case 11:
            sub_27729DE6C(&v2438, 8u, v218, v2420);
            break;
          case 12:
            v278 = sub_27729E5C4(&v2438, 8u, v218, v2420);
            break;
          case 13:
            sub_27729E798(&v2438, 8u, v218, v2420, v210, *v212.i64, *v214.i64, *v222.i64, 3.52371676e-294, a8, a9, a10);
            break;
          case 14:
            sub_27729EA7C(&v2438, 8u, v218, v2420, v210, v212, v214, v222, xmmword_2773B3DF0, a8, a9, a10);
            break;
          case 15:
            sub_27729EF20(&v2438, 8u, v218, v2420, *v210.i64, *v212.i64, *v214.i64, *v222.i64, 3.52371676e-294, a8.n128_f64[0], a9, a10);
            break;
          default:
            sub_27729F200(&v2438, v218, v2420, v210, v212, v214, v222);
            break;
        }

        v281.i64[0] = v2438.i64[1];
        v280.i64[0] = v2438.i64[0];
        v279.i64[0] = v2439.i64[1];
        v278.i64[0] = v2439.i64[0];
        if (v2423)
        {
          v282.i64[0] = *v225;
          v283.i64[0] = v225[4];
          v284.i64[0] = v225[8];
          v285.i64[0] = v225[12];
          v280 = vaddq_s16(v282, v280);
          v281 = vaddq_s16(v283, v281);
          v278 = vaddq_s16(v284, v278);
          v279 = vaddq_s16(v285, v279);
        }

        v2009 = COERCE_DOUBLE(vqmovun_s16(v280));
        v2010 = COERCE_DOUBLE(vqmovun_s16(v281));
        *v224 = LODWORD(v2009);
        *(v224 + v2417) = LODWORD(v2010);
        v2011 = COERCE_DOUBLE(vqmovun_s16(v278));
        v2012 = COERCE_DOUBLE(vqmovun_s16(v279));
        *(v224 + v2431) = LODWORD(v2011);
        *(v224 + v2369) = LODWORD(v2012);
        sub_277290798(&v2447, v2403, v2420, v77, v277, v2011, v2012, v2009, v2010, v282, v283);
        v25.i64[0] = v2447.i64[1];
        v2015.i64[0] = v2447.i64[0];
        if (v2422)
        {
          v2013.i64[0] = *v227;
          v2014.i64[0] = v227[4];
          v2015 = vaddq_s16(v2013, v2015);
          v25 = vaddq_s16(v2014, v25);
        }

        v10 = v2434;
        v26 = v2436;
        v27.i64[0] = 0x20002000200020;
        v27.i64[1] = 0x20002000200020;
        v28.i64[0] = 0x10001000100010;
        v28.i64[1] = 0x10001000100010;
        *v25.i8 = vqmovun_s16(v25);
        *v226 = vqmovun_s16(v2015).u32[0];
        *(v226 + v2417) = v25.i32[0];
        v24 = 4 * v2425;
        v11 = v207;
        v12 = v206;
      }

      else
      {
        v102 = 4 * (v44 & 3);
        if (v54 == 8)
        {
          switch(v2426)
          {
            case 4u:
              v350 = v11;
              v351 = v79 * v77 - (8 * v77 + 8 * v79) + 64;
              v352 = v26;
              v352.i32[0] = v351 | (v351 << 16);
              v353 = vqtbl1q_s8(v352, xmmword_2773B3DF0);
              v354 = v26;
              v354.i32[0] = (8 * v77 - v79 * v77) | ((8 * v77 - v79 * v77) << 16);
              v355 = vqtbl1q_s8(v354, xmmword_2773B3DF0);
              v356 = v26;
              v356.i32[0] = (8 * v79 - v79 * v77) | ((8 * v79 - v79 * v77) << 16);
              v357 = vqtbl1q_s8(v356, xmmword_2773B3DF0);
              v358 = v26;
              v358.i32[0] = 65537 * v79 * v77;
              v359 = vqtbl1q_s8(v358, xmmword_2773B3DF0);
              v2456 = v353;
              v2457 = v355;
              v2458 = v357;
              v2459 = v359;
              v360 = v2399 + v35 + (v44 >> 2);
              v361 = v101 + v2416 + v36;
              if (v360 <= -18)
              {
                v360 = -18;
              }

              if (v361 <= -18)
              {
                v361 = -18;
              }

              if (v360 >= v2397)
              {
                v360 = v2397;
              }

              if (v361 >= v2396)
              {
                v361 = v2396;
              }

              v362 = (v85 + v360 + v361 * v2420);
              v363 = ((v44 >> 2) & 0xFFFFFFFE) + v2399 + v35;
              v364 = (v78 >> 3) + ((v2416 + v36) >> 1);
              if (v363 <= -16)
              {
                v363 = -16;
              }

              if (v364 <= -8)
              {
                v364 = -8;
              }

              if (v363 >= v2418)
              {
                v363 = v2418;
              }

              if (v364 >= v2398)
              {
                v364 = v2398 - 1;
              }

              v365 = (v84 + v363 + v2417 * v364);
              v366 = v36;
              v367 = &v2421->i8[v35 + (v2420 * v36)];
              v368 = v2423;
              v369 = (v2423 + 2 * v35 + 32 * v366);
              v370 = &v2395->i8[v35 + (v366 >> 1) * v2420];
              v371 = (v2422 + 2 * v35 + 32 * (v366 >> 1));
              switch(v76)
              {
                case 1:
                  sub_27729AC20(&v2438, 0x10u, v362, v2420, 4);
                  goto LABEL_1269;
                case 2:
                  sub_27729ACE8(v2438.i8, 0x10u, v362, v2420, 4);
                  goto LABEL_1269;
                case 3:
                  sub_27729ADA4(&v2438, 0x10u, v362, v2420, 4);
                  goto LABEL_1269;
                case 4:
                  sub_27729C91C(&v2438, 0x10u, v362, v2420);
                  sub_27729C91C(&v2438.i64[1], 0x10u, v362->val + 4, v2420);
                  goto LABEL_1269;
                case 5:
                  *v2261.i64 = sub_27729CAF0(&v2438, 0x10u, v362, v2420, v353, *v355.i64, *v357.i64, *v359.i64, 3.52371676e-294, a8, a9, a10);
                  sub_27729CAF0(&v2438.i64[1], 0x10u, v362->val + 4, v2420, v2261, v2262, v2263, v2264, v2265, v2266, v2267, v2268);
                  goto LABEL_1269;
                case 6:
                  *v2277.i64 = sub_27729CDD0(&v2438, 0x10u, v362, v2420, v353, v355, v357, v359, xmmword_2773B3DF0, a8, a9, a10);
                  sub_27729CDD0(&v2438.i64[1], 0x10u, v362->val + 4, v2420, v2277, v2278, v2279, v2280, v2281, v2282, v2283, v2284);
                  goto LABEL_1269;
                case 7:
                  v2202 = sub_27729D274(&v2438, 0x10u, v362, v2420, *v353.i64, *v355.i64, *v357.i64, *v359.i64, 3.52371676e-294, a8.n128_f64[0], a9, a10);
                  sub_27729D274(&v2438.i64[1], 0x10u, v362->val + 4, v2420, v2202, v2203, v2204, v2205, v2206, v2207, v2208, v2209);
                  goto LABEL_1269;
                case 8:
                  sub_27729D550(&v2438, 0x10u, v362, v2420);
                  sub_27729D550(&v2438.i64[1], 0x10u, v362->val + 4, v2420);
                  goto LABEL_1269;
                case 9:
                  sub_27729D714(&v2438, 0x10u, v362, v2420);
                  sub_27729D714(&v2438.i64[1], 0x10u, v362->val + 4, v2420);
                  goto LABEL_1269;
                case 10:
                  sub_27729B7DC(&v2438, 16, v362, v2420, 4);
                  goto LABEL_1269;
                case 11:
                  sub_27729DE6C(&v2438, 0x10u, v362, v2420);
                  sub_27729DE6C(&v2438.i64[1], 0x10u, v362->val + 4, v2420);
                  goto LABEL_1269;
                case 12:
                  sub_27729E5C4(&v2438, 0x10u, v362, v2420);
                  sub_27729E5C4(&v2438.i64[1], 0x10u, v362->val + 4, v2420);
                  goto LABEL_1269;
                case 13:
                  *v2269.i64 = sub_27729E798(&v2438, 0x10u, v362, v2420, v353, *v355.i64, *v357.i64, *v359.i64, 3.52371676e-294, a8, a9, a10);
                  sub_27729E798(&v2438.i64[1], 0x10u, v362->val + 4, v2420, v2269, v2270, v2271, v2272, v2273, v2274, v2275, v2276);
                  goto LABEL_1269;
                case 14:
                  *v2176.i64 = sub_27729EA7C(&v2438, 0x10u, v362, v2420, v353, v355, v357, v359, xmmword_2773B3DF0, a8, a9, a10);
                  sub_27729EA7C(&v2438.i64[1], 0x10u, v362->val + 4, v2420, v2176, v2177, v2178, v2179, v2180, v2181, v2182, v2183);
                  goto LABEL_1269;
                case 15:
                  v2191 = sub_27729EF20(&v2438, 0x10u, v362, v2420, *v353.i64, *v355.i64, *v357.i64, *v359.i64, 3.52371676e-294, a8.n128_f64[0], a9, a10);
                  sub_27729EF20(&v2438.i64[1], 0x10u, v362->val + 4, v2420, v2191, v2192, v2193, v2194, v2195, v2196, v2197, v2198);
LABEL_1269:
                  v24 = 4 * v2425;
                  v368 = v2423;
                  v374 = 2 * v2425;
                  v375 = 6 * v2425;
                  break;
                default:
                  v372 = v102 + v75 - 4;
                  v373 = &v2438;
                  v374 = 2 * v2425;
                  v375 = 6 * v2425;
                  do
                  {
                    v376 = *v362;
                    v362 = (v362 + v2417);
                    v377 = v26.i64[0];
                    vst2_s8(v373->i8, v376);
                    ++v373;
                    _CF = __CFADD__(v372++, 1);
                  }

                  while (!_CF);
                  break;
              }

              v2286 = v2438;
              v2287 = v2439;
              v2288 = v2440;
              v2289 = v2441[0];
              v2290 = v350;
              if (v368)
              {
                v2286 = vaddq_s16(*v369, v2438);
                v2287 = vaddq_s16(v369[2], v2439);
                v2288 = vaddq_s16(v369[4], v2440);
                v2289 = vaddq_s16(v369[6], v2441[0]);
              }

              v12 = a1;
              *v367 = vqmovun_s16(v2286);
              *(v367 + v374) = vqmovun_s16(v2287);
              *(v367 + v24) = vqmovun_s16(v2288);
              *(v367 + v375) = vqmovun_s16(v2289);
              sub_2772906A8(&v2447, v365, v2420, &v2456);
              v2291 = v2447;
              v25 = v2448;
              if (v2422)
              {
                v2291 = vaddq_s16(*v371, v2447);
                v25 = vaddq_s16(v371[2], v2448);
              }

              v10 = v2434;
              v26 = v2436;
              v27.i64[0] = 0x20002000200020;
              v27.i64[1] = 0x20002000200020;
              v28.i64[0] = 0x10001000100010;
              v28.i64[1] = 0x10001000100010;
              *v25.i8 = vqmovun_s16(v25);
              *v370 = vqmovun_s16(v2291);
              *(v370 + v2417) = *v25.i8;
              v24 = 4 * v2425;
              v11 = v2290;
              goto LABEL_382;
            case 8u:
              v317 = v36;
              v318 = v78 & 7;
              v319 = v2399 + v35 + (v44 >> 2);
              v320 = v101 + v2416 + v317;
              if (v319 <= -18)
              {
                v319 = -18;
              }

              if (v320 <= -18)
              {
                v320 = -18;
              }

              if (v319 >= v2397)
              {
                v319 = v2397;
              }

              if (v320 >= v2396)
              {
                v320 = v2396;
              }

              v321 = (v85 + v319 + v320 * v2420);
              v322 = ((v44 >> 2) & 0xFFFFFFFE) + v2399 + v35;
              v323 = (v78 >> 3) + ((v2416 + v317) >> 1);
              if (v322 <= -16)
              {
                v324 = -16;
              }

              else
              {
                v324 = ((v44 >> 2) & 0xFFFFFFFE) + v2399 + v35;
              }

              if (v323 <= -8)
              {
                v323 = -8;
              }

              if (v324 >= v2418)
              {
                v324 = v2418;
              }

              v325 = v84 + v324;
              if (v323 >= v2398)
              {
                v323 = v2398 - 1;
              }

              v2408 = v323 * v2420;
              _X24 = (v325 + v2408);
              v327 = &v2421->i8[v35 + (v2420 * v317)];
              v328 = v2423;
              v329 = v2423 + 2 * v35 + 32 * v317;
              v330 = &v2395->i8[v35 + (v317 >> 1) * v2420];
              v331 = v2422 + 2 * v35 + 32 * (v317 >> 1);
              v332 = v2422;
              v2387 = v80;
              switch(v76)
              {
                case 1:
                  v2430 = v81;
                  v2186 = v83;
                  v2187 = v2422;
                  sub_27729AC20(&v2438, 0x10u, v321, v2420, 8);
                  goto LABEL_1226;
                case 2:
                  v2430 = v81;
                  v2186 = v83;
                  v2187 = v2422;
                  sub_27729ACE8(v2438.i8, 0x10u, v321, v2420, 8);
                  goto LABEL_1226;
                case 3:
                  v2430 = v81;
                  v2186 = v83;
                  v2187 = v2422;
                  sub_27729ADA4(&v2438, 0x10u, v321, v2420, 8);
                  goto LABEL_1226;
                case 4:
                  v2430 = v81;
                  v2186 = v83;
                  v2187 = v2422;
                  sub_27729AE6C(&v2438, 0x10u, v321, v2420, 8);
                  goto LABEL_1226;
                case 5:
                  v2188 = v321;
                  v2189 = 2 * v2425;
                  v2430 = v81;
                  v2190 = 2;
                  goto LABEL_1221;
                case 6:
                  v2174 = v81;
                  v2175 = v83;
                  sub_27729BFC4(v2438.i8, 0x10u, v321, v2420);
                  goto LABEL_1259;
                case 7:
                  v2188 = v321;
                  v2189 = 2 * v2425;
                  v2430 = v81;
                  v2190 = 3;
LABEL_1221:
                  v2186 = v83;
                  v2210 = 2;
                  goto LABEL_1225;
                case 8:
                  v2430 = v81;
                  v2186 = v83;
                  v2187 = v2422;
                  sub_27729B588(v2438.i8, 0x10u, v321, v2420, 8, v25);
                  goto LABEL_1226;
                case 9:
                  v2430 = v81;
                  v2186 = v83;
                  v2187 = v2422;
                  sub_27729B614(v2438.i8, 0x10u, v321, v2420, 8);
                  goto LABEL_1226;
                case 10:
                  v2430 = v81;
                  v2186 = v83;
                  v2187 = v2422;
                  sub_27729B7DC(&v2438, 16, v321, v2420, 8);
                  goto LABEL_1226;
                case 11:
                  v2430 = v81;
                  v2186 = v83;
                  v2187 = v2422;
                  sub_27729B98C(v2438.i8, 0x10u, v321, v2420, 8);
                  goto LABEL_1226;
                case 12:
                  v2430 = v81;
                  v2186 = v83;
                  v2187 = v2422;
                  sub_27729BB54(&v2438, 0x10u, v321, v2420, 8);
                  goto LABEL_1226;
                case 13:
                  v2188 = v321;
                  v2189 = 2 * v2425;
                  v2430 = v81;
                  v2190 = 2;
                  goto LABEL_1224;
                case 14:
                  v2174 = v81;
                  v2175 = v83;
                  sub_27729C39C(v2438.i8, 0x10u, v321, v2420);
LABEL_1259:
                  v332 = v2422;
                  v83 = v2175;
                  v80 = v2387;
                  v81 = v2174;
                  goto LABEL_1227;
                case 15:
                  v2188 = v321;
                  v2189 = 2 * v2425;
                  v2430 = v81;
                  v2190 = 3;
LABEL_1224:
                  v2186 = v83;
                  v2210 = 3;
LABEL_1225:
                  v2187 = v2422;
                  sub_27729C774(v2438.i8, v2188, v2189, 8, v2190, v2210);
LABEL_1226:
                  v332 = v2187;
                  v83 = v2186;
                  v80 = v2387;
                  v81 = v2430;
LABEL_1227:
                  v28.i64[0] = 0x10001000100010;
                  v28.i64[1] = 0x10001000100010;
                  v27.i64[0] = 0x20002000200020;
                  v27.i64[1] = 0x20002000200020;
                  v10 = v2434;
                  v26 = v2436;
                  v24 = 4 * v2425;
                  v328 = v2423;
                  v335 = 2 * v2425;
                  v336 = 6 * v2425;
                  v337 = 8 * v2425;
                  break;
                default:
                  v333 = v102 + v75 - 8;
                  v334 = &v2438;
                  v335 = 2 * v2425;
                  v336 = 6 * v2425;
                  v337 = 8 * v2425;
                  do
                  {
                    v338 = *v321;
                    v321 = (v321 + v2417);
                    v339 = v26.i64[0];
                    vst2_s8(v334->i8, v338);
                    ++v334;
                    _CF = __CFADD__(v333++, 1);
                  }

                  while (!_CF);
                  break;
              }

              v2211 = 1;
              v2212 = &v2438;
              do
              {
                v2213 = v2211;
                v2214 = *v2212;
                v2215 = v2212[1];
                v2216 = v2212[2];
                v2217 = v2212[3];
                if (v328)
                {
                  v2218 = *v329;
                  a8 = *(v329 + 32);
                  a9 = *(v329 + 64);
                  a10 = *(v329 + 96);
                  v329 += 128;
                  v2214 = vaddq_s16(v2218, v2214);
                  v2215 = vaddq_s16(a8, v2215);
                  v2216 = vaddq_s16(a9, v2216);
                  v2217 = vaddq_s16(a10, v2217);
                }

                v2211 = 0;
                *v327 = vqmovun_s16(v2214);
                *(v327 + v335) = vqmovun_s16(v2215);
                *(v327 + v24) = vqmovun_s16(v2216);
                *(v327 + v336) = vqmovun_s16(v2217);
                v327 = (v327 + v337);
                v2212 += 4;
              }

              while ((v2213 & 1) != 0);
              if (v80 == 64)
              {
                __asm { PRFM            #0, [X24] }

                v2220 = &v2447;
                v2232 = 5;
                v12 = a1;
                do
                {
                  v2233 = _X24;
                  _X24 = (_X24 + v335);
                  __asm { PRFM            #0, [X24] }

                  *v2214.i8 = *v2233;
                  v2235 = vextq_s8(v2214, v26, 2uLL);
                  v2235.i16[3] = v2233[1].i16[0];
                  v2236 = vrhadd_u8(*v2233, *v2235.i8);
                  v2235.i64[0] = v26.i64[0];
                  vst2_s8(v2220->i8, *(&v2235 - 8));
                  ++v2220;
                  --v2232;
                }

                while (v2232 > 2);
                *v2214.i8 = *_X24;
                v2237 = vextq_s8(v2214, v26, 2uLL);
                v2237.i16[3] = _X24[1].i16[0];
                v2214.i64[0] = vrhaddq_u8(v2214, v2237).u64[0];
              }

              else
              {
                v12 = a1;
                if (v80 != 4)
                {
                  if (!v80)
                  {
                    __asm { PRFM            #0, [X24] }

                    v2220 = &v2447;
                    for (j = 5; j > 2; --j)
                    {
                      v2222 = _X24;
                      _X24 = (_X24 + v335);
                      __asm { PRFM            #0, [X24] }

                      v2469.val[0] = *v2222;
                      v2469.val[1] = v26.i64[0];
                      vst2_s8(v2220->i8, v2469);
                      ++v2220;
                    }

                    *v2214.i8 = *_X24;
                    goto LABEL_1248;
                  }

                  v2239 = 0;
                  v2240 = v318 * v77 - (8 * v77 + 8 * v318) + 64;
                  v2241 = v26;
                  v2241.i32[0] = v2240 | (v2240 << 16);
                  v2242 = vqtbl1q_s8(v2241, xmmword_2773B3DF0);
                  v2243 = v26;
                  v2243.i32[0] = (8 * v77 - v318 * v77) | ((8 * v77 - v318 * v77) << 16);
                  v2244 = vqtbl1q_s8(v2243, xmmword_2773B3DF0);
                  v2245 = v26;
                  v2245.i32[0] = (8 * v318 - v318 * v77) | ((8 * v318 - v318 * v77) << 16);
                  v2246 = v26;
                  v2246.i32[0] = 65537 * v318 * v77;
                  v2247 = vqtbl1q_s8(v2245, xmmword_2773B3DF0);
                  v2248 = vqtbl1q_s8(v2246, xmmword_2773B3DF0);
                  v2456 = v2242;
                  v2457 = v2244;
                  v2458 = v2247;
                  v2459 = v2248;
                  _X9 = _X24 + v335;
                  __asm { PRFM            #0, [X9] }

                  a8.n128_u64[0] = *_X24;
                  v2251 = vqtbl1q_s8(a8, xmmword_2773B3E00);
                  v2251.i16[3] = _X24[1].i16[0];
                  a9 = vzip1q_s8(v2251, v26);
                  a8 = vzip1q_s8(a8, v26);
                  v2252 = v322;
                  if (v322 <= -16)
                  {
                    v2252 = -16;
                  }

                  if (v2252 >= v2418)
                  {
                    v2252 = v2418;
                  }

                  v2253 = v81 + v83 + v2408 + v2252;
                  do
                  {
                    _X10 = v2253 + v2362;
                    v2253 += v335;
                    __asm { PRFM            #0, [X10] }

                    v2256 = vmlaq_s16(vmulq_s16(v2244, a9), v2242, a8);
                    a9.n128_u64[0] = *v2253;
                    a8 = vzip1q_s8(a9, v26);
                    v2257 = vqtbl1q_s8(a9, xmmword_2773B3E00);
                    v2257.i16[3] = *(v2253 + 8);
                    a9 = vzip1q_s8(v2257, v26);
                    a10 = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v2256, v2247, a8), v2248, a9), v27), 6uLL);
                    *(&v2447 + v2239) = a10;
                    v2239 += 16;
                  }

                  while (v2239 != 64);
LABEL_1255:
                  v2258 = v2447;
                  v2259 = v2448;
                  v25 = v2449;
                  v2260 = v2450[0];
                  if (v332)
                  {
                    a8 = *(v331 + 32);
                    a9 = *(v331 + 64);
                    a10 = *(v331 + 96);
                    v2258 = vaddq_s16(*v331, v2447);
                    v2259 = vaddq_s16(a8, v2448);
                    v25 = vaddq_s16(a9, v2449);
                    v2260 = vaddq_s16(a10, v2450[0]);
                  }

                  v11 = a2;
                  *v330 = vqmovun_s16(v2258);
                  *(v330 + v335) = vqmovun_s16(v2259);
                  *v25.i8 = vqmovun_s16(v25);
                  *(v330 + v24) = *v25.i8;
                  *(v330 + v336) = vqmovun_s16(v2260);
                  goto LABEL_382;
                }

                _X8 = _X24 + v335;
                __asm { PRFM            #0, [X8] }

                *v2214.i8 = *_X24;
                v2226 = v322;
                if (v322 <= -16)
                {
                  v2226 = -16;
                }

                if (v2226 >= v2418)
                {
                  v2226 = v2418;
                }

                v2227 = (v81 + v83 + v2408 + v2226);
                v2220 = &v2447;
                for (k = 5; k > 2; --k)
                {
                  _X11 = v2227 + v2362;
                  v2227 = (v2227 + v335);
                  __asm { PRFM            #0, [X11] }

                  *v2215.i8 = *v2227;
                  v2475.val[0] = vrhadd_u8(*v2214.i8, *v2227);
                  v2475.val[1] = v26.i64[0];
                  vst2_s8(v2220->i8, v2475);
                  ++v2220;
                  v2214 = v2215;
                }

                *v2214.i8 = *(v2227 + v335);
                v2214.i64[0] = vrhaddq_u8(v2215, v2214).u64[0];
              }

LABEL_1248:
              v2238 = v26.i64[0];
              vst2_s8(v2220->i8, v2214);
              goto LABEL_1255;
            case 0x10u:
              v185 = v78 & 7;
              v186 = v2399 + v35 + (v44 >> 2);
              if (v186 <= -18)
              {
                v186 = -18;
              }

              if (v46 <= -18)
              {
                v187 = -18;
              }

              else
              {
                v187 = v2416 + (v45 >> 2);
              }

              if (v186 >= v2397)
              {
                v186 = v2397;
              }

              if (v187 >= v2396)
              {
                v187 = v2396;
              }

              v188 = (v85 + v186 + v187 * v2420);
              v189 = ((v44 >> 2) & 0xFFFFFFFE) + v2399 + v35;
              v190 = v2353 + (v78 >> 3);
              if (v189 <= -16)
              {
                v191 = -16;
              }

              else
              {
                v191 = ((v44 >> 2) & 0xFFFFFFFE) + v2399 + v35;
              }

              if (v190 <= -8)
              {
                v190 = -8;
              }

              if (v191 >= v2418)
              {
                v191 = v2418;
              }

              if (v190 >= v2398)
              {
                v190 = v2398 - 1;
              }

              v192 = v190 * v2420;
              _X24 = (v84 + v191 + v192);
              v2428 = v192;
              v194 = &v2421->i8[v35];
              v195 = v2423;
              v196 = v2423 + 2 * v35;
              v197 = (v2395->i64 + v35);
              v198 = v2422 + 2 * v35;
              v2391 = v77;
              v2386 = v80;
              switch(v76)
              {
                case 1:
                  v2184 = v81;
                  v2185 = v83;
                  sub_27729AC20(&v2438, 0x10u, v188, v2420, 16);
                  goto LABEL_1278;
                case 2:
                  v2184 = v81;
                  v2185 = v83;
                  sub_27729ACE8(v2438.i8, 0x10u, v188, v2420, 16);
                  goto LABEL_1278;
                case 3:
                  v2184 = v81;
                  v2185 = v83;
                  sub_27729ADA4(&v2438, 0x10u, v188, v2420, 16);
                  goto LABEL_1278;
                case 4:
                  v2184 = v81;
                  v2185 = v83;
                  sub_27729AE6C(&v2438, 0x10u, v188, v2420, 16);
                  goto LABEL_1278;
                case 5:
                  v2199 = v85 + v186 + v187 * v2420;
                  v2200 = 2 * v2425;
                  v2184 = v81;
                  v2201 = 2;
                  goto LABEL_1266;
                case 6:
                  v2184 = v81;
                  v2185 = v83;
                  sub_27729B1B0(v2438.i8, 0x10u, v188, v2420);
                  goto LABEL_1278;
                case 7:
                  v2199 = v85 + v186 + v187 * v2420;
                  v2200 = 2 * v2425;
                  v2184 = v81;
                  v2201 = 3;
LABEL_1266:
                  v2185 = v83;
                  v2285 = 2;
                  goto LABEL_1277;
                case 8:
                  v2184 = v81;
                  v2185 = v83;
                  sub_27729B588(v2438.i8, 0x10u, v188, v2420, 16, v25);
                  goto LABEL_1278;
                case 9:
                  v2184 = v81;
                  v2185 = v83;
                  sub_27729B614(v2438.i8, 0x10u, v188, v2420, 16);
                  goto LABEL_1278;
                case 10:
                  v2184 = v81;
                  v2185 = v83;
                  sub_27729B7DC(&v2438, 16, v188, v2420, 16);
                  goto LABEL_1278;
                case 11:
                  v2184 = v81;
                  v2185 = v83;
                  sub_27729B98C(v2438.i8, 0x10u, v188, v2420, 16);
                  goto LABEL_1278;
                case 12:
                  v2184 = v81;
                  v2185 = v83;
                  sub_27729BB54(&v2438, 0x10u, v188, v2420, 16);
                  goto LABEL_1278;
                case 13:
                  v2199 = v85 + v186 + v187 * v2420;
                  v2200 = 2 * v2425;
                  v2184 = v81;
                  v2201 = 2;
                  goto LABEL_1276;
                case 14:
                  v2184 = v81;
                  v2185 = v83;
                  sub_27729BBEC(v2438.i8, 0x10u, v188, v2420);
                  goto LABEL_1278;
                case 15:
                  v2199 = v85 + v186 + v187 * v2420;
                  v2200 = 2 * v2425;
                  v2184 = v81;
                  v2201 = 3;
LABEL_1276:
                  v2185 = v83;
                  v2285 = 3;
LABEL_1277:
                  sub_27729C774(v2438.i8, v2199, v2200, 16, v2201, v2285);
LABEL_1278:
                  v83 = v2185;
                  v80 = v2386;
                  v81 = v2184;
                  v77 = v2391;
                  v28.i64[0] = 0x10001000100010;
                  v28.i64[1] = 0x10001000100010;
                  v27.i64[0] = 0x20002000200020;
                  v27.i64[1] = 0x20002000200020;
                  v10 = v2434;
                  v26 = v2436;
                  v24 = 4 * v2425;
                  v195 = v2423;
                  v201 = 2 * v2425;
                  v202 = 6 * v2425;
                  v203 = 8 * v2425;
                  break;
                default:
                  v199 = v102 + v75 - 16;
                  v200 = &v2438;
                  v201 = 2 * v2425;
                  v202 = 6 * v2425;
                  v203 = 8 * v2425;
                  do
                  {
                    v204 = *v188;
                    v188 = (v188 + v2417);
                    v205 = v26.i64[0];
                    vst2_s8(v200->i8, v204);
                    ++v200;
                    _CF = __CFADD__(v199++, 1);
                  }

                  while (!_CF);
                  break;
              }

              v2292 = 0;
              do
              {
                v2293 = *(&v2438 + v2292);
                v2294 = *(&v2438 + v2292 + 16);
                v2296 = *(&v2440 + v2292);
                v2295 = v2441[v2292 / 0x10];
                if (v195)
                {
                  v2297 = *v196;
                  a8 = *(v196 + 32);
                  a9 = *(v196 + 64);
                  a10 = *(v196 + 96);
                  v196 += 128;
                  v2293 = vaddq_s16(v2297, v2293);
                  v2294 = vaddq_s16(a8, v2294);
                  v2296 = vaddq_s16(a9, v2296);
                  v2295 = vaddq_s16(a10, v2295);
                }

                *v194 = vqmovun_s16(v2293);
                *(v194 + v201) = vqmovun_s16(v2294);
                *(v194 + v24) = vqmovun_s16(v2296);
                *(v194 + v202) = vqmovun_s16(v2295);
                v194 = (v194 + v203);
                v2292 += 64;
              }

              while (v2292 != 256);
              if (v80 == 64)
              {
                __asm { PRFM            #0, [X24] }

                v2299 = &v2447;
                v2311 = 9;
                v12 = a1;
                do
                {
                  v2312 = _X24;
                  _X24 = (_X24 + v201);
                  __asm { PRFM            #0, [X24] }

                  *v2295.i8 = *v2312;
                  v2314 = vextq_s8(v2295, v26, 2uLL);
                  v2314.i16[3] = v2312[1].i16[0];
                  v2315 = vrhadd_u8(*v2312, *v2314.i8);
                  v2314.i64[0] = v26.i64[0];
                  vst2_s8(v2299->i8, *(&v2314 - 8));
                  ++v2299;
                  --v2311;
                }

                while (v2311 > 2);
                *v2295.i8 = *_X24;
                v2316 = vextq_s8(v2295, v26, 2uLL);
                v2316.i16[3] = _X24[1].i16[0];
                v2295.i64[0] = vrhaddq_u8(v2295, v2316).u64[0];
              }

              else
              {
                v12 = a1;
                if (v80 != 4)
                {
                  if (!v80)
                  {
                    __asm { PRFM            #0, [X24] }

                    v2299 = &v2447;
                    for (m = 9; m > 2; --m)
                    {
                      v2301 = _X24;
                      _X24 = (_X24 + v201);
                      __asm { PRFM            #0, [X24] }

                      v2470.val[0] = *v2301;
                      v2470.val[1] = v26.i64[0];
                      vst2_s8(v2299->i8, v2470);
                      ++v2299;
                    }

                    *v2295.i8 = *_X24;
                    goto LABEL_1299;
                  }

                  v2318 = 0;
                  v2319 = v185 * v77 - (8 * v77 + 8 * v185) + 64;
                  v2320 = v26;
                  v2320.i32[0] = v2319 | (v2319 << 16);
                  v2321 = vqtbl1q_s8(v2320, xmmword_2773B3DF0);
                  v2322 = v26;
                  v2322.i32[0] = (8 * v77 - v185 * v77) | ((8 * v77 - v185 * v77) << 16);
                  v2323 = vqtbl1q_s8(v2322, xmmword_2773B3DF0);
                  v2324 = v26;
                  v2324.i32[0] = (8 * v185 - v185 * v77) | ((8 * v185 - v185 * v77) << 16);
                  v2325 = v26;
                  v2325.i32[0] = 65537 * v185 * v77;
                  v2326 = vqtbl1q_s8(v2324, xmmword_2773B3DF0);
                  v2327 = vqtbl1q_s8(v2325, xmmword_2773B3DF0);
                  v2456 = v2321;
                  v2457 = v2323;
                  v2458 = v2326;
                  v2459 = v2327;
                  _X9 = _X24 + v201;
                  __asm { PRFM            #0, [X9] }

                  a8.n128_u64[0] = *_X24;
                  v2330 = vqtbl1q_s8(a8, xmmword_2773B3E00);
                  v2330.i16[3] = _X24[1].i16[0];
                  a9 = vzip1q_s8(v2330, v26);
                  a8 = vzip1q_s8(a8, v26);
                  v2331 = v189;
                  if (v189 <= -16)
                  {
                    v2331 = -16;
                  }

                  if (v2331 >= v2418)
                  {
                    v2331 = v2418;
                  }

                  v2332 = v81 + v83 + v2428 + v2331;
                  do
                  {
                    _X10 = v2332 + v2362;
                    v2332 += v201;
                    __asm { PRFM            #0, [X10] }

                    v2335 = vmlaq_s16(vmulq_s16(v2323, a9), v2321, a8);
                    a9.n128_u64[0] = *v2332;
                    a8 = vzip1q_s8(a9, v26);
                    v2336 = vqtbl1q_s8(a9, xmmword_2773B3E00);
                    v2336.i16[3] = *(v2332 + 8);
                    a9 = vzip1q_s8(v2336, v26);
                    a10 = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v2335, v2326, a8), v2327, a9), v27), 6uLL);
                    *(&v2447 + v2318) = a10;
                    v2318 += 16;
                  }

                  while (v2318 != 128);
LABEL_1306:
                  v2337 = 1;
                  v2338 = &v2447;
                  do
                  {
                    v2339 = v2337;
                    v25 = *v2338;
                    v2340 = v2338[1];
                    v2341 = v2338[2];
                    v2342 = v2338[3];
                    if (v2422)
                    {
                      v2343 = *v198;
                      a8 = *(v198 + 32);
                      a9 = *(v198 + 64);
                      a10 = *(v198 + 96);
                      v198 += 128;
                      v25 = vaddq_s16(v2343, v25);
                      v2340 = vaddq_s16(a8, v2340);
                      v2341 = vaddq_s16(a9, v2341);
                      v2342 = vaddq_s16(a10, v2342);
                    }

                    v2337 = 0;
                    *v25.i8 = vqmovun_s16(v25);
                    *v197 = v25.i64[0];
                    *(v197 + v201) = vqmovun_s16(v2340);
                    *(v197 + v24) = vqmovun_s16(v2341);
                    *(v197 + v202) = vqmovun_s16(v2342);
                    v197 = (v197 + v203);
                    v2338 += 4;
                  }

                  while ((v2339 & 1) != 0);
                  goto LABEL_381;
                }

                _X8 = _X24 + v201;
                __asm { PRFM            #0, [X8] }

                *v2295.i8 = *_X24;
                v2305 = v189;
                if (v189 <= -16)
                {
                  v2305 = -16;
                }

                if (v2305 >= v2418)
                {
                  v2305 = v2418;
                }

                v2306 = (v81 + v83 + v2428 + v2305);
                v2299 = &v2447;
                for (n = 9; n > 2; --n)
                {
                  _X11 = v2306 + v2362;
                  v2306 = (v2306 + v201);
                  __asm { PRFM            #0, [X11] }

                  *v2293.i8 = *v2306;
                  v2476.val[0] = vrhadd_u8(*v2295.i8, *v2306);
                  v2476.val[1] = v26.i64[0];
                  vst2_s8(v2299->i8, v2476);
                  ++v2299;
                  v2295 = v2293;
                }

                *v2295.i8 = *(v2306 + v201);
                v2295.i64[0] = vrhaddq_u8(v2293, v2295).u64[0];
              }

LABEL_1299:
              v2317 = v26.i64[0];
              vst2_s8(v2299->i8, v2295);
              goto LABEL_1306;
          }
        }

        else if (v54 == 16)
        {
          v103 = v44 >> 2;
          v104 = v2399 + (v44 >> 2);
          if (v2426 == 16)
          {
            if (v104 <= -18)
            {
              v105 = -18;
            }

            else
            {
              v105 = v2399 + (v44 >> 2);
            }

            if (v46 <= -18)
            {
              v106 = -18;
            }

            else
            {
              v106 = v2416 + (v45 >> 2);
            }

            if (v105 >= v2397)
            {
              v105 = v2397;
            }

            if (v106 >= v2396)
            {
              v106 = v2396;
            }

            v107 = (v85 + v105 + v106 * v2420);
            v108 = (v103 & 0xFFFFFFFE) + v2399;
            v109 = v2353 + (v78 >> 3);
            if (v108 <= -16)
            {
              v108 = -16;
            }

            if (v109 <= -8)
            {
              v109 = -8;
            }

            if (v108 >= v2418)
            {
              v108 = v2418;
            }

            if (v109 >= v2398)
            {
              v109 = v2398 - 1;
            }

            v110 = v108;
            v111 = v109 * v2420;
            _X20 = (v84 + v108 + v111);
            switch(v76)
            {
              case 1:
                v2393 = v77;
                v2415 = v79;
                v1557 = v81;
                v1752 = v83;
                sub_27729AC20(&v2438, 0x20u, v107, v2420, 16);
                sub_27729AC20(&v2439, 0x20u, &v107->i64[1], v2420, 16);
                v83 = v1752;
                goto LABEL_966;
              case 2:
                v2393 = v77;
                v2415 = v79;
                v1557 = v81;
                v1558 = v80;
                v1559 = v83;
                sub_27729ACE8(v2438.i8, 0x20u, v107, v2420, 16);
                sub_27729ACE8(v2439.i8, 0x20u, &v107->i64[1], v2420, 16);
                goto LABEL_958;
              case 3:
                v2393 = v77;
                v2415 = v79;
                v1557 = v81;
                v1558 = v80;
                v1559 = v83;
                sub_27729ADA4(&v2438, 0x20u, v107, v2420, 16);
                sub_27729ADA4(&v2439, 0x20u, &v107->i64[1], v2420, 16);
                goto LABEL_958;
              case 4:
                v2393 = v77;
                v2415 = v79;
                v1557 = v81;
                v1558 = v80;
                v1559 = v83;
                sub_27729AE6C(&v2438, 0x20u, v107, v2420, 16);
                sub_27729AE6C(&v2439, 0x20u, &v107->i64[1], v2420, 16);
LABEL_958:
                v83 = v1559;
                v80 = v1558;
LABEL_966:
                v81 = v1557;
                goto LABEL_1132;
              case 5:
                v1604 = v107;
                v1605 = v79;
                v1606 = 2 * v2425;
                v1607 = v81;
                v1608 = 2;
                goto LABEL_1101;
              case 6:
                v2393 = v77;
                v2415 = v79;
                v1551 = v81;
                v1552 = v79 | (16 * v77);
                v1553 = v83;
                sub_27729B1B0(v2438.i8, 0x20u, v107, v2420);
                sub_27729B1B0(v2439.i8, 0x20u, &v107->i64[1], v2420);
                goto LABEL_1131;
              case 7:
                v1604 = v107;
                v1605 = v79;
                v1606 = 2 * v2425;
                v1607 = v81;
                v1608 = 3;
LABEL_1101:
                v1980 = v83;
                v1981 = 2;
                goto LABEL_1122;
              case 8:
                v2393 = v77;
                v2415 = v79;
                v1551 = v81;
                v1552 = v79 | (16 * v77);
                v1553 = v83;
                sub_27729B588(v2438.i8, 0x20u, v107, v2420, 16, v25);
                sub_27729B588(v2439.i8, 0x20u, &v107->i64[1], v2420, 16, v2016);
                goto LABEL_1131;
              case 9:
                v2393 = v77;
                v2415 = v79;
                v1551 = v81;
                v1552 = v79 | (16 * v77);
                v1553 = v83;
                sub_27729B614(v2438.i8, 0x20u, v107, v2420, 16);
                sub_27729B614(v2439.i8, 0x20u, &v107->i64[1], v2420, 16);
                goto LABEL_1131;
              case 10:
                v2393 = v77;
                v2415 = v79;
                v1551 = v81;
                v1552 = v79 | (16 * v77);
                v1553 = v83;
                sub_27729B7DC(&v2438, 32, v107, v2420, 16);
                sub_27729B7DC(&v2439, 32, &v107->i64[1], v2420, 16);
                goto LABEL_1131;
              case 11:
                v2393 = v77;
                v2415 = v79;
                v1551 = v81;
                v1552 = v79 | (16 * v77);
                v1553 = v83;
                sub_27729B98C(v2438.i8, 0x20u, v107, v2420, 16);
                sub_27729B98C(v2439.i8, 0x20u, &v107->i64[1], v2420, 16);
                goto LABEL_1131;
              case 12:
                v2393 = v77;
                v2415 = v79;
                v1551 = v81;
                v1552 = v79 | (16 * v77);
                v1553 = v83;
                sub_27729BB54(&v2438, 0x20u, v107, v2420, 16);
                sub_27729BB54(&v2439, 0x20u, &v107->i64[1], v2420, 16);
                goto LABEL_1131;
              case 13:
                v1604 = v107;
                v1605 = v79;
                v1606 = 2 * v2425;
                v1607 = v81;
                v1608 = 2;
                goto LABEL_1121;
              case 14:
                v2393 = v77;
                v2415 = v79;
                v1551 = v81;
                v1552 = v79 | (16 * v77);
                v1553 = v83;
                sub_27729BBEC(v2438.i8, 0x20u, v107, v2420);
                sub_27729BBEC(v2439.i8, 0x20u, &v107->i64[1], v2420);
LABEL_1131:
                v83 = v1553;
                v80 = v1552;
                v81 = v1551;
LABEL_1132:
                v77 = v2393;
                v79 = v2415;
                goto LABEL_1133;
              case 15:
                v1604 = v107;
                v1605 = v79;
                v1606 = 2 * v2425;
                v1607 = v81;
                v1608 = 3;
LABEL_1121:
                v1980 = v83;
                v1981 = 3;
LABEL_1122:
                sub_27729AF04(v2438.i8, v1604, v1606, 16, v1608, v1981);
                v83 = v1980;
                v81 = v1607;
                v79 = v1605;
LABEL_1133:
                v28.i64[0] = 0x10001000100010;
                v28.i64[1] = 0x10001000100010;
                v27.i64[0] = 0x20002000200020;
                v27.i64[1] = 0x20002000200020;
                v10 = v2434;
                v26 = v2436;
                v24 = 4 * v2425;
                v115 = v2395;
                v116 = 2 * v2425;
                break;
              default:
                v113 = v102 + v75 - 16;
                v114 = &v2438;
                v115 = v2395;
                v116 = 2 * v2425;
                do
                {
                  v117 = *v107;
                  v107 = (v107 + v2417);
                  *v114 = vzip1q_s8(v117, v26);
                  v114[1] = vzip2q_s8(v117, v26);
                  v114 += 2;
                  _CF = __CFADD__(v113++, 1);
                }

                while (!_CF);
                break;
            }

            v2017 = 0;
            v2018 = v2421;
            v2019 = v2423;
            do
            {
              v2021 = *(&v2438 + v2017);
              v2020 = *(&v2438 + v2017 + 16);
              v2023 = *(&v2440 + v2017);
              v2022 = v2441[v2017 / 0x10];
              if (v2423)
              {
                v2024 = *v2019;
                a8 = *(v2019 + 16);
                a9 = *(v2019 + 32);
                a10 = *(v2019 + 48);
                v2019 += 64;
                v2021 = vaddq_s16(v2024, v2021);
                v2020 = vaddq_s16(a8, v2020);
                v2023 = vaddq_s16(a9, v2023);
                v2022 = vaddq_s16(a10, v2022);
              }

              *v2018 = vqmovun_high_s16(vqmovun_s16(v2021), v2020);
              *(v2018 + v116) = vqmovun_high_s16(vqmovun_s16(v2023), v2022);
              v2018 = (v2018 + v24);
              v2017 += 64;
            }

            while (v2017 != 512);
            if (v80 == 64)
            {
              __asm { PRFM            #0, [X20] }

              v2048 = (v81 + v111 + v83 + v110 + 16);
              v2049 = 9;
              v2027 = v2446;
              do
              {
                _X11 = &v2048->i16[v116 / 2];
                __asm { PRFUM           #0, [X11,#-0x10] }

                v2052 = v2048[-1];
                v2053 = vextq_s8(v2052, v2052, 2uLL);
                v2053.i16[7] = v2048->i16[0];
                v2054 = vrhaddq_u8(v2052, v2053);
                v2053.i64[0] = v26.i64[0];
                v2027[3] = vzip2q_s8(v2054, v26);
                v2027 += 2;
                vst2_s8(v2027->i8, *(&v2053 - 8));
                --v2049;
                v2048 = (v2048 + v116);
              }

              while (v2049 > 2);
              v2055 = v2048[-1];
              v2056 = vextq_s8(v2055, v2055, 2uLL);
              v2056.i16[7] = v2048->i16[0];
              v2046 = vrhaddq_u8(v2055, v2056);
            }

            else
            {
              if (v80 != 4)
              {
                if (v80)
                {
                  v2060 = 0;
                  v2061 = v79 * v77 - (8 * v77 + 8 * v79) + 64;
                  v2062 = v26;
                  v2062.i32[0] = v2061 | (v2061 << 16);
                  v2063 = vqtbl1q_s8(v2062, xmmword_2773B3DF0);
                  v2064 = v26;
                  v2064.i32[0] = (8 * v77 - v79 * v77) | ((8 * v77 - v79 * v77) << 16);
                  v2065 = vqtbl1q_s8(v2064, xmmword_2773B3DF0);
                  v2066 = v26;
                  v2066.i32[0] = (8 * v79 - v79 * v77) | ((8 * v79 - v79 * v77) << 16);
                  v2067 = vqtbl1q_s8(v2066, xmmword_2773B3DF0);
                  v2068 = v26;
                  v2068.i32[0] = 65537 * v79 * v77;
                  v2069 = vqtbl1q_s8(v2068, xmmword_2773B3DF0);
                  v2456 = v2063;
                  v2457 = v2065;
                  v2458 = v2067;
                  v2459 = v2069;
                  _X9 = &_X20->i8[v116];
                  __asm { PRFM            #0, [X9] }

                  a8.n128_u64[0] = _X20->i64[0];
                  v2072 = vqtbl1q_s8(a8, xmmword_2773B3E00);
                  v2072.i16[3] = _X20->i16[4];
                  v2073 = vzip1q_s8(v2072, v26);
                  v2074 = vzip1q_s8(a8, v26);
                  v2075 = v81 + v111 + v83 + v110;
                  do
                  {
                    _X11 = v2075 + v2362;
                    v2075 += v116;
                    __asm { PRFM            #0, [X11] }

                    v2078 = vmlaq_s16(vmulq_s16(v2065, v2073), v2063, v2074);
                    v2073.i64[0] = *v2075;
                    v2074 = vzip1q_s8(v2073, v26);
                    v2079 = vqtbl1q_s8(v2073, xmmword_2773B3E00);
                    v2079.i16[3] = *(v2075 + 8);
                    v2073 = vzip1q_s8(v2079, v26);
                    *(&v2447 + v2060) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v2078, v2067, v2074), v2069, v2073), v27), 6uLL);
                    v2060 += 32;
                  }

                  while (v2060 != 256);
                  v2080 = 0;
                  _X9 = &_X20->i8[v116 + 8];
                  __asm { PRFM            #0, [X9] }

                  v2074.i64[0] = _X20->i64[1];
                  v2083 = vqtbl1q_s8(v2074, xmmword_2773B3E00);
                  v2083.i16[3] = _X20[1].i16[0];
                  a9 = vzip1q_s8(v2083, v26);
                  a8 = vzip1q_s8(v2074, v26);
                  v2084 = v81 + v111 + v83 + v110;
                  v2059 = v2422;
                  v11 = a2;
                  do
                  {
                    _X10 = v2084 + v2364;
                    v2084 += v116;
                    __asm { PRFM            #0, [X10] }

                    v2087 = vmlaq_s16(vmulq_s16(v2065, a9), v2063, a8);
                    a9.n128_u64[0] = *(v2084 + 8);
                    a8 = vzip1q_s8(a9, v26);
                    v2088 = vqtbl1q_s8(a9, xmmword_2773B3E00);
                    v2088.i16[3] = *(v2084 + 16);
                    a9 = vzip1q_s8(v2088, v26);
                    a10 = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v2087, v2067, a8), v2069, a9), v27), 6uLL);
                    *(&v2448 + v2080) = a10;
                    v2080 += 32;
                  }

                  while (v2080 != 256);
                }

                else
                {
                  __asm { PRFM            #0, [X20] }

                  v2026 = 9;
                  v2027 = v2446;
                  do
                  {
                    v2028 = _X20;
                    _X20 = (_X20 + v116);
                    __asm { PRFM            #0, [X20] }

                    v2030 = *v2028;
                    v2027[3] = vzip2q_s8(*v2028, v26);
                    v2027 += 2;
                    v2031 = v26.i64[0];
                    vst2_s8(v2027->i8, v2030);
                    --v2026;
                  }

                  while (v2026 > 2);
                  v2032 = *_X20;
                  v2033 = vzip2q_s8(*_X20, v26);
                  i8 = v2027[2].i8;
                  v2035 = v26.i64[0];
                  vst2_s8(i8, v2032);
LABEL_1151:
                  v2059 = v2422;
                  v11 = a2;
                  v2027[3] = v2033;
                }

                v2089 = 0;
                v2090 = v115;
                v2091 = v2059;
                do
                {
                  v2093 = *(&v2447 + v2089);
                  v2092 = *(&v2447 + v2089 + 16);
                  v2094 = *(&v2449 + v2089);
                  v25 = v2450[v2089 / 0x10];
                  if (v2059)
                  {
                    v2095 = *v2091;
                    a8 = *(v2091 + 16);
                    a9 = *(v2091 + 32);
                    a10 = *(v2091 + 48);
                    v2091 += 64;
                    v2093 = vaddq_s16(v2095, v2093);
                    v2092 = vaddq_s16(a8, v2092);
                    v2094 = vaddq_s16(a9, v2094);
                    v25 = vaddq_s16(a10, v25);
                  }

                  *v2090 = vqmovun_high_s16(vqmovun_s16(v2093), v2092);
                  *(v2090 + v116) = vqmovun_high_s16(vqmovun_s16(v2094), v25);
                  v2090 = (v2090 + v24);
                  v2089 += 64;
                }

                while (v2089 != 256);
                goto LABEL_382;
              }

              _X8 = &_X20->i8[v116];
              __asm { PRFM            #0, [X8] }

              v2038 = *_X20;
              v2039 = (v81 + v111 + v83 + v110);
              v2040 = 9;
              v2027 = v2446;
              do
              {
                _X11 = &v2039->i8[v2362];
                v2039 = (v2039 + v116);
                __asm { PRFM            #0, [X11] }

                v2043 = *v2039;
                v2044 = vrhaddq_u8(v2038, *v2039);
                v2045 = v26.i64[0];
                v2027[3] = vzip2q_s8(v2044, v26);
                v2027 += 2;
                vst2_s8(v2027->i8, v2044);
                --v2040;
                v2038 = v2043;
              }

              while (v2040 > 2);
              v2046 = vrhaddq_u8(v2043, *(v2039 + v116));
            }

            v2057 = v2027[2].i8;
            v2058 = v26.i64[0];
            vst2_s8(v2057, v2046);
            v2033 = vzip2q_s8(v2046, v26);
            goto LABEL_1151;
          }

          v286 = v101 + v2416 + v36;
          if (v104 <= -18)
          {
            v104 = -18;
          }

          if (v286 <= -18)
          {
            v286 = -18;
          }

          if (v104 >= v2397)
          {
            v104 = v2397;
          }

          if (v286 >= v2396)
          {
            v286 = v2396;
          }

          v287 = (v85 + v104 + v286 * v2420);
          v288 = (v103 & 0xFFFFFFFE) + v2399;
          v289 = (v78 >> 3) + ((v2416 + v36) >> 1);
          if (v288 <= -16)
          {
            v288 = -16;
          }

          if (v289 <= -8)
          {
            v289 = -8;
          }

          if (v288 >= v2418)
          {
            v288 = v2418;
          }

          if (v289 >= v2398)
          {
            v289 = v2398 - 1;
          }

          v2405 = v288;
          v2384 = v289 * v2420;
          _X25 = (v84 + v288 + v2384);
          v291 = v36;
          v292 = (v2421 + (v2420 * v36));
          v293 = v2423;
          v294 = v2423 + 32 * v291;
          v295 = (v2395 + (v291 >> 1) * v2420);
          v296 = v2422 + 32 * (v291 >> 1);
          v2413 = v79;
          switch(v76)
          {
            case 1:
              v2429 = v81;
              v2382 = v83;
              sub_27729AC20(&v2438, 0x20u, v287, v2420, 8);
              v11 = a2;
              sub_27729AC20(&v2439, 0x20u, &v287->i64[1], v2420, 8);
              goto LABEL_1162;
            case 2:
              v2429 = v81;
              v2382 = v83;
              sub_27729ACE8(v2438.i8, 0x20u, v287, v2420, 8);
              v11 = a2;
              sub_27729ACE8(v2439.i8, 0x20u, &v287->i64[1], v2420, 8);
              goto LABEL_1162;
            case 3:
              v2429 = v81;
              v2382 = v83;
              sub_27729ADA4(&v2438, 0x20u, v287, v2420, 8);
              v11 = a2;
              sub_27729ADA4(&v2439, 0x20u, &v287->i64[1], v2420, 8);
              goto LABEL_1162;
            case 4:
              v2429 = v81;
              v2382 = v83;
              sub_27729AE6C(&v2438, 0x20u, v287, v2420, 8);
              v11 = a2;
              sub_27729AE6C(&v2439, 0x20u, &v287->i64[1], v2420, 8);
              goto LABEL_1162;
            case 5:
              v1626 = v287;
              v1627 = 2 * v2425;
              v1628 = v81;
              v1629 = 2;
              goto LABEL_1103;
            case 6:
              v2429 = v81;
              v2382 = v83;
              sub_27729BFC4(v2438.i8, 0x20u, v287, v2420);
              v11 = a2;
              sub_27729BFC4(v2439.i8, 0x20u, &v287->i64[1], v2420);
              goto LABEL_1162;
            case 7:
              v1626 = v287;
              v1627 = 2 * v2425;
              v1628 = v81;
              v1629 = 3;
LABEL_1103:
              v2388 = v80;
              v1982 = v83;
              v1983 = 2;
              goto LABEL_1125;
            case 8:
              v2429 = v81;
              v2382 = v83;
              sub_27729B588(v2438.i8, 0x20u, v287, v2420, 8, v25);
              v11 = a2;
              sub_27729B588(v2439.i8, 0x20u, &v287->i64[1], v2420, 8, v2096);
              goto LABEL_1162;
            case 9:
              v2429 = v81;
              v2382 = v83;
              sub_27729B614(v2438.i8, 0x20u, v287, v2420, 8);
              v11 = a2;
              sub_27729B614(v2439.i8, 0x20u, &v287->i64[1], v2420, 8);
              goto LABEL_1162;
            case 10:
              v2429 = v81;
              v2382 = v83;
              sub_27729B7DC(&v2438, 32, v287, v2420, 8);
              v11 = a2;
              sub_27729B7DC(&v2439, 32, &v287->i64[1], v2420, 8);
              goto LABEL_1162;
            case 11:
              v2429 = v81;
              v2382 = v83;
              sub_27729B98C(v2438.i8, 0x20u, v287, v2420, 8);
              v11 = a2;
              sub_27729B98C(v2439.i8, 0x20u, &v287->i64[1], v2420, 8);
              goto LABEL_1162;
            case 12:
              v2429 = v81;
              v2382 = v83;
              sub_27729BB54(&v2438, 0x20u, v287, v2420, 8);
              v11 = a2;
              sub_27729BB54(&v2439, 0x20u, &v287->i64[1], v2420, 8);
              goto LABEL_1162;
            case 13:
              v1626 = v287;
              v1627 = 2 * v2425;
              v1628 = v81;
              v1629 = 2;
              goto LABEL_1124;
            case 14:
              v2429 = v81;
              v2382 = v83;
              sub_27729C39C(v2438.i8, 0x20u, v287, v2420);
              v11 = a2;
              sub_27729C39C(v2439.i8, 0x20u, &v287->i64[1], v2420);
LABEL_1162:
              v83 = v2382;
              v81 = v2429;
              goto LABEL_1163;
            case 15:
              v1626 = v287;
              v1627 = 2 * v2425;
              v1628 = v81;
              v1629 = 3;
LABEL_1124:
              v2388 = v80;
              v1982 = v83;
              v1983 = 3;
LABEL_1125:
              sub_27729AF04(v2438.i8, v1626, v1627, 8, v1629, v1983);
              v83 = v1982;
              v80 = v2388;
              v81 = v1628;
LABEL_1163:
              v79 = v2413;
              v28.i64[0] = 0x10001000100010;
              v28.i64[1] = 0x10001000100010;
              v27.i64[0] = 0x20002000200020;
              v27.i64[1] = 0x20002000200020;
              v10 = v2434;
              v26 = v2436;
              v24 = 4 * v2425;
              v293 = v2423;
              v299 = 2 * v2425;
              break;
            default:
              v297 = v102 + v75 - 8;
              v298 = &v2438;
              v299 = 2 * v2425;
              do
              {
                v300 = *v287;
                v287 = (v287 + v2417);
                *v298 = vzip1q_s8(v300, v26);
                v298[1] = vzip2q_s8(v300, v26);
                v298 += 2;
                _CF = __CFADD__(v297++, 1);
              }

              while (!_CF);
              break;
          }

          v2097 = 0;
          do
          {
            v2099 = *(&v2438 + v2097);
            v2098 = *(&v2438 + v2097 + 16);
            v2101 = *(&v2440 + v2097);
            v2100 = v2441[v2097 / 0x10];
            if (v293)
            {
              v2102 = *v294;
              a8 = *(v294 + 16);
              a9 = *(v294 + 32);
              a10 = *(v294 + 48);
              v294 += 64;
              v2099 = vaddq_s16(v2102, v2099);
              v2098 = vaddq_s16(a8, v2098);
              v2101 = vaddq_s16(a9, v2101);
              v2100 = vaddq_s16(a10, v2100);
            }

            *v292 = vqmovun_high_s16(vqmovun_s16(v2099), v2098);
            *(v292 + v299) = vqmovun_high_s16(vqmovun_s16(v2101), v2100);
            v292 = (v292 + v24);
            v2097 += 64;
          }

          while (v2097 != 256);
          if (v80 == 64)
          {
            __asm { PRFM            #0, [X25] }

            v2126 = (v81 + v2384 + v83 + v2405 + 16);
            v2127 = 5;
            v2105 = v2446;
            do
            {
              _X11 = &v2126->i16[v299 / 2];
              __asm { PRFUM           #0, [X11,#-0x10] }

              v2130 = v2126[-1];
              v2131 = vextq_s8(v2130, v2130, 2uLL);
              v2131.i16[7] = v2126->i16[0];
              v2132 = vrhaddq_u8(v2130, v2131);
              v2131.i64[0] = v26.i64[0];
              v2105[3] = vzip2q_s8(v2132, v26);
              v2105 += 2;
              vst2_s8(v2105->i8, *(&v2131 - 8));
              --v2127;
              v2126 = (v2126 + v299);
            }

            while (v2127 > 2);
            v2133 = v2126[-1];
            v2134 = vextq_s8(v2133, v2133, 2uLL);
            v2134.i16[7] = v2126->i16[0];
            v2124 = vrhaddq_u8(v2133, v2134);
          }

          else
          {
            if (v80 != 4)
            {
              if (v80)
              {
                v2138 = 0;
                v2139 = v79 * v77 - (8 * v77 + 8 * v79) + 64;
                v2140 = v26;
                v2140.i32[0] = v2139 | (v2139 << 16);
                v2141 = vqtbl1q_s8(v2140, xmmword_2773B3DF0);
                v2142 = v26;
                v2142.i32[0] = (8 * v77 - v79 * v77) | ((8 * v77 - v79 * v77) << 16);
                v2143 = vqtbl1q_s8(v2142, xmmword_2773B3DF0);
                v2144 = v26;
                v2144.i32[0] = (8 * v79 - v79 * v77) | ((8 * v79 - v79 * v77) << 16);
                v2145 = vqtbl1q_s8(v2144, xmmword_2773B3DF0);
                v2146 = v26;
                v2146.i32[0] = 65537 * v79 * v77;
                v2147 = vqtbl1q_s8(v2146, xmmword_2773B3DF0);
                v2456 = v2141;
                v2457 = v2143;
                v2458 = v2145;
                v2459 = v2147;
                _X9 = &_X25->i8[v299];
                __asm { PRFM            #0, [X9] }

                a8.n128_u64[0] = _X25->i64[0];
                v2150 = vqtbl1q_s8(a8, xmmword_2773B3E00);
                v2150.i16[3] = _X25->i16[4];
                v2151 = vzip1q_s8(v2150, v26);
                v2152 = vzip1q_s8(a8, v26);
                v2153 = v81 + v2384 + v83 + v2405;
                do
                {
                  _X11 = v2153 + v2362;
                  v2153 += v299;
                  __asm { PRFM            #0, [X11] }

                  v2156 = vmlaq_s16(vmulq_s16(v2143, v2151), v2141, v2152);
                  v2151.i64[0] = *v2153;
                  v2152 = vzip1q_s8(v2151, v26);
                  v2157 = vqtbl1q_s8(v2151, xmmword_2773B3E00);
                  v2157.i16[3] = *(v2153 + 8);
                  v2151 = vzip1q_s8(v2157, v26);
                  *(&v2447 + v2138) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v2156, v2145, v2152), v2147, v2151), v27), 6uLL);
                  v2138 += 32;
                }

                while (v2138 != 128);
                v2158 = 0;
                _X9 = &_X25->i8[v299 + 8];
                __asm { PRFM            #0, [X9] }

                v2152.i64[0] = _X25->i64[1];
                v2161 = vqtbl1q_s8(v2152, xmmword_2773B3E00);
                v2161.i16[3] = _X25[1].i16[0];
                a9 = vzip1q_s8(v2161, v26);
                a8 = vzip1q_s8(v2152, v26);
                v2162 = v81 + v2384 + v83 + v2405;
                v2137 = v2422;
                do
                {
                  _X10 = v2162 + v2364;
                  v2162 += v299;
                  __asm { PRFM            #0, [X10] }

                  v2165 = vmlaq_s16(vmulq_s16(v2143, a9), v2141, a8);
                  a9.n128_u64[0] = *(v2162 + 8);
                  a8 = vzip1q_s8(a9, v26);
                  v2166 = vqtbl1q_s8(a9, xmmword_2773B3E00);
                  v2166.i16[3] = *(v2162 + 16);
                  a9 = vzip1q_s8(v2166, v26);
                  a10 = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v2165, v2145, a8), v2147, a9), v27), 6uLL);
                  *(&v2448 + v2158) = a10;
                  v2158 += 32;
                }

                while (v2158 != 128);
              }

              else
              {
                __asm { PRFM            #0, [X25] }

                v2104 = 5;
                v2105 = v2446;
                do
                {
                  v2106 = _X25;
                  _X25 = (_X25 + v299);
                  __asm { PRFM            #0, [X25] }

                  v2108 = *v2106;
                  v2105[3] = vzip2q_s8(*v2106, v26);
                  v2105 += 2;
                  v2109 = v26.i64[0];
                  vst2_s8(v2105->i8, v2108);
                  --v2104;
                }

                while (v2104 > 2);
                v2110 = *_X25;
                v2111 = vzip2q_s8(*_X25, v26);
                v2112 = v2105[2].i8;
                v2113 = v26.i64[0];
                vst2_s8(v2112, v2110);
LABEL_1181:
                v2137 = v2422;
                v2105[3] = v2111;
              }

              v2167 = 1;
              v2168 = &v2447;
              do
              {
                v2169 = v2167;
                v2171 = *v2168;
                v2170 = v2168[1];
                v2172 = v2168[2];
                v25 = v2168[3];
                if (v2137)
                {
                  v2173 = *v296;
                  a8 = *(v296 + 16);
                  a9 = *(v296 + 32);
                  a10 = *(v296 + 48);
                  v296 += 64;
                  v2171 = vaddq_s16(v2173, v2171);
                  v2170 = vaddq_s16(a8, v2170);
                  v2172 = vaddq_s16(a9, v2172);
                  v25 = vaddq_s16(a10, v25);
                }

                v2167 = 0;
                *v295 = vqmovun_high_s16(vqmovun_s16(v2171), v2170);
                *(v295 + v299) = vqmovun_high_s16(vqmovun_s16(v2172), v25);
                v295 = (v295 + v24);
                v2168 += 4;
              }

              while ((v2169 & 1) != 0);
              v12 = a1;
              goto LABEL_382;
            }

            _X8 = &_X25->i8[v299];
            __asm { PRFM            #0, [X8] }

            v2116 = *_X25;
            v2117 = (v81 + v2384 + v83 + v2405);
            v2118 = 5;
            v2105 = v2446;
            do
            {
              _X11 = &v2117->i8[v2362];
              v2117 = (v2117 + v299);
              __asm { PRFM            #0, [X11] }

              v2121 = *v2117;
              v2122 = vrhaddq_u8(v2116, *v2117);
              v2123 = v26.i64[0];
              v2105[3] = vzip2q_s8(v2122, v26);
              v2105 += 2;
              vst2_s8(v2105->i8, v2122);
              --v2118;
              v2116 = v2121;
            }

            while (v2118 > 2);
            v2124 = vrhaddq_u8(v2121, *(v2117 + v299));
          }

          v2135 = v2105[2].i8;
          v2136 = v26.i64[0];
          vst2_s8(v2135, v2124);
          v2111 = vzip2q_s8(v2124, v26);
          goto LABEL_1181;
        }
      }

LABEL_1086:
      v19 = v2433 + 1;
      if (v2433 + 1 == v2432)
      {
        return;
      }
    }

    v37 = *(*v2424 + 8 * *(v29 + 8));
    if (!v37)
    {
      return;
    }

    v38 = *v29;
    v39 = v29[1];
    if ((v2409 + (v39 >> 2)) / 16 < 0)
    {
      v40 = -1;
    }

    else
    {
      v40 = (v2409 + (v39 >> 2)) / 16;
    }

    if (*(v37 + 12) <= v40)
    {
      sub_2773B1C78(*(v37 + 16));
      while (*(v37 + 12) <= v40)
      {
        sub_2773B1D28(*(v37 + 24), *(v37 + 16));
      }

      sub_2773B1C84(*(v37 + 16));
      v24 = 4 * v2425;
      v10 = v2434;
      v26 = v2436;
      v27.i64[0] = 0x20002000200020;
      v27.i64[1] = 0x20002000200020;
      v28.i64[0] = 0x10001000100010;
      v28.i64[1] = 0x10001000100010;
    }

    v50 = *(v11 + 20);
    v2400 = v33;
    if (*(v11 + 20))
    {
      v51 = *(v37 + 37);
      if (*(v11 + 21))
      {
        v52 = 2 * (v51 == 0);
      }

      else if (*(v37 + 37))
      {
        v52 = -2;
      }

      else
      {
        v52 = 0;
      }
    }

    else
    {
      v52 = 0;
      v51 = *(v37 + 37);
    }

    v57 = *(v37 + 64);
    v56 = *(v37 + 72);
    _ZF = v51 == 0;
    v59 = v2425;
    if (_ZF)
    {
      v59 = 0;
    }

    v2411 = v59;
    v60 = v29[2];
    v61 = v29[3];
    v62 = *(v2424[1] + 8 * *(v29 + 9));
    if ((v2409 + (v61 >> 2)) / 16 < 0)
    {
      v63 = -1;
    }

    else
    {
      v63 = (v2409 + (v61 >> 2)) / 16;
    }

    if (*(v62 + 12) <= v63)
    {
      v2389 = v36;
      v65 = v35;
      v66 = v57;
      v67 = v56;
      sub_2773B1C78(*(v62 + 16));
      while (*(v62 + 12) <= v63)
      {
        sub_2773B1D28(*(v62 + 24), *(v62 + 16));
      }

      sub_2773B1C84(*(v62 + 16));
      v64 = a2;
      v50 = *(a2 + 20);
      v24 = 4 * v2425;
      v10 = v2434;
      v26 = v2436;
      v27.i64[0] = 0x20002000200020;
      v27.i64[1] = 0x20002000200020;
      v28.i64[0] = 0x10001000100010;
      v28.i64[1] = 0x10001000100010;
      v56 = v67;
      v57 = v66;
      v35 = v65;
      v36 = v2389;
    }

    else
    {
      v64 = a2;
    }

    v68 = v39 & 3;
    v69 = (v52 + v39);
    v70 = v57 + v2411;
    v71 = v61 & 3;
    v2380 = v56;
    v2374 = v57;
    if (v50)
    {
      v72 = *(v62 + 37);
      v73 = v24;
      if (*(v64 + 21))
      {
        v74 = 2 * (v72 == 0);
      }

      else if (*(v62 + 37))
      {
        v74 = -2;
      }

      else
      {
        v74 = 0;
      }
    }

    else
    {
      v73 = v24;
      v74 = 0;
      v72 = *(v62 + 37);
    }

    v119 = (v52 + v39) & 7;
    v2385 = v38 & 7;
    v120 = v74 + v61;
    _ZF = v72 == 0;
    v121 = v2425;
    if (_ZF)
    {
      v121 = 0;
    }

    v2381 = *(v62 + 72);
    v2383 = v121;
    v122 = v2381 + v121;
    v2377 = *(v62 + 64);
    v123 = v2377 + v121;
    v124 = v2399 + v35;
    v125 = v2416 + v36;
    v126 = v2399 + v35 + (v38 >> 2);
    v127 = (v39 >> 2) + v2416 + v36;
    if (v126 <= -18)
    {
      v126 = -18;
    }

    if (v127 <= -18)
    {
      v127 = -18;
    }

    if (v126 >= v2397)
    {
      v126 = v2397;
    }

    if (v127 >= v2396)
    {
      v127 = v2396;
    }

    v128 = (v70 + v126 + v127 * v2420);
    v129 = v124 + (v60 >> 2);
    v130 = (v61 >> 2) + v125;
    if (v129 <= -18)
    {
      v129 = -18;
    }

    if (v130 <= -18)
    {
      v130 = -18;
    }

    if (v129 >= v2397)
    {
      v129 = v2397;
    }

    if (v130 >= v2396)
    {
      v130 = v2396;
    }

    v2375 = v130;
    v2376 = v129;
    v2390 = (v123 + v129 + v130 * v2420);
    v131 = ((v38 >> 2) & 0xFFFFFFFE) + v124;
    v132 = (v69 >> 3) + (v125 >> 1);
    v2378 = v131;
    if (v131 <= -16)
    {
      v131 = -16;
    }

    if (v132 <= -8)
    {
      v132 = -8;
    }

    if (v131 >= v2418)
    {
      v131 = v2418;
    }

    if (v132 >= v2398)
    {
      v132 = v2398 - 1;
    }

    v133 = v56 + v2411 + v131;
    v134 = ((v60 >> 2) & 0xFFFFFFFE) + v124;
    v135 = (v120 >> 3) + (v125 >> 1);
    v2379 = v134;
    if (v134 <= -16)
    {
      v134 = -16;
    }

    if (v135 <= -8)
    {
      v135 = -8;
    }

    if (v134 >= v2418)
    {
      v134 = v2418;
    }

    v136 = v122 + v134;
    v137 = (v2421 + v35 + (v2420 * v36));
    v138 = v2423 + 2 * v35 + 32 * v36;
    v139 = (v2395 + v35 + (v36 >> 1) * v2420);
    v2373 = v71;
    v140 = v71 & 0xFFFFFFF3 | (4 * (v60 & 3));
    v141 = v2422 + 2 * v35 + 32 * (v36 >> 1);
    v142 = v60 & 7;
    v143 = v120 & 7;
    v144 = v132 * v2420;
    _X25 = (v133 + v132 * v2420);
    if (v135 >= v2398)
    {
      v146 = v2398 - 1;
    }

    else
    {
      v146 = v135;
    }

    v147 = v146 * v2420;
    v148 = (v136 + v146 * v2420);
    if (v2400 == 4)
    {
      v160 = v119 * v2385 - (8 * v2385 + 8 * v119) + 64;
      v161 = v26;
      v161.i32[0] = v160 | (v160 << 16);
      v162 = xmmword_2773B3DF0;
      v163 = v26;
      v163.i32[0] = (8 * v2385 - v119 * v2385) | ((8 * v2385 - v119 * v2385) << 16);
      v164 = v26;
      v164.i32[0] = (8 * v119 - v119 * v2385) | ((8 * v119 - v119 * v2385) << 16);
      v165 = v26;
      v165.i32[0] = 65537 * v119 * v2385;
      v2456 = vqtbl1q_s8(v161, xmmword_2773B3DF0);
      v2457 = vqtbl1q_s8(v163, xmmword_2773B3DF0);
      v2458 = vqtbl1q_s8(v164, xmmword_2773B3DF0);
      v2459 = vqtbl1q_s8(v165, xmmword_2773B3DF0);
      v166 = v143 * v142;
      v167 = v143 * v142 - (8 * v142 + 8 * v143) + 64;
      v168 = v26;
      v168.i32[0] = v167 | (v167 << 16);
      v169 = v26;
      v169.i32[0] = (8 * v142 - v166) | ((8 * v142 - v166) << 16);
      v170 = v26;
      v170.i32[0] = (8 * v143 - v166) | ((8 * v143 - v166) << 16);
      v171 = vqtbl1q_s8(v169, xmmword_2773B3DF0);
      v172 = vqtbl1q_s8(v170, xmmword_2773B3DF0);
      v173 = v26;
      v173.i32[0] = 65537 * v143 * v142;
      v2460 = vqtbl1q_s8(v168, xmmword_2773B3DF0);
      v2461 = v171;
      v174 = vqtbl1q_s8(v173, xmmword_2773B3DF0);
      v2462 = v172;
      v2463 = v174;
      v175 = v73;
      v2367 = v143;
      v2372 = v60 & 7;
      if (v2426 != 8)
      {
        v241 = v148;
        switch(v68 & 0xFFFFFFF3 | (4 * (v38 & 3)))
        {
          case 1u:
            v548 = v140;
            v244 = sub_27729F23C(&v2438, v128, v2420, v174, v171, *v172.i64, v173, 3.52371676e-294, a8, a9, a10);
            goto LABEL_506;
          case 2u:
            v548 = v140;
            *v244.i64 = sub_27729F394(&v2438, v128, v2420, *v174.i64, v171, v172, *v173.i64, xmmword_2773B3DF0, a8, a9, a10);
            goto LABEL_506;
          case 3u:
            v548 = v140;
            v244 = sub_27729F4D8(&v2438, v128, v2420, v174, v171, *v172.i64, v173, 3.52371676e-294, a8, a9, a10);
            goto LABEL_506;
          case 4u:
            v548 = v140;
            v244 = sub_27729C91C(&v2438, 8u, v128, v2420);
            goto LABEL_506;
          case 5u:
            v548 = v140;
            *v244.i64 = sub_27729CAF0(&v2438, 8u, v128, v2420, v174, *v171.i64, *v172.i64, *v173.i64, 3.52371676e-294, a8, a9, a10);
            goto LABEL_506;
          case 6u:
            v548 = v140;
            *v244.i64 = sub_27729CDD0(&v2438, 8u, v128, v2420, v174, v171, v172, v173, xmmword_2773B3DF0, a8, a9, a10);
            goto LABEL_506;
          case 7u:
            v548 = v140;
            *v244.i64 = sub_27729D274(&v2438, 8u, v128, v2420, *v174.i64, *v171.i64, *v172.i64, *v173.i64, 3.52371676e-294, a8.n128_f64[0], a9, a10);
            goto LABEL_506;
          case 8u:
            v548 = v140;
            v244 = sub_27729D550(&v2438, 8u, v128, v2420);
            goto LABEL_506;
          case 9u:
            v548 = v140;
            *v244.i64 = sub_27729D714(&v2438, 8u, v128, v2420);
            goto LABEL_506;
          case 0xAu:
            v548 = v140;
            *v244.i64 = sub_27729F62C(&v2438, v128, v2420, v174, v171, v172, v173, xmmword_2773B3DF0, a8, a9, a10);
            goto LABEL_506;
          case 0xBu:
            v548 = v140;
            *v244.i64 = sub_27729DE6C(&v2438, 8u, v128, v2420);
            goto LABEL_506;
          case 0xCu:
            v548 = v140;
            v244 = sub_27729E5C4(&v2438, 8u, v128, v2420);
            goto LABEL_506;
          case 0xDu:
            v548 = v140;
            *v244.i64 = sub_27729E798(&v2438, 8u, v128, v2420, v174, *v171.i64, *v172.i64, *v173.i64, 3.52371676e-294, a8, a9, a10);
            goto LABEL_506;
          case 0xEu:
            v548 = v140;
            *v244.i64 = sub_27729EA7C(&v2438, 8u, v128, v2420, v174, v171, v172, v173, xmmword_2773B3DF0, a8, a9, a10);
            goto LABEL_506;
          case 0xFu:
            v548 = v140;
            *v244.i64 = sub_27729EF20(&v2438, 8u, v128, v2420, *v174.i64, *v171.i64, *v172.i64, *v173.i64, 3.52371676e-294, a8.n128_f64[0], a9, a10);
LABEL_506:
            v140 = v548;
            v10.val[1] = v2434.val[1];
            v26 = v2436;
            v175 = 4 * v2425;
            break;
          default:
            v174.i32[0] = *v128;
            v171.i32[0] = *(v128 + v2417);
            v172.i32[0] = *(v128 + v73);
            v173.i32[0] = *(v128 + v2369);
            v244.i64[0] = vzip1q_s8(v174, v26).u64[0];
            v242 = vzip1q_s8(v171, v26);
            v245.i64[0] = vzip1q_s8(v172, v26).u64[0];
            v243 = vzip1q_s8(v173, v26);
            v244.i64[1] = v242.i64[0];
            v245.i64[1] = v243.i64[0];
            v2438 = v244;
            v2439 = v245;
            break;
        }

        switch(v140)
        {
          case 1:
            v910 = sub_27729F23C(&v2442, v2390, v2420, v244, v242, *v245.i64, v243, *v162.i64, a8, a9, a10);
            goto LABEL_533;
          case 2:
            sub_27729F394(&v2442, v2390, v2420, *v244.i64, v242, v245, *v243.i64, v162, a8, a9, a10);
            goto LABEL_533;
          case 3:
            v910 = sub_27729F4D8(&v2442, v2390, v2420, v244, v242, *v245.i64, v243, *v162.i64, a8, a9, a10);
            goto LABEL_533;
          case 4:
            v910 = sub_27729C91C(&v2442, 8u, v2390, v2420);
            goto LABEL_533;
          case 5:
            sub_27729CAF0(&v2442, 8u, v2390, v2420, v244, *v242.i64, *v245.i64, *v243.i64, *v162.i64, a8, a9, a10);
            goto LABEL_533;
          case 6:
            sub_27729CDD0(&v2442, 8u, v2390, v2420, v244, v242, v245, v243, v162, a8, a9, a10);
            goto LABEL_533;
          case 7:
            sub_27729D274(&v2442, 8u, v2390, v2420, *v244.i64, *v242.i64, *v245.i64, *v243.i64, *v162.i64, a8.n128_f64[0], a9, a10);
            goto LABEL_533;
          case 8:
            v910 = sub_27729D550(&v2442, 8u, v2390, v2420);
            goto LABEL_533;
          case 9:
            sub_27729D714(&v2442, 8u, v2390, v2420);
            goto LABEL_533;
          case 10:
            sub_27729F62C(&v2442, v2390, v2420, v244, v242, v245, v243, v162, a8, a9, a10);
            goto LABEL_533;
          case 11:
            sub_27729DE6C(&v2442, 8u, v2390, v2420);
            goto LABEL_533;
          case 12:
            v910 = sub_27729E5C4(&v2442, 8u, v2390, v2420);
            goto LABEL_533;
          case 13:
            sub_27729E798(&v2442, 8u, v2390, v2420, v244, *v242.i64, *v245.i64, *v243.i64, *v162.i64, a8, a9, a10);
            goto LABEL_533;
          case 14:
            sub_27729EA7C(&v2442, 8u, v2390, v2420, v244, v242, v245, v243, v162, a8, a9, a10);
            goto LABEL_533;
          case 15:
            sub_27729EF20(&v2442, 8u, v2390, v2420, *v244.i64, *v242.i64, *v245.i64, *v243.i64, *v162.i64, a8.n128_f64[0], a9, a10);
LABEL_533:
            v175 = 4 * v2425;
            v907 = 2 * v2425;
            v908 = 6 * v2425;
            break;
          default:
            v244.i32[0] = *v2390;
            v907 = 2 * v2425;
            v242.i32[0] = *(v2390 + v2417);
            v245.i32[0] = *(v2390 + v175);
            v908 = 6 * v2425;
            v243.i32[0] = *(v2390 + v2369);
            v910.i64[0] = vzip1q_s8(v244, v26).u64[0];
            v909 = vzip1q_s8(v242, v26);
            v911.i64[0] = vzip1q_s8(v245, v26).u64[0];
            v910.i64[1] = v909.i64[0];
            v911.i64[1] = vzip1q_s8(v243, v26).u64[0];
            v2442 = v910;
            v2443 = v911;
            break;
        }

        v909.i64[0] = v2438.i64[1];
        v910.i64[0] = v2438.i64[0];
        a8.n128_u64[0] = v2439.u64[1];
        v162.i64[0] = v2439.i64[0];
        a9.n128_u64[0] = v2442.u64[1];
        v911.i64[0] = v2442.i64[0];
        v10.val[0] = v2443.i64[1];
        a10.n128_u64[0] = v2443.i64[0];
        v946 = vrhaddq_u16(v910, v911);
        v947 = vrhaddq_u16(v909, a9);
        v948 = vrhaddq_u16(v162, a10);
        v949 = vrhaddq_u16(a8, v10);
        if (v2423)
        {
          v162.i64[0] = *v138;
          a8.n128_u64[0] = *(v138 + 32);
          a9.n128_u64[0] = *(v138 + 64);
          a10.n128_u64[0] = *(v138 + 96);
          v946 = vaddq_s16(v946, v162);
          v947 = vaddq_s16(v947, a8);
          v948 = vaddq_s16(v948, a9);
          v949 = vaddq_s16(v949, a10);
        }

        v950 = COERCE_DOUBLE(vqmovun_s16(v946));
        v951 = COERCE_DOUBLE(vqmovun_s16(v947));
        v137->i32[0] = LODWORD(v950);
        *(v137->i32 + v907) = LODWORD(v951);
        v952 = COERCE_DOUBLE(vqmovun_s16(v948));
        v953 = COERCE_DOUBLE(vqmovun_s16(v949));
        *(v137->i32 + v175) = LODWORD(v952);
        *(v137->i32 + v908) = LODWORD(v953);
        v954 = sub_277290798(&v2447, _X25, v2420, v2385, v119, v952, v953, v951, v950, v162, a8);
        sub_277290798(&v2452, v241, v2420, v2372, v2367, v954, v955, v956, v957, v958, v959);
        v961.i64[0] = v2447.i64[1];
        v960.i64[0] = v2447.i64[0];
        v963.i64[0] = v2452.i64[1];
        v962.i64[0] = v2452.i64[0];
        v964 = vrhaddq_u16(v960, v962);
        v25 = vrhaddq_u16(v961, v963);
        if (v2422)
        {
          v961.i64[0] = *v141;
          v963.i64[0] = *(v141 + 32);
          v964 = vaddq_s16(v964, v961);
          v25 = vaddq_s16(v25, v963);
        }

        v10 = v2434;
        v26 = v2436;
        v27.i64[0] = 0x20002000200020;
        v27.i64[1] = 0x20002000200020;
        v28.i64[0] = 0x10001000100010;
        v28.i64[1] = 0x10001000100010;
        *v25.i8 = vqmovun_s16(v25);
        v139->i32[0] = vqmovun_s16(v964).u32[0];
        *(v139->i32 + v2417) = v25.i32[0];
        v24 = 4 * v2425;
        goto LABEL_1085;
      }

      v176 = &v128[v2363];
      v2361 = v148;
      switch(v68 & 0xFFFFFFF3 | (4 * (v38 & 3)))
      {
        case 1u:
          v539 = v140;
          v705 = sub_27729F23C(&v2438, v128, v2420, v174, v171, *v172.i64, v173, 3.52371676e-294, a8, a9, a10);
          v183 = sub_27729F23C(&v2440, v176, v2420, v705, v706, v707, v708, v709, v710, v711, v712);
          goto LABEL_488;
        case 2u:
          v539 = v140;
          v591 = sub_27729F394(&v2438, v128, v2420, *v174.i64, v171, v172, *v173.i64, xmmword_2773B3DF0, a8, a9, a10);
          *v183.i64 = sub_27729F394(&v2440, v176, v2420, v591, v592, v593, v594, v595, v596, v597, v598);
          goto LABEL_488;
        case 3u:
          v539 = v140;
          v660 = sub_27729F4D8(&v2438, v128, v2420, v174, v171, *v172.i64, v173, 3.52371676e-294, a8, a9, a10);
          v183 = sub_27729F4D8(&v2440, v176, v2420, v660, v661, v662, v663, v664, v665, v666, v667);
          goto LABEL_488;
        case 4u:
          v539 = v140;
          sub_27729C91C(&v2438, 8u, v128, v2420);
          v183 = sub_27729C91C(&v2440, 8u, v176, v2420);
          goto LABEL_488;
        case 5u:
          v539 = v140;
          *v782.i64 = sub_27729CAF0(&v2438, 8u, v128, v2420, v174, *v171.i64, *v172.i64, *v173.i64, 3.52371676e-294, a8, a9, a10);
          *v183.i64 = sub_27729CAF0(&v2440, 8u, v176, v2420, v782, v783, v784, v785, v786, v787, v788, v789);
          goto LABEL_488;
        case 6u:
          v539 = v140;
          *v798.i64 = sub_27729CDD0(&v2438, 8u, v128, v2420, v174, v171, v172, v173, xmmword_2773B3DF0, a8, a9, a10);
          *v183.i64 = sub_27729CDD0(&v2440, 8u, v176, v2420, v798, v799, v800, v801, v802, v803, v804, v805);
          goto LABEL_488;
        case 7u:
          v539 = v140;
          v674 = sub_27729D274(&v2438, 8u, v128, v2420, *v174.i64, *v171.i64, *v172.i64, *v173.i64, 3.52371676e-294, a8.n128_f64[0], a9, a10);
          *v183.i64 = sub_27729D274(&v2440, 8u, v176, v2420, v674, v675, v676, v677, v678, v679, v680, v681);
          goto LABEL_488;
        case 8u:
          v539 = v140;
          sub_27729D550(&v2438, 8u, v128, v2420);
          v183 = sub_27729D550(&v2440, 8u, v176, v2420);
          goto LABEL_488;
        case 9u:
          v539 = v140;
          sub_27729D714(&v2438, 8u, v128, v2420);
          *v183.i64 = sub_27729D714(&v2440, 8u, v176, v2420);
          goto LABEL_488;
        case 0xAu:
          v539 = v140;
          *v808.i64 = sub_27729F62C(&v2438, v128, v2420, v174, v171, v172, v173, xmmword_2773B3DF0, a8, a9, a10);
          *v183.i64 = sub_27729F62C(&v2440, v176, v2420, v808, v809, v810, v811, v812, v813, v814, v815);
          goto LABEL_488;
        case 0xBu:
          v539 = v140;
          sub_27729DE6C(&v2438, 8u, v128, v2420);
          *v183.i64 = sub_27729DE6C(&v2440, 8u, v176, v2420);
          goto LABEL_488;
        case 0xCu:
          v539 = v140;
          sub_27729E5C4(&v2438, 8u, v128, v2420);
          v183 = sub_27729E5C4(&v2440, 8u, v176, v2420);
          goto LABEL_488;
        case 0xDu:
          v539 = v140;
          *v790.i64 = sub_27729E798(&v2438, 8u, v128, v2420, v174, *v171.i64, *v172.i64, *v173.i64, 3.52371676e-294, a8, a9, a10);
          *v183.i64 = sub_27729E798(&v2440, 8u, v176, v2420, v790, v791, v792, v793, v794, v795, v796, v797);
          goto LABEL_488;
        case 0xEu:
          v539 = v140;
          *v540.i64 = sub_27729EA7C(&v2438, 8u, v128, v2420, v174, v171, v172, v173, xmmword_2773B3DF0, a8, a9, a10);
          *v183.i64 = sub_27729EA7C(&v2440, 8u, v176, v2420, v540, v541, v542, v543, v544, v545, v546, v547);
          goto LABEL_488;
        case 0xFu:
          v539 = v140;
          v652 = sub_27729EF20(&v2438, 8u, v128, v2420, *v174.i64, *v171.i64, *v172.i64, *v173.i64, 3.52371676e-294, a8.n128_f64[0], a9, a10);
          *v183.i64 = sub_27729EF20(&v2440, 8u, v176, v2420, v652, v653, v654, v655, v656, v657, v658, v659);
LABEL_488:
          v140 = v539;
          v10.val[1] = v2434.val[1];
          v26 = v2436;
          v175 = 4 * v2425;
          break;
        default:
          v174.i32[0] = *(v128 + v2417);
          v171.i32[0] = *(v128 + v73);
          v172.i32[0] = *v128;
          v173.i32[0] = *(v128 + v2369);
          v177.i64[0] = vzip1q_s8(v172, v26).u64[0];
          v178 = vzip1q_s8(v174, v26);
          v179.i64[0] = vzip1q_s8(v171, v26).u64[0];
          v180 = vzip1q_s8(v173, v26);
          v177.i64[1] = v178.i64[0];
          v179.i64[1] = v180.i64[0];
          v2438 = v177;
          v2439 = v179;
          v178.i32[0] = *v176;
          v179.i32[0] = *(v176 + v2417);
          v177.i32[0] = *(v176 + v73);
          v180.i32[0] = *(v176 + v2369);
          v183.i64[0] = vzip1q_s8(v178, v26).u64[0];
          v181 = vzip1q_s8(v179, v26);
          v184.i64[0] = vzip1q_s8(v177, v26).u64[0];
          v182 = vzip1q_s8(v180, v26);
          v183.i64[1] = v181.i64[0];
          v184.i64[1] = v182.i64[0];
          v2440 = v183;
          v2441[0] = v184;
          break;
      }

      v816 = &v2390[v2363];
      switch(v140)
      {
        case 1:
          v867 = sub_27729F23C(&v2442, v2390, v2420, v183, v181, *v184.i64, v182, *v162.i64, a8, a9, a10);
          v824 = sub_27729F23C(&v2444, v816, v2420, v867, v868, v869, v870, v871, v872, v873, v874);
          goto LABEL_524;
        case 2:
          v835 = sub_27729F394(&v2442, v2390, v2420, *v183.i64, v181, v184, *v182.i64, v162, a8, a9, a10);
          sub_27729F394(&v2444, v816, v2420, v835, v836, v837, v838, v839, v840, v841, v842);
          goto LABEL_524;
        case 3:
          v851 = sub_27729F4D8(&v2442, v2390, v2420, v183, v181, *v184.i64, v182, *v162.i64, a8, a9, a10);
          v824 = sub_27729F4D8(&v2444, v816, v2420, v851, v852, v853, v854, v855, v856, v857, v858);
          goto LABEL_524;
        case 4:
          sub_27729C91C(&v2442, 8u, v2390, v2420);
          v824 = sub_27729C91C(&v2444, 8u, v816, v2420);
          goto LABEL_524;
        case 5:
          *v875.i64 = sub_27729CAF0(&v2442, 8u, v2390, v2420, v183, *v181.i64, *v184.i64, *v182.i64, *v162.i64, a8, a9, a10);
          sub_27729CAF0(&v2444, 8u, v816, v2420, v875, v876, v877, v878, v879, v880, v881, v882);
          goto LABEL_524;
        case 6:
          *v891.i64 = sub_27729CDD0(&v2442, 8u, v2390, v2420, v183, v181, v184, v182, v162, a8, a9, a10);
          sub_27729CDD0(&v2444, 8u, v816, v2420, v891, v892, v893, v894, v895, v896, v897, v898);
          goto LABEL_524;
        case 7:
          v859 = sub_27729D274(&v2442, 8u, v2390, v2420, *v183.i64, *v181.i64, *v184.i64, *v182.i64, *v162.i64, a8.n128_f64[0], a9, a10);
          sub_27729D274(&v2444, 8u, v816, v2420, v859, v860, v861, v862, v863, v864, v865, v866);
          goto LABEL_524;
        case 8:
          sub_27729D550(&v2442, 8u, v2390, v2420);
          v824 = sub_27729D550(&v2444, 8u, v816, v2420);
          goto LABEL_524;
        case 9:
          sub_27729D714(&v2442, 8u, v2390, v2420);
          sub_27729D714(&v2444, 8u, v816, v2420);
          goto LABEL_524;
        case 10:
          *v899.i64 = sub_27729F62C(&v2442, v2390, v2420, v183, v181, v184, v182, v162, a8, a9, a10);
          sub_27729F62C(&v2444, v816, v2420, v899, v900, v901, v902, v903, v904, v905, v906);
          goto LABEL_524;
        case 11:
          sub_27729DE6C(&v2442, 8u, v2390, v2420);
          sub_27729DE6C(&v2444, 8u, v816, v2420);
          goto LABEL_524;
        case 12:
          sub_27729E5C4(&v2442, 8u, v2390, v2420);
          v824 = sub_27729E5C4(&v2444, 8u, v816, v2420);
          goto LABEL_524;
        case 13:
          *v883.i64 = sub_27729E798(&v2442, 8u, v2390, v2420, v183, *v181.i64, *v184.i64, *v182.i64, *v162.i64, a8, a9, a10);
          sub_27729E798(&v2444, 8u, v816, v2420, v883, v884, v885, v886, v887, v888, v889, v890);
          goto LABEL_524;
        case 14:
          *v827.i64 = sub_27729EA7C(&v2442, 8u, v2390, v2420, v183, v181, v184, v182, v162, a8, a9, a10);
          sub_27729EA7C(&v2444, 8u, v816, v2420, v827, v828, v829, v830, v831, v832, v833, v834);
          goto LABEL_524;
        case 15:
          v843 = sub_27729EF20(&v2442, 8u, v2390, v2420, *v183.i64, *v181.i64, *v184.i64, *v182.i64, *v162.i64, a8.n128_f64[0], a9, a10);
          sub_27729EF20(&v2444, 8u, v816, v2420, v843, v844, v845, v846, v847, v848, v849, v850);
LABEL_524:
          v175 = 4 * v2425;
          v826 = v2423;
          v817 = 2 * v2425;
          v818 = 6 * v2425;
          break;
        default:
          v817 = 2 * v2425;
          v183.i32[0] = *(v2390 + v2417);
          v181.i32[0] = *(v2390 + v175);
          v184.i32[0] = *v2390;
          v818 = 6 * v2425;
          v182.i32[0] = *(v2390 + v2369);
          v819.i64[0] = vzip1q_s8(v184, v26).u64[0];
          v820 = vzip1q_s8(v183, v26);
          v821.i64[0] = vzip1q_s8(v181, v26).u64[0];
          v822 = vzip1q_s8(v182, v26);
          v819.i64[1] = v820.i64[0];
          v821.i64[1] = v822.i64[0];
          v2442 = v819;
          v2443 = v821;
          v820.i32[0] = *v816;
          v821.i32[0] = *(v816 + v2417);
          v819.i32[0] = *(v816 + v175);
          v822.i32[0] = *(v816 + v2369);
          v824.i64[0] = vzip1q_s8(v820, v26).u64[0];
          v823 = vzip1q_s8(v821, v26);
          v825.i64[0] = vzip1q_s8(v819, v26).u64[0];
          v824.i64[1] = v823.i64[0];
          v825.i64[1] = vzip1q_s8(v822, v26).u64[0];
          v2444 = v824;
          v2445[0] = v825;
          v826 = v2423;
          break;
      }

      v912 = 1;
      v913 = &v2438;
      do
      {
        v914 = v912;
        v824.i64[0] = v913->i64[0];
        v823.i64[0] = v913->i64[1];
        v162.i64[0] = v913[1].i64[0];
        a8.n128_u64[0] = v913[1].u64[1];
        v825.i64[0] = v913[32].i64[0];
        a9.n128_u64[0] = v913[32].u64[1];
        a10.n128_u64[0] = v913[33].u64[0];
        v10.val[0] = v913[33].i64[1];
        v915 = vrhaddq_u16(v824, v825);
        v825 = vrhaddq_u16(v823, a9);
        v823 = vrhaddq_u16(v162, a10);
        v824 = vrhaddq_u16(a8, v10);
        if (v826)
        {
          v162.i64[0] = *v138;
          a8.n128_u64[0] = *(v138 + 32);
          a9.n128_u64[0] = *(v138 + 64);
          a10.n128_u64[0] = *(v138 + 96);
          v138 += 128;
          v915 = vaddq_s16(v915, v162);
          v825 = vaddq_s16(v825, a8);
          v823 = vaddq_s16(v823, a9);
          v824 = vaddq_s16(v824, a10);
        }

        v912 = 0;
        v913 += 2;
        v916 = COERCE_DOUBLE(vqmovun_s16(v915));
        v917 = COERCE_DOUBLE(vqmovun_s16(v825));
        v918 = COERCE_DOUBLE(vqmovun_s16(v823));
        v137->i32[0] = LODWORD(v916);
        *(v137->i32 + v817) = LODWORD(v917);
        v919 = COERCE_DOUBLE(vqmovun_s16(v824));
        *(v137->i32 + v175) = LODWORD(v918);
        *(v137->i32 + v818) = LODWORD(v919);
        v137 = (v137 + v2363 * 4);
      }

      while ((v914 & 1) != 0);
      v920 = sub_277290798(&v2447, _X25, v2420, v2385, v119, v919, v918, v917, v916, v162, a8);
      v926 = sub_277290798(&v2448, _X25->i64 + v2347, v2420, v2385, v119, v920, v921, v922, v923, v924, v925);
      v932 = sub_277290798(&v2452, v2361, v2420, v2372, v2367, v926, v927, v928, v929, v930, v931);
      sub_277290798(&v2453, v2361 + v2347, v2420, v2372, v2367, v932, v933, v934, v935, v936, v937);
      v939.i64[0] = v2447.i64[1];
      v938.i64[0] = v2447.i64[0];
      a8.n128_u64[0] = v2448.u64[1];
      v940.i64[0] = v2448.i64[0];
      a9.n128_u64[0] = v2452.u64[1];
      v941.i64[0] = v2452.i64[0];
      v942.i64[0] = v2453.i64[1];
      a10.n128_u64[0] = v2453.i64[0];
      v943 = vrhaddq_u16(v938, v941);
      v944 = vrhaddq_u16(v939, a9);
      v25 = vrhaddq_u16(v940, a10);
      v945 = vrhaddq_u16(a8, v942);
      if (v2422)
      {
        v940.i64[0] = *v141;
        a8.n128_u64[0] = *(v141 + 32);
        a9.n128_u64[0] = *(v141 + 64);
        a10.n128_u64[0] = *(v141 + 96);
        v943 = vaddq_s16(v943, v940);
        v944 = vaddq_s16(v944, a8);
        v25 = vaddq_s16(v25, a9);
        v945 = vaddq_s16(v945, a10);
      }

      v24 = 4 * v2425;
      v27.i64[0] = 0x20002000200020;
      v27.i64[1] = 0x20002000200020;
      v28.i64[0] = 0x10001000100010;
      v28.i64[1] = 0x10001000100010;
      v139->i32[0] = vqmovun_s16(v943).u32[0];
      *(v139->i32 + v2417) = vqmovun_s16(v944).u32[0];
      *v25.i8 = vqmovun_s16(v25);
      *(v139->i32 + v2431) = v25.i32[0];
      *(v139->i32 + v2369) = vqmovun_s16(v945).u32[0];
    }

    else
    {
      v149 = 4 * (v38 & 3);
      v24 = v73;
      if (v2400 != 8)
      {
        if (v2400 == 16)
        {
          v2348 = 4 * (v60 & 3);
          v2401 = v119 & 0xFFFFFF8F | (16 * (v38 & 7));
          v2357 = v147;
          v2360 = v148;
          v2365 = v143;
          v2370 = v60 & 7;
          v2354 = v143 & 0xFFFFFF8F | (16 * v2370);
          v2350 = v144;
          if (v2426 == 16)
          {
            switch(v68 & 0xFFFFFFF3 | (4 * (v38 & 3)))
            {
              case 1u:
                v736 = 0;
                v737 = (&v128[v2349] + v2417);
                v738 = (v737 + v2417 + v2417);
                v739 = vzip1q_s8(*(v738 + v2417), v26);
                v740 = vzip1q_s8(*v738, v26);
                v741 = vzip1q_s8(*(v737 + v2417), v26);
                v742 = vzip1q_s8(*v737, v26);
                v743 = vzip1q_s8(*&v128[v2349], v26);
                v744 = v2411 + v126 + v2344 * v127;
                v745 = (v2374 + v2346 + v744);
                do
                {
                  v746 = v742;
                  v742 = v741;
                  v741 = v740;
                  v740 = v739;
                  v739 = vzip1q_s8(*v745, v26);
                  v747 = vsubq_s16(vshlq_n_s16(vaddq_s16(v742, v741), 2uLL), vaddq_s16(v746, v740));
                  *(&v2438 + v736) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v743, v747), vshlq_n_s16(v747, 2uLL)), vaddq_s16(v739, v28)), 5uLL))), v742);
                  v736 += 32;
                  v745 = (v745 + v2417);
                  v743 = v746;
                }

                while (v736 != 512);
                v748 = 0;
                v749 = (&v128[v2349 + 2] + v2417);
                v750 = (v749 + v2417 + v2417);
                v751 = vzip1q_s8(*(v750 + v2417), v26);
                v752 = vzip1q_s8(*v750, v26);
                v753 = vzip1q_s8(*(v749 + v2417), v26);
                v754 = vzip1q_s8(*v749, v26);
                v755 = vzip1q_s8(*&v128[v2349 + 2], v26);
                v756 = (v2374 + v2345 + v744);
                v152 = v2390;
                do
                {
                  v757 = v754;
                  v754 = v753;
                  v753 = v752;
                  v752 = v751;
                  v751 = vzip1q_s8(*v756, v26);
                  v758 = vsubq_s16(vshlq_n_s16(vaddq_s16(v754, v753), 2uLL), vaddq_s16(v757, v752));
                  *(&v2439 + v748) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v755, v758), vshlq_n_s16(v758, 2uLL)), vaddq_s16(v751, v28)), 5uLL))), v754);
                  v748 += 32;
                  v756 = (v756 + v2417);
                  v755 = v757;
                }

                while (v748 != 512);
                break;
              case 2u:
                v599 = 0;
                v600 = (&v128[v2349] + v2417);
                v601 = (v600 + v2417 + v2417);
                v602 = vzip1q_s8(*(v601 + v2417), v26);
                v603 = vzip1q_s8(*v601, v26);
                v604 = vzip1q_s8(*(v600 + v2417), v26);
                v605 = vzip1q_s8(*v600, v26);
                v606 = vzip1q_s8(*&v128[v2349], v26);
                v607 = v2411 + v126 + v2344 * v127;
                v608 = (v2374 + v2346 + v607);
                do
                {
                  v609 = v605;
                  v605 = v604;
                  v604 = v603;
                  v603 = v602;
                  v610 = &v2438.i8[v599];
                  v602 = vzip1q_s8(*v608, v26);
                  v611 = vsubq_s16(vshlq_n_s16(vaddq_s16(v605, v604), 2uLL), vaddq_s16(v609, v603));
                  v10.val[0] = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v606, v611), vshlq_n_s16(v611, 2uLL)), vaddq_s16(v602, v28)), 5uLL));
                  vst2_s8(v610, v10);
                  v599 += 32;
                  v608 = (v608 + v2417);
                  v606 = v609;
                }

                while (v599 != 512);
                v612 = 0;
                v613 = (&v128[v2349 + 2] + v2417);
                v614 = (v613 + v2417 + v2417);
                v615 = vzip1q_s8(*(v614 + v2417), v26);
                v616 = vzip1q_s8(*v614, v26);
                v617 = vzip1q_s8(*(v613 + v2417), v26);
                v618 = vzip1q_s8(*v613, v26);
                v619 = vzip1q_s8(*&v128[v2349 + 2], v26);
                v620 = (v2374 + v2345 + v607);
                v152 = v2390;
                do
                {
                  v621 = v618;
                  v618 = v617;
                  v617 = v616;
                  v616 = v615;
                  v622 = &v2439.i8[v612];
                  v615 = vzip1q_s8(*v620, v26);
                  v623 = vsubq_s16(vshlq_n_s16(vaddq_s16(v618, v617), 2uLL), vaddq_s16(v621, v616));
                  *v623.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v619, v623), vshlq_n_s16(v623, 2uLL)), vaddq_s16(v615, v28)), 5uLL));
                  v624 = v26.i64[0];
                  vst2_s8(v622, v623);
                  v612 += 32;
                  v620 = (v620 + v2417);
                  v619 = v621;
                }

                while (v612 != 512);
                break;
              case 3u:
                v682 = 0;
                v683 = (&v128[v2349] + v2417);
                v684 = (v683 + v2417 + v2417);
                v685 = vzip1q_s8(*(v684 + v2417), v26);
                v686 = vzip1q_s8(*v684, v26);
                v687 = vzip1q_s8(*(v683 + v2417), v26);
                v688 = vzip1q_s8(*v683, v26);
                v689 = vzip1q_s8(*&v128[v2349], v26);
                v690 = v2411 + v126 + v2344 * v127;
                v691 = (v2374 + v2346 + v690);
                do
                {
                  v692 = v688;
                  v688 = v687;
                  v687 = v686;
                  v686 = v685;
                  v685 = vzip1q_s8(*v691, v26);
                  v693 = vsubq_s16(vshlq_n_s16(vaddq_s16(v688, v687), 2uLL), vaddq_s16(v692, v686));
                  *(&v2438 + v682) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v689, v693), vshlq_n_s16(v693, 2uLL)), vaddq_s16(v685, v28)), 5uLL))), v687);
                  v682 += 32;
                  v691 = (v691 + v2417);
                  v689 = v692;
                }

                while (v682 != 512);
                v694 = 0;
                v695 = (&v128[v2349 + 2] + v2417);
                v696 = (v695 + v2417 + v2417);
                v697 = vzip1q_s8(*(v696 + v2417), v26);
                v698 = vzip1q_s8(*v696, v26);
                v699 = vzip1q_s8(*(v695 + v2417), v26);
                v700 = vzip1q_s8(*v695, v26);
                v701 = vzip1q_s8(*&v128[v2349 + 2], v26);
                v702 = (v2374 + v2345 + v690);
                v152 = v2390;
                do
                {
                  v703 = v700;
                  v700 = v699;
                  v699 = v698;
                  v698 = v697;
                  v697 = vzip1q_s8(*v702, v26);
                  v704 = vsubq_s16(vshlq_n_s16(vaddq_s16(v700, v699), 2uLL), vaddq_s16(v703, v698));
                  *(&v2439 + v694) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v701, v704), vshlq_n_s16(v704, 2uLL)), vaddq_s16(v697, v28)), 5uLL))), v699);
                  v694 += 32;
                  v702 = (v702 + v2417);
                  v701 = v703;
                }

                while (v694 != 512);
                break;
              case 4u:
                v551 = 0;
                v552 = (v128 - 2);
                do
                {
                  v553 = *v552;
                  v552 = (v552 + v2417);
                  v554 = vzip1q_s8(vextq_s8(v553, v553, 2uLL), v26);
                  v555 = vsubq_s16(vshlq_n_s16(vaddq_s16(v554, vzip1q_s8(vextq_s8(v553, v553, 3uLL), v26)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v553, v553, 1uLL), v26), vzip1q_s8(vextq_s8(v553, v553, 4uLL), v26)));
                  *(&v2438 + v551) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v555, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v553, v26), vzip1q_s8(vextq_s8(v553, v553, 5uLL), v26)), v555)), v28), 5uLL))), v554);
                  v551 += 32;
                }

                while (v551 != 512);
                v556 = 0;
                v557 = (v128 + 6);
                v152 = v2390;
                do
                {
                  v558 = *v557;
                  v557 = (v557 + v2417);
                  v559 = vzip1q_s8(vextq_s8(v558, v558, 2uLL), v26);
                  v560 = vsubq_s16(vshlq_n_s16(vaddq_s16(v559, vzip1q_s8(vextq_s8(v558, v558, 3uLL), v26)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v558, v558, 1uLL), v26), vzip1q_s8(vextq_s8(v558, v558, 4uLL), v26)));
                  *(&v2439 + v556) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v560, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v558, v26), vzip1q_s8(vextq_s8(v558, v558, 5uLL), v26)), v560)), v28), 5uLL))), v559);
                  v556 += 32;
                }

                while (v556 != 512);
                break;
              case 5u:
                v668 = v128;
                v669 = 2 * v2425;
                v670 = 2;
                goto LABEL_482;
              case 6u:
                v549 = v140;
                sub_27729B1B0(v2438.i8, 0x20u, v128, v2420);
                sub_27729B1B0(v2439.i8, 0x20u, (v128 + 2), v2420);
                goto LABEL_548;
              case 7u:
                v668 = v128;
                v669 = 2 * v2425;
                v670 = 3;
LABEL_482:
                v806 = 2;
                goto LABEL_541;
              case 8u:
                v1492 = 0;
                v1493 = (v128 - 2);
                do
                {
                  v1494 = &v2438.i8[v1492];
                  v1495 = *v1493;
                  v1493 = (v1493 + v2417);
                  v1496 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1495, v1495, 2uLL), v26), vzip1q_s8(vextq_s8(v1495, v1495, 3uLL), v26)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1495, v1495, 1uLL), v26), vzip1q_s8(vextq_s8(v1495, v1495, 4uLL), v26)));
                  *v1495.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1496, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1495, v26), vzip1q_s8(vextq_s8(v1495, v1495, 5uLL), v26)), v1496)), v28), 5uLL));
                  v1496.i64[0] = v26.i64[0];
                  vst2_s8(v1494, v1495);
                  v1492 += 32;
                }

                while (v1492 != 512);
                v1497 = 0;
                v1498 = (v128 + 6);
                v152 = v2390;
                do
                {
                  v1499 = &v2439.i8[v1497];
                  v1500 = *v1498;
                  v1498 = (v1498 + v2417);
                  v1501 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1500, v1500, 2uLL), v26), vzip1q_s8(vextq_s8(v1500, v1500, 3uLL), v26)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1500, v1500, 1uLL), v26), vzip1q_s8(vextq_s8(v1500, v1500, 4uLL), v26)));
                  *v1500.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1501, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1500, v26), vzip1q_s8(vextq_s8(v1500, v1500, 5uLL), v26)), v1501)), v28), 5uLL));
                  v1501.i64[0] = v26.i64[0];
                  vst2_s8(v1499, v1500);
                  v1497 += 32;
                }

                while (v1497 != 512);
                break;
              case 9u:
                v549 = v140;
                sub_27729B614(v2438.i8, 0x20u, v128, v2420, 16);
                sub_27729B614(v2439.i8, 0x20u, (v128 + 2), v2420, 16);
                goto LABEL_548;
              case 0xAu:
                v549 = v140;
                sub_27729B7DC(&v2438, 32, v128, v2420, 16);
                sub_27729B7DC(&v2439, 32, (v128 + 2), v2420, 16);
                goto LABEL_548;
              case 0xBu:
                v549 = v140;
                sub_27729B98C(v2438.i8, 0x20u, v128, v2420, 16);
                sub_27729B98C(v2439.i8, 0x20u, (v128 + 2), v2420, 16);
                goto LABEL_548;
              case 0xCu:
                v571 = 0;
                v572 = (v128 - 2);
                do
                {
                  v573 = *v572;
                  v572 = (v572 + v2417);
                  v574 = vzip1q_s8(vextq_s8(v573, v573, 3uLL), v26);
                  v575 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v573, v573, 2uLL), v26), v574), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v573, v573, 1uLL), v26), vzip1q_s8(vextq_s8(v573, v573, 4uLL), v26)));
                  *(&v2438 + v571) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v575, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v573, v26), vzip1q_s8(vextq_s8(v573, v573, 5uLL), v26)), v575)), v28), 5uLL))), v574);
                  v571 += 32;
                }

                while (v571 != 512);
                v576 = 0;
                v577 = (v128 + 6);
                v152 = v2390;
                do
                {
                  v578 = *v577;
                  v577 = (v577 + v2417);
                  v579 = vzip1q_s8(vextq_s8(v578, v578, 3uLL), v26);
                  v580 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v578, v578, 2uLL), v26), v579), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v578, v578, 1uLL), v26), vzip1q_s8(vextq_s8(v578, v578, 4uLL), v26)));
                  *(&v2439 + v576) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v580, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v578, v26), vzip1q_s8(vextq_s8(v578, v578, 5uLL), v26)), v580)), v28), 5uLL))), v579);
                  v576 += 32;
                }

                while (v576 != 512);
                break;
              case 0xDu:
                v668 = v128;
                v669 = 2 * v2425;
                v670 = 2;
                goto LABEL_540;
              case 0xEu:
                v549 = v140;
                sub_27729BBEC(v2438.i8, 0x20u, v128, v2420);
                sub_27729BBEC(v2439.i8, 0x20u, (v128 + 2), v2420);
LABEL_548:
                v140 = v549;
                goto LABEL_549;
              case 0xFu:
                v668 = v128;
                v669 = 2 * v2425;
                v670 = 3;
LABEL_540:
                v806 = 3;
LABEL_541:
                v965 = v140;
                sub_27729AF04(v2438.i8, v668, v669, 16, v670, v806);
                v140 = v965;
LABEL_549:
                v28.i64[0] = 0x10001000100010;
                v28.i64[1] = 0x10001000100010;
                v10 = v2434;
                v26 = v2436;
                v152 = v2390;
                break;
              default:
                v150 = v149 + v68 - 16;
                v151 = &v2438;
                v152 = v2390;
                do
                {
                  v153 = *v128;
                  v128 = (v128 + v2417);
                  *v151 = vzip1q_s8(v153, v26);
                  v151[1] = vzip2q_s8(v153, v26);
                  v151 += 2;
                  _CF = __CFADD__(v150++, 1);
                }

                while (!_CF);
                break;
            }

            switch(v140)
            {
              case 1:
                v1050 = 0;
                v971 = 2 * v2425;
                v1051 = (&v152[v2349] + v2417);
                v1052 = (v1051 + v2417 + v2417);
                v1053 = vzip1q_s8(*(v1052 + v2417), v26);
                v1054 = vzip1q_s8(*v1052, v26);
                v1055 = vzip1q_s8(*(v1051 + v2417), v26);
                v1056 = vzip1q_s8(*v1051, v26);
                v1057 = vzip1q_s8(*&v152[v2349], v26);
                v972 = v2383;
                v1058 = v2383 + v2376 + v2344 * v2375;
                v1059 = (v2377 + v2346 + v1058);
                do
                {
                  v1060 = v1056;
                  v1056 = v1055;
                  v1055 = v1054;
                  v1054 = v1053;
                  v1053 = vzip1q_s8(*v1059, v26);
                  v1061 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1056, v1055), 2uLL), vaddq_s16(v1060, v1054));
                  *(&v2442 + v1050) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1057, v1061), vshlq_n_s16(v1061, 2uLL)), vaddq_s16(v1053, v28)), 5uLL))), v1056);
                  v1050 += 32;
                  v1059 = (v1059 + v2417);
                  v1057 = v1060;
                }

                while (v1050 != 512);
                v1062 = 0;
                v1063 = (&v152[v2349 + 2] + v2417);
                v1064 = (v1063 + v2417 + v2417);
                v1065 = vzip1q_s8(*(v1064 + v2417), v26);
                v1066 = vzip1q_s8(*v1064, v26);
                v1067 = vzip1q_s8(*(v1063 + v2417), v26);
                v1068 = vzip1q_s8(*v1063, v26);
                v1069 = vzip1q_s8(*&v152[v2349 + 2], v26);
                v1070 = (v2377 + v2345 + v1058);
                v970 = v2423;
                v24 = 4 * v2425;
                v27.i64[0] = 0x20002000200020;
                v27.i64[1] = 0x20002000200020;
                v973 = v2357;
                _X22 = v2360;
                v974 = v2354;
                v975 = v2380;
                do
                {
                  v1071 = v1068;
                  v1068 = v1067;
                  v1067 = v1066;
                  v1066 = v1065;
                  v1065 = vzip1q_s8(*v1070, v26);
                  v1072 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1068, v1067), 2uLL), vaddq_s16(v1071, v1066));
                  *(&v2443 + v1062) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1069, v1072), vshlq_n_s16(v1072, 2uLL)), vaddq_s16(v1065, v28)), 5uLL))), v1068);
                  v1062 += 32;
                  v1070 = (v1070 + v2417);
                  v1069 = v1071;
                }

                while (v1062 != 512);
                break;
              case 2:
                v997 = 0;
                v971 = 2 * v2425;
                v998 = (&v152[v2349] + v2417);
                v999 = (v998 + v2417 + v2417);
                v1000 = vzip1q_s8(*(v999 + v2417), v26);
                v1001 = vzip1q_s8(*v999, v26);
                v1002 = vzip1q_s8(*(v998 + v2417), v26);
                v1003 = vzip1q_s8(*v998, v26);
                v1004 = vzip1q_s8(*&v152[v2349], v26);
                v972 = v2383;
                v1005 = v2383 + v2376 + v2344 * v2375;
                v1006 = (v2377 + v2346 + v1005);
                do
                {
                  v1007 = v1003;
                  v1003 = v1002;
                  v1002 = v1001;
                  v1001 = v1000;
                  v1008 = &v2442.i8[v997];
                  v1000 = vzip1q_s8(*v1006, v26);
                  v1009 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1003, v1002), 2uLL), vaddq_s16(v1007, v1001));
                  *v1009.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1004, v1009), vshlq_n_s16(v1009, 2uLL)), vaddq_s16(v1000, v28)), 5uLL));
                  v1010 = v26.i64[0];
                  vst2_s8(v1008, v1009);
                  v997 += 32;
                  v1006 = (v1006 + v2417);
                  v1004 = v1007;
                }

                while (v997 != 512);
                v1011 = 0;
                v1012 = (&v152[v2349 + 2] + v2417);
                v1013 = (v1012 + v2417 + v2417);
                v1014 = vzip1q_s8(*(v1013 + v2417), v26);
                v1015 = vzip1q_s8(*v1013, v26);
                v1016 = vzip1q_s8(*(v1012 + v2417), v26);
                v1017 = vzip1q_s8(*v1012, v26);
                v1018 = vzip1q_s8(*&v152[v2349 + 2], v26);
                v1019 = (v2377 + v2345 + v1005);
                v970 = v2423;
                v24 = 4 * v2425;
                v27.i64[0] = 0x20002000200020;
                v27.i64[1] = 0x20002000200020;
                v973 = v2357;
                _X22 = v2360;
                v974 = v2354;
                v975 = v2380;
                do
                {
                  v1020 = v1017;
                  v1017 = v1016;
                  v1016 = v1015;
                  v1015 = v1014;
                  v1021 = &v2443.i8[v1011];
                  v1014 = vzip1q_s8(*v1019, v26);
                  v1022 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1017, v1016), 2uLL), vaddq_s16(v1020, v1015));
                  *v1022.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1018, v1022), vshlq_n_s16(v1022, 2uLL)), vaddq_s16(v1014, v28)), 5uLL));
                  v1023 = v26.i64[0];
                  vst2_s8(v1021, v1022);
                  v1011 += 32;
                  v1019 = (v1019 + v2417);
                  v1018 = v1020;
                }

                while (v1011 != 512);
                break;
              case 3:
                v1027 = 0;
                v971 = 2 * v2425;
                v1028 = (&v152[v2349] + v2417);
                v1029 = (v1028 + v2417 + v2417);
                v1030 = vzip1q_s8(*(v1029 + v2417), v26);
                v1031 = vzip1q_s8(*v1029, v26);
                v1032 = vzip1q_s8(*(v1028 + v2417), v26);
                v1033 = vzip1q_s8(*v1028, v26);
                v1034 = vzip1q_s8(*&v152[v2349], v26);
                v972 = v2383;
                v1035 = v2383 + v2376 + v2344 * v2375;
                v1036 = (v2377 + v2346 + v1035);
                do
                {
                  v1037 = v1033;
                  v1033 = v1032;
                  v1032 = v1031;
                  v1031 = v1030;
                  v1030 = vzip1q_s8(*v1036, v26);
                  v1038 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1033, v1032), 2uLL), vaddq_s16(v1037, v1031));
                  *(&v2442 + v1027) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1034, v1038), vshlq_n_s16(v1038, 2uLL)), vaddq_s16(v1030, v28)), 5uLL))), v1032);
                  v1027 += 32;
                  v1036 = (v1036 + v2417);
                  v1034 = v1037;
                }

                while (v1027 != 512);
                v1039 = 0;
                v1040 = (&v152[v2349 + 2] + v2417);
                v1041 = (v1040 + v2417 + v2417);
                v1042 = vzip1q_s8(*(v1041 + v2417), v26);
                v1043 = vzip1q_s8(*v1041, v26);
                v1044 = vzip1q_s8(*(v1040 + v2417), v26);
                v1045 = vzip1q_s8(*v1040, v26);
                v1046 = vzip1q_s8(*&v152[v2349 + 2], v26);
                v1047 = (v2377 + v2345 + v1035);
                v970 = v2423;
                v24 = 4 * v2425;
                v27.i64[0] = 0x20002000200020;
                v27.i64[1] = 0x20002000200020;
                v973 = v2357;
                _X22 = v2360;
                v974 = v2354;
                v975 = v2380;
                do
                {
                  v1048 = v1045;
                  v1045 = v1044;
                  v1044 = v1043;
                  v1043 = v1042;
                  v1042 = vzip1q_s8(*v1047, v26);
                  v1049 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1045, v1044), 2uLL), vaddq_s16(v1048, v1043));
                  *(&v2443 + v1039) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1046, v1049), vshlq_n_s16(v1049, 2uLL)), vaddq_s16(v1042, v28)), 5uLL))), v1044);
                  v1039 += 32;
                  v1047 = (v1047 + v2417);
                  v1046 = v1048;
                }

                while (v1039 != 512);
                break;
              case 4:
                v977 = 0;
                v978 = (v152 - 2);
                v971 = 2 * v2425;
                do
                {
                  v979 = *v978;
                  v978 = (v978 + v2417);
                  v980 = vzip1q_s8(vextq_s8(v979, v979, 2uLL), v26);
                  v981 = vsubq_s16(vshlq_n_s16(vaddq_s16(v980, vzip1q_s8(vextq_s8(v979, v979, 3uLL), v26)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v979, v979, 1uLL), v26), vzip1q_s8(vextq_s8(v979, v979, 4uLL), v26)));
                  *(&v2442 + v977) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v981, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v979, v26), vzip1q_s8(vextq_s8(v979, v979, 5uLL), v26)), v981)), v28), 5uLL))), v980);
                  v977 += 32;
                }

                while (v977 != 512);
                v982 = 0;
                v983 = (v152 + 6);
                v970 = v2423;
                v24 = 4 * v2425;
                v27.i64[0] = 0x20002000200020;
                v27.i64[1] = 0x20002000200020;
                v973 = v2357;
                _X22 = v2360;
                v972 = v2383;
                v974 = v2354;
                v975 = v2380;
                do
                {
                  v984 = *v983;
                  v983 = (v983 + v2417);
                  v985 = vzip1q_s8(vextq_s8(v984, v984, 2uLL), v26);
                  v986 = vsubq_s16(vshlq_n_s16(vaddq_s16(v985, vzip1q_s8(vextq_s8(v984, v984, 3uLL), v26)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v984, v984, 1uLL), v26), vzip1q_s8(vextq_s8(v984, v984, 4uLL), v26)));
                  *(&v2443 + v982) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v986, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v984, v26), vzip1q_s8(vextq_s8(v984, v984, 5uLL), v26)), v986)), v28), 5uLL))), v985);
                  v982 += 32;
                }

                while (v982 != 512);
                break;
              case 5:
                v1024 = v152;
                v1025 = 2 * v2425;
                v1026 = 2;
                goto LABEL_586;
              case 6:
                v2435 = v10;
                v2437 = v26;
                sub_27729B1B0(v2442.i8, 0x20u, v152, v2420);
                sub_27729B1B0(v2443.i8, 0x20u, (v152 + 2), v2420);
                goto LABEL_590;
              case 7:
                v1024 = v152;
                v1025 = 2 * v2425;
                v1026 = 3;
LABEL_586:
                v1073 = 2;
                goto LABEL_589;
              case 8:
                v1512 = 0;
                v1513 = (v152 - 2);
                v971 = 2 * v2425;
                do
                {
                  v1514 = &v2442.i8[v1512];
                  v1515 = *v1513;
                  v1513 = (v1513 + v2417);
                  v1516 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1515, v1515, 2uLL), v26), vzip1q_s8(vextq_s8(v1515, v1515, 3uLL), v26)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1515, v1515, 1uLL), v26), vzip1q_s8(vextq_s8(v1515, v1515, 4uLL), v26)));
                  *v1515.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1516, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1515, v26), vzip1q_s8(vextq_s8(v1515, v1515, 5uLL), v26)), v1516)), v28), 5uLL));
                  v1516.i64[0] = v26.i64[0];
                  vst2_s8(v1514, v1515);
                  v1512 += 32;
                }

                while (v1512 != 512);
                v1517 = 0;
                v1518 = (v152 + 6);
                v970 = v2423;
                v24 = 4 * v2425;
                v27.i64[0] = 0x20002000200020;
                v27.i64[1] = 0x20002000200020;
                v973 = v2357;
                _X22 = v2360;
                v972 = v2383;
                v974 = v2354;
                v975 = v2380;
                do
                {
                  v1519 = &v2443.i8[v1517];
                  v1520 = *v1518;
                  v1518 = (v1518 + v2417);
                  v1521 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1520, v1520, 2uLL), v26), vzip1q_s8(vextq_s8(v1520, v1520, 3uLL), v26)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1520, v1520, 1uLL), v26), vzip1q_s8(vextq_s8(v1520, v1520, 4uLL), v26)));
                  *v1520.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1521, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1520, v26), vzip1q_s8(vextq_s8(v1520, v1520, 5uLL), v26)), v1521)), v28), 5uLL));
                  v1521.i64[0] = v26.i64[0];
                  vst2_s8(v1519, v1520);
                  v1517 += 32;
                }

                while (v1517 != 512);
                break;
              case 9:
                v2435 = v10;
                v2437 = v26;
                sub_27729B614(v2442.i8, 0x20u, v152, v2420, 16);
                sub_27729B614(v2443.i8, 0x20u, (v152 + 2), v2420, 16);
                goto LABEL_590;
              case 10:
                v2435 = v10;
                v2437 = v26;
                sub_27729B7DC(&v2442, 32, v152, v2420, 16);
                sub_27729B7DC(&v2443, 32, (v152 + 2), v2420, 16);
                goto LABEL_590;
              case 11:
                v2435 = v10;
                v2437 = v26;
                sub_27729B98C(v2442.i8, 0x20u, v152, v2420, 16);
                sub_27729B98C(v2443.i8, 0x20u, (v152 + 2), v2420, 16);
                goto LABEL_590;
              case 12:
                v987 = 0;
                v988 = (v152 - 2);
                v971 = 2 * v2425;
                do
                {
                  v989 = *v988;
                  v988 = (v988 + v2417);
                  v990 = vzip1q_s8(vextq_s8(v989, v989, 3uLL), v26);
                  v991 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v989, v989, 2uLL), v26), v990), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v989, v989, 1uLL), v26), vzip1q_s8(vextq_s8(v989, v989, 4uLL), v26)));
                  *(&v2442 + v987) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v991, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v989, v26), vzip1q_s8(vextq_s8(v989, v989, 5uLL), v26)), v991)), v28), 5uLL))), v990);
                  v987 += 32;
                }

                while (v987 != 512);
                v992 = 0;
                v993 = (v152 + 6);
                v970 = v2423;
                v24 = 4 * v2425;
                v27.i64[0] = 0x20002000200020;
                v27.i64[1] = 0x20002000200020;
                v973 = v2357;
                _X22 = v2360;
                v972 = v2383;
                v974 = v2354;
                v975 = v2380;
                do
                {
                  v994 = *v993;
                  v993 = (v993 + v2417);
                  v995 = vzip1q_s8(vextq_s8(v994, v994, 3uLL), v26);
                  v996 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v994, v994, 2uLL), v26), v995), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v994, v994, 1uLL), v26), vzip1q_s8(vextq_s8(v994, v994, 4uLL), v26)));
                  *(&v2443 + v992) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v996, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v994, v26), vzip1q_s8(vextq_s8(v994, v994, 5uLL), v26)), v996)), v28), 5uLL))), v995);
                  v992 += 32;
                }

                while (v992 != 512);
                break;
              case 13:
                v1024 = v152;
                v1025 = 2 * v2425;
                v1026 = 2;
                goto LABEL_588;
              case 14:
                v2435 = v10;
                v2437 = v26;
                sub_27729BBEC(v2442.i8, 0x20u, v152, v2420);
                sub_27729BBEC(v2443.i8, 0x20u, (v152 + 2), v2420);
                goto LABEL_590;
              case 15:
                v1024 = v152;
                v1025 = 2 * v2425;
                v1026 = 3;
LABEL_588:
                v1073 = 3;
LABEL_589:
                v2435 = v10;
                v2437 = v26;
                sub_27729AF04(v2442.i8, v1024, v1025, 16, v1026, v1073);
LABEL_590:
                v28.i64[0] = 0x10001000100010;
                v28.i64[1] = 0x10001000100010;
                v10 = v2435;
                v26 = v2437;
                v970 = v2423;
                v971 = 2 * v2425;
                v24 = 4 * v2425;
                v27.i64[0] = 0x20002000200020;
                v27.i64[1] = 0x20002000200020;
                v973 = v2357;
                _X22 = v2360;
                v972 = v2383;
                v974 = v2354;
                v975 = v2380;
                break;
              default:
                v967 = v2348 + v2373 - 16;
                _X22 = v2360;
                v968 = &v2442;
                v970 = v2423;
                v971 = 2 * v2425;
                v24 = 4 * v2425;
                v27.i64[0] = 0x20002000200020;
                v27.i64[1] = 0x20002000200020;
                v972 = v2383;
                v973 = v2357;
                v974 = v2354;
                v975 = v2380;
                do
                {
                  v976 = *v152;
                  v152 = (v152 + v2417);
                  *v968 = vzip1q_s8(v976, v26);
                  v968[1] = vzip2q_s8(v976, v26);
                  v968 += 2;
                  _CF = __CFADD__(v967++, 1);
                }

                while (!_CF);
                break;
            }

            v1074 = 0;
            do
            {
              v1075 = *(&v2443 + v1074);
              v1076 = vrhaddq_u16(*(&v2438 + v1074), *(&v2442 + v1074));
              v1077 = vrhaddq_u16(*(&v2438 + v1074 + 16), v1075);
              v1078 = vrhaddq_u16(*(&v2440 + v1074), *(&v2444 + v1074));
              v1079 = vrhaddq_u16(v2441[v1074 / 0x10], v2445[v1074 / 0x10]);
              if (v970)
              {
                v1080 = *v138;
                v1075 = *(v138 + 16);
                v1081 = *(v138 + 32);
                v1082 = *(v138 + 48);
                v138 += 64;
                v1076 = vaddq_s16(v1080, v1076);
                v1077 = vaddq_s16(v1075, v1077);
                v1078 = vaddq_s16(v1081, v1078);
                v1079 = vaddq_s16(v1082, v1079);
              }

              *v137 = vqmovun_high_s16(vqmovun_s16(v1076), v1077);
              *(v137 + v971) = vqmovun_high_s16(vqmovun_s16(v1078), v1079);
              v137 = (v137 + v24);
              v1074 += 64;
            }

            while (v1074 != 512);
            if (v2401 == 64)
            {
              __asm { PRFM            #0, [X25] }

              v1108 = v2378;
              if (v2378 <= -16)
              {
                v1108 = -16;
              }

              if (v1108 >= v2418)
              {
                v1108 = v2418;
              }

              v1109 = (v975 + v2411 + v2350 + v1108 + 16);
              v1110 = 9;
              v1086 = v2446;
              v1083 = 2 * v2417;
              do
              {
                _X11 = &v1109->i16[v971 / 2];
                __asm { PRFUM           #0, [X11,#-0x10] }

                v1113 = v1109[-1];
                v1114 = vextq_s8(v1113, v1113, 2uLL);
                v1114.i16[7] = v1109->i16[0];
                v1115 = vrhaddq_u8(v1113, v1114);
                v1114.i64[0] = v26.i64[0];
                v1086[3] = vzip2q_s8(v1115, v26);
                v1086 += 2;
                vst2_s8(v1086->i8, *(&v1114 - 8));
                --v1110;
                v1109 = (v1109 + v971);
              }

              while (v1110 > 2);
              v1116 = v1109[-1];
              v1117 = vextq_s8(v1116, v1116, 2uLL);
              v1117.i16[7] = v1109->i16[0];
              v1106 = vrhaddq_u8(v1116, v1117);
            }

            else
            {
              v1083 = 2 * v2417;
              if (v2401 != 4)
              {
                if (v2401)
                {
                  v1122 = 0;
                  v1123 = v119 * v2385 - (8 * v2385 + 8 * v119) + 64;
                  v1124 = v26;
                  v1124.i32[0] = v1123 | (v1123 << 16);
                  v1125 = v26;
                  v1125.i32[0] = (8 * v2385 - v119 * v2385) | ((8 * v2385 - v119 * v2385) << 16);
                  v1126 = vqtbl1q_s8(v1124, xmmword_2773B3DF0);
                  v1127 = vqtbl1q_s8(v1125, xmmword_2773B3DF0);
                  v1128 = v26;
                  v1128.i32[0] = (8 * v119 - v119 * v2385) | ((8 * v119 - v119 * v2385) << 16);
                  v1129 = vqtbl1q_s8(v1128, xmmword_2773B3DF0);
                  v1130 = v26;
                  v1130.i32[0] = 65537 * v119 * v2385;
                  v1131 = vqtbl1q_s8(v1130, xmmword_2773B3DF0);
                  v2456 = v1126;
                  v2457 = v1127;
                  v2458 = v1129;
                  v2459 = v1131;
                  _X9 = &_X25->i8[v971];
                  __asm { PRFM            #0, [X9] }

                  v1075.i64[0] = _X25->i64[0];
                  v1134 = vqtbl1q_s8(v1075, xmmword_2773B3E00);
                  v1134.i16[3] = _X25->i16[4];
                  v1135 = vzip1q_s8(v1134, v26);
                  v1136 = vzip1q_s8(v1075, v26);
                  v1137 = v2378;
                  if (v2378 <= -16)
                  {
                    v1137 = -16;
                  }

                  v1138 = v2418;
                  if (v1137 < v2418)
                  {
                    v1138 = v1137;
                  }

                  v1139 = v975 + v2411 + v2350 + v1138;
                  do
                  {
                    _X12 = v1139 + v2362;
                    v1139 += v971;
                    __asm { PRFM            #0, [X12] }

                    v1142 = vmlaq_s16(vmulq_s16(v1127, v1135), v1126, v1136);
                    v1135.i64[0] = *v1139;
                    v1136 = vzip1q_s8(v1135, v26);
                    v1143 = vqtbl1q_s8(v1135, xmmword_2773B3E00);
                    v1143.i16[3] = *(v1139 + 8);
                    v1135 = vzip1q_s8(v1143, v26);
                    *(&v2447 + v1122) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1142, v1129, v1136), v1131, v1135), v27), 6uLL);
                    v1122 += 32;
                  }

                  while (v1122 != 256);
                  v1144 = 0;
                  _X10 = &_X25->i8[v971 + 8];
                  __asm { PRFM            #0, [X10] }

                  v1136.i64[0] = _X25->i64[1];
                  v1147 = vqtbl1q_s8(v1136, xmmword_2773B3E00);
                  v1147.i16[3] = _X25[1].i16[0];
                  v1148 = vzip1q_s8(v1147, v26);
                  v1075 = vzip1q_s8(v1136, v26);
                  if (v1137 >= v2418)
                  {
                    v1137 = v2418;
                  }

                  v1149 = v975 + v2411 + v2350 + v1137;
                  v1120 = v2422;
                  v1121 = 2 * v2417 + 8;
                  do
                  {
                    _X10 = v1149 + v2364;
                    v1149 += v971;
                    __asm { PRFM            #0, [X10] }

                    v1152 = vmlaq_s16(vmulq_s16(v1127, v1148), v1126, v1075);
                    v1148.i64[0] = *(v1149 + 8);
                    v1075 = vzip1q_s8(v1148, v26);
                    v1153 = vqtbl1q_s8(v1148, xmmword_2773B3E00);
                    v1153.i16[3] = *(v1149 + 16);
                    v1148 = vzip1q_s8(v1153, v26);
                    *(&v2448 + v1144) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1152, v1129, v1075), v1131, v1148), v27), 6uLL);
                    v1144 += 32;
                  }

                  while (v1144 != 256);
LABEL_627:
                  if (v974 == 64)
                  {
                    __asm { PRFM            #0, [X22] }

                    v1178 = v2379;
                    if (v2379 <= -16)
                    {
                      v1178 = -16;
                    }

                    if (v1178 >= v2418)
                    {
                      v1178 = v2418;
                    }

                    v1179 = (v2381 + v972 + v973 + v1178 + 16);
                    v1180 = 9;
                    v1156 = v2451;
                    do
                    {
                      _X11 = &v1179->i16[v971 / 2];
                      __asm { PRFUM           #0, [X11,#-0x10] }

                      v1183 = v1179[-1];
                      v1184 = vextq_s8(v1183, v1183, 2uLL);
                      v1184.i16[7] = v1179->i16[0];
                      v1185 = vrhaddq_u8(v1183, v1184);
                      v1184.i64[0] = v26.i64[0];
                      v1156[3] = vzip2q_s8(v1185, v26);
                      v1156 += 2;
                      vst2_s8(v1156->i8, *(&v1184 - 8));
                      --v1180;
                      v1179 = (v1179 + v971);
                    }

                    while (v1180 > 2);
                    v1186 = v1179[-1];
                    v1187 = vextq_s8(v1186, v1186, 2uLL);
                    v1187.i16[7] = v1179->i16[0];
                    v1176 = vrhaddq_u8(v1186, v1187);
                  }

                  else
                  {
                    if (v974 != 4)
                    {
                      if (v974)
                      {
                        v1190 = 0;
                        v1191 = v2365 * v2370 - (8 * v2370 + 8 * v2365) + 64;
                        v1192 = v26;
                        v1192.i32[0] = v1191 | (v1191 << 16);
                        v1193 = v26;
                        v1193.i32[0] = (8 * v2370 - v2365 * v2370) | ((8 * v2370 - v2365 * v2370) << 16);
                        v1194 = vqtbl1q_s8(v1192, xmmword_2773B3DF0);
                        v1195 = vqtbl1q_s8(v1193, xmmword_2773B3DF0);
                        v1196 = v26;
                        v1196.i32[0] = (8 * v2365 - v2365 * v2370) | ((8 * v2365 - v2365 * v2370) << 16);
                        v1197 = vqtbl1q_s8(v1196, xmmword_2773B3DF0);
                        v1198 = v26;
                        v1198.i32[0] = 65537 * v2365 * v2370;
                        v1199 = vqtbl1q_s8(v1198, xmmword_2773B3DF0);
                        v2460 = v1194;
                        v2461 = v1195;
                        v2462 = v1197;
                        v2463 = v1199;
                        _X9 = &_X22->i8[v971];
                        __asm { PRFM            #0, [X9] }

                        v1075.i64[0] = _X22->i64[0];
                        v1202 = vqtbl1q_s8(v1075, xmmword_2773B3E00);
                        v1202.i16[3] = _X22->i16[4];
                        v1203 = vzip1q_s8(v1202, v26);
                        v1204 = vzip1q_s8(v1075, v26);
                        v1205 = v2379;
                        if (v2379 <= -16)
                        {
                          v1205 = -16;
                        }

                        v1206 = v2418;
                        if (v1205 < v2418)
                        {
                          v1206 = v1205;
                        }

                        v1207 = v2381 + v972 + v973 + v1206;
                        do
                        {
                          _X12 = v1207 + v1083;
                          v1207 += v971;
                          __asm { PRFM            #0, [X12] }

                          v1210 = vmlaq_s16(vmulq_s16(v1195, v1203), v1194, v1204);
                          v1203.i64[0] = *v1207;
                          v1204 = vzip1q_s8(v1203, v26);
                          v1211 = vqtbl1q_s8(v1203, xmmword_2773B3E00);
                          v1211.i16[3] = *(v1207 + 8);
                          v1203 = vzip1q_s8(v1211, v26);
                          *(&v2452 + v1190) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1210, v1197, v1204), v1199, v1203), v27), 6uLL);
                          v1190 += 32;
                        }

                        while (v1190 != 256);
                        v1212 = 0;
                        _X10 = &_X22->i8[v971 + 8];
                        __asm { PRFM            #0, [X10] }

                        v1204.i64[0] = _X22->i64[1];
                        v1215 = vqtbl1q_s8(v1204, xmmword_2773B3E00);
                        v1215.i16[3] = _X22[1].i16[0];
                        v1216 = vzip1q_s8(v1215, v26);
                        v1217 = vzip1q_s8(v1204, v26);
                        if (v1205 >= v2418)
                        {
                          v1205 = v2418;
                        }

                        v1218 = v2381 + v972 + v973 + v1205;
                        do
                        {
                          _X10 = v1218 + v1121;
                          v1218 += v971;
                          __asm { PRFM            #0, [X10] }

                          v1221 = vmlaq_s16(vmulq_s16(v1195, v1216), v1194, v1217);
                          v1216.i64[0] = *(v1218 + 8);
                          v1217 = vzip1q_s8(v1216, v26);
                          v1222 = vqtbl1q_s8(v1216, xmmword_2773B3E00);
                          v1222.i16[3] = *(v1218 + 16);
                          v1216 = vzip1q_s8(v1222, v26);
                          *(&v2453 + v1212) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1221, v1197, v1217), v1199, v1216), v27), 6uLL);
                          v1212 += 32;
                        }

                        while (v1212 != 256);
                        goto LABEL_659;
                      }

                      __asm { PRFM            #0, [X22] }

                      v1155 = 9;
                      v1156 = v2451;
                      do
                      {
                        v1157 = _X22;
                        _X22 = (_X22 + v971);
                        __asm { PRFM            #0, [X22] }

                        v1159 = *v1157;
                        v1156[3] = vzip2q_s8(*v1157, v26);
                        v1156 += 2;
                        v1160 = v26.i64[0];
                        vst2_s8(v1156->i8, v1159);
                        --v1155;
                      }

                      while (v1155 > 2);
                      v1161 = *_X22;
                      v1162 = vzip2q_s8(*_X22, v26);
                      v1163 = v1156[2].i8;
                      v1164 = v26.i64[0];
                      vst2_s8(v1163, v1161);
LABEL_648:
                      v1156[3] = v1162;
LABEL_659:
                      v1223 = 4;
                      v1224 = &v2452;
                      do
                      {
                        a8 = v1224[1];
                        a9 = v1224[2];
                        a10 = v1224[3];
                        v1225 = vrhaddq_u16(v1224[-16], *v1224);
                        v1226 = vrhaddq_u16(v1224[-15], a8);
                        v1227 = vrhaddq_u16(v1224[-14], a9);
                        v25 = vrhaddq_u16(v1224[-13], a10);
                        if (v1120)
                        {
                          v1228 = *v141;
                          a8 = *(v141 + 16);
                          a9 = *(v141 + 32);
                          a10 = *(v141 + 48);
                          v141 += 64;
                          v1225 = vaddq_s16(v1228, v1225);
                          v1226 = vaddq_s16(a8, v1226);
                          v1227 = vaddq_s16(a9, v1227);
                          v25 = vaddq_s16(a10, v25);
                        }

                        v1224 += 4;
                        *v139 = vqmovun_high_s16(vqmovun_s16(v1225), v1226);
                        *(v139 + v971) = vqmovun_high_s16(vqmovun_s16(v1227), v25);
                        v139 = (v139 + v24);
                        --v1223;
                      }

                      while (v1223);
                      goto LABEL_1085;
                    }

                    _X8 = &_X22->i8[v971];
                    __asm { PRFM            #0, [X8] }

                    v1167 = *_X22;
                    v1168 = v2379;
                    if (v2379 <= -16)
                    {
                      v1168 = -16;
                    }

                    if (v1168 >= v2418)
                    {
                      v1168 = v2418;
                    }

                    v1169 = (v2381 + v972 + v973 + v1168);
                    v1170 = 9;
                    v1156 = v2451;
                    do
                    {
                      _X11 = &v1169->i8[v1083];
                      v1169 = (v1169 + v971);
                      __asm { PRFM            #0, [X11] }

                      v1173 = *v1169;
                      v1174 = vrhaddq_u8(v1167, *v1169);
                      v1175 = v26.i64[0];
                      v1156[3] = vzip2q_s8(v1174, v26);
                      v1156 += 2;
                      vst2_s8(v1156->i8, v1174);
                      --v1170;
                      v1167 = v1173;
                    }

                    while (v1170 > 2);
                    v1176 = vrhaddq_u8(v1173, *(v1169 + v971));
                  }

                  v1188 = v1156[2].i8;
                  v1189 = v26.i64[0];
                  vst2_s8(v1188, v1176);
                  v1162 = vzip2q_s8(v1176, v26);
                  goto LABEL_648;
                }

                __asm { PRFM            #0, [X25] }

                v1085 = 9;
                v1086 = v2446;
                do
                {
                  v1087 = _X25;
                  _X25 = (_X25 + v971);
                  __asm { PRFM            #0, [X25] }

                  v1089 = *v1087;
                  v1086[3] = vzip2q_s8(*v1087, v26);
                  v1086 += 2;
                  v1090 = v26.i64[0];
                  vst2_s8(v1086->i8, v1089);
                  --v1085;
                }

                while (v1085 > 2);
                v1091 = *_X25;
                v1092 = vzip2q_s8(*_X25, v26);
                v1093 = v1086[2].i8;
                v1094 = v26.i64[0];
                vst2_s8(v1093, v1091);
LABEL_616:
                v1120 = v2422;
                v1121 = 2 * v2417 + 8;
                v1086[3] = v1092;
                goto LABEL_627;
              }

              _X8 = &_X25->i8[v971];
              __asm { PRFM            #0, [X8] }

              v1097 = *_X25;
              v1098 = v2378;
              if (v2378 <= -16)
              {
                v1098 = -16;
              }

              if (v1098 >= v2418)
              {
                v1098 = v2418;
              }

              v1099 = (v975 + v2411 + v2350 + v1098);
              v1100 = 9;
              v1086 = v2446;
              do
              {
                _X11 = &v1099->i8[v2362];
                v1099 = (v1099 + v971);
                __asm { PRFM            #0, [X11] }

                v1103 = *v1099;
                v1104 = vrhaddq_u8(v1097, *v1099);
                v1105 = v26.i64[0];
                v1086[3] = vzip2q_s8(v1104, v26);
                v1086 += 2;
                vst2_s8(v1086->i8, v1104);
                --v1100;
                v1097 = v1103;
              }

              while (v1100 > 2);
              v1106 = vrhaddq_u8(v1103, *(v1099 + v971));
            }

            v1118 = v1086[2].i8;
            v1119 = v26.i64[0];
            vst2_s8(v1118, v1106);
            v1092 = vzip2q_s8(v1106, v26);
            goto LABEL_616;
          }

          switch(v68 & 0xFFFFFFF3 | (4 * (v38 & 3)))
          {
            case 1u:
              v759 = 0;
              v760 = (&v128[v2349] + v2417);
              v761 = (v760 + v2417 + v2417);
              v762 = vzip1q_s8(*(v761 + v2417), v26);
              v763 = vzip1q_s8(*v761, v26);
              v764 = vzip1q_s8(*(v760 + v2417), v26);
              v765 = vzip1q_s8(*v760, v26);
              v766 = vzip1q_s8(*&v128[v2349], v26);
              v767 = v2411 + v126 + v2344 * v127;
              v768 = (v2374 + v2346 + v767);
              do
              {
                v769 = v765;
                v765 = v764;
                v764 = v763;
                v763 = v762;
                v762 = vzip1q_s8(*v768, v26);
                v770 = vsubq_s16(vshlq_n_s16(vaddq_s16(v765, v764), 2uLL), vaddq_s16(v769, v763));
                *(&v2438 + v759) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v766, v770), vshlq_n_s16(v770, 2uLL)), vaddq_s16(v762, v28)), 5uLL))), v765);
                v759 += 32;
                v768 = (v768 + v2417);
                v766 = v769;
              }

              while (v759 != 256);
              v771 = 0;
              v772 = (&v128[v2349 + 2] + v2417);
              v773 = (v772 + v2417 + v2417);
              v774 = vzip1q_s8(*(v773 + v2417), v26);
              v775 = vzip1q_s8(*v773, v26);
              v776 = vzip1q_s8(*(v772 + v2417), v26);
              v777 = vzip1q_s8(*v772, v26);
              v778 = vzip1q_s8(*&v128[v2349 + 2], v26);
              v779 = (v2374 + v2345 + v767);
              v248 = v2390;
              do
              {
                v780 = v777;
                v777 = v776;
                v776 = v775;
                v775 = v774;
                v774 = vzip1q_s8(*v779, v26);
                v781 = vsubq_s16(vshlq_n_s16(vaddq_s16(v777, v776), 2uLL), vaddq_s16(v780, v775));
                *(&v2439 + v771) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v778, v781), vshlq_n_s16(v781, 2uLL)), vaddq_s16(v774, v28)), 5uLL))), v777);
                v771 += 32;
                v779 = (v779 + v2417);
                v778 = v780;
              }

              while (v771 != 256);
              break;
            case 2u:
              v625 = 0;
              v626 = (&v128[v2349] + v2417);
              v627 = (v626 + v2417 + v2417);
              v628 = vzip1q_s8(*(v627 + v2417), v26);
              v629 = vzip1q_s8(*v627, v26);
              v630 = vzip1q_s8(*(v626 + v2417), v26);
              v631 = vzip1q_s8(*v626, v26);
              v632 = vzip1q_s8(*&v128[v2349], v26);
              v633 = v2411 + v126 + v2344 * v127;
              v634 = (v2374 + v2346 + v633);
              do
              {
                v635 = v631;
                v631 = v630;
                v630 = v629;
                v629 = v628;
                v636 = &v2438.i8[v625];
                v628 = vzip1q_s8(*v634, v26);
                v637 = vsubq_s16(vshlq_n_s16(vaddq_s16(v631, v630), 2uLL), vaddq_s16(v635, v629));
                *v637.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v632, v637), vshlq_n_s16(v637, 2uLL)), vaddq_s16(v628, v28)), 5uLL));
                v638 = v26.i64[0];
                vst2_s8(v636, v637);
                v625 += 32;
                v634 = (v634 + v2417);
                v632 = v635;
              }

              while (v625 != 256);
              v639 = 0;
              v640 = (&v128[v2349 + 2] + v2417);
              v641 = (v640 + v2417 + v2417);
              v642 = vzip1q_s8(*(v641 + v2417), v26);
              v643 = vzip1q_s8(*v641, v26);
              v644 = vzip1q_s8(*(v640 + v2417), v26);
              v645 = vzip1q_s8(*v640, v26);
              v646 = vzip1q_s8(*&v128[v2349 + 2], v26);
              v647 = (v2374 + v2345 + v633);
              v248 = v2390;
              do
              {
                v648 = v645;
                v645 = v644;
                v644 = v643;
                v643 = v642;
                v649 = &v2439.i8[v639];
                v642 = vzip1q_s8(*v647, v26);
                v650 = vsubq_s16(vshlq_n_s16(vaddq_s16(v645, v644), 2uLL), vaddq_s16(v648, v643));
                *v650.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v646, v650), vshlq_n_s16(v650, 2uLL)), vaddq_s16(v642, v28)), 5uLL));
                v651 = v26.i64[0];
                vst2_s8(v649, v650);
                v639 += 32;
                v647 = (v647 + v2417);
                v646 = v648;
              }

              while (v639 != 256);
              break;
            case 3u:
              v713 = 0;
              v714 = (&v128[v2349] + v2417);
              v715 = (v714 + v2417 + v2417);
              v716 = vzip1q_s8(*(v715 + v2417), v26);
              v717 = vzip1q_s8(*v715, v26);
              v718 = vzip1q_s8(*(v714 + v2417), v26);
              v719 = vzip1q_s8(*v714, v26);
              v720 = vzip1q_s8(*&v128[v2349], v26);
              v721 = v2411 + v126 + v2344 * v127;
              v722 = (v2374 + v2346 + v721);
              do
              {
                v723 = v719;
                v719 = v718;
                v718 = v717;
                v717 = v716;
                v716 = vzip1q_s8(*v722, v26);
                v724 = vsubq_s16(vshlq_n_s16(vaddq_s16(v719, v718), 2uLL), vaddq_s16(v723, v717));
                *(&v2438 + v713) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v720, v724), vshlq_n_s16(v724, 2uLL)), vaddq_s16(v716, v28)), 5uLL))), v718);
                v713 += 32;
                v722 = (v722 + v2417);
                v720 = v723;
              }

              while (v713 != 256);
              v725 = 0;
              v726 = (&v128[v2349 + 2] + v2417);
              v727 = (v726 + v2417 + v2417);
              v728 = vzip1q_s8(*(v727 + v2417), v26);
              v729 = vzip1q_s8(*v727, v26);
              v730 = vzip1q_s8(*(v726 + v2417), v26);
              v731 = vzip1q_s8(*v726, v26);
              v732 = vzip1q_s8(*&v128[v2349 + 2], v26);
              v733 = (v2374 + v2345 + v721);
              v248 = v2390;
              do
              {
                v734 = v731;
                v731 = v730;
                v730 = v729;
                v729 = v728;
                v728 = vzip1q_s8(*v733, v26);
                v735 = vsubq_s16(vshlq_n_s16(vaddq_s16(v731, v730), 2uLL), vaddq_s16(v734, v729));
                *(&v2439 + v725) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v732, v735), vshlq_n_s16(v735, 2uLL)), vaddq_s16(v728, v28)), 5uLL))), v730);
                v725 += 32;
                v733 = (v733 + v2417);
                v732 = v734;
              }

              while (v725 != 256);
              break;
            case 4u:
              v561 = 0;
              v562 = (v128 - 2);
              do
              {
                v563 = *v562;
                v562 = (v562 + v2417);
                v564 = vzip1q_s8(vextq_s8(v563, v563, 2uLL), v26);
                v565 = vsubq_s16(vshlq_n_s16(vaddq_s16(v564, vzip1q_s8(vextq_s8(v563, v563, 3uLL), v26)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v563, v563, 1uLL), v26), vzip1q_s8(vextq_s8(v563, v563, 4uLL), v26)));
                *(&v2438 + v561) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v565, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v563, v26), vzip1q_s8(vextq_s8(v563, v563, 5uLL), v26)), v565)), v28), 5uLL))), v564);
                v561 += 32;
              }

              while (v561 != 256);
              v566 = 0;
              v567 = (v128 + 6);
              v248 = v2390;
              do
              {
                v568 = *v567;
                v567 = (v567 + v2417);
                v569 = vzip1q_s8(vextq_s8(v568, v568, 2uLL), v26);
                v570 = vsubq_s16(vshlq_n_s16(vaddq_s16(v569, vzip1q_s8(vextq_s8(v568, v568, 3uLL), v26)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v568, v568, 1uLL), v26), vzip1q_s8(vextq_s8(v568, v568, 4uLL), v26)));
                *(&v2439 + v566) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v570, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v568, v26), vzip1q_s8(vextq_s8(v568, v568, 5uLL), v26)), v570)), v28), 5uLL))), v569);
                v566 += 32;
              }

              while (v566 != 256);
              break;
            case 5u:
              v671 = v128;
              v672 = 2 * v2425;
              v673 = 2;
              goto LABEL_484;
            case 6u:
              v550 = v140;
              sub_27729BFC4(v2438.i8, 0x20u, v128, v2420);
              sub_27729BFC4(v2439.i8, 0x20u, (v128 + 2), v2420);
              goto LABEL_666;
            case 7u:
              v671 = v128;
              v672 = 2 * v2425;
              v673 = 3;
LABEL_484:
              v807 = 2;
              goto LABEL_544;
            case 8u:
              v1502 = 0;
              v1503 = (v128 - 2);
              do
              {
                v1504 = &v2438.i8[v1502];
                v1505 = *v1503;
                v1503 = (v1503 + v2417);
                v1506 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1505, v1505, 2uLL), v26), vzip1q_s8(vextq_s8(v1505, v1505, 3uLL), v26)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1505, v1505, 1uLL), v26), vzip1q_s8(vextq_s8(v1505, v1505, 4uLL), v26)));
                *v1505.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1506, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1505, v26), vzip1q_s8(vextq_s8(v1505, v1505, 5uLL), v26)), v1506)), v28), 5uLL));
                v1506.i64[0] = v26.i64[0];
                vst2_s8(v1504, v1505);
                v1502 += 32;
              }

              while (v1502 != 256);
              v1507 = 0;
              v1508 = (v128 + 6);
              v248 = v2390;
              do
              {
                v1509 = &v2439.i8[v1507];
                v1510 = *v1508;
                v1508 = (v1508 + v2417);
                v1511 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1510, v1510, 2uLL), v26), vzip1q_s8(vextq_s8(v1510, v1510, 3uLL), v26)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1510, v1510, 1uLL), v26), vzip1q_s8(vextq_s8(v1510, v1510, 4uLL), v26)));
                *v1510.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1511, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1510, v26), vzip1q_s8(vextq_s8(v1510, v1510, 5uLL), v26)), v1511)), v28), 5uLL));
                v1511.i64[0] = v26.i64[0];
                vst2_s8(v1509, v1510);
                v1507 += 32;
              }

              while (v1507 != 256);
              break;
            case 9u:
              v550 = v140;
              sub_27729B614(v2438.i8, 0x20u, v128, v2420, 8);
              sub_27729B614(v2439.i8, 0x20u, (v128 + 2), v2420, 8);
              goto LABEL_666;
            case 0xAu:
              v550 = v140;
              sub_27729B7DC(&v2438, 32, v128, v2420, 8);
              sub_27729B7DC(&v2439, 32, (v128 + 2), v2420, 8);
              goto LABEL_666;
            case 0xBu:
              v550 = v140;
              sub_27729B98C(v2438.i8, 0x20u, v128, v2420, 8);
              sub_27729B98C(v2439.i8, 0x20u, (v128 + 2), v2420, 8);
              goto LABEL_666;
            case 0xCu:
              v581 = 0;
              v582 = (v128 - 2);
              do
              {
                v583 = *v582;
                v582 = (v582 + v2417);
                v584 = vzip1q_s8(vextq_s8(v583, v583, 3uLL), v26);
                v585 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v583, v583, 2uLL), v26), v584), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v583, v583, 1uLL), v26), vzip1q_s8(vextq_s8(v583, v583, 4uLL), v26)));
                *(&v2438 + v581) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v585, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v583, v26), vzip1q_s8(vextq_s8(v583, v583, 5uLL), v26)), v585)), v28), 5uLL))), v584);
                v581 += 32;
              }

              while (v581 != 256);
              v586 = 0;
              v587 = (v128 + 6);
              v248 = v2390;
              do
              {
                v588 = *v587;
                v587 = (v587 + v2417);
                v589 = vzip1q_s8(vextq_s8(v588, v588, 3uLL), v26);
                v590 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v588, v588, 2uLL), v26), v589), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v588, v588, 1uLL), v26), vzip1q_s8(vextq_s8(v588, v588, 4uLL), v26)));
                *(&v2439 + v586) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v590, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v588, v26), vzip1q_s8(vextq_s8(v588, v588, 5uLL), v26)), v590)), v28), 5uLL))), v589);
                v586 += 32;
              }

              while (v586 != 256);
              break;
            case 0xDu:
              v671 = v128;
              v672 = 2 * v2425;
              v673 = 2;
              goto LABEL_543;
            case 0xEu:
              v550 = v140;
              sub_27729C39C(v2438.i8, 0x20u, v128, v2420);
              sub_27729C39C(v2439.i8, 0x20u, (v128 + 2), v2420);
LABEL_666:
              v140 = v550;
              goto LABEL_667;
            case 0xFu:
              v671 = v128;
              v672 = 2 * v2425;
              v673 = 3;
LABEL_543:
              v807 = 3;
LABEL_544:
              v966 = v140;
              sub_27729AF04(v2438.i8, v671, v672, 8, v673, v807);
              v140 = v966;
LABEL_667:
              v28.i64[0] = 0x10001000100010;
              v28.i64[1] = 0x10001000100010;
              v10 = v2434;
              v26 = v2436;
              v248 = v2390;
              break;
            default:
              v246 = v149 + v68 - 8;
              v247 = &v2438;
              v248 = v2390;
              do
              {
                v249 = *v128;
                v128 = (v128 + v2417);
                *v247 = vzip1q_s8(v249, v26);
                v247[1] = vzip2q_s8(v249, v26);
                v247 += 2;
                _CF = __CFADD__(v246++, 1);
              }

              while (!_CF);
              break;
          }

          switch(v140)
          {
            case 1:
              v1312 = 0;
              v1233 = 2 * v2425;
              v1313 = (&v248[v2349] + v2417);
              v1314 = (v1313 + v2417 + v2417);
              v1315 = vzip1q_s8(*(v1314 + v2417), v26);
              v1316 = vzip1q_s8(*v1314, v26);
              v1317 = vzip1q_s8(*(v1313 + v2417), v26);
              v1318 = vzip1q_s8(*v1313, v26);
              v1319 = vzip1q_s8(*&v248[v2349], v26);
              v1234 = v2383;
              v1320 = v2383 + v2376 + v2344 * v2375;
              v1321 = (v2377 + v2346 + v1320);
              do
              {
                v1322 = v1318;
                v1318 = v1317;
                v1317 = v1316;
                v1316 = v1315;
                v1315 = vzip1q_s8(*v1321, v26);
                v1323 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1318, v1317), 2uLL), vaddq_s16(v1322, v1316));
                *(&v2442 + v1312) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1319, v1323), vshlq_n_s16(v1323, 2uLL)), vaddq_s16(v1315, v28)), 5uLL))), v1318);
                v1312 += 32;
                v1321 = (v1321 + v2417);
                v1319 = v1322;
              }

              while (v1312 != 256);
              v1324 = 0;
              v1325 = (&v248[v2349 + 2] + v2417);
              v1326 = (v1325 + v2417 + v2417);
              v1327 = vzip1q_s8(*(v1326 + v2417), v26);
              v1328 = vzip1q_s8(*v1326, v26);
              v1329 = vzip1q_s8(*(v1325 + v2417), v26);
              v1330 = vzip1q_s8(*v1325, v26);
              v1331 = vzip1q_s8(*&v248[v2349 + 2], v26);
              v1332 = (v2377 + v2345 + v1320);
              v1232 = v2423;
              v24 = 4 * v2425;
              v27.i64[0] = 0x20002000200020;
              v27.i64[1] = 0x20002000200020;
              v1235 = v2357;
              _X22 = v2360;
              v1236 = v2354;
              v1237 = v2380;
              do
              {
                v1333 = v1330;
                v1330 = v1329;
                v1329 = v1328;
                v1328 = v1327;
                v1327 = vzip1q_s8(*v1332, v26);
                v1334 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1330, v1329), 2uLL), vaddq_s16(v1333, v1328));
                *(&v2443 + v1324) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1331, v1334), vshlq_n_s16(v1334, 2uLL)), vaddq_s16(v1327, v28)), 5uLL))), v1330);
                v1324 += 32;
                v1332 = (v1332 + v2417);
                v1331 = v1333;
              }

              while (v1324 != 256);
              break;
            case 2:
              v1259 = 0;
              v1233 = 2 * v2425;
              v1260 = (&v248[v2349] + v2417);
              v1261 = (v1260 + v2417 + v2417);
              v1262 = vzip1q_s8(*(v1261 + v2417), v26);
              v1263 = vzip1q_s8(*v1261, v26);
              v1264 = vzip1q_s8(*(v1260 + v2417), v26);
              v1265 = vzip1q_s8(*v1260, v26);
              v1266 = vzip1q_s8(*&v248[v2349], v26);
              v1234 = v2383;
              v1267 = v2383 + v2376 + v2344 * v2375;
              v1268 = (v2377 + v2346 + v1267);
              do
              {
                v1269 = v1265;
                v1265 = v1264;
                v1264 = v1263;
                v1263 = v1262;
                v1270 = &v2442.i8[v1259];
                v1262 = vzip1q_s8(*v1268, v26);
                v1271 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1265, v1264), 2uLL), vaddq_s16(v1269, v1263));
                *v1271.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1266, v1271), vshlq_n_s16(v1271, 2uLL)), vaddq_s16(v1262, v28)), 5uLL));
                v1272 = v26.i64[0];
                vst2_s8(v1270, v1271);
                v1259 += 32;
                v1268 = (v1268 + v2417);
                v1266 = v1269;
              }

              while (v1259 != 256);
              v1273 = 0;
              v1274 = (&v248[v2349 + 2] + v2417);
              v1275 = (v1274 + v2417 + v2417);
              v1276 = vzip1q_s8(*(v1275 + v2417), v26);
              v1277 = vzip1q_s8(*v1275, v26);
              v1278 = vzip1q_s8(*(v1274 + v2417), v26);
              v1279 = vzip1q_s8(*v1274, v26);
              v1280 = vzip1q_s8(*&v248[v2349 + 2], v26);
              v1281 = (v2377 + v2345 + v1267);
              v1232 = v2423;
              v24 = 4 * v2425;
              v27.i64[0] = 0x20002000200020;
              v27.i64[1] = 0x20002000200020;
              v1235 = v2357;
              _X22 = v2360;
              v1236 = v2354;
              v1237 = v2380;
              do
              {
                v1282 = v1279;
                v1279 = v1278;
                v1278 = v1277;
                v1277 = v1276;
                v1283 = &v2443.i8[v1273];
                v1276 = vzip1q_s8(*v1281, v26);
                v1284 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1279, v1278), 2uLL), vaddq_s16(v1282, v1277));
                *v1284.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1280, v1284), vshlq_n_s16(v1284, 2uLL)), vaddq_s16(v1276, v28)), 5uLL));
                v1285 = v26.i64[0];
                vst2_s8(v1283, v1284);
                v1273 += 32;
                v1281 = (v1281 + v2417);
                v1280 = v1282;
              }

              while (v1273 != 256);
              break;
            case 3:
              v1289 = 0;
              v1233 = 2 * v2425;
              v1290 = (&v248[v2349] + v2417);
              v1291 = (v1290 + v2417 + v2417);
              v1292 = vzip1q_s8(*(v1291 + v2417), v26);
              v1293 = vzip1q_s8(*v1291, v26);
              v1294 = vzip1q_s8(*(v1290 + v2417), v26);
              v1295 = vzip1q_s8(*v1290, v26);
              v1296 = vzip1q_s8(*&v248[v2349], v26);
              v1234 = v2383;
              v1297 = v2383 + v2376 + v2344 * v2375;
              v1298 = (v2377 + v2346 + v1297);
              do
              {
                v1299 = v1295;
                v1295 = v1294;
                v1294 = v1293;
                v1293 = v1292;
                v1292 = vzip1q_s8(*v1298, v26);
                v1300 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1295, v1294), 2uLL), vaddq_s16(v1299, v1293));
                *(&v2442 + v1289) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1296, v1300), vshlq_n_s16(v1300, 2uLL)), vaddq_s16(v1292, v28)), 5uLL))), v1294);
                v1289 += 32;
                v1298 = (v1298 + v2417);
                v1296 = v1299;
              }

              while (v1289 != 256);
              v1301 = 0;
              v1302 = (&v248[v2349 + 2] + v2417);
              v1303 = (v1302 + v2417 + v2417);
              v1304 = vzip1q_s8(*(v1303 + v2417), v26);
              v1305 = vzip1q_s8(*v1303, v26);
              v1306 = vzip1q_s8(*(v1302 + v2417), v26);
              v1307 = vzip1q_s8(*v1302, v26);
              v1308 = vzip1q_s8(*&v248[v2349 + 2], v26);
              v1309 = (v2377 + v2345 + v1297);
              v1232 = v2423;
              v24 = 4 * v2425;
              v27.i64[0] = 0x20002000200020;
              v27.i64[1] = 0x20002000200020;
              v1235 = v2357;
              _X22 = v2360;
              v1236 = v2354;
              v1237 = v2380;
              do
              {
                v1310 = v1307;
                v1307 = v1306;
                v1306 = v1305;
                v1305 = v1304;
                v1304 = vzip1q_s8(*v1309, v26);
                v1311 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1307, v1306), 2uLL), vaddq_s16(v1310, v1305));
                *(&v2443 + v1301) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v1308, v1311), vshlq_n_s16(v1311, 2uLL)), vaddq_s16(v1304, v28)), 5uLL))), v1306);
                v1301 += 32;
                v1309 = (v1309 + v2417);
                v1308 = v1310;
              }

              while (v1301 != 256);
              break;
            case 4:
              v1239 = 0;
              v1240 = (v248 - 2);
              v1233 = 2 * v2425;
              do
              {
                v1241 = *v1240;
                v1240 = (v1240 + v2417);
                v1242 = vzip1q_s8(vextq_s8(v1241, v1241, 2uLL), v26);
                v1243 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1242, vzip1q_s8(vextq_s8(v1241, v1241, 3uLL), v26)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1241, v1241, 1uLL), v26), vzip1q_s8(vextq_s8(v1241, v1241, 4uLL), v26)));
                *(&v2442 + v1239) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1243, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1241, v26), vzip1q_s8(vextq_s8(v1241, v1241, 5uLL), v26)), v1243)), v28), 5uLL))), v1242);
                v1239 += 32;
              }

              while (v1239 != 256);
              v1244 = 0;
              v1245 = (v248 + 6);
              v1232 = v2423;
              v24 = 4 * v2425;
              v27.i64[0] = 0x20002000200020;
              v27.i64[1] = 0x20002000200020;
              v1235 = v2357;
              _X22 = v2360;
              v1234 = v2383;
              v1236 = v2354;
              v1237 = v2380;
              do
              {
                v1246 = *v1245;
                v1245 = (v1245 + v2417);
                v1247 = vzip1q_s8(vextq_s8(v1246, v1246, 2uLL), v26);
                v1248 = vsubq_s16(vshlq_n_s16(vaddq_s16(v1247, vzip1q_s8(vextq_s8(v1246, v1246, 3uLL), v26)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1246, v1246, 1uLL), v26), vzip1q_s8(vextq_s8(v1246, v1246, 4uLL), v26)));
                *(&v2443 + v1244) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1248, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1246, v26), vzip1q_s8(vextq_s8(v1246, v1246, 5uLL), v26)), v1248)), v28), 5uLL))), v1247);
                v1244 += 32;
              }

              while (v1244 != 256);
              break;
            case 5:
              v1286 = v248;
              v1287 = 2 * v2425;
              v1288 = 2;
              goto LABEL_704;
            case 6:
              sub_27729BFC4(v2442.i8, 0x20u, v248, v2420);
              sub_27729BFC4(v2443.i8, 0x20u, (v248 + 2), v2420);
              goto LABEL_708;
            case 7:
              v1286 = v248;
              v1287 = 2 * v2425;
              v1288 = 3;
LABEL_704:
              v1335 = 2;
              goto LABEL_707;
            case 8:
              v1522 = 0;
              v1523 = (v248 - 2);
              v1233 = 2 * v2425;
              do
              {
                v1524 = &v2442.i8[v1522];
                v1525 = *v1523;
                v1523 = (v1523 + v2417);
                v1526 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1525, v1525, 2uLL), v26), vzip1q_s8(vextq_s8(v1525, v1525, 3uLL), v26)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1525, v1525, 1uLL), v26), vzip1q_s8(vextq_s8(v1525, v1525, 4uLL), v26)));
                *v1525.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1526, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1525, v26), vzip1q_s8(vextq_s8(v1525, v1525, 5uLL), v26)), v1526)), v28), 5uLL));
                v1526.i64[0] = v26.i64[0];
                vst2_s8(v1524, v1525);
                v1522 += 32;
              }

              while (v1522 != 256);
              v1527 = 0;
              v1528 = (v248 + 6);
              v1232 = v2423;
              v24 = 4 * v2425;
              v27.i64[0] = 0x20002000200020;
              v27.i64[1] = 0x20002000200020;
              v1235 = v2357;
              _X22 = v2360;
              v1234 = v2383;
              v1236 = v2354;
              v1237 = v2380;
              do
              {
                v1529 = &v2443.i8[v1527];
                v1530 = *v1528;
                v1528 = (v1528 + v2417);
                v1531 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1530, v1530, 2uLL), v26), vzip1q_s8(vextq_s8(v1530, v1530, 3uLL), v26)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1530, v1530, 1uLL), v26), vzip1q_s8(vextq_s8(v1530, v1530, 4uLL), v26)));
                *v1530.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1531, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1530, v26), vzip1q_s8(vextq_s8(v1530, v1530, 5uLL), v26)), v1531)), v28), 5uLL));
                v1531.i64[0] = v26.i64[0];
                vst2_s8(v1529, v1530);
                v1527 += 32;
              }

              while (v1527 != 256);
              break;
            case 9:
              sub_27729B614(v2442.i8, 0x20u, v248, v2420, 8);
              sub_27729B614(v2443.i8, 0x20u, (v248 + 2), v2420, 8);
              goto LABEL_708;
            case 10:
              sub_27729B7DC(&v2442, 32, v248, v2420, 8);
              sub_27729B7DC(&v2443, 32, (v248 + 2), v2420, 8);
              goto LABEL_708;
            case 11:
              sub_27729B98C(v2442.i8, 0x20u, v248, v2420, 8);
              sub_27729B98C(v2443.i8, 0x20u, (v248 + 2), v2420, 8);
              goto LABEL_708;
            case 12:
              v1249 = 0;
              v1250 = (v248 - 2);
              v1233 = 2 * v2425;
              do
              {
                v1251 = *v1250;
                v1250 = (v1250 + v2417);
                v1252 = vzip1q_s8(vextq_s8(v1251, v1251, 3uLL), v26);
                v1253 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1251, v1251, 2uLL), v26), v1252), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1251, v1251, 1uLL), v26), vzip1q_s8(vextq_s8(v1251, v1251, 4uLL), v26)));
                *(&v2442 + v1249) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1253, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1251, v26), vzip1q_s8(vextq_s8(v1251, v1251, 5uLL), v26)), v1253)), v28), 5uLL))), v1252);
                v1249 += 32;
              }

              while (v1249 != 256);
              v1254 = 0;
              v1255 = (v248 + 6);
              v1232 = v2423;
              v24 = 4 * v2425;
              v27.i64[0] = 0x20002000200020;
              v27.i64[1] = 0x20002000200020;
              v1235 = v2357;
              _X22 = v2360;
              v1234 = v2383;
              v1236 = v2354;
              v1237 = v2380;
              do
              {
                v1256 = *v1255;
                v1255 = (v1255 + v2417);
                v1257 = vzip1q_s8(vextq_s8(v1256, v1256, 3uLL), v26);
                v1258 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v1256, v1256, 2uLL), v26), v1257), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v1256, v1256, 1uLL), v26), vzip1q_s8(vextq_s8(v1256, v1256, 4uLL), v26)));
                *(&v2443 + v1254) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v1258, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v1256, v26), vzip1q_s8(vextq_s8(v1256, v1256, 5uLL), v26)), v1258)), v28), 5uLL))), v1257);
                v1254 += 32;
              }

              while (v1254 != 256);
              break;
            case 13:
              v1286 = v248;
              v1287 = 2 * v2425;
              v1288 = 2;
              goto LABEL_706;
            case 14:
              sub_27729C39C(v2442.i8, 0x20u, v248, v2420);
              sub_27729C39C(v2443.i8, 0x20u, (v248 + 2), v2420);
              goto LABEL_708;
            case 15:
              v1286 = v248;
              v1287 = 2 * v2425;
              v1288 = 3;
LABEL_706:
              v1335 = 3;
LABEL_707:
              sub_27729AF04(v2442.i8, v1286, v1287, 8, v1288, v1335);
LABEL_708:
              v28.i64[0] = 0x10001000100010;
              v28.i64[1] = 0x10001000100010;
              v10 = v2434;
              v26 = v2436;
              v1232 = v2423;
              v1233 = 2 * v2425;
              v24 = 4 * v2425;
              v27.i64[0] = 0x20002000200020;
              v27.i64[1] = 0x20002000200020;
              v1235 = v2357;
              _X22 = v2360;
              v1234 = v2383;
              v1236 = v2354;
              v1237 = v2380;
              break;
            default:
              v1229 = v2348 + v2373 - 8;
              _X22 = v2360;
              v1230 = &v2442;
              v1232 = v2423;
              v1233 = 2 * v2425;
              v24 = 4 * v2425;
              v27.i64[0] = 0x20002000200020;
              v27.i64[1] = 0x20002000200020;
              v1234 = v2383;
              v1235 = v2357;
              v1236 = v2354;
              v1237 = v2380;
              do
              {
                v1238 = *v248;
                v248 = (v248 + v2417);
                *v1230 = vzip1q_s8(v1238, v26);
                v1230[1] = vzip2q_s8(v1238, v26);
                v1230 += 2;
                _CF = __CFADD__(v1229++, 1);
              }

              while (!_CF);
              break;
          }

          v1336 = 0;
          do
          {
            v1337 = *(&v2443 + v1336);
            v1338 = vrhaddq_u16(*(&v2438 + v1336), *(&v2442 + v1336));
            v1339 = vrhaddq_u16(*(&v2438 + v1336 + 16), v1337);
            v1340 = vrhaddq_u16(*(&v2440 + v1336), *(&v2444 + v1336));
            v1341 = vrhaddq_u16(v2441[v1336 / 0x10], v2445[v1336 / 0x10]);
            if (v1232)
            {
              v1342 = *v138;
              v1337 = *(v138 + 16);
              v1343 = *(v138 + 32);
              v1344 = *(v138 + 48);
              v138 += 64;
              v1338 = vaddq_s16(v1342, v1338);
              v1339 = vaddq_s16(v1337, v1339);
              v1340 = vaddq_s16(v1343, v1340);
              v1341 = vaddq_s16(v1344, v1341);
            }

            *v137 = vqmovun_high_s16(vqmovun_s16(v1338), v1339);
            *(v137 + v1233) = vqmovun_high_s16(vqmovun_s16(v1340), v1341);
            v137 = (v137 + v24);
            v1336 += 64;
          }

          while (v1336 != 256);
          if (v2401 == 64)
          {
            __asm { PRFM            #0, [X25] }

            v1370 = v2378;
            if (v2378 <= -16)
            {
              v1370 = -16;
            }

            if (v1370 >= v2418)
            {
              v1370 = v2418;
            }

            v1371 = (v1237 + v2411 + v2350 + v1370 + 16);
            v1372 = 5;
            v1348 = v2446;
            v1345 = 2 * v2417;
            do
            {
              _X11 = &v1371->i16[v1233 / 2];
              __asm { PRFUM           #0, [X11,#-0x10] }

              v1375 = v1371[-1];
              v1376 = vextq_s8(v1375, v1375, 2uLL);
              v1376.i16[7] = v1371->i16[0];
              v1377 = vrhaddq_u8(v1375, v1376);
              v1376.i64[0] = v26.i64[0];
              v1348[3] = vzip2q_s8(v1377, v26);
              v1348 += 2;
              vst2_s8(v1348->i8, *(&v1376 - 8));
              --v1372;
              v1371 = (v1371 + v1233);
            }

            while (v1372 > 2);
            v1378 = v1371[-1];
            v1379 = vextq_s8(v1378, v1378, 2uLL);
            v1379.i16[7] = v1371->i16[0];
            v1368 = vrhaddq_u8(v1378, v1379);
          }

          else
          {
            v1345 = 2 * v2417;
            if (v2401 != 4)
            {
              if (v2401)
              {
                v1384 = 0;
                v1385 = v119 * v2385 - (8 * v2385 + 8 * v119) + 64;
                v1386 = v26;
                v1386.i32[0] = v1385 | (v1385 << 16);
                v1387 = v26;
                v1387.i32[0] = (8 * v2385 - v119 * v2385) | ((8 * v2385 - v119 * v2385) << 16);
                v1388 = vqtbl1q_s8(v1386, xmmword_2773B3DF0);
                v1389 = vqtbl1q_s8(v1387, xmmword_2773B3DF0);
                v1390 = v26;
                v1390.i32[0] = (8 * v119 - v119 * v2385) | ((8 * v119 - v119 * v2385) << 16);
                v1391 = vqtbl1q_s8(v1390, xmmword_2773B3DF0);
                v1392 = v26;
                v1392.i32[0] = 65537 * v119 * v2385;
                v1393 = vqtbl1q_s8(v1392, xmmword_2773B3DF0);
                v2456 = v1388;
                v2457 = v1389;
                v2458 = v1391;
                v2459 = v1393;
                _X9 = &_X25->i8[v1233];
                __asm { PRFM            #0, [X9] }

                v1337.i64[0] = _X25->i64[0];
                v1396 = vqtbl1q_s8(v1337, xmmword_2773B3E00);
                v1396.i16[3] = _X25->i16[4];
                v1397 = vzip1q_s8(v1396, v26);
                v1398 = vzip1q_s8(v1337, v26);
                v1399 = v2378;
                if (v2378 <= -16)
                {
                  v1399 = -16;
                }

                v1400 = v2418;
                if (v1399 < v2418)
                {
                  v1400 = v1399;
                }

                v1401 = v1237 + v2411 + v2350 + v1400;
                do
                {
                  _X12 = v1401 + v2362;
                  v1401 += v1233;
                  __asm { PRFM            #0, [X12] }

                  v1404 = vmlaq_s16(vmulq_s16(v1389, v1397), v1388, v1398);
                  v1397.i64[0] = *v1401;
                  v1398 = vzip1q_s8(v1397, v26);
                  v1405 = vqtbl1q_s8(v1397, xmmword_2773B3E00);
                  v1405.i16[3] = *(v1401 + 8);
                  v1397 = vzip1q_s8(v1405, v26);
                  *(&v2447 + v1384) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1404, v1391, v1398), v1393, v1397), v27), 6uLL);
                  v1384 += 32;
                }

                while (v1384 != 128);
                v1406 = 0;
                _X10 = &_X25->i8[v1233 + 8];
                __asm { PRFM            #0, [X10] }

                v1398.i64[0] = _X25->i64[1];
                v1409 = vqtbl1q_s8(v1398, xmmword_2773B3E00);
                v1409.i16[3] = _X25[1].i16[0];
                v1410 = vzip1q_s8(v1409, v26);
                v1337 = vzip1q_s8(v1398, v26);
                if (v1399 >= v2418)
                {
                  v1399 = v2418;
                }

                v1411 = v1237 + v2411 + v2350 + v1399;
                v1382 = v2422;
                v1383 = 2 * v2417 + 8;
                do
                {
                  _X10 = v1411 + v2364;
                  v1411 += v1233;
                  __asm { PRFM            #0, [X10] }

                  v1414 = vmlaq_s16(vmulq_s16(v1389, v1410), v1388, v1337);
                  v1410.i64[0] = *(v1411 + 8);
                  v1337 = vzip1q_s8(v1410, v26);
                  v1415 = vqtbl1q_s8(v1410, xmmword_2773B3E00);
                  v1415.i16[3] = *(v1411 + 16);
                  v1410 = vzip1q_s8(v1415, v26);
                  *(&v2448 + v1406) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1414, v1391, v1337), v1393, v1410), v27), 6uLL);
                  v1406 += 32;
                }

                while (v1406 != 128);
LABEL_745:
                if (v1236 == 64)
                {
                  __asm { PRFM            #0, [X22] }

                  v1440 = v2379;
                  if (v2379 <= -16)
                  {
                    v1440 = -16;
                  }

                  if (v1440 >= v2418)
                  {
                    v1440 = v2418;
                  }

                  v1441 = (v2381 + v1234 + v1235 + v1440 + 16);
                  v1442 = 5;
                  v1418 = v2451;
                  do
                  {
                    _X11 = &v1441->i16[v1233 / 2];
                    __asm { PRFUM           #0, [X11,#-0x10] }

                    v1445 = v1441[-1];
                    v1446 = vextq_s8(v1445, v1445, 2uLL);
                    v1446.i16[7] = v1441->i16[0];
                    v1447 = vrhaddq_u8(v1445, v1446);
                    v1446.i64[0] = v26.i64[0];
                    v1418[3] = vzip2q_s8(v1447, v26);
                    v1418 += 2;
                    vst2_s8(v1418->i8, *(&v1446 - 8));
                    --v1442;
                    v1441 = (v1441 + v1233);
                  }

                  while (v1442 > 2);
                  v1448 = v1441[-1];
                  v1449 = vextq_s8(v1448, v1448, 2uLL);
                  v1449.i16[7] = v1441->i16[0];
                  v1438 = vrhaddq_u8(v1448, v1449);
                }

                else
                {
                  if (v1236 != 4)
                  {
                    if (v1236)
                    {
                      v1452 = 0;
                      v1453 = v2365 * v2370 - (8 * v2370 + 8 * v2365) + 64;
                      v1454 = v26;
                      v1454.i32[0] = v1453 | (v1453 << 16);
                      v1455 = v26;
                      v1455.i32[0] = (8 * v2370 - v2365 * v2370) | ((8 * v2370 - v2365 * v2370) << 16);
                      v1456 = vqtbl1q_s8(v1454, xmmword_2773B3DF0);
                      v1457 = vqtbl1q_s8(v1455, xmmword_2773B3DF0);
                      v1458 = v26;
                      v1458.i32[0] = (8 * v2365 - v2365 * v2370) | ((8 * v2365 - v2365 * v2370) << 16);
                      v1459 = vqtbl1q_s8(v1458, xmmword_2773B3DF0);
                      v1460 = v26;
                      v1460.i32[0] = 65537 * v2365 * v2370;
                      v1461 = vqtbl1q_s8(v1460, xmmword_2773B3DF0);
                      v2460 = v1456;
                      v2461 = v1457;
                      v2462 = v1459;
                      v2463 = v1461;
                      _X9 = &_X22->i8[v1233];
                      __asm { PRFM            #0, [X9] }

                      v1337.i64[0] = _X22->i64[0];
                      v1464 = vqtbl1q_s8(v1337, xmmword_2773B3E00);
                      v1464.i16[3] = _X22->i16[4];
                      v1465 = vzip1q_s8(v1464, v26);
                      v1466 = vzip1q_s8(v1337, v26);
                      v1467 = v2379;
                      if (v2379 <= -16)
                      {
                        v1467 = -16;
                      }

                      v1468 = v2418;
                      if (v1467 < v2418)
                      {
                        v1468 = v1467;
                      }

                      v1469 = v2381 + v1234 + v1235 + v1468;
                      do
                      {
                        _X12 = v1469 + v1345;
                        v1469 += v1233;
                        __asm { PRFM            #0, [X12] }

                        v1472 = vmlaq_s16(vmulq_s16(v1457, v1465), v1456, v1466);
                        v1465.i64[0] = *v1469;
                        v1466 = vzip1q_s8(v1465, v26);
                        v1473 = vqtbl1q_s8(v1465, xmmword_2773B3E00);
                        v1473.i16[3] = *(v1469 + 8);
                        v1465 = vzip1q_s8(v1473, v26);
                        *(&v2452 + v1452) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1472, v1459, v1466), v1461, v1465), v27), 6uLL);
                        v1452 += 32;
                      }

                      while (v1452 != 128);
                      v1474 = 0;
                      _X10 = &_X22->i8[v1233 + 8];
                      __asm { PRFM            #0, [X10] }

                      v1466.i64[0] = _X22->i64[1];
                      v1477 = vqtbl1q_s8(v1466, xmmword_2773B3E00);
                      v1477.i16[3] = _X22[1].i16[0];
                      v1478 = vzip1q_s8(v1477, v26);
                      v1479 = vzip1q_s8(v1466, v26);
                      if (v1467 >= v2418)
                      {
                        v1467 = v2418;
                      }

                      v1480 = v2381 + v1234 + v1235 + v1467;
                      do
                      {
                        _X10 = v1480 + v1383;
                        v1480 += v1233;
                        __asm { PRFM            #0, [X10] }

                        v1483 = vmlaq_s16(vmulq_s16(v1457, v1478), v1456, v1479);
                        v1478.i64[0] = *(v1480 + 8);
                        v1479 = vzip1q_s8(v1478, v26);
                        v1484 = vqtbl1q_s8(v1478, xmmword_2773B3E00);
                        v1484.i16[3] = *(v1480 + 16);
                        v1478 = vzip1q_s8(v1484, v26);
                        *(&v2453 + v1474) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1483, v1459, v1479), v1461, v1478), v27), 6uLL);
                        v1474 += 32;
                      }

                      while (v1474 != 128);
                      goto LABEL_777;
                    }

                    __asm { PRFM            #0, [X22] }

                    v1417 = 5;
                    v1418 = v2451;
                    do
                    {
                      v1419 = _X22;
                      _X22 = (_X22 + v1233);
                      __asm { PRFM            #0, [X22] }

                      v1421 = *v1419;
                      v1418[3] = vzip2q_s8(*v1419, v26);
                      v1418 += 2;
                      v1422 = v26.i64[0];
                      vst2_s8(v1418->i8, v1421);
                      --v1417;
                    }

                    while (v1417 > 2);
                    v1423 = *_X22;
                    v1424 = vzip2q_s8(*_X22, v26);
                    v1425 = v1418[2].i8;
                    v1426 = v26.i64[0];
                    vst2_s8(v1425, v1423);
LABEL_766:
                    v1418[3] = v1424;
LABEL_777:
                    v1485 = 1;
                    v1486 = &v2452;
                    do
                    {
                      v1487 = v1485;
                      a8 = v1486[1];
                      a9 = v1486[2];
                      a10 = v1486[3];
                      v1488 = vrhaddq_u16(v1486[-16], *v1486);
                      v1489 = vrhaddq_u16(v1486[-15], a8);
                      v1490 = vrhaddq_u16(v1486[-14], a9);
                      v25 = vrhaddq_u16(v1486[-13], a10);
                      if (v1382)
                      {
                        v1491 = *v141;
                        a8 = *(v141 + 16);
                        a9 = *(v141 + 32);
                        a10 = *(v141 + 48);
                        v141 += 64;
                        v1488 = vaddq_s16(v1491, v1488);
                        v1489 = vaddq_s16(a8, v1489);
                        v1490 = vaddq_s16(a9, v1490);
                        v25 = vaddq_s16(a10, v25);
                      }

                      v1485 = 0;
                      v1486 += 4;
                      *v139 = vqmovun_high_s16(vqmovun_s16(v1488), v1489);
                      *(v139 + v1233) = vqmovun_high_s16(vqmovun_s16(v1490), v25);
                      v139 = (v139 + v24);
                    }

                    while ((v1487 & 1) != 0);
                    goto LABEL_1085;
                  }

                  _X8 = &_X22->i8[v1233];
                  __asm { PRFM            #0, [X8] }

                  v1429 = *_X22;
                  v1430 = v2379;
                  if (v2379 <= -16)
                  {
                    v1430 = -16;
                  }

                  if (v1430 >= v2418)
                  {
                    v1430 = v2418;
                  }

                  v1431 = (v2381 + v1234 + v1235 + v1430);
                  v1432 = 5;
                  v1418 = v2451;
                  do
                  {
                    _X11 = &v1431->i8[v1345];
                    v1431 = (v1431 + v1233);
                    __asm { PRFM            #0, [X11] }

                    v1435 = *v1431;
                    v1436 = vrhaddq_u8(v1429, *v1431);
                    v1437 = v26.i64[0];
                    v1418[3] = vzip2q_s8(v1436, v26);
                    v1418 += 2;
                    vst2_s8(v1418->i8, v1436);
                    --v1432;
                    v1429 = v1435;
                  }

                  while (v1432 > 2);
                  v1438 = vrhaddq_u8(v1435, *(v1431 + v1233));
                }

                v1450 = v1418[2].i8;
                v1451 = v26.i64[0];
                vst2_s8(v1450, v1438);
                v1424 = vzip2q_s8(v1438, v26);
                goto LABEL_766;
              }

              __asm { PRFM            #0, [X25] }

              v1347 = 5;
              v1348 = v2446;
              do
              {
                v1349 = _X25;
                _X25 = (_X25 + v1233);
                __asm { PRFM            #0, [X25] }

                v1351 = *v1349;
                v1348[3] = vzip2q_s8(*v1349, v26);
                v1348 += 2;
                v1352 = v26.i64[0];
                vst2_s8(v1348->i8, v1351);
                --v1347;
              }

              while (v1347 > 2);
              v1353 = *_X25;
              v1354 = vzip2q_s8(*_X25, v26);
              v1355 = v1348[2].i8;
              v1356 = v26.i64[0];
              vst2_s8(v1355, v1353);
LABEL_734:
              v1382 = v2422;
              v1383 = 2 * v2417 + 8;
              v1348[3] = v1354;
              goto LABEL_745;
            }

            _X8 = &_X25->i8[v1233];
            __asm { PRFM            #0, [X8] }

            v1359 = *_X25;
            v1360 = v2378;
            if (v2378 <= -16)
            {
              v1360 = -16;
            }

            if (v1360 >= v2418)
            {
              v1360 = v2418;
            }

            v1361 = (v1237 + v2411 + v2350 + v1360);
            v1362 = 5;
            v1348 = v2446;
            do
            {
              _X11 = &v1361->i8[v2362];
              v1361 = (v1361 + v1233);
              __asm { PRFM            #0, [X11] }

              v1365 = *v1361;
              v1366 = vrhaddq_u8(v1359, *v1361);
              v1367 = v26.i64[0];
              v1348[3] = vzip2q_s8(v1366, v26);
              v1348 += 2;
              vst2_s8(v1348->i8, v1366);
              --v1362;
              v1359 = v1365;
            }

            while (v1362 > 2);
            v1368 = vrhaddq_u8(v1365, *(v1361 + v1233));
          }

          v1380 = v1348[2].i8;
          v1381 = v26.i64[0];
          vst2_s8(v1380, v1368);
          v1354 = vzip2q_s8(v1368, v26);
          goto LABEL_734;
        }

LABEL_1085:
        v11 = a2;
        v12 = a1;
        goto LABEL_1086;
      }

      if (v2426 != 4)
      {
        if (v2426 != 8)
        {
          if (v2426 != 16)
          {
            goto LABEL_1085;
          }

          v2402 = v119 & 0xFFFFFF8F | (16 * (v38 & 7));
          v2366 = v143;
          v2351 = v144;
          v2355 = v143 & 0xFFFFFF8F | (16 * (v60 & 7));
          v2358 = v147;
          v2371 = v60 & 7;
          v154 = v148;
          switch(v68 & 0xFFFFFFF3 | (4 * (v38 & 3)))
          {
            case 1u:
              v1542 = v140;
              sub_27729AC20(&v2438, 0x10u, v128, v2420, 16);
              goto LABEL_1005;
            case 2u:
              v1542 = v140;
              sub_27729ACE8(v2438.i8, 0x10u, v128, v2420, 16);
              goto LABEL_1005;
            case 3u:
              v1542 = v140;
              sub_27729ADA4(&v2438, 0x10u, v128, v2420, 16);
              goto LABEL_1005;
            case 4u:
              v1542 = v140;
              sub_27729AE6C(&v2438, 0x10u, v128, v2420, 16);
              goto LABEL_1005;
            case 5u:
              v1576 = v128;
              v1577 = 2 * v2425;
              v1578 = 2;
              goto LABEL_971;
            case 6u:
              v1542 = v140;
              sub_27729B1B0(v2438.i8, 0x10u, v128, v2420);
              goto LABEL_1005;
            case 7u:
              v1576 = v128;
              v1577 = 2 * v2425;
              v1578 = 3;
LABEL_971:
              v1769 = 2;
              goto LABEL_1004;
            case 8u:
              v1542 = v140;
              sub_27729B588(v2438.i8, 0x10u, v128, v2420, 16, v25);
              goto LABEL_1005;
            case 9u:
              v1542 = v140;
              sub_27729B614(v2438.i8, 0x10u, v128, v2420, 16);
              goto LABEL_1005;
            case 0xAu:
              v1542 = v140;
              sub_27729B7DC(&v2438, 16, v128, v2420, 16);
              goto LABEL_1005;
            case 0xBu:
              v1542 = v140;
              sub_27729B98C(v2438.i8, 0x10u, v128, v2420, 16);
              goto LABEL_1005;
            case 0xCu:
              v1542 = v140;
              sub_27729BB54(&v2438, 0x10u, v128, v2420, 16);
              goto LABEL_1005;
            case 0xDu:
              v1576 = v128;
              v1577 = 2 * v2425;
              v1578 = 2;
              goto LABEL_1003;
            case 0xEu:
              v1542 = v140;
              sub_27729BBEC(v2438.i8, 0x10u, v128, v2420);
              goto LABEL_1005;
            case 0xFu:
              v1576 = v128;
              v1577 = 2 * v2425;
              v1578 = 3;
LABEL_1003:
              v1769 = 3;
LABEL_1004:
              v1542 = v140;
              sub_27729C774(v2438.i8, v1576, v1577, 16, v1578, v1769);
LABEL_1005:
              v140 = v1542;
              v10 = v2434;
              v26 = v2436;
              v157 = v2390;
              break;
            default:
              v155 = v149 + v68 - 16;
              v156 = &v2438;
              v157 = v2390;
              do
              {
                v158 = *v128;
                v128 = (v128 + v2417);
                v159 = v26.i64[0];
                vst2_s8(v156->i8, v158);
                ++v156;
                _CF = __CFADD__(v155++, 1);
              }

              while (!_CF);
              break;
          }

          switch(v140)
          {
            case 1:
              sub_27729AC20(&v2442, 0x10u, v157, v2420, 16);
              goto LABEL_1026;
            case 2:
              sub_27729ACE8(v2442.i8, 0x10u, v157, v2420, 16);
              goto LABEL_1026;
            case 3:
              sub_27729ADA4(&v2442, 0x10u, v157, v2420, 16);
              goto LABEL_1026;
            case 4:
              sub_27729AE6C(&v2442, 0x10u, v157, v2420, 16);
              goto LABEL_1026;
            case 5:
              v1853 = v157;
              v1854 = 2 * v2425;
              v1855 = 2;
              goto LABEL_1022;
            case 6:
              sub_27729B1B0(v2442.i8, 0x10u, v157, v2420);
              goto LABEL_1026;
            case 7:
              v1853 = v157;
              v1854 = 2 * v2425;
              v1855 = 3;
LABEL_1022:
              v1856 = 2;
              goto LABEL_1025;
            case 8:
              sub_27729B588(v2442.i8, 0x10u, v157, v2420, 16, v158);
              goto LABEL_1026;
            case 9:
              sub_27729B614(v2442.i8, 0x10u, v157, v2420, 16);
              goto LABEL_1026;
            case 10:
              sub_27729B7DC(&v2442, 16, v157, v2420, 16);
              goto LABEL_1026;
            case 11:
              sub_27729B98C(v2442.i8, 0x10u, v157, v2420, 16);
              goto LABEL_1026;
            case 12:
              sub_27729BB54(&v2442, 0x10u, v157, v2420, 16);
              goto LABEL_1026;
            case 13:
              v1853 = v157;
              v1854 = 2 * v2425;
              v1855 = 2;
              goto LABEL_1024;
            case 14:
              sub_27729BBEC(v2442.i8, 0x10u, v157, v2420);
              goto LABEL_1026;
            case 15:
              v1853 = v157;
              v1854 = 2 * v2425;
              v1855 = 3;
LABEL_1024:
              v1856 = 3;
LABEL_1025:
              sub_27729C774(v2442.i8, v1853, v1854, 16, v1855, v1856);
LABEL_1026:
              v10 = v2434;
              v26 = v2436;
              v1843 = v2423;
              v1844 = 2 * v2425;
              v24 = 4 * v2425;
              v1845 = 6 * v2425;
              v1846 = 8 * v2425;
              v27.i64[0] = 0x20002000200020;
              v27.i64[1] = 0x20002000200020;
              v28.i64[0] = 0x10001000100010;
              v28.i64[1] = 0x10001000100010;
              _X0 = v154;
              v1848 = v2383;
              v1849 = v2358;
              v1850 = v2355;
              break;
            default:
              v1841 = 4 * (v60 & 3) + v2373 - 16;
              v1842 = &v2442;
              v1843 = v2423;
              v1844 = 2 * v2425;
              v24 = 4 * v2425;
              v1845 = 6 * v2425;
              v1846 = 8 * v2425;
              v27.i64[0] = 0x20002000200020;
              v27.i64[1] = 0x20002000200020;
              v28.i64[0] = 0x10001000100010;
              v28.i64[1] = 0x10001000100010;
              _X0 = v154;
              v1848 = v2383;
              v1849 = v2358;
              v1850 = v2355;
              do
              {
                v1851 = *v157;
                v157 = (v157 + v2417);
                v1852 = v26.i64[0];
                vst2_s8(v1842->i8, v1851);
                ++v1842;
                _CF = __CFADD__(v1841++, 1);
              }

              while (!_CF);
              break;
          }

          v1857 = 0;
          do
          {
            v1858 = *(&v2443 + v1857);
            v1859 = vrhaddq_u16(*(&v2438 + v1857), *(&v2442 + v1857));
            v1860 = vrhaddq_u16(*(&v2438 + v1857 + 16), v1858);
            v1861 = vrhaddq_u16(*(&v2440 + v1857), *(&v2444 + v1857));
            v1862 = vrhaddq_u16(v2441[v1857 / 0x10], v2445[v1857 / 0x10]);
            if (v1843)
            {
              v1863 = *v138;
              v1858 = *(v138 + 32);
              v1864 = *(v138 + 64);
              v1865 = *(v138 + 96);
              v138 += 128;
              v1859 = vaddq_s16(v1863, v1859);
              v1860 = vaddq_s16(v1858, v1860);
              v1861 = vaddq_s16(v1864, v1861);
              v1862 = vaddq_s16(v1865, v1862);
            }

            *v137->i8 = vqmovun_s16(v1859);
            *&v137->i8[v1844] = vqmovun_s16(v1860);
            *&v137->i8[v24] = vqmovun_s16(v1861);
            *&v137->i8[v1845] = vqmovun_s16(v1862);
            v137 = (v137 + v1846);
            v1857 += 64;
          }

          while (v1857 != 256);
          if (v2402 == 64)
          {
            __asm { PRFM            #0, [X25] }

            v1868 = &v2447;
            v1881 = 9;
            v1866 = 2 * v2417;
            do
            {
              v1882 = _X25;
              _X25 = (_X25 + v1844);
              __asm { PRFM            #0, [X25] }

              *v1862.i8 = *v1882;
              v1884 = vextq_s8(v1862, v26, 2uLL);
              v1884.i16[3] = v1882[1].i16[0];
              v1885 = vrhadd_u8(*v1882, *v1884.i8);
              v1884.i64[0] = v26.i64[0];
              vst2_s8(v1868->i8, *(&v1884 - 8));
              ++v1868;
              --v1881;
            }

            while (v1881 > 2);
            v1862.i64[0] = _X25->i64[0];
            v1859 = vextq_s8(v1862, v26, 2uLL);
            v1859.i16[3] = _X25->i16[4];
            v1862 = vrhaddq_u8(v1862, v1859);
          }

          else
          {
            v1866 = 2 * v2417;
            if (v2402 == 4)
            {
              _X8 = &_X25->i8[v1844];
              __asm { PRFM            #0, [X8] }

              v1874.i64[0] = _X25->i64[0];
              v1875 = v2378;
              if (v2378 <= -16)
              {
                v1875 = -16;
              }

              if (v1875 >= v2418)
              {
                v1875 = v2418;
              }

              v1876 = (v2380 + v2411 + v2351 + v1875);
              v1868 = &v2447;
              for (ii = 9; ii > 2; --ii)
              {
                _X11 = v1876 + v2362;
                v1876 = (v1876 + v1844);
                __asm { PRFM            #0, [X11] }

                *v1859.i8 = *v1876;
                v2473.val[0] = vrhadd_u8(*v1874.i8, *v1876);
                v2473.val[1] = v26.i64[0];
                vst2_s8(v1868->i8, v2473);
                ++v1868;
                v1874 = v1859;
              }

              *v1874.i8 = *(v1876 + v1844);
              v1862 = vrhaddq_u8(v1859, v1874);
            }

            else
            {
              if (v2402)
              {
                v1888 = 0;
                v1889 = v119 * v2385 - (8 * v2385 + 8 * v119) + 64;
                v1890 = v26;
                v1890.i32[0] = v1889 | (v1889 << 16);
                v1862 = vqtbl1q_s8(v1890, xmmword_2773B3DF0);
                v1891 = v26;
                v1891.i32[0] = (8 * v2385 - v119 * v2385) | ((8 * v2385 - v119 * v2385) << 16);
                v1859 = vqtbl1q_s8(v1891, xmmword_2773B3DF0);
                v1892 = v26;
                v1892.i32[0] = (8 * v119 - v119 * v2385) | ((8 * v119 - v119 * v2385) << 16);
                v1893 = v26;
                v1893.i32[0] = 65537 * v119 * v2385;
                v1894 = vqtbl1q_s8(v1892, xmmword_2773B3DF0);
                v1895 = vqtbl1q_s8(v1893, xmmword_2773B3DF0);
                v2456 = v1862;
                v2457 = v1859;
                v2458 = v1894;
                v2459 = v1895;
                _X9 = &_X25->i8[v1844];
                __asm { PRFM            #0, [X9] }

                v1858.i64[0] = _X25->i64[0];
                v1898 = vqtbl1q_s8(v1858, xmmword_2773B3E00);
                v1898.i16[3] = _X25->i16[4];
                v1899 = vzip1q_s8(v1898, v26);
                v1858 = vzip1q_s8(v1858, v26);
                v1900 = v2378;
                if (v2378 <= -16)
                {
                  v1900 = -16;
                }

                if (v1900 >= v2418)
                {
                  v1900 = v2418;
                }

                v1901 = v2380 + v2411 + v2351 + v1900;
                v1886 = v2422;
                do
                {
                  _X10 = v1901 + v2362;
                  v1901 += v1844;
                  __asm { PRFM            #0, [X10] }

                  v1904 = vmlaq_s16(vmulq_s16(v1859, v1899), v1862, v1858);
                  v1899.i64[0] = *v1901;
                  v1858 = vzip1q_s8(v1899, v26);
                  v1905 = vqtbl1q_s8(v1899, xmmword_2773B3E00);
                  v1905.i16[3] = *(v1901 + 8);
                  v1899 = vzip1q_s8(v1905, v26);
                  *(&v2447 + v1888) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1904, v1894, v1858), v1895, v1899), v27), 6uLL);
                  v1888 += 16;
                }

                while (v1888 != 128);
LABEL_1054:
                if (v1850 == 64)
                {
                  __asm { PRFM            #0, [X0] }

                  v1919 = v2379;
                  if (v2379 <= -16)
                  {
                    v1919 = -16;
                  }

                  if (v1919 >= v2418)
                  {
                    v1919 = v2418;
                  }

                  v1920 = (v2381 + v1848 + v1849 + v1919 + 8);
                  v1921 = 9;
                  v1908 = &v2452;
                  do
                  {
                    _X11 = &v1920[v1844 / 2];
                    __asm { PRFUM           #0, [X11,#-8] }

                    v1862.i64[0] = *(v1920 - 1);
                    v1924 = vextq_s8(v1862, v26, 2uLL);
                    v1924.i16[3] = *v1920;
                    v1925 = vrhadd_u8(*v1862.i8, *v1924.i8);
                    v1924.i64[0] = v26.i64[0];
                    vst2_s8(v1908->i8, *(&v1924 - 8));
                    ++v1908;
                    v1920 = (v1920 + v1844);
                    --v1921;
                  }

                  while (v1921 > 2);
                  v1862.i64[0] = *(v1920 - 1);
                  v1926 = vextq_s8(v1862, v26, 2uLL);
                  v1926.i16[3] = *v1920;
                  v1862.i64[0] = vrhaddq_u8(v1862, v1926).u64[0];
                }

                else if (v1850 == 4)
                {
                  _X8 = _X0 + v1844;
                  __asm { PRFM            #0, [X8] }

                  *v1862.i8 = *_X0;
                  v1913 = v2379;
                  if (v2379 <= -16)
                  {
                    v1913 = -16;
                  }

                  if (v1913 >= v2418)
                  {
                    v1913 = v2418;
                  }

                  v1914 = (v2381 + v1848 + v1849 + v1913);
                  v1915 = 9;
                  v1908 = &v2452;
                  do
                  {
                    _X11 = v1914 + v1866;
                    v1914 = (v1914 + v1844);
                    __asm { PRFM            #0, [X11] }

                    *v1859.i8 = *v1914;
                    v2474.val[0] = vrhadd_u8(*v1862.i8, *v1914);
                    v2474.val[1] = v26.i64[0];
                    vst2_s8(v1908->i8, v2474);
                    ++v1908;
                    --v1915;
                    v1862 = v1859;
                  }

                  while (v1915 > 2);
                  *v1862.i8 = *(v1914 + v1844);
                  v1862.i64[0] = vrhaddq_u8(v1859, v1862).u64[0];
                }

                else
                {
                  if (v1850)
                  {
                    v1928 = 0;
                    v1929 = v2366 * v2371 - (8 * v2371 + 8 * v2366) + 64;
                    v1930 = v26;
                    v1930.i32[0] = v1929 | (v1929 << 16);
                    v1931 = vqtbl1q_s8(v1930, xmmword_2773B3DF0);
                    v1932 = v26;
                    v1932.i32[0] = (8 * v2371 - v2366 * v2371) | ((8 * v2371 - v2366 * v2371) << 16);
                    v1933 = vqtbl1q_s8(v1932, xmmword_2773B3DF0);
                    v1934 = v26;
                    v1934.i32[0] = (8 * v2366 - v2366 * v2371) | ((8 * v2366 - v2366 * v2371) << 16);
                    v1935 = v26;
                    v1935.i32[0] = 65537 * v2366 * v2371;
                    v1936 = vqtbl1q_s8(v1934, xmmword_2773B3DF0);
                    v1937 = vqtbl1q_s8(v1935, xmmword_2773B3DF0);
                    v2460 = v1931;
                    v2461 = v1933;
                    v2462 = v1936;
                    v2463 = v1937;
                    _X9 = _X0 + v1844;
                    __asm { PRFM            #0, [X9] }

                    *v1858.i8 = *_X0;
                    v1940 = vqtbl1q_s8(v1858, xmmword_2773B3E00);
                    v1940.i16[3] = _X0[1].i16[0];
                    v1941 = vzip1q_s8(v1940, v26);
                    v1942 = vzip1q_s8(v1858, v26);
                    v1943 = v2379;
                    if (v2379 <= -16)
                    {
                      v1943 = -16;
                    }

                    if (v1943 >= v2418)
                    {
                      v1943 = v2418;
                    }

                    v1944 = v2381 + v1848 + v1849 + v1943;
                    do
                    {
                      _X10 = v1944 + v1866;
                      v1944 += v1844;
                      __asm { PRFM            #0, [X10] }

                      v1947 = vmlaq_s16(vmulq_s16(v1933, v1941), v1931, v1942);
                      v1941.i64[0] = *v1944;
                      v1942 = vzip1q_s8(v1941, v26);
                      v1948 = vqtbl1q_s8(v1941, xmmword_2773B3E00);
                      v1948.i16[3] = *(v1944 + 8);
                      v1941 = vzip1q_s8(v1948, v26);
                      *(&v2452 + v1928) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1947, v1936, v1942), v1937, v1941), v27), 6uLL);
                      v1928 += 16;
                    }

                    while (v1928 != 128);
                    goto LABEL_1081;
                  }

                  __asm { PRFM            #0, [X0] }

                  v1907 = 9;
                  v1908 = &v2452;
                  do
                  {
                    v1909 = _X0;
                    _X0 = (_X0 + v1844);
                    __asm { PRFM            #0, [X0] }

                    v2468.val[0] = *v1909;
                    v2468.val[1] = v26.i64[0];
                    vst2_s8(v1908->i8, v2468);
                    ++v1908;
                    --v1907;
                  }

                  while (v1907 > 2);
                  *v1862.i8 = *_X0;
                }

                v1927 = v26.i64[0];
                vst2_s8(v1908->i8, v1862);
LABEL_1081:
                v1949 = 1;
                v1950 = &v2452;
                do
                {
                  v1951 = v1949;
                  a8 = v1950[1];
                  a9 = v1950[2];
                  a10 = v1950[3];
                  v1952 = vrhaddq_u16(v1950[-16], *v1950);
                  v1953 = vrhaddq_u16(v1950[-15], a8);
                  v1954 = vrhaddq_u16(v1950[-14], a9);
                  v25 = vrhaddq_u16(v1950[-13], a10);
                  if (v1886)
                  {
                    v1955 = *v141;
                    a8 = *(v141 + 32);
                    a9 = *(v141 + 64);
                    a10 = *(v141 + 96);
                    v141 += 128;
                    v1952 = vaddq_s16(v1955, v1952);
                    v1953 = vaddq_s16(a8, v1953);
                    v1954 = vaddq_s16(a9, v1954);
                    v25 = vaddq_s16(a10, v25);
                  }

                  v1949 = 0;
                  v1950 += 4;
                  *v139->i8 = vqmovun_s16(v1952);
                  *&v139->i8[v1844] = vqmovun_s16(v1953);
                  *v25.i8 = vqmovun_s16(v25);
                  *&v139->i8[v24] = vqmovun_s16(v1954);
                  *(v139->i64 + v1845) = v25.i64[0];
                  v139 = (v139 + v1846);
                }

                while ((v1951 & 1) != 0);
                goto LABEL_1085;
              }

              __asm { PRFM            #0, [X25] }

              v1868 = &v2447;
              for (jj = 9; jj > 2; --jj)
              {
                v1870 = _X25;
                _X25 = (_X25 + v1844);
                __asm { PRFM            #0, [X25] }

                v2467.val[0] = *v1870;
                v2467.val[1] = v26.i64[0];
                vst2_s8(v1868->i8, v2467);
                ++v1868;
              }

              v1862.i64[0] = _X25->i64[0];
            }
          }

          v1886 = v2422;
          v1887 = v26.i64[0];
          vst2_s8(v1868->i8, v1862);
          goto LABEL_1054;
        }

        v2404 = v119 & 0xFFFFFF8F | (16 * (v38 & 7));
        v2368 = v143;
        v2352 = v144;
        v2356 = v143 & 0xFFFFFF8F | (16 * (v60 & 7));
        v2359 = v147;
        v250 = v148;
        switch(v68 & 0xFFFFFFF3 | (4 * (v38 & 3)))
        {
          case 1u:
            v1532 = v140;
            sub_27729AC20(&v2438, 0x10u, v128, v2420, 8);
            goto LABEL_869;
          case 2u:
            v1532 = v140;
            sub_27729ACE8(v2438.i8, 0x10u, v128, v2420, 8);
            goto LABEL_869;
          case 3u:
            v1532 = v140;
            sub_27729ADA4(&v2438, 0x10u, v128, v2420, 8);
            goto LABEL_869;
          case 4u:
            v1532 = v140;
            sub_27729AE6C(&v2438, 0x10u, v128, v2420, 8);
            goto LABEL_869;
          case 5u:
            v1554 = v128;
            v1555 = 2 * v2425;
            v1556 = 2;
            goto LABEL_861;
          case 6u:
            v1532 = v140;
            sub_27729BFC4(v2438.i8, 0x10u, v128, v2420);
            goto LABEL_869;
          case 7u:
            v1554 = v128;
            v1555 = 2 * v2425;
            v1556 = 3;
LABEL_861:
            v1595 = 2;
            goto LABEL_868;
          case 8u:
            v1532 = v140;
            sub_27729B588(v2438.i8, 0x10u, v128, v2420, 8, v25);
            goto LABEL_869;
          case 9u:
            v1532 = v140;
            sub_27729B614(v2438.i8, 0x10u, v128, v2420, 8);
            goto LABEL_869;
          case 0xAu:
            v1532 = v140;
            sub_27729B7DC(&v2438, 16, v128, v2420, 8);
            goto LABEL_869;
          case 0xBu:
            v1532 = v140;
            sub_27729B98C(v2438.i8, 0x10u, v128, v2420, 8);
            goto LABEL_869;
          case 0xCu:
            v1532 = v140;
            sub_27729BB54(&v2438, 0x10u, v128, v2420, 8);
            goto LABEL_869;
          case 0xDu:
            v1554 = v128;
            v1555 = 2 * v2425;
            v1556 = 2;
            goto LABEL_867;
          case 0xEu:
            v1532 = v140;
            sub_27729C39C(v2438.i8, 0x10u, v128, v2420);
            goto LABEL_869;
          case 0xFu:
            v1554 = v128;
            v1555 = 2 * v2425;
            v1556 = 3;
LABEL_867:
            v1595 = 3;
LABEL_868:
            v1532 = v140;
            sub_27729C774(v2438.i8, v1554, v1555, 8, v1556, v1595);
LABEL_869:
            v140 = v1532;
            v10 = v2434;
            v26 = v2436;
            v253 = v2390;
            break;
          default:
            v251 = v149 + v68 - 8;
            v252 = &v2438;
            v253 = v2390;
            do
            {
              v254 = *v128;
              v128 = (v128 + v2417);
              v255 = v26.i64[0];
              vst2_s8(v252->i8, v254);
              ++v252;
              _CF = __CFADD__(v251++, 1);
            }

            while (!_CF);
            break;
        }

        switch(v140)
        {
          case 1:
            sub_27729AC20(&v2442, 0x10u, v253, v2420, 8);
            goto LABEL_891;
          case 2:
            sub_27729ACE8(v2442.i8, 0x10u, v253, v2420, 8);
            goto LABEL_891;
          case 3:
            sub_27729ADA4(&v2442, 0x10u, v253, v2420, 8);
            goto LABEL_891;
          case 4:
            sub_27729AE6C(&v2442, 0x10u, v253, v2420, 8);
            goto LABEL_891;
          case 5:
            v1622 = v253;
            v1623 = 2 * v2425;
            v1624 = 2;
            goto LABEL_886;
          case 6:
            sub_27729BFC4(v2442.i8, 0x10u, v253, v2420);
            goto LABEL_891;
          case 7:
            v1622 = v253;
            v1623 = 2 * v2425;
            v1624 = 3;
LABEL_886:
            v1625 = 2;
            goto LABEL_890;
          case 8:
            sub_27729B588(v2442.i8, 0x10u, v253, v2420, 8, v254);
            goto LABEL_891;
          case 9:
            sub_27729B614(v2442.i8, 0x10u, v253, v2420, 8);
            goto LABEL_891;
          case 10:
            sub_27729B7DC(&v2442, 16, v253, v2420, 8);
            goto LABEL_891;
          case 11:
            sub_27729B98C(v2442.i8, 0x10u, v253, v2420, 8);
            goto LABEL_891;
          case 12:
            sub_27729BB54(&v2442, 0x10u, v253, v2420, 8);
            goto LABEL_891;
          case 13:
            v1622 = v253;
            v1623 = 2 * v2425;
            v1624 = 2;
            goto LABEL_889;
          case 14:
            sub_27729C39C(v2442.i8, 0x10u, v253, v2420);
            goto LABEL_891;
          case 15:
            v1622 = v253;
            v1623 = 2 * v2425;
            v1624 = 3;
LABEL_889:
            v1625 = 3;
LABEL_890:
            sub_27729C774(v2442.i8, v1622, v1623, 8, v1624, v1625);
LABEL_891:
            v10 = v2434;
            v26 = v2436;
            v1612 = v2423;
            v1613 = 2 * v2425;
            v24 = 4 * v2425;
            v1614 = 6 * v2425;
            v1615 = 8 * v2425;
            v27.i64[0] = 0x20002000200020;
            v27.i64[1] = 0x20002000200020;
            v28.i64[0] = 0x10001000100010;
            v28.i64[1] = 0x10001000100010;
            _X17 = v250;
            v1609 = v60 & 7;
            v1617 = v2383;
            v1618 = v2359;
            v1619 = v2356;
            break;
          default:
            v1609 = v60 & 7;
            v1610 = 4 * (v60 & 3) + v2373 - 8;
            v1611 = &v2442;
            v1612 = v2423;
            v1613 = 2 * v2425;
            v24 = 4 * v2425;
            v1614 = 6 * v2425;
            v1615 = 8 * v2425;
            v27.i64[0] = 0x20002000200020;
            v27.i64[1] = 0x20002000200020;
            v28.i64[0] = 0x10001000100010;
            v28.i64[1] = 0x10001000100010;
            _X17 = v250;
            v1617 = v2383;
            v1618 = v2359;
            v1619 = v2356;
            do
            {
              v1620 = *v253;
              v253 = (v253 + v2417);
              v1621 = v26.i64[0];
              vst2_s8(v1611->i8, v1620);
              ++v1611;
              _CF = __CFADD__(v1610++, 1);
            }

            while (!_CF);
            break;
        }

        v1630 = 1;
        v1631 = &v2438;
        do
        {
          v1632 = v1630;
          v1633 = v1631[33];
          v1634 = vrhaddq_u16(*v1631, v1631[32]);
          v1635 = vrhaddq_u16(v1631[1], v1633);
          v1636 = vrhaddq_u16(v1631[2], v1631[34]);
          v1637 = vrhaddq_u16(v1631[3], v1631[35]);
          if (v1612)
          {
            v1638 = *v138;
            v1633 = *(v138 + 32);
            v1639 = *(v138 + 64);
            v1640 = *(v138 + 96);
            v138 += 128;
            v1634 = vaddq_s16(v1638, v1634);
            v1635 = vaddq_s16(v1633, v1635);
            v1636 = vaddq_s16(v1639, v1636);
            v1637 = vaddq_s16(v1640, v1637);
          }

          v1630 = 0;
          v1631 += 4;
          *v137->i8 = vqmovun_s16(v1634);
          *&v137->i8[v1613] = vqmovun_s16(v1635);
          *&v137->i8[v24] = vqmovun_s16(v1636);
          *&v137->i8[v1614] = vqmovun_s16(v1637);
          v137 = (v137 + v1615);
        }

        while ((v1632 & 1) != 0);
        if (v2404 == 64)
        {
          __asm { PRFM            #0, [X25] }

          v1643 = &v2447;
          v1656 = 5;
          v1641 = 2 * v2417;
          do
          {
            v1657 = _X25;
            _X25 = (_X25 + v1613);
            __asm { PRFM            #0, [X25] }

            *v1637.i8 = *v1657;
            v1659 = vextq_s8(v1637, v26, 2uLL);
            v1659.i16[3] = v1657[1].i16[0];
            v1660 = vrhadd_u8(*v1657, *v1659.i8);
            v1659.i64[0] = v26.i64[0];
            vst2_s8(v1643->i8, *(&v1659 - 8));
            ++v1643;
            --v1656;
          }

          while (v1656 > 2);
          v1637.i64[0] = _X25->i64[0];
          v1634 = vextq_s8(v1637, v26, 2uLL);
          v1634.i16[3] = _X25->i16[4];
          v1637 = vrhaddq_u8(v1637, v1634);
        }

        else
        {
          v1641 = 2 * v2417;
          if (v2404 == 4)
          {
            _X8 = &_X25->i8[v1613];
            __asm { PRFM            #0, [X8] }

            v1649.i64[0] = _X25->i64[0];
            v1650 = v2378;
            if (v2378 <= -16)
            {
              v1650 = -16;
            }

            if (v1650 >= v2418)
            {
              v1650 = v2418;
            }

            v1651 = (v2380 + v2411 + v2352 + v1650);
            v1643 = &v2447;
            for (kk = 5; kk > 2; --kk)
            {
              _X11 = v1651 + v2362;
              v1651 = (v1651 + v1613);
              __asm { PRFM            #0, [X11] }

              *v1634.i8 = *v1651;
              v2471.val[0] = vrhadd_u8(*v1649.i8, *v1651);
              v2471.val[1] = v26.i64[0];
              vst2_s8(v1643->i8, v2471);
              ++v1643;
              v1649 = v1634;
            }

            *v1649.i8 = *(v1651 + v1613);
            v1637 = vrhaddq_u8(v1634, v1649);
          }

          else
          {
            if (v2404)
            {
              v1663 = 0;
              v1664 = v119 * v2385 - (8 * v2385 + 8 * v119) + 64;
              v1665 = v26;
              v1665.i32[0] = v1664 | (v1664 << 16);
              v1637 = vqtbl1q_s8(v1665, xmmword_2773B3DF0);
              v1666 = v26;
              v1666.i32[0] = (8 * v2385 - v119 * v2385) | ((8 * v2385 - v119 * v2385) << 16);
              v1634 = vqtbl1q_s8(v1666, xmmword_2773B3DF0);
              v1667 = v26;
              v1667.i32[0] = (8 * v119 - v119 * v2385) | ((8 * v119 - v119 * v2385) << 16);
              v1668 = v26;
              v1668.i32[0] = 65537 * v119 * v2385;
              v1669 = vqtbl1q_s8(v1667, xmmword_2773B3DF0);
              v1670 = vqtbl1q_s8(v1668, xmmword_2773B3DF0);
              v2456 = v1637;
              v2457 = v1634;
              v2458 = v1669;
              v2459 = v1670;
              _X9 = &_X25->i8[v1613];
              __asm { PRFM            #0, [X9] }

              v1633.i64[0] = _X25->i64[0];
              v1673 = vqtbl1q_s8(v1633, xmmword_2773B3E00);
              v1673.i16[3] = _X25->i16[4];
              v1674 = vzip1q_s8(v1673, v26);
              v1633 = vzip1q_s8(v1633, v26);
              v1675 = v2378;
              if (v2378 <= -16)
              {
                v1675 = -16;
              }

              if (v1675 >= v2418)
              {
                v1675 = v2418;
              }

              v1676 = v2380 + v2411 + v2352 + v1675;
              v1661 = v2422;
              do
              {
                _X10 = v1676 + v2362;
                v1676 += v1613;
                __asm { PRFM            #0, [X10] }

                v1679 = vmlaq_s16(vmulq_s16(v1634, v1674), v1637, v1633);
                v1674.i64[0] = *v1676;
                v1633 = vzip1q_s8(v1674, v26);
                v1680 = vqtbl1q_s8(v1674, xmmword_2773B3E00);
                v1680.i16[3] = *(v1676 + 8);
                v1674 = vzip1q_s8(v1680, v26);
                *(&v2447 + v1663) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1679, v1669, v1633), v1670, v1674), v27), 6uLL);
                v1663 += 16;
              }

              while (v1663 != 64);
LABEL_919:
              if (v1619 == 64)
              {
                __asm { PRFM            #0, [X17] }

                v1694 = v2379;
                if (v2379 <= -16)
                {
                  v1694 = -16;
                }

                if (v1694 >= v2418)
                {
                  v1694 = v2418;
                }

                v1695 = (v2381 + v1617 + v1618 + v1694 + 8);
                v1696 = 5;
                v1683 = &v2452;
                do
                {
                  _X11 = &v1695[v1613 / 2];
                  __asm { PRFUM           #0, [X11,#-8] }

                  v1637.i64[0] = *(v1695 - 1);
                  v1699 = vextq_s8(v1637, v26, 2uLL);
                  v1699.i16[3] = *v1695;
                  v1700 = vrhadd_u8(*v1637.i8, *v1699.i8);
                  v1699.i64[0] = v26.i64[0];
                  vst2_s8(v1683->i8, *(&v1699 - 8));
                  ++v1683;
                  v1695 = (v1695 + v1613);
                  --v1696;
                }

                while (v1696 > 2);
                v1637.i64[0] = *(v1695 - 1);
                v1701 = vextq_s8(v1637, v26, 2uLL);
                v1701.i16[3] = *v1695;
                v1637.i64[0] = vrhaddq_u8(v1637, v1701).u64[0];
              }

              else if (v1619 == 4)
              {
                _X8 = _X17 + v1613;
                __asm { PRFM            #0, [X8] }

                *v1637.i8 = *_X17;
                v1688 = v2379;
                if (v2379 <= -16)
                {
                  v1688 = -16;
                }

                if (v1688 >= v2418)
                {
                  v1688 = v2418;
                }

                v1689 = (v2381 + v1617 + v1618 + v1688);
                v1690 = 5;
                v1683 = &v2452;
                do
                {
                  _X11 = v1689 + v1641;
                  v1689 = (v1689 + v1613);
                  __asm { PRFM            #0, [X11] }

                  *v1634.i8 = *v1689;
                  v2472.val[0] = vrhadd_u8(*v1637.i8, *v1689);
                  v2472.val[1] = v26.i64[0];
                  vst2_s8(v1683->i8, v2472);
                  ++v1683;
                  --v1690;
                  v1637 = v1634;
                }

                while (v1690 > 2);
                *v1637.i8 = *(v1689 + v1613);
                v1637.i64[0] = vrhaddq_u8(v1634, v1637).u64[0];
              }

              else
              {
                if (v1619)
                {
                  v1703 = 0;
                  v1704 = 8 * v1609;
                  v1705 = v2368 * v1609;
                  v1706 = v26;
                  v1706.i32[0] = (v1705 - (v1704 + 8 * v2368) + 64) | ((v1705 - (v1704 + 8 * v2368) + 64) << 16);
                  v1707 = vqtbl1q_s8(v1706, xmmword_2773B3DF0);
                  v1708 = v26;
                  v1708.i32[0] = (v1704 - v1705) | ((v1704 - v1705) << 16);
                  v1709 = vqtbl1q_s8(v1708, xmmword_2773B3DF0);
                  v1710 = v26;
                  v1710.i32[0] = (8 * v2368 - v1705) | ((8 * v2368 - v1705) << 16);
                  v1711 = v26;
                  v1711.i32[0] = 65537 * v2368 * v1609;
                  v1712 = vqtbl1q_s8(v1710, xmmword_2773B3DF0);
                  v1713 = vqtbl1q_s8(v1711, xmmword_2773B3DF0);
                  v2460 = v1707;
                  v2461 = v1709;
                  v2462 = v1712;
                  v2463 = v1713;
                  _X9 = _X17 + v1613;
                  __asm { PRFM            #0, [X9] }

                  *v1633.i8 = *_X17;
                  v1716 = vqtbl1q_s8(v1633, xmmword_2773B3E00);
                  v1716.i16[3] = _X17[1].i16[0];
                  v1717 = vzip1q_s8(v1716, v26);
                  v1718 = vzip1q_s8(v1633, v26);
                  v1719 = v2379;
                  if (v2379 <= -16)
                  {
                    v1719 = -16;
                  }

                  if (v1719 >= v2418)
                  {
                    v1719 = v2418;
                  }

                  v1720 = v2381 + v1617 + v1618 + v1719;
                  do
                  {
                    _X10 = v1720 + v1641;
                    v1720 += v1613;
                    __asm { PRFM            #0, [X10] }

                    v1723 = vmlaq_s16(vmulq_s16(v1709, v1717), v1707, v1718);
                    v1717.i64[0] = *v1720;
                    v1718 = vzip1q_s8(v1717, v26);
                    v1724 = vqtbl1q_s8(v1717, xmmword_2773B3E00);
                    v1724.i16[3] = *(v1720 + 8);
                    v1717 = vzip1q_s8(v1724, v26);
                    *(&v2452 + v1703) = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v1723, v1712, v1718), v1713, v1717), v27), 6uLL);
                    v1703 += 16;
                  }

                  while (v1703 != 64);
                  goto LABEL_946;
                }

                __asm { PRFM            #0, [X17] }

                v1682 = 5;
                v1683 = &v2452;
                do
                {
                  v1684 = _X17;
                  _X17 = (_X17 + v1613);
                  __asm { PRFM            #0, [X17] }

                  v2466.val[0] = *v1684;
                  v2466.val[1] = v26.i64[0];
                  vst2_s8(v1683->i8, v2466);
                  ++v1683;
                  --v1682;
                }

                while (v1682 > 2);
                *v1637.i8 = *_X17;
              }

              v1702 = v26.i64[0];
              vst2_s8(v1683->i8, v1637);
LABEL_946:
              a8 = v2450[0];
              a9 = v2454;
              a10 = v2455;
              v1725 = vrhaddq_u16(v2447, v2452);
              v1726 = vrhaddq_u16(v2448, v2453);
              v25 = vrhaddq_u16(v2449, v2454);
              v1727 = vrhaddq_u16(v2450[0], v2455);
              if (v1661)
              {
                a8 = *(v141 + 32);
                a9 = *(v141 + 64);
                a10 = *(v141 + 96);
                v1725 = vaddq_s16(*v141, v1725);
                v1726 = vaddq_s16(a8, v1726);
                v25 = vaddq_s16(a9, v25);
                v1727 = vaddq_s16(a10, v1727);
              }

              *v139->i8 = vqmovun_s16(v1725);
              *&v139->i8[v1613] = vqmovun_s16(v1726);
              *v25.i8 = vqmovun_s16(v25);
              *(v139->i64 + v24) = v25.i64[0];
              *&v139->i8[v1614] = vqmovun_s16(v1727);
              goto LABEL_1085;
            }

            __asm { PRFM            #0, [X25] }

            v1643 = &v2447;
            for (mm = 5; mm > 2; --mm)
            {
              v1645 = _X25;
              _X25 = (_X25 + v1613);
              __asm { PRFM            #0, [X25] }

              v2465.val[0] = *v1645;
              v2465.val[1] = v26.i64[0];
              vst2_s8(v1643->i8, v2465);
              ++v1643;
            }

            v1637.i64[0] = _X25->i64[0];
          }
        }

        v1661 = v2422;
        v1662 = v26.i64[0];
        vst2_s8(v1643->i8, v1637);
        goto LABEL_919;
      }

      v256 = v119 * v2385 - (8 * v2385 + 8 * v119) + 64;
      v257 = v26;
      v257.i32[0] = v256 | (v256 << 16);
      v258 = v26;
      v258.i32[0] = (8 * v2385 - v119 * v2385) | ((8 * v2385 - v119 * v2385) << 16);
      v259 = xmmword_2773B3DF0;
      v260 = v26;
      v260.i32[0] = (8 * v119 - v119 * v2385) | ((8 * v119 - v119 * v2385) << 16);
      v261 = v26;
      v261.i32[0] = 65537 * v119 * v2385;
      v2456 = vqtbl1q_s8(v257, xmmword_2773B3DF0);
      v2457 = vqtbl1q_s8(v258, xmmword_2773B3DF0);
      v2458 = vqtbl1q_s8(v260, xmmword_2773B3DF0);
      v2459 = vqtbl1q_s8(v261, xmmword_2773B3DF0);
      v262 = v143 * v142;
      v263 = v143 * v142 - (8 * v142 + 8 * v143) + 64;
      v264 = v26;
      v264.i32[0] = v263 | (v263 << 16);
      v265 = v26;
      v265.i32[0] = (8 * v142 - v262) | ((8 * v142 - v262) << 16);
      v266 = vqtbl1q_s8(v265, xmmword_2773B3DF0);
      v267 = v26;
      v267.i32[0] = (8 * v143 - v262) | ((8 * v143 - v262) << 16);
      v268 = v26;
      v268.i32[0] = 65537 * v143 * v142;
      v269 = vqtbl1q_s8(v267, xmmword_2773B3DF0);
      v2460 = vqtbl1q_s8(v264, xmmword_2773B3DF0);
      v2461 = v266;
      v270 = vqtbl1q_s8(v268, xmmword_2773B3DF0);
      v2462 = v269;
      v2463 = v270;
      v271 = 4 * (v60 & 3);
      v272 = v148;
      switch(v68 & 0xFFFFFFF3 | (4 * (v38 & 3)))
      {
        case 1u:
          v1533 = v140;
          sub_27729AC20(&v2438, 0x10u, v128, v2420, 4);
          goto LABEL_974;
        case 2u:
          v1533 = v140;
          sub_27729ACE8(v2438.i8, 0x10u, v128, v2420, 4);
          goto LABEL_974;
        case 3u:
          v1533 = v140;
          sub_27729ADA4(&v2438, 0x10u, v128, v2420, 4);
          goto LABEL_974;
        case 4u:
          v1533 = v140;
          sub_27729C91C(&v2438, 0x10u, v128, v2420);
          v276 = sub_27729C91C(&v2438.i64[1], 0x10u, (v128 + 1), v2420);
          goto LABEL_974;
        case 5u:
          v1533 = v140;
          *v1744.i64 = sub_27729CAF0(&v2438, 0x10u, v128, v2420, v270, *v266.i64, *v269.i64, *v268.i64, 3.52371676e-294, a8, a9, a10);
          *v276.i64 = sub_27729CAF0(&v2438.i64[1], 0x10u, (v128 + 1), v2420, v1744, v1745, v1746, v1747, v1748, v1749, v1750, v1751);
          goto LABEL_974;
        case 6u:
          v1533 = v140;
          *v1761.i64 = sub_27729CDD0(&v2438, 0x10u, v128, v2420, v270, v266, v269, v268, xmmword_2773B3DF0, a8, a9, a10);
          *v276.i64 = sub_27729CDD0(&v2438.i64[1], 0x10u, (v128 + 1), v2420, v1761, v1762, v1763, v1764, v1765, v1766, v1767, v1768);
          goto LABEL_974;
        case 7u:
          v1533 = v140;
          v1579 = sub_27729D274(&v2438, 0x10u, v128, v2420, *v270.i64, *v266.i64, *v269.i64, *v268.i64, 3.52371676e-294, a8.n128_f64[0], a9, a10);
          *v276.i64 = sub_27729D274(&v2438.i64[1], 0x10u, (v128 + 1), v2420, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586);
          goto LABEL_974;
        case 8u:
          v1533 = v140;
          sub_27729D550(&v2438, 0x10u, v128, v2420);
          v276 = sub_27729D550(&v2438.i64[1], 0x10u, (v128 + 1), v2420);
          goto LABEL_974;
        case 9u:
          v1533 = v140;
          sub_27729D714(&v2438, 0x10u, v128, v2420);
          *v276.i64 = sub_27729D714(&v2438.i64[1], 0x10u, (v128 + 1), v2420);
          goto LABEL_974;
        case 0xAu:
          v1533 = v140;
          sub_27729B7DC(&v2438, 16, v128, v2420, 4);
          goto LABEL_974;
        case 0xBu:
          v1533 = v140;
          sub_27729DE6C(&v2438, 0x10u, v128, v2420);
          *v276.i64 = sub_27729DE6C(&v2438.i64[1], 0x10u, (v128 + 1), v2420);
          goto LABEL_974;
        case 0xCu:
          v1533 = v140;
          sub_27729E5C4(&v2438, 0x10u, v128, v2420);
          v276 = sub_27729E5C4(&v2438.i64[1], 0x10u, (v128 + 1), v2420);
          goto LABEL_974;
        case 0xDu:
          v1533 = v140;
          *v1753.i64 = sub_27729E798(&v2438, 0x10u, v128, v2420, v270, *v266.i64, *v269.i64, *v268.i64, 3.52371676e-294, a8, a9, a10);
          *v276.i64 = sub_27729E798(&v2438.i64[1], 0x10u, (v128 + 1), v2420, v1753, v1754, v1755, v1756, v1757, v1758, v1759, v1760);
          goto LABEL_974;
        case 0xEu:
          v1533 = v140;
          *v1534.i64 = sub_27729EA7C(&v2438, 0x10u, v128, v2420, v270, v266, v269, v268, xmmword_2773B3DF0, a8, a9, a10);
          *v276.i64 = sub_27729EA7C(&v2438.i64[1], 0x10u, (v128 + 1), v2420, v1534, v1535, v1536, v1537, v1538, v1539, v1540, v1541);
          goto LABEL_974;
        case 0xFu:
          v1533 = v140;
          v1560 = sub_27729EF20(&v2438, 0x10u, v128, v2420, *v270.i64, *v266.i64, *v269.i64, *v268.i64, 3.52371676e-294, a8.n128_f64[0], a9, a10);
          *v276.i64 = sub_27729EF20(&v2438.i64[1], 0x10u, (v128 + 1), v2420, v1560, v1561, v1562, v1563, v1564, v1565, v1566, v1567);
LABEL_974:
          v140 = v1533;
          v26.i64[0] = v2436.i64[0];
          v275 = v2390;
          break;
        default:
          v273 = v149 + v68 - 4;
          v274 = &v2438;
          v275 = v2390;
          do
          {
            v276 = *v128;
            v128 = (v128 + v2417);
            v266.i64[0] = v26.i64[0];
            vst2_s8(v274->i8, *(&v266 - 8));
            ++v274;
            _CF = __CFADD__(v273++, 1);
          }

          while (!_CF);
          break;
      }

      switch(v140)
      {
        case 1:
          sub_27729AC20(&v2442, 0x10u, v275, v2420, 4);
          goto LABEL_995;
        case 2:
          sub_27729ACE8(v2442.i8, 0x10u, v275, v2420, 4);
          goto LABEL_995;
        case 3:
          sub_27729ADA4(&v2442, 0x10u, v275, v2420, 4);
          goto LABEL_995;
        case 4:
          v1787 = v275;
          sub_27729C91C(&v2442, 0x10u, v275, v2420);
          sub_27729C91C(&v2442.i64[1], 0x10u, v1787->val + 4, v2420);
          goto LABEL_995;
        case 5:
          v1808 = v275;
          *v1809.i64 = sub_27729CAF0(&v2442, 0x10u, v275, v2420, v276, *v266.i64, *v269.i64, *v268.i64, *v259.i64, a8, a9, a10);
          sub_27729CAF0(&v2442.i64[1], 0x10u, v1808->val + 4, v2420, v1809, v1810, v1811, v1812, v1813, v1814, v1815, v1816);
          goto LABEL_995;
        case 6:
          v1826 = v275;
          *v1827.i64 = sub_27729CDD0(&v2442, 0x10u, v275, v2420, v276, v266, v269, v268, v259, a8, a9, a10);
          sub_27729CDD0(&v2442.i64[1], 0x10u, v1826->val + 4, v2420, v1827, v1828, v1829, v1830, v1831, v1832, v1833, v1834);
          goto LABEL_995;
        case 7:
          v1799 = v275;
          v1800 = sub_27729D274(&v2442, 0x10u, v275, v2420, *v276.i64, *v266.i64, *v269.i64, *v268.i64, *v259.i64, a8.n128_f64[0], a9, a10);
          sub_27729D274(&v2442.i64[1], 0x10u, v1799->val + 4, v2420, v1800, v1801, v1802, v1803, v1804, v1805, v1806, v1807);
          goto LABEL_995;
        case 8:
          v1835 = v275;
          sub_27729D550(&v2442, 0x10u, v275, v2420);
          sub_27729D550(&v2442.i64[1], 0x10u, v1835->val + 4, v2420);
          goto LABEL_995;
        case 9:
          v1789 = v275;
          sub_27729D714(&v2442, 0x10u, v275, v2420);
          sub_27729D714(&v2442.i64[1], 0x10u, v1789->val + 4, v2420);
          goto LABEL_995;
        case 10:
          sub_27729B7DC(&v2442, 16, v275, v2420, 4);
          goto LABEL_995;
        case 11:
          v1786 = v275;
          sub_27729DE6C(&v2442, 0x10u, v275, v2420);
          sub_27729DE6C(&v2442.i64[1], 0x10u, v1786->val + 4, v2420);
          goto LABEL_995;
        case 12:
          v1788 = v275;
          sub_27729E5C4(&v2442, 0x10u, v275, v2420);
          sub_27729E5C4(&v2442.i64[1], 0x10u, v1788->val + 4, v2420);
          goto LABEL_995;
        case 13:
          v1817 = v275;
          *v1818.i64 = sub_27729E798(&v2442, 0x10u, v275, v2420, v276, *v266.i64, *v269.i64, *v268.i64, *v259.i64, a8, a9, a10);
          sub_27729E798(&v2442.i64[1], 0x10u, v1817->val + 4, v2420, v1818, v1819, v1820, v1821, v1822, v1823, v1824, v1825);
          goto LABEL_995;
        case 14:
          v1777 = v275;
          *v1778.i64 = sub_27729EA7C(&v2442, 0x10u, v275, v2420, v276, v266, v269, v268, v259, a8, a9, a10);
          sub_27729EA7C(&v2442.i64[1], 0x10u, v1777->val + 4, v2420, v1778, v1779, v1780, v1781, v1782, v1783, v1784, v1785);
          goto LABEL_995;
        case 15:
          v1790 = v275;
          v1791 = sub_27729EF20(&v2442, 0x10u, v275, v2420, *v276.i64, *v266.i64, *v269.i64, *v268.i64, *v259.i64, a8.n128_f64[0], a9, a10);
          sub_27729EF20(&v2442.i64[1], 0x10u, v1790->val + 4, v2420, v1791, v1792, v1793, v1794, v1795, v1796, v1797, v1798);
LABEL_995:
          v1772 = 2 * v2425;
          v1773 = 4 * v2425;
          v1774 = 6 * v2425;
          break;
        default:
          v1770 = v271 + v2373 - 4;
          v1771 = &v2442;
          v1772 = 2 * v2425;
          v1773 = 4 * v2425;
          v1774 = 6 * v2425;
          do
          {
            v1775 = *v275;
            v275 = (v275 + v2417);
            v1776 = v26.i64[0];
            vst2_s8(v1771->i8, v1775);
            ++v1771;
            _CF = __CFADD__(v1770++, 1);
          }

          while (!_CF);
          break;
      }

      v1836 = vrhaddq_u16(v2438, v2442);
      v1837 = vrhaddq_u16(v2439, v2443);
      v1838 = vrhaddq_u16(v2440, v2444);
      v1839 = vrhaddq_u16(v2441[0], v2445[0]);
      if (v2423)
      {
        v1836 = vaddq_s16(*v138, v1836);
        v1837 = vaddq_s16(*(v138 + 32), v1837);
        v1838 = vaddq_s16(*(v138 + 64), v1838);
        v1839 = vaddq_s16(*(v138 + 96), v1839);
      }

      *v137->i8 = vqmovun_s16(v1836);
      *&v137->i8[v1772] = vqmovun_s16(v1837);
      *&v137->i8[v1773] = vqmovun_s16(v1838);
      *&v137->i8[v1774] = vqmovun_s16(v1839);
      sub_2772906A8(&v2447, _X25, v2420, &v2456);
      sub_2772906A8(&v2452, v272, v2420, &v2460);
      v1840 = vrhaddq_u16(v2447, v2452);
      v25 = vrhaddq_u16(v2448, v2453);
      if (v2422)
      {
        v1840 = vaddq_s16(*v141, v1840);
        v25 = vaddq_s16(*(v141 + 32), v25);
      }

      v27.i64[0] = 0x20002000200020;
      v27.i64[1] = 0x20002000200020;
      v28.i64[0] = 0x10001000100010;
      v28.i64[1] = 0x10001000100010;
      *v25.i8 = vqmovun_s16(v25);
      *v139->i8 = vqmovun_s16(v1840);
      *(v139->i64 + v2417) = v25.i64[0];
      v24 = 4 * v2425;
    }

    v10 = v2434;
    v26 = v2436;
    goto LABEL_1085;
  }
}