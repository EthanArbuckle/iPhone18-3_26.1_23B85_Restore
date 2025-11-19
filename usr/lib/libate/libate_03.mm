void EncodeDualPartitionBlock(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int8x16_t *a5, float *a6, uint64_t a7)
{
  STACK[0x1358] = *MEMORY[0x29EDCA608];
  DualPartitionBlockInfo = GetDualPartitionBlockInfo(8u, 16 - 4 * *(a1 + 136));
  v1322 = 0;
  v1320 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  *v18.i32 = *(ReciprocalTable + ((DualPartitionBlockInfo >> 54) & 0x3FC)) * 0.5;
  *v18.i32 = *v18.i32 * *v18.i32;
  v19 = 3.0;
  if (!*(a1 + 136))
  {
    v19 = 4.0;
  }

  *v18.i32 = *v18.i32 * v19;
  v20 = a7 + 400;
  v21 = a7 + 288;
  v22 = a1 + 1168;
  v23 = vdupq_lane_s32(v18, 0);
  v1318 = STACK[0x11E8];
  v24.i64[0] = 0x3F0000003FLL;
  v24.i64[1] = 0x3F0000003FLL;
  v1315 = STACK[0x11D8];
  v1324 = vnegq_f32(v24);
  v1328 = v1324;
  v1344 = v1324;
  *&STACK[0xC80] = v1324;
  v1333 = INFINITY;
  v24.i32[0] = 2139095040;
  v1330 = v24;
  v1337 = v1324;
  v1340 = v1324;
  *&STACK[0xCC0] = v23;
  while (1)
  {
    v25 = v15;
    v26 = v15++ < 3 ? 3 : -3;
    if (v25 <= 4)
    {
      break;
    }

LABEL_78:
    if (v25 == 5)
    {
      v393 = *&STACK[0xC80];
      *&STACK[0x1240] = v1344;
      *&STACK[0x1230] = v393;
      *&STACK[0x1220] = v1324;
      *&STACK[0x1210] = v1337;
      *&STACK[0x1200] = v1328;
      v393.i64[1] = v1340.i64[1];
      *&STACK[0x11F0] = v1340;
      STACK[0x11E8] = v1318;
      STACK[0x11E0] = v8;
      STACK[0x11D8] = v1315;
      STACK[0x11D0] = v7;
      LODWORD(STACK[0x11CC]) = v1320;
      LODWORD(STACK[0x11C8]) = v16;
      v394 = 2;
      if (v14 < 2)
      {
        v394 = v14;
      }

      v1283 = v394;
      LODWORD(STACK[0x11C4]) = v1322;
      LODWORD(STACK[0x11C0]) = v17;
      if (!v14)
      {
        goto LABEL_273;
      }

      v395 = 0;
      __asm { FMOV            V31.4S, #1.0 }

      v397 = 0uLL;
      v398 = &unk_298495000;
      v399 = &unk_298495000;
      v393.i64[0] = 3;
      v1284 = v393;
      v400 = &unk_298495000;
      v401.i64[0] = 0xFF000000FFLL;
      v401.i64[1] = 0xFF000000FFLL;
      v1296 = _Q31;
      while (1)
      {
        v402 = *(&STACK[0x1230] + v395);
        v403 = *(&STACK[0x11D0] + v395);
        v1295 = *(&STACK[0x11E0] + v395);
        v404 = vcnt_s8(v1295);
        v404.i16[0] = vaddlv_u8(v404);
        if ((64 - v404.i32[0]) >= v404.i32[0])
        {
          v405 = v404.u32[0];
        }

        else
        {
          v405 = (64 - v404.i32[0]);
        }

        *&STACK[0xE00] = v397;
        *&STACK[0xDF0] = v397;
        STACK[0xE10] = -1;
        if (v405)
        {
          v406 = 0;
          v407 = vdupq_n_s32(v405);
          v408 = vdupq_n_s64(v1295);
          v409 = vdupq_n_s64(~v403);
          v410 = &DualPartitionTableIndices_8x8 + 96 * v405;
          v411 = 0uLL;
          v412.i64[0] = -1;
          v412.i64[1] = -1;
          v413 = &DualPartitionTable_8x8 + 384 * v405;
          v414 = v405;
          v415 = 0uLL;
          do
          {
            v416 = (&DualPartitionTable_8x8 + 384 * v405 + 32 * v406);
            if (!v416->i64[0])
            {
              break;
            }

            v417 = v416[1];
            v418 = veorq_s8(*v416, v408);
            v419 = vcntq_s8(vandq_s8(v418, v409));
            v12.i8[0] = vaddv_s8(*v419.i8);
            v419.i64[0] = vextq_s8(v419, v419, 8uLL).u64[0];
            v419.i8[0] = vaddv_s8(*v419.i8);
            v420 = v419.i32[0];
            v421 = veorq_s8(v417, v408);
            v422 = vcntq_s8(vandq_s8(v421, v409));
            v13.i8[0] = vaddv_s8(*v422.i8);
            v422.i64[0] = vextq_s8(v422, v422, 8uLL).u64[0];
            v422.i8[0] = vaddv_s8(*v422.i8);
            v12.i32[1] = v420;
            v12.i64[1] = __PAIR64__(v422.u32[0], v13.u32[0]);
            v423 = vcntq_s8(vbicq_s8(v409, v418));
            v422.i8[0] = vaddv_s8(*v423.i8);
            v423.i64[0] = vextq_s8(v423, v423, 8uLL).u64[0];
            v423.i8[0] = vaddv_s8(*v423.i8);
            v424 = v423.i32[0];
            v425 = vcntq_s8(vbicq_s8(v409, v421));
            v421.i8[0] = vaddv_s8(*v425.i8);
            v425.i64[0] = vextq_s8(v425, v425, 8uLL).u64[0];
            v425.i8[0] = vaddv_s8(*v425.i8);
            v422.i32[1] = v424;
            v422.i64[1] = __PAIR64__(v425.u32[0], v421.u32[0]);
            v426 = vminq_s32(vandq_s8(v12, v401), vandq_s8(v422, v401));
            if (vminvq_s32(v426) < v414)
            {
              for (i = 0; i != 4; ++i)
              {
                *&STACK[0xD40] = v426;
                v428 = *(&STACK[0xD40] & 0xFFFFFFFFFFFFFFF3 | (4 * (i & 3)));
                if (v428 < v414 && (*&v410[2 * i] & 0x80000000) == 0)
                {
                  if (v428 >= v407.i32[0])
                  {
                    if (v428 >= v407.i32[1])
                    {
                      if (v428 >= v407.i32[2])
                      {
                        if (v428 < v407.i32[3])
                        {
                          v415.i64[1] = *&v413[8 * i];
                          v407.i32[3] = *(&STACK[0xD40] & 0xFFFFFFFFFFFFFFF3 | (4 * (i & 3)));
                          v412.i32[3] = *&v410[2 * i];
                        }
                      }

                      else
                      {
                        v415 = vdupq_lane_s64(v415.i64[0], 0);
                        v429.i64[0] = v407.i64[0];
                        v429.i32[2] = *(&STACK[0xD40] & 0xFFFFFFFFFFFFFFF3 | (4 * (i & 3)));
                        v429.i32[3] = v407.i32[2];
                        v430.i64[0] = v412.i64[0];
                        v430.i64[1] = __PAIR64__(v412.u32[2], *&v410[2 * i]);
                        v415.i64[0] = *&v413[8 * i];
                        v412 = v430;
                        v407 = v429;
                      }
                    }

                    else
                    {
                      v415 = vextq_s8(v411, v415, 8uLL);
                      v407 = vzip1q_s32(v407, vzip2q_s32(v407, v407));
                      v412 = vzip1q_s32(v412, vzip2q_s32(v412, v412));
                      v411.i64[1] = *&v413[8 * i];
                      v407.i32[1] = *(&STACK[0xD40] & 0xFFFFFFFFFFFFFFF3 | (4 * (i & 3)));
                      v412.i32[1] = *&v410[2 * i];
                    }
                  }

                  else
                  {
                    v415 = vextq_s8(v411, v415, 8uLL);
                    v411 = vdupq_lane_s64(v411.i64[0], 0);
                    v407 = vextq_s8(v411, v407, 0xCuLL);
                    v412 = vextq_s8(v411, v412, 0xCuLL);
                    v411.i64[0] = *&v413[8 * i];
                    v407.i32[0] = *(&STACK[0xD40] & 0xFFFFFFFFFFFFFFF3 | (4 * (i & 3)));
                    v412.i32[0] = *&v410[2 * i];
                  }

                  v414 = v407.i32[3];
                }
              }
            }

            ++v406;
            v413 += 32;
            v410 += 8;
          }

          while (v406 != 12);
          v431 = v407.i32[3];
          if (v407.i32[3] >= 2)
          {
            v432 = &DualPartitionTable_8x8 + 384 * v405;
            v433 = v432 - 384;
            v434 = &DualPartitionTableIndices_8x8 + 96 * v405;
            v435 = v434 - 96;
            v436 = v432 + 384;
            v437 = v434 + 96;
            v438 = 1;
            do
            {
              if (v405 - v438 >= 1)
              {
                v439 = 0;
                v440 = v435;
                v441 = v433;
                do
                {
                  v442 = (&DualPartitionTable_8x8 + 384 * (v405 - v438) + 32 * v439);
                  if (!v442->i64[0])
                  {
                    break;
                  }

                  v443 = v442[1];
                  v444 = veorq_s8(*v442, v408);
                  v445 = vcntq_s8(vandq_s8(v444, v409));
                  v12.i8[0] = vaddv_s8(*v445.i8);
                  v445.i64[0] = vextq_s8(v445, v445, 8uLL).u64[0];
                  v445.i8[0] = vaddv_s8(*v445.i8);
                  v446 = v445.i32[0];
                  v447 = veorq_s8(v443, v408);
                  v448 = vcntq_s8(vandq_s8(v447, v409));
                  v13.i8[0] = vaddv_s8(*v448.i8);
                  v448.i64[0] = vextq_s8(v448, v448, 8uLL).u64[0];
                  v448.i8[0] = vaddv_s8(*v448.i8);
                  v12.i32[1] = v446;
                  v12.i64[1] = __PAIR64__(v448.u32[0], v13.u32[0]);
                  v449 = vcntq_s8(vbicq_s8(v409, v444));
                  v448.i8[0] = vaddv_s8(*v449.i8);
                  v449.i64[0] = vextq_s8(v449, v449, 8uLL).u64[0];
                  v449.i8[0] = vaddv_s8(*v449.i8);
                  v450 = v449.i32[0];
                  v451 = vcntq_s8(vbicq_s8(v409, v447));
                  v447.i8[0] = vaddv_s8(*v451.i8);
                  v451.i64[0] = vextq_s8(v451, v451, 8uLL).u64[0];
                  v451.i8[0] = vaddv_s8(*v451.i8);
                  v448.i32[1] = v450;
                  v448.i64[1] = __PAIR64__(v451.u32[0], v447.u32[0]);
                  v452 = vminq_s32(vandq_s8(v12, v401), vandq_s8(v448, v401));
                  if (vminvq_s32(v452) < v431)
                  {
                    for (j = 0; j != 4; ++j)
                    {
                      *&STACK[0xD30] = v452;
                      v454 = *(&STACK[0xD30] & 0xFFFFFFFFFFFFFFF3 | (4 * (j & 3)));
                      if (v454 < v431 && (*&v440[2 * j] & 0x80000000) == 0)
                      {
                        if (v454 >= v407.i32[0])
                        {
                          if (v454 >= v407.i32[1])
                          {
                            if (v454 >= v407.i32[2])
                            {
                              if (v454 < v407.i32[3])
                              {
                                v415.i64[1] = *&v441[8 * j];
                                v407.i32[3] = *(&STACK[0xD30] & 0xFFFFFFFFFFFFFFF3 | (4 * (j & 3)));
                                v412.i32[3] = *&v440[2 * j];
                              }
                            }

                            else
                            {
                              v415 = vdupq_lane_s64(v415.i64[0], 0);
                              v455.i64[0] = v407.i64[0];
                              v455.i32[2] = *(&STACK[0xD30] & 0xFFFFFFFFFFFFFFF3 | (4 * (j & 3)));
                              v455.i32[3] = v407.i32[2];
                              v456.i64[0] = v412.i64[0];
                              v456.i64[1] = __PAIR64__(v412.u32[2], *&v440[2 * j]);
                              v415.i64[0] = *&v441[8 * j];
                              v412 = v456;
                              v407 = v455;
                            }
                          }

                          else
                          {
                            v415 = vextq_s8(v411, v415, 8uLL);
                            v407 = vzip1q_s32(v407, vzip2q_s32(v407, v407));
                            v412 = vzip1q_s32(v412, vzip2q_s32(v412, v412));
                            v411.i64[1] = *&v441[8 * j];
                            v407.i32[1] = *(&STACK[0xD30] & 0xFFFFFFFFFFFFFFF3 | (4 * (j & 3)));
                            v412.i32[1] = *&v440[2 * j];
                          }
                        }

                        else
                        {
                          v415 = vextq_s8(v411, v415, 8uLL);
                          v411 = vdupq_lane_s64(v411.i64[0], 0);
                          v407 = vextq_s8(v411, v407, 0xCuLL);
                          v412 = vextq_s8(v411, v412, 0xCuLL);
                          v411.i64[0] = *&v441[8 * j];
                          v407.i32[0] = *(&STACK[0xD30] & 0xFFFFFFFFFFFFFFF3 | (4 * (j & 3)));
                          v412.i32[0] = *&v440[2 * j];
                        }

                        v431 = v407.i32[3];
                      }
                    }
                  }

                  ++v439;
                  v441 += 32;
                  v440 += 8;
                }

                while (v439 != 12);
              }

              v431 = v407.i32[3];
              v457 = v407.i32[3];
              if (v438 < v407.i32[3] && (v438 + v405) <= 0x20)
              {
                v458 = 0;
                v459 = v437;
                v460 = v436;
                do
                {
                  v461 = (&DualPartitionTable_8x8 + 384 * v438 + 384 * v405 + 32 * v458);
                  if (!v461->i64[0])
                  {
                    break;
                  }

                  v462 = v461[1];
                  v463 = veorq_s8(*v461, v408);
                  v464 = vcntq_s8(vandq_s8(v463, v409));
                  v12.i8[0] = vaddv_s8(*v464.i8);
                  v464.i64[0] = vextq_s8(v464, v464, 8uLL).u64[0];
                  v464.i8[0] = vaddv_s8(*v464.i8);
                  v465 = v464.i32[0];
                  v466 = veorq_s8(v462, v408);
                  v467 = vcntq_s8(vandq_s8(v466, v409));
                  v13.i8[0] = vaddv_s8(*v467.i8);
                  v467.i64[0] = vextq_s8(v467, v467, 8uLL).u64[0];
                  v467.i8[0] = vaddv_s8(*v467.i8);
                  v12.i32[1] = v465;
                  v12.i64[1] = __PAIR64__(v467.u32[0], v13.u32[0]);
                  v468 = vcntq_s8(vbicq_s8(v409, v463));
                  v467.i8[0] = vaddv_s8(*v468.i8);
                  v468.i64[0] = vextq_s8(v468, v468, 8uLL).u64[0];
                  v468.i8[0] = vaddv_s8(*v468.i8);
                  v469 = v468.i32[0];
                  v470 = vcntq_s8(vbicq_s8(v409, v466));
                  v466.i8[0] = vaddv_s8(*v470.i8);
                  v470.i64[0] = vextq_s8(v470, v470, 8uLL).u64[0];
                  v470.i8[0] = vaddv_s8(*v470.i8);
                  v467.i32[1] = v469;
                  v467.i64[1] = __PAIR64__(v470.u32[0], v466.u32[0]);
                  v471 = vminq_s32(vandq_s8(v12, v401), vandq_s8(v467, v401));
                  if (vminvq_s32(v471) < v431)
                  {
                    for (k = 0; k != 4; ++k)
                    {
                      *&STACK[0xD20] = v471;
                      v473 = *(&STACK[0xD20] & 0xFFFFFFFFFFFFFFF3 | (4 * (k & 3)));
                      if (v473 < v431 && (*&v459[2 * k] & 0x80000000) == 0)
                      {
                        if (v473 >= v407.i32[0])
                        {
                          if (v473 >= v407.i32[1])
                          {
                            if (v473 >= v407.i32[2])
                            {
                              if (v473 < v407.i32[3])
                              {
                                v415.i64[1] = *&v460[8 * k];
                                v407.i32[3] = *(&STACK[0xD20] & 0xFFFFFFFFFFFFFFF3 | (4 * (k & 3)));
                                v412.i32[3] = *&v459[2 * k];
                              }
                            }

                            else
                            {
                              v415 = vdupq_lane_s64(v415.i64[0], 0);
                              v474.i64[0] = v407.i64[0];
                              v474.i32[2] = *(&STACK[0xD20] & 0xFFFFFFFFFFFFFFF3 | (4 * (k & 3)));
                              v474.i32[3] = v407.i32[2];
                              v475.i64[0] = v412.i64[0];
                              v475.i64[1] = __PAIR64__(v412.u32[2], *&v459[2 * k]);
                              v415.i64[0] = *&v460[8 * k];
                              v412 = v475;
                              v407 = v474;
                            }
                          }

                          else
                          {
                            v415 = vextq_s8(v411, v415, 8uLL);
                            v407 = vzip1q_s32(v407, vzip2q_s32(v407, v407));
                            v412 = vzip1q_s32(v412, vzip2q_s32(v412, v412));
                            v411.i64[1] = *&v460[8 * k];
                            v407.i32[1] = *(&STACK[0xD20] & 0xFFFFFFFFFFFFFFF3 | (4 * (k & 3)));
                            v412.i32[1] = *&v459[2 * k];
                          }
                        }

                        else
                        {
                          v415 = vextq_s8(v411, v415, 8uLL);
                          v411 = vdupq_lane_s64(v411.i64[0], 0);
                          v407 = vextq_s8(v411, v407, 0xCuLL);
                          v412 = vextq_s8(v411, v412, 0xCuLL);
                          v411.i64[0] = *&v460[8 * k];
                          v407.i32[0] = *(&STACK[0xD20] & 0xFFFFFFFFFFFFFFF3 | (4 * (k & 3)));
                          v412.i32[0] = *&v459[2 * k];
                        }

                        v431 = v407.i32[3];
                      }
                    }
                  }

                  ++v458;
                  v460 += 32;
                  v459 += 8;
                }

                while (v458 != 12);
                v431 = v407.i32[3];
                v457 = v407.i32[3];
              }

              if (v438 > 3)
              {
                break;
              }

              ++v438;
              v433 -= 384;
              v435 -= 96;
              v436 += 384;
              v437 += 96;
            }

            while (v438 < v457);
          }

          *&STACK[0xDF0] = v411;
          *&STACK[0xE00] = v415;
          STACK[0xE10] = vmovn_s32(v412);
        }

        v476 = 0;
        v477 = vdupq_lane_s32(*v402.f32, 0);
        v478 = vdupq_lane_s32(*v402.f32, 1);
        v479 = vdupq_laneq_s32(v402, 2);
        v480 = vdupq_laneq_s32(v402, 3);
        v1323 = v402;
        v1294 = v395;
        vars0 = v478;
        v1293 = v477;
        v1290 = v480;
        v1291 = v479;
        do
        {
          v481 = *(&STACK[0xE10] + v476);
          if (v481 == 0xFFFF)
          {
            goto LABEL_271;
          }

          v482 = *(&STACK[0xDF0] + v476);
          v483 = 224;
          v484 = v482;
          do
          {
            v485 = *(VectorMaskForBitMask + (v484 & 0xF0));
            v486 = (&STACK[0xFC0] + v483);
            *v486 = v485;
            v487 = VectorMaskForBitMask[v484 & 0xF];
            *v486 = v485;
            v486[1] = v487;
            v484 >>= 8;
            v483 -= 32;
          }

          while (v483 != -32);
          v488 = vcnt_s8((v482 ^ v1295));
          v488.i16[0] = vaddlv_u8(v488);
          v489 = &STACK[0x11C8];
          if (v488.u32[0] <= 0x20uLL)
          {
            v490 = &STACK[0x11C8];
          }

          else
          {
            v490 = &STACK[0x11C0];
          }

          if (v488.u32[0] <= 0x20uLL)
          {
            v489 = &STACK[0x11C0];
          }

          v491 = &STACK[0x1210];
          if (v488.u32[0] <= 0x20uLL)
          {
            v492 = &STACK[0x1210];
          }

          else
          {
            v492 = &STACK[0x11F0];
          }

          if (v488.u32[0] <= 0x20uLL)
          {
            v491 = &STACK[0x11F0];
          }

          v493 = *&v491[2 * v395];
          v494 = *(a1 + 32);
          v1319 = *&v492[2 * v395];
          v1321 = v493;
          v495 = vsubq_f32(v1319, v402);
          v496 = 0;
          if (v494)
          {
            v497 = vmulq_f32(v495, *v494);
            v498 = vmulq_f32(v495, v497);
            v499 = vaddv_f32(vadd_f32(*v498.i8, *&vextq_s8(v498, v498, 8uLL)));
            v500 = vdupq_lane_s32(*v497.f32, 0);
            v501 = fabsf(v499);
            v502 = vdupq_laneq_s32(v497, 2);
            v503 = vdupq_laneq_s32(v497, 3);
            v504 = vsubq_f32(v493, v402);
            v505 = vmulq_f32(v504, *v494);
            v506 = vmulq_f32(v504, v505);
            v507 = vaddv_f32(vadd_f32(*v506.i8, *&vextq_s8(v506, v506, 8uLL)));
            v508 = fabsf(v507);
            v509 = vdupq_lane_s32(*v505.f32, 0);
            v510 = vdupq_laneq_s32(v505, 2);
            v511 = vdupq_laneq_s32(v505, 3);
            do
            {
              v512 = 0.0;
              v513 = 0.0;
              if (v501 >= 0.000015259)
              {
                v513 = vrecpes_f32(v499);
              }

              if (v508 >= 0.000015259)
              {
                v512 = vrecpes_f32(v507);
              }

              v514 = vsubq_f32(*(a1 + v496 + 176), v477);
              v515 = vsubq_f32(*(a1 + v496 + 160), v477);
              v516 = vsubq_f32(*(a1 + v496 + 192), v477);
              v517 = vsubq_f32(*(a1 + v496 + 448), v478);
              v518 = vsubq_f32(*(a1 + v496 + 704), v479);
              v519 = vmlaq_f32(vmulq_lane_f32(v517, *v497.f32, 1), v500, v516);
              v520 = vmlaq_f32(vmulq_lane_f32(v517, *v505.f32, 1), v509, v516);
              v521 = vsubq_f32(*(a1 + v496 + 960), v480);
              v522 = vbslq_s8(vcltzq_s32(*(&STACK[0xFC0] + v496 + 48)), vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(v520, v510, v518), v511, v521), v512), _Q31), v397), vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(v519, v502, v518), v503, v521), v513), _Q31), v397));
              v523 = vsubq_f32(*(a1 + v496 + 432), v478);
              v524 = vsubq_f32(*(a1 + v496 + 416), v478);
              v525 = vmlaq_f32(vmulq_lane_f32(v524, *v497.f32, 1), v500, v515);
              v526 = vmlaq_f32(vmulq_lane_f32(v524, *v505.f32, 1), v509, v515);
              v527 = vsubq_f32(*(a1 + v496 + 688), v479);
              v528 = vmlaq_f32(vmlaq_f32(vmulq_lane_f32(v523, *v497.f32, 1), v500, v514), v502, v527);
              v529 = vmlaq_f32(vmlaq_f32(vmulq_lane_f32(v523, *v505.f32, 1), v509, v514), v510, v527);
              v530 = vsubq_f32(*(a1 + v496 + 672), v479);
              v531 = vmlaq_f32(v525, v502, v530);
              v532 = vmlaq_f32(v526, v510, v530);
              v533 = vsubq_f32(*(a1 + v496 + 928), v480);
              v534 = vsubq_f32(*(a1 + v496 + 944), v480);
              v535 = vbslq_s8(vcltzq_s32(*(&STACK[0xFC0] + v496 + 32)), vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(v529, v511, v534), v512), _Q31), v397), vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(v528, v503, v534), v513), _Q31), v397));
              v536 = vbslq_s8(vcltzq_s32(*(&STACK[0xFC0] + v496 + 16)), vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(v532, v511, v533), v512), _Q31), v397), vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(v531, v503, v533), v513), _Q31), v397));
              v537 = vsubq_f32(*(a1 + v496 + 144), v477);
              v538 = vsubq_f32(*(a1 + v496 + 400), v478);
              v539 = vsubq_f32(*(a1 + v496 + 656), v479);
              v540 = vsubq_f32(*(a1 + v496 + 912), v480);
              v541 = (&STACK[0x10C0] + v496);
              *v541 = vbslq_s8(vcltzq_s32(*(&STACK[0xFC0] + v496)), vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(v538, *v505.f32, 1), v509, v537), v510, v539), v511, v540), v512), _Q31), v397), vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(v538, *v497.f32, 1), v500, v537), v502, v539), v503, v540), v513), _Q31), v397));
              v541[1] = v536;
              v541[2] = v535;
              v541[3] = v522;
              v496 += 64;
            }

            while (v496 != 256);
          }

          else
          {
            v542 = vmulq_f32(v495, v495);
            v543 = vrecpes_f32(vaddv_f32(vadd_f32(*v542.i8, *&vextq_s8(v542, v542, 8uLL))));
            v544 = vdupq_lane_s32(*v495.f32, 0);
            v545 = vdupq_laneq_s32(v495, 2);
            v546 = vdupq_laneq_s32(v495, 3);
            v547 = vsubq_f32(v493, v402);
            v548 = vmulq_f32(v547, v547);
            v549 = vrecpes_f32(vaddv_f32(vadd_f32(*v548.i8, *&vextq_s8(v548, v548, 8uLL))));
            v550 = vdupq_lane_s32(*v547.f32, 0);
            v551 = vdupq_laneq_s32(v547, 2);
            v552 = vdupq_laneq_s32(v547, 3);
            do
            {
              v553 = vsubq_f32(*(a1 + v496 + 192), v477);
              v554 = vsubq_f32(*(a1 + v496 + 144), v477);
              v555 = vsubq_f32(*(a1 + v496 + 400), v478);
              v556 = vsubq_f32(*(a1 + v496 + 448), v478);
              v557 = vsubq_f32(*(a1 + v496 + 704), v479);
              v558 = vsubq_f32(*(a1 + v496 + 960), v480);
              v559 = vmlaq_f32(vmulq_lane_f32(v555, *v495.f32, 1), v544, v554);
              v560 = vmlaq_f32(vmulq_lane_f32(v555, *v547.f32, 1), v550, v554);
              v561 = vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(v556, *v495.f32, 1), v544, v553), v545, v557), v546, v558), v543);
              v562 = vmlaq_f32(vmulq_lane_f32(v556, *v547.f32, 1), v550, v553);
              __asm { FMOV            V23.4S, #1.0 }

              v564 = vbslq_s8(vcltzq_s32(*(&STACK[0xFC0] + v496 + 48)), vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(v562, v551, v557), v552, v558), v549), _Q23), v397), vmaxnmq_f32(vminnmq_f32(v561, _Q23), v397));
              v565 = vsubq_f32(*(a1 + v496 + 656), v479);
              v566 = vsubq_f32(*(a1 + v496 + 912), v480);
              v567 = vbslq_s8(vcltzq_s32(*(&STACK[0xFC0] + v496)), vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(v560, v551, v565), v552, v566), v549), _Q23), v397), vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(v559, v545, v565), v546, v566), v543), _Q23), v397));
              v568 = vsubq_f32(*(a1 + v496 + 160), v477);
              v569 = vsubq_f32(*(a1 + v496 + 416), v478);
              v570 = vmlaq_f32(vmulq_lane_f32(v569, *v495.f32, 1), v544, v568);
              v571 = vmlaq_f32(vmulq_lane_f32(v569, *v547.f32, 1), v550, v568);
              v572 = vsubq_f32(*(a1 + v496 + 672), v479);
              v573 = vmlaq_f32(v570, v545, v572);
              v574 = vmlaq_f32(v571, v551, v572);
              v575 = vsubq_f32(*(a1 + v496 + 928), v480);
              v576 = vbslq_s8(vcltzq_s32(*(&STACK[0xFC0] + v496 + 16)), vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(v574, v552, v575), v549), _Q23), v397), vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(v573, v546, v575), v543), _Q23), v397));
              v577 = vsubq_f32(*(a1 + v496 + 176), v477);
              v578 = vsubq_f32(*(a1 + v496 + 432), v478);
              v579 = vsubq_f32(*(a1 + v496 + 688), v479);
              v580 = vmlaq_f32(vmlaq_f32(vmulq_lane_f32(v578, *v495.f32, 1), v544, v577), v545, v579);
              v581 = vmlaq_f32(vmlaq_f32(vmulq_lane_f32(v578, *v547.f32, 1), v550, v577), v551, v579);
              v582 = vsubq_f32(*(a1 + v496 + 944), v480);
              v583 = vbslq_s8(vcltzq_s32(*(&STACK[0xFC0] + v496 + 32)), vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(v581, v552, v582), v549), _Q23), v397), vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(v580, v546, v582), v543), _Q23), v397));
              v584 = (&STACK[0x10C0] + v496);
              *v584 = v567;
              v584[1] = v576;
              v584[2] = v583;
              v584[3] = v564;
              v496 += 64;
            }

            while (v496 != 256);
          }

          v1297 = v481;
          v585 = *(v489 + v395);
          v586 = *(v490 + v395);
          *&STACK[0xDD0] = v397;
          *&STACK[0xDE0] = v397;
          *&STACK[0xDB0] = v397;
          *&STACK[0xDC0] = v397;
          *&STACK[0xD90] = v397;
          *&STACK[0xDA0] = v397;
          *&STACK[0xD80] = v397;
          v587 = vdupq_n_s32(0x3DD00000u);
          v588 = vdupq_n_s32(0x3F4C0000u);
          v589 = vdupq_n_s32(0x3D400000u);
          v1313 = *&STACK[0x10D0];
          v1316 = *&STACK[0x10C0];
          v590 = vmulq_f32(*&STACK[0x10C0], v589);
          v591 = vmulq_f32(*&STACK[0x10D0], v589);
          v592 = *&STACK[0x10F0];
          v593 = *&STACK[0x10E0];
          v594 = vmlaq_f32(vmlaq_f32(vmulq_f32(*&STACK[0x10C0], v587), v588, *&STACK[0x10C0]), v587, *&STACK[0x10E0]);
          v595 = vmlaq_f32(vmlaq_f32(vmulq_f32(*&STACK[0x10D0], v587), v588, *&STACK[0x10D0]), v587, *&STACK[0x10F0]);
          *&STACK[0x1260] = v595;
          *&STACK[0x1250] = v594;
          v596 = vdupq_n_s32(0x3F420000u);
          v597 = vdupq_n_s32(0x3CA00000u);
          v1309 = v593;
          v1312 = v592;
          v598 = *&STACK[0x1110];
          v599 = *&STACK[0x1100];
          __asm { FMOV            V19.4S, #0.19531 }

          v601 = vmlaq_f32(vmlaq_f32(v590, v596, v593), _Q19, *&STACK[0x1100]);
          *&STACK[0x1280] = vmlaq_f32(vmlaq_f32(v591, v596, v592), _Q19, *&STACK[0x1110]);
          *&STACK[0x1270] = v601;
          v602 = vdupq_n_s32(0x3F270000u);
          v603 = vmlaq_f32(vmulq_f32(v592, v597), v602, v598);
          v604.i64[0] = 0x3C0000003C000000;
          v604.i64[1] = 0x3C0000003C000000;
          v1310 = v598;
          v1311 = v599;
          v605 = vmulq_f32(v598, v604);
          v606 = *&STACK[0x1130];
          v607 = *&STACK[0x1120];
          __asm { FMOV            V21.4S, #0.32812 }

          v609 = vmlaq_f32(vmlaq_f32(vmulq_f32(v593, v597), v602, v599), _Q21, *&STACK[0x1120]);
          *&STACK[0x12A0] = vmlaq_f32(v603, _Q21, *&STACK[0x1130]);
          *&STACK[0x1290] = v609;
          v610 = vdupq_n_s32(0x3EFC0000u);
          v1307 = v607;
          v1308 = v606;
          v611 = vmlaq_f32(vmlaq_f32(v605, v610, v606), v610, *&STACK[0x1150]);
          v612 = vmlaq_f32(vmlaq_f32(vmulq_f32(v599, v604), v610, v607), v610, *&STACK[0x1140]);
          v1303 = *&STACK[0x1140];
          v613 = vmulq_f32(*&STACK[0x1140], _Q21);
          v1304 = *&STACK[0x1150];
          v614 = vmulq_f32(*&STACK[0x1150], _Q21);
          v615 = *&STACK[0x1170];
          v616 = *&STACK[0x1160];
          v617 = vmlaq_f32(v612, v604, *&STACK[0x1160]);
          *&STACK[0x12C0] = vmlaq_f32(v611, v604, *&STACK[0x1170]);
          *&STACK[0x12B0] = v617;
          v618 = vmlaq_f32(v614, v602, v615);
          v619 = vmlaq_f32(v613, v602, v616);
          v1305 = v615;
          v1306 = v616;
          v620 = vmulq_f32(v616, _Q19);
          v621 = vmulq_f32(v615, _Q19);
          v622 = *&STACK[0x1190];
          v623 = *&STACK[0x1180];
          v624 = vmlaq_f32(v619, v597, *&STACK[0x1180]);
          *&STACK[0x12E0] = vmlaq_f32(v618, v597, *&STACK[0x1190]);
          *&STACK[0x12D0] = v624;
          v625 = *&STACK[0x11B0];
          v626 = *&STACK[0x11A0];
          v627 = vmlaq_f32(vmlaq_f32(v620, v596, v623), v589, *&STACK[0x11A0]);
          *&STACK[0x1300] = vmlaq_f32(vmlaq_f32(v621, v596, v622), v589, *&STACK[0x11B0]);
          *&STACK[0x12F0] = v627;
          v1299 = v626;
          v1300 = v623;
          v1301 = v625;
          v1302 = v622;
          *&STACK[0x1320] = vmlaq_f32(vmlaq_f32(vmulq_f32(v622, v587), v588, v625), v587, v625);
          *&STACK[0x1310] = vmlaq_f32(vmlaq_f32(vmulq_f32(v623, v587), v588, v626), v587, v626);
          v628 = &STACK[0xE60];
          for (m = 32; ; m += 32)
          {
            v630 = vmulq_f32(v594, xmmword_298495E80);
            v631 = vmulq_f32(v594, xmmword_298495EA0);
            v632 = vpaddq_f32(vmulq_f32(v594, v399[230]), vmulq_f32(v595, v398[229]));
            v633 = vqtbl1q_s8(v632, xmmword_298495EB0);
            v634 = vaddq_f32(v632, v633);
            v633.i32[0] = 1037041664;
            v635 = vaddq_f32(v634, vqtbl1q_s8(vmulq_f32(v594, v633).u32[0], xmmword_298495EC0));
            v636 = vpaddq_f32(vpaddq_f32(v630, vmulq_f32(v595, v400[231])), vpaddq_f32(v631, vmulq_f32(v595, xmmword_298495E90)));
            v637 = vuzp1q_s32(v636, vrev64q_s32(v636));
            v638 = vzip1q_s32(v635, v637);
            v639 = vrev64q_s32(v635);
            v639.i64[0] = v637.i64[1];
            v640 = vrev64q_s32(v638);
            v640.i64[0] = v638.i64[0];
            v641 = vmaxnmq_f32(vminnmq_f32(v640, _Q31), v397);
            v642 = vmaxnmq_f32(vminnmq_f32(v639, _Q31), v397);
            if (m == 224)
            {
              break;
            }

            *v628 = v641;
            *(v628 + 1) = v642;
            v628 = (v628 + 28);
            v594 = *(&STACK[0x1250] + m);
            v595 = *(&STACK[0x1250] + m + 16);
          }

          *v628 = v641;
          v628[2] = v642.i64[0];
          LODWORD(STACK[0xF20]) = v642.i32[2];
          *&STACK[0xF50] = v397;
          *&STACK[0xF44] = v397;
          *&STACK[0xF34] = v397;
          *&STACK[0xF24] = v397;
          if (v586 >= v585)
          {
            v643 = v585;
          }

          else
          {
            v643 = v586;
          }

          DualPartitionBlockInfo_7x7 = GetDualPartitionBlockInfo_7x7(v643, 16 - 4 * *(a1 + 136));
          v645 = HIBYTE(DualPartitionBlockInfo_7x7);
          LODWORD(STACK[0xD50]) = (DualPartitionBlockInfo_7x7 >> 25) & 0xF;
          if (!FindQuantizedColors(HIBYTE(DualPartitionBlockInfo_7x7), &STACK[0xD90], &STACK[0xD50], &STACK[0xE60], 0x31uLL, v1323, v1319, v1321, v646))
          {
            v647 = 0;
            STACK[0xD80] = &STACK[0xFC0];
            v648 = BYTE4(DualPartitionBlockInfo_7x7);
            v649 = vrecpes_f32(v648);
            if (!BYTE4(DualPartitionBlockInfo_7x7))
            {
              v649 = 0.0;
            }

            do
            {
              v650 = (&STACK[0xE60] + 8 * v647);
              v651 = vrndxq_f32(vmulq_n_f32(v650[2], v648));
              v652 = vrndxq_f32(vmulq_n_f32(*v650, v648));
              v653 = vrndxq_f32(vmulq_n_f32(v650[1], v648));
              v654 = vrndxq_f32(vmulq_n_f32(v650[3], v648));
              *v650 = vmulq_n_f32(v652, v649);
              v650[1] = vmulq_n_f32(v653, v649);
              v650[2] = vmulq_n_f32(v651, v649);
              v650[3] = vmulq_n_f32(v654, v649);
              *(&STACK[0xE20] + v647++) = vuzp1q_s8(vuzp1q_s16(vcvtq_s32_f32(v652), vcvtq_s32_f32(v653)), vuzp1q_s16(vcvtq_s32_f32(v651), vcvtq_s32_f32(v654)));
            }

            while (v647 != 3);
            v655 = rintf(*&STACK[0xF20] * v648);
            *&STACK[0xF20] = v649 * v655;
            *&STACK[0xE50] = 0u;
            LOBYTE(STACK[0xE50]) = v655;
            v656 = *(a4 + 32);
            if (v656)
            {
              __asm { FMOV            V1.4S, #3.0 }

              _Q0 = vmulq_f32(*v656, _Q1);
            }

            else
            {
              __asm { FMOV            V0.4S, #1.0 }
            }

            v1289 = _Q0;
            v659 = *&STACK[0xD90];
            v660 = vaddq_f32(*&STACK[0xD90], *&STACK[0xDA0]);
            v661 = *&STACK[0xDC0];
            v662 = vaddq_f32(*&STACK[0xDC0], *&STACK[0xDD0]);
            v663 = a4;
            do
            {
              v664 = v663;
              v663 = *(v663 + 40);
            }

            while (v663);
            v665 = *&STACK[0xE70];
            v666 = *&STACK[0xE60];
            v667 = *&STACK[0xE8C];
            v668 = *&STACK[0xE7C];
            v669 = *&STACK[0xEA8];
            v670 = *&STACK[0xE98];
            v671 = *&STACK[0xEC4];
            v672 = *&STACK[0xEB4];
            v673 = vextq_s8(*&STACK[0xE60], *&STACK[0xE70], 0xCuLL);
            v665.i32[3] = STACK[0xE78];
            v674 = vzip1q_s32(*&STACK[0xE60], vuzp1q_s32(v666, v666));
            v666.i32[0] = DWORD1(*&STACK[0xE60]);
            v675 = vdupq_n_s32(0x3D800000u);
            *&STACK[0x1260] = vmulq_f32(vmlaq_f32(vmulq_f32(v665, xmmword_298495EF0), xmmword_298495F00, v673), v675);
            *&STACK[0x1250] = vmulq_f32(vmlaq_f32(vmulq_f32(v666, xmmword_298495EE0), xmmword_298495F10, v674), v675);
            v676 = vmlaq_f32(vmulq_f32(v666, xmmword_298495F20), xmmword_298495F50, v674);
            v677 = vextq_s8(v668, v667, 0xCuLL);
            v678 = vzip1q_s32(v668, vuzp1q_s32(v668, v668));
            v668.i32[0] = v668.i32[1];
            v667.i32[3] = v667.i32[2];
            *&STACK[0x1280] = vmulq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v665, xmmword_298495F30), xmmword_298495F40, v673), xmmword_298495F70, v677), xmmword_298495F80, v667), v675);
            *&STACK[0x1270] = vmulq_f32(vmlaq_f32(vmlaq_f32(v676, xmmword_298495F60, v678), xmmword_298495F90, v668), v675);
            v679 = vmlaq_f32(vmulq_f32(v668, xmmword_298495FA0), xmmword_298495FD0, v678);
            v680 = vextq_s8(v670, v669, 0xCuLL);
            v681 = vzip1q_s32(v670, vuzp1q_s32(v670, v670));
            v670.i32[0] = v670.i32[1];
            v669.i32[3] = v669.i32[2];
            *&STACK[0x12A0] = vmulq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v667, xmmword_298495FB0), xmmword_298495FC0, v677), xmmword_298495FF0, v680), xmmword_298496000, v669), v675);
            *&STACK[0x1290] = vmulq_f32(vmlaq_f32(vmlaq_f32(v679, xmmword_298495FE0, v681), xmmword_298496010, v670), v675);
            v682 = vmlaq_f32(vmulq_f32(v670, xmmword_298496020), xmmword_298496050, v681);
            v683 = vextq_s8(v672, v671, 0xCuLL);
            v671.i32[3] = v671.i32[2];
            v684 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v669, xmmword_298496030), xmmword_298496040, v680), xmmword_298496070, v683), xmmword_298496080, v671);
            v685 = vzip1q_s32(v672, vuzp1q_s32(v672, v672));
            v686 = vmlaq_f32(vmulq_f32(v671, xmmword_298496080), xmmword_298496070, v683);
            v672.i32[0] = v672.i32[1];
            v687 = vmulq_f32(vmlaq_f32(vmlaq_f32(v682, xmmword_298496060, v685), xmmword_298496090, v672), v675);
            *&STACK[0x12C0] = vmulq_f32(v684, v675);
            v688 = vmlaq_f32(vmulq_f32(v672, xmmword_298496090), xmmword_298496060, v685);
            v689 = *&STACK[0xEE0];
            v690 = *&STACK[0xED0];
            *&STACK[0x12B0] = v687;
            v691 = vzip1q_s32(v690, vuzp1q_s32(v690, v690));
            v692 = vextq_s8(v690, v689, 0xCuLL);
            v693 = *&STACK[0xEFC];
            v689.i32[3] = v689.i32[2];
            v694 = vmlaq_f32(vmlaq_f32(v686, xmmword_298496040, v692), xmmword_298496030, v689);
            v695 = *&STACK[0xEEC];
            v690.i32[0] = v690.i32[1];
            v696 = vmlaq_f32(vmlaq_f32(v688, xmmword_298496050, v691), xmmword_298496020, v690);
            v697 = vmulq_f32(v690, xmmword_2984960A0);
            v698 = *&STACK[0xF14];
            v699 = vmlaq_f32(vmulq_f32(v689, xmmword_298496000), xmmword_2984960B0, v692);
            v700 = vmlaq_f32(v697, xmmword_2984960C0, v691);
            v701 = vextq_s8(*&STACK[0xEEC], *&STACK[0xEFC], 0xCuLL);
            v702 = vzip1q_s32(*&STACK[0xEEC], vuzp1q_s32(v695, v695));
            v695.i32[0] = HIDWORD(STACK[0xEEC]);
            v693.i32[3] = STACK[0xF04];
            v703 = vextq_s8(*&STACK[0xF14], vdupq_laneq_s32(*&STACK[0xF14], 3), 4uLL);
            v704 = *&STACK[0xF04];
            *&STACK[0x12E0] = vmulq_f32(v694, v675);
            *&STACK[0x12D0] = vmulq_f32(v696, v675);
            v705 = vextq_s8(v704, v698, 4uLL);
            v705.i32[0] = v704.i32[2];
            v704.i32[0] = v704.i32[1];
            *&STACK[0x1300] = vmulq_f32(vmlaq_f32(vmlaq_f32(v699, xmmword_2984960E0, v701), xmmword_298495FB0, v693), v675);
            *&STACK[0x12F0] = vmulq_f32(vmlaq_f32(vmlaq_f32(v700, xmmword_2984960D0, v702), xmmword_2984960F0, v695), v675);
            v706 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v693, xmmword_298496100), xmmword_298496110, v701), xmmword_298496120, v698), xmmword_298496130, v703), v675);
            v707 = vmulq_f32(vmlaq_f32(vmulq_f32(v705, xmmword_298495EE0), xmmword_298495F10, v704), v675);
            *&STACK[0xCF0] = vdupq_lane_s32(*v661.i8, 0);
            *&STACK[0xD00] = vdupq_lane_s32(*v659.i8, 0);
            *&STACK[0xCD0] = vdupq_lane_s32(*v662.i8, 0);
            *&STACK[0xCE0] = vdupq_lane_s32(*v660.i8, 0);
            *&STACK[0xCB0] = vdupq_lane_s32(*v661.i8, 1);
            *&STACK[0xCC0] = vdupq_lane_s32(*v659.i8, 1);
            *&STACK[0xC90] = vdupq_lane_s32(*v662.i8, 1);
            *&STACK[0xCA0] = vdupq_lane_s32(*v660.i8, 1);
            v708 = vmulq_f32(vmlaq_f32(vmulq_f32(v703, xmmword_298495EF0), xmmword_298495F00, v698), v675);
            v1345 = vdupq_laneq_s32(v661, 2);
            *&STACK[0xC80] = vdupq_laneq_s32(v659, 2);
            *&STACK[0x1320] = v706;
            *&STACK[0x1310] = vmulq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v695, xmmword_298495F90), xmmword_298495F60, v702), xmmword_298495F50, v704), xmmword_298495F20, v705), v675);
            v709 = 0uLL;
            v1338 = vdupq_laneq_s32(v662, 2);
            v1341 = vdupq_laneq_s32(v660, 2);
            v710 = 0uLL;
            v711 = 0uLL;
            v712 = 0uLL;
            *&STACK[0x1340] = v708;
            *&STACK[0x1330] = v707;
            v713 = 0uLL;
            v1331 = vdupq_laneq_s32(v661, 3);
            v1334 = vdupq_laneq_s32(v659, 3);
            v714 = vdupq_laneq_s32(v660, 3);
            v715 = 0uLL;
            v1325 = vdupq_laneq_s32(v662, 3);
            v716 = 0uLL;
            v717 = 0uLL;
            v718 = *(a4 + 135);
            do
            {
              *&STACK[0xD10] = v709;
              v703.i32[0] = 0;
              v685.i32[0] = v718;
              v685 = vdupq_lane_s8(*&vceqq_s8(v685, v703), 0);
              v719 = vcltzq_s32(*(&STACK[0xFC0] + v663));
              v720 = vbslq_s8(v719, v1345, *&STACK[0xC80]);
              v721 = vcltzq_s32(*(&STACK[0xFC0] + v663 + 16));
              v723 = *(&STACK[0x1250] + v663);
              v722 = *(&STACK[0x1250] + v663 + 16);
              v724 = vbslq_s8(v721, v1345, *&STACK[0xC80]);
              v725 = vsubq_f32(vmlaq_f32(v720, v723, vsubq_f32(vbslq_s8(v719, v1338, v1341), v720)), *(v664 + v663 + 656));
              v726 = vsubq_f32(vmlaq_f32(v724, v722, vsubq_f32(vbslq_s8(v721, v1338, v1341), v724)), *(v664 + v663 + 672));
              v727 = *(v664 + v663 + 912);
              v728 = *(v664 + v663 + 928);
              v729 = vbslq_s8(v721, *&STACK[0xCB0], *&STACK[0xCC0]);
              v730 = vmlaq_f32(v729, v722, vsubq_f32(vbslq_s8(v721, *&STACK[0xC90], *&STACK[0xCA0]), v729));
              v731 = vbslq_s8(v721, *&STACK[0xCF0], *&STACK[0xD00]);
              v732 = vbslq_s8(v685, v725, vmulq_f32(v727, v725));
              v733 = vmlaq_f32(v731, v722, vsubq_f32(vbslq_s8(v721, *&STACK[0xCD0], *&STACK[0xCE0]), v731));
              v734 = vbslq_s8(v721, v1331, v1334);
              v735 = vmlaq_f32(v734, v722, vsubq_f32(vbslq_s8(v721, v1325, v714), v734));
              v736 = vbslq_s8(v719, *&STACK[0xCB0], *&STACK[0xCC0]);
              v737 = vbslq_s8(v685, v726, vmulq_f32(v728, v726));
              v738 = vsubq_f32(vmlaq_f32(v736, v723, vsubq_f32(vbslq_s8(v719, *&STACK[0xC90], *&STACK[0xCA0]), v736)), *(v664 + v663 + 400));
              v739 = vsubq_f32(v730, *(v664 + v663 + 416));
              v740 = vbslq_s8(v685, v738, vmulq_f32(v727, v738));
              v741 = vbslq_s8(v719, *&STACK[0xCF0], *&STACK[0xD00]);
              v742 = vbslq_s8(v685, v739, vmulq_f32(v728, v739));
              v743 = vbslq_s8(v719, v1331, v1334);
              v744 = vsubq_f32(vmlaq_f32(v741, v723, vsubq_f32(vbslq_s8(v719, *&STACK[0xCD0], *&STACK[0xCE0]), v741)), *(v664 + v663 + 144));
              v745 = vbslq_s8(v685, v744, vmulq_f32(v727, v744));
              v746 = vsubq_f32(v733, *(v664 + v663 + 160));
              v747 = vbslq_s8(v685, v746, vmulq_f32(v728, v746));
              v703 = vsubq_f32(vmlaq_f32(v743, v723, vsubq_f32(vbslq_s8(v719, v1325, v714), v743)), v727);
              v748 = vsubq_f32(v735, v728);
              v710 = vmlaq_f32(v710, v747, v747);
              v709 = vmlaq_f32(*&STACK[0xD10], v745, v745);
              v712 = vmlaq_f32(v712, v742, v742);
              v711 = vmlaq_f32(v711, v740, v740);
              v715 = vmlaq_f32(v715, v737, v737);
              v713 = vmlaq_f32(v713, v732, v732);
              v717 = vmlaq_f32(v717, v748, v748);
              v716 = vmlaq_f32(v716, v703, v703);
              v663 += 32;
            }

            while (v663 != 256);
            v749 = vmulq_f32(v1289, vpaddq_f32(vpaddq_f32(vaddq_f32(v709, v710), vaddq_f32(v711, v712)), vpaddq_f32(vaddq_f32(v713, v715), vaddq_f32(v716, v717))));
            v750 = fabsf(vaddv_f32(vadd_f32(*v749.i8, *&vextq_s8(v749, v749, 8uLL))));
            if (v750 < *a6)
            {
              *&STACK[0x12A0] = 0uLL;
              v751 = *&STACK[0xE20];
              *&STACK[0x1260] = *&STACK[0xE30];
              *&STACK[0x1250] = v751;
              v752 = *&STACK[0xE40];
              *&STACK[0x1280] = *&STACK[0xE50];
              *&STACK[0x1270] = v752;
              *&STACK[0x1290] = vandq_s8(*&STACK[0xDB0], xmmword_298495C30);
              *(&STACK[0x1290] + ((DualPartitionBlockInfo_7x7 >> 41) & 0x7F)) = STACK[0xDE0];
              v753 = DualPartitionBlockInfo_7x7 & 0xE1801FFF | ((v1297 & 0x3FF) << 13) | ((STACK[0xD50] & 0xF) << 25);
              LODWORD(STACK[0x12A0]) = v753;
              LOBYTE(STACK[0x12A4]) = BYTE4(DualPartitionBlockInfo_7x7);
              LOBYTE(STACK[0x12A5]) = HIBYTE(DualPartitionBlockInfo_7x7);
              LOBYTE(STACK[0x12A6]) = BYTE5(DualPartitionBlockInfo_7x7);
              LOBYTE(STACK[0x12A7]) = BYTE6(DualPartitionBlockInfo_7x7);
              v754 = __clz(__rbit32(v645 + 1));
              v755 = ((v645 + 1) >> v754);
              v756 = *&STACK[0x1290];
              v757 = vdupq_n_s8(DualPartitionBlockInfo_7x7 >> 40);
              if (v755 == 1)
              {
                v758 = vandq_s8(v756, vcgtq_u8(v757, xmmword_298451AC0));
                v759 = vorrq_s8(vshlq_u16((*&v758 & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00)), vnegq_s16(vdupq_n_s16(8 - v754))), (*&v758 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
                v760.i64[0] = 0xFFFF0000FFFFLL;
                v760.i64[1] = 0xFFFF0000FFFFLL;
                v761.i64[0] = 0xFFFF0000FFFF0000;
                v761.i64[1] = 0xFFFF0000FFFF0000;
                v762 = vorrq_s8(vshlq_u32(vandq_s8(v759, v761), vnegq_s32(vdupq_n_s32(2 * (8 - v754)))), vandq_s8(v759, v760));
                v760.i64[0] = 0xFFFFFFFFLL;
                v760.i64[1] = 0xFFFFFFFFLL;
                v763 = vandq_s8(v762, v760);
                v764.i64[0] = 0xFFFFFFFF00000000;
                v764.i64[1] = 0xFFFFFFFF00000000;
                v765 = vandq_s8(v762, v764);
                *v764.i8 = vdup_n_s32(4 * (8 - v754));
                v766.i64[0] = v764.u32[0];
                v766.i64[1] = v764.u32[1];
                v767 = vorrq_s8(vshlq_u64(v765, vnegq_s64(v766)), v763);
                v768 = v767.u64[1];
                v769 = 8 * v754;
                v770 = (v767.i64[1] << v769) | v767.i64[0];
                v754 = -v769;
                goto LABEL_205;
              }

              if (v754)
              {
                v771 = vmovl_u8(*v756.i8);
                v772 = vdupq_n_s16(v645);
                v773 = vmovl_high_u8(v756);
                v774 = vsubw_u8(v772, *v756.i8);
                v775 = vsubw_high_u8(v772, v756);
                v776 = vminq_u16(v775, v773);
                v777 = vminq_u16(v774, v771);
                if (v755 == 3)
                {
                  v778 = 21846;
                }

                else
                {
                  v778 = 13108;
                }

                v779 = vdupq_n_s16(v778);
                v780 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v777.i8, *v779.i8), 0x10uLL), vmull_high_u16(v777, v779), 0x10uLL);
                v781 = vdupq_n_s16((v645 + 1) >> v754);
                v782 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v776.i8, *v779.i8), 0x10uLL), vmull_high_u16(v776, v779), 0x10uLL);
                v783 = vdupq_n_s16(v754);
                v784 = vcgtq_u16(v771, v774);
                v785.i64[0] = 0x1000100010001;
                v785.i64[1] = 0x1000100010001;
                v756 = vuzp1q_s8(vorrq_s8(vaddq_s16(vshlq_u16(vmlsq_s16(v777, v780, v781), v783), vaddq_s16(v780, v780)), vandq_s8(v784, v785)), vorrq_s8(vaddq_s16(vshlq_u16(vmlsq_s16(v776, v782, v781), v783), vaddq_s16(v782, v782)), vandq_s8(vcgtq_u16(v773, v775), v785)));
              }

              v786 = vandq_s8(v756, vcgtq_u8(v757, xmmword_298451AC0));
              v787.i64[0] = 0xFF000000FFLL;
              v787.i64[1] = 0xFF000000FFLL;
              if (v755 != 5)
              {
                v788 = 0uLL;
                if (v755 == 3)
                {
                  v789 = vdupq_n_s8(v754);
                  v790 = vshlq_u8(v786, vnegq_s8(v789));
                  v791 = vqtbl1q_s8(v790, xmmword_298495C40);
                  v792 = vqtbl1q_s8(v790, xmmword_298495C50);
                  v793 = vpaddq_s16(vmull_u8(*v791.i8, 0x8010040180100401), vmull_u8(*&vextq_s8(v791, v791, 8uLL), 0x8010040180100401));
                  v793.i64[0] = vpaddq_s16(v793, v793).u64[0];
                  v794 = vmovl_s16(*v793.i8);
                  v795 = vshlq_n_s32(v792, 5uLL);
                  v791.i64[0] = 0x3000000030;
                  v791.i64[1] = 0x3000000030;
                  v796.i64[0] = 0x2000000020;
                  v796.i64[1] = 0x2000000020;
                  v797 = vceqq_s32(vandq_s8(v794, v791), v796);
                  v798 = vaddw_s16(v795, *v793.i8);
                  v799 = vcgtq_s32(v798, v787);
                  if ((vmaxvq_u32(vorrq_s8(v797, v799)) & 0x80000000) != 0)
                  {
                    v800.i64[0] = 0x200000002;
                    v800.i64[1] = 0x200000002;
                    v801 = vceqq_s32(v792, v800);
                    v802 = vshrq_n_u32(v794, 2uLL);
                    v803 = vandq_s8(v799, v801);
                    v804.i64[0] = 0xF0000000FLL;
                    v804.i64[1] = 0xF0000000FLL;
                    v805 = vandq_s8(v794, v804);
                    v806.i64[0] = 0x6060606060606060;
                    v806.i64[1] = 0x6060606060606060;
                    v807.i64[0] = 0x303030303030303;
                    v807.i64[1] = 0x303030303030303;
                    v798 = vaddq_s8(vsubq_s8(vaddq_s8(vandq_s8(vmlaq_s8(v806, v795, v807), v799), v798), vaddq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495C60, v805), v797), vandq_s8(vqtbl1q_s8(xmmword_298495C70, vandq_s8(v802, v804)), v803))), vandq_s8(vqtbl1q_s8(xmmword_298495C80, v805), vandq_s8(v797, v803)));
                  }

                  v808 = vorrq_s8(vshlq_u8(vshlq_u8(vandq_s8(vqtbl1q_s8(v798, xmmword_298495DF0), xmmword_298495D00), xmmword_298495D30), v789), vandq_s8(v786, vdupq_n_s8((1 << v754) - 1)));
                  v809 = vaddq_s16(vshlq_u16(vshlq_u16((*&v808 & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00)), vnegq_s16(vdupq_n_s16(7 - v754))), xmmword_298495E00), (*&v808 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
                  v810.i64[0] = 0xFFFF0000FFFF0000;
                  v810.i64[1] = 0xFFFF0000FFFF0000;
                  v811 = vshlq_u32(vandq_s8(v809, v810), vnegq_s32(vdupq_n_s32(13 - 2 * v754)));
                  v812.i64[0] = 0xFFFF0000FFFFLL;
                  v812.i64[1] = 0xFFFF0000FFFFLL;
                  v813 = vaddq_s32(vaddq_s32(v811, vandq_s8(v809, v812)), v811.u32[0]);
                  v811.i64[0] = 0xFFFFFFFFLL;
                  v811.i64[1] = 0xFFFFFFFFLL;
                  v814 = vandq_s8(v813, v811);
                  v810.i64[0] = 0xFFFFFFFF00000000;
                  v810.i64[1] = 0xFFFFFFFF00000000;
                  v815 = vandq_s8(v813, v810);
                  *v810.i8 = vdup_n_s32(25 - 4 * v754);
                  v816.i64[0] = v810.u32[0];
                  v816.i64[1] = v810.u32[1];
                  v817 = vaddq_s64(vshlq_u64(v815, vnegq_s64(v816)), v814);
                  v768 = v817.u64[1];
                  v770 = (v817.i64[1] << (8 * v754 + 13)) | v817.i64[0];
                  v818 = 51;
LABEL_204:
                  LOBYTE(v754) = v818 - 8 * v754;
LABEL_205:
                  v788.i64[0] = v770;
                  v788.i64[1] = v768 >> v754;
                }

                v845 = __clz(__rbit32(BYTE4(DualPartitionBlockInfo_7x7) + 1));
                v846 = ((BYTE4(DualPartitionBlockInfo_7x7) + 1) >> v845);
                v847 = *&STACK[0x1260];
                v848 = *&STACK[0x1250];
                if (v846 == 1)
                {
                  v1349.val[0] = vbicq_s8(xmmword_298496410, vceqzq_s8(v848));
                  v1349.val[1] = vbicq_s8(xmmword_298496410, vceqzq_s8(v847));
                  v1348.val[1] = vbicq_s8(xmmword_298496410, vceqzq_s8(*&STACK[0x1280]));
                  v1348.val[0] = vbicq_s8(xmmword_298496410, vceqzq_s8(*&STACK[0x1270]));
                  v849 = vaddvq_s32(vorrq_s8(vqtbl2q_s8(v1349, xmmword_298496430), vqtbl2q_s8(v1349, xmmword_298496420))) | (vaddvq_s32(vorrq_s8(vqtbl2q_s8(v1348, xmmword_298496430), vqtbl2q_s8(v1348, xmmword_298496420))) << 32);
                }

                else
                {
                  if (v845)
                  {
                    v850 = vmovl_u8(*v848.i8);
                    v851 = vmovl_high_u8(v848);
                    v852 = vmovl_u8(*v847.i8);
                    v853 = vmovl_high_u8(v847);
                    v854 = vdupq_n_s16(BYTE4(DualPartitionBlockInfo_7x7));
                    v855 = vsubw_u8(v854, *v848.i8);
                    v856 = vsubw_high_u8(v854, v848);
                    v857 = vsubw_u8(v854, *v847.i8);
                    v858 = vsubw_high_u8(v854, v847);
                    v859 = vminq_u16(v858, v853);
                    v860 = vminq_u16(v857, v852);
                    v861 = vminq_u16(v856, v851);
                    v862 = vminq_u16(v855, v850);
                    if (v846 == 3)
                    {
                      v863 = 21846;
                    }

                    else
                    {
                      v863 = 13108;
                    }

                    v864 = vdupq_n_s16(v863);
                    v865 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v862.i8, *v864.i8), 0x10uLL), vmull_high_u16(v862, v864), 0x10uLL);
                    v866 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v861.i8, *v864.i8), 0x10uLL), vmull_high_u16(v861, v864), 0x10uLL);
                    v867 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v860.i8, *v864.i8), 0x10uLL), vmull_high_u16(v860, v864), 0x10uLL);
                    v868 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v859.i8, *v864.i8), 0x10uLL), vmull_high_u16(v859, v864), 0x10uLL);
                    v869 = vdupq_n_s16((BYTE4(DualPartitionBlockInfo_7x7) + 1) >> v845);
                    v870 = vdupq_n_s16(v845);
                    v871.i64[0] = 0x1000100010001;
                    v871.i64[1] = 0x1000100010001;
                    v847 = vuzp1q_s8(vorrq_s8(vaddq_s16(vshlq_u16(vmlsq_s16(v860, v867, v869), v870), vaddq_s16(v867, v867)), vandq_s8(vcgtq_u16(v852, v857), v871)), vorrq_s8(vaddq_s16(vshlq_u16(vmlsq_s16(v859, v868, v869), v870), vaddq_s16(v868, v868)), vandq_s8(vcgtq_u16(v853, v858), v871)));
                    v848 = vuzp1q_s8(vorrq_s8(vaddq_s16(vshlq_u16(vmlsq_s16(v862, v865, v869), v870), vaddq_s16(v865, v865)), vandq_s8(vcgtq_u16(v850, v855), v871)), vorrq_s8(vaddq_s16(vshlq_u16(vmlsq_s16(v861, v866, v869), v870), vaddq_s16(v866, v866)), vandq_s8(vcgtq_u16(v851, v856), v871)));
                    v872 = vmovl_u8(*&STACK[0x1270]);
                    v873 = vmovl_high_u8(*&STACK[0x1270]);
                    v874 = vmovl_u8(*&STACK[0x1280]);
                    v875 = vmovl_high_u8(*&STACK[0x1280]);
                    v876 = vsubw_u8(v854, *&STACK[0x1270]);
                    v877 = vsubw_high_u8(v854, *&STACK[0x1270]);
                    v878 = vsubw_u8(v854, *&STACK[0x1280]);
                    v879 = vsubw_high_u8(v854, *&STACK[0x1280]);
                    v880 = vminq_u16(v879, v875);
                    v881 = vminq_u16(v878, v874);
                    v882 = vminq_u16(v877, v873);
                    v883 = vminq_u16(v876, v872);
                    v884 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v883.i8, *v864.i8), 0x10uLL), vmull_high_u16(v883, v864), 0x10uLL);
                    v885 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v882.i8, *v864.i8), 0x10uLL), vmull_high_u16(v882, v864), 0x10uLL);
                    v886 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v881.i8, *v864.i8), 0x10uLL), vmull_high_u16(v881, v864), 0x10uLL);
                    v887 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v880.i8, *v864.i8), 0x10uLL), vmull_high_u16(v880, v864), 0x10uLL);
                    v888 = vuzp1q_s8(vorrq_s8(vaddq_s16(vshlq_u16(vmlsq_s16(v881, v886, v869), v870), vaddq_s16(v886, v886)), vandq_s8(vcgtq_u16(v874, v878), v871)), vorrq_s8(vaddq_s16(vshlq_u16(vmlsq_s16(v880, v887, v869), v870), vaddq_s16(v887, v887)), vandq_s8(vcgtq_u16(v875, v879), v871)));
                    v889 = vuzp1q_s8(vorrq_s8(vaddq_s16(vshlq_u16(vmlsq_s16(v883, v884, v869), v870), vaddq_s16(v884, v884)), vandq_s8(vcgtq_u16(v872, v876), v871)), vorrq_s8(vaddq_s16(vshlq_u16(vmlsq_s16(v882, v885, v869), v870), vaddq_s16(v885, v885)), vandq_s8(vcgtq_u16(v873, v877), v871)));
                  }

                  else
                  {
                    v888 = *&STACK[0x1280];
                    v889 = *&STACK[0x1270];
                  }

                  v849 = 0uLL;
                  if (v846 == 3)
                  {
                    if (!v845)
                    {
                      v890 = vqtbl1q_s8(v848, xmmword_298495C40);
                      v891 = vqtbl1q_s8(v847, xmmword_298495C90);
                      v892 = vpaddq_s16(vpaddq_s16(vmull_u8(*v890.i8, 0x8010040180100401), vmull_u8(*&vextq_s8(v890, v890, 8uLL), 0x8010040180100401)), vpaddq_s16(vmull_u8(*v891.i8, 0x8010040180100401), vmull_u8(*&vextq_s8(v891, v891, 8uLL), 0x8010040180100401)));
                      v893 = vuzp1q_s16(vqtbl1q_s8(v848, xmmword_298495C50), vqtbl1q_s8(v847, xmmword_298495CA0));
                      v894 = vaddq_s16(v892, vqtbl1q_s8(v892, xmmword_298495CB0));
                      v895 = v894;
                      v895.i16[3] = 0;
                      v895.i16[7] = 0;
                      v896.i64[0] = 0x30003000300030;
                      v896.i64[1] = 0x30003000300030;
                      v897.i64[0] = 0x20002000200020;
                      v897.i64[1] = 0x20002000200020;
                      v898 = vceqq_s16(vandq_s8(v895, v896), v897);
                      v896.i64[0] = 0xFF00FF00FF00FFLL;
                      v896.i64[1] = 0xFF00FF00FF00FFLL;
                      v899 = vcgtq_u16(v895, v896);
                      v900 = vshlq_n_s16(v893, 5uLL);
                      v901 = vaddq_s16(v895, v900);
                      if ((vmaxvq_u16(vorrq_s8(v898, v899)) & 0x8000) != 0)
                      {
                        v902.i64[0] = 0x2000200020002;
                        v902.i64[1] = 0x2000200020002;
                        v903 = vceqq_s16(v893, v902);
                        v904 = vshrq_n_u16(v895, 2uLL);
                        v905 = vandq_s8(v899, v903);
                        v906.i64[0] = 0xF000F000F000FLL;
                        v906.i64[1] = 0xF000F000F000FLL;
                        v907 = vandq_s8(v895, v906);
                        v908.i64[0] = 0x6060606060606060;
                        v908.i64[1] = 0x6060606060606060;
                        v909.i64[0] = 0x303030303030303;
                        v909.i64[1] = 0x303030303030303;
                        v901 = vaddq_s8(vsubq_s8(vaddq_s8(vandq_s8(vmlaq_s8(v908, v900, v909), v899), v901), vaddq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495C60, v907), v898), vandq_s8(vqtbl1q_s8(xmmword_298495C70, vandq_s8(v904, v906)), v905))), vandq_s8(vqtbl1q_s8(xmmword_298495C80, v907), vandq_s8(v898, v905)));
                      }

                      v910 = vqtbl1q_s8(v889, xmmword_2984963C0);
                      v911 = vqtbl1q_s8(v888, xmmword_2984963D0);
                      v912 = vpaddq_s16(vpaddq_s16(vmull_u8(*v910.i8, 0x8010040180100401), vmull_u8(*&vextq_s8(v910, v910, 8uLL), 0x8010040180100401)), vpaddq_s16(vmull_u8(*v911.i8, 0x8010040180100401), vmull_u8(*&vextq_s8(v911, v911, 8uLL), 0x8010040180100401)));
                      v913 = vuzp1q_s16(vqtbl1q_s8(v889, xmmword_2984963E0), vqtbl1q_s8(v888, xmmword_2984963F0));
                      v914 = vaddq_s16(v912, vqtbl1q_s8(v912, xmmword_298495CB0));
                      v914.i16[0] += v894.i16[7];
                      v914.i16[3] = 0;
                      v912.i64[0] = 0x30003000300030;
                      v912.i64[1] = 0x30003000300030;
                      v915.i64[0] = 0x20002000200020;
                      v915.i64[1] = 0x20002000200020;
                      v916 = vceqq_s16(vandq_s8(v914, v912), v915);
                      v912.i64[0] = 0xFF00FF00FF00FFLL;
                      v912.i64[1] = 0xFF00FF00FF00FFLL;
                      v917 = vcgtq_u16(v914, v912);
                      v918 = vshlq_n_s16(v913, 5uLL);
                      v919 = vaddq_s16(v914, v918);
                      if ((vmaxvq_u16(vorrq_s8(v916, v917)) & 0x8000) != 0)
                      {
                        v920 = vshrq_n_u16(v914, 2uLL);
                        v921.i64[0] = 0x2000200020002;
                        v921.i64[1] = 0x2000200020002;
                        v922 = vandq_s8(v917, vceqq_s16(v913, v921));
                        v923.i64[0] = 0xF000F000F000FLL;
                        v923.i64[1] = 0xF000F000F000FLL;
                        v924 = vandq_s8(v914, v923);
                        v925.i64[0] = 0x6060606060606060;
                        v925.i64[1] = 0x6060606060606060;
                        v926.i64[0] = 0x303030303030303;
                        v926.i64[1] = 0x303030303030303;
                        v919 = vaddq_s8(vsubq_s8(vaddq_s8(vandq_s8(vmlaq_s8(v925, v918, v926), v917), v919), vaddq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495C60, v924), v916), vandq_s8(vqtbl1q_s8(xmmword_298495C70, vandq_s8(v920, v923)), v922))), vandq_s8(vqtbl1q_s8(xmmword_298495C80, v924), vandq_s8(v916, v922)));
                      }

                      v849 = vaddq_s8(vqtbl1q_s8(v919, xmmword_298496400), vqtbl1q_s8(v901, xmmword_298496150));
                    }
                  }

                  else if (v846 == 5)
                  {
                    __break(1u);
                    return;
                  }
                }

                v927 = vqtbl1q_s8(v788, vsubq_s8(xmmword_298451AC0, vdupq_n_s8(BYTE6(DualPartitionBlockInfo_7x7) >> 3)));
                *a5 = vorrq_s8(vorrq_s8(vshlq_u64(vqtbl1q_s8(v927, xmmword_298451AD0), vdupq_n_s64(HIWORD(DualPartitionBlockInfo_7x7) | 0xFFFFFFFFFFFFFFF8)), vorrq_s8(v753, vshlq_u64(v927, vdupq_n_s64(HIWORD(DualPartitionBlockInfo_7x7) & 7)))), vqtbl1q_s8(vrbitq_s8(v849), xmmword_298495DE0));
                *a6 = v750;
                if (v750 < a6[1])
                {
                  goto LABEL_273;
                }

                goto LABEL_224;
              }

              v819 = vdupq_n_s8(v754);
              v820 = vshlq_u8(v786, vnegq_s8(v819));
              v821 = vqtbl1q_s8(v820, xmmword_298495BC0);
              v822 = vqtbl1q_s8(v820, xmmword_298495BD0);
              v823 = vpaddq_s16(vmull_u8(*v821.i8, 0x2001200120012001), vmull_u8(*&vextq_s8(v821, v821, 8uLL), 0x2001200120012001));
              v824.i64[0] = 0x7000700070007;
              v824.i64[1] = 0x7000700070007;
              v825 = vandq_s8(v823, v824);
              v826 = vandq_s8(vshrq_n_u16(v823, 5uLL), v824);
              v827.i64[0] = 0x4000400040004;
              v827.i64[1] = 0x4000400040004;
              v828 = vceqq_s16(v822, v827);
              v829 = vceqq_s16(v826, v827);
              v830 = vsubq_s8(vaddq_s16(v823, vshlq_n_s16(v822, 3uLL)), vandq_s8(vqtbl1q_s8(xmmword_298495BE0, v825), v829));
              if ((vmaxvq_u16(v828) & 0x8000) != 0)
              {
                v831.i64[0] = 0x18001800180018;
                v831.i64[1] = 0x18001800180018;
                v830 = vsubq_s8(v830, vaddq_s8(vaddq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495BF0, v825), v828), vandq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495C00, v825), v828), v829)), vandq_s8(vmulq_s16(v826, v831), vandq_s8(vceqq_s16(v825, v827), v828))));
              }

              v832 = vorrq_s8(vshlq_u8(vshlq_u8(vandq_s8(vqtbl1q_s8(v830, xmmword_298495E10), xmmword_298495E20), xmmword_298495E30), v819), vandq_s8(v786, vdupq_n_s8((1 << v754) - 1)));
              v833 = vaddq_s16(vshlq_u16(vshlq_u16((*&v832 & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00)), vnegq_s16(vdupq_n_s16(6 - v754))), xmmword_298495E40), (*&v832 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
              v834.i64[0] = 0xFFFF0000FFFFLL;
              v834.i64[1] = 0xFFFF0000FFFFLL;
              v835 = vandq_s8(v833, v834);
              v836.i64[0] = 0xFFFF0000FFFF0000;
              v836.i64[1] = 0xFFFF0000FFFF0000;
              v837 = vshlq_u32(vandq_s8(v833, v836), vnegq_s32(vdupq_n_s32(12 - 2 * v754)));
              v838 = vaddq_s32(v837, v835);
              v837.i32[1] = 0;
              v839 = vaddq_s32(v838, v837);
              v838.i64[0] = 0xFFFFFFFFLL;
              v838.i64[1] = 0xFFFFFFFFLL;
              v840 = vandq_s8(v839, v838);
              v836.i64[0] = 0xFFFFFFFF00000000;
              v836.i64[1] = 0xFFFFFFFF00000000;
              LODWORD(v841) = 0;
              HIDWORD(v841) = v839.i32[1];
              v842 = vaddq_s64(vandq_s8(v839, v836), v841);
              *v836.i8 = vdup_n_s32(23 - 4 * v754);
              v843.i64[0] = v836.u32[0];
              v843.i64[1] = v836.u32[1];
              v844 = vaddq_s64(vshlq_u64(v842, vnegq_s64(v843)), v840);
              v768 = v844.u64[1];
              v770 = (v844.i64[1] << (8 * v754 + 19)) | v844.i64[0];
              v818 = 45;
              goto LABEL_204;
            }
          }

