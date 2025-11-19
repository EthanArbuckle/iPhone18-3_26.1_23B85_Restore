void *pcre_clearMem(void *result)
{
  v1 = result;
  if (*(result + 8) >= 2u)
  {
    v2 = 1;
    do
    {
      v3 = *(v1[1] + 8 * v2);
      if (v3)
      {
        heap_Free(*(*v1 + 8), *v3);
        v5 = *v1;
        v4 = v1[1];
        **(v4 + 8 * v2) = 0;
        heap_Free(*(v5 + 8), *(*(v4 + 8 * v2) + 16));
        v6 = v1[1];
        *(*(v6 + 8 * v2) + 16) = 0;
        v7 = *(v6 + 8 * v2);
      }

      else
      {
        v7 = 0;
      }

      result = heap_Free(*(*v1 + 8), v7);
      *(v1[1] + 8 * v2++) = 0;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 1;
  *(v1 + 6) = 0;
  *(v1 + 14) = 0;
  return result;
}

uint64_t match_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a6;
  v9 = a5;
  v11 = a3;
  v769 = 0;
  __n = 0;
  v13 = 0;
  __s2[1] = *MEMORY[0x277D85DE8];
  v14 = 99;
  v778 = 99;
  v777 = 0;
LABEL_2:
  switch(v14)
  {
    case 0:
      goto LABEL_254;
    case 1:
      v15 = v777;
      if (v13)
      {
        goto LABEL_215;
      }

      *(a4 + 124) = *(v777 + 63);
      v99 = v15[2];
      v100 = __rev16(*(v99 + 1));
      v15[2] = v99 + v100;
      if (*(v99 + v100) == 65)
      {
        goto LABEL_131;
      }

      v209 = *(a4 + 16);
      *(v209 + 4 * *(v15 + 61)) = *(v15 + 64);
      *(v209 + 4 * *(v15 + 61) + 4) = *(v15 + 65);
      *(v209 + 4 * (*(a4 + 24) - *(v15 + 60))) = *(v15 + 66);
      goto LABEL_4;
    case 2:
      v15 = v777;
      if (v13)
      {
        goto LABEL_215;
      }

      v84 = v777[2];
      v85 = __rev16(*(v84 + 1));
      v777[2] = v84 + v85;
      if (*(v84 + v85) == 65)
      {
        goto LABEL_105;
      }

      goto LABEL_4;
    case 3:
    case 5:
      goto LABEL_214;
    case 4:
      v15 = v777;
      if (!v13)
      {
        v777[2] += __rev16(*(v777[2] + 1));
        goto LABEL_294;
      }

      if (v13 == 1)
      {
        v109 = (v777[2] + __rev16(*(v777[2] + 4)) + 3);
        v777[2] = v109;
        for (i = *v109; i == 65; i = *v109)
        {
          v109 += __rev16(*(v109 + 1));
          v15[2] = v109;
        }

LABEL_294:
        *&v773 = 0;
        Mem = pcre_getMem(a1, 5, &v773, a4, a5, a6, a7, a8);
        v102 = v773;
        v103 = v777;
        if (v773 && (Mem & 0x80000000) == 0)
        {
          v104 = 0;
          v105 = v777[1];
          *(v773 + 8) = v105;
          v203 = v103[2];
LABEL_297:
          v128 = v203 + 3;
          goto LABEL_298;
        }

        goto LABEL_1198;
      }

      goto LABEL_215;
    case 6:
      v15 = v777;
      if (v13)
      {
        if (v13 == 1)
        {
          v112 = v777[2];
          v113 = *v112;
          goto LABEL_305;
        }

        goto LABEL_215;
      }

      v112 = (v777[2] + __rev16(*(v777[2] + 1)));
      v777[2] = v112;
      v113 = *v112;
      if (v113 != 65)
      {
LABEL_305:
        if (v113 != 66)
        {
          if ((v15[6] & 1) == 0)
          {
            do
            {
              v112 += __rev16(*(v112 + 1));
              v15[2] = v112;
            }

            while (*v112 == 65);
            v15[2] = (v112 + 3);
            *(v15 + 6) = *(a4 + 120);
            goto LABEL_331;
          }

          goto LABEL_910;
        }

LABEL_4:
        v16 = *v15;
        goto LABEL_908;
      }

LABEL_301:
      *&v773 = 0;
      v200 = a1;
      v201 = 6;
      goto LABEL_302;
    case 7:
      v15 = v777;
      if (v13)
      {
        if (v13 == 1)
        {
          goto LABEL_4;
        }

        goto LABEL_215;
      }

      v70 = (v777[2] + __rev16(*(v777[2] + 1)));
      v777[2] = v70;
      if (*v70 == 65)
      {
LABEL_292:
        *&v773 = 0;
        v200 = a1;
        v201 = 7;
LABEL_302:
        v204 = pcre_getMem(v200, v201, &v773, a4, a5, a6, a7, a8);
        v102 = v773;
        v103 = v777;
        if (!v773 || v204 < 0)
        {
          goto LABEL_1198;
        }

        v176 = 0;
        v104 = 0;
        v105 = v777[1];
        *(v773 + 8) = v105;
        v102[2] = v103[2] + 3;
        *(v102 + 6) = *(v103 + 6);
        v177 = v103[4];
        *v102 = v103;
        v102[4] = v177;
        v102[5] = 0;
LABEL_314:
        *(v102 + 12) = 2;
        goto LABEL_315;
      }

      if (v15[6])
      {
        goto LABEL_910;
      }

      goto LABEL_329;
    case 8:
      v15 = v777;
      if (v13)
      {
        if (v13 == 1)
        {
          *(a4 + 136) = v777[14];
          v117 = v15[18];
          if (v117 != (v15 + 268))
          {
            heap_Free(*(*a1 + 8), v117);
            v15 = v777;
          }

LABEL_910:
          v777 = *v15;
          pcre_freeMem(a1, &v778, a3, a4, a5, a6, a7, a8, v758);
          v175 = v777;
          v13 = 1;
          if (!v777)
          {
            return v13;
          }

          goto LABEL_1410;
        }

        goto LABEL_215;
      }

      *(a4 + 136) = v777 + 14;
      cstdlib_memcpy(*(a4 + 16), v15[18], 4 * *(v15 + 38));
      v15 = v777;
      v205 = v777[7];
      v206 = __rev16(*(v205 + 1));
      v777[7] = v205 + v206;
      if (*(v205 + v206) != 65)
      {
        *(a4 + 136) = v15[14];
        v573 = v15[18];
        if (v573 != (v15 + 268))
        {
          heap_Free(*(*a1 + 8), v573);
          v15 = v777;
        }

        goto LABEL_4;
      }

LABEL_310:
      *&v773 = 0;
      v207 = pcre_getMem(a1, 8, &v773, a4, a5, a6, a7, a8);
      v102 = v773;
      v103 = v777;
      if (!v773 || v207 < 0)
      {
        goto LABEL_1198;
      }

      v104 = 0;
      v105 = v777[1];
      *(v773 + 8) = v105;
      v106 = v103[7];
      goto LABEL_313;
    case 9:
      v15 = v777;
      if (v13)
      {
        if (v13 != 1)
        {
          goto LABEL_215;
        }

        v70 = v777[2];
        v88 = *v70;
      }

      else
      {
        v70 = (v777[2] + __rev16(*(v777[2] + 1)));
        v777[2] = v70;
        v88 = *v70;
        if (v88 == 65)
        {
LABEL_281:
          *&v773 = 0;
          v86 = a1;
          v87 = 9;
LABEL_132:
          v101 = pcre_getMem(v86, v87, &v773, a4, a5, a6, a7, a8);
          v102 = v773;
          v103 = v777;
          if (!v773 || v101 < 0)
          {
            goto LABEL_1198;
          }

          v104 = 0;
          v105 = v777[1];
          *(v773 + 8) = v105;
          v106 = v103[2];
LABEL_313:
          v102[2] = v106 + 3;
          *(v102 + 6) = *(v103 + 6);
          v177 = v103[4];
          v102[4] = v177;
          v176 = v103[5];
          *v102 = v103;
          v102[5] = v176;
          goto LABEL_314;
        }
      }

      if (v88 != 74 && v88 != 65)
      {
        goto LABEL_4;
      }

      do
      {
        v70 += __rev16(*(v70 + 1));
        v15[2] = v70;
      }

      while (*v70 == 65);
      *(v15 + 6) = *(a4 + 120);
      v198 = *(a4 + 112);
      v15[1] = v198;
      v199 = *v70;
      if (v199 != 66 && v198 != v15[13])
      {
        if (v70[3] == 18)
        {
          v15[4] = v15[4] & 0xFFFFFFFFFFFFFFF8 | v70[4];
          v199 = *v70;
        }

        if (v199 == 68)
        {
          *&v773 = 0;
          v107 = a1;
          v108 = 10;
          goto LABEL_263;
        }

        *&v773 = 0;
        v115 = a1;
        v116 = 12;
LABEL_174:
        v127 = pcre_getMem(v115, v116, &v773, a4, a5, a6, a7, a8);
        v102 = v773;
        v103 = v777;
        if (v773)
        {
LABEL_175:
          if ((v127 & 0x80000000) == 0)
          {
            v104 = 0;
            v105 = v103[1];
            v102[1] = v105;
            v128 = v103[12];
LABEL_298:
            v102[2] = v128;
            *(v102 + 6) = *(v103 + 6);
            v177 = v103[4];
            v102[4] = v177;
            v176 = v103[5];
            *(v102 + 12) = 2;
            v102[5] = v176;
LABEL_299:
            *v102 = v103;
LABEL_315:
            v777 = v102;
            goto LABEL_1404;
          }
        }

LABEL_1198:
        v594 = *v103;
        goto LABEL_1408;
      }

LABEL_329:
      v114 = (v70 + 3);
LABEL_330:
      v15[2] = v114;
LABEL_331:
      v767 = v11;
LABEL_332:
      while (2)
      {
        v33 = v777;
        v211 = v777[2];
        v212 = *v211;
        *(v777 + 62) = v212;
        *(v33 + 42) = 0;
        if (*(a4 + 72))
        {
          v213 = v33[1];
          if (v213 >= *(a4 + 96) && v213 > *(a4 + 104))
          {
            *(a4 + 76) = 1;
          }
        }

        if (v212 >= 0x51)
        {
          v575 = v212 - 80;
          *(v33 + 60) = v212 - 80;
          if (v212 - 80 >= 0x65)
          {
            v575 = __rev16(*(v211 + 2));
            *(v33 + 60) = v575;
          }

          *(v33 + 61) = 2 * v575;
          if ((2 * v575) >= *(a4 + 28))
          {
            *(v33 + 62) = 80;
LABEL_942:
            v11 = v767;
LABEL_105:
            *&v773 = 0;
            v86 = a1;
            v87 = 2;
          }

          else
          {
            v576 = *(a4 + 16);
            v577 = (v576 + 8 * v575);
            *(v33 + 64) = *v577;
            *(v33 + 65) = v577[1];
            v578 = *(a4 + 24) - v575;
            *(v33 + 66) = *(v576 + 4 * v578);
            *(v33 + 63) = *(a4 + 124);
            *(v576 + 4 * v578) = *(v33 + 2) - *(a4 + 88);
            v11 = v767;
LABEL_131:
            *&v773 = 0;
            v86 = a1;
            v87 = 1;
          }

          goto LABEL_132;
        }

        switch(v212)
        {
          case 0u:
            v399 = *(a4 + 136);
            if (!v399 || *(v399 + 8))
            {
              v592 = v33[1];
              if (!*(a4 + 68) || v592 != *(a4 + 104))
              {
                *(a4 + 112) = v592;
                *(a4 + 120) = *(v33 + 6);
                v777 = *v33;
                pcre_freeMem(a1, &v778, a3, a4, a5, a6, a7, a8, v758);
                v175 = v777;
                v13 = 1;
                v11 = v767;
                if (!v777)
                {
                  return v13;
                }

                goto LABEL_1410;
              }

              v777 = *v33;
              pcre_freeMem(a1, &v778, a3, a4, a5, a6, a7, a8, v758);
              v175 = v777;
              v11 = v767;
              if (!v777)
              {
                return 0;
              }

              goto LABEL_909;
            }

            *(a4 + 136) = *v399;
            cstdlib_memmove(*(a4 + 16), *(v399 + 32), 4 * *(v399 + 40));
            *(a4 + 104) = *(v399 + 24);
            v400 = v777;
            v777[4] = v777[22];
            v400[2] = *(v399 + 16);
            continue;
          case 1u:
            v341 = *(a4 + 88);
            goto LABEL_521;
          case 2u:
            if (v33[1] != (*(a4 + 88) + *(a4 + 128)))
            {
              goto LABEL_914;
            }

            goto LABEL_814;
          case 3u:
          case 4u:
            v237 = v33[1];
            v238 = *(a4 + 88);
            if (*(a4 + 60))
            {
              if (v237 == v238)
              {
                goto LABEL_699;
              }

              v239 = v33[1];
              do
              {
                v240 = v239;
                v242 = *(v239 - 1);
                v239 = (v239 - 1);
                v241 = v242;
                v243 = v242 & 0xC0;
              }

              while (v243 == 128);
              if (v243 != 192)
              {
                goto LABEL_372;
              }

              v244 = utf8_table4[v241 & 0x3F];
              v245 = 6 * v244;
              v241 = (utf8_table3[v244] & v241) << (6 * v244);
              if (v244 <= 1)
              {
                v244 = 1;
              }

              v246 = v245 - 6;
              do
              {
                v247 = *v240++;
                v241 |= (v247 & 0x3F) << v246;
                v246 -= 6;
                --v244;
              }

              while (v244);
              if (v241 >= 256)
              {
LABEL_699:
                v248 = 0;
              }

              else
              {
LABEL_372:
                v248 = (*(*(a4 + 40) + v241) >> 4) & 1;
              }

              *(v33 + 43) = v248;
              if (v237 < *(a4 + 96))
              {
                v486 = *v237;
                if ((~v486 & 0xC0) != 0)
                {
                  goto LABEL_707;
                }

                v487 = utf8_table4[v486 & 0x3F];
                v488 = 6 * v487;
                v486 = (utf8_table3[v487] & v486) << (6 * v487);
                v489 = (v237 + 1);
                if (v487 <= 1)
                {
                  v487 = 1;
                }

                v490 = v488 - 6;
                do
                {
                  v491 = *v489++;
                  v486 |= (v491 & 0x3F) << v490;
                  v490 -= 6;
                  --v487;
                }

                while (v487);
                if (v486 <= 255)
                {
LABEL_707:
                  v492 = (*(a4 + 40) + v486);
LABEL_803:
                  v536 = (*v492 >> 4) & 1;
                  goto LABEL_805;
                }
              }
            }

            else
            {
              if (v237 == v238)
              {
                v248 = 0;
              }

              else
              {
                v248 = (*(*(a4 + 40) + *(v237 - 1)) >> 4) & 1;
              }

              *(v33 + 43) = v248;
              if (v237 < *(a4 + 96))
              {
                v492 = (*(a4 + 40) + *v237);
                goto LABEL_803;
              }
            }

            v536 = 0;
LABEL_805:
            *(v33 + 40) = v536;
            v33[2] = (v211 + 1);
            if ((*v211 == 4) == (v536 == v248))
            {
              goto LABEL_914;
            }

            continue;
          case 5u:
            v350 = v33[1];
            if (v350 >= *(a4 + 96))
            {
              goto LABEL_914;
            }

            v33[1] = (v350 + 1);
            v351 = *v350;
            if (!*(a4 + 60))
            {
              goto LABEL_494;
            }

            if ((v351 & 0xC0) != 0xC0)
            {
              goto LABEL_494;
            }

            v352 = utf8_table4[v351 & 0x3F];
            v353 = 6 * v352;
            v351 = (utf8_table3[utf8_table4[v351 & 0x3F]] & v351) << (6 * v352);
            v354 = v350 + 2;
            v355 = v352 + 1;
            v356 = v353 - 6;
            do
            {
              v33[1] = v354;
              v351 |= (*(v354++ - 1) & 0x3F) << v356;
              --v355;
              v356 -= 6;
            }

            while (v355 > 1);
            if (v351 <= 255)
            {
LABEL_494:
              if ((*(*(a4 + 40) + v351) & 4) != 0)
              {
                goto LABEL_914;
              }
            }

            goto LABEL_814;
          case 6u:
            v343 = v33[1];
            if (v343 >= *(a4 + 96))
            {
              goto LABEL_914;
            }

            v33[1] = (v343 + 1);
            v344 = *v343;
            if (*(a4 + 60))
            {
              if ((v344 & 0xC0) == 0xC0)
              {
                v345 = utf8_table4[v344 & 0x3F];
                v346 = 6 * v345;
                v344 = (utf8_table3[utf8_table4[v344 & 0x3F]] & v344) << (6 * v345);
                v347 = v343 + 2;
                v348 = v345 + 1;
                v349 = v346 - 6;
                do
                {
                  v33[1] = v347;
                  v344 |= (*(v347++ - 1) & 0x3F) << v349;
                  --v348;
                  v349 -= 6;
                }

                while (v348 > 1);
                if (v344 > 255)
                {
                  goto LABEL_914;
                }
              }
            }

            if ((*(*(a4 + 40) + v344) & 4) == 0)
            {
              goto LABEL_914;
            }

            goto LABEL_814;
          case 7u:
            v408 = v33[1];
            if (v408 >= *(a4 + 96))
            {
              goto LABEL_914;
            }

            v33[1] = (v408 + 1);
            v409 = *v408;
            if (!*(a4 + 60))
            {
              goto LABEL_582;
            }

            if ((v409 & 0xC0) != 0xC0)
            {
              goto LABEL_582;
            }

            v410 = utf8_table4[v409 & 0x3F];
            v411 = 6 * v410;
            v409 = (utf8_table3[utf8_table4[v409 & 0x3F]] & v409) << (6 * v410);
            v412 = v408 + 2;
            v413 = v410 + 1;
            v414 = v411 - 6;
            do
            {
              v33[1] = v412;
              v409 |= (*(v412++ - 1) & 0x3F) << v414;
              --v413;
              v414 -= 6;
            }

            while (v413 > 1);
            if (v409 <= 255)
            {
LABEL_582:
              if (*(*(a4 + 40) + v409))
              {
                goto LABEL_914;
              }
            }

            goto LABEL_814;
          case 8u:
            v367 = v33[1];
            if (v367 >= *(a4 + 96))
            {
              goto LABEL_914;
            }

            v33[1] = (v367 + 1);
            v368 = *v367;
            if (*(a4 + 60))
            {
              if ((v368 & 0xC0) == 0xC0)
              {
                v369 = utf8_table4[v368 & 0x3F];
                v370 = 6 * v369;
                v368 = (utf8_table3[utf8_table4[v368 & 0x3F]] & v368) << (6 * v369);
                v371 = v367 + 2;
                v372 = v369 + 1;
                v373 = v370 - 6;
                do
                {
                  v33[1] = v371;
                  v368 |= (*(v371++ - 1) & 0x3F) << v373;
                  --v372;
                  v373 -= 6;
                }

                while (v372 > 1);
                if (v368 > 255)
                {
                  goto LABEL_914;
                }
              }
            }

            if ((*(*(a4 + 40) + v368) & 1) == 0)
            {
              goto LABEL_914;
            }

            goto LABEL_814;
          case 9u:
            v418 = v33[1];
            if (v418 >= *(a4 + 96))
            {
              goto LABEL_914;
            }

            v33[1] = (v418 + 1);
            v419 = *v418;
            if (!*(a4 + 60))
            {
              goto LABEL_599;
            }

            if ((v419 & 0xC0) != 0xC0)
            {
              goto LABEL_599;
            }

            v420 = utf8_table4[v419 & 0x3F];
            v421 = 6 * v420;
            v419 = (utf8_table3[utf8_table4[v419 & 0x3F]] & v419) << (6 * v420);
            v422 = v418 + 2;
            v423 = v420 + 1;
            v424 = v421 - 6;
            do
            {
              v33[1] = v422;
              v419 |= (*(v422++ - 1) & 0x3F) << v424;
              --v423;
              v424 -= 6;
            }

            while (v423 > 1);
            if (v419 <= 255)
            {
LABEL_599:
              if ((*(*(a4 + 40) + v419) & 0x10) != 0)
              {
                goto LABEL_914;
              }
            }

            goto LABEL_814;
          case 0xAu:
            v401 = v33[1];
            if (v401 >= *(a4 + 96))
            {
              goto LABEL_914;
            }

            v33[1] = (v401 + 1);
            v402 = *v401;
            if (*(a4 + 60))
            {
              if ((v402 & 0xC0) == 0xC0)
              {
                v403 = utf8_table4[v402 & 0x3F];
                v404 = 6 * v403;
                v402 = (utf8_table3[utf8_table4[v402 & 0x3F]] & v402) << (6 * v403);
                v405 = v401 + 2;
                v406 = v403 + 1;
                v407 = v404 - 6;
                do
                {
                  v33[1] = v405;
                  v402 |= (*(v405++ - 1) & 0x3F) << v407;
                  --v406;
                  v407 -= 6;
                }

                while (v406 > 1);
                if (v402 > 255)
                {
                  goto LABEL_914;
                }
              }
            }

            if ((*(*(a4 + 40) + v402) & 0x10) == 0)
            {
              goto LABEL_914;
            }

            goto LABEL_814;
          case 0xBu:
            v415 = v33[1];
            v416 = *(a4 + 96);
            if ((v33[4] & 4) == 0 && v415 < v416 && *v415 == 10)
            {
              goto LABEL_914;
            }

            v417 = (v415 + 1);
            v33[1] = (v415 + 1);
            if (v415 >= v416)
            {
              goto LABEL_914;
            }

            if (*(a4 + 60) && v417 < v416)
            {
              do
              {
                if ((*v417 & 0xC0) != 0x80)
                {
                  break;
                }

                v417 = (v417 + 1);
                v33[1] = v417;
              }

              while (v417 != v416);
            }

            goto LABEL_814;
          case 0xCu:
            v374 = v33[1];
            v33[1] = (v374 + 1);
            if (v374 >= *(a4 + 96))
            {
              goto LABEL_914;
            }

            goto LABEL_814;
          case 0xDu:
          case 0xEu:
            v255 = v33[1];
            if (v255 >= *(a4 + 96))
            {
              goto LABEL_914;
            }

            v33[1] = (v255 + 1);
            v256 = *v255;
            if (*(a4 + 60) && (v256 & 0xC0) == 0xC0)
            {
              v257 = utf8_table4[v256 & 0x3F];
              v258 = 6 * v257;
              v256 = (utf8_table3[utf8_table4[v256 & 0x3F]] & v256) << (6 * v257);
              v259 = v255 + 2;
              v260 = v257 + 1;
              v261 = v258 - 6;
              do
              {
                v33[1] = v259;
                v256 |= (*(v259++ - 1) & 0x3F) << v261;
                --v260;
                v261 -= 6;
              }

              while (v260 > 1);
            }

            LODWORD(v773) = 0;
            v262 = ucp_findchar(v256, &v773, &v772);
            v33[2] = (v211 + 1);
            v263 = v211[1];
            v264 = v211[1];
            v33[2] = (v211 + 2);
            if (v263 < 0)
            {
              v265 = v212 != 14;
              v266 = v264 - 128 == v262;
            }

            else
            {
              v265 = v212 != 14;
              v266 = v773 == v264;
            }

            v366 = !v266;
            goto LABEL_666;
          case 0xFu:
            v448 = v33[1];
            v449 = *(a4 + 96);
            if (v448 >= v449)
            {
              goto LABEL_914;
            }

            v450 = v448 + 1;
            v33[1] = (v448 + 1);
            v451 = *v448;
            v452 = *(a4 + 60);
            if (v452 && (v451 & 0xC0) == 0xC0)
            {
              v453 = utf8_table4[v451 & 0x3F];
              v454 = 6 * v453;
              v451 = (utf8_table3[utf8_table4[v451 & 0x3F]] & v451) << (6 * v453);
              v455 = v453 + 1;
              v456 = v454 - 6;
              do
              {
                v457 = v450 + 1;
                v33[1] = (v450 + 1);
                v451 |= (*v450 & 0x3F) << v456;
                --v455;
                v456 -= 6;
                ++v450;
              }

              while (v455 > 1);
            }

            else
            {
              v457 = v448 + 1;
            }

            v772 = 0;
            LODWORD(v773) = 0;
            if (ucp_findchar(v451, &v773, &v772) == 2)
            {
              goto LABEL_914;
            }

            v497 = v9;
            while (v457 < v449)
            {
              v498 = *v457;
              v499 = 1;
              if (v452 && (v498 & 0xC0) == 0xC0)
              {
                v500 = utf8_table4[v498 & 0x3F];
                v498 = (utf8_table3[v500] & v498) << (6 * v500);
                v501 = (v457 + 1);
                if (v500 <= 1)
                {
                  v502 = 1;
                }

                else
                {
                  v502 = v500;
                }

                v503 = 6 * v500 - 6;
                do
                {
                  v504 = *v501++;
                  v498 |= (v504 & 0x3F) << v503;
                  v503 -= 6;
                  --v502;
                }

                while (v502);
                v499 = v500 + 1;
              }

              if (ucp_findchar(v498, &v773, &v772) != 2)
              {
                break;
              }

              v457 += v499;
              v33[1] = v457;
            }

            v33[2] = (v211 + 1);
            v9 = v497;
            continue;
          case 0x10u:
            v375 = v33[1];
            v376 = *(a4 + 96) - 1;
            if (v375 < v376)
            {
              goto LABEL_914;
            }

            if (v375 == v376)
            {
              goto LABEL_717;
            }

            goto LABEL_814;
          case 0x11u:
            v323 = *(a4 + 96);
            goto LABEL_602;
          case 0x12u:
            v33[4] = v211[1];
            goto LABEL_762;
          case 0x13u:
            v341 = *(a4 + 88);
            if (*(a4 + 52) && v33[1] == v341)
            {
              goto LABEL_914;
            }

            if ((v33[4] & 2) == 0)
            {
LABEL_521:
              if (v33[1] != v341)
              {
                goto LABEL_914;
              }

              goto LABEL_814;
            }

            v342 = v33[1];
            if (v342 == v341)
            {
              goto LABEL_814;
            }

            v326 = *(v342 - 1);
            goto LABEL_718;
          case 0x14u:
            if ((v33[4] & 2) == 0)
            {
              if (*(a4 + 56))
              {
                goto LABEL_914;
              }

              v323 = *(a4 + 96);
              if (*(a4 + 64))
              {
LABEL_602:
                if (v33[1] < v323)
                {
                  goto LABEL_914;
                }

                goto LABEL_814;
              }

              v324 = v33[1];
              v325 = (v323 - 1);
              if (v324 < v325)
              {
                goto LABEL_914;
              }

              if (v324 != v325)
              {
                goto LABEL_814;
              }

              v326 = *v324;
              goto LABEL_718;
            }

            v375 = v33[1];
            if (v375 < *(a4 + 96))
            {
LABEL_717:
              v326 = *v375;
LABEL_718:
              if (v326 != 10)
              {
                goto LABEL_914;
              }

              goto LABEL_814;
            }

            if (*(a4 + 56))
            {
              goto LABEL_914;
            }

LABEL_814:
            v33[2] = (v211 + 1);
            continue;
          case 0x15u:
            if (!*(a4 + 60))
            {
              v511 = v33[1];
              if ((*(a4 + 96) - v511) <= 0)
              {
                goto LABEL_914;
              }

              v512 = v211[1];
              v33[1] = (v511 + 1);
              if (v512 != *v511)
              {
                goto LABEL_914;
              }

              goto LABEL_762;
            }

            v327 = 1;
            *(v33 + 57) = 1;
            v33[2] = (v211 + 1);
            v328 = v211[1];
            *(v33 + 55) = v328;
            if ((~v328 & 0xC0) == 0)
            {
              v329 = utf8_table4[v328 & 0x3F];
              v330 = (utf8_table3[v329] & v328) << (6 * v329);
              *(v33 + 55) = v330;
              v331 = (v211 + 2);
              if (v329 <= 1)
              {
                v332 = 1;
              }

              else
              {
                v332 = v329;
              }

              v333 = 6 * v329 - 6;
              do
              {
                v334 = *v331++;
                v330 |= (v334 & 0x3F) << v333;
                *(v33 + 55) = v330;
                v333 -= 6;
                --v332;
              }

              while (v332);
              v327 = v329 + 1;
              *(v33 + 57) = v327;
            }

            v335 = v33[1];
            if (*(a4 + 96) - v335 < v327)
            {
              goto LABEL_914;
            }

            v336 = (v335 + 1);
            v337 = v211 + 2;
            v11 = v767;
            while (1)
            {
              v338 = __OFSUB__(v327--, 1);
              *(v33 + 57) = v327;
              if (v327 < 0 != v338)
              {
                goto LABEL_332;
              }

              v33[2] = v337;
              v339 = *(v337 - 1);
              v33[1] = v336;
              v340 = *(v336 - 1);
              v336 = (v336 + 1);
              ++v337;
              if (v339 != v340)
              {
                goto LABEL_907;
              }
            }

          case 0x16u:
            if (*(a4 + 60))
            {
              v357 = 1;
              *(v33 + 57) = 1;
              v33[2] = (v211 + 1);
              v358 = v211[1];
              *(v33 + 55) = v358;
              if ((~v358 & 0xC0) == 0)
              {
                v359 = utf8_table4[v358 & 0x3F];
                v358 = (utf8_table3[v359] & v358) << (6 * v359);
                *(v33 + 55) = v358;
                v360 = (v211 + 2);
                if (v359 <= 1)
                {
                  v361 = 1;
                }

                else
                {
                  v361 = v359;
                }

                v362 = 6 * v359 - 6;
                do
                {
                  v363 = *v360++;
                  v358 |= (v363 & 0x3F) << v362;
                  *(v33 + 55) = v358;
                  v362 -= 6;
                  --v361;
                }

                while (v361);
                v357 = v359 + 1;
                *(v33 + 57) = v357;
              }

              v364 = v33[1];
              if (*(a4 + 96) - v364 < v357)
              {
                goto LABEL_914;
              }

              if (v358 > 127)
              {
                v33[1] = (v364 + 1);
                v530 = *v364;
                if ((~v530 & 0xC0) == 0)
                {
                  v531 = utf8_table4[v530 & 0x3F];
                  v532 = 6 * v531;
                  v530 = (utf8_table3[utf8_table4[v530 & 0x3F]] & v530) << (6 * v531);
                  v533 = v364 + 2;
                  v534 = v531 + 1;
                  v535 = v532 - 6;
                  do
                  {
                    v33[1] = v533;
                    v530 |= (*(v533++ - 1) & 0x3F) << v535;
                    --v534;
                    v535 -= 6;
                  }

                  while (v534 > 1);
                }

                v33[2] = &v211[v357 + 1];
                if (v358 != v530)
                {
                  v772 = 0;
                  if ((ucp_findchar(v358, &v773, &v772) & 0x80000000) != 0 || v530 != v772)
                  {
                    goto LABEL_914;
                  }
                }
              }

              else
              {
                v365 = *(a4 + 32);
                v33[2] = (v211 + 2);
                v265 = *(v365 + v211[1]);
                v33[1] = (v364 + 1);
                v366 = *(v365 + *v364);
LABEL_666:
                if (v265 != v366)
                {
                  goto LABEL_914;
                }
              }
            }

            else
            {
              v513 = v33[1];
              if ((*(a4 + 96) - v513) <= 0)
              {
                goto LABEL_914;
              }

              v514 = *(a4 + 32);
              v515 = *(v514 + v211[1]);
              v33[1] = (v513 + 1);
              if (v515 != *(v514 + *v513))
              {
                goto LABEL_914;
              }

LABEL_762:
              v33[2] = (v211 + 2);
            }

            continue;
          case 0x17u:
            v315 = v33[1];
            if (v315 < *(a4 + 96))
            {
              v33[1] = (v315 + 1);
              v33[2] = (v211 + 1);
              v316 = *v315;
              if (*(a4 + 60) && (v316 & 0xC0) == 0xC0)
              {
                v317 = utf8_table4[v316 & 0x3F];
                v318 = 6 * v317;
                v316 = (utf8_table3[utf8_table4[v316 & 0x3F]] & v316) << (6 * v317);
                v319 = v315 + 2;
                v320 = v317 + 1;
                v321 = v318 - 6;
                do
                {
                  v33[1] = v319;
                  v316 |= (*(v319++ - 1) & 0x3F) << v321;
                  --v320;
                  v321 -= 6;
                }

                while (v320 > 1);
              }

              if (v33[4])
              {
                v496 = *(a4 + 32);
                if (v316 <= 255)
                {
                  v316 = *(v496 + v316);
                }

                v33[2] = (v211 + 2);
                v322 = *(v496 + v211[1]);
              }

              else
              {
                v33[2] = (v211 + 2);
                v322 = v211[1];
              }

              if (v316 != v322)
              {
                continue;
              }
            }

            goto LABEL_914;
          case 0x18u:
          case 0x19u:
          case 0x1Au:
          case 0x1Bu:
          case 0x1Cu:
          case 0x1Du:
            v214 = v211 + 1;
            v33[2] = (v211 + 1);
            v215 = *v211;
            v216 = v215 & 1;
            *(v33 + 42) = v216;
            v217 = rep_min_0[v215 - 24];
            *(v33 + 59) = v217;
            if ((v215 - 30) >= 0xFFFFFFFE)
            {
              v218 = rep_max_0[v215 - 24];
            }

            else
            {
              v218 = 0x7FFFFFFF;
            }

            *(v33 + 58) = v218;
            goto LABEL_527;
          case 0x1Eu:
          case 0x1Fu:
            v217 = 0;
            *(v33 + 59) = 0;
            v218 = __rev16(*(v211 + 1));
            *(v33 + 58) = v218;
            v216 = *v211 == 31;
            *(v33 + 42) = v216;
            goto LABEL_526;
          case 0x20u:
            v216 = 0;
            v218 = __rev16(*(v211 + 1));
            *(v33 + 58) = v218;
            *(v33 + 59) = v218;
            v217 = v218;
LABEL_526:
            v214 = v211 + 3;
            v33[2] = (v211 + 3);
LABEL_527:
            v11 = v767;
            if (!*(a4 + 60))
            {
              v384 = *(a4 + 96);
              v80 = v33[1];
              if ((v384 - v80) < v217)
              {
                goto LABEL_907;
              }

              v33[2] = (v214 + 1);
              v378 = *v214;
              *(v33 + 55) = v378;
LABEL_541:
              if (v33[4])
              {
                v388 = *(a4 + 32);
                v389 = *(v388 + v378);
                *(v33 + 55) = v389;
                v390 = v217;
                if (v217 >= 1)
                {
                  do
                  {
                    v33[1] = (v80 + 1);
                    if (v389 != *(v388 + *v80))
                    {
                      goto LABEL_907;
                    }

                    ++v80;
                  }

                  while (--v390);
                }

                if (v218 != v217)
                {
                  if (v216)
                  {
                    *(v33 + 56) = v217;
                    v11 = v767;
LABEL_182:
                    *&v773 = 0;
                    v49 = a1;
                    v50 = 30;
                    goto LABEL_1400;
                  }

                  v33[11] = v80;
                  v338 = __OFSUB__(v218, v217);
                  v638 = v218 - v217;
                  v11 = v767;
                  if ((v638 < 0) ^ v338 | (v638 == 0))
                  {
                    goto LABEL_1110;
                  }

                  v111 = v80;
                  do
                  {
                    if (v111 >= v384)
                    {
                      break;
                    }

                    if (v389 != *(v388 + *v111))
                    {
                      break;
                    }

                    v33[1] = ++v111;
                    --v638;
                  }

                  while (v638);
LABEL_147:
                  if (v111 >= v80)
                  {
LABEL_1110:
                    *&v773 = 0;
                    v49 = a1;
                    v50 = 31;
                    goto LABEL_1400;
                  }

                  goto LABEL_907;
                }
              }

              else
              {
                v387 = v217;
                if (v217 >= 1)
                {
                  do
                  {
                    v33[1] = (v80 + 1);
                    if (v378 != *v80)
                    {
                      goto LABEL_907;
                    }

                    ++v80;
                  }

                  while (--v387);
                }

                if (v218 != v217)
                {
                  if (v216)
                  {
                    *(v33 + 56) = v217;
                    v11 = v767;
LABEL_188:
                    *&v773 = 0;
                    v49 = a1;
                    v50 = 32;
                    goto LABEL_1400;
                  }

                  v33[11] = v80;
                  v338 = __OFSUB__(v218, v217);
                  v639 = v218 - v217;
                  v11 = v767;
                  if ((v639 < 0) ^ v338 | (v639 == 0))
                  {
                    goto LABEL_1117;
                  }

                  v79 = v80;
                  do
                  {
                    if (v79 >= v384)
                    {
                      break;
                    }

                    if (v378 != *v79)
                    {
                      break;
                    }

                    v33[1] = ++v79;
                    --v639;
                  }

                  while (v639);
LABEL_95:
                  if (v79 >= v80)
                  {
LABEL_1117:
                    *&v773 = 0;
                    v49 = a1;
                    v50 = 33;
                    goto LABEL_1400;
                  }

                  goto LABEL_907;
                }
              }

              continue;
            }

            v377 = 1;
            *(v33 + 57) = 1;
            v33[8] = v214;
            v378 = *v214;
            *(v33 + 55) = v378;
            if ((~v378 & 0xC0) == 0)
            {
              v379 = utf8_table4[v378 & 0x3F];
              v378 = (utf8_table3[v379] & v378) << (6 * v379);
              *(v33 + 55) = v378;
              v380 = (v214 + 1);
              if (v379 <= 1)
              {
                v381 = 1;
              }

              else
              {
                v381 = v379;
              }

              v382 = 6 * v379 - 6;
              do
              {
                v383 = *v380++;
                v378 |= (v383 & 0x3F) << v382;
                *(v33 + 55) = v378;
                v382 -= 6;
                --v381;
              }

              while (v381);
              v377 = v379 + 1;
              *(v33 + 57) = v379 + 1;
            }

            v384 = *(a4 + 96);
            v80 = v33[1];
            if ((v384 - v80) < v377 * v217)
            {
              goto LABEL_907;
            }

            v33[2] = &v214[v377];
            if (v377 < 2)
            {
              goto LABEL_541;
            }

            __s2[0] = 0;
            v770 = 0;
            v771 = 0;
            if (v33[4])
            {
              v391 = ucp_findchar(v378, &v770, &v771);
              v386 = 0;
              v385 = v9;
              if ((v391 & 0x80000000) == 0 && v771 >= 1)
              {
                v386 = ord2utf8(v771, __s2);
                v33 = v777;
                v217 = *(v777 + 59);
              }
            }

            else
            {
              v385 = v9;
              v386 = 0;
            }

            __n = v386;
            if (v217 < 1)
            {
LABEL_563:
              v398 = *(v33 + 58);
              v9 = v385;
              if (v217 != v398)
              {
                if (!*(v33 + 42))
                {
                  v165 = v33[1];
                  v33[11] = v165;
                  v11 = v767;
                  if (v217 < v398)
                  {
                    do
                    {
                      v641 = v33[1];
                      v642 = *(v33 + 57);
                      if (v641 > *(a4 + 96) - v642)
                      {
                        break;
                      }

                      v643 = cstdlib_memcmp(v641, v33[8], v642);
                      v33 = v777;
                      if (v643)
                      {
                        if (!__n)
                        {
                          __n = 0;
                          break;
                        }

                        v644 = cstdlib_memcmp(v777[1], __s2, __n);
                        v33 = v777;
                        if (v644)
                        {
                          break;
                        }

                        v645 = (v777[1] + __n);
                      }

                      else
                      {
                        v645 = (v777[1] + *(v777 + 57));
                      }

                      v33[1] = v645;
                      ++v217;
                    }

                    while (v217 < *(v33 + 58));
                    v165 = v33[1];
                  }

LABEL_240:
                  if (v165 >= v33[11])
                  {
                    *&v773 = 0;
                    v49 = a1;
                    v50 = 29;
                    goto LABEL_1400;
                  }

                  goto LABEL_907;
                }

                *(v33 + 56) = v217;
                v11 = v767;
LABEL_938:
                *&v773 = 0;
                v49 = a1;
                v50 = 28;
                goto LABEL_1400;
              }

              continue;
            }

            v392 = 0;
            v393 = v386;
            v394 = v386;
            while (1)
            {
              v395 = cstdlib_memcmp(v33[1], v33[8], *(v33 + 57));
              v33 = v777;
              if (!v395)
              {
                v397 = (v777[1] + *(v777 + 57));
                goto LABEL_562;
              }

              if (!__n)
              {
                v777 = *v777;
                pcre_freeMem(a1, &v778, a3, a4, a5, a6, a7, a8, v758);
                v580 = v777;
                if (v777)
                {
                  __n = 0;
                  goto LABEL_968;
                }

                return 0;
              }

              v396 = cstdlib_memcmp(v777[1], __s2, v394);
              v33 = v777;
              if (v396)
              {
                break;
              }

              v397 = (v777[1] + v393);
LABEL_562:
              v33[1] = v397;
              v217 = *(v33 + 59);
              if (++v392 >= v217)
              {
                goto LABEL_563;
              }
            }

            v777 = *v777;
            pcre_freeMem(a1, &v778, a3, a4, a5, a6, a7, a8, v758);
            v580 = v777;
            if (v777)
            {
LABEL_968:
              v13 = 0;
              *(v580 + 102) = 0;
              *(a4 + 152) = v580;
              v9 = v385;
              goto LABEL_992;
            }

            return 0;
          case 0x21u:
          case 0x22u:
          case 0x23u:
          case 0x24u:
          case 0x25u:
          case 0x26u:
            v223 = v211 + 1;
            v33[2] = (v211 + 1);
            v224 = *v211;
            v225 = (v224 - 33) & 1;
            *(v33 + 42) = v225;
            v226 = rep_min_0[v224 - 33];
            *(v33 + 59) = v226;
            v227 = rep_max_0[v224 - 33];
            if ((v224 - 39) < 0xFFFFFFFE)
            {
              v227 = 0x7FFFFFFF;
            }

            *(v33 + 58) = v227;
            goto LABEL_606;
          case 0x27u:
          case 0x28u:
            v226 = 0;
            *(v33 + 59) = 0;
            v227 = __rev16(*(v211 + 1));
            *(v33 + 58) = v227;
            v225 = *v211 == 40;
            *(v33 + 42) = v225;
            goto LABEL_605;
          case 0x29u:
            v225 = 0;
            v227 = __rev16(*(v211 + 1));
            *(v33 + 58) = v227;
            *(v33 + 59) = v227;
            v226 = v227;
LABEL_605:
            v223 = v211 + 3;
            v33[2] = (v211 + 3);
LABEL_606:
            v425 = *(a4 + 96);
            v426 = v33[1];
            v11 = v767;
            if ((v425 - v426) < v226)
            {
              goto LABEL_907;
            }

            v33[2] = (v223 + 1);
            v427 = *v223;
            *(v33 + 55) = v427;
            if (v33[4])
            {
              v435 = *(a4 + 32);
              v436 = *(v435 + v427);
              *(v33 + 55) = v436;
              v437 = *(a4 + 60);
              if (v437)
              {
                if (v226 >= 1)
                {
                  v438 = 1;
                  v35 = v426;
                  while (1)
                  {
                    v439 = v35++;
                    v33[1] = v35;
                    v440 = *v439;
                    if ((~v440 & 0xC0) != 0)
                    {
                      goto LABEL_627;
                    }

                    v441 = utf8_table4[v440 & 0x3F];
                    v442 = 6 * v441;
                    v440 = (utf8_table3[utf8_table4[v440 & 0x3F]] & v440) << (6 * v441);
                    v443 = v441 + 1;
                    v444 = v442 - 6;
                    do
                    {
                      v445 = v35++;
                      v33[1] = v35;
                      a3 = (*v445 & 0x3F) << v444;
                      v440 |= a3;
                      --v443;
                      v444 -= 6;
                    }

                    while (v443 > 1);
                    if (v440 <= 255)
                    {
LABEL_627:
                      v440 = *(v435 + v440);
                    }

                    if (v440 == v436)
                    {
                      goto LABEL_907;
                    }

                    v42 = v438++ == v226;
                    if (v42)
                    {
                      goto LABEL_644;
                    }
                  }
                }

                v35 = v426;
              }

              else
              {
                v447 = v226;
                v35 = v426;
                if (v226 >= 1)
                {
                  do
                  {
                    v35 = v426 + 1;
                    v33[1] = (v426 + 1);
                    if (v436 == *(v435 + *v426))
                    {
                      goto LABEL_907;
                    }

                    ++v426;
                  }

                  while (--v447);
                }
              }

LABEL_644:
              if (v227 != v226)
              {
                if (v225)
                {
                  *(v33 + 56) = v226;
                  v11 = v767;
                  if (v437)
                  {
LABEL_75:
                    *&v773 = 0;
                    v49 = a1;
                    v50 = 34;
                  }

                  else
                  {
LABEL_52:
                    *&v773 = 0;
                    v49 = a1;
                    v50 = 35;
                  }

                  goto LABEL_1400;
                }

                v33[11] = v35;
                v11 = v767;
                if (v437)
                {
                  if (v227 <= v226)
                  {
LABEL_58:
                    *&v773 = 0;
                    v49 = a1;
                    v50 = 36;
                    goto LABEL_1400;
                  }

                  while (2)
                  {
                    if (v35 >= v425)
                    {
                      goto LABEL_58;
                    }

                    v595 = *v35;
                    if ((~v595 & 0xC0) != 0)
                    {
                      v601 = 1;
                    }

                    else
                    {
                      v596 = utf8_table4[v595 & 0x3F];
                      v595 = (utf8_table3[v596] & v595) << (6 * v596);
                      v597 = (v35 + 1);
                      if (v596 <= 1)
                      {
                        v598 = 1;
                      }

                      else
                      {
                        v598 = v596;
                      }

                      v599 = 6 * v596 - 6;
                      do
                      {
                        v600 = *v597++;
                        v595 |= (v600 & 0x3F) << v599;
                        v599 -= 6;
                        --v598;
                      }

                      while (v598);
                      v601 = v596 + 1;
                      if (v595 > 255)
                      {
LABEL_1044:
                        if (v595 == v436)
                        {
                          goto LABEL_58;
                        }

                        v35 += v601;
                        v33[1] = v35;
                        if (++v226 == v227)
                        {
                          goto LABEL_58;
                        }

                        continue;
                      }
                    }

                    break;
                  }

                  v595 = *(v435 + v595);
                  goto LABEL_1044;
                }

                v338 = __OFSUB__(v227, v226);
                v655 = v227 - v226;
                if ((v655 < 0) ^ v338 | (v655 == 0))
                {
                  goto LABEL_1154;
                }

                v34 = v35;
                do
                {
                  if (v34 >= v425)
                  {
                    break;
                  }

                  if (v436 == *(v435 + *v34))
                  {
                    break;
                  }

                  v33[1] = ++v34;
                  --v655;
                }

                while (v655);
LABEL_27:
                if (v34 >= v35)
                {
LABEL_1154:
                  *&v773 = 0;
                  v49 = a1;
                  v50 = 37;
                  goto LABEL_1400;
                }

LABEL_907:
                v16 = *v33;
LABEL_908:
                v777 = v16;
                pcre_freeMem(a1, &v778, a3, a4, a5, a6, a7, a8, v758);
                v175 = v777;
                if (!v777)
                {
                  return 0;
                }

LABEL_909:
                v13 = 0;
                *(v175 + 102) = 0;
                goto LABEL_1411;
              }
            }

            else
            {
              v428 = *(a4 + 60);
              if (v428)
              {
                if (v226 >= 1)
                {
                  v429 = 1;
                  v119 = v426;
                  while (1)
                  {
                    v430 = v119 + 1;
                    v33[1] = (v119 + 1);
                    v431 = *v119;
                    if ((~v431 & 0xC0) != 0)
                    {
                      ++v119;
                    }

                    else
                    {
                      v432 = utf8_table4[v431 & 0x3F];
                      v431 = (utf8_table3[utf8_table4[v431 & 0x3F]] & v431) << (6 * v432);
                      v433 = v432 + 1;
                      v434 = 6 * v432 - 6;
                      do
                      {
                        v119 = v430 + 1;
                        v33[1] = (v430 + 1);
                        v431 |= (*v430 & 0x3F) << v434;
                        --v433;
                        v434 -= 6;
                        ++v430;
                      }

                      while (v433 > 1);
                    }

                    if (v431 == v427)
                    {
                      goto LABEL_907;
                    }

                    v42 = v429++ == v226;
                    if (v42)
                    {
                      goto LABEL_641;
                    }
                  }
                }

                v119 = v426;
              }

              else
              {
                v446 = v226;
                v119 = v426;
                if (v226 >= 1)
                {
                  do
                  {
                    v119 = v426 + 1;
                    v33[1] = (v426 + 1);
                    if (v427 == *v426)
                    {
                      goto LABEL_907;
                    }

                    ++v426;
                  }

                  while (--v446);
                }
              }

LABEL_641:
              if (v227 != v226)
              {
                if (v225)
                {
                  *(v33 + 56) = v226;
                  v11 = v767;
                  if (v428)
                  {
LABEL_327:
                    *&v773 = 0;
                    v49 = a1;
                    v50 = 38;
                  }

                  else
                  {
LABEL_212:
                    *&v773 = 0;
                    v49 = a1;
                    v50 = 39;
                  }

                  goto LABEL_1400;
                }

                v33[11] = v119;
                if (v428)
                {
                  v11 = v767;
                  if (v227 > v226)
                  {
                    do
                    {
                      if (v119 >= v425)
                      {
                        break;
                      }

                      v602 = *v119;
                      if ((~v602 & 0xC0) != 0)
                      {
                        v608 = 1;
                      }

                      else
                      {
                        v603 = utf8_table4[v602 & 0x3F];
                        v602 = (utf8_table3[v603] & v602) << (6 * v603);
                        v604 = (v119 + 1);
                        v605 = v603 <= 1 ? 1 : v603;
                        v606 = 6 * v603 - 6;
                        do
                        {
                          v607 = *v604++;
                          v602 |= (v607 & 0x3F) << v606;
                          v606 -= 6;
                          --v605;
                        }

                        while (v605);
                        v608 = v603 + 1;
                      }

                      if (v602 == v427)
                      {
                        break;
                      }

                      v119 += v608;
                      v33[1] = v119;
                      ++v226;
                    }

                    while (v226 != v227);
                  }

LABEL_118:
                  *&v773 = 0;
                  v49 = a1;
                  v50 = 40;
                  goto LABEL_1400;
                }

                v338 = __OFSUB__(v227, v226);
                v656 = v227 - v226;
                v11 = v767;
                if ((v656 < 0) ^ v338 | (v656 == 0))
                {
                  goto LABEL_1161;
                }

                v118 = v119;
                do
                {
                  if (v118 >= v425)
                  {
                    break;
                  }

                  if (v427 == *v118)
                  {
                    break;
                  }

                  v33[1] = ++v118;
                  --v656;
                }

                while (v656);
LABEL_162:
                if (v118 >= v119)
                {
LABEL_1161:
                  *&v773 = 0;
                  v49 = a1;
                  v50 = 41;
                  goto LABEL_1400;
                }

                goto LABEL_907;
              }
            }

            continue;
          case 0x2Au:
          case 0x2Bu:
          case 0x2Cu:
          case 0x2Du:
          case 0x2Eu:
          case 0x2Fu:
            v219 = v211 + 1;
            v33[2] = (v211 + 1);
            v220 = *v211;
            *(v33 + 42) = v220 & 1;
            v221 = rep_min_0[v220 - 42];
            *(v33 + 59) = v221;
            if ((v220 - 48) >= 0xFFFFFFFE)
            {
              v222 = rep_max_0[v220 - 42];
            }

            else
            {
              v222 = 0x7FFFFFFF;
            }

            *(v33 + 58) = v222;
            goto LABEL_393;
          case 0x30u:
          case 0x31u:
            v221 = 0;
            *(v33 + 59) = 0;
            *(v33 + 58) = __rev16(*(v211 + 1));
            v236 = *v211 == 49;
            goto LABEL_392;
          case 0x32u:
            v221 = __rev16(*(v211 + 1));
            *(v33 + 58) = v221;
            *(v33 + 59) = v221;
            v236 = 1;
LABEL_392:
            *(v33 + 42) = v236;
            v219 = v211 + 3;
            v33[2] = (v211 + 3);
LABEL_393:
            v33[2] = (v219 + 1);
            v271 = *v219;
            *(v33 + 54) = v271;
            v11 = v767;
            if ((v271 - 13) > 1)
            {
              v274 = 0;
              *(v33 + 46) = -1;
            }

            else
            {
              *(v33 + 47) = v271 == 13;
              v33[2] = (v219 + 2);
              v272 = v219[1];
              v273 = v219[1];
              *(v33 + 46) = v273;
              if (v272 < 0)
              {
                *(v33 + 51) = v273 - 128;
                v33[26] = (v33 + 24);
                v274 = 1;
              }

              else
              {
                *(v33 + 51) = v273;
                v33[26] = (v33 + 196);
                v274 = v273 != 0;
              }
            }

            v275 = *(a4 + 96);
            v276 = v33[1];
            if (v275 - v276 < v221)
            {
              goto LABEL_907;
            }

            if (v221 < 1)
            {
              goto LABEL_903;
            }

            if (v274)
            {
              v277 = 1;
              while (1)
              {
                v278 = v33[1];
                v33[1] = (v278 + 1);
                v279 = *v278;
                if ((~v279 & 0xC0) == 0)
                {
                  v280 = utf8_table4[v279 & 0x3F];
                  v281 = 6 * v280;
                  v279 = (utf8_table3[utf8_table4[v279 & 0x3F]] & v279) << (6 * v280);
                  v282 = v278 + 2;
                  v283 = v280 + 1;
                  v284 = v281 - 6;
                  do
                  {
                    v33[1] = v282;
                    v279 |= (*(v282++ - 1) & 0x3F) << v284;
                    --v283;
                    v284 -= 6;
                  }

                  while (v283 > 1);
                }

                v285 = ucp_findchar(v279, v33 + 49, v33 + 50);
                v33 = v777;
                *(v777 + 48) = v285;
                if (*(v33 + 47) == (*v33[26] == *(v33 + 51)))
                {
                  break;
                }

                v221 = *(v33 + 59);
                v286 = v277++ < v221;
                if (!v286)
                {
                  goto LABEL_903;
                }
              }

LABEL_914:
              v777 = *v33;
              pcre_freeMem(a1, &v778, a3, a4, a5, a6, a7, a8, v758);
              v574 = v777;
              if (!v777)
              {
                return 0;
              }

              v13 = 0;
              *(v777 + 102) = 0;
              goto LABEL_916;
            }

            if (v271 == 15)
            {
              v287 = 1;
              while (1)
              {
                v288 = v33[1];
                v33[1] = (v288 + 1);
                v289 = *v288;
                if (*(a4 + 60) && (v289 & 0xC0) == 0xC0)
                {
                  v290 = utf8_table4[v289 & 0x3F];
                  v289 = (utf8_table3[utf8_table4[v289 & 0x3F]] & v289) << (6 * v290);
                  v291 = v288 + 2;
                  v292 = 6 * v290 - 6;
                  v293 = v290 + 1;
                  do
                  {
                    v33[1] = v291;
                    v289 |= (*(v291++ - 1) & 0x3F) << v292;
                    v292 -= 6;
                    --v293;
                  }

                  while (v293 > 1);
                }

                v294 = ucp_findchar(v289, v33 + 49, v33 + 50);
                v33 = v777;
                *(v777 + 48) = v294;
                if (v294 == 2)
                {
                  goto LABEL_914;
                }

                for (j = v33[1]; j < *(a4 + 96); v33[1] = j)
                {
                  v296 = *j;
                  v297 = 1;
                  if (*(a4 + 60) && (v296 & 0xC0) == 0xC0)
                  {
                    v298 = utf8_table4[v296 & 0x3F];
                    v296 = (utf8_table3[v298] & v296) << (6 * v298);
                    v299 = (j + 1);
                    if (v298 <= 1)
                    {
                      v300 = 1;
                    }

                    else
                    {
                      v300 = v298;
                    }

                    v301 = 6 * v298 - 6;
                    do
                    {
                      v302 = *v299++;
                      v296 |= (v302 & 0x3F) << v301;
                      v301 -= 6;
                      --v300;
                    }

                    while (v300);
                    v297 = v298 + 1;
                  }

                  v303 = ucp_findchar(v296, v33 + 49, v33 + 50);
                  v33 = v777;
                  *(v777 + 48) = v303;
                  if (v303 != 2)
                  {
                    break;
                  }

                  j = v33[1] + v297;
                }

                v221 = *(v33 + 59);
                v286 = v287++ < v221;
                if (!v286)
                {
                  goto LABEL_903;
                }
              }
            }

            if (*(a4 + 60))
            {
              if (v271 <= 8)
              {
                if (v271 > 6)
                {
                  if (v271 == 7)
                  {
                    v555 = 1;
                    while (v276 < v275)
                    {
                      if ((*v276 & 0x80000000) == 0)
                      {
                        v556 = *(a4 + 40);
                        v33[1] = (v276 + 1);
                        LOBYTE(v556) = *(v556 + *v276);
                        v276 = (v276 + 1);
                        if (v556)
                        {
                          break;
                        }
                      }

                      if (v276 < v275)
                      {
                        v557 = v275 - v276;
                        while ((*v276 & 0xC0) == 0x80)
                        {
                          v276 = (v276 + 1);
                          v33[1] = v276;
                          if (!--v557)
                          {
                            v276 = v275;
                            break;
                          }
                        }
                      }

                      v42 = v555++ == v221;
                      if (v42)
                      {
                        goto LABEL_903;
                      }
                    }
                  }

                  else
                  {
                    v540 = v221;
                    while (v276 < v275)
                    {
                      if (*v276 < 0)
                      {
                        break;
                      }

                      v541 = *(a4 + 40);
                      v33[1] = (v276 + 1);
                      if ((*(v541 + *v276) & 1) == 0)
                      {
                        break;
                      }

                      v276 = (v276 + 1);
                      if (!--v540)
                      {
                        goto LABEL_903;
                      }
                    }
                  }

                  goto LABEL_907;
                }

                if (v271 == 5)
                {
                  v546 = 1;
                  while (v276 < v275)
                  {
                    v547 = v276 + 1;
                    v33[1] = (v276 + 1);
                    v548 = *v276;
                    if ((~v548 & 0xC0) != 0)
                    {
                      v276 = (v276 + 1);
                    }

                    else
                    {
                      v549 = utf8_table4[v548 & 0x3F];
                      v548 = (utf8_table3[utf8_table4[v548 & 0x3F]] & v548) << (6 * v549);
                      v550 = 6 * v549 - 6;
                      v551 = v549 + 1;
                      do
                      {
                        v276 = (v547 + 1);
                        v33[1] = (v547 + 1);
                        v548 |= (*v547 & 0x3F) << v550;
                        v550 -= 6;
                        --v551;
                        ++v547;
                      }

                      while (v551 > 1);
                    }

                    if (v548 <= 127 && (*(*(a4 + 40) + v548) & 4) != 0)
                    {
                      break;
                    }

                    v42 = v546++ == v221;
                    if (v42)
                    {
                      goto LABEL_903;
                    }
                  }

                  goto LABEL_907;
                }

                v304 = v221;
                if (v271 == 6)
                {
                  while (v276 < v275)
                  {
                    if (*v276 < 0)
                    {
                      break;
                    }

                    v305 = *(a4 + 40);
                    v33[1] = (v276 + 1);
                    if ((*(v305 + *v276) & 4) == 0)
                    {
                      break;
                    }

                    v276 = (v276 + 1);
                    if (!--v304)
                    {
                      goto LABEL_903;
                    }
                  }

                  goto LABEL_907;
                }

LABEL_1265:
                v579 = *v33;
LABEL_963:
                v777 = v579;
                pcre_freeMem(a1, &v778, a3, a4, a5, a6, a7, a8, v758);
                v175 = v777;
                v13 = 4294967282;
                if (!v777)
                {
                  return v13;
                }

                goto LABEL_1410;
              }

              if (v271 <= 10)
              {
                if (v271 == 9)
                {
                  v552 = 1;
                  while (v276 < v275)
                  {
                    if ((*v276 & 0x80000000) == 0)
                    {
                      v553 = *(a4 + 40);
                      v33[1] = (v276 + 1);
                      LOBYTE(v553) = *(v553 + *v276);
                      v276 = (v276 + 1);
                      if ((v553 & 0x10) != 0)
                      {
                        break;
                      }
                    }

                    if (v276 < v275)
                    {
                      v554 = v275 - v276;
                      while ((*v276 & 0xC0) == 0x80)
                      {
                        v276 = (v276 + 1);
                        v33[1] = v276;
                        if (!--v554)
                        {
                          v276 = v275;
                          break;
                        }
                      }
                    }

                    v42 = v552++ == v221;
                    if (v42)
                    {
                      goto LABEL_903;
                    }
                  }
                }

                else
                {
                  v508 = v221;
                  while (v276 < v275)
                  {
                    if (*v276 < 0)
                    {
                      break;
                    }

                    v509 = *(a4 + 40);
                    v33[1] = (v276 + 1);
                    if ((*(v509 + *v276) & 0x10) == 0)
                    {
                      break;
                    }

                    v276 = (v276 + 1);
                    if (!--v508)
                    {
                      goto LABEL_903;
                    }
                  }
                }

                goto LABEL_907;
              }

              if (v271 == 11)
              {
                v558 = 1;
                while (v276 < v275)
                {
                  v559 = (v276 + 1);
                  v33[1] = (v276 + 1);
                  if (*v276 == 10 && (v33[4] & 4) == 0)
                  {
                    break;
                  }

                  if (v559 < v275)
                  {
                    while ((*v559 & 0xC0) == 0x80)
                    {
                      v559 = (v559 + 1);
                      v33[1] = v559;
                      if (v559 == v275)
                      {
                        v559 = v275;
                        break;
                      }
                    }
                  }

                  v276 = v559;
                  v42 = v558++ == v221;
                  if (v42)
                  {
                    goto LABEL_903;
                  }
                }

                goto LABEL_907;
              }

              if (v271 != 12)
              {
                goto LABEL_1265;
              }
            }

            else
            {
              if (v271 <= 8)
              {
                if (v271 > 6)
                {
                  if (v271 == 7)
                  {
                    v566 = *(a4 + 40);
                    v567 = (v276 + 1);
                    v568 = v221;
                    while (1)
                    {
                      v33[1] = v567;
                      if (*(v566 + *(v567 - 1)))
                      {
                        break;
                      }

                      v567 = (v567 + 1);
                      if (!--v568)
                      {
                        goto LABEL_903;
                      }
                    }
                  }

                  else
                  {
                    v542 = *(a4 + 40);
                    v543 = (v276 + 1);
                    v544 = v221;
                    while (1)
                    {
                      v33[1] = v543;
                      if ((*(v542 + *(v543 - 1)) & 1) == 0)
                      {
                        break;
                      }

                      v543 = (v543 + 1);
                      if (!--v544)
                      {
                        goto LABEL_903;
                      }
                    }
                  }

                  goto LABEL_907;
                }

                if (v271 == 5)
                {
                  v560 = *(a4 + 40);
                  v561 = (v276 + 1);
                  v562 = v221;
                  while (1)
                  {
                    v33[1] = v561;
                    if ((*(v560 + *(v561 - 1)) & 4) != 0)
                    {
                      goto LABEL_907;
                    }

                    v561 = (v561 + 1);
                    if (!--v562)
                    {
                      goto LABEL_903;
                    }
                  }
                }

                if (v271 == 6)
                {
                  v493 = *(a4 + 40);
                  v494 = (v276 + 1);
                  v495 = v221;
                  while (1)
                  {
                    v33[1] = v494;
                    if ((*(v493 + *(v494 - 1)) & 4) == 0)
                    {
                      goto LABEL_907;
                    }

                    v494 = (v494 + 1);
                    if (!--v495)
                    {
                      goto LABEL_903;
                    }
                  }
                }

                goto LABEL_1323;
              }

              if (v271 <= 10)
              {
                if (v271 == 9)
                {
                  v563 = *(a4 + 40);
                  v564 = (v276 + 1);
                  v565 = v221;
                  while (1)
                  {
                    v33[1] = v564;
                    if ((*(v563 + *(v564 - 1)) & 0x10) != 0)
                    {
                      break;
                    }

                    v564 = (v564 + 1);
                    if (!--v565)
                    {
                      goto LABEL_903;
                    }
                  }
                }

                else
                {
                  v537 = *(a4 + 40);
                  v538 = (v276 + 1);
                  v539 = v221;
                  while (1)
                  {
                    v33[1] = v538;
                    if ((*(v537 + *(v538 - 1)) & 0x10) == 0)
                    {
                      break;
                    }

                    v538 = (v538 + 1);
                    if (!--v539)
                    {
                      goto LABEL_903;
                    }
                  }
                }

                goto LABEL_907;
              }

              if (v271 == 11)
              {
                if ((v33[4] & 4) == 0)
                {
                  v569 = (v276 + 1);
                  v570 = v221;
                  while (1)
                  {
                    v33[1] = v569;
                    if (*(v569 - 1) == 10)
                    {
                      goto LABEL_907;
                    }

                    v569 = (v569 + 1);
                    if (!--v570)
                    {
                      goto LABEL_903;
                    }
                  }
                }
              }

              else if (v271 != 12)
              {
                goto LABEL_1323;
              }
            }

            v33[1] = (v276 + v221);
LABEL_903:
            v571 = *(v33 + 58);
            v572 = v571 - v221;
            if (v571 == v221)
            {
              continue;
            }

            if (*(v33 + 42))
            {
              if (*(v33 + 46) >= 1)
              {
                *(v33 + 56) = v221;
                v11 = v767;
LABEL_224:
                *&v773 = 0;
                v49 = a1;
                v50 = 42;
                goto LABEL_1400;
              }

              v11 = v767;
              if (*(v33 + 54) == 15)
              {
                *(v33 + 56) = v221;
LABEL_926:
                *&v773 = 0;
                v49 = a1;
                v50 = 43;
                goto LABEL_1400;
              }

              v640 = *(a4 + 60);
              *(v33 + 56) = v221;
              if (!v640)
              {
LABEL_987:
                *&v773 = 0;
                v49 = a1;
                v50 = 45;
                goto LABEL_1400;
              }

LABEL_980:
              *&v773 = 0;
              v49 = a1;
              v50 = 44;
              goto LABEL_1400;
            }

            v90 = v33[1];
            v33[11] = v90;
            if (*(v33 + 46) >= 1)
            {
              v11 = v767;
              if (v571 > v221)
              {
                while (v90 < *(a4 + 96))
                {
                  v583 = *v90;
                  v584 = v9;
                  if ((~v583 & 0xC0) != 0)
                  {
                    v590 = 1;
                  }

                  else
                  {
                    v585 = utf8_table4[v583 & 0x3F];
                    v583 = (utf8_table3[v585] & v583) << (6 * v585);
                    v586 = v90 + 1;
                    if (v585 <= 1)
                    {
                      v587 = 1;
                    }

                    else
                    {
                      v587 = v585;
                    }

                    v588 = 6 * v585 - 6;
                    do
                    {
                      v589 = *v586++;
                      v583 |= (v589 & 0x3F) << v588;
                      v588 -= 6;
                      --v587;
                    }

                    while (v587);
                    v590 = v585 + 1;
                  }

                  v591 = ucp_findchar(v583, v33 + 49, v33 + 50);
                  v33 = v777;
                  *(v777 + 48) = v591;
                  if (*(v33 + 47) == (*v33[26] == *(v33 + 51)))
                  {
                    v9 = v584;
                    break;
                  }

                  v90 = (v33[1] + v590);
                  v33[1] = v90;
                  ++v221;
                  v9 = v584;
                  if (v221 >= *(v33 + 58))
                  {
                    break;
                  }
                }
              }

LABEL_279:
              *&v773 = 0;
              v49 = a1;
              v50 = 46;
              goto LABEL_1400;
            }

            v620 = *(v33 + 54);
            v11 = v767;
            if (v620 == 15)
            {
              if (v571 > v221)
              {
                do
                {
                  v621 = v33[1];
                  if (v621 >= *(a4 + 96))
                  {
                    break;
                  }

                  v33[1] = (v621 + 1);
                  v622 = *v621;
                  if (*(a4 + 60) && (v622 & 0xC0) == 0xC0)
                  {
                    v623 = utf8_table4[v622 & 0x3F];
                    v622 = (utf8_table3[utf8_table4[v622 & 0x3F]] & v622) << (6 * v623);
                    v624 = v621 + 2;
                    v625 = 6 * v623 - 6;
                    v626 = v623 + 1;
                    do
                    {
                      v33[1] = v624;
                      v622 |= (*(v624++ - 1) & 0x3F) << v625;
                      v625 -= 6;
                      --v626;
                    }

                    while (v626 > 1);
                  }

                  v627 = ucp_findchar(v622, v33 + 49, v33 + 50);
                  v33 = v777;
                  *(v777 + 48) = v627;
                  if (v627 == 2)
                  {
                    break;
                  }

                  v628 = v9;
                  for (k = v33[1]; k < *(a4 + 96); v33[1] = k)
                  {
                    v630 = *k;
                    v631 = 1;
                    if (*(a4 + 60) && (v630 & 0xC0) == 0xC0)
                    {
                      v632 = utf8_table4[v630 & 0x3F];
                      v630 = (utf8_table3[v632] & v630) << (6 * v632);
                      v633 = (k + 1);
                      if (v632 <= 1)
                      {
                        v634 = 1;
                      }

                      else
                      {
                        v634 = v632;
                      }

                      v635 = 6 * v632 - 6;
                      do
                      {
                        v636 = *v633++;
                        v630 |= (v636 & 0x3F) << v635;
                        v635 -= 6;
                        --v634;
                      }

                      while (v634);
                      v631 = v632 + 1;
                    }

                    v637 = ucp_findchar(v630, v33 + 49, v33 + 50);
                    v33 = v777;
                    *(v777 + 48) = v637;
                    if (v637 != 2)
                    {
                      break;
                    }

                    k = v33[1] + v631;
                  }

                  ++v221;
                  v9 = v628;
                }

                while (v221 < *(v33 + 58));
              }

LABEL_46:
              *&v773 = 0;
              v49 = a1;
              v50 = 47;
              goto LABEL_1400;
            }

            if (*(a4 + 60))
            {
              if (v620 <= 8)
              {
                if (v620 <= 6)
                {
                  if (v620 != 5)
                  {
                    if (v620 == 6)
                    {
                      if (v571 > v221)
                      {
                        v657 = *(a4 + 96);
                        while (v90 < v657)
                        {
                          v658 = *v90;
                          if ((~v658 & 0xC0) != 0)
                          {
                            v664 = 1;
                          }

                          else
                          {
                            v659 = utf8_table4[v658 & 0x3F];
                            v658 = (utf8_table3[v659] & v658) << (6 * v659);
                            v660 = v90 + 1;
                            if (v659 <= 1)
                            {
                              v661 = 1;
                            }

                            else
                            {
                              v661 = v659;
                            }

                            v662 = 6 * v659 - 6;
                            do
                            {
                              v663 = *v660++;
                              v658 |= (v663 & 0x3F) << v662;
                              v662 -= 6;
                              --v661;
                            }

                            while (v661);
                            if (v658 > 255)
                            {
                              goto LABEL_1375;
                            }

                            v664 = v659 + 1;
                          }

                          if ((*(*(a4 + 40) + v658) & 4) != 0)
                          {
                            v90 = (v90 + v664);
                            v33[1] = v90;
                            if (++v221 != v571)
                            {
                              continue;
                            }
                          }

                          goto LABEL_1375;
                        }
                      }

                      goto LABEL_1375;
                    }

LABEL_1323:
                    v777 = *v33;
                    pcre_freeMem(a1, &v778, a3, a4, a5, a6, a7, a8, v758);
                    v574 = v777;
                    v13 = 4294967282;
                    if (!v777)
                    {
                      return v13;
                    }

LABEL_989:
                    *(v574 + 102) = v13;
LABEL_916:
                    *(a4 + 152) = v574;
                    goto LABEL_992;
                  }

                  if (v571 > v221)
                  {
                    v717 = *(a4 + 96);
                    while (1)
                    {
                      if (v90 >= v717)
                      {
                        goto LABEL_1375;
                      }

                      v718 = *v90;
                      if ((~v718 & 0xC0) != 0)
                      {
                        break;
                      }

                      v719 = utf8_table4[v718 & 0x3F];
                      v718 = (utf8_table3[v719] & v718) << (6 * v719);
                      v720 = v90 + 1;
                      if (v719 <= 1)
                      {
                        v721 = 1;
                      }

                      else
                      {
                        v721 = v719;
                      }

                      v722 = 6 * v719 - 6;
                      do
                      {
                        v723 = *v720++;
                        v718 |= (v723 & 0x3F) << v722;
                        v722 -= 6;
                        --v721;
                      }

                      while (v721);
                      v724 = v719 + 1;
                      if (v718 <= 255)
                      {
                        goto LABEL_1337;
                      }

LABEL_1338:
                      v90 = (v90 + v724);
                      v33[1] = v90;
                      if (++v221 == v571)
                      {
                        goto LABEL_1375;
                      }
                    }

                    v724 = 1;
LABEL_1337:
                    if ((*(*(a4 + 40) + v718) & 4) != 0)
                    {
                      goto LABEL_1375;
                    }

                    goto LABEL_1338;
                  }

                  goto LABEL_1375;
                }

                if (v620 != 7)
                {
                  if (v571 > v221)
                  {
                    v702 = *(a4 + 96);
                    while (v90 < v702)
                    {
                      v703 = *v90;
                      if ((~v703 & 0xC0) != 0)
                      {
                        v709 = 1;
                      }

                      else
                      {
                        v704 = utf8_table4[v703 & 0x3F];
                        v703 = (utf8_table3[v704] & v703) << (6 * v704);
                        v705 = v90 + 1;
                        if (v704 <= 1)
                        {
                          v706 = 1;
                        }

                        else
                        {
                          v706 = v704;
                        }

                        v707 = 6 * v704 - 6;
                        do
                        {
                          v708 = *v705++;
                          v703 |= (v708 & 0x3F) << v707;
                          v707 -= 6;
                          --v706;
                        }

                        while (v706);
                        if (v703 > 255)
                        {
                          goto LABEL_1375;
                        }

                        v709 = v704 + 1;
                      }

                      if (*(*(a4 + 40) + v703))
                      {
                        v90 = (v90 + v709);
                        v33[1] = v90;
                        if (++v221 != v571)
                        {
                          continue;
                        }
                      }

                      goto LABEL_1375;
                    }
                  }

                  goto LABEL_1375;
                }

                if (v571 <= v221)
                {
                  goto LABEL_1375;
                }

                v733 = *(a4 + 96);
                while (1)
                {
                  if (v90 >= v733)
                  {
                    goto LABEL_1375;
                  }

                  v734 = *v90;
                  if ((~v734 & 0xC0) != 0)
                  {
                    break;
                  }

                  v735 = utf8_table4[v734 & 0x3F];
                  v734 = (utf8_table3[v735] & v734) << (6 * v735);
                  v736 = v90 + 1;
                  if (v735 <= 1)
                  {
                    v737 = 1;
                  }

                  else
                  {
                    v737 = v735;
                  }

                  v738 = 6 * v735 - 6;
                  do
                  {
                    v739 = *v736++;
                    v734 |= (v739 & 0x3F) << v738;
                    v738 -= 6;
                    --v737;
                  }

                  while (v737);
                  v740 = v735 + 1;
                  if (v734 <= 255)
                  {
                    goto LABEL_1367;
                  }

LABEL_1368:
                  v90 = (v90 + v740);
                  v33[1] = v90;
                  if (++v221 == v571)
                  {
                    goto LABEL_1375;
                  }
                }

                v740 = 1;
LABEL_1367:
                if (*(*(a4 + 40) + v734))
                {
                  goto LABEL_1375;
                }

                goto LABEL_1368;
              }

              if (v620 > 10)
              {
                if (v620 == 12)
                {
                  v741 = v572;
                }

                else
                {
                  if (v620 != 11)
                  {
                    goto LABEL_1323;
                  }

                  v710 = v33[4];
                  if (v571 != 0x7FFFFFFF)
                  {
                    if ((v710 & 4) != 0)
                    {
                      if (v571 > v221)
                      {
                        v754 = *(a4 + 96);
                        do
                        {
                          v755 = (v90 + 1);
                          v33[1] = (v90 + 1);
                          if (v90 + 1 < v754)
                          {
                            v756 = v754 - 1 - v90;
                            while ((*v755 & 0xC0) == 0x80)
                            {
                              v755 = (v755 + 1);
                              v33[1] = v755;
                              if (!--v756)
                              {
                                v755 = v754;
                                break;
                              }
                            }
                          }

                          ++v221;
                          v90 = v755;
                        }

                        while (v221 != v571);
                      }
                    }

                    else if (v571 > v221)
                    {
                      v753 = *(a4 + 96);
                      do
                      {
                        if (v90 >= v753 || *v90 == 10)
                        {
                          break;
                        }

                        v90 = (v90 + 1);
                        v33[1] = v90;
                        if (v90 < v753)
                        {
                          while ((*v90 & 0xC0) == 0x80)
                          {
                            v90 = (v90 + 1);
                            v33[1] = v90;
                            if (v90 == v753)
                            {
                              v90 = v753;
                              break;
                            }
                          }
                        }

                        ++v221;
                      }

                      while (v221 != v571);
                    }

                    goto LABEL_1375;
                  }

                  if ((v710 & 4) == 0)
                  {
                    if (v221 != 0x7FFFFFFF)
                    {
                      v711 = *(a4 + 96);
                      v712 = v221 - 0x7FFFFFFF;
                      do
                      {
                        if (v90 >= v711)
                        {
                          break;
                        }

                        if (*v90 == 10)
                        {
                          break;
                        }

                        v90 = (v90 + 1);
                        v33[1] = v90;
                        v126 = __CFADD__(v712++, 1);
                      }

                      while (!v126);
                    }

                    goto LABEL_1375;
                  }

                  v741 = v221 ^ 0x7FFFFFFFu;
                  v572 = v221 ^ 0x7FFFFFFF;
                }

                if (*(a4 + 96) - v90 >= v741)
                {
                  v742 = v572;
                }

                else
                {
                  v742 = *(a4 + 96) - v90;
                }

                v33[1] = (v90 + v742);
                goto LABEL_1375;
              }

              if (v620 != 9)
              {
                if (v571 > v221)
                {
                  v692 = *(a4 + 96);
                  while (v90 < v692)
                  {
                    v693 = *v90;
                    if ((~v693 & 0xC0) != 0)
                    {
                      v699 = 1;
                    }

                    else
                    {
                      v694 = utf8_table4[v693 & 0x3F];
                      v693 = (utf8_table3[v694] & v693) << (6 * v694);
                      v695 = v90 + 1;
                      if (v694 <= 1)
                      {
                        v696 = 1;
                      }

                      else
                      {
                        v696 = v694;
                      }

                      v697 = 6 * v694 - 6;
                      do
                      {
                        v698 = *v695++;
                        v693 |= (v698 & 0x3F) << v697;
                        v697 -= 6;
                        --v696;
                      }

                      while (v696);
                      if (v693 > 255)
                      {
                        goto LABEL_1375;
                      }

                      v699 = v694 + 1;
                    }

                    if ((*(*(a4 + 40) + v693) & 0x10) != 0)
                    {
                      v90 = (v90 + v699);
                      v33[1] = v90;
                      if (++v221 != v571)
                      {
                        continue;
                      }
                    }

                    goto LABEL_1375;
                  }
                }

                goto LABEL_1375;
              }

              if (v571 <= v221)
              {
LABEL_1375:
                v11 = v767;
LABEL_102:
                *&v773 = 0;
                v49 = a1;
                v50 = 48;
                goto LABEL_1400;
              }

              v725 = *(a4 + 96);
              while (1)
              {
                if (v90 >= v725)
                {
                  goto LABEL_1375;
                }

                v726 = *v90;
                if ((~v726 & 0xC0) != 0)
                {
                  break;
                }

                v727 = utf8_table4[v726 & 0x3F];
                v726 = (utf8_table3[v727] & v726) << (6 * v727);
                v728 = v90 + 1;
                if (v727 <= 1)
                {
                  v729 = 1;
                }

                else
                {
                  v729 = v727;
                }

                v730 = 6 * v727 - 6;
                do
                {
                  v731 = *v728++;
                  v726 |= (v731 & 0x3F) << v730;
                  v730 -= 6;
                  --v729;
                }

                while (v729);
                v732 = v727 + 1;
                if (v726 <= 255)
                {
                  goto LABEL_1352;
                }

LABEL_1353:
                v90 = (v90 + v732);
                v33[1] = v90;
                if (++v221 == v571)
                {
                  goto LABEL_1375;
                }
              }

              v732 = 1;
LABEL_1352:
              if ((*(*(a4 + 40) + v726) & 0x10) != 0)
              {
                goto LABEL_1375;
              }

              goto LABEL_1353;
            }

            if (v620 > 8)
            {
              if (v620 > 10)
              {
                if (v620 == 12)
                {
                  goto LABEL_1376;
                }

                if (v620 != 11)
                {
                  goto LABEL_1323;
                }

                if ((v33[4] & 4) != 0)
                {
LABEL_1376:
                  v743 = *(a4 + 96) - v90;
                  if (v743 >= v572)
                  {
                    LODWORD(v743) = v572;
                  }

                  v89 = (v90 + v743);
                  v33[1] = v89;
                }

                else
                {
                  v715 = v571 - v221;
                  if (v571 <= v221)
                  {
                    goto LABEL_1398;
                  }

                  v716 = *(a4 + 96);
                  v89 = v90;
                  do
                  {
                    if (v89 >= v716)
                    {
                      break;
                    }

                    if (*v89 == 10)
                    {
                      break;
                    }

                    v89 = (v89 + 1);
                    v33[1] = v89;
                    --v715;
                  }

                  while (v715);
                }
              }

              else if (v620 == 9)
              {
                v746 = v571 - v221;
                if (v571 <= v221)
                {
                  goto LABEL_1398;
                }

                v747 = *(a4 + 96);
                v89 = v90;
                do
                {
                  if (v89 >= v747)
                  {
                    break;
                  }

                  if ((*(*(a4 + 40) + *v89) & 0x10) != 0)
                  {
                    break;
                  }

                  v89 = (v89 + 1);
                  v33[1] = v89;
                  --v746;
                }

                while (v746);
              }

              else
              {
                v700 = v571 - v221;
                if (v571 <= v221)
                {
                  goto LABEL_1398;
                }

                v701 = *(a4 + 96);
                v89 = v90;
                do
                {
                  if (v89 >= v701)
                  {
                    break;
                  }

                  if ((*(*(a4 + 40) + *v89) & 0x10) == 0)
                  {
                    break;
                  }

                  v89 = (v89 + 1);
                  v33[1] = v89;
                  --v700;
                }

                while (v700);
              }
            }

            else if (v620 > 6)
            {
              if (v620 == 7)
              {
                v748 = v571 - v221;
                if (v571 <= v221)
                {
                  goto LABEL_1398;
                }

                v749 = *(a4 + 96);
                v89 = v90;
                do
                {
                  if (v89 >= v749)
                  {
                    break;
                  }

                  if (*(*(a4 + 40) + *v89))
                  {
                    break;
                  }

                  v89 = (v89 + 1);
                  v33[1] = v89;
                  --v748;
                }

                while (v748);
              }

              else
              {
                v713 = v571 - v221;
                if (v571 <= v221)
                {
                  goto LABEL_1398;
                }

                v714 = *(a4 + 96);
                v89 = v90;
                do
                {
                  if (v89 >= v714)
                  {
                    break;
                  }

                  if ((*(*(a4 + 40) + *v89) & 1) == 0)
                  {
                    break;
                  }

                  v89 = (v89 + 1);
                  v33[1] = v89;
                  --v713;
                }

                while (v713);
              }
            }

            else
            {
              if (v620 != 5)
              {
                if (v620 != 6)
                {
                  goto LABEL_1323;
                }

                v689 = v571 - v221;
                if (v571 > v221)
                {
                  v690 = *(a4 + 96);
                  v89 = v90;
                  do
                  {
                    if (v89 >= v690)
                    {
                      break;
                    }

                    if ((*(*(a4 + 40) + *v89) & 4) == 0)
                    {
                      break;
                    }

                    v89 = (v89 + 1);
                    v33[1] = v89;
                    --v689;
                  }

                  while (v689);
                  goto LABEL_1379;
                }

LABEL_1398:
                v11 = v767;
                goto LABEL_1399;
              }

              v744 = v571 - v221;
              if (v571 <= v221)
              {
                goto LABEL_1398;
              }

              v745 = *(a4 + 96);
              v89 = v90;
              do
              {
                if (v89 >= v745)
                {
                  break;
                }

                if ((*(*(a4 + 40) + *v89) & 4) != 0)
                {
                  break;
                }

                v89 = (v89 + 1);
                v33[1] = v89;
                --v744;
              }

              while (v744);
            }

LABEL_1379:
            v11 = v767;
LABEL_111:
            if (v89 < v90)
            {
              goto LABEL_907;
            }

LABEL_1399:
            *&v773 = 0;
            v49 = a1;
            v50 = 49;
            goto LABEL_1400;
          case 0x3Bu:
          case 0x3Cu:
            v249 = v211 + 1;
            v33[9] = (v211 + 1);
            v33[2] = (v211 + 33);
            v250 = v211[33];
            if ((v250 - 51) >= 6)
            {
              if ((v250 - 57) >= 2)
              {
                v252 = 0;
                v33[29] = 0x100000001;
                v254 = 1;
                v253 = 1;
                v11 = v767;
                if (*(a4 + 60))
                {
LABEL_679:
                  v472 = *(a4 + 96);
                  v473 = v33[1];
                  v474 = 1;
                  while (v473 < v472)
                  {
                    v475 = v473 + 1;
                    v33[1] = (v473 + 1);
                    v476 = *v473;
                    if ((~v476 & 0xC0) != 0)
                    {
                      goto LABEL_687;
                    }

                    v477 = utf8_table4[v476 & 0x3F];
                    v478 = 6 * v477;
                    v476 = (utf8_table3[utf8_table4[v476 & 0x3F]] & v476) << (6 * v477);
                    v479 = v477 + 1;
                    v480 = v478 - 6;
                    do
                    {
                      v481 = v475++;
                      v33[1] = v475;
                      v476 |= (*v481 & 0x3F) << v480;
                      --v479;
                      v480 -= 6;
                    }

                    while (v479 > 1);
                    if (v476 < 256)
                    {
LABEL_687:
                      if (((v249[v476 / 8] >> (v476 & 7)) & 1) == 0)
                      {
                        goto LABEL_907;
                      }
                    }

                    else if (v212 == 59)
                    {
                      goto LABEL_907;
                    }

                    v473 = v475;
                    v42 = v474++ == v253;
                    if (v42)
                    {
                      goto LABEL_690;
                    }
                  }
                }

                else
                {
LABEL_692:
                  v483 = *(a4 + 96);
                  v484 = v33[1];
                  v485 = v253;
                  while (v484 < v483)
                  {
                    v33[1] = (v484 + 1);
                    if (((v249[*v484 >> 3] >> (*v484 & 7)) & 1) == 0)
                    {
                      break;
                    }

                    v484 = (v484 + 1);
                    if (!--v485)
                    {
                      goto LABEL_696;
                    }
                  }
                }

                goto LABEL_907;
              }

              v252 = v250 == 58;
              *(v33 + 42) = v252;
              v253 = __rev16(*(v211 + 17));
              *(v33 + 59) = v253;
              v254 = __rev16(*(v211 + 18));
              if (!v254)
              {
                v254 = 0x7FFFFFFF;
              }

              *(v33 + 58) = v254;
              v33[2] = (v211 + 38);
            }

            else
            {
              v33[2] = (v211 + 34);
              v251 = v211[33];
              v252 = (v251 - 51) & 1;
              *(v33 + 42) = v252;
              v253 = rep_min_0[v251 - 51];
              *(v33 + 59) = v253;
              if ((v251 - 57) >= 0xFFFFFFFE)
              {
                v254 = rep_max_0[v251 - 51];
              }

              else
              {
                v254 = 0x7FFFFFFF;
              }

              *(v33 + 58) = v254;
            }

            if (*(a4 + 60))
            {
              v11 = v767;
              if (v253 >= 1)
              {
                goto LABEL_679;
              }

LABEL_690:
              v482 = 0;
            }

            else
            {
              v11 = v767;
              if (v253 >= 1)
              {
                goto LABEL_692;
              }

LABEL_696:
              v482 = 1;
            }

            if (v254 == v253)
            {
              continue;
            }

            if (v252)
            {
              *(v33 + 56) = v253;
              v11 = v767;
              if (v482)
              {
LABEL_230:
                *&v773 = 0;
                v49 = a1;
                v50 = 23;
              }

              else
              {
LABEL_919:
                *&v773 = 0;
                v49 = a1;
                v50 = 22;
              }

LABEL_1400:
              v181 = pcre_getMem(v49, v50, &v773, a4, a5, a6, a7, a8);
              v102 = v773;
              v182 = v777;
              if (!v773)
              {
                goto LABEL_1407;
              }

              goto LABEL_1401;
            }

            v95 = v33[1];
            v33[11] = v95;
            if (v482)
            {
              v338 = __OFSUB__(v254, v253);
              v665 = v254 - v253;
              if ((v665 < 0) ^ v338 | (v665 == 0))
              {
                v11 = v767;
LABEL_1267:
                *&v773 = 0;
                v49 = a1;
                v50 = 25;
                goto LABEL_1400;
              }

              v666 = *(a4 + 96);
              v94 = v95;
              do
              {
                if (v94 >= v666)
                {
                  break;
                }

                if (((v249[*v94 >> 3] >> (*v94 & 7)) & 1) == 0)
                {
                  break;
                }

                v33[1] = ++v94;
                --v665;
              }

              while (v665);
              v11 = v767;
LABEL_121:
              if (v94 >= v95)
              {
                goto LABEL_1267;
              }

              goto LABEL_907;
            }

            if (v254 <= v253)
            {
LABEL_1215:
              v11 = v767;
LABEL_128:
              *&v773 = 0;
              v49 = a1;
              v50 = 24;
              goto LABEL_1400;
            }

            v670 = *(a4 + 96);
            while (1)
            {
              if (v95 >= v670)
              {
                goto LABEL_1215;
              }

              v671 = *v95;
              if ((~v671 & 0xC0) != 0)
              {
                break;
              }

              v672 = utf8_table4[v671 & 0x3F];
              v671 = (utf8_table3[v672] & v671) << (6 * v672);
              v673 = (v95 + 1);
              if (v672 <= 1)
              {
                v674 = 1;
              }

              else
              {
                v674 = v672;
              }

              v675 = 6 * v672 - 6;
              do
              {
                v676 = *v673++;
                v671 |= (v676 & 0x3F) << v675;
                v675 -= 6;
                --v674;
              }

              while (v674);
              v677 = v672 + 1;
              if (v671 < 256)
              {
                goto LABEL_1213;
              }

              if (v212 == 59)
              {
                goto LABEL_1215;
              }

LABEL_1214:
              v95 += v677;
              v33[1] = v95;
              if (++v253 == v254)
              {
                goto LABEL_1215;
              }
            }

            v677 = 1;
LABEL_1213:
            if (((v249[v671 / 8] >> (v671 & 7)) & 1) == 0)
            {
              goto LABEL_1215;
            }

            goto LABEL_1214;
          case 0x3Du:
            v461 = v211 + 3;
            v33[9] = (v211 + 3);
            v462 = &v211[__rev16(*(v211 + 1))];
            v33[2] = v462;
            v463 = *v462;
            if ((v463 - 51) >= 6)
            {
              if ((v463 - 57) >= 2)
              {
                v465 = 0;
                v33[29] = 0x100000001;
                v466 = 1;
                v467 = 1;
                goto LABEL_780;
              }

              v465 = v463 == 58;
              *(v33 + 42) = v465;
              v466 = __rev16(*(v462 + 1));
              *(v33 + 59) = v466;
              v467 = __rev16(*(v462 + 3));
              if (!v467)
              {
                v467 = 0x7FFFFFFF;
              }

              *(v33 + 58) = v467;
              v33[2] = (v462 + 5);
            }

            else
            {
              v33[2] = (v462 + 1);
              v464 = *v462;
              v465 = (v464 - 51) & 1;
              *(v33 + 42) = v465;
              v466 = rep_min_0[v464 - 51];
              *(v33 + 59) = v466;
              v467 = rep_max_0[v464 - 51];
              if ((v464 - 57) < 0xFFFFFFFE)
              {
                v467 = 0x7FFFFFFF;
              }

              *(v33 + 58) = v467;
            }

            if (v466 < 1)
            {
              goto LABEL_791;
            }

LABEL_780:
            v761 = v467;
            v764 = v9;
            v520 = v8;
            v521 = *(a4 + 96);
            v522 = v33[1];
            v523 = 1;
            do
            {
              if (v522 >= v521)
              {
                goto LABEL_969;
              }

              v524 = v522 + 1;
              v33[1] = (v522 + 1);
              v525 = *v522;
              if ((~v525 & 0xC0) != 0)
              {
                ++v522;
              }

              else
              {
                v526 = utf8_table4[v525 & 0x3F];
                v527 = 6 * v526;
                v525 = (utf8_table3[utf8_table4[v525 & 0x3F]] & v525) << (6 * v526);
                v528 = v526 + 1;
                v529 = v527 - 6;
                do
                {
                  v522 = v524 + 1;
                  v33[1] = (v524 + 1);
                  v525 |= (*v524 & 0x3F) << v529;
                  --v528;
                  v529 -= 6;
                  ++v524;
                }

                while (v528 > 1);
              }

              if (!match_xclass(v525, v461))
              {
LABEL_969:
                v777 = *v33;
                pcre_freeMem(a1, &v778, a3, a4, a5, a6, a7, a8, v758);
                v581 = v777;
                if (!v777)
                {
                  return 0;
                }

                v13 = 0;
                *(v777 + 102) = 0;
                *(a4 + 152) = v581;
                v8 = v520;
                v9 = v764;
                goto LABEL_992;
              }

              v42 = v523++ == v466;
            }

            while (!v42);
            v8 = v520;
            v9 = v764;
            v467 = v761;
LABEL_791:
            if (v466 == v467)
            {
              continue;
            }

            if (!v465)
            {
              v678 = v33[1];
              v33[11] = v678;
              if (v466 < v467)
              {
                v679 = v467;
                v765 = v9;
                v680 = v8;
                v681 = *(a4 + 96);
                do
                {
                  if (v678 >= v681)
                  {
                    break;
                  }

                  v682 = *v678;
                  if ((~v682 & 0xC0) != 0)
                  {
                    v688 = 1;
                  }

                  else
                  {
                    v683 = utf8_table4[v682 & 0x3F];
                    v682 = (utf8_table3[v683] & v682) << (6 * v683);
                    v684 = (v678 + 1);
                    v685 = v683 <= 1 ? 1 : v683;
                    v686 = 6 * v683 - 6;
                    do
                    {
                      v687 = *v684++;
                      v682 |= (v687 & 0x3F) << v686;
                      v686 -= 6;
                      --v685;
                    }

                    while (v685);
                    v688 = v683 + 1;
                  }

                  if (!match_xclass(v682, v461))
                  {
                    break;
                  }

                  v678 += v688;
                  v33[1] = v678;
                  ++v466;
                }

                while (v466 != v679);
                v8 = v680;
                v9 = v765;
              }

              v11 = v767;
LABEL_64:
              *&v773 = 0;
              v49 = a1;
              v50 = 27;
              goto LABEL_1400;
            }

            v185 = v9;
            *(v33 + 56) = v466;
            v11 = v767;
LABEL_273:
            *&v773 = 0;
            v181 = pcre_getMem(a1, 26, &v773, a4, a5, a6, a7, a8);
            v102 = v773;
            v182 = v777;
            v9 = v185;
            if (!v773)
            {
LABEL_1407:
              v594 = *v182;
LABEL_1408:
              v777 = v594;
              pcre_freeMem(a1, &v778, a3, a4, a5, a6, a7, a8, v758);
              v175 = v777;
              if (v777)
              {
LABEL_1409:
                v13 = 4294967290;
                goto LABEL_1410;
              }

              return 4294967290;
            }

LABEL_1401:
            if (v181 < 0)
            {
              goto LABEL_1407;
            }

            v750 = *(v182 + 1);
            *(v102 + 1) = v750;
            *(v102 + 6) = *(v182 + 6);
            v177 = v182[4];
            v102[4] = v177;
            v176 = v182[5];
            v102[5] = v176;
            *(v102 + 12) = 0;
            *v102 = v182;
            v777 = v102;
            v105 = v750;
LABEL_1403:
            v104 = 1;
LABEL_1404:
            *(v102 + 47) = 0;
            *(v102 + 51) = 0;
            v102[26] = 0;
            v751 = *a4;
            v752 = *(a4 + 8);
            ++*a4;
            if (v751 < v752)
            {
              v102[22] = v177;
              if ((v104 & 1) == 0)
              {
                v102[49] = v176;
                v102[50] = v105;
                v102[5] = (v102 + 49);
              }

              goto LABEL_331;
            }

            v777 = *v102;
            pcre_freeMem(a1, &v778, a3, a4, a5, a6, a7, a8, v758);
            v175 = v777;
            v13 = 4294967288;
            if (!v777)
            {
              return v13;
            }

LABEL_1410:
            *(v175 + 102) = v13;
LABEL_1411:
            *(a4 + 152) = v175;
LABEL_1412:
            v14 = v778;
            goto LABEL_2;
          case 0x3Eu:
            v458 = (v211[1] << 9) | (2 * v211[2]);
            *(v33 + 61) = v458;
            v33[2] = (v211 + 3);
            v763 = v458;
            if (v458 >= *(v33 + 6) || (v459 = (*(a4 + 16) + 4 * v458), (*v459 & 0x80000000) != 0))
            {
              v460 = *(a4 + 96) - *(v33 + 2) + 1;
            }

            else
            {
              v460 = v459[1] - *v459;
            }

            *(v33 + 57) = v460;
            v468 = v211[3];
            if ((v468 - 51) >= 6)
            {
              if ((v468 - 57) >= 2)
              {
                v545 = v33[1];
                if (!match_ref_0(v458, v545, v460, a4, v33[4]))
                {
                  goto LABEL_914;
                }

                v33[1] = &v545[v460];
                continue;
              }

              v758 = v468 == 58;
              *(v33 + 42) = v758;
              v470 = __rev16(*(v211 + 2));
              *(v33 + 59) = v470;
              v516 = __rev16(*(v211 + 3));
              if (v516)
              {
                v471 = v516;
              }

              else
              {
                v471 = 0x7FFFFFFF;
              }

              *(v33 + 58) = v471;
              v33[2] = (v211 + 8);
            }

            else
            {
              v33[2] = (v211 + 4);
              v469 = v211[3];
              v758 = (v469 - 51) & 1;
              *(v33 + 42) = v758;
              v470 = rep_min_0[v469 - 51];
              *(v33 + 59) = v470;
              v471 = rep_max_0[v469 - 51];
              if ((v469 - 57) < 0xFFFFFFFE)
              {
                v471 = 0x7FFFFFFF;
              }

              *(v33 + 58) = v471;
            }

            if (v460)
            {
              v759 = v471;
              v760 = v470;
              v120 = v9;
              v123 = v8;
              if (v470 >= 1)
              {
                v517 = v33[4];
                v518 = v33[1];
                v519 = v470;
                while (match_ref_0(v763, v518, v460, a4, v517))
                {
                  v518 += v460;
                  v33[1] = v518;
                  if (!--v519)
                  {
                    goto LABEL_773;
                  }
                }

                v777 = *v33;
                pcre_freeMem(a1, &v778, a3, a4, a5, a6, a7, a8, v758);
                v582 = v777;
                if (!v777)
                {
                  return 0;
                }

                v13 = 0;
                *(v777 + 102) = 0;
                *(a4 + 152) = v582;
                v9 = v120;
LABEL_992:
                v11 = v767;
                goto LABEL_1412;
              }

LABEL_773:
              v9 = v120;
              if (v759 != v760)
              {
                if (!v758)
                {
                  v125 = v33[1];
                  v33[11] = v125;
                  v691 = v759 - v760;
                  if (v759 <= v760)
                  {
                    v8 = v123;
                    v9 = v120;
                    v11 = v767;
                  }

                  else
                  {
                    v762 = v33[4];
                    v124 = v125;
                    do
                    {
                      if (!match_ref_0(v763, v124, v460, a4, v762))
                      {
                        break;
                      }

                      v124 += v460;
                      v33[1] = v124;
                      --v691;
                    }

                    while (v691);
                    v9 = v120;
                    v11 = v767;
LABEL_169:
                    v126 = v124 >= v125;
                    v8 = v123;
                    if (!v126)
                    {
                      goto LABEL_907;
                    }
                  }

                  *&v773 = 0;
                  v49 = a1;
                  v50 = 21;
                  goto LABEL_1400;
                }

                *(v33 + 56) = v760;
LABEL_260:
                *&v773 = 0;
                v181 = pcre_getMem(a1, 20, &v773, a4, a5, a6, a7, a8);
                v102 = v773;
                v182 = v777;
                v9 = v120;
                v11 = v767;
                if (!v773)
                {
                  goto LABEL_1407;
                }

                goto LABEL_1401;
              }
            }

            continue;
          case 0x3Fu:
            v612 = (*(a4 + 80) + __rev16(*(v211 + 1)));
            v33[7] = v612;
            v613 = *v612;
            *(v33 + 30) = v613 - 80;
            if (v613 >= 0xB5)
            {
              *(v33 + 30) = __rev16(*(v612 + 2));
            }

            v33[14] = *(a4 + 136);
            *(a4 + 136) = v33 + 14;
            v33[2] = (v211 + 3);
            v33[16] = (v211 + 3);
            v614 = *(a4 + 24);
            *(v33 + 38) = v614;
            if (v614 > 30)
            {
              v615 = heap_Calloc(*(*a1 + 8), 1, 4 * v614);
              v652 = v777;
              v777[18] = v615;
              v11 = v767;
              if (!v615)
              {
                v777 = *v652;
                pcre_freeMem(a1, &v778, v646, v647, v648, v649, v650, v651, v758);
                v175 = v777;
                v13 = 4294967290;
                if (!v777)
                {
                  return v13;
                }

                goto LABEL_1410;
              }

              v614 = *(v652 + 38);
            }

            else
            {
              v615 = v33 + 268;
              v33[18] = (v33 + 268);
              v11 = v767;
            }

            cstdlib_memcpy(v615, *(a4 + 16), 4 * v614);
            v653 = v777;
            v777[17] = *(a4 + 104);
            *(a4 + 104) = v653[1];
            goto LABEL_310;
          case 0x40u:
            if (!v8)
            {
              goto LABEL_390;
            }

            v775 = 0u;
            v776 = 0u;
            v773 = 0u;
            v774 = 0u;
            LODWORD(v773) = 1;
            v267 = v33[2];
            DWORD1(v773) = *(v267 + 1);
            v268 = *(a4 + 88);
            *(&v773 + 1) = *(a4 + 16);
            *&v774 = v268;
            *(&v774 + 1) = vmovn_s64(vsubq_s64(*(a4 + 96), vdupq_n_s64(v268)));
            LODWORD(v775) = *(v33 + 2) - v268;
            DWORD2(v776) = __rev16(*(v267 + 1));
            HIDWORD(v776) = __rev16(*(v267 + 2));
            v269 = *(a4 + 124);
            DWORD1(v775) = *(v33 + 6) / 2;
            DWORD2(v775) = v269;
            *&v776 = *(a4 + 144);
            v270 = v8(&v773);
            if (v270 >= 1)
            {
              v777 = *v777;
              pcre_freeMem(a1, &v778, a3, a4, a5, a6, a7, a8, v758);
              v13 = 0;
              goto LABEL_1133;
            }

            v13 = v270;
            if ((v270 & 0x80000000) != 0)
            {
              v777 = *v777;
              pcre_freeMem(a1, &v778, a3, a4, a5, a6, a7, a8, v758);
LABEL_1133:
              v574 = v777;
              if (!v777)
              {
                return v13;
              }

              goto LABEL_989;
            }

            v33 = v777;
            v211 = v777[2];
LABEL_390:
            v33[2] = (v211 + 6);
            continue;
          case 0x41u:
            do
            {
              v211 += __rev16(*(v211 + 1));
              v33[2] = v211;
            }

            while (*v211 == 65);
            continue;
          case 0x42u:
          case 0x43u:
          case 0x44u:
            v228 = &v211[-__rev16(*(v211 + 1))];
            v33[12] = v228;
            v229 = v33[5];
            v230 = v229[1];
            v33[13] = v230;
            v33[5] = *v229;
            v231 = *v228;
            if (v231 == 75)
            {
              goto LABEL_744;
            }

            if (v231 - 69 < 4 || v231 == 74)
            {
              *(a4 + 112) = v33[1];
              *(a4 + 120) = *(v33 + 6);
              v777 = *v33;
              pcre_freeMem(a1, &v778, a3, a4, a5, a6, a7, a8, v758);
              v574 = v777;
              v13 = 1;
              if (!v777)
              {
                return v13;
              }

              goto LABEL_989;
            }

            v232 = v231 - 80;
            *(v33 + 60) = v231 - 80;
            if (v231 >= 0xB5)
            {
              v232 = __rev16(*(v228 + 2));
              *(v33 + 60) = v232;
            }

            v233 = 2 * v232;
            *(v33 + 61) = 2 * v232;
            if (v232 >= 1)
            {
              *(a4 + 124) = v232;
              if (v233 >= *(a4 + 28))
              {
                *(a4 + 48) = 1;
              }

              else
              {
                v234 = *(a4 + 16);
                *(v234 + 4 * v233) = *(v234 + 4 * (*(a4 + 24) - v232));
                *(v234 + 4 * *(v33 + 61) + 4) = *(v33 + 2) - *(a4 + 88);
                v235 = *(v33 + 61);
                if (*(v33 + 6) <= v235)
                {
                  *(v33 + 6) = v235 + 2;
                }
              }

              v505 = *(a4 + 136);
              if (v505)
              {
                if (*(v505 + 8) == *(v33 + 60))
                {
                  *(a4 + 136) = *v505;
                  *(a4 + 104) = *(v505 + 24);
                  cstdlib_memcpy(*(a4 + 16), *(v505 + 32), 4 * *(v505 + 40));
                  v506 = v777;
                  v777[2] = *(v505 + 16);
                  v506[4] = v506[22];
                  continue;
                }
              }
            }

LABEL_744:
            v33[4] = v33[22];
            v507 = *v211;
            if (v507 != 66 && v33[1] != v230)
            {
              if (v507 != 68)
              {
                *&v773 = 0;
                v127 = pcre_getMem(a1, 18, &v773, a4, a5, a6, a7, a8);
                v102 = v773;
                v103 = v777;
                v11 = v767;
                if (v773)
                {
                  goto LABEL_175;
                }

                goto LABEL_1198;
              }

              *&v773 = 0;
              v593 = pcre_getMem(a1, 16, &v773, a4, a5, a6, a7, a8);
              v102 = v773;
              v184 = v777;
              v11 = v767;
              if (!v773 || v593 < 0)
              {
LABEL_1030:
                v594 = *v184;
                goto LABEL_1408;
              }

LABEL_265:
              v105 = v184[1];
              v102[1] = v105;
              v102[2] = v184[2] + 3;
              *(v102 + 6) = *(v184 + 6);
              v177 = v184[4];
              v102[4] = v177;
              v176 = v184[5];
              v102[5] = v176;
              *(v102 + 12) = 0;
              *v102 = v184;
              v777 = v102;
              goto LABEL_1403;
            }

            goto LABEL_756;
          case 0x45u:
          case 0x47u:
            v11 = v767;
            goto LABEL_301;
          case 0x46u:
          case 0x48u:
            v11 = v767;
            goto LABEL_292;
          case 0x49u:
            v306 = v211[1];
            v307 = v211[2];
            if (*(a4 + 60))
            {
              v308 = v307 | (v306 << 8);
              if (v308)
              {
                v309 = 0;
                v310 = *(a4 + 88);
                v311 = v33[1];
                do
                {
                  v312 = (v311 - 1);
                  v33[1] = (v311 - 1);
                  if (v311 - 1 < v310)
                  {
                    goto LABEL_914;
                  }

                  if ((*v312 & 0xC0) == 0x80)
                  {
                    v313 = v311 - 2;
                    do
                    {
                      v33[1] = v313;
                      v314 = *v313--;
                    }

                    while ((v314 & 0xC0) == 0x80);
                    v312 = (v313 + 1);
                  }

                  ++v309;
                  v311 = v312;
                }

                while (v309 != v308);
              }
            }

            else
            {
              v510 = v33[1] - (v307 | (v306 << 8));
              v33[1] = v510;
              if (v510 < *(a4 + 88))
              {
                goto LABEL_914;
              }
            }

LABEL_756:
            v33[2] = (v211 + 3);
            continue;
          case 0x4Au:
            v609 = v33[1];
            v33[12] = v211;
            v33[13] = v609;
            v11 = v767;
            goto LABEL_281;
          case 0x4Bu:
            if (v211[3] != 76)
            {
              *&v773 = 0;
              v654 = pcre_getMem(a1, 4, &v773, a4, a5, a6, a7, a8);
              v102 = v773;
              v619 = v777;
              if (!v773 || v654 < 0)
              {
LABEL_1144:
                v777 = *v619;
                pcre_freeMem(a1, &v778, a3, a4, a5, a6, a7, a8, v758);
                v175 = v777;
                v11 = v767;
                if (v777)
                {
                  goto LABEL_1409;
                }

                return 4294967290;
              }

              v176 = 0;
              v104 = 0;
              v105 = v777[1];
              *(v773 + 8) = v105;
              v102[2] = v619[2] + 3;
              *(v102 + 6) = *(v619 + 6);
              v177 = v619[4];
              *(v102 + 12) = 3;
              *v102 = v619;
              v102[4] = v177;
              v102[5] = 0;
LABEL_1143:
              v777 = v102;
              v11 = v767;
              goto LABEL_1404;
            }

            v616 = (v211[4] << 9) | (2 * v211[5]);
            *(v33 + 61) = v616;
            if (v616 == 131070)
            {
              v617 = *(a4 + 136) != 0;
            }

            else
            {
              v617 = 0;
              if (v616 < *(v33 + 6))
              {
                v617 = *(*(a4 + 16) + 4 * v616) >= 0;
              }
            }

            *(v33 + 41) = v617;
            *&v773 = 0;
            v667 = pcre_getMem(a1, 3, &v773, a4, a5, a6, a7, a8);
            v102 = v773;
            v103 = v777;
            v11 = v767;
            if (!v773 || v667 < 0)
            {
              goto LABEL_1198;
            }

            v105 = v777[1];
            *(v773 + 8) = v105;
            v668 = v103[2];
            v669 = 6;
            if (!*(v103 + 41))
            {
              v669 = __rev16(*(v668 + 1)) + 3;
            }

            v104 = 0;
            v102[2] = v668 + v669;
            *(v102 + 6) = *(v103 + 6);
            v177 = v103[4];
            v102[4] = v177;
            v176 = v103[5];
            v102[5] = v176;
            *(v102 + 12) = 2;
            goto LABEL_299;
          case 0x4Cu:
          case 0x4Fu:
            goto LABEL_756;
          case 0x4Du:
            v33[10] = (v211 + 1);
            *&v773 = 0;
            v618 = pcre_getMem(a1, 14, &v773, a4, a5, a6, a7, a8);
            v102 = v773;
            v619 = v777;
            if (!v773 || v618 < 0)
            {
              goto LABEL_1144;
            }

            v104 = 0;
            v105 = v777[1];
            *(v773 + 8) = v105;
            v102[2] = v619[10];
            *(v102 + 6) = *(v619 + 6);
            v177 = v619[4];
            v102[4] = v177;
            v176 = v619[5];
            *(v102 + 12) = 2;
            v102[5] = v176;
            *v102 = v619;
            goto LABEL_1143;
          case 0x4Eu:
            v610 = v211 + 1;
            v33[10] = (v211 + 1);
            do
            {
              v610 += __rev16(*(v610 + 1));
              v33[10] = v610;
            }

            while (*v610 == 65);
            *&v773 = 0;
            v611 = pcre_getMem(a1, 15, &v773, a4, a5, a6, a7, a8);
            v102 = v773;
            v103 = v777;
            v11 = v767;
            if (!v773 || v611 < 0)
            {
              goto LABEL_1198;
            }

            v104 = 0;
            v105 = v777[1];
            *(v773 + 8) = v105;
            v203 = v103[10];
            goto LABEL_297;
          case 0x50u:
            goto LABEL_942;
          default:
            v777 = *v33;
            pcre_freeMem(a1, &v778, a3, a4, a5, a6, a7, a8, v758);
            v574 = v777;
            v13 = 4294967291;
            if (!v777)
            {
              return v13;
            }

            goto LABEL_989;
        }
      }

    case 10:
      if (v13)
      {
        goto LABEL_214;
      }

      *&v773 = 0;
      v115 = a1;
      v116 = 11;
      goto LABEL_174;
    case 11:
    case 13:
    case 17:
    case 19:
      v15 = v777;
      if (!v13)
      {
        goto LABEL_4;
      }

      goto LABEL_215;
    case 12:
      if (v13)
      {
        goto LABEL_214;
      }

      *&v773 = 0;
      v107 = a1;
      v108 = 13;
      goto LABEL_263;
    case 14:
      v15 = v777;
      if (v13)
      {
        goto LABEL_215;
      }

      v70 = v777[10];
      do
      {
        v70 += __rev16(*(v70 + 1));
        v15[10] = v70;
      }

      while (*v70 == 65);
      goto LABEL_329;
    case 15:
      v15 = v777;
      if (v13)
      {
        goto LABEL_215;
      }

      v114 = v777[2] + 1;
      goto LABEL_330;
    case 16:
      if (v13)
      {
        goto LABEL_214;
      }

      *&v773 = 0;
      v115 = a1;
      v116 = 17;
      goto LABEL_174;
    case 18:
      if (v13)
      {
LABEL_214:
        v15 = v777;
LABEL_215:
        v151 = *v15;
        goto LABEL_251;
      }

      *&v773 = 0;
      v107 = a1;
      v108 = 19;
LABEL_263:
      v183 = pcre_getMem(v107, v108, &v773, a4, a5, a6, a7, a8);
      v102 = v773;
      v184 = v777;
      if (v773 && (v183 & 0x80000000) == 0)
      {
        goto LABEL_265;
      }

      goto LABEL_1030;
    case 20:
      v120 = v9;
      v121 = v777;
      if (v13)
      {
        v777 = *v777;
        pcre_freeMem(a1, &v778, a3, a4, a5, a6, a7, a8, v758);
        v122 = v777;
        if (!v777)
        {
          return v13;
        }

        *(v777 + 102) = v13;
      }

      else
      {
        v767 = v11;
        v178 = *(v777 + 56);
        if (v178 < *(v777 + 58))
        {
          v179 = v777[1];
          v180 = *(v777 + 57);
          if (match_ref_0(*(v777 + 61), v179, v180, a4, v777[4]))
          {
            v121[1] = &v179[v180];
            *(v121 + 56) = v178 + 1;
            goto LABEL_260;
          }
        }

        v777 = *v121;
        pcre_freeMem(a1, &v778, a3, a4, a5, a6, a7, a8, v758);
        v122 = v777;
        v11 = v767;
        if (!v777)
        {
          return 0;
        }

        v13 = 0;
        *(v777 + 102) = 0;
      }

      *(a4 + 152) = v122;
      v9 = v120;
      goto LABEL_1412;
    case 21:
      v33 = v777;
      if (v13)
      {
        goto LABEL_250;
      }

      v123 = v8;
      v124 = (v777[1] - *(v777 + 57));
      v777[1] = v124;
      v125 = v33[11];
      goto LABEL_169;
    case 22:
      v15 = v777;
      if (v13)
      {
        goto LABEL_215;
      }

      v140 = *(v777 + 56);
      if (v140 >= *(v777 + 58))
      {
        goto LABEL_4;
      }

      v141 = v777[1];
      if (v141 >= *(a4 + 96))
      {
        goto LABEL_4;
      }

      v777[1] = (v141 + 1);
      v142 = *v141;
      if ((~v142 & 0xC0) != 0)
      {
        goto LABEL_917;
      }

      v143 = utf8_table4[v142 & 0x3F];
      v144 = 6 * v143;
      v142 = (utf8_table3[utf8_table4[v142 & 0x3F]] & v142) << (6 * v143);
      v145 = v141 + 2;
      v146 = v143 + 1;
      v147 = v144 - 6;
      do
      {
        v15[1] = v145;
        v142 |= (*(v145++ - 1) & 0x3F) << v147;
        --v146;
        v147 -= 6;
      }

      while (v146 > 1);
      if (v142 < 256)
      {
LABEL_917:
        if (((*(v15[9] + v142 / 8) >> (v142 & 7)) & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (*(v15 + 62) == 59)
      {
        goto LABEL_4;
      }

      *(v15 + 56) = v140 + 1;
      goto LABEL_919;
    case 23:
      v15 = v777;
      if (v13)
      {
        goto LABEL_215;
      }

      v159 = *(v777 + 56);
      if (v159 >= *(v777 + 58))
      {
        goto LABEL_4;
      }

      v160 = v777[1];
      if (v160 >= *(a4 + 96))
      {
        goto LABEL_4;
      }

      v777[1] = (v160 + 1);
      if (((*(v15[9] + (*v160 >> 3)) >> (*v160 & 7)) & 1) == 0)
      {
        goto LABEL_4;
      }

      *(v15 + 56) = v159 + 1;
      goto LABEL_230;
    case 24:
      v33 = v777;
      if (v13)
      {
        goto LABEL_250;
      }

      v96 = v777[1];
      v777[1] = v96 - 1;
      if (v96 == v33[11])
      {
        goto LABEL_907;
      }

      if ((*(v96 - 1) & 0xC0) == 0x80)
      {
        v97 = v96 - 2;
        do
        {
          v33[1] = v97;
          v98 = *v97--;
        }

        while ((v98 & 0xC0) == 0x80);
      }

      goto LABEL_128;
    case 25:
      v33 = v777;
      v94 = (v777[1] - 1);
      v777[1] = v94;
      if (v13)
      {
        goto LABEL_250;
      }

      v95 = v33[11];
      goto LABEL_121;
    case 26:
      v174 = v777;
      if (v13)
      {
        v151 = *v777;
        goto LABEL_251;
      }

      v185 = v9;
      v186 = *(v777 + 56);
      if (v186 >= *(v777 + 58) || (v187 = v777[1], v187 >= *(a4 + 96)))
      {
        v777 = *v777;
        pcre_freeMem(a1, &v778, a3, a4, a5, a6, a7, a8, v758);
        v208 = v777;
        if (!v777)
        {
          return 0;
        }

        v13 = 0;
        *(v777 + 102) = 0;
        *(a4 + 152) = v208;
        v9 = v185;
        goto LABEL_1412;
      }

      v777[1] = (v187 + 1);
      v188 = *v187;
      if ((~v188 & 0xC0) == 0)
      {
        v189 = utf8_table4[v188 & 0x3F];
        v190 = 6 * v189;
        v188 = (utf8_table3[utf8_table4[v188 & 0x3F]] & v188) << (6 * v189);
        v191 = v187 + 2;
        v192 = v189 + 1;
        v193 = v190 - 6;
        do
        {
          v174[1] = v191;
          v188 |= (*(v191++ - 1) & 0x3F) << v193;
          --v192;
          v193 -= 6;
        }

        while (v192 > 1);
      }

      if (match_xclass(v188, v174[9]))
      {
        *(v174 + 56) = v186 + 1;
        goto LABEL_273;
      }

      v777 = *v174;
      pcre_freeMem(a1, &v778, v194, a4, a5, a6, a7, a8, v758);
      v175 = v777;
      if (!v777)
      {
        return 0;
      }

      v9 = v185;
      goto LABEL_909;
    case 27:
      v15 = v777;
      if (v13)
      {
        goto LABEL_215;
      }

      v58 = v777[1];
      v777[1] = v58 - 1;
      if (v58 == v15[11])
      {
        goto LABEL_4;
      }

      if ((*(v58 - 1) & 0xC0) == 0x80)
      {
        v59 = (v58 - 2);
        do
        {
          v15[1] = v59;
          v60 = *v59--;
        }

        while ((v60 & 0xC0) == 0x80);
      }

      goto LABEL_64;
    case 28:
      v15 = v777;
      if (v13)
      {
        goto LABEL_215;
      }

      if (*(v777 + 56) >= *(v777 + 58))
      {
        goto LABEL_4;
      }

      v161 = v777[1];
      if (v161 >= *(a4 + 96))
      {
        goto LABEL_4;
      }

      if (cstdlib_memcmp(v161, v777[8], *(v777 + 57)))
      {
        if (!__n)
        {
          v777 = *v777;
          pcre_freeMem(a1, &v778, v162, a4, a5, a6, a7, a8, v758);
          v175 = v777;
          if (!v777)
          {
            return 0;
          }

          __n = 0;
          goto LABEL_909;
        }

        v163 = cstdlib_memcmp(v777[1], __s2, __n);
        v15 = v777;
        if (v163)
        {
          goto LABEL_4;
        }

        v164 = __n;
      }

      else
      {
        v15 = v777;
        v164 = *(v777 + 57);
      }

      v15[1] += v164;
      ++*(v15 + 56);
      goto LABEL_938;
    case 29:
      v33 = v777;
      if (v13)
      {
        goto LABEL_250;
      }

      v165 = v777[1] - *(v777 + 57);
      v777[1] = v165;
      goto LABEL_240;
    case 30:
      v15 = v777;
      if (v13)
      {
        goto LABEL_215;
      }

      v129 = *(v777 + 56);
      if (v129 >= *(v777 + 58))
      {
        goto LABEL_4;
      }

      v130 = v777[1];
      if (v130 >= *(a4 + 96))
      {
        goto LABEL_4;
      }

      v131 = *(v777 + 55);
      v132 = *(a4 + 32);
      v777[1] = (v130 + 1);
      if (v131 != *(v132 + *v130))
      {
        goto LABEL_4;
      }

      *(v15 + 56) = v129 + 1;
      goto LABEL_182;
    case 31:
      v33 = v777;
      v111 = (v777[1] - 1);
      v777[1] = v111;
      if (v13)
      {
        goto LABEL_250;
      }

      v80 = v33[11];
      goto LABEL_147;
    case 32:
      v15 = v777;
      if (v13)
      {
        goto LABEL_215;
      }

      v133 = *(v777 + 56);
      if (v133 >= *(v777 + 58))
      {
        goto LABEL_4;
      }

      v134 = v777[1];
      if (v134 >= *(a4 + 96))
      {
        goto LABEL_4;
      }

      v135 = *(v777 + 55);
      v777[1] = (v134 + 1);
      if (v135 != *v134)
      {
        goto LABEL_4;
      }

      *(v15 + 56) = v133 + 1;
      goto LABEL_188;
    case 33:
      v33 = v777;
      v79 = (v777[1] - 1);
      v777[1] = v79;
      if (v13)
      {
        goto LABEL_250;
      }

      v80 = v33[11];
      goto LABEL_95;
    case 34:
      v15 = v777;
      if (v13)
      {
        goto LABEL_215;
      }

      v61 = v777[1];
      v62 = v61 + 1;
      v777[1] = (v61 + 1);
      v63 = *v61;
      if ((~v63 & 0xC0) != 0)
      {
        goto LABEL_70;
      }

      v64 = utf8_table4[v63 & 0x3F];
      v65 = 6 * v64;
      v63 = (utf8_table3[utf8_table4[v63 & 0x3F]] & v63) << (6 * v64);
      v66 = v64 + 1;
      v67 = v65 - 6;
      do
      {
        v68 = v62++;
        v15[1] = v62;
        v63 |= (*v68 & 0x3F) << v67;
        --v66;
        v67 -= 6;
      }

      while (v66 > 1);
      if (v63 <= 255)
      {
LABEL_70:
        v63 = *(*(a4 + 32) + v63);
      }

      v69 = *(v15 + 56);
      if (v69 >= *(v15 + 58) || v62 >= *(a4 + 96) || *(v15 + 55) == v63)
      {
        goto LABEL_4;
      }

      *(v15 + 56) = v69 + 1;
      goto LABEL_75;
    case 35:
      v15 = v777;
      if (v13)
      {
        goto LABEL_215;
      }

      v51 = *(v777 + 56);
      if (v51 >= *(v777 + 58))
      {
        goto LABEL_4;
      }

      v52 = v777[1];
      if (v52 >= *(a4 + 96))
      {
        goto LABEL_4;
      }

      v53 = *(v777 + 55);
      v54 = *(a4 + 32);
      v777[1] = (v52 + 1);
      if (v53 == *(v54 + *v52))
      {
        goto LABEL_4;
      }

      *(v15 + 56) = v51 + 1;
      goto LABEL_52;
    case 36:
      v33 = v777;
      if (v13)
      {
        goto LABEL_250;
      }

      v55 = v777[1];
      v777[1] = v55 - 1;
      if (v55 == v33[11])
      {
        goto LABEL_907;
      }

      if ((*(v55 - 1) & 0xC0) == 0x80)
      {
        v56 = v55 - 2;
        do
        {
          v33[1] = v56;
          v57 = *v56--;
        }

        while ((v57 & 0xC0) == 0x80);
      }

      goto LABEL_58;
    case 37:
      v33 = v777;
      if (v13)
      {
        goto LABEL_250;
      }

      v34 = (v777[1] - 1);
      v777[1] = v34;
      v35 = v33[11];
      goto LABEL_27;
    case 38:
      v15 = v777;
      if (v13)
      {
        goto LABEL_215;
      }

      v166 = v777[1];
      v167 = v166 + 1;
      v777[1] = (v166 + 1);
      v168 = *v166;
      if ((~v168 & 0xC0) != 0)
      {
        v173 = v167;
      }

      else
      {
        v169 = utf8_table4[v168 & 0x3F];
        v170 = 6 * v169;
        v168 = (utf8_table3[utf8_table4[v168 & 0x3F]] & v168) << (6 * v169);
        v171 = v169 + 1;
        v172 = v170 - 6;
        do
        {
          v173 = v167 + 1;
          v15[1] = (v167 + 1);
          v168 |= (*v167 & 0x3F) << v172;
          --v171;
          v172 -= 6;
          ++v167;
        }

        while (v171 > 1);
      }

      v210 = *(v15 + 56);
      if (v210 >= *(v15 + 58) || v173 >= *(a4 + 96) || *(v15 + 55) == v168)
      {
        goto LABEL_4;
      }

      *(v15 + 56) = v210 + 1;
      goto LABEL_327;
    case 39:
      v15 = v777;
      if (v13)
      {
        goto LABEL_215;
      }

      v148 = *(v777 + 56);
      if (v148 >= *(v777 + 58))
      {
        goto LABEL_4;
      }

      v149 = v777[1];
      if (v149 >= *(a4 + 96))
      {
        goto LABEL_4;
      }

      v150 = *(v777 + 55);
      v777[1] = (v149 + 1);
      if (v150 == *v149)
      {
        goto LABEL_4;
      }

      *(v15 + 56) = v148 + 1;
      goto LABEL_212;
    case 40:
      v33 = v777;
      if (v13)
      {
        goto LABEL_250;
      }

      v91 = v777[1];
      v777[1] = v91 - 1;
      if (v91 == v33[11])
      {
        goto LABEL_907;
      }

      if ((*(v91 - 1) & 0xC0) == 0x80)
      {
        v92 = v91 - 2;
        do
        {
          v33[1] = v92;
          v93 = *v92--;
        }

        while ((v93 & 0xC0) == 0x80);
      }

      goto LABEL_118;
    case 41:
      v33 = v777;
      if (v13)
      {
        goto LABEL_250;
      }

      v118 = (v777[1] - 1);
      v777[1] = v118;
      v119 = v33[11];
      goto LABEL_162;
    case 42:
      v15 = v777;
      if (v13)
      {
        goto LABEL_215;
      }

      if (*(v777 + 56) >= *(v777 + 58))
      {
        goto LABEL_4;
      }

      v152 = v777[1];
      if (v152 >= *(a4 + 96))
      {
        goto LABEL_4;
      }

      v777[1] = (v152 + 1);
      v153 = *v152;
      if ((~v153 & 0xC0) == 0)
      {
        v154 = utf8_table4[v153 & 0x3F];
        v153 = (utf8_table3[utf8_table4[v153 & 0x3F]] & v153) << (6 * v154);
        v155 = v152 + 2;
        v156 = 6 * v154 - 6;
        v157 = v154 + 1;
        do
        {
          v15[1] = v155;
          v153 |= (*(v155++ - 1) & 0x3F) << v156;
          v156 -= 6;
          --v157;
        }

        while (v157 > 1);
      }

      v158 = ucp_findchar(v153, v15 + 49, v15 + 50);
      v15 = v777;
      *(v777 + 48) = v158;
      if (*(v15 + 47) == (*v15[26] == *(v15 + 51)))
      {
        goto LABEL_4;
      }

      ++*(v15 + 56);
      goto LABEL_224;
    case 43:
      v15 = v777;
      if (v13)
      {
        goto LABEL_215;
      }

      if (*(v777 + 56) >= *(v777 + 58))
      {
        goto LABEL_4;
      }

      v17 = v777[1];
      if (v17 >= *(a4 + 96))
      {
        goto LABEL_4;
      }

      v777[1] = (v17 + 1);
      v18 = *v17;
      if (*(a4 + 60) && (v18 & 0xC0) == 0xC0)
      {
        v19 = utf8_table4[v18 & 0x3F];
        v18 = (utf8_table3[utf8_table4[v18 & 0x3F]] & v18) << (6 * v19);
        v20 = v17 + 2;
        v21 = 6 * v19 - 6;
        v22 = v19 + 1;
        do
        {
          v15[1] = v20;
          v18 |= (*(v20++ - 1) & 0x3F) << v21;
          v21 -= 6;
          --v22;
        }

        while (v22 > 1);
      }

      v23 = ucp_findchar(v18, v15 + 49, v15 + 50);
      v15 = v777;
      *(v777 + 48) = v23;
      if (v23 == 2)
      {
        goto LABEL_4;
      }

      for (m = v15[1]; m < *(a4 + 96); v15[1] = m)
      {
        v25 = *m;
        v26 = 1;
        if (*(a4 + 60) && (v25 & 0xC0) == 0xC0)
        {
          v27 = utf8_table4[v25 & 0x3F];
          v25 = (utf8_table3[v27] & v25) << (6 * v27);
          v28 = (m + 1);
          if (v27 <= 1)
          {
            v29 = 1;
          }

          else
          {
            v29 = v27;
          }

          v30 = 6 * v27 - 6;
          do
          {
            v31 = *v28++;
            v25 |= (v31 & 0x3F) << v30;
            v30 -= 6;
            --v29;
          }

          while (v29);
          v26 = v27 + 1;
        }

        v32 = ucp_findchar(v25, v15 + 49, v15 + 50);
        v15 = v777;
        *(v777 + 48) = v32;
        if (v32 != 2)
        {
          break;
        }

        m = (v15[1] + v26);
      }

      ++*(v15 + 56);
      goto LABEL_926;
    case 44:
      v15 = v777;
      if (v13)
      {
        goto LABEL_215;
      }

      v71 = *(v777 + 56);
      if (v71 >= *(v777 + 58))
      {
        goto LABEL_4;
      }

      v72 = v777[1];
      if (v72 >= *(a4 + 96))
      {
        goto LABEL_4;
      }

      v777[1] = (v72 + 1);
      v73 = *v72;
      if ((~v73 & 0xC0) == 0)
      {
        v74 = utf8_table4[v73 & 0x3F];
        v73 = (utf8_table3[utf8_table4[v73 & 0x3F]] & v73) << (6 * v74);
        v75 = v72 + 2;
        v76 = 6 * v74 - 6;
        v77 = v74 + 1;
        do
        {
          v15[1] = v75;
          v73 |= (*(v75++ - 1) & 0x3F) << v76;
          v76 -= 6;
          --v77;
        }

        while (v77 > 1);
      }

      v78 = *(v15 + 54);
      if (v78 > 8)
      {
        if (v78 <= 10)
        {
          if (v78 == 9)
          {
            if (v73 <= 255 && (*(*(a4 + 40) + v73) & 0x10) != 0)
            {
              goto LABEL_4;
            }
          }

          else if (v73 >= 256 && (*(*(a4 + 40) + v73) & 0x10) == 0)
          {
            goto LABEL_4;
          }

          goto LABEL_979;
        }

        if (v78 == 12)
        {
          goto LABEL_979;
        }

        if (v78 == 11)
        {
          if ((v15[4] & 4) == 0 && v73 == 10)
          {
            goto LABEL_4;
          }

          goto LABEL_979;
        }
      }

      else
      {
        if (v78 > 6)
        {
          if (v78 == 7)
          {
            if (v73 <= 255 && (*(*(a4 + 40) + v73) & 1) != 0)
            {
              goto LABEL_4;
            }
          }

          else if (v73 > 255 || (*(*(a4 + 40) + v73) & 1) == 0)
          {
            goto LABEL_4;
          }

          goto LABEL_979;
        }

        if (v78 == 5)
        {
          if (v73 <= 255 && (*(*(a4 + 40) + v73) & 4) != 0)
          {
            goto LABEL_4;
          }

          goto LABEL_979;
        }

        if (v78 == 6)
        {
          if (v73 > 255 || (*(*(a4 + 40) + v73) & 4) == 0)
          {
            goto LABEL_4;
          }

LABEL_979:
          *(v15 + 56) = v71 + 1;
          goto LABEL_980;
        }
      }

      goto LABEL_962;
    case 45:
      v15 = v777;
      if (v13)
      {
        goto LABEL_215;
      }

      v136 = *(v777 + 56);
      if (v136 >= *(v777 + 58))
      {
        goto LABEL_4;
      }

      v137 = v777[1];
      if (v137 >= *(a4 + 96))
      {
        goto LABEL_4;
      }

      v777[1] = (v137 + 1);
      v138 = *v137;
      v139 = *(v15 + 54);
      if (v139 > 8)
      {
        if (v139 <= 10)
        {
          if (v139 == 9)
          {
            if ((*(*(a4 + 40) + v138) & 0x10) != 0)
            {
              goto LABEL_4;
            }
          }

          else if ((*(*(a4 + 40) + v138) & 0x10) == 0)
          {
            goto LABEL_4;
          }

          goto LABEL_986;
        }

        if (v139 == 12)
        {
          goto LABEL_986;
        }

        if (v139 == 11)
        {
          if ((v15[4] & 4) == 0 && v138 == 10)
          {
            goto LABEL_4;
          }

          goto LABEL_986;
        }
      }

      else
      {
        if (v139 > 6)
        {
          if (v139 == 7)
          {
            if (*(*(a4 + 40) + v138))
            {
              goto LABEL_4;
            }
          }

          else if ((*(*(a4 + 40) + v138) & 1) == 0)
          {
            goto LABEL_4;
          }

          goto LABEL_986;
        }

        if (v139 == 5)
        {
          if ((*(*(a4 + 40) + v138) & 4) != 0)
          {
            goto LABEL_4;
          }

          goto LABEL_986;
        }

        if (v139 == 6)
        {
          if ((*(*(a4 + 40) + v138) & 4) == 0)
          {
            goto LABEL_4;
          }

LABEL_986:
          *(v15 + 56) = v136 + 1;
          goto LABEL_987;
        }
      }

LABEL_962:
      v579 = *v15;
      goto LABEL_963;
    case 46:
      v33 = v777;
      if (v13)
      {
        goto LABEL_250;
      }

      v195 = v777[1];
      v777[1] = v195 - 1;
      if (v195 == v33[11])
      {
        goto LABEL_907;
      }

      if ((*(v195 - 1) & 0xC0) == 0x80)
      {
        v196 = v195 - 2;
        do
        {
          v33[1] = v196;
          v197 = *v196--;
        }

        while ((v197 & 0xC0) == 0x80);
      }

      goto LABEL_279;
    case 47:
      v33 = v777;
      if (v13)
      {
        goto LABEL_250;
      }

      v36 = v777[1];
      v37 = v36 - 1;
      v777[1] = v36 - 1;
      if (v36 == v33[11])
      {
        goto LABEL_907;
      }

      while (1)
      {
        v38 = *v37;
        v39 = v38 & 0xC0;
        if (v39 == 128)
        {
          v40 = v37 - 1;
          do
          {
            v33[1] = v40;
            v41 = *v40--;
            v38 = v41;
            v39 = v41 & 0xC0;
          }

          while (v39 == 128);
          v37 = v40 + 1;
        }

        v42 = v39 != 192 || *(a4 + 60) == 0;
        if (!v42)
        {
          v43 = utf8_table4[v38 & 0x3F];
          v44 = 6 * v43;
          v38 = (utf8_table3[v43] & v38) << (6 * v43);
          v45 = (v37 + 1);
          if (v43 <= 1)
          {
            v43 = 1;
          }

          v46 = v44 - 6;
          do
          {
            v47 = *v45++;
            v38 |= (v47 & 0x3F) << v46;
            v46 -= 6;
            --v43;
          }

          while (v43);
        }

        v48 = ucp_findchar(v38, v33 + 49, v33 + 50);
        v33 = v777;
        *(v777 + 48) = v48;
        if (v48 != 2)
        {
          break;
        }

        v37 = v33[1] - 1;
        v33[1] = v37;
      }

      goto LABEL_46;
    case 48:
      v33 = v777;
      if (v13)
      {
        goto LABEL_250;
      }

      v81 = v777[1];
      v777[1] = v81 - 1;
      if (v81 == v33[11])
      {
        goto LABEL_907;
      }

      if ((*(v81 - 1) & 0xC0) == 0x80)
      {
        v82 = v81 - 2;
        do
        {
          v33[1] = v82;
          v83 = *v82--;
        }

        while ((v83 & 0xC0) == 0x80);
      }

      goto LABEL_102;
    case 49:
      v33 = v777;
      v89 = (v777[1] - 1);
      v777[1] = v89;
      if (v13)
      {
LABEL_250:
        v151 = *v33;
LABEL_251:
        v777 = v151;
        pcre_freeMem(a1, &v778, a3, a4, a5, a6, a7, a8, v758);
        v175 = v777;
        if (!v777)
        {
          return v13;
        }

        goto LABEL_1410;
      }

      v90 = v33[11];
      goto LABEL_111;
    default:
      v769 = pcre_getMem(a1, v14, &v777, a4, a5, a6, a7, a8);
LABEL_254:
      v13 = 4294967290;
      if (!v777 || v769 < 0)
      {
        return v13;
      }

      v176 = 0;
      v104 = 0;
      *v777 = 0;
      v102 = v777;
      v105 = a2;
      v777[1] = a2;
      v102[2] = v11;
      *(v102 + 6) = 2;
      v102[4] = v9;
      v102[5] = 0;
      *(v102 + 12) = 2;
      v177 = v9;
      goto LABEL_1404;
  }
}

uint64_t nuance_pcre_ObjOpen(_WORD *a1, int a2, uint64_t a3)
{
  v17 = 0;
  if (!a3)
  {
    return 2320506887;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  inited = InitRsrcFunction(a1, a2, &v17);
  if ((inited & 0x80000000) == 0)
  {
    log_OutText(*(v17 + 32), "PCRE", 4, 0, "PCRE ObjOpen: Begin", v4, v5, v6, v15);
    v8 = heap_Calloc(*(v17 + 8), 1, 32);
    v13 = v17;
    if (v8)
    {
      *v8 = v17;
      *a3 = v8;
      *(a3 + 8) = 56663;
    }

    else
    {
      log_OutPublic(*(v17 + 32), "PCRE", 1000, 0, v9, v10, v11, v12, v16);
      v13 = v17;
      inited = 2320506890;
    }

    log_OutText(*(v13 + 32), "PCRE", 4, 0, "PCRE ObjOpen: End (%x)", v10, v11, v12, inited);
  }

  return inited;
}

uint64_t nuance_pcre_GetMemUsage(uint64_t a1, int a2, _WORD *a3, _WORD *a4)
{
  result = safeh_HandleCheck(a1, a2, 56663, 32);
  if ((result & 0x80000000) == 0)
  {
    *a3 = *(a1 + 26) + 1;
    *a4 = *(a1 + 28);
  }

  return result;
}

uint64_t nuance_pcre_Init(uint64_t a1, int a2, unsigned int a3, __int16 a4)
{
  v11 = safeh_HandleCheck(a1, a2, 56663, 32);
  if ((v11 & 0x80000000) == 0)
  {
    v12 = *a1;
    log_OutText(*(*a1 + 32), "PCRE", 4, 0, "PCRE Init: Begin", v8, v9, v10, v26);
    *(a1 + 20) = 416;
    *(a1 + 16) = 0;
    *(a1 + 22) = a3;
    *(a1 + 24) = 0;
    *(a1 + 28) = 0;
    *(a1 + 18) = a4;
    v13 = heap_Calloc(*(v12 + 8), 1, 8 * a3 + 8);
    *(a1 + 8) = v13;
    if (v13 && (v18 = heap_Calloc(*(v12 + 8), 1, 32), v19 = *(a1 + 16), *(*(a1 + 8) + 8 * v19) = v18, (v20 = *(*(a1 + 8) + 8 * v19)) != 0) && (v21 = *(a1 + 18) * *(a1 + 20) + 1, *(v20 + 8) = v21, *v20 = 0, v22 = heap_Calloc(*(v12 + 8), 1, v21), (*v20 = v22) != 0) && (*(v20 + 24) = 0, *(v20 + 16) = 0, v23 = heap_Calloc(*(v12 + 8), 1, *(a1 + 18) + 1), (*(v20 + 16) = v23) != 0))
    {
      v24 = *(a1 + 16) + 1;
      *(a1 + 16) = v24;
      *(a1 + 26) = v24;
    }

    else
    {
      log_OutPublic(*(v12 + 32), "PCRE", 1000, 0, v14, v15, v16, v17, v27);
      nuance_pcre_DeInit(a1, a2);
      v11 = 2320506890;
    }

    log_OutText(*(v12 + 32), "PCRE", 4, 0, "PCRE ObjOpen: End (%x)", v15, v16, v17, v11);
  }

  return v11;
}

uint64_t nuance_pcre_DeInit(void *a1, int a2)
{
  v6 = safeh_HandleCheck(a1, a2, 56663, 32);
  if ((v6 & 0x80000000) == 0)
  {
    log_OutText(*(*a1 + 32), "PCRE", 4, 0, "PCRE DeInit : Begin", v3, v4, v5, v16);
    pcre_clearMem(a1);
    v10 = a1[1];
    if (v10)
    {
      if (*v10)
      {
        heap_Free(*(*a1 + 8), **v10);
        v12 = *a1;
        v11 = a1[1];
        **v11 = 0;
        heap_Free(*(v12 + 8), *(*v11 + 16));
        v14 = *a1;
        v13 = a1[1];
        *(*v13 + 16) = 0;
        heap_Free(*(v14 + 8), *v13);
        *a1[1] = 0;
        v10 = a1[1];
      }

      heap_Free(*(*a1 + 8), v10);
      a1[1] = 0;
    }

    log_OutText(*(*a1 + 32), "PCRE", 4, 0, "PCRE DeInit : End (%x)", v7, v8, v9, v6);
    return 0;
  }

  return v6;
}

uint64_t nuance_pcre_ObjClose(uint64_t a1, int a2)
{
  v6 = safeh_HandleCheck(a1, a2, 56663, 32);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = *a1;
    log_OutText(*(*a1 + 32), "PCRE", 4, 0, "PCRE ObjClose : Begin", v3, v4, v5, v12);
    heap_Free(*(v7 + 8), a1);
    log_OutText(*(v7 + 32), "PCRE", 4, 0, "PCRE ObjClose : End (%x)", v8, v9, v10, v6);
    return 0;
  }

  return v6;
}

uint64_t nuance_pcre_ErrorToLhError(unsigned int a1)
{
  if (a1 < 0xFFFFFFF0)
  {
    return 2320514663;
  }

  else
  {
    return *(&unk_26ED4B320 + a1 + 16);
  }
}

uint64_t ucp_findchar(int a1, unsigned int *a2, unsigned int *a3)
{
  if (a1 != 12063)
  {
    LOWORD(v4) = -26112;
    v5 = 12063;
    v6 = &ucp_table;
    do
    {
      if (v5 <= a1)
      {
        v7 = v6[2];
        if (v7 < 0x1000)
        {
          return 0xFFFFFFFFLL;
        }

        v6 += 3 * (1 << ((v7 >> 12) - 1));
      }

      else
      {
        if ((v4 & 0x8000) == 0)
        {
          return 0xFFFFFFFFLL;
        }

        v6 += 3;
      }

      v4 = *v6;
      v5 = v6[1] | (*v6 << 16);
    }

    while (v5 != a1);
    v8 = (v4 >> 8) & 0x3F;
    *a2 = v8;
    if (v8 > 9)
    {
      if (v8 <= 0x1D)
      {
        if (((1 << v8) & 0x7F0000) != 0)
        {
          return 4;
        }

        if (((1 << v8) & 0x7800000) != 0)
        {
          return 5;
        }

        if (((1 << v8) & 0x38000000) != 0)
        {
          return 6;
        }
      }

      if (v8 - 10 < 3)
      {
        return 2;
      }

      if (v8 - 13 < 3)
      {
        return 3;
      }
    }

    else
    {
      if (((v4 >> 8) & 0x3F) <= 4)
      {
        return 0;
      }

      if (v8 - 6 < 3)
      {
        *a3 = 0;
        return 1;
      }

      if (v8 == 5 || v8 == 9)
      {
        v9 = v6[2];
        if ((v9 & 0x100) != 0)
        {
          v10 = v9 & 0xFFF | 0xFFFFF000;
        }

        else
        {
          v10 = v9 & 0xFFF;
        }

        if (v10)
        {
          v11 = v10 + a1;
        }

        else
        {
          v11 = 0;
        }

        *a3 = v11;
        return 1;
      }
    }

    return 0xFFFFFFFFLL;
  }

  *a2 = 26;
  return 5;
}

uint64_t find_fixedlength(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = (a1 + 3);
  v5 = 0xFFFFFFFFLL;
  while (2)
  {
    v6 = v4;
    v7 = *v4;
    if (v7 >= 0x50)
    {
      v8 = 80;
    }

    else
    {
      v8 = v7;
    }

    result = 4294967294;
    switch(v8)
    {
      case 0:
      case 65:
      case 66:
      case 67:
      case 68:
        if ((v5 & 0x80000000) != 0)
        {
          v5 = v3;
        }

        else if (v5 != v3)
        {
          return 0xFFFFFFFFLL;
        }

        if (v7 == 65)
        {
          v3 = 0;
          v4 = v6 + 3;
          continue;
        }

        return v5;
      case 1:
      case 2:
      case 3:
      case 4:
      case 16:
      case 17:
      case 18:
      case 19:
      case 20:
      case 64:
      case 73:
      case 76:
      case 79:
        goto LABEL_10;
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
        goto LABEL_19;
      case 12:
        return result;
      case 13:
      case 14:
        ++v6;
LABEL_19:
        v3 = (v3 + 1);
        v4 = v6 + 1;
        continue;
      case 21:
      case 22:
        v3 = (v3 + 1);
        v4 = v6 + 2;
        if ((a2 & 0x800) != 0)
        {
          v4 = v6 + 1;
          do
          {
            v10 = *++v4;
          }

          while ((v10 & 0xC0) == 0x80);
        }

        continue;
      case 32:
        v3 = v3 + (bswap32(*(v6 + 1)) >> 16);
        v4 = v6 + 4;
        if ((a2 & 0x800) != 0)
        {
          v4 = v6 + 3;
          do
          {
            v11 = *++v4;
          }

          while (v11 < 0);
        }

        continue;
      case 50:
        v3 = v3 + (bswap32(*(v6 + 1)) >> 16);
        v4 = v6 + 4;
        continue;
      case 59:
      case 60:
        goto LABEL_29;
      case 61:
        v6 = &v6[__rev16(*(v6 + 1)) - 33];
LABEL_29:
        v4 = v6 + 33;
        v12 = v6[33];
        if (v12 > 0x3A)
        {
          goto LABEL_34;
        }

        if (((1 << v12) & 0x600000000000000) != 0)
        {
          v13 = __rev16(*(v6 + 17));
          if (v13 != bswap32(*(v6 + 18)) >> 16)
          {
            return 0xFFFFFFFFLL;
          }

          v3 = v13 + v3;
          v4 = v6 + 38;
        }

        else
        {
          if (((1 << v12) & 0x198000000000000) != 0)
          {
            return 0xFFFFFFFFLL;
          }

LABEL_34:
          v3 = (v3 + 1);
        }

        continue;
      case 69:
      case 70:
      case 71:
      case 72:
        do
        {
          v6 += __rev16(*(v6 + 1));
          v7 = *v6;
        }

        while (v7 == 65);
LABEL_10:
        v4 = &v6[OP_lengths[v7]];
        continue;
      case 74:
      case 75:
      case 80:
        result = find_fixedlength(v6, a2);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        do
        {
          v6 += __rev16(*(v6 + 1));
        }

        while (*v6 == 65);
        v3 = (result + v3);
        v4 = v6 + 3;
        continue;
      default:
        return 0xFFFFFFFFLL;
    }
  }
}

unsigned __int8 *adjust_recurse(unsigned __int8 *result, int a2, int a3, uint64_t a4)
{
  v4 = result;
  while (1)
  {
    while (1)
    {
      v5 = v4;
      v6 = *v4;
      if (v6 != 63)
      {
        break;
      }

      v9 = __rev16(*(v4 + 1));
      if (*(a4 + 32) + v9 >= result)
      {
        *(v5 + 1) = bswap32(v9 + a2) >> 16;
      }

LABEL_12:
      v4 = v5 + 3;
    }

    if (!*v4)
    {
      return result;
    }

    if (v6 >= 0x51)
    {
      goto LABEL_12;
    }

    v7 = OP_lengths[*v4];
    v4 += v7;
    if (a3)
    {
      if (v6 - 24 < 9 || v6 - 21 < 2)
      {
        v4 = &v5[v7 - 1];
        do
        {
          v8 = *++v4;
        }

        while ((v8 & 0xC0) == 0x80);
      }

      else if (v6 == 61)
      {
        v4 += __rev16(*(v4 + 1)) + 1;
      }
    }
  }
}

uint64_t could_be_empty_branch(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = 1;
  significant_code_0 = first_significant_code_0((a1 + 3), 0, 0, 1);
  if (significant_code_0 < a2)
  {
    while (1)
    {
      v7 = *significant_code_0;
      if (v7 < 0x50)
      {
        v5 = 0;
        v12 = 33;
        switch(*significant_code_0)
        {
          case 5u:
          case 6u:
          case 7u:
          case 8u:
          case 9u:
          case 0xAu:
          case 0xBu:
          case 0xCu:
          case 0xDu:
          case 0xEu:
          case 0xFu:
          case 0x15u:
          case 0x16u:
          case 0x17u:
          case 0x1Au:
          case 0x1Bu:
          case 0x20u:
          case 0x23u:
          case 0x24u:
          case 0x29u:
          case 0x2Cu:
          case 0x2Du:
          case 0x32u:
            return v5;
          case 0x18u:
          case 0x19u:
          case 0x1Cu:
          case 0x1Du:
          case 0x1Eu:
          case 0x1Fu:
            if (a3)
            {
              --significant_code_0;
              do
              {
                v13 = significant_code_0[3] & 0xC0;
                ++significant_code_0;
              }

              while (v13 == 128);
            }

            goto LABEL_17;
          case 0x3Bu:
          case 0x3Cu:
            goto LABEL_20;
          case 0x3Du:
            v12 = __rev16(*(significant_code_0 + 1));
LABEL_20:
            v5 = 0;
            v14 = &significant_code_0[v12];
            v15 = *v14;
            if (v15 > 0x3A)
            {
              return v5;
            }

            if (((1 << v15) & 0x198000000000000) != 0)
            {
              goto LABEL_17;
            }

            if (((1 << v15) & 0x600000000000000) == 0)
            {
              return v5;
            }

            if (__rev16(*(v14 + 1)))
            {
              return 0;
            }

            goto LABEL_17;
          case 0x41u:
          case 0x42u:
          case 0x43u:
          case 0x44u:
            return 1;
          default:
            goto LABEL_17;
        }
      }

      if (!__rev16(*(significant_code_0 + 1)))
      {
        return 1;
      }

      v8 = 1;
      do
      {
        while (1)
        {
          v9 = significant_code_0;
          if (v8)
          {
            break;
          }

          v8 = 0;
          v11 = __rev16(*(significant_code_0 + 1));
          significant_code_0 += v11;
          if (v9[v11] != 65)
          {
            goto LABEL_16;
          }
        }

        v10 = could_be_empty_branch(significant_code_0, a2, a3);
        v8 = v10 == 0;
        v11 = __rev16(*(v9 + 1));
        significant_code_0 = &v9[v11];
      }

      while (v9[v11] == 65);
      if (!v10)
      {
        return 0;
      }

LABEL_16:
      significant_code_0 = &v9[v11 + 3];
      v7 = *significant_code_0;
LABEL_17:
      v5 = 1;
      significant_code_0 = first_significant_code_0(&significant_code_0[OP_lengths[v7]], 0, 0, 1);
      if (significant_code_0 >= a2)
      {
        return v5;
      }
    }
  }

  return v5;
}

unsigned __int8 *first_significant_code_0(unsigned __int8 *result, _DWORD *a2, int a3, int a4)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v4 = *result;
        v5 = v4 - 18;
        if ((v4 - 18) > 0x3D)
        {
          goto LABEL_12;
        }

        if (((1 << v5) & 0x70000000000000) == 0)
        {
          break;
        }

        if (!a4)
        {
          return result;
        }

        do
        {
          result += __rev16(*(result + 1));
          v7 = *result;
        }

        while (v7 == 65);
        result += OP_lengths[v7];
      }

      if (((1 << v5) & 0x2400400000000000) != 0)
      {
        goto LABEL_16;
      }

      if (v4 != 18)
      {
        break;
      }

      if (a3 >= 1)
      {
        v6 = result[1];
        if (((*a2 ^ v6) & a3) != 0)
        {
          *a2 = v6;
        }
      }

      result += 2;
    }

LABEL_12:
    if ((v4 - 3) >= 2 || a4 == 0)
    {
      return result;
    }

LABEL_16:
    result += OP_lengths[*result];
  }
}

