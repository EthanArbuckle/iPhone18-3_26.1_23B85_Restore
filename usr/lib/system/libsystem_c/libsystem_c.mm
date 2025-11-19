uint64_t __v2printf(pthread_mutex_t *a1, pthread_rwlock_t *a2, uint64_t a3, atomic_uint *a4, char *a5, __int16 *a6)
{
  if (off_1EAC9EA78)
  {
    (off_1EAC9EA78)(a4, 1472);
  }

  if (off_1EAC9EA80)
  {
    (off_1EAC9EA80)(a5);
  }

  if (((*(a3 + 16) & 8) == 0 || (*(a3 + 16) & 0x200) == 0 && !*(a3 + 24)) && __swsetup(a3))
  {
    v12 = __error();
    v13 = 9;
LABEL_10:
    *v12 = v13;
    return 0xFFFFFFFFLL;
  }

  v15 = *(a3 + 104);
  if ((*(v15 + 72) & 7) != 0)
  {
    if (a1)
    {
      goto LABEL_14;
    }

LABEL_24:
    if (!a2)
    {
      v12 = __error();
      v13 = 22;
      goto LABEL_10;
    }

    pthread_once(&__xprintf_domain_once, __xprintf_domain_init);
    memset(v26, 0, 64);
    *v27 = 0u;
    *v28 = 0u;
    *v29 = 0u;
    v26[4] = a5;
    if (a4)
    {
      if (a4 == -1)
      {
        v19 = &__global_locale;
      }

      else
      {
        v19 = a4;
      }
    }

    else
    {
      v21 = __locale_key;
      v22 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v21);
      if (v22)
      {
        v19 = v22;
      }

      else
      {
        v19 = &__global_locale;
      }
    }

    atomic_fetch_add(v19, 1u);
    v27[0] = v19;
    pthread_rwlock_rdlock(a2);
    if ((__printf_comp(v26, a2) & 0x80000000) != 0)
    {
      v24 = *__error();
      pthread_rwlock_unlock(a2);
      if (atomic_fetch_add(v19, 0xFFFFFFFF) == 1)
      {
        v25 = *(v19 + 1);
        if (v25)
        {
          v25(v19);
        }
      }

      *__error() = v24;
      return 0xFFFFFFFFLL;
    }

    v14 = __printf_exec(v26, a3, a6);
    v20 = *__error();
    pthread_rwlock_unlock(a2);
    if (atomic_fetch_add(v19, 0xFFFFFFFF) == 1)
    {
      v23 = *(v19 + 1);
      if (v23)
      {
        v23(v19);
      }
    }

    free(v27[1]);
    free(v28[1]);
    free(v29[0]);
LABEL_39:
    *__error() = v20;
    return v14;
  }

  *(v15 + 72) |= 7u;
  if (!a1)
  {
    goto LABEL_24;
  }

LABEL_14:
  if (a1 != -1)
  {
    pthread_mutex_lock(a1);
    pthread_rwlock_rdlock(*a1[1].__opaque);
    v14 = __printf_exec(a1, a3, a6);
    v20 = *__error();
    pthread_rwlock_unlock(*a1[1].__opaque);
    pthread_mutex_unlock(a1);
    goto LABEL_39;
  }

  v16 = &__global_locale;
  if (a4 != -1)
  {
    v16 = a4;
  }

  if (a4)
  {
    v17 = v16;
  }

  else
  {
    v17 = &__c_locale;
  }

  return __vfprintf(a3, v17, a5, a6);
}