LABEL_224:
          __asm
          {
            FMOV            V2.4S, #0.23438
            FMOV            V3.4S, #0.53125
          }

          v930 = vdupq_n_s32(0x3D100000u);
          __asm { FMOV            V7.4S, #0.21875 }

          v932 = vdupq_n_s32(0x3EA60000u);
          v933 = vdupq_n_s32(0x3C800000u);
          v934 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1313, _Q2), _Q3, v1313), _Q7, v1312), v933, v1310);
          v935 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1316, _Q2), _Q3, v1316), _Q7, v1309), v933, v1311);
          *&STACK[0x1250] = v935;
          *&STACK[0x1260] = v934;
          v936 = vdupq_n_s32(0x3F020000u);
          v937 = vdupq_n_s32(0x3D900000u);
          __asm { FMOV            V21.4S, #0.13281 }

          *&STACK[0x1280] = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1313, v930), v932, v1312), v936, v1310), _Q21, v1308);
          *&STACK[0x1270] = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1316, v930), v932, v1309), v936, v1311), _Q21, v1307);
          v939 = vdupq_n_s32(0x3EDC0000u);
          *&STACK[0x12A0] = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1310, v937), v939, v1308), v939, v1304), v937, v1305);
          *&STACK[0x1290] = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1311, v937), v939, v1307), v939, v1303), v937, v1306);
          v1317 = v932;
          *&STACK[0x12B0] = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1303, _Q21), v936, v1306), v932, v1300), v930, v1299);
          *&STACK[0x12C0] = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1304, _Q21), v936, v1305), v932, v1302), v930, v1301);
          *&STACK[0x12E0] = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1305, v933), _Q7, v1302), _Q3, v1301), _Q2, v1301);
          *&STACK[0x12D0] = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1306, v933), _Q7, v1300), _Q3, v1299), _Q2, v1299);
          v940 = &STACK[0xE60];
          for (n = 32; ; n += 32)
          {
            v942 = vpaddq_f32(vmulq_f32(v935, xmmword_2984964C0), vmulq_f32(v934, xmmword_2984964B0));
            v943 = vaddq_f32(v942, vqtbl1q_s8(v942, xmmword_298495EB0));
            v944 = vpaddq_f32(vpaddq_f32(vmulq_f32(v935, xmmword_2984961A0), vmulq_f32(v935, xmmword_2984961C0)), vpaddq_f32(vmulq_f32(v934, xmmword_298496190), vmulq_f32(v934, xmmword_2984961B0)));
            v945 = vaddq_f32(v944, vqtbl1q_s8(v944, xmmword_2984961D0));
            v946 = vextq_s8(v943, v943, 4uLL);
            v947 = vextq_s8(vextq_s8(v946, v945, 8uLL), v946, 4uLL);
            v943.i32[1] = v945.i32[2];
            v948 = vuzp2q_s32(v943, v943);
            if (n == 160)
            {
              break;
            }

            *v940 = v947;
            *(v940 + 1) = v948;
            v940 += 3;
            v935 = *(&STACK[0x1250] + n);
            v934 = *(&STACK[0x1250] + n + 16);
          }

          *v940 = v947;
          v940[2] = v948.i64[0];
          DualPartitionBlockInfo_6x5 = GetDualPartitionBlockInfo_6x5((30 * v643) >> 6, 16 - 4 * *(a1 + 136));
          v950 = HIBYTE(DualPartitionBlockInfo_6x5);
          LODWORD(STACK[0xD7C]) = (DualPartitionBlockInfo_6x5 >> 25) & 0xF;
          if (!FindQuantizedColors(HIBYTE(DualPartitionBlockInfo_6x5), &STACK[0xD90], &STACK[0xD7C], &STACK[0xE60], 0x1EuLL, v1323, v1319, v1321, v951))
          {
            v953 = 0;
            v954 = DualPartitionBlockInfo_6x5 >> 40;
            STACK[0xD80] = &STACK[0xFC0];
            *&STACK[0xD50] = 0u;
            *&STACK[0xD60] = 0u;
            v955 = BYTE4(DualPartitionBlockInfo_6x5);
            v956 = vrecpes_f32(v955);
            if (!BYTE4(DualPartitionBlockInfo_6x5))
            {
              v956 = 0.0;
            }

            do
            {
              v957 = (&STACK[0xE60] + 4 * v953);
              v958 = vrndxq_f32(vmulq_n_f32(*v957, v955));
              v959 = vrndxq_f32(vmulq_n_f32(v957[1], v955));
              v952.i64[0] = v953;
              v960 = vbslq_s8(vdupq_lane_s64(vceqq_s64(v952, v1284).i64[0], 0), v959.u64[0], v959);
              v952 = vmulq_n_f32(v960, v956);
              *v957 = vmulq_n_f32(v958, v956);
              v957[1] = v952;
              *(&STACK[0xD50] + v953++) = vmovn_s16(vuzp1q_s16(vcvtq_s32_f32(v958), vcvtq_s32_f32(v960)));
            }

            while (v953 != 4);
            *&STACK[0xED0] = *&STACK[0xED0];
            v961 = *(a3 + 32);
            if (v961)
            {
              __asm { FMOV            V1.4S, #3.0 }

              _Q0 = vmulq_f32(*v961, _Q1);
            }

            else
            {
              __asm { FMOV            V0.4S, #1.0 }
            }

            v1314 = _Q0;
            v964 = *&STACK[0xD90];
            *&STACK[0xD10] = vaddq_f32(*&STACK[0xD90], *&STACK[0xDA0]);
            v965 = *&STACK[0xDC0];
            v1326 = vaddq_f32(*&STACK[0xDC0], *&STACK[0xDD0]);
            v966 = a3;
            do
            {
              v967 = v966;
              v966 = *(v966 + 40);
            }

            while (v966);
            v968 = *&STACK[0xE60];
            v969 = vextq_s8(*&STACK[0xE60], *&STACK[0xE70], 8uLL);
            v970 = vzip1q_s32(*&STACK[0xE70], *&STACK[0xE70]);
            v970.i32[0] = HIDWORD(*&STACK[0xE60]);
            v971 = vzip1q_s32(*&STACK[0xE60], vuzp1q_s32(v968, v968));
            v968.i32[0] = DWORD1(*&STACK[0xE60]);
            v972 = *&STACK[0xE78];
            v973 = vzip1q_s32(*&STACK[0xE78], vuzp1q_s32(v972, v972));
            v974 = vextq_s8(*&STACK[0xE78], *&STACK[0xE88], 8uLL);
            v975 = vzip1q_s32(*&STACK[0xE88], *&STACK[0xE88]);
            v975.i32[0] = HIDWORD(*&STACK[0xE78]);
            v972.i32[0] = HIDWORD(STACK[0xE78]);
            v976 = *&STACK[0xE90];
            v977 = vzip1q_s32(*&STACK[0xE90], vuzp1q_s32(v976, v976));
            v978 = vextq_s8(*&STACK[0xE90], *&STACK[0xEA0], 8uLL);
            v979 = vzip1q_s32(*&STACK[0xEA0], *&STACK[0xEA0]);
            v979.i32[0] = HIDWORD(*&STACK[0xE90]);
            v976.i32[0] = DWORD1(*&STACK[0xE90]);
            v980 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v972, xmmword_2984962A0), xmmword_2984962B0, v973), xmmword_2984962E0, v977), xmmword_2984962F0, v976);
            v981 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v975, xmmword_298496290), xmmword_2984962C0, v974), xmmword_2984962D0, v978), xmmword_298495FB0, v979);
            v982 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v972, xmmword_298496310), xmmword_298496320, v973), xmmword_298496350, v977), xmmword_298496360, v976);
            v983 = vmlaq_f32(vmulq_f32(v976, xmmword_298496360), xmmword_298496350, v977);
            v984 = vmlaq_f32(vmulq_f32(v976, xmmword_2984962F0), xmmword_2984962E0, v977);
            v985 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v975, xmmword_298496300), xmmword_298496330, v974), xmmword_298496340, v978), xmmword_298496370, v979);
            v986 = vmlaq_f32(vmulq_f32(v979, xmmword_298496370), xmmword_298496340, v978);
            v987 = vmlaq_f32(vmulq_f32(v979, xmmword_298496380), xmmword_298496390, v978);
            v988 = vdupq_n_s32(0x3D800000u);
            *&STACK[0x1250] = vmulq_f32(vmlaq_f32(vmulq_f32(v968, xmmword_2984961F0), xmmword_298496200, v971), v988);
            *&STACK[0x1260] = vmulq_f32(vmlaq_f32(vmulq_f32(v970, xmmword_2984961E0), xmmword_298496210, v969), v988);
            *&STACK[0x1270] = vmulq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v968, xmmword_298496220), xmmword_298496230, v971), xmmword_298496260, v973), xmmword_298496270, v972), v988);
            *&STACK[0x1280] = vmulq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v970, xmmword_298495F80), xmmword_298496240, v969), xmmword_298496250, v974), xmmword_298496280, v975), v988);
            *&STACK[0x1290] = vmulq_f32(v980, v988);
            *&STACK[0x12A0] = vmulq_f32(v981, v988);
            v989 = *&STACK[0xEA8];
            *&STACK[0x12B0] = vmulq_f32(v982, v988);
            v990 = *&STACK[0xEB8];
            *&STACK[0x12C0] = vmulq_f32(v985, v988);
            v991 = vextq_s8(v989, v990, 8uLL);
            v992 = vzip1q_s32(v989, vuzp1q_s32(v989, v989));
            v993 = vzip1q_s32(v990, v990);
            v993.i32[0] = v989.i32[3];
            v989.i32[0] = v989.i32[1];
            *&STACK[0x12D0] = vmulq_f32(vmlaq_f32(vmlaq_f32(v983, xmmword_298496320, v992), xmmword_298496310, v989), v988);
            *&STACK[0x12E0] = vmulq_f32(vmlaq_f32(vmlaq_f32(v986, xmmword_298496330, v991), xmmword_298496300, v993), v988);
            v994 = vmlaq_f32(vmlaq_f32(v987, xmmword_2984963A0, v991), xmmword_2984963B0, v993);
            *&STACK[0x12F0] = vmulq_f32(vmlaq_f32(vmlaq_f32(v984, xmmword_2984962B0, v992), xmmword_2984962A0, v989), v988);
            v995 = *&STACK[0xEC8];
            *&STACK[0x1300] = vmulq_f32(v994, v988);
            v996 = vmlaq_f32(vmulq_f32(v993, xmmword_298496280), xmmword_298496250, v991);
            v997 = vextq_s8(v990, v995, 4uLL);
            v997.i32[0] = v990.i32[2];
            v998 = vmlaq_f32(vmlaq_f32(vmulq_f32(v989, xmmword_298496270), xmmword_298496260, v992), xmmword_298496230, v997);
            v999 = vextq_s8(v995, vdupq_laneq_s32(v995, 3), 4uLL);
            v1000 = vextq_s8(v990, vextq_s8(v990, v995, 0xCuLL), 0xCuLL);
            *&STACK[0xCF0] = vdupq_lane_s32(*v965.i8, 0);
            *&STACK[0xD00] = vdupq_lane_s32(*v964.i8, 0);
            v1001 = *&STACK[0xD10];
            v1002 = vdupq_lane_s32(*&STACK[0xD10], 0);
            *&STACK[0xCD0] = vdupq_lane_s32(*v1326.i8, 0);
            *&STACK[0xCE0] = v1002;
            *&STACK[0xCB0] = vdupq_lane_s32(*v965.i8, 1);
            *&STACK[0xCC0] = vdupq_lane_s32(*v964.i8, 1);
            *&STACK[0xCA0] = vdupq_lane_s32(*v1001.i8, 1);
            *&STACK[0xC90] = vdupq_lane_s32(*v1326.i8, 1);
            *&STACK[0xC80] = vdupq_laneq_s32(v964, 2);
            *&STACK[0x1310] = vmulq_f32(vmlaq_f32(v998, xmmword_298496220, v1000), v988);
            *&STACK[0x1320] = vmulq_f32(vmlaq_f32(vmlaq_f32(v996, xmmword_298496240, v995), xmmword_298495F80, v999), v988);
            v1342 = vdupq_laneq_s32(v1001, 2);
            v1346 = vdupq_laneq_s32(v965, 2);
            v1003 = 0uLL;
            v1335 = vdupq_laneq_s32(v964, 3);
            v1339 = vdupq_laneq_s32(v1326, 2);
            v1004 = 0uLL;
            v1005 = 0uLL;
            v1006 = 0uLL;
            *&STACK[0x1340] = vmulq_f32(vmlaq_f32(vmulq_f32(v999, xmmword_2984961E0), xmmword_298496210, v995), v988);
            *&STACK[0x1330] = vmulq_f32(vmlaq_f32(vmulq_f32(v1000, xmmword_2984961F0), xmmword_298496200, v997), v988);
            v1007 = 0uLL;
            v1329 = vdupq_laneq_s32(v1001, 3);
            v1332 = vdupq_laneq_s32(v965, 3);
            v1008 = 0uLL;
            v1009 = vdupq_laneq_s32(v1326, 3);
            v1327 = v1009;
            v1010 = 0uLL;
            v1011 = 0uLL;
            v1012 = *(a3 + 135);
            do
            {
              v1009.i32[0] = 0;
              v994.i32[0] = v1012;
              v1013 = vdupq_lane_s8(*&vceqq_s8(v994, v1009), 0);
              v1014 = vcltzq_s32(*(&STACK[0xFC0] + v966));
              v1015 = vbslq_s8(v1014, v1346, *&STACK[0xC80]);
              v1016 = vcltzq_s32(*(&STACK[0xFC0] + v966 + 16));
              v1017 = *(&STACK[0x1250] + v966);
              v1018 = *(&STACK[0x1250] + v966 + 16);
              v1019 = vbslq_s8(v1016, v1346, *&STACK[0xC80]);
              v1020 = vsubq_f32(vmlaq_f32(v1015, v1017, vsubq_f32(vbslq_s8(v1014, v1339, v1342), v1015)), *(v967 + v966 + 656));
              v1021 = vsubq_f32(vmlaq_f32(v1019, v1018, vsubq_f32(vbslq_s8(v1016, v1339, v1342), v1019)), *(v967 + v966 + 672));
              v1022 = *(v967 + v966 + 912);
              v1023 = *(v967 + v966 + 928);
              v1025 = *&STACK[0xCB0];
              v1024 = *&STACK[0xCC0];
              v1026 = vbslq_s8(v1016, *&STACK[0xCB0], *&STACK[0xCC0]);
              v1027 = *&STACK[0xC90];
              v1028 = *&STACK[0xCA0];
              v1029 = vmlaq_f32(v1026, v1018, vsubq_f32(vbslq_s8(v1016, *&STACK[0xC90], *&STACK[0xCA0]), v1026));
              v1031 = *&STACK[0xCF0];
              v1030 = *&STACK[0xD00];
              v1032 = vbslq_s8(v1016, *&STACK[0xCF0], *&STACK[0xD00]);
              v1034 = *&STACK[0xCD0];
              v1033 = *&STACK[0xCE0];
              v1035 = vbslq_s8(v1016, *&STACK[0xCD0], *&STACK[0xCE0]);
              *&STACK[0xD10] = vbslq_s8(v1013, v1020, vmulq_f32(v1022, v1020));
              v1036 = vmlaq_f32(v1032, v1018, vsubq_f32(v1035, v1032));
              v1037 = vbslq_s8(v1016, v1332, v1335);
              v1038 = vmlaq_f32(v1037, v1018, vsubq_f32(vbslq_s8(v1016, v1327, v1329), v1037));
              v1039 = vbslq_s8(v1014, v1025, v1024);
              v1040 = vbslq_s8(v1013, v1021, vmulq_f32(v1023, v1021));
              v1041 = vsubq_f32(vmlaq_f32(v1039, v1017, vsubq_f32(vbslq_s8(v1014, v1027, v1028), v1039)), *(v967 + v966 + 400));
              v1042 = vsubq_f32(v1029, *(v967 + v966 + 416));
              v1043 = vbslq_s8(v1013, v1041, vmulq_f32(v1022, v1041));
              v1044 = vbslq_s8(v1014, v1031, v1030);
              v1045 = vbslq_s8(v1013, v1042, vmulq_f32(v1023, v1042));
              v1046 = vbslq_s8(v1014, v1332, v1335);
              v1047 = vmlaq_f32(v1046, v1017, vsubq_f32(vbslq_s8(v1014, v1327, v1329), v1046));
              v1048 = vsubq_f32(vmlaq_f32(v1044, v1017, vsubq_f32(vbslq_s8(v1014, v1034, v1033), v1044)), *(v967 + v966 + 144));
              v994 = vbslq_s8(v1013, v1048, vmulq_f32(v1022, v1048));
              v1049 = vsubq_f32(v1036, *(v967 + v966 + 160));
              v1050 = vbslq_s8(v1013, v1049, vmulq_f32(v1023, v1049));
              v1051 = vsubq_f32(v1047, v1022);
              v1052 = vsubq_f32(v1038, v1023);
              v1004 = vmlaq_f32(v1004, v1050, v1050);
              v1003 = vmlaq_f32(v1003, v994, v994);
              v1006 = vmlaq_f32(v1006, v1045, v1045);
              v1005 = vmlaq_f32(v1005, v1043, v1043);
              v1008 = vmlaq_f32(v1008, v1040, v1040);
              v1009 = *&STACK[0xD10];
              v1007 = vmlaq_f32(v1007, v1009, v1009);
              v1011 = vmlaq_f32(v1011, v1052, v1052);
              v1010 = vmlaq_f32(v1010, v1051, v1051);
              v966 += 32;
            }

            while (v966 != 256);
            v1053 = vmulq_f32(v1314, vpaddq_f32(vpaddq_f32(vaddq_f32(v1003, v1004), vaddq_f32(v1005, v1006)), vpaddq_f32(vaddq_f32(v1007, v1008), vaddq_f32(v1010, v1011))));
            v1054 = fabsf(vaddv_f32(vadd_f32(*v1053.i8, *&vextq_s8(v1053, v1053, 8uLL))));
            if (v1054 < *a6)
            {
              *&STACK[0x12A0] = 0uLL;
              v1055 = *&STACK[0xD50];
              *&STACK[0x1260] = *&STACK[0xD60];
              *&STACK[0x1250] = v1055;
              *&STACK[0x1280] = 0u;
              *&STACK[0x1270] = 0u;
              *&STACK[0x1290] = vandq_s8(*&STACK[0xDB0], xmmword_298495C30);
              *(&STACK[0x1290] + ((DualPartitionBlockInfo_6x5 >> 41) & 0x7F)) = STACK[0xDE0];
              v1056 = DualPartitionBlockInfo_6x5 & 0xE1801FFF | ((v1297 & 0x3FF) << 13) | ((STACK[0xD7C] & 0xF) << 25);
              LODWORD(STACK[0x12A0]) = v1056;
              LOBYTE(STACK[0x12A4]) = BYTE4(DualPartitionBlockInfo_6x5);
              LOBYTE(STACK[0x12A5]) = HIBYTE(DualPartitionBlockInfo_6x5);
              LOBYTE(STACK[0x12A6]) = BYTE5(DualPartitionBlockInfo_6x5);
              v1057 = __clz(__rbit32(v950 + 1));
              LOBYTE(STACK[0x12A7]) = BYTE6(DualPartitionBlockInfo_6x5);
              v1058 = ((v950 + 1) >> v1057);
              v1059 = *&STACK[0x1290];
              if (v1058 == 1)
              {
                v1060 = vandq_s8(v1059, vcgtq_u8(vdupq_n_s8(v954), xmmword_298451AC0));
                v1061 = vorrq_s8(vshlq_u16((*&v1060 & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00)), vnegq_s16(vdupq_n_s16(8 - v1057))), (*&v1060 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
                v1062.i64[0] = 0xFFFF0000FFFFLL;
                v1062.i64[1] = 0xFFFF0000FFFFLL;
                v1063.i64[0] = 0xFFFF0000FFFF0000;
                v1063.i64[1] = 0xFFFF0000FFFF0000;
                v1064 = vorrq_s8(vshlq_u32(vandq_s8(v1061, v1063), vnegq_s32(vdupq_n_s32(2 * (8 - v1057)))), vandq_s8(v1061, v1062));
                v1062.i64[0] = 0xFFFFFFFFLL;
                v1062.i64[1] = 0xFFFFFFFFLL;
                v1065 = vandq_s8(v1064, v1062);
                v1066.i64[0] = 0xFFFFFFFF00000000;
                v1066.i64[1] = 0xFFFFFFFF00000000;
                v1067 = vandq_s8(v1064, v1066);
                *v1066.i8 = vdup_n_s32(4 * (8 - v1057));
                v1068.i64[0] = v1066.u32[0];
                v1068.i64[1] = v1066.u32[1];
                v1069 = vorrq_s8(vshlq_u64(v1067, vnegq_s64(v1068)), v1065);
                v1070 = v1069.u64[1];
                v1071 = 8 * v1057;
                v1072 = (v1069.i64[1] << v1071) | v1069.i64[0];
                v1057 = -v1071;
                goto LABEL_255;
              }

              if (v1057)
              {
                v1073 = vmovl_u8(*v1059.i8);
                v1074 = vdupq_n_s16(v950);
                v1075 = vmovl_high_u8(v1059);
                v1076 = vsubw_u8(v1074, *v1059.i8);
                v1077 = vsubw_high_u8(v1074, v1059);
                v1078 = vminq_u16(v1077, v1075);
                v1079 = vminq_u16(v1076, v1073);
                if (v1058 == 3)
                {
                  v1080 = 21846;
                }

                else
                {
                  v1080 = 13108;
                }

                v1081 = vdupq_n_s16(v1080);
                v1082 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v1079.i8, *v1081.i8), 0x10uLL), vmull_high_u16(v1079, v1081), 0x10uLL);
                v1083 = vdupq_n_s16((v950 + 1) >> v1057);
                v1084 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v1078.i8, *v1081.i8), 0x10uLL), vmull_high_u16(v1078, v1081), 0x10uLL);
                v1085 = vdupq_n_s16(v1057);
                v1086 = vcgtq_u16(v1073, v1076);
                v1087.i64[0] = 0x1000100010001;
                v1087.i64[1] = 0x1000100010001;
                v1059 = vuzp1q_s8(vorrq_s8(vaddq_s16(vshlq_u16(vmlsq_s16(v1079, v1082, v1083), v1085), vaddq_s16(v1082, v1082)), vandq_s8(v1086, v1087)), vorrq_s8(vaddq_s16(vshlq_u16(vmlsq_s16(v1078, v1084, v1083), v1085), vaddq_s16(v1084, v1084)), vandq_s8(vcgtq_u16(v1075, v1077), v1087)));
              }

              v1088 = vandq_s8(v1059, vcgtq_u8(vdupq_n_s8(v954), xmmword_298451AC0));
              if (v1058 != 5)
              {
                v1089 = 0uLL;
                if (v1058 == 3)
                {
                  v1090 = vdupq_n_s8(v1057);
                  v1091 = vshlq_u8(v1088, vnegq_s8(v1090));
                  v1092 = vqtbl1q_s8(v1091, xmmword_298495C40);
                  v1093 = vqtbl1q_s8(v1091, xmmword_298495C50);
                  v1094 = vpaddq_s16(vmull_u8(*v1092.i8, 0x8010040180100401), vmull_u8(*&vextq_s8(v1092, v1092, 8uLL), 0x8010040180100401));
                  v1094.i64[0] = vpaddq_s16(v1094, v1094).u64[0];
                  v1095 = vmovl_s16(*v1094.i8);
                  v1096 = vshlq_n_s32(v1093, 5uLL);
                  v1092.i64[0] = 0x3000000030;
                  v1092.i64[1] = 0x3000000030;
                  v1097.i64[0] = 0x2000000020;
                  v1097.i64[1] = 0x2000000020;
                  v1098 = vceqq_s32(vandq_s8(v1095, v1092), v1097);
                  v1099 = vaddw_s16(v1096, *v1094.i8);
                  v1097.i64[0] = 0xFF000000FFLL;
                  v1097.i64[1] = 0xFF000000FFLL;
                  v1100 = vcgtq_s32(v1099, v1097);
                  if ((vmaxvq_u32(vorrq_s8(v1098, v1100)) & 0x80000000) != 0)
                  {
                    v1101.i64[0] = 0x200000002;
                    v1101.i64[1] = 0x200000002;
                    v1102 = vceqq_s32(v1093, v1101);
                    v1103 = vshrq_n_u32(v1095, 2uLL);
                    v1104 = vandq_s8(v1100, v1102);
                    v1105.i64[0] = 0xF0000000FLL;
                    v1105.i64[1] = 0xF0000000FLL;
                    v1106 = vandq_s8(v1095, v1105);
                    v1107.i64[0] = 0x6060606060606060;
                    v1107.i64[1] = 0x6060606060606060;
                    v1108.i64[0] = 0x303030303030303;
                    v1108.i64[1] = 0x303030303030303;
                    v1099 = vaddq_s8(vsubq_s8(vaddq_s8(vandq_s8(vmlaq_s8(v1107, v1096, v1108), v1100), v1099), vaddq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495C60, v1106), v1098), vandq_s8(vqtbl1q_s8(xmmword_298495C70, vandq_s8(v1103, v1105)), v1104))), vandq_s8(vqtbl1q_s8(xmmword_298495C80, v1106), vandq_s8(v1098, v1104)));
                  }

                  v1109 = vorrq_s8(vshlq_u8(vshlq_u8(vandq_s8(vqtbl1q_s8(v1099, xmmword_298495DF0), xmmword_298495D00), xmmword_298495D30), v1090), vandq_s8(v1088, vdupq_n_s8((1 << v1057) - 1)));
                  v1110 = vaddq_s16(vshlq_u16(vshlq_u16((*&v1109 & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00)), vnegq_s16(vdupq_n_s16(7 - v1057))), xmmword_298495E00), (*&v1109 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
                  v1111.i64[0] = 0xFFFF0000FFFF0000;
                  v1111.i64[1] = 0xFFFF0000FFFF0000;
                  v1112 = vshlq_u32(vandq_s8(v1110, v1111), vnegq_s32(vdupq_n_s32(13 - 2 * v1057)));
                  v1113.i64[0] = 0xFFFF0000FFFFLL;
                  v1113.i64[1] = 0xFFFF0000FFFFLL;
                  v1114 = vaddq_s32(vaddq_s32(v1112, vandq_s8(v1110, v1113)), v1112.u32[0]);
                  v1112.i64[0] = 0xFFFFFFFFLL;
                  v1112.i64[1] = 0xFFFFFFFFLL;
                  v1115 = vandq_s8(v1114, v1112);
                  v1111.i64[0] = 0xFFFFFFFF00000000;
                  v1111.i64[1] = 0xFFFFFFFF00000000;
                  v1116 = vandq_s8(v1114, v1111);
                  *v1111.i8 = vdup_n_s32(25 - 4 * v1057);
                  v1117.i64[0] = v1111.u32[0];
                  v1117.i64[1] = v1111.u32[1];
                  v1118 = vaddq_s64(vshlq_u64(v1116, vnegq_s64(v1117)), v1115);
                  v1070 = v1118.u64[1];
                  v1072 = (v1118.i64[1] << (8 * v1057 + 13)) | v1118.i64[0];
                  v1119 = 51;
LABEL_254:
                  LOBYTE(v1057) = v1119 - 8 * v1057;
LABEL_255:
                  v1089.i64[0] = v1072;
                  v1089.i64[1] = v1070 >> v1057;
                }

                *&STACK[0xD10] = v1056;
                v1146 = vqtbl1q_s8(v1089, vsubq_s8(xmmword_298451AC0, vdupq_n_s8(BYTE6(DualPartitionBlockInfo_6x5) >> 3)));
                *&STACK[0xD00] = vshlq_u64(v1146, vdupq_n_s64(HIWORD(DualPartitionBlockInfo_6x5) & 7));
                *&STACK[0xCF0] = vshlq_u64(vqtbl1q_s8(v1146, xmmword_298451AD0), vdupq_n_s64(HIWORD(DualPartitionBlockInfo_6x5) | 0xFFFFFFFFFFFFFFF8));
                v1147 = BYTE4(DualPartitionBlockInfo_6x5) + 1;
                v1148 = __clz(__rbit32(v1147));
                LOBYTE(STACK[0xE1E]) = v1148;
                LOWORD(STACK[0xE1C]) = BYTE4(DualPartitionBlockInfo_6x5) | (((v1147 >> v1148) & 0x1FF) << 8);
                v1149 = *&STACK[0x1250];
                *&STACK[0xE30] = *&STACK[0x1260];
                *&STACK[0xE20] = v1149;
                *v1150.i64 = PackWeights(&STACK[0xE1C], &STACK[0xE20]);
                *a5 = vorrq_s8(vorrq_s8(vorrq_s8(*&STACK[0xD00], *&STACK[0xD10]), *&STACK[0xCF0]), v1150);
                *a6 = v1054;
                if (v1054 < a6[1])
                {
                  goto LABEL_273;
                }

                goto LABEL_257;
              }

              v1120 = vdupq_n_s8(v1057);
              v1121 = vshlq_u8(v1088, vnegq_s8(v1120));
              v1122 = vqtbl1q_s8(v1121, xmmword_298495BC0);
              v1123 = vqtbl1q_s8(v1121, xmmword_298495BD0);
              v1124 = vpaddq_s16(vmull_u8(*v1122.i8, 0x2001200120012001), vmull_u8(*&vextq_s8(v1122, v1122, 8uLL), 0x2001200120012001));
              v1125.i64[0] = 0x7000700070007;
              v1125.i64[1] = 0x7000700070007;
              v1126 = vandq_s8(v1124, v1125);
              v1127 = vandq_s8(vshrq_n_u16(v1124, 5uLL), v1125);
              v1128.i64[0] = 0x4000400040004;
              v1128.i64[1] = 0x4000400040004;
              v1129 = vceqq_s16(v1123, v1128);
              v1130 = vceqq_s16(v1127, v1128);
              v1131 = vsubq_s8(vaddq_s16(v1124, vshlq_n_s16(v1123, 3uLL)), vandq_s8(vqtbl1q_s8(xmmword_298495BE0, v1126), v1130));
              if ((vmaxvq_u16(v1129) & 0x8000) != 0)
              {
                v1132.i64[0] = 0x18001800180018;
                v1132.i64[1] = 0x18001800180018;
                v1131 = vsubq_s8(v1131, vaddq_s8(vaddq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495BF0, v1126), v1129), vandq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495C00, v1126), v1129), v1130)), vandq_s8(vmulq_s16(v1127, v1132), vandq_s8(vceqq_s16(v1126, v1128), v1129))));
              }

              v1133 = vorrq_s8(vshlq_u8(vshlq_u8(vandq_s8(vqtbl1q_s8(v1131, xmmword_298495E10), xmmword_298495E20), xmmword_298495E30), v1120), vandq_s8(v1088, vdupq_n_s8((1 << v1057) - 1)));
              v1134 = vaddq_s16(vshlq_u16(vshlq_u16((*&v1133 & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00)), vnegq_s16(vdupq_n_s16(6 - v1057))), xmmword_298495E40), (*&v1133 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
              v1135.i64[0] = 0xFFFF0000FFFFLL;
              v1135.i64[1] = 0xFFFF0000FFFFLL;
              v1136 = vandq_s8(v1134, v1135);
              v1137.i64[0] = 0xFFFF0000FFFF0000;
              v1137.i64[1] = 0xFFFF0000FFFF0000;
              v1138 = vshlq_u32(vandq_s8(v1134, v1137), vnegq_s32(vdupq_n_s32(12 - 2 * v1057)));
              v1139 = vaddq_s32(v1138, v1136);
              v1138.i32[1] = 0;
              v1140 = vaddq_s32(v1139, v1138);
              v1139.i64[0] = 0xFFFFFFFFLL;
              v1139.i64[1] = 0xFFFFFFFFLL;
              v1141 = vandq_s8(v1140, v1139);
              v1137.i64[0] = 0xFFFFFFFF00000000;
              v1137.i64[1] = 0xFFFFFFFF00000000;
              LODWORD(v1142) = 0;
              HIDWORD(v1142) = v1140.i32[1];
              v1143 = vaddq_s64(vandq_s8(v1140, v1137), v1142);
              *v1137.i8 = vdup_n_s32(23 - 4 * v1057);
              v1144.i64[0] = v1137.u32[0];
              v1144.i64[1] = v1137.u32[1];
              v1145 = vaddq_s64(vshlq_u64(v1143, vnegq_s64(v1144)), v1141);
              v1070 = v1145.u64[1];
              v1072 = (v1145.i64[1] << (8 * v1057 + 19)) | v1145.i64[0];
              v1119 = 45;
              goto LABEL_254;
            }
          }