uint64_t pcre_getMem(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a3 = 0;
  v9 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    v17 = 2320506880;
    v18 = *(*a1 + 32);
    v19 = 1001;
    v20 = 0;
    goto LABEL_12;
  }

  v12 = *(a1 + 8);
  v13 = *(a1 + 24);
  v14 = *(v12 + 8 * v13);
  if (*(v14 + 12) + *(a1 + 20) >= *(v14 + 8))
  {
    if (v9 < *(a1 + 22))
    {
      if (v13 + 1 < v9)
      {
        goto LABEL_9;
      }

      v23 = heap_Calloc(*(*a1 + 8), 1, 32);
      v28 = *(a1 + 16);
      *(*(a1 + 8) + 8 * v28) = v23;
      v29 = *(*(a1 + 8) + 8 * v28);
      if (v29)
      {
        v30 = *(a1 + 18) * *(a1 + 20) + 1;
        *(v29 + 8) = v30;
        *v29 = 0;
        *(v29 + 16) = 0;
        v31 = heap_Calloc(*(*a1 + 8), 1, v30);
        *v29 = v31;
        if (v31)
        {
          *(v29 + 24) = 0;
          v36 = heap_Calloc(*(*a1 + 8), 1, *(a1 + 18) + 1);
          *(v29 + 16) = v36;
          if (v36)
          {
            ++*(a1 + 16);
            LOWORD(v13) = *(a1 + 24);
            v12 = *(a1 + 8);
LABEL_9:
            v21 = v13 + 1;
            *(a1 + 24) = v21;
            v14 = *(v12 + 8 * v21);
            if (*(a1 + 26) < v21)
            {
              *(a1 + 26) = v21;
            }

            goto LABEL_3;
          }
        }

        log_OutPublic(*(*a1 + 32), "PCRE", 1000, 0, v32, v33, v34, v35, v38);
        if (*v29)
        {
          heap_Free(*(*a1 + 8), *v29);
          *v29 = 0;
        }

        v37 = *(v29 + 16);
        if (v37)
        {
          heap_Free(*(*a1 + 8), v37);
          *(v29 + 16) = 0;
        }

        heap_Free(*(*a1 + 8), v29);
      }

      else
      {
        log_OutPublic(*(*a1 + 32), "PCRE", 1000, 0, v24, v25, v26, v27, v38);
      }

      return 2320506890;
    }

    v17 = 2320506880;
    v18 = *(*a1 + 32);
    v38 = "maxBlocks";
    v20 = "%s%hu%s%hu";
    v19 = 1002;
LABEL_12:
    log_OutPublic(v18, "PCRE", v19, v20, a5, a6, a7, a8, v38);
    return v17;
  }