uint64_t __vfprintf(uint64_t a1, locale_t a2, char *a3, int *a4)
{
  v411 = a4;
  v410 = 0;
  v409 = 0;
  v407 = 0u;
  v408 = 0u;
  v406 = 0;
  v405 = 0.0;
  v404 = 0;
  v403 = 0;
  v402 = 0uLL;
  v401 = 0;
  v396 = 0;
  v400[0] = &v400[2];
  memset(&v400[1], 0, 136);
  v399 = a1;
  decimal_point = localeconv_l(a2)->decimal_point;
  v370 = decimal_point;
  if (decimal_point[1])
  {
    v9 = j__strsignal_r(decimal_point, v7, v8);
  }

  else
  {
    v9 = 1;
  }

  v10 = 0;
  v376 = 0;
  v377 = 0;
  v382 = 0;
  v383 = 0;
  v374 = 0;
  v375 = 0;
  v381 = 0;
  v369 = 0;
  v11 = 0;
  v373 = v9;
  v372 = 0;
  v386 = 1;
  v371 = a3;
LABEL_5:
  v12 = a3;
  v384 = v10;
LABEL_6:
  v13 = 0;
  v14 = 0;
  v15 = ~v12;
  for (i = v12; ; ++i)
  {
    v17 = *(v12 + v14);
    if (!*(v12 + v14) || v17 == 37)
    {
      break;
    }

    ++v14;
    v13 += 0x100000000;
    --v15;
  }

  if (!v14)
  {
    v385 = v11;
    goto LABEL_17;
  }

  v385 = v11 + v14;
  if (v11 + v14 >= 0x7FFFFFFF)
  {
    goto LABEL_894;
  }

  v18 = v400[1];
  v19 = HIDWORD(v400[1]);
  v20 = &v400[2 * SLODWORD(v400[1]) + 2];
  *v20 = v12;
  v20[1] = v13 >> 32;
  HIDWORD(v400[1]) = v19 + v14;
  LODWORD(v400[1]) = v18 + 1;
  if (v18 < 7)
  {
    goto LABEL_17;
  }

  if (v19 + v14)
  {
    v21 = __sfvwrite(v399, v400);
    v400[1] = 0;
    if (v21)
    {
      goto LABEL_904;
    }

LABEL_17:
    if (!v17)
    {
      goto LABEL_896;
    }

    goto LABEL_18;
  }

  LODWORD(v400[1]) = 0;
  if (!v17)
  {
LABEL_896:
    v10 = v384;
    if (HIDWORD(v400[1]))
    {
      __sfvwrite(v399, v400);
      HIDWORD(v400[1]) = 0;
    }

    LODWORD(v400[1]) = 0;
    goto LABEL_899;
  }

LABEL_18:
  v22 = 0;
  v23 = 0;
  *&v408 = 0;
  v410 = 0;
  a3 = (v12 + v14 + 1);
  v398 = 0;
  v401 = 88;
  v389 = -1;
  __sig = v12;
LABEL_19:
  while (2)
  {
    v25 = *a3++;
    v24 = v25;
LABEL_20:
    v26 = v22;
    while (1)
    {
      v22 = v26;
      if (v24 - 49 >= 9)
      {
        break;
      }

      v26 = 0;
      do
      {
        v26 = v24 - 48 + 10 * v26;
        v27 = *a3++;
        v24 = v27;
      }

      while (v27 - 48 < 0xA);
      if (v24 == 36)
      {
        v386 = v26;
        if (!v396)
        {
          v396 = v414;
          v32 = v23;
          arguments = __find_arguments(v371, a4, &v396);
          v23 = v32;
          v386 = v26;
          if (arguments)
          {
            goto LABEL_895;
          }
        }

        goto LABEL_19;
      }
    }

    switch(v24)
    {
      case ' ':
        if (!v410)
        {
          v410 = 32;
        }

        continue;
      case '#':
        v23 = v23 | 1;
        continue;
      case '\'':
        v23 = v23 | 0x200;
        continue;
      case '*':
        v34 = *a3 - 48;
        if (v34 > 9)
        {
          v37 = 0;
          v36 = *a3;
          __sig = a3;
        }

        else
        {
          v35 = 0;
          __sig = a3;
          do
          {
            v35 = 10 * v35 + v34;
            v36 = *++__sig;
            v34 = v36 - 48;
          }

          while ((v36 - 48) < 0xA);
          v36 = v36;
          v37 = 16 * v35;
        }

        v38 = v396;
        if (v36 != 36)
        {
          if (v396)
          {
            v41 = v386;
            v40 = *(v396 + 4 * v386);
          }

          else
          {
            v42 = v411;
            v411 += 2;
            v40 = *v42;
            v41 = v386;
          }

          v386 = v41 + 1;
LABEL_69:
          v22 = v40;
          if (v40 < 0)
          {
            v22 = -v40;
LABEL_71:
            v23 = v23 | 4;
          }

          continue;
        }

        if (v396)
        {
          goto LABEL_63;
        }

        v39 = v23;
        v396 = v414;
        if (!__find_arguments(v371, a4, &v396))
        {
          v38 = v396;
          v23 = v39;
          if (v396)
          {
LABEL_63:
            v40 = *&v38[v37];
          }

          else
          {
            v43 = v411;
            v411 += 2;
            v40 = *v43;
          }

          a3 = ++__sig;
          goto LABEL_69;
        }

        goto LABEL_895;
      case '+':
        v410 = 43;
        continue;
      case ',':
      case ':':
      case ';':
      case '_':
        v401 = v24;
        continue;
      case '-':
        goto LABEL_71;
      case '.':
        v28 = *a3++;
        v24 = v28;
        if (v28 != 42)
        {
          v389 = 0;
          v29 = v24 - 48;
          if (v24 - 48 <= 9)
          {
            v30 = 0;
            do
            {
              v30 = 10 * v30 + v29;
              v31 = *a3++;
              v24 = v31;
              v29 = v31 - 48;
            }

            while (v31 - 48 < 0xA);
            v389 = v30;
          }

          goto LABEL_20;
        }

        v44 = *a3 - 48;
        if (v44 > 9)
        {
          v47 = 0;
          v46 = *a3;
          __sig = a3;
        }

        else
        {
          v45 = 0;
          __sig = a3;
          do
          {
            v45 = 10 * v45 + v44;
            v46 = *++__sig;
            v44 = v46 - 48;
          }

          while ((v46 - 48) < 0xA);
          v46 = v46;
          v47 = 16 * v45;
        }

        v48 = v396;
        if (v46 != 36)
        {
          if (v396)
          {
            v51 = v386;
            v50 = *(v396 + 4 * v386);
          }

          else
          {
            v52 = v411;
            v411 += 2;
            v50 = *v52;
            v51 = v386;
          }

          v386 = v51 + 1;
LABEL_88:
          v389 = v50;
          continue;
        }

        if (v396)
        {
          goto LABEL_82;
        }

        v49 = v23;
        v396 = v414;
        if (!__find_arguments(v371, a4, &v396))
        {
          v48 = v396;
          v23 = v49;
          if (v396)
          {
LABEL_82:
            v50 = *&v48[v47];
          }

          else
          {
            v53 = v411;
            v411 += 2;
            v50 = *v53;
          }

          a3 = ++__sig;
          goto LABEL_88;
        }

        goto LABEL_895;
      case '0':
        v23 = v23 | 0x80;
        continue;
      case 'A':
      case 'a':
        if ((v23 & 0x4000) != 0)
        {
          goto LABEL_151;
        }

        if (v24 == 97)
        {
          v59 = 120;
        }

        else
        {
          v59 = 88;
        }

        if (v24 == 97)
        {
          v60 = &__vfprintf_xdigs_lower;
        }

        else
        {
          v60 = &__vfprintf_xdigs_upper;
        }

        v376 = v60;
        if (v24 == 97)
        {
          v61 = 112;
        }

        else
        {
          v61 = 80;
        }

        v381 = v61;
        v398 = v59;
        if (v382)
        {
          v62 = v23;
          __freedtoa(v382);
          LOWORD(v23) = v62;
        }

        v379 = v23;
        if ((v23 & 8) != 0)
        {
          if (v396)
          {
            v84 = *(v396 + 2 * v386);
          }

          else
          {
            v109 = v411;
            v411 += 2;
            v84 = *v109;
          }

          v405 = v84;
          v108 = __hldtoa(v376, v389 + (v389 >= 0), &v404, &v406, &v403);
        }

        else
        {
          if (v396)
          {
            v63 = *(v396 + 2 * v386);
          }

          else
          {
            v107 = v411;
            v411 += 2;
            v63 = *v107;
          }

          v405 = v63;
          v108 = __hdtoa(v376, v389 + (v389 >= 0), &v404, &v406, &v403, v63);
        }

        v382 = v108;
        v110 = &v403[-v108];
        if (v389 + (v389 >= 0) >= 0)
        {
          v110 = (v389 + (v389 >= 0));
        }

        v390 = v110;
        if (v404 == 0x7FFFFFFF)
        {
          v398 = 0;
        }

        v66 = v379;
        goto LABEL_289;
      case 'C':
        v69 = v23 | 0x10;
        goto LABEL_182;
      case 'D':
        LOWORD(v23) = v23 | 0x10;
        goto LABEL_175;
      case 'E':
      case 'e':
        if ((v23 & 0x4000) != 0)
        {
          goto LABEL_151;
        }

        if (v389 >= 0)
        {
          v64 = v389 + 1;
        }

        else
        {
          v64 = 7;
        }

        v381 = v24;
        goto LABEL_144;
      case 'F':
      case 'f':
        if ((v23 & 0x4000) != 0)
        {
          goto LABEL_151;
        }

        v381 = 0;
        v64 = v389;
        goto LABEL_144;
      case 'G':
      case 'g':
        if ((v23 & 0x4000) != 0)
        {
LABEL_151:
          v68 = 0;
          v69 = v23 | 0x100;
          goto LABEL_217;
        }

        v381 = v24 - 2;
        v64 = v389;
        if (v389 <= 1)
        {
          v64 = 1;
        }

LABEL_144:
        if (v64 < 0)
        {
          v64 = 6;
        }

        v390 = v64;
        if (v382)
        {
          v65 = v23;
          __freedtoa(v382);
          LOWORD(v23) = v65;
        }

        v66 = v23;
        if ((v23 & 8) != 0)
        {
          if (v396)
          {
            v70 = *(v396 + 2 * v386);
          }

          else
          {
            v80 = v411;
            v411 += 2;
            v70 = *v80;
          }

          v405 = v70;
          if (v381)
          {
            v81 = 2;
          }

          else
          {
            v81 = 3;
          }

          v382 = __ldtoa(&v405, v81, v390, &v404, &v406, &v403);
        }

        else
        {
          if (v396)
          {
            v67 = *(v396 + 2 * v386);
          }

          else
          {
            v78 = v411;
            v411 += 2;
            v67 = *v78;
          }

          v405 = v67;
          if (v381)
          {
            v79 = 2;
          }

          else
          {
            v79 = 3;
          }

          v382 = __dtoa(v79, v390, &v404, &v406, &v403, v67);
          if (v404 == 9999)
          {
            v404 = 0x7FFFFFFF;
          }
        }

LABEL_289:
        if (v406)
        {
          v410 = 45;
        }

        ++v386;
        v7 = v404;
        if (v404 == 0x7FFFFFFF)
        {
          if (*v382 == 78)
          {
            v111 = "NAN";
            if (v24 > 0x60)
            {
              v111 = "nan";
            }

            __sig = v111;
            v410 = 0;
          }

          else
          {
            v121 = "INF";
            if (v24 > 0x60)
            {
              v121 = "inf";
            }

            __sig = v121;
          }

          v71 = v390;
          v69 = v66 & 0xFF7F;
          v383 = 3;
LABEL_318:
          v68 = 0;
          goto LABEL_426;
        }

        v387 = v66 | 0x100;
        v375 = v403 - v382;
        if ((v24 & 0xFFFFFFDF) != 0x47)
        {
          goto LABEL_301;
        }

        if (v404 >= -3 && (v112 = v390 - v404, v390 >= v404))
        {
          v122 = v66 & 1;
          if ((v66 & 1) == 0)
          {
            v112 = v375 - v404;
          }

          v71 = v112 & ~(v112 >> 63);
        }

        else
        {
          if ((v66 & 1) == 0)
          {
            v390 = v375;
          }

LABEL_301:
          if (v381)
          {
            v113 = v404 - 1;
            v417[0] = v381;
            if (v404 >= 1)
            {
              v114 = 43;
            }

            else
            {
              v114 = 45;
            }

            if (v404 - 1 < 0)
            {
              v113 = 1 - v404;
            }

            v417[1] = v114;
            if (v113 < 0xA)
            {
              v123 = &v418;
              v71 = v390;
              if ((v381 & 0xDF) == 0x45)
              {
                v418 = 48;
                v123 = v419;
              }

              *v123 = v113 | 0x30;
              v118 = v123 + 1;
            }

            else
            {
              v115 = 0;
              do
              {
                v116 = v113;
                v117 = v113;
                v113 /= 0xAu;
                v420.__mbstate8[v115-- + 5] = (v117 % 0xA) | 0x30;
              }

              while (v116 > 0x63);
              v420.__mbstate8[v115 + 5] = v113 | 0x30;
              v118 = &v418;
              v71 = v390;
              if (v115 + 7 <= 7)
              {
                v119 = v115 + 5;
                __sigb = &v417[-v115 - 2];
                j__mkdtempat_np(&v418, &v420.__mbstate8[v115 + 5]);
                v120 = 5;
                if (v119 > 5)
                {
                  v120 = v119;
                }

                v71 = v390;
                v118 = &__sigb[v120];
              }
            }

            v124 = v118 - v417;
            v125 = v71 + (v118 - v417);
            v126 = (v66 & 1) == 0 && v71 < 2;
            v127 = v373;
            if (v126)
            {
              v127 = 0;
            }

            v383 = &v127[v125];
            v372 = v124;
            v68 = 0;
            goto LABEL_343;
          }

          v122 = v66 & 1;
          v71 = v390;
        }

        v381 = 0;
        if (v404 <= 0)
        {
          v128 = 1;
        }

        else
        {
          v128 = v404;
        }

        if (v122)
        {
          v129 = 0;
        }

        else
        {
          v129 = v71 == 0;
        }

        v130 = &v373[v71];
        if (v129)
        {
          v130 = 0;
        }

        v383 = &v130[v128];
        if ((v66 & 0x200) == 0 || v404 < 1)
        {
          __sig = v382;
          v69 = v66 | 0x100;
          v68 = 0;
          goto LABEL_426;
        }

        v381 = 0;
        v383 += grouping_init(&v407, v404, a2);
        v68 = 0;
LABEL_343:
        __sig = v382;
        goto LABEL_344;
      case 'L':
        v23 = v23 | 8;
        continue;
      case 'O':
        LOWORD(v23) = v23 | 0x10;
        goto LABEL_170;
      case 'S':
        LOWORD(v23) = v23 | 0x10;
        goto LABEL_187;
      case 'U':
        LOWORD(v23) = v23 | 0x10;
        goto LABEL_155;
      case 'X':
        v73 = &__vfprintf_xdigs_upper;
        goto LABEL_165;
      case 'c':
        v69 = v23;
LABEL_182:
        v71 = v389;
        if ((v69 & 0x4000) != 0)
        {
          goto LABEL_318;
        }

        if ((v69 & 0x10) != 0)
        {
          memset(&v420, 0, sizeof(v420));
          if (v396)
          {
            v83 = *(v396 + 4 * v386);
          }

          else
          {
            v104 = v411;
            v411 += 2;
            v83 = *v104;
          }

          v105 = wcrtomb_l(v415, v83, &v420, a2);
          if (v105 == -1)
          {
            *(a1 + 16) |= 0x40u;
LABEL_903:
            v11 = v385;
            goto LABEL_904;
          }

          v103 = v105;
        }

        else
        {
          if (v396)
          {
            v74 = *(v396 + 4 * v386);
          }

          else
          {
            v102 = v411;
            v411 += 2;
            v74 = *v102;
          }

          v415[0] = v74;
          v103 = 1;
        }

        v383 = v103;
        ++v386;
        v68 = 0;
        v410 = 0;
        __sig = v415;
        goto LABEL_426;
      case 'd':
      case 'i':
LABEL_175:
        v71 = v389;
        if ((v23 & 0x4000) != 0)
        {
          goto LABEL_180;
        }

        if ((v23 & 0x1C20) != 0)
        {
          if (v396)
          {
            v72 = *(v396 + 2 * v386);
            if ((v72 & 0x8000000000000000) == 0)
            {
              goto LABEL_382;
            }
          }

          else
          {
            v91 = v411;
            v411 += 2;
            v72 = *v91;
            if ((*v91 & 0x8000000000000000) == 0)
            {
              goto LABEL_382;
            }
          }

          v72 = -v72;
        }

        else
        {
          if ((v23 & 0x10) != 0)
          {
            v72 = v377;
            if (v396)
            {
              v82 = *(v396 + 2 * v386);
            }

            else
            {
              v131 = v411;
              v411 += 2;
              v82 = *v131;
            }
          }

          else
          {
            v72 = v377;
            if ((v23 & 0x40) != 0)
            {
              if (v396)
              {
                LODWORD(v82) = *(v396 + 4 * v386);
              }

              else
              {
                v82 = v411;
                v411 += 2;
                LODWORD(v82) = *v82;
              }

              v82 = v82;
            }

            else if ((v23 & 0x2000) != 0)
            {
              if (v396)
              {
                LODWORD(v82) = *(v396 + 4 * v386);
              }

              else
              {
                v82 = v411;
                v411 += 2;
                LODWORD(v82) = *v82;
              }

              v82 = v82;
            }

            else
            {
              if (v396)
              {
                LODWORD(v82) = *(v396 + 4 * v386);
              }

              else
              {
                v82 = v411;
                v411 += 2;
                LODWORD(v82) = *v82;
              }

              v82 = v82;
            }
          }

          if ((v82 & 0x8000000000000000) == 0)
          {
            v374 = v82;
            goto LABEL_382;
          }

          v374 = -v82;
        }

        v410 = 45;
LABEL_382:
        v8 = 10;
        goto LABEL_408;
      case 'h':
        if ((v23 & 0x40) != 0)
        {
          v23 = v23 & 0xFFFFDFBF | 0x2000;
        }

        else
        {
          v23 = v23 | 0x40;
        }

        continue;
      case 'j':
        v23 = v23 | 0x1000;
        continue;
      case 'l':
        if ((v23 & 0x10) != 0)
        {
          v23 = v23 & 0xFFFFFFCF | 0x20;
        }

        else
        {
          v23 = v23 | 0x10;
        }

        continue;
      case 'n':
        if (v396)
        {
          v54 = v386;
          v55 = *(v396 + 2 * v386);
        }

        else
        {
          v56 = v411;
          v411 += 2;
          v55 = *v56;
          v54 = v386;
        }

        v386 = v54 + 1;
        v11 = v385;
        v12 = a3;
        if (v55)
        {
          if ((v369 & 1) == 0)
          {
            v57 = v23;
            only = __printf_is_memory_read_only(v371);
            LOWORD(v23) = v57;
            if (!only)
            {
              __vfprintf_cold_1(&v412, &v420);
            }
          }

          if ((v23 & 0x20) != 0 || (v23 & 0x400) != 0 || (v23 & 0x800) != 0 || (v23 & 0x1000) != 0 || (v23 & 0x10) != 0)
          {
            if (off_1EAC9EA90)
            {
              (off_1EAC9EA90)(v55, 8);
            }

            v11 = v385;
            *v55 = v385;
          }

          else if ((v23 & 0x40) != 0)
          {
            if (off_1EAC9EA90)
            {
              (off_1EAC9EA90)(v55, 2);
            }

            v11 = v385;
            *v55 = v385;
          }

          else if ((v23 & 0x2000) != 0)
          {
            if (off_1EAC9EA90)
            {
              (off_1EAC9EA90)(v55, 1);
            }

            v11 = v385;
            *v55 = v385;
          }

          else
          {
            if (off_1EAC9EA90)
            {
              (off_1EAC9EA90)(v55, 4);
            }

            v11 = v385;
            *v55 = v385;
          }

          v369 = 1;
          v12 = a3;
        }

        goto LABEL_6;
      case 'o':
LABEL_170:
        v71 = v389;
        if ((v23 & 0x4000) != 0)
        {
          goto LABEL_180;
        }

        if ((v23 & 0x1C20) != 0)
        {
          if (v396)
          {
            v72 = *(v396 + 2 * v386);
          }

          else
          {
            v94 = v411;
            v411 += 2;
            v72 = *v94;
          }
        }

        else
        {
          if ((v23 & 0x10) != 0)
          {
            v72 = v377;
            if (v396)
            {
              v90 = *(v396 + 2 * v386);
            }

            else
            {
              v134 = v411;
              v411 += 2;
              v90 = *v134;
            }
          }

          else
          {
            v72 = v377;
            if ((v23 & 0x40) != 0)
            {
              if (v396)
              {
                LOWORD(v90) = *(v396 + 8 * v386);
              }

              else
              {
                v90 = v411;
                v411 += 2;
                LODWORD(v90) = *v90;
              }

              v90 = v90;
            }

            else if ((v23 & 0x2000) != 0)
            {
              if (v396)
              {
                LOBYTE(v90) = *(v396 + 16 * v386);
              }

              else
              {
                v90 = v411;
                v411 += 2;
                LODWORD(v90) = *v90;
              }

              v90 = v90;
            }

            else
            {
              if (v396)
              {
                LODWORD(v90) = *(v396 + 4 * v386);
              }

              else
              {
                v90 = v411;
                v411 += 2;
                LODWORD(v90) = *v90;
              }

              v90 = v90;
            }
          }

          v374 = v90;
        }

        v8 = 8;
        goto LABEL_407;
      case 'p':
        if ((v23 & 0x4000) == 0)
        {
          v71 = v389;
          if (v396)
          {
            v72 = *(v396 + 2 * v386);
          }

          else
          {
            v106 = v411;
            v411 += 2;
            v72 = *v106;
          }

          LOWORD(v23) = v23 | 0x1000;
          v398 = 120;
          v8 = 16;
          v376 = &__vfprintf_xdigs_lower;
          goto LABEL_407;
        }

        v68 = 0;
        v24 = 112;
LABEL_216:
        v69 = v23;
LABEL_217:
        v71 = v389;
        goto LABEL_426;
      case 'q':
        v23 = v23 | 0x20;
        continue;
      case 's':
LABEL_187:
        v387 = v23;
        if ((v23 & 0x10) == 0)
        {
          v71 = v389;
          if (v396)
          {
            v75 = *(v396 + 2 * v386);
          }

          else
          {
            v86 = v411;
            v411 += 2;
            v75 = *v86;
          }

          if (!v75)
          {
            v75 = "(null)";
          }

LABEL_231:
          __sig = v75;
          if ((v71 & 0x8000000000000000) == 0)
          {
            goto LABEL_232;
          }

          goto LABEL_261;
        }

        free(v384);
        v71 = v389;
        if (v396)
        {
          v76 = *(v396 + 2 * v386);
          if (!v76)
          {
            goto LABEL_230;
          }
        }

        else
        {
          v87 = v411;
          v411 += 2;
          v76 = *v87;
          if (!*v87)
          {
LABEL_230:
            v384 = 0;
            v75 = "(null)";
            goto LABEL_231;
          }
        }

        memset(&v420, 0, sizeof(v420));
        v412 = 0;
        __siga = v76;
        if ((v389 & 0x80000000) != 0)
        {
          v412 = v76;
          memset(&v420, 0, sizeof(v420));
          v77 = wcsrtombs_l(0, &v412, 0, &v420, a2);
          if (v77 == -1)
          {
            goto LABEL_901;
          }
        }

        else if (v389 > 0x7F)
        {
          v95 = 0;
          v412 = v76;
          memset(&v420, 0, sizeof(v420));
          do
          {
            v77 = v95;
            v96 = *v412++;
            v97 = wcrtomb_l(v413, v96, &v420, a2);
            v95 = v97 + v77;
          }

          while (v97 + 1 >= 2 && v95 <= (v389 & 0x7FFFFFFF));
        }

        else
        {
          v77 = v389 & 0x7F;
        }

        v99 = malloc_type_malloc(v77 + 1, 0x244A7CEFuLL);
        if (!v99)
        {
          goto LABEL_901;
        }

        v100 = v99;
        v412 = __siga;
        memset(&v420, 0, sizeof(v420));
        v101 = wcsrtombs_l(v99, &v412, v77, &v420, a2);
        if (v101 == -1)
        {
          free(v100);
LABEL_901:
          v10 = 0;
          *(a1 + 16) |= 0x40u;
LABEL_899:
          v11 = v385;
          goto LABEL_905;
        }

        v100[v101] = 0;
        v384 = v100;
        __sig = v100;
        v71 = v389;
        if ((v389 & 0x8000000000000000) == 0)
        {
LABEL_232:
          v88 = MEMORY[0x193AD6A70](__sig, v71);
          goto LABEL_262;
        }

LABEL_261:
        v88 = j__strsignal_r(__sig, v7, v8);
LABEL_262:
        v383 = v88;
        if (v88 > 0x7FFFFFFE)
        {
          goto LABEL_895;
        }

        if (off_1EAC9EA78)
        {
          (off_1EAC9EA78)(__sig, v88);
        }

        ++v386;
        v68 = 0;
        v410 = 0;
LABEL_344:
        v69 = v387;
LABEL_426:
        v388 = v69;
        if ((v69 & 0x4000) != 0)
        {
          v412 = 0;
          if (v396)
          {
            v140 = *(v396 + v386);
          }

          else
          {
            v141 = ((v411 + 15) & 0xFFFFFFFFFFFFFFF0);
            v411 = (v141 + 1);
            v140 = *v141;
          }

          v402 = v140;
          v142 = &a3[-v12 - v14];
          if ((v142 + 1) >= 0x22)
          {
            __sigc = v140;
            v144 = malloc_type_malloc((v142 + 2), 0x100004077774924uLL);
            *&v140 = __sigc;
            v143 = v144;
          }

          else
          {
            v143 = &v420;
          }

          v145 = v388;
          if (v401 == 88)
          {
            if (v24 == 99)
            {
              v401 = 0;
            }

            else
            {
              v401 = 32;
            }
          }

          if ((v142 - 1) < 1)
          {
            v160 = 0;
            v166 = 1;
            v167 = 1;
            if ((v388 & 0x40) != 0)
            {
              goto LABEL_484;
            }

LABEL_479:
            if ((v145 & 0x10) == 0)
            {
              v168 = v24 - 65;
              if (v24 - 65 > 0x2F)
              {
                goto LABEL_618;
              }

              if (((1 << v168) & 0x7100000051) != 0)
              {
                v169 = 6;
LABEL_490:
                v170 = 4;
                goto LABEL_494;
              }

              if (((1 << v168) & 0x800400000000) == 0)
              {
LABEL_618:
                *&v143->__mbstate8[v160] = 26728;
                v160 += 2;
              }

              if (v24 == 112)
              {
                v169 = 3;
              }

              else
              {
                v169 = 0;
              }

              v170 = 16;
              goto LABEL_494;
            }

            if (v24 == 112)
            {
              v169 = 5;
            }

            else
            {
              v169 = 2;
            }

            goto LABEL_490;
          }

          v158 = 0;
          v159 = 0;
          v160 = 0;
          v161 = &a3[v15];
          v162 = i;
          do
          {
            v164 = *v162++;
            v163 = v164;
            v165 = (v164 - 42);
            if (v165 <= 0x3E)
            {
              if (((1 << v165) & 0x4020000000030004) != 0)
              {
                goto LABEL_477;
              }

              if (!v165)
              {
                if (*(i - 1) == 46)
                {
                  v158 = 1;
                }

                else
                {
                  v159 = 1;
                }

LABEL_476:
                v143->__mbstate8[v160++] = v163;
                goto LABEL_477;
              }
            }

            if (v163 != 108 && v163 != 118)
            {
              goto LABEL_476;
            }

LABEL_477:
            i = v162;
            --v161;
          }

          while (v161);
          v166 = v159 == 0;
          v167 = v158 == 0;
          v145 = v388;
          if ((v388 & 0x40) == 0)
          {
            goto LABEL_479;
          }

LABEL_484:
          if (v24 != 99)
          {
            if (v24 == 112)
            {
              v169 = 4;
              goto LABEL_493;
            }

            v143->__mbstate8[v160++] = 104;
          }

          v169 = 1;
LABEL_493:
          v170 = 8;
LABEL_494:
          v171 = &v143->__mbstate8[v160];
          *v171 = v24;
          v171[1] = 0;
          if (v166)
          {
            if (v167)
            {
              if (v169 <= 2)
              {
                if (!v169)
                {
                  v172 = v140;
                  goto LABEL_644;
                }

                if (v169 == 1)
                {
                  v172 = v140;
                  goto LABEL_644;
                }

                v239 = asprintf_l(&v412, a2, v143->__mbstate8, v140);
              }

              else if (v169 > 4)
              {
                if (v169 == 5)
                {
                  v172 = v140;
                  goto LABEL_644;
                }

                v239 = asprintf_l(&v412, a2, v143->__mbstate8, *&v140);
              }

              else
              {
                if (v169 == 3)
                {
                  v172 = v140;
                }

                else
                {
                  v172 = v140;
                }

LABEL_644:
                v239 = asprintf_l(&v412, a2, v143->__mbstate8, v172);
              }

              v11 = v385 + v239;
              v243 = v400[1];
              v244 = HIDWORD(v400[1]);
              v245 = &v400[2 * SLODWORD(v400[1]) + 2];
              *v245 = v412;
              v245[1] = v239;
              v246 = v244 + v239;
              HIDWORD(v400[1]) = v244 + v239;
              LODWORD(v400[1]) = v243 + 1;
              if (v243 < 7)
              {
                if (!v246)
                {
                  goto LABEL_652;
                }

                v248 = __sfvwrite(v399, v400);
                v400[1] = 0;
                if (v248)
                {
                  goto LABEL_904;
                }
              }

              else
              {
                if (v246)
                {
                  v247 = __sfvwrite(v399, v400);
                  v400[1] = 0;
                  if (v247)
                  {
                    goto LABEL_904;
                  }
                }

LABEL_652:
                LODWORD(v400[1]) = 0;
              }

              free(v412);
              v249 = &v402 + 1;
              v250 = 1;
              while (2)
              {
                if (v401)
                {
                  v251 = vadd_s32(v400[1], 0x100000001);
                  v252 = v400[1];
                  v253 = &v400[2 * SLODWORD(v400[1]) + 2];
                  *v253 = &v401;
                  v253[1] = 1;
                  v400[1] = v251;
                  if (v252 >= 7)
                  {
                    if (v251.i32[1])
                    {
                      v254 = __sfvwrite(v399, v400);
                      v400[1] = 0;
                      if (v254)
                      {
                        goto LABEL_904;
                      }
                    }

                    else
                    {
                      LODWORD(v400[1]) = 0;
                    }
                  }
                }

                if (v169 <= 2)
                {
                  if (!v169)
                  {
                    goto LABEL_667;
                  }

                  if (v169 == 1)
                  {
                    goto LABEL_666;
                  }

                  goto LABEL_669;
                }

                if (v169 <= 4)
                {
                  if (v169 == 3)
                  {
LABEL_667:
                    v255 = *(&v402 + v250);
                    goto LABEL_670;
                  }

LABEL_666:
                  v255 = *(&v402 + v250);
                  goto LABEL_670;
                }

                if (v169 == 5)
                {
LABEL_669:
                  v255 = *v249;
LABEL_670:
                  v256 = asprintf_l(&v412, a2, v143->__mbstate8, v255);
                }

                else
                {
                  v256 = asprintf_l(&v412, a2, v143->__mbstate8, *v249);
                }

                v11 += v256;
                v257 = v400[1];
                v258 = HIDWORD(v400[1]);
                v259 = &v400[2 * SLODWORD(v400[1]) + 2];
                *v259 = v412;
                v259[1] = v256;
                v260 = v258 + v256;
                HIDWORD(v400[1]) = v258 + v256;
                LODWORD(v400[1]) = v257 + 1;
                if (v257 < 7)
                {
                  if (!v260)
                  {
                    goto LABEL_678;
                  }

                  v262 = __sfvwrite(v399, v400);
                  v400[1] = 0;
                  if (v262)
                  {
                    goto LABEL_904;
                  }
                }

                else
                {
                  if (v260)
                  {
                    v261 = __sfvwrite(v399, v400);
                    v400[1] = 0;
                    if (v261)
                    {
                      goto LABEL_904;
                    }
                  }

LABEL_678:
                  LODWORD(v400[1]) = 0;
                }

                free(v412);
                ++v250;
                ++v249;
                if (v170 == v250)
                {
                  goto LABEL_803;
                }

                continue;
              }
            }

            if (v169 <= 2)
            {
              if (!v169)
              {
                v174 = v140;
                goto LABEL_685;
              }

              if (v169 == 1)
              {
                v174 = v140;
                goto LABEL_685;
              }

              v241 = asprintf_l(&v412, a2, v143->__mbstate8, v71, v140);
            }

            else if (v169 > 4)
            {
              if (v169 == 5)
              {
                v174 = v140;
                goto LABEL_685;
              }

              v241 = asprintf_l(&v412, a2, v143->__mbstate8, v71, *&v140);
            }

            else
            {
              if (v169 == 3)
              {
                v174 = v140;
              }

              else
              {
                v174 = v140;
              }

LABEL_685:
              v241 = asprintf_l(&v412, a2, v143->__mbstate8, v71, v174);
            }

            v11 = v385 + v241;
            v283 = v400[1];
            v284 = HIDWORD(v400[1]);
            v285 = &v400[2 * SLODWORD(v400[1]) + 2];
            *v285 = v412;
            v285[1] = v241;
            v286 = v284 + v241;
            HIDWORD(v400[1]) = v284 + v241;
            LODWORD(v400[1]) = v283 + 1;
            if (v283 < 7)
            {
              if (!v286)
              {
                goto LABEL_735;
              }

              v288 = __sfvwrite(v399, v400);
              v400[1] = 0;
              if (v288)
              {
                goto LABEL_904;
              }
            }

            else
            {
              if (v286)
              {
                v287 = __sfvwrite(v399, v400);
                v400[1] = 0;
                if (v287)
                {
                  goto LABEL_904;
                }
              }

LABEL_735:
              LODWORD(v400[1]) = 0;
            }

            free(v412);
            v289 = &v402 + 1;
            v290 = 1;
            while (2)
            {
              if (v401)
              {
                v291 = vadd_s32(v400[1], 0x100000001);
                v292 = v400[1];
                v293 = &v400[2 * SLODWORD(v400[1]) + 2];
                *v293 = &v401;
                v293[1] = 1;
                v400[1] = v291;
                if (v292 >= 7)
                {
                  if (v291.i32[1])
                  {
                    v294 = __sfvwrite(v399, v400);
                    v400[1] = 0;
                    if (v294)
                    {
                      goto LABEL_904;
                    }
                  }

                  else
                  {
                    LODWORD(v400[1]) = 0;
                  }
                }
              }

              if (v169 <= 2)
              {
                if (!v169)
                {
                  goto LABEL_750;
                }

                if (v169 == 1)
                {
                  goto LABEL_749;
                }

                goto LABEL_752;
              }

              if (v169 <= 4)
              {
                if (v169 == 3)
                {
LABEL_750:
                  v295 = *(&v402 + v290);
                  goto LABEL_753;
                }

LABEL_749:
                v295 = *(&v402 + v290);
                goto LABEL_753;
              }

              if (v169 == 5)
              {
LABEL_752:
                v295 = *v289;
LABEL_753:
                v296 = asprintf_l(&v412, a2, v143->__mbstate8, v71, v295);
              }

              else
              {
                v296 = asprintf_l(&v412, a2, v143->__mbstate8, v71, *v289);
              }

              v11 += v296;
              v297 = v400[1];
              v298 = HIDWORD(v400[1]);
              v299 = &v400[2 * SLODWORD(v400[1]) + 2];
              *v299 = v412;
              v299[1] = v296;
              v300 = v298 + v296;
              HIDWORD(v400[1]) = v298 + v296;
              LODWORD(v400[1]) = v297 + 1;
              if (v297 < 7)
              {
                if (!v300)
                {
                  goto LABEL_761;
                }

                v302 = __sfvwrite(v399, v400);
                v400[1] = 0;
                if (v302)
                {
                  goto LABEL_904;
                }
              }

              else
              {
                if (v300)
                {
                  v301 = __sfvwrite(v399, v400);
                  v400[1] = 0;
                  if (v301)
                  {
                    goto LABEL_904;
                  }
                }

LABEL_761:
                LODWORD(v400[1]) = 0;
              }

              free(v412);
              ++v290;
              ++v289;
              if (v170 == v290)
              {
                goto LABEL_803;
              }

              continue;
            }
          }

          if (v167)
          {
            if (v169 <= 2)
            {
              if (!v169)
              {
                v173 = v140;
                goto LABEL_683;
              }

              if (v169 == 1)
              {
                v173 = v140;
                goto LABEL_683;
              }

              v240 = asprintf_l(&v412, a2, v143->__mbstate8, v22, v140);
            }

            else if (v169 > 4)
            {
              if (v169 == 5)
              {
                v173 = v140;
                goto LABEL_683;
              }

              v240 = asprintf_l(&v412, a2, v143->__mbstate8, v22, *&v140);
            }

            else
            {
              if (v169 == 3)
              {
                v173 = v140;
              }

              else
              {
                v173 = v140;
              }

LABEL_683:
              v240 = asprintf_l(&v412, a2, v143->__mbstate8, v22, v173);
            }

            v11 = v385 + v240;
            v263 = v400[1];
            v264 = HIDWORD(v400[1]);
            v265 = &v400[2 * SLODWORD(v400[1]) + 2];
            *v265 = v412;
            v265[1] = v240;
            v266 = v264 + v240;
            HIDWORD(v400[1]) = v264 + v240;
            LODWORD(v400[1]) = v263 + 1;
            if (v263 < 7)
            {
              if (!v266)
              {
                goto LABEL_697;
              }

              v268 = __sfvwrite(v399, v400);
              v400[1] = 0;
              if (v268)
              {
                goto LABEL_904;
              }
            }

            else
            {
              if (v266)
              {
                v267 = __sfvwrite(v399, v400);
                v400[1] = 0;
                if (v267)
                {
                  goto LABEL_904;
                }
              }

LABEL_697:
              LODWORD(v400[1]) = 0;
            }

            free(v412);
            v269 = &v402 + 1;
            v270 = 1;
            while (2)
            {
              if (v401)
              {
                v271 = vadd_s32(v400[1], 0x100000001);
                v272 = v400[1];
                v273 = &v400[2 * SLODWORD(v400[1]) + 2];
                *v273 = &v401;
                v273[1] = 1;
                v400[1] = v271;
                if (v272 >= 7)
                {
                  if (v271.i32[1])
                  {
                    v274 = __sfvwrite(v399, v400);
                    v400[1] = 0;
                    if (v274)
                    {
                      goto LABEL_904;
                    }
                  }

                  else
                  {
                    LODWORD(v400[1]) = 0;
                  }
                }
              }

              if (v169 <= 2)
              {
                if (!v169)
                {
                  goto LABEL_712;
                }

                if (v169 == 1)
                {
                  goto LABEL_711;
                }

                goto LABEL_714;
              }

              if (v169 <= 4)
              {
                if (v169 == 3)
                {
LABEL_712:
                  v275 = *(&v402 + v270);
                  goto LABEL_715;
                }

LABEL_711:
                v275 = *(&v402 + v270);
                goto LABEL_715;
              }

              if (v169 == 5)
              {
LABEL_714:
                v275 = *v269;
LABEL_715:
                v276 = asprintf_l(&v412, a2, v143->__mbstate8, v22, v275);
              }

              else
              {
                v276 = asprintf_l(&v412, a2, v143->__mbstate8, v22, *v269);
              }

              v11 += v276;
              v277 = v400[1];
              v278 = HIDWORD(v400[1]);
              v279 = &v400[2 * SLODWORD(v400[1]) + 2];
              *v279 = v412;
              v279[1] = v276;
              v280 = v278 + v276;
              HIDWORD(v400[1]) = v278 + v276;
              LODWORD(v400[1]) = v277 + 1;
              if (v277 < 7)
              {
                if (!v280)
                {
                  goto LABEL_723;
                }

                v282 = __sfvwrite(v399, v400);
                v400[1] = 0;
                if (v282)
                {
                  goto LABEL_904;
                }
              }

              else
              {
                if (v280)
                {
                  v281 = __sfvwrite(v399, v400);
                  v400[1] = 0;
                  if (v281)
                  {
                    goto LABEL_904;
                  }
                }

LABEL_723:
                LODWORD(v400[1]) = 0;
              }

              free(v412);
              ++v270;
              ++v269;
              if (v170 == v270)
              {
                goto LABEL_803;
              }

              continue;
            }
          }

          if (v169 <= 2)
          {
            if (!v169)
            {
              v175 = v140;
              goto LABEL_687;
            }

            if (v169 == 1)
            {
              v175 = v140;
              goto LABEL_687;
            }

            v242 = asprintf_l(&v412, a2, v143->__mbstate8, v22, v71, v140);
          }

          else if (v169 > 4)
          {
            if (v169 == 5)
            {
              v175 = v140;
              goto LABEL_687;
            }

            v242 = asprintf_l(&v412, a2, v143->__mbstate8, v22, v71, *&v140);
          }

          else
          {
            if (v169 == 3)
            {
              v175 = v140;
            }

            else
            {
              v175 = v140;
            }

LABEL_687:
            v242 = asprintf_l(&v412, a2, v143->__mbstate8, v22, v71, v175);
          }

          v11 = v385 + v242;
          v303 = v400[1];
          v304 = HIDWORD(v400[1]);
          v305 = &v400[2 * SLODWORD(v400[1]) + 2];
          *v305 = v412;
          v305[1] = v242;
          v306 = v304 + v242;
          HIDWORD(v400[1]) = v304 + v242;
          LODWORD(v400[1]) = v303 + 1;
          if (v303 < 7)
          {
            if (!v306)
            {
              goto LABEL_773;
            }

            v308 = __sfvwrite(v399, v400);
            v400[1] = 0;
            if (v308)
            {
              goto LABEL_904;
            }
          }

          else
          {
            if (v306)
            {
              v307 = __sfvwrite(v399, v400);
              v400[1] = 0;
              if (v307)
              {
LABEL_904:
                v10 = v384;
                goto LABEL_905;
              }
            }

LABEL_773:
            LODWORD(v400[1]) = 0;
          }

          free(v412);
          v309 = &v402 + 1;
          v310 = 1;
          while (2)
          {
            if (v401)
            {
              v311 = vadd_s32(v400[1], 0x100000001);
              v312 = v400[1];
              v313 = &v400[2 * SLODWORD(v400[1]) + 2];
              *v313 = &v401;
              v313[1] = 1;
              v400[1] = v311;
              if (v312 >= 7)
              {
                if (v311.i32[1])
                {
                  v314 = __sfvwrite(v399, v400);
                  v400[1] = 0;
                  if (v314)
                  {
                    goto LABEL_904;
                  }
                }

                else
                {
                  LODWORD(v400[1]) = 0;
                }
              }
            }

            if (v169 <= 2)
            {
              if (!v169)
              {
                goto LABEL_788;
              }

              if (v169 == 1)
              {
                goto LABEL_787;
              }

              goto LABEL_790;
            }

            if (v169 <= 4)
            {
              if (v169 == 3)
              {
LABEL_788:
                v315 = *(&v402 + v310);
                goto LABEL_791;
              }

LABEL_787:
              v315 = *(&v402 + v310);
              goto LABEL_791;
            }

            if (v169 == 5)
            {
LABEL_790:
              v315 = *v309;
LABEL_791:
              v316 = asprintf_l(&v412, a2, v143->__mbstate8, v22, v71, v315);
            }

            else
            {
              v316 = asprintf_l(&v412, a2, v143->__mbstate8, v22, v71, *v309);
            }

            v11 += v316;
            v317 = v400[1];
            v318 = HIDWORD(v400[1]);
            v319 = &v400[2 * SLODWORD(v400[1]) + 2];
            *v319 = v412;
            v319[1] = v316;
            v320 = v318 + v316;
            HIDWORD(v400[1]) = v318 + v316;
            LODWORD(v400[1]) = v317 + 1;
            if (v317 < 7)
            {
              if (!v320)
              {
                goto LABEL_799;
              }

              v322 = __sfvwrite(v399, v400);
              v400[1] = 0;
              if (v322)
              {
                goto LABEL_904;
              }
            }

            else
            {
              if (v320)
              {
                v321 = __sfvwrite(v399, v400);
                v400[1] = 0;
                if (v321)
                {
                  goto LABEL_904;
                }
              }

LABEL_799:
              LODWORD(v400[1]) = 0;
            }

            free(v412);
            ++v310;
            ++v309;
            if (v170 != v310)
            {
              continue;
            }

            break;
          }

LABEL_803:
          if (v143 != &v420)
          {
            free(v143);
          }

          ++v386;
LABEL_893:
          v10 = v384;
          goto LABEL_5;
        }

        v137 = v68;
        v138 = v383;
        if (v68 > v383)
        {
          v138 = v68;
        }

        v139 = v410;
        if (v410)
        {
          ++v138;
        }

        if (v398)
        {
          v138 += 2;
        }

        v380 = v138;
        if (v22 > v138)
        {
          v138 = v22;
        }

        v11 = v138 + v385;
        if (v138 + v385 >= 0x7FFFFFFF)
        {
LABEL_894:
          *__error() = 84;
LABEL_895:
          v11 = -1;
          goto LABEL_904;
        }

        if ((v388 & 0x84) == 0)
        {
          v146 = v22 - v380;
          if (v22 - v380 >= 1)
          {
            v147 = v400[1];
            v148 = HIDWORD(v400[1]);
            do
            {
              v149 = v147;
              if (v146 >= 0x10)
              {
                v150 = 16;
              }

              else
              {
                v150 = v146;
              }

              v151 = &v400[2 * v147 + 2];
              *v151 = &blanks;
              v151[1] = v150;
              v148 += v150;
              v147 = v149 + 1;
              HIDWORD(v400[1]) = v148;
              LODWORD(v400[1]) = v149 + 1;
              if (v149 >= 7)
              {
                if (v148)
                {
                  v152 = __sfvwrite(v399, v400);
                  v148 = 0;
                  v147 = 0;
                  v400[1] = 0;
                  if (v152)
                  {
                    goto LABEL_903;
                  }
                }

                else
                {
                  v147 = 0;
                  LODWORD(v400[1]) = 0;
                }
              }

              v153 = __OFSUB__(v146, v150);
              v146 -= v150;
            }

            while (!((v146 < 0) ^ v153 | (v146 == 0)));
            v139 = v410;
          }
        }

        if (v139)
        {
          v154 = vadd_s32(v400[1], 0x100000001);
          v155 = v400[1];
          v156 = &v400[2 * SLODWORD(v400[1]) + 2];
          *v156 = &v410;
          v156[1] = 1;
          v400[1] = v154;
          if (v155 >= 7)
          {
            if (v154.i32[1])
            {
              v157 = __sfvwrite(v399, v400);
              v400[1] = 0;
              if (v157)
              {
                goto LABEL_903;
              }
            }

            else
            {
              LODWORD(v400[1]) = 0;
            }
          }
        }

        if (v398)
        {
          v397 = 48;
          v176 = vadd_s32(v400[1], 0x200000001);
          v177 = v400[1];
          v178 = &v400[2 * SLODWORD(v400[1]) + 2];
          *v178 = &v397;
          v178[1] = 2;
          v400[1] = v176;
          if (v177 >= 7)
          {
            if (v176.i32[1])
            {
              v179 = __sfvwrite(v399, v400);
              v400[1] = 0;
              if (v179)
              {
                goto LABEL_903;
              }
            }

            else
            {
              LODWORD(v400[1]) = 0;
            }
          }
        }

        if ((v388 & 0x84) == 0x80)
        {
          v180 = v22 - v380;
          if (v22 - v380 >= 1)
          {
            v181 = v400[1];
            v182 = HIDWORD(v400[1]);
            do
            {
              v183 = v181;
              if (v180 >= 0x10)
              {
                v184 = 16;
              }

              else
              {
                v184 = v180;
              }

              v185 = &v400[2 * v181 + 2];
              *v185 = &zeroes;
              v185[1] = v184;
              v182 += v184;
              v181 = v183 + 1;
              HIDWORD(v400[1]) = v182;
              LODWORD(v400[1]) = v183 + 1;
              if (v183 >= 7)
              {
                if (v182)
                {
                  v186 = __sfvwrite(v399, v400);
                  v182 = 0;
                  v181 = 0;
                  v400[1] = 0;
                  if (v186)
                  {
                    goto LABEL_903;
                  }
                }

                else
                {
                  v181 = 0;
                  LODWORD(v400[1]) = 0;
                }
              }

              v153 = __OFSUB__(v180, v184);
              v180 -= v184;
            }

            while (!((v180 < 0) ^ v153 | (v180 == 0)));
          }
        }

        if ((v388 & 0x100) == 0)
        {
          v187 = v137 - v383;
          if (v137 - v383 >= 1)
          {
            v188 = v400[1];
            v189 = HIDWORD(v400[1]);
            do
            {
              v190 = v188;
              if (v187 >= 0x10)
              {
                v191 = 16;
              }

              else
              {
                v191 = v187;
              }

              v192 = &v400[2 * v188 + 2];
              *v192 = &zeroes;
              v192[1] = v191;
              v189 += v191;
              v188 = v190 + 1;
              HIDWORD(v400[1]) = v189;
              LODWORD(v400[1]) = v190 + 1;
              if (v190 >= 7)
              {
                if (v189)
                {
                  v193 = __sfvwrite(v399, v400);
                  v189 = 0;
                  v188 = 0;
                  v400[1] = 0;
                  if (v193)
                  {
                    goto LABEL_903;
                  }
                }

                else
                {
                  v188 = 0;
                  LODWORD(v400[1]) = 0;
                }
              }

              v153 = __OFSUB__(v187, v191);
              v187 -= v191;
            }

            while (!((v187 < 0) ^ v153 | (v187 == 0)));
          }

          if (v408)
          {
            if ((grouping_print(&v407, &v399, __sig, v417) & 0x80000000) != 0)
            {
              goto LABEL_903;
            }

            goto LABEL_876;
          }

          v202 = v400[1];
          v203 = HIDWORD(v400[1]);
          v204 = &v400[2 * SLODWORD(v400[1]) + 2];
          *v204 = __sig;
          v204[1] = v383;
          v205 = v203 + v383;
          HIDWORD(v400[1]) = v205;
          LODWORD(v400[1]) = v202 + 1;
          if (v202 < 7)
          {
            goto LABEL_876;
          }

          if (!v205)
          {
            goto LABEL_575;
          }

LABEL_615:
          v225 = __sfvwrite(v399, v400);
          v400[1] = 0;
          if (v225)
          {
            goto LABEL_903;
          }

          goto LABEL_876;
        }

        if (v381)
        {
          if (v71 > 1 || (v388 & 1) != 0)
          {
            v206 = vadd_s32(v400[1], 0x100000001);
            v207 = v400[1];
            v208 = &v400[2 * SLODWORD(v400[1]) + 2];
            *v208 = __sig;
            v208[1] = 1;
            v400[1] = v206;
            v209 = v206.i32[1];
            if (v207 < 7)
            {
              v211 = v206.i32[0];
            }

            else
            {
              if (v206.i32[1])
              {
                v210 = __sfvwrite(v399, v400);
                v400[1] = 0;
                if (v210)
                {
                  goto LABEL_903;
                }

                v209 = 0;
              }

              v211 = 0;
            }

            v212 = &v400[2 * v211 + 2];
            *v212 = v370;
            v212[1] = v373;
            v213 = v209 + v373;
            v214 = v211 + 1;
            HIDWORD(v400[1]) = v213;
            LODWORD(v400[1]) = v211 + 1;
            if (v211 >= 7)
            {
              if (v213)
              {
                v215 = __sfvwrite(v399, v400);
                v400[1] = 0;
                if (v215)
                {
                  goto LABEL_903;
                }

                v213 = 0;
              }

              v214 = 0;
            }

            v216 = &v400[2 * v214 + 2];
            *v216 = __sig + 1;
            v216[1] = v375 - 1;
            v197 = v213 + v375 - 1;
            v199 = v214 + 1;
            HIDWORD(v400[1]) = v197;
            LODWORD(v400[1]) = v214 + 1;
            if (v214 >= 7)
            {
              if (v197)
              {
                v217 = __sfvwrite(v399, v400);
                v400[1] = 0;
                if (v217)
                {
                  goto LABEL_903;
                }

                v197 = 0;
              }

              v199 = 0;
            }

            v218 = v71 - v375;
            if (v71 - v375 >= 1)
            {
              do
              {
                v219 = v199;
                if (v218 >= 0x10)
                {
                  v220 = 16;
                }

                else
                {
                  v220 = v218;
                }

                v221 = &v400[2 * v199 + 2];
                *v221 = &zeroes;
                v221[1] = v220;
                v197 += v220;
                v199 = v219 + 1;
                HIDWORD(v400[1]) = v197;
                LODWORD(v400[1]) = v219 + 1;
                if (v219 >= 7)
                {
                  if (v197)
                  {
                    v222 = __sfvwrite(v399, v400);
                    v197 = 0;
                    v199 = 0;
                    v400[1] = 0;
                    if (v222)
                    {
                      goto LABEL_903;
                    }
                  }

                  else
                  {
                    v199 = 0;
                    LODWORD(v400[1]) = 0;
                  }
                }

                v153 = __OFSUB__(v218, v220);
                v218 -= v220;
              }

              while (!((v218 < 0) ^ v153 | (v218 == 0)));
            }
          }

          else
          {
            v194 = vadd_s32(v400[1], 0x100000001);
            v195 = v400[1];
            v196 = &v400[2 * SLODWORD(v400[1]) + 2];
            *v196 = __sig;
            v196[1] = 1;
            v400[1] = v194;
            v197 = v194.i32[1];
            if (v195 < 7)
            {
              v199 = v194.i32[0];
            }

            else
            {
              if (v194.i32[1])
              {
                v198 = __sfvwrite(v399, v400);
                v400[1] = 0;
                if (v198)
                {
                  goto LABEL_903;
                }

                v197 = 0;
              }

              v199 = 0;
            }
          }

          v223 = &v400[2 * v199 + 2];
          *v223 = v417;
          v223[1] = v372;
          v224 = v197 + v372;
          HIDWORD(v400[1]) = v224;
          LODWORD(v400[1]) = v199 + 1;
          if (v199 < 7)
          {
            goto LABEL_876;
          }

          if (!v224)
          {
LABEL_575:
            LODWORD(v400[1]) = 0;
            goto LABEL_876;
          }

          goto LABEL_615;
        }

        v200 = v404;
        if (v404 <= 0)
        {
          v226 = vadd_s32(v400[1], 0x100000001);
          v227 = v400[1];
          v228 = &v400[2 * SLODWORD(v400[1]) + 2];
          *v228 = &zeroes;
          v228[1] = 1;
          v400[1] = v226;
          v229 = v226.i32[1];
          if (v227 < 7)
          {
            v231 = v226.i32[0];
          }

          else if (v226.i32[1])
          {
            v230 = __sfvwrite(v399, v400);
            v229 = 0;
            v231 = 0;
            v400[1] = 0;
            if (v230)
            {
              goto LABEL_903;
            }
          }

          else
          {
            v231 = 0;
            LODWORD(v400[1]) = 0;
          }

          if (v71 || (v388 & 1) != 0)
          {
            v323 = &v400[2 * v231 + 2];
            *v323 = v370;
            v323[1] = v373;
            v229 += v373;
            HIDWORD(v400[1]) = v229;
            LODWORD(v400[1]) = v231 + 1;
            if (v231 < 7)
            {
              ++v231;
            }

            else if (v229)
            {
              v324 = __sfvwrite(v399, v400);
              v229 = 0;
              v231 = 0;
              v400[1] = 0;
              if (v324)
              {
                goto LABEL_903;
              }
            }

            else
            {
              v231 = 0;
              LODWORD(v400[1]) = 0;
            }
          }

          v325 = v404;
          if (v404 < 0)
          {
            v326 = -v404;
            do
            {
              v327 = v231;
              if (v326 >= 0x10)
              {
                v328 = 16;
              }

              else
              {
                v328 = v326;
              }

              v329 = &v400[2 * v231 + 2];
              *v329 = &zeroes;
              v329[1] = v328;
              v229 += v328;
              v231 = v327 + 1;
              HIDWORD(v400[1]) = v229;
              LODWORD(v400[1]) = v327 + 1;
              if (v327 >= 7)
              {
                if (v229)
                {
                  v330 = __sfvwrite(v399, v400);
                  v229 = 0;
                  v231 = 0;
                  v400[1] = 0;
                  if (v330)
                  {
                    goto LABEL_903;
                  }
                }

                else
                {
                  v231 = 0;
                  LODWORD(v400[1]) = 0;
                }
              }

              v153 = __OFSUB__(v326, v328);
              v326 -= v328;
            }

            while (!((v326 < 0) ^ v153 | (v326 == 0)));
            v325 = v404;
          }

          v331 = v71 + v325;
        }

        else
        {
          if (v408)
          {
            v201 = grouping_print(&v407, &v399, __sig, v403);
            if (v201 < 0)
            {
              goto LABEL_903;
            }
          }

          else
          {
            v232 = v403 - __sig;
            if (v403 - __sig >= v404)
            {
              v233 = v404;
            }

            else
            {
              v233 = v232;
            }

            if (v232 < 1)
            {
              LODWORD(v233) = 0;
            }

            else
            {
              v234 = v400[1];
              v235 = HIDWORD(v400[1]);
              v236 = &v400[2 * SLODWORD(v400[1]) + 2];
              *v236 = __sig;
              v236[1] = v233;
              v237 = v235 + v233;
              HIDWORD(v400[1]) = v237;
              LODWORD(v400[1]) = v234 + 1;
              if (v234 >= 7)
              {
                if (v237)
                {
                  v238 = __sfvwrite(v399, v400);
                  v400[1] = 0;
                  if (v238)
                  {
                    goto LABEL_903;
                  }
                }

                else
                {
                  LODWORD(v400[1]) = 0;
                }
              }
            }

            v332 = v200 - v233;
            if (v332 >= 1)
            {
              v333 = v400[1];
              v334 = HIDWORD(v400[1]);
              do
              {
                v335 = v333;
                if (v332 >= 0x10)
                {
                  v336 = 16;
                }

                else
                {
                  v336 = v332;
                }

                v337 = &v400[2 * v333 + 2];
                *v337 = &zeroes;
                v337[1] = v336;
                v334 += v336;
                v333 = v335 + 1;
                HIDWORD(v400[1]) = v334;
                LODWORD(v400[1]) = v335 + 1;
                if (v335 >= 7)
                {
                  if (v334)
                  {
                    v338 = __sfvwrite(v399, v400);
                    v334 = 0;
                    v333 = 0;
                    v400[1] = 0;
                    if (v338)
                    {
                      goto LABEL_903;
                    }
                  }

                  else
                  {
                    v333 = 0;
                    LODWORD(v400[1]) = 0;
                  }
                }

                v153 = __OFSUB__(v332, v336);
                v332 -= v336;
              }

              while (!((v332 < 0) ^ v153 | (v332 == 0)));
            }

            v201 = v404;
          }

          __sig += v201;
          if (v71 || (v388 & 1) != 0)
          {
            v339 = v400[1];
            v340 = HIDWORD(v400[1]);
            v341 = &v400[2 * SLODWORD(v400[1]) + 2];
            *v341 = v370;
            v341[1] = v373;
            v342 = v340 + v373;
            HIDWORD(v400[1]) = v342;
            LODWORD(v400[1]) = v339 + 1;
            if (v339 >= 7)
            {
              if (v342)
              {
                v343 = __sfvwrite(v399, v400);
                v400[1] = 0;
                v331 = v71;
                if (v343)
                {
                  goto LABEL_903;
                }

                goto LABEL_854;
              }

              LODWORD(v400[1]) = 0;
            }

            v331 = v71;
          }

          else
          {
            v331 = 0;
          }
        }

LABEL_854:
        v344 = v331;
        if (v403 - __sig >= v331)
        {
          v345 = v331;
        }

        else
        {
          v345 = (v403 - __sig);
        }

        if (v345 < 1)
        {
          LODWORD(v345) = 0;
        }

        else
        {
          v346 = v400[1];
          v347 = HIDWORD(v400[1]);
          v348 = &v400[2 * SLODWORD(v400[1]) + 2];
          *v348 = __sig;
          v348[1] = v345;
          v349 = v347 + v345;
          HIDWORD(v400[1]) = v349;
          LODWORD(v400[1]) = v346 + 1;
          if (v346 >= 7)
          {
            if (v349)
            {
              v350 = __sfvwrite(v399, v400);
              v400[1] = 0;
              if (v350)
              {
                goto LABEL_903;
              }
            }

            else
            {
              LODWORD(v400[1]) = 0;
            }
          }
        }

        v351 = v344 - v345;
        if (v351 >= 1)
        {
          v352 = v400[1];
          v353 = HIDWORD(v400[1]);
          do
          {
            v354 = v352;
            if (v351 >= 0x10)
            {
              v355 = 16;
            }

            else
            {
              v355 = v351;
            }

            v356 = &v400[2 * v352 + 2];
            *v356 = &zeroes;
            v356[1] = v355;
            v353 += v355;
            v352 = v354 + 1;
            HIDWORD(v400[1]) = v353;
            LODWORD(v400[1]) = v354 + 1;
            if (v354 >= 7)
            {
              if (v353)
              {
                v357 = __sfvwrite(v399, v400);
                v353 = 0;
                v352 = 0;
                v400[1] = 0;
                if (v357)
                {
                  goto LABEL_903;
                }
              }

              else
              {
                v352 = 0;
                LODWORD(v400[1]) = 0;
              }
            }

            v153 = __OFSUB__(v351, v355);
            v351 -= v355;
          }

          while (!((v351 < 0) ^ v153 | (v351 == 0)));
        }

LABEL_876:
        if ((v388 & 4) != 0)
        {
          v358 = v22 - v380;
          if (v22 - v380 >= 1)
          {
            v359 = v400[1];
            v360 = HIDWORD(v400[1]);
            do
            {
              v361 = v359;
              if (v358 >= 0x10)
              {
                v362 = 16;
              }

              else
              {
                v362 = v358;
              }

              v363 = &v400[2 * v359 + 2];
              *v363 = &blanks;
              v363[1] = v362;
              v360 += v362;
              v359 = v361 + 1;
              HIDWORD(v400[1]) = v360;
              LODWORD(v400[1]) = v361 + 1;
              if (v361 >= 7)
              {
                if (v360)
                {
                  v364 = __sfvwrite(v399, v400);
                  v360 = 0;
                  v359 = 0;
                  v400[1] = 0;
                  if (v364)
                  {
                    goto LABEL_903;
                  }
                }

                else
                {
                  v359 = 0;
                  LODWORD(v400[1]) = 0;
                }
              }

              v153 = __OFSUB__(v358, v362);
              v358 -= v362;
            }

            while (!((v358 < 0) ^ v153 | (v358 == 0)));
          }
        }

        if (!HIDWORD(v400[1]))
        {
          LODWORD(v400[1]) = 0;
          goto LABEL_893;
        }

        v365 = __sfvwrite(v399, v400);
        v400[1] = 0;
        v10 = v384;
        if (!v365)
        {
          goto LABEL_5;
        }

LABEL_905:
        if (v382)
        {
          __freedtoa(v382);
        }

        free(v10);
        v366 = *(a1 + 16);
        if (v396 && v396 != v414)
        {
          free(v396);
        }

        if ((v366 & 0x40) != 0)
        {
          v367 = -1;
        }

        else
        {
          v367 = v11;
        }

        if (v367 > 0x7FFFFFFE)
        {
          return 0xFFFFFFFFLL;
        }

        else
        {
          return v367;
        }

      case 't':
        v23 = v23 | 0x800;
        continue;
      case 'u':
LABEL_155:
        v71 = v389;
        if ((v23 & 0x4000) != 0)
        {
          goto LABEL_180;
        }

        if ((v23 & 0x1C20) != 0)
        {
          if (v396)
          {
            v72 = *(v396 + 2 * v386);
          }

          else
          {
            v92 = v411;
            v411 += 2;
            v72 = *v92;
          }
        }

        else
        {
          if ((v23 & 0x10) != 0)
          {
            v72 = v377;
            if (v396)
            {
              v85 = *(v396 + 2 * v386);
            }

            else
            {
              v132 = v411;
              v411 += 2;
              v85 = *v132;
            }
          }

          else
          {
            v72 = v377;
            if ((v23 & 0x40) != 0)
            {
              if (v396)
              {
                LOWORD(v85) = *(v396 + 8 * v386);
              }

              else
              {
                v85 = v411;
                v411 += 2;
                LODWORD(v85) = *v85;
              }

              v85 = v85;
            }

            else if ((v23 & 0x2000) != 0)
            {
              if (v396)
              {
                LOBYTE(v85) = *(v396 + 16 * v386);
              }

              else
              {
                v85 = v411;
                v411 += 2;
                LODWORD(v85) = *v85;
              }

              v85 = v85;
            }

            else
            {
              if (v396)
              {
                LODWORD(v85) = *(v396 + 4 * v386);
              }

              else
              {
                v85 = v411;
                v411 += 2;
                LODWORD(v85) = *v85;
              }

              v85 = v85;
            }
          }

          v374 = v85;
        }

        v8 = 10;
        goto LABEL_407;
      case 'v':
        v23 = v23 | 0x4000;
        continue;
      case 'x':
        v73 = &__vfprintf_xdigs_lower;
LABEL_165:
        v376 = v73;
        v71 = v389;
        if ((v23 & 0x4000) != 0)
        {
LABEL_180:
          v68 = 0;
          v69 = v23;
          goto LABEL_426;
        }

        if ((v23 & 0x1C20) != 0)
        {
          if (v396)
          {
            v72 = *(v396 + 2 * v386);
          }

          else
          {
            v93 = v411;
            v411 += 2;
            v72 = *v93;
          }
        }

        else
        {
          if ((v23 & 0x10) != 0)
          {
            v72 = v377;
            if (v396)
            {
              v89 = *(v396 + 2 * v386);
            }

            else
            {
              v133 = v411;
              v411 += 2;
              v89 = *v133;
            }
          }

          else
          {
            v72 = v377;
            if ((v23 & 0x40) != 0)
            {
              if (v396)
              {
                LOWORD(v89) = *(v396 + 8 * v386);
              }

              else
              {
                v89 = v411;
                v411 += 2;
                LODWORD(v89) = *v89;
              }

              v89 = v89;
            }

            else if ((v23 & 0x2000) != 0)
            {
              if (v396)
              {
                LOBYTE(v89) = *(v396 + 16 * v386);
              }

              else
              {
                v89 = v411;
                v411 += 2;
                LODWORD(v89) = *v89;
              }

              v89 = v89;
            }

            else
            {
              if (v396)
              {
                LODWORD(v89) = *(v396 + 4 * v386);
              }

              else
              {
                v89 = v411;
                v411 += 2;
                LODWORD(v89) = *v89;
              }

              v89 = v89;
            }
          }

          v374 = v89;
        }

        if ((v23 & 1) == 0)
        {
          goto LABEL_398;
        }

        if ((v23 & 0x1C20) != 0)
        {
          if (!v72)
          {
            goto LABEL_398;
          }

LABEL_397:
          v398 = v24;
          goto LABEL_398;
        }

        if (v374)
        {
          goto LABEL_397;
        }

LABEL_398:
        LOWORD(v23) = v23 & 0xBDFF;
        v8 = 16;
LABEL_407:
        v410 = 0;
LABEL_408:
        if (v71 < 0)
        {
          v69 = v23;
        }

        else
        {
          v69 = v23 & 0xFF7F;
        }

        v377 = v72;
        if ((v69 & 0x1C20) != 0)
        {
          if (v72 | v71 || (__sig = v417, v8 == 8) && (__sig = v417, (v23 & 1) != 0))
          {
            v135 = v69 & 1;
            v136 = v72;
LABEL_420:
            __sig = __ultoa(v136, v417, v8, v135, v376);
          }
        }

        else if (v374 | v71 || (__sig = v417, v8 == 8) && (__sig = v417, (v23 & 1) != 0))
        {
          v135 = v69 & 1;
          v136 = v374;
          goto LABEL_420;
        }

        v383 = &v417[-__sig];
        if (&v417[-__sig] >= 33)
        {
          abort_report_np("%s:%s:%u: size (%zd) > BUF (%d)");
        }

        ++v386;
        if ((v69 & 0x200) != 0 && v383)
        {
          v383 += grouping_init(&v407, v383, a2);
        }

        v71 = v389;
        v68 = v389;
        goto LABEL_426;
      case 'z':
        v23 = v23 | 0x400;
        continue;
      default:
        if (!v24)
        {
          goto LABEL_896;
        }

        v415[0] = v24;
        v410 = 0;
        __sig = v415;
        v383 = 1;
        v68 = 0;
        goto LABEL_216;
    }
  }
}