LABEL_257:
          v1151 = 0;
          *&STACK[0xE50] = 0u;
          *&STACK[0xE40] = 0u;
          *&STACK[0xE30] = 0u;
          *&STACK[0xE20] = 0u;
          __asm
          {
            FMOV            V0.4S, #0.29688
            FMOV            V1.4S, #0.40625
          }

          v1154 = vdupq_n_s32(0x3CC00000u);
          v1155 = vdupq_n_s32(0x3E7C0000u);
          __asm { FMOV            V18.4S, #0.16406 }

          v1157 = vmlaq_f32(vmulq_f32(*&STACK[0x10C0], v1154), _Q18, *&STACK[0x10E0]);
          v1158 = vmlaq_f32(vmulq_f32(*&STACK[0x10D0], v1154), _Q18, *&STACK[0x10F0]);
          v1159 = *&STACK[0x1110];
          v1160 = *&STACK[0x1100];
          v1161 = vdupq_n_s32(0x3D500000u);
          v1162 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(*&STACK[0x10C0], _Q0), _Q1, *&STACK[0x10C0]), v1155, *&STACK[0x10E0]), v1161, *&STACK[0x1100]);
          *&STACK[0x1260] = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(*&STACK[0x10D0], _Q0), _Q1, *&STACK[0x10D0]), v1155, *&STACK[0x10F0]), v1161, *&STACK[0x1110]);
          *&STACK[0x1250] = v1162;
          v1163 = vdupq_n_s32(0x3EC40000u);
          v1164 = vmlaq_f32(v1158, v1163, v1159);
          v1165.i64[0] = 0x3C0000003C000000;
          v1165.i64[1] = 0x3C0000003C000000;
          v1166 = vdupq_n_s32(0x3DC80000u);
          v1167 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v1157, v1163, v1160), v1317, *&STACK[0x1120]), v1166, *&STACK[0x1140]);
          v1168 = vmlaq_f32(vmlaq_f32(vmulq_f32(v1159, v1165), v1166, *&STACK[0x1130]), v1317, *&STACK[0x1150]);
          v1169 = vmlaq_f32(vmlaq_f32(vmulq_f32(v1160, v1165), v1166, *&STACK[0x1120]), v1317, *&STACK[0x1140]);
          v1170 = *&STACK[0x1170];
          v1171 = *&STACK[0x1160];
          v1172 = vmlaq_f32(v1167, v1165, *&STACK[0x1160]);
          *&STACK[0x1280] = vmlaq_f32(vmlaq_f32(vmlaq_f32(v1164, v1317, *&STACK[0x1130]), v1166, *&STACK[0x1150]), v1165, *&STACK[0x1170]);
          *&STACK[0x1270] = v1172;
          v1173 = vmlaq_f32(v1169, v1163, v1171);
          v1174 = vmlaq_f32(v1168, v1163, v1170);
          v1175 = vmlaq_f32(vmulq_f32(v1171, v1161), v1155, *&STACK[0x1180]);
          v1176 = vmlaq_f32(vmulq_f32(v1170, v1161), v1155, *&STACK[0x1190]);
          v1177 = *&STACK[0x11B0];
          v1178 = *&STACK[0x11A0];
          v1179 = vmlaq_f32(vmlaq_f32(v1173, _Q18, *&STACK[0x1180]), v1154, *&STACK[0x11A0]);
          *&STACK[0x12A0] = vmlaq_f32(vmlaq_f32(v1174, _Q18, *&STACK[0x1190]), v1154, *&STACK[0x11B0]);
          *&STACK[0x1290] = v1179;
          *&STACK[0x12C0] = vmlaq_f32(vmlaq_f32(v1176, _Q1, v1177), _Q0, v1177);
          *&STACK[0x12B0] = vmlaq_f32(vmlaq_f32(v1175, _Q1, v1178), _Q0, v1178);
          do
          {
            v1180 = (&STACK[0x1250] + 4 * v1151);
            v1181 = vpaddq_f32(vpaddq_f32(vmulq_f32(*v1180, xmmword_2984964E0), vmulq_f32(v1180[1], xmmword_2984964D0)), vpaddq_f32(vpaddq_f32(vmulq_f32(*v1180, xmmword_298496470), vmulq_f32(v1180[1], xmmword_298496460)), vpaddq_f32(vmulq_f32(*v1180, xmmword_298496490), vmulq_f32(v1180[1], xmmword_298496480))));
            *(&STACK[0xE20] + v1151++) = vuzp1q_s32(v1181, vextq_s8(v1181, v1181, 0xCuLL));
          }

          while (v1151 != 4);
          v1182 = GetDualPartitionBlockInfo((v643 >> 2) & 0x3FFFFFF, 16 - 4 * *(a1 + 136));
          LODWORD(STACK[0xD50]) = (v1182 >> 25) & 0xF;
          v400 = &unk_298495000;
          if (!FindQuantizedColors(HIBYTE(v1182), &STACK[0xD90], &STACK[0xD50], &STACK[0xE20], 0x10uLL, v1323, v1319, v1321, v1183))
          {
            v1184 = BYTE4(v1182);
            STACK[0xD80] = &STACK[0xFC0];
            v1185 = vrecpes_f32(v1184);
            v1186 = 0.0;
            if (BYTE4(v1182))
            {
              v1186 = v1185;
            }

            v1187 = *(a2 + 32);
            v1188 = v1296;
            if (v1187)
            {
              __asm { FMOV            V3.4S, #3.0 }

              v1188 = vmulq_f32(*v1187, _Q3);
            }

            v1190 = vmulq_n_f32(*&STACK[0xE40], v1184);
            v1191 = vmulq_n_f32(*&STACK[0xE50], v1184);
            v1192 = vmulq_n_f32(*&STACK[0xE30], v1184);
            v1193 = vrndxq_f32(vmulq_n_f32(*&STACK[0xE20], v1184));
            v1194 = vrndxq_f32(v1192);
            v1195 = vrndxq_f32(v1191);
            v1196 = vrndxq_f32(v1190);
            v1336 = vuzp1q_s8(vuzp1q_s16(vcvtq_s32_f32(v1193), vcvtq_s32_f32(v1194)), vuzp1q_s16(vcvtq_s32_f32(v1196), vcvtq_s32_f32(v1195)));
            v1197 = vmulq_n_f32(v1194, v1186);
            v1198 = vmulq_n_f32(v1193, v1186);
            v1199 = vmulq_n_f32(v1196, v1186);
            v1200 = vmulq_n_f32(v1195, v1186);
            v1347 = *&STACK[0xD90];
            v1201 = vaddq_f32(*&STACK[0xD90], *&STACK[0xDA0]);
            v1343 = *&STACK[0xDC0];
            *&STACK[0xC80] = vaddq_f32(*&STACK[0xDC0], *&STACK[0xDD0]);
            *&STACK[0xC90] = v1201;
            v1202 = a2;
            do
            {
              v1203 = v1202;
              v1202 = *(v1202 + 40);
            }

            while (v1202);
            v1204 = vzip1q_s32(v1198, v1198);
            v1204.i32[2] = v1198.i32[0];
            v1205 = vzip2q_s32(vextq_s8(v1198, v1198, 0xCuLL), v1198);
            v1206 = vdupq_lane_s32(*v1198.i8, 1);
            v1207 = vextq_s8(v1198, vdupq_laneq_s32(v1198, 3), 8uLL);
            v1206.i32[3] = v1198.i32[2];
            *&STACK[0xD10] = xmmword_2984959F0;
            *&STACK[0xD00] = xmmword_298495A00;
            *&STACK[0xCF0] = xmmword_298495A10;
            v1208 = vdupq_n_s32(0x3D800000u);
            *&STACK[0xCE0] = xmmword_298495A30;
            *&STACK[0xCD0] = xmmword_298495A40;
            v1209 = vzip2q_s32(vextq_s8(v1197, v1197, 0xCuLL), v1197);
            *&STACK[0x1260] = vmulq_f32(vmlaq_f32(vmulq_f32(v1207, xmmword_298495A00), xmmword_298495A10, v1205), v1208);
            *&STACK[0x1250] = vmulq_f32(vmlaq_f32(vmulq_f32(v1206, xmmword_2984959F0), xmmword_298495A20, v1204), v1208);
            v1210 = vzip1q_s32(v1197, v1197);
            v1210.i32[2] = v1197.i32[0];
            v1211 = vdupq_lane_s32(*v1197.i8, 1);
            v1211.i32[3] = v1197.i32[2];
            v1212 = vextq_s8(v1197, vdupq_laneq_s32(v1197, 3), 8uLL);
            *&STACK[0x1280] = vmulq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1207, xmmword_298495A40), xmmword_298495A50, v1205), xmmword_298495A80, v1209), xmmword_298495A90, v1212), v1208);
            *&STACK[0x1270] = vmulq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1206, xmmword_298495A30), xmmword_298495A60, v1204), xmmword_298495A70, v1210), xmmword_298495AA0, v1211), v1208);
            v1213 = vmulq_f32(v1207, xmmword_298495AC0);
            v1214 = xmmword_298495AD0;
            *&STACK[0x12A0] = vmulq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(v1213, xmmword_298495AD0, v1205), xmmword_298495B00, v1209), xmmword_298495B10, v1212), v1208);
            *&STACK[0x1290] = vmulq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1206, xmmword_298495AB0), xmmword_298495AE0, v1204), xmmword_298495AF0, v1210), xmmword_298495B20, v1211), v1208);
            v1215 = vmlaq_f32(vmulq_f32(v1211, xmmword_298495B30), xmmword_298495B60, v1210);
            v1216 = vmlaq_f32(vmulq_f32(v1211, xmmword_298495BA0), xmmword_298495B70, v1210);
            v1217 = vzip1q_s32(v1199, v1199);
            v1217.i32[2] = v1199.i32[0];
            v1218 = vmlaq_f32(vmulq_f32(v1212, xmmword_298495B40), xmmword_298495B50, v1209);
            v1219 = vmlaq_f32(vmulq_f32(v1212, xmmword_298495B90), xmmword_298495B80, v1209);
            v1220 = vzip2q_s32(vextq_s8(v1199, v1199, 0xCuLL), v1199);
            v1221 = vdupq_lane_s32(*v1199.i8, 1);
            v1221.i32[3] = v1199.i32[2];
            v1222 = vextq_s8(v1199, vdupq_laneq_s32(v1199, 3), 8uLL);
            *&STACK[0x12C0] = vmulq_f32(vmlaq_f32(vmlaq_f32(v1218, xmmword_298495B80, v1220), xmmword_298495B90, v1222), v1208);
            *&STACK[0x12B0] = vmulq_f32(vmlaq_f32(vmlaq_f32(v1215, xmmword_298495B70, v1217), xmmword_298495BA0, v1221), v1208);
            *&STACK[0x12E0] = vmulq_f32(vmlaq_f32(vmlaq_f32(v1219, xmmword_298495B50, v1220), xmmword_298495B40, v1222), v1208);
            *&STACK[0x12D0] = vmulq_f32(vmlaq_f32(vmlaq_f32(v1216, xmmword_298495B60, v1217), xmmword_298495B30, v1221), v1208);
            v1223 = vzip1q_s32(v1200, v1200);
            v1223.i32[2] = v1200.i32[0];
            v1224 = vzip2q_s32(vextq_s8(v1200, v1200, 0xCuLL), v1200);
            v1225 = vdupq_lane_s32(*v1200.i8, 1);
            v1225.i32[3] = v1200.i32[2];
            v1226 = vextq_s8(v1200, vdupq_laneq_s32(v1200, 3), 8uLL);
            *&STACK[0x1300] = vmulq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1222, xmmword_298495B10), xmmword_298495B00, v1220), xmmword_298495AD0, v1224), xmmword_298495AC0, v1226), v1208);
            *&STACK[0x12F0] = vmulq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1221, xmmword_298495B20), xmmword_298495AF0, v1217), xmmword_298495AE0, v1223), xmmword_298495AB0, v1225), v1208);
            v1227 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1221, xmmword_298495AA0), xmmword_298495A70, v1217), xmmword_298495A60, v1223), *&STACK[0xCE0], v1225), v1208);
            *&STACK[0x1320] = vmulq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1222, xmmword_298495A90), xmmword_298495A80, v1220), xmmword_298495A50, v1224), *&STACK[0xCD0], v1226), v1208);
            *&STACK[0x1310] = v1227;
            v1228 = vmulq_f32(v1225, *&STACK[0xD10]);
            v1229 = vmlaq_f32(vmulq_f32(v1226, *&STACK[0xD00]), *&STACK[0xCF0], v1224);
            v1230 = *&STACK[0xC80];
            *&STACK[0xD10] = vdupq_lane_s32(*v1347.i8, 0);
            *&STACK[0xD00] = vdupq_lane_s32(*v1343.i8, 0);
            v1231 = *&STACK[0xC90];
            *&STACK[0xCF0] = vdupq_lane_s32(*&STACK[0xC90], 0);
            *&STACK[0xCE0] = vdupq_lane_s32(*v1230.i8, 0);
            *&STACK[0xCD0] = vdupq_lane_s32(*v1347.i8, 1);
            *&STACK[0xCC0] = vdupq_lane_s32(*v1343.i8, 1);
            *&STACK[0xCB0] = vdupq_lane_s32(*v1231.i8, 1);
            *&STACK[0xCA0] = vdupq_lane_s32(*v1230.i8, 1);
            v1232 = vmulq_f32(vmlaq_f32(v1228, xmmword_298495A20, v1223), v1208);
            v1233 = vdupq_laneq_s32(v1347, 2);
            v1234 = vdupq_laneq_s32(v1343, 2);
            v1235 = vdupq_laneq_s32(v1231, 2);
            v1236 = vdupq_laneq_s32(v1230, 2);
            v1237 = vdupq_laneq_s32(v1347, 3);
            v1238 = vdupq_laneq_s32(v1343, 3);
            v1239 = vdupq_laneq_s32(v1231, 3);
            *&STACK[0x1340] = vmulq_f32(v1229, v1208);
            *&STACK[0x1330] = v1232;
            v1240 = vdupq_laneq_s32(v1230, 3);
            v1241 = vdupq_lane_s32(*v1188.i8, 0);
            v1242 = vdupq_laneq_s32(v1188, 2);
            v1243 = vdupq_laneq_s32(v1188, 3);
            v1244 = 0uLL;
            v1245 = 0uLL;
            v1246 = *v1188.i8;
            do
            {
              v1232.i32[0] = 0;
              v1214.i32[0] = *(a2 + 135);
              v1247 = vdupq_lane_s8(*&vceqq_s8(v1214, v1232), 0);
              v1248 = vcltzq_s32(*(&STACK[0xFC0] + v1202 + 16));
              v1249 = vbslq_s8(v1248, v1234, v1233);
              v1250 = *(&STACK[0x1250] + v1202);
              v1251 = *(&STACK[0x1250] + v1202 + 16);
              v1252 = vcltzq_s32(*(&STACK[0xFC0] + v1202));
              v1253 = vbslq_s8(v1252, v1234, v1233);
              v1254 = vsubq_f32(vmlaq_f32(v1249, v1251, vsubq_f32(vbslq_s8(v1248, v1236, v1235), v1249)), *(v1203 + v1202 + 672));
              v1255 = *(v1203 + v1202 + 912);
              v1256 = *(v1203 + v1202 + 928);
              v1257 = vsubq_f32(vmlaq_f32(v1253, v1250, vsubq_f32(vbslq_s8(v1252, v1236, v1235), v1253)), *(v1203 + v1202 + 656));
              v1258 = vbslq_s8(v1248, *&STACK[0xCC0], *&STACK[0xCD0]);
              v1259 = vbslq_s8(v1247, v1254, vmulq_f32(v1256, v1254));
              v1260 = vsubq_f32(vmlaq_f32(v1258, v1251, vsubq_f32(vbslq_s8(v1248, *&STACK[0xCA0], *&STACK[0xCB0]), v1258)), *(v1203 + v1202 + 416));
              v1261 = vbslq_s8(v1247, v1257, vmulq_f32(v1255, v1257));
              v1262 = vbslq_s8(v1252, *&STACK[0xCC0], *&STACK[0xCD0]);
              v1263 = vsubq_f32(vmlaq_f32(v1262, v1250, vsubq_f32(vbslq_s8(v1252, *&STACK[0xCA0], *&STACK[0xCB0]), v1262)), *(v1203 + v1202 + 400));
              v1264 = vbslq_s8(v1247, v1260, vmulq_f32(v1256, v1260));
              v1265 = vbslq_s8(v1252, *&STACK[0xD00], *&STACK[0xD10]);
              v1266 = vbslq_s8(v1247, v1263, vmulq_f32(v1255, v1263));
              v1267 = vsubq_f32(vmlaq_f32(v1265, v1250, vsubq_f32(vbslq_s8(v1252, *&STACK[0xCE0], *&STACK[0xCF0]), v1265)), *(v1203 + v1202 + 144));
              v1268 = vbslq_s8(v1248, *&STACK[0xD00], *&STACK[0xD10]);
              v1269 = vbslq_s8(v1247, v1267, vmulq_f32(v1255, v1267));
              v1270 = vsubq_f32(vmlaq_f32(v1268, v1251, vsubq_f32(vbslq_s8(v1248, *&STACK[0xCE0], *&STACK[0xCF0]), v1268)), *(v1203 + v1202 + 160));
              v1271 = vbslq_s8(v1247, v1270, vmulq_f32(v1256, v1270));
              v1272 = vbslq_s8(v1248, v1238, v1237);
              v1273 = vbslq_s8(v1252, v1238, v1237);
              v1214 = vmlaq_f32(v1273, v1250, vsubq_f32(vbslq_s8(v1252, v1240, v1239), v1273));
              v1274 = vsubq_f32(v1214, v1255);
              v1275 = vmlaq_f32(vmulq_lane_f32(vmulq_f32(v1266, v1266), v1246, 1), vmulq_f32(v1269, v1269), v1241);
              v12 = vsubq_f32(vmlaq_f32(v1272, v1251, vsubq_f32(vbslq_s8(v1248, v1240, v1239), v1272)), v1256);
              v1276 = vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vmulq_f32(v1264, v1264), v1246, 1), vmulq_f32(v1271, v1271), v1241), vmulq_f32(v1259, v1259), v1242);
              v13 = vmulq_f32(v1261, v1261);
              v1277 = vmlaq_f32(vmlaq_f32(v1275, v13, v1242), vmulq_f32(v1274, v1274), v1243);
              v1232 = vmulq_f32(v12, v12);
              v1245 = vaddq_f32(v1245, vmlaq_f32(v1276, v1232, v1243));
              v1244 = vaddq_f32(v1244, v1277);
              v1202 += 32;
            }

            while (v1202 != 256);
            v1278 = vaddq_f32(v1244, v1245);
            v1278.i64[0] = vpaddq_f32(v1278, v1278).u64[0];
            v1279 = fabsf(vpadd_f32(*v1278.f32, *v1278.f32).f32[0]);
            if (v1279 < *a6)
            {
              *&STACK[0x1280] = 0uLL;
              *&STACK[0x1250] = v1336;
              *&STACK[0x1260] = 0u;
              *&STACK[0x1270] = vandq_s8(*&STACK[0xDB0], xmmword_298495C30);
              *(&STACK[0x1270] + ((v1182 >> 41) & 0x7F)) = STACK[0xDE0];
              LODWORD(STACK[0x1280]) = v1182 & 0xE1801FFF | ((v1297 & 0x3FF) << 13) | ((STACK[0xD50] & 0xF) << 25);
              LOBYTE(STACK[0x1284]) = BYTE4(v1182);
              LOBYTE(STACK[0x1285]) = HIBYTE(v1182);
              LOBYTE(STACK[0x1286]) = BYTE5(v1182);
              LOBYTE(STACK[0x1287]) = BYTE6(v1182);
              *v1280.i64 = PackDualBlock_4x4(&STACK[0x1250]);
              *a5 = v1280;
              *a6 = v1279;
              if (v1279 < a6[1])
              {
                goto LABEL_273;
              }
            }
          }

          v395 = v1294;
          _Q31 = v1296;
          v397 = 0uLL;
          v398 = &unk_298495000;
          v399 = &unk_298495000;
          v401.i64[0] = 0xFF000000FFLL;
          v401.i64[1] = 0xFF000000FFLL;
          v402 = v1323;
          v478 = vars0;
          v477 = v1293;
          v480 = v1290;
          v479 = v1291;