LABEL_3:
  v15 = *(v14 + 12);
  *(v14 + 12) = v15 + *(a1 + 20);
  *(*(v14 + 16) + *(v14 + 24)) = a2;
  v16 = *(v14 + 24) + 1;
  *(v14 + 24) = v16;
  if (*(a1 + 28) < v16)
  {
    *(a1 + 28) = v16;
  }

  v17 = 0;
  *a3 = *v14 + v15;
  return v17;
}

uint64_t pcre_freeMem(uint64_t result, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  if (*(result + 16))
  {
    v9 = *(result + 8);
    v10 = *(result + 24);
    v11 = *(v9 + 8 * v10);
    v12 = *(v11 + 12);
    if (v12)
    {
LABEL_5:
      *(v11 + 12) = v12 - *(result + 20);
      v13 = *(v11 + 24) - 1;
      *(v11 + 24) = v13;
      *a2 = *(*(v11 + 16) + v13);
      return result;
    }

    if (*(result + 24))
    {
      *(result + 24) = v10 - 1;
      v11 = *(v9 + 8 * (v10 - 1));
      v12 = *(v11 + 12);
      goto LABEL_5;
    }

    v14 = *(*result + 32);
    v15 = 1004;
  }

  else
  {
    v14 = *(*result + 32);
    v15 = 1003;
  }

  return log_OutPublic(v14, "PCRE", v15, 0, a5, a6, a7, a8, a9);
}