uint64_t _vsnprintf(pthread_mutex_t *a1, pthread_rwlock_t *a2, _BYTE *a3, unint64_t a4, atomic_uint *a5, char *a6, __int16 *a7)
{
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = 0x7FFFFFFF;
  v15 = 0u;
  v16 = 0u;
  if (a4 - 1 < 0x7FFFFFFF)
  {
    v8 = a4 - 1;
  }

  v13 = 0uLL;
  v14 = 0uLL;
  v12 = 0uLL;
  *&v18 = v22;
  v23 = 0uLL;
  v24 = 0uLL;
  v25 = 0uLL;
  v26 = 0;
  v22[0] = 0;
  v22[1] = 850045858;
  if (a4 <= 1)
  {
    v8 = 1;
  }

  v9 = v21;
  if (a4 > 1)
  {
    v9 = a3;
  }

  if (a4 == 1)
  {
    *a3 = 0;
    v9 = v21;
    v8 = 1;
  }

  v11 = v9;
  *&v13 = v9;
  *(&v12 + 4) = v8 | 0xFFFF020800000000;
  DWORD2(v13) = v8;
  v27 = 0;
  v28 = 0uLL;
  v29 = 0uLL;
  v30 = 0uLL;
  v31 = 0uLL;
  v32 = 0uLL;
  v33 = 0uLL;
  v34 = 0uLL;
  v35 = 0uLL;
  result = __v2printf(a1, a2, &v11, a5, a6, a7);
  if (a4)
  {
    *v11 = 0;
  }

  return result;
}