LABEL_271:
          ++v476;
        }

        while (v476 != 4);
        if (++v395 == v1283)
        {
          goto LABEL_273;
        }
      }
    }
  }

  v27 = v26 + v25;
  v28 = v20 + (v25 << 8);
  v29 = v25 + 1;
  while (v29 == v27)
  {
LABEL_77:
    if (++v29 == 6)
    {
      goto LABEL_78;
    }
  }

  v30 = colorVertexTable[v29];
  v31 = colorVertexTable[v25];
  v32 = v30 & 3;
  v33 = v30 >> 4;
  v34 = v31 & 3;
  v35 = v31 >> 4;
  if (v32 == v34)
  {
    v36 = v32;
    v32 = v33;
LABEL_12:
    v34 = v35;
LABEL_18:
    v37 = *(v21 + 16 * v36);
    v38 = *(v21 + 16 * v32);
    if ((vminvq_u32(vceqq_f32(v37, v38)) & 0x80000000) == 0)
    {
      v39 = *(v21 + 16 * v34);
      if ((vminvq_u32(vceqq_f32(v37, v39)) & 0x80000000) == 0 && (vminvq_u32(vceqq_f32(v38, v39)) & 0x80000000) == 0)
      {
        *&STACK[0xD10] = v38;
        v40 = 0;
        v41 = vdupq_lane_s32(*v37.f32, 0);
        v42 = vdupq_lane_s32(*v37.f32, 1);
        v43 = 0uLL;
        v44 = vdupq_laneq_s32(v37, 2);
        v45 = 0uLL;
        v46 = vdupq_laneq_s32(v37, 3);
        v47 = v20 + (v29 << 8);
        v48 = 0uLL;
        v49 = 0uLL;
        v50 = 0uLL;
        v51 = 0uLL;
        v52 = 0uLL;
        v53 = 0uLL;
        v54 = 0uLL;
        v55 = 0uLL;
        do
        {
          v57 = *(a1 + v40 + 144);
          v56 = *(a1 + v40 + 160);
          v58 = vsubq_f32(v57, v41);
          v59 = vsubq_f32(v56, v41);
          v61 = *(a1 + v40 + 400);
          v60 = *(a1 + v40 + 416);
          v62 = vsubq_f32(v60, v42);
          v63 = vsubq_f32(v61, v42);
          v64 = *(a1 + v40 + 656);
          v65 = *(a1 + v40 + 672);
          v66 = vsubq_f32(v65, v44);
          v67 = *(a1 + v40 + 912);
          v68 = *(a1 + v40 + 928);
          v69 = vsubq_f32(v64, v44);
          v70 = vsubq_f32(v67, v46);
          v71 = vsubq_f32(v68, v46);
          v72 = vcgtq_f32(v23, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v63, v63), v58, v58), v69, v69), v70, v70));
          v73 = vcgtq_f32(v23, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v62, v62), v59, v59), v66, v66), v71, v71));
          v74 = (&STACK[0x1250] + v40);
          *v74 = v72;
          v74[1] = v73;
          v55 = vsubq_s32(v55, v73);
          v54 = vsubq_s32(v54, v72);
          v45 = vaddq_f32(v45, vandq_s8(v56, v73));
          v43 = vaddq_f32(v43, vandq_s8(v57, v72));
          v49 = vaddq_f32(v49, vandq_s8(v60, v73));
          v48 = vaddq_f32(v48, vandq_s8(v61, v72));
          v51 = vaddq_f32(v51, vandq_s8(v65, v73));
          v50 = vaddq_f32(v50, vandq_s8(v64, v72));
          v53 = vaddq_f32(v53, vandq_s8(v68, v73));
          v52 = vaddq_f32(v52, vandq_s8(v67, v72));
          v40 += 32;
        }

        while (v40 != 256);
        v75 = vaddq_s32(v54, v55);
        v75.i64[0] = vpaddq_s32(v75, v75).u64[0];
        *v75.i32 = ReciprocalTable[vpadd_s32(*v75.i8, *v75.i8).i32[0]];
        v76 = vaddq_f32(v52, v53);
        v77 = vpaddq_f32(v76, v76).u64[0];
        v78 = vaddq_f32(v50, v51);
        v78.i64[0] = vpaddq_f32(v78, v78).u64[0];
        v79 = vaddq_f32(v48, v49);
        v79.i64[0] = vpaddq_f32(v79, v79).u64[0];
        v80 = vaddq_f32(v43, v45);
        v81 = vpaddq_f32(v80, v80);
        *v81.f32 = vpadd_f32(*v81.f32, *v81.f32);
        v81.f32[0] = *v75.i32 * v81.f32[0];
        v82 = v81;
        v82.f32[1] = *v75.i32 * vpadd_f32(*v79.f32, *v79.f32).f32[0];
        v79.f32[0] = *v75.i32 * vpadd_f32(*v78.f32, *v78.f32).f32[0];
        v83 = v82;
        v83.i32[2] = v79.i32[0];
        v84 = v83;
        v84.f32[3] = *v75.i32 * vpadd_f32(v77, v77).f32[0];
        v85 = vsubq_f32(*&STACK[0xD10], v84);
        v86 = vsubq_f32(v39, v84);
        if ((vminvq_u32(vorrq_s8(vceqzq_f32(v85), vceqzq_f32(v86))) & 0x80000000) != 0)
        {
          goto LABEL_273;
        }

        *&STACK[0xCD0] = v39;
        v87 = 0;
        v88 = vorrq_s8(vandq_s8(vuzp1q_s16(*&STACK[0x1250], *&STACK[0x1260]), xmmword_298495650), vandq_s8(vuzp1q_s16(*&STACK[0x1270], *&STACK[0x1280]), xmmword_298495640));
        v88.i16[0] = vaddvq_s16(v88);
        v89 = v88.u32[0] << 48;
        v90 = vorrq_s8(vandq_s8(vuzp1q_s16(*&STACK[0x1290], *&STACK[0x12A0]), xmmword_298495650), vandq_s8(vuzp1q_s16(*&STACK[0x12B0], *&STACK[0x12C0]), xmmword_298495640));
        v90.i16[0] = vaddvq_s16(v90);
        v91 = v89 | (v90.u32[0] << 32);
        v92.i64[0] = 0x800000008;
        v92.i64[1] = 0x800000008;
        v93 = vorrq_s8(vandq_s8(vuzp1q_s16(*&STACK[0x12D0], *&STACK[0x12E0]), xmmword_298495650), vandq_s8(vuzp1q_s16(*&STACK[0x12F0], *&STACK[0x1300]), xmmword_298495640));
        v93.i16[0] = vaddvq_s16(v93);
        v94 = v91 | (v93.i32[0] << 16);
        v95 = vuzp1q_s16(*&STACK[0x1310], *&STACK[0x1320]);
        v96 = vuzp1q_s16(*&STACK[0x1330], *&STACK[0x1340]);
        *&STACK[0xCE0] = xmmword_298495650;
        *&STACK[0xCF0] = xmmword_298495640;
        v97 = vorrq_s8(vandq_s8(v95, xmmword_298495650), vandq_s8(v96, xmmword_298495640));
        v97.i16[0] = vaddvq_s16(v97);
        v98 = v94 | v97.u32[0];
        v99 = vdupq_lane_s32(*v81.f32, 0);
        v100 = vdupq_lane_s32(*v82.f32, 1);
        v101 = vdupq_laneq_s32(v83, 2);
        *&STACK[0xD00] = v84;
        v102 = vdupq_laneq_s32(v84, 3);
        v103 = vdupq_lane_s32(*v85.f32, 0);
        v104 = vdupq_laneq_s32(v85, 2);
        v105 = vdupq_laneq_s32(v85, 3);
        v106 = vdupq_lane_s32(*v86.f32, 0);
        v107 = vdupq_laneq_s32(v86, 2);
        v108 = xmmword_298495620;
        v109 = vdupq_laneq_s32(v86, 3);
        v110.i64[0] = -1;
        v110.i64[1] = -1;
        v111.i64[0] = 0x7F0000007FLL;
        v111.i64[1] = 0x7F0000007FLL;
        v112 = xmmword_298495600;
        v113.i64[0] = 0x7F0000007FLL;
        v113.i64[1] = 0x7F0000007FLL;
        v114.i64[0] = 0x7F0000007FLL;
        v114.i64[1] = 0x7F0000007FLL;
        v115.i64[0] = 0x7F0000007FLL;
        v115.i64[1] = 0x7F0000007FLL;
        v116.i64[0] = -1;
        v116.i64[1] = -1;
        v117.i64[0] = -1;
        v117.i64[1] = -1;
        v118.i64[0] = -1;
        v118.i64[1] = -1;
        do
        {
          v119 = vcgtq_f32(*(v47 + v87 + 16), *(v28 + v87 + 16));
          v120 = vcgtq_f32(*(v47 + v87), *(v28 + v87));
          v121 = vsubq_f32(*(a1 + v87 + 160), v99);
          v122 = vsubq_f32(*(a1 + v87 + 144), v99);
          v123 = vsubq_f32(*(a1 + v87 + 400), v100);
          v124 = vsubq_f32(*(a1 + v87 + 416), v100);
          v125 = vmlaq_f32(vmulq_lane_f32(v123, *v85.f32, 1), v103, v122);
          v126 = vmlaq_f32(vmulq_lane_f32(v124, *v85.f32, 1), v103, v121);
          v127 = vmlaq_f32(vmulq_lane_f32(v123, *v86.f32, 1), v106, v122);
          v128 = vmlaq_f32(vmulq_lane_f32(v124, *v86.f32, 1), v106, v121);
          v129 = vsubq_f32(*(a1 + v87 + 656), v101);
          v130 = vsubq_f32(*(a1 + v87 + 672), v101);
          v131 = vmlaq_f32(v126, v104, v130);
          v132 = vmlaq_f32(v125, v104, v129);
          v133 = vmlaq_f32(v128, v107, v130);
          v134 = vmlaq_f32(v127, v107, v129);
          v135 = vsubq_f32(*(a1 + v87 + 928), v102);
          v136 = vsubq_f32(*(a1 + v87 + 912), v102);
          v137 = vmlaq_f32(v132, v105, v136);
          v138 = vmlaq_f32(v131, v105, v135);
          v139 = vmlaq_f32(v134, v109, v136);
          v140 = vmlaq_f32(v133, v109, v135);
          *v136.f32 = vmovn_s16(vornq_s8(vuzp1q_s16(v120, v119), vuzp1q_s16(vcgtq_f32(v137, v111), vcgtq_f32(v138, v113))));
          v141 = vandq_s8(vcgtq_f32(v139, v114), v120);
          v142 = vandq_s8(vcgtq_f32(v140, v115), v119);
          v143 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(*v136.f32, *v23.f32)), 0x1FuLL));
          v113 = vbslq_s8(v143, v113, v138);
          v144 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(*v136.f32, *v23.f32)), 0x1FuLL));
          v111 = vbslq_s8(v144, v111, v137);
          v115 = vbslq_s8(v142, v140, v115);
          v114 = vbslq_s8(v141, v139, v114);
          v116 = vbslq_s8(v143, v116, v108);
          v110 = vbslq_s8(v144, v110, v112);
          v118 = vbslq_s8(v142, v108, v118);
          v117 = vbslq_s8(v141, v112, v117);
          v112 = vaddq_s32(v112, v92);
          v108 = vaddq_s32(v108, v92);
          v87 += 32;
        }

        while (v87 != 256);
        *&STACK[0xC90] = v101;
        v145 = vbslq_s8(vcgtq_f32(v113, v111), v116, v110);
        v146 = vmaxnmq_f32(v111, v113);
        v147 = vextq_s8(v146, v146, 8uLL);
        v148 = vbslq_s8(vcgtq_f32(v147, v146), vextq_s8(v145, v145, 8uLL), v145);
        v149 = vmaxnmq_f32(v146, v147);
        v150 = vbslq_s8(vcgtq_f32(vrev64q_s32(v149), v149), vdupq_lane_s32(*v148.i8, 1), v148).u32[0];
        v151 = *&STACK[0xD10];
        if ((v150 & 0x80000000) == 0)
        {
          v151 = *(v22 + 16 * v150);
        }

        *&STACK[0xCA0] = v100;
        *&STACK[0xCB0] = v99;
        v152 = vbslq_s8(vcgtq_f32(v115, v114), v118, v117);
        v153 = vmaxnmq_f32(v114, v115);
        v154 = vextq_s8(v153, v153, 8uLL);
        v155 = vbslq_s8(vcgtq_f32(v154, v153), vextq_s8(v152, v152, 8uLL), v152);
        v156 = vmaxnmq_f32(v153, v154);
        v157 = vbslq_s8(vcgtq_f32(vrev64q_s32(v156), v156), vdupq_lane_s32(*v155.i8, 1), v155).u32[0];
        if ((v157 & 0x80000000) == 0)
        {
          *&STACK[0xCD0] = *(v22 + 16 * v157);
        }

        v158 = 0;
        v159 = vdupq_lane_s32(*v151.i8, 0);
        v160 = vdupq_lane_s32(*v151.i8, 1);
        v161 = vdupq_laneq_s32(v151, 2);
        v162 = 0uLL;
        v163 = 0uLL;
        v164 = vdupq_laneq_s32(v151, 3);
        v165 = 0uLL;
        v166 = 0uLL;
        v167 = 0uLL;
        v168 = 0uLL;
        v169 = 0uLL;
        v170 = 0uLL;
        v171 = 0uLL;
        v172 = 0uLL;
        v173 = *&STACK[0xCC0];
        do
        {
          v175 = *(a1 + v158 + 144);
          v174 = *(a1 + v158 + 160);
          v176 = vsubq_f32(v175, v159);
          v177 = vsubq_f32(v174, v159);
          v178 = *(a1 + v158 + 400);
          v179 = *(a1 + v158 + 416);
          v180 = vsubq_f32(v179, v160);
          v181 = vsubq_f32(v178, v160);
          v183 = *(a1 + v158 + 656);
          v182 = *(a1 + v158 + 672);
          v184 = vsubq_f32(v182, v161);
          v185 = *(a1 + v158 + 912);
          v186 = *(a1 + v158 + 928);
          v187 = vsubq_f32(v183, v161);
          v188 = vsubq_f32(v185, v164);
          v189 = vsubq_f32(v186, v164);
          v190 = vcgtq_f32(v173, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v181, v181), v176, v176), v187, v187), v188, v188));
          v191 = vcgtq_f32(v173, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v180, v180), v177, v177), v184, v184), v189, v189));
          v192 = (&STACK[0x1250] + v158);
          *v192 = v190;
          v192[1] = v191;
          v172 = vsubq_s32(v172, v191);
          v171 = vsubq_s32(v171, v190);
          v163 = vaddq_f32(v163, vandq_s8(v174, v191));
          v162 = vaddq_f32(v162, vandq_s8(v175, v190));
          v166 = vaddq_f32(v166, vandq_s8(v179, v191));
          v165 = vaddq_f32(v165, vandq_s8(v178, v190));
          v168 = vaddq_f32(v168, vandq_s8(v182, v191));
          v167 = vaddq_f32(v167, vandq_s8(v183, v190));
          v170 = vaddq_f32(v170, vandq_s8(v186, v191));
          v169 = vaddq_f32(v169, vandq_s8(v185, v190));
          v158 += 32;
        }

        while (v158 != 256);
        v193 = 0;
        v194 = vaddq_s32(v171, v172);
        v194.i64[0] = vpaddq_s32(v194, v194).u64[0];
        v195 = ReciprocalTable[vpadd_s32(*v194.i8, *v194.i8).i32[0]];
        v196 = vorrq_s8(vandq_s8(vuzp1q_s16(*&STACK[0x1250], *&STACK[0x1260]), *&STACK[0xCE0]), vandq_s8(vuzp1q_s16(*&STACK[0x1270], *&STACK[0x1280]), *&STACK[0xCF0]));
        v196.i16[0] = vaddvq_s16(v196);
        v197 = v196.u32[0];
        v198 = vorrq_s8(vandq_s8(vuzp1q_s16(*&STACK[0x1290], *&STACK[0x12A0]), *&STACK[0xCE0]), vandq_s8(vuzp1q_s16(*&STACK[0x12B0], *&STACK[0x12C0]), *&STACK[0xCF0]));
        v198.i16[0] = vaddvq_s16(v198);
        v199 = v198.u32[0] << 32;
        v200 = vorrq_s8(vandq_s8(vuzp1q_s16(*&STACK[0x12D0], *&STACK[0x12E0]), *&STACK[0xCE0]), vandq_s8(vuzp1q_s16(*&STACK[0x12F0], *&STACK[0x1300]), *&STACK[0xCF0]));
        v200.i16[0] = vaddvq_s16(v200);
        v201 = (v200.i32[0] << 16);
        v202 = vorrq_s8(vandq_s8(vuzp1q_s16(*&STACK[0x1310], *&STACK[0x1320]), *&STACK[0xCE0]), vandq_s8(vuzp1q_s16(*&STACK[0x1330], *&STACK[0x1340]), *&STACK[0xCF0]));
        v202.i16[0] = vaddvq_s16(v202);
        v203 = v202.u32[0];
        v204 = vaddq_f32(v169, v170);
        v204.i64[0] = vpaddq_f32(v204, v204).u64[0];
        v205 = vaddq_f32(v167, v168);
        v205.i64[0] = vpaddq_f32(v205, v205).u64[0];
        v206 = vaddq_f32(v165, v166);
        v206.i64[0] = vpaddq_f32(v206, v206).u64[0];
        v207 = vaddq_f32(v162, v163);
        v207.i64[0] = vpaddq_f32(v207, v207).u64[0];
        *v206.f32 = vzip1_s32(vpadd_f32(*v207.f32, *v207.f32), vpadd_f32(*v206.f32, *v206.f32));
        v206.i64[1] = __PAIR64__(vpadd_f32(*v204.f32, *v204.f32).u32[0], vpadd_f32(*v205.f32, *v205.f32).u32[0]);
        *&STACK[0xD10] = vmulq_n_f32(v206, v195);
        v13 = vdupq_lane_s32(*&STACK[0xCD0], 0);
        v208 = vdupq_lane_s32(*&STACK[0xCD0], 1);
        v209 = vdupq_laneq_s32(*&STACK[0xCD0], 2);
        v210 = vdupq_laneq_s32(*&STACK[0xCD0], 3);
        v211 = 0uLL;
        v212 = 0uLL;
        v213 = 0uLL;
        v214 = 0uLL;
        v12 = 0uLL;
        v215 = 0uLL;
        v216 = 0uLL;
        v217 = 0uLL;
        v218 = 0uLL;
        v219 = 0uLL;
        do
        {
          v221 = *(a1 + v193 + 144);
          v220 = *(a1 + v193 + 160);
          v222 = vsubq_f32(v221, v13);
          v223 = vsubq_f32(v220, v13);
          v224 = *(a1 + v193 + 400);
          v225 = *(a1 + v193 + 416);
          v226 = vsubq_f32(v225, v208);
          v227 = vsubq_f32(v224, v208);
          v228 = *(a1 + v193 + 656);
          v229 = *(a1 + v193 + 672);
          v230 = vsubq_f32(v229, v209);
          v232 = *(a1 + v193 + 912);
          v231 = *(a1 + v193 + 928);
          v233 = vsubq_f32(v228, v209);
          v234 = vsubq_f32(v232, v210);
          v235 = vsubq_f32(v231, v210);
          v236 = vcgtq_f32(v173, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v227, v227), v222, v222), v233, v233), v234, v234));
          v237 = vcgtq_f32(v173, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v226, v226), v223, v223), v230, v230), v235, v235));
          v238 = (&STACK[0x1250] + v193);
          *v238 = v236;
          v238[1] = v237;
          v219 = vsubq_s32(v219, v237);
          v218 = vsubq_s32(v218, v236);
          v212 = vaddq_f32(v212, vandq_s8(v220, v237));
          v211 = vaddq_f32(v211, vandq_s8(v221, v236));
          v214 = vaddq_f32(v214, vandq_s8(v225, v237));
          v213 = vaddq_f32(v213, vandq_s8(v224, v236));
          v215 = vaddq_f32(v215, vandq_s8(v229, v237));
          v12 = vaddq_f32(v12, vandq_s8(v228, v236));
          v217 = vaddq_f32(v217, vandq_s8(v231, v237));
          v216 = vaddq_f32(v216, vandq_s8(v232, v236));
          v193 += 32;
        }

        while (v193 != 256);
        v239 = vaddq_s32(v218, v219);
        v239.i64[0] = vpaddq_s32(v239, v239).u64[0];
        v240 = vaddq_f32(v216, v217);
        v240.i64[0] = vpaddq_f32(v240, v240).u64[0];
        v241 = vaddq_f32(v12, v215);
        v241.i64[0] = vpaddq_f32(v241, v241).u64[0];
        v242 = vaddq_f32(v213, v214);
        v242.i64[0] = vpaddq_f32(v242, v242).u64[0];
        v243 = vaddq_f32(v211, v212);
        v243.i64[0] = vpaddq_f32(v243, v243).u64[0];
        *v243.f32 = vzip1_s32(vpadd_f32(*v243.f32, *v243.f32), vpadd_f32(*v242.f32, *v242.f32));
        v243.i64[1] = __PAIR64__(vpadd_f32(*v240.f32, *v240.f32).u32[0], vpadd_f32(*v241.f32, *v241.f32).u32[0]);
        v244 = vmulq_n_f32(v243, ReciprocalTable[vpadd_s32(*v239.i8, *v239.i8).i32[0]]);
        v245 = *&STACK[0xD00];
        v246 = *&STACK[0xD10];
        if ((vminvq_u32(vorrq_s8(vorrq_s8(vceqq_f32(*&STACK[0xD10], v244), vceqq_f32(*&STACK[0xD00], *&STACK[0xD10])), vceqq_f32(*&STACK[0xD00], v244))) & 0x80000000) == 0)
        {
          v247 = *&STACK[0x1260];
          v248 = *&STACK[0x1250];
          v249 = *&STACK[0x1280];
          v250 = *&STACK[0x1270];
          v251 = *&STACK[0x12A0];
          v252 = *&STACK[0x1290];
          v253 = *&STACK[0x12C0];
          v254 = *&STACK[0x12B0];
          v255 = *&STACK[0x12E0];
          v12 = *&STACK[0x12D0];
          v13 = *&STACK[0x1300];
          v256 = *&STACK[0x12F0];
          v257 = *&STACK[0x1320];
          v258 = *&STACK[0x1310];
          v259 = *&STACK[0x1340];
          v260 = *&STACK[0x1330];
          if (((vminvq_u32(vceqq_f32(v245, *&STACK[0xC80])) & 0x80000000) == 0 || (vminvq_u32(vorrq_s8(vandq_s8(vceqq_f32(v244, v1340), vceqq_f32(v246, v1337)), vandq_s8(vceqq_f32(v246, v1340), vceqq_f32(v244, v1337)))) & 0x80000000) == 0) && ((vminvq_u32(vceqq_f32(v245, v1344)) & 0x80000000) == 0 || (vminvq_u32(vorrq_s8(vandq_s8(vceqq_f32(v244, v1328), vceqq_f32(v246, v1324)), vandq_s8(vceqq_f32(v246, v1328), vceqq_f32(v244, v1324)))) & 0x80000000) == 0))
          {
            v261 = vsubq_f32(v246, v245);
            v262 = vmulq_f32(v261, v261);
            *v262.i32 = vaddv_f32(vadd_f32(*v262.i8, *&vextq_s8(v262, v262, 8uLL)));
            _NF = *v262.i32 < 0.000015259;
            v264 = vrecpes_f32(*v262.i32);
            if (_NF)
            {
              v265 = 0.0;
            }

            else
            {
              v265 = v264;
            }

            v266 = *(a1 + 32);
            *&STACK[0xCD0] = v244;
            if (v266)
            {
              __asm { FMOV            V1.4S, #3.0 }

              _Q8 = vmulq_f32(*v266, _Q1);
            }

            else
            {
              __asm { FMOV            V8.4S, #1.0 }
            }

            v272 = 0;
            v273 = v199 | (v197 << 48) | v201 | v203;
            v274 = vorrq_s8(vandq_s8(vuzp1q_s16(v248, v247), *&STACK[0xCE0]), vandq_s8(vuzp1q_s16(v250, v249), *&STACK[0xCF0]));
            v274.i16[0] = vaddvq_s16(v274);
            v275 = v274.u32[0] << 48;
            v276 = vorrq_s8(vandq_s8(vuzp1q_s16(v252, v251), *&STACK[0xCE0]), vandq_s8(vuzp1q_s16(v254, v253), *&STACK[0xCF0]));
            v276.i16[0] = vaddvq_s16(v276);
            v277 = v275 | (v276.u32[0] << 32);
            v278 = vorrq_s8(vandq_s8(vuzp1q_s16(v12, v255), *&STACK[0xCE0]), vandq_s8(vuzp1q_s16(v256, v13), *&STACK[0xCF0]));
            v278.i16[0] = vaddvq_s16(v278);
            v279 = v277 | (v278.i32[0] << 16);
            v280 = vorrq_s8(vandq_s8(vuzp1q_s16(v258, v257), *&STACK[0xCE0]), vandq_s8(vuzp1q_s16(v260, v259), *&STACK[0xCF0]));
            v280.i16[0] = vaddvq_s16(v280);
            v281 = v279 | v280.u32[0];
            v282 = vdupq_lane_s32(*v261.f32, 0);
            v283 = vdupq_lane_s32(*v261.f32, 1);
            v284 = vdupq_laneq_s32(v261, 2);
            v285 = vdupq_laneq_s32(v261, 3);
            v286 = vdupq_lane_s32(*_Q8.i8, 0);
            v287 = vdupq_laneq_s32(_Q8, 2);
            v288 = vdupq_laneq_s32(_Q8, 3);
            v289 = 0uLL;
            v291 = *&STACK[0xCA0];
            v290 = *&STACK[0xCB0];
            v292 = *&STACK[0xC90];
            do
            {
              v293 = *(a1 + v272 + 144);
              v294 = *(a1 + v272 + 160);
              v296 = *(a1 + v272 + 400);
              v295 = *(a1 + v272 + 416);
              v298 = *(a1 + v272 + 656);
              v297 = *(a1 + v272 + 672);
              v299 = *(a1 + v272 + 912);
              v300 = *(a1 + v272 + 928);
              __asm { FMOV            V29.4S, #1.0 }

              v302 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(v296, v291), *v261.f32, 1), v282, vsubq_f32(v293, v290)), v284, vsubq_f32(v298, v292)), v285, vsubq_f32(v299, v102)), v265), _Q29), v289);
              v303 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(v295, v291), *v261.f32, 1), v282, vsubq_f32(v294, v290)), v284, vsubq_f32(v297, v292)), v285, vsubq_f32(v300, v102)), v265), _Q29), v289);
              v304 = vmlaq_f32(v290, v303, v282);
              v305 = vmlaq_f32(v291, v303, v283);
              v306 = vmlaq_f32(v292, v302, v284);
              v307 = vmlaq_f32(v292, v303, v284);
              v308 = vmlaq_f32(v102, v303, v285);
              v309 = vmlaq_f32(v102, v302, v285);
              v310 = vsubq_f32(vmlaq_f32(v290, v302, v282), v293);
              v311 = vsubq_f32(v304, v294);
              v312 = vsubq_f32(v305, v295);
              v313 = vsubq_f32(vmlaq_f32(v291, v302, v283), v296);
              v314 = vsubq_f32(v307, v297);
              v289 = 0uLL;
              v315 = vsubq_f32(v306, v298);
              v316 = vsubq_f32(v309, v299);
              v317 = vsubq_f32(v308, v300);
              v318 = (&STACK[0x1250] + v272);
              *v318 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vmulq_f32(v313, v313), *_Q8.i8, 1), v286, vmulq_f32(v310, v310)), v287, vmulq_f32(v315, v315)), v288, vmulq_f32(v316, v316));
              v318[1] = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vmulq_f32(v312, v312), *_Q8.i8, 1), v286, vmulq_f32(v311, v311)), v287, vmulq_f32(v314, v314)), v288, vmulq_f32(v317, v317));
              v272 += 32;
            }

            while (v272 != 256);
            v319 = vsubq_f32(*&STACK[0xCD0], *&STACK[0xD00]);
            v320 = vmulq_f32(v319, v319);
            *v320.i32 = vaddv_f32(vadd_f32(*v320.i8, *&vextq_s8(v320, v320, 8uLL)));
            _NF = *v320.i32 < 0.000015259;
            v321 = vrecpes_f32(*v320.i32);
            if (_NF)
            {
              v322 = 0.0;
            }

            else
            {
              v322 = v321;
            }

            if (v266)
            {
              __asm { FMOV            V1.4S, #3.0 }

              _Q29 = vmulq_f32(*v266, _Q1);
            }

            v324 = 0;
            v325 = vdupq_lane_s32(*v319.f32, 0);
            v326 = vdupq_lane_s32(*v319.f32, 1);
            v327 = vdupq_laneq_s32(v319, 2);
            v13 = vdupq_laneq_s32(v319, 3);
            v328 = vdupq_lane_s32(*_Q29.f32, 0);
            v329 = vdupq_laneq_s32(_Q29, 2);
            v330 = vdupq_laneq_s32(_Q29, 3);
            v332 = *&STACK[0xCA0];
            v331 = *&STACK[0xCB0];
            v333 = *&STACK[0xC90];
            do
            {
              v334 = *(a1 + v324 + 144);
              v335 = *(a1 + v324 + 160);
              v337 = *(a1 + v324 + 400);
              v336 = *(a1 + v324 + 416);
              v339 = *(a1 + v324 + 656);
              v338 = *(a1 + v324 + 672);
              v340 = *(a1 + v324 + 912);
              v341 = *(a1 + v324 + 928);
              __asm { FMOV            V21.4S, #1.0 }

              v343 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(v337, v332), *v319.f32, 1), v325, vsubq_f32(v334, v331)), v327, vsubq_f32(v339, v333)), v13, vsubq_f32(v340, v102)), v322), _Q21), v289);
              v344 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(v336, v332), *v319.f32, 1), v325, vsubq_f32(v335, v331)), v327, vsubq_f32(v338, v333)), v13, vsubq_f32(v341, v102)), v322), _Q21), v289);
              v345 = vmlaq_f32(v333, v344, v327);
              v346 = vmlaq_f32(v102, v344, v13);
              v347 = vmlaq_f32(v102, v343, v13);
              v348 = vsubq_f32(vmlaq_f32(v331, v343, v325), v334);
              v349 = vsubq_f32(vmlaq_f32(v331, v344, v325), v335);
              v350 = vsubq_f32(vmlaq_f32(v332, v344, v326), v336);
              v351 = vsubq_f32(vmlaq_f32(v332, v343, v326), v337);
              v352 = vsubq_f32(v345, v338);
              v353 = vsubq_f32(vmlaq_f32(v333, v343, v327), v339);
              v354 = vsubq_f32(v347, v340);
              v355 = vsubq_f32(v346, v341);
              v289 = 0uLL;
              v356 = (&STACK[0x10C0] + v324);
              *v356 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vmulq_f32(v351, v351), *_Q29.f32, 1), v328, vmulq_f32(v348, v348)), v329, vmulq_f32(v353, v353)), v330, vmulq_f32(v354, v354));
              v356[1] = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vmulq_f32(v350, v350), *_Q29.f32, 1), v328, vmulq_f32(v349, v349)), v329, vmulq_f32(v352, v352)), v330, vmulq_f32(v355, v355));
              v324 += 32;
            }

            while (v324 != 256);
            v357 = 0;
            v358 = 0uLL;
            v359 = 0uLL;
            do
            {
              v360 = *(&STACK[0x1250] + v357);
              v361 = *(&STACK[0x1250] + v357 + 16);
              v362 = *(&STACK[0x10C0] + v357);
              v363 = *(&STACK[0x10C0] + v357 + 16);
              v364 = vabdq_f32(v360, v362);
              v12 = vminnmq_f32(v361, v363);
              v359 = vaddq_f32(v359, v12);
              v358 = vaddq_f32(v358, vminnmq_f32(v360, v362));
              v365 = (&STACK[0xFC0] + v357);
              *v365 = vcgtq_f32(v360, v362);
              v365[1] = vcgtq_f32(v361, v363);
              v366 = vdupq_n_s32(0x3A810183u);
              v367 = (&STACK[0xE60] + v357);
              *v367 = vcgeq_f32(v366, v364);
              v367[1] = vcgeq_f32(v366, vabdq_f32(v361, v363));
              v357 += 32;
            }

            while (v357 != 256);
            v368 = vaddq_f32(v358, v359);
            v368.i64[0] = vpaddq_f32(v368, v368).u64[0];
            *v339.f32 = vpadd_f32(*v368.f32, *v368.f32);
            if (v339.f32[0] < v1333)
            {
              ++v14;
              v369 = vorrq_s8(vandq_s8(vuzp1q_s16(*&STACK[0xFC0], *&STACK[0xFD0]), *&STACK[0xCE0]), vandq_s8(vuzp1q_s16(*&STACK[0xFE0], *&STACK[0xFF0]), *&STACK[0xCF0]));
              v369.i16[0] = vaddvq_s16(v369);
              v370 = v369.u32[0] << 48;
              v371 = vorrq_s8(vandq_s8(vuzp1q_s16(*&STACK[0x1000], *&STACK[0x1010]), *&STACK[0xCE0]), vandq_s8(vuzp1q_s16(*&STACK[0x1020], *&STACK[0x1030]), *&STACK[0xCF0]));
              v371.i16[0] = vaddvq_s16(v371);
              v372 = v370 | (v371.u32[0] << 32);
              v373 = vorrq_s8(vandq_s8(vuzp1q_s16(*&STACK[0x1040], *&STACK[0x1050]), *&STACK[0xCE0]), vandq_s8(vuzp1q_s16(*&STACK[0x1060], *&STACK[0x1070]), *&STACK[0xCF0]));
              v373.i16[0] = vaddvq_s16(v373);
              v374 = v372 | (v373.i32[0] << 16);
              v375 = vorrq_s8(vandq_s8(vuzp1q_s16(*&STACK[0x1080], *&STACK[0x1090]), *&STACK[0xCE0]), vandq_s8(vuzp1q_s16(*&STACK[0x10A0], *&STACK[0x10B0]), *&STACK[0xCF0]));
              v375.i16[0] = vaddvq_s16(v375);
              v376 = v374 | v375.u32[0];
              v12 = *&STACK[0xEE0];
              v13 = *&STACK[0xF10];
              v377 = vorrq_s8(vandq_s8(vuzp1q_s16(*&STACK[0xE60], *&STACK[0xE70]), *&STACK[0xCE0]), vandq_s8(vuzp1q_s16(*&STACK[0xE80], *&STACK[0xE90]), *&STACK[0xCF0]));
              v377.i16[0] = vaddvq_s16(v377);
              v378 = v377.u32[0] << 48;
              v379 = vorrq_s8(vandq_s8(vuzp1q_s16(*&STACK[0xEA0], *&STACK[0xEB0]), *&STACK[0xCE0]), vandq_s8(vuzp1q_s16(*&STACK[0xEC0], *&STACK[0xED0]), *&STACK[0xCF0]));
              v379.i16[0] = vaddvq_s16(v379);
              v380 = v378 | (v379.u32[0] << 32);
              v381 = vorrq_s8(vandq_s8(vuzp1q_s16(*&STACK[0xEE0], *&STACK[0xEF0]), *&STACK[0xCE0]), vandq_s8(vuzp1q_s16(*&STACK[0xF00], *&STACK[0xF10]), *&STACK[0xCF0]));
              v381.i16[0] = vaddvq_s16(v381);
              v382 = v380 | (v381.i32[0] << 16);
              v383 = vorrq_s8(vandq_s8(vuzp1q_s16(*&STACK[0xF20], *&STACK[0xF30]), *&STACK[0xCE0]), vandq_s8(vuzp1q_s16(*&STACK[0xF40], *&STACK[0xF50]), *&STACK[0xCF0]));
              v383.i16[0] = vaddvq_s16(v383);
              v384 = v382 | v383.u32[0];
              v385 = vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v339, v1330)), 0);
              v1328 = vbslq_s8(v385, v1340, *&STACK[0xCD0]);
              v1324 = vbslq_s8(v385, v1337, *&STACK[0xD10]);
              v1340 = vbslq_s8(v385, *&STACK[0xCD0], v1340);
              v1344 = vbslq_s8(v385, *&STACK[0xC80], *&STACK[0xD00]);
              v1337 = vbslq_s8(v385, *&STACK[0xD10], v1337);
              *&STACK[0xC80] = vbslq_s8(v385, *&STACK[0xD00], *&STACK[0xC80]);
              v386 = __clz(v273 | v98);
              v387 = __clz(v281 | v98);
              if (v339.f32[0] >= v1330.f32[0])
              {
                v388 = v387;
              }

              else
              {
                v388 = v17;
              }

              v1322 = v388;
              if (v339.f32[0] >= v1330.f32[0])
              {
                v389 = v386;
              }

              else
              {
                v389 = v16;
              }

              v1320 = v389;
              if (v339.f32[0] >= v1330.f32[0])
              {
                v390 = v384;
              }

              else
              {
                v390 = v7;
              }

              v1315 = v390;
              if (v339.f32[0] >= v1330.f32[0])
              {
                v391 = v376;
              }

              else
              {
                v391 = v8;
              }

              v1318 = v391;
              if (v339.f32[0] >= v1330.f32[0])
              {
                v392 = v339.f32[0];
              }

              else
              {
                v17 = v387;
                v16 = v386;
                v7 = v384;
                v8 = v376;
                v392 = v1330.f32[0];
              }

              v1333 = v392;
              if (v339.f32[0] >= v1330.f32[0])
              {
                *v385.i32 = v1330.f32[0];
              }

              else
              {
                *v385.i32 = v339.f32[0];
              }

              v1330 = v385;
            }
          }
        }

        v23 = *&STACK[0xCC0];
      }
    }

    goto LABEL_77;
  }

  if (v32 == v35)
  {
    v36 = v32;
    v32 = v33;
    goto LABEL_18;
  }

  if (v33 == v34)
  {
    v36 = v33;
    goto LABEL_12;
  }

  v36 = v33;
  if (v33 == v35)
  {
    goto LABEL_18;
  }