uint64_t match_ref_0(int a1, unsigned __int8 *a2, int a3, void *a4, char a5)
{
  if (a4[12] - a2 < a3)
  {
    return 0;
  }

  v6 = (a4[11] + *(a4[2] + 4 * a1));
  if (a5)
  {
    while (1)
    {
      v7 = __OFSUB__(a3--, 1);
      if (a3 < 0 != v7)
      {
        break;
      }

      v11 = a4[4];
      v12 = *v6++;
      v13 = *(v11 + v12);
      v14 = *a2++;
      if (v13 != *(v11 + v14))
      {
        return 0;
      }
    }
  }

  else
  {
    while (1)
    {
      v7 = __OFSUB__(a3--, 1);
      if (a3 < 0 != v7)
      {
        break;
      }

      v9 = *v6++;
      v8 = v9;
      v10 = *a2++;
      if (v8 != v10)
      {
        return 0;
      }
    }
  }

  return 1;
}

uint64_t match_xclass(int a1, _BYTE *a2)
{
  v3 = *a2 & 1;
  if (a1 <= 255 && (*a2 & 2) != 0 && ((a2[a1 / 8 + 1] >> (a1 & 7)) & 1) != 0)
  {
    return !(*a2 & 1);
  }

  if ((*a2 & 2) != 0)
  {
    v4 = a2 + 33;
  }

  else
  {
    v4 = a2 + 1;
  }

  do
  {
    while (1)
    {
      v5 = *v4;
      if (v5 == 1)
      {
        break;
      }

      if (v5 == 2)
      {
        v10 = (v4 + 2);
        v11 = v4[1];
        if ((~v11 & 0xC0) == 0)
        {
          v12 = utf8_table4[v11 & 0x3F];
          v11 = (utf8_table3[utf8_table4[v11 & 0x3F]] & v11) << (6 * v12);
          v13 = 6 * v12 - 6;
          v14 = v12 + 1;
          do
          {
            v15 = *v10++;
            v11 |= (v15 & 0x3F) << v13;
            v13 -= 6;
            --v14;
          }

          while (v14 > 1);
        }

        v16 = *v10;
        v4 = (v10 + 1);
        if ((~v16 & 0xC0) == 0)
        {
          v17 = utf8_table4[v16 & 0x3F];
          v16 = (utf8_table3[utf8_table4[v16 & 0x3F]] & v16) << (6 * v17);
          v18 = 6 * v17 - 6;
          v19 = v17 + 1;
          do
          {
            v20 = *v4++;
            v16 |= (v20 & 0x3F) << v18;
            v18 -= 6;
            --v19;
          }

          while (v19 > 1);
        }

        if (v11 <= a1 && v16 >= a1)
        {
          return v3 ^ 1;
        }
      }

      else
      {
        if (!*v4)
        {
          return v3;
        }

        v28 = 0;
        v6 = v4 + 2;
        v7 = v4[1];
        v8 = v4[1];
        v9 = ucp_findchar(a1, &v28 + 1, &v28);
        if (v7 < 0)
        {
          v4 = v6;
          if ((v5 != 3) != (v8 - 128 == v9))
          {
            return v3 ^ 1;
          }
        }

        else
        {
          v4 = v6;
          if ((v5 != 3) != (HIDWORD(v28) == v8))
          {
            return v3 ^ 1;
          }
        }
      }
    }

    v21 = v4 + 2;
    v22 = v4[1];
    if ((~v22 & 0xC0) == 0)
    {
      v23 = utf8_table4[v22 & 0x3F];
      v22 = (utf8_table3[utf8_table4[v22 & 0x3F]] & v22) << (6 * v23);
      v24 = 6 * v23 - 6;
      v25 = v23 + 1;
      do
      {
        v26 = *v21++;
        v22 |= (v26 & 0x3F) << v24;
        v24 -= 6;
        --v25;
      }

      while (v25 > 1);
    }

    v4 = v21;
  }

  while (v22 != a1);
  return v3 ^ 1;
}