int clock_gettime(clockid_t __clock_id, timespec *__tp)
{
  if (__clock_id <= _CLOCK_THREAD_CPUTIME_ID)
  {
    if (((1 << __clock_id) & 0x10330) != 0)
    {
      v3 = clock_gettime_nsec_np(__clock_id);
      if (v3)
      {
        v4 = v3;
        result = 0;
        __tp->tv_sec = v4 / 0x3B9ACA00;
        __tp->tv_nsec = v4 % 0x3B9ACA00;
        return result;
      }

      return -1;
    }

    if (__clock_id == _CLOCK_MONOTONIC)
    {
      v11.ru_utime = 0uLL;
      v12 = 0;
      result = _mach_boottime_usec(&v12, &v11.ru_utime);
      v9 = v11.ru_utime.tv_usec + 1000000 * (v12 / 0xF4240) - v12;
      if (v9 < 0)
      {
        v10 = v9 + 1000000;
      }

      else
      {
        v10 = v11.ru_utime.tv_usec + 1000000 * (v12 / 0xF4240) - v12;
      }

      tv_sec = v11.ru_utime.tv_sec - v12 / 0xF4240 + (v9 >> 31);
      LODWORD(v8) = 1000 * v10;
      goto LABEL_16;
    }

    if (__clock_id == _CLOCK_PROCESS_CPUTIME_ID)
    {
      memset(&v11, 0, sizeof(v11));
      result = getrusage(0, &v11);
      tv_sec = v11.ru_stime.tv_sec + v11.ru_utime.tv_sec;
      v7 = v11.ru_stime.tv_usec + v11.ru_utime.tv_usec;
      if (v11.ru_stime.tv_usec + v11.ru_utime.tv_usec > 999999)
      {
        v7 = v11.ru_stime.tv_usec + v11.ru_utime.tv_usec - 1000000;
        ++tv_sec;
      }

      LODWORD(v8) = 1000 * v7;
LABEL_16:
      v8 = v8;
      goto LABEL_17;
    }
  }

  if (__clock_id == _CLOCK_REALTIME)
  {
    v11.ru_utime = 0uLL;
    result = gettimeofday(&v11.ru_utime, 0);
    tv_sec = v11.ru_utime.tv_sec;
    v8 = 1000 * v11.ru_utime.tv_usec;
LABEL_17:
    __tp->tv_sec = tv_sec;
    __tp->tv_nsec = v8;
    return result;
  }

  *__error() = 22;
  return -1;
}

int gettimeofday(timeval *a1, void *a2)
{
  v3 = a1;
  if (!a1)
  {
    if (!a2)
    {
      return 0;
    }

    v3 = v9;
  }

  v9[0] = 0;
  v9[1] = 0;
  if (__commpage_gettimeofday() && (__gettimeofday() & 0x80000000) != 0)
  {
    return -1;
  }

  if (!a2)
  {
    return 0;
  }

  if (gettimeofday_validtz == 1)
  {
    tm_isdst = gettimeofday_cached_tz_1;
    v5 = gettimeofday_cached_tz_0;
  }

  else
  {
    v7 = localtime(&v3->tv_sec);
    tm_isdst = v7->tm_isdst;
    gettimeofday_cached_tz_1 = tm_isdst;
    v8 = ((v7->tm_gmtoff * 0x7777777777777777) >> 64) - v7->tm_gmtoff;
    v5 = (v8 >> 5) + (v8 >> 63) + 60 * tm_isdst;
    gettimeofday_cached_tz_0 = v5;
    gettimeofday_validtz = 1;
  }

  result = 0;
  *a2 = v5;
  *(a2 + 1) = tm_isdst;
  return result;
}

uint64_t __sfvwrite(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 12))
  {
    return 0;
  }

  v4 = *(a1 + 16);
  if ((v4 & 8) != 0 && ((*(a1 + 16) & 0x200) != 0 || *(a1 + 24)))
  {
    goto LABEL_7;
  }

  if (!__swsetup(a1))
  {
    v4 = *(a1 + 16);
LABEL_7:
    v6 = **a2;
    v5 = *(*a2 + 8);
    v7 = *a2 + 16;
    if ((v4 & 2) == 0)
    {
      if ((v4 & 1) == 0)
      {
        while (1)
        {
          if (!v5)
          {
            do
            {
              v5 = *(v7 + 8);
              v7 += 16;
            }

            while (!v5);
            v6 = *(v7 - 16);
          }

          v8 = *(a1 + 16);
          v9 = *(a1 + 12);
          if ((~v8 & 0x4200) == 0 && v5 > v9)
          {
            v12 = *(a1 + 24);
            v13 = *a1 - v12;
            *(a1 + 12) = v5 + 128;
            *(a1 + 32) = v13 + v5 + 128;
            v14 = reallocf(v12, v13 + v5 + 129);
            *(a1 + 24) = v14;
            if (!v14)
            {
              goto LABEL_77;
            }

            *a1 = &v14[v13];
            v9 = *(a1 + 12);
            if ((*(a1 + 16) & 0x200) != 0)
            {
LABEL_23:
              if (v5 >= v9)
              {
                v15 = v9;
              }

              else
              {
                v15 = v5;
              }

              if (v15 < 1)
              {
                v9 = v5;
                goto LABEL_38;
              }

              j__mkdtempat_np(*a1, v6);
              v16 = v15;
              goto LABEL_30;
            }
          }

          else if ((v8 & 0x200) != 0)
          {
            goto LABEL_23;
          }

          v11 = *a1;
          if (*a1 > *(a1 + 24) && v5 > v9)
          {
            j__mkdtempat_np(v11, v6);
            *a1 += v9;
            if (__fflush(a1))
            {
              goto LABEL_77;
            }

            goto LABEL_38;
          }

          v17 = *(a1 + 32);
          if (v5 < v17)
          {
            v16 = v5;
            j__mkdtempat_np(v11, v6);
            LODWORD(v15) = v5;
LABEL_30:
            v9 = v5;
            *(a1 + 12) -= v15;
            *a1 += v16;
            goto LABEL_38;
          }

          if (v17)
          {
            v18 = v5 / v17 * v17;
            if (v18 >= 0x7FFFFFFF)
            {
              v19 = 0x7FFFFFFFLL;
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

          v9 = _swrite(a1, v6, v19);
          if (v9 < 1)
          {
            goto LABEL_77;
          }

LABEL_38:
          v6 += v9;
          v5 -= v9;
          v20 = *(a2 + 12) - v9;
          *(a2 + 12) = v20;
          if (!v20)
          {
            return 0;
          }
        }
      }

      v25 = 0;
      v26 = 0;
      while (1)
      {
        if (v5)
        {
          if (v25)
          {
            goto LABEL_59;
          }
        }

        else
        {
          do
          {
            v5 = *(v7 + 8);
            v7 += 16;
          }

          while (!v5);
          v6 = *(v7 - 16);
        }

        v27 = j__mkdirx_np(v6, 0xA);
        if (v27)
        {
          v26 = v27 - v6 + 1;
        }

        else
        {
          v26 = v5 + 1;
        }

LABEL_59:
        if (v5 >= v26)
        {
          v28 = v26;
        }

        else
        {
          v28 = v5;
        }

        v29 = *(a1 + 32);
        v30 = v29 + *(a1 + 12);
        v31 = *a1;
        if (*a1 > *(a1 + 24) && v30 < v28)
        {
          j__mkdtempat_np(v31, v6);
          *a1 += v30;
          if (__fflush(a1))
          {
            goto LABEL_77;
          }
        }

        else if (v29 <= v28)
        {
          LODWORD(v30) = _swrite(a1, v6, v29);
          if (v30 < 1)
          {
            goto LABEL_77;
          }
        }

        else
        {
          j__mkdtempat_np(v31, v6);
          *(a1 + 12) -= v28;
          *a1 += v28;
          LODWORD(v30) = v28;
        }

        v26 -= v30;
        if (v26)
        {
          v25 = 1;
        }

        else
        {
          if (__fflush(a1))
          {
            goto LABEL_77;
          }

          v25 = 0;
        }

        v6 += v30;
        v5 -= v30;
        v33 = *(a2 + 12) - v30;
        *(a2 + 12) = v33;
        if (!v33)
        {
          return 0;
        }
      }
    }

    while (1)
    {
      if (!v5)
      {
        do
        {
          v5 = *(v7 + 8);
          v7 += 16;
        }

        while (!v5);
        v6 = *(v7 - 16);
      }

      v22 = v5 >= 0x7FFFFFFF ? 0x7FFFFFFFLL : v5;
      v23 = _swrite(a1, v6, v22);
      if (v23 < 1)
      {
        break;
      }

      v6 += v23;
      v5 -= v23;
      v24 = *(a2 + 12) - v23;
      *(a2 + 12) = v24;
      if (!v24)
      {
        return 0;
      }
    }

LABEL_77:
    *(a1 + 16) |= 0x40u;
  }

  return 0xFFFFFFFFLL;
}

lconv *__cdecl localeconv_l(locale_t a1)
{
  v1 = &__global_locale;
  if (a1 != -1)
  {
    v1 = a1;
  }

  if (a1)
  {
    v2 = v1;
  }

  else
  {
    v2 = &__c_locale;
  }

  os_unfair_lock_lock(v2 + 324);
  if (*(v2 + 1316))
  {
    current_monetary_locale = __get_current_monetary_locale(v2);
    *(v2 + 1400) = *current_monetary_locale;
    *(v2 + 1416) = *(current_monetary_locale + 1);
    *(v2 + 1432) = *(current_monetary_locale + 2);
    v4 = current_monetary_locale[7];
    *(v2 + 181) = current_monetary_locale[6];
    *(v2 + 1456) = *v4;
    v5 = current_monetary_locale[9];
    *(v2 + 1457) = *current_monetary_locale[8];
    *(v2 + 1458) = *v5;
    v6 = current_monetary_locale[11];
    *(v2 + 1459) = *current_monetary_locale[10];
    *(v2 + 1460) = *v6;
    v7 = current_monetary_locale[13];
    *(v2 + 1461) = *current_monetary_locale[12];
    *(v2 + 1462) = *v7;
    v8 = current_monetary_locale[15];
    *(v2 + 1463) = *current_monetary_locale[14];
    *(v2 + 1464) = *v8;
    v9 = current_monetary_locale[17];
    *(v2 + 1465) = *current_monetary_locale[16];
    *(v2 + 1466) = *v9;
    v10 = current_monetary_locale[19];
    *(v2 + 1467) = *current_monetary_locale[18];
    *(v2 + 1468) = *v10;
    *(v2 + 1469) = *current_monetary_locale[20];
    *(v2 + 1316) = 0;
  }

  if (*(v2 + 1317))
  {
    current_numeric_locale = __get_current_numeric_locale(v2);
    v12 = *current_numeric_locale;
    *(v2 + 86) = *current_numeric_locale;
    *(v2 + 174) = current_numeric_locale[2];
    *(v2 + 1317) = 0;
    if (!v12)
    {
      localeconv_l_cold_1();
    }
  }

  os_unfair_lock_unlock(v2 + 324);
  if (!*(v2 + 172))
  {
    localeconv_l_cold_2();
  }

  return (v2 + 1376);
}

_BYTE *__ultoa(unint64_t a1, _BYTE *a2, int a3, int a4, uint64_t a5)
{
  switch(a3)
  {
    case 8:
      v6 = a2 - 1;
      do
      {
        v7 = a1;
        *v6-- = a1 & 7 | 0x30;
        v8 = a1 > 7;
        a1 >>= 3;
      }

      while (v8);
      a2 = v6 + 1;
      if (a4 && (v7 & 7) != 0)
      {
        *v6 = 48;
        return v6;
      }

      break;
    case 10:
      if (a1 > 9)
      {
        if ((a1 & 0x8000000000000000) != 0)
        {
          *--a2 = (a1 % 0xA) | 0x30;
          a1 /= 0xAuLL;
        }

        do
        {
          *--a2 = (a1 % 0xA) | 0x30;
          v5 = a1 >= 0xA;
          a1 /= 0xAuLL;
        }

        while (v5);
      }

      else
      {
        *--a2 = a1 | 0x30;
      }

      break;
    case 16:
      do
      {
        *--a2 = *(a5 + (a1 & 0xF));
        v5 = a1 >= 0x10;
        a1 >>= 4;
      }

      while (v5);
      break;
    default:
      abort_report_np("%s:%s:%u: __ultoa: invalid base=%d");
  }

  return a2;
}

_DWORD *__ultoa_0(unint64_t a1, _DWORD *a2, int a3, int a4, uint64_t a5)
{
  switch(a3)
  {
    case 8:
      v6 = a2 - 1;
      do
      {
        v7 = a1;
        *v6-- = a1 & 7 | 0x30;
        v8 = a1 > 7;
        a1 >>= 3;
      }

      while (v8);
      a2 = v6 + 1;
      if (a4 && (v7 & 7) != 0)
      {
        *v6 = 48;
        return v6;
      }

      break;
    case 10:
      if (a1 > 9)
      {
        if ((a1 & 0x8000000000000000) != 0)
        {
          *--a2 = (a1 % 0xA) | 0x30;
          a1 /= 0xAuLL;
        }

        do
        {
          *--a2 = (a1 % 0xA) | 0x30;
          v5 = a1 >= 0xA;
          a1 /= 0xAuLL;
        }

        while (v5);
      }

      else
      {
        *--a2 = a1 | 0x30;
      }

      break;
    case 16:
      do
      {
        *--a2 = *(a5 + (a1 & 0xF));
        v5 = a1 >= 0x10;
        a1 >>= 4;
      }

      while (v5);
      break;
    default:
      abort_report_np("%s:%s:%u: __ultoa: invalid base=%d");
  }

  return a2;
}

void uuid_generate_random(uuid_t out)
{
  __buf[0] = 0;
  __buf[1] = 0;
  v2 = 0;
  v3 = 0;
  arc4random_buf(__buf, 0x10uLL);
  uuid_unpack(__buf, &v2);
  LOWORD(v3) = v3 & 0x3FFF | 0x8000;
  HIWORD(v2) = HIWORD(v2) & 0xFFF | 0x4000;
  uuid_pack(&v2, out);
}

void arc4random_buf(void *__buf, size_t __nbytes)
{
  arc4_init();
  v2 = *rng;

  v2();
}

__uint64_t clock_gettime_nsec_np(clockid_t __clock_id)
{
  switch(__clock_id)
  {
    case _CLOCK_PROCESS_CPUTIME_ID:
      memset(&v7, 0, sizeof(v7));
      if (getrusage(0, &v7))
      {
        return 0;
      }

      else
      {
        return 1000000000 * (v7.ru_stime.tv_sec + v7.ru_utime.tv_sec) + 1000 * (v7.ru_stime.tv_usec + v7.ru_utime.tv_usec);
      }

    case _CLOCK_MONOTONIC:
      v7.ru_utime = 0uLL;
      v8 = 0;
      v4 = _mach_boottime_usec(&v8, &v7.ru_utime);
      result = 0;
      if (!v4)
      {
        return 1000000000 * v7.ru_utime.tv_sec - 1000 * v8 + 1000 * v7.ru_utime.tv_usec;
      }

      break;
    case _CLOCK_REALTIME:
      v7.ru_utime = 0uLL;
      v2 = gettimeofday(&v7.ru_utime, 0);
      result = 0;
      if (!v2)
      {
        return 1000000000 * v7.ru_utime.tv_sec + 1000 * v7.ru_utime.tv_usec;
      }

      return result;
    default:
      v7.ru_utime.tv_sec = 0;
      if (mach_timebase_info(&v7))
      {
LABEL_11:
        v5 = __error();
        result = 0;
        *v5 = 22;
        return result;
      }

      if (__clock_id <= (_CLOCK_MONOTONIC_RAW_APPROX|0x2))
      {
        if (__clock_id == _CLOCK_MONOTONIC_RAW)
        {
          v6 = mach_continuous_time();
        }

        else
        {
          if (__clock_id != _CLOCK_MONOTONIC_RAW_APPROX)
          {
            goto LABEL_11;
          }

          v6 = mach_continuous_approximate_time();
        }
      }

      else
      {
        switch(__clock_id)
        {
          case _CLOCK_UPTIME_RAW:
            v6 = mach_absolute_time();
            break;
          case _CLOCK_UPTIME_RAW_APPROX:
            v6 = mach_approximate_time();
            break;
          case _CLOCK_THREAD_CPUTIME_ID:
            v6 = __thread_selfusage();
            break;
          default:
            goto LABEL_11;
        }
      }

      return v6 * LODWORD(v7.ru_utime.tv_sec) / HIDWORD(v7.ru_utime.tv_sec);
  }

  return result;
}

void arc4_init()
{
  if (!rng)
  {
    v1 = 0;
    rng = ccrng();
    if (!rng)
    {
      arc4_init_cold_1(&v0, v2);
    }
  }
}

uint64_t _mach_boottime_usec(uint64_t *a1, timeval *a2)
{
  while (1)
  {
    v4 = mach_boottime_usec();
    if (!v4)
    {
      v4 = _boottime_fallback_usec();
    }

    __dmb(0xBu);
    v5 = gettimeofday(a2, 0);
    if (v5)
    {
      break;
    }

    __dmb(0xBu);
    v6 = mach_boottime_usec();
    if (!v6)
    {
      v6 = _boottime_fallback_usec();
    }

    if (v4 == v6)
    {
      *a1 = v4;
      return v5;
    }
  }

  return v5;
}

char *__cdecl getenv(const char *a1)
{
  os_unfair_lock_lock_with_options();
  v2 = _NSGetEnviron();
  v3 = __findenv_locked(a1, &v5, *v2);
  os_unfair_lock_unlock(&__environ_lock_obj);
  return v3;
}

_BYTE *__findenv_locked(_BYTE *a1, _DWORD *a2, char *a3)
{
  v3 = 0;
  if (a1 && a3)
  {
    v4 = 1;
    for (i = a1; *i && *i != 61; ++i)
    {
      --v4;
    }

    v6 = *a3;
    if (*a3)
    {
      v7 = a3;
      do
      {
        if (v4 == 1)
        {
LABEL_16:
          if (*v6 == 61)
          {
            v3 = v6 + 1;
            *a2 = (v7 - a3) >> 3;
            return v3;
          }
        }

        else
        {
          v8 = &v6[-v4 + 1];
          v9 = v4 - 1;
          v10 = a1;
          while (*v6 && *v6 == *v10)
          {
            ++v6;
            ++v10;
            if (__CFADD__(v9++, 1))
            {
              v6 = v8;
              goto LABEL_16;
            }
          }
        }

        v12 = *(v7 + 1);
        v7 += 8;
        v6 = v12;
      }

      while (v12);
    }

    return 0;
  }

  return v3;
}

char *__cdecl strdup(const char *__s1)
{
  v4 = j__strsignal_r(__s1, v1, v2);
  result = malloc_type_malloc(v4 + 1, 0x68572098uLL);
  if (result)
  {

    return j__mkdtempat_np(result, __s1);
  }

  return result;
}

errno_t memset_s(void *__s, rsize_t __smax, int __c, rsize_t __n)
{
  if (!__s)
  {
    return 22;
  }

  if ((__smax & 0x8000000000000000) != 0)
  {
    return 7;
  }

  if ((__n & 0x8000000000000000) == 0)
  {
    v4 = __n;
  }

  else
  {
    v4 = __smax;
  }

  v5 = v4 > __smax;
  if (v4 >= __smax)
  {
    LODWORD(v4) = __smax;
  }

  if (v5)
  {
    v6 = 84;
  }

  else
  {
    v6 = (__n >> 63) & 7;
  }

  j__mkostemps(__s, __c, v4);
  return v6;
}

uint64_t uuid_pack(uint64_t result, uint64_t a2)
{
  *a2 = bswap32(*result);
  *(a2 + 4) = bswap32(*(result + 4)) >> 16;
  *(a2 + 6) = bswap32(*(result + 6)) >> 16;
  *(a2 + 8) = bswap32(*(result + 8)) >> 16;
  v2 = *(result + 10);
  *(a2 + 14) = *(result + 14);
  *(a2 + 10) = v2;
  return result;
}

uint64_t uuid_unpack(uint64_t result, uint64_t a2)
{
  *a2 = bswap32(*result);
  *(a2 + 4) = bswap32(*(result + 4)) >> 16;
  *(a2 + 6) = bswap32(*(result + 6)) >> 16;
  *(a2 + 8) = bswap32(*(result + 8)) >> 16;
  v2 = *(result + 10);
  *(a2 + 14) = *(result + 14);
  *(a2 + 10) = v2;
  return result;
}

uint64_t __memmove_chk(char *a1, int a2, unint64_t a3, unint64_t a4)
{
  if (a4 < a3)
  {
    __chk_fail_overflow();
  }

  return j__mkostemp(a1, a2);
}

int snprintf(char *__str, size_t __size, const char *__format, ...)
{
  va_start(va, __format);
  v4 = __locale_key;
  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v4);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &__global_locale;
  }

  return vsnprintf_l(__str, __size, v6, __format, va);
}