LABEL_273:
  v1281 = STACK[0x1358];
  v1282 = *MEMORY[0x29EDCA608];
}

uint64_t PrintColorVector(unsigned int a1, int a2, uint8x8_t a3)
{
  printf("PrintColorVector(v, maxVal: %u, cem: %u)\n", a1, a2);
  v6 = __clz(__rbit32(a1 + 1));
  v7 = ((a1 + 1) >> v6);
  v8 = vmovl_u8(a3);
  if (v6 && v7 != 1)
  {
    v9 = vsubq_s16(vdupq_n_s16(a1), v8);
    if (v7 == 3)
    {
      v10 = 21846;
    }

    else
    {
      v10 = 13108;
    }

    v11 = vdupq_n_s16(v10);
    v12 = vminq_u16(v8, v9);
    v13 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v12.i8, *v11.i8), 0x10uLL), vmull_high_u16(v12, v11), 0x10uLL);
    v11.i64[0] = 0x1000100010001;
    v11.i64[1] = 0x1000100010001;
    v8 = vorrq_s8(vaddq_s16(vshlq_u16(vmlsq_s16(v12, v13, vmovl_u8(vdup_n_s8((a1 + 1) >> v6))), vdupq_n_s16(v6)), vaddq_s16(v13, v13)), vbicq_s8(v11, vceqq_s16(v12, v8)));
  }

  v14 = v7 - 6;
  v15 = v7 == 1;
  v16 = -8;
  if (!v15)
  {
    v16 = v14;
  }

  v17 = GetUnquantizationData_UnquantizationInfo[3 * v6 + v16];
  v18 = vshlq_u16(v8, vnegq_s16(vdupq_n_s16(WORD1(v17) & 7)));
  v19 = vandq_s8(vdupq_n_s16(BYTE1(v17)), v8);
  v20 = vshlq_u16(vmulq_s16(vshrq_n_u16(v19, 1uLL), vdupq_n_s16((v17 >> 28) & 0x1FF)), vnegq_s16(vdupq_n_s16((v17 >> 37) & 7)));
  v21 = vandq_s8(vdupq_n_s16((v17 >> 19) & 0x1FF), vcltzq_s16(vshlq_n_s16(v19, 0xFuLL)));
  v22 = veorq_s8(vmlaq_s16(v20, v18, vmovl_u8(vdup_n_s8(v17 >> 40))), v21);
  v20.i64[0] = 0x80008000800080;
  v20.i64[1] = 0x80008000800080;
  v23 = vorrq_s8(vshrq_n_u16(v22, 2uLL), vandq_s8(v21, v20));
  if (a2 <= 11)
  {
    if (a2 != 8)
    {
      if (a2 == 9)
      {
        v23.i32[3] = 8388863;
LABEL_16:
        v25 = vmovn_s16(v23);
        v26 = *&vsra_n_u8(vrev16_s8(vand_s8(v25, 0x8000800080008000)), v25, 1uLL) & 0x3FFF3FFF3FFF3FFFLL;
        v27.i64[0] = 0x40000000400000;
        v27.i64[1] = 0x40000000400000;
        v29 = vsubq_s16(vmovl_u8(v26), vandq_s8(v23, v27));
        v31 = vqtbl1q_s8(v29, xmmword_298495980);
        printf("after bit_transfer_signed: {0x%2.2x, 0x%2.2x, 0x%2.2x, 0x%2.2x} + {%d, %d, %d, %d}\n", v29.u8[0], v29.u8[4], v29.u8[8], v29.u8[12], v29.i8[2], v29.i8[6], v29.i8[10], v29.i8[14]);
        v28 = vadd_s16(*&vextq_s8(v31, v31, 8uLL), *v31.i8);
        printf("{0x%2.2x, 0x%2.2x, 0x%2.2x, 0x%2.2x} -> {0x%2.2x, 0x%2.2x, 0x%2.2x, 0x%2.2x}\n", v29.u8[0], v29.u8[4], v29.u8[8], v29.u8[12], v28.i16[0], v28.i16[1], v28.i16[2], v28.i16[3]);
        return printf("{%f, %f, %f, %f} -> {%f, %f, %f, %f} ± %f\n", vmulq_f32(vaddq_f32(vorrq_s8(vmovl_u16(*v31.i8), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000)), vdupq_n_s32(0x3B808081u)).f32[0]);
      }

      return printf("cem %u not handled\n");
    }

LABEL_15:
    v30 = vqtbl1q_s8(v23, xmmword_298495980).u64[0];
    printf("{0x%2.2x, 0x%2.2x, 0x%2.2x, 0x%2.2x} -> {0x%2.2x, 0x%2.2x, 0x%2.2x, 0x%2.2x}\n", v23.u16[0], v23.u16[2], v23.u16[4], v23.u16[6], v23.u16[1], v23.u16[3], v23.u16[5], v23.u16[7]);
    return printf("{%f, %f, %f, %f} -> {%f, %f, %f, %f} ± %f\n", vmulq_f32(vaddq_f32(vorrq_s8(vmovl_u16(v30), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000)), vdupq_n_s32(0x3B808081u)).f32[0]);
  }

  if (a2 == 13)
  {
    goto LABEL_16;
  }

  if (a2 == 12)
  {
    goto LABEL_15;
  }

  return printf("cem %u not handled\n");
}

uint64_t vector_index_of_maximum(float32x4_t *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[1];
  v4 = vmaxnmq_f32(*a1, v2);
  v5 = vmaxnmq_f32(v3, v1);
  v6 = vbslq_s8(vcgtq_f32(v1, v3), xmmword_298495630, xmmword_298495620);
  v7 = vmaxnmq_f32(v4, v5);
  v8 = vbslq_s8(vcgtq_f32(v5, v4), v6, vbslq_s8(vcgtq_f32(v2, *a1), xmmword_298495610, xmmword_298495600));
  v2.i64[0] = vextq_s8(v7, v7, 8uLL).u64[0];
  v9 = vmaxnm_f32(*v7.i8, *v2.f32);
  v10 = vbsl_s8(vcgt_f32(*v2.f32, *v7.i8), *&vextq_s8(v8, v8, 8uLL), *v8.i8);
  if (vmvn_s8(vcge_f32(v9, vdup_lane_s32(v9, 1))).u8[0])
  {
    return v10.u32[1];
  }

  else
  {
    return v10.u32[0];
  }
}

float32_t CheckForReducedColorFidelity(unint64_t *a1, int a2, int a3, float32x4_t *a4, _BYTE *a5, _DWORD *a6, float *a7, float32x4_t a8)
{
  v8 = *a1;
  if ((*a1 & 0x1F000000000000) != 0)
  {
    v28 = a8;
    v26 = *a4;
    v27 = a4[1];
    v13 = a3 == 1 ? WeightInfoForSingleLineSingleWeight(0, BYTE5(v8), a2) : WeightInfoForSingleLineDualWeight(0, BYTE5(v8), a2);
    v15 = *(a1 + 4);
    if (BYTE4(v13) != v15)
    {
      v14.f32[0] = ReciprocalTable[v15];
      a8 = vmulq_n_f32(v26, BYTE4(v13));
      v16 = vrndxq_f32(a8);
      a8.f32[0] = ReciprocalTable[BYTE4(v13)];
      v17 = vmlsq_lane_f32(v27, vrndxq_f32(vmulq_n_f32(v27, v15)), v14, 0);
      v18 = vmlsq_lane_f32(v26, vrndxq_f32(vmulq_n_f32(v26, v15)), v14, 0);
      v19 = vmlsq_lane_f32(v27, vrndxq_f32(vmulq_n_f32(v27, BYTE4(v13))), *a8.f32, 0);
      v20 = vmlsq_lane_f32(v26, v16, *a8.f32, 0);
      v21 = vmlaq_f32(vmulq_f32(v28, vmulq_f32(v17, v17)), vmulq_f32(v18, v18), v28);
      v18.i64[0] = vpaddq_f32(v21, v21).u64[0];
      *v21.f32 = vpadd_f32(*v18.f32, *v18.f32);
      v22 = vmlaq_f32(vmulq_f32(v28, vmulq_f32(v19, v19)), vmulq_f32(v20, v20), v28);
      v18.i64[0] = vpaddq_f32(v22, v22).u64[0];
      v23 = vpadd_f32(*v18.f32, *v18.f32);
      if ((vcgt_f32(v23, *v21.f32).u8[0] & 1) == 0 || v23.f32[0] <= 0.000015259)
      {
        *a1 = v13;
        *a5 = BYTE4(v13);
        *a6 = a8.i32[0];
        v24 = *a5;
        if (v24 <= 1)
        {
          v24 = 1;
        }

        a8.f32[0] = v24;
        *a7 = v24;
      }
    }
  }

  return a8.f32[0];
}

double pack_quints_vec(unsigned int a1, uint8x16_t a2)
{
  v2 = vdupq_n_s8(a1);
  v3 = vshlq_u8(a2, vnegq_s8(v2));
  v4 = vqtbl1q_s8(v3, xmmword_298495BC0);
  v5 = vqtbl1q_s8(v3, xmmword_298495BD0);
  v6 = vpaddq_s16(vmull_u8(*v4.i8, 0x2001200120012001), vmull_u8(*&vextq_s8(v4, v4, 8uLL), 0x2001200120012001));
  v4.i64[0] = 0x7000700070007;
  v4.i64[1] = 0x7000700070007;
  v7 = vandq_s8(v6, v4);
  v8 = vandq_s8(vshrq_n_u16(v6, 5uLL), v4);
  v9.i64[0] = 0x4000400040004;
  v9.i64[1] = 0x4000400040004;
  v10 = vceqq_s16(v5, v9);
  v11 = vceqq_s16(v8, v9);
  v12 = vsubq_s8(vaddq_s16(v6, vshlq_n_s16(v5, 3uLL)), vandq_s8(vqtbl1q_s8(xmmword_298495BE0, v7), v11));
  if ((vmaxvq_u16(v10) & 0x8000) != 0)
  {
    v13.i64[0] = 0x18001800180018;
    v13.i64[1] = 0x18001800180018;
    v12 = vsubq_s8(v12, vaddq_s8(vaddq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495BF0, v7), v10), vandq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495C00, v7), v10), v11)), vandq_s8(vmulq_s16(v8, v13), vandq_s8(vceqq_s16(v7, v9), v10))));
  }

  v14 = vorrq_s8(vshlq_u8(vshlq_u8(vandq_s8(vqtbl1q_s8(v12, xmmword_298495E10), xmmword_298495E20), xmmword_298495E30), v2), vandq_s8(vdupq_n_s8((1 << a1) - 1), a2));
  v15 = vaddq_s16(vshlq_u16(vshlq_u16((*&v14 & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00)), vnegq_s16(vdupq_n_s16(6 - a1))), xmmword_298495E40), (*&v14 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
  v16.i64[0] = 0xFFFF0000FFFFLL;
  v16.i64[1] = 0xFFFF0000FFFFLL;
  v17 = vandq_s8(v15, v16);
  v18.i64[0] = 0xFFFF0000FFFF0000;
  v18.i64[1] = 0xFFFF0000FFFF0000;
  v19 = vshlq_u32(vandq_s8(v15, v18), vnegq_s32(vdupq_n_s32(12 - 2 * a1)));
  v20 = vaddq_s32(v19, v17);
  v19.i32[1] = 0;
  v21 = vaddq_s32(v20, v19);
  v20.i64[0] = 0xFFFFFFFFLL;
  v20.i64[1] = 0xFFFFFFFFLL;
  v22 = vandq_s8(v21, v20);
  v18.i64[0] = 0xFFFFFFFF00000000;
  v18.i64[1] = 0xFFFFFFFF00000000;
  LODWORD(v23) = 0;
  HIDWORD(v23) = v21.i32[1];
  v24 = vaddq_s64(vandq_s8(v21, v18), v23);
  *v18.i8 = vdup_n_s32(23 - 4 * a1);
  v25.i64[0] = v18.u32[0];
  v25.i64[1] = v18.u32[1];
  v26 = vaddq_s64(vshlq_u64(v24, vnegq_s64(v25)), v22);
  *&result = (v26.i64[1] << (8 * a1 + 19)) | v26.i64[0];
  return result;
}

double PackWeights(unsigned __int8 *a1, int8x16_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = a1[1];
  v5 = a1[2];
  if (v4 == 1)
  {
    v6 = vdupq_n_s16(v5 << 8);
    v7 = vpaddq_s8(vshlq_u8(v3, v6), vshlq_u8(v2, v6));
    v8 = vdupq_n_s16(8 - 2 * v5);
    v9 = vshlq_u8(v7, v8);
    v10 = vmovl_s8(vmul_s16(*v8.i8, 0xFE00FE00FE00FELL));
    v11 = vshlq_u16(v9, v10);
    v12 = vmull_s16(*v10.i8, 0x2000200020002);
    v13 = vshlq_u32(v11, v12);
    v14 = vmull_s32(*v12.i8, 0x200000002);
    v15 = vqtbl1q_s8(vshlq_u64(v13, v14), vaddq_s8(vdupq_n_s8(v14.i8[0] >> 2), xmmword_298451AC0));
  }

  else
  {
    if (a1[2])
    {
      v16 = vmovl_u8(*v3.i8);
      v17 = vmovl_high_u8(v3);
      v18 = vmovl_u8(*v2.i8);
      v19 = vmovl_high_u8(v2);
      v20 = vdupq_n_s16(*a1);
      v21 = vsubw_u8(v20, *v3.i8);
      v22 = vsubw_high_u8(v20, v3);
      v23 = vsubw_u8(v20, *v2.i8);
      v24 = vsubw_high_u8(v20, v2);
      v25 = vminq_u16(v24, v19);
      v26 = vminq_u16(v23, v18);
      v27 = vminq_u16(v22, v17);
      v28 = vminq_u16(v21, v16);
      if (v4 == 3)
      {
        v29 = 21846;
      }

      else
      {
        v29 = 13108;
      }

      v30 = vdupq_n_s16(v29);
      v31 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v28.i8, *v30.i8), 0x10uLL), vmull_high_u16(v28, v30), 0x10uLL);
      v32 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v27.i8, *v30.i8), 0x10uLL), vmull_high_u16(v27, v30), 0x10uLL);
      v33 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v26.i8, *v30.i8), 0x10uLL), vmull_high_u16(v26, v30), 0x10uLL);
      v34 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v25.i8, *v30.i8), 0x10uLL), vmull_high_u16(v25, v30), 0x10uLL);
      v35 = vmovl_u8(vdup_n_s8(v4));
      v36 = vmlsq_s16(v26, v33, v35);
      v37 = vmlsq_s16(v25, v34, v35);
      v38 = vmlsq_s16(v28, v31, v35);
      v39 = vmlsq_s16(v27, v32, v35);
      v40 = vdupq_n_s16(v5);
      v41 = vcgtq_u16(v18, v23);
      v42.i64[0] = 0x1000100010001;
      v42.i64[1] = 0x1000100010001;
      v2 = vuzp1q_s8(vorrq_s8(vaddq_s16(vshlq_u16(v36, v40), vaddq_s16(v33, v33)), vandq_s8(v41, v42)), vorrq_s8(vaddq_s16(vshlq_u16(v37, v40), vaddq_s16(v34, v34)), vandq_s8(vcgtq_u16(v19, v24), v42)));
      v3 = vuzp1q_s8(vorrq_s8(vaddq_s16(vshlq_u16(v38, v40), vaddq_s16(v31, v31)), vandq_s8(vcgtq_u16(v16, v21), v42)), vorrq_s8(vaddq_s16(vshlq_u16(v39, v40), vaddq_s16(v32, v32)), vandq_s8(vcgtq_u16(v17, v22), v42)));
    }

    if (v4 == 3)
    {
      v57 = vdupq_n_s8(v5);
      v58 = vnegq_s8(v57);
      v59 = vshlq_u8(v2, v58);
      v60 = vshlq_u8(v3, v58);
      v61 = vqtbl1q_s8(v60, xmmword_298495C40);
      v62 = vqtbl1q_s8(v59, xmmword_298495C90);
      v63 = vpaddq_s16(vpaddq_s16(vmull_u8(*v61.i8, 0x8010040180100401), vmull_u8(*&vextq_s8(v61, v61, 8uLL), 0x8010040180100401)), vpaddq_s16(vmull_u8(*v62.i8, 0x8010040180100401), vmull_u8(*&vextq_s8(v62, v62, 8uLL), 0x8010040180100401)));
      v64 = vuzp1q_s16(vqtbl1q_s8(v60, xmmword_298495C50), vqtbl1q_s8(v59, xmmword_298495CA0));
      v65 = vaddq_s16(v63, vqtbl1q_s8(v63, xmmword_298495CB0));
      v66 = v65;
      v66.i16[3] = 0;
      v59.i64[0] = 0x20002000200020;
      v59.i64[1] = 0x20002000200020;
      v67 = vceqq_s16(vandq_s8(v65, xmmword_298495CC0), v59);
      v60.i64[0] = 0xFF00FF00FF00FFLL;
      v60.i64[1] = 0xFF00FF00FF00FFLL;
      v68 = vcgtq_u16(v66, v60);
      v69 = vshlq_n_s16(v64, 5uLL);
      v70 = vaddq_s16(v66, v69);
      if ((vmaxvq_u16(vorrq_s8(v67, v68)) & 0x8000) != 0)
      {
        v71.i64[0] = 0x2000200020002;
        v71.i64[1] = 0x2000200020002;
        v72 = vandq_s8(v68, vceqq_s16(v64, v71));
        v73 = vandq_s8(v65, xmmword_298495CD0);
        v74.i64[0] = 0x303030303030303;
        v74.i64[1] = 0x303030303030303;
        v75.i64[0] = 0x6060606060606060;
        v75.i64[1] = 0x6060606060606060;
        v76 = vmlaq_s8(v75, v69, v74);
        v77.i64[0] = 0xF000F000F000FLL;
        v77.i64[1] = 0xF000F000F000FLL;
        v70 = vaddq_s8(vsubq_s8(vaddq_s8(vandq_s8(v76, v68), v70), vaddq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495C60, v73), v67), vandq_s8(vqtbl1q_s8(xmmword_298495C70, vandq_s8(vshrq_n_u16(v66, 2uLL), v77)), v72))), vandq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495C80, v73), v67), v72));
      }

      v78 = vdupq_n_s8((1 << v5) - 1);
      v79 = vorrq_s8(vshlq_u8(vshlq_u8(vandq_s8(vqtbl1q_s8(v70, xmmword_298495CE0), xmmword_298495D10), xmmword_298495D20), v57), vandq_s8(v78, v2));
      v80 = vorrq_s8(vshlq_u8(vshlq_u8(vandq_s8(vqtbl1q_s8(v70, xmmword_298495CF0), xmmword_298495D00), xmmword_298495D30), v57), vandq_s8(v78, v3));
      v81 = vaddq_s8(vshlq_u8(vmulq_s8(vdupq_n_s8(1 << v5), vuzp2q_s8(v80, v79)), xmmword_298495D40), vuzp1q_s8(v80, v79));
      v82 = *&v81 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
      v83 = vshlq_u16((*&v81 & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00)), vnegq_s16(vdupq_n_s16(5 - 2 * v5)));
      v84 = vaddq_s16(vaddq_s16(v83, v82), vandq_s8(v83, xmmword_298495D50));
      *&v82 = 0xFFFF0000FFFFLL;
      *(&v82 + 1) = 0xFFFF0000FFFFLL;
      v85 = vandq_s8(v84, v82);
      v86.i64[0] = 0xFFFF0000FFFF0000;
      v86.i64[1] = 0xFFFF0000FFFF0000;
      v87 = vshlq_u32(vandq_s8(v84, v86), vnegq_s32(vdupq_n_s32(10 - 4 * v5)));
      v88 = vaddq_s32(vaddq_s32(v87, v85), v87.u64[0]);
      v85.i64[0] = 0xFFFFFFFFLL;
      v85.i64[1] = 0xFFFFFFFFLL;
      v89 = vandq_s8(v88, v85);
      v86.i64[0] = 0xFFFFFFFF00000000;
      v86.i64[1] = 0xFFFFFFFF00000000;
      v90 = vandq_s8(v88, v86);
      *v86.i8 = vdup_n_s32(19 - 8 * v5);
      v91.i64[0] = v86.u32[0];
      v91.i64[1] = v86.u32[1];
      v92 = vaddq_s64(vshlq_u64(v90, vnegq_s64(v91)), v89);
      v93 = 16 * v5;
      v15.i64[0] = (v92.i64[1] << (v93 + 26)) | v92.i64[0];
      v15.i64[1] = v92.i64[1] >> (38 - v93);
    }

    else
    {
      v15 = 0uLL;
      if (v4 == 5)
      {
        v43 = vqtbl1q_s8(v3, xmmword_298495D60);
        v44 = vqtbl1q_s8(v2, xmmword_298495D70);
        v45 = vuzp1q_s8(vpaddq_s16(vmull_u8(*v43.i8, 0x801080108010801), vmull_u8(*&vextq_s8(v43, v43, 8uLL), 0x801080108010801)), vpaddq_s16(vmull_u8(*v44.i8, 0x801080108010801), vmull_u8(*&vextq_s8(v44, v44, 8uLL), 0x801080108010801)));
        v46 = vuzp1q_s8(vqtbl1q_s8(v3, xmmword_298495D80), vqtbl1q_s8(v2, xmmword_298495BD0));
        v47 = vaddq_s8(v45, vqtbl1q_s8(v45, xmmword_298495D90));
        v48 = vaddq_s8(vqtbl1q_s8(v46, xmmword_298495D90), v46);
        v46.i64[0] = 0x707070707070707;
        v46.i64[1] = 0x707070707070707;
        v49 = vandq_s8(v47, v46);
        v46.i64[0] = 0xF8F8F8F8F8F8F8F8;
        v46.i64[1] = 0xF8F8F8F8F8F8F8F8;
        v45.i64[0] = 0x2020202020202020;
        v45.i64[1] = 0x2020202020202020;
        v50 = vceqq_s8(vandq_s8(v47, v46), v45);
        v46.i64[0] = 0x404040404040404;
        v46.i64[1] = 0x404040404040404;
        v51 = vceqq_s8(v48, v46);
        v52 = vsubq_s8(vaddq_s8(vshlq_n_s8(v48, 5uLL), v47), vandq_s8(vqtbl1q_s8(xmmword_298495BE0, v49), v51));
        if ((vmaxvq_u8(v50) & 0x80) != 0)
        {
          v53.i64[0] = 0x2424242424242424;
          v53.i64[1] = 0x2424242424242424;
          v54.i64[0] = 0x18001800180018;
          v54.i64[1] = 0x18001800180018;
          v52 = vsubq_s8(v52, vaddq_s8(vaddq_s8(vandq_s8(vmulq_s16(v48, v54), vceqq_s8(v47, v53)), vandq_s8(vqtbl1q_s8(xmmword_298495BF0, v49), v50)), vandq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495C00, v49), v51), v50)));
        }

        v55.i64[0] = 0x1000100010001;
        v55.i64[1] = 0x1000100010001;
        v56 = vshlq_u64(vshlq_u32(vshlq_u16(vshlq_u8(vqtbl1q_s8(v52, xmmword_298495DA0), v55), xmmword_298495DB0), xmmword_298495DC0), xmmword_298495DD0);
        v15 = vextq_s8(v56, v56, 1uLL);
      }
    }
  }

  *&result = vqtbl1q_s8(vrbitq_s8(v15), xmmword_298495DE0).u64[0];
  return result;
}