uint64_t clcml_ObjOpen(_WORD *a1, int a2, char *a3, uint64_t *a4)
{
  v59 = *MEMORY[0x277D85DE8];
  v56 = 0;
  v57 = 0;
  v54 = 0;
  v55 = 0;
  v53 = 0;
  __src = 0;
  v52 = 0;
  v49 = 0;
  v50 = 0;
  v47 = 0;
  v48 = 0;
  v46 = 0;
  inited = InitRsrcFunction(a1, a2, &v57);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v12 = heap_Calloc(*(v57 + 8), 1, 544);
  *a4 = v12;
  v13 = *(v57 + 32);
  if (!v12)
  {
    Str = 2358255626;
    log_OutPublic(v13, "FE_CLCML", 60000, 0, v8, v9, v10, v11, v42);
    return Str;
  }

  log_OutTraceTuningData(v13, 600, "%s%s", v7, v8, v9, v10, v11, "BEG");
  Object = rsrc_Open(*(v57 + 8), *(v57 + 16), 0, 0, *a4 + 8);
  if ((Object & 0x80000000) != 0)
  {
    goto LABEL_61;
  }

  Object = InitRsrcFunction(*(*a4 + 8), *(*a4 + 16), *a4);
  if ((Object & 0x80000000) != 0)
  {
    goto LABEL_61;
  }

  v20 = v57;
  *(**a4 + 64) = *(v57 + 64);
  *(**a4 + 392) = *(v20 + 392);
  *(**a4 + 24) = *(v20 + 24);
  *(**a4 + 32) = *(v20 + 32);
  Object = paramc_ObjOpen(0, *(*a4 + 8), *(*a4 + 16), (**a4 + 40));
  if ((Object & 0x80000000) != 0)
  {
    goto LABEL_61;
  }

  Object = objc_ObjOpen(0, *(*a4 + 8), *(*a4 + 16), (**a4 + 48));
  if ((Object & 0x80000000) != 0)
  {
    goto LABEL_61;
  }

  *(*a4 + 540) = 0;
  if ((objc_GetObject(*(v57 + 48), "LANGCODECONVERTER", &v52) & 0x80000000) == 0)
  {
    Object = objc_RegisterObject(*(**a4 + 48), "LANGCODECONVERTER", v52);
    if ((Object & 0x80000000) != 0)
    {
LABEL_61:
      Str = Object;
      goto LABEL_62;
    }

    *(*a4 + 540) = 1;
    objc_ReleaseObject(*(v57 + 48), "LANGCODECONVERTER");
  }

  if ((paramc_ParamGetStr(*(v57 + 40), "noclmset", &v50) & 0x80000000) != 0)
  {
    v50 = 0;
  }

  if ((paramc_ParamGetStr(*(v57 + 40), "datapackagename", &v49) & 0x80000000) != 0)
  {
    v49 = 0;
  }

  if ((paramc_ParamGetUInt(*(v57 + 40), "pipelineswitchexecuting", &v47 + 1) & 0x80000000) != 0)
  {
    HIDWORD(v47) = 0;
  }

  if ((paramc_ParamGetUInt(*(v57 + 40), "ppmaxpcreframeblocks", &v47) & 0x80000000) != 0)
  {
    LODWORD(v47) = 0;
  }

  if ((paramc_ParamGetUInt(*(v57 + 40), "ppnumframesinblock", &v46) & 0x80000000) != 0)
  {
    v46 = 0;
  }

  if ((paramc_ParamGetStr(*(v57 + 40), "blockautoinsertionfeclm", &v48) & 0x80000000) != 0)
  {
    v48 = 0;
  }

  v57 = **a4;
  paramc_ParamSetUInt(*(v57 + 40), "pipelineswitchexecuting", HIDWORD(v47));
  if (v47)
  {
    paramc_ParamSetUInt(*(v57 + 40), "ppmaxpcreframeblocks", v47);
  }

  if (v46)
  {
    paramc_ParamSetUInt(*(v57 + 40), "ppnumframesinblock", v46);
  }

  paramc_ParamSetUInt(*(v57 + 40), "readmode", 1u);
  paramc_ParamSetUInt(*(v57 + 40), "infiniteloopdetectlimit", 0x2710u);
  paramc_ParamSetStr(*(v57 + 40), "inputmimetype", "text/plain;charset=utf-8");
  paramc_ParamSetStr(*(v57 + 40), "numberoutputtranscriptions", "1");
  paramc_ParamSetStr(*(v57 + 40), "numberoutputorthsubstitutes", "1");
  paramc_ParamSetStr(*(v57 + 40), "numberpartialorthvariants", "1");
  paramc_ParamSetStr(*(v57 + 40), "clmvariants", "no");
  paramc_ParamSetStr(*(v57 + 40), "norichtranscription", "false");
  paramc_ParamSetStr(*(v57 + 40), "clcpppipelinemode", "internal");
  paramc_ParamSetStr(*(v57 + 40), "fedatapackaging", a3);
  paramc_ParamSetStr(*(v57 + 40), "foreignpron", "yes");
  paramc_ParamSetStr(*(v57 + 40), "fedataprefix", "");
  paramc_ParamSetStr(*(v57 + 40), "feextcfgdataprefix", "");
  if (v49)
  {
    paramc_ParamSetStr(*(v57 + 40), "datapackagename", v49);
  }

  if (v50)
  {
    paramc_ParamSetStr(*(v57 + 40), "noclmset", v50);
  }

  if (v48)
  {
    paramc_ParamSetStr(*(v57 + 40), "blockautoinsertionfeclm", v48);
  }

  *(*a4 + 120) = 0;
  brokeraux_ComposeBrokerString(v57, "pipeline", 0, 1, 0, 0, 0, v58, 0x400uLL);
  Object = brk_DataOpen(*(v57 + 24));
  if ((Object & 0x80000000) != 0)
  {
    goto LABEL_61;
  }

  Object = brk_DataMap(*(v57 + 24), *(*a4 + 120), 0, 0, &v56);
  if ((Object & 0x80000000) != 0)
  {
    goto LABEL_61;
  }

  Object = hdrpars_ReadHeader(*(*a4 + 8), *(*a4 + 16), 0, v56, &v55, &v54);
  if ((Object & 0x80000000) != 0)
  {
    goto LABEL_61;
  }

  if (v54)
  {
    *&v44 = 0;
    if (vector_GetElemAt(v54, 0, &v44))
    {
      v21 = 1;
      do
      {
        ssftmap_ObjClose(*v44);
      }

      while (vector_GetElemAt(v54, v21++, &v44));
    }

    vector_ObjClose(v54);
    v54 = 0;
    log_OutPublic(*(v57 + 32), "FE_CLCML", 60001, 0, v23, v24, v25, v26, v43);
    Str = 2358255623;
    goto LABEL_62;
  }

  if (v56)
  {
    brk_DataUnmap(*(v57 + 24), *(*a4 + 120), v56);
    v56 = 0;
  }

  v28 = *(v57 + 8);
  v29 = *a4;
  v44 = xmmword_287EEF590;
  v45 = off_287EEF5A0;
  if (vector_ObjOpen(v28, &v44, 1, (v29 + 32)))
  {
    Object = clcpipeline_LoadObject(*(*a4 + 8), *(*a4 + 16), "SYNTHSTREAM", "synthstream", *(*a4 + 32), 0);
    if ((Object & 0x80000000) == 0)
    {
      Object = objc_GetObject(*(v57 + 48), "SYNTHSTREAM", &v52);
      if ((Object & 0x80000000) == 0)
      {
        *(*a4 + 40) = *(v52 + 1);
        Object = clcpipeline_LoadObject(*(*a4 + 8), *(*a4 + 16), "LINGDB", "lingdb", *(*a4 + 32), 0);
        if ((Object & 0x80000000) == 0)
        {
          Object = objc_GetObject(*(v57 + 48), "LINGDB", &v52);
          if ((Object & 0x80000000) == 0)
          {
            *(*a4 + 48) = *(v52 + 1);
            Object = clcpipeline_ObjOpen(*(*a4 + 8), *(*a4 + 16), v55, *(*a4 + 32), (*a4 + 24), &v53);
            if ((Object & 0x80000000) == 0)
            {
              paramc_ParamSetStr(*(v57 + 40), "nativetypeofchar", "utf-8");
              paramc_ParamSetStr(*(v57 + 40), "inputmimetype", "text/plain;charset=utf-8");
              if (v55)
              {
                ssftmap_ObjClose(v55);
              }

              v34 = *(*(*a4 + 40) + 32);
              NullHandle = safeh_GetNullHandle();
              Object = v34(NullHandle);
              if ((Object & 0x80000000) == 0)
              {
                v36 = *(*(*a4 + 48) + 32);
                v37 = safeh_GetNullHandle();
                Object = v36(v37);
                if ((Object & 0x80000000) == 0)
                {
                  Object = (*(*(*a4 + 40) + 64))(*(*a4 + 56), *(*a4 + 64), 201, "text/plain;charset=utf-8", 0, 1, *a4 + 88);
                  if ((Object & 0x80000000) == 0)
                  {
                    v38 = 0;
                    while (v38 < *(*(*a4 + 24) + 16))
                    {
                      v39 = v38 + 1;
                      (*(*(*a4 + 40) + 56))(*(*a4 + 56), *(*a4 + 64), (v38 + 1));
                      v40 = *(*(*(*a4 + 24) + 8) + 8 * v38++);
                      if (((*(v40[2] + 96))(v40[3], v40[4], *(*a4 + 56), *(*a4 + 64)) & 0x80000000) != 0)
                      {
                        *(*(*a4 + 24) + 16) = v39 - 1;
                        break;
                      }
                    }

                    Str = paramc_ParamGetStr(*(v57 + 40), "langcode", &__src);
                    if ((Str & 0x80000000) == 0)
                    {
                      cstdlib_strncpy((*a4 + 128), __src, 3uLL);
                    }

                    goto LABEL_62;
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_61;
  }

  Str = 2358255626;
  log_OutPublic(*(v57 + 32), "FE_CLCML", 60000, 0, v30, v31, v32, v33, v43);
LABEL_62:
  log_OutTraceTuningData(*(v57 + 32), 600, "%s%s", v15, v16, v17, v18, v19, "END");
  if ((Str & 0x80000000) != 0)
  {
    clcml_ObjClose(*a4);
  }

  return Str;
}

uint64_t vclc_loc_ElemCopyPartsString(const char **a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a1;
  if (*a1)
  {
    v6 = cstdlib_strlen(*a1) + 1;
  }

  else
  {
    v6 = 1;
  }

  result = heap_Alloc(a2, v6);
  *a3 = result;
  if (result)
  {
    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = "";
    }

    cstdlib_strcpy(result, v8);
    return 1;
  }

  return result;
}

uint64_t *vclc_loc_ElemFreePartsString(uint64_t *result, void *a2)
{
  if (*result)
  {
    return heap_Free(a2, *result);
  }

  return result;
}

uint64_t clcml_ObjClose(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 && *(v2 + 16))
  {
    v3 = 0;
    LODWORD(v4) = 0;
    do
    {
      v5 = *(*(v2 + 8) + 8 * v3);
      v6 = (*(v5[2] + 112))(v5[3], v5[4]);
      if (v4 > -1 && v6 < 0)
      {
        v4 = v6;
      }

      else
      {
        v4 = v4;
      }

      ++v3;
      v2 = *(a1 + 24);
    }

    while (v3 < *(v2 + 16));
  }

  else
  {
    v4 = 0;
  }

  v8 = *(a1 + 120);
  if (v8)
  {
    brk_DataClose(*(*a1 + 24), v8);
    *(a1 + 120) = 0;
  }

  NullHandle = safeh_GetNullHandle();
  if (!safeh_HandlesEqual(*(a1 + 88), *(a1 + 96), NullHandle, v10))
  {
    v18 = (*(*(a1 + 40) + 72))(*(a1 + 88), *(a1 + 96));
    *(a1 + 88) = safeh_GetNullHandle();
    *(a1 + 96) = v11;
    if (v18 >= 0 || v4 <= -1)
    {
      v4 = v4;
    }

    else
    {
      v4 = v18;
    }
  }

  v20 = *(a1 + 56);
  if (v20)
  {
    v21 = (*(*(a1 + 40) + 40))(v20, *(a1 + 64));
    if (v4 > -1 && v21 < 0)
    {
      v4 = v21;
    }

    else
    {
      v4 = v4;
    }
  }

  v23 = *(a1 + 72);
  if (v23)
  {
    v24 = (*(*(a1 + 48) + 40))(v23, *(a1 + 80));
    if (v4 > -1 && v24 < 0)
    {
      v4 = v24;
    }

    else
    {
      v4 = v4;
    }
  }

  v26 = *(a1 + 24);
  if (v26)
  {
    v27 = clcpipeline_ObjClose(v26, v11, v12, v13, v14, v15, v16, v17);
    if (v27 >= 0)
    {
      v4 = v4;
    }

    else
    {
      v4 = v27;
    }

    *(a1 + 24) = 0;
  }

  if (*(a1 + 48))
  {
    v28 = objc_ReleaseObject(*(*a1 + 48), "LINGDB");
    if (v28 >= 0)
    {
      v4 = v4;
    }

    else
    {
      v4 = v28;
    }

    *(a1 + 48) = 0;
  }

  if (*(a1 + 40))
  {
    v29 = objc_ReleaseObject(*(*a1 + 48), "SYNTHSTREAM");
    if (v29 >= 0)
    {
      v4 = v4;
    }

    else
    {
      v4 = v29;
    }

    *(a1 + 40) = 0;
  }

  v30 = *(a1 + 32);
  if (v30)
  {
    v31 = clcpipeline_UnloadObjects(*(a1 + 8), *(a1 + 16), v30);
    if (v31 >= 0)
    {
      v4 = v4;
    }

    else
    {
      v4 = v31;
    }

    vector_ObjClose(*(a1 + 32));
    *(a1 + 32) = 0;
  }

  v32 = *a1;
  if (*a1)
  {
    if ((v33 = v32[6]) == 0 || !*(a1 + 540) || ((v34 = objc_UnregisterObject(v33, "LANGCODECONVERTER"), v4 > -1) ? (v35 = v34 < 0) : (v35 = 0), !v35 ? (v4 = v4) : (v4 = v34), (v32 = *a1) != 0))
    {
      v36 = v32[6];
      if (v36)
      {
        v37 = objc_ObjClose(v36);
        v32 = *a1;
        *(*a1 + 48) = 0;
        if (v4 > -1 && v37 < 0)
        {
          v4 = v37;
        }

        else
        {
          v4 = v4;
        }
      }

      v39 = v32[5];
      if (v39)
      {
        v40 = paramc_ObjClose(v39);
        v32 = *a1;
        *(*a1 + 40) = 0;
        if (v4 > -1 && v40 < 0)
        {
          v4 = v40;
        }

        else
        {
          v4 = v4;
        }
      }

      v42 = v32[1];
      v43 = *(a1 + 8);
      if (v43)
      {
        v44 = rsrc_Close(v43, *(a1 + 16));
        if (v4 > -1 && v44 < 0)
        {
          v4 = v44;
        }

        else
        {
          v4 = v4;
        }
      }

      v46 = *(a1 + 528);
      if (v46)
      {
        heap_Free(v42, v46);
      }

      heap_Free(v42, a1);
    }
  }

  return v4;
}

uint64_t clcml_Process(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int PreviousUtf8Offset, const char *a5, const char *a6)
{
  v89 = *MEMORY[0x277D85DE8];
  v86 = 0;
  v87 = 0;
  v85 = 0;
  HIWORD(v81) = 0;
  cstdlib_strcpy(*(a1 + 104), "");
  *(a1 + 260) = 0;
  if (a5 && cstdlib_strcmp(a5, "normal"))
  {
    for (i = 0; i != 3; ++i)
    {
      __s1[i] = ssft_tolower(a5[i]);
    }
  }

  else
  {
    for (j = 0; j != 3; ++j)
    {
      __s1[j] = ssft_tolower(*(a1 + 128 + j));
    }
  }

  for (__s1[3] = 0; PreviousUtf8Offset > a3; PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(a2, PreviousUtf8Offset))
  {
    if (*(a2 + utf8_GetPreviousUtf8Offset(a2, PreviousUtf8Offset)) > 0x20u)
    {
      break;
    }
  }

  v14 = PreviousUtf8Offset - a3;
  if (PreviousUtf8Offset != a3)
  {
    v16 = heap_Calloc(*(*a1 + 8), *(*(a1 + 24) + 16), 4);
    if (!v16)
    {
      v15 = 2358255626;
      log_OutPublic(*(*a1 + 32), "FE_CLCML", 60000, 0, v18, v19, v20, v21, v78);
      return v15;
    }

    v22 = v16;
    __s = 0;
    v82 = 0;
    log_OutTraceTuningData(*(*a1 + 32), 600, "%s%s", v17, v18, v19, v20, v21, "BEG");
    v23 = (*(*(a1 + 48) + 64))(*(a1 + 72), *(a1 + 80));
    if ((v23 & 0x80000000) == 0)
    {
      if (!a5 || (cstdlib_strcpy(__dst, "\x1B\\lang="), cstdlib_strcat(__dst, a5), cstdlib_strcat(__dst, "\"), v24 = *(*(a1 + 40) + 104), v25 = cstdlib_strlen(__dst), v23 = v24(*(a1 + 88), *(a1 + 96), __dst, v25), (v23 & 0x80000000) == 0))
      {
        if (!cstdlib_strcmp(a6, "normal") || !cstdlib_strcmp(a6, "mpthree") || (cstdlib_strcpy(__dst, "\x1B\\tn="), cstdlib_strcat(__dst, a6), cstdlib_strcat(__dst, "\"), v26 = *(*(a1 + 40) + 104), v27 = cstdlib_strlen(__dst), v23 = v26(*(a1 + 88), *(a1 + 96), __dst, v27), (v23 & 0x80000000) == 0))
        {
          v23 = (*(*(a1 + 40) + 104))(*(a1 + 88), *(a1 + 96), a2 + a3, v14);
          if ((v23 & 0x80000000) == 0)
          {
            v31 = 0;
            v32 = v22;
            while (1)
            {
              v33 = *(a1 + 24);
              if (v31 >= *(v33 + 16))
              {
                break;
              }

              log_OutText(*(*a1 + 32), "FE_CLCML", 4, 0, "Calling Process for %s", v28, v29, v30, *(*(*(v33 + 8) + 8 * v31) + 8));
              v34 = *(*(*(a1 + 24) + 8) + 8 * v31);
              v15 = (*(v34[2] + 104))(v34[3], v34[4], *(a1 + 72), *(a1 + 80), v32);
              v35 = *(a1 + 48);
              if (*(v35 + 200))
              {
                *__s2 = 0;
                if (((*(v35 + 216))(*(a1 + 72), *(a1 + 80), __s2) & 0x80000000) == 0)
                {
                  if (*__s2)
                  {
                    (*(*(a1 + 48) + 200))(*(a1 + 72), *(a1 + 80), 0, *(*(*(*(a1 + 24) + 8) + 8 * v31) + 8), 1);
                  }
                }
              }

              ++v31;
              v32 += 4;
              if ((v15 & 0x80000000) != 0)
              {
                goto LABEL_100;
              }
            }

            v15 = (*(*(a1 + 48) + 104))(*(a1 + 72), *(a1 + 80), 1, 0, &v87 + 2);
            if ((v15 & 0x80000000) != 0)
            {
              goto LABEL_100;
            }

            if (((*(*(a1 + 48) + 184))(*(a1 + 72), *(a1 + 80), HIWORD(v87), 0, &v81 + 2) & 0x80000000) != 0 || HIWORD(v81) != 1)
            {
              goto LABEL_76;
            }

            v15 = (*(*(a1 + 48) + 176))(*(a1 + 72), *(a1 + 80), HIWORD(v87), 0, a1 + 520, &v87);
            if ((v15 & 0x80000000) != 0)
            {
              goto LABEL_100;
            }

            if (((*(*(a1 + 48) + 152))(*(a1 + 72), *(a1 + 80), 2, HIWORD(v87), &v81 + 2) & 0x80000000) == 0)
            {
              if (HIWORD(v81))
              {
                v15 = (*(*(a1 + 48) + 104))(*(a1 + 72), *(a1 + 80), 2, HIWORD(v87), &v85);
                if ((v15 & 0x80000000) != 0)
                {
                  goto LABEL_100;
                }
              }
            }

            *(a1 + 112) = 0;
            v36 = v85;
            if (!v85)
            {
LABEL_76:
              v55 = *(a1 + 104);
              if (*(a1 + 112))
              {
                v56 = *(a1 + 112) - 1;
                if (v55[v56] == 95)
                {
                  v55[v56] = 0;
                  --*(a1 + 112);
                  v55 = *(a1 + 104);
                }
              }

              v57 = cstdlib_strstr(v55, "_\\TQ\\_");
              if (v57)
              {
                v58 = v57;
                v59 = cstdlib_strlen(v57 + 6);
                cstdlib_memmove(v58, v58 + 6, v59 + 1);
                *(a1 + 112) -= 6;
              }

              v60 = cstdlib_strstr(*(a1 + 104), "\\TQ\");
              if (v60)
              {
                v61 = v60;
                v62 = cstdlib_strlen(v60 + 4);
                cstdlib_memmove(v61, v61 + 4, v62 + 1);
                *(a1 + 112) -= 4;
              }

              if (((*(*(a1 + 48) + 184))(*(a1 + 72), *(a1 + 80), HIWORD(v87), 1, &v81 + 2) & 0x80000000) == 0 && HIWORD(v81) == 1)
              {
                *__s2 = 0;
                LOWORD(v81) = 0;
                *(a1 + 536) = 0;
                v15 = (*(*(a1 + 48) + 176))(*(a1 + 72), *(a1 + 80), HIWORD(v87), 1, __s2, &v81);
                if ((v15 & 0x80000000) == 0)
                {
                  v63 = v81;
                  if (v81)
                  {
                    v64 = *__s2;
                    do
                    {
                      v65 = *v64;
                      v64 += 8;
                      if (v65 == 1)
                      {
                        ++*(a1 + 536);
                      }

                      --v63;
                    }

                    while (v63);
                  }

                  if (*(a1 + 536))
                  {
                    v66 = heap_Realloc(*(*a1 + 8), *(a1 + 528), 4 * *(a1 + 536));
                    if (v66)
                    {
                      *(a1 + 528) = v66;
                      v67 = v81;
                      if (v81)
                      {
                        v68 = 0;
                        v69 = *__s2;
                        v70 = *__s2;
                        do
                        {
                          if (*v70 == 1)
                          {
                            v71 = v68++;
                            *(v66 + 4 * v71) = v70[3] - v69[3];
                          }

                          v70 += 8;
                          --v67;
                        }

                        while (v67);
                      }
                    }

                    else
                    {
LABEL_102:
                      v15 = 2358255626;
                      log_OutPublic(*(*a1 + 32), "FE_CLCML", 60000, 0, v50, v51, v52, v53, v79);
                    }
                  }
                }
              }

              goto LABEL_100;
            }

            v37 = 0;
            while (1)
            {
              v23 = (*(*(a1 + 48) + 168))(*(a1 + 72), *(a1 + 80), v36, 0, 1, &v86, &v87);
              if ((v23 & 0x80000000) != 0)
              {
                break;
              }

              if (v86 <= 0xA && ((1 << v86) & 0x610) != 0)
              {
                v81 = 0;
                v23 = (*(*(a1 + 48) + 176))(*(a1 + 72), *(a1 + 80), v85, 3, &__s, &v87);
                if ((v23 & 0x80000000) != 0)
                {
                  break;
                }

                if (!cstdlib_strcmp(a6, "mpthree"))
                {
                  v23 = (*(*(a1 + 48) + 176))(*(a1 + 72), *(a1 + 80), v85, 9, &v82, &v87);
                  if ((v23 & 0x80000000) != 0)
                  {
                    break;
                  }

                  if (*v82)
                  {
                    for (k = 0; k != 3; ++k)
                    {
                      __s2[k] = ssft_tolower(v82[k]);
                    }
                  }

                  else
                  {
                    for (m = 0; m != 3; ++m)
                    {
                      __s2[m] = ssft_tolower(*(a1 + 128 + m));
                    }
                  }

                  __s2[3] = 0;
                  if (cstdlib_strcmp(__s1, __s2))
                  {
                    v41 = *(a1 + 260);
                    if (v41 <= 0x3F)
                    {
                      cstdlib_strcpy((a1 + 262 + 4 * v41), __s2);
                      v42 = *(a1 + 260);
                      *(a1 + 260) = v42 + 1;
                      *(a1 + 132 + 2 * v42) = v37;
                    }
                  }

                  for (n = 0; n != 4; ++n)
                  {
                    __s1[n] = ssft_tolower(__s2[n]);
                  }

                  ++v37;
                }

                if (((*(*(a1 + 48) + 184))(*(a1 + 72), *(a1 + 80), v85, 8, &v81 + 2) & 0x80000000) == 0 && HIWORD(v81) == 1)
                {
                  v23 = (*(*(a1 + 48) + 168))(*(a1 + 72), *(a1 + 80), v85, 8, 1, &v81, &v87);
                  if ((v23 & 0x80000000) != 0)
                  {
                    break;
                  }
                }

                if (cstdlib_strlen(__s) && cstdlib_strcmp(__s, "_"))
                {
                  v44 = cstdlib_strlen(__s);
                  v45 = *(a1 + 112);
                  if (v44 + v45 - 1023 <= 0xFFFFFFFFFFFFFBFFLL)
                  {
                    v46 = *(*a1 + 8);
                    v47 = *(a1 + 104);
                    v48 = cstdlib_strlen(__s);
                    v49 = heap_Realloc(v46, v47, v48 + *(a1 + 112) + 2);
                    if (!v49)
                    {
                      goto LABEL_102;
                    }

                    *(a1 + 104) = v49;
                    LOWORD(v45) = *(a1 + 112);
                  }

                  *(a1 + 112) = v45 + cstdlib_strlen(__s) + 1;
                  cstdlib_strcat(*(a1 + 104), __s);
                  if (v81)
                  {
                    v54 = "#";
                  }

                  else
                  {
                    v54 = "_";
                  }

                  cstdlib_strcat(*(a1 + 104), v54);
                }

                else if (v81 && *(a1 + 112))
                {
                  *(*(a1 + 104) + *(a1 + 112) - 1) = 35;
                }
              }

              v15 = (*(*(a1 + 48) + 120))(*(a1 + 72), *(a1 + 80), v85, &v85);
              if ((v15 & 0x80000000) != 0)
              {
                goto LABEL_100;
              }

              v36 = v85;
              if (!v85)
              {
                goto LABEL_76;
              }
            }
          }
        }
      }
    }

    v15 = v23;
LABEL_100:
    heap_Free(*(*a1 + 8), v22);
    log_OutTraceTuningData(*(*a1 + 32), 600, "%s%s", v72, v73, v74, v75, v76, "END");
    return v15;
  }

  return 0;
}

uint64_t fe_clcml_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v35 = 0;
  v36 = 0;
  v5 = 2358255623;
  v33 = 0;
  v34 = 0;
  v29 = 0;
  if (a5)
  {
    v32 = 0;
    __b = 0u;
    v31 = 0u;
    *a5 = 0;
    *(a5 + 8) = 0;
    inited = InitRsrcFunction(a3, a4, &v36);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    v10 = heap_Calloc(*(v36 + 8), 1, 1000);
    v15 = v36;
    if (!v10)
    {
      log_OutPublic(*(v36 + 32), "FE_CLCML", 60000, 0, v11, v12, v13, v14, v25);
      return 2358255626;
    }

    v16 = v10;
    *v10 = v36;
    v10[1] = a3;
    v10[2] = a4;
    Object = objc_GetObject(*(v15 + 48), "SYNTHSTREAM", &v35);
    if ((Object & 0x80000000) != 0 || (Object = objc_GetObject(*(v36 + 48), "FE_DEPES", &v34), (Object & 0x80000000) != 0) || (Object = objc_GetObject(*(v36 + 48), "FE_DCTLKP", &v33), (Object & 0x80000000) != 0) || (v16[3] = *(v35 + 8), v18 = v33, v19 = v34, v16[6] = *(v34 + 8), *(v16 + 2) = *(v19 + 16), v16[9] = *(v18 + 8), *(v16 + 7) = *(v18 + 16), *(v16 + 248) = 0, v16[122] = 0, v16[123] = 0, v16[121] = 0, (paramc_ParamGetStr(*(v36 + 40), "extraesclang", &v29) & 0x80000000) != 0) && (Object = paramc_ParamSetStr(*(v36 + 40), "extraesclang", ""), (Object & 0x80000000) != 0) || (paramc_ParamGetStr(*(v36 + 40), "extraesctn", &v29) & 0x80000000) != 0 && (Object = paramc_ParamSetStr(*(v36 + 40), "extraesctn", ""), (Object & 0x80000000) != 0) || (paramc_ParamGetStr(*(v36 + 40), "lidvoiceswitch", &v29) & 0x80000000) != 0 && (Object = paramc_ParamSetStr(*(v36 + 40), "lidvoiceswitch", ""), (Object & 0x80000000) != 0) || (v20 = *(v36 + 40), *v27 = v16, v26 = xmmword_287EEF5B0, *&v27[8] = xmmword_287EEF5B0, Object = paramc_ListenerAdd(v20, "extraesclang", v27), (Object & 0x80000000) != 0) || (v21 = *(v36 + 40), *v27 = v16, *&v27[8] = v26, Object = paramc_ListenerAdd(v21, "extraesctn", v27), (Object & 0x80000000) != 0) || (v22 = *(v36 + 40), *v27 = v16, *&v27[8] = v26, Object = paramc_ListenerAdd(v22, "lidvoiceswitch", v27), (Object & 0x80000000) != 0) || (cstdlib_memset(&__b, 0, 0x28uLL), *&__b = ssftmap_ElemCopyString, *(&v31 + 1) = stringmap_loc_ElemCopyPtr_1, *(&__b + 1) = ssftmap_ElemFreeString, v32 = stringmap_loc_ElemFreeNoOp_1, *&v31 = ssftmap_ElemCompareKeysString, v23 = *(*v16 + 8), *v27 = __b, *&v27[16] = v31, v28 = stringmap_loc_ElemFreeNoOp_1, Object = ssftmap_ObjOpen(v23, 0, v27, v16 + 122), (Object & 0x80000000) != 0))
    {
      v5 = Object;
      *a5 = v16;
      *(a5 + 8) = 62600;
LABEL_20:
      fe_clcml_ObjClose(v16, *(a5 + 8));
      *a5 = 0;
      *(a5 + 8) = 0;
      return v5;
    }

    v5 = hlp_activate(v16);
    *a5 = v16;
    *(a5 + 8) = 62600;
    if ((v5 & 0x80000000) != 0)
    {
      goto LABEL_20;
    }
  }

  return v5;
}

uint64_t fe_clcml_ParamLearnChange(unsigned int *a1, const char *a2)
{
  __s2 = 0;
  Str = paramc_ParamGetStr(*(*a1 + 40), "clcpreventhlpactivate", &__s2);
  if ((Str & 0x80000000) != 0)
  {
    return hlp_activate(a1);
  }

  v5 = Str;
  if (cstdlib_strcmp("yes", __s2))
  {
    return hlp_activate(a1);
  }

  if (cstdlib_strcmp("extraesclang", a2) && cstdlib_strcmp("extraesctn", a2))
  {
    paramc_ParamSetStr(*(*a1 + 40), "clcpreventhlpactivate", "no");
  }

  return v5;
}

uint64_t hlp_activate(unsigned int *a1)
{
  v66 = *MEMORY[0x277D85DE8];
  __s = 0;
  v62 = 0;
  v59 = 0;
  v60 = 0;
  v57 = 0;
  __src = 0;
  __s1 = 0;
  v56 = 0;
  Str = 0;
  if ((paramc_ParamGetStr(*(*a1 + 40), "extclccfg", &v62) & 0x80000000) != 0 || !v62)
  {
    return Str;
  }

  if (!*v62)
  {
    return 0;
  }

  paramc_ParamGetStr(*(*a1 + 40), "extraesclang", &__s);
  paramc_ParamGetStr(*(*a1 + 40), "extraesctn", &v60);
  paramc_ParamGetStr(*(*a1 + 40), "mlset", &v59);
  paramc_ParamGetStr(*(*a1 + 40), "langcode", &__src);
  paramc_ParamGetStr(*(*a1 + 40), "fedataprefix", &v57);
  paramc_ParamGetStr(*(*a1 + 40), "feextcfgdataprefix", &v56);
  if (LH_stricmp(v60, "mpthree") && LH_stricmp(v60, ""))
  {
    log_OutPublic(*(*a1 + 32), "FE_CLCML", 60002, "%s%s", v3, v4, v5, v6, "extraesctn");
  }

  Str = paramc_ParamGetStr(*(*a1 + 40), "voiceml", &__s1);
  if ((Str & 0x80000000) == 0 && (!cstdlib_strcmp(__s1, "no") || !cstdlib_strcmp(__s1, "")))
  {
    Str = paramc_ParamGetStr(*(*a1 + 40), "lidvoiceswitch", &__s1);
    if ((Str & 0x80000000) == 0 && !LH_stricmp(__s1, "yes"))
    {
      return 0;
    }
  }

  if (!cstdlib_strcmp(__s, ""))
  {
    goto LABEL_29;
  }

  if ((Str & 0x80000000) == 0)
  {
    cstdlib_strlen(__s);
    v11 = 0;
    v12 = 0;
    v13 = 0;
    do
    {
      if ((++v12 & 3) != 0)
      {
        v14 = __s[v11];
        if ((v14 & 0xFFFFFFDF) - 91 > 0xFFFFFFE5)
        {
          __s2[v13++] = ssft_tolower(v14);
        }

        else
        {
          log_OutPublic(*(*a1 + 32), "FE_CLCML", 60003, "%s%s", v7, v8, v9, v10, "extraesclang");
        }
      }

      else
      {
        __s2[v13] = 0;
        if (__s[v11] && __s[v11] != 44)
        {
          log_OutPublic(*(*a1 + 32), "FE_CLCML", 60003, "%s%s", v7, v8, v9, v10, "extraesclang");
        }

        else if (!cstdlib_strstr(v59, __s2) || !LH_stricmp(__src, __s2))
        {
          log_OutText(*(*a1 + 32), "FE_CLCML", 4, 0, "Ignoring language in extraesclang, language=%s", v15, v16, v17, __s2);
        }

        v13 = 0;
      }

      v11 = v12;
    }

    while (cstdlib_strlen(__s) >= v12);
  }

  v18 = *(*a1 + 8);
  v19 = cstdlib_strlen(__s);
  v20 = heap_Alloc(v18, (v19 + 5));
  if (!v20)
  {
LABEL_102:
    Str = 2358255626;
    log_OutPublic(*(*a1 + 32), "FE_CLCML", 60000, 0, v21, v22, v23, v24, v53);
    return Str;
  }

  v25 = v20;
  cstdlib_strcpy(v20, __src);
  cstdlib_strcat(v25, ",");
  cstdlib_strcat(v25, __s);
  Str = paramc_ParamSetStr(*(*a1 + 40), "lidlanguages", v25);
  heap_Free(*(*a1 + 8), v25);
  if ((Str & 0x80000000) == 0)
  {
LABEL_29:
    v26 = *(a1 + 123);
    if (v26)
    {
      cstdlib_strcpy(v26, "");
    }

    if (cstdlib_strcmp(__s, "") || cstdlib_strcmp(v60, ""))
    {
      v27 = v62;
      if (*v62)
      {
        while (1)
        {
          v54 = 0;
          v28 = *v27;
          if (v28 == 43)
          {
            v29 = 0;
          }

          else
          {
            v30 = 0;
            v29 = 0;
            while (v28 && v30 <= 0xFE)
            {
              v31 = v30 + 1;
              ++v29;
              __s2[v30] = v28;
              v28 = v27[++v30];
              if (v28 == 43)
              {
                v27 += v31;
                goto LABEL_42;
              }
            }

            v29 = v30;
            v27 += v30;
LABEL_42:
            if (v29 == 255)
            {
              return 0;
            }
          }

          __s2[v29] = 0;
          v32 = v27 + 1;
          if (*v27 != 43)
          {
            v32 = v27;
          }

          v33 = *v32;
          if (v33 == 61)
          {
            v34 = 0;
          }

          else
          {
            v35 = 0;
            v34 = 0;
            while (v33 && v35 <= 0xFE)
            {
              v36 = v35 + 1;
              ++v34;
              v64[v35] = v33;
              v33 = v32[++v35];
              if (v33 == 61)
              {
                v32 += v36;
                goto LABEL_53;
              }
            }

            v34 = v35;
            v32 += v35;
LABEL_53:
            if (v34 == 255)
            {
              return 0;
            }
          }

          v64[v34] = 0;
          if (*v32 == 61)
          {
            v27 = v32 + 1;
          }

          else
          {
            v27 = v32;
          }

          if (v56)
          {
            v37 = cstdlib_strlen(v56);
            cstdlib_strcpy(__dst, v56);
          }

          else
          {
            v37 = 0;
            __dst[0] = 0;
          }

          v38 = *v27;
          if (v38 == 44)
          {
            v39 = v37;
          }

          else
          {
            v39 = v37;
            while (v38 && v37 <= 0xFE)
            {
              __dst[v37] = v38;
              v40 = *++v27;
              v38 = v40;
              ++v37;
              ++v39;
              if (v40 == 44)
              {
                goto LABEL_68;
              }
            }

            v39 = v37;
          }

LABEL_68:
          if (v39 == 255)
          {
            return 0;
          }

          __dst[v39] = 0;
          if (*v27 == 44)
          {
            ++v27;
          }

          if ((!cstdlib_strcmp(__s2, "*") || !LH_stricmp(__s2, __src) || cstdlib_strstr(v59, __s2) && __s && cstdlib_strstr(__s, __s2)) && (!cstdlib_strcmp(v64, "*") || v60 && cstdlib_strstr(v60, v64)))
          {
            v41 = *(a1 + 123);
            if (!v41)
            {
              v42 = hlp_StringAppend(*(*a1 + 8), 0, "", a1 + 248);
              *(a1 + 123) = v42;
              if (!v42)
              {
                goto LABEL_102;
              }

              cstdlib_strcpy(v42, "");
              v41 = *(a1 + 123);
            }

            v43 = hlp_StringAppend(*(*a1 + 8), v41, __s2, a1 + 248);
            *(a1 + 123) = v43;
            if (!v43)
            {
              goto LABEL_102;
            }

            v44 = hlp_StringAppend(*(*a1 + 8), v43, "+", a1 + 248);
            *(a1 + 123) = v44;
            if (!v44)
            {
              goto LABEL_102;
            }

            v45 = hlp_StringAppend(*(*a1 + 8), v44, v64, a1 + 248);
            *(a1 + 123) = v45;
            if (!v45)
            {
              goto LABEL_102;
            }

            v46 = hlp_StringAppend(*(*a1 + 8), v45, "=", a1 + 248);
            *(a1 + 123) = v46;
            if (!v46)
            {
              goto LABEL_102;
            }

            v47 = hlp_StringAppend(*(*a1 + 8), v46, __dst, a1 + 248);
            *(a1 + 123) = v47;
            if (!v47)
            {
              goto LABEL_102;
            }

            v48 = hlp_StringAppend(*(*a1 + 8), v47, ",", a1 + 248);
            *(a1 + 123) = v48;
            if (!v48)
            {
              goto LABEL_102;
            }

            if (!*(a1 + 121))
            {
              v49 = heap_Alloc(*(*a1 + 8), 1024);
              *(a1 + 121) = v49;
              if (!v49)
              {
                goto LABEL_102;
              }
            }

            Str = ssftmap_Find(*(a1 + 122), __dst, &v54);
            if ((Str & 0x80000000) != 0)
            {
              v50 = clcml_ObjOpen(*(a1 + 1), *(a1 + 2), __dst, &v54);
              if ((v50 & 0x80000000) != 0)
              {
                return v50;
              }

              v51 = ssftmap_Insert(*(a1 + 122), __dst, v54);
LABEL_96:
              Str = v51;
              if ((v51 & 0x80000000) != 0)
              {
                return Str;
              }
            }
          }

          else
          {
            if ((ssftmap_Find(*(a1 + 122), __dst, &v54) & 0x80000000) == 0)
            {
              v50 = ssftmap_Remove(*(a1 + 122), __dst);
              if ((v50 & 0x80000000) != 0)
              {
                return v50;
              }

              v51 = clcml_ObjClose(v54);
              goto LABEL_96;
            }

            Str = 0;
          }

          if (!*v27)
          {
            return Str;
          }
        }
      }

      return Str;
    }

    return 0;
  }

  return Str;
}

uint64_t fe_clcml_ObjClose(void *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62600, 1000);
  if ((result & 0x80000000) != 0)
  {
    return 2358255624;
  }

  if (a1)
  {
    v4 = *(*a1 + 40);
    v10 = a1;
    v9 = xmmword_287EEF5B0;
    v11 = xmmword_287EEF5B0;
    paramc_ListenerRemove(v4, "extraesclang", &v10);
    v5 = *(*a1 + 40);
    v10 = a1;
    v11 = v9;
    paramc_ListenerRemove(v5, "extraesctn", &v10);
    v6 = *(*a1 + 40);
    v10 = a1;
    v11 = v9;
    paramc_ListenerRemove(v6, "lidvoiceswitch", &v10);
    if (a1[122])
    {
      hlp_deactivate(a1);
      ssftmap_ObjClose(a1[122]);
    }

    if (a1[3])
    {
      objc_ReleaseObject(*(*a1 + 48), "SYNTHSTREAM");
    }

    if (a1[6])
    {
      objc_ReleaseObject(*(*a1 + 48), "FE_DEPES");
    }

    if (a1[9])
    {
      objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
    }

    v7 = a1[121];
    if (v7)
    {
      heap_Free(*(*a1 + 8), v7);
    }

    v8 = a1[123];
    if (v8)
    {
      heap_Free(*(*a1 + 8), v8);
    }

    heap_Free(*(*a1 + 8), a1);
    return 0;
  }

  return result;
}

uint64_t hlp_deactivate(uint64_t a1)
{
  v4 = 0;
  result = *(a1 + 976);
  if (result)
  {
    result = ssftmap_IteratorOpen(result, 0, 1, &v4);
    if ((result & 0x80000000) == 0)
    {
      v2 = 0;
      v3 = 0;
      while ((ssftmap_IteratorNext(v4, &v3, &v2) & 0x80000000) == 0)
      {
        clcml_ObjClose(v2);
        ssftmap_IteratorRemove(v4);
      }

      return ssftmap_IteratorClose(v4);
    }
  }

  return result;
}

uint64_t fe_clcml_ObjReopen(unsigned int *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62600, 1000);
  if ((result & 0x80000000) != 0)
  {
    return 2358255624;
  }

  if (a1)
  {
    hlp_deactivate(a1);
    v4 = *(a1 + 123);
    if (v4)
    {
      heap_Free(*(*a1 + 8), v4);
      *(a1 + 123) = 0;
    }

    return hlp_activate(a1);
  }

  return result;
}

uint64_t fe_clcml_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((safeh_HandleCheck(a1, a2, 62600, 1000) & 0x80000000) != 0)
  {
    return 2358255624;
  }

  synstrmaux_InitStreamOpener(a1 + 80, *(*a1 + 32), "FE_CLCML");
  synstrmaux_RegisterInStream((a1 + 80), "text/plain;charset=utf-8", 0, a1 + 904);
  synstrmaux_RegisterInStream((a1 + 80), "application/x-realspeak-markers-pp;version=4.0", 0, a1 + 920);
  synstrmaux_RegisterOutStream((a1 + 80), "text/plain;charset=utf-8", a1 + 936);
  synstrmaux_RegisterOutStream((a1 + 80), "application/x-realspeak-markers-pp;version=4.0", a1 + 952);
  v7 = synstrmaux_OpenStreams((a1 + 80), *(a1 + 24), a3, a4);
  if ((v7 & 0x80000000) != 0)
  {
    synstrmaux_CloseStreams((a1 + 80), *(a1 + 24));
  }

  return v7;
}

uint64_t fe_clcml_Process(const char **a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v7 = 2358255626;
  memset(v63, 0, sizeof(v63));
  __src = 0;
  memset(__n, 0, sizeof(__n));
  v59 = 0;
  v60 = 0;
  v57 = 0;
  v58 = 0;
  v56 = 0;
  if ((safeh_HandleCheck(a1, a2, 62600, 1000) & 0x80000000) != 0)
  {
    return 2358255624;
  }

  v55 = 0;
  *a5 = 1;
  result = (*(a1[3] + 18))(a1[113], a1[114], &v63[8], v63);
  if ((result & 0x80000000) == 0)
  {
    result = (*(a1[3] + 18))(a1[115], a1[116], &v63[4], v63);
    if ((result & 0x80000000) == 0)
    {
      if (*&v63[8])
      {
        v9 = (*(a1[3] + 11))(a1[113], a1[114], &__src, __n);
        if ((v9 & 0x80000000) != 0)
        {
          goto LABEL_79;
        }

        v10 = heap_Alloc(*(*a1 + 1), (__n[0] + 1));
        *&__n[1] = v10;
        if (v10)
        {
          v15 = v10;
          cstdlib_memcpy(v10, __src, __n[0]);
          v15[__n[0]] = 0;
          v9 = (*(a1[3] + 11))(a1[115], a1[116], &v60, &v57 + 4);
          if ((v9 & 0x80000000) != 0)
          {
            goto LABEL_79;
          }

          v16 = HIDWORD(v57);
          v17 = HIDWORD(v57) >> 5;
          LODWORD(v57) = HIDWORD(v57) >> 5;
          HIDWORD(v57) >>= 5;
          v18 = heap_Calloc(*(*a1 + 1), 1, v16 & 0xFFFFFFE0);
          v59 = v18;
          v19 = *a1;
          if (!v18)
          {
LABEL_23:
            log_OutPublic(*(v19 + 4), "FE_CLCML", 60000, 0, v11, v12, v13, v14, v53);
LABEL_80:
            if (*&__n[1])
            {
              heap_Free(*(*a1 + 1), *&__n[1]);
            }

            v48 = v59;
            if (v59)
            {
              v49 = v57;
              if (v57)
              {
                v50 = 0;
                v51 = v58;
                v52 = v59 + 3;
                do
                {
                  if (v51 && *(v51 + 4 * v50) && *v52)
                  {
                    heap_Free(*(*a1 + 1), *v52);
                  }

                  ++v50;
                  v52 += 4;
                }

                while (v50 < v49);
              }

              heap_Free(*(*a1 + 1), v48);
            }

            if (v58)
            {
              heap_Free(*(*a1 + 1), v58);
            }

            return v7;
          }

          v20 = v18;
          v58 = heap_Calloc(*(v19 + 1), 1, 4 * HIDWORD(v57));
          if (v58)
          {
            v54 = *(v60 + 3);
            cstdlib_memcpy(v20, v60, 32 * HIDWORD(v57));
            v9 = (*(a1[6] + 14))(a1[4], a1[5], &v56, 0);
            if ((v9 & 0x80000000) != 0)
            {
              goto LABEL_79;
            }

            if (!a1[123])
            {
LABEL_73:
              v43 = *&__n[1];
              if (!cstdlib_strlen(*&__n[1]) || (v44 = *(a1[3] + 13), v45 = cstdlib_strlen(v43), v9 = v44(a1[117], a1[118], v43, (v45 + 1)), (v9 & 0x80000000) == 0))
              {
                v9 = (*(a1[3] + 12))(a1[113], a1[114], __n[0]);
                if ((v9 & 0x80000000) == 0)
                {
                  v9 = (*(a1[3] + 13))(a1[119], a1[120], v59, (32 * v57));
                  if ((v9 & 0x80000000) == 0)
                  {
                    v9 = (*(a1[3] + 12))(a1[115], a1[116], (32 * HIDWORD(v57)));
                    if ((v9 & 0x80000000) == 0)
                    {
                      v46 = v56;
                      v47 = cstdlib_strlen(v43);
                      v56 = v46 + v47 - __n[0] + 1;
                      v9 = (*(a1[6] + 13))(a1[4], a1[5]);
                    }
                  }
                }
              }

              goto LABEL_79;
            }

            if (v16 < 0x20)
            {
              v21 = 0;
              v22 = 0;
              v23 = 0;
              v24 = 0;
              v25 = 0;
              v26 = "normal";
LABEL_68:
              v55 = 0;
              v42 = cstdlib_strlen(v15);
              if (v24 - v54 >= v42)
              {
                goto LABEL_73;
              }

              if (v25)
              {
                goto LABEL_73;
              }

              if ((hlp_getclcml(a1, v23, v26, &v55) & 0x80000000) != 0)
              {
                goto LABEL_73;
              }

              if (!v55)
              {
                goto LABEL_73;
              }

              v9 = hlp_processclcml(a1, v55, &__n[1], v24 - v54, v42, &v59, &v58, v22, v21, &v57, v23, v26);
              if ((v9 & 0x80000000) == 0)
              {
                goto LABEL_73;
              }

LABEL_79:
              v7 = v9;
              goto LABEL_80;
            }

            v28 = 0;
            v24 = 0;
            v29 = 0;
            v22 = 0;
            v21 = 0;
            v26 = "normal";
            while (1)
            {
              v30 = *&v20[32 * v21];
              v31 = v30 > 0x33;
              v32 = (1 << v30) & 0x8011400200080;
              if (!v31 && v32 != 0)
              {
                v34 = v21;
                v55 = 0;
                if (*&v20[32 * v21 + 12] > v24 && v28 == 0)
                {
                  v36 = v29;
                  v37 = hlp_getclcml(a1, v29, v26, &v55);
                  v20 = v59;
                  if ((v37 & 0x80000000) == 0 && v55)
                  {
                    v9 = hlp_processclcml(a1, v55, &__n[1], v24 - v54, HIDWORD(v59[4 * v21 + 1]) - v54, &v59, &v58, v22, v21, &v57, v36, v26);
                    if ((v9 & 0x80000000) != 0)
                    {
                      goto LABEL_79;
                    }

                    if (**(v55 + 104))
                    {
                      v34 = v21 + 2;
                    }

                    else
                    {
                      v34 = v21;
                    }

                    v20 = v59;
                    v21 = v34;
                  }

                  v29 = v36;
                }

                v38 = &v20[32 * v34];
                if (*v38 == 51)
                {
                  *(v38 + 4) = 0;
                }

                v24 = *(v38 + 3);
                v17 = v57;
                if (v21 < v57)
                {
                  v39 = (v38 + 24);
                  while (1)
                  {
                    if (*(v39 - 3) != v24)
                    {
                      v21 = v34;
                      break;
                    }

                    v40 = *(v39 - 6);
                    if (v40 == 7)
                    {
                      if (v28)
                      {
                        goto LABEL_61;
                      }

                      v28 = 1;
                    }

                    else
                    {
                      if (v40 != 21)
                      {
                        if (v40 == 36)
                        {
                          v28 = 0;
                          v29 = *v39;
                        }

                        else
                        {
                          if (v28)
                          {
                            v41 = 0;
                          }

                          else
                          {
                            v41 = v40 == 34;
                          }

                          if (v41)
                          {
                            v28 = 1;
                          }
                        }

                        goto LABEL_62;
                      }

                      v26 = *v39;
                      if (v28)
                      {
LABEL_61:
                        v28 = 0;
                      }
                    }

LABEL_62:
                    ++v34;
                    v39 += 4;
                    if (v57 == v34)
                    {
                      v21 = v57;
                      break;
                    }
                  }
                }

                v22 = v21--;
              }

              if (++v21 >= v17)
              {
                v23 = v29;
                v15 = *&__n[1];
                v25 = v28 != 0;
                goto LABEL_68;
              }
            }
          }
        }

        v19 = *a1;
        goto LABEL_23;
      }

      v27 = *v63;
      if (*v63)
      {
        if (*&v63[4])
        {
          result = (*(a1[3] + 16))(a1[119], a1[120], a1[115], a1[116], 0xFFFFFFFFLL, &v57);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v27 = *v63;
        }

        if (v27)
        {
          return synstrmaux_CloseOutStreamsOnly(a1 + 40, a1[3]);
        }
      }

      else
      {
        *a5 = 0;
      }
    }
  }

  return result;
}

uint64_t hlp_getclcml(uint64_t a1, char *a2, const char *a3, void *a4)
{
  v47 = *MEMORY[0x277D85DE8];
  cstdlib_strcpy(__dst, "_lid");
  cstdlib_strcpy(v42, "normal");
  if (!a2)
  {
    a2 = v42;
  }

  if (cstdlib_strstr(a2, __dst))
  {
    v8 = 0;
    do
    {
      __s2[v8] = ssft_tolower(a2[v8]);
      v9 = v8 + 1;
      v8 = v9;
    }

    while (v9 != 3);
  }

  else if (cstdlib_strlen(a2))
  {
    v27 = 0;
    do
    {
      v28 = v27;
      v29 = ssft_tolower(a2[v27++]);
      __s2[v28] = v29;
    }

    while (cstdlib_strlen(a2) > v27 && v28 < 0xFE);
    if (v28 > 0xFD)
    {
      v10 = 255;
      goto LABEL_7;
    }

    LODWORD(v9) = v27;
  }

  else
  {
    LODWORD(v9) = 0;
  }

  v10 = v9 + 1;
  __s2[v9] = 43;
LABEL_7:
  if (cstdlib_strlen(a3) && v10 <= 0xFE)
  {
    v11 = 0;
    v12 = v10;
    v13 = &__s2[v10];
    do
    {
      v13[v11] = ssft_tolower(a3[v11]);
      v14 = v11 + 1;
      if (cstdlib_strlen(a3) <= v11 + 1)
      {
        break;
      }

      v15 = v12 + v11++;
    }

    while (v15 < 0xFE);
    v10 = (v12 + v14);
  }

  __s2[v10] = 0;
  v16 = cstdlib_strstr(*(a1 + 984), __s2);
  if (cstdlib_strstr(a2, __dst))
  {
    for (i = 0; i != 3; ++i)
    {
      __s2[i] = ssft_tolower(a2[i]);
    }

    LODWORD(v18) = 3;
    goto LABEL_17;
  }

  if (!cstdlib_strlen(a2))
  {
    LODWORD(v18) = 0;
LABEL_17:
    __s2[v18] = 43;
LABEL_18:
    __s2[v18 + 1] = 42;
    v19 = (v18 + 2);
    goto LABEL_19;
  }

  v18 = 0;
  do
  {
    v30 = v18;
    v31 = ssft_tolower(a2[v18++]);
    __s2[v30] = v31;
  }

  while (cstdlib_strlen(a2) > v18 && v30 < 0xFE);
  if (v30 <= 0xFD)
  {
    __s2[v18] = 43;
    if (v18 != 254)
    {
      goto LABEL_18;
    }
  }

  v19 = 255;
LABEL_19:
  __s2[v19] = 0;
  v20 = cstdlib_strstr(*(a1 + 984), __s2);
  if (v20 < v16 || v16 == 0)
  {
    v22 = v20;
  }

  else
  {
    v22 = v16;
  }

  if (v20)
  {
    v16 = v22;
  }

  *__s2 = 11050;
  if (cstdlib_strlen(a3))
  {
    v23 = 0;
    do
    {
      v46[v23] = ssft_tolower(a3[v23]);
      v24 = v23 + 1;
      if (cstdlib_strlen(a3) <= v23 + 1)
      {
        break;
      }

      v25 = v23 + 2;
      ++v23;
    }

    while (v25 < 0xFE);
    v26 = v24 + 2;
  }

  else
  {
    v26 = 2;
  }

  v32 = 2358255616;
  __s2[v26] = 0;
  v33 = cstdlib_strstr(*(a1 + 984), __s2);
  if (v33 < v16 || v16 == 0)
  {
    v35 = v33;
  }

  else
  {
    v35 = v16;
  }

  if (!v33)
  {
    v35 = v16;
  }

  if (v35)
  {
    for (j = v35 + 2; *(j - 2); ++j)
    {
      if (*(j - 2) == 61)
      {
        v37 = *(j - 1);
        if (v37 == 44)
        {
          v38 = 0;
        }

        else
        {
          v39 = 0;
          v40 = 0;
          while (v37 && v39 <= 0xFE)
          {
            v44[v39] = v37;
            v37 = j[v39++];
            ++v40;
            if (v37 == 44)
            {
              goto LABEL_70;
            }
          }

          v40 = v39;
LABEL_70:
          v38 = v40;
        }

        v44[v38] = 0;
        return ssftmap_Find(*(a1 + 976), v44, a4);
      }
    }
  }

  return v32;
}

uint64_t hlp_processclcml(const char **a1, uint64_t a2, uint64_t *a3, unsigned int a4, unsigned int a5, uint64_t *a6, uint64_t *a7, unsigned int a8, unsigned int a9, _DWORD *a10, const char *a11, const char *a12)
{
  v219 = *MEMORY[0x277D85DE8];
  cstdlib_strcpy(__dst, " ");
  cstdlib_strcat(__dst, "§");
  __n = cstdlib_strlen(__dst);
  v19 = *(*a6 + 12);
  *(a2 + 104) = a1[121];
  result = clcml_Process(a2, *a3, a4, a5, a11, a12);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v21 = *(a2 + 104);
  a1[121] = v21;
  if (!*v21)
  {
    return result;
  }

  v211 = a4;
  v213 = a8;
  v210 = v19;
  v206 = result;
  v214 = a6;
  v22 = heap_Realloc(*(*a1 + 1), *a6, 32 * (*a10 + 2));
  v27 = a1;
  if (!v22)
  {
    goto LABEL_224;
  }

  v28 = v22;
  cstdlib_memset((v22 + 32 * *a10), 0, 32 * ((*a10 + 2) - *a10));
  *a6 = v28;
  v29 = heap_Realloc(*(*a1 + 1), *a7, 4 * (*a10 + 2));
  if (!v29)
  {
    goto LABEL_224;
  }

  *a7 = v29;
  v30 = *(*a1 + 1);
  v31 = cstdlib_strlen(a1[121]);
  v32 = cstdlib_strlen("\x14");
  v33 = cstdlib_strlen("EXTCLC");
  v208 = heap_Calloc(v30, v32 + v31 + v33 + 1, 1);
  if (!v208)
  {
    goto LABEL_224;
  }

  cstdlib_strcpy(v208, a1[121]);
  cstdlib_strcat(v208, "\x14");
  cstdlib_strcat(v208, "EXTCLC");
  v209 = a1;
  log_OutText(*(*a1 + 4), "FE_CLCML", 4, 0, "Inserting phon marker with transcription %s at position %d", v34, v35, v36, a1[121]);
  v37 = a10;
  v38 = *a10;
  if (*a10 <= v213)
  {
    v41 = v213;
    v39 = v214;
  }

  else
  {
    v39 = v214;
    v40 = v213 + 1;
    v41 = v213;
    cstdlib_memmove((*v214 + 32 * v40), (*v214 + 32 * v213), 32 * (*a10 - v213));
    cstdlib_memmove((*a7 + 4 * v40), (*a7 + 4 * v213), 4 * (*a10 - v213));
    v37 = a10;
    v38 = *a10;
  }

  *v37 = v38 + 1;
  v42 = *v39 + 32 * v41;
  *v42 = 34;
  *(v42 + 24) = v208;
  v43 = *v39;
  v44 = (*v39 + 32 * v41);
  v44[3] = v210 + v211;
  if (v213)
  {
    v45 = *(v43 + 32 * (v213 - 1) + 4);
  }

  else
  {
    v45 = 0;
  }

  v44[1] = v45;
  v44[2] = 0;
  v44[4] = 0;
  v201 = v41;
  *(*a7 + 4 * v41) = 1;
  v46 = cstdlib_strlen(*a3);
  v47 = utf8_BelongsToSet(0, *a3, v211, v46);
  NextUtf8Offset = v211;
  if (v211 < a5)
  {
    NextUtf8Offset = v211;
    if (v47)
    {
      NextUtf8Offset = v211;
      do
      {
        NextUtf8Offset = utf8_GetNextUtf8Offset(*a3, NextUtf8Offset);
        v49 = utf8_BelongsToSet(0, *a3, NextUtf8Offset, v46);
      }

      while (NextUtf8Offset < a5 && v49 != 0);
    }
  }

  v51 = cstdlib_strlen(*a3);
  LODWORD(v52) = v213;
  if (NextUtf8Offset < a5)
  {
    v53 = v51;
    v54 = 0;
    LODWORD(v52) = v213;
    do
    {
      if (!utf8_BelongsToSet(0, *a3, NextUtf8Offset, v53))
      {
        do
        {
          NextUtf8Offset = utf8_GetNextUtf8Offset(*a3, NextUtf8Offset);
          v55 = utf8_BelongsToSet(0, *a3, NextUtf8Offset, v53);
        }

        while (NextUtf8Offset < a5 && v55 == 0);
      }

      if (v52 < *a10)
      {
        v57 = *v39;
        v52 = v52;
        v58 = (*v39 + 32 * v52 + 12);
        do
        {
          if (*v58 >= NextUtf8Offset + v210)
          {
            break;
          }

          v59 = *(a2 + 528);
          if (!v59)
          {
            break;
          }

          if (v54 >= *(a2 + 536) || (v60 = *(v59 + 4 * v54) + v211, v60 >= a5))
          {
            v61 = *(v57 + 32 * (v52 - 1) + 12);
          }

          else
          {
            v61 = v60 + v210;
          }

          *v58 = v61;
          v58 += 8;
          ++v52;
        }

        while (v52 < *a10);
      }

      v62 = utf8_BelongsToSet(0, *a3, NextUtf8Offset, v53);
      if (NextUtf8Offset < a5 && v62)
      {
        do
        {
          NextUtf8Offset = utf8_GetNextUtf8Offset(*a3, NextUtf8Offset);
          v63 = utf8_BelongsToSet(0, *a3, NextUtf8Offset, v53);
        }

        while (NextUtf8Offset < a5 && v63 != 0);
      }

      ++v54;
    }

    while (NextUtf8Offset < a5);
  }

  v202 = a9 + 1;
  if (v52 < *a10)
  {
    v65 = v210 + a5;
    v66 = v52;
    v67 = (*v39 + 32 * v52 + 12);
    do
    {
      if (*v67 >= v65)
      {
        break;
      }

      *v67 = v65;
      v67 += 8;
      ++v66;
    }

    while (v66 < *a10);
  }

  v68 = a5;
  v69 = *a3 + a5 - 1;
  do
  {
    v70 = v69;
    if (v69 <= *a3)
    {
      break;
    }

    --v69;
  }

  while (cstdlib_strchr("_ \r\n\x1B\t", *v70));
  if (cstdlib_strchr("(),;:", *v70))
  {
    v71 = *(a2 + 520);
    v72 = cstdlib_strlen(v71);
    v204 = cstdlib_strchr("(),;:", v71[v72 - 1]) == 0;
  }

  else
  {
    v204 = 0;
  }

  v73 = (*a3 + a5);
  v74 = *(v73 - 1);
  if (*(v73 - 1))
  {
    while (cstdlib_strchr("_ \r\n\x1B\t", v74))
    {
      v75 = *v73++;
      v74 = v75;
      if (!v75)
      {
        goto LABEL_63;
      }
    }

    if (*(v73 - 1) && cstdlib_strchr("(),;:", *(v73 - 1)))
    {
      v76 = *(a2 + 520);
      v77 = cstdlib_strlen(v76);
      v78 = cstdlib_strchr("(),;:", v76[v77 - 1]);
      v79 = v204;
      if (!v78)
      {
        v79 = 1;
      }

      v204 = v79;
    }
  }

LABEL_63:
  v80 = v211;
  v81 = (*a3 + v211 - 1);
  do
  {
    v82 = *++v81;
  }

  while (cstdlib_strchr("_ \r\n\x1B\t", v82));
  if (!cstdlib_strchr("(),;:", *v81))
  {
    goto LABEL_70;
  }

  for (i = ((__PAIR128__(v81, *a3) - v81) >> 64); i > *a3; --i)
  {
    if (!cstdlib_strchr("_ \r\n\x1B\t", *i))
    {
      break;
    }
  }

  if (!cstdlib_strchr("(),;:", *i))
  {
    v84 = 0;
    i[1] = 44;
  }

  else
  {
LABEL_70:
    v84 = 1;
  }

  v85 = v211 - a5 + cstdlib_strlen(*(a2 + 520));
  if (v204)
  {
    v86 = 2;
  }

  else
  {
    v86 = 1;
  }

  v87 = (v86 + (v84 ^ 1) + v85);
  if (v87 >= 1)
  {
    v27 = v209;
    v88 = *(*v209 + 1);
    v89 = *a3;
    v90 = cstdlib_strlen(*a3);
    v91 = heap_Realloc(v88, v89, (v87 + v90 + 1));
    if (!v91)
    {
      goto LABEL_224;
    }

    v92 = v91;
    *a3 = v91;
    v80 = v211;
    v68 = a5;
    goto LABEL_80;
  }

  if (v86 + (v84 ^ 1) + v85)
  {
    v92 = *a3;
LABEL_80:
    v93 = cstdlib_strlen(v92);
    cstdlib_memmove(&v92[v87 + a5], &v92[v68], v93 - v68 + 1);
    v94 = *v214;
    *(*v214 + 16) += v87;
    v95 = *a10;
    if (v52 < *a10)
    {
      v96 = v52;
      v97 = (v94 + 32 * v52 + 12);
      do
      {
        if (*v97 >= v210 + a5)
        {
          *v97 += v87;
          v95 = *a10;
        }

        ++v96;
        v97 += 8;
      }

      while (v96 < v95);
    }

    a5 += v87;
  }

  v98 = v209;
  if (v84)
  {
    v99 = v211;
  }

  else
  {
    *(*a3 + v80) = 32;
    v99 = v211 + 1;
  }

  if (cstdlib_strlen(*(a2 + 520)))
  {
    v100 = 0;
    v101 = 0;
    v102 = v99;
    do
    {
      *(*a3 + v102) = *(*(a2 + 520) + v100);
      v100 = (v101 + 1);
      v103 = cstdlib_strlen(*(a2 + 520));
      ++v102;
      v101 = v100;
    }

    while (v103 > v100);
  }

  else
  {
    LODWORD(v100) = 0;
  }

  if (v204)
  {
    *(*a3 + v100 + v99) = 44;
    LODWORD(v100) = v100 + 1;
  }

  *(*a3 + v100 + v99) = 32;
  v104 = cstdlib_strlen(*a3);
  v105 = v99;
  if (utf8_BelongsToSet(1u, *a3, v99, v104))
  {
    v105 = v99;
    do
    {
      v105 = utf8_GetNextUtf8Offset(*a3, v105);
    }

    while (utf8_BelongsToSet(1u, *a3, v105, v104));
  }

  v212 = v99;
  PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(*a3, a5);
  if (a5)
  {
    v110 = PreviousUtf8Offset;
    v111 = a5;
    if (utf8_BelongsToSet(1u, *a3, PreviousUtf8Offset, v104))
    {
      do
      {
        v111 = v110;
        v112 = utf8_GetPreviousUtf8Offset(*a3, v110);
        if (!v110)
        {
          break;
        }

        v110 = v112;
      }

      while (utf8_BelongsToSet(1u, *a3, v112, v104));
    }
  }

  else
  {
    v111 = 0;
  }

  v113 = 1;
  if (v105 < v111)
  {
    v114 = v105;
    do
    {
      if (!*(*a3 + v114))
      {
        break;
      }

      if (utf8_BelongsToSet(1u, *a3, v114, v104))
      {
        ++v113;
        for (; v114 < v111; v114 = utf8_GetNextUtf8Offset(*a3, v114))
        {
          if (!utf8_BelongsToSet(1u, *a3, v114, v104))
          {
            break;
          }
        }
      }

      v114 = utf8_GetNextUtf8Offset(*a3, v114);
    }

    while (v114 < v111);
  }

  v115 = v209[121];
  v116 = 1;
  v117 = 1;
  while (1)
  {
    v118 = v115[v116 - 1];
    if (v118 > 0x5E)
    {
      if (v118 != 95)
      {
        goto LABEL_124;
      }

LABEL_119:
      ++v117;
      goto LABEL_124;
    }

    if (v118 != 35)
    {
      break;
    }

    if (v115[v116])
    {
      goto LABEL_119;
    }

LABEL_124:
    ++v116;
  }

  if (v115[v116 - 1])
  {
    v119 = v118 == 18;
  }

  else
  {
    v119 = 1;
  }

  if (!v119)
  {
    goto LABEL_124;
  }

  v205 = v105;
  if (v113 < v117)
  {
    v120 = v117 - v113;
    v121 = (v117 - v113);
    v203 = v120;
    log_OutText(*(*v209 + 4), "FE_CLCML", 5, 0, "TYPE1 modification : insert %u dummy words (%u orthographic words, %u phonetic words)", v107, v108, v109, v120);
    v122 = *(*v209 + 1);
    v123 = *a3;
    v124 = cstdlib_strlen(*a3);
    v125 = v121 * __n;
    v126 = heap_Realloc(v122, v123, v125 + v124 + 2);
    v27 = v209;
    if (v126)
    {
      *a3 = v126;
      if (a5)
      {
        v127 = a5 - 1;
      }

      else
      {
        v127 = 0;
      }

      while (1)
      {
        if ((v126[v127] | 0x20) != 0x20)
        {
          v128 = (*(v209[9] + 16))(v209[7], v209[8]);
          v126 = *a3;
          if (!v128)
          {
            break;
          }
        }

        v127 = utf8_GetPreviousUtf8Offset(v126, v127);
        v126 = *a3;
      }

      v131 = utf8_GetNextUtf8Offset(v126, v127);
      v132 = *a3;
      v133 = v131;
      v200 = v125;
      v134 = v125 + v131;
      v135 = cstdlib_strlen(*a3);
      cstdlib_memmove((v132 + v134), (v132 + v133), v135 - v133 + 2);
      if (v203)
      {
        v136 = 0;
        v137 = v203;
        do
        {
          cstdlib_strncpy((*a3 + v133 + v136), __dst, __n);
          v136 += __n;
          --v137;
        }

        while (v137);
      }

      v138 = *v214;
      *(*v214 + 16) += v200;
      v111 += v200;
      v139 = *a10;
      if (*a10 <= v213)
      {
        v98 = v209;
      }

      else
      {
        v140 = v133 + v210;
        v141 = v201;
        v142 = (v138 + 32 * v201 + 12);
        v98 = v209;
        do
        {
          if (*v142 >= v140)
          {
            *v142 += v200;
            v139 = *a10;
          }

          ++v141;
          v142 += 8;
        }

        while (v141 < v139);
      }

      goto LABEL_161;
    }

    goto LABEL_224;
  }

  if (v117 < v113)
  {
    log_OutText(*(*v209 + 4), "FE_CLCML", 5, 0, "TYPE2 modification : hyphenate words (%u orthographic words, %u phonetic words)", v107, v108, v109, v113);
    v129 = a5 - 1;
    if (a5 != 1)
    {
      v130 = v113 - v117;
      while (*(*a3 + v129) == 32)
      {
        v129 = utf8_GetPreviousUtf8Offset(*a3, v129);
        if (!v129)
        {
          goto LABEL_138;
        }
      }

      while (*(*a3 + v129) != 32)
      {
        v129 = utf8_GetPreviousUtf8Offset(*a3, v129);
        if (!v129)
        {
          goto LABEL_138;
        }
      }

      while (v130)
      {
        while (*(*a3 + v129) == 32)
        {
          *(*a3 + v129) = 45;
          v129 = utf8_GetPreviousUtf8Offset(*a3, v129);
          if (!v129)
          {
            goto LABEL_138;
          }
        }

        --v130;
        while (*(*a3 + v129) != 32)
        {
          v129 = utf8_GetPreviousUtf8Offset(*a3, v129);
          if (!v129)
          {
            goto LABEL_138;
          }
        }
      }
    }
  }

LABEL_138:
  v203 = 0;
LABEL_161:
  v143 = *(*v98 + 1);
  v144 = cstdlib_strlen(a12);
  v145 = heap_Calloc(v143, (v144 + 1), 1);
  v27 = v98;
  if (v145)
  {
    v146 = v145;
    cstdlib_strcpy(v145, a12);
    v147 = a10;
    v148 = *a10;
    if (*a10 > v202)
    {
      v149 = a9 + 2;
      cstdlib_memmove((*v214 + 32 * v149), (*v214 + 32 * v202), 32 * (*a10 - v202));
      cstdlib_memmove((*a7 + 4 * v149), (*a7 + 4 * v202), 4 * (*a10 - v202));
      v147 = a10;
      v148 = *a10;
    }

    v27 = v209;
    *v147 = v148 + 1;
    v150 = *v214 + 32 * v202;
    *v150 = 21;
    *(v150 + 24) = v146;
    v151 = v203 * __n;
    v152 = *v214;
    v153 = (*v214 + 32 * v202);
    if (v151 + a5 <= v104)
    {
      v154 = a5 + v210 + v151;
    }

    else
    {
      v154 = v210 + v104;
    }

    v153[3] = v154;
    if (a9 == -1)
    {
      v155 = 0;
    }

    else
    {
      v155 = *(v152 + 32 * a9 + 4);
    }

    v153[1] = v155;
    v153[2] = 0;
    v153[4] = 0;
    *(*a7 + 4 * v202) = 1;
    if (*(a2 + 260))
    {
      v156 = 0;
      v157 = a2 + 132;
      __na = a2 + 132;
      while (1)
      {
        v158 = *(v157 + 2 * v156) ? 3 : 1;
        v159 = heap_Realloc(*(*v27 + 1), v152, 32 * (*v147 + v158));
        if (!v159)
        {
          goto LABEL_224;
        }

        *v214 = v159;
        v160 = heap_Realloc(*(*v27 + 1), *a7, 4 * (*a10 + v158));
        if (!v160)
        {
          goto LABEL_224;
        }

        *a7 = v160;
        v161 = cstdlib_strlen(*a3);
        if (*(__na + 2 * v156))
        {
          v162 = v161;
          v163 = 0;
          v164 = v205;
          v165 = v214;
          do
          {
            if (utf8_BelongsToSet(1u, *a3, v164, v162))
            {
              ++v163;
              for (; v164 < v111; v164 = utf8_GetNextUtf8Offset(*a3, v164))
              {
                if (!utf8_BelongsToSet(1u, *a3, v164, v162))
                {
                  break;
                }
              }
            }

            v164 = utf8_GetNextUtf8Offset(*a3, v164);
            v166 = *(__na + 2 * v156);
          }

          while (v163 < v166);
        }

        else
        {
          v166 = 0;
          v164 = v205;
          v165 = v214;
        }

        if (v164 > v212)
        {
          v164 = utf8_GetPreviousUtf8Offset(*a3, v164);
          v166 = *(__na + 2 * v156);
        }

        LODWORD(v167) = v213;
        v168 = *v165;
        v169 = v164 + v210;
        if (v166)
        {
          LODWORD(v170) = v213 - 1;
          do
          {
            v170 = (v170 + 1);
          }

          while (*(v168 + 32 * v170 + 12) + 1 < v169);
          v27 = v209;
          v171 = heap_Calloc(*(*v209 + 1), 7, 1);
          if (!v171)
          {
            goto LABEL_224;
          }

          v172 = v171;
          v173 = (v170 + 1);
          cstdlib_strcpy(v171, "normal");
          cstdlib_memmove((*v214 + 32 * v173), (*v214 + 32 * v170), 32 * (*a10 - v170));
          cstdlib_memmove((*a7 + 4 * v173), (*a7 + 4 * v170), 4 * (*a10 - v170));
          ++*a10;
          v174 = *v214 + 32 * v170;
          *v174 = 21;
          *(v174 + 24) = v172;
          if (v164)
          {
            v175 = v210 - 1 + v164;
          }

          else
          {
            v175 = v210;
          }

          v168 = *v214;
          v176 = (*v214 + 32 * v170);
          v176[3] = v175;
          if (v170)
          {
            v177 = *(v168 + 32 * (v170 - 1) + 4);
          }

          else
          {
            v177 = 0;
          }

          v176[1] = v177;
          v176[2] = 0;
          v176[4] = 0;
          *(*a7 + 4 * v170) = 1;
          LODWORD(v167) = v170 + 1;
        }

        do
        {
          v178 = v167;
          v179 = *(v168 + 32 * v167 + 12);
          v167 = (v167 + 1);
        }

        while (v179 < v169);
        v27 = v209;
        v180 = heap_Calloc(*(*v209 + 1), 4, 1);
        if (!v180)
        {
          goto LABEL_224;
        }

        v181 = v180;
        cstdlib_strcpy(v180, (a2 + 262 + 4 * v156));
        cstdlib_memmove((*v214 + 32 * v167), (*v214 + 32 * v178), 32 * (*a10 - v167 + 1));
        cstdlib_memmove((*a7 + 4 * v167), (*a7 + 4 * v178), 4 * (*a10 - v167 + 1));
        v147 = a10;
        ++*a10;
        v182 = *v214 + 32 * v178;
        *v182 = 36;
        *(v182 + 24) = v181;
        v152 = *v214;
        v183 = (*v214 + 32 * v178);
        v183[3] = v169;
        if (v167 == 1)
        {
          v184 = 0;
        }

        else
        {
          v184 = *(v152 + 32 * (v167 - 2) + 4);
        }

        v183[1] = v184;
        v183[2] = 0;
        v183[4] = 0;
        *(*a7 + 4 * v178) = 1;
        if (*(__na + 2 * v156))
        {
          if (v156)
          {
            v185 = *(__na + 2 * (v156 - 1));
          }

          else
          {
            v185 = 0;
          }

          if (v185 >= *(__na + 2 * v156))
          {
            v186 = 0;
          }

          else
          {
            v186 = 0;
            do
            {
              v187 = v208[v186];
              if (v187 == 95 || v187 == 35)
              {
                ++v185;
              }

              v186 = utf8_GetNextUtf8Offset(v208, v186);
            }

            while (v185 < *(__na + 2 * v156));
          }

          v27 = v209;
          v188 = *(*v209 + 1);
          v189 = cstdlib_strlen(&v208[v186]);
          v190 = heap_Calloc(v188, (v189 + 1), 1);
          if (!v190)
          {
            goto LABEL_224;
          }

          __s = v190;
          cstdlib_strcpy(v190, &v208[v186]);
          v191 = utf8_GetPreviousUtf8Offset(v208, v186);
          cstdlib_memcpy(&v208[v191], "\x14", 2uLL);
          cstdlib_strcat(&v208[v191], "EXTCLC");
          log_OutText(*(*v209 + 4), "FE_CLCML", 4, 0, "Inserting phon marker with transcription %s at position %d", v192, v193, v194, v209[121]);
          v195 = (v167 + 1);
          cstdlib_memmove((*v214 + 32 * v195), (*v214 + 32 * v167), 32 * (*a10 - v167));
          cstdlib_memmove((*a7 + 4 * v195), (*a7 + 4 * v167), 4 * (*a10 - v167));
          v147 = a10;
          ++*a10;
          v196 = *v214 + 32 * v167;
          *v196 = 34;
          *(v196 + 24) = __s;
          v152 = *v214;
          v197 = (*v214 + 32 * v167);
          v197[3] = v169;
          if (v167)
          {
            v198 = *(v152 + 32 * v178 + 4);
          }

          else
          {
            v198 = 0;
          }

          v197[1] = v198;
          v197[2] = 0;
          v197[4] = 0;
          *(*a7 + 4 * v167) = 1;
          v213 = v167 + 1;
          v208 = __s;
        }

        else
        {
          v213 = v167 + 1;
        }

        v27 = v209;
        ++v156;
        v157 = a2 + 132;
        if (v156 >= *(a2 + 260))
        {
          return v206;
        }
      }
    }

    return v206;
  }

  else
  {
LABEL_224:
    log_OutPublic(*(*v27 + 4), "FE_CLCML", 60000, 0, v23, v24, v25, v26, v199);
    return 2358255626;
  }
}