uint32_t arc4random_uniform(uint32_t __upper_bound)
{
  arc4_init();
  ccrng_uniform();
  return 0;
}

char *__dtoa(unsigned int a1, int a2, _DWORD *a3, _DWORD *a4, char **a5, double a6)
{
  v6 = a5;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 4, 4, 0));
  v9 = fabs(a6);
  if (a6 >= 0.0)
  {
    v10 = a6;
  }

  else
  {
    v10 = v9;
  }

  if (a6 >= 0.0)
  {
    v11 = a6;
  }

  else
  {
    v11 = v9;
  }

  *a4 = *&a6 >> 63;
  if ((~HIDWORD(v11) & 0x7FF00000) == 0)
  {
    *a3 = 9999;
    if (LODWORD(v11) || (HIDWORD(v11) & 0xFFFFF) != 0)
    {
      v12 = "NaN";
      v13 = a5;
      v14 = 3;
    }

    else
    {
      v12 = "Infinity";
      v13 = a5;
      v14 = 8;
    }

    goto LABEL_21;
  }

  if (v10 == 0.0)
  {
    *a3 = 1;
    v12 = "0";
    v13 = a5;
    v14 = 1;
LABEL_21:

    return __nrv_alloc_D2A(v12, v13, v14);
  }

  v17 = ((StatusReg + 0x400000) >> 22) & 3;
  if (a6 < 0.0)
  {
    v18 = 2 * (v17 != 2);
  }

  else
  {
    v18 = 2 * (v17 == 2);
  }

  if (v17 < 2)
  {
    v18 = v17;
  }

  v148 = v18;
  v151 = 0;
  v19 = __d2b_D2A(&v151, &v151 + 1, v10);
  v20 = (HIDWORD(v11) >> 20) & 0x7FF;
  v138 = a3;
  if (v20)
  {
    v21 = *&v11 & 0xFFFFFFFFFFFFFLL | 0x3FF0000000000000;
    v22 = v20 - 1023;
  }

  else
  {
    v24 = LODWORD(v11) << (-18 - (v151 + BYTE4(v151)));
    if (v151 + HIDWORD(v151) >= -1041)
    {
      v24 = ((2 * HIDWORD(v11)) << ~(v151 + BYTE4(v151) + 18)) | (LODWORD(v11) >> (v151 + BYTE4(v151) + 18));
    }

    v21 = COERCE__INT64(v24) - 0x1F0000000000000;
    v22 = v151 + HIDWORD(v151) - 1;
  }

  v25 = (*&v21 + -1.5) * 0.289529655 + 0.176091259 + v22 * 0.301029996;
  v26 = v25;
  v27 = v25 < 0.0;
  if (v25 == v25)
  {
    v27 = 0;
  }

  v28 = v26 - v27;
  if ((v26 - v27) <= 0x16)
  {
    v29 = v26 - v27;
    if (v10 < __tens_D2A[v28])
    {
      v29 = v28 - 1;
    }
  }

  else
  {
    v29 = v26 - v27;
  }

  v30 = HIDWORD(v151) + ~v22;
  if (v30 < 0)
  {
    v31 = -v30;
  }

  else
  {
    v31 = 0;
  }

  v32 = v30 & ~(v30 >> 31);
  if (v29 < 0)
  {
    v31 -= v29;
  }

  v140 = v31;
  if (v29 < 0)
  {
    v33 = -v29;
  }

  else
  {
    v33 = 0;
  }

  if (v29 >= 0)
  {
    v34 = v32 + v29;
  }

  else
  {
    v34 = v32;
  }

  if (v29 >= 0)
  {
    v35 = v29;
  }

  else
  {
    v35 = 0;
  }

  v137 = v35;
  if (a1 <= 9)
  {
    v36 = a1;
  }

  else
  {
    v36 = 0;
  }

  v37 = v36 - 4;
  if (v36 < 6)
  {
    v37 = v36;
  }

  v38 = 1;
  v149 = v29;
  v150 = v37;
  v144 = v33;
  if (v37 > 2)
  {
    if (v37 == 3)
    {
      v38 = 0;
    }

    else if (v37 == 4)
    {
      goto LABEL_59;
    }

    v139 = v29 + a2 + 1;
    v136 = v29 + a2;
    if (v139 > 1)
    {
      v39 = v29 + a2 + 1;
    }

    else
    {
      v39 = 1;
    }

    goto LABEL_66;
  }

  if (v37 < 2)
  {
    a2 = 0;
    v139 = -1;
    v39 = 18;
    v136 = -1;
    goto LABEL_66;
  }

  v38 = 0;
LABEL_59:
  if (a2 <= 1)
  {
    a2 = 1;
  }

  v39 = a2;
  v139 = a2;
  v136 = a2;
LABEL_66:
  v143 = __rv_alloc_D2A(v39);
  v40 = v149;
  v41 = v148 != 1 && v150 > 1;
  if (v41)
  {
    v42 = 0;
  }

  else
  {
    v42 = v38;
  }

  if (v36 <= 5 && v139 <= 0xE && v148 == 1)
  {
    v43 = v149 - 1;
    if (v149 < 1)
    {
      if (v149)
      {
        v47 = v10 * __tens_D2A[-v149 & 0xF];
        if (-v149 >= 0x10)
        {
          v74 = -v149 >> 4;
          v45 = 2;
          v75 = &__bigtens_D2A;
          do
          {
            if (v74)
            {
              ++v45;
              v47 = v47 * *v75;
            }

            ++v75;
            v41 = v74 > 1;
            v74 >>= 1;
          }

          while (v41);
        }

        else
        {
          v45 = 2;
        }
      }

      else
      {
        v45 = 2;
        v47 = v10;
      }
    }

    else
    {
      if ((v149 & 0x100) != 0)
      {
        v44 = v149 >> 4;
        v46 = v10 / 1.0e256;
        v45 = 3;
      }

      else
      {
        v44 = v149 >> 4;
        v45 = 2;
        v46 = v10;
      }

      v48 = __tens_D2A[v149 & 0xF];
      if (v44)
      {
        v49 = &__bigtens_D2A;
        do
        {
          if (v44)
          {
            ++v45;
            v48 = v48 * *v49;
          }

          ++v49;
          v41 = v44 > 1;
          v44 >>= 1;
        }

        while (v41);
      }

      v47 = v46 / v48;
    }

    if (v28 < 0x17 || (v47 < 1.0 ? (v50 = v139 < 1) : (v50 = 1), v50))
    {
      v51 = v139;
      v43 = v149;
    }

    else
    {
      if (v136 < 1)
      {
        goto LABEL_132;
      }

      v47 = v47 * 10.0;
      ++v45;
      v51 = v136;
    }

    *&v52 = COERCE__INT64(v45 * v47 + 7.0) - 0x340000000000000;
    v53 = v52;
    if (v51)
    {
      v54 = __tens_D2A[v51 - 1];
      i = v143 + 1;
      v56 = v47;
      if (v42)
      {
        v57 = 0.5 / v54 - v53;
        v58 = v47 - v56;
        *v143 = v56 + 48;
        if (v58 >= v57)
        {
          if (v51 <= 1)
          {
            v59 = 1;
          }

          else
          {
            v59 = v51;
          }

          v60 = v59 - 1;
          while (1.0 - v58 >= v57)
          {
            if (!v60)
            {
              goto LABEL_132;
            }

            v57 = v57 * 10.0;
            v61 = v58 * 10.0;
            v62 = v61;
            v58 = v61 - v61;
            *i++ = v62 + 48;
            --v60;
            if (v58 < v57)
            {
              goto LABEL_106;
            }
          }

LABEL_119:
          v40 = v43;
          v63 = v138;
          v64 = v143;
LABEL_168:
          v93 = v64 + 1;
          v94 = i - 1;
          while (1)
          {
            v95 = *v94;
            if (v95 != 57)
            {
              break;
            }

            v70 = v94-- == v64;
            if (v70)
            {
              v149 = v40 + 1;
              *v64 = 48;
              v96 = 49;
              v94 = v64;
              goto LABEL_223;
            }
          }

          v149 = v40;
          v96 = v95 + 1;
          v93 = v94 + 1;
LABEL_223:
          *v94 = v96;
          i = v93;
          goto LABEL_297;
        }

LABEL_106:
        v149 = v43;
        v63 = v138;
LABEL_107:
        v64 = v143;
        goto LABEL_297;
      }

      v68 = v54 * v53;
      v69 = v47 - v56;
      *v143 = v56 + 48;
      v70 = v69 == 0.0 || v51 == 1;
      if (!v70)
      {
        v71 = 1;
        do
        {
          v72 = v69 * 10.0;
          v73 = v72;
          v69 = v72 - v72;
          if (v69 == 0.0)
          {
            v51 = v71 + 1;
          }

          *i++ = v73 + 48;
          ++v71;
        }

        while (v71 != v51);
      }

      if (v69 > v68 + 0.5)
      {
        goto LABEL_119;
      }

      if (v69 < 0.5 - v68)
      {
        ++i;
        v63 = v138;
        do
        {
          v76 = *(i - 2);
          --i;
        }

        while (v76 == 48);
        v149 = v43;
        goto LABEL_107;
      }
    }

    else
    {
      v65 = v47 + -5.0;
      if (v65 > v52)
      {
        v66 = 0;
        v67 = 0;
        v40 = v43;
        v64 = v143;
        goto LABEL_212;
      }

      if (v65 < -v52)
      {
        v66 = 0;
        v67 = 0;
        v64 = v143;
        goto LABEL_276;
      }
    }
  }

LABEL_132:
  if (v149 <= 14 && (v151 & 0x80000000) == 0)
  {
    v77 = __tens_D2A[v149];
    if ((a2 & 0x80000000) == 0 || v139 >= 1)
    {
      v81 = v139 - 1;
      v64 = v143;
      i = v143 + 1;
      v63 = v138;
      while (1)
      {
        v82 = (v10 / v77);
        v83 = v10 - v82 * v77;
        v84 = v83 < 0.0;
        if (v83 < 0.0)
        {
          v83 = v77 + v83;
        }

        v85 = v82 - v84;
        *(i - 1) = v85 + 48;
        if (v83 == 0.0)
        {
          goto LABEL_297;
        }

        if (!v81)
        {
          if (v150 < 2)
          {
            goto LABEL_167;
          }

          if (!v148)
          {
            goto LABEL_297;
          }

          if (v148 != 2)
          {
LABEL_167:
            if (v83 + v83 <= v77 && (v83 + v83 != v77 || (v85 & 1) == 0))
            {
              goto LABEL_297;
            }
          }

          goto LABEL_168;
        }

        v10 = v83 * 10.0;
        --v81;
        ++i;
      }
    }

    v66 = 0;
    v64 = v143;
    if ((v139 & 0x80000000) == 0)
    {
      v67 = 0;
      if (v10 <= v77 * 5.0)
      {
        goto LABEL_276;
      }

LABEL_212:
      v111 = 0;
      *v64 = 49;
      i = v64 + 1;
      v149 = v40 + 1;
      goto LABEL_291;
    }

    v67 = 0;
LABEL_276:
    v111 = 0;
    v149 = ~a2;
    i = v64;
    goto LABEL_291;
  }

  v135 = v42;
  if (v42)
  {
    v78 = v151 + 1075;
    if (v20)
    {
      v78 = 54 - HIDWORD(v151);
    }

    v79 = v140;
    v80 = v78 + v140;
    v34 += v78;
    v146 = __i2b_D2A(1);
  }

  else
  {
    v146 = 0;
    v79 = v140;
    v80 = v140;
  }

  if (v79 < 1)
  {
    v86 = v135;
  }

  else
  {
    v86 = v135;
    if (v34 >= 1)
    {
      if (v79 >= v34)
      {
        v87 = v34;
      }

      else
      {
        v87 = v79;
      }

      v80 -= v87;
      v79 -= v87;
      v34 -= v87;
    }
  }

  v88 = v6;
  v89 = v34;
  if (v144 >= 1)
  {
    if (v86)
    {
      v146 = __pow5mult_D2A(v146, v144);
      v90 = v79;
      v91 = __mult_D2A(v146, v19);
      __Bfree_D2A(v19);
      v19 = v91;
      v79 = v90;
    }

    else
    {
      v19 = __pow5mult_D2A(v19, v144);
    }
  }

  v97 = __i2b_D2A(1);
  v98 = v137;
  v64 = v143;
  v141 = v79;
  if (v137 >= 1)
  {
    v97 = __pow5mult_D2A(v97, v137);
    v98 = v137;
  }

  v145 = v97;
  v99 = v135;
  if (v150 < 2)
  {
    v99 = 1;
  }

  if (v148 != 1)
  {
    v99 = 0;
  }

  if (HIDWORD(v11) & 0xFFFFF | LODWORD(v11))
  {
    v99 = 0;
  }

  if (*&v11 >> 53)
  {
    v100 = v99;
  }

  else
  {
    v100 = 0;
  }

  v101 = v89 + v100;
  if (v98)
  {
    v102 = 32 - __hi0bits_D2A(*&v97[4 * *(v97 + 5) + 20]);
  }

  else
  {
    LOBYTE(v102) = 1;
  }

  v6 = v88;
  v103 = v80 + v100;
  v104 = v102 + v101;
  if ((v104 & 0x1F) != 0)
  {
    v105 = 32 - (v104 & 0x1F);
  }

  else
  {
    v105 = 0;
  }

  if (v105 < 5)
  {
    v66 = v146;
    if (v105 != 4)
    {
      v107 = v105 + 28;
      v103 += v107;
      v141 += v107;
      v101 += v107;
    }
  }

  else
  {
    v106 = v105 - 4;
    v103 += v106;
    v141 += v106;
    v101 += v106;
    v66 = v146;
  }

  if (v103 >= 1)
  {
    v19 = __lshift_D2A(v19, v103);
  }

  if (v101 >= 1)
  {
    v145 = __lshift_D2A(v145, v101);
  }

  v108 = v150;
  v109 = v136;
  if (v28 < 0x17)
  {
    v109 = v139;
    goto LABEL_203;
  }

  if ((__cmp_D2A(v19, v145) & 0x80000000) == 0)
  {
    v109 = v139;
    v108 = v150;
LABEL_203:
    v110 = v135;
    goto LABEL_204;
  }

  --v149;
  v19 = __multadd_D2A(v19, 10, 0);
  v110 = v135;
  if (v135)
  {
    v66 = __multadd_D2A(v66, 10, 0);
    v110 = v135;
  }

  v108 = v150;
LABEL_204:
  if (v109 <= 0 && (v108 == 5 || v108 == 3))
  {
    if (v109 < 0)
    {
      v67 = v145;
    }

    else
    {
      v67 = __multadd_D2A(v145, 5, 0);
      v112 = __cmp_D2A(v19, v67);
      v40 = v149;
      if (v112 > 0)
      {
        goto LABEL_212;
      }
    }

    goto LABEL_276;
  }

  if (!v110)
  {
    v147 = v66;
    if (v109 <= 1)
    {
      v113 = 1;
    }

    else
    {
      v113 = v109;
    }

    v114 = v113 - 1;
    i = v143 + 1;
    v67 = v145;
    while (1)
    {
      v115 = __quorem_D2A(v19, v145) + 48;
      *(i - 1) = v115;
      if (!v19[6] && v19[5] < 2)
      {
        break;
      }

      if (!v114)
      {
        v111 = 0;
        v116 = v148;
        goto LABEL_266;
      }

      v19 = __multadd_D2A(v19, 10, 0);
      --v114;
      ++i;
    }

    v111 = 0;
    goto LABEL_278;
  }

  if (v141 < 1)
  {
    v111 = v66;
  }

  else
  {
    v111 = __lshift_D2A(v66, v141);
    v66 = v111;
  }

  v142 = v6;
  if (v100)
  {
    v117 = __Balloc_D2A(*(v111 + 2));
    j__mkdtempat_np(v117 + 16, v111 + 16);
    v66 = __lshift_D2A(v117, 1);
  }

  v118 = LOBYTE(v11) & 1;
  v119 = v109 - 1;
  v120 = v145;
  for (i = v143 + 1; ; ++i)
  {
    v121 = __quorem_D2A(v19, v120);
    v122 = __cmp_D2A(v19, v111);
    v123 = __diff_D2A(v120, v66);
    v147 = v66;
    if (v123[4])
    {
      v124 = 1;
    }

    else
    {
      v124 = __cmp_D2A(v19, v123);
    }

    v115 = v121 + 48;
    __Bfree_D2A(v123);
    v116 = v148;
    if (!v118 && v150 != 1 && !v124 && v148 >= 1)
    {
      if (v121 == 9)
      {
        v6 = v142;
        v64 = v143;
        v127 = v149;
        v67 = v145;
        v66 = v147;
        goto LABEL_285;
      }

      v130 = v121 + 49;
      if (v122 <= 0)
      {
        v130 = v121 + 48;
      }

      *(i - 1) = v130;
      v6 = v142;
      v64 = v143;
      v67 = v145;
      v66 = v147;
      goto LABEL_291;
    }

    if ((v122 & 0x80000000) == 0 && (v150 == 1 || v122 | v118))
    {
      if (v124 < 1)
      {
        goto LABEL_247;
      }

      v6 = v142;
      v64 = v143;
      if (!v148)
      {
        goto LABEL_260;
      }

      v67 = v145;
      if (v121 == 9)
      {
        goto LABEL_284;
      }

      *(i - 1) = v121 + 49;
LABEL_278:
      v66 = v147;
      goto LABEL_291;
    }

    if (!v19[6] && v19[5] < 2)
    {
      goto LABEL_259;
    }

    if (v150 < 2)
    {
      goto LABEL_253;
    }

    if (v148 != 2)
    {
      if (v148)
      {
LABEL_253:
        if (v124 >= 1)
        {
          v19 = __lshift_D2A(v19, 1);
          v67 = v145;
          v126 = __cmp_D2A(v19, v145);
          v6 = v142;
          v64 = v143;
          if (v126 <= 0 && (v126 || (v121 & 1) == 0))
          {
            goto LABEL_261;
          }

          if (v121 != 9)
          {
            v115 = v121 + 49;
LABEL_261:
            *(i - 1) = v115;
            goto LABEL_278;
          }

LABEL_284:
          v127 = v149;
          v66 = v147;
LABEL_285:
          *(i - 1) = 57;
LABEL_286:
          v131 = i;
          v132 = i;
          while (1)
          {
            v134 = *--v132;
            v133 = v134;
            if (v134 != 57)
            {
              break;
            }

            v131 = v132;
            if (v132 == v64)
            {
              v149 = v127 + 1;
              *v64 = 49;
              i = v64 + 1;
              goto LABEL_291;
            }
          }

          *(v131 - 1) = v133 + 1;
          i = v131;
          goto LABEL_291;
        }
      }

LABEL_259:
      v6 = v142;
      v64 = v143;
LABEL_260:
      v67 = v145;
      goto LABEL_261;
    }

LABEL_247:
    *(i - 1) = v115;
    if (!v119)
    {
      break;
    }

    v19 = __multadd_D2A(v19, 10, 0);
    v120 = v145;
    if (v111 == v147)
    {
      v125 = __multadd_D2A(v147, 10, 0);
      v111 = v125;
    }

    else
    {
      v111 = __multadd_D2A(v111, 10, 0);
      v125 = __multadd_D2A(v147, 10, 0);
    }

    v66 = v125;
    --v119;
  }

  v6 = v142;
  v64 = v143;
  v67 = v145;
LABEL_266:
  if (v116)
  {
    if (v116 == 2 || (v19 = __lshift_D2A(v19, 1), v128 = __cmp_D2A(v19, v67), v128 > 0) || !v128 && (v115 & 1) != 0)
    {
      v127 = v149;
      v66 = v147;
      goto LABEL_286;
    }
  }

  ++i;
  v66 = v147;
  do
  {
    v129 = *(i - 2);
    --i;
  }

  while (v129 == 48);