uint64_t FindQuantizedColors(unsigned int a1, uint64_t a2, unsigned int *a3, float32x4_t *a4, unint64_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8, float32x4_t a9)
{
  if (a1 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = a1;
  }

  a9.f32[0] = v9;
  __asm { FMOV            V7.4S, #1.0 }

  v15 = vminnmq_f32(vmaxnmq_f32(a6, 0), _Q7);
  v16 = vminnmq_f32(vmaxnmq_f32(a7, 0), _Q7);
  v17 = vrndxq_f32(vmulq_n_f32(v15, v9));
  v18 = vrndxq_f32(vmulq_n_f32(v16, v9));
  if ((vminvq_u32(vceqq_f32(v17, v18)) & 0x80000000) != 0)
  {
    return 1;
  }

  v257 = vminnmq_f32(vmaxnmq_f32(a8, 0), _Q7);
  v19 = vrndxq_f32(vmulq_n_f32(v257, a9.f32[0]));
  if ((vminvq_u32(vceqq_f32(v17, v19)) & 0x80000000) != 0)
  {
    return 1;
  }

  v254 = v19;
  v255 = v17;
  v251 = _Q7;
  v256 = v18;
  v252 = ReciprocalTable[a1];
  v253 = v16;
  v265 = v15;
  v266 = v16;
  v25 = *a3;
  v264 = *a3;
  v263 = 0;
  v258 = v15;
  v26 = EncodeBitTransferSigned(&v265, a1, &v264, &v263, 0.0, *v18.i64, *v19.i64, a9);
  if (v26)
  {
    v261 = v258;
    v262 = v257;
    v260 = v25;
    v259 = 0;
    if (v26 == EncodeBitTransferSigned(&v261, a1, &v260, &v259, 0.0, *v257.i64, v27, v28))
    {
      v30 = v264;
      if (v264 == v260)
      {
        v31 = v261;
        v32 = v262;
        v29 = vandq_s8(vceqq_f32(v265, v261), vceqq_f32(v266, v262));
        if ((vminvq_u32(v29) & 0x80000000) == 0)
        {
          result = 0;
          v34 = vsubq_f32(v266, v265);
          *a2 = v265;
          *(a2 + 16) = v34;
          v35 = ShuffleColorEndpointPair_mapTable[v30];
          *v34.i8 = v263;
          *(a2 + 32) = vqtbl1_s8(v34, v35);
          *(a2 + 48) = v31;
          *(a2 + 64) = vsubq_f32(v32, v31);
          *v31.f32 = v259;
          *(a2 + 80) = vqtbl1_s8(v31, v35);
          *a3 = v30;
          return result;
        }
      }
    }
  }

  v36 = v258;
  v37 = vsubq_f32(v256, v255);
  v38 = vsubq_f32(v254, v255);
  v39 = v37.f32[2] + vaddv_f32(*v37.f32);
  if (fabsf(v39) <= 1.0)
  {
    v40 = __clz(__rbit32(a1 + 1));
    v41 = ((a1 + 1) >> v40);
    v42 = *&vuzp1q_s16(vcvtq_s32_f32(v255), vcvtq_s32_f32(v256)) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
    if (v40 && v41 != 1)
    {
      v43 = vsubq_s16(vdupq_n_s16(a1), v42);
      if (v41 == 3)
      {
        v44 = 21846;
      }

      else
      {
        v44 = 13108;
      }

      v45 = vdupq_n_s16(v44);
      v46 = vminq_u16(v42, v43);
      v47 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v46.i8, *v45.i8), 0x10uLL), vmull_high_u16(v46, v45), 0x10uLL);
      v45.i64[0] = 0x1000100010001;
      v45.i64[1] = 0x1000100010001;
      v42 = vorrq_s8(vaddq_s16(vshlq_u16(vmlsq_s16(v46, v47, vmovl_u8(vdup_n_s8((a1 + 1) >> v40))), vdupq_n_s16(v40)), vaddq_s16(v47, v47)), vbicq_s8(v45, vceqq_s16(v46, v42)));
    }

    v48 = v41 - 6;
    _ZF = v41 == 1;
    v49 = -8;
    if (!_ZF)
    {
      v49 = v48;
    }

    v50 = GetUnquantizationData_UnquantizationInfo[3 * v40 + v49];
    v51 = vshlq_u16(v42, vnegq_s16(vdupq_n_s16(WORD1(v50) & 7)));
    v52 = vandq_s8(vdupq_n_s16(BYTE1(v50)), v42);
    v53 = vshlq_u16(vmulq_s16(vshrq_n_u16(v52, 1uLL), vdupq_n_s16((v50 >> 28) & 0x1FF)), vnegq_s16(vdupq_n_s16((v50 >> 37) & 7)));
    v54 = vandq_s8(vdupq_n_s16((v50 >> 19) & 0x1FF), vcltzq_s16(vshlq_n_s16(v52, 0xFuLL)));
    v55 = veorq_s8(vmlaq_s16(v53, v51, vmovl_u8(vdup_n_s8(v50 >> 40))), v54);
    v53.i64[0] = 0x80008000800080;
    v53.i64[1] = 0x80008000800080;
    v56 = vorrq_s8(vshrq_n_u16(v55, 2uLL), vandq_s8(v54, v53));
    v29 = vdupq_n_s32(0x4B400000u);
    v57 = vdupq_n_s32(0xCB400000);
    v58 = vsubq_f32(vaddq_f32(vorrq_s8(vmovl_high_u16(v56), v29), v57), vaddq_f32(vorrq_s8(vmovl_u16(*v56.i8), v29), v57));
    v39 = v58.f32[2] + vaddv_f32(*v58.f32);
  }

  v59 = v38.f32[2] + vaddv_f32(*v38.f32);
  if (fabsf(v59) <= 1.0)
  {
    v60 = __clz(__rbit32(a1 + 1));
    v61 = ((a1 + 1) >> v60);
    v62 = *&vuzp1q_s16(vcvtq_s32_f32(v255), vcvtq_s32_f32(v254)) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
    if (v60 && v61 != 1)
    {
      v63 = vsubq_s16(vdupq_n_s16(a1), v62);
      if (v61 == 3)
      {
        v64 = 21846;
      }

      else
      {
        v64 = 13108;
      }

      v65 = vdupq_n_s16(v64);
      v66 = vminq_u16(v62, v63);
      v67 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v66.i8, *v65.i8), 0x10uLL), vmull_high_u16(v66, v65), 0x10uLL);
      v65.i64[0] = 0x1000100010001;
      v65.i64[1] = 0x1000100010001;
      v62 = vorrq_s8(vaddq_s16(vshlq_u16(vmlsq_s16(v66, v67, vmovl_u8(vdup_n_s8((a1 + 1) >> v60))), vdupq_n_s16(v60)), vaddq_s16(v67, v67)), vbicq_s8(v65, vceqq_s16(v66, v62)));
    }

    v68 = v61 - 6;
    _ZF = v61 == 1;
    v69 = -8;
    if (!_ZF)
    {
      v69 = v68;
    }

    v70 = GetUnquantizationData_UnquantizationInfo[3 * v60 + v69];
    v71 = vshlq_u16(v62, vnegq_s16(vdupq_n_s16(WORD1(v70) & 7)));
    v72 = vandq_s8(vdupq_n_s16(BYTE1(v70)), v62);
    v29 = vdupq_n_s16((v70 >> 19) & 0x1FF);
    v73 = vshlq_u16(vmulq_s16(vshrq_n_u16(v72, 1uLL), vdupq_n_s16((v70 >> 28) & 0x1FF)), vnegq_s16(vdupq_n_s16((v70 >> 37) & 7)));
    v74 = vandq_s8(v29, vcltzq_s16(vshlq_n_s16(v72, 0xFuLL)));
    v75 = veorq_s8(vmlaq_s16(v73, v71, vmovl_u8(vdup_n_s8(v70 >> 40))), v74);
    v73.i64[0] = 0x80008000800080;
    v73.i64[1] = 0x80008000800080;
    v76 = vorrq_s8(vshrq_n_u16(v75, 2uLL), vandq_s8(v74, v73));
    v77 = vdupq_n_s32(0x4B400000u);
    v78 = vdupq_n_s32(0xCB400000);
    v79 = vsubq_f32(vaddq_f32(vorrq_s8(vmovl_high_u16(v76), v77), v78), vaddq_f32(vorrq_s8(vmovl_u16(*v76.i8), v77), v78));
    v59 = v79.f32[2] + vaddv_f32(*v79.f32);
  }

  if ((LODWORD(v59) ^ LODWORD(v39)) < 0)
  {
    return 1;
  }

  *v29.i32 = a1;
  v80 = vdupq_lane_s32(*v29.i8, 0);
  v81 = vrndxq_f32(vmulq_f32(vmulq_n_f32(v258, a1), xmmword_298496500));
  v82 = vrndxq_f32(vmulq_f32(vmulq_n_f32(v253, a1), xmmword_298496500));
  v83 = vsubq_f32(v81, vdupq_laneq_s32(v81, 2).u64[0]);
  v84 = vsubq_f32(v82, vdupq_laneq_s32(v82, 2).u64[0]);
  v85 = vcgezq_f32(v83);
  v86 = vcgeq_f32(v80, v83);
  v87 = vmovn_s16(vandq_s8(vuzp1q_s16(v85, vcgezq_f32(v84)), vuzp1q_s16(v86, vcgeq_f32(v80, v84))));
  v88 = vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(vand_s8(vzip1_s8(v87, *v82.f32), vzip2_s8(v87, *v82.f32))), 0x1FuLL)));
  if (v39 < 0.0)
  {
    if ((v88 & 0x80000000) != 0)
    {
      v111 = vcvtq_s32_f32(v83);
      v112 = vuzp1q_s16(v111, vcvtq_s32_f32(v84));
      v113 = vsubq_f32(v83, v84);
      v114 = v113.f32[2] + vaddv_f32(*v113.f32);
      if (fabsf(v114) > 1.0)
      {
        goto LABEL_63;
      }

      v115 = __clz(__rbit32(a1 + 1));
      v116 = ((a1 + 1) >> v115);
      v117 = *&v112 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
      if (v115 && v116 != 1)
      {
        v118 = vsubq_s16(vdupq_n_s16(a1), v117);
        if (v116 == 3)
        {
          v119 = 21846;
        }

        else
        {
          v119 = 13108;
        }

        v120 = vdupq_n_s16(v119);
        v121 = vminq_u16(v117, v118);
        v122 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v121.i8, *v120.i8), 0x10uLL), vmull_high_u16(v121, v120), 0x10uLL);
        v120.i64[0] = 0x1000100010001;
        v120.i64[1] = 0x1000100010001;
        v117 = vorrq_s8(vaddq_s16(vshlq_u16(vmlsq_s16(v121, v122, vmovl_u8(vdup_n_s8((a1 + 1) >> v115))), vdupq_n_s16(v115)), vaddq_s16(v122, v122)), vbicq_s8(v120, vceqq_s16(v121, v117)));
      }

      v123 = v116 - 6;
      _ZF = v116 == 1;
      v124 = -8;
      if (!_ZF)
      {
        v124 = v123;
      }

      v125 = GetUnquantizationData_UnquantizationInfo[3 * v115 + v124];
      v126 = vshlq_u16(v117, vnegq_s16(vdupq_n_s16(WORD1(v125) & 7)));
      v127 = vandq_s8(vdupq_n_s16(BYTE1(v125)), v117);
      v128 = vshlq_u16(vmulq_s16(vshrq_n_u16(v127, 1uLL), vdupq_n_s16((v125 >> 28) & 0x1FF)), vnegq_s16(vdupq_n_s16((v125 >> 37) & 7)));
      v129 = vandq_s8(vdupq_n_s16((v125 >> 19) & 0x1FF), vcltzq_s16(vshlq_n_s16(v127, 0xFuLL)));
      v130 = veorq_s8(vmlaq_s16(v128, v126, vmovl_u8(vdup_n_s8(v125 >> 40))), v129);
      v128.i64[0] = 0x80008000800080;
      v128.i64[1] = 0x80008000800080;
      v131 = vorrq_s8(vshrq_n_u16(v130, 2uLL), vandq_s8(v129, v128));
      v132 = vmovl_high_u16(v131);
      v133 = vdupq_n_s32(0x4B400000u);
      v134 = vorrq_s8(vmovl_u16(*v131.i8), v133);
      v135 = vorrq_s8(v132, v133);
      v136 = vdupq_n_s32(0xCB400000);
      v137 = vsubq_f32(vaddq_f32(v134, v136), vaddq_f32(v135, v136));
      v114 = v137.f32[2] + vaddv_f32(*v137.f32);
      if (v114 != 0.0)
      {
LABEL_63:
        v138 = vmovn_s16(v112);
        if (v114 <= 0.0)
        {
          v139 = 1;
          v140 = v81;
        }

        else
        {
          v138 = vext_s8(v138, v138, 4uLL);
          v139 = -1;
          v140 = v82;
          v82 = v81;
        }

        v171 = vrndxq_f32(vmulq_f32(vmulq_n_f32(v257, *v29.i32), xmmword_298496500));
        v172 = vsubq_f32(v171, vdupq_laneq_s32(v171, 2).u64[0]);
        v173 = vmovn_s16(vandq_s8(vuzp1q_s16(v85, vcgezq_f32(v172)), vuzp1q_s16(v86, vcgeq_f32(v80, v172))));
        if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(vand_s8(vzip1_s8(v173, *v82.f32), vzip2_s8(v173, *v82.f32))), 0x1FuLL))) & 0x80000000) == 0)
        {
          goto LABEL_79;
        }

        v180 = vuzp1q_s16(v111, vcvtq_s32_f32(v172));
        v175 = vsubq_f32(v83, v172);
        v181 = *&v175.i32[2] + vaddv_f32(*v175.i8);
        if (fabsf(v181) > 1.0)
        {
          goto LABEL_93;
        }

        v182 = __clz(__rbit32(a1 + 1));
        v183 = ((a1 + 1) >> v182);
        v184 = *&v180 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
        if (v182 && v183 != 1)
        {
          v185 = vsubq_s16(vdupq_n_s16(a1), v184);
          if (v183 == 3)
          {
            v186 = 21846;
          }

          else
          {
            v186 = 13108;
          }

          v187 = vdupq_n_s16(v186);
          v188 = vminq_u16(v184, v185);
          v189 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v188.i8, *v187.i8), 0x10uLL), vmull_high_u16(v188, v187), 0x10uLL);
          v187.i64[0] = 0x1000100010001;
          v187.i64[1] = 0x1000100010001;
          v184 = vorrq_s8(vaddq_s16(vshlq_u16(vmlsq_s16(v188, v189, vmovl_u8(vdup_n_s8((a1 + 1) >> v182))), vdupq_n_s16(v182)), vaddq_s16(v189, v189)), vbicq_s8(v187, vceqq_s16(v188, v184)));
        }

        v190 = v183 - 6;
        _ZF = v183 == 1;
        v191 = -8;
        if (!_ZF)
        {
          v191 = v190;
        }

        v192 = GetUnquantizationData_UnquantizationInfo[3 * v182 + v191];
        v193 = vshlq_u16(v184, vnegq_s16(vdupq_n_s16(WORD1(v192) & 7)));
        v194 = vandq_s8(vdupq_n_s16(BYTE1(v192)), v184);
        v195 = vshlq_u16(vmulq_s16(vshrq_n_u16(v194, 1uLL), vdupq_n_s16((v192 >> 28) & 0x1FF)), vnegq_s16(vdupq_n_s16((v192 >> 37) & 7)));
        v196 = vandq_s8(vdupq_n_s16((v192 >> 19) & 0x1FF), vcltzq_s16(vshlq_n_s16(v194, 0xFuLL)));
        v197 = veorq_s8(vmlaq_s16(v195, v193, vmovl_u8(vdup_n_s8(v192 >> 40))), v196);
        v195.i64[0] = 0x80008000800080;
        v195.i64[1] = 0x80008000800080;
        v198 = vorrq_s8(vshrq_n_u16(v197, 2uLL), vandq_s8(v196, v195));
        v199 = vmovl_high_u16(v198);
        v200 = vdupq_n_s32(0x4B400000u);
        v201 = vorrq_s8(vmovl_u16(*v198.i8), v200);
        v202 = vorrq_s8(v199, v200);
        v203 = vdupq_n_s32(0xCB400000);
        v175 = vsubq_f32(vaddq_f32(v201, v203), vaddq_f32(v202, v203));
        v181 = *&v175.i32[2] + vaddv_f32(*v175.i8);
        if (v181 == 0.0)
        {
LABEL_79:
          v174 = 0;
          v175 = 0uLL;
        }

        else
        {
LABEL_93:
          v204 = vmovn_s16(v180);
          if (v181 <= 0.0)
          {
            v174 = 1;
          }

          else
          {
            v204 = vext_s8(v204, v204, 4uLL);
            v205 = v81;
            v174 = -1;
            v81 = v171;
            v171 = v205;
          }

          *v175.i8 = vext_s8(v204, v204, 4uLL);
          v36 = vmulq_f32(vmulq_n_f32(v81, v252), xmmword_298496510);
          v257 = vmulq_f32(vmulq_n_f32(v171, v252), xmmword_298496510);
        }

        if (v139 == v174)
        {
          v232 = vmulq_n_f32(v82, v252);
          *v82.f32 = vext_s8(v138, v138, 4uLL);
          v233 = vmulq_f32(v232, xmmword_298496510);
          v234 = vmulq_f32(vmulq_n_f32(v140, v252), xmmword_298496510);
          if (v114 > 0.0)
          {
            if (a5 >= 8)
            {
              v239 = a5 >> 3;
              v240 = a4;
              do
              {
                v241 = vsubq_f32(v251, v240[1]);
                *v240 = vsubq_f32(v251, *v240);
                v240[1] = v241;
                v240 += 2;
                --v239;
              }

              while (v239);
              v235 = a5 & 0xFFFFFFFFFFFFFFF8;
            }

            else
            {
              v235 = 0;
            }

            v242 = a5 - v235;
            if (a5 > v235)
            {
              v243 = &a4->f32[v235];
              do
              {
                *v243 = 1.0 - *v243;
                ++v243;
                --v242;
              }

              while (v242);
            }
          }

          *a2 = v234;
          *(a2 + 16) = vsubq_f32(v233, v234);
          v244 = vqtbl1_s8(v82, ShuffleColorEndpointPair_mapTable[*a3]);
LABEL_134:
          *(a2 + 32) = v244;
          *(a2 + 48) = v36;
          *(a2 + 64) = vsubq_f32(v257, v36);
          v250 = vqtbl1_s8(v175, ShuffleColorEndpointPair_mapTable[*a3]);
          *(a2 + 80) = v250;
          v110 = vceq_s8(v244, v250);
          goto LABEL_52;
        }
      }
    }

    if (a5 >= 8)
    {
      v99 = a5 >> 3;
      v100 = a4;
      do
      {
        v101 = vsubq_f32(v251, v100[1]);
        *v100 = vsubq_f32(v251, *v100);
        v100[1] = v101;
        v100 += 2;
        --v99;
      }

      while (v99);
      v89 = a5 & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      v89 = 0;
    }

    v102 = a5 - v89;
    if (a5 > v89)
    {
      v103 = &a4->f32[v89];
      do
      {
        *v103 = 1.0 - *v103;
        ++v103;
        --v102;
      }

      while (v102);
    }

    if (a2)
    {
      v104 = vcvtq_s32_f32(v255);
      v105 = vuzp1q_s16(vcvtq_s32_f32(v254), v104);
      *v105.i8 = vmovn_s16(v105);
      v106 = ShuffleColorEndpointPair_mapTable[*a3];
      v93 = vqtbl1_s8(v105, v106);
      v107 = vuzp1q_s16(vcvtq_s32_f32(v256), v104);
      *v107.i8 = vmovn_s16(v107);
      v95 = vqtbl1_s8(v107, v106);
      v96 = vmulq_n_f32(v254, v252);
      v108 = vmulq_n_f32(v256, v252);
      v109 = vmulq_n_f32(v255, v252);
      *a2 = v108;
      *(a2 + 16) = vsubq_f32(v109, v108);
      *(a2 + 32) = v95;
      v98 = vsubq_f32(v109, v96);
      goto LABEL_49;
    }

LABEL_50:
    v95 = MEMORY[0x20];
    v93 = MEMORY[0x50];
    goto LABEL_51;
  }

  if ((v88 & 0x80000000) != 0)
  {
    v141 = vcvtq_s32_f32(v83);
    v142 = vuzp1q_s16(v141, vcvtq_s32_f32(v84));
    v143 = vsubq_f32(v83, v84);
    v144 = v143.f32[2] + vaddv_f32(*v143.f32);
    if (fabsf(v144) > 1.0)
    {
      goto LABEL_75;
    }

    v145 = __clz(__rbit32(a1 + 1));
    v146 = ((a1 + 1) >> v145);
    v147 = *&v142 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
    if (v145 && v146 != 1)
    {
      v148 = vsubq_s16(vdupq_n_s16(a1), v147);
      if (v146 == 3)
      {
        v149 = 21846;
      }

      else
      {
        v149 = 13108;
      }

      v150 = vdupq_n_s16(v149);
      v151 = vminq_u16(v147, v148);
      v152 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v151.i8, *v150.i8), 0x10uLL), vmull_high_u16(v151, v150), 0x10uLL);
      v150.i64[0] = 0x1000100010001;
      v150.i64[1] = 0x1000100010001;
      v147 = vorrq_s8(vaddq_s16(vshlq_u16(vmlsq_s16(v151, v152, vmovl_u8(vdup_n_s8((a1 + 1) >> v145))), vdupq_n_s16(v145)), vaddq_s16(v152, v152)), vbicq_s8(v150, vceqq_s16(v151, v147)));
    }

    v153 = v146 - 6;
    _ZF = v146 == 1;
    v154 = -8;
    if (!_ZF)
    {
      v154 = v153;
    }

    v155 = GetUnquantizationData_UnquantizationInfo[3 * v145 + v154];
    v156 = vshlq_u16(v147, vnegq_s16(vdupq_n_s16(WORD1(v155) & 7)));
    v157 = vandq_s8(vdupq_n_s16(BYTE1(v155)), v147);
    v158 = vshlq_u16(vmulq_s16(vshrq_n_u16(v157, 1uLL), vdupq_n_s16((v155 >> 28) & 0x1FF)), vnegq_s16(vdupq_n_s16((v155 >> 37) & 7)));
    v159 = vandq_s8(vdupq_n_s16((v155 >> 19) & 0x1FF), vcltzq_s16(vshlq_n_s16(v157, 0xFuLL)));
    v160 = veorq_s8(vmlaq_s16(v158, v156, vmovl_u8(vdup_n_s8(v155 >> 40))), v159);
    v158.i64[0] = 0x80008000800080;
    v158.i64[1] = 0x80008000800080;
    v161 = vorrq_s8(vshrq_n_u16(v160, 2uLL), vandq_s8(v159, v158));
    v162 = vmovl_high_u16(v161);
    v163 = vdupq_n_s32(0x4B400000u);
    v164 = vorrq_s8(vmovl_u16(*v161.i8), v163);
    v165 = vorrq_s8(v162, v163);
    v166 = vdupq_n_s32(0xCB400000);
    v167 = vsubq_f32(vaddq_f32(v164, v166), vaddq_f32(v165, v166));
    v144 = v167.f32[2] + vaddv_f32(*v167.f32);
    if (v144 != 0.0)
    {
LABEL_75:
      v168 = vmovn_s16(v142);
      if (v144 <= 0.0)
      {
        v169 = 1;
        v170 = v81;
      }

      else
      {
        v168 = vext_s8(v168, v168, 4uLL);
        v169 = -1;
        v170 = v82;
        v82 = v81;
      }

      v176 = vrndxq_f32(vmulq_f32(vmulq_n_f32(v257, *v29.i32), xmmword_298496500));
      v177 = vsubq_f32(v176, vdupq_laneq_s32(v176, 2).u64[0]);
      v178 = vmovn_s16(vandq_s8(vuzp1q_s16(v85, vcgezq_f32(v177)), vuzp1q_s16(v86, vcgeq_f32(v80, v177))));
      if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(vand_s8(vzip1_s8(v178, *v82.f32), vzip2_s8(v178, *v82.f32))), 0x1FuLL))) & 0x80000000) == 0)
      {
        goto LABEL_82;
      }

      v206 = vuzp1q_s16(v141, vcvtq_s32_f32(v177));
      v175 = vsubq_f32(v83, v177);
      v207 = *&v175.i32[2] + vaddv_f32(*v175.i8);
      if (fabsf(v207) > 1.0)
      {
        goto LABEL_105;
      }

      v208 = __clz(__rbit32(a1 + 1));
      v209 = ((a1 + 1) >> v208);
      v210 = *&v206 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
      if (v208 && v209 != 1)
      {
        v211 = vsubq_s16(vdupq_n_s16(a1), v210);
        if (v209 == 3)
        {
          v212 = 21846;
        }

        else
        {
          v212 = 13108;
        }

        v213 = vdupq_n_s16(v212);
        v214 = vminq_u16(v210, v211);
        v215 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v214.i8, *v213.i8), 0x10uLL), vmull_high_u16(v214, v213), 0x10uLL);
        v213.i64[0] = 0x1000100010001;
        v213.i64[1] = 0x1000100010001;
        v210 = vorrq_s8(vaddq_s16(vshlq_u16(vmlsq_s16(v214, v215, vmovl_u8(vdup_n_s8((a1 + 1) >> v208))), vdupq_n_s16(v208)), vaddq_s16(v215, v215)), vbicq_s8(v213, vceqq_s16(v214, v210)));
      }

      v216 = v209 - 6;
      _ZF = v209 == 1;
      v217 = -8;
      if (!_ZF)
      {
        v217 = v216;
      }

      v218 = GetUnquantizationData_UnquantizationInfo[3 * v208 + v217];
      v219 = vshlq_u16(v210, vnegq_s16(vdupq_n_s16(WORD1(v218) & 7)));
      v220 = vandq_s8(vdupq_n_s16(BYTE1(v218)), v210);
      v221 = vshlq_u16(vmulq_s16(vshrq_n_u16(v220, 1uLL), vdupq_n_s16((v218 >> 28) & 0x1FF)), vnegq_s16(vdupq_n_s16((v218 >> 37) & 7)));
      v222 = vandq_s8(vdupq_n_s16((v218 >> 19) & 0x1FF), vcltzq_s16(vshlq_n_s16(v220, 0xFuLL)));
      v223 = veorq_s8(vmlaq_s16(v221, v219, vmovl_u8(vdup_n_s8(v218 >> 40))), v222);
      v221.i64[0] = 0x80008000800080;
      v221.i64[1] = 0x80008000800080;
      v224 = vorrq_s8(vshrq_n_u16(v223, 2uLL), vandq_s8(v222, v221));
      v225 = vmovl_high_u16(v224);
      v226 = vdupq_n_s32(0x4B400000u);
      v227 = vorrq_s8(vmovl_u16(*v224.i8), v226);
      v228 = vorrq_s8(v225, v226);
      v229 = vdupq_n_s32(0xCB400000);
      v175 = vsubq_f32(vaddq_f32(v227, v229), vaddq_f32(v228, v229));
      v207 = *&v175.i32[2] + vaddv_f32(*v175.i8);
      if (v207 == 0.0)
      {
LABEL_82:
        v179 = 0;
        v175 = 0uLL;
      }

      else
      {
LABEL_105:
        v230 = vmovn_s16(v206);
        if (v207 <= 0.0)
        {
          v179 = 1;
        }

        else
        {
          v230 = vext_s8(v230, v230, 4uLL);
          v231 = v81;
          v179 = -1;
          v81 = v176;
          v176 = v231;
        }

        *v175.i8 = vext_s8(v230, v230, 4uLL);
        v36 = vmulq_f32(vmulq_n_f32(v81, v252), xmmword_298496510);
        v81 = vmulq_f32(vmulq_n_f32(v176, v252), xmmword_298496510);
        v257 = v81;
      }

      if (v169 == v179)
      {
        *v81.f32 = vext_s8(v168, v168, 4uLL);
        if ((vminv_u8(vceq_s8(*v81.f32, *v175.i8)) & 0x80) == 0)
        {
          v236 = vmulq_f32(vmulq_n_f32(v82, v252), xmmword_298496510);
          v237 = vmulq_f32(vmulq_n_f32(v170, v252), xmmword_298496510);
          if (v144 > 0.0)
          {
            if (a5 >= 8)
            {
              v245 = a5 >> 3;
              v246 = a4;
              do
              {
                v247 = vsubq_f32(v251, v246[1]);
                *v246 = vsubq_f32(v251, *v246);
                v246[1] = v247;
                v246 += 2;
                --v245;
              }

              while (v245);
              v238 = a5 & 0xFFFFFFFFFFFFFFF8;
            }

            else
            {
              v238 = 0;
            }

            v248 = a5 - v238;
            if (a5 > v238)
            {
              v249 = &a4->f32[v238];
              do
              {
                *v249 = 1.0 - *v249;
                ++v249;
                --v248;
              }

              while (v248);
            }
          }

          *a2 = v237;
          *(a2 + 16) = vsubq_f32(v236, v237);
          v244 = vqtbl1_s8(v81, ShuffleColorEndpointPair_mapTable[*a3]);
          goto LABEL_134;
        }
      }
    }
  }

  if (!a2)
  {
    goto LABEL_50;
  }

  v90 = vcvtq_s32_f32(v255);
  v91 = vuzp1q_s16(v90, vcvtq_s32_f32(v254));
  *v91.i8 = vmovn_s16(v91);
  v92 = ShuffleColorEndpointPair_mapTable[v25];
  v93 = vqtbl1_s8(v91, v92);
  v94 = vuzp1q_s16(v90, vcvtq_s32_f32(v256));
  *v94.i8 = vmovn_s16(v94);
  v95 = vqtbl1_s8(v94, v92);
  v96 = vmulq_n_f32(v255, v252);
  v97 = vnegq_f32(v96);
  *a2 = v96;
  *(a2 + 16) = vmlaq_n_f32(v97, v256, v252);
  *(a2 + 32) = v95;
  v98 = vmlaq_n_f32(v97, v254, v252);
LABEL_49:
  *(a2 + 48) = v96;
  *(a2 + 64) = v98;
  *(a2 + 80) = v93;
LABEL_51:
  v110 = vceq_s8(v95, v93);
LABEL_52:
  v110.i8[0] = vminv_u8(v110);
  return v110.i32[0] >> 7;
}

uint64_t Unpremultiply_8x8_vec_cold_1(uint64_t result)
{
  v1 = 400;
  __asm { FMOV            V0.4S, #1.0 }

  v7 = vdupq_n_s32(0x21800000u);
  do
  {
    v8 = (result + v1);
    v10 = *(result + v1 + 512);
    v9 = *(result + v1 + 528);
    v11 = vminnmq_f32(*(result + v1 - 256), v10);
    v12 = vminnmq_f32(*(result + v1 - 240), v9);
    v13 = vminnmq_f32(*(result + v1), v10);
    v14 = vminnmq_f32(*(result + v1 + 16), v9);
    v15 = vminnmq_f32(*(result + v1 + 256), v10);
    v16 = vminnmq_f32(*(result + v1 + 272), v9);
    if ((vmaxvq_u32(vornq_s8(vmvnq_s8(vceqzq_f32(v10)), vceqzq_f32(v9))) & 0x80000000) != 0 && (vminvq_u32(vandq_s8(vceqq_f32(v10, _Q0), vceqq_f32(v9, _Q0))) & 0x80000000) == 0)
    {
      v10 = vbslq_s8(vcgeq_f32(v7, vabsq_f32(v10)), _Q0, v10);
      v9 = vbslq_s8(vcgeq_f32(v7, vabsq_f32(v9)), _Q0, v9);
      v17 = vdivq_f32(_Q0, v9);
      v18 = vdivq_f32(_Q0, v10);
      v11 = vmulq_f32(v11, v18);
      v12 = vmulq_f32(v12, v17);
      v13 = vmulq_f32(v18, v13);
      v14 = vmulq_f32(v17, v14);
      v15 = vmulq_f32(v18, v15);
      v16 = vmulq_f32(v17, v16);
    }

    v8[-16] = v11;
    v8[-15] = v12;
    *v8 = v13;
    v8[1] = v14;
    v8[16] = v15;
    v8[17] = v16;
    v1 += 32;
    v8[32] = v10;
    v8[33] = v9;
  }

  while (v1 != 656);
  return result;
}

uint32_t at_texel_format_to_MTLPixelFormat(at_texel_format_t a1)
{
  if (a1 <= at_texel_format_rgba16_float)
  {
    v1 = a1;
  }

  else
  {
    v1 = at_texel_format_invalid;
  }

  return at_texel_format_to_MTLPixelFormat_TexelFormatConversionTable[v1];
}

uint32_t at_block_format_convert_to_MTLPixelFormat(at_block_format_t blockFormat, at_flags_t flags)
{
  if (blockFormat <= at_block_format_bc7)
  {
    v2 = blockFormat;
  }

  else
  {
    v2 = at_block_format_invalid;
  }

  v3 = (&at_block_format_convert_to_MTLPixelFormat_BlockFormatConversionTable + 4 * v2);
  if (v2 - 15 < 0xFFFFFFFFFFFFFFF2)
  {
    v2 = at_block_format_invalid;
  }

  v4 = (&at_block_format_convert_to_MTLPixelFormat_BlockFormatConversionTableSRGB + 4 * v2);
  if ((flags & 0x20) != 0)
  {
    v3 = v4;
  }

  return *v3;
}

uint32_t at_block_format_to_MTLPixelFormat(at_block_format_t blockFormat)
{
  if (blockFormat <= at_block_format_bc7)
  {
    v1 = blockFormat;
  }

  else
  {
    v1 = at_block_format_invalid;
  }

  return at_block_format_convert_to_MTLPixelFormat_BlockFormatConversionTable[v1];
}

uint64_t DXTCEncoder::GetBlockFeaturesStatic(DXTCEncoder *this, at_block_format_t a2, at_flags_t a3)
{
  if (this - 33 > 9)
  {
    return 0;
  }

  else
  {
    return qword_298496EF0[this - 33];
  }
}

uint64_t DXTCEncoder::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (((v3[1].i32[0] ^ v2[1].i32[0]) & 0x7FFLL) != 0)
  {
    return 0;
  }

  if (((v3[1].i32[2] ^ v2[1].i32[2]) & 0x7FFLL) != 0)
  {
    return 0;
  }

  v4 = v2[2].i32[0];
  if (v4 != v3[2].i32[0])
  {
    return 0;
  }

  v5 = v2[2].i32[1];
  if (v5 != v3[2].i32[1])
  {
    return 0;
  }

  if (v4 != 1 && v5 == 1)
  {
    return vminvq_u32(vceqq_f32(*v2, *v3)) >> 31;
  }

  else
  {
    return 1;
  }
}

uint64_t (*EncoderCheck_DXTC(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v1 = *(a1 + 16) & 0x7FFLL;
  if ((v1 - 1) > 9)
  {
    return 0;
  }

  v2 = *(a1 + 24) & 0x7FFLL;
  if ((v2 - 33) > 9)
  {
    return 0;
  }

  if (((*(a1 + 24) >> 26) & 0xF) * ((*(a1 + 16) >> 34) & 0x1F) * ((*(a1 + 24) >> 30) & 0xFuLL) > 0xF)
  {
    return EncoderFactory_DXTC;
  }

  fprintf(*MEMORY[0x29EDCA610], "at_encoder_create: this combination of texelType (%u) and blockType (%u)\n                        would cause the image to grow larger.\n", v1, v2);
  return 0;
}

uint64_t EncoderFactory_DXTC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    DXTCEncoder::DXTCEncoder(a2, a1);
  }

  return a2;
}

uint64_t DXTCEncoder::DXTCEncoder(uint64_t a1, uint64_t a2)
{
  return DXTCEncoder::DXTCEncoder(a1, a2);
}

{
  *a1 = &unk_2A1EE7118;
  *(a1 + 8) = a2;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN11DXTCEncoderC2ERK10CommonData_block_invoke;
  block[3] = &__block_descriptor_tmp_1;
  block[4] = a2;
  if (DXTCEncoder::DXTCEncoder(CommonData const&)::once_control != -1)
  {
    dispatch_once(&DXTCEncoder::DXTCEncoder(CommonData const&)::once_control, block);
  }

  v3 = *(a1 + 8);
  v4 = (*(v3 + 16) & 0x7FF) - 1;
  if (v4 >= 0xA)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -1;
    __cxa_throw(exception, MEMORY[0x29EDC94D0], 0);
  }

  v5 = off_2A1EE72F0[v4];
  v6 = qword_298496F90[v4];
  *(a1 + 40) = v5;
  v7 = *(v3 + 24) & 0x7FFLL;
  if ((v7 - 33) > 9)
  {
    v8 = 0;
  }

  else
  {
    v8 = byte_298496FE0[(v7 - 33)];
  }

  *(a1 + 72) = v8;
  *(a1 + 73) = 1;
  if ((*(v3 + 24) & 0x7FFu) - 33 > 9)
  {
    v14 = __cxa_allocate_exception(4uLL);
    *v14 = -1;
    __cxa_throw(v14, MEMORY[0x29EDC94D0], 0);
  }

  *(a1 + 32) = kReadProcs4x4[v6];
  v10 = *(v3 + 32);
  v9 = *(v3 + 36);
  v11 = v7 - 33;
  *(a1 + 16) = kAlphaProcs4x4[3 * v10 + v9];
  *(a1 + 56) = kWriteProcs[v6];
  *(a1 + 48) = kDecodeProcs[v11];
  *(a1 + 24) = kEncodeProcs[v11];
  *(a1 + 64) = kTexelAlphaProcs[3 * v9 + v10];
  return a1;
}

uint64_t DXTCEncoder::GetBlockSize(DXTCEncoder *this)
{
  v1 = (*(*(this + 1) + 24) & 0x7FF) - 33;
  if (v1 > 9)
  {
    return 0;
  }

  else
  {
    return qword_298496F40[v1];
  }
}

void sub_29844440C(_Unwind_Exception *a1, int a2)
{
  if (a2 < 0)
  {
    __cxa_call_unexpected(a1);
  }

  _Unwind_Resume(a1);
}

void ___ZN11DXTCEncoderC2ERK10CommonData_block_invoke()
{
  kAlphaProcs4x4 = PassThrough_4x4_vec;
  qword_2A1898C10 = FlattenNon_4x4_vec;
  qword_2A1898C18 = Premultiply_4x4_vec;
  qword_2A1898C20 = SetAlphaOne_4x4_vec;
  unk_2A1898C28 = SetAlphaOne_4x4_vec;
  qword_2A1898C30 = SetAlphaOne_4x4_vec;
  qword_2A1898C38 = Unpremultiply_4x4_vec;
  qword_2A1898C40 = FlattenPre_4x4_vec;
  qword_2A1898C48 = ClampPremultiplied_4x4_vec;
  kReadProcs4x4 = Read_4x4_R8_vec;
  qword_2A1898CF8 = Read_4x4_RA8_vec;
  qword_2A1898D00 = Read_4x4_RGBA8_vec;
  qword_2A1898D08 = Read_4x4_BGRA8_vec;
  qword_2A1898D10 = Read_4x4_R16_vec;
  qword_2A1898D18 = Read_4x4_RA16_vec;
  qword_2A1898D20 = Read_4x4_RGBA16_vec;
  qword_2A1898D28 = Read_4x4_Rf16_vec;
  qword_2A1898D30 = Read_4x4_RAf16_vec;
  qword_2A1898D38 = Read_4x4_RGBAf16_vec;
  kDecodeProcs = decode_bc1;
  qword_2A13B8870 = decode_bc2;
  qword_2A13B8878 = decode_bc3;
  qword_2A13B8880 = decode_bc4;
  qword_2A13B8888 = decode_bc4s;
  qword_2A13B8890 = decode_bc5;
  qword_2A13B8898 = decode_bc5s;
  qword_2A13B88A0 = decode_bc6;
  unk_2A13B88A8 = decode_bc6;
  qword_2A13B88B0 = decode_bc7;
  kEncodeProcs = encode_bc1;
  qword_2A13B88C0 = encode_bc2;
  qword_2A13B88C8 = encode_bc3;
  qword_2A13B88D0 = encode_bc4;
  qword_2A13B88E0 = encode_bc5;
  qword_2A13B8900 = EncodeDXTC_BC7_vec;
  kTexelAlphaProcs = PassThrough_vec;
  qword_2A1898B28 = FlattenNon_vec;
  qword_2A1898B30 = Premultiply_vec;
  qword_2A1898B38 = SetAlphaOne_vec;
  unk_2A1898B40 = SetAlphaOne_vec;
  qword_2A1898B48 = SetAlphaOne_vec;
  qword_2A1898B50 = Unpremultiply_vec;
  qword_2A1898B58 = FlattenPre_vec;
  qword_2A1898B60 = ClampPremultiplied_vec;
  kWriteProcs = Write_R8_vec;
  qword_2A1898DA8 = Write_RA8_vec;
  qword_2A1898DB0 = Write_RGBA8_vec;
  qword_2A1898DB8 = Write_BGRA8_vec;
  qword_2A1898DC0 = Write_R16_vec;
  qword_2A1898DC8 = Write_RA16_vec;
  qword_2A1898DD0 = Write_RGBA16_vec;
  qword_2A1898DD8 = Write_Rf16_vec;
  qword_2A1898DE0 = Write_RAf16_vec;
  qword_2A1898DE8 = Write_RGBAf16_vec;
}

void DXTCEncoder::CompressTexels(DXTCEncoder *this, const at_texel_region_t *a2, const at_block_buffer_t *a3, float a4, at_flags_t a5)
{
  v5 = MEMORY[0x2A1C7C4A8](this);
  v10 = v5;
  v90 = *MEMORY[0x29EDCA608];
  if (*(v5 + 72))
  {
    v11 = v8;
    if ((v8 & 0xFFFFFFFFFFFFFFA0) != 0)
    {
      fprintf(*MEMORY[0x29EDCA610], "at_encoder_compress_texels: the ASTC encoding does not support flag(s) 0x%16.16llx\n", v8 & 0xFFFFFFFFFFFFFFA0);
    }

    else
    {
      v13 = v9;
      v14 = v7;
      v15 = v6;
      v16 = v6 + 1;
      v17 = (*(*v5 + 56))(v5, v6[1], *(v6 + 4));
      v19 = v18;
      v20 = HIDWORD(v17);
      v21 = (*(*v10 + 64))(v10);
      v23 = v22;
      v24 = (HIDWORD(v21) * v22 * v21) * v13;
      if ((v11 & 8) != 0)
      {
        v57 = 0;
      }

      else if (v17 < 0x100100000000)
      {
        v57 = v89;
        bzero(v89, 4 * v20);
      }

      else
      {
        v57 = malloc_type_calloc(v20, 4uLL, 0x100004052888210uLL);
      }

      v25 = HIDWORD(v17) >> 4;
      if (!(v17 >> 37))
      {
        v25 = 1;
      }

      v55 = v17;
      v26 = HIDWORD(v17);
      if ((v11 & 4) == 0)
      {
        LODWORD(v20) = v25;
      }

      v27 = &DXTCEncoder::CompressTexels(at_texel_region_t const&,at_block_buffer_t const&,float,at_flags_t)const::kSRGBprimaries;
      if (v11 >= 0x40)
      {
        v27 = 0;
      }

      v56 = v27;
      if (v11 >= 0x40)
      {
        v28 = 1.0;
      }

      else
      {
        v28 = 0.75;
      }

      v29 = *(v10 + 8);
      v30 = *v29;
      v53 = *v14;
      v54 = *v15;
      v58 = *v16;
      v59 = *(v16 + 2);
      v31 = *(v29 + 2);
      v32 = (v31 >> 34) & 0x1F;
      LODWORD(v31) = (v31 >> 26) & 0xF;
      v52 = v32 / v31;
      v50 = v30;
      v51 = *(v15 + 3);
      v49 = *(v14 + 1);
      v33 = (v31 + v32 * v21 - 1) / v31;
      v34 = (*(*v10 + 72))(v10);
      global_queue = 0;
      v36 = v21 * v55 != *(v15 + 2);
      v37 = *(*(v10 + 8) + 36);
      v38 = *(v10 + 32);
      v39 = *(v10 + 40);
      context = v50;
      v61 = v56;
      v62 = v54;
      v63 = v53;
      v64 = v57;
      v66 = v59;
      v65 = v58;
      v67 = v21;
      v68 = v23;
      v69 = v52;
      v70 = v33;
      v72 = v49;
      v71 = v51;
      v73 = v34;
      v74 = v55;
      v40 = v26;
      v75 = v26;
      v76 = v36;
      v77 = 0;
      v78 = v24;
      v79 = v28;
      v80 = v37;
      v81 = 0;
      v82 = 0;
      v83 = v20;
      v84 = v38;
      v85 = *(v10 + 16);
      v86 = v39;
      v88 = 0u;
      v87 = 0u;
      if ((v11 & 4) == 0 && v55 >> 33)
      {
        v41 = qos_class_self();
        global_queue = dispatch_get_global_queue(v41, 0);
      }

      if (v19)
      {
        v42 = 0;
        v43 = v26 + v20 - 1;
        do
        {
          if (global_queue)
          {
            dispatch_apply_f(v43 / v20, global_queue, &context, EncodeRowBlock);
          }

          else if (v20 <= v43)
          {
            v44 = 0;
            do
            {
              EncodeRowBlock(&context);
              ++v44;
            }

            while (v44 < v43 / v20);
          }

          v62 += *(&v71 + 1);
          v63 += *(&v72 + 1);
          v66 -= v23;
          v77 = v42++;
        }

        while (v42 != v19);
      }

      v45 = 0.0;
      if (v57)
      {
        if (v40)
        {
          v46 = v40;
          v47 = v57;
          do
          {
            v48 = *v47++;
            v45 = v45 + v48;
            --v46;
          }

          while (v46);
        }

        if (v57 != v89)
        {
          free(v57);
        }
      }
    }
  }

  else
  {
    fprintf(*MEMORY[0x29EDCA610], "at_encoder_compress_texels: the ASTC encoding does not support output block format %u\n", *(*(v5 + 8) + 24) & 0x7FF);
  }

  v12 = *MEMORY[0x29EDCA608];
}