LABEL_291:
  __Bfree_D2A(v67);
  if (v66)
  {
    if (v111 && v111 != v66)
    {
      __Bfree_D2A(v111);
    }

    __Bfree_D2A(v66);
  }

  v63 = v138;
LABEL_297:
  __Bfree_D2A(v19);
  *i = 0;
  *v63 = v149 + 1;
  if (v6)
  {
    *v6 = i;
  }

  return v64;
}

int uuid_parse(const uuid_string_t in, uuid_t uu)
{
  if (j__strsignal_r(in, uu, v2) != 36)
  {
    return -1;
  }

  v5 = 0;
  do
  {
    if (v5 > 0x24)
    {
      goto LABEL_11;
    }

    if (((1 << v5) & 0x842100) != 0)
    {
      if (in[v5] != 45)
      {
        return -1;
      }

      goto LABEL_13;
    }

    if (v5 == 36)
    {
      v6 = in[v5];
      if (!in[v5])
      {
        break;
      }

      if ((v6 & 0x80) != 0)
      {
        return -1;
      }
    }

    else
    {
LABEL_11:
      v6 = in[v5];
      if ((v6 & 0x80) != 0)
      {
        return -1;
      }
    }

    if ((_DefaultRuneLocale.__runetype[v6] & 0x10000) == 0)
    {
      return -1;
    }

LABEL_13:
    ++v5;
  }

  while (v5 != 37);
  v13 = strtoul(in, 0, 16);
  v14 = strtoul(in + 9, 0, 16);
  v15 = strtoul(in + 14, 0, 16);
  v16 = strtoul(in + 19, 0, 16);
  v7 = in + 24;
  v12 = 0;
  for (i = 10; i != 16; ++i)
  {
    v9 = *v7;
    v7 += 2;
    *__str = v9;
    *(&v13 + i) = strtoul(__str, 0, 16);
  }

  uuid_pack(&v13, uu);
  return 0;
}

unint64_t strtoul(const char *__str, char **__endptr, int __base)
{
  v3 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &__global_locale;
  }

  return strtoul_l(__str, __endptr, __base, v5);
}

unint64_t strtoul_l(const char *a1, char **a2, int a3, locale_t a4)
{
  v6 = &__global_locale;
  if (a4 == -1)
  {
    v7 = &__global_locale;
  }

  else
  {
    v7 = a4;
  }

  if (!a4)
  {
    v7 = __c_locale;
  }

  if (v7 != -1)
  {
    v6 = v7;
  }

  if (!v7)
  {
    v6 = __c_locale;
  }

  v8 = a1;
  do
  {
    v10 = *v8++;
    v9 = v10;
    if (v10 < 0)
    {
      runetype = (*(*(v6 + 166) + 120) + 60);
    }

    else
    {
      runetype = _DefaultRuneLocale.__runetype;
    }
  }

  while ((runetype[v9] & 0x4000) != 0);
  if (v9 == 43 || v9 == 45)
  {
    v13 = *v8++;
    v12 = v13;
  }

  else
  {
    v12 = v9;
  }

  if ((a3 & 0xFFFFFFEF) != 0 || v12 != 48)
  {
    v16 = a3 == 0;
    if (v12 != 48)
    {
      v17 = 10;
      goto LABEL_30;
    }
  }

  else
  {
    if ((*v8 | 0x20) == 0x78)
    {
      v12 = v8[1];
      if ((v12 - 48) < 0xAu || (v14 = *(v8 + 1) - 65, v14 <= 0x25) && ((1 << v14) & 0x3F0000003FLL) != 0)
      {
        v8 += 2;
        v15 = 16;
        goto LABEL_35;
      }
    }

    v16 = a3 == 0;
    v12 = 48;
  }

  v17 = 8;
LABEL_30:
  if (v16)
  {
    v15 = v17;
  }

  else
  {
    v15 = a3;
  }

  if (v15 - 37 < 0xFFFFFFDD)
  {
    v18 = 0;
    goto LABEL_55;
  }

LABEL_35:
  v18 = 0;
  v19 = 0;
  v20 = 0xFFFFFFFFFFFFFFFFLL / v15;
  while (1)
  {
    v21 = v12 - 48;
    if ((v12 - 48) >= 0xAu)
    {
      if ((v12 - 65) > 0x19u)
      {
        if ((v12 - 97) > 0x19u)
        {
          break;
        }

        v21 = v12 - 87;
      }

      else
      {
        v21 = v12 - 55;
      }
    }

    if (v15 <= v21)
    {
      break;
    }

    v22 = -1;
    if ((v19 & 0x80000000) == 0 && v18 <= v20)
    {
      if (v18 == v20 && v21 > ~(v20 * v15))
      {
        v18 = 0xFFFFFFFFFFFFFFFFLL / v15;
      }

      else
      {
        v18 = v18 * v15 + v21;
        v22 = 1;
      }
    }

    v23 = *v8++;
    v12 = v23;
    v19 = v22;
  }

  if (v19 < 0)
  {
    v27 = __error();
    v24 = 0;
    *v27 = 34;
    v18 = -1;
    if (!a2)
    {
      return v18;
    }

    goto LABEL_56;
  }

  if (!v19)
  {
LABEL_55:
    *__error() = 22;
    v24 = 1;
    if (!a2)
    {
      return v18;
    }

    goto LABEL_56;
  }

  v24 = 0;
  if (v9 == 45)
  {
    v18 = -v18;
  }

  if (a2)
  {
LABEL_56:
    v25 = (v8 - 1);
    if (v24)
    {
      v25 = a1;
    }

    *a2 = v25;
  }

  return v18;
}

void __Bfree_D2A(int *a1)
{
  if (a1)
  {
    if (a1[2] < 10)
    {
      if (gdtoa_tsd_key)
      {
        v2 = 14;
      }

      else
      {
        v2 = -1;
      }

      v3 = pthread_getspecific(v2);
      v4 = a1[2];
      *a1 = v3[v4];
      v3[v4] = a1;
    }

    else
    {

      free(a1);
    }
  }
}

_DWORD *__d2b_D2A(_DWORD *a1, _DWORD *a2, double a3)
{
  v6 = 1;
  v7 = __Balloc_D2A(1);
  v8 = (*&a3 >> 52) & 0x7FFLL;
  if (v8)
  {
    v9 = HIDWORD(a3) & 0xFFFFF | 0x100000;
  }

  else
  {
    v9 = HIDWORD(a3) & 0xFFFFF;
  }

  v17 = v9;
  v18 = LODWORD(a3);
  if (LODWORD(a3))
  {
    v10 = __lo0bits_D2A(&v18);
    v11 = v9 << -v10;
    v12 = v9 >> v10;
    if (!v10)
    {
      v11 = 0;
    }

    v7[6] = v18 | v11;
    v7[7] = v12;
    if (v12)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    v7[5] = v6;
  }

  else
  {
    v13 = __lo0bits_D2A(&v17);
    v14 = v17;
    v7[5] = 1;
    v7[6] = v14;
    v10 = v13 + 32;
  }

  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) >> 52)
  {
    *a1 = v8 + v10 - 1075;
    v15 = 53 - v10;
  }

  else
  {
    *a1 = v10 - 1074;
    v15 = 32 * v6 - __hi0bits_D2A(v7[v6 + 5]);
  }

  *a2 = v15;
  return v7;
}

uint64_t __lo0bits_D2A(unsigned int *a1)
{
  v1 = *a1;
  if ((*a1 & 7) != 0)
  {
    if (v1)
    {
      return 0;
    }

    v2 = v1 >> 2;
    if ((v1 & 2) != 0)
    {
      v2 = v1 >> 1;
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    if ((v1 & 0xFFF8) == 0)
    {
      v1 >>= 16;
    }

    v4 = (16 * ((*a1 & 0xFFF8) == 0)) | 8;
    if (v1)
    {
      v4 = 16 * ((*a1 & 0xFFF8) == 0);
    }

    else
    {
      v1 >>= 8;
    }

    v5 = v4 | 4;
    if ((v1 & 0xF) != 0)
    {
      v5 = v4;
      v6 = v1;
    }

    else
    {
      v6 = v1 >> 4;
    }

    LODWORD(v3) = v5 | 2;
    if ((v6 & 3) != 0)
    {
      v3 = v5;
    }

    else
    {
      v3 = v3;
    }

    if ((v6 & 3) != 0)
    {
      v2 = v6;
    }

    else
    {
      v2 = v6 >> 2;
    }

    if ((v2 & 1) == 0)
    {
      if (!v2)
      {
        return 32;
      }

      v3 = (v3 + 1);
      v2 >>= 1;
    }
  }

  *a1 = v2;
  return v3;
}

_DWORD *__Balloc_D2A(int a1)
{
  if (gdtoa_tsd_key)
  {
    v2 = 14;
  }

  else
  {
    pthread_mutex_lock(&gdtoa_tsd_lock);
    if ((gdtoa_tsd_key & 1) == 0)
    {
      gdtoa_tsd_key = 1;
      pthread_key_init_np();
    }

    pthread_mutex_unlock(&gdtoa_tsd_lock);
    if (gdtoa_tsd_key)
    {
      v2 = 14;
    }

    else
    {
      v2 = -1;
    }
  }

  v3 = pthread_getspecific(v2);
  if (!v3)
  {
    v3 = malloc_type_malloc(0x50uLL, 0x2004093837F09uLL);
    *v3 = 0u;
    v3[1] = 0u;
    v3[2] = 0u;
    v3[3] = 0u;
    v3[4] = 0u;
    if (gdtoa_tsd_key)
    {
      v4 = 14;
    }

    else
    {
      v4 = -1;
    }

    pthread_setspecific(v4, v3);
  }

  if (a1 <= 9 && (result = *(v3 + a1)) != 0)
  {
    *(v3 + a1) = *result;
  }

  else
  {
    result = malloc_type_malloc(4 * (1 << a1) + 28, 0x1020040FA731AC5uLL);
    result[2] = a1;
    result[3] = 1 << a1;
  }

  *(result + 2) = 0;
  return result;
}

_DWORD *__rv_alloc_D2A(unsigned int a1)
{
  if (a1 >= 0x1C)
  {
    v1 = 0;
    v2 = 4;
    do
    {
      ++v1;
      v2 *= 2;
    }

    while (v2 + 24 <= a1);
  }

  else
  {
    v1 = 0;
  }

  v3 = __Balloc_D2A(v1);
  *v3 = v1;
  return v3 + 1;
}

_DWORD *__i2b_D2A(int a1)
{
  result = __Balloc_D2A(1);
  result[5] = 1;
  result[6] = a1;
  return result;
}

char *__memcpy_chk(int a1, char *a2, unint64_t a3, unint64_t a4)
{
  if (a4 < a3)
  {
    __chk_fail_overflow();
  }

  return j__mkdtempat_np(a1, a2);
}

void *__cdecl rb_tree_find_node(rb_tree_t *a1, const void *a2)
{
  v2 = a1->opaque[0];
  if (!a1->opaque[0])
  {
    return 0;
  }

  v4 = a1->opaque[1];
  v5 = v4[1];
  while (1)
  {
    v6 = v2 - v4[2];
    v7 = v5(v4[3], v6, a2);
    if (!v7)
    {
      break;
    }

    v2 = v2[v7 >> 31];
    if (!v2)
    {
      return 0;
    }
  }

  return v6;
}

_DWORD *__nrv_alloc_D2A(unsigned __int8 *a1, void *a2, unsigned int a3)
{
  result = __rv_alloc_D2A(a3);
  v6 = *a1;
  *result = v6;
  v7 = result;
  if (v6)
  {
    v8 = a1 + 1;
    v7 = result;
    do
    {
      v9 = *v8++;
      *(v7 + 1) = v9;
      v7 = (v7 + 1);
    }

    while (v9);
  }

  if (a2)
  {
    *a2 = v7;
  }

  return result;
}

void __freedtoa(uint64_t a1)
{
  v2 = *(a1 - 4);
  v1 = (a1 - 4);
  v1[2] = v2;
  v1[3] = 1 << v2;
  __Bfree_D2A(v1);
}

int uuid_compare(const uuid_t uu1, const uuid_t uu2)
{
  v11 = 0;
  v12 = 0;
  v9 = 0;
  v10 = 0;
  uuid_unpack(uu1, &v11);
  uuid_unpack(uu2, &v9);
  v3 = v11 >= v9;
  if (v11 == v9 && (v3 = WORD2(v11) >= WORD2(v9), WORD2(v11) == WORD2(v9)) && (v3 = HIWORD(v11) >= HIWORD(v9), HIWORD(v11) == HIWORD(v9)) && (v3 = v12 >= v10, v12 == v10))
  {
    v4 = bswap64(*(&v12 + 2) | (HIWORD(v12) << 32));
    v5 = bswap64(*(&v10 + 2) | (HIWORD(v10) << 32));
    v3 = v4 >= v5;
    v6 = v4 > v5;
    v7 = !v3;
    return v6 - v7;
  }

  else if (v3)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

int strcasecmp(const char *a1, const char *a2)
{
  v2 = __locale_key;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v2);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &__global_locale;
  }

  return strcasecmp_l(a1, a2, v4);
}

int strcasecmp_l(const char *a1, const char *a2, locale_t a3)
{
  v5 = &__global_locale;
  if (a3 != -1)
  {
    v5 = a3;
  }

  if (a3)
  {
    v6 = v5;
  }

  else
  {
    v6 = &__c_locale;
  }

  while (1)
  {
    v7 = *a1;
    v8 = v7 < 0 ? ___tolower_l(*a1, v6) : _DefaultRuneLocale.__maplower[v7];
    v9 = *a2;
    v10 = v9 < 0 ? ___tolower_l(*a2, v6) : _DefaultRuneLocale.__maplower[v9];
    if (v8 != v10)
    {
      break;
    }

    ++a2;
    if (!*a1++)
    {
      return 0;
    }
  }

  v13 = *a1;
  if (v13 < 0)
  {
    v14 = ___tolower_l(*a1, v6);
  }

  else
  {
    v14 = _DefaultRuneLocale.__maplower[v13];
  }

  v15 = *a2;
  if (v15 < 0)
  {
    v16 = ___tolower_l(*a2, v6);
  }

  else
  {
    v16 = _DefaultRuneLocale.__maplower[v15];
  }

  return v14 - v16;
}

__darwin_ct_rune_t __tolower(__darwin_ct_rune_t a1)
{
  if (a1 >= 0x100)
  {
    return ___tolower(a1);
  }

  v2 = __locale_key;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v2);
  if (!v3)
  {
    v3 = &__global_locale;
  }

  return *(*(v3[166] + 120) + 4 * a1 + 1084);
}

uint64_t __sfp(int a1)
{
  pthread_once(&__sdidinit, __sinit);
  if (a1)
  {
    add_explicit = atomic_fetch_add_explicit(&__scounted, 1uLL, memory_order_relaxed);
    if (add_explicit >= sysconf(26))
    {
      atomic_fetch_add_explicit(&__scounted, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
      v3 = __error();
      v4 = 0;
      v5 = 24;
      goto LABEL_15;
    }

    if (add_explicit <= -2)
    {
      atomic_fetch_add_explicit(&__scounted, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
      v3 = __error();
      v4 = 0;
      v5 = 84;
LABEL_15:
      *v3 = v5;
      return v4;
    }
  }

  pthread_mutex_lock(&filelist_lock);
  v6 = &__sglue;
  do
  {
    v7 = *(v6 + 2);
    if (v7 >= 1)
    {
      v4 = v6[2];
      v8 = v7 + 1;
      while (*(v4 + 16))
      {
        v4 += 152;
        if (--v8 <= 1)
        {
          goto LABEL_10;
        }
      }

      goto LABEL_13;
    }

LABEL_10:
    v6 = *v6;
  }

  while (v6);
  pthread_mutex_unlock(&filelist_lock);
  v9 = moreglue(1);
  if (v9)
  {
    v10 = v9;
    pthread_mutex_lock(&filelist_lock);
    *lastglue = v10;
    lastglue = v10;
    v4 = v10[2];
LABEL_13:
    *(v4 + 16) = 1;
    pthread_mutex_unlock(&filelist_lock);
    *(v4 + 24) = 0;
    *(v4 + 32) = 0;
    *(v4 + 40) = 0;
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 18) = -1;
    *(v4 + 88) = 0;
    *(v4 + 96) = 0;
    *(v4 + 120) = 0;
    *(v4 + 128) = 0;
    v11 = *(v4 + 104);
    *v11 = 0;
    *(v11 + 8) = 850045858;
    *(v11 + 16) = 0u;
    *(v11 + 32) = 0u;
    *(v11 + 48) = 0u;
    *(v11 + 64) = 0;
    *(*(v4 + 104) + 72) &= 0xF8u;
    v12 = *(v4 + 104);
    v12[5] = 0u;
    v12[6] = 0u;
    v12[7] = 0u;
    v12[8] = 0u;
    v12[9] = 0u;
    v12[10] = 0u;
    v12[11] = 0u;
    v12[12] = 0u;
    *(*(v4 + 104) + 72) &= ~8u;
    *(*(v4 + 104) + 72) = *(*(v4 + 104) + 72) & 0xF7 | (8 * (a1 != 0));
    return v4;
  }

  v4 = 0;
  if (a1)
  {
    atomic_fetch_add_explicit(&__scounted, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
  }

  return v4;
}

uint64_t __sflags(unsigned __int8 *a1, int *a2)
{
  v4 = a1 + 1;
  v3 = *a1;
  if (v3 == 97)
  {
    v5 = 520;
LABEL_7:
    v6 = 1;
    result = 8;
    goto LABEL_8;
  }

  if (v3 != 114)
  {
    if (v3 != 119)
    {
      v12 = __error();
      result = 0;
      *v12 = 22;
      return result;
    }

    v5 = 1536;
    goto LABEL_7;
  }

  v6 = 0;
  v5 = 0;
  result = 4;
LABEL_8:
  v8 = 1;
  if (a1[1] == 98)
  {
    v8 = 2;
    v4 = a1 + 2;
  }

  v9 = a1[v8];
  if (v9 == 43)
  {
    v10 = 1;
    if (v4[1] == 98)
    {
      v10 = 2;
    }

    v9 = v4[v10];
    v6 = 2;
    result = 16;
  }

  if (v9 == 120)
  {
    v11 = v5 | 0x800;
  }

  else
  {
    v11 = v5;
  }

  *a2 = v11 | v6;
  return result;
}

uint64_t sysconf(int a1)
{
  v17.rlim_cur = 0;
  v17.rlim_max = 0;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  v1 = "/var/db/timezone/zoneinfo";
  rlim_cur = 100;
  switch(a1)
  {
    case 1:
      v18[0] = 1;
      v3 = 8;
      goto LABEL_42;
    case 2:
      if (getrlimit(7, &v17))
      {
        goto LABEL_2;
      }

      rlim_cur = v17.rlim_cur;
      if (v17.rlim_cur == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_2;
      }

      if ((v17.rlim_cur & 0x8000000000000000) == 0)
      {
        return rlim_cur;
      }

      v4 = __error();
      v5 = 84;
LABEL_19:
      *v4 = v5;
LABEL_2:
      rlim_cur = -1;
      break;
    case 3:
      return rlim_cur;
    case 4:
      v18[0] = 1;
      v3 = 18;
      goto LABEL_42;
    case 5:
    case 26:
      if (getrlimit(8, &v17))
      {
        goto LABEL_2;
      }

      if ((v17.rlim_cur & 0x8000000000000000) != 0)
      {
        return -1;
      }

      else
      {
        return v17.rlim_cur;
      }

    case 6:
    case 17:
    case 18:
    case 19:
    case 20:
    case 22:
    case 23:
    case 24:
    case 25:
    case 32:
    case 38:
    case 47:
    case 76:
    case 77:
    case 78:
    case 79:
    case 82:
    case 83:
    case 90:
    case 91:
    case 96:
    case 118:
      return 200112;
    case 7:
      *v18 = 0x1400000001;
      v15 = 4;
      if (sysctl(v18, 2u, &v14, &v15, 0, 0) == -1)
      {
        goto LABEL_2;
      }

      v9 = v14;
      v10 = v14 == 0;
LABEL_52:
      if (v10)
      {
        return -1;
      }

      return v9;
    case 8:
      v18[0] = 1;
      v3 = 17;
      goto LABEL_42;
    case 9:
    case 11:
      return 99;
    case 10:
    case 15:
      return 2048;
    case 12:
      return 1000;
    case 13:
      return 2;
    case 14:
    case 120:
    case 130:
      return 32;
    case 16:
    case 72:
    case 73:
      return 255;
    case 21:
    case 28:
    case 30:
    case 31:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 39:
    case 40:
    case 41:
    case 44:
    case 45:
    case 46:
    case 48:
    case 51:
    case 52:
    case 59:
    case 60:
    case 61:
    case 62:
    case 63:
    case 64:
    case 65:
    case 66:
    case 67:
    case 68:
    case 74:
    case 75:
    case 80:
    case 81:
    case 84:
    case 87:
    case 88:
    case 89:
    case 92:
    case 94:
    case 95:
    case 97:
    case 98:
    case 99:
    case 100:
    case 102:
    case 103:
    case 104:
    case 110:
    case 111:
    case 112:
    case 114:
    case 119:
    case 122:
    case 123:
      goto LABEL_2;
    case 27:
      goto LABEL_29;
    case 29:
      return getpagesize();
    case 42:
    case 43:
      v18[0] = 1;
      v3 = 46;
      goto LABEL_42;
    case 49:
      v15 = 4;
      v11 = sysctlbyname("kern.sysv.semmns", &v14, &v15, 0, 0);
      v9 = v14;
      v10 = v11 == -1;
      goto LABEL_52;
    case 50:
      return 0x7FFFLL;
    case 56:
      return 1024;
    case 57:
    case 58:
      v18[0] = 6;
      v3 = 3;
LABEL_42:
      v18[1] = v3;
      v15 = 4;
      if (sysctl(v18, 2u, &v14, &v15, 0, 0) == -1)
      {
        goto LABEL_2;
      }

      rlim_cur = v14;
      break;
    case 69:
    case 70:
    case 71:
      return 4096;
    case 85:
    case 121:
    case 126:
      return 4;
    case 86:
      return 512;
    case 93:
      return 0x4000;
    case 101:
      v1 = "/";
LABEL_29:
      v8 = *__error();
      *__error() = 0;
      rlim_cur = pathconf(v1, 4);
      if (rlim_cur == -1 && *__error())
      {
        goto LABEL_2;
      }

      *__error() = v8;
      break;
    case 105:
    case 106:
    case 108:
    case 109:
    case 115:
    case 124:
    case 125:
      return 1;
    case 107:
      return 0x7FFFFFFFLL;
    case 113:
      v6 = *__error();
      v15 = 8;
      v7 = sysctlbyname("kern.sysv.shmmin", &v16, &v15, 0, 0);
      *__error() = v6;
      if (v7 == -1)
      {
        return -1;
      }

      else
      {
        return 1;
      }

    case 116:
      return 600;
    case 127:
      return 30;
    case 128:
    case 129:
      return 8;
    case 131:
      return 128;
    case 200:
      *v18 = 0;
      v13 = 0;
      v15 = 8;
      if (sysctlbyname("hw.memsize", v18, &v15, 0, 0) == -1)
      {
        goto LABEL_2;
      }

      v15 = 8;
      if (sysctlbyname("hw.pagesize", &v13, &v15, 0, 0) == -1)
      {
        goto LABEL_2;
      }

      rlim_cur = *v18 / v13;
      break;
    default:
      v4 = __error();
      v5 = 22;
      goto LABEL_19;
  }

  return rlim_cur;
}

char *__pow5mult_D2A(char *a1, int a2)
{
  v3 = a1;
  if ((a2 & 3) != 0)
  {
    v3 = __multadd_D2A(a1, __pow5mult_D2A_p05[(a2 & 3) - 1], 0);
  }

  if (a2 >= 4)
  {
    v5 = a2 >> 2;
    v6 = p5s;
    if (p5s)
    {
      goto LABEL_10;
    }

    os_unfair_lock_lock(&unk_1ED3F1B30);
    v6 = p5s;
    if (!p5s)
    {
      v6 = __Balloc_D2A(1);
      *(v6 + 5) = 0x27100000001;
      p5s = v6;
LABEL_8:
      *v6 = 0;
    }

LABEL_9:
    os_unfair_lock_unlock(&unk_1ED3F1B30);
    while (1)
    {
LABEL_10:
      v7 = v6;
      if (v5)
      {
        v8 = __mult_D2A(v3, v6);
        __Bfree_D2A(v3);
        v3 = v8;
      }

      if (v5 < 2)
      {
        break;
      }

      v5 >>= 1;
      v6 = *v7;
      if (!*v7)
      {
        os_unfair_lock_lock(&unk_1ED3F1B30);
        v6 = *v7;
        if (*v7)
        {
          goto LABEL_9;
        }

        v6 = __mult_D2A(v7, v7);
        *v7 = v6;
        goto LABEL_8;
      }
    }
  }

  return v3;
}

char *__multadd_D2A(char *a1, int a2, int a3)
{
  v3 = a1;
  v4 = *(a1 + 5);
  v5 = a3;
  if (v4 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = *(a1 + 5);
  }

  v7 = 24;
  do
  {
    v8 = v5 + *&a1[v7] * a2;
    v5 = HIDWORD(v8);
    *&a1[v7] = v8;
    v7 += 4;
    --v6;
  }

  while (v6);
  if (v5)
  {
    if (v4 >= *(a1 + 3))
    {
      v9 = __Balloc_D2A(*(a1 + 2) + 1);
      j__mkdtempat_np(v9 + 16, v3 + 16);
      __Bfree_D2A(v3);
      v3 = v9;
    }

    *&v3[4 * v4 + 24] = v5;
    *(v3 + 5) = v4 + 1;
  }

  return v3;
}

_DWORD *__lshift_D2A(int *a1, int a2)
{
  v2 = a2;
  v4 = a2 >> 5;
  v5 = a1[5] + (a2 >> 5);
  v6 = a1[2];
  v7 = a1[3];
  if (v5 >= v7)
  {
    do
    {
      ++v6;
      v8 = v5 < 2 * v7;
      v7 *= 2;
    }

    while (!v8);
  }

  v9 = __Balloc_D2A(v6);
  v10 = v9 + 6;
  if (v4 >= 1)
  {
    MEMORY[0x193AD5FD0](v10, 4 * v4);
    v10 = &v9[v4 - 1 + 7];
  }

  v11 = a1 + 6;
  v12 = &a1[a1[5] + 6];
  v13 = v2 & 0x1F;
  if ((v2 & 0x1F) != 0)
  {
    v14 = 0;
    do
    {
      *v10++ = (*v11 << v13) | v14;
      v15 = *v11++;
      v14 = v15 >> (32 - v13);
    }

    while (v11 < v12);
    *v10 = v14;
    if (v14)
    {
      ++v5;
    }
  }

  else
  {
    do
    {
      v16 = *v11++;
      *v10++ = v16;
    }

    while (v11 < v12);
  }

  v9[5] = v5;
  __Bfree_D2A(a1);
  return v9;
}

uint64_t __hi0bits_D2A(unsigned int a1)
{
  v1 = a1 << 16;
  if (a1 >= 0x10000)
  {
    v1 = a1;
  }

  v2 = v1 << 8;
  if (HIBYTE(v1))
  {
    v2 = v1;
    v3 = 16 * (a1 < 0x10000);
  }

  else
  {
    v3 = (16 * (a1 < 0x10000)) | 8;
  }

  v4 = v2 >> 28;
  if (!(v2 >> 28))
  {
    v2 *= 16;
  }

  if (!v4)
  {
    v3 |= 4u;
  }

  v5 = v2 >> 30;
  if (!(v2 >> 30))
  {
    v2 *= 4;
  }

  if (v5)
  {
    result = v3;
  }

  else
  {
    result = v3 | 2;
  }

  if ((v2 & 0x80000000) == 0)
  {
    if (v2 >> 30)
    {
      return (result + 1);
    }

    else
    {
      return 32;
    }
  }

  return result;
}

uint64_t __quorem_D2A(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 20);
  if (*(a1 + 20) < v2)
  {
    return 0;
  }

  v5 = (a2 + 24);
  v6 = v2 - 1;
  v7 = (a2 + 24 + 4 * (v2 - 1));
  v8 = (a1 + 24);
  v9 = a1 + 4 * (v2 - 1);
  v10 = *(v9 + 24);
  v11 = *v7 + 1;
  v3 = v10 / v11;
  if (v11 <= v10)
  {
    v12 = 0;
    v13 = 0;
    v14 = 4 * v6;
    v15 = (a1 + 24);
    v16 = (a2 + 24);
    do
    {
      v17 = *v16++;
      v18 = v13 + v17 * v3;
      v13 = HIDWORD(v18);
      v19 = v12 - v18 + *v15;
      v12 = v19 >> 32;
      *v15++ = v19;
    }

    while (v16 <= v7);
    if (!*(v9 + 24))
    {
      if (v2 >= 3)
      {
        do
        {
          if (*(a1 + 20 + v14))
          {
            break;
          }

          --v6;
          v20 = v14 + 20;
          v14 -= 4;
        }

        while (v20 > 28);
      }

      *(a1 + 20) = v6;
    }
  }

  if ((__cmp_D2A(a1, a2) & 0x80000000) == 0)
  {
    v21 = 0;
    do
    {
      v22 = *v5++;
      v23 = v21 - v22 + *v8;
      v21 = v23 >> 32;
      *v8++ = v23;
    }

    while (v5 <= v7);
    v3 = (v3 + 1);
    if (!*(a1 + 4 * v6 + 24))
    {
      if (v6 >= 2)
      {
        v24 = 4 * v6;
        do
        {
          if (*(a1 + 20 + v24))
          {
            break;
          }

          --v6;
          v25 = v24 + 20;
          v24 -= 4;
        }

        while (v25 > 28);
      }

      *(a1 + 20) = v6;
    }
  }

  return v3;
}

uint64_t __cmp_D2A(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 20);
  v3 = (*(a1 + 20) - v2);
  if (!v3)
  {
    for (i = 4 * v2 + 20; ; i -= 4)
    {
      v5 = *(a1 + i);
      v6 = *(a2 + i);
      if (v5 != v6)
      {
        break;
      }

      v7 = i + 4;
      if (v7 <= 28)
      {
        return 0;
      }
    }

    if (v5 < v6)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 1;
    }
  }

  return v3;
}

_DWORD *__mult_D2A(_DWORD *a1, _DWORD *a2)
{
  v2 = a1[5];
  v3 = a2[5];
  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (v2 >= v3)
  {
    v5 = a2;
  }

  else
  {
    v5 = a1;
  }

  v6 = v4[5];
  v7 = v5[5];
  v8 = v7 + v6;
  if (v7 + v6 <= v4[3])
  {
    v9 = v4[2];
  }

  else
  {
    v9 = v4[2] + 1;
  }

  v10 = __Balloc_D2A(v9);
  v11 = v10;
  v12 = v10 + 6;
  v13 = v8;
  if (v8 >= 1)
  {
    v14 = &v10[v13 + 6];
    if (v14 <= (v10 + 7))
    {
      v14 = (v10 + 7);
    }

    MEMORY[0x193AD5FD0](v10 + 6, ((v14 - v10 - 25) & 0xFFFFFFFFFFFFFFFCLL) + 4);
  }

  if (v7 >= 1)
  {
    v15 = v5 + 6;
    do
    {
      v17 = *v15++;
      v16 = v17;
      if (v17)
      {
        v18 = 0;
        v19 = 0;
        v20 = v4 + 6;
        do
        {
          v21 = *v20++;
          v22 = v19 + v12[v18] + v21 * v16;
          v19 = HIDWORD(v22);
          v12[v18++] = v22;
        }

        while (v20 < &v4[v6 + 6]);
        v12[v18] = HIDWORD(v22);
      }

      ++v12;
    }

    while (v15 < &v5[v7 + 6]);
  }

  if (v8 >= 1)
  {
    v23 = &v11[v13 + 5];
    while (!*v23--)
    {
      v25 = __OFSUB__(v8--, 1);
      if ((v8 < 0) ^ v25 | (v8 == 0))
      {
        v8 = 0;
        break;
      }
    }
  }

  v11[5] = v8;
  return v11;
}

FILE *__cdecl fopen(const char *__filename, const char *__mode)
{
  if (off_1EAC9EA80)
  {
    (off_1EAC9EA80)(__filename);
    if (off_1EAC9EA80)
    {
      (off_1EAC9EA80)(__mode);
    }
  }

  v8 = 0;
  v3 = __sflags(__mode, &v8);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = __sfp(1);
  if (!v5)
  {
    return v5;
  }

  v6 = open_NOCANCEL();
  if ((v6 & 0x80000000) != 0)
  {
    __sfprelease(v5);
    return 0;
  }

  if (v6 < 0x8000)
  {
    v5->_file = v6;
    v5->_flags = v4;
    v5->_read = __sread;
    v5->_write = __swrite;
    v5->_seek = __sseek;
    v5->_cookie = v5;
    v5->_close = __sclose;
    if ((v8 & 8) != 0)
    {
      _sseek(v5, 0, 2);
    }
  }

  else
  {
    v5->_flags = 0;
    close_NOCANCEL();
    v5 = 0;
    *__error() = 24;
  }

  return v5;
}

char *__cdecl strrchr(char *__s, int __c)
{
  result = 0;
  v4 = __s;
  do
  {
    v6 = *v4++;
    v5 = v6;
    if (__c == v6)
    {
      result = __s;
    }

    __s = v4;
  }

  while (v5);
  return result;
}

void funlockfile(FILE *a1)
{
  v2 = *__error();
  pthread_mutex_unlock((a1->_extra + 8));
  *__error() = v2;
}

unint64_t __strlcpy_chk(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a4 < a3)
  {
    __chk_fail_overflow();
  }

  v7 = MEMORY[0x193AD6A30]();
  v8 = v7;
  if (v7 < a3)
  {
    v9 = v7 + 1;
  }

  else
  {
    v9 = a3;
  }

  __chk_overlap(a1, v9, a2, v9);
  return v8;
}

void *__cdecl bsearch(const void *__key, const void *__base, size_t __nel, size_t __width, int (__cdecl *__compar)(const void *, const void *))
{
  if (!__nel)
  {
    return 0;
  }

  v7 = __nel;
  while (1)
  {
    v10 = __base + (v7 >> 1) * __width;
    v11 = (__compar)(__key, v10);
    if (!v11)
    {
      break;
    }

    if (v11 > 0)
    {
      __base = &v10[__width];
    }

    v12 = v7 - (v11 > 0);
    v7 = v12 >> 1;
    if (v12 <= 1)
    {
      return 0;
    }
  }

  return v10;
}

unint64_t __chk_overlap(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a2 && a4)
  {
    if (result == a3)
    {
      goto LABEL_6;
    }

    if (result >= a3)
    {
      if (a3 + a4 > result)
      {
LABEL_6:
        __chk_fail_overlap();
      }
    }

    else if (result + a2 > a3)
    {
      goto LABEL_6;
    }
  }

  return result;
}

uint32_t arc4random(void)
{
  v1 = 0;
  arc4_init();
  (*rng)(rng, 4, &v1);
  return v1;
}

uint64_t _isort(unint64_t a1, uint64_t a2, unint64_t a3, int (*a4)(char *, _DWORD *), int a5, int a6, int a7)
{
  if ((a3 * a2) > a3)
  {
    v10 = 0;
    v28 = a1 + a3 * a2;
    v11 = (a1 + a3);
    v12 = -a3;
    v13 = a3 >> 2;
    v14 = a3 >> 3;
    v15 = a1;
    do
    {
      v30 = v15;
      v31 = v11;
      if (v11 > a1)
      {
        do
        {
          v16 = (v11 + v12);
          if (a4(v11 + v12, v11) < 1)
          {
            break;
          }

          if (a6)
          {
            if (a7)
            {
              if (a6 > 1)
              {
                if (a7 >= 2)
                {
                  v24 = 0;
                  v25 = a3;
                  do
                  {
                    v26 = *(v11 + v24);
                    *(v11 + v24) = *(v15 + v24);
                    *(v15 + v24++) = v26;
                    --v25;
                  }

                  while (v25);
                }

                else
                {
                  v22 = 0;
                  do
                  {
                    v23 = v11[v22];
                    v11[v22] = *(v15 + 4 * v22);
                    *(v15 + 4 * v22++) = v23;
                  }

                  while (v13 != v22);
                }
              }

              else
              {
                v17 = 0;
                v18 = (v11 + v12);
                do
                {
                  v19 = *&v11[2 * v17];
                  *&v11[2 * v17] = *v18;
                  *v18++ = v19;
                  ++v17;
                }

                while (v14 != v17);
              }
            }

            else
            {
              v21 = *v11;
              *v11 = *v16;
              *v16 = v21;
            }
          }

          else
          {
            v20 = *v11;
            *v11 = *v16;
            *v16 = v20;
          }

          if (a5)
          {
            if (v10 >= a5)
            {
              return 0;
            }

            ++v10;
          }

          v15 += v12;
          v11 = (v11 + v12);
        }

        while (v16 > a1);
      }

      v11 = (v31 + a3);
      v15 = v30 + a3;
    }

    while (v31 + a3 < v28);
  }

  return 1;
}

uint64_t _isort_0(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, int (*a5)(uint64_t, char *, _DWORD *), int a6, int a7, int a8)
{
  if ((a3 * a2) > a3)
  {
    v11 = 0;
    v29 = a1 + a3 * a2;
    v12 = (a1 + a3);
    v13 = -a3;
    v14 = a3 >> 2;
    v15 = a3 >> 3;
    v16 = a1;
    do
    {
      v31 = v16;
      v32 = v12;
      if (v12 > a1)
      {
        do
        {
          v17 = (v12 + v13);
          if (a5(a4, v12 + v13, v12) < 1)
          {
            break;
          }

          if (a7)
          {
            if (a8)
            {
              if (a7 > 1)
              {
                if (a8 >= 2)
                {
                  v25 = 0;
                  v26 = a3;
                  do
                  {
                    v27 = *(v12 + v25);
                    *(v12 + v25) = *(v16 + v25);
                    *(v16 + v25++) = v27;
                    --v26;
                  }

                  while (v26);
                }

                else
                {
                  v23 = 0;
                  do
                  {
                    v24 = v12[v23];
                    v12[v23] = *(v16 + 4 * v23);
                    *(v16 + 4 * v23++) = v24;
                  }

                  while (v14 != v23);
                }
              }

              else
              {
                v18 = 0;
                v19 = (v12 + v13);
                do
                {
                  v20 = *&v12[2 * v18];
                  *&v12[2 * v18] = *v19;
                  *v19++ = v20;
                  ++v18;
                }

                while (v15 != v18);
              }
            }

            else
            {
              v22 = *v12;
              *v12 = *v17;
              *v17 = v22;
            }
          }

          else
          {
            v21 = *v12;
            *v12 = *v17;
            *v17 = v21;
          }

          if (a6)
          {
            if (v11 >= a6)
            {
              return 0;
            }

            ++v11;
          }

          v16 += v13;
          v12 = (v12 + v13);
        }

        while (v17 > a1);
      }

      v12 = (v32 + a3);
      v16 = v31 + a3;
    }

    while (v32 + a3 < v29);
  }

  return 1;
}

uint64_t _qsort(unint64_t a1, size_t a2, size_t a3, int (__cdecl *a4)(const void *, const void *), int a5)
{
  v7 = a1;
  if (a5 < 1)
  {
LABEL_167:

    return heapsort(v7, a2, a3, a4);
  }

  v8 = a5;
  v113 = -a3;
  v109 = ((a1 | a3) & 3) == 0;
  if (((a1 | a3) & 3) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = a3 != 4;
  }

  v110 = ((a1 | a3) & 7) == 0;
  v111 = v9;
  if (((a1 | a3) & 7) != 0)
  {
    v10 = 2;
  }

  else
  {
    v10 = a3 != 8;
  }

  v112 = v10;
  v11 = a3 >> 2;
  v12 = a3 >> 3;
  v100 = a3 != 4;
  v101 = a3 != 8;
  while (a2 > 7)
  {
    v13 = &v7[(a2 >> 1) * a3];
    v14 = &v7[(a2 - 1) * a3];
    v104 = a2;
    v105 = v8;
    if (a2 < 0x29)
    {
      v21 = &v7[(a2 - 1) * a3];
      v22 = v7;
      goto LABEL_41;
    }

    v15 = (a2 >> 3) * a3;
    v16 = &v7[v15];
    v103 = v15;
    v17 = &v7[2 * v15];
    v18 = (a4)(v7, &v7[v15]);
    v106 = v16;
    v19 = (a4)(v16, v17);
    if (v18 < 0)
    {
      if ((v19 & 0x80000000) == 0)
      {
        if ((a4)(v7, v17) >= 0)
        {
          v20 = v7;
        }

        else
        {
          v20 = v17;
        }

        goto LABEL_21;
      }
    }

    else if (v19 <= 0)
    {
      if ((a4)(v7, v17) >= 0)
      {
        v20 = v17;
      }

      else
      {
        v20 = v7;
      }

LABEL_21:
      v106 = v20;
    }

    v23 = &v13[v103];
    v102 = &v13[-v103];
    v24 = (a4)();
    v25 = (a4)(v13, &v13[v103]);
    if (v24 < 0)
    {
      if ((v25 & 0x80000000) == 0)
      {
        if ((a4)(v102, v23) >= 0)
        {
          v13 -= v103;
        }

        else
        {
          v13 += v103;
        }
      }
    }

    else if (v25 <= 0)
    {
      if ((a4)(v102, v23) >= 0)
      {
        v13 += v103;
      }

      else
      {
        v13 -= v103;
      }
    }

    v26 = &v14[-2 * v103];
    v21 = &v14[-v103];
    v27 = (a4)(v26, &v14[-v103]);
    v28 = (a4)(&v14[-v103], v14);
    if (v27 < 0)
    {
      if ((v28 & 0x80000000) == 0)
      {
        if ((a4)(v26, v14) >= 0)
        {
          v21 = &v14[-2 * v103];
        }

        else
        {
          v21 = v14;
        }
      }
    }

    else if (v28 <= 0)
    {
      if ((a4)(v26, v14) >= 0)
      {
        v21 = v14;
      }

      else
      {
        v21 = &v14[-2 * v103];
      }
    }

    v8 = v105;
    v22 = v106;
LABEL_41:
    v107 = v22;
    v29 = (a4)();
    result = (a4)(v13, v21);
    if (v29 < 0)
    {
      if ((result & 0x80000000) == 0)
      {
        result = (a4)(v107, v21);
        if (result >= 0)
        {
          v13 = v107;
        }

        else
        {
          v13 = v21;
        }
      }
    }

    else if (result <= 0)
    {
      result = (a4)(v107, v21);
      if (result >= 0)
      {
        v13 = v21;
      }

      else
      {
        v13 = v107;
      }
    }

    if (v112)
    {
      if (v111)
      {
        if (v110)
        {
          v31 = v7;
          v32 = a3 >> 3;
          do
          {
            v33 = *v31;
            *v31 = *v13;
            v31 += 8;
            *v13 = v33;
            v13 += 8;
            --v32;
          }

          while (v32);
        }

        else if (v109)
        {
          v36 = a3 >> 2;
          v37 = v7;
          do
          {
            v38 = *v37;
            *v37 = *v13;
            v37 += 4;
            *v13 = v38;
            v13 += 4;
            --v36;
          }

          while (v36);
        }

        else
        {
          v39 = a3;
          v40 = v7;
          do
          {
            v41 = *v40;
            *v40++ = *v13;
            *v13++ = v41;
            --v39;
          }

          while (v39);
        }
      }

      else
      {
        v35 = *v7;
        *v7 = *v13;
        *v13 = v35;
      }
    }

    else
    {
      v34 = *v7;
      *v7 = *v13;
      *v13 = v34;
    }

    v42 = 0;
    v108 = v8 - 1;
    v43 = v14;
    v44 = &v7[a3];
    v45 = &v7[a3];
LABEL_65:
    while (v45 <= v43)
    {
      result = (a4)(v45, v7);
      if (result > 0)
      {
        break;
      }

      if (!result)
      {
        if (v112)
        {
          if (v111)
          {
            if (v110)
            {
              v46 = 0;
              do
              {
                v47 = *&v44[8 * v46];
                *&v44[8 * v46] = *&v45[8 * v46];
                *&v45[8 * v46++] = v47;
              }

              while (v12 != v46);
            }

            else if (v109)
            {
              v61 = 0;
              do
              {
                v62 = *&v44[4 * v61];
                *&v44[4 * v61] = *&v45[4 * v61];
                *&v45[4 * v61++] = v62;
              }

              while (v11 != v61);
            }

            else
            {
              v63 = 0;
              do
              {
                v64 = v44[v63];
                v44[v63] = v45[v63];
                v45[v63++] = v64;
              }

              while (a3 != v63);
            }
          }

          else
          {
            v60 = *v44;
            *v44 = *v45;
            *v45 = v60;
          }
        }

        else
        {
          v59 = *v44;
          *v44 = *v45;
          *v45 = v59;
        }

        v44 += a3;
        v42 = 1;
      }

      v45 += a3;
    }

    while (v45 <= v43)
    {
      result = (a4)(v43, v7);
      if ((result & 0x80000000) != 0)
      {
        if (v112)
        {
          if (v111)
          {
            if (v110)
            {
              v57 = 0;
              do
              {
                v58 = *&v45[8 * v57];
                *&v45[8 * v57] = *&v43[8 * v57];
                *&v43[8 * v57++] = v58;
              }

              while (v12 != v57);
            }

            else if (v109)
            {
              v67 = 0;
              do
              {
                v68 = *&v45[4 * v67];
                *&v45[4 * v67] = *&v43[4 * v67];
                *&v43[4 * v67++] = v68;
              }

              while (v11 != v67);
            }

            else
            {
              v69 = 0;
              do
              {
                v70 = v45[v69];
                v45[v69] = v43[v69];
                v43[v69++] = v70;
              }

              while (a3 != v69);
            }
          }

          else
          {
            v66 = *v45;
            *v45 = *v43;
            *v43 = v66;
          }
        }

        else
        {
          v65 = *v45;
          *v45 = *v43;
          *v43 = v65;
        }

        v45 += a3;
        v43 += v113;
        v42 = 1;
        goto LABEL_65;
      }

      if (result)
      {
        v48 = v113;
      }

      else
      {
        if (v112)
        {
          if (v111)
          {
            if (v110)
            {
              v49 = 0;
              do
              {
                v50 = *&v43[8 * v49];
                *&v43[8 * v49] = *&v14[8 * v49];
                *&v14[8 * v49++] = v50;
              }

              while (v12 != v49);
            }

            else if (v109)
            {
              v53 = 0;
              do
              {
                v54 = *&v43[4 * v53];
                *&v43[4 * v53] = *&v14[4 * v53];
                *&v14[4 * v53++] = v54;
              }

              while (v11 != v53);
            }

            else
            {
              v55 = 0;
              do
              {
                v56 = v43[v55];
                v43[v55] = v14[v55];
                v14[v55++] = v56;
              }

              while (a3 != v55);
            }
          }

          else
          {
            v52 = *v43;
            *v43 = *v14;
            *v14 = v52;
          }
        }

        else
        {
          v51 = *v43;
          *v43 = *v14;
          *v14 = v51;
        }

        v48 = v113;
        v14 += v113;
        v42 = 1;
      }

      v43 += v48;
    }

    v71 = v45 - v44;
    if (v44 - v7 >= v45 - v44)
    {
      v72 = v45 - v44;
    }

    else
    {
      v72 = v44 - v7;
    }

    if (v72)
    {
      v73 = &v45[-v72];
      if (v110)
      {
        v74 = v72 >> 3;
        v75 = v7;
        do
        {
          v76 = *v75;
          *v75 = *v73;
          v75 += 8;
          *v73 = v76;
          v73 += 8;
          --v74;
        }

        while (v74);
      }

      else if (v109)
      {
        v77 = v72 >> 2;
        v78 = v7;
        do
        {
          v79 = *v78;
          *v78 = *v73;
          v78 += 4;
          *v73 = v79;
          v73 += 4;
          --v77;
        }

        while (v77);
      }

      else
      {
        v80 = -v72;
        v81 = v7;
        do
        {
          v82 = *v81;
          *v81++ = v45[v80];
          v45[v80] = v82;
          v83 = __CFADD__(v80++, 1);
        }

        while (!v83);
      }
    }

    v84 = &v7[v104 * a3];
    v85 = v14 - v43;
    if (v85 >= v84 - &v14[a3])
    {
      v86 = v84 - &v14[a3];
    }

    else
    {
      v86 = v85;
    }

    if (v86)
    {
      v87 = &v84[-v86];
      if (v110)
      {
        v88 = v86 >> 3;
        do
        {
          v89 = *v45;
          *v45 = *v87;
          v45 += 8;
          *v87 = v89;
          v87 += 8;
          --v88;
        }

        while (v88);
      }

      else if (v109)
      {
        v90 = v86 >> 2;
        do
        {
          v91 = *v45;
          *v45 = *v87;
          v45 += 4;
          *v87 = v91;
          v87 += 4;
          --v90;
        }

        while (v90);
      }

      else
      {
        v92 = -v86;
        do
        {
          v93 = *v45;
          *v45++ = v84[v92];
          v84[v92] = v93;
          v83 = __CFADD__(v92++, 1);
        }

        while (!v83);
      }
    }

    v8 = v108;
    if (!v42)
    {
      v94 = v71;
      result = _isort(v7, v104, a3, a4, (v104 >> 2) + 1, v112, v111);
      v71 = v94;
      if (result)
      {
        return result;
      }
    }

    if (v71 <= v85)
    {
      if (v71 > a3)
      {
        result = _qsort(v7, v71 / a3, a3, a4, v108);
      }

      if (v85 <= a3)
      {
        return result;
      }

      v7 = &v84[-v85];
      v97 = (v84 - v85) | a3;
      v110 = (v97 & 7) == 0;
      if ((v97 & 7) != 0)
      {
        v98 = 2;
      }

      else
      {
        v98 = v101;
      }

      v112 = v98;
      v109 = (v97 & 3) == 0;
      if ((((v84 - v85) | a3) & 3) != 0)
      {
        v99 = 2;
      }

      else
      {
        v99 = v100;
      }

      v111 = v99;
      a2 = v85 / a3;
      if (v105 < 2)
      {
        goto LABEL_167;
      }
    }

    else
    {
      if (v85 > a3)
      {
        v95 = &v84[-v85];
        v96 = v71;
        result = _qsort(v95, v85 / a3, a3, a4, v108);
        v71 = v96;
      }

      if (v71 <= a3)
      {
        return result;
      }

      a2 = v71 / a3;
      if (v105 < 2)
      {
        goto LABEL_167;
      }
    }
  }

  return _isort(v7, a2, a3, a4, 0, v112, v111);
}