uint64_t DXTCEncoder::DecompressTexels(DXTCEncoder *this, const at_block_buffer_t *a2, const at_texel_region_t *a3, at_flags_t a4)
{
  v4 = a4;
  v8 = (*(*this + 56))(this, *&a3->validSize.x, a3->validSize.z);
  v10 = v9;
  v11 = HIDWORD(v8);
  v51 = 0;
  v12 = (*(*this + 64))(this);
  v13 = v12;
  v50 = 0u;
  memset(&v49[16], 0, 48);
  v48 = 0u;
  memset(v49, 0, 40);
  *&v47[4] = 0u;
  v15 = *this;
  v14 = *(this + 1);
  v16 = *v14;
  texels = a3->texels;
  v18 = *&a3->validSize.x;
  v30 = 0;
  v31 = texels;
  rowBytes = a2->rowBytes;
  blocks = a2->blocks;
  v33 = 0;
  v34 = v18;
  z = a3->validSize.z;
  v36 = v12;
  v37 = v20;
  v21 = *(v14 + 2);
  v22 = (v21 >> 34) & 0x1F;
  LODWORD(v21) = (v21 >> 26) & 0xF;
  v29 = v16;
  v38 = v22 / v21;
  v39 = (v21 + v22 * v12 - 1) / v21;
  v40 = *&a3->rowBytes;
  v41 = rowBytes;
  v42 = 0;
  v43 = (*(v15 + 72))(this);
  v44 = 0;
  v45 = HIDWORD(v8);
  v46 = v13 * v8 != a3->validSize.x;
  *&v48 = 0;
  *&v47[8] = 0;
  *v47 = 0;
  *v49 = 0;
  *(&v48 + 1) = (v4 >> 5) & 1;
  *&v49[40] = *(this + 3);
  *&v49[56] = *(this + 8);
  *&v50 = &v51;
  v23 = (*(*this + 96))(this) - 37;
  if (v23 <= 4 && ((0x1Du >> v23) & 1) != 0)
  {
    HIDWORD(v48) = dword_298496FEC[v23];
  }

  global_queue = 0;
  if ((v4 & 4) == 0 && v8 >> 33)
  {
    v25 = qos_class_self();
    global_queue = dispatch_get_global_queue(v25, 0);
  }

  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      if (global_queue)
      {
        dispatch_apply_f(v11, global_queue, &v29, DecodeRow);
      }

      else if (v11)
      {
        for (j = 0; j != v11; ++j)
        {
          DecodeRow(&v29, j);
        }
      }

      v31 += *(&v40 + 1);
      blocks += v42;
      --z;
      *v47 = i;
    }
  }

  return v51;
}

uint64_t DecodeASTC_RGBA_vec(uint64_t result, unint64_t a2, double a3, double a4, uint8x8_t a5, uint64_t a6, uint64_t a7, unsigned int *a8)
{
  v9 = a2;
  *&v335[287] = *MEMORY[0x29EDCA608];
  v10 = HIDWORD(a2);
  v11 = *result;
  if ((*result & 0xF) == 0)
  {
    v24 = (HIDWORD(a2) * a2);
    if (v24)
    {
      v25 = a8 + 72;
      if (a8[653])
      {
        v26 = 0xFFFF;
      }

      else
      {
        v26 = 0;
      }

      LODWORD(v27) = 0xFFFF;
      *(&v27 + 1) = 0xFFFF0000FFFFLL;
      DWORD1(v27) = v26;
      do
      {
        *v25++ = v27;
        --v24;
      }

      while (v24);
    }

    goto LABEL_73;
  }

  v13 = result;
  if ((v11 & 3) == 0)
  {
    if ((v11 & 0x1FF) == 0x1FC)
    {
      if ((v11 & 0x200) != 0 && !a8[653])
      {
        if (HIDWORD(a2) * a2)
        {
          memset_pattern16(a8 + 72, &unk_298497010, 16 * (HIDWORD(a2) * a2));
        }

        result = -5;
      }

      else
      {
        v28 = vmovl_u16(*(result + 8));
        if (a8[652])
        {
          v28.i64[0] = ConvertSRGBtoLinear(v28);
        }

        if (a8[653] && (*(v13 + 1) & 2) == 0)
        {
          v29.i64[0] = 0xFFFF0000FFFFLL;
          v29.i64[1] = 0xFFFF0000FFFFLL;
          v30.i64[0] = 0x1000000010000;
          v30.i64[1] = 0x1000000010000;
          v31 = vbslq_s8(vceqq_s32(v28, v29), v30, v28);
          v29.i64[0] = 0x300000003;
          v29.i64[1] = 0x300000003;
          v32 = vmaxnmq_f32(vminnmq_f32(vmulq_f32(vcvtq_f32_u32(vandq_s8(v31, vcgtq_s32(v31, v29))), vdupq_n_s32(0x37800000u)), vdupq_n_s32(0x477FE000u)), vdupq_n_s32(0xC77FE000));
          v29.i64[0] = 0x1F0000001FLL;
          v29.i64[1] = 0x1F0000001FLL;
          v28 = vmovl_u16(vcvt_f16_f32(vandq_s8(v32, v29)));
        }

        if (v10 * v9)
        {
          v33 = 0;
          do
          {
            *&a8[4 * v33++ + 72] = v28;
          }

          while (v10 * v9 > v33);
        }

LABEL_32:
        result = 0;
      }

      goto LABEL_74;
    }

    if ((~v11 & 0x1C0) == 0)
    {
      v36 = (HIDWORD(a2) * a2);
      if (v36)
      {
        v37 = a8 + 72;
        if (a8[653])
        {
          v38 = 0xFFFF;
        }

        else
        {
          v38 = 0;
        }

        LODWORD(v39) = 0xFFFF;
        *(&v39 + 1) = 0xFFFF0000FFFFLL;
        DWORD1(v39) = v38;
        do
        {
          *v37++ = v39;
          --v36;
        }

        while (v36);
      }

      goto LABEL_73;
    }
  }

  v14 = (v11 >> 10) & 1;
  a8[5] = v14;
  v15 = *result;
  v16 = (*result >> 7) & 3;
  if ((*result & 3) != 0)
  {
    v17 = (2 * (v15 & 3)) | (v15 >> 4) & 1 | (v15 >> 6) & 8;
    v18 = (v15 >> 2) & 3;
    v19 = ((v15 >> 5) & 3) + 2;
    v20 = v16 | 8;
    v21 = (v15 >> 7) & 1 | 2;
    if ((v15 & 0x100) != 0)
    {
      v22 = ((v15 >> 5) & 3) + 2;
    }

    else
    {
      v21 = ((v15 >> 5) & 3) + 2;
      v22 = (v15 >> 7) & 1 | 6;
    }

    if (v18 == 2)
    {
      v21 = v19;
      v22 = v16 | 8;
    }

    v23 = v16 | 4;
    if (v18)
    {
      v23 = v20;
    }

    if (v18 > 1)
    {
      v23 = v21;
      v19 = v22;
    }
  }

  else
  {
    v34 = (v11 >> 9) & 1;
    if (((*result >> 7) & 3) > 1)
    {
      if (v16 == 2)
      {
        v14 = 0;
        v34 = 0;
        v23 = ((v15 >> 5) & 3) + 6;
        v19 = ((v15 >> 9) & 3) + 6;
        a8[5] = 0;
        LODWORD(v15) = *result;
      }

      else
      {
        if ((v15 & 0x60) != 0)
        {
          v23 = 10;
        }

        else
        {
          v23 = 6;
        }

        if ((v15 & 0x60) != 0)
        {
          v19 = 6;
        }

        else
        {
          v19 = 10;
        }
      }
    }

    else
    {
      v19 = ((v15 >> 5) & 3) + 2;
      v35 = v16 == 0;
      if (v16)
      {
        v23 = ((v15 >> 5) & 3) + 2;
      }

      else
      {
        v23 = 12;
      }

      if (!v35)
      {
        v19 = 12;
      }
    }

    v17 = (v15 >> 1) & 6 | (v15 >> 4) & 1 | (8 * v34);
  }

  if (v23 > a2)
  {
    goto LABEL_67;
  }

  if (v19 > HIDWORD(a2))
  {
    goto LABEL_67;
  }

  *a8 = v23;
  a8[1] = v19;
  if ((v17 & 6) == 0)
  {
    goto LABEL_67;
  }

  v40 = v19 * v23;
  v41 = (v40 << v14);
  if (v41 > 0x40)
  {
    goto LABEL_67;
  }

  v42 = DecodeWeights_kBlockModeRangeTable[v17] + 1;
  v43 = __clz(__rbit32(v42));
  v44 = v43 * v41;
  v45 = v42 >> v43;
  switch(v45)
  {
    case 1u:
      goto LABEL_66;
    case 5u:
      v46 = 152922 * v41 + 43692;
      goto LABEL_65;
    case 3u:
      v46 = 13108 * ((8 * v41) | 4);
LABEL_65:
      v44 += HIWORD(v46);
LABEL_66:
      a8[4] = v44;
      if (v44 - 97 < 0xFFFFFFB7)
      {
LABEL_67:
        v47 = (WORD2(a2) * a2);
        if (WORD2(a2) * a2)
        {
          v48 = a8 + 72;
          if (a8[653])
          {
            v49 = 0xFFFF;
          }

          else
          {
            v49 = 0;
          }

          LODWORD(v50) = 0xFFFF;
          *(&v50 + 1) = 0xFFFF0000FFFFLL;
          DWORD1(v50) = v49;
          do
          {
            *v48++ = v50;
            --v47;
          }

          while (v47);
        }

        goto LABEL_73;
      }

      v52 = v17;
      v53 = vqtbl1q_s8(vrbitq_s8(*result), xmmword_298495DE0);
      v333 = v53;
      if (v14)
      {
        DecodeIntegerSequenceEncoding(&v333, 0, (v40 << v14), DecodeWeights_kNumberOfBitsTable[v17], DecodeWeights_kNumberOfTritsTable[v17], DecodeWeights_kNumberOfQuintsTable[v17], &__dst, *v53.i64, 0x8090A0B0C0D0E0FLL, a5);
        v57 = a8 + 24;
        v58 = v335;
        v59 = a8 + 24;
        v60 = v40;
        do
        {
          *(v59 - 64) = *(v58 - 1);
          v61 = *v58;
          v58 += 2;
          *v59++ = v61;
          --v60;
        }

        while (v60);
        v62 = &unquantizedWeightTable[32 * v52];
        do
        {
          *(v57 - 64) = v62[*(v57 - 64)];
          *v57 = v62[*v57];
          ++v57;
          --v40;
        }

        while (v40);
      }

      else
      {
        v63 = a8 + 8;
        DecodeIntegerSequenceEncoding(&v333, 0, v41, DecodeWeights_kNumberOfBitsTable[v17], DecodeWeights_kNumberOfTritsTable[v17], DecodeWeights_kNumberOfQuintsTable[v17], a8 + 8, *v53.i64, 0x8090A0B0C0D0E0FLL, a5);
        do
        {
          *v63 = unquantizedWeightTable[32 * v52 + *v63];
          ++v63;
          --v41;
        }

        while (v41);
        v14 = a8[5];
      }

      v64 = *v13;
      v65 = (*v13 >> 11) & 3;
      v66 = v65 + 1;
      if (v14)
      {
        v67 = v66 == 4;
      }

      else
      {
        v67 = 0;
      }

      if (v67)
      {
        v75 = (v10 * v9);
        if (v10 * v9)
        {
          v76 = a8 + 72;
          if (a8[653])
          {
            v77 = 0xFFFF;
          }

          else
          {
            v77 = 0;
          }

          LODWORD(v78) = 0xFFFF;
          *(&v78 + 1) = 0xFFFF0000FFFFLL;
          DWORD1(v78) = v77;
          result = -3;
          do
          {
            *v76++ = v78;
            --v75;
          }

          while (v75);
          goto LABEL_74;
        }

LABEL_73:
        result = -3;
LABEL_74:
        v51 = *MEMORY[0x29EDCA608];
        return result;
      }

      if (v65)
      {
        v68 = ((BYTE2(v64) | ((v64 >> 24) << 8)) >> 7) & 3;
        if (v68)
        {
          v69 = a8[4];
          v70 = 4 * (((v64 >> 25) & 1) + v68) - 4;
          if (v65 == 3)
          {
            v71 = (v332 | 0xC);
            v84 = ((*(v13 + ((122 - v69) >> 3)) >> ((122 - v69) & 7)) & 3 | (4 * (((v64 >> 26) & 1) + v68))) - 4;
            v332[0].i32[0] = (*(v13 + ((120 - v69) >> 3)) >> ((120 - v69) & 7)) & 3 | v70;
            v332[0].i32[1] = v84;
            v332[0].i32[2] = ((*(v13 + ((124 - v69) >> 3)) >> ((124 - v69) & 7)) & 3 | (4 * (((v64 >> 27) & 1) + v68))) - 4;
            v73 = -8;
            v74 = 4;
          }

          else if (v65 == 2)
          {
            v71 = &v332[0].i8[8];
            v72 = (*(v13 + ((124 - v69) >> 3)) >> ((124 - v69) & 7)) & 3;
            v332[0].i32[0] = (v64 >> 28) & 1 | (2 * ((*(v13 + ((123 - v69) >> 3)) >> ((123 - v69) & 7)) & 1)) | v70;
            v332[0].i32[1] = (v72 | (4 * (((v64 >> 26) & 1) + v68))) - 4;
            v73 = -5;
            v74 = 3;
          }

          else
          {
            v71 = &v332[0].i8[4];
            v332[0].i32[0] = v70 | (v64 >> 27) & 3;
            v73 = -2;
            v74 = 2;
          }

          *v71 = ((*(v13 + ((126 - v69) >> 3)) >> ((126 - v69) & 7)) & 3 | (4 * (((BYTE3(v64) >> v74) & 1) + v68))) - 4;
          v83 = -3 * v66 + 103;
        }

        else
        {
          v73 = 0;
          v54 = vdupq_n_s32(((v64 >> 24) >> 1) & 0xF);
          v332[0] = v54;
          v69 = a8[4];
          v83 = 99;
        }

        if (v14)
        {
          v85 = -2;
        }

        else
        {
          v85 = 0;
        }

        v81 = v85 - v69 + v83;
        v79 = (((v64 >> 8) & 0xE0 | (BYTE2(v64) << 8)) >> 5) & 0x3FF;
        v82 = 29;
      }

      else
      {
        v73 = 0;
        v79 = 0;
        v332[0].i32[0] = (v64 >> 13) & 0xF;
        v69 = a8[4];
        if (v14)
        {
          v80 = 109;
        }

        else
        {
          v80 = 111;
        }

        v81 = v80 - v69;
        v82 = 17;
      }

      v86 = 0;
      LODWORD(v87) = 0;
      do
      {
        v87 = (v87 + 2 * DecodeColorEndpoints_baseCEMClass[v332[0].u32[v86 / 4]] + 2);
        v86 += 4;
      }

      while (4 * ((v64 >> 11) & 3) + 4 != v86);
      if (v87 > 0x12 || v81 < (13 * v87 + 4) / 5u)
      {
        goto LABEL_119;
      }

      v92 = 0;
      v329 = v66;
      v317 = v64;
      v316 = v79;
      while (1)
      {
        v93 = getColorBitsTritsQuints_kColorTrits[v92];
        v94 = getColorBitsTritsQuints_kColorQuints[v92];
        v95 = getColorBitsTritsQuints_kColorBits[v92];
        if (((8 * v87 * v93) | 4u) / 5 + v95 * v87 + (7 * v87 * v94 + 2) / 3u <= v81)
        {
          break;
        }

        if (++v92 == 21)
        {
          v95 = 0;
          v93 = 0;
          v94 = 0;
          v324 = 0;
          goto LABEL_132;
        }
      }

      v324 = getColorBitsTritsQuints_kUnquantizedColorRanges[v92];
LABEL_132:
      DecodeIntegerSequenceEncoding(v13, v82, v87, v95, v93, v94, &v333, *v54.i64, v55, v56);
      v99 = 0;
      v100 = 0;
      p_dst = &__dst;
      v102 = v329;
      do
      {
        v103 = 2 * DecodeColorEndpoints_baseCEMClass[v332[0].u32[v99]] + 2;
        if (2 * DecodeColorEndpoints_baseCEMClass[v332[0].u32[v99]] != -2)
        {
          v104 = v100;
          v105 = p_dst;
          v106 = (2 * DecodeColorEndpoints_baseCEMClass[v332[0].u32[v99]] + 2);
          do
          {
            *v105 = v333.u8[v104];
            v105 += 4;
            ++v104;
            --v106;
          }

          while (v106);
        }

        v100 += v103;
        ++v99;
        p_dst += 32;
      }

      while (v99 != v329);
      v315 = a7;
      if (v14)
      {
        a8[6] = (*(v13 + ((v73 - v69 + 126) >> 3)) >> ((v73 - v69 + 126) & 7)) & 3;
      }

      v107 = 0;
      v108 = 0;
      v109 = 0;
      a8[7] = 1;
      v314 = a8 + 56;
      v110 = 16 * ((v317 >> 11) & 3) + 16;
      v111 = &__dst;
      v112 = 654;
      v113 = vdupq_n_s32(0x780u);
      v321 = v113;
      v113.i32[0] = 2;
      v318 = v113;
      v114 = &unquantizedColorTable + 256 * v324;
      do
      {
        v115 = *(&v332[-163] + v112 * 4 - 8);
        v116 = &a8[v107 / 4];
        switch(v115)
        {
          case 0:
            v117 = v114[*v111];
            v118 = v114[v111[1]];
            goto LABEL_216;
          case 1:
            v117 = v114[v111[1]] & 0xC0 | (v114[*v111] >> 2);
            v118 = v117 + (v114[v111[1]] & 0x3F);
            if (v118 >= 0xFF)
            {
              v118 = 255;
            }

LABEL_216:
            v219.i32[0] = v117;
            v219.i32[1] = v117;
            v219.i64[1] = v117 | 0xFF00000000;
            v116[10] = v219;
            v113.i32[0] = v118;
            v113.i32[1] = v118;
            v113.i64[1] = v118 | 0xFF00000000;
            goto LABEL_221;
          case 2:
            v113.i32[0] = v114[v111[1]];
            v145.i32[0] = v113.i32[0];
            v145.i32[1] = v114[*v111];
            v97.i32[0] = v145.i32[1];
            v146 = vdup_lane_s8(vcgt_u8(*v97.i8, *v113.i8), 0);
            v147 = vshl_n_s32(vand_s8(v145, 0xFF000000FFLL), 4uLL);
            v98.i32[1] = v147.i32[1] | 8;
            *v97.i8 = vext_s8(vadd_s32(v147, 0x700000007), (*&v147 | 0x800000008), 4uLL);
            v148 = vbsl_s8(v146, *v97.i8, v147);
            v96 = vdupq_lane_s32(v148, 1);
            v96.i32[3] = 1920;
            v116[10] = v96;
            v113 = vdupq_lane_s32(v148, 0);
            v113.i32[3] = 1920;
            goto LABEL_221;
          case 3:
            v160 = v114[*v111];
            v161 = v114[v111[1]];
            v162 = (16 * v161) & 0xF00 | (2 * v160);
            v163 = (16 * v161) & 0xE00 | (4 * (v160 & 0x7F));
            if (v114[*v111] < 0)
            {
              v164 = 2;
            }

            else
            {
              v164 = 1;
            }

            if (v114[*v111] < 0)
            {
              v165 = 124;
            }

            else
            {
              v165 = 30;
            }

            if (v114[*v111] >= 0)
            {
              v163 = v162;
            }

            v166 = v163 + ((v161 << v164) & v165);
            if (v166 >= 0xFFF)
            {
              v166 = 4095;
            }

            v96.i64[0] = v321.i64[0];
            v167 = v163;
            v168 = v163;
            v113.i64[1] = __PAIR64__(v321.u32[3], v163);
            v116[10] = v113;
            v113.i32[0] = v166;
            v113.i32[1] = v166;
            v113.i32[2] = v166;
            goto LABEL_221;
          case 4:
            v113.i8[0] = v114[*v111];
            v123 = v114[v111[2]];
            v124 = *v113.i8;
            v124.i16[1] = v123;
            v125 = vzip1_s16(v124, v124);
            v125.i16[2] = v113.i16[0];
            v126 = v114[v111[3]];
            v113.i8[0] = v114[v111[1]];
            v97 = v113;
            v97.i16[1] = v126;
            *v97.i8 = vzip1_s16(*v97.i8, *v97.i8);
            v97.i16[2] = v113.i16[0];
            v127 = vmovl_u16(v125);
            v96.i64[0] = 0xFF000000FFLL;
            v96.i64[1] = 0xFF000000FFLL;
            v116[10] = vandq_s8(v127, v96);
            v113 = vandq_s8(vmovl_u16(*v97.i8), v96);
            v116[14] = v113;
            v128 = ~(v123 & v126) == 0;
            goto LABEL_245;
          case 5:
            v113.i8[0] = v114[*v111];
            v113.i8[4] = v114[v111[2]];
            v96.i8[0] = v114[v111[1]];
            v96.i8[4] = v114[v111[3]];
            v220 = vand_s8(*v96.i8, 0xFF000000FFLL);
            *v113.i8 = vshr_n_u32(vorr_s8((*&vadd_s32(v220, v220) & 0xFFFFFF01FFFFFF01), vand_s8(*v113.i8, 0xFF000000FFLL)), 1uLL);
            *v96.i8 = vadd_s32(vshr_n_s32(vorr_s8((*&vtst_s32((*&v220 & 0xFFFFFF40FFFFFF40), (*&v220 & 0xFFFFFF40FFFFFF40)) & 0xFFFFFF80FFFFFF80), (*&v220 & 0xFFFFFF7EFFFFFF7ELL)), 1uLL), *v113.i8);
            *v97.i8 = vand_s8(vcgez_s32(*v96.i8), vmin_u32(*v96.i8, 0xFF000000FFLL));
            v98 = vzip1q_s32(v97, v97);
            v98.i32[2] = v97.i32[0];
            v97 = vzip1q_s32(v113, v113);
            v97.i32[2] = v113.i32[0];
            v116[10] = v97;
            v116[14] = v98;
            *v113.i8 = vceq_s32(vzip2_s32(*v96.i8, *v113.i8), 0xFF000000FFLL);
            v185 = v113.i8[4] & v113.i8[0];
            goto LABEL_248;
          case 6:
            v226 = v114[v111[2]];
            v227 = v114[v111[3]];
            v113.i8[0] = v114[*v111];
            v113.i8[4] = v114[v111[1]];
            *v113.i8 = vand_s8(*v113.i8, 0xFF000000FFLL);
            *v96.i8 = vshr_n_u32(vmul_s32(vdup_n_s32(v227), *v113.i8), 8uLL);
            v96.i32[2] = (v227 * v226) >> 8;
            v96.i32[3] = 255;
            v116[10] = v96;
            v113.i64[1] = v226 | 0xFF00000000;
LABEL_221:
            v116[14] = v113;
            goto LABEL_240;
          case 7:
            v169 = v114[*v111];
            v170 = v114[v111[1]];
            v171 = v114[v111[2]];
            v172 = v114[v111[3]];
            v173 = (v171 >> 4) & 8 | (v170 >> 5) & 4;
            v174 = v169 >> 6 == 3;
            if (v169 >> 6 == 3)
            {
              v175 = 5;
            }

            else
            {
              v175 = 4;
            }

            if (v169 >> 6 == 3)
            {
              v176 = 0;
            }

            else
            {
              v176 = v169 >> 6;
            }

            v35 = v173 == 12;
            v177 = v173 == 12;
            v178 = v173 >> 2;
            if (v35)
            {
              v179 = v176;
            }

            else
            {
              v175 = v169 >> 6;
              v179 = v178;
            }

            v319 = v179;
            v180 = (v170 >> 6) & 1;
            v181 = (v170 >> 5) & 1;
            v182 = (v171 >> 6) & 1;
            v183 = (v171 >> 5) & 1;
            v184 = (v172 >> 6) & 1;
            v185 = 1;
            v186 = 1 << v175;
            v187 = v180 << 6;
            if (((1 << v175) & 0x30) == 0)
            {
              v187 = 0;
            }

            v188 = v187 & 0xFFFFFFE0 | v170 & 0x1F;
            v189 = 32 * v181;
            v190 = v182 << 6;
            if ((v186 & 0x30) == 0)
            {
              v190 = 0;
            }

            if ((v186 & 0x3A) == 0)
            {
              v189 = 0;
            }

            v191 = v188 | v189;
            v192 = v190 & 0xFFFFFFE0 | v171 & 0x1F;
            v193 = 32 * v183;
            if ((v186 & 0x3A) == 0)
            {
              v193 = 0;
            }

            v194 = v192 | v193;
            if ((v186 & 0x3D) != 0)
            {
              v195 = 63;
            }

            else
            {
              v195 = 31;
            }

            v196 = v195 & v172;
            if ((v186 & 0x2D) != 0)
            {
              v197 = v184 << 6;
            }

            else
            {
              v197 = 0;
            }

            v198 = (16 * v186) & (v183 << 6);
            v199 = v172 & (32 * v186) & 0x80 | v197 | v196;
            v200 = (v172 >> 1) & 0x40;
            if ((v186 & 0x3B) == 0)
            {
              v200 = 0;
            }

            v201 = v182 << 7;
            if (v175 > 3)
            {
              v201 = 0;
            }

            v202 = v181 << 8;
            v203 = v180 << 8;
            if ((v186 & 0xA) == 0)
            {
              v203 = 0;
            }

            if ((v186 & 5) == 0)
            {
              v202 = 0;
            }

            v204 = v180 << 9;
            if ((v186 & 5) == 0)
            {
              v204 = 0;
            }

            v205 = v183 << 10;
            if (v175)
            {
              v205 = 0;
            }

            v206 = v201 & 0xFFFFFFC0 | v169 & 0x3F | v205;
            v102 = v329;
            v207 = v206 | v200;
            v208 = v198 | (8 * v186) & (v184 << 7);
            v110 = 16 * ((v317 >> 11) & 3) + 16;
            v209 = v207 | v208 | v202 | v203 | v204 | (16 * v172) & (v186 << 8) & 0x200 | (v186 << 9) & (v184 << 10);
            LOBYTE(v208) = computeUnquantizedColorEndPoints_shamts[v175];
            v210 = v209 << v208;
            v211 = v191 << v208;
            v212 = v194 << v208;
            v213 = v199 << v208;
            if (!v177 || !v174)
            {
              v211 = v210 - v211;
            }

            v214.i32[3] = v321.i32[3];
            v214.i64[0] = __PAIR64__(v211, v210);
            v215 = v210 - v212;
            if (v177 && v174)
            {
              v215 = v212;
            }

            v214.i32[2] = v215;
            v96 = vdupq_n_s32(v213);
            v97.i32[0] = v319;
            v96.i32[3] = 0;
            v98.i32[0] = 1;
            v216.i64[0] = vrev64q_s32(v214).u64[0];
            v216.i64[1] = v214.i64[1];
            v217 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v97, v98), 0), v216, v214);
            v98 = vrev64q_s32(v217);
            v218 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v97, v318), 0), vextq_s8(v98, v98, 0xCuLL), v217);
            v98.i32[1] = 0;
            v98.i64[1] = 0;
            v216.i64[0] = 0xF0000000FLL;
            v216.i64[1] = 0xF0000000FLL;
            v97 = vminq_s32(vmaxq_s32(v218, 0), v216);
            v116[14] = v97;
            v113 = vminq_s32(vmaxq_s32(vsubq_s32(v218, v96), 0), v216);
            v116[10] = v113;
            goto LABEL_248;
          case 8:
            v231 = v114[*v111];
            v232 = v114[v111[1]];
            v233 = v114[v111[2]];
            v234 = v114[v111[3]];
            v235 = v114[v111[4]];
            v236 = v114[v111[5]];
            v113.i32[3] = 255;
            if (v235 + v231 + v233 <= v236 + v232 + v234)
            {
              v113.i32[0] = v114[*v111];
              v113.i32[1] = v114[v111[2]];
              v113.i32[2] = v114[v111[4]];
              v235 = v114[v111[5]];
            }

            else
            {
              v113.i32[0] = (v236 + v232) >> 1;
              v113.i32[1] = (v236 + v234) >> 1;
              v113.i32[2] = v114[v111[5]];
              v232 = (v235 + v231) >> 1;
              v234 = (v235 + v233) >> 1;
            }

            v96.i64[0] = __PAIR64__(v234, v232);
            v96.i64[1] = v235 | 0xFF00000000;
            goto LABEL_239;
          case 9:
            v139 = v114[v111[5]];
            v113.i8[0] = v114[v111[1]];
            v113.i8[4] = v114[v111[3]];
            v96.i8[0] = v114[*v111];
            v96.i8[4] = v114[v111[2]];
            *v98.i8 = vorr_s8((*&vtst_s32(*v113.i8, 0x4000000040) & 0xFFFFFFC0FFFFFFC0), vand_s8(vshr_n_u32(*v113.i8, 1uLL), 0x3F0000003FLL));
            *v113.i8 = vorr_s8(vand_s8(*v113.i8, 0x8000000080), vshr_n_u32(vand_s8(*v96.i8, 0xFF000000FFLL), 1uLL));
            v140 = ((v139 << 25) >> 31) & 0xFFFFFFC0 | (v139 >> 1) & 0x3F;
            v141 = v139 & 0x80 | (v114[v111[4]] >> 1);
            v142 = vadd_s32(*v98.i8, *v113.i8);
            if ((vadd_s32(vdup_lane_s32(*v98.i8, 1), *v98.i8).u32[0] + v140) < 0)
            {
              v239 = v140 + v141;
              v240 = vshr_n_s32(vadd_s32(v142, vdup_n_s32(v239)), 1uLL);
              v241 = vadd_s32(vdup_n_s32(v141), *v113.i8);
              *v97.i8 = vand_s8(vcgez_s32(v240), vmin_u32(v240, 0xFF000000FFLL));
              if (v239 >= 0xFF)
              {
                v242 = 255;
              }

              else
              {
                v242 = v239;
              }

              if (v239 >= 0)
              {
                v243 = v242;
              }

              else
              {
                v243 = 0;
              }

              v97.i64[1] = v243 | 0xFF00000000;
              *v96.i8 = vshr_n_u32(v241, 1uLL);
              v113 = v97;
            }

            else
            {
              v113.i32[2] = v139 & 0x80 | (v114[v111[4]] >> 1);
              v113.i32[3] = 255;
              *v97.i8 = vmin_u32(v142, 0xFF000000FFLL);
              *v96.i8 = vand_s8(vcgez_s32(v142), *v97.i8);
              v143 = v140 + v141;
              if (v143 >= 0xFF)
              {
                v144 = 255;
              }

              else
              {
                v144 = v143;
              }

              if (v143 >= 0)
              {
                v141 = v144;
              }

              else
              {
                v141 = 0;
              }
            }

            v96.i64[1] = v141 | 0xFF00000000;
LABEL_239:
            v116[10] = v113;
            v116[14] = v96;
            goto LABEL_240;
          case 10:
            v228 = v114[v111[2]];
            v229 = v114[v111[3]];
            v113.i8[0] = v114[*v111];
            v113.i8[4] = v114[v111[1]];
            *v113.i8 = vand_s8(*v113.i8, 0xFF000000FFLL);
            *v96.i8 = vshr_n_u32(vmul_s32(vdup_n_s32(v229), *v113.i8), 8uLL);
            v96.i32[2] = (v229 * v228) >> 8;
            v230 = v114[v111[5]];
            v96.i32[3] = v114[v111[4]];
            v116[10] = v96;
            v113.i64[1] = __PAIR64__(v230, v228);
            v116[14] = v113;
            v122 = v230 & v96.i32[3];
            goto LABEL_228;
          case 11:
            decode_mode11(v111, v324, v116 + 10, v116 + 14);
            v110 = 16 * ((v317 >> 11) & 3) + 16;
            v102 = v329;
LABEL_240:
            v185 = 1;
            goto LABEL_248;
          case 12:
            v129 = v114[*v111];
            v130 = v114[v111[1]];
            v131 = v114[v111[2]];
            v132 = v114[v111[3]];
            v133 = v114[v111[4]];
            v134 = v114[v111[5]];
            v135 = v114[v111[6]];
            v113.i64[0] = __PAIR64__(v135, v133);
            v136 = v114[v111[7]];
            v97.i64[0] = __PAIR64__(v136, v134);
            if (v133 + v129 + v131 <= v134 + v130 + v132)
            {
              v96.i32[0] = v114[*v111];
              v96.i32[1] = v114[v111[2]];
              v96.i64[1] = __PAIR64__(v135, v133);
              v98.i32[0] = v114[v111[1]];
              v98.i32[1] = v114[v111[3]];
              v98.i64[1] = __PAIR64__(v136, v134);
            }

            else
            {
              v137.i32[0] = v134 + v130;
              v137.i32[1] = v134 + v132;
              *v96.i8 = vshr_n_u32(v137, 1uLL);
              v96.i64[1] = __PAIR64__(v136, v134);
              v138 = v133 + v131;
              v97.i32[1] = v138;
              *v98.i8 = vshr_n_u32(__PAIR64__(v138, v133 + v129), 1uLL);
              v98.i64[1] = __PAIR64__(v135, v133);
            }

            v116[10] = v96;
            v116[14] = v98;
            v122 = v135 & v136;
            goto LABEL_228;
          case 13:
            v113.i8[0] = v114[v111[1]];
            v113.i8[2] = v114[v111[3]];
            v113.i8[4] = v114[v111[5]];
            v113.i8[6] = v114[v111[7]];
            v221.i16[0] = v114[*v111];
            v221.i16[1] = v114[v111[2]];
            v221.i16[2] = v114[v111[4]];
            v221.i16[3] = v114[v111[6]];
            v222 = vand_s8(*v113.i8, 0x80008000800080);
            v113 = vorrq_s8((*&vmvnq_s8(vmovl_s16(vceqz_s16(vand_s8(*v113.i8, 0x40004000400040)))) & __PAIR128__(0xFFFFFFC0FFFFFFC0, 0xFFFFFFC0FFFFFFC0)), vmovl_u16(vand_s8(vshr_n_u16(*v113.i8, 1uLL), 0x3F003F003F003FLL)));
            v223 = vorr_s8(v222, vshr_n_u16(v221, 1uLL));
            v96 = vmovl_u16(v223);
            v224 = vaddw_u16(v113, v223);
            if (v113.i32[1] + v113.i32[0] + v113.i32[2] < 0)
            {
              v244 = vextq_s8(v224, v224, 8uLL).u64[0];
              v245.i64[0] = vshrq_n_s32(vaddq_s32(vaddq_s32(v113, v96), vdupq_laneq_s32(v224, 2)), 1uLL).u64[0];
              v245.i64[1] = v244;
              v246.i64[0] = 0xFF000000FFLL;
              v246.i64[1] = 0xFF000000FFLL;
              v98 = vandq_s8(vcgezq_s32(v245), vminq_u32(v245, v246));
              v97.i64[0] = vshrq_n_u32(vaddq_s32(vdupq_laneq_s32(v96, 2), v96), 1uLL).u64[0];
              v97.i64[1] = v96.i64[1];
            }

            else
            {
              v225.i64[0] = 0xFF000000FFLL;
              v225.i64[1] = 0xFF000000FFLL;
              v97 = vandq_s8(vcgezq_s32(v224), vminq_u32(v224, v225));
              v98 = v96;
            }

            v116[10] = v98;
            v116[14] = v97;
            v128 = v96.i32[3] == 255 && v113.i32[3] == 255;
            goto LABEL_245;
          case 14:
            decode_mode11(v111, v324, v116 + 10, v116 + 14);
            v110 = 16 * ((v317 >> 11) & 3) + 16;
            v102 = v329;
            v119 = v114[v111[6]];
            v120 = v114[v111[7]];
            v121 = &a8[v107 / 4];
            v121[43] = v119;
            v121[59] = v120;
            v122 = v120 & v119;
LABEL_228:
            v128 = v122 == 255;
            goto LABEL_245;
          case 15:
            decode_mode11(v111, v324, v116 + 10, v116 + 14);
            v110 = 16 * ((v317 >> 11) & 3) + 16;
            v102 = v329;
            v149 = v114[v111[6]];
            v150 = v114[v111[7]];
            v151 = (v150 >> 6) & 2 | (v149 >> 7);
            v152 = v149 & 0x7F;
            v153 = v150 & 0x7F;
            v154 = (v153 << (v151 + 1)) & 0x780 | v152;
            v155 = (((0x3Fu >> v151) & v150 ^ (0x20u >> v151)) - (0x20u >> v151) + v154) << (4 - v151);
            v156 = v155 & ~(v155 >> 31);
            if (v156 >= 4095)
            {
              v156 = 4095;
            }

            v157 = 32 * v152;
            v158 = 32 * v153;
            if (v151 == 3)
            {
              v156 = v158;
            }

            else
            {
              v157 = v154 << (4 - v151);
            }

            v159 = &a8[v107 / 4];
            v159[43] = v157;
            v159[59] = v156;
            v128 = v157 == 1920 && v156 == 1920;
LABEL_245:
            v185 = v128;