uint64_t _qsort_0(char *a1, unint64_t a2, unint64_t a3, uint64_t a4, int (*a5)(uint64_t, char *, char *), int a6)
{
  v8 = a1;
  if (a6 >= 1)
  {
    v9 = a6;
    v114 = -a3;
    v110 = ((a1 | a3) & 3) == 0;
    if (((a1 | a3) & 3) != 0)
    {
      v10 = 2;
    }

    else
    {
      v10 = a3 != 4;
    }

    v111 = ((a1 | a3) & 7) == 0;
    v112 = v10;
    if (((a1 | a3) & 7) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = a3 != 8;
    }

    v113 = v11;
    v12 = a3 >> 2;
    v13 = a3 >> 3;
    v98 = a3 != 4;
    v99 = a3 != 8;
LABEL_9:
    v109 = v9;
    do
    {
      if (a2 <= 7)
      {

        return _isort_0(v8, a2, a3, a4, a5, 0, v113, v112);
      }

      v14 = &v8[(a2 >> 1) * a3];
      v15 = &v8[(a2 - 1) * a3];
      v105 = a2;
      if (a2 < 0x29)
      {
        v21 = &v8[(a2 - 1) * a3];
        v22 = v8;
        goto LABEL_42;
      }

      v16 = (a2 >> 3) * a3;
      v17 = &v8[v16];
      v103 = v16;
      v101 = &v8[2 * v16];
      v18 = a5(a4, v8, &v8[v16]);
      v106 = v17;
      v19 = a5(a4, v17, v101);
      if (v18 < 0)
      {
        if ((v19 & 0x80000000) == 0)
        {
          if (a5(a4, v8, v101) >= 0)
          {
            v20 = v8;
          }

          else
          {
            v20 = v101;
          }

          goto LABEL_22;
        }
      }

      else if (v19 <= 0)
      {
        if (a5(a4, v8, v101) >= 0)
        {
          v20 = v101;
        }

        else
        {
          v20 = v8;
        }

LABEL_22:
        v106 = v20;
      }

      v102 = &v14[-v103];
      v23 = (a5)(a4);
      v100 = &v14[v103];
      v24 = a5(a4, v14, &v14[v103]);
      if (v23 < 0)
      {
        if ((v24 & 0x80000000) == 0)
        {
          if (a5(a4, v102, v100) >= 0)
          {
            v14 -= v103;
          }

          else
          {
            v14 += v103;
          }
        }
      }

      else if (v24 <= 0)
      {
        if (a5(a4, v102, v100) >= 0)
        {
          v14 += v103;
        }

        else
        {
          v14 -= v103;
        }
      }

      v21 = &v15[-v103];
      v104 = &v15[-2 * v103];
      v25 = (a5)(a4);
      v26 = a5(a4, v21, v15);
      if (v25 < 0)
      {
        if ((v26 & 0x80000000) == 0)
        {
          if (a5(a4, v104, v15) >= 0)
          {
            v21 = v104;
          }

          else
          {
            v21 = v15;
          }
        }
      }

      else if (v26 <= 0)
      {
        if (a5(a4, v104, v15) >= 0)
        {
          v21 = v15;
        }

        else
        {
          v21 = v104;
        }
      }

      v22 = v106;
LABEL_42:
      v107 = v22;
      v27 = (a5)(a4);
      result = (a5)(a4, v14, v21);
      if (v27 < 0)
      {
        if ((result & 0x80000000) == 0)
        {
          result = (a5)(a4, v107, v21);
          if (result >= 0)
          {
            v14 = v107;
          }

          else
          {
            v14 = v21;
          }
        }
      }

      else if (result <= 0)
      {
        result = (a5)(a4, v107, v21);
        if (result >= 0)
        {
          v14 = v21;
        }

        else
        {
          v14 = v107;
        }
      }

      if (v113)
      {
        if (v112)
        {
          if (v111)
          {
            v29 = v8;
            v30 = a3 >> 3;
            do
            {
              v31 = *v29;
              *v29 = *v14;
              v29 += 8;
              *v14 = v31;
              v14 += 8;
              --v30;
            }

            while (v30);
          }

          else if (v110)
          {
            v34 = a3 >> 2;
            v35 = v8;
            do
            {
              v36 = *v35;
              *v35 = *v14;
              v35 += 4;
              *v14 = v36;
              v14 += 4;
              --v34;
            }

            while (v34);
          }

          else
          {
            v37 = a3;
            v38 = v8;
            do
            {
              v39 = *v38;
              *v38++ = *v14;
              *v14++ = v39;
              --v37;
            }

            while (v37);
          }
        }

        else
        {
          v33 = *v8;
          *v8 = *v14;
          *v14 = v33;
        }
      }

      else
      {
        v32 = *v8;
        *v8 = *v14;
        *v14 = v32;
      }

      v40 = 0;
      v108 = v109 - 1;
      v41 = v15;
      v42 = &v8[a3];
      v43 = &v8[a3];
LABEL_66:
      while (v43 <= v41)
      {
        result = (a5)(a4, v43, v8);
        if (result > 0)
        {
          break;
        }

        if (!result)
        {
          if (v113)
          {
            if (v112)
            {
              if (v111)
              {
                v44 = 0;
                do
                {
                  v45 = *&v42[8 * v44];
                  *&v42[8 * v44] = *&v43[8 * v44];
                  *&v43[8 * v44++] = v45;
                }

                while (v13 != v44);
              }

              else if (v110)
              {
                v59 = 0;
                do
                {
                  v60 = *&v42[4 * v59];
                  *&v42[4 * v59] = *&v43[4 * v59];
                  *&v43[4 * v59++] = v60;
                }

                while (v12 != v59);
              }

              else
              {
                v61 = 0;
                do
                {
                  v62 = v42[v61];
                  v42[v61] = v43[v61];
                  v43[v61++] = v62;
                }

                while (a3 != v61);
              }
            }

            else
            {
              v58 = *v42;
              *v42 = *v43;
              *v43 = v58;
            }
          }

          else
          {
            v57 = *v42;
            *v42 = *v43;
            *v43 = v57;
          }

          v42 += a3;
          v40 = 1;
        }

        v43 += a3;
      }

      while (v43 <= v41)
      {
        result = (a5)(a4, v41, v8);
        if ((result & 0x80000000) != 0)
        {
          if (v113)
          {
            if (v112)
            {
              if (v111)
              {
                v55 = 0;
                do
                {
                  v56 = *&v43[8 * v55];
                  *&v43[8 * v55] = *&v41[8 * v55];
                  *&v41[8 * v55++] = v56;
                }

                while (v13 != v55);
              }

              else if (v110)
              {
                v65 = 0;
                do
                {
                  v66 = *&v43[4 * v65];
                  *&v43[4 * v65] = *&v41[4 * v65];
                  *&v41[4 * v65++] = v66;
                }

                while (v12 != v65);
              }

              else
              {
                v67 = 0;
                do
                {
                  v68 = v43[v67];
                  v43[v67] = v41[v67];
                  v41[v67++] = v68;
                }

                while (a3 != v67);
              }
            }

            else
            {
              v64 = *v43;
              *v43 = *v41;
              *v41 = v64;
            }
          }

          else
          {
            v63 = *v43;
            *v43 = *v41;
            *v41 = v63;
          }

          v43 += a3;
          v41 += v114;
          v40 = 1;
          goto LABEL_66;
        }

        if (result)
        {
          v46 = v114;
        }

        else
        {
          if (v113)
          {
            if (v112)
            {
              if (v111)
              {
                v47 = 0;
                do
                {
                  v48 = *&v41[8 * v47];
                  *&v41[8 * v47] = *&v15[8 * v47];
                  *&v15[8 * v47++] = v48;
                }

                while (v13 != v47);
              }

              else if (v110)
              {
                v51 = 0;
                do
                {
                  v52 = *&v41[4 * v51];
                  *&v41[4 * v51] = *&v15[4 * v51];
                  *&v15[4 * v51++] = v52;
                }

                while (v12 != v51);
              }

              else
              {
                v53 = 0;
                do
                {
                  v54 = v41[v53];
                  v41[v53] = v15[v53];
                  v15[v53++] = v54;
                }

                while (a3 != v53);
              }
            }

            else
            {
              v50 = *v41;
              *v41 = *v15;
              *v15 = v50;
            }
          }

          else
          {
            v49 = *v41;
            *v41 = *v15;
            *v15 = v49;
          }

          v46 = v114;
          v15 += v114;
          v40 = 1;
        }

        v41 += v46;
      }

      v69 = v43 - v42;
      if (v42 - v8 >= v43 - v42)
      {
        v70 = v43 - v42;
      }

      else
      {
        v70 = v42 - v8;
      }

      if (v70)
      {
        v71 = &v43[-v70];
        if (v111)
        {
          v72 = v70 >> 3;
          v73 = v8;
          do
          {
            v74 = *v73;
            *v73 = *v71;
            v73 += 8;
            *v71 = v74;
            v71 += 8;
            --v72;
          }

          while (v72);
        }

        else if (v110)
        {
          v75 = v70 >> 2;
          v76 = v8;
          do
          {
            v77 = *v76;
            *v76 = *v71;
            v76 += 4;
            *v71 = v77;
            v71 += 4;
            --v75;
          }

          while (v75);
        }

        else
        {
          v78 = -v70;
          v79 = v8;
          do
          {
            v80 = *v79;
            *v79++ = v43[v78];
            v43[v78] = v80;
            v81 = __CFADD__(v78++, 1);
          }

          while (!v81);
        }
      }

      v82 = &v8[v105 * a3];
      v83 = v15 - v41;
      if (v83 >= v82 - &v15[a3])
      {
        v84 = v82 - &v15[a3];
      }

      else
      {
        v84 = v83;
      }

      v9 = v109 - 1;
      if (v84)
      {
        v85 = &v82[-v84];
        if (v111)
        {
          v86 = v84 >> 3;
          do
          {
            v87 = *v43;
            *v43 = *v85;
            v43 += 8;
            *v85 = v87;
            v85 += 8;
            --v86;
          }

          while (v86);
        }

        else if (v110)
        {
          v88 = v84 >> 2;
          do
          {
            v89 = *v43;
            *v43 = *v85;
            v43 += 4;
            *v85 = v89;
            v85 += 4;
            --v88;
          }

          while (v88);
        }

        else
        {
          v90 = -v84;
          do
          {
            v91 = *v43;
            *v43++ = v82[v90];
            v82[v90] = v91;
            v81 = __CFADD__(v90++, 1);
          }

          while (!v81);
        }
      }

      if (!v40)
      {
        v92 = v69;
        result = _isort_0(v8, v105, a3, a4, a5, (v105 >> 2) + 1, v113, v112);
        v69 = v92;
        if (result)
        {
          return result;
        }
      }

      if (v69 <= v83)
      {
        if (v69 > a3)
        {
          result = _qsort_0(v8, v69 / a3, a3, a4, a5, v108);
        }

        if (v83 <= a3)
        {
          return result;
        }

        v8 = &v82[-v83];
        v95 = (v82 - v83) | a3;
        v111 = (v95 & 7) == 0;
        if ((v95 & 7) != 0)
        {
          v96 = 2;
        }

        else
        {
          v96 = v99;
        }

        v113 = v96;
        v110 = (v95 & 3) == 0;
        if ((((v82 - v83) | a3) & 3) != 0)
        {
          v97 = 2;
        }

        else
        {
          v97 = v98;
        }

        v112 = v97;
        a2 = v83 / a3;
        if (v109 >= 2)
        {
          goto LABEL_9;
        }

        break;
      }

      if (v83 > a3)
      {
        v93 = v69;
        result = _qsort_0(&v82[-v83], v83 / a3, a3, a4, a5, v108);
        v69 = v93;
      }

      if (v69 <= a3)
      {
        return result;
      }

      a2 = v69 / a3;
    }

    while (v109-- >= 2);
  }

  return __heapsort_r(v8, a2, a3, a4, a5);
}

void qsort(void *__base, size_t __nel, size_t __width, int (__cdecl *__compar)(const void *, const void *))
{
  v8 = 2 * flsl(__nel) - 2;

  _qsort(__base, __nel, __width, __compar, v8);
}

int heapsort(void *__base, size_t __nel, size_t __width, int (__cdecl *__compar)(const void *, const void *))
{
  if (__nel < 2)
  {
    return 0;
  }

  if (!__width)
  {
    *__error() = 22;
    return -1;
  }

  v7 = __nel;
  v9 = malloc_type_malloc(__width, 0x642C0071uLL);
  if (!v9)
  {
    return -1;
  }

  v10 = v9;
  v41 = __base;
  v11 = __base - __width;
  v12 = v7 >> 1;
  do
  {
    v42 = v12;
    v13 = 2 * v12;
    if (2 * v12 <= v7)
    {
      v14 = v12;
      do
      {
        v15 = &v11[v13 * __width];
        if (v13 >= v7)
        {
          v17 = v13;
        }

        else
        {
          v16 = (__compar)(&v11[v13 * __width], &v15[__width]);
          v17 = v13 | (v16 >> 31);
          if (v16 < 0)
          {
            v15 += __width;
          }
        }

        v18 = &v11[v14 * __width];
        if ((__compar)(v15, v18) < 1)
        {
          break;
        }

        v19 = __width;
        do
        {
          v20 = *v18;
          *v18++ = *v15;
          *v15++ = v20;
          --v19;
        }

        while (v19);
        v13 = 2 * v17;
        v14 = v17;
      }

      while (2 * v17 <= v7);
    }

    v12 = v42 - 1;
  }

  while (v42 != 1);
  i = v41;
  v22 = &v41[__width * (v7 - 1)];
  v43 = __compar;
  do
  {
    v23 = 0;
    do
    {
      v10[v23] = v22[v23];
      ++v23;
    }

    while (__width != v23);
    v24 = 0;
    do
    {
      v22[v24] = i[v24];
      ++v24;
    }

    while (__width != v24);
    v25 = v7 - 1;
    v26 = i;
    if (v7 >= 3)
    {
      v27 = 2;
      v28 = 1;
      do
      {
        v29 = &v11[v27 * __width];
        if (v27 >= v25)
        {
          v31 = v27;
        }

        else
        {
          v30 = (v43)(&v11[v27 * __width], &v29[__width]);
          v31 = v27 | (v30 >> 31);
          if (v30 < 0)
          {
            v29 += __width;
          }
        }

        v32 = &v11[v28 * __width];
        v33 = __width;
        do
        {
          v34 = *v29++;
          *v32++ = v34;
          --v33;
        }

        while (v33);
        v27 = 2 * v31;
        v28 = v31;
      }

      while (2 * v31 <= v25);
      v26 = &v11[v31 * __width];
      v35 = v26;
      for (i = v41; v31 != 1; v26 = &v11[v31 * __width])
      {
        v26 = v35;
        v31 >>= 1;
        v35 = &v11[v31 * __width];
        v36 = (v43)(v10, v35);
        v37 = __width;
        v38 = v35;
        if (v36 < 0)
        {
          break;
        }

        do
        {
          v39 = *v38++;
          *v26++ = v39;
          --v37;
        }

        while (v37);
      }
    }

    v40 = 0;
    do
    {
      v26[v40] = v10[v40];
      ++v40;
    }

    while (__width != v40);
    v22 -= __width;
    v7 = v25;
  }

  while (v25 > 1);
  free(v10);
  return 0;
}

uint64_t _vasprintf(pthread_mutex_t *a1, int a2, void **a3)
{
  v16 = 0u;
  v15 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  v10 = 0u;
  *v9 = 0u;
  v8 = 0u;
  v14 = v17;
  v21 = 0;
  v22 = 0;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17[0] = 0;
  v17[1] = 850045858;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  DWORD2(v8) = -48632;
  v7 = malloc_type_malloc(0x80uLL, 0x100004077774924uLL);
  v9[0] = v7;
  if (v7)
  {
    DWORD1(v8) = 127;
    LODWORD(v9[1]) = 127;
    LOBYTE(v22) = v22 & 0xF8;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    result = __v2printf(a1, a2, &v7);
    if ((result & 0x80000000) == 0)
    {
      *v7 = 0;
      *a3 = v9[0];
      return result;
    }

    free(v9[0]);
  }

  *a3 = 0;
  *__error() = 12;
  return 0xFFFFFFFFLL;
}

int uuid_is_null(const uuid_t uu)
{
  v1 = 0;
  while (!uu[v1])
  {
    if (++v1 == 16)
    {
      return 1;
    }
  }

  return 0;
}

int fflush(FILE *a1)
{
  if (a1)
  {
    if (off_1EAC9EA90)
    {
      (off_1EAC9EA90)(a1, 152);
    }

    flockfile(a1);
    v3 = __sflush(a1);
    funlockfile(a1);
    return v3;
  }

  else
  {

    return _fwalk(sflush_locked);
  }
}

size_t fwrite(const void *__ptr, size_t __size, size_t __nitems, FILE *__stream)
{
  v4 = __nitems * __size;
  if (!(__nitems * __size))
  {
    return 0;
  }

  v6 = __nitems;
  v14 = 0;
  v15 = 0;
  v16 = &v14;
  v17 = 1;
  if (off_1EAC9EA90)
  {
    (off_1EAC9EA90)(__stream, 152);
  }

  flockfile(__stream);
  extra = __stream->_extra;
  if ((*(extra + 72) & 7) == 0)
  {
    *(extra + 72) |= 7u;
  }

  v10 = v4;
  while (1)
  {
    v11 = v10 >> 31 ? 2147482624 : v10;
    v12 = v11;
    v14 = __ptr;
    v15 = v11;
    v18 = v11;
    if (off_1EAC9EA78)
    {
      (off_1EAC9EA78)(__ptr, v11);
    }

    if (__sfvwrite(__stream, &v16))
    {
      break;
    }

    __ptr = __ptr + v12;
    v10 -= v12;
    if (!v10)
    {
      goto LABEL_17;
    }
  }

  v6 = (v4 + v12 - (v10 + v18)) / __size;
LABEL_17:
  funlockfile(__stream);
  return v6;
}