LABEL_248:
            v238 = 0;
            v237 = v185 & 1;
            LODWORD(v116) = a8[7];
            break;
          default:
            v237 = 0;
            v238 = -1;
            break;
        }

        v109 |= v238;
        a8[7] = v237 & v116;
        a8[v112] = DecodeColorEndpoints_hdrLerpMode[v115 & 0xF];
        v247 = (0xC88Cu >> (v115 & 0xF)) & 1;
        if (a8[653])
        {
          v247 = 0;
        }

        v108 |= v247;
        v107 += 16;
        ++v112;
        v111 += 8;
      }

      while (v110 != v107);
      if (v108)
      {
        result = -5;
LABEL_120:
        v88 = (v10 * v9);
        if (v10 * v9)
        {
          v89 = a8 + 72;
          if (a8[653])
          {
            v90 = 0xFFFF;
          }

          else
          {
            v90 = 0;
          }

          LODWORD(v91) = 0xFFFF;
          *(&v91 + 1) = 0xFFFF0000FFFFLL;
          DWORD1(v91) = v90;
          do
          {
            *v89++ = v91;
            --v88;
          }

          while (v88);
        }

        goto LABEL_74;
      }

      if (v109)
      {
LABEL_119:
        result = -3;
        goto LABEL_120;
      }

      a8[2] = v102;
      a8[3] = v316;
      v248 = a8[1];
      if (v248 == v10 && *a8 == v9)
      {
        v249 = v10 * v9;
        if (v249)
        {
          v250 = (a8 + 8);
          v251 = &__dst;
          v252 = v10 * v9;
          do
          {
            v253 = *v250++;
            *v251 = v253;
            v251 += 2;
            --v252;
          }

          while (v252);
          if (a8[5])
          {
            v254 = (a8 + 24);
            v255 = &v333;
            do
            {
              v256 = *v254++;
              v255->i16[0] = v256;
              v255 = (v255 + 2);
              --v249;
            }

            while (v249);
          }
        }
      }

      else
      {
        v325 = *a8;
        if (v10)
        {
          v257 = 0;
          v327 = 0;
          v322 = v248 + 0x3FFFFF;
          do
          {
            if (v9)
            {
              v258 = 0;
              v259 = 0;
              v260 = v322 * (v327 * (((v10 >> 1) + 1024) / (v10 - 1))) + 32;
              v261 = (v260 >> 6) & 0xF;
              v262 = ((v260 >> 10) & 0xFFF) * v325;
              v263 = v257 * v9;
              v264 = a8[5];
              do
              {
                v265 = (v325 + 0x3FFFFF) * (v259 * (((v9 >> 1) + 1024) / (v9 - 1))) + 32;
                v266 = (v265 >> 10) & 0xFFF;
                v267 = (v265 >> 6) & 0xF;
                v268 = v266 + v262;
                v269 = (v266 + v262);
                v270 = v325 + v268;
                v271 = (v267 * v261 + 8) >> 4;
                v272 = (v271 - (v261 + v267) + 16);
                v273 = (v267 - v271);
                v274 = (v261 - v271);
                v275 = v258 + v263;
                *&v335[2 * v275 - 1] = (v273 * *(a8 + v269 + 33) + v272 * *(a8 + v269 + 32) + v274 * *(a8 + v270 + 32) + v271 * *(a8 + v270 + 33) + 8) >> 4;
                if (v264)
                {
                  v333.i16[v275] = (v273 * *(a8 + v269 + 97) + v272 * *(a8 + v269 + 96) + v274 * *(a8 + v270 + 96) + v271 * *(a8 + v270 + 97) + 8) >> 4;
                }

                v258 = ++v259;
              }

              while (v259 < v9);
            }

            v257 = ++v327;
          }

          while (v327 < v10);
        }
      }

      v276 = 0;
      v277 = a8[652];
      v278 = vdupq_n_s32(0x101u);
      v279 = (a8 + 654);
      while (1)
      {
        if (v277)
        {
          v332[v276 / 0x10] = (*&vshlq_n_s32(*&v314[v276 / 4 - 16], 8uLL) | __PAIR128__(0x8000000080, 0x8000000080));
          v280 = *&vshlq_n_s32(*&v314[v276 / 4], 8uLL) | __PAIR128__(0x8000000080, 0x8000000080);
        }

        else
        {
          v281 = *v279;
          if (*v279 == 3)
          {
            v332[v276 / 0x10] = vmulq_s32(*&v314[v276 / 4 - 16], xmmword_298497000);
            v280 = vmulq_s32(*&v314[v276 / 4], xmmword_298497000);
          }

          else if (v281 == 1)
          {
            v332[v276 / 0x10] = vshlq_n_s32(*&v314[v276 / 4 - 16], 4uLL);
            v280 = vshlq_n_s32(*&v314[v276 / 4], 4uLL);
          }

          else
          {
            if (v281)
            {
              goto LABEL_276;
            }

            v332[v276 / 0x10] = vmulq_s32(*&v314[v276 / 4 - 16], v278);
            v280 = vmulq_s32(*&v314[v276 / 4], v278);
          }
        }

        v331[v276 / 0x10] = v280;
LABEL_276:
        v276 += 16;
        ++v279;
        if (16 * ((v317 >> 11) & 3) + 16 == v276)
        {
          if (a8[5])
          {
            v282 = DecodeASTC_RGBA_vec_masks[a8[6]];
          }

          else
          {
            v282 = 0uLL;
          }

          v328 = v282;
          PartitionTable = getPartitionTable(v315, v316, v329);
          v284 = v10 * v9;
          if (v284)
          {
            v285 = PartitionTable;
            v286 = 0;
            v330 = vmvnq_s8(v328);
            v323 = vdupq_n_s32(0x477FE000u);
            v326 = vdupq_n_s32(0x37800000u);
            v320 = vdupq_n_s32(0xC77FE000);
            do
            {
              v287 = v286;
              v288 = v285[v286];
              v289.i64[0] = 0x2000000020;
              v289.i64[1] = 0x2000000020;
              v290 = vsraq_n_s32(v332[v288], vmlaq_s32(v289, vaddq_s32(vandq_s8(vdupq_n_s32(v333.u16[v286]), v328), vandq_s8(vdupq_n_s32(*&v335[2 * v286 - 1]), v330)), vsubq_s32(v331[v288], v332[v288])), 6uLL);
              if (a8[652])
              {
                v290.i64[0] = ConvertSRGBtoLinear(v290);
              }

              v291 = a8[v288 + 654];
              if (v291)
              {
                v292.i64[0] = 0x700000007;
                v292.i64[1] = 0x700000007;
                v293 = vandq_s8(v290, v292);
                v294 = vmovn_s32(v293);
                v295.i64[0] = 0x20000000200;
                v295.i64[1] = 0x20000000200;
                v296 = vmull_u16(v294, 0x3000300030003);
                v297.i64[0] = 0x700000007;
                v297.i64[1] = 0x700000007;
                v298 = vmlal_u16(v297, v294, 0x5000500050005);
                v299.i64[0] = 0x100000001;
                v299.i64[1] = 0x100000001;
                v300 = vaddq_s32(vshlq_n_s32(v293, 2uLL), v299);
                v301 = vbslq_s8(vcgtq_u32(v295, v293), v296, v298);
                v296.i64[0] = 0x500000005;
                v296.i64[1] = 0x500000005;
                v302 = vaddq_s32(v293, v296);
                v296.i64[0] = 0x300000003;
                v296.i64[1] = 0x300000003;
                v303 = vbslq_s8(vcgtq_u32(v296, v302), v301, v300);
                v301.i64[0] = 0x7C0000007C00;
                v301.i64[1] = 0x7C0000007C00;
                v304 = vsraq_n_s32(vandq_s8(vshrq_n_u32(v290, 1uLL), v301), v303, 3uLL);
                v303.i64[0] = 0x7B0000007BLL;
                v303.i64[1] = 0x7B0000007BLL;
                v305 = vminq_s32(v304, v303);
                if (v291 == 3)
                {
                  v306.i64[0] = 0xFFFF0000FFFFLL;
                  v306.i64[1] = 0xFFFF0000FFFFLL;
                  v307.i64[0] = 0x1000000010000;
                  v307.i64[1] = 0x1000000010000;
                  v308 = vbslq_s8(vceqq_s32(v290, v306), v307, v290);
                  v306.i64[0] = 0x300000003;
                  v306.i64[1] = 0x300000003;
                  v309 = vmaxnmq_f32(vminnmq_f32(vmulq_f32(vcvtq_f32_u32(vandq_s8(v308, vcgtq_s32(v308, v306))), v326), v323), v320);
                  v306.i64[0] = 0x1F0000001FLL;
                  v306.i64[1] = 0x1F0000001FLL;
                  v305.i32[3] = vmovl_u16(vcvt_f16_f32(vandq_s8(v309, v306))).i32[3];
                }
              }

              else if (a8[653])
              {
                v310.i64[0] = 0xFFFF0000FFFFLL;
                v310.i64[1] = 0xFFFF0000FFFFLL;
                v311.i64[0] = 0x1000000010000;
                v311.i64[1] = 0x1000000010000;
                v312 = vbslq_s8(vceqq_s32(v290, v310), v311, v290);
                v310.i64[0] = 0x300000003;
                v310.i64[1] = 0x300000003;
                v313 = vmaxnmq_f32(vminnmq_f32(vmulq_f32(vcvtq_f32_u32(vandq_s8(v312, vcgtq_s32(v312, v310))), v326), v323), v320);
                v310.i64[0] = 0x1F0000001FLL;
                v310.i64[1] = 0x1F0000001FLL;
                v305 = vmovl_u16(vcvt_f16_f32(vandq_s8(v313, v310)));
              }

              else
              {
                v305 = v290;
              }

              *&a8[4 * v287 + 72] = v305;
              v286 = v287 + 1;
            }

            while (v284 > (v287 + 1));
          }

          goto LABEL_32;
        }
      }
  }

  __break(1u);
  return result;
}

void *DecodeIntegerSequenceEncoding(uint64_t a1, unint64_t a2, size_t __n, unsigned int a4, int a5, int a6, void *__dst, double a8, uint8x8_t a9, uint8x8_t a10)
{
  v31 = *MEMORY[0x29EDCA608];
  memset(v30, 0, sizeof(v30));
  memset(v29, 0, sizeof(v29));
  if (__n)
  {
    v10 = 0;
    v11 = 0;
    v12 = __n;
    v13 = v29;
    do
    {
      *v13 = (*(a1 + (a2 >> 3)) >> (a2 & 7)) & ~(-1 << a4);
      a2 = a2 + a4;
      if (a5)
      {
        v14 = DecodeIntegerSequenceEncoding_bitsToRead[v10];
        *(v30 + v11) |= ((*(a1 + (a2 >> 3)) >> (a2 & 7)) & ~(-1 << v14)) << DecodeIntegerSequenceEncoding_blockShift[v10];
        LODWORD(a2) = v14 + a2;
        v11 += DecodeIntegerSequenceEncoding_counterIncrement[v10];
        v10 = DecodeIntegerSequenceEncoding_nextCounter[v10];
      }

      if (a6)
      {
        v15 = DecodeIntegerSequenceEncoding_bitsToRead_1[v10];
        *(v30 + v11) |= ((*(a1 + (a2 >> 3)) >> (a2 & 7)) & ~(-1 << v15)) << DecodeIntegerSequenceEncoding_blockShift_2[v10];
        LODWORD(a2) = v15 + a2;
        v11 += DecodeIntegerSequenceEncoding_counterIncrement_4[v10];
        v10 = DecodeIntegerSequenceEncoding_nextCounter_3[v10];
      }

      ++v13;
      --v12;
    }

    while (v12);
    if (a5)
    {
      LODWORD(v16) = (__n + 4) / 5u;
      v17 = vdupq_n_s32(a4);
      if (v16 <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = v16;
      }

      v18 = v29 + 4;
      v19 = v30;
      do
      {
        v20 = *v19++;
        v21 = &tritsTable + 5 * v20;
        a9.i32[0] = *v21;
        a10.i32[0] = *(v18 - 1);
        a10 = vmovl_u8(a10).u64[0];
        a9 = vuzp1_s8(vorr_s8(a10, vmovn_s32(vshlq_u32(vmovl_u16(*&vmovl_u8(a9)), v17))), *v17.i8);
        *(v18 - 1) = a9.i32[0];
        *v18 |= v21[4] << a4;
        v18 += 5;
        --v16;
      }

      while (v16);
    }
  }

  if (a6 && __n)
  {
    LODWORD(v22) = (__n + 2) / 3u;
    if (v22 <= 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = v22;
    }

    v23 = v29 + 2;
    v24 = v30;
    do
    {
      v25 = *v24++;
      v26 = &quintsTable + 3 * v25;
      *(v23 - 2) |= *v26 << a4;
      *(v23 - 1) |= v26[1] << a4;
      *v23 |= v26[2] << a4;
      v23 += 3;
      --v22;
    }

    while (v22);
  }

  result = memcpy(__dst, v29, __n);
  v28 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t decode_mode11(uint64_t result, unsigned int a2, int32x4_t *a3, int32x4_t *a4)
{
  v4 = &unquantizedColorTable + 256 * a2;
  v5 = v4[*result];
  v6 = v4[*(result + 4)];
  v7 = v4[*(result + 8)];
  v8 = v4[*(result + 12)];
  v9 = v4[*(result + 16)];
  v10 = v4[*(result + 20)];
  v11 = (v10 >> 6) & 2 | (v9 >> 7);
  if (v11 == 3)
  {
    v13 = vdupq_n_s32(0x780u);
    v12.i32[3] = v13.i32[3];
    v12.i32[0] = 16 * v5;
    v12.i32[1] = 16 * v7;
    v12.i32[2] = 32 * (v9 & 0x7F);
    *a3 = v12;
    v13.i32[0] = 16 * v6;
    v13.i32[1] = 16 * v8;
    v13.i32[2] = 32 * (v10 & 0x7F);
  }

  else
  {
    v14 = (v7 >> 6) & 2 | (v6 >> 7) | (v8 >> 5) & 4;
    v15 = -decode_mode11_dbitstab[v14];
    v16 = ((v9 & 0x7F) << v15) >> v15;
    v17 = ((v10 & 0x7F) << v15) >> v15;
    v18 = (v8 >> 6) & 1;
    v19 = (v9 >> 6) & 1;
    v20 = (v10 >> 6) & 1;
    v21 = 1 << ((v7 >> 6) & 2 | (v6 >> 7) | (v8 >> 5) & 4);
    v22 = (8 * v7) & 0x200;
    if ((v21 & 0xA4) == 0)
    {
      v22 = 0;
    }

    v23 = (16 * v9) & 0x200;
    if ((v21 & 0x50) == 0)
    {
      v23 = 0;
    }

    v24 = (32 * v10) & 0x400;
    if ((v21 & 0x50) == 0)
    {
      v24 = 0;
    }

    v25 = v18 << 10;
    if ((v21 & 0xA0) == 0)
    {
      v25 = 0;
    }

    v26 = v19 << 11;
    if (v14 < 6)
    {
      v26 = 0;
    }

    v27 = v26 & 0xFFFFFEFF | (((v6 >> 6) & 1) << 8) | v22 | (v21 << 6) & (v19 << 9) | v23 | v24 | v25 | v5;
    v28 = (16 * v21) & (v18 << 6) & 0xFFFFFFC0 | v6 & 0x3F;
    v29 = v20 << 6;
    if ((v21 & 0xE8) == 0)
    {
      v29 = 0;
    }

    v30 = v28 | (4 * v21) & (v19 << 7) | v29;
    if ((v21 & 0x5B) != 0)
    {
      v31 = 127;
    }

    else
    {
      v31 = 63;
    }

    v32 = v31 & v7;
    v33 = v31 & v8;
    if ((v21 & 0x12) != 0)
    {
      v34 = v19 << 7;
    }

    else
    {
      v34 = 0;
    }

    v35 = v32 | v34;
    v36 = v20 << 7;
    if ((v21 & 0x12) == 0)
    {
      v36 = 0;
    }

    v37 = (v14 >> 1) ^ 3;
    v38 = v27 - v35;
    result = 1920;
    v39 = vdupq_n_s32(0x780u);
    v40 = v27 - (v33 | v36);
    v41.i32[3] = v39.i32[3];
    v41.i32[0] = v27 << v37;
    v41.i32[1] = v38 << v37;
    v41.i32[2] = v40 << v37;
    v42.i64[0] = 0xF0000000FLL;
    v42.i64[1] = 0xF0000000FLL;
    v13 = vminq_s32(vmaxq_s32(v41, 0), v42);
    v39.i32[0] = (v27 - v30) << v37;
    v39.i32[1] = (v38 - (v30 + v16)) << v37;
    v39.i32[2] = (v40 - (v30 + v17)) << v37;
    v43 = vminq_s32(vmaxq_s32(v39, 0), v42);
    if (v11 == 2)
    {
      v46 = vrev64q_s32(v43);
      v43 = vextq_s8(v46, v46, 0xCuLL);
      v47 = vrev64q_s32(v13);
      v13 = vextq_s8(v47, v47, 0xCuLL);
    }

    else if (v11 == 1)
    {
      v44.i64[0] = vrev64q_s32(v43).u64[0];
      v44.i64[1] = v43.i64[1];
      v45.i64[0] = vrev64q_s32(v13).u64[0];
      v45.i64[1] = v13.i64[1];
      v13 = v45;
      v43 = v44;
    }

    *a3 = v43;
  }

  *a4 = v13;
  return result;
}

uint64_t encode_bc1(float32x4_t *a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x29EDCA608];
  v3 = a1[38];
  v13[12] = a1[37];
  v13[13] = v3;
  v4 = a1[40];
  v13[14] = a1[39];
  v13[15] = v4;
  v5 = a1[34];
  v13[8] = a1[33];
  v13[9] = v5;
  v6 = a1[36];
  v13[10] = a1[35];
  v13[11] = v6;
  v7 = a1[30];
  v13[4] = a1[29];
  v13[5] = v7;
  v8 = a1[32];
  v13[6] = a1[31];
  v13[7] = v8;
  v9 = a1[26];
  v13[0] = a1[25];
  v13[1] = v9;
  v10 = a1[28];
  v13[2] = a1[27];
  v13[3] = v10;
  result = EncodeBC1(a3, v13, 1);
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t EncodeBC1(uint64_t result, float32x4_t *a2, int a3)
{
  v142 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    v4 = &a2[1].i32[3];
    v5 = 0uLL;
    v6 = 16;
    v7 = vdupq_n_s64(1uLL);
    do
    {
      v8.i32[0] = *(v4 - 4);
      v8.i32[1] = *v4;
      v9 = vcltz_f32(v8);
      v10.i64[0] = v9.u32[0];
      v10.i64[1] = v9.u32[1];
      v5 = vaddq_s64(v5, vandq_s8(v10, v7));
      v4 += 8;
      v6 -= 2;
    }

    while (v6);
    v11 = vaddvq_s64(v5);
    if (v11 == 16)
    {
      *result = -65536;
      goto LABEL_74;
    }

    if (v11)
    {
      v12 = 3;
    }

    else
    {
      v12 = 4;
    }
  }

  else
  {
    v12 = 4;
  }

  v13 = 0;
  _S4 = 31.0;
  _S5 = 1115422720;
  _S0 = 1036937012;
  do
  {
    _Q7 = a2[v13];
    v18.f32[0] = ((_Q7.f32[0] * 31.0) + 0.5) * 0.032258;
    __asm
    {
      FMLA            S17, S5, V7.S[1]
      FMLA            S18, S4, V7.S[2]
    }

    v18.f32[1] = _S17;
    *&v25 = vmul_f32(v18, 0x3C8208213E981530);
    *(&v25 + 2) = (_S18 * 0.032258) * 0.10078;
    HIDWORD(v25) = 1.0;
    *&v138[v13 * 16] = v25;
    ++v13;
  }

  while (v13 != 16);
  v26 = 0;
  v27 = xmmword_298492170;
  v28 = xmmword_298499160;
  do
  {
    v29 = *&v138[v26];
    v36 = vcgtq_f32(v28, v29);
    v30 = vmovn_s32(v36);
    v31 = vbslq_s8(vmovl_s16(vdup_lane_s16(v30, 0)), v29, v28);
    v28.i32[0] = v31.i32[0];
    v32 = vbslq_s8(vmovl_s16(vdup_lane_s16(v30, 1)), v29, v28);
    v28.i32[1] = v32.i32[1];
    v33 = vbslq_s8(v36, v29, v28);
    v28.i32[2] = v33.i32[2];
    v34 = vcgtq_f32(v29, v27);
    v35 = vmovn_s32(v34);
    v36.i32[0] = vbslq_s8(vmovl_s16(vdup_lane_s16(v35, 0)), v29, v27).u32[0];
    v27.i32[0] = v36.i32[0];
    v37 = vbslq_s8(vmovl_s16(vdup_lane_s16(v35, 1)), v29, v27);
    v27.i32[1] = v37.i32[1];
    v38 = vbslq_s8(v34, v29, v27);
    v27.i32[2] = v38.i32[2];
    v26 += 16;
  }

  while (v26 != 256);
  v39 = &_ZZL11OptimizeRGBPDv4_fS0_PKS_jjE3pC4;
  if (v12 == 3)
  {
    v39 = &_ZZL11OptimizeRGBPDv4_fS0_PKS_jjE3pC3;
  }

  v40 = &_ZZL11OptimizeRGBPDv4_fS0_PKS_jjE3pD4;
  v36.i32[1] = v37.i32[1];
  v31.i32[1] = v32.i32[1];
  if (v12 == 3)
  {
    v40 = &_ZZL11OptimizeRGBPDv4_fS0_PKS_jjE3pD3;
  }

  v41 = vsub_f32(*v36.i8, *v31.i8);
  v42 = *&v38.i32[2] - *&v33.i32[2];
  v43 = (COERCE_FLOAT(vmul_f32(v41, v41).i32[1]) + (v41.f32[0] * v41.f32[0])) + (v42 * v42);
  if (v43 >= 1.1755e-38)
  {
    v46 = 0;
    v47 = vmul_n_f32(v41, 1.0 / v43);
    *v38.i32 = v42 * (1.0 / v43);
    v48 = vmul_f32(vadd_f32(*v36.i8, *v31.i8), 0x3F0000003F000000);
    v49 = 0.0;
    v50 = 0.0;
    v51 = 0.0;
    v52 = 0.0;
    do
    {
      v53 = vmul_f32(v47, vsub_f32(*&v138[v46], v48));
      v54 = *v38.i32 * (COERCE_FLOAT(*&v138[v46 + 8]) - ((*&v38.i32[2] + *&v33.i32[2]) * 0.5));
      v55 = vaddv_f32(v53);
      v49 = v49 + ((v54 + v55) * (v54 + v55));
      v50 = v50 + ((v55 - v54) * (v55 - v54));
      v53.f32[0] = v53.f32[0] - v53.f32[1];
      v51 = v51 + ((v54 + v53.f32[0]) * (v54 + v53.f32[0]));
      v52 = v52 + ((v53.f32[0] - v54) * (v53.f32[0] - v54));
      v46 += 16;
    }

    while (v46 != 256);
    v56 = 0;
    v139 = v50;
    v140 = v51;
    v57 = 1;
    v141 = v52;
    do
    {
      if (*&v138[4 * v57 + 328] > v49)
      {
        v56 = v57;
        v49 = *&v138[4 * v57 + 328];
      }

      ++v57;
    }

    while (v57 != 4);
    v32.i64[0] = 0;
    v31.i64[0] = v56 & 2;
    v58 = vceqq_s64(v31, v32);
    v59 = vandq_s8(v28, v58);
    v60 = vdupq_lane_s64(v58.i64[0], 0);
    v61 = vbicq_s8(v27, v60);
    v62 = vorrq_s8(vandq_s8(v27, v58), vbicq_s8(v28, v60));
    v45 = v27;
    v45.i32[1] = v62.i32[1];
    v63 = vorrq_s8(v59, v61);
    v44 = v28;
    v44.i32[1] = v63.i32[1];
    v63.i64[0] = v56 & 1;
    v64 = vdupq_lane_s64(vceqq_s64(v63, v32).i64[0], 0);
    v45.i32[2] = vbslq_s8(v64, *&v27, *&v28).i32[2];
    v44.i32[2] = vbslq_s8(v64, *&v28, *&v27).i32[2];
    if (v43 >= 0.00024414)
    {
      v100 = 0;
      v101 = (v12 - 1);
      do
      {
        for (i = 0; i != v12; *&v138[16 * i++ + 256] = v106)
        {
          v103 = v39[i];
          v104 = v40[i];
          *&v105 = (v45.f32[2] * v104) + (v44.f32[2] * v103);
          *&v106 = vmlaq_n_f32(vmulq_n_f32(v45, v104), v44, v103).u64[0];
          *(&v106 + 1) = __PAIR64__(1.0, v105);
        }

        v107 = vsubq_f32(v45, v44).u64[0];
        v108 = v45.f32[2] - v44.f32[2];
        v109 = (vmuls_lane_f32(v107.f32[1], v107, 1) + (v107.f32[0] * v107.f32[0])) + (v108 * v108);
        if (v109 < 0.00024414)
        {
          break;
        }

        v110 = 0;
        _S24 = v108 * (v101 / v109);
        v112 = 0uLL;
        v113 = 0uLL;
        v114 = 0.0;
        do
        {
          v115 = *&v138[v110];
          _Q30 = vsubq_f32(v115, v44);
          __asm { FMLA            S28, S24, V30.S[2] }

          if (_S28 <= 0.0)
          {
            v118 = 0;
          }

          else
          {
            v118 = v12 - 1;
            if (_S28 < v101)
            {
              v118 = (_S28 + 0.5);
            }
          }

          v119 = vsubq_f32(*&v138[16 * v118 + 256], v115);
          _S31 = LODWORD(v40[v118]);
          v121.f32[0] = v39[v118];
          v121.i32[1] = _S31;
          *_Q8.i8 = vmul_f32(v121, 0x3E0000003E000000);
          v122 = vzip1q_s32(_Q8, _Q8);
          v122.i32[2] = _Q8.i32[0];
          v123 = v113;
          v123.i32[3] = v112.i32[0];
          v124 = vextq_s8(v119, v119, 4uLL).u64[0];
          v119.i32[3] = v119.i32[0];
          _Q27 = vmlaq_f32(v123, v119, v122);
          v114 = v114 + (*_Q8.i32 * v39[v118]);
          v126 = _Q27;
          v126.i32[3] = v113.i32[3];
          _Q28 = vextq_s8(v112, v112, 4uLL);
          v112.i32[0] = _Q27.i32[3];
          *_Q28.i8 = vmla_lane_f32(*_Q28.i8, v124, *_Q8.i8, 1);
          v112.i32[1] = _Q28.i32[0];
          __asm { FMLA            S21, S31, V8.S[1] }

          v112.i32[2] = _Q28.i32[1];
          v110 += 16;
          v113 = v126;
        }

        while (v110 != 256);
        if (v114 > 0.0)
        {
          _S22 = -1.0 / v114;
          v130.i64[0] = vmlaq_n_f32(v44, _Q27, -1.0 / v114).u64[0];
          __asm { FMLA            S20, S22, V27.S[2] }

          v130.i64[1] = __PAIR64__(v44.u32[3], _S20);
          v44 = v130;
        }

        if (_S21 > 0.0)
        {
          _S20 = -1.0 / _S21;
          v133 = vextq_s8(v45, v45, 8uLL);
          *v45.f32 = vmla_n_f32(*v45.f32, *&vextq_s8(_Q27, _Q28, 0xCuLL), -1.0 / _S21);
          __asm { FMLA            S19, S20, V28.S[1] }

          v45.i64[1] = __PAIR64__(v133.u32[1], _S19);
        }

        v135 = vdupq_n_s32(0x37800000u);
        v136 = vcgt_f32(*v135.f32, vmul_f32(*_Q28.i8, *_Q28.i8));
        v137 = vmovn_s32(vmvnq_s8(vcgtq_f32(v135, vmulq_f32(_Q27, _Q27))));
        v137.i16[0] = vmaxv_u16(v137);
        if (v136.i32[0] & ~v137.i32[0] & v136.i32[1])
        {
          break;
        }

        ++v100;
      }

      while (v100 != 8);
    }

    v44.i32[3] = 1.0;
    v45.i32[3] = 1.0;
  }

  else
  {
    v28.i32[3] = 1.0;
    v27.i32[3] = 1.0;
    v44 = v28;
    v45 = v27;
  }

  v65 = vmuls_lane_f32(9.9223, v44, 2);
  v66 = 0.0;
  if ((3.3666 * v44.f32[0]) <= 1.0)
  {
    v67 = 3.3666 * v44.f32[0];
  }

  else
  {
    v67 = 1.0;
  }

  if ((3.3666 * v44.f32[0]) >= 0.0)
  {
    v68 = v67;
  }

  else
  {
    v68 = 0.0;
  }

  v69 = 0.0;
  if (v44.f32[1] >= 0.0)
  {
    v69 = 1.0;
    if (v44.f32[1] <= 1.0)
    {
      v69 = v44.f32[1];
    }
  }

  v70 = 3.3666 * v45.f32[0];
  if (v65 >= 0.0)
  {
    v66 = 1.0;
    if (v65 <= 1.0)
    {
      v66 = v65;
    }
  }

  v71 = vmuls_lane_f32(9.9223, v45, 2);
  v72 = ((v66 * 31.0) + 0.5);
  v73 = (32 * ((v69 * 63.0) + 0.5)) | (((v68 * 31.0) + 0.5) << 11) | v72;
  v74 = 0.0;
  if (v70 <= 1.0)
  {
    v75 = 3.3666 * v45.f32[0];
  }

  else
  {
    v75 = 1.0;
  }

  if (v70 < 0.0)
  {
    v75 = 0.0;
  }

  v76 = 0.0;
  if (v45.f32[1] >= 0.0)
  {
    v76 = 1.0;
    if (v45.f32[1] <= 1.0)
    {
      v76 = v45.f32[1];
    }
  }

  v77 = ((32 * ((v69 * 63.0) + 0.5)) | (((v68 * 31.0) + 0.5) << 11) | v72);
  if (v71 >= 0.0)
  {
    v74 = 1.0;
    if (v71 <= 1.0)
    {
      v74 = v71;
    }
  }

  v78 = ((v75 * 31.0) + 0.5);
  v79 = (v76 * 63.0) + 0.5;
  v80 = ((v74 * 31.0) + 0.5);
  v81 = (32 * v79) | (v78 << 11) | v80;
  v82 = ((32 * v79) | (v78 << 11) | v80);
  if (v12 == 4 && v77 == v82)
  {
    v83 = 0;
    *result = v73;
    *(result + 2) = v73;
  }

  else
  {
    v84.f32[0] = (v73 >> 11) * 0.032258;
    v85.f32[0] = (v81 >> 11) * 0.032258;
    v84.f32[1] = ((v73 >> 5) & 0x3F);
    *v86.f32 = vmul_f32(v84, 0x3C8208213E981530);
    v86.i32[3] = vextq_s8(*&v44, *&v44, 8uLL).i32[1];
    v86.f32[2] = ((v72 & 0x1F) * 0.032258) * 0.10078;
    v85.f32[1] = ((v81 >> 5) & 0x3F);
    *v87.f32 = vmul_f32(v85, 0x3C8208213E981530);
    v87.i32[3] = vextq_s8(*&v45, *&v45, 8uLL).i32[1];
    v87.f32[2] = ((((v74 * 31.0) + 0.5) & 0x1F) * 0.032258) * 0.10078;
    if ((v12 == 3) != v77 > v82)
    {
      v88 = v82;
      v89 = v87;
      v87 = v86;
    }

    else
    {
      LOWORD(v73) = v82;
      v88 = (32 * ((v69 * 63.0) + 0.5)) | (((v68 * 31.0) + 0.5) << 11) | v72;
      v89 = v86;
    }

    *result = v73;
    *(result + 2) = v88;
    if (v12 == 3)
    {
      v90 = &_ZZL9EncodeBC1P8D3DX_BC1PKDv4_fbfjE7pSteps3;
    }

    else
    {
      v90 = &_ZZL9EncodeBC1P8D3DX_BC1PKDv4_fbfjE7pSteps4;
    }

    v91 = vsubq_f32(v89, v87);
    v92 = (v12 - 1);
    v93 = 0.0;
    if (v77 != v82)
    {
      v93 = v92 / (((v91.f32[1] * v91.f32[1]) + (v91.f32[0] * v91.f32[0])) + (v91.f32[2] * v91.f32[2]));
    }

    v83 = 0;
    v91.f32[0] = v91.f32[0] * v93;
    v94 = 16;
    do
    {
      if (v12 == 3 && a2->f32[3] < 0.0)
      {
        v83 = (v83 >> 2) | 0xC0000000;
      }

      else
      {
        _Q17 = *a2;
        __asm { FMLA            S19, S0, V17.S[2] }

        v97 = (vmuls_lane_f32(v91.f32[1] * v93, *&vsubq_f32(*a2, v87), 1) + (-(v87.f32[0] - (COERCE_FLOAT(*a2) * 0.29704)) * v91.f32[0])) + (_S19 * (v91.f32[2] * v93));
        if (v97 <= 0.0)
        {
          v98 = 0;
        }

        else if (v97 >= v92)
        {
          v98 = 0x40000000;
        }

        else
        {
          v98 = v90[(v97 + 0.5)] << 30;
        }

        v83 = v98 | (v83 >> 2);
      }

      ++a2;
      --v94;
    }

    while (v94);
  }

  *(result + 4) = v83;
LABEL_74:
  v99 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t encode_bc2(float32x4_t *a1, uint64_t a2, void *a3)
{
  v3 = 0;
  v19 = *MEMORY[0x29EDCA608];
  v4 = a1[38];
  v18[12] = a1[37];
  v18[13] = v4;
  v5 = a1[40];
  v18[14] = a1[39];
  v18[15] = v5;
  v6 = a1[34];
  v18[8] = a1[33];
  v18[9] = v6;
  v7 = a1[36];
  v18[10] = a1[35];
  v18[11] = v7;
  v8 = a1[30];
  v18[4] = a1[29];
  v18[5] = v8;
  v9 = a1[32];
  v18[6] = a1[31];
  v18[7] = v9;
  v10 = a1[26];
  v18[0] = a1[25];
  v18[1] = v10;
  v11 = a1[28];
  v18[2] = a1[27];
  v18[3] = v11;
  v12 = (v18 | 0xC);
  *a3 = 0;
  do
  {
    v13 = *v12;
    v12 += 4;
    v14 = (v3 >> 1) & 0x7FFFFFFFFFFFFFFCLL;
    HIDWORD(v15) = ((v13 * 15.0) + 0.5);
    LODWORD(v15) = *(a3 + v14);
    *(a3 + v14) = v15 >> 4;
    ++v3;
  }

  while (v3 != 16);
  result = EncodeBC1((a3 + 1), v18, 0);
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t encode_bc3(float32x4_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v54 = *MEMORY[0x29EDCA608];
  v5 = a1[38];
  v53[12] = a1[37];
  v53[13] = v5;
  v6 = a1[40];
  v53[14] = a1[39];
  v53[15] = v6;
  v7 = a1[34];
  v53[8] = a1[33];
  v53[9] = v7;
  v8 = a1[36];
  v53[10] = a1[35];
  v53[11] = v8;
  v9 = a1[30];
  v53[4] = a1[29];
  v53[5] = v9;
  v10 = a1[32];
  v53[6] = a1[31];
  v53[7] = v10;
  v11 = a1[26];
  v53[0] = a1[25];
  v53[1] = v11;
  v12 = a1[28];
  v53[2] = a1[27];
  v53[3] = v12;
  memset(v52, 0, sizeof(v52));
  v13 = v53[0].f32[3];
  v14 = v53[0].f32[3];
  do
  {
    v15 = ((v53[v4].f32[3] * 255.0) + 0.5) * 0.0039216;
    *(v52 + v4 * 4) = v15;
    if (v15 >= v13)
    {
      if (v15 > v14)
      {
        v14 = v15;
      }
    }

    else
    {
      v13 = v15;
    }

    ++v4;
  }

  while (v4 != 16);
  result = EncodeBC1(a3 + 8, v53, 0);
  if (v13 == 1.0)
  {
    *a3 = -1;
LABEL_9:
    *(a3 + 2) = 0;
    *(a3 + 6) = 0;
    goto LABEL_42;
  }

  v17 = v14 == 1.0 || v13 == 0.0;
  if (v17)
  {
    v18 = 6;
  }

  else
  {
    v18 = 8;
  }

  v50 = 0;
  result = OptimizeAlpha<false>(&v50 + 1, &v50, v52, v18);
  v19 = ((*(&v50 + 1) * 255.0) + 0.5);
  v20 = ((*&v50 * 255.0) + 0.5);
  if (v17)
  {
    *a3 = v19;
    *(a3 + 1) = v20;
    v51[0] = v19 * 0.0039216;
    v51[1] = v20 * 0.0039216;
    *&v51[2] = vmulq_f32(vmlaq_n_f32(vmulq_n_f32(xmmword_298499180, v51[1]), xmmword_298499190, v51[0]), vdupq_n_s32(0x3E4CCCCDu));
    v21 = &encode_bc3::pSteps6;
  }

  else
  {
    if (v20 == v19)
    {
      *a3 = v19;
      *(a3 + 1) = v20;
      goto LABEL_9;
    }

    v22 = 0;
    *a3 = v20;
    *(a3 + 1) = v19;
    v23 = xmmword_298499170;
    v24 = vdupq_n_s64(7uLL);
    v51[0] = v20 * 0.0039216;
    v51[1] = v19 * 0.0039216;
    v25 = vdupq_n_s64(2uLL);
    v21 = &encode_bc3::pSteps8;
    do
    {
      if (v22 <= 5)
      {
        v26 = vmla_n_f32(vmul_n_f32(vcvt_f32_f64(vcvtq_f64_u64(v23)), v51[1]), vcvt_f32_f64(vcvtq_f64_u64(vsubq_s64(v24, v23))), v51[0]);
        v27 = &v51[v22];
        v27[2] = 0.14286 * v26.f32[0];
        v27[3] = vmuls_lane_f32(0.14286, v26, 1);
      }

      v22 += 2;
      v23 = vaddq_s64(v23, v25);
    }

    while (v22 != 6);
  }

  v28 = (v18 - 1);
  v29 = v51[0];
  if (v51[0] == v51[1])
  {
    v30 = 0.0;
  }

  else
  {
    v30 = v28 / (v51[1] - v51[0]);
  }

  v31 = 0;
  v32 = v51[0] * 0.5;
  v33 = (v51[1] + 1.0) * 0.5;
  v34 = 1;
  v35 = 8;
  do
  {
    LOBYTE(v36) = 0;
    LOBYTE(v37) = 0;
    LOBYTE(result) = 0;
    v38 = 0;
    v39 = v34;
    v40 = ((v53 | 0xC) + (v31 << 7));
    v41 = v35 - 8 * v31;
    do
    {
      v42 = *v40;
      v43 = v30 * (*v40 - v29);
      if (v43 <= 0.0)
      {
        if (v17 && v42 <= v32)
        {
          LODWORD(v44) = 6;
        }

        else
        {
          LODWORD(v44) = 0;
        }
      }

      else if (v43 >= v28)
      {
        if (v17)
        {
          if (v42 < v33)
          {
            LODWORD(v44) = 1;
          }

          else
          {
            LODWORD(v44) = 7;
          }
        }

        else
        {
          LODWORD(v44) = 1;
        }
      }

      else
      {
        v44 = v21[(v43 + 0.5)];
      }

      v45 = (result << 16) | v38 | (v37 << 8);
      v46 = v45 | v36 & 0xF8;
      v47 = (v44 << 21) | (v46 >> 3);
      v36 = v46 >> 3;
      result = HIWORD(v47);
      v37 = v45 >> 11;
      v38 = v47 & 0xFF000000;
      v40 += 4;
      --v41;
    }

    while (v41);
    v34 = 0;
    v48 = (a3 + 2 + 3 * v31);
    *v48 = v36;
    v48[1] = v37;
    v48[2] = result;
    v35 += 8;
    v31 = 1;
  }

  while ((v39 & 1) != 0);
LABEL_42:
  v49 = *MEMORY[0x29EDCA608];
  return result;
}

void operator delete()
{
    ;
  }